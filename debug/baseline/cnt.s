
cnt.elf:     file format elf32-littlearm


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
 80001e0:	0800730c 	.word	0x0800730c

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
 80001fc:	0800730c 	.word	0x0800730c

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
 80010ee:	f000 f81a 	bl	8001126 <HAL_NVIC_SetPriorityGrouping>
 80010f2:	200f      	movs	r0, #15
 80010f4:	f000 fbc1 	bl	800187a <HAL_InitTick>
 80010f8:	2800      	cmp	r0, #0
 80010fa:	bf1c      	itt	ne
 80010fc:	2001      	movne	r0, #1
 80010fe:	bd80      	popne	{r7, pc}
 8001100:	f000 f96b 	bl	80013da <HAL_MspInit>
 8001104:	2000      	movs	r0, #0
 8001106:	bd80      	pop	{r7, pc}

08001108 <HAL_IncTick>:
 8001108:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	f840 1e00 	strt	r1, [r0]
 8001118:	4770      	bx	lr

0800111a <HAL_GetTick>:
 800111a:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800111e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001122:	6800      	ldr	r0, [r0, #0]
 8001124:	4770      	bx	lr

08001126 <HAL_NVIC_SetPriorityGrouping>:
 8001126:	f64e 510c 	movw	r1, #60684	; 0xed0c
 800112a:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 800112e:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001132:	680a      	ldr	r2, [r1, #0]
 8001134:	401a      	ands	r2, r3
 8001136:	f360 220a 	bfi	r2, r0, #8, #3
 800113a:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 800113e:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001142:	6008      	str	r0, [r1, #0]
 8001144:	4770      	bx	lr

08001146 <HAL_NVIC_SetPriority>:
 8001146:	b580      	push	{r7, lr}
 8001148:	466f      	mov	r7, sp
 800114a:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800114e:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001152:	2800      	cmp	r0, #0
 8001154:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001158:	f000 030f 	and.w	r3, r0, #15
 800115c:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001160:	f1a3 0304 	sub.w	r3, r3, #4
 8001164:	4473      	add	r3, lr
 8001166:	bfb8      	it	lt
 8001168:	f103 0c0c 	addlt.w	ip, r3, #12
 800116c:	f8de 0000 	ldr.w	r0, [lr]
 8001170:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001174:	f100 0e04 	add.w	lr, r0, #4
 8001178:	1ec3      	subs	r3, r0, #3
 800117a:	f080 0007 	eor.w	r0, r0, #7
 800117e:	f1be 0f07 	cmp.w	lr, #7
 8001182:	f04f 0e01 	mov.w	lr, #1
 8001186:	bf38      	it	cc
 8001188:	2300      	movcc	r3, #0
 800118a:	2804      	cmp	r0, #4
 800118c:	bf28      	it	cs
 800118e:	2004      	movcs	r0, #4
 8001190:	fa0e f000 	lsl.w	r0, lr, r0
 8001194:	3801      	subs	r0, #1
 8001196:	4008      	ands	r0, r1
 8001198:	fa0e f103 	lsl.w	r1, lr, r3
 800119c:	310f      	adds	r1, #15
 800119e:	4098      	lsls	r0, r3
 80011a0:	4011      	ands	r1, r2
 80011a2:	4308      	orrs	r0, r1
 80011a4:	0100      	lsls	r0, r0, #4
 80011a6:	f88c 0000 	strb.w	r0, [ip]
 80011aa:	bd80      	pop	{r7, pc}

080011ac <HAL_NVIC_EnableIRQ>:
 80011ac:	f000 011f 	and.w	r1, r0, #31
 80011b0:	2201      	movs	r2, #1
 80011b2:	0940      	lsrs	r0, r0, #5
 80011b4:	fa02 f101 	lsl.w	r1, r2, r1
 80011b8:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011bc:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011c0:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011c4:	4770      	bx	lr

080011c6 <HAL_SYSTICK_IRQHandler>:
 80011c6:	f000 b800 	b.w	80011ca <HAL_SYSTICK_Callback>

080011ca <HAL_SYSTICK_Callback>:
 80011ca:	4770      	bx	lr

080011cc <HAL_GPIO_Init>:
 80011cc:	b085      	sub	sp, #20
 80011ce:	f84d 4e00 	strt	r4, [sp]
 80011d2:	f84d 5e04 	strt	r5, [sp, #4]
 80011d6:	f84d 6e08 	strt	r6, [sp, #8]
 80011da:	f84d 7e0c 	strt	r7, [sp, #12]
 80011de:	f84d ee10 	strt	lr, [sp, #16]
 80011e2:	af03      	add	r7, sp, #12
 80011e4:	b084      	sub	sp, #16
 80011e6:	f84d 8e00 	strt	r8, [sp]
 80011ea:	f84d 9e04 	strt	r9, [sp, #4]
 80011ee:	f84d ae08 	strt	sl, [sp, #8]
 80011f2:	f84d be0c 	strt	fp, [sp, #12]
 80011f6:	b082      	sub	sp, #8
 80011f8:	680e      	ldr	r6, [r1, #0]
 80011fa:	2e00      	cmp	r6, #0
 80011fc:	f000 80e9 	beq.w	80013d2 <HAL_GPIO_Init+0x206>
 8001200:	f641 0200 	movw	r2, #6144	; 0x1800
 8001204:	2507      	movs	r5, #7
 8001206:	f04f 0801 	mov.w	r8, #1
 800120a:	f6c4 0200 	movt	r2, #18432	; 0x4800
 800120e:	4290      	cmp	r0, r2
 8001210:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001214:	ea4f 23b2 	mov.w	r3, r2, ror #10
 8001218:	bf08      	it	eq
 800121a:	2506      	moveq	r5, #6
 800121c:	2b06      	cmp	r3, #6
 800121e:	bf38      	it	cc
 8001220:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001224:	2200      	movs	r2, #0
 8001226:	f84d 5e00 	strt	r5, [sp]
 800122a:	2500      	movs	r5, #0
 800122c:	f1a8 0a01 	sub.w	sl, r8, #1
 8001230:	2301      	movs	r3, #1
 8001232:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001236:	ea16 090b 	ands.w	r9, r6, fp
 800123a:	f000 80c1 	beq.w	80013c0 <HAL_GPIO_Init+0x1f4>
 800123e:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001242:	f04e 0610 	orr.w	r6, lr, #16
 8001246:	2e12      	cmp	r6, #18
 8001248:	d116      	bne.n	8001278 <HAL_GPIO_Init+0xac>
 800124a:	f005 061c 	and.w	r6, r5, #28
 800124e:	230f      	movs	r3, #15
 8001250:	fa03 fc06 	lsl.w	ip, r3, r6
 8001254:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001258:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 800125c:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 8001260:	4404      	add	r4, r0
 8001262:	6a23      	ldr	r3, [r4, #32]
 8001264:	ea23 0c0c 	bic.w	ip, r3, ip
 8001268:	690b      	ldr	r3, [r1, #16]
 800126a:	40b3      	lsls	r3, r6
 800126c:	ea43 030c 	orr.w	r3, r3, ip
 8001270:	f844 3e20 	strt	r3, [r4, #32]
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
 8001298:	f840 3e00 	strt	r3, [r0]
 800129c:	d818      	bhi.n	80012d0 <HAL_GPIO_Init+0x104>
 800129e:	2301      	movs	r3, #1
 80012a0:	fa03 f30e 	lsl.w	r3, r3, lr
 80012a4:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 80012a8:	bf1f      	itttt	ne
 80012aa:	6883      	ldrne	r3, [r0, #8]
 80012ac:	4033      	andne	r3, r6
 80012ae:	68cc      	ldrne	r4, [r1, #12]
 80012b0:	4094      	lslne	r4, r2
 80012b2:	bf1f      	itttt	ne
 80012b4:	4323      	orrne	r3, r4
 80012b6:	f840 3e08 	strtne	r3, [r0, #8]
 80012ba:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 80012be:	fa03 f30a 	lslne.w	r3, r3, sl
 80012c2:	bf1f      	itttt	ne
 80012c4:	6844      	ldrne	r4, [r0, #4]
 80012c6:	ea24 040b 	bicne.w	r4, r4, fp
 80012ca:	4323      	orrne	r3, r4
 80012cc:	f840 3e04 	strtne	r3, [r0, #4]
 80012d0:	f1bc 0f03 	cmp.w	ip, #3
 80012d4:	d109      	bne.n	80012ea <HAL_GPIO_Init+0x11e>
 80012d6:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012da:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012dc:	fa03 f30a 	lsl.w	r3, r3, sl
 80012e0:	ea24 040b 	bic.w	r4, r4, fp
 80012e4:	4323      	orrs	r3, r4
 80012e6:	f840 3e2c 	strt	r3, [r0, #44]
 80012ea:	68c3      	ldr	r3, [r0, #12]
 80012ec:	4033      	ands	r3, r6
 80012ee:	688e      	ldr	r6, [r1, #8]
 80012f0:	4096      	lsls	r6, r2
 80012f2:	4333      	orrs	r3, r6
 80012f4:	f840 3e0c 	strt	r3, [r0, #12]
 80012f8:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012fc:	d560      	bpl.n	80013c0 <HAL_GPIO_Init+0x1f4>
 80012fe:	f241 0360 	movw	r3, #4192	; 0x1060
 8001302:	f005 040c 	and.w	r4, r5, #12
 8001306:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800130a:	461e      	mov	r6, r3
 800130c:	6833      	ldr	r3, [r6, #0]
 800130e:	f043 0301 	orr.w	r3, r3, #1
 8001312:	f846 3e00 	strt	r3, [r6]
 8001316:	6833      	ldr	r3, [r6, #0]
 8001318:	f240 4600 	movw	r6, #1024	; 0x400
 800131c:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001320:	46b6      	mov	lr, r6
 8001322:	f003 0301 	and.w	r3, r3, #1
 8001326:	f84d 3e04 	strt	r3, [sp, #4]
 800132a:	f02a 0303 	bic.w	r3, sl, #3
 800132e:	9e01      	ldr	r6, [sp, #4]
 8001330:	4473      	add	r3, lr
 8001332:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001336:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 800133a:	46b2      	mov	sl, r6
 800133c:	260f      	movs	r6, #15
 800133e:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001342:	40a6      	lsls	r6, r4
 8001344:	ea2c 0c06 	bic.w	ip, ip, r6
 8001348:	9e00      	ldr	r6, [sp, #0]
 800134a:	fa06 f404 	lsl.w	r4, r6, r4
 800134e:	ea4c 0604 	orr.w	r6, ip, r4
 8001352:	eb03 030a 	add.w	r3, r3, sl
 8001356:	f843 6e00 	strt	r6, [r3]
 800135a:	eba3 030a 	sub.w	r3, r3, sl
 800135e:	f8de 3000 	ldr.w	r3, [lr]
 8001362:	684e      	ldr	r6, [r1, #4]
 8001364:	ea23 0309 	bic.w	r3, r3, r9
 8001368:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 800136c:	bf18      	it	ne
 800136e:	ea43 0309 	orrne.w	r3, r3, r9
 8001372:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001376:	f84e 3e00 	strt	r3, [lr]
 800137a:	f8de 3004 	ldr.w	r3, [lr, #4]
 800137e:	ea23 0309 	bic.w	r3, r3, r9
 8001382:	bf18      	it	ne
 8001384:	ea43 0309 	orrne.w	r3, r3, r9
 8001388:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800138c:	f84e 3e04 	strt	r3, [lr, #4]
 8001390:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001394:	ea23 0309 	bic.w	r3, r3, r9
 8001398:	bf18      	it	ne
 800139a:	ea43 0309 	orrne.w	r3, r3, r9
 800139e:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 80013a2:	f84e 3e08 	strt	r3, [lr, #8]
 80013a6:	f240 430c 	movw	r3, #1036	; 0x40c
 80013aa:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80013ae:	461c      	mov	r4, r3
 80013b0:	6823      	ldr	r3, [r4, #0]
 80013b2:	ea23 0309 	bic.w	r3, r3, r9
 80013b6:	bf18      	it	ne
 80013b8:	ea43 0309 	orrne.w	r3, r3, r9
 80013bc:	f844 3e00 	strt	r3, [r4]
 80013c0:	680e      	ldr	r6, [r1, #0]
 80013c2:	3202      	adds	r2, #2
 80013c4:	3504      	adds	r5, #4
 80013c6:	fa36 f308 	lsrs.w	r3, r6, r8
 80013ca:	f108 0801 	add.w	r8, r8, #1
 80013ce:	f47f af2d 	bne.w	800122c <HAL_GPIO_Init+0x60>
 80013d2:	b002      	add	sp, #8
 80013d4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80013d8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080013da <HAL_MspInit>:
 80013da:	4770      	bx	lr

080013dc <HAL_RCC_GetSysClockFreq>:
 80013dc:	b082      	sub	sp, #8
 80013de:	f84d 7e00 	strt	r7, [sp]
 80013e2:	f84d ee04 	strt	lr, [sp, #4]
 80013e6:	466f      	mov	r7, sp
 80013e8:	f241 010c 	movw	r1, #4108	; 0x100c
 80013ec:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013f0:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013f4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013f8:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013fc:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 8001400:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001404:	6808      	ldr	r0, [r1, #0]
 8001406:	f012 030c 	ands.w	r3, r2, #12
 800140a:	d005      	beq.n	8001418 <HAL_RCC_GetSysClockFreq+0x3c>
 800140c:	2b0c      	cmp	r3, #12
 800140e:	bf04      	itt	eq
 8001410:	f000 0003 	andeq.w	r0, r0, #3
 8001414:	2801      	cmpeq	r0, #1
 8001416:	d118      	bne.n	800144a <HAL_RCC_GetSysClockFreq+0x6e>
 8001418:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800141c:	f010 0f08 	tst.w	r0, #8
 8001420:	d103      	bne.n	800142a <HAL_RCC_GetSysClockFreq+0x4e>
 8001422:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 8001426:	0a00      	lsrs	r0, r0, #8
 8001428:	e002      	b.n	8001430 <HAL_RCC_GetSysClockFreq+0x54>
 800142a:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800142e:	0900      	lsrs	r0, r0, #4
 8001430:	f247 3240 	movw	r2, #29504	; 0x7340
 8001434:	f000 000f 	and.w	r0, r0, #15
 8001438:	2b00      	cmp	r3, #0
 800143a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800143e:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001442:	4610      	mov	r0, r2
 8001444:	bf18      	it	ne
 8001446:	2000      	movne	r0, #0
 8001448:	e00b      	b.n	8001462 <HAL_RCC_GetSysClockFreq+0x86>
 800144a:	f003 000f 	and.w	r0, r3, #15
 800144e:	2804      	cmp	r0, #4
 8001450:	bf04      	itt	eq
 8001452:	4660      	moveq	r0, ip
 8001454:	bd80      	popeq	{r7, pc}
 8001456:	2808      	cmp	r0, #8
 8001458:	bf04      	itt	eq
 800145a:	4670      	moveq	r0, lr
 800145c:	bd80      	popeq	{r7, pc}
 800145e:	2000      	movs	r0, #0
 8001460:	2200      	movs	r2, #0
 8001462:	2b0c      	cmp	r3, #12
 8001464:	bf18      	it	ne
 8001466:	bd80      	popne	{r7, pc}
 8001468:	6808      	ldr	r0, [r1, #0]
 800146a:	f000 0303 	and.w	r3, r0, #3
 800146e:	6808      	ldr	r0, [r1, #0]
 8001470:	2b03      	cmp	r3, #3
 8001472:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8001476:	f100 0001 	add.w	r0, r0, #1
 800147a:	d003      	beq.n	8001484 <HAL_RCC_GetSysClockFreq+0xa8>
 800147c:	2b02      	cmp	r3, #2
 800147e:	46e6      	mov	lr, ip
 8001480:	bf18      	it	ne
 8001482:	4696      	movne	lr, r2
 8001484:	680a      	ldr	r2, [r1, #0]
 8001486:	fbbe f0f0 	udiv	r0, lr, r0
 800148a:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800148e:	6809      	ldr	r1, [r1, #0]
 8001490:	4350      	muls	r0, r2
 8001492:	2202      	movs	r2, #2
 8001494:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001498:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 800149c:	fbb0 f0f1 	udiv	r0, r0, r1
 80014a0:	bd80      	pop	{r7, pc}

080014a2 <HAL_RCC_GetPCLK1Freq>:
 80014a2:	f240 0014 	movw	r0, #20
 80014a6:	f241 0108 	movw	r1, #4104	; 0x1008
 80014aa:	f247 3238 	movw	r2, #29496	; 0x7338
 80014ae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014b2:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014b6:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014ba:	6800      	ldr	r0, [r0, #0]
 80014bc:	6809      	ldr	r1, [r1, #0]
 80014be:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80014c2:	5c51      	ldrb	r1, [r2, r1]
 80014c4:	f001 011f 	and.w	r1, r1, #31
 80014c8:	40c8      	lsrs	r0, r1
 80014ca:	4770      	bx	lr

080014cc <HAL_RCC_GetPCLK2Freq>:
 80014cc:	f240 0014 	movw	r0, #20
 80014d0:	f241 0108 	movw	r1, #4104	; 0x1008
 80014d4:	f247 3238 	movw	r2, #29496	; 0x7338
 80014d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014dc:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014e0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014e4:	6800      	ldr	r0, [r0, #0]
 80014e6:	6809      	ldr	r1, [r1, #0]
 80014e8:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014ec:	5c51      	ldrb	r1, [r2, r1]
 80014ee:	f001 011f 	and.w	r1, r1, #31
 80014f2:	40c8      	lsrs	r0, r1
 80014f4:	4770      	bx	lr

080014f6 <HAL_RCC_GetClockConfig>:
 80014f6:	220f      	movs	r2, #15
 80014f8:	6002      	str	r2, [r0, #0]
 80014fa:	f241 0208 	movw	r2, #4104	; 0x1008
 80014fe:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8001502:	6813      	ldr	r3, [r2, #0]
 8001504:	f003 0303 	and.w	r3, r3, #3
 8001508:	6043      	str	r3, [r0, #4]
 800150a:	6813      	ldr	r3, [r2, #0]
 800150c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001510:	6083      	str	r3, [r0, #8]
 8001512:	6813      	ldr	r3, [r2, #0]
 8001514:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001518:	60c3      	str	r3, [r0, #12]
 800151a:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 800151e:	6812      	ldr	r2, [r2, #0]
 8001520:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001524:	6102      	str	r2, [r0, #16]
 8001526:	f242 0000 	movw	r0, #8192	; 0x2000
 800152a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800152e:	6800      	ldr	r0, [r0, #0]
 8001530:	f000 0007 	and.w	r0, r0, #7
 8001534:	6008      	str	r0, [r1, #0]
 8001536:	4770      	bx	lr

08001538 <HAL_TIM_Base_Init>:
 8001538:	b5d0      	push	{r4, r6, r7, lr}
 800153a:	af02      	add	r7, sp, #8
 800153c:	4604      	mov	r4, r0
 800153e:	2c00      	cmp	r4, #0
 8001540:	bf04      	itt	eq
 8001542:	2001      	moveq	r0, #1
 8001544:	bdd0      	popeq	{r4, r6, r7, pc}
 8001546:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001548:	b920      	cbnz	r0, 8001554 <HAL_TIM_Base_Init+0x1c>
 800154a:	2000      	movs	r0, #0
 800154c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800154e:	4620      	mov	r0, r4
 8001550:	f000 f892 	bl	8001678 <HAL_TIM_Base_MspInit>
 8001554:	2002      	movs	r0, #2
 8001556:	f640 32ff 	movw	r2, #3071	; 0xbff
 800155a:	6420      	str	r0, [r4, #64]	; 0x40
 800155c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001560:	6820      	ldr	r0, [r4, #0]
 8001562:	6801      	ldr	r1, [r0, #0]
 8001564:	4290      	cmp	r0, r2
 8001566:	dc0f      	bgt.n	8001588 <HAL_TIM_Base_Init+0x50>
 8001568:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800156c:	bf1e      	ittt	ne
 800156e:	f240 4200 	movwne	r2, #1024	; 0x400
 8001572:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 8001576:	4290      	cmpne	r0, r2
 8001578:	d018      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 800157a:	f640 0200 	movw	r2, #2048	; 0x800
 800157e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001582:	4290      	cmp	r0, r2
 8001584:	d012      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 8001586:	e015      	b.n	80015b4 <HAL_TIM_Base_Init+0x7c>
 8001588:	f640 4200 	movw	r2, #3072	; 0xc00
 800158c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001590:	4290      	cmp	r0, r2
 8001592:	bf1e      	ittt	ne
 8001594:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001598:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800159c:	4290      	cmpne	r0, r2
 800159e:	d005      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 80015a0:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015a4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015a8:	4290      	cmp	r0, r2
 80015aa:	d103      	bne.n	80015b4 <HAL_TIM_Base_Init+0x7c>
 80015ac:	68a2      	ldr	r2, [r4, #8]
 80015ae:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 80015b2:	4311      	orrs	r1, r2
 80015b4:	f642 32ff 	movw	r2, #11263	; 0x2bff
 80015b8:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015bc:	4290      	cmp	r0, r2
 80015be:	dd14      	ble.n	80015ea <HAL_TIM_Base_Init+0xb2>
 80015c0:	f643 72ff 	movw	r2, #16383	; 0x3fff
 80015c4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015c8:	4290      	cmp	r0, r2
 80015ca:	dd1a      	ble.n	8001602 <HAL_TIM_Base_Init+0xca>
 80015cc:	f244 0200 	movw	r2, #16384	; 0x4000
 80015d0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015d4:	4290      	cmp	r0, r2
 80015d6:	bf1e      	ittt	ne
 80015d8:	f644 0200 	movwne	r2, #18432	; 0x4800
 80015dc:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015e0:	4290      	cmpne	r0, r2
 80015e2:	d027      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 80015e4:	f244 4200 	movw	r2, #17408	; 0x4400
 80015e8:	e013      	b.n	8001612 <HAL_TIM_Base_Init+0xda>
 80015ea:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015ee:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015f2:	4290      	cmp	r0, r2
 80015f4:	dc12      	bgt.n	800161c <HAL_TIM_Base_Init+0xe4>
 80015f6:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015fa:	d01b      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 80015fc:	f240 4200 	movw	r2, #1024	; 0x400
 8001600:	e014      	b.n	800162c <HAL_TIM_Base_Init+0xf4>
 8001602:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001606:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800160a:	4290      	cmp	r0, r2
 800160c:	d012      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 800160e:	f243 4200 	movw	r2, #13312	; 0x3400
 8001612:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001616:	4290      	cmp	r0, r2
 8001618:	d00c      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 800161a:	e00f      	b.n	800163c <HAL_TIM_Base_Init+0x104>
 800161c:	f640 0200 	movw	r2, #2048	; 0x800
 8001620:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001624:	4290      	cmp	r0, r2
 8001626:	d005      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 8001628:	f640 4200 	movw	r2, #3072	; 0xc00
 800162c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001630:	4290      	cmp	r0, r2
 8001632:	d103      	bne.n	800163c <HAL_TIM_Base_Init+0x104>
 8001634:	6922      	ldr	r2, [r4, #16]
 8001636:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 800163a:	4311      	orrs	r1, r2
 800163c:	69a2      	ldr	r2, [r4, #24]
 800163e:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001642:	4311      	orrs	r1, r2
 8001644:	6001      	str	r1, [r0, #0]
 8001646:	68e1      	ldr	r1, [r4, #12]
 8001648:	62c1      	str	r1, [r0, #44]	; 0x2c
 800164a:	6861      	ldr	r1, [r4, #4]
 800164c:	6281      	str	r1, [r0, #40]	; 0x28
 800164e:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001652:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 8001656:	ea4f 21b1 	mov.w	r1, r1, ror #10
 800165a:	2907      	cmp	r1, #7
 800165c:	d807      	bhi.n	800166e <HAL_TIM_Base_Init+0x136>
 800165e:	2201      	movs	r2, #1
 8001660:	fa02 f101 	lsl.w	r1, r2, r1
 8001664:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001668:	bf1c      	itt	ne
 800166a:	6961      	ldrne	r1, [r4, #20]
 800166c:	6301      	strne	r1, [r0, #48]	; 0x30
 800166e:	2101      	movs	r1, #1
 8001670:	6141      	str	r1, [r0, #20]
 8001672:	2000      	movs	r0, #0
 8001674:	6421      	str	r1, [r4, #64]	; 0x40
 8001676:	bdd0      	pop	{r4, r6, r7, pc}

08001678 <HAL_TIM_Base_MspInit>:
 8001678:	4770      	bx	lr

0800167a <HAL_TIM_Base_Start_IT>:
 800167a:	6800      	ldr	r0, [r0, #0]
 800167c:	68c1      	ldr	r1, [r0, #12]
 800167e:	f041 0101 	orr.w	r1, r1, #1
 8001682:	60c1      	str	r1, [r0, #12]
 8001684:	2107      	movs	r1, #7
 8001686:	6882      	ldr	r2, [r0, #8]
 8001688:	f2c0 0101 	movt	r1, #1
 800168c:	400a      	ands	r2, r1
 800168e:	2a06      	cmp	r2, #6
 8001690:	d008      	beq.n	80016a4 <HAL_TIM_Base_Start_IT+0x2a>
 8001692:	6882      	ldr	r2, [r0, #8]
 8001694:	4011      	ands	r1, r2
 8001696:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800169a:	bf1e      	ittt	ne
 800169c:	6801      	ldrne	r1, [r0, #0]
 800169e:	f041 0101 	orrne.w	r1, r1, #1
 80016a2:	6001      	strne	r1, [r0, #0]
 80016a4:	2000      	movs	r0, #0
 80016a6:	4770      	bx	lr

080016a8 <HAL_TIM_IRQHandler>:
 80016a8:	b084      	sub	sp, #16
 80016aa:	f84d 4e00 	strt	r4, [sp]
 80016ae:	f84d 6e04 	strt	r6, [sp, #4]
 80016b2:	f84d 7e08 	strt	r7, [sp, #8]
 80016b6:	f84d ee0c 	strt	lr, [sp, #12]
 80016ba:	af02      	add	r7, sp, #8
 80016bc:	4604      	mov	r4, r0
 80016be:	6820      	ldr	r0, [r4, #0]
 80016c0:	6901      	ldr	r1, [r0, #16]
 80016c2:	f011 0f02 	tst.w	r1, #2
 80016c6:	bf1c      	itt	ne
 80016c8:	68c1      	ldrne	r1, [r0, #12]
 80016ca:	f011 0f02 	tstne.w	r1, #2
 80016ce:	d018      	beq.n	8001702 <HAL_TIM_IRQHandler+0x5a>
 80016d0:	f06f 0102 	mvn.w	r1, #2
 80016d4:	f840 1e10 	strt	r1, [r0, #16]
 80016d8:	2101      	movs	r1, #1
 80016da:	f844 1e1c 	strt	r1, [r4, #28]
 80016de:	6980      	ldr	r0, [r0, #24]
 80016e0:	f010 0f03 	tst.w	r0, #3
 80016e4:	d003      	beq.n	80016ee <HAL_TIM_IRQHandler+0x46>
 80016e6:	4620      	mov	r0, r4
 80016e8:	f000 f8c0 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 80016ec:	e005      	b.n	80016fa <HAL_TIM_IRQHandler+0x52>
 80016ee:	4620      	mov	r0, r4
 80016f0:	f000 f8bd 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 80016f4:	4620      	mov	r0, r4
 80016f6:	f000 f8bb 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 80016fa:	2000      	movs	r0, #0
 80016fc:	f844 0e1c 	strt	r0, [r4, #28]
 8001700:	6820      	ldr	r0, [r4, #0]
 8001702:	6901      	ldr	r1, [r0, #16]
 8001704:	f011 0f04 	tst.w	r1, #4
 8001708:	bf1c      	itt	ne
 800170a:	68c1      	ldrne	r1, [r0, #12]
 800170c:	f011 0f04 	tstne.w	r1, #4
 8001710:	d018      	beq.n	8001744 <HAL_TIM_IRQHandler+0x9c>
 8001712:	f06f 0104 	mvn.w	r1, #4
 8001716:	f840 1e10 	strt	r1, [r0, #16]
 800171a:	2102      	movs	r1, #2
 800171c:	f844 1e1c 	strt	r1, [r4, #28]
 8001720:	6980      	ldr	r0, [r0, #24]
 8001722:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001726:	d003      	beq.n	8001730 <HAL_TIM_IRQHandler+0x88>
 8001728:	4620      	mov	r0, r4
 800172a:	f000 f89f 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 800172e:	e005      	b.n	800173c <HAL_TIM_IRQHandler+0x94>
 8001730:	4620      	mov	r0, r4
 8001732:	f000 f89c 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 8001736:	4620      	mov	r0, r4
 8001738:	f000 f89a 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 800173c:	2000      	movs	r0, #0
 800173e:	f844 0e1c 	strt	r0, [r4, #28]
 8001742:	6820      	ldr	r0, [r4, #0]
 8001744:	6901      	ldr	r1, [r0, #16]
 8001746:	f011 0f08 	tst.w	r1, #8
 800174a:	bf1c      	itt	ne
 800174c:	68c1      	ldrne	r1, [r0, #12]
 800174e:	f011 0f08 	tstne.w	r1, #8
 8001752:	d018      	beq.n	8001786 <HAL_TIM_IRQHandler+0xde>
 8001754:	f06f 0108 	mvn.w	r1, #8
 8001758:	f840 1e10 	strt	r1, [r0, #16]
 800175c:	2104      	movs	r1, #4
 800175e:	f844 1e1c 	strt	r1, [r4, #28]
 8001762:	69c0      	ldr	r0, [r0, #28]
 8001764:	f010 0f03 	tst.w	r0, #3
 8001768:	d003      	beq.n	8001772 <HAL_TIM_IRQHandler+0xca>
 800176a:	4620      	mov	r0, r4
 800176c:	f000 f87e 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 8001770:	e005      	b.n	800177e <HAL_TIM_IRQHandler+0xd6>
 8001772:	4620      	mov	r0, r4
 8001774:	f000 f87b 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 8001778:	4620      	mov	r0, r4
 800177a:	f000 f879 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 800177e:	2000      	movs	r0, #0
 8001780:	f844 0e1c 	strt	r0, [r4, #28]
 8001784:	6820      	ldr	r0, [r4, #0]
 8001786:	6901      	ldr	r1, [r0, #16]
 8001788:	f011 0f10 	tst.w	r1, #16
 800178c:	bf1c      	itt	ne
 800178e:	68c1      	ldrne	r1, [r0, #12]
 8001790:	f011 0f10 	tstne.w	r1, #16
 8001794:	d018      	beq.n	80017c8 <HAL_TIM_IRQHandler+0x120>
 8001796:	f06f 0110 	mvn.w	r1, #16
 800179a:	f840 1e10 	strt	r1, [r0, #16]
 800179e:	2108      	movs	r1, #8
 80017a0:	f844 1e1c 	strt	r1, [r4, #28]
 80017a4:	69c0      	ldr	r0, [r0, #28]
 80017a6:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017aa:	d003      	beq.n	80017b4 <HAL_TIM_IRQHandler+0x10c>
 80017ac:	4620      	mov	r0, r4
 80017ae:	f000 f85d 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 80017b2:	e005      	b.n	80017c0 <HAL_TIM_IRQHandler+0x118>
 80017b4:	4620      	mov	r0, r4
 80017b6:	f000 f85a 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 80017ba:	4620      	mov	r0, r4
 80017bc:	f000 f858 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 80017c0:	2000      	movs	r0, #0
 80017c2:	f844 0e1c 	strt	r0, [r4, #28]
 80017c6:	6820      	ldr	r0, [r4, #0]
 80017c8:	6901      	ldr	r1, [r0, #16]
 80017ca:	f011 0f01 	tst.w	r1, #1
 80017ce:	bf1c      	itt	ne
 80017d0:	68c1      	ldrne	r1, [r0, #12]
 80017d2:	f011 0f01 	tstne.w	r1, #1
 80017d6:	d007      	beq.n	80017e8 <HAL_TIM_IRQHandler+0x140>
 80017d8:	f06f 0101 	mvn.w	r1, #1
 80017dc:	f840 1e10 	strt	r1, [r0, #16]
 80017e0:	4620      	mov	r0, r4
 80017e2:	f000 f898 	bl	8001916 <HAL_TIM_PeriodElapsedCallback>
 80017e6:	6820      	ldr	r0, [r4, #0]
 80017e8:	6901      	ldr	r1, [r0, #16]
 80017ea:	f011 0f80 	tst.w	r1, #128	; 0x80
 80017ee:	bf1c      	itt	ne
 80017f0:	68c1      	ldrne	r1, [r0, #12]
 80017f2:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017f6:	d007      	beq.n	8001808 <HAL_TIM_IRQHandler+0x160>
 80017f8:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80017fc:	f840 1e10 	strt	r1, [r0, #16]
 8001800:	4620      	mov	r0, r4
 8001802:	f000 f838 	bl	8001876 <HAL_TIMEx_BreakCallback>
 8001806:	6820      	ldr	r0, [r4, #0]
 8001808:	6901      	ldr	r1, [r0, #16]
 800180a:	f411 7f80 	tst.w	r1, #256	; 0x100
 800180e:	bf1c      	itt	ne
 8001810:	68c1      	ldrne	r1, [r0, #12]
 8001812:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001816:	d007      	beq.n	8001828 <HAL_TIM_IRQHandler+0x180>
 8001818:	f46f 7180 	mvn.w	r1, #256	; 0x100
 800181c:	f840 1e10 	strt	r1, [r0, #16]
 8001820:	4620      	mov	r0, r4
 8001822:	f000 f829 	bl	8001878 <HAL_TIMEx_Break2Callback>
 8001826:	6820      	ldr	r0, [r4, #0]
 8001828:	6901      	ldr	r1, [r0, #16]
 800182a:	f011 0f40 	tst.w	r1, #64	; 0x40
 800182e:	bf1c      	itt	ne
 8001830:	68c1      	ldrne	r1, [r0, #12]
 8001832:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001836:	d007      	beq.n	8001848 <HAL_TIM_IRQHandler+0x1a0>
 8001838:	f06f 0140 	mvn.w	r1, #64	; 0x40
 800183c:	f840 1e10 	strt	r1, [r0, #16]
 8001840:	4620      	mov	r0, r4
 8001842:	f000 f816 	bl	8001872 <HAL_TIM_TriggerCallback>
 8001846:	6820      	ldr	r0, [r4, #0]
 8001848:	6901      	ldr	r1, [r0, #16]
 800184a:	f011 0f20 	tst.w	r1, #32
 800184e:	bf1c      	itt	ne
 8001850:	68c1      	ldrne	r1, [r0, #12]
 8001852:	f011 0f20 	tstne.w	r1, #32
 8001856:	d100      	bne.n	800185a <HAL_TIM_IRQHandler+0x1b2>
 8001858:	bdd0      	pop	{r4, r6, r7, pc}
 800185a:	f06f 0120 	mvn.w	r1, #32
 800185e:	f840 1e10 	strt	r1, [r0, #16]
 8001862:	4620      	mov	r0, r4
 8001864:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001868:	f000 b804 	b.w	8001874 <HAL_TIMEx_CommutationCallback>

0800186c <HAL_TIM_IC_CaptureCallback>:
 800186c:	4770      	bx	lr

0800186e <HAL_TIM_OC_DelayElapsedCallback>:
 800186e:	4770      	bx	lr

08001870 <HAL_TIM_PWM_PulseFinishedCallback>:
 8001870:	4770      	bx	lr

08001872 <HAL_TIM_TriggerCallback>:
 8001872:	4770      	bx	lr

08001874 <HAL_TIMEx_CommutationCallback>:
 8001874:	4770      	bx	lr

08001876 <HAL_TIMEx_BreakCallback>:
 8001876:	4770      	bx	lr

08001878 <HAL_TIMEx_Break2Callback>:
 8001878:	4770      	bx	lr

0800187a <HAL_InitTick>:
 800187a:	b5b0      	push	{r4, r5, r7, lr}
 800187c:	af02      	add	r7, sp, #8
 800187e:	b086      	sub	sp, #24
 8001880:	4601      	mov	r1, r0
 8001882:	2036      	movs	r0, #54	; 0x36
 8001884:	2200      	movs	r2, #0
 8001886:	2400      	movs	r4, #0
 8001888:	f7ff fc5d 	bl	8001146 <HAL_NVIC_SetPriority>
 800188c:	2036      	movs	r0, #54	; 0x36
 800188e:	f7ff fc8d 	bl	80011ac <HAL_NVIC_EnableIRQ>
 8001892:	f241 0058 	movw	r0, #4184	; 0x1058
 8001896:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800189a:	6801      	ldr	r1, [r0, #0]
 800189c:	f041 0110 	orr.w	r1, r1, #16
 80018a0:	6001      	str	r1, [r0, #0]
 80018a2:	4669      	mov	r1, sp
 80018a4:	6800      	ldr	r0, [r0, #0]
 80018a6:	f000 0010 	and.w	r0, r0, #16
 80018aa:	9001      	str	r0, [sp, #4]
 80018ac:	9801      	ldr	r0, [sp, #4]
 80018ae:	a801      	add	r0, sp, #4
 80018b0:	f7ff fe21 	bl	80014f6 <HAL_RCC_GetClockConfig>
 80018b4:	9d04      	ldr	r5, [sp, #16]
 80018b6:	f7ff fdf4 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 80018ba:	2d00      	cmp	r5, #0
 80018bc:	f640 21a4 	movw	r1, #2724	; 0xaa4
 80018c0:	f241 0200 	movw	r2, #4096	; 0x1000
 80018c4:	f240 33e7 	movw	r3, #999	; 0x3e7
 80018c8:	bf18      	it	ne
 80018ca:	2501      	movne	r5, #1
 80018cc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80018d0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80018d4:	40a8      	lsls	r0, r5
 80018d6:	f64d 6583 	movw	r5, #56963	; 0xde83
 80018da:	618c      	str	r4, [r1, #24]
 80018dc:	f2c4 351b 	movt	r5, #17179	; 0x431b
 80018e0:	fba0 0505 	umull	r0, r5, r0, r5
 80018e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80018e8:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 80018ec:	e9c1 2000 	strd	r2, r0, [r1]
 80018f0:	4608      	mov	r0, r1
 80018f2:	e9c1 4302 	strd	r4, r3, [r1, #8]
 80018f6:	610c      	str	r4, [r1, #16]
 80018f8:	f7ff fe1e 	bl	8001538 <HAL_TIM_Base_Init>
 80018fc:	2800      	cmp	r0, #0
 80018fe:	bf1e      	ittt	ne
 8001900:	2001      	movne	r0, #1
 8001902:	b006      	addne	sp, #24
 8001904:	bdb0      	popne	{r4, r5, r7, pc}
 8001906:	f640 20a4 	movw	r0, #2724	; 0xaa4
 800190a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800190e:	f7ff feb4 	bl	800167a <HAL_TIM_Base_Start_IT>
 8001912:	b006      	add	sp, #24
 8001914:	bdb0      	pop	{r4, r5, r7, pc}

08001916 <HAL_TIM_PeriodElapsedCallback>:
 8001916:	f7ff bbf7 	b.w	8001108 <HAL_IncTick>

0800191a <TIM6_DAC_IRQHandler>:
 800191a:	f640 20a4 	movw	r0, #2724	; 0xaa4
 800191e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001922:	f7ff bec1 	b.w	80016a8 <HAL_TIM_IRQHandler>

08001926 <HAL_UART_Init>:
 8001926:	b084      	sub	sp, #16
 8001928:	f84d 4e00 	strt	r4, [sp]
 800192c:	f84d 6e04 	strt	r6, [sp, #4]
 8001930:	f84d 7e08 	strt	r7, [sp, #8]
 8001934:	f84d ee0c 	strt	lr, [sp, #12]
 8001938:	af02      	add	r7, sp, #8
 800193a:	4604      	mov	r4, r0
 800193c:	b1ac      	cbz	r4, 800196a <HAL_UART_Init+0x44>
 800193e:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001940:	b928      	cbnz	r0, 800194e <HAL_UART_Init+0x28>
 8001942:	2000      	movs	r0, #0
 8001944:	f844 0e70 	strt	r0, [r4, #112]
 8001948:	4620      	mov	r0, r4
 800194a:	f000 f82b 	bl	80019a4 <HAL_UART_MspInit>
 800194e:	2024      	movs	r0, #36	; 0x24
 8001950:	f844 0e74 	strt	r0, [r4, #116]
 8001954:	6820      	ldr	r0, [r4, #0]
 8001956:	6801      	ldr	r1, [r0, #0]
 8001958:	f021 0101 	bic.w	r1, r1, #1
 800195c:	f840 1e00 	strt	r1, [r0]
 8001960:	4620      	mov	r0, r4
 8001962:	f000 f821 	bl	80019a8 <UART_SetConfig>
 8001966:	2801      	cmp	r0, #1
 8001968:	d101      	bne.n	800196e <HAL_UART_Init+0x48>
 800196a:	2001      	movs	r0, #1
 800196c:	bdd0      	pop	{r4, r6, r7, pc}
 800196e:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001970:	2800      	cmp	r0, #0
 8001972:	bf1c      	itt	ne
 8001974:	4620      	movne	r0, r4
 8001976:	f000 f956 	blne	8001c26 <UART_AdvFeatureConfig>
 800197a:	6820      	ldr	r0, [r4, #0]
 800197c:	6841      	ldr	r1, [r0, #4]
 800197e:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001982:	f840 1e04 	strt	r1, [r0, #4]
 8001986:	6881      	ldr	r1, [r0, #8]
 8001988:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 800198c:	f840 1e08 	strt	r1, [r0, #8]
 8001990:	6801      	ldr	r1, [r0, #0]
 8001992:	f041 0101 	orr.w	r1, r1, #1
 8001996:	f840 1e00 	strt	r1, [r0]
 800199a:	4620      	mov	r0, r4
 800199c:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80019a0:	f000 b9b7 	b.w	8001d12 <UART_CheckIdleState>

080019a4 <HAL_UART_MspInit>:
 80019a4:	4770      	bx	lr
	...

080019a8 <UART_SetConfig>:
 80019a8:	b084      	sub	sp, #16
 80019aa:	f84d 4e00 	strt	r4, [sp]
 80019ae:	f84d 5e04 	strt	r5, [sp, #4]
 80019b2:	f84d 7e08 	strt	r7, [sp, #8]
 80019b6:	f84d ee0c 	strt	lr, [sp, #12]
 80019ba:	af02      	add	r7, sp, #8
 80019bc:	4604      	mov	r4, r0
 80019be:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019c2:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019c6:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019ca:	6821      	ldr	r1, [r4, #0]
 80019cc:	68a0      	ldr	r0, [r4, #8]
 80019ce:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019d2:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019d6:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019da:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019de:	4310      	orrs	r0, r2
 80019e0:	69e2      	ldr	r2, [r4, #28]
 80019e2:	4571      	cmp	r1, lr
 80019e4:	ea40 0003 	orr.w	r0, r0, r3
 80019e8:	680b      	ldr	r3, [r1, #0]
 80019ea:	ea40 0002 	orr.w	r0, r0, r2
 80019ee:	ea03 0305 	and.w	r3, r3, r5
 80019f2:	f04f 0510 	mov.w	r5, #16
 80019f6:	ea40 0003 	orr.w	r0, r0, r3
 80019fa:	f841 0e00 	strt	r0, [r1]
 80019fe:	6848      	ldr	r0, [r1, #4]
 8001a00:	68e3      	ldr	r3, [r4, #12]
 8001a02:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a06:	ea40 0003 	orr.w	r0, r0, r3
 8001a0a:	f841 0e04 	strt	r0, [r1, #4]
 8001a0e:	69a0      	ldr	r0, [r4, #24]
 8001a10:	bf1c      	itt	ne
 8001a12:	6a23      	ldrne	r3, [r4, #32]
 8001a14:	4318      	orrne	r0, r3
 8001a16:	688b      	ldr	r3, [r1, #8]
 8001a18:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a1c:	4318      	orrs	r0, r3
 8001a1e:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a22:	f841 0e08 	strt	r0, [r1, #8]
 8001a26:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a2a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a2e:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a32:	4299      	cmp	r1, r3
 8001a34:	dc15      	bgt.n	8001a62 <UART_SetConfig+0xba>
 8001a36:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a3a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a3e:	4299      	cmp	r1, r3
 8001a40:	d024      	beq.n	8001a8c <UART_SetConfig+0xe4>
 8001a42:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a46:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a4a:	4299      	cmp	r1, r3
 8001a4c:	d022      	beq.n	8001a94 <UART_SetConfig+0xec>
 8001a4e:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a52:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a56:	4299      	cmp	r1, r3
 8001a58:	d131      	bne.n	8001abe <UART_SetConfig+0x116>
 8001a5a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a5e:	099d      	lsrs	r5, r3, #6
 8001a60:	e023      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a62:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a66:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a6a:	4299      	cmp	r1, r3
 8001a6c:	d016      	beq.n	8001a9c <UART_SetConfig+0xf4>
 8001a6e:	4571      	cmp	r1, lr
 8001a70:	d018      	beq.n	8001aa4 <UART_SetConfig+0xfc>
 8001a72:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a76:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a7a:	4299      	cmp	r1, r3
 8001a7c:	d11f      	bne.n	8001abe <UART_SetConfig+0x116>
 8001a7e:	f8dc 5000 	ldr.w	r5, [ip]
 8001a82:	f247 3370 	movw	r3, #29552	; 0x7370
 8001a86:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a8a:	e012      	b.n	8001ab2 <UART_SetConfig+0x10a>
 8001a8c:	f8dc 3000 	ldr.w	r3, [ip]
 8001a90:	089d      	lsrs	r5, r3, #2
 8001a92:	e00a      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a94:	f8dc 3000 	ldr.w	r3, [ip]
 8001a98:	091d      	lsrs	r5, r3, #4
 8001a9a:	e006      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a9c:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa0:	0a1d      	lsrs	r5, r3, #8
 8001aa2:	e002      	b.n	8001aaa <UART_SetConfig+0x102>
 8001aa4:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa8:	0a9d      	lsrs	r5, r3, #10
 8001aaa:	f247 3380 	movw	r3, #29568	; 0x7380
 8001aae:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001ab2:	f005 0503 	and.w	r5, r5, #3
 8001ab6:	f085 0502 	eor.w	r5, r5, #2
 8001aba:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001abe:	4571      	cmp	r1, lr
 8001ac0:	d012      	beq.n	8001ae8 <UART_SetConfig+0x140>
 8001ac2:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001ac6:	d11d      	bne.n	8001b04 <UART_SetConfig+0x15c>
 8001ac8:	f005 001f 	and.w	r0, r5, #31
 8001acc:	2101      	movs	r1, #1
 8001ace:	2808      	cmp	r0, #8
 8001ad0:	f200 80a0 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001ad4:	e8df f000 	tbb	[pc, r0]
 8001ad8:	9e434005 	.word	0x9e434005
 8001adc:	9e9e9e49 	.word	0x9e9e9e49
 8001ae0:	004f      	.short	0x004f
 8001ae2:	f7ff fcde 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001ae6:	e042      	b.n	8001b6e <UART_SetConfig+0x1c6>
 8001ae8:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001aec:	2101      	movs	r1, #1
 8001aee:	2d04      	cmp	r5, #4
 8001af0:	f200 8090 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001af4:	e8df f005 	tbb	[pc, r5]
 8001af8:	8e161c03 	.word	0x8e161c03
 8001afc:	001a      	.short	0x001a
 8001afe:	f7ff fcd0 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b02:	e011      	b.n	8001b28 <UART_SetConfig+0x180>
 8001b04:	f005 021f 	and.w	r2, r5, #31
 8001b08:	2101      	movs	r1, #1
 8001b0a:	2a08      	cmp	r2, #8
 8001b0c:	f200 8082 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001b10:	e8df f002 	tbb	[pc, r2]
 8001b14:	80464305 	.word	0x80464305
 8001b18:	80808048 	.word	0x80808048
 8001b1c:	004e      	.short	0x004e
 8001b1e:	f7ff fcc0 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b22:	e041      	b.n	8001ba8 <UART_SetConfig+0x200>
 8001b24:	f7ff fc5a 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001b28:	b910      	cbnz	r0, 8001b30 <UART_SetConfig+0x188>
 8001b2a:	e072      	b.n	8001c12 <UART_SetConfig+0x26a>
 8001b2c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b30:	6862      	ldr	r2, [r4, #4]
 8001b32:	2101      	movs	r1, #1
 8001b34:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b38:	4298      	cmp	r0, r3
 8001b3a:	d36b      	bcc.n	8001c14 <UART_SetConfig+0x26c>
 8001b3c:	0313      	lsls	r3, r2, #12
 8001b3e:	4298      	cmp	r0, r3
 8001b40:	bf9c      	itt	ls
 8001b42:	2101      	movls	r1, #1
 8001b44:	2d04      	cmpls	r5, #4
 8001b46:	d865      	bhi.n	8001c14 <UART_SetConfig+0x26c>
 8001b48:	e8df f005 	tbb	[pc, r5]
 8001b4c:	64453e03 	.word	0x64453e03
 8001b50:	0052      	.short	0x0052
 8001b52:	f7ff fca6 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b56:	e040      	b.n	8001bda <UART_SetConfig+0x232>
 8001b58:	f7ff fcb8 	bl	80014cc <HAL_RCC_GetPCLK2Freq>
 8001b5c:	e007      	b.n	8001b6e <UART_SetConfig+0x1c6>
 8001b5e:	6861      	ldr	r1, [r4, #4]
 8001b60:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b64:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b68:	e008      	b.n	8001b7c <UART_SetConfig+0x1d4>
 8001b6a:	f7ff fc37 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001b6e:	6861      	ldr	r1, [r4, #4]
 8001b70:	0040      	lsls	r0, r0, #1
 8001b72:	084a      	lsrs	r2, r1, #1
 8001b74:	e003      	b.n	8001b7e <UART_SetConfig+0x1d6>
 8001b76:	6861      	ldr	r1, [r4, #4]
 8001b78:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b7c:	0848      	lsrs	r0, r1, #1
 8001b7e:	4410      	add	r0, r2
 8001b80:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b84:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b88:	4001      	ands	r1, r0
 8001b8a:	2910      	cmp	r1, #16
 8001b8c:	d303      	bcc.n	8001b96 <UART_SetConfig+0x1ee>
 8001b8e:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b92:	4308      	orrs	r0, r1
 8001b94:	e03a      	b.n	8001c0c <UART_SetConfig+0x264>
 8001b96:	2101      	movs	r1, #1
 8001b98:	e03c      	b.n	8001c14 <UART_SetConfig+0x26c>
 8001b9a:	f7ff fc97 	bl	80014cc <HAL_RCC_GetPCLK2Freq>
 8001b9e:	e003      	b.n	8001ba8 <UART_SetConfig+0x200>
 8001ba0:	6862      	ldr	r2, [r4, #4]
 8001ba2:	e008      	b.n	8001bb6 <UART_SetConfig+0x20e>
 8001ba4:	f7ff fc1a 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001ba8:	6862      	ldr	r2, [r4, #4]
 8001baa:	4601      	mov	r1, r0
 8001bac:	0850      	lsrs	r0, r2, #1
 8001bae:	e003      	b.n	8001bb8 <UART_SetConfig+0x210>
 8001bb0:	6862      	ldr	r2, [r4, #4]
 8001bb2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bb6:	0851      	lsrs	r1, r2, #1
 8001bb8:	4408      	add	r0, r1
 8001bba:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bbe:	b280      	uxth	r0, r0
 8001bc0:	2810      	cmp	r0, #16
 8001bc2:	d223      	bcs.n	8001c0c <UART_SetConfig+0x264>
 8001bc4:	2101      	movs	r1, #1
 8001bc6:	e025      	b.n	8001c14 <UART_SetConfig+0x26c>
 8001bc8:	2000      	movs	r0, #0
 8001bca:	2100      	movs	r1, #0
 8001bcc:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001bd0:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001bd4:	e006      	b.n	8001be4 <UART_SetConfig+0x23c>
 8001bd6:	f7ff fc01 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001bda:	6862      	ldr	r2, [r4, #4]
 8001bdc:	0e01      	lsrs	r1, r0, #24
 8001bde:	0853      	lsrs	r3, r2, #1
 8001be0:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001be4:	f141 0100 	adc.w	r1, r1, #0
 8001be8:	2300      	movs	r3, #0
 8001bea:	f7fe fb09 	bl	8000200 <__aeabi_uldivmod>
 8001bee:	e005      	b.n	8001bfc <UART_SetConfig+0x254>
 8001bf0:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001bf4:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001bf8:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bfc:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c00:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c04:	f2c0 020f 	movt	r2, #15
 8001c08:	4291      	cmp	r1, r2
 8001c0a:	d80a      	bhi.n	8001c22 <UART_SetConfig+0x27a>
 8001c0c:	6821      	ldr	r1, [r4, #0]
 8001c0e:	f841 0e0c 	strt	r0, [r1, #12]
 8001c12:	2100      	movs	r1, #0
 8001c14:	2000      	movs	r0, #0
 8001c16:	f844 0e60 	strt	r0, [r4, #96]
 8001c1a:	f844 0e64 	strt	r0, [r4, #100]
 8001c1e:	4608      	mov	r0, r1
 8001c20:	bdb0      	pop	{r4, r5, r7, pc}
 8001c22:	2101      	movs	r1, #1
 8001c24:	e7f6      	b.n	8001c14 <UART_SetConfig+0x26c>

08001c26 <UART_AdvFeatureConfig>:
 8001c26:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c28:	f011 0f01 	tst.w	r1, #1
 8001c2c:	d009      	beq.n	8001c42 <UART_AdvFeatureConfig+0x1c>
 8001c2e:	6802      	ldr	r2, [r0, #0]
 8001c30:	6853      	ldr	r3, [r2, #4]
 8001c32:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c36:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c3a:	ea43 030c 	orr.w	r3, r3, ip
 8001c3e:	f842 3e04 	strt	r3, [r2, #4]
 8001c42:	078a      	lsls	r2, r1, #30
 8001c44:	d509      	bpl.n	8001c5a <UART_AdvFeatureConfig+0x34>
 8001c46:	6802      	ldr	r2, [r0, #0]
 8001c48:	6853      	ldr	r3, [r2, #4]
 8001c4a:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c4e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c52:	ea43 030c 	orr.w	r3, r3, ip
 8001c56:	f842 3e04 	strt	r3, [r2, #4]
 8001c5a:	074a      	lsls	r2, r1, #29
 8001c5c:	d509      	bpl.n	8001c72 <UART_AdvFeatureConfig+0x4c>
 8001c5e:	6802      	ldr	r2, [r0, #0]
 8001c60:	6853      	ldr	r3, [r2, #4]
 8001c62:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c66:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c6a:	ea43 030c 	orr.w	r3, r3, ip
 8001c6e:	f842 3e04 	strt	r3, [r2, #4]
 8001c72:	070a      	lsls	r2, r1, #28
 8001c74:	d509      	bpl.n	8001c8a <UART_AdvFeatureConfig+0x64>
 8001c76:	6802      	ldr	r2, [r0, #0]
 8001c78:	6853      	ldr	r3, [r2, #4]
 8001c7a:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c7e:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c82:	ea43 030c 	orr.w	r3, r3, ip
 8001c86:	f842 3e04 	strt	r3, [r2, #4]
 8001c8a:	06ca      	lsls	r2, r1, #27
 8001c8c:	d509      	bpl.n	8001ca2 <UART_AdvFeatureConfig+0x7c>
 8001c8e:	6802      	ldr	r2, [r0, #0]
 8001c90:	6893      	ldr	r3, [r2, #8]
 8001c92:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c96:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c9a:	ea43 030c 	orr.w	r3, r3, ip
 8001c9e:	f842 3e08 	strt	r3, [r2, #8]
 8001ca2:	068a      	lsls	r2, r1, #26
 8001ca4:	d509      	bpl.n	8001cba <UART_AdvFeatureConfig+0x94>
 8001ca6:	6802      	ldr	r2, [r0, #0]
 8001ca8:	6893      	ldr	r3, [r2, #8]
 8001caa:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001cae:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001cb2:	ea43 030c 	orr.w	r3, r3, ip
 8001cb6:	f842 3e08 	strt	r3, [r2, #8]
 8001cba:	b082      	sub	sp, #8
 8001cbc:	f84d 7e00 	strt	r7, [sp]
 8001cc0:	f84d ee04 	strt	lr, [sp, #4]
 8001cc4:	466f      	mov	r7, sp
 8001cc6:	064a      	lsls	r2, r1, #25
 8001cc8:	d515      	bpl.n	8001cf6 <UART_AdvFeatureConfig+0xd0>
 8001cca:	f8d0 e000 	ldr.w	lr, [r0]
 8001cce:	f8de c004 	ldr.w	ip, [lr, #4]
 8001cd2:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001cd4:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001cd8:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001cdc:	ea42 0203 	orr.w	r2, r2, r3
 8001ce0:	f84e 2e04 	strt	r2, [lr, #4]
 8001ce4:	d107      	bne.n	8001cf6 <UART_AdvFeatureConfig+0xd0>
 8001ce6:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001cea:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001cec:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001cf0:	431a      	orrs	r2, r3
 8001cf2:	f84e 2e04 	strt	r2, [lr, #4]
 8001cf6:	0609      	lsls	r1, r1, #24
 8001cf8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001cfc:	bf58      	it	pl
 8001cfe:	4770      	bxpl	lr
 8001d00:	6801      	ldr	r1, [r0, #0]
 8001d02:	684a      	ldr	r2, [r1, #4]
 8001d04:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001d06:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001d0a:	4310      	orrs	r0, r2
 8001d0c:	f841 0e04 	strt	r0, [r1, #4]
 8001d10:	4770      	bx	lr

08001d12 <UART_CheckIdleState>:
 8001d12:	b085      	sub	sp, #20
 8001d14:	f84d 4e00 	strt	r4, [sp]
 8001d18:	f84d 5e04 	strt	r5, [sp, #4]
 8001d1c:	f84d 6e08 	strt	r6, [sp, #8]
 8001d20:	f84d 7e0c 	strt	r7, [sp, #12]
 8001d24:	f84d ee10 	strt	lr, [sp, #16]
 8001d28:	af03      	add	r7, sp, #12
 8001d2a:	b081      	sub	sp, #4
 8001d2c:	f84d be00 	strt	fp, [sp]
 8001d30:	4604      	mov	r4, r0
 8001d32:	2000      	movs	r0, #0
 8001d34:	f844 0e7c 	strt	r0, [r4, #124]
 8001d38:	f7ff f9ef 	bl	800111a <HAL_GetTick>
 8001d3c:	4605      	mov	r5, r0
 8001d3e:	6820      	ldr	r0, [r4, #0]
 8001d40:	6801      	ldr	r1, [r0, #0]
 8001d42:	f011 0f08 	tst.w	r1, #8
 8001d46:	d00f      	beq.n	8001d68 <UART_CheckIdleState+0x56>
 8001d48:	69c1      	ldr	r1, [r0, #28]
 8001d4a:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d4e:	d10b      	bne.n	8001d68 <UART_CheckIdleState+0x56>
 8001d50:	2600      	movs	r6, #0
 8001d52:	f7ff f9e2 	bl	800111a <HAL_GetTick>
 8001d56:	1b41      	subs	r1, r0, r5
 8001d58:	6820      	ldr	r0, [r4, #0]
 8001d5a:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d5e:	d11b      	bne.n	8001d98 <UART_CheckIdleState+0x86>
 8001d60:	69c1      	ldr	r1, [r0, #28]
 8001d62:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d66:	d0f4      	beq.n	8001d52 <UART_CheckIdleState+0x40>
 8001d68:	6801      	ldr	r1, [r0, #0]
 8001d6a:	f011 0f04 	tst.w	r1, #4
 8001d6e:	d101      	bne.n	8001d74 <UART_CheckIdleState+0x62>
 8001d70:	2600      	movs	r6, #0
 8001d72:	e01c      	b.n	8001dae <UART_CheckIdleState+0x9c>
 8001d74:	69c0      	ldr	r0, [r0, #28]
 8001d76:	2600      	movs	r6, #0
 8001d78:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d7c:	d117      	bne.n	8001dae <UART_CheckIdleState+0x9c>
 8001d7e:	f7ff f9cc 	bl	800111a <HAL_GetTick>
 8001d82:	1b41      	subs	r1, r0, r5
 8001d84:	6820      	ldr	r0, [r4, #0]
 8001d86:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d8a:	d105      	bne.n	8001d98 <UART_CheckIdleState+0x86>
 8001d8c:	69c0      	ldr	r0, [r0, #28]
 8001d8e:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d92:	d0f4      	beq.n	8001d7e <UART_CheckIdleState+0x6c>
 8001d94:	2600      	movs	r6, #0
 8001d96:	e00a      	b.n	8001dae <UART_CheckIdleState+0x9c>
 8001d98:	6801      	ldr	r1, [r0, #0]
 8001d9a:	2603      	movs	r6, #3
 8001d9c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001da0:	f840 1e00 	strt	r1, [r0]
 8001da4:	6881      	ldr	r1, [r0, #8]
 8001da6:	f021 0101 	bic.w	r1, r1, #1
 8001daa:	f840 1e08 	strt	r1, [r0, #8]
 8001dae:	2020      	movs	r0, #32
 8001db0:	f844 0e74 	strt	r0, [r4, #116]
 8001db4:	f844 0e78 	strt	r0, [r4, #120]
 8001db8:	2000      	movs	r0, #0
 8001dba:	f844 0e70 	strt	r0, [r4, #112]
 8001dbe:	4630      	mov	r0, r6
 8001dc0:	f85d bb04 	ldr.w	fp, [sp], #4
 8001dc4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001dc6 <HAL_UART_Transmit>:
 8001dc6:	b085      	sub	sp, #20
 8001dc8:	f84d 4e00 	strt	r4, [sp]
 8001dcc:	f84d 5e04 	strt	r5, [sp, #4]
 8001dd0:	f84d 6e08 	strt	r6, [sp, #8]
 8001dd4:	f84d 7e0c 	strt	r7, [sp, #12]
 8001dd8:	f84d ee10 	strt	lr, [sp, #16]
 8001ddc:	af03      	add	r7, sp, #12
 8001dde:	b084      	sub	sp, #16
 8001de0:	f84d 8e00 	strt	r8, [sp]
 8001de4:	f84d 9e04 	strt	r9, [sp, #4]
 8001de8:	f84d ae08 	strt	sl, [sp, #8]
 8001dec:	f84d be0c 	strt	fp, [sp, #12]
 8001df0:	b081      	sub	sp, #4
 8001df2:	4604      	mov	r4, r0
 8001df4:	461d      	mov	r5, r3
 8001df6:	4616      	mov	r6, r2
 8001df8:	4689      	mov	r9, r1
 8001dfa:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001dfc:	2820      	cmp	r0, #32
 8001dfe:	d109      	bne.n	8001e14 <HAL_UART_Transmit+0x4e>
 8001e00:	f1b9 0f00 	cmp.w	r9, #0
 8001e04:	f04f 0001 	mov.w	r0, #1
 8001e08:	bf18      	it	ne
 8001e0a:	2e00      	cmpne	r6, #0
 8001e0c:	d003      	beq.n	8001e16 <HAL_UART_Transmit+0x50>
 8001e0e:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001e10:	2801      	cmp	r0, #1
 8001e12:	d104      	bne.n	8001e1e <HAL_UART_Transmit+0x58>
 8001e14:	2002      	movs	r0, #2
 8001e16:	b001      	add	sp, #4
 8001e18:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001e1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001e1e:	2001      	movs	r0, #1
 8001e20:	f844 0e70 	strt	r0, [r4, #112]
 8001e24:	2000      	movs	r0, #0
 8001e26:	f844 0e7c 	strt	r0, [r4, #124]
 8001e2a:	2021      	movs	r0, #33	; 0x21
 8001e2c:	f844 0e74 	strt	r0, [r4, #116]
 8001e30:	f7ff f973 	bl	800111a <HAL_GetTick>
 8001e34:	f824 6e50 	strht	r6, [r4, #80]
 8001e38:	f824 6e52 	strht	r6, [r4, #82]
 8001e3c:	4680      	mov	r8, r0
 8001e3e:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e42:	f8d4 b000 	ldr.w	fp, [r4]
 8001e46:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001e4a:	2900      	cmp	r1, #0
 8001e4c:	d046      	beq.n	8001edc <HAL_UART_Transmit+0x116>
 8001e4e:	f105 0a01 	add.w	sl, r5, #1
 8001e52:	0600      	lsls	r0, r0, #24
 8001e54:	d410      	bmi.n	8001e78 <HAL_UART_Transmit+0xb2>
 8001e56:	465e      	mov	r6, fp
 8001e58:	f1ba 0f00 	cmp.w	sl, #0
 8001e5c:	d007      	beq.n	8001e6e <HAL_UART_Transmit+0xa8>
 8001e5e:	b345      	cbz	r5, 8001eb2 <HAL_UART_Transmit+0xec>
 8001e60:	f7ff f95b 	bl	800111a <HAL_GetTick>
 8001e64:	6826      	ldr	r6, [r4, #0]
 8001e66:	eba0 0008 	sub.w	r0, r0, r8
 8001e6a:	42a8      	cmp	r0, r5
 8001e6c:	d822      	bhi.n	8001eb4 <HAL_UART_Transmit+0xee>
 8001e6e:	69f0      	ldr	r0, [r6, #28]
 8001e70:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001e74:	d0f0      	beq.n	8001e58 <HAL_UART_Transmit+0x92>
 8001e76:	e000      	b.n	8001e7a <HAL_UART_Transmit+0xb4>
 8001e78:	465e      	mov	r6, fp
 8001e7a:	68a0      	ldr	r0, [r4, #8]
 8001e7c:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e80:	bf04      	itt	eq
 8001e82:	6920      	ldreq	r0, [r4, #16]
 8001e84:	2800      	cmpeq	r0, #0
 8001e86:	d002      	beq.n	8001e8e <HAL_UART_Transmit+0xc8>
 8001e88:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e8c:	e003      	b.n	8001e96 <HAL_UART_Transmit+0xd0>
 8001e8e:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e92:	f36f 205f 	bfc	r0, #9, #23
 8001e96:	f826 0e28 	strht	r0, [r6, #40]
 8001e9a:	46b3      	mov	fp, r6
 8001e9c:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001ea0:	3801      	subs	r0, #1
 8001ea2:	f824 0e52 	strht	r0, [r4, #82]
 8001ea6:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001eaa:	69f0      	ldr	r0, [r6, #28]
 8001eac:	2900      	cmp	r1, #0
 8001eae:	d1d0      	bne.n	8001e52 <HAL_UART_Transmit+0x8c>
 8001eb0:	e015      	b.n	8001ede <HAL_UART_Transmit+0x118>
 8001eb2:	465e      	mov	r6, fp
 8001eb4:	6830      	ldr	r0, [r6, #0]
 8001eb6:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001eba:	f846 0e00 	strt	r0, [r6]
 8001ebe:	68b0      	ldr	r0, [r6, #8]
 8001ec0:	f020 0001 	bic.w	r0, r0, #1
 8001ec4:	f846 0e08 	strt	r0, [r6, #8]
 8001ec8:	2020      	movs	r0, #32
 8001eca:	f844 0e74 	strt	r0, [r4, #116]
 8001ece:	f844 0e78 	strt	r0, [r4, #120]
 8001ed2:	2000      	movs	r0, #0
 8001ed4:	f844 0e70 	strt	r0, [r4, #112]
 8001ed8:	2003      	movs	r0, #3
 8001eda:	e79c      	b.n	8001e16 <HAL_UART_Transmit+0x50>
 8001edc:	465e      	mov	r6, fp
 8001ede:	0640      	lsls	r0, r0, #25
 8001ee0:	d411      	bmi.n	8001f06 <HAL_UART_Transmit+0x140>
 8001ee2:	f105 0901 	add.w	r9, r5, #1
 8001ee6:	4630      	mov	r0, r6
 8001ee8:	f1b9 0f00 	cmp.w	r9, #0
 8001eec:	d007      	beq.n	8001efe <HAL_UART_Transmit+0x138>
 8001eee:	b18d      	cbz	r5, 8001f14 <HAL_UART_Transmit+0x14e>
 8001ef0:	f7ff f913 	bl	800111a <HAL_GetTick>
 8001ef4:	eba0 0108 	sub.w	r1, r0, r8
 8001ef8:	6820      	ldr	r0, [r4, #0]
 8001efa:	42a9      	cmp	r1, r5
 8001efc:	d80b      	bhi.n	8001f16 <HAL_UART_Transmit+0x150>
 8001efe:	69c1      	ldr	r1, [r0, #28]
 8001f00:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001f04:	d0f0      	beq.n	8001ee8 <HAL_UART_Transmit+0x122>
 8001f06:	2020      	movs	r0, #32
 8001f08:	f844 0e74 	strt	r0, [r4, #116]
 8001f0c:	2000      	movs	r0, #0
 8001f0e:	f844 0e70 	strt	r0, [r4, #112]
 8001f12:	e780      	b.n	8001e16 <HAL_UART_Transmit+0x50>
 8001f14:	4630      	mov	r0, r6
 8001f16:	6801      	ldr	r1, [r0, #0]
 8001f18:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001f1c:	f840 1e00 	strt	r1, [r0]
 8001f20:	6881      	ldr	r1, [r0, #8]
 8001f22:	f021 0101 	bic.w	r1, r1, #1
 8001f26:	f840 1e08 	strt	r1, [r0, #8]
 8001f2a:	e7cd      	b.n	8001ec8 <HAL_UART_Transmit+0x102>

08001f2c <BSP_COM_Init>:
 8001f2c:	b085      	sub	sp, #20
 8001f2e:	f84d 4e00 	strt	r4, [sp]
 8001f32:	f84d 5e04 	strt	r5, [sp, #4]
 8001f36:	f84d 6e08 	strt	r6, [sp, #8]
 8001f3a:	f84d 7e0c 	strt	r7, [sp, #12]
 8001f3e:	f84d ee10 	strt	lr, [sp, #16]
 8001f42:	af03      	add	r7, sp, #12
 8001f44:	b083      	sub	sp, #12
 8001f46:	f84d 8e00 	strt	r8, [sp]
 8001f4a:	f84d 9e04 	strt	r9, [sp, #4]
 8001f4e:	f84d be08 	strt	fp, [sp, #8]
 8001f52:	b086      	sub	sp, #24
 8001f54:	4605      	mov	r5, r0
 8001f56:	4688      	mov	r8, r1
 8001f58:	bb25      	cbnz	r5, 8001fa4 <BSP_COM_Init+0x78>
 8001f5a:	f241 004c 	movw	r0, #4172	; 0x104c
 8001f5e:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001f62:	6801      	ldr	r1, [r0, #0]
 8001f64:	f041 0102 	orr.w	r1, r1, #2
 8001f68:	f840 1e00 	strt	r1, [r0]
 8001f6c:	6801      	ldr	r1, [r0, #0]
 8001f6e:	f001 0102 	and.w	r1, r1, #2
 8001f72:	f84d 1e04 	strt	r1, [sp, #4]
 8001f76:	9901      	ldr	r1, [sp, #4]
 8001f78:	6801      	ldr	r1, [r0, #0]
 8001f7a:	f041 0102 	orr.w	r1, r1, #2
 8001f7e:	f840 1e00 	strt	r1, [r0]
 8001f82:	6801      	ldr	r1, [r0, #0]
 8001f84:	f001 0102 	and.w	r1, r1, #2
 8001f88:	f84d 1e04 	strt	r1, [sp, #4]
 8001f8c:	9901      	ldr	r1, [sp, #4]
 8001f8e:	6941      	ldr	r1, [r0, #20]
 8001f90:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001f94:	f840 1e14 	strt	r1, [r0, #20]
 8001f98:	6940      	ldr	r0, [r0, #20]
 8001f9a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001f9e:	f84d 0e04 	strt	r0, [sp, #4]
 8001fa2:	9801      	ldr	r0, [sp, #4]
 8001fa4:	2040      	movs	r0, #64	; 0x40
 8001fa6:	2402      	movs	r4, #2
 8001fa8:	ae01      	add	r6, sp, #4
 8001faa:	f04f 0907 	mov.w	r9, #7
 8001fae:	f84d 0e04 	strt	r0, [sp, #4]
 8001fb2:	2000      	movs	r0, #0
 8001fb4:	f84d 4e08 	strt	r4, [sp, #8]
 8001fb8:	f84d 4e10 	strt	r4, [sp, #16]
 8001fbc:	4631      	mov	r1, r6
 8001fbe:	f84d 0e0c 	strt	r0, [sp, #12]
 8001fc2:	f240 000c 	movw	r0, #12
 8001fc6:	f84d 9e14 	strt	r9, [sp, #20]
 8001fca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fce:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001fd2:	f7ff f8fb 	bl	80011cc <HAL_GPIO_Init>
 8001fd6:	2080      	movs	r0, #128	; 0x80
 8001fd8:	4631      	mov	r1, r6
 8001fda:	f84d 0e04 	strt	r0, [sp, #4]
 8001fde:	f84d 4e08 	strt	r4, [sp, #8]
 8001fe2:	f240 0010 	movw	r0, #16
 8001fe6:	f84d 9e14 	strt	r9, [sp, #20]
 8001fea:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fee:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ff2:	f7ff f8eb 	bl	80011cc <HAL_GPIO_Init>
 8001ff6:	f240 0008 	movw	r0, #8
 8001ffa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ffe:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002002:	f848 0e00 	strt	r0, [r8]
 8002006:	4640      	mov	r0, r8
 8002008:	f7ff fc8d 	bl	8001926 <HAL_UART_Init>
 800200c:	b006      	add	sp, #24
 800200e:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002012:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002014 <benchmark>:
 8002014:	f640 20f0 	movw	r0, #2800	; 0xaf0
 8002018:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800201c:	f000 b800 	b.w	8002020 <Sum>

08002020 <Sum>:
 8002020:	b084      	sub	sp, #16
 8002022:	f84d 4e00 	strt	r4, [sp]
 8002026:	f84d 5e04 	strt	r5, [sp, #4]
 800202a:	f84d 7e08 	strt	r7, [sp, #8]
 800202e:	f84d ee0c 	strt	lr, [sp, #12]
 8002032:	af02      	add	r7, sp, #8
 8002034:	4684      	mov	ip, r0
 8002036:	2100      	movs	r1, #0
 8002038:	2200      	movs	r2, #0
 800203a:	f04f 0e00 	mov.w	lr, #0
 800203e:	2000      	movs	r0, #0
 8002040:	2300      	movs	r3, #0
 8002042:	f85c 4001 	ldr.w	r4, [ip, r1]
 8002046:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800204a:	dd02      	ble.n	8002052 <Sum+0x32>
 800204c:	4420      	add	r0, r4
 800204e:	3201      	adds	r2, #1
 8002050:	e002      	b.n	8002058 <Sum+0x38>
 8002052:	4423      	add	r3, r4
 8002054:	f10e 0e01 	add.w	lr, lr, #1
 8002058:	eb0c 0401 	add.w	r4, ip, r1
 800205c:	6865      	ldr	r5, [r4, #4]
 800205e:	2d00      	cmp	r5, #0
 8002060:	db02      	blt.n	8002068 <Sum+0x48>
 8002062:	4428      	add	r0, r5
 8002064:	3201      	adds	r2, #1
 8002066:	e002      	b.n	800206e <Sum+0x4e>
 8002068:	442b      	add	r3, r5
 800206a:	f10e 0e01 	add.w	lr, lr, #1
 800206e:	68a5      	ldr	r5, [r4, #8]
 8002070:	2d00      	cmp	r5, #0
 8002072:	db02      	blt.n	800207a <Sum+0x5a>
 8002074:	4428      	add	r0, r5
 8002076:	3201      	adds	r2, #1
 8002078:	e002      	b.n	8002080 <Sum+0x60>
 800207a:	442b      	add	r3, r5
 800207c:	f10e 0e01 	add.w	lr, lr, #1
 8002080:	68e5      	ldr	r5, [r4, #12]
 8002082:	2d00      	cmp	r5, #0
 8002084:	db02      	blt.n	800208c <Sum+0x6c>
 8002086:	4428      	add	r0, r5
 8002088:	3201      	adds	r2, #1
 800208a:	e002      	b.n	8002092 <Sum+0x72>
 800208c:	442b      	add	r3, r5
 800208e:	f10e 0e01 	add.w	lr, lr, #1
 8002092:	6925      	ldr	r5, [r4, #16]
 8002094:	2d00      	cmp	r5, #0
 8002096:	db02      	blt.n	800209e <Sum+0x7e>
 8002098:	4428      	add	r0, r5
 800209a:	3201      	adds	r2, #1
 800209c:	e002      	b.n	80020a4 <Sum+0x84>
 800209e:	442b      	add	r3, r5
 80020a0:	f10e 0e01 	add.w	lr, lr, #1
 80020a4:	6965      	ldr	r5, [r4, #20]
 80020a6:	2d00      	cmp	r5, #0
 80020a8:	db02      	blt.n	80020b0 <Sum+0x90>
 80020aa:	4428      	add	r0, r5
 80020ac:	3201      	adds	r2, #1
 80020ae:	e002      	b.n	80020b6 <Sum+0x96>
 80020b0:	442b      	add	r3, r5
 80020b2:	f10e 0e01 	add.w	lr, lr, #1
 80020b6:	69a5      	ldr	r5, [r4, #24]
 80020b8:	2d00      	cmp	r5, #0
 80020ba:	db02      	blt.n	80020c2 <Sum+0xa2>
 80020bc:	4428      	add	r0, r5
 80020be:	3201      	adds	r2, #1
 80020c0:	e002      	b.n	80020c8 <Sum+0xa8>
 80020c2:	442b      	add	r3, r5
 80020c4:	f10e 0e01 	add.w	lr, lr, #1
 80020c8:	69e5      	ldr	r5, [r4, #28]
 80020ca:	2d00      	cmp	r5, #0
 80020cc:	db02      	blt.n	80020d4 <Sum+0xb4>
 80020ce:	4428      	add	r0, r5
 80020d0:	3201      	adds	r2, #1
 80020d2:	e002      	b.n	80020da <Sum+0xba>
 80020d4:	442b      	add	r3, r5
 80020d6:	f10e 0e01 	add.w	lr, lr, #1
 80020da:	6a25      	ldr	r5, [r4, #32]
 80020dc:	2d00      	cmp	r5, #0
 80020de:	db02      	blt.n	80020e6 <Sum+0xc6>
 80020e0:	4428      	add	r0, r5
 80020e2:	3201      	adds	r2, #1
 80020e4:	e002      	b.n	80020ec <Sum+0xcc>
 80020e6:	442b      	add	r3, r5
 80020e8:	f10e 0e01 	add.w	lr, lr, #1
 80020ec:	6a64      	ldr	r4, [r4, #36]	; 0x24
 80020ee:	2c00      	cmp	r4, #0
 80020f0:	db02      	blt.n	80020f8 <Sum+0xd8>
 80020f2:	4420      	add	r0, r4
 80020f4:	3201      	adds	r2, #1
 80020f6:	e002      	b.n	80020fe <Sum+0xde>
 80020f8:	4423      	add	r3, r4
 80020fa:	f10e 0e01 	add.w	lr, lr, #1
 80020fe:	3128      	adds	r1, #40	; 0x28
 8002100:	f5b1 7fc8 	cmp.w	r1, #400	; 0x190
 8002104:	d19d      	bne.n	8002042 <Sum+0x22>
 8002106:	f640 21ec 	movw	r1, #2796	; 0xaec
 800210a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800210e:	f841 3e00 	strt	r3, [r1]
 8002112:	f640 4188 	movw	r1, #3208	; 0xc88
 8002116:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800211a:	f841 ee00 	strt	lr, [r1]
 800211e:	f640 4180 	movw	r1, #3200	; 0xc80
 8002122:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002126:	f841 0e00 	strt	r0, [r1]
 800212a:	f640 4184 	movw	r1, #3204	; 0xc84
 800212e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002132:	f841 2e00 	strt	r2, [r1]
 8002136:	bdb0      	pop	{r4, r5, r7, pc}

08002138 <Initialize>:
 8002138:	b085      	sub	sp, #20
 800213a:	f84d 4e00 	strt	r4, [sp]
 800213e:	f84d 5e04 	strt	r5, [sp, #4]
 8002142:	f84d 6e08 	strt	r6, [sp, #8]
 8002146:	f84d 7e0c 	strt	r7, [sp, #12]
 800214a:	f84d ee10 	strt	lr, [sp, #16]
 800214e:	af03      	add	r7, sp, #12
 8002150:	b081      	sub	sp, #4
 8002152:	f84d 8e00 	strt	r8, [sp]
 8002156:	f640 22e8 	movw	r2, #2792	; 0xae8
 800215a:	f241 4ec7 	movw	lr, #5319	; 0x14c7
 800215e:	2100      	movs	r1, #0
 8002160:	f04f 0c85 	mov.w	ip, #133	; 0x85
 8002164:	f641 789f 	movw	r8, #8095	; 0x1f9f
 8002168:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800216c:	f2c1 0e31 	movt	lr, #4145	; 0x1031
 8002170:	6814      	ldr	r4, [r2, #0]
 8002172:	fb04 f40c 	mul.w	r4, r4, ip
 8002176:	3451      	adds	r4, #81	; 0x51
 8002178:	fb54 f50e 	smmul	r5, r4, lr
 800217c:	126e      	asrs	r6, r5, #9
 800217e:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 8002182:	fb05 4418 	mls	r4, r5, r8, r4
 8002186:	f842 4e00 	strt	r4, [r2]
 800218a:	bfe8      	it	al
 800218c:	1840      	addal	r0, r0, r1
 800218e:	f840 4e00 	strt	r4, [r0]
 8002192:	bfe8      	it	al
 8002194:	1a40      	subal	r0, r0, r1
 8002196:	6814      	ldr	r4, [r2, #0]
 8002198:	fb04 f40c 	mul.w	r4, r4, ip
 800219c:	3451      	adds	r4, #81	; 0x51
 800219e:	fb54 f50e 	smmul	r5, r4, lr
 80021a2:	126e      	asrs	r6, r5, #9
 80021a4:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 80021a8:	fb05 4518 	mls	r5, r5, r8, r4
 80021ac:	1844      	adds	r4, r0, r1
 80021ae:	3128      	adds	r1, #40	; 0x28
 80021b0:	f842 5e00 	strt	r5, [r2]
 80021b4:	f844 5e04 	strt	r5, [r4, #4]
 80021b8:	f5b1 7fc8 	cmp.w	r1, #400	; 0x190
 80021bc:	6815      	ldr	r5, [r2, #0]
 80021be:	fb05 f50c 	mul.w	r5, r5, ip
 80021c2:	f105 0551 	add.w	r5, r5, #81	; 0x51
 80021c6:	fb55 f60e 	smmul	r6, r5, lr
 80021ca:	ea4f 2366 	mov.w	r3, r6, asr #9
 80021ce:	eb03 73d6 	add.w	r3, r3, r6, lsr #31
 80021d2:	fb03 5318 	mls	r3, r3, r8, r5
 80021d6:	f842 3e00 	strt	r3, [r2]
 80021da:	f844 3e08 	strt	r3, [r4, #8]
 80021de:	6813      	ldr	r3, [r2, #0]
 80021e0:	fb03 f30c 	mul.w	r3, r3, ip
 80021e4:	f103 0351 	add.w	r3, r3, #81	; 0x51
 80021e8:	fb53 f50e 	smmul	r5, r3, lr
 80021ec:	ea4f 2665 	mov.w	r6, r5, asr #9
 80021f0:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 80021f4:	fb05 3318 	mls	r3, r5, r8, r3
 80021f8:	f842 3e00 	strt	r3, [r2]
 80021fc:	f844 3e0c 	strt	r3, [r4, #12]
 8002200:	6813      	ldr	r3, [r2, #0]
 8002202:	fb03 f30c 	mul.w	r3, r3, ip
 8002206:	f103 0351 	add.w	r3, r3, #81	; 0x51
 800220a:	fb53 f50e 	smmul	r5, r3, lr
 800220e:	ea4f 2665 	mov.w	r6, r5, asr #9
 8002212:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 8002216:	fb05 3318 	mls	r3, r5, r8, r3
 800221a:	f842 3e00 	strt	r3, [r2]
 800221e:	f844 3e10 	strt	r3, [r4, #16]
 8002222:	6813      	ldr	r3, [r2, #0]
 8002224:	fb03 f30c 	mul.w	r3, r3, ip
 8002228:	f103 0351 	add.w	r3, r3, #81	; 0x51
 800222c:	fb53 f50e 	smmul	r5, r3, lr
 8002230:	ea4f 2665 	mov.w	r6, r5, asr #9
 8002234:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 8002238:	fb05 3318 	mls	r3, r5, r8, r3
 800223c:	f842 3e00 	strt	r3, [r2]
 8002240:	f844 3e14 	strt	r3, [r4, #20]
 8002244:	6813      	ldr	r3, [r2, #0]
 8002246:	fb03 f30c 	mul.w	r3, r3, ip
 800224a:	f103 0351 	add.w	r3, r3, #81	; 0x51
 800224e:	fb53 f50e 	smmul	r5, r3, lr
 8002252:	ea4f 2665 	mov.w	r6, r5, asr #9
 8002256:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 800225a:	fb05 3318 	mls	r3, r5, r8, r3
 800225e:	f842 3e00 	strt	r3, [r2]
 8002262:	f844 3e18 	strt	r3, [r4, #24]
 8002266:	6813      	ldr	r3, [r2, #0]
 8002268:	fb03 f30c 	mul.w	r3, r3, ip
 800226c:	f103 0351 	add.w	r3, r3, #81	; 0x51
 8002270:	fb53 f50e 	smmul	r5, r3, lr
 8002274:	ea4f 2665 	mov.w	r6, r5, asr #9
 8002278:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 800227c:	fb05 3318 	mls	r3, r5, r8, r3
 8002280:	f842 3e00 	strt	r3, [r2]
 8002284:	f844 3e1c 	strt	r3, [r4, #28]
 8002288:	6813      	ldr	r3, [r2, #0]
 800228a:	fb03 f30c 	mul.w	r3, r3, ip
 800228e:	f103 0351 	add.w	r3, r3, #81	; 0x51
 8002292:	fb53 f50e 	smmul	r5, r3, lr
 8002296:	ea4f 2665 	mov.w	r6, r5, asr #9
 800229a:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 800229e:	fb05 3318 	mls	r3, r5, r8, r3
 80022a2:	f842 3e00 	strt	r3, [r2]
 80022a6:	f844 3e20 	strt	r3, [r4, #32]
 80022aa:	6813      	ldr	r3, [r2, #0]
 80022ac:	fb03 f30c 	mul.w	r3, r3, ip
 80022b0:	f103 0351 	add.w	r3, r3, #81	; 0x51
 80022b4:	fb53 f50e 	smmul	r5, r3, lr
 80022b8:	ea4f 2665 	mov.w	r6, r5, asr #9
 80022bc:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 80022c0:	fb05 3318 	mls	r3, r5, r8, r3
 80022c4:	f842 3e00 	strt	r3, [r2]
 80022c8:	f844 3e24 	strt	r3, [r4, #36]
 80022cc:	f47f af50 	bne.w	8002170 <Initialize+0x38>
 80022d0:	2000      	movs	r0, #0
 80022d2:	f85d 8b04 	ldr.w	r8, [sp], #4
 80022d6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080022d8 <initialise_benchmark>:
 80022d8:	f640 20e8 	movw	r0, #2792	; 0xae8
 80022dc:	2100      	movs	r1, #0
 80022de:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022e2:	f840 1e00 	strt	r1, [r0]
 80022e6:	f640 20f0 	movw	r0, #2800	; 0xaf0
 80022ea:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022ee:	f7ff bf23 	b.w	8002138 <Initialize>

080022f2 <verify_benchmark>:
 80022f2:	f640 5283 	movw	r2, #3459	; 0xd83
 80022f6:	2100      	movs	r1, #0
 80022f8:	f2c0 0206 	movt	r2, #6
 80022fc:	4290      	cmp	r0, r2
 80022fe:	bf08      	it	eq
 8002300:	2101      	moveq	r1, #1
 8002302:	4608      	mov	r0, r1
 8002304:	4770      	bx	lr

08002306 <__io_putchar>:
 8002306:	b082      	sub	sp, #8
 8002308:	f84d 7e00 	strt	r7, [sp]
 800230c:	f84d ee04 	strt	lr, [sp, #4]
 8002310:	466f      	mov	r7, sp
 8002312:	b082      	sub	sp, #8
 8002314:	f84d 0e04 	strt	r0, [sp, #4]
 8002318:	f640 10e4 	movw	r0, #2532	; 0x9e4
 800231c:	a901      	add	r1, sp, #4
 800231e:	2201      	movs	r2, #1
 8002320:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002324:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002328:	f7ff fd4d 	bl	8001dc6 <HAL_UART_Transmit>
 800232c:	9801      	ldr	r0, [sp, #4]
 800232e:	b002      	add	sp, #8
 8002330:	bd80      	pop	{r7, pc}

08002332 <main>:
 8002332:	b084      	sub	sp, #16
 8002334:	f84d 4e00 	strt	r4, [sp]
 8002338:	f84d 5e04 	strt	r5, [sp, #4]
 800233c:	f84d 7e08 	strt	r7, [sp, #8]
 8002340:	f84d ee0c 	strt	lr, [sp, #12]
 8002344:	af02      	add	r7, sp, #8
 8002346:	f640 11e4 	movw	r1, #2532	; 0x9e4
 800234a:	f643 0000 	movw	r0, #14336	; 0x3800
 800234e:	220c      	movs	r2, #12
 8002350:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002354:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002358:	f841 0e00 	strt	r0, [r1]
 800235c:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002360:	f841 0e04 	strt	r0, [r1, #4]
 8002364:	2000      	movs	r0, #0
 8002366:	f841 0e08 	strt	r0, [r1, #8]
 800236a:	f841 0e0c 	strt	r0, [r1, #12]
 800236e:	f841 0e10 	strt	r0, [r1, #16]
 8002372:	f841 0e24 	strt	r0, [r1, #36]
 8002376:	f841 0e1c 	strt	r0, [r1, #28]
 800237a:	f841 0e20 	strt	r0, [r1, #32]
 800237e:	f841 2e14 	strt	r2, [r1, #20]
 8002382:	f841 0e18 	strt	r0, [r1, #24]
 8002386:	2000      	movs	r0, #0
 8002388:	f7ff fdd0 	bl	8001f2c <BSP_COM_Init>
 800238c:	f7ff ffa4 	bl	80022d8 <initialise_benchmark>
 8002390:	f247 3090 	movw	r0, #29584	; 0x7390
 8002394:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002398:	f000 f96c 	bl	8002674 <printf>
 800239c:	f247 4036 	movw	r0, #29750	; 0x7436
 80023a0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023a4:	f000 f9c8 	bl	8002738 <puts>
 80023a8:	f7fe fe9e 	bl	80010e8 <HAL_Init>
 80023ac:	f7fe feb5 	bl	800111a <HAL_GetTick>
 80023b0:	4604      	mov	r4, r0
 80023b2:	f7ff fe2f 	bl	8002014 <benchmark>
 80023b6:	4605      	mov	r5, r0
 80023b8:	f7fe feaf 	bl	800111a <HAL_GetTick>
 80023bc:	1b04      	subs	r4, r0, r4
 80023be:	4628      	mov	r0, r5
 80023c0:	f7ff ff97 	bl	80022f2 <verify_benchmark>
 80023c4:	1c41      	adds	r1, r0, #1
 80023c6:	d006      	beq.n	80023d6 <main+0xa4>
 80023c8:	2801      	cmp	r0, #1
 80023ca:	d109      	bne.n	80023e0 <main+0xae>
 80023cc:	f247 30a2 	movw	r0, #29602	; 0x73a2
 80023d0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023d4:	e008      	b.n	80023e8 <main+0xb6>
 80023d6:	f247 30c6 	movw	r0, #29638	; 0x73c6
 80023da:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023de:	e003      	b.n	80023e8 <main+0xb6>
 80023e0:	f247 30fb 	movw	r0, #29691	; 0x73fb
 80023e4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023e8:	4621      	mov	r1, r4
 80023ea:	f000 f943 	bl	8002674 <printf>
 80023ee:	2000      	movs	r0, #0
 80023f0:	bdb0      	pop	{r4, r5, r7, pc}

080023f2 <SysTick_Handler>:
 80023f2:	b082      	sub	sp, #8
 80023f4:	f84d 7e00 	strt	r7, [sp]
 80023f8:	f84d ee04 	strt	lr, [sp, #4]
 80023fc:	466f      	mov	r7, sp
 80023fe:	f7fe fe83 	bl	8001108 <HAL_IncTick>
 8002402:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002406:	f7fe bede 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

0800240a <_read>:
 800240a:	b085      	sub	sp, #20
 800240c:	f84d 4e00 	strt	r4, [sp]
 8002410:	f84d 5e04 	strt	r5, [sp, #4]
 8002414:	f84d 6e08 	strt	r6, [sp, #8]
 8002418:	f84d 7e0c 	strt	r7, [sp, #12]
 800241c:	f84d ee10 	strt	lr, [sp, #16]
 8002420:	af03      	add	r7, sp, #12
 8002422:	b081      	sub	sp, #4
 8002424:	f84d be00 	strt	fp, [sp]
 8002428:	4614      	mov	r4, r2
 800242a:	460d      	mov	r5, r1
 800242c:	2c01      	cmp	r4, #1
 800242e:	db08      	blt.n	8002442 <_read+0x38>
 8002430:	4626      	mov	r6, r4
 8002432:	f3af 8000 	nop.w
 8002436:	f805 0e00 	strbt	r0, [r5]
 800243a:	bfe8      	it	al
 800243c:	3501      	addal	r5, #1
 800243e:	3e01      	subs	r6, #1
 8002440:	d1f7      	bne.n	8002432 <_read+0x28>
 8002442:	4620      	mov	r0, r4
 8002444:	f85d bb04 	ldr.w	fp, [sp], #4
 8002448:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800244a <_write>:
 800244a:	b085      	sub	sp, #20
 800244c:	f84d 4e00 	strt	r4, [sp]
 8002450:	f84d 5e04 	strt	r5, [sp, #4]
 8002454:	f84d 6e08 	strt	r6, [sp, #8]
 8002458:	f84d 7e0c 	strt	r7, [sp, #12]
 800245c:	f84d ee10 	strt	lr, [sp, #16]
 8002460:	af03      	add	r7, sp, #12
 8002462:	b081      	sub	sp, #4
 8002464:	f84d be00 	strt	fp, [sp]
 8002468:	4614      	mov	r4, r2
 800246a:	460d      	mov	r5, r1
 800246c:	2c01      	cmp	r4, #1
 800246e:	db06      	blt.n	800247e <_write+0x34>
 8002470:	4626      	mov	r6, r4
 8002472:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002476:	f7ff ff46 	bl	8002306 <__io_putchar>
 800247a:	3e01      	subs	r6, #1
 800247c:	d1f9      	bne.n	8002472 <_write+0x28>
 800247e:	4620      	mov	r0, r4
 8002480:	f85d bb04 	ldr.w	fp, [sp], #4
 8002484:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002486 <_sbrk>:
 8002486:	f640 2268 	movw	r2, #2664	; 0xa68
 800248a:	4601      	mov	r1, r0
 800248c:	466b      	mov	r3, sp
 800248e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002492:	6810      	ldr	r0, [r2, #0]
 8002494:	2800      	cmp	r0, #0
 8002496:	bf02      	ittt	eq
 8002498:	f640 40b8 	movweq	r0, #3256	; 0xcb8
 800249c:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80024a0:	f842 0e00 	strteq	r0, [r2]
 80024a4:	4401      	add	r1, r0
 80024a6:	4299      	cmp	r1, r3
 80024a8:	bf9c      	itt	ls
 80024aa:	f842 1e00 	strtls	r1, [r2]
 80024ae:	4770      	bxls	lr
 80024b0:	b082      	sub	sp, #8
 80024b2:	f84d 7e00 	strt	r7, [sp]
 80024b6:	f84d ee04 	strt	lr, [sp, #4]
 80024ba:	466f      	mov	r7, sp
 80024bc:	f000 f866 	bl	800258c <__errno>
 80024c0:	210c      	movs	r1, #12
 80024c2:	f840 1e00 	strt	r1, [r0]
 80024c6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80024ca:	bd80      	pop	{r7, pc}

080024cc <_close>:
 80024cc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80024d0:	4770      	bx	lr

080024d2 <_fstat>:
 80024d2:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80024d6:	f841 0e04 	strt	r0, [r1, #4]
 80024da:	2000      	movs	r0, #0
 80024dc:	4770      	bx	lr

080024de <_isatty>:
 80024de:	2001      	movs	r0, #1
 80024e0:	4770      	bx	lr

080024e2 <_lseek>:
 80024e2:	2000      	movs	r0, #0
 80024e4:	4770      	bx	lr

080024e6 <SystemInit>:
 80024e6:	f64e 5088 	movw	r0, #60808	; 0xed88
 80024ea:	f04f 0c00 	mov.w	ip, #0
 80024ee:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80024f2:	6801      	ldr	r1, [r0, #0]
 80024f4:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80024f8:	6001      	str	r1, [r0, #0]
 80024fa:	f241 0100 	movw	r1, #4096	; 0x1000
 80024fe:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002502:	680a      	ldr	r2, [r1, #0]
 8002504:	f042 0201 	orr.w	r2, r2, #1
 8002508:	600a      	str	r2, [r1, #0]
 800250a:	f8c1 c008 	str.w	ip, [r1, #8]
 800250e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002512:	680b      	ldr	r3, [r1, #0]
 8002514:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002518:	401a      	ands	r2, r3
 800251a:	600a      	str	r2, [r1, #0]
 800251c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002520:	60ca      	str	r2, [r1, #12]
 8002522:	680a      	ldr	r2, [r1, #0]
 8002524:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002528:	600a      	str	r2, [r1, #0]
 800252a:	f8c1 c018 	str.w	ip, [r1, #24]
 800252e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002532:	f840 1c80 	str.w	r1, [r0, #-128]
 8002536:	4770      	bx	lr

08002538 <Reset_Handler>:
 8002538:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002570 <LoopForever+0x2>
 800253c:	2100      	movs	r1, #0
 800253e:	e003      	b.n	8002548 <LoopCopyDataInit>

08002540 <CopyDataInit>:
 8002540:	4b0c      	ldr	r3, [pc, #48]	; (8002574 <LoopForever+0x6>)
 8002542:	585b      	ldr	r3, [r3, r1]
 8002544:	5043      	str	r3, [r0, r1]
 8002546:	3104      	adds	r1, #4

08002548 <LoopCopyDataInit>:
 8002548:	480b      	ldr	r0, [pc, #44]	; (8002578 <LoopForever+0xa>)
 800254a:	4b0c      	ldr	r3, [pc, #48]	; (800257c <LoopForever+0xe>)
 800254c:	1842      	adds	r2, r0, r1
 800254e:	429a      	cmp	r2, r3
 8002550:	d3f6      	bcc.n	8002540 <CopyDataInit>
 8002552:	4a0b      	ldr	r2, [pc, #44]	; (8002580 <LoopForever+0x12>)
 8002554:	e002      	b.n	800255c <LoopFillZerobss>

08002556 <FillZerobss>:
 8002556:	2300      	movs	r3, #0
 8002558:	f842 3b04 	str.w	r3, [r2], #4

0800255c <LoopFillZerobss>:
 800255c:	4b09      	ldr	r3, [pc, #36]	; (8002584 <LoopForever+0x16>)
 800255e:	429a      	cmp	r2, r3
 8002560:	d3f9      	bcc.n	8002556 <FillZerobss>
 8002562:	f7ff ffc0 	bl	80024e6 <SystemInit>
 8002566:	f000 f817 	bl	8002598 <__libc_init_array>
 800256a:	f7ff fee2 	bl	8002332 <main>

0800256e <LoopForever>:
 800256e:	e7fe      	b.n	800256e <LoopForever>
 8002570:	20018000 	.word	0x20018000
 8002574:	080076e0 	.word	0x080076e0
 8002578:	20000000 	.word	0x20000000
 800257c:	200009c8 	.word	0x200009c8
 8002580:	200009c8 	.word	0x200009c8
 8002584:	20000cb4 	.word	0x20000cb4

08002588 <ADC1_2_IRQHandler>:
 8002588:	e7fe      	b.n	8002588 <ADC1_2_IRQHandler>
	...

0800258c <__errno>:
 800258c:	4b01      	ldr	r3, [pc, #4]	; (8002594 <__errno+0x8>)
 800258e:	6818      	ldr	r0, [r3, #0]
 8002590:	4770      	bx	lr
 8002592:	bf00      	nop
 8002594:	20000018 	.word	0x20000018

08002598 <__libc_init_array>:
 8002598:	b570      	push	{r4, r5, r6, lr}
 800259a:	4e0d      	ldr	r6, [pc, #52]	; (80025d0 <__libc_init_array+0x38>)
 800259c:	4d0d      	ldr	r5, [pc, #52]	; (80025d4 <__libc_init_array+0x3c>)
 800259e:	1b76      	subs	r6, r6, r5
 80025a0:	10b6      	asrs	r6, r6, #2
 80025a2:	d006      	beq.n	80025b2 <__libc_init_array+0x1a>
 80025a4:	2400      	movs	r4, #0
 80025a6:	3401      	adds	r4, #1
 80025a8:	f855 3b04 	ldr.w	r3, [r5], #4
 80025ac:	4798      	blx	r3
 80025ae:	42a6      	cmp	r6, r4
 80025b0:	d1f9      	bne.n	80025a6 <__libc_init_array+0xe>
 80025b2:	4e09      	ldr	r6, [pc, #36]	; (80025d8 <__libc_init_array+0x40>)
 80025b4:	4d09      	ldr	r5, [pc, #36]	; (80025dc <__libc_init_array+0x44>)
 80025b6:	1b76      	subs	r6, r6, r5
 80025b8:	f004 fea8 	bl	800730c <_init>
 80025bc:	10b6      	asrs	r6, r6, #2
 80025be:	d006      	beq.n	80025ce <__libc_init_array+0x36>
 80025c0:	2400      	movs	r4, #0
 80025c2:	3401      	adds	r4, #1
 80025c4:	f855 3b04 	ldr.w	r3, [r5], #4
 80025c8:	4798      	blx	r3
 80025ca:	42a6      	cmp	r6, r4
 80025cc:	d1f9      	bne.n	80025c2 <__libc_init_array+0x2a>
 80025ce:	bd70      	pop	{r4, r5, r6, pc}
 80025d0:	080076d0 	.word	0x080076d0
 80025d4:	080076d0 	.word	0x080076d0
 80025d8:	080076d8 	.word	0x080076d8
 80025dc:	080076d0 	.word	0x080076d0

080025e0 <memset>:
 80025e0:	b4f0      	push	{r4, r5, r6, r7}
 80025e2:	0786      	lsls	r6, r0, #30
 80025e4:	d043      	beq.n	800266e <memset+0x8e>
 80025e6:	1e54      	subs	r4, r2, #1
 80025e8:	2a00      	cmp	r2, #0
 80025ea:	d03e      	beq.n	800266a <memset+0x8a>
 80025ec:	b2ca      	uxtb	r2, r1
 80025ee:	4603      	mov	r3, r0
 80025f0:	e002      	b.n	80025f8 <memset+0x18>
 80025f2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80025f6:	d338      	bcc.n	800266a <memset+0x8a>
 80025f8:	f803 2b01 	strb.w	r2, [r3], #1
 80025fc:	079d      	lsls	r5, r3, #30
 80025fe:	d1f8      	bne.n	80025f2 <memset+0x12>
 8002600:	2c03      	cmp	r4, #3
 8002602:	d92b      	bls.n	800265c <memset+0x7c>
 8002604:	b2cd      	uxtb	r5, r1
 8002606:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800260a:	2c0f      	cmp	r4, #15
 800260c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002610:	d916      	bls.n	8002640 <memset+0x60>
 8002612:	f1a4 0710 	sub.w	r7, r4, #16
 8002616:	093f      	lsrs	r7, r7, #4
 8002618:	f103 0620 	add.w	r6, r3, #32
 800261c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002620:	f103 0210 	add.w	r2, r3, #16
 8002624:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002628:	e942 5502 	strd	r5, r5, [r2, #-8]
 800262c:	3210      	adds	r2, #16
 800262e:	42b2      	cmp	r2, r6
 8002630:	d1f8      	bne.n	8002624 <memset+0x44>
 8002632:	f004 040f 	and.w	r4, r4, #15
 8002636:	3701      	adds	r7, #1
 8002638:	2c03      	cmp	r4, #3
 800263a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800263e:	d90d      	bls.n	800265c <memset+0x7c>
 8002640:	461e      	mov	r6, r3
 8002642:	4622      	mov	r2, r4
 8002644:	3a04      	subs	r2, #4
 8002646:	2a03      	cmp	r2, #3
 8002648:	f846 5b04 	str.w	r5, [r6], #4
 800264c:	d8fa      	bhi.n	8002644 <memset+0x64>
 800264e:	1f22      	subs	r2, r4, #4
 8002650:	f022 0203 	bic.w	r2, r2, #3
 8002654:	3204      	adds	r2, #4
 8002656:	4413      	add	r3, r2
 8002658:	f004 0403 	and.w	r4, r4, #3
 800265c:	b12c      	cbz	r4, 800266a <memset+0x8a>
 800265e:	b2c9      	uxtb	r1, r1
 8002660:	441c      	add	r4, r3
 8002662:	f803 1b01 	strb.w	r1, [r3], #1
 8002666:	429c      	cmp	r4, r3
 8002668:	d1fb      	bne.n	8002662 <memset+0x82>
 800266a:	bcf0      	pop	{r4, r5, r6, r7}
 800266c:	4770      	bx	lr
 800266e:	4614      	mov	r4, r2
 8002670:	4603      	mov	r3, r0
 8002672:	e7c5      	b.n	8002600 <memset+0x20>

08002674 <printf>:
 8002674:	b40f      	push	{r0, r1, r2, r3}
 8002676:	b500      	push	{lr}
 8002678:	4907      	ldr	r1, [pc, #28]	; (8002698 <printf+0x24>)
 800267a:	b083      	sub	sp, #12
 800267c:	ab04      	add	r3, sp, #16
 800267e:	6808      	ldr	r0, [r1, #0]
 8002680:	f853 2b04 	ldr.w	r2, [r3], #4
 8002684:	6881      	ldr	r1, [r0, #8]
 8002686:	9301      	str	r3, [sp, #4]
 8002688:	f000 f85e 	bl	8002748 <_vfprintf_r>
 800268c:	b003      	add	sp, #12
 800268e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002692:	b004      	add	sp, #16
 8002694:	4770      	bx	lr
 8002696:	bf00      	nop
 8002698:	20000018 	.word	0x20000018

0800269c <_puts_r>:
 800269c:	b570      	push	{r4, r5, r6, lr}
 800269e:	4605      	mov	r5, r0
 80026a0:	b088      	sub	sp, #32
 80026a2:	4608      	mov	r0, r1
 80026a4:	460c      	mov	r4, r1
 80026a6:	f7fd ffcb 	bl	8000640 <strlen>
 80026aa:	4a22      	ldr	r2, [pc, #136]	; (8002734 <_puts_r+0x98>)
 80026ac:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80026ae:	9404      	str	r4, [sp, #16]
 80026b0:	2601      	movs	r6, #1
 80026b2:	1c44      	adds	r4, r0, #1
 80026b4:	a904      	add	r1, sp, #16
 80026b6:	9206      	str	r2, [sp, #24]
 80026b8:	2202      	movs	r2, #2
 80026ba:	9403      	str	r4, [sp, #12]
 80026bc:	9005      	str	r0, [sp, #20]
 80026be:	68ac      	ldr	r4, [r5, #8]
 80026c0:	9607      	str	r6, [sp, #28]
 80026c2:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80026c6:	b31b      	cbz	r3, 8002710 <_puts_r+0x74>
 80026c8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80026ca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80026ce:	07ce      	lsls	r6, r1, #31
 80026d0:	b29a      	uxth	r2, r3
 80026d2:	d401      	bmi.n	80026d8 <_puts_r+0x3c>
 80026d4:	0590      	lsls	r0, r2, #22
 80026d6:	d525      	bpl.n	8002724 <_puts_r+0x88>
 80026d8:	0491      	lsls	r1, r2, #18
 80026da:	d406      	bmi.n	80026ea <_puts_r+0x4e>
 80026dc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80026de:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80026e2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80026e6:	81a3      	strh	r3, [r4, #12]
 80026e8:	6662      	str	r2, [r4, #100]	; 0x64
 80026ea:	4628      	mov	r0, r5
 80026ec:	aa01      	add	r2, sp, #4
 80026ee:	4621      	mov	r1, r4
 80026f0:	f003 f85e 	bl	80057b0 <__sfvwrite_r>
 80026f4:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80026f6:	2800      	cmp	r0, #0
 80026f8:	bf0c      	ite	eq
 80026fa:	250a      	moveq	r5, #10
 80026fc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002700:	07da      	lsls	r2, r3, #31
 8002702:	d402      	bmi.n	800270a <_puts_r+0x6e>
 8002704:	89a3      	ldrh	r3, [r4, #12]
 8002706:	059b      	lsls	r3, r3, #22
 8002708:	d506      	bpl.n	8002718 <_puts_r+0x7c>
 800270a:	4628      	mov	r0, r5
 800270c:	b008      	add	sp, #32
 800270e:	bd70      	pop	{r4, r5, r6, pc}
 8002710:	4628      	mov	r0, r5
 8002712:	f002 feb7 	bl	8005484 <__sinit>
 8002716:	e7d7      	b.n	80026c8 <_puts_r+0x2c>
 8002718:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800271a:	f003 fa05 	bl	8005b28 <__retarget_lock_release_recursive>
 800271e:	4628      	mov	r0, r5
 8002720:	b008      	add	sp, #32
 8002722:	bd70      	pop	{r4, r5, r6, pc}
 8002724:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002726:	f003 f9fd 	bl	8005b24 <__retarget_lock_acquire_recursive>
 800272a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800272e:	b29a      	uxth	r2, r3
 8002730:	e7d2      	b.n	80026d8 <_puts_r+0x3c>
 8002732:	bf00      	nop
 8002734:	0800743c 	.word	0x0800743c

08002738 <puts>:
 8002738:	4b02      	ldr	r3, [pc, #8]	; (8002744 <puts+0xc>)
 800273a:	4601      	mov	r1, r0
 800273c:	6818      	ldr	r0, [r3, #0]
 800273e:	f7ff bfad 	b.w	800269c <_puts_r>
 8002742:	bf00      	nop
 8002744:	20000018 	.word	0x20000018

08002748 <_vfprintf_r>:
 8002748:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800274c:	b0d7      	sub	sp, #348	; 0x15c
 800274e:	461c      	mov	r4, r3
 8002750:	4689      	mov	r9, r1
 8002752:	4617      	mov	r7, r2
 8002754:	4605      	mov	r5, r0
 8002756:	9003      	str	r0, [sp, #12]
 8002758:	f003 f9d2 	bl	8005b00 <_localeconv_r>
 800275c:	6803      	ldr	r3, [r0, #0]
 800275e:	9316      	str	r3, [sp, #88]	; 0x58
 8002760:	4618      	mov	r0, r3
 8002762:	f7fd ff6d 	bl	8000640 <strlen>
 8002766:	9408      	str	r4, [sp, #32]
 8002768:	9015      	str	r0, [sp, #84]	; 0x54
 800276a:	b11d      	cbz	r5, 8002774 <_vfprintf_r+0x2c>
 800276c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800276e:	2b00      	cmp	r3, #0
 8002770:	f000 8107 	beq.w	8002982 <_vfprintf_r+0x23a>
 8002774:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002778:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800277c:	07c8      	lsls	r0, r1, #31
 800277e:	b293      	uxth	r3, r2
 8002780:	d402      	bmi.n	8002788 <_vfprintf_r+0x40>
 8002782:	0599      	lsls	r1, r3, #22
 8002784:	f140 811f 	bpl.w	80029c6 <_vfprintf_r+0x27e>
 8002788:	049e      	lsls	r6, r3, #18
 800278a:	d40a      	bmi.n	80027a2 <_vfprintf_r+0x5a>
 800278c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002790:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002794:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002798:	f8a9 300c 	strh.w	r3, [r9, #12]
 800279c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80027a0:	b29b      	uxth	r3, r3
 80027a2:	071d      	lsls	r5, r3, #28
 80027a4:	f140 80b2 	bpl.w	800290c <_vfprintf_r+0x1c4>
 80027a8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80027ac:	2a00      	cmp	r2, #0
 80027ae:	f000 80ad 	beq.w	800290c <_vfprintf_r+0x1c4>
 80027b2:	f003 021a 	and.w	r2, r3, #26
 80027b6:	2a0a      	cmp	r2, #10
 80027b8:	f000 80c9 	beq.w	800294e <_vfprintf_r+0x206>
 80027bc:	2300      	movs	r3, #0
 80027be:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80029d8 <_vfprintf_r+0x290>
 80027c2:	9310      	str	r3, [sp, #64]	; 0x40
 80027c4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80027c8:	9317      	str	r3, [sp, #92]	; 0x5c
 80027ca:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80027ce:	931b      	str	r3, [sp, #108]	; 0x6c
 80027d0:	9318      	str	r3, [sp, #96]	; 0x60
 80027d2:	9305      	str	r3, [sp, #20]
 80027d4:	ab2d      	add	r3, sp, #180	; 0xb4
 80027d6:	932a      	str	r3, [sp, #168]	; 0xa8
 80027d8:	469b      	mov	fp, r3
 80027da:	783b      	ldrb	r3, [r7, #0]
 80027dc:	f8cd 901c 	str.w	r9, [sp, #28]
 80027e0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80027e4:	2b00      	cmp	r3, #0
 80027e6:	f000 8259 	beq.w	8002c9c <_vfprintf_r+0x554>
 80027ea:	2b25      	cmp	r3, #37	; 0x25
 80027ec:	463c      	mov	r4, r7
 80027ee:	d102      	bne.n	80027f6 <_vfprintf_r+0xae>
 80027f0:	e01d      	b.n	800282e <_vfprintf_r+0xe6>
 80027f2:	2b25      	cmp	r3, #37	; 0x25
 80027f4:	d003      	beq.n	80027fe <_vfprintf_r+0xb6>
 80027f6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80027fa:	2b00      	cmp	r3, #0
 80027fc:	d1f9      	bne.n	80027f2 <_vfprintf_r+0xaa>
 80027fe:	1be5      	subs	r5, r4, r7
 8002800:	b18d      	cbz	r5, 8002826 <_vfprintf_r+0xde>
 8002802:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002806:	3301      	adds	r3, #1
 8002808:	442a      	add	r2, r5
 800280a:	2b07      	cmp	r3, #7
 800280c:	f8cb 7000 	str.w	r7, [fp]
 8002810:	f8cb 5004 	str.w	r5, [fp, #4]
 8002814:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002818:	f300 80ca 	bgt.w	80029b0 <_vfprintf_r+0x268>
 800281c:	f10b 0b08 	add.w	fp, fp, #8
 8002820:	9b05      	ldr	r3, [sp, #20]
 8002822:	442b      	add	r3, r5
 8002824:	9305      	str	r3, [sp, #20]
 8002826:	7823      	ldrb	r3, [r4, #0]
 8002828:	2b00      	cmp	r3, #0
 800282a:	f000 8237 	beq.w	8002c9c <_vfprintf_r+0x554>
 800282e:	2300      	movs	r3, #0
 8002830:	7866      	ldrb	r6, [r4, #1]
 8002832:	9306      	str	r3, [sp, #24]
 8002834:	4698      	mov	r8, r3
 8002836:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800283a:	f104 0a01 	add.w	sl, r4, #1
 800283e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002842:	252b      	movs	r5, #43	; 0x2b
 8002844:	f10a 0a01 	add.w	sl, sl, #1
 8002848:	f1a6 0320 	sub.w	r3, r6, #32
 800284c:	2b5a      	cmp	r3, #90	; 0x5a
 800284e:	f200 842a 	bhi.w	80030a6 <_vfprintf_r+0x95e>
 8002852:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002856:	03aa      	.short	0x03aa
 8002858:	04280428 	.word	0x04280428
 800285c:	0428029c 	.word	0x0428029c
 8002860:	04280428 	.word	0x04280428
 8002864:	042802a7 	.word	0x042802a7
 8002868:	02c60428 	.word	0x02c60428
 800286c:	042802d2 	.word	0x042802d2
 8002870:	02dc02d7 	.word	0x02dc02d7
 8002874:	02f60428 	.word	0x02f60428
 8002878:	026d026d 	.word	0x026d026d
 800287c:	026d026d 	.word	0x026d026d
 8002880:	026d026d 	.word	0x026d026d
 8002884:	026d026d 	.word	0x026d026d
 8002888:	0428026d 	.word	0x0428026d
 800288c:	04280428 	.word	0x04280428
 8002890:	04280428 	.word	0x04280428
 8002894:	04280428 	.word	0x04280428
 8002898:	042802fb 	.word	0x042802fb
 800289c:	03f3033c 	.word	0x03f3033c
 80028a0:	02fb02fb 	.word	0x02fb02fb
 80028a4:	042802fb 	.word	0x042802fb
 80028a8:	04280428 	.word	0x04280428
 80028ac:	03ee0428 	.word	0x03ee0428
 80028b0:	04280428 	.word	0x04280428
 80028b4:	0428009a 	.word	0x0428009a
 80028b8:	04280428 	.word	0x04280428
 80028bc:	04280350 	.word	0x04280350
 80028c0:	04280379 	.word	0x04280379
 80028c4:	03900428 	.word	0x03900428
 80028c8:	04280428 	.word	0x04280428
 80028cc:	04280428 	.word	0x04280428
 80028d0:	04280428 	.word	0x04280428
 80028d4:	04280428 	.word	0x04280428
 80028d8:	042802fb 	.word	0x042802fb
 80028dc:	00c5033c 	.word	0x00c5033c
 80028e0:	02fb02fb 	.word	0x02fb02fb
 80028e4:	03d102fb 	.word	0x03d102fb
 80028e8:	007000c5 	.word	0x007000c5
 80028ec:	03b50428 	.word	0x03b50428
 80028f0:	03c20428 	.word	0x03c20428
 80028f4:	03de009c 	.word	0x03de009c
 80028f8:	04280070 	.word	0x04280070
 80028fc:	00720350 	.word	0x00720350
 8002900:	0428022c 	.word	0x0428022c
 8002904:	027c0428 	.word	0x027c0428
 8002908:	00720428 	.word	0x00720428
 800290c:	4649      	mov	r1, r9
 800290e:	9803      	ldr	r0, [sp, #12]
 8002910:	f001 fc9a 	bl	8004248 <__swsetup_r>
 8002914:	b1a0      	cbz	r0, 8002940 <_vfprintf_r+0x1f8>
 8002916:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800291a:	07d8      	lsls	r0, r3, #31
 800291c:	d404      	bmi.n	8002928 <_vfprintf_r+0x1e0>
 800291e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002922:	0599      	lsls	r1, r3, #22
 8002924:	f140 83b7 	bpl.w	8003096 <_vfprintf_r+0x94e>
 8002928:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800292c:	9305      	str	r3, [sp, #20]
 800292e:	9805      	ldr	r0, [sp, #20]
 8002930:	b057      	add	sp, #348	; 0x15c
 8002932:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002936:	f048 0820 	orr.w	r8, r8, #32
 800293a:	f89a 6000 	ldrb.w	r6, [sl]
 800293e:	e781      	b.n	8002844 <_vfprintf_r+0xfc>
 8002940:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002944:	f003 021a 	and.w	r2, r3, #26
 8002948:	2a0a      	cmp	r2, #10
 800294a:	f47f af37 	bne.w	80027bc <_vfprintf_r+0x74>
 800294e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002952:	2a00      	cmp	r2, #0
 8002954:	f6ff af32 	blt.w	80027bc <_vfprintf_r+0x74>
 8002958:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800295c:	07d2      	lsls	r2, r2, #31
 800295e:	d405      	bmi.n	800296c <_vfprintf_r+0x224>
 8002960:	059b      	lsls	r3, r3, #22
 8002962:	d403      	bmi.n	800296c <_vfprintf_r+0x224>
 8002964:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002968:	f003 f8de 	bl	8005b28 <__retarget_lock_release_recursive>
 800296c:	4623      	mov	r3, r4
 800296e:	463a      	mov	r2, r7
 8002970:	4649      	mov	r1, r9
 8002972:	9803      	ldr	r0, [sp, #12]
 8002974:	f001 fc26 	bl	80041c4 <__sbprintf>
 8002978:	9005      	str	r0, [sp, #20]
 800297a:	9805      	ldr	r0, [sp, #20]
 800297c:	b057      	add	sp, #348	; 0x15c
 800297e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002982:	9803      	ldr	r0, [sp, #12]
 8002984:	f002 fd7e 	bl	8005484 <__sinit>
 8002988:	e6f4      	b.n	8002774 <_vfprintf_r+0x2c>
 800298a:	f048 0810 	orr.w	r8, r8, #16
 800298e:	f018 0f20 	tst.w	r8, #32
 8002992:	f000 836c 	beq.w	800306e <_vfprintf_r+0x926>
 8002996:	9c08      	ldr	r4, [sp, #32]
 8002998:	3407      	adds	r4, #7
 800299a:	f024 0307 	bic.w	r3, r4, #7
 800299e:	e9d3 4500 	ldrd	r4, r5, [r3]
 80029a2:	f103 0208 	add.w	r2, r3, #8
 80029a6:	9208      	str	r2, [sp, #32]
 80029a8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80029ac:	2200      	movs	r2, #0
 80029ae:	e18c      	b.n	8002cca <_vfprintf_r+0x582>
 80029b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80029b2:	9907      	ldr	r1, [sp, #28]
 80029b4:	9803      	ldr	r0, [sp, #12]
 80029b6:	f004 f9f5 	bl	8006da4 <__sprint_r>
 80029ba:	2800      	cmp	r0, #0
 80029bc:	f041 8376 	bne.w	80040ac <_vfprintf_r+0x1964>
 80029c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80029c4:	e72c      	b.n	8002820 <_vfprintf_r+0xd8>
 80029c6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80029ca:	f003 f8ab 	bl	8005b24 <__retarget_lock_acquire_recursive>
 80029ce:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80029d2:	b293      	uxth	r3, r2
 80029d4:	e6d8      	b.n	8002788 <_vfprintf_r+0x40>
 80029d6:	bf00      	nop
	...
 80029e0:	4643      	mov	r3, r8
 80029e2:	069f      	lsls	r7, r3, #26
 80029e4:	f140 832f 	bpl.w	8003046 <_vfprintf_r+0x8fe>
 80029e8:	9c08      	ldr	r4, [sp, #32]
 80029ea:	3407      	adds	r4, #7
 80029ec:	f024 0407 	bic.w	r4, r4, #7
 80029f0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80029f4:	f104 0208 	add.w	r2, r4, #8
 80029f8:	9208      	str	r2, [sp, #32]
 80029fa:	4604      	mov	r4, r0
 80029fc:	460d      	mov	r5, r1
 80029fe:	2800      	cmp	r0, #0
 8002a00:	f171 0200 	sbcs.w	r2, r1, #0
 8002a04:	da05      	bge.n	8002a12 <_vfprintf_r+0x2ca>
 8002a06:	222d      	movs	r2, #45	; 0x2d
 8002a08:	4264      	negs	r4, r4
 8002a0a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002a0e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002a12:	aa56      	add	r2, sp, #344	; 0x158
 8002a14:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a18:	9204      	str	r2, [sp, #16]
 8002a1a:	f000 84b2 	beq.w	8003382 <_vfprintf_r+0xc3a>
 8002a1e:	2201      	movs	r2, #1
 8002a20:	ea54 0105 	orrs.w	r1, r4, r5
 8002a24:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002a28:	f040 8159 	bne.w	8002cde <_vfprintf_r+0x596>
 8002a2c:	f1b9 0f00 	cmp.w	r9, #0
 8002a30:	f040 8619 	bne.w	8003666 <_vfprintf_r+0xf1e>
 8002a34:	2a00      	cmp	r2, #0
 8002a36:	f040 8508 	bne.w	800344a <_vfprintf_r+0xd02>
 8002a3a:	f013 0301 	ands.w	r3, r3, #1
 8002a3e:	af56      	add	r7, sp, #344	; 0x158
 8002a40:	9309      	str	r3, [sp, #36]	; 0x24
 8002a42:	d002      	beq.n	8002a4a <_vfprintf_r+0x302>
 8002a44:	2330      	movs	r3, #48	; 0x30
 8002a46:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002a4a:	2300      	movs	r3, #0
 8002a4c:	930a      	str	r3, [sp, #40]	; 0x28
 8002a4e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002a50:	9314      	str	r3, [sp, #80]	; 0x50
 8002a52:	9311      	str	r3, [sp, #68]	; 0x44
 8002a54:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002a56:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a5a:	454b      	cmp	r3, r9
 8002a5c:	bfb8      	it	lt
 8002a5e:	464b      	movlt	r3, r9
 8002a60:	9304      	str	r3, [sp, #16]
 8002a62:	b112      	cbz	r2, 8002a6a <_vfprintf_r+0x322>
 8002a64:	9b04      	ldr	r3, [sp, #16]
 8002a66:	3301      	adds	r3, #1
 8002a68:	9304      	str	r3, [sp, #16]
 8002a6a:	f018 0302 	ands.w	r3, r8, #2
 8002a6e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002a70:	d002      	beq.n	8002a78 <_vfprintf_r+0x330>
 8002a72:	9b04      	ldr	r3, [sp, #16]
 8002a74:	3302      	adds	r3, #2
 8002a76:	9304      	str	r3, [sp, #16]
 8002a78:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002a7c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002a7e:	930e      	str	r3, [sp, #56]	; 0x38
 8002a80:	d13f      	bne.n	8002b02 <_vfprintf_r+0x3ba>
 8002a82:	9b06      	ldr	r3, [sp, #24]
 8002a84:	9904      	ldr	r1, [sp, #16]
 8002a86:	1a5d      	subs	r5, r3, r1
 8002a88:	2d00      	cmp	r5, #0
 8002a8a:	dd3a      	ble.n	8002b02 <_vfprintf_r+0x3ba>
 8002a8c:	2d10      	cmp	r5, #16
 8002a8e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002a90:	dd29      	ble.n	8002ae6 <_vfprintf_r+0x39e>
 8002a92:	4659      	mov	r1, fp
 8002a94:	4620      	mov	r0, r4
 8002a96:	9620      	str	r6, [sp, #128]	; 0x80
 8002a98:	2310      	movs	r3, #16
 8002a9a:	9c03      	ldr	r4, [sp, #12]
 8002a9c:	9e07      	ldr	r6, [sp, #28]
 8002a9e:	46bb      	mov	fp, r7
 8002aa0:	e004      	b.n	8002aac <_vfprintf_r+0x364>
 8002aa2:	3d10      	subs	r5, #16
 8002aa4:	2d10      	cmp	r5, #16
 8002aa6:	f101 0108 	add.w	r1, r1, #8
 8002aaa:	dd18      	ble.n	8002ade <_vfprintf_r+0x396>
 8002aac:	3201      	adds	r2, #1
 8002aae:	4fba      	ldr	r7, [pc, #744]	; (8002d98 <_vfprintf_r+0x650>)
 8002ab0:	3010      	adds	r0, #16
 8002ab2:	2a07      	cmp	r2, #7
 8002ab4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002ab8:	e9c1 7300 	strd	r7, r3, [r1]
 8002abc:	ddf1      	ble.n	8002aa2 <_vfprintf_r+0x35a>
 8002abe:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ac0:	4631      	mov	r1, r6
 8002ac2:	4620      	mov	r0, r4
 8002ac4:	930c      	str	r3, [sp, #48]	; 0x30
 8002ac6:	f004 f96d 	bl	8006da4 <__sprint_r>
 8002aca:	2800      	cmp	r0, #0
 8002acc:	f040 843d 	bne.w	800334a <_vfprintf_r+0xc02>
 8002ad0:	3d10      	subs	r5, #16
 8002ad2:	2d10      	cmp	r5, #16
 8002ad4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ad8:	a92d      	add	r1, sp, #180	; 0xb4
 8002ada:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002adc:	dce6      	bgt.n	8002aac <_vfprintf_r+0x364>
 8002ade:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002ae0:	465f      	mov	r7, fp
 8002ae2:	4604      	mov	r4, r0
 8002ae4:	468b      	mov	fp, r1
 8002ae6:	3201      	adds	r2, #1
 8002ae8:	4bab      	ldr	r3, [pc, #684]	; (8002d98 <_vfprintf_r+0x650>)
 8002aea:	442c      	add	r4, r5
 8002aec:	2a07      	cmp	r2, #7
 8002aee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002af2:	e9cb 3500 	strd	r3, r5, [fp]
 8002af6:	f300 84ff 	bgt.w	80034f8 <_vfprintf_r+0xdb0>
 8002afa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002afe:	f10b 0b08 	add.w	fp, fp, #8
 8002b02:	b172      	cbz	r2, 8002b22 <_vfprintf_r+0x3da>
 8002b04:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b06:	3201      	adds	r2, #1
 8002b08:	3401      	adds	r4, #1
 8002b0a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002b0e:	2101      	movs	r1, #1
 8002b10:	2a07      	cmp	r2, #7
 8002b12:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b16:	e9cb 0100 	strd	r0, r1, [fp]
 8002b1a:	f300 8418 	bgt.w	800334e <_vfprintf_r+0xc06>
 8002b1e:	f10b 0b08 	add.w	fp, fp, #8
 8002b22:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002b24:	b16b      	cbz	r3, 8002b42 <_vfprintf_r+0x3fa>
 8002b26:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b28:	3301      	adds	r3, #1
 8002b2a:	3402      	adds	r4, #2
 8002b2c:	a923      	add	r1, sp, #140	; 0x8c
 8002b2e:	2202      	movs	r2, #2
 8002b30:	2b07      	cmp	r3, #7
 8002b32:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002b36:	e9cb 1200 	strd	r1, r2, [fp]
 8002b3a:	f300 8415 	bgt.w	8003368 <_vfprintf_r+0xc20>
 8002b3e:	f10b 0b08 	add.w	fp, fp, #8
 8002b42:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002b44:	2b80      	cmp	r3, #128	; 0x80
 8002b46:	f000 8331 	beq.w	80031ac <_vfprintf_r+0xa64>
 8002b4a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002b4c:	eba9 0503 	sub.w	r5, r9, r3
 8002b50:	2d00      	cmp	r5, #0
 8002b52:	dd37      	ble.n	8002bc4 <_vfprintf_r+0x47c>
 8002b54:	2d10      	cmp	r5, #16
 8002b56:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b58:	4b90      	ldr	r3, [pc, #576]	; (8002d9c <_vfprintf_r+0x654>)
 8002b5a:	dd28      	ble.n	8002bae <_vfprintf_r+0x466>
 8002b5c:	4659      	mov	r1, fp
 8002b5e:	4620      	mov	r0, r4
 8002b60:	46bb      	mov	fp, r7
 8002b62:	f04f 0910 	mov.w	r9, #16
 8002b66:	4637      	mov	r7, r6
 8002b68:	461c      	mov	r4, r3
 8002b6a:	9e07      	ldr	r6, [sp, #28]
 8002b6c:	e004      	b.n	8002b78 <_vfprintf_r+0x430>
 8002b6e:	3d10      	subs	r5, #16
 8002b70:	2d10      	cmp	r5, #16
 8002b72:	f101 0108 	add.w	r1, r1, #8
 8002b76:	dd15      	ble.n	8002ba4 <_vfprintf_r+0x45c>
 8002b78:	3201      	adds	r2, #1
 8002b7a:	3010      	adds	r0, #16
 8002b7c:	2a07      	cmp	r2, #7
 8002b7e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002b82:	e9c1 4900 	strd	r4, r9, [r1]
 8002b86:	ddf2      	ble.n	8002b6e <_vfprintf_r+0x426>
 8002b88:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b8a:	4631      	mov	r1, r6
 8002b8c:	9803      	ldr	r0, [sp, #12]
 8002b8e:	f004 f909 	bl	8006da4 <__sprint_r>
 8002b92:	2800      	cmp	r0, #0
 8002b94:	f040 83d9 	bne.w	800334a <_vfprintf_r+0xc02>
 8002b98:	3d10      	subs	r5, #16
 8002b9a:	2d10      	cmp	r5, #16
 8002b9c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ba0:	a92d      	add	r1, sp, #180	; 0xb4
 8002ba2:	dce9      	bgt.n	8002b78 <_vfprintf_r+0x430>
 8002ba4:	463e      	mov	r6, r7
 8002ba6:	4623      	mov	r3, r4
 8002ba8:	465f      	mov	r7, fp
 8002baa:	4604      	mov	r4, r0
 8002bac:	468b      	mov	fp, r1
 8002bae:	3201      	adds	r2, #1
 8002bb0:	442c      	add	r4, r5
 8002bb2:	2a07      	cmp	r2, #7
 8002bb4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002bb8:	e9cb 3500 	strd	r3, r5, [fp]
 8002bbc:	f300 83ef 	bgt.w	800339e <_vfprintf_r+0xc56>
 8002bc0:	f10b 0b08 	add.w	fp, fp, #8
 8002bc4:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002bc8:	f040 8280 	bne.w	80030cc <_vfprintf_r+0x984>
 8002bcc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002bce:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002bd0:	f8cb 7000 	str.w	r7, [fp]
 8002bd4:	3301      	adds	r3, #1
 8002bd6:	4414      	add	r4, r2
 8002bd8:	2b07      	cmp	r3, #7
 8002bda:	942c      	str	r4, [sp, #176]	; 0xb0
 8002bdc:	f8cb 2004 	str.w	r2, [fp, #4]
 8002be0:	932b      	str	r3, [sp, #172]	; 0xac
 8002be2:	f300 8392 	bgt.w	800330a <_vfprintf_r+0xbc2>
 8002be6:	f10b 0b08 	add.w	fp, fp, #8
 8002bea:	f018 0f04 	tst.w	r8, #4
 8002bee:	d03b      	beq.n	8002c68 <_vfprintf_r+0x520>
 8002bf0:	9b06      	ldr	r3, [sp, #24]
 8002bf2:	9a04      	ldr	r2, [sp, #16]
 8002bf4:	1a9d      	subs	r5, r3, r2
 8002bf6:	2d00      	cmp	r5, #0
 8002bf8:	dd36      	ble.n	8002c68 <_vfprintf_r+0x520>
 8002bfa:	2d10      	cmp	r5, #16
 8002bfc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002bfe:	dd21      	ble.n	8002c44 <_vfprintf_r+0x4fc>
 8002c00:	2610      	movs	r6, #16
 8002c02:	9f03      	ldr	r7, [sp, #12]
 8002c04:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002c08:	e004      	b.n	8002c14 <_vfprintf_r+0x4cc>
 8002c0a:	3d10      	subs	r5, #16
 8002c0c:	2d10      	cmp	r5, #16
 8002c0e:	f10b 0b08 	add.w	fp, fp, #8
 8002c12:	dd17      	ble.n	8002c44 <_vfprintf_r+0x4fc>
 8002c14:	3301      	adds	r3, #1
 8002c16:	4a60      	ldr	r2, [pc, #384]	; (8002d98 <_vfprintf_r+0x650>)
 8002c18:	3410      	adds	r4, #16
 8002c1a:	2b07      	cmp	r3, #7
 8002c1c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c20:	e9cb 2600 	strd	r2, r6, [fp]
 8002c24:	ddf1      	ble.n	8002c0a <_vfprintf_r+0x4c2>
 8002c26:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c28:	4641      	mov	r1, r8
 8002c2a:	4638      	mov	r0, r7
 8002c2c:	f004 f8ba 	bl	8006da4 <__sprint_r>
 8002c30:	2800      	cmp	r0, #0
 8002c32:	f040 856c 	bne.w	800370e <_vfprintf_r+0xfc6>
 8002c36:	3d10      	subs	r5, #16
 8002c38:	2d10      	cmp	r5, #16
 8002c3a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002c3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c42:	dce7      	bgt.n	8002c14 <_vfprintf_r+0x4cc>
 8002c44:	3301      	adds	r3, #1
 8002c46:	4a54      	ldr	r2, [pc, #336]	; (8002d98 <_vfprintf_r+0x650>)
 8002c48:	442c      	add	r4, r5
 8002c4a:	2b07      	cmp	r3, #7
 8002c4c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c50:	e9cb 2500 	strd	r2, r5, [fp]
 8002c54:	dd08      	ble.n	8002c68 <_vfprintf_r+0x520>
 8002c56:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c58:	9907      	ldr	r1, [sp, #28]
 8002c5a:	9803      	ldr	r0, [sp, #12]
 8002c5c:	f004 f8a2 	bl	8006da4 <__sprint_r>
 8002c60:	2800      	cmp	r0, #0
 8002c62:	f040 82e9 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8002c66:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c68:	9904      	ldr	r1, [sp, #16]
 8002c6a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002c6e:	428a      	cmp	r2, r1
 8002c70:	bfac      	ite	ge
 8002c72:	189b      	addge	r3, r3, r2
 8002c74:	185b      	addlt	r3, r3, r1
 8002c76:	9305      	str	r3, [sp, #20]
 8002c78:	2c00      	cmp	r4, #0
 8002c7a:	f040 82d5 	bne.w	8003228 <_vfprintf_r+0xae0>
 8002c7e:	2300      	movs	r3, #0
 8002c80:	932b      	str	r3, [sp, #172]	; 0xac
 8002c82:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c84:	b11b      	cbz	r3, 8002c8e <_vfprintf_r+0x546>
 8002c86:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002c88:	9803      	ldr	r0, [sp, #12]
 8002c8a:	f002 fc9d 	bl	80055c8 <_free_r>
 8002c8e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c92:	4657      	mov	r7, sl
 8002c94:	783b      	ldrb	r3, [r7, #0]
 8002c96:	2b00      	cmp	r3, #0
 8002c98:	f47f ada7 	bne.w	80027ea <_vfprintf_r+0xa2>
 8002c9c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002c9e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002ca2:	2b00      	cmp	r3, #0
 8002ca4:	f041 80e7 	bne.w	8003e76 <_vfprintf_r+0x172e>
 8002ca8:	2300      	movs	r3, #0
 8002caa:	932b      	str	r3, [sp, #172]	; 0xac
 8002cac:	e2cb      	b.n	8003246 <_vfprintf_r+0xafe>
 8002cae:	4643      	mov	r3, r8
 8002cb0:	069a      	lsls	r2, r3, #26
 8002cb2:	f140 814e 	bpl.w	8002f52 <_vfprintf_r+0x80a>
 8002cb6:	9c08      	ldr	r4, [sp, #32]
 8002cb8:	3407      	adds	r4, #7
 8002cba:	f024 0207 	bic.w	r2, r4, #7
 8002cbe:	f102 0108 	add.w	r1, r2, #8
 8002cc2:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002cc6:	9108      	str	r1, [sp, #32]
 8002cc8:	2201      	movs	r2, #1
 8002cca:	2100      	movs	r1, #0
 8002ccc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002cd0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002cd4:	a956      	add	r1, sp, #344	; 0x158
 8002cd6:	9104      	str	r1, [sp, #16]
 8002cd8:	f47f aea2 	bne.w	8002a20 <_vfprintf_r+0x2d8>
 8002cdc:	4698      	mov	r8, r3
 8002cde:	2a01      	cmp	r2, #1
 8002ce0:	f000 8350 	beq.w	8003384 <_vfprintf_r+0xc3c>
 8002ce4:	2a02      	cmp	r2, #2
 8002ce6:	f000 831b 	beq.w	8003320 <_vfprintf_r+0xbd8>
 8002cea:	a956      	add	r1, sp, #344	; 0x158
 8002cec:	e000      	b.n	8002cf0 <_vfprintf_r+0x5a8>
 8002cee:	4639      	mov	r1, r7
 8002cf0:	08e2      	lsrs	r2, r4, #3
 8002cf2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002cf6:	08e8      	lsrs	r0, r5, #3
 8002cf8:	f004 0307 	and.w	r3, r4, #7
 8002cfc:	4605      	mov	r5, r0
 8002cfe:	4614      	mov	r4, r2
 8002d00:	3330      	adds	r3, #48	; 0x30
 8002d02:	ea54 0205 	orrs.w	r2, r4, r5
 8002d06:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002d0a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002d0e:	d1ee      	bne.n	8002cee <_vfprintf_r+0x5a6>
 8002d10:	f018 0f01 	tst.w	r8, #1
 8002d14:	f000 8314 	beq.w	8003340 <_vfprintf_r+0xbf8>
 8002d18:	2b30      	cmp	r3, #48	; 0x30
 8002d1a:	f000 8311 	beq.w	8003340 <_vfprintf_r+0xbf8>
 8002d1e:	9a04      	ldr	r2, [sp, #16]
 8002d20:	3902      	subs	r1, #2
 8002d22:	2330      	movs	r3, #48	; 0x30
 8002d24:	1a52      	subs	r2, r2, r1
 8002d26:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002d2a:	9209      	str	r2, [sp, #36]	; 0x24
 8002d2c:	460f      	mov	r7, r1
 8002d2e:	e68c      	b.n	8002a4a <_vfprintf_r+0x302>
 8002d30:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d34:	2200      	movs	r2, #0
 8002d36:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002d3a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002d3e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002d42:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d46:	2b09      	cmp	r3, #9
 8002d48:	d9f5      	bls.n	8002d36 <_vfprintf_r+0x5ee>
 8002d4a:	9206      	str	r2, [sp, #24]
 8002d4c:	e57c      	b.n	8002848 <_vfprintf_r+0x100>
 8002d4e:	4b14      	ldr	r3, [pc, #80]	; (8002da0 <_vfprintf_r+0x658>)
 8002d50:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d52:	f018 0f20 	tst.w	r8, #32
 8002d56:	f000 8114 	beq.w	8002f82 <_vfprintf_r+0x83a>
 8002d5a:	9c08      	ldr	r4, [sp, #32]
 8002d5c:	3407      	adds	r4, #7
 8002d5e:	f024 0307 	bic.w	r3, r4, #7
 8002d62:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002d66:	f103 0208 	add.w	r2, r3, #8
 8002d6a:	9208      	str	r2, [sp, #32]
 8002d6c:	f018 0f01 	tst.w	r8, #1
 8002d70:	d009      	beq.n	8002d86 <_vfprintf_r+0x63e>
 8002d72:	ea54 0305 	orrs.w	r3, r4, r5
 8002d76:	d006      	beq.n	8002d86 <_vfprintf_r+0x63e>
 8002d78:	2330      	movs	r3, #48	; 0x30
 8002d7a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002d7e:	f048 0802 	orr.w	r8, r8, #2
 8002d82:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002d86:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002d8a:	2202      	movs	r2, #2
 8002d8c:	e79d      	b.n	8002cca <_vfprintf_r+0x582>
 8002d8e:	f048 0801 	orr.w	r8, r8, #1
 8002d92:	f89a 6000 	ldrb.w	r6, [sl]
 8002d96:	e555      	b.n	8002844 <_vfprintf_r+0xfc>
 8002d98:	08007484 	.word	0x08007484
 8002d9c:	08007494 	.word	0x08007494
 8002da0:	08007450 	.word	0x08007450
 8002da4:	9e03      	ldr	r6, [sp, #12]
 8002da6:	4630      	mov	r0, r6
 8002da8:	f002 feaa 	bl	8005b00 <_localeconv_r>
 8002dac:	6843      	ldr	r3, [r0, #4]
 8002dae:	9318      	str	r3, [sp, #96]	; 0x60
 8002db0:	4618      	mov	r0, r3
 8002db2:	f7fd fc45 	bl	8000640 <strlen>
 8002db6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002db8:	4604      	mov	r4, r0
 8002dba:	4630      	mov	r0, r6
 8002dbc:	f002 fea0 	bl	8005b00 <_localeconv_r>
 8002dc0:	6883      	ldr	r3, [r0, #8]
 8002dc2:	931a      	str	r3, [sp, #104]	; 0x68
 8002dc4:	2c00      	cmp	r4, #0
 8002dc6:	f43f adb8 	beq.w	800293a <_vfprintf_r+0x1f2>
 8002dca:	f89a 6000 	ldrb.w	r6, [sl]
 8002dce:	2b00      	cmp	r3, #0
 8002dd0:	f43f ad38 	beq.w	8002844 <_vfprintf_r+0xfc>
 8002dd4:	781b      	ldrb	r3, [r3, #0]
 8002dd6:	2b00      	cmp	r3, #0
 8002dd8:	f43f ad34 	beq.w	8002844 <_vfprintf_r+0xfc>
 8002ddc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002de0:	e530      	b.n	8002844 <_vfprintf_r+0xfc>
 8002de2:	9b08      	ldr	r3, [sp, #32]
 8002de4:	f89a 6000 	ldrb.w	r6, [sl]
 8002de8:	681a      	ldr	r2, [r3, #0]
 8002dea:	9206      	str	r2, [sp, #24]
 8002dec:	2a00      	cmp	r2, #0
 8002dee:	f103 0304 	add.w	r3, r3, #4
 8002df2:	f2c0 8697 	blt.w	8003b24 <_vfprintf_r+0x13dc>
 8002df6:	9308      	str	r3, [sp, #32]
 8002df8:	e524      	b.n	8002844 <_vfprintf_r+0xfc>
 8002dfa:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002dfe:	f89a 6000 	ldrb.w	r6, [sl]
 8002e02:	e51f      	b.n	8002844 <_vfprintf_r+0xfc>
 8002e04:	f89a 6000 	ldrb.w	r6, [sl]
 8002e08:	f048 0804 	orr.w	r8, r8, #4
 8002e0c:	e51a      	b.n	8002844 <_vfprintf_r+0xfc>
 8002e0e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e12:	2e2a      	cmp	r6, #42	; 0x2a
 8002e14:	f10a 0201 	add.w	r2, sl, #1
 8002e18:	f001 81b0 	beq.w	800417c <_vfprintf_r+0x1a34>
 8002e1c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e20:	2b09      	cmp	r3, #9
 8002e22:	4692      	mov	sl, r2
 8002e24:	f04f 0900 	mov.w	r9, #0
 8002e28:	f63f ad0e 	bhi.w	8002848 <_vfprintf_r+0x100>
 8002e2c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002e30:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002e34:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002e38:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e3c:	2b09      	cmp	r3, #9
 8002e3e:	d9f5      	bls.n	8002e2c <_vfprintf_r+0x6e4>
 8002e40:	e502      	b.n	8002848 <_vfprintf_r+0x100>
 8002e42:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002e46:	f89a 6000 	ldrb.w	r6, [sl]
 8002e4a:	e4fb      	b.n	8002844 <_vfprintf_r+0xfc>
 8002e4c:	9c08      	ldr	r4, [sp, #32]
 8002e4e:	3407      	adds	r4, #7
 8002e50:	f024 0407 	bic.w	r4, r4, #7
 8002e54:	ed94 7b00 	vldr	d7, [r4]
 8002e58:	ec52 1b17 	vmov	r1, r2, d7
 8002e5c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002e60:	931d      	str	r3, [sp, #116]	; 0x74
 8002e62:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002e66:	3408      	adds	r4, #8
 8002e68:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002e6c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002e70:	4bba      	ldr	r3, [pc, #744]	; (800315c <_vfprintf_r+0xa14>)
 8002e72:	9408      	str	r4, [sp, #32]
 8002e74:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002e78:	f7fe f8f8 	bl	800106c <__aeabi_dcmpun>
 8002e7c:	2800      	cmp	r0, #0
 8002e7e:	f040 846f 	bne.w	8003760 <_vfprintf_r+0x1018>
 8002e82:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002e86:	4bb5      	ldr	r3, [pc, #724]	; (800315c <_vfprintf_r+0xa14>)
 8002e88:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002e8c:	f7fe f8d0 	bl	8001030 <__aeabi_dcmple>
 8002e90:	2800      	cmp	r0, #0
 8002e92:	f040 8465 	bne.w	8003760 <_vfprintf_r+0x1018>
 8002e96:	2200      	movs	r2, #0
 8002e98:	2300      	movs	r3, #0
 8002e9a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e9e:	f7fe f8bd 	bl	800101c <__aeabi_dcmplt>
 8002ea2:	2800      	cmp	r0, #0
 8002ea4:	f040 855b 	bne.w	800395e <_vfprintf_r+0x1216>
 8002ea8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002eac:	4fac      	ldr	r7, [pc, #688]	; (8003160 <_vfprintf_r+0xa18>)
 8002eae:	4bad      	ldr	r3, [pc, #692]	; (8003164 <_vfprintf_r+0xa1c>)
 8002eb0:	2000      	movs	r0, #0
 8002eb2:	2103      	movs	r1, #3
 8002eb4:	9104      	str	r1, [sp, #16]
 8002eb6:	900a      	str	r0, [sp, #40]	; 0x28
 8002eb8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002ebc:	2e47      	cmp	r6, #71	; 0x47
 8002ebe:	bfd8      	it	le
 8002ec0:	461f      	movle	r7, r3
 8002ec2:	9109      	str	r1, [sp, #36]	; 0x24
 8002ec4:	4681      	mov	r9, r0
 8002ec6:	900f      	str	r0, [sp, #60]	; 0x3c
 8002ec8:	9014      	str	r0, [sp, #80]	; 0x50
 8002eca:	9011      	str	r0, [sp, #68]	; 0x44
 8002ecc:	e5c9      	b.n	8002a62 <_vfprintf_r+0x31a>
 8002ece:	9808      	ldr	r0, [sp, #32]
 8002ed0:	2300      	movs	r3, #0
 8002ed2:	6801      	ldr	r1, [r0, #0]
 8002ed4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ed8:	461a      	mov	r2, r3
 8002eda:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002ede:	2301      	movs	r3, #1
 8002ee0:	1d01      	adds	r1, r0, #4
 8002ee2:	9304      	str	r3, [sp, #16]
 8002ee4:	920a      	str	r2, [sp, #40]	; 0x28
 8002ee6:	4691      	mov	r9, r2
 8002ee8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002eea:	9214      	str	r2, [sp, #80]	; 0x50
 8002eec:	9211      	str	r2, [sp, #68]	; 0x44
 8002eee:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002ef2:	af3d      	add	r7, sp, #244	; 0xf4
 8002ef4:	e5b9      	b.n	8002a6a <_vfprintf_r+0x322>
 8002ef6:	9b08      	ldr	r3, [sp, #32]
 8002ef8:	681f      	ldr	r7, [r3, #0]
 8002efa:	2500      	movs	r5, #0
 8002efc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002f00:	1d1c      	adds	r4, r3, #4
 8002f02:	2f00      	cmp	r7, #0
 8002f04:	f000 8639 	beq.w	8003b7a <_vfprintf_r+0x1432>
 8002f08:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002f0c:	f000 8711 	beq.w	8003d32 <_vfprintf_r+0x15ea>
 8002f10:	464a      	mov	r2, r9
 8002f12:	4629      	mov	r1, r5
 8002f14:	4638      	mov	r0, r7
 8002f16:	f7fd fc03 	bl	8000720 <memchr>
 8002f1a:	900a      	str	r0, [sp, #40]	; 0x28
 8002f1c:	2800      	cmp	r0, #0
 8002f1e:	f000 85e7 	beq.w	8003af0 <_vfprintf_r+0x13a8>
 8002f22:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002f24:	1bdb      	subs	r3, r3, r7
 8002f26:	9309      	str	r3, [sp, #36]	; 0x24
 8002f28:	46a9      	mov	r9, r5
 8002f2a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002f2e:	9408      	str	r4, [sp, #32]
 8002f30:	9304      	str	r3, [sp, #16]
 8002f32:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002f36:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002f3a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002f3e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002f42:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002f46:	e58c      	b.n	8002a62 <_vfprintf_r+0x31a>
 8002f48:	f048 0310 	orr.w	r3, r8, #16
 8002f4c:	069a      	lsls	r2, r3, #26
 8002f4e:	f53f aeb2 	bmi.w	8002cb6 <_vfprintf_r+0x56e>
 8002f52:	9a08      	ldr	r2, [sp, #32]
 8002f54:	06df      	lsls	r7, r3, #27
 8002f56:	f102 0104 	add.w	r1, r2, #4
 8002f5a:	f100 837e 	bmi.w	800365a <_vfprintf_r+0xf12>
 8002f5e:	065d      	lsls	r5, r3, #25
 8002f60:	9a08      	ldr	r2, [sp, #32]
 8002f62:	f100 84e4 	bmi.w	800392e <_vfprintf_r+0x11e6>
 8002f66:	059c      	lsls	r4, r3, #22
 8002f68:	f140 8377 	bpl.w	800365a <_vfprintf_r+0xf12>
 8002f6c:	7814      	ldrb	r4, [r2, #0]
 8002f6e:	9108      	str	r1, [sp, #32]
 8002f70:	2500      	movs	r5, #0
 8002f72:	2201      	movs	r2, #1
 8002f74:	e6a9      	b.n	8002cca <_vfprintf_r+0x582>
 8002f76:	4b7c      	ldr	r3, [pc, #496]	; (8003168 <_vfprintf_r+0xa20>)
 8002f78:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f7a:	f018 0f20 	tst.w	r8, #32
 8002f7e:	f47f aeec 	bne.w	8002d5a <_vfprintf_r+0x612>
 8002f82:	9a08      	ldr	r2, [sp, #32]
 8002f84:	f018 0f10 	tst.w	r8, #16
 8002f88:	f102 0304 	add.w	r3, r2, #4
 8002f8c:	f040 8354 	bne.w	8003638 <_vfprintf_r+0xef0>
 8002f90:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002f94:	9a08      	ldr	r2, [sp, #32]
 8002f96:	f040 84d0 	bne.w	800393a <_vfprintf_r+0x11f2>
 8002f9a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002f9e:	f000 834b 	beq.w	8003638 <_vfprintf_r+0xef0>
 8002fa2:	7814      	ldrb	r4, [r2, #0]
 8002fa4:	9308      	str	r3, [sp, #32]
 8002fa6:	2500      	movs	r5, #0
 8002fa8:	e6e0      	b.n	8002d6c <_vfprintf_r+0x624>
 8002faa:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002fae:	f89a 6000 	ldrb.w	r6, [sl]
 8002fb2:	2b00      	cmp	r3, #0
 8002fb4:	f47f ac46 	bne.w	8002844 <_vfprintf_r+0xfc>
 8002fb8:	2320      	movs	r3, #32
 8002fba:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002fbe:	e441      	b.n	8002844 <_vfprintf_r+0xfc>
 8002fc0:	f89a 6000 	ldrb.w	r6, [sl]
 8002fc4:	2e6c      	cmp	r6, #108	; 0x6c
 8002fc6:	bf03      	ittte	eq
 8002fc8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002fcc:	f048 0820 	orreq.w	r8, r8, #32
 8002fd0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002fd4:	f048 0810 	orrne.w	r8, r8, #16
 8002fd8:	e434      	b.n	8002844 <_vfprintf_r+0xfc>
 8002fda:	9a08      	ldr	r2, [sp, #32]
 8002fdc:	f018 0f20 	tst.w	r8, #32
 8002fe0:	f852 3b04 	ldr.w	r3, [r2], #4
 8002fe4:	9208      	str	r2, [sp, #32]
 8002fe6:	f000 83a1 	beq.w	800372c <_vfprintf_r+0xfe4>
 8002fea:	9a05      	ldr	r2, [sp, #20]
 8002fec:	4610      	mov	r0, r2
 8002fee:	17d1      	asrs	r1, r2, #31
 8002ff0:	e9c3 0100 	strd	r0, r1, [r3]
 8002ff4:	4657      	mov	r7, sl
 8002ff6:	e64d      	b.n	8002c94 <_vfprintf_r+0x54c>
 8002ff8:	f89a 6000 	ldrb.w	r6, [sl]
 8002ffc:	2e68      	cmp	r6, #104	; 0x68
 8002ffe:	bf03      	ittte	eq
 8003000:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003004:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003008:	f10a 0a01 	addeq.w	sl, sl, #1
 800300c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003010:	e418      	b.n	8002844 <_vfprintf_r+0xfc>
 8003012:	9908      	ldr	r1, [sp, #32]
 8003014:	4b55      	ldr	r3, [pc, #340]	; (800316c <_vfprintf_r+0xa24>)
 8003016:	680c      	ldr	r4, [r1, #0]
 8003018:	9317      	str	r3, [sp, #92]	; 0x5c
 800301a:	f647 0230 	movw	r2, #30768	; 0x7830
 800301e:	3104      	adds	r1, #4
 8003020:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003024:	f048 0302 	orr.w	r3, r8, #2
 8003028:	9108      	str	r1, [sp, #32]
 800302a:	2500      	movs	r5, #0
 800302c:	2202      	movs	r2, #2
 800302e:	2678      	movs	r6, #120	; 0x78
 8003030:	e64b      	b.n	8002cca <_vfprintf_r+0x582>
 8003032:	f048 0808 	orr.w	r8, r8, #8
 8003036:	f89a 6000 	ldrb.w	r6, [sl]
 800303a:	e403      	b.n	8002844 <_vfprintf_r+0xfc>
 800303c:	f048 0310 	orr.w	r3, r8, #16
 8003040:	069f      	lsls	r7, r3, #26
 8003042:	f53f acd1 	bmi.w	80029e8 <_vfprintf_r+0x2a0>
 8003046:	9908      	ldr	r1, [sp, #32]
 8003048:	06dd      	lsls	r5, r3, #27
 800304a:	f101 0204 	add.w	r2, r1, #4
 800304e:	f100 82fd 	bmi.w	800364c <_vfprintf_r+0xf04>
 8003052:	065c      	lsls	r4, r3, #25
 8003054:	9908      	ldr	r1, [sp, #32]
 8003056:	f100 8475 	bmi.w	8003944 <_vfprintf_r+0x11fc>
 800305a:	0598      	lsls	r0, r3, #22
 800305c:	f140 82f6 	bpl.w	800364c <_vfprintf_r+0xf04>
 8003060:	f991 4000 	ldrsb.w	r4, [r1]
 8003064:	9208      	str	r2, [sp, #32]
 8003066:	17e5      	asrs	r5, r4, #31
 8003068:	4620      	mov	r0, r4
 800306a:	4629      	mov	r1, r5
 800306c:	e4c7      	b.n	80029fe <_vfprintf_r+0x2b6>
 800306e:	9a08      	ldr	r2, [sp, #32]
 8003070:	f018 0f10 	tst.w	r8, #16
 8003074:	f102 0304 	add.w	r3, r2, #4
 8003078:	f040 82e3 	bne.w	8003642 <_vfprintf_r+0xefa>
 800307c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003080:	9a08      	ldr	r2, [sp, #32]
 8003082:	f040 8467 	bne.w	8003954 <_vfprintf_r+0x120c>
 8003086:	f418 7f00 	tst.w	r8, #512	; 0x200
 800308a:	f000 82da 	beq.w	8003642 <_vfprintf_r+0xefa>
 800308e:	7814      	ldrb	r4, [r2, #0]
 8003090:	9308      	str	r3, [sp, #32]
 8003092:	2500      	movs	r5, #0
 8003094:	e488      	b.n	80029a8 <_vfprintf_r+0x260>
 8003096:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800309a:	f002 fd45 	bl	8005b28 <__retarget_lock_release_recursive>
 800309e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80030a2:	9305      	str	r3, [sp, #20]
 80030a4:	e443      	b.n	800292e <_vfprintf_r+0x1e6>
 80030a6:	2e00      	cmp	r6, #0
 80030a8:	f43f adf8 	beq.w	8002c9c <_vfprintf_r+0x554>
 80030ac:	2300      	movs	r3, #0
 80030ae:	2101      	movs	r1, #1
 80030b0:	461a      	mov	r2, r3
 80030b2:	9104      	str	r1, [sp, #16]
 80030b4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80030b8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80030bc:	930a      	str	r3, [sp, #40]	; 0x28
 80030be:	4699      	mov	r9, r3
 80030c0:	930f      	str	r3, [sp, #60]	; 0x3c
 80030c2:	9314      	str	r3, [sp, #80]	; 0x50
 80030c4:	9311      	str	r3, [sp, #68]	; 0x44
 80030c6:	9109      	str	r1, [sp, #36]	; 0x24
 80030c8:	af3d      	add	r7, sp, #244	; 0xf4
 80030ca:	e4ce      	b.n	8002a6a <_vfprintf_r+0x322>
 80030cc:	2e65      	cmp	r6, #101	; 0x65
 80030ce:	f340 80ca 	ble.w	8003266 <_vfprintf_r+0xb1e>
 80030d2:	2200      	movs	r2, #0
 80030d4:	2300      	movs	r3, #0
 80030d6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80030da:	f7fd ff95 	bl	8001008 <__aeabi_dcmpeq>
 80030de:	2800      	cmp	r0, #0
 80030e0:	f000 8169 	beq.w	80033b6 <_vfprintf_r+0xc6e>
 80030e4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030e6:	4a22      	ldr	r2, [pc, #136]	; (8003170 <_vfprintf_r+0xa28>)
 80030e8:	f8cb 2000 	str.w	r2, [fp]
 80030ec:	3301      	adds	r3, #1
 80030ee:	3401      	adds	r4, #1
 80030f0:	2201      	movs	r2, #1
 80030f2:	2b07      	cmp	r3, #7
 80030f4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80030f8:	f8cb 2004 	str.w	r2, [fp, #4]
 80030fc:	f300 8406 	bgt.w	800390c <_vfprintf_r+0x11c4>
 8003100:	f10b 0b08 	add.w	fp, fp, #8
 8003104:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003106:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003108:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800310a:	4293      	cmp	r3, r2
 800310c:	db03      	blt.n	8003116 <_vfprintf_r+0x9ce>
 800310e:	f018 0f01 	tst.w	r8, #1
 8003112:	f43f ad6a 	beq.w	8002bea <_vfprintf_r+0x4a2>
 8003116:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003118:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800311a:	f8cb 2000 	str.w	r2, [fp]
 800311e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003120:	f8cb 2004 	str.w	r2, [fp, #4]
 8003124:	3301      	adds	r3, #1
 8003126:	4414      	add	r4, r2
 8003128:	2b07      	cmp	r3, #7
 800312a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800312e:	f300 8517 	bgt.w	8003b60 <_vfprintf_r+0x1418>
 8003132:	f10b 0b08 	add.w	fp, fp, #8
 8003136:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003138:	1e5d      	subs	r5, r3, #1
 800313a:	2d00      	cmp	r5, #0
 800313c:	f77f ad55 	ble.w	8002bea <_vfprintf_r+0x4a2>
 8003140:	2d10      	cmp	r5, #16
 8003142:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003144:	4b0b      	ldr	r3, [pc, #44]	; (8003174 <_vfprintf_r+0xa2c>)
 8003146:	f340 82e7 	ble.w	8003718 <_vfprintf_r+0xfd0>
 800314a:	4619      	mov	r1, r3
 800314c:	2610      	movs	r6, #16
 800314e:	4623      	mov	r3, r4
 8003150:	9f03      	ldr	r7, [sp, #12]
 8003152:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003156:	460c      	mov	r4, r1
 8003158:	e014      	b.n	8003184 <_vfprintf_r+0xa3c>
 800315a:	bf00      	nop
 800315c:	7fefffff 	.word	0x7fefffff
 8003160:	08007444 	.word	0x08007444
 8003164:	08007440 	.word	0x08007440
 8003168:	08007464 	.word	0x08007464
 800316c:	08007450 	.word	0x08007450
 8003170:	08007480 	.word	0x08007480
 8003174:	08007494 	.word	0x08007494
 8003178:	f10b 0b08 	add.w	fp, fp, #8
 800317c:	3d10      	subs	r5, #16
 800317e:	2d10      	cmp	r5, #16
 8003180:	f340 82c7 	ble.w	8003712 <_vfprintf_r+0xfca>
 8003184:	3201      	adds	r2, #1
 8003186:	3310      	adds	r3, #16
 8003188:	2a07      	cmp	r2, #7
 800318a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800318e:	e9cb 4600 	strd	r4, r6, [fp]
 8003192:	ddf1      	ble.n	8003178 <_vfprintf_r+0xa30>
 8003194:	aa2a      	add	r2, sp, #168	; 0xa8
 8003196:	4649      	mov	r1, r9
 8003198:	4638      	mov	r0, r7
 800319a:	f003 fe03 	bl	8006da4 <__sprint_r>
 800319e:	2800      	cmp	r0, #0
 80031a0:	d14c      	bne.n	800323c <_vfprintf_r+0xaf4>
 80031a2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80031a6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031aa:	e7e7      	b.n	800317c <_vfprintf_r+0xa34>
 80031ac:	9b06      	ldr	r3, [sp, #24]
 80031ae:	9a04      	ldr	r2, [sp, #16]
 80031b0:	1a9d      	subs	r5, r3, r2
 80031b2:	2d00      	cmp	r5, #0
 80031b4:	f77f acc9 	ble.w	8002b4a <_vfprintf_r+0x402>
 80031b8:	2d10      	cmp	r5, #16
 80031ba:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031bc:	4bbc      	ldr	r3, [pc, #752]	; (80034b0 <_vfprintf_r+0xd68>)
 80031be:	dd27      	ble.n	8003210 <_vfprintf_r+0xac8>
 80031c0:	4659      	mov	r1, fp
 80031c2:	4620      	mov	r0, r4
 80031c4:	46bb      	mov	fp, r7
 80031c6:	461c      	mov	r4, r3
 80031c8:	4637      	mov	r7, r6
 80031ca:	9e07      	ldr	r6, [sp, #28]
 80031cc:	e004      	b.n	80031d8 <_vfprintf_r+0xa90>
 80031ce:	3d10      	subs	r5, #16
 80031d0:	2d10      	cmp	r5, #16
 80031d2:	f101 0108 	add.w	r1, r1, #8
 80031d6:	dd16      	ble.n	8003206 <_vfprintf_r+0xabe>
 80031d8:	3201      	adds	r2, #1
 80031da:	3010      	adds	r0, #16
 80031dc:	2310      	movs	r3, #16
 80031de:	2a07      	cmp	r2, #7
 80031e0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80031e4:	600c      	str	r4, [r1, #0]
 80031e6:	604b      	str	r3, [r1, #4]
 80031e8:	ddf1      	ble.n	80031ce <_vfprintf_r+0xa86>
 80031ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80031ec:	4631      	mov	r1, r6
 80031ee:	9803      	ldr	r0, [sp, #12]
 80031f0:	f003 fdd8 	bl	8006da4 <__sprint_r>
 80031f4:	2800      	cmp	r0, #0
 80031f6:	f040 80a8 	bne.w	800334a <_vfprintf_r+0xc02>
 80031fa:	3d10      	subs	r5, #16
 80031fc:	2d10      	cmp	r5, #16
 80031fe:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003202:	a92d      	add	r1, sp, #180	; 0xb4
 8003204:	dce8      	bgt.n	80031d8 <_vfprintf_r+0xa90>
 8003206:	463e      	mov	r6, r7
 8003208:	4623      	mov	r3, r4
 800320a:	465f      	mov	r7, fp
 800320c:	4604      	mov	r4, r0
 800320e:	468b      	mov	fp, r1
 8003210:	3201      	adds	r2, #1
 8003212:	442c      	add	r4, r5
 8003214:	2a07      	cmp	r2, #7
 8003216:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800321a:	e9cb 3500 	strd	r3, r5, [fp]
 800321e:	f300 8292 	bgt.w	8003746 <_vfprintf_r+0xffe>
 8003222:	f10b 0b08 	add.w	fp, fp, #8
 8003226:	e490      	b.n	8002b4a <_vfprintf_r+0x402>
 8003228:	aa2a      	add	r2, sp, #168	; 0xa8
 800322a:	9907      	ldr	r1, [sp, #28]
 800322c:	9803      	ldr	r0, [sp, #12]
 800322e:	f003 fdb9 	bl	8006da4 <__sprint_r>
 8003232:	2800      	cmp	r0, #0
 8003234:	f43f ad23 	beq.w	8002c7e <_vfprintf_r+0x536>
 8003238:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800323c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800323e:	b111      	cbz	r1, 8003246 <_vfprintf_r+0xafe>
 8003240:	9803      	ldr	r0, [sp, #12]
 8003242:	f002 f9c1 	bl	80055c8 <_free_r>
 8003246:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800324a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800324e:	07d0      	lsls	r0, r2, #31
 8003250:	d402      	bmi.n	8003258 <_vfprintf_r+0xb10>
 8003252:	0599      	lsls	r1, r3, #22
 8003254:	f140 81d0 	bpl.w	80035f8 <_vfprintf_r+0xeb0>
 8003258:	065a      	lsls	r2, r3, #25
 800325a:	f53f ab65 	bmi.w	8002928 <_vfprintf_r+0x1e0>
 800325e:	9805      	ldr	r0, [sp, #20]
 8003260:	b057      	add	sp, #348	; 0x15c
 8003262:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003266:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003268:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800326a:	2a01      	cmp	r2, #1
 800326c:	f104 0401 	add.w	r4, r4, #1
 8003270:	f103 0501 	add.w	r5, r3, #1
 8003274:	f10b 0608 	add.w	r6, fp, #8
 8003278:	f340 811c 	ble.w	80034b4 <_vfprintf_r+0xd6c>
 800327c:	2301      	movs	r3, #1
 800327e:	2d07      	cmp	r5, #7
 8003280:	f8cb 7000 	str.w	r7, [fp]
 8003284:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003288:	f8cb 3004 	str.w	r3, [fp, #4]
 800328c:	f300 81bb 	bgt.w	8003606 <_vfprintf_r+0xebe>
 8003290:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003292:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003294:	1c69      	adds	r1, r5, #1
 8003296:	441c      	add	r4, r3
 8003298:	2907      	cmp	r1, #7
 800329a:	910b      	str	r1, [sp, #44]	; 0x2c
 800329c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80032a0:	e9c6 2300 	strd	r2, r3, [r6]
 80032a4:	f300 81bb 	bgt.w	800361e <_vfprintf_r+0xed6>
 80032a8:	3608      	adds	r6, #8
 80032aa:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80032ac:	1c53      	adds	r3, r2, #1
 80032ae:	461d      	mov	r5, r3
 80032b0:	9509      	str	r5, [sp, #36]	; 0x24
 80032b2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80032b4:	930e      	str	r3, [sp, #56]	; 0x38
 80032b6:	2200      	movs	r2, #0
 80032b8:	2300      	movs	r3, #0
 80032ba:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032be:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80032c2:	f106 0b08 	add.w	fp, r6, #8
 80032c6:	f7fd fe9f 	bl	8001008 <__aeabi_dcmpeq>
 80032ca:	2800      	cmp	r0, #0
 80032cc:	f040 80c2 	bne.w	8003454 <_vfprintf_r+0xd0c>
 80032d0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80032d2:	f8c6 9004 	str.w	r9, [r6, #4]
 80032d6:	3701      	adds	r7, #1
 80032d8:	444c      	add	r4, r9
 80032da:	2d07      	cmp	r5, #7
 80032dc:	6037      	str	r7, [r6, #0]
 80032de:	942c      	str	r4, [sp, #176]	; 0xb0
 80032e0:	952b      	str	r5, [sp, #172]	; 0xac
 80032e2:	f300 80f9 	bgt.w	80034d8 <_vfprintf_r+0xd90>
 80032e6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80032e8:	f106 0310 	add.w	r3, r6, #16
 80032ec:	3202      	adds	r2, #2
 80032ee:	465e      	mov	r6, fp
 80032f0:	9209      	str	r2, [sp, #36]	; 0x24
 80032f2:	469b      	mov	fp, r3
 80032f4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80032f6:	6072      	str	r2, [r6, #4]
 80032f8:	4414      	add	r4, r2
 80032fa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80032fc:	942c      	str	r4, [sp, #176]	; 0xb0
 80032fe:	ab26      	add	r3, sp, #152	; 0x98
 8003300:	2a07      	cmp	r2, #7
 8003302:	922b      	str	r2, [sp, #172]	; 0xac
 8003304:	6033      	str	r3, [r6, #0]
 8003306:	f77f ac70 	ble.w	8002bea <_vfprintf_r+0x4a2>
 800330a:	aa2a      	add	r2, sp, #168	; 0xa8
 800330c:	9907      	ldr	r1, [sp, #28]
 800330e:	9803      	ldr	r0, [sp, #12]
 8003310:	f003 fd48 	bl	8006da4 <__sprint_r>
 8003314:	2800      	cmp	r0, #0
 8003316:	d18f      	bne.n	8003238 <_vfprintf_r+0xaf0>
 8003318:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800331a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800331e:	e464      	b.n	8002bea <_vfprintf_r+0x4a2>
 8003320:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003322:	af56      	add	r7, sp, #344	; 0x158
 8003324:	0923      	lsrs	r3, r4, #4
 8003326:	f004 010f 	and.w	r1, r4, #15
 800332a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800332e:	092a      	lsrs	r2, r5, #4
 8003330:	461c      	mov	r4, r3
 8003332:	4615      	mov	r5, r2
 8003334:	5c43      	ldrb	r3, [r0, r1]
 8003336:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800333a:	ea54 0305 	orrs.w	r3, r4, r5
 800333e:	d1f1      	bne.n	8003324 <_vfprintf_r+0xbdc>
 8003340:	9b04      	ldr	r3, [sp, #16]
 8003342:	1bdb      	subs	r3, r3, r7
 8003344:	9309      	str	r3, [sp, #36]	; 0x24
 8003346:	f7ff bb80 	b.w	8002a4a <_vfprintf_r+0x302>
 800334a:	46b1      	mov	r9, r6
 800334c:	e776      	b.n	800323c <_vfprintf_r+0xaf4>
 800334e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003350:	9907      	ldr	r1, [sp, #28]
 8003352:	9803      	ldr	r0, [sp, #12]
 8003354:	f003 fd26 	bl	8006da4 <__sprint_r>
 8003358:	2800      	cmp	r0, #0
 800335a:	f47f af6d 	bne.w	8003238 <_vfprintf_r+0xaf0>
 800335e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003360:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003364:	f7ff bbdd 	b.w	8002b22 <_vfprintf_r+0x3da>
 8003368:	aa2a      	add	r2, sp, #168	; 0xa8
 800336a:	9907      	ldr	r1, [sp, #28]
 800336c:	9803      	ldr	r0, [sp, #12]
 800336e:	f003 fd19 	bl	8006da4 <__sprint_r>
 8003372:	2800      	cmp	r0, #0
 8003374:	f47f af60 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003378:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800337a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800337e:	f7ff bbe0 	b.w	8002b42 <_vfprintf_r+0x3fa>
 8003382:	4698      	mov	r8, r3
 8003384:	2d00      	cmp	r5, #0
 8003386:	bf08      	it	eq
 8003388:	2c0a      	cmpeq	r4, #10
 800338a:	f080 8170 	bcs.w	800366e <_vfprintf_r+0xf26>
 800338e:	af56      	add	r7, sp, #344	; 0x158
 8003390:	3430      	adds	r4, #48	; 0x30
 8003392:	2301      	movs	r3, #1
 8003394:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003398:	9309      	str	r3, [sp, #36]	; 0x24
 800339a:	f7ff bb56 	b.w	8002a4a <_vfprintf_r+0x302>
 800339e:	aa2a      	add	r2, sp, #168	; 0xa8
 80033a0:	9907      	ldr	r1, [sp, #28]
 80033a2:	9803      	ldr	r0, [sp, #12]
 80033a4:	f003 fcfe 	bl	8006da4 <__sprint_r>
 80033a8:	2800      	cmp	r0, #0
 80033aa:	f47f af45 	bne.w	8003238 <_vfprintf_r+0xaf0>
 80033ae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033b0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033b4:	e406      	b.n	8002bc4 <_vfprintf_r+0x47c>
 80033b6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80033b8:	2b00      	cmp	r3, #0
 80033ba:	f340 8273 	ble.w	80038a4 <_vfprintf_r+0x115c>
 80033be:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80033c2:	4293      	cmp	r3, r2
 80033c4:	bfa8      	it	ge
 80033c6:	4613      	movge	r3, r2
 80033c8:	2b00      	cmp	r3, #0
 80033ca:	461d      	mov	r5, r3
 80033cc:	dd0d      	ble.n	80033ea <_vfprintf_r+0xca2>
 80033ce:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033d0:	f8cb 7000 	str.w	r7, [fp]
 80033d4:	3301      	adds	r3, #1
 80033d6:	442c      	add	r4, r5
 80033d8:	2b07      	cmp	r3, #7
 80033da:	942c      	str	r4, [sp, #176]	; 0xb0
 80033dc:	f8cb 5004 	str.w	r5, [fp, #4]
 80033e0:	932b      	str	r3, [sp, #172]	; 0xac
 80033e2:	f300 82c1 	bgt.w	8003968 <_vfprintf_r+0x1220>
 80033e6:	f10b 0b08 	add.w	fp, fp, #8
 80033ea:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80033ec:	2d00      	cmp	r5, #0
 80033ee:	bfa8      	it	ge
 80033f0:	1b5b      	subge	r3, r3, r5
 80033f2:	2b00      	cmp	r3, #0
 80033f4:	461d      	mov	r5, r3
 80033f6:	f340 8099 	ble.w	800352c <_vfprintf_r+0xde4>
 80033fa:	2d10      	cmp	r5, #16
 80033fc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033fe:	4b2c      	ldr	r3, [pc, #176]	; (80034b0 <_vfprintf_r+0xd68>)
 8003400:	f340 83db 	ble.w	8003bba <_vfprintf_r+0x1472>
 8003404:	4618      	mov	r0, r3
 8003406:	4621      	mov	r1, r4
 8003408:	465b      	mov	r3, fp
 800340a:	2610      	movs	r6, #16
 800340c:	46bb      	mov	fp, r7
 800340e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003412:	9c07      	ldr	r4, [sp, #28]
 8003414:	4607      	mov	r7, r0
 8003416:	e004      	b.n	8003422 <_vfprintf_r+0xcda>
 8003418:	3308      	adds	r3, #8
 800341a:	3d10      	subs	r5, #16
 800341c:	2d10      	cmp	r5, #16
 800341e:	f340 83c7 	ble.w	8003bb0 <_vfprintf_r+0x1468>
 8003422:	3201      	adds	r2, #1
 8003424:	3110      	adds	r1, #16
 8003426:	2a07      	cmp	r2, #7
 8003428:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800342c:	e9c3 7600 	strd	r7, r6, [r3]
 8003430:	ddf2      	ble.n	8003418 <_vfprintf_r+0xcd0>
 8003432:	aa2a      	add	r2, sp, #168	; 0xa8
 8003434:	4621      	mov	r1, r4
 8003436:	4648      	mov	r0, r9
 8003438:	f003 fcb4 	bl	8006da4 <__sprint_r>
 800343c:	2800      	cmp	r0, #0
 800343e:	f040 84a5 	bne.w	8003d8c <_vfprintf_r+0x1644>
 8003442:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003446:	ab2d      	add	r3, sp, #180	; 0xb4
 8003448:	e7e7      	b.n	800341a <_vfprintf_r+0xcd2>
 800344a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800344e:	af56      	add	r7, sp, #344	; 0x158
 8003450:	f7ff bafb 	b.w	8002a4a <_vfprintf_r+0x302>
 8003454:	f1b9 0f00 	cmp.w	r9, #0
 8003458:	f77f af4c 	ble.w	80032f4 <_vfprintf_r+0xbac>
 800345c:	f1b9 0f10 	cmp.w	r9, #16
 8003460:	4b13      	ldr	r3, [pc, #76]	; (80034b0 <_vfprintf_r+0xd68>)
 8003462:	f340 8659 	ble.w	8004118 <_vfprintf_r+0x19d0>
 8003466:	4619      	mov	r1, r3
 8003468:	4622      	mov	r2, r4
 800346a:	4633      	mov	r3, r6
 800346c:	2710      	movs	r7, #16
 800346e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003472:	9c07      	ldr	r4, [sp, #28]
 8003474:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003476:	460e      	mov	r6, r1
 8003478:	e007      	b.n	800348a <_vfprintf_r+0xd42>
 800347a:	3308      	adds	r3, #8
 800347c:	f1a9 0910 	sub.w	r9, r9, #16
 8003480:	f1b9 0f10 	cmp.w	r9, #16
 8003484:	f340 8353 	ble.w	8003b2e <_vfprintf_r+0x13e6>
 8003488:	3501      	adds	r5, #1
 800348a:	3210      	adds	r2, #16
 800348c:	2d07      	cmp	r5, #7
 800348e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003492:	e9c3 6700 	strd	r6, r7, [r3]
 8003496:	ddf0      	ble.n	800347a <_vfprintf_r+0xd32>
 8003498:	aa2a      	add	r2, sp, #168	; 0xa8
 800349a:	4621      	mov	r1, r4
 800349c:	4658      	mov	r0, fp
 800349e:	f003 fc81 	bl	8006da4 <__sprint_r>
 80034a2:	2800      	cmp	r0, #0
 80034a4:	f040 8472 	bne.w	8003d8c <_vfprintf_r+0x1644>
 80034a8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80034ac:	ab2d      	add	r3, sp, #180	; 0xb4
 80034ae:	e7e5      	b.n	800347c <_vfprintf_r+0xd34>
 80034b0:	08007494 	.word	0x08007494
 80034b4:	f018 0f01 	tst.w	r8, #1
 80034b8:	f47f aee0 	bne.w	800327c <_vfprintf_r+0xb34>
 80034bc:	2201      	movs	r2, #1
 80034be:	2d07      	cmp	r5, #7
 80034c0:	f8cb 7000 	str.w	r7, [fp]
 80034c4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80034c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80034cc:	dc04      	bgt.n	80034d8 <_vfprintf_r+0xd90>
 80034ce:	3302      	adds	r3, #2
 80034d0:	9309      	str	r3, [sp, #36]	; 0x24
 80034d2:	f10b 0b10 	add.w	fp, fp, #16
 80034d6:	e70d      	b.n	80032f4 <_vfprintf_r+0xbac>
 80034d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034da:	9907      	ldr	r1, [sp, #28]
 80034dc:	9803      	ldr	r0, [sp, #12]
 80034de:	f003 fc61 	bl	8006da4 <__sprint_r>
 80034e2:	2800      	cmp	r0, #0
 80034e4:	f47f aea8 	bne.w	8003238 <_vfprintf_r+0xaf0>
 80034e8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80034ec:	3301      	adds	r3, #1
 80034ee:	9309      	str	r3, [sp, #36]	; 0x24
 80034f0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80034f4:	ae2d      	add	r6, sp, #180	; 0xb4
 80034f6:	e6fd      	b.n	80032f4 <_vfprintf_r+0xbac>
 80034f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034fa:	9907      	ldr	r1, [sp, #28]
 80034fc:	9803      	ldr	r0, [sp, #12]
 80034fe:	f003 fc51 	bl	8006da4 <__sprint_r>
 8003502:	2800      	cmp	r0, #0
 8003504:	f47f ae98 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003508:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800350c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800350e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003512:	f7ff baf6 	b.w	8002b02 <_vfprintf_r+0x3ba>
 8003516:	aa2a      	add	r2, sp, #168	; 0xa8
 8003518:	9907      	ldr	r1, [sp, #28]
 800351a:	9803      	ldr	r0, [sp, #12]
 800351c:	f003 fc42 	bl	8006da4 <__sprint_r>
 8003520:	2800      	cmp	r0, #0
 8003522:	f47f ae89 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003526:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003528:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800352c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800352e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003532:	443b      	add	r3, r7
 8003534:	4699      	mov	r9, r3
 8003536:	f040 8357 	bne.w	8003be8 <_vfprintf_r+0x14a0>
 800353a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800353c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800353e:	4293      	cmp	r3, r2
 8003540:	db49      	blt.n	80035d6 <_vfprintf_r+0xe8e>
 8003542:	f018 0f01 	tst.w	r8, #1
 8003546:	d146      	bne.n	80035d6 <_vfprintf_r+0xe8e>
 8003548:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800354a:	18bd      	adds	r5, r7, r2
 800354c:	eba5 0509 	sub.w	r5, r5, r9
 8003550:	1ad3      	subs	r3, r2, r3
 8003552:	429d      	cmp	r5, r3
 8003554:	bfa8      	it	ge
 8003556:	461d      	movge	r5, r3
 8003558:	2d00      	cmp	r5, #0
 800355a:	dd0d      	ble.n	8003578 <_vfprintf_r+0xe30>
 800355c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800355e:	f8cb 9000 	str.w	r9, [fp]
 8003562:	3201      	adds	r2, #1
 8003564:	442c      	add	r4, r5
 8003566:	2a07      	cmp	r2, #7
 8003568:	942c      	str	r4, [sp, #176]	; 0xb0
 800356a:	f8cb 5004 	str.w	r5, [fp, #4]
 800356e:	922b      	str	r2, [sp, #172]	; 0xac
 8003570:	f300 8462 	bgt.w	8003e38 <_vfprintf_r+0x16f0>
 8003574:	f10b 0b08 	add.w	fp, fp, #8
 8003578:	2d00      	cmp	r5, #0
 800357a:	bfac      	ite	ge
 800357c:	1b5d      	subge	r5, r3, r5
 800357e:	461d      	movlt	r5, r3
 8003580:	2d00      	cmp	r5, #0
 8003582:	f77f ab32 	ble.w	8002bea <_vfprintf_r+0x4a2>
 8003586:	2d10      	cmp	r5, #16
 8003588:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800358a:	4bc5      	ldr	r3, [pc, #788]	; (80038a0 <_vfprintf_r+0x1158>)
 800358c:	f340 80c4 	ble.w	8003718 <_vfprintf_r+0xfd0>
 8003590:	4619      	mov	r1, r3
 8003592:	2610      	movs	r6, #16
 8003594:	4623      	mov	r3, r4
 8003596:	9f03      	ldr	r7, [sp, #12]
 8003598:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800359c:	460c      	mov	r4, r1
 800359e:	e005      	b.n	80035ac <_vfprintf_r+0xe64>
 80035a0:	f10b 0b08 	add.w	fp, fp, #8
 80035a4:	3d10      	subs	r5, #16
 80035a6:	2d10      	cmp	r5, #16
 80035a8:	f340 80b3 	ble.w	8003712 <_vfprintf_r+0xfca>
 80035ac:	3201      	adds	r2, #1
 80035ae:	3310      	adds	r3, #16
 80035b0:	2a07      	cmp	r2, #7
 80035b2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80035b6:	e9cb 4600 	strd	r4, r6, [fp]
 80035ba:	ddf1      	ble.n	80035a0 <_vfprintf_r+0xe58>
 80035bc:	aa2a      	add	r2, sp, #168	; 0xa8
 80035be:	4649      	mov	r1, r9
 80035c0:	4638      	mov	r0, r7
 80035c2:	f003 fbef 	bl	8006da4 <__sprint_r>
 80035c6:	2800      	cmp	r0, #0
 80035c8:	f47f ae38 	bne.w	800323c <_vfprintf_r+0xaf4>
 80035cc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80035d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035d4:	e7e6      	b.n	80035a4 <_vfprintf_r+0xe5c>
 80035d6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035d8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80035da:	f8cb 1000 	str.w	r1, [fp]
 80035de:	9915      	ldr	r1, [sp, #84]	; 0x54
 80035e0:	f8cb 1004 	str.w	r1, [fp, #4]
 80035e4:	3201      	adds	r2, #1
 80035e6:	440c      	add	r4, r1
 80035e8:	2a07      	cmp	r2, #7
 80035ea:	942c      	str	r4, [sp, #176]	; 0xb0
 80035ec:	922b      	str	r2, [sp, #172]	; 0xac
 80035ee:	f300 828c 	bgt.w	8003b0a <_vfprintf_r+0x13c2>
 80035f2:	f10b 0b08 	add.w	fp, fp, #8
 80035f6:	e7a7      	b.n	8003548 <_vfprintf_r+0xe00>
 80035f8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80035fc:	f002 fa94 	bl	8005b28 <__retarget_lock_release_recursive>
 8003600:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003604:	e628      	b.n	8003258 <_vfprintf_r+0xb10>
 8003606:	aa2a      	add	r2, sp, #168	; 0xa8
 8003608:	9907      	ldr	r1, [sp, #28]
 800360a:	9803      	ldr	r0, [sp, #12]
 800360c:	f003 fbca 	bl	8006da4 <__sprint_r>
 8003610:	2800      	cmp	r0, #0
 8003612:	f47f ae11 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003616:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800361a:	ae2d      	add	r6, sp, #180	; 0xb4
 800361c:	e638      	b.n	8003290 <_vfprintf_r+0xb48>
 800361e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003620:	9907      	ldr	r1, [sp, #28]
 8003622:	9803      	ldr	r0, [sp, #12]
 8003624:	f003 fbbe 	bl	8006da4 <__sprint_r>
 8003628:	2800      	cmp	r0, #0
 800362a:	f47f ae05 	bne.w	8003238 <_vfprintf_r+0xaf0>
 800362e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003632:	ae2d      	add	r6, sp, #180	; 0xb4
 8003634:	930b      	str	r3, [sp, #44]	; 0x2c
 8003636:	e638      	b.n	80032aa <_vfprintf_r+0xb62>
 8003638:	6814      	ldr	r4, [r2, #0]
 800363a:	9308      	str	r3, [sp, #32]
 800363c:	2500      	movs	r5, #0
 800363e:	f7ff bb95 	b.w	8002d6c <_vfprintf_r+0x624>
 8003642:	6814      	ldr	r4, [r2, #0]
 8003644:	9308      	str	r3, [sp, #32]
 8003646:	2500      	movs	r5, #0
 8003648:	f7ff b9ae 	b.w	80029a8 <_vfprintf_r+0x260>
 800364c:	680c      	ldr	r4, [r1, #0]
 800364e:	9208      	str	r2, [sp, #32]
 8003650:	17e5      	asrs	r5, r4, #31
 8003652:	4620      	mov	r0, r4
 8003654:	4629      	mov	r1, r5
 8003656:	f7ff b9d2 	b.w	80029fe <_vfprintf_r+0x2b6>
 800365a:	6814      	ldr	r4, [r2, #0]
 800365c:	9108      	str	r1, [sp, #32]
 800365e:	2201      	movs	r2, #1
 8003660:	2500      	movs	r5, #0
 8003662:	f7ff bb32 	b.w	8002cca <_vfprintf_r+0x582>
 8003666:	2a01      	cmp	r2, #1
 8003668:	f47f ab3c 	bne.w	8002ce4 <_vfprintf_r+0x59c>
 800366c:	e68f      	b.n	800338e <_vfprintf_r+0xc46>
 800366e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003672:	2200      	movs	r2, #0
 8003674:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003678:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800367c:	af56      	add	r7, sp, #344	; 0x158
 800367e:	4692      	mov	sl, r2
 8003680:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003684:	461e      	mov	r6, r3
 8003686:	e00a      	b.n	800369e <_vfprintf_r+0xf56>
 8003688:	2300      	movs	r3, #0
 800368a:	4620      	mov	r0, r4
 800368c:	4629      	mov	r1, r5
 800368e:	220a      	movs	r2, #10
 8003690:	f7fc fdb6 	bl	8000200 <__aeabi_uldivmod>
 8003694:	4604      	mov	r4, r0
 8003696:	460d      	mov	r5, r1
 8003698:	ea54 0305 	orrs.w	r3, r4, r5
 800369c:	d029      	beq.n	80036f2 <_vfprintf_r+0xfaa>
 800369e:	220a      	movs	r2, #10
 80036a0:	2300      	movs	r3, #0
 80036a2:	4620      	mov	r0, r4
 80036a4:	4629      	mov	r1, r5
 80036a6:	f7fc fdab 	bl	8000200 <__aeabi_uldivmod>
 80036aa:	3230      	adds	r2, #48	; 0x30
 80036ac:	f807 2c01 	strb.w	r2, [r7, #-1]
 80036b0:	f10a 0a01 	add.w	sl, sl, #1
 80036b4:	3f01      	subs	r7, #1
 80036b6:	2e00      	cmp	r6, #0
 80036b8:	d0e6      	beq.n	8003688 <_vfprintf_r+0xf40>
 80036ba:	f898 3000 	ldrb.w	r3, [r8]
 80036be:	459a      	cmp	sl, r3
 80036c0:	d1e2      	bne.n	8003688 <_vfprintf_r+0xf40>
 80036c2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80036c6:	d0df      	beq.n	8003688 <_vfprintf_r+0xf40>
 80036c8:	2d00      	cmp	r5, #0
 80036ca:	bf08      	it	eq
 80036cc:	2c0a      	cmpeq	r4, #10
 80036ce:	d3db      	bcc.n	8003688 <_vfprintf_r+0xf40>
 80036d0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80036d2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80036d4:	1aff      	subs	r7, r7, r3
 80036d6:	461a      	mov	r2, r3
 80036d8:	4638      	mov	r0, r7
 80036da:	f003 faf5 	bl	8006cc8 <strncpy>
 80036de:	f898 3001 	ldrb.w	r3, [r8, #1]
 80036e2:	2b00      	cmp	r3, #0
 80036e4:	f000 8496 	beq.w	8004014 <_vfprintf_r+0x18cc>
 80036e8:	f108 0801 	add.w	r8, r8, #1
 80036ec:	f04f 0a00 	mov.w	sl, #0
 80036f0:	e7ca      	b.n	8003688 <_vfprintf_r+0xf40>
 80036f2:	9b04      	ldr	r3, [sp, #16]
 80036f4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80036f8:	1bdb      	subs	r3, r3, r7
 80036fa:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80036fe:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003700:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003704:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003708:	9309      	str	r3, [sp, #36]	; 0x24
 800370a:	f7ff b99e 	b.w	8002a4a <_vfprintf_r+0x302>
 800370e:	46c1      	mov	r9, r8
 8003710:	e594      	b.n	800323c <_vfprintf_r+0xaf4>
 8003712:	4621      	mov	r1, r4
 8003714:	461c      	mov	r4, r3
 8003716:	460b      	mov	r3, r1
 8003718:	3201      	adds	r2, #1
 800371a:	442c      	add	r4, r5
 800371c:	2a07      	cmp	r2, #7
 800371e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003722:	e9cb 3500 	strd	r3, r5, [fp]
 8003726:	f77f aa5e 	ble.w	8002be6 <_vfprintf_r+0x49e>
 800372a:	e5ee      	b.n	800330a <_vfprintf_r+0xbc2>
 800372c:	f018 0f10 	tst.w	r8, #16
 8003730:	f040 80f8 	bne.w	8003924 <_vfprintf_r+0x11dc>
 8003734:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003738:	f000 8351 	beq.w	8003dde <_vfprintf_r+0x1696>
 800373c:	9a05      	ldr	r2, [sp, #20]
 800373e:	801a      	strh	r2, [r3, #0]
 8003740:	4657      	mov	r7, sl
 8003742:	f7ff baa7 	b.w	8002c94 <_vfprintf_r+0x54c>
 8003746:	aa2a      	add	r2, sp, #168	; 0xa8
 8003748:	9907      	ldr	r1, [sp, #28]
 800374a:	9803      	ldr	r0, [sp, #12]
 800374c:	f003 fb2a 	bl	8006da4 <__sprint_r>
 8003750:	2800      	cmp	r0, #0
 8003752:	f47f ad71 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003756:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003758:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800375c:	f7ff b9f5 	b.w	8002b4a <_vfprintf_r+0x402>
 8003760:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003764:	4602      	mov	r2, r0
 8003766:	460b      	mov	r3, r1
 8003768:	f7fd fc80 	bl	800106c <__aeabi_dcmpun>
 800376c:	2800      	cmp	r0, #0
 800376e:	f040 8491 	bne.w	8004094 <_vfprintf_r+0x194c>
 8003772:	2e61      	cmp	r6, #97	; 0x61
 8003774:	f000 8111 	beq.w	800399a <_vfprintf_r+0x1252>
 8003778:	2e41      	cmp	r6, #65	; 0x41
 800377a:	f000 8377 	beq.w	8003e6c <_vfprintf_r+0x1724>
 800377e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003782:	f026 0220 	bic.w	r2, r6, #32
 8003786:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800378a:	930e      	str	r3, [sp, #56]	; 0x38
 800378c:	9204      	str	r2, [sp, #16]
 800378e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003790:	f000 842d 	beq.w	8003fee <_vfprintf_r+0x18a6>
 8003794:	2a47      	cmp	r2, #71	; 0x47
 8003796:	f000 8424 	beq.w	8003fe2 <_vfprintf_r+0x189a>
 800379a:	2b00      	cmp	r3, #0
 800379c:	f2c0 82f9 	blt.w	8003d92 <_vfprintf_r+0x164a>
 80037a0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80037a4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80037a8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80037ac:	2e66      	cmp	r6, #102	; 0x66
 80037ae:	f000 83eb 	beq.w	8003f88 <_vfprintf_r+0x1840>
 80037b2:	2e46      	cmp	r6, #70	; 0x46
 80037b4:	f000 847e 	beq.w	80040b4 <_vfprintf_r+0x196c>
 80037b8:	9b04      	ldr	r3, [sp, #16]
 80037ba:	9803      	ldr	r0, [sp, #12]
 80037bc:	2b45      	cmp	r3, #69	; 0x45
 80037be:	bf0c      	ite	eq
 80037c0:	f109 0501 	addeq.w	r5, r9, #1
 80037c4:	464d      	movne	r5, r9
 80037c6:	aa28      	add	r2, sp, #160	; 0xa0
 80037c8:	ab25      	add	r3, sp, #148	; 0x94
 80037ca:	e9cd 3200 	strd	r3, r2, [sp]
 80037ce:	2102      	movs	r1, #2
 80037d0:	ab24      	add	r3, sp, #144	; 0x90
 80037d2:	462a      	mov	r2, r5
 80037d4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80037d8:	f000 fe3e 	bl	8004458 <_dtoa_r>
 80037dc:	2e67      	cmp	r6, #103	; 0x67
 80037de:	4607      	mov	r7, r0
 80037e0:	f040 849c 	bne.w	800411c <_vfprintf_r+0x19d4>
 80037e4:	f018 0f01 	tst.w	r8, #1
 80037e8:	f040 83f9 	bne.w	8003fde <_vfprintf_r+0x1896>
 80037ec:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80037ee:	4640      	mov	r0, r8
 80037f0:	1bdb      	subs	r3, r3, r7
 80037f2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80037f6:	9310      	str	r3, [sp, #64]	; 0x40
 80037f8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037fa:	9311      	str	r3, [sp, #68]	; 0x44
 80037fc:	9b04      	ldr	r3, [sp, #16]
 80037fe:	2b47      	cmp	r3, #71	; 0x47
 8003800:	f000 81e7 	beq.w	8003bd2 <_vfprintf_r+0x148a>
 8003804:	9b04      	ldr	r3, [sp, #16]
 8003806:	2b46      	cmp	r3, #70	; 0x46
 8003808:	f000 8300 	beq.w	8003e0c <_vfprintf_r+0x16c4>
 800380c:	9904      	ldr	r1, [sp, #16]
 800380e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003810:	b2f2      	uxtb	r2, r6
 8003812:	2941      	cmp	r1, #65	; 0x41
 8003814:	bf08      	it	eq
 8003816:	320f      	addeq	r2, #15
 8003818:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800381c:	bf06      	itte	eq
 800381e:	b2d2      	uxtbeq	r2, r2
 8003820:	2101      	moveq	r1, #1
 8003822:	2100      	movne	r1, #0
 8003824:	2b00      	cmp	r3, #0
 8003826:	9324      	str	r3, [sp, #144]	; 0x90
 8003828:	bfb8      	it	lt
 800382a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800382c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003830:	bfba      	itte	lt
 8003832:	f1c3 0301 	rsblt	r3, r3, #1
 8003836:	222d      	movlt	r2, #45	; 0x2d
 8003838:	222b      	movge	r2, #43	; 0x2b
 800383a:	2b09      	cmp	r3, #9
 800383c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003840:	f300 83f9 	bgt.w	8004036 <_vfprintf_r+0x18ee>
 8003844:	2900      	cmp	r1, #0
 8003846:	f040 8487 	bne.w	8004158 <_vfprintf_r+0x1a10>
 800384a:	2230      	movs	r2, #48	; 0x30
 800384c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003850:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003854:	3330      	adds	r3, #48	; 0x30
 8003856:	7013      	strb	r3, [r2, #0]
 8003858:	1c53      	adds	r3, r2, #1
 800385a:	aa26      	add	r2, sp, #152	; 0x98
 800385c:	1a9b      	subs	r3, r3, r2
 800385e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003860:	9319      	str	r3, [sp, #100]	; 0x64
 8003862:	2a01      	cmp	r2, #1
 8003864:	4413      	add	r3, r2
 8003866:	9309      	str	r3, [sp, #36]	; 0x24
 8003868:	f340 8442 	ble.w	80040f0 <_vfprintf_r+0x19a8>
 800386c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800386e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003870:	4413      	add	r3, r2
 8003872:	9309      	str	r3, [sp, #36]	; 0x24
 8003874:	2300      	movs	r3, #0
 8003876:	930f      	str	r3, [sp, #60]	; 0x3c
 8003878:	9314      	str	r3, [sp, #80]	; 0x50
 800387a:	9311      	str	r3, [sp, #68]	; 0x44
 800387c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800387e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003882:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003886:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800388a:	9304      	str	r3, [sp, #16]
 800388c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800388e:	2b00      	cmp	r3, #0
 8003890:	f040 8275 	bne.w	8003d7e <_vfprintf_r+0x1636>
 8003894:	4699      	mov	r9, r3
 8003896:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800389a:	f7ff b8e2 	b.w	8002a62 <_vfprintf_r+0x31a>
 800389e:	bf00      	nop
 80038a0:	08007494 	.word	0x08007494
 80038a4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038a6:	49bd      	ldr	r1, [pc, #756]	; (8003b9c <_vfprintf_r+0x1454>)
 80038a8:	f8cb 1000 	str.w	r1, [fp]
 80038ac:	3201      	adds	r2, #1
 80038ae:	3401      	adds	r4, #1
 80038b0:	2101      	movs	r1, #1
 80038b2:	2a07      	cmp	r2, #7
 80038b4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038b8:	f8cb 1004 	str.w	r1, [fp, #4]
 80038bc:	dc60      	bgt.n	8003980 <_vfprintf_r+0x1238>
 80038be:	f10b 0b08 	add.w	fp, fp, #8
 80038c2:	b92b      	cbnz	r3, 80038d0 <_vfprintf_r+0x1188>
 80038c4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80038c6:	b91a      	cbnz	r2, 80038d0 <_vfprintf_r+0x1188>
 80038c8:	f018 0f01 	tst.w	r8, #1
 80038cc:	f43f a98d 	beq.w	8002bea <_vfprintf_r+0x4a2>
 80038d0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038d2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80038d4:	f8cb 1000 	str.w	r1, [fp]
 80038d8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80038da:	f8cb 1004 	str.w	r1, [fp, #4]
 80038de:	3201      	adds	r2, #1
 80038e0:	440c      	add	r4, r1
 80038e2:	2a07      	cmp	r2, #7
 80038e4:	942c      	str	r4, [sp, #176]	; 0xb0
 80038e6:	922b      	str	r2, [sp, #172]	; 0xac
 80038e8:	f300 8282 	bgt.w	8003df0 <_vfprintf_r+0x16a8>
 80038ec:	f10b 0b08 	add.w	fp, fp, #8
 80038f0:	2b00      	cmp	r3, #0
 80038f2:	f2c0 82e7 	blt.w	8003ec4 <_vfprintf_r+0x177c>
 80038f6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038f8:	3201      	adds	r2, #1
 80038fa:	441c      	add	r4, r3
 80038fc:	2a07      	cmp	r2, #7
 80038fe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003902:	e9cb 7300 	strd	r7, r3, [fp]
 8003906:	f77f a96e 	ble.w	8002be6 <_vfprintf_r+0x49e>
 800390a:	e4fe      	b.n	800330a <_vfprintf_r+0xbc2>
 800390c:	aa2a      	add	r2, sp, #168	; 0xa8
 800390e:	9907      	ldr	r1, [sp, #28]
 8003910:	9803      	ldr	r0, [sp, #12]
 8003912:	f003 fa47 	bl	8006da4 <__sprint_r>
 8003916:	2800      	cmp	r0, #0
 8003918:	f47f ac8e 	bne.w	8003238 <_vfprintf_r+0xaf0>
 800391c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003920:	f7ff bbf0 	b.w	8003104 <_vfprintf_r+0x9bc>
 8003924:	9a05      	ldr	r2, [sp, #20]
 8003926:	601a      	str	r2, [r3, #0]
 8003928:	4657      	mov	r7, sl
 800392a:	f7ff b9b3 	b.w	8002c94 <_vfprintf_r+0x54c>
 800392e:	8814      	ldrh	r4, [r2, #0]
 8003930:	9108      	str	r1, [sp, #32]
 8003932:	2500      	movs	r5, #0
 8003934:	2201      	movs	r2, #1
 8003936:	f7ff b9c8 	b.w	8002cca <_vfprintf_r+0x582>
 800393a:	8814      	ldrh	r4, [r2, #0]
 800393c:	9308      	str	r3, [sp, #32]
 800393e:	2500      	movs	r5, #0
 8003940:	f7ff ba14 	b.w	8002d6c <_vfprintf_r+0x624>
 8003944:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003948:	9208      	str	r2, [sp, #32]
 800394a:	17e5      	asrs	r5, r4, #31
 800394c:	4620      	mov	r0, r4
 800394e:	4629      	mov	r1, r5
 8003950:	f7ff b855 	b.w	80029fe <_vfprintf_r+0x2b6>
 8003954:	8814      	ldrh	r4, [r2, #0]
 8003956:	9308      	str	r3, [sp, #32]
 8003958:	2500      	movs	r5, #0
 800395a:	f7ff b825 	b.w	80029a8 <_vfprintf_r+0x260>
 800395e:	222d      	movs	r2, #45	; 0x2d
 8003960:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003964:	f7ff baa2 	b.w	8002eac <_vfprintf_r+0x764>
 8003968:	aa2a      	add	r2, sp, #168	; 0xa8
 800396a:	9907      	ldr	r1, [sp, #28]
 800396c:	9803      	ldr	r0, [sp, #12]
 800396e:	f003 fa19 	bl	8006da4 <__sprint_r>
 8003972:	2800      	cmp	r0, #0
 8003974:	f47f ac60 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003978:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800397a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800397e:	e534      	b.n	80033ea <_vfprintf_r+0xca2>
 8003980:	aa2a      	add	r2, sp, #168	; 0xa8
 8003982:	9907      	ldr	r1, [sp, #28]
 8003984:	9803      	ldr	r0, [sp, #12]
 8003986:	f003 fa0d 	bl	8006da4 <__sprint_r>
 800398a:	2800      	cmp	r0, #0
 800398c:	f47f ac54 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003990:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003992:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003994:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003998:	e793      	b.n	80038c2 <_vfprintf_r+0x117a>
 800399a:	2330      	movs	r3, #48	; 0x30
 800399c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80039a0:	2378      	movs	r3, #120	; 0x78
 80039a2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80039a6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80039aa:	f048 0402 	orr.w	r4, r8, #2
 80039ae:	f300 82b0 	bgt.w	8003f12 <_vfprintf_r+0x17ca>
 80039b2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80039b6:	930e      	str	r3, [sp, #56]	; 0x38
 80039b8:	f026 0320 	bic.w	r3, r6, #32
 80039bc:	9304      	str	r3, [sp, #16]
 80039be:	2200      	movs	r2, #0
 80039c0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80039c2:	920a      	str	r2, [sp, #40]	; 0x28
 80039c4:	46a0      	mov	r8, r4
 80039c6:	af3d      	add	r7, sp, #244	; 0xf4
 80039c8:	2b00      	cmp	r3, #0
 80039ca:	f2c0 81e3 	blt.w	8003d94 <_vfprintf_r+0x164c>
 80039ce:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80039d2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80039d6:	2300      	movs	r3, #0
 80039d8:	930b      	str	r3, [sp, #44]	; 0x2c
 80039da:	2e61      	cmp	r6, #97	; 0x61
 80039dc:	f000 8255 	beq.w	8003e8a <_vfprintf_r+0x1742>
 80039e0:	2e41      	cmp	r6, #65	; 0x41
 80039e2:	f47f aee3 	bne.w	80037ac <_vfprintf_r+0x1064>
 80039e6:	a824      	add	r0, sp, #144	; 0x90
 80039e8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80039ec:	f003 f8e2 	bl	8006bb4 <frexp>
 80039f0:	2200      	movs	r2, #0
 80039f2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80039f6:	ec51 0b10 	vmov	r0, r1, d0
 80039fa:	f7fd f89d 	bl	8000b38 <__aeabi_dmul>
 80039fe:	2200      	movs	r2, #0
 8003a00:	2300      	movs	r3, #0
 8003a02:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a06:	f7fd faff 	bl	8001008 <__aeabi_dcmpeq>
 8003a0a:	2800      	cmp	r0, #0
 8003a0c:	f040 8305 	bne.w	800401a <_vfprintf_r+0x18d2>
 8003a10:	4b63      	ldr	r3, [pc, #396]	; (8003ba0 <_vfprintf_r+0x1458>)
 8003a12:	9309      	str	r3, [sp, #36]	; 0x24
 8003a14:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003a18:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003a1c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003a20:	9721      	str	r7, [sp, #132]	; 0x84
 8003a22:	46b9      	mov	r9, r7
 8003a24:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003a28:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003a2c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003a30:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003a34:	e003      	b.n	8003a3e <_vfprintf_r+0x12f6>
 8003a36:	f7fd fae7 	bl	8001008 <__aeabi_dcmpeq>
 8003a3a:	bb20      	cbnz	r0, 8003a86 <_vfprintf_r+0x133e>
 8003a3c:	46a9      	mov	r9, r5
 8003a3e:	2200      	movs	r2, #0
 8003a40:	4b58      	ldr	r3, [pc, #352]	; (8003ba4 <_vfprintf_r+0x145c>)
 8003a42:	4630      	mov	r0, r6
 8003a44:	4639      	mov	r1, r7
 8003a46:	f7fd f877 	bl	8000b38 <__aeabi_dmul>
 8003a4a:	460f      	mov	r7, r1
 8003a4c:	4606      	mov	r6, r0
 8003a4e:	f7fd fb23 	bl	8001098 <__aeabi_d2iz>
 8003a52:	4680      	mov	r8, r0
 8003a54:	f7fd f806 	bl	8000a64 <__aeabi_i2d>
 8003a58:	4602      	mov	r2, r0
 8003a5a:	460b      	mov	r3, r1
 8003a5c:	4630      	mov	r0, r6
 8003a5e:	4639      	mov	r1, r7
 8003a60:	f7fc feb2 	bl	80007c8 <__aeabi_dsub>
 8003a64:	464d      	mov	r5, r9
 8003a66:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003a6a:	f805 cb01 	strb.w	ip, [r5], #1
 8003a6e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003a72:	46a3      	mov	fp, r4
 8003a74:	4606      	mov	r6, r0
 8003a76:	460f      	mov	r7, r1
 8003a78:	f04f 0200 	mov.w	r2, #0
 8003a7c:	f04f 0300 	mov.w	r3, #0
 8003a80:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003a84:	d1d7      	bne.n	8003a36 <_vfprintf_r+0x12ee>
 8003a86:	4630      	mov	r0, r6
 8003a88:	4639      	mov	r1, r7
 8003a8a:	2200      	movs	r2, #0
 8003a8c:	4b46      	ldr	r3, [pc, #280]	; (8003ba8 <_vfprintf_r+0x1460>)
 8003a8e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003a92:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003a94:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003a98:	4644      	mov	r4, r8
 8003a9a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003a9e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003aa2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003aa6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003aaa:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003aac:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003ab0:	f7fd fad2 	bl	8001058 <__aeabi_dcmpgt>
 8003ab4:	2800      	cmp	r0, #0
 8003ab6:	f040 8176 	bne.w	8003da6 <_vfprintf_r+0x165e>
 8003aba:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003abe:	2200      	movs	r2, #0
 8003ac0:	4b39      	ldr	r3, [pc, #228]	; (8003ba8 <_vfprintf_r+0x1460>)
 8003ac2:	f7fd faa1 	bl	8001008 <__aeabi_dcmpeq>
 8003ac6:	b110      	cbz	r0, 8003ace <_vfprintf_r+0x1386>
 8003ac8:	07e2      	lsls	r2, r4, #31
 8003aca:	f100 816c 	bmi.w	8003da6 <_vfprintf_r+0x165e>
 8003ace:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ad0:	2b00      	cmp	r3, #0
 8003ad2:	db07      	blt.n	8003ae4 <_vfprintf_r+0x139c>
 8003ad4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ad6:	3301      	adds	r3, #1
 8003ad8:	442b      	add	r3, r5
 8003ada:	2230      	movs	r2, #48	; 0x30
 8003adc:	f805 2b01 	strb.w	r2, [r5], #1
 8003ae0:	42ab      	cmp	r3, r5
 8003ae2:	d1fb      	bne.n	8003adc <_vfprintf_r+0x1394>
 8003ae4:	1beb      	subs	r3, r5, r7
 8003ae6:	4640      	mov	r0, r8
 8003ae8:	9310      	str	r3, [sp, #64]	; 0x40
 8003aea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003aee:	e683      	b.n	80037f8 <_vfprintf_r+0x10b0>
 8003af0:	f8cd 9010 	str.w	r9, [sp, #16]
 8003af4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003af8:	9408      	str	r4, [sp, #32]
 8003afa:	4681      	mov	r9, r0
 8003afc:	900f      	str	r0, [sp, #60]	; 0x3c
 8003afe:	9014      	str	r0, [sp, #80]	; 0x50
 8003b00:	9011      	str	r0, [sp, #68]	; 0x44
 8003b02:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003b06:	f7fe bfac 	b.w	8002a62 <_vfprintf_r+0x31a>
 8003b0a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b0c:	9907      	ldr	r1, [sp, #28]
 8003b0e:	9803      	ldr	r0, [sp, #12]
 8003b10:	f003 f948 	bl	8006da4 <__sprint_r>
 8003b14:	2800      	cmp	r0, #0
 8003b16:	f47f ab8f 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003b1a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b1c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b1e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b22:	e511      	b.n	8003548 <_vfprintf_r+0xe00>
 8003b24:	4252      	negs	r2, r2
 8003b26:	9206      	str	r2, [sp, #24]
 8003b28:	9308      	str	r3, [sp, #32]
 8003b2a:	f7ff b96d 	b.w	8002e08 <_vfprintf_r+0x6c0>
 8003b2e:	4614      	mov	r4, r2
 8003b30:	4632      	mov	r2, r6
 8003b32:	461e      	mov	r6, r3
 8003b34:	4613      	mov	r3, r2
 8003b36:	462a      	mov	r2, r5
 8003b38:	3201      	adds	r2, #1
 8003b3a:	9209      	str	r2, [sp, #36]	; 0x24
 8003b3c:	f106 0208 	add.w	r2, r6, #8
 8003b40:	e9c6 3900 	strd	r3, r9, [r6]
 8003b44:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b46:	932b      	str	r3, [sp, #172]	; 0xac
 8003b48:	444c      	add	r4, r9
 8003b4a:	2b07      	cmp	r3, #7
 8003b4c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003b4e:	f73f acc3 	bgt.w	80034d8 <_vfprintf_r+0xd90>
 8003b52:	3301      	adds	r3, #1
 8003b54:	9309      	str	r3, [sp, #36]	; 0x24
 8003b56:	f102 0b08 	add.w	fp, r2, #8
 8003b5a:	4616      	mov	r6, r2
 8003b5c:	f7ff bbca 	b.w	80032f4 <_vfprintf_r+0xbac>
 8003b60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b62:	9907      	ldr	r1, [sp, #28]
 8003b64:	9803      	ldr	r0, [sp, #12]
 8003b66:	f003 f91d 	bl	8006da4 <__sprint_r>
 8003b6a:	2800      	cmp	r0, #0
 8003b6c:	f47f ab64 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003b70:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b72:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b76:	f7ff bade 	b.w	8003136 <_vfprintf_r+0x9ee>
 8003b7a:	464b      	mov	r3, r9
 8003b7c:	2b06      	cmp	r3, #6
 8003b7e:	bf28      	it	cs
 8003b80:	2306      	movcs	r3, #6
 8003b82:	46b9      	mov	r9, r7
 8003b84:	970f      	str	r7, [sp, #60]	; 0x3c
 8003b86:	9714      	str	r7, [sp, #80]	; 0x50
 8003b88:	9711      	str	r7, [sp, #68]	; 0x44
 8003b8a:	970a      	str	r7, [sp, #40]	; 0x28
 8003b8c:	463a      	mov	r2, r7
 8003b8e:	9304      	str	r3, [sp, #16]
 8003b90:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003b94:	4f05      	ldr	r7, [pc, #20]	; (8003bac <_vfprintf_r+0x1464>)
 8003b96:	f7fe bf64 	b.w	8002a62 <_vfprintf_r+0x31a>
 8003b9a:	bf00      	nop
 8003b9c:	08007480 	.word	0x08007480
 8003ba0:	08007464 	.word	0x08007464
 8003ba4:	40300000 	.word	0x40300000
 8003ba8:	3fe00000 	.word	0x3fe00000
 8003bac:	08007478 	.word	0x08007478
 8003bb0:	460c      	mov	r4, r1
 8003bb2:	4639      	mov	r1, r7
 8003bb4:	465f      	mov	r7, fp
 8003bb6:	469b      	mov	fp, r3
 8003bb8:	460b      	mov	r3, r1
 8003bba:	3201      	adds	r2, #1
 8003bbc:	442c      	add	r4, r5
 8003bbe:	2a07      	cmp	r2, #7
 8003bc0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003bc4:	e9cb 3500 	strd	r3, r5, [fp]
 8003bc8:	f73f aca5 	bgt.w	8003516 <_vfprintf_r+0xdce>
 8003bcc:	f10b 0b08 	add.w	fp, fp, #8
 8003bd0:	e4ac      	b.n	800352c <_vfprintf_r+0xde4>
 8003bd2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bd4:	1cda      	adds	r2, r3, #3
 8003bd6:	db02      	blt.n	8003bde <_vfprintf_r+0x1496>
 8003bd8:	4599      	cmp	r9, r3
 8003bda:	f280 80b5 	bge.w	8003d48 <_vfprintf_r+0x1600>
 8003bde:	3e02      	subs	r6, #2
 8003be0:	f026 0320 	bic.w	r3, r6, #32
 8003be4:	9304      	str	r3, [sp, #16]
 8003be6:	e611      	b.n	800380c <_vfprintf_r+0x10c4>
 8003be8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bea:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003bee:	465a      	mov	r2, fp
 8003bf0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003bf4:	18fb      	adds	r3, r7, r3
 8003bf6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003bfa:	970c      	str	r7, [sp, #48]	; 0x30
 8003bfc:	4eaf      	ldr	r6, [pc, #700]	; (8003ebc <_vfprintf_r+0x1774>)
 8003bfe:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003c02:	9309      	str	r3, [sp, #36]	; 0x24
 8003c04:	464f      	mov	r7, r9
 8003c06:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c0a:	4621      	mov	r1, r4
 8003c0c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c0e:	2b00      	cmp	r3, #0
 8003c10:	d05b      	beq.n	8003cca <_vfprintf_r+0x1582>
 8003c12:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c14:	2b00      	cmp	r3, #0
 8003c16:	d154      	bne.n	8003cc2 <_vfprintf_r+0x157a>
 8003c18:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c1a:	3b01      	subs	r3, #1
 8003c1c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003c20:	9314      	str	r3, [sp, #80]	; 0x50
 8003c22:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c24:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003c26:	6010      	str	r0, [r2, #0]
 8003c28:	3301      	adds	r3, #1
 8003c2a:	4459      	add	r1, fp
 8003c2c:	2b07      	cmp	r3, #7
 8003c2e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c30:	f8c2 b004 	str.w	fp, [r2, #4]
 8003c34:	932b      	str	r3, [sp, #172]	; 0xac
 8003c36:	dc68      	bgt.n	8003d0a <_vfprintf_r+0x15c2>
 8003c38:	3208      	adds	r2, #8
 8003c3a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003c3c:	f898 3000 	ldrb.w	r3, [r8]
 8003c40:	1bc5      	subs	r5, r0, r7
 8003c42:	429d      	cmp	r5, r3
 8003c44:	bfa8      	it	ge
 8003c46:	461d      	movge	r5, r3
 8003c48:	2d00      	cmp	r5, #0
 8003c4a:	dd0b      	ble.n	8003c64 <_vfprintf_r+0x151c>
 8003c4c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c4e:	6017      	str	r7, [r2, #0]
 8003c50:	3301      	adds	r3, #1
 8003c52:	4429      	add	r1, r5
 8003c54:	2b07      	cmp	r3, #7
 8003c56:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c58:	6055      	str	r5, [r2, #4]
 8003c5a:	932b      	str	r3, [sp, #172]	; 0xac
 8003c5c:	dc5e      	bgt.n	8003d1c <_vfprintf_r+0x15d4>
 8003c5e:	f898 3000 	ldrb.w	r3, [r8]
 8003c62:	3208      	adds	r2, #8
 8003c64:	2d00      	cmp	r5, #0
 8003c66:	bfac      	ite	ge
 8003c68:	1b5d      	subge	r5, r3, r5
 8003c6a:	461d      	movlt	r5, r3
 8003c6c:	2d00      	cmp	r5, #0
 8003c6e:	dd26      	ble.n	8003cbe <_vfprintf_r+0x1576>
 8003c70:	2d10      	cmp	r5, #16
 8003c72:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003c74:	dd3c      	ble.n	8003cf0 <_vfprintf_r+0x15a8>
 8003c76:	2410      	movs	r4, #16
 8003c78:	e003      	b.n	8003c82 <_vfprintf_r+0x153a>
 8003c7a:	3208      	adds	r2, #8
 8003c7c:	3d10      	subs	r5, #16
 8003c7e:	2d10      	cmp	r5, #16
 8003c80:	dd36      	ble.n	8003cf0 <_vfprintf_r+0x15a8>
 8003c82:	3001      	adds	r0, #1
 8003c84:	3110      	adds	r1, #16
 8003c86:	2807      	cmp	r0, #7
 8003c88:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003c8c:	e9c2 6400 	strd	r6, r4, [r2]
 8003c90:	ddf3      	ble.n	8003c7a <_vfprintf_r+0x1532>
 8003c92:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c94:	4651      	mov	r1, sl
 8003c96:	4648      	mov	r0, r9
 8003c98:	f003 f884 	bl	8006da4 <__sprint_r>
 8003c9c:	2800      	cmp	r0, #0
 8003c9e:	d150      	bne.n	8003d42 <_vfprintf_r+0x15fa>
 8003ca0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003ca4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ca6:	e7e9      	b.n	8003c7c <_vfprintf_r+0x1534>
 8003ca8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003caa:	4651      	mov	r1, sl
 8003cac:	4648      	mov	r0, r9
 8003cae:	f003 f879 	bl	8006da4 <__sprint_r>
 8003cb2:	2800      	cmp	r0, #0
 8003cb4:	d145      	bne.n	8003d42 <_vfprintf_r+0x15fa>
 8003cb6:	f898 3000 	ldrb.w	r3, [r8]
 8003cba:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003cbc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003cbe:	441f      	add	r7, r3
 8003cc0:	e7a4      	b.n	8003c0c <_vfprintf_r+0x14c4>
 8003cc2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003cc4:	3b01      	subs	r3, #1
 8003cc6:	930f      	str	r3, [sp, #60]	; 0x3c
 8003cc8:	e7ab      	b.n	8003c22 <_vfprintf_r+0x14da>
 8003cca:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ccc:	2b00      	cmp	r3, #0
 8003cce:	d1f8      	bne.n	8003cc2 <_vfprintf_r+0x157a>
 8003cd0:	46b9      	mov	r9, r7
 8003cd2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cd4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003cd6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003cda:	18fb      	adds	r3, r7, r3
 8003cdc:	4599      	cmp	r9, r3
 8003cde:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003ce2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ce6:	4693      	mov	fp, r2
 8003ce8:	460c      	mov	r4, r1
 8003cea:	bf28      	it	cs
 8003cec:	4699      	movcs	r9, r3
 8003cee:	e424      	b.n	800353a <_vfprintf_r+0xdf2>
 8003cf0:	3001      	adds	r0, #1
 8003cf2:	4429      	add	r1, r5
 8003cf4:	2807      	cmp	r0, #7
 8003cf6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003cfa:	e9c2 6500 	strd	r6, r5, [r2]
 8003cfe:	dcd3      	bgt.n	8003ca8 <_vfprintf_r+0x1560>
 8003d00:	f898 3000 	ldrb.w	r3, [r8]
 8003d04:	3208      	adds	r2, #8
 8003d06:	441f      	add	r7, r3
 8003d08:	e780      	b.n	8003c0c <_vfprintf_r+0x14c4>
 8003d0a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d0c:	4651      	mov	r1, sl
 8003d0e:	4648      	mov	r0, r9
 8003d10:	f003 f848 	bl	8006da4 <__sprint_r>
 8003d14:	b9a8      	cbnz	r0, 8003d42 <_vfprintf_r+0x15fa>
 8003d16:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d18:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d1a:	e78e      	b.n	8003c3a <_vfprintf_r+0x14f2>
 8003d1c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d1e:	4651      	mov	r1, sl
 8003d20:	4648      	mov	r0, r9
 8003d22:	f003 f83f 	bl	8006da4 <__sprint_r>
 8003d26:	b960      	cbnz	r0, 8003d42 <_vfprintf_r+0x15fa>
 8003d28:	f898 3000 	ldrb.w	r3, [r8]
 8003d2c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d2e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d30:	e798      	b.n	8003c64 <_vfprintf_r+0x151c>
 8003d32:	4638      	mov	r0, r7
 8003d34:	f7fc fc84 	bl	8000640 <strlen>
 8003d38:	46a9      	mov	r9, r5
 8003d3a:	4603      	mov	r3, r0
 8003d3c:	9009      	str	r0, [sp, #36]	; 0x24
 8003d3e:	f7ff b8f4 	b.w	8002f2a <_vfprintf_r+0x7e2>
 8003d42:	46d1      	mov	r9, sl
 8003d44:	f7ff ba7a 	b.w	800323c <_vfprintf_r+0xaf4>
 8003d48:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d4a:	4619      	mov	r1, r3
 8003d4c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d4e:	4299      	cmp	r1, r3
 8003d50:	f300 8082 	bgt.w	8003e58 <_vfprintf_r+0x1710>
 8003d54:	07c4      	lsls	r4, r0, #31
 8003d56:	f140 816b 	bpl.w	8004030 <_vfprintf_r+0x18e8>
 8003d5a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d5c:	4413      	add	r3, r2
 8003d5e:	9309      	str	r3, [sp, #36]	; 0x24
 8003d60:	0541      	lsls	r1, r0, #21
 8003d62:	d503      	bpl.n	8003d6c <_vfprintf_r+0x1624>
 8003d64:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d66:	2b00      	cmp	r3, #0
 8003d68:	f300 80e6 	bgt.w	8003f38 <_vfprintf_r+0x17f0>
 8003d6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d6e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d72:	9304      	str	r3, [sp, #16]
 8003d74:	2667      	movs	r6, #103	; 0x67
 8003d76:	2300      	movs	r3, #0
 8003d78:	930f      	str	r3, [sp, #60]	; 0x3c
 8003d7a:	9314      	str	r3, [sp, #80]	; 0x50
 8003d7c:	e586      	b.n	800388c <_vfprintf_r+0x1144>
 8003d7e:	222d      	movs	r2, #45	; 0x2d
 8003d80:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003d84:	f04f 0900 	mov.w	r9, #0
 8003d88:	f7fe be6c 	b.w	8002a64 <_vfprintf_r+0x31c>
 8003d8c:	46a1      	mov	r9, r4
 8003d8e:	f7ff ba55 	b.w	800323c <_vfprintf_r+0xaf4>
 8003d92:	900a      	str	r0, [sp, #40]	; 0x28
 8003d94:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003d98:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003d9c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003d9e:	232d      	movs	r3, #45	; 0x2d
 8003da0:	911e      	str	r1, [sp, #120]	; 0x78
 8003da2:	930b      	str	r3, [sp, #44]	; 0x2c
 8003da4:	e619      	b.n	80039da <_vfprintf_r+0x1292>
 8003da6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003da8:	9328      	str	r3, [sp, #160]	; 0xa0
 8003daa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003dac:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003db0:	7bd9      	ldrb	r1, [r3, #15]
 8003db2:	4291      	cmp	r1, r2
 8003db4:	462b      	mov	r3, r5
 8003db6:	d109      	bne.n	8003dcc <_vfprintf_r+0x1684>
 8003db8:	2030      	movs	r0, #48	; 0x30
 8003dba:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003dbe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003dc0:	1e5a      	subs	r2, r3, #1
 8003dc2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003dc4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003dc8:	4291      	cmp	r1, r2
 8003dca:	d0f6      	beq.n	8003dba <_vfprintf_r+0x1672>
 8003dcc:	2a39      	cmp	r2, #57	; 0x39
 8003dce:	bf0b      	itete	eq
 8003dd0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003dd2:	3201      	addne	r2, #1
 8003dd4:	7a92      	ldrbeq	r2, [r2, #10]
 8003dd6:	b2d2      	uxtbne	r2, r2
 8003dd8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003ddc:	e682      	b.n	8003ae4 <_vfprintf_r+0x139c>
 8003dde:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003de2:	f43f ad9f 	beq.w	8003924 <_vfprintf_r+0x11dc>
 8003de6:	9a05      	ldr	r2, [sp, #20]
 8003de8:	701a      	strb	r2, [r3, #0]
 8003dea:	4657      	mov	r7, sl
 8003dec:	f7fe bf52 	b.w	8002c94 <_vfprintf_r+0x54c>
 8003df0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003df2:	9907      	ldr	r1, [sp, #28]
 8003df4:	9803      	ldr	r0, [sp, #12]
 8003df6:	f002 ffd5 	bl	8006da4 <__sprint_r>
 8003dfa:	2800      	cmp	r0, #0
 8003dfc:	f47f aa1c 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003e00:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e02:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e06:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e0a:	e571      	b.n	80038f0 <_vfprintf_r+0x11a8>
 8003e0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e0e:	2b00      	cmp	r3, #0
 8003e10:	f340 8164 	ble.w	80040dc <_vfprintf_r+0x1994>
 8003e14:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e16:	f1b9 0f00 	cmp.w	r9, #0
 8003e1a:	f040 8103 	bne.w	8004024 <_vfprintf_r+0x18dc>
 8003e1e:	07c6      	lsls	r6, r0, #31
 8003e20:	f100 8100 	bmi.w	8004024 <_vfprintf_r+0x18dc>
 8003e24:	9309      	str	r3, [sp, #36]	; 0x24
 8003e26:	2666      	movs	r6, #102	; 0x66
 8003e28:	0543      	lsls	r3, r0, #21
 8003e2a:	f100 8086 	bmi.w	8003f3a <_vfprintf_r+0x17f2>
 8003e2e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e30:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e34:	9304      	str	r3, [sp, #16]
 8003e36:	e79e      	b.n	8003d76 <_vfprintf_r+0x162e>
 8003e38:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e3a:	9907      	ldr	r1, [sp, #28]
 8003e3c:	9803      	ldr	r0, [sp, #12]
 8003e3e:	f002 ffb1 	bl	8006da4 <__sprint_r>
 8003e42:	2800      	cmp	r0, #0
 8003e44:	f47f a9f8 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003e48:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e4a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003e4c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e4e:	1ad3      	subs	r3, r2, r3
 8003e50:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e54:	f7ff bb90 	b.w	8003578 <_vfprintf_r+0xe30>
 8003e58:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e5a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e5c:	4413      	add	r3, r2
 8003e5e:	9309      	str	r3, [sp, #36]	; 0x24
 8003e60:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e62:	2b00      	cmp	r3, #0
 8003e64:	f340 8149 	ble.w	80040fa <_vfprintf_r+0x19b2>
 8003e68:	2667      	movs	r6, #103	; 0x67
 8003e6a:	e7dd      	b.n	8003e28 <_vfprintf_r+0x16e0>
 8003e6c:	2330      	movs	r3, #48	; 0x30
 8003e6e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003e72:	2358      	movs	r3, #88	; 0x58
 8003e74:	e595      	b.n	80039a2 <_vfprintf_r+0x125a>
 8003e76:	9803      	ldr	r0, [sp, #12]
 8003e78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e7a:	4649      	mov	r1, r9
 8003e7c:	f002 ff92 	bl	8006da4 <__sprint_r>
 8003e80:	2800      	cmp	r0, #0
 8003e82:	f47f a9e0 	bne.w	8003246 <_vfprintf_r+0xafe>
 8003e86:	f7fe bf0f 	b.w	8002ca8 <_vfprintf_r+0x560>
 8003e8a:	a824      	add	r0, sp, #144	; 0x90
 8003e8c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e90:	f002 fe90 	bl	8006bb4 <frexp>
 8003e94:	2200      	movs	r2, #0
 8003e96:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003e9a:	ec51 0b10 	vmov	r0, r1, d0
 8003e9e:	f7fc fe4b 	bl	8000b38 <__aeabi_dmul>
 8003ea2:	2200      	movs	r2, #0
 8003ea4:	2300      	movs	r3, #0
 8003ea6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003eaa:	f7fd f8ad 	bl	8001008 <__aeabi_dcmpeq>
 8003eae:	b108      	cbz	r0, 8003eb4 <_vfprintf_r+0x176c>
 8003eb0:	2301      	movs	r3, #1
 8003eb2:	9324      	str	r3, [sp, #144]	; 0x90
 8003eb4:	4b02      	ldr	r3, [pc, #8]	; (8003ec0 <_vfprintf_r+0x1778>)
 8003eb6:	9309      	str	r3, [sp, #36]	; 0x24
 8003eb8:	e5ac      	b.n	8003a14 <_vfprintf_r+0x12cc>
 8003eba:	bf00      	nop
 8003ebc:	08007494 	.word	0x08007494
 8003ec0:	08007450 	.word	0x08007450
 8003ec4:	425d      	negs	r5, r3
 8003ec6:	3310      	adds	r3, #16
 8003ec8:	4bb9      	ldr	r3, [pc, #740]	; (80041b0 <_vfprintf_r+0x1a68>)
 8003eca:	f280 8097 	bge.w	8003ffc <_vfprintf_r+0x18b4>
 8003ece:	4619      	mov	r1, r3
 8003ed0:	2610      	movs	r6, #16
 8003ed2:	4623      	mov	r3, r4
 8003ed4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003ed8:	460c      	mov	r4, r1
 8003eda:	e005      	b.n	8003ee8 <_vfprintf_r+0x17a0>
 8003edc:	f10b 0b08 	add.w	fp, fp, #8
 8003ee0:	3d10      	subs	r5, #16
 8003ee2:	2d10      	cmp	r5, #16
 8003ee4:	f340 8087 	ble.w	8003ff6 <_vfprintf_r+0x18ae>
 8003ee8:	3201      	adds	r2, #1
 8003eea:	3310      	adds	r3, #16
 8003eec:	2a07      	cmp	r2, #7
 8003eee:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003ef2:	e9cb 4600 	strd	r4, r6, [fp]
 8003ef6:	ddf1      	ble.n	8003edc <_vfprintf_r+0x1794>
 8003ef8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003efa:	9907      	ldr	r1, [sp, #28]
 8003efc:	4648      	mov	r0, r9
 8003efe:	f002 ff51 	bl	8006da4 <__sprint_r>
 8003f02:	2800      	cmp	r0, #0
 8003f04:	f47f a998 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8003f08:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003f0c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f10:	e7e6      	b.n	8003ee0 <_vfprintf_r+0x1798>
 8003f12:	f109 0101 	add.w	r1, r9, #1
 8003f16:	9803      	ldr	r0, [sp, #12]
 8003f18:	f001 fe80 	bl	8005c1c <_malloc_r>
 8003f1c:	4607      	mov	r7, r0
 8003f1e:	2800      	cmp	r0, #0
 8003f20:	f000 813b 	beq.w	800419a <_vfprintf_r+0x1a52>
 8003f24:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003f28:	930e      	str	r3, [sp, #56]	; 0x38
 8003f2a:	f026 0320 	bic.w	r3, r6, #32
 8003f2e:	9304      	str	r3, [sp, #16]
 8003f30:	46a0      	mov	r8, r4
 8003f32:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003f34:	900a      	str	r0, [sp, #40]	; 0x28
 8003f36:	e547      	b.n	80039c8 <_vfprintf_r+0x1280>
 8003f38:	2667      	movs	r6, #103	; 0x67
 8003f3a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003f3c:	2200      	movs	r2, #0
 8003f3e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003f40:	9214      	str	r2, [sp, #80]	; 0x50
 8003f42:	7803      	ldrb	r3, [r0, #0]
 8003f44:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003f46:	2bff      	cmp	r3, #255	; 0xff
 8003f48:	d00c      	beq.n	8003f64 <_vfprintf_r+0x181c>
 8003f4a:	4293      	cmp	r3, r2
 8003f4c:	da0a      	bge.n	8003f64 <_vfprintf_r+0x181c>
 8003f4e:	7841      	ldrb	r1, [r0, #1]
 8003f50:	1ad2      	subs	r2, r2, r3
 8003f52:	b1a9      	cbz	r1, 8003f80 <_vfprintf_r+0x1838>
 8003f54:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f56:	3301      	adds	r3, #1
 8003f58:	9314      	str	r3, [sp, #80]	; 0x50
 8003f5a:	460b      	mov	r3, r1
 8003f5c:	2bff      	cmp	r3, #255	; 0xff
 8003f5e:	f100 0001 	add.w	r0, r0, #1
 8003f62:	d1f2      	bne.n	8003f4a <_vfprintf_r+0x1802>
 8003f64:	9211      	str	r2, [sp, #68]	; 0x44
 8003f66:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f68:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003f6a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003f6c:	901a      	str	r0, [sp, #104]	; 0x68
 8003f6e:	4413      	add	r3, r2
 8003f70:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003f72:	fb02 1303 	mla	r3, r2, r3, r1
 8003f76:	9309      	str	r3, [sp, #36]	; 0x24
 8003f78:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f7c:	9304      	str	r3, [sp, #16]
 8003f7e:	e485      	b.n	800388c <_vfprintf_r+0x1144>
 8003f80:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003f82:	3101      	adds	r1, #1
 8003f84:	910f      	str	r1, [sp, #60]	; 0x3c
 8003f86:	e7de      	b.n	8003f46 <_vfprintf_r+0x17fe>
 8003f88:	aa28      	add	r2, sp, #160	; 0xa0
 8003f8a:	ab25      	add	r3, sp, #148	; 0x94
 8003f8c:	e9cd 3200 	strd	r3, r2, [sp]
 8003f90:	2103      	movs	r1, #3
 8003f92:	ab24      	add	r3, sp, #144	; 0x90
 8003f94:	464a      	mov	r2, r9
 8003f96:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003f9a:	9803      	ldr	r0, [sp, #12]
 8003f9c:	f000 fa5c 	bl	8004458 <_dtoa_r>
 8003fa0:	464d      	mov	r5, r9
 8003fa2:	4607      	mov	r7, r0
 8003fa4:	eb00 0409 	add.w	r4, r0, r9
 8003fa8:	783b      	ldrb	r3, [r7, #0]
 8003faa:	2b30      	cmp	r3, #48	; 0x30
 8003fac:	f000 80be 	beq.w	800412c <_vfprintf_r+0x19e4>
 8003fb0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003fb2:	442c      	add	r4, r5
 8003fb4:	2200      	movs	r2, #0
 8003fb6:	2300      	movs	r3, #0
 8003fb8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003fbc:	f7fd f824 	bl	8001008 <__aeabi_dcmpeq>
 8003fc0:	b108      	cbz	r0, 8003fc6 <_vfprintf_r+0x187e>
 8003fc2:	4623      	mov	r3, r4
 8003fc4:	e413      	b.n	80037ee <_vfprintf_r+0x10a6>
 8003fc6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003fc8:	42a3      	cmp	r3, r4
 8003fca:	f4bf ac10 	bcs.w	80037ee <_vfprintf_r+0x10a6>
 8003fce:	2130      	movs	r1, #48	; 0x30
 8003fd0:	1c5a      	adds	r2, r3, #1
 8003fd2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003fd4:	7019      	strb	r1, [r3, #0]
 8003fd6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003fd8:	429c      	cmp	r4, r3
 8003fda:	d8f9      	bhi.n	8003fd0 <_vfprintf_r+0x1888>
 8003fdc:	e407      	b.n	80037ee <_vfprintf_r+0x10a6>
 8003fde:	197c      	adds	r4, r7, r5
 8003fe0:	e7e8      	b.n	8003fb4 <_vfprintf_r+0x186c>
 8003fe2:	f1b9 0f00 	cmp.w	r9, #0
 8003fe6:	f000 8092 	beq.w	800410e <_vfprintf_r+0x19c6>
 8003fea:	900a      	str	r0, [sp, #40]	; 0x28
 8003fec:	e4ec      	b.n	80039c8 <_vfprintf_r+0x1280>
 8003fee:	900a      	str	r0, [sp, #40]	; 0x28
 8003ff0:	f04f 0906 	mov.w	r9, #6
 8003ff4:	e4e8      	b.n	80039c8 <_vfprintf_r+0x1280>
 8003ff6:	4621      	mov	r1, r4
 8003ff8:	461c      	mov	r4, r3
 8003ffa:	460b      	mov	r3, r1
 8003ffc:	3201      	adds	r2, #1
 8003ffe:	442c      	add	r4, r5
 8004000:	2a07      	cmp	r2, #7
 8004002:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004006:	e9cb 3500 	strd	r3, r5, [fp]
 800400a:	f300 80a9 	bgt.w	8004160 <_vfprintf_r+0x1a18>
 800400e:	f10b 0b08 	add.w	fp, fp, #8
 8004012:	e470      	b.n	80038f6 <_vfprintf_r+0x11ae>
 8004014:	469a      	mov	sl, r3
 8004016:	f7ff bb37 	b.w	8003688 <_vfprintf_r+0xf40>
 800401a:	2301      	movs	r3, #1
 800401c:	9324      	str	r3, [sp, #144]	; 0x90
 800401e:	4b65      	ldr	r3, [pc, #404]	; (80041b4 <_vfprintf_r+0x1a6c>)
 8004020:	9309      	str	r3, [sp, #36]	; 0x24
 8004022:	e4f7      	b.n	8003a14 <_vfprintf_r+0x12cc>
 8004024:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004026:	4413      	add	r3, r2
 8004028:	444b      	add	r3, r9
 800402a:	9309      	str	r3, [sp, #36]	; 0x24
 800402c:	2666      	movs	r6, #102	; 0x66
 800402e:	e6fb      	b.n	8003e28 <_vfprintf_r+0x16e0>
 8004030:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004032:	9309      	str	r3, [sp, #36]	; 0x24
 8004034:	e694      	b.n	8003d60 <_vfprintf_r+0x1618>
 8004036:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800403a:	4664      	mov	r4, ip
 800403c:	4d5e      	ldr	r5, [pc, #376]	; (80041b8 <_vfprintf_r+0x1a70>)
 800403e:	e000      	b.n	8004042 <_vfprintf_r+0x18fa>
 8004040:	4614      	mov	r4, r2
 8004042:	fba5 1203 	umull	r1, r2, r5, r3
 8004046:	08d2      	lsrs	r2, r2, #3
 8004048:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800404c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004050:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004054:	4613      	mov	r3, r2
 8004056:	2b09      	cmp	r3, #9
 8004058:	f804 1c01 	strb.w	r1, [r4, #-1]
 800405c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004060:	dcee      	bgt.n	8004040 <_vfprintf_r+0x18f8>
 8004062:	3330      	adds	r3, #48	; 0x30
 8004064:	3c02      	subs	r4, #2
 8004066:	b2db      	uxtb	r3, r3
 8004068:	45a4      	cmp	ip, r4
 800406a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800406e:	f240 8090 	bls.w	8004192 <_vfprintf_r+0x1a4a>
 8004072:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004076:	4611      	mov	r1, r2
 8004078:	e001      	b.n	800407e <_vfprintf_r+0x1936>
 800407a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800407e:	f804 3b01 	strb.w	r3, [r4], #1
 8004082:	458c      	cmp	ip, r1
 8004084:	d1f9      	bne.n	800407a <_vfprintf_r+0x1932>
 8004086:	ab2a      	add	r3, sp, #168	; 0xa8
 8004088:	1a9b      	subs	r3, r3, r2
 800408a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800408e:	4413      	add	r3, r2
 8004090:	f7ff bbe3 	b.w	800385a <_vfprintf_r+0x1112>
 8004094:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004096:	4f49      	ldr	r7, [pc, #292]	; (80041bc <_vfprintf_r+0x1a74>)
 8004098:	2b00      	cmp	r3, #0
 800409a:	bfb6      	itet	lt
 800409c:	222d      	movlt	r2, #45	; 0x2d
 800409e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80040a2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80040a6:	4b46      	ldr	r3, [pc, #280]	; (80041c0 <_vfprintf_r+0x1a78>)
 80040a8:	f7fe bf02 	b.w	8002eb0 <_vfprintf_r+0x768>
 80040ac:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80040b0:	f7ff b8c9 	b.w	8003246 <_vfprintf_r+0xafe>
 80040b4:	aa28      	add	r2, sp, #160	; 0xa0
 80040b6:	ab25      	add	r3, sp, #148	; 0x94
 80040b8:	e9cd 3200 	strd	r3, r2, [sp]
 80040bc:	2103      	movs	r1, #3
 80040be:	ab24      	add	r3, sp, #144	; 0x90
 80040c0:	464a      	mov	r2, r9
 80040c2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80040c6:	9803      	ldr	r0, [sp, #12]
 80040c8:	f000 f9c6 	bl	8004458 <_dtoa_r>
 80040cc:	464d      	mov	r5, r9
 80040ce:	4607      	mov	r7, r0
 80040d0:	2e46      	cmp	r6, #70	; 0x46
 80040d2:	eb07 0405 	add.w	r4, r7, r5
 80040d6:	f43f af67 	beq.w	8003fa8 <_vfprintf_r+0x1860>
 80040da:	e76b      	b.n	8003fb4 <_vfprintf_r+0x186c>
 80040dc:	f1b9 0f00 	cmp.w	r9, #0
 80040e0:	d131      	bne.n	8004146 <_vfprintf_r+0x19fe>
 80040e2:	07c5      	lsls	r5, r0, #31
 80040e4:	d42f      	bmi.n	8004146 <_vfprintf_r+0x19fe>
 80040e6:	2301      	movs	r3, #1
 80040e8:	9304      	str	r3, [sp, #16]
 80040ea:	9309      	str	r3, [sp, #36]	; 0x24
 80040ec:	2666      	movs	r6, #102	; 0x66
 80040ee:	e642      	b.n	8003d76 <_vfprintf_r+0x162e>
 80040f0:	07c3      	lsls	r3, r0, #31
 80040f2:	f57f abbf 	bpl.w	8003874 <_vfprintf_r+0x112c>
 80040f6:	f7ff bbb9 	b.w	800386c <_vfprintf_r+0x1124>
 80040fa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80040fc:	f1c3 0301 	rsb	r3, r3, #1
 8004100:	441a      	add	r2, r3
 8004102:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004106:	9209      	str	r2, [sp, #36]	; 0x24
 8004108:	9304      	str	r3, [sp, #16]
 800410a:	2667      	movs	r6, #103	; 0x67
 800410c:	e633      	b.n	8003d76 <_vfprintf_r+0x162e>
 800410e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004112:	f04f 0901 	mov.w	r9, #1
 8004116:	e457      	b.n	80039c8 <_vfprintf_r+0x1280>
 8004118:	465a      	mov	r2, fp
 800411a:	e511      	b.n	8003b40 <_vfprintf_r+0x13f8>
 800411c:	2e47      	cmp	r6, #71	; 0x47
 800411e:	f47f af5e 	bne.w	8003fde <_vfprintf_r+0x1896>
 8004122:	f018 0f01 	tst.w	r8, #1
 8004126:	f43f ab61 	beq.w	80037ec <_vfprintf_r+0x10a4>
 800412a:	e7d1      	b.n	80040d0 <_vfprintf_r+0x1988>
 800412c:	2200      	movs	r2, #0
 800412e:	2300      	movs	r3, #0
 8004130:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004134:	f7fc ff68 	bl	8001008 <__aeabi_dcmpeq>
 8004138:	2800      	cmp	r0, #0
 800413a:	f47f af39 	bne.w	8003fb0 <_vfprintf_r+0x1868>
 800413e:	f1c5 0501 	rsb	r5, r5, #1
 8004142:	9524      	str	r5, [sp, #144]	; 0x90
 8004144:	e735      	b.n	8003fb2 <_vfprintf_r+0x186a>
 8004146:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004148:	3301      	adds	r3, #1
 800414a:	444b      	add	r3, r9
 800414c:	9309      	str	r3, [sp, #36]	; 0x24
 800414e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004152:	9304      	str	r3, [sp, #16]
 8004154:	2666      	movs	r6, #102	; 0x66
 8004156:	e60e      	b.n	8003d76 <_vfprintf_r+0x162e>
 8004158:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800415c:	f7ff bb7a 	b.w	8003854 <_vfprintf_r+0x110c>
 8004160:	aa2a      	add	r2, sp, #168	; 0xa8
 8004162:	9907      	ldr	r1, [sp, #28]
 8004164:	9803      	ldr	r0, [sp, #12]
 8004166:	f002 fe1d 	bl	8006da4 <__sprint_r>
 800416a:	2800      	cmp	r0, #0
 800416c:	f47f a864 	bne.w	8003238 <_vfprintf_r+0xaf0>
 8004170:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004174:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004178:	f7ff bbbd 	b.w	80038f6 <_vfprintf_r+0x11ae>
 800417c:	9908      	ldr	r1, [sp, #32]
 800417e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004182:	680b      	ldr	r3, [r1, #0]
 8004184:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004188:	1d0b      	adds	r3, r1, #4
 800418a:	4692      	mov	sl, r2
 800418c:	9308      	str	r3, [sp, #32]
 800418e:	f7fe bb59 	b.w	8002844 <_vfprintf_r+0xfc>
 8004192:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004196:	f7ff bb60 	b.w	800385a <_vfprintf_r+0x1112>
 800419a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800419e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80041a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80041a6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80041aa:	f7ff b84c 	b.w	8003246 <_vfprintf_r+0xafe>
 80041ae:	bf00      	nop
 80041b0:	08007494 	.word	0x08007494
 80041b4:	08007464 	.word	0x08007464
 80041b8:	cccccccd 	.word	0xcccccccd
 80041bc:	0800744c 	.word	0x0800744c
 80041c0:	08007448 	.word	0x08007448

080041c4 <__sbprintf>:
 80041c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80041c8:	460c      	mov	r4, r1
 80041ca:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80041ce:	8989      	ldrh	r1, [r1, #12]
 80041d0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80041d2:	89e5      	ldrh	r5, [r4, #14]
 80041d4:	9619      	str	r6, [sp, #100]	; 0x64
 80041d6:	f021 0102 	bic.w	r1, r1, #2
 80041da:	4606      	mov	r6, r0
 80041dc:	69e0      	ldr	r0, [r4, #28]
 80041de:	f8ad 100c 	strh.w	r1, [sp, #12]
 80041e2:	4617      	mov	r7, r2
 80041e4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80041e8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80041ea:	f8ad 500e 	strh.w	r5, [sp, #14]
 80041ee:	4698      	mov	r8, r3
 80041f0:	ad1a      	add	r5, sp, #104	; 0x68
 80041f2:	2300      	movs	r3, #0
 80041f4:	9007      	str	r0, [sp, #28]
 80041f6:	a816      	add	r0, sp, #88	; 0x58
 80041f8:	9209      	str	r2, [sp, #36]	; 0x24
 80041fa:	9306      	str	r3, [sp, #24]
 80041fc:	9500      	str	r5, [sp, #0]
 80041fe:	9504      	str	r5, [sp, #16]
 8004200:	9102      	str	r1, [sp, #8]
 8004202:	9105      	str	r1, [sp, #20]
 8004204:	f001 fc8a 	bl	8005b1c <__retarget_lock_init_recursive>
 8004208:	4643      	mov	r3, r8
 800420a:	463a      	mov	r2, r7
 800420c:	4669      	mov	r1, sp
 800420e:	4630      	mov	r0, r6
 8004210:	f7fe fa9a 	bl	8002748 <_vfprintf_r>
 8004214:	1e05      	subs	r5, r0, #0
 8004216:	db07      	blt.n	8004228 <__sbprintf+0x64>
 8004218:	4630      	mov	r0, r6
 800421a:	4669      	mov	r1, sp
 800421c:	f001 f8d6 	bl	80053cc <_fflush_r>
 8004220:	2800      	cmp	r0, #0
 8004222:	bf18      	it	ne
 8004224:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004228:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800422c:	065b      	lsls	r3, r3, #25
 800422e:	d503      	bpl.n	8004238 <__sbprintf+0x74>
 8004230:	89a3      	ldrh	r3, [r4, #12]
 8004232:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004236:	81a3      	strh	r3, [r4, #12]
 8004238:	9816      	ldr	r0, [sp, #88]	; 0x58
 800423a:	f001 fc71 	bl	8005b20 <__retarget_lock_close_recursive>
 800423e:	4628      	mov	r0, r5
 8004240:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004244:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004248 <__swsetup_r>:
 8004248:	b538      	push	{r3, r4, r5, lr}
 800424a:	4b31      	ldr	r3, [pc, #196]	; (8004310 <__swsetup_r+0xc8>)
 800424c:	681b      	ldr	r3, [r3, #0]
 800424e:	4605      	mov	r5, r0
 8004250:	460c      	mov	r4, r1
 8004252:	b113      	cbz	r3, 800425a <__swsetup_r+0x12>
 8004254:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004256:	2a00      	cmp	r2, #0
 8004258:	d03a      	beq.n	80042d0 <__swsetup_r+0x88>
 800425a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800425e:	b293      	uxth	r3, r2
 8004260:	0718      	lsls	r0, r3, #28
 8004262:	d50c      	bpl.n	800427e <__swsetup_r+0x36>
 8004264:	6920      	ldr	r0, [r4, #16]
 8004266:	b1a8      	cbz	r0, 8004294 <__swsetup_r+0x4c>
 8004268:	f013 0201 	ands.w	r2, r3, #1
 800426c:	d020      	beq.n	80042b0 <__swsetup_r+0x68>
 800426e:	6963      	ldr	r3, [r4, #20]
 8004270:	2200      	movs	r2, #0
 8004272:	425b      	negs	r3, r3
 8004274:	61a3      	str	r3, [r4, #24]
 8004276:	60a2      	str	r2, [r4, #8]
 8004278:	b300      	cbz	r0, 80042bc <__swsetup_r+0x74>
 800427a:	2000      	movs	r0, #0
 800427c:	bd38      	pop	{r3, r4, r5, pc}
 800427e:	06d9      	lsls	r1, r3, #27
 8004280:	d53e      	bpl.n	8004300 <__swsetup_r+0xb8>
 8004282:	0758      	lsls	r0, r3, #29
 8004284:	d428      	bmi.n	80042d8 <__swsetup_r+0x90>
 8004286:	6920      	ldr	r0, [r4, #16]
 8004288:	f042 0308 	orr.w	r3, r2, #8
 800428c:	81a3      	strh	r3, [r4, #12]
 800428e:	b29b      	uxth	r3, r3
 8004290:	2800      	cmp	r0, #0
 8004292:	d1e9      	bne.n	8004268 <__swsetup_r+0x20>
 8004294:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004298:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800429c:	d0e4      	beq.n	8004268 <__swsetup_r+0x20>
 800429e:	4628      	mov	r0, r5
 80042a0:	4621      	mov	r1, r4
 80042a2:	f001 fc71 	bl	8005b88 <__smakebuf_r>
 80042a6:	89a3      	ldrh	r3, [r4, #12]
 80042a8:	6920      	ldr	r0, [r4, #16]
 80042aa:	f013 0201 	ands.w	r2, r3, #1
 80042ae:	d1de      	bne.n	800426e <__swsetup_r+0x26>
 80042b0:	0799      	lsls	r1, r3, #30
 80042b2:	bf58      	it	pl
 80042b4:	6962      	ldrpl	r2, [r4, #20]
 80042b6:	60a2      	str	r2, [r4, #8]
 80042b8:	2800      	cmp	r0, #0
 80042ba:	d1de      	bne.n	800427a <__swsetup_r+0x32>
 80042bc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80042c0:	061a      	lsls	r2, r3, #24
 80042c2:	d5db      	bpl.n	800427c <__swsetup_r+0x34>
 80042c4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80042c8:	81a3      	strh	r3, [r4, #12]
 80042ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80042ce:	bd38      	pop	{r3, r4, r5, pc}
 80042d0:	4618      	mov	r0, r3
 80042d2:	f001 f8d7 	bl	8005484 <__sinit>
 80042d6:	e7c0      	b.n	800425a <__swsetup_r+0x12>
 80042d8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80042da:	b151      	cbz	r1, 80042f2 <__swsetup_r+0xaa>
 80042dc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80042e0:	4299      	cmp	r1, r3
 80042e2:	d004      	beq.n	80042ee <__swsetup_r+0xa6>
 80042e4:	4628      	mov	r0, r5
 80042e6:	f001 f96f 	bl	80055c8 <_free_r>
 80042ea:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80042ee:	2300      	movs	r3, #0
 80042f0:	6323      	str	r3, [r4, #48]	; 0x30
 80042f2:	2300      	movs	r3, #0
 80042f4:	6920      	ldr	r0, [r4, #16]
 80042f6:	6063      	str	r3, [r4, #4]
 80042f8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80042fc:	6020      	str	r0, [r4, #0]
 80042fe:	e7c3      	b.n	8004288 <__swsetup_r+0x40>
 8004300:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004304:	2309      	movs	r3, #9
 8004306:	602b      	str	r3, [r5, #0]
 8004308:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800430c:	81a2      	strh	r2, [r4, #12]
 800430e:	bd38      	pop	{r3, r4, r5, pc}
 8004310:	20000018 	.word	0x20000018

08004314 <register_fini>:
 8004314:	4b02      	ldr	r3, [pc, #8]	; (8004320 <register_fini+0xc>)
 8004316:	b113      	cbz	r3, 800431e <register_fini+0xa>
 8004318:	4802      	ldr	r0, [pc, #8]	; (8004324 <register_fini+0x10>)
 800431a:	f000 b805 	b.w	8004328 <atexit>
 800431e:	4770      	bx	lr
 8004320:	00000000 	.word	0x00000000
 8004324:	080054f5 	.word	0x080054f5

08004328 <atexit>:
 8004328:	2300      	movs	r3, #0
 800432a:	4601      	mov	r1, r0
 800432c:	461a      	mov	r2, r3
 800432e:	4618      	mov	r0, r3
 8004330:	f002 bd58 	b.w	8006de4 <__register_exitproc>

08004334 <quorem>:
 8004334:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004338:	6903      	ldr	r3, [r0, #16]
 800433a:	690f      	ldr	r7, [r1, #16]
 800433c:	42bb      	cmp	r3, r7
 800433e:	b083      	sub	sp, #12
 8004340:	f2c0 8086 	blt.w	8004450 <quorem+0x11c>
 8004344:	3f01      	subs	r7, #1
 8004346:	f101 0914 	add.w	r9, r1, #20
 800434a:	f100 0a14 	add.w	sl, r0, #20
 800434e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004352:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004356:	00bc      	lsls	r4, r7, #2
 8004358:	3201      	adds	r2, #1
 800435a:	fbb3 f8f2 	udiv	r8, r3, r2
 800435e:	eb0a 0304 	add.w	r3, sl, r4
 8004362:	9400      	str	r4, [sp, #0]
 8004364:	eb09 0b04 	add.w	fp, r9, r4
 8004368:	9301      	str	r3, [sp, #4]
 800436a:	f1b8 0f00 	cmp.w	r8, #0
 800436e:	d038      	beq.n	80043e2 <quorem+0xae>
 8004370:	2500      	movs	r5, #0
 8004372:	462e      	mov	r6, r5
 8004374:	46ce      	mov	lr, r9
 8004376:	46d4      	mov	ip, sl
 8004378:	f85e 4b04 	ldr.w	r4, [lr], #4
 800437c:	f8dc 3000 	ldr.w	r3, [ip]
 8004380:	b2a2      	uxth	r2, r4
 8004382:	fb08 5502 	mla	r5, r8, r2, r5
 8004386:	0c22      	lsrs	r2, r4, #16
 8004388:	0c2c      	lsrs	r4, r5, #16
 800438a:	fb08 4202 	mla	r2, r8, r2, r4
 800438e:	b2ad      	uxth	r5, r5
 8004390:	1b75      	subs	r5, r6, r5
 8004392:	b296      	uxth	r6, r2
 8004394:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004398:	fa15 f383 	uxtah	r3, r5, r3
 800439c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80043a0:	b29b      	uxth	r3, r3
 80043a2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80043a6:	45f3      	cmp	fp, lr
 80043a8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80043ac:	f84c 3b04 	str.w	r3, [ip], #4
 80043b0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80043b4:	d2e0      	bcs.n	8004378 <quorem+0x44>
 80043b6:	9b00      	ldr	r3, [sp, #0]
 80043b8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80043bc:	b98b      	cbnz	r3, 80043e2 <quorem+0xae>
 80043be:	9a01      	ldr	r2, [sp, #4]
 80043c0:	1f13      	subs	r3, r2, #4
 80043c2:	459a      	cmp	sl, r3
 80043c4:	d20c      	bcs.n	80043e0 <quorem+0xac>
 80043c6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80043ca:	b94b      	cbnz	r3, 80043e0 <quorem+0xac>
 80043cc:	f1a2 0308 	sub.w	r3, r2, #8
 80043d0:	e002      	b.n	80043d8 <quorem+0xa4>
 80043d2:	681a      	ldr	r2, [r3, #0]
 80043d4:	3b04      	subs	r3, #4
 80043d6:	b91a      	cbnz	r2, 80043e0 <quorem+0xac>
 80043d8:	459a      	cmp	sl, r3
 80043da:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80043de:	d3f8      	bcc.n	80043d2 <quorem+0x9e>
 80043e0:	6107      	str	r7, [r0, #16]
 80043e2:	4604      	mov	r4, r0
 80043e4:	f002 f944 	bl	8006670 <__mcmp>
 80043e8:	2800      	cmp	r0, #0
 80043ea:	db2d      	blt.n	8004448 <quorem+0x114>
 80043ec:	f108 0801 	add.w	r8, r8, #1
 80043f0:	4655      	mov	r5, sl
 80043f2:	2300      	movs	r3, #0
 80043f4:	f859 1b04 	ldr.w	r1, [r9], #4
 80043f8:	6828      	ldr	r0, [r5, #0]
 80043fa:	b28a      	uxth	r2, r1
 80043fc:	1a9a      	subs	r2, r3, r2
 80043fe:	0c0b      	lsrs	r3, r1, #16
 8004400:	fa12 f280 	uxtah	r2, r2, r0
 8004404:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004408:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800440c:	b292      	uxth	r2, r2
 800440e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004412:	45cb      	cmp	fp, r9
 8004414:	f845 2b04 	str.w	r2, [r5], #4
 8004418:	ea4f 4323 	mov.w	r3, r3, asr #16
 800441c:	d2ea      	bcs.n	80043f4 <quorem+0xc0>
 800441e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004422:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004426:	b97a      	cbnz	r2, 8004448 <quorem+0x114>
 8004428:	1f1a      	subs	r2, r3, #4
 800442a:	4592      	cmp	sl, r2
 800442c:	d20b      	bcs.n	8004446 <quorem+0x112>
 800442e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004432:	b942      	cbnz	r2, 8004446 <quorem+0x112>
 8004434:	3b08      	subs	r3, #8
 8004436:	e002      	b.n	800443e <quorem+0x10a>
 8004438:	681a      	ldr	r2, [r3, #0]
 800443a:	3b04      	subs	r3, #4
 800443c:	b91a      	cbnz	r2, 8004446 <quorem+0x112>
 800443e:	459a      	cmp	sl, r3
 8004440:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004444:	d3f8      	bcc.n	8004438 <quorem+0x104>
 8004446:	6127      	str	r7, [r4, #16]
 8004448:	4640      	mov	r0, r8
 800444a:	b003      	add	sp, #12
 800444c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004450:	2000      	movs	r0, #0
 8004452:	b003      	add	sp, #12
 8004454:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004458 <_dtoa_r>:
 8004458:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800445c:	ec55 4b10 	vmov	r4, r5, d0
 8004460:	b09b      	sub	sp, #108	; 0x6c
 8004462:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004464:	9102      	str	r1, [sp, #8]
 8004466:	4681      	mov	r9, r0
 8004468:	9207      	str	r2, [sp, #28]
 800446a:	9305      	str	r3, [sp, #20]
 800446c:	e9cd 4500 	strd	r4, r5, [sp]
 8004470:	b156      	cbz	r6, 8004488 <_dtoa_r+0x30>
 8004472:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004474:	6072      	str	r2, [r6, #4]
 8004476:	2301      	movs	r3, #1
 8004478:	4093      	lsls	r3, r2
 800447a:	60b3      	str	r3, [r6, #8]
 800447c:	4631      	mov	r1, r6
 800447e:	f001 ff07 	bl	8006290 <_Bfree>
 8004482:	2300      	movs	r3, #0
 8004484:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004488:	f1b5 0800 	subs.w	r8, r5, #0
 800448c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800448e:	bfb4      	ite	lt
 8004490:	2301      	movlt	r3, #1
 8004492:	2300      	movge	r3, #0
 8004494:	6013      	str	r3, [r2, #0]
 8004496:	4b76      	ldr	r3, [pc, #472]	; (8004670 <_dtoa_r+0x218>)
 8004498:	bfbc      	itt	lt
 800449a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800449e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80044a2:	ea33 0308 	bics.w	r3, r3, r8
 80044a6:	f000 80a6 	beq.w	80045f6 <_dtoa_r+0x19e>
 80044aa:	e9dd 6700 	ldrd	r6, r7, [sp]
 80044ae:	2200      	movs	r2, #0
 80044b0:	2300      	movs	r3, #0
 80044b2:	4630      	mov	r0, r6
 80044b4:	4639      	mov	r1, r7
 80044b6:	f7fc fda7 	bl	8001008 <__aeabi_dcmpeq>
 80044ba:	4605      	mov	r5, r0
 80044bc:	b178      	cbz	r0, 80044de <_dtoa_r+0x86>
 80044be:	9a05      	ldr	r2, [sp, #20]
 80044c0:	2301      	movs	r3, #1
 80044c2:	6013      	str	r3, [r2, #0]
 80044c4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80044c6:	2b00      	cmp	r3, #0
 80044c8:	f000 80c0 	beq.w	800464c <_dtoa_r+0x1f4>
 80044cc:	4b69      	ldr	r3, [pc, #420]	; (8004674 <_dtoa_r+0x21c>)
 80044ce:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80044d0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80044d4:	6013      	str	r3, [r2, #0]
 80044d6:	4658      	mov	r0, fp
 80044d8:	b01b      	add	sp, #108	; 0x6c
 80044da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80044de:	aa18      	add	r2, sp, #96	; 0x60
 80044e0:	a919      	add	r1, sp, #100	; 0x64
 80044e2:	ec47 6b10 	vmov	d0, r6, r7
 80044e6:	4648      	mov	r0, r9
 80044e8:	f002 f954 	bl	8006794 <__d2b>
 80044ec:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80044f0:	4682      	mov	sl, r0
 80044f2:	f040 80a0 	bne.w	8004636 <_dtoa_r+0x1de>
 80044f6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80044fa:	442c      	add	r4, r5
 80044fc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004500:	2b20      	cmp	r3, #32
 8004502:	f340 842c 	ble.w	8004d5e <_dtoa_r+0x906>
 8004506:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800450a:	fa08 f803 	lsl.w	r8, r8, r3
 800450e:	9b00      	ldr	r3, [sp, #0]
 8004510:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004514:	fa23 f000 	lsr.w	r0, r3, r0
 8004518:	ea48 0000 	orr.w	r0, r8, r0
 800451c:	f7fc fa92 	bl	8000a44 <__aeabi_ui2d>
 8004520:	2301      	movs	r3, #1
 8004522:	4606      	mov	r6, r0
 8004524:	3c01      	subs	r4, #1
 8004526:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800452a:	930f      	str	r3, [sp, #60]	; 0x3c
 800452c:	4630      	mov	r0, r6
 800452e:	4639      	mov	r1, r7
 8004530:	2200      	movs	r2, #0
 8004532:	4b51      	ldr	r3, [pc, #324]	; (8004678 <_dtoa_r+0x220>)
 8004534:	f7fc f948 	bl	80007c8 <__aeabi_dsub>
 8004538:	a347      	add	r3, pc, #284	; (adr r3, 8004658 <_dtoa_r+0x200>)
 800453a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800453e:	f7fc fafb 	bl	8000b38 <__aeabi_dmul>
 8004542:	a347      	add	r3, pc, #284	; (adr r3, 8004660 <_dtoa_r+0x208>)
 8004544:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004548:	f7fc f940 	bl	80007cc <__adddf3>
 800454c:	4606      	mov	r6, r0
 800454e:	4620      	mov	r0, r4
 8004550:	460f      	mov	r7, r1
 8004552:	f7fc fa87 	bl	8000a64 <__aeabi_i2d>
 8004556:	a344      	add	r3, pc, #272	; (adr r3, 8004668 <_dtoa_r+0x210>)
 8004558:	e9d3 2300 	ldrd	r2, r3, [r3]
 800455c:	f7fc faec 	bl	8000b38 <__aeabi_dmul>
 8004560:	4602      	mov	r2, r0
 8004562:	460b      	mov	r3, r1
 8004564:	4630      	mov	r0, r6
 8004566:	4639      	mov	r1, r7
 8004568:	f7fc f930 	bl	80007cc <__adddf3>
 800456c:	4606      	mov	r6, r0
 800456e:	460f      	mov	r7, r1
 8004570:	f7fc fd92 	bl	8001098 <__aeabi_d2iz>
 8004574:	2200      	movs	r2, #0
 8004576:	9006      	str	r0, [sp, #24]
 8004578:	2300      	movs	r3, #0
 800457a:	4630      	mov	r0, r6
 800457c:	4639      	mov	r1, r7
 800457e:	f7fc fd4d 	bl	800101c <__aeabi_dcmplt>
 8004582:	2800      	cmp	r0, #0
 8004584:	f040 8273 	bne.w	8004a6e <_dtoa_r+0x616>
 8004588:	9e06      	ldr	r6, [sp, #24]
 800458a:	2e16      	cmp	r6, #22
 800458c:	f200 825d 	bhi.w	8004a4a <_dtoa_r+0x5f2>
 8004590:	4b3a      	ldr	r3, [pc, #232]	; (800467c <_dtoa_r+0x224>)
 8004592:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004596:	e9d3 0100 	ldrd	r0, r1, [r3]
 800459a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800459e:	f7fc fd5b 	bl	8001058 <__aeabi_dcmpgt>
 80045a2:	2800      	cmp	r0, #0
 80045a4:	f000 83d7 	beq.w	8004d56 <_dtoa_r+0x8fe>
 80045a8:	1e73      	subs	r3, r6, #1
 80045aa:	9306      	str	r3, [sp, #24]
 80045ac:	2300      	movs	r3, #0
 80045ae:	930d      	str	r3, [sp, #52]	; 0x34
 80045b0:	1b2c      	subs	r4, r5, r4
 80045b2:	f1b4 0801 	subs.w	r8, r4, #1
 80045b6:	f100 8254 	bmi.w	8004a62 <_dtoa_r+0x60a>
 80045ba:	2300      	movs	r3, #0
 80045bc:	9308      	str	r3, [sp, #32]
 80045be:	9b06      	ldr	r3, [sp, #24]
 80045c0:	2b00      	cmp	r3, #0
 80045c2:	f2c0 8245 	blt.w	8004a50 <_dtoa_r+0x5f8>
 80045c6:	4498      	add	r8, r3
 80045c8:	930c      	str	r3, [sp, #48]	; 0x30
 80045ca:	2300      	movs	r3, #0
 80045cc:	930b      	str	r3, [sp, #44]	; 0x2c
 80045ce:	9b02      	ldr	r3, [sp, #8]
 80045d0:	2b09      	cmp	r3, #9
 80045d2:	d85b      	bhi.n	800468c <_dtoa_r+0x234>
 80045d4:	2b05      	cmp	r3, #5
 80045d6:	f340 83c0 	ble.w	8004d5a <_dtoa_r+0x902>
 80045da:	3b04      	subs	r3, #4
 80045dc:	9302      	str	r3, [sp, #8]
 80045de:	2500      	movs	r5, #0
 80045e0:	9b02      	ldr	r3, [sp, #8]
 80045e2:	3b02      	subs	r3, #2
 80045e4:	2b03      	cmp	r3, #3
 80045e6:	f200 8498 	bhi.w	8004f1a <_dtoa_r+0xac2>
 80045ea:	e8df f013 	tbh	[pc, r3, lsl #1]
 80045ee:	03df      	.short	0x03df
 80045f0:	03e803bf 	.word	0x03e803bf
 80045f4:	04f5      	.short	0x04f5
 80045f6:	9a05      	ldr	r2, [sp, #20]
 80045f8:	f242 730f 	movw	r3, #9999	; 0x270f
 80045fc:	6013      	str	r3, [r2, #0]
 80045fe:	9b00      	ldr	r3, [sp, #0]
 8004600:	b983      	cbnz	r3, 8004624 <_dtoa_r+0x1cc>
 8004602:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004606:	b96b      	cbnz	r3, 8004624 <_dtoa_r+0x1cc>
 8004608:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800460a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004680 <_dtoa_r+0x228>
 800460e:	2b00      	cmp	r3, #0
 8004610:	f43f af61 	beq.w	80044d6 <_dtoa_r+0x7e>
 8004614:	f10b 0308 	add.w	r3, fp, #8
 8004618:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800461a:	4658      	mov	r0, fp
 800461c:	6013      	str	r3, [r2, #0]
 800461e:	b01b      	add	sp, #108	; 0x6c
 8004620:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004624:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004626:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004684 <_dtoa_r+0x22c>
 800462a:	2b00      	cmp	r3, #0
 800462c:	f43f af53 	beq.w	80044d6 <_dtoa_r+0x7e>
 8004630:	f10b 0303 	add.w	r3, fp, #3
 8004634:	e7f0      	b.n	8004618 <_dtoa_r+0x1c0>
 8004636:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800463a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800463e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004640:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004644:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004648:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800464a:	e76f      	b.n	800452c <_dtoa_r+0xd4>
 800464c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004688 <_dtoa_r+0x230>
 8004650:	4658      	mov	r0, fp
 8004652:	b01b      	add	sp, #108	; 0x6c
 8004654:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004658:	636f4361 	.word	0x636f4361
 800465c:	3fd287a7 	.word	0x3fd287a7
 8004660:	8b60c8b3 	.word	0x8b60c8b3
 8004664:	3fc68a28 	.word	0x3fc68a28
 8004668:	509f79fb 	.word	0x509f79fb
 800466c:	3fd34413 	.word	0x3fd34413
 8004670:	7ff00000 	.word	0x7ff00000
 8004674:	08007481 	.word	0x08007481
 8004678:	3ff80000 	.word	0x3ff80000
 800467c:	080074e0 	.word	0x080074e0
 8004680:	080074a4 	.word	0x080074a4
 8004684:	080074b0 	.word	0x080074b0
 8004688:	08007480 	.word	0x08007480
 800468c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004690:	2501      	movs	r5, #1
 8004692:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004696:	2300      	movs	r3, #0
 8004698:	9302      	str	r3, [sp, #8]
 800469a:	9307      	str	r3, [sp, #28]
 800469c:	2100      	movs	r1, #0
 800469e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80046a2:	940e      	str	r4, [sp, #56]	; 0x38
 80046a4:	4648      	mov	r0, r9
 80046a6:	f001 fdcd 	bl	8006244 <_Balloc>
 80046aa:	2c0e      	cmp	r4, #14
 80046ac:	4683      	mov	fp, r0
 80046ae:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80046b2:	f200 80fb 	bhi.w	80048ac <_dtoa_r+0x454>
 80046b6:	2d00      	cmp	r5, #0
 80046b8:	f000 80f8 	beq.w	80048ac <_dtoa_r+0x454>
 80046bc:	ed9d 7b00 	vldr	d7, [sp]
 80046c0:	9906      	ldr	r1, [sp, #24]
 80046c2:	2900      	cmp	r1, #0
 80046c4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80046c8:	f340 83e5 	ble.w	8004e96 <_dtoa_r+0xa3e>
 80046cc:	4b9d      	ldr	r3, [pc, #628]	; (8004944 <_dtoa_r+0x4ec>)
 80046ce:	f001 020f 	and.w	r2, r1, #15
 80046d2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80046d6:	ed93 7b00 	vldr	d7, [r3]
 80046da:	110c      	asrs	r4, r1, #4
 80046dc:	06e2      	lsls	r2, r4, #27
 80046de:	ed8d 7b00 	vstr	d7, [sp]
 80046e2:	f140 849e 	bpl.w	8005022 <_dtoa_r+0xbca>
 80046e6:	4b98      	ldr	r3, [pc, #608]	; (8004948 <_dtoa_r+0x4f0>)
 80046e8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80046ec:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80046f0:	f7fc fb4c 	bl	8000d8c <__aeabi_ddiv>
 80046f4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80046f8:	f004 040f 	and.w	r4, r4, #15
 80046fc:	2603      	movs	r6, #3
 80046fe:	b17c      	cbz	r4, 8004720 <_dtoa_r+0x2c8>
 8004700:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004704:	4d90      	ldr	r5, [pc, #576]	; (8004948 <_dtoa_r+0x4f0>)
 8004706:	07e3      	lsls	r3, r4, #31
 8004708:	d504      	bpl.n	8004714 <_dtoa_r+0x2bc>
 800470a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800470e:	f7fc fa13 	bl	8000b38 <__aeabi_dmul>
 8004712:	3601      	adds	r6, #1
 8004714:	1064      	asrs	r4, r4, #1
 8004716:	f105 0508 	add.w	r5, r5, #8
 800471a:	d1f4      	bne.n	8004706 <_dtoa_r+0x2ae>
 800471c:	e9cd 0100 	strd	r0, r1, [sp]
 8004720:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004724:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004728:	f7fc fb30 	bl	8000d8c <__aeabi_ddiv>
 800472c:	e9cd 0100 	strd	r0, r1, [sp]
 8004730:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004732:	b143      	cbz	r3, 8004746 <_dtoa_r+0x2ee>
 8004734:	2200      	movs	r2, #0
 8004736:	4b85      	ldr	r3, [pc, #532]	; (800494c <_dtoa_r+0x4f4>)
 8004738:	e9dd 0100 	ldrd	r0, r1, [sp]
 800473c:	f7fc fc6e 	bl	800101c <__aeabi_dcmplt>
 8004740:	2800      	cmp	r0, #0
 8004742:	f040 84ff 	bne.w	8005144 <_dtoa_r+0xcec>
 8004746:	4630      	mov	r0, r6
 8004748:	f7fc f98c 	bl	8000a64 <__aeabi_i2d>
 800474c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004750:	f7fc f9f2 	bl	8000b38 <__aeabi_dmul>
 8004754:	4b7e      	ldr	r3, [pc, #504]	; (8004950 <_dtoa_r+0x4f8>)
 8004756:	2200      	movs	r2, #0
 8004758:	f7fc f838 	bl	80007cc <__adddf3>
 800475c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800475e:	4606      	mov	r6, r0
 8004760:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004764:	2b00      	cmp	r3, #0
 8004766:	f000 841c 	beq.w	8004fa2 <_dtoa_r+0xb4a>
 800476a:	9b06      	ldr	r3, [sp, #24]
 800476c:	9316      	str	r3, [sp, #88]	; 0x58
 800476e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004770:	9312      	str	r3, [sp, #72]	; 0x48
 8004772:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004776:	f7fc fc8f 	bl	8001098 <__aeabi_d2iz>
 800477a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800477c:	4b71      	ldr	r3, [pc, #452]	; (8004944 <_dtoa_r+0x4ec>)
 800477e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004782:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004786:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800478a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800478e:	f7fc f969 	bl	8000a64 <__aeabi_i2d>
 8004792:	460b      	mov	r3, r1
 8004794:	4602      	mov	r2, r0
 8004796:	e9dd 0100 	ldrd	r0, r1, [sp]
 800479a:	e9cd 6700 	strd	r6, r7, [sp]
 800479e:	f7fc f813 	bl	80007c8 <__aeabi_dsub>
 80047a2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047a4:	b2ed      	uxtb	r5, r5
 80047a6:	4606      	mov	r6, r0
 80047a8:	460f      	mov	r7, r1
 80047aa:	f10b 0401 	add.w	r4, fp, #1
 80047ae:	2b00      	cmp	r3, #0
 80047b0:	f000 8458 	beq.w	8005064 <_dtoa_r+0xc0c>
 80047b4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80047b8:	2000      	movs	r0, #0
 80047ba:	4966      	ldr	r1, [pc, #408]	; (8004954 <_dtoa_r+0x4fc>)
 80047bc:	f7fc fae6 	bl	8000d8c <__aeabi_ddiv>
 80047c0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80047c4:	f7fc f800 	bl	80007c8 <__aeabi_dsub>
 80047c8:	f88b 5000 	strb.w	r5, [fp]
 80047cc:	4632      	mov	r2, r6
 80047ce:	463b      	mov	r3, r7
 80047d0:	e9cd 0100 	strd	r0, r1, [sp]
 80047d4:	f7fc fc40 	bl	8001058 <__aeabi_dcmpgt>
 80047d8:	2800      	cmp	r0, #0
 80047da:	f040 8502 	bne.w	80051e2 <_dtoa_r+0xd8a>
 80047de:	4632      	mov	r2, r6
 80047e0:	463b      	mov	r3, r7
 80047e2:	2000      	movs	r0, #0
 80047e4:	4959      	ldr	r1, [pc, #356]	; (800494c <_dtoa_r+0x4f4>)
 80047e6:	f7fb ffef 	bl	80007c8 <__aeabi_dsub>
 80047ea:	4602      	mov	r2, r0
 80047ec:	460b      	mov	r3, r1
 80047ee:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047f2:	f7fc fc31 	bl	8001058 <__aeabi_dcmpgt>
 80047f6:	2800      	cmp	r0, #0
 80047f8:	f040 84fb 	bne.w	80051f2 <_dtoa_r+0xd9a>
 80047fc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80047fe:	2a01      	cmp	r2, #1
 8004800:	d050      	beq.n	80048a4 <_dtoa_r+0x44c>
 8004802:	445a      	add	r2, fp
 8004804:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004808:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800480c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004810:	4692      	mov	sl, r2
 8004812:	46cb      	mov	fp, r9
 8004814:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004818:	e00c      	b.n	8004834 <_dtoa_r+0x3dc>
 800481a:	2000      	movs	r0, #0
 800481c:	494b      	ldr	r1, [pc, #300]	; (800494c <_dtoa_r+0x4f4>)
 800481e:	f7fb ffd3 	bl	80007c8 <__aeabi_dsub>
 8004822:	4642      	mov	r2, r8
 8004824:	464b      	mov	r3, r9
 8004826:	f7fc fbf9 	bl	800101c <__aeabi_dcmplt>
 800482a:	2800      	cmp	r0, #0
 800482c:	f040 84dc 	bne.w	80051e8 <_dtoa_r+0xd90>
 8004830:	4554      	cmp	r4, sl
 8004832:	d030      	beq.n	8004896 <_dtoa_r+0x43e>
 8004834:	4640      	mov	r0, r8
 8004836:	4649      	mov	r1, r9
 8004838:	2200      	movs	r2, #0
 800483a:	4b47      	ldr	r3, [pc, #284]	; (8004958 <_dtoa_r+0x500>)
 800483c:	f7fc f97c 	bl	8000b38 <__aeabi_dmul>
 8004840:	2200      	movs	r2, #0
 8004842:	4b45      	ldr	r3, [pc, #276]	; (8004958 <_dtoa_r+0x500>)
 8004844:	4680      	mov	r8, r0
 8004846:	4689      	mov	r9, r1
 8004848:	4630      	mov	r0, r6
 800484a:	4639      	mov	r1, r7
 800484c:	f7fc f974 	bl	8000b38 <__aeabi_dmul>
 8004850:	460f      	mov	r7, r1
 8004852:	4606      	mov	r6, r0
 8004854:	f7fc fc20 	bl	8001098 <__aeabi_d2iz>
 8004858:	4605      	mov	r5, r0
 800485a:	f7fc f903 	bl	8000a64 <__aeabi_i2d>
 800485e:	4602      	mov	r2, r0
 8004860:	460b      	mov	r3, r1
 8004862:	4630      	mov	r0, r6
 8004864:	4639      	mov	r1, r7
 8004866:	f7fb ffaf 	bl	80007c8 <__aeabi_dsub>
 800486a:	3530      	adds	r5, #48	; 0x30
 800486c:	b2ed      	uxtb	r5, r5
 800486e:	4642      	mov	r2, r8
 8004870:	464b      	mov	r3, r9
 8004872:	f804 5b01 	strb.w	r5, [r4], #1
 8004876:	4606      	mov	r6, r0
 8004878:	460f      	mov	r7, r1
 800487a:	f7fc fbcf 	bl	800101c <__aeabi_dcmplt>
 800487e:	4632      	mov	r2, r6
 8004880:	463b      	mov	r3, r7
 8004882:	2800      	cmp	r0, #0
 8004884:	d0c9      	beq.n	800481a <_dtoa_r+0x3c2>
 8004886:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004888:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800488c:	9306      	str	r3, [sp, #24]
 800488e:	46d9      	mov	r9, fp
 8004890:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004894:	e236      	b.n	8004d04 <_dtoa_r+0x8ac>
 8004896:	46d9      	mov	r9, fp
 8004898:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800489c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80048a0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80048a4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80048a8:	e9cd 3400 	strd	r3, r4, [sp]
 80048ac:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80048ae:	2b00      	cmp	r3, #0
 80048b0:	f2c0 80ae 	blt.w	8004a10 <_dtoa_r+0x5b8>
 80048b4:	9a06      	ldr	r2, [sp, #24]
 80048b6:	2a0e      	cmp	r2, #14
 80048b8:	f300 80aa 	bgt.w	8004a10 <_dtoa_r+0x5b8>
 80048bc:	4b21      	ldr	r3, [pc, #132]	; (8004944 <_dtoa_r+0x4ec>)
 80048be:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80048c2:	ed93 7b00 	vldr	d7, [r3]
 80048c6:	9b07      	ldr	r3, [sp, #28]
 80048c8:	2b00      	cmp	r3, #0
 80048ca:	ed8d 7b02 	vstr	d7, [sp, #8]
 80048ce:	f2c0 82be 	blt.w	8004e4e <_dtoa_r+0x9f6>
 80048d2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80048d6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048da:	4630      	mov	r0, r6
 80048dc:	4639      	mov	r1, r7
 80048de:	f7fc fa55 	bl	8000d8c <__aeabi_ddiv>
 80048e2:	f7fc fbd9 	bl	8001098 <__aeabi_d2iz>
 80048e6:	4605      	mov	r5, r0
 80048e8:	f7fc f8bc 	bl	8000a64 <__aeabi_i2d>
 80048ec:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048f0:	f7fc f922 	bl	8000b38 <__aeabi_dmul>
 80048f4:	460b      	mov	r3, r1
 80048f6:	4602      	mov	r2, r0
 80048f8:	4639      	mov	r1, r7
 80048fa:	4630      	mov	r0, r6
 80048fc:	f7fb ff64 	bl	80007c8 <__aeabi_dsub>
 8004900:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004904:	f88b 3000 	strb.w	r3, [fp]
 8004908:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800490a:	2b01      	cmp	r3, #1
 800490c:	4606      	mov	r6, r0
 800490e:	460f      	mov	r7, r1
 8004910:	f10b 0401 	add.w	r4, fp, #1
 8004914:	d053      	beq.n	80049be <_dtoa_r+0x566>
 8004916:	2200      	movs	r2, #0
 8004918:	4b0f      	ldr	r3, [pc, #60]	; (8004958 <_dtoa_r+0x500>)
 800491a:	f7fc f90d 	bl	8000b38 <__aeabi_dmul>
 800491e:	2200      	movs	r2, #0
 8004920:	2300      	movs	r3, #0
 8004922:	4606      	mov	r6, r0
 8004924:	460f      	mov	r7, r1
 8004926:	f7fc fb6f 	bl	8001008 <__aeabi_dcmpeq>
 800492a:	2800      	cmp	r0, #0
 800492c:	f040 81ea 	bne.w	8004d04 <_dtoa_r+0x8ac>
 8004930:	f8cd a000 	str.w	sl, [sp]
 8004934:	f8cd 901c 	str.w	r9, [sp, #28]
 8004938:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800493c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004940:	e017      	b.n	8004972 <_dtoa_r+0x51a>
 8004942:	bf00      	nop
 8004944:	080074e0 	.word	0x080074e0
 8004948:	080074b8 	.word	0x080074b8
 800494c:	3ff00000 	.word	0x3ff00000
 8004950:	401c0000 	.word	0x401c0000
 8004954:	3fe00000 	.word	0x3fe00000
 8004958:	40240000 	.word	0x40240000
 800495c:	f7fc f8ec 	bl	8000b38 <__aeabi_dmul>
 8004960:	2200      	movs	r2, #0
 8004962:	2300      	movs	r3, #0
 8004964:	4606      	mov	r6, r0
 8004966:	460f      	mov	r7, r1
 8004968:	f7fc fb4e 	bl	8001008 <__aeabi_dcmpeq>
 800496c:	2800      	cmp	r0, #0
 800496e:	f040 833d 	bne.w	8004fec <_dtoa_r+0xb94>
 8004972:	464a      	mov	r2, r9
 8004974:	4653      	mov	r3, sl
 8004976:	4630      	mov	r0, r6
 8004978:	4639      	mov	r1, r7
 800497a:	f7fc fa07 	bl	8000d8c <__aeabi_ddiv>
 800497e:	f7fc fb8b 	bl	8001098 <__aeabi_d2iz>
 8004982:	4605      	mov	r5, r0
 8004984:	f7fc f86e 	bl	8000a64 <__aeabi_i2d>
 8004988:	464a      	mov	r2, r9
 800498a:	4653      	mov	r3, sl
 800498c:	f7fc f8d4 	bl	8000b38 <__aeabi_dmul>
 8004990:	4602      	mov	r2, r0
 8004992:	460b      	mov	r3, r1
 8004994:	4630      	mov	r0, r6
 8004996:	4639      	mov	r1, r7
 8004998:	f7fb ff16 	bl	80007c8 <__aeabi_dsub>
 800499c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80049a0:	f804 cb01 	strb.w	ip, [r4], #1
 80049a4:	eba4 0c0b 	sub.w	ip, r4, fp
 80049a8:	45e0      	cmp	r8, ip
 80049aa:	4606      	mov	r6, r0
 80049ac:	460f      	mov	r7, r1
 80049ae:	f04f 0200 	mov.w	r2, #0
 80049b2:	4bc1      	ldr	r3, [pc, #772]	; (8004cb8 <_dtoa_r+0x860>)
 80049b4:	d1d2      	bne.n	800495c <_dtoa_r+0x504>
 80049b6:	f8dd a000 	ldr.w	sl, [sp]
 80049ba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80049be:	4632      	mov	r2, r6
 80049c0:	463b      	mov	r3, r7
 80049c2:	4630      	mov	r0, r6
 80049c4:	4639      	mov	r1, r7
 80049c6:	f7fb ff01 	bl	80007cc <__adddf3>
 80049ca:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80049ce:	4606      	mov	r6, r0
 80049d0:	460f      	mov	r7, r1
 80049d2:	f7fc fb41 	bl	8001058 <__aeabi_dcmpgt>
 80049d6:	b958      	cbnz	r0, 80049f0 <_dtoa_r+0x598>
 80049d8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80049dc:	4630      	mov	r0, r6
 80049de:	4639      	mov	r1, r7
 80049e0:	f7fc fb12 	bl	8001008 <__aeabi_dcmpeq>
 80049e4:	2800      	cmp	r0, #0
 80049e6:	f000 818d 	beq.w	8004d04 <_dtoa_r+0x8ac>
 80049ea:	07e9      	lsls	r1, r5, #31
 80049ec:	f140 818a 	bpl.w	8004d04 <_dtoa_r+0x8ac>
 80049f0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80049f4:	e005      	b.n	8004a02 <_dtoa_r+0x5aa>
 80049f6:	459b      	cmp	fp, r3
 80049f8:	f000 8373 	beq.w	80050e2 <_dtoa_r+0xc8a>
 80049fc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004a00:	461c      	mov	r4, r3
 8004a02:	2d39      	cmp	r5, #57	; 0x39
 8004a04:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a08:	d0f5      	beq.n	80049f6 <_dtoa_r+0x59e>
 8004a0a:	3501      	adds	r5, #1
 8004a0c:	701d      	strb	r5, [r3, #0]
 8004a0e:	e179      	b.n	8004d04 <_dtoa_r+0x8ac>
 8004a10:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004a12:	2a00      	cmp	r2, #0
 8004a14:	d03b      	beq.n	8004a8e <_dtoa_r+0x636>
 8004a16:	9a02      	ldr	r2, [sp, #8]
 8004a18:	2a01      	cmp	r2, #1
 8004a1a:	f340 820b 	ble.w	8004e34 <_dtoa_r+0x9dc>
 8004a1e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a20:	1e5f      	subs	r7, r3, #1
 8004a22:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004a24:	42bb      	cmp	r3, r7
 8004a26:	f2c0 82e6 	blt.w	8004ff6 <_dtoa_r+0xb9e>
 8004a2a:	1bdf      	subs	r7, r3, r7
 8004a2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a2e:	2b00      	cmp	r3, #0
 8004a30:	f2c0 830b 	blt.w	800504a <_dtoa_r+0xbf2>
 8004a34:	9a08      	ldr	r2, [sp, #32]
 8004a36:	4614      	mov	r4, r2
 8004a38:	441a      	add	r2, r3
 8004a3a:	4498      	add	r8, r3
 8004a3c:	9208      	str	r2, [sp, #32]
 8004a3e:	2101      	movs	r1, #1
 8004a40:	4648      	mov	r0, r9
 8004a42:	f001 fcbf 	bl	80063c4 <__i2b>
 8004a46:	4605      	mov	r5, r0
 8004a48:	e024      	b.n	8004a94 <_dtoa_r+0x63c>
 8004a4a:	2301      	movs	r3, #1
 8004a4c:	930d      	str	r3, [sp, #52]	; 0x34
 8004a4e:	e5af      	b.n	80045b0 <_dtoa_r+0x158>
 8004a50:	9a08      	ldr	r2, [sp, #32]
 8004a52:	9b06      	ldr	r3, [sp, #24]
 8004a54:	1ad2      	subs	r2, r2, r3
 8004a56:	425b      	negs	r3, r3
 8004a58:	930b      	str	r3, [sp, #44]	; 0x2c
 8004a5a:	2300      	movs	r3, #0
 8004a5c:	9208      	str	r2, [sp, #32]
 8004a5e:	930c      	str	r3, [sp, #48]	; 0x30
 8004a60:	e5b5      	b.n	80045ce <_dtoa_r+0x176>
 8004a62:	f1c4 0301 	rsb	r3, r4, #1
 8004a66:	9308      	str	r3, [sp, #32]
 8004a68:	f04f 0800 	mov.w	r8, #0
 8004a6c:	e5a7      	b.n	80045be <_dtoa_r+0x166>
 8004a6e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004a72:	4640      	mov	r0, r8
 8004a74:	f7fb fff6 	bl	8000a64 <__aeabi_i2d>
 8004a78:	4632      	mov	r2, r6
 8004a7a:	463b      	mov	r3, r7
 8004a7c:	f7fc fac4 	bl	8001008 <__aeabi_dcmpeq>
 8004a80:	2800      	cmp	r0, #0
 8004a82:	f47f ad81 	bne.w	8004588 <_dtoa_r+0x130>
 8004a86:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004a8a:	9306      	str	r3, [sp, #24]
 8004a8c:	e57c      	b.n	8004588 <_dtoa_r+0x130>
 8004a8e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004a90:	9c08      	ldr	r4, [sp, #32]
 8004a92:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004a94:	2c00      	cmp	r4, #0
 8004a96:	dd0c      	ble.n	8004ab2 <_dtoa_r+0x65a>
 8004a98:	f1b8 0f00 	cmp.w	r8, #0
 8004a9c:	dd09      	ble.n	8004ab2 <_dtoa_r+0x65a>
 8004a9e:	4544      	cmp	r4, r8
 8004aa0:	9a08      	ldr	r2, [sp, #32]
 8004aa2:	4623      	mov	r3, r4
 8004aa4:	bfa8      	it	ge
 8004aa6:	4643      	movge	r3, r8
 8004aa8:	1ad2      	subs	r2, r2, r3
 8004aaa:	9208      	str	r2, [sp, #32]
 8004aac:	1ae4      	subs	r4, r4, r3
 8004aae:	eba8 0803 	sub.w	r8, r8, r3
 8004ab2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004ab4:	b16b      	cbz	r3, 8004ad2 <_dtoa_r+0x67a>
 8004ab6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ab8:	2a00      	cmp	r2, #0
 8004aba:	f000 8290 	beq.w	8004fde <_dtoa_r+0xb86>
 8004abe:	1bde      	subs	r6, r3, r7
 8004ac0:	2f00      	cmp	r7, #0
 8004ac2:	f040 819b 	bne.w	8004dfc <_dtoa_r+0x9a4>
 8004ac6:	4651      	mov	r1, sl
 8004ac8:	4632      	mov	r2, r6
 8004aca:	4648      	mov	r0, r9
 8004acc:	f001 fd2a 	bl	8006524 <__pow5mult>
 8004ad0:	4682      	mov	sl, r0
 8004ad2:	2101      	movs	r1, #1
 8004ad4:	4648      	mov	r0, r9
 8004ad6:	f001 fc75 	bl	80063c4 <__i2b>
 8004ada:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004adc:	4606      	mov	r6, r0
 8004ade:	2a00      	cmp	r2, #0
 8004ae0:	f040 8125 	bne.w	8004d2e <_dtoa_r+0x8d6>
 8004ae4:	9b02      	ldr	r3, [sp, #8]
 8004ae6:	2b01      	cmp	r3, #1
 8004ae8:	f340 816c 	ble.w	8004dc4 <_dtoa_r+0x96c>
 8004aec:	2001      	movs	r0, #1
 8004aee:	4440      	add	r0, r8
 8004af0:	f010 001f 	ands.w	r0, r0, #31
 8004af4:	f000 8119 	beq.w	8004d2a <_dtoa_r+0x8d2>
 8004af8:	f1c0 0320 	rsb	r3, r0, #32
 8004afc:	2b04      	cmp	r3, #4
 8004afe:	f340 83ac 	ble.w	800525a <_dtoa_r+0xe02>
 8004b02:	f1c0 001c 	rsb	r0, r0, #28
 8004b06:	9b08      	ldr	r3, [sp, #32]
 8004b08:	4403      	add	r3, r0
 8004b0a:	9308      	str	r3, [sp, #32]
 8004b0c:	4404      	add	r4, r0
 8004b0e:	4480      	add	r8, r0
 8004b10:	9b08      	ldr	r3, [sp, #32]
 8004b12:	2b00      	cmp	r3, #0
 8004b14:	dd05      	ble.n	8004b22 <_dtoa_r+0x6ca>
 8004b16:	4651      	mov	r1, sl
 8004b18:	461a      	mov	r2, r3
 8004b1a:	4648      	mov	r0, r9
 8004b1c:	f001 fd52 	bl	80065c4 <__lshift>
 8004b20:	4682      	mov	sl, r0
 8004b22:	f1b8 0f00 	cmp.w	r8, #0
 8004b26:	dd05      	ble.n	8004b34 <_dtoa_r+0x6dc>
 8004b28:	4631      	mov	r1, r6
 8004b2a:	4642      	mov	r2, r8
 8004b2c:	4648      	mov	r0, r9
 8004b2e:	f001 fd49 	bl	80065c4 <__lshift>
 8004b32:	4606      	mov	r6, r0
 8004b34:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004b36:	2b00      	cmp	r3, #0
 8004b38:	d177      	bne.n	8004c2a <_dtoa_r+0x7d2>
 8004b3a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b3c:	2b00      	cmp	r3, #0
 8004b3e:	f340 8209 	ble.w	8004f54 <_dtoa_r+0xafc>
 8004b42:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b44:	2b00      	cmp	r3, #0
 8004b46:	f000 8089 	beq.w	8004c5c <_dtoa_r+0x804>
 8004b4a:	2c00      	cmp	r4, #0
 8004b4c:	f300 816b 	bgt.w	8004e26 <_dtoa_r+0x9ce>
 8004b50:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004b52:	2b00      	cmp	r3, #0
 8004b54:	f040 81cd 	bne.w	8004ef2 <_dtoa_r+0xa9a>
 8004b58:	46a8      	mov	r8, r5
 8004b5a:	9a00      	ldr	r2, [sp, #0]
 8004b5c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004b60:	f002 0201 	and.w	r2, r2, #1
 8004b64:	920a      	str	r2, [sp, #40]	; 0x28
 8004b66:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004b68:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004b6c:	441a      	add	r2, r3
 8004b6e:	465f      	mov	r7, fp
 8004b70:	9209      	str	r2, [sp, #36]	; 0x24
 8004b72:	46b3      	mov	fp, r6
 8004b74:	4659      	mov	r1, fp
 8004b76:	4650      	mov	r0, sl
 8004b78:	f7ff fbdc 	bl	8004334 <quorem>
 8004b7c:	4629      	mov	r1, r5
 8004b7e:	4604      	mov	r4, r0
 8004b80:	4650      	mov	r0, sl
 8004b82:	f001 fd75 	bl	8006670 <__mcmp>
 8004b86:	4659      	mov	r1, fp
 8004b88:	4606      	mov	r6, r0
 8004b8a:	4642      	mov	r2, r8
 8004b8c:	4648      	mov	r0, r9
 8004b8e:	f001 fd8b 	bl	80066a8 <__mdiff>
 8004b92:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004b96:	9300      	str	r3, [sp, #0]
 8004b98:	68c3      	ldr	r3, [r0, #12]
 8004b9a:	4601      	mov	r1, r0
 8004b9c:	2b00      	cmp	r3, #0
 8004b9e:	f040 81d4 	bne.w	8004f4a <_dtoa_r+0xaf2>
 8004ba2:	9008      	str	r0, [sp, #32]
 8004ba4:	4650      	mov	r0, sl
 8004ba6:	f001 fd63 	bl	8006670 <__mcmp>
 8004baa:	9a08      	ldr	r2, [sp, #32]
 8004bac:	9007      	str	r0, [sp, #28]
 8004bae:	4611      	mov	r1, r2
 8004bb0:	4648      	mov	r0, r9
 8004bb2:	f001 fb6d 	bl	8006290 <_Bfree>
 8004bb6:	9b07      	ldr	r3, [sp, #28]
 8004bb8:	b933      	cbnz	r3, 8004bc8 <_dtoa_r+0x770>
 8004bba:	9a02      	ldr	r2, [sp, #8]
 8004bbc:	b922      	cbnz	r2, 8004bc8 <_dtoa_r+0x770>
 8004bbe:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004bc0:	2b00      	cmp	r3, #0
 8004bc2:	f000 8319 	beq.w	80051f8 <_dtoa_r+0xda0>
 8004bc6:	9b02      	ldr	r3, [sp, #8]
 8004bc8:	2e00      	cmp	r6, #0
 8004bca:	f2c0 821c 	blt.w	8005006 <_dtoa_r+0xbae>
 8004bce:	d105      	bne.n	8004bdc <_dtoa_r+0x784>
 8004bd0:	9a02      	ldr	r2, [sp, #8]
 8004bd2:	b91a      	cbnz	r2, 8004bdc <_dtoa_r+0x784>
 8004bd4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004bd6:	2a00      	cmp	r2, #0
 8004bd8:	f000 8215 	beq.w	8005006 <_dtoa_r+0xbae>
 8004bdc:	2b00      	cmp	r3, #0
 8004bde:	f107 0401 	add.w	r4, r7, #1
 8004be2:	f300 8225 	bgt.w	8005030 <_dtoa_r+0xbd8>
 8004be6:	9b00      	ldr	r3, [sp, #0]
 8004be8:	703b      	strb	r3, [r7, #0]
 8004bea:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bec:	42bb      	cmp	r3, r7
 8004bee:	f000 8230 	beq.w	8005052 <_dtoa_r+0xbfa>
 8004bf2:	4651      	mov	r1, sl
 8004bf4:	2300      	movs	r3, #0
 8004bf6:	220a      	movs	r2, #10
 8004bf8:	4648      	mov	r0, r9
 8004bfa:	f001 fb53 	bl	80062a4 <__multadd>
 8004bfe:	4545      	cmp	r5, r8
 8004c00:	4682      	mov	sl, r0
 8004c02:	4629      	mov	r1, r5
 8004c04:	f04f 0300 	mov.w	r3, #0
 8004c08:	f04f 020a 	mov.w	r2, #10
 8004c0c:	4648      	mov	r0, r9
 8004c0e:	f000 8196 	beq.w	8004f3e <_dtoa_r+0xae6>
 8004c12:	f001 fb47 	bl	80062a4 <__multadd>
 8004c16:	4641      	mov	r1, r8
 8004c18:	4605      	mov	r5, r0
 8004c1a:	2300      	movs	r3, #0
 8004c1c:	220a      	movs	r2, #10
 8004c1e:	4648      	mov	r0, r9
 8004c20:	f001 fb40 	bl	80062a4 <__multadd>
 8004c24:	4627      	mov	r7, r4
 8004c26:	4680      	mov	r8, r0
 8004c28:	e7a4      	b.n	8004b74 <_dtoa_r+0x71c>
 8004c2a:	4631      	mov	r1, r6
 8004c2c:	4650      	mov	r0, sl
 8004c2e:	f001 fd1f 	bl	8006670 <__mcmp>
 8004c32:	2800      	cmp	r0, #0
 8004c34:	da81      	bge.n	8004b3a <_dtoa_r+0x6e2>
 8004c36:	9f06      	ldr	r7, [sp, #24]
 8004c38:	4651      	mov	r1, sl
 8004c3a:	2300      	movs	r3, #0
 8004c3c:	220a      	movs	r2, #10
 8004c3e:	4648      	mov	r0, r9
 8004c40:	3f01      	subs	r7, #1
 8004c42:	9706      	str	r7, [sp, #24]
 8004c44:	f001 fb2e 	bl	80062a4 <__multadd>
 8004c48:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004c4a:	4682      	mov	sl, r0
 8004c4c:	2b00      	cmp	r3, #0
 8004c4e:	f040 82eb 	bne.w	8005228 <_dtoa_r+0xdd0>
 8004c52:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004c54:	2b00      	cmp	r3, #0
 8004c56:	f340 82f3 	ble.w	8005240 <_dtoa_r+0xde8>
 8004c5a:	9309      	str	r3, [sp, #36]	; 0x24
 8004c5c:	465c      	mov	r4, fp
 8004c5e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004c62:	e002      	b.n	8004c6a <_dtoa_r+0x812>
 8004c64:	f001 fb1e 	bl	80062a4 <__multadd>
 8004c68:	4682      	mov	sl, r0
 8004c6a:	4631      	mov	r1, r6
 8004c6c:	4650      	mov	r0, sl
 8004c6e:	f7ff fb61 	bl	8004334 <quorem>
 8004c72:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004c76:	f804 7b01 	strb.w	r7, [r4], #1
 8004c7a:	eba4 030b 	sub.w	r3, r4, fp
 8004c7e:	4598      	cmp	r8, r3
 8004c80:	f04f 020a 	mov.w	r2, #10
 8004c84:	f04f 0300 	mov.w	r3, #0
 8004c88:	4651      	mov	r1, sl
 8004c8a:	4648      	mov	r0, r9
 8004c8c:	dcea      	bgt.n	8004c64 <_dtoa_r+0x80c>
 8004c8e:	2300      	movs	r3, #0
 8004c90:	9700      	str	r7, [sp, #0]
 8004c92:	9302      	str	r3, [sp, #8]
 8004c94:	4651      	mov	r1, sl
 8004c96:	2201      	movs	r2, #1
 8004c98:	4648      	mov	r0, r9
 8004c9a:	f001 fc93 	bl	80065c4 <__lshift>
 8004c9e:	4631      	mov	r1, r6
 8004ca0:	4682      	mov	sl, r0
 8004ca2:	f001 fce5 	bl	8006670 <__mcmp>
 8004ca6:	2800      	cmp	r0, #0
 8004ca8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004cac:	dc14      	bgt.n	8004cd8 <_dtoa_r+0x880>
 8004cae:	d108      	bne.n	8004cc2 <_dtoa_r+0x86a>
 8004cb0:	9b00      	ldr	r3, [sp, #0]
 8004cb2:	07db      	lsls	r3, r3, #31
 8004cb4:	d410      	bmi.n	8004cd8 <_dtoa_r+0x880>
 8004cb6:	e004      	b.n	8004cc2 <_dtoa_r+0x86a>
 8004cb8:	40240000 	.word	0x40240000
 8004cbc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004cc0:	461c      	mov	r4, r3
 8004cc2:	2a30      	cmp	r2, #48	; 0x30
 8004cc4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004cc8:	d0f8      	beq.n	8004cbc <_dtoa_r+0x864>
 8004cca:	e00b      	b.n	8004ce4 <_dtoa_r+0x88c>
 8004ccc:	459b      	cmp	fp, r3
 8004cce:	f000 814e 	beq.w	8004f6e <_dtoa_r+0xb16>
 8004cd2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004cd6:	461c      	mov	r4, r3
 8004cd8:	2a39      	cmp	r2, #57	; 0x39
 8004cda:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004cde:	d0f5      	beq.n	8004ccc <_dtoa_r+0x874>
 8004ce0:	3201      	adds	r2, #1
 8004ce2:	701a      	strb	r2, [r3, #0]
 8004ce4:	4631      	mov	r1, r6
 8004ce6:	4648      	mov	r0, r9
 8004ce8:	f001 fad2 	bl	8006290 <_Bfree>
 8004cec:	b155      	cbz	r5, 8004d04 <_dtoa_r+0x8ac>
 8004cee:	9902      	ldr	r1, [sp, #8]
 8004cf0:	b121      	cbz	r1, 8004cfc <_dtoa_r+0x8a4>
 8004cf2:	42a9      	cmp	r1, r5
 8004cf4:	d002      	beq.n	8004cfc <_dtoa_r+0x8a4>
 8004cf6:	4648      	mov	r0, r9
 8004cf8:	f001 faca 	bl	8006290 <_Bfree>
 8004cfc:	4629      	mov	r1, r5
 8004cfe:	4648      	mov	r0, r9
 8004d00:	f001 fac6 	bl	8006290 <_Bfree>
 8004d04:	4651      	mov	r1, sl
 8004d06:	4648      	mov	r0, r9
 8004d08:	f001 fac2 	bl	8006290 <_Bfree>
 8004d0c:	2200      	movs	r2, #0
 8004d0e:	9b06      	ldr	r3, [sp, #24]
 8004d10:	7022      	strb	r2, [r4, #0]
 8004d12:	9a05      	ldr	r2, [sp, #20]
 8004d14:	3301      	adds	r3, #1
 8004d16:	6013      	str	r3, [r2, #0]
 8004d18:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004d1a:	2b00      	cmp	r3, #0
 8004d1c:	f43f abdb 	beq.w	80044d6 <_dtoa_r+0x7e>
 8004d20:	4658      	mov	r0, fp
 8004d22:	601c      	str	r4, [r3, #0]
 8004d24:	b01b      	add	sp, #108	; 0x6c
 8004d26:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d2a:	201c      	movs	r0, #28
 8004d2c:	e6eb      	b.n	8004b06 <_dtoa_r+0x6ae>
 8004d2e:	4601      	mov	r1, r0
 8004d30:	4648      	mov	r0, r9
 8004d32:	f001 fbf7 	bl	8006524 <__pow5mult>
 8004d36:	9b02      	ldr	r3, [sp, #8]
 8004d38:	2b01      	cmp	r3, #1
 8004d3a:	4606      	mov	r6, r0
 8004d3c:	f340 80d4 	ble.w	8004ee8 <_dtoa_r+0xa90>
 8004d40:	2300      	movs	r3, #0
 8004d42:	930c      	str	r3, [sp, #48]	; 0x30
 8004d44:	6933      	ldr	r3, [r6, #16]
 8004d46:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004d4a:	6918      	ldr	r0, [r3, #16]
 8004d4c:	f001 faea 	bl	8006324 <__hi0bits>
 8004d50:	f1c0 0020 	rsb	r0, r0, #32
 8004d54:	e6cb      	b.n	8004aee <_dtoa_r+0x696>
 8004d56:	900d      	str	r0, [sp, #52]	; 0x34
 8004d58:	e42a      	b.n	80045b0 <_dtoa_r+0x158>
 8004d5a:	2501      	movs	r5, #1
 8004d5c:	e440      	b.n	80045e0 <_dtoa_r+0x188>
 8004d5e:	f1c3 0820 	rsb	r8, r3, #32
 8004d62:	9b00      	ldr	r3, [sp, #0]
 8004d64:	fa03 f008 	lsl.w	r0, r3, r8
 8004d68:	f7ff bbd8 	b.w	800451c <_dtoa_r+0xc4>
 8004d6c:	2300      	movs	r3, #0
 8004d6e:	930a      	str	r3, [sp, #40]	; 0x28
 8004d70:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004d74:	4413      	add	r3, r2
 8004d76:	930e      	str	r3, [sp, #56]	; 0x38
 8004d78:	3301      	adds	r3, #1
 8004d7a:	2b01      	cmp	r3, #1
 8004d7c:	461e      	mov	r6, r3
 8004d7e:	9309      	str	r3, [sp, #36]	; 0x24
 8004d80:	bfb8      	it	lt
 8004d82:	2601      	movlt	r6, #1
 8004d84:	2100      	movs	r1, #0
 8004d86:	2e17      	cmp	r6, #23
 8004d88:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004d8c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004d8e:	f77f ac89 	ble.w	80046a4 <_dtoa_r+0x24c>
 8004d92:	2201      	movs	r2, #1
 8004d94:	2304      	movs	r3, #4
 8004d96:	005b      	lsls	r3, r3, #1
 8004d98:	f103 0014 	add.w	r0, r3, #20
 8004d9c:	42b0      	cmp	r0, r6
 8004d9e:	4611      	mov	r1, r2
 8004da0:	f102 0201 	add.w	r2, r2, #1
 8004da4:	d9f7      	bls.n	8004d96 <_dtoa_r+0x93e>
 8004da6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004daa:	e47b      	b.n	80046a4 <_dtoa_r+0x24c>
 8004dac:	2300      	movs	r3, #0
 8004dae:	930a      	str	r3, [sp, #40]	; 0x28
 8004db0:	9e07      	ldr	r6, [sp, #28]
 8004db2:	2e00      	cmp	r6, #0
 8004db4:	f340 80e2 	ble.w	8004f7c <_dtoa_r+0xb24>
 8004db8:	960e      	str	r6, [sp, #56]	; 0x38
 8004dba:	9609      	str	r6, [sp, #36]	; 0x24
 8004dbc:	e7e2      	b.n	8004d84 <_dtoa_r+0x92c>
 8004dbe:	2301      	movs	r3, #1
 8004dc0:	930a      	str	r3, [sp, #40]	; 0x28
 8004dc2:	e7f5      	b.n	8004db0 <_dtoa_r+0x958>
 8004dc4:	9b00      	ldr	r3, [sp, #0]
 8004dc6:	2b00      	cmp	r3, #0
 8004dc8:	f47f ae90 	bne.w	8004aec <_dtoa_r+0x694>
 8004dcc:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004dd0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004dd4:	2b00      	cmp	r3, #0
 8004dd6:	f040 8192 	bne.w	80050fe <_dtoa_r+0xca6>
 8004dda:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004dde:	0d1b      	lsrs	r3, r3, #20
 8004de0:	051b      	lsls	r3, r3, #20
 8004de2:	b12b      	cbz	r3, 8004df0 <_dtoa_r+0x998>
 8004de4:	9b08      	ldr	r3, [sp, #32]
 8004de6:	3301      	adds	r3, #1
 8004de8:	9308      	str	r3, [sp, #32]
 8004dea:	f108 0801 	add.w	r8, r8, #1
 8004dee:	2301      	movs	r3, #1
 8004df0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004df2:	930c      	str	r3, [sp, #48]	; 0x30
 8004df4:	2a00      	cmp	r2, #0
 8004df6:	f43f ae79 	beq.w	8004aec <_dtoa_r+0x694>
 8004dfa:	e7a3      	b.n	8004d44 <_dtoa_r+0x8ec>
 8004dfc:	463a      	mov	r2, r7
 8004dfe:	4629      	mov	r1, r5
 8004e00:	4648      	mov	r0, r9
 8004e02:	f001 fb8f 	bl	8006524 <__pow5mult>
 8004e06:	4652      	mov	r2, sl
 8004e08:	4601      	mov	r1, r0
 8004e0a:	4605      	mov	r5, r0
 8004e0c:	4648      	mov	r0, r9
 8004e0e:	f001 fae3 	bl	80063d8 <__multiply>
 8004e12:	4651      	mov	r1, sl
 8004e14:	4607      	mov	r7, r0
 8004e16:	4648      	mov	r0, r9
 8004e18:	f001 fa3a 	bl	8006290 <_Bfree>
 8004e1c:	46ba      	mov	sl, r7
 8004e1e:	2e00      	cmp	r6, #0
 8004e20:	f43f ae57 	beq.w	8004ad2 <_dtoa_r+0x67a>
 8004e24:	e64f      	b.n	8004ac6 <_dtoa_r+0x66e>
 8004e26:	4629      	mov	r1, r5
 8004e28:	4622      	mov	r2, r4
 8004e2a:	4648      	mov	r0, r9
 8004e2c:	f001 fbca 	bl	80065c4 <__lshift>
 8004e30:	4605      	mov	r5, r0
 8004e32:	e68d      	b.n	8004b50 <_dtoa_r+0x6f8>
 8004e34:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004e36:	2a00      	cmp	r2, #0
 8004e38:	f000 815d 	beq.w	80050f6 <_dtoa_r+0xc9e>
 8004e3c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004e40:	9a08      	ldr	r2, [sp, #32]
 8004e42:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004e44:	4614      	mov	r4, r2
 8004e46:	441a      	add	r2, r3
 8004e48:	4498      	add	r8, r3
 8004e4a:	9208      	str	r2, [sp, #32]
 8004e4c:	e5f7      	b.n	8004a3e <_dtoa_r+0x5e6>
 8004e4e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e50:	2b00      	cmp	r3, #0
 8004e52:	f73f ad3e 	bgt.w	80048d2 <_dtoa_r+0x47a>
 8004e56:	f040 80bc 	bne.w	8004fd2 <_dtoa_r+0xb7a>
 8004e5a:	ec51 0b17 	vmov	r0, r1, d7
 8004e5e:	2200      	movs	r2, #0
 8004e60:	4bb2      	ldr	r3, [pc, #712]	; (800512c <_dtoa_r+0xcd4>)
 8004e62:	f7fb fe69 	bl	8000b38 <__aeabi_dmul>
 8004e66:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e6a:	f7fc f8eb 	bl	8001044 <__aeabi_dcmpge>
 8004e6e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004e70:	4635      	mov	r5, r6
 8004e72:	2800      	cmp	r0, #0
 8004e74:	d176      	bne.n	8004f64 <_dtoa_r+0xb0c>
 8004e76:	9a06      	ldr	r2, [sp, #24]
 8004e78:	2331      	movs	r3, #49	; 0x31
 8004e7a:	3201      	adds	r2, #1
 8004e7c:	9206      	str	r2, [sp, #24]
 8004e7e:	f88b 3000 	strb.w	r3, [fp]
 8004e82:	f10b 0401 	add.w	r4, fp, #1
 8004e86:	4631      	mov	r1, r6
 8004e88:	4648      	mov	r0, r9
 8004e8a:	f001 fa01 	bl	8006290 <_Bfree>
 8004e8e:	2d00      	cmp	r5, #0
 8004e90:	f47f af34 	bne.w	8004cfc <_dtoa_r+0x8a4>
 8004e94:	e736      	b.n	8004d04 <_dtoa_r+0x8ac>
 8004e96:	f000 8142 	beq.w	800511e <_dtoa_r+0xcc6>
 8004e9a:	9b06      	ldr	r3, [sp, #24]
 8004e9c:	425c      	negs	r4, r3
 8004e9e:	4ba4      	ldr	r3, [pc, #656]	; (8005130 <_dtoa_r+0xcd8>)
 8004ea0:	f004 020f 	and.w	r2, r4, #15
 8004ea4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ea8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004eac:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004eb0:	f7fb fe42 	bl	8000b38 <__aeabi_dmul>
 8004eb4:	1124      	asrs	r4, r4, #4
 8004eb6:	e9cd 0100 	strd	r0, r1, [sp]
 8004eba:	f000 81c6 	beq.w	800524a <_dtoa_r+0xdf2>
 8004ebe:	4d9d      	ldr	r5, [pc, #628]	; (8005134 <_dtoa_r+0xcdc>)
 8004ec0:	2300      	movs	r3, #0
 8004ec2:	2602      	movs	r6, #2
 8004ec4:	07e7      	lsls	r7, r4, #31
 8004ec6:	d505      	bpl.n	8004ed4 <_dtoa_r+0xa7c>
 8004ec8:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004ecc:	f7fb fe34 	bl	8000b38 <__aeabi_dmul>
 8004ed0:	3601      	adds	r6, #1
 8004ed2:	2301      	movs	r3, #1
 8004ed4:	1064      	asrs	r4, r4, #1
 8004ed6:	f105 0508 	add.w	r5, r5, #8
 8004eda:	d1f3      	bne.n	8004ec4 <_dtoa_r+0xa6c>
 8004edc:	2b00      	cmp	r3, #0
 8004ede:	f43f ac27 	beq.w	8004730 <_dtoa_r+0x2d8>
 8004ee2:	e9cd 0100 	strd	r0, r1, [sp]
 8004ee6:	e423      	b.n	8004730 <_dtoa_r+0x2d8>
 8004ee8:	9b00      	ldr	r3, [sp, #0]
 8004eea:	2b00      	cmp	r3, #0
 8004eec:	f43f af6e 	beq.w	8004dcc <_dtoa_r+0x974>
 8004ef0:	e726      	b.n	8004d40 <_dtoa_r+0x8e8>
 8004ef2:	6869      	ldr	r1, [r5, #4]
 8004ef4:	4648      	mov	r0, r9
 8004ef6:	f001 f9a5 	bl	8006244 <_Balloc>
 8004efa:	692b      	ldr	r3, [r5, #16]
 8004efc:	3302      	adds	r3, #2
 8004efe:	009a      	lsls	r2, r3, #2
 8004f00:	4604      	mov	r4, r0
 8004f02:	f105 010c 	add.w	r1, r5, #12
 8004f06:	300c      	adds	r0, #12
 8004f08:	f7fb fafa 	bl	8000500 <memcpy>
 8004f0c:	4621      	mov	r1, r4
 8004f0e:	2201      	movs	r2, #1
 8004f10:	4648      	mov	r0, r9
 8004f12:	f001 fb57 	bl	80065c4 <__lshift>
 8004f16:	4680      	mov	r8, r0
 8004f18:	e61f      	b.n	8004b5a <_dtoa_r+0x702>
 8004f1a:	2400      	movs	r4, #0
 8004f1c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004f20:	4621      	mov	r1, r4
 8004f22:	4648      	mov	r0, r9
 8004f24:	f001 f98e 	bl	8006244 <_Balloc>
 8004f28:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004f2c:	930e      	str	r3, [sp, #56]	; 0x38
 8004f2e:	9309      	str	r3, [sp, #36]	; 0x24
 8004f30:	2301      	movs	r3, #1
 8004f32:	4683      	mov	fp, r0
 8004f34:	9407      	str	r4, [sp, #28]
 8004f36:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004f3a:	930a      	str	r3, [sp, #40]	; 0x28
 8004f3c:	e4b6      	b.n	80048ac <_dtoa_r+0x454>
 8004f3e:	f001 f9b1 	bl	80062a4 <__multadd>
 8004f42:	4627      	mov	r7, r4
 8004f44:	4605      	mov	r5, r0
 8004f46:	4680      	mov	r8, r0
 8004f48:	e614      	b.n	8004b74 <_dtoa_r+0x71c>
 8004f4a:	4648      	mov	r0, r9
 8004f4c:	f001 f9a0 	bl	8006290 <_Bfree>
 8004f50:	2301      	movs	r3, #1
 8004f52:	e639      	b.n	8004bc8 <_dtoa_r+0x770>
 8004f54:	9b02      	ldr	r3, [sp, #8]
 8004f56:	2b02      	cmp	r3, #2
 8004f58:	f77f adf3 	ble.w	8004b42 <_dtoa_r+0x6ea>
 8004f5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f5e:	2b00      	cmp	r3, #0
 8004f60:	f000 80cf 	beq.w	8005102 <_dtoa_r+0xcaa>
 8004f64:	9b07      	ldr	r3, [sp, #28]
 8004f66:	43db      	mvns	r3, r3
 8004f68:	9306      	str	r3, [sp, #24]
 8004f6a:	465c      	mov	r4, fp
 8004f6c:	e78b      	b.n	8004e86 <_dtoa_r+0xa2e>
 8004f6e:	9a06      	ldr	r2, [sp, #24]
 8004f70:	2331      	movs	r3, #49	; 0x31
 8004f72:	3201      	adds	r2, #1
 8004f74:	9206      	str	r2, [sp, #24]
 8004f76:	f88b 3000 	strb.w	r3, [fp]
 8004f7a:	e6b3      	b.n	8004ce4 <_dtoa_r+0x88c>
 8004f7c:	2401      	movs	r4, #1
 8004f7e:	9409      	str	r4, [sp, #36]	; 0x24
 8004f80:	9407      	str	r4, [sp, #28]
 8004f82:	f7ff bb8b 	b.w	800469c <_dtoa_r+0x244>
 8004f86:	4630      	mov	r0, r6
 8004f88:	f7fb fd6c 	bl	8000a64 <__aeabi_i2d>
 8004f8c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f90:	f7fb fdd2 	bl	8000b38 <__aeabi_dmul>
 8004f94:	2200      	movs	r2, #0
 8004f96:	4b68      	ldr	r3, [pc, #416]	; (8005138 <_dtoa_r+0xce0>)
 8004f98:	f7fb fc18 	bl	80007cc <__adddf3>
 8004f9c:	4606      	mov	r6, r0
 8004f9e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004fa2:	2200      	movs	r2, #0
 8004fa4:	4b61      	ldr	r3, [pc, #388]	; (800512c <_dtoa_r+0xcd4>)
 8004fa6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004faa:	f7fb fc0d 	bl	80007c8 <__aeabi_dsub>
 8004fae:	4632      	mov	r2, r6
 8004fb0:	463b      	mov	r3, r7
 8004fb2:	4604      	mov	r4, r0
 8004fb4:	460d      	mov	r5, r1
 8004fb6:	f7fc f84f 	bl	8001058 <__aeabi_dcmpgt>
 8004fba:	2800      	cmp	r0, #0
 8004fbc:	d14f      	bne.n	800505e <_dtoa_r+0xc06>
 8004fbe:	4632      	mov	r2, r6
 8004fc0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004fc4:	4620      	mov	r0, r4
 8004fc6:	4629      	mov	r1, r5
 8004fc8:	f7fc f828 	bl	800101c <__aeabi_dcmplt>
 8004fcc:	2800      	cmp	r0, #0
 8004fce:	f43f ac69 	beq.w	80048a4 <_dtoa_r+0x44c>
 8004fd2:	2600      	movs	r6, #0
 8004fd4:	4635      	mov	r5, r6
 8004fd6:	e7c5      	b.n	8004f64 <_dtoa_r+0xb0c>
 8004fd8:	2301      	movs	r3, #1
 8004fda:	930a      	str	r3, [sp, #40]	; 0x28
 8004fdc:	e6c8      	b.n	8004d70 <_dtoa_r+0x918>
 8004fde:	4651      	mov	r1, sl
 8004fe0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004fe2:	4648      	mov	r0, r9
 8004fe4:	f001 fa9e 	bl	8006524 <__pow5mult>
 8004fe8:	4682      	mov	sl, r0
 8004fea:	e572      	b.n	8004ad2 <_dtoa_r+0x67a>
 8004fec:	f8dd a000 	ldr.w	sl, [sp]
 8004ff0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004ff4:	e686      	b.n	8004d04 <_dtoa_r+0x8ac>
 8004ff6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004ff8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004ffa:	1afb      	subs	r3, r7, r3
 8004ffc:	441a      	add	r2, r3
 8004ffe:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005002:	2700      	movs	r7, #0
 8005004:	e512      	b.n	8004a2c <_dtoa_r+0x5d4>
 8005006:	2b00      	cmp	r3, #0
 8005008:	9402      	str	r4, [sp, #8]
 800500a:	465e      	mov	r6, fp
 800500c:	f107 0401 	add.w	r4, r7, #1
 8005010:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005014:	f300 80ba 	bgt.w	800518c <_dtoa_r+0xd34>
 8005018:	9b00      	ldr	r3, [sp, #0]
 800501a:	9502      	str	r5, [sp, #8]
 800501c:	703b      	strb	r3, [r7, #0]
 800501e:	4645      	mov	r5, r8
 8005020:	e660      	b.n	8004ce4 <_dtoa_r+0x88c>
 8005022:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005026:	2602      	movs	r6, #2
 8005028:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800502c:	f7ff bb67 	b.w	80046fe <_dtoa_r+0x2a6>
 8005030:	9b00      	ldr	r3, [sp, #0]
 8005032:	2b39      	cmp	r3, #57	; 0x39
 8005034:	465e      	mov	r6, fp
 8005036:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800503a:	f000 80b9 	beq.w	80051b0 <_dtoa_r+0xd58>
 800503e:	9b00      	ldr	r3, [sp, #0]
 8005040:	9502      	str	r5, [sp, #8]
 8005042:	3301      	adds	r3, #1
 8005044:	703b      	strb	r3, [r7, #0]
 8005046:	4645      	mov	r5, r8
 8005048:	e64c      	b.n	8004ce4 <_dtoa_r+0x88c>
 800504a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800504e:	1a9c      	subs	r4, r3, r2
 8005050:	e4f5      	b.n	8004a3e <_dtoa_r+0x5e6>
 8005052:	465e      	mov	r6, fp
 8005054:	9502      	str	r5, [sp, #8]
 8005056:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800505a:	4645      	mov	r5, r8
 800505c:	e61a      	b.n	8004c94 <_dtoa_r+0x83c>
 800505e:	2600      	movs	r6, #0
 8005060:	4635      	mov	r5, r6
 8005062:	e708      	b.n	8004e76 <_dtoa_r+0xa1e>
 8005064:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005068:	e9dd 0100 	ldrd	r0, r1, [sp]
 800506c:	f7fb fd64 	bl	8000b38 <__aeabi_dmul>
 8005070:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005072:	f88b 5000 	strb.w	r5, [fp]
 8005076:	2b01      	cmp	r3, #1
 8005078:	e9cd 0100 	strd	r0, r1, [sp]
 800507c:	d020      	beq.n	80050c0 <_dtoa_r+0xc68>
 800507e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005080:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005084:	445b      	add	r3, fp
 8005086:	4698      	mov	r8, r3
 8005088:	2200      	movs	r2, #0
 800508a:	4b2c      	ldr	r3, [pc, #176]	; (800513c <_dtoa_r+0xce4>)
 800508c:	4630      	mov	r0, r6
 800508e:	4639      	mov	r1, r7
 8005090:	f7fb fd52 	bl	8000b38 <__aeabi_dmul>
 8005094:	460f      	mov	r7, r1
 8005096:	4606      	mov	r6, r0
 8005098:	f7fb fffe 	bl	8001098 <__aeabi_d2iz>
 800509c:	4605      	mov	r5, r0
 800509e:	f7fb fce1 	bl	8000a64 <__aeabi_i2d>
 80050a2:	3530      	adds	r5, #48	; 0x30
 80050a4:	4602      	mov	r2, r0
 80050a6:	460b      	mov	r3, r1
 80050a8:	4630      	mov	r0, r6
 80050aa:	4639      	mov	r1, r7
 80050ac:	f7fb fb8c 	bl	80007c8 <__aeabi_dsub>
 80050b0:	f804 5b01 	strb.w	r5, [r4], #1
 80050b4:	4544      	cmp	r4, r8
 80050b6:	4606      	mov	r6, r0
 80050b8:	460f      	mov	r7, r1
 80050ba:	d1e5      	bne.n	8005088 <_dtoa_r+0xc30>
 80050bc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80050c0:	4b1f      	ldr	r3, [pc, #124]	; (8005140 <_dtoa_r+0xce8>)
 80050c2:	2200      	movs	r2, #0
 80050c4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80050c8:	f7fb fb80 	bl	80007cc <__adddf3>
 80050cc:	4632      	mov	r2, r6
 80050ce:	463b      	mov	r3, r7
 80050d0:	f7fb ffa4 	bl	800101c <__aeabi_dcmplt>
 80050d4:	2800      	cmp	r0, #0
 80050d6:	d070      	beq.n	80051ba <_dtoa_r+0xd62>
 80050d8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80050da:	9306      	str	r3, [sp, #24]
 80050dc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050e0:	e48f      	b.n	8004a02 <_dtoa_r+0x5aa>
 80050e2:	2330      	movs	r3, #48	; 0x30
 80050e4:	f88b 3000 	strb.w	r3, [fp]
 80050e8:	9b06      	ldr	r3, [sp, #24]
 80050ea:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050ee:	3301      	adds	r3, #1
 80050f0:	9306      	str	r3, [sp, #24]
 80050f2:	465b      	mov	r3, fp
 80050f4:	e489      	b.n	8004a0a <_dtoa_r+0x5b2>
 80050f6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80050f8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80050fc:	e6a0      	b.n	8004e40 <_dtoa_r+0x9e8>
 80050fe:	2300      	movs	r3, #0
 8005100:	e676      	b.n	8004df0 <_dtoa_r+0x998>
 8005102:	4631      	mov	r1, r6
 8005104:	2205      	movs	r2, #5
 8005106:	4648      	mov	r0, r9
 8005108:	f001 f8cc 	bl	80062a4 <__multadd>
 800510c:	4601      	mov	r1, r0
 800510e:	4606      	mov	r6, r0
 8005110:	4650      	mov	r0, sl
 8005112:	f001 faad 	bl	8006670 <__mcmp>
 8005116:	2800      	cmp	r0, #0
 8005118:	f73f aead 	bgt.w	8004e76 <_dtoa_r+0xa1e>
 800511c:	e722      	b.n	8004f64 <_dtoa_r+0xb0c>
 800511e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005122:	2602      	movs	r6, #2
 8005124:	ed8d 7b00 	vstr	d7, [sp]
 8005128:	f7ff bb02 	b.w	8004730 <_dtoa_r+0x2d8>
 800512c:	40140000 	.word	0x40140000
 8005130:	080074e0 	.word	0x080074e0
 8005134:	080074b8 	.word	0x080074b8
 8005138:	401c0000 	.word	0x401c0000
 800513c:	40240000 	.word	0x40240000
 8005140:	3fe00000 	.word	0x3fe00000
 8005144:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005146:	2b00      	cmp	r3, #0
 8005148:	f43f af1d 	beq.w	8004f86 <_dtoa_r+0xb2e>
 800514c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800514e:	2c00      	cmp	r4, #0
 8005150:	f77f aba8 	ble.w	80048a4 <_dtoa_r+0x44c>
 8005154:	2200      	movs	r2, #0
 8005156:	4b45      	ldr	r3, [pc, #276]	; (800526c <_dtoa_r+0xe14>)
 8005158:	e9dd 0100 	ldrd	r0, r1, [sp]
 800515c:	f7fb fcec 	bl	8000b38 <__aeabi_dmul>
 8005160:	e9cd 0100 	strd	r0, r1, [sp]
 8005164:	1c70      	adds	r0, r6, #1
 8005166:	f7fb fc7d 	bl	8000a64 <__aeabi_i2d>
 800516a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800516e:	f7fb fce3 	bl	8000b38 <__aeabi_dmul>
 8005172:	4b3f      	ldr	r3, [pc, #252]	; (8005270 <_dtoa_r+0xe18>)
 8005174:	2200      	movs	r2, #0
 8005176:	f7fb fb29 	bl	80007cc <__adddf3>
 800517a:	9b06      	ldr	r3, [sp, #24]
 800517c:	9412      	str	r4, [sp, #72]	; 0x48
 800517e:	3b01      	subs	r3, #1
 8005180:	4606      	mov	r6, r0
 8005182:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005186:	9316      	str	r3, [sp, #88]	; 0x58
 8005188:	f7ff baf3 	b.w	8004772 <_dtoa_r+0x31a>
 800518c:	4651      	mov	r1, sl
 800518e:	2201      	movs	r2, #1
 8005190:	4648      	mov	r0, r9
 8005192:	f001 fa17 	bl	80065c4 <__lshift>
 8005196:	4631      	mov	r1, r6
 8005198:	4682      	mov	sl, r0
 800519a:	f001 fa69 	bl	8006670 <__mcmp>
 800519e:	2800      	cmp	r0, #0
 80051a0:	dd3b      	ble.n	800521a <_dtoa_r+0xdc2>
 80051a2:	9b00      	ldr	r3, [sp, #0]
 80051a4:	2b39      	cmp	r3, #57	; 0x39
 80051a6:	d003      	beq.n	80051b0 <_dtoa_r+0xd58>
 80051a8:	9b02      	ldr	r3, [sp, #8]
 80051aa:	3331      	adds	r3, #49	; 0x31
 80051ac:	9300      	str	r3, [sp, #0]
 80051ae:	e733      	b.n	8005018 <_dtoa_r+0xbc0>
 80051b0:	2239      	movs	r2, #57	; 0x39
 80051b2:	9502      	str	r5, [sp, #8]
 80051b4:	703a      	strb	r2, [r7, #0]
 80051b6:	4645      	mov	r5, r8
 80051b8:	e58e      	b.n	8004cd8 <_dtoa_r+0x880>
 80051ba:	e9dd 2300 	ldrd	r2, r3, [sp]
 80051be:	2000      	movs	r0, #0
 80051c0:	492c      	ldr	r1, [pc, #176]	; (8005274 <_dtoa_r+0xe1c>)
 80051c2:	f7fb fb01 	bl	80007c8 <__aeabi_dsub>
 80051c6:	4632      	mov	r2, r6
 80051c8:	463b      	mov	r3, r7
 80051ca:	f7fb ff45 	bl	8001058 <__aeabi_dcmpgt>
 80051ce:	b910      	cbnz	r0, 80051d6 <_dtoa_r+0xd7e>
 80051d0:	f7ff bb68 	b.w	80048a4 <_dtoa_r+0x44c>
 80051d4:	4614      	mov	r4, r2
 80051d6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80051da:	2b30      	cmp	r3, #48	; 0x30
 80051dc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80051e0:	d0f8      	beq.n	80051d4 <_dtoa_r+0xd7c>
 80051e2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051e4:	9306      	str	r3, [sp, #24]
 80051e6:	e58d      	b.n	8004d04 <_dtoa_r+0x8ac>
 80051e8:	46d9      	mov	r9, fp
 80051ea:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80051ee:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80051f2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051f4:	9306      	str	r3, [sp, #24]
 80051f6:	e404      	b.n	8004a02 <_dtoa_r+0x5aa>
 80051f8:	9b00      	ldr	r3, [sp, #0]
 80051fa:	2b39      	cmp	r3, #57	; 0x39
 80051fc:	4621      	mov	r1, r4
 80051fe:	4632      	mov	r2, r6
 8005200:	f107 0401 	add.w	r4, r7, #1
 8005204:	465e      	mov	r6, fp
 8005206:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800520a:	d0d1      	beq.n	80051b0 <_dtoa_r+0xd58>
 800520c:	2a00      	cmp	r2, #0
 800520e:	f77f af03 	ble.w	8005018 <_dtoa_r+0xbc0>
 8005212:	460b      	mov	r3, r1
 8005214:	3331      	adds	r3, #49	; 0x31
 8005216:	9300      	str	r3, [sp, #0]
 8005218:	e6fe      	b.n	8005018 <_dtoa_r+0xbc0>
 800521a:	f47f aefd 	bne.w	8005018 <_dtoa_r+0xbc0>
 800521e:	9b00      	ldr	r3, [sp, #0]
 8005220:	07da      	lsls	r2, r3, #31
 8005222:	f57f aef9 	bpl.w	8005018 <_dtoa_r+0xbc0>
 8005226:	e7bc      	b.n	80051a2 <_dtoa_r+0xd4a>
 8005228:	4629      	mov	r1, r5
 800522a:	2300      	movs	r3, #0
 800522c:	220a      	movs	r2, #10
 800522e:	4648      	mov	r0, r9
 8005230:	f001 f838 	bl	80062a4 <__multadd>
 8005234:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005236:	2b00      	cmp	r3, #0
 8005238:	4605      	mov	r5, r0
 800523a:	dd09      	ble.n	8005250 <_dtoa_r+0xdf8>
 800523c:	9309      	str	r3, [sp, #36]	; 0x24
 800523e:	e484      	b.n	8004b4a <_dtoa_r+0x6f2>
 8005240:	9b02      	ldr	r3, [sp, #8]
 8005242:	2b02      	cmp	r3, #2
 8005244:	dc0e      	bgt.n	8005264 <_dtoa_r+0xe0c>
 8005246:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005248:	e507      	b.n	8004c5a <_dtoa_r+0x802>
 800524a:	2602      	movs	r6, #2
 800524c:	f7ff ba70 	b.w	8004730 <_dtoa_r+0x2d8>
 8005250:	9b02      	ldr	r3, [sp, #8]
 8005252:	2b02      	cmp	r3, #2
 8005254:	dc06      	bgt.n	8005264 <_dtoa_r+0xe0c>
 8005256:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005258:	e7f0      	b.n	800523c <_dtoa_r+0xde4>
 800525a:	f43f ac59 	beq.w	8004b10 <_dtoa_r+0x6b8>
 800525e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005262:	e450      	b.n	8004b06 <_dtoa_r+0x6ae>
 8005264:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005266:	9309      	str	r3, [sp, #36]	; 0x24
 8005268:	e678      	b.n	8004f5c <_dtoa_r+0xb04>
 800526a:	bf00      	nop
 800526c:	40240000 	.word	0x40240000
 8005270:	401c0000 	.word	0x401c0000
 8005274:	3fe00000 	.word	0x3fe00000

08005278 <__sflush_r>:
 8005278:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800527c:	b29a      	uxth	r2, r3
 800527e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005282:	460c      	mov	r4, r1
 8005284:	0711      	lsls	r1, r2, #28
 8005286:	4680      	mov	r8, r0
 8005288:	d444      	bmi.n	8005314 <__sflush_r+0x9c>
 800528a:	6862      	ldr	r2, [r4, #4]
 800528c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005290:	2a00      	cmp	r2, #0
 8005292:	81a3      	strh	r3, [r4, #12]
 8005294:	dd59      	ble.n	800534a <__sflush_r+0xd2>
 8005296:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005298:	2d00      	cmp	r5, #0
 800529a:	d053      	beq.n	8005344 <__sflush_r+0xcc>
 800529c:	2200      	movs	r2, #0
 800529e:	b29b      	uxth	r3, r3
 80052a0:	f8d8 6000 	ldr.w	r6, [r8]
 80052a4:	69e1      	ldr	r1, [r4, #28]
 80052a6:	f8c8 2000 	str.w	r2, [r8]
 80052aa:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80052ae:	f040 8083 	bne.w	80053b8 <__sflush_r+0x140>
 80052b2:	2301      	movs	r3, #1
 80052b4:	4640      	mov	r0, r8
 80052b6:	47a8      	blx	r5
 80052b8:	1c42      	adds	r2, r0, #1
 80052ba:	d04a      	beq.n	8005352 <__sflush_r+0xda>
 80052bc:	89a3      	ldrh	r3, [r4, #12]
 80052be:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80052c0:	69e1      	ldr	r1, [r4, #28]
 80052c2:	075b      	lsls	r3, r3, #29
 80052c4:	d505      	bpl.n	80052d2 <__sflush_r+0x5a>
 80052c6:	6862      	ldr	r2, [r4, #4]
 80052c8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80052ca:	1a80      	subs	r0, r0, r2
 80052cc:	b10b      	cbz	r3, 80052d2 <__sflush_r+0x5a>
 80052ce:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80052d0:	1ac0      	subs	r0, r0, r3
 80052d2:	4602      	mov	r2, r0
 80052d4:	2300      	movs	r3, #0
 80052d6:	4640      	mov	r0, r8
 80052d8:	47a8      	blx	r5
 80052da:	1c47      	adds	r7, r0, #1
 80052dc:	d045      	beq.n	800536a <__sflush_r+0xf2>
 80052de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80052e2:	6922      	ldr	r2, [r4, #16]
 80052e4:	6022      	str	r2, [r4, #0]
 80052e6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80052ea:	2200      	movs	r2, #0
 80052ec:	81a3      	strh	r3, [r4, #12]
 80052ee:	04db      	lsls	r3, r3, #19
 80052f0:	6062      	str	r2, [r4, #4]
 80052f2:	d500      	bpl.n	80052f6 <__sflush_r+0x7e>
 80052f4:	6520      	str	r0, [r4, #80]	; 0x50
 80052f6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80052f8:	f8c8 6000 	str.w	r6, [r8]
 80052fc:	b311      	cbz	r1, 8005344 <__sflush_r+0xcc>
 80052fe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005302:	4299      	cmp	r1, r3
 8005304:	d002      	beq.n	800530c <__sflush_r+0x94>
 8005306:	4640      	mov	r0, r8
 8005308:	f000 f95e 	bl	80055c8 <_free_r>
 800530c:	2000      	movs	r0, #0
 800530e:	6320      	str	r0, [r4, #48]	; 0x30
 8005310:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005314:	6926      	ldr	r6, [r4, #16]
 8005316:	b1ae      	cbz	r6, 8005344 <__sflush_r+0xcc>
 8005318:	6825      	ldr	r5, [r4, #0]
 800531a:	6026      	str	r6, [r4, #0]
 800531c:	0792      	lsls	r2, r2, #30
 800531e:	bf0c      	ite	eq
 8005320:	6963      	ldreq	r3, [r4, #20]
 8005322:	2300      	movne	r3, #0
 8005324:	1bad      	subs	r5, r5, r6
 8005326:	60a3      	str	r3, [r4, #8]
 8005328:	e00a      	b.n	8005340 <__sflush_r+0xc8>
 800532a:	462b      	mov	r3, r5
 800532c:	4632      	mov	r2, r6
 800532e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005330:	69e1      	ldr	r1, [r4, #28]
 8005332:	4640      	mov	r0, r8
 8005334:	47b8      	blx	r7
 8005336:	2800      	cmp	r0, #0
 8005338:	eba5 0500 	sub.w	r5, r5, r0
 800533c:	4406      	add	r6, r0
 800533e:	dd2b      	ble.n	8005398 <__sflush_r+0x120>
 8005340:	2d00      	cmp	r5, #0
 8005342:	dcf2      	bgt.n	800532a <__sflush_r+0xb2>
 8005344:	2000      	movs	r0, #0
 8005346:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800534a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800534c:	2a00      	cmp	r2, #0
 800534e:	dca2      	bgt.n	8005296 <__sflush_r+0x1e>
 8005350:	e7f8      	b.n	8005344 <__sflush_r+0xcc>
 8005352:	f8d8 3000 	ldr.w	r3, [r8]
 8005356:	2b00      	cmp	r3, #0
 8005358:	d0b0      	beq.n	80052bc <__sflush_r+0x44>
 800535a:	2b1d      	cmp	r3, #29
 800535c:	d001      	beq.n	8005362 <__sflush_r+0xea>
 800535e:	2b16      	cmp	r3, #22
 8005360:	d12c      	bne.n	80053bc <__sflush_r+0x144>
 8005362:	f8c8 6000 	str.w	r6, [r8]
 8005366:	2000      	movs	r0, #0
 8005368:	e7ed      	b.n	8005346 <__sflush_r+0xce>
 800536a:	f8d8 1000 	ldr.w	r1, [r8]
 800536e:	291d      	cmp	r1, #29
 8005370:	d81a      	bhi.n	80053a8 <__sflush_r+0x130>
 8005372:	4b15      	ldr	r3, [pc, #84]	; (80053c8 <__sflush_r+0x150>)
 8005374:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005378:	40cb      	lsrs	r3, r1
 800537a:	43db      	mvns	r3, r3
 800537c:	f013 0301 	ands.w	r3, r3, #1
 8005380:	d114      	bne.n	80053ac <__sflush_r+0x134>
 8005382:	6925      	ldr	r5, [r4, #16]
 8005384:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005388:	e9c4 5300 	strd	r5, r3, [r4]
 800538c:	04d5      	lsls	r5, r2, #19
 800538e:	81a2      	strh	r2, [r4, #12]
 8005390:	d5b1      	bpl.n	80052f6 <__sflush_r+0x7e>
 8005392:	2900      	cmp	r1, #0
 8005394:	d1af      	bne.n	80052f6 <__sflush_r+0x7e>
 8005396:	e7ad      	b.n	80052f4 <__sflush_r+0x7c>
 8005398:	89a3      	ldrh	r3, [r4, #12]
 800539a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800539e:	81a3      	strh	r3, [r4, #12]
 80053a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80053a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80053a8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80053ac:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80053b0:	81a2      	strh	r2, [r4, #12]
 80053b2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80053b6:	e7c6      	b.n	8005346 <__sflush_r+0xce>
 80053b8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80053ba:	e782      	b.n	80052c2 <__sflush_r+0x4a>
 80053bc:	89a3      	ldrh	r3, [r4, #12]
 80053be:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80053c2:	81a3      	strh	r3, [r4, #12]
 80053c4:	e7bf      	b.n	8005346 <__sflush_r+0xce>
 80053c6:	bf00      	nop
 80053c8:	20400001 	.word	0x20400001

080053cc <_fflush_r>:
 80053cc:	b538      	push	{r3, r4, r5, lr}
 80053ce:	460d      	mov	r5, r1
 80053d0:	4604      	mov	r4, r0
 80053d2:	b108      	cbz	r0, 80053d8 <_fflush_r+0xc>
 80053d4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80053d6:	b1a3      	cbz	r3, 8005402 <_fflush_r+0x36>
 80053d8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80053dc:	b1b8      	cbz	r0, 800540e <_fflush_r+0x42>
 80053de:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80053e0:	07db      	lsls	r3, r3, #31
 80053e2:	d401      	bmi.n	80053e8 <_fflush_r+0x1c>
 80053e4:	0581      	lsls	r1, r0, #22
 80053e6:	d51a      	bpl.n	800541e <_fflush_r+0x52>
 80053e8:	4620      	mov	r0, r4
 80053ea:	4629      	mov	r1, r5
 80053ec:	f7ff ff44 	bl	8005278 <__sflush_r>
 80053f0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80053f2:	07da      	lsls	r2, r3, #31
 80053f4:	4604      	mov	r4, r0
 80053f6:	d402      	bmi.n	80053fe <_fflush_r+0x32>
 80053f8:	89ab      	ldrh	r3, [r5, #12]
 80053fa:	059b      	lsls	r3, r3, #22
 80053fc:	d50a      	bpl.n	8005414 <_fflush_r+0x48>
 80053fe:	4620      	mov	r0, r4
 8005400:	bd38      	pop	{r3, r4, r5, pc}
 8005402:	f000 f83f 	bl	8005484 <__sinit>
 8005406:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800540a:	2800      	cmp	r0, #0
 800540c:	d1e7      	bne.n	80053de <_fflush_r+0x12>
 800540e:	4604      	mov	r4, r0
 8005410:	4620      	mov	r0, r4
 8005412:	bd38      	pop	{r3, r4, r5, pc}
 8005414:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005416:	f000 fb87 	bl	8005b28 <__retarget_lock_release_recursive>
 800541a:	4620      	mov	r0, r4
 800541c:	bd38      	pop	{r3, r4, r5, pc}
 800541e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005420:	f000 fb80 	bl	8005b24 <__retarget_lock_acquire_recursive>
 8005424:	e7e0      	b.n	80053e8 <_fflush_r+0x1c>
 8005426:	bf00      	nop

08005428 <std>:
 8005428:	b510      	push	{r4, lr}
 800542a:	2300      	movs	r3, #0
 800542c:	4604      	mov	r4, r0
 800542e:	8181      	strh	r1, [r0, #12]
 8005430:	81c2      	strh	r2, [r0, #14]
 8005432:	e9c0 3300 	strd	r3, r3, [r0]
 8005436:	6083      	str	r3, [r0, #8]
 8005438:	6643      	str	r3, [r0, #100]	; 0x64
 800543a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800543e:	6183      	str	r3, [r0, #24]
 8005440:	4619      	mov	r1, r3
 8005442:	2208      	movs	r2, #8
 8005444:	305c      	adds	r0, #92	; 0x5c
 8005446:	f7fd f8cb 	bl	80025e0 <memset>
 800544a:	4807      	ldr	r0, [pc, #28]	; (8005468 <std+0x40>)
 800544c:	4907      	ldr	r1, [pc, #28]	; (800546c <std+0x44>)
 800544e:	4a08      	ldr	r2, [pc, #32]	; (8005470 <std+0x48>)
 8005450:	4b08      	ldr	r3, [pc, #32]	; (8005474 <std+0x4c>)
 8005452:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005454:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005458:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800545c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005460:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005464:	f000 bb5a 	b.w	8005b1c <__retarget_lock_init_recursive>
 8005468:	08006c41 	.word	0x08006c41
 800546c:	08006c65 	.word	0x08006c65
 8005470:	08006ca1 	.word	0x08006ca1
 8005474:	08006cc1 	.word	0x08006cc1

08005478 <_cleanup_r>:
 8005478:	4901      	ldr	r1, [pc, #4]	; (8005480 <_cleanup_r+0x8>)
 800547a:	f000 bb17 	b.w	8005aac <_fwalk_reent>
 800547e:	bf00      	nop
 8005480:	08006f31 	.word	0x08006f31

08005484 <__sinit>:
 8005484:	b510      	push	{r4, lr}
 8005486:	4604      	mov	r4, r0
 8005488:	4812      	ldr	r0, [pc, #72]	; (80054d4 <__sinit+0x50>)
 800548a:	f000 fb4b 	bl	8005b24 <__retarget_lock_acquire_recursive>
 800548e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005490:	b9d2      	cbnz	r2, 80054c8 <__sinit+0x44>
 8005492:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005496:	4810      	ldr	r0, [pc, #64]	; (80054d8 <__sinit+0x54>)
 8005498:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800549c:	2103      	movs	r1, #3
 800549e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80054a2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80054a4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80054a8:	6860      	ldr	r0, [r4, #4]
 80054aa:	2104      	movs	r1, #4
 80054ac:	f7ff ffbc 	bl	8005428 <std>
 80054b0:	2201      	movs	r2, #1
 80054b2:	2109      	movs	r1, #9
 80054b4:	68a0      	ldr	r0, [r4, #8]
 80054b6:	f7ff ffb7 	bl	8005428 <std>
 80054ba:	2202      	movs	r2, #2
 80054bc:	2112      	movs	r1, #18
 80054be:	68e0      	ldr	r0, [r4, #12]
 80054c0:	f7ff ffb2 	bl	8005428 <std>
 80054c4:	2301      	movs	r3, #1
 80054c6:	63a3      	str	r3, [r4, #56]	; 0x38
 80054c8:	4802      	ldr	r0, [pc, #8]	; (80054d4 <__sinit+0x50>)
 80054ca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80054ce:	f000 bb2b 	b.w	8005b28 <__retarget_lock_release_recursive>
 80054d2:	bf00      	nop
 80054d4:	20000c98 	.word	0x20000c98
 80054d8:	08005479 	.word	0x08005479

080054dc <__sfp_lock_acquire>:
 80054dc:	4801      	ldr	r0, [pc, #4]	; (80054e4 <__sfp_lock_acquire+0x8>)
 80054de:	f000 bb21 	b.w	8005b24 <__retarget_lock_acquire_recursive>
 80054e2:	bf00      	nop
 80054e4:	20000cac 	.word	0x20000cac

080054e8 <__sfp_lock_release>:
 80054e8:	4801      	ldr	r0, [pc, #4]	; (80054f0 <__sfp_lock_release+0x8>)
 80054ea:	f000 bb1d 	b.w	8005b28 <__retarget_lock_release_recursive>
 80054ee:	bf00      	nop
 80054f0:	20000cac 	.word	0x20000cac

080054f4 <__libc_fini_array>:
 80054f4:	b538      	push	{r3, r4, r5, lr}
 80054f6:	4c0a      	ldr	r4, [pc, #40]	; (8005520 <__libc_fini_array+0x2c>)
 80054f8:	4d0a      	ldr	r5, [pc, #40]	; (8005524 <__libc_fini_array+0x30>)
 80054fa:	1b64      	subs	r4, r4, r5
 80054fc:	10a4      	asrs	r4, r4, #2
 80054fe:	d00a      	beq.n	8005516 <__libc_fini_array+0x22>
 8005500:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005504:	3b01      	subs	r3, #1
 8005506:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800550a:	3c01      	subs	r4, #1
 800550c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005510:	4798      	blx	r3
 8005512:	2c00      	cmp	r4, #0
 8005514:	d1f9      	bne.n	800550a <__libc_fini_array+0x16>
 8005516:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800551a:	f001 befd 	b.w	8007318 <_fini>
 800551e:	bf00      	nop
 8005520:	080076dc 	.word	0x080076dc
 8005524:	080076d8 	.word	0x080076d8

08005528 <_malloc_trim_r>:
 8005528:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800552a:	4f24      	ldr	r7, [pc, #144]	; (80055bc <_malloc_trim_r+0x94>)
 800552c:	460c      	mov	r4, r1
 800552e:	4606      	mov	r6, r0
 8005530:	f000 fe7c 	bl	800622c <__malloc_lock>
 8005534:	68bb      	ldr	r3, [r7, #8]
 8005536:	685d      	ldr	r5, [r3, #4]
 8005538:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800553c:	310f      	adds	r1, #15
 800553e:	f025 0503 	bic.w	r5, r5, #3
 8005542:	4429      	add	r1, r5
 8005544:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005548:	f021 010f 	bic.w	r1, r1, #15
 800554c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005550:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005554:	db07      	blt.n	8005566 <_malloc_trim_r+0x3e>
 8005556:	2100      	movs	r1, #0
 8005558:	4630      	mov	r0, r6
 800555a:	f001 fb5f 	bl	8006c1c <_sbrk_r>
 800555e:	68bb      	ldr	r3, [r7, #8]
 8005560:	442b      	add	r3, r5
 8005562:	4298      	cmp	r0, r3
 8005564:	d004      	beq.n	8005570 <_malloc_trim_r+0x48>
 8005566:	4630      	mov	r0, r6
 8005568:	f000 fe66 	bl	8006238 <__malloc_unlock>
 800556c:	2000      	movs	r0, #0
 800556e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005570:	4261      	negs	r1, r4
 8005572:	4630      	mov	r0, r6
 8005574:	f001 fb52 	bl	8006c1c <_sbrk_r>
 8005578:	3001      	adds	r0, #1
 800557a:	d00d      	beq.n	8005598 <_malloc_trim_r+0x70>
 800557c:	4b10      	ldr	r3, [pc, #64]	; (80055c0 <_malloc_trim_r+0x98>)
 800557e:	68ba      	ldr	r2, [r7, #8]
 8005580:	6819      	ldr	r1, [r3, #0]
 8005582:	1b2d      	subs	r5, r5, r4
 8005584:	f045 0501 	orr.w	r5, r5, #1
 8005588:	4630      	mov	r0, r6
 800558a:	1b09      	subs	r1, r1, r4
 800558c:	6055      	str	r5, [r2, #4]
 800558e:	6019      	str	r1, [r3, #0]
 8005590:	f000 fe52 	bl	8006238 <__malloc_unlock>
 8005594:	2001      	movs	r0, #1
 8005596:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005598:	2100      	movs	r1, #0
 800559a:	4630      	mov	r0, r6
 800559c:	f001 fb3e 	bl	8006c1c <_sbrk_r>
 80055a0:	68ba      	ldr	r2, [r7, #8]
 80055a2:	1a83      	subs	r3, r0, r2
 80055a4:	2b0f      	cmp	r3, #15
 80055a6:	ddde      	ble.n	8005566 <_malloc_trim_r+0x3e>
 80055a8:	4c06      	ldr	r4, [pc, #24]	; (80055c4 <_malloc_trim_r+0x9c>)
 80055aa:	4905      	ldr	r1, [pc, #20]	; (80055c0 <_malloc_trim_r+0x98>)
 80055ac:	6824      	ldr	r4, [r4, #0]
 80055ae:	f043 0301 	orr.w	r3, r3, #1
 80055b2:	1b00      	subs	r0, r0, r4
 80055b4:	6053      	str	r3, [r2, #4]
 80055b6:	6008      	str	r0, [r1, #0]
 80055b8:	e7d5      	b.n	8005566 <_malloc_trim_r+0x3e>
 80055ba:	bf00      	nop
 80055bc:	2000044c 	.word	0x2000044c
 80055c0:	20000a6c 	.word	0x20000a6c
 80055c4:	20000854 	.word	0x20000854

080055c8 <_free_r>:
 80055c8:	2900      	cmp	r1, #0
 80055ca:	d053      	beq.n	8005674 <_free_r+0xac>
 80055cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80055ce:	460c      	mov	r4, r1
 80055d0:	4606      	mov	r6, r0
 80055d2:	f000 fe2b 	bl	800622c <__malloc_lock>
 80055d6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80055da:	4f71      	ldr	r7, [pc, #452]	; (80057a0 <_free_r+0x1d8>)
 80055dc:	f02c 0101 	bic.w	r1, ip, #1
 80055e0:	f1a4 0508 	sub.w	r5, r4, #8
 80055e4:	186b      	adds	r3, r5, r1
 80055e6:	68b8      	ldr	r0, [r7, #8]
 80055e8:	685a      	ldr	r2, [r3, #4]
 80055ea:	4298      	cmp	r0, r3
 80055ec:	f022 0203 	bic.w	r2, r2, #3
 80055f0:	d053      	beq.n	800569a <_free_r+0xd2>
 80055f2:	f01c 0f01 	tst.w	ip, #1
 80055f6:	605a      	str	r2, [r3, #4]
 80055f8:	eb03 0002 	add.w	r0, r3, r2
 80055fc:	d13b      	bne.n	8005676 <_free_r+0xae>
 80055fe:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005602:	6840      	ldr	r0, [r0, #4]
 8005604:	eba5 050c 	sub.w	r5, r5, ip
 8005608:	f107 0e08 	add.w	lr, r7, #8
 800560c:	68ac      	ldr	r4, [r5, #8]
 800560e:	4574      	cmp	r4, lr
 8005610:	4461      	add	r1, ip
 8005612:	f000 0001 	and.w	r0, r0, #1
 8005616:	d075      	beq.n	8005704 <_free_r+0x13c>
 8005618:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800561c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005620:	f8cc 4008 	str.w	r4, [ip, #8]
 8005624:	b360      	cbz	r0, 8005680 <_free_r+0xb8>
 8005626:	f041 0301 	orr.w	r3, r1, #1
 800562a:	606b      	str	r3, [r5, #4]
 800562c:	5069      	str	r1, [r5, r1]
 800562e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005632:	d350      	bcc.n	80056d6 <_free_r+0x10e>
 8005634:	0a4b      	lsrs	r3, r1, #9
 8005636:	2b04      	cmp	r3, #4
 8005638:	d870      	bhi.n	800571c <_free_r+0x154>
 800563a:	098b      	lsrs	r3, r1, #6
 800563c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005640:	00e4      	lsls	r4, r4, #3
 8005642:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005646:	1938      	adds	r0, r7, r4
 8005648:	593b      	ldr	r3, [r7, r4]
 800564a:	3808      	subs	r0, #8
 800564c:	4298      	cmp	r0, r3
 800564e:	d078      	beq.n	8005742 <_free_r+0x17a>
 8005650:	685a      	ldr	r2, [r3, #4]
 8005652:	f022 0203 	bic.w	r2, r2, #3
 8005656:	428a      	cmp	r2, r1
 8005658:	d971      	bls.n	800573e <_free_r+0x176>
 800565a:	689b      	ldr	r3, [r3, #8]
 800565c:	4298      	cmp	r0, r3
 800565e:	d1f7      	bne.n	8005650 <_free_r+0x88>
 8005660:	68c3      	ldr	r3, [r0, #12]
 8005662:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005666:	609d      	str	r5, [r3, #8]
 8005668:	60c5      	str	r5, [r0, #12]
 800566a:	4630      	mov	r0, r6
 800566c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005670:	f000 bde2 	b.w	8006238 <__malloc_unlock>
 8005674:	4770      	bx	lr
 8005676:	6840      	ldr	r0, [r0, #4]
 8005678:	f000 0001 	and.w	r0, r0, #1
 800567c:	2800      	cmp	r0, #0
 800567e:	d1d2      	bne.n	8005626 <_free_r+0x5e>
 8005680:	6898      	ldr	r0, [r3, #8]
 8005682:	4c48      	ldr	r4, [pc, #288]	; (80057a4 <_free_r+0x1dc>)
 8005684:	4411      	add	r1, r2
 8005686:	42a0      	cmp	r0, r4
 8005688:	f041 0201 	orr.w	r2, r1, #1
 800568c:	d062      	beq.n	8005754 <_free_r+0x18c>
 800568e:	68db      	ldr	r3, [r3, #12]
 8005690:	60c3      	str	r3, [r0, #12]
 8005692:	6098      	str	r0, [r3, #8]
 8005694:	606a      	str	r2, [r5, #4]
 8005696:	5069      	str	r1, [r5, r1]
 8005698:	e7c9      	b.n	800562e <_free_r+0x66>
 800569a:	f01c 0f01 	tst.w	ip, #1
 800569e:	440a      	add	r2, r1
 80056a0:	d107      	bne.n	80056b2 <_free_r+0xea>
 80056a2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80056a6:	1aed      	subs	r5, r5, r3
 80056a8:	441a      	add	r2, r3
 80056aa:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80056ae:	60cb      	str	r3, [r1, #12]
 80056b0:	6099      	str	r1, [r3, #8]
 80056b2:	4b3d      	ldr	r3, [pc, #244]	; (80057a8 <_free_r+0x1e0>)
 80056b4:	681b      	ldr	r3, [r3, #0]
 80056b6:	f042 0101 	orr.w	r1, r2, #1
 80056ba:	4293      	cmp	r3, r2
 80056bc:	6069      	str	r1, [r5, #4]
 80056be:	60bd      	str	r5, [r7, #8]
 80056c0:	d804      	bhi.n	80056cc <_free_r+0x104>
 80056c2:	4b3a      	ldr	r3, [pc, #232]	; (80057ac <_free_r+0x1e4>)
 80056c4:	4630      	mov	r0, r6
 80056c6:	6819      	ldr	r1, [r3, #0]
 80056c8:	f7ff ff2e 	bl	8005528 <_malloc_trim_r>
 80056cc:	4630      	mov	r0, r6
 80056ce:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80056d2:	f000 bdb1 	b.w	8006238 <__malloc_unlock>
 80056d6:	08c9      	lsrs	r1, r1, #3
 80056d8:	6878      	ldr	r0, [r7, #4]
 80056da:	1c4a      	adds	r2, r1, #1
 80056dc:	2301      	movs	r3, #1
 80056de:	1089      	asrs	r1, r1, #2
 80056e0:	408b      	lsls	r3, r1
 80056e2:	4303      	orrs	r3, r0
 80056e4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80056e8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80056ec:	607b      	str	r3, [r7, #4]
 80056ee:	3908      	subs	r1, #8
 80056f0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80056f4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80056f8:	60c5      	str	r5, [r0, #12]
 80056fa:	4630      	mov	r0, r6
 80056fc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005700:	f000 bd9a 	b.w	8006238 <__malloc_unlock>
 8005704:	2800      	cmp	r0, #0
 8005706:	d145      	bne.n	8005794 <_free_r+0x1cc>
 8005708:	440a      	add	r2, r1
 800570a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800570e:	f042 0001 	orr.w	r0, r2, #1
 8005712:	60cb      	str	r3, [r1, #12]
 8005714:	6099      	str	r1, [r3, #8]
 8005716:	6068      	str	r0, [r5, #4]
 8005718:	50aa      	str	r2, [r5, r2]
 800571a:	e7d7      	b.n	80056cc <_free_r+0x104>
 800571c:	2b14      	cmp	r3, #20
 800571e:	d908      	bls.n	8005732 <_free_r+0x16a>
 8005720:	2b54      	cmp	r3, #84	; 0x54
 8005722:	d81e      	bhi.n	8005762 <_free_r+0x19a>
 8005724:	0b0b      	lsrs	r3, r1, #12
 8005726:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800572a:	00e4      	lsls	r4, r4, #3
 800572c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005730:	e789      	b.n	8005646 <_free_r+0x7e>
 8005732:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005736:	00e4      	lsls	r4, r4, #3
 8005738:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800573c:	e783      	b.n	8005646 <_free_r+0x7e>
 800573e:	4618      	mov	r0, r3
 8005740:	e78e      	b.n	8005660 <_free_r+0x98>
 8005742:	1093      	asrs	r3, r2, #2
 8005744:	6879      	ldr	r1, [r7, #4]
 8005746:	2201      	movs	r2, #1
 8005748:	fa02 f303 	lsl.w	r3, r2, r3
 800574c:	430b      	orrs	r3, r1
 800574e:	607b      	str	r3, [r7, #4]
 8005750:	4603      	mov	r3, r0
 8005752:	e786      	b.n	8005662 <_free_r+0x9a>
 8005754:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005758:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800575c:	606a      	str	r2, [r5, #4]
 800575e:	5069      	str	r1, [r5, r1]
 8005760:	e7b4      	b.n	80056cc <_free_r+0x104>
 8005762:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005766:	d806      	bhi.n	8005776 <_free_r+0x1ae>
 8005768:	0bcb      	lsrs	r3, r1, #15
 800576a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800576e:	00e4      	lsls	r4, r4, #3
 8005770:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005774:	e767      	b.n	8005646 <_free_r+0x7e>
 8005776:	f240 5254 	movw	r2, #1364	; 0x554
 800577a:	4293      	cmp	r3, r2
 800577c:	d806      	bhi.n	800578c <_free_r+0x1c4>
 800577e:	0c8b      	lsrs	r3, r1, #18
 8005780:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005784:	00e4      	lsls	r4, r4, #3
 8005786:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800578a:	e75c      	b.n	8005646 <_free_r+0x7e>
 800578c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005790:	227e      	movs	r2, #126	; 0x7e
 8005792:	e758      	b.n	8005646 <_free_r+0x7e>
 8005794:	f041 0201 	orr.w	r2, r1, #1
 8005798:	606a      	str	r2, [r5, #4]
 800579a:	6019      	str	r1, [r3, #0]
 800579c:	e796      	b.n	80056cc <_free_r+0x104>
 800579e:	bf00      	nop
 80057a0:	2000044c 	.word	0x2000044c
 80057a4:	20000454 	.word	0x20000454
 80057a8:	20000858 	.word	0x20000858
 80057ac:	20000a9c 	.word	0x20000a9c

080057b0 <__sfvwrite_r>:
 80057b0:	6893      	ldr	r3, [r2, #8]
 80057b2:	2b00      	cmp	r3, #0
 80057b4:	f000 80e4 	beq.w	8005980 <__sfvwrite_r+0x1d0>
 80057b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80057bc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80057c0:	b29b      	uxth	r3, r3
 80057c2:	460c      	mov	r4, r1
 80057c4:	0719      	lsls	r1, r3, #28
 80057c6:	b083      	sub	sp, #12
 80057c8:	4682      	mov	sl, r0
 80057ca:	4690      	mov	r8, r2
 80057cc:	d535      	bpl.n	800583a <__sfvwrite_r+0x8a>
 80057ce:	6922      	ldr	r2, [r4, #16]
 80057d0:	b39a      	cbz	r2, 800583a <__sfvwrite_r+0x8a>
 80057d2:	f013 0202 	ands.w	r2, r3, #2
 80057d6:	f8d8 6000 	ldr.w	r6, [r8]
 80057da:	d03d      	beq.n	8005858 <__sfvwrite_r+0xa8>
 80057dc:	2700      	movs	r7, #0
 80057de:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80057e2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80057e6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005aa8 <__sfvwrite_r+0x2f8>
 80057ea:	463d      	mov	r5, r7
 80057ec:	454d      	cmp	r5, r9
 80057ee:	462b      	mov	r3, r5
 80057f0:	463a      	mov	r2, r7
 80057f2:	bf28      	it	cs
 80057f4:	464b      	movcs	r3, r9
 80057f6:	4661      	mov	r1, ip
 80057f8:	4650      	mov	r0, sl
 80057fa:	b1d5      	cbz	r5, 8005832 <__sfvwrite_r+0x82>
 80057fc:	47d8      	blx	fp
 80057fe:	2800      	cmp	r0, #0
 8005800:	f340 80c6 	ble.w	8005990 <__sfvwrite_r+0x1e0>
 8005804:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005808:	1a1b      	subs	r3, r3, r0
 800580a:	4407      	add	r7, r0
 800580c:	1a2d      	subs	r5, r5, r0
 800580e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005812:	2b00      	cmp	r3, #0
 8005814:	f000 80b0 	beq.w	8005978 <__sfvwrite_r+0x1c8>
 8005818:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800581c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005820:	454d      	cmp	r5, r9
 8005822:	462b      	mov	r3, r5
 8005824:	463a      	mov	r2, r7
 8005826:	bf28      	it	cs
 8005828:	464b      	movcs	r3, r9
 800582a:	4661      	mov	r1, ip
 800582c:	4650      	mov	r0, sl
 800582e:	2d00      	cmp	r5, #0
 8005830:	d1e4      	bne.n	80057fc <__sfvwrite_r+0x4c>
 8005832:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005836:	3608      	adds	r6, #8
 8005838:	e7d8      	b.n	80057ec <__sfvwrite_r+0x3c>
 800583a:	4621      	mov	r1, r4
 800583c:	4650      	mov	r0, sl
 800583e:	f7fe fd03 	bl	8004248 <__swsetup_r>
 8005842:	2800      	cmp	r0, #0
 8005844:	f040 812a 	bne.w	8005a9c <__sfvwrite_r+0x2ec>
 8005848:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800584c:	f8d8 6000 	ldr.w	r6, [r8]
 8005850:	b29b      	uxth	r3, r3
 8005852:	f013 0202 	ands.w	r2, r3, #2
 8005856:	d1c1      	bne.n	80057dc <__sfvwrite_r+0x2c>
 8005858:	f013 0901 	ands.w	r9, r3, #1
 800585c:	d15d      	bne.n	800591a <__sfvwrite_r+0x16a>
 800585e:	68a7      	ldr	r7, [r4, #8]
 8005860:	6820      	ldr	r0, [r4, #0]
 8005862:	464d      	mov	r5, r9
 8005864:	2d00      	cmp	r5, #0
 8005866:	d054      	beq.n	8005912 <__sfvwrite_r+0x162>
 8005868:	059a      	lsls	r2, r3, #22
 800586a:	f140 809b 	bpl.w	80059a4 <__sfvwrite_r+0x1f4>
 800586e:	42af      	cmp	r7, r5
 8005870:	46bb      	mov	fp, r7
 8005872:	f200 80d8 	bhi.w	8005a26 <__sfvwrite_r+0x276>
 8005876:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800587a:	d02f      	beq.n	80058dc <__sfvwrite_r+0x12c>
 800587c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005880:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005884:	eba0 0b01 	sub.w	fp, r0, r1
 8005888:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800588c:	1c68      	adds	r0, r5, #1
 800588e:	107f      	asrs	r7, r7, #1
 8005890:	4458      	add	r0, fp
 8005892:	42b8      	cmp	r0, r7
 8005894:	463a      	mov	r2, r7
 8005896:	bf84      	itt	hi
 8005898:	4607      	movhi	r7, r0
 800589a:	463a      	movhi	r2, r7
 800589c:	055b      	lsls	r3, r3, #21
 800589e:	f140 80d3 	bpl.w	8005a48 <__sfvwrite_r+0x298>
 80058a2:	4611      	mov	r1, r2
 80058a4:	4650      	mov	r0, sl
 80058a6:	f000 f9b9 	bl	8005c1c <_malloc_r>
 80058aa:	2800      	cmp	r0, #0
 80058ac:	f000 80f0 	beq.w	8005a90 <__sfvwrite_r+0x2e0>
 80058b0:	465a      	mov	r2, fp
 80058b2:	6921      	ldr	r1, [r4, #16]
 80058b4:	9001      	str	r0, [sp, #4]
 80058b6:	f7fa fe23 	bl	8000500 <memcpy>
 80058ba:	89a2      	ldrh	r2, [r4, #12]
 80058bc:	9b01      	ldr	r3, [sp, #4]
 80058be:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80058c2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80058c6:	81a2      	strh	r2, [r4, #12]
 80058c8:	eba7 020b 	sub.w	r2, r7, fp
 80058cc:	eb03 000b 	add.w	r0, r3, fp
 80058d0:	6167      	str	r7, [r4, #20]
 80058d2:	6123      	str	r3, [r4, #16]
 80058d4:	6020      	str	r0, [r4, #0]
 80058d6:	60a2      	str	r2, [r4, #8]
 80058d8:	462f      	mov	r7, r5
 80058da:	46ab      	mov	fp, r5
 80058dc:	465a      	mov	r2, fp
 80058de:	4649      	mov	r1, r9
 80058e0:	f000 fc40 	bl	8006164 <memmove>
 80058e4:	68a2      	ldr	r2, [r4, #8]
 80058e6:	6823      	ldr	r3, [r4, #0]
 80058e8:	1bd2      	subs	r2, r2, r7
 80058ea:	445b      	add	r3, fp
 80058ec:	462f      	mov	r7, r5
 80058ee:	60a2      	str	r2, [r4, #8]
 80058f0:	6023      	str	r3, [r4, #0]
 80058f2:	2500      	movs	r5, #0
 80058f4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80058f8:	1bdb      	subs	r3, r3, r7
 80058fa:	44b9      	add	r9, r7
 80058fc:	f8c8 3008 	str.w	r3, [r8, #8]
 8005900:	2b00      	cmp	r3, #0
 8005902:	d039      	beq.n	8005978 <__sfvwrite_r+0x1c8>
 8005904:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005908:	68a7      	ldr	r7, [r4, #8]
 800590a:	6820      	ldr	r0, [r4, #0]
 800590c:	b29b      	uxth	r3, r3
 800590e:	2d00      	cmp	r5, #0
 8005910:	d1aa      	bne.n	8005868 <__sfvwrite_r+0xb8>
 8005912:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005916:	3608      	adds	r6, #8
 8005918:	e7a4      	b.n	8005864 <__sfvwrite_r+0xb4>
 800591a:	4633      	mov	r3, r6
 800591c:	4691      	mov	r9, r2
 800591e:	4610      	mov	r0, r2
 8005920:	4617      	mov	r7, r2
 8005922:	464e      	mov	r6, r9
 8005924:	469b      	mov	fp, r3
 8005926:	2f00      	cmp	r7, #0
 8005928:	d06b      	beq.n	8005a02 <__sfvwrite_r+0x252>
 800592a:	2800      	cmp	r0, #0
 800592c:	d071      	beq.n	8005a12 <__sfvwrite_r+0x262>
 800592e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005932:	6820      	ldr	r0, [r4, #0]
 8005934:	45b9      	cmp	r9, r7
 8005936:	464b      	mov	r3, r9
 8005938:	bf28      	it	cs
 800593a:	463b      	movcs	r3, r7
 800593c:	4288      	cmp	r0, r1
 800593e:	d903      	bls.n	8005948 <__sfvwrite_r+0x198>
 8005940:	68a5      	ldr	r5, [r4, #8]
 8005942:	4415      	add	r5, r2
 8005944:	42ab      	cmp	r3, r5
 8005946:	dc71      	bgt.n	8005a2c <__sfvwrite_r+0x27c>
 8005948:	429a      	cmp	r2, r3
 800594a:	f300 8093 	bgt.w	8005a74 <__sfvwrite_r+0x2c4>
 800594e:	4613      	mov	r3, r2
 8005950:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005952:	69e1      	ldr	r1, [r4, #28]
 8005954:	4632      	mov	r2, r6
 8005956:	4650      	mov	r0, sl
 8005958:	47a8      	blx	r5
 800595a:	1e05      	subs	r5, r0, #0
 800595c:	dd18      	ble.n	8005990 <__sfvwrite_r+0x1e0>
 800595e:	ebb9 0905 	subs.w	r9, r9, r5
 8005962:	d00f      	beq.n	8005984 <__sfvwrite_r+0x1d4>
 8005964:	2001      	movs	r0, #1
 8005966:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800596a:	1b5b      	subs	r3, r3, r5
 800596c:	442e      	add	r6, r5
 800596e:	1b7f      	subs	r7, r7, r5
 8005970:	f8c8 3008 	str.w	r3, [r8, #8]
 8005974:	2b00      	cmp	r3, #0
 8005976:	d1d6      	bne.n	8005926 <__sfvwrite_r+0x176>
 8005978:	2000      	movs	r0, #0
 800597a:	b003      	add	sp, #12
 800597c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005980:	2000      	movs	r0, #0
 8005982:	4770      	bx	lr
 8005984:	4621      	mov	r1, r4
 8005986:	4650      	mov	r0, sl
 8005988:	f7ff fd20 	bl	80053cc <_fflush_r>
 800598c:	2800      	cmp	r0, #0
 800598e:	d0ea      	beq.n	8005966 <__sfvwrite_r+0x1b6>
 8005990:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005994:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005998:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800599c:	81a3      	strh	r3, [r4, #12]
 800599e:	b003      	add	sp, #12
 80059a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059a4:	6923      	ldr	r3, [r4, #16]
 80059a6:	4283      	cmp	r3, r0
 80059a8:	d315      	bcc.n	80059d6 <__sfvwrite_r+0x226>
 80059aa:	6961      	ldr	r1, [r4, #20]
 80059ac:	42a9      	cmp	r1, r5
 80059ae:	d812      	bhi.n	80059d6 <__sfvwrite_r+0x226>
 80059b0:	4b3c      	ldr	r3, [pc, #240]	; (8005aa4 <__sfvwrite_r+0x2f4>)
 80059b2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80059b4:	429d      	cmp	r5, r3
 80059b6:	bf94      	ite	ls
 80059b8:	462b      	movls	r3, r5
 80059ba:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80059be:	464a      	mov	r2, r9
 80059c0:	fb93 f3f1 	sdiv	r3, r3, r1
 80059c4:	4650      	mov	r0, sl
 80059c6:	fb01 f303 	mul.w	r3, r1, r3
 80059ca:	69e1      	ldr	r1, [r4, #28]
 80059cc:	47b8      	blx	r7
 80059ce:	1e07      	subs	r7, r0, #0
 80059d0:	ddde      	ble.n	8005990 <__sfvwrite_r+0x1e0>
 80059d2:	1bed      	subs	r5, r5, r7
 80059d4:	e78e      	b.n	80058f4 <__sfvwrite_r+0x144>
 80059d6:	42af      	cmp	r7, r5
 80059d8:	bf28      	it	cs
 80059da:	462f      	movcs	r7, r5
 80059dc:	463a      	mov	r2, r7
 80059de:	4649      	mov	r1, r9
 80059e0:	f000 fbc0 	bl	8006164 <memmove>
 80059e4:	68a3      	ldr	r3, [r4, #8]
 80059e6:	6822      	ldr	r2, [r4, #0]
 80059e8:	1bdb      	subs	r3, r3, r7
 80059ea:	443a      	add	r2, r7
 80059ec:	60a3      	str	r3, [r4, #8]
 80059ee:	6022      	str	r2, [r4, #0]
 80059f0:	2b00      	cmp	r3, #0
 80059f2:	d1ee      	bne.n	80059d2 <__sfvwrite_r+0x222>
 80059f4:	4621      	mov	r1, r4
 80059f6:	4650      	mov	r0, sl
 80059f8:	f7ff fce8 	bl	80053cc <_fflush_r>
 80059fc:	2800      	cmp	r0, #0
 80059fe:	d0e8      	beq.n	80059d2 <__sfvwrite_r+0x222>
 8005a00:	e7c6      	b.n	8005990 <__sfvwrite_r+0x1e0>
 8005a02:	f10b 0308 	add.w	r3, fp, #8
 8005a06:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005a0a:	469b      	mov	fp, r3
 8005a0c:	3308      	adds	r3, #8
 8005a0e:	2f00      	cmp	r7, #0
 8005a10:	d0f9      	beq.n	8005a06 <__sfvwrite_r+0x256>
 8005a12:	463a      	mov	r2, r7
 8005a14:	210a      	movs	r1, #10
 8005a16:	4630      	mov	r0, r6
 8005a18:	f7fa fe82 	bl	8000720 <memchr>
 8005a1c:	b338      	cbz	r0, 8005a6e <__sfvwrite_r+0x2be>
 8005a1e:	3001      	adds	r0, #1
 8005a20:	eba0 0906 	sub.w	r9, r0, r6
 8005a24:	e783      	b.n	800592e <__sfvwrite_r+0x17e>
 8005a26:	462f      	mov	r7, r5
 8005a28:	46ab      	mov	fp, r5
 8005a2a:	e757      	b.n	80058dc <__sfvwrite_r+0x12c>
 8005a2c:	4631      	mov	r1, r6
 8005a2e:	462a      	mov	r2, r5
 8005a30:	f000 fb98 	bl	8006164 <memmove>
 8005a34:	6823      	ldr	r3, [r4, #0]
 8005a36:	442b      	add	r3, r5
 8005a38:	6023      	str	r3, [r4, #0]
 8005a3a:	4621      	mov	r1, r4
 8005a3c:	4650      	mov	r0, sl
 8005a3e:	f7ff fcc5 	bl	80053cc <_fflush_r>
 8005a42:	2800      	cmp	r0, #0
 8005a44:	d08b      	beq.n	800595e <__sfvwrite_r+0x1ae>
 8005a46:	e7a3      	b.n	8005990 <__sfvwrite_r+0x1e0>
 8005a48:	4650      	mov	r0, sl
 8005a4a:	f000 ff05 	bl	8006858 <_realloc_r>
 8005a4e:	4603      	mov	r3, r0
 8005a50:	2800      	cmp	r0, #0
 8005a52:	f47f af39 	bne.w	80058c8 <__sfvwrite_r+0x118>
 8005a56:	6921      	ldr	r1, [r4, #16]
 8005a58:	4650      	mov	r0, sl
 8005a5a:	f7ff fdb5 	bl	80055c8 <_free_r>
 8005a5e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a62:	220c      	movs	r2, #12
 8005a64:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005a68:	f8ca 2000 	str.w	r2, [sl]
 8005a6c:	e792      	b.n	8005994 <__sfvwrite_r+0x1e4>
 8005a6e:	f107 0901 	add.w	r9, r7, #1
 8005a72:	e75c      	b.n	800592e <__sfvwrite_r+0x17e>
 8005a74:	461a      	mov	r2, r3
 8005a76:	4631      	mov	r1, r6
 8005a78:	9301      	str	r3, [sp, #4]
 8005a7a:	f000 fb73 	bl	8006164 <memmove>
 8005a7e:	9b01      	ldr	r3, [sp, #4]
 8005a80:	68a1      	ldr	r1, [r4, #8]
 8005a82:	6822      	ldr	r2, [r4, #0]
 8005a84:	1ac9      	subs	r1, r1, r3
 8005a86:	441a      	add	r2, r3
 8005a88:	60a1      	str	r1, [r4, #8]
 8005a8a:	6022      	str	r2, [r4, #0]
 8005a8c:	461d      	mov	r5, r3
 8005a8e:	e766      	b.n	800595e <__sfvwrite_r+0x1ae>
 8005a90:	230c      	movs	r3, #12
 8005a92:	f8ca 3000 	str.w	r3, [sl]
 8005a96:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a9a:	e77b      	b.n	8005994 <__sfvwrite_r+0x1e4>
 8005a9c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005aa0:	e76b      	b.n	800597a <__sfvwrite_r+0x1ca>
 8005aa2:	bf00      	nop
 8005aa4:	7ffffffe 	.word	0x7ffffffe
 8005aa8:	7ffffc00 	.word	0x7ffffc00

08005aac <_fwalk_reent>:
 8005aac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005ab0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005ab4:	d01f      	beq.n	8005af6 <_fwalk_reent+0x4a>
 8005ab6:	4688      	mov	r8, r1
 8005ab8:	4606      	mov	r6, r0
 8005aba:	f04f 0900 	mov.w	r9, #0
 8005abe:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005ac2:	3d01      	subs	r5, #1
 8005ac4:	d411      	bmi.n	8005aea <_fwalk_reent+0x3e>
 8005ac6:	89a3      	ldrh	r3, [r4, #12]
 8005ac8:	2b01      	cmp	r3, #1
 8005aca:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005ace:	4621      	mov	r1, r4
 8005ad0:	4630      	mov	r0, r6
 8005ad2:	d906      	bls.n	8005ae2 <_fwalk_reent+0x36>
 8005ad4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005ad8:	3301      	adds	r3, #1
 8005ada:	d002      	beq.n	8005ae2 <_fwalk_reent+0x36>
 8005adc:	47c0      	blx	r8
 8005ade:	ea49 0900 	orr.w	r9, r9, r0
 8005ae2:	1c6b      	adds	r3, r5, #1
 8005ae4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005ae8:	d1ed      	bne.n	8005ac6 <_fwalk_reent+0x1a>
 8005aea:	683f      	ldr	r7, [r7, #0]
 8005aec:	2f00      	cmp	r7, #0
 8005aee:	d1e6      	bne.n	8005abe <_fwalk_reent+0x12>
 8005af0:	4648      	mov	r0, r9
 8005af2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005af6:	46b9      	mov	r9, r7
 8005af8:	4648      	mov	r0, r9
 8005afa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005afe:	bf00      	nop

08005b00 <_localeconv_r>:
 8005b00:	4a04      	ldr	r2, [pc, #16]	; (8005b14 <_localeconv_r+0x14>)
 8005b02:	4b05      	ldr	r3, [pc, #20]	; (8005b18 <_localeconv_r+0x18>)
 8005b04:	6812      	ldr	r2, [r2, #0]
 8005b06:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005b08:	2800      	cmp	r0, #0
 8005b0a:	bf08      	it	eq
 8005b0c:	4618      	moveq	r0, r3
 8005b0e:	30f0      	adds	r0, #240	; 0xf0
 8005b10:	4770      	bx	lr
 8005b12:	bf00      	nop
 8005b14:	20000018 	.word	0x20000018
 8005b18:	2000085c 	.word	0x2000085c

08005b1c <__retarget_lock_init_recursive>:
 8005b1c:	4770      	bx	lr
 8005b1e:	bf00      	nop

08005b20 <__retarget_lock_close_recursive>:
 8005b20:	4770      	bx	lr
 8005b22:	bf00      	nop

08005b24 <__retarget_lock_acquire_recursive>:
 8005b24:	4770      	bx	lr
 8005b26:	bf00      	nop

08005b28 <__retarget_lock_release_recursive>:
 8005b28:	4770      	bx	lr
 8005b2a:	bf00      	nop

08005b2c <__swhatbuf_r>:
 8005b2c:	b570      	push	{r4, r5, r6, lr}
 8005b2e:	460c      	mov	r4, r1
 8005b30:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005b34:	2900      	cmp	r1, #0
 8005b36:	b096      	sub	sp, #88	; 0x58
 8005b38:	4615      	mov	r5, r2
 8005b3a:	461e      	mov	r6, r3
 8005b3c:	da0f      	bge.n	8005b5e <__swhatbuf_r+0x32>
 8005b3e:	89a2      	ldrh	r2, [r4, #12]
 8005b40:	2300      	movs	r3, #0
 8005b42:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005b46:	6033      	str	r3, [r6, #0]
 8005b48:	d104      	bne.n	8005b54 <__swhatbuf_r+0x28>
 8005b4a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005b4e:	602b      	str	r3, [r5, #0]
 8005b50:	b016      	add	sp, #88	; 0x58
 8005b52:	bd70      	pop	{r4, r5, r6, pc}
 8005b54:	2240      	movs	r2, #64	; 0x40
 8005b56:	4618      	mov	r0, r3
 8005b58:	602a      	str	r2, [r5, #0]
 8005b5a:	b016      	add	sp, #88	; 0x58
 8005b5c:	bd70      	pop	{r4, r5, r6, pc}
 8005b5e:	466a      	mov	r2, sp
 8005b60:	f001 fad0 	bl	8007104 <_fstat_r>
 8005b64:	2800      	cmp	r0, #0
 8005b66:	dbea      	blt.n	8005b3e <__swhatbuf_r+0x12>
 8005b68:	9b01      	ldr	r3, [sp, #4]
 8005b6a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005b6e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005b72:	fab3 f383 	clz	r3, r3
 8005b76:	095b      	lsrs	r3, r3, #5
 8005b78:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005b7c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005b80:	6033      	str	r3, [r6, #0]
 8005b82:	602a      	str	r2, [r5, #0]
 8005b84:	b016      	add	sp, #88	; 0x58
 8005b86:	bd70      	pop	{r4, r5, r6, pc}

08005b88 <__smakebuf_r>:
 8005b88:	898a      	ldrh	r2, [r1, #12]
 8005b8a:	0792      	lsls	r2, r2, #30
 8005b8c:	460b      	mov	r3, r1
 8005b8e:	d506      	bpl.n	8005b9e <__smakebuf_r+0x16>
 8005b90:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005b94:	2101      	movs	r1, #1
 8005b96:	601a      	str	r2, [r3, #0]
 8005b98:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005b9c:	4770      	bx	lr
 8005b9e:	b570      	push	{r4, r5, r6, lr}
 8005ba0:	b082      	sub	sp, #8
 8005ba2:	ab01      	add	r3, sp, #4
 8005ba4:	466a      	mov	r2, sp
 8005ba6:	460c      	mov	r4, r1
 8005ba8:	4605      	mov	r5, r0
 8005baa:	f7ff ffbf 	bl	8005b2c <__swhatbuf_r>
 8005bae:	9900      	ldr	r1, [sp, #0]
 8005bb0:	4606      	mov	r6, r0
 8005bb2:	4628      	mov	r0, r5
 8005bb4:	f000 f832 	bl	8005c1c <_malloc_r>
 8005bb8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005bbc:	b1d8      	cbz	r0, 8005bf6 <__smakebuf_r+0x6e>
 8005bbe:	4916      	ldr	r1, [pc, #88]	; (8005c18 <__smakebuf_r+0x90>)
 8005bc0:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005bc2:	9a01      	ldr	r2, [sp, #4]
 8005bc4:	9900      	ldr	r1, [sp, #0]
 8005bc6:	6020      	str	r0, [r4, #0]
 8005bc8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005bcc:	81a3      	strh	r3, [r4, #12]
 8005bce:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005bd2:	b91a      	cbnz	r2, 8005bdc <__smakebuf_r+0x54>
 8005bd4:	4333      	orrs	r3, r6
 8005bd6:	81a3      	strh	r3, [r4, #12]
 8005bd8:	b002      	add	sp, #8
 8005bda:	bd70      	pop	{r4, r5, r6, pc}
 8005bdc:	4628      	mov	r0, r5
 8005bde:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005be2:	f001 faa3 	bl	800712c <_isatty_r>
 8005be6:	b1a0      	cbz	r0, 8005c12 <__smakebuf_r+0x8a>
 8005be8:	89a3      	ldrh	r3, [r4, #12]
 8005bea:	f023 0303 	bic.w	r3, r3, #3
 8005bee:	f043 0301 	orr.w	r3, r3, #1
 8005bf2:	b21b      	sxth	r3, r3
 8005bf4:	e7ee      	b.n	8005bd4 <__smakebuf_r+0x4c>
 8005bf6:	059a      	lsls	r2, r3, #22
 8005bf8:	d4ee      	bmi.n	8005bd8 <__smakebuf_r+0x50>
 8005bfa:	f023 0303 	bic.w	r3, r3, #3
 8005bfe:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005c02:	f043 0302 	orr.w	r3, r3, #2
 8005c06:	2101      	movs	r1, #1
 8005c08:	81a3      	strh	r3, [r4, #12]
 8005c0a:	6022      	str	r2, [r4, #0]
 8005c0c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005c10:	e7e2      	b.n	8005bd8 <__smakebuf_r+0x50>
 8005c12:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c16:	e7dd      	b.n	8005bd4 <__smakebuf_r+0x4c>
 8005c18:	08005479 	.word	0x08005479

08005c1c <_malloc_r>:
 8005c1c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005c20:	f101 050b 	add.w	r5, r1, #11
 8005c24:	2d16      	cmp	r5, #22
 8005c26:	b083      	sub	sp, #12
 8005c28:	4606      	mov	r6, r0
 8005c2a:	d823      	bhi.n	8005c74 <_malloc_r+0x58>
 8005c2c:	2910      	cmp	r1, #16
 8005c2e:	f200 80b9 	bhi.w	8005da4 <_malloc_r+0x188>
 8005c32:	f000 fafb 	bl	800622c <__malloc_lock>
 8005c36:	2510      	movs	r5, #16
 8005c38:	2318      	movs	r3, #24
 8005c3a:	2002      	movs	r0, #2
 8005c3c:	4fc5      	ldr	r7, [pc, #788]	; (8005f54 <_malloc_r+0x338>)
 8005c3e:	443b      	add	r3, r7
 8005c40:	f1a3 0208 	sub.w	r2, r3, #8
 8005c44:	685c      	ldr	r4, [r3, #4]
 8005c46:	4294      	cmp	r4, r2
 8005c48:	f000 8166 	beq.w	8005f18 <_malloc_r+0x2fc>
 8005c4c:	6863      	ldr	r3, [r4, #4]
 8005c4e:	f023 0303 	bic.w	r3, r3, #3
 8005c52:	4423      	add	r3, r4
 8005c54:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005c58:	685a      	ldr	r2, [r3, #4]
 8005c5a:	60e9      	str	r1, [r5, #12]
 8005c5c:	f042 0201 	orr.w	r2, r2, #1
 8005c60:	608d      	str	r5, [r1, #8]
 8005c62:	4630      	mov	r0, r6
 8005c64:	605a      	str	r2, [r3, #4]
 8005c66:	f000 fae7 	bl	8006238 <__malloc_unlock>
 8005c6a:	3408      	adds	r4, #8
 8005c6c:	4620      	mov	r0, r4
 8005c6e:	b003      	add	sp, #12
 8005c70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c74:	f035 0507 	bics.w	r5, r5, #7
 8005c78:	f100 8094 	bmi.w	8005da4 <_malloc_r+0x188>
 8005c7c:	42a9      	cmp	r1, r5
 8005c7e:	f200 8091 	bhi.w	8005da4 <_malloc_r+0x188>
 8005c82:	f000 fad3 	bl	800622c <__malloc_lock>
 8005c86:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005c8a:	f0c0 8183 	bcc.w	8005f94 <_malloc_r+0x378>
 8005c8e:	0a6b      	lsrs	r3, r5, #9
 8005c90:	f000 808f 	beq.w	8005db2 <_malloc_r+0x196>
 8005c94:	2b04      	cmp	r3, #4
 8005c96:	f200 8146 	bhi.w	8005f26 <_malloc_r+0x30a>
 8005c9a:	09ab      	lsrs	r3, r5, #6
 8005c9c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005ca0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005ca4:	00c3      	lsls	r3, r0, #3
 8005ca6:	4fab      	ldr	r7, [pc, #684]	; (8005f54 <_malloc_r+0x338>)
 8005ca8:	443b      	add	r3, r7
 8005caa:	f1a3 0108 	sub.w	r1, r3, #8
 8005cae:	685c      	ldr	r4, [r3, #4]
 8005cb0:	42a1      	cmp	r1, r4
 8005cb2:	d106      	bne.n	8005cc2 <_malloc_r+0xa6>
 8005cb4:	e00c      	b.n	8005cd0 <_malloc_r+0xb4>
 8005cb6:	2a00      	cmp	r2, #0
 8005cb8:	f280 811d 	bge.w	8005ef6 <_malloc_r+0x2da>
 8005cbc:	68e4      	ldr	r4, [r4, #12]
 8005cbe:	42a1      	cmp	r1, r4
 8005cc0:	d006      	beq.n	8005cd0 <_malloc_r+0xb4>
 8005cc2:	6863      	ldr	r3, [r4, #4]
 8005cc4:	f023 0303 	bic.w	r3, r3, #3
 8005cc8:	1b5a      	subs	r2, r3, r5
 8005cca:	2a0f      	cmp	r2, #15
 8005ccc:	ddf3      	ble.n	8005cb6 <_malloc_r+0x9a>
 8005cce:	4660      	mov	r0, ip
 8005cd0:	693c      	ldr	r4, [r7, #16]
 8005cd2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005f68 <_malloc_r+0x34c>
 8005cd6:	4564      	cmp	r4, ip
 8005cd8:	d071      	beq.n	8005dbe <_malloc_r+0x1a2>
 8005cda:	6863      	ldr	r3, [r4, #4]
 8005cdc:	f023 0303 	bic.w	r3, r3, #3
 8005ce0:	1b5a      	subs	r2, r3, r5
 8005ce2:	2a0f      	cmp	r2, #15
 8005ce4:	f300 8144 	bgt.w	8005f70 <_malloc_r+0x354>
 8005ce8:	2a00      	cmp	r2, #0
 8005cea:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005cee:	f280 8126 	bge.w	8005f3e <_malloc_r+0x322>
 8005cf2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005cf6:	f080 8169 	bcs.w	8005fcc <_malloc_r+0x3b0>
 8005cfa:	08db      	lsrs	r3, r3, #3
 8005cfc:	1c59      	adds	r1, r3, #1
 8005cfe:	687a      	ldr	r2, [r7, #4]
 8005d00:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005d04:	f8c4 8008 	str.w	r8, [r4, #8]
 8005d08:	f04f 0e01 	mov.w	lr, #1
 8005d0c:	109b      	asrs	r3, r3, #2
 8005d0e:	fa0e f303 	lsl.w	r3, lr, r3
 8005d12:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005d16:	4313      	orrs	r3, r2
 8005d18:	f1ae 0208 	sub.w	r2, lr, #8
 8005d1c:	60e2      	str	r2, [r4, #12]
 8005d1e:	607b      	str	r3, [r7, #4]
 8005d20:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005d24:	f8c8 400c 	str.w	r4, [r8, #12]
 8005d28:	1082      	asrs	r2, r0, #2
 8005d2a:	2401      	movs	r4, #1
 8005d2c:	4094      	lsls	r4, r2
 8005d2e:	429c      	cmp	r4, r3
 8005d30:	d84b      	bhi.n	8005dca <_malloc_r+0x1ae>
 8005d32:	421c      	tst	r4, r3
 8005d34:	d106      	bne.n	8005d44 <_malloc_r+0x128>
 8005d36:	f020 0003 	bic.w	r0, r0, #3
 8005d3a:	0064      	lsls	r4, r4, #1
 8005d3c:	421c      	tst	r4, r3
 8005d3e:	f100 0004 	add.w	r0, r0, #4
 8005d42:	d0fa      	beq.n	8005d3a <_malloc_r+0x11e>
 8005d44:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005d48:	46ce      	mov	lr, r9
 8005d4a:	4680      	mov	r8, r0
 8005d4c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005d50:	459e      	cmp	lr, r3
 8005d52:	d107      	bne.n	8005d64 <_malloc_r+0x148>
 8005d54:	e122      	b.n	8005f9c <_malloc_r+0x380>
 8005d56:	2a00      	cmp	r2, #0
 8005d58:	f280 8129 	bge.w	8005fae <_malloc_r+0x392>
 8005d5c:	68db      	ldr	r3, [r3, #12]
 8005d5e:	459e      	cmp	lr, r3
 8005d60:	f000 811c 	beq.w	8005f9c <_malloc_r+0x380>
 8005d64:	6859      	ldr	r1, [r3, #4]
 8005d66:	f021 0103 	bic.w	r1, r1, #3
 8005d6a:	1b4a      	subs	r2, r1, r5
 8005d6c:	2a0f      	cmp	r2, #15
 8005d6e:	ddf2      	ble.n	8005d56 <_malloc_r+0x13a>
 8005d70:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005d74:	195c      	adds	r4, r3, r5
 8005d76:	f045 0501 	orr.w	r5, r5, #1
 8005d7a:	605d      	str	r5, [r3, #4]
 8005d7c:	f042 0501 	orr.w	r5, r2, #1
 8005d80:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005d84:	4630      	mov	r0, r6
 8005d86:	f8ce 8008 	str.w	r8, [lr, #8]
 8005d8a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005d8e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005d92:	6065      	str	r5, [r4, #4]
 8005d94:	505a      	str	r2, [r3, r1]
 8005d96:	9301      	str	r3, [sp, #4]
 8005d98:	f000 fa4e 	bl	8006238 <__malloc_unlock>
 8005d9c:	9b01      	ldr	r3, [sp, #4]
 8005d9e:	f103 0408 	add.w	r4, r3, #8
 8005da2:	e763      	b.n	8005c6c <_malloc_r+0x50>
 8005da4:	2400      	movs	r4, #0
 8005da6:	230c      	movs	r3, #12
 8005da8:	4620      	mov	r0, r4
 8005daa:	6033      	str	r3, [r6, #0]
 8005dac:	b003      	add	sp, #12
 8005dae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005db2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005db6:	2040      	movs	r0, #64	; 0x40
 8005db8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005dbc:	e773      	b.n	8005ca6 <_malloc_r+0x8a>
 8005dbe:	687b      	ldr	r3, [r7, #4]
 8005dc0:	1082      	asrs	r2, r0, #2
 8005dc2:	2401      	movs	r4, #1
 8005dc4:	4094      	lsls	r4, r2
 8005dc6:	429c      	cmp	r4, r3
 8005dc8:	d9b3      	bls.n	8005d32 <_malloc_r+0x116>
 8005dca:	68bc      	ldr	r4, [r7, #8]
 8005dcc:	6863      	ldr	r3, [r4, #4]
 8005dce:	f023 0903 	bic.w	r9, r3, #3
 8005dd2:	45a9      	cmp	r9, r5
 8005dd4:	d303      	bcc.n	8005dde <_malloc_r+0x1c2>
 8005dd6:	eba9 0305 	sub.w	r3, r9, r5
 8005dda:	2b0f      	cmp	r3, #15
 8005ddc:	dc7b      	bgt.n	8005ed6 <_malloc_r+0x2ba>
 8005dde:	4b5e      	ldr	r3, [pc, #376]	; (8005f58 <_malloc_r+0x33c>)
 8005de0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005f6c <_malloc_r+0x350>
 8005de4:	681a      	ldr	r2, [r3, #0]
 8005de6:	f8da 3000 	ldr.w	r3, [sl]
 8005dea:	3301      	adds	r3, #1
 8005dec:	eb05 0802 	add.w	r8, r5, r2
 8005df0:	f000 8148 	beq.w	8006084 <_malloc_r+0x468>
 8005df4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005df8:	f108 080f 	add.w	r8, r8, #15
 8005dfc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005e00:	f028 080f 	bic.w	r8, r8, #15
 8005e04:	4641      	mov	r1, r8
 8005e06:	4630      	mov	r0, r6
 8005e08:	f000 ff08 	bl	8006c1c <_sbrk_r>
 8005e0c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005e10:	4683      	mov	fp, r0
 8005e12:	f000 8104 	beq.w	800601e <_malloc_r+0x402>
 8005e16:	eb04 0009 	add.w	r0, r4, r9
 8005e1a:	4558      	cmp	r0, fp
 8005e1c:	f200 80fd 	bhi.w	800601a <_malloc_r+0x3fe>
 8005e20:	4a4e      	ldr	r2, [pc, #312]	; (8005f5c <_malloc_r+0x340>)
 8005e22:	6813      	ldr	r3, [r2, #0]
 8005e24:	4443      	add	r3, r8
 8005e26:	6013      	str	r3, [r2, #0]
 8005e28:	f000 814d 	beq.w	80060c6 <_malloc_r+0x4aa>
 8005e2c:	f8da 1000 	ldr.w	r1, [sl]
 8005e30:	3101      	adds	r1, #1
 8005e32:	bf1b      	ittet	ne
 8005e34:	ebab 0000 	subne.w	r0, fp, r0
 8005e38:	181b      	addne	r3, r3, r0
 8005e3a:	f8ca b000 	streq.w	fp, [sl]
 8005e3e:	6013      	strne	r3, [r2, #0]
 8005e40:	f01b 0307 	ands.w	r3, fp, #7
 8005e44:	f000 8134 	beq.w	80060b0 <_malloc_r+0x494>
 8005e48:	f1c3 0108 	rsb	r1, r3, #8
 8005e4c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005e50:	448b      	add	fp, r1
 8005e52:	3308      	adds	r3, #8
 8005e54:	44d8      	add	r8, fp
 8005e56:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005e5a:	eba3 0808 	sub.w	r8, r3, r8
 8005e5e:	4641      	mov	r1, r8
 8005e60:	4630      	mov	r0, r6
 8005e62:	9201      	str	r2, [sp, #4]
 8005e64:	f000 feda 	bl	8006c1c <_sbrk_r>
 8005e68:	1c43      	adds	r3, r0, #1
 8005e6a:	9a01      	ldr	r2, [sp, #4]
 8005e6c:	f000 8146 	beq.w	80060fc <_malloc_r+0x4e0>
 8005e70:	eba0 010b 	sub.w	r1, r0, fp
 8005e74:	4441      	add	r1, r8
 8005e76:	f041 0101 	orr.w	r1, r1, #1
 8005e7a:	6813      	ldr	r3, [r2, #0]
 8005e7c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005e80:	4443      	add	r3, r8
 8005e82:	42bc      	cmp	r4, r7
 8005e84:	f8cb 1004 	str.w	r1, [fp, #4]
 8005e88:	6013      	str	r3, [r2, #0]
 8005e8a:	d015      	beq.n	8005eb8 <_malloc_r+0x29c>
 8005e8c:	f1b9 0f0f 	cmp.w	r9, #15
 8005e90:	f240 8130 	bls.w	80060f4 <_malloc_r+0x4d8>
 8005e94:	6860      	ldr	r0, [r4, #4]
 8005e96:	f1a9 010c 	sub.w	r1, r9, #12
 8005e9a:	f021 0107 	bic.w	r1, r1, #7
 8005e9e:	f000 0001 	and.w	r0, r0, #1
 8005ea2:	eb04 0c01 	add.w	ip, r4, r1
 8005ea6:	4308      	orrs	r0, r1
 8005ea8:	f04f 0e05 	mov.w	lr, #5
 8005eac:	290f      	cmp	r1, #15
 8005eae:	6060      	str	r0, [r4, #4]
 8005eb0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005eb4:	f200 813a 	bhi.w	800612c <_malloc_r+0x510>
 8005eb8:	4a29      	ldr	r2, [pc, #164]	; (8005f60 <_malloc_r+0x344>)
 8005eba:	482a      	ldr	r0, [pc, #168]	; (8005f64 <_malloc_r+0x348>)
 8005ebc:	6811      	ldr	r1, [r2, #0]
 8005ebe:	68bc      	ldr	r4, [r7, #8]
 8005ec0:	428b      	cmp	r3, r1
 8005ec2:	6801      	ldr	r1, [r0, #0]
 8005ec4:	bf88      	it	hi
 8005ec6:	6013      	strhi	r3, [r2, #0]
 8005ec8:	6862      	ldr	r2, [r4, #4]
 8005eca:	428b      	cmp	r3, r1
 8005ecc:	f022 0203 	bic.w	r2, r2, #3
 8005ed0:	bf88      	it	hi
 8005ed2:	6003      	strhi	r3, [r0, #0]
 8005ed4:	e0a7      	b.n	8006026 <_malloc_r+0x40a>
 8005ed6:	1962      	adds	r2, r4, r5
 8005ed8:	f043 0301 	orr.w	r3, r3, #1
 8005edc:	f045 0501 	orr.w	r5, r5, #1
 8005ee0:	6065      	str	r5, [r4, #4]
 8005ee2:	4630      	mov	r0, r6
 8005ee4:	60ba      	str	r2, [r7, #8]
 8005ee6:	6053      	str	r3, [r2, #4]
 8005ee8:	f000 f9a6 	bl	8006238 <__malloc_unlock>
 8005eec:	3408      	adds	r4, #8
 8005eee:	4620      	mov	r0, r4
 8005ef0:	b003      	add	sp, #12
 8005ef2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ef6:	4423      	add	r3, r4
 8005ef8:	68e1      	ldr	r1, [r4, #12]
 8005efa:	685a      	ldr	r2, [r3, #4]
 8005efc:	68a5      	ldr	r5, [r4, #8]
 8005efe:	f042 0201 	orr.w	r2, r2, #1
 8005f02:	60e9      	str	r1, [r5, #12]
 8005f04:	4630      	mov	r0, r6
 8005f06:	608d      	str	r5, [r1, #8]
 8005f08:	605a      	str	r2, [r3, #4]
 8005f0a:	f000 f995 	bl	8006238 <__malloc_unlock>
 8005f0e:	3408      	adds	r4, #8
 8005f10:	4620      	mov	r0, r4
 8005f12:	b003      	add	sp, #12
 8005f14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f18:	68dc      	ldr	r4, [r3, #12]
 8005f1a:	42a3      	cmp	r3, r4
 8005f1c:	bf08      	it	eq
 8005f1e:	3002      	addeq	r0, #2
 8005f20:	f43f aed6 	beq.w	8005cd0 <_malloc_r+0xb4>
 8005f24:	e692      	b.n	8005c4c <_malloc_r+0x30>
 8005f26:	2b14      	cmp	r3, #20
 8005f28:	d971      	bls.n	800600e <_malloc_r+0x3f2>
 8005f2a:	2b54      	cmp	r3, #84	; 0x54
 8005f2c:	f200 80ad 	bhi.w	800608a <_malloc_r+0x46e>
 8005f30:	0b2b      	lsrs	r3, r5, #12
 8005f32:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005f36:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005f3a:	00c3      	lsls	r3, r0, #3
 8005f3c:	e6b3      	b.n	8005ca6 <_malloc_r+0x8a>
 8005f3e:	4423      	add	r3, r4
 8005f40:	4630      	mov	r0, r6
 8005f42:	685a      	ldr	r2, [r3, #4]
 8005f44:	f042 0201 	orr.w	r2, r2, #1
 8005f48:	605a      	str	r2, [r3, #4]
 8005f4a:	3408      	adds	r4, #8
 8005f4c:	f000 f974 	bl	8006238 <__malloc_unlock>
 8005f50:	e68c      	b.n	8005c6c <_malloc_r+0x50>
 8005f52:	bf00      	nop
 8005f54:	2000044c 	.word	0x2000044c
 8005f58:	20000a9c 	.word	0x20000a9c
 8005f5c:	20000a6c 	.word	0x20000a6c
 8005f60:	20000a94 	.word	0x20000a94
 8005f64:	20000a98 	.word	0x20000a98
 8005f68:	20000454 	.word	0x20000454
 8005f6c:	20000854 	.word	0x20000854
 8005f70:	1961      	adds	r1, r4, r5
 8005f72:	f045 0e01 	orr.w	lr, r5, #1
 8005f76:	f042 0501 	orr.w	r5, r2, #1
 8005f7a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005f7e:	4630      	mov	r0, r6
 8005f80:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005f84:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005f88:	604d      	str	r5, [r1, #4]
 8005f8a:	50e2      	str	r2, [r4, r3]
 8005f8c:	f000 f954 	bl	8006238 <__malloc_unlock>
 8005f90:	3408      	adds	r4, #8
 8005f92:	e66b      	b.n	8005c6c <_malloc_r+0x50>
 8005f94:	08e8      	lsrs	r0, r5, #3
 8005f96:	f105 0308 	add.w	r3, r5, #8
 8005f9a:	e64f      	b.n	8005c3c <_malloc_r+0x20>
 8005f9c:	f108 0801 	add.w	r8, r8, #1
 8005fa0:	f018 0f03 	tst.w	r8, #3
 8005fa4:	f10e 0e08 	add.w	lr, lr, #8
 8005fa8:	f47f aed0 	bne.w	8005d4c <_malloc_r+0x130>
 8005fac:	e052      	b.n	8006054 <_malloc_r+0x438>
 8005fae:	4419      	add	r1, r3
 8005fb0:	461c      	mov	r4, r3
 8005fb2:	684a      	ldr	r2, [r1, #4]
 8005fb4:	68db      	ldr	r3, [r3, #12]
 8005fb6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005fba:	f042 0201 	orr.w	r2, r2, #1
 8005fbe:	604a      	str	r2, [r1, #4]
 8005fc0:	4630      	mov	r0, r6
 8005fc2:	60eb      	str	r3, [r5, #12]
 8005fc4:	609d      	str	r5, [r3, #8]
 8005fc6:	f000 f937 	bl	8006238 <__malloc_unlock>
 8005fca:	e64f      	b.n	8005c6c <_malloc_r+0x50>
 8005fcc:	0a5a      	lsrs	r2, r3, #9
 8005fce:	2a04      	cmp	r2, #4
 8005fd0:	d935      	bls.n	800603e <_malloc_r+0x422>
 8005fd2:	2a14      	cmp	r2, #20
 8005fd4:	d86f      	bhi.n	80060b6 <_malloc_r+0x49a>
 8005fd6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005fda:	00c9      	lsls	r1, r1, #3
 8005fdc:	325b      	adds	r2, #91	; 0x5b
 8005fde:	eb07 0e01 	add.w	lr, r7, r1
 8005fe2:	5879      	ldr	r1, [r7, r1]
 8005fe4:	f1ae 0e08 	sub.w	lr, lr, #8
 8005fe8:	458e      	cmp	lr, r1
 8005fea:	d058      	beq.n	800609e <_malloc_r+0x482>
 8005fec:	684a      	ldr	r2, [r1, #4]
 8005fee:	f022 0203 	bic.w	r2, r2, #3
 8005ff2:	429a      	cmp	r2, r3
 8005ff4:	d902      	bls.n	8005ffc <_malloc_r+0x3e0>
 8005ff6:	6889      	ldr	r1, [r1, #8]
 8005ff8:	458e      	cmp	lr, r1
 8005ffa:	d1f7      	bne.n	8005fec <_malloc_r+0x3d0>
 8005ffc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006000:	687b      	ldr	r3, [r7, #4]
 8006002:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006006:	f8ce 4008 	str.w	r4, [lr, #8]
 800600a:	60cc      	str	r4, [r1, #12]
 800600c:	e68c      	b.n	8005d28 <_malloc_r+0x10c>
 800600e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006012:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006016:	00c3      	lsls	r3, r0, #3
 8006018:	e645      	b.n	8005ca6 <_malloc_r+0x8a>
 800601a:	42bc      	cmp	r4, r7
 800601c:	d072      	beq.n	8006104 <_malloc_r+0x4e8>
 800601e:	68bc      	ldr	r4, [r7, #8]
 8006020:	6862      	ldr	r2, [r4, #4]
 8006022:	f022 0203 	bic.w	r2, r2, #3
 8006026:	4295      	cmp	r5, r2
 8006028:	eba2 0305 	sub.w	r3, r2, r5
 800602c:	d802      	bhi.n	8006034 <_malloc_r+0x418>
 800602e:	2b0f      	cmp	r3, #15
 8006030:	f73f af51 	bgt.w	8005ed6 <_malloc_r+0x2ba>
 8006034:	4630      	mov	r0, r6
 8006036:	f000 f8ff 	bl	8006238 <__malloc_unlock>
 800603a:	2400      	movs	r4, #0
 800603c:	e616      	b.n	8005c6c <_malloc_r+0x50>
 800603e:	099a      	lsrs	r2, r3, #6
 8006040:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006044:	00c9      	lsls	r1, r1, #3
 8006046:	3238      	adds	r2, #56	; 0x38
 8006048:	e7c9      	b.n	8005fde <_malloc_r+0x3c2>
 800604a:	f8d9 9000 	ldr.w	r9, [r9]
 800604e:	4599      	cmp	r9, r3
 8006050:	f040 8083 	bne.w	800615a <_malloc_r+0x53e>
 8006054:	f010 0f03 	tst.w	r0, #3
 8006058:	f1a9 0308 	sub.w	r3, r9, #8
 800605c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006060:	d1f3      	bne.n	800604a <_malloc_r+0x42e>
 8006062:	687b      	ldr	r3, [r7, #4]
 8006064:	ea23 0304 	bic.w	r3, r3, r4
 8006068:	607b      	str	r3, [r7, #4]
 800606a:	0064      	lsls	r4, r4, #1
 800606c:	429c      	cmp	r4, r3
 800606e:	f63f aeac 	bhi.w	8005dca <_malloc_r+0x1ae>
 8006072:	b91c      	cbnz	r4, 800607c <_malloc_r+0x460>
 8006074:	e6a9      	b.n	8005dca <_malloc_r+0x1ae>
 8006076:	0064      	lsls	r4, r4, #1
 8006078:	f108 0804 	add.w	r8, r8, #4
 800607c:	421c      	tst	r4, r3
 800607e:	d0fa      	beq.n	8006076 <_malloc_r+0x45a>
 8006080:	4640      	mov	r0, r8
 8006082:	e65f      	b.n	8005d44 <_malloc_r+0x128>
 8006084:	f108 0810 	add.w	r8, r8, #16
 8006088:	e6bc      	b.n	8005e04 <_malloc_r+0x1e8>
 800608a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800608e:	d826      	bhi.n	80060de <_malloc_r+0x4c2>
 8006090:	0beb      	lsrs	r3, r5, #15
 8006092:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006096:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800609a:	00c3      	lsls	r3, r0, #3
 800609c:	e603      	b.n	8005ca6 <_malloc_r+0x8a>
 800609e:	687b      	ldr	r3, [r7, #4]
 80060a0:	1092      	asrs	r2, r2, #2
 80060a2:	f04f 0801 	mov.w	r8, #1
 80060a6:	fa08 f202 	lsl.w	r2, r8, r2
 80060aa:	4313      	orrs	r3, r2
 80060ac:	607b      	str	r3, [r7, #4]
 80060ae:	e7a8      	b.n	8006002 <_malloc_r+0x3e6>
 80060b0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80060b4:	e6ce      	b.n	8005e54 <_malloc_r+0x238>
 80060b6:	2a54      	cmp	r2, #84	; 0x54
 80060b8:	d829      	bhi.n	800610e <_malloc_r+0x4f2>
 80060ba:	0b1a      	lsrs	r2, r3, #12
 80060bc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80060c0:	00c9      	lsls	r1, r1, #3
 80060c2:	326e      	adds	r2, #110	; 0x6e
 80060c4:	e78b      	b.n	8005fde <_malloc_r+0x3c2>
 80060c6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80060ca:	2900      	cmp	r1, #0
 80060cc:	f47f aeae 	bne.w	8005e2c <_malloc_r+0x210>
 80060d0:	eb09 0208 	add.w	r2, r9, r8
 80060d4:	68b9      	ldr	r1, [r7, #8]
 80060d6:	f042 0201 	orr.w	r2, r2, #1
 80060da:	604a      	str	r2, [r1, #4]
 80060dc:	e6ec      	b.n	8005eb8 <_malloc_r+0x29c>
 80060de:	f240 5254 	movw	r2, #1364	; 0x554
 80060e2:	4293      	cmp	r3, r2
 80060e4:	d81c      	bhi.n	8006120 <_malloc_r+0x504>
 80060e6:	0cab      	lsrs	r3, r5, #18
 80060e8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80060ec:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80060f0:	00c3      	lsls	r3, r0, #3
 80060f2:	e5d8      	b.n	8005ca6 <_malloc_r+0x8a>
 80060f4:	2301      	movs	r3, #1
 80060f6:	f8cb 3004 	str.w	r3, [fp, #4]
 80060fa:	e79b      	b.n	8006034 <_malloc_r+0x418>
 80060fc:	2101      	movs	r1, #1
 80060fe:	f04f 0800 	mov.w	r8, #0
 8006102:	e6ba      	b.n	8005e7a <_malloc_r+0x25e>
 8006104:	4a16      	ldr	r2, [pc, #88]	; (8006160 <_malloc_r+0x544>)
 8006106:	6813      	ldr	r3, [r2, #0]
 8006108:	4443      	add	r3, r8
 800610a:	6013      	str	r3, [r2, #0]
 800610c:	e68e      	b.n	8005e2c <_malloc_r+0x210>
 800610e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006112:	d814      	bhi.n	800613e <_malloc_r+0x522>
 8006114:	0bda      	lsrs	r2, r3, #15
 8006116:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800611a:	00c9      	lsls	r1, r1, #3
 800611c:	3277      	adds	r2, #119	; 0x77
 800611e:	e75e      	b.n	8005fde <_malloc_r+0x3c2>
 8006120:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006124:	207f      	movs	r0, #127	; 0x7f
 8006126:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800612a:	e5bc      	b.n	8005ca6 <_malloc_r+0x8a>
 800612c:	f104 0108 	add.w	r1, r4, #8
 8006130:	4630      	mov	r0, r6
 8006132:	9201      	str	r2, [sp, #4]
 8006134:	f7ff fa48 	bl	80055c8 <_free_r>
 8006138:	9a01      	ldr	r2, [sp, #4]
 800613a:	6813      	ldr	r3, [r2, #0]
 800613c:	e6bc      	b.n	8005eb8 <_malloc_r+0x29c>
 800613e:	f240 5154 	movw	r1, #1364	; 0x554
 8006142:	428a      	cmp	r2, r1
 8006144:	d805      	bhi.n	8006152 <_malloc_r+0x536>
 8006146:	0c9a      	lsrs	r2, r3, #18
 8006148:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800614c:	00c9      	lsls	r1, r1, #3
 800614e:	327c      	adds	r2, #124	; 0x7c
 8006150:	e745      	b.n	8005fde <_malloc_r+0x3c2>
 8006152:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006156:	227e      	movs	r2, #126	; 0x7e
 8006158:	e741      	b.n	8005fde <_malloc_r+0x3c2>
 800615a:	687b      	ldr	r3, [r7, #4]
 800615c:	e785      	b.n	800606a <_malloc_r+0x44e>
 800615e:	bf00      	nop
 8006160:	20000a6c 	.word	0x20000a6c

08006164 <memmove>:
 8006164:	4288      	cmp	r0, r1
 8006166:	b4f0      	push	{r4, r5, r6, r7}
 8006168:	d90d      	bls.n	8006186 <memmove+0x22>
 800616a:	188b      	adds	r3, r1, r2
 800616c:	4283      	cmp	r3, r0
 800616e:	d90a      	bls.n	8006186 <memmove+0x22>
 8006170:	1884      	adds	r4, r0, r2
 8006172:	b132      	cbz	r2, 8006182 <memmove+0x1e>
 8006174:	4622      	mov	r2, r4
 8006176:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800617a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800617e:	4299      	cmp	r1, r3
 8006180:	d1f9      	bne.n	8006176 <memmove+0x12>
 8006182:	bcf0      	pop	{r4, r5, r6, r7}
 8006184:	4770      	bx	lr
 8006186:	2a0f      	cmp	r2, #15
 8006188:	d949      	bls.n	800621e <memmove+0xba>
 800618a:	ea40 0301 	orr.w	r3, r0, r1
 800618e:	079b      	lsls	r3, r3, #30
 8006190:	d147      	bne.n	8006222 <memmove+0xbe>
 8006192:	f1a2 0310 	sub.w	r3, r2, #16
 8006196:	091b      	lsrs	r3, r3, #4
 8006198:	f101 0720 	add.w	r7, r1, #32
 800619c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80061a0:	f101 0410 	add.w	r4, r1, #16
 80061a4:	f100 0510 	add.w	r5, r0, #16
 80061a8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80061ac:	f845 6c10 	str.w	r6, [r5, #-16]
 80061b0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80061b4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80061b8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80061bc:	f845 6c08 	str.w	r6, [r5, #-8]
 80061c0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80061c4:	f845 6c04 	str.w	r6, [r5, #-4]
 80061c8:	3410      	adds	r4, #16
 80061ca:	42bc      	cmp	r4, r7
 80061cc:	f105 0510 	add.w	r5, r5, #16
 80061d0:	d1ea      	bne.n	80061a8 <memmove+0x44>
 80061d2:	3301      	adds	r3, #1
 80061d4:	f002 050f 	and.w	r5, r2, #15
 80061d8:	011b      	lsls	r3, r3, #4
 80061da:	2d03      	cmp	r5, #3
 80061dc:	4419      	add	r1, r3
 80061de:	4403      	add	r3, r0
 80061e0:	d921      	bls.n	8006226 <memmove+0xc2>
 80061e2:	1f1f      	subs	r7, r3, #4
 80061e4:	460e      	mov	r6, r1
 80061e6:	462c      	mov	r4, r5
 80061e8:	3c04      	subs	r4, #4
 80061ea:	f856 cb04 	ldr.w	ip, [r6], #4
 80061ee:	f847 cf04 	str.w	ip, [r7, #4]!
 80061f2:	2c03      	cmp	r4, #3
 80061f4:	d8f8      	bhi.n	80061e8 <memmove+0x84>
 80061f6:	1f2c      	subs	r4, r5, #4
 80061f8:	f024 0403 	bic.w	r4, r4, #3
 80061fc:	3404      	adds	r4, #4
 80061fe:	4423      	add	r3, r4
 8006200:	4421      	add	r1, r4
 8006202:	f002 0203 	and.w	r2, r2, #3
 8006206:	2a00      	cmp	r2, #0
 8006208:	d0bb      	beq.n	8006182 <memmove+0x1e>
 800620a:	3b01      	subs	r3, #1
 800620c:	440a      	add	r2, r1
 800620e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006212:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006216:	4291      	cmp	r1, r2
 8006218:	d1f9      	bne.n	800620e <memmove+0xaa>
 800621a:	bcf0      	pop	{r4, r5, r6, r7}
 800621c:	4770      	bx	lr
 800621e:	4603      	mov	r3, r0
 8006220:	e7f1      	b.n	8006206 <memmove+0xa2>
 8006222:	4603      	mov	r3, r0
 8006224:	e7f1      	b.n	800620a <memmove+0xa6>
 8006226:	462a      	mov	r2, r5
 8006228:	e7ed      	b.n	8006206 <memmove+0xa2>
 800622a:	bf00      	nop

0800622c <__malloc_lock>:
 800622c:	4801      	ldr	r0, [pc, #4]	; (8006234 <__malloc_lock+0x8>)
 800622e:	f7ff bc79 	b.w	8005b24 <__retarget_lock_acquire_recursive>
 8006232:	bf00      	nop
 8006234:	20000c9c 	.word	0x20000c9c

08006238 <__malloc_unlock>:
 8006238:	4801      	ldr	r0, [pc, #4]	; (8006240 <__malloc_unlock+0x8>)
 800623a:	f7ff bc75 	b.w	8005b28 <__retarget_lock_release_recursive>
 800623e:	bf00      	nop
 8006240:	20000c9c 	.word	0x20000c9c

08006244 <_Balloc>:
 8006244:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006246:	b570      	push	{r4, r5, r6, lr}
 8006248:	4605      	mov	r5, r0
 800624a:	460c      	mov	r4, r1
 800624c:	b14b      	cbz	r3, 8006262 <_Balloc+0x1e>
 800624e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006252:	b180      	cbz	r0, 8006276 <_Balloc+0x32>
 8006254:	6802      	ldr	r2, [r0, #0]
 8006256:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800625a:	2300      	movs	r3, #0
 800625c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006260:	bd70      	pop	{r4, r5, r6, pc}
 8006262:	2221      	movs	r2, #33	; 0x21
 8006264:	2104      	movs	r1, #4
 8006266:	f000 fe1d 	bl	8006ea4 <_calloc_r>
 800626a:	4603      	mov	r3, r0
 800626c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800626e:	2800      	cmp	r0, #0
 8006270:	d1ed      	bne.n	800624e <_Balloc+0xa>
 8006272:	2000      	movs	r0, #0
 8006274:	bd70      	pop	{r4, r5, r6, pc}
 8006276:	2101      	movs	r1, #1
 8006278:	fa01 f604 	lsl.w	r6, r1, r4
 800627c:	1d72      	adds	r2, r6, #5
 800627e:	4628      	mov	r0, r5
 8006280:	0092      	lsls	r2, r2, #2
 8006282:	f000 fe0f 	bl	8006ea4 <_calloc_r>
 8006286:	2800      	cmp	r0, #0
 8006288:	d0f3      	beq.n	8006272 <_Balloc+0x2e>
 800628a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800628e:	e7e4      	b.n	800625a <_Balloc+0x16>

08006290 <_Bfree>:
 8006290:	b131      	cbz	r1, 80062a0 <_Bfree+0x10>
 8006292:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006294:	684a      	ldr	r2, [r1, #4]
 8006296:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800629a:	6008      	str	r0, [r1, #0]
 800629c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80062a0:	4770      	bx	lr
 80062a2:	bf00      	nop

080062a4 <__multadd>:
 80062a4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80062a6:	690c      	ldr	r4, [r1, #16]
 80062a8:	b083      	sub	sp, #12
 80062aa:	460d      	mov	r5, r1
 80062ac:	4606      	mov	r6, r0
 80062ae:	f101 0c14 	add.w	ip, r1, #20
 80062b2:	2700      	movs	r7, #0
 80062b4:	f8dc 0000 	ldr.w	r0, [ip]
 80062b8:	b281      	uxth	r1, r0
 80062ba:	fb02 3301 	mla	r3, r2, r1, r3
 80062be:	0c01      	lsrs	r1, r0, #16
 80062c0:	0c18      	lsrs	r0, r3, #16
 80062c2:	fb02 0101 	mla	r1, r2, r1, r0
 80062c6:	b29b      	uxth	r3, r3
 80062c8:	3701      	adds	r7, #1
 80062ca:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80062ce:	42bc      	cmp	r4, r7
 80062d0:	f84c 3b04 	str.w	r3, [ip], #4
 80062d4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80062d8:	dcec      	bgt.n	80062b4 <__multadd+0x10>
 80062da:	b13b      	cbz	r3, 80062ec <__multadd+0x48>
 80062dc:	68aa      	ldr	r2, [r5, #8]
 80062de:	42a2      	cmp	r2, r4
 80062e0:	dd07      	ble.n	80062f2 <__multadd+0x4e>
 80062e2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80062e6:	3401      	adds	r4, #1
 80062e8:	6153      	str	r3, [r2, #20]
 80062ea:	612c      	str	r4, [r5, #16]
 80062ec:	4628      	mov	r0, r5
 80062ee:	b003      	add	sp, #12
 80062f0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80062f2:	6869      	ldr	r1, [r5, #4]
 80062f4:	9301      	str	r3, [sp, #4]
 80062f6:	3101      	adds	r1, #1
 80062f8:	4630      	mov	r0, r6
 80062fa:	f7ff ffa3 	bl	8006244 <_Balloc>
 80062fe:	692a      	ldr	r2, [r5, #16]
 8006300:	3202      	adds	r2, #2
 8006302:	f105 010c 	add.w	r1, r5, #12
 8006306:	4607      	mov	r7, r0
 8006308:	0092      	lsls	r2, r2, #2
 800630a:	300c      	adds	r0, #12
 800630c:	f7fa f8f8 	bl	8000500 <memcpy>
 8006310:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006312:	6869      	ldr	r1, [r5, #4]
 8006314:	9b01      	ldr	r3, [sp, #4]
 8006316:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800631a:	6028      	str	r0, [r5, #0]
 800631c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006320:	463d      	mov	r5, r7
 8006322:	e7de      	b.n	80062e2 <__multadd+0x3e>

08006324 <__hi0bits>:
 8006324:	0c02      	lsrs	r2, r0, #16
 8006326:	0412      	lsls	r2, r2, #16
 8006328:	4603      	mov	r3, r0
 800632a:	b9c2      	cbnz	r2, 800635e <__hi0bits+0x3a>
 800632c:	0403      	lsls	r3, r0, #16
 800632e:	2010      	movs	r0, #16
 8006330:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006334:	bf04      	itt	eq
 8006336:	021b      	lsleq	r3, r3, #8
 8006338:	3008      	addeq	r0, #8
 800633a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800633e:	bf04      	itt	eq
 8006340:	011b      	lsleq	r3, r3, #4
 8006342:	3004      	addeq	r0, #4
 8006344:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006348:	bf04      	itt	eq
 800634a:	009b      	lsleq	r3, r3, #2
 800634c:	3002      	addeq	r0, #2
 800634e:	2b00      	cmp	r3, #0
 8006350:	db04      	blt.n	800635c <__hi0bits+0x38>
 8006352:	005b      	lsls	r3, r3, #1
 8006354:	d501      	bpl.n	800635a <__hi0bits+0x36>
 8006356:	3001      	adds	r0, #1
 8006358:	4770      	bx	lr
 800635a:	2020      	movs	r0, #32
 800635c:	4770      	bx	lr
 800635e:	2000      	movs	r0, #0
 8006360:	e7e6      	b.n	8006330 <__hi0bits+0xc>
 8006362:	bf00      	nop

08006364 <__lo0bits>:
 8006364:	6803      	ldr	r3, [r0, #0]
 8006366:	f013 0207 	ands.w	r2, r3, #7
 800636a:	4601      	mov	r1, r0
 800636c:	d007      	beq.n	800637e <__lo0bits+0x1a>
 800636e:	07da      	lsls	r2, r3, #31
 8006370:	d41f      	bmi.n	80063b2 <__lo0bits+0x4e>
 8006372:	0798      	lsls	r0, r3, #30
 8006374:	d51f      	bpl.n	80063b6 <__lo0bits+0x52>
 8006376:	085b      	lsrs	r3, r3, #1
 8006378:	600b      	str	r3, [r1, #0]
 800637a:	2001      	movs	r0, #1
 800637c:	4770      	bx	lr
 800637e:	b298      	uxth	r0, r3
 8006380:	b1a0      	cbz	r0, 80063ac <__lo0bits+0x48>
 8006382:	4610      	mov	r0, r2
 8006384:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006388:	bf04      	itt	eq
 800638a:	0a1b      	lsreq	r3, r3, #8
 800638c:	3008      	addeq	r0, #8
 800638e:	071a      	lsls	r2, r3, #28
 8006390:	bf04      	itt	eq
 8006392:	091b      	lsreq	r3, r3, #4
 8006394:	3004      	addeq	r0, #4
 8006396:	079a      	lsls	r2, r3, #30
 8006398:	bf04      	itt	eq
 800639a:	089b      	lsreq	r3, r3, #2
 800639c:	3002      	addeq	r0, #2
 800639e:	07da      	lsls	r2, r3, #31
 80063a0:	d402      	bmi.n	80063a8 <__lo0bits+0x44>
 80063a2:	085b      	lsrs	r3, r3, #1
 80063a4:	d00b      	beq.n	80063be <__lo0bits+0x5a>
 80063a6:	3001      	adds	r0, #1
 80063a8:	600b      	str	r3, [r1, #0]
 80063aa:	4770      	bx	lr
 80063ac:	0c1b      	lsrs	r3, r3, #16
 80063ae:	2010      	movs	r0, #16
 80063b0:	e7e8      	b.n	8006384 <__lo0bits+0x20>
 80063b2:	2000      	movs	r0, #0
 80063b4:	4770      	bx	lr
 80063b6:	089b      	lsrs	r3, r3, #2
 80063b8:	600b      	str	r3, [r1, #0]
 80063ba:	2002      	movs	r0, #2
 80063bc:	4770      	bx	lr
 80063be:	2020      	movs	r0, #32
 80063c0:	4770      	bx	lr
 80063c2:	bf00      	nop

080063c4 <__i2b>:
 80063c4:	b510      	push	{r4, lr}
 80063c6:	460c      	mov	r4, r1
 80063c8:	2101      	movs	r1, #1
 80063ca:	f7ff ff3b 	bl	8006244 <_Balloc>
 80063ce:	2201      	movs	r2, #1
 80063d0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80063d4:	bd10      	pop	{r4, pc}
 80063d6:	bf00      	nop

080063d8 <__multiply>:
 80063d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80063dc:	690e      	ldr	r6, [r1, #16]
 80063de:	6914      	ldr	r4, [r2, #16]
 80063e0:	42a6      	cmp	r6, r4
 80063e2:	b083      	sub	sp, #12
 80063e4:	460f      	mov	r7, r1
 80063e6:	4615      	mov	r5, r2
 80063e8:	da04      	bge.n	80063f4 <__multiply+0x1c>
 80063ea:	4632      	mov	r2, r6
 80063ec:	462f      	mov	r7, r5
 80063ee:	4626      	mov	r6, r4
 80063f0:	460d      	mov	r5, r1
 80063f2:	4614      	mov	r4, r2
 80063f4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80063f8:	eb06 0804 	add.w	r8, r6, r4
 80063fc:	4543      	cmp	r3, r8
 80063fe:	bfb8      	it	lt
 8006400:	3101      	addlt	r1, #1
 8006402:	f7ff ff1f 	bl	8006244 <_Balloc>
 8006406:	f100 0914 	add.w	r9, r0, #20
 800640a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800640e:	45f1      	cmp	r9, lr
 8006410:	9000      	str	r0, [sp, #0]
 8006412:	d205      	bcs.n	8006420 <__multiply+0x48>
 8006414:	464b      	mov	r3, r9
 8006416:	2200      	movs	r2, #0
 8006418:	f843 2b04 	str.w	r2, [r3], #4
 800641c:	459e      	cmp	lr, r3
 800641e:	d8fb      	bhi.n	8006418 <__multiply+0x40>
 8006420:	f105 0a14 	add.w	sl, r5, #20
 8006424:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006428:	f107 0314 	add.w	r3, r7, #20
 800642c:	45a2      	cmp	sl, r4
 800642e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006432:	d261      	bcs.n	80064f8 <__multiply+0x120>
 8006434:	1b64      	subs	r4, r4, r5
 8006436:	3c15      	subs	r4, #21
 8006438:	f024 0403 	bic.w	r4, r4, #3
 800643c:	f8cd e004 	str.w	lr, [sp, #4]
 8006440:	44a2      	add	sl, r4
 8006442:	f105 0210 	add.w	r2, r5, #16
 8006446:	469e      	mov	lr, r3
 8006448:	e005      	b.n	8006456 <__multiply+0x7e>
 800644a:	0c2d      	lsrs	r5, r5, #16
 800644c:	d12b      	bne.n	80064a6 <__multiply+0xce>
 800644e:	4592      	cmp	sl, r2
 8006450:	f109 0904 	add.w	r9, r9, #4
 8006454:	d04e      	beq.n	80064f4 <__multiply+0x11c>
 8006456:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800645a:	fa1f fb85 	uxth.w	fp, r5
 800645e:	f1bb 0f00 	cmp.w	fp, #0
 8006462:	d0f2      	beq.n	800644a <__multiply+0x72>
 8006464:	4677      	mov	r7, lr
 8006466:	464e      	mov	r6, r9
 8006468:	2000      	movs	r0, #0
 800646a:	e000      	b.n	800646e <__multiply+0x96>
 800646c:	4626      	mov	r6, r4
 800646e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006472:	6834      	ldr	r4, [r6, #0]
 8006474:	b28b      	uxth	r3, r1
 8006476:	b2a5      	uxth	r5, r4
 8006478:	0c09      	lsrs	r1, r1, #16
 800647a:	0c24      	lsrs	r4, r4, #16
 800647c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006480:	4403      	add	r3, r0
 8006482:	fb0b 4001 	mla	r0, fp, r1, r4
 8006486:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800648a:	4634      	mov	r4, r6
 800648c:	b29b      	uxth	r3, r3
 800648e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006492:	45bc      	cmp	ip, r7
 8006494:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006498:	f844 3b04 	str.w	r3, [r4], #4
 800649c:	d8e6      	bhi.n	800646c <__multiply+0x94>
 800649e:	6070      	str	r0, [r6, #4]
 80064a0:	6815      	ldr	r5, [r2, #0]
 80064a2:	0c2d      	lsrs	r5, r5, #16
 80064a4:	d0d3      	beq.n	800644e <__multiply+0x76>
 80064a6:	f8d9 3000 	ldr.w	r3, [r9]
 80064aa:	4676      	mov	r6, lr
 80064ac:	4618      	mov	r0, r3
 80064ae:	46cb      	mov	fp, r9
 80064b0:	2100      	movs	r1, #0
 80064b2:	e000      	b.n	80064b6 <__multiply+0xde>
 80064b4:	46a3      	mov	fp, r4
 80064b6:	8834      	ldrh	r4, [r6, #0]
 80064b8:	0c00      	lsrs	r0, r0, #16
 80064ba:	fb05 0004 	mla	r0, r5, r4, r0
 80064be:	4401      	add	r1, r0
 80064c0:	b29b      	uxth	r3, r3
 80064c2:	465c      	mov	r4, fp
 80064c4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80064c8:	f844 3b04 	str.w	r3, [r4], #4
 80064cc:	f856 3b04 	ldr.w	r3, [r6], #4
 80064d0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80064d4:	0c1b      	lsrs	r3, r3, #16
 80064d6:	b287      	uxth	r7, r0
 80064d8:	fb05 7303 	mla	r3, r5, r3, r7
 80064dc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80064e0:	45b4      	cmp	ip, r6
 80064e2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80064e6:	d8e5      	bhi.n	80064b4 <__multiply+0xdc>
 80064e8:	4592      	cmp	sl, r2
 80064ea:	f8cb 3004 	str.w	r3, [fp, #4]
 80064ee:	f109 0904 	add.w	r9, r9, #4
 80064f2:	d1b0      	bne.n	8006456 <__multiply+0x7e>
 80064f4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80064f8:	f1b8 0f00 	cmp.w	r8, #0
 80064fc:	dd0b      	ble.n	8006516 <__multiply+0x13e>
 80064fe:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006502:	f1ae 0e04 	sub.w	lr, lr, #4
 8006506:	b11b      	cbz	r3, 8006510 <__multiply+0x138>
 8006508:	e005      	b.n	8006516 <__multiply+0x13e>
 800650a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800650e:	b913      	cbnz	r3, 8006516 <__multiply+0x13e>
 8006510:	f1b8 0801 	subs.w	r8, r8, #1
 8006514:	d1f9      	bne.n	800650a <__multiply+0x132>
 8006516:	9800      	ldr	r0, [sp, #0]
 8006518:	f8c0 8010 	str.w	r8, [r0, #16]
 800651c:	b003      	add	sp, #12
 800651e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006522:	bf00      	nop

08006524 <__pow5mult>:
 8006524:	f012 0303 	ands.w	r3, r2, #3
 8006528:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800652c:	4614      	mov	r4, r2
 800652e:	4607      	mov	r7, r0
 8006530:	d12e      	bne.n	8006590 <__pow5mult+0x6c>
 8006532:	460d      	mov	r5, r1
 8006534:	10a4      	asrs	r4, r4, #2
 8006536:	d01c      	beq.n	8006572 <__pow5mult+0x4e>
 8006538:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800653a:	b396      	cbz	r6, 80065a2 <__pow5mult+0x7e>
 800653c:	07e3      	lsls	r3, r4, #31
 800653e:	f04f 0800 	mov.w	r8, #0
 8006542:	d406      	bmi.n	8006552 <__pow5mult+0x2e>
 8006544:	1064      	asrs	r4, r4, #1
 8006546:	d014      	beq.n	8006572 <__pow5mult+0x4e>
 8006548:	6830      	ldr	r0, [r6, #0]
 800654a:	b1a8      	cbz	r0, 8006578 <__pow5mult+0x54>
 800654c:	4606      	mov	r6, r0
 800654e:	07e3      	lsls	r3, r4, #31
 8006550:	d5f8      	bpl.n	8006544 <__pow5mult+0x20>
 8006552:	4632      	mov	r2, r6
 8006554:	4629      	mov	r1, r5
 8006556:	4638      	mov	r0, r7
 8006558:	f7ff ff3e 	bl	80063d8 <__multiply>
 800655c:	b1b5      	cbz	r5, 800658c <__pow5mult+0x68>
 800655e:	686a      	ldr	r2, [r5, #4]
 8006560:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006562:	1064      	asrs	r4, r4, #1
 8006564:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006568:	6029      	str	r1, [r5, #0]
 800656a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800656e:	4605      	mov	r5, r0
 8006570:	d1ea      	bne.n	8006548 <__pow5mult+0x24>
 8006572:	4628      	mov	r0, r5
 8006574:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006578:	4632      	mov	r2, r6
 800657a:	4631      	mov	r1, r6
 800657c:	4638      	mov	r0, r7
 800657e:	f7ff ff2b 	bl	80063d8 <__multiply>
 8006582:	6030      	str	r0, [r6, #0]
 8006584:	f8c0 8000 	str.w	r8, [r0]
 8006588:	4606      	mov	r6, r0
 800658a:	e7e0      	b.n	800654e <__pow5mult+0x2a>
 800658c:	4605      	mov	r5, r0
 800658e:	e7d9      	b.n	8006544 <__pow5mult+0x20>
 8006590:	3b01      	subs	r3, #1
 8006592:	4a0b      	ldr	r2, [pc, #44]	; (80065c0 <__pow5mult+0x9c>)
 8006594:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006598:	2300      	movs	r3, #0
 800659a:	f7ff fe83 	bl	80062a4 <__multadd>
 800659e:	4605      	mov	r5, r0
 80065a0:	e7c8      	b.n	8006534 <__pow5mult+0x10>
 80065a2:	2101      	movs	r1, #1
 80065a4:	4638      	mov	r0, r7
 80065a6:	f7ff fe4d 	bl	8006244 <_Balloc>
 80065aa:	f240 2371 	movw	r3, #625	; 0x271
 80065ae:	6143      	str	r3, [r0, #20]
 80065b0:	2201      	movs	r2, #1
 80065b2:	2300      	movs	r3, #0
 80065b4:	6102      	str	r2, [r0, #16]
 80065b6:	4606      	mov	r6, r0
 80065b8:	64b8      	str	r0, [r7, #72]	; 0x48
 80065ba:	6003      	str	r3, [r0, #0]
 80065bc:	e7be      	b.n	800653c <__pow5mult+0x18>
 80065be:	bf00      	nop
 80065c0:	080075a8 	.word	0x080075a8

080065c4 <__lshift>:
 80065c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80065c8:	4691      	mov	r9, r2
 80065ca:	690a      	ldr	r2, [r1, #16]
 80065cc:	460e      	mov	r6, r1
 80065ce:	ea4f 1469 	mov.w	r4, r9, asr #5
 80065d2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80065d6:	eb04 0802 	add.w	r8, r4, r2
 80065da:	f108 0501 	add.w	r5, r8, #1
 80065de:	429d      	cmp	r5, r3
 80065e0:	4607      	mov	r7, r0
 80065e2:	dd04      	ble.n	80065ee <__lshift+0x2a>
 80065e4:	005b      	lsls	r3, r3, #1
 80065e6:	429d      	cmp	r5, r3
 80065e8:	f101 0101 	add.w	r1, r1, #1
 80065ec:	dcfa      	bgt.n	80065e4 <__lshift+0x20>
 80065ee:	4638      	mov	r0, r7
 80065f0:	f7ff fe28 	bl	8006244 <_Balloc>
 80065f4:	2c00      	cmp	r4, #0
 80065f6:	f100 0314 	add.w	r3, r0, #20
 80065fa:	dd37      	ble.n	800666c <__lshift+0xa8>
 80065fc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006600:	2200      	movs	r2, #0
 8006602:	f843 2b04 	str.w	r2, [r3], #4
 8006606:	428b      	cmp	r3, r1
 8006608:	d1fb      	bne.n	8006602 <__lshift+0x3e>
 800660a:	6934      	ldr	r4, [r6, #16]
 800660c:	f106 0314 	add.w	r3, r6, #20
 8006610:	f019 091f 	ands.w	r9, r9, #31
 8006614:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006618:	d020      	beq.n	800665c <__lshift+0x98>
 800661a:	f1c9 0e20 	rsb	lr, r9, #32
 800661e:	2200      	movs	r2, #0
 8006620:	e000      	b.n	8006624 <__lshift+0x60>
 8006622:	4651      	mov	r1, sl
 8006624:	681c      	ldr	r4, [r3, #0]
 8006626:	468a      	mov	sl, r1
 8006628:	fa04 f409 	lsl.w	r4, r4, r9
 800662c:	4314      	orrs	r4, r2
 800662e:	f84a 4b04 	str.w	r4, [sl], #4
 8006632:	f853 2b04 	ldr.w	r2, [r3], #4
 8006636:	4563      	cmp	r3, ip
 8006638:	fa22 f20e 	lsr.w	r2, r2, lr
 800663c:	d3f1      	bcc.n	8006622 <__lshift+0x5e>
 800663e:	604a      	str	r2, [r1, #4]
 8006640:	b10a      	cbz	r2, 8006646 <__lshift+0x82>
 8006642:	f108 0502 	add.w	r5, r8, #2
 8006646:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006648:	6872      	ldr	r2, [r6, #4]
 800664a:	3d01      	subs	r5, #1
 800664c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006650:	6105      	str	r5, [r0, #16]
 8006652:	6031      	str	r1, [r6, #0]
 8006654:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006658:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800665c:	3904      	subs	r1, #4
 800665e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006662:	f841 2f04 	str.w	r2, [r1, #4]!
 8006666:	459c      	cmp	ip, r3
 8006668:	d8f9      	bhi.n	800665e <__lshift+0x9a>
 800666a:	e7ec      	b.n	8006646 <__lshift+0x82>
 800666c:	4619      	mov	r1, r3
 800666e:	e7cc      	b.n	800660a <__lshift+0x46>

08006670 <__mcmp>:
 8006670:	b430      	push	{r4, r5}
 8006672:	690b      	ldr	r3, [r1, #16]
 8006674:	4605      	mov	r5, r0
 8006676:	6900      	ldr	r0, [r0, #16]
 8006678:	1ac0      	subs	r0, r0, r3
 800667a:	d10f      	bne.n	800669c <__mcmp+0x2c>
 800667c:	009b      	lsls	r3, r3, #2
 800667e:	3514      	adds	r5, #20
 8006680:	3114      	adds	r1, #20
 8006682:	4419      	add	r1, r3
 8006684:	442b      	add	r3, r5
 8006686:	e001      	b.n	800668c <__mcmp+0x1c>
 8006688:	429d      	cmp	r5, r3
 800668a:	d207      	bcs.n	800669c <__mcmp+0x2c>
 800668c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006690:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006694:	4294      	cmp	r4, r2
 8006696:	d0f7      	beq.n	8006688 <__mcmp+0x18>
 8006698:	d302      	bcc.n	80066a0 <__mcmp+0x30>
 800669a:	2001      	movs	r0, #1
 800669c:	bc30      	pop	{r4, r5}
 800669e:	4770      	bx	lr
 80066a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80066a4:	e7fa      	b.n	800669c <__mcmp+0x2c>
 80066a6:	bf00      	nop

080066a8 <__mdiff>:
 80066a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80066ac:	6913      	ldr	r3, [r2, #16]
 80066ae:	690d      	ldr	r5, [r1, #16]
 80066b0:	1aed      	subs	r5, r5, r3
 80066b2:	2d00      	cmp	r5, #0
 80066b4:	460e      	mov	r6, r1
 80066b6:	4690      	mov	r8, r2
 80066b8:	f101 0414 	add.w	r4, r1, #20
 80066bc:	f102 0714 	add.w	r7, r2, #20
 80066c0:	d114      	bne.n	80066ec <__mdiff+0x44>
 80066c2:	009b      	lsls	r3, r3, #2
 80066c4:	18e2      	adds	r2, r4, r3
 80066c6:	443b      	add	r3, r7
 80066c8:	e001      	b.n	80066ce <__mdiff+0x26>
 80066ca:	42a2      	cmp	r2, r4
 80066cc:	d959      	bls.n	8006782 <__mdiff+0xda>
 80066ce:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80066d2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80066d6:	458c      	cmp	ip, r1
 80066d8:	d0f7      	beq.n	80066ca <__mdiff+0x22>
 80066da:	d209      	bcs.n	80066f0 <__mdiff+0x48>
 80066dc:	4622      	mov	r2, r4
 80066de:	4633      	mov	r3, r6
 80066e0:	463c      	mov	r4, r7
 80066e2:	4646      	mov	r6, r8
 80066e4:	4617      	mov	r7, r2
 80066e6:	4698      	mov	r8, r3
 80066e8:	2501      	movs	r5, #1
 80066ea:	e001      	b.n	80066f0 <__mdiff+0x48>
 80066ec:	dbf6      	blt.n	80066dc <__mdiff+0x34>
 80066ee:	2500      	movs	r5, #0
 80066f0:	6871      	ldr	r1, [r6, #4]
 80066f2:	f7ff fda7 	bl	8006244 <_Balloc>
 80066f6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80066fa:	6936      	ldr	r6, [r6, #16]
 80066fc:	60c5      	str	r5, [r0, #12]
 80066fe:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006702:	46bc      	mov	ip, r7
 8006704:	f100 0514 	add.w	r5, r0, #20
 8006708:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800670c:	2300      	movs	r3, #0
 800670e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006712:	f854 8b04 	ldr.w	r8, [r4], #4
 8006716:	b28a      	uxth	r2, r1
 8006718:	fa13 f388 	uxtah	r3, r3, r8
 800671c:	0c09      	lsrs	r1, r1, #16
 800671e:	1a9a      	subs	r2, r3, r2
 8006720:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006724:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006728:	b292      	uxth	r2, r2
 800672a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800672e:	45e6      	cmp	lr, ip
 8006730:	f845 2b04 	str.w	r2, [r5], #4
 8006734:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006738:	d8e9      	bhi.n	800670e <__mdiff+0x66>
 800673a:	42a7      	cmp	r7, r4
 800673c:	d917      	bls.n	800676e <__mdiff+0xc6>
 800673e:	46ae      	mov	lr, r5
 8006740:	46a4      	mov	ip, r4
 8006742:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006746:	fa13 f382 	uxtah	r3, r3, r2
 800674a:	1419      	asrs	r1, r3, #16
 800674c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006750:	b29b      	uxth	r3, r3
 8006752:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006756:	4567      	cmp	r7, ip
 8006758:	f84e 2b04 	str.w	r2, [lr], #4
 800675c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006760:	d8ef      	bhi.n	8006742 <__mdiff+0x9a>
 8006762:	43e4      	mvns	r4, r4
 8006764:	4427      	add	r7, r4
 8006766:	f027 0703 	bic.w	r7, r7, #3
 800676a:	3704      	adds	r7, #4
 800676c:	443d      	add	r5, r7
 800676e:	3d04      	subs	r5, #4
 8006770:	b922      	cbnz	r2, 800677c <__mdiff+0xd4>
 8006772:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006776:	3e01      	subs	r6, #1
 8006778:	2b00      	cmp	r3, #0
 800677a:	d0fa      	beq.n	8006772 <__mdiff+0xca>
 800677c:	6106      	str	r6, [r0, #16]
 800677e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006782:	2100      	movs	r1, #0
 8006784:	f7ff fd5e 	bl	8006244 <_Balloc>
 8006788:	2201      	movs	r2, #1
 800678a:	2300      	movs	r3, #0
 800678c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006790:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006794 <__d2b>:
 8006794:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006798:	460f      	mov	r7, r1
 800679a:	b083      	sub	sp, #12
 800679c:	2101      	movs	r1, #1
 800679e:	ec55 4b10 	vmov	r4, r5, d0
 80067a2:	4616      	mov	r6, r2
 80067a4:	f7ff fd4e 	bl	8006244 <_Balloc>
 80067a8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80067ac:	4681      	mov	r9, r0
 80067ae:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80067b2:	f1b8 0f00 	cmp.w	r8, #0
 80067b6:	d001      	beq.n	80067bc <__d2b+0x28>
 80067b8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80067bc:	2c00      	cmp	r4, #0
 80067be:	9301      	str	r3, [sp, #4]
 80067c0:	d024      	beq.n	800680c <__d2b+0x78>
 80067c2:	a802      	add	r0, sp, #8
 80067c4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80067c8:	f7ff fdcc 	bl	8006364 <__lo0bits>
 80067cc:	2800      	cmp	r0, #0
 80067ce:	d136      	bne.n	800683e <__d2b+0xaa>
 80067d0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80067d4:	f8c9 2014 	str.w	r2, [r9, #20]
 80067d8:	2b00      	cmp	r3, #0
 80067da:	bf0c      	ite	eq
 80067dc:	2101      	moveq	r1, #1
 80067de:	2102      	movne	r1, #2
 80067e0:	f8c9 3018 	str.w	r3, [r9, #24]
 80067e4:	f8c9 1010 	str.w	r1, [r9, #16]
 80067e8:	f1b8 0f00 	cmp.w	r8, #0
 80067ec:	d11b      	bne.n	8006826 <__d2b+0x92>
 80067ee:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80067f2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80067f6:	6038      	str	r0, [r7, #0]
 80067f8:	6918      	ldr	r0, [r3, #16]
 80067fa:	f7ff fd93 	bl	8006324 <__hi0bits>
 80067fe:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006802:	6030      	str	r0, [r6, #0]
 8006804:	4648      	mov	r0, r9
 8006806:	b003      	add	sp, #12
 8006808:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800680c:	a801      	add	r0, sp, #4
 800680e:	f7ff fda9 	bl	8006364 <__lo0bits>
 8006812:	9b01      	ldr	r3, [sp, #4]
 8006814:	f8c9 3014 	str.w	r3, [r9, #20]
 8006818:	2101      	movs	r1, #1
 800681a:	3020      	adds	r0, #32
 800681c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006820:	f1b8 0f00 	cmp.w	r8, #0
 8006824:	d0e3      	beq.n	80067ee <__d2b+0x5a>
 8006826:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800682a:	eb08 0300 	add.w	r3, r8, r0
 800682e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006832:	603b      	str	r3, [r7, #0]
 8006834:	6030      	str	r0, [r6, #0]
 8006836:	4648      	mov	r0, r9
 8006838:	b003      	add	sp, #12
 800683a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800683e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006842:	f1c0 0220 	rsb	r2, r0, #32
 8006846:	fa03 f202 	lsl.w	r2, r3, r2
 800684a:	430a      	orrs	r2, r1
 800684c:	40c3      	lsrs	r3, r0
 800684e:	9301      	str	r3, [sp, #4]
 8006850:	f8c9 2014 	str.w	r2, [r9, #20]
 8006854:	e7c0      	b.n	80067d8 <__d2b+0x44>
 8006856:	bf00      	nop

08006858 <_realloc_r>:
 8006858:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800685c:	4692      	mov	sl, r2
 800685e:	b083      	sub	sp, #12
 8006860:	2900      	cmp	r1, #0
 8006862:	f000 80a1 	beq.w	80069a8 <_realloc_r+0x150>
 8006866:	460d      	mov	r5, r1
 8006868:	4680      	mov	r8, r0
 800686a:	f10a 040b 	add.w	r4, sl, #11
 800686e:	f7ff fcdd 	bl	800622c <__malloc_lock>
 8006872:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006876:	2c16      	cmp	r4, #22
 8006878:	f022 0603 	bic.w	r6, r2, #3
 800687c:	f1a5 0708 	sub.w	r7, r5, #8
 8006880:	d83e      	bhi.n	8006900 <_realloc_r+0xa8>
 8006882:	2410      	movs	r4, #16
 8006884:	4621      	mov	r1, r4
 8006886:	45a2      	cmp	sl, r4
 8006888:	d83f      	bhi.n	800690a <_realloc_r+0xb2>
 800688a:	428e      	cmp	r6, r1
 800688c:	eb07 0906 	add.w	r9, r7, r6
 8006890:	da74      	bge.n	800697c <_realloc_r+0x124>
 8006892:	4bc7      	ldr	r3, [pc, #796]	; (8006bb0 <_realloc_r+0x358>)
 8006894:	6898      	ldr	r0, [r3, #8]
 8006896:	4548      	cmp	r0, r9
 8006898:	f000 80aa 	beq.w	80069f0 <_realloc_r+0x198>
 800689c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80068a0:	f020 0301 	bic.w	r3, r0, #1
 80068a4:	444b      	add	r3, r9
 80068a6:	685b      	ldr	r3, [r3, #4]
 80068a8:	07db      	lsls	r3, r3, #31
 80068aa:	f140 8083 	bpl.w	80069b4 <_realloc_r+0x15c>
 80068ae:	07d2      	lsls	r2, r2, #31
 80068b0:	d534      	bpl.n	800691c <_realloc_r+0xc4>
 80068b2:	4651      	mov	r1, sl
 80068b4:	4640      	mov	r0, r8
 80068b6:	f7ff f9b1 	bl	8005c1c <_malloc_r>
 80068ba:	4682      	mov	sl, r0
 80068bc:	b1e0      	cbz	r0, 80068f8 <_realloc_r+0xa0>
 80068be:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80068c2:	f023 0301 	bic.w	r3, r3, #1
 80068c6:	443b      	add	r3, r7
 80068c8:	f1a0 0208 	sub.w	r2, r0, #8
 80068cc:	4293      	cmp	r3, r2
 80068ce:	f000 80f9 	beq.w	8006ac4 <_realloc_r+0x26c>
 80068d2:	1f32      	subs	r2, r6, #4
 80068d4:	2a24      	cmp	r2, #36	; 0x24
 80068d6:	f200 8107 	bhi.w	8006ae8 <_realloc_r+0x290>
 80068da:	2a13      	cmp	r2, #19
 80068dc:	6829      	ldr	r1, [r5, #0]
 80068de:	f200 80e6 	bhi.w	8006aae <_realloc_r+0x256>
 80068e2:	4603      	mov	r3, r0
 80068e4:	462a      	mov	r2, r5
 80068e6:	6019      	str	r1, [r3, #0]
 80068e8:	6851      	ldr	r1, [r2, #4]
 80068ea:	6059      	str	r1, [r3, #4]
 80068ec:	6892      	ldr	r2, [r2, #8]
 80068ee:	609a      	str	r2, [r3, #8]
 80068f0:	4629      	mov	r1, r5
 80068f2:	4640      	mov	r0, r8
 80068f4:	f7fe fe68 	bl	80055c8 <_free_r>
 80068f8:	4640      	mov	r0, r8
 80068fa:	f7ff fc9d 	bl	8006238 <__malloc_unlock>
 80068fe:	e04f      	b.n	80069a0 <_realloc_r+0x148>
 8006900:	f024 0407 	bic.w	r4, r4, #7
 8006904:	2c00      	cmp	r4, #0
 8006906:	4621      	mov	r1, r4
 8006908:	dabd      	bge.n	8006886 <_realloc_r+0x2e>
 800690a:	f04f 0a00 	mov.w	sl, #0
 800690e:	230c      	movs	r3, #12
 8006910:	4650      	mov	r0, sl
 8006912:	f8c8 3000 	str.w	r3, [r8]
 8006916:	b003      	add	sp, #12
 8006918:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800691c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006920:	eba7 0b03 	sub.w	fp, r7, r3
 8006924:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006928:	f022 0203 	bic.w	r2, r2, #3
 800692c:	18b3      	adds	r3, r6, r2
 800692e:	428b      	cmp	r3, r1
 8006930:	dbbf      	blt.n	80068b2 <_realloc_r+0x5a>
 8006932:	46da      	mov	sl, fp
 8006934:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006938:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800693c:	1f32      	subs	r2, r6, #4
 800693e:	2a24      	cmp	r2, #36	; 0x24
 8006940:	60c1      	str	r1, [r0, #12]
 8006942:	eb0b 0903 	add.w	r9, fp, r3
 8006946:	6088      	str	r0, [r1, #8]
 8006948:	f200 80c6 	bhi.w	8006ad8 <_realloc_r+0x280>
 800694c:	2a13      	cmp	r2, #19
 800694e:	6829      	ldr	r1, [r5, #0]
 8006950:	f240 80c0 	bls.w	8006ad4 <_realloc_r+0x27c>
 8006954:	f8cb 1008 	str.w	r1, [fp, #8]
 8006958:	6869      	ldr	r1, [r5, #4]
 800695a:	f8cb 100c 	str.w	r1, [fp, #12]
 800695e:	2a1b      	cmp	r2, #27
 8006960:	68a9      	ldr	r1, [r5, #8]
 8006962:	f200 80d8 	bhi.w	8006b16 <_realloc_r+0x2be>
 8006966:	f10b 0210 	add.w	r2, fp, #16
 800696a:	3508      	adds	r5, #8
 800696c:	6011      	str	r1, [r2, #0]
 800696e:	6869      	ldr	r1, [r5, #4]
 8006970:	6051      	str	r1, [r2, #4]
 8006972:	68a9      	ldr	r1, [r5, #8]
 8006974:	6091      	str	r1, [r2, #8]
 8006976:	461e      	mov	r6, r3
 8006978:	465f      	mov	r7, fp
 800697a:	4655      	mov	r5, sl
 800697c:	687b      	ldr	r3, [r7, #4]
 800697e:	1b32      	subs	r2, r6, r4
 8006980:	2a0f      	cmp	r2, #15
 8006982:	f003 0301 	and.w	r3, r3, #1
 8006986:	d822      	bhi.n	80069ce <_realloc_r+0x176>
 8006988:	4333      	orrs	r3, r6
 800698a:	607b      	str	r3, [r7, #4]
 800698c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006990:	f043 0301 	orr.w	r3, r3, #1
 8006994:	f8c9 3004 	str.w	r3, [r9, #4]
 8006998:	4640      	mov	r0, r8
 800699a:	f7ff fc4d 	bl	8006238 <__malloc_unlock>
 800699e:	46aa      	mov	sl, r5
 80069a0:	4650      	mov	r0, sl
 80069a2:	b003      	add	sp, #12
 80069a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80069a8:	4611      	mov	r1, r2
 80069aa:	b003      	add	sp, #12
 80069ac:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069b0:	f7ff b934 	b.w	8005c1c <_malloc_r>
 80069b4:	f020 0003 	bic.w	r0, r0, #3
 80069b8:	1833      	adds	r3, r6, r0
 80069ba:	428b      	cmp	r3, r1
 80069bc:	db61      	blt.n	8006a82 <_realloc_r+0x22a>
 80069be:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80069c2:	461e      	mov	r6, r3
 80069c4:	60ca      	str	r2, [r1, #12]
 80069c6:	eb07 0903 	add.w	r9, r7, r3
 80069ca:	6091      	str	r1, [r2, #8]
 80069cc:	e7d6      	b.n	800697c <_realloc_r+0x124>
 80069ce:	1939      	adds	r1, r7, r4
 80069d0:	4323      	orrs	r3, r4
 80069d2:	f042 0201 	orr.w	r2, r2, #1
 80069d6:	607b      	str	r3, [r7, #4]
 80069d8:	604a      	str	r2, [r1, #4]
 80069da:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80069de:	f043 0301 	orr.w	r3, r3, #1
 80069e2:	3108      	adds	r1, #8
 80069e4:	f8c9 3004 	str.w	r3, [r9, #4]
 80069e8:	4640      	mov	r0, r8
 80069ea:	f7fe fded 	bl	80055c8 <_free_r>
 80069ee:	e7d3      	b.n	8006998 <_realloc_r+0x140>
 80069f0:	6840      	ldr	r0, [r0, #4]
 80069f2:	f020 0903 	bic.w	r9, r0, #3
 80069f6:	44b1      	add	r9, r6
 80069f8:	f104 0010 	add.w	r0, r4, #16
 80069fc:	4581      	cmp	r9, r0
 80069fe:	da77      	bge.n	8006af0 <_realloc_r+0x298>
 8006a00:	07d2      	lsls	r2, r2, #31
 8006a02:	f53f af56 	bmi.w	80068b2 <_realloc_r+0x5a>
 8006a06:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006a0a:	eba7 0b02 	sub.w	fp, r7, r2
 8006a0e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a12:	f022 0203 	bic.w	r2, r2, #3
 8006a16:	4491      	add	r9, r2
 8006a18:	4548      	cmp	r0, r9
 8006a1a:	dc87      	bgt.n	800692c <_realloc_r+0xd4>
 8006a1c:	46da      	mov	sl, fp
 8006a1e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006a22:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006a26:	1f32      	subs	r2, r6, #4
 8006a28:	2a24      	cmp	r2, #36	; 0x24
 8006a2a:	60c1      	str	r1, [r0, #12]
 8006a2c:	6088      	str	r0, [r1, #8]
 8006a2e:	f200 80a1 	bhi.w	8006b74 <_realloc_r+0x31c>
 8006a32:	2a13      	cmp	r2, #19
 8006a34:	6829      	ldr	r1, [r5, #0]
 8006a36:	f240 809b 	bls.w	8006b70 <_realloc_r+0x318>
 8006a3a:	f8cb 1008 	str.w	r1, [fp, #8]
 8006a3e:	6869      	ldr	r1, [r5, #4]
 8006a40:	f8cb 100c 	str.w	r1, [fp, #12]
 8006a44:	2a1b      	cmp	r2, #27
 8006a46:	68a9      	ldr	r1, [r5, #8]
 8006a48:	f200 809b 	bhi.w	8006b82 <_realloc_r+0x32a>
 8006a4c:	f10b 0210 	add.w	r2, fp, #16
 8006a50:	3508      	adds	r5, #8
 8006a52:	6011      	str	r1, [r2, #0]
 8006a54:	6869      	ldr	r1, [r5, #4]
 8006a56:	6051      	str	r1, [r2, #4]
 8006a58:	68a9      	ldr	r1, [r5, #8]
 8006a5a:	6091      	str	r1, [r2, #8]
 8006a5c:	eb0b 0104 	add.w	r1, fp, r4
 8006a60:	eba9 0204 	sub.w	r2, r9, r4
 8006a64:	f042 0201 	orr.w	r2, r2, #1
 8006a68:	6099      	str	r1, [r3, #8]
 8006a6a:	604a      	str	r2, [r1, #4]
 8006a6c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006a70:	f003 0301 	and.w	r3, r3, #1
 8006a74:	431c      	orrs	r4, r3
 8006a76:	4640      	mov	r0, r8
 8006a78:	f8cb 4004 	str.w	r4, [fp, #4]
 8006a7c:	f7ff fbdc 	bl	8006238 <__malloc_unlock>
 8006a80:	e78e      	b.n	80069a0 <_realloc_r+0x148>
 8006a82:	07d3      	lsls	r3, r2, #31
 8006a84:	f53f af15 	bmi.w	80068b2 <_realloc_r+0x5a>
 8006a88:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006a8c:	eba7 0b03 	sub.w	fp, r7, r3
 8006a90:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a94:	f022 0203 	bic.w	r2, r2, #3
 8006a98:	4410      	add	r0, r2
 8006a9a:	1983      	adds	r3, r0, r6
 8006a9c:	428b      	cmp	r3, r1
 8006a9e:	f6ff af45 	blt.w	800692c <_realloc_r+0xd4>
 8006aa2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006aa6:	46da      	mov	sl, fp
 8006aa8:	60ca      	str	r2, [r1, #12]
 8006aaa:	6091      	str	r1, [r2, #8]
 8006aac:	e742      	b.n	8006934 <_realloc_r+0xdc>
 8006aae:	6001      	str	r1, [r0, #0]
 8006ab0:	686b      	ldr	r3, [r5, #4]
 8006ab2:	6043      	str	r3, [r0, #4]
 8006ab4:	2a1b      	cmp	r2, #27
 8006ab6:	d83a      	bhi.n	8006b2e <_realloc_r+0x2d6>
 8006ab8:	f105 0208 	add.w	r2, r5, #8
 8006abc:	f100 0308 	add.w	r3, r0, #8
 8006ac0:	68a9      	ldr	r1, [r5, #8]
 8006ac2:	e710      	b.n	80068e6 <_realloc_r+0x8e>
 8006ac4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006ac8:	f023 0303 	bic.w	r3, r3, #3
 8006acc:	441e      	add	r6, r3
 8006ace:	eb07 0906 	add.w	r9, r7, r6
 8006ad2:	e753      	b.n	800697c <_realloc_r+0x124>
 8006ad4:	4652      	mov	r2, sl
 8006ad6:	e749      	b.n	800696c <_realloc_r+0x114>
 8006ad8:	4629      	mov	r1, r5
 8006ada:	4650      	mov	r0, sl
 8006adc:	461e      	mov	r6, r3
 8006ade:	465f      	mov	r7, fp
 8006ae0:	f7ff fb40 	bl	8006164 <memmove>
 8006ae4:	4655      	mov	r5, sl
 8006ae6:	e749      	b.n	800697c <_realloc_r+0x124>
 8006ae8:	4629      	mov	r1, r5
 8006aea:	f7ff fb3b 	bl	8006164 <memmove>
 8006aee:	e6ff      	b.n	80068f0 <_realloc_r+0x98>
 8006af0:	4427      	add	r7, r4
 8006af2:	eba9 0904 	sub.w	r9, r9, r4
 8006af6:	f049 0201 	orr.w	r2, r9, #1
 8006afa:	609f      	str	r7, [r3, #8]
 8006afc:	607a      	str	r2, [r7, #4]
 8006afe:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006b02:	f003 0301 	and.w	r3, r3, #1
 8006b06:	431c      	orrs	r4, r3
 8006b08:	4640      	mov	r0, r8
 8006b0a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006b0e:	f7ff fb93 	bl	8006238 <__malloc_unlock>
 8006b12:	46aa      	mov	sl, r5
 8006b14:	e744      	b.n	80069a0 <_realloc_r+0x148>
 8006b16:	f8cb 1010 	str.w	r1, [fp, #16]
 8006b1a:	68e9      	ldr	r1, [r5, #12]
 8006b1c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006b20:	2a24      	cmp	r2, #36	; 0x24
 8006b22:	d010      	beq.n	8006b46 <_realloc_r+0x2ee>
 8006b24:	6929      	ldr	r1, [r5, #16]
 8006b26:	f10b 0218 	add.w	r2, fp, #24
 8006b2a:	3510      	adds	r5, #16
 8006b2c:	e71e      	b.n	800696c <_realloc_r+0x114>
 8006b2e:	68ab      	ldr	r3, [r5, #8]
 8006b30:	6083      	str	r3, [r0, #8]
 8006b32:	68eb      	ldr	r3, [r5, #12]
 8006b34:	60c3      	str	r3, [r0, #12]
 8006b36:	2a24      	cmp	r2, #36	; 0x24
 8006b38:	d010      	beq.n	8006b5c <_realloc_r+0x304>
 8006b3a:	f105 0210 	add.w	r2, r5, #16
 8006b3e:	f100 0310 	add.w	r3, r0, #16
 8006b42:	6929      	ldr	r1, [r5, #16]
 8006b44:	e6cf      	b.n	80068e6 <_realloc_r+0x8e>
 8006b46:	692a      	ldr	r2, [r5, #16]
 8006b48:	f8cb 2018 	str.w	r2, [fp, #24]
 8006b4c:	696a      	ldr	r2, [r5, #20]
 8006b4e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006b52:	69a9      	ldr	r1, [r5, #24]
 8006b54:	f10b 0220 	add.w	r2, fp, #32
 8006b58:	3518      	adds	r5, #24
 8006b5a:	e707      	b.n	800696c <_realloc_r+0x114>
 8006b5c:	692b      	ldr	r3, [r5, #16]
 8006b5e:	6103      	str	r3, [r0, #16]
 8006b60:	696b      	ldr	r3, [r5, #20]
 8006b62:	6143      	str	r3, [r0, #20]
 8006b64:	69a9      	ldr	r1, [r5, #24]
 8006b66:	f105 0218 	add.w	r2, r5, #24
 8006b6a:	f100 0318 	add.w	r3, r0, #24
 8006b6e:	e6ba      	b.n	80068e6 <_realloc_r+0x8e>
 8006b70:	4652      	mov	r2, sl
 8006b72:	e76e      	b.n	8006a52 <_realloc_r+0x1fa>
 8006b74:	4629      	mov	r1, r5
 8006b76:	4650      	mov	r0, sl
 8006b78:	9301      	str	r3, [sp, #4]
 8006b7a:	f7ff faf3 	bl	8006164 <memmove>
 8006b7e:	9b01      	ldr	r3, [sp, #4]
 8006b80:	e76c      	b.n	8006a5c <_realloc_r+0x204>
 8006b82:	f8cb 1010 	str.w	r1, [fp, #16]
 8006b86:	68e9      	ldr	r1, [r5, #12]
 8006b88:	f8cb 1014 	str.w	r1, [fp, #20]
 8006b8c:	2a24      	cmp	r2, #36	; 0x24
 8006b8e:	d004      	beq.n	8006b9a <_realloc_r+0x342>
 8006b90:	6929      	ldr	r1, [r5, #16]
 8006b92:	f10b 0218 	add.w	r2, fp, #24
 8006b96:	3510      	adds	r5, #16
 8006b98:	e75b      	b.n	8006a52 <_realloc_r+0x1fa>
 8006b9a:	692a      	ldr	r2, [r5, #16]
 8006b9c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006ba0:	696a      	ldr	r2, [r5, #20]
 8006ba2:	f8cb 201c 	str.w	r2, [fp, #28]
 8006ba6:	69a9      	ldr	r1, [r5, #24]
 8006ba8:	f10b 0220 	add.w	r2, fp, #32
 8006bac:	3518      	adds	r5, #24
 8006bae:	e750      	b.n	8006a52 <_realloc_r+0x1fa>
 8006bb0:	2000044c 	.word	0x2000044c

08006bb4 <frexp>:
 8006bb4:	ec53 2b10 	vmov	r2, r3, d0
 8006bb8:	b570      	push	{r4, r5, r6, lr}
 8006bba:	4e16      	ldr	r6, [pc, #88]	; (8006c14 <frexp+0x60>)
 8006bbc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006bc0:	2500      	movs	r5, #0
 8006bc2:	42b1      	cmp	r1, r6
 8006bc4:	4604      	mov	r4, r0
 8006bc6:	6005      	str	r5, [r0, #0]
 8006bc8:	dc21      	bgt.n	8006c0e <frexp+0x5a>
 8006bca:	ee10 6a10 	vmov	r6, s0
 8006bce:	430e      	orrs	r6, r1
 8006bd0:	d01d      	beq.n	8006c0e <frexp+0x5a>
 8006bd2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006bd6:	4618      	mov	r0, r3
 8006bd8:	da0c      	bge.n	8006bf4 <frexp+0x40>
 8006bda:	4619      	mov	r1, r3
 8006bdc:	2200      	movs	r2, #0
 8006bde:	ee10 0a10 	vmov	r0, s0
 8006be2:	4b0d      	ldr	r3, [pc, #52]	; (8006c18 <frexp+0x64>)
 8006be4:	f7f9 ffa8 	bl	8000b38 <__aeabi_dmul>
 8006be8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006bec:	4602      	mov	r2, r0
 8006bee:	4608      	mov	r0, r1
 8006bf0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006bf4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006bf8:	1509      	asrs	r1, r1, #20
 8006bfa:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006bfe:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006c02:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006c06:	4429      	add	r1, r5
 8006c08:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006c0c:	6021      	str	r1, [r4, #0]
 8006c0e:	ec43 2b10 	vmov	d0, r2, r3
 8006c12:	bd70      	pop	{r4, r5, r6, pc}
 8006c14:	7fefffff 	.word	0x7fefffff
 8006c18:	43500000 	.word	0x43500000

08006c1c <_sbrk_r>:
 8006c1c:	b538      	push	{r3, r4, r5, lr}
 8006c1e:	4c07      	ldr	r4, [pc, #28]	; (8006c3c <_sbrk_r+0x20>)
 8006c20:	2300      	movs	r3, #0
 8006c22:	4605      	mov	r5, r0
 8006c24:	4608      	mov	r0, r1
 8006c26:	6023      	str	r3, [r4, #0]
 8006c28:	f7fb fc2d 	bl	8002486 <_sbrk>
 8006c2c:	1c43      	adds	r3, r0, #1
 8006c2e:	d000      	beq.n	8006c32 <_sbrk_r+0x16>
 8006c30:	bd38      	pop	{r3, r4, r5, pc}
 8006c32:	6823      	ldr	r3, [r4, #0]
 8006c34:	2b00      	cmp	r3, #0
 8006c36:	d0fb      	beq.n	8006c30 <_sbrk_r+0x14>
 8006c38:	602b      	str	r3, [r5, #0]
 8006c3a:	bd38      	pop	{r3, r4, r5, pc}
 8006c3c:	20000cb0 	.word	0x20000cb0

08006c40 <__sread>:
 8006c40:	b510      	push	{r4, lr}
 8006c42:	460c      	mov	r4, r1
 8006c44:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c48:	f000 fabc 	bl	80071c4 <_read_r>
 8006c4c:	2800      	cmp	r0, #0
 8006c4e:	db03      	blt.n	8006c58 <__sread+0x18>
 8006c50:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006c52:	4403      	add	r3, r0
 8006c54:	6523      	str	r3, [r4, #80]	; 0x50
 8006c56:	bd10      	pop	{r4, pc}
 8006c58:	89a3      	ldrh	r3, [r4, #12]
 8006c5a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006c5e:	81a3      	strh	r3, [r4, #12]
 8006c60:	bd10      	pop	{r4, pc}
 8006c62:	bf00      	nop

08006c64 <__swrite>:
 8006c64:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006c68:	4616      	mov	r6, r2
 8006c6a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006c6e:	461f      	mov	r7, r3
 8006c70:	05d3      	lsls	r3, r2, #23
 8006c72:	460c      	mov	r4, r1
 8006c74:	4605      	mov	r5, r0
 8006c76:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c7a:	d507      	bpl.n	8006c8c <__swrite+0x28>
 8006c7c:	2200      	movs	r2, #0
 8006c7e:	2302      	movs	r3, #2
 8006c80:	f000 fa74 	bl	800716c <_lseek_r>
 8006c84:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006c88:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006c8c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006c90:	81a2      	strh	r2, [r4, #12]
 8006c92:	463b      	mov	r3, r7
 8006c94:	4632      	mov	r2, r6
 8006c96:	4628      	mov	r0, r5
 8006c98:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006c9c:	f000 b88c 	b.w	8006db8 <_write_r>

08006ca0 <__sseek>:
 8006ca0:	b510      	push	{r4, lr}
 8006ca2:	460c      	mov	r4, r1
 8006ca4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ca8:	f000 fa60 	bl	800716c <_lseek_r>
 8006cac:	89a3      	ldrh	r3, [r4, #12]
 8006cae:	1c42      	adds	r2, r0, #1
 8006cb0:	bf0e      	itee	eq
 8006cb2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006cb6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006cba:	6520      	strne	r0, [r4, #80]	; 0x50
 8006cbc:	81a3      	strh	r3, [r4, #12]
 8006cbe:	bd10      	pop	{r4, pc}

08006cc0 <__sclose>:
 8006cc0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006cc4:	f000 b922 	b.w	8006f0c <_close_r>

08006cc8 <strncpy>:
 8006cc8:	ea40 0301 	orr.w	r3, r0, r1
 8006ccc:	079b      	lsls	r3, r3, #30
 8006cce:	b470      	push	{r4, r5, r6}
 8006cd0:	d12a      	bne.n	8006d28 <strncpy+0x60>
 8006cd2:	2a03      	cmp	r2, #3
 8006cd4:	d928      	bls.n	8006d28 <strncpy+0x60>
 8006cd6:	460c      	mov	r4, r1
 8006cd8:	4603      	mov	r3, r0
 8006cda:	4621      	mov	r1, r4
 8006cdc:	f854 6b04 	ldr.w	r6, [r4], #4
 8006ce0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006ce4:	ea25 0506 	bic.w	r5, r5, r6
 8006ce8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006cec:	d106      	bne.n	8006cfc <strncpy+0x34>
 8006cee:	3a04      	subs	r2, #4
 8006cf0:	2a03      	cmp	r2, #3
 8006cf2:	f843 6b04 	str.w	r6, [r3], #4
 8006cf6:	4621      	mov	r1, r4
 8006cf8:	d8ef      	bhi.n	8006cda <strncpy+0x12>
 8006cfa:	b19a      	cbz	r2, 8006d24 <strncpy+0x5c>
 8006cfc:	780c      	ldrb	r4, [r1, #0]
 8006cfe:	701c      	strb	r4, [r3, #0]
 8006d00:	3a01      	subs	r2, #1
 8006d02:	3301      	adds	r3, #1
 8006d04:	b13c      	cbz	r4, 8006d16 <strncpy+0x4e>
 8006d06:	b16a      	cbz	r2, 8006d24 <strncpy+0x5c>
 8006d08:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006d0c:	f803 4b01 	strb.w	r4, [r3], #1
 8006d10:	3a01      	subs	r2, #1
 8006d12:	2c00      	cmp	r4, #0
 8006d14:	d1f7      	bne.n	8006d06 <strncpy+0x3e>
 8006d16:	b12a      	cbz	r2, 8006d24 <strncpy+0x5c>
 8006d18:	441a      	add	r2, r3
 8006d1a:	2100      	movs	r1, #0
 8006d1c:	f803 1b01 	strb.w	r1, [r3], #1
 8006d20:	4293      	cmp	r3, r2
 8006d22:	d1fb      	bne.n	8006d1c <strncpy+0x54>
 8006d24:	bc70      	pop	{r4, r5, r6}
 8006d26:	4770      	bx	lr
 8006d28:	4603      	mov	r3, r0
 8006d2a:	e7e6      	b.n	8006cfa <strncpy+0x32>

08006d2c <__sprint_r.part.0>:
 8006d2c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006d30:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006d32:	049c      	lsls	r4, r3, #18
 8006d34:	4692      	mov	sl, r2
 8006d36:	d52d      	bpl.n	8006d94 <__sprint_r.part.0+0x68>
 8006d38:	6893      	ldr	r3, [r2, #8]
 8006d3a:	6812      	ldr	r2, [r2, #0]
 8006d3c:	b343      	cbz	r3, 8006d90 <__sprint_r.part.0+0x64>
 8006d3e:	460e      	mov	r6, r1
 8006d40:	4607      	mov	r7, r0
 8006d42:	f102 0908 	add.w	r9, r2, #8
 8006d46:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006d4a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006d4e:	d015      	beq.n	8006d7c <__sprint_r.part.0+0x50>
 8006d50:	3d04      	subs	r5, #4
 8006d52:	2400      	movs	r4, #0
 8006d54:	e001      	b.n	8006d5a <__sprint_r.part.0+0x2e>
 8006d56:	45a0      	cmp	r8, r4
 8006d58:	d00e      	beq.n	8006d78 <__sprint_r.part.0+0x4c>
 8006d5a:	4632      	mov	r2, r6
 8006d5c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006d60:	4638      	mov	r0, r7
 8006d62:	f000 f99d 	bl	80070a0 <_fputwc_r>
 8006d66:	1c43      	adds	r3, r0, #1
 8006d68:	f104 0401 	add.w	r4, r4, #1
 8006d6c:	d1f3      	bne.n	8006d56 <__sprint_r.part.0+0x2a>
 8006d6e:	2300      	movs	r3, #0
 8006d70:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006d74:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d78:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006d7c:	f02b 0b03 	bic.w	fp, fp, #3
 8006d80:	eba3 030b 	sub.w	r3, r3, fp
 8006d84:	f8ca 3008 	str.w	r3, [sl, #8]
 8006d88:	f109 0908 	add.w	r9, r9, #8
 8006d8c:	2b00      	cmp	r3, #0
 8006d8e:	d1da      	bne.n	8006d46 <__sprint_r.part.0+0x1a>
 8006d90:	2000      	movs	r0, #0
 8006d92:	e7ec      	b.n	8006d6e <__sprint_r.part.0+0x42>
 8006d94:	f7fe fd0c 	bl	80057b0 <__sfvwrite_r>
 8006d98:	2300      	movs	r3, #0
 8006d9a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006d9e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006da2:	bf00      	nop

08006da4 <__sprint_r>:
 8006da4:	6893      	ldr	r3, [r2, #8]
 8006da6:	b10b      	cbz	r3, 8006dac <__sprint_r+0x8>
 8006da8:	f7ff bfc0 	b.w	8006d2c <__sprint_r.part.0>
 8006dac:	b410      	push	{r4}
 8006dae:	4618      	mov	r0, r3
 8006db0:	6053      	str	r3, [r2, #4]
 8006db2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006db6:	4770      	bx	lr

08006db8 <_write_r>:
 8006db8:	b570      	push	{r4, r5, r6, lr}
 8006dba:	460d      	mov	r5, r1
 8006dbc:	4c08      	ldr	r4, [pc, #32]	; (8006de0 <_write_r+0x28>)
 8006dbe:	4611      	mov	r1, r2
 8006dc0:	4606      	mov	r6, r0
 8006dc2:	461a      	mov	r2, r3
 8006dc4:	4628      	mov	r0, r5
 8006dc6:	2300      	movs	r3, #0
 8006dc8:	6023      	str	r3, [r4, #0]
 8006dca:	f7fb fb3e 	bl	800244a <_write>
 8006dce:	1c43      	adds	r3, r0, #1
 8006dd0:	d000      	beq.n	8006dd4 <_write_r+0x1c>
 8006dd2:	bd70      	pop	{r4, r5, r6, pc}
 8006dd4:	6823      	ldr	r3, [r4, #0]
 8006dd6:	2b00      	cmp	r3, #0
 8006dd8:	d0fb      	beq.n	8006dd2 <_write_r+0x1a>
 8006dda:	6033      	str	r3, [r6, #0]
 8006ddc:	bd70      	pop	{r4, r5, r6, pc}
 8006dde:	bf00      	nop
 8006de0:	20000cb0 	.word	0x20000cb0

08006de4 <__register_exitproc>:
 8006de4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006de8:	4d2b      	ldr	r5, [pc, #172]	; (8006e98 <__register_exitproc+0xb4>)
 8006dea:	4606      	mov	r6, r0
 8006dec:	6828      	ldr	r0, [r5, #0]
 8006dee:	4698      	mov	r8, r3
 8006df0:	460f      	mov	r7, r1
 8006df2:	4691      	mov	r9, r2
 8006df4:	f7fe fe96 	bl	8005b24 <__retarget_lock_acquire_recursive>
 8006df8:	4b28      	ldr	r3, [pc, #160]	; (8006e9c <__register_exitproc+0xb8>)
 8006dfa:	681c      	ldr	r4, [r3, #0]
 8006dfc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006e00:	2b00      	cmp	r3, #0
 8006e02:	d03d      	beq.n	8006e80 <__register_exitproc+0x9c>
 8006e04:	685a      	ldr	r2, [r3, #4]
 8006e06:	2a1f      	cmp	r2, #31
 8006e08:	dc0d      	bgt.n	8006e26 <__register_exitproc+0x42>
 8006e0a:	f102 0c01 	add.w	ip, r2, #1
 8006e0e:	bb16      	cbnz	r6, 8006e56 <__register_exitproc+0x72>
 8006e10:	3202      	adds	r2, #2
 8006e12:	f8c3 c004 	str.w	ip, [r3, #4]
 8006e16:	6828      	ldr	r0, [r5, #0]
 8006e18:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006e1c:	f7fe fe84 	bl	8005b28 <__retarget_lock_release_recursive>
 8006e20:	2000      	movs	r0, #0
 8006e22:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006e26:	4b1e      	ldr	r3, [pc, #120]	; (8006ea0 <__register_exitproc+0xbc>)
 8006e28:	b37b      	cbz	r3, 8006e8a <__register_exitproc+0xa6>
 8006e2a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006e2e:	f3af 8000 	nop.w
 8006e32:	4603      	mov	r3, r0
 8006e34:	b348      	cbz	r0, 8006e8a <__register_exitproc+0xa6>
 8006e36:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006e3a:	2100      	movs	r1, #0
 8006e3c:	e9c0 2100 	strd	r2, r1, [r0]
 8006e40:	f04f 0c01 	mov.w	ip, #1
 8006e44:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006e48:	460a      	mov	r2, r1
 8006e4a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006e4e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006e52:	2e00      	cmp	r6, #0
 8006e54:	d0dc      	beq.n	8006e10 <__register_exitproc+0x2c>
 8006e56:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006e5a:	2401      	movs	r4, #1
 8006e5c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006e60:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006e64:	4094      	lsls	r4, r2
 8006e66:	4320      	orrs	r0, r4
 8006e68:	2e02      	cmp	r6, #2
 8006e6a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006e6e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006e72:	d1cd      	bne.n	8006e10 <__register_exitproc+0x2c>
 8006e74:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006e78:	430c      	orrs	r4, r1
 8006e7a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006e7e:	e7c7      	b.n	8006e10 <__register_exitproc+0x2c>
 8006e80:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006e84:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006e88:	e7bc      	b.n	8006e04 <__register_exitproc+0x20>
 8006e8a:	6828      	ldr	r0, [r5, #0]
 8006e8c:	f7fe fe4c 	bl	8005b28 <__retarget_lock_release_recursive>
 8006e90:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006e94:	e7c5      	b.n	8006e22 <__register_exitproc+0x3e>
 8006e96:	bf00      	nop
 8006e98:	20000448 	.word	0x20000448
 8006e9c:	08007438 	.word	0x08007438
 8006ea0:	00000000 	.word	0x00000000

08006ea4 <_calloc_r>:
 8006ea4:	b510      	push	{r4, lr}
 8006ea6:	fb02 f101 	mul.w	r1, r2, r1
 8006eaa:	f7fe feb7 	bl	8005c1c <_malloc_r>
 8006eae:	4604      	mov	r4, r0
 8006eb0:	b1d8      	cbz	r0, 8006eea <_calloc_r+0x46>
 8006eb2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006eb6:	f022 0203 	bic.w	r2, r2, #3
 8006eba:	3a04      	subs	r2, #4
 8006ebc:	2a24      	cmp	r2, #36	; 0x24
 8006ebe:	d81d      	bhi.n	8006efc <_calloc_r+0x58>
 8006ec0:	2a13      	cmp	r2, #19
 8006ec2:	d914      	bls.n	8006eee <_calloc_r+0x4a>
 8006ec4:	2300      	movs	r3, #0
 8006ec6:	2a1b      	cmp	r2, #27
 8006ec8:	e9c0 3300 	strd	r3, r3, [r0]
 8006ecc:	d91b      	bls.n	8006f06 <_calloc_r+0x62>
 8006ece:	2a24      	cmp	r2, #36	; 0x24
 8006ed0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006ed4:	bf0a      	itet	eq
 8006ed6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006eda:	f100 0210 	addne.w	r2, r0, #16
 8006ede:	f100 0218 	addeq.w	r2, r0, #24
 8006ee2:	2300      	movs	r3, #0
 8006ee4:	e9c2 3300 	strd	r3, r3, [r2]
 8006ee8:	6093      	str	r3, [r2, #8]
 8006eea:	4620      	mov	r0, r4
 8006eec:	bd10      	pop	{r4, pc}
 8006eee:	4602      	mov	r2, r0
 8006ef0:	2300      	movs	r3, #0
 8006ef2:	e9c2 3300 	strd	r3, r3, [r2]
 8006ef6:	6093      	str	r3, [r2, #8]
 8006ef8:	4620      	mov	r0, r4
 8006efa:	bd10      	pop	{r4, pc}
 8006efc:	2100      	movs	r1, #0
 8006efe:	f7fb fb6f 	bl	80025e0 <memset>
 8006f02:	4620      	mov	r0, r4
 8006f04:	bd10      	pop	{r4, pc}
 8006f06:	f100 0208 	add.w	r2, r0, #8
 8006f0a:	e7f1      	b.n	8006ef0 <_calloc_r+0x4c>

08006f0c <_close_r>:
 8006f0c:	b538      	push	{r3, r4, r5, lr}
 8006f0e:	4c07      	ldr	r4, [pc, #28]	; (8006f2c <_close_r+0x20>)
 8006f10:	2300      	movs	r3, #0
 8006f12:	4605      	mov	r5, r0
 8006f14:	4608      	mov	r0, r1
 8006f16:	6023      	str	r3, [r4, #0]
 8006f18:	f7fb fad8 	bl	80024cc <_close>
 8006f1c:	1c43      	adds	r3, r0, #1
 8006f1e:	d000      	beq.n	8006f22 <_close_r+0x16>
 8006f20:	bd38      	pop	{r3, r4, r5, pc}
 8006f22:	6823      	ldr	r3, [r4, #0]
 8006f24:	2b00      	cmp	r3, #0
 8006f26:	d0fb      	beq.n	8006f20 <_close_r+0x14>
 8006f28:	602b      	str	r3, [r5, #0]
 8006f2a:	bd38      	pop	{r3, r4, r5, pc}
 8006f2c:	20000cb0 	.word	0x20000cb0

08006f30 <_fclose_r>:
 8006f30:	b570      	push	{r4, r5, r6, lr}
 8006f32:	2900      	cmp	r1, #0
 8006f34:	d048      	beq.n	8006fc8 <_fclose_r+0x98>
 8006f36:	4605      	mov	r5, r0
 8006f38:	460c      	mov	r4, r1
 8006f3a:	b110      	cbz	r0, 8006f42 <_fclose_r+0x12>
 8006f3c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f3e:	2b00      	cmp	r3, #0
 8006f40:	d048      	beq.n	8006fd4 <_fclose_r+0xa4>
 8006f42:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f44:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f48:	07d0      	lsls	r0, r2, #31
 8006f4a:	d440      	bmi.n	8006fce <_fclose_r+0x9e>
 8006f4c:	0599      	lsls	r1, r3, #22
 8006f4e:	d530      	bpl.n	8006fb2 <_fclose_r+0x82>
 8006f50:	4621      	mov	r1, r4
 8006f52:	4628      	mov	r0, r5
 8006f54:	f7fe f990 	bl	8005278 <__sflush_r>
 8006f58:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006f5a:	4606      	mov	r6, r0
 8006f5c:	b133      	cbz	r3, 8006f6c <_fclose_r+0x3c>
 8006f5e:	69e1      	ldr	r1, [r4, #28]
 8006f60:	4628      	mov	r0, r5
 8006f62:	4798      	blx	r3
 8006f64:	2800      	cmp	r0, #0
 8006f66:	bfb8      	it	lt
 8006f68:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006f6c:	89a3      	ldrh	r3, [r4, #12]
 8006f6e:	061a      	lsls	r2, r3, #24
 8006f70:	d43c      	bmi.n	8006fec <_fclose_r+0xbc>
 8006f72:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006f74:	b141      	cbz	r1, 8006f88 <_fclose_r+0x58>
 8006f76:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006f7a:	4299      	cmp	r1, r3
 8006f7c:	d002      	beq.n	8006f84 <_fclose_r+0x54>
 8006f7e:	4628      	mov	r0, r5
 8006f80:	f7fe fb22 	bl	80055c8 <_free_r>
 8006f84:	2300      	movs	r3, #0
 8006f86:	6323      	str	r3, [r4, #48]	; 0x30
 8006f88:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006f8a:	b121      	cbz	r1, 8006f96 <_fclose_r+0x66>
 8006f8c:	4628      	mov	r0, r5
 8006f8e:	f7fe fb1b 	bl	80055c8 <_free_r>
 8006f92:	2300      	movs	r3, #0
 8006f94:	6463      	str	r3, [r4, #68]	; 0x44
 8006f96:	f7fe faa1 	bl	80054dc <__sfp_lock_acquire>
 8006f9a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006f9c:	2200      	movs	r2, #0
 8006f9e:	07db      	lsls	r3, r3, #31
 8006fa0:	81a2      	strh	r2, [r4, #12]
 8006fa2:	d51f      	bpl.n	8006fe4 <_fclose_r+0xb4>
 8006fa4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fa6:	f7fe fdbb 	bl	8005b20 <__retarget_lock_close_recursive>
 8006faa:	f7fe fa9d 	bl	80054e8 <__sfp_lock_release>
 8006fae:	4630      	mov	r0, r6
 8006fb0:	bd70      	pop	{r4, r5, r6, pc}
 8006fb2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fb4:	f7fe fdb6 	bl	8005b24 <__retarget_lock_acquire_recursive>
 8006fb8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006fbc:	2b00      	cmp	r3, #0
 8006fbe:	d1c7      	bne.n	8006f50 <_fclose_r+0x20>
 8006fc0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006fc2:	f016 0601 	ands.w	r6, r6, #1
 8006fc6:	d016      	beq.n	8006ff6 <_fclose_r+0xc6>
 8006fc8:	2600      	movs	r6, #0
 8006fca:	4630      	mov	r0, r6
 8006fcc:	bd70      	pop	{r4, r5, r6, pc}
 8006fce:	2b00      	cmp	r3, #0
 8006fd0:	d0fa      	beq.n	8006fc8 <_fclose_r+0x98>
 8006fd2:	e7bd      	b.n	8006f50 <_fclose_r+0x20>
 8006fd4:	f7fe fa56 	bl	8005484 <__sinit>
 8006fd8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006fda:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006fde:	07d0      	lsls	r0, r2, #31
 8006fe0:	d4f5      	bmi.n	8006fce <_fclose_r+0x9e>
 8006fe2:	e7b3      	b.n	8006f4c <_fclose_r+0x1c>
 8006fe4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fe6:	f7fe fd9f 	bl	8005b28 <__retarget_lock_release_recursive>
 8006fea:	e7db      	b.n	8006fa4 <_fclose_r+0x74>
 8006fec:	6921      	ldr	r1, [r4, #16]
 8006fee:	4628      	mov	r0, r5
 8006ff0:	f7fe faea 	bl	80055c8 <_free_r>
 8006ff4:	e7bd      	b.n	8006f72 <_fclose_r+0x42>
 8006ff6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ff8:	f7fe fd96 	bl	8005b28 <__retarget_lock_release_recursive>
 8006ffc:	4630      	mov	r0, r6
 8006ffe:	bd70      	pop	{r4, r5, r6, pc}

08007000 <__fputwc>:
 8007000:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007004:	b082      	sub	sp, #8
 8007006:	4681      	mov	r9, r0
 8007008:	4688      	mov	r8, r1
 800700a:	4614      	mov	r4, r2
 800700c:	f000 f8a0 	bl	8007150 <__locale_mb_cur_max>
 8007010:	2801      	cmp	r0, #1
 8007012:	d103      	bne.n	800701c <__fputwc+0x1c>
 8007014:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007018:	2bfe      	cmp	r3, #254	; 0xfe
 800701a:	d933      	bls.n	8007084 <__fputwc+0x84>
 800701c:	4642      	mov	r2, r8
 800701e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007022:	a901      	add	r1, sp, #4
 8007024:	4648      	mov	r0, r9
 8007026:	f000 f93b 	bl	80072a0 <_wcrtomb_r>
 800702a:	1c42      	adds	r2, r0, #1
 800702c:	4606      	mov	r6, r0
 800702e:	d02f      	beq.n	8007090 <__fputwc+0x90>
 8007030:	b320      	cbz	r0, 800707c <__fputwc+0x7c>
 8007032:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007036:	2500      	movs	r5, #0
 8007038:	f10d 0a04 	add.w	sl, sp, #4
 800703c:	e009      	b.n	8007052 <__fputwc+0x52>
 800703e:	6823      	ldr	r3, [r4, #0]
 8007040:	1c5a      	adds	r2, r3, #1
 8007042:	6022      	str	r2, [r4, #0]
 8007044:	f883 c000 	strb.w	ip, [r3]
 8007048:	3501      	adds	r5, #1
 800704a:	42b5      	cmp	r5, r6
 800704c:	d216      	bcs.n	800707c <__fputwc+0x7c>
 800704e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007052:	68a3      	ldr	r3, [r4, #8]
 8007054:	3b01      	subs	r3, #1
 8007056:	2b00      	cmp	r3, #0
 8007058:	60a3      	str	r3, [r4, #8]
 800705a:	daf0      	bge.n	800703e <__fputwc+0x3e>
 800705c:	69a7      	ldr	r7, [r4, #24]
 800705e:	42bb      	cmp	r3, r7
 8007060:	4661      	mov	r1, ip
 8007062:	4622      	mov	r2, r4
 8007064:	4648      	mov	r0, r9
 8007066:	db02      	blt.n	800706e <__fputwc+0x6e>
 8007068:	f1bc 0f0a 	cmp.w	ip, #10
 800706c:	d1e7      	bne.n	800703e <__fputwc+0x3e>
 800706e:	f000 f8bf 	bl	80071f0 <__swbuf_r>
 8007072:	1c43      	adds	r3, r0, #1
 8007074:	d1e8      	bne.n	8007048 <__fputwc+0x48>
 8007076:	b002      	add	sp, #8
 8007078:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800707c:	4640      	mov	r0, r8
 800707e:	b002      	add	sp, #8
 8007080:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007084:	fa5f fc88 	uxtb.w	ip, r8
 8007088:	4606      	mov	r6, r0
 800708a:	f88d c004 	strb.w	ip, [sp, #4]
 800708e:	e7d2      	b.n	8007036 <__fputwc+0x36>
 8007090:	89a3      	ldrh	r3, [r4, #12]
 8007092:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007096:	81a3      	strh	r3, [r4, #12]
 8007098:	b002      	add	sp, #8
 800709a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800709e:	bf00      	nop

080070a0 <_fputwc_r>:
 80070a0:	b530      	push	{r4, r5, lr}
 80070a2:	4605      	mov	r5, r0
 80070a4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80070a6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80070aa:	07c0      	lsls	r0, r0, #31
 80070ac:	4614      	mov	r4, r2
 80070ae:	b083      	sub	sp, #12
 80070b0:	b29a      	uxth	r2, r3
 80070b2:	d401      	bmi.n	80070b8 <_fputwc_r+0x18>
 80070b4:	0590      	lsls	r0, r2, #22
 80070b6:	d51c      	bpl.n	80070f2 <_fputwc_r+0x52>
 80070b8:	0490      	lsls	r0, r2, #18
 80070ba:	d406      	bmi.n	80070ca <_fputwc_r+0x2a>
 80070bc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80070be:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80070c2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80070c6:	81a3      	strh	r3, [r4, #12]
 80070c8:	6662      	str	r2, [r4, #100]	; 0x64
 80070ca:	4628      	mov	r0, r5
 80070cc:	4622      	mov	r2, r4
 80070ce:	f7ff ff97 	bl	8007000 <__fputwc>
 80070d2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80070d4:	07da      	lsls	r2, r3, #31
 80070d6:	4605      	mov	r5, r0
 80070d8:	d402      	bmi.n	80070e0 <_fputwc_r+0x40>
 80070da:	89a3      	ldrh	r3, [r4, #12]
 80070dc:	059b      	lsls	r3, r3, #22
 80070de:	d502      	bpl.n	80070e6 <_fputwc_r+0x46>
 80070e0:	4628      	mov	r0, r5
 80070e2:	b003      	add	sp, #12
 80070e4:	bd30      	pop	{r4, r5, pc}
 80070e6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070e8:	f7fe fd1e 	bl	8005b28 <__retarget_lock_release_recursive>
 80070ec:	4628      	mov	r0, r5
 80070ee:	b003      	add	sp, #12
 80070f0:	bd30      	pop	{r4, r5, pc}
 80070f2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070f4:	9101      	str	r1, [sp, #4]
 80070f6:	f7fe fd15 	bl	8005b24 <__retarget_lock_acquire_recursive>
 80070fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80070fe:	9901      	ldr	r1, [sp, #4]
 8007100:	b29a      	uxth	r2, r3
 8007102:	e7d9      	b.n	80070b8 <_fputwc_r+0x18>

08007104 <_fstat_r>:
 8007104:	b538      	push	{r3, r4, r5, lr}
 8007106:	460b      	mov	r3, r1
 8007108:	4c07      	ldr	r4, [pc, #28]	; (8007128 <_fstat_r+0x24>)
 800710a:	4605      	mov	r5, r0
 800710c:	4611      	mov	r1, r2
 800710e:	4618      	mov	r0, r3
 8007110:	2300      	movs	r3, #0
 8007112:	6023      	str	r3, [r4, #0]
 8007114:	f7fb f9dd 	bl	80024d2 <_fstat>
 8007118:	1c43      	adds	r3, r0, #1
 800711a:	d000      	beq.n	800711e <_fstat_r+0x1a>
 800711c:	bd38      	pop	{r3, r4, r5, pc}
 800711e:	6823      	ldr	r3, [r4, #0]
 8007120:	2b00      	cmp	r3, #0
 8007122:	d0fb      	beq.n	800711c <_fstat_r+0x18>
 8007124:	602b      	str	r3, [r5, #0]
 8007126:	bd38      	pop	{r3, r4, r5, pc}
 8007128:	20000cb0 	.word	0x20000cb0

0800712c <_isatty_r>:
 800712c:	b538      	push	{r3, r4, r5, lr}
 800712e:	4c07      	ldr	r4, [pc, #28]	; (800714c <_isatty_r+0x20>)
 8007130:	2300      	movs	r3, #0
 8007132:	4605      	mov	r5, r0
 8007134:	4608      	mov	r0, r1
 8007136:	6023      	str	r3, [r4, #0]
 8007138:	f7fb f9d1 	bl	80024de <_isatty>
 800713c:	1c43      	adds	r3, r0, #1
 800713e:	d000      	beq.n	8007142 <_isatty_r+0x16>
 8007140:	bd38      	pop	{r3, r4, r5, pc}
 8007142:	6823      	ldr	r3, [r4, #0]
 8007144:	2b00      	cmp	r3, #0
 8007146:	d0fb      	beq.n	8007140 <_isatty_r+0x14>
 8007148:	602b      	str	r3, [r5, #0]
 800714a:	bd38      	pop	{r3, r4, r5, pc}
 800714c:	20000cb0 	.word	0x20000cb0

08007150 <__locale_mb_cur_max>:
 8007150:	4b04      	ldr	r3, [pc, #16]	; (8007164 <__locale_mb_cur_max+0x14>)
 8007152:	4a05      	ldr	r2, [pc, #20]	; (8007168 <__locale_mb_cur_max+0x18>)
 8007154:	681b      	ldr	r3, [r3, #0]
 8007156:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007158:	2b00      	cmp	r3, #0
 800715a:	bf08      	it	eq
 800715c:	4613      	moveq	r3, r2
 800715e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007162:	4770      	bx	lr
 8007164:	20000018 	.word	0x20000018
 8007168:	2000085c 	.word	0x2000085c

0800716c <_lseek_r>:
 800716c:	b570      	push	{r4, r5, r6, lr}
 800716e:	460d      	mov	r5, r1
 8007170:	4c08      	ldr	r4, [pc, #32]	; (8007194 <_lseek_r+0x28>)
 8007172:	4611      	mov	r1, r2
 8007174:	4606      	mov	r6, r0
 8007176:	461a      	mov	r2, r3
 8007178:	4628      	mov	r0, r5
 800717a:	2300      	movs	r3, #0
 800717c:	6023      	str	r3, [r4, #0]
 800717e:	f7fb f9b0 	bl	80024e2 <_lseek>
 8007182:	1c43      	adds	r3, r0, #1
 8007184:	d000      	beq.n	8007188 <_lseek_r+0x1c>
 8007186:	bd70      	pop	{r4, r5, r6, pc}
 8007188:	6823      	ldr	r3, [r4, #0]
 800718a:	2b00      	cmp	r3, #0
 800718c:	d0fb      	beq.n	8007186 <_lseek_r+0x1a>
 800718e:	6033      	str	r3, [r6, #0]
 8007190:	bd70      	pop	{r4, r5, r6, pc}
 8007192:	bf00      	nop
 8007194:	20000cb0 	.word	0x20000cb0

08007198 <__ascii_mbtowc>:
 8007198:	b082      	sub	sp, #8
 800719a:	b149      	cbz	r1, 80071b0 <__ascii_mbtowc+0x18>
 800719c:	b15a      	cbz	r2, 80071b6 <__ascii_mbtowc+0x1e>
 800719e:	b16b      	cbz	r3, 80071bc <__ascii_mbtowc+0x24>
 80071a0:	7813      	ldrb	r3, [r2, #0]
 80071a2:	600b      	str	r3, [r1, #0]
 80071a4:	7812      	ldrb	r2, [r2, #0]
 80071a6:	1c10      	adds	r0, r2, #0
 80071a8:	bf18      	it	ne
 80071aa:	2001      	movne	r0, #1
 80071ac:	b002      	add	sp, #8
 80071ae:	4770      	bx	lr
 80071b0:	a901      	add	r1, sp, #4
 80071b2:	2a00      	cmp	r2, #0
 80071b4:	d1f3      	bne.n	800719e <__ascii_mbtowc+0x6>
 80071b6:	4610      	mov	r0, r2
 80071b8:	b002      	add	sp, #8
 80071ba:	4770      	bx	lr
 80071bc:	f06f 0001 	mvn.w	r0, #1
 80071c0:	e7f4      	b.n	80071ac <__ascii_mbtowc+0x14>
 80071c2:	bf00      	nop

080071c4 <_read_r>:
 80071c4:	b570      	push	{r4, r5, r6, lr}
 80071c6:	460d      	mov	r5, r1
 80071c8:	4c08      	ldr	r4, [pc, #32]	; (80071ec <_read_r+0x28>)
 80071ca:	4611      	mov	r1, r2
 80071cc:	4606      	mov	r6, r0
 80071ce:	461a      	mov	r2, r3
 80071d0:	4628      	mov	r0, r5
 80071d2:	2300      	movs	r3, #0
 80071d4:	6023      	str	r3, [r4, #0]
 80071d6:	f7fb f918 	bl	800240a <_read>
 80071da:	1c43      	adds	r3, r0, #1
 80071dc:	d000      	beq.n	80071e0 <_read_r+0x1c>
 80071de:	bd70      	pop	{r4, r5, r6, pc}
 80071e0:	6823      	ldr	r3, [r4, #0]
 80071e2:	2b00      	cmp	r3, #0
 80071e4:	d0fb      	beq.n	80071de <_read_r+0x1a>
 80071e6:	6033      	str	r3, [r6, #0]
 80071e8:	bd70      	pop	{r4, r5, r6, pc}
 80071ea:	bf00      	nop
 80071ec:	20000cb0 	.word	0x20000cb0

080071f0 <__swbuf_r>:
 80071f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80071f2:	460d      	mov	r5, r1
 80071f4:	4614      	mov	r4, r2
 80071f6:	4606      	mov	r6, r0
 80071f8:	b110      	cbz	r0, 8007200 <__swbuf_r+0x10>
 80071fa:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80071fc:	2b00      	cmp	r3, #0
 80071fe:	d043      	beq.n	8007288 <__swbuf_r+0x98>
 8007200:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007204:	69a3      	ldr	r3, [r4, #24]
 8007206:	60a3      	str	r3, [r4, #8]
 8007208:	b291      	uxth	r1, r2
 800720a:	0708      	lsls	r0, r1, #28
 800720c:	d51b      	bpl.n	8007246 <__swbuf_r+0x56>
 800720e:	6923      	ldr	r3, [r4, #16]
 8007210:	b1cb      	cbz	r3, 8007246 <__swbuf_r+0x56>
 8007212:	b2ed      	uxtb	r5, r5
 8007214:	0489      	lsls	r1, r1, #18
 8007216:	462f      	mov	r7, r5
 8007218:	d522      	bpl.n	8007260 <__swbuf_r+0x70>
 800721a:	6822      	ldr	r2, [r4, #0]
 800721c:	6961      	ldr	r1, [r4, #20]
 800721e:	1ad3      	subs	r3, r2, r3
 8007220:	4299      	cmp	r1, r3
 8007222:	dd29      	ble.n	8007278 <__swbuf_r+0x88>
 8007224:	3301      	adds	r3, #1
 8007226:	68a1      	ldr	r1, [r4, #8]
 8007228:	1c50      	adds	r0, r2, #1
 800722a:	3901      	subs	r1, #1
 800722c:	60a1      	str	r1, [r4, #8]
 800722e:	6020      	str	r0, [r4, #0]
 8007230:	7015      	strb	r5, [r2, #0]
 8007232:	6962      	ldr	r2, [r4, #20]
 8007234:	429a      	cmp	r2, r3
 8007236:	d02a      	beq.n	800728e <__swbuf_r+0x9e>
 8007238:	89a3      	ldrh	r3, [r4, #12]
 800723a:	07db      	lsls	r3, r3, #31
 800723c:	d501      	bpl.n	8007242 <__swbuf_r+0x52>
 800723e:	2d0a      	cmp	r5, #10
 8007240:	d025      	beq.n	800728e <__swbuf_r+0x9e>
 8007242:	4638      	mov	r0, r7
 8007244:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007246:	4621      	mov	r1, r4
 8007248:	4630      	mov	r0, r6
 800724a:	f7fc fffd 	bl	8004248 <__swsetup_r>
 800724e:	bb20      	cbnz	r0, 800729a <__swbuf_r+0xaa>
 8007250:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007254:	6923      	ldr	r3, [r4, #16]
 8007256:	b291      	uxth	r1, r2
 8007258:	b2ed      	uxtb	r5, r5
 800725a:	0489      	lsls	r1, r1, #18
 800725c:	462f      	mov	r7, r5
 800725e:	d4dc      	bmi.n	800721a <__swbuf_r+0x2a>
 8007260:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007262:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007266:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800726a:	81a2      	strh	r2, [r4, #12]
 800726c:	6822      	ldr	r2, [r4, #0]
 800726e:	6661      	str	r1, [r4, #100]	; 0x64
 8007270:	6961      	ldr	r1, [r4, #20]
 8007272:	1ad3      	subs	r3, r2, r3
 8007274:	4299      	cmp	r1, r3
 8007276:	dcd5      	bgt.n	8007224 <__swbuf_r+0x34>
 8007278:	4621      	mov	r1, r4
 800727a:	4630      	mov	r0, r6
 800727c:	f7fe f8a6 	bl	80053cc <_fflush_r>
 8007280:	b958      	cbnz	r0, 800729a <__swbuf_r+0xaa>
 8007282:	6822      	ldr	r2, [r4, #0]
 8007284:	2301      	movs	r3, #1
 8007286:	e7ce      	b.n	8007226 <__swbuf_r+0x36>
 8007288:	f7fe f8fc 	bl	8005484 <__sinit>
 800728c:	e7b8      	b.n	8007200 <__swbuf_r+0x10>
 800728e:	4621      	mov	r1, r4
 8007290:	4630      	mov	r0, r6
 8007292:	f7fe f89b 	bl	80053cc <_fflush_r>
 8007296:	2800      	cmp	r0, #0
 8007298:	d0d3      	beq.n	8007242 <__swbuf_r+0x52>
 800729a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800729e:	e7d0      	b.n	8007242 <__swbuf_r+0x52>

080072a0 <_wcrtomb_r>:
 80072a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80072a2:	4c11      	ldr	r4, [pc, #68]	; (80072e8 <_wcrtomb_r+0x48>)
 80072a4:	6824      	ldr	r4, [r4, #0]
 80072a6:	b085      	sub	sp, #20
 80072a8:	4606      	mov	r6, r0
 80072aa:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80072ac:	461f      	mov	r7, r3
 80072ae:	b151      	cbz	r1, 80072c6 <_wcrtomb_r+0x26>
 80072b0:	4d0e      	ldr	r5, [pc, #56]	; (80072ec <_wcrtomb_r+0x4c>)
 80072b2:	2c00      	cmp	r4, #0
 80072b4:	bf08      	it	eq
 80072b6:	462c      	moveq	r4, r5
 80072b8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80072bc:	47a0      	blx	r4
 80072be:	1c43      	adds	r3, r0, #1
 80072c0:	d00c      	beq.n	80072dc <_wcrtomb_r+0x3c>
 80072c2:	b005      	add	sp, #20
 80072c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80072c6:	4a09      	ldr	r2, [pc, #36]	; (80072ec <_wcrtomb_r+0x4c>)
 80072c8:	2c00      	cmp	r4, #0
 80072ca:	bf08      	it	eq
 80072cc:	4614      	moveq	r4, r2
 80072ce:	460a      	mov	r2, r1
 80072d0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80072d4:	a901      	add	r1, sp, #4
 80072d6:	47a0      	blx	r4
 80072d8:	1c43      	adds	r3, r0, #1
 80072da:	d1f2      	bne.n	80072c2 <_wcrtomb_r+0x22>
 80072dc:	2200      	movs	r2, #0
 80072de:	238a      	movs	r3, #138	; 0x8a
 80072e0:	603a      	str	r2, [r7, #0]
 80072e2:	6033      	str	r3, [r6, #0]
 80072e4:	b005      	add	sp, #20
 80072e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80072e8:	20000018 	.word	0x20000018
 80072ec:	2000085c 	.word	0x2000085c

080072f0 <__ascii_wctomb>:
 80072f0:	b121      	cbz	r1, 80072fc <__ascii_wctomb+0xc>
 80072f2:	2aff      	cmp	r2, #255	; 0xff
 80072f4:	d804      	bhi.n	8007300 <__ascii_wctomb+0x10>
 80072f6:	700a      	strb	r2, [r1, #0]
 80072f8:	2001      	movs	r0, #1
 80072fa:	4770      	bx	lr
 80072fc:	4608      	mov	r0, r1
 80072fe:	4770      	bx	lr
 8007300:	238a      	movs	r3, #138	; 0x8a
 8007302:	6003      	str	r3, [r0, #0]
 8007304:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007308:	4770      	bx	lr
 800730a:	bf00      	nop

0800730c <_init>:
 800730c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800730e:	bf00      	nop
 8007310:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007312:	bc08      	pop	{r3}
 8007314:	469e      	mov	lr, r3
 8007316:	4770      	bx	lr

08007318 <_fini>:
 8007318:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800731a:	bf00      	nop
 800731c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800731e:	bc08      	pop	{r3}
 8007320:	469e      	mov	lr, r3
 8007322:	4770      	bx	lr
 8007324:	0000      	movs	r0, r0
	...
