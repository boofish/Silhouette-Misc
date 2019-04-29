
aha-compress.elf:     file format elf32-littlearm


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
 80001e0:	08007114 	.word	0x08007114

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
 80001fc:	08007114 	.word	0x08007114

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
 8001108:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20a0 	movw	r0, #2720	; 0xaa0
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
 80013e8:	f247 2220 	movw	r2, #29216	; 0x7220
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
 800145a:	f240 0014 	movw	r0, #20
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f247 2218 	movw	r2, #29208	; 0x7218
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
 8001484:	f240 0014 	movw	r0, #20
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f247 2218 	movw	r2, #29208	; 0x7218
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
 8001842:	f640 21a4 	movw	r1, #2724	; 0xaa4
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
 800188c:	f640 20a4 	movw	r0, #2724	; 0xaa4
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20a4 	movw	r0, #2724	; 0xaa4
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
 80019d4:	f247 2350 	movw	r3, #29264	; 0x7250
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
 80019fc:	f247 2360 	movw	r3, #29280	; 0x7260
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

08001eb6 <compress3>:
 8001eb6:	b5d0      	push	{r4, r6, r7, lr}
 8001eb8:	af02      	add	r7, sp, #8
 8001eba:	ea6f 0c01 	mvn.w	ip, r1
 8001ebe:	4008      	ands	r0, r1
 8001ec0:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8001ec4:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8001ec8:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 8001ecc:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 8001ed0:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8001ed4:	ea00 0243 	and.w	r2, r0, r3, lsl #1
 8001ed8:	ea2c 0c03 	bic.w	ip, ip, r3
 8001edc:	4050      	eors	r0, r2
 8001ede:	ea80 0e52 	eor.w	lr, r0, r2, lsr #1
 8001ee2:	ea01 0243 	and.w	r2, r1, r3, lsl #1
 8001ee6:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8001eea:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8001eee:	4051      	eors	r1, r2
 8001ef0:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 8001ef4:	ea81 0452 	eor.w	r4, r1, r2, lsr #1
 8001ef8:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 8001efc:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8001f00:	ea2c 0c03 	bic.w	ip, ip, r3
 8001f04:	ea04 0043 	and.w	r0, r4, r3, lsl #1
 8001f08:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8001f0c:	ea0e 0200 	and.w	r2, lr, r0
 8001f10:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8001f14:	ea82 010e 	eor.w	r1, r2, lr
 8001f18:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 8001f1c:	ea81 0192 	eor.w	r1, r1, r2, lsr #2
 8001f20:	ea80 0204 	eor.w	r2, r0, r4
 8001f24:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 8001f28:	ea82 0090 	eor.w	r0, r2, r0, lsr #2
 8001f2c:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8001f30:	ea2c 0c03 	bic.w	ip, ip, r3
 8001f34:	ea00 0443 	and.w	r4, r0, r3, lsl #1
 8001f38:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8001f3c:	ea01 0204 	and.w	r2, r1, r4
 8001f40:	4060      	eors	r0, r4
 8001f42:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8001f46:	4051      	eors	r1, r2
 8001f48:	ea80 1014 	eor.w	r0, r0, r4, lsr #4
 8001f4c:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 8001f50:	ea81 1112 	eor.w	r1, r1, r2, lsr #4
 8001f54:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 8001f58:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8001f5c:	ea00 0443 	and.w	r4, r0, r3, lsl #1
 8001f60:	ea01 0204 	and.w	r2, r1, r4
 8001f64:	4060      	eors	r0, r4
 8001f66:	4051      	eors	r1, r2
 8001f68:	ea80 2014 	eor.w	r0, r0, r4, lsr #8
 8001f6c:	ea81 2112 	eor.w	r1, r1, r2, lsr #8
 8001f70:	ea2c 0203 	bic.w	r2, ip, r3
 8001f74:	ea82 0242 	eor.w	r2, r2, r2, lsl #1
 8001f78:	ea82 0282 	eor.w	r2, r2, r2, lsl #2
 8001f7c:	ea82 1202 	eor.w	r2, r2, r2, lsl #4
 8001f80:	ea82 2202 	eor.w	r2, r2, r2, lsl #8
 8001f84:	ea82 4202 	eor.w	r2, r2, r2, lsl #16
 8001f88:	ea00 0042 	and.w	r0, r0, r2, lsl #1
 8001f8c:	4008      	ands	r0, r1
 8001f8e:	4041      	eors	r1, r0
 8001f90:	ea81 4010 	eor.w	r0, r1, r0, lsr #16
 8001f94:	bdd0      	pop	{r4, r6, r7, pc}

08001f96 <compress4>:
 8001f96:	b5d0      	push	{r4, r6, r7, lr}
 8001f98:	af02      	add	r7, sp, #8
 8001f9a:	f06f 0201 	mvn.w	r2, #1
 8001f9e:	4008      	ands	r0, r1
 8001fa0:	ea82 0c41 	eor.w	ip, r2, r1, lsl #1
 8001fa4:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8001fa8:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8001fac:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 8001fb0:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 8001fb4:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8001fb8:	ea03 0200 	and.w	r2, r3, r0
 8001fbc:	ea2c 0c03 	bic.w	ip, ip, r3
 8001fc0:	4050      	eors	r0, r2
 8001fc2:	ea40 0e52 	orr.w	lr, r0, r2, lsr #1
 8001fc6:	ea03 0201 	and.w	r2, r3, r1
 8001fca:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8001fce:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8001fd2:	4051      	eors	r1, r2
 8001fd4:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 8001fd8:	ea41 0452 	orr.w	r4, r1, r2, lsr #1
 8001fdc:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 8001fe0:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8001fe4:	ea2c 0c03 	bic.w	ip, ip, r3
 8001fe8:	ea03 0004 	and.w	r0, r3, r4
 8001fec:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8001ff0:	ea00 020e 	and.w	r2, r0, lr
 8001ff4:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8001ff8:	ea82 010e 	eor.w	r1, r2, lr
 8001ffc:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 8002000:	ea41 0192 	orr.w	r1, r1, r2, lsr #2
 8002004:	ea80 0204 	eor.w	r2, r0, r4
 8002008:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 800200c:	ea42 0090 	orr.w	r0, r2, r0, lsr #2
 8002010:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8002014:	ea2c 0c03 	bic.w	ip, ip, r3
 8002018:	ea03 0400 	and.w	r4, r3, r0
 800201c:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8002020:	ea04 0201 	and.w	r2, r4, r1
 8002024:	4060      	eors	r0, r4
 8002026:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 800202a:	4051      	eors	r1, r2
 800202c:	ea40 1014 	orr.w	r0, r0, r4, lsr #4
 8002030:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 8002034:	ea41 1112 	orr.w	r1, r1, r2, lsr #4
 8002038:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 800203c:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8002040:	ea03 0400 	and.w	r4, r3, r0
 8002044:	ea04 0201 	and.w	r2, r4, r1
 8002048:	4060      	eors	r0, r4
 800204a:	4051      	eors	r1, r2
 800204c:	ea40 2014 	orr.w	r0, r0, r4, lsr #8
 8002050:	ea41 2112 	orr.w	r1, r1, r2, lsr #8
 8002054:	ea2c 0203 	bic.w	r2, ip, r3
 8002058:	ea82 0242 	eor.w	r2, r2, r2, lsl #1
 800205c:	ea82 0282 	eor.w	r2, r2, r2, lsl #2
 8002060:	ea82 1202 	eor.w	r2, r2, r2, lsl #4
 8002064:	ea82 2202 	eor.w	r2, r2, r2, lsl #8
 8002068:	ea82 4202 	eor.w	r2, r2, r2, lsl #16
 800206c:	4010      	ands	r0, r2
 800206e:	4008      	ands	r0, r1
 8002070:	4041      	eors	r1, r0
 8002072:	ea41 4010 	orr.w	r0, r1, r0, lsr #16
 8002076:	bdd0      	pop	{r4, r6, r7, pc}

08002078 <initialise_benchmark>:
 8002078:	4770      	bx	lr

0800207a <benchmark>:
 800207a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800207c:	af03      	add	r7, sp, #12
 800207e:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8002082:	f247 1830 	movw	r8, #28976	; 0x7130
 8002086:	2000      	movs	r0, #0
 8002088:	f04f 0e00 	mov.w	lr, #0
 800208c:	f04f 0900 	mov.w	r9, #0
 8002090:	f6c0 0800 	movt	r8, #2048	; 0x800
 8002094:	eb08 0c8e 	add.w	ip, r8, lr, lsl #2
 8002098:	f8dc 5004 	ldr.w	r5, [ip, #4]
 800209c:	b18d      	cbz	r5, 80020c2 <benchmark+0x48>
 800209e:	f858 602e 	ldr.w	r6, [r8, lr, lsl #2]
 80020a2:	2300      	movs	r3, #0
 80020a4:	2201      	movs	r2, #1
 80020a6:	07e9      	lsls	r1, r5, #31
 80020a8:	d003      	beq.n	80020b2 <benchmark+0x38>
 80020aa:	07f1      	lsls	r1, r6, #31
 80020ac:	bf18      	it	ne
 80020ae:	4313      	orrne	r3, r2
 80020b0:	0052      	lsls	r2, r2, #1
 80020b2:	0869      	lsrs	r1, r5, #1
 80020b4:	ebb0 0f55 	cmp.w	r0, r5, lsr #1
 80020b8:	ea4f 0656 	mov.w	r6, r6, lsr #1
 80020bc:	460d      	mov	r5, r1
 80020be:	d1f2      	bne.n	80020a6 <benchmark+0x2c>
 80020c0:	e000      	b.n	80020c4 <benchmark+0x4a>
 80020c2:	2300      	movs	r3, #0
 80020c4:	f8dc 1008 	ldr.w	r1, [ip, #8]
 80020c8:	f10e 0e03 	add.w	lr, lr, #3
 80020cc:	428b      	cmp	r3, r1
 80020ce:	bf18      	it	ne
 80020d0:	f04f 0901 	movne.w	r9, #1
 80020d4:	f1be 0f36 	cmp.w	lr, #54	; 0x36
 80020d8:	dbdc      	blt.n	8002094 <benchmark+0x1a>
 80020da:	2000      	movs	r0, #0
 80020dc:	f04f 0e00 	mov.w	lr, #0
 80020e0:	eb08 0c8e 	add.w	ip, r8, lr, lsl #2
 80020e4:	f858 302e 	ldr.w	r3, [r8, lr, lsl #2]
 80020e8:	2600      	movs	r6, #0
 80020ea:	2200      	movs	r2, #0
 80020ec:	f8dc 5004 	ldr.w	r5, [ip, #4]
 80020f0:	f005 0401 	and.w	r4, r5, #1
 80020f4:	ebb0 0f55 	cmp.w	r0, r5, lsr #1
 80020f8:	eb02 0104 	add.w	r1, r2, r4
 80020fc:	ea04 0403 	and.w	r4, r4, r3
 8002100:	ea4f 0353 	mov.w	r3, r3, lsr #1
 8002104:	fa04 f202 	lsl.w	r2, r4, r2
 8002108:	ea46 0602 	orr.w	r6, r6, r2
 800210c:	ea4f 0255 	mov.w	r2, r5, lsr #1
 8002110:	4615      	mov	r5, r2
 8002112:	460a      	mov	r2, r1
 8002114:	d1ec      	bne.n	80020f0 <benchmark+0x76>
 8002116:	f8dc 1008 	ldr.w	r1, [ip, #8]
 800211a:	f10e 0e03 	add.w	lr, lr, #3
 800211e:	428e      	cmp	r6, r1
 8002120:	bf18      	it	ne
 8002122:	f04f 0901 	movne.w	r9, #1
 8002126:	f1be 0f36 	cmp.w	lr, #54	; 0x36
 800212a:	dbd9      	blt.n	80020e0 <benchmark+0x66>
 800212c:	2500      	movs	r5, #0
 800212e:	eb08 0285 	add.w	r2, r8, r5, lsl #2
 8002132:	f858 0025 	ldr.w	r0, [r8, r5, lsl #2]
 8002136:	e9d2 1401 	ldrd	r1, r4, [r2, #4]
 800213a:	f7ff febc 	bl	8001eb6 <compress3>
 800213e:	42a0      	cmp	r0, r4
 8002140:	f105 0503 	add.w	r5, r5, #3
 8002144:	bf18      	it	ne
 8002146:	f04f 0901 	movne.w	r9, #1
 800214a:	2d36      	cmp	r5, #54	; 0x36
 800214c:	dbef      	blt.n	800212e <benchmark+0xb4>
 800214e:	2500      	movs	r5, #0
 8002150:	eb08 0285 	add.w	r2, r8, r5, lsl #2
 8002154:	f858 0025 	ldr.w	r0, [r8, r5, lsl #2]
 8002158:	e9d2 1401 	ldrd	r1, r4, [r2, #4]
 800215c:	f7ff ff1b 	bl	8001f96 <compress4>
 8002160:	42a0      	cmp	r0, r4
 8002162:	f105 0503 	add.w	r5, r5, #3
 8002166:	bf18      	it	ne
 8002168:	f04f 0901 	movne.w	r9, #1
 800216c:	2d36      	cmp	r5, #54	; 0x36
 800216e:	dbef      	blt.n	8002150 <benchmark+0xd6>
 8002170:	4648      	mov	r0, r9
 8002172:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002176:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002178 <verify_benchmark>:
 8002178:	2100      	movs	r1, #0
 800217a:	2800      	cmp	r0, #0
 800217c:	bf08      	it	eq
 800217e:	2101      	moveq	r1, #1
 8002180:	4608      	mov	r0, r1
 8002182:	4770      	bx	lr

08002184 <__io_putchar>:
 8002184:	b580      	push	{r7, lr}
 8002186:	466f      	mov	r7, sp
 8002188:	b082      	sub	sp, #8
 800218a:	9001      	str	r0, [sp, #4]
 800218c:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002190:	a901      	add	r1, sp, #4
 8002192:	2201      	movs	r2, #1
 8002194:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002198:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800219c:	f7ff fd9d 	bl	8001cda <HAL_UART_Transmit>
 80021a0:	9801      	ldr	r0, [sp, #4]
 80021a2:	b002      	add	sp, #8
 80021a4:	bd80      	pop	{r7, pc}

080021a6 <main>:
 80021a6:	b5b0      	push	{r4, r5, r7, lr}
 80021a8:	af02      	add	r7, sp, #8
 80021aa:	f640 11e4 	movw	r1, #2532	; 0x9e4
 80021ae:	f643 0000 	movw	r0, #14336	; 0x3800
 80021b2:	220c      	movs	r2, #12
 80021b4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021b8:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80021bc:	6008      	str	r0, [r1, #0]
 80021be:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80021c2:	6048      	str	r0, [r1, #4]
 80021c4:	2000      	movs	r0, #0
 80021c6:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80021ca:	6108      	str	r0, [r1, #16]
 80021cc:	6248      	str	r0, [r1, #36]	; 0x24
 80021ce:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80021d2:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80021d6:	2000      	movs	r0, #0
 80021d8:	f7ff fe14 	bl	8001e04 <BSP_COM_Init>
 80021dc:	f7ff ff4c 	bl	8002078 <initialise_benchmark>
 80021e0:	f247 2070 	movw	r0, #29296	; 0x7270
 80021e4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021e8:	f000 f948 	bl	800247c <printf>
 80021ec:	f247 301f 	movw	r0, #29471	; 0x731f
 80021f0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021f4:	f000 f9a4 	bl	8002540 <puts>
 80021f8:	f7fe ff76 	bl	80010e8 <HAL_Init>
 80021fc:	f7fe ff8c 	bl	8001118 <HAL_GetTick>
 8002200:	4604      	mov	r4, r0
 8002202:	f7ff ff3a 	bl	800207a <benchmark>
 8002206:	4605      	mov	r5, r0
 8002208:	f7fe ff86 	bl	8001118 <HAL_GetTick>
 800220c:	1b04      	subs	r4, r0, r4
 800220e:	4628      	mov	r0, r5
 8002210:	f7ff ffb2 	bl	8002178 <verify_benchmark>
 8002214:	1c41      	adds	r1, r0, #1
 8002216:	d006      	beq.n	8002226 <main+0x80>
 8002218:	2801      	cmp	r0, #1
 800221a:	d109      	bne.n	8002230 <main+0x8a>
 800221c:	f247 208b 	movw	r0, #29323	; 0x728b
 8002220:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002224:	e008      	b.n	8002238 <main+0x92>
 8002226:	f247 20af 	movw	r0, #29359	; 0x72af
 800222a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800222e:	e003      	b.n	8002238 <main+0x92>
 8002230:	f247 20e4 	movw	r0, #29412	; 0x72e4
 8002234:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002238:	4621      	mov	r1, r4
 800223a:	f000 f91f 	bl	800247c <printf>
 800223e:	2000      	movs	r0, #0
 8002240:	bdb0      	pop	{r4, r5, r7, pc}

08002242 <SysTick_Handler>:
 8002242:	b580      	push	{r7, lr}
 8002244:	466f      	mov	r7, sp
 8002246:	f7fe ff5f 	bl	8001108 <HAL_IncTick>
 800224a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800224e:	f7fe bfb9 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08002252 <_read>:
 8002252:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002254:	af03      	add	r7, sp, #12
 8002256:	f84d bd04 	str.w	fp, [sp, #-4]!
 800225a:	4614      	mov	r4, r2
 800225c:	460d      	mov	r5, r1
 800225e:	2c01      	cmp	r4, #1
 8002260:	db06      	blt.n	8002270 <_read+0x1e>
 8002262:	4626      	mov	r6, r4
 8002264:	f3af 8000 	nop.w
 8002268:	f805 0b01 	strb.w	r0, [r5], #1
 800226c:	3e01      	subs	r6, #1
 800226e:	d1f9      	bne.n	8002264 <_read+0x12>
 8002270:	4620      	mov	r0, r4
 8002272:	f85d bb04 	ldr.w	fp, [sp], #4
 8002276:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002278 <_write>:
 8002278:	b5f0      	push	{r4, r5, r6, r7, lr}
 800227a:	af03      	add	r7, sp, #12
 800227c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002280:	4614      	mov	r4, r2
 8002282:	460d      	mov	r5, r1
 8002284:	2c01      	cmp	r4, #1
 8002286:	db06      	blt.n	8002296 <_write+0x1e>
 8002288:	4626      	mov	r6, r4
 800228a:	f815 0b01 	ldrb.w	r0, [r5], #1
 800228e:	f7ff ff79 	bl	8002184 <__io_putchar>
 8002292:	3e01      	subs	r6, #1
 8002294:	d1f9      	bne.n	800228a <_write+0x12>
 8002296:	4620      	mov	r0, r4
 8002298:	f85d bb04 	ldr.w	fp, [sp], #4
 800229c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800229e <_sbrk>:
 800229e:	f640 2268 	movw	r2, #2664	; 0xa68
 80022a2:	4601      	mov	r1, r0
 80022a4:	466b      	mov	r3, sp
 80022a6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80022aa:	6810      	ldr	r0, [r2, #0]
 80022ac:	2800      	cmp	r0, #0
 80022ae:	bf02      	ittt	eq
 80022b0:	f640 3010 	movweq	r0, #2832	; 0xb10
 80022b4:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80022b8:	6010      	streq	r0, [r2, #0]
 80022ba:	4401      	add	r1, r0
 80022bc:	4299      	cmp	r1, r3
 80022be:	bf9c      	itt	ls
 80022c0:	6011      	strls	r1, [r2, #0]
 80022c2:	4770      	bxls	lr
 80022c4:	b580      	push	{r7, lr}
 80022c6:	466f      	mov	r7, sp
 80022c8:	f000 f864 	bl	8002394 <__errno>
 80022cc:	210c      	movs	r1, #12
 80022ce:	6001      	str	r1, [r0, #0]
 80022d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80022d4:	bd80      	pop	{r7, pc}

080022d6 <_close>:
 80022d6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80022da:	4770      	bx	lr

080022dc <_fstat>:
 80022dc:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80022e0:	6048      	str	r0, [r1, #4]
 80022e2:	2000      	movs	r0, #0
 80022e4:	4770      	bx	lr

080022e6 <_isatty>:
 80022e6:	2001      	movs	r0, #1
 80022e8:	4770      	bx	lr

080022ea <_lseek>:
 80022ea:	2000      	movs	r0, #0
 80022ec:	4770      	bx	lr

080022ee <SystemInit>:
 80022ee:	f64e 5088 	movw	r0, #60808	; 0xed88
 80022f2:	f04f 0c00 	mov.w	ip, #0
 80022f6:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80022fa:	6801      	ldr	r1, [r0, #0]
 80022fc:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002300:	6001      	str	r1, [r0, #0]
 8002302:	f241 0100 	movw	r1, #4096	; 0x1000
 8002306:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800230a:	680a      	ldr	r2, [r1, #0]
 800230c:	f042 0201 	orr.w	r2, r2, #1
 8002310:	600a      	str	r2, [r1, #0]
 8002312:	f8c1 c008 	str.w	ip, [r1, #8]
 8002316:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800231a:	680b      	ldr	r3, [r1, #0]
 800231c:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002320:	401a      	ands	r2, r3
 8002322:	600a      	str	r2, [r1, #0]
 8002324:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002328:	60ca      	str	r2, [r1, #12]
 800232a:	680a      	ldr	r2, [r1, #0]
 800232c:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002330:	600a      	str	r2, [r1, #0]
 8002332:	f8c1 c018 	str.w	ip, [r1, #24]
 8002336:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800233a:	f840 1c80 	str.w	r1, [r0, #-128]
 800233e:	4770      	bx	lr

08002340 <Reset_Handler>:
 8002340:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002378 <LoopForever+0x2>
 8002344:	2100      	movs	r1, #0
 8002346:	e003      	b.n	8002350 <LoopCopyDataInit>

08002348 <CopyDataInit>:
 8002348:	4b0c      	ldr	r3, [pc, #48]	; (800237c <LoopForever+0x6>)
 800234a:	585b      	ldr	r3, [r3, r1]
 800234c:	5043      	str	r3, [r0, r1]
 800234e:	3104      	adds	r1, #4

08002350 <LoopCopyDataInit>:
 8002350:	480b      	ldr	r0, [pc, #44]	; (8002380 <LoopForever+0xa>)
 8002352:	4b0c      	ldr	r3, [pc, #48]	; (8002384 <LoopForever+0xe>)
 8002354:	1842      	adds	r2, r0, r1
 8002356:	429a      	cmp	r2, r3
 8002358:	d3f6      	bcc.n	8002348 <CopyDataInit>
 800235a:	4a0b      	ldr	r2, [pc, #44]	; (8002388 <LoopForever+0x12>)
 800235c:	e002      	b.n	8002364 <LoopFillZerobss>

0800235e <FillZerobss>:
 800235e:	2300      	movs	r3, #0
 8002360:	f842 3b04 	str.w	r3, [r2], #4

08002364 <LoopFillZerobss>:
 8002364:	4b09      	ldr	r3, [pc, #36]	; (800238c <LoopForever+0x16>)
 8002366:	429a      	cmp	r2, r3
 8002368:	d3f9      	bcc.n	800235e <FillZerobss>
 800236a:	f7ff ffc0 	bl	80022ee <SystemInit>
 800236e:	f000 f817 	bl	80023a0 <__libc_init_array>
 8002372:	f7ff ff18 	bl	80021a6 <main>

08002376 <LoopForever>:
 8002376:	e7fe      	b.n	8002376 <LoopForever>
 8002378:	20018000 	.word	0x20018000
 800237c:	080075c8 	.word	0x080075c8
 8002380:	20000000 	.word	0x20000000
 8002384:	200009c8 	.word	0x200009c8
 8002388:	200009c8 	.word	0x200009c8
 800238c:	20000b10 	.word	0x20000b10

08002390 <ADC1_2_IRQHandler>:
 8002390:	e7fe      	b.n	8002390 <ADC1_2_IRQHandler>
	...

08002394 <__errno>:
 8002394:	4b01      	ldr	r3, [pc, #4]	; (800239c <__errno+0x8>)
 8002396:	6818      	ldr	r0, [r3, #0]
 8002398:	4770      	bx	lr
 800239a:	bf00      	nop
 800239c:	20000018 	.word	0x20000018

080023a0 <__libc_init_array>:
 80023a0:	b570      	push	{r4, r5, r6, lr}
 80023a2:	4e0d      	ldr	r6, [pc, #52]	; (80023d8 <__libc_init_array+0x38>)
 80023a4:	4d0d      	ldr	r5, [pc, #52]	; (80023dc <__libc_init_array+0x3c>)
 80023a6:	1b76      	subs	r6, r6, r5
 80023a8:	10b6      	asrs	r6, r6, #2
 80023aa:	d006      	beq.n	80023ba <__libc_init_array+0x1a>
 80023ac:	2400      	movs	r4, #0
 80023ae:	3401      	adds	r4, #1
 80023b0:	f855 3b04 	ldr.w	r3, [r5], #4
 80023b4:	4798      	blx	r3
 80023b6:	42a6      	cmp	r6, r4
 80023b8:	d1f9      	bne.n	80023ae <__libc_init_array+0xe>
 80023ba:	4e09      	ldr	r6, [pc, #36]	; (80023e0 <__libc_init_array+0x40>)
 80023bc:	4d09      	ldr	r5, [pc, #36]	; (80023e4 <__libc_init_array+0x44>)
 80023be:	1b76      	subs	r6, r6, r5
 80023c0:	f004 fea8 	bl	8007114 <_init>
 80023c4:	10b6      	asrs	r6, r6, #2
 80023c6:	d006      	beq.n	80023d6 <__libc_init_array+0x36>
 80023c8:	2400      	movs	r4, #0
 80023ca:	3401      	adds	r4, #1
 80023cc:	f855 3b04 	ldr.w	r3, [r5], #4
 80023d0:	4798      	blx	r3
 80023d2:	42a6      	cmp	r6, r4
 80023d4:	d1f9      	bne.n	80023ca <__libc_init_array+0x2a>
 80023d6:	bd70      	pop	{r4, r5, r6, pc}
 80023d8:	080075b8 	.word	0x080075b8
 80023dc:	080075b8 	.word	0x080075b8
 80023e0:	080075c0 	.word	0x080075c0
 80023e4:	080075b8 	.word	0x080075b8

080023e8 <memset>:
 80023e8:	b4f0      	push	{r4, r5, r6, r7}
 80023ea:	0786      	lsls	r6, r0, #30
 80023ec:	d043      	beq.n	8002476 <memset+0x8e>
 80023ee:	1e54      	subs	r4, r2, #1
 80023f0:	2a00      	cmp	r2, #0
 80023f2:	d03e      	beq.n	8002472 <memset+0x8a>
 80023f4:	b2ca      	uxtb	r2, r1
 80023f6:	4603      	mov	r3, r0
 80023f8:	e002      	b.n	8002400 <memset+0x18>
 80023fa:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80023fe:	d338      	bcc.n	8002472 <memset+0x8a>
 8002400:	f803 2b01 	strb.w	r2, [r3], #1
 8002404:	079d      	lsls	r5, r3, #30
 8002406:	d1f8      	bne.n	80023fa <memset+0x12>
 8002408:	2c03      	cmp	r4, #3
 800240a:	d92b      	bls.n	8002464 <memset+0x7c>
 800240c:	b2cd      	uxtb	r5, r1
 800240e:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002412:	2c0f      	cmp	r4, #15
 8002414:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002418:	d916      	bls.n	8002448 <memset+0x60>
 800241a:	f1a4 0710 	sub.w	r7, r4, #16
 800241e:	093f      	lsrs	r7, r7, #4
 8002420:	f103 0620 	add.w	r6, r3, #32
 8002424:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002428:	f103 0210 	add.w	r2, r3, #16
 800242c:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002430:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002434:	3210      	adds	r2, #16
 8002436:	42b2      	cmp	r2, r6
 8002438:	d1f8      	bne.n	800242c <memset+0x44>
 800243a:	f004 040f 	and.w	r4, r4, #15
 800243e:	3701      	adds	r7, #1
 8002440:	2c03      	cmp	r4, #3
 8002442:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002446:	d90d      	bls.n	8002464 <memset+0x7c>
 8002448:	461e      	mov	r6, r3
 800244a:	4622      	mov	r2, r4
 800244c:	3a04      	subs	r2, #4
 800244e:	2a03      	cmp	r2, #3
 8002450:	f846 5b04 	str.w	r5, [r6], #4
 8002454:	d8fa      	bhi.n	800244c <memset+0x64>
 8002456:	1f22      	subs	r2, r4, #4
 8002458:	f022 0203 	bic.w	r2, r2, #3
 800245c:	3204      	adds	r2, #4
 800245e:	4413      	add	r3, r2
 8002460:	f004 0403 	and.w	r4, r4, #3
 8002464:	b12c      	cbz	r4, 8002472 <memset+0x8a>
 8002466:	b2c9      	uxtb	r1, r1
 8002468:	441c      	add	r4, r3
 800246a:	f803 1b01 	strb.w	r1, [r3], #1
 800246e:	429c      	cmp	r4, r3
 8002470:	d1fb      	bne.n	800246a <memset+0x82>
 8002472:	bcf0      	pop	{r4, r5, r6, r7}
 8002474:	4770      	bx	lr
 8002476:	4614      	mov	r4, r2
 8002478:	4603      	mov	r3, r0
 800247a:	e7c5      	b.n	8002408 <memset+0x20>

0800247c <printf>:
 800247c:	b40f      	push	{r0, r1, r2, r3}
 800247e:	b500      	push	{lr}
 8002480:	4907      	ldr	r1, [pc, #28]	; (80024a0 <printf+0x24>)
 8002482:	b083      	sub	sp, #12
 8002484:	ab04      	add	r3, sp, #16
 8002486:	6808      	ldr	r0, [r1, #0]
 8002488:	f853 2b04 	ldr.w	r2, [r3], #4
 800248c:	6881      	ldr	r1, [r0, #8]
 800248e:	9301      	str	r3, [sp, #4]
 8002490:	f000 f85e 	bl	8002550 <_vfprintf_r>
 8002494:	b003      	add	sp, #12
 8002496:	f85d eb04 	ldr.w	lr, [sp], #4
 800249a:	b004      	add	sp, #16
 800249c:	4770      	bx	lr
 800249e:	bf00      	nop
 80024a0:	20000018 	.word	0x20000018

080024a4 <_puts_r>:
 80024a4:	b570      	push	{r4, r5, r6, lr}
 80024a6:	4605      	mov	r5, r0
 80024a8:	b088      	sub	sp, #32
 80024aa:	4608      	mov	r0, r1
 80024ac:	460c      	mov	r4, r1
 80024ae:	f7fe f8c7 	bl	8000640 <strlen>
 80024b2:	4a22      	ldr	r2, [pc, #136]	; (800253c <_puts_r+0x98>)
 80024b4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80024b6:	9404      	str	r4, [sp, #16]
 80024b8:	2601      	movs	r6, #1
 80024ba:	1c44      	adds	r4, r0, #1
 80024bc:	a904      	add	r1, sp, #16
 80024be:	9206      	str	r2, [sp, #24]
 80024c0:	2202      	movs	r2, #2
 80024c2:	9403      	str	r4, [sp, #12]
 80024c4:	9005      	str	r0, [sp, #20]
 80024c6:	68ac      	ldr	r4, [r5, #8]
 80024c8:	9607      	str	r6, [sp, #28]
 80024ca:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80024ce:	b31b      	cbz	r3, 8002518 <_puts_r+0x74>
 80024d0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80024d2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80024d6:	07ce      	lsls	r6, r1, #31
 80024d8:	b29a      	uxth	r2, r3
 80024da:	d401      	bmi.n	80024e0 <_puts_r+0x3c>
 80024dc:	0590      	lsls	r0, r2, #22
 80024de:	d525      	bpl.n	800252c <_puts_r+0x88>
 80024e0:	0491      	lsls	r1, r2, #18
 80024e2:	d406      	bmi.n	80024f2 <_puts_r+0x4e>
 80024e4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80024e6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80024ea:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80024ee:	81a3      	strh	r3, [r4, #12]
 80024f0:	6662      	str	r2, [r4, #100]	; 0x64
 80024f2:	4628      	mov	r0, r5
 80024f4:	aa01      	add	r2, sp, #4
 80024f6:	4621      	mov	r1, r4
 80024f8:	f003 f85e 	bl	80055b8 <__sfvwrite_r>
 80024fc:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80024fe:	2800      	cmp	r0, #0
 8002500:	bf0c      	ite	eq
 8002502:	250a      	moveq	r5, #10
 8002504:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002508:	07da      	lsls	r2, r3, #31
 800250a:	d402      	bmi.n	8002512 <_puts_r+0x6e>
 800250c:	89a3      	ldrh	r3, [r4, #12]
 800250e:	059b      	lsls	r3, r3, #22
 8002510:	d506      	bpl.n	8002520 <_puts_r+0x7c>
 8002512:	4628      	mov	r0, r5
 8002514:	b008      	add	sp, #32
 8002516:	bd70      	pop	{r4, r5, r6, pc}
 8002518:	4628      	mov	r0, r5
 800251a:	f002 feb7 	bl	800528c <__sinit>
 800251e:	e7d7      	b.n	80024d0 <_puts_r+0x2c>
 8002520:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002522:	f003 fa05 	bl	8005930 <__retarget_lock_release_recursive>
 8002526:	4628      	mov	r0, r5
 8002528:	b008      	add	sp, #32
 800252a:	bd70      	pop	{r4, r5, r6, pc}
 800252c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800252e:	f003 f9fd 	bl	800592c <__retarget_lock_acquire_recursive>
 8002532:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002536:	b29a      	uxth	r2, r3
 8002538:	e7d2      	b.n	80024e0 <_puts_r+0x3c>
 800253a:	bf00      	nop
 800253c:	08007328 	.word	0x08007328

08002540 <puts>:
 8002540:	4b02      	ldr	r3, [pc, #8]	; (800254c <puts+0xc>)
 8002542:	4601      	mov	r1, r0
 8002544:	6818      	ldr	r0, [r3, #0]
 8002546:	f7ff bfad 	b.w	80024a4 <_puts_r>
 800254a:	bf00      	nop
 800254c:	20000018 	.word	0x20000018

08002550 <_vfprintf_r>:
 8002550:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002554:	b0d7      	sub	sp, #348	; 0x15c
 8002556:	461c      	mov	r4, r3
 8002558:	4689      	mov	r9, r1
 800255a:	4617      	mov	r7, r2
 800255c:	4605      	mov	r5, r0
 800255e:	9003      	str	r0, [sp, #12]
 8002560:	f003 f9d2 	bl	8005908 <_localeconv_r>
 8002564:	6803      	ldr	r3, [r0, #0]
 8002566:	9316      	str	r3, [sp, #88]	; 0x58
 8002568:	4618      	mov	r0, r3
 800256a:	f7fe f869 	bl	8000640 <strlen>
 800256e:	9408      	str	r4, [sp, #32]
 8002570:	9015      	str	r0, [sp, #84]	; 0x54
 8002572:	b11d      	cbz	r5, 800257c <_vfprintf_r+0x2c>
 8002574:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002576:	2b00      	cmp	r3, #0
 8002578:	f000 8107 	beq.w	800278a <_vfprintf_r+0x23a>
 800257c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002580:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002584:	07c8      	lsls	r0, r1, #31
 8002586:	b293      	uxth	r3, r2
 8002588:	d402      	bmi.n	8002590 <_vfprintf_r+0x40>
 800258a:	0599      	lsls	r1, r3, #22
 800258c:	f140 811f 	bpl.w	80027ce <_vfprintf_r+0x27e>
 8002590:	049e      	lsls	r6, r3, #18
 8002592:	d40a      	bmi.n	80025aa <_vfprintf_r+0x5a>
 8002594:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002598:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800259c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80025a0:	f8a9 300c 	strh.w	r3, [r9, #12]
 80025a4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80025a8:	b29b      	uxth	r3, r3
 80025aa:	071d      	lsls	r5, r3, #28
 80025ac:	f140 80b2 	bpl.w	8002714 <_vfprintf_r+0x1c4>
 80025b0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80025b4:	2a00      	cmp	r2, #0
 80025b6:	f000 80ad 	beq.w	8002714 <_vfprintf_r+0x1c4>
 80025ba:	f003 021a 	and.w	r2, r3, #26
 80025be:	2a0a      	cmp	r2, #10
 80025c0:	f000 80c9 	beq.w	8002756 <_vfprintf_r+0x206>
 80025c4:	2300      	movs	r3, #0
 80025c6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80027e0 <_vfprintf_r+0x290>
 80025ca:	9310      	str	r3, [sp, #64]	; 0x40
 80025cc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80025d0:	9317      	str	r3, [sp, #92]	; 0x5c
 80025d2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80025d6:	931b      	str	r3, [sp, #108]	; 0x6c
 80025d8:	9318      	str	r3, [sp, #96]	; 0x60
 80025da:	9305      	str	r3, [sp, #20]
 80025dc:	ab2d      	add	r3, sp, #180	; 0xb4
 80025de:	932a      	str	r3, [sp, #168]	; 0xa8
 80025e0:	469b      	mov	fp, r3
 80025e2:	783b      	ldrb	r3, [r7, #0]
 80025e4:	f8cd 901c 	str.w	r9, [sp, #28]
 80025e8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80025ec:	2b00      	cmp	r3, #0
 80025ee:	f000 8259 	beq.w	8002aa4 <_vfprintf_r+0x554>
 80025f2:	2b25      	cmp	r3, #37	; 0x25
 80025f4:	463c      	mov	r4, r7
 80025f6:	d102      	bne.n	80025fe <_vfprintf_r+0xae>
 80025f8:	e01d      	b.n	8002636 <_vfprintf_r+0xe6>
 80025fa:	2b25      	cmp	r3, #37	; 0x25
 80025fc:	d003      	beq.n	8002606 <_vfprintf_r+0xb6>
 80025fe:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002602:	2b00      	cmp	r3, #0
 8002604:	d1f9      	bne.n	80025fa <_vfprintf_r+0xaa>
 8002606:	1be5      	subs	r5, r4, r7
 8002608:	b18d      	cbz	r5, 800262e <_vfprintf_r+0xde>
 800260a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800260e:	3301      	adds	r3, #1
 8002610:	442a      	add	r2, r5
 8002612:	2b07      	cmp	r3, #7
 8002614:	f8cb 7000 	str.w	r7, [fp]
 8002618:	f8cb 5004 	str.w	r5, [fp, #4]
 800261c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002620:	f300 80ca 	bgt.w	80027b8 <_vfprintf_r+0x268>
 8002624:	f10b 0b08 	add.w	fp, fp, #8
 8002628:	9b05      	ldr	r3, [sp, #20]
 800262a:	442b      	add	r3, r5
 800262c:	9305      	str	r3, [sp, #20]
 800262e:	7823      	ldrb	r3, [r4, #0]
 8002630:	2b00      	cmp	r3, #0
 8002632:	f000 8237 	beq.w	8002aa4 <_vfprintf_r+0x554>
 8002636:	2300      	movs	r3, #0
 8002638:	7866      	ldrb	r6, [r4, #1]
 800263a:	9306      	str	r3, [sp, #24]
 800263c:	4698      	mov	r8, r3
 800263e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002642:	f104 0a01 	add.w	sl, r4, #1
 8002646:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800264a:	252b      	movs	r5, #43	; 0x2b
 800264c:	f10a 0a01 	add.w	sl, sl, #1
 8002650:	f1a6 0320 	sub.w	r3, r6, #32
 8002654:	2b5a      	cmp	r3, #90	; 0x5a
 8002656:	f200 842a 	bhi.w	8002eae <_vfprintf_r+0x95e>
 800265a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800265e:	03aa      	.short	0x03aa
 8002660:	04280428 	.word	0x04280428
 8002664:	0428029c 	.word	0x0428029c
 8002668:	04280428 	.word	0x04280428
 800266c:	042802a7 	.word	0x042802a7
 8002670:	02c60428 	.word	0x02c60428
 8002674:	042802d2 	.word	0x042802d2
 8002678:	02dc02d7 	.word	0x02dc02d7
 800267c:	02f60428 	.word	0x02f60428
 8002680:	026d026d 	.word	0x026d026d
 8002684:	026d026d 	.word	0x026d026d
 8002688:	026d026d 	.word	0x026d026d
 800268c:	026d026d 	.word	0x026d026d
 8002690:	0428026d 	.word	0x0428026d
 8002694:	04280428 	.word	0x04280428
 8002698:	04280428 	.word	0x04280428
 800269c:	04280428 	.word	0x04280428
 80026a0:	042802fb 	.word	0x042802fb
 80026a4:	03f3033c 	.word	0x03f3033c
 80026a8:	02fb02fb 	.word	0x02fb02fb
 80026ac:	042802fb 	.word	0x042802fb
 80026b0:	04280428 	.word	0x04280428
 80026b4:	03ee0428 	.word	0x03ee0428
 80026b8:	04280428 	.word	0x04280428
 80026bc:	0428009a 	.word	0x0428009a
 80026c0:	04280428 	.word	0x04280428
 80026c4:	04280350 	.word	0x04280350
 80026c8:	04280379 	.word	0x04280379
 80026cc:	03900428 	.word	0x03900428
 80026d0:	04280428 	.word	0x04280428
 80026d4:	04280428 	.word	0x04280428
 80026d8:	04280428 	.word	0x04280428
 80026dc:	04280428 	.word	0x04280428
 80026e0:	042802fb 	.word	0x042802fb
 80026e4:	00c5033c 	.word	0x00c5033c
 80026e8:	02fb02fb 	.word	0x02fb02fb
 80026ec:	03d102fb 	.word	0x03d102fb
 80026f0:	007000c5 	.word	0x007000c5
 80026f4:	03b50428 	.word	0x03b50428
 80026f8:	03c20428 	.word	0x03c20428
 80026fc:	03de009c 	.word	0x03de009c
 8002700:	04280070 	.word	0x04280070
 8002704:	00720350 	.word	0x00720350
 8002708:	0428022c 	.word	0x0428022c
 800270c:	027c0428 	.word	0x027c0428
 8002710:	00720428 	.word	0x00720428
 8002714:	4649      	mov	r1, r9
 8002716:	9803      	ldr	r0, [sp, #12]
 8002718:	f001 fc9a 	bl	8004050 <__swsetup_r>
 800271c:	b1a0      	cbz	r0, 8002748 <_vfprintf_r+0x1f8>
 800271e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002722:	07d8      	lsls	r0, r3, #31
 8002724:	d404      	bmi.n	8002730 <_vfprintf_r+0x1e0>
 8002726:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800272a:	0599      	lsls	r1, r3, #22
 800272c:	f140 83b7 	bpl.w	8002e9e <_vfprintf_r+0x94e>
 8002730:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002734:	9305      	str	r3, [sp, #20]
 8002736:	9805      	ldr	r0, [sp, #20]
 8002738:	b057      	add	sp, #348	; 0x15c
 800273a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800273e:	f048 0820 	orr.w	r8, r8, #32
 8002742:	f89a 6000 	ldrb.w	r6, [sl]
 8002746:	e781      	b.n	800264c <_vfprintf_r+0xfc>
 8002748:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800274c:	f003 021a 	and.w	r2, r3, #26
 8002750:	2a0a      	cmp	r2, #10
 8002752:	f47f af37 	bne.w	80025c4 <_vfprintf_r+0x74>
 8002756:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800275a:	2a00      	cmp	r2, #0
 800275c:	f6ff af32 	blt.w	80025c4 <_vfprintf_r+0x74>
 8002760:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002764:	07d2      	lsls	r2, r2, #31
 8002766:	d405      	bmi.n	8002774 <_vfprintf_r+0x224>
 8002768:	059b      	lsls	r3, r3, #22
 800276a:	d403      	bmi.n	8002774 <_vfprintf_r+0x224>
 800276c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002770:	f003 f8de 	bl	8005930 <__retarget_lock_release_recursive>
 8002774:	4623      	mov	r3, r4
 8002776:	463a      	mov	r2, r7
 8002778:	4649      	mov	r1, r9
 800277a:	9803      	ldr	r0, [sp, #12]
 800277c:	f001 fc26 	bl	8003fcc <__sbprintf>
 8002780:	9005      	str	r0, [sp, #20]
 8002782:	9805      	ldr	r0, [sp, #20]
 8002784:	b057      	add	sp, #348	; 0x15c
 8002786:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800278a:	9803      	ldr	r0, [sp, #12]
 800278c:	f002 fd7e 	bl	800528c <__sinit>
 8002790:	e6f4      	b.n	800257c <_vfprintf_r+0x2c>
 8002792:	f048 0810 	orr.w	r8, r8, #16
 8002796:	f018 0f20 	tst.w	r8, #32
 800279a:	f000 836c 	beq.w	8002e76 <_vfprintf_r+0x926>
 800279e:	9c08      	ldr	r4, [sp, #32]
 80027a0:	3407      	adds	r4, #7
 80027a2:	f024 0307 	bic.w	r3, r4, #7
 80027a6:	e9d3 4500 	ldrd	r4, r5, [r3]
 80027aa:	f103 0208 	add.w	r2, r3, #8
 80027ae:	9208      	str	r2, [sp, #32]
 80027b0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80027b4:	2200      	movs	r2, #0
 80027b6:	e18c      	b.n	8002ad2 <_vfprintf_r+0x582>
 80027b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80027ba:	9907      	ldr	r1, [sp, #28]
 80027bc:	9803      	ldr	r0, [sp, #12]
 80027be:	f004 f9f5 	bl	8006bac <__sprint_r>
 80027c2:	2800      	cmp	r0, #0
 80027c4:	f041 8376 	bne.w	8003eb4 <_vfprintf_r+0x1964>
 80027c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80027cc:	e72c      	b.n	8002628 <_vfprintf_r+0xd8>
 80027ce:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80027d2:	f003 f8ab 	bl	800592c <__retarget_lock_acquire_recursive>
 80027d6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80027da:	b293      	uxth	r3, r2
 80027dc:	e6d8      	b.n	8002590 <_vfprintf_r+0x40>
 80027de:	bf00      	nop
	...
 80027e8:	4643      	mov	r3, r8
 80027ea:	069f      	lsls	r7, r3, #26
 80027ec:	f140 832f 	bpl.w	8002e4e <_vfprintf_r+0x8fe>
 80027f0:	9c08      	ldr	r4, [sp, #32]
 80027f2:	3407      	adds	r4, #7
 80027f4:	f024 0407 	bic.w	r4, r4, #7
 80027f8:	e9d4 0100 	ldrd	r0, r1, [r4]
 80027fc:	f104 0208 	add.w	r2, r4, #8
 8002800:	9208      	str	r2, [sp, #32]
 8002802:	4604      	mov	r4, r0
 8002804:	460d      	mov	r5, r1
 8002806:	2800      	cmp	r0, #0
 8002808:	f171 0200 	sbcs.w	r2, r1, #0
 800280c:	da05      	bge.n	800281a <_vfprintf_r+0x2ca>
 800280e:	222d      	movs	r2, #45	; 0x2d
 8002810:	4264      	negs	r4, r4
 8002812:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002816:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800281a:	aa56      	add	r2, sp, #344	; 0x158
 800281c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002820:	9204      	str	r2, [sp, #16]
 8002822:	f000 84b2 	beq.w	800318a <_vfprintf_r+0xc3a>
 8002826:	2201      	movs	r2, #1
 8002828:	ea54 0105 	orrs.w	r1, r4, r5
 800282c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002830:	f040 8159 	bne.w	8002ae6 <_vfprintf_r+0x596>
 8002834:	f1b9 0f00 	cmp.w	r9, #0
 8002838:	f040 8619 	bne.w	800346e <_vfprintf_r+0xf1e>
 800283c:	2a00      	cmp	r2, #0
 800283e:	f040 8508 	bne.w	8003252 <_vfprintf_r+0xd02>
 8002842:	f013 0301 	ands.w	r3, r3, #1
 8002846:	af56      	add	r7, sp, #344	; 0x158
 8002848:	9309      	str	r3, [sp, #36]	; 0x24
 800284a:	d002      	beq.n	8002852 <_vfprintf_r+0x302>
 800284c:	2330      	movs	r3, #48	; 0x30
 800284e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002852:	2300      	movs	r3, #0
 8002854:	930a      	str	r3, [sp, #40]	; 0x28
 8002856:	930f      	str	r3, [sp, #60]	; 0x3c
 8002858:	9314      	str	r3, [sp, #80]	; 0x50
 800285a:	9311      	str	r3, [sp, #68]	; 0x44
 800285c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800285e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002862:	454b      	cmp	r3, r9
 8002864:	bfb8      	it	lt
 8002866:	464b      	movlt	r3, r9
 8002868:	9304      	str	r3, [sp, #16]
 800286a:	b112      	cbz	r2, 8002872 <_vfprintf_r+0x322>
 800286c:	9b04      	ldr	r3, [sp, #16]
 800286e:	3301      	adds	r3, #1
 8002870:	9304      	str	r3, [sp, #16]
 8002872:	f018 0302 	ands.w	r3, r8, #2
 8002876:	930b      	str	r3, [sp, #44]	; 0x2c
 8002878:	d002      	beq.n	8002880 <_vfprintf_r+0x330>
 800287a:	9b04      	ldr	r3, [sp, #16]
 800287c:	3302      	adds	r3, #2
 800287e:	9304      	str	r3, [sp, #16]
 8002880:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002884:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002886:	930e      	str	r3, [sp, #56]	; 0x38
 8002888:	d13f      	bne.n	800290a <_vfprintf_r+0x3ba>
 800288a:	9b06      	ldr	r3, [sp, #24]
 800288c:	9904      	ldr	r1, [sp, #16]
 800288e:	1a5d      	subs	r5, r3, r1
 8002890:	2d00      	cmp	r5, #0
 8002892:	dd3a      	ble.n	800290a <_vfprintf_r+0x3ba>
 8002894:	2d10      	cmp	r5, #16
 8002896:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002898:	dd29      	ble.n	80028ee <_vfprintf_r+0x39e>
 800289a:	4659      	mov	r1, fp
 800289c:	4620      	mov	r0, r4
 800289e:	9620      	str	r6, [sp, #128]	; 0x80
 80028a0:	2310      	movs	r3, #16
 80028a2:	9c03      	ldr	r4, [sp, #12]
 80028a4:	9e07      	ldr	r6, [sp, #28]
 80028a6:	46bb      	mov	fp, r7
 80028a8:	e004      	b.n	80028b4 <_vfprintf_r+0x364>
 80028aa:	3d10      	subs	r5, #16
 80028ac:	2d10      	cmp	r5, #16
 80028ae:	f101 0108 	add.w	r1, r1, #8
 80028b2:	dd18      	ble.n	80028e6 <_vfprintf_r+0x396>
 80028b4:	3201      	adds	r2, #1
 80028b6:	4fba      	ldr	r7, [pc, #744]	; (8002ba0 <_vfprintf_r+0x650>)
 80028b8:	3010      	adds	r0, #16
 80028ba:	2a07      	cmp	r2, #7
 80028bc:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80028c0:	e9c1 7300 	strd	r7, r3, [r1]
 80028c4:	ddf1      	ble.n	80028aa <_vfprintf_r+0x35a>
 80028c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80028c8:	4631      	mov	r1, r6
 80028ca:	4620      	mov	r0, r4
 80028cc:	930c      	str	r3, [sp, #48]	; 0x30
 80028ce:	f004 f96d 	bl	8006bac <__sprint_r>
 80028d2:	2800      	cmp	r0, #0
 80028d4:	f040 843d 	bne.w	8003152 <_vfprintf_r+0xc02>
 80028d8:	3d10      	subs	r5, #16
 80028da:	2d10      	cmp	r5, #16
 80028dc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80028e0:	a92d      	add	r1, sp, #180	; 0xb4
 80028e2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80028e4:	dce6      	bgt.n	80028b4 <_vfprintf_r+0x364>
 80028e6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80028e8:	465f      	mov	r7, fp
 80028ea:	4604      	mov	r4, r0
 80028ec:	468b      	mov	fp, r1
 80028ee:	3201      	adds	r2, #1
 80028f0:	4bab      	ldr	r3, [pc, #684]	; (8002ba0 <_vfprintf_r+0x650>)
 80028f2:	442c      	add	r4, r5
 80028f4:	2a07      	cmp	r2, #7
 80028f6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028fa:	e9cb 3500 	strd	r3, r5, [fp]
 80028fe:	f300 84ff 	bgt.w	8003300 <_vfprintf_r+0xdb0>
 8002902:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002906:	f10b 0b08 	add.w	fp, fp, #8
 800290a:	b172      	cbz	r2, 800292a <_vfprintf_r+0x3da>
 800290c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800290e:	3201      	adds	r2, #1
 8002910:	3401      	adds	r4, #1
 8002912:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002916:	2101      	movs	r1, #1
 8002918:	2a07      	cmp	r2, #7
 800291a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800291e:	e9cb 0100 	strd	r0, r1, [fp]
 8002922:	f300 8418 	bgt.w	8003156 <_vfprintf_r+0xc06>
 8002926:	f10b 0b08 	add.w	fp, fp, #8
 800292a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800292c:	b16b      	cbz	r3, 800294a <_vfprintf_r+0x3fa>
 800292e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002930:	3301      	adds	r3, #1
 8002932:	3402      	adds	r4, #2
 8002934:	a923      	add	r1, sp, #140	; 0x8c
 8002936:	2202      	movs	r2, #2
 8002938:	2b07      	cmp	r3, #7
 800293a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800293e:	e9cb 1200 	strd	r1, r2, [fp]
 8002942:	f300 8415 	bgt.w	8003170 <_vfprintf_r+0xc20>
 8002946:	f10b 0b08 	add.w	fp, fp, #8
 800294a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800294c:	2b80      	cmp	r3, #128	; 0x80
 800294e:	f000 8331 	beq.w	8002fb4 <_vfprintf_r+0xa64>
 8002952:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002954:	eba9 0503 	sub.w	r5, r9, r3
 8002958:	2d00      	cmp	r5, #0
 800295a:	dd37      	ble.n	80029cc <_vfprintf_r+0x47c>
 800295c:	2d10      	cmp	r5, #16
 800295e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002960:	4b90      	ldr	r3, [pc, #576]	; (8002ba4 <_vfprintf_r+0x654>)
 8002962:	dd28      	ble.n	80029b6 <_vfprintf_r+0x466>
 8002964:	4659      	mov	r1, fp
 8002966:	4620      	mov	r0, r4
 8002968:	46bb      	mov	fp, r7
 800296a:	f04f 0910 	mov.w	r9, #16
 800296e:	4637      	mov	r7, r6
 8002970:	461c      	mov	r4, r3
 8002972:	9e07      	ldr	r6, [sp, #28]
 8002974:	e004      	b.n	8002980 <_vfprintf_r+0x430>
 8002976:	3d10      	subs	r5, #16
 8002978:	2d10      	cmp	r5, #16
 800297a:	f101 0108 	add.w	r1, r1, #8
 800297e:	dd15      	ble.n	80029ac <_vfprintf_r+0x45c>
 8002980:	3201      	adds	r2, #1
 8002982:	3010      	adds	r0, #16
 8002984:	2a07      	cmp	r2, #7
 8002986:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800298a:	e9c1 4900 	strd	r4, r9, [r1]
 800298e:	ddf2      	ble.n	8002976 <_vfprintf_r+0x426>
 8002990:	aa2a      	add	r2, sp, #168	; 0xa8
 8002992:	4631      	mov	r1, r6
 8002994:	9803      	ldr	r0, [sp, #12]
 8002996:	f004 f909 	bl	8006bac <__sprint_r>
 800299a:	2800      	cmp	r0, #0
 800299c:	f040 83d9 	bne.w	8003152 <_vfprintf_r+0xc02>
 80029a0:	3d10      	subs	r5, #16
 80029a2:	2d10      	cmp	r5, #16
 80029a4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80029a8:	a92d      	add	r1, sp, #180	; 0xb4
 80029aa:	dce9      	bgt.n	8002980 <_vfprintf_r+0x430>
 80029ac:	463e      	mov	r6, r7
 80029ae:	4623      	mov	r3, r4
 80029b0:	465f      	mov	r7, fp
 80029b2:	4604      	mov	r4, r0
 80029b4:	468b      	mov	fp, r1
 80029b6:	3201      	adds	r2, #1
 80029b8:	442c      	add	r4, r5
 80029ba:	2a07      	cmp	r2, #7
 80029bc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80029c0:	e9cb 3500 	strd	r3, r5, [fp]
 80029c4:	f300 83ef 	bgt.w	80031a6 <_vfprintf_r+0xc56>
 80029c8:	f10b 0b08 	add.w	fp, fp, #8
 80029cc:	f418 7f80 	tst.w	r8, #256	; 0x100
 80029d0:	f040 8280 	bne.w	8002ed4 <_vfprintf_r+0x984>
 80029d4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80029d6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80029d8:	f8cb 7000 	str.w	r7, [fp]
 80029dc:	3301      	adds	r3, #1
 80029de:	4414      	add	r4, r2
 80029e0:	2b07      	cmp	r3, #7
 80029e2:	942c      	str	r4, [sp, #176]	; 0xb0
 80029e4:	f8cb 2004 	str.w	r2, [fp, #4]
 80029e8:	932b      	str	r3, [sp, #172]	; 0xac
 80029ea:	f300 8392 	bgt.w	8003112 <_vfprintf_r+0xbc2>
 80029ee:	f10b 0b08 	add.w	fp, fp, #8
 80029f2:	f018 0f04 	tst.w	r8, #4
 80029f6:	d03b      	beq.n	8002a70 <_vfprintf_r+0x520>
 80029f8:	9b06      	ldr	r3, [sp, #24]
 80029fa:	9a04      	ldr	r2, [sp, #16]
 80029fc:	1a9d      	subs	r5, r3, r2
 80029fe:	2d00      	cmp	r5, #0
 8002a00:	dd36      	ble.n	8002a70 <_vfprintf_r+0x520>
 8002a02:	2d10      	cmp	r5, #16
 8002a04:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002a06:	dd21      	ble.n	8002a4c <_vfprintf_r+0x4fc>
 8002a08:	2610      	movs	r6, #16
 8002a0a:	9f03      	ldr	r7, [sp, #12]
 8002a0c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002a10:	e004      	b.n	8002a1c <_vfprintf_r+0x4cc>
 8002a12:	3d10      	subs	r5, #16
 8002a14:	2d10      	cmp	r5, #16
 8002a16:	f10b 0b08 	add.w	fp, fp, #8
 8002a1a:	dd17      	ble.n	8002a4c <_vfprintf_r+0x4fc>
 8002a1c:	3301      	adds	r3, #1
 8002a1e:	4a60      	ldr	r2, [pc, #384]	; (8002ba0 <_vfprintf_r+0x650>)
 8002a20:	3410      	adds	r4, #16
 8002a22:	2b07      	cmp	r3, #7
 8002a24:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002a28:	e9cb 2600 	strd	r2, r6, [fp]
 8002a2c:	ddf1      	ble.n	8002a12 <_vfprintf_r+0x4c2>
 8002a2e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a30:	4641      	mov	r1, r8
 8002a32:	4638      	mov	r0, r7
 8002a34:	f004 f8ba 	bl	8006bac <__sprint_r>
 8002a38:	2800      	cmp	r0, #0
 8002a3a:	f040 856c 	bne.w	8003516 <_vfprintf_r+0xfc6>
 8002a3e:	3d10      	subs	r5, #16
 8002a40:	2d10      	cmp	r5, #16
 8002a42:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002a46:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002a4a:	dce7      	bgt.n	8002a1c <_vfprintf_r+0x4cc>
 8002a4c:	3301      	adds	r3, #1
 8002a4e:	4a54      	ldr	r2, [pc, #336]	; (8002ba0 <_vfprintf_r+0x650>)
 8002a50:	442c      	add	r4, r5
 8002a52:	2b07      	cmp	r3, #7
 8002a54:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002a58:	e9cb 2500 	strd	r2, r5, [fp]
 8002a5c:	dd08      	ble.n	8002a70 <_vfprintf_r+0x520>
 8002a5e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a60:	9907      	ldr	r1, [sp, #28]
 8002a62:	9803      	ldr	r0, [sp, #12]
 8002a64:	f004 f8a2 	bl	8006bac <__sprint_r>
 8002a68:	2800      	cmp	r0, #0
 8002a6a:	f040 82e9 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8002a6e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002a70:	9904      	ldr	r1, [sp, #16]
 8002a72:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002a76:	428a      	cmp	r2, r1
 8002a78:	bfac      	ite	ge
 8002a7a:	189b      	addge	r3, r3, r2
 8002a7c:	185b      	addlt	r3, r3, r1
 8002a7e:	9305      	str	r3, [sp, #20]
 8002a80:	2c00      	cmp	r4, #0
 8002a82:	f040 82d5 	bne.w	8003030 <_vfprintf_r+0xae0>
 8002a86:	2300      	movs	r3, #0
 8002a88:	932b      	str	r3, [sp, #172]	; 0xac
 8002a8a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002a8c:	b11b      	cbz	r3, 8002a96 <_vfprintf_r+0x546>
 8002a8e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002a90:	9803      	ldr	r0, [sp, #12]
 8002a92:	f002 fc9d 	bl	80053d0 <_free_r>
 8002a96:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002a9a:	4657      	mov	r7, sl
 8002a9c:	783b      	ldrb	r3, [r7, #0]
 8002a9e:	2b00      	cmp	r3, #0
 8002aa0:	f47f ada7 	bne.w	80025f2 <_vfprintf_r+0xa2>
 8002aa4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002aa6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002aaa:	2b00      	cmp	r3, #0
 8002aac:	f041 80e7 	bne.w	8003c7e <_vfprintf_r+0x172e>
 8002ab0:	2300      	movs	r3, #0
 8002ab2:	932b      	str	r3, [sp, #172]	; 0xac
 8002ab4:	e2cb      	b.n	800304e <_vfprintf_r+0xafe>
 8002ab6:	4643      	mov	r3, r8
 8002ab8:	069a      	lsls	r2, r3, #26
 8002aba:	f140 814e 	bpl.w	8002d5a <_vfprintf_r+0x80a>
 8002abe:	9c08      	ldr	r4, [sp, #32]
 8002ac0:	3407      	adds	r4, #7
 8002ac2:	f024 0207 	bic.w	r2, r4, #7
 8002ac6:	f102 0108 	add.w	r1, r2, #8
 8002aca:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002ace:	9108      	str	r1, [sp, #32]
 8002ad0:	2201      	movs	r2, #1
 8002ad2:	2100      	movs	r1, #0
 8002ad4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002ad8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002adc:	a956      	add	r1, sp, #344	; 0x158
 8002ade:	9104      	str	r1, [sp, #16]
 8002ae0:	f47f aea2 	bne.w	8002828 <_vfprintf_r+0x2d8>
 8002ae4:	4698      	mov	r8, r3
 8002ae6:	2a01      	cmp	r2, #1
 8002ae8:	f000 8350 	beq.w	800318c <_vfprintf_r+0xc3c>
 8002aec:	2a02      	cmp	r2, #2
 8002aee:	f000 831b 	beq.w	8003128 <_vfprintf_r+0xbd8>
 8002af2:	a956      	add	r1, sp, #344	; 0x158
 8002af4:	e000      	b.n	8002af8 <_vfprintf_r+0x5a8>
 8002af6:	4639      	mov	r1, r7
 8002af8:	08e2      	lsrs	r2, r4, #3
 8002afa:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002afe:	08e8      	lsrs	r0, r5, #3
 8002b00:	f004 0307 	and.w	r3, r4, #7
 8002b04:	4605      	mov	r5, r0
 8002b06:	4614      	mov	r4, r2
 8002b08:	3330      	adds	r3, #48	; 0x30
 8002b0a:	ea54 0205 	orrs.w	r2, r4, r5
 8002b0e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002b12:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002b16:	d1ee      	bne.n	8002af6 <_vfprintf_r+0x5a6>
 8002b18:	f018 0f01 	tst.w	r8, #1
 8002b1c:	f000 8314 	beq.w	8003148 <_vfprintf_r+0xbf8>
 8002b20:	2b30      	cmp	r3, #48	; 0x30
 8002b22:	f000 8311 	beq.w	8003148 <_vfprintf_r+0xbf8>
 8002b26:	9a04      	ldr	r2, [sp, #16]
 8002b28:	3902      	subs	r1, #2
 8002b2a:	2330      	movs	r3, #48	; 0x30
 8002b2c:	1a52      	subs	r2, r2, r1
 8002b2e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002b32:	9209      	str	r2, [sp, #36]	; 0x24
 8002b34:	460f      	mov	r7, r1
 8002b36:	e68c      	b.n	8002852 <_vfprintf_r+0x302>
 8002b38:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b3c:	2200      	movs	r2, #0
 8002b3e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b42:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002b46:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002b4a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b4e:	2b09      	cmp	r3, #9
 8002b50:	d9f5      	bls.n	8002b3e <_vfprintf_r+0x5ee>
 8002b52:	9206      	str	r2, [sp, #24]
 8002b54:	e57c      	b.n	8002650 <_vfprintf_r+0x100>
 8002b56:	4b14      	ldr	r3, [pc, #80]	; (8002ba8 <_vfprintf_r+0x658>)
 8002b58:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b5a:	f018 0f20 	tst.w	r8, #32
 8002b5e:	f000 8114 	beq.w	8002d8a <_vfprintf_r+0x83a>
 8002b62:	9c08      	ldr	r4, [sp, #32]
 8002b64:	3407      	adds	r4, #7
 8002b66:	f024 0307 	bic.w	r3, r4, #7
 8002b6a:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002b6e:	f103 0208 	add.w	r2, r3, #8
 8002b72:	9208      	str	r2, [sp, #32]
 8002b74:	f018 0f01 	tst.w	r8, #1
 8002b78:	d009      	beq.n	8002b8e <_vfprintf_r+0x63e>
 8002b7a:	ea54 0305 	orrs.w	r3, r4, r5
 8002b7e:	d006      	beq.n	8002b8e <_vfprintf_r+0x63e>
 8002b80:	2330      	movs	r3, #48	; 0x30
 8002b82:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002b86:	f048 0802 	orr.w	r8, r8, #2
 8002b8a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002b8e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002b92:	2202      	movs	r2, #2
 8002b94:	e79d      	b.n	8002ad2 <_vfprintf_r+0x582>
 8002b96:	f048 0801 	orr.w	r8, r8, #1
 8002b9a:	f89a 6000 	ldrb.w	r6, [sl]
 8002b9e:	e555      	b.n	800264c <_vfprintf_r+0xfc>
 8002ba0:	08007370 	.word	0x08007370
 8002ba4:	08007380 	.word	0x08007380
 8002ba8:	0800733c 	.word	0x0800733c
 8002bac:	9e03      	ldr	r6, [sp, #12]
 8002bae:	4630      	mov	r0, r6
 8002bb0:	f002 feaa 	bl	8005908 <_localeconv_r>
 8002bb4:	6843      	ldr	r3, [r0, #4]
 8002bb6:	9318      	str	r3, [sp, #96]	; 0x60
 8002bb8:	4618      	mov	r0, r3
 8002bba:	f7fd fd41 	bl	8000640 <strlen>
 8002bbe:	901b      	str	r0, [sp, #108]	; 0x6c
 8002bc0:	4604      	mov	r4, r0
 8002bc2:	4630      	mov	r0, r6
 8002bc4:	f002 fea0 	bl	8005908 <_localeconv_r>
 8002bc8:	6883      	ldr	r3, [r0, #8]
 8002bca:	931a      	str	r3, [sp, #104]	; 0x68
 8002bcc:	2c00      	cmp	r4, #0
 8002bce:	f43f adb8 	beq.w	8002742 <_vfprintf_r+0x1f2>
 8002bd2:	f89a 6000 	ldrb.w	r6, [sl]
 8002bd6:	2b00      	cmp	r3, #0
 8002bd8:	f43f ad38 	beq.w	800264c <_vfprintf_r+0xfc>
 8002bdc:	781b      	ldrb	r3, [r3, #0]
 8002bde:	2b00      	cmp	r3, #0
 8002be0:	f43f ad34 	beq.w	800264c <_vfprintf_r+0xfc>
 8002be4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002be8:	e530      	b.n	800264c <_vfprintf_r+0xfc>
 8002bea:	9b08      	ldr	r3, [sp, #32]
 8002bec:	f89a 6000 	ldrb.w	r6, [sl]
 8002bf0:	681a      	ldr	r2, [r3, #0]
 8002bf2:	9206      	str	r2, [sp, #24]
 8002bf4:	2a00      	cmp	r2, #0
 8002bf6:	f103 0304 	add.w	r3, r3, #4
 8002bfa:	f2c0 8697 	blt.w	800392c <_vfprintf_r+0x13dc>
 8002bfe:	9308      	str	r3, [sp, #32]
 8002c00:	e524      	b.n	800264c <_vfprintf_r+0xfc>
 8002c02:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002c06:	f89a 6000 	ldrb.w	r6, [sl]
 8002c0a:	e51f      	b.n	800264c <_vfprintf_r+0xfc>
 8002c0c:	f89a 6000 	ldrb.w	r6, [sl]
 8002c10:	f048 0804 	orr.w	r8, r8, #4
 8002c14:	e51a      	b.n	800264c <_vfprintf_r+0xfc>
 8002c16:	f89a 6000 	ldrb.w	r6, [sl]
 8002c1a:	2e2a      	cmp	r6, #42	; 0x2a
 8002c1c:	f10a 0201 	add.w	r2, sl, #1
 8002c20:	f001 81b0 	beq.w	8003f84 <_vfprintf_r+0x1a34>
 8002c24:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c28:	2b09      	cmp	r3, #9
 8002c2a:	4692      	mov	sl, r2
 8002c2c:	f04f 0900 	mov.w	r9, #0
 8002c30:	f63f ad0e 	bhi.w	8002650 <_vfprintf_r+0x100>
 8002c34:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002c38:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002c3c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002c40:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c44:	2b09      	cmp	r3, #9
 8002c46:	d9f5      	bls.n	8002c34 <_vfprintf_r+0x6e4>
 8002c48:	e502      	b.n	8002650 <_vfprintf_r+0x100>
 8002c4a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002c4e:	f89a 6000 	ldrb.w	r6, [sl]
 8002c52:	e4fb      	b.n	800264c <_vfprintf_r+0xfc>
 8002c54:	9c08      	ldr	r4, [sp, #32]
 8002c56:	3407      	adds	r4, #7
 8002c58:	f024 0407 	bic.w	r4, r4, #7
 8002c5c:	ed94 7b00 	vldr	d7, [r4]
 8002c60:	ec52 1b17 	vmov	r1, r2, d7
 8002c64:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002c68:	931d      	str	r3, [sp, #116]	; 0x74
 8002c6a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002c6e:	3408      	adds	r4, #8
 8002c70:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002c74:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002c78:	4bba      	ldr	r3, [pc, #744]	; (8002f64 <_vfprintf_r+0xa14>)
 8002c7a:	9408      	str	r4, [sp, #32]
 8002c7c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002c80:	f7fe f9f4 	bl	800106c <__aeabi_dcmpun>
 8002c84:	2800      	cmp	r0, #0
 8002c86:	f040 846f 	bne.w	8003568 <_vfprintf_r+0x1018>
 8002c8a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002c8e:	4bb5      	ldr	r3, [pc, #724]	; (8002f64 <_vfprintf_r+0xa14>)
 8002c90:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002c94:	f7fe f9cc 	bl	8001030 <__aeabi_dcmple>
 8002c98:	2800      	cmp	r0, #0
 8002c9a:	f040 8465 	bne.w	8003568 <_vfprintf_r+0x1018>
 8002c9e:	2200      	movs	r2, #0
 8002ca0:	2300      	movs	r3, #0
 8002ca2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ca6:	f7fe f9b9 	bl	800101c <__aeabi_dcmplt>
 8002caa:	2800      	cmp	r0, #0
 8002cac:	f040 855b 	bne.w	8003766 <_vfprintf_r+0x1216>
 8002cb0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002cb4:	4fac      	ldr	r7, [pc, #688]	; (8002f68 <_vfprintf_r+0xa18>)
 8002cb6:	4bad      	ldr	r3, [pc, #692]	; (8002f6c <_vfprintf_r+0xa1c>)
 8002cb8:	2000      	movs	r0, #0
 8002cba:	2103      	movs	r1, #3
 8002cbc:	9104      	str	r1, [sp, #16]
 8002cbe:	900a      	str	r0, [sp, #40]	; 0x28
 8002cc0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002cc4:	2e47      	cmp	r6, #71	; 0x47
 8002cc6:	bfd8      	it	le
 8002cc8:	461f      	movle	r7, r3
 8002cca:	9109      	str	r1, [sp, #36]	; 0x24
 8002ccc:	4681      	mov	r9, r0
 8002cce:	900f      	str	r0, [sp, #60]	; 0x3c
 8002cd0:	9014      	str	r0, [sp, #80]	; 0x50
 8002cd2:	9011      	str	r0, [sp, #68]	; 0x44
 8002cd4:	e5c9      	b.n	800286a <_vfprintf_r+0x31a>
 8002cd6:	9808      	ldr	r0, [sp, #32]
 8002cd8:	2300      	movs	r3, #0
 8002cda:	6801      	ldr	r1, [r0, #0]
 8002cdc:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ce0:	461a      	mov	r2, r3
 8002ce2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002ce6:	2301      	movs	r3, #1
 8002ce8:	1d01      	adds	r1, r0, #4
 8002cea:	9304      	str	r3, [sp, #16]
 8002cec:	920a      	str	r2, [sp, #40]	; 0x28
 8002cee:	4691      	mov	r9, r2
 8002cf0:	920f      	str	r2, [sp, #60]	; 0x3c
 8002cf2:	9214      	str	r2, [sp, #80]	; 0x50
 8002cf4:	9211      	str	r2, [sp, #68]	; 0x44
 8002cf6:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002cfa:	af3d      	add	r7, sp, #244	; 0xf4
 8002cfc:	e5b9      	b.n	8002872 <_vfprintf_r+0x322>
 8002cfe:	9b08      	ldr	r3, [sp, #32]
 8002d00:	681f      	ldr	r7, [r3, #0]
 8002d02:	2500      	movs	r5, #0
 8002d04:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002d08:	1d1c      	adds	r4, r3, #4
 8002d0a:	2f00      	cmp	r7, #0
 8002d0c:	f000 8639 	beq.w	8003982 <_vfprintf_r+0x1432>
 8002d10:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002d14:	f000 8711 	beq.w	8003b3a <_vfprintf_r+0x15ea>
 8002d18:	464a      	mov	r2, r9
 8002d1a:	4629      	mov	r1, r5
 8002d1c:	4638      	mov	r0, r7
 8002d1e:	f7fd fcff 	bl	8000720 <memchr>
 8002d22:	900a      	str	r0, [sp, #40]	; 0x28
 8002d24:	2800      	cmp	r0, #0
 8002d26:	f000 85e7 	beq.w	80038f8 <_vfprintf_r+0x13a8>
 8002d2a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002d2c:	1bdb      	subs	r3, r3, r7
 8002d2e:	9309      	str	r3, [sp, #36]	; 0x24
 8002d30:	46a9      	mov	r9, r5
 8002d32:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002d36:	9408      	str	r4, [sp, #32]
 8002d38:	9304      	str	r3, [sp, #16]
 8002d3a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002d3e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002d42:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002d46:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002d4a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d4e:	e58c      	b.n	800286a <_vfprintf_r+0x31a>
 8002d50:	f048 0310 	orr.w	r3, r8, #16
 8002d54:	069a      	lsls	r2, r3, #26
 8002d56:	f53f aeb2 	bmi.w	8002abe <_vfprintf_r+0x56e>
 8002d5a:	9a08      	ldr	r2, [sp, #32]
 8002d5c:	06df      	lsls	r7, r3, #27
 8002d5e:	f102 0104 	add.w	r1, r2, #4
 8002d62:	f100 837e 	bmi.w	8003462 <_vfprintf_r+0xf12>
 8002d66:	065d      	lsls	r5, r3, #25
 8002d68:	9a08      	ldr	r2, [sp, #32]
 8002d6a:	f100 84e4 	bmi.w	8003736 <_vfprintf_r+0x11e6>
 8002d6e:	059c      	lsls	r4, r3, #22
 8002d70:	f140 8377 	bpl.w	8003462 <_vfprintf_r+0xf12>
 8002d74:	7814      	ldrb	r4, [r2, #0]
 8002d76:	9108      	str	r1, [sp, #32]
 8002d78:	2500      	movs	r5, #0
 8002d7a:	2201      	movs	r2, #1
 8002d7c:	e6a9      	b.n	8002ad2 <_vfprintf_r+0x582>
 8002d7e:	4b7c      	ldr	r3, [pc, #496]	; (8002f70 <_vfprintf_r+0xa20>)
 8002d80:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d82:	f018 0f20 	tst.w	r8, #32
 8002d86:	f47f aeec 	bne.w	8002b62 <_vfprintf_r+0x612>
 8002d8a:	9a08      	ldr	r2, [sp, #32]
 8002d8c:	f018 0f10 	tst.w	r8, #16
 8002d90:	f102 0304 	add.w	r3, r2, #4
 8002d94:	f040 8354 	bne.w	8003440 <_vfprintf_r+0xef0>
 8002d98:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d9c:	9a08      	ldr	r2, [sp, #32]
 8002d9e:	f040 84d0 	bne.w	8003742 <_vfprintf_r+0x11f2>
 8002da2:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002da6:	f000 834b 	beq.w	8003440 <_vfprintf_r+0xef0>
 8002daa:	7814      	ldrb	r4, [r2, #0]
 8002dac:	9308      	str	r3, [sp, #32]
 8002dae:	2500      	movs	r5, #0
 8002db0:	e6e0      	b.n	8002b74 <_vfprintf_r+0x624>
 8002db2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002db6:	f89a 6000 	ldrb.w	r6, [sl]
 8002dba:	2b00      	cmp	r3, #0
 8002dbc:	f47f ac46 	bne.w	800264c <_vfprintf_r+0xfc>
 8002dc0:	2320      	movs	r3, #32
 8002dc2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002dc6:	e441      	b.n	800264c <_vfprintf_r+0xfc>
 8002dc8:	f89a 6000 	ldrb.w	r6, [sl]
 8002dcc:	2e6c      	cmp	r6, #108	; 0x6c
 8002dce:	bf03      	ittte	eq
 8002dd0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002dd4:	f048 0820 	orreq.w	r8, r8, #32
 8002dd8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002ddc:	f048 0810 	orrne.w	r8, r8, #16
 8002de0:	e434      	b.n	800264c <_vfprintf_r+0xfc>
 8002de2:	9a08      	ldr	r2, [sp, #32]
 8002de4:	f018 0f20 	tst.w	r8, #32
 8002de8:	f852 3b04 	ldr.w	r3, [r2], #4
 8002dec:	9208      	str	r2, [sp, #32]
 8002dee:	f000 83a1 	beq.w	8003534 <_vfprintf_r+0xfe4>
 8002df2:	9a05      	ldr	r2, [sp, #20]
 8002df4:	4610      	mov	r0, r2
 8002df6:	17d1      	asrs	r1, r2, #31
 8002df8:	e9c3 0100 	strd	r0, r1, [r3]
 8002dfc:	4657      	mov	r7, sl
 8002dfe:	e64d      	b.n	8002a9c <_vfprintf_r+0x54c>
 8002e00:	f89a 6000 	ldrb.w	r6, [sl]
 8002e04:	2e68      	cmp	r6, #104	; 0x68
 8002e06:	bf03      	ittte	eq
 8002e08:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002e0c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002e10:	f10a 0a01 	addeq.w	sl, sl, #1
 8002e14:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002e18:	e418      	b.n	800264c <_vfprintf_r+0xfc>
 8002e1a:	9908      	ldr	r1, [sp, #32]
 8002e1c:	4b55      	ldr	r3, [pc, #340]	; (8002f74 <_vfprintf_r+0xa24>)
 8002e1e:	680c      	ldr	r4, [r1, #0]
 8002e20:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e22:	f647 0230 	movw	r2, #30768	; 0x7830
 8002e26:	3104      	adds	r1, #4
 8002e28:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002e2c:	f048 0302 	orr.w	r3, r8, #2
 8002e30:	9108      	str	r1, [sp, #32]
 8002e32:	2500      	movs	r5, #0
 8002e34:	2202      	movs	r2, #2
 8002e36:	2678      	movs	r6, #120	; 0x78
 8002e38:	e64b      	b.n	8002ad2 <_vfprintf_r+0x582>
 8002e3a:	f048 0808 	orr.w	r8, r8, #8
 8002e3e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e42:	e403      	b.n	800264c <_vfprintf_r+0xfc>
 8002e44:	f048 0310 	orr.w	r3, r8, #16
 8002e48:	069f      	lsls	r7, r3, #26
 8002e4a:	f53f acd1 	bmi.w	80027f0 <_vfprintf_r+0x2a0>
 8002e4e:	9908      	ldr	r1, [sp, #32]
 8002e50:	06dd      	lsls	r5, r3, #27
 8002e52:	f101 0204 	add.w	r2, r1, #4
 8002e56:	f100 82fd 	bmi.w	8003454 <_vfprintf_r+0xf04>
 8002e5a:	065c      	lsls	r4, r3, #25
 8002e5c:	9908      	ldr	r1, [sp, #32]
 8002e5e:	f100 8475 	bmi.w	800374c <_vfprintf_r+0x11fc>
 8002e62:	0598      	lsls	r0, r3, #22
 8002e64:	f140 82f6 	bpl.w	8003454 <_vfprintf_r+0xf04>
 8002e68:	f991 4000 	ldrsb.w	r4, [r1]
 8002e6c:	9208      	str	r2, [sp, #32]
 8002e6e:	17e5      	asrs	r5, r4, #31
 8002e70:	4620      	mov	r0, r4
 8002e72:	4629      	mov	r1, r5
 8002e74:	e4c7      	b.n	8002806 <_vfprintf_r+0x2b6>
 8002e76:	9a08      	ldr	r2, [sp, #32]
 8002e78:	f018 0f10 	tst.w	r8, #16
 8002e7c:	f102 0304 	add.w	r3, r2, #4
 8002e80:	f040 82e3 	bne.w	800344a <_vfprintf_r+0xefa>
 8002e84:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002e88:	9a08      	ldr	r2, [sp, #32]
 8002e8a:	f040 8467 	bne.w	800375c <_vfprintf_r+0x120c>
 8002e8e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002e92:	f000 82da 	beq.w	800344a <_vfprintf_r+0xefa>
 8002e96:	7814      	ldrb	r4, [r2, #0]
 8002e98:	9308      	str	r3, [sp, #32]
 8002e9a:	2500      	movs	r5, #0
 8002e9c:	e488      	b.n	80027b0 <_vfprintf_r+0x260>
 8002e9e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002ea2:	f002 fd45 	bl	8005930 <__retarget_lock_release_recursive>
 8002ea6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002eaa:	9305      	str	r3, [sp, #20]
 8002eac:	e443      	b.n	8002736 <_vfprintf_r+0x1e6>
 8002eae:	2e00      	cmp	r6, #0
 8002eb0:	f43f adf8 	beq.w	8002aa4 <_vfprintf_r+0x554>
 8002eb4:	2300      	movs	r3, #0
 8002eb6:	2101      	movs	r1, #1
 8002eb8:	461a      	mov	r2, r3
 8002eba:	9104      	str	r1, [sp, #16]
 8002ebc:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002ec0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ec4:	930a      	str	r3, [sp, #40]	; 0x28
 8002ec6:	4699      	mov	r9, r3
 8002ec8:	930f      	str	r3, [sp, #60]	; 0x3c
 8002eca:	9314      	str	r3, [sp, #80]	; 0x50
 8002ecc:	9311      	str	r3, [sp, #68]	; 0x44
 8002ece:	9109      	str	r1, [sp, #36]	; 0x24
 8002ed0:	af3d      	add	r7, sp, #244	; 0xf4
 8002ed2:	e4ce      	b.n	8002872 <_vfprintf_r+0x322>
 8002ed4:	2e65      	cmp	r6, #101	; 0x65
 8002ed6:	f340 80ca 	ble.w	800306e <_vfprintf_r+0xb1e>
 8002eda:	2200      	movs	r2, #0
 8002edc:	2300      	movs	r3, #0
 8002ede:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ee2:	f7fe f891 	bl	8001008 <__aeabi_dcmpeq>
 8002ee6:	2800      	cmp	r0, #0
 8002ee8:	f000 8169 	beq.w	80031be <_vfprintf_r+0xc6e>
 8002eec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002eee:	4a22      	ldr	r2, [pc, #136]	; (8002f78 <_vfprintf_r+0xa28>)
 8002ef0:	f8cb 2000 	str.w	r2, [fp]
 8002ef4:	3301      	adds	r3, #1
 8002ef6:	3401      	adds	r4, #1
 8002ef8:	2201      	movs	r2, #1
 8002efa:	2b07      	cmp	r3, #7
 8002efc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f00:	f8cb 2004 	str.w	r2, [fp, #4]
 8002f04:	f300 8406 	bgt.w	8003714 <_vfprintf_r+0x11c4>
 8002f08:	f10b 0b08 	add.w	fp, fp, #8
 8002f0c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002f0e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002f10:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f12:	4293      	cmp	r3, r2
 8002f14:	db03      	blt.n	8002f1e <_vfprintf_r+0x9ce>
 8002f16:	f018 0f01 	tst.w	r8, #1
 8002f1a:	f43f ad6a 	beq.w	80029f2 <_vfprintf_r+0x4a2>
 8002f1e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f20:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f22:	f8cb 2000 	str.w	r2, [fp]
 8002f26:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002f28:	f8cb 2004 	str.w	r2, [fp, #4]
 8002f2c:	3301      	adds	r3, #1
 8002f2e:	4414      	add	r4, r2
 8002f30:	2b07      	cmp	r3, #7
 8002f32:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f36:	f300 8517 	bgt.w	8003968 <_vfprintf_r+0x1418>
 8002f3a:	f10b 0b08 	add.w	fp, fp, #8
 8002f3e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002f40:	1e5d      	subs	r5, r3, #1
 8002f42:	2d00      	cmp	r5, #0
 8002f44:	f77f ad55 	ble.w	80029f2 <_vfprintf_r+0x4a2>
 8002f48:	2d10      	cmp	r5, #16
 8002f4a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f4c:	4b0b      	ldr	r3, [pc, #44]	; (8002f7c <_vfprintf_r+0xa2c>)
 8002f4e:	f340 82e7 	ble.w	8003520 <_vfprintf_r+0xfd0>
 8002f52:	4619      	mov	r1, r3
 8002f54:	2610      	movs	r6, #16
 8002f56:	4623      	mov	r3, r4
 8002f58:	9f03      	ldr	r7, [sp, #12]
 8002f5a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f5e:	460c      	mov	r4, r1
 8002f60:	e014      	b.n	8002f8c <_vfprintf_r+0xa3c>
 8002f62:	bf00      	nop
 8002f64:	7fefffff 	.word	0x7fefffff
 8002f68:	08007330 	.word	0x08007330
 8002f6c:	0800732c 	.word	0x0800732c
 8002f70:	08007350 	.word	0x08007350
 8002f74:	0800733c 	.word	0x0800733c
 8002f78:	0800736c 	.word	0x0800736c
 8002f7c:	08007380 	.word	0x08007380
 8002f80:	f10b 0b08 	add.w	fp, fp, #8
 8002f84:	3d10      	subs	r5, #16
 8002f86:	2d10      	cmp	r5, #16
 8002f88:	f340 82c7 	ble.w	800351a <_vfprintf_r+0xfca>
 8002f8c:	3201      	adds	r2, #1
 8002f8e:	3310      	adds	r3, #16
 8002f90:	2a07      	cmp	r2, #7
 8002f92:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002f96:	e9cb 4600 	strd	r4, r6, [fp]
 8002f9a:	ddf1      	ble.n	8002f80 <_vfprintf_r+0xa30>
 8002f9c:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f9e:	4649      	mov	r1, r9
 8002fa0:	4638      	mov	r0, r7
 8002fa2:	f003 fe03 	bl	8006bac <__sprint_r>
 8002fa6:	2800      	cmp	r0, #0
 8002fa8:	d14c      	bne.n	8003044 <_vfprintf_r+0xaf4>
 8002faa:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002fae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002fb2:	e7e7      	b.n	8002f84 <_vfprintf_r+0xa34>
 8002fb4:	9b06      	ldr	r3, [sp, #24]
 8002fb6:	9a04      	ldr	r2, [sp, #16]
 8002fb8:	1a9d      	subs	r5, r3, r2
 8002fba:	2d00      	cmp	r5, #0
 8002fbc:	f77f acc9 	ble.w	8002952 <_vfprintf_r+0x402>
 8002fc0:	2d10      	cmp	r5, #16
 8002fc2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002fc4:	4bbc      	ldr	r3, [pc, #752]	; (80032b8 <_vfprintf_r+0xd68>)
 8002fc6:	dd27      	ble.n	8003018 <_vfprintf_r+0xac8>
 8002fc8:	4659      	mov	r1, fp
 8002fca:	4620      	mov	r0, r4
 8002fcc:	46bb      	mov	fp, r7
 8002fce:	461c      	mov	r4, r3
 8002fd0:	4637      	mov	r7, r6
 8002fd2:	9e07      	ldr	r6, [sp, #28]
 8002fd4:	e004      	b.n	8002fe0 <_vfprintf_r+0xa90>
 8002fd6:	3d10      	subs	r5, #16
 8002fd8:	2d10      	cmp	r5, #16
 8002fda:	f101 0108 	add.w	r1, r1, #8
 8002fde:	dd16      	ble.n	800300e <_vfprintf_r+0xabe>
 8002fe0:	3201      	adds	r2, #1
 8002fe2:	3010      	adds	r0, #16
 8002fe4:	2310      	movs	r3, #16
 8002fe6:	2a07      	cmp	r2, #7
 8002fe8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002fec:	600c      	str	r4, [r1, #0]
 8002fee:	604b      	str	r3, [r1, #4]
 8002ff0:	ddf1      	ble.n	8002fd6 <_vfprintf_r+0xa86>
 8002ff2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ff4:	4631      	mov	r1, r6
 8002ff6:	9803      	ldr	r0, [sp, #12]
 8002ff8:	f003 fdd8 	bl	8006bac <__sprint_r>
 8002ffc:	2800      	cmp	r0, #0
 8002ffe:	f040 80a8 	bne.w	8003152 <_vfprintf_r+0xc02>
 8003002:	3d10      	subs	r5, #16
 8003004:	2d10      	cmp	r5, #16
 8003006:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800300a:	a92d      	add	r1, sp, #180	; 0xb4
 800300c:	dce8      	bgt.n	8002fe0 <_vfprintf_r+0xa90>
 800300e:	463e      	mov	r6, r7
 8003010:	4623      	mov	r3, r4
 8003012:	465f      	mov	r7, fp
 8003014:	4604      	mov	r4, r0
 8003016:	468b      	mov	fp, r1
 8003018:	3201      	adds	r2, #1
 800301a:	442c      	add	r4, r5
 800301c:	2a07      	cmp	r2, #7
 800301e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003022:	e9cb 3500 	strd	r3, r5, [fp]
 8003026:	f300 8292 	bgt.w	800354e <_vfprintf_r+0xffe>
 800302a:	f10b 0b08 	add.w	fp, fp, #8
 800302e:	e490      	b.n	8002952 <_vfprintf_r+0x402>
 8003030:	aa2a      	add	r2, sp, #168	; 0xa8
 8003032:	9907      	ldr	r1, [sp, #28]
 8003034:	9803      	ldr	r0, [sp, #12]
 8003036:	f003 fdb9 	bl	8006bac <__sprint_r>
 800303a:	2800      	cmp	r0, #0
 800303c:	f43f ad23 	beq.w	8002a86 <_vfprintf_r+0x536>
 8003040:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003044:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003046:	b111      	cbz	r1, 800304e <_vfprintf_r+0xafe>
 8003048:	9803      	ldr	r0, [sp, #12]
 800304a:	f002 f9c1 	bl	80053d0 <_free_r>
 800304e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003052:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003056:	07d0      	lsls	r0, r2, #31
 8003058:	d402      	bmi.n	8003060 <_vfprintf_r+0xb10>
 800305a:	0599      	lsls	r1, r3, #22
 800305c:	f140 81d0 	bpl.w	8003400 <_vfprintf_r+0xeb0>
 8003060:	065a      	lsls	r2, r3, #25
 8003062:	f53f ab65 	bmi.w	8002730 <_vfprintf_r+0x1e0>
 8003066:	9805      	ldr	r0, [sp, #20]
 8003068:	b057      	add	sp, #348	; 0x15c
 800306a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800306e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003070:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003072:	2a01      	cmp	r2, #1
 8003074:	f104 0401 	add.w	r4, r4, #1
 8003078:	f103 0501 	add.w	r5, r3, #1
 800307c:	f10b 0608 	add.w	r6, fp, #8
 8003080:	f340 811c 	ble.w	80032bc <_vfprintf_r+0xd6c>
 8003084:	2301      	movs	r3, #1
 8003086:	2d07      	cmp	r5, #7
 8003088:	f8cb 7000 	str.w	r7, [fp]
 800308c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003090:	f8cb 3004 	str.w	r3, [fp, #4]
 8003094:	f300 81bb 	bgt.w	800340e <_vfprintf_r+0xebe>
 8003098:	9b15      	ldr	r3, [sp, #84]	; 0x54
 800309a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800309c:	1c69      	adds	r1, r5, #1
 800309e:	441c      	add	r4, r3
 80030a0:	2907      	cmp	r1, #7
 80030a2:	910b      	str	r1, [sp, #44]	; 0x2c
 80030a4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80030a8:	e9c6 2300 	strd	r2, r3, [r6]
 80030ac:	f300 81bb 	bgt.w	8003426 <_vfprintf_r+0xed6>
 80030b0:	3608      	adds	r6, #8
 80030b2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80030b4:	1c53      	adds	r3, r2, #1
 80030b6:	461d      	mov	r5, r3
 80030b8:	9509      	str	r5, [sp, #36]	; 0x24
 80030ba:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80030bc:	930e      	str	r3, [sp, #56]	; 0x38
 80030be:	2200      	movs	r2, #0
 80030c0:	2300      	movs	r3, #0
 80030c2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80030c6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80030ca:	f106 0b08 	add.w	fp, r6, #8
 80030ce:	f7fd ff9b 	bl	8001008 <__aeabi_dcmpeq>
 80030d2:	2800      	cmp	r0, #0
 80030d4:	f040 80c2 	bne.w	800325c <_vfprintf_r+0xd0c>
 80030d8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80030da:	f8c6 9004 	str.w	r9, [r6, #4]
 80030de:	3701      	adds	r7, #1
 80030e0:	444c      	add	r4, r9
 80030e2:	2d07      	cmp	r5, #7
 80030e4:	6037      	str	r7, [r6, #0]
 80030e6:	942c      	str	r4, [sp, #176]	; 0xb0
 80030e8:	952b      	str	r5, [sp, #172]	; 0xac
 80030ea:	f300 80f9 	bgt.w	80032e0 <_vfprintf_r+0xd90>
 80030ee:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80030f0:	f106 0310 	add.w	r3, r6, #16
 80030f4:	3202      	adds	r2, #2
 80030f6:	465e      	mov	r6, fp
 80030f8:	9209      	str	r2, [sp, #36]	; 0x24
 80030fa:	469b      	mov	fp, r3
 80030fc:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80030fe:	6072      	str	r2, [r6, #4]
 8003100:	4414      	add	r4, r2
 8003102:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003104:	942c      	str	r4, [sp, #176]	; 0xb0
 8003106:	ab26      	add	r3, sp, #152	; 0x98
 8003108:	2a07      	cmp	r2, #7
 800310a:	922b      	str	r2, [sp, #172]	; 0xac
 800310c:	6033      	str	r3, [r6, #0]
 800310e:	f77f ac70 	ble.w	80029f2 <_vfprintf_r+0x4a2>
 8003112:	aa2a      	add	r2, sp, #168	; 0xa8
 8003114:	9907      	ldr	r1, [sp, #28]
 8003116:	9803      	ldr	r0, [sp, #12]
 8003118:	f003 fd48 	bl	8006bac <__sprint_r>
 800311c:	2800      	cmp	r0, #0
 800311e:	d18f      	bne.n	8003040 <_vfprintf_r+0xaf0>
 8003120:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003122:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003126:	e464      	b.n	80029f2 <_vfprintf_r+0x4a2>
 8003128:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800312a:	af56      	add	r7, sp, #344	; 0x158
 800312c:	0923      	lsrs	r3, r4, #4
 800312e:	f004 010f 	and.w	r1, r4, #15
 8003132:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003136:	092a      	lsrs	r2, r5, #4
 8003138:	461c      	mov	r4, r3
 800313a:	4615      	mov	r5, r2
 800313c:	5c43      	ldrb	r3, [r0, r1]
 800313e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003142:	ea54 0305 	orrs.w	r3, r4, r5
 8003146:	d1f1      	bne.n	800312c <_vfprintf_r+0xbdc>
 8003148:	9b04      	ldr	r3, [sp, #16]
 800314a:	1bdb      	subs	r3, r3, r7
 800314c:	9309      	str	r3, [sp, #36]	; 0x24
 800314e:	f7ff bb80 	b.w	8002852 <_vfprintf_r+0x302>
 8003152:	46b1      	mov	r9, r6
 8003154:	e776      	b.n	8003044 <_vfprintf_r+0xaf4>
 8003156:	aa2a      	add	r2, sp, #168	; 0xa8
 8003158:	9907      	ldr	r1, [sp, #28]
 800315a:	9803      	ldr	r0, [sp, #12]
 800315c:	f003 fd26 	bl	8006bac <__sprint_r>
 8003160:	2800      	cmp	r0, #0
 8003162:	f47f af6d 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003166:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003168:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800316c:	f7ff bbdd 	b.w	800292a <_vfprintf_r+0x3da>
 8003170:	aa2a      	add	r2, sp, #168	; 0xa8
 8003172:	9907      	ldr	r1, [sp, #28]
 8003174:	9803      	ldr	r0, [sp, #12]
 8003176:	f003 fd19 	bl	8006bac <__sprint_r>
 800317a:	2800      	cmp	r0, #0
 800317c:	f47f af60 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003180:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003182:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003186:	f7ff bbe0 	b.w	800294a <_vfprintf_r+0x3fa>
 800318a:	4698      	mov	r8, r3
 800318c:	2d00      	cmp	r5, #0
 800318e:	bf08      	it	eq
 8003190:	2c0a      	cmpeq	r4, #10
 8003192:	f080 8170 	bcs.w	8003476 <_vfprintf_r+0xf26>
 8003196:	af56      	add	r7, sp, #344	; 0x158
 8003198:	3430      	adds	r4, #48	; 0x30
 800319a:	2301      	movs	r3, #1
 800319c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80031a0:	9309      	str	r3, [sp, #36]	; 0x24
 80031a2:	f7ff bb56 	b.w	8002852 <_vfprintf_r+0x302>
 80031a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80031a8:	9907      	ldr	r1, [sp, #28]
 80031aa:	9803      	ldr	r0, [sp, #12]
 80031ac:	f003 fcfe 	bl	8006bac <__sprint_r>
 80031b0:	2800      	cmp	r0, #0
 80031b2:	f47f af45 	bne.w	8003040 <_vfprintf_r+0xaf0>
 80031b6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031bc:	e406      	b.n	80029cc <_vfprintf_r+0x47c>
 80031be:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80031c0:	2b00      	cmp	r3, #0
 80031c2:	f340 8273 	ble.w	80036ac <_vfprintf_r+0x115c>
 80031c6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80031ca:	4293      	cmp	r3, r2
 80031cc:	bfa8      	it	ge
 80031ce:	4613      	movge	r3, r2
 80031d0:	2b00      	cmp	r3, #0
 80031d2:	461d      	mov	r5, r3
 80031d4:	dd0d      	ble.n	80031f2 <_vfprintf_r+0xca2>
 80031d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031d8:	f8cb 7000 	str.w	r7, [fp]
 80031dc:	3301      	adds	r3, #1
 80031de:	442c      	add	r4, r5
 80031e0:	2b07      	cmp	r3, #7
 80031e2:	942c      	str	r4, [sp, #176]	; 0xb0
 80031e4:	f8cb 5004 	str.w	r5, [fp, #4]
 80031e8:	932b      	str	r3, [sp, #172]	; 0xac
 80031ea:	f300 82c1 	bgt.w	8003770 <_vfprintf_r+0x1220>
 80031ee:	f10b 0b08 	add.w	fp, fp, #8
 80031f2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80031f4:	2d00      	cmp	r5, #0
 80031f6:	bfa8      	it	ge
 80031f8:	1b5b      	subge	r3, r3, r5
 80031fa:	2b00      	cmp	r3, #0
 80031fc:	461d      	mov	r5, r3
 80031fe:	f340 8099 	ble.w	8003334 <_vfprintf_r+0xde4>
 8003202:	2d10      	cmp	r5, #16
 8003204:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003206:	4b2c      	ldr	r3, [pc, #176]	; (80032b8 <_vfprintf_r+0xd68>)
 8003208:	f340 83db 	ble.w	80039c2 <_vfprintf_r+0x1472>
 800320c:	4618      	mov	r0, r3
 800320e:	4621      	mov	r1, r4
 8003210:	465b      	mov	r3, fp
 8003212:	2610      	movs	r6, #16
 8003214:	46bb      	mov	fp, r7
 8003216:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800321a:	9c07      	ldr	r4, [sp, #28]
 800321c:	4607      	mov	r7, r0
 800321e:	e004      	b.n	800322a <_vfprintf_r+0xcda>
 8003220:	3308      	adds	r3, #8
 8003222:	3d10      	subs	r5, #16
 8003224:	2d10      	cmp	r5, #16
 8003226:	f340 83c7 	ble.w	80039b8 <_vfprintf_r+0x1468>
 800322a:	3201      	adds	r2, #1
 800322c:	3110      	adds	r1, #16
 800322e:	2a07      	cmp	r2, #7
 8003230:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003234:	e9c3 7600 	strd	r7, r6, [r3]
 8003238:	ddf2      	ble.n	8003220 <_vfprintf_r+0xcd0>
 800323a:	aa2a      	add	r2, sp, #168	; 0xa8
 800323c:	4621      	mov	r1, r4
 800323e:	4648      	mov	r0, r9
 8003240:	f003 fcb4 	bl	8006bac <__sprint_r>
 8003244:	2800      	cmp	r0, #0
 8003246:	f040 84a5 	bne.w	8003b94 <_vfprintf_r+0x1644>
 800324a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800324e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003250:	e7e7      	b.n	8003222 <_vfprintf_r+0xcd2>
 8003252:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003256:	af56      	add	r7, sp, #344	; 0x158
 8003258:	f7ff bafb 	b.w	8002852 <_vfprintf_r+0x302>
 800325c:	f1b9 0f00 	cmp.w	r9, #0
 8003260:	f77f af4c 	ble.w	80030fc <_vfprintf_r+0xbac>
 8003264:	f1b9 0f10 	cmp.w	r9, #16
 8003268:	4b13      	ldr	r3, [pc, #76]	; (80032b8 <_vfprintf_r+0xd68>)
 800326a:	f340 8659 	ble.w	8003f20 <_vfprintf_r+0x19d0>
 800326e:	4619      	mov	r1, r3
 8003270:	4622      	mov	r2, r4
 8003272:	4633      	mov	r3, r6
 8003274:	2710      	movs	r7, #16
 8003276:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800327a:	9c07      	ldr	r4, [sp, #28]
 800327c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800327e:	460e      	mov	r6, r1
 8003280:	e007      	b.n	8003292 <_vfprintf_r+0xd42>
 8003282:	3308      	adds	r3, #8
 8003284:	f1a9 0910 	sub.w	r9, r9, #16
 8003288:	f1b9 0f10 	cmp.w	r9, #16
 800328c:	f340 8353 	ble.w	8003936 <_vfprintf_r+0x13e6>
 8003290:	3501      	adds	r5, #1
 8003292:	3210      	adds	r2, #16
 8003294:	2d07      	cmp	r5, #7
 8003296:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800329a:	e9c3 6700 	strd	r6, r7, [r3]
 800329e:	ddf0      	ble.n	8003282 <_vfprintf_r+0xd32>
 80032a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80032a2:	4621      	mov	r1, r4
 80032a4:	4658      	mov	r0, fp
 80032a6:	f003 fc81 	bl	8006bac <__sprint_r>
 80032aa:	2800      	cmp	r0, #0
 80032ac:	f040 8472 	bne.w	8003b94 <_vfprintf_r+0x1644>
 80032b0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80032b4:	ab2d      	add	r3, sp, #180	; 0xb4
 80032b6:	e7e5      	b.n	8003284 <_vfprintf_r+0xd34>
 80032b8:	08007380 	.word	0x08007380
 80032bc:	f018 0f01 	tst.w	r8, #1
 80032c0:	f47f aee0 	bne.w	8003084 <_vfprintf_r+0xb34>
 80032c4:	2201      	movs	r2, #1
 80032c6:	2d07      	cmp	r5, #7
 80032c8:	f8cb 7000 	str.w	r7, [fp]
 80032cc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80032d0:	f8cb 2004 	str.w	r2, [fp, #4]
 80032d4:	dc04      	bgt.n	80032e0 <_vfprintf_r+0xd90>
 80032d6:	3302      	adds	r3, #2
 80032d8:	9309      	str	r3, [sp, #36]	; 0x24
 80032da:	f10b 0b10 	add.w	fp, fp, #16
 80032de:	e70d      	b.n	80030fc <_vfprintf_r+0xbac>
 80032e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80032e2:	9907      	ldr	r1, [sp, #28]
 80032e4:	9803      	ldr	r0, [sp, #12]
 80032e6:	f003 fc61 	bl	8006bac <__sprint_r>
 80032ea:	2800      	cmp	r0, #0
 80032ec:	f47f aea8 	bne.w	8003040 <_vfprintf_r+0xaf0>
 80032f0:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80032f4:	3301      	adds	r3, #1
 80032f6:	9309      	str	r3, [sp, #36]	; 0x24
 80032f8:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80032fc:	ae2d      	add	r6, sp, #180	; 0xb4
 80032fe:	e6fd      	b.n	80030fc <_vfprintf_r+0xbac>
 8003300:	aa2a      	add	r2, sp, #168	; 0xa8
 8003302:	9907      	ldr	r1, [sp, #28]
 8003304:	9803      	ldr	r0, [sp, #12]
 8003306:	f003 fc51 	bl	8006bac <__sprint_r>
 800330a:	2800      	cmp	r0, #0
 800330c:	f47f ae98 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003310:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003314:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003316:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800331a:	f7ff baf6 	b.w	800290a <_vfprintf_r+0x3ba>
 800331e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003320:	9907      	ldr	r1, [sp, #28]
 8003322:	9803      	ldr	r0, [sp, #12]
 8003324:	f003 fc42 	bl	8006bac <__sprint_r>
 8003328:	2800      	cmp	r0, #0
 800332a:	f47f ae89 	bne.w	8003040 <_vfprintf_r+0xaf0>
 800332e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003330:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003334:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003336:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800333a:	443b      	add	r3, r7
 800333c:	4699      	mov	r9, r3
 800333e:	f040 8357 	bne.w	80039f0 <_vfprintf_r+0x14a0>
 8003342:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003344:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003346:	4293      	cmp	r3, r2
 8003348:	db49      	blt.n	80033de <_vfprintf_r+0xe8e>
 800334a:	f018 0f01 	tst.w	r8, #1
 800334e:	d146      	bne.n	80033de <_vfprintf_r+0xe8e>
 8003350:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003352:	18bd      	adds	r5, r7, r2
 8003354:	eba5 0509 	sub.w	r5, r5, r9
 8003358:	1ad3      	subs	r3, r2, r3
 800335a:	429d      	cmp	r5, r3
 800335c:	bfa8      	it	ge
 800335e:	461d      	movge	r5, r3
 8003360:	2d00      	cmp	r5, #0
 8003362:	dd0d      	ble.n	8003380 <_vfprintf_r+0xe30>
 8003364:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003366:	f8cb 9000 	str.w	r9, [fp]
 800336a:	3201      	adds	r2, #1
 800336c:	442c      	add	r4, r5
 800336e:	2a07      	cmp	r2, #7
 8003370:	942c      	str	r4, [sp, #176]	; 0xb0
 8003372:	f8cb 5004 	str.w	r5, [fp, #4]
 8003376:	922b      	str	r2, [sp, #172]	; 0xac
 8003378:	f300 8462 	bgt.w	8003c40 <_vfprintf_r+0x16f0>
 800337c:	f10b 0b08 	add.w	fp, fp, #8
 8003380:	2d00      	cmp	r5, #0
 8003382:	bfac      	ite	ge
 8003384:	1b5d      	subge	r5, r3, r5
 8003386:	461d      	movlt	r5, r3
 8003388:	2d00      	cmp	r5, #0
 800338a:	f77f ab32 	ble.w	80029f2 <_vfprintf_r+0x4a2>
 800338e:	2d10      	cmp	r5, #16
 8003390:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003392:	4bc5      	ldr	r3, [pc, #788]	; (80036a8 <_vfprintf_r+0x1158>)
 8003394:	f340 80c4 	ble.w	8003520 <_vfprintf_r+0xfd0>
 8003398:	4619      	mov	r1, r3
 800339a:	2610      	movs	r6, #16
 800339c:	4623      	mov	r3, r4
 800339e:	9f03      	ldr	r7, [sp, #12]
 80033a0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80033a4:	460c      	mov	r4, r1
 80033a6:	e005      	b.n	80033b4 <_vfprintf_r+0xe64>
 80033a8:	f10b 0b08 	add.w	fp, fp, #8
 80033ac:	3d10      	subs	r5, #16
 80033ae:	2d10      	cmp	r5, #16
 80033b0:	f340 80b3 	ble.w	800351a <_vfprintf_r+0xfca>
 80033b4:	3201      	adds	r2, #1
 80033b6:	3310      	adds	r3, #16
 80033b8:	2a07      	cmp	r2, #7
 80033ba:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80033be:	e9cb 4600 	strd	r4, r6, [fp]
 80033c2:	ddf1      	ble.n	80033a8 <_vfprintf_r+0xe58>
 80033c4:	aa2a      	add	r2, sp, #168	; 0xa8
 80033c6:	4649      	mov	r1, r9
 80033c8:	4638      	mov	r0, r7
 80033ca:	f003 fbef 	bl	8006bac <__sprint_r>
 80033ce:	2800      	cmp	r0, #0
 80033d0:	f47f ae38 	bne.w	8003044 <_vfprintf_r+0xaf4>
 80033d4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80033d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033dc:	e7e6      	b.n	80033ac <_vfprintf_r+0xe5c>
 80033de:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033e0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80033e2:	f8cb 1000 	str.w	r1, [fp]
 80033e6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80033e8:	f8cb 1004 	str.w	r1, [fp, #4]
 80033ec:	3201      	adds	r2, #1
 80033ee:	440c      	add	r4, r1
 80033f0:	2a07      	cmp	r2, #7
 80033f2:	942c      	str	r4, [sp, #176]	; 0xb0
 80033f4:	922b      	str	r2, [sp, #172]	; 0xac
 80033f6:	f300 828c 	bgt.w	8003912 <_vfprintf_r+0x13c2>
 80033fa:	f10b 0b08 	add.w	fp, fp, #8
 80033fe:	e7a7      	b.n	8003350 <_vfprintf_r+0xe00>
 8003400:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003404:	f002 fa94 	bl	8005930 <__retarget_lock_release_recursive>
 8003408:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800340c:	e628      	b.n	8003060 <_vfprintf_r+0xb10>
 800340e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003410:	9907      	ldr	r1, [sp, #28]
 8003412:	9803      	ldr	r0, [sp, #12]
 8003414:	f003 fbca 	bl	8006bac <__sprint_r>
 8003418:	2800      	cmp	r0, #0
 800341a:	f47f ae11 	bne.w	8003040 <_vfprintf_r+0xaf0>
 800341e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003422:	ae2d      	add	r6, sp, #180	; 0xb4
 8003424:	e638      	b.n	8003098 <_vfprintf_r+0xb48>
 8003426:	aa2a      	add	r2, sp, #168	; 0xa8
 8003428:	9907      	ldr	r1, [sp, #28]
 800342a:	9803      	ldr	r0, [sp, #12]
 800342c:	f003 fbbe 	bl	8006bac <__sprint_r>
 8003430:	2800      	cmp	r0, #0
 8003432:	f47f ae05 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003436:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800343a:	ae2d      	add	r6, sp, #180	; 0xb4
 800343c:	930b      	str	r3, [sp, #44]	; 0x2c
 800343e:	e638      	b.n	80030b2 <_vfprintf_r+0xb62>
 8003440:	6814      	ldr	r4, [r2, #0]
 8003442:	9308      	str	r3, [sp, #32]
 8003444:	2500      	movs	r5, #0
 8003446:	f7ff bb95 	b.w	8002b74 <_vfprintf_r+0x624>
 800344a:	6814      	ldr	r4, [r2, #0]
 800344c:	9308      	str	r3, [sp, #32]
 800344e:	2500      	movs	r5, #0
 8003450:	f7ff b9ae 	b.w	80027b0 <_vfprintf_r+0x260>
 8003454:	680c      	ldr	r4, [r1, #0]
 8003456:	9208      	str	r2, [sp, #32]
 8003458:	17e5      	asrs	r5, r4, #31
 800345a:	4620      	mov	r0, r4
 800345c:	4629      	mov	r1, r5
 800345e:	f7ff b9d2 	b.w	8002806 <_vfprintf_r+0x2b6>
 8003462:	6814      	ldr	r4, [r2, #0]
 8003464:	9108      	str	r1, [sp, #32]
 8003466:	2201      	movs	r2, #1
 8003468:	2500      	movs	r5, #0
 800346a:	f7ff bb32 	b.w	8002ad2 <_vfprintf_r+0x582>
 800346e:	2a01      	cmp	r2, #1
 8003470:	f47f ab3c 	bne.w	8002aec <_vfprintf_r+0x59c>
 8003474:	e68f      	b.n	8003196 <_vfprintf_r+0xc46>
 8003476:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800347a:	2200      	movs	r2, #0
 800347c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003480:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003484:	af56      	add	r7, sp, #344	; 0x158
 8003486:	4692      	mov	sl, r2
 8003488:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800348c:	461e      	mov	r6, r3
 800348e:	e00a      	b.n	80034a6 <_vfprintf_r+0xf56>
 8003490:	2300      	movs	r3, #0
 8003492:	4620      	mov	r0, r4
 8003494:	4629      	mov	r1, r5
 8003496:	220a      	movs	r2, #10
 8003498:	f7fc feb2 	bl	8000200 <__aeabi_uldivmod>
 800349c:	4604      	mov	r4, r0
 800349e:	460d      	mov	r5, r1
 80034a0:	ea54 0305 	orrs.w	r3, r4, r5
 80034a4:	d029      	beq.n	80034fa <_vfprintf_r+0xfaa>
 80034a6:	220a      	movs	r2, #10
 80034a8:	2300      	movs	r3, #0
 80034aa:	4620      	mov	r0, r4
 80034ac:	4629      	mov	r1, r5
 80034ae:	f7fc fea7 	bl	8000200 <__aeabi_uldivmod>
 80034b2:	3230      	adds	r2, #48	; 0x30
 80034b4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80034b8:	f10a 0a01 	add.w	sl, sl, #1
 80034bc:	3f01      	subs	r7, #1
 80034be:	2e00      	cmp	r6, #0
 80034c0:	d0e6      	beq.n	8003490 <_vfprintf_r+0xf40>
 80034c2:	f898 3000 	ldrb.w	r3, [r8]
 80034c6:	459a      	cmp	sl, r3
 80034c8:	d1e2      	bne.n	8003490 <_vfprintf_r+0xf40>
 80034ca:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80034ce:	d0df      	beq.n	8003490 <_vfprintf_r+0xf40>
 80034d0:	2d00      	cmp	r5, #0
 80034d2:	bf08      	it	eq
 80034d4:	2c0a      	cmpeq	r4, #10
 80034d6:	d3db      	bcc.n	8003490 <_vfprintf_r+0xf40>
 80034d8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80034da:	9918      	ldr	r1, [sp, #96]	; 0x60
 80034dc:	1aff      	subs	r7, r7, r3
 80034de:	461a      	mov	r2, r3
 80034e0:	4638      	mov	r0, r7
 80034e2:	f003 faf5 	bl	8006ad0 <strncpy>
 80034e6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80034ea:	2b00      	cmp	r3, #0
 80034ec:	f000 8496 	beq.w	8003e1c <_vfprintf_r+0x18cc>
 80034f0:	f108 0801 	add.w	r8, r8, #1
 80034f4:	f04f 0a00 	mov.w	sl, #0
 80034f8:	e7ca      	b.n	8003490 <_vfprintf_r+0xf40>
 80034fa:	9b04      	ldr	r3, [sp, #16]
 80034fc:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003500:	1bdb      	subs	r3, r3, r7
 8003502:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003506:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003508:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800350c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003510:	9309      	str	r3, [sp, #36]	; 0x24
 8003512:	f7ff b99e 	b.w	8002852 <_vfprintf_r+0x302>
 8003516:	46c1      	mov	r9, r8
 8003518:	e594      	b.n	8003044 <_vfprintf_r+0xaf4>
 800351a:	4621      	mov	r1, r4
 800351c:	461c      	mov	r4, r3
 800351e:	460b      	mov	r3, r1
 8003520:	3201      	adds	r2, #1
 8003522:	442c      	add	r4, r5
 8003524:	2a07      	cmp	r2, #7
 8003526:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800352a:	e9cb 3500 	strd	r3, r5, [fp]
 800352e:	f77f aa5e 	ble.w	80029ee <_vfprintf_r+0x49e>
 8003532:	e5ee      	b.n	8003112 <_vfprintf_r+0xbc2>
 8003534:	f018 0f10 	tst.w	r8, #16
 8003538:	f040 80f8 	bne.w	800372c <_vfprintf_r+0x11dc>
 800353c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003540:	f000 8351 	beq.w	8003be6 <_vfprintf_r+0x1696>
 8003544:	9a05      	ldr	r2, [sp, #20]
 8003546:	801a      	strh	r2, [r3, #0]
 8003548:	4657      	mov	r7, sl
 800354a:	f7ff baa7 	b.w	8002a9c <_vfprintf_r+0x54c>
 800354e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003550:	9907      	ldr	r1, [sp, #28]
 8003552:	9803      	ldr	r0, [sp, #12]
 8003554:	f003 fb2a 	bl	8006bac <__sprint_r>
 8003558:	2800      	cmp	r0, #0
 800355a:	f47f ad71 	bne.w	8003040 <_vfprintf_r+0xaf0>
 800355e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003560:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003564:	f7ff b9f5 	b.w	8002952 <_vfprintf_r+0x402>
 8003568:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800356c:	4602      	mov	r2, r0
 800356e:	460b      	mov	r3, r1
 8003570:	f7fd fd7c 	bl	800106c <__aeabi_dcmpun>
 8003574:	2800      	cmp	r0, #0
 8003576:	f040 8491 	bne.w	8003e9c <_vfprintf_r+0x194c>
 800357a:	2e61      	cmp	r6, #97	; 0x61
 800357c:	f000 8111 	beq.w	80037a2 <_vfprintf_r+0x1252>
 8003580:	2e41      	cmp	r6, #65	; 0x41
 8003582:	f000 8377 	beq.w	8003c74 <_vfprintf_r+0x1724>
 8003586:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800358a:	f026 0220 	bic.w	r2, r6, #32
 800358e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003592:	930e      	str	r3, [sp, #56]	; 0x38
 8003594:	9204      	str	r2, [sp, #16]
 8003596:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003598:	f000 842d 	beq.w	8003df6 <_vfprintf_r+0x18a6>
 800359c:	2a47      	cmp	r2, #71	; 0x47
 800359e:	f000 8424 	beq.w	8003dea <_vfprintf_r+0x189a>
 80035a2:	2b00      	cmp	r3, #0
 80035a4:	f2c0 82f9 	blt.w	8003b9a <_vfprintf_r+0x164a>
 80035a8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80035ac:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80035b0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80035b4:	2e66      	cmp	r6, #102	; 0x66
 80035b6:	f000 83eb 	beq.w	8003d90 <_vfprintf_r+0x1840>
 80035ba:	2e46      	cmp	r6, #70	; 0x46
 80035bc:	f000 847e 	beq.w	8003ebc <_vfprintf_r+0x196c>
 80035c0:	9b04      	ldr	r3, [sp, #16]
 80035c2:	9803      	ldr	r0, [sp, #12]
 80035c4:	2b45      	cmp	r3, #69	; 0x45
 80035c6:	bf0c      	ite	eq
 80035c8:	f109 0501 	addeq.w	r5, r9, #1
 80035cc:	464d      	movne	r5, r9
 80035ce:	aa28      	add	r2, sp, #160	; 0xa0
 80035d0:	ab25      	add	r3, sp, #148	; 0x94
 80035d2:	e9cd 3200 	strd	r3, r2, [sp]
 80035d6:	2102      	movs	r1, #2
 80035d8:	ab24      	add	r3, sp, #144	; 0x90
 80035da:	462a      	mov	r2, r5
 80035dc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80035e0:	f000 fe3e 	bl	8004260 <_dtoa_r>
 80035e4:	2e67      	cmp	r6, #103	; 0x67
 80035e6:	4607      	mov	r7, r0
 80035e8:	f040 849c 	bne.w	8003f24 <_vfprintf_r+0x19d4>
 80035ec:	f018 0f01 	tst.w	r8, #1
 80035f0:	f040 83f9 	bne.w	8003de6 <_vfprintf_r+0x1896>
 80035f4:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80035f6:	4640      	mov	r0, r8
 80035f8:	1bdb      	subs	r3, r3, r7
 80035fa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80035fe:	9310      	str	r3, [sp, #64]	; 0x40
 8003600:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003602:	9311      	str	r3, [sp, #68]	; 0x44
 8003604:	9b04      	ldr	r3, [sp, #16]
 8003606:	2b47      	cmp	r3, #71	; 0x47
 8003608:	f000 81e7 	beq.w	80039da <_vfprintf_r+0x148a>
 800360c:	9b04      	ldr	r3, [sp, #16]
 800360e:	2b46      	cmp	r3, #70	; 0x46
 8003610:	f000 8300 	beq.w	8003c14 <_vfprintf_r+0x16c4>
 8003614:	9904      	ldr	r1, [sp, #16]
 8003616:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003618:	b2f2      	uxtb	r2, r6
 800361a:	2941      	cmp	r1, #65	; 0x41
 800361c:	bf08      	it	eq
 800361e:	320f      	addeq	r2, #15
 8003620:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003624:	bf06      	itte	eq
 8003626:	b2d2      	uxtbeq	r2, r2
 8003628:	2101      	moveq	r1, #1
 800362a:	2100      	movne	r1, #0
 800362c:	2b00      	cmp	r3, #0
 800362e:	9324      	str	r3, [sp, #144]	; 0x90
 8003630:	bfb8      	it	lt
 8003632:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003634:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003638:	bfba      	itte	lt
 800363a:	f1c3 0301 	rsblt	r3, r3, #1
 800363e:	222d      	movlt	r2, #45	; 0x2d
 8003640:	222b      	movge	r2, #43	; 0x2b
 8003642:	2b09      	cmp	r3, #9
 8003644:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003648:	f300 83f9 	bgt.w	8003e3e <_vfprintf_r+0x18ee>
 800364c:	2900      	cmp	r1, #0
 800364e:	f040 8487 	bne.w	8003f60 <_vfprintf_r+0x1a10>
 8003652:	2230      	movs	r2, #48	; 0x30
 8003654:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003658:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800365c:	3330      	adds	r3, #48	; 0x30
 800365e:	7013      	strb	r3, [r2, #0]
 8003660:	1c53      	adds	r3, r2, #1
 8003662:	aa26      	add	r2, sp, #152	; 0x98
 8003664:	1a9b      	subs	r3, r3, r2
 8003666:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003668:	9319      	str	r3, [sp, #100]	; 0x64
 800366a:	2a01      	cmp	r2, #1
 800366c:	4413      	add	r3, r2
 800366e:	9309      	str	r3, [sp, #36]	; 0x24
 8003670:	f340 8442 	ble.w	8003ef8 <_vfprintf_r+0x19a8>
 8003674:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003676:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003678:	4413      	add	r3, r2
 800367a:	9309      	str	r3, [sp, #36]	; 0x24
 800367c:	2300      	movs	r3, #0
 800367e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003680:	9314      	str	r3, [sp, #80]	; 0x50
 8003682:	9311      	str	r3, [sp, #68]	; 0x44
 8003684:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003686:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800368a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800368e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003692:	9304      	str	r3, [sp, #16]
 8003694:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003696:	2b00      	cmp	r3, #0
 8003698:	f040 8275 	bne.w	8003b86 <_vfprintf_r+0x1636>
 800369c:	4699      	mov	r9, r3
 800369e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80036a2:	f7ff b8e2 	b.w	800286a <_vfprintf_r+0x31a>
 80036a6:	bf00      	nop
 80036a8:	08007380 	.word	0x08007380
 80036ac:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036ae:	49bd      	ldr	r1, [pc, #756]	; (80039a4 <_vfprintf_r+0x1454>)
 80036b0:	f8cb 1000 	str.w	r1, [fp]
 80036b4:	3201      	adds	r2, #1
 80036b6:	3401      	adds	r4, #1
 80036b8:	2101      	movs	r1, #1
 80036ba:	2a07      	cmp	r2, #7
 80036bc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80036c0:	f8cb 1004 	str.w	r1, [fp, #4]
 80036c4:	dc60      	bgt.n	8003788 <_vfprintf_r+0x1238>
 80036c6:	f10b 0b08 	add.w	fp, fp, #8
 80036ca:	b92b      	cbnz	r3, 80036d8 <_vfprintf_r+0x1188>
 80036cc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80036ce:	b91a      	cbnz	r2, 80036d8 <_vfprintf_r+0x1188>
 80036d0:	f018 0f01 	tst.w	r8, #1
 80036d4:	f43f a98d 	beq.w	80029f2 <_vfprintf_r+0x4a2>
 80036d8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036da:	9916      	ldr	r1, [sp, #88]	; 0x58
 80036dc:	f8cb 1000 	str.w	r1, [fp]
 80036e0:	9915      	ldr	r1, [sp, #84]	; 0x54
 80036e2:	f8cb 1004 	str.w	r1, [fp, #4]
 80036e6:	3201      	adds	r2, #1
 80036e8:	440c      	add	r4, r1
 80036ea:	2a07      	cmp	r2, #7
 80036ec:	942c      	str	r4, [sp, #176]	; 0xb0
 80036ee:	922b      	str	r2, [sp, #172]	; 0xac
 80036f0:	f300 8282 	bgt.w	8003bf8 <_vfprintf_r+0x16a8>
 80036f4:	f10b 0b08 	add.w	fp, fp, #8
 80036f8:	2b00      	cmp	r3, #0
 80036fa:	f2c0 82e7 	blt.w	8003ccc <_vfprintf_r+0x177c>
 80036fe:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003700:	3201      	adds	r2, #1
 8003702:	441c      	add	r4, r3
 8003704:	2a07      	cmp	r2, #7
 8003706:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800370a:	e9cb 7300 	strd	r7, r3, [fp]
 800370e:	f77f a96e 	ble.w	80029ee <_vfprintf_r+0x49e>
 8003712:	e4fe      	b.n	8003112 <_vfprintf_r+0xbc2>
 8003714:	aa2a      	add	r2, sp, #168	; 0xa8
 8003716:	9907      	ldr	r1, [sp, #28]
 8003718:	9803      	ldr	r0, [sp, #12]
 800371a:	f003 fa47 	bl	8006bac <__sprint_r>
 800371e:	2800      	cmp	r0, #0
 8003720:	f47f ac8e 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003724:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003728:	f7ff bbf0 	b.w	8002f0c <_vfprintf_r+0x9bc>
 800372c:	9a05      	ldr	r2, [sp, #20]
 800372e:	601a      	str	r2, [r3, #0]
 8003730:	4657      	mov	r7, sl
 8003732:	f7ff b9b3 	b.w	8002a9c <_vfprintf_r+0x54c>
 8003736:	8814      	ldrh	r4, [r2, #0]
 8003738:	9108      	str	r1, [sp, #32]
 800373a:	2500      	movs	r5, #0
 800373c:	2201      	movs	r2, #1
 800373e:	f7ff b9c8 	b.w	8002ad2 <_vfprintf_r+0x582>
 8003742:	8814      	ldrh	r4, [r2, #0]
 8003744:	9308      	str	r3, [sp, #32]
 8003746:	2500      	movs	r5, #0
 8003748:	f7ff ba14 	b.w	8002b74 <_vfprintf_r+0x624>
 800374c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003750:	9208      	str	r2, [sp, #32]
 8003752:	17e5      	asrs	r5, r4, #31
 8003754:	4620      	mov	r0, r4
 8003756:	4629      	mov	r1, r5
 8003758:	f7ff b855 	b.w	8002806 <_vfprintf_r+0x2b6>
 800375c:	8814      	ldrh	r4, [r2, #0]
 800375e:	9308      	str	r3, [sp, #32]
 8003760:	2500      	movs	r5, #0
 8003762:	f7ff b825 	b.w	80027b0 <_vfprintf_r+0x260>
 8003766:	222d      	movs	r2, #45	; 0x2d
 8003768:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800376c:	f7ff baa2 	b.w	8002cb4 <_vfprintf_r+0x764>
 8003770:	aa2a      	add	r2, sp, #168	; 0xa8
 8003772:	9907      	ldr	r1, [sp, #28]
 8003774:	9803      	ldr	r0, [sp, #12]
 8003776:	f003 fa19 	bl	8006bac <__sprint_r>
 800377a:	2800      	cmp	r0, #0
 800377c:	f47f ac60 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003780:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003782:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003786:	e534      	b.n	80031f2 <_vfprintf_r+0xca2>
 8003788:	aa2a      	add	r2, sp, #168	; 0xa8
 800378a:	9907      	ldr	r1, [sp, #28]
 800378c:	9803      	ldr	r0, [sp, #12]
 800378e:	f003 fa0d 	bl	8006bac <__sprint_r>
 8003792:	2800      	cmp	r0, #0
 8003794:	f47f ac54 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003798:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800379a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800379c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037a0:	e793      	b.n	80036ca <_vfprintf_r+0x117a>
 80037a2:	2330      	movs	r3, #48	; 0x30
 80037a4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80037a8:	2378      	movs	r3, #120	; 0x78
 80037aa:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80037ae:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80037b2:	f048 0402 	orr.w	r4, r8, #2
 80037b6:	f300 82b0 	bgt.w	8003d1a <_vfprintf_r+0x17ca>
 80037ba:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80037be:	930e      	str	r3, [sp, #56]	; 0x38
 80037c0:	f026 0320 	bic.w	r3, r6, #32
 80037c4:	9304      	str	r3, [sp, #16]
 80037c6:	2200      	movs	r2, #0
 80037c8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80037ca:	920a      	str	r2, [sp, #40]	; 0x28
 80037cc:	46a0      	mov	r8, r4
 80037ce:	af3d      	add	r7, sp, #244	; 0xf4
 80037d0:	2b00      	cmp	r3, #0
 80037d2:	f2c0 81e3 	blt.w	8003b9c <_vfprintf_r+0x164c>
 80037d6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80037da:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80037de:	2300      	movs	r3, #0
 80037e0:	930b      	str	r3, [sp, #44]	; 0x2c
 80037e2:	2e61      	cmp	r6, #97	; 0x61
 80037e4:	f000 8255 	beq.w	8003c92 <_vfprintf_r+0x1742>
 80037e8:	2e41      	cmp	r6, #65	; 0x41
 80037ea:	f47f aee3 	bne.w	80035b4 <_vfprintf_r+0x1064>
 80037ee:	a824      	add	r0, sp, #144	; 0x90
 80037f0:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80037f4:	f003 f8e2 	bl	80069bc <frexp>
 80037f8:	2200      	movs	r2, #0
 80037fa:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80037fe:	ec51 0b10 	vmov	r0, r1, d0
 8003802:	f7fd f999 	bl	8000b38 <__aeabi_dmul>
 8003806:	2200      	movs	r2, #0
 8003808:	2300      	movs	r3, #0
 800380a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800380e:	f7fd fbfb 	bl	8001008 <__aeabi_dcmpeq>
 8003812:	2800      	cmp	r0, #0
 8003814:	f040 8305 	bne.w	8003e22 <_vfprintf_r+0x18d2>
 8003818:	4b63      	ldr	r3, [pc, #396]	; (80039a8 <_vfprintf_r+0x1458>)
 800381a:	9309      	str	r3, [sp, #36]	; 0x24
 800381c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003820:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003824:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003828:	9721      	str	r7, [sp, #132]	; 0x84
 800382a:	46b9      	mov	r9, r7
 800382c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003830:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003834:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003838:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800383c:	e003      	b.n	8003846 <_vfprintf_r+0x12f6>
 800383e:	f7fd fbe3 	bl	8001008 <__aeabi_dcmpeq>
 8003842:	bb20      	cbnz	r0, 800388e <_vfprintf_r+0x133e>
 8003844:	46a9      	mov	r9, r5
 8003846:	2200      	movs	r2, #0
 8003848:	4b58      	ldr	r3, [pc, #352]	; (80039ac <_vfprintf_r+0x145c>)
 800384a:	4630      	mov	r0, r6
 800384c:	4639      	mov	r1, r7
 800384e:	f7fd f973 	bl	8000b38 <__aeabi_dmul>
 8003852:	460f      	mov	r7, r1
 8003854:	4606      	mov	r6, r0
 8003856:	f7fd fc1f 	bl	8001098 <__aeabi_d2iz>
 800385a:	4680      	mov	r8, r0
 800385c:	f7fd f902 	bl	8000a64 <__aeabi_i2d>
 8003860:	4602      	mov	r2, r0
 8003862:	460b      	mov	r3, r1
 8003864:	4630      	mov	r0, r6
 8003866:	4639      	mov	r1, r7
 8003868:	f7fc ffae 	bl	80007c8 <__aeabi_dsub>
 800386c:	464d      	mov	r5, r9
 800386e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003872:	f805 cb01 	strb.w	ip, [r5], #1
 8003876:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800387a:	46a3      	mov	fp, r4
 800387c:	4606      	mov	r6, r0
 800387e:	460f      	mov	r7, r1
 8003880:	f04f 0200 	mov.w	r2, #0
 8003884:	f04f 0300 	mov.w	r3, #0
 8003888:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800388c:	d1d7      	bne.n	800383e <_vfprintf_r+0x12ee>
 800388e:	4630      	mov	r0, r6
 8003890:	4639      	mov	r1, r7
 8003892:	2200      	movs	r2, #0
 8003894:	4b46      	ldr	r3, [pc, #280]	; (80039b0 <_vfprintf_r+0x1460>)
 8003896:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800389a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800389c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80038a0:	4644      	mov	r4, r8
 80038a2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80038a6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80038aa:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80038ae:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80038b2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80038b4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80038b8:	f7fd fbce 	bl	8001058 <__aeabi_dcmpgt>
 80038bc:	2800      	cmp	r0, #0
 80038be:	f040 8176 	bne.w	8003bae <_vfprintf_r+0x165e>
 80038c2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80038c6:	2200      	movs	r2, #0
 80038c8:	4b39      	ldr	r3, [pc, #228]	; (80039b0 <_vfprintf_r+0x1460>)
 80038ca:	f7fd fb9d 	bl	8001008 <__aeabi_dcmpeq>
 80038ce:	b110      	cbz	r0, 80038d6 <_vfprintf_r+0x1386>
 80038d0:	07e2      	lsls	r2, r4, #31
 80038d2:	f100 816c 	bmi.w	8003bae <_vfprintf_r+0x165e>
 80038d6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038d8:	2b00      	cmp	r3, #0
 80038da:	db07      	blt.n	80038ec <_vfprintf_r+0x139c>
 80038dc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038de:	3301      	adds	r3, #1
 80038e0:	442b      	add	r3, r5
 80038e2:	2230      	movs	r2, #48	; 0x30
 80038e4:	f805 2b01 	strb.w	r2, [r5], #1
 80038e8:	42ab      	cmp	r3, r5
 80038ea:	d1fb      	bne.n	80038e4 <_vfprintf_r+0x1394>
 80038ec:	1beb      	subs	r3, r5, r7
 80038ee:	4640      	mov	r0, r8
 80038f0:	9310      	str	r3, [sp, #64]	; 0x40
 80038f2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80038f6:	e683      	b.n	8003600 <_vfprintf_r+0x10b0>
 80038f8:	f8cd 9010 	str.w	r9, [sp, #16]
 80038fc:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003900:	9408      	str	r4, [sp, #32]
 8003902:	4681      	mov	r9, r0
 8003904:	900f      	str	r0, [sp, #60]	; 0x3c
 8003906:	9014      	str	r0, [sp, #80]	; 0x50
 8003908:	9011      	str	r0, [sp, #68]	; 0x44
 800390a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800390e:	f7fe bfac 	b.w	800286a <_vfprintf_r+0x31a>
 8003912:	aa2a      	add	r2, sp, #168	; 0xa8
 8003914:	9907      	ldr	r1, [sp, #28]
 8003916:	9803      	ldr	r0, [sp, #12]
 8003918:	f003 f948 	bl	8006bac <__sprint_r>
 800391c:	2800      	cmp	r0, #0
 800391e:	f47f ab8f 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003922:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003924:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003926:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800392a:	e511      	b.n	8003350 <_vfprintf_r+0xe00>
 800392c:	4252      	negs	r2, r2
 800392e:	9206      	str	r2, [sp, #24]
 8003930:	9308      	str	r3, [sp, #32]
 8003932:	f7ff b96d 	b.w	8002c10 <_vfprintf_r+0x6c0>
 8003936:	4614      	mov	r4, r2
 8003938:	4632      	mov	r2, r6
 800393a:	461e      	mov	r6, r3
 800393c:	4613      	mov	r3, r2
 800393e:	462a      	mov	r2, r5
 8003940:	3201      	adds	r2, #1
 8003942:	9209      	str	r2, [sp, #36]	; 0x24
 8003944:	f106 0208 	add.w	r2, r6, #8
 8003948:	e9c6 3900 	strd	r3, r9, [r6]
 800394c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800394e:	932b      	str	r3, [sp, #172]	; 0xac
 8003950:	444c      	add	r4, r9
 8003952:	2b07      	cmp	r3, #7
 8003954:	942c      	str	r4, [sp, #176]	; 0xb0
 8003956:	f73f acc3 	bgt.w	80032e0 <_vfprintf_r+0xd90>
 800395a:	3301      	adds	r3, #1
 800395c:	9309      	str	r3, [sp, #36]	; 0x24
 800395e:	f102 0b08 	add.w	fp, r2, #8
 8003962:	4616      	mov	r6, r2
 8003964:	f7ff bbca 	b.w	80030fc <_vfprintf_r+0xbac>
 8003968:	aa2a      	add	r2, sp, #168	; 0xa8
 800396a:	9907      	ldr	r1, [sp, #28]
 800396c:	9803      	ldr	r0, [sp, #12]
 800396e:	f003 f91d 	bl	8006bac <__sprint_r>
 8003972:	2800      	cmp	r0, #0
 8003974:	f47f ab64 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003978:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800397a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800397e:	f7ff bade 	b.w	8002f3e <_vfprintf_r+0x9ee>
 8003982:	464b      	mov	r3, r9
 8003984:	2b06      	cmp	r3, #6
 8003986:	bf28      	it	cs
 8003988:	2306      	movcs	r3, #6
 800398a:	46b9      	mov	r9, r7
 800398c:	970f      	str	r7, [sp, #60]	; 0x3c
 800398e:	9714      	str	r7, [sp, #80]	; 0x50
 8003990:	9711      	str	r7, [sp, #68]	; 0x44
 8003992:	970a      	str	r7, [sp, #40]	; 0x28
 8003994:	463a      	mov	r2, r7
 8003996:	9304      	str	r3, [sp, #16]
 8003998:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800399c:	4f05      	ldr	r7, [pc, #20]	; (80039b4 <_vfprintf_r+0x1464>)
 800399e:	f7fe bf64 	b.w	800286a <_vfprintf_r+0x31a>
 80039a2:	bf00      	nop
 80039a4:	0800736c 	.word	0x0800736c
 80039a8:	08007350 	.word	0x08007350
 80039ac:	40300000 	.word	0x40300000
 80039b0:	3fe00000 	.word	0x3fe00000
 80039b4:	08007364 	.word	0x08007364
 80039b8:	460c      	mov	r4, r1
 80039ba:	4639      	mov	r1, r7
 80039bc:	465f      	mov	r7, fp
 80039be:	469b      	mov	fp, r3
 80039c0:	460b      	mov	r3, r1
 80039c2:	3201      	adds	r2, #1
 80039c4:	442c      	add	r4, r5
 80039c6:	2a07      	cmp	r2, #7
 80039c8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80039cc:	e9cb 3500 	strd	r3, r5, [fp]
 80039d0:	f73f aca5 	bgt.w	800331e <_vfprintf_r+0xdce>
 80039d4:	f10b 0b08 	add.w	fp, fp, #8
 80039d8:	e4ac      	b.n	8003334 <_vfprintf_r+0xde4>
 80039da:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039dc:	1cda      	adds	r2, r3, #3
 80039de:	db02      	blt.n	80039e6 <_vfprintf_r+0x1496>
 80039e0:	4599      	cmp	r9, r3
 80039e2:	f280 80b5 	bge.w	8003b50 <_vfprintf_r+0x1600>
 80039e6:	3e02      	subs	r6, #2
 80039e8:	f026 0320 	bic.w	r3, r6, #32
 80039ec:	9304      	str	r3, [sp, #16]
 80039ee:	e611      	b.n	8003614 <_vfprintf_r+0x10c4>
 80039f0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039f2:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80039f6:	465a      	mov	r2, fp
 80039f8:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80039fc:	18fb      	adds	r3, r7, r3
 80039fe:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003a02:	970c      	str	r7, [sp, #48]	; 0x30
 8003a04:	4eaf      	ldr	r6, [pc, #700]	; (8003cc4 <_vfprintf_r+0x1774>)
 8003a06:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003a0a:	9309      	str	r3, [sp, #36]	; 0x24
 8003a0c:	464f      	mov	r7, r9
 8003a0e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003a12:	4621      	mov	r1, r4
 8003a14:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003a16:	2b00      	cmp	r3, #0
 8003a18:	d05b      	beq.n	8003ad2 <_vfprintf_r+0x1582>
 8003a1a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a1c:	2b00      	cmp	r3, #0
 8003a1e:	d154      	bne.n	8003aca <_vfprintf_r+0x157a>
 8003a20:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003a22:	3b01      	subs	r3, #1
 8003a24:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003a28:	9314      	str	r3, [sp, #80]	; 0x50
 8003a2a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a2c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003a2e:	6010      	str	r0, [r2, #0]
 8003a30:	3301      	adds	r3, #1
 8003a32:	4459      	add	r1, fp
 8003a34:	2b07      	cmp	r3, #7
 8003a36:	912c      	str	r1, [sp, #176]	; 0xb0
 8003a38:	f8c2 b004 	str.w	fp, [r2, #4]
 8003a3c:	932b      	str	r3, [sp, #172]	; 0xac
 8003a3e:	dc68      	bgt.n	8003b12 <_vfprintf_r+0x15c2>
 8003a40:	3208      	adds	r2, #8
 8003a42:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003a44:	f898 3000 	ldrb.w	r3, [r8]
 8003a48:	1bc5      	subs	r5, r0, r7
 8003a4a:	429d      	cmp	r5, r3
 8003a4c:	bfa8      	it	ge
 8003a4e:	461d      	movge	r5, r3
 8003a50:	2d00      	cmp	r5, #0
 8003a52:	dd0b      	ble.n	8003a6c <_vfprintf_r+0x151c>
 8003a54:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a56:	6017      	str	r7, [r2, #0]
 8003a58:	3301      	adds	r3, #1
 8003a5a:	4429      	add	r1, r5
 8003a5c:	2b07      	cmp	r3, #7
 8003a5e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003a60:	6055      	str	r5, [r2, #4]
 8003a62:	932b      	str	r3, [sp, #172]	; 0xac
 8003a64:	dc5e      	bgt.n	8003b24 <_vfprintf_r+0x15d4>
 8003a66:	f898 3000 	ldrb.w	r3, [r8]
 8003a6a:	3208      	adds	r2, #8
 8003a6c:	2d00      	cmp	r5, #0
 8003a6e:	bfac      	ite	ge
 8003a70:	1b5d      	subge	r5, r3, r5
 8003a72:	461d      	movlt	r5, r3
 8003a74:	2d00      	cmp	r5, #0
 8003a76:	dd26      	ble.n	8003ac6 <_vfprintf_r+0x1576>
 8003a78:	2d10      	cmp	r5, #16
 8003a7a:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003a7c:	dd3c      	ble.n	8003af8 <_vfprintf_r+0x15a8>
 8003a7e:	2410      	movs	r4, #16
 8003a80:	e003      	b.n	8003a8a <_vfprintf_r+0x153a>
 8003a82:	3208      	adds	r2, #8
 8003a84:	3d10      	subs	r5, #16
 8003a86:	2d10      	cmp	r5, #16
 8003a88:	dd36      	ble.n	8003af8 <_vfprintf_r+0x15a8>
 8003a8a:	3001      	adds	r0, #1
 8003a8c:	3110      	adds	r1, #16
 8003a8e:	2807      	cmp	r0, #7
 8003a90:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003a94:	e9c2 6400 	strd	r6, r4, [r2]
 8003a98:	ddf3      	ble.n	8003a82 <_vfprintf_r+0x1532>
 8003a9a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a9c:	4651      	mov	r1, sl
 8003a9e:	4648      	mov	r0, r9
 8003aa0:	f003 f884 	bl	8006bac <__sprint_r>
 8003aa4:	2800      	cmp	r0, #0
 8003aa6:	d150      	bne.n	8003b4a <_vfprintf_r+0x15fa>
 8003aa8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003aac:	aa2d      	add	r2, sp, #180	; 0xb4
 8003aae:	e7e9      	b.n	8003a84 <_vfprintf_r+0x1534>
 8003ab0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ab2:	4651      	mov	r1, sl
 8003ab4:	4648      	mov	r0, r9
 8003ab6:	f003 f879 	bl	8006bac <__sprint_r>
 8003aba:	2800      	cmp	r0, #0
 8003abc:	d145      	bne.n	8003b4a <_vfprintf_r+0x15fa>
 8003abe:	f898 3000 	ldrb.w	r3, [r8]
 8003ac2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003ac4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ac6:	441f      	add	r7, r3
 8003ac8:	e7a4      	b.n	8003a14 <_vfprintf_r+0x14c4>
 8003aca:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003acc:	3b01      	subs	r3, #1
 8003ace:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ad0:	e7ab      	b.n	8003a2a <_vfprintf_r+0x14da>
 8003ad2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ad4:	2b00      	cmp	r3, #0
 8003ad6:	d1f8      	bne.n	8003aca <_vfprintf_r+0x157a>
 8003ad8:	46b9      	mov	r9, r7
 8003ada:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003adc:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003ade:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003ae2:	18fb      	adds	r3, r7, r3
 8003ae4:	4599      	cmp	r9, r3
 8003ae6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003aea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003aee:	4693      	mov	fp, r2
 8003af0:	460c      	mov	r4, r1
 8003af2:	bf28      	it	cs
 8003af4:	4699      	movcs	r9, r3
 8003af6:	e424      	b.n	8003342 <_vfprintf_r+0xdf2>
 8003af8:	3001      	adds	r0, #1
 8003afa:	4429      	add	r1, r5
 8003afc:	2807      	cmp	r0, #7
 8003afe:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003b02:	e9c2 6500 	strd	r6, r5, [r2]
 8003b06:	dcd3      	bgt.n	8003ab0 <_vfprintf_r+0x1560>
 8003b08:	f898 3000 	ldrb.w	r3, [r8]
 8003b0c:	3208      	adds	r2, #8
 8003b0e:	441f      	add	r7, r3
 8003b10:	e780      	b.n	8003a14 <_vfprintf_r+0x14c4>
 8003b12:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b14:	4651      	mov	r1, sl
 8003b16:	4648      	mov	r0, r9
 8003b18:	f003 f848 	bl	8006bac <__sprint_r>
 8003b1c:	b9a8      	cbnz	r0, 8003b4a <_vfprintf_r+0x15fa>
 8003b1e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003b20:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b22:	e78e      	b.n	8003a42 <_vfprintf_r+0x14f2>
 8003b24:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b26:	4651      	mov	r1, sl
 8003b28:	4648      	mov	r0, r9
 8003b2a:	f003 f83f 	bl	8006bac <__sprint_r>
 8003b2e:	b960      	cbnz	r0, 8003b4a <_vfprintf_r+0x15fa>
 8003b30:	f898 3000 	ldrb.w	r3, [r8]
 8003b34:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003b36:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b38:	e798      	b.n	8003a6c <_vfprintf_r+0x151c>
 8003b3a:	4638      	mov	r0, r7
 8003b3c:	f7fc fd80 	bl	8000640 <strlen>
 8003b40:	46a9      	mov	r9, r5
 8003b42:	4603      	mov	r3, r0
 8003b44:	9009      	str	r0, [sp, #36]	; 0x24
 8003b46:	f7ff b8f4 	b.w	8002d32 <_vfprintf_r+0x7e2>
 8003b4a:	46d1      	mov	r9, sl
 8003b4c:	f7ff ba7a 	b.w	8003044 <_vfprintf_r+0xaf4>
 8003b50:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b52:	4619      	mov	r1, r3
 8003b54:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b56:	4299      	cmp	r1, r3
 8003b58:	f300 8082 	bgt.w	8003c60 <_vfprintf_r+0x1710>
 8003b5c:	07c4      	lsls	r4, r0, #31
 8003b5e:	f140 816b 	bpl.w	8003e38 <_vfprintf_r+0x18e8>
 8003b62:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b64:	4413      	add	r3, r2
 8003b66:	9309      	str	r3, [sp, #36]	; 0x24
 8003b68:	0541      	lsls	r1, r0, #21
 8003b6a:	d503      	bpl.n	8003b74 <_vfprintf_r+0x1624>
 8003b6c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b6e:	2b00      	cmp	r3, #0
 8003b70:	f300 80e6 	bgt.w	8003d40 <_vfprintf_r+0x17f0>
 8003b74:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b76:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b7a:	9304      	str	r3, [sp, #16]
 8003b7c:	2667      	movs	r6, #103	; 0x67
 8003b7e:	2300      	movs	r3, #0
 8003b80:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b82:	9314      	str	r3, [sp, #80]	; 0x50
 8003b84:	e586      	b.n	8003694 <_vfprintf_r+0x1144>
 8003b86:	222d      	movs	r2, #45	; 0x2d
 8003b88:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003b8c:	f04f 0900 	mov.w	r9, #0
 8003b90:	f7fe be6c 	b.w	800286c <_vfprintf_r+0x31c>
 8003b94:	46a1      	mov	r9, r4
 8003b96:	f7ff ba55 	b.w	8003044 <_vfprintf_r+0xaf4>
 8003b9a:	900a      	str	r0, [sp, #40]	; 0x28
 8003b9c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003ba0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003ba4:	931f      	str	r3, [sp, #124]	; 0x7c
 8003ba6:	232d      	movs	r3, #45	; 0x2d
 8003ba8:	911e      	str	r1, [sp, #120]	; 0x78
 8003baa:	930b      	str	r3, [sp, #44]	; 0x2c
 8003bac:	e619      	b.n	80037e2 <_vfprintf_r+0x1292>
 8003bae:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bb0:	9328      	str	r3, [sp, #160]	; 0xa0
 8003bb2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003bb4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003bb8:	7bd9      	ldrb	r1, [r3, #15]
 8003bba:	4291      	cmp	r1, r2
 8003bbc:	462b      	mov	r3, r5
 8003bbe:	d109      	bne.n	8003bd4 <_vfprintf_r+0x1684>
 8003bc0:	2030      	movs	r0, #48	; 0x30
 8003bc2:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003bc6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003bc8:	1e5a      	subs	r2, r3, #1
 8003bca:	9228      	str	r2, [sp, #160]	; 0xa0
 8003bcc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003bd0:	4291      	cmp	r1, r2
 8003bd2:	d0f6      	beq.n	8003bc2 <_vfprintf_r+0x1672>
 8003bd4:	2a39      	cmp	r2, #57	; 0x39
 8003bd6:	bf0b      	itete	eq
 8003bd8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003bda:	3201      	addne	r2, #1
 8003bdc:	7a92      	ldrbeq	r2, [r2, #10]
 8003bde:	b2d2      	uxtbne	r2, r2
 8003be0:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003be4:	e682      	b.n	80038ec <_vfprintf_r+0x139c>
 8003be6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003bea:	f43f ad9f 	beq.w	800372c <_vfprintf_r+0x11dc>
 8003bee:	9a05      	ldr	r2, [sp, #20]
 8003bf0:	701a      	strb	r2, [r3, #0]
 8003bf2:	4657      	mov	r7, sl
 8003bf4:	f7fe bf52 	b.w	8002a9c <_vfprintf_r+0x54c>
 8003bf8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bfa:	9907      	ldr	r1, [sp, #28]
 8003bfc:	9803      	ldr	r0, [sp, #12]
 8003bfe:	f002 ffd5 	bl	8006bac <__sprint_r>
 8003c02:	2800      	cmp	r0, #0
 8003c04:	f47f aa1c 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003c08:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c0a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003c0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c12:	e571      	b.n	80036f8 <_vfprintf_r+0x11a8>
 8003c14:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c16:	2b00      	cmp	r3, #0
 8003c18:	f340 8164 	ble.w	8003ee4 <_vfprintf_r+0x1994>
 8003c1c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c1e:	f1b9 0f00 	cmp.w	r9, #0
 8003c22:	f040 8103 	bne.w	8003e2c <_vfprintf_r+0x18dc>
 8003c26:	07c6      	lsls	r6, r0, #31
 8003c28:	f100 8100 	bmi.w	8003e2c <_vfprintf_r+0x18dc>
 8003c2c:	9309      	str	r3, [sp, #36]	; 0x24
 8003c2e:	2666      	movs	r6, #102	; 0x66
 8003c30:	0543      	lsls	r3, r0, #21
 8003c32:	f100 8086 	bmi.w	8003d42 <_vfprintf_r+0x17f2>
 8003c36:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c38:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c3c:	9304      	str	r3, [sp, #16]
 8003c3e:	e79e      	b.n	8003b7e <_vfprintf_r+0x162e>
 8003c40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c42:	9907      	ldr	r1, [sp, #28]
 8003c44:	9803      	ldr	r0, [sp, #12]
 8003c46:	f002 ffb1 	bl	8006bac <__sprint_r>
 8003c4a:	2800      	cmp	r0, #0
 8003c4c:	f47f a9f8 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003c50:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c52:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003c54:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c56:	1ad3      	subs	r3, r2, r3
 8003c58:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c5c:	f7ff bb90 	b.w	8003380 <_vfprintf_r+0xe30>
 8003c60:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c62:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c64:	4413      	add	r3, r2
 8003c66:	9309      	str	r3, [sp, #36]	; 0x24
 8003c68:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c6a:	2b00      	cmp	r3, #0
 8003c6c:	f340 8149 	ble.w	8003f02 <_vfprintf_r+0x19b2>
 8003c70:	2667      	movs	r6, #103	; 0x67
 8003c72:	e7dd      	b.n	8003c30 <_vfprintf_r+0x16e0>
 8003c74:	2330      	movs	r3, #48	; 0x30
 8003c76:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003c7a:	2358      	movs	r3, #88	; 0x58
 8003c7c:	e595      	b.n	80037aa <_vfprintf_r+0x125a>
 8003c7e:	9803      	ldr	r0, [sp, #12]
 8003c80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c82:	4649      	mov	r1, r9
 8003c84:	f002 ff92 	bl	8006bac <__sprint_r>
 8003c88:	2800      	cmp	r0, #0
 8003c8a:	f47f a9e0 	bne.w	800304e <_vfprintf_r+0xafe>
 8003c8e:	f7fe bf0f 	b.w	8002ab0 <_vfprintf_r+0x560>
 8003c92:	a824      	add	r0, sp, #144	; 0x90
 8003c94:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c98:	f002 fe90 	bl	80069bc <frexp>
 8003c9c:	2200      	movs	r2, #0
 8003c9e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003ca2:	ec51 0b10 	vmov	r0, r1, d0
 8003ca6:	f7fc ff47 	bl	8000b38 <__aeabi_dmul>
 8003caa:	2200      	movs	r2, #0
 8003cac:	2300      	movs	r3, #0
 8003cae:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003cb2:	f7fd f9a9 	bl	8001008 <__aeabi_dcmpeq>
 8003cb6:	b108      	cbz	r0, 8003cbc <_vfprintf_r+0x176c>
 8003cb8:	2301      	movs	r3, #1
 8003cba:	9324      	str	r3, [sp, #144]	; 0x90
 8003cbc:	4b02      	ldr	r3, [pc, #8]	; (8003cc8 <_vfprintf_r+0x1778>)
 8003cbe:	9309      	str	r3, [sp, #36]	; 0x24
 8003cc0:	e5ac      	b.n	800381c <_vfprintf_r+0x12cc>
 8003cc2:	bf00      	nop
 8003cc4:	08007380 	.word	0x08007380
 8003cc8:	0800733c 	.word	0x0800733c
 8003ccc:	425d      	negs	r5, r3
 8003cce:	3310      	adds	r3, #16
 8003cd0:	4bb9      	ldr	r3, [pc, #740]	; (8003fb8 <_vfprintf_r+0x1a68>)
 8003cd2:	f280 8097 	bge.w	8003e04 <_vfprintf_r+0x18b4>
 8003cd6:	4619      	mov	r1, r3
 8003cd8:	2610      	movs	r6, #16
 8003cda:	4623      	mov	r3, r4
 8003cdc:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003ce0:	460c      	mov	r4, r1
 8003ce2:	e005      	b.n	8003cf0 <_vfprintf_r+0x17a0>
 8003ce4:	f10b 0b08 	add.w	fp, fp, #8
 8003ce8:	3d10      	subs	r5, #16
 8003cea:	2d10      	cmp	r5, #16
 8003cec:	f340 8087 	ble.w	8003dfe <_vfprintf_r+0x18ae>
 8003cf0:	3201      	adds	r2, #1
 8003cf2:	3310      	adds	r3, #16
 8003cf4:	2a07      	cmp	r2, #7
 8003cf6:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003cfa:	e9cb 4600 	strd	r4, r6, [fp]
 8003cfe:	ddf1      	ble.n	8003ce4 <_vfprintf_r+0x1794>
 8003d00:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d02:	9907      	ldr	r1, [sp, #28]
 8003d04:	4648      	mov	r0, r9
 8003d06:	f002 ff51 	bl	8006bac <__sprint_r>
 8003d0a:	2800      	cmp	r0, #0
 8003d0c:	f47f a998 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003d10:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003d14:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d18:	e7e6      	b.n	8003ce8 <_vfprintf_r+0x1798>
 8003d1a:	f109 0101 	add.w	r1, r9, #1
 8003d1e:	9803      	ldr	r0, [sp, #12]
 8003d20:	f001 fe80 	bl	8005a24 <_malloc_r>
 8003d24:	4607      	mov	r7, r0
 8003d26:	2800      	cmp	r0, #0
 8003d28:	f000 813b 	beq.w	8003fa2 <_vfprintf_r+0x1a52>
 8003d2c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003d30:	930e      	str	r3, [sp, #56]	; 0x38
 8003d32:	f026 0320 	bic.w	r3, r6, #32
 8003d36:	9304      	str	r3, [sp, #16]
 8003d38:	46a0      	mov	r8, r4
 8003d3a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d3c:	900a      	str	r0, [sp, #40]	; 0x28
 8003d3e:	e547      	b.n	80037d0 <_vfprintf_r+0x1280>
 8003d40:	2667      	movs	r6, #103	; 0x67
 8003d42:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003d44:	2200      	movs	r2, #0
 8003d46:	920f      	str	r2, [sp, #60]	; 0x3c
 8003d48:	9214      	str	r2, [sp, #80]	; 0x50
 8003d4a:	7803      	ldrb	r3, [r0, #0]
 8003d4c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003d4e:	2bff      	cmp	r3, #255	; 0xff
 8003d50:	d00c      	beq.n	8003d6c <_vfprintf_r+0x181c>
 8003d52:	4293      	cmp	r3, r2
 8003d54:	da0a      	bge.n	8003d6c <_vfprintf_r+0x181c>
 8003d56:	7841      	ldrb	r1, [r0, #1]
 8003d58:	1ad2      	subs	r2, r2, r3
 8003d5a:	b1a9      	cbz	r1, 8003d88 <_vfprintf_r+0x1838>
 8003d5c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d5e:	3301      	adds	r3, #1
 8003d60:	9314      	str	r3, [sp, #80]	; 0x50
 8003d62:	460b      	mov	r3, r1
 8003d64:	2bff      	cmp	r3, #255	; 0xff
 8003d66:	f100 0001 	add.w	r0, r0, #1
 8003d6a:	d1f2      	bne.n	8003d52 <_vfprintf_r+0x1802>
 8003d6c:	9211      	str	r2, [sp, #68]	; 0x44
 8003d6e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d70:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003d72:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003d74:	901a      	str	r0, [sp, #104]	; 0x68
 8003d76:	4413      	add	r3, r2
 8003d78:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003d7a:	fb02 1303 	mla	r3, r2, r3, r1
 8003d7e:	9309      	str	r3, [sp, #36]	; 0x24
 8003d80:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d84:	9304      	str	r3, [sp, #16]
 8003d86:	e485      	b.n	8003694 <_vfprintf_r+0x1144>
 8003d88:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003d8a:	3101      	adds	r1, #1
 8003d8c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003d8e:	e7de      	b.n	8003d4e <_vfprintf_r+0x17fe>
 8003d90:	aa28      	add	r2, sp, #160	; 0xa0
 8003d92:	ab25      	add	r3, sp, #148	; 0x94
 8003d94:	e9cd 3200 	strd	r3, r2, [sp]
 8003d98:	2103      	movs	r1, #3
 8003d9a:	ab24      	add	r3, sp, #144	; 0x90
 8003d9c:	464a      	mov	r2, r9
 8003d9e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003da2:	9803      	ldr	r0, [sp, #12]
 8003da4:	f000 fa5c 	bl	8004260 <_dtoa_r>
 8003da8:	464d      	mov	r5, r9
 8003daa:	4607      	mov	r7, r0
 8003dac:	eb00 0409 	add.w	r4, r0, r9
 8003db0:	783b      	ldrb	r3, [r7, #0]
 8003db2:	2b30      	cmp	r3, #48	; 0x30
 8003db4:	f000 80be 	beq.w	8003f34 <_vfprintf_r+0x19e4>
 8003db8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003dba:	442c      	add	r4, r5
 8003dbc:	2200      	movs	r2, #0
 8003dbe:	2300      	movs	r3, #0
 8003dc0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003dc4:	f7fd f920 	bl	8001008 <__aeabi_dcmpeq>
 8003dc8:	b108      	cbz	r0, 8003dce <_vfprintf_r+0x187e>
 8003dca:	4623      	mov	r3, r4
 8003dcc:	e413      	b.n	80035f6 <_vfprintf_r+0x10a6>
 8003dce:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003dd0:	42a3      	cmp	r3, r4
 8003dd2:	f4bf ac10 	bcs.w	80035f6 <_vfprintf_r+0x10a6>
 8003dd6:	2130      	movs	r1, #48	; 0x30
 8003dd8:	1c5a      	adds	r2, r3, #1
 8003dda:	9228      	str	r2, [sp, #160]	; 0xa0
 8003ddc:	7019      	strb	r1, [r3, #0]
 8003dde:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003de0:	429c      	cmp	r4, r3
 8003de2:	d8f9      	bhi.n	8003dd8 <_vfprintf_r+0x1888>
 8003de4:	e407      	b.n	80035f6 <_vfprintf_r+0x10a6>
 8003de6:	197c      	adds	r4, r7, r5
 8003de8:	e7e8      	b.n	8003dbc <_vfprintf_r+0x186c>
 8003dea:	f1b9 0f00 	cmp.w	r9, #0
 8003dee:	f000 8092 	beq.w	8003f16 <_vfprintf_r+0x19c6>
 8003df2:	900a      	str	r0, [sp, #40]	; 0x28
 8003df4:	e4ec      	b.n	80037d0 <_vfprintf_r+0x1280>
 8003df6:	900a      	str	r0, [sp, #40]	; 0x28
 8003df8:	f04f 0906 	mov.w	r9, #6
 8003dfc:	e4e8      	b.n	80037d0 <_vfprintf_r+0x1280>
 8003dfe:	4621      	mov	r1, r4
 8003e00:	461c      	mov	r4, r3
 8003e02:	460b      	mov	r3, r1
 8003e04:	3201      	adds	r2, #1
 8003e06:	442c      	add	r4, r5
 8003e08:	2a07      	cmp	r2, #7
 8003e0a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003e0e:	e9cb 3500 	strd	r3, r5, [fp]
 8003e12:	f300 80a9 	bgt.w	8003f68 <_vfprintf_r+0x1a18>
 8003e16:	f10b 0b08 	add.w	fp, fp, #8
 8003e1a:	e470      	b.n	80036fe <_vfprintf_r+0x11ae>
 8003e1c:	469a      	mov	sl, r3
 8003e1e:	f7ff bb37 	b.w	8003490 <_vfprintf_r+0xf40>
 8003e22:	2301      	movs	r3, #1
 8003e24:	9324      	str	r3, [sp, #144]	; 0x90
 8003e26:	4b65      	ldr	r3, [pc, #404]	; (8003fbc <_vfprintf_r+0x1a6c>)
 8003e28:	9309      	str	r3, [sp, #36]	; 0x24
 8003e2a:	e4f7      	b.n	800381c <_vfprintf_r+0x12cc>
 8003e2c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e2e:	4413      	add	r3, r2
 8003e30:	444b      	add	r3, r9
 8003e32:	9309      	str	r3, [sp, #36]	; 0x24
 8003e34:	2666      	movs	r6, #102	; 0x66
 8003e36:	e6fb      	b.n	8003c30 <_vfprintf_r+0x16e0>
 8003e38:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e3a:	9309      	str	r3, [sp, #36]	; 0x24
 8003e3c:	e694      	b.n	8003b68 <_vfprintf_r+0x1618>
 8003e3e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003e42:	4664      	mov	r4, ip
 8003e44:	4d5e      	ldr	r5, [pc, #376]	; (8003fc0 <_vfprintf_r+0x1a70>)
 8003e46:	e000      	b.n	8003e4a <_vfprintf_r+0x18fa>
 8003e48:	4614      	mov	r4, r2
 8003e4a:	fba5 1203 	umull	r1, r2, r5, r3
 8003e4e:	08d2      	lsrs	r2, r2, #3
 8003e50:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003e54:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003e58:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003e5c:	4613      	mov	r3, r2
 8003e5e:	2b09      	cmp	r3, #9
 8003e60:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003e64:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003e68:	dcee      	bgt.n	8003e48 <_vfprintf_r+0x18f8>
 8003e6a:	3330      	adds	r3, #48	; 0x30
 8003e6c:	3c02      	subs	r4, #2
 8003e6e:	b2db      	uxtb	r3, r3
 8003e70:	45a4      	cmp	ip, r4
 8003e72:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003e76:	f240 8090 	bls.w	8003f9a <_vfprintf_r+0x1a4a>
 8003e7a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003e7e:	4611      	mov	r1, r2
 8003e80:	e001      	b.n	8003e86 <_vfprintf_r+0x1936>
 8003e82:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003e86:	f804 3b01 	strb.w	r3, [r4], #1
 8003e8a:	458c      	cmp	ip, r1
 8003e8c:	d1f9      	bne.n	8003e82 <_vfprintf_r+0x1932>
 8003e8e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003e90:	1a9b      	subs	r3, r3, r2
 8003e92:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e96:	4413      	add	r3, r2
 8003e98:	f7ff bbe3 	b.w	8003662 <_vfprintf_r+0x1112>
 8003e9c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003e9e:	4f49      	ldr	r7, [pc, #292]	; (8003fc4 <_vfprintf_r+0x1a74>)
 8003ea0:	2b00      	cmp	r3, #0
 8003ea2:	bfb6      	itet	lt
 8003ea4:	222d      	movlt	r2, #45	; 0x2d
 8003ea6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003eaa:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003eae:	4b46      	ldr	r3, [pc, #280]	; (8003fc8 <_vfprintf_r+0x1a78>)
 8003eb0:	f7fe bf02 	b.w	8002cb8 <_vfprintf_r+0x768>
 8003eb4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003eb8:	f7ff b8c9 	b.w	800304e <_vfprintf_r+0xafe>
 8003ebc:	aa28      	add	r2, sp, #160	; 0xa0
 8003ebe:	ab25      	add	r3, sp, #148	; 0x94
 8003ec0:	e9cd 3200 	strd	r3, r2, [sp]
 8003ec4:	2103      	movs	r1, #3
 8003ec6:	ab24      	add	r3, sp, #144	; 0x90
 8003ec8:	464a      	mov	r2, r9
 8003eca:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003ece:	9803      	ldr	r0, [sp, #12]
 8003ed0:	f000 f9c6 	bl	8004260 <_dtoa_r>
 8003ed4:	464d      	mov	r5, r9
 8003ed6:	4607      	mov	r7, r0
 8003ed8:	2e46      	cmp	r6, #70	; 0x46
 8003eda:	eb07 0405 	add.w	r4, r7, r5
 8003ede:	f43f af67 	beq.w	8003db0 <_vfprintf_r+0x1860>
 8003ee2:	e76b      	b.n	8003dbc <_vfprintf_r+0x186c>
 8003ee4:	f1b9 0f00 	cmp.w	r9, #0
 8003ee8:	d131      	bne.n	8003f4e <_vfprintf_r+0x19fe>
 8003eea:	07c5      	lsls	r5, r0, #31
 8003eec:	d42f      	bmi.n	8003f4e <_vfprintf_r+0x19fe>
 8003eee:	2301      	movs	r3, #1
 8003ef0:	9304      	str	r3, [sp, #16]
 8003ef2:	9309      	str	r3, [sp, #36]	; 0x24
 8003ef4:	2666      	movs	r6, #102	; 0x66
 8003ef6:	e642      	b.n	8003b7e <_vfprintf_r+0x162e>
 8003ef8:	07c3      	lsls	r3, r0, #31
 8003efa:	f57f abbf 	bpl.w	800367c <_vfprintf_r+0x112c>
 8003efe:	f7ff bbb9 	b.w	8003674 <_vfprintf_r+0x1124>
 8003f02:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003f04:	f1c3 0301 	rsb	r3, r3, #1
 8003f08:	441a      	add	r2, r3
 8003f0a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003f0e:	9209      	str	r2, [sp, #36]	; 0x24
 8003f10:	9304      	str	r3, [sp, #16]
 8003f12:	2667      	movs	r6, #103	; 0x67
 8003f14:	e633      	b.n	8003b7e <_vfprintf_r+0x162e>
 8003f16:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003f1a:	f04f 0901 	mov.w	r9, #1
 8003f1e:	e457      	b.n	80037d0 <_vfprintf_r+0x1280>
 8003f20:	465a      	mov	r2, fp
 8003f22:	e511      	b.n	8003948 <_vfprintf_r+0x13f8>
 8003f24:	2e47      	cmp	r6, #71	; 0x47
 8003f26:	f47f af5e 	bne.w	8003de6 <_vfprintf_r+0x1896>
 8003f2a:	f018 0f01 	tst.w	r8, #1
 8003f2e:	f43f ab61 	beq.w	80035f4 <_vfprintf_r+0x10a4>
 8003f32:	e7d1      	b.n	8003ed8 <_vfprintf_r+0x1988>
 8003f34:	2200      	movs	r2, #0
 8003f36:	2300      	movs	r3, #0
 8003f38:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003f3c:	f7fd f864 	bl	8001008 <__aeabi_dcmpeq>
 8003f40:	2800      	cmp	r0, #0
 8003f42:	f47f af39 	bne.w	8003db8 <_vfprintf_r+0x1868>
 8003f46:	f1c5 0501 	rsb	r5, r5, #1
 8003f4a:	9524      	str	r5, [sp, #144]	; 0x90
 8003f4c:	e735      	b.n	8003dba <_vfprintf_r+0x186a>
 8003f4e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003f50:	3301      	adds	r3, #1
 8003f52:	444b      	add	r3, r9
 8003f54:	9309      	str	r3, [sp, #36]	; 0x24
 8003f56:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f5a:	9304      	str	r3, [sp, #16]
 8003f5c:	2666      	movs	r6, #102	; 0x66
 8003f5e:	e60e      	b.n	8003b7e <_vfprintf_r+0x162e>
 8003f60:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003f64:	f7ff bb7a 	b.w	800365c <_vfprintf_r+0x110c>
 8003f68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f6a:	9907      	ldr	r1, [sp, #28]
 8003f6c:	9803      	ldr	r0, [sp, #12]
 8003f6e:	f002 fe1d 	bl	8006bac <__sprint_r>
 8003f72:	2800      	cmp	r0, #0
 8003f74:	f47f a864 	bne.w	8003040 <_vfprintf_r+0xaf0>
 8003f78:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003f7c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f80:	f7ff bbbd 	b.w	80036fe <_vfprintf_r+0x11ae>
 8003f84:	9908      	ldr	r1, [sp, #32]
 8003f86:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003f8a:	680b      	ldr	r3, [r1, #0]
 8003f8c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003f90:	1d0b      	adds	r3, r1, #4
 8003f92:	4692      	mov	sl, r2
 8003f94:	9308      	str	r3, [sp, #32]
 8003f96:	f7fe bb59 	b.w	800264c <_vfprintf_r+0xfc>
 8003f9a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003f9e:	f7ff bb60 	b.w	8003662 <_vfprintf_r+0x1112>
 8003fa2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003fa6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003faa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003fae:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003fb2:	f7ff b84c 	b.w	800304e <_vfprintf_r+0xafe>
 8003fb6:	bf00      	nop
 8003fb8:	08007380 	.word	0x08007380
 8003fbc:	08007350 	.word	0x08007350
 8003fc0:	cccccccd 	.word	0xcccccccd
 8003fc4:	08007338 	.word	0x08007338
 8003fc8:	08007334 	.word	0x08007334

08003fcc <__sbprintf>:
 8003fcc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003fd0:	460c      	mov	r4, r1
 8003fd2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003fd6:	8989      	ldrh	r1, [r1, #12]
 8003fd8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003fda:	89e5      	ldrh	r5, [r4, #14]
 8003fdc:	9619      	str	r6, [sp, #100]	; 0x64
 8003fde:	f021 0102 	bic.w	r1, r1, #2
 8003fe2:	4606      	mov	r6, r0
 8003fe4:	69e0      	ldr	r0, [r4, #28]
 8003fe6:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003fea:	4617      	mov	r7, r2
 8003fec:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003ff0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003ff2:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003ff6:	4698      	mov	r8, r3
 8003ff8:	ad1a      	add	r5, sp, #104	; 0x68
 8003ffa:	2300      	movs	r3, #0
 8003ffc:	9007      	str	r0, [sp, #28]
 8003ffe:	a816      	add	r0, sp, #88	; 0x58
 8004000:	9209      	str	r2, [sp, #36]	; 0x24
 8004002:	9306      	str	r3, [sp, #24]
 8004004:	9500      	str	r5, [sp, #0]
 8004006:	9504      	str	r5, [sp, #16]
 8004008:	9102      	str	r1, [sp, #8]
 800400a:	9105      	str	r1, [sp, #20]
 800400c:	f001 fc8a 	bl	8005924 <__retarget_lock_init_recursive>
 8004010:	4643      	mov	r3, r8
 8004012:	463a      	mov	r2, r7
 8004014:	4669      	mov	r1, sp
 8004016:	4630      	mov	r0, r6
 8004018:	f7fe fa9a 	bl	8002550 <_vfprintf_r>
 800401c:	1e05      	subs	r5, r0, #0
 800401e:	db07      	blt.n	8004030 <__sbprintf+0x64>
 8004020:	4630      	mov	r0, r6
 8004022:	4669      	mov	r1, sp
 8004024:	f001 f8d6 	bl	80051d4 <_fflush_r>
 8004028:	2800      	cmp	r0, #0
 800402a:	bf18      	it	ne
 800402c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004030:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004034:	065b      	lsls	r3, r3, #25
 8004036:	d503      	bpl.n	8004040 <__sbprintf+0x74>
 8004038:	89a3      	ldrh	r3, [r4, #12]
 800403a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800403e:	81a3      	strh	r3, [r4, #12]
 8004040:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004042:	f001 fc71 	bl	8005928 <__retarget_lock_close_recursive>
 8004046:	4628      	mov	r0, r5
 8004048:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800404c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004050 <__swsetup_r>:
 8004050:	b538      	push	{r3, r4, r5, lr}
 8004052:	4b31      	ldr	r3, [pc, #196]	; (8004118 <__swsetup_r+0xc8>)
 8004054:	681b      	ldr	r3, [r3, #0]
 8004056:	4605      	mov	r5, r0
 8004058:	460c      	mov	r4, r1
 800405a:	b113      	cbz	r3, 8004062 <__swsetup_r+0x12>
 800405c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800405e:	2a00      	cmp	r2, #0
 8004060:	d03a      	beq.n	80040d8 <__swsetup_r+0x88>
 8004062:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004066:	b293      	uxth	r3, r2
 8004068:	0718      	lsls	r0, r3, #28
 800406a:	d50c      	bpl.n	8004086 <__swsetup_r+0x36>
 800406c:	6920      	ldr	r0, [r4, #16]
 800406e:	b1a8      	cbz	r0, 800409c <__swsetup_r+0x4c>
 8004070:	f013 0201 	ands.w	r2, r3, #1
 8004074:	d020      	beq.n	80040b8 <__swsetup_r+0x68>
 8004076:	6963      	ldr	r3, [r4, #20]
 8004078:	2200      	movs	r2, #0
 800407a:	425b      	negs	r3, r3
 800407c:	61a3      	str	r3, [r4, #24]
 800407e:	60a2      	str	r2, [r4, #8]
 8004080:	b300      	cbz	r0, 80040c4 <__swsetup_r+0x74>
 8004082:	2000      	movs	r0, #0
 8004084:	bd38      	pop	{r3, r4, r5, pc}
 8004086:	06d9      	lsls	r1, r3, #27
 8004088:	d53e      	bpl.n	8004108 <__swsetup_r+0xb8>
 800408a:	0758      	lsls	r0, r3, #29
 800408c:	d428      	bmi.n	80040e0 <__swsetup_r+0x90>
 800408e:	6920      	ldr	r0, [r4, #16]
 8004090:	f042 0308 	orr.w	r3, r2, #8
 8004094:	81a3      	strh	r3, [r4, #12]
 8004096:	b29b      	uxth	r3, r3
 8004098:	2800      	cmp	r0, #0
 800409a:	d1e9      	bne.n	8004070 <__swsetup_r+0x20>
 800409c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80040a0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80040a4:	d0e4      	beq.n	8004070 <__swsetup_r+0x20>
 80040a6:	4628      	mov	r0, r5
 80040a8:	4621      	mov	r1, r4
 80040aa:	f001 fc71 	bl	8005990 <__smakebuf_r>
 80040ae:	89a3      	ldrh	r3, [r4, #12]
 80040b0:	6920      	ldr	r0, [r4, #16]
 80040b2:	f013 0201 	ands.w	r2, r3, #1
 80040b6:	d1de      	bne.n	8004076 <__swsetup_r+0x26>
 80040b8:	0799      	lsls	r1, r3, #30
 80040ba:	bf58      	it	pl
 80040bc:	6962      	ldrpl	r2, [r4, #20]
 80040be:	60a2      	str	r2, [r4, #8]
 80040c0:	2800      	cmp	r0, #0
 80040c2:	d1de      	bne.n	8004082 <__swsetup_r+0x32>
 80040c4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80040c8:	061a      	lsls	r2, r3, #24
 80040ca:	d5db      	bpl.n	8004084 <__swsetup_r+0x34>
 80040cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80040d0:	81a3      	strh	r3, [r4, #12]
 80040d2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80040d6:	bd38      	pop	{r3, r4, r5, pc}
 80040d8:	4618      	mov	r0, r3
 80040da:	f001 f8d7 	bl	800528c <__sinit>
 80040de:	e7c0      	b.n	8004062 <__swsetup_r+0x12>
 80040e0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80040e2:	b151      	cbz	r1, 80040fa <__swsetup_r+0xaa>
 80040e4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80040e8:	4299      	cmp	r1, r3
 80040ea:	d004      	beq.n	80040f6 <__swsetup_r+0xa6>
 80040ec:	4628      	mov	r0, r5
 80040ee:	f001 f96f 	bl	80053d0 <_free_r>
 80040f2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80040f6:	2300      	movs	r3, #0
 80040f8:	6323      	str	r3, [r4, #48]	; 0x30
 80040fa:	2300      	movs	r3, #0
 80040fc:	6920      	ldr	r0, [r4, #16]
 80040fe:	6063      	str	r3, [r4, #4]
 8004100:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004104:	6020      	str	r0, [r4, #0]
 8004106:	e7c3      	b.n	8004090 <__swsetup_r+0x40>
 8004108:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800410c:	2309      	movs	r3, #9
 800410e:	602b      	str	r3, [r5, #0]
 8004110:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004114:	81a2      	strh	r2, [r4, #12]
 8004116:	bd38      	pop	{r3, r4, r5, pc}
 8004118:	20000018 	.word	0x20000018

0800411c <register_fini>:
 800411c:	4b02      	ldr	r3, [pc, #8]	; (8004128 <register_fini+0xc>)
 800411e:	b113      	cbz	r3, 8004126 <register_fini+0xa>
 8004120:	4802      	ldr	r0, [pc, #8]	; (800412c <register_fini+0x10>)
 8004122:	f000 b805 	b.w	8004130 <atexit>
 8004126:	4770      	bx	lr
 8004128:	00000000 	.word	0x00000000
 800412c:	080052fd 	.word	0x080052fd

08004130 <atexit>:
 8004130:	2300      	movs	r3, #0
 8004132:	4601      	mov	r1, r0
 8004134:	461a      	mov	r2, r3
 8004136:	4618      	mov	r0, r3
 8004138:	f002 bd58 	b.w	8006bec <__register_exitproc>

0800413c <quorem>:
 800413c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004140:	6903      	ldr	r3, [r0, #16]
 8004142:	690f      	ldr	r7, [r1, #16]
 8004144:	42bb      	cmp	r3, r7
 8004146:	b083      	sub	sp, #12
 8004148:	f2c0 8086 	blt.w	8004258 <quorem+0x11c>
 800414c:	3f01      	subs	r7, #1
 800414e:	f101 0914 	add.w	r9, r1, #20
 8004152:	f100 0a14 	add.w	sl, r0, #20
 8004156:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800415a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800415e:	00bc      	lsls	r4, r7, #2
 8004160:	3201      	adds	r2, #1
 8004162:	fbb3 f8f2 	udiv	r8, r3, r2
 8004166:	eb0a 0304 	add.w	r3, sl, r4
 800416a:	9400      	str	r4, [sp, #0]
 800416c:	eb09 0b04 	add.w	fp, r9, r4
 8004170:	9301      	str	r3, [sp, #4]
 8004172:	f1b8 0f00 	cmp.w	r8, #0
 8004176:	d038      	beq.n	80041ea <quorem+0xae>
 8004178:	2500      	movs	r5, #0
 800417a:	462e      	mov	r6, r5
 800417c:	46ce      	mov	lr, r9
 800417e:	46d4      	mov	ip, sl
 8004180:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004184:	f8dc 3000 	ldr.w	r3, [ip]
 8004188:	b2a2      	uxth	r2, r4
 800418a:	fb08 5502 	mla	r5, r8, r2, r5
 800418e:	0c22      	lsrs	r2, r4, #16
 8004190:	0c2c      	lsrs	r4, r5, #16
 8004192:	fb08 4202 	mla	r2, r8, r2, r4
 8004196:	b2ad      	uxth	r5, r5
 8004198:	1b75      	subs	r5, r6, r5
 800419a:	b296      	uxth	r6, r2
 800419c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80041a0:	fa15 f383 	uxtah	r3, r5, r3
 80041a4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80041a8:	b29b      	uxth	r3, r3
 80041aa:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80041ae:	45f3      	cmp	fp, lr
 80041b0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80041b4:	f84c 3b04 	str.w	r3, [ip], #4
 80041b8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80041bc:	d2e0      	bcs.n	8004180 <quorem+0x44>
 80041be:	9b00      	ldr	r3, [sp, #0]
 80041c0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80041c4:	b98b      	cbnz	r3, 80041ea <quorem+0xae>
 80041c6:	9a01      	ldr	r2, [sp, #4]
 80041c8:	1f13      	subs	r3, r2, #4
 80041ca:	459a      	cmp	sl, r3
 80041cc:	d20c      	bcs.n	80041e8 <quorem+0xac>
 80041ce:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80041d2:	b94b      	cbnz	r3, 80041e8 <quorem+0xac>
 80041d4:	f1a2 0308 	sub.w	r3, r2, #8
 80041d8:	e002      	b.n	80041e0 <quorem+0xa4>
 80041da:	681a      	ldr	r2, [r3, #0]
 80041dc:	3b04      	subs	r3, #4
 80041de:	b91a      	cbnz	r2, 80041e8 <quorem+0xac>
 80041e0:	459a      	cmp	sl, r3
 80041e2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80041e6:	d3f8      	bcc.n	80041da <quorem+0x9e>
 80041e8:	6107      	str	r7, [r0, #16]
 80041ea:	4604      	mov	r4, r0
 80041ec:	f002 f944 	bl	8006478 <__mcmp>
 80041f0:	2800      	cmp	r0, #0
 80041f2:	db2d      	blt.n	8004250 <quorem+0x114>
 80041f4:	f108 0801 	add.w	r8, r8, #1
 80041f8:	4655      	mov	r5, sl
 80041fa:	2300      	movs	r3, #0
 80041fc:	f859 1b04 	ldr.w	r1, [r9], #4
 8004200:	6828      	ldr	r0, [r5, #0]
 8004202:	b28a      	uxth	r2, r1
 8004204:	1a9a      	subs	r2, r3, r2
 8004206:	0c0b      	lsrs	r3, r1, #16
 8004208:	fa12 f280 	uxtah	r2, r2, r0
 800420c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004210:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004214:	b292      	uxth	r2, r2
 8004216:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800421a:	45cb      	cmp	fp, r9
 800421c:	f845 2b04 	str.w	r2, [r5], #4
 8004220:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004224:	d2ea      	bcs.n	80041fc <quorem+0xc0>
 8004226:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800422a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800422e:	b97a      	cbnz	r2, 8004250 <quorem+0x114>
 8004230:	1f1a      	subs	r2, r3, #4
 8004232:	4592      	cmp	sl, r2
 8004234:	d20b      	bcs.n	800424e <quorem+0x112>
 8004236:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800423a:	b942      	cbnz	r2, 800424e <quorem+0x112>
 800423c:	3b08      	subs	r3, #8
 800423e:	e002      	b.n	8004246 <quorem+0x10a>
 8004240:	681a      	ldr	r2, [r3, #0]
 8004242:	3b04      	subs	r3, #4
 8004244:	b91a      	cbnz	r2, 800424e <quorem+0x112>
 8004246:	459a      	cmp	sl, r3
 8004248:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800424c:	d3f8      	bcc.n	8004240 <quorem+0x104>
 800424e:	6127      	str	r7, [r4, #16]
 8004250:	4640      	mov	r0, r8
 8004252:	b003      	add	sp, #12
 8004254:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004258:	2000      	movs	r0, #0
 800425a:	b003      	add	sp, #12
 800425c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004260 <_dtoa_r>:
 8004260:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004264:	ec55 4b10 	vmov	r4, r5, d0
 8004268:	b09b      	sub	sp, #108	; 0x6c
 800426a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800426c:	9102      	str	r1, [sp, #8]
 800426e:	4681      	mov	r9, r0
 8004270:	9207      	str	r2, [sp, #28]
 8004272:	9305      	str	r3, [sp, #20]
 8004274:	e9cd 4500 	strd	r4, r5, [sp]
 8004278:	b156      	cbz	r6, 8004290 <_dtoa_r+0x30>
 800427a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800427c:	6072      	str	r2, [r6, #4]
 800427e:	2301      	movs	r3, #1
 8004280:	4093      	lsls	r3, r2
 8004282:	60b3      	str	r3, [r6, #8]
 8004284:	4631      	mov	r1, r6
 8004286:	f001 ff07 	bl	8006098 <_Bfree>
 800428a:	2300      	movs	r3, #0
 800428c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004290:	f1b5 0800 	subs.w	r8, r5, #0
 8004294:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004296:	bfb4      	ite	lt
 8004298:	2301      	movlt	r3, #1
 800429a:	2300      	movge	r3, #0
 800429c:	6013      	str	r3, [r2, #0]
 800429e:	4b76      	ldr	r3, [pc, #472]	; (8004478 <_dtoa_r+0x218>)
 80042a0:	bfbc      	itt	lt
 80042a2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80042a6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80042aa:	ea33 0308 	bics.w	r3, r3, r8
 80042ae:	f000 80a6 	beq.w	80043fe <_dtoa_r+0x19e>
 80042b2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80042b6:	2200      	movs	r2, #0
 80042b8:	2300      	movs	r3, #0
 80042ba:	4630      	mov	r0, r6
 80042bc:	4639      	mov	r1, r7
 80042be:	f7fc fea3 	bl	8001008 <__aeabi_dcmpeq>
 80042c2:	4605      	mov	r5, r0
 80042c4:	b178      	cbz	r0, 80042e6 <_dtoa_r+0x86>
 80042c6:	9a05      	ldr	r2, [sp, #20]
 80042c8:	2301      	movs	r3, #1
 80042ca:	6013      	str	r3, [r2, #0]
 80042cc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80042ce:	2b00      	cmp	r3, #0
 80042d0:	f000 80c0 	beq.w	8004454 <_dtoa_r+0x1f4>
 80042d4:	4b69      	ldr	r3, [pc, #420]	; (800447c <_dtoa_r+0x21c>)
 80042d6:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80042d8:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80042dc:	6013      	str	r3, [r2, #0]
 80042de:	4658      	mov	r0, fp
 80042e0:	b01b      	add	sp, #108	; 0x6c
 80042e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042e6:	aa18      	add	r2, sp, #96	; 0x60
 80042e8:	a919      	add	r1, sp, #100	; 0x64
 80042ea:	ec47 6b10 	vmov	d0, r6, r7
 80042ee:	4648      	mov	r0, r9
 80042f0:	f002 f954 	bl	800659c <__d2b>
 80042f4:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80042f8:	4682      	mov	sl, r0
 80042fa:	f040 80a0 	bne.w	800443e <_dtoa_r+0x1de>
 80042fe:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004302:	442c      	add	r4, r5
 8004304:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004308:	2b20      	cmp	r3, #32
 800430a:	f340 842c 	ble.w	8004b66 <_dtoa_r+0x906>
 800430e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004312:	fa08 f803 	lsl.w	r8, r8, r3
 8004316:	9b00      	ldr	r3, [sp, #0]
 8004318:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800431c:	fa23 f000 	lsr.w	r0, r3, r0
 8004320:	ea48 0000 	orr.w	r0, r8, r0
 8004324:	f7fc fb8e 	bl	8000a44 <__aeabi_ui2d>
 8004328:	2301      	movs	r3, #1
 800432a:	4606      	mov	r6, r0
 800432c:	3c01      	subs	r4, #1
 800432e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004332:	930f      	str	r3, [sp, #60]	; 0x3c
 8004334:	4630      	mov	r0, r6
 8004336:	4639      	mov	r1, r7
 8004338:	2200      	movs	r2, #0
 800433a:	4b51      	ldr	r3, [pc, #324]	; (8004480 <_dtoa_r+0x220>)
 800433c:	f7fc fa44 	bl	80007c8 <__aeabi_dsub>
 8004340:	a347      	add	r3, pc, #284	; (adr r3, 8004460 <_dtoa_r+0x200>)
 8004342:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004346:	f7fc fbf7 	bl	8000b38 <__aeabi_dmul>
 800434a:	a347      	add	r3, pc, #284	; (adr r3, 8004468 <_dtoa_r+0x208>)
 800434c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004350:	f7fc fa3c 	bl	80007cc <__adddf3>
 8004354:	4606      	mov	r6, r0
 8004356:	4620      	mov	r0, r4
 8004358:	460f      	mov	r7, r1
 800435a:	f7fc fb83 	bl	8000a64 <__aeabi_i2d>
 800435e:	a344      	add	r3, pc, #272	; (adr r3, 8004470 <_dtoa_r+0x210>)
 8004360:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004364:	f7fc fbe8 	bl	8000b38 <__aeabi_dmul>
 8004368:	4602      	mov	r2, r0
 800436a:	460b      	mov	r3, r1
 800436c:	4630      	mov	r0, r6
 800436e:	4639      	mov	r1, r7
 8004370:	f7fc fa2c 	bl	80007cc <__adddf3>
 8004374:	4606      	mov	r6, r0
 8004376:	460f      	mov	r7, r1
 8004378:	f7fc fe8e 	bl	8001098 <__aeabi_d2iz>
 800437c:	2200      	movs	r2, #0
 800437e:	9006      	str	r0, [sp, #24]
 8004380:	2300      	movs	r3, #0
 8004382:	4630      	mov	r0, r6
 8004384:	4639      	mov	r1, r7
 8004386:	f7fc fe49 	bl	800101c <__aeabi_dcmplt>
 800438a:	2800      	cmp	r0, #0
 800438c:	f040 8273 	bne.w	8004876 <_dtoa_r+0x616>
 8004390:	9e06      	ldr	r6, [sp, #24]
 8004392:	2e16      	cmp	r6, #22
 8004394:	f200 825d 	bhi.w	8004852 <_dtoa_r+0x5f2>
 8004398:	4b3a      	ldr	r3, [pc, #232]	; (8004484 <_dtoa_r+0x224>)
 800439a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800439e:	e9d3 0100 	ldrd	r0, r1, [r3]
 80043a2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80043a6:	f7fc fe57 	bl	8001058 <__aeabi_dcmpgt>
 80043aa:	2800      	cmp	r0, #0
 80043ac:	f000 83d7 	beq.w	8004b5e <_dtoa_r+0x8fe>
 80043b0:	1e73      	subs	r3, r6, #1
 80043b2:	9306      	str	r3, [sp, #24]
 80043b4:	2300      	movs	r3, #0
 80043b6:	930d      	str	r3, [sp, #52]	; 0x34
 80043b8:	1b2c      	subs	r4, r5, r4
 80043ba:	f1b4 0801 	subs.w	r8, r4, #1
 80043be:	f100 8254 	bmi.w	800486a <_dtoa_r+0x60a>
 80043c2:	2300      	movs	r3, #0
 80043c4:	9308      	str	r3, [sp, #32]
 80043c6:	9b06      	ldr	r3, [sp, #24]
 80043c8:	2b00      	cmp	r3, #0
 80043ca:	f2c0 8245 	blt.w	8004858 <_dtoa_r+0x5f8>
 80043ce:	4498      	add	r8, r3
 80043d0:	930c      	str	r3, [sp, #48]	; 0x30
 80043d2:	2300      	movs	r3, #0
 80043d4:	930b      	str	r3, [sp, #44]	; 0x2c
 80043d6:	9b02      	ldr	r3, [sp, #8]
 80043d8:	2b09      	cmp	r3, #9
 80043da:	d85b      	bhi.n	8004494 <_dtoa_r+0x234>
 80043dc:	2b05      	cmp	r3, #5
 80043de:	f340 83c0 	ble.w	8004b62 <_dtoa_r+0x902>
 80043e2:	3b04      	subs	r3, #4
 80043e4:	9302      	str	r3, [sp, #8]
 80043e6:	2500      	movs	r5, #0
 80043e8:	9b02      	ldr	r3, [sp, #8]
 80043ea:	3b02      	subs	r3, #2
 80043ec:	2b03      	cmp	r3, #3
 80043ee:	f200 8498 	bhi.w	8004d22 <_dtoa_r+0xac2>
 80043f2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80043f6:	03df      	.short	0x03df
 80043f8:	03e803bf 	.word	0x03e803bf
 80043fc:	04f5      	.short	0x04f5
 80043fe:	9a05      	ldr	r2, [sp, #20]
 8004400:	f242 730f 	movw	r3, #9999	; 0x270f
 8004404:	6013      	str	r3, [r2, #0]
 8004406:	9b00      	ldr	r3, [sp, #0]
 8004408:	b983      	cbnz	r3, 800442c <_dtoa_r+0x1cc>
 800440a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800440e:	b96b      	cbnz	r3, 800442c <_dtoa_r+0x1cc>
 8004410:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004412:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004488 <_dtoa_r+0x228>
 8004416:	2b00      	cmp	r3, #0
 8004418:	f43f af61 	beq.w	80042de <_dtoa_r+0x7e>
 800441c:	f10b 0308 	add.w	r3, fp, #8
 8004420:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004422:	4658      	mov	r0, fp
 8004424:	6013      	str	r3, [r2, #0]
 8004426:	b01b      	add	sp, #108	; 0x6c
 8004428:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800442c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800442e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800448c <_dtoa_r+0x22c>
 8004432:	2b00      	cmp	r3, #0
 8004434:	f43f af53 	beq.w	80042de <_dtoa_r+0x7e>
 8004438:	f10b 0303 	add.w	r3, fp, #3
 800443c:	e7f0      	b.n	8004420 <_dtoa_r+0x1c0>
 800443e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004442:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004446:	950f      	str	r5, [sp, #60]	; 0x3c
 8004448:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800444c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004450:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004452:	e76f      	b.n	8004334 <_dtoa_r+0xd4>
 8004454:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004490 <_dtoa_r+0x230>
 8004458:	4658      	mov	r0, fp
 800445a:	b01b      	add	sp, #108	; 0x6c
 800445c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004460:	636f4361 	.word	0x636f4361
 8004464:	3fd287a7 	.word	0x3fd287a7
 8004468:	8b60c8b3 	.word	0x8b60c8b3
 800446c:	3fc68a28 	.word	0x3fc68a28
 8004470:	509f79fb 	.word	0x509f79fb
 8004474:	3fd34413 	.word	0x3fd34413
 8004478:	7ff00000 	.word	0x7ff00000
 800447c:	0800736d 	.word	0x0800736d
 8004480:	3ff80000 	.word	0x3ff80000
 8004484:	080073c8 	.word	0x080073c8
 8004488:	08007390 	.word	0x08007390
 800448c:	0800739c 	.word	0x0800739c
 8004490:	0800736c 	.word	0x0800736c
 8004494:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004498:	2501      	movs	r5, #1
 800449a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800449e:	2300      	movs	r3, #0
 80044a0:	9302      	str	r3, [sp, #8]
 80044a2:	9307      	str	r3, [sp, #28]
 80044a4:	2100      	movs	r1, #0
 80044a6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80044aa:	940e      	str	r4, [sp, #56]	; 0x38
 80044ac:	4648      	mov	r0, r9
 80044ae:	f001 fdcd 	bl	800604c <_Balloc>
 80044b2:	2c0e      	cmp	r4, #14
 80044b4:	4683      	mov	fp, r0
 80044b6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80044ba:	f200 80fb 	bhi.w	80046b4 <_dtoa_r+0x454>
 80044be:	2d00      	cmp	r5, #0
 80044c0:	f000 80f8 	beq.w	80046b4 <_dtoa_r+0x454>
 80044c4:	ed9d 7b00 	vldr	d7, [sp]
 80044c8:	9906      	ldr	r1, [sp, #24]
 80044ca:	2900      	cmp	r1, #0
 80044cc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80044d0:	f340 83e5 	ble.w	8004c9e <_dtoa_r+0xa3e>
 80044d4:	4b9d      	ldr	r3, [pc, #628]	; (800474c <_dtoa_r+0x4ec>)
 80044d6:	f001 020f 	and.w	r2, r1, #15
 80044da:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044de:	ed93 7b00 	vldr	d7, [r3]
 80044e2:	110c      	asrs	r4, r1, #4
 80044e4:	06e2      	lsls	r2, r4, #27
 80044e6:	ed8d 7b00 	vstr	d7, [sp]
 80044ea:	f140 849e 	bpl.w	8004e2a <_dtoa_r+0xbca>
 80044ee:	4b98      	ldr	r3, [pc, #608]	; (8004750 <_dtoa_r+0x4f0>)
 80044f0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80044f4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80044f8:	f7fc fc48 	bl	8000d8c <__aeabi_ddiv>
 80044fc:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004500:	f004 040f 	and.w	r4, r4, #15
 8004504:	2603      	movs	r6, #3
 8004506:	b17c      	cbz	r4, 8004528 <_dtoa_r+0x2c8>
 8004508:	e9dd 0100 	ldrd	r0, r1, [sp]
 800450c:	4d90      	ldr	r5, [pc, #576]	; (8004750 <_dtoa_r+0x4f0>)
 800450e:	07e3      	lsls	r3, r4, #31
 8004510:	d504      	bpl.n	800451c <_dtoa_r+0x2bc>
 8004512:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004516:	f7fc fb0f 	bl	8000b38 <__aeabi_dmul>
 800451a:	3601      	adds	r6, #1
 800451c:	1064      	asrs	r4, r4, #1
 800451e:	f105 0508 	add.w	r5, r5, #8
 8004522:	d1f4      	bne.n	800450e <_dtoa_r+0x2ae>
 8004524:	e9cd 0100 	strd	r0, r1, [sp]
 8004528:	e9dd 2300 	ldrd	r2, r3, [sp]
 800452c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004530:	f7fc fc2c 	bl	8000d8c <__aeabi_ddiv>
 8004534:	e9cd 0100 	strd	r0, r1, [sp]
 8004538:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800453a:	b143      	cbz	r3, 800454e <_dtoa_r+0x2ee>
 800453c:	2200      	movs	r2, #0
 800453e:	4b85      	ldr	r3, [pc, #532]	; (8004754 <_dtoa_r+0x4f4>)
 8004540:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004544:	f7fc fd6a 	bl	800101c <__aeabi_dcmplt>
 8004548:	2800      	cmp	r0, #0
 800454a:	f040 84ff 	bne.w	8004f4c <_dtoa_r+0xcec>
 800454e:	4630      	mov	r0, r6
 8004550:	f7fc fa88 	bl	8000a64 <__aeabi_i2d>
 8004554:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004558:	f7fc faee 	bl	8000b38 <__aeabi_dmul>
 800455c:	4b7e      	ldr	r3, [pc, #504]	; (8004758 <_dtoa_r+0x4f8>)
 800455e:	2200      	movs	r2, #0
 8004560:	f7fc f934 	bl	80007cc <__adddf3>
 8004564:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004566:	4606      	mov	r6, r0
 8004568:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800456c:	2b00      	cmp	r3, #0
 800456e:	f000 841c 	beq.w	8004daa <_dtoa_r+0xb4a>
 8004572:	9b06      	ldr	r3, [sp, #24]
 8004574:	9316      	str	r3, [sp, #88]	; 0x58
 8004576:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004578:	9312      	str	r3, [sp, #72]	; 0x48
 800457a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800457e:	f7fc fd8b 	bl	8001098 <__aeabi_d2iz>
 8004582:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004584:	4b71      	ldr	r3, [pc, #452]	; (800474c <_dtoa_r+0x4ec>)
 8004586:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800458a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800458e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004592:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004596:	f7fc fa65 	bl	8000a64 <__aeabi_i2d>
 800459a:	460b      	mov	r3, r1
 800459c:	4602      	mov	r2, r0
 800459e:	e9dd 0100 	ldrd	r0, r1, [sp]
 80045a2:	e9cd 6700 	strd	r6, r7, [sp]
 80045a6:	f7fc f90f 	bl	80007c8 <__aeabi_dsub>
 80045aa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80045ac:	b2ed      	uxtb	r5, r5
 80045ae:	4606      	mov	r6, r0
 80045b0:	460f      	mov	r7, r1
 80045b2:	f10b 0401 	add.w	r4, fp, #1
 80045b6:	2b00      	cmp	r3, #0
 80045b8:	f000 8458 	beq.w	8004e6c <_dtoa_r+0xc0c>
 80045bc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80045c0:	2000      	movs	r0, #0
 80045c2:	4966      	ldr	r1, [pc, #408]	; (800475c <_dtoa_r+0x4fc>)
 80045c4:	f7fc fbe2 	bl	8000d8c <__aeabi_ddiv>
 80045c8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045cc:	f7fc f8fc 	bl	80007c8 <__aeabi_dsub>
 80045d0:	f88b 5000 	strb.w	r5, [fp]
 80045d4:	4632      	mov	r2, r6
 80045d6:	463b      	mov	r3, r7
 80045d8:	e9cd 0100 	strd	r0, r1, [sp]
 80045dc:	f7fc fd3c 	bl	8001058 <__aeabi_dcmpgt>
 80045e0:	2800      	cmp	r0, #0
 80045e2:	f040 8502 	bne.w	8004fea <_dtoa_r+0xd8a>
 80045e6:	4632      	mov	r2, r6
 80045e8:	463b      	mov	r3, r7
 80045ea:	2000      	movs	r0, #0
 80045ec:	4959      	ldr	r1, [pc, #356]	; (8004754 <_dtoa_r+0x4f4>)
 80045ee:	f7fc f8eb 	bl	80007c8 <__aeabi_dsub>
 80045f2:	4602      	mov	r2, r0
 80045f4:	460b      	mov	r3, r1
 80045f6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80045fa:	f7fc fd2d 	bl	8001058 <__aeabi_dcmpgt>
 80045fe:	2800      	cmp	r0, #0
 8004600:	f040 84fb 	bne.w	8004ffa <_dtoa_r+0xd9a>
 8004604:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004606:	2a01      	cmp	r2, #1
 8004608:	d050      	beq.n	80046ac <_dtoa_r+0x44c>
 800460a:	445a      	add	r2, fp
 800460c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004610:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004614:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004618:	4692      	mov	sl, r2
 800461a:	46cb      	mov	fp, r9
 800461c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004620:	e00c      	b.n	800463c <_dtoa_r+0x3dc>
 8004622:	2000      	movs	r0, #0
 8004624:	494b      	ldr	r1, [pc, #300]	; (8004754 <_dtoa_r+0x4f4>)
 8004626:	f7fc f8cf 	bl	80007c8 <__aeabi_dsub>
 800462a:	4642      	mov	r2, r8
 800462c:	464b      	mov	r3, r9
 800462e:	f7fc fcf5 	bl	800101c <__aeabi_dcmplt>
 8004632:	2800      	cmp	r0, #0
 8004634:	f040 84dc 	bne.w	8004ff0 <_dtoa_r+0xd90>
 8004638:	4554      	cmp	r4, sl
 800463a:	d030      	beq.n	800469e <_dtoa_r+0x43e>
 800463c:	4640      	mov	r0, r8
 800463e:	4649      	mov	r1, r9
 8004640:	2200      	movs	r2, #0
 8004642:	4b47      	ldr	r3, [pc, #284]	; (8004760 <_dtoa_r+0x500>)
 8004644:	f7fc fa78 	bl	8000b38 <__aeabi_dmul>
 8004648:	2200      	movs	r2, #0
 800464a:	4b45      	ldr	r3, [pc, #276]	; (8004760 <_dtoa_r+0x500>)
 800464c:	4680      	mov	r8, r0
 800464e:	4689      	mov	r9, r1
 8004650:	4630      	mov	r0, r6
 8004652:	4639      	mov	r1, r7
 8004654:	f7fc fa70 	bl	8000b38 <__aeabi_dmul>
 8004658:	460f      	mov	r7, r1
 800465a:	4606      	mov	r6, r0
 800465c:	f7fc fd1c 	bl	8001098 <__aeabi_d2iz>
 8004660:	4605      	mov	r5, r0
 8004662:	f7fc f9ff 	bl	8000a64 <__aeabi_i2d>
 8004666:	4602      	mov	r2, r0
 8004668:	460b      	mov	r3, r1
 800466a:	4630      	mov	r0, r6
 800466c:	4639      	mov	r1, r7
 800466e:	f7fc f8ab 	bl	80007c8 <__aeabi_dsub>
 8004672:	3530      	adds	r5, #48	; 0x30
 8004674:	b2ed      	uxtb	r5, r5
 8004676:	4642      	mov	r2, r8
 8004678:	464b      	mov	r3, r9
 800467a:	f804 5b01 	strb.w	r5, [r4], #1
 800467e:	4606      	mov	r6, r0
 8004680:	460f      	mov	r7, r1
 8004682:	f7fc fccb 	bl	800101c <__aeabi_dcmplt>
 8004686:	4632      	mov	r2, r6
 8004688:	463b      	mov	r3, r7
 800468a:	2800      	cmp	r0, #0
 800468c:	d0c9      	beq.n	8004622 <_dtoa_r+0x3c2>
 800468e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004690:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004694:	9306      	str	r3, [sp, #24]
 8004696:	46d9      	mov	r9, fp
 8004698:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800469c:	e236      	b.n	8004b0c <_dtoa_r+0x8ac>
 800469e:	46d9      	mov	r9, fp
 80046a0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80046a4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80046a8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80046ac:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80046b0:	e9cd 3400 	strd	r3, r4, [sp]
 80046b4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80046b6:	2b00      	cmp	r3, #0
 80046b8:	f2c0 80ae 	blt.w	8004818 <_dtoa_r+0x5b8>
 80046bc:	9a06      	ldr	r2, [sp, #24]
 80046be:	2a0e      	cmp	r2, #14
 80046c0:	f300 80aa 	bgt.w	8004818 <_dtoa_r+0x5b8>
 80046c4:	4b21      	ldr	r3, [pc, #132]	; (800474c <_dtoa_r+0x4ec>)
 80046c6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80046ca:	ed93 7b00 	vldr	d7, [r3]
 80046ce:	9b07      	ldr	r3, [sp, #28]
 80046d0:	2b00      	cmp	r3, #0
 80046d2:	ed8d 7b02 	vstr	d7, [sp, #8]
 80046d6:	f2c0 82be 	blt.w	8004c56 <_dtoa_r+0x9f6>
 80046da:	e9dd 6700 	ldrd	r6, r7, [sp]
 80046de:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046e2:	4630      	mov	r0, r6
 80046e4:	4639      	mov	r1, r7
 80046e6:	f7fc fb51 	bl	8000d8c <__aeabi_ddiv>
 80046ea:	f7fc fcd5 	bl	8001098 <__aeabi_d2iz>
 80046ee:	4605      	mov	r5, r0
 80046f0:	f7fc f9b8 	bl	8000a64 <__aeabi_i2d>
 80046f4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046f8:	f7fc fa1e 	bl	8000b38 <__aeabi_dmul>
 80046fc:	460b      	mov	r3, r1
 80046fe:	4602      	mov	r2, r0
 8004700:	4639      	mov	r1, r7
 8004702:	4630      	mov	r0, r6
 8004704:	f7fc f860 	bl	80007c8 <__aeabi_dsub>
 8004708:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800470c:	f88b 3000 	strb.w	r3, [fp]
 8004710:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004712:	2b01      	cmp	r3, #1
 8004714:	4606      	mov	r6, r0
 8004716:	460f      	mov	r7, r1
 8004718:	f10b 0401 	add.w	r4, fp, #1
 800471c:	d053      	beq.n	80047c6 <_dtoa_r+0x566>
 800471e:	2200      	movs	r2, #0
 8004720:	4b0f      	ldr	r3, [pc, #60]	; (8004760 <_dtoa_r+0x500>)
 8004722:	f7fc fa09 	bl	8000b38 <__aeabi_dmul>
 8004726:	2200      	movs	r2, #0
 8004728:	2300      	movs	r3, #0
 800472a:	4606      	mov	r6, r0
 800472c:	460f      	mov	r7, r1
 800472e:	f7fc fc6b 	bl	8001008 <__aeabi_dcmpeq>
 8004732:	2800      	cmp	r0, #0
 8004734:	f040 81ea 	bne.w	8004b0c <_dtoa_r+0x8ac>
 8004738:	f8cd a000 	str.w	sl, [sp]
 800473c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004740:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004744:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004748:	e017      	b.n	800477a <_dtoa_r+0x51a>
 800474a:	bf00      	nop
 800474c:	080073c8 	.word	0x080073c8
 8004750:	080073a0 	.word	0x080073a0
 8004754:	3ff00000 	.word	0x3ff00000
 8004758:	401c0000 	.word	0x401c0000
 800475c:	3fe00000 	.word	0x3fe00000
 8004760:	40240000 	.word	0x40240000
 8004764:	f7fc f9e8 	bl	8000b38 <__aeabi_dmul>
 8004768:	2200      	movs	r2, #0
 800476a:	2300      	movs	r3, #0
 800476c:	4606      	mov	r6, r0
 800476e:	460f      	mov	r7, r1
 8004770:	f7fc fc4a 	bl	8001008 <__aeabi_dcmpeq>
 8004774:	2800      	cmp	r0, #0
 8004776:	f040 833d 	bne.w	8004df4 <_dtoa_r+0xb94>
 800477a:	464a      	mov	r2, r9
 800477c:	4653      	mov	r3, sl
 800477e:	4630      	mov	r0, r6
 8004780:	4639      	mov	r1, r7
 8004782:	f7fc fb03 	bl	8000d8c <__aeabi_ddiv>
 8004786:	f7fc fc87 	bl	8001098 <__aeabi_d2iz>
 800478a:	4605      	mov	r5, r0
 800478c:	f7fc f96a 	bl	8000a64 <__aeabi_i2d>
 8004790:	464a      	mov	r2, r9
 8004792:	4653      	mov	r3, sl
 8004794:	f7fc f9d0 	bl	8000b38 <__aeabi_dmul>
 8004798:	4602      	mov	r2, r0
 800479a:	460b      	mov	r3, r1
 800479c:	4630      	mov	r0, r6
 800479e:	4639      	mov	r1, r7
 80047a0:	f7fc f812 	bl	80007c8 <__aeabi_dsub>
 80047a4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80047a8:	f804 cb01 	strb.w	ip, [r4], #1
 80047ac:	eba4 0c0b 	sub.w	ip, r4, fp
 80047b0:	45e0      	cmp	r8, ip
 80047b2:	4606      	mov	r6, r0
 80047b4:	460f      	mov	r7, r1
 80047b6:	f04f 0200 	mov.w	r2, #0
 80047ba:	4bc1      	ldr	r3, [pc, #772]	; (8004ac0 <_dtoa_r+0x860>)
 80047bc:	d1d2      	bne.n	8004764 <_dtoa_r+0x504>
 80047be:	f8dd a000 	ldr.w	sl, [sp]
 80047c2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80047c6:	4632      	mov	r2, r6
 80047c8:	463b      	mov	r3, r7
 80047ca:	4630      	mov	r0, r6
 80047cc:	4639      	mov	r1, r7
 80047ce:	f7fb fffd 	bl	80007cc <__adddf3>
 80047d2:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047d6:	4606      	mov	r6, r0
 80047d8:	460f      	mov	r7, r1
 80047da:	f7fc fc3d 	bl	8001058 <__aeabi_dcmpgt>
 80047de:	b958      	cbnz	r0, 80047f8 <_dtoa_r+0x598>
 80047e0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047e4:	4630      	mov	r0, r6
 80047e6:	4639      	mov	r1, r7
 80047e8:	f7fc fc0e 	bl	8001008 <__aeabi_dcmpeq>
 80047ec:	2800      	cmp	r0, #0
 80047ee:	f000 818d 	beq.w	8004b0c <_dtoa_r+0x8ac>
 80047f2:	07e9      	lsls	r1, r5, #31
 80047f4:	f140 818a 	bpl.w	8004b0c <_dtoa_r+0x8ac>
 80047f8:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80047fc:	e005      	b.n	800480a <_dtoa_r+0x5aa>
 80047fe:	459b      	cmp	fp, r3
 8004800:	f000 8373 	beq.w	8004eea <_dtoa_r+0xc8a>
 8004804:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004808:	461c      	mov	r4, r3
 800480a:	2d39      	cmp	r5, #57	; 0x39
 800480c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004810:	d0f5      	beq.n	80047fe <_dtoa_r+0x59e>
 8004812:	3501      	adds	r5, #1
 8004814:	701d      	strb	r5, [r3, #0]
 8004816:	e179      	b.n	8004b0c <_dtoa_r+0x8ac>
 8004818:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800481a:	2a00      	cmp	r2, #0
 800481c:	d03b      	beq.n	8004896 <_dtoa_r+0x636>
 800481e:	9a02      	ldr	r2, [sp, #8]
 8004820:	2a01      	cmp	r2, #1
 8004822:	f340 820b 	ble.w	8004c3c <_dtoa_r+0x9dc>
 8004826:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004828:	1e5f      	subs	r7, r3, #1
 800482a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800482c:	42bb      	cmp	r3, r7
 800482e:	f2c0 82e6 	blt.w	8004dfe <_dtoa_r+0xb9e>
 8004832:	1bdf      	subs	r7, r3, r7
 8004834:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004836:	2b00      	cmp	r3, #0
 8004838:	f2c0 830b 	blt.w	8004e52 <_dtoa_r+0xbf2>
 800483c:	9a08      	ldr	r2, [sp, #32]
 800483e:	4614      	mov	r4, r2
 8004840:	441a      	add	r2, r3
 8004842:	4498      	add	r8, r3
 8004844:	9208      	str	r2, [sp, #32]
 8004846:	2101      	movs	r1, #1
 8004848:	4648      	mov	r0, r9
 800484a:	f001 fcbf 	bl	80061cc <__i2b>
 800484e:	4605      	mov	r5, r0
 8004850:	e024      	b.n	800489c <_dtoa_r+0x63c>
 8004852:	2301      	movs	r3, #1
 8004854:	930d      	str	r3, [sp, #52]	; 0x34
 8004856:	e5af      	b.n	80043b8 <_dtoa_r+0x158>
 8004858:	9a08      	ldr	r2, [sp, #32]
 800485a:	9b06      	ldr	r3, [sp, #24]
 800485c:	1ad2      	subs	r2, r2, r3
 800485e:	425b      	negs	r3, r3
 8004860:	930b      	str	r3, [sp, #44]	; 0x2c
 8004862:	2300      	movs	r3, #0
 8004864:	9208      	str	r2, [sp, #32]
 8004866:	930c      	str	r3, [sp, #48]	; 0x30
 8004868:	e5b5      	b.n	80043d6 <_dtoa_r+0x176>
 800486a:	f1c4 0301 	rsb	r3, r4, #1
 800486e:	9308      	str	r3, [sp, #32]
 8004870:	f04f 0800 	mov.w	r8, #0
 8004874:	e5a7      	b.n	80043c6 <_dtoa_r+0x166>
 8004876:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800487a:	4640      	mov	r0, r8
 800487c:	f7fc f8f2 	bl	8000a64 <__aeabi_i2d>
 8004880:	4632      	mov	r2, r6
 8004882:	463b      	mov	r3, r7
 8004884:	f7fc fbc0 	bl	8001008 <__aeabi_dcmpeq>
 8004888:	2800      	cmp	r0, #0
 800488a:	f47f ad81 	bne.w	8004390 <_dtoa_r+0x130>
 800488e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004892:	9306      	str	r3, [sp, #24]
 8004894:	e57c      	b.n	8004390 <_dtoa_r+0x130>
 8004896:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004898:	9c08      	ldr	r4, [sp, #32]
 800489a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800489c:	2c00      	cmp	r4, #0
 800489e:	dd0c      	ble.n	80048ba <_dtoa_r+0x65a>
 80048a0:	f1b8 0f00 	cmp.w	r8, #0
 80048a4:	dd09      	ble.n	80048ba <_dtoa_r+0x65a>
 80048a6:	4544      	cmp	r4, r8
 80048a8:	9a08      	ldr	r2, [sp, #32]
 80048aa:	4623      	mov	r3, r4
 80048ac:	bfa8      	it	ge
 80048ae:	4643      	movge	r3, r8
 80048b0:	1ad2      	subs	r2, r2, r3
 80048b2:	9208      	str	r2, [sp, #32]
 80048b4:	1ae4      	subs	r4, r4, r3
 80048b6:	eba8 0803 	sub.w	r8, r8, r3
 80048ba:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80048bc:	b16b      	cbz	r3, 80048da <_dtoa_r+0x67a>
 80048be:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80048c0:	2a00      	cmp	r2, #0
 80048c2:	f000 8290 	beq.w	8004de6 <_dtoa_r+0xb86>
 80048c6:	1bde      	subs	r6, r3, r7
 80048c8:	2f00      	cmp	r7, #0
 80048ca:	f040 819b 	bne.w	8004c04 <_dtoa_r+0x9a4>
 80048ce:	4651      	mov	r1, sl
 80048d0:	4632      	mov	r2, r6
 80048d2:	4648      	mov	r0, r9
 80048d4:	f001 fd2a 	bl	800632c <__pow5mult>
 80048d8:	4682      	mov	sl, r0
 80048da:	2101      	movs	r1, #1
 80048dc:	4648      	mov	r0, r9
 80048de:	f001 fc75 	bl	80061cc <__i2b>
 80048e2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80048e4:	4606      	mov	r6, r0
 80048e6:	2a00      	cmp	r2, #0
 80048e8:	f040 8125 	bne.w	8004b36 <_dtoa_r+0x8d6>
 80048ec:	9b02      	ldr	r3, [sp, #8]
 80048ee:	2b01      	cmp	r3, #1
 80048f0:	f340 816c 	ble.w	8004bcc <_dtoa_r+0x96c>
 80048f4:	2001      	movs	r0, #1
 80048f6:	4440      	add	r0, r8
 80048f8:	f010 001f 	ands.w	r0, r0, #31
 80048fc:	f000 8119 	beq.w	8004b32 <_dtoa_r+0x8d2>
 8004900:	f1c0 0320 	rsb	r3, r0, #32
 8004904:	2b04      	cmp	r3, #4
 8004906:	f340 83ac 	ble.w	8005062 <_dtoa_r+0xe02>
 800490a:	f1c0 001c 	rsb	r0, r0, #28
 800490e:	9b08      	ldr	r3, [sp, #32]
 8004910:	4403      	add	r3, r0
 8004912:	9308      	str	r3, [sp, #32]
 8004914:	4404      	add	r4, r0
 8004916:	4480      	add	r8, r0
 8004918:	9b08      	ldr	r3, [sp, #32]
 800491a:	2b00      	cmp	r3, #0
 800491c:	dd05      	ble.n	800492a <_dtoa_r+0x6ca>
 800491e:	4651      	mov	r1, sl
 8004920:	461a      	mov	r2, r3
 8004922:	4648      	mov	r0, r9
 8004924:	f001 fd52 	bl	80063cc <__lshift>
 8004928:	4682      	mov	sl, r0
 800492a:	f1b8 0f00 	cmp.w	r8, #0
 800492e:	dd05      	ble.n	800493c <_dtoa_r+0x6dc>
 8004930:	4631      	mov	r1, r6
 8004932:	4642      	mov	r2, r8
 8004934:	4648      	mov	r0, r9
 8004936:	f001 fd49 	bl	80063cc <__lshift>
 800493a:	4606      	mov	r6, r0
 800493c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800493e:	2b00      	cmp	r3, #0
 8004940:	d177      	bne.n	8004a32 <_dtoa_r+0x7d2>
 8004942:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004944:	2b00      	cmp	r3, #0
 8004946:	f340 8209 	ble.w	8004d5c <_dtoa_r+0xafc>
 800494a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800494c:	2b00      	cmp	r3, #0
 800494e:	f000 8089 	beq.w	8004a64 <_dtoa_r+0x804>
 8004952:	2c00      	cmp	r4, #0
 8004954:	f300 816b 	bgt.w	8004c2e <_dtoa_r+0x9ce>
 8004958:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800495a:	2b00      	cmp	r3, #0
 800495c:	f040 81cd 	bne.w	8004cfa <_dtoa_r+0xa9a>
 8004960:	46a8      	mov	r8, r5
 8004962:	9a00      	ldr	r2, [sp, #0]
 8004964:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004968:	f002 0201 	and.w	r2, r2, #1
 800496c:	920a      	str	r2, [sp, #40]	; 0x28
 800496e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004970:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004974:	441a      	add	r2, r3
 8004976:	465f      	mov	r7, fp
 8004978:	9209      	str	r2, [sp, #36]	; 0x24
 800497a:	46b3      	mov	fp, r6
 800497c:	4659      	mov	r1, fp
 800497e:	4650      	mov	r0, sl
 8004980:	f7ff fbdc 	bl	800413c <quorem>
 8004984:	4629      	mov	r1, r5
 8004986:	4604      	mov	r4, r0
 8004988:	4650      	mov	r0, sl
 800498a:	f001 fd75 	bl	8006478 <__mcmp>
 800498e:	4659      	mov	r1, fp
 8004990:	4606      	mov	r6, r0
 8004992:	4642      	mov	r2, r8
 8004994:	4648      	mov	r0, r9
 8004996:	f001 fd8b 	bl	80064b0 <__mdiff>
 800499a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800499e:	9300      	str	r3, [sp, #0]
 80049a0:	68c3      	ldr	r3, [r0, #12]
 80049a2:	4601      	mov	r1, r0
 80049a4:	2b00      	cmp	r3, #0
 80049a6:	f040 81d4 	bne.w	8004d52 <_dtoa_r+0xaf2>
 80049aa:	9008      	str	r0, [sp, #32]
 80049ac:	4650      	mov	r0, sl
 80049ae:	f001 fd63 	bl	8006478 <__mcmp>
 80049b2:	9a08      	ldr	r2, [sp, #32]
 80049b4:	9007      	str	r0, [sp, #28]
 80049b6:	4611      	mov	r1, r2
 80049b8:	4648      	mov	r0, r9
 80049ba:	f001 fb6d 	bl	8006098 <_Bfree>
 80049be:	9b07      	ldr	r3, [sp, #28]
 80049c0:	b933      	cbnz	r3, 80049d0 <_dtoa_r+0x770>
 80049c2:	9a02      	ldr	r2, [sp, #8]
 80049c4:	b922      	cbnz	r2, 80049d0 <_dtoa_r+0x770>
 80049c6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80049c8:	2b00      	cmp	r3, #0
 80049ca:	f000 8319 	beq.w	8005000 <_dtoa_r+0xda0>
 80049ce:	9b02      	ldr	r3, [sp, #8]
 80049d0:	2e00      	cmp	r6, #0
 80049d2:	f2c0 821c 	blt.w	8004e0e <_dtoa_r+0xbae>
 80049d6:	d105      	bne.n	80049e4 <_dtoa_r+0x784>
 80049d8:	9a02      	ldr	r2, [sp, #8]
 80049da:	b91a      	cbnz	r2, 80049e4 <_dtoa_r+0x784>
 80049dc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049de:	2a00      	cmp	r2, #0
 80049e0:	f000 8215 	beq.w	8004e0e <_dtoa_r+0xbae>
 80049e4:	2b00      	cmp	r3, #0
 80049e6:	f107 0401 	add.w	r4, r7, #1
 80049ea:	f300 8225 	bgt.w	8004e38 <_dtoa_r+0xbd8>
 80049ee:	9b00      	ldr	r3, [sp, #0]
 80049f0:	703b      	strb	r3, [r7, #0]
 80049f2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049f4:	42bb      	cmp	r3, r7
 80049f6:	f000 8230 	beq.w	8004e5a <_dtoa_r+0xbfa>
 80049fa:	4651      	mov	r1, sl
 80049fc:	2300      	movs	r3, #0
 80049fe:	220a      	movs	r2, #10
 8004a00:	4648      	mov	r0, r9
 8004a02:	f001 fb53 	bl	80060ac <__multadd>
 8004a06:	4545      	cmp	r5, r8
 8004a08:	4682      	mov	sl, r0
 8004a0a:	4629      	mov	r1, r5
 8004a0c:	f04f 0300 	mov.w	r3, #0
 8004a10:	f04f 020a 	mov.w	r2, #10
 8004a14:	4648      	mov	r0, r9
 8004a16:	f000 8196 	beq.w	8004d46 <_dtoa_r+0xae6>
 8004a1a:	f001 fb47 	bl	80060ac <__multadd>
 8004a1e:	4641      	mov	r1, r8
 8004a20:	4605      	mov	r5, r0
 8004a22:	2300      	movs	r3, #0
 8004a24:	220a      	movs	r2, #10
 8004a26:	4648      	mov	r0, r9
 8004a28:	f001 fb40 	bl	80060ac <__multadd>
 8004a2c:	4627      	mov	r7, r4
 8004a2e:	4680      	mov	r8, r0
 8004a30:	e7a4      	b.n	800497c <_dtoa_r+0x71c>
 8004a32:	4631      	mov	r1, r6
 8004a34:	4650      	mov	r0, sl
 8004a36:	f001 fd1f 	bl	8006478 <__mcmp>
 8004a3a:	2800      	cmp	r0, #0
 8004a3c:	da81      	bge.n	8004942 <_dtoa_r+0x6e2>
 8004a3e:	9f06      	ldr	r7, [sp, #24]
 8004a40:	4651      	mov	r1, sl
 8004a42:	2300      	movs	r3, #0
 8004a44:	220a      	movs	r2, #10
 8004a46:	4648      	mov	r0, r9
 8004a48:	3f01      	subs	r7, #1
 8004a4a:	9706      	str	r7, [sp, #24]
 8004a4c:	f001 fb2e 	bl	80060ac <__multadd>
 8004a50:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a52:	4682      	mov	sl, r0
 8004a54:	2b00      	cmp	r3, #0
 8004a56:	f040 82eb 	bne.w	8005030 <_dtoa_r+0xdd0>
 8004a5a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004a5c:	2b00      	cmp	r3, #0
 8004a5e:	f340 82f3 	ble.w	8005048 <_dtoa_r+0xde8>
 8004a62:	9309      	str	r3, [sp, #36]	; 0x24
 8004a64:	465c      	mov	r4, fp
 8004a66:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004a6a:	e002      	b.n	8004a72 <_dtoa_r+0x812>
 8004a6c:	f001 fb1e 	bl	80060ac <__multadd>
 8004a70:	4682      	mov	sl, r0
 8004a72:	4631      	mov	r1, r6
 8004a74:	4650      	mov	r0, sl
 8004a76:	f7ff fb61 	bl	800413c <quorem>
 8004a7a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004a7e:	f804 7b01 	strb.w	r7, [r4], #1
 8004a82:	eba4 030b 	sub.w	r3, r4, fp
 8004a86:	4598      	cmp	r8, r3
 8004a88:	f04f 020a 	mov.w	r2, #10
 8004a8c:	f04f 0300 	mov.w	r3, #0
 8004a90:	4651      	mov	r1, sl
 8004a92:	4648      	mov	r0, r9
 8004a94:	dcea      	bgt.n	8004a6c <_dtoa_r+0x80c>
 8004a96:	2300      	movs	r3, #0
 8004a98:	9700      	str	r7, [sp, #0]
 8004a9a:	9302      	str	r3, [sp, #8]
 8004a9c:	4651      	mov	r1, sl
 8004a9e:	2201      	movs	r2, #1
 8004aa0:	4648      	mov	r0, r9
 8004aa2:	f001 fc93 	bl	80063cc <__lshift>
 8004aa6:	4631      	mov	r1, r6
 8004aa8:	4682      	mov	sl, r0
 8004aaa:	f001 fce5 	bl	8006478 <__mcmp>
 8004aae:	2800      	cmp	r0, #0
 8004ab0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004ab4:	dc14      	bgt.n	8004ae0 <_dtoa_r+0x880>
 8004ab6:	d108      	bne.n	8004aca <_dtoa_r+0x86a>
 8004ab8:	9b00      	ldr	r3, [sp, #0]
 8004aba:	07db      	lsls	r3, r3, #31
 8004abc:	d410      	bmi.n	8004ae0 <_dtoa_r+0x880>
 8004abe:	e004      	b.n	8004aca <_dtoa_r+0x86a>
 8004ac0:	40240000 	.word	0x40240000
 8004ac4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004ac8:	461c      	mov	r4, r3
 8004aca:	2a30      	cmp	r2, #48	; 0x30
 8004acc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ad0:	d0f8      	beq.n	8004ac4 <_dtoa_r+0x864>
 8004ad2:	e00b      	b.n	8004aec <_dtoa_r+0x88c>
 8004ad4:	459b      	cmp	fp, r3
 8004ad6:	f000 814e 	beq.w	8004d76 <_dtoa_r+0xb16>
 8004ada:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004ade:	461c      	mov	r4, r3
 8004ae0:	2a39      	cmp	r2, #57	; 0x39
 8004ae2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ae6:	d0f5      	beq.n	8004ad4 <_dtoa_r+0x874>
 8004ae8:	3201      	adds	r2, #1
 8004aea:	701a      	strb	r2, [r3, #0]
 8004aec:	4631      	mov	r1, r6
 8004aee:	4648      	mov	r0, r9
 8004af0:	f001 fad2 	bl	8006098 <_Bfree>
 8004af4:	b155      	cbz	r5, 8004b0c <_dtoa_r+0x8ac>
 8004af6:	9902      	ldr	r1, [sp, #8]
 8004af8:	b121      	cbz	r1, 8004b04 <_dtoa_r+0x8a4>
 8004afa:	42a9      	cmp	r1, r5
 8004afc:	d002      	beq.n	8004b04 <_dtoa_r+0x8a4>
 8004afe:	4648      	mov	r0, r9
 8004b00:	f001 faca 	bl	8006098 <_Bfree>
 8004b04:	4629      	mov	r1, r5
 8004b06:	4648      	mov	r0, r9
 8004b08:	f001 fac6 	bl	8006098 <_Bfree>
 8004b0c:	4651      	mov	r1, sl
 8004b0e:	4648      	mov	r0, r9
 8004b10:	f001 fac2 	bl	8006098 <_Bfree>
 8004b14:	2200      	movs	r2, #0
 8004b16:	9b06      	ldr	r3, [sp, #24]
 8004b18:	7022      	strb	r2, [r4, #0]
 8004b1a:	9a05      	ldr	r2, [sp, #20]
 8004b1c:	3301      	adds	r3, #1
 8004b1e:	6013      	str	r3, [r2, #0]
 8004b20:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004b22:	2b00      	cmp	r3, #0
 8004b24:	f43f abdb 	beq.w	80042de <_dtoa_r+0x7e>
 8004b28:	4658      	mov	r0, fp
 8004b2a:	601c      	str	r4, [r3, #0]
 8004b2c:	b01b      	add	sp, #108	; 0x6c
 8004b2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b32:	201c      	movs	r0, #28
 8004b34:	e6eb      	b.n	800490e <_dtoa_r+0x6ae>
 8004b36:	4601      	mov	r1, r0
 8004b38:	4648      	mov	r0, r9
 8004b3a:	f001 fbf7 	bl	800632c <__pow5mult>
 8004b3e:	9b02      	ldr	r3, [sp, #8]
 8004b40:	2b01      	cmp	r3, #1
 8004b42:	4606      	mov	r6, r0
 8004b44:	f340 80d4 	ble.w	8004cf0 <_dtoa_r+0xa90>
 8004b48:	2300      	movs	r3, #0
 8004b4a:	930c      	str	r3, [sp, #48]	; 0x30
 8004b4c:	6933      	ldr	r3, [r6, #16]
 8004b4e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004b52:	6918      	ldr	r0, [r3, #16]
 8004b54:	f001 faea 	bl	800612c <__hi0bits>
 8004b58:	f1c0 0020 	rsb	r0, r0, #32
 8004b5c:	e6cb      	b.n	80048f6 <_dtoa_r+0x696>
 8004b5e:	900d      	str	r0, [sp, #52]	; 0x34
 8004b60:	e42a      	b.n	80043b8 <_dtoa_r+0x158>
 8004b62:	2501      	movs	r5, #1
 8004b64:	e440      	b.n	80043e8 <_dtoa_r+0x188>
 8004b66:	f1c3 0820 	rsb	r8, r3, #32
 8004b6a:	9b00      	ldr	r3, [sp, #0]
 8004b6c:	fa03 f008 	lsl.w	r0, r3, r8
 8004b70:	f7ff bbd8 	b.w	8004324 <_dtoa_r+0xc4>
 8004b74:	2300      	movs	r3, #0
 8004b76:	930a      	str	r3, [sp, #40]	; 0x28
 8004b78:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004b7c:	4413      	add	r3, r2
 8004b7e:	930e      	str	r3, [sp, #56]	; 0x38
 8004b80:	3301      	adds	r3, #1
 8004b82:	2b01      	cmp	r3, #1
 8004b84:	461e      	mov	r6, r3
 8004b86:	9309      	str	r3, [sp, #36]	; 0x24
 8004b88:	bfb8      	it	lt
 8004b8a:	2601      	movlt	r6, #1
 8004b8c:	2100      	movs	r1, #0
 8004b8e:	2e17      	cmp	r6, #23
 8004b90:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004b94:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004b96:	f77f ac89 	ble.w	80044ac <_dtoa_r+0x24c>
 8004b9a:	2201      	movs	r2, #1
 8004b9c:	2304      	movs	r3, #4
 8004b9e:	005b      	lsls	r3, r3, #1
 8004ba0:	f103 0014 	add.w	r0, r3, #20
 8004ba4:	42b0      	cmp	r0, r6
 8004ba6:	4611      	mov	r1, r2
 8004ba8:	f102 0201 	add.w	r2, r2, #1
 8004bac:	d9f7      	bls.n	8004b9e <_dtoa_r+0x93e>
 8004bae:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004bb2:	e47b      	b.n	80044ac <_dtoa_r+0x24c>
 8004bb4:	2300      	movs	r3, #0
 8004bb6:	930a      	str	r3, [sp, #40]	; 0x28
 8004bb8:	9e07      	ldr	r6, [sp, #28]
 8004bba:	2e00      	cmp	r6, #0
 8004bbc:	f340 80e2 	ble.w	8004d84 <_dtoa_r+0xb24>
 8004bc0:	960e      	str	r6, [sp, #56]	; 0x38
 8004bc2:	9609      	str	r6, [sp, #36]	; 0x24
 8004bc4:	e7e2      	b.n	8004b8c <_dtoa_r+0x92c>
 8004bc6:	2301      	movs	r3, #1
 8004bc8:	930a      	str	r3, [sp, #40]	; 0x28
 8004bca:	e7f5      	b.n	8004bb8 <_dtoa_r+0x958>
 8004bcc:	9b00      	ldr	r3, [sp, #0]
 8004bce:	2b00      	cmp	r3, #0
 8004bd0:	f47f ae90 	bne.w	80048f4 <_dtoa_r+0x694>
 8004bd4:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004bd8:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004bdc:	2b00      	cmp	r3, #0
 8004bde:	f040 8192 	bne.w	8004f06 <_dtoa_r+0xca6>
 8004be2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004be6:	0d1b      	lsrs	r3, r3, #20
 8004be8:	051b      	lsls	r3, r3, #20
 8004bea:	b12b      	cbz	r3, 8004bf8 <_dtoa_r+0x998>
 8004bec:	9b08      	ldr	r3, [sp, #32]
 8004bee:	3301      	adds	r3, #1
 8004bf0:	9308      	str	r3, [sp, #32]
 8004bf2:	f108 0801 	add.w	r8, r8, #1
 8004bf6:	2301      	movs	r3, #1
 8004bf8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004bfa:	930c      	str	r3, [sp, #48]	; 0x30
 8004bfc:	2a00      	cmp	r2, #0
 8004bfe:	f43f ae79 	beq.w	80048f4 <_dtoa_r+0x694>
 8004c02:	e7a3      	b.n	8004b4c <_dtoa_r+0x8ec>
 8004c04:	463a      	mov	r2, r7
 8004c06:	4629      	mov	r1, r5
 8004c08:	4648      	mov	r0, r9
 8004c0a:	f001 fb8f 	bl	800632c <__pow5mult>
 8004c0e:	4652      	mov	r2, sl
 8004c10:	4601      	mov	r1, r0
 8004c12:	4605      	mov	r5, r0
 8004c14:	4648      	mov	r0, r9
 8004c16:	f001 fae3 	bl	80061e0 <__multiply>
 8004c1a:	4651      	mov	r1, sl
 8004c1c:	4607      	mov	r7, r0
 8004c1e:	4648      	mov	r0, r9
 8004c20:	f001 fa3a 	bl	8006098 <_Bfree>
 8004c24:	46ba      	mov	sl, r7
 8004c26:	2e00      	cmp	r6, #0
 8004c28:	f43f ae57 	beq.w	80048da <_dtoa_r+0x67a>
 8004c2c:	e64f      	b.n	80048ce <_dtoa_r+0x66e>
 8004c2e:	4629      	mov	r1, r5
 8004c30:	4622      	mov	r2, r4
 8004c32:	4648      	mov	r0, r9
 8004c34:	f001 fbca 	bl	80063cc <__lshift>
 8004c38:	4605      	mov	r5, r0
 8004c3a:	e68d      	b.n	8004958 <_dtoa_r+0x6f8>
 8004c3c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004c3e:	2a00      	cmp	r2, #0
 8004c40:	f000 815d 	beq.w	8004efe <_dtoa_r+0xc9e>
 8004c44:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004c48:	9a08      	ldr	r2, [sp, #32]
 8004c4a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004c4c:	4614      	mov	r4, r2
 8004c4e:	441a      	add	r2, r3
 8004c50:	4498      	add	r8, r3
 8004c52:	9208      	str	r2, [sp, #32]
 8004c54:	e5f7      	b.n	8004846 <_dtoa_r+0x5e6>
 8004c56:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c58:	2b00      	cmp	r3, #0
 8004c5a:	f73f ad3e 	bgt.w	80046da <_dtoa_r+0x47a>
 8004c5e:	f040 80bc 	bne.w	8004dda <_dtoa_r+0xb7a>
 8004c62:	ec51 0b17 	vmov	r0, r1, d7
 8004c66:	2200      	movs	r2, #0
 8004c68:	4bb2      	ldr	r3, [pc, #712]	; (8004f34 <_dtoa_r+0xcd4>)
 8004c6a:	f7fb ff65 	bl	8000b38 <__aeabi_dmul>
 8004c6e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c72:	f7fc f9e7 	bl	8001044 <__aeabi_dcmpge>
 8004c76:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004c78:	4635      	mov	r5, r6
 8004c7a:	2800      	cmp	r0, #0
 8004c7c:	d176      	bne.n	8004d6c <_dtoa_r+0xb0c>
 8004c7e:	9a06      	ldr	r2, [sp, #24]
 8004c80:	2331      	movs	r3, #49	; 0x31
 8004c82:	3201      	adds	r2, #1
 8004c84:	9206      	str	r2, [sp, #24]
 8004c86:	f88b 3000 	strb.w	r3, [fp]
 8004c8a:	f10b 0401 	add.w	r4, fp, #1
 8004c8e:	4631      	mov	r1, r6
 8004c90:	4648      	mov	r0, r9
 8004c92:	f001 fa01 	bl	8006098 <_Bfree>
 8004c96:	2d00      	cmp	r5, #0
 8004c98:	f47f af34 	bne.w	8004b04 <_dtoa_r+0x8a4>
 8004c9c:	e736      	b.n	8004b0c <_dtoa_r+0x8ac>
 8004c9e:	f000 8142 	beq.w	8004f26 <_dtoa_r+0xcc6>
 8004ca2:	9b06      	ldr	r3, [sp, #24]
 8004ca4:	425c      	negs	r4, r3
 8004ca6:	4ba4      	ldr	r3, [pc, #656]	; (8004f38 <_dtoa_r+0xcd8>)
 8004ca8:	f004 020f 	and.w	r2, r4, #15
 8004cac:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004cb0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004cb4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004cb8:	f7fb ff3e 	bl	8000b38 <__aeabi_dmul>
 8004cbc:	1124      	asrs	r4, r4, #4
 8004cbe:	e9cd 0100 	strd	r0, r1, [sp]
 8004cc2:	f000 81c6 	beq.w	8005052 <_dtoa_r+0xdf2>
 8004cc6:	4d9d      	ldr	r5, [pc, #628]	; (8004f3c <_dtoa_r+0xcdc>)
 8004cc8:	2300      	movs	r3, #0
 8004cca:	2602      	movs	r6, #2
 8004ccc:	07e7      	lsls	r7, r4, #31
 8004cce:	d505      	bpl.n	8004cdc <_dtoa_r+0xa7c>
 8004cd0:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004cd4:	f7fb ff30 	bl	8000b38 <__aeabi_dmul>
 8004cd8:	3601      	adds	r6, #1
 8004cda:	2301      	movs	r3, #1
 8004cdc:	1064      	asrs	r4, r4, #1
 8004cde:	f105 0508 	add.w	r5, r5, #8
 8004ce2:	d1f3      	bne.n	8004ccc <_dtoa_r+0xa6c>
 8004ce4:	2b00      	cmp	r3, #0
 8004ce6:	f43f ac27 	beq.w	8004538 <_dtoa_r+0x2d8>
 8004cea:	e9cd 0100 	strd	r0, r1, [sp]
 8004cee:	e423      	b.n	8004538 <_dtoa_r+0x2d8>
 8004cf0:	9b00      	ldr	r3, [sp, #0]
 8004cf2:	2b00      	cmp	r3, #0
 8004cf4:	f43f af6e 	beq.w	8004bd4 <_dtoa_r+0x974>
 8004cf8:	e726      	b.n	8004b48 <_dtoa_r+0x8e8>
 8004cfa:	6869      	ldr	r1, [r5, #4]
 8004cfc:	4648      	mov	r0, r9
 8004cfe:	f001 f9a5 	bl	800604c <_Balloc>
 8004d02:	692b      	ldr	r3, [r5, #16]
 8004d04:	3302      	adds	r3, #2
 8004d06:	009a      	lsls	r2, r3, #2
 8004d08:	4604      	mov	r4, r0
 8004d0a:	f105 010c 	add.w	r1, r5, #12
 8004d0e:	300c      	adds	r0, #12
 8004d10:	f7fb fbf6 	bl	8000500 <memcpy>
 8004d14:	4621      	mov	r1, r4
 8004d16:	2201      	movs	r2, #1
 8004d18:	4648      	mov	r0, r9
 8004d1a:	f001 fb57 	bl	80063cc <__lshift>
 8004d1e:	4680      	mov	r8, r0
 8004d20:	e61f      	b.n	8004962 <_dtoa_r+0x702>
 8004d22:	2400      	movs	r4, #0
 8004d24:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004d28:	4621      	mov	r1, r4
 8004d2a:	4648      	mov	r0, r9
 8004d2c:	f001 f98e 	bl	800604c <_Balloc>
 8004d30:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004d34:	930e      	str	r3, [sp, #56]	; 0x38
 8004d36:	9309      	str	r3, [sp, #36]	; 0x24
 8004d38:	2301      	movs	r3, #1
 8004d3a:	4683      	mov	fp, r0
 8004d3c:	9407      	str	r4, [sp, #28]
 8004d3e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004d42:	930a      	str	r3, [sp, #40]	; 0x28
 8004d44:	e4b6      	b.n	80046b4 <_dtoa_r+0x454>
 8004d46:	f001 f9b1 	bl	80060ac <__multadd>
 8004d4a:	4627      	mov	r7, r4
 8004d4c:	4605      	mov	r5, r0
 8004d4e:	4680      	mov	r8, r0
 8004d50:	e614      	b.n	800497c <_dtoa_r+0x71c>
 8004d52:	4648      	mov	r0, r9
 8004d54:	f001 f9a0 	bl	8006098 <_Bfree>
 8004d58:	2301      	movs	r3, #1
 8004d5a:	e639      	b.n	80049d0 <_dtoa_r+0x770>
 8004d5c:	9b02      	ldr	r3, [sp, #8]
 8004d5e:	2b02      	cmp	r3, #2
 8004d60:	f77f adf3 	ble.w	800494a <_dtoa_r+0x6ea>
 8004d64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d66:	2b00      	cmp	r3, #0
 8004d68:	f000 80cf 	beq.w	8004f0a <_dtoa_r+0xcaa>
 8004d6c:	9b07      	ldr	r3, [sp, #28]
 8004d6e:	43db      	mvns	r3, r3
 8004d70:	9306      	str	r3, [sp, #24]
 8004d72:	465c      	mov	r4, fp
 8004d74:	e78b      	b.n	8004c8e <_dtoa_r+0xa2e>
 8004d76:	9a06      	ldr	r2, [sp, #24]
 8004d78:	2331      	movs	r3, #49	; 0x31
 8004d7a:	3201      	adds	r2, #1
 8004d7c:	9206      	str	r2, [sp, #24]
 8004d7e:	f88b 3000 	strb.w	r3, [fp]
 8004d82:	e6b3      	b.n	8004aec <_dtoa_r+0x88c>
 8004d84:	2401      	movs	r4, #1
 8004d86:	9409      	str	r4, [sp, #36]	; 0x24
 8004d88:	9407      	str	r4, [sp, #28]
 8004d8a:	f7ff bb8b 	b.w	80044a4 <_dtoa_r+0x244>
 8004d8e:	4630      	mov	r0, r6
 8004d90:	f7fb fe68 	bl	8000a64 <__aeabi_i2d>
 8004d94:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d98:	f7fb fece 	bl	8000b38 <__aeabi_dmul>
 8004d9c:	2200      	movs	r2, #0
 8004d9e:	4b68      	ldr	r3, [pc, #416]	; (8004f40 <_dtoa_r+0xce0>)
 8004da0:	f7fb fd14 	bl	80007cc <__adddf3>
 8004da4:	4606      	mov	r6, r0
 8004da6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004daa:	2200      	movs	r2, #0
 8004dac:	4b61      	ldr	r3, [pc, #388]	; (8004f34 <_dtoa_r+0xcd4>)
 8004dae:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004db2:	f7fb fd09 	bl	80007c8 <__aeabi_dsub>
 8004db6:	4632      	mov	r2, r6
 8004db8:	463b      	mov	r3, r7
 8004dba:	4604      	mov	r4, r0
 8004dbc:	460d      	mov	r5, r1
 8004dbe:	f7fc f94b 	bl	8001058 <__aeabi_dcmpgt>
 8004dc2:	2800      	cmp	r0, #0
 8004dc4:	d14f      	bne.n	8004e66 <_dtoa_r+0xc06>
 8004dc6:	4632      	mov	r2, r6
 8004dc8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004dcc:	4620      	mov	r0, r4
 8004dce:	4629      	mov	r1, r5
 8004dd0:	f7fc f924 	bl	800101c <__aeabi_dcmplt>
 8004dd4:	2800      	cmp	r0, #0
 8004dd6:	f43f ac69 	beq.w	80046ac <_dtoa_r+0x44c>
 8004dda:	2600      	movs	r6, #0
 8004ddc:	4635      	mov	r5, r6
 8004dde:	e7c5      	b.n	8004d6c <_dtoa_r+0xb0c>
 8004de0:	2301      	movs	r3, #1
 8004de2:	930a      	str	r3, [sp, #40]	; 0x28
 8004de4:	e6c8      	b.n	8004b78 <_dtoa_r+0x918>
 8004de6:	4651      	mov	r1, sl
 8004de8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004dea:	4648      	mov	r0, r9
 8004dec:	f001 fa9e 	bl	800632c <__pow5mult>
 8004df0:	4682      	mov	sl, r0
 8004df2:	e572      	b.n	80048da <_dtoa_r+0x67a>
 8004df4:	f8dd a000 	ldr.w	sl, [sp]
 8004df8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004dfc:	e686      	b.n	8004b0c <_dtoa_r+0x8ac>
 8004dfe:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004e00:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004e02:	1afb      	subs	r3, r7, r3
 8004e04:	441a      	add	r2, r3
 8004e06:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004e0a:	2700      	movs	r7, #0
 8004e0c:	e512      	b.n	8004834 <_dtoa_r+0x5d4>
 8004e0e:	2b00      	cmp	r3, #0
 8004e10:	9402      	str	r4, [sp, #8]
 8004e12:	465e      	mov	r6, fp
 8004e14:	f107 0401 	add.w	r4, r7, #1
 8004e18:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e1c:	f300 80ba 	bgt.w	8004f94 <_dtoa_r+0xd34>
 8004e20:	9b00      	ldr	r3, [sp, #0]
 8004e22:	9502      	str	r5, [sp, #8]
 8004e24:	703b      	strb	r3, [r7, #0]
 8004e26:	4645      	mov	r5, r8
 8004e28:	e660      	b.n	8004aec <_dtoa_r+0x88c>
 8004e2a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e2e:	2602      	movs	r6, #2
 8004e30:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004e34:	f7ff bb67 	b.w	8004506 <_dtoa_r+0x2a6>
 8004e38:	9b00      	ldr	r3, [sp, #0]
 8004e3a:	2b39      	cmp	r3, #57	; 0x39
 8004e3c:	465e      	mov	r6, fp
 8004e3e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e42:	f000 80b9 	beq.w	8004fb8 <_dtoa_r+0xd58>
 8004e46:	9b00      	ldr	r3, [sp, #0]
 8004e48:	9502      	str	r5, [sp, #8]
 8004e4a:	3301      	adds	r3, #1
 8004e4c:	703b      	strb	r3, [r7, #0]
 8004e4e:	4645      	mov	r5, r8
 8004e50:	e64c      	b.n	8004aec <_dtoa_r+0x88c>
 8004e52:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004e56:	1a9c      	subs	r4, r3, r2
 8004e58:	e4f5      	b.n	8004846 <_dtoa_r+0x5e6>
 8004e5a:	465e      	mov	r6, fp
 8004e5c:	9502      	str	r5, [sp, #8]
 8004e5e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e62:	4645      	mov	r5, r8
 8004e64:	e61a      	b.n	8004a9c <_dtoa_r+0x83c>
 8004e66:	2600      	movs	r6, #0
 8004e68:	4635      	mov	r5, r6
 8004e6a:	e708      	b.n	8004c7e <_dtoa_r+0xa1e>
 8004e6c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004e70:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e74:	f7fb fe60 	bl	8000b38 <__aeabi_dmul>
 8004e78:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e7a:	f88b 5000 	strb.w	r5, [fp]
 8004e7e:	2b01      	cmp	r3, #1
 8004e80:	e9cd 0100 	strd	r0, r1, [sp]
 8004e84:	d020      	beq.n	8004ec8 <_dtoa_r+0xc68>
 8004e86:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e88:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004e8c:	445b      	add	r3, fp
 8004e8e:	4698      	mov	r8, r3
 8004e90:	2200      	movs	r2, #0
 8004e92:	4b2c      	ldr	r3, [pc, #176]	; (8004f44 <_dtoa_r+0xce4>)
 8004e94:	4630      	mov	r0, r6
 8004e96:	4639      	mov	r1, r7
 8004e98:	f7fb fe4e 	bl	8000b38 <__aeabi_dmul>
 8004e9c:	460f      	mov	r7, r1
 8004e9e:	4606      	mov	r6, r0
 8004ea0:	f7fc f8fa 	bl	8001098 <__aeabi_d2iz>
 8004ea4:	4605      	mov	r5, r0
 8004ea6:	f7fb fddd 	bl	8000a64 <__aeabi_i2d>
 8004eaa:	3530      	adds	r5, #48	; 0x30
 8004eac:	4602      	mov	r2, r0
 8004eae:	460b      	mov	r3, r1
 8004eb0:	4630      	mov	r0, r6
 8004eb2:	4639      	mov	r1, r7
 8004eb4:	f7fb fc88 	bl	80007c8 <__aeabi_dsub>
 8004eb8:	f804 5b01 	strb.w	r5, [r4], #1
 8004ebc:	4544      	cmp	r4, r8
 8004ebe:	4606      	mov	r6, r0
 8004ec0:	460f      	mov	r7, r1
 8004ec2:	d1e5      	bne.n	8004e90 <_dtoa_r+0xc30>
 8004ec4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004ec8:	4b1f      	ldr	r3, [pc, #124]	; (8004f48 <_dtoa_r+0xce8>)
 8004eca:	2200      	movs	r2, #0
 8004ecc:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ed0:	f7fb fc7c 	bl	80007cc <__adddf3>
 8004ed4:	4632      	mov	r2, r6
 8004ed6:	463b      	mov	r3, r7
 8004ed8:	f7fc f8a0 	bl	800101c <__aeabi_dcmplt>
 8004edc:	2800      	cmp	r0, #0
 8004ede:	d070      	beq.n	8004fc2 <_dtoa_r+0xd62>
 8004ee0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ee2:	9306      	str	r3, [sp, #24]
 8004ee4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004ee8:	e48f      	b.n	800480a <_dtoa_r+0x5aa>
 8004eea:	2330      	movs	r3, #48	; 0x30
 8004eec:	f88b 3000 	strb.w	r3, [fp]
 8004ef0:	9b06      	ldr	r3, [sp, #24]
 8004ef2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004ef6:	3301      	adds	r3, #1
 8004ef8:	9306      	str	r3, [sp, #24]
 8004efa:	465b      	mov	r3, fp
 8004efc:	e489      	b.n	8004812 <_dtoa_r+0x5b2>
 8004efe:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004f00:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004f04:	e6a0      	b.n	8004c48 <_dtoa_r+0x9e8>
 8004f06:	2300      	movs	r3, #0
 8004f08:	e676      	b.n	8004bf8 <_dtoa_r+0x998>
 8004f0a:	4631      	mov	r1, r6
 8004f0c:	2205      	movs	r2, #5
 8004f0e:	4648      	mov	r0, r9
 8004f10:	f001 f8cc 	bl	80060ac <__multadd>
 8004f14:	4601      	mov	r1, r0
 8004f16:	4606      	mov	r6, r0
 8004f18:	4650      	mov	r0, sl
 8004f1a:	f001 faad 	bl	8006478 <__mcmp>
 8004f1e:	2800      	cmp	r0, #0
 8004f20:	f73f aead 	bgt.w	8004c7e <_dtoa_r+0xa1e>
 8004f24:	e722      	b.n	8004d6c <_dtoa_r+0xb0c>
 8004f26:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004f2a:	2602      	movs	r6, #2
 8004f2c:	ed8d 7b00 	vstr	d7, [sp]
 8004f30:	f7ff bb02 	b.w	8004538 <_dtoa_r+0x2d8>
 8004f34:	40140000 	.word	0x40140000
 8004f38:	080073c8 	.word	0x080073c8
 8004f3c:	080073a0 	.word	0x080073a0
 8004f40:	401c0000 	.word	0x401c0000
 8004f44:	40240000 	.word	0x40240000
 8004f48:	3fe00000 	.word	0x3fe00000
 8004f4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f4e:	2b00      	cmp	r3, #0
 8004f50:	f43f af1d 	beq.w	8004d8e <_dtoa_r+0xb2e>
 8004f54:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004f56:	2c00      	cmp	r4, #0
 8004f58:	f77f aba8 	ble.w	80046ac <_dtoa_r+0x44c>
 8004f5c:	2200      	movs	r2, #0
 8004f5e:	4b45      	ldr	r3, [pc, #276]	; (8005074 <_dtoa_r+0xe14>)
 8004f60:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f64:	f7fb fde8 	bl	8000b38 <__aeabi_dmul>
 8004f68:	e9cd 0100 	strd	r0, r1, [sp]
 8004f6c:	1c70      	adds	r0, r6, #1
 8004f6e:	f7fb fd79 	bl	8000a64 <__aeabi_i2d>
 8004f72:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f76:	f7fb fddf 	bl	8000b38 <__aeabi_dmul>
 8004f7a:	4b3f      	ldr	r3, [pc, #252]	; (8005078 <_dtoa_r+0xe18>)
 8004f7c:	2200      	movs	r2, #0
 8004f7e:	f7fb fc25 	bl	80007cc <__adddf3>
 8004f82:	9b06      	ldr	r3, [sp, #24]
 8004f84:	9412      	str	r4, [sp, #72]	; 0x48
 8004f86:	3b01      	subs	r3, #1
 8004f88:	4606      	mov	r6, r0
 8004f8a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004f8e:	9316      	str	r3, [sp, #88]	; 0x58
 8004f90:	f7ff baf3 	b.w	800457a <_dtoa_r+0x31a>
 8004f94:	4651      	mov	r1, sl
 8004f96:	2201      	movs	r2, #1
 8004f98:	4648      	mov	r0, r9
 8004f9a:	f001 fa17 	bl	80063cc <__lshift>
 8004f9e:	4631      	mov	r1, r6
 8004fa0:	4682      	mov	sl, r0
 8004fa2:	f001 fa69 	bl	8006478 <__mcmp>
 8004fa6:	2800      	cmp	r0, #0
 8004fa8:	dd3b      	ble.n	8005022 <_dtoa_r+0xdc2>
 8004faa:	9b00      	ldr	r3, [sp, #0]
 8004fac:	2b39      	cmp	r3, #57	; 0x39
 8004fae:	d003      	beq.n	8004fb8 <_dtoa_r+0xd58>
 8004fb0:	9b02      	ldr	r3, [sp, #8]
 8004fb2:	3331      	adds	r3, #49	; 0x31
 8004fb4:	9300      	str	r3, [sp, #0]
 8004fb6:	e733      	b.n	8004e20 <_dtoa_r+0xbc0>
 8004fb8:	2239      	movs	r2, #57	; 0x39
 8004fba:	9502      	str	r5, [sp, #8]
 8004fbc:	703a      	strb	r2, [r7, #0]
 8004fbe:	4645      	mov	r5, r8
 8004fc0:	e58e      	b.n	8004ae0 <_dtoa_r+0x880>
 8004fc2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004fc6:	2000      	movs	r0, #0
 8004fc8:	492c      	ldr	r1, [pc, #176]	; (800507c <_dtoa_r+0xe1c>)
 8004fca:	f7fb fbfd 	bl	80007c8 <__aeabi_dsub>
 8004fce:	4632      	mov	r2, r6
 8004fd0:	463b      	mov	r3, r7
 8004fd2:	f7fc f841 	bl	8001058 <__aeabi_dcmpgt>
 8004fd6:	b910      	cbnz	r0, 8004fde <_dtoa_r+0xd7e>
 8004fd8:	f7ff bb68 	b.w	80046ac <_dtoa_r+0x44c>
 8004fdc:	4614      	mov	r4, r2
 8004fde:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004fe2:	2b30      	cmp	r3, #48	; 0x30
 8004fe4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004fe8:	d0f8      	beq.n	8004fdc <_dtoa_r+0xd7c>
 8004fea:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004fec:	9306      	str	r3, [sp, #24]
 8004fee:	e58d      	b.n	8004b0c <_dtoa_r+0x8ac>
 8004ff0:	46d9      	mov	r9, fp
 8004ff2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ff6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004ffa:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ffc:	9306      	str	r3, [sp, #24]
 8004ffe:	e404      	b.n	800480a <_dtoa_r+0x5aa>
 8005000:	9b00      	ldr	r3, [sp, #0]
 8005002:	2b39      	cmp	r3, #57	; 0x39
 8005004:	4621      	mov	r1, r4
 8005006:	4632      	mov	r2, r6
 8005008:	f107 0401 	add.w	r4, r7, #1
 800500c:	465e      	mov	r6, fp
 800500e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005012:	d0d1      	beq.n	8004fb8 <_dtoa_r+0xd58>
 8005014:	2a00      	cmp	r2, #0
 8005016:	f77f af03 	ble.w	8004e20 <_dtoa_r+0xbc0>
 800501a:	460b      	mov	r3, r1
 800501c:	3331      	adds	r3, #49	; 0x31
 800501e:	9300      	str	r3, [sp, #0]
 8005020:	e6fe      	b.n	8004e20 <_dtoa_r+0xbc0>
 8005022:	f47f aefd 	bne.w	8004e20 <_dtoa_r+0xbc0>
 8005026:	9b00      	ldr	r3, [sp, #0]
 8005028:	07da      	lsls	r2, r3, #31
 800502a:	f57f aef9 	bpl.w	8004e20 <_dtoa_r+0xbc0>
 800502e:	e7bc      	b.n	8004faa <_dtoa_r+0xd4a>
 8005030:	4629      	mov	r1, r5
 8005032:	2300      	movs	r3, #0
 8005034:	220a      	movs	r2, #10
 8005036:	4648      	mov	r0, r9
 8005038:	f001 f838 	bl	80060ac <__multadd>
 800503c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800503e:	2b00      	cmp	r3, #0
 8005040:	4605      	mov	r5, r0
 8005042:	dd09      	ble.n	8005058 <_dtoa_r+0xdf8>
 8005044:	9309      	str	r3, [sp, #36]	; 0x24
 8005046:	e484      	b.n	8004952 <_dtoa_r+0x6f2>
 8005048:	9b02      	ldr	r3, [sp, #8]
 800504a:	2b02      	cmp	r3, #2
 800504c:	dc0e      	bgt.n	800506c <_dtoa_r+0xe0c>
 800504e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005050:	e507      	b.n	8004a62 <_dtoa_r+0x802>
 8005052:	2602      	movs	r6, #2
 8005054:	f7ff ba70 	b.w	8004538 <_dtoa_r+0x2d8>
 8005058:	9b02      	ldr	r3, [sp, #8]
 800505a:	2b02      	cmp	r3, #2
 800505c:	dc06      	bgt.n	800506c <_dtoa_r+0xe0c>
 800505e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005060:	e7f0      	b.n	8005044 <_dtoa_r+0xde4>
 8005062:	f43f ac59 	beq.w	8004918 <_dtoa_r+0x6b8>
 8005066:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800506a:	e450      	b.n	800490e <_dtoa_r+0x6ae>
 800506c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800506e:	9309      	str	r3, [sp, #36]	; 0x24
 8005070:	e678      	b.n	8004d64 <_dtoa_r+0xb04>
 8005072:	bf00      	nop
 8005074:	40240000 	.word	0x40240000
 8005078:	401c0000 	.word	0x401c0000
 800507c:	3fe00000 	.word	0x3fe00000

08005080 <__sflush_r>:
 8005080:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005084:	b29a      	uxth	r2, r3
 8005086:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800508a:	460c      	mov	r4, r1
 800508c:	0711      	lsls	r1, r2, #28
 800508e:	4680      	mov	r8, r0
 8005090:	d444      	bmi.n	800511c <__sflush_r+0x9c>
 8005092:	6862      	ldr	r2, [r4, #4]
 8005094:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005098:	2a00      	cmp	r2, #0
 800509a:	81a3      	strh	r3, [r4, #12]
 800509c:	dd59      	ble.n	8005152 <__sflush_r+0xd2>
 800509e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80050a0:	2d00      	cmp	r5, #0
 80050a2:	d053      	beq.n	800514c <__sflush_r+0xcc>
 80050a4:	2200      	movs	r2, #0
 80050a6:	b29b      	uxth	r3, r3
 80050a8:	f8d8 6000 	ldr.w	r6, [r8]
 80050ac:	69e1      	ldr	r1, [r4, #28]
 80050ae:	f8c8 2000 	str.w	r2, [r8]
 80050b2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80050b6:	f040 8083 	bne.w	80051c0 <__sflush_r+0x140>
 80050ba:	2301      	movs	r3, #1
 80050bc:	4640      	mov	r0, r8
 80050be:	47a8      	blx	r5
 80050c0:	1c42      	adds	r2, r0, #1
 80050c2:	d04a      	beq.n	800515a <__sflush_r+0xda>
 80050c4:	89a3      	ldrh	r3, [r4, #12]
 80050c6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80050c8:	69e1      	ldr	r1, [r4, #28]
 80050ca:	075b      	lsls	r3, r3, #29
 80050cc:	d505      	bpl.n	80050da <__sflush_r+0x5a>
 80050ce:	6862      	ldr	r2, [r4, #4]
 80050d0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80050d2:	1a80      	subs	r0, r0, r2
 80050d4:	b10b      	cbz	r3, 80050da <__sflush_r+0x5a>
 80050d6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80050d8:	1ac0      	subs	r0, r0, r3
 80050da:	4602      	mov	r2, r0
 80050dc:	2300      	movs	r3, #0
 80050de:	4640      	mov	r0, r8
 80050e0:	47a8      	blx	r5
 80050e2:	1c47      	adds	r7, r0, #1
 80050e4:	d045      	beq.n	8005172 <__sflush_r+0xf2>
 80050e6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80050ea:	6922      	ldr	r2, [r4, #16]
 80050ec:	6022      	str	r2, [r4, #0]
 80050ee:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80050f2:	2200      	movs	r2, #0
 80050f4:	81a3      	strh	r3, [r4, #12]
 80050f6:	04db      	lsls	r3, r3, #19
 80050f8:	6062      	str	r2, [r4, #4]
 80050fa:	d500      	bpl.n	80050fe <__sflush_r+0x7e>
 80050fc:	6520      	str	r0, [r4, #80]	; 0x50
 80050fe:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005100:	f8c8 6000 	str.w	r6, [r8]
 8005104:	b311      	cbz	r1, 800514c <__sflush_r+0xcc>
 8005106:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800510a:	4299      	cmp	r1, r3
 800510c:	d002      	beq.n	8005114 <__sflush_r+0x94>
 800510e:	4640      	mov	r0, r8
 8005110:	f000 f95e 	bl	80053d0 <_free_r>
 8005114:	2000      	movs	r0, #0
 8005116:	6320      	str	r0, [r4, #48]	; 0x30
 8005118:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800511c:	6926      	ldr	r6, [r4, #16]
 800511e:	b1ae      	cbz	r6, 800514c <__sflush_r+0xcc>
 8005120:	6825      	ldr	r5, [r4, #0]
 8005122:	6026      	str	r6, [r4, #0]
 8005124:	0792      	lsls	r2, r2, #30
 8005126:	bf0c      	ite	eq
 8005128:	6963      	ldreq	r3, [r4, #20]
 800512a:	2300      	movne	r3, #0
 800512c:	1bad      	subs	r5, r5, r6
 800512e:	60a3      	str	r3, [r4, #8]
 8005130:	e00a      	b.n	8005148 <__sflush_r+0xc8>
 8005132:	462b      	mov	r3, r5
 8005134:	4632      	mov	r2, r6
 8005136:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005138:	69e1      	ldr	r1, [r4, #28]
 800513a:	4640      	mov	r0, r8
 800513c:	47b8      	blx	r7
 800513e:	2800      	cmp	r0, #0
 8005140:	eba5 0500 	sub.w	r5, r5, r0
 8005144:	4406      	add	r6, r0
 8005146:	dd2b      	ble.n	80051a0 <__sflush_r+0x120>
 8005148:	2d00      	cmp	r5, #0
 800514a:	dcf2      	bgt.n	8005132 <__sflush_r+0xb2>
 800514c:	2000      	movs	r0, #0
 800514e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005152:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005154:	2a00      	cmp	r2, #0
 8005156:	dca2      	bgt.n	800509e <__sflush_r+0x1e>
 8005158:	e7f8      	b.n	800514c <__sflush_r+0xcc>
 800515a:	f8d8 3000 	ldr.w	r3, [r8]
 800515e:	2b00      	cmp	r3, #0
 8005160:	d0b0      	beq.n	80050c4 <__sflush_r+0x44>
 8005162:	2b1d      	cmp	r3, #29
 8005164:	d001      	beq.n	800516a <__sflush_r+0xea>
 8005166:	2b16      	cmp	r3, #22
 8005168:	d12c      	bne.n	80051c4 <__sflush_r+0x144>
 800516a:	f8c8 6000 	str.w	r6, [r8]
 800516e:	2000      	movs	r0, #0
 8005170:	e7ed      	b.n	800514e <__sflush_r+0xce>
 8005172:	f8d8 1000 	ldr.w	r1, [r8]
 8005176:	291d      	cmp	r1, #29
 8005178:	d81a      	bhi.n	80051b0 <__sflush_r+0x130>
 800517a:	4b15      	ldr	r3, [pc, #84]	; (80051d0 <__sflush_r+0x150>)
 800517c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005180:	40cb      	lsrs	r3, r1
 8005182:	43db      	mvns	r3, r3
 8005184:	f013 0301 	ands.w	r3, r3, #1
 8005188:	d114      	bne.n	80051b4 <__sflush_r+0x134>
 800518a:	6925      	ldr	r5, [r4, #16]
 800518c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005190:	e9c4 5300 	strd	r5, r3, [r4]
 8005194:	04d5      	lsls	r5, r2, #19
 8005196:	81a2      	strh	r2, [r4, #12]
 8005198:	d5b1      	bpl.n	80050fe <__sflush_r+0x7e>
 800519a:	2900      	cmp	r1, #0
 800519c:	d1af      	bne.n	80050fe <__sflush_r+0x7e>
 800519e:	e7ad      	b.n	80050fc <__sflush_r+0x7c>
 80051a0:	89a3      	ldrh	r3, [r4, #12]
 80051a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80051a6:	81a3      	strh	r3, [r4, #12]
 80051a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80051ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80051b0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80051b4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80051b8:	81a2      	strh	r2, [r4, #12]
 80051ba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80051be:	e7c6      	b.n	800514e <__sflush_r+0xce>
 80051c0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80051c2:	e782      	b.n	80050ca <__sflush_r+0x4a>
 80051c4:	89a3      	ldrh	r3, [r4, #12]
 80051c6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80051ca:	81a3      	strh	r3, [r4, #12]
 80051cc:	e7bf      	b.n	800514e <__sflush_r+0xce>
 80051ce:	bf00      	nop
 80051d0:	20400001 	.word	0x20400001

080051d4 <_fflush_r>:
 80051d4:	b538      	push	{r3, r4, r5, lr}
 80051d6:	460d      	mov	r5, r1
 80051d8:	4604      	mov	r4, r0
 80051da:	b108      	cbz	r0, 80051e0 <_fflush_r+0xc>
 80051dc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80051de:	b1a3      	cbz	r3, 800520a <_fflush_r+0x36>
 80051e0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80051e4:	b1b8      	cbz	r0, 8005216 <_fflush_r+0x42>
 80051e6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80051e8:	07db      	lsls	r3, r3, #31
 80051ea:	d401      	bmi.n	80051f0 <_fflush_r+0x1c>
 80051ec:	0581      	lsls	r1, r0, #22
 80051ee:	d51a      	bpl.n	8005226 <_fflush_r+0x52>
 80051f0:	4620      	mov	r0, r4
 80051f2:	4629      	mov	r1, r5
 80051f4:	f7ff ff44 	bl	8005080 <__sflush_r>
 80051f8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80051fa:	07da      	lsls	r2, r3, #31
 80051fc:	4604      	mov	r4, r0
 80051fe:	d402      	bmi.n	8005206 <_fflush_r+0x32>
 8005200:	89ab      	ldrh	r3, [r5, #12]
 8005202:	059b      	lsls	r3, r3, #22
 8005204:	d50a      	bpl.n	800521c <_fflush_r+0x48>
 8005206:	4620      	mov	r0, r4
 8005208:	bd38      	pop	{r3, r4, r5, pc}
 800520a:	f000 f83f 	bl	800528c <__sinit>
 800520e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005212:	2800      	cmp	r0, #0
 8005214:	d1e7      	bne.n	80051e6 <_fflush_r+0x12>
 8005216:	4604      	mov	r4, r0
 8005218:	4620      	mov	r0, r4
 800521a:	bd38      	pop	{r3, r4, r5, pc}
 800521c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800521e:	f000 fb87 	bl	8005930 <__retarget_lock_release_recursive>
 8005222:	4620      	mov	r0, r4
 8005224:	bd38      	pop	{r3, r4, r5, pc}
 8005226:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005228:	f000 fb80 	bl	800592c <__retarget_lock_acquire_recursive>
 800522c:	e7e0      	b.n	80051f0 <_fflush_r+0x1c>
 800522e:	bf00      	nop

08005230 <std>:
 8005230:	b510      	push	{r4, lr}
 8005232:	2300      	movs	r3, #0
 8005234:	4604      	mov	r4, r0
 8005236:	8181      	strh	r1, [r0, #12]
 8005238:	81c2      	strh	r2, [r0, #14]
 800523a:	e9c0 3300 	strd	r3, r3, [r0]
 800523e:	6083      	str	r3, [r0, #8]
 8005240:	6643      	str	r3, [r0, #100]	; 0x64
 8005242:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005246:	6183      	str	r3, [r0, #24]
 8005248:	4619      	mov	r1, r3
 800524a:	2208      	movs	r2, #8
 800524c:	305c      	adds	r0, #92	; 0x5c
 800524e:	f7fd f8cb 	bl	80023e8 <memset>
 8005252:	4807      	ldr	r0, [pc, #28]	; (8005270 <std+0x40>)
 8005254:	4907      	ldr	r1, [pc, #28]	; (8005274 <std+0x44>)
 8005256:	4a08      	ldr	r2, [pc, #32]	; (8005278 <std+0x48>)
 8005258:	4b08      	ldr	r3, [pc, #32]	; (800527c <std+0x4c>)
 800525a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800525c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005260:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005264:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005268:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800526c:	f000 bb5a 	b.w	8005924 <__retarget_lock_init_recursive>
 8005270:	08006a49 	.word	0x08006a49
 8005274:	08006a6d 	.word	0x08006a6d
 8005278:	08006aa9 	.word	0x08006aa9
 800527c:	08006ac9 	.word	0x08006ac9

08005280 <_cleanup_r>:
 8005280:	4901      	ldr	r1, [pc, #4]	; (8005288 <_cleanup_r+0x8>)
 8005282:	f000 bb17 	b.w	80058b4 <_fwalk_reent>
 8005286:	bf00      	nop
 8005288:	08006d39 	.word	0x08006d39

0800528c <__sinit>:
 800528c:	b510      	push	{r4, lr}
 800528e:	4604      	mov	r4, r0
 8005290:	4812      	ldr	r0, [pc, #72]	; (80052dc <__sinit+0x50>)
 8005292:	f000 fb4b 	bl	800592c <__retarget_lock_acquire_recursive>
 8005296:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005298:	b9d2      	cbnz	r2, 80052d0 <__sinit+0x44>
 800529a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800529e:	4810      	ldr	r0, [pc, #64]	; (80052e0 <__sinit+0x54>)
 80052a0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80052a4:	2103      	movs	r1, #3
 80052a6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80052aa:	63e0      	str	r0, [r4, #60]	; 0x3c
 80052ac:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80052b0:	6860      	ldr	r0, [r4, #4]
 80052b2:	2104      	movs	r1, #4
 80052b4:	f7ff ffbc 	bl	8005230 <std>
 80052b8:	2201      	movs	r2, #1
 80052ba:	2109      	movs	r1, #9
 80052bc:	68a0      	ldr	r0, [r4, #8]
 80052be:	f7ff ffb7 	bl	8005230 <std>
 80052c2:	2202      	movs	r2, #2
 80052c4:	2112      	movs	r1, #18
 80052c6:	68e0      	ldr	r0, [r4, #12]
 80052c8:	f7ff ffb2 	bl	8005230 <std>
 80052cc:	2301      	movs	r3, #1
 80052ce:	63a3      	str	r3, [r4, #56]	; 0x38
 80052d0:	4802      	ldr	r0, [pc, #8]	; (80052dc <__sinit+0x50>)
 80052d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80052d6:	f000 bb2b 	b.w	8005930 <__retarget_lock_release_recursive>
 80052da:	bf00      	nop
 80052dc:	20000af4 	.word	0x20000af4
 80052e0:	08005281 	.word	0x08005281

080052e4 <__sfp_lock_acquire>:
 80052e4:	4801      	ldr	r0, [pc, #4]	; (80052ec <__sfp_lock_acquire+0x8>)
 80052e6:	f000 bb21 	b.w	800592c <__retarget_lock_acquire_recursive>
 80052ea:	bf00      	nop
 80052ec:	20000b08 	.word	0x20000b08

080052f0 <__sfp_lock_release>:
 80052f0:	4801      	ldr	r0, [pc, #4]	; (80052f8 <__sfp_lock_release+0x8>)
 80052f2:	f000 bb1d 	b.w	8005930 <__retarget_lock_release_recursive>
 80052f6:	bf00      	nop
 80052f8:	20000b08 	.word	0x20000b08

080052fc <__libc_fini_array>:
 80052fc:	b538      	push	{r3, r4, r5, lr}
 80052fe:	4c0a      	ldr	r4, [pc, #40]	; (8005328 <__libc_fini_array+0x2c>)
 8005300:	4d0a      	ldr	r5, [pc, #40]	; (800532c <__libc_fini_array+0x30>)
 8005302:	1b64      	subs	r4, r4, r5
 8005304:	10a4      	asrs	r4, r4, #2
 8005306:	d00a      	beq.n	800531e <__libc_fini_array+0x22>
 8005308:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800530c:	3b01      	subs	r3, #1
 800530e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005312:	3c01      	subs	r4, #1
 8005314:	f855 3904 	ldr.w	r3, [r5], #-4
 8005318:	4798      	blx	r3
 800531a:	2c00      	cmp	r4, #0
 800531c:	d1f9      	bne.n	8005312 <__libc_fini_array+0x16>
 800531e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005322:	f001 befd 	b.w	8007120 <_fini>
 8005326:	bf00      	nop
 8005328:	080075c4 	.word	0x080075c4
 800532c:	080075c0 	.word	0x080075c0

08005330 <_malloc_trim_r>:
 8005330:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005332:	4f24      	ldr	r7, [pc, #144]	; (80053c4 <_malloc_trim_r+0x94>)
 8005334:	460c      	mov	r4, r1
 8005336:	4606      	mov	r6, r0
 8005338:	f000 fe7c 	bl	8006034 <__malloc_lock>
 800533c:	68bb      	ldr	r3, [r7, #8]
 800533e:	685d      	ldr	r5, [r3, #4]
 8005340:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005344:	310f      	adds	r1, #15
 8005346:	f025 0503 	bic.w	r5, r5, #3
 800534a:	4429      	add	r1, r5
 800534c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005350:	f021 010f 	bic.w	r1, r1, #15
 8005354:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005358:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800535c:	db07      	blt.n	800536e <_malloc_trim_r+0x3e>
 800535e:	2100      	movs	r1, #0
 8005360:	4630      	mov	r0, r6
 8005362:	f001 fb5f 	bl	8006a24 <_sbrk_r>
 8005366:	68bb      	ldr	r3, [r7, #8]
 8005368:	442b      	add	r3, r5
 800536a:	4298      	cmp	r0, r3
 800536c:	d004      	beq.n	8005378 <_malloc_trim_r+0x48>
 800536e:	4630      	mov	r0, r6
 8005370:	f000 fe66 	bl	8006040 <__malloc_unlock>
 8005374:	2000      	movs	r0, #0
 8005376:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005378:	4261      	negs	r1, r4
 800537a:	4630      	mov	r0, r6
 800537c:	f001 fb52 	bl	8006a24 <_sbrk_r>
 8005380:	3001      	adds	r0, #1
 8005382:	d00d      	beq.n	80053a0 <_malloc_trim_r+0x70>
 8005384:	4b10      	ldr	r3, [pc, #64]	; (80053c8 <_malloc_trim_r+0x98>)
 8005386:	68ba      	ldr	r2, [r7, #8]
 8005388:	6819      	ldr	r1, [r3, #0]
 800538a:	1b2d      	subs	r5, r5, r4
 800538c:	f045 0501 	orr.w	r5, r5, #1
 8005390:	4630      	mov	r0, r6
 8005392:	1b09      	subs	r1, r1, r4
 8005394:	6055      	str	r5, [r2, #4]
 8005396:	6019      	str	r1, [r3, #0]
 8005398:	f000 fe52 	bl	8006040 <__malloc_unlock>
 800539c:	2001      	movs	r0, #1
 800539e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80053a0:	2100      	movs	r1, #0
 80053a2:	4630      	mov	r0, r6
 80053a4:	f001 fb3e 	bl	8006a24 <_sbrk_r>
 80053a8:	68ba      	ldr	r2, [r7, #8]
 80053aa:	1a83      	subs	r3, r0, r2
 80053ac:	2b0f      	cmp	r3, #15
 80053ae:	ddde      	ble.n	800536e <_malloc_trim_r+0x3e>
 80053b0:	4c06      	ldr	r4, [pc, #24]	; (80053cc <_malloc_trim_r+0x9c>)
 80053b2:	4905      	ldr	r1, [pc, #20]	; (80053c8 <_malloc_trim_r+0x98>)
 80053b4:	6824      	ldr	r4, [r4, #0]
 80053b6:	f043 0301 	orr.w	r3, r3, #1
 80053ba:	1b00      	subs	r0, r0, r4
 80053bc:	6053      	str	r3, [r2, #4]
 80053be:	6008      	str	r0, [r1, #0]
 80053c0:	e7d5      	b.n	800536e <_malloc_trim_r+0x3e>
 80053c2:	bf00      	nop
 80053c4:	2000044c 	.word	0x2000044c
 80053c8:	20000a6c 	.word	0x20000a6c
 80053cc:	20000854 	.word	0x20000854

080053d0 <_free_r>:
 80053d0:	2900      	cmp	r1, #0
 80053d2:	d053      	beq.n	800547c <_free_r+0xac>
 80053d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80053d6:	460c      	mov	r4, r1
 80053d8:	4606      	mov	r6, r0
 80053da:	f000 fe2b 	bl	8006034 <__malloc_lock>
 80053de:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80053e2:	4f71      	ldr	r7, [pc, #452]	; (80055a8 <_free_r+0x1d8>)
 80053e4:	f02c 0101 	bic.w	r1, ip, #1
 80053e8:	f1a4 0508 	sub.w	r5, r4, #8
 80053ec:	186b      	adds	r3, r5, r1
 80053ee:	68b8      	ldr	r0, [r7, #8]
 80053f0:	685a      	ldr	r2, [r3, #4]
 80053f2:	4298      	cmp	r0, r3
 80053f4:	f022 0203 	bic.w	r2, r2, #3
 80053f8:	d053      	beq.n	80054a2 <_free_r+0xd2>
 80053fa:	f01c 0f01 	tst.w	ip, #1
 80053fe:	605a      	str	r2, [r3, #4]
 8005400:	eb03 0002 	add.w	r0, r3, r2
 8005404:	d13b      	bne.n	800547e <_free_r+0xae>
 8005406:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800540a:	6840      	ldr	r0, [r0, #4]
 800540c:	eba5 050c 	sub.w	r5, r5, ip
 8005410:	f107 0e08 	add.w	lr, r7, #8
 8005414:	68ac      	ldr	r4, [r5, #8]
 8005416:	4574      	cmp	r4, lr
 8005418:	4461      	add	r1, ip
 800541a:	f000 0001 	and.w	r0, r0, #1
 800541e:	d075      	beq.n	800550c <_free_r+0x13c>
 8005420:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005424:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005428:	f8cc 4008 	str.w	r4, [ip, #8]
 800542c:	b360      	cbz	r0, 8005488 <_free_r+0xb8>
 800542e:	f041 0301 	orr.w	r3, r1, #1
 8005432:	606b      	str	r3, [r5, #4]
 8005434:	5069      	str	r1, [r5, r1]
 8005436:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800543a:	d350      	bcc.n	80054de <_free_r+0x10e>
 800543c:	0a4b      	lsrs	r3, r1, #9
 800543e:	2b04      	cmp	r3, #4
 8005440:	d870      	bhi.n	8005524 <_free_r+0x154>
 8005442:	098b      	lsrs	r3, r1, #6
 8005444:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005448:	00e4      	lsls	r4, r4, #3
 800544a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800544e:	1938      	adds	r0, r7, r4
 8005450:	593b      	ldr	r3, [r7, r4]
 8005452:	3808      	subs	r0, #8
 8005454:	4298      	cmp	r0, r3
 8005456:	d078      	beq.n	800554a <_free_r+0x17a>
 8005458:	685a      	ldr	r2, [r3, #4]
 800545a:	f022 0203 	bic.w	r2, r2, #3
 800545e:	428a      	cmp	r2, r1
 8005460:	d971      	bls.n	8005546 <_free_r+0x176>
 8005462:	689b      	ldr	r3, [r3, #8]
 8005464:	4298      	cmp	r0, r3
 8005466:	d1f7      	bne.n	8005458 <_free_r+0x88>
 8005468:	68c3      	ldr	r3, [r0, #12]
 800546a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800546e:	609d      	str	r5, [r3, #8]
 8005470:	60c5      	str	r5, [r0, #12]
 8005472:	4630      	mov	r0, r6
 8005474:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005478:	f000 bde2 	b.w	8006040 <__malloc_unlock>
 800547c:	4770      	bx	lr
 800547e:	6840      	ldr	r0, [r0, #4]
 8005480:	f000 0001 	and.w	r0, r0, #1
 8005484:	2800      	cmp	r0, #0
 8005486:	d1d2      	bne.n	800542e <_free_r+0x5e>
 8005488:	6898      	ldr	r0, [r3, #8]
 800548a:	4c48      	ldr	r4, [pc, #288]	; (80055ac <_free_r+0x1dc>)
 800548c:	4411      	add	r1, r2
 800548e:	42a0      	cmp	r0, r4
 8005490:	f041 0201 	orr.w	r2, r1, #1
 8005494:	d062      	beq.n	800555c <_free_r+0x18c>
 8005496:	68db      	ldr	r3, [r3, #12]
 8005498:	60c3      	str	r3, [r0, #12]
 800549a:	6098      	str	r0, [r3, #8]
 800549c:	606a      	str	r2, [r5, #4]
 800549e:	5069      	str	r1, [r5, r1]
 80054a0:	e7c9      	b.n	8005436 <_free_r+0x66>
 80054a2:	f01c 0f01 	tst.w	ip, #1
 80054a6:	440a      	add	r2, r1
 80054a8:	d107      	bne.n	80054ba <_free_r+0xea>
 80054aa:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80054ae:	1aed      	subs	r5, r5, r3
 80054b0:	441a      	add	r2, r3
 80054b2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80054b6:	60cb      	str	r3, [r1, #12]
 80054b8:	6099      	str	r1, [r3, #8]
 80054ba:	4b3d      	ldr	r3, [pc, #244]	; (80055b0 <_free_r+0x1e0>)
 80054bc:	681b      	ldr	r3, [r3, #0]
 80054be:	f042 0101 	orr.w	r1, r2, #1
 80054c2:	4293      	cmp	r3, r2
 80054c4:	6069      	str	r1, [r5, #4]
 80054c6:	60bd      	str	r5, [r7, #8]
 80054c8:	d804      	bhi.n	80054d4 <_free_r+0x104>
 80054ca:	4b3a      	ldr	r3, [pc, #232]	; (80055b4 <_free_r+0x1e4>)
 80054cc:	4630      	mov	r0, r6
 80054ce:	6819      	ldr	r1, [r3, #0]
 80054d0:	f7ff ff2e 	bl	8005330 <_malloc_trim_r>
 80054d4:	4630      	mov	r0, r6
 80054d6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80054da:	f000 bdb1 	b.w	8006040 <__malloc_unlock>
 80054de:	08c9      	lsrs	r1, r1, #3
 80054e0:	6878      	ldr	r0, [r7, #4]
 80054e2:	1c4a      	adds	r2, r1, #1
 80054e4:	2301      	movs	r3, #1
 80054e6:	1089      	asrs	r1, r1, #2
 80054e8:	408b      	lsls	r3, r1
 80054ea:	4303      	orrs	r3, r0
 80054ec:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80054f0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80054f4:	607b      	str	r3, [r7, #4]
 80054f6:	3908      	subs	r1, #8
 80054f8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80054fc:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005500:	60c5      	str	r5, [r0, #12]
 8005502:	4630      	mov	r0, r6
 8005504:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005508:	f000 bd9a 	b.w	8006040 <__malloc_unlock>
 800550c:	2800      	cmp	r0, #0
 800550e:	d145      	bne.n	800559c <_free_r+0x1cc>
 8005510:	440a      	add	r2, r1
 8005512:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005516:	f042 0001 	orr.w	r0, r2, #1
 800551a:	60cb      	str	r3, [r1, #12]
 800551c:	6099      	str	r1, [r3, #8]
 800551e:	6068      	str	r0, [r5, #4]
 8005520:	50aa      	str	r2, [r5, r2]
 8005522:	e7d7      	b.n	80054d4 <_free_r+0x104>
 8005524:	2b14      	cmp	r3, #20
 8005526:	d908      	bls.n	800553a <_free_r+0x16a>
 8005528:	2b54      	cmp	r3, #84	; 0x54
 800552a:	d81e      	bhi.n	800556a <_free_r+0x19a>
 800552c:	0b0b      	lsrs	r3, r1, #12
 800552e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005532:	00e4      	lsls	r4, r4, #3
 8005534:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005538:	e789      	b.n	800544e <_free_r+0x7e>
 800553a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800553e:	00e4      	lsls	r4, r4, #3
 8005540:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005544:	e783      	b.n	800544e <_free_r+0x7e>
 8005546:	4618      	mov	r0, r3
 8005548:	e78e      	b.n	8005468 <_free_r+0x98>
 800554a:	1093      	asrs	r3, r2, #2
 800554c:	6879      	ldr	r1, [r7, #4]
 800554e:	2201      	movs	r2, #1
 8005550:	fa02 f303 	lsl.w	r3, r2, r3
 8005554:	430b      	orrs	r3, r1
 8005556:	607b      	str	r3, [r7, #4]
 8005558:	4603      	mov	r3, r0
 800555a:	e786      	b.n	800546a <_free_r+0x9a>
 800555c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005560:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005564:	606a      	str	r2, [r5, #4]
 8005566:	5069      	str	r1, [r5, r1]
 8005568:	e7b4      	b.n	80054d4 <_free_r+0x104>
 800556a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800556e:	d806      	bhi.n	800557e <_free_r+0x1ae>
 8005570:	0bcb      	lsrs	r3, r1, #15
 8005572:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005576:	00e4      	lsls	r4, r4, #3
 8005578:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800557c:	e767      	b.n	800544e <_free_r+0x7e>
 800557e:	f240 5254 	movw	r2, #1364	; 0x554
 8005582:	4293      	cmp	r3, r2
 8005584:	d806      	bhi.n	8005594 <_free_r+0x1c4>
 8005586:	0c8b      	lsrs	r3, r1, #18
 8005588:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800558c:	00e4      	lsls	r4, r4, #3
 800558e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005592:	e75c      	b.n	800544e <_free_r+0x7e>
 8005594:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005598:	227e      	movs	r2, #126	; 0x7e
 800559a:	e758      	b.n	800544e <_free_r+0x7e>
 800559c:	f041 0201 	orr.w	r2, r1, #1
 80055a0:	606a      	str	r2, [r5, #4]
 80055a2:	6019      	str	r1, [r3, #0]
 80055a4:	e796      	b.n	80054d4 <_free_r+0x104>
 80055a6:	bf00      	nop
 80055a8:	2000044c 	.word	0x2000044c
 80055ac:	20000454 	.word	0x20000454
 80055b0:	20000858 	.word	0x20000858
 80055b4:	20000a9c 	.word	0x20000a9c

080055b8 <__sfvwrite_r>:
 80055b8:	6893      	ldr	r3, [r2, #8]
 80055ba:	2b00      	cmp	r3, #0
 80055bc:	f000 80e4 	beq.w	8005788 <__sfvwrite_r+0x1d0>
 80055c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80055c4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80055c8:	b29b      	uxth	r3, r3
 80055ca:	460c      	mov	r4, r1
 80055cc:	0719      	lsls	r1, r3, #28
 80055ce:	b083      	sub	sp, #12
 80055d0:	4682      	mov	sl, r0
 80055d2:	4690      	mov	r8, r2
 80055d4:	d535      	bpl.n	8005642 <__sfvwrite_r+0x8a>
 80055d6:	6922      	ldr	r2, [r4, #16]
 80055d8:	b39a      	cbz	r2, 8005642 <__sfvwrite_r+0x8a>
 80055da:	f013 0202 	ands.w	r2, r3, #2
 80055de:	f8d8 6000 	ldr.w	r6, [r8]
 80055e2:	d03d      	beq.n	8005660 <__sfvwrite_r+0xa8>
 80055e4:	2700      	movs	r7, #0
 80055e6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80055ea:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80055ee:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80058b0 <__sfvwrite_r+0x2f8>
 80055f2:	463d      	mov	r5, r7
 80055f4:	454d      	cmp	r5, r9
 80055f6:	462b      	mov	r3, r5
 80055f8:	463a      	mov	r2, r7
 80055fa:	bf28      	it	cs
 80055fc:	464b      	movcs	r3, r9
 80055fe:	4661      	mov	r1, ip
 8005600:	4650      	mov	r0, sl
 8005602:	b1d5      	cbz	r5, 800563a <__sfvwrite_r+0x82>
 8005604:	47d8      	blx	fp
 8005606:	2800      	cmp	r0, #0
 8005608:	f340 80c6 	ble.w	8005798 <__sfvwrite_r+0x1e0>
 800560c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005610:	1a1b      	subs	r3, r3, r0
 8005612:	4407      	add	r7, r0
 8005614:	1a2d      	subs	r5, r5, r0
 8005616:	f8c8 3008 	str.w	r3, [r8, #8]
 800561a:	2b00      	cmp	r3, #0
 800561c:	f000 80b0 	beq.w	8005780 <__sfvwrite_r+0x1c8>
 8005620:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005624:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005628:	454d      	cmp	r5, r9
 800562a:	462b      	mov	r3, r5
 800562c:	463a      	mov	r2, r7
 800562e:	bf28      	it	cs
 8005630:	464b      	movcs	r3, r9
 8005632:	4661      	mov	r1, ip
 8005634:	4650      	mov	r0, sl
 8005636:	2d00      	cmp	r5, #0
 8005638:	d1e4      	bne.n	8005604 <__sfvwrite_r+0x4c>
 800563a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800563e:	3608      	adds	r6, #8
 8005640:	e7d8      	b.n	80055f4 <__sfvwrite_r+0x3c>
 8005642:	4621      	mov	r1, r4
 8005644:	4650      	mov	r0, sl
 8005646:	f7fe fd03 	bl	8004050 <__swsetup_r>
 800564a:	2800      	cmp	r0, #0
 800564c:	f040 812a 	bne.w	80058a4 <__sfvwrite_r+0x2ec>
 8005650:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005654:	f8d8 6000 	ldr.w	r6, [r8]
 8005658:	b29b      	uxth	r3, r3
 800565a:	f013 0202 	ands.w	r2, r3, #2
 800565e:	d1c1      	bne.n	80055e4 <__sfvwrite_r+0x2c>
 8005660:	f013 0901 	ands.w	r9, r3, #1
 8005664:	d15d      	bne.n	8005722 <__sfvwrite_r+0x16a>
 8005666:	68a7      	ldr	r7, [r4, #8]
 8005668:	6820      	ldr	r0, [r4, #0]
 800566a:	464d      	mov	r5, r9
 800566c:	2d00      	cmp	r5, #0
 800566e:	d054      	beq.n	800571a <__sfvwrite_r+0x162>
 8005670:	059a      	lsls	r2, r3, #22
 8005672:	f140 809b 	bpl.w	80057ac <__sfvwrite_r+0x1f4>
 8005676:	42af      	cmp	r7, r5
 8005678:	46bb      	mov	fp, r7
 800567a:	f200 80d8 	bhi.w	800582e <__sfvwrite_r+0x276>
 800567e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005682:	d02f      	beq.n	80056e4 <__sfvwrite_r+0x12c>
 8005684:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005688:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800568c:	eba0 0b01 	sub.w	fp, r0, r1
 8005690:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005694:	1c68      	adds	r0, r5, #1
 8005696:	107f      	asrs	r7, r7, #1
 8005698:	4458      	add	r0, fp
 800569a:	42b8      	cmp	r0, r7
 800569c:	463a      	mov	r2, r7
 800569e:	bf84      	itt	hi
 80056a0:	4607      	movhi	r7, r0
 80056a2:	463a      	movhi	r2, r7
 80056a4:	055b      	lsls	r3, r3, #21
 80056a6:	f140 80d3 	bpl.w	8005850 <__sfvwrite_r+0x298>
 80056aa:	4611      	mov	r1, r2
 80056ac:	4650      	mov	r0, sl
 80056ae:	f000 f9b9 	bl	8005a24 <_malloc_r>
 80056b2:	2800      	cmp	r0, #0
 80056b4:	f000 80f0 	beq.w	8005898 <__sfvwrite_r+0x2e0>
 80056b8:	465a      	mov	r2, fp
 80056ba:	6921      	ldr	r1, [r4, #16]
 80056bc:	9001      	str	r0, [sp, #4]
 80056be:	f7fa ff1f 	bl	8000500 <memcpy>
 80056c2:	89a2      	ldrh	r2, [r4, #12]
 80056c4:	9b01      	ldr	r3, [sp, #4]
 80056c6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80056ca:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80056ce:	81a2      	strh	r2, [r4, #12]
 80056d0:	eba7 020b 	sub.w	r2, r7, fp
 80056d4:	eb03 000b 	add.w	r0, r3, fp
 80056d8:	6167      	str	r7, [r4, #20]
 80056da:	6123      	str	r3, [r4, #16]
 80056dc:	6020      	str	r0, [r4, #0]
 80056de:	60a2      	str	r2, [r4, #8]
 80056e0:	462f      	mov	r7, r5
 80056e2:	46ab      	mov	fp, r5
 80056e4:	465a      	mov	r2, fp
 80056e6:	4649      	mov	r1, r9
 80056e8:	f000 fc40 	bl	8005f6c <memmove>
 80056ec:	68a2      	ldr	r2, [r4, #8]
 80056ee:	6823      	ldr	r3, [r4, #0]
 80056f0:	1bd2      	subs	r2, r2, r7
 80056f2:	445b      	add	r3, fp
 80056f4:	462f      	mov	r7, r5
 80056f6:	60a2      	str	r2, [r4, #8]
 80056f8:	6023      	str	r3, [r4, #0]
 80056fa:	2500      	movs	r5, #0
 80056fc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005700:	1bdb      	subs	r3, r3, r7
 8005702:	44b9      	add	r9, r7
 8005704:	f8c8 3008 	str.w	r3, [r8, #8]
 8005708:	2b00      	cmp	r3, #0
 800570a:	d039      	beq.n	8005780 <__sfvwrite_r+0x1c8>
 800570c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005710:	68a7      	ldr	r7, [r4, #8]
 8005712:	6820      	ldr	r0, [r4, #0]
 8005714:	b29b      	uxth	r3, r3
 8005716:	2d00      	cmp	r5, #0
 8005718:	d1aa      	bne.n	8005670 <__sfvwrite_r+0xb8>
 800571a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800571e:	3608      	adds	r6, #8
 8005720:	e7a4      	b.n	800566c <__sfvwrite_r+0xb4>
 8005722:	4633      	mov	r3, r6
 8005724:	4691      	mov	r9, r2
 8005726:	4610      	mov	r0, r2
 8005728:	4617      	mov	r7, r2
 800572a:	464e      	mov	r6, r9
 800572c:	469b      	mov	fp, r3
 800572e:	2f00      	cmp	r7, #0
 8005730:	d06b      	beq.n	800580a <__sfvwrite_r+0x252>
 8005732:	2800      	cmp	r0, #0
 8005734:	d071      	beq.n	800581a <__sfvwrite_r+0x262>
 8005736:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800573a:	6820      	ldr	r0, [r4, #0]
 800573c:	45b9      	cmp	r9, r7
 800573e:	464b      	mov	r3, r9
 8005740:	bf28      	it	cs
 8005742:	463b      	movcs	r3, r7
 8005744:	4288      	cmp	r0, r1
 8005746:	d903      	bls.n	8005750 <__sfvwrite_r+0x198>
 8005748:	68a5      	ldr	r5, [r4, #8]
 800574a:	4415      	add	r5, r2
 800574c:	42ab      	cmp	r3, r5
 800574e:	dc71      	bgt.n	8005834 <__sfvwrite_r+0x27c>
 8005750:	429a      	cmp	r2, r3
 8005752:	f300 8093 	bgt.w	800587c <__sfvwrite_r+0x2c4>
 8005756:	4613      	mov	r3, r2
 8005758:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800575a:	69e1      	ldr	r1, [r4, #28]
 800575c:	4632      	mov	r2, r6
 800575e:	4650      	mov	r0, sl
 8005760:	47a8      	blx	r5
 8005762:	1e05      	subs	r5, r0, #0
 8005764:	dd18      	ble.n	8005798 <__sfvwrite_r+0x1e0>
 8005766:	ebb9 0905 	subs.w	r9, r9, r5
 800576a:	d00f      	beq.n	800578c <__sfvwrite_r+0x1d4>
 800576c:	2001      	movs	r0, #1
 800576e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005772:	1b5b      	subs	r3, r3, r5
 8005774:	442e      	add	r6, r5
 8005776:	1b7f      	subs	r7, r7, r5
 8005778:	f8c8 3008 	str.w	r3, [r8, #8]
 800577c:	2b00      	cmp	r3, #0
 800577e:	d1d6      	bne.n	800572e <__sfvwrite_r+0x176>
 8005780:	2000      	movs	r0, #0
 8005782:	b003      	add	sp, #12
 8005784:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005788:	2000      	movs	r0, #0
 800578a:	4770      	bx	lr
 800578c:	4621      	mov	r1, r4
 800578e:	4650      	mov	r0, sl
 8005790:	f7ff fd20 	bl	80051d4 <_fflush_r>
 8005794:	2800      	cmp	r0, #0
 8005796:	d0ea      	beq.n	800576e <__sfvwrite_r+0x1b6>
 8005798:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800579c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80057a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80057a4:	81a3      	strh	r3, [r4, #12]
 80057a6:	b003      	add	sp, #12
 80057a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80057ac:	6923      	ldr	r3, [r4, #16]
 80057ae:	4283      	cmp	r3, r0
 80057b0:	d315      	bcc.n	80057de <__sfvwrite_r+0x226>
 80057b2:	6961      	ldr	r1, [r4, #20]
 80057b4:	42a9      	cmp	r1, r5
 80057b6:	d812      	bhi.n	80057de <__sfvwrite_r+0x226>
 80057b8:	4b3c      	ldr	r3, [pc, #240]	; (80058ac <__sfvwrite_r+0x2f4>)
 80057ba:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80057bc:	429d      	cmp	r5, r3
 80057be:	bf94      	ite	ls
 80057c0:	462b      	movls	r3, r5
 80057c2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80057c6:	464a      	mov	r2, r9
 80057c8:	fb93 f3f1 	sdiv	r3, r3, r1
 80057cc:	4650      	mov	r0, sl
 80057ce:	fb01 f303 	mul.w	r3, r1, r3
 80057d2:	69e1      	ldr	r1, [r4, #28]
 80057d4:	47b8      	blx	r7
 80057d6:	1e07      	subs	r7, r0, #0
 80057d8:	ddde      	ble.n	8005798 <__sfvwrite_r+0x1e0>
 80057da:	1bed      	subs	r5, r5, r7
 80057dc:	e78e      	b.n	80056fc <__sfvwrite_r+0x144>
 80057de:	42af      	cmp	r7, r5
 80057e0:	bf28      	it	cs
 80057e2:	462f      	movcs	r7, r5
 80057e4:	463a      	mov	r2, r7
 80057e6:	4649      	mov	r1, r9
 80057e8:	f000 fbc0 	bl	8005f6c <memmove>
 80057ec:	68a3      	ldr	r3, [r4, #8]
 80057ee:	6822      	ldr	r2, [r4, #0]
 80057f0:	1bdb      	subs	r3, r3, r7
 80057f2:	443a      	add	r2, r7
 80057f4:	60a3      	str	r3, [r4, #8]
 80057f6:	6022      	str	r2, [r4, #0]
 80057f8:	2b00      	cmp	r3, #0
 80057fa:	d1ee      	bne.n	80057da <__sfvwrite_r+0x222>
 80057fc:	4621      	mov	r1, r4
 80057fe:	4650      	mov	r0, sl
 8005800:	f7ff fce8 	bl	80051d4 <_fflush_r>
 8005804:	2800      	cmp	r0, #0
 8005806:	d0e8      	beq.n	80057da <__sfvwrite_r+0x222>
 8005808:	e7c6      	b.n	8005798 <__sfvwrite_r+0x1e0>
 800580a:	f10b 0308 	add.w	r3, fp, #8
 800580e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005812:	469b      	mov	fp, r3
 8005814:	3308      	adds	r3, #8
 8005816:	2f00      	cmp	r7, #0
 8005818:	d0f9      	beq.n	800580e <__sfvwrite_r+0x256>
 800581a:	463a      	mov	r2, r7
 800581c:	210a      	movs	r1, #10
 800581e:	4630      	mov	r0, r6
 8005820:	f7fa ff7e 	bl	8000720 <memchr>
 8005824:	b338      	cbz	r0, 8005876 <__sfvwrite_r+0x2be>
 8005826:	3001      	adds	r0, #1
 8005828:	eba0 0906 	sub.w	r9, r0, r6
 800582c:	e783      	b.n	8005736 <__sfvwrite_r+0x17e>
 800582e:	462f      	mov	r7, r5
 8005830:	46ab      	mov	fp, r5
 8005832:	e757      	b.n	80056e4 <__sfvwrite_r+0x12c>
 8005834:	4631      	mov	r1, r6
 8005836:	462a      	mov	r2, r5
 8005838:	f000 fb98 	bl	8005f6c <memmove>
 800583c:	6823      	ldr	r3, [r4, #0]
 800583e:	442b      	add	r3, r5
 8005840:	6023      	str	r3, [r4, #0]
 8005842:	4621      	mov	r1, r4
 8005844:	4650      	mov	r0, sl
 8005846:	f7ff fcc5 	bl	80051d4 <_fflush_r>
 800584a:	2800      	cmp	r0, #0
 800584c:	d08b      	beq.n	8005766 <__sfvwrite_r+0x1ae>
 800584e:	e7a3      	b.n	8005798 <__sfvwrite_r+0x1e0>
 8005850:	4650      	mov	r0, sl
 8005852:	f000 ff05 	bl	8006660 <_realloc_r>
 8005856:	4603      	mov	r3, r0
 8005858:	2800      	cmp	r0, #0
 800585a:	f47f af39 	bne.w	80056d0 <__sfvwrite_r+0x118>
 800585e:	6921      	ldr	r1, [r4, #16]
 8005860:	4650      	mov	r0, sl
 8005862:	f7ff fdb5 	bl	80053d0 <_free_r>
 8005866:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800586a:	220c      	movs	r2, #12
 800586c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005870:	f8ca 2000 	str.w	r2, [sl]
 8005874:	e792      	b.n	800579c <__sfvwrite_r+0x1e4>
 8005876:	f107 0901 	add.w	r9, r7, #1
 800587a:	e75c      	b.n	8005736 <__sfvwrite_r+0x17e>
 800587c:	461a      	mov	r2, r3
 800587e:	4631      	mov	r1, r6
 8005880:	9301      	str	r3, [sp, #4]
 8005882:	f000 fb73 	bl	8005f6c <memmove>
 8005886:	9b01      	ldr	r3, [sp, #4]
 8005888:	68a1      	ldr	r1, [r4, #8]
 800588a:	6822      	ldr	r2, [r4, #0]
 800588c:	1ac9      	subs	r1, r1, r3
 800588e:	441a      	add	r2, r3
 8005890:	60a1      	str	r1, [r4, #8]
 8005892:	6022      	str	r2, [r4, #0]
 8005894:	461d      	mov	r5, r3
 8005896:	e766      	b.n	8005766 <__sfvwrite_r+0x1ae>
 8005898:	230c      	movs	r3, #12
 800589a:	f8ca 3000 	str.w	r3, [sl]
 800589e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058a2:	e77b      	b.n	800579c <__sfvwrite_r+0x1e4>
 80058a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80058a8:	e76b      	b.n	8005782 <__sfvwrite_r+0x1ca>
 80058aa:	bf00      	nop
 80058ac:	7ffffffe 	.word	0x7ffffffe
 80058b0:	7ffffc00 	.word	0x7ffffc00

080058b4 <_fwalk_reent>:
 80058b4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80058b8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80058bc:	d01f      	beq.n	80058fe <_fwalk_reent+0x4a>
 80058be:	4688      	mov	r8, r1
 80058c0:	4606      	mov	r6, r0
 80058c2:	f04f 0900 	mov.w	r9, #0
 80058c6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80058ca:	3d01      	subs	r5, #1
 80058cc:	d411      	bmi.n	80058f2 <_fwalk_reent+0x3e>
 80058ce:	89a3      	ldrh	r3, [r4, #12]
 80058d0:	2b01      	cmp	r3, #1
 80058d2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80058d6:	4621      	mov	r1, r4
 80058d8:	4630      	mov	r0, r6
 80058da:	d906      	bls.n	80058ea <_fwalk_reent+0x36>
 80058dc:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80058e0:	3301      	adds	r3, #1
 80058e2:	d002      	beq.n	80058ea <_fwalk_reent+0x36>
 80058e4:	47c0      	blx	r8
 80058e6:	ea49 0900 	orr.w	r9, r9, r0
 80058ea:	1c6b      	adds	r3, r5, #1
 80058ec:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80058f0:	d1ed      	bne.n	80058ce <_fwalk_reent+0x1a>
 80058f2:	683f      	ldr	r7, [r7, #0]
 80058f4:	2f00      	cmp	r7, #0
 80058f6:	d1e6      	bne.n	80058c6 <_fwalk_reent+0x12>
 80058f8:	4648      	mov	r0, r9
 80058fa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80058fe:	46b9      	mov	r9, r7
 8005900:	4648      	mov	r0, r9
 8005902:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005906:	bf00      	nop

08005908 <_localeconv_r>:
 8005908:	4a04      	ldr	r2, [pc, #16]	; (800591c <_localeconv_r+0x14>)
 800590a:	4b05      	ldr	r3, [pc, #20]	; (8005920 <_localeconv_r+0x18>)
 800590c:	6812      	ldr	r2, [r2, #0]
 800590e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005910:	2800      	cmp	r0, #0
 8005912:	bf08      	it	eq
 8005914:	4618      	moveq	r0, r3
 8005916:	30f0      	adds	r0, #240	; 0xf0
 8005918:	4770      	bx	lr
 800591a:	bf00      	nop
 800591c:	20000018 	.word	0x20000018
 8005920:	2000085c 	.word	0x2000085c

08005924 <__retarget_lock_init_recursive>:
 8005924:	4770      	bx	lr
 8005926:	bf00      	nop

08005928 <__retarget_lock_close_recursive>:
 8005928:	4770      	bx	lr
 800592a:	bf00      	nop

0800592c <__retarget_lock_acquire_recursive>:
 800592c:	4770      	bx	lr
 800592e:	bf00      	nop

08005930 <__retarget_lock_release_recursive>:
 8005930:	4770      	bx	lr
 8005932:	bf00      	nop

08005934 <__swhatbuf_r>:
 8005934:	b570      	push	{r4, r5, r6, lr}
 8005936:	460c      	mov	r4, r1
 8005938:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800593c:	2900      	cmp	r1, #0
 800593e:	b096      	sub	sp, #88	; 0x58
 8005940:	4615      	mov	r5, r2
 8005942:	461e      	mov	r6, r3
 8005944:	da0f      	bge.n	8005966 <__swhatbuf_r+0x32>
 8005946:	89a2      	ldrh	r2, [r4, #12]
 8005948:	2300      	movs	r3, #0
 800594a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800594e:	6033      	str	r3, [r6, #0]
 8005950:	d104      	bne.n	800595c <__swhatbuf_r+0x28>
 8005952:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005956:	602b      	str	r3, [r5, #0]
 8005958:	b016      	add	sp, #88	; 0x58
 800595a:	bd70      	pop	{r4, r5, r6, pc}
 800595c:	2240      	movs	r2, #64	; 0x40
 800595e:	4618      	mov	r0, r3
 8005960:	602a      	str	r2, [r5, #0]
 8005962:	b016      	add	sp, #88	; 0x58
 8005964:	bd70      	pop	{r4, r5, r6, pc}
 8005966:	466a      	mov	r2, sp
 8005968:	f001 fad0 	bl	8006f0c <_fstat_r>
 800596c:	2800      	cmp	r0, #0
 800596e:	dbea      	blt.n	8005946 <__swhatbuf_r+0x12>
 8005970:	9b01      	ldr	r3, [sp, #4]
 8005972:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005976:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800597a:	fab3 f383 	clz	r3, r3
 800597e:	095b      	lsrs	r3, r3, #5
 8005980:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005984:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005988:	6033      	str	r3, [r6, #0]
 800598a:	602a      	str	r2, [r5, #0]
 800598c:	b016      	add	sp, #88	; 0x58
 800598e:	bd70      	pop	{r4, r5, r6, pc}

08005990 <__smakebuf_r>:
 8005990:	898a      	ldrh	r2, [r1, #12]
 8005992:	0792      	lsls	r2, r2, #30
 8005994:	460b      	mov	r3, r1
 8005996:	d506      	bpl.n	80059a6 <__smakebuf_r+0x16>
 8005998:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800599c:	2101      	movs	r1, #1
 800599e:	601a      	str	r2, [r3, #0]
 80059a0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80059a4:	4770      	bx	lr
 80059a6:	b570      	push	{r4, r5, r6, lr}
 80059a8:	b082      	sub	sp, #8
 80059aa:	ab01      	add	r3, sp, #4
 80059ac:	466a      	mov	r2, sp
 80059ae:	460c      	mov	r4, r1
 80059b0:	4605      	mov	r5, r0
 80059b2:	f7ff ffbf 	bl	8005934 <__swhatbuf_r>
 80059b6:	9900      	ldr	r1, [sp, #0]
 80059b8:	4606      	mov	r6, r0
 80059ba:	4628      	mov	r0, r5
 80059bc:	f000 f832 	bl	8005a24 <_malloc_r>
 80059c0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059c4:	b1d8      	cbz	r0, 80059fe <__smakebuf_r+0x6e>
 80059c6:	4916      	ldr	r1, [pc, #88]	; (8005a20 <__smakebuf_r+0x90>)
 80059c8:	63e9      	str	r1, [r5, #60]	; 0x3c
 80059ca:	9a01      	ldr	r2, [sp, #4]
 80059cc:	9900      	ldr	r1, [sp, #0]
 80059ce:	6020      	str	r0, [r4, #0]
 80059d0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80059d4:	81a3      	strh	r3, [r4, #12]
 80059d6:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80059da:	b91a      	cbnz	r2, 80059e4 <__smakebuf_r+0x54>
 80059dc:	4333      	orrs	r3, r6
 80059de:	81a3      	strh	r3, [r4, #12]
 80059e0:	b002      	add	sp, #8
 80059e2:	bd70      	pop	{r4, r5, r6, pc}
 80059e4:	4628      	mov	r0, r5
 80059e6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80059ea:	f001 faa3 	bl	8006f34 <_isatty_r>
 80059ee:	b1a0      	cbz	r0, 8005a1a <__smakebuf_r+0x8a>
 80059f0:	89a3      	ldrh	r3, [r4, #12]
 80059f2:	f023 0303 	bic.w	r3, r3, #3
 80059f6:	f043 0301 	orr.w	r3, r3, #1
 80059fa:	b21b      	sxth	r3, r3
 80059fc:	e7ee      	b.n	80059dc <__smakebuf_r+0x4c>
 80059fe:	059a      	lsls	r2, r3, #22
 8005a00:	d4ee      	bmi.n	80059e0 <__smakebuf_r+0x50>
 8005a02:	f023 0303 	bic.w	r3, r3, #3
 8005a06:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005a0a:	f043 0302 	orr.w	r3, r3, #2
 8005a0e:	2101      	movs	r1, #1
 8005a10:	81a3      	strh	r3, [r4, #12]
 8005a12:	6022      	str	r2, [r4, #0]
 8005a14:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005a18:	e7e2      	b.n	80059e0 <__smakebuf_r+0x50>
 8005a1a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a1e:	e7dd      	b.n	80059dc <__smakebuf_r+0x4c>
 8005a20:	08005281 	.word	0x08005281

08005a24 <_malloc_r>:
 8005a24:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005a28:	f101 050b 	add.w	r5, r1, #11
 8005a2c:	2d16      	cmp	r5, #22
 8005a2e:	b083      	sub	sp, #12
 8005a30:	4606      	mov	r6, r0
 8005a32:	d823      	bhi.n	8005a7c <_malloc_r+0x58>
 8005a34:	2910      	cmp	r1, #16
 8005a36:	f200 80b9 	bhi.w	8005bac <_malloc_r+0x188>
 8005a3a:	f000 fafb 	bl	8006034 <__malloc_lock>
 8005a3e:	2510      	movs	r5, #16
 8005a40:	2318      	movs	r3, #24
 8005a42:	2002      	movs	r0, #2
 8005a44:	4fc5      	ldr	r7, [pc, #788]	; (8005d5c <_malloc_r+0x338>)
 8005a46:	443b      	add	r3, r7
 8005a48:	f1a3 0208 	sub.w	r2, r3, #8
 8005a4c:	685c      	ldr	r4, [r3, #4]
 8005a4e:	4294      	cmp	r4, r2
 8005a50:	f000 8166 	beq.w	8005d20 <_malloc_r+0x2fc>
 8005a54:	6863      	ldr	r3, [r4, #4]
 8005a56:	f023 0303 	bic.w	r3, r3, #3
 8005a5a:	4423      	add	r3, r4
 8005a5c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005a60:	685a      	ldr	r2, [r3, #4]
 8005a62:	60e9      	str	r1, [r5, #12]
 8005a64:	f042 0201 	orr.w	r2, r2, #1
 8005a68:	608d      	str	r5, [r1, #8]
 8005a6a:	4630      	mov	r0, r6
 8005a6c:	605a      	str	r2, [r3, #4]
 8005a6e:	f000 fae7 	bl	8006040 <__malloc_unlock>
 8005a72:	3408      	adds	r4, #8
 8005a74:	4620      	mov	r0, r4
 8005a76:	b003      	add	sp, #12
 8005a78:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a7c:	f035 0507 	bics.w	r5, r5, #7
 8005a80:	f100 8094 	bmi.w	8005bac <_malloc_r+0x188>
 8005a84:	42a9      	cmp	r1, r5
 8005a86:	f200 8091 	bhi.w	8005bac <_malloc_r+0x188>
 8005a8a:	f000 fad3 	bl	8006034 <__malloc_lock>
 8005a8e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005a92:	f0c0 8183 	bcc.w	8005d9c <_malloc_r+0x378>
 8005a96:	0a6b      	lsrs	r3, r5, #9
 8005a98:	f000 808f 	beq.w	8005bba <_malloc_r+0x196>
 8005a9c:	2b04      	cmp	r3, #4
 8005a9e:	f200 8146 	bhi.w	8005d2e <_malloc_r+0x30a>
 8005aa2:	09ab      	lsrs	r3, r5, #6
 8005aa4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005aa8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005aac:	00c3      	lsls	r3, r0, #3
 8005aae:	4fab      	ldr	r7, [pc, #684]	; (8005d5c <_malloc_r+0x338>)
 8005ab0:	443b      	add	r3, r7
 8005ab2:	f1a3 0108 	sub.w	r1, r3, #8
 8005ab6:	685c      	ldr	r4, [r3, #4]
 8005ab8:	42a1      	cmp	r1, r4
 8005aba:	d106      	bne.n	8005aca <_malloc_r+0xa6>
 8005abc:	e00c      	b.n	8005ad8 <_malloc_r+0xb4>
 8005abe:	2a00      	cmp	r2, #0
 8005ac0:	f280 811d 	bge.w	8005cfe <_malloc_r+0x2da>
 8005ac4:	68e4      	ldr	r4, [r4, #12]
 8005ac6:	42a1      	cmp	r1, r4
 8005ac8:	d006      	beq.n	8005ad8 <_malloc_r+0xb4>
 8005aca:	6863      	ldr	r3, [r4, #4]
 8005acc:	f023 0303 	bic.w	r3, r3, #3
 8005ad0:	1b5a      	subs	r2, r3, r5
 8005ad2:	2a0f      	cmp	r2, #15
 8005ad4:	ddf3      	ble.n	8005abe <_malloc_r+0x9a>
 8005ad6:	4660      	mov	r0, ip
 8005ad8:	693c      	ldr	r4, [r7, #16]
 8005ada:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005d70 <_malloc_r+0x34c>
 8005ade:	4564      	cmp	r4, ip
 8005ae0:	d071      	beq.n	8005bc6 <_malloc_r+0x1a2>
 8005ae2:	6863      	ldr	r3, [r4, #4]
 8005ae4:	f023 0303 	bic.w	r3, r3, #3
 8005ae8:	1b5a      	subs	r2, r3, r5
 8005aea:	2a0f      	cmp	r2, #15
 8005aec:	f300 8144 	bgt.w	8005d78 <_malloc_r+0x354>
 8005af0:	2a00      	cmp	r2, #0
 8005af2:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005af6:	f280 8126 	bge.w	8005d46 <_malloc_r+0x322>
 8005afa:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005afe:	f080 8169 	bcs.w	8005dd4 <_malloc_r+0x3b0>
 8005b02:	08db      	lsrs	r3, r3, #3
 8005b04:	1c59      	adds	r1, r3, #1
 8005b06:	687a      	ldr	r2, [r7, #4]
 8005b08:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005b0c:	f8c4 8008 	str.w	r8, [r4, #8]
 8005b10:	f04f 0e01 	mov.w	lr, #1
 8005b14:	109b      	asrs	r3, r3, #2
 8005b16:	fa0e f303 	lsl.w	r3, lr, r3
 8005b1a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005b1e:	4313      	orrs	r3, r2
 8005b20:	f1ae 0208 	sub.w	r2, lr, #8
 8005b24:	60e2      	str	r2, [r4, #12]
 8005b26:	607b      	str	r3, [r7, #4]
 8005b28:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005b2c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005b30:	1082      	asrs	r2, r0, #2
 8005b32:	2401      	movs	r4, #1
 8005b34:	4094      	lsls	r4, r2
 8005b36:	429c      	cmp	r4, r3
 8005b38:	d84b      	bhi.n	8005bd2 <_malloc_r+0x1ae>
 8005b3a:	421c      	tst	r4, r3
 8005b3c:	d106      	bne.n	8005b4c <_malloc_r+0x128>
 8005b3e:	f020 0003 	bic.w	r0, r0, #3
 8005b42:	0064      	lsls	r4, r4, #1
 8005b44:	421c      	tst	r4, r3
 8005b46:	f100 0004 	add.w	r0, r0, #4
 8005b4a:	d0fa      	beq.n	8005b42 <_malloc_r+0x11e>
 8005b4c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005b50:	46ce      	mov	lr, r9
 8005b52:	4680      	mov	r8, r0
 8005b54:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005b58:	459e      	cmp	lr, r3
 8005b5a:	d107      	bne.n	8005b6c <_malloc_r+0x148>
 8005b5c:	e122      	b.n	8005da4 <_malloc_r+0x380>
 8005b5e:	2a00      	cmp	r2, #0
 8005b60:	f280 8129 	bge.w	8005db6 <_malloc_r+0x392>
 8005b64:	68db      	ldr	r3, [r3, #12]
 8005b66:	459e      	cmp	lr, r3
 8005b68:	f000 811c 	beq.w	8005da4 <_malloc_r+0x380>
 8005b6c:	6859      	ldr	r1, [r3, #4]
 8005b6e:	f021 0103 	bic.w	r1, r1, #3
 8005b72:	1b4a      	subs	r2, r1, r5
 8005b74:	2a0f      	cmp	r2, #15
 8005b76:	ddf2      	ble.n	8005b5e <_malloc_r+0x13a>
 8005b78:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005b7c:	195c      	adds	r4, r3, r5
 8005b7e:	f045 0501 	orr.w	r5, r5, #1
 8005b82:	605d      	str	r5, [r3, #4]
 8005b84:	f042 0501 	orr.w	r5, r2, #1
 8005b88:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005b8c:	4630      	mov	r0, r6
 8005b8e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005b92:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005b96:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005b9a:	6065      	str	r5, [r4, #4]
 8005b9c:	505a      	str	r2, [r3, r1]
 8005b9e:	9301      	str	r3, [sp, #4]
 8005ba0:	f000 fa4e 	bl	8006040 <__malloc_unlock>
 8005ba4:	9b01      	ldr	r3, [sp, #4]
 8005ba6:	f103 0408 	add.w	r4, r3, #8
 8005baa:	e763      	b.n	8005a74 <_malloc_r+0x50>
 8005bac:	2400      	movs	r4, #0
 8005bae:	230c      	movs	r3, #12
 8005bb0:	4620      	mov	r0, r4
 8005bb2:	6033      	str	r3, [r6, #0]
 8005bb4:	b003      	add	sp, #12
 8005bb6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005bba:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005bbe:	2040      	movs	r0, #64	; 0x40
 8005bc0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005bc4:	e773      	b.n	8005aae <_malloc_r+0x8a>
 8005bc6:	687b      	ldr	r3, [r7, #4]
 8005bc8:	1082      	asrs	r2, r0, #2
 8005bca:	2401      	movs	r4, #1
 8005bcc:	4094      	lsls	r4, r2
 8005bce:	429c      	cmp	r4, r3
 8005bd0:	d9b3      	bls.n	8005b3a <_malloc_r+0x116>
 8005bd2:	68bc      	ldr	r4, [r7, #8]
 8005bd4:	6863      	ldr	r3, [r4, #4]
 8005bd6:	f023 0903 	bic.w	r9, r3, #3
 8005bda:	45a9      	cmp	r9, r5
 8005bdc:	d303      	bcc.n	8005be6 <_malloc_r+0x1c2>
 8005bde:	eba9 0305 	sub.w	r3, r9, r5
 8005be2:	2b0f      	cmp	r3, #15
 8005be4:	dc7b      	bgt.n	8005cde <_malloc_r+0x2ba>
 8005be6:	4b5e      	ldr	r3, [pc, #376]	; (8005d60 <_malloc_r+0x33c>)
 8005be8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005d74 <_malloc_r+0x350>
 8005bec:	681a      	ldr	r2, [r3, #0]
 8005bee:	f8da 3000 	ldr.w	r3, [sl]
 8005bf2:	3301      	adds	r3, #1
 8005bf4:	eb05 0802 	add.w	r8, r5, r2
 8005bf8:	f000 8148 	beq.w	8005e8c <_malloc_r+0x468>
 8005bfc:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005c00:	f108 080f 	add.w	r8, r8, #15
 8005c04:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005c08:	f028 080f 	bic.w	r8, r8, #15
 8005c0c:	4641      	mov	r1, r8
 8005c0e:	4630      	mov	r0, r6
 8005c10:	f000 ff08 	bl	8006a24 <_sbrk_r>
 8005c14:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005c18:	4683      	mov	fp, r0
 8005c1a:	f000 8104 	beq.w	8005e26 <_malloc_r+0x402>
 8005c1e:	eb04 0009 	add.w	r0, r4, r9
 8005c22:	4558      	cmp	r0, fp
 8005c24:	f200 80fd 	bhi.w	8005e22 <_malloc_r+0x3fe>
 8005c28:	4a4e      	ldr	r2, [pc, #312]	; (8005d64 <_malloc_r+0x340>)
 8005c2a:	6813      	ldr	r3, [r2, #0]
 8005c2c:	4443      	add	r3, r8
 8005c2e:	6013      	str	r3, [r2, #0]
 8005c30:	f000 814d 	beq.w	8005ece <_malloc_r+0x4aa>
 8005c34:	f8da 1000 	ldr.w	r1, [sl]
 8005c38:	3101      	adds	r1, #1
 8005c3a:	bf1b      	ittet	ne
 8005c3c:	ebab 0000 	subne.w	r0, fp, r0
 8005c40:	181b      	addne	r3, r3, r0
 8005c42:	f8ca b000 	streq.w	fp, [sl]
 8005c46:	6013      	strne	r3, [r2, #0]
 8005c48:	f01b 0307 	ands.w	r3, fp, #7
 8005c4c:	f000 8134 	beq.w	8005eb8 <_malloc_r+0x494>
 8005c50:	f1c3 0108 	rsb	r1, r3, #8
 8005c54:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005c58:	448b      	add	fp, r1
 8005c5a:	3308      	adds	r3, #8
 8005c5c:	44d8      	add	r8, fp
 8005c5e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005c62:	eba3 0808 	sub.w	r8, r3, r8
 8005c66:	4641      	mov	r1, r8
 8005c68:	4630      	mov	r0, r6
 8005c6a:	9201      	str	r2, [sp, #4]
 8005c6c:	f000 feda 	bl	8006a24 <_sbrk_r>
 8005c70:	1c43      	adds	r3, r0, #1
 8005c72:	9a01      	ldr	r2, [sp, #4]
 8005c74:	f000 8146 	beq.w	8005f04 <_malloc_r+0x4e0>
 8005c78:	eba0 010b 	sub.w	r1, r0, fp
 8005c7c:	4441      	add	r1, r8
 8005c7e:	f041 0101 	orr.w	r1, r1, #1
 8005c82:	6813      	ldr	r3, [r2, #0]
 8005c84:	f8c7 b008 	str.w	fp, [r7, #8]
 8005c88:	4443      	add	r3, r8
 8005c8a:	42bc      	cmp	r4, r7
 8005c8c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005c90:	6013      	str	r3, [r2, #0]
 8005c92:	d015      	beq.n	8005cc0 <_malloc_r+0x29c>
 8005c94:	f1b9 0f0f 	cmp.w	r9, #15
 8005c98:	f240 8130 	bls.w	8005efc <_malloc_r+0x4d8>
 8005c9c:	6860      	ldr	r0, [r4, #4]
 8005c9e:	f1a9 010c 	sub.w	r1, r9, #12
 8005ca2:	f021 0107 	bic.w	r1, r1, #7
 8005ca6:	f000 0001 	and.w	r0, r0, #1
 8005caa:	eb04 0c01 	add.w	ip, r4, r1
 8005cae:	4308      	orrs	r0, r1
 8005cb0:	f04f 0e05 	mov.w	lr, #5
 8005cb4:	290f      	cmp	r1, #15
 8005cb6:	6060      	str	r0, [r4, #4]
 8005cb8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005cbc:	f200 813a 	bhi.w	8005f34 <_malloc_r+0x510>
 8005cc0:	4a29      	ldr	r2, [pc, #164]	; (8005d68 <_malloc_r+0x344>)
 8005cc2:	482a      	ldr	r0, [pc, #168]	; (8005d6c <_malloc_r+0x348>)
 8005cc4:	6811      	ldr	r1, [r2, #0]
 8005cc6:	68bc      	ldr	r4, [r7, #8]
 8005cc8:	428b      	cmp	r3, r1
 8005cca:	6801      	ldr	r1, [r0, #0]
 8005ccc:	bf88      	it	hi
 8005cce:	6013      	strhi	r3, [r2, #0]
 8005cd0:	6862      	ldr	r2, [r4, #4]
 8005cd2:	428b      	cmp	r3, r1
 8005cd4:	f022 0203 	bic.w	r2, r2, #3
 8005cd8:	bf88      	it	hi
 8005cda:	6003      	strhi	r3, [r0, #0]
 8005cdc:	e0a7      	b.n	8005e2e <_malloc_r+0x40a>
 8005cde:	1962      	adds	r2, r4, r5
 8005ce0:	f043 0301 	orr.w	r3, r3, #1
 8005ce4:	f045 0501 	orr.w	r5, r5, #1
 8005ce8:	6065      	str	r5, [r4, #4]
 8005cea:	4630      	mov	r0, r6
 8005cec:	60ba      	str	r2, [r7, #8]
 8005cee:	6053      	str	r3, [r2, #4]
 8005cf0:	f000 f9a6 	bl	8006040 <__malloc_unlock>
 8005cf4:	3408      	adds	r4, #8
 8005cf6:	4620      	mov	r0, r4
 8005cf8:	b003      	add	sp, #12
 8005cfa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005cfe:	4423      	add	r3, r4
 8005d00:	68e1      	ldr	r1, [r4, #12]
 8005d02:	685a      	ldr	r2, [r3, #4]
 8005d04:	68a5      	ldr	r5, [r4, #8]
 8005d06:	f042 0201 	orr.w	r2, r2, #1
 8005d0a:	60e9      	str	r1, [r5, #12]
 8005d0c:	4630      	mov	r0, r6
 8005d0e:	608d      	str	r5, [r1, #8]
 8005d10:	605a      	str	r2, [r3, #4]
 8005d12:	f000 f995 	bl	8006040 <__malloc_unlock>
 8005d16:	3408      	adds	r4, #8
 8005d18:	4620      	mov	r0, r4
 8005d1a:	b003      	add	sp, #12
 8005d1c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d20:	68dc      	ldr	r4, [r3, #12]
 8005d22:	42a3      	cmp	r3, r4
 8005d24:	bf08      	it	eq
 8005d26:	3002      	addeq	r0, #2
 8005d28:	f43f aed6 	beq.w	8005ad8 <_malloc_r+0xb4>
 8005d2c:	e692      	b.n	8005a54 <_malloc_r+0x30>
 8005d2e:	2b14      	cmp	r3, #20
 8005d30:	d971      	bls.n	8005e16 <_malloc_r+0x3f2>
 8005d32:	2b54      	cmp	r3, #84	; 0x54
 8005d34:	f200 80ad 	bhi.w	8005e92 <_malloc_r+0x46e>
 8005d38:	0b2b      	lsrs	r3, r5, #12
 8005d3a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005d3e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005d42:	00c3      	lsls	r3, r0, #3
 8005d44:	e6b3      	b.n	8005aae <_malloc_r+0x8a>
 8005d46:	4423      	add	r3, r4
 8005d48:	4630      	mov	r0, r6
 8005d4a:	685a      	ldr	r2, [r3, #4]
 8005d4c:	f042 0201 	orr.w	r2, r2, #1
 8005d50:	605a      	str	r2, [r3, #4]
 8005d52:	3408      	adds	r4, #8
 8005d54:	f000 f974 	bl	8006040 <__malloc_unlock>
 8005d58:	e68c      	b.n	8005a74 <_malloc_r+0x50>
 8005d5a:	bf00      	nop
 8005d5c:	2000044c 	.word	0x2000044c
 8005d60:	20000a9c 	.word	0x20000a9c
 8005d64:	20000a6c 	.word	0x20000a6c
 8005d68:	20000a94 	.word	0x20000a94
 8005d6c:	20000a98 	.word	0x20000a98
 8005d70:	20000454 	.word	0x20000454
 8005d74:	20000854 	.word	0x20000854
 8005d78:	1961      	adds	r1, r4, r5
 8005d7a:	f045 0e01 	orr.w	lr, r5, #1
 8005d7e:	f042 0501 	orr.w	r5, r2, #1
 8005d82:	f8c4 e004 	str.w	lr, [r4, #4]
 8005d86:	4630      	mov	r0, r6
 8005d88:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005d8c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005d90:	604d      	str	r5, [r1, #4]
 8005d92:	50e2      	str	r2, [r4, r3]
 8005d94:	f000 f954 	bl	8006040 <__malloc_unlock>
 8005d98:	3408      	adds	r4, #8
 8005d9a:	e66b      	b.n	8005a74 <_malloc_r+0x50>
 8005d9c:	08e8      	lsrs	r0, r5, #3
 8005d9e:	f105 0308 	add.w	r3, r5, #8
 8005da2:	e64f      	b.n	8005a44 <_malloc_r+0x20>
 8005da4:	f108 0801 	add.w	r8, r8, #1
 8005da8:	f018 0f03 	tst.w	r8, #3
 8005dac:	f10e 0e08 	add.w	lr, lr, #8
 8005db0:	f47f aed0 	bne.w	8005b54 <_malloc_r+0x130>
 8005db4:	e052      	b.n	8005e5c <_malloc_r+0x438>
 8005db6:	4419      	add	r1, r3
 8005db8:	461c      	mov	r4, r3
 8005dba:	684a      	ldr	r2, [r1, #4]
 8005dbc:	68db      	ldr	r3, [r3, #12]
 8005dbe:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005dc2:	f042 0201 	orr.w	r2, r2, #1
 8005dc6:	604a      	str	r2, [r1, #4]
 8005dc8:	4630      	mov	r0, r6
 8005dca:	60eb      	str	r3, [r5, #12]
 8005dcc:	609d      	str	r5, [r3, #8]
 8005dce:	f000 f937 	bl	8006040 <__malloc_unlock>
 8005dd2:	e64f      	b.n	8005a74 <_malloc_r+0x50>
 8005dd4:	0a5a      	lsrs	r2, r3, #9
 8005dd6:	2a04      	cmp	r2, #4
 8005dd8:	d935      	bls.n	8005e46 <_malloc_r+0x422>
 8005dda:	2a14      	cmp	r2, #20
 8005ddc:	d86f      	bhi.n	8005ebe <_malloc_r+0x49a>
 8005dde:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005de2:	00c9      	lsls	r1, r1, #3
 8005de4:	325b      	adds	r2, #91	; 0x5b
 8005de6:	eb07 0e01 	add.w	lr, r7, r1
 8005dea:	5879      	ldr	r1, [r7, r1]
 8005dec:	f1ae 0e08 	sub.w	lr, lr, #8
 8005df0:	458e      	cmp	lr, r1
 8005df2:	d058      	beq.n	8005ea6 <_malloc_r+0x482>
 8005df4:	684a      	ldr	r2, [r1, #4]
 8005df6:	f022 0203 	bic.w	r2, r2, #3
 8005dfa:	429a      	cmp	r2, r3
 8005dfc:	d902      	bls.n	8005e04 <_malloc_r+0x3e0>
 8005dfe:	6889      	ldr	r1, [r1, #8]
 8005e00:	458e      	cmp	lr, r1
 8005e02:	d1f7      	bne.n	8005df4 <_malloc_r+0x3d0>
 8005e04:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005e08:	687b      	ldr	r3, [r7, #4]
 8005e0a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005e0e:	f8ce 4008 	str.w	r4, [lr, #8]
 8005e12:	60cc      	str	r4, [r1, #12]
 8005e14:	e68c      	b.n	8005b30 <_malloc_r+0x10c>
 8005e16:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005e1a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005e1e:	00c3      	lsls	r3, r0, #3
 8005e20:	e645      	b.n	8005aae <_malloc_r+0x8a>
 8005e22:	42bc      	cmp	r4, r7
 8005e24:	d072      	beq.n	8005f0c <_malloc_r+0x4e8>
 8005e26:	68bc      	ldr	r4, [r7, #8]
 8005e28:	6862      	ldr	r2, [r4, #4]
 8005e2a:	f022 0203 	bic.w	r2, r2, #3
 8005e2e:	4295      	cmp	r5, r2
 8005e30:	eba2 0305 	sub.w	r3, r2, r5
 8005e34:	d802      	bhi.n	8005e3c <_malloc_r+0x418>
 8005e36:	2b0f      	cmp	r3, #15
 8005e38:	f73f af51 	bgt.w	8005cde <_malloc_r+0x2ba>
 8005e3c:	4630      	mov	r0, r6
 8005e3e:	f000 f8ff 	bl	8006040 <__malloc_unlock>
 8005e42:	2400      	movs	r4, #0
 8005e44:	e616      	b.n	8005a74 <_malloc_r+0x50>
 8005e46:	099a      	lsrs	r2, r3, #6
 8005e48:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005e4c:	00c9      	lsls	r1, r1, #3
 8005e4e:	3238      	adds	r2, #56	; 0x38
 8005e50:	e7c9      	b.n	8005de6 <_malloc_r+0x3c2>
 8005e52:	f8d9 9000 	ldr.w	r9, [r9]
 8005e56:	4599      	cmp	r9, r3
 8005e58:	f040 8083 	bne.w	8005f62 <_malloc_r+0x53e>
 8005e5c:	f010 0f03 	tst.w	r0, #3
 8005e60:	f1a9 0308 	sub.w	r3, r9, #8
 8005e64:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005e68:	d1f3      	bne.n	8005e52 <_malloc_r+0x42e>
 8005e6a:	687b      	ldr	r3, [r7, #4]
 8005e6c:	ea23 0304 	bic.w	r3, r3, r4
 8005e70:	607b      	str	r3, [r7, #4]
 8005e72:	0064      	lsls	r4, r4, #1
 8005e74:	429c      	cmp	r4, r3
 8005e76:	f63f aeac 	bhi.w	8005bd2 <_malloc_r+0x1ae>
 8005e7a:	b91c      	cbnz	r4, 8005e84 <_malloc_r+0x460>
 8005e7c:	e6a9      	b.n	8005bd2 <_malloc_r+0x1ae>
 8005e7e:	0064      	lsls	r4, r4, #1
 8005e80:	f108 0804 	add.w	r8, r8, #4
 8005e84:	421c      	tst	r4, r3
 8005e86:	d0fa      	beq.n	8005e7e <_malloc_r+0x45a>
 8005e88:	4640      	mov	r0, r8
 8005e8a:	e65f      	b.n	8005b4c <_malloc_r+0x128>
 8005e8c:	f108 0810 	add.w	r8, r8, #16
 8005e90:	e6bc      	b.n	8005c0c <_malloc_r+0x1e8>
 8005e92:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005e96:	d826      	bhi.n	8005ee6 <_malloc_r+0x4c2>
 8005e98:	0beb      	lsrs	r3, r5, #15
 8005e9a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005e9e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005ea2:	00c3      	lsls	r3, r0, #3
 8005ea4:	e603      	b.n	8005aae <_malloc_r+0x8a>
 8005ea6:	687b      	ldr	r3, [r7, #4]
 8005ea8:	1092      	asrs	r2, r2, #2
 8005eaa:	f04f 0801 	mov.w	r8, #1
 8005eae:	fa08 f202 	lsl.w	r2, r8, r2
 8005eb2:	4313      	orrs	r3, r2
 8005eb4:	607b      	str	r3, [r7, #4]
 8005eb6:	e7a8      	b.n	8005e0a <_malloc_r+0x3e6>
 8005eb8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005ebc:	e6ce      	b.n	8005c5c <_malloc_r+0x238>
 8005ebe:	2a54      	cmp	r2, #84	; 0x54
 8005ec0:	d829      	bhi.n	8005f16 <_malloc_r+0x4f2>
 8005ec2:	0b1a      	lsrs	r2, r3, #12
 8005ec4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005ec8:	00c9      	lsls	r1, r1, #3
 8005eca:	326e      	adds	r2, #110	; 0x6e
 8005ecc:	e78b      	b.n	8005de6 <_malloc_r+0x3c2>
 8005ece:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005ed2:	2900      	cmp	r1, #0
 8005ed4:	f47f aeae 	bne.w	8005c34 <_malloc_r+0x210>
 8005ed8:	eb09 0208 	add.w	r2, r9, r8
 8005edc:	68b9      	ldr	r1, [r7, #8]
 8005ede:	f042 0201 	orr.w	r2, r2, #1
 8005ee2:	604a      	str	r2, [r1, #4]
 8005ee4:	e6ec      	b.n	8005cc0 <_malloc_r+0x29c>
 8005ee6:	f240 5254 	movw	r2, #1364	; 0x554
 8005eea:	4293      	cmp	r3, r2
 8005eec:	d81c      	bhi.n	8005f28 <_malloc_r+0x504>
 8005eee:	0cab      	lsrs	r3, r5, #18
 8005ef0:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005ef4:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005ef8:	00c3      	lsls	r3, r0, #3
 8005efa:	e5d8      	b.n	8005aae <_malloc_r+0x8a>
 8005efc:	2301      	movs	r3, #1
 8005efe:	f8cb 3004 	str.w	r3, [fp, #4]
 8005f02:	e79b      	b.n	8005e3c <_malloc_r+0x418>
 8005f04:	2101      	movs	r1, #1
 8005f06:	f04f 0800 	mov.w	r8, #0
 8005f0a:	e6ba      	b.n	8005c82 <_malloc_r+0x25e>
 8005f0c:	4a16      	ldr	r2, [pc, #88]	; (8005f68 <_malloc_r+0x544>)
 8005f0e:	6813      	ldr	r3, [r2, #0]
 8005f10:	4443      	add	r3, r8
 8005f12:	6013      	str	r3, [r2, #0]
 8005f14:	e68e      	b.n	8005c34 <_malloc_r+0x210>
 8005f16:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005f1a:	d814      	bhi.n	8005f46 <_malloc_r+0x522>
 8005f1c:	0bda      	lsrs	r2, r3, #15
 8005f1e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005f22:	00c9      	lsls	r1, r1, #3
 8005f24:	3277      	adds	r2, #119	; 0x77
 8005f26:	e75e      	b.n	8005de6 <_malloc_r+0x3c2>
 8005f28:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005f2c:	207f      	movs	r0, #127	; 0x7f
 8005f2e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005f32:	e5bc      	b.n	8005aae <_malloc_r+0x8a>
 8005f34:	f104 0108 	add.w	r1, r4, #8
 8005f38:	4630      	mov	r0, r6
 8005f3a:	9201      	str	r2, [sp, #4]
 8005f3c:	f7ff fa48 	bl	80053d0 <_free_r>
 8005f40:	9a01      	ldr	r2, [sp, #4]
 8005f42:	6813      	ldr	r3, [r2, #0]
 8005f44:	e6bc      	b.n	8005cc0 <_malloc_r+0x29c>
 8005f46:	f240 5154 	movw	r1, #1364	; 0x554
 8005f4a:	428a      	cmp	r2, r1
 8005f4c:	d805      	bhi.n	8005f5a <_malloc_r+0x536>
 8005f4e:	0c9a      	lsrs	r2, r3, #18
 8005f50:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005f54:	00c9      	lsls	r1, r1, #3
 8005f56:	327c      	adds	r2, #124	; 0x7c
 8005f58:	e745      	b.n	8005de6 <_malloc_r+0x3c2>
 8005f5a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005f5e:	227e      	movs	r2, #126	; 0x7e
 8005f60:	e741      	b.n	8005de6 <_malloc_r+0x3c2>
 8005f62:	687b      	ldr	r3, [r7, #4]
 8005f64:	e785      	b.n	8005e72 <_malloc_r+0x44e>
 8005f66:	bf00      	nop
 8005f68:	20000a6c 	.word	0x20000a6c

08005f6c <memmove>:
 8005f6c:	4288      	cmp	r0, r1
 8005f6e:	b4f0      	push	{r4, r5, r6, r7}
 8005f70:	d90d      	bls.n	8005f8e <memmove+0x22>
 8005f72:	188b      	adds	r3, r1, r2
 8005f74:	4283      	cmp	r3, r0
 8005f76:	d90a      	bls.n	8005f8e <memmove+0x22>
 8005f78:	1884      	adds	r4, r0, r2
 8005f7a:	b132      	cbz	r2, 8005f8a <memmove+0x1e>
 8005f7c:	4622      	mov	r2, r4
 8005f7e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005f82:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005f86:	4299      	cmp	r1, r3
 8005f88:	d1f9      	bne.n	8005f7e <memmove+0x12>
 8005f8a:	bcf0      	pop	{r4, r5, r6, r7}
 8005f8c:	4770      	bx	lr
 8005f8e:	2a0f      	cmp	r2, #15
 8005f90:	d949      	bls.n	8006026 <memmove+0xba>
 8005f92:	ea40 0301 	orr.w	r3, r0, r1
 8005f96:	079b      	lsls	r3, r3, #30
 8005f98:	d147      	bne.n	800602a <memmove+0xbe>
 8005f9a:	f1a2 0310 	sub.w	r3, r2, #16
 8005f9e:	091b      	lsrs	r3, r3, #4
 8005fa0:	f101 0720 	add.w	r7, r1, #32
 8005fa4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005fa8:	f101 0410 	add.w	r4, r1, #16
 8005fac:	f100 0510 	add.w	r5, r0, #16
 8005fb0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005fb4:	f845 6c10 	str.w	r6, [r5, #-16]
 8005fb8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005fbc:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005fc0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005fc4:	f845 6c08 	str.w	r6, [r5, #-8]
 8005fc8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005fcc:	f845 6c04 	str.w	r6, [r5, #-4]
 8005fd0:	3410      	adds	r4, #16
 8005fd2:	42bc      	cmp	r4, r7
 8005fd4:	f105 0510 	add.w	r5, r5, #16
 8005fd8:	d1ea      	bne.n	8005fb0 <memmove+0x44>
 8005fda:	3301      	adds	r3, #1
 8005fdc:	f002 050f 	and.w	r5, r2, #15
 8005fe0:	011b      	lsls	r3, r3, #4
 8005fe2:	2d03      	cmp	r5, #3
 8005fe4:	4419      	add	r1, r3
 8005fe6:	4403      	add	r3, r0
 8005fe8:	d921      	bls.n	800602e <memmove+0xc2>
 8005fea:	1f1f      	subs	r7, r3, #4
 8005fec:	460e      	mov	r6, r1
 8005fee:	462c      	mov	r4, r5
 8005ff0:	3c04      	subs	r4, #4
 8005ff2:	f856 cb04 	ldr.w	ip, [r6], #4
 8005ff6:	f847 cf04 	str.w	ip, [r7, #4]!
 8005ffa:	2c03      	cmp	r4, #3
 8005ffc:	d8f8      	bhi.n	8005ff0 <memmove+0x84>
 8005ffe:	1f2c      	subs	r4, r5, #4
 8006000:	f024 0403 	bic.w	r4, r4, #3
 8006004:	3404      	adds	r4, #4
 8006006:	4423      	add	r3, r4
 8006008:	4421      	add	r1, r4
 800600a:	f002 0203 	and.w	r2, r2, #3
 800600e:	2a00      	cmp	r2, #0
 8006010:	d0bb      	beq.n	8005f8a <memmove+0x1e>
 8006012:	3b01      	subs	r3, #1
 8006014:	440a      	add	r2, r1
 8006016:	f811 4b01 	ldrb.w	r4, [r1], #1
 800601a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800601e:	4291      	cmp	r1, r2
 8006020:	d1f9      	bne.n	8006016 <memmove+0xaa>
 8006022:	bcf0      	pop	{r4, r5, r6, r7}
 8006024:	4770      	bx	lr
 8006026:	4603      	mov	r3, r0
 8006028:	e7f1      	b.n	800600e <memmove+0xa2>
 800602a:	4603      	mov	r3, r0
 800602c:	e7f1      	b.n	8006012 <memmove+0xa6>
 800602e:	462a      	mov	r2, r5
 8006030:	e7ed      	b.n	800600e <memmove+0xa2>
 8006032:	bf00      	nop

08006034 <__malloc_lock>:
 8006034:	4801      	ldr	r0, [pc, #4]	; (800603c <__malloc_lock+0x8>)
 8006036:	f7ff bc79 	b.w	800592c <__retarget_lock_acquire_recursive>
 800603a:	bf00      	nop
 800603c:	20000af8 	.word	0x20000af8

08006040 <__malloc_unlock>:
 8006040:	4801      	ldr	r0, [pc, #4]	; (8006048 <__malloc_unlock+0x8>)
 8006042:	f7ff bc75 	b.w	8005930 <__retarget_lock_release_recursive>
 8006046:	bf00      	nop
 8006048:	20000af8 	.word	0x20000af8

0800604c <_Balloc>:
 800604c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800604e:	b570      	push	{r4, r5, r6, lr}
 8006050:	4605      	mov	r5, r0
 8006052:	460c      	mov	r4, r1
 8006054:	b14b      	cbz	r3, 800606a <_Balloc+0x1e>
 8006056:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800605a:	b180      	cbz	r0, 800607e <_Balloc+0x32>
 800605c:	6802      	ldr	r2, [r0, #0]
 800605e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006062:	2300      	movs	r3, #0
 8006064:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006068:	bd70      	pop	{r4, r5, r6, pc}
 800606a:	2221      	movs	r2, #33	; 0x21
 800606c:	2104      	movs	r1, #4
 800606e:	f000 fe1d 	bl	8006cac <_calloc_r>
 8006072:	4603      	mov	r3, r0
 8006074:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006076:	2800      	cmp	r0, #0
 8006078:	d1ed      	bne.n	8006056 <_Balloc+0xa>
 800607a:	2000      	movs	r0, #0
 800607c:	bd70      	pop	{r4, r5, r6, pc}
 800607e:	2101      	movs	r1, #1
 8006080:	fa01 f604 	lsl.w	r6, r1, r4
 8006084:	1d72      	adds	r2, r6, #5
 8006086:	4628      	mov	r0, r5
 8006088:	0092      	lsls	r2, r2, #2
 800608a:	f000 fe0f 	bl	8006cac <_calloc_r>
 800608e:	2800      	cmp	r0, #0
 8006090:	d0f3      	beq.n	800607a <_Balloc+0x2e>
 8006092:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8006096:	e7e4      	b.n	8006062 <_Balloc+0x16>

08006098 <_Bfree>:
 8006098:	b131      	cbz	r1, 80060a8 <_Bfree+0x10>
 800609a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800609c:	684a      	ldr	r2, [r1, #4]
 800609e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80060a2:	6008      	str	r0, [r1, #0]
 80060a4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80060a8:	4770      	bx	lr
 80060aa:	bf00      	nop

080060ac <__multadd>:
 80060ac:	b5f0      	push	{r4, r5, r6, r7, lr}
 80060ae:	690c      	ldr	r4, [r1, #16]
 80060b0:	b083      	sub	sp, #12
 80060b2:	460d      	mov	r5, r1
 80060b4:	4606      	mov	r6, r0
 80060b6:	f101 0c14 	add.w	ip, r1, #20
 80060ba:	2700      	movs	r7, #0
 80060bc:	f8dc 0000 	ldr.w	r0, [ip]
 80060c0:	b281      	uxth	r1, r0
 80060c2:	fb02 3301 	mla	r3, r2, r1, r3
 80060c6:	0c01      	lsrs	r1, r0, #16
 80060c8:	0c18      	lsrs	r0, r3, #16
 80060ca:	fb02 0101 	mla	r1, r2, r1, r0
 80060ce:	b29b      	uxth	r3, r3
 80060d0:	3701      	adds	r7, #1
 80060d2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80060d6:	42bc      	cmp	r4, r7
 80060d8:	f84c 3b04 	str.w	r3, [ip], #4
 80060dc:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80060e0:	dcec      	bgt.n	80060bc <__multadd+0x10>
 80060e2:	b13b      	cbz	r3, 80060f4 <__multadd+0x48>
 80060e4:	68aa      	ldr	r2, [r5, #8]
 80060e6:	42a2      	cmp	r2, r4
 80060e8:	dd07      	ble.n	80060fa <__multadd+0x4e>
 80060ea:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80060ee:	3401      	adds	r4, #1
 80060f0:	6153      	str	r3, [r2, #20]
 80060f2:	612c      	str	r4, [r5, #16]
 80060f4:	4628      	mov	r0, r5
 80060f6:	b003      	add	sp, #12
 80060f8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80060fa:	6869      	ldr	r1, [r5, #4]
 80060fc:	9301      	str	r3, [sp, #4]
 80060fe:	3101      	adds	r1, #1
 8006100:	4630      	mov	r0, r6
 8006102:	f7ff ffa3 	bl	800604c <_Balloc>
 8006106:	692a      	ldr	r2, [r5, #16]
 8006108:	3202      	adds	r2, #2
 800610a:	f105 010c 	add.w	r1, r5, #12
 800610e:	4607      	mov	r7, r0
 8006110:	0092      	lsls	r2, r2, #2
 8006112:	300c      	adds	r0, #12
 8006114:	f7fa f9f4 	bl	8000500 <memcpy>
 8006118:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800611a:	6869      	ldr	r1, [r5, #4]
 800611c:	9b01      	ldr	r3, [sp, #4]
 800611e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006122:	6028      	str	r0, [r5, #0]
 8006124:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006128:	463d      	mov	r5, r7
 800612a:	e7de      	b.n	80060ea <__multadd+0x3e>

0800612c <__hi0bits>:
 800612c:	0c02      	lsrs	r2, r0, #16
 800612e:	0412      	lsls	r2, r2, #16
 8006130:	4603      	mov	r3, r0
 8006132:	b9c2      	cbnz	r2, 8006166 <__hi0bits+0x3a>
 8006134:	0403      	lsls	r3, r0, #16
 8006136:	2010      	movs	r0, #16
 8006138:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800613c:	bf04      	itt	eq
 800613e:	021b      	lsleq	r3, r3, #8
 8006140:	3008      	addeq	r0, #8
 8006142:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006146:	bf04      	itt	eq
 8006148:	011b      	lsleq	r3, r3, #4
 800614a:	3004      	addeq	r0, #4
 800614c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006150:	bf04      	itt	eq
 8006152:	009b      	lsleq	r3, r3, #2
 8006154:	3002      	addeq	r0, #2
 8006156:	2b00      	cmp	r3, #0
 8006158:	db04      	blt.n	8006164 <__hi0bits+0x38>
 800615a:	005b      	lsls	r3, r3, #1
 800615c:	d501      	bpl.n	8006162 <__hi0bits+0x36>
 800615e:	3001      	adds	r0, #1
 8006160:	4770      	bx	lr
 8006162:	2020      	movs	r0, #32
 8006164:	4770      	bx	lr
 8006166:	2000      	movs	r0, #0
 8006168:	e7e6      	b.n	8006138 <__hi0bits+0xc>
 800616a:	bf00      	nop

0800616c <__lo0bits>:
 800616c:	6803      	ldr	r3, [r0, #0]
 800616e:	f013 0207 	ands.w	r2, r3, #7
 8006172:	4601      	mov	r1, r0
 8006174:	d007      	beq.n	8006186 <__lo0bits+0x1a>
 8006176:	07da      	lsls	r2, r3, #31
 8006178:	d41f      	bmi.n	80061ba <__lo0bits+0x4e>
 800617a:	0798      	lsls	r0, r3, #30
 800617c:	d51f      	bpl.n	80061be <__lo0bits+0x52>
 800617e:	085b      	lsrs	r3, r3, #1
 8006180:	600b      	str	r3, [r1, #0]
 8006182:	2001      	movs	r0, #1
 8006184:	4770      	bx	lr
 8006186:	b298      	uxth	r0, r3
 8006188:	b1a0      	cbz	r0, 80061b4 <__lo0bits+0x48>
 800618a:	4610      	mov	r0, r2
 800618c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006190:	bf04      	itt	eq
 8006192:	0a1b      	lsreq	r3, r3, #8
 8006194:	3008      	addeq	r0, #8
 8006196:	071a      	lsls	r2, r3, #28
 8006198:	bf04      	itt	eq
 800619a:	091b      	lsreq	r3, r3, #4
 800619c:	3004      	addeq	r0, #4
 800619e:	079a      	lsls	r2, r3, #30
 80061a0:	bf04      	itt	eq
 80061a2:	089b      	lsreq	r3, r3, #2
 80061a4:	3002      	addeq	r0, #2
 80061a6:	07da      	lsls	r2, r3, #31
 80061a8:	d402      	bmi.n	80061b0 <__lo0bits+0x44>
 80061aa:	085b      	lsrs	r3, r3, #1
 80061ac:	d00b      	beq.n	80061c6 <__lo0bits+0x5a>
 80061ae:	3001      	adds	r0, #1
 80061b0:	600b      	str	r3, [r1, #0]
 80061b2:	4770      	bx	lr
 80061b4:	0c1b      	lsrs	r3, r3, #16
 80061b6:	2010      	movs	r0, #16
 80061b8:	e7e8      	b.n	800618c <__lo0bits+0x20>
 80061ba:	2000      	movs	r0, #0
 80061bc:	4770      	bx	lr
 80061be:	089b      	lsrs	r3, r3, #2
 80061c0:	600b      	str	r3, [r1, #0]
 80061c2:	2002      	movs	r0, #2
 80061c4:	4770      	bx	lr
 80061c6:	2020      	movs	r0, #32
 80061c8:	4770      	bx	lr
 80061ca:	bf00      	nop

080061cc <__i2b>:
 80061cc:	b510      	push	{r4, lr}
 80061ce:	460c      	mov	r4, r1
 80061d0:	2101      	movs	r1, #1
 80061d2:	f7ff ff3b 	bl	800604c <_Balloc>
 80061d6:	2201      	movs	r2, #1
 80061d8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80061dc:	bd10      	pop	{r4, pc}
 80061de:	bf00      	nop

080061e0 <__multiply>:
 80061e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80061e4:	690e      	ldr	r6, [r1, #16]
 80061e6:	6914      	ldr	r4, [r2, #16]
 80061e8:	42a6      	cmp	r6, r4
 80061ea:	b083      	sub	sp, #12
 80061ec:	460f      	mov	r7, r1
 80061ee:	4615      	mov	r5, r2
 80061f0:	da04      	bge.n	80061fc <__multiply+0x1c>
 80061f2:	4632      	mov	r2, r6
 80061f4:	462f      	mov	r7, r5
 80061f6:	4626      	mov	r6, r4
 80061f8:	460d      	mov	r5, r1
 80061fa:	4614      	mov	r4, r2
 80061fc:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006200:	eb06 0804 	add.w	r8, r6, r4
 8006204:	4543      	cmp	r3, r8
 8006206:	bfb8      	it	lt
 8006208:	3101      	addlt	r1, #1
 800620a:	f7ff ff1f 	bl	800604c <_Balloc>
 800620e:	f100 0914 	add.w	r9, r0, #20
 8006212:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006216:	45f1      	cmp	r9, lr
 8006218:	9000      	str	r0, [sp, #0]
 800621a:	d205      	bcs.n	8006228 <__multiply+0x48>
 800621c:	464b      	mov	r3, r9
 800621e:	2200      	movs	r2, #0
 8006220:	f843 2b04 	str.w	r2, [r3], #4
 8006224:	459e      	cmp	lr, r3
 8006226:	d8fb      	bhi.n	8006220 <__multiply+0x40>
 8006228:	f105 0a14 	add.w	sl, r5, #20
 800622c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006230:	f107 0314 	add.w	r3, r7, #20
 8006234:	45a2      	cmp	sl, r4
 8006236:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800623a:	d261      	bcs.n	8006300 <__multiply+0x120>
 800623c:	1b64      	subs	r4, r4, r5
 800623e:	3c15      	subs	r4, #21
 8006240:	f024 0403 	bic.w	r4, r4, #3
 8006244:	f8cd e004 	str.w	lr, [sp, #4]
 8006248:	44a2      	add	sl, r4
 800624a:	f105 0210 	add.w	r2, r5, #16
 800624e:	469e      	mov	lr, r3
 8006250:	e005      	b.n	800625e <__multiply+0x7e>
 8006252:	0c2d      	lsrs	r5, r5, #16
 8006254:	d12b      	bne.n	80062ae <__multiply+0xce>
 8006256:	4592      	cmp	sl, r2
 8006258:	f109 0904 	add.w	r9, r9, #4
 800625c:	d04e      	beq.n	80062fc <__multiply+0x11c>
 800625e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006262:	fa1f fb85 	uxth.w	fp, r5
 8006266:	f1bb 0f00 	cmp.w	fp, #0
 800626a:	d0f2      	beq.n	8006252 <__multiply+0x72>
 800626c:	4677      	mov	r7, lr
 800626e:	464e      	mov	r6, r9
 8006270:	2000      	movs	r0, #0
 8006272:	e000      	b.n	8006276 <__multiply+0x96>
 8006274:	4626      	mov	r6, r4
 8006276:	f857 1b04 	ldr.w	r1, [r7], #4
 800627a:	6834      	ldr	r4, [r6, #0]
 800627c:	b28b      	uxth	r3, r1
 800627e:	b2a5      	uxth	r5, r4
 8006280:	0c09      	lsrs	r1, r1, #16
 8006282:	0c24      	lsrs	r4, r4, #16
 8006284:	fb0b 5303 	mla	r3, fp, r3, r5
 8006288:	4403      	add	r3, r0
 800628a:	fb0b 4001 	mla	r0, fp, r1, r4
 800628e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006292:	4634      	mov	r4, r6
 8006294:	b29b      	uxth	r3, r3
 8006296:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800629a:	45bc      	cmp	ip, r7
 800629c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80062a0:	f844 3b04 	str.w	r3, [r4], #4
 80062a4:	d8e6      	bhi.n	8006274 <__multiply+0x94>
 80062a6:	6070      	str	r0, [r6, #4]
 80062a8:	6815      	ldr	r5, [r2, #0]
 80062aa:	0c2d      	lsrs	r5, r5, #16
 80062ac:	d0d3      	beq.n	8006256 <__multiply+0x76>
 80062ae:	f8d9 3000 	ldr.w	r3, [r9]
 80062b2:	4676      	mov	r6, lr
 80062b4:	4618      	mov	r0, r3
 80062b6:	46cb      	mov	fp, r9
 80062b8:	2100      	movs	r1, #0
 80062ba:	e000      	b.n	80062be <__multiply+0xde>
 80062bc:	46a3      	mov	fp, r4
 80062be:	8834      	ldrh	r4, [r6, #0]
 80062c0:	0c00      	lsrs	r0, r0, #16
 80062c2:	fb05 0004 	mla	r0, r5, r4, r0
 80062c6:	4401      	add	r1, r0
 80062c8:	b29b      	uxth	r3, r3
 80062ca:	465c      	mov	r4, fp
 80062cc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80062d0:	f844 3b04 	str.w	r3, [r4], #4
 80062d4:	f856 3b04 	ldr.w	r3, [r6], #4
 80062d8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80062dc:	0c1b      	lsrs	r3, r3, #16
 80062de:	b287      	uxth	r7, r0
 80062e0:	fb05 7303 	mla	r3, r5, r3, r7
 80062e4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80062e8:	45b4      	cmp	ip, r6
 80062ea:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80062ee:	d8e5      	bhi.n	80062bc <__multiply+0xdc>
 80062f0:	4592      	cmp	sl, r2
 80062f2:	f8cb 3004 	str.w	r3, [fp, #4]
 80062f6:	f109 0904 	add.w	r9, r9, #4
 80062fa:	d1b0      	bne.n	800625e <__multiply+0x7e>
 80062fc:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006300:	f1b8 0f00 	cmp.w	r8, #0
 8006304:	dd0b      	ble.n	800631e <__multiply+0x13e>
 8006306:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800630a:	f1ae 0e04 	sub.w	lr, lr, #4
 800630e:	b11b      	cbz	r3, 8006318 <__multiply+0x138>
 8006310:	e005      	b.n	800631e <__multiply+0x13e>
 8006312:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006316:	b913      	cbnz	r3, 800631e <__multiply+0x13e>
 8006318:	f1b8 0801 	subs.w	r8, r8, #1
 800631c:	d1f9      	bne.n	8006312 <__multiply+0x132>
 800631e:	9800      	ldr	r0, [sp, #0]
 8006320:	f8c0 8010 	str.w	r8, [r0, #16]
 8006324:	b003      	add	sp, #12
 8006326:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800632a:	bf00      	nop

0800632c <__pow5mult>:
 800632c:	f012 0303 	ands.w	r3, r2, #3
 8006330:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006334:	4614      	mov	r4, r2
 8006336:	4607      	mov	r7, r0
 8006338:	d12e      	bne.n	8006398 <__pow5mult+0x6c>
 800633a:	460d      	mov	r5, r1
 800633c:	10a4      	asrs	r4, r4, #2
 800633e:	d01c      	beq.n	800637a <__pow5mult+0x4e>
 8006340:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006342:	b396      	cbz	r6, 80063aa <__pow5mult+0x7e>
 8006344:	07e3      	lsls	r3, r4, #31
 8006346:	f04f 0800 	mov.w	r8, #0
 800634a:	d406      	bmi.n	800635a <__pow5mult+0x2e>
 800634c:	1064      	asrs	r4, r4, #1
 800634e:	d014      	beq.n	800637a <__pow5mult+0x4e>
 8006350:	6830      	ldr	r0, [r6, #0]
 8006352:	b1a8      	cbz	r0, 8006380 <__pow5mult+0x54>
 8006354:	4606      	mov	r6, r0
 8006356:	07e3      	lsls	r3, r4, #31
 8006358:	d5f8      	bpl.n	800634c <__pow5mult+0x20>
 800635a:	4632      	mov	r2, r6
 800635c:	4629      	mov	r1, r5
 800635e:	4638      	mov	r0, r7
 8006360:	f7ff ff3e 	bl	80061e0 <__multiply>
 8006364:	b1b5      	cbz	r5, 8006394 <__pow5mult+0x68>
 8006366:	686a      	ldr	r2, [r5, #4]
 8006368:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800636a:	1064      	asrs	r4, r4, #1
 800636c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006370:	6029      	str	r1, [r5, #0]
 8006372:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006376:	4605      	mov	r5, r0
 8006378:	d1ea      	bne.n	8006350 <__pow5mult+0x24>
 800637a:	4628      	mov	r0, r5
 800637c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006380:	4632      	mov	r2, r6
 8006382:	4631      	mov	r1, r6
 8006384:	4638      	mov	r0, r7
 8006386:	f7ff ff2b 	bl	80061e0 <__multiply>
 800638a:	6030      	str	r0, [r6, #0]
 800638c:	f8c0 8000 	str.w	r8, [r0]
 8006390:	4606      	mov	r6, r0
 8006392:	e7e0      	b.n	8006356 <__pow5mult+0x2a>
 8006394:	4605      	mov	r5, r0
 8006396:	e7d9      	b.n	800634c <__pow5mult+0x20>
 8006398:	3b01      	subs	r3, #1
 800639a:	4a0b      	ldr	r2, [pc, #44]	; (80063c8 <__pow5mult+0x9c>)
 800639c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80063a0:	2300      	movs	r3, #0
 80063a2:	f7ff fe83 	bl	80060ac <__multadd>
 80063a6:	4605      	mov	r5, r0
 80063a8:	e7c8      	b.n	800633c <__pow5mult+0x10>
 80063aa:	2101      	movs	r1, #1
 80063ac:	4638      	mov	r0, r7
 80063ae:	f7ff fe4d 	bl	800604c <_Balloc>
 80063b2:	f240 2371 	movw	r3, #625	; 0x271
 80063b6:	6143      	str	r3, [r0, #20]
 80063b8:	2201      	movs	r2, #1
 80063ba:	2300      	movs	r3, #0
 80063bc:	6102      	str	r2, [r0, #16]
 80063be:	4606      	mov	r6, r0
 80063c0:	64b8      	str	r0, [r7, #72]	; 0x48
 80063c2:	6003      	str	r3, [r0, #0]
 80063c4:	e7be      	b.n	8006344 <__pow5mult+0x18>
 80063c6:	bf00      	nop
 80063c8:	08007490 	.word	0x08007490

080063cc <__lshift>:
 80063cc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80063d0:	4691      	mov	r9, r2
 80063d2:	690a      	ldr	r2, [r1, #16]
 80063d4:	460e      	mov	r6, r1
 80063d6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80063da:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80063de:	eb04 0802 	add.w	r8, r4, r2
 80063e2:	f108 0501 	add.w	r5, r8, #1
 80063e6:	429d      	cmp	r5, r3
 80063e8:	4607      	mov	r7, r0
 80063ea:	dd04      	ble.n	80063f6 <__lshift+0x2a>
 80063ec:	005b      	lsls	r3, r3, #1
 80063ee:	429d      	cmp	r5, r3
 80063f0:	f101 0101 	add.w	r1, r1, #1
 80063f4:	dcfa      	bgt.n	80063ec <__lshift+0x20>
 80063f6:	4638      	mov	r0, r7
 80063f8:	f7ff fe28 	bl	800604c <_Balloc>
 80063fc:	2c00      	cmp	r4, #0
 80063fe:	f100 0314 	add.w	r3, r0, #20
 8006402:	dd37      	ble.n	8006474 <__lshift+0xa8>
 8006404:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006408:	2200      	movs	r2, #0
 800640a:	f843 2b04 	str.w	r2, [r3], #4
 800640e:	428b      	cmp	r3, r1
 8006410:	d1fb      	bne.n	800640a <__lshift+0x3e>
 8006412:	6934      	ldr	r4, [r6, #16]
 8006414:	f106 0314 	add.w	r3, r6, #20
 8006418:	f019 091f 	ands.w	r9, r9, #31
 800641c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006420:	d020      	beq.n	8006464 <__lshift+0x98>
 8006422:	f1c9 0e20 	rsb	lr, r9, #32
 8006426:	2200      	movs	r2, #0
 8006428:	e000      	b.n	800642c <__lshift+0x60>
 800642a:	4651      	mov	r1, sl
 800642c:	681c      	ldr	r4, [r3, #0]
 800642e:	468a      	mov	sl, r1
 8006430:	fa04 f409 	lsl.w	r4, r4, r9
 8006434:	4314      	orrs	r4, r2
 8006436:	f84a 4b04 	str.w	r4, [sl], #4
 800643a:	f853 2b04 	ldr.w	r2, [r3], #4
 800643e:	4563      	cmp	r3, ip
 8006440:	fa22 f20e 	lsr.w	r2, r2, lr
 8006444:	d3f1      	bcc.n	800642a <__lshift+0x5e>
 8006446:	604a      	str	r2, [r1, #4]
 8006448:	b10a      	cbz	r2, 800644e <__lshift+0x82>
 800644a:	f108 0502 	add.w	r5, r8, #2
 800644e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006450:	6872      	ldr	r2, [r6, #4]
 8006452:	3d01      	subs	r5, #1
 8006454:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006458:	6105      	str	r5, [r0, #16]
 800645a:	6031      	str	r1, [r6, #0]
 800645c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006460:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006464:	3904      	subs	r1, #4
 8006466:	f853 2b04 	ldr.w	r2, [r3], #4
 800646a:	f841 2f04 	str.w	r2, [r1, #4]!
 800646e:	459c      	cmp	ip, r3
 8006470:	d8f9      	bhi.n	8006466 <__lshift+0x9a>
 8006472:	e7ec      	b.n	800644e <__lshift+0x82>
 8006474:	4619      	mov	r1, r3
 8006476:	e7cc      	b.n	8006412 <__lshift+0x46>

08006478 <__mcmp>:
 8006478:	b430      	push	{r4, r5}
 800647a:	690b      	ldr	r3, [r1, #16]
 800647c:	4605      	mov	r5, r0
 800647e:	6900      	ldr	r0, [r0, #16]
 8006480:	1ac0      	subs	r0, r0, r3
 8006482:	d10f      	bne.n	80064a4 <__mcmp+0x2c>
 8006484:	009b      	lsls	r3, r3, #2
 8006486:	3514      	adds	r5, #20
 8006488:	3114      	adds	r1, #20
 800648a:	4419      	add	r1, r3
 800648c:	442b      	add	r3, r5
 800648e:	e001      	b.n	8006494 <__mcmp+0x1c>
 8006490:	429d      	cmp	r5, r3
 8006492:	d207      	bcs.n	80064a4 <__mcmp+0x2c>
 8006494:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006498:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800649c:	4294      	cmp	r4, r2
 800649e:	d0f7      	beq.n	8006490 <__mcmp+0x18>
 80064a0:	d302      	bcc.n	80064a8 <__mcmp+0x30>
 80064a2:	2001      	movs	r0, #1
 80064a4:	bc30      	pop	{r4, r5}
 80064a6:	4770      	bx	lr
 80064a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80064ac:	e7fa      	b.n	80064a4 <__mcmp+0x2c>
 80064ae:	bf00      	nop

080064b0 <__mdiff>:
 80064b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80064b4:	6913      	ldr	r3, [r2, #16]
 80064b6:	690d      	ldr	r5, [r1, #16]
 80064b8:	1aed      	subs	r5, r5, r3
 80064ba:	2d00      	cmp	r5, #0
 80064bc:	460e      	mov	r6, r1
 80064be:	4690      	mov	r8, r2
 80064c0:	f101 0414 	add.w	r4, r1, #20
 80064c4:	f102 0714 	add.w	r7, r2, #20
 80064c8:	d114      	bne.n	80064f4 <__mdiff+0x44>
 80064ca:	009b      	lsls	r3, r3, #2
 80064cc:	18e2      	adds	r2, r4, r3
 80064ce:	443b      	add	r3, r7
 80064d0:	e001      	b.n	80064d6 <__mdiff+0x26>
 80064d2:	42a2      	cmp	r2, r4
 80064d4:	d959      	bls.n	800658a <__mdiff+0xda>
 80064d6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80064da:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80064de:	458c      	cmp	ip, r1
 80064e0:	d0f7      	beq.n	80064d2 <__mdiff+0x22>
 80064e2:	d209      	bcs.n	80064f8 <__mdiff+0x48>
 80064e4:	4622      	mov	r2, r4
 80064e6:	4633      	mov	r3, r6
 80064e8:	463c      	mov	r4, r7
 80064ea:	4646      	mov	r6, r8
 80064ec:	4617      	mov	r7, r2
 80064ee:	4698      	mov	r8, r3
 80064f0:	2501      	movs	r5, #1
 80064f2:	e001      	b.n	80064f8 <__mdiff+0x48>
 80064f4:	dbf6      	blt.n	80064e4 <__mdiff+0x34>
 80064f6:	2500      	movs	r5, #0
 80064f8:	6871      	ldr	r1, [r6, #4]
 80064fa:	f7ff fda7 	bl	800604c <_Balloc>
 80064fe:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006502:	6936      	ldr	r6, [r6, #16]
 8006504:	60c5      	str	r5, [r0, #12]
 8006506:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800650a:	46bc      	mov	ip, r7
 800650c:	f100 0514 	add.w	r5, r0, #20
 8006510:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006514:	2300      	movs	r3, #0
 8006516:	f85c 1b04 	ldr.w	r1, [ip], #4
 800651a:	f854 8b04 	ldr.w	r8, [r4], #4
 800651e:	b28a      	uxth	r2, r1
 8006520:	fa13 f388 	uxtah	r3, r3, r8
 8006524:	0c09      	lsrs	r1, r1, #16
 8006526:	1a9a      	subs	r2, r3, r2
 8006528:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800652c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006530:	b292      	uxth	r2, r2
 8006532:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006536:	45e6      	cmp	lr, ip
 8006538:	f845 2b04 	str.w	r2, [r5], #4
 800653c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006540:	d8e9      	bhi.n	8006516 <__mdiff+0x66>
 8006542:	42a7      	cmp	r7, r4
 8006544:	d917      	bls.n	8006576 <__mdiff+0xc6>
 8006546:	46ae      	mov	lr, r5
 8006548:	46a4      	mov	ip, r4
 800654a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800654e:	fa13 f382 	uxtah	r3, r3, r2
 8006552:	1419      	asrs	r1, r3, #16
 8006554:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006558:	b29b      	uxth	r3, r3
 800655a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800655e:	4567      	cmp	r7, ip
 8006560:	f84e 2b04 	str.w	r2, [lr], #4
 8006564:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006568:	d8ef      	bhi.n	800654a <__mdiff+0x9a>
 800656a:	43e4      	mvns	r4, r4
 800656c:	4427      	add	r7, r4
 800656e:	f027 0703 	bic.w	r7, r7, #3
 8006572:	3704      	adds	r7, #4
 8006574:	443d      	add	r5, r7
 8006576:	3d04      	subs	r5, #4
 8006578:	b922      	cbnz	r2, 8006584 <__mdiff+0xd4>
 800657a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800657e:	3e01      	subs	r6, #1
 8006580:	2b00      	cmp	r3, #0
 8006582:	d0fa      	beq.n	800657a <__mdiff+0xca>
 8006584:	6106      	str	r6, [r0, #16]
 8006586:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800658a:	2100      	movs	r1, #0
 800658c:	f7ff fd5e 	bl	800604c <_Balloc>
 8006590:	2201      	movs	r2, #1
 8006592:	2300      	movs	r3, #0
 8006594:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006598:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800659c <__d2b>:
 800659c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80065a0:	460f      	mov	r7, r1
 80065a2:	b083      	sub	sp, #12
 80065a4:	2101      	movs	r1, #1
 80065a6:	ec55 4b10 	vmov	r4, r5, d0
 80065aa:	4616      	mov	r6, r2
 80065ac:	f7ff fd4e 	bl	800604c <_Balloc>
 80065b0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80065b4:	4681      	mov	r9, r0
 80065b6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80065ba:	f1b8 0f00 	cmp.w	r8, #0
 80065be:	d001      	beq.n	80065c4 <__d2b+0x28>
 80065c0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80065c4:	2c00      	cmp	r4, #0
 80065c6:	9301      	str	r3, [sp, #4]
 80065c8:	d024      	beq.n	8006614 <__d2b+0x78>
 80065ca:	a802      	add	r0, sp, #8
 80065cc:	f840 4d08 	str.w	r4, [r0, #-8]!
 80065d0:	f7ff fdcc 	bl	800616c <__lo0bits>
 80065d4:	2800      	cmp	r0, #0
 80065d6:	d136      	bne.n	8006646 <__d2b+0xaa>
 80065d8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80065dc:	f8c9 2014 	str.w	r2, [r9, #20]
 80065e0:	2b00      	cmp	r3, #0
 80065e2:	bf0c      	ite	eq
 80065e4:	2101      	moveq	r1, #1
 80065e6:	2102      	movne	r1, #2
 80065e8:	f8c9 3018 	str.w	r3, [r9, #24]
 80065ec:	f8c9 1010 	str.w	r1, [r9, #16]
 80065f0:	f1b8 0f00 	cmp.w	r8, #0
 80065f4:	d11b      	bne.n	800662e <__d2b+0x92>
 80065f6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80065fa:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80065fe:	6038      	str	r0, [r7, #0]
 8006600:	6918      	ldr	r0, [r3, #16]
 8006602:	f7ff fd93 	bl	800612c <__hi0bits>
 8006606:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800660a:	6030      	str	r0, [r6, #0]
 800660c:	4648      	mov	r0, r9
 800660e:	b003      	add	sp, #12
 8006610:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006614:	a801      	add	r0, sp, #4
 8006616:	f7ff fda9 	bl	800616c <__lo0bits>
 800661a:	9b01      	ldr	r3, [sp, #4]
 800661c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006620:	2101      	movs	r1, #1
 8006622:	3020      	adds	r0, #32
 8006624:	f8c9 1010 	str.w	r1, [r9, #16]
 8006628:	f1b8 0f00 	cmp.w	r8, #0
 800662c:	d0e3      	beq.n	80065f6 <__d2b+0x5a>
 800662e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006632:	eb08 0300 	add.w	r3, r8, r0
 8006636:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800663a:	603b      	str	r3, [r7, #0]
 800663c:	6030      	str	r0, [r6, #0]
 800663e:	4648      	mov	r0, r9
 8006640:	b003      	add	sp, #12
 8006642:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006646:	e9dd 1300 	ldrd	r1, r3, [sp]
 800664a:	f1c0 0220 	rsb	r2, r0, #32
 800664e:	fa03 f202 	lsl.w	r2, r3, r2
 8006652:	430a      	orrs	r2, r1
 8006654:	40c3      	lsrs	r3, r0
 8006656:	9301      	str	r3, [sp, #4]
 8006658:	f8c9 2014 	str.w	r2, [r9, #20]
 800665c:	e7c0      	b.n	80065e0 <__d2b+0x44>
 800665e:	bf00      	nop

08006660 <_realloc_r>:
 8006660:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006664:	4692      	mov	sl, r2
 8006666:	b083      	sub	sp, #12
 8006668:	2900      	cmp	r1, #0
 800666a:	f000 80a1 	beq.w	80067b0 <_realloc_r+0x150>
 800666e:	460d      	mov	r5, r1
 8006670:	4680      	mov	r8, r0
 8006672:	f10a 040b 	add.w	r4, sl, #11
 8006676:	f7ff fcdd 	bl	8006034 <__malloc_lock>
 800667a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800667e:	2c16      	cmp	r4, #22
 8006680:	f022 0603 	bic.w	r6, r2, #3
 8006684:	f1a5 0708 	sub.w	r7, r5, #8
 8006688:	d83e      	bhi.n	8006708 <_realloc_r+0xa8>
 800668a:	2410      	movs	r4, #16
 800668c:	4621      	mov	r1, r4
 800668e:	45a2      	cmp	sl, r4
 8006690:	d83f      	bhi.n	8006712 <_realloc_r+0xb2>
 8006692:	428e      	cmp	r6, r1
 8006694:	eb07 0906 	add.w	r9, r7, r6
 8006698:	da74      	bge.n	8006784 <_realloc_r+0x124>
 800669a:	4bc7      	ldr	r3, [pc, #796]	; (80069b8 <_realloc_r+0x358>)
 800669c:	6898      	ldr	r0, [r3, #8]
 800669e:	4548      	cmp	r0, r9
 80066a0:	f000 80aa 	beq.w	80067f8 <_realloc_r+0x198>
 80066a4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80066a8:	f020 0301 	bic.w	r3, r0, #1
 80066ac:	444b      	add	r3, r9
 80066ae:	685b      	ldr	r3, [r3, #4]
 80066b0:	07db      	lsls	r3, r3, #31
 80066b2:	f140 8083 	bpl.w	80067bc <_realloc_r+0x15c>
 80066b6:	07d2      	lsls	r2, r2, #31
 80066b8:	d534      	bpl.n	8006724 <_realloc_r+0xc4>
 80066ba:	4651      	mov	r1, sl
 80066bc:	4640      	mov	r0, r8
 80066be:	f7ff f9b1 	bl	8005a24 <_malloc_r>
 80066c2:	4682      	mov	sl, r0
 80066c4:	b1e0      	cbz	r0, 8006700 <_realloc_r+0xa0>
 80066c6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80066ca:	f023 0301 	bic.w	r3, r3, #1
 80066ce:	443b      	add	r3, r7
 80066d0:	f1a0 0208 	sub.w	r2, r0, #8
 80066d4:	4293      	cmp	r3, r2
 80066d6:	f000 80f9 	beq.w	80068cc <_realloc_r+0x26c>
 80066da:	1f32      	subs	r2, r6, #4
 80066dc:	2a24      	cmp	r2, #36	; 0x24
 80066de:	f200 8107 	bhi.w	80068f0 <_realloc_r+0x290>
 80066e2:	2a13      	cmp	r2, #19
 80066e4:	6829      	ldr	r1, [r5, #0]
 80066e6:	f200 80e6 	bhi.w	80068b6 <_realloc_r+0x256>
 80066ea:	4603      	mov	r3, r0
 80066ec:	462a      	mov	r2, r5
 80066ee:	6019      	str	r1, [r3, #0]
 80066f0:	6851      	ldr	r1, [r2, #4]
 80066f2:	6059      	str	r1, [r3, #4]
 80066f4:	6892      	ldr	r2, [r2, #8]
 80066f6:	609a      	str	r2, [r3, #8]
 80066f8:	4629      	mov	r1, r5
 80066fa:	4640      	mov	r0, r8
 80066fc:	f7fe fe68 	bl	80053d0 <_free_r>
 8006700:	4640      	mov	r0, r8
 8006702:	f7ff fc9d 	bl	8006040 <__malloc_unlock>
 8006706:	e04f      	b.n	80067a8 <_realloc_r+0x148>
 8006708:	f024 0407 	bic.w	r4, r4, #7
 800670c:	2c00      	cmp	r4, #0
 800670e:	4621      	mov	r1, r4
 8006710:	dabd      	bge.n	800668e <_realloc_r+0x2e>
 8006712:	f04f 0a00 	mov.w	sl, #0
 8006716:	230c      	movs	r3, #12
 8006718:	4650      	mov	r0, sl
 800671a:	f8c8 3000 	str.w	r3, [r8]
 800671e:	b003      	add	sp, #12
 8006720:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006724:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006728:	eba7 0b03 	sub.w	fp, r7, r3
 800672c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006730:	f022 0203 	bic.w	r2, r2, #3
 8006734:	18b3      	adds	r3, r6, r2
 8006736:	428b      	cmp	r3, r1
 8006738:	dbbf      	blt.n	80066ba <_realloc_r+0x5a>
 800673a:	46da      	mov	sl, fp
 800673c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006740:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006744:	1f32      	subs	r2, r6, #4
 8006746:	2a24      	cmp	r2, #36	; 0x24
 8006748:	60c1      	str	r1, [r0, #12]
 800674a:	eb0b 0903 	add.w	r9, fp, r3
 800674e:	6088      	str	r0, [r1, #8]
 8006750:	f200 80c6 	bhi.w	80068e0 <_realloc_r+0x280>
 8006754:	2a13      	cmp	r2, #19
 8006756:	6829      	ldr	r1, [r5, #0]
 8006758:	f240 80c0 	bls.w	80068dc <_realloc_r+0x27c>
 800675c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006760:	6869      	ldr	r1, [r5, #4]
 8006762:	f8cb 100c 	str.w	r1, [fp, #12]
 8006766:	2a1b      	cmp	r2, #27
 8006768:	68a9      	ldr	r1, [r5, #8]
 800676a:	f200 80d8 	bhi.w	800691e <_realloc_r+0x2be>
 800676e:	f10b 0210 	add.w	r2, fp, #16
 8006772:	3508      	adds	r5, #8
 8006774:	6011      	str	r1, [r2, #0]
 8006776:	6869      	ldr	r1, [r5, #4]
 8006778:	6051      	str	r1, [r2, #4]
 800677a:	68a9      	ldr	r1, [r5, #8]
 800677c:	6091      	str	r1, [r2, #8]
 800677e:	461e      	mov	r6, r3
 8006780:	465f      	mov	r7, fp
 8006782:	4655      	mov	r5, sl
 8006784:	687b      	ldr	r3, [r7, #4]
 8006786:	1b32      	subs	r2, r6, r4
 8006788:	2a0f      	cmp	r2, #15
 800678a:	f003 0301 	and.w	r3, r3, #1
 800678e:	d822      	bhi.n	80067d6 <_realloc_r+0x176>
 8006790:	4333      	orrs	r3, r6
 8006792:	607b      	str	r3, [r7, #4]
 8006794:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006798:	f043 0301 	orr.w	r3, r3, #1
 800679c:	f8c9 3004 	str.w	r3, [r9, #4]
 80067a0:	4640      	mov	r0, r8
 80067a2:	f7ff fc4d 	bl	8006040 <__malloc_unlock>
 80067a6:	46aa      	mov	sl, r5
 80067a8:	4650      	mov	r0, sl
 80067aa:	b003      	add	sp, #12
 80067ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80067b0:	4611      	mov	r1, r2
 80067b2:	b003      	add	sp, #12
 80067b4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80067b8:	f7ff b934 	b.w	8005a24 <_malloc_r>
 80067bc:	f020 0003 	bic.w	r0, r0, #3
 80067c0:	1833      	adds	r3, r6, r0
 80067c2:	428b      	cmp	r3, r1
 80067c4:	db61      	blt.n	800688a <_realloc_r+0x22a>
 80067c6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80067ca:	461e      	mov	r6, r3
 80067cc:	60ca      	str	r2, [r1, #12]
 80067ce:	eb07 0903 	add.w	r9, r7, r3
 80067d2:	6091      	str	r1, [r2, #8]
 80067d4:	e7d6      	b.n	8006784 <_realloc_r+0x124>
 80067d6:	1939      	adds	r1, r7, r4
 80067d8:	4323      	orrs	r3, r4
 80067da:	f042 0201 	orr.w	r2, r2, #1
 80067de:	607b      	str	r3, [r7, #4]
 80067e0:	604a      	str	r2, [r1, #4]
 80067e2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80067e6:	f043 0301 	orr.w	r3, r3, #1
 80067ea:	3108      	adds	r1, #8
 80067ec:	f8c9 3004 	str.w	r3, [r9, #4]
 80067f0:	4640      	mov	r0, r8
 80067f2:	f7fe fded 	bl	80053d0 <_free_r>
 80067f6:	e7d3      	b.n	80067a0 <_realloc_r+0x140>
 80067f8:	6840      	ldr	r0, [r0, #4]
 80067fa:	f020 0903 	bic.w	r9, r0, #3
 80067fe:	44b1      	add	r9, r6
 8006800:	f104 0010 	add.w	r0, r4, #16
 8006804:	4581      	cmp	r9, r0
 8006806:	da77      	bge.n	80068f8 <_realloc_r+0x298>
 8006808:	07d2      	lsls	r2, r2, #31
 800680a:	f53f af56 	bmi.w	80066ba <_realloc_r+0x5a>
 800680e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006812:	eba7 0b02 	sub.w	fp, r7, r2
 8006816:	f8db 2004 	ldr.w	r2, [fp, #4]
 800681a:	f022 0203 	bic.w	r2, r2, #3
 800681e:	4491      	add	r9, r2
 8006820:	4548      	cmp	r0, r9
 8006822:	dc87      	bgt.n	8006734 <_realloc_r+0xd4>
 8006824:	46da      	mov	sl, fp
 8006826:	f8db 100c 	ldr.w	r1, [fp, #12]
 800682a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800682e:	1f32      	subs	r2, r6, #4
 8006830:	2a24      	cmp	r2, #36	; 0x24
 8006832:	60c1      	str	r1, [r0, #12]
 8006834:	6088      	str	r0, [r1, #8]
 8006836:	f200 80a1 	bhi.w	800697c <_realloc_r+0x31c>
 800683a:	2a13      	cmp	r2, #19
 800683c:	6829      	ldr	r1, [r5, #0]
 800683e:	f240 809b 	bls.w	8006978 <_realloc_r+0x318>
 8006842:	f8cb 1008 	str.w	r1, [fp, #8]
 8006846:	6869      	ldr	r1, [r5, #4]
 8006848:	f8cb 100c 	str.w	r1, [fp, #12]
 800684c:	2a1b      	cmp	r2, #27
 800684e:	68a9      	ldr	r1, [r5, #8]
 8006850:	f200 809b 	bhi.w	800698a <_realloc_r+0x32a>
 8006854:	f10b 0210 	add.w	r2, fp, #16
 8006858:	3508      	adds	r5, #8
 800685a:	6011      	str	r1, [r2, #0]
 800685c:	6869      	ldr	r1, [r5, #4]
 800685e:	6051      	str	r1, [r2, #4]
 8006860:	68a9      	ldr	r1, [r5, #8]
 8006862:	6091      	str	r1, [r2, #8]
 8006864:	eb0b 0104 	add.w	r1, fp, r4
 8006868:	eba9 0204 	sub.w	r2, r9, r4
 800686c:	f042 0201 	orr.w	r2, r2, #1
 8006870:	6099      	str	r1, [r3, #8]
 8006872:	604a      	str	r2, [r1, #4]
 8006874:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006878:	f003 0301 	and.w	r3, r3, #1
 800687c:	431c      	orrs	r4, r3
 800687e:	4640      	mov	r0, r8
 8006880:	f8cb 4004 	str.w	r4, [fp, #4]
 8006884:	f7ff fbdc 	bl	8006040 <__malloc_unlock>
 8006888:	e78e      	b.n	80067a8 <_realloc_r+0x148>
 800688a:	07d3      	lsls	r3, r2, #31
 800688c:	f53f af15 	bmi.w	80066ba <_realloc_r+0x5a>
 8006890:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006894:	eba7 0b03 	sub.w	fp, r7, r3
 8006898:	f8db 2004 	ldr.w	r2, [fp, #4]
 800689c:	f022 0203 	bic.w	r2, r2, #3
 80068a0:	4410      	add	r0, r2
 80068a2:	1983      	adds	r3, r0, r6
 80068a4:	428b      	cmp	r3, r1
 80068a6:	f6ff af45 	blt.w	8006734 <_realloc_r+0xd4>
 80068aa:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80068ae:	46da      	mov	sl, fp
 80068b0:	60ca      	str	r2, [r1, #12]
 80068b2:	6091      	str	r1, [r2, #8]
 80068b4:	e742      	b.n	800673c <_realloc_r+0xdc>
 80068b6:	6001      	str	r1, [r0, #0]
 80068b8:	686b      	ldr	r3, [r5, #4]
 80068ba:	6043      	str	r3, [r0, #4]
 80068bc:	2a1b      	cmp	r2, #27
 80068be:	d83a      	bhi.n	8006936 <_realloc_r+0x2d6>
 80068c0:	f105 0208 	add.w	r2, r5, #8
 80068c4:	f100 0308 	add.w	r3, r0, #8
 80068c8:	68a9      	ldr	r1, [r5, #8]
 80068ca:	e710      	b.n	80066ee <_realloc_r+0x8e>
 80068cc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80068d0:	f023 0303 	bic.w	r3, r3, #3
 80068d4:	441e      	add	r6, r3
 80068d6:	eb07 0906 	add.w	r9, r7, r6
 80068da:	e753      	b.n	8006784 <_realloc_r+0x124>
 80068dc:	4652      	mov	r2, sl
 80068de:	e749      	b.n	8006774 <_realloc_r+0x114>
 80068e0:	4629      	mov	r1, r5
 80068e2:	4650      	mov	r0, sl
 80068e4:	461e      	mov	r6, r3
 80068e6:	465f      	mov	r7, fp
 80068e8:	f7ff fb40 	bl	8005f6c <memmove>
 80068ec:	4655      	mov	r5, sl
 80068ee:	e749      	b.n	8006784 <_realloc_r+0x124>
 80068f0:	4629      	mov	r1, r5
 80068f2:	f7ff fb3b 	bl	8005f6c <memmove>
 80068f6:	e6ff      	b.n	80066f8 <_realloc_r+0x98>
 80068f8:	4427      	add	r7, r4
 80068fa:	eba9 0904 	sub.w	r9, r9, r4
 80068fe:	f049 0201 	orr.w	r2, r9, #1
 8006902:	609f      	str	r7, [r3, #8]
 8006904:	607a      	str	r2, [r7, #4]
 8006906:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800690a:	f003 0301 	and.w	r3, r3, #1
 800690e:	431c      	orrs	r4, r3
 8006910:	4640      	mov	r0, r8
 8006912:	f845 4c04 	str.w	r4, [r5, #-4]
 8006916:	f7ff fb93 	bl	8006040 <__malloc_unlock>
 800691a:	46aa      	mov	sl, r5
 800691c:	e744      	b.n	80067a8 <_realloc_r+0x148>
 800691e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006922:	68e9      	ldr	r1, [r5, #12]
 8006924:	f8cb 1014 	str.w	r1, [fp, #20]
 8006928:	2a24      	cmp	r2, #36	; 0x24
 800692a:	d010      	beq.n	800694e <_realloc_r+0x2ee>
 800692c:	6929      	ldr	r1, [r5, #16]
 800692e:	f10b 0218 	add.w	r2, fp, #24
 8006932:	3510      	adds	r5, #16
 8006934:	e71e      	b.n	8006774 <_realloc_r+0x114>
 8006936:	68ab      	ldr	r3, [r5, #8]
 8006938:	6083      	str	r3, [r0, #8]
 800693a:	68eb      	ldr	r3, [r5, #12]
 800693c:	60c3      	str	r3, [r0, #12]
 800693e:	2a24      	cmp	r2, #36	; 0x24
 8006940:	d010      	beq.n	8006964 <_realloc_r+0x304>
 8006942:	f105 0210 	add.w	r2, r5, #16
 8006946:	f100 0310 	add.w	r3, r0, #16
 800694a:	6929      	ldr	r1, [r5, #16]
 800694c:	e6cf      	b.n	80066ee <_realloc_r+0x8e>
 800694e:	692a      	ldr	r2, [r5, #16]
 8006950:	f8cb 2018 	str.w	r2, [fp, #24]
 8006954:	696a      	ldr	r2, [r5, #20]
 8006956:	f8cb 201c 	str.w	r2, [fp, #28]
 800695a:	69a9      	ldr	r1, [r5, #24]
 800695c:	f10b 0220 	add.w	r2, fp, #32
 8006960:	3518      	adds	r5, #24
 8006962:	e707      	b.n	8006774 <_realloc_r+0x114>
 8006964:	692b      	ldr	r3, [r5, #16]
 8006966:	6103      	str	r3, [r0, #16]
 8006968:	696b      	ldr	r3, [r5, #20]
 800696a:	6143      	str	r3, [r0, #20]
 800696c:	69a9      	ldr	r1, [r5, #24]
 800696e:	f105 0218 	add.w	r2, r5, #24
 8006972:	f100 0318 	add.w	r3, r0, #24
 8006976:	e6ba      	b.n	80066ee <_realloc_r+0x8e>
 8006978:	4652      	mov	r2, sl
 800697a:	e76e      	b.n	800685a <_realloc_r+0x1fa>
 800697c:	4629      	mov	r1, r5
 800697e:	4650      	mov	r0, sl
 8006980:	9301      	str	r3, [sp, #4]
 8006982:	f7ff faf3 	bl	8005f6c <memmove>
 8006986:	9b01      	ldr	r3, [sp, #4]
 8006988:	e76c      	b.n	8006864 <_realloc_r+0x204>
 800698a:	f8cb 1010 	str.w	r1, [fp, #16]
 800698e:	68e9      	ldr	r1, [r5, #12]
 8006990:	f8cb 1014 	str.w	r1, [fp, #20]
 8006994:	2a24      	cmp	r2, #36	; 0x24
 8006996:	d004      	beq.n	80069a2 <_realloc_r+0x342>
 8006998:	6929      	ldr	r1, [r5, #16]
 800699a:	f10b 0218 	add.w	r2, fp, #24
 800699e:	3510      	adds	r5, #16
 80069a0:	e75b      	b.n	800685a <_realloc_r+0x1fa>
 80069a2:	692a      	ldr	r2, [r5, #16]
 80069a4:	f8cb 2018 	str.w	r2, [fp, #24]
 80069a8:	696a      	ldr	r2, [r5, #20]
 80069aa:	f8cb 201c 	str.w	r2, [fp, #28]
 80069ae:	69a9      	ldr	r1, [r5, #24]
 80069b0:	f10b 0220 	add.w	r2, fp, #32
 80069b4:	3518      	adds	r5, #24
 80069b6:	e750      	b.n	800685a <_realloc_r+0x1fa>
 80069b8:	2000044c 	.word	0x2000044c

080069bc <frexp>:
 80069bc:	ec53 2b10 	vmov	r2, r3, d0
 80069c0:	b570      	push	{r4, r5, r6, lr}
 80069c2:	4e16      	ldr	r6, [pc, #88]	; (8006a1c <frexp+0x60>)
 80069c4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80069c8:	2500      	movs	r5, #0
 80069ca:	42b1      	cmp	r1, r6
 80069cc:	4604      	mov	r4, r0
 80069ce:	6005      	str	r5, [r0, #0]
 80069d0:	dc21      	bgt.n	8006a16 <frexp+0x5a>
 80069d2:	ee10 6a10 	vmov	r6, s0
 80069d6:	430e      	orrs	r6, r1
 80069d8:	d01d      	beq.n	8006a16 <frexp+0x5a>
 80069da:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80069de:	4618      	mov	r0, r3
 80069e0:	da0c      	bge.n	80069fc <frexp+0x40>
 80069e2:	4619      	mov	r1, r3
 80069e4:	2200      	movs	r2, #0
 80069e6:	ee10 0a10 	vmov	r0, s0
 80069ea:	4b0d      	ldr	r3, [pc, #52]	; (8006a20 <frexp+0x64>)
 80069ec:	f7fa f8a4 	bl	8000b38 <__aeabi_dmul>
 80069f0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80069f4:	4602      	mov	r2, r0
 80069f6:	4608      	mov	r0, r1
 80069f8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80069fc:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006a00:	1509      	asrs	r1, r1, #20
 8006a02:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006a06:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006a0a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006a0e:	4429      	add	r1, r5
 8006a10:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006a14:	6021      	str	r1, [r4, #0]
 8006a16:	ec43 2b10 	vmov	d0, r2, r3
 8006a1a:	bd70      	pop	{r4, r5, r6, pc}
 8006a1c:	7fefffff 	.word	0x7fefffff
 8006a20:	43500000 	.word	0x43500000

08006a24 <_sbrk_r>:
 8006a24:	b538      	push	{r3, r4, r5, lr}
 8006a26:	4c07      	ldr	r4, [pc, #28]	; (8006a44 <_sbrk_r+0x20>)
 8006a28:	2300      	movs	r3, #0
 8006a2a:	4605      	mov	r5, r0
 8006a2c:	4608      	mov	r0, r1
 8006a2e:	6023      	str	r3, [r4, #0]
 8006a30:	f7fb fc35 	bl	800229e <_sbrk>
 8006a34:	1c43      	adds	r3, r0, #1
 8006a36:	d000      	beq.n	8006a3a <_sbrk_r+0x16>
 8006a38:	bd38      	pop	{r3, r4, r5, pc}
 8006a3a:	6823      	ldr	r3, [r4, #0]
 8006a3c:	2b00      	cmp	r3, #0
 8006a3e:	d0fb      	beq.n	8006a38 <_sbrk_r+0x14>
 8006a40:	602b      	str	r3, [r5, #0]
 8006a42:	bd38      	pop	{r3, r4, r5, pc}
 8006a44:	20000b0c 	.word	0x20000b0c

08006a48 <__sread>:
 8006a48:	b510      	push	{r4, lr}
 8006a4a:	460c      	mov	r4, r1
 8006a4c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a50:	f000 fabc 	bl	8006fcc <_read_r>
 8006a54:	2800      	cmp	r0, #0
 8006a56:	db03      	blt.n	8006a60 <__sread+0x18>
 8006a58:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006a5a:	4403      	add	r3, r0
 8006a5c:	6523      	str	r3, [r4, #80]	; 0x50
 8006a5e:	bd10      	pop	{r4, pc}
 8006a60:	89a3      	ldrh	r3, [r4, #12]
 8006a62:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006a66:	81a3      	strh	r3, [r4, #12]
 8006a68:	bd10      	pop	{r4, pc}
 8006a6a:	bf00      	nop

08006a6c <__swrite>:
 8006a6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006a70:	4616      	mov	r6, r2
 8006a72:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006a76:	461f      	mov	r7, r3
 8006a78:	05d3      	lsls	r3, r2, #23
 8006a7a:	460c      	mov	r4, r1
 8006a7c:	4605      	mov	r5, r0
 8006a7e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a82:	d507      	bpl.n	8006a94 <__swrite+0x28>
 8006a84:	2200      	movs	r2, #0
 8006a86:	2302      	movs	r3, #2
 8006a88:	f000 fa74 	bl	8006f74 <_lseek_r>
 8006a8c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006a90:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006a94:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006a98:	81a2      	strh	r2, [r4, #12]
 8006a9a:	463b      	mov	r3, r7
 8006a9c:	4632      	mov	r2, r6
 8006a9e:	4628      	mov	r0, r5
 8006aa0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006aa4:	f000 b88c 	b.w	8006bc0 <_write_r>

08006aa8 <__sseek>:
 8006aa8:	b510      	push	{r4, lr}
 8006aaa:	460c      	mov	r4, r1
 8006aac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ab0:	f000 fa60 	bl	8006f74 <_lseek_r>
 8006ab4:	89a3      	ldrh	r3, [r4, #12]
 8006ab6:	1c42      	adds	r2, r0, #1
 8006ab8:	bf0e      	itee	eq
 8006aba:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006abe:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006ac2:	6520      	strne	r0, [r4, #80]	; 0x50
 8006ac4:	81a3      	strh	r3, [r4, #12]
 8006ac6:	bd10      	pop	{r4, pc}

08006ac8 <__sclose>:
 8006ac8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006acc:	f000 b922 	b.w	8006d14 <_close_r>

08006ad0 <strncpy>:
 8006ad0:	ea40 0301 	orr.w	r3, r0, r1
 8006ad4:	079b      	lsls	r3, r3, #30
 8006ad6:	b470      	push	{r4, r5, r6}
 8006ad8:	d12a      	bne.n	8006b30 <strncpy+0x60>
 8006ada:	2a03      	cmp	r2, #3
 8006adc:	d928      	bls.n	8006b30 <strncpy+0x60>
 8006ade:	460c      	mov	r4, r1
 8006ae0:	4603      	mov	r3, r0
 8006ae2:	4621      	mov	r1, r4
 8006ae4:	f854 6b04 	ldr.w	r6, [r4], #4
 8006ae8:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006aec:	ea25 0506 	bic.w	r5, r5, r6
 8006af0:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006af4:	d106      	bne.n	8006b04 <strncpy+0x34>
 8006af6:	3a04      	subs	r2, #4
 8006af8:	2a03      	cmp	r2, #3
 8006afa:	f843 6b04 	str.w	r6, [r3], #4
 8006afe:	4621      	mov	r1, r4
 8006b00:	d8ef      	bhi.n	8006ae2 <strncpy+0x12>
 8006b02:	b19a      	cbz	r2, 8006b2c <strncpy+0x5c>
 8006b04:	780c      	ldrb	r4, [r1, #0]
 8006b06:	701c      	strb	r4, [r3, #0]
 8006b08:	3a01      	subs	r2, #1
 8006b0a:	3301      	adds	r3, #1
 8006b0c:	b13c      	cbz	r4, 8006b1e <strncpy+0x4e>
 8006b0e:	b16a      	cbz	r2, 8006b2c <strncpy+0x5c>
 8006b10:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006b14:	f803 4b01 	strb.w	r4, [r3], #1
 8006b18:	3a01      	subs	r2, #1
 8006b1a:	2c00      	cmp	r4, #0
 8006b1c:	d1f7      	bne.n	8006b0e <strncpy+0x3e>
 8006b1e:	b12a      	cbz	r2, 8006b2c <strncpy+0x5c>
 8006b20:	441a      	add	r2, r3
 8006b22:	2100      	movs	r1, #0
 8006b24:	f803 1b01 	strb.w	r1, [r3], #1
 8006b28:	4293      	cmp	r3, r2
 8006b2a:	d1fb      	bne.n	8006b24 <strncpy+0x54>
 8006b2c:	bc70      	pop	{r4, r5, r6}
 8006b2e:	4770      	bx	lr
 8006b30:	4603      	mov	r3, r0
 8006b32:	e7e6      	b.n	8006b02 <strncpy+0x32>

08006b34 <__sprint_r.part.0>:
 8006b34:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b38:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006b3a:	049c      	lsls	r4, r3, #18
 8006b3c:	4692      	mov	sl, r2
 8006b3e:	d52d      	bpl.n	8006b9c <__sprint_r.part.0+0x68>
 8006b40:	6893      	ldr	r3, [r2, #8]
 8006b42:	6812      	ldr	r2, [r2, #0]
 8006b44:	b343      	cbz	r3, 8006b98 <__sprint_r.part.0+0x64>
 8006b46:	460e      	mov	r6, r1
 8006b48:	4607      	mov	r7, r0
 8006b4a:	f102 0908 	add.w	r9, r2, #8
 8006b4e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006b52:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006b56:	d015      	beq.n	8006b84 <__sprint_r.part.0+0x50>
 8006b58:	3d04      	subs	r5, #4
 8006b5a:	2400      	movs	r4, #0
 8006b5c:	e001      	b.n	8006b62 <__sprint_r.part.0+0x2e>
 8006b5e:	45a0      	cmp	r8, r4
 8006b60:	d00e      	beq.n	8006b80 <__sprint_r.part.0+0x4c>
 8006b62:	4632      	mov	r2, r6
 8006b64:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006b68:	4638      	mov	r0, r7
 8006b6a:	f000 f99d 	bl	8006ea8 <_fputwc_r>
 8006b6e:	1c43      	adds	r3, r0, #1
 8006b70:	f104 0401 	add.w	r4, r4, #1
 8006b74:	d1f3      	bne.n	8006b5e <__sprint_r.part.0+0x2a>
 8006b76:	2300      	movs	r3, #0
 8006b78:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b7c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b80:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006b84:	f02b 0b03 	bic.w	fp, fp, #3
 8006b88:	eba3 030b 	sub.w	r3, r3, fp
 8006b8c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006b90:	f109 0908 	add.w	r9, r9, #8
 8006b94:	2b00      	cmp	r3, #0
 8006b96:	d1da      	bne.n	8006b4e <__sprint_r.part.0+0x1a>
 8006b98:	2000      	movs	r0, #0
 8006b9a:	e7ec      	b.n	8006b76 <__sprint_r.part.0+0x42>
 8006b9c:	f7fe fd0c 	bl	80055b8 <__sfvwrite_r>
 8006ba0:	2300      	movs	r3, #0
 8006ba2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ba6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006baa:	bf00      	nop

08006bac <__sprint_r>:
 8006bac:	6893      	ldr	r3, [r2, #8]
 8006bae:	b10b      	cbz	r3, 8006bb4 <__sprint_r+0x8>
 8006bb0:	f7ff bfc0 	b.w	8006b34 <__sprint_r.part.0>
 8006bb4:	b410      	push	{r4}
 8006bb6:	4618      	mov	r0, r3
 8006bb8:	6053      	str	r3, [r2, #4]
 8006bba:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006bbe:	4770      	bx	lr

08006bc0 <_write_r>:
 8006bc0:	b570      	push	{r4, r5, r6, lr}
 8006bc2:	460d      	mov	r5, r1
 8006bc4:	4c08      	ldr	r4, [pc, #32]	; (8006be8 <_write_r+0x28>)
 8006bc6:	4611      	mov	r1, r2
 8006bc8:	4606      	mov	r6, r0
 8006bca:	461a      	mov	r2, r3
 8006bcc:	4628      	mov	r0, r5
 8006bce:	2300      	movs	r3, #0
 8006bd0:	6023      	str	r3, [r4, #0]
 8006bd2:	f7fb fb51 	bl	8002278 <_write>
 8006bd6:	1c43      	adds	r3, r0, #1
 8006bd8:	d000      	beq.n	8006bdc <_write_r+0x1c>
 8006bda:	bd70      	pop	{r4, r5, r6, pc}
 8006bdc:	6823      	ldr	r3, [r4, #0]
 8006bde:	2b00      	cmp	r3, #0
 8006be0:	d0fb      	beq.n	8006bda <_write_r+0x1a>
 8006be2:	6033      	str	r3, [r6, #0]
 8006be4:	bd70      	pop	{r4, r5, r6, pc}
 8006be6:	bf00      	nop
 8006be8:	20000b0c 	.word	0x20000b0c

08006bec <__register_exitproc>:
 8006bec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006bf0:	4d2b      	ldr	r5, [pc, #172]	; (8006ca0 <__register_exitproc+0xb4>)
 8006bf2:	4606      	mov	r6, r0
 8006bf4:	6828      	ldr	r0, [r5, #0]
 8006bf6:	4698      	mov	r8, r3
 8006bf8:	460f      	mov	r7, r1
 8006bfa:	4691      	mov	r9, r2
 8006bfc:	f7fe fe96 	bl	800592c <__retarget_lock_acquire_recursive>
 8006c00:	4b28      	ldr	r3, [pc, #160]	; (8006ca4 <__register_exitproc+0xb8>)
 8006c02:	681c      	ldr	r4, [r3, #0]
 8006c04:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006c08:	2b00      	cmp	r3, #0
 8006c0a:	d03d      	beq.n	8006c88 <__register_exitproc+0x9c>
 8006c0c:	685a      	ldr	r2, [r3, #4]
 8006c0e:	2a1f      	cmp	r2, #31
 8006c10:	dc0d      	bgt.n	8006c2e <__register_exitproc+0x42>
 8006c12:	f102 0c01 	add.w	ip, r2, #1
 8006c16:	bb16      	cbnz	r6, 8006c5e <__register_exitproc+0x72>
 8006c18:	3202      	adds	r2, #2
 8006c1a:	f8c3 c004 	str.w	ip, [r3, #4]
 8006c1e:	6828      	ldr	r0, [r5, #0]
 8006c20:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006c24:	f7fe fe84 	bl	8005930 <__retarget_lock_release_recursive>
 8006c28:	2000      	movs	r0, #0
 8006c2a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006c2e:	4b1e      	ldr	r3, [pc, #120]	; (8006ca8 <__register_exitproc+0xbc>)
 8006c30:	b37b      	cbz	r3, 8006c92 <__register_exitproc+0xa6>
 8006c32:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006c36:	f3af 8000 	nop.w
 8006c3a:	4603      	mov	r3, r0
 8006c3c:	b348      	cbz	r0, 8006c92 <__register_exitproc+0xa6>
 8006c3e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006c42:	2100      	movs	r1, #0
 8006c44:	e9c0 2100 	strd	r2, r1, [r0]
 8006c48:	f04f 0c01 	mov.w	ip, #1
 8006c4c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006c50:	460a      	mov	r2, r1
 8006c52:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006c56:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006c5a:	2e00      	cmp	r6, #0
 8006c5c:	d0dc      	beq.n	8006c18 <__register_exitproc+0x2c>
 8006c5e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006c62:	2401      	movs	r4, #1
 8006c64:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006c68:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006c6c:	4094      	lsls	r4, r2
 8006c6e:	4320      	orrs	r0, r4
 8006c70:	2e02      	cmp	r6, #2
 8006c72:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006c76:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006c7a:	d1cd      	bne.n	8006c18 <__register_exitproc+0x2c>
 8006c7c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006c80:	430c      	orrs	r4, r1
 8006c82:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006c86:	e7c7      	b.n	8006c18 <__register_exitproc+0x2c>
 8006c88:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006c8c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006c90:	e7bc      	b.n	8006c0c <__register_exitproc+0x20>
 8006c92:	6828      	ldr	r0, [r5, #0]
 8006c94:	f7fe fe4c 	bl	8005930 <__retarget_lock_release_recursive>
 8006c98:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006c9c:	e7c5      	b.n	8006c2a <__register_exitproc+0x3e>
 8006c9e:	bf00      	nop
 8006ca0:	20000448 	.word	0x20000448
 8006ca4:	08007324 	.word	0x08007324
 8006ca8:	00000000 	.word	0x00000000

08006cac <_calloc_r>:
 8006cac:	b510      	push	{r4, lr}
 8006cae:	fb02 f101 	mul.w	r1, r2, r1
 8006cb2:	f7fe feb7 	bl	8005a24 <_malloc_r>
 8006cb6:	4604      	mov	r4, r0
 8006cb8:	b1d8      	cbz	r0, 8006cf2 <_calloc_r+0x46>
 8006cba:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006cbe:	f022 0203 	bic.w	r2, r2, #3
 8006cc2:	3a04      	subs	r2, #4
 8006cc4:	2a24      	cmp	r2, #36	; 0x24
 8006cc6:	d81d      	bhi.n	8006d04 <_calloc_r+0x58>
 8006cc8:	2a13      	cmp	r2, #19
 8006cca:	d914      	bls.n	8006cf6 <_calloc_r+0x4a>
 8006ccc:	2300      	movs	r3, #0
 8006cce:	2a1b      	cmp	r2, #27
 8006cd0:	e9c0 3300 	strd	r3, r3, [r0]
 8006cd4:	d91b      	bls.n	8006d0e <_calloc_r+0x62>
 8006cd6:	2a24      	cmp	r2, #36	; 0x24
 8006cd8:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006cdc:	bf0a      	itet	eq
 8006cde:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006ce2:	f100 0210 	addne.w	r2, r0, #16
 8006ce6:	f100 0218 	addeq.w	r2, r0, #24
 8006cea:	2300      	movs	r3, #0
 8006cec:	e9c2 3300 	strd	r3, r3, [r2]
 8006cf0:	6093      	str	r3, [r2, #8]
 8006cf2:	4620      	mov	r0, r4
 8006cf4:	bd10      	pop	{r4, pc}
 8006cf6:	4602      	mov	r2, r0
 8006cf8:	2300      	movs	r3, #0
 8006cfa:	e9c2 3300 	strd	r3, r3, [r2]
 8006cfe:	6093      	str	r3, [r2, #8]
 8006d00:	4620      	mov	r0, r4
 8006d02:	bd10      	pop	{r4, pc}
 8006d04:	2100      	movs	r1, #0
 8006d06:	f7fb fb6f 	bl	80023e8 <memset>
 8006d0a:	4620      	mov	r0, r4
 8006d0c:	bd10      	pop	{r4, pc}
 8006d0e:	f100 0208 	add.w	r2, r0, #8
 8006d12:	e7f1      	b.n	8006cf8 <_calloc_r+0x4c>

08006d14 <_close_r>:
 8006d14:	b538      	push	{r3, r4, r5, lr}
 8006d16:	4c07      	ldr	r4, [pc, #28]	; (8006d34 <_close_r+0x20>)
 8006d18:	2300      	movs	r3, #0
 8006d1a:	4605      	mov	r5, r0
 8006d1c:	4608      	mov	r0, r1
 8006d1e:	6023      	str	r3, [r4, #0]
 8006d20:	f7fb fad9 	bl	80022d6 <_close>
 8006d24:	1c43      	adds	r3, r0, #1
 8006d26:	d000      	beq.n	8006d2a <_close_r+0x16>
 8006d28:	bd38      	pop	{r3, r4, r5, pc}
 8006d2a:	6823      	ldr	r3, [r4, #0]
 8006d2c:	2b00      	cmp	r3, #0
 8006d2e:	d0fb      	beq.n	8006d28 <_close_r+0x14>
 8006d30:	602b      	str	r3, [r5, #0]
 8006d32:	bd38      	pop	{r3, r4, r5, pc}
 8006d34:	20000b0c 	.word	0x20000b0c

08006d38 <_fclose_r>:
 8006d38:	b570      	push	{r4, r5, r6, lr}
 8006d3a:	2900      	cmp	r1, #0
 8006d3c:	d048      	beq.n	8006dd0 <_fclose_r+0x98>
 8006d3e:	4605      	mov	r5, r0
 8006d40:	460c      	mov	r4, r1
 8006d42:	b110      	cbz	r0, 8006d4a <_fclose_r+0x12>
 8006d44:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006d46:	2b00      	cmp	r3, #0
 8006d48:	d048      	beq.n	8006ddc <_fclose_r+0xa4>
 8006d4a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d4c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d50:	07d0      	lsls	r0, r2, #31
 8006d52:	d440      	bmi.n	8006dd6 <_fclose_r+0x9e>
 8006d54:	0599      	lsls	r1, r3, #22
 8006d56:	d530      	bpl.n	8006dba <_fclose_r+0x82>
 8006d58:	4621      	mov	r1, r4
 8006d5a:	4628      	mov	r0, r5
 8006d5c:	f7fe f990 	bl	8005080 <__sflush_r>
 8006d60:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006d62:	4606      	mov	r6, r0
 8006d64:	b133      	cbz	r3, 8006d74 <_fclose_r+0x3c>
 8006d66:	69e1      	ldr	r1, [r4, #28]
 8006d68:	4628      	mov	r0, r5
 8006d6a:	4798      	blx	r3
 8006d6c:	2800      	cmp	r0, #0
 8006d6e:	bfb8      	it	lt
 8006d70:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006d74:	89a3      	ldrh	r3, [r4, #12]
 8006d76:	061a      	lsls	r2, r3, #24
 8006d78:	d43c      	bmi.n	8006df4 <_fclose_r+0xbc>
 8006d7a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006d7c:	b141      	cbz	r1, 8006d90 <_fclose_r+0x58>
 8006d7e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006d82:	4299      	cmp	r1, r3
 8006d84:	d002      	beq.n	8006d8c <_fclose_r+0x54>
 8006d86:	4628      	mov	r0, r5
 8006d88:	f7fe fb22 	bl	80053d0 <_free_r>
 8006d8c:	2300      	movs	r3, #0
 8006d8e:	6323      	str	r3, [r4, #48]	; 0x30
 8006d90:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006d92:	b121      	cbz	r1, 8006d9e <_fclose_r+0x66>
 8006d94:	4628      	mov	r0, r5
 8006d96:	f7fe fb1b 	bl	80053d0 <_free_r>
 8006d9a:	2300      	movs	r3, #0
 8006d9c:	6463      	str	r3, [r4, #68]	; 0x44
 8006d9e:	f7fe faa1 	bl	80052e4 <__sfp_lock_acquire>
 8006da2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006da4:	2200      	movs	r2, #0
 8006da6:	07db      	lsls	r3, r3, #31
 8006da8:	81a2      	strh	r2, [r4, #12]
 8006daa:	d51f      	bpl.n	8006dec <_fclose_r+0xb4>
 8006dac:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dae:	f7fe fdbb 	bl	8005928 <__retarget_lock_close_recursive>
 8006db2:	f7fe fa9d 	bl	80052f0 <__sfp_lock_release>
 8006db6:	4630      	mov	r0, r6
 8006db8:	bd70      	pop	{r4, r5, r6, pc}
 8006dba:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dbc:	f7fe fdb6 	bl	800592c <__retarget_lock_acquire_recursive>
 8006dc0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dc4:	2b00      	cmp	r3, #0
 8006dc6:	d1c7      	bne.n	8006d58 <_fclose_r+0x20>
 8006dc8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006dca:	f016 0601 	ands.w	r6, r6, #1
 8006dce:	d016      	beq.n	8006dfe <_fclose_r+0xc6>
 8006dd0:	2600      	movs	r6, #0
 8006dd2:	4630      	mov	r0, r6
 8006dd4:	bd70      	pop	{r4, r5, r6, pc}
 8006dd6:	2b00      	cmp	r3, #0
 8006dd8:	d0fa      	beq.n	8006dd0 <_fclose_r+0x98>
 8006dda:	e7bd      	b.n	8006d58 <_fclose_r+0x20>
 8006ddc:	f7fe fa56 	bl	800528c <__sinit>
 8006de0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006de2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006de6:	07d0      	lsls	r0, r2, #31
 8006de8:	d4f5      	bmi.n	8006dd6 <_fclose_r+0x9e>
 8006dea:	e7b3      	b.n	8006d54 <_fclose_r+0x1c>
 8006dec:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dee:	f7fe fd9f 	bl	8005930 <__retarget_lock_release_recursive>
 8006df2:	e7db      	b.n	8006dac <_fclose_r+0x74>
 8006df4:	6921      	ldr	r1, [r4, #16]
 8006df6:	4628      	mov	r0, r5
 8006df8:	f7fe faea 	bl	80053d0 <_free_r>
 8006dfc:	e7bd      	b.n	8006d7a <_fclose_r+0x42>
 8006dfe:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e00:	f7fe fd96 	bl	8005930 <__retarget_lock_release_recursive>
 8006e04:	4630      	mov	r0, r6
 8006e06:	bd70      	pop	{r4, r5, r6, pc}

08006e08 <__fputwc>:
 8006e08:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006e0c:	b082      	sub	sp, #8
 8006e0e:	4681      	mov	r9, r0
 8006e10:	4688      	mov	r8, r1
 8006e12:	4614      	mov	r4, r2
 8006e14:	f000 f8a0 	bl	8006f58 <__locale_mb_cur_max>
 8006e18:	2801      	cmp	r0, #1
 8006e1a:	d103      	bne.n	8006e24 <__fputwc+0x1c>
 8006e1c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006e20:	2bfe      	cmp	r3, #254	; 0xfe
 8006e22:	d933      	bls.n	8006e8c <__fputwc+0x84>
 8006e24:	4642      	mov	r2, r8
 8006e26:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006e2a:	a901      	add	r1, sp, #4
 8006e2c:	4648      	mov	r0, r9
 8006e2e:	f000 f93b 	bl	80070a8 <_wcrtomb_r>
 8006e32:	1c42      	adds	r2, r0, #1
 8006e34:	4606      	mov	r6, r0
 8006e36:	d02f      	beq.n	8006e98 <__fputwc+0x90>
 8006e38:	b320      	cbz	r0, 8006e84 <__fputwc+0x7c>
 8006e3a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006e3e:	2500      	movs	r5, #0
 8006e40:	f10d 0a04 	add.w	sl, sp, #4
 8006e44:	e009      	b.n	8006e5a <__fputwc+0x52>
 8006e46:	6823      	ldr	r3, [r4, #0]
 8006e48:	1c5a      	adds	r2, r3, #1
 8006e4a:	6022      	str	r2, [r4, #0]
 8006e4c:	f883 c000 	strb.w	ip, [r3]
 8006e50:	3501      	adds	r5, #1
 8006e52:	42b5      	cmp	r5, r6
 8006e54:	d216      	bcs.n	8006e84 <__fputwc+0x7c>
 8006e56:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006e5a:	68a3      	ldr	r3, [r4, #8]
 8006e5c:	3b01      	subs	r3, #1
 8006e5e:	2b00      	cmp	r3, #0
 8006e60:	60a3      	str	r3, [r4, #8]
 8006e62:	daf0      	bge.n	8006e46 <__fputwc+0x3e>
 8006e64:	69a7      	ldr	r7, [r4, #24]
 8006e66:	42bb      	cmp	r3, r7
 8006e68:	4661      	mov	r1, ip
 8006e6a:	4622      	mov	r2, r4
 8006e6c:	4648      	mov	r0, r9
 8006e6e:	db02      	blt.n	8006e76 <__fputwc+0x6e>
 8006e70:	f1bc 0f0a 	cmp.w	ip, #10
 8006e74:	d1e7      	bne.n	8006e46 <__fputwc+0x3e>
 8006e76:	f000 f8bf 	bl	8006ff8 <__swbuf_r>
 8006e7a:	1c43      	adds	r3, r0, #1
 8006e7c:	d1e8      	bne.n	8006e50 <__fputwc+0x48>
 8006e7e:	b002      	add	sp, #8
 8006e80:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e84:	4640      	mov	r0, r8
 8006e86:	b002      	add	sp, #8
 8006e88:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e8c:	fa5f fc88 	uxtb.w	ip, r8
 8006e90:	4606      	mov	r6, r0
 8006e92:	f88d c004 	strb.w	ip, [sp, #4]
 8006e96:	e7d2      	b.n	8006e3e <__fputwc+0x36>
 8006e98:	89a3      	ldrh	r3, [r4, #12]
 8006e9a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006e9e:	81a3      	strh	r3, [r4, #12]
 8006ea0:	b002      	add	sp, #8
 8006ea2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006ea6:	bf00      	nop

08006ea8 <_fputwc_r>:
 8006ea8:	b530      	push	{r4, r5, lr}
 8006eaa:	4605      	mov	r5, r0
 8006eac:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006eae:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006eb2:	07c0      	lsls	r0, r0, #31
 8006eb4:	4614      	mov	r4, r2
 8006eb6:	b083      	sub	sp, #12
 8006eb8:	b29a      	uxth	r2, r3
 8006eba:	d401      	bmi.n	8006ec0 <_fputwc_r+0x18>
 8006ebc:	0590      	lsls	r0, r2, #22
 8006ebe:	d51c      	bpl.n	8006efa <_fputwc_r+0x52>
 8006ec0:	0490      	lsls	r0, r2, #18
 8006ec2:	d406      	bmi.n	8006ed2 <_fputwc_r+0x2a>
 8006ec4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006ec6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006eca:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006ece:	81a3      	strh	r3, [r4, #12]
 8006ed0:	6662      	str	r2, [r4, #100]	; 0x64
 8006ed2:	4628      	mov	r0, r5
 8006ed4:	4622      	mov	r2, r4
 8006ed6:	f7ff ff97 	bl	8006e08 <__fputwc>
 8006eda:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006edc:	07da      	lsls	r2, r3, #31
 8006ede:	4605      	mov	r5, r0
 8006ee0:	d402      	bmi.n	8006ee8 <_fputwc_r+0x40>
 8006ee2:	89a3      	ldrh	r3, [r4, #12]
 8006ee4:	059b      	lsls	r3, r3, #22
 8006ee6:	d502      	bpl.n	8006eee <_fputwc_r+0x46>
 8006ee8:	4628      	mov	r0, r5
 8006eea:	b003      	add	sp, #12
 8006eec:	bd30      	pop	{r4, r5, pc}
 8006eee:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ef0:	f7fe fd1e 	bl	8005930 <__retarget_lock_release_recursive>
 8006ef4:	4628      	mov	r0, r5
 8006ef6:	b003      	add	sp, #12
 8006ef8:	bd30      	pop	{r4, r5, pc}
 8006efa:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006efc:	9101      	str	r1, [sp, #4]
 8006efe:	f7fe fd15 	bl	800592c <__retarget_lock_acquire_recursive>
 8006f02:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f06:	9901      	ldr	r1, [sp, #4]
 8006f08:	b29a      	uxth	r2, r3
 8006f0a:	e7d9      	b.n	8006ec0 <_fputwc_r+0x18>

08006f0c <_fstat_r>:
 8006f0c:	b538      	push	{r3, r4, r5, lr}
 8006f0e:	460b      	mov	r3, r1
 8006f10:	4c07      	ldr	r4, [pc, #28]	; (8006f30 <_fstat_r+0x24>)
 8006f12:	4605      	mov	r5, r0
 8006f14:	4611      	mov	r1, r2
 8006f16:	4618      	mov	r0, r3
 8006f18:	2300      	movs	r3, #0
 8006f1a:	6023      	str	r3, [r4, #0]
 8006f1c:	f7fb f9de 	bl	80022dc <_fstat>
 8006f20:	1c43      	adds	r3, r0, #1
 8006f22:	d000      	beq.n	8006f26 <_fstat_r+0x1a>
 8006f24:	bd38      	pop	{r3, r4, r5, pc}
 8006f26:	6823      	ldr	r3, [r4, #0]
 8006f28:	2b00      	cmp	r3, #0
 8006f2a:	d0fb      	beq.n	8006f24 <_fstat_r+0x18>
 8006f2c:	602b      	str	r3, [r5, #0]
 8006f2e:	bd38      	pop	{r3, r4, r5, pc}
 8006f30:	20000b0c 	.word	0x20000b0c

08006f34 <_isatty_r>:
 8006f34:	b538      	push	{r3, r4, r5, lr}
 8006f36:	4c07      	ldr	r4, [pc, #28]	; (8006f54 <_isatty_r+0x20>)
 8006f38:	2300      	movs	r3, #0
 8006f3a:	4605      	mov	r5, r0
 8006f3c:	4608      	mov	r0, r1
 8006f3e:	6023      	str	r3, [r4, #0]
 8006f40:	f7fb f9d1 	bl	80022e6 <_isatty>
 8006f44:	1c43      	adds	r3, r0, #1
 8006f46:	d000      	beq.n	8006f4a <_isatty_r+0x16>
 8006f48:	bd38      	pop	{r3, r4, r5, pc}
 8006f4a:	6823      	ldr	r3, [r4, #0]
 8006f4c:	2b00      	cmp	r3, #0
 8006f4e:	d0fb      	beq.n	8006f48 <_isatty_r+0x14>
 8006f50:	602b      	str	r3, [r5, #0]
 8006f52:	bd38      	pop	{r3, r4, r5, pc}
 8006f54:	20000b0c 	.word	0x20000b0c

08006f58 <__locale_mb_cur_max>:
 8006f58:	4b04      	ldr	r3, [pc, #16]	; (8006f6c <__locale_mb_cur_max+0x14>)
 8006f5a:	4a05      	ldr	r2, [pc, #20]	; (8006f70 <__locale_mb_cur_max+0x18>)
 8006f5c:	681b      	ldr	r3, [r3, #0]
 8006f5e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006f60:	2b00      	cmp	r3, #0
 8006f62:	bf08      	it	eq
 8006f64:	4613      	moveq	r3, r2
 8006f66:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006f6a:	4770      	bx	lr
 8006f6c:	20000018 	.word	0x20000018
 8006f70:	2000085c 	.word	0x2000085c

08006f74 <_lseek_r>:
 8006f74:	b570      	push	{r4, r5, r6, lr}
 8006f76:	460d      	mov	r5, r1
 8006f78:	4c08      	ldr	r4, [pc, #32]	; (8006f9c <_lseek_r+0x28>)
 8006f7a:	4611      	mov	r1, r2
 8006f7c:	4606      	mov	r6, r0
 8006f7e:	461a      	mov	r2, r3
 8006f80:	4628      	mov	r0, r5
 8006f82:	2300      	movs	r3, #0
 8006f84:	6023      	str	r3, [r4, #0]
 8006f86:	f7fb f9b0 	bl	80022ea <_lseek>
 8006f8a:	1c43      	adds	r3, r0, #1
 8006f8c:	d000      	beq.n	8006f90 <_lseek_r+0x1c>
 8006f8e:	bd70      	pop	{r4, r5, r6, pc}
 8006f90:	6823      	ldr	r3, [r4, #0]
 8006f92:	2b00      	cmp	r3, #0
 8006f94:	d0fb      	beq.n	8006f8e <_lseek_r+0x1a>
 8006f96:	6033      	str	r3, [r6, #0]
 8006f98:	bd70      	pop	{r4, r5, r6, pc}
 8006f9a:	bf00      	nop
 8006f9c:	20000b0c 	.word	0x20000b0c

08006fa0 <__ascii_mbtowc>:
 8006fa0:	b082      	sub	sp, #8
 8006fa2:	b149      	cbz	r1, 8006fb8 <__ascii_mbtowc+0x18>
 8006fa4:	b15a      	cbz	r2, 8006fbe <__ascii_mbtowc+0x1e>
 8006fa6:	b16b      	cbz	r3, 8006fc4 <__ascii_mbtowc+0x24>
 8006fa8:	7813      	ldrb	r3, [r2, #0]
 8006faa:	600b      	str	r3, [r1, #0]
 8006fac:	7812      	ldrb	r2, [r2, #0]
 8006fae:	1c10      	adds	r0, r2, #0
 8006fb0:	bf18      	it	ne
 8006fb2:	2001      	movne	r0, #1
 8006fb4:	b002      	add	sp, #8
 8006fb6:	4770      	bx	lr
 8006fb8:	a901      	add	r1, sp, #4
 8006fba:	2a00      	cmp	r2, #0
 8006fbc:	d1f3      	bne.n	8006fa6 <__ascii_mbtowc+0x6>
 8006fbe:	4610      	mov	r0, r2
 8006fc0:	b002      	add	sp, #8
 8006fc2:	4770      	bx	lr
 8006fc4:	f06f 0001 	mvn.w	r0, #1
 8006fc8:	e7f4      	b.n	8006fb4 <__ascii_mbtowc+0x14>
 8006fca:	bf00      	nop

08006fcc <_read_r>:
 8006fcc:	b570      	push	{r4, r5, r6, lr}
 8006fce:	460d      	mov	r5, r1
 8006fd0:	4c08      	ldr	r4, [pc, #32]	; (8006ff4 <_read_r+0x28>)
 8006fd2:	4611      	mov	r1, r2
 8006fd4:	4606      	mov	r6, r0
 8006fd6:	461a      	mov	r2, r3
 8006fd8:	4628      	mov	r0, r5
 8006fda:	2300      	movs	r3, #0
 8006fdc:	6023      	str	r3, [r4, #0]
 8006fde:	f7fb f938 	bl	8002252 <_read>
 8006fe2:	1c43      	adds	r3, r0, #1
 8006fe4:	d000      	beq.n	8006fe8 <_read_r+0x1c>
 8006fe6:	bd70      	pop	{r4, r5, r6, pc}
 8006fe8:	6823      	ldr	r3, [r4, #0]
 8006fea:	2b00      	cmp	r3, #0
 8006fec:	d0fb      	beq.n	8006fe6 <_read_r+0x1a>
 8006fee:	6033      	str	r3, [r6, #0]
 8006ff0:	bd70      	pop	{r4, r5, r6, pc}
 8006ff2:	bf00      	nop
 8006ff4:	20000b0c 	.word	0x20000b0c

08006ff8 <__swbuf_r>:
 8006ff8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006ffa:	460d      	mov	r5, r1
 8006ffc:	4614      	mov	r4, r2
 8006ffe:	4606      	mov	r6, r0
 8007000:	b110      	cbz	r0, 8007008 <__swbuf_r+0x10>
 8007002:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007004:	2b00      	cmp	r3, #0
 8007006:	d043      	beq.n	8007090 <__swbuf_r+0x98>
 8007008:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800700c:	69a3      	ldr	r3, [r4, #24]
 800700e:	60a3      	str	r3, [r4, #8]
 8007010:	b291      	uxth	r1, r2
 8007012:	0708      	lsls	r0, r1, #28
 8007014:	d51b      	bpl.n	800704e <__swbuf_r+0x56>
 8007016:	6923      	ldr	r3, [r4, #16]
 8007018:	b1cb      	cbz	r3, 800704e <__swbuf_r+0x56>
 800701a:	b2ed      	uxtb	r5, r5
 800701c:	0489      	lsls	r1, r1, #18
 800701e:	462f      	mov	r7, r5
 8007020:	d522      	bpl.n	8007068 <__swbuf_r+0x70>
 8007022:	6822      	ldr	r2, [r4, #0]
 8007024:	6961      	ldr	r1, [r4, #20]
 8007026:	1ad3      	subs	r3, r2, r3
 8007028:	4299      	cmp	r1, r3
 800702a:	dd29      	ble.n	8007080 <__swbuf_r+0x88>
 800702c:	3301      	adds	r3, #1
 800702e:	68a1      	ldr	r1, [r4, #8]
 8007030:	1c50      	adds	r0, r2, #1
 8007032:	3901      	subs	r1, #1
 8007034:	60a1      	str	r1, [r4, #8]
 8007036:	6020      	str	r0, [r4, #0]
 8007038:	7015      	strb	r5, [r2, #0]
 800703a:	6962      	ldr	r2, [r4, #20]
 800703c:	429a      	cmp	r2, r3
 800703e:	d02a      	beq.n	8007096 <__swbuf_r+0x9e>
 8007040:	89a3      	ldrh	r3, [r4, #12]
 8007042:	07db      	lsls	r3, r3, #31
 8007044:	d501      	bpl.n	800704a <__swbuf_r+0x52>
 8007046:	2d0a      	cmp	r5, #10
 8007048:	d025      	beq.n	8007096 <__swbuf_r+0x9e>
 800704a:	4638      	mov	r0, r7
 800704c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800704e:	4621      	mov	r1, r4
 8007050:	4630      	mov	r0, r6
 8007052:	f7fc fffd 	bl	8004050 <__swsetup_r>
 8007056:	bb20      	cbnz	r0, 80070a2 <__swbuf_r+0xaa>
 8007058:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800705c:	6923      	ldr	r3, [r4, #16]
 800705e:	b291      	uxth	r1, r2
 8007060:	b2ed      	uxtb	r5, r5
 8007062:	0489      	lsls	r1, r1, #18
 8007064:	462f      	mov	r7, r5
 8007066:	d4dc      	bmi.n	8007022 <__swbuf_r+0x2a>
 8007068:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800706a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800706e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007072:	81a2      	strh	r2, [r4, #12]
 8007074:	6822      	ldr	r2, [r4, #0]
 8007076:	6661      	str	r1, [r4, #100]	; 0x64
 8007078:	6961      	ldr	r1, [r4, #20]
 800707a:	1ad3      	subs	r3, r2, r3
 800707c:	4299      	cmp	r1, r3
 800707e:	dcd5      	bgt.n	800702c <__swbuf_r+0x34>
 8007080:	4621      	mov	r1, r4
 8007082:	4630      	mov	r0, r6
 8007084:	f7fe f8a6 	bl	80051d4 <_fflush_r>
 8007088:	b958      	cbnz	r0, 80070a2 <__swbuf_r+0xaa>
 800708a:	6822      	ldr	r2, [r4, #0]
 800708c:	2301      	movs	r3, #1
 800708e:	e7ce      	b.n	800702e <__swbuf_r+0x36>
 8007090:	f7fe f8fc 	bl	800528c <__sinit>
 8007094:	e7b8      	b.n	8007008 <__swbuf_r+0x10>
 8007096:	4621      	mov	r1, r4
 8007098:	4630      	mov	r0, r6
 800709a:	f7fe f89b 	bl	80051d4 <_fflush_r>
 800709e:	2800      	cmp	r0, #0
 80070a0:	d0d3      	beq.n	800704a <__swbuf_r+0x52>
 80070a2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80070a6:	e7d0      	b.n	800704a <__swbuf_r+0x52>

080070a8 <_wcrtomb_r>:
 80070a8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80070aa:	4c11      	ldr	r4, [pc, #68]	; (80070f0 <_wcrtomb_r+0x48>)
 80070ac:	6824      	ldr	r4, [r4, #0]
 80070ae:	b085      	sub	sp, #20
 80070b0:	4606      	mov	r6, r0
 80070b2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80070b4:	461f      	mov	r7, r3
 80070b6:	b151      	cbz	r1, 80070ce <_wcrtomb_r+0x26>
 80070b8:	4d0e      	ldr	r5, [pc, #56]	; (80070f4 <_wcrtomb_r+0x4c>)
 80070ba:	2c00      	cmp	r4, #0
 80070bc:	bf08      	it	eq
 80070be:	462c      	moveq	r4, r5
 80070c0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80070c4:	47a0      	blx	r4
 80070c6:	1c43      	adds	r3, r0, #1
 80070c8:	d00c      	beq.n	80070e4 <_wcrtomb_r+0x3c>
 80070ca:	b005      	add	sp, #20
 80070cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80070ce:	4a09      	ldr	r2, [pc, #36]	; (80070f4 <_wcrtomb_r+0x4c>)
 80070d0:	2c00      	cmp	r4, #0
 80070d2:	bf08      	it	eq
 80070d4:	4614      	moveq	r4, r2
 80070d6:	460a      	mov	r2, r1
 80070d8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80070dc:	a901      	add	r1, sp, #4
 80070de:	47a0      	blx	r4
 80070e0:	1c43      	adds	r3, r0, #1
 80070e2:	d1f2      	bne.n	80070ca <_wcrtomb_r+0x22>
 80070e4:	2200      	movs	r2, #0
 80070e6:	238a      	movs	r3, #138	; 0x8a
 80070e8:	603a      	str	r2, [r7, #0]
 80070ea:	6033      	str	r3, [r6, #0]
 80070ec:	b005      	add	sp, #20
 80070ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80070f0:	20000018 	.word	0x20000018
 80070f4:	2000085c 	.word	0x2000085c

080070f8 <__ascii_wctomb>:
 80070f8:	b121      	cbz	r1, 8007104 <__ascii_wctomb+0xc>
 80070fa:	2aff      	cmp	r2, #255	; 0xff
 80070fc:	d804      	bhi.n	8007108 <__ascii_wctomb+0x10>
 80070fe:	700a      	strb	r2, [r1, #0]
 8007100:	2001      	movs	r0, #1
 8007102:	4770      	bx	lr
 8007104:	4608      	mov	r0, r1
 8007106:	4770      	bx	lr
 8007108:	238a      	movs	r3, #138	; 0x8a
 800710a:	6003      	str	r3, [r0, #0]
 800710c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007110:	4770      	bx	lr
 8007112:	bf00      	nop

08007114 <_init>:
 8007114:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007116:	bf00      	nop
 8007118:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800711a:	bc08      	pop	{r3}
 800711c:	469e      	mov	lr, r3
 800711e:	4770      	bx	lr

08007120 <_fini>:
 8007120:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007122:	bf00      	nop
 8007124:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007126:	bc08      	pop	{r3}
 8007128:	469e      	mov	lr, r3
 800712a:	4770      	bx	lr
 800712c:	0000      	movs	r0, r0
	...
