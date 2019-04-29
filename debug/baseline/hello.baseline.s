
hello.elf:     file format elf32-littlearm


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
 80001e0:	08007acc 	.word	0x08007acc

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
 80001fc:	08007acc 	.word	0x08007acc

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

080010e8 <HAL_IncTick>:
 80010e8:	f640 30cc 	movw	r0, #3020	; 0xbcc
 80010ec:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80010f0:	6801      	ldr	r1, [r0, #0]
 80010f2:	3101      	adds	r1, #1
 80010f4:	6001      	str	r1, [r0, #0]
 80010f6:	4770      	bx	lr

080010f8 <HAL_GetTick>:
 80010f8:	f640 30cc 	movw	r0, #3020	; 0xbcc
 80010fc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001100:	6800      	ldr	r0, [r0, #0]
 8001102:	4770      	bx	lr

08001104 <HAL_SYSTICK_IRQHandler>:
 8001104:	b580      	push	{r7, lr}
 8001106:	466f      	mov	r7, sp
 8001108:	f000 f801 	bl	800110e <HAL_SYSTICK_Callback>
 800110c:	bd80      	pop	{r7, pc}

0800110e <HAL_SYSTICK_Callback>:
 800110e:	4770      	bx	lr

08001110 <HAL_GPIO_Init>:
 8001110:	b08f      	sub	sp, #60	; 0x3c
 8001112:	460a      	mov	r2, r1
 8001114:	4603      	mov	r3, r0
 8001116:	900e      	str	r0, [sp, #56]	; 0x38
 8001118:	910d      	str	r1, [sp, #52]	; 0x34
 800111a:	2000      	movs	r0, #0
 800111c:	900c      	str	r0, [sp, #48]	; 0x30
 800111e:	9208      	str	r2, [sp, #32]
 8001120:	9307      	str	r3, [sp, #28]
 8001122:	e7ff      	b.n	8001124 <HAL_GPIO_Init+0x14>
 8001124:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001126:	6800      	ldr	r0, [r0, #0]
 8001128:	990c      	ldr	r1, [sp, #48]	; 0x30
 800112a:	40c8      	lsrs	r0, r1
 800112c:	2800      	cmp	r0, #0
 800112e:	f000 81dc 	beq.w	80014ea <HAL_GPIO_Init+0x3da>
 8001132:	e7ff      	b.n	8001134 <HAL_GPIO_Init+0x24>
 8001134:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001136:	6800      	ldr	r0, [r0, #0]
 8001138:	990c      	ldr	r1, [sp, #48]	; 0x30
 800113a:	2201      	movs	r2, #1
 800113c:	fa02 f101 	lsl.w	r1, r2, r1
 8001140:	4008      	ands	r0, r1
 8001142:	900b      	str	r0, [sp, #44]	; 0x2c
 8001144:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001146:	2800      	cmp	r0, #0
 8001148:	f000 81cb 	beq.w	80014e2 <HAL_GPIO_Init+0x3d2>
 800114c:	e7ff      	b.n	800114e <HAL_GPIO_Init+0x3e>
 800114e:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001150:	6840      	ldr	r0, [r0, #4]
 8001152:	2802      	cmp	r0, #2
 8001154:	d005      	beq.n	8001162 <HAL_GPIO_Init+0x52>
 8001156:	e7ff      	b.n	8001158 <HAL_GPIO_Init+0x48>
 8001158:	980d      	ldr	r0, [sp, #52]	; 0x34
 800115a:	6840      	ldr	r0, [r0, #4]
 800115c:	2812      	cmp	r0, #18
 800115e:	d128      	bne.n	80011b2 <HAL_GPIO_Init+0xa2>
 8001160:	e7ff      	b.n	8001162 <HAL_GPIO_Init+0x52>
 8001162:	980e      	ldr	r0, [sp, #56]	; 0x38
 8001164:	990c      	ldr	r1, [sp, #48]	; 0x30
 8001166:	f64f 72fc 	movw	r2, #65532	; 0xfffc
 800116a:	f6c7 72ff 	movt	r2, #32767	; 0x7fff
 800116e:	ea02 0151 	and.w	r1, r2, r1, lsr #1
 8001172:	4408      	add	r0, r1
 8001174:	6a00      	ldr	r0, [r0, #32]
 8001176:	900a      	str	r0, [sp, #40]	; 0x28
 8001178:	980c      	ldr	r0, [sp, #48]	; 0x30
 800117a:	f000 0007 	and.w	r0, r0, #7
 800117e:	0080      	lsls	r0, r0, #2
 8001180:	210f      	movs	r1, #15
 8001182:	fa01 f000 	lsl.w	r0, r1, r0
 8001186:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001188:	ea21 0000 	bic.w	r0, r1, r0
 800118c:	900a      	str	r0, [sp, #40]	; 0x28
 800118e:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001190:	6900      	ldr	r0, [r0, #16]
 8001192:	990c      	ldr	r1, [sp, #48]	; 0x30
 8001194:	f001 0107 	and.w	r1, r1, #7
 8001198:	0089      	lsls	r1, r1, #2
 800119a:	4088      	lsls	r0, r1
 800119c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800119e:	4308      	orrs	r0, r1
 80011a0:	900a      	str	r0, [sp, #40]	; 0x28
 80011a2:	980a      	ldr	r0, [sp, #40]	; 0x28
 80011a4:	990e      	ldr	r1, [sp, #56]	; 0x38
 80011a6:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80011a8:	ea02 0253 	and.w	r2, r2, r3, lsr #1
 80011ac:	4411      	add	r1, r2
 80011ae:	6208      	str	r0, [r1, #32]
 80011b0:	e7ff      	b.n	80011b2 <HAL_GPIO_Init+0xa2>
 80011b2:	980e      	ldr	r0, [sp, #56]	; 0x38
 80011b4:	6800      	ldr	r0, [r0, #0]
 80011b6:	900a      	str	r0, [sp, #40]	; 0x28
 80011b8:	980c      	ldr	r0, [sp, #48]	; 0x30
 80011ba:	0040      	lsls	r0, r0, #1
 80011bc:	2103      	movs	r1, #3
 80011be:	fa01 f000 	lsl.w	r0, r1, r0
 80011c2:	990a      	ldr	r1, [sp, #40]	; 0x28
 80011c4:	ea21 0000 	bic.w	r0, r1, r0
 80011c8:	900a      	str	r0, [sp, #40]	; 0x28
 80011ca:	980d      	ldr	r0, [sp, #52]	; 0x34
 80011cc:	6840      	ldr	r0, [r0, #4]
 80011ce:	f000 0003 	and.w	r0, r0, #3
 80011d2:	990c      	ldr	r1, [sp, #48]	; 0x30
 80011d4:	0049      	lsls	r1, r1, #1
 80011d6:	4088      	lsls	r0, r1
 80011d8:	990a      	ldr	r1, [sp, #40]	; 0x28
 80011da:	4308      	orrs	r0, r1
 80011dc:	900a      	str	r0, [sp, #40]	; 0x28
 80011de:	980a      	ldr	r0, [sp, #40]	; 0x28
 80011e0:	990e      	ldr	r1, [sp, #56]	; 0x38
 80011e2:	6008      	str	r0, [r1, #0]
 80011e4:	980d      	ldr	r0, [sp, #52]	; 0x34
 80011e6:	6840      	ldr	r0, [r0, #4]
 80011e8:	2801      	cmp	r0, #1
 80011ea:	d00f      	beq.n	800120c <HAL_GPIO_Init+0xfc>
 80011ec:	e7ff      	b.n	80011ee <HAL_GPIO_Init+0xde>
 80011ee:	980d      	ldr	r0, [sp, #52]	; 0x34
 80011f0:	6840      	ldr	r0, [r0, #4]
 80011f2:	2802      	cmp	r0, #2
 80011f4:	d00a      	beq.n	800120c <HAL_GPIO_Init+0xfc>
 80011f6:	e7ff      	b.n	80011f8 <HAL_GPIO_Init+0xe8>
 80011f8:	980d      	ldr	r0, [sp, #52]	; 0x34
 80011fa:	6840      	ldr	r0, [r0, #4]
 80011fc:	2811      	cmp	r0, #17
 80011fe:	d005      	beq.n	800120c <HAL_GPIO_Init+0xfc>
 8001200:	e7ff      	b.n	8001202 <HAL_GPIO_Init+0xf2>
 8001202:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001204:	6840      	ldr	r0, [r0, #4]
 8001206:	2812      	cmp	r0, #18
 8001208:	d12f      	bne.n	800126a <HAL_GPIO_Init+0x15a>
 800120a:	e7ff      	b.n	800120c <HAL_GPIO_Init+0xfc>
 800120c:	980e      	ldr	r0, [sp, #56]	; 0x38
 800120e:	6880      	ldr	r0, [r0, #8]
 8001210:	900a      	str	r0, [sp, #40]	; 0x28
 8001212:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001214:	0040      	lsls	r0, r0, #1
 8001216:	2103      	movs	r1, #3
 8001218:	fa01 f000 	lsl.w	r0, r1, r0
 800121c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800121e:	ea21 0000 	bic.w	r0, r1, r0
 8001222:	900a      	str	r0, [sp, #40]	; 0x28
 8001224:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001226:	68c0      	ldr	r0, [r0, #12]
 8001228:	990c      	ldr	r1, [sp, #48]	; 0x30
 800122a:	0049      	lsls	r1, r1, #1
 800122c:	4088      	lsls	r0, r1
 800122e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001230:	4308      	orrs	r0, r1
 8001232:	900a      	str	r0, [sp, #40]	; 0x28
 8001234:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001236:	990e      	ldr	r1, [sp, #56]	; 0x38
 8001238:	6088      	str	r0, [r1, #8]
 800123a:	980e      	ldr	r0, [sp, #56]	; 0x38
 800123c:	6840      	ldr	r0, [r0, #4]
 800123e:	900a      	str	r0, [sp, #40]	; 0x28
 8001240:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001242:	2101      	movs	r1, #1
 8001244:	fa01 f000 	lsl.w	r0, r1, r0
 8001248:	990a      	ldr	r1, [sp, #40]	; 0x28
 800124a:	ea21 0000 	bic.w	r0, r1, r0
 800124e:	900a      	str	r0, [sp, #40]	; 0x28
 8001250:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001252:	6840      	ldr	r0, [r0, #4]
 8001254:	f3c0 1000 	ubfx	r0, r0, #4, #1
 8001258:	990c      	ldr	r1, [sp, #48]	; 0x30
 800125a:	4088      	lsls	r0, r1
 800125c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800125e:	4308      	orrs	r0, r1
 8001260:	900a      	str	r0, [sp, #40]	; 0x28
 8001262:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001264:	990e      	ldr	r1, [sp, #56]	; 0x38
 8001266:	6048      	str	r0, [r1, #4]
 8001268:	e7ff      	b.n	800126a <HAL_GPIO_Init+0x15a>
 800126a:	980d      	ldr	r0, [sp, #52]	; 0x34
 800126c:	6840      	ldr	r0, [r0, #4]
 800126e:	f000 0003 	and.w	r0, r0, #3
 8001272:	2803      	cmp	r0, #3
 8001274:	d118      	bne.n	80012a8 <HAL_GPIO_Init+0x198>
 8001276:	e7ff      	b.n	8001278 <HAL_GPIO_Init+0x168>
 8001278:	980e      	ldr	r0, [sp, #56]	; 0x38
 800127a:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 800127c:	900a      	str	r0, [sp, #40]	; 0x28
 800127e:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001280:	2101      	movs	r1, #1
 8001282:	fa01 f000 	lsl.w	r0, r1, r0
 8001286:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001288:	ea21 0000 	bic.w	r0, r1, r0
 800128c:	900a      	str	r0, [sp, #40]	; 0x28
 800128e:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001290:	6840      	ldr	r0, [r0, #4]
 8001292:	f3c0 00c0 	ubfx	r0, r0, #3, #1
 8001296:	990c      	ldr	r1, [sp, #48]	; 0x30
 8001298:	4088      	lsls	r0, r1
 800129a:	990a      	ldr	r1, [sp, #40]	; 0x28
 800129c:	4308      	orrs	r0, r1
 800129e:	900a      	str	r0, [sp, #40]	; 0x28
 80012a0:	980a      	ldr	r0, [sp, #40]	; 0x28
 80012a2:	990e      	ldr	r1, [sp, #56]	; 0x38
 80012a4:	62c8      	str	r0, [r1, #44]	; 0x2c
 80012a6:	e7ff      	b.n	80012a8 <HAL_GPIO_Init+0x198>
 80012a8:	980e      	ldr	r0, [sp, #56]	; 0x38
 80012aa:	68c0      	ldr	r0, [r0, #12]
 80012ac:	900a      	str	r0, [sp, #40]	; 0x28
 80012ae:	980c      	ldr	r0, [sp, #48]	; 0x30
 80012b0:	0040      	lsls	r0, r0, #1
 80012b2:	2103      	movs	r1, #3
 80012b4:	fa01 f000 	lsl.w	r0, r1, r0
 80012b8:	990a      	ldr	r1, [sp, #40]	; 0x28
 80012ba:	ea21 0000 	bic.w	r0, r1, r0
 80012be:	900a      	str	r0, [sp, #40]	; 0x28
 80012c0:	980d      	ldr	r0, [sp, #52]	; 0x34
 80012c2:	6880      	ldr	r0, [r0, #8]
 80012c4:	990c      	ldr	r1, [sp, #48]	; 0x30
 80012c6:	0049      	lsls	r1, r1, #1
 80012c8:	4088      	lsls	r0, r1
 80012ca:	990a      	ldr	r1, [sp, #40]	; 0x28
 80012cc:	4308      	orrs	r0, r1
 80012ce:	900a      	str	r0, [sp, #40]	; 0x28
 80012d0:	980a      	ldr	r0, [sp, #40]	; 0x28
 80012d2:	990e      	ldr	r1, [sp, #56]	; 0x38
 80012d4:	60c8      	str	r0, [r1, #12]
 80012d6:	980d      	ldr	r0, [sp, #52]	; 0x34
 80012d8:	6840      	ldr	r0, [r0, #4]
 80012da:	00c0      	lsls	r0, r0, #3
 80012dc:	2800      	cmp	r0, #0
 80012de:	f140 80ff 	bpl.w	80014e0 <HAL_GPIO_Init+0x3d0>
 80012e2:	e7ff      	b.n	80012e4 <HAL_GPIO_Init+0x1d4>
 80012e4:	e7ff      	b.n	80012e6 <HAL_GPIO_Init+0x1d6>
 80012e6:	f241 0060 	movw	r0, #4192	; 0x1060
 80012ea:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80012ee:	6801      	ldr	r1, [r0, #0]
 80012f0:	f041 0101 	orr.w	r1, r1, #1
 80012f4:	6001      	str	r1, [r0, #0]
 80012f6:	6800      	ldr	r0, [r0, #0]
 80012f8:	f000 0001 	and.w	r0, r0, #1
 80012fc:	9009      	str	r0, [sp, #36]	; 0x24
 80012fe:	9809      	ldr	r0, [sp, #36]	; 0x24
 8001300:	9006      	str	r0, [sp, #24]
 8001302:	e7ff      	b.n	8001304 <HAL_GPIO_Init+0x1f4>
 8001304:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001306:	f020 0003 	bic.w	r0, r0, #3
 800130a:	2108      	movs	r1, #8
 800130c:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001310:	5840      	ldr	r0, [r0, r1]
 8001312:	900a      	str	r0, [sp, #40]	; 0x28
 8001314:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001316:	f000 0003 	and.w	r0, r0, #3
 800131a:	0080      	lsls	r0, r0, #2
 800131c:	210f      	movs	r1, #15
 800131e:	fa01 f000 	lsl.w	r0, r1, r0
 8001322:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001324:	ea21 0000 	bic.w	r0, r1, r0
 8001328:	900a      	str	r0, [sp, #40]	; 0x28
 800132a:	980e      	ldr	r0, [sp, #56]	; 0x38
 800132c:	f1b0 4f90 	cmp.w	r0, #1207959552	; 0x48000000
 8001330:	d103      	bne.n	800133a <HAL_GPIO_Init+0x22a>
 8001332:	e7ff      	b.n	8001334 <HAL_GPIO_Init+0x224>
 8001334:	2000      	movs	r0, #0
 8001336:	9005      	str	r0, [sp, #20]
 8001338:	e050      	b.n	80013dc <HAL_GPIO_Init+0x2cc>
 800133a:	980e      	ldr	r0, [sp, #56]	; 0x38
 800133c:	f240 4100 	movw	r1, #1024	; 0x400
 8001340:	f6c4 0100 	movt	r1, #18432	; 0x4800
 8001344:	4288      	cmp	r0, r1
 8001346:	d103      	bne.n	8001350 <HAL_GPIO_Init+0x240>
 8001348:	e7ff      	b.n	800134a <HAL_GPIO_Init+0x23a>
 800134a:	2001      	movs	r0, #1
 800134c:	9004      	str	r0, [sp, #16]
 800134e:	e042      	b.n	80013d6 <HAL_GPIO_Init+0x2c6>
 8001350:	980e      	ldr	r0, [sp, #56]	; 0x38
 8001352:	f640 0100 	movw	r1, #2048	; 0x800
 8001356:	f6c4 0100 	movt	r1, #18432	; 0x4800
 800135a:	4288      	cmp	r0, r1
 800135c:	d103      	bne.n	8001366 <HAL_GPIO_Init+0x256>
 800135e:	e7ff      	b.n	8001360 <HAL_GPIO_Init+0x250>
 8001360:	2002      	movs	r0, #2
 8001362:	9003      	str	r0, [sp, #12]
 8001364:	e034      	b.n	80013d0 <HAL_GPIO_Init+0x2c0>
 8001366:	980e      	ldr	r0, [sp, #56]	; 0x38
 8001368:	f640 4100 	movw	r1, #3072	; 0xc00
 800136c:	f6c4 0100 	movt	r1, #18432	; 0x4800
 8001370:	4288      	cmp	r0, r1
 8001372:	d103      	bne.n	800137c <HAL_GPIO_Init+0x26c>
 8001374:	e7ff      	b.n	8001376 <HAL_GPIO_Init+0x266>
 8001376:	2003      	movs	r0, #3
 8001378:	9002      	str	r0, [sp, #8]
 800137a:	e026      	b.n	80013ca <HAL_GPIO_Init+0x2ba>
 800137c:	980e      	ldr	r0, [sp, #56]	; 0x38
 800137e:	f241 0100 	movw	r1, #4096	; 0x1000
 8001382:	f6c4 0100 	movt	r1, #18432	; 0x4800
 8001386:	4288      	cmp	r0, r1
 8001388:	d103      	bne.n	8001392 <HAL_GPIO_Init+0x282>
 800138a:	e7ff      	b.n	800138c <HAL_GPIO_Init+0x27c>
 800138c:	2004      	movs	r0, #4
 800138e:	9001      	str	r0, [sp, #4]
 8001390:	e018      	b.n	80013c4 <HAL_GPIO_Init+0x2b4>
 8001392:	980e      	ldr	r0, [sp, #56]	; 0x38
 8001394:	f241 4100 	movw	r1, #5120	; 0x1400
 8001398:	f6c4 0100 	movt	r1, #18432	; 0x4800
 800139c:	4288      	cmp	r0, r1
 800139e:	d103      	bne.n	80013a8 <HAL_GPIO_Init+0x298>
 80013a0:	e7ff      	b.n	80013a2 <HAL_GPIO_Init+0x292>
 80013a2:	2005      	movs	r0, #5
 80013a4:	9000      	str	r0, [sp, #0]
 80013a6:	e00a      	b.n	80013be <HAL_GPIO_Init+0x2ae>
 80013a8:	980e      	ldr	r0, [sp, #56]	; 0x38
 80013aa:	f641 0100 	movw	r1, #6144	; 0x1800
 80013ae:	f6c4 0100 	movt	r1, #18432	; 0x4800
 80013b2:	2207      	movs	r2, #7
 80013b4:	4288      	cmp	r0, r1
 80013b6:	bf08      	it	eq
 80013b8:	2206      	moveq	r2, #6
 80013ba:	9200      	str	r2, [sp, #0]
 80013bc:	e7ff      	b.n	80013be <HAL_GPIO_Init+0x2ae>
 80013be:	9800      	ldr	r0, [sp, #0]
 80013c0:	9001      	str	r0, [sp, #4]
 80013c2:	e7ff      	b.n	80013c4 <HAL_GPIO_Init+0x2b4>
 80013c4:	9801      	ldr	r0, [sp, #4]
 80013c6:	9002      	str	r0, [sp, #8]
 80013c8:	e7ff      	b.n	80013ca <HAL_GPIO_Init+0x2ba>
 80013ca:	9802      	ldr	r0, [sp, #8]
 80013cc:	9003      	str	r0, [sp, #12]
 80013ce:	e7ff      	b.n	80013d0 <HAL_GPIO_Init+0x2c0>
 80013d0:	9803      	ldr	r0, [sp, #12]
 80013d2:	9004      	str	r0, [sp, #16]
 80013d4:	e7ff      	b.n	80013d6 <HAL_GPIO_Init+0x2c6>
 80013d6:	9804      	ldr	r0, [sp, #16]
 80013d8:	9005      	str	r0, [sp, #20]
 80013da:	e7ff      	b.n	80013dc <HAL_GPIO_Init+0x2cc>
 80013dc:	9805      	ldr	r0, [sp, #20]
 80013de:	990c      	ldr	r1, [sp, #48]	; 0x30
 80013e0:	f001 0103 	and.w	r1, r1, #3
 80013e4:	0089      	lsls	r1, r1, #2
 80013e6:	4088      	lsls	r0, r1
 80013e8:	990a      	ldr	r1, [sp, #40]	; 0x28
 80013ea:	4308      	orrs	r0, r1
 80013ec:	900a      	str	r0, [sp, #40]	; 0x28
 80013ee:	980a      	ldr	r0, [sp, #40]	; 0x28
 80013f0:	990c      	ldr	r1, [sp, #48]	; 0x30
 80013f2:	f021 0103 	bic.w	r1, r1, #3
 80013f6:	2208      	movs	r2, #8
 80013f8:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80013fc:	5088      	str	r0, [r1, r2]
 80013fe:	f240 4000 	movw	r0, #1024	; 0x400
 8001402:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001406:	6800      	ldr	r0, [r0, #0]
 8001408:	900a      	str	r0, [sp, #40]	; 0x28
 800140a:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800140c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800140e:	ea21 0000 	bic.w	r0, r1, r0
 8001412:	900a      	str	r0, [sp, #40]	; 0x28
 8001414:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001416:	6840      	ldr	r0, [r0, #4]
 8001418:	03c0      	lsls	r0, r0, #15
 800141a:	2800      	cmp	r0, #0
 800141c:	d505      	bpl.n	800142a <HAL_GPIO_Init+0x31a>
 800141e:	e7ff      	b.n	8001420 <HAL_GPIO_Init+0x310>
 8001420:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001422:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001424:	4308      	orrs	r0, r1
 8001426:	900a      	str	r0, [sp, #40]	; 0x28
 8001428:	e7ff      	b.n	800142a <HAL_GPIO_Init+0x31a>
 800142a:	980a      	ldr	r0, [sp, #40]	; 0x28
 800142c:	f240 4100 	movw	r1, #1024	; 0x400
 8001430:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001434:	6008      	str	r0, [r1, #0]
 8001436:	f240 4004 	movw	r0, #1028	; 0x404
 800143a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800143e:	6800      	ldr	r0, [r0, #0]
 8001440:	900a      	str	r0, [sp, #40]	; 0x28
 8001442:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001444:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001446:	ea21 0000 	bic.w	r0, r1, r0
 800144a:	900a      	str	r0, [sp, #40]	; 0x28
 800144c:	980d      	ldr	r0, [sp, #52]	; 0x34
 800144e:	6840      	ldr	r0, [r0, #4]
 8001450:	0380      	lsls	r0, r0, #14
 8001452:	2800      	cmp	r0, #0
 8001454:	d505      	bpl.n	8001462 <HAL_GPIO_Init+0x352>
 8001456:	e7ff      	b.n	8001458 <HAL_GPIO_Init+0x348>
 8001458:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800145a:	990a      	ldr	r1, [sp, #40]	; 0x28
 800145c:	4308      	orrs	r0, r1
 800145e:	900a      	str	r0, [sp, #40]	; 0x28
 8001460:	e7ff      	b.n	8001462 <HAL_GPIO_Init+0x352>
 8001462:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001464:	f240 4104 	movw	r1, #1028	; 0x404
 8001468:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800146c:	6008      	str	r0, [r1, #0]
 800146e:	f240 4008 	movw	r0, #1032	; 0x408
 8001472:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001476:	6800      	ldr	r0, [r0, #0]
 8001478:	900a      	str	r0, [sp, #40]	; 0x28
 800147a:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800147c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800147e:	ea21 0000 	bic.w	r0, r1, r0
 8001482:	900a      	str	r0, [sp, #40]	; 0x28
 8001484:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001486:	6840      	ldr	r0, [r0, #4]
 8001488:	02c0      	lsls	r0, r0, #11
 800148a:	2800      	cmp	r0, #0
 800148c:	d505      	bpl.n	800149a <HAL_GPIO_Init+0x38a>
 800148e:	e7ff      	b.n	8001490 <HAL_GPIO_Init+0x380>
 8001490:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001492:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001494:	4308      	orrs	r0, r1
 8001496:	900a      	str	r0, [sp, #40]	; 0x28
 8001498:	e7ff      	b.n	800149a <HAL_GPIO_Init+0x38a>
 800149a:	980a      	ldr	r0, [sp, #40]	; 0x28
 800149c:	f240 4108 	movw	r1, #1032	; 0x408
 80014a0:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80014a4:	6008      	str	r0, [r1, #0]
 80014a6:	f240 400c 	movw	r0, #1036	; 0x40c
 80014aa:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80014ae:	6800      	ldr	r0, [r0, #0]
 80014b0:	900a      	str	r0, [sp, #40]	; 0x28
 80014b2:	980b      	ldr	r0, [sp, #44]	; 0x2c
 80014b4:	990a      	ldr	r1, [sp, #40]	; 0x28
 80014b6:	ea21 0000 	bic.w	r0, r1, r0
 80014ba:	900a      	str	r0, [sp, #40]	; 0x28
 80014bc:	980d      	ldr	r0, [sp, #52]	; 0x34
 80014be:	6840      	ldr	r0, [r0, #4]
 80014c0:	0280      	lsls	r0, r0, #10
 80014c2:	2800      	cmp	r0, #0
 80014c4:	d505      	bpl.n	80014d2 <HAL_GPIO_Init+0x3c2>
 80014c6:	e7ff      	b.n	80014c8 <HAL_GPIO_Init+0x3b8>
 80014c8:	980b      	ldr	r0, [sp, #44]	; 0x2c
 80014ca:	990a      	ldr	r1, [sp, #40]	; 0x28
 80014cc:	4308      	orrs	r0, r1
 80014ce:	900a      	str	r0, [sp, #40]	; 0x28
 80014d0:	e7ff      	b.n	80014d2 <HAL_GPIO_Init+0x3c2>
 80014d2:	980a      	ldr	r0, [sp, #40]	; 0x28
 80014d4:	f240 410c 	movw	r1, #1036	; 0x40c
 80014d8:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80014dc:	6008      	str	r0, [r1, #0]
 80014de:	e7ff      	b.n	80014e0 <HAL_GPIO_Init+0x3d0>
 80014e0:	e7ff      	b.n	80014e2 <HAL_GPIO_Init+0x3d2>
 80014e2:	980c      	ldr	r0, [sp, #48]	; 0x30
 80014e4:	3001      	adds	r0, #1
 80014e6:	900c      	str	r0, [sp, #48]	; 0x30
 80014e8:	e61c      	b.n	8001124 <HAL_GPIO_Init+0x14>
 80014ea:	b00f      	add	sp, #60	; 0x3c
 80014ec:	4770      	bx	lr

080014ee <HAL_RCC_GetSysClockFreq>:
 80014ee:	b089      	sub	sp, #36	; 0x24
 80014f0:	2000      	movs	r0, #0
 80014f2:	9008      	str	r0, [sp, #32]
 80014f4:	9007      	str	r0, [sp, #28]
 80014f6:	f241 0008 	movw	r0, #4104	; 0x1008
 80014fa:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80014fe:	6800      	ldr	r0, [r0, #0]
 8001500:	f000 000c 	and.w	r0, r0, #12
 8001504:	9002      	str	r0, [sp, #8]
 8001506:	f241 000c 	movw	r0, #4108	; 0x100c
 800150a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800150e:	6800      	ldr	r0, [r0, #0]
 8001510:	f000 0003 	and.w	r0, r0, #3
 8001514:	9001      	str	r0, [sp, #4]
 8001516:	9802      	ldr	r0, [sp, #8]
 8001518:	2800      	cmp	r0, #0
 800151a:	d008      	beq.n	800152e <HAL_RCC_GetSysClockFreq+0x40>
 800151c:	e7ff      	b.n	800151e <HAL_RCC_GetSysClockFreq+0x30>
 800151e:	9802      	ldr	r0, [sp, #8]
 8001520:	280c      	cmp	r0, #12
 8001522:	d12f      	bne.n	8001584 <HAL_RCC_GetSysClockFreq+0x96>
 8001524:	e7ff      	b.n	8001526 <HAL_RCC_GetSysClockFreq+0x38>
 8001526:	9801      	ldr	r0, [sp, #4]
 8001528:	2801      	cmp	r0, #1
 800152a:	d12b      	bne.n	8001584 <HAL_RCC_GetSysClockFreq+0x96>
 800152c:	e7ff      	b.n	800152e <HAL_RCC_GetSysClockFreq+0x40>
 800152e:	f241 0000 	movw	r0, #4096	; 0x1000
 8001532:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001536:	6800      	ldr	r0, [r0, #0]
 8001538:	f010 0f08 	tst.w	r0, #8
 800153c:	d109      	bne.n	8001552 <HAL_RCC_GetSysClockFreq+0x64>
 800153e:	e7ff      	b.n	8001540 <HAL_RCC_GetSysClockFreq+0x52>
 8001540:	f241 0094 	movw	r0, #4244	; 0x1094
 8001544:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001548:	6800      	ldr	r0, [r0, #0]
 800154a:	f3c0 2003 	ubfx	r0, r0, #8, #4
 800154e:	9008      	str	r0, [sp, #32]
 8001550:	e008      	b.n	8001564 <HAL_RCC_GetSysClockFreq+0x76>
 8001552:	f241 0000 	movw	r0, #4096	; 0x1000
 8001556:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800155a:	6800      	ldr	r0, [r0, #0]
 800155c:	f3c0 1003 	ubfx	r0, r0, #4, #4
 8001560:	9008      	str	r0, [sp, #32]
 8001562:	e7ff      	b.n	8001564 <HAL_RCC_GetSysClockFreq+0x76>
 8001564:	9808      	ldr	r0, [sp, #32]
 8001566:	f647 3110 	movw	r1, #31504	; 0x7b10
 800156a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800156e:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8001572:	9008      	str	r0, [sp, #32]
 8001574:	9802      	ldr	r0, [sp, #8]
 8001576:	2800      	cmp	r0, #0
 8001578:	d103      	bne.n	8001582 <HAL_RCC_GetSysClockFreq+0x94>
 800157a:	e7ff      	b.n	800157c <HAL_RCC_GetSysClockFreq+0x8e>
 800157c:	9808      	ldr	r0, [sp, #32]
 800157e:	9007      	str	r0, [sp, #28]
 8001580:	e7ff      	b.n	8001582 <HAL_RCC_GetSysClockFreq+0x94>
 8001582:	e016      	b.n	80015b2 <HAL_RCC_GetSysClockFreq+0xc4>
 8001584:	9802      	ldr	r0, [sp, #8]
 8001586:	2804      	cmp	r0, #4
 8001588:	d106      	bne.n	8001598 <HAL_RCC_GetSysClockFreq+0xaa>
 800158a:	e7ff      	b.n	800158c <HAL_RCC_GetSysClockFreq+0x9e>
 800158c:	f242 4000 	movw	r0, #9216	; 0x2400
 8001590:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001594:	9007      	str	r0, [sp, #28]
 8001596:	e00b      	b.n	80015b0 <HAL_RCC_GetSysClockFreq+0xc2>
 8001598:	9802      	ldr	r0, [sp, #8]
 800159a:	2808      	cmp	r0, #8
 800159c:	d106      	bne.n	80015ac <HAL_RCC_GetSysClockFreq+0xbe>
 800159e:	e7ff      	b.n	80015a0 <HAL_RCC_GetSysClockFreq+0xb2>
 80015a0:	f241 2000 	movw	r0, #4608	; 0x1200
 80015a4:	f2c0 007a 	movt	r0, #122	; 0x7a
 80015a8:	9007      	str	r0, [sp, #28]
 80015aa:	e000      	b.n	80015ae <HAL_RCC_GetSysClockFreq+0xc0>
 80015ac:	e7ff      	b.n	80015ae <HAL_RCC_GetSysClockFreq+0xc0>
 80015ae:	e7ff      	b.n	80015b0 <HAL_RCC_GetSysClockFreq+0xc2>
 80015b0:	e7ff      	b.n	80015b2 <HAL_RCC_GetSysClockFreq+0xc4>
 80015b2:	9802      	ldr	r0, [sp, #8]
 80015b4:	280c      	cmp	r0, #12
 80015b6:	d15e      	bne.n	8001676 <HAL_RCC_GetSysClockFreq+0x188>
 80015b8:	e7ff      	b.n	80015ba <HAL_RCC_GetSysClockFreq+0xcc>
 80015ba:	f241 000c 	movw	r0, #4108	; 0x100c
 80015be:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015c2:	6801      	ldr	r1, [r0, #0]
 80015c4:	f001 0103 	and.w	r1, r1, #3
 80015c8:	9105      	str	r1, [sp, #20]
 80015ca:	6800      	ldr	r0, [r0, #0]
 80015cc:	f000 0070 	and.w	r0, r0, #112	; 0x70
 80015d0:	2101      	movs	r1, #1
 80015d2:	eb01 1010 	add.w	r0, r1, r0, lsr #4
 80015d6:	9003      	str	r0, [sp, #12]
 80015d8:	9805      	ldr	r0, [sp, #20]
 80015da:	2801      	cmp	r0, #1
 80015dc:	9000      	str	r0, [sp, #0]
 80015de:	d02a      	beq.n	8001636 <HAL_RCC_GetSysClockFreq+0x148>
 80015e0:	e7ff      	b.n	80015e2 <HAL_RCC_GetSysClockFreq+0xf4>
 80015e2:	9800      	ldr	r0, [sp, #0]
 80015e4:	2802      	cmp	r0, #2
 80015e6:	d004      	beq.n	80015f2 <HAL_RCC_GetSysClockFreq+0x104>
 80015e8:	e7ff      	b.n	80015ea <HAL_RCC_GetSysClockFreq+0xfc>
 80015ea:	9800      	ldr	r0, [sp, #0]
 80015ec:	2803      	cmp	r0, #3
 80015ee:	d011      	beq.n	8001614 <HAL_RCC_GetSysClockFreq+0x126>
 80015f0:	e022      	b.n	8001638 <HAL_RCC_GetSysClockFreq+0x14a>
 80015f2:	9803      	ldr	r0, [sp, #12]
 80015f4:	f242 4100 	movw	r1, #9216	; 0x2400
 80015f8:	f2c0 01f4 	movt	r1, #244	; 0xf4
 80015fc:	fbb1 f0f0 	udiv	r0, r1, r0
 8001600:	f241 010c 	movw	r1, #4108	; 0x100c
 8001604:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001608:	6809      	ldr	r1, [r1, #0]
 800160a:	f3c1 2106 	ubfx	r1, r1, #8, #7
 800160e:	4348      	muls	r0, r1
 8001610:	9006      	str	r0, [sp, #24]
 8001612:	e01f      	b.n	8001654 <HAL_RCC_GetSysClockFreq+0x166>
 8001614:	9803      	ldr	r0, [sp, #12]
 8001616:	f241 2100 	movw	r1, #4608	; 0x1200
 800161a:	f2c0 017a 	movt	r1, #122	; 0x7a
 800161e:	fbb1 f0f0 	udiv	r0, r1, r0
 8001622:	f241 010c 	movw	r1, #4108	; 0x100c
 8001626:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800162a:	6809      	ldr	r1, [r1, #0]
 800162c:	f3c1 2106 	ubfx	r1, r1, #8, #7
 8001630:	4348      	muls	r0, r1
 8001632:	9006      	str	r0, [sp, #24]
 8001634:	e00e      	b.n	8001654 <HAL_RCC_GetSysClockFreq+0x166>
 8001636:	e7ff      	b.n	8001638 <HAL_RCC_GetSysClockFreq+0x14a>
 8001638:	9808      	ldr	r0, [sp, #32]
 800163a:	9903      	ldr	r1, [sp, #12]
 800163c:	fbb0 f0f1 	udiv	r0, r0, r1
 8001640:	f241 010c 	movw	r1, #4108	; 0x100c
 8001644:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001648:	6809      	ldr	r1, [r1, #0]
 800164a:	f3c1 2106 	ubfx	r1, r1, #8, #7
 800164e:	4348      	muls	r0, r1
 8001650:	9006      	str	r0, [sp, #24]
 8001652:	e7ff      	b.n	8001654 <HAL_RCC_GetSysClockFreq+0x166>
 8001654:	f241 000c 	movw	r0, #4108	; 0x100c
 8001658:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800165c:	6800      	ldr	r0, [r0, #0]
 800165e:	f000 60c0 	and.w	r0, r0, #100663296	; 0x6000000
 8001662:	2102      	movs	r1, #2
 8001664:	eb01 6010 	add.w	r0, r1, r0, lsr #24
 8001668:	9004      	str	r0, [sp, #16]
 800166a:	9806      	ldr	r0, [sp, #24]
 800166c:	9904      	ldr	r1, [sp, #16]
 800166e:	fbb0 f0f1 	udiv	r0, r0, r1
 8001672:	9007      	str	r0, [sp, #28]
 8001674:	e7ff      	b.n	8001676 <HAL_RCC_GetSysClockFreq+0x188>
 8001676:	9807      	ldr	r0, [sp, #28]
 8001678:	b009      	add	sp, #36	; 0x24
 800167a:	4770      	bx	lr

0800167c <HAL_RCC_GetHCLKFreq>:
 800167c:	f240 0014 	movw	r0, #20
 8001680:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001684:	6800      	ldr	r0, [r0, #0]
 8001686:	4770      	bx	lr

08001688 <HAL_RCC_GetPCLK1Freq>:
 8001688:	b580      	push	{r7, lr}
 800168a:	466f      	mov	r7, sp
 800168c:	f7ff fff6 	bl	800167c <HAL_RCC_GetHCLKFreq>
 8001690:	f241 0e08 	movw	lr, #4104	; 0x1008
 8001694:	f2c4 0e02 	movt	lr, #16386	; 0x4002
 8001698:	f8de e000 	ldr.w	lr, [lr]
 800169c:	f3ce 2e02 	ubfx	lr, lr, #8, #3
 80016a0:	f647 3108 	movw	r1, #31496	; 0x7b08
 80016a4:	f6c0 0100 	movt	r1, #2048	; 0x800
 80016a8:	f811 100e 	ldrb.w	r1, [r1, lr]
 80016ac:	f001 011f 	and.w	r1, r1, #31
 80016b0:	40c8      	lsrs	r0, r1
 80016b2:	bd80      	pop	{r7, pc}

080016b4 <HAL_RCC_GetPCLK2Freq>:
 80016b4:	b580      	push	{r7, lr}
 80016b6:	466f      	mov	r7, sp
 80016b8:	f7ff ffe0 	bl	800167c <HAL_RCC_GetHCLKFreq>
 80016bc:	f241 0e08 	movw	lr, #4104	; 0x1008
 80016c0:	f2c4 0e02 	movt	lr, #16386	; 0x4002
 80016c4:	f8de e000 	ldr.w	lr, [lr]
 80016c8:	f3ce 2ec2 	ubfx	lr, lr, #11, #3
 80016cc:	f647 3108 	movw	r1, #31496	; 0x7b08
 80016d0:	f6c0 0100 	movt	r1, #2048	; 0x800
 80016d4:	f811 100e 	ldrb.w	r1, [r1, lr]
 80016d8:	f001 011f 	and.w	r1, r1, #31
 80016dc:	40c8      	lsrs	r0, r1
 80016de:	bd80      	pop	{r7, pc}

080016e0 <HAL_TIM_IRQHandler>:
 80016e0:	b580      	push	{r7, lr}
 80016e2:	466f      	mov	r7, sp
 80016e4:	b082      	sub	sp, #8
 80016e6:	4601      	mov	r1, r0
 80016e8:	9001      	str	r0, [sp, #4]
 80016ea:	9801      	ldr	r0, [sp, #4]
 80016ec:	6800      	ldr	r0, [r0, #0]
 80016ee:	6900      	ldr	r0, [r0, #16]
 80016f0:	f000 0002 	and.w	r0, r0, #2
 80016f4:	2200      	movs	r2, #0
 80016f6:	ebb2 0f50 	cmp.w	r2, r0, lsr #1
 80016fa:	9100      	str	r1, [sp, #0]
 80016fc:	d02b      	beq.n	8001756 <HAL_TIM_IRQHandler+0x76>
 80016fe:	e7ff      	b.n	8001700 <HAL_TIM_IRQHandler+0x20>
 8001700:	9801      	ldr	r0, [sp, #4]
 8001702:	6800      	ldr	r0, [r0, #0]
 8001704:	68c0      	ldr	r0, [r0, #12]
 8001706:	f000 0002 	and.w	r0, r0, #2
 800170a:	2100      	movs	r1, #0
 800170c:	2802      	cmp	r0, #2
 800170e:	bf08      	it	eq
 8001710:	2101      	moveq	r1, #1
 8001712:	2900      	cmp	r1, #0
 8001714:	d01e      	beq.n	8001754 <HAL_TIM_IRQHandler+0x74>
 8001716:	e7ff      	b.n	8001718 <HAL_TIM_IRQHandler+0x38>
 8001718:	9801      	ldr	r0, [sp, #4]
 800171a:	6800      	ldr	r0, [r0, #0]
 800171c:	f06f 0102 	mvn.w	r1, #2
 8001720:	6101      	str	r1, [r0, #16]
 8001722:	9801      	ldr	r0, [sp, #4]
 8001724:	2101      	movs	r1, #1
 8001726:	61c1      	str	r1, [r0, #28]
 8001728:	9801      	ldr	r0, [sp, #4]
 800172a:	6800      	ldr	r0, [r0, #0]
 800172c:	6980      	ldr	r0, [r0, #24]
 800172e:	f010 0f03 	tst.w	r0, #3
 8001732:	d004      	beq.n	800173e <HAL_TIM_IRQHandler+0x5e>
 8001734:	e7ff      	b.n	8001736 <HAL_TIM_IRQHandler+0x56>
 8001736:	9801      	ldr	r0, [sp, #4]
 8001738:	f000 f94a 	bl	80019d0 <HAL_TIM_IC_CaptureCallback>
 800173c:	e006      	b.n	800174c <HAL_TIM_IRQHandler+0x6c>
 800173e:	9801      	ldr	r0, [sp, #4]
 8001740:	f000 f94c 	bl	80019dc <HAL_TIM_OC_DelayElapsedCallback>
 8001744:	9801      	ldr	r0, [sp, #4]
 8001746:	f000 f94f 	bl	80019e8 <HAL_TIM_PWM_PulseFinishedCallback>
 800174a:	e7ff      	b.n	800174c <HAL_TIM_IRQHandler+0x6c>
 800174c:	9801      	ldr	r0, [sp, #4]
 800174e:	2100      	movs	r1, #0
 8001750:	61c1      	str	r1, [r0, #28]
 8001752:	e7ff      	b.n	8001754 <HAL_TIM_IRQHandler+0x74>
 8001754:	e7ff      	b.n	8001756 <HAL_TIM_IRQHandler+0x76>
 8001756:	9801      	ldr	r0, [sp, #4]
 8001758:	6800      	ldr	r0, [r0, #0]
 800175a:	6900      	ldr	r0, [r0, #16]
 800175c:	f000 0004 	and.w	r0, r0, #4
 8001760:	2100      	movs	r1, #0
 8001762:	ebb1 0f90 	cmp.w	r1, r0, lsr #2
 8001766:	d02b      	beq.n	80017c0 <HAL_TIM_IRQHandler+0xe0>
 8001768:	e7ff      	b.n	800176a <HAL_TIM_IRQHandler+0x8a>
 800176a:	9801      	ldr	r0, [sp, #4]
 800176c:	6800      	ldr	r0, [r0, #0]
 800176e:	68c0      	ldr	r0, [r0, #12]
 8001770:	f000 0004 	and.w	r0, r0, #4
 8001774:	2100      	movs	r1, #0
 8001776:	2804      	cmp	r0, #4
 8001778:	bf08      	it	eq
 800177a:	2101      	moveq	r1, #1
 800177c:	2900      	cmp	r1, #0
 800177e:	d01e      	beq.n	80017be <HAL_TIM_IRQHandler+0xde>
 8001780:	e7ff      	b.n	8001782 <HAL_TIM_IRQHandler+0xa2>
 8001782:	9801      	ldr	r0, [sp, #4]
 8001784:	6800      	ldr	r0, [r0, #0]
 8001786:	f06f 0104 	mvn.w	r1, #4
 800178a:	6101      	str	r1, [r0, #16]
 800178c:	9801      	ldr	r0, [sp, #4]
 800178e:	2102      	movs	r1, #2
 8001790:	61c1      	str	r1, [r0, #28]
 8001792:	9801      	ldr	r0, [sp, #4]
 8001794:	6800      	ldr	r0, [r0, #0]
 8001796:	6980      	ldr	r0, [r0, #24]
 8001798:	f410 7f40 	tst.w	r0, #768	; 0x300
 800179c:	d004      	beq.n	80017a8 <HAL_TIM_IRQHandler+0xc8>
 800179e:	e7ff      	b.n	80017a0 <HAL_TIM_IRQHandler+0xc0>
 80017a0:	9801      	ldr	r0, [sp, #4]
 80017a2:	f000 f915 	bl	80019d0 <HAL_TIM_IC_CaptureCallback>
 80017a6:	e006      	b.n	80017b6 <HAL_TIM_IRQHandler+0xd6>
 80017a8:	9801      	ldr	r0, [sp, #4]
 80017aa:	f000 f917 	bl	80019dc <HAL_TIM_OC_DelayElapsedCallback>
 80017ae:	9801      	ldr	r0, [sp, #4]
 80017b0:	f000 f91a 	bl	80019e8 <HAL_TIM_PWM_PulseFinishedCallback>
 80017b4:	e7ff      	b.n	80017b6 <HAL_TIM_IRQHandler+0xd6>
 80017b6:	9801      	ldr	r0, [sp, #4]
 80017b8:	2100      	movs	r1, #0
 80017ba:	61c1      	str	r1, [r0, #28]
 80017bc:	e7ff      	b.n	80017be <HAL_TIM_IRQHandler+0xde>
 80017be:	e7ff      	b.n	80017c0 <HAL_TIM_IRQHandler+0xe0>
 80017c0:	9801      	ldr	r0, [sp, #4]
 80017c2:	6800      	ldr	r0, [r0, #0]
 80017c4:	6900      	ldr	r0, [r0, #16]
 80017c6:	f000 0008 	and.w	r0, r0, #8
 80017ca:	2100      	movs	r1, #0
 80017cc:	ebb1 0fd0 	cmp.w	r1, r0, lsr #3
 80017d0:	d02b      	beq.n	800182a <HAL_TIM_IRQHandler+0x14a>
 80017d2:	e7ff      	b.n	80017d4 <HAL_TIM_IRQHandler+0xf4>
 80017d4:	9801      	ldr	r0, [sp, #4]
 80017d6:	6800      	ldr	r0, [r0, #0]
 80017d8:	68c0      	ldr	r0, [r0, #12]
 80017da:	f000 0008 	and.w	r0, r0, #8
 80017de:	2100      	movs	r1, #0
 80017e0:	2808      	cmp	r0, #8
 80017e2:	bf08      	it	eq
 80017e4:	2101      	moveq	r1, #1
 80017e6:	2900      	cmp	r1, #0
 80017e8:	d01e      	beq.n	8001828 <HAL_TIM_IRQHandler+0x148>
 80017ea:	e7ff      	b.n	80017ec <HAL_TIM_IRQHandler+0x10c>
 80017ec:	9801      	ldr	r0, [sp, #4]
 80017ee:	6800      	ldr	r0, [r0, #0]
 80017f0:	f06f 0108 	mvn.w	r1, #8
 80017f4:	6101      	str	r1, [r0, #16]
 80017f6:	9801      	ldr	r0, [sp, #4]
 80017f8:	2104      	movs	r1, #4
 80017fa:	61c1      	str	r1, [r0, #28]
 80017fc:	9801      	ldr	r0, [sp, #4]
 80017fe:	6800      	ldr	r0, [r0, #0]
 8001800:	69c0      	ldr	r0, [r0, #28]
 8001802:	f010 0f03 	tst.w	r0, #3
 8001806:	d004      	beq.n	8001812 <HAL_TIM_IRQHandler+0x132>
 8001808:	e7ff      	b.n	800180a <HAL_TIM_IRQHandler+0x12a>
 800180a:	9801      	ldr	r0, [sp, #4]
 800180c:	f000 f8e0 	bl	80019d0 <HAL_TIM_IC_CaptureCallback>
 8001810:	e006      	b.n	8001820 <HAL_TIM_IRQHandler+0x140>
 8001812:	9801      	ldr	r0, [sp, #4]
 8001814:	f000 f8e2 	bl	80019dc <HAL_TIM_OC_DelayElapsedCallback>
 8001818:	9801      	ldr	r0, [sp, #4]
 800181a:	f000 f8e5 	bl	80019e8 <HAL_TIM_PWM_PulseFinishedCallback>
 800181e:	e7ff      	b.n	8001820 <HAL_TIM_IRQHandler+0x140>
 8001820:	9801      	ldr	r0, [sp, #4]
 8001822:	2100      	movs	r1, #0
 8001824:	61c1      	str	r1, [r0, #28]
 8001826:	e7ff      	b.n	8001828 <HAL_TIM_IRQHandler+0x148>
 8001828:	e7ff      	b.n	800182a <HAL_TIM_IRQHandler+0x14a>
 800182a:	9801      	ldr	r0, [sp, #4]
 800182c:	6800      	ldr	r0, [r0, #0]
 800182e:	6900      	ldr	r0, [r0, #16]
 8001830:	f000 0010 	and.w	r0, r0, #16
 8001834:	2100      	movs	r1, #0
 8001836:	ebb1 1f10 	cmp.w	r1, r0, lsr #4
 800183a:	d02b      	beq.n	8001894 <HAL_TIM_IRQHandler+0x1b4>
 800183c:	e7ff      	b.n	800183e <HAL_TIM_IRQHandler+0x15e>
 800183e:	9801      	ldr	r0, [sp, #4]
 8001840:	6800      	ldr	r0, [r0, #0]
 8001842:	68c0      	ldr	r0, [r0, #12]
 8001844:	f000 0010 	and.w	r0, r0, #16
 8001848:	2100      	movs	r1, #0
 800184a:	2810      	cmp	r0, #16
 800184c:	bf08      	it	eq
 800184e:	2101      	moveq	r1, #1
 8001850:	2900      	cmp	r1, #0
 8001852:	d01e      	beq.n	8001892 <HAL_TIM_IRQHandler+0x1b2>
 8001854:	e7ff      	b.n	8001856 <HAL_TIM_IRQHandler+0x176>
 8001856:	9801      	ldr	r0, [sp, #4]
 8001858:	6800      	ldr	r0, [r0, #0]
 800185a:	f06f 0110 	mvn.w	r1, #16
 800185e:	6101      	str	r1, [r0, #16]
 8001860:	9801      	ldr	r0, [sp, #4]
 8001862:	2108      	movs	r1, #8
 8001864:	61c1      	str	r1, [r0, #28]
 8001866:	9801      	ldr	r0, [sp, #4]
 8001868:	6800      	ldr	r0, [r0, #0]
 800186a:	69c0      	ldr	r0, [r0, #28]
 800186c:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001870:	d004      	beq.n	800187c <HAL_TIM_IRQHandler+0x19c>
 8001872:	e7ff      	b.n	8001874 <HAL_TIM_IRQHandler+0x194>
 8001874:	9801      	ldr	r0, [sp, #4]
 8001876:	f000 f8ab 	bl	80019d0 <HAL_TIM_IC_CaptureCallback>
 800187a:	e006      	b.n	800188a <HAL_TIM_IRQHandler+0x1aa>
 800187c:	9801      	ldr	r0, [sp, #4]
 800187e:	f000 f8ad 	bl	80019dc <HAL_TIM_OC_DelayElapsedCallback>
 8001882:	9801      	ldr	r0, [sp, #4]
 8001884:	f000 f8b0 	bl	80019e8 <HAL_TIM_PWM_PulseFinishedCallback>
 8001888:	e7ff      	b.n	800188a <HAL_TIM_IRQHandler+0x1aa>
 800188a:	9801      	ldr	r0, [sp, #4]
 800188c:	2100      	movs	r1, #0
 800188e:	61c1      	str	r1, [r0, #28]
 8001890:	e7ff      	b.n	8001892 <HAL_TIM_IRQHandler+0x1b2>
 8001892:	e7ff      	b.n	8001894 <HAL_TIM_IRQHandler+0x1b4>
 8001894:	9801      	ldr	r0, [sp, #4]
 8001896:	6800      	ldr	r0, [r0, #0]
 8001898:	6900      	ldr	r0, [r0, #16]
 800189a:	f010 0f01 	tst.w	r0, #1
 800189e:	d015      	beq.n	80018cc <HAL_TIM_IRQHandler+0x1ec>
 80018a0:	e7ff      	b.n	80018a2 <HAL_TIM_IRQHandler+0x1c2>
 80018a2:	9801      	ldr	r0, [sp, #4]
 80018a4:	6800      	ldr	r0, [r0, #0]
 80018a6:	68c0      	ldr	r0, [r0, #12]
 80018a8:	f000 0001 	and.w	r0, r0, #1
 80018ac:	2801      	cmp	r0, #1
 80018ae:	bf18      	it	ne
 80018b0:	2000      	movne	r0, #0
 80018b2:	2800      	cmp	r0, #0
 80018b4:	d009      	beq.n	80018ca <HAL_TIM_IRQHandler+0x1ea>
 80018b6:	e7ff      	b.n	80018b8 <HAL_TIM_IRQHandler+0x1d8>
 80018b8:	9801      	ldr	r0, [sp, #4]
 80018ba:	6800      	ldr	r0, [r0, #0]
 80018bc:	f06f 0101 	mvn.w	r1, #1
 80018c0:	6101      	str	r1, [r0, #16]
 80018c2:	9801      	ldr	r0, [sp, #4]
 80018c4:	f000 f8ae 	bl	8001a24 <HAL_TIM_PeriodElapsedCallback>
 80018c8:	e7ff      	b.n	80018ca <HAL_TIM_IRQHandler+0x1ea>
 80018ca:	e7ff      	b.n	80018cc <HAL_TIM_IRQHandler+0x1ec>
 80018cc:	9801      	ldr	r0, [sp, #4]
 80018ce:	6800      	ldr	r0, [r0, #0]
 80018d0:	6900      	ldr	r0, [r0, #16]
 80018d2:	f000 0080 	and.w	r0, r0, #128	; 0x80
 80018d6:	2100      	movs	r1, #0
 80018d8:	ebb1 1fd0 	cmp.w	r1, r0, lsr #7
 80018dc:	d016      	beq.n	800190c <HAL_TIM_IRQHandler+0x22c>
 80018de:	e7ff      	b.n	80018e0 <HAL_TIM_IRQHandler+0x200>
 80018e0:	9801      	ldr	r0, [sp, #4]
 80018e2:	6800      	ldr	r0, [r0, #0]
 80018e4:	68c0      	ldr	r0, [r0, #12]
 80018e6:	f000 0080 	and.w	r0, r0, #128	; 0x80
 80018ea:	2100      	movs	r1, #0
 80018ec:	2880      	cmp	r0, #128	; 0x80
 80018ee:	bf08      	it	eq
 80018f0:	2101      	moveq	r1, #1
 80018f2:	2900      	cmp	r1, #0
 80018f4:	d009      	beq.n	800190a <HAL_TIM_IRQHandler+0x22a>
 80018f6:	e7ff      	b.n	80018f8 <HAL_TIM_IRQHandler+0x218>
 80018f8:	9801      	ldr	r0, [sp, #4]
 80018fa:	6800      	ldr	r0, [r0, #0]
 80018fc:	f06f 0180 	mvn.w	r1, #128	; 0x80
 8001900:	6101      	str	r1, [r0, #16]
 8001902:	9801      	ldr	r0, [sp, #4]
 8001904:	f000 f882 	bl	8001a0c <HAL_TIMEx_BreakCallback>
 8001908:	e7ff      	b.n	800190a <HAL_TIM_IRQHandler+0x22a>
 800190a:	e7ff      	b.n	800190c <HAL_TIM_IRQHandler+0x22c>
 800190c:	9801      	ldr	r0, [sp, #4]
 800190e:	6800      	ldr	r0, [r0, #0]
 8001910:	6900      	ldr	r0, [r0, #16]
 8001912:	f400 7080 	and.w	r0, r0, #256	; 0x100
 8001916:	2100      	movs	r1, #0
 8001918:	ebb1 2f10 	cmp.w	r1, r0, lsr #8
 800191c:	d016      	beq.n	800194c <HAL_TIM_IRQHandler+0x26c>
 800191e:	e7ff      	b.n	8001920 <HAL_TIM_IRQHandler+0x240>
 8001920:	9801      	ldr	r0, [sp, #4]
 8001922:	6800      	ldr	r0, [r0, #0]
 8001924:	68c0      	ldr	r0, [r0, #12]
 8001926:	f000 0080 	and.w	r0, r0, #128	; 0x80
 800192a:	2100      	movs	r1, #0
 800192c:	2880      	cmp	r0, #128	; 0x80
 800192e:	bf08      	it	eq
 8001930:	2101      	moveq	r1, #1
 8001932:	2900      	cmp	r1, #0
 8001934:	d009      	beq.n	800194a <HAL_TIM_IRQHandler+0x26a>
 8001936:	e7ff      	b.n	8001938 <HAL_TIM_IRQHandler+0x258>
 8001938:	9801      	ldr	r0, [sp, #4]
 800193a:	6800      	ldr	r0, [r0, #0]
 800193c:	f46f 7180 	mvn.w	r1, #256	; 0x100
 8001940:	6101      	str	r1, [r0, #16]
 8001942:	9801      	ldr	r0, [sp, #4]
 8001944:	f000 f868 	bl	8001a18 <HAL_TIMEx_Break2Callback>
 8001948:	e7ff      	b.n	800194a <HAL_TIM_IRQHandler+0x26a>
 800194a:	e7ff      	b.n	800194c <HAL_TIM_IRQHandler+0x26c>
 800194c:	9801      	ldr	r0, [sp, #4]
 800194e:	6800      	ldr	r0, [r0, #0]
 8001950:	6900      	ldr	r0, [r0, #16]
 8001952:	f000 0040 	and.w	r0, r0, #64	; 0x40
 8001956:	2100      	movs	r1, #0
 8001958:	ebb1 1f90 	cmp.w	r1, r0, lsr #6
 800195c:	d016      	beq.n	800198c <HAL_TIM_IRQHandler+0x2ac>
 800195e:	e7ff      	b.n	8001960 <HAL_TIM_IRQHandler+0x280>
 8001960:	9801      	ldr	r0, [sp, #4]
 8001962:	6800      	ldr	r0, [r0, #0]
 8001964:	68c0      	ldr	r0, [r0, #12]
 8001966:	f000 0040 	and.w	r0, r0, #64	; 0x40
 800196a:	2100      	movs	r1, #0
 800196c:	2840      	cmp	r0, #64	; 0x40
 800196e:	bf08      	it	eq
 8001970:	2101      	moveq	r1, #1
 8001972:	2900      	cmp	r1, #0
 8001974:	d009      	beq.n	800198a <HAL_TIM_IRQHandler+0x2aa>
 8001976:	e7ff      	b.n	8001978 <HAL_TIM_IRQHandler+0x298>
 8001978:	9801      	ldr	r0, [sp, #4]
 800197a:	6800      	ldr	r0, [r0, #0]
 800197c:	f06f 0140 	mvn.w	r1, #64	; 0x40
 8001980:	6101      	str	r1, [r0, #16]
 8001982:	9801      	ldr	r0, [sp, #4]
 8001984:	f000 f836 	bl	80019f4 <HAL_TIM_TriggerCallback>
 8001988:	e7ff      	b.n	800198a <HAL_TIM_IRQHandler+0x2aa>
 800198a:	e7ff      	b.n	800198c <HAL_TIM_IRQHandler+0x2ac>
 800198c:	9801      	ldr	r0, [sp, #4]
 800198e:	6800      	ldr	r0, [r0, #0]
 8001990:	6900      	ldr	r0, [r0, #16]
 8001992:	f000 0020 	and.w	r0, r0, #32
 8001996:	2100      	movs	r1, #0
 8001998:	ebb1 1f50 	cmp.w	r1, r0, lsr #5
 800199c:	d016      	beq.n	80019cc <HAL_TIM_IRQHandler+0x2ec>
 800199e:	e7ff      	b.n	80019a0 <HAL_TIM_IRQHandler+0x2c0>
 80019a0:	9801      	ldr	r0, [sp, #4]
 80019a2:	6800      	ldr	r0, [r0, #0]
 80019a4:	68c0      	ldr	r0, [r0, #12]
 80019a6:	f000 0020 	and.w	r0, r0, #32
 80019aa:	2100      	movs	r1, #0
 80019ac:	2820      	cmp	r0, #32
 80019ae:	bf08      	it	eq
 80019b0:	2101      	moveq	r1, #1
 80019b2:	2900      	cmp	r1, #0
 80019b4:	d009      	beq.n	80019ca <HAL_TIM_IRQHandler+0x2ea>
 80019b6:	e7ff      	b.n	80019b8 <HAL_TIM_IRQHandler+0x2d8>
 80019b8:	9801      	ldr	r0, [sp, #4]
 80019ba:	6800      	ldr	r0, [r0, #0]
 80019bc:	f06f 0120 	mvn.w	r1, #32
 80019c0:	6101      	str	r1, [r0, #16]
 80019c2:	9801      	ldr	r0, [sp, #4]
 80019c4:	f000 f81c 	bl	8001a00 <HAL_TIMEx_CommutationCallback>
 80019c8:	e7ff      	b.n	80019ca <HAL_TIM_IRQHandler+0x2ea>
 80019ca:	e7ff      	b.n	80019cc <HAL_TIM_IRQHandler+0x2ec>
 80019cc:	b002      	add	sp, #8
 80019ce:	bd80      	pop	{r7, pc}

080019d0 <HAL_TIM_IC_CaptureCallback>:
 80019d0:	b082      	sub	sp, #8
 80019d2:	4601      	mov	r1, r0
 80019d4:	9001      	str	r0, [sp, #4]
 80019d6:	9100      	str	r1, [sp, #0]
 80019d8:	b002      	add	sp, #8
 80019da:	4770      	bx	lr

080019dc <HAL_TIM_OC_DelayElapsedCallback>:
 80019dc:	b082      	sub	sp, #8
 80019de:	4601      	mov	r1, r0
 80019e0:	9001      	str	r0, [sp, #4]
 80019e2:	9100      	str	r1, [sp, #0]
 80019e4:	b002      	add	sp, #8
 80019e6:	4770      	bx	lr

080019e8 <HAL_TIM_PWM_PulseFinishedCallback>:
 80019e8:	b082      	sub	sp, #8
 80019ea:	4601      	mov	r1, r0
 80019ec:	9001      	str	r0, [sp, #4]
 80019ee:	9100      	str	r1, [sp, #0]
 80019f0:	b002      	add	sp, #8
 80019f2:	4770      	bx	lr

080019f4 <HAL_TIM_TriggerCallback>:
 80019f4:	b082      	sub	sp, #8
 80019f6:	4601      	mov	r1, r0
 80019f8:	9001      	str	r0, [sp, #4]
 80019fa:	9100      	str	r1, [sp, #0]
 80019fc:	b002      	add	sp, #8
 80019fe:	4770      	bx	lr

08001a00 <HAL_TIMEx_CommutationCallback>:
 8001a00:	b082      	sub	sp, #8
 8001a02:	4601      	mov	r1, r0
 8001a04:	9001      	str	r0, [sp, #4]
 8001a06:	9100      	str	r1, [sp, #0]
 8001a08:	b002      	add	sp, #8
 8001a0a:	4770      	bx	lr

08001a0c <HAL_TIMEx_BreakCallback>:
 8001a0c:	b082      	sub	sp, #8
 8001a0e:	4601      	mov	r1, r0
 8001a10:	9001      	str	r0, [sp, #4]
 8001a12:	9100      	str	r1, [sp, #0]
 8001a14:	b002      	add	sp, #8
 8001a16:	4770      	bx	lr

08001a18 <HAL_TIMEx_Break2Callback>:
 8001a18:	b082      	sub	sp, #8
 8001a1a:	4601      	mov	r1, r0
 8001a1c:	9001      	str	r0, [sp, #4]
 8001a1e:	9100      	str	r1, [sp, #0]
 8001a20:	b002      	add	sp, #8
 8001a22:	4770      	bx	lr

08001a24 <HAL_TIM_PeriodElapsedCallback>:
 8001a24:	b580      	push	{r7, lr}
 8001a26:	466f      	mov	r7, sp
 8001a28:	b082      	sub	sp, #8
 8001a2a:	4601      	mov	r1, r0
 8001a2c:	9001      	str	r0, [sp, #4]
 8001a2e:	9100      	str	r1, [sp, #0]
 8001a30:	f7ff fb5a 	bl	80010e8 <HAL_IncTick>
 8001a34:	b002      	add	sp, #8
 8001a36:	bd80      	pop	{r7, pc}

08001a38 <TIM6_DAC_IRQHandler>:
 8001a38:	b580      	push	{r7, lr}
 8001a3a:	466f      	mov	r7, sp
 8001a3c:	f640 30d0 	movw	r0, #3024	; 0xbd0
 8001a40:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001a44:	f7ff fe4c 	bl	80016e0 <HAL_TIM_IRQHandler>
 8001a48:	bd80      	pop	{r7, pc}

08001a4a <HAL_UART_Init>:
 8001a4a:	b580      	push	{r7, lr}
 8001a4c:	466f      	mov	r7, sp
 8001a4e:	b084      	sub	sp, #16
 8001a50:	4601      	mov	r1, r0
 8001a52:	9002      	str	r0, [sp, #8]
 8001a54:	9802      	ldr	r0, [sp, #8]
 8001a56:	2800      	cmp	r0, #0
 8001a58:	9101      	str	r1, [sp, #4]
 8001a5a:	d103      	bne.n	8001a64 <HAL_UART_Init+0x1a>
 8001a5c:	e7ff      	b.n	8001a5e <HAL_UART_Init+0x14>
 8001a5e:	2001      	movs	r0, #1
 8001a60:	9003      	str	r0, [sp, #12]
 8001a62:	e044      	b.n	8001aee <HAL_UART_Init+0xa4>
 8001a64:	9802      	ldr	r0, [sp, #8]
 8001a66:	6980      	ldr	r0, [r0, #24]
 8001a68:	2800      	cmp	r0, #0
 8001a6a:	d001      	beq.n	8001a70 <HAL_UART_Init+0x26>
 8001a6c:	e7ff      	b.n	8001a6e <HAL_UART_Init+0x24>
 8001a6e:	e000      	b.n	8001a72 <HAL_UART_Init+0x28>
 8001a70:	e7ff      	b.n	8001a72 <HAL_UART_Init+0x28>
 8001a72:	9802      	ldr	r0, [sp, #8]
 8001a74:	6f40      	ldr	r0, [r0, #116]	; 0x74
 8001a76:	2800      	cmp	r0, #0
 8001a78:	d107      	bne.n	8001a8a <HAL_UART_Init+0x40>
 8001a7a:	e7ff      	b.n	8001a7c <HAL_UART_Init+0x32>
 8001a7c:	9802      	ldr	r0, [sp, #8]
 8001a7e:	2100      	movs	r1, #0
 8001a80:	6701      	str	r1, [r0, #112]	; 0x70
 8001a82:	9802      	ldr	r0, [sp, #8]
 8001a84:	f000 f836 	bl	8001af4 <HAL_UART_MspInit>
 8001a88:	e7ff      	b.n	8001a8a <HAL_UART_Init+0x40>
 8001a8a:	9802      	ldr	r0, [sp, #8]
 8001a8c:	2124      	movs	r1, #36	; 0x24
 8001a8e:	6741      	str	r1, [r0, #116]	; 0x74
 8001a90:	9802      	ldr	r0, [sp, #8]
 8001a92:	6800      	ldr	r0, [r0, #0]
 8001a94:	6801      	ldr	r1, [r0, #0]
 8001a96:	f021 0101 	bic.w	r1, r1, #1
 8001a9a:	6001      	str	r1, [r0, #0]
 8001a9c:	9802      	ldr	r0, [sp, #8]
 8001a9e:	f000 f82f 	bl	8001b00 <UART_SetConfig>
 8001aa2:	2801      	cmp	r0, #1
 8001aa4:	d103      	bne.n	8001aae <HAL_UART_Init+0x64>
 8001aa6:	e7ff      	b.n	8001aa8 <HAL_UART_Init+0x5e>
 8001aa8:	2001      	movs	r0, #1
 8001aaa:	9003      	str	r0, [sp, #12]
 8001aac:	e01f      	b.n	8001aee <HAL_UART_Init+0xa4>
 8001aae:	9802      	ldr	r0, [sp, #8]
 8001ab0:	6a40      	ldr	r0, [r0, #36]	; 0x24
 8001ab2:	2800      	cmp	r0, #0
 8001ab4:	d004      	beq.n	8001ac0 <HAL_UART_Init+0x76>
 8001ab6:	e7ff      	b.n	8001ab8 <HAL_UART_Init+0x6e>
 8001ab8:	9802      	ldr	r0, [sp, #8]
 8001aba:	f000 fb50 	bl	800215e <UART_AdvFeatureConfig>
 8001abe:	e7ff      	b.n	8001ac0 <HAL_UART_Init+0x76>
 8001ac0:	9802      	ldr	r0, [sp, #8]
 8001ac2:	6800      	ldr	r0, [r0, #0]
 8001ac4:	6841      	ldr	r1, [r0, #4]
 8001ac6:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001aca:	6041      	str	r1, [r0, #4]
 8001acc:	9802      	ldr	r0, [sp, #8]
 8001ace:	6800      	ldr	r0, [r0, #0]
 8001ad0:	6881      	ldr	r1, [r0, #8]
 8001ad2:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001ad6:	6081      	str	r1, [r0, #8]
 8001ad8:	9802      	ldr	r0, [sp, #8]
 8001ada:	6800      	ldr	r0, [r0, #0]
 8001adc:	6801      	ldr	r1, [r0, #0]
 8001ade:	f041 0101 	orr.w	r1, r1, #1
 8001ae2:	6001      	str	r1, [r0, #0]
 8001ae4:	9802      	ldr	r0, [sp, #8]
 8001ae6:	f000 fbd9 	bl	800229c <UART_CheckIdleState>
 8001aea:	9003      	str	r0, [sp, #12]
 8001aec:	e7ff      	b.n	8001aee <HAL_UART_Init+0xa4>
 8001aee:	9803      	ldr	r0, [sp, #12]
 8001af0:	b004      	add	sp, #16
 8001af2:	bd80      	pop	{r7, pc}

08001af4 <HAL_UART_MspInit>:
 8001af4:	b082      	sub	sp, #8
 8001af6:	4601      	mov	r1, r0
 8001af8:	9001      	str	r0, [sp, #4]
 8001afa:	9100      	str	r1, [sp, #0]
 8001afc:	b002      	add	sp, #8
 8001afe:	4770      	bx	lr

08001b00 <UART_SetConfig>:
 8001b00:	b580      	push	{r7, lr}
 8001b02:	466f      	mov	r7, sp
 8001b04:	b098      	sub	sp, #96	; 0x60
 8001b06:	4601      	mov	r1, r0
 8001b08:	9017      	str	r0, [sp, #92]	; 0x5c
 8001b0a:	2000      	movs	r0, #0
 8001b0c:	9016      	str	r0, [sp, #88]	; 0x58
 8001b0e:	2210      	movs	r2, #16
 8001b10:	9215      	str	r2, [sp, #84]	; 0x54
 8001b12:	f827 0c0e 	strh.w	r0, [r7, #-14]
 8001b16:	9013      	str	r0, [sp, #76]	; 0x4c
 8001b18:	9012      	str	r0, [sp, #72]	; 0x48
 8001b1a:	9011      	str	r0, [sp, #68]	; 0x44
 8001b1c:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001b1e:	6800      	ldr	r0, [r0, #0]
 8001b20:	f248 0200 	movw	r2, #32768	; 0x8000
 8001b24:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001b28:	4290      	cmp	r0, r2
 8001b2a:	9110      	str	r1, [sp, #64]	; 0x40
 8001b2c:	d101      	bne.n	8001b32 <UART_SetConfig+0x32>
 8001b2e:	e7ff      	b.n	8001b30 <UART_SetConfig+0x30>
 8001b30:	e000      	b.n	8001b34 <UART_SetConfig+0x34>
 8001b32:	e7ff      	b.n	8001b34 <UART_SetConfig+0x34>
 8001b34:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001b36:	6881      	ldr	r1, [r0, #8]
 8001b38:	6902      	ldr	r2, [r0, #16]
 8001b3a:	6943      	ldr	r3, [r0, #20]
 8001b3c:	69c0      	ldr	r0, [r0, #28]
 8001b3e:	4311      	orrs	r1, r2
 8001b40:	4319      	orrs	r1, r3
 8001b42:	4308      	orrs	r0, r1
 8001b44:	9016      	str	r0, [sp, #88]	; 0x58
 8001b46:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001b48:	6800      	ldr	r0, [r0, #0]
 8001b4a:	6800      	ldr	r0, [r0, #0]
 8001b4c:	f646 11f3 	movw	r1, #27123	; 0x69f3
 8001b50:	f6ce 71ff 	movt	r1, #61439	; 0xefff
 8001b54:	4008      	ands	r0, r1
 8001b56:	9916      	ldr	r1, [sp, #88]	; 0x58
 8001b58:	4308      	orrs	r0, r1
 8001b5a:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001b5c:	6809      	ldr	r1, [r1, #0]
 8001b5e:	6008      	str	r0, [r1, #0]
 8001b60:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001b62:	6800      	ldr	r0, [r0, #0]
 8001b64:	6840      	ldr	r0, [r0, #4]
 8001b66:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001b6a:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001b6c:	680a      	ldr	r2, [r1, #0]
 8001b6e:	68c9      	ldr	r1, [r1, #12]
 8001b70:	4308      	orrs	r0, r1
 8001b72:	6050      	str	r0, [r2, #4]
 8001b74:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001b76:	6980      	ldr	r0, [r0, #24]
 8001b78:	9016      	str	r0, [sp, #88]	; 0x58
 8001b7a:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001b7c:	6800      	ldr	r0, [r0, #0]
 8001b7e:	f248 0100 	movw	r1, #32768	; 0x8000
 8001b82:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001b86:	4288      	cmp	r0, r1
 8001b88:	d006      	beq.n	8001b98 <UART_SetConfig+0x98>
 8001b8a:	e7ff      	b.n	8001b8c <UART_SetConfig+0x8c>
 8001b8c:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001b8e:	6a00      	ldr	r0, [r0, #32]
 8001b90:	9916      	ldr	r1, [sp, #88]	; 0x58
 8001b92:	4308      	orrs	r0, r1
 8001b94:	9016      	str	r0, [sp, #88]	; 0x58
 8001b96:	e7ff      	b.n	8001b98 <UART_SetConfig+0x98>
 8001b98:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001b9a:	6800      	ldr	r0, [r0, #0]
 8001b9c:	6880      	ldr	r0, [r0, #8]
 8001b9e:	f420 6030 	bic.w	r0, r0, #2816	; 0xb00
 8001ba2:	9916      	ldr	r1, [sp, #88]	; 0x58
 8001ba4:	4308      	orrs	r0, r1
 8001ba6:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001ba8:	6809      	ldr	r1, [r1, #0]
 8001baa:	6088      	str	r0, [r1, #8]
 8001bac:	e7ff      	b.n	8001bae <UART_SetConfig+0xae>
 8001bae:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001bb0:	6800      	ldr	r0, [r0, #0]
 8001bb2:	f643 0100 	movw	r1, #14336	; 0x3800
 8001bb6:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001bba:	4288      	cmp	r0, r1
 8001bbc:	d120      	bne.n	8001c00 <UART_SetConfig+0x100>
 8001bbe:	e7ff      	b.n	8001bc0 <UART_SetConfig+0xc0>
 8001bc0:	f241 0088 	movw	r0, #4232	; 0x1088
 8001bc4:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001bc8:	6800      	ldr	r0, [r0, #0]
 8001bca:	f000 0003 	and.w	r0, r0, #3
 8001bce:	4601      	mov	r1, r0
 8001bd0:	2803      	cmp	r0, #3
 8001bd2:	910f      	str	r1, [sp, #60]	; 0x3c
 8001bd4:	d810      	bhi.n	8001bf8 <UART_SetConfig+0xf8>
 8001bd6:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8001bd8:	e8df f001 	tbb	[pc, r1]
 8001bdc:	0b050802 	.word	0x0b050802
 8001be0:	2001      	movs	r0, #1
 8001be2:	9015      	str	r0, [sp, #84]	; 0x54
 8001be4:	e00b      	b.n	8001bfe <UART_SetConfig+0xfe>
 8001be6:	2002      	movs	r0, #2
 8001be8:	9015      	str	r0, [sp, #84]	; 0x54
 8001bea:	e008      	b.n	8001bfe <UART_SetConfig+0xfe>
 8001bec:	2004      	movs	r0, #4
 8001bee:	9015      	str	r0, [sp, #84]	; 0x54
 8001bf0:	e005      	b.n	8001bfe <UART_SetConfig+0xfe>
 8001bf2:	2008      	movs	r0, #8
 8001bf4:	9015      	str	r0, [sp, #84]	; 0x54
 8001bf6:	e002      	b.n	8001bfe <UART_SetConfig+0xfe>
 8001bf8:	2010      	movs	r0, #16
 8001bfa:	9015      	str	r0, [sp, #84]	; 0x54
 8001bfc:	e7ff      	b.n	8001bfe <UART_SetConfig+0xfe>
 8001bfe:	e0fc      	b.n	8001dfa <UART_SetConfig+0x2fa>
 8001c00:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001c02:	6800      	ldr	r0, [r0, #0]
 8001c04:	f244 4100 	movw	r1, #17408	; 0x4400
 8001c08:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001c0c:	4288      	cmp	r0, r1
 8001c0e:	d125      	bne.n	8001c5c <UART_SetConfig+0x15c>
 8001c10:	e7ff      	b.n	8001c12 <UART_SetConfig+0x112>
 8001c12:	f241 0088 	movw	r0, #4232	; 0x1088
 8001c16:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001c1a:	6800      	ldr	r0, [r0, #0]
 8001c1c:	f000 000c 	and.w	r0, r0, #12
 8001c20:	4601      	mov	r1, r0
 8001c22:	280c      	cmp	r0, #12
 8001c24:	910e      	str	r1, [sp, #56]	; 0x38
 8001c26:	d815      	bhi.n	8001c54 <UART_SetConfig+0x154>
 8001c28:	990e      	ldr	r1, [sp, #56]	; 0x38
 8001c2a:	e8df f001 	tbb	[pc, r1]
 8001c2e:	1307      	.short	0x1307
 8001c30:	130d1313 	.word	0x130d1313
 8001c34:	130a1313 	.word	0x130a1313
 8001c38:	00101313 	.word	0x00101313
 8001c3c:	2000      	movs	r0, #0
 8001c3e:	9015      	str	r0, [sp, #84]	; 0x54
 8001c40:	e00b      	b.n	8001c5a <UART_SetConfig+0x15a>
 8001c42:	2002      	movs	r0, #2
 8001c44:	9015      	str	r0, [sp, #84]	; 0x54
 8001c46:	e008      	b.n	8001c5a <UART_SetConfig+0x15a>
 8001c48:	2004      	movs	r0, #4
 8001c4a:	9015      	str	r0, [sp, #84]	; 0x54
 8001c4c:	e005      	b.n	8001c5a <UART_SetConfig+0x15a>
 8001c4e:	2008      	movs	r0, #8
 8001c50:	9015      	str	r0, [sp, #84]	; 0x54
 8001c52:	e002      	b.n	8001c5a <UART_SetConfig+0x15a>
 8001c54:	2010      	movs	r0, #16
 8001c56:	9015      	str	r0, [sp, #84]	; 0x54
 8001c58:	e7ff      	b.n	8001c5a <UART_SetConfig+0x15a>
 8001c5a:	e0cd      	b.n	8001df8 <UART_SetConfig+0x2f8>
 8001c5c:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001c5e:	6800      	ldr	r0, [r0, #0]
 8001c60:	f644 0100 	movw	r1, #18432	; 0x4800
 8001c64:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001c68:	4288      	cmp	r0, r1
 8001c6a:	d128      	bne.n	8001cbe <UART_SetConfig+0x1be>
 8001c6c:	e7ff      	b.n	8001c6e <UART_SetConfig+0x16e>
 8001c6e:	f241 0088 	movw	r0, #4232	; 0x1088
 8001c72:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001c76:	6800      	ldr	r0, [r0, #0]
 8001c78:	f000 0030 	and.w	r0, r0, #48	; 0x30
 8001c7c:	4601      	mov	r1, r0
 8001c7e:	2800      	cmp	r0, #0
 8001c80:	910d      	str	r1, [sp, #52]	; 0x34
 8001c82:	d00c      	beq.n	8001c9e <UART_SetConfig+0x19e>
 8001c84:	e7ff      	b.n	8001c86 <UART_SetConfig+0x186>
 8001c86:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001c88:	2810      	cmp	r0, #16
 8001c8a:	d00e      	beq.n	8001caa <UART_SetConfig+0x1aa>
 8001c8c:	e7ff      	b.n	8001c8e <UART_SetConfig+0x18e>
 8001c8e:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001c90:	2820      	cmp	r0, #32
 8001c92:	d007      	beq.n	8001ca4 <UART_SetConfig+0x1a4>
 8001c94:	e7ff      	b.n	8001c96 <UART_SetConfig+0x196>
 8001c96:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001c98:	2830      	cmp	r0, #48	; 0x30
 8001c9a:	d009      	beq.n	8001cb0 <UART_SetConfig+0x1b0>
 8001c9c:	e00b      	b.n	8001cb6 <UART_SetConfig+0x1b6>
 8001c9e:	2000      	movs	r0, #0
 8001ca0:	9015      	str	r0, [sp, #84]	; 0x54
 8001ca2:	e00b      	b.n	8001cbc <UART_SetConfig+0x1bc>
 8001ca4:	2002      	movs	r0, #2
 8001ca6:	9015      	str	r0, [sp, #84]	; 0x54
 8001ca8:	e008      	b.n	8001cbc <UART_SetConfig+0x1bc>
 8001caa:	2004      	movs	r0, #4
 8001cac:	9015      	str	r0, [sp, #84]	; 0x54
 8001cae:	e005      	b.n	8001cbc <UART_SetConfig+0x1bc>
 8001cb0:	2008      	movs	r0, #8
 8001cb2:	9015      	str	r0, [sp, #84]	; 0x54
 8001cb4:	e002      	b.n	8001cbc <UART_SetConfig+0x1bc>
 8001cb6:	2010      	movs	r0, #16
 8001cb8:	9015      	str	r0, [sp, #84]	; 0x54
 8001cba:	e7ff      	b.n	8001cbc <UART_SetConfig+0x1bc>
 8001cbc:	e09b      	b.n	8001df6 <UART_SetConfig+0x2f6>
 8001cbe:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001cc0:	6800      	ldr	r0, [r0, #0]
 8001cc2:	f644 4100 	movw	r1, #19456	; 0x4c00
 8001cc6:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001cca:	4288      	cmp	r0, r1
 8001ccc:	d128      	bne.n	8001d20 <UART_SetConfig+0x220>
 8001cce:	e7ff      	b.n	8001cd0 <UART_SetConfig+0x1d0>
 8001cd0:	f241 0088 	movw	r0, #4232	; 0x1088
 8001cd4:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001cd8:	6800      	ldr	r0, [r0, #0]
 8001cda:	f000 00c0 	and.w	r0, r0, #192	; 0xc0
 8001cde:	4601      	mov	r1, r0
 8001ce0:	2800      	cmp	r0, #0
 8001ce2:	910c      	str	r1, [sp, #48]	; 0x30
 8001ce4:	d00c      	beq.n	8001d00 <UART_SetConfig+0x200>
 8001ce6:	e7ff      	b.n	8001ce8 <UART_SetConfig+0x1e8>
 8001ce8:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001cea:	2840      	cmp	r0, #64	; 0x40
 8001cec:	d00e      	beq.n	8001d0c <UART_SetConfig+0x20c>
 8001cee:	e7ff      	b.n	8001cf0 <UART_SetConfig+0x1f0>
 8001cf0:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001cf2:	2880      	cmp	r0, #128	; 0x80
 8001cf4:	d007      	beq.n	8001d06 <UART_SetConfig+0x206>
 8001cf6:	e7ff      	b.n	8001cf8 <UART_SetConfig+0x1f8>
 8001cf8:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001cfa:	28c0      	cmp	r0, #192	; 0xc0
 8001cfc:	d009      	beq.n	8001d12 <UART_SetConfig+0x212>
 8001cfe:	e00b      	b.n	8001d18 <UART_SetConfig+0x218>
 8001d00:	2000      	movs	r0, #0
 8001d02:	9015      	str	r0, [sp, #84]	; 0x54
 8001d04:	e00b      	b.n	8001d1e <UART_SetConfig+0x21e>
 8001d06:	2002      	movs	r0, #2
 8001d08:	9015      	str	r0, [sp, #84]	; 0x54
 8001d0a:	e008      	b.n	8001d1e <UART_SetConfig+0x21e>
 8001d0c:	2004      	movs	r0, #4
 8001d0e:	9015      	str	r0, [sp, #84]	; 0x54
 8001d10:	e005      	b.n	8001d1e <UART_SetConfig+0x21e>
 8001d12:	2008      	movs	r0, #8
 8001d14:	9015      	str	r0, [sp, #84]	; 0x54
 8001d16:	e002      	b.n	8001d1e <UART_SetConfig+0x21e>
 8001d18:	2010      	movs	r0, #16
 8001d1a:	9015      	str	r0, [sp, #84]	; 0x54
 8001d1c:	e7ff      	b.n	8001d1e <UART_SetConfig+0x21e>
 8001d1e:	e069      	b.n	8001df4 <UART_SetConfig+0x2f4>
 8001d20:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001d22:	6800      	ldr	r0, [r0, #0]
 8001d24:	f245 0100 	movw	r1, #20480	; 0x5000
 8001d28:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001d2c:	4288      	cmp	r0, r1
 8001d2e:	d12b      	bne.n	8001d88 <UART_SetConfig+0x288>
 8001d30:	e7ff      	b.n	8001d32 <UART_SetConfig+0x232>
 8001d32:	f241 0088 	movw	r0, #4232	; 0x1088
 8001d36:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001d3a:	6800      	ldr	r0, [r0, #0]
 8001d3c:	f400 7040 	and.w	r0, r0, #768	; 0x300
 8001d40:	4601      	mov	r1, r0
 8001d42:	2800      	cmp	r0, #0
 8001d44:	910b      	str	r1, [sp, #44]	; 0x2c
 8001d46:	d00f      	beq.n	8001d68 <UART_SetConfig+0x268>
 8001d48:	e7ff      	b.n	8001d4a <UART_SetConfig+0x24a>
 8001d4a:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001d4c:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8001d50:	d010      	beq.n	8001d74 <UART_SetConfig+0x274>
 8001d52:	e7ff      	b.n	8001d54 <UART_SetConfig+0x254>
 8001d54:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001d56:	f5b0 7f00 	cmp.w	r0, #512	; 0x200
 8001d5a:	d008      	beq.n	8001d6e <UART_SetConfig+0x26e>
 8001d5c:	e7ff      	b.n	8001d5e <UART_SetConfig+0x25e>
 8001d5e:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001d60:	f5b0 7f40 	cmp.w	r0, #768	; 0x300
 8001d64:	d009      	beq.n	8001d7a <UART_SetConfig+0x27a>
 8001d66:	e00b      	b.n	8001d80 <UART_SetConfig+0x280>
 8001d68:	2000      	movs	r0, #0
 8001d6a:	9015      	str	r0, [sp, #84]	; 0x54
 8001d6c:	e00b      	b.n	8001d86 <UART_SetConfig+0x286>
 8001d6e:	2002      	movs	r0, #2
 8001d70:	9015      	str	r0, [sp, #84]	; 0x54
 8001d72:	e008      	b.n	8001d86 <UART_SetConfig+0x286>
 8001d74:	2004      	movs	r0, #4
 8001d76:	9015      	str	r0, [sp, #84]	; 0x54
 8001d78:	e005      	b.n	8001d86 <UART_SetConfig+0x286>
 8001d7a:	2008      	movs	r0, #8
 8001d7c:	9015      	str	r0, [sp, #84]	; 0x54
 8001d7e:	e002      	b.n	8001d86 <UART_SetConfig+0x286>
 8001d80:	2010      	movs	r0, #16
 8001d82:	9015      	str	r0, [sp, #84]	; 0x54
 8001d84:	e7ff      	b.n	8001d86 <UART_SetConfig+0x286>
 8001d86:	e034      	b.n	8001df2 <UART_SetConfig+0x2f2>
 8001d88:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001d8a:	6800      	ldr	r0, [r0, #0]
 8001d8c:	f248 0100 	movw	r1, #32768	; 0x8000
 8001d90:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001d94:	4288      	cmp	r0, r1
 8001d96:	d12b      	bne.n	8001df0 <UART_SetConfig+0x2f0>
 8001d98:	e7ff      	b.n	8001d9a <UART_SetConfig+0x29a>
 8001d9a:	f241 0088 	movw	r0, #4232	; 0x1088
 8001d9e:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001da2:	6800      	ldr	r0, [r0, #0]
 8001da4:	f400 6040 	and.w	r0, r0, #3072	; 0xc00
 8001da8:	4601      	mov	r1, r0
 8001daa:	2800      	cmp	r0, #0
 8001dac:	910a      	str	r1, [sp, #40]	; 0x28
 8001dae:	d00f      	beq.n	8001dd0 <UART_SetConfig+0x2d0>
 8001db0:	e7ff      	b.n	8001db2 <UART_SetConfig+0x2b2>
 8001db2:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001db4:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
 8001db8:	d010      	beq.n	8001ddc <UART_SetConfig+0x2dc>
 8001dba:	e7ff      	b.n	8001dbc <UART_SetConfig+0x2bc>
 8001dbc:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001dbe:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
 8001dc2:	d008      	beq.n	8001dd6 <UART_SetConfig+0x2d6>
 8001dc4:	e7ff      	b.n	8001dc6 <UART_SetConfig+0x2c6>
 8001dc6:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001dc8:	f5b0 6f40 	cmp.w	r0, #3072	; 0xc00
 8001dcc:	d009      	beq.n	8001de2 <UART_SetConfig+0x2e2>
 8001dce:	e00b      	b.n	8001de8 <UART_SetConfig+0x2e8>
 8001dd0:	2000      	movs	r0, #0
 8001dd2:	9015      	str	r0, [sp, #84]	; 0x54
 8001dd4:	e00b      	b.n	8001dee <UART_SetConfig+0x2ee>
 8001dd6:	2002      	movs	r0, #2
 8001dd8:	9015      	str	r0, [sp, #84]	; 0x54
 8001dda:	e008      	b.n	8001dee <UART_SetConfig+0x2ee>
 8001ddc:	2004      	movs	r0, #4
 8001dde:	9015      	str	r0, [sp, #84]	; 0x54
 8001de0:	e005      	b.n	8001dee <UART_SetConfig+0x2ee>
 8001de2:	2008      	movs	r0, #8
 8001de4:	9015      	str	r0, [sp, #84]	; 0x54
 8001de6:	e002      	b.n	8001dee <UART_SetConfig+0x2ee>
 8001de8:	2010      	movs	r0, #16
 8001dea:	9015      	str	r0, [sp, #84]	; 0x54
 8001dec:	e7ff      	b.n	8001dee <UART_SetConfig+0x2ee>
 8001dee:	e7ff      	b.n	8001df0 <UART_SetConfig+0x2f0>
 8001df0:	e7ff      	b.n	8001df2 <UART_SetConfig+0x2f2>
 8001df2:	e7ff      	b.n	8001df4 <UART_SetConfig+0x2f4>
 8001df4:	e7ff      	b.n	8001df6 <UART_SetConfig+0x2f6>
 8001df6:	e7ff      	b.n	8001df8 <UART_SetConfig+0x2f8>
 8001df8:	e7ff      	b.n	8001dfa <UART_SetConfig+0x2fa>
 8001dfa:	e7ff      	b.n	8001dfc <UART_SetConfig+0x2fc>
 8001dfc:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001dfe:	6800      	ldr	r0, [r0, #0]
 8001e00:	f248 0100 	movw	r1, #32768	; 0x8000
 8001e04:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001e08:	4288      	cmp	r0, r1
 8001e0a:	f040 80bb 	bne.w	8001f84 <UART_SetConfig+0x484>
 8001e0e:	e7ff      	b.n	8001e10 <UART_SetConfig+0x310>
 8001e10:	9815      	ldr	r0, [sp, #84]	; 0x54
 8001e12:	2810      	cmp	r0, #16
 8001e14:	9009      	str	r0, [sp, #36]	; 0x24
 8001e16:	d81e      	bhi.n	8001e56 <UART_SetConfig+0x356>
 8001e18:	9909      	ldr	r1, [sp, #36]	; 0x24
 8001e1a:	e8df f001 	tbb	[pc, r1]
 8001e1e:	1c09      	.short	0x1c09
 8001e20:	1c131c0d 	.word	0x1c131c0d
 8001e24:	1c171c1c 	.word	0x1c171c1c
 8001e28:	1c1c1c1c 	.word	0x1c1c1c1c
 8001e2c:	001b1c1c 	.word	0x001b1c1c
 8001e30:	f7ff fc2a 	bl	8001688 <HAL_RCC_GetPCLK1Freq>
 8001e34:	9011      	str	r0, [sp, #68]	; 0x44
 8001e36:	e011      	b.n	8001e5c <UART_SetConfig+0x35c>
 8001e38:	f242 4000 	movw	r0, #9216	; 0x2400
 8001e3c:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001e40:	9011      	str	r0, [sp, #68]	; 0x44
 8001e42:	e00b      	b.n	8001e5c <UART_SetConfig+0x35c>
 8001e44:	f7ff fb53 	bl	80014ee <HAL_RCC_GetSysClockFreq>
 8001e48:	9011      	str	r0, [sp, #68]	; 0x44
 8001e4a:	e007      	b.n	8001e5c <UART_SetConfig+0x35c>
 8001e4c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001e50:	9011      	str	r0, [sp, #68]	; 0x44
 8001e52:	e003      	b.n	8001e5c <UART_SetConfig+0x35c>
 8001e54:	e7ff      	b.n	8001e56 <UART_SetConfig+0x356>
 8001e56:	2001      	movs	r0, #1
 8001e58:	9012      	str	r0, [sp, #72]	; 0x48
 8001e5a:	e7ff      	b.n	8001e5c <UART_SetConfig+0x35c>
 8001e5c:	9811      	ldr	r0, [sp, #68]	; 0x44
 8001e5e:	2800      	cmp	r0, #0
 8001e60:	f000 808f 	beq.w	8001f82 <UART_SetConfig+0x482>
 8001e64:	e7ff      	b.n	8001e66 <UART_SetConfig+0x366>
 8001e66:	9811      	ldr	r0, [sp, #68]	; 0x44
 8001e68:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001e6a:	6849      	ldr	r1, [r1, #4]
 8001e6c:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 8001e70:	4288      	cmp	r0, r1
 8001e72:	d307      	bcc.n	8001e84 <UART_SetConfig+0x384>
 8001e74:	e7ff      	b.n	8001e76 <UART_SetConfig+0x376>
 8001e76:	9811      	ldr	r0, [sp, #68]	; 0x44
 8001e78:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001e7a:	6849      	ldr	r1, [r1, #4]
 8001e7c:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
 8001e80:	d903      	bls.n	8001e8a <UART_SetConfig+0x38a>
 8001e82:	e7ff      	b.n	8001e84 <UART_SetConfig+0x384>
 8001e84:	2001      	movs	r0, #1
 8001e86:	9012      	str	r0, [sp, #72]	; 0x48
 8001e88:	e07a      	b.n	8001f80 <UART_SetConfig+0x480>
 8001e8a:	9815      	ldr	r0, [sp, #84]	; 0x54
 8001e8c:	2810      	cmp	r0, #16
 8001e8e:	9008      	str	r0, [sp, #32]
 8001e90:	d85f      	bhi.n	8001f52 <UART_SetConfig+0x452>
 8001e92:	9908      	ldr	r1, [sp, #32]
 8001e94:	e8df f001 	tbb	[pc, r1]
 8001e98:	5d1d5d09 	.word	0x5d1d5d09
 8001e9c:	5d5d5d33 	.word	0x5d5d5d33
 8001ea0:	5d5d5d47 	.word	0x5d5d5d47
 8001ea4:	5d5d5d5d 	.word	0x5d5d5d5d
 8001ea8:	005c      	.short	0x005c
 8001eaa:	f7ff fbed 	bl	8001688 <HAL_RCC_GetPCLK1Freq>
 8001eae:	ea4f 6e10 	mov.w	lr, r0, lsr #24
 8001eb2:	0200      	lsls	r0, r0, #8
 8001eb4:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001eb6:	6849      	ldr	r1, [r1, #4]
 8001eb8:	eb10 0051 	adds.w	r0, r0, r1, lsr #1
 8001ebc:	f14e 0e00 	adc.w	lr, lr, #0
 8001ec0:	f04f 0300 	mov.w	r3, #0
 8001ec4:	9107      	str	r1, [sp, #28]
 8001ec6:	4671      	mov	r1, lr
 8001ec8:	9a07      	ldr	r2, [sp, #28]
 8001eca:	f7fe f999 	bl	8000200 <__aeabi_uldivmod>
 8001ece:	9013      	str	r0, [sp, #76]	; 0x4c
 8001ed0:	e042      	b.n	8001f58 <UART_SetConfig+0x458>
 8001ed2:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001ed4:	6840      	ldr	r0, [r0, #4]
 8001ed6:	2100      	movs	r1, #0
 8001ed8:	f2cf 4124 	movt	r1, #62500	; 0xf424
 8001edc:	eb11 0150 	adds.w	r1, r1, r0, lsr #1
 8001ee0:	f04f 0200 	mov.w	r2, #0
 8001ee4:	f142 0300 	adc.w	r3, r2, #0
 8001ee8:	9006      	str	r0, [sp, #24]
 8001eea:	4608      	mov	r0, r1
 8001eec:	4619      	mov	r1, r3
 8001eee:	9b06      	ldr	r3, [sp, #24]
 8001ef0:	9205      	str	r2, [sp, #20]
 8001ef2:	461a      	mov	r2, r3
 8001ef4:	9b05      	ldr	r3, [sp, #20]
 8001ef6:	f7fe f983 	bl	8000200 <__aeabi_uldivmod>
 8001efa:	9013      	str	r0, [sp, #76]	; 0x4c
 8001efc:	e02c      	b.n	8001f58 <UART_SetConfig+0x458>
 8001efe:	f7ff faf6 	bl	80014ee <HAL_RCC_GetSysClockFreq>
 8001f02:	ea4f 6e10 	mov.w	lr, r0, lsr #24
 8001f06:	0200      	lsls	r0, r0, #8
 8001f08:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001f0a:	6849      	ldr	r1, [r1, #4]
 8001f0c:	eb10 0051 	adds.w	r0, r0, r1, lsr #1
 8001f10:	f14e 0e00 	adc.w	lr, lr, #0
 8001f14:	f04f 0300 	mov.w	r3, #0
 8001f18:	9104      	str	r1, [sp, #16]
 8001f1a:	4671      	mov	r1, lr
 8001f1c:	9a04      	ldr	r2, [sp, #16]
 8001f1e:	f7fe f96f 	bl	8000200 <__aeabi_uldivmod>
 8001f22:	9013      	str	r0, [sp, #76]	; 0x4c
 8001f24:	e018      	b.n	8001f58 <UART_SetConfig+0x458>
 8001f26:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001f28:	6840      	ldr	r0, [r0, #4]
 8001f2a:	f44f 0100 	mov.w	r1, #8388608	; 0x800000
 8001f2e:	eb11 0150 	adds.w	r1, r1, r0, lsr #1
 8001f32:	f04f 0200 	mov.w	r2, #0
 8001f36:	f142 0300 	adc.w	r3, r2, #0
 8001f3a:	9003      	str	r0, [sp, #12]
 8001f3c:	4608      	mov	r0, r1
 8001f3e:	4619      	mov	r1, r3
 8001f40:	9b03      	ldr	r3, [sp, #12]
 8001f42:	9202      	str	r2, [sp, #8]
 8001f44:	461a      	mov	r2, r3
 8001f46:	9b02      	ldr	r3, [sp, #8]
 8001f48:	f7fe f95a 	bl	8000200 <__aeabi_uldivmod>
 8001f4c:	9013      	str	r0, [sp, #76]	; 0x4c
 8001f4e:	e003      	b.n	8001f58 <UART_SetConfig+0x458>
 8001f50:	e7ff      	b.n	8001f52 <UART_SetConfig+0x452>
 8001f52:	2001      	movs	r0, #1
 8001f54:	9012      	str	r0, [sp, #72]	; 0x48
 8001f56:	e7ff      	b.n	8001f58 <UART_SetConfig+0x458>
 8001f58:	9813      	ldr	r0, [sp, #76]	; 0x4c
 8001f5a:	f5b0 7f40 	cmp.w	r0, #768	; 0x300
 8001f5e:	d30b      	bcc.n	8001f78 <UART_SetConfig+0x478>
 8001f60:	e7ff      	b.n	8001f62 <UART_SetConfig+0x462>
 8001f62:	9813      	ldr	r0, [sp, #76]	; 0x4c
 8001f64:	2100      	movs	r1, #0
 8001f66:	ebb1 5f10 	cmp.w	r1, r0, lsr #20
 8001f6a:	d105      	bne.n	8001f78 <UART_SetConfig+0x478>
 8001f6c:	e7ff      	b.n	8001f6e <UART_SetConfig+0x46e>
 8001f6e:	9813      	ldr	r0, [sp, #76]	; 0x4c
 8001f70:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001f72:	6809      	ldr	r1, [r1, #0]
 8001f74:	60c8      	str	r0, [r1, #12]
 8001f76:	e002      	b.n	8001f7e <UART_SetConfig+0x47e>
 8001f78:	2001      	movs	r0, #1
 8001f7a:	9012      	str	r0, [sp, #72]	; 0x48
 8001f7c:	e7ff      	b.n	8001f7e <UART_SetConfig+0x47e>
 8001f7e:	e7ff      	b.n	8001f80 <UART_SetConfig+0x480>
 8001f80:	e7ff      	b.n	8001f82 <UART_SetConfig+0x482>
 8001f82:	e0e4      	b.n	800214e <UART_SetConfig+0x64e>
 8001f84:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001f86:	69c0      	ldr	r0, [r0, #28]
 8001f88:	f5b0 4f00 	cmp.w	r0, #32768	; 0x8000
 8001f8c:	f040 8079 	bne.w	8002082 <UART_SetConfig+0x582>
 8001f90:	e7ff      	b.n	8001f92 <UART_SetConfig+0x492>
 8001f92:	9815      	ldr	r0, [sp, #84]	; 0x54
 8001f94:	2810      	cmp	r0, #16
 8001f96:	9001      	str	r0, [sp, #4]
 8001f98:	d84e      	bhi.n	8002038 <UART_SetConfig+0x538>
 8001f9a:	9901      	ldr	r1, [sp, #4]
 8001f9c:	e8df f001 	tbb	[pc, r1]
 8001fa0:	4c251709 	.word	0x4c251709
 8001fa4:	4c4c4c32 	.word	0x4c4c4c32
 8001fa8:	4c4c4c40 	.word	0x4c4c4c40
 8001fac:	4c4c4c4c 	.word	0x4c4c4c4c
 8001fb0:	004b      	.short	0x004b
 8001fb2:	f7ff fb69 	bl	8001688 <HAL_RCC_GetPCLK1Freq>
 8001fb6:	0040      	lsls	r0, r0, #1
 8001fb8:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 8001fbc:	f8de e004 	ldr.w	lr, [lr, #4]
 8001fc0:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 8001fc4:	fbb0 f0fe 	udiv	r0, r0, lr
 8001fc8:	b280      	uxth	r0, r0
 8001fca:	9013      	str	r0, [sp, #76]	; 0x4c
 8001fcc:	e037      	b.n	800203e <UART_SetConfig+0x53e>
 8001fce:	f7ff fb71 	bl	80016b4 <HAL_RCC_GetPCLK2Freq>
 8001fd2:	0040      	lsls	r0, r0, #1
 8001fd4:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 8001fd8:	f8de e004 	ldr.w	lr, [lr, #4]
 8001fdc:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 8001fe0:	fbb0 f0fe 	udiv	r0, r0, lr
 8001fe4:	b280      	uxth	r0, r0
 8001fe6:	9013      	str	r0, [sp, #76]	; 0x4c
 8001fe8:	e029      	b.n	800203e <UART_SetConfig+0x53e>
 8001fea:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001fec:	6840      	ldr	r0, [r0, #4]
 8001fee:	f644 0100 	movw	r1, #18432	; 0x4800
 8001ff2:	f2c0 11e8 	movt	r1, #488	; 0x1e8
 8001ff6:	eb01 0150 	add.w	r1, r1, r0, lsr #1
 8001ffa:	fbb1 f0f0 	udiv	r0, r1, r0
 8001ffe:	b280      	uxth	r0, r0
 8002000:	9013      	str	r0, [sp, #76]	; 0x4c
 8002002:	e01c      	b.n	800203e <UART_SetConfig+0x53e>
 8002004:	f7ff fa73 	bl	80014ee <HAL_RCC_GetSysClockFreq>
 8002008:	0040      	lsls	r0, r0, #1
 800200a:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 800200e:	f8de e004 	ldr.w	lr, [lr, #4]
 8002012:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 8002016:	fbb0 f0fe 	udiv	r0, r0, lr
 800201a:	b280      	uxth	r0, r0
 800201c:	9013      	str	r0, [sp, #76]	; 0x4c
 800201e:	e00e      	b.n	800203e <UART_SetConfig+0x53e>
 8002020:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002022:	6840      	ldr	r0, [r0, #4]
 8002024:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8002028:	eb01 0150 	add.w	r1, r1, r0, lsr #1
 800202c:	fbb1 f0f0 	udiv	r0, r1, r0
 8002030:	b280      	uxth	r0, r0
 8002032:	9013      	str	r0, [sp, #76]	; 0x4c
 8002034:	e003      	b.n	800203e <UART_SetConfig+0x53e>
 8002036:	e7ff      	b.n	8002038 <UART_SetConfig+0x538>
 8002038:	2001      	movs	r0, #1
 800203a:	9012      	str	r0, [sp, #72]	; 0x48
 800203c:	e7ff      	b.n	800203e <UART_SetConfig+0x53e>
 800203e:	9813      	ldr	r0, [sp, #76]	; 0x4c
 8002040:	2810      	cmp	r0, #16
 8002042:	d31a      	bcc.n	800207a <UART_SetConfig+0x57a>
 8002044:	e7ff      	b.n	8002046 <UART_SetConfig+0x546>
 8002046:	f8bd 004e 	ldrh.w	r0, [sp, #78]	; 0x4e
 800204a:	2800      	cmp	r0, #0
 800204c:	d115      	bne.n	800207a <UART_SetConfig+0x57a>
 800204e:	e7ff      	b.n	8002050 <UART_SetConfig+0x550>
 8002050:	9813      	ldr	r0, [sp, #76]	; 0x4c
 8002052:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8002056:	4008      	ands	r0, r1
 8002058:	f827 0c0e 	strh.w	r0, [r7, #-14]
 800205c:	9813      	ldr	r0, [sp, #76]	; 0x4c
 800205e:	f000 000e 	and.w	r0, r0, #14
 8002062:	f837 1c0e 	ldrh.w	r1, [r7, #-14]
 8002066:	ea41 0050 	orr.w	r0, r1, r0, lsr #1
 800206a:	f827 0c0e 	strh.w	r0, [r7, #-14]
 800206e:	f837 0c0e 	ldrh.w	r0, [r7, #-14]
 8002072:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8002074:	6809      	ldr	r1, [r1, #0]
 8002076:	60c8      	str	r0, [r1, #12]
 8002078:	e002      	b.n	8002080 <UART_SetConfig+0x580>
 800207a:	2001      	movs	r0, #1
 800207c:	9012      	str	r0, [sp, #72]	; 0x48
 800207e:	e7ff      	b.n	8002080 <UART_SetConfig+0x580>
 8002080:	e064      	b.n	800214c <UART_SetConfig+0x64c>
 8002082:	9815      	ldr	r0, [sp, #84]	; 0x54
 8002084:	2810      	cmp	r0, #16
 8002086:	9000      	str	r0, [sp, #0]
 8002088:	d84b      	bhi.n	8002122 <UART_SetConfig+0x622>
 800208a:	9900      	ldr	r1, [sp, #0]
 800208c:	e8df f001 	tbb	[pc, r1]
 8002090:	49231609 	.word	0x49231609
 8002094:	49494930 	.word	0x49494930
 8002098:	4949493d 	.word	0x4949493d
 800209c:	49494949 	.word	0x49494949
 80020a0:	0048      	.short	0x0048
 80020a2:	f7ff faf1 	bl	8001688 <HAL_RCC_GetPCLK1Freq>
 80020a6:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 80020aa:	f8de e004 	ldr.w	lr, [lr, #4]
 80020ae:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 80020b2:	fbb0 f0fe 	udiv	r0, r0, lr
 80020b6:	b280      	uxth	r0, r0
 80020b8:	9013      	str	r0, [sp, #76]	; 0x4c
 80020ba:	e035      	b.n	8002128 <UART_SetConfig+0x628>
 80020bc:	f7ff fafa 	bl	80016b4 <HAL_RCC_GetPCLK2Freq>
 80020c0:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 80020c4:	f8de e004 	ldr.w	lr, [lr, #4]
 80020c8:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 80020cc:	fbb0 f0fe 	udiv	r0, r0, lr
 80020d0:	b280      	uxth	r0, r0
 80020d2:	9013      	str	r0, [sp, #76]	; 0x4c
 80020d4:	e028      	b.n	8002128 <UART_SetConfig+0x628>
 80020d6:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80020d8:	6840      	ldr	r0, [r0, #4]
 80020da:	f242 4100 	movw	r1, #9216	; 0x2400
 80020de:	f2c0 01f4 	movt	r1, #244	; 0xf4
 80020e2:	eb01 0150 	add.w	r1, r1, r0, lsr #1
 80020e6:	fbb1 f0f0 	udiv	r0, r1, r0
 80020ea:	b280      	uxth	r0, r0
 80020ec:	9013      	str	r0, [sp, #76]	; 0x4c
 80020ee:	e01b      	b.n	8002128 <UART_SetConfig+0x628>
 80020f0:	f7ff f9fd 	bl	80014ee <HAL_RCC_GetSysClockFreq>
 80020f4:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 80020f8:	f8de e004 	ldr.w	lr, [lr, #4]
 80020fc:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 8002100:	fbb0 f0fe 	udiv	r0, r0, lr
 8002104:	b280      	uxth	r0, r0
 8002106:	9013      	str	r0, [sp, #76]	; 0x4c
 8002108:	e00e      	b.n	8002128 <UART_SetConfig+0x628>
 800210a:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800210c:	6840      	ldr	r0, [r0, #4]
 800210e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002112:	eb01 0150 	add.w	r1, r1, r0, lsr #1
 8002116:	fbb1 f0f0 	udiv	r0, r1, r0
 800211a:	b280      	uxth	r0, r0
 800211c:	9013      	str	r0, [sp, #76]	; 0x4c
 800211e:	e003      	b.n	8002128 <UART_SetConfig+0x628>
 8002120:	e7ff      	b.n	8002122 <UART_SetConfig+0x622>
 8002122:	2001      	movs	r0, #1
 8002124:	9012      	str	r0, [sp, #72]	; 0x48
 8002126:	e7ff      	b.n	8002128 <UART_SetConfig+0x628>
 8002128:	9813      	ldr	r0, [sp, #76]	; 0x4c
 800212a:	2810      	cmp	r0, #16
 800212c:	d30a      	bcc.n	8002144 <UART_SetConfig+0x644>
 800212e:	e7ff      	b.n	8002130 <UART_SetConfig+0x630>
 8002130:	f8bd 004e 	ldrh.w	r0, [sp, #78]	; 0x4e
 8002134:	2800      	cmp	r0, #0
 8002136:	d105      	bne.n	8002144 <UART_SetConfig+0x644>
 8002138:	e7ff      	b.n	800213a <UART_SetConfig+0x63a>
 800213a:	9813      	ldr	r0, [sp, #76]	; 0x4c
 800213c:	9917      	ldr	r1, [sp, #92]	; 0x5c
 800213e:	6809      	ldr	r1, [r1, #0]
 8002140:	60c8      	str	r0, [r1, #12]
 8002142:	e002      	b.n	800214a <UART_SetConfig+0x64a>
 8002144:	2001      	movs	r0, #1
 8002146:	9012      	str	r0, [sp, #72]	; 0x48
 8002148:	e7ff      	b.n	800214a <UART_SetConfig+0x64a>
 800214a:	e7ff      	b.n	800214c <UART_SetConfig+0x64c>
 800214c:	e7ff      	b.n	800214e <UART_SetConfig+0x64e>
 800214e:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002150:	2100      	movs	r1, #0
 8002152:	6601      	str	r1, [r0, #96]	; 0x60
 8002154:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002156:	6641      	str	r1, [r0, #100]	; 0x64
 8002158:	9812      	ldr	r0, [sp, #72]	; 0x48
 800215a:	b018      	add	sp, #96	; 0x60
 800215c:	bd80      	pop	{r7, pc}

0800215e <UART_AdvFeatureConfig>:
 800215e:	b082      	sub	sp, #8
 8002160:	4601      	mov	r1, r0
 8002162:	9001      	str	r0, [sp, #4]
 8002164:	9801      	ldr	r0, [sp, #4]
 8002166:	6a40      	ldr	r0, [r0, #36]	; 0x24
 8002168:	07c0      	lsls	r0, r0, #31
 800216a:	2800      	cmp	r0, #0
 800216c:	9100      	str	r1, [sp, #0]
 800216e:	d00b      	beq.n	8002188 <UART_AdvFeatureConfig+0x2a>
 8002170:	e7ff      	b.n	8002172 <UART_AdvFeatureConfig+0x14>
 8002172:	9801      	ldr	r0, [sp, #4]
 8002174:	6800      	ldr	r0, [r0, #0]
 8002176:	6840      	ldr	r0, [r0, #4]
 8002178:	f420 3000 	bic.w	r0, r0, #131072	; 0x20000
 800217c:	9901      	ldr	r1, [sp, #4]
 800217e:	680a      	ldr	r2, [r1, #0]
 8002180:	6a89      	ldr	r1, [r1, #40]	; 0x28
 8002182:	4308      	orrs	r0, r1
 8002184:	6050      	str	r0, [r2, #4]
 8002186:	e7ff      	b.n	8002188 <UART_AdvFeatureConfig+0x2a>
 8002188:	9801      	ldr	r0, [sp, #4]
 800218a:	6a40      	ldr	r0, [r0, #36]	; 0x24
 800218c:	0780      	lsls	r0, r0, #30
 800218e:	2800      	cmp	r0, #0
 8002190:	d50b      	bpl.n	80021aa <UART_AdvFeatureConfig+0x4c>
 8002192:	e7ff      	b.n	8002194 <UART_AdvFeatureConfig+0x36>
 8002194:	9801      	ldr	r0, [sp, #4]
 8002196:	6800      	ldr	r0, [r0, #0]
 8002198:	6840      	ldr	r0, [r0, #4]
 800219a:	f420 3080 	bic.w	r0, r0, #65536	; 0x10000
 800219e:	9901      	ldr	r1, [sp, #4]
 80021a0:	680a      	ldr	r2, [r1, #0]
 80021a2:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 80021a4:	4308      	orrs	r0, r1
 80021a6:	6050      	str	r0, [r2, #4]
 80021a8:	e7ff      	b.n	80021aa <UART_AdvFeatureConfig+0x4c>
 80021aa:	9801      	ldr	r0, [sp, #4]
 80021ac:	6a40      	ldr	r0, [r0, #36]	; 0x24
 80021ae:	0740      	lsls	r0, r0, #29
 80021b0:	2800      	cmp	r0, #0
 80021b2:	d50b      	bpl.n	80021cc <UART_AdvFeatureConfig+0x6e>
 80021b4:	e7ff      	b.n	80021b6 <UART_AdvFeatureConfig+0x58>
 80021b6:	9801      	ldr	r0, [sp, #4]
 80021b8:	6800      	ldr	r0, [r0, #0]
 80021ba:	6840      	ldr	r0, [r0, #4]
 80021bc:	f420 2080 	bic.w	r0, r0, #262144	; 0x40000
 80021c0:	9901      	ldr	r1, [sp, #4]
 80021c2:	680a      	ldr	r2, [r1, #0]
 80021c4:	6b09      	ldr	r1, [r1, #48]	; 0x30
 80021c6:	4308      	orrs	r0, r1
 80021c8:	6050      	str	r0, [r2, #4]
 80021ca:	e7ff      	b.n	80021cc <UART_AdvFeatureConfig+0x6e>
 80021cc:	9801      	ldr	r0, [sp, #4]
 80021ce:	6a40      	ldr	r0, [r0, #36]	; 0x24
 80021d0:	0700      	lsls	r0, r0, #28
 80021d2:	2800      	cmp	r0, #0
 80021d4:	d50b      	bpl.n	80021ee <UART_AdvFeatureConfig+0x90>
 80021d6:	e7ff      	b.n	80021d8 <UART_AdvFeatureConfig+0x7a>
 80021d8:	9801      	ldr	r0, [sp, #4]
 80021da:	6800      	ldr	r0, [r0, #0]
 80021dc:	6840      	ldr	r0, [r0, #4]
 80021de:	f420 4000 	bic.w	r0, r0, #32768	; 0x8000
 80021e2:	9901      	ldr	r1, [sp, #4]
 80021e4:	680a      	ldr	r2, [r1, #0]
 80021e6:	6b49      	ldr	r1, [r1, #52]	; 0x34
 80021e8:	4308      	orrs	r0, r1
 80021ea:	6050      	str	r0, [r2, #4]
 80021ec:	e7ff      	b.n	80021ee <UART_AdvFeatureConfig+0x90>
 80021ee:	9801      	ldr	r0, [sp, #4]
 80021f0:	6a40      	ldr	r0, [r0, #36]	; 0x24
 80021f2:	06c0      	lsls	r0, r0, #27
 80021f4:	2800      	cmp	r0, #0
 80021f6:	d50b      	bpl.n	8002210 <UART_AdvFeatureConfig+0xb2>
 80021f8:	e7ff      	b.n	80021fa <UART_AdvFeatureConfig+0x9c>
 80021fa:	9801      	ldr	r0, [sp, #4]
 80021fc:	6800      	ldr	r0, [r0, #0]
 80021fe:	6880      	ldr	r0, [r0, #8]
 8002200:	f420 5080 	bic.w	r0, r0, #4096	; 0x1000
 8002204:	9901      	ldr	r1, [sp, #4]
 8002206:	680a      	ldr	r2, [r1, #0]
 8002208:	6b89      	ldr	r1, [r1, #56]	; 0x38
 800220a:	4308      	orrs	r0, r1
 800220c:	6090      	str	r0, [r2, #8]
 800220e:	e7ff      	b.n	8002210 <UART_AdvFeatureConfig+0xb2>
 8002210:	9801      	ldr	r0, [sp, #4]
 8002212:	6a40      	ldr	r0, [r0, #36]	; 0x24
 8002214:	0680      	lsls	r0, r0, #26
 8002216:	2800      	cmp	r0, #0
 8002218:	d50b      	bpl.n	8002232 <UART_AdvFeatureConfig+0xd4>
 800221a:	e7ff      	b.n	800221c <UART_AdvFeatureConfig+0xbe>
 800221c:	9801      	ldr	r0, [sp, #4]
 800221e:	6800      	ldr	r0, [r0, #0]
 8002220:	6880      	ldr	r0, [r0, #8]
 8002222:	f420 5000 	bic.w	r0, r0, #8192	; 0x2000
 8002226:	9901      	ldr	r1, [sp, #4]
 8002228:	680a      	ldr	r2, [r1, #0]
 800222a:	6bc9      	ldr	r1, [r1, #60]	; 0x3c
 800222c:	4308      	orrs	r0, r1
 800222e:	6090      	str	r0, [r2, #8]
 8002230:	e7ff      	b.n	8002232 <UART_AdvFeatureConfig+0xd4>
 8002232:	9801      	ldr	r0, [sp, #4]
 8002234:	6a40      	ldr	r0, [r0, #36]	; 0x24
 8002236:	0640      	lsls	r0, r0, #25
 8002238:	2800      	cmp	r0, #0
 800223a:	d51c      	bpl.n	8002276 <UART_AdvFeatureConfig+0x118>
 800223c:	e7ff      	b.n	800223e <UART_AdvFeatureConfig+0xe0>
 800223e:	9801      	ldr	r0, [sp, #4]
 8002240:	6800      	ldr	r0, [r0, #0]
 8002242:	6840      	ldr	r0, [r0, #4]
 8002244:	f420 1080 	bic.w	r0, r0, #1048576	; 0x100000
 8002248:	9901      	ldr	r1, [sp, #4]
 800224a:	680a      	ldr	r2, [r1, #0]
 800224c:	6c09      	ldr	r1, [r1, #64]	; 0x40
 800224e:	4308      	orrs	r0, r1
 8002250:	6050      	str	r0, [r2, #4]
 8002252:	9801      	ldr	r0, [sp, #4]
 8002254:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8002256:	f5b0 1f80 	cmp.w	r0, #1048576	; 0x100000
 800225a:	d10b      	bne.n	8002274 <UART_AdvFeatureConfig+0x116>
 800225c:	e7ff      	b.n	800225e <UART_AdvFeatureConfig+0x100>
 800225e:	9801      	ldr	r0, [sp, #4]
 8002260:	6800      	ldr	r0, [r0, #0]
 8002262:	6840      	ldr	r0, [r0, #4]
 8002264:	f420 00c0 	bic.w	r0, r0, #6291456	; 0x600000
 8002268:	9901      	ldr	r1, [sp, #4]
 800226a:	680a      	ldr	r2, [r1, #0]
 800226c:	6c49      	ldr	r1, [r1, #68]	; 0x44
 800226e:	4308      	orrs	r0, r1
 8002270:	6050      	str	r0, [r2, #4]
 8002272:	e7ff      	b.n	8002274 <UART_AdvFeatureConfig+0x116>
 8002274:	e7ff      	b.n	8002276 <UART_AdvFeatureConfig+0x118>
 8002276:	9801      	ldr	r0, [sp, #4]
 8002278:	6a40      	ldr	r0, [r0, #36]	; 0x24
 800227a:	0600      	lsls	r0, r0, #24
 800227c:	2800      	cmp	r0, #0
 800227e:	d50b      	bpl.n	8002298 <UART_AdvFeatureConfig+0x13a>
 8002280:	e7ff      	b.n	8002282 <UART_AdvFeatureConfig+0x124>
 8002282:	9801      	ldr	r0, [sp, #4]
 8002284:	6800      	ldr	r0, [r0, #0]
 8002286:	6840      	ldr	r0, [r0, #4]
 8002288:	f420 2000 	bic.w	r0, r0, #524288	; 0x80000
 800228c:	9901      	ldr	r1, [sp, #4]
 800228e:	680a      	ldr	r2, [r1, #0]
 8002290:	6c89      	ldr	r1, [r1, #72]	; 0x48
 8002292:	4308      	orrs	r0, r1
 8002294:	6050      	str	r0, [r2, #4]
 8002296:	e7ff      	b.n	8002298 <UART_AdvFeatureConfig+0x13a>
 8002298:	b002      	add	sp, #8
 800229a:	4770      	bx	lr

0800229c <UART_CheckIdleState>:
 800229c:	b580      	push	{r7, lr}
 800229e:	466f      	mov	r7, sp
 80022a0:	b086      	sub	sp, #24
 80022a2:	4601      	mov	r1, r0
 80022a4:	9004      	str	r0, [sp, #16]
 80022a6:	2000      	movs	r0, #0
 80022a8:	9003      	str	r0, [sp, #12]
 80022aa:	9a04      	ldr	r2, [sp, #16]
 80022ac:	67d0      	str	r0, [r2, #124]	; 0x7c
 80022ae:	9102      	str	r1, [sp, #8]
 80022b0:	f7fe ff22 	bl	80010f8 <HAL_GetTick>
 80022b4:	9003      	str	r0, [sp, #12]
 80022b6:	9804      	ldr	r0, [sp, #16]
 80022b8:	6800      	ldr	r0, [r0, #0]
 80022ba:	6800      	ldr	r0, [r0, #0]
 80022bc:	f010 0f08 	tst.w	r0, #8
 80022c0:	d012      	beq.n	80022e8 <UART_CheckIdleState+0x4c>
 80022c2:	e7ff      	b.n	80022c4 <UART_CheckIdleState+0x28>
 80022c4:	9804      	ldr	r0, [sp, #16]
 80022c6:	9b03      	ldr	r3, [sp, #12]
 80022c8:	4669      	mov	r1, sp
 80022ca:	f06f 427e 	mvn.w	r2, #4261412864	; 0xfe000000
 80022ce:	600a      	str	r2, [r1, #0]
 80022d0:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
 80022d4:	2200      	movs	r2, #0
 80022d6:	f000 f8d4 	bl	8002482 <UART_WaitOnFlagUntilTimeout>
 80022da:	2800      	cmp	r0, #0
 80022dc:	d003      	beq.n	80022e6 <UART_CheckIdleState+0x4a>
 80022de:	e7ff      	b.n	80022e0 <UART_CheckIdleState+0x44>
 80022e0:	2003      	movs	r0, #3
 80022e2:	9005      	str	r0, [sp, #20]
 80022e4:	e026      	b.n	8002334 <UART_CheckIdleState+0x98>
 80022e6:	e7ff      	b.n	80022e8 <UART_CheckIdleState+0x4c>
 80022e8:	9804      	ldr	r0, [sp, #16]
 80022ea:	6800      	ldr	r0, [r0, #0]
 80022ec:	6800      	ldr	r0, [r0, #0]
 80022ee:	f010 0f04 	tst.w	r0, #4
 80022f2:	d012      	beq.n	800231a <UART_CheckIdleState+0x7e>
 80022f4:	e7ff      	b.n	80022f6 <UART_CheckIdleState+0x5a>
 80022f6:	9804      	ldr	r0, [sp, #16]
 80022f8:	9b03      	ldr	r3, [sp, #12]
 80022fa:	4669      	mov	r1, sp
 80022fc:	f06f 427e 	mvn.w	r2, #4261412864	; 0xfe000000
 8002300:	600a      	str	r2, [r1, #0]
 8002302:	f44f 0180 	mov.w	r1, #4194304	; 0x400000
 8002306:	2200      	movs	r2, #0
 8002308:	f000 f8bb 	bl	8002482 <UART_WaitOnFlagUntilTimeout>
 800230c:	2800      	cmp	r0, #0
 800230e:	d003      	beq.n	8002318 <UART_CheckIdleState+0x7c>
 8002310:	e7ff      	b.n	8002312 <UART_CheckIdleState+0x76>
 8002312:	2003      	movs	r0, #3
 8002314:	9005      	str	r0, [sp, #20]
 8002316:	e00d      	b.n	8002334 <UART_CheckIdleState+0x98>
 8002318:	e7ff      	b.n	800231a <UART_CheckIdleState+0x7e>
 800231a:	9804      	ldr	r0, [sp, #16]
 800231c:	2120      	movs	r1, #32
 800231e:	6741      	str	r1, [r0, #116]	; 0x74
 8002320:	9804      	ldr	r0, [sp, #16]
 8002322:	6781      	str	r1, [r0, #120]	; 0x78
 8002324:	e7ff      	b.n	8002326 <UART_CheckIdleState+0x8a>
 8002326:	9804      	ldr	r0, [sp, #16]
 8002328:	2100      	movs	r1, #0
 800232a:	6701      	str	r1, [r0, #112]	; 0x70
 800232c:	e7ff      	b.n	800232e <UART_CheckIdleState+0x92>
 800232e:	2000      	movs	r0, #0
 8002330:	9005      	str	r0, [sp, #20]
 8002332:	e7ff      	b.n	8002334 <UART_CheckIdleState+0x98>
 8002334:	9805      	ldr	r0, [sp, #20]
 8002336:	b006      	add	sp, #24
 8002338:	bd80      	pop	{r7, pc}

0800233a <HAL_UART_Transmit>:
 800233a:	b5b0      	push	{r4, r5, r7, lr}
 800233c:	af02      	add	r7, sp, #8
 800233e:	b08c      	sub	sp, #48	; 0x30
 8002340:	469c      	mov	ip, r3
 8002342:	4696      	mov	lr, r2
 8002344:	460c      	mov	r4, r1
 8002346:	4605      	mov	r5, r0
 8002348:	900a      	str	r0, [sp, #40]	; 0x28
 800234a:	9109      	str	r1, [sp, #36]	; 0x24
 800234c:	f827 2c16 	strh.w	r2, [r7, #-22]
 8002350:	9307      	str	r3, [sp, #28]
 8002352:	2000      	movs	r0, #0
 8002354:	9005      	str	r0, [sp, #20]
 8002356:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002358:	6f40      	ldr	r0, [r0, #116]	; 0x74
 800235a:	2820      	cmp	r0, #32
 800235c:	f8cd c010 	str.w	ip, [sp, #16]
 8002360:	f8cd e00c 	str.w	lr, [sp, #12]
 8002364:	9402      	str	r4, [sp, #8]
 8002366:	9501      	str	r5, [sp, #4]
 8002368:	f040 8085 	bne.w	8002476 <HAL_UART_Transmit+0x13c>
 800236c:	e7ff      	b.n	800236e <HAL_UART_Transmit+0x34>
 800236e:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002370:	2800      	cmp	r0, #0
 8002372:	d005      	beq.n	8002380 <HAL_UART_Transmit+0x46>
 8002374:	e7ff      	b.n	8002376 <HAL_UART_Transmit+0x3c>
 8002376:	f837 0c16 	ldrh.w	r0, [r7, #-22]
 800237a:	2800      	cmp	r0, #0
 800237c:	d103      	bne.n	8002386 <HAL_UART_Transmit+0x4c>
 800237e:	e7ff      	b.n	8002380 <HAL_UART_Transmit+0x46>
 8002380:	2001      	movs	r0, #1
 8002382:	900b      	str	r0, [sp, #44]	; 0x2c
 8002384:	e07a      	b.n	800247c <HAL_UART_Transmit+0x142>
 8002386:	e7ff      	b.n	8002388 <HAL_UART_Transmit+0x4e>
 8002388:	980a      	ldr	r0, [sp, #40]	; 0x28
 800238a:	6f00      	ldr	r0, [r0, #112]	; 0x70
 800238c:	2801      	cmp	r0, #1
 800238e:	d103      	bne.n	8002398 <HAL_UART_Transmit+0x5e>
 8002390:	e7ff      	b.n	8002392 <HAL_UART_Transmit+0x58>
 8002392:	2002      	movs	r0, #2
 8002394:	900b      	str	r0, [sp, #44]	; 0x2c
 8002396:	e071      	b.n	800247c <HAL_UART_Transmit+0x142>
 8002398:	980a      	ldr	r0, [sp, #40]	; 0x28
 800239a:	2101      	movs	r1, #1
 800239c:	6701      	str	r1, [r0, #112]	; 0x70
 800239e:	e7ff      	b.n	80023a0 <HAL_UART_Transmit+0x66>
 80023a0:	e7ff      	b.n	80023a2 <HAL_UART_Transmit+0x68>
 80023a2:	980a      	ldr	r0, [sp, #40]	; 0x28
 80023a4:	2100      	movs	r1, #0
 80023a6:	67c1      	str	r1, [r0, #124]	; 0x7c
 80023a8:	980a      	ldr	r0, [sp, #40]	; 0x28
 80023aa:	2121      	movs	r1, #33	; 0x21
 80023ac:	6741      	str	r1, [r0, #116]	; 0x74
 80023ae:	f7fe fea3 	bl	80010f8 <HAL_GetTick>
 80023b2:	9005      	str	r0, [sp, #20]
 80023b4:	f837 0c16 	ldrh.w	r0, [r7, #-22]
 80023b8:	990a      	ldr	r1, [sp, #40]	; 0x28
 80023ba:	f8a1 0050 	strh.w	r0, [r1, #80]	; 0x50
 80023be:	f837 0c16 	ldrh.w	r0, [r7, #-22]
 80023c2:	990a      	ldr	r1, [sp, #40]	; 0x28
 80023c4:	f8a1 0052 	strh.w	r0, [r1, #82]	; 0x52
 80023c8:	e7ff      	b.n	80023ca <HAL_UART_Transmit+0x90>
 80023ca:	980a      	ldr	r0, [sp, #40]	; 0x28
 80023cc:	f8b0 0052 	ldrh.w	r0, [r0, #82]	; 0x52
 80023d0:	2800      	cmp	r0, #0
 80023d2:	d036      	beq.n	8002442 <HAL_UART_Transmit+0x108>
 80023d4:	e7ff      	b.n	80023d6 <HAL_UART_Transmit+0x9c>
 80023d6:	980a      	ldr	r0, [sp, #40]	; 0x28
 80023d8:	9b05      	ldr	r3, [sp, #20]
 80023da:	9907      	ldr	r1, [sp, #28]
 80023dc:	466a      	mov	r2, sp
 80023de:	6011      	str	r1, [r2, #0]
 80023e0:	2180      	movs	r1, #128	; 0x80
 80023e2:	2200      	movs	r2, #0
 80023e4:	f000 f84d 	bl	8002482 <UART_WaitOnFlagUntilTimeout>
 80023e8:	2800      	cmp	r0, #0
 80023ea:	d003      	beq.n	80023f4 <HAL_UART_Transmit+0xba>
 80023ec:	e7ff      	b.n	80023ee <HAL_UART_Transmit+0xb4>
 80023ee:	2003      	movs	r0, #3
 80023f0:	900b      	str	r0, [sp, #44]	; 0x2c
 80023f2:	e043      	b.n	800247c <HAL_UART_Transmit+0x142>
 80023f4:	980a      	ldr	r0, [sp, #40]	; 0x28
 80023f6:	6880      	ldr	r0, [r0, #8]
 80023f8:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 80023fc:	d112      	bne.n	8002424 <HAL_UART_Transmit+0xea>
 80023fe:	e7ff      	b.n	8002400 <HAL_UART_Transmit+0xc6>
 8002400:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002402:	6900      	ldr	r0, [r0, #16]
 8002404:	2800      	cmp	r0, #0
 8002406:	d10d      	bne.n	8002424 <HAL_UART_Transmit+0xea>
 8002408:	e7ff      	b.n	800240a <HAL_UART_Transmit+0xd0>
 800240a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800240c:	9006      	str	r0, [sp, #24]
 800240e:	9806      	ldr	r0, [sp, #24]
 8002410:	8800      	ldrh	r0, [r0, #0]
 8002412:	f36f 205f 	bfc	r0, #9, #23
 8002416:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002418:	6809      	ldr	r1, [r1, #0]
 800241a:	8508      	strh	r0, [r1, #40]	; 0x28
 800241c:	9809      	ldr	r0, [sp, #36]	; 0x24
 800241e:	3002      	adds	r0, #2
 8002420:	9009      	str	r0, [sp, #36]	; 0x24
 8002422:	e007      	b.n	8002434 <HAL_UART_Transmit+0xfa>
 8002424:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002426:	1c41      	adds	r1, r0, #1
 8002428:	9109      	str	r1, [sp, #36]	; 0x24
 800242a:	7800      	ldrb	r0, [r0, #0]
 800242c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800242e:	6809      	ldr	r1, [r1, #0]
 8002430:	8508      	strh	r0, [r1, #40]	; 0x28
 8002432:	e7ff      	b.n	8002434 <HAL_UART_Transmit+0xfa>
 8002434:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002436:	f8b0 1052 	ldrh.w	r1, [r0, #82]	; 0x52
 800243a:	3901      	subs	r1, #1
 800243c:	f8a0 1052 	strh.w	r1, [r0, #82]	; 0x52
 8002440:	e7c3      	b.n	80023ca <HAL_UART_Transmit+0x90>
 8002442:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002444:	9b05      	ldr	r3, [sp, #20]
 8002446:	9907      	ldr	r1, [sp, #28]
 8002448:	466a      	mov	r2, sp
 800244a:	6011      	str	r1, [r2, #0]
 800244c:	2140      	movs	r1, #64	; 0x40
 800244e:	2200      	movs	r2, #0
 8002450:	f000 f817 	bl	8002482 <UART_WaitOnFlagUntilTimeout>
 8002454:	2800      	cmp	r0, #0
 8002456:	d003      	beq.n	8002460 <HAL_UART_Transmit+0x126>
 8002458:	e7ff      	b.n	800245a <HAL_UART_Transmit+0x120>
 800245a:	2003      	movs	r0, #3
 800245c:	900b      	str	r0, [sp, #44]	; 0x2c
 800245e:	e00d      	b.n	800247c <HAL_UART_Transmit+0x142>
 8002460:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002462:	2120      	movs	r1, #32
 8002464:	6741      	str	r1, [r0, #116]	; 0x74
 8002466:	e7ff      	b.n	8002468 <HAL_UART_Transmit+0x12e>
 8002468:	980a      	ldr	r0, [sp, #40]	; 0x28
 800246a:	2100      	movs	r1, #0
 800246c:	6701      	str	r1, [r0, #112]	; 0x70
 800246e:	e7ff      	b.n	8002470 <HAL_UART_Transmit+0x136>
 8002470:	2000      	movs	r0, #0
 8002472:	900b      	str	r0, [sp, #44]	; 0x2c
 8002474:	e002      	b.n	800247c <HAL_UART_Transmit+0x142>
 8002476:	2002      	movs	r0, #2
 8002478:	900b      	str	r0, [sp, #44]	; 0x2c
 800247a:	e7ff      	b.n	800247c <HAL_UART_Transmit+0x142>
 800247c:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800247e:	b00c      	add	sp, #48	; 0x30
 8002480:	bdb0      	pop	{r4, r5, r7, pc}

08002482 <UART_WaitOnFlagUntilTimeout>:
 8002482:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002484:	af03      	add	r7, sp, #12
 8002486:	f84d bd04 	str.w	fp, [sp, #-4]!
 800248a:	b08a      	sub	sp, #40	; 0x28
 800248c:	f8d7 c008 	ldr.w	ip, [r7, #8]
 8002490:	469e      	mov	lr, r3
 8002492:	4614      	mov	r4, r2
 8002494:	460d      	mov	r5, r1
 8002496:	4606      	mov	r6, r0
 8002498:	9008      	str	r0, [sp, #32]
 800249a:	9107      	str	r1, [sp, #28]
 800249c:	9206      	str	r2, [sp, #24]
 800249e:	9305      	str	r3, [sp, #20]
 80024a0:	f8cd c010 	str.w	ip, [sp, #16]
 80024a4:	f8cd e00c 	str.w	lr, [sp, #12]
 80024a8:	9402      	str	r4, [sp, #8]
 80024aa:	9501      	str	r5, [sp, #4]
 80024ac:	9600      	str	r6, [sp, #0]
 80024ae:	e7ff      	b.n	80024b0 <UART_WaitOnFlagUntilTimeout+0x2e>
 80024b0:	9808      	ldr	r0, [sp, #32]
 80024b2:	6800      	ldr	r0, [r0, #0]
 80024b4:	69c0      	ldr	r0, [r0, #28]
 80024b6:	9907      	ldr	r1, [sp, #28]
 80024b8:	4008      	ands	r0, r1
 80024ba:	2200      	movs	r2, #0
 80024bc:	4288      	cmp	r0, r1
 80024be:	bf08      	it	eq
 80024c0:	2201      	moveq	r2, #1
 80024c2:	9806      	ldr	r0, [sp, #24]
 80024c4:	4282      	cmp	r2, r0
 80024c6:	d12f      	bne.n	8002528 <UART_WaitOnFlagUntilTimeout+0xa6>
 80024c8:	e7ff      	b.n	80024ca <UART_WaitOnFlagUntilTimeout+0x48>
 80024ca:	9804      	ldr	r0, [sp, #16]
 80024cc:	3001      	adds	r0, #1
 80024ce:	2800      	cmp	r0, #0
 80024d0:	d029      	beq.n	8002526 <UART_WaitOnFlagUntilTimeout+0xa4>
 80024d2:	e7ff      	b.n	80024d4 <UART_WaitOnFlagUntilTimeout+0x52>
 80024d4:	9804      	ldr	r0, [sp, #16]
 80024d6:	2800      	cmp	r0, #0
 80024d8:	d00b      	beq.n	80024f2 <UART_WaitOnFlagUntilTimeout+0x70>
 80024da:	e7ff      	b.n	80024dc <UART_WaitOnFlagUntilTimeout+0x5a>
 80024dc:	f7fe fe0c 	bl	80010f8 <HAL_GetTick>
 80024e0:	f8dd e014 	ldr.w	lr, [sp, #20]
 80024e4:	eba0 000e 	sub.w	r0, r0, lr
 80024e8:	f8dd e010 	ldr.w	lr, [sp, #16]
 80024ec:	4570      	cmp	r0, lr
 80024ee:	d919      	bls.n	8002524 <UART_WaitOnFlagUntilTimeout+0xa2>
 80024f0:	e7ff      	b.n	80024f2 <UART_WaitOnFlagUntilTimeout+0x70>
 80024f2:	9808      	ldr	r0, [sp, #32]
 80024f4:	6800      	ldr	r0, [r0, #0]
 80024f6:	6801      	ldr	r1, [r0, #0]
 80024f8:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 80024fc:	6001      	str	r1, [r0, #0]
 80024fe:	9808      	ldr	r0, [sp, #32]
 8002500:	6800      	ldr	r0, [r0, #0]
 8002502:	6881      	ldr	r1, [r0, #8]
 8002504:	f021 0101 	bic.w	r1, r1, #1
 8002508:	6081      	str	r1, [r0, #8]
 800250a:	9808      	ldr	r0, [sp, #32]
 800250c:	2120      	movs	r1, #32
 800250e:	6741      	str	r1, [r0, #116]	; 0x74
 8002510:	9808      	ldr	r0, [sp, #32]
 8002512:	6781      	str	r1, [r0, #120]	; 0x78
 8002514:	e7ff      	b.n	8002516 <UART_WaitOnFlagUntilTimeout+0x94>
 8002516:	9808      	ldr	r0, [sp, #32]
 8002518:	2100      	movs	r1, #0
 800251a:	6701      	str	r1, [r0, #112]	; 0x70
 800251c:	e7ff      	b.n	800251e <UART_WaitOnFlagUntilTimeout+0x9c>
 800251e:	2003      	movs	r0, #3
 8002520:	9009      	str	r0, [sp, #36]	; 0x24
 8002522:	e004      	b.n	800252e <UART_WaitOnFlagUntilTimeout+0xac>
 8002524:	e7ff      	b.n	8002526 <UART_WaitOnFlagUntilTimeout+0xa4>
 8002526:	e7c3      	b.n	80024b0 <UART_WaitOnFlagUntilTimeout+0x2e>
 8002528:	2000      	movs	r0, #0
 800252a:	9009      	str	r0, [sp, #36]	; 0x24
 800252c:	e7ff      	b.n	800252e <UART_WaitOnFlagUntilTimeout+0xac>
 800252e:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002530:	b00a      	add	sp, #40	; 0x28
 8002532:	f85d bb04 	ldr.w	fp, [sp], #4
 8002536:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002538 <osSystickHandler>:
 8002538:	b580      	push	{r7, lr}
 800253a:	466f      	mov	r7, sp
 800253c:	f000 f9c8 	bl	80028d0 <xTaskGetSchedulerState>
 8002540:	2801      	cmp	r0, #1
 8002542:	d003      	beq.n	800254c <osSystickHandler+0x14>
 8002544:	e7ff      	b.n	8002546 <osSystickHandler+0xe>
 8002546:	f000 fa2d 	bl	80029a4 <xPortSysTickHandler>
 800254a:	e7ff      	b.n	800254c <osSystickHandler+0x14>
 800254c:	bd80      	pop	{r7, pc}

0800254e <vListInsertEnd>:
 800254e:	b085      	sub	sp, #20
 8002550:	460a      	mov	r2, r1
 8002552:	4603      	mov	r3, r0
 8002554:	9004      	str	r0, [sp, #16]
 8002556:	9103      	str	r1, [sp, #12]
 8002558:	9804      	ldr	r0, [sp, #16]
 800255a:	6840      	ldr	r0, [r0, #4]
 800255c:	9002      	str	r0, [sp, #8]
 800255e:	9802      	ldr	r0, [sp, #8]
 8002560:	9903      	ldr	r1, [sp, #12]
 8002562:	6048      	str	r0, [r1, #4]
 8002564:	9802      	ldr	r0, [sp, #8]
 8002566:	6880      	ldr	r0, [r0, #8]
 8002568:	9903      	ldr	r1, [sp, #12]
 800256a:	6088      	str	r0, [r1, #8]
 800256c:	9803      	ldr	r0, [sp, #12]
 800256e:	9902      	ldr	r1, [sp, #8]
 8002570:	6889      	ldr	r1, [r1, #8]
 8002572:	6048      	str	r0, [r1, #4]
 8002574:	9803      	ldr	r0, [sp, #12]
 8002576:	9902      	ldr	r1, [sp, #8]
 8002578:	6088      	str	r0, [r1, #8]
 800257a:	9804      	ldr	r0, [sp, #16]
 800257c:	9903      	ldr	r1, [sp, #12]
 800257e:	6108      	str	r0, [r1, #16]
 8002580:	9804      	ldr	r0, [sp, #16]
 8002582:	6801      	ldr	r1, [r0, #0]
 8002584:	3101      	adds	r1, #1
 8002586:	6001      	str	r1, [r0, #0]
 8002588:	9201      	str	r2, [sp, #4]
 800258a:	9300      	str	r3, [sp, #0]
 800258c:	b005      	add	sp, #20
 800258e:	4770      	bx	lr

08002590 <uxListRemove>:
 8002590:	b083      	sub	sp, #12
 8002592:	4601      	mov	r1, r0
 8002594:	9002      	str	r0, [sp, #8]
 8002596:	9802      	ldr	r0, [sp, #8]
 8002598:	6900      	ldr	r0, [r0, #16]
 800259a:	9001      	str	r0, [sp, #4]
 800259c:	9802      	ldr	r0, [sp, #8]
 800259e:	6842      	ldr	r2, [r0, #4]
 80025a0:	6880      	ldr	r0, [r0, #8]
 80025a2:	6090      	str	r0, [r2, #8]
 80025a4:	9802      	ldr	r0, [sp, #8]
 80025a6:	6842      	ldr	r2, [r0, #4]
 80025a8:	6880      	ldr	r0, [r0, #8]
 80025aa:	6042      	str	r2, [r0, #4]
 80025ac:	9801      	ldr	r0, [sp, #4]
 80025ae:	6840      	ldr	r0, [r0, #4]
 80025b0:	9a02      	ldr	r2, [sp, #8]
 80025b2:	4290      	cmp	r0, r2
 80025b4:	9100      	str	r1, [sp, #0]
 80025b6:	d105      	bne.n	80025c4 <uxListRemove+0x34>
 80025b8:	e7ff      	b.n	80025ba <uxListRemove+0x2a>
 80025ba:	9802      	ldr	r0, [sp, #8]
 80025bc:	6880      	ldr	r0, [r0, #8]
 80025be:	9901      	ldr	r1, [sp, #4]
 80025c0:	6048      	str	r0, [r1, #4]
 80025c2:	e000      	b.n	80025c6 <uxListRemove+0x36>
 80025c4:	e7ff      	b.n	80025c6 <uxListRemove+0x36>
 80025c6:	9802      	ldr	r0, [sp, #8]
 80025c8:	2100      	movs	r1, #0
 80025ca:	6101      	str	r1, [r0, #16]
 80025cc:	9801      	ldr	r0, [sp, #4]
 80025ce:	6801      	ldr	r1, [r0, #0]
 80025d0:	3901      	subs	r1, #1
 80025d2:	6001      	str	r1, [r0, #0]
 80025d4:	9801      	ldr	r0, [sp, #4]
 80025d6:	6800      	ldr	r0, [r0, #0]
 80025d8:	b003      	add	sp, #12
 80025da:	4770      	bx	lr

080025dc <prvResetNextTaskUnblockTime>:
 80025dc:	b081      	sub	sp, #4
 80025de:	f640 20a0 	movw	r0, #2720	; 0xaa0
 80025e2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80025e6:	6800      	ldr	r0, [r0, #0]
 80025e8:	6800      	ldr	r0, [r0, #0]
 80025ea:	2100      	movs	r1, #0
 80025ec:	2800      	cmp	r0, #0
 80025ee:	bf08      	it	eq
 80025f0:	2101      	moveq	r1, #1
 80025f2:	2900      	cmp	r1, #0
 80025f4:	d008      	beq.n	8002608 <prvResetNextTaskUnblockTime+0x2c>
 80025f6:	e7ff      	b.n	80025f8 <prvResetNextTaskUnblockTime+0x1c>
 80025f8:	f640 20d4 	movw	r0, #2772	; 0xad4
 80025fc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002600:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8002604:	6001      	str	r1, [r0, #0]
 8002606:	e00f      	b.n	8002628 <prvResetNextTaskUnblockTime+0x4c>
 8002608:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800260c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002610:	6800      	ldr	r0, [r0, #0]
 8002612:	68c0      	ldr	r0, [r0, #12]
 8002614:	68c0      	ldr	r0, [r0, #12]
 8002616:	9000      	str	r0, [sp, #0]
 8002618:	9800      	ldr	r0, [sp, #0]
 800261a:	6840      	ldr	r0, [r0, #4]
 800261c:	f640 21d4 	movw	r1, #2772	; 0xad4
 8002620:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002624:	6008      	str	r0, [r1, #0]
 8002626:	e7ff      	b.n	8002628 <prvResetNextTaskUnblockTime+0x4c>
 8002628:	b001      	add	sp, #4
 800262a:	4770      	bx	lr

0800262c <vTaskSwitchContext>:
 800262c:	b085      	sub	sp, #20
 800262e:	f640 209c 	movw	r0, #2716	; 0xa9c
 8002632:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002636:	6800      	ldr	r0, [r0, #0]
 8002638:	2800      	cmp	r0, #0
 800263a:	d007      	beq.n	800264c <vTaskSwitchContext+0x20>
 800263c:	e7ff      	b.n	800263e <vTaskSwitchContext+0x12>
 800263e:	f640 20dc 	movw	r0, #2780	; 0xadc
 8002642:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002646:	2101      	movs	r1, #1
 8002648:	6001      	str	r1, [r0, #0]
 800264a:	e051      	b.n	80026f0 <vTaskSwitchContext+0xc4>
 800264c:	f640 20dc 	movw	r0, #2780	; 0xadc
 8002650:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002654:	2100      	movs	r1, #0
 8002656:	6001      	str	r1, [r0, #0]
 8002658:	f640 2074 	movw	r0, #2676	; 0xa74
 800265c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002660:	6800      	ldr	r0, [r0, #0]
 8002662:	9003      	str	r0, [sp, #12]
 8002664:	9803      	ldr	r0, [sp, #12]
 8002666:	fab0 f080 	clz	r0, r0
 800266a:	f88d 000b 	strb.w	r0, [sp, #11]
 800266e:	f89d 000b 	ldrb.w	r0, [sp, #11]
 8002672:	f1c0 001f 	rsb	r0, r0, #31
 8002676:	9001      	str	r0, [sp, #4]
 8002678:	9801      	ldr	r0, [sp, #4]
 800267a:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800267e:	f640 11e8 	movw	r1, #2536	; 0x9e8
 8002682:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002686:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 800268a:	2800      	cmp	r0, #0
 800268c:	bf18      	it	ne
 800268e:	2001      	movne	r0, #1
 8002690:	2800      	cmp	r0, #0
 8002692:	d10b      	bne.n	80026ac <vTaskSwitchContext+0x80>
 8002694:	e7ff      	b.n	8002696 <vTaskSwitchContext+0x6a>
 8002696:	f04f 0050 	mov.w	r0, #80	; 0x50
 800269a:	f380 8811 	msr	BASEPRI, r0
 800269e:	f3bf 8f6f 	isb	sy
 80026a2:	f3bf 8f4f 	dsb	sy
 80026a6:	9004      	str	r0, [sp, #16]
 80026a8:	e7ff      	b.n	80026aa <vTaskSwitchContext+0x7e>
 80026aa:	e7fe      	b.n	80026aa <vTaskSwitchContext+0x7e>
 80026ac:	9801      	ldr	r0, [sp, #4]
 80026ae:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 80026b2:	f640 11e8 	movw	r1, #2536	; 0x9e8
 80026b6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80026ba:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 80026be:	9000      	str	r0, [sp, #0]
 80026c0:	9800      	ldr	r0, [sp, #0]
 80026c2:	6841      	ldr	r1, [r0, #4]
 80026c4:	6849      	ldr	r1, [r1, #4]
 80026c6:	6041      	str	r1, [r0, #4]
 80026c8:	9800      	ldr	r0, [sp, #0]
 80026ca:	6841      	ldr	r1, [r0, #4]
 80026cc:	3008      	adds	r0, #8
 80026ce:	4281      	cmp	r1, r0
 80026d0:	d105      	bne.n	80026de <vTaskSwitchContext+0xb2>
 80026d2:	e7ff      	b.n	80026d4 <vTaskSwitchContext+0xa8>
 80026d4:	9800      	ldr	r0, [sp, #0]
 80026d6:	6841      	ldr	r1, [r0, #4]
 80026d8:	6849      	ldr	r1, [r1, #4]
 80026da:	6041      	str	r1, [r0, #4]
 80026dc:	e7ff      	b.n	80026de <vTaskSwitchContext+0xb2>
 80026de:	9800      	ldr	r0, [sp, #0]
 80026e0:	6840      	ldr	r0, [r0, #4]
 80026e2:	68c0      	ldr	r0, [r0, #12]
 80026e4:	f640 11e4 	movw	r1, #2532	; 0x9e4
 80026e8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80026ec:	6008      	str	r0, [r1, #0]
 80026ee:	e7ff      	b.n	80026f0 <vTaskSwitchContext+0xc4>
 80026f0:	b005      	add	sp, #20
 80026f2:	4770      	bx	lr

080026f4 <xTaskIncrementTick>:
 80026f4:	b580      	push	{r7, lr}
 80026f6:	466f      	mov	r7, sp
 80026f8:	b08a      	sub	sp, #40	; 0x28
 80026fa:	2000      	movs	r0, #0
 80026fc:	9006      	str	r0, [sp, #24]
 80026fe:	f640 209c 	movw	r0, #2716	; 0xa9c
 8002702:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002706:	6800      	ldr	r0, [r0, #0]
 8002708:	2800      	cmp	r0, #0
 800270a:	f040 80ca 	bne.w	80028a2 <xTaskIncrementTick+0x1ae>
 800270e:	e7ff      	b.n	8002710 <xTaskIncrementTick+0x1c>
 8002710:	f640 20d8 	movw	r0, #2776	; 0xad8
 8002714:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002718:	6801      	ldr	r1, [r0, #0]
 800271a:	3101      	adds	r1, #1
 800271c:	9105      	str	r1, [sp, #20]
 800271e:	9905      	ldr	r1, [sp, #20]
 8002720:	6001      	str	r1, [r0, #0]
 8002722:	9805      	ldr	r0, [sp, #20]
 8002724:	2800      	cmp	r0, #0
 8002726:	d12c      	bne.n	8002782 <xTaskIncrementTick+0x8e>
 8002728:	e7ff      	b.n	800272a <xTaskIncrementTick+0x36>
 800272a:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800272e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002732:	6800      	ldr	r0, [r0, #0]
 8002734:	6800      	ldr	r0, [r0, #0]
 8002736:	2800      	cmp	r0, #0
 8002738:	d00b      	beq.n	8002752 <xTaskIncrementTick+0x5e>
 800273a:	e7ff      	b.n	800273c <xTaskIncrementTick+0x48>
 800273c:	f04f 0050 	mov.w	r0, #80	; 0x50
 8002740:	f380 8811 	msr	BASEPRI, r0
 8002744:	f3bf 8f6f 	isb	sy
 8002748:	f3bf 8f4f 	dsb	sy
 800274c:	9009      	str	r0, [sp, #36]	; 0x24
 800274e:	e7ff      	b.n	8002750 <xTaskIncrementTick+0x5c>
 8002750:	e7fe      	b.n	8002750 <xTaskIncrementTick+0x5c>
 8002752:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8002756:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800275a:	6801      	ldr	r1, [r0, #0]
 800275c:	9104      	str	r1, [sp, #16]
 800275e:	f640 21a4 	movw	r1, #2724	; 0xaa4
 8002762:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002766:	680a      	ldr	r2, [r1, #0]
 8002768:	6002      	str	r2, [r0, #0]
 800276a:	9804      	ldr	r0, [sp, #16]
 800276c:	6008      	str	r0, [r1, #0]
 800276e:	f640 20e4 	movw	r0, #2788	; 0xae4
 8002772:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002776:	6801      	ldr	r1, [r0, #0]
 8002778:	3101      	adds	r1, #1
 800277a:	6001      	str	r1, [r0, #0]
 800277c:	f7ff ff2e 	bl	80025dc <prvResetNextTaskUnblockTime>
 8002780:	e000      	b.n	8002784 <xTaskIncrementTick+0x90>
 8002782:	e7ff      	b.n	8002784 <xTaskIncrementTick+0x90>
 8002784:	9805      	ldr	r0, [sp, #20]
 8002786:	f640 21d4 	movw	r1, #2772	; 0xad4
 800278a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800278e:	6809      	ldr	r1, [r1, #0]
 8002790:	4288      	cmp	r0, r1
 8002792:	d370      	bcc.n	8002876 <xTaskIncrementTick+0x182>
 8002794:	e7ff      	b.n	8002796 <xTaskIncrementTick+0xa2>
 8002796:	e7ff      	b.n	8002798 <xTaskIncrementTick+0xa4>
 8002798:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800279c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80027a0:	6800      	ldr	r0, [r0, #0]
 80027a2:	6800      	ldr	r0, [r0, #0]
 80027a4:	2100      	movs	r1, #0
 80027a6:	2800      	cmp	r0, #0
 80027a8:	bf08      	it	eq
 80027aa:	2101      	moveq	r1, #1
 80027ac:	2900      	cmp	r1, #0
 80027ae:	d008      	beq.n	80027c2 <xTaskIncrementTick+0xce>
 80027b0:	e7ff      	b.n	80027b2 <xTaskIncrementTick+0xbe>
 80027b2:	f640 20d4 	movw	r0, #2772	; 0xad4
 80027b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80027ba:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 80027be:	6001      	str	r1, [r0, #0]
 80027c0:	e058      	b.n	8002874 <xTaskIncrementTick+0x180>
 80027c2:	f640 20a0 	movw	r0, #2720	; 0xaa0
 80027c6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80027ca:	6800      	ldr	r0, [r0, #0]
 80027cc:	68c0      	ldr	r0, [r0, #12]
 80027ce:	68c0      	ldr	r0, [r0, #12]
 80027d0:	9008      	str	r0, [sp, #32]
 80027d2:	9808      	ldr	r0, [sp, #32]
 80027d4:	6840      	ldr	r0, [r0, #4]
 80027d6:	9007      	str	r0, [sp, #28]
 80027d8:	9805      	ldr	r0, [sp, #20]
 80027da:	9907      	ldr	r1, [sp, #28]
 80027dc:	4288      	cmp	r0, r1
 80027de:	d207      	bcs.n	80027f0 <xTaskIncrementTick+0xfc>
 80027e0:	e7ff      	b.n	80027e2 <xTaskIncrementTick+0xee>
 80027e2:	9807      	ldr	r0, [sp, #28]
 80027e4:	f640 21d4 	movw	r1, #2772	; 0xad4
 80027e8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80027ec:	6008      	str	r0, [r1, #0]
 80027ee:	e041      	b.n	8002874 <xTaskIncrementTick+0x180>
 80027f0:	e7ff      	b.n	80027f2 <xTaskIncrementTick+0xfe>
 80027f2:	9808      	ldr	r0, [sp, #32]
 80027f4:	3004      	adds	r0, #4
 80027f6:	f7ff fecb 	bl	8002590 <uxListRemove>
 80027fa:	f8dd e020 	ldr.w	lr, [sp, #32]
 80027fe:	f8de e028 	ldr.w	lr, [lr, #40]	; 0x28
 8002802:	f1be 0f00 	cmp.w	lr, #0
 8002806:	9003      	str	r0, [sp, #12]
 8002808:	d006      	beq.n	8002818 <xTaskIncrementTick+0x124>
 800280a:	e7ff      	b.n	800280c <xTaskIncrementTick+0x118>
 800280c:	9808      	ldr	r0, [sp, #32]
 800280e:	3018      	adds	r0, #24
 8002810:	f7ff febe 	bl	8002590 <uxListRemove>
 8002814:	9002      	str	r0, [sp, #8]
 8002816:	e000      	b.n	800281a <xTaskIncrementTick+0x126>
 8002818:	e7ff      	b.n	800281a <xTaskIncrementTick+0x126>
 800281a:	9808      	ldr	r0, [sp, #32]
 800281c:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 800281e:	2101      	movs	r1, #1
 8002820:	fa01 f000 	lsl.w	r0, r1, r0
 8002824:	f640 2174 	movw	r1, #2676	; 0xa74
 8002828:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800282c:	680a      	ldr	r2, [r1, #0]
 800282e:	4310      	orrs	r0, r2
 8002830:	6008      	str	r0, [r1, #0]
 8002832:	9808      	ldr	r0, [sp, #32]
 8002834:	6ac1      	ldr	r1, [r0, #44]	; 0x2c
 8002836:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 800283a:	f640 12e8 	movw	r2, #2536	; 0x9e8
 800283e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002842:	eb02 0181 	add.w	r1, r2, r1, lsl #2
 8002846:	3004      	adds	r0, #4
 8002848:	9001      	str	r0, [sp, #4]
 800284a:	4608      	mov	r0, r1
 800284c:	9901      	ldr	r1, [sp, #4]
 800284e:	f7ff fe7e 	bl	800254e <vListInsertEnd>
 8002852:	9808      	ldr	r0, [sp, #32]
 8002854:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8002856:	f640 11e4 	movw	r1, #2532	; 0x9e4
 800285a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800285e:	6809      	ldr	r1, [r1, #0]
 8002860:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 8002862:	4288      	cmp	r0, r1
 8002864:	d303      	bcc.n	800286e <xTaskIncrementTick+0x17a>
 8002866:	e7ff      	b.n	8002868 <xTaskIncrementTick+0x174>
 8002868:	2001      	movs	r0, #1
 800286a:	9006      	str	r0, [sp, #24]
 800286c:	e000      	b.n	8002870 <xTaskIncrementTick+0x17c>
 800286e:	e7ff      	b.n	8002870 <xTaskIncrementTick+0x17c>
 8002870:	e7ff      	b.n	8002872 <xTaskIncrementTick+0x17e>
 8002872:	e791      	b.n	8002798 <xTaskIncrementTick+0xa4>
 8002874:	e7ff      	b.n	8002876 <xTaskIncrementTick+0x182>
 8002876:	f640 10e4 	movw	r0, #2532	; 0x9e4
 800287a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800287e:	6800      	ldr	r0, [r0, #0]
 8002880:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8002882:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8002886:	f640 11e8 	movw	r1, #2536	; 0x9e8
 800288a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800288e:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8002892:	2802      	cmp	r0, #2
 8002894:	d303      	bcc.n	800289e <xTaskIncrementTick+0x1aa>
 8002896:	e7ff      	b.n	8002898 <xTaskIncrementTick+0x1a4>
 8002898:	2001      	movs	r0, #1
 800289a:	9006      	str	r0, [sp, #24]
 800289c:	e000      	b.n	80028a0 <xTaskIncrementTick+0x1ac>
 800289e:	e7ff      	b.n	80028a0 <xTaskIncrementTick+0x1ac>
 80028a0:	e007      	b.n	80028b2 <xTaskIncrementTick+0x1be>
 80028a2:	f640 20e0 	movw	r0, #2784	; 0xae0
 80028a6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80028aa:	6801      	ldr	r1, [r0, #0]
 80028ac:	3101      	adds	r1, #1
 80028ae:	6001      	str	r1, [r0, #0]
 80028b0:	e7ff      	b.n	80028b2 <xTaskIncrementTick+0x1be>
 80028b2:	f640 20dc 	movw	r0, #2780	; 0xadc
 80028b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80028ba:	6800      	ldr	r0, [r0, #0]
 80028bc:	2800      	cmp	r0, #0
 80028be:	d003      	beq.n	80028c8 <xTaskIncrementTick+0x1d4>
 80028c0:	e7ff      	b.n	80028c2 <xTaskIncrementTick+0x1ce>
 80028c2:	2001      	movs	r0, #1
 80028c4:	9006      	str	r0, [sp, #24]
 80028c6:	e000      	b.n	80028ca <xTaskIncrementTick+0x1d6>
 80028c8:	e7ff      	b.n	80028ca <xTaskIncrementTick+0x1d6>
 80028ca:	9806      	ldr	r0, [sp, #24]
 80028cc:	b00a      	add	sp, #40	; 0x28
 80028ce:	bd80      	pop	{r7, pc}

080028d0 <xTaskGetSchedulerState>:
 80028d0:	b081      	sub	sp, #4
 80028d2:	f640 2098 	movw	r0, #2712	; 0xa98
 80028d6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80028da:	6800      	ldr	r0, [r0, #0]
 80028dc:	2800      	cmp	r0, #0
 80028de:	d103      	bne.n	80028e8 <xTaskGetSchedulerState+0x18>
 80028e0:	e7ff      	b.n	80028e2 <xTaskGetSchedulerState+0x12>
 80028e2:	2001      	movs	r0, #1
 80028e4:	9000      	str	r0, [sp, #0]
 80028e6:	e00e      	b.n	8002906 <xTaskGetSchedulerState+0x36>
 80028e8:	f640 209c 	movw	r0, #2716	; 0xa9c
 80028ec:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80028f0:	6800      	ldr	r0, [r0, #0]
 80028f2:	2800      	cmp	r0, #0
 80028f4:	d103      	bne.n	80028fe <xTaskGetSchedulerState+0x2e>
 80028f6:	e7ff      	b.n	80028f8 <xTaskGetSchedulerState+0x28>
 80028f8:	2002      	movs	r0, #2
 80028fa:	9000      	str	r0, [sp, #0]
 80028fc:	e002      	b.n	8002904 <xTaskGetSchedulerState+0x34>
 80028fe:	2000      	movs	r0, #0
 8002900:	9000      	str	r0, [sp, #0]
 8002902:	e7ff      	b.n	8002904 <xTaskGetSchedulerState+0x34>
 8002904:	e7ff      	b.n	8002906 <xTaskGetSchedulerState+0x36>
 8002906:	9800      	ldr	r0, [sp, #0]
 8002908:	b001      	add	sp, #4
 800290a:	4770      	bx	lr
 800290c:	0000      	movs	r0, r0
	...

08002910 <SVC_Handler>:
 8002910:	4b07      	ldr	r3, [pc, #28]	; (8002930 <pxCurrentTCBConst2>)
 8002912:	6819      	ldr	r1, [r3, #0]
 8002914:	6808      	ldr	r0, [r1, #0]
 8002916:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800291a:	f380 8809 	msr	PSP, r0
 800291e:	f3bf 8f6f 	isb	sy
 8002922:	f04f 0000 	mov.w	r0, #0
 8002926:	f380 8811 	msr	BASEPRI, r0
 800292a:	4770      	bx	lr
 800292c:	bf00      	nop
 800292e:	bf00      	nop

08002930 <pxCurrentTCBConst2>:
 8002930:	200009e4 	.word	0x200009e4
	...

08002940 <PendSV_Handler>:
 8002940:	f3ef 8009 	mrs	r0, PSP
 8002944:	f3bf 8f6f 	isb	sy
 8002948:	4b15      	ldr	r3, [pc, #84]	; (80029a0 <pxCurrentTCBConst>)
 800294a:	681a      	ldr	r2, [r3, #0]
 800294c:	f01e 0f10 	tst.w	lr, #16
 8002950:	bf08      	it	eq
 8002952:	ed20 8a10 	vstmdbeq	r0!, {s16-s31}
 8002956:	e920 4ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800295a:	6010      	str	r0, [r2, #0]
 800295c:	e92d 0009 	stmdb	sp!, {r0, r3}
 8002960:	f04f 0050 	mov.w	r0, #80	; 0x50
 8002964:	f380 8811 	msr	BASEPRI, r0
 8002968:	f3bf 8f4f 	dsb	sy
 800296c:	f3bf 8f6f 	isb	sy
 8002970:	f7ff fe5c 	bl	800262c <vTaskSwitchContext>
 8002974:	f04f 0000 	mov.w	r0, #0
 8002978:	f380 8811 	msr	BASEPRI, r0
 800297c:	e8bd 0009 	ldmia.w	sp!, {r0, r3}
 8002980:	6819      	ldr	r1, [r3, #0]
 8002982:	6808      	ldr	r0, [r1, #0]
 8002984:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002988:	f01e 0f10 	tst.w	lr, #16
 800298c:	bf08      	it	eq
 800298e:	ecb0 8a10 	vldmiaeq	r0!, {s16-s31}
 8002992:	f380 8809 	msr	PSP, r0
 8002996:	f3bf 8f6f 	isb	sy
 800299a:	4770      	bx	lr
 800299c:	bf00      	nop
 800299e:	bf00      	nop

080029a0 <pxCurrentTCBConst>:
 80029a0:	200009e4 	.word	0x200009e4

080029a4 <xPortSysTickHandler>:
 80029a4:	b580      	push	{r7, lr}
 80029a6:	466f      	mov	r7, sp
 80029a8:	b082      	sub	sp, #8
 80029aa:	f04f 0050 	mov.w	r0, #80	; 0x50
 80029ae:	f380 8811 	msr	BASEPRI, r0
 80029b2:	f3bf 8f6f 	isb	sy
 80029b6:	f3bf 8f4f 	dsb	sy
 80029ba:	9000      	str	r0, [sp, #0]
 80029bc:	f7ff fe9a 	bl	80026f4 <xTaskIncrementTick>
 80029c0:	2800      	cmp	r0, #0
 80029c2:	d008      	beq.n	80029d6 <xPortSysTickHandler+0x32>
 80029c4:	e7ff      	b.n	80029c6 <xPortSysTickHandler+0x22>
 80029c6:	f64e 5004 	movw	r0, #60676	; 0xed04
 80029ca:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80029ce:	f04f 5180 	mov.w	r1, #268435456	; 0x10000000
 80029d2:	6001      	str	r1, [r0, #0]
 80029d4:	e7ff      	b.n	80029d6 <xPortSysTickHandler+0x32>
 80029d6:	2000      	movs	r0, #0
 80029d8:	9001      	str	r0, [sp, #4]
 80029da:	9801      	ldr	r0, [sp, #4]
 80029dc:	f380 8811 	msr	BASEPRI, r0
 80029e0:	b002      	add	sp, #8
 80029e2:	bd80      	pop	{r7, pc}

080029e4 <BSP_COM_Init>:
 80029e4:	b580      	push	{r7, lr}
 80029e6:	466f      	mov	r7, sp
 80029e8:	b092      	sub	sp, #72	; 0x48
 80029ea:	460a      	mov	r2, r1
 80029ec:	4603      	mov	r3, r0
 80029ee:	9011      	str	r0, [sp, #68]	; 0x44
 80029f0:	9110      	str	r1, [sp, #64]	; 0x40
 80029f2:	9207      	str	r2, [sp, #28]
 80029f4:	9306      	str	r3, [sp, #24]
 80029f6:	e7ff      	b.n	80029f8 <BSP_COM_Init+0x14>
 80029f8:	9811      	ldr	r0, [sp, #68]	; 0x44
 80029fa:	2800      	cmp	r0, #0
 80029fc:	d111      	bne.n	8002a22 <BSP_COM_Init+0x3e>
 80029fe:	e7ff      	b.n	8002a00 <BSP_COM_Init+0x1c>
 8002a00:	e7ff      	b.n	8002a02 <BSP_COM_Init+0x1e>
 8002a02:	f241 004c 	movw	r0, #4172	; 0x104c
 8002a06:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002a0a:	6801      	ldr	r1, [r0, #0]
 8002a0c:	f041 0102 	orr.w	r1, r1, #2
 8002a10:	6001      	str	r1, [r0, #0]
 8002a12:	6800      	ldr	r0, [r0, #0]
 8002a14:	f000 0002 	and.w	r0, r0, #2
 8002a18:	900a      	str	r0, [sp, #40]	; 0x28
 8002a1a:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002a1c:	9005      	str	r0, [sp, #20]
 8002a1e:	e7ff      	b.n	8002a20 <BSP_COM_Init+0x3c>
 8002a20:	e7ff      	b.n	8002a22 <BSP_COM_Init+0x3e>
 8002a22:	e7ff      	b.n	8002a24 <BSP_COM_Init+0x40>
 8002a24:	e7ff      	b.n	8002a26 <BSP_COM_Init+0x42>
 8002a26:	9811      	ldr	r0, [sp, #68]	; 0x44
 8002a28:	2800      	cmp	r0, #0
 8002a2a:	d111      	bne.n	8002a50 <BSP_COM_Init+0x6c>
 8002a2c:	e7ff      	b.n	8002a2e <BSP_COM_Init+0x4a>
 8002a2e:	e7ff      	b.n	8002a30 <BSP_COM_Init+0x4c>
 8002a30:	f241 004c 	movw	r0, #4172	; 0x104c
 8002a34:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002a38:	6801      	ldr	r1, [r0, #0]
 8002a3a:	f041 0102 	orr.w	r1, r1, #2
 8002a3e:	6001      	str	r1, [r0, #0]
 8002a40:	6800      	ldr	r0, [r0, #0]
 8002a42:	f000 0002 	and.w	r0, r0, #2
 8002a46:	9009      	str	r0, [sp, #36]	; 0x24
 8002a48:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002a4a:	9004      	str	r0, [sp, #16]
 8002a4c:	e7ff      	b.n	8002a4e <BSP_COM_Init+0x6a>
 8002a4e:	e7ff      	b.n	8002a50 <BSP_COM_Init+0x6c>
 8002a50:	e7ff      	b.n	8002a52 <BSP_COM_Init+0x6e>
 8002a52:	e7ff      	b.n	8002a54 <BSP_COM_Init+0x70>
 8002a54:	9811      	ldr	r0, [sp, #68]	; 0x44
 8002a56:	2800      	cmp	r0, #0
 8002a58:	d111      	bne.n	8002a7e <BSP_COM_Init+0x9a>
 8002a5a:	e7ff      	b.n	8002a5c <BSP_COM_Init+0x78>
 8002a5c:	e7ff      	b.n	8002a5e <BSP_COM_Init+0x7a>
 8002a5e:	f241 0060 	movw	r0, #4192	; 0x1060
 8002a62:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002a66:	6801      	ldr	r1, [r0, #0]
 8002a68:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8002a6c:	6001      	str	r1, [r0, #0]
 8002a6e:	6800      	ldr	r0, [r0, #0]
 8002a70:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8002a74:	9008      	str	r0, [sp, #32]
 8002a76:	9808      	ldr	r0, [sp, #32]
 8002a78:	9003      	str	r0, [sp, #12]
 8002a7a:	e7ff      	b.n	8002a7c <BSP_COM_Init+0x98>
 8002a7c:	e7ff      	b.n	8002a7e <BSP_COM_Init+0x9a>
 8002a7e:	e7ff      	b.n	8002a80 <BSP_COM_Init+0x9c>
 8002a80:	9811      	ldr	r0, [sp, #68]	; 0x44
 8002a82:	f647 21f0 	movw	r1, #31472	; 0x7af0
 8002a86:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002a8a:	f831 0010 	ldrh.w	r0, [r1, r0, lsl #1]
 8002a8e:	900b      	str	r0, [sp, #44]	; 0x2c
 8002a90:	2002      	movs	r0, #2
 8002a92:	900c      	str	r0, [sp, #48]	; 0x30
 8002a94:	900e      	str	r0, [sp, #56]	; 0x38
 8002a96:	2100      	movs	r1, #0
 8002a98:	910d      	str	r1, [sp, #52]	; 0x34
 8002a9a:	9911      	ldr	r1, [sp, #68]	; 0x44
 8002a9c:	f647 22f4 	movw	r2, #31476	; 0x7af4
 8002aa0:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002aa4:	f832 1011 	ldrh.w	r1, [r2, r1, lsl #1]
 8002aa8:	910f      	str	r1, [sp, #60]	; 0x3c
 8002aaa:	9911      	ldr	r1, [sp, #68]	; 0x44
 8002aac:	f240 020c 	movw	r2, #12
 8002ab0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002ab4:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002ab8:	aa0b      	add	r2, sp, #44	; 0x2c
 8002aba:	9002      	str	r0, [sp, #8]
 8002abc:	4608      	mov	r0, r1
 8002abe:	4611      	mov	r1, r2
 8002ac0:	9201      	str	r2, [sp, #4]
 8002ac2:	f7fe fb25 	bl	8001110 <HAL_GPIO_Init>
 8002ac6:	9811      	ldr	r0, [sp, #68]	; 0x44
 8002ac8:	f647 21f2 	movw	r1, #31474	; 0x7af2
 8002acc:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002ad0:	f831 0010 	ldrh.w	r0, [r1, r0, lsl #1]
 8002ad4:	900b      	str	r0, [sp, #44]	; 0x2c
 8002ad6:	9802      	ldr	r0, [sp, #8]
 8002ad8:	900c      	str	r0, [sp, #48]	; 0x30
 8002ada:	9911      	ldr	r1, [sp, #68]	; 0x44
 8002adc:	f647 22f6 	movw	r2, #31478	; 0x7af6
 8002ae0:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002ae4:	f832 1011 	ldrh.w	r1, [r2, r1, lsl #1]
 8002ae8:	910f      	str	r1, [sp, #60]	; 0x3c
 8002aea:	9911      	ldr	r1, [sp, #68]	; 0x44
 8002aec:	f240 0210 	movw	r2, #16
 8002af0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002af4:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8002af8:	9901      	ldr	r1, [sp, #4]
 8002afa:	f7fe fb09 	bl	8001110 <HAL_GPIO_Init>
 8002afe:	9811      	ldr	r0, [sp, #68]	; 0x44
 8002b00:	f240 0108 	movw	r1, #8
 8002b04:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002b08:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8002b0c:	9910      	ldr	r1, [sp, #64]	; 0x40
 8002b0e:	6008      	str	r0, [r1, #0]
 8002b10:	9810      	ldr	r0, [sp, #64]	; 0x40
 8002b12:	f7fe ff9a 	bl	8001a4a <HAL_UART_Init>
 8002b16:	9000      	str	r0, [sp, #0]
 8002b18:	b012      	add	sp, #72	; 0x48
 8002b1a:	bd80      	pop	{r7, pc}

08002b1c <__io_putchar>:
 8002b1c:	b580      	push	{r7, lr}
 8002b1e:	466f      	mov	r7, sp
 8002b20:	b084      	sub	sp, #16
 8002b22:	4601      	mov	r1, r0
 8002b24:	9003      	str	r0, [sp, #12]
 8002b26:	f640 3010 	movw	r0, #2832	; 0xb10
 8002b2a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002b2e:	aa03      	add	r2, sp, #12
 8002b30:	2301      	movs	r3, #1
 8002b32:	f64f 7cff 	movw	ip, #65535	; 0xffff
 8002b36:	9102      	str	r1, [sp, #8]
 8002b38:	4611      	mov	r1, r2
 8002b3a:	461a      	mov	r2, r3
 8002b3c:	4663      	mov	r3, ip
 8002b3e:	f7ff fbfc 	bl	800233a <HAL_UART_Transmit>
 8002b42:	9903      	ldr	r1, [sp, #12]
 8002b44:	9001      	str	r0, [sp, #4]
 8002b46:	4608      	mov	r0, r1
 8002b48:	b004      	add	sp, #16
 8002b4a:	bd80      	pop	{r7, pc}

08002b4c <main>:
 8002b4c:	b580      	push	{r7, lr}
 8002b4e:	466f      	mov	r7, sp
 8002b50:	b084      	sub	sp, #16
 8002b52:	2000      	movs	r0, #0
 8002b54:	9003      	str	r0, [sp, #12]
 8002b56:	9002      	str	r0, [sp, #8]
 8002b58:	f000 f80c 	bl	8002b74 <Console_UART_Init>
 8002b5c:	f647 3040 	movw	r0, #31552	; 0x7b40
 8002b60:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002b64:	f000 f9ba 	bl	8002edc <printf>
 8002b68:	f8dd e008 	ldr.w	lr, [sp, #8]
 8002b6c:	9001      	str	r0, [sp, #4]
 8002b6e:	4670      	mov	r0, lr
 8002b70:	b004      	add	sp, #16
 8002b72:	bd80      	pop	{r7, pc}

08002b74 <Console_UART_Init>:
 8002b74:	b580      	push	{r7, lr}
 8002b76:	466f      	mov	r7, sp
 8002b78:	b082      	sub	sp, #8
 8002b7a:	f640 3010 	movw	r0, #2832	; 0xb10
 8002b7e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002b82:	f643 0100 	movw	r1, #14336	; 0x3800
 8002b86:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8002b8a:	6001      	str	r1, [r0, #0]
 8002b8c:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 8002b90:	6041      	str	r1, [r0, #4]
 8002b92:	2100      	movs	r1, #0
 8002b94:	6081      	str	r1, [r0, #8]
 8002b96:	60c1      	str	r1, [r0, #12]
 8002b98:	6101      	str	r1, [r0, #16]
 8002b9a:	220c      	movs	r2, #12
 8002b9c:	6142      	str	r2, [r0, #20]
 8002b9e:	6181      	str	r1, [r0, #24]
 8002ba0:	61c1      	str	r1, [r0, #28]
 8002ba2:	6201      	str	r1, [r0, #32]
 8002ba4:	6241      	str	r1, [r0, #36]	; 0x24
 8002ba6:	9001      	str	r0, [sp, #4]
 8002ba8:	4608      	mov	r0, r1
 8002baa:	9901      	ldr	r1, [sp, #4]
 8002bac:	f7ff ff1a 	bl	80029e4 <BSP_COM_Init>
 8002bb0:	b002      	add	sp, #8
 8002bb2:	bd80      	pop	{r7, pc}

08002bb4 <SysTick_Handler>:
 8002bb4:	b580      	push	{r7, lr}
 8002bb6:	466f      	mov	r7, sp
 8002bb8:	f7fe fa96 	bl	80010e8 <HAL_IncTick>
 8002bbc:	f7fe faa2 	bl	8001104 <HAL_SYSTICK_IRQHandler>
 8002bc0:	f7ff fcba 	bl	8002538 <osSystickHandler>
 8002bc4:	bd80      	pop	{r7, pc}

08002bc6 <_read>:
 8002bc6:	b580      	push	{r7, lr}
 8002bc8:	466f      	mov	r7, sp
 8002bca:	b088      	sub	sp, #32
 8002bcc:	4613      	mov	r3, r2
 8002bce:	468c      	mov	ip, r1
 8002bd0:	4686      	mov	lr, r0
 8002bd2:	9007      	str	r0, [sp, #28]
 8002bd4:	9106      	str	r1, [sp, #24]
 8002bd6:	9205      	str	r2, [sp, #20]
 8002bd8:	2000      	movs	r0, #0
 8002bda:	9004      	str	r0, [sp, #16]
 8002bdc:	9303      	str	r3, [sp, #12]
 8002bde:	f8cd c008 	str.w	ip, [sp, #8]
 8002be2:	f8cd e004 	str.w	lr, [sp, #4]
 8002be6:	e7ff      	b.n	8002be8 <_read+0x22>
 8002be8:	9804      	ldr	r0, [sp, #16]
 8002bea:	9905      	ldr	r1, [sp, #20]
 8002bec:	4288      	cmp	r0, r1
 8002bee:	da0e      	bge.n	8002c0e <_read+0x48>
 8002bf0:	e7ff      	b.n	8002bf2 <_read+0x2c>
 8002bf2:	f3af 8000 	nop.w
 8002bf6:	f8dd e018 	ldr.w	lr, [sp, #24]
 8002bfa:	f10e 0101 	add.w	r1, lr, #1
 8002bfe:	9106      	str	r1, [sp, #24]
 8002c00:	f88e 0000 	strb.w	r0, [lr]
 8002c04:	e7ff      	b.n	8002c06 <_read+0x40>
 8002c06:	9804      	ldr	r0, [sp, #16]
 8002c08:	3001      	adds	r0, #1
 8002c0a:	9004      	str	r0, [sp, #16]
 8002c0c:	e7ec      	b.n	8002be8 <_read+0x22>
 8002c0e:	9805      	ldr	r0, [sp, #20]
 8002c10:	b008      	add	sp, #32
 8002c12:	bd80      	pop	{r7, pc}

08002c14 <_write>:
 8002c14:	b580      	push	{r7, lr}
 8002c16:	466f      	mov	r7, sp
 8002c18:	b088      	sub	sp, #32
 8002c1a:	4613      	mov	r3, r2
 8002c1c:	468c      	mov	ip, r1
 8002c1e:	4686      	mov	lr, r0
 8002c20:	9007      	str	r0, [sp, #28]
 8002c22:	9106      	str	r1, [sp, #24]
 8002c24:	9205      	str	r2, [sp, #20]
 8002c26:	2000      	movs	r0, #0
 8002c28:	9004      	str	r0, [sp, #16]
 8002c2a:	9303      	str	r3, [sp, #12]
 8002c2c:	f8cd c008 	str.w	ip, [sp, #8]
 8002c30:	f8cd e004 	str.w	lr, [sp, #4]
 8002c34:	e7ff      	b.n	8002c36 <_write+0x22>
 8002c36:	9804      	ldr	r0, [sp, #16]
 8002c38:	9905      	ldr	r1, [sp, #20]
 8002c3a:	4288      	cmp	r0, r1
 8002c3c:	da0c      	bge.n	8002c58 <_write+0x44>
 8002c3e:	e7ff      	b.n	8002c40 <_write+0x2c>
 8002c40:	9806      	ldr	r0, [sp, #24]
 8002c42:	1c41      	adds	r1, r0, #1
 8002c44:	9106      	str	r1, [sp, #24]
 8002c46:	7800      	ldrb	r0, [r0, #0]
 8002c48:	f7ff ff68 	bl	8002b1c <__io_putchar>
 8002c4c:	9000      	str	r0, [sp, #0]
 8002c4e:	e7ff      	b.n	8002c50 <_write+0x3c>
 8002c50:	9804      	ldr	r0, [sp, #16]
 8002c52:	3001      	adds	r0, #1
 8002c54:	9004      	str	r0, [sp, #16]
 8002c56:	e7ee      	b.n	8002c36 <_write+0x22>
 8002c58:	9805      	ldr	r0, [sp, #20]
 8002c5a:	b008      	add	sp, #32
 8002c5c:	bd80      	pop	{r7, pc}

08002c5e <_sbrk>:
 8002c5e:	b580      	push	{r7, lr}
 8002c60:	466f      	mov	r7, sp
 8002c62:	b084      	sub	sp, #16
 8002c64:	4601      	mov	r1, r0
 8002c66:	9002      	str	r0, [sp, #8]
 8002c68:	f640 3094 	movw	r0, #2964	; 0xb94
 8002c6c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c70:	6800      	ldr	r0, [r0, #0]
 8002c72:	2800      	cmp	r0, #0
 8002c74:	9100      	str	r1, [sp, #0]
 8002c76:	d10a      	bne.n	8002c8e <_sbrk+0x30>
 8002c78:	e7ff      	b.n	8002c7a <_sbrk+0x1c>
 8002c7a:	f640 3094 	movw	r0, #2964	; 0xb94
 8002c7e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c82:	f640 4140 	movw	r1, #3136	; 0xc40
 8002c86:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002c8a:	6001      	str	r1, [r0, #0]
 8002c8c:	e7ff      	b.n	8002c8e <_sbrk+0x30>
 8002c8e:	f640 3094 	movw	r0, #2964	; 0xb94
 8002c92:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c96:	6801      	ldr	r1, [r0, #0]
 8002c98:	9101      	str	r1, [sp, #4]
 8002c9a:	6800      	ldr	r0, [r0, #0]
 8002c9c:	9902      	ldr	r1, [sp, #8]
 8002c9e:	4408      	add	r0, r1
 8002ca0:	4669      	mov	r1, sp
 8002ca2:	4288      	cmp	r0, r1
 8002ca4:	d90a      	bls.n	8002cbc <_sbrk+0x5e>
 8002ca6:	e7ff      	b.n	8002ca8 <_sbrk+0x4a>
 8002ca8:	f000 f8a4 	bl	8002df4 <__errno>
 8002cac:	f04f 0e0c 	mov.w	lr, #12
 8002cb0:	f8c0 e000 	str.w	lr, [r0]
 8002cb4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002cb8:	9003      	str	r0, [sp, #12]
 8002cba:	e00a      	b.n	8002cd2 <_sbrk+0x74>
 8002cbc:	9802      	ldr	r0, [sp, #8]
 8002cbe:	f640 3194 	movw	r1, #2964	; 0xb94
 8002cc2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002cc6:	680a      	ldr	r2, [r1, #0]
 8002cc8:	4410      	add	r0, r2
 8002cca:	6008      	str	r0, [r1, #0]
 8002ccc:	9801      	ldr	r0, [sp, #4]
 8002cce:	9003      	str	r0, [sp, #12]
 8002cd0:	e7ff      	b.n	8002cd2 <_sbrk+0x74>
 8002cd2:	9803      	ldr	r0, [sp, #12]
 8002cd4:	b004      	add	sp, #16
 8002cd6:	bd80      	pop	{r7, pc}

08002cd8 <_close>:
 8002cd8:	b082      	sub	sp, #8
 8002cda:	4601      	mov	r1, r0
 8002cdc:	9001      	str	r0, [sp, #4]
 8002cde:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002ce2:	9100      	str	r1, [sp, #0]
 8002ce4:	b002      	add	sp, #8
 8002ce6:	4770      	bx	lr

08002ce8 <_fstat>:
 8002ce8:	b084      	sub	sp, #16
 8002cea:	460a      	mov	r2, r1
 8002cec:	4603      	mov	r3, r0
 8002cee:	9003      	str	r0, [sp, #12]
 8002cf0:	9102      	str	r1, [sp, #8]
 8002cf2:	9802      	ldr	r0, [sp, #8]
 8002cf4:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8002cf8:	6041      	str	r1, [r0, #4]
 8002cfa:	2000      	movs	r0, #0
 8002cfc:	9201      	str	r2, [sp, #4]
 8002cfe:	9300      	str	r3, [sp, #0]
 8002d00:	b004      	add	sp, #16
 8002d02:	4770      	bx	lr

08002d04 <_isatty>:
 8002d04:	b082      	sub	sp, #8
 8002d06:	4601      	mov	r1, r0
 8002d08:	9001      	str	r0, [sp, #4]
 8002d0a:	2001      	movs	r0, #1
 8002d0c:	9100      	str	r1, [sp, #0]
 8002d0e:	b002      	add	sp, #8
 8002d10:	4770      	bx	lr

08002d12 <_lseek>:
 8002d12:	b580      	push	{r7, lr}
 8002d14:	466f      	mov	r7, sp
 8002d16:	b086      	sub	sp, #24
 8002d18:	4613      	mov	r3, r2
 8002d1a:	468c      	mov	ip, r1
 8002d1c:	4686      	mov	lr, r0
 8002d1e:	9005      	str	r0, [sp, #20]
 8002d20:	9104      	str	r1, [sp, #16]
 8002d22:	9203      	str	r2, [sp, #12]
 8002d24:	2000      	movs	r0, #0
 8002d26:	9302      	str	r3, [sp, #8]
 8002d28:	f8cd c004 	str.w	ip, [sp, #4]
 8002d2c:	f8cd e000 	str.w	lr, [sp]
 8002d30:	b006      	add	sp, #24
 8002d32:	bd80      	pop	{r7, pc}

08002d34 <SystemInit>:
 8002d34:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002d38:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002d3c:	6801      	ldr	r1, [r0, #0]
 8002d3e:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002d42:	6001      	str	r1, [r0, #0]
 8002d44:	f241 0000 	movw	r0, #4096	; 0x1000
 8002d48:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002d4c:	6801      	ldr	r1, [r0, #0]
 8002d4e:	f041 0101 	orr.w	r1, r1, #1
 8002d52:	6001      	str	r1, [r0, #0]
 8002d54:	f241 0108 	movw	r1, #4104	; 0x1008
 8002d58:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002d5c:	2200      	movs	r2, #0
 8002d5e:	600a      	str	r2, [r1, #0]
 8002d60:	6801      	ldr	r1, [r0, #0]
 8002d62:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002d66:	f6ce 23f6 	movt	r3, #60150	; 0xeaf6
 8002d6a:	4019      	ands	r1, r3
 8002d6c:	6001      	str	r1, [r0, #0]
 8002d6e:	f241 010c 	movw	r1, #4108	; 0x100c
 8002d72:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002d76:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002d7a:	600b      	str	r3, [r1, #0]
 8002d7c:	6801      	ldr	r1, [r0, #0]
 8002d7e:	f421 2180 	bic.w	r1, r1, #262144	; 0x40000
 8002d82:	6001      	str	r1, [r0, #0]
 8002d84:	f241 0018 	movw	r0, #4120	; 0x1018
 8002d88:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002d8c:	6002      	str	r2, [r0, #0]
 8002d8e:	f64e 5008 	movw	r0, #60680	; 0xed08
 8002d92:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002d96:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002d9a:	6001      	str	r1, [r0, #0]
 8002d9c:	4770      	bx	lr
	...

08002da0 <Reset_Handler>:
 8002da0:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002dd8 <LoopForever+0x2>
 8002da4:	2100      	movs	r1, #0
 8002da6:	e003      	b.n	8002db0 <LoopCopyDataInit>

08002da8 <CopyDataInit>:
 8002da8:	4b0c      	ldr	r3, [pc, #48]	; (8002ddc <LoopForever+0x6>)
 8002daa:	585b      	ldr	r3, [r3, r1]
 8002dac:	5043      	str	r3, [r0, r1]
 8002dae:	3104      	adds	r1, #4

08002db0 <LoopCopyDataInit>:
 8002db0:	480b      	ldr	r0, [pc, #44]	; (8002de0 <LoopForever+0xa>)
 8002db2:	4b0c      	ldr	r3, [pc, #48]	; (8002de4 <LoopForever+0xe>)
 8002db4:	1842      	adds	r2, r0, r1
 8002db6:	429a      	cmp	r2, r3
 8002db8:	d3f6      	bcc.n	8002da8 <CopyDataInit>
 8002dba:	4a0b      	ldr	r2, [pc, #44]	; (8002de8 <LoopForever+0x12>)
 8002dbc:	e002      	b.n	8002dc4 <LoopFillZerobss>

08002dbe <FillZerobss>:
 8002dbe:	2300      	movs	r3, #0
 8002dc0:	f842 3b04 	str.w	r3, [r2], #4

08002dc4 <LoopFillZerobss>:
 8002dc4:	4b09      	ldr	r3, [pc, #36]	; (8002dec <LoopForever+0x16>)
 8002dc6:	429a      	cmp	r2, r3
 8002dc8:	d3f9      	bcc.n	8002dbe <FillZerobss>
 8002dca:	f7ff ffb3 	bl	8002d34 <SystemInit>
 8002dce:	f000 f817 	bl	8002e00 <__libc_init_array>
 8002dd2:	f7ff febb 	bl	8002b4c <main>

08002dd6 <LoopForever>:
 8002dd6:	e7fe      	b.n	8002dd6 <LoopForever>
 8002dd8:	20018000 	.word	0x20018000
 8002ddc:	08007de8 	.word	0x08007de8
 8002de0:	20000000 	.word	0x20000000
 8002de4:	200009c8 	.word	0x200009c8
 8002de8:	200009c8 	.word	0x200009c8
 8002dec:	20000c3c 	.word	0x20000c3c

08002df0 <ADC1_2_IRQHandler>:
 8002df0:	e7fe      	b.n	8002df0 <ADC1_2_IRQHandler>
	...

08002df4 <__errno>:
 8002df4:	4b01      	ldr	r3, [pc, #4]	; (8002dfc <__errno+0x8>)
 8002df6:	6818      	ldr	r0, [r3, #0]
 8002df8:	4770      	bx	lr
 8002dfa:	bf00      	nop
 8002dfc:	20000018 	.word	0x20000018

08002e00 <__libc_init_array>:
 8002e00:	b570      	push	{r4, r5, r6, lr}
 8002e02:	4e0d      	ldr	r6, [pc, #52]	; (8002e38 <__libc_init_array+0x38>)
 8002e04:	4d0d      	ldr	r5, [pc, #52]	; (8002e3c <__libc_init_array+0x3c>)
 8002e06:	1b76      	subs	r6, r6, r5
 8002e08:	10b6      	asrs	r6, r6, #2
 8002e0a:	d006      	beq.n	8002e1a <__libc_init_array+0x1a>
 8002e0c:	2400      	movs	r4, #0
 8002e0e:	3401      	adds	r4, #1
 8002e10:	f855 3b04 	ldr.w	r3, [r5], #4
 8002e14:	4798      	blx	r3
 8002e16:	42a6      	cmp	r6, r4
 8002e18:	d1f9      	bne.n	8002e0e <__libc_init_array+0xe>
 8002e1a:	4e09      	ldr	r6, [pc, #36]	; (8002e40 <__libc_init_array+0x40>)
 8002e1c:	4d09      	ldr	r5, [pc, #36]	; (8002e44 <__libc_init_array+0x44>)
 8002e1e:	1b76      	subs	r6, r6, r5
 8002e20:	f004 fe54 	bl	8007acc <_init>
 8002e24:	10b6      	asrs	r6, r6, #2
 8002e26:	d006      	beq.n	8002e36 <__libc_init_array+0x36>
 8002e28:	2400      	movs	r4, #0
 8002e2a:	3401      	adds	r4, #1
 8002e2c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002e30:	4798      	blx	r3
 8002e32:	42a6      	cmp	r6, r4
 8002e34:	d1f9      	bne.n	8002e2a <__libc_init_array+0x2a>
 8002e36:	bd70      	pop	{r4, r5, r6, pc}
 8002e38:	08007dd8 	.word	0x08007dd8
 8002e3c:	08007dd8 	.word	0x08007dd8
 8002e40:	08007de0 	.word	0x08007de0
 8002e44:	08007dd8 	.word	0x08007dd8

08002e48 <memset>:
 8002e48:	b4f0      	push	{r4, r5, r6, r7}
 8002e4a:	0786      	lsls	r6, r0, #30
 8002e4c:	d043      	beq.n	8002ed6 <memset+0x8e>
 8002e4e:	1e54      	subs	r4, r2, #1
 8002e50:	2a00      	cmp	r2, #0
 8002e52:	d03e      	beq.n	8002ed2 <memset+0x8a>
 8002e54:	b2ca      	uxtb	r2, r1
 8002e56:	4603      	mov	r3, r0
 8002e58:	e002      	b.n	8002e60 <memset+0x18>
 8002e5a:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002e5e:	d338      	bcc.n	8002ed2 <memset+0x8a>
 8002e60:	f803 2b01 	strb.w	r2, [r3], #1
 8002e64:	079d      	lsls	r5, r3, #30
 8002e66:	d1f8      	bne.n	8002e5a <memset+0x12>
 8002e68:	2c03      	cmp	r4, #3
 8002e6a:	d92b      	bls.n	8002ec4 <memset+0x7c>
 8002e6c:	b2cd      	uxtb	r5, r1
 8002e6e:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002e72:	2c0f      	cmp	r4, #15
 8002e74:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002e78:	d916      	bls.n	8002ea8 <memset+0x60>
 8002e7a:	f1a4 0710 	sub.w	r7, r4, #16
 8002e7e:	093f      	lsrs	r7, r7, #4
 8002e80:	f103 0620 	add.w	r6, r3, #32
 8002e84:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002e88:	f103 0210 	add.w	r2, r3, #16
 8002e8c:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002e90:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002e94:	3210      	adds	r2, #16
 8002e96:	42b2      	cmp	r2, r6
 8002e98:	d1f8      	bne.n	8002e8c <memset+0x44>
 8002e9a:	f004 040f 	and.w	r4, r4, #15
 8002e9e:	3701      	adds	r7, #1
 8002ea0:	2c03      	cmp	r4, #3
 8002ea2:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002ea6:	d90d      	bls.n	8002ec4 <memset+0x7c>
 8002ea8:	461e      	mov	r6, r3
 8002eaa:	4622      	mov	r2, r4
 8002eac:	3a04      	subs	r2, #4
 8002eae:	2a03      	cmp	r2, #3
 8002eb0:	f846 5b04 	str.w	r5, [r6], #4
 8002eb4:	d8fa      	bhi.n	8002eac <memset+0x64>
 8002eb6:	1f22      	subs	r2, r4, #4
 8002eb8:	f022 0203 	bic.w	r2, r2, #3
 8002ebc:	3204      	adds	r2, #4
 8002ebe:	4413      	add	r3, r2
 8002ec0:	f004 0403 	and.w	r4, r4, #3
 8002ec4:	b12c      	cbz	r4, 8002ed2 <memset+0x8a>
 8002ec6:	b2c9      	uxtb	r1, r1
 8002ec8:	441c      	add	r4, r3
 8002eca:	f803 1b01 	strb.w	r1, [r3], #1
 8002ece:	429c      	cmp	r4, r3
 8002ed0:	d1fb      	bne.n	8002eca <memset+0x82>
 8002ed2:	bcf0      	pop	{r4, r5, r6, r7}
 8002ed4:	4770      	bx	lr
 8002ed6:	4614      	mov	r4, r2
 8002ed8:	4603      	mov	r3, r0
 8002eda:	e7c5      	b.n	8002e68 <memset+0x20>

08002edc <printf>:
 8002edc:	b40f      	push	{r0, r1, r2, r3}
 8002ede:	b500      	push	{lr}
 8002ee0:	4907      	ldr	r1, [pc, #28]	; (8002f00 <printf+0x24>)
 8002ee2:	b083      	sub	sp, #12
 8002ee4:	ab04      	add	r3, sp, #16
 8002ee6:	6808      	ldr	r0, [r1, #0]
 8002ee8:	f853 2b04 	ldr.w	r2, [r3], #4
 8002eec:	6881      	ldr	r1, [r0, #8]
 8002eee:	9301      	str	r3, [sp, #4]
 8002ef0:	f000 f80a 	bl	8002f08 <_vfprintf_r>
 8002ef4:	b003      	add	sp, #12
 8002ef6:	f85d eb04 	ldr.w	lr, [sp], #4
 8002efa:	b004      	add	sp, #16
 8002efc:	4770      	bx	lr
 8002efe:	bf00      	nop
 8002f00:	20000018 	.word	0x20000018
 8002f04:	00000000 	.word	0x00000000

08002f08 <_vfprintf_r>:
 8002f08:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002f0c:	b0d7      	sub	sp, #348	; 0x15c
 8002f0e:	461c      	mov	r4, r3
 8002f10:	4689      	mov	r9, r1
 8002f12:	4617      	mov	r7, r2
 8002f14:	4605      	mov	r5, r0
 8002f16:	9003      	str	r0, [sp, #12]
 8002f18:	f003 f854 	bl	8005fc4 <_localeconv_r>
 8002f1c:	6803      	ldr	r3, [r0, #0]
 8002f1e:	9316      	str	r3, [sp, #88]	; 0x58
 8002f20:	4618      	mov	r0, r3
 8002f22:	f7fd fb8d 	bl	8000640 <strlen>
 8002f26:	9408      	str	r4, [sp, #32]
 8002f28:	9015      	str	r0, [sp, #84]	; 0x54
 8002f2a:	b11d      	cbz	r5, 8002f34 <_vfprintf_r+0x2c>
 8002f2c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002f2e:	2b00      	cmp	r3, #0
 8002f30:	f000 8107 	beq.w	8003142 <_vfprintf_r+0x23a>
 8002f34:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002f38:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002f3c:	07c8      	lsls	r0, r1, #31
 8002f3e:	b293      	uxth	r3, r2
 8002f40:	d402      	bmi.n	8002f48 <_vfprintf_r+0x40>
 8002f42:	0599      	lsls	r1, r3, #22
 8002f44:	f140 811f 	bpl.w	8003186 <_vfprintf_r+0x27e>
 8002f48:	049e      	lsls	r6, r3, #18
 8002f4a:	d40a      	bmi.n	8002f62 <_vfprintf_r+0x5a>
 8002f4c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002f50:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002f54:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002f58:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002f5c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002f60:	b29b      	uxth	r3, r3
 8002f62:	071d      	lsls	r5, r3, #28
 8002f64:	f140 80b2 	bpl.w	80030cc <_vfprintf_r+0x1c4>
 8002f68:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002f6c:	2a00      	cmp	r2, #0
 8002f6e:	f000 80ad 	beq.w	80030cc <_vfprintf_r+0x1c4>
 8002f72:	f003 021a 	and.w	r2, r3, #26
 8002f76:	2a0a      	cmp	r2, #10
 8002f78:	f000 80c9 	beq.w	800310e <_vfprintf_r+0x206>
 8002f7c:	2300      	movs	r3, #0
 8002f7e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8003198 <_vfprintf_r+0x290>
 8002f82:	9310      	str	r3, [sp, #64]	; 0x40
 8002f84:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002f88:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f8a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002f8e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002f90:	9318      	str	r3, [sp, #96]	; 0x60
 8002f92:	9305      	str	r3, [sp, #20]
 8002f94:	ab2d      	add	r3, sp, #180	; 0xb4
 8002f96:	932a      	str	r3, [sp, #168]	; 0xa8
 8002f98:	469b      	mov	fp, r3
 8002f9a:	783b      	ldrb	r3, [r7, #0]
 8002f9c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002fa0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002fa4:	2b00      	cmp	r3, #0
 8002fa6:	f000 8259 	beq.w	800345c <_vfprintf_r+0x554>
 8002faa:	2b25      	cmp	r3, #37	; 0x25
 8002fac:	463c      	mov	r4, r7
 8002fae:	d102      	bne.n	8002fb6 <_vfprintf_r+0xae>
 8002fb0:	e01d      	b.n	8002fee <_vfprintf_r+0xe6>
 8002fb2:	2b25      	cmp	r3, #37	; 0x25
 8002fb4:	d003      	beq.n	8002fbe <_vfprintf_r+0xb6>
 8002fb6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002fba:	2b00      	cmp	r3, #0
 8002fbc:	d1f9      	bne.n	8002fb2 <_vfprintf_r+0xaa>
 8002fbe:	1be5      	subs	r5, r4, r7
 8002fc0:	b18d      	cbz	r5, 8002fe6 <_vfprintf_r+0xde>
 8002fc2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002fc6:	3301      	adds	r3, #1
 8002fc8:	442a      	add	r2, r5
 8002fca:	2b07      	cmp	r3, #7
 8002fcc:	f8cb 7000 	str.w	r7, [fp]
 8002fd0:	f8cb 5004 	str.w	r5, [fp, #4]
 8002fd4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002fd8:	f300 80ca 	bgt.w	8003170 <_vfprintf_r+0x268>
 8002fdc:	f10b 0b08 	add.w	fp, fp, #8
 8002fe0:	9b05      	ldr	r3, [sp, #20]
 8002fe2:	442b      	add	r3, r5
 8002fe4:	9305      	str	r3, [sp, #20]
 8002fe6:	7823      	ldrb	r3, [r4, #0]
 8002fe8:	2b00      	cmp	r3, #0
 8002fea:	f000 8237 	beq.w	800345c <_vfprintf_r+0x554>
 8002fee:	2300      	movs	r3, #0
 8002ff0:	7866      	ldrb	r6, [r4, #1]
 8002ff2:	9306      	str	r3, [sp, #24]
 8002ff4:	4698      	mov	r8, r3
 8002ff6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ffa:	f104 0a01 	add.w	sl, r4, #1
 8002ffe:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8003002:	252b      	movs	r5, #43	; 0x2b
 8003004:	f10a 0a01 	add.w	sl, sl, #1
 8003008:	f1a6 0320 	sub.w	r3, r6, #32
 800300c:	2b5a      	cmp	r3, #90	; 0x5a
 800300e:	f200 842a 	bhi.w	8003866 <_vfprintf_r+0x95e>
 8003012:	e8df f013 	tbh	[pc, r3, lsl #1]
 8003016:	03aa      	.short	0x03aa
 8003018:	04280428 	.word	0x04280428
 800301c:	0428029c 	.word	0x0428029c
 8003020:	04280428 	.word	0x04280428
 8003024:	042802a7 	.word	0x042802a7
 8003028:	02c60428 	.word	0x02c60428
 800302c:	042802d2 	.word	0x042802d2
 8003030:	02dc02d7 	.word	0x02dc02d7
 8003034:	02f60428 	.word	0x02f60428
 8003038:	026d026d 	.word	0x026d026d
 800303c:	026d026d 	.word	0x026d026d
 8003040:	026d026d 	.word	0x026d026d
 8003044:	026d026d 	.word	0x026d026d
 8003048:	0428026d 	.word	0x0428026d
 800304c:	04280428 	.word	0x04280428
 8003050:	04280428 	.word	0x04280428
 8003054:	04280428 	.word	0x04280428
 8003058:	042802fb 	.word	0x042802fb
 800305c:	03f3033c 	.word	0x03f3033c
 8003060:	02fb02fb 	.word	0x02fb02fb
 8003064:	042802fb 	.word	0x042802fb
 8003068:	04280428 	.word	0x04280428
 800306c:	03ee0428 	.word	0x03ee0428
 8003070:	04280428 	.word	0x04280428
 8003074:	0428009a 	.word	0x0428009a
 8003078:	04280428 	.word	0x04280428
 800307c:	04280350 	.word	0x04280350
 8003080:	04280379 	.word	0x04280379
 8003084:	03900428 	.word	0x03900428
 8003088:	04280428 	.word	0x04280428
 800308c:	04280428 	.word	0x04280428
 8003090:	04280428 	.word	0x04280428
 8003094:	04280428 	.word	0x04280428
 8003098:	042802fb 	.word	0x042802fb
 800309c:	00c5033c 	.word	0x00c5033c
 80030a0:	02fb02fb 	.word	0x02fb02fb
 80030a4:	03d102fb 	.word	0x03d102fb
 80030a8:	007000c5 	.word	0x007000c5
 80030ac:	03b50428 	.word	0x03b50428
 80030b0:	03c20428 	.word	0x03c20428
 80030b4:	03de009c 	.word	0x03de009c
 80030b8:	04280070 	.word	0x04280070
 80030bc:	00720350 	.word	0x00720350
 80030c0:	0428022c 	.word	0x0428022c
 80030c4:	027c0428 	.word	0x027c0428
 80030c8:	00720428 	.word	0x00720428
 80030cc:	4649      	mov	r1, r9
 80030ce:	9803      	ldr	r0, [sp, #12]
 80030d0:	f001 fc9a 	bl	8004a08 <__swsetup_r>
 80030d4:	b1a0      	cbz	r0, 8003100 <_vfprintf_r+0x1f8>
 80030d6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80030da:	07d8      	lsls	r0, r3, #31
 80030dc:	d404      	bmi.n	80030e8 <_vfprintf_r+0x1e0>
 80030de:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80030e2:	0599      	lsls	r1, r3, #22
 80030e4:	f140 83b7 	bpl.w	8003856 <_vfprintf_r+0x94e>
 80030e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80030ec:	9305      	str	r3, [sp, #20]
 80030ee:	9805      	ldr	r0, [sp, #20]
 80030f0:	b057      	add	sp, #348	; 0x15c
 80030f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80030f6:	f048 0820 	orr.w	r8, r8, #32
 80030fa:	f89a 6000 	ldrb.w	r6, [sl]
 80030fe:	e781      	b.n	8003004 <_vfprintf_r+0xfc>
 8003100:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003104:	f003 021a 	and.w	r2, r3, #26
 8003108:	2a0a      	cmp	r2, #10
 800310a:	f47f af37 	bne.w	8002f7c <_vfprintf_r+0x74>
 800310e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8003112:	2a00      	cmp	r2, #0
 8003114:	f6ff af32 	blt.w	8002f7c <_vfprintf_r+0x74>
 8003118:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800311c:	07d2      	lsls	r2, r2, #31
 800311e:	d405      	bmi.n	800312c <_vfprintf_r+0x224>
 8003120:	059b      	lsls	r3, r3, #22
 8003122:	d403      	bmi.n	800312c <_vfprintf_r+0x224>
 8003124:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003128:	f002 ff60 	bl	8005fec <__retarget_lock_release_recursive>
 800312c:	4623      	mov	r3, r4
 800312e:	463a      	mov	r2, r7
 8003130:	4649      	mov	r1, r9
 8003132:	9803      	ldr	r0, [sp, #12]
 8003134:	f001 fc26 	bl	8004984 <__sbprintf>
 8003138:	9005      	str	r0, [sp, #20]
 800313a:	9805      	ldr	r0, [sp, #20]
 800313c:	b057      	add	sp, #348	; 0x15c
 800313e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003142:	9803      	ldr	r0, [sp, #12]
 8003144:	f002 fd7e 	bl	8005c44 <__sinit>
 8003148:	e6f4      	b.n	8002f34 <_vfprintf_r+0x2c>
 800314a:	f048 0810 	orr.w	r8, r8, #16
 800314e:	f018 0f20 	tst.w	r8, #32
 8003152:	f000 836c 	beq.w	800382e <_vfprintf_r+0x926>
 8003156:	9c08      	ldr	r4, [sp, #32]
 8003158:	3407      	adds	r4, #7
 800315a:	f024 0307 	bic.w	r3, r4, #7
 800315e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003162:	f103 0208 	add.w	r2, r3, #8
 8003166:	9208      	str	r2, [sp, #32]
 8003168:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800316c:	2200      	movs	r2, #0
 800316e:	e18c      	b.n	800348a <_vfprintf_r+0x582>
 8003170:	aa2a      	add	r2, sp, #168	; 0xa8
 8003172:	9907      	ldr	r1, [sp, #28]
 8003174:	9803      	ldr	r0, [sp, #12]
 8003176:	f003 fe65 	bl	8006e44 <__sprint_r>
 800317a:	2800      	cmp	r0, #0
 800317c:	f041 8376 	bne.w	800486c <_vfprintf_r+0x1964>
 8003180:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003184:	e72c      	b.n	8002fe0 <_vfprintf_r+0xd8>
 8003186:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800318a:	f002 ff2d 	bl	8005fe8 <__retarget_lock_acquire_recursive>
 800318e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8003192:	b293      	uxth	r3, r2
 8003194:	e6d8      	b.n	8002f48 <_vfprintf_r+0x40>
 8003196:	bf00      	nop
	...
 80031a0:	4643      	mov	r3, r8
 80031a2:	069f      	lsls	r7, r3, #26
 80031a4:	f140 832f 	bpl.w	8003806 <_vfprintf_r+0x8fe>
 80031a8:	9c08      	ldr	r4, [sp, #32]
 80031aa:	3407      	adds	r4, #7
 80031ac:	f024 0407 	bic.w	r4, r4, #7
 80031b0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80031b4:	f104 0208 	add.w	r2, r4, #8
 80031b8:	9208      	str	r2, [sp, #32]
 80031ba:	4604      	mov	r4, r0
 80031bc:	460d      	mov	r5, r1
 80031be:	2800      	cmp	r0, #0
 80031c0:	f171 0200 	sbcs.w	r2, r1, #0
 80031c4:	da05      	bge.n	80031d2 <_vfprintf_r+0x2ca>
 80031c6:	222d      	movs	r2, #45	; 0x2d
 80031c8:	4264      	negs	r4, r4
 80031ca:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80031ce:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80031d2:	aa56      	add	r2, sp, #344	; 0x158
 80031d4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80031d8:	9204      	str	r2, [sp, #16]
 80031da:	f000 84b2 	beq.w	8003b42 <_vfprintf_r+0xc3a>
 80031de:	2201      	movs	r2, #1
 80031e0:	ea54 0105 	orrs.w	r1, r4, r5
 80031e4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80031e8:	f040 8159 	bne.w	800349e <_vfprintf_r+0x596>
 80031ec:	f1b9 0f00 	cmp.w	r9, #0
 80031f0:	f040 8619 	bne.w	8003e26 <_vfprintf_r+0xf1e>
 80031f4:	2a00      	cmp	r2, #0
 80031f6:	f040 8508 	bne.w	8003c0a <_vfprintf_r+0xd02>
 80031fa:	f013 0301 	ands.w	r3, r3, #1
 80031fe:	af56      	add	r7, sp, #344	; 0x158
 8003200:	9309      	str	r3, [sp, #36]	; 0x24
 8003202:	d002      	beq.n	800320a <_vfprintf_r+0x302>
 8003204:	2330      	movs	r3, #48	; 0x30
 8003206:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800320a:	2300      	movs	r3, #0
 800320c:	930a      	str	r3, [sp, #40]	; 0x28
 800320e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003210:	9314      	str	r3, [sp, #80]	; 0x50
 8003212:	9311      	str	r3, [sp, #68]	; 0x44
 8003214:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003216:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800321a:	454b      	cmp	r3, r9
 800321c:	bfb8      	it	lt
 800321e:	464b      	movlt	r3, r9
 8003220:	9304      	str	r3, [sp, #16]
 8003222:	b112      	cbz	r2, 800322a <_vfprintf_r+0x322>
 8003224:	9b04      	ldr	r3, [sp, #16]
 8003226:	3301      	adds	r3, #1
 8003228:	9304      	str	r3, [sp, #16]
 800322a:	f018 0302 	ands.w	r3, r8, #2
 800322e:	930b      	str	r3, [sp, #44]	; 0x2c
 8003230:	d002      	beq.n	8003238 <_vfprintf_r+0x330>
 8003232:	9b04      	ldr	r3, [sp, #16]
 8003234:	3302      	adds	r3, #2
 8003236:	9304      	str	r3, [sp, #16]
 8003238:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800323c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800323e:	930e      	str	r3, [sp, #56]	; 0x38
 8003240:	d13f      	bne.n	80032c2 <_vfprintf_r+0x3ba>
 8003242:	9b06      	ldr	r3, [sp, #24]
 8003244:	9904      	ldr	r1, [sp, #16]
 8003246:	1a5d      	subs	r5, r3, r1
 8003248:	2d00      	cmp	r5, #0
 800324a:	dd3a      	ble.n	80032c2 <_vfprintf_r+0x3ba>
 800324c:	2d10      	cmp	r5, #16
 800324e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003250:	dd29      	ble.n	80032a6 <_vfprintf_r+0x39e>
 8003252:	4659      	mov	r1, fp
 8003254:	4620      	mov	r0, r4
 8003256:	9620      	str	r6, [sp, #128]	; 0x80
 8003258:	2310      	movs	r3, #16
 800325a:	9c03      	ldr	r4, [sp, #12]
 800325c:	9e07      	ldr	r6, [sp, #28]
 800325e:	46bb      	mov	fp, r7
 8003260:	e004      	b.n	800326c <_vfprintf_r+0x364>
 8003262:	3d10      	subs	r5, #16
 8003264:	2d10      	cmp	r5, #16
 8003266:	f101 0108 	add.w	r1, r1, #8
 800326a:	dd18      	ble.n	800329e <_vfprintf_r+0x396>
 800326c:	3201      	adds	r2, #1
 800326e:	4fba      	ldr	r7, [pc, #744]	; (8003558 <_vfprintf_r+0x650>)
 8003270:	3010      	adds	r0, #16
 8003272:	2a07      	cmp	r2, #7
 8003274:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003278:	e9c1 7300 	strd	r7, r3, [r1]
 800327c:	ddf1      	ble.n	8003262 <_vfprintf_r+0x35a>
 800327e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003280:	4631      	mov	r1, r6
 8003282:	4620      	mov	r0, r4
 8003284:	930c      	str	r3, [sp, #48]	; 0x30
 8003286:	f003 fddd 	bl	8006e44 <__sprint_r>
 800328a:	2800      	cmp	r0, #0
 800328c:	f040 843d 	bne.w	8003b0a <_vfprintf_r+0xc02>
 8003290:	3d10      	subs	r5, #16
 8003292:	2d10      	cmp	r5, #16
 8003294:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003298:	a92d      	add	r1, sp, #180	; 0xb4
 800329a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800329c:	dce6      	bgt.n	800326c <_vfprintf_r+0x364>
 800329e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80032a0:	465f      	mov	r7, fp
 80032a2:	4604      	mov	r4, r0
 80032a4:	468b      	mov	fp, r1
 80032a6:	3201      	adds	r2, #1
 80032a8:	4bab      	ldr	r3, [pc, #684]	; (8003558 <_vfprintf_r+0x650>)
 80032aa:	442c      	add	r4, r5
 80032ac:	2a07      	cmp	r2, #7
 80032ae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80032b2:	e9cb 3500 	strd	r3, r5, [fp]
 80032b6:	f300 84ff 	bgt.w	8003cb8 <_vfprintf_r+0xdb0>
 80032ba:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80032be:	f10b 0b08 	add.w	fp, fp, #8
 80032c2:	b172      	cbz	r2, 80032e2 <_vfprintf_r+0x3da>
 80032c4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032c6:	3201      	adds	r2, #1
 80032c8:	3401      	adds	r4, #1
 80032ca:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80032ce:	2101      	movs	r1, #1
 80032d0:	2a07      	cmp	r2, #7
 80032d2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80032d6:	e9cb 0100 	strd	r0, r1, [fp]
 80032da:	f300 8418 	bgt.w	8003b0e <_vfprintf_r+0xc06>
 80032de:	f10b 0b08 	add.w	fp, fp, #8
 80032e2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80032e4:	b16b      	cbz	r3, 8003302 <_vfprintf_r+0x3fa>
 80032e6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032e8:	3301      	adds	r3, #1
 80032ea:	3402      	adds	r4, #2
 80032ec:	a923      	add	r1, sp, #140	; 0x8c
 80032ee:	2202      	movs	r2, #2
 80032f0:	2b07      	cmp	r3, #7
 80032f2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80032f6:	e9cb 1200 	strd	r1, r2, [fp]
 80032fa:	f300 8415 	bgt.w	8003b28 <_vfprintf_r+0xc20>
 80032fe:	f10b 0b08 	add.w	fp, fp, #8
 8003302:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003304:	2b80      	cmp	r3, #128	; 0x80
 8003306:	f000 8331 	beq.w	800396c <_vfprintf_r+0xa64>
 800330a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800330c:	eba9 0503 	sub.w	r5, r9, r3
 8003310:	2d00      	cmp	r5, #0
 8003312:	dd37      	ble.n	8003384 <_vfprintf_r+0x47c>
 8003314:	2d10      	cmp	r5, #16
 8003316:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003318:	4b90      	ldr	r3, [pc, #576]	; (800355c <_vfprintf_r+0x654>)
 800331a:	dd28      	ble.n	800336e <_vfprintf_r+0x466>
 800331c:	4659      	mov	r1, fp
 800331e:	4620      	mov	r0, r4
 8003320:	46bb      	mov	fp, r7
 8003322:	f04f 0910 	mov.w	r9, #16
 8003326:	4637      	mov	r7, r6
 8003328:	461c      	mov	r4, r3
 800332a:	9e07      	ldr	r6, [sp, #28]
 800332c:	e004      	b.n	8003338 <_vfprintf_r+0x430>
 800332e:	3d10      	subs	r5, #16
 8003330:	2d10      	cmp	r5, #16
 8003332:	f101 0108 	add.w	r1, r1, #8
 8003336:	dd15      	ble.n	8003364 <_vfprintf_r+0x45c>
 8003338:	3201      	adds	r2, #1
 800333a:	3010      	adds	r0, #16
 800333c:	2a07      	cmp	r2, #7
 800333e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003342:	e9c1 4900 	strd	r4, r9, [r1]
 8003346:	ddf2      	ble.n	800332e <_vfprintf_r+0x426>
 8003348:	aa2a      	add	r2, sp, #168	; 0xa8
 800334a:	4631      	mov	r1, r6
 800334c:	9803      	ldr	r0, [sp, #12]
 800334e:	f003 fd79 	bl	8006e44 <__sprint_r>
 8003352:	2800      	cmp	r0, #0
 8003354:	f040 83d9 	bne.w	8003b0a <_vfprintf_r+0xc02>
 8003358:	3d10      	subs	r5, #16
 800335a:	2d10      	cmp	r5, #16
 800335c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003360:	a92d      	add	r1, sp, #180	; 0xb4
 8003362:	dce9      	bgt.n	8003338 <_vfprintf_r+0x430>
 8003364:	463e      	mov	r6, r7
 8003366:	4623      	mov	r3, r4
 8003368:	465f      	mov	r7, fp
 800336a:	4604      	mov	r4, r0
 800336c:	468b      	mov	fp, r1
 800336e:	3201      	adds	r2, #1
 8003370:	442c      	add	r4, r5
 8003372:	2a07      	cmp	r2, #7
 8003374:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003378:	e9cb 3500 	strd	r3, r5, [fp]
 800337c:	f300 83ef 	bgt.w	8003b5e <_vfprintf_r+0xc56>
 8003380:	f10b 0b08 	add.w	fp, fp, #8
 8003384:	f418 7f80 	tst.w	r8, #256	; 0x100
 8003388:	f040 8280 	bne.w	800388c <_vfprintf_r+0x984>
 800338c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800338e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003390:	f8cb 7000 	str.w	r7, [fp]
 8003394:	3301      	adds	r3, #1
 8003396:	4414      	add	r4, r2
 8003398:	2b07      	cmp	r3, #7
 800339a:	942c      	str	r4, [sp, #176]	; 0xb0
 800339c:	f8cb 2004 	str.w	r2, [fp, #4]
 80033a0:	932b      	str	r3, [sp, #172]	; 0xac
 80033a2:	f300 8392 	bgt.w	8003aca <_vfprintf_r+0xbc2>
 80033a6:	f10b 0b08 	add.w	fp, fp, #8
 80033aa:	f018 0f04 	tst.w	r8, #4
 80033ae:	d03b      	beq.n	8003428 <_vfprintf_r+0x520>
 80033b0:	9b06      	ldr	r3, [sp, #24]
 80033b2:	9a04      	ldr	r2, [sp, #16]
 80033b4:	1a9d      	subs	r5, r3, r2
 80033b6:	2d00      	cmp	r5, #0
 80033b8:	dd36      	ble.n	8003428 <_vfprintf_r+0x520>
 80033ba:	2d10      	cmp	r5, #16
 80033bc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033be:	dd21      	ble.n	8003404 <_vfprintf_r+0x4fc>
 80033c0:	2610      	movs	r6, #16
 80033c2:	9f03      	ldr	r7, [sp, #12]
 80033c4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80033c8:	e004      	b.n	80033d4 <_vfprintf_r+0x4cc>
 80033ca:	3d10      	subs	r5, #16
 80033cc:	2d10      	cmp	r5, #16
 80033ce:	f10b 0b08 	add.w	fp, fp, #8
 80033d2:	dd17      	ble.n	8003404 <_vfprintf_r+0x4fc>
 80033d4:	3301      	adds	r3, #1
 80033d6:	4a60      	ldr	r2, [pc, #384]	; (8003558 <_vfprintf_r+0x650>)
 80033d8:	3410      	adds	r4, #16
 80033da:	2b07      	cmp	r3, #7
 80033dc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80033e0:	e9cb 2600 	strd	r2, r6, [fp]
 80033e4:	ddf1      	ble.n	80033ca <_vfprintf_r+0x4c2>
 80033e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80033e8:	4641      	mov	r1, r8
 80033ea:	4638      	mov	r0, r7
 80033ec:	f003 fd2a 	bl	8006e44 <__sprint_r>
 80033f0:	2800      	cmp	r0, #0
 80033f2:	f040 856c 	bne.w	8003ece <_vfprintf_r+0xfc6>
 80033f6:	3d10      	subs	r5, #16
 80033f8:	2d10      	cmp	r5, #16
 80033fa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80033fe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003402:	dce7      	bgt.n	80033d4 <_vfprintf_r+0x4cc>
 8003404:	3301      	adds	r3, #1
 8003406:	4a54      	ldr	r2, [pc, #336]	; (8003558 <_vfprintf_r+0x650>)
 8003408:	442c      	add	r4, r5
 800340a:	2b07      	cmp	r3, #7
 800340c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003410:	e9cb 2500 	strd	r2, r5, [fp]
 8003414:	dd08      	ble.n	8003428 <_vfprintf_r+0x520>
 8003416:	aa2a      	add	r2, sp, #168	; 0xa8
 8003418:	9907      	ldr	r1, [sp, #28]
 800341a:	9803      	ldr	r0, [sp, #12]
 800341c:	f003 fd12 	bl	8006e44 <__sprint_r>
 8003420:	2800      	cmp	r0, #0
 8003422:	f040 82e9 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8003426:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003428:	9904      	ldr	r1, [sp, #16]
 800342a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800342e:	428a      	cmp	r2, r1
 8003430:	bfac      	ite	ge
 8003432:	189b      	addge	r3, r3, r2
 8003434:	185b      	addlt	r3, r3, r1
 8003436:	9305      	str	r3, [sp, #20]
 8003438:	2c00      	cmp	r4, #0
 800343a:	f040 82d5 	bne.w	80039e8 <_vfprintf_r+0xae0>
 800343e:	2300      	movs	r3, #0
 8003440:	932b      	str	r3, [sp, #172]	; 0xac
 8003442:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003444:	b11b      	cbz	r3, 800344e <_vfprintf_r+0x546>
 8003446:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003448:	9803      	ldr	r0, [sp, #12]
 800344a:	f002 fc9d 	bl	8005d88 <_free_r>
 800344e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003452:	4657      	mov	r7, sl
 8003454:	783b      	ldrb	r3, [r7, #0]
 8003456:	2b00      	cmp	r3, #0
 8003458:	f47f ada7 	bne.w	8002faa <_vfprintf_r+0xa2>
 800345c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800345e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003462:	2b00      	cmp	r3, #0
 8003464:	f041 80e7 	bne.w	8004636 <_vfprintf_r+0x172e>
 8003468:	2300      	movs	r3, #0
 800346a:	932b      	str	r3, [sp, #172]	; 0xac
 800346c:	e2cb      	b.n	8003a06 <_vfprintf_r+0xafe>
 800346e:	4643      	mov	r3, r8
 8003470:	069a      	lsls	r2, r3, #26
 8003472:	f140 814e 	bpl.w	8003712 <_vfprintf_r+0x80a>
 8003476:	9c08      	ldr	r4, [sp, #32]
 8003478:	3407      	adds	r4, #7
 800347a:	f024 0207 	bic.w	r2, r4, #7
 800347e:	f102 0108 	add.w	r1, r2, #8
 8003482:	e9d2 4500 	ldrd	r4, r5, [r2]
 8003486:	9108      	str	r1, [sp, #32]
 8003488:	2201      	movs	r2, #1
 800348a:	2100      	movs	r1, #0
 800348c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8003490:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003494:	a956      	add	r1, sp, #344	; 0x158
 8003496:	9104      	str	r1, [sp, #16]
 8003498:	f47f aea2 	bne.w	80031e0 <_vfprintf_r+0x2d8>
 800349c:	4698      	mov	r8, r3
 800349e:	2a01      	cmp	r2, #1
 80034a0:	f000 8350 	beq.w	8003b44 <_vfprintf_r+0xc3c>
 80034a4:	2a02      	cmp	r2, #2
 80034a6:	f000 831b 	beq.w	8003ae0 <_vfprintf_r+0xbd8>
 80034aa:	a956      	add	r1, sp, #344	; 0x158
 80034ac:	e000      	b.n	80034b0 <_vfprintf_r+0x5a8>
 80034ae:	4639      	mov	r1, r7
 80034b0:	08e2      	lsrs	r2, r4, #3
 80034b2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80034b6:	08e8      	lsrs	r0, r5, #3
 80034b8:	f004 0307 	and.w	r3, r4, #7
 80034bc:	4605      	mov	r5, r0
 80034be:	4614      	mov	r4, r2
 80034c0:	3330      	adds	r3, #48	; 0x30
 80034c2:	ea54 0205 	orrs.w	r2, r4, r5
 80034c6:	f801 3c01 	strb.w	r3, [r1, #-1]
 80034ca:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80034ce:	d1ee      	bne.n	80034ae <_vfprintf_r+0x5a6>
 80034d0:	f018 0f01 	tst.w	r8, #1
 80034d4:	f000 8314 	beq.w	8003b00 <_vfprintf_r+0xbf8>
 80034d8:	2b30      	cmp	r3, #48	; 0x30
 80034da:	f000 8311 	beq.w	8003b00 <_vfprintf_r+0xbf8>
 80034de:	9a04      	ldr	r2, [sp, #16]
 80034e0:	3902      	subs	r1, #2
 80034e2:	2330      	movs	r3, #48	; 0x30
 80034e4:	1a52      	subs	r2, r2, r1
 80034e6:	f807 3c01 	strb.w	r3, [r7, #-1]
 80034ea:	9209      	str	r2, [sp, #36]	; 0x24
 80034ec:	460f      	mov	r7, r1
 80034ee:	e68c      	b.n	800320a <_vfprintf_r+0x302>
 80034f0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80034f4:	2200      	movs	r2, #0
 80034f6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80034fa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80034fe:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003502:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003506:	2b09      	cmp	r3, #9
 8003508:	d9f5      	bls.n	80034f6 <_vfprintf_r+0x5ee>
 800350a:	9206      	str	r2, [sp, #24]
 800350c:	e57c      	b.n	8003008 <_vfprintf_r+0x100>
 800350e:	4b14      	ldr	r3, [pc, #80]	; (8003560 <_vfprintf_r+0x658>)
 8003510:	9317      	str	r3, [sp, #92]	; 0x5c
 8003512:	f018 0f20 	tst.w	r8, #32
 8003516:	f000 8114 	beq.w	8003742 <_vfprintf_r+0x83a>
 800351a:	9c08      	ldr	r4, [sp, #32]
 800351c:	3407      	adds	r4, #7
 800351e:	f024 0307 	bic.w	r3, r4, #7
 8003522:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003526:	f103 0208 	add.w	r2, r3, #8
 800352a:	9208      	str	r2, [sp, #32]
 800352c:	f018 0f01 	tst.w	r8, #1
 8003530:	d009      	beq.n	8003546 <_vfprintf_r+0x63e>
 8003532:	ea54 0305 	orrs.w	r3, r4, r5
 8003536:	d006      	beq.n	8003546 <_vfprintf_r+0x63e>
 8003538:	2330      	movs	r3, #48	; 0x30
 800353a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800353e:	f048 0802 	orr.w	r8, r8, #2
 8003542:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003546:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800354a:	2202      	movs	r2, #2
 800354c:	e79d      	b.n	800348a <_vfprintf_r+0x582>
 800354e:	f048 0801 	orr.w	r8, r8, #1
 8003552:	f89a 6000 	ldrb.w	r6, [sl]
 8003556:	e555      	b.n	8003004 <_vfprintf_r+0xfc>
 8003558:	08007b90 	.word	0x08007b90
 800355c:	08007ba0 	.word	0x08007ba0
 8003560:	08007b5c 	.word	0x08007b5c
 8003564:	9e03      	ldr	r6, [sp, #12]
 8003566:	4630      	mov	r0, r6
 8003568:	f002 fd2c 	bl	8005fc4 <_localeconv_r>
 800356c:	6843      	ldr	r3, [r0, #4]
 800356e:	9318      	str	r3, [sp, #96]	; 0x60
 8003570:	4618      	mov	r0, r3
 8003572:	f7fd f865 	bl	8000640 <strlen>
 8003576:	901b      	str	r0, [sp, #108]	; 0x6c
 8003578:	4604      	mov	r4, r0
 800357a:	4630      	mov	r0, r6
 800357c:	f002 fd22 	bl	8005fc4 <_localeconv_r>
 8003580:	6883      	ldr	r3, [r0, #8]
 8003582:	931a      	str	r3, [sp, #104]	; 0x68
 8003584:	2c00      	cmp	r4, #0
 8003586:	f43f adb8 	beq.w	80030fa <_vfprintf_r+0x1f2>
 800358a:	f89a 6000 	ldrb.w	r6, [sl]
 800358e:	2b00      	cmp	r3, #0
 8003590:	f43f ad38 	beq.w	8003004 <_vfprintf_r+0xfc>
 8003594:	781b      	ldrb	r3, [r3, #0]
 8003596:	2b00      	cmp	r3, #0
 8003598:	f43f ad34 	beq.w	8003004 <_vfprintf_r+0xfc>
 800359c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80035a0:	e530      	b.n	8003004 <_vfprintf_r+0xfc>
 80035a2:	9b08      	ldr	r3, [sp, #32]
 80035a4:	f89a 6000 	ldrb.w	r6, [sl]
 80035a8:	681a      	ldr	r2, [r3, #0]
 80035aa:	9206      	str	r2, [sp, #24]
 80035ac:	2a00      	cmp	r2, #0
 80035ae:	f103 0304 	add.w	r3, r3, #4
 80035b2:	f2c0 8697 	blt.w	80042e4 <_vfprintf_r+0x13dc>
 80035b6:	9308      	str	r3, [sp, #32]
 80035b8:	e524      	b.n	8003004 <_vfprintf_r+0xfc>
 80035ba:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80035be:	f89a 6000 	ldrb.w	r6, [sl]
 80035c2:	e51f      	b.n	8003004 <_vfprintf_r+0xfc>
 80035c4:	f89a 6000 	ldrb.w	r6, [sl]
 80035c8:	f048 0804 	orr.w	r8, r8, #4
 80035cc:	e51a      	b.n	8003004 <_vfprintf_r+0xfc>
 80035ce:	f89a 6000 	ldrb.w	r6, [sl]
 80035d2:	2e2a      	cmp	r6, #42	; 0x2a
 80035d4:	f10a 0201 	add.w	r2, sl, #1
 80035d8:	f001 81b0 	beq.w	800493c <_vfprintf_r+0x1a34>
 80035dc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80035e0:	2b09      	cmp	r3, #9
 80035e2:	4692      	mov	sl, r2
 80035e4:	f04f 0900 	mov.w	r9, #0
 80035e8:	f63f ad0e 	bhi.w	8003008 <_vfprintf_r+0x100>
 80035ec:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80035f0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80035f4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80035f8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80035fc:	2b09      	cmp	r3, #9
 80035fe:	d9f5      	bls.n	80035ec <_vfprintf_r+0x6e4>
 8003600:	e502      	b.n	8003008 <_vfprintf_r+0x100>
 8003602:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003606:	f89a 6000 	ldrb.w	r6, [sl]
 800360a:	e4fb      	b.n	8003004 <_vfprintf_r+0xfc>
 800360c:	9c08      	ldr	r4, [sp, #32]
 800360e:	3407      	adds	r4, #7
 8003610:	f024 0407 	bic.w	r4, r4, #7
 8003614:	ed94 7b00 	vldr	d7, [r4]
 8003618:	ec52 1b17 	vmov	r1, r2, d7
 800361c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003620:	931d      	str	r3, [sp, #116]	; 0x74
 8003622:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003626:	3408      	adds	r4, #8
 8003628:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800362c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003630:	4bba      	ldr	r3, [pc, #744]	; (800391c <_vfprintf_r+0xa14>)
 8003632:	9408      	str	r4, [sp, #32]
 8003634:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003638:	f7fd fd18 	bl	800106c <__aeabi_dcmpun>
 800363c:	2800      	cmp	r0, #0
 800363e:	f040 846f 	bne.w	8003f20 <_vfprintf_r+0x1018>
 8003642:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003646:	4bb5      	ldr	r3, [pc, #724]	; (800391c <_vfprintf_r+0xa14>)
 8003648:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800364c:	f7fd fcf0 	bl	8001030 <__aeabi_dcmple>
 8003650:	2800      	cmp	r0, #0
 8003652:	f040 8465 	bne.w	8003f20 <_vfprintf_r+0x1018>
 8003656:	2200      	movs	r2, #0
 8003658:	2300      	movs	r3, #0
 800365a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800365e:	f7fd fcdd 	bl	800101c <__aeabi_dcmplt>
 8003662:	2800      	cmp	r0, #0
 8003664:	f040 855b 	bne.w	800411e <_vfprintf_r+0x1216>
 8003668:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800366c:	4fac      	ldr	r7, [pc, #688]	; (8003920 <_vfprintf_r+0xa18>)
 800366e:	4bad      	ldr	r3, [pc, #692]	; (8003924 <_vfprintf_r+0xa1c>)
 8003670:	2000      	movs	r0, #0
 8003672:	2103      	movs	r1, #3
 8003674:	9104      	str	r1, [sp, #16]
 8003676:	900a      	str	r0, [sp, #40]	; 0x28
 8003678:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800367c:	2e47      	cmp	r6, #71	; 0x47
 800367e:	bfd8      	it	le
 8003680:	461f      	movle	r7, r3
 8003682:	9109      	str	r1, [sp, #36]	; 0x24
 8003684:	4681      	mov	r9, r0
 8003686:	900f      	str	r0, [sp, #60]	; 0x3c
 8003688:	9014      	str	r0, [sp, #80]	; 0x50
 800368a:	9011      	str	r0, [sp, #68]	; 0x44
 800368c:	e5c9      	b.n	8003222 <_vfprintf_r+0x31a>
 800368e:	9808      	ldr	r0, [sp, #32]
 8003690:	2300      	movs	r3, #0
 8003692:	6801      	ldr	r1, [r0, #0]
 8003694:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003698:	461a      	mov	r2, r3
 800369a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800369e:	2301      	movs	r3, #1
 80036a0:	1d01      	adds	r1, r0, #4
 80036a2:	9304      	str	r3, [sp, #16]
 80036a4:	920a      	str	r2, [sp, #40]	; 0x28
 80036a6:	4691      	mov	r9, r2
 80036a8:	920f      	str	r2, [sp, #60]	; 0x3c
 80036aa:	9214      	str	r2, [sp, #80]	; 0x50
 80036ac:	9211      	str	r2, [sp, #68]	; 0x44
 80036ae:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80036b2:	af3d      	add	r7, sp, #244	; 0xf4
 80036b4:	e5b9      	b.n	800322a <_vfprintf_r+0x322>
 80036b6:	9b08      	ldr	r3, [sp, #32]
 80036b8:	681f      	ldr	r7, [r3, #0]
 80036ba:	2500      	movs	r5, #0
 80036bc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80036c0:	1d1c      	adds	r4, r3, #4
 80036c2:	2f00      	cmp	r7, #0
 80036c4:	f000 8639 	beq.w	800433a <_vfprintf_r+0x1432>
 80036c8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80036cc:	f000 8711 	beq.w	80044f2 <_vfprintf_r+0x15ea>
 80036d0:	464a      	mov	r2, r9
 80036d2:	4629      	mov	r1, r5
 80036d4:	4638      	mov	r0, r7
 80036d6:	f7fd f823 	bl	8000720 <memchr>
 80036da:	900a      	str	r0, [sp, #40]	; 0x28
 80036dc:	2800      	cmp	r0, #0
 80036de:	f000 85e7 	beq.w	80042b0 <_vfprintf_r+0x13a8>
 80036e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80036e4:	1bdb      	subs	r3, r3, r7
 80036e6:	9309      	str	r3, [sp, #36]	; 0x24
 80036e8:	46a9      	mov	r9, r5
 80036ea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80036ee:	9408      	str	r4, [sp, #32]
 80036f0:	9304      	str	r3, [sp, #16]
 80036f2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80036f6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80036fa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80036fe:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003702:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003706:	e58c      	b.n	8003222 <_vfprintf_r+0x31a>
 8003708:	f048 0310 	orr.w	r3, r8, #16
 800370c:	069a      	lsls	r2, r3, #26
 800370e:	f53f aeb2 	bmi.w	8003476 <_vfprintf_r+0x56e>
 8003712:	9a08      	ldr	r2, [sp, #32]
 8003714:	06df      	lsls	r7, r3, #27
 8003716:	f102 0104 	add.w	r1, r2, #4
 800371a:	f100 837e 	bmi.w	8003e1a <_vfprintf_r+0xf12>
 800371e:	065d      	lsls	r5, r3, #25
 8003720:	9a08      	ldr	r2, [sp, #32]
 8003722:	f100 84e4 	bmi.w	80040ee <_vfprintf_r+0x11e6>
 8003726:	059c      	lsls	r4, r3, #22
 8003728:	f140 8377 	bpl.w	8003e1a <_vfprintf_r+0xf12>
 800372c:	7814      	ldrb	r4, [r2, #0]
 800372e:	9108      	str	r1, [sp, #32]
 8003730:	2500      	movs	r5, #0
 8003732:	2201      	movs	r2, #1
 8003734:	e6a9      	b.n	800348a <_vfprintf_r+0x582>
 8003736:	4b7c      	ldr	r3, [pc, #496]	; (8003928 <_vfprintf_r+0xa20>)
 8003738:	9317      	str	r3, [sp, #92]	; 0x5c
 800373a:	f018 0f20 	tst.w	r8, #32
 800373e:	f47f aeec 	bne.w	800351a <_vfprintf_r+0x612>
 8003742:	9a08      	ldr	r2, [sp, #32]
 8003744:	f018 0f10 	tst.w	r8, #16
 8003748:	f102 0304 	add.w	r3, r2, #4
 800374c:	f040 8354 	bne.w	8003df8 <_vfprintf_r+0xef0>
 8003750:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003754:	9a08      	ldr	r2, [sp, #32]
 8003756:	f040 84d0 	bne.w	80040fa <_vfprintf_r+0x11f2>
 800375a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800375e:	f000 834b 	beq.w	8003df8 <_vfprintf_r+0xef0>
 8003762:	7814      	ldrb	r4, [r2, #0]
 8003764:	9308      	str	r3, [sp, #32]
 8003766:	2500      	movs	r5, #0
 8003768:	e6e0      	b.n	800352c <_vfprintf_r+0x624>
 800376a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800376e:	f89a 6000 	ldrb.w	r6, [sl]
 8003772:	2b00      	cmp	r3, #0
 8003774:	f47f ac46 	bne.w	8003004 <_vfprintf_r+0xfc>
 8003778:	2320      	movs	r3, #32
 800377a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800377e:	e441      	b.n	8003004 <_vfprintf_r+0xfc>
 8003780:	f89a 6000 	ldrb.w	r6, [sl]
 8003784:	2e6c      	cmp	r6, #108	; 0x6c
 8003786:	bf03      	ittte	eq
 8003788:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800378c:	f048 0820 	orreq.w	r8, r8, #32
 8003790:	f10a 0a01 	addeq.w	sl, sl, #1
 8003794:	f048 0810 	orrne.w	r8, r8, #16
 8003798:	e434      	b.n	8003004 <_vfprintf_r+0xfc>
 800379a:	9a08      	ldr	r2, [sp, #32]
 800379c:	f018 0f20 	tst.w	r8, #32
 80037a0:	f852 3b04 	ldr.w	r3, [r2], #4
 80037a4:	9208      	str	r2, [sp, #32]
 80037a6:	f000 83a1 	beq.w	8003eec <_vfprintf_r+0xfe4>
 80037aa:	9a05      	ldr	r2, [sp, #20]
 80037ac:	4610      	mov	r0, r2
 80037ae:	17d1      	asrs	r1, r2, #31
 80037b0:	e9c3 0100 	strd	r0, r1, [r3]
 80037b4:	4657      	mov	r7, sl
 80037b6:	e64d      	b.n	8003454 <_vfprintf_r+0x54c>
 80037b8:	f89a 6000 	ldrb.w	r6, [sl]
 80037bc:	2e68      	cmp	r6, #104	; 0x68
 80037be:	bf03      	ittte	eq
 80037c0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80037c4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80037c8:	f10a 0a01 	addeq.w	sl, sl, #1
 80037cc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80037d0:	e418      	b.n	8003004 <_vfprintf_r+0xfc>
 80037d2:	9908      	ldr	r1, [sp, #32]
 80037d4:	4b55      	ldr	r3, [pc, #340]	; (800392c <_vfprintf_r+0xa24>)
 80037d6:	680c      	ldr	r4, [r1, #0]
 80037d8:	9317      	str	r3, [sp, #92]	; 0x5c
 80037da:	f647 0230 	movw	r2, #30768	; 0x7830
 80037de:	3104      	adds	r1, #4
 80037e0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80037e4:	f048 0302 	orr.w	r3, r8, #2
 80037e8:	9108      	str	r1, [sp, #32]
 80037ea:	2500      	movs	r5, #0
 80037ec:	2202      	movs	r2, #2
 80037ee:	2678      	movs	r6, #120	; 0x78
 80037f0:	e64b      	b.n	800348a <_vfprintf_r+0x582>
 80037f2:	f048 0808 	orr.w	r8, r8, #8
 80037f6:	f89a 6000 	ldrb.w	r6, [sl]
 80037fa:	e403      	b.n	8003004 <_vfprintf_r+0xfc>
 80037fc:	f048 0310 	orr.w	r3, r8, #16
 8003800:	069f      	lsls	r7, r3, #26
 8003802:	f53f acd1 	bmi.w	80031a8 <_vfprintf_r+0x2a0>
 8003806:	9908      	ldr	r1, [sp, #32]
 8003808:	06dd      	lsls	r5, r3, #27
 800380a:	f101 0204 	add.w	r2, r1, #4
 800380e:	f100 82fd 	bmi.w	8003e0c <_vfprintf_r+0xf04>
 8003812:	065c      	lsls	r4, r3, #25
 8003814:	9908      	ldr	r1, [sp, #32]
 8003816:	f100 8475 	bmi.w	8004104 <_vfprintf_r+0x11fc>
 800381a:	0598      	lsls	r0, r3, #22
 800381c:	f140 82f6 	bpl.w	8003e0c <_vfprintf_r+0xf04>
 8003820:	f991 4000 	ldrsb.w	r4, [r1]
 8003824:	9208      	str	r2, [sp, #32]
 8003826:	17e5      	asrs	r5, r4, #31
 8003828:	4620      	mov	r0, r4
 800382a:	4629      	mov	r1, r5
 800382c:	e4c7      	b.n	80031be <_vfprintf_r+0x2b6>
 800382e:	9a08      	ldr	r2, [sp, #32]
 8003830:	f018 0f10 	tst.w	r8, #16
 8003834:	f102 0304 	add.w	r3, r2, #4
 8003838:	f040 82e3 	bne.w	8003e02 <_vfprintf_r+0xefa>
 800383c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003840:	9a08      	ldr	r2, [sp, #32]
 8003842:	f040 8467 	bne.w	8004114 <_vfprintf_r+0x120c>
 8003846:	f418 7f00 	tst.w	r8, #512	; 0x200
 800384a:	f000 82da 	beq.w	8003e02 <_vfprintf_r+0xefa>
 800384e:	7814      	ldrb	r4, [r2, #0]
 8003850:	9308      	str	r3, [sp, #32]
 8003852:	2500      	movs	r5, #0
 8003854:	e488      	b.n	8003168 <_vfprintf_r+0x260>
 8003856:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800385a:	f002 fbc7 	bl	8005fec <__retarget_lock_release_recursive>
 800385e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003862:	9305      	str	r3, [sp, #20]
 8003864:	e443      	b.n	80030ee <_vfprintf_r+0x1e6>
 8003866:	2e00      	cmp	r6, #0
 8003868:	f43f adf8 	beq.w	800345c <_vfprintf_r+0x554>
 800386c:	2300      	movs	r3, #0
 800386e:	2101      	movs	r1, #1
 8003870:	461a      	mov	r2, r3
 8003872:	9104      	str	r1, [sp, #16]
 8003874:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003878:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800387c:	930a      	str	r3, [sp, #40]	; 0x28
 800387e:	4699      	mov	r9, r3
 8003880:	930f      	str	r3, [sp, #60]	; 0x3c
 8003882:	9314      	str	r3, [sp, #80]	; 0x50
 8003884:	9311      	str	r3, [sp, #68]	; 0x44
 8003886:	9109      	str	r1, [sp, #36]	; 0x24
 8003888:	af3d      	add	r7, sp, #244	; 0xf4
 800388a:	e4ce      	b.n	800322a <_vfprintf_r+0x322>
 800388c:	2e65      	cmp	r6, #101	; 0x65
 800388e:	f340 80ca 	ble.w	8003a26 <_vfprintf_r+0xb1e>
 8003892:	2200      	movs	r2, #0
 8003894:	2300      	movs	r3, #0
 8003896:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800389a:	f7fd fbb5 	bl	8001008 <__aeabi_dcmpeq>
 800389e:	2800      	cmp	r0, #0
 80038a0:	f000 8169 	beq.w	8003b76 <_vfprintf_r+0xc6e>
 80038a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80038a6:	4a22      	ldr	r2, [pc, #136]	; (8003930 <_vfprintf_r+0xa28>)
 80038a8:	f8cb 2000 	str.w	r2, [fp]
 80038ac:	3301      	adds	r3, #1
 80038ae:	3401      	adds	r4, #1
 80038b0:	2201      	movs	r2, #1
 80038b2:	2b07      	cmp	r3, #7
 80038b4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80038b8:	f8cb 2004 	str.w	r2, [fp, #4]
 80038bc:	f300 8406 	bgt.w	80040cc <_vfprintf_r+0x11c4>
 80038c0:	f10b 0b08 	add.w	fp, fp, #8
 80038c4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80038c6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80038c8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038ca:	4293      	cmp	r3, r2
 80038cc:	db03      	blt.n	80038d6 <_vfprintf_r+0x9ce>
 80038ce:	f018 0f01 	tst.w	r8, #1
 80038d2:	f43f ad6a 	beq.w	80033aa <_vfprintf_r+0x4a2>
 80038d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80038d8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80038da:	f8cb 2000 	str.w	r2, [fp]
 80038de:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80038e0:	f8cb 2004 	str.w	r2, [fp, #4]
 80038e4:	3301      	adds	r3, #1
 80038e6:	4414      	add	r4, r2
 80038e8:	2b07      	cmp	r3, #7
 80038ea:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80038ee:	f300 8517 	bgt.w	8004320 <_vfprintf_r+0x1418>
 80038f2:	f10b 0b08 	add.w	fp, fp, #8
 80038f6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038f8:	1e5d      	subs	r5, r3, #1
 80038fa:	2d00      	cmp	r5, #0
 80038fc:	f77f ad55 	ble.w	80033aa <_vfprintf_r+0x4a2>
 8003900:	2d10      	cmp	r5, #16
 8003902:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003904:	4b0b      	ldr	r3, [pc, #44]	; (8003934 <_vfprintf_r+0xa2c>)
 8003906:	f340 82e7 	ble.w	8003ed8 <_vfprintf_r+0xfd0>
 800390a:	4619      	mov	r1, r3
 800390c:	2610      	movs	r6, #16
 800390e:	4623      	mov	r3, r4
 8003910:	9f03      	ldr	r7, [sp, #12]
 8003912:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003916:	460c      	mov	r4, r1
 8003918:	e014      	b.n	8003944 <_vfprintf_r+0xa3c>
 800391a:	bf00      	nop
 800391c:	7fefffff 	.word	0x7fefffff
 8003920:	08007b50 	.word	0x08007b50
 8003924:	08007b4c 	.word	0x08007b4c
 8003928:	08007b70 	.word	0x08007b70
 800392c:	08007b5c 	.word	0x08007b5c
 8003930:	08007b8c 	.word	0x08007b8c
 8003934:	08007ba0 	.word	0x08007ba0
 8003938:	f10b 0b08 	add.w	fp, fp, #8
 800393c:	3d10      	subs	r5, #16
 800393e:	2d10      	cmp	r5, #16
 8003940:	f340 82c7 	ble.w	8003ed2 <_vfprintf_r+0xfca>
 8003944:	3201      	adds	r2, #1
 8003946:	3310      	adds	r3, #16
 8003948:	2a07      	cmp	r2, #7
 800394a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800394e:	e9cb 4600 	strd	r4, r6, [fp]
 8003952:	ddf1      	ble.n	8003938 <_vfprintf_r+0xa30>
 8003954:	aa2a      	add	r2, sp, #168	; 0xa8
 8003956:	4649      	mov	r1, r9
 8003958:	4638      	mov	r0, r7
 800395a:	f003 fa73 	bl	8006e44 <__sprint_r>
 800395e:	2800      	cmp	r0, #0
 8003960:	d14c      	bne.n	80039fc <_vfprintf_r+0xaf4>
 8003962:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003966:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800396a:	e7e7      	b.n	800393c <_vfprintf_r+0xa34>
 800396c:	9b06      	ldr	r3, [sp, #24]
 800396e:	9a04      	ldr	r2, [sp, #16]
 8003970:	1a9d      	subs	r5, r3, r2
 8003972:	2d00      	cmp	r5, #0
 8003974:	f77f acc9 	ble.w	800330a <_vfprintf_r+0x402>
 8003978:	2d10      	cmp	r5, #16
 800397a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800397c:	4bbc      	ldr	r3, [pc, #752]	; (8003c70 <_vfprintf_r+0xd68>)
 800397e:	dd27      	ble.n	80039d0 <_vfprintf_r+0xac8>
 8003980:	4659      	mov	r1, fp
 8003982:	4620      	mov	r0, r4
 8003984:	46bb      	mov	fp, r7
 8003986:	461c      	mov	r4, r3
 8003988:	4637      	mov	r7, r6
 800398a:	9e07      	ldr	r6, [sp, #28]
 800398c:	e004      	b.n	8003998 <_vfprintf_r+0xa90>
 800398e:	3d10      	subs	r5, #16
 8003990:	2d10      	cmp	r5, #16
 8003992:	f101 0108 	add.w	r1, r1, #8
 8003996:	dd16      	ble.n	80039c6 <_vfprintf_r+0xabe>
 8003998:	3201      	adds	r2, #1
 800399a:	3010      	adds	r0, #16
 800399c:	2310      	movs	r3, #16
 800399e:	2a07      	cmp	r2, #7
 80039a0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80039a4:	600c      	str	r4, [r1, #0]
 80039a6:	604b      	str	r3, [r1, #4]
 80039a8:	ddf1      	ble.n	800398e <_vfprintf_r+0xa86>
 80039aa:	aa2a      	add	r2, sp, #168	; 0xa8
 80039ac:	4631      	mov	r1, r6
 80039ae:	9803      	ldr	r0, [sp, #12]
 80039b0:	f003 fa48 	bl	8006e44 <__sprint_r>
 80039b4:	2800      	cmp	r0, #0
 80039b6:	f040 80a8 	bne.w	8003b0a <_vfprintf_r+0xc02>
 80039ba:	3d10      	subs	r5, #16
 80039bc:	2d10      	cmp	r5, #16
 80039be:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80039c2:	a92d      	add	r1, sp, #180	; 0xb4
 80039c4:	dce8      	bgt.n	8003998 <_vfprintf_r+0xa90>
 80039c6:	463e      	mov	r6, r7
 80039c8:	4623      	mov	r3, r4
 80039ca:	465f      	mov	r7, fp
 80039cc:	4604      	mov	r4, r0
 80039ce:	468b      	mov	fp, r1
 80039d0:	3201      	adds	r2, #1
 80039d2:	442c      	add	r4, r5
 80039d4:	2a07      	cmp	r2, #7
 80039d6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80039da:	e9cb 3500 	strd	r3, r5, [fp]
 80039de:	f300 8292 	bgt.w	8003f06 <_vfprintf_r+0xffe>
 80039e2:	f10b 0b08 	add.w	fp, fp, #8
 80039e6:	e490      	b.n	800330a <_vfprintf_r+0x402>
 80039e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039ea:	9907      	ldr	r1, [sp, #28]
 80039ec:	9803      	ldr	r0, [sp, #12]
 80039ee:	f003 fa29 	bl	8006e44 <__sprint_r>
 80039f2:	2800      	cmp	r0, #0
 80039f4:	f43f ad23 	beq.w	800343e <_vfprintf_r+0x536>
 80039f8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80039fc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80039fe:	b111      	cbz	r1, 8003a06 <_vfprintf_r+0xafe>
 8003a00:	9803      	ldr	r0, [sp, #12]
 8003a02:	f002 f9c1 	bl	8005d88 <_free_r>
 8003a06:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003a0a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003a0e:	07d0      	lsls	r0, r2, #31
 8003a10:	d402      	bmi.n	8003a18 <_vfprintf_r+0xb10>
 8003a12:	0599      	lsls	r1, r3, #22
 8003a14:	f140 81d0 	bpl.w	8003db8 <_vfprintf_r+0xeb0>
 8003a18:	065a      	lsls	r2, r3, #25
 8003a1a:	f53f ab65 	bmi.w	80030e8 <_vfprintf_r+0x1e0>
 8003a1e:	9805      	ldr	r0, [sp, #20]
 8003a20:	b057      	add	sp, #348	; 0x15c
 8003a22:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003a26:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003a28:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a2a:	2a01      	cmp	r2, #1
 8003a2c:	f104 0401 	add.w	r4, r4, #1
 8003a30:	f103 0501 	add.w	r5, r3, #1
 8003a34:	f10b 0608 	add.w	r6, fp, #8
 8003a38:	f340 811c 	ble.w	8003c74 <_vfprintf_r+0xd6c>
 8003a3c:	2301      	movs	r3, #1
 8003a3e:	2d07      	cmp	r5, #7
 8003a40:	f8cb 7000 	str.w	r7, [fp]
 8003a44:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003a48:	f8cb 3004 	str.w	r3, [fp, #4]
 8003a4c:	f300 81bb 	bgt.w	8003dc6 <_vfprintf_r+0xebe>
 8003a50:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003a52:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003a54:	1c69      	adds	r1, r5, #1
 8003a56:	441c      	add	r4, r3
 8003a58:	2907      	cmp	r1, #7
 8003a5a:	910b      	str	r1, [sp, #44]	; 0x2c
 8003a5c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003a60:	e9c6 2300 	strd	r2, r3, [r6]
 8003a64:	f300 81bb 	bgt.w	8003dde <_vfprintf_r+0xed6>
 8003a68:	3608      	adds	r6, #8
 8003a6a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003a6c:	1c53      	adds	r3, r2, #1
 8003a6e:	461d      	mov	r5, r3
 8003a70:	9509      	str	r5, [sp, #36]	; 0x24
 8003a72:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003a74:	930e      	str	r3, [sp, #56]	; 0x38
 8003a76:	2200      	movs	r2, #0
 8003a78:	2300      	movs	r3, #0
 8003a7a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003a7e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003a82:	f106 0b08 	add.w	fp, r6, #8
 8003a86:	f7fd fabf 	bl	8001008 <__aeabi_dcmpeq>
 8003a8a:	2800      	cmp	r0, #0
 8003a8c:	f040 80c2 	bne.w	8003c14 <_vfprintf_r+0xd0c>
 8003a90:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003a92:	f8c6 9004 	str.w	r9, [r6, #4]
 8003a96:	3701      	adds	r7, #1
 8003a98:	444c      	add	r4, r9
 8003a9a:	2d07      	cmp	r5, #7
 8003a9c:	6037      	str	r7, [r6, #0]
 8003a9e:	942c      	str	r4, [sp, #176]	; 0xb0
 8003aa0:	952b      	str	r5, [sp, #172]	; 0xac
 8003aa2:	f300 80f9 	bgt.w	8003c98 <_vfprintf_r+0xd90>
 8003aa6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003aa8:	f106 0310 	add.w	r3, r6, #16
 8003aac:	3202      	adds	r2, #2
 8003aae:	465e      	mov	r6, fp
 8003ab0:	9209      	str	r2, [sp, #36]	; 0x24
 8003ab2:	469b      	mov	fp, r3
 8003ab4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003ab6:	6072      	str	r2, [r6, #4]
 8003ab8:	4414      	add	r4, r2
 8003aba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003abc:	942c      	str	r4, [sp, #176]	; 0xb0
 8003abe:	ab26      	add	r3, sp, #152	; 0x98
 8003ac0:	2a07      	cmp	r2, #7
 8003ac2:	922b      	str	r2, [sp, #172]	; 0xac
 8003ac4:	6033      	str	r3, [r6, #0]
 8003ac6:	f77f ac70 	ble.w	80033aa <_vfprintf_r+0x4a2>
 8003aca:	aa2a      	add	r2, sp, #168	; 0xa8
 8003acc:	9907      	ldr	r1, [sp, #28]
 8003ace:	9803      	ldr	r0, [sp, #12]
 8003ad0:	f003 f9b8 	bl	8006e44 <__sprint_r>
 8003ad4:	2800      	cmp	r0, #0
 8003ad6:	d18f      	bne.n	80039f8 <_vfprintf_r+0xaf0>
 8003ad8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ada:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ade:	e464      	b.n	80033aa <_vfprintf_r+0x4a2>
 8003ae0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003ae2:	af56      	add	r7, sp, #344	; 0x158
 8003ae4:	0923      	lsrs	r3, r4, #4
 8003ae6:	f004 010f 	and.w	r1, r4, #15
 8003aea:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003aee:	092a      	lsrs	r2, r5, #4
 8003af0:	461c      	mov	r4, r3
 8003af2:	4615      	mov	r5, r2
 8003af4:	5c43      	ldrb	r3, [r0, r1]
 8003af6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003afa:	ea54 0305 	orrs.w	r3, r4, r5
 8003afe:	d1f1      	bne.n	8003ae4 <_vfprintf_r+0xbdc>
 8003b00:	9b04      	ldr	r3, [sp, #16]
 8003b02:	1bdb      	subs	r3, r3, r7
 8003b04:	9309      	str	r3, [sp, #36]	; 0x24
 8003b06:	f7ff bb80 	b.w	800320a <_vfprintf_r+0x302>
 8003b0a:	46b1      	mov	r9, r6
 8003b0c:	e776      	b.n	80039fc <_vfprintf_r+0xaf4>
 8003b0e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b10:	9907      	ldr	r1, [sp, #28]
 8003b12:	9803      	ldr	r0, [sp, #12]
 8003b14:	f003 f996 	bl	8006e44 <__sprint_r>
 8003b18:	2800      	cmp	r0, #0
 8003b1a:	f47f af6d 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8003b1e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b20:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b24:	f7ff bbdd 	b.w	80032e2 <_vfprintf_r+0x3da>
 8003b28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b2a:	9907      	ldr	r1, [sp, #28]
 8003b2c:	9803      	ldr	r0, [sp, #12]
 8003b2e:	f003 f989 	bl	8006e44 <__sprint_r>
 8003b32:	2800      	cmp	r0, #0
 8003b34:	f47f af60 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8003b38:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b3a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b3e:	f7ff bbe0 	b.w	8003302 <_vfprintf_r+0x3fa>
 8003b42:	4698      	mov	r8, r3
 8003b44:	2d00      	cmp	r5, #0
 8003b46:	bf08      	it	eq
 8003b48:	2c0a      	cmpeq	r4, #10
 8003b4a:	f080 8170 	bcs.w	8003e2e <_vfprintf_r+0xf26>
 8003b4e:	af56      	add	r7, sp, #344	; 0x158
 8003b50:	3430      	adds	r4, #48	; 0x30
 8003b52:	2301      	movs	r3, #1
 8003b54:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003b58:	9309      	str	r3, [sp, #36]	; 0x24
 8003b5a:	f7ff bb56 	b.w	800320a <_vfprintf_r+0x302>
 8003b5e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b60:	9907      	ldr	r1, [sp, #28]
 8003b62:	9803      	ldr	r0, [sp, #12]
 8003b64:	f003 f96e 	bl	8006e44 <__sprint_r>
 8003b68:	2800      	cmp	r0, #0
 8003b6a:	f47f af45 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8003b6e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b70:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b74:	e406      	b.n	8003384 <_vfprintf_r+0x47c>
 8003b76:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b78:	2b00      	cmp	r3, #0
 8003b7a:	f340 8273 	ble.w	8004064 <_vfprintf_r+0x115c>
 8003b7e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003b82:	4293      	cmp	r3, r2
 8003b84:	bfa8      	it	ge
 8003b86:	4613      	movge	r3, r2
 8003b88:	2b00      	cmp	r3, #0
 8003b8a:	461d      	mov	r5, r3
 8003b8c:	dd0d      	ble.n	8003baa <_vfprintf_r+0xca2>
 8003b8e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003b90:	f8cb 7000 	str.w	r7, [fp]
 8003b94:	3301      	adds	r3, #1
 8003b96:	442c      	add	r4, r5
 8003b98:	2b07      	cmp	r3, #7
 8003b9a:	942c      	str	r4, [sp, #176]	; 0xb0
 8003b9c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003ba0:	932b      	str	r3, [sp, #172]	; 0xac
 8003ba2:	f300 82c1 	bgt.w	8004128 <_vfprintf_r+0x1220>
 8003ba6:	f10b 0b08 	add.w	fp, fp, #8
 8003baa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bac:	2d00      	cmp	r5, #0
 8003bae:	bfa8      	it	ge
 8003bb0:	1b5b      	subge	r3, r3, r5
 8003bb2:	2b00      	cmp	r3, #0
 8003bb4:	461d      	mov	r5, r3
 8003bb6:	f340 8099 	ble.w	8003cec <_vfprintf_r+0xde4>
 8003bba:	2d10      	cmp	r5, #16
 8003bbc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003bbe:	4b2c      	ldr	r3, [pc, #176]	; (8003c70 <_vfprintf_r+0xd68>)
 8003bc0:	f340 83db 	ble.w	800437a <_vfprintf_r+0x1472>
 8003bc4:	4618      	mov	r0, r3
 8003bc6:	4621      	mov	r1, r4
 8003bc8:	465b      	mov	r3, fp
 8003bca:	2610      	movs	r6, #16
 8003bcc:	46bb      	mov	fp, r7
 8003bce:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003bd2:	9c07      	ldr	r4, [sp, #28]
 8003bd4:	4607      	mov	r7, r0
 8003bd6:	e004      	b.n	8003be2 <_vfprintf_r+0xcda>
 8003bd8:	3308      	adds	r3, #8
 8003bda:	3d10      	subs	r5, #16
 8003bdc:	2d10      	cmp	r5, #16
 8003bde:	f340 83c7 	ble.w	8004370 <_vfprintf_r+0x1468>
 8003be2:	3201      	adds	r2, #1
 8003be4:	3110      	adds	r1, #16
 8003be6:	2a07      	cmp	r2, #7
 8003be8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003bec:	e9c3 7600 	strd	r7, r6, [r3]
 8003bf0:	ddf2      	ble.n	8003bd8 <_vfprintf_r+0xcd0>
 8003bf2:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bf4:	4621      	mov	r1, r4
 8003bf6:	4648      	mov	r0, r9
 8003bf8:	f003 f924 	bl	8006e44 <__sprint_r>
 8003bfc:	2800      	cmp	r0, #0
 8003bfe:	f040 84a5 	bne.w	800454c <_vfprintf_r+0x1644>
 8003c02:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003c06:	ab2d      	add	r3, sp, #180	; 0xb4
 8003c08:	e7e7      	b.n	8003bda <_vfprintf_r+0xcd2>
 8003c0a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003c0e:	af56      	add	r7, sp, #344	; 0x158
 8003c10:	f7ff bafb 	b.w	800320a <_vfprintf_r+0x302>
 8003c14:	f1b9 0f00 	cmp.w	r9, #0
 8003c18:	f77f af4c 	ble.w	8003ab4 <_vfprintf_r+0xbac>
 8003c1c:	f1b9 0f10 	cmp.w	r9, #16
 8003c20:	4b13      	ldr	r3, [pc, #76]	; (8003c70 <_vfprintf_r+0xd68>)
 8003c22:	f340 8659 	ble.w	80048d8 <_vfprintf_r+0x19d0>
 8003c26:	4619      	mov	r1, r3
 8003c28:	4622      	mov	r2, r4
 8003c2a:	4633      	mov	r3, r6
 8003c2c:	2710      	movs	r7, #16
 8003c2e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003c32:	9c07      	ldr	r4, [sp, #28]
 8003c34:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003c36:	460e      	mov	r6, r1
 8003c38:	e007      	b.n	8003c4a <_vfprintf_r+0xd42>
 8003c3a:	3308      	adds	r3, #8
 8003c3c:	f1a9 0910 	sub.w	r9, r9, #16
 8003c40:	f1b9 0f10 	cmp.w	r9, #16
 8003c44:	f340 8353 	ble.w	80042ee <_vfprintf_r+0x13e6>
 8003c48:	3501      	adds	r5, #1
 8003c4a:	3210      	adds	r2, #16
 8003c4c:	2d07      	cmp	r5, #7
 8003c4e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003c52:	e9c3 6700 	strd	r6, r7, [r3]
 8003c56:	ddf0      	ble.n	8003c3a <_vfprintf_r+0xd32>
 8003c58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c5a:	4621      	mov	r1, r4
 8003c5c:	4658      	mov	r0, fp
 8003c5e:	f003 f8f1 	bl	8006e44 <__sprint_r>
 8003c62:	2800      	cmp	r0, #0
 8003c64:	f040 8472 	bne.w	800454c <_vfprintf_r+0x1644>
 8003c68:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003c6c:	ab2d      	add	r3, sp, #180	; 0xb4
 8003c6e:	e7e5      	b.n	8003c3c <_vfprintf_r+0xd34>
 8003c70:	08007ba0 	.word	0x08007ba0
 8003c74:	f018 0f01 	tst.w	r8, #1
 8003c78:	f47f aee0 	bne.w	8003a3c <_vfprintf_r+0xb34>
 8003c7c:	2201      	movs	r2, #1
 8003c7e:	2d07      	cmp	r5, #7
 8003c80:	f8cb 7000 	str.w	r7, [fp]
 8003c84:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003c88:	f8cb 2004 	str.w	r2, [fp, #4]
 8003c8c:	dc04      	bgt.n	8003c98 <_vfprintf_r+0xd90>
 8003c8e:	3302      	adds	r3, #2
 8003c90:	9309      	str	r3, [sp, #36]	; 0x24
 8003c92:	f10b 0b10 	add.w	fp, fp, #16
 8003c96:	e70d      	b.n	8003ab4 <_vfprintf_r+0xbac>
 8003c98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c9a:	9907      	ldr	r1, [sp, #28]
 8003c9c:	9803      	ldr	r0, [sp, #12]
 8003c9e:	f003 f8d1 	bl	8006e44 <__sprint_r>
 8003ca2:	2800      	cmp	r0, #0
 8003ca4:	f47f aea8 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8003ca8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003cac:	3301      	adds	r3, #1
 8003cae:	9309      	str	r3, [sp, #36]	; 0x24
 8003cb0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003cb4:	ae2d      	add	r6, sp, #180	; 0xb4
 8003cb6:	e6fd      	b.n	8003ab4 <_vfprintf_r+0xbac>
 8003cb8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cba:	9907      	ldr	r1, [sp, #28]
 8003cbc:	9803      	ldr	r0, [sp, #12]
 8003cbe:	f003 f8c1 	bl	8006e44 <__sprint_r>
 8003cc2:	2800      	cmp	r0, #0
 8003cc4:	f47f ae98 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8003cc8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003ccc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003cce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cd2:	f7ff baf6 	b.w	80032c2 <_vfprintf_r+0x3ba>
 8003cd6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cd8:	9907      	ldr	r1, [sp, #28]
 8003cda:	9803      	ldr	r0, [sp, #12]
 8003cdc:	f003 f8b2 	bl	8006e44 <__sprint_r>
 8003ce0:	2800      	cmp	r0, #0
 8003ce2:	f47f ae89 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8003ce6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ce8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003cee:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003cf2:	443b      	add	r3, r7
 8003cf4:	4699      	mov	r9, r3
 8003cf6:	f040 8357 	bne.w	80043a8 <_vfprintf_r+0x14a0>
 8003cfa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003cfc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003cfe:	4293      	cmp	r3, r2
 8003d00:	db49      	blt.n	8003d96 <_vfprintf_r+0xe8e>
 8003d02:	f018 0f01 	tst.w	r8, #1
 8003d06:	d146      	bne.n	8003d96 <_vfprintf_r+0xe8e>
 8003d08:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003d0a:	18bd      	adds	r5, r7, r2
 8003d0c:	eba5 0509 	sub.w	r5, r5, r9
 8003d10:	1ad3      	subs	r3, r2, r3
 8003d12:	429d      	cmp	r5, r3
 8003d14:	bfa8      	it	ge
 8003d16:	461d      	movge	r5, r3
 8003d18:	2d00      	cmp	r5, #0
 8003d1a:	dd0d      	ble.n	8003d38 <_vfprintf_r+0xe30>
 8003d1c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003d1e:	f8cb 9000 	str.w	r9, [fp]
 8003d22:	3201      	adds	r2, #1
 8003d24:	442c      	add	r4, r5
 8003d26:	2a07      	cmp	r2, #7
 8003d28:	942c      	str	r4, [sp, #176]	; 0xb0
 8003d2a:	f8cb 5004 	str.w	r5, [fp, #4]
 8003d2e:	922b      	str	r2, [sp, #172]	; 0xac
 8003d30:	f300 8462 	bgt.w	80045f8 <_vfprintf_r+0x16f0>
 8003d34:	f10b 0b08 	add.w	fp, fp, #8
 8003d38:	2d00      	cmp	r5, #0
 8003d3a:	bfac      	ite	ge
 8003d3c:	1b5d      	subge	r5, r3, r5
 8003d3e:	461d      	movlt	r5, r3
 8003d40:	2d00      	cmp	r5, #0
 8003d42:	f77f ab32 	ble.w	80033aa <_vfprintf_r+0x4a2>
 8003d46:	2d10      	cmp	r5, #16
 8003d48:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003d4a:	4bc5      	ldr	r3, [pc, #788]	; (8004060 <_vfprintf_r+0x1158>)
 8003d4c:	f340 80c4 	ble.w	8003ed8 <_vfprintf_r+0xfd0>
 8003d50:	4619      	mov	r1, r3
 8003d52:	2610      	movs	r6, #16
 8003d54:	4623      	mov	r3, r4
 8003d56:	9f03      	ldr	r7, [sp, #12]
 8003d58:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d5c:	460c      	mov	r4, r1
 8003d5e:	e005      	b.n	8003d6c <_vfprintf_r+0xe64>
 8003d60:	f10b 0b08 	add.w	fp, fp, #8
 8003d64:	3d10      	subs	r5, #16
 8003d66:	2d10      	cmp	r5, #16
 8003d68:	f340 80b3 	ble.w	8003ed2 <_vfprintf_r+0xfca>
 8003d6c:	3201      	adds	r2, #1
 8003d6e:	3310      	adds	r3, #16
 8003d70:	2a07      	cmp	r2, #7
 8003d72:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003d76:	e9cb 4600 	strd	r4, r6, [fp]
 8003d7a:	ddf1      	ble.n	8003d60 <_vfprintf_r+0xe58>
 8003d7c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d7e:	4649      	mov	r1, r9
 8003d80:	4638      	mov	r0, r7
 8003d82:	f003 f85f 	bl	8006e44 <__sprint_r>
 8003d86:	2800      	cmp	r0, #0
 8003d88:	f47f ae38 	bne.w	80039fc <_vfprintf_r+0xaf4>
 8003d8c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003d90:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d94:	e7e6      	b.n	8003d64 <_vfprintf_r+0xe5c>
 8003d96:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003d98:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003d9a:	f8cb 1000 	str.w	r1, [fp]
 8003d9e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003da0:	f8cb 1004 	str.w	r1, [fp, #4]
 8003da4:	3201      	adds	r2, #1
 8003da6:	440c      	add	r4, r1
 8003da8:	2a07      	cmp	r2, #7
 8003daa:	942c      	str	r4, [sp, #176]	; 0xb0
 8003dac:	922b      	str	r2, [sp, #172]	; 0xac
 8003dae:	f300 828c 	bgt.w	80042ca <_vfprintf_r+0x13c2>
 8003db2:	f10b 0b08 	add.w	fp, fp, #8
 8003db6:	e7a7      	b.n	8003d08 <_vfprintf_r+0xe00>
 8003db8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003dbc:	f002 f916 	bl	8005fec <__retarget_lock_release_recursive>
 8003dc0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003dc4:	e628      	b.n	8003a18 <_vfprintf_r+0xb10>
 8003dc6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dc8:	9907      	ldr	r1, [sp, #28]
 8003dca:	9803      	ldr	r0, [sp, #12]
 8003dcc:	f003 f83a 	bl	8006e44 <__sprint_r>
 8003dd0:	2800      	cmp	r0, #0
 8003dd2:	f47f ae11 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8003dd6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003dda:	ae2d      	add	r6, sp, #180	; 0xb4
 8003ddc:	e638      	b.n	8003a50 <_vfprintf_r+0xb48>
 8003dde:	aa2a      	add	r2, sp, #168	; 0xa8
 8003de0:	9907      	ldr	r1, [sp, #28]
 8003de2:	9803      	ldr	r0, [sp, #12]
 8003de4:	f003 f82e 	bl	8006e44 <__sprint_r>
 8003de8:	2800      	cmp	r0, #0
 8003dea:	f47f ae05 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8003dee:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003df2:	ae2d      	add	r6, sp, #180	; 0xb4
 8003df4:	930b      	str	r3, [sp, #44]	; 0x2c
 8003df6:	e638      	b.n	8003a6a <_vfprintf_r+0xb62>
 8003df8:	6814      	ldr	r4, [r2, #0]
 8003dfa:	9308      	str	r3, [sp, #32]
 8003dfc:	2500      	movs	r5, #0
 8003dfe:	f7ff bb95 	b.w	800352c <_vfprintf_r+0x624>
 8003e02:	6814      	ldr	r4, [r2, #0]
 8003e04:	9308      	str	r3, [sp, #32]
 8003e06:	2500      	movs	r5, #0
 8003e08:	f7ff b9ae 	b.w	8003168 <_vfprintf_r+0x260>
 8003e0c:	680c      	ldr	r4, [r1, #0]
 8003e0e:	9208      	str	r2, [sp, #32]
 8003e10:	17e5      	asrs	r5, r4, #31
 8003e12:	4620      	mov	r0, r4
 8003e14:	4629      	mov	r1, r5
 8003e16:	f7ff b9d2 	b.w	80031be <_vfprintf_r+0x2b6>
 8003e1a:	6814      	ldr	r4, [r2, #0]
 8003e1c:	9108      	str	r1, [sp, #32]
 8003e1e:	2201      	movs	r2, #1
 8003e20:	2500      	movs	r5, #0
 8003e22:	f7ff bb32 	b.w	800348a <_vfprintf_r+0x582>
 8003e26:	2a01      	cmp	r2, #1
 8003e28:	f47f ab3c 	bne.w	80034a4 <_vfprintf_r+0x59c>
 8003e2c:	e68f      	b.n	8003b4e <_vfprintf_r+0xc46>
 8003e2e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003e32:	2200      	movs	r2, #0
 8003e34:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003e38:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003e3c:	af56      	add	r7, sp, #344	; 0x158
 8003e3e:	4692      	mov	sl, r2
 8003e40:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003e44:	461e      	mov	r6, r3
 8003e46:	e00a      	b.n	8003e5e <_vfprintf_r+0xf56>
 8003e48:	2300      	movs	r3, #0
 8003e4a:	4620      	mov	r0, r4
 8003e4c:	4629      	mov	r1, r5
 8003e4e:	220a      	movs	r2, #10
 8003e50:	f7fc f9d6 	bl	8000200 <__aeabi_uldivmod>
 8003e54:	4604      	mov	r4, r0
 8003e56:	460d      	mov	r5, r1
 8003e58:	ea54 0305 	orrs.w	r3, r4, r5
 8003e5c:	d029      	beq.n	8003eb2 <_vfprintf_r+0xfaa>
 8003e5e:	220a      	movs	r2, #10
 8003e60:	2300      	movs	r3, #0
 8003e62:	4620      	mov	r0, r4
 8003e64:	4629      	mov	r1, r5
 8003e66:	f7fc f9cb 	bl	8000200 <__aeabi_uldivmod>
 8003e6a:	3230      	adds	r2, #48	; 0x30
 8003e6c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003e70:	f10a 0a01 	add.w	sl, sl, #1
 8003e74:	3f01      	subs	r7, #1
 8003e76:	2e00      	cmp	r6, #0
 8003e78:	d0e6      	beq.n	8003e48 <_vfprintf_r+0xf40>
 8003e7a:	f898 3000 	ldrb.w	r3, [r8]
 8003e7e:	459a      	cmp	sl, r3
 8003e80:	d1e2      	bne.n	8003e48 <_vfprintf_r+0xf40>
 8003e82:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003e86:	d0df      	beq.n	8003e48 <_vfprintf_r+0xf40>
 8003e88:	2d00      	cmp	r5, #0
 8003e8a:	bf08      	it	eq
 8003e8c:	2c0a      	cmpeq	r4, #10
 8003e8e:	d3db      	bcc.n	8003e48 <_vfprintf_r+0xf40>
 8003e90:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003e92:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003e94:	1aff      	subs	r7, r7, r3
 8003e96:	461a      	mov	r2, r3
 8003e98:	4638      	mov	r0, r7
 8003e9a:	f002 ff65 	bl	8006d68 <strncpy>
 8003e9e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003ea2:	2b00      	cmp	r3, #0
 8003ea4:	f000 8496 	beq.w	80047d4 <_vfprintf_r+0x18cc>
 8003ea8:	f108 0801 	add.w	r8, r8, #1
 8003eac:	f04f 0a00 	mov.w	sl, #0
 8003eb0:	e7ca      	b.n	8003e48 <_vfprintf_r+0xf40>
 8003eb2:	9b04      	ldr	r3, [sp, #16]
 8003eb4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003eb8:	1bdb      	subs	r3, r3, r7
 8003eba:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003ebe:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003ec0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003ec4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003ec8:	9309      	str	r3, [sp, #36]	; 0x24
 8003eca:	f7ff b99e 	b.w	800320a <_vfprintf_r+0x302>
 8003ece:	46c1      	mov	r9, r8
 8003ed0:	e594      	b.n	80039fc <_vfprintf_r+0xaf4>
 8003ed2:	4621      	mov	r1, r4
 8003ed4:	461c      	mov	r4, r3
 8003ed6:	460b      	mov	r3, r1
 8003ed8:	3201      	adds	r2, #1
 8003eda:	442c      	add	r4, r5
 8003edc:	2a07      	cmp	r2, #7
 8003ede:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ee2:	e9cb 3500 	strd	r3, r5, [fp]
 8003ee6:	f77f aa5e 	ble.w	80033a6 <_vfprintf_r+0x49e>
 8003eea:	e5ee      	b.n	8003aca <_vfprintf_r+0xbc2>
 8003eec:	f018 0f10 	tst.w	r8, #16
 8003ef0:	f040 80f8 	bne.w	80040e4 <_vfprintf_r+0x11dc>
 8003ef4:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003ef8:	f000 8351 	beq.w	800459e <_vfprintf_r+0x1696>
 8003efc:	9a05      	ldr	r2, [sp, #20]
 8003efe:	801a      	strh	r2, [r3, #0]
 8003f00:	4657      	mov	r7, sl
 8003f02:	f7ff baa7 	b.w	8003454 <_vfprintf_r+0x54c>
 8003f06:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f08:	9907      	ldr	r1, [sp, #28]
 8003f0a:	9803      	ldr	r0, [sp, #12]
 8003f0c:	f002 ff9a 	bl	8006e44 <__sprint_r>
 8003f10:	2800      	cmp	r0, #0
 8003f12:	f47f ad71 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8003f16:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f18:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f1c:	f7ff b9f5 	b.w	800330a <_vfprintf_r+0x402>
 8003f20:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003f24:	4602      	mov	r2, r0
 8003f26:	460b      	mov	r3, r1
 8003f28:	f7fd f8a0 	bl	800106c <__aeabi_dcmpun>
 8003f2c:	2800      	cmp	r0, #0
 8003f2e:	f040 8491 	bne.w	8004854 <_vfprintf_r+0x194c>
 8003f32:	2e61      	cmp	r6, #97	; 0x61
 8003f34:	f000 8111 	beq.w	800415a <_vfprintf_r+0x1252>
 8003f38:	2e41      	cmp	r6, #65	; 0x41
 8003f3a:	f000 8377 	beq.w	800462c <_vfprintf_r+0x1724>
 8003f3e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003f42:	f026 0220 	bic.w	r2, r6, #32
 8003f46:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003f4a:	930e      	str	r3, [sp, #56]	; 0x38
 8003f4c:	9204      	str	r2, [sp, #16]
 8003f4e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003f50:	f000 842d 	beq.w	80047ae <_vfprintf_r+0x18a6>
 8003f54:	2a47      	cmp	r2, #71	; 0x47
 8003f56:	f000 8424 	beq.w	80047a2 <_vfprintf_r+0x189a>
 8003f5a:	2b00      	cmp	r3, #0
 8003f5c:	f2c0 82f9 	blt.w	8004552 <_vfprintf_r+0x164a>
 8003f60:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003f64:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003f68:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003f6c:	2e66      	cmp	r6, #102	; 0x66
 8003f6e:	f000 83eb 	beq.w	8004748 <_vfprintf_r+0x1840>
 8003f72:	2e46      	cmp	r6, #70	; 0x46
 8003f74:	f000 847e 	beq.w	8004874 <_vfprintf_r+0x196c>
 8003f78:	9b04      	ldr	r3, [sp, #16]
 8003f7a:	9803      	ldr	r0, [sp, #12]
 8003f7c:	2b45      	cmp	r3, #69	; 0x45
 8003f7e:	bf0c      	ite	eq
 8003f80:	f109 0501 	addeq.w	r5, r9, #1
 8003f84:	464d      	movne	r5, r9
 8003f86:	aa28      	add	r2, sp, #160	; 0xa0
 8003f88:	ab25      	add	r3, sp, #148	; 0x94
 8003f8a:	e9cd 3200 	strd	r3, r2, [sp]
 8003f8e:	2102      	movs	r1, #2
 8003f90:	ab24      	add	r3, sp, #144	; 0x90
 8003f92:	462a      	mov	r2, r5
 8003f94:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003f98:	f000 fe3e 	bl	8004c18 <_dtoa_r>
 8003f9c:	2e67      	cmp	r6, #103	; 0x67
 8003f9e:	4607      	mov	r7, r0
 8003fa0:	f040 849c 	bne.w	80048dc <_vfprintf_r+0x19d4>
 8003fa4:	f018 0f01 	tst.w	r8, #1
 8003fa8:	f040 83f9 	bne.w	800479e <_vfprintf_r+0x1896>
 8003fac:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003fae:	4640      	mov	r0, r8
 8003fb0:	1bdb      	subs	r3, r3, r7
 8003fb2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003fb6:	9310      	str	r3, [sp, #64]	; 0x40
 8003fb8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003fba:	9311      	str	r3, [sp, #68]	; 0x44
 8003fbc:	9b04      	ldr	r3, [sp, #16]
 8003fbe:	2b47      	cmp	r3, #71	; 0x47
 8003fc0:	f000 81e7 	beq.w	8004392 <_vfprintf_r+0x148a>
 8003fc4:	9b04      	ldr	r3, [sp, #16]
 8003fc6:	2b46      	cmp	r3, #70	; 0x46
 8003fc8:	f000 8300 	beq.w	80045cc <_vfprintf_r+0x16c4>
 8003fcc:	9904      	ldr	r1, [sp, #16]
 8003fce:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003fd0:	b2f2      	uxtb	r2, r6
 8003fd2:	2941      	cmp	r1, #65	; 0x41
 8003fd4:	bf08      	it	eq
 8003fd6:	320f      	addeq	r2, #15
 8003fd8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003fdc:	bf06      	itte	eq
 8003fde:	b2d2      	uxtbeq	r2, r2
 8003fe0:	2101      	moveq	r1, #1
 8003fe2:	2100      	movne	r1, #0
 8003fe4:	2b00      	cmp	r3, #0
 8003fe6:	9324      	str	r3, [sp, #144]	; 0x90
 8003fe8:	bfb8      	it	lt
 8003fea:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003fec:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003ff0:	bfba      	itte	lt
 8003ff2:	f1c3 0301 	rsblt	r3, r3, #1
 8003ff6:	222d      	movlt	r2, #45	; 0x2d
 8003ff8:	222b      	movge	r2, #43	; 0x2b
 8003ffa:	2b09      	cmp	r3, #9
 8003ffc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8004000:	f300 83f9 	bgt.w	80047f6 <_vfprintf_r+0x18ee>
 8004004:	2900      	cmp	r1, #0
 8004006:	f040 8487 	bne.w	8004918 <_vfprintf_r+0x1a10>
 800400a:	2230      	movs	r2, #48	; 0x30
 800400c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8004010:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8004014:	3330      	adds	r3, #48	; 0x30
 8004016:	7013      	strb	r3, [r2, #0]
 8004018:	1c53      	adds	r3, r2, #1
 800401a:	aa26      	add	r2, sp, #152	; 0x98
 800401c:	1a9b      	subs	r3, r3, r2
 800401e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004020:	9319      	str	r3, [sp, #100]	; 0x64
 8004022:	2a01      	cmp	r2, #1
 8004024:	4413      	add	r3, r2
 8004026:	9309      	str	r3, [sp, #36]	; 0x24
 8004028:	f340 8442 	ble.w	80048b0 <_vfprintf_r+0x19a8>
 800402c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800402e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004030:	4413      	add	r3, r2
 8004032:	9309      	str	r3, [sp, #36]	; 0x24
 8004034:	2300      	movs	r3, #0
 8004036:	930f      	str	r3, [sp, #60]	; 0x3c
 8004038:	9314      	str	r3, [sp, #80]	; 0x50
 800403a:	9311      	str	r3, [sp, #68]	; 0x44
 800403c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800403e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8004042:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004046:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800404a:	9304      	str	r3, [sp, #16]
 800404c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800404e:	2b00      	cmp	r3, #0
 8004050:	f040 8275 	bne.w	800453e <_vfprintf_r+0x1636>
 8004054:	4699      	mov	r9, r3
 8004056:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800405a:	f7ff b8e2 	b.w	8003222 <_vfprintf_r+0x31a>
 800405e:	bf00      	nop
 8004060:	08007ba0 	.word	0x08007ba0
 8004064:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004066:	49bd      	ldr	r1, [pc, #756]	; (800435c <_vfprintf_r+0x1454>)
 8004068:	f8cb 1000 	str.w	r1, [fp]
 800406c:	3201      	adds	r2, #1
 800406e:	3401      	adds	r4, #1
 8004070:	2101      	movs	r1, #1
 8004072:	2a07      	cmp	r2, #7
 8004074:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004078:	f8cb 1004 	str.w	r1, [fp, #4]
 800407c:	dc60      	bgt.n	8004140 <_vfprintf_r+0x1238>
 800407e:	f10b 0b08 	add.w	fp, fp, #8
 8004082:	b92b      	cbnz	r3, 8004090 <_vfprintf_r+0x1188>
 8004084:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004086:	b91a      	cbnz	r2, 8004090 <_vfprintf_r+0x1188>
 8004088:	f018 0f01 	tst.w	r8, #1
 800408c:	f43f a98d 	beq.w	80033aa <_vfprintf_r+0x4a2>
 8004090:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004092:	9916      	ldr	r1, [sp, #88]	; 0x58
 8004094:	f8cb 1000 	str.w	r1, [fp]
 8004098:	9915      	ldr	r1, [sp, #84]	; 0x54
 800409a:	f8cb 1004 	str.w	r1, [fp, #4]
 800409e:	3201      	adds	r2, #1
 80040a0:	440c      	add	r4, r1
 80040a2:	2a07      	cmp	r2, #7
 80040a4:	942c      	str	r4, [sp, #176]	; 0xb0
 80040a6:	922b      	str	r2, [sp, #172]	; 0xac
 80040a8:	f300 8282 	bgt.w	80045b0 <_vfprintf_r+0x16a8>
 80040ac:	f10b 0b08 	add.w	fp, fp, #8
 80040b0:	2b00      	cmp	r3, #0
 80040b2:	f2c0 82e7 	blt.w	8004684 <_vfprintf_r+0x177c>
 80040b6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80040b8:	3201      	adds	r2, #1
 80040ba:	441c      	add	r4, r3
 80040bc:	2a07      	cmp	r2, #7
 80040be:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80040c2:	e9cb 7300 	strd	r7, r3, [fp]
 80040c6:	f77f a96e 	ble.w	80033a6 <_vfprintf_r+0x49e>
 80040ca:	e4fe      	b.n	8003aca <_vfprintf_r+0xbc2>
 80040cc:	aa2a      	add	r2, sp, #168	; 0xa8
 80040ce:	9907      	ldr	r1, [sp, #28]
 80040d0:	9803      	ldr	r0, [sp, #12]
 80040d2:	f002 feb7 	bl	8006e44 <__sprint_r>
 80040d6:	2800      	cmp	r0, #0
 80040d8:	f47f ac8e 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 80040dc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80040e0:	f7ff bbf0 	b.w	80038c4 <_vfprintf_r+0x9bc>
 80040e4:	9a05      	ldr	r2, [sp, #20]
 80040e6:	601a      	str	r2, [r3, #0]
 80040e8:	4657      	mov	r7, sl
 80040ea:	f7ff b9b3 	b.w	8003454 <_vfprintf_r+0x54c>
 80040ee:	8814      	ldrh	r4, [r2, #0]
 80040f0:	9108      	str	r1, [sp, #32]
 80040f2:	2500      	movs	r5, #0
 80040f4:	2201      	movs	r2, #1
 80040f6:	f7ff b9c8 	b.w	800348a <_vfprintf_r+0x582>
 80040fa:	8814      	ldrh	r4, [r2, #0]
 80040fc:	9308      	str	r3, [sp, #32]
 80040fe:	2500      	movs	r5, #0
 8004100:	f7ff ba14 	b.w	800352c <_vfprintf_r+0x624>
 8004104:	f9b1 4000 	ldrsh.w	r4, [r1]
 8004108:	9208      	str	r2, [sp, #32]
 800410a:	17e5      	asrs	r5, r4, #31
 800410c:	4620      	mov	r0, r4
 800410e:	4629      	mov	r1, r5
 8004110:	f7ff b855 	b.w	80031be <_vfprintf_r+0x2b6>
 8004114:	8814      	ldrh	r4, [r2, #0]
 8004116:	9308      	str	r3, [sp, #32]
 8004118:	2500      	movs	r5, #0
 800411a:	f7ff b825 	b.w	8003168 <_vfprintf_r+0x260>
 800411e:	222d      	movs	r2, #45	; 0x2d
 8004120:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004124:	f7ff baa2 	b.w	800366c <_vfprintf_r+0x764>
 8004128:	aa2a      	add	r2, sp, #168	; 0xa8
 800412a:	9907      	ldr	r1, [sp, #28]
 800412c:	9803      	ldr	r0, [sp, #12]
 800412e:	f002 fe89 	bl	8006e44 <__sprint_r>
 8004132:	2800      	cmp	r0, #0
 8004134:	f47f ac60 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8004138:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800413a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800413e:	e534      	b.n	8003baa <_vfprintf_r+0xca2>
 8004140:	aa2a      	add	r2, sp, #168	; 0xa8
 8004142:	9907      	ldr	r1, [sp, #28]
 8004144:	9803      	ldr	r0, [sp, #12]
 8004146:	f002 fe7d 	bl	8006e44 <__sprint_r>
 800414a:	2800      	cmp	r0, #0
 800414c:	f47f ac54 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8004150:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004152:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004154:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004158:	e793      	b.n	8004082 <_vfprintf_r+0x117a>
 800415a:	2330      	movs	r3, #48	; 0x30
 800415c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004160:	2378      	movs	r3, #120	; 0x78
 8004162:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8004166:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800416a:	f048 0402 	orr.w	r4, r8, #2
 800416e:	f300 82b0 	bgt.w	80046d2 <_vfprintf_r+0x17ca>
 8004172:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004176:	930e      	str	r3, [sp, #56]	; 0x38
 8004178:	f026 0320 	bic.w	r3, r6, #32
 800417c:	9304      	str	r3, [sp, #16]
 800417e:	2200      	movs	r2, #0
 8004180:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004182:	920a      	str	r2, [sp, #40]	; 0x28
 8004184:	46a0      	mov	r8, r4
 8004186:	af3d      	add	r7, sp, #244	; 0xf4
 8004188:	2b00      	cmp	r3, #0
 800418a:	f2c0 81e3 	blt.w	8004554 <_vfprintf_r+0x164c>
 800418e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8004192:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8004196:	2300      	movs	r3, #0
 8004198:	930b      	str	r3, [sp, #44]	; 0x2c
 800419a:	2e61      	cmp	r6, #97	; 0x61
 800419c:	f000 8255 	beq.w	800464a <_vfprintf_r+0x1742>
 80041a0:	2e41      	cmp	r6, #65	; 0x41
 80041a2:	f47f aee3 	bne.w	8003f6c <_vfprintf_r+0x1064>
 80041a6:	a824      	add	r0, sp, #144	; 0x90
 80041a8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80041ac:	f002 fd52 	bl	8006c54 <frexp>
 80041b0:	2200      	movs	r2, #0
 80041b2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80041b6:	ec51 0b10 	vmov	r0, r1, d0
 80041ba:	f7fc fcbd 	bl	8000b38 <__aeabi_dmul>
 80041be:	2200      	movs	r2, #0
 80041c0:	2300      	movs	r3, #0
 80041c2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80041c6:	f7fc ff1f 	bl	8001008 <__aeabi_dcmpeq>
 80041ca:	2800      	cmp	r0, #0
 80041cc:	f040 8305 	bne.w	80047da <_vfprintf_r+0x18d2>
 80041d0:	4b63      	ldr	r3, [pc, #396]	; (8004360 <_vfprintf_r+0x1458>)
 80041d2:	9309      	str	r3, [sp, #36]	; 0x24
 80041d4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80041d8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80041dc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80041e0:	9721      	str	r7, [sp, #132]	; 0x84
 80041e2:	46b9      	mov	r9, r7
 80041e4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80041e8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80041ec:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80041f0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80041f4:	e003      	b.n	80041fe <_vfprintf_r+0x12f6>
 80041f6:	f7fc ff07 	bl	8001008 <__aeabi_dcmpeq>
 80041fa:	bb20      	cbnz	r0, 8004246 <_vfprintf_r+0x133e>
 80041fc:	46a9      	mov	r9, r5
 80041fe:	2200      	movs	r2, #0
 8004200:	4b58      	ldr	r3, [pc, #352]	; (8004364 <_vfprintf_r+0x145c>)
 8004202:	4630      	mov	r0, r6
 8004204:	4639      	mov	r1, r7
 8004206:	f7fc fc97 	bl	8000b38 <__aeabi_dmul>
 800420a:	460f      	mov	r7, r1
 800420c:	4606      	mov	r6, r0
 800420e:	f7fc ff43 	bl	8001098 <__aeabi_d2iz>
 8004212:	4680      	mov	r8, r0
 8004214:	f7fc fc26 	bl	8000a64 <__aeabi_i2d>
 8004218:	4602      	mov	r2, r0
 800421a:	460b      	mov	r3, r1
 800421c:	4630      	mov	r0, r6
 800421e:	4639      	mov	r1, r7
 8004220:	f7fc fad2 	bl	80007c8 <__aeabi_dsub>
 8004224:	464d      	mov	r5, r9
 8004226:	f81a c008 	ldrb.w	ip, [sl, r8]
 800422a:	f805 cb01 	strb.w	ip, [r5], #1
 800422e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8004232:	46a3      	mov	fp, r4
 8004234:	4606      	mov	r6, r0
 8004236:	460f      	mov	r7, r1
 8004238:	f04f 0200 	mov.w	r2, #0
 800423c:	f04f 0300 	mov.w	r3, #0
 8004240:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8004244:	d1d7      	bne.n	80041f6 <_vfprintf_r+0x12ee>
 8004246:	4630      	mov	r0, r6
 8004248:	4639      	mov	r1, r7
 800424a:	2200      	movs	r2, #0
 800424c:	4b46      	ldr	r3, [pc, #280]	; (8004368 <_vfprintf_r+0x1460>)
 800424e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8004252:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8004254:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8004258:	4644      	mov	r4, r8
 800425a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800425e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8004262:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8004266:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800426a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800426c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004270:	f7fc fef2 	bl	8001058 <__aeabi_dcmpgt>
 8004274:	2800      	cmp	r0, #0
 8004276:	f040 8176 	bne.w	8004566 <_vfprintf_r+0x165e>
 800427a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800427e:	2200      	movs	r2, #0
 8004280:	4b39      	ldr	r3, [pc, #228]	; (8004368 <_vfprintf_r+0x1460>)
 8004282:	f7fc fec1 	bl	8001008 <__aeabi_dcmpeq>
 8004286:	b110      	cbz	r0, 800428e <_vfprintf_r+0x1386>
 8004288:	07e2      	lsls	r2, r4, #31
 800428a:	f100 816c 	bmi.w	8004566 <_vfprintf_r+0x165e>
 800428e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004290:	2b00      	cmp	r3, #0
 8004292:	db07      	blt.n	80042a4 <_vfprintf_r+0x139c>
 8004294:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004296:	3301      	adds	r3, #1
 8004298:	442b      	add	r3, r5
 800429a:	2230      	movs	r2, #48	; 0x30
 800429c:	f805 2b01 	strb.w	r2, [r5], #1
 80042a0:	42ab      	cmp	r3, r5
 80042a2:	d1fb      	bne.n	800429c <_vfprintf_r+0x1394>
 80042a4:	1beb      	subs	r3, r5, r7
 80042a6:	4640      	mov	r0, r8
 80042a8:	9310      	str	r3, [sp, #64]	; 0x40
 80042aa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80042ae:	e683      	b.n	8003fb8 <_vfprintf_r+0x10b0>
 80042b0:	f8cd 9010 	str.w	r9, [sp, #16]
 80042b4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80042b8:	9408      	str	r4, [sp, #32]
 80042ba:	4681      	mov	r9, r0
 80042bc:	900f      	str	r0, [sp, #60]	; 0x3c
 80042be:	9014      	str	r0, [sp, #80]	; 0x50
 80042c0:	9011      	str	r0, [sp, #68]	; 0x44
 80042c2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80042c6:	f7fe bfac 	b.w	8003222 <_vfprintf_r+0x31a>
 80042ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80042cc:	9907      	ldr	r1, [sp, #28]
 80042ce:	9803      	ldr	r0, [sp, #12]
 80042d0:	f002 fdb8 	bl	8006e44 <__sprint_r>
 80042d4:	2800      	cmp	r0, #0
 80042d6:	f47f ab8f 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 80042da:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80042dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80042de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80042e2:	e511      	b.n	8003d08 <_vfprintf_r+0xe00>
 80042e4:	4252      	negs	r2, r2
 80042e6:	9206      	str	r2, [sp, #24]
 80042e8:	9308      	str	r3, [sp, #32]
 80042ea:	f7ff b96d 	b.w	80035c8 <_vfprintf_r+0x6c0>
 80042ee:	4614      	mov	r4, r2
 80042f0:	4632      	mov	r2, r6
 80042f2:	461e      	mov	r6, r3
 80042f4:	4613      	mov	r3, r2
 80042f6:	462a      	mov	r2, r5
 80042f8:	3201      	adds	r2, #1
 80042fa:	9209      	str	r2, [sp, #36]	; 0x24
 80042fc:	f106 0208 	add.w	r2, r6, #8
 8004300:	e9c6 3900 	strd	r3, r9, [r6]
 8004304:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004306:	932b      	str	r3, [sp, #172]	; 0xac
 8004308:	444c      	add	r4, r9
 800430a:	2b07      	cmp	r3, #7
 800430c:	942c      	str	r4, [sp, #176]	; 0xb0
 800430e:	f73f acc3 	bgt.w	8003c98 <_vfprintf_r+0xd90>
 8004312:	3301      	adds	r3, #1
 8004314:	9309      	str	r3, [sp, #36]	; 0x24
 8004316:	f102 0b08 	add.w	fp, r2, #8
 800431a:	4616      	mov	r6, r2
 800431c:	f7ff bbca 	b.w	8003ab4 <_vfprintf_r+0xbac>
 8004320:	aa2a      	add	r2, sp, #168	; 0xa8
 8004322:	9907      	ldr	r1, [sp, #28]
 8004324:	9803      	ldr	r0, [sp, #12]
 8004326:	f002 fd8d 	bl	8006e44 <__sprint_r>
 800432a:	2800      	cmp	r0, #0
 800432c:	f47f ab64 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8004330:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004332:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004336:	f7ff bade 	b.w	80038f6 <_vfprintf_r+0x9ee>
 800433a:	464b      	mov	r3, r9
 800433c:	2b06      	cmp	r3, #6
 800433e:	bf28      	it	cs
 8004340:	2306      	movcs	r3, #6
 8004342:	46b9      	mov	r9, r7
 8004344:	970f      	str	r7, [sp, #60]	; 0x3c
 8004346:	9714      	str	r7, [sp, #80]	; 0x50
 8004348:	9711      	str	r7, [sp, #68]	; 0x44
 800434a:	970a      	str	r7, [sp, #40]	; 0x28
 800434c:	463a      	mov	r2, r7
 800434e:	9304      	str	r3, [sp, #16]
 8004350:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8004354:	4f05      	ldr	r7, [pc, #20]	; (800436c <_vfprintf_r+0x1464>)
 8004356:	f7fe bf64 	b.w	8003222 <_vfprintf_r+0x31a>
 800435a:	bf00      	nop
 800435c:	08007b8c 	.word	0x08007b8c
 8004360:	08007b70 	.word	0x08007b70
 8004364:	40300000 	.word	0x40300000
 8004368:	3fe00000 	.word	0x3fe00000
 800436c:	08007b84 	.word	0x08007b84
 8004370:	460c      	mov	r4, r1
 8004372:	4639      	mov	r1, r7
 8004374:	465f      	mov	r7, fp
 8004376:	469b      	mov	fp, r3
 8004378:	460b      	mov	r3, r1
 800437a:	3201      	adds	r2, #1
 800437c:	442c      	add	r4, r5
 800437e:	2a07      	cmp	r2, #7
 8004380:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004384:	e9cb 3500 	strd	r3, r5, [fp]
 8004388:	f73f aca5 	bgt.w	8003cd6 <_vfprintf_r+0xdce>
 800438c:	f10b 0b08 	add.w	fp, fp, #8
 8004390:	e4ac      	b.n	8003cec <_vfprintf_r+0xde4>
 8004392:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004394:	1cda      	adds	r2, r3, #3
 8004396:	db02      	blt.n	800439e <_vfprintf_r+0x1496>
 8004398:	4599      	cmp	r9, r3
 800439a:	f280 80b5 	bge.w	8004508 <_vfprintf_r+0x1600>
 800439e:	3e02      	subs	r6, #2
 80043a0:	f026 0320 	bic.w	r3, r6, #32
 80043a4:	9304      	str	r3, [sp, #16]
 80043a6:	e611      	b.n	8003fcc <_vfprintf_r+0x10c4>
 80043a8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80043aa:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80043ae:	465a      	mov	r2, fp
 80043b0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80043b4:	18fb      	adds	r3, r7, r3
 80043b6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80043ba:	970c      	str	r7, [sp, #48]	; 0x30
 80043bc:	4eaf      	ldr	r6, [pc, #700]	; (800467c <_vfprintf_r+0x1774>)
 80043be:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80043c2:	9309      	str	r3, [sp, #36]	; 0x24
 80043c4:	464f      	mov	r7, r9
 80043c6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80043ca:	4621      	mov	r1, r4
 80043cc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80043ce:	2b00      	cmp	r3, #0
 80043d0:	d05b      	beq.n	800448a <_vfprintf_r+0x1582>
 80043d2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80043d4:	2b00      	cmp	r3, #0
 80043d6:	d154      	bne.n	8004482 <_vfprintf_r+0x157a>
 80043d8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80043da:	3b01      	subs	r3, #1
 80043dc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80043e0:	9314      	str	r3, [sp, #80]	; 0x50
 80043e2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80043e4:	9818      	ldr	r0, [sp, #96]	; 0x60
 80043e6:	6010      	str	r0, [r2, #0]
 80043e8:	3301      	adds	r3, #1
 80043ea:	4459      	add	r1, fp
 80043ec:	2b07      	cmp	r3, #7
 80043ee:	912c      	str	r1, [sp, #176]	; 0xb0
 80043f0:	f8c2 b004 	str.w	fp, [r2, #4]
 80043f4:	932b      	str	r3, [sp, #172]	; 0xac
 80043f6:	dc68      	bgt.n	80044ca <_vfprintf_r+0x15c2>
 80043f8:	3208      	adds	r2, #8
 80043fa:	9809      	ldr	r0, [sp, #36]	; 0x24
 80043fc:	f898 3000 	ldrb.w	r3, [r8]
 8004400:	1bc5      	subs	r5, r0, r7
 8004402:	429d      	cmp	r5, r3
 8004404:	bfa8      	it	ge
 8004406:	461d      	movge	r5, r3
 8004408:	2d00      	cmp	r5, #0
 800440a:	dd0b      	ble.n	8004424 <_vfprintf_r+0x151c>
 800440c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800440e:	6017      	str	r7, [r2, #0]
 8004410:	3301      	adds	r3, #1
 8004412:	4429      	add	r1, r5
 8004414:	2b07      	cmp	r3, #7
 8004416:	912c      	str	r1, [sp, #176]	; 0xb0
 8004418:	6055      	str	r5, [r2, #4]
 800441a:	932b      	str	r3, [sp, #172]	; 0xac
 800441c:	dc5e      	bgt.n	80044dc <_vfprintf_r+0x15d4>
 800441e:	f898 3000 	ldrb.w	r3, [r8]
 8004422:	3208      	adds	r2, #8
 8004424:	2d00      	cmp	r5, #0
 8004426:	bfac      	ite	ge
 8004428:	1b5d      	subge	r5, r3, r5
 800442a:	461d      	movlt	r5, r3
 800442c:	2d00      	cmp	r5, #0
 800442e:	dd26      	ble.n	800447e <_vfprintf_r+0x1576>
 8004430:	2d10      	cmp	r5, #16
 8004432:	982b      	ldr	r0, [sp, #172]	; 0xac
 8004434:	dd3c      	ble.n	80044b0 <_vfprintf_r+0x15a8>
 8004436:	2410      	movs	r4, #16
 8004438:	e003      	b.n	8004442 <_vfprintf_r+0x153a>
 800443a:	3208      	adds	r2, #8
 800443c:	3d10      	subs	r5, #16
 800443e:	2d10      	cmp	r5, #16
 8004440:	dd36      	ble.n	80044b0 <_vfprintf_r+0x15a8>
 8004442:	3001      	adds	r0, #1
 8004444:	3110      	adds	r1, #16
 8004446:	2807      	cmp	r0, #7
 8004448:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800444c:	e9c2 6400 	strd	r6, r4, [r2]
 8004450:	ddf3      	ble.n	800443a <_vfprintf_r+0x1532>
 8004452:	aa2a      	add	r2, sp, #168	; 0xa8
 8004454:	4651      	mov	r1, sl
 8004456:	4648      	mov	r0, r9
 8004458:	f002 fcf4 	bl	8006e44 <__sprint_r>
 800445c:	2800      	cmp	r0, #0
 800445e:	d150      	bne.n	8004502 <_vfprintf_r+0x15fa>
 8004460:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8004464:	aa2d      	add	r2, sp, #180	; 0xb4
 8004466:	e7e9      	b.n	800443c <_vfprintf_r+0x1534>
 8004468:	aa2a      	add	r2, sp, #168	; 0xa8
 800446a:	4651      	mov	r1, sl
 800446c:	4648      	mov	r0, r9
 800446e:	f002 fce9 	bl	8006e44 <__sprint_r>
 8004472:	2800      	cmp	r0, #0
 8004474:	d145      	bne.n	8004502 <_vfprintf_r+0x15fa>
 8004476:	f898 3000 	ldrb.w	r3, [r8]
 800447a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800447c:	aa2d      	add	r2, sp, #180	; 0xb4
 800447e:	441f      	add	r7, r3
 8004480:	e7a4      	b.n	80043cc <_vfprintf_r+0x14c4>
 8004482:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004484:	3b01      	subs	r3, #1
 8004486:	930f      	str	r3, [sp, #60]	; 0x3c
 8004488:	e7ab      	b.n	80043e2 <_vfprintf_r+0x14da>
 800448a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800448c:	2b00      	cmp	r3, #0
 800448e:	d1f8      	bne.n	8004482 <_vfprintf_r+0x157a>
 8004490:	46b9      	mov	r9, r7
 8004492:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004494:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8004496:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 800449a:	18fb      	adds	r3, r7, r3
 800449c:	4599      	cmp	r9, r3
 800449e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80044a2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80044a6:	4693      	mov	fp, r2
 80044a8:	460c      	mov	r4, r1
 80044aa:	bf28      	it	cs
 80044ac:	4699      	movcs	r9, r3
 80044ae:	e424      	b.n	8003cfa <_vfprintf_r+0xdf2>
 80044b0:	3001      	adds	r0, #1
 80044b2:	4429      	add	r1, r5
 80044b4:	2807      	cmp	r0, #7
 80044b6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80044ba:	e9c2 6500 	strd	r6, r5, [r2]
 80044be:	dcd3      	bgt.n	8004468 <_vfprintf_r+0x1560>
 80044c0:	f898 3000 	ldrb.w	r3, [r8]
 80044c4:	3208      	adds	r2, #8
 80044c6:	441f      	add	r7, r3
 80044c8:	e780      	b.n	80043cc <_vfprintf_r+0x14c4>
 80044ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80044cc:	4651      	mov	r1, sl
 80044ce:	4648      	mov	r0, r9
 80044d0:	f002 fcb8 	bl	8006e44 <__sprint_r>
 80044d4:	b9a8      	cbnz	r0, 8004502 <_vfprintf_r+0x15fa>
 80044d6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80044d8:	aa2d      	add	r2, sp, #180	; 0xb4
 80044da:	e78e      	b.n	80043fa <_vfprintf_r+0x14f2>
 80044dc:	aa2a      	add	r2, sp, #168	; 0xa8
 80044de:	4651      	mov	r1, sl
 80044e0:	4648      	mov	r0, r9
 80044e2:	f002 fcaf 	bl	8006e44 <__sprint_r>
 80044e6:	b960      	cbnz	r0, 8004502 <_vfprintf_r+0x15fa>
 80044e8:	f898 3000 	ldrb.w	r3, [r8]
 80044ec:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80044ee:	aa2d      	add	r2, sp, #180	; 0xb4
 80044f0:	e798      	b.n	8004424 <_vfprintf_r+0x151c>
 80044f2:	4638      	mov	r0, r7
 80044f4:	f7fc f8a4 	bl	8000640 <strlen>
 80044f8:	46a9      	mov	r9, r5
 80044fa:	4603      	mov	r3, r0
 80044fc:	9009      	str	r0, [sp, #36]	; 0x24
 80044fe:	f7ff b8f4 	b.w	80036ea <_vfprintf_r+0x7e2>
 8004502:	46d1      	mov	r9, sl
 8004504:	f7ff ba7a 	b.w	80039fc <_vfprintf_r+0xaf4>
 8004508:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800450a:	4619      	mov	r1, r3
 800450c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800450e:	4299      	cmp	r1, r3
 8004510:	f300 8082 	bgt.w	8004618 <_vfprintf_r+0x1710>
 8004514:	07c4      	lsls	r4, r0, #31
 8004516:	f140 816b 	bpl.w	80047f0 <_vfprintf_r+0x18e8>
 800451a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800451c:	4413      	add	r3, r2
 800451e:	9309      	str	r3, [sp, #36]	; 0x24
 8004520:	0541      	lsls	r1, r0, #21
 8004522:	d503      	bpl.n	800452c <_vfprintf_r+0x1624>
 8004524:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004526:	2b00      	cmp	r3, #0
 8004528:	f300 80e6 	bgt.w	80046f8 <_vfprintf_r+0x17f0>
 800452c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800452e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004532:	9304      	str	r3, [sp, #16]
 8004534:	2667      	movs	r6, #103	; 0x67
 8004536:	2300      	movs	r3, #0
 8004538:	930f      	str	r3, [sp, #60]	; 0x3c
 800453a:	9314      	str	r3, [sp, #80]	; 0x50
 800453c:	e586      	b.n	800404c <_vfprintf_r+0x1144>
 800453e:	222d      	movs	r2, #45	; 0x2d
 8004540:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004544:	f04f 0900 	mov.w	r9, #0
 8004548:	f7fe be6c 	b.w	8003224 <_vfprintf_r+0x31c>
 800454c:	46a1      	mov	r9, r4
 800454e:	f7ff ba55 	b.w	80039fc <_vfprintf_r+0xaf4>
 8004552:	900a      	str	r0, [sp, #40]	; 0x28
 8004554:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8004558:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800455c:	931f      	str	r3, [sp, #124]	; 0x7c
 800455e:	232d      	movs	r3, #45	; 0x2d
 8004560:	911e      	str	r1, [sp, #120]	; 0x78
 8004562:	930b      	str	r3, [sp, #44]	; 0x2c
 8004564:	e619      	b.n	800419a <_vfprintf_r+0x1292>
 8004566:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004568:	9328      	str	r3, [sp, #160]	; 0xa0
 800456a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800456c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8004570:	7bd9      	ldrb	r1, [r3, #15]
 8004572:	4291      	cmp	r1, r2
 8004574:	462b      	mov	r3, r5
 8004576:	d109      	bne.n	800458c <_vfprintf_r+0x1684>
 8004578:	2030      	movs	r0, #48	; 0x30
 800457a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800457e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004580:	1e5a      	subs	r2, r3, #1
 8004582:	9228      	str	r2, [sp, #160]	; 0xa0
 8004584:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004588:	4291      	cmp	r1, r2
 800458a:	d0f6      	beq.n	800457a <_vfprintf_r+0x1672>
 800458c:	2a39      	cmp	r2, #57	; 0x39
 800458e:	bf0b      	itete	eq
 8004590:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8004592:	3201      	addne	r2, #1
 8004594:	7a92      	ldrbeq	r2, [r2, #10]
 8004596:	b2d2      	uxtbne	r2, r2
 8004598:	f803 2c01 	strb.w	r2, [r3, #-1]
 800459c:	e682      	b.n	80042a4 <_vfprintf_r+0x139c>
 800459e:	f418 7f00 	tst.w	r8, #512	; 0x200
 80045a2:	f43f ad9f 	beq.w	80040e4 <_vfprintf_r+0x11dc>
 80045a6:	9a05      	ldr	r2, [sp, #20]
 80045a8:	701a      	strb	r2, [r3, #0]
 80045aa:	4657      	mov	r7, sl
 80045ac:	f7fe bf52 	b.w	8003454 <_vfprintf_r+0x54c>
 80045b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80045b2:	9907      	ldr	r1, [sp, #28]
 80045b4:	9803      	ldr	r0, [sp, #12]
 80045b6:	f002 fc45 	bl	8006e44 <__sprint_r>
 80045ba:	2800      	cmp	r0, #0
 80045bc:	f47f aa1c 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 80045c0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80045c2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80045c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80045ca:	e571      	b.n	80040b0 <_vfprintf_r+0x11a8>
 80045cc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80045ce:	2b00      	cmp	r3, #0
 80045d0:	f340 8164 	ble.w	800489c <_vfprintf_r+0x1994>
 80045d4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80045d6:	f1b9 0f00 	cmp.w	r9, #0
 80045da:	f040 8103 	bne.w	80047e4 <_vfprintf_r+0x18dc>
 80045de:	07c6      	lsls	r6, r0, #31
 80045e0:	f100 8100 	bmi.w	80047e4 <_vfprintf_r+0x18dc>
 80045e4:	9309      	str	r3, [sp, #36]	; 0x24
 80045e6:	2666      	movs	r6, #102	; 0x66
 80045e8:	0543      	lsls	r3, r0, #21
 80045ea:	f100 8086 	bmi.w	80046fa <_vfprintf_r+0x17f2>
 80045ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045f0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80045f4:	9304      	str	r3, [sp, #16]
 80045f6:	e79e      	b.n	8004536 <_vfprintf_r+0x162e>
 80045f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80045fa:	9907      	ldr	r1, [sp, #28]
 80045fc:	9803      	ldr	r0, [sp, #12]
 80045fe:	f002 fc21 	bl	8006e44 <__sprint_r>
 8004602:	2800      	cmp	r0, #0
 8004604:	f47f a9f8 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8004608:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800460a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800460c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800460e:	1ad3      	subs	r3, r2, r3
 8004610:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004614:	f7ff bb90 	b.w	8003d38 <_vfprintf_r+0xe30>
 8004618:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800461a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800461c:	4413      	add	r3, r2
 800461e:	9309      	str	r3, [sp, #36]	; 0x24
 8004620:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004622:	2b00      	cmp	r3, #0
 8004624:	f340 8149 	ble.w	80048ba <_vfprintf_r+0x19b2>
 8004628:	2667      	movs	r6, #103	; 0x67
 800462a:	e7dd      	b.n	80045e8 <_vfprintf_r+0x16e0>
 800462c:	2330      	movs	r3, #48	; 0x30
 800462e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004632:	2358      	movs	r3, #88	; 0x58
 8004634:	e595      	b.n	8004162 <_vfprintf_r+0x125a>
 8004636:	9803      	ldr	r0, [sp, #12]
 8004638:	aa2a      	add	r2, sp, #168	; 0xa8
 800463a:	4649      	mov	r1, r9
 800463c:	f002 fc02 	bl	8006e44 <__sprint_r>
 8004640:	2800      	cmp	r0, #0
 8004642:	f47f a9e0 	bne.w	8003a06 <_vfprintf_r+0xafe>
 8004646:	f7fe bf0f 	b.w	8003468 <_vfprintf_r+0x560>
 800464a:	a824      	add	r0, sp, #144	; 0x90
 800464c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004650:	f002 fb00 	bl	8006c54 <frexp>
 8004654:	2200      	movs	r2, #0
 8004656:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800465a:	ec51 0b10 	vmov	r0, r1, d0
 800465e:	f7fc fa6b 	bl	8000b38 <__aeabi_dmul>
 8004662:	2200      	movs	r2, #0
 8004664:	2300      	movs	r3, #0
 8004666:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800466a:	f7fc fccd 	bl	8001008 <__aeabi_dcmpeq>
 800466e:	b108      	cbz	r0, 8004674 <_vfprintf_r+0x176c>
 8004670:	2301      	movs	r3, #1
 8004672:	9324      	str	r3, [sp, #144]	; 0x90
 8004674:	4b02      	ldr	r3, [pc, #8]	; (8004680 <_vfprintf_r+0x1778>)
 8004676:	9309      	str	r3, [sp, #36]	; 0x24
 8004678:	e5ac      	b.n	80041d4 <_vfprintf_r+0x12cc>
 800467a:	bf00      	nop
 800467c:	08007ba0 	.word	0x08007ba0
 8004680:	08007b5c 	.word	0x08007b5c
 8004684:	425d      	negs	r5, r3
 8004686:	3310      	adds	r3, #16
 8004688:	4bb9      	ldr	r3, [pc, #740]	; (8004970 <_vfprintf_r+0x1a68>)
 800468a:	f280 8097 	bge.w	80047bc <_vfprintf_r+0x18b4>
 800468e:	4619      	mov	r1, r3
 8004690:	2610      	movs	r6, #16
 8004692:	4623      	mov	r3, r4
 8004694:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004698:	460c      	mov	r4, r1
 800469a:	e005      	b.n	80046a8 <_vfprintf_r+0x17a0>
 800469c:	f10b 0b08 	add.w	fp, fp, #8
 80046a0:	3d10      	subs	r5, #16
 80046a2:	2d10      	cmp	r5, #16
 80046a4:	f340 8087 	ble.w	80047b6 <_vfprintf_r+0x18ae>
 80046a8:	3201      	adds	r2, #1
 80046aa:	3310      	adds	r3, #16
 80046ac:	2a07      	cmp	r2, #7
 80046ae:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80046b2:	e9cb 4600 	strd	r4, r6, [fp]
 80046b6:	ddf1      	ble.n	800469c <_vfprintf_r+0x1794>
 80046b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80046ba:	9907      	ldr	r1, [sp, #28]
 80046bc:	4648      	mov	r0, r9
 80046be:	f002 fbc1 	bl	8006e44 <__sprint_r>
 80046c2:	2800      	cmp	r0, #0
 80046c4:	f47f a998 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 80046c8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80046cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80046d0:	e7e6      	b.n	80046a0 <_vfprintf_r+0x1798>
 80046d2:	f109 0101 	add.w	r1, r9, #1
 80046d6:	9803      	ldr	r0, [sp, #12]
 80046d8:	f001 fd02 	bl	80060e0 <_malloc_r>
 80046dc:	4607      	mov	r7, r0
 80046de:	2800      	cmp	r0, #0
 80046e0:	f000 813b 	beq.w	800495a <_vfprintf_r+0x1a52>
 80046e4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80046e8:	930e      	str	r3, [sp, #56]	; 0x38
 80046ea:	f026 0320 	bic.w	r3, r6, #32
 80046ee:	9304      	str	r3, [sp, #16]
 80046f0:	46a0      	mov	r8, r4
 80046f2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80046f4:	900a      	str	r0, [sp, #40]	; 0x28
 80046f6:	e547      	b.n	8004188 <_vfprintf_r+0x1280>
 80046f8:	2667      	movs	r6, #103	; 0x67
 80046fa:	981a      	ldr	r0, [sp, #104]	; 0x68
 80046fc:	2200      	movs	r2, #0
 80046fe:	920f      	str	r2, [sp, #60]	; 0x3c
 8004700:	9214      	str	r2, [sp, #80]	; 0x50
 8004702:	7803      	ldrb	r3, [r0, #0]
 8004704:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004706:	2bff      	cmp	r3, #255	; 0xff
 8004708:	d00c      	beq.n	8004724 <_vfprintf_r+0x181c>
 800470a:	4293      	cmp	r3, r2
 800470c:	da0a      	bge.n	8004724 <_vfprintf_r+0x181c>
 800470e:	7841      	ldrb	r1, [r0, #1]
 8004710:	1ad2      	subs	r2, r2, r3
 8004712:	b1a9      	cbz	r1, 8004740 <_vfprintf_r+0x1838>
 8004714:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004716:	3301      	adds	r3, #1
 8004718:	9314      	str	r3, [sp, #80]	; 0x50
 800471a:	460b      	mov	r3, r1
 800471c:	2bff      	cmp	r3, #255	; 0xff
 800471e:	f100 0001 	add.w	r0, r0, #1
 8004722:	d1f2      	bne.n	800470a <_vfprintf_r+0x1802>
 8004724:	9211      	str	r2, [sp, #68]	; 0x44
 8004726:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004728:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800472a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800472c:	901a      	str	r0, [sp, #104]	; 0x68
 800472e:	4413      	add	r3, r2
 8004730:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004732:	fb02 1303 	mla	r3, r2, r3, r1
 8004736:	9309      	str	r3, [sp, #36]	; 0x24
 8004738:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800473c:	9304      	str	r3, [sp, #16]
 800473e:	e485      	b.n	800404c <_vfprintf_r+0x1144>
 8004740:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004742:	3101      	adds	r1, #1
 8004744:	910f      	str	r1, [sp, #60]	; 0x3c
 8004746:	e7de      	b.n	8004706 <_vfprintf_r+0x17fe>
 8004748:	aa28      	add	r2, sp, #160	; 0xa0
 800474a:	ab25      	add	r3, sp, #148	; 0x94
 800474c:	e9cd 3200 	strd	r3, r2, [sp]
 8004750:	2103      	movs	r1, #3
 8004752:	ab24      	add	r3, sp, #144	; 0x90
 8004754:	464a      	mov	r2, r9
 8004756:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800475a:	9803      	ldr	r0, [sp, #12]
 800475c:	f000 fa5c 	bl	8004c18 <_dtoa_r>
 8004760:	464d      	mov	r5, r9
 8004762:	4607      	mov	r7, r0
 8004764:	eb00 0409 	add.w	r4, r0, r9
 8004768:	783b      	ldrb	r3, [r7, #0]
 800476a:	2b30      	cmp	r3, #48	; 0x30
 800476c:	f000 80be 	beq.w	80048ec <_vfprintf_r+0x19e4>
 8004770:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8004772:	442c      	add	r4, r5
 8004774:	2200      	movs	r2, #0
 8004776:	2300      	movs	r3, #0
 8004778:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800477c:	f7fc fc44 	bl	8001008 <__aeabi_dcmpeq>
 8004780:	b108      	cbz	r0, 8004786 <_vfprintf_r+0x187e>
 8004782:	4623      	mov	r3, r4
 8004784:	e413      	b.n	8003fae <_vfprintf_r+0x10a6>
 8004786:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004788:	42a3      	cmp	r3, r4
 800478a:	f4bf ac10 	bcs.w	8003fae <_vfprintf_r+0x10a6>
 800478e:	2130      	movs	r1, #48	; 0x30
 8004790:	1c5a      	adds	r2, r3, #1
 8004792:	9228      	str	r2, [sp, #160]	; 0xa0
 8004794:	7019      	strb	r1, [r3, #0]
 8004796:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004798:	429c      	cmp	r4, r3
 800479a:	d8f9      	bhi.n	8004790 <_vfprintf_r+0x1888>
 800479c:	e407      	b.n	8003fae <_vfprintf_r+0x10a6>
 800479e:	197c      	adds	r4, r7, r5
 80047a0:	e7e8      	b.n	8004774 <_vfprintf_r+0x186c>
 80047a2:	f1b9 0f00 	cmp.w	r9, #0
 80047a6:	f000 8092 	beq.w	80048ce <_vfprintf_r+0x19c6>
 80047aa:	900a      	str	r0, [sp, #40]	; 0x28
 80047ac:	e4ec      	b.n	8004188 <_vfprintf_r+0x1280>
 80047ae:	900a      	str	r0, [sp, #40]	; 0x28
 80047b0:	f04f 0906 	mov.w	r9, #6
 80047b4:	e4e8      	b.n	8004188 <_vfprintf_r+0x1280>
 80047b6:	4621      	mov	r1, r4
 80047b8:	461c      	mov	r4, r3
 80047ba:	460b      	mov	r3, r1
 80047bc:	3201      	adds	r2, #1
 80047be:	442c      	add	r4, r5
 80047c0:	2a07      	cmp	r2, #7
 80047c2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80047c6:	e9cb 3500 	strd	r3, r5, [fp]
 80047ca:	f300 80a9 	bgt.w	8004920 <_vfprintf_r+0x1a18>
 80047ce:	f10b 0b08 	add.w	fp, fp, #8
 80047d2:	e470      	b.n	80040b6 <_vfprintf_r+0x11ae>
 80047d4:	469a      	mov	sl, r3
 80047d6:	f7ff bb37 	b.w	8003e48 <_vfprintf_r+0xf40>
 80047da:	2301      	movs	r3, #1
 80047dc:	9324      	str	r3, [sp, #144]	; 0x90
 80047de:	4b65      	ldr	r3, [pc, #404]	; (8004974 <_vfprintf_r+0x1a6c>)
 80047e0:	9309      	str	r3, [sp, #36]	; 0x24
 80047e2:	e4f7      	b.n	80041d4 <_vfprintf_r+0x12cc>
 80047e4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80047e6:	4413      	add	r3, r2
 80047e8:	444b      	add	r3, r9
 80047ea:	9309      	str	r3, [sp, #36]	; 0x24
 80047ec:	2666      	movs	r6, #102	; 0x66
 80047ee:	e6fb      	b.n	80045e8 <_vfprintf_r+0x16e0>
 80047f0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80047f2:	9309      	str	r3, [sp, #36]	; 0x24
 80047f4:	e694      	b.n	8004520 <_vfprintf_r+0x1618>
 80047f6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80047fa:	4664      	mov	r4, ip
 80047fc:	4d5e      	ldr	r5, [pc, #376]	; (8004978 <_vfprintf_r+0x1a70>)
 80047fe:	e000      	b.n	8004802 <_vfprintf_r+0x18fa>
 8004800:	4614      	mov	r4, r2
 8004802:	fba5 1203 	umull	r1, r2, r5, r3
 8004806:	08d2      	lsrs	r2, r2, #3
 8004808:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800480c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004810:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004814:	4613      	mov	r3, r2
 8004816:	2b09      	cmp	r3, #9
 8004818:	f804 1c01 	strb.w	r1, [r4, #-1]
 800481c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004820:	dcee      	bgt.n	8004800 <_vfprintf_r+0x18f8>
 8004822:	3330      	adds	r3, #48	; 0x30
 8004824:	3c02      	subs	r4, #2
 8004826:	b2db      	uxtb	r3, r3
 8004828:	45a4      	cmp	ip, r4
 800482a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800482e:	f240 8090 	bls.w	8004952 <_vfprintf_r+0x1a4a>
 8004832:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004836:	4611      	mov	r1, r2
 8004838:	e001      	b.n	800483e <_vfprintf_r+0x1936>
 800483a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800483e:	f804 3b01 	strb.w	r3, [r4], #1
 8004842:	458c      	cmp	ip, r1
 8004844:	d1f9      	bne.n	800483a <_vfprintf_r+0x1932>
 8004846:	ab2a      	add	r3, sp, #168	; 0xa8
 8004848:	1a9b      	subs	r3, r3, r2
 800484a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800484e:	4413      	add	r3, r2
 8004850:	f7ff bbe3 	b.w	800401a <_vfprintf_r+0x1112>
 8004854:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004856:	4f49      	ldr	r7, [pc, #292]	; (800497c <_vfprintf_r+0x1a74>)
 8004858:	2b00      	cmp	r3, #0
 800485a:	bfb6      	itet	lt
 800485c:	222d      	movlt	r2, #45	; 0x2d
 800485e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004862:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004866:	4b46      	ldr	r3, [pc, #280]	; (8004980 <_vfprintf_r+0x1a78>)
 8004868:	f7fe bf02 	b.w	8003670 <_vfprintf_r+0x768>
 800486c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004870:	f7ff b8c9 	b.w	8003a06 <_vfprintf_r+0xafe>
 8004874:	aa28      	add	r2, sp, #160	; 0xa0
 8004876:	ab25      	add	r3, sp, #148	; 0x94
 8004878:	e9cd 3200 	strd	r3, r2, [sp]
 800487c:	2103      	movs	r1, #3
 800487e:	ab24      	add	r3, sp, #144	; 0x90
 8004880:	464a      	mov	r2, r9
 8004882:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004886:	9803      	ldr	r0, [sp, #12]
 8004888:	f000 f9c6 	bl	8004c18 <_dtoa_r>
 800488c:	464d      	mov	r5, r9
 800488e:	4607      	mov	r7, r0
 8004890:	2e46      	cmp	r6, #70	; 0x46
 8004892:	eb07 0405 	add.w	r4, r7, r5
 8004896:	f43f af67 	beq.w	8004768 <_vfprintf_r+0x1860>
 800489a:	e76b      	b.n	8004774 <_vfprintf_r+0x186c>
 800489c:	f1b9 0f00 	cmp.w	r9, #0
 80048a0:	d131      	bne.n	8004906 <_vfprintf_r+0x19fe>
 80048a2:	07c5      	lsls	r5, r0, #31
 80048a4:	d42f      	bmi.n	8004906 <_vfprintf_r+0x19fe>
 80048a6:	2301      	movs	r3, #1
 80048a8:	9304      	str	r3, [sp, #16]
 80048aa:	9309      	str	r3, [sp, #36]	; 0x24
 80048ac:	2666      	movs	r6, #102	; 0x66
 80048ae:	e642      	b.n	8004536 <_vfprintf_r+0x162e>
 80048b0:	07c3      	lsls	r3, r0, #31
 80048b2:	f57f abbf 	bpl.w	8004034 <_vfprintf_r+0x112c>
 80048b6:	f7ff bbb9 	b.w	800402c <_vfprintf_r+0x1124>
 80048ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80048bc:	f1c3 0301 	rsb	r3, r3, #1
 80048c0:	441a      	add	r2, r3
 80048c2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80048c6:	9209      	str	r2, [sp, #36]	; 0x24
 80048c8:	9304      	str	r3, [sp, #16]
 80048ca:	2667      	movs	r6, #103	; 0x67
 80048cc:	e633      	b.n	8004536 <_vfprintf_r+0x162e>
 80048ce:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80048d2:	f04f 0901 	mov.w	r9, #1
 80048d6:	e457      	b.n	8004188 <_vfprintf_r+0x1280>
 80048d8:	465a      	mov	r2, fp
 80048da:	e511      	b.n	8004300 <_vfprintf_r+0x13f8>
 80048dc:	2e47      	cmp	r6, #71	; 0x47
 80048de:	f47f af5e 	bne.w	800479e <_vfprintf_r+0x1896>
 80048e2:	f018 0f01 	tst.w	r8, #1
 80048e6:	f43f ab61 	beq.w	8003fac <_vfprintf_r+0x10a4>
 80048ea:	e7d1      	b.n	8004890 <_vfprintf_r+0x1988>
 80048ec:	2200      	movs	r2, #0
 80048ee:	2300      	movs	r3, #0
 80048f0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80048f4:	f7fc fb88 	bl	8001008 <__aeabi_dcmpeq>
 80048f8:	2800      	cmp	r0, #0
 80048fa:	f47f af39 	bne.w	8004770 <_vfprintf_r+0x1868>
 80048fe:	f1c5 0501 	rsb	r5, r5, #1
 8004902:	9524      	str	r5, [sp, #144]	; 0x90
 8004904:	e735      	b.n	8004772 <_vfprintf_r+0x186a>
 8004906:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004908:	3301      	adds	r3, #1
 800490a:	444b      	add	r3, r9
 800490c:	9309      	str	r3, [sp, #36]	; 0x24
 800490e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004912:	9304      	str	r3, [sp, #16]
 8004914:	2666      	movs	r6, #102	; 0x66
 8004916:	e60e      	b.n	8004536 <_vfprintf_r+0x162e>
 8004918:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800491c:	f7ff bb7a 	b.w	8004014 <_vfprintf_r+0x110c>
 8004920:	aa2a      	add	r2, sp, #168	; 0xa8
 8004922:	9907      	ldr	r1, [sp, #28]
 8004924:	9803      	ldr	r0, [sp, #12]
 8004926:	f002 fa8d 	bl	8006e44 <__sprint_r>
 800492a:	2800      	cmp	r0, #0
 800492c:	f47f a864 	bne.w	80039f8 <_vfprintf_r+0xaf0>
 8004930:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004934:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004938:	f7ff bbbd 	b.w	80040b6 <_vfprintf_r+0x11ae>
 800493c:	9908      	ldr	r1, [sp, #32]
 800493e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004942:	680b      	ldr	r3, [r1, #0]
 8004944:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004948:	1d0b      	adds	r3, r1, #4
 800494a:	4692      	mov	sl, r2
 800494c:	9308      	str	r3, [sp, #32]
 800494e:	f7fe bb59 	b.w	8003004 <_vfprintf_r+0xfc>
 8004952:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004956:	f7ff bb60 	b.w	800401a <_vfprintf_r+0x1112>
 800495a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800495e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004962:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004966:	f8a9 300c 	strh.w	r3, [r9, #12]
 800496a:	f7ff b84c 	b.w	8003a06 <_vfprintf_r+0xafe>
 800496e:	bf00      	nop
 8004970:	08007ba0 	.word	0x08007ba0
 8004974:	08007b70 	.word	0x08007b70
 8004978:	cccccccd 	.word	0xcccccccd
 800497c:	08007b58 	.word	0x08007b58
 8004980:	08007b54 	.word	0x08007b54

08004984 <__sbprintf>:
 8004984:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004988:	460c      	mov	r4, r1
 800498a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800498e:	8989      	ldrh	r1, [r1, #12]
 8004990:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004992:	89e5      	ldrh	r5, [r4, #14]
 8004994:	9619      	str	r6, [sp, #100]	; 0x64
 8004996:	f021 0102 	bic.w	r1, r1, #2
 800499a:	4606      	mov	r6, r0
 800499c:	69e0      	ldr	r0, [r4, #28]
 800499e:	f8ad 100c 	strh.w	r1, [sp, #12]
 80049a2:	4617      	mov	r7, r2
 80049a4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80049a8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80049aa:	f8ad 500e 	strh.w	r5, [sp, #14]
 80049ae:	4698      	mov	r8, r3
 80049b0:	ad1a      	add	r5, sp, #104	; 0x68
 80049b2:	2300      	movs	r3, #0
 80049b4:	9007      	str	r0, [sp, #28]
 80049b6:	a816      	add	r0, sp, #88	; 0x58
 80049b8:	9209      	str	r2, [sp, #36]	; 0x24
 80049ba:	9306      	str	r3, [sp, #24]
 80049bc:	9500      	str	r5, [sp, #0]
 80049be:	9504      	str	r5, [sp, #16]
 80049c0:	9102      	str	r1, [sp, #8]
 80049c2:	9105      	str	r1, [sp, #20]
 80049c4:	f001 fb0c 	bl	8005fe0 <__retarget_lock_init_recursive>
 80049c8:	4643      	mov	r3, r8
 80049ca:	463a      	mov	r2, r7
 80049cc:	4669      	mov	r1, sp
 80049ce:	4630      	mov	r0, r6
 80049d0:	f7fe fa9a 	bl	8002f08 <_vfprintf_r>
 80049d4:	1e05      	subs	r5, r0, #0
 80049d6:	db07      	blt.n	80049e8 <__sbprintf+0x64>
 80049d8:	4630      	mov	r0, r6
 80049da:	4669      	mov	r1, sp
 80049dc:	f001 f8d6 	bl	8005b8c <_fflush_r>
 80049e0:	2800      	cmp	r0, #0
 80049e2:	bf18      	it	ne
 80049e4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80049e8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80049ec:	065b      	lsls	r3, r3, #25
 80049ee:	d503      	bpl.n	80049f8 <__sbprintf+0x74>
 80049f0:	89a3      	ldrh	r3, [r4, #12]
 80049f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80049f6:	81a3      	strh	r3, [r4, #12]
 80049f8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80049fa:	f001 faf3 	bl	8005fe4 <__retarget_lock_close_recursive>
 80049fe:	4628      	mov	r0, r5
 8004a00:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004a04:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004a08 <__swsetup_r>:
 8004a08:	b538      	push	{r3, r4, r5, lr}
 8004a0a:	4b31      	ldr	r3, [pc, #196]	; (8004ad0 <__swsetup_r+0xc8>)
 8004a0c:	681b      	ldr	r3, [r3, #0]
 8004a0e:	4605      	mov	r5, r0
 8004a10:	460c      	mov	r4, r1
 8004a12:	b113      	cbz	r3, 8004a1a <__swsetup_r+0x12>
 8004a14:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004a16:	2a00      	cmp	r2, #0
 8004a18:	d03a      	beq.n	8004a90 <__swsetup_r+0x88>
 8004a1a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004a1e:	b293      	uxth	r3, r2
 8004a20:	0718      	lsls	r0, r3, #28
 8004a22:	d50c      	bpl.n	8004a3e <__swsetup_r+0x36>
 8004a24:	6920      	ldr	r0, [r4, #16]
 8004a26:	b1a8      	cbz	r0, 8004a54 <__swsetup_r+0x4c>
 8004a28:	f013 0201 	ands.w	r2, r3, #1
 8004a2c:	d020      	beq.n	8004a70 <__swsetup_r+0x68>
 8004a2e:	6963      	ldr	r3, [r4, #20]
 8004a30:	2200      	movs	r2, #0
 8004a32:	425b      	negs	r3, r3
 8004a34:	61a3      	str	r3, [r4, #24]
 8004a36:	60a2      	str	r2, [r4, #8]
 8004a38:	b300      	cbz	r0, 8004a7c <__swsetup_r+0x74>
 8004a3a:	2000      	movs	r0, #0
 8004a3c:	bd38      	pop	{r3, r4, r5, pc}
 8004a3e:	06d9      	lsls	r1, r3, #27
 8004a40:	d53e      	bpl.n	8004ac0 <__swsetup_r+0xb8>
 8004a42:	0758      	lsls	r0, r3, #29
 8004a44:	d428      	bmi.n	8004a98 <__swsetup_r+0x90>
 8004a46:	6920      	ldr	r0, [r4, #16]
 8004a48:	f042 0308 	orr.w	r3, r2, #8
 8004a4c:	81a3      	strh	r3, [r4, #12]
 8004a4e:	b29b      	uxth	r3, r3
 8004a50:	2800      	cmp	r0, #0
 8004a52:	d1e9      	bne.n	8004a28 <__swsetup_r+0x20>
 8004a54:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004a58:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8004a5c:	d0e4      	beq.n	8004a28 <__swsetup_r+0x20>
 8004a5e:	4628      	mov	r0, r5
 8004a60:	4621      	mov	r1, r4
 8004a62:	f001 faf3 	bl	800604c <__smakebuf_r>
 8004a66:	89a3      	ldrh	r3, [r4, #12]
 8004a68:	6920      	ldr	r0, [r4, #16]
 8004a6a:	f013 0201 	ands.w	r2, r3, #1
 8004a6e:	d1de      	bne.n	8004a2e <__swsetup_r+0x26>
 8004a70:	0799      	lsls	r1, r3, #30
 8004a72:	bf58      	it	pl
 8004a74:	6962      	ldrpl	r2, [r4, #20]
 8004a76:	60a2      	str	r2, [r4, #8]
 8004a78:	2800      	cmp	r0, #0
 8004a7a:	d1de      	bne.n	8004a3a <__swsetup_r+0x32>
 8004a7c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004a80:	061a      	lsls	r2, r3, #24
 8004a82:	d5db      	bpl.n	8004a3c <__swsetup_r+0x34>
 8004a84:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004a88:	81a3      	strh	r3, [r4, #12]
 8004a8a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004a8e:	bd38      	pop	{r3, r4, r5, pc}
 8004a90:	4618      	mov	r0, r3
 8004a92:	f001 f8d7 	bl	8005c44 <__sinit>
 8004a96:	e7c0      	b.n	8004a1a <__swsetup_r+0x12>
 8004a98:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004a9a:	b151      	cbz	r1, 8004ab2 <__swsetup_r+0xaa>
 8004a9c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004aa0:	4299      	cmp	r1, r3
 8004aa2:	d004      	beq.n	8004aae <__swsetup_r+0xa6>
 8004aa4:	4628      	mov	r0, r5
 8004aa6:	f001 f96f 	bl	8005d88 <_free_r>
 8004aaa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004aae:	2300      	movs	r3, #0
 8004ab0:	6323      	str	r3, [r4, #48]	; 0x30
 8004ab2:	2300      	movs	r3, #0
 8004ab4:	6920      	ldr	r0, [r4, #16]
 8004ab6:	6063      	str	r3, [r4, #4]
 8004ab8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004abc:	6020      	str	r0, [r4, #0]
 8004abe:	e7c3      	b.n	8004a48 <__swsetup_r+0x40>
 8004ac0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004ac4:	2309      	movs	r3, #9
 8004ac6:	602b      	str	r3, [r5, #0]
 8004ac8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004acc:	81a2      	strh	r2, [r4, #12]
 8004ace:	bd38      	pop	{r3, r4, r5, pc}
 8004ad0:	20000018 	.word	0x20000018

08004ad4 <register_fini>:
 8004ad4:	4b02      	ldr	r3, [pc, #8]	; (8004ae0 <register_fini+0xc>)
 8004ad6:	b113      	cbz	r3, 8004ade <register_fini+0xa>
 8004ad8:	4802      	ldr	r0, [pc, #8]	; (8004ae4 <register_fini+0x10>)
 8004ada:	f000 b805 	b.w	8004ae8 <atexit>
 8004ade:	4770      	bx	lr
 8004ae0:	00000000 	.word	0x00000000
 8004ae4:	08005cb5 	.word	0x08005cb5

08004ae8 <atexit>:
 8004ae8:	2300      	movs	r3, #0
 8004aea:	4601      	mov	r1, r0
 8004aec:	461a      	mov	r2, r3
 8004aee:	4618      	mov	r0, r3
 8004af0:	f002 b9c8 	b.w	8006e84 <__register_exitproc>

08004af4 <quorem>:
 8004af4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004af8:	6903      	ldr	r3, [r0, #16]
 8004afa:	690f      	ldr	r7, [r1, #16]
 8004afc:	42bb      	cmp	r3, r7
 8004afe:	b083      	sub	sp, #12
 8004b00:	f2c0 8086 	blt.w	8004c10 <quorem+0x11c>
 8004b04:	3f01      	subs	r7, #1
 8004b06:	f101 0914 	add.w	r9, r1, #20
 8004b0a:	f100 0a14 	add.w	sl, r0, #20
 8004b0e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004b12:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004b16:	00bc      	lsls	r4, r7, #2
 8004b18:	3201      	adds	r2, #1
 8004b1a:	fbb3 f8f2 	udiv	r8, r3, r2
 8004b1e:	eb0a 0304 	add.w	r3, sl, r4
 8004b22:	9400      	str	r4, [sp, #0]
 8004b24:	eb09 0b04 	add.w	fp, r9, r4
 8004b28:	9301      	str	r3, [sp, #4]
 8004b2a:	f1b8 0f00 	cmp.w	r8, #0
 8004b2e:	d038      	beq.n	8004ba2 <quorem+0xae>
 8004b30:	2500      	movs	r5, #0
 8004b32:	462e      	mov	r6, r5
 8004b34:	46ce      	mov	lr, r9
 8004b36:	46d4      	mov	ip, sl
 8004b38:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004b3c:	f8dc 3000 	ldr.w	r3, [ip]
 8004b40:	b2a2      	uxth	r2, r4
 8004b42:	fb08 5502 	mla	r5, r8, r2, r5
 8004b46:	0c22      	lsrs	r2, r4, #16
 8004b48:	0c2c      	lsrs	r4, r5, #16
 8004b4a:	fb08 4202 	mla	r2, r8, r2, r4
 8004b4e:	b2ad      	uxth	r5, r5
 8004b50:	1b75      	subs	r5, r6, r5
 8004b52:	b296      	uxth	r6, r2
 8004b54:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004b58:	fa15 f383 	uxtah	r3, r5, r3
 8004b5c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004b60:	b29b      	uxth	r3, r3
 8004b62:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004b66:	45f3      	cmp	fp, lr
 8004b68:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004b6c:	f84c 3b04 	str.w	r3, [ip], #4
 8004b70:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004b74:	d2e0      	bcs.n	8004b38 <quorem+0x44>
 8004b76:	9b00      	ldr	r3, [sp, #0]
 8004b78:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004b7c:	b98b      	cbnz	r3, 8004ba2 <quorem+0xae>
 8004b7e:	9a01      	ldr	r2, [sp, #4]
 8004b80:	1f13      	subs	r3, r2, #4
 8004b82:	459a      	cmp	sl, r3
 8004b84:	d20c      	bcs.n	8004ba0 <quorem+0xac>
 8004b86:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004b8a:	b94b      	cbnz	r3, 8004ba0 <quorem+0xac>
 8004b8c:	f1a2 0308 	sub.w	r3, r2, #8
 8004b90:	e002      	b.n	8004b98 <quorem+0xa4>
 8004b92:	681a      	ldr	r2, [r3, #0]
 8004b94:	3b04      	subs	r3, #4
 8004b96:	b91a      	cbnz	r2, 8004ba0 <quorem+0xac>
 8004b98:	459a      	cmp	sl, r3
 8004b9a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004b9e:	d3f8      	bcc.n	8004b92 <quorem+0x9e>
 8004ba0:	6107      	str	r7, [r0, #16]
 8004ba2:	4604      	mov	r4, r0
 8004ba4:	f001 ff62 	bl	8006a6c <__mcmp>
 8004ba8:	2800      	cmp	r0, #0
 8004baa:	db2d      	blt.n	8004c08 <quorem+0x114>
 8004bac:	f108 0801 	add.w	r8, r8, #1
 8004bb0:	4655      	mov	r5, sl
 8004bb2:	2300      	movs	r3, #0
 8004bb4:	f859 1b04 	ldr.w	r1, [r9], #4
 8004bb8:	6828      	ldr	r0, [r5, #0]
 8004bba:	b28a      	uxth	r2, r1
 8004bbc:	1a9a      	subs	r2, r3, r2
 8004bbe:	0c0b      	lsrs	r3, r1, #16
 8004bc0:	fa12 f280 	uxtah	r2, r2, r0
 8004bc4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004bc8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004bcc:	b292      	uxth	r2, r2
 8004bce:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004bd2:	45cb      	cmp	fp, r9
 8004bd4:	f845 2b04 	str.w	r2, [r5], #4
 8004bd8:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004bdc:	d2ea      	bcs.n	8004bb4 <quorem+0xc0>
 8004bde:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004be2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004be6:	b97a      	cbnz	r2, 8004c08 <quorem+0x114>
 8004be8:	1f1a      	subs	r2, r3, #4
 8004bea:	4592      	cmp	sl, r2
 8004bec:	d20b      	bcs.n	8004c06 <quorem+0x112>
 8004bee:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004bf2:	b942      	cbnz	r2, 8004c06 <quorem+0x112>
 8004bf4:	3b08      	subs	r3, #8
 8004bf6:	e002      	b.n	8004bfe <quorem+0x10a>
 8004bf8:	681a      	ldr	r2, [r3, #0]
 8004bfa:	3b04      	subs	r3, #4
 8004bfc:	b91a      	cbnz	r2, 8004c06 <quorem+0x112>
 8004bfe:	459a      	cmp	sl, r3
 8004c00:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004c04:	d3f8      	bcc.n	8004bf8 <quorem+0x104>
 8004c06:	6127      	str	r7, [r4, #16]
 8004c08:	4640      	mov	r0, r8
 8004c0a:	b003      	add	sp, #12
 8004c0c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c10:	2000      	movs	r0, #0
 8004c12:	b003      	add	sp, #12
 8004c14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004c18 <_dtoa_r>:
 8004c18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004c1c:	ec55 4b10 	vmov	r4, r5, d0
 8004c20:	b09b      	sub	sp, #108	; 0x6c
 8004c22:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004c24:	9102      	str	r1, [sp, #8]
 8004c26:	4681      	mov	r9, r0
 8004c28:	9207      	str	r2, [sp, #28]
 8004c2a:	9305      	str	r3, [sp, #20]
 8004c2c:	e9cd 4500 	strd	r4, r5, [sp]
 8004c30:	b156      	cbz	r6, 8004c48 <_dtoa_r+0x30>
 8004c32:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004c34:	6072      	str	r2, [r6, #4]
 8004c36:	2301      	movs	r3, #1
 8004c38:	4093      	lsls	r3, r2
 8004c3a:	60b3      	str	r3, [r6, #8]
 8004c3c:	4631      	mov	r1, r6
 8004c3e:	f001 fd25 	bl	800668c <_Bfree>
 8004c42:	2300      	movs	r3, #0
 8004c44:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004c48:	f1b5 0800 	subs.w	r8, r5, #0
 8004c4c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004c4e:	bfb4      	ite	lt
 8004c50:	2301      	movlt	r3, #1
 8004c52:	2300      	movge	r3, #0
 8004c54:	6013      	str	r3, [r2, #0]
 8004c56:	4b76      	ldr	r3, [pc, #472]	; (8004e30 <_dtoa_r+0x218>)
 8004c58:	bfbc      	itt	lt
 8004c5a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004c5e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004c62:	ea33 0308 	bics.w	r3, r3, r8
 8004c66:	f000 80a6 	beq.w	8004db6 <_dtoa_r+0x19e>
 8004c6a:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004c6e:	2200      	movs	r2, #0
 8004c70:	2300      	movs	r3, #0
 8004c72:	4630      	mov	r0, r6
 8004c74:	4639      	mov	r1, r7
 8004c76:	f7fc f9c7 	bl	8001008 <__aeabi_dcmpeq>
 8004c7a:	4605      	mov	r5, r0
 8004c7c:	b178      	cbz	r0, 8004c9e <_dtoa_r+0x86>
 8004c7e:	9a05      	ldr	r2, [sp, #20]
 8004c80:	2301      	movs	r3, #1
 8004c82:	6013      	str	r3, [r2, #0]
 8004c84:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004c86:	2b00      	cmp	r3, #0
 8004c88:	f000 80c0 	beq.w	8004e0c <_dtoa_r+0x1f4>
 8004c8c:	4b69      	ldr	r3, [pc, #420]	; (8004e34 <_dtoa_r+0x21c>)
 8004c8e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004c90:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004c94:	6013      	str	r3, [r2, #0]
 8004c96:	4658      	mov	r0, fp
 8004c98:	b01b      	add	sp, #108	; 0x6c
 8004c9a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c9e:	aa18      	add	r2, sp, #96	; 0x60
 8004ca0:	a919      	add	r1, sp, #100	; 0x64
 8004ca2:	ec47 6b10 	vmov	d0, r6, r7
 8004ca6:	4648      	mov	r0, r9
 8004ca8:	f001 ff72 	bl	8006b90 <__d2b>
 8004cac:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004cb0:	4682      	mov	sl, r0
 8004cb2:	f040 80a0 	bne.w	8004df6 <_dtoa_r+0x1de>
 8004cb6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004cba:	442c      	add	r4, r5
 8004cbc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004cc0:	2b20      	cmp	r3, #32
 8004cc2:	f340 842c 	ble.w	800551e <_dtoa_r+0x906>
 8004cc6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004cca:	fa08 f803 	lsl.w	r8, r8, r3
 8004cce:	9b00      	ldr	r3, [sp, #0]
 8004cd0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004cd4:	fa23 f000 	lsr.w	r0, r3, r0
 8004cd8:	ea48 0000 	orr.w	r0, r8, r0
 8004cdc:	f7fb feb2 	bl	8000a44 <__aeabi_ui2d>
 8004ce0:	2301      	movs	r3, #1
 8004ce2:	4606      	mov	r6, r0
 8004ce4:	3c01      	subs	r4, #1
 8004ce6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004cea:	930f      	str	r3, [sp, #60]	; 0x3c
 8004cec:	4630      	mov	r0, r6
 8004cee:	4639      	mov	r1, r7
 8004cf0:	2200      	movs	r2, #0
 8004cf2:	4b51      	ldr	r3, [pc, #324]	; (8004e38 <_dtoa_r+0x220>)
 8004cf4:	f7fb fd68 	bl	80007c8 <__aeabi_dsub>
 8004cf8:	a347      	add	r3, pc, #284	; (adr r3, 8004e18 <_dtoa_r+0x200>)
 8004cfa:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004cfe:	f7fb ff1b 	bl	8000b38 <__aeabi_dmul>
 8004d02:	a347      	add	r3, pc, #284	; (adr r3, 8004e20 <_dtoa_r+0x208>)
 8004d04:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004d08:	f7fb fd60 	bl	80007cc <__adddf3>
 8004d0c:	4606      	mov	r6, r0
 8004d0e:	4620      	mov	r0, r4
 8004d10:	460f      	mov	r7, r1
 8004d12:	f7fb fea7 	bl	8000a64 <__aeabi_i2d>
 8004d16:	a344      	add	r3, pc, #272	; (adr r3, 8004e28 <_dtoa_r+0x210>)
 8004d18:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004d1c:	f7fb ff0c 	bl	8000b38 <__aeabi_dmul>
 8004d20:	4602      	mov	r2, r0
 8004d22:	460b      	mov	r3, r1
 8004d24:	4630      	mov	r0, r6
 8004d26:	4639      	mov	r1, r7
 8004d28:	f7fb fd50 	bl	80007cc <__adddf3>
 8004d2c:	4606      	mov	r6, r0
 8004d2e:	460f      	mov	r7, r1
 8004d30:	f7fc f9b2 	bl	8001098 <__aeabi_d2iz>
 8004d34:	2200      	movs	r2, #0
 8004d36:	9006      	str	r0, [sp, #24]
 8004d38:	2300      	movs	r3, #0
 8004d3a:	4630      	mov	r0, r6
 8004d3c:	4639      	mov	r1, r7
 8004d3e:	f7fc f96d 	bl	800101c <__aeabi_dcmplt>
 8004d42:	2800      	cmp	r0, #0
 8004d44:	f040 8273 	bne.w	800522e <_dtoa_r+0x616>
 8004d48:	9e06      	ldr	r6, [sp, #24]
 8004d4a:	2e16      	cmp	r6, #22
 8004d4c:	f200 825d 	bhi.w	800520a <_dtoa_r+0x5f2>
 8004d50:	4b3a      	ldr	r3, [pc, #232]	; (8004e3c <_dtoa_r+0x224>)
 8004d52:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004d56:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004d5a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d5e:	f7fc f97b 	bl	8001058 <__aeabi_dcmpgt>
 8004d62:	2800      	cmp	r0, #0
 8004d64:	f000 83d7 	beq.w	8005516 <_dtoa_r+0x8fe>
 8004d68:	1e73      	subs	r3, r6, #1
 8004d6a:	9306      	str	r3, [sp, #24]
 8004d6c:	2300      	movs	r3, #0
 8004d6e:	930d      	str	r3, [sp, #52]	; 0x34
 8004d70:	1b2c      	subs	r4, r5, r4
 8004d72:	f1b4 0801 	subs.w	r8, r4, #1
 8004d76:	f100 8254 	bmi.w	8005222 <_dtoa_r+0x60a>
 8004d7a:	2300      	movs	r3, #0
 8004d7c:	9308      	str	r3, [sp, #32]
 8004d7e:	9b06      	ldr	r3, [sp, #24]
 8004d80:	2b00      	cmp	r3, #0
 8004d82:	f2c0 8245 	blt.w	8005210 <_dtoa_r+0x5f8>
 8004d86:	4498      	add	r8, r3
 8004d88:	930c      	str	r3, [sp, #48]	; 0x30
 8004d8a:	2300      	movs	r3, #0
 8004d8c:	930b      	str	r3, [sp, #44]	; 0x2c
 8004d8e:	9b02      	ldr	r3, [sp, #8]
 8004d90:	2b09      	cmp	r3, #9
 8004d92:	d85b      	bhi.n	8004e4c <_dtoa_r+0x234>
 8004d94:	2b05      	cmp	r3, #5
 8004d96:	f340 83c0 	ble.w	800551a <_dtoa_r+0x902>
 8004d9a:	3b04      	subs	r3, #4
 8004d9c:	9302      	str	r3, [sp, #8]
 8004d9e:	2500      	movs	r5, #0
 8004da0:	9b02      	ldr	r3, [sp, #8]
 8004da2:	3b02      	subs	r3, #2
 8004da4:	2b03      	cmp	r3, #3
 8004da6:	f200 8498 	bhi.w	80056da <_dtoa_r+0xac2>
 8004daa:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004dae:	03df      	.short	0x03df
 8004db0:	03e803bf 	.word	0x03e803bf
 8004db4:	04f5      	.short	0x04f5
 8004db6:	9a05      	ldr	r2, [sp, #20]
 8004db8:	f242 730f 	movw	r3, #9999	; 0x270f
 8004dbc:	6013      	str	r3, [r2, #0]
 8004dbe:	9b00      	ldr	r3, [sp, #0]
 8004dc0:	b983      	cbnz	r3, 8004de4 <_dtoa_r+0x1cc>
 8004dc2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004dc6:	b96b      	cbnz	r3, 8004de4 <_dtoa_r+0x1cc>
 8004dc8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004dca:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004e40 <_dtoa_r+0x228>
 8004dce:	2b00      	cmp	r3, #0
 8004dd0:	f43f af61 	beq.w	8004c96 <_dtoa_r+0x7e>
 8004dd4:	f10b 0308 	add.w	r3, fp, #8
 8004dd8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004dda:	4658      	mov	r0, fp
 8004ddc:	6013      	str	r3, [r2, #0]
 8004dde:	b01b      	add	sp, #108	; 0x6c
 8004de0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004de4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004de6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004e44 <_dtoa_r+0x22c>
 8004dea:	2b00      	cmp	r3, #0
 8004dec:	f43f af53 	beq.w	8004c96 <_dtoa_r+0x7e>
 8004df0:	f10b 0303 	add.w	r3, fp, #3
 8004df4:	e7f0      	b.n	8004dd8 <_dtoa_r+0x1c0>
 8004df6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004dfa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004dfe:	950f      	str	r5, [sp, #60]	; 0x3c
 8004e00:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004e04:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004e08:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004e0a:	e76f      	b.n	8004cec <_dtoa_r+0xd4>
 8004e0c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004e48 <_dtoa_r+0x230>
 8004e10:	4658      	mov	r0, fp
 8004e12:	b01b      	add	sp, #108	; 0x6c
 8004e14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004e18:	636f4361 	.word	0x636f4361
 8004e1c:	3fd287a7 	.word	0x3fd287a7
 8004e20:	8b60c8b3 	.word	0x8b60c8b3
 8004e24:	3fc68a28 	.word	0x3fc68a28
 8004e28:	509f79fb 	.word	0x509f79fb
 8004e2c:	3fd34413 	.word	0x3fd34413
 8004e30:	7ff00000 	.word	0x7ff00000
 8004e34:	08007b8d 	.word	0x08007b8d
 8004e38:	3ff80000 	.word	0x3ff80000
 8004e3c:	08007be8 	.word	0x08007be8
 8004e40:	08007bb0 	.word	0x08007bb0
 8004e44:	08007bbc 	.word	0x08007bbc
 8004e48:	08007b8c 	.word	0x08007b8c
 8004e4c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004e50:	2501      	movs	r5, #1
 8004e52:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004e56:	2300      	movs	r3, #0
 8004e58:	9302      	str	r3, [sp, #8]
 8004e5a:	9307      	str	r3, [sp, #28]
 8004e5c:	2100      	movs	r1, #0
 8004e5e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004e62:	940e      	str	r4, [sp, #56]	; 0x38
 8004e64:	4648      	mov	r0, r9
 8004e66:	f001 fbeb 	bl	8006640 <_Balloc>
 8004e6a:	2c0e      	cmp	r4, #14
 8004e6c:	4683      	mov	fp, r0
 8004e6e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004e72:	f200 80fb 	bhi.w	800506c <_dtoa_r+0x454>
 8004e76:	2d00      	cmp	r5, #0
 8004e78:	f000 80f8 	beq.w	800506c <_dtoa_r+0x454>
 8004e7c:	ed9d 7b00 	vldr	d7, [sp]
 8004e80:	9906      	ldr	r1, [sp, #24]
 8004e82:	2900      	cmp	r1, #0
 8004e84:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004e88:	f340 83e5 	ble.w	8005656 <_dtoa_r+0xa3e>
 8004e8c:	4b9d      	ldr	r3, [pc, #628]	; (8005104 <_dtoa_r+0x4ec>)
 8004e8e:	f001 020f 	and.w	r2, r1, #15
 8004e92:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004e96:	ed93 7b00 	vldr	d7, [r3]
 8004e9a:	110c      	asrs	r4, r1, #4
 8004e9c:	06e2      	lsls	r2, r4, #27
 8004e9e:	ed8d 7b00 	vstr	d7, [sp]
 8004ea2:	f140 849e 	bpl.w	80057e2 <_dtoa_r+0xbca>
 8004ea6:	4b98      	ldr	r3, [pc, #608]	; (8005108 <_dtoa_r+0x4f0>)
 8004ea8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004eac:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004eb0:	f7fb ff6c 	bl	8000d8c <__aeabi_ddiv>
 8004eb4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004eb8:	f004 040f 	and.w	r4, r4, #15
 8004ebc:	2603      	movs	r6, #3
 8004ebe:	b17c      	cbz	r4, 8004ee0 <_dtoa_r+0x2c8>
 8004ec0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ec4:	4d90      	ldr	r5, [pc, #576]	; (8005108 <_dtoa_r+0x4f0>)
 8004ec6:	07e3      	lsls	r3, r4, #31
 8004ec8:	d504      	bpl.n	8004ed4 <_dtoa_r+0x2bc>
 8004eca:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004ece:	f7fb fe33 	bl	8000b38 <__aeabi_dmul>
 8004ed2:	3601      	adds	r6, #1
 8004ed4:	1064      	asrs	r4, r4, #1
 8004ed6:	f105 0508 	add.w	r5, r5, #8
 8004eda:	d1f4      	bne.n	8004ec6 <_dtoa_r+0x2ae>
 8004edc:	e9cd 0100 	strd	r0, r1, [sp]
 8004ee0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ee4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004ee8:	f7fb ff50 	bl	8000d8c <__aeabi_ddiv>
 8004eec:	e9cd 0100 	strd	r0, r1, [sp]
 8004ef0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004ef2:	b143      	cbz	r3, 8004f06 <_dtoa_r+0x2ee>
 8004ef4:	2200      	movs	r2, #0
 8004ef6:	4b85      	ldr	r3, [pc, #532]	; (800510c <_dtoa_r+0x4f4>)
 8004ef8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004efc:	f7fc f88e 	bl	800101c <__aeabi_dcmplt>
 8004f00:	2800      	cmp	r0, #0
 8004f02:	f040 84ff 	bne.w	8005904 <_dtoa_r+0xcec>
 8004f06:	4630      	mov	r0, r6
 8004f08:	f7fb fdac 	bl	8000a64 <__aeabi_i2d>
 8004f0c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f10:	f7fb fe12 	bl	8000b38 <__aeabi_dmul>
 8004f14:	4b7e      	ldr	r3, [pc, #504]	; (8005110 <_dtoa_r+0x4f8>)
 8004f16:	2200      	movs	r2, #0
 8004f18:	f7fb fc58 	bl	80007cc <__adddf3>
 8004f1c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f1e:	4606      	mov	r6, r0
 8004f20:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004f24:	2b00      	cmp	r3, #0
 8004f26:	f000 841c 	beq.w	8005762 <_dtoa_r+0xb4a>
 8004f2a:	9b06      	ldr	r3, [sp, #24]
 8004f2c:	9316      	str	r3, [sp, #88]	; 0x58
 8004f2e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f30:	9312      	str	r3, [sp, #72]	; 0x48
 8004f32:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f36:	f7fc f8af 	bl	8001098 <__aeabi_d2iz>
 8004f3a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004f3c:	4b71      	ldr	r3, [pc, #452]	; (8005104 <_dtoa_r+0x4ec>)
 8004f3e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004f42:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004f46:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004f4a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004f4e:	f7fb fd89 	bl	8000a64 <__aeabi_i2d>
 8004f52:	460b      	mov	r3, r1
 8004f54:	4602      	mov	r2, r0
 8004f56:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f5a:	e9cd 6700 	strd	r6, r7, [sp]
 8004f5e:	f7fb fc33 	bl	80007c8 <__aeabi_dsub>
 8004f62:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004f64:	b2ed      	uxtb	r5, r5
 8004f66:	4606      	mov	r6, r0
 8004f68:	460f      	mov	r7, r1
 8004f6a:	f10b 0401 	add.w	r4, fp, #1
 8004f6e:	2b00      	cmp	r3, #0
 8004f70:	f000 8458 	beq.w	8005824 <_dtoa_r+0xc0c>
 8004f74:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004f78:	2000      	movs	r0, #0
 8004f7a:	4966      	ldr	r1, [pc, #408]	; (8005114 <_dtoa_r+0x4fc>)
 8004f7c:	f7fb ff06 	bl	8000d8c <__aeabi_ddiv>
 8004f80:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f84:	f7fb fc20 	bl	80007c8 <__aeabi_dsub>
 8004f88:	f88b 5000 	strb.w	r5, [fp]
 8004f8c:	4632      	mov	r2, r6
 8004f8e:	463b      	mov	r3, r7
 8004f90:	e9cd 0100 	strd	r0, r1, [sp]
 8004f94:	f7fc f860 	bl	8001058 <__aeabi_dcmpgt>
 8004f98:	2800      	cmp	r0, #0
 8004f9a:	f040 8502 	bne.w	80059a2 <_dtoa_r+0xd8a>
 8004f9e:	4632      	mov	r2, r6
 8004fa0:	463b      	mov	r3, r7
 8004fa2:	2000      	movs	r0, #0
 8004fa4:	4959      	ldr	r1, [pc, #356]	; (800510c <_dtoa_r+0x4f4>)
 8004fa6:	f7fb fc0f 	bl	80007c8 <__aeabi_dsub>
 8004faa:	4602      	mov	r2, r0
 8004fac:	460b      	mov	r3, r1
 8004fae:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004fb2:	f7fc f851 	bl	8001058 <__aeabi_dcmpgt>
 8004fb6:	2800      	cmp	r0, #0
 8004fb8:	f040 84fb 	bne.w	80059b2 <_dtoa_r+0xd9a>
 8004fbc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004fbe:	2a01      	cmp	r2, #1
 8004fc0:	d050      	beq.n	8005064 <_dtoa_r+0x44c>
 8004fc2:	445a      	add	r2, fp
 8004fc4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004fc8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004fcc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004fd0:	4692      	mov	sl, r2
 8004fd2:	46cb      	mov	fp, r9
 8004fd4:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004fd8:	e00c      	b.n	8004ff4 <_dtoa_r+0x3dc>
 8004fda:	2000      	movs	r0, #0
 8004fdc:	494b      	ldr	r1, [pc, #300]	; (800510c <_dtoa_r+0x4f4>)
 8004fde:	f7fb fbf3 	bl	80007c8 <__aeabi_dsub>
 8004fe2:	4642      	mov	r2, r8
 8004fe4:	464b      	mov	r3, r9
 8004fe6:	f7fc f819 	bl	800101c <__aeabi_dcmplt>
 8004fea:	2800      	cmp	r0, #0
 8004fec:	f040 84dc 	bne.w	80059a8 <_dtoa_r+0xd90>
 8004ff0:	4554      	cmp	r4, sl
 8004ff2:	d030      	beq.n	8005056 <_dtoa_r+0x43e>
 8004ff4:	4640      	mov	r0, r8
 8004ff6:	4649      	mov	r1, r9
 8004ff8:	2200      	movs	r2, #0
 8004ffa:	4b47      	ldr	r3, [pc, #284]	; (8005118 <_dtoa_r+0x500>)
 8004ffc:	f7fb fd9c 	bl	8000b38 <__aeabi_dmul>
 8005000:	2200      	movs	r2, #0
 8005002:	4b45      	ldr	r3, [pc, #276]	; (8005118 <_dtoa_r+0x500>)
 8005004:	4680      	mov	r8, r0
 8005006:	4689      	mov	r9, r1
 8005008:	4630      	mov	r0, r6
 800500a:	4639      	mov	r1, r7
 800500c:	f7fb fd94 	bl	8000b38 <__aeabi_dmul>
 8005010:	460f      	mov	r7, r1
 8005012:	4606      	mov	r6, r0
 8005014:	f7fc f840 	bl	8001098 <__aeabi_d2iz>
 8005018:	4605      	mov	r5, r0
 800501a:	f7fb fd23 	bl	8000a64 <__aeabi_i2d>
 800501e:	4602      	mov	r2, r0
 8005020:	460b      	mov	r3, r1
 8005022:	4630      	mov	r0, r6
 8005024:	4639      	mov	r1, r7
 8005026:	f7fb fbcf 	bl	80007c8 <__aeabi_dsub>
 800502a:	3530      	adds	r5, #48	; 0x30
 800502c:	b2ed      	uxtb	r5, r5
 800502e:	4642      	mov	r2, r8
 8005030:	464b      	mov	r3, r9
 8005032:	f804 5b01 	strb.w	r5, [r4], #1
 8005036:	4606      	mov	r6, r0
 8005038:	460f      	mov	r7, r1
 800503a:	f7fb ffef 	bl	800101c <__aeabi_dcmplt>
 800503e:	4632      	mov	r2, r6
 8005040:	463b      	mov	r3, r7
 8005042:	2800      	cmp	r0, #0
 8005044:	d0c9      	beq.n	8004fda <_dtoa_r+0x3c2>
 8005046:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005048:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800504c:	9306      	str	r3, [sp, #24]
 800504e:	46d9      	mov	r9, fp
 8005050:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005054:	e236      	b.n	80054c4 <_dtoa_r+0x8ac>
 8005056:	46d9      	mov	r9, fp
 8005058:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800505c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005060:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005064:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8005068:	e9cd 3400 	strd	r3, r4, [sp]
 800506c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800506e:	2b00      	cmp	r3, #0
 8005070:	f2c0 80ae 	blt.w	80051d0 <_dtoa_r+0x5b8>
 8005074:	9a06      	ldr	r2, [sp, #24]
 8005076:	2a0e      	cmp	r2, #14
 8005078:	f300 80aa 	bgt.w	80051d0 <_dtoa_r+0x5b8>
 800507c:	4b21      	ldr	r3, [pc, #132]	; (8005104 <_dtoa_r+0x4ec>)
 800507e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005082:	ed93 7b00 	vldr	d7, [r3]
 8005086:	9b07      	ldr	r3, [sp, #28]
 8005088:	2b00      	cmp	r3, #0
 800508a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800508e:	f2c0 82be 	blt.w	800560e <_dtoa_r+0x9f6>
 8005092:	e9dd 6700 	ldrd	r6, r7, [sp]
 8005096:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800509a:	4630      	mov	r0, r6
 800509c:	4639      	mov	r1, r7
 800509e:	f7fb fe75 	bl	8000d8c <__aeabi_ddiv>
 80050a2:	f7fb fff9 	bl	8001098 <__aeabi_d2iz>
 80050a6:	4605      	mov	r5, r0
 80050a8:	f7fb fcdc 	bl	8000a64 <__aeabi_i2d>
 80050ac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80050b0:	f7fb fd42 	bl	8000b38 <__aeabi_dmul>
 80050b4:	460b      	mov	r3, r1
 80050b6:	4602      	mov	r2, r0
 80050b8:	4639      	mov	r1, r7
 80050ba:	4630      	mov	r0, r6
 80050bc:	f7fb fb84 	bl	80007c8 <__aeabi_dsub>
 80050c0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80050c4:	f88b 3000 	strb.w	r3, [fp]
 80050c8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050ca:	2b01      	cmp	r3, #1
 80050cc:	4606      	mov	r6, r0
 80050ce:	460f      	mov	r7, r1
 80050d0:	f10b 0401 	add.w	r4, fp, #1
 80050d4:	d053      	beq.n	800517e <_dtoa_r+0x566>
 80050d6:	2200      	movs	r2, #0
 80050d8:	4b0f      	ldr	r3, [pc, #60]	; (8005118 <_dtoa_r+0x500>)
 80050da:	f7fb fd2d 	bl	8000b38 <__aeabi_dmul>
 80050de:	2200      	movs	r2, #0
 80050e0:	2300      	movs	r3, #0
 80050e2:	4606      	mov	r6, r0
 80050e4:	460f      	mov	r7, r1
 80050e6:	f7fb ff8f 	bl	8001008 <__aeabi_dcmpeq>
 80050ea:	2800      	cmp	r0, #0
 80050ec:	f040 81ea 	bne.w	80054c4 <_dtoa_r+0x8ac>
 80050f0:	f8cd a000 	str.w	sl, [sp]
 80050f4:	f8cd 901c 	str.w	r9, [sp, #28]
 80050f8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80050fc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005100:	e017      	b.n	8005132 <_dtoa_r+0x51a>
 8005102:	bf00      	nop
 8005104:	08007be8 	.word	0x08007be8
 8005108:	08007bc0 	.word	0x08007bc0
 800510c:	3ff00000 	.word	0x3ff00000
 8005110:	401c0000 	.word	0x401c0000
 8005114:	3fe00000 	.word	0x3fe00000
 8005118:	40240000 	.word	0x40240000
 800511c:	f7fb fd0c 	bl	8000b38 <__aeabi_dmul>
 8005120:	2200      	movs	r2, #0
 8005122:	2300      	movs	r3, #0
 8005124:	4606      	mov	r6, r0
 8005126:	460f      	mov	r7, r1
 8005128:	f7fb ff6e 	bl	8001008 <__aeabi_dcmpeq>
 800512c:	2800      	cmp	r0, #0
 800512e:	f040 833d 	bne.w	80057ac <_dtoa_r+0xb94>
 8005132:	464a      	mov	r2, r9
 8005134:	4653      	mov	r3, sl
 8005136:	4630      	mov	r0, r6
 8005138:	4639      	mov	r1, r7
 800513a:	f7fb fe27 	bl	8000d8c <__aeabi_ddiv>
 800513e:	f7fb ffab 	bl	8001098 <__aeabi_d2iz>
 8005142:	4605      	mov	r5, r0
 8005144:	f7fb fc8e 	bl	8000a64 <__aeabi_i2d>
 8005148:	464a      	mov	r2, r9
 800514a:	4653      	mov	r3, sl
 800514c:	f7fb fcf4 	bl	8000b38 <__aeabi_dmul>
 8005150:	4602      	mov	r2, r0
 8005152:	460b      	mov	r3, r1
 8005154:	4630      	mov	r0, r6
 8005156:	4639      	mov	r1, r7
 8005158:	f7fb fb36 	bl	80007c8 <__aeabi_dsub>
 800515c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8005160:	f804 cb01 	strb.w	ip, [r4], #1
 8005164:	eba4 0c0b 	sub.w	ip, r4, fp
 8005168:	45e0      	cmp	r8, ip
 800516a:	4606      	mov	r6, r0
 800516c:	460f      	mov	r7, r1
 800516e:	f04f 0200 	mov.w	r2, #0
 8005172:	4bc1      	ldr	r3, [pc, #772]	; (8005478 <_dtoa_r+0x860>)
 8005174:	d1d2      	bne.n	800511c <_dtoa_r+0x504>
 8005176:	f8dd a000 	ldr.w	sl, [sp]
 800517a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800517e:	4632      	mov	r2, r6
 8005180:	463b      	mov	r3, r7
 8005182:	4630      	mov	r0, r6
 8005184:	4639      	mov	r1, r7
 8005186:	f7fb fb21 	bl	80007cc <__adddf3>
 800518a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800518e:	4606      	mov	r6, r0
 8005190:	460f      	mov	r7, r1
 8005192:	f7fb ff61 	bl	8001058 <__aeabi_dcmpgt>
 8005196:	b958      	cbnz	r0, 80051b0 <_dtoa_r+0x598>
 8005198:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800519c:	4630      	mov	r0, r6
 800519e:	4639      	mov	r1, r7
 80051a0:	f7fb ff32 	bl	8001008 <__aeabi_dcmpeq>
 80051a4:	2800      	cmp	r0, #0
 80051a6:	f000 818d 	beq.w	80054c4 <_dtoa_r+0x8ac>
 80051aa:	07e9      	lsls	r1, r5, #31
 80051ac:	f140 818a 	bpl.w	80054c4 <_dtoa_r+0x8ac>
 80051b0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80051b4:	e005      	b.n	80051c2 <_dtoa_r+0x5aa>
 80051b6:	459b      	cmp	fp, r3
 80051b8:	f000 8373 	beq.w	80058a2 <_dtoa_r+0xc8a>
 80051bc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80051c0:	461c      	mov	r4, r3
 80051c2:	2d39      	cmp	r5, #57	; 0x39
 80051c4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80051c8:	d0f5      	beq.n	80051b6 <_dtoa_r+0x59e>
 80051ca:	3501      	adds	r5, #1
 80051cc:	701d      	strb	r5, [r3, #0]
 80051ce:	e179      	b.n	80054c4 <_dtoa_r+0x8ac>
 80051d0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80051d2:	2a00      	cmp	r2, #0
 80051d4:	d03b      	beq.n	800524e <_dtoa_r+0x636>
 80051d6:	9a02      	ldr	r2, [sp, #8]
 80051d8:	2a01      	cmp	r2, #1
 80051da:	f340 820b 	ble.w	80055f4 <_dtoa_r+0x9dc>
 80051de:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80051e0:	1e5f      	subs	r7, r3, #1
 80051e2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80051e4:	42bb      	cmp	r3, r7
 80051e6:	f2c0 82e6 	blt.w	80057b6 <_dtoa_r+0xb9e>
 80051ea:	1bdf      	subs	r7, r3, r7
 80051ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80051ee:	2b00      	cmp	r3, #0
 80051f0:	f2c0 830b 	blt.w	800580a <_dtoa_r+0xbf2>
 80051f4:	9a08      	ldr	r2, [sp, #32]
 80051f6:	4614      	mov	r4, r2
 80051f8:	441a      	add	r2, r3
 80051fa:	4498      	add	r8, r3
 80051fc:	9208      	str	r2, [sp, #32]
 80051fe:	2101      	movs	r1, #1
 8005200:	4648      	mov	r0, r9
 8005202:	f001 fadd 	bl	80067c0 <__i2b>
 8005206:	4605      	mov	r5, r0
 8005208:	e024      	b.n	8005254 <_dtoa_r+0x63c>
 800520a:	2301      	movs	r3, #1
 800520c:	930d      	str	r3, [sp, #52]	; 0x34
 800520e:	e5af      	b.n	8004d70 <_dtoa_r+0x158>
 8005210:	9a08      	ldr	r2, [sp, #32]
 8005212:	9b06      	ldr	r3, [sp, #24]
 8005214:	1ad2      	subs	r2, r2, r3
 8005216:	425b      	negs	r3, r3
 8005218:	930b      	str	r3, [sp, #44]	; 0x2c
 800521a:	2300      	movs	r3, #0
 800521c:	9208      	str	r2, [sp, #32]
 800521e:	930c      	str	r3, [sp, #48]	; 0x30
 8005220:	e5b5      	b.n	8004d8e <_dtoa_r+0x176>
 8005222:	f1c4 0301 	rsb	r3, r4, #1
 8005226:	9308      	str	r3, [sp, #32]
 8005228:	f04f 0800 	mov.w	r8, #0
 800522c:	e5a7      	b.n	8004d7e <_dtoa_r+0x166>
 800522e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8005232:	4640      	mov	r0, r8
 8005234:	f7fb fc16 	bl	8000a64 <__aeabi_i2d>
 8005238:	4632      	mov	r2, r6
 800523a:	463b      	mov	r3, r7
 800523c:	f7fb fee4 	bl	8001008 <__aeabi_dcmpeq>
 8005240:	2800      	cmp	r0, #0
 8005242:	f47f ad81 	bne.w	8004d48 <_dtoa_r+0x130>
 8005246:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800524a:	9306      	str	r3, [sp, #24]
 800524c:	e57c      	b.n	8004d48 <_dtoa_r+0x130>
 800524e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005250:	9c08      	ldr	r4, [sp, #32]
 8005252:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8005254:	2c00      	cmp	r4, #0
 8005256:	dd0c      	ble.n	8005272 <_dtoa_r+0x65a>
 8005258:	f1b8 0f00 	cmp.w	r8, #0
 800525c:	dd09      	ble.n	8005272 <_dtoa_r+0x65a>
 800525e:	4544      	cmp	r4, r8
 8005260:	9a08      	ldr	r2, [sp, #32]
 8005262:	4623      	mov	r3, r4
 8005264:	bfa8      	it	ge
 8005266:	4643      	movge	r3, r8
 8005268:	1ad2      	subs	r2, r2, r3
 800526a:	9208      	str	r2, [sp, #32]
 800526c:	1ae4      	subs	r4, r4, r3
 800526e:	eba8 0803 	sub.w	r8, r8, r3
 8005272:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005274:	b16b      	cbz	r3, 8005292 <_dtoa_r+0x67a>
 8005276:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005278:	2a00      	cmp	r2, #0
 800527a:	f000 8290 	beq.w	800579e <_dtoa_r+0xb86>
 800527e:	1bde      	subs	r6, r3, r7
 8005280:	2f00      	cmp	r7, #0
 8005282:	f040 819b 	bne.w	80055bc <_dtoa_r+0x9a4>
 8005286:	4651      	mov	r1, sl
 8005288:	4632      	mov	r2, r6
 800528a:	4648      	mov	r0, r9
 800528c:	f001 fb48 	bl	8006920 <__pow5mult>
 8005290:	4682      	mov	sl, r0
 8005292:	2101      	movs	r1, #1
 8005294:	4648      	mov	r0, r9
 8005296:	f001 fa93 	bl	80067c0 <__i2b>
 800529a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800529c:	4606      	mov	r6, r0
 800529e:	2a00      	cmp	r2, #0
 80052a0:	f040 8125 	bne.w	80054ee <_dtoa_r+0x8d6>
 80052a4:	9b02      	ldr	r3, [sp, #8]
 80052a6:	2b01      	cmp	r3, #1
 80052a8:	f340 816c 	ble.w	8005584 <_dtoa_r+0x96c>
 80052ac:	2001      	movs	r0, #1
 80052ae:	4440      	add	r0, r8
 80052b0:	f010 001f 	ands.w	r0, r0, #31
 80052b4:	f000 8119 	beq.w	80054ea <_dtoa_r+0x8d2>
 80052b8:	f1c0 0320 	rsb	r3, r0, #32
 80052bc:	2b04      	cmp	r3, #4
 80052be:	f340 83ac 	ble.w	8005a1a <_dtoa_r+0xe02>
 80052c2:	f1c0 001c 	rsb	r0, r0, #28
 80052c6:	9b08      	ldr	r3, [sp, #32]
 80052c8:	4403      	add	r3, r0
 80052ca:	9308      	str	r3, [sp, #32]
 80052cc:	4404      	add	r4, r0
 80052ce:	4480      	add	r8, r0
 80052d0:	9b08      	ldr	r3, [sp, #32]
 80052d2:	2b00      	cmp	r3, #0
 80052d4:	dd05      	ble.n	80052e2 <_dtoa_r+0x6ca>
 80052d6:	4651      	mov	r1, sl
 80052d8:	461a      	mov	r2, r3
 80052da:	4648      	mov	r0, r9
 80052dc:	f001 fb70 	bl	80069c0 <__lshift>
 80052e0:	4682      	mov	sl, r0
 80052e2:	f1b8 0f00 	cmp.w	r8, #0
 80052e6:	dd05      	ble.n	80052f4 <_dtoa_r+0x6dc>
 80052e8:	4631      	mov	r1, r6
 80052ea:	4642      	mov	r2, r8
 80052ec:	4648      	mov	r0, r9
 80052ee:	f001 fb67 	bl	80069c0 <__lshift>
 80052f2:	4606      	mov	r6, r0
 80052f4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80052f6:	2b00      	cmp	r3, #0
 80052f8:	d177      	bne.n	80053ea <_dtoa_r+0x7d2>
 80052fa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80052fc:	2b00      	cmp	r3, #0
 80052fe:	f340 8209 	ble.w	8005714 <_dtoa_r+0xafc>
 8005302:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005304:	2b00      	cmp	r3, #0
 8005306:	f000 8089 	beq.w	800541c <_dtoa_r+0x804>
 800530a:	2c00      	cmp	r4, #0
 800530c:	f300 816b 	bgt.w	80055e6 <_dtoa_r+0x9ce>
 8005310:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005312:	2b00      	cmp	r3, #0
 8005314:	f040 81cd 	bne.w	80056b2 <_dtoa_r+0xa9a>
 8005318:	46a8      	mov	r8, r5
 800531a:	9a00      	ldr	r2, [sp, #0]
 800531c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005320:	f002 0201 	and.w	r2, r2, #1
 8005324:	920a      	str	r2, [sp, #40]	; 0x28
 8005326:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005328:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800532c:	441a      	add	r2, r3
 800532e:	465f      	mov	r7, fp
 8005330:	9209      	str	r2, [sp, #36]	; 0x24
 8005332:	46b3      	mov	fp, r6
 8005334:	4659      	mov	r1, fp
 8005336:	4650      	mov	r0, sl
 8005338:	f7ff fbdc 	bl	8004af4 <quorem>
 800533c:	4629      	mov	r1, r5
 800533e:	4604      	mov	r4, r0
 8005340:	4650      	mov	r0, sl
 8005342:	f001 fb93 	bl	8006a6c <__mcmp>
 8005346:	4659      	mov	r1, fp
 8005348:	4606      	mov	r6, r0
 800534a:	4642      	mov	r2, r8
 800534c:	4648      	mov	r0, r9
 800534e:	f001 fba9 	bl	8006aa4 <__mdiff>
 8005352:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8005356:	9300      	str	r3, [sp, #0]
 8005358:	68c3      	ldr	r3, [r0, #12]
 800535a:	4601      	mov	r1, r0
 800535c:	2b00      	cmp	r3, #0
 800535e:	f040 81d4 	bne.w	800570a <_dtoa_r+0xaf2>
 8005362:	9008      	str	r0, [sp, #32]
 8005364:	4650      	mov	r0, sl
 8005366:	f001 fb81 	bl	8006a6c <__mcmp>
 800536a:	9a08      	ldr	r2, [sp, #32]
 800536c:	9007      	str	r0, [sp, #28]
 800536e:	4611      	mov	r1, r2
 8005370:	4648      	mov	r0, r9
 8005372:	f001 f98b 	bl	800668c <_Bfree>
 8005376:	9b07      	ldr	r3, [sp, #28]
 8005378:	b933      	cbnz	r3, 8005388 <_dtoa_r+0x770>
 800537a:	9a02      	ldr	r2, [sp, #8]
 800537c:	b922      	cbnz	r2, 8005388 <_dtoa_r+0x770>
 800537e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005380:	2b00      	cmp	r3, #0
 8005382:	f000 8319 	beq.w	80059b8 <_dtoa_r+0xda0>
 8005386:	9b02      	ldr	r3, [sp, #8]
 8005388:	2e00      	cmp	r6, #0
 800538a:	f2c0 821c 	blt.w	80057c6 <_dtoa_r+0xbae>
 800538e:	d105      	bne.n	800539c <_dtoa_r+0x784>
 8005390:	9a02      	ldr	r2, [sp, #8]
 8005392:	b91a      	cbnz	r2, 800539c <_dtoa_r+0x784>
 8005394:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005396:	2a00      	cmp	r2, #0
 8005398:	f000 8215 	beq.w	80057c6 <_dtoa_r+0xbae>
 800539c:	2b00      	cmp	r3, #0
 800539e:	f107 0401 	add.w	r4, r7, #1
 80053a2:	f300 8225 	bgt.w	80057f0 <_dtoa_r+0xbd8>
 80053a6:	9b00      	ldr	r3, [sp, #0]
 80053a8:	703b      	strb	r3, [r7, #0]
 80053aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80053ac:	42bb      	cmp	r3, r7
 80053ae:	f000 8230 	beq.w	8005812 <_dtoa_r+0xbfa>
 80053b2:	4651      	mov	r1, sl
 80053b4:	2300      	movs	r3, #0
 80053b6:	220a      	movs	r2, #10
 80053b8:	4648      	mov	r0, r9
 80053ba:	f001 f971 	bl	80066a0 <__multadd>
 80053be:	4545      	cmp	r5, r8
 80053c0:	4682      	mov	sl, r0
 80053c2:	4629      	mov	r1, r5
 80053c4:	f04f 0300 	mov.w	r3, #0
 80053c8:	f04f 020a 	mov.w	r2, #10
 80053cc:	4648      	mov	r0, r9
 80053ce:	f000 8196 	beq.w	80056fe <_dtoa_r+0xae6>
 80053d2:	f001 f965 	bl	80066a0 <__multadd>
 80053d6:	4641      	mov	r1, r8
 80053d8:	4605      	mov	r5, r0
 80053da:	2300      	movs	r3, #0
 80053dc:	220a      	movs	r2, #10
 80053de:	4648      	mov	r0, r9
 80053e0:	f001 f95e 	bl	80066a0 <__multadd>
 80053e4:	4627      	mov	r7, r4
 80053e6:	4680      	mov	r8, r0
 80053e8:	e7a4      	b.n	8005334 <_dtoa_r+0x71c>
 80053ea:	4631      	mov	r1, r6
 80053ec:	4650      	mov	r0, sl
 80053ee:	f001 fb3d 	bl	8006a6c <__mcmp>
 80053f2:	2800      	cmp	r0, #0
 80053f4:	da81      	bge.n	80052fa <_dtoa_r+0x6e2>
 80053f6:	9f06      	ldr	r7, [sp, #24]
 80053f8:	4651      	mov	r1, sl
 80053fa:	2300      	movs	r3, #0
 80053fc:	220a      	movs	r2, #10
 80053fe:	4648      	mov	r0, r9
 8005400:	3f01      	subs	r7, #1
 8005402:	9706      	str	r7, [sp, #24]
 8005404:	f001 f94c 	bl	80066a0 <__multadd>
 8005408:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800540a:	4682      	mov	sl, r0
 800540c:	2b00      	cmp	r3, #0
 800540e:	f040 82eb 	bne.w	80059e8 <_dtoa_r+0xdd0>
 8005412:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005414:	2b00      	cmp	r3, #0
 8005416:	f340 82f3 	ble.w	8005a00 <_dtoa_r+0xde8>
 800541a:	9309      	str	r3, [sp, #36]	; 0x24
 800541c:	465c      	mov	r4, fp
 800541e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005422:	e002      	b.n	800542a <_dtoa_r+0x812>
 8005424:	f001 f93c 	bl	80066a0 <__multadd>
 8005428:	4682      	mov	sl, r0
 800542a:	4631      	mov	r1, r6
 800542c:	4650      	mov	r0, sl
 800542e:	f7ff fb61 	bl	8004af4 <quorem>
 8005432:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8005436:	f804 7b01 	strb.w	r7, [r4], #1
 800543a:	eba4 030b 	sub.w	r3, r4, fp
 800543e:	4598      	cmp	r8, r3
 8005440:	f04f 020a 	mov.w	r2, #10
 8005444:	f04f 0300 	mov.w	r3, #0
 8005448:	4651      	mov	r1, sl
 800544a:	4648      	mov	r0, r9
 800544c:	dcea      	bgt.n	8005424 <_dtoa_r+0x80c>
 800544e:	2300      	movs	r3, #0
 8005450:	9700      	str	r7, [sp, #0]
 8005452:	9302      	str	r3, [sp, #8]
 8005454:	4651      	mov	r1, sl
 8005456:	2201      	movs	r2, #1
 8005458:	4648      	mov	r0, r9
 800545a:	f001 fab1 	bl	80069c0 <__lshift>
 800545e:	4631      	mov	r1, r6
 8005460:	4682      	mov	sl, r0
 8005462:	f001 fb03 	bl	8006a6c <__mcmp>
 8005466:	2800      	cmp	r0, #0
 8005468:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800546c:	dc14      	bgt.n	8005498 <_dtoa_r+0x880>
 800546e:	d108      	bne.n	8005482 <_dtoa_r+0x86a>
 8005470:	9b00      	ldr	r3, [sp, #0]
 8005472:	07db      	lsls	r3, r3, #31
 8005474:	d410      	bmi.n	8005498 <_dtoa_r+0x880>
 8005476:	e004      	b.n	8005482 <_dtoa_r+0x86a>
 8005478:	40240000 	.word	0x40240000
 800547c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8005480:	461c      	mov	r4, r3
 8005482:	2a30      	cmp	r2, #48	; 0x30
 8005484:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005488:	d0f8      	beq.n	800547c <_dtoa_r+0x864>
 800548a:	e00b      	b.n	80054a4 <_dtoa_r+0x88c>
 800548c:	459b      	cmp	fp, r3
 800548e:	f000 814e 	beq.w	800572e <_dtoa_r+0xb16>
 8005492:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005496:	461c      	mov	r4, r3
 8005498:	2a39      	cmp	r2, #57	; 0x39
 800549a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800549e:	d0f5      	beq.n	800548c <_dtoa_r+0x874>
 80054a0:	3201      	adds	r2, #1
 80054a2:	701a      	strb	r2, [r3, #0]
 80054a4:	4631      	mov	r1, r6
 80054a6:	4648      	mov	r0, r9
 80054a8:	f001 f8f0 	bl	800668c <_Bfree>
 80054ac:	b155      	cbz	r5, 80054c4 <_dtoa_r+0x8ac>
 80054ae:	9902      	ldr	r1, [sp, #8]
 80054b0:	b121      	cbz	r1, 80054bc <_dtoa_r+0x8a4>
 80054b2:	42a9      	cmp	r1, r5
 80054b4:	d002      	beq.n	80054bc <_dtoa_r+0x8a4>
 80054b6:	4648      	mov	r0, r9
 80054b8:	f001 f8e8 	bl	800668c <_Bfree>
 80054bc:	4629      	mov	r1, r5
 80054be:	4648      	mov	r0, r9
 80054c0:	f001 f8e4 	bl	800668c <_Bfree>
 80054c4:	4651      	mov	r1, sl
 80054c6:	4648      	mov	r0, r9
 80054c8:	f001 f8e0 	bl	800668c <_Bfree>
 80054cc:	2200      	movs	r2, #0
 80054ce:	9b06      	ldr	r3, [sp, #24]
 80054d0:	7022      	strb	r2, [r4, #0]
 80054d2:	9a05      	ldr	r2, [sp, #20]
 80054d4:	3301      	adds	r3, #1
 80054d6:	6013      	str	r3, [r2, #0]
 80054d8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80054da:	2b00      	cmp	r3, #0
 80054dc:	f43f abdb 	beq.w	8004c96 <_dtoa_r+0x7e>
 80054e0:	4658      	mov	r0, fp
 80054e2:	601c      	str	r4, [r3, #0]
 80054e4:	b01b      	add	sp, #108	; 0x6c
 80054e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80054ea:	201c      	movs	r0, #28
 80054ec:	e6eb      	b.n	80052c6 <_dtoa_r+0x6ae>
 80054ee:	4601      	mov	r1, r0
 80054f0:	4648      	mov	r0, r9
 80054f2:	f001 fa15 	bl	8006920 <__pow5mult>
 80054f6:	9b02      	ldr	r3, [sp, #8]
 80054f8:	2b01      	cmp	r3, #1
 80054fa:	4606      	mov	r6, r0
 80054fc:	f340 80d4 	ble.w	80056a8 <_dtoa_r+0xa90>
 8005500:	2300      	movs	r3, #0
 8005502:	930c      	str	r3, [sp, #48]	; 0x30
 8005504:	6933      	ldr	r3, [r6, #16]
 8005506:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800550a:	6918      	ldr	r0, [r3, #16]
 800550c:	f001 f908 	bl	8006720 <__hi0bits>
 8005510:	f1c0 0020 	rsb	r0, r0, #32
 8005514:	e6cb      	b.n	80052ae <_dtoa_r+0x696>
 8005516:	900d      	str	r0, [sp, #52]	; 0x34
 8005518:	e42a      	b.n	8004d70 <_dtoa_r+0x158>
 800551a:	2501      	movs	r5, #1
 800551c:	e440      	b.n	8004da0 <_dtoa_r+0x188>
 800551e:	f1c3 0820 	rsb	r8, r3, #32
 8005522:	9b00      	ldr	r3, [sp, #0]
 8005524:	fa03 f008 	lsl.w	r0, r3, r8
 8005528:	f7ff bbd8 	b.w	8004cdc <_dtoa_r+0xc4>
 800552c:	2300      	movs	r3, #0
 800552e:	930a      	str	r3, [sp, #40]	; 0x28
 8005530:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005534:	4413      	add	r3, r2
 8005536:	930e      	str	r3, [sp, #56]	; 0x38
 8005538:	3301      	adds	r3, #1
 800553a:	2b01      	cmp	r3, #1
 800553c:	461e      	mov	r6, r3
 800553e:	9309      	str	r3, [sp, #36]	; 0x24
 8005540:	bfb8      	it	lt
 8005542:	2601      	movlt	r6, #1
 8005544:	2100      	movs	r1, #0
 8005546:	2e17      	cmp	r6, #23
 8005548:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800554c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800554e:	f77f ac89 	ble.w	8004e64 <_dtoa_r+0x24c>
 8005552:	2201      	movs	r2, #1
 8005554:	2304      	movs	r3, #4
 8005556:	005b      	lsls	r3, r3, #1
 8005558:	f103 0014 	add.w	r0, r3, #20
 800555c:	42b0      	cmp	r0, r6
 800555e:	4611      	mov	r1, r2
 8005560:	f102 0201 	add.w	r2, r2, #1
 8005564:	d9f7      	bls.n	8005556 <_dtoa_r+0x93e>
 8005566:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800556a:	e47b      	b.n	8004e64 <_dtoa_r+0x24c>
 800556c:	2300      	movs	r3, #0
 800556e:	930a      	str	r3, [sp, #40]	; 0x28
 8005570:	9e07      	ldr	r6, [sp, #28]
 8005572:	2e00      	cmp	r6, #0
 8005574:	f340 80e2 	ble.w	800573c <_dtoa_r+0xb24>
 8005578:	960e      	str	r6, [sp, #56]	; 0x38
 800557a:	9609      	str	r6, [sp, #36]	; 0x24
 800557c:	e7e2      	b.n	8005544 <_dtoa_r+0x92c>
 800557e:	2301      	movs	r3, #1
 8005580:	930a      	str	r3, [sp, #40]	; 0x28
 8005582:	e7f5      	b.n	8005570 <_dtoa_r+0x958>
 8005584:	9b00      	ldr	r3, [sp, #0]
 8005586:	2b00      	cmp	r3, #0
 8005588:	f47f ae90 	bne.w	80052ac <_dtoa_r+0x694>
 800558c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005590:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8005594:	2b00      	cmp	r3, #0
 8005596:	f040 8192 	bne.w	80058be <_dtoa_r+0xca6>
 800559a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800559e:	0d1b      	lsrs	r3, r3, #20
 80055a0:	051b      	lsls	r3, r3, #20
 80055a2:	b12b      	cbz	r3, 80055b0 <_dtoa_r+0x998>
 80055a4:	9b08      	ldr	r3, [sp, #32]
 80055a6:	3301      	adds	r3, #1
 80055a8:	9308      	str	r3, [sp, #32]
 80055aa:	f108 0801 	add.w	r8, r8, #1
 80055ae:	2301      	movs	r3, #1
 80055b0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80055b2:	930c      	str	r3, [sp, #48]	; 0x30
 80055b4:	2a00      	cmp	r2, #0
 80055b6:	f43f ae79 	beq.w	80052ac <_dtoa_r+0x694>
 80055ba:	e7a3      	b.n	8005504 <_dtoa_r+0x8ec>
 80055bc:	463a      	mov	r2, r7
 80055be:	4629      	mov	r1, r5
 80055c0:	4648      	mov	r0, r9
 80055c2:	f001 f9ad 	bl	8006920 <__pow5mult>
 80055c6:	4652      	mov	r2, sl
 80055c8:	4601      	mov	r1, r0
 80055ca:	4605      	mov	r5, r0
 80055cc:	4648      	mov	r0, r9
 80055ce:	f001 f901 	bl	80067d4 <__multiply>
 80055d2:	4651      	mov	r1, sl
 80055d4:	4607      	mov	r7, r0
 80055d6:	4648      	mov	r0, r9
 80055d8:	f001 f858 	bl	800668c <_Bfree>
 80055dc:	46ba      	mov	sl, r7
 80055de:	2e00      	cmp	r6, #0
 80055e0:	f43f ae57 	beq.w	8005292 <_dtoa_r+0x67a>
 80055e4:	e64f      	b.n	8005286 <_dtoa_r+0x66e>
 80055e6:	4629      	mov	r1, r5
 80055e8:	4622      	mov	r2, r4
 80055ea:	4648      	mov	r0, r9
 80055ec:	f001 f9e8 	bl	80069c0 <__lshift>
 80055f0:	4605      	mov	r5, r0
 80055f2:	e68d      	b.n	8005310 <_dtoa_r+0x6f8>
 80055f4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80055f6:	2a00      	cmp	r2, #0
 80055f8:	f000 815d 	beq.w	80058b6 <_dtoa_r+0xc9e>
 80055fc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005600:	9a08      	ldr	r2, [sp, #32]
 8005602:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005604:	4614      	mov	r4, r2
 8005606:	441a      	add	r2, r3
 8005608:	4498      	add	r8, r3
 800560a:	9208      	str	r2, [sp, #32]
 800560c:	e5f7      	b.n	80051fe <_dtoa_r+0x5e6>
 800560e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005610:	2b00      	cmp	r3, #0
 8005612:	f73f ad3e 	bgt.w	8005092 <_dtoa_r+0x47a>
 8005616:	f040 80bc 	bne.w	8005792 <_dtoa_r+0xb7a>
 800561a:	ec51 0b17 	vmov	r0, r1, d7
 800561e:	2200      	movs	r2, #0
 8005620:	4bb2      	ldr	r3, [pc, #712]	; (80058ec <_dtoa_r+0xcd4>)
 8005622:	f7fb fa89 	bl	8000b38 <__aeabi_dmul>
 8005626:	e9dd 2300 	ldrd	r2, r3, [sp]
 800562a:	f7fb fd0b 	bl	8001044 <__aeabi_dcmpge>
 800562e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005630:	4635      	mov	r5, r6
 8005632:	2800      	cmp	r0, #0
 8005634:	d176      	bne.n	8005724 <_dtoa_r+0xb0c>
 8005636:	9a06      	ldr	r2, [sp, #24]
 8005638:	2331      	movs	r3, #49	; 0x31
 800563a:	3201      	adds	r2, #1
 800563c:	9206      	str	r2, [sp, #24]
 800563e:	f88b 3000 	strb.w	r3, [fp]
 8005642:	f10b 0401 	add.w	r4, fp, #1
 8005646:	4631      	mov	r1, r6
 8005648:	4648      	mov	r0, r9
 800564a:	f001 f81f 	bl	800668c <_Bfree>
 800564e:	2d00      	cmp	r5, #0
 8005650:	f47f af34 	bne.w	80054bc <_dtoa_r+0x8a4>
 8005654:	e736      	b.n	80054c4 <_dtoa_r+0x8ac>
 8005656:	f000 8142 	beq.w	80058de <_dtoa_r+0xcc6>
 800565a:	9b06      	ldr	r3, [sp, #24]
 800565c:	425c      	negs	r4, r3
 800565e:	4ba4      	ldr	r3, [pc, #656]	; (80058f0 <_dtoa_r+0xcd8>)
 8005660:	f004 020f 	and.w	r2, r4, #15
 8005664:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005668:	e9d3 2300 	ldrd	r2, r3, [r3]
 800566c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005670:	f7fb fa62 	bl	8000b38 <__aeabi_dmul>
 8005674:	1124      	asrs	r4, r4, #4
 8005676:	e9cd 0100 	strd	r0, r1, [sp]
 800567a:	f000 81c6 	beq.w	8005a0a <_dtoa_r+0xdf2>
 800567e:	4d9d      	ldr	r5, [pc, #628]	; (80058f4 <_dtoa_r+0xcdc>)
 8005680:	2300      	movs	r3, #0
 8005682:	2602      	movs	r6, #2
 8005684:	07e7      	lsls	r7, r4, #31
 8005686:	d505      	bpl.n	8005694 <_dtoa_r+0xa7c>
 8005688:	e9d5 2300 	ldrd	r2, r3, [r5]
 800568c:	f7fb fa54 	bl	8000b38 <__aeabi_dmul>
 8005690:	3601      	adds	r6, #1
 8005692:	2301      	movs	r3, #1
 8005694:	1064      	asrs	r4, r4, #1
 8005696:	f105 0508 	add.w	r5, r5, #8
 800569a:	d1f3      	bne.n	8005684 <_dtoa_r+0xa6c>
 800569c:	2b00      	cmp	r3, #0
 800569e:	f43f ac27 	beq.w	8004ef0 <_dtoa_r+0x2d8>
 80056a2:	e9cd 0100 	strd	r0, r1, [sp]
 80056a6:	e423      	b.n	8004ef0 <_dtoa_r+0x2d8>
 80056a8:	9b00      	ldr	r3, [sp, #0]
 80056aa:	2b00      	cmp	r3, #0
 80056ac:	f43f af6e 	beq.w	800558c <_dtoa_r+0x974>
 80056b0:	e726      	b.n	8005500 <_dtoa_r+0x8e8>
 80056b2:	6869      	ldr	r1, [r5, #4]
 80056b4:	4648      	mov	r0, r9
 80056b6:	f000 ffc3 	bl	8006640 <_Balloc>
 80056ba:	692b      	ldr	r3, [r5, #16]
 80056bc:	3302      	adds	r3, #2
 80056be:	009a      	lsls	r2, r3, #2
 80056c0:	4604      	mov	r4, r0
 80056c2:	f105 010c 	add.w	r1, r5, #12
 80056c6:	300c      	adds	r0, #12
 80056c8:	f7fa ff1a 	bl	8000500 <memcpy>
 80056cc:	4621      	mov	r1, r4
 80056ce:	2201      	movs	r2, #1
 80056d0:	4648      	mov	r0, r9
 80056d2:	f001 f975 	bl	80069c0 <__lshift>
 80056d6:	4680      	mov	r8, r0
 80056d8:	e61f      	b.n	800531a <_dtoa_r+0x702>
 80056da:	2400      	movs	r4, #0
 80056dc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80056e0:	4621      	mov	r1, r4
 80056e2:	4648      	mov	r0, r9
 80056e4:	f000 ffac 	bl	8006640 <_Balloc>
 80056e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80056ec:	930e      	str	r3, [sp, #56]	; 0x38
 80056ee:	9309      	str	r3, [sp, #36]	; 0x24
 80056f0:	2301      	movs	r3, #1
 80056f2:	4683      	mov	fp, r0
 80056f4:	9407      	str	r4, [sp, #28]
 80056f6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80056fa:	930a      	str	r3, [sp, #40]	; 0x28
 80056fc:	e4b6      	b.n	800506c <_dtoa_r+0x454>
 80056fe:	f000 ffcf 	bl	80066a0 <__multadd>
 8005702:	4627      	mov	r7, r4
 8005704:	4605      	mov	r5, r0
 8005706:	4680      	mov	r8, r0
 8005708:	e614      	b.n	8005334 <_dtoa_r+0x71c>
 800570a:	4648      	mov	r0, r9
 800570c:	f000 ffbe 	bl	800668c <_Bfree>
 8005710:	2301      	movs	r3, #1
 8005712:	e639      	b.n	8005388 <_dtoa_r+0x770>
 8005714:	9b02      	ldr	r3, [sp, #8]
 8005716:	2b02      	cmp	r3, #2
 8005718:	f77f adf3 	ble.w	8005302 <_dtoa_r+0x6ea>
 800571c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800571e:	2b00      	cmp	r3, #0
 8005720:	f000 80cf 	beq.w	80058c2 <_dtoa_r+0xcaa>
 8005724:	9b07      	ldr	r3, [sp, #28]
 8005726:	43db      	mvns	r3, r3
 8005728:	9306      	str	r3, [sp, #24]
 800572a:	465c      	mov	r4, fp
 800572c:	e78b      	b.n	8005646 <_dtoa_r+0xa2e>
 800572e:	9a06      	ldr	r2, [sp, #24]
 8005730:	2331      	movs	r3, #49	; 0x31
 8005732:	3201      	adds	r2, #1
 8005734:	9206      	str	r2, [sp, #24]
 8005736:	f88b 3000 	strb.w	r3, [fp]
 800573a:	e6b3      	b.n	80054a4 <_dtoa_r+0x88c>
 800573c:	2401      	movs	r4, #1
 800573e:	9409      	str	r4, [sp, #36]	; 0x24
 8005740:	9407      	str	r4, [sp, #28]
 8005742:	f7ff bb8b 	b.w	8004e5c <_dtoa_r+0x244>
 8005746:	4630      	mov	r0, r6
 8005748:	f7fb f98c 	bl	8000a64 <__aeabi_i2d>
 800574c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005750:	f7fb f9f2 	bl	8000b38 <__aeabi_dmul>
 8005754:	2200      	movs	r2, #0
 8005756:	4b68      	ldr	r3, [pc, #416]	; (80058f8 <_dtoa_r+0xce0>)
 8005758:	f7fb f838 	bl	80007cc <__adddf3>
 800575c:	4606      	mov	r6, r0
 800575e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005762:	2200      	movs	r2, #0
 8005764:	4b61      	ldr	r3, [pc, #388]	; (80058ec <_dtoa_r+0xcd4>)
 8005766:	e9dd 0100 	ldrd	r0, r1, [sp]
 800576a:	f7fb f82d 	bl	80007c8 <__aeabi_dsub>
 800576e:	4632      	mov	r2, r6
 8005770:	463b      	mov	r3, r7
 8005772:	4604      	mov	r4, r0
 8005774:	460d      	mov	r5, r1
 8005776:	f7fb fc6f 	bl	8001058 <__aeabi_dcmpgt>
 800577a:	2800      	cmp	r0, #0
 800577c:	d14f      	bne.n	800581e <_dtoa_r+0xc06>
 800577e:	4632      	mov	r2, r6
 8005780:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005784:	4620      	mov	r0, r4
 8005786:	4629      	mov	r1, r5
 8005788:	f7fb fc48 	bl	800101c <__aeabi_dcmplt>
 800578c:	2800      	cmp	r0, #0
 800578e:	f43f ac69 	beq.w	8005064 <_dtoa_r+0x44c>
 8005792:	2600      	movs	r6, #0
 8005794:	4635      	mov	r5, r6
 8005796:	e7c5      	b.n	8005724 <_dtoa_r+0xb0c>
 8005798:	2301      	movs	r3, #1
 800579a:	930a      	str	r3, [sp, #40]	; 0x28
 800579c:	e6c8      	b.n	8005530 <_dtoa_r+0x918>
 800579e:	4651      	mov	r1, sl
 80057a0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80057a2:	4648      	mov	r0, r9
 80057a4:	f001 f8bc 	bl	8006920 <__pow5mult>
 80057a8:	4682      	mov	sl, r0
 80057aa:	e572      	b.n	8005292 <_dtoa_r+0x67a>
 80057ac:	f8dd a000 	ldr.w	sl, [sp]
 80057b0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80057b4:	e686      	b.n	80054c4 <_dtoa_r+0x8ac>
 80057b6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80057b8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80057ba:	1afb      	subs	r3, r7, r3
 80057bc:	441a      	add	r2, r3
 80057be:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80057c2:	2700      	movs	r7, #0
 80057c4:	e512      	b.n	80051ec <_dtoa_r+0x5d4>
 80057c6:	2b00      	cmp	r3, #0
 80057c8:	9402      	str	r4, [sp, #8]
 80057ca:	465e      	mov	r6, fp
 80057cc:	f107 0401 	add.w	r4, r7, #1
 80057d0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80057d4:	f300 80ba 	bgt.w	800594c <_dtoa_r+0xd34>
 80057d8:	9b00      	ldr	r3, [sp, #0]
 80057da:	9502      	str	r5, [sp, #8]
 80057dc:	703b      	strb	r3, [r7, #0]
 80057de:	4645      	mov	r5, r8
 80057e0:	e660      	b.n	80054a4 <_dtoa_r+0x88c>
 80057e2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80057e6:	2602      	movs	r6, #2
 80057e8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80057ec:	f7ff bb67 	b.w	8004ebe <_dtoa_r+0x2a6>
 80057f0:	9b00      	ldr	r3, [sp, #0]
 80057f2:	2b39      	cmp	r3, #57	; 0x39
 80057f4:	465e      	mov	r6, fp
 80057f6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80057fa:	f000 80b9 	beq.w	8005970 <_dtoa_r+0xd58>
 80057fe:	9b00      	ldr	r3, [sp, #0]
 8005800:	9502      	str	r5, [sp, #8]
 8005802:	3301      	adds	r3, #1
 8005804:	703b      	strb	r3, [r7, #0]
 8005806:	4645      	mov	r5, r8
 8005808:	e64c      	b.n	80054a4 <_dtoa_r+0x88c>
 800580a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800580e:	1a9c      	subs	r4, r3, r2
 8005810:	e4f5      	b.n	80051fe <_dtoa_r+0x5e6>
 8005812:	465e      	mov	r6, fp
 8005814:	9502      	str	r5, [sp, #8]
 8005816:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800581a:	4645      	mov	r5, r8
 800581c:	e61a      	b.n	8005454 <_dtoa_r+0x83c>
 800581e:	2600      	movs	r6, #0
 8005820:	4635      	mov	r5, r6
 8005822:	e708      	b.n	8005636 <_dtoa_r+0xa1e>
 8005824:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005828:	e9dd 0100 	ldrd	r0, r1, [sp]
 800582c:	f7fb f984 	bl	8000b38 <__aeabi_dmul>
 8005830:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005832:	f88b 5000 	strb.w	r5, [fp]
 8005836:	2b01      	cmp	r3, #1
 8005838:	e9cd 0100 	strd	r0, r1, [sp]
 800583c:	d020      	beq.n	8005880 <_dtoa_r+0xc68>
 800583e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005840:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005844:	445b      	add	r3, fp
 8005846:	4698      	mov	r8, r3
 8005848:	2200      	movs	r2, #0
 800584a:	4b2c      	ldr	r3, [pc, #176]	; (80058fc <_dtoa_r+0xce4>)
 800584c:	4630      	mov	r0, r6
 800584e:	4639      	mov	r1, r7
 8005850:	f7fb f972 	bl	8000b38 <__aeabi_dmul>
 8005854:	460f      	mov	r7, r1
 8005856:	4606      	mov	r6, r0
 8005858:	f7fb fc1e 	bl	8001098 <__aeabi_d2iz>
 800585c:	4605      	mov	r5, r0
 800585e:	f7fb f901 	bl	8000a64 <__aeabi_i2d>
 8005862:	3530      	adds	r5, #48	; 0x30
 8005864:	4602      	mov	r2, r0
 8005866:	460b      	mov	r3, r1
 8005868:	4630      	mov	r0, r6
 800586a:	4639      	mov	r1, r7
 800586c:	f7fa ffac 	bl	80007c8 <__aeabi_dsub>
 8005870:	f804 5b01 	strb.w	r5, [r4], #1
 8005874:	4544      	cmp	r4, r8
 8005876:	4606      	mov	r6, r0
 8005878:	460f      	mov	r7, r1
 800587a:	d1e5      	bne.n	8005848 <_dtoa_r+0xc30>
 800587c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005880:	4b1f      	ldr	r3, [pc, #124]	; (8005900 <_dtoa_r+0xce8>)
 8005882:	2200      	movs	r2, #0
 8005884:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005888:	f7fa ffa0 	bl	80007cc <__adddf3>
 800588c:	4632      	mov	r2, r6
 800588e:	463b      	mov	r3, r7
 8005890:	f7fb fbc4 	bl	800101c <__aeabi_dcmplt>
 8005894:	2800      	cmp	r0, #0
 8005896:	d070      	beq.n	800597a <_dtoa_r+0xd62>
 8005898:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800589a:	9306      	str	r3, [sp, #24]
 800589c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80058a0:	e48f      	b.n	80051c2 <_dtoa_r+0x5aa>
 80058a2:	2330      	movs	r3, #48	; 0x30
 80058a4:	f88b 3000 	strb.w	r3, [fp]
 80058a8:	9b06      	ldr	r3, [sp, #24]
 80058aa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80058ae:	3301      	adds	r3, #1
 80058b0:	9306      	str	r3, [sp, #24]
 80058b2:	465b      	mov	r3, fp
 80058b4:	e489      	b.n	80051ca <_dtoa_r+0x5b2>
 80058b6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80058b8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80058bc:	e6a0      	b.n	8005600 <_dtoa_r+0x9e8>
 80058be:	2300      	movs	r3, #0
 80058c0:	e676      	b.n	80055b0 <_dtoa_r+0x998>
 80058c2:	4631      	mov	r1, r6
 80058c4:	2205      	movs	r2, #5
 80058c6:	4648      	mov	r0, r9
 80058c8:	f000 feea 	bl	80066a0 <__multadd>
 80058cc:	4601      	mov	r1, r0
 80058ce:	4606      	mov	r6, r0
 80058d0:	4650      	mov	r0, sl
 80058d2:	f001 f8cb 	bl	8006a6c <__mcmp>
 80058d6:	2800      	cmp	r0, #0
 80058d8:	f73f aead 	bgt.w	8005636 <_dtoa_r+0xa1e>
 80058dc:	e722      	b.n	8005724 <_dtoa_r+0xb0c>
 80058de:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80058e2:	2602      	movs	r6, #2
 80058e4:	ed8d 7b00 	vstr	d7, [sp]
 80058e8:	f7ff bb02 	b.w	8004ef0 <_dtoa_r+0x2d8>
 80058ec:	40140000 	.word	0x40140000
 80058f0:	08007be8 	.word	0x08007be8
 80058f4:	08007bc0 	.word	0x08007bc0
 80058f8:	401c0000 	.word	0x401c0000
 80058fc:	40240000 	.word	0x40240000
 8005900:	3fe00000 	.word	0x3fe00000
 8005904:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005906:	2b00      	cmp	r3, #0
 8005908:	f43f af1d 	beq.w	8005746 <_dtoa_r+0xb2e>
 800590c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800590e:	2c00      	cmp	r4, #0
 8005910:	f77f aba8 	ble.w	8005064 <_dtoa_r+0x44c>
 8005914:	2200      	movs	r2, #0
 8005916:	4b45      	ldr	r3, [pc, #276]	; (8005a2c <_dtoa_r+0xe14>)
 8005918:	e9dd 0100 	ldrd	r0, r1, [sp]
 800591c:	f7fb f90c 	bl	8000b38 <__aeabi_dmul>
 8005920:	e9cd 0100 	strd	r0, r1, [sp]
 8005924:	1c70      	adds	r0, r6, #1
 8005926:	f7fb f89d 	bl	8000a64 <__aeabi_i2d>
 800592a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800592e:	f7fb f903 	bl	8000b38 <__aeabi_dmul>
 8005932:	4b3f      	ldr	r3, [pc, #252]	; (8005a30 <_dtoa_r+0xe18>)
 8005934:	2200      	movs	r2, #0
 8005936:	f7fa ff49 	bl	80007cc <__adddf3>
 800593a:	9b06      	ldr	r3, [sp, #24]
 800593c:	9412      	str	r4, [sp, #72]	; 0x48
 800593e:	3b01      	subs	r3, #1
 8005940:	4606      	mov	r6, r0
 8005942:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005946:	9316      	str	r3, [sp, #88]	; 0x58
 8005948:	f7ff baf3 	b.w	8004f32 <_dtoa_r+0x31a>
 800594c:	4651      	mov	r1, sl
 800594e:	2201      	movs	r2, #1
 8005950:	4648      	mov	r0, r9
 8005952:	f001 f835 	bl	80069c0 <__lshift>
 8005956:	4631      	mov	r1, r6
 8005958:	4682      	mov	sl, r0
 800595a:	f001 f887 	bl	8006a6c <__mcmp>
 800595e:	2800      	cmp	r0, #0
 8005960:	dd3b      	ble.n	80059da <_dtoa_r+0xdc2>
 8005962:	9b00      	ldr	r3, [sp, #0]
 8005964:	2b39      	cmp	r3, #57	; 0x39
 8005966:	d003      	beq.n	8005970 <_dtoa_r+0xd58>
 8005968:	9b02      	ldr	r3, [sp, #8]
 800596a:	3331      	adds	r3, #49	; 0x31
 800596c:	9300      	str	r3, [sp, #0]
 800596e:	e733      	b.n	80057d8 <_dtoa_r+0xbc0>
 8005970:	2239      	movs	r2, #57	; 0x39
 8005972:	9502      	str	r5, [sp, #8]
 8005974:	703a      	strb	r2, [r7, #0]
 8005976:	4645      	mov	r5, r8
 8005978:	e58e      	b.n	8005498 <_dtoa_r+0x880>
 800597a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800597e:	2000      	movs	r0, #0
 8005980:	492c      	ldr	r1, [pc, #176]	; (8005a34 <_dtoa_r+0xe1c>)
 8005982:	f7fa ff21 	bl	80007c8 <__aeabi_dsub>
 8005986:	4632      	mov	r2, r6
 8005988:	463b      	mov	r3, r7
 800598a:	f7fb fb65 	bl	8001058 <__aeabi_dcmpgt>
 800598e:	b910      	cbnz	r0, 8005996 <_dtoa_r+0xd7e>
 8005990:	f7ff bb68 	b.w	8005064 <_dtoa_r+0x44c>
 8005994:	4614      	mov	r4, r2
 8005996:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800599a:	2b30      	cmp	r3, #48	; 0x30
 800599c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80059a0:	d0f8      	beq.n	8005994 <_dtoa_r+0xd7c>
 80059a2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80059a4:	9306      	str	r3, [sp, #24]
 80059a6:	e58d      	b.n	80054c4 <_dtoa_r+0x8ac>
 80059a8:	46d9      	mov	r9, fp
 80059aa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80059ae:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80059b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80059b4:	9306      	str	r3, [sp, #24]
 80059b6:	e404      	b.n	80051c2 <_dtoa_r+0x5aa>
 80059b8:	9b00      	ldr	r3, [sp, #0]
 80059ba:	2b39      	cmp	r3, #57	; 0x39
 80059bc:	4621      	mov	r1, r4
 80059be:	4632      	mov	r2, r6
 80059c0:	f107 0401 	add.w	r4, r7, #1
 80059c4:	465e      	mov	r6, fp
 80059c6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80059ca:	d0d1      	beq.n	8005970 <_dtoa_r+0xd58>
 80059cc:	2a00      	cmp	r2, #0
 80059ce:	f77f af03 	ble.w	80057d8 <_dtoa_r+0xbc0>
 80059d2:	460b      	mov	r3, r1
 80059d4:	3331      	adds	r3, #49	; 0x31
 80059d6:	9300      	str	r3, [sp, #0]
 80059d8:	e6fe      	b.n	80057d8 <_dtoa_r+0xbc0>
 80059da:	f47f aefd 	bne.w	80057d8 <_dtoa_r+0xbc0>
 80059de:	9b00      	ldr	r3, [sp, #0]
 80059e0:	07da      	lsls	r2, r3, #31
 80059e2:	f57f aef9 	bpl.w	80057d8 <_dtoa_r+0xbc0>
 80059e6:	e7bc      	b.n	8005962 <_dtoa_r+0xd4a>
 80059e8:	4629      	mov	r1, r5
 80059ea:	2300      	movs	r3, #0
 80059ec:	220a      	movs	r2, #10
 80059ee:	4648      	mov	r0, r9
 80059f0:	f000 fe56 	bl	80066a0 <__multadd>
 80059f4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80059f6:	2b00      	cmp	r3, #0
 80059f8:	4605      	mov	r5, r0
 80059fa:	dd09      	ble.n	8005a10 <_dtoa_r+0xdf8>
 80059fc:	9309      	str	r3, [sp, #36]	; 0x24
 80059fe:	e484      	b.n	800530a <_dtoa_r+0x6f2>
 8005a00:	9b02      	ldr	r3, [sp, #8]
 8005a02:	2b02      	cmp	r3, #2
 8005a04:	dc0e      	bgt.n	8005a24 <_dtoa_r+0xe0c>
 8005a06:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005a08:	e507      	b.n	800541a <_dtoa_r+0x802>
 8005a0a:	2602      	movs	r6, #2
 8005a0c:	f7ff ba70 	b.w	8004ef0 <_dtoa_r+0x2d8>
 8005a10:	9b02      	ldr	r3, [sp, #8]
 8005a12:	2b02      	cmp	r3, #2
 8005a14:	dc06      	bgt.n	8005a24 <_dtoa_r+0xe0c>
 8005a16:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005a18:	e7f0      	b.n	80059fc <_dtoa_r+0xde4>
 8005a1a:	f43f ac59 	beq.w	80052d0 <_dtoa_r+0x6b8>
 8005a1e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005a22:	e450      	b.n	80052c6 <_dtoa_r+0x6ae>
 8005a24:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005a26:	9309      	str	r3, [sp, #36]	; 0x24
 8005a28:	e678      	b.n	800571c <_dtoa_r+0xb04>
 8005a2a:	bf00      	nop
 8005a2c:	40240000 	.word	0x40240000
 8005a30:	401c0000 	.word	0x401c0000
 8005a34:	3fe00000 	.word	0x3fe00000

08005a38 <__sflush_r>:
 8005a38:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005a3c:	b29a      	uxth	r2, r3
 8005a3e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005a42:	460c      	mov	r4, r1
 8005a44:	0711      	lsls	r1, r2, #28
 8005a46:	4680      	mov	r8, r0
 8005a48:	d444      	bmi.n	8005ad4 <__sflush_r+0x9c>
 8005a4a:	6862      	ldr	r2, [r4, #4]
 8005a4c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005a50:	2a00      	cmp	r2, #0
 8005a52:	81a3      	strh	r3, [r4, #12]
 8005a54:	dd59      	ble.n	8005b0a <__sflush_r+0xd2>
 8005a56:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005a58:	2d00      	cmp	r5, #0
 8005a5a:	d053      	beq.n	8005b04 <__sflush_r+0xcc>
 8005a5c:	2200      	movs	r2, #0
 8005a5e:	b29b      	uxth	r3, r3
 8005a60:	f8d8 6000 	ldr.w	r6, [r8]
 8005a64:	69e1      	ldr	r1, [r4, #28]
 8005a66:	f8c8 2000 	str.w	r2, [r8]
 8005a6a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8005a6e:	f040 8083 	bne.w	8005b78 <__sflush_r+0x140>
 8005a72:	2301      	movs	r3, #1
 8005a74:	4640      	mov	r0, r8
 8005a76:	47a8      	blx	r5
 8005a78:	1c42      	adds	r2, r0, #1
 8005a7a:	d04a      	beq.n	8005b12 <__sflush_r+0xda>
 8005a7c:	89a3      	ldrh	r3, [r4, #12]
 8005a7e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005a80:	69e1      	ldr	r1, [r4, #28]
 8005a82:	075b      	lsls	r3, r3, #29
 8005a84:	d505      	bpl.n	8005a92 <__sflush_r+0x5a>
 8005a86:	6862      	ldr	r2, [r4, #4]
 8005a88:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8005a8a:	1a80      	subs	r0, r0, r2
 8005a8c:	b10b      	cbz	r3, 8005a92 <__sflush_r+0x5a>
 8005a8e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005a90:	1ac0      	subs	r0, r0, r3
 8005a92:	4602      	mov	r2, r0
 8005a94:	2300      	movs	r3, #0
 8005a96:	4640      	mov	r0, r8
 8005a98:	47a8      	blx	r5
 8005a9a:	1c47      	adds	r7, r0, #1
 8005a9c:	d045      	beq.n	8005b2a <__sflush_r+0xf2>
 8005a9e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005aa2:	6922      	ldr	r2, [r4, #16]
 8005aa4:	6022      	str	r2, [r4, #0]
 8005aa6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005aaa:	2200      	movs	r2, #0
 8005aac:	81a3      	strh	r3, [r4, #12]
 8005aae:	04db      	lsls	r3, r3, #19
 8005ab0:	6062      	str	r2, [r4, #4]
 8005ab2:	d500      	bpl.n	8005ab6 <__sflush_r+0x7e>
 8005ab4:	6520      	str	r0, [r4, #80]	; 0x50
 8005ab6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005ab8:	f8c8 6000 	str.w	r6, [r8]
 8005abc:	b311      	cbz	r1, 8005b04 <__sflush_r+0xcc>
 8005abe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005ac2:	4299      	cmp	r1, r3
 8005ac4:	d002      	beq.n	8005acc <__sflush_r+0x94>
 8005ac6:	4640      	mov	r0, r8
 8005ac8:	f000 f95e 	bl	8005d88 <_free_r>
 8005acc:	2000      	movs	r0, #0
 8005ace:	6320      	str	r0, [r4, #48]	; 0x30
 8005ad0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005ad4:	6926      	ldr	r6, [r4, #16]
 8005ad6:	b1ae      	cbz	r6, 8005b04 <__sflush_r+0xcc>
 8005ad8:	6825      	ldr	r5, [r4, #0]
 8005ada:	6026      	str	r6, [r4, #0]
 8005adc:	0792      	lsls	r2, r2, #30
 8005ade:	bf0c      	ite	eq
 8005ae0:	6963      	ldreq	r3, [r4, #20]
 8005ae2:	2300      	movne	r3, #0
 8005ae4:	1bad      	subs	r5, r5, r6
 8005ae6:	60a3      	str	r3, [r4, #8]
 8005ae8:	e00a      	b.n	8005b00 <__sflush_r+0xc8>
 8005aea:	462b      	mov	r3, r5
 8005aec:	4632      	mov	r2, r6
 8005aee:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005af0:	69e1      	ldr	r1, [r4, #28]
 8005af2:	4640      	mov	r0, r8
 8005af4:	47b8      	blx	r7
 8005af6:	2800      	cmp	r0, #0
 8005af8:	eba5 0500 	sub.w	r5, r5, r0
 8005afc:	4406      	add	r6, r0
 8005afe:	dd2b      	ble.n	8005b58 <__sflush_r+0x120>
 8005b00:	2d00      	cmp	r5, #0
 8005b02:	dcf2      	bgt.n	8005aea <__sflush_r+0xb2>
 8005b04:	2000      	movs	r0, #0
 8005b06:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005b0a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005b0c:	2a00      	cmp	r2, #0
 8005b0e:	dca2      	bgt.n	8005a56 <__sflush_r+0x1e>
 8005b10:	e7f8      	b.n	8005b04 <__sflush_r+0xcc>
 8005b12:	f8d8 3000 	ldr.w	r3, [r8]
 8005b16:	2b00      	cmp	r3, #0
 8005b18:	d0b0      	beq.n	8005a7c <__sflush_r+0x44>
 8005b1a:	2b1d      	cmp	r3, #29
 8005b1c:	d001      	beq.n	8005b22 <__sflush_r+0xea>
 8005b1e:	2b16      	cmp	r3, #22
 8005b20:	d12c      	bne.n	8005b7c <__sflush_r+0x144>
 8005b22:	f8c8 6000 	str.w	r6, [r8]
 8005b26:	2000      	movs	r0, #0
 8005b28:	e7ed      	b.n	8005b06 <__sflush_r+0xce>
 8005b2a:	f8d8 1000 	ldr.w	r1, [r8]
 8005b2e:	291d      	cmp	r1, #29
 8005b30:	d81a      	bhi.n	8005b68 <__sflush_r+0x130>
 8005b32:	4b15      	ldr	r3, [pc, #84]	; (8005b88 <__sflush_r+0x150>)
 8005b34:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005b38:	40cb      	lsrs	r3, r1
 8005b3a:	43db      	mvns	r3, r3
 8005b3c:	f013 0301 	ands.w	r3, r3, #1
 8005b40:	d114      	bne.n	8005b6c <__sflush_r+0x134>
 8005b42:	6925      	ldr	r5, [r4, #16]
 8005b44:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005b48:	e9c4 5300 	strd	r5, r3, [r4]
 8005b4c:	04d5      	lsls	r5, r2, #19
 8005b4e:	81a2      	strh	r2, [r4, #12]
 8005b50:	d5b1      	bpl.n	8005ab6 <__sflush_r+0x7e>
 8005b52:	2900      	cmp	r1, #0
 8005b54:	d1af      	bne.n	8005ab6 <__sflush_r+0x7e>
 8005b56:	e7ad      	b.n	8005ab4 <__sflush_r+0x7c>
 8005b58:	89a3      	ldrh	r3, [r4, #12]
 8005b5a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005b5e:	81a3      	strh	r3, [r4, #12]
 8005b60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005b64:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005b68:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005b6c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005b70:	81a2      	strh	r2, [r4, #12]
 8005b72:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005b76:	e7c6      	b.n	8005b06 <__sflush_r+0xce>
 8005b78:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005b7a:	e782      	b.n	8005a82 <__sflush_r+0x4a>
 8005b7c:	89a3      	ldrh	r3, [r4, #12]
 8005b7e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005b82:	81a3      	strh	r3, [r4, #12]
 8005b84:	e7bf      	b.n	8005b06 <__sflush_r+0xce>
 8005b86:	bf00      	nop
 8005b88:	20400001 	.word	0x20400001

08005b8c <_fflush_r>:
 8005b8c:	b538      	push	{r3, r4, r5, lr}
 8005b8e:	460d      	mov	r5, r1
 8005b90:	4604      	mov	r4, r0
 8005b92:	b108      	cbz	r0, 8005b98 <_fflush_r+0xc>
 8005b94:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005b96:	b1a3      	cbz	r3, 8005bc2 <_fflush_r+0x36>
 8005b98:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005b9c:	b1b8      	cbz	r0, 8005bce <_fflush_r+0x42>
 8005b9e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005ba0:	07db      	lsls	r3, r3, #31
 8005ba2:	d401      	bmi.n	8005ba8 <_fflush_r+0x1c>
 8005ba4:	0581      	lsls	r1, r0, #22
 8005ba6:	d51a      	bpl.n	8005bde <_fflush_r+0x52>
 8005ba8:	4620      	mov	r0, r4
 8005baa:	4629      	mov	r1, r5
 8005bac:	f7ff ff44 	bl	8005a38 <__sflush_r>
 8005bb0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005bb2:	07da      	lsls	r2, r3, #31
 8005bb4:	4604      	mov	r4, r0
 8005bb6:	d402      	bmi.n	8005bbe <_fflush_r+0x32>
 8005bb8:	89ab      	ldrh	r3, [r5, #12]
 8005bba:	059b      	lsls	r3, r3, #22
 8005bbc:	d50a      	bpl.n	8005bd4 <_fflush_r+0x48>
 8005bbe:	4620      	mov	r0, r4
 8005bc0:	bd38      	pop	{r3, r4, r5, pc}
 8005bc2:	f000 f83f 	bl	8005c44 <__sinit>
 8005bc6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005bca:	2800      	cmp	r0, #0
 8005bcc:	d1e7      	bne.n	8005b9e <_fflush_r+0x12>
 8005bce:	4604      	mov	r4, r0
 8005bd0:	4620      	mov	r0, r4
 8005bd2:	bd38      	pop	{r3, r4, r5, pc}
 8005bd4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005bd6:	f000 fa09 	bl	8005fec <__retarget_lock_release_recursive>
 8005bda:	4620      	mov	r0, r4
 8005bdc:	bd38      	pop	{r3, r4, r5, pc}
 8005bde:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005be0:	f000 fa02 	bl	8005fe8 <__retarget_lock_acquire_recursive>
 8005be4:	e7e0      	b.n	8005ba8 <_fflush_r+0x1c>
 8005be6:	bf00      	nop

08005be8 <std>:
 8005be8:	b510      	push	{r4, lr}
 8005bea:	2300      	movs	r3, #0
 8005bec:	4604      	mov	r4, r0
 8005bee:	8181      	strh	r1, [r0, #12]
 8005bf0:	81c2      	strh	r2, [r0, #14]
 8005bf2:	e9c0 3300 	strd	r3, r3, [r0]
 8005bf6:	6083      	str	r3, [r0, #8]
 8005bf8:	6643      	str	r3, [r0, #100]	; 0x64
 8005bfa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005bfe:	6183      	str	r3, [r0, #24]
 8005c00:	4619      	mov	r1, r3
 8005c02:	2208      	movs	r2, #8
 8005c04:	305c      	adds	r0, #92	; 0x5c
 8005c06:	f7fd f91f 	bl	8002e48 <memset>
 8005c0a:	4807      	ldr	r0, [pc, #28]	; (8005c28 <std+0x40>)
 8005c0c:	4907      	ldr	r1, [pc, #28]	; (8005c2c <std+0x44>)
 8005c0e:	4a08      	ldr	r2, [pc, #32]	; (8005c30 <std+0x48>)
 8005c10:	4b08      	ldr	r3, [pc, #32]	; (8005c34 <std+0x4c>)
 8005c12:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005c14:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005c18:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005c1c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005c20:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005c24:	f000 b9dc 	b.w	8005fe0 <__retarget_lock_init_recursive>
 8005c28:	08006ce1 	.word	0x08006ce1
 8005c2c:	08006d05 	.word	0x08006d05
 8005c30:	08006d41 	.word	0x08006d41
 8005c34:	08006d61 	.word	0x08006d61

08005c38 <_cleanup_r>:
 8005c38:	4901      	ldr	r1, [pc, #4]	; (8005c40 <_cleanup_r+0x8>)
 8005c3a:	f000 b999 	b.w	8005f70 <_fwalk_reent>
 8005c3e:	bf00      	nop
 8005c40:	08006fd1 	.word	0x08006fd1

08005c44 <__sinit>:
 8005c44:	b510      	push	{r4, lr}
 8005c46:	4604      	mov	r4, r0
 8005c48:	4812      	ldr	r0, [pc, #72]	; (8005c94 <__sinit+0x50>)
 8005c4a:	f000 f9cd 	bl	8005fe8 <__retarget_lock_acquire_recursive>
 8005c4e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005c50:	b9d2      	cbnz	r2, 8005c88 <__sinit+0x44>
 8005c52:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005c56:	4810      	ldr	r0, [pc, #64]	; (8005c98 <__sinit+0x54>)
 8005c58:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005c5c:	2103      	movs	r1, #3
 8005c5e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005c62:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005c64:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005c68:	6860      	ldr	r0, [r4, #4]
 8005c6a:	2104      	movs	r1, #4
 8005c6c:	f7ff ffbc 	bl	8005be8 <std>
 8005c70:	2201      	movs	r2, #1
 8005c72:	2109      	movs	r1, #9
 8005c74:	68a0      	ldr	r0, [r4, #8]
 8005c76:	f7ff ffb7 	bl	8005be8 <std>
 8005c7a:	2202      	movs	r2, #2
 8005c7c:	2112      	movs	r1, #18
 8005c7e:	68e0      	ldr	r0, [r4, #12]
 8005c80:	f7ff ffb2 	bl	8005be8 <std>
 8005c84:	2301      	movs	r3, #1
 8005c86:	63a3      	str	r3, [r4, #56]	; 0x38
 8005c88:	4802      	ldr	r0, [pc, #8]	; (8005c94 <__sinit+0x50>)
 8005c8a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005c8e:	f000 b9ad 	b.w	8005fec <__retarget_lock_release_recursive>
 8005c92:	bf00      	nop
 8005c94:	20000c20 	.word	0x20000c20
 8005c98:	08005c39 	.word	0x08005c39

08005c9c <__sfp_lock_acquire>:
 8005c9c:	4801      	ldr	r0, [pc, #4]	; (8005ca4 <__sfp_lock_acquire+0x8>)
 8005c9e:	f000 b9a3 	b.w	8005fe8 <__retarget_lock_acquire_recursive>
 8005ca2:	bf00      	nop
 8005ca4:	20000c34 	.word	0x20000c34

08005ca8 <__sfp_lock_release>:
 8005ca8:	4801      	ldr	r0, [pc, #4]	; (8005cb0 <__sfp_lock_release+0x8>)
 8005caa:	f000 b99f 	b.w	8005fec <__retarget_lock_release_recursive>
 8005cae:	bf00      	nop
 8005cb0:	20000c34 	.word	0x20000c34

08005cb4 <__libc_fini_array>:
 8005cb4:	b538      	push	{r3, r4, r5, lr}
 8005cb6:	4c0a      	ldr	r4, [pc, #40]	; (8005ce0 <__libc_fini_array+0x2c>)
 8005cb8:	4d0a      	ldr	r5, [pc, #40]	; (8005ce4 <__libc_fini_array+0x30>)
 8005cba:	1b64      	subs	r4, r4, r5
 8005cbc:	10a4      	asrs	r4, r4, #2
 8005cbe:	d00a      	beq.n	8005cd6 <__libc_fini_array+0x22>
 8005cc0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005cc4:	3b01      	subs	r3, #1
 8005cc6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005cca:	3c01      	subs	r4, #1
 8005ccc:	f855 3904 	ldr.w	r3, [r5], #-4
 8005cd0:	4798      	blx	r3
 8005cd2:	2c00      	cmp	r4, #0
 8005cd4:	d1f9      	bne.n	8005cca <__libc_fini_array+0x16>
 8005cd6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005cda:	f001 befd 	b.w	8007ad8 <_fini>
 8005cde:	bf00      	nop
 8005ce0:	08007de4 	.word	0x08007de4
 8005ce4:	08007de0 	.word	0x08007de0

08005ce8 <_malloc_trim_r>:
 8005ce8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005cea:	4f24      	ldr	r7, [pc, #144]	; (8005d7c <_malloc_trim_r+0x94>)
 8005cec:	460c      	mov	r4, r1
 8005cee:	4606      	mov	r6, r0
 8005cf0:	f000 fc9a 	bl	8006628 <__malloc_lock>
 8005cf4:	68bb      	ldr	r3, [r7, #8]
 8005cf6:	685d      	ldr	r5, [r3, #4]
 8005cf8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005cfc:	310f      	adds	r1, #15
 8005cfe:	f025 0503 	bic.w	r5, r5, #3
 8005d02:	4429      	add	r1, r5
 8005d04:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005d08:	f021 010f 	bic.w	r1, r1, #15
 8005d0c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005d10:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005d14:	db07      	blt.n	8005d26 <_malloc_trim_r+0x3e>
 8005d16:	2100      	movs	r1, #0
 8005d18:	4630      	mov	r0, r6
 8005d1a:	f000 ffcf 	bl	8006cbc <_sbrk_r>
 8005d1e:	68bb      	ldr	r3, [r7, #8]
 8005d20:	442b      	add	r3, r5
 8005d22:	4298      	cmp	r0, r3
 8005d24:	d004      	beq.n	8005d30 <_malloc_trim_r+0x48>
 8005d26:	4630      	mov	r0, r6
 8005d28:	f000 fc84 	bl	8006634 <__malloc_unlock>
 8005d2c:	2000      	movs	r0, #0
 8005d2e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005d30:	4261      	negs	r1, r4
 8005d32:	4630      	mov	r0, r6
 8005d34:	f000 ffc2 	bl	8006cbc <_sbrk_r>
 8005d38:	3001      	adds	r0, #1
 8005d3a:	d00d      	beq.n	8005d58 <_malloc_trim_r+0x70>
 8005d3c:	4b10      	ldr	r3, [pc, #64]	; (8005d80 <_malloc_trim_r+0x98>)
 8005d3e:	68ba      	ldr	r2, [r7, #8]
 8005d40:	6819      	ldr	r1, [r3, #0]
 8005d42:	1b2d      	subs	r5, r5, r4
 8005d44:	f045 0501 	orr.w	r5, r5, #1
 8005d48:	4630      	mov	r0, r6
 8005d4a:	1b09      	subs	r1, r1, r4
 8005d4c:	6055      	str	r5, [r2, #4]
 8005d4e:	6019      	str	r1, [r3, #0]
 8005d50:	f000 fc70 	bl	8006634 <__malloc_unlock>
 8005d54:	2001      	movs	r0, #1
 8005d56:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005d58:	2100      	movs	r1, #0
 8005d5a:	4630      	mov	r0, r6
 8005d5c:	f000 ffae 	bl	8006cbc <_sbrk_r>
 8005d60:	68ba      	ldr	r2, [r7, #8]
 8005d62:	1a83      	subs	r3, r0, r2
 8005d64:	2b0f      	cmp	r3, #15
 8005d66:	ddde      	ble.n	8005d26 <_malloc_trim_r+0x3e>
 8005d68:	4c06      	ldr	r4, [pc, #24]	; (8005d84 <_malloc_trim_r+0x9c>)
 8005d6a:	4905      	ldr	r1, [pc, #20]	; (8005d80 <_malloc_trim_r+0x98>)
 8005d6c:	6824      	ldr	r4, [r4, #0]
 8005d6e:	f043 0301 	orr.w	r3, r3, #1
 8005d72:	1b00      	subs	r0, r0, r4
 8005d74:	6053      	str	r3, [r2, #4]
 8005d76:	6008      	str	r0, [r1, #0]
 8005d78:	e7d5      	b.n	8005d26 <_malloc_trim_r+0x3e>
 8005d7a:	bf00      	nop
 8005d7c:	2000044c 	.word	0x2000044c
 8005d80:	20000b98 	.word	0x20000b98
 8005d84:	20000854 	.word	0x20000854

08005d88 <_free_r>:
 8005d88:	2900      	cmp	r1, #0
 8005d8a:	d053      	beq.n	8005e34 <_free_r+0xac>
 8005d8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005d8e:	460c      	mov	r4, r1
 8005d90:	4606      	mov	r6, r0
 8005d92:	f000 fc49 	bl	8006628 <__malloc_lock>
 8005d96:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005d9a:	4f71      	ldr	r7, [pc, #452]	; (8005f60 <_free_r+0x1d8>)
 8005d9c:	f02c 0101 	bic.w	r1, ip, #1
 8005da0:	f1a4 0508 	sub.w	r5, r4, #8
 8005da4:	186b      	adds	r3, r5, r1
 8005da6:	68b8      	ldr	r0, [r7, #8]
 8005da8:	685a      	ldr	r2, [r3, #4]
 8005daa:	4298      	cmp	r0, r3
 8005dac:	f022 0203 	bic.w	r2, r2, #3
 8005db0:	d053      	beq.n	8005e5a <_free_r+0xd2>
 8005db2:	f01c 0f01 	tst.w	ip, #1
 8005db6:	605a      	str	r2, [r3, #4]
 8005db8:	eb03 0002 	add.w	r0, r3, r2
 8005dbc:	d13b      	bne.n	8005e36 <_free_r+0xae>
 8005dbe:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005dc2:	6840      	ldr	r0, [r0, #4]
 8005dc4:	eba5 050c 	sub.w	r5, r5, ip
 8005dc8:	f107 0e08 	add.w	lr, r7, #8
 8005dcc:	68ac      	ldr	r4, [r5, #8]
 8005dce:	4574      	cmp	r4, lr
 8005dd0:	4461      	add	r1, ip
 8005dd2:	f000 0001 	and.w	r0, r0, #1
 8005dd6:	d075      	beq.n	8005ec4 <_free_r+0x13c>
 8005dd8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005ddc:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005de0:	f8cc 4008 	str.w	r4, [ip, #8]
 8005de4:	b360      	cbz	r0, 8005e40 <_free_r+0xb8>
 8005de6:	f041 0301 	orr.w	r3, r1, #1
 8005dea:	606b      	str	r3, [r5, #4]
 8005dec:	5069      	str	r1, [r5, r1]
 8005dee:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005df2:	d350      	bcc.n	8005e96 <_free_r+0x10e>
 8005df4:	0a4b      	lsrs	r3, r1, #9
 8005df6:	2b04      	cmp	r3, #4
 8005df8:	d870      	bhi.n	8005edc <_free_r+0x154>
 8005dfa:	098b      	lsrs	r3, r1, #6
 8005dfc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005e00:	00e4      	lsls	r4, r4, #3
 8005e02:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005e06:	1938      	adds	r0, r7, r4
 8005e08:	593b      	ldr	r3, [r7, r4]
 8005e0a:	3808      	subs	r0, #8
 8005e0c:	4298      	cmp	r0, r3
 8005e0e:	d078      	beq.n	8005f02 <_free_r+0x17a>
 8005e10:	685a      	ldr	r2, [r3, #4]
 8005e12:	f022 0203 	bic.w	r2, r2, #3
 8005e16:	428a      	cmp	r2, r1
 8005e18:	d971      	bls.n	8005efe <_free_r+0x176>
 8005e1a:	689b      	ldr	r3, [r3, #8]
 8005e1c:	4298      	cmp	r0, r3
 8005e1e:	d1f7      	bne.n	8005e10 <_free_r+0x88>
 8005e20:	68c3      	ldr	r3, [r0, #12]
 8005e22:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005e26:	609d      	str	r5, [r3, #8]
 8005e28:	60c5      	str	r5, [r0, #12]
 8005e2a:	4630      	mov	r0, r6
 8005e2c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005e30:	f000 bc00 	b.w	8006634 <__malloc_unlock>
 8005e34:	4770      	bx	lr
 8005e36:	6840      	ldr	r0, [r0, #4]
 8005e38:	f000 0001 	and.w	r0, r0, #1
 8005e3c:	2800      	cmp	r0, #0
 8005e3e:	d1d2      	bne.n	8005de6 <_free_r+0x5e>
 8005e40:	6898      	ldr	r0, [r3, #8]
 8005e42:	4c48      	ldr	r4, [pc, #288]	; (8005f64 <_free_r+0x1dc>)
 8005e44:	4411      	add	r1, r2
 8005e46:	42a0      	cmp	r0, r4
 8005e48:	f041 0201 	orr.w	r2, r1, #1
 8005e4c:	d062      	beq.n	8005f14 <_free_r+0x18c>
 8005e4e:	68db      	ldr	r3, [r3, #12]
 8005e50:	60c3      	str	r3, [r0, #12]
 8005e52:	6098      	str	r0, [r3, #8]
 8005e54:	606a      	str	r2, [r5, #4]
 8005e56:	5069      	str	r1, [r5, r1]
 8005e58:	e7c9      	b.n	8005dee <_free_r+0x66>
 8005e5a:	f01c 0f01 	tst.w	ip, #1
 8005e5e:	440a      	add	r2, r1
 8005e60:	d107      	bne.n	8005e72 <_free_r+0xea>
 8005e62:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005e66:	1aed      	subs	r5, r5, r3
 8005e68:	441a      	add	r2, r3
 8005e6a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005e6e:	60cb      	str	r3, [r1, #12]
 8005e70:	6099      	str	r1, [r3, #8]
 8005e72:	4b3d      	ldr	r3, [pc, #244]	; (8005f68 <_free_r+0x1e0>)
 8005e74:	681b      	ldr	r3, [r3, #0]
 8005e76:	f042 0101 	orr.w	r1, r2, #1
 8005e7a:	4293      	cmp	r3, r2
 8005e7c:	6069      	str	r1, [r5, #4]
 8005e7e:	60bd      	str	r5, [r7, #8]
 8005e80:	d804      	bhi.n	8005e8c <_free_r+0x104>
 8005e82:	4b3a      	ldr	r3, [pc, #232]	; (8005f6c <_free_r+0x1e4>)
 8005e84:	4630      	mov	r0, r6
 8005e86:	6819      	ldr	r1, [r3, #0]
 8005e88:	f7ff ff2e 	bl	8005ce8 <_malloc_trim_r>
 8005e8c:	4630      	mov	r0, r6
 8005e8e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005e92:	f000 bbcf 	b.w	8006634 <__malloc_unlock>
 8005e96:	08c9      	lsrs	r1, r1, #3
 8005e98:	6878      	ldr	r0, [r7, #4]
 8005e9a:	1c4a      	adds	r2, r1, #1
 8005e9c:	2301      	movs	r3, #1
 8005e9e:	1089      	asrs	r1, r1, #2
 8005ea0:	408b      	lsls	r3, r1
 8005ea2:	4303      	orrs	r3, r0
 8005ea4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005ea8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005eac:	607b      	str	r3, [r7, #4]
 8005eae:	3908      	subs	r1, #8
 8005eb0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005eb4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005eb8:	60c5      	str	r5, [r0, #12]
 8005eba:	4630      	mov	r0, r6
 8005ebc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005ec0:	f000 bbb8 	b.w	8006634 <__malloc_unlock>
 8005ec4:	2800      	cmp	r0, #0
 8005ec6:	d145      	bne.n	8005f54 <_free_r+0x1cc>
 8005ec8:	440a      	add	r2, r1
 8005eca:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005ece:	f042 0001 	orr.w	r0, r2, #1
 8005ed2:	60cb      	str	r3, [r1, #12]
 8005ed4:	6099      	str	r1, [r3, #8]
 8005ed6:	6068      	str	r0, [r5, #4]
 8005ed8:	50aa      	str	r2, [r5, r2]
 8005eda:	e7d7      	b.n	8005e8c <_free_r+0x104>
 8005edc:	2b14      	cmp	r3, #20
 8005ede:	d908      	bls.n	8005ef2 <_free_r+0x16a>
 8005ee0:	2b54      	cmp	r3, #84	; 0x54
 8005ee2:	d81e      	bhi.n	8005f22 <_free_r+0x19a>
 8005ee4:	0b0b      	lsrs	r3, r1, #12
 8005ee6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005eea:	00e4      	lsls	r4, r4, #3
 8005eec:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005ef0:	e789      	b.n	8005e06 <_free_r+0x7e>
 8005ef2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005ef6:	00e4      	lsls	r4, r4, #3
 8005ef8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005efc:	e783      	b.n	8005e06 <_free_r+0x7e>
 8005efe:	4618      	mov	r0, r3
 8005f00:	e78e      	b.n	8005e20 <_free_r+0x98>
 8005f02:	1093      	asrs	r3, r2, #2
 8005f04:	6879      	ldr	r1, [r7, #4]
 8005f06:	2201      	movs	r2, #1
 8005f08:	fa02 f303 	lsl.w	r3, r2, r3
 8005f0c:	430b      	orrs	r3, r1
 8005f0e:	607b      	str	r3, [r7, #4]
 8005f10:	4603      	mov	r3, r0
 8005f12:	e786      	b.n	8005e22 <_free_r+0x9a>
 8005f14:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005f18:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005f1c:	606a      	str	r2, [r5, #4]
 8005f1e:	5069      	str	r1, [r5, r1]
 8005f20:	e7b4      	b.n	8005e8c <_free_r+0x104>
 8005f22:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005f26:	d806      	bhi.n	8005f36 <_free_r+0x1ae>
 8005f28:	0bcb      	lsrs	r3, r1, #15
 8005f2a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005f2e:	00e4      	lsls	r4, r4, #3
 8005f30:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005f34:	e767      	b.n	8005e06 <_free_r+0x7e>
 8005f36:	f240 5254 	movw	r2, #1364	; 0x554
 8005f3a:	4293      	cmp	r3, r2
 8005f3c:	d806      	bhi.n	8005f4c <_free_r+0x1c4>
 8005f3e:	0c8b      	lsrs	r3, r1, #18
 8005f40:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005f44:	00e4      	lsls	r4, r4, #3
 8005f46:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005f4a:	e75c      	b.n	8005e06 <_free_r+0x7e>
 8005f4c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005f50:	227e      	movs	r2, #126	; 0x7e
 8005f52:	e758      	b.n	8005e06 <_free_r+0x7e>
 8005f54:	f041 0201 	orr.w	r2, r1, #1
 8005f58:	606a      	str	r2, [r5, #4]
 8005f5a:	6019      	str	r1, [r3, #0]
 8005f5c:	e796      	b.n	8005e8c <_free_r+0x104>
 8005f5e:	bf00      	nop
 8005f60:	2000044c 	.word	0x2000044c
 8005f64:	20000454 	.word	0x20000454
 8005f68:	20000858 	.word	0x20000858
 8005f6c:	20000bc8 	.word	0x20000bc8

08005f70 <_fwalk_reent>:
 8005f70:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005f74:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005f78:	d01f      	beq.n	8005fba <_fwalk_reent+0x4a>
 8005f7a:	4688      	mov	r8, r1
 8005f7c:	4606      	mov	r6, r0
 8005f7e:	f04f 0900 	mov.w	r9, #0
 8005f82:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005f86:	3d01      	subs	r5, #1
 8005f88:	d411      	bmi.n	8005fae <_fwalk_reent+0x3e>
 8005f8a:	89a3      	ldrh	r3, [r4, #12]
 8005f8c:	2b01      	cmp	r3, #1
 8005f8e:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005f92:	4621      	mov	r1, r4
 8005f94:	4630      	mov	r0, r6
 8005f96:	d906      	bls.n	8005fa6 <_fwalk_reent+0x36>
 8005f98:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005f9c:	3301      	adds	r3, #1
 8005f9e:	d002      	beq.n	8005fa6 <_fwalk_reent+0x36>
 8005fa0:	47c0      	blx	r8
 8005fa2:	ea49 0900 	orr.w	r9, r9, r0
 8005fa6:	1c6b      	adds	r3, r5, #1
 8005fa8:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005fac:	d1ed      	bne.n	8005f8a <_fwalk_reent+0x1a>
 8005fae:	683f      	ldr	r7, [r7, #0]
 8005fb0:	2f00      	cmp	r7, #0
 8005fb2:	d1e6      	bne.n	8005f82 <_fwalk_reent+0x12>
 8005fb4:	4648      	mov	r0, r9
 8005fb6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005fba:	46b9      	mov	r9, r7
 8005fbc:	4648      	mov	r0, r9
 8005fbe:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005fc2:	bf00      	nop

08005fc4 <_localeconv_r>:
 8005fc4:	4a04      	ldr	r2, [pc, #16]	; (8005fd8 <_localeconv_r+0x14>)
 8005fc6:	4b05      	ldr	r3, [pc, #20]	; (8005fdc <_localeconv_r+0x18>)
 8005fc8:	6812      	ldr	r2, [r2, #0]
 8005fca:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005fcc:	2800      	cmp	r0, #0
 8005fce:	bf08      	it	eq
 8005fd0:	4618      	moveq	r0, r3
 8005fd2:	30f0      	adds	r0, #240	; 0xf0
 8005fd4:	4770      	bx	lr
 8005fd6:	bf00      	nop
 8005fd8:	20000018 	.word	0x20000018
 8005fdc:	2000085c 	.word	0x2000085c

08005fe0 <__retarget_lock_init_recursive>:
 8005fe0:	4770      	bx	lr
 8005fe2:	bf00      	nop

08005fe4 <__retarget_lock_close_recursive>:
 8005fe4:	4770      	bx	lr
 8005fe6:	bf00      	nop

08005fe8 <__retarget_lock_acquire_recursive>:
 8005fe8:	4770      	bx	lr
 8005fea:	bf00      	nop

08005fec <__retarget_lock_release_recursive>:
 8005fec:	4770      	bx	lr
 8005fee:	bf00      	nop

08005ff0 <__swhatbuf_r>:
 8005ff0:	b570      	push	{r4, r5, r6, lr}
 8005ff2:	460c      	mov	r4, r1
 8005ff4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005ff8:	2900      	cmp	r1, #0
 8005ffa:	b096      	sub	sp, #88	; 0x58
 8005ffc:	4615      	mov	r5, r2
 8005ffe:	461e      	mov	r6, r3
 8006000:	da0f      	bge.n	8006022 <__swhatbuf_r+0x32>
 8006002:	89a2      	ldrh	r2, [r4, #12]
 8006004:	2300      	movs	r3, #0
 8006006:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800600a:	6033      	str	r3, [r6, #0]
 800600c:	d104      	bne.n	8006018 <__swhatbuf_r+0x28>
 800600e:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8006012:	602b      	str	r3, [r5, #0]
 8006014:	b016      	add	sp, #88	; 0x58
 8006016:	bd70      	pop	{r4, r5, r6, pc}
 8006018:	2240      	movs	r2, #64	; 0x40
 800601a:	4618      	mov	r0, r3
 800601c:	602a      	str	r2, [r5, #0]
 800601e:	b016      	add	sp, #88	; 0x58
 8006020:	bd70      	pop	{r4, r5, r6, pc}
 8006022:	466a      	mov	r2, sp
 8006024:	f001 f8be 	bl	80071a4 <_fstat_r>
 8006028:	2800      	cmp	r0, #0
 800602a:	dbea      	blt.n	8006002 <__swhatbuf_r+0x12>
 800602c:	9b01      	ldr	r3, [sp, #4]
 800602e:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8006032:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8006036:	fab3 f383 	clz	r3, r3
 800603a:	095b      	lsrs	r3, r3, #5
 800603c:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8006040:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8006044:	6033      	str	r3, [r6, #0]
 8006046:	602a      	str	r2, [r5, #0]
 8006048:	b016      	add	sp, #88	; 0x58
 800604a:	bd70      	pop	{r4, r5, r6, pc}

0800604c <__smakebuf_r>:
 800604c:	898a      	ldrh	r2, [r1, #12]
 800604e:	0792      	lsls	r2, r2, #30
 8006050:	460b      	mov	r3, r1
 8006052:	d506      	bpl.n	8006062 <__smakebuf_r+0x16>
 8006054:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8006058:	2101      	movs	r1, #1
 800605a:	601a      	str	r2, [r3, #0]
 800605c:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8006060:	4770      	bx	lr
 8006062:	b570      	push	{r4, r5, r6, lr}
 8006064:	b082      	sub	sp, #8
 8006066:	ab01      	add	r3, sp, #4
 8006068:	466a      	mov	r2, sp
 800606a:	460c      	mov	r4, r1
 800606c:	4605      	mov	r5, r0
 800606e:	f7ff ffbf 	bl	8005ff0 <__swhatbuf_r>
 8006072:	9900      	ldr	r1, [sp, #0]
 8006074:	4606      	mov	r6, r0
 8006076:	4628      	mov	r0, r5
 8006078:	f000 f832 	bl	80060e0 <_malloc_r>
 800607c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006080:	b1d8      	cbz	r0, 80060ba <__smakebuf_r+0x6e>
 8006082:	4916      	ldr	r1, [pc, #88]	; (80060dc <__smakebuf_r+0x90>)
 8006084:	63e9      	str	r1, [r5, #60]	; 0x3c
 8006086:	9a01      	ldr	r2, [sp, #4]
 8006088:	9900      	ldr	r1, [sp, #0]
 800608a:	6020      	str	r0, [r4, #0]
 800608c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8006090:	81a3      	strh	r3, [r4, #12]
 8006092:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8006096:	b91a      	cbnz	r2, 80060a0 <__smakebuf_r+0x54>
 8006098:	4333      	orrs	r3, r6
 800609a:	81a3      	strh	r3, [r4, #12]
 800609c:	b002      	add	sp, #8
 800609e:	bd70      	pop	{r4, r5, r6, pc}
 80060a0:	4628      	mov	r0, r5
 80060a2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80060a6:	f001 fa0f 	bl	80074c8 <_isatty_r>
 80060aa:	b1a0      	cbz	r0, 80060d6 <__smakebuf_r+0x8a>
 80060ac:	89a3      	ldrh	r3, [r4, #12]
 80060ae:	f023 0303 	bic.w	r3, r3, #3
 80060b2:	f043 0301 	orr.w	r3, r3, #1
 80060b6:	b21b      	sxth	r3, r3
 80060b8:	e7ee      	b.n	8006098 <__smakebuf_r+0x4c>
 80060ba:	059a      	lsls	r2, r3, #22
 80060bc:	d4ee      	bmi.n	800609c <__smakebuf_r+0x50>
 80060be:	f023 0303 	bic.w	r3, r3, #3
 80060c2:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80060c6:	f043 0302 	orr.w	r3, r3, #2
 80060ca:	2101      	movs	r1, #1
 80060cc:	81a3      	strh	r3, [r4, #12]
 80060ce:	6022      	str	r2, [r4, #0]
 80060d0:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80060d4:	e7e2      	b.n	800609c <__smakebuf_r+0x50>
 80060d6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80060da:	e7dd      	b.n	8006098 <__smakebuf_r+0x4c>
 80060dc:	08005c39 	.word	0x08005c39

080060e0 <_malloc_r>:
 80060e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80060e4:	f101 050b 	add.w	r5, r1, #11
 80060e8:	2d16      	cmp	r5, #22
 80060ea:	b083      	sub	sp, #12
 80060ec:	4606      	mov	r6, r0
 80060ee:	d823      	bhi.n	8006138 <_malloc_r+0x58>
 80060f0:	2910      	cmp	r1, #16
 80060f2:	f200 80b9 	bhi.w	8006268 <_malloc_r+0x188>
 80060f6:	f000 fa97 	bl	8006628 <__malloc_lock>
 80060fa:	2510      	movs	r5, #16
 80060fc:	2318      	movs	r3, #24
 80060fe:	2002      	movs	r0, #2
 8006100:	4fc5      	ldr	r7, [pc, #788]	; (8006418 <_malloc_r+0x338>)
 8006102:	443b      	add	r3, r7
 8006104:	f1a3 0208 	sub.w	r2, r3, #8
 8006108:	685c      	ldr	r4, [r3, #4]
 800610a:	4294      	cmp	r4, r2
 800610c:	f000 8166 	beq.w	80063dc <_malloc_r+0x2fc>
 8006110:	6863      	ldr	r3, [r4, #4]
 8006112:	f023 0303 	bic.w	r3, r3, #3
 8006116:	4423      	add	r3, r4
 8006118:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 800611c:	685a      	ldr	r2, [r3, #4]
 800611e:	60e9      	str	r1, [r5, #12]
 8006120:	f042 0201 	orr.w	r2, r2, #1
 8006124:	608d      	str	r5, [r1, #8]
 8006126:	4630      	mov	r0, r6
 8006128:	605a      	str	r2, [r3, #4]
 800612a:	f000 fa83 	bl	8006634 <__malloc_unlock>
 800612e:	3408      	adds	r4, #8
 8006130:	4620      	mov	r0, r4
 8006132:	b003      	add	sp, #12
 8006134:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006138:	f035 0507 	bics.w	r5, r5, #7
 800613c:	f100 8094 	bmi.w	8006268 <_malloc_r+0x188>
 8006140:	42a9      	cmp	r1, r5
 8006142:	f200 8091 	bhi.w	8006268 <_malloc_r+0x188>
 8006146:	f000 fa6f 	bl	8006628 <__malloc_lock>
 800614a:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800614e:	f0c0 8183 	bcc.w	8006458 <_malloc_r+0x378>
 8006152:	0a6b      	lsrs	r3, r5, #9
 8006154:	f000 808f 	beq.w	8006276 <_malloc_r+0x196>
 8006158:	2b04      	cmp	r3, #4
 800615a:	f200 8146 	bhi.w	80063ea <_malloc_r+0x30a>
 800615e:	09ab      	lsrs	r3, r5, #6
 8006160:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8006164:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8006168:	00c3      	lsls	r3, r0, #3
 800616a:	4fab      	ldr	r7, [pc, #684]	; (8006418 <_malloc_r+0x338>)
 800616c:	443b      	add	r3, r7
 800616e:	f1a3 0108 	sub.w	r1, r3, #8
 8006172:	685c      	ldr	r4, [r3, #4]
 8006174:	42a1      	cmp	r1, r4
 8006176:	d106      	bne.n	8006186 <_malloc_r+0xa6>
 8006178:	e00c      	b.n	8006194 <_malloc_r+0xb4>
 800617a:	2a00      	cmp	r2, #0
 800617c:	f280 811d 	bge.w	80063ba <_malloc_r+0x2da>
 8006180:	68e4      	ldr	r4, [r4, #12]
 8006182:	42a1      	cmp	r1, r4
 8006184:	d006      	beq.n	8006194 <_malloc_r+0xb4>
 8006186:	6863      	ldr	r3, [r4, #4]
 8006188:	f023 0303 	bic.w	r3, r3, #3
 800618c:	1b5a      	subs	r2, r3, r5
 800618e:	2a0f      	cmp	r2, #15
 8006190:	ddf3      	ble.n	800617a <_malloc_r+0x9a>
 8006192:	4660      	mov	r0, ip
 8006194:	693c      	ldr	r4, [r7, #16]
 8006196:	f8df c294 	ldr.w	ip, [pc, #660]	; 800642c <_malloc_r+0x34c>
 800619a:	4564      	cmp	r4, ip
 800619c:	d071      	beq.n	8006282 <_malloc_r+0x1a2>
 800619e:	6863      	ldr	r3, [r4, #4]
 80061a0:	f023 0303 	bic.w	r3, r3, #3
 80061a4:	1b5a      	subs	r2, r3, r5
 80061a6:	2a0f      	cmp	r2, #15
 80061a8:	f300 8144 	bgt.w	8006434 <_malloc_r+0x354>
 80061ac:	2a00      	cmp	r2, #0
 80061ae:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80061b2:	f280 8126 	bge.w	8006402 <_malloc_r+0x322>
 80061b6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80061ba:	f080 8169 	bcs.w	8006490 <_malloc_r+0x3b0>
 80061be:	08db      	lsrs	r3, r3, #3
 80061c0:	1c59      	adds	r1, r3, #1
 80061c2:	687a      	ldr	r2, [r7, #4]
 80061c4:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80061c8:	f8c4 8008 	str.w	r8, [r4, #8]
 80061cc:	f04f 0e01 	mov.w	lr, #1
 80061d0:	109b      	asrs	r3, r3, #2
 80061d2:	fa0e f303 	lsl.w	r3, lr, r3
 80061d6:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80061da:	4313      	orrs	r3, r2
 80061dc:	f1ae 0208 	sub.w	r2, lr, #8
 80061e0:	60e2      	str	r2, [r4, #12]
 80061e2:	607b      	str	r3, [r7, #4]
 80061e4:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80061e8:	f8c8 400c 	str.w	r4, [r8, #12]
 80061ec:	1082      	asrs	r2, r0, #2
 80061ee:	2401      	movs	r4, #1
 80061f0:	4094      	lsls	r4, r2
 80061f2:	429c      	cmp	r4, r3
 80061f4:	d84b      	bhi.n	800628e <_malloc_r+0x1ae>
 80061f6:	421c      	tst	r4, r3
 80061f8:	d106      	bne.n	8006208 <_malloc_r+0x128>
 80061fa:	f020 0003 	bic.w	r0, r0, #3
 80061fe:	0064      	lsls	r4, r4, #1
 8006200:	421c      	tst	r4, r3
 8006202:	f100 0004 	add.w	r0, r0, #4
 8006206:	d0fa      	beq.n	80061fe <_malloc_r+0x11e>
 8006208:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 800620c:	46ce      	mov	lr, r9
 800620e:	4680      	mov	r8, r0
 8006210:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006214:	459e      	cmp	lr, r3
 8006216:	d107      	bne.n	8006228 <_malloc_r+0x148>
 8006218:	e122      	b.n	8006460 <_malloc_r+0x380>
 800621a:	2a00      	cmp	r2, #0
 800621c:	f280 8129 	bge.w	8006472 <_malloc_r+0x392>
 8006220:	68db      	ldr	r3, [r3, #12]
 8006222:	459e      	cmp	lr, r3
 8006224:	f000 811c 	beq.w	8006460 <_malloc_r+0x380>
 8006228:	6859      	ldr	r1, [r3, #4]
 800622a:	f021 0103 	bic.w	r1, r1, #3
 800622e:	1b4a      	subs	r2, r1, r5
 8006230:	2a0f      	cmp	r2, #15
 8006232:	ddf2      	ble.n	800621a <_malloc_r+0x13a>
 8006234:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8006238:	195c      	adds	r4, r3, r5
 800623a:	f045 0501 	orr.w	r5, r5, #1
 800623e:	605d      	str	r5, [r3, #4]
 8006240:	f042 0501 	orr.w	r5, r2, #1
 8006244:	f8c8 e00c 	str.w	lr, [r8, #12]
 8006248:	4630      	mov	r0, r6
 800624a:	f8ce 8008 	str.w	r8, [lr, #8]
 800624e:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8006252:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8006256:	6065      	str	r5, [r4, #4]
 8006258:	505a      	str	r2, [r3, r1]
 800625a:	9301      	str	r3, [sp, #4]
 800625c:	f000 f9ea 	bl	8006634 <__malloc_unlock>
 8006260:	9b01      	ldr	r3, [sp, #4]
 8006262:	f103 0408 	add.w	r4, r3, #8
 8006266:	e763      	b.n	8006130 <_malloc_r+0x50>
 8006268:	2400      	movs	r4, #0
 800626a:	230c      	movs	r3, #12
 800626c:	4620      	mov	r0, r4
 800626e:	6033      	str	r3, [r6, #0]
 8006270:	b003      	add	sp, #12
 8006272:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006276:	f44f 7300 	mov.w	r3, #512	; 0x200
 800627a:	2040      	movs	r0, #64	; 0x40
 800627c:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8006280:	e773      	b.n	800616a <_malloc_r+0x8a>
 8006282:	687b      	ldr	r3, [r7, #4]
 8006284:	1082      	asrs	r2, r0, #2
 8006286:	2401      	movs	r4, #1
 8006288:	4094      	lsls	r4, r2
 800628a:	429c      	cmp	r4, r3
 800628c:	d9b3      	bls.n	80061f6 <_malloc_r+0x116>
 800628e:	68bc      	ldr	r4, [r7, #8]
 8006290:	6863      	ldr	r3, [r4, #4]
 8006292:	f023 0903 	bic.w	r9, r3, #3
 8006296:	45a9      	cmp	r9, r5
 8006298:	d303      	bcc.n	80062a2 <_malloc_r+0x1c2>
 800629a:	eba9 0305 	sub.w	r3, r9, r5
 800629e:	2b0f      	cmp	r3, #15
 80062a0:	dc7b      	bgt.n	800639a <_malloc_r+0x2ba>
 80062a2:	4b5e      	ldr	r3, [pc, #376]	; (800641c <_malloc_r+0x33c>)
 80062a4:	f8df a188 	ldr.w	sl, [pc, #392]	; 8006430 <_malloc_r+0x350>
 80062a8:	681a      	ldr	r2, [r3, #0]
 80062aa:	f8da 3000 	ldr.w	r3, [sl]
 80062ae:	3301      	adds	r3, #1
 80062b0:	eb05 0802 	add.w	r8, r5, r2
 80062b4:	f000 8148 	beq.w	8006548 <_malloc_r+0x468>
 80062b8:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 80062bc:	f108 080f 	add.w	r8, r8, #15
 80062c0:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 80062c4:	f028 080f 	bic.w	r8, r8, #15
 80062c8:	4641      	mov	r1, r8
 80062ca:	4630      	mov	r0, r6
 80062cc:	f000 fcf6 	bl	8006cbc <_sbrk_r>
 80062d0:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80062d4:	4683      	mov	fp, r0
 80062d6:	f000 8104 	beq.w	80064e2 <_malloc_r+0x402>
 80062da:	eb04 0009 	add.w	r0, r4, r9
 80062de:	4558      	cmp	r0, fp
 80062e0:	f200 80fd 	bhi.w	80064de <_malloc_r+0x3fe>
 80062e4:	4a4e      	ldr	r2, [pc, #312]	; (8006420 <_malloc_r+0x340>)
 80062e6:	6813      	ldr	r3, [r2, #0]
 80062e8:	4443      	add	r3, r8
 80062ea:	6013      	str	r3, [r2, #0]
 80062ec:	f000 814d 	beq.w	800658a <_malloc_r+0x4aa>
 80062f0:	f8da 1000 	ldr.w	r1, [sl]
 80062f4:	3101      	adds	r1, #1
 80062f6:	bf1b      	ittet	ne
 80062f8:	ebab 0000 	subne.w	r0, fp, r0
 80062fc:	181b      	addne	r3, r3, r0
 80062fe:	f8ca b000 	streq.w	fp, [sl]
 8006302:	6013      	strne	r3, [r2, #0]
 8006304:	f01b 0307 	ands.w	r3, fp, #7
 8006308:	f000 8134 	beq.w	8006574 <_malloc_r+0x494>
 800630c:	f1c3 0108 	rsb	r1, r3, #8
 8006310:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006314:	448b      	add	fp, r1
 8006316:	3308      	adds	r3, #8
 8006318:	44d8      	add	r8, fp
 800631a:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800631e:	eba3 0808 	sub.w	r8, r3, r8
 8006322:	4641      	mov	r1, r8
 8006324:	4630      	mov	r0, r6
 8006326:	9201      	str	r2, [sp, #4]
 8006328:	f000 fcc8 	bl	8006cbc <_sbrk_r>
 800632c:	1c43      	adds	r3, r0, #1
 800632e:	9a01      	ldr	r2, [sp, #4]
 8006330:	f000 8146 	beq.w	80065c0 <_malloc_r+0x4e0>
 8006334:	eba0 010b 	sub.w	r1, r0, fp
 8006338:	4441      	add	r1, r8
 800633a:	f041 0101 	orr.w	r1, r1, #1
 800633e:	6813      	ldr	r3, [r2, #0]
 8006340:	f8c7 b008 	str.w	fp, [r7, #8]
 8006344:	4443      	add	r3, r8
 8006346:	42bc      	cmp	r4, r7
 8006348:	f8cb 1004 	str.w	r1, [fp, #4]
 800634c:	6013      	str	r3, [r2, #0]
 800634e:	d015      	beq.n	800637c <_malloc_r+0x29c>
 8006350:	f1b9 0f0f 	cmp.w	r9, #15
 8006354:	f240 8130 	bls.w	80065b8 <_malloc_r+0x4d8>
 8006358:	6860      	ldr	r0, [r4, #4]
 800635a:	f1a9 010c 	sub.w	r1, r9, #12
 800635e:	f021 0107 	bic.w	r1, r1, #7
 8006362:	f000 0001 	and.w	r0, r0, #1
 8006366:	eb04 0c01 	add.w	ip, r4, r1
 800636a:	4308      	orrs	r0, r1
 800636c:	f04f 0e05 	mov.w	lr, #5
 8006370:	290f      	cmp	r1, #15
 8006372:	6060      	str	r0, [r4, #4]
 8006374:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8006378:	f200 813a 	bhi.w	80065f0 <_malloc_r+0x510>
 800637c:	4a29      	ldr	r2, [pc, #164]	; (8006424 <_malloc_r+0x344>)
 800637e:	482a      	ldr	r0, [pc, #168]	; (8006428 <_malloc_r+0x348>)
 8006380:	6811      	ldr	r1, [r2, #0]
 8006382:	68bc      	ldr	r4, [r7, #8]
 8006384:	428b      	cmp	r3, r1
 8006386:	6801      	ldr	r1, [r0, #0]
 8006388:	bf88      	it	hi
 800638a:	6013      	strhi	r3, [r2, #0]
 800638c:	6862      	ldr	r2, [r4, #4]
 800638e:	428b      	cmp	r3, r1
 8006390:	f022 0203 	bic.w	r2, r2, #3
 8006394:	bf88      	it	hi
 8006396:	6003      	strhi	r3, [r0, #0]
 8006398:	e0a7      	b.n	80064ea <_malloc_r+0x40a>
 800639a:	1962      	adds	r2, r4, r5
 800639c:	f043 0301 	orr.w	r3, r3, #1
 80063a0:	f045 0501 	orr.w	r5, r5, #1
 80063a4:	6065      	str	r5, [r4, #4]
 80063a6:	4630      	mov	r0, r6
 80063a8:	60ba      	str	r2, [r7, #8]
 80063aa:	6053      	str	r3, [r2, #4]
 80063ac:	f000 f942 	bl	8006634 <__malloc_unlock>
 80063b0:	3408      	adds	r4, #8
 80063b2:	4620      	mov	r0, r4
 80063b4:	b003      	add	sp, #12
 80063b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80063ba:	4423      	add	r3, r4
 80063bc:	68e1      	ldr	r1, [r4, #12]
 80063be:	685a      	ldr	r2, [r3, #4]
 80063c0:	68a5      	ldr	r5, [r4, #8]
 80063c2:	f042 0201 	orr.w	r2, r2, #1
 80063c6:	60e9      	str	r1, [r5, #12]
 80063c8:	4630      	mov	r0, r6
 80063ca:	608d      	str	r5, [r1, #8]
 80063cc:	605a      	str	r2, [r3, #4]
 80063ce:	f000 f931 	bl	8006634 <__malloc_unlock>
 80063d2:	3408      	adds	r4, #8
 80063d4:	4620      	mov	r0, r4
 80063d6:	b003      	add	sp, #12
 80063d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80063dc:	68dc      	ldr	r4, [r3, #12]
 80063de:	42a3      	cmp	r3, r4
 80063e0:	bf08      	it	eq
 80063e2:	3002      	addeq	r0, #2
 80063e4:	f43f aed6 	beq.w	8006194 <_malloc_r+0xb4>
 80063e8:	e692      	b.n	8006110 <_malloc_r+0x30>
 80063ea:	2b14      	cmp	r3, #20
 80063ec:	d971      	bls.n	80064d2 <_malloc_r+0x3f2>
 80063ee:	2b54      	cmp	r3, #84	; 0x54
 80063f0:	f200 80ad 	bhi.w	800654e <_malloc_r+0x46e>
 80063f4:	0b2b      	lsrs	r3, r5, #12
 80063f6:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80063fa:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80063fe:	00c3      	lsls	r3, r0, #3
 8006400:	e6b3      	b.n	800616a <_malloc_r+0x8a>
 8006402:	4423      	add	r3, r4
 8006404:	4630      	mov	r0, r6
 8006406:	685a      	ldr	r2, [r3, #4]
 8006408:	f042 0201 	orr.w	r2, r2, #1
 800640c:	605a      	str	r2, [r3, #4]
 800640e:	3408      	adds	r4, #8
 8006410:	f000 f910 	bl	8006634 <__malloc_unlock>
 8006414:	e68c      	b.n	8006130 <_malloc_r+0x50>
 8006416:	bf00      	nop
 8006418:	2000044c 	.word	0x2000044c
 800641c:	20000bc8 	.word	0x20000bc8
 8006420:	20000b98 	.word	0x20000b98
 8006424:	20000bc0 	.word	0x20000bc0
 8006428:	20000bc4 	.word	0x20000bc4
 800642c:	20000454 	.word	0x20000454
 8006430:	20000854 	.word	0x20000854
 8006434:	1961      	adds	r1, r4, r5
 8006436:	f045 0e01 	orr.w	lr, r5, #1
 800643a:	f042 0501 	orr.w	r5, r2, #1
 800643e:	f8c4 e004 	str.w	lr, [r4, #4]
 8006442:	4630      	mov	r0, r6
 8006444:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006448:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 800644c:	604d      	str	r5, [r1, #4]
 800644e:	50e2      	str	r2, [r4, r3]
 8006450:	f000 f8f0 	bl	8006634 <__malloc_unlock>
 8006454:	3408      	adds	r4, #8
 8006456:	e66b      	b.n	8006130 <_malloc_r+0x50>
 8006458:	08e8      	lsrs	r0, r5, #3
 800645a:	f105 0308 	add.w	r3, r5, #8
 800645e:	e64f      	b.n	8006100 <_malloc_r+0x20>
 8006460:	f108 0801 	add.w	r8, r8, #1
 8006464:	f018 0f03 	tst.w	r8, #3
 8006468:	f10e 0e08 	add.w	lr, lr, #8
 800646c:	f47f aed0 	bne.w	8006210 <_malloc_r+0x130>
 8006470:	e052      	b.n	8006518 <_malloc_r+0x438>
 8006472:	4419      	add	r1, r3
 8006474:	461c      	mov	r4, r3
 8006476:	684a      	ldr	r2, [r1, #4]
 8006478:	68db      	ldr	r3, [r3, #12]
 800647a:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800647e:	f042 0201 	orr.w	r2, r2, #1
 8006482:	604a      	str	r2, [r1, #4]
 8006484:	4630      	mov	r0, r6
 8006486:	60eb      	str	r3, [r5, #12]
 8006488:	609d      	str	r5, [r3, #8]
 800648a:	f000 f8d3 	bl	8006634 <__malloc_unlock>
 800648e:	e64f      	b.n	8006130 <_malloc_r+0x50>
 8006490:	0a5a      	lsrs	r2, r3, #9
 8006492:	2a04      	cmp	r2, #4
 8006494:	d935      	bls.n	8006502 <_malloc_r+0x422>
 8006496:	2a14      	cmp	r2, #20
 8006498:	d86f      	bhi.n	800657a <_malloc_r+0x49a>
 800649a:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800649e:	00c9      	lsls	r1, r1, #3
 80064a0:	325b      	adds	r2, #91	; 0x5b
 80064a2:	eb07 0e01 	add.w	lr, r7, r1
 80064a6:	5879      	ldr	r1, [r7, r1]
 80064a8:	f1ae 0e08 	sub.w	lr, lr, #8
 80064ac:	458e      	cmp	lr, r1
 80064ae:	d058      	beq.n	8006562 <_malloc_r+0x482>
 80064b0:	684a      	ldr	r2, [r1, #4]
 80064b2:	f022 0203 	bic.w	r2, r2, #3
 80064b6:	429a      	cmp	r2, r3
 80064b8:	d902      	bls.n	80064c0 <_malloc_r+0x3e0>
 80064ba:	6889      	ldr	r1, [r1, #8]
 80064bc:	458e      	cmp	lr, r1
 80064be:	d1f7      	bne.n	80064b0 <_malloc_r+0x3d0>
 80064c0:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 80064c4:	687b      	ldr	r3, [r7, #4]
 80064c6:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 80064ca:	f8ce 4008 	str.w	r4, [lr, #8]
 80064ce:	60cc      	str	r4, [r1, #12]
 80064d0:	e68c      	b.n	80061ec <_malloc_r+0x10c>
 80064d2:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80064d6:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80064da:	00c3      	lsls	r3, r0, #3
 80064dc:	e645      	b.n	800616a <_malloc_r+0x8a>
 80064de:	42bc      	cmp	r4, r7
 80064e0:	d072      	beq.n	80065c8 <_malloc_r+0x4e8>
 80064e2:	68bc      	ldr	r4, [r7, #8]
 80064e4:	6862      	ldr	r2, [r4, #4]
 80064e6:	f022 0203 	bic.w	r2, r2, #3
 80064ea:	4295      	cmp	r5, r2
 80064ec:	eba2 0305 	sub.w	r3, r2, r5
 80064f0:	d802      	bhi.n	80064f8 <_malloc_r+0x418>
 80064f2:	2b0f      	cmp	r3, #15
 80064f4:	f73f af51 	bgt.w	800639a <_malloc_r+0x2ba>
 80064f8:	4630      	mov	r0, r6
 80064fa:	f000 f89b 	bl	8006634 <__malloc_unlock>
 80064fe:	2400      	movs	r4, #0
 8006500:	e616      	b.n	8006130 <_malloc_r+0x50>
 8006502:	099a      	lsrs	r2, r3, #6
 8006504:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006508:	00c9      	lsls	r1, r1, #3
 800650a:	3238      	adds	r2, #56	; 0x38
 800650c:	e7c9      	b.n	80064a2 <_malloc_r+0x3c2>
 800650e:	f8d9 9000 	ldr.w	r9, [r9]
 8006512:	4599      	cmp	r9, r3
 8006514:	f040 8083 	bne.w	800661e <_malloc_r+0x53e>
 8006518:	f010 0f03 	tst.w	r0, #3
 800651c:	f1a9 0308 	sub.w	r3, r9, #8
 8006520:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006524:	d1f3      	bne.n	800650e <_malloc_r+0x42e>
 8006526:	687b      	ldr	r3, [r7, #4]
 8006528:	ea23 0304 	bic.w	r3, r3, r4
 800652c:	607b      	str	r3, [r7, #4]
 800652e:	0064      	lsls	r4, r4, #1
 8006530:	429c      	cmp	r4, r3
 8006532:	f63f aeac 	bhi.w	800628e <_malloc_r+0x1ae>
 8006536:	b91c      	cbnz	r4, 8006540 <_malloc_r+0x460>
 8006538:	e6a9      	b.n	800628e <_malloc_r+0x1ae>
 800653a:	0064      	lsls	r4, r4, #1
 800653c:	f108 0804 	add.w	r8, r8, #4
 8006540:	421c      	tst	r4, r3
 8006542:	d0fa      	beq.n	800653a <_malloc_r+0x45a>
 8006544:	4640      	mov	r0, r8
 8006546:	e65f      	b.n	8006208 <_malloc_r+0x128>
 8006548:	f108 0810 	add.w	r8, r8, #16
 800654c:	e6bc      	b.n	80062c8 <_malloc_r+0x1e8>
 800654e:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8006552:	d826      	bhi.n	80065a2 <_malloc_r+0x4c2>
 8006554:	0beb      	lsrs	r3, r5, #15
 8006556:	f103 0078 	add.w	r0, r3, #120	; 0x78
 800655a:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800655e:	00c3      	lsls	r3, r0, #3
 8006560:	e603      	b.n	800616a <_malloc_r+0x8a>
 8006562:	687b      	ldr	r3, [r7, #4]
 8006564:	1092      	asrs	r2, r2, #2
 8006566:	f04f 0801 	mov.w	r8, #1
 800656a:	fa08 f202 	lsl.w	r2, r8, r2
 800656e:	4313      	orrs	r3, r2
 8006570:	607b      	str	r3, [r7, #4]
 8006572:	e7a8      	b.n	80064c6 <_malloc_r+0x3e6>
 8006574:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006578:	e6ce      	b.n	8006318 <_malloc_r+0x238>
 800657a:	2a54      	cmp	r2, #84	; 0x54
 800657c:	d829      	bhi.n	80065d2 <_malloc_r+0x4f2>
 800657e:	0b1a      	lsrs	r2, r3, #12
 8006580:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006584:	00c9      	lsls	r1, r1, #3
 8006586:	326e      	adds	r2, #110	; 0x6e
 8006588:	e78b      	b.n	80064a2 <_malloc_r+0x3c2>
 800658a:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800658e:	2900      	cmp	r1, #0
 8006590:	f47f aeae 	bne.w	80062f0 <_malloc_r+0x210>
 8006594:	eb09 0208 	add.w	r2, r9, r8
 8006598:	68b9      	ldr	r1, [r7, #8]
 800659a:	f042 0201 	orr.w	r2, r2, #1
 800659e:	604a      	str	r2, [r1, #4]
 80065a0:	e6ec      	b.n	800637c <_malloc_r+0x29c>
 80065a2:	f240 5254 	movw	r2, #1364	; 0x554
 80065a6:	4293      	cmp	r3, r2
 80065a8:	d81c      	bhi.n	80065e4 <_malloc_r+0x504>
 80065aa:	0cab      	lsrs	r3, r5, #18
 80065ac:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80065b0:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80065b4:	00c3      	lsls	r3, r0, #3
 80065b6:	e5d8      	b.n	800616a <_malloc_r+0x8a>
 80065b8:	2301      	movs	r3, #1
 80065ba:	f8cb 3004 	str.w	r3, [fp, #4]
 80065be:	e79b      	b.n	80064f8 <_malloc_r+0x418>
 80065c0:	2101      	movs	r1, #1
 80065c2:	f04f 0800 	mov.w	r8, #0
 80065c6:	e6ba      	b.n	800633e <_malloc_r+0x25e>
 80065c8:	4a16      	ldr	r2, [pc, #88]	; (8006624 <_malloc_r+0x544>)
 80065ca:	6813      	ldr	r3, [r2, #0]
 80065cc:	4443      	add	r3, r8
 80065ce:	6013      	str	r3, [r2, #0]
 80065d0:	e68e      	b.n	80062f0 <_malloc_r+0x210>
 80065d2:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80065d6:	d814      	bhi.n	8006602 <_malloc_r+0x522>
 80065d8:	0bda      	lsrs	r2, r3, #15
 80065da:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80065de:	00c9      	lsls	r1, r1, #3
 80065e0:	3277      	adds	r2, #119	; 0x77
 80065e2:	e75e      	b.n	80064a2 <_malloc_r+0x3c2>
 80065e4:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80065e8:	207f      	movs	r0, #127	; 0x7f
 80065ea:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80065ee:	e5bc      	b.n	800616a <_malloc_r+0x8a>
 80065f0:	f104 0108 	add.w	r1, r4, #8
 80065f4:	4630      	mov	r0, r6
 80065f6:	9201      	str	r2, [sp, #4]
 80065f8:	f7ff fbc6 	bl	8005d88 <_free_r>
 80065fc:	9a01      	ldr	r2, [sp, #4]
 80065fe:	6813      	ldr	r3, [r2, #0]
 8006600:	e6bc      	b.n	800637c <_malloc_r+0x29c>
 8006602:	f240 5154 	movw	r1, #1364	; 0x554
 8006606:	428a      	cmp	r2, r1
 8006608:	d805      	bhi.n	8006616 <_malloc_r+0x536>
 800660a:	0c9a      	lsrs	r2, r3, #18
 800660c:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8006610:	00c9      	lsls	r1, r1, #3
 8006612:	327c      	adds	r2, #124	; 0x7c
 8006614:	e745      	b.n	80064a2 <_malloc_r+0x3c2>
 8006616:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 800661a:	227e      	movs	r2, #126	; 0x7e
 800661c:	e741      	b.n	80064a2 <_malloc_r+0x3c2>
 800661e:	687b      	ldr	r3, [r7, #4]
 8006620:	e785      	b.n	800652e <_malloc_r+0x44e>
 8006622:	bf00      	nop
 8006624:	20000b98 	.word	0x20000b98

08006628 <__malloc_lock>:
 8006628:	4801      	ldr	r0, [pc, #4]	; (8006630 <__malloc_lock+0x8>)
 800662a:	f7ff bcdd 	b.w	8005fe8 <__retarget_lock_acquire_recursive>
 800662e:	bf00      	nop
 8006630:	20000c24 	.word	0x20000c24

08006634 <__malloc_unlock>:
 8006634:	4801      	ldr	r0, [pc, #4]	; (800663c <__malloc_unlock+0x8>)
 8006636:	f7ff bcd9 	b.w	8005fec <__retarget_lock_release_recursive>
 800663a:	bf00      	nop
 800663c:	20000c24 	.word	0x20000c24

08006640 <_Balloc>:
 8006640:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006642:	b570      	push	{r4, r5, r6, lr}
 8006644:	4605      	mov	r5, r0
 8006646:	460c      	mov	r4, r1
 8006648:	b14b      	cbz	r3, 800665e <_Balloc+0x1e>
 800664a:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800664e:	b180      	cbz	r0, 8006672 <_Balloc+0x32>
 8006650:	6802      	ldr	r2, [r0, #0]
 8006652:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006656:	2300      	movs	r3, #0
 8006658:	e9c0 3303 	strd	r3, r3, [r0, #12]
 800665c:	bd70      	pop	{r4, r5, r6, pc}
 800665e:	2221      	movs	r2, #33	; 0x21
 8006660:	2104      	movs	r1, #4
 8006662:	f000 fc6f 	bl	8006f44 <_calloc_r>
 8006666:	4603      	mov	r3, r0
 8006668:	64e8      	str	r0, [r5, #76]	; 0x4c
 800666a:	2800      	cmp	r0, #0
 800666c:	d1ed      	bne.n	800664a <_Balloc+0xa>
 800666e:	2000      	movs	r0, #0
 8006670:	bd70      	pop	{r4, r5, r6, pc}
 8006672:	2101      	movs	r1, #1
 8006674:	fa01 f604 	lsl.w	r6, r1, r4
 8006678:	1d72      	adds	r2, r6, #5
 800667a:	4628      	mov	r0, r5
 800667c:	0092      	lsls	r2, r2, #2
 800667e:	f000 fc61 	bl	8006f44 <_calloc_r>
 8006682:	2800      	cmp	r0, #0
 8006684:	d0f3      	beq.n	800666e <_Balloc+0x2e>
 8006686:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800668a:	e7e4      	b.n	8006656 <_Balloc+0x16>

0800668c <_Bfree>:
 800668c:	b131      	cbz	r1, 800669c <_Bfree+0x10>
 800668e:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006690:	684a      	ldr	r2, [r1, #4]
 8006692:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8006696:	6008      	str	r0, [r1, #0]
 8006698:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800669c:	4770      	bx	lr
 800669e:	bf00      	nop

080066a0 <__multadd>:
 80066a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80066a2:	690c      	ldr	r4, [r1, #16]
 80066a4:	b083      	sub	sp, #12
 80066a6:	460d      	mov	r5, r1
 80066a8:	4606      	mov	r6, r0
 80066aa:	f101 0c14 	add.w	ip, r1, #20
 80066ae:	2700      	movs	r7, #0
 80066b0:	f8dc 0000 	ldr.w	r0, [ip]
 80066b4:	b281      	uxth	r1, r0
 80066b6:	fb02 3301 	mla	r3, r2, r1, r3
 80066ba:	0c01      	lsrs	r1, r0, #16
 80066bc:	0c18      	lsrs	r0, r3, #16
 80066be:	fb02 0101 	mla	r1, r2, r1, r0
 80066c2:	b29b      	uxth	r3, r3
 80066c4:	3701      	adds	r7, #1
 80066c6:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80066ca:	42bc      	cmp	r4, r7
 80066cc:	f84c 3b04 	str.w	r3, [ip], #4
 80066d0:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80066d4:	dcec      	bgt.n	80066b0 <__multadd+0x10>
 80066d6:	b13b      	cbz	r3, 80066e8 <__multadd+0x48>
 80066d8:	68aa      	ldr	r2, [r5, #8]
 80066da:	42a2      	cmp	r2, r4
 80066dc:	dd07      	ble.n	80066ee <__multadd+0x4e>
 80066de:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80066e2:	3401      	adds	r4, #1
 80066e4:	6153      	str	r3, [r2, #20]
 80066e6:	612c      	str	r4, [r5, #16]
 80066e8:	4628      	mov	r0, r5
 80066ea:	b003      	add	sp, #12
 80066ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80066ee:	6869      	ldr	r1, [r5, #4]
 80066f0:	9301      	str	r3, [sp, #4]
 80066f2:	3101      	adds	r1, #1
 80066f4:	4630      	mov	r0, r6
 80066f6:	f7ff ffa3 	bl	8006640 <_Balloc>
 80066fa:	692a      	ldr	r2, [r5, #16]
 80066fc:	3202      	adds	r2, #2
 80066fe:	f105 010c 	add.w	r1, r5, #12
 8006702:	4607      	mov	r7, r0
 8006704:	0092      	lsls	r2, r2, #2
 8006706:	300c      	adds	r0, #12
 8006708:	f7f9 fefa 	bl	8000500 <memcpy>
 800670c:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800670e:	6869      	ldr	r1, [r5, #4]
 8006710:	9b01      	ldr	r3, [sp, #4]
 8006712:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006716:	6028      	str	r0, [r5, #0]
 8006718:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 800671c:	463d      	mov	r5, r7
 800671e:	e7de      	b.n	80066de <__multadd+0x3e>

08006720 <__hi0bits>:
 8006720:	0c02      	lsrs	r2, r0, #16
 8006722:	0412      	lsls	r2, r2, #16
 8006724:	4603      	mov	r3, r0
 8006726:	b9c2      	cbnz	r2, 800675a <__hi0bits+0x3a>
 8006728:	0403      	lsls	r3, r0, #16
 800672a:	2010      	movs	r0, #16
 800672c:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006730:	bf04      	itt	eq
 8006732:	021b      	lsleq	r3, r3, #8
 8006734:	3008      	addeq	r0, #8
 8006736:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800673a:	bf04      	itt	eq
 800673c:	011b      	lsleq	r3, r3, #4
 800673e:	3004      	addeq	r0, #4
 8006740:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006744:	bf04      	itt	eq
 8006746:	009b      	lsleq	r3, r3, #2
 8006748:	3002      	addeq	r0, #2
 800674a:	2b00      	cmp	r3, #0
 800674c:	db04      	blt.n	8006758 <__hi0bits+0x38>
 800674e:	005b      	lsls	r3, r3, #1
 8006750:	d501      	bpl.n	8006756 <__hi0bits+0x36>
 8006752:	3001      	adds	r0, #1
 8006754:	4770      	bx	lr
 8006756:	2020      	movs	r0, #32
 8006758:	4770      	bx	lr
 800675a:	2000      	movs	r0, #0
 800675c:	e7e6      	b.n	800672c <__hi0bits+0xc>
 800675e:	bf00      	nop

08006760 <__lo0bits>:
 8006760:	6803      	ldr	r3, [r0, #0]
 8006762:	f013 0207 	ands.w	r2, r3, #7
 8006766:	4601      	mov	r1, r0
 8006768:	d007      	beq.n	800677a <__lo0bits+0x1a>
 800676a:	07da      	lsls	r2, r3, #31
 800676c:	d41f      	bmi.n	80067ae <__lo0bits+0x4e>
 800676e:	0798      	lsls	r0, r3, #30
 8006770:	d51f      	bpl.n	80067b2 <__lo0bits+0x52>
 8006772:	085b      	lsrs	r3, r3, #1
 8006774:	600b      	str	r3, [r1, #0]
 8006776:	2001      	movs	r0, #1
 8006778:	4770      	bx	lr
 800677a:	b298      	uxth	r0, r3
 800677c:	b1a0      	cbz	r0, 80067a8 <__lo0bits+0x48>
 800677e:	4610      	mov	r0, r2
 8006780:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006784:	bf04      	itt	eq
 8006786:	0a1b      	lsreq	r3, r3, #8
 8006788:	3008      	addeq	r0, #8
 800678a:	071a      	lsls	r2, r3, #28
 800678c:	bf04      	itt	eq
 800678e:	091b      	lsreq	r3, r3, #4
 8006790:	3004      	addeq	r0, #4
 8006792:	079a      	lsls	r2, r3, #30
 8006794:	bf04      	itt	eq
 8006796:	089b      	lsreq	r3, r3, #2
 8006798:	3002      	addeq	r0, #2
 800679a:	07da      	lsls	r2, r3, #31
 800679c:	d402      	bmi.n	80067a4 <__lo0bits+0x44>
 800679e:	085b      	lsrs	r3, r3, #1
 80067a0:	d00b      	beq.n	80067ba <__lo0bits+0x5a>
 80067a2:	3001      	adds	r0, #1
 80067a4:	600b      	str	r3, [r1, #0]
 80067a6:	4770      	bx	lr
 80067a8:	0c1b      	lsrs	r3, r3, #16
 80067aa:	2010      	movs	r0, #16
 80067ac:	e7e8      	b.n	8006780 <__lo0bits+0x20>
 80067ae:	2000      	movs	r0, #0
 80067b0:	4770      	bx	lr
 80067b2:	089b      	lsrs	r3, r3, #2
 80067b4:	600b      	str	r3, [r1, #0]
 80067b6:	2002      	movs	r0, #2
 80067b8:	4770      	bx	lr
 80067ba:	2020      	movs	r0, #32
 80067bc:	4770      	bx	lr
 80067be:	bf00      	nop

080067c0 <__i2b>:
 80067c0:	b510      	push	{r4, lr}
 80067c2:	460c      	mov	r4, r1
 80067c4:	2101      	movs	r1, #1
 80067c6:	f7ff ff3b 	bl	8006640 <_Balloc>
 80067ca:	2201      	movs	r2, #1
 80067cc:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80067d0:	bd10      	pop	{r4, pc}
 80067d2:	bf00      	nop

080067d4 <__multiply>:
 80067d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80067d8:	690e      	ldr	r6, [r1, #16]
 80067da:	6914      	ldr	r4, [r2, #16]
 80067dc:	42a6      	cmp	r6, r4
 80067de:	b083      	sub	sp, #12
 80067e0:	460f      	mov	r7, r1
 80067e2:	4615      	mov	r5, r2
 80067e4:	da04      	bge.n	80067f0 <__multiply+0x1c>
 80067e6:	4632      	mov	r2, r6
 80067e8:	462f      	mov	r7, r5
 80067ea:	4626      	mov	r6, r4
 80067ec:	460d      	mov	r5, r1
 80067ee:	4614      	mov	r4, r2
 80067f0:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80067f4:	eb06 0804 	add.w	r8, r6, r4
 80067f8:	4543      	cmp	r3, r8
 80067fa:	bfb8      	it	lt
 80067fc:	3101      	addlt	r1, #1
 80067fe:	f7ff ff1f 	bl	8006640 <_Balloc>
 8006802:	f100 0914 	add.w	r9, r0, #20
 8006806:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800680a:	45f1      	cmp	r9, lr
 800680c:	9000      	str	r0, [sp, #0]
 800680e:	d205      	bcs.n	800681c <__multiply+0x48>
 8006810:	464b      	mov	r3, r9
 8006812:	2200      	movs	r2, #0
 8006814:	f843 2b04 	str.w	r2, [r3], #4
 8006818:	459e      	cmp	lr, r3
 800681a:	d8fb      	bhi.n	8006814 <__multiply+0x40>
 800681c:	f105 0a14 	add.w	sl, r5, #20
 8006820:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006824:	f107 0314 	add.w	r3, r7, #20
 8006828:	45a2      	cmp	sl, r4
 800682a:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800682e:	d261      	bcs.n	80068f4 <__multiply+0x120>
 8006830:	1b64      	subs	r4, r4, r5
 8006832:	3c15      	subs	r4, #21
 8006834:	f024 0403 	bic.w	r4, r4, #3
 8006838:	f8cd e004 	str.w	lr, [sp, #4]
 800683c:	44a2      	add	sl, r4
 800683e:	f105 0210 	add.w	r2, r5, #16
 8006842:	469e      	mov	lr, r3
 8006844:	e005      	b.n	8006852 <__multiply+0x7e>
 8006846:	0c2d      	lsrs	r5, r5, #16
 8006848:	d12b      	bne.n	80068a2 <__multiply+0xce>
 800684a:	4592      	cmp	sl, r2
 800684c:	f109 0904 	add.w	r9, r9, #4
 8006850:	d04e      	beq.n	80068f0 <__multiply+0x11c>
 8006852:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006856:	fa1f fb85 	uxth.w	fp, r5
 800685a:	f1bb 0f00 	cmp.w	fp, #0
 800685e:	d0f2      	beq.n	8006846 <__multiply+0x72>
 8006860:	4677      	mov	r7, lr
 8006862:	464e      	mov	r6, r9
 8006864:	2000      	movs	r0, #0
 8006866:	e000      	b.n	800686a <__multiply+0x96>
 8006868:	4626      	mov	r6, r4
 800686a:	f857 1b04 	ldr.w	r1, [r7], #4
 800686e:	6834      	ldr	r4, [r6, #0]
 8006870:	b28b      	uxth	r3, r1
 8006872:	b2a5      	uxth	r5, r4
 8006874:	0c09      	lsrs	r1, r1, #16
 8006876:	0c24      	lsrs	r4, r4, #16
 8006878:	fb0b 5303 	mla	r3, fp, r3, r5
 800687c:	4403      	add	r3, r0
 800687e:	fb0b 4001 	mla	r0, fp, r1, r4
 8006882:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006886:	4634      	mov	r4, r6
 8006888:	b29b      	uxth	r3, r3
 800688a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800688e:	45bc      	cmp	ip, r7
 8006890:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006894:	f844 3b04 	str.w	r3, [r4], #4
 8006898:	d8e6      	bhi.n	8006868 <__multiply+0x94>
 800689a:	6070      	str	r0, [r6, #4]
 800689c:	6815      	ldr	r5, [r2, #0]
 800689e:	0c2d      	lsrs	r5, r5, #16
 80068a0:	d0d3      	beq.n	800684a <__multiply+0x76>
 80068a2:	f8d9 3000 	ldr.w	r3, [r9]
 80068a6:	4676      	mov	r6, lr
 80068a8:	4618      	mov	r0, r3
 80068aa:	46cb      	mov	fp, r9
 80068ac:	2100      	movs	r1, #0
 80068ae:	e000      	b.n	80068b2 <__multiply+0xde>
 80068b0:	46a3      	mov	fp, r4
 80068b2:	8834      	ldrh	r4, [r6, #0]
 80068b4:	0c00      	lsrs	r0, r0, #16
 80068b6:	fb05 0004 	mla	r0, r5, r4, r0
 80068ba:	4401      	add	r1, r0
 80068bc:	b29b      	uxth	r3, r3
 80068be:	465c      	mov	r4, fp
 80068c0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80068c4:	f844 3b04 	str.w	r3, [r4], #4
 80068c8:	f856 3b04 	ldr.w	r3, [r6], #4
 80068cc:	f8db 0004 	ldr.w	r0, [fp, #4]
 80068d0:	0c1b      	lsrs	r3, r3, #16
 80068d2:	b287      	uxth	r7, r0
 80068d4:	fb05 7303 	mla	r3, r5, r3, r7
 80068d8:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80068dc:	45b4      	cmp	ip, r6
 80068de:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80068e2:	d8e5      	bhi.n	80068b0 <__multiply+0xdc>
 80068e4:	4592      	cmp	sl, r2
 80068e6:	f8cb 3004 	str.w	r3, [fp, #4]
 80068ea:	f109 0904 	add.w	r9, r9, #4
 80068ee:	d1b0      	bne.n	8006852 <__multiply+0x7e>
 80068f0:	f8dd e004 	ldr.w	lr, [sp, #4]
 80068f4:	f1b8 0f00 	cmp.w	r8, #0
 80068f8:	dd0b      	ble.n	8006912 <__multiply+0x13e>
 80068fa:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80068fe:	f1ae 0e04 	sub.w	lr, lr, #4
 8006902:	b11b      	cbz	r3, 800690c <__multiply+0x138>
 8006904:	e005      	b.n	8006912 <__multiply+0x13e>
 8006906:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800690a:	b913      	cbnz	r3, 8006912 <__multiply+0x13e>
 800690c:	f1b8 0801 	subs.w	r8, r8, #1
 8006910:	d1f9      	bne.n	8006906 <__multiply+0x132>
 8006912:	9800      	ldr	r0, [sp, #0]
 8006914:	f8c0 8010 	str.w	r8, [r0, #16]
 8006918:	b003      	add	sp, #12
 800691a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800691e:	bf00      	nop

08006920 <__pow5mult>:
 8006920:	f012 0303 	ands.w	r3, r2, #3
 8006924:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006928:	4614      	mov	r4, r2
 800692a:	4607      	mov	r7, r0
 800692c:	d12e      	bne.n	800698c <__pow5mult+0x6c>
 800692e:	460d      	mov	r5, r1
 8006930:	10a4      	asrs	r4, r4, #2
 8006932:	d01c      	beq.n	800696e <__pow5mult+0x4e>
 8006934:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006936:	b396      	cbz	r6, 800699e <__pow5mult+0x7e>
 8006938:	07e3      	lsls	r3, r4, #31
 800693a:	f04f 0800 	mov.w	r8, #0
 800693e:	d406      	bmi.n	800694e <__pow5mult+0x2e>
 8006940:	1064      	asrs	r4, r4, #1
 8006942:	d014      	beq.n	800696e <__pow5mult+0x4e>
 8006944:	6830      	ldr	r0, [r6, #0]
 8006946:	b1a8      	cbz	r0, 8006974 <__pow5mult+0x54>
 8006948:	4606      	mov	r6, r0
 800694a:	07e3      	lsls	r3, r4, #31
 800694c:	d5f8      	bpl.n	8006940 <__pow5mult+0x20>
 800694e:	4632      	mov	r2, r6
 8006950:	4629      	mov	r1, r5
 8006952:	4638      	mov	r0, r7
 8006954:	f7ff ff3e 	bl	80067d4 <__multiply>
 8006958:	b1b5      	cbz	r5, 8006988 <__pow5mult+0x68>
 800695a:	686a      	ldr	r2, [r5, #4]
 800695c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800695e:	1064      	asrs	r4, r4, #1
 8006960:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006964:	6029      	str	r1, [r5, #0]
 8006966:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800696a:	4605      	mov	r5, r0
 800696c:	d1ea      	bne.n	8006944 <__pow5mult+0x24>
 800696e:	4628      	mov	r0, r5
 8006970:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006974:	4632      	mov	r2, r6
 8006976:	4631      	mov	r1, r6
 8006978:	4638      	mov	r0, r7
 800697a:	f7ff ff2b 	bl	80067d4 <__multiply>
 800697e:	6030      	str	r0, [r6, #0]
 8006980:	f8c0 8000 	str.w	r8, [r0]
 8006984:	4606      	mov	r6, r0
 8006986:	e7e0      	b.n	800694a <__pow5mult+0x2a>
 8006988:	4605      	mov	r5, r0
 800698a:	e7d9      	b.n	8006940 <__pow5mult+0x20>
 800698c:	3b01      	subs	r3, #1
 800698e:	4a0b      	ldr	r2, [pc, #44]	; (80069bc <__pow5mult+0x9c>)
 8006990:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006994:	2300      	movs	r3, #0
 8006996:	f7ff fe83 	bl	80066a0 <__multadd>
 800699a:	4605      	mov	r5, r0
 800699c:	e7c8      	b.n	8006930 <__pow5mult+0x10>
 800699e:	2101      	movs	r1, #1
 80069a0:	4638      	mov	r0, r7
 80069a2:	f7ff fe4d 	bl	8006640 <_Balloc>
 80069a6:	f240 2371 	movw	r3, #625	; 0x271
 80069aa:	6143      	str	r3, [r0, #20]
 80069ac:	2201      	movs	r2, #1
 80069ae:	2300      	movs	r3, #0
 80069b0:	6102      	str	r2, [r0, #16]
 80069b2:	4606      	mov	r6, r0
 80069b4:	64b8      	str	r0, [r7, #72]	; 0x48
 80069b6:	6003      	str	r3, [r0, #0]
 80069b8:	e7be      	b.n	8006938 <__pow5mult+0x18>
 80069ba:	bf00      	nop
 80069bc:	08007cb0 	.word	0x08007cb0

080069c0 <__lshift>:
 80069c0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80069c4:	4691      	mov	r9, r2
 80069c6:	690a      	ldr	r2, [r1, #16]
 80069c8:	460e      	mov	r6, r1
 80069ca:	ea4f 1469 	mov.w	r4, r9, asr #5
 80069ce:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80069d2:	eb04 0802 	add.w	r8, r4, r2
 80069d6:	f108 0501 	add.w	r5, r8, #1
 80069da:	429d      	cmp	r5, r3
 80069dc:	4607      	mov	r7, r0
 80069de:	dd04      	ble.n	80069ea <__lshift+0x2a>
 80069e0:	005b      	lsls	r3, r3, #1
 80069e2:	429d      	cmp	r5, r3
 80069e4:	f101 0101 	add.w	r1, r1, #1
 80069e8:	dcfa      	bgt.n	80069e0 <__lshift+0x20>
 80069ea:	4638      	mov	r0, r7
 80069ec:	f7ff fe28 	bl	8006640 <_Balloc>
 80069f0:	2c00      	cmp	r4, #0
 80069f2:	f100 0314 	add.w	r3, r0, #20
 80069f6:	dd37      	ble.n	8006a68 <__lshift+0xa8>
 80069f8:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80069fc:	2200      	movs	r2, #0
 80069fe:	f843 2b04 	str.w	r2, [r3], #4
 8006a02:	428b      	cmp	r3, r1
 8006a04:	d1fb      	bne.n	80069fe <__lshift+0x3e>
 8006a06:	6934      	ldr	r4, [r6, #16]
 8006a08:	f106 0314 	add.w	r3, r6, #20
 8006a0c:	f019 091f 	ands.w	r9, r9, #31
 8006a10:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006a14:	d020      	beq.n	8006a58 <__lshift+0x98>
 8006a16:	f1c9 0e20 	rsb	lr, r9, #32
 8006a1a:	2200      	movs	r2, #0
 8006a1c:	e000      	b.n	8006a20 <__lshift+0x60>
 8006a1e:	4651      	mov	r1, sl
 8006a20:	681c      	ldr	r4, [r3, #0]
 8006a22:	468a      	mov	sl, r1
 8006a24:	fa04 f409 	lsl.w	r4, r4, r9
 8006a28:	4314      	orrs	r4, r2
 8006a2a:	f84a 4b04 	str.w	r4, [sl], #4
 8006a2e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006a32:	4563      	cmp	r3, ip
 8006a34:	fa22 f20e 	lsr.w	r2, r2, lr
 8006a38:	d3f1      	bcc.n	8006a1e <__lshift+0x5e>
 8006a3a:	604a      	str	r2, [r1, #4]
 8006a3c:	b10a      	cbz	r2, 8006a42 <__lshift+0x82>
 8006a3e:	f108 0502 	add.w	r5, r8, #2
 8006a42:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006a44:	6872      	ldr	r2, [r6, #4]
 8006a46:	3d01      	subs	r5, #1
 8006a48:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006a4c:	6105      	str	r5, [r0, #16]
 8006a4e:	6031      	str	r1, [r6, #0]
 8006a50:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006a54:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006a58:	3904      	subs	r1, #4
 8006a5a:	f853 2b04 	ldr.w	r2, [r3], #4
 8006a5e:	f841 2f04 	str.w	r2, [r1, #4]!
 8006a62:	459c      	cmp	ip, r3
 8006a64:	d8f9      	bhi.n	8006a5a <__lshift+0x9a>
 8006a66:	e7ec      	b.n	8006a42 <__lshift+0x82>
 8006a68:	4619      	mov	r1, r3
 8006a6a:	e7cc      	b.n	8006a06 <__lshift+0x46>

08006a6c <__mcmp>:
 8006a6c:	b430      	push	{r4, r5}
 8006a6e:	690b      	ldr	r3, [r1, #16]
 8006a70:	4605      	mov	r5, r0
 8006a72:	6900      	ldr	r0, [r0, #16]
 8006a74:	1ac0      	subs	r0, r0, r3
 8006a76:	d10f      	bne.n	8006a98 <__mcmp+0x2c>
 8006a78:	009b      	lsls	r3, r3, #2
 8006a7a:	3514      	adds	r5, #20
 8006a7c:	3114      	adds	r1, #20
 8006a7e:	4419      	add	r1, r3
 8006a80:	442b      	add	r3, r5
 8006a82:	e001      	b.n	8006a88 <__mcmp+0x1c>
 8006a84:	429d      	cmp	r5, r3
 8006a86:	d207      	bcs.n	8006a98 <__mcmp+0x2c>
 8006a88:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006a8c:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006a90:	4294      	cmp	r4, r2
 8006a92:	d0f7      	beq.n	8006a84 <__mcmp+0x18>
 8006a94:	d302      	bcc.n	8006a9c <__mcmp+0x30>
 8006a96:	2001      	movs	r0, #1
 8006a98:	bc30      	pop	{r4, r5}
 8006a9a:	4770      	bx	lr
 8006a9c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006aa0:	e7fa      	b.n	8006a98 <__mcmp+0x2c>
 8006aa2:	bf00      	nop

08006aa4 <__mdiff>:
 8006aa4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006aa8:	6913      	ldr	r3, [r2, #16]
 8006aaa:	690d      	ldr	r5, [r1, #16]
 8006aac:	1aed      	subs	r5, r5, r3
 8006aae:	2d00      	cmp	r5, #0
 8006ab0:	460e      	mov	r6, r1
 8006ab2:	4690      	mov	r8, r2
 8006ab4:	f101 0414 	add.w	r4, r1, #20
 8006ab8:	f102 0714 	add.w	r7, r2, #20
 8006abc:	d114      	bne.n	8006ae8 <__mdiff+0x44>
 8006abe:	009b      	lsls	r3, r3, #2
 8006ac0:	18e2      	adds	r2, r4, r3
 8006ac2:	443b      	add	r3, r7
 8006ac4:	e001      	b.n	8006aca <__mdiff+0x26>
 8006ac6:	42a2      	cmp	r2, r4
 8006ac8:	d959      	bls.n	8006b7e <__mdiff+0xda>
 8006aca:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006ace:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006ad2:	458c      	cmp	ip, r1
 8006ad4:	d0f7      	beq.n	8006ac6 <__mdiff+0x22>
 8006ad6:	d209      	bcs.n	8006aec <__mdiff+0x48>
 8006ad8:	4622      	mov	r2, r4
 8006ada:	4633      	mov	r3, r6
 8006adc:	463c      	mov	r4, r7
 8006ade:	4646      	mov	r6, r8
 8006ae0:	4617      	mov	r7, r2
 8006ae2:	4698      	mov	r8, r3
 8006ae4:	2501      	movs	r5, #1
 8006ae6:	e001      	b.n	8006aec <__mdiff+0x48>
 8006ae8:	dbf6      	blt.n	8006ad8 <__mdiff+0x34>
 8006aea:	2500      	movs	r5, #0
 8006aec:	6871      	ldr	r1, [r6, #4]
 8006aee:	f7ff fda7 	bl	8006640 <_Balloc>
 8006af2:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006af6:	6936      	ldr	r6, [r6, #16]
 8006af8:	60c5      	str	r5, [r0, #12]
 8006afa:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006afe:	46bc      	mov	ip, r7
 8006b00:	f100 0514 	add.w	r5, r0, #20
 8006b04:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006b08:	2300      	movs	r3, #0
 8006b0a:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006b0e:	f854 8b04 	ldr.w	r8, [r4], #4
 8006b12:	b28a      	uxth	r2, r1
 8006b14:	fa13 f388 	uxtah	r3, r3, r8
 8006b18:	0c09      	lsrs	r1, r1, #16
 8006b1a:	1a9a      	subs	r2, r3, r2
 8006b1c:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006b20:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006b24:	b292      	uxth	r2, r2
 8006b26:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006b2a:	45e6      	cmp	lr, ip
 8006b2c:	f845 2b04 	str.w	r2, [r5], #4
 8006b30:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006b34:	d8e9      	bhi.n	8006b0a <__mdiff+0x66>
 8006b36:	42a7      	cmp	r7, r4
 8006b38:	d917      	bls.n	8006b6a <__mdiff+0xc6>
 8006b3a:	46ae      	mov	lr, r5
 8006b3c:	46a4      	mov	ip, r4
 8006b3e:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006b42:	fa13 f382 	uxtah	r3, r3, r2
 8006b46:	1419      	asrs	r1, r3, #16
 8006b48:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006b4c:	b29b      	uxth	r3, r3
 8006b4e:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006b52:	4567      	cmp	r7, ip
 8006b54:	f84e 2b04 	str.w	r2, [lr], #4
 8006b58:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006b5c:	d8ef      	bhi.n	8006b3e <__mdiff+0x9a>
 8006b5e:	43e4      	mvns	r4, r4
 8006b60:	4427      	add	r7, r4
 8006b62:	f027 0703 	bic.w	r7, r7, #3
 8006b66:	3704      	adds	r7, #4
 8006b68:	443d      	add	r5, r7
 8006b6a:	3d04      	subs	r5, #4
 8006b6c:	b922      	cbnz	r2, 8006b78 <__mdiff+0xd4>
 8006b6e:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006b72:	3e01      	subs	r6, #1
 8006b74:	2b00      	cmp	r3, #0
 8006b76:	d0fa      	beq.n	8006b6e <__mdiff+0xca>
 8006b78:	6106      	str	r6, [r0, #16]
 8006b7a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006b7e:	2100      	movs	r1, #0
 8006b80:	f7ff fd5e 	bl	8006640 <_Balloc>
 8006b84:	2201      	movs	r2, #1
 8006b86:	2300      	movs	r3, #0
 8006b88:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006b8c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006b90 <__d2b>:
 8006b90:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006b94:	460f      	mov	r7, r1
 8006b96:	b083      	sub	sp, #12
 8006b98:	2101      	movs	r1, #1
 8006b9a:	ec55 4b10 	vmov	r4, r5, d0
 8006b9e:	4616      	mov	r6, r2
 8006ba0:	f7ff fd4e 	bl	8006640 <_Balloc>
 8006ba4:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006ba8:	4681      	mov	r9, r0
 8006baa:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006bae:	f1b8 0f00 	cmp.w	r8, #0
 8006bb2:	d001      	beq.n	8006bb8 <__d2b+0x28>
 8006bb4:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006bb8:	2c00      	cmp	r4, #0
 8006bba:	9301      	str	r3, [sp, #4]
 8006bbc:	d024      	beq.n	8006c08 <__d2b+0x78>
 8006bbe:	a802      	add	r0, sp, #8
 8006bc0:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006bc4:	f7ff fdcc 	bl	8006760 <__lo0bits>
 8006bc8:	2800      	cmp	r0, #0
 8006bca:	d136      	bne.n	8006c3a <__d2b+0xaa>
 8006bcc:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006bd0:	f8c9 2014 	str.w	r2, [r9, #20]
 8006bd4:	2b00      	cmp	r3, #0
 8006bd6:	bf0c      	ite	eq
 8006bd8:	2101      	moveq	r1, #1
 8006bda:	2102      	movne	r1, #2
 8006bdc:	f8c9 3018 	str.w	r3, [r9, #24]
 8006be0:	f8c9 1010 	str.w	r1, [r9, #16]
 8006be4:	f1b8 0f00 	cmp.w	r8, #0
 8006be8:	d11b      	bne.n	8006c22 <__d2b+0x92>
 8006bea:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006bee:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006bf2:	6038      	str	r0, [r7, #0]
 8006bf4:	6918      	ldr	r0, [r3, #16]
 8006bf6:	f7ff fd93 	bl	8006720 <__hi0bits>
 8006bfa:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006bfe:	6030      	str	r0, [r6, #0]
 8006c00:	4648      	mov	r0, r9
 8006c02:	b003      	add	sp, #12
 8006c04:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006c08:	a801      	add	r0, sp, #4
 8006c0a:	f7ff fda9 	bl	8006760 <__lo0bits>
 8006c0e:	9b01      	ldr	r3, [sp, #4]
 8006c10:	f8c9 3014 	str.w	r3, [r9, #20]
 8006c14:	2101      	movs	r1, #1
 8006c16:	3020      	adds	r0, #32
 8006c18:	f8c9 1010 	str.w	r1, [r9, #16]
 8006c1c:	f1b8 0f00 	cmp.w	r8, #0
 8006c20:	d0e3      	beq.n	8006bea <__d2b+0x5a>
 8006c22:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006c26:	eb08 0300 	add.w	r3, r8, r0
 8006c2a:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006c2e:	603b      	str	r3, [r7, #0]
 8006c30:	6030      	str	r0, [r6, #0]
 8006c32:	4648      	mov	r0, r9
 8006c34:	b003      	add	sp, #12
 8006c36:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006c3a:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006c3e:	f1c0 0220 	rsb	r2, r0, #32
 8006c42:	fa03 f202 	lsl.w	r2, r3, r2
 8006c46:	430a      	orrs	r2, r1
 8006c48:	40c3      	lsrs	r3, r0
 8006c4a:	9301      	str	r3, [sp, #4]
 8006c4c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006c50:	e7c0      	b.n	8006bd4 <__d2b+0x44>
 8006c52:	bf00      	nop

08006c54 <frexp>:
 8006c54:	ec53 2b10 	vmov	r2, r3, d0
 8006c58:	b570      	push	{r4, r5, r6, lr}
 8006c5a:	4e16      	ldr	r6, [pc, #88]	; (8006cb4 <frexp+0x60>)
 8006c5c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006c60:	2500      	movs	r5, #0
 8006c62:	42b1      	cmp	r1, r6
 8006c64:	4604      	mov	r4, r0
 8006c66:	6005      	str	r5, [r0, #0]
 8006c68:	dc21      	bgt.n	8006cae <frexp+0x5a>
 8006c6a:	ee10 6a10 	vmov	r6, s0
 8006c6e:	430e      	orrs	r6, r1
 8006c70:	d01d      	beq.n	8006cae <frexp+0x5a>
 8006c72:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006c76:	4618      	mov	r0, r3
 8006c78:	da0c      	bge.n	8006c94 <frexp+0x40>
 8006c7a:	4619      	mov	r1, r3
 8006c7c:	2200      	movs	r2, #0
 8006c7e:	ee10 0a10 	vmov	r0, s0
 8006c82:	4b0d      	ldr	r3, [pc, #52]	; (8006cb8 <frexp+0x64>)
 8006c84:	f7f9 ff58 	bl	8000b38 <__aeabi_dmul>
 8006c88:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006c8c:	4602      	mov	r2, r0
 8006c8e:	4608      	mov	r0, r1
 8006c90:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006c94:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006c98:	1509      	asrs	r1, r1, #20
 8006c9a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006c9e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006ca2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006ca6:	4429      	add	r1, r5
 8006ca8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006cac:	6021      	str	r1, [r4, #0]
 8006cae:	ec43 2b10 	vmov	d0, r2, r3
 8006cb2:	bd70      	pop	{r4, r5, r6, pc}
 8006cb4:	7fefffff 	.word	0x7fefffff
 8006cb8:	43500000 	.word	0x43500000

08006cbc <_sbrk_r>:
 8006cbc:	b538      	push	{r3, r4, r5, lr}
 8006cbe:	4c07      	ldr	r4, [pc, #28]	; (8006cdc <_sbrk_r+0x20>)
 8006cc0:	2300      	movs	r3, #0
 8006cc2:	4605      	mov	r5, r0
 8006cc4:	4608      	mov	r0, r1
 8006cc6:	6023      	str	r3, [r4, #0]
 8006cc8:	f7fb ffc9 	bl	8002c5e <_sbrk>
 8006ccc:	1c43      	adds	r3, r0, #1
 8006cce:	d000      	beq.n	8006cd2 <_sbrk_r+0x16>
 8006cd0:	bd38      	pop	{r3, r4, r5, pc}
 8006cd2:	6823      	ldr	r3, [r4, #0]
 8006cd4:	2b00      	cmp	r3, #0
 8006cd6:	d0fb      	beq.n	8006cd0 <_sbrk_r+0x14>
 8006cd8:	602b      	str	r3, [r5, #0]
 8006cda:	bd38      	pop	{r3, r4, r5, pc}
 8006cdc:	20000c38 	.word	0x20000c38

08006ce0 <__sread>:
 8006ce0:	b510      	push	{r4, lr}
 8006ce2:	460c      	mov	r4, r1
 8006ce4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ce8:	f000 fc9e 	bl	8007628 <_read_r>
 8006cec:	2800      	cmp	r0, #0
 8006cee:	db03      	blt.n	8006cf8 <__sread+0x18>
 8006cf0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006cf2:	4403      	add	r3, r0
 8006cf4:	6523      	str	r3, [r4, #80]	; 0x50
 8006cf6:	bd10      	pop	{r4, pc}
 8006cf8:	89a3      	ldrh	r3, [r4, #12]
 8006cfa:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006cfe:	81a3      	strh	r3, [r4, #12]
 8006d00:	bd10      	pop	{r4, pc}
 8006d02:	bf00      	nop

08006d04 <__swrite>:
 8006d04:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006d08:	4616      	mov	r6, r2
 8006d0a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006d0e:	461f      	mov	r7, r3
 8006d10:	05d3      	lsls	r3, r2, #23
 8006d12:	460c      	mov	r4, r1
 8006d14:	4605      	mov	r5, r0
 8006d16:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d1a:	d507      	bpl.n	8006d2c <__swrite+0x28>
 8006d1c:	2200      	movs	r2, #0
 8006d1e:	2302      	movs	r3, #2
 8006d20:	f000 fbf2 	bl	8007508 <_lseek_r>
 8006d24:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006d28:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006d2c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006d30:	81a2      	strh	r2, [r4, #12]
 8006d32:	463b      	mov	r3, r7
 8006d34:	4632      	mov	r2, r6
 8006d36:	4628      	mov	r0, r5
 8006d38:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006d3c:	f000 b88c 	b.w	8006e58 <_write_r>

08006d40 <__sseek>:
 8006d40:	b510      	push	{r4, lr}
 8006d42:	460c      	mov	r4, r1
 8006d44:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d48:	f000 fbde 	bl	8007508 <_lseek_r>
 8006d4c:	89a3      	ldrh	r3, [r4, #12]
 8006d4e:	1c42      	adds	r2, r0, #1
 8006d50:	bf0e      	itee	eq
 8006d52:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006d56:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006d5a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006d5c:	81a3      	strh	r3, [r4, #12]
 8006d5e:	bd10      	pop	{r4, pc}

08006d60 <__sclose>:
 8006d60:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d64:	f000 b922 	b.w	8006fac <_close_r>

08006d68 <strncpy>:
 8006d68:	ea40 0301 	orr.w	r3, r0, r1
 8006d6c:	079b      	lsls	r3, r3, #30
 8006d6e:	b470      	push	{r4, r5, r6}
 8006d70:	d12a      	bne.n	8006dc8 <strncpy+0x60>
 8006d72:	2a03      	cmp	r2, #3
 8006d74:	d928      	bls.n	8006dc8 <strncpy+0x60>
 8006d76:	460c      	mov	r4, r1
 8006d78:	4603      	mov	r3, r0
 8006d7a:	4621      	mov	r1, r4
 8006d7c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006d80:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006d84:	ea25 0506 	bic.w	r5, r5, r6
 8006d88:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006d8c:	d106      	bne.n	8006d9c <strncpy+0x34>
 8006d8e:	3a04      	subs	r2, #4
 8006d90:	2a03      	cmp	r2, #3
 8006d92:	f843 6b04 	str.w	r6, [r3], #4
 8006d96:	4621      	mov	r1, r4
 8006d98:	d8ef      	bhi.n	8006d7a <strncpy+0x12>
 8006d9a:	b19a      	cbz	r2, 8006dc4 <strncpy+0x5c>
 8006d9c:	780c      	ldrb	r4, [r1, #0]
 8006d9e:	701c      	strb	r4, [r3, #0]
 8006da0:	3a01      	subs	r2, #1
 8006da2:	3301      	adds	r3, #1
 8006da4:	b13c      	cbz	r4, 8006db6 <strncpy+0x4e>
 8006da6:	b16a      	cbz	r2, 8006dc4 <strncpy+0x5c>
 8006da8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006dac:	f803 4b01 	strb.w	r4, [r3], #1
 8006db0:	3a01      	subs	r2, #1
 8006db2:	2c00      	cmp	r4, #0
 8006db4:	d1f7      	bne.n	8006da6 <strncpy+0x3e>
 8006db6:	b12a      	cbz	r2, 8006dc4 <strncpy+0x5c>
 8006db8:	441a      	add	r2, r3
 8006dba:	2100      	movs	r1, #0
 8006dbc:	f803 1b01 	strb.w	r1, [r3], #1
 8006dc0:	4293      	cmp	r3, r2
 8006dc2:	d1fb      	bne.n	8006dbc <strncpy+0x54>
 8006dc4:	bc70      	pop	{r4, r5, r6}
 8006dc6:	4770      	bx	lr
 8006dc8:	4603      	mov	r3, r0
 8006dca:	e7e6      	b.n	8006d9a <strncpy+0x32>

08006dcc <__sprint_r.part.0>:
 8006dcc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006dd0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006dd2:	049c      	lsls	r4, r3, #18
 8006dd4:	4692      	mov	sl, r2
 8006dd6:	d52d      	bpl.n	8006e34 <__sprint_r.part.0+0x68>
 8006dd8:	6893      	ldr	r3, [r2, #8]
 8006dda:	6812      	ldr	r2, [r2, #0]
 8006ddc:	b343      	cbz	r3, 8006e30 <__sprint_r.part.0+0x64>
 8006dde:	460e      	mov	r6, r1
 8006de0:	4607      	mov	r7, r0
 8006de2:	f102 0908 	add.w	r9, r2, #8
 8006de6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006dea:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006dee:	d015      	beq.n	8006e1c <__sprint_r.part.0+0x50>
 8006df0:	3d04      	subs	r5, #4
 8006df2:	2400      	movs	r4, #0
 8006df4:	e001      	b.n	8006dfa <__sprint_r.part.0+0x2e>
 8006df6:	45a0      	cmp	r8, r4
 8006df8:	d00e      	beq.n	8006e18 <__sprint_r.part.0+0x4c>
 8006dfa:	4632      	mov	r2, r6
 8006dfc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006e00:	4638      	mov	r0, r7
 8006e02:	f000 f99d 	bl	8007140 <_fputwc_r>
 8006e06:	1c43      	adds	r3, r0, #1
 8006e08:	f104 0401 	add.w	r4, r4, #1
 8006e0c:	d1f3      	bne.n	8006df6 <__sprint_r.part.0+0x2a>
 8006e0e:	2300      	movs	r3, #0
 8006e10:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006e14:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e18:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006e1c:	f02b 0b03 	bic.w	fp, fp, #3
 8006e20:	eba3 030b 	sub.w	r3, r3, fp
 8006e24:	f8ca 3008 	str.w	r3, [sl, #8]
 8006e28:	f109 0908 	add.w	r9, r9, #8
 8006e2c:	2b00      	cmp	r3, #0
 8006e2e:	d1da      	bne.n	8006de6 <__sprint_r.part.0+0x1a>
 8006e30:	2000      	movs	r0, #0
 8006e32:	e7ec      	b.n	8006e0e <__sprint_r.part.0+0x42>
 8006e34:	f000 f9ca 	bl	80071cc <__sfvwrite_r>
 8006e38:	2300      	movs	r3, #0
 8006e3a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006e3e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e42:	bf00      	nop

08006e44 <__sprint_r>:
 8006e44:	6893      	ldr	r3, [r2, #8]
 8006e46:	b10b      	cbz	r3, 8006e4c <__sprint_r+0x8>
 8006e48:	f7ff bfc0 	b.w	8006dcc <__sprint_r.part.0>
 8006e4c:	b410      	push	{r4}
 8006e4e:	4618      	mov	r0, r3
 8006e50:	6053      	str	r3, [r2, #4]
 8006e52:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006e56:	4770      	bx	lr

08006e58 <_write_r>:
 8006e58:	b570      	push	{r4, r5, r6, lr}
 8006e5a:	460d      	mov	r5, r1
 8006e5c:	4c08      	ldr	r4, [pc, #32]	; (8006e80 <_write_r+0x28>)
 8006e5e:	4611      	mov	r1, r2
 8006e60:	4606      	mov	r6, r0
 8006e62:	461a      	mov	r2, r3
 8006e64:	4628      	mov	r0, r5
 8006e66:	2300      	movs	r3, #0
 8006e68:	6023      	str	r3, [r4, #0]
 8006e6a:	f7fb fed3 	bl	8002c14 <_write>
 8006e6e:	1c43      	adds	r3, r0, #1
 8006e70:	d000      	beq.n	8006e74 <_write_r+0x1c>
 8006e72:	bd70      	pop	{r4, r5, r6, pc}
 8006e74:	6823      	ldr	r3, [r4, #0]
 8006e76:	2b00      	cmp	r3, #0
 8006e78:	d0fb      	beq.n	8006e72 <_write_r+0x1a>
 8006e7a:	6033      	str	r3, [r6, #0]
 8006e7c:	bd70      	pop	{r4, r5, r6, pc}
 8006e7e:	bf00      	nop
 8006e80:	20000c38 	.word	0x20000c38

08006e84 <__register_exitproc>:
 8006e84:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006e88:	4d2b      	ldr	r5, [pc, #172]	; (8006f38 <__register_exitproc+0xb4>)
 8006e8a:	4606      	mov	r6, r0
 8006e8c:	6828      	ldr	r0, [r5, #0]
 8006e8e:	4698      	mov	r8, r3
 8006e90:	460f      	mov	r7, r1
 8006e92:	4691      	mov	r9, r2
 8006e94:	f7ff f8a8 	bl	8005fe8 <__retarget_lock_acquire_recursive>
 8006e98:	4b28      	ldr	r3, [pc, #160]	; (8006f3c <__register_exitproc+0xb8>)
 8006e9a:	681c      	ldr	r4, [r3, #0]
 8006e9c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006ea0:	2b00      	cmp	r3, #0
 8006ea2:	d03d      	beq.n	8006f20 <__register_exitproc+0x9c>
 8006ea4:	685a      	ldr	r2, [r3, #4]
 8006ea6:	2a1f      	cmp	r2, #31
 8006ea8:	dc0d      	bgt.n	8006ec6 <__register_exitproc+0x42>
 8006eaa:	f102 0c01 	add.w	ip, r2, #1
 8006eae:	bb16      	cbnz	r6, 8006ef6 <__register_exitproc+0x72>
 8006eb0:	3202      	adds	r2, #2
 8006eb2:	f8c3 c004 	str.w	ip, [r3, #4]
 8006eb6:	6828      	ldr	r0, [r5, #0]
 8006eb8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006ebc:	f7ff f896 	bl	8005fec <__retarget_lock_release_recursive>
 8006ec0:	2000      	movs	r0, #0
 8006ec2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006ec6:	4b1e      	ldr	r3, [pc, #120]	; (8006f40 <__register_exitproc+0xbc>)
 8006ec8:	b37b      	cbz	r3, 8006f2a <__register_exitproc+0xa6>
 8006eca:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006ece:	f3af 8000 	nop.w
 8006ed2:	4603      	mov	r3, r0
 8006ed4:	b348      	cbz	r0, 8006f2a <__register_exitproc+0xa6>
 8006ed6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006eda:	2100      	movs	r1, #0
 8006edc:	e9c0 2100 	strd	r2, r1, [r0]
 8006ee0:	f04f 0c01 	mov.w	ip, #1
 8006ee4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006ee8:	460a      	mov	r2, r1
 8006eea:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006eee:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006ef2:	2e00      	cmp	r6, #0
 8006ef4:	d0dc      	beq.n	8006eb0 <__register_exitproc+0x2c>
 8006ef6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006efa:	2401      	movs	r4, #1
 8006efc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006f00:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006f04:	4094      	lsls	r4, r2
 8006f06:	4320      	orrs	r0, r4
 8006f08:	2e02      	cmp	r6, #2
 8006f0a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006f0e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006f12:	d1cd      	bne.n	8006eb0 <__register_exitproc+0x2c>
 8006f14:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006f18:	430c      	orrs	r4, r1
 8006f1a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006f1e:	e7c7      	b.n	8006eb0 <__register_exitproc+0x2c>
 8006f20:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006f24:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006f28:	e7bc      	b.n	8006ea4 <__register_exitproc+0x20>
 8006f2a:	6828      	ldr	r0, [r5, #0]
 8006f2c:	f7ff f85e 	bl	8005fec <__retarget_lock_release_recursive>
 8006f30:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006f34:	e7c5      	b.n	8006ec2 <__register_exitproc+0x3e>
 8006f36:	bf00      	nop
 8006f38:	20000448 	.word	0x20000448
 8006f3c:	08007b48 	.word	0x08007b48
 8006f40:	00000000 	.word	0x00000000

08006f44 <_calloc_r>:
 8006f44:	b510      	push	{r4, lr}
 8006f46:	fb02 f101 	mul.w	r1, r2, r1
 8006f4a:	f7ff f8c9 	bl	80060e0 <_malloc_r>
 8006f4e:	4604      	mov	r4, r0
 8006f50:	b1d8      	cbz	r0, 8006f8a <_calloc_r+0x46>
 8006f52:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006f56:	f022 0203 	bic.w	r2, r2, #3
 8006f5a:	3a04      	subs	r2, #4
 8006f5c:	2a24      	cmp	r2, #36	; 0x24
 8006f5e:	d81d      	bhi.n	8006f9c <_calloc_r+0x58>
 8006f60:	2a13      	cmp	r2, #19
 8006f62:	d914      	bls.n	8006f8e <_calloc_r+0x4a>
 8006f64:	2300      	movs	r3, #0
 8006f66:	2a1b      	cmp	r2, #27
 8006f68:	e9c0 3300 	strd	r3, r3, [r0]
 8006f6c:	d91b      	bls.n	8006fa6 <_calloc_r+0x62>
 8006f6e:	2a24      	cmp	r2, #36	; 0x24
 8006f70:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006f74:	bf0a      	itet	eq
 8006f76:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006f7a:	f100 0210 	addne.w	r2, r0, #16
 8006f7e:	f100 0218 	addeq.w	r2, r0, #24
 8006f82:	2300      	movs	r3, #0
 8006f84:	e9c2 3300 	strd	r3, r3, [r2]
 8006f88:	6093      	str	r3, [r2, #8]
 8006f8a:	4620      	mov	r0, r4
 8006f8c:	bd10      	pop	{r4, pc}
 8006f8e:	4602      	mov	r2, r0
 8006f90:	2300      	movs	r3, #0
 8006f92:	e9c2 3300 	strd	r3, r3, [r2]
 8006f96:	6093      	str	r3, [r2, #8]
 8006f98:	4620      	mov	r0, r4
 8006f9a:	bd10      	pop	{r4, pc}
 8006f9c:	2100      	movs	r1, #0
 8006f9e:	f7fb ff53 	bl	8002e48 <memset>
 8006fa2:	4620      	mov	r0, r4
 8006fa4:	bd10      	pop	{r4, pc}
 8006fa6:	f100 0208 	add.w	r2, r0, #8
 8006faa:	e7f1      	b.n	8006f90 <_calloc_r+0x4c>

08006fac <_close_r>:
 8006fac:	b538      	push	{r3, r4, r5, lr}
 8006fae:	4c07      	ldr	r4, [pc, #28]	; (8006fcc <_close_r+0x20>)
 8006fb0:	2300      	movs	r3, #0
 8006fb2:	4605      	mov	r5, r0
 8006fb4:	4608      	mov	r0, r1
 8006fb6:	6023      	str	r3, [r4, #0]
 8006fb8:	f7fb fe8e 	bl	8002cd8 <_close>
 8006fbc:	1c43      	adds	r3, r0, #1
 8006fbe:	d000      	beq.n	8006fc2 <_close_r+0x16>
 8006fc0:	bd38      	pop	{r3, r4, r5, pc}
 8006fc2:	6823      	ldr	r3, [r4, #0]
 8006fc4:	2b00      	cmp	r3, #0
 8006fc6:	d0fb      	beq.n	8006fc0 <_close_r+0x14>
 8006fc8:	602b      	str	r3, [r5, #0]
 8006fca:	bd38      	pop	{r3, r4, r5, pc}
 8006fcc:	20000c38 	.word	0x20000c38

08006fd0 <_fclose_r>:
 8006fd0:	b570      	push	{r4, r5, r6, lr}
 8006fd2:	2900      	cmp	r1, #0
 8006fd4:	d048      	beq.n	8007068 <_fclose_r+0x98>
 8006fd6:	4605      	mov	r5, r0
 8006fd8:	460c      	mov	r4, r1
 8006fda:	b110      	cbz	r0, 8006fe2 <_fclose_r+0x12>
 8006fdc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006fde:	2b00      	cmp	r3, #0
 8006fe0:	d048      	beq.n	8007074 <_fclose_r+0xa4>
 8006fe2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006fe4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006fe8:	07d0      	lsls	r0, r2, #31
 8006fea:	d440      	bmi.n	800706e <_fclose_r+0x9e>
 8006fec:	0599      	lsls	r1, r3, #22
 8006fee:	d530      	bpl.n	8007052 <_fclose_r+0x82>
 8006ff0:	4621      	mov	r1, r4
 8006ff2:	4628      	mov	r0, r5
 8006ff4:	f7fe fd20 	bl	8005a38 <__sflush_r>
 8006ff8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006ffa:	4606      	mov	r6, r0
 8006ffc:	b133      	cbz	r3, 800700c <_fclose_r+0x3c>
 8006ffe:	69e1      	ldr	r1, [r4, #28]
 8007000:	4628      	mov	r0, r5
 8007002:	4798      	blx	r3
 8007004:	2800      	cmp	r0, #0
 8007006:	bfb8      	it	lt
 8007008:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800700c:	89a3      	ldrh	r3, [r4, #12]
 800700e:	061a      	lsls	r2, r3, #24
 8007010:	d43c      	bmi.n	800708c <_fclose_r+0xbc>
 8007012:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007014:	b141      	cbz	r1, 8007028 <_fclose_r+0x58>
 8007016:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800701a:	4299      	cmp	r1, r3
 800701c:	d002      	beq.n	8007024 <_fclose_r+0x54>
 800701e:	4628      	mov	r0, r5
 8007020:	f7fe feb2 	bl	8005d88 <_free_r>
 8007024:	2300      	movs	r3, #0
 8007026:	6323      	str	r3, [r4, #48]	; 0x30
 8007028:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800702a:	b121      	cbz	r1, 8007036 <_fclose_r+0x66>
 800702c:	4628      	mov	r0, r5
 800702e:	f7fe feab 	bl	8005d88 <_free_r>
 8007032:	2300      	movs	r3, #0
 8007034:	6463      	str	r3, [r4, #68]	; 0x44
 8007036:	f7fe fe31 	bl	8005c9c <__sfp_lock_acquire>
 800703a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800703c:	2200      	movs	r2, #0
 800703e:	07db      	lsls	r3, r3, #31
 8007040:	81a2      	strh	r2, [r4, #12]
 8007042:	d51f      	bpl.n	8007084 <_fclose_r+0xb4>
 8007044:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007046:	f7fe ffcd 	bl	8005fe4 <__retarget_lock_close_recursive>
 800704a:	f7fe fe2d 	bl	8005ca8 <__sfp_lock_release>
 800704e:	4630      	mov	r0, r6
 8007050:	bd70      	pop	{r4, r5, r6, pc}
 8007052:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007054:	f7fe ffc8 	bl	8005fe8 <__retarget_lock_acquire_recursive>
 8007058:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800705c:	2b00      	cmp	r3, #0
 800705e:	d1c7      	bne.n	8006ff0 <_fclose_r+0x20>
 8007060:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007062:	f016 0601 	ands.w	r6, r6, #1
 8007066:	d016      	beq.n	8007096 <_fclose_r+0xc6>
 8007068:	2600      	movs	r6, #0
 800706a:	4630      	mov	r0, r6
 800706c:	bd70      	pop	{r4, r5, r6, pc}
 800706e:	2b00      	cmp	r3, #0
 8007070:	d0fa      	beq.n	8007068 <_fclose_r+0x98>
 8007072:	e7bd      	b.n	8006ff0 <_fclose_r+0x20>
 8007074:	f7fe fde6 	bl	8005c44 <__sinit>
 8007078:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800707a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800707e:	07d0      	lsls	r0, r2, #31
 8007080:	d4f5      	bmi.n	800706e <_fclose_r+0x9e>
 8007082:	e7b3      	b.n	8006fec <_fclose_r+0x1c>
 8007084:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007086:	f7fe ffb1 	bl	8005fec <__retarget_lock_release_recursive>
 800708a:	e7db      	b.n	8007044 <_fclose_r+0x74>
 800708c:	6921      	ldr	r1, [r4, #16]
 800708e:	4628      	mov	r0, r5
 8007090:	f7fe fe7a 	bl	8005d88 <_free_r>
 8007094:	e7bd      	b.n	8007012 <_fclose_r+0x42>
 8007096:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007098:	f7fe ffa8 	bl	8005fec <__retarget_lock_release_recursive>
 800709c:	4630      	mov	r0, r6
 800709e:	bd70      	pop	{r4, r5, r6, pc}

080070a0 <__fputwc>:
 80070a0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80070a4:	b082      	sub	sp, #8
 80070a6:	4681      	mov	r9, r0
 80070a8:	4688      	mov	r8, r1
 80070aa:	4614      	mov	r4, r2
 80070ac:	f000 fa1e 	bl	80074ec <__locale_mb_cur_max>
 80070b0:	2801      	cmp	r0, #1
 80070b2:	d103      	bne.n	80070bc <__fputwc+0x1c>
 80070b4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80070b8:	2bfe      	cmp	r3, #254	; 0xfe
 80070ba:	d933      	bls.n	8007124 <__fputwc+0x84>
 80070bc:	4642      	mov	r2, r8
 80070be:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 80070c2:	a901      	add	r1, sp, #4
 80070c4:	4648      	mov	r0, r9
 80070c6:	f000 fccb 	bl	8007a60 <_wcrtomb_r>
 80070ca:	1c42      	adds	r2, r0, #1
 80070cc:	4606      	mov	r6, r0
 80070ce:	d02f      	beq.n	8007130 <__fputwc+0x90>
 80070d0:	b320      	cbz	r0, 800711c <__fputwc+0x7c>
 80070d2:	f89d c004 	ldrb.w	ip, [sp, #4]
 80070d6:	2500      	movs	r5, #0
 80070d8:	f10d 0a04 	add.w	sl, sp, #4
 80070dc:	e009      	b.n	80070f2 <__fputwc+0x52>
 80070de:	6823      	ldr	r3, [r4, #0]
 80070e0:	1c5a      	adds	r2, r3, #1
 80070e2:	6022      	str	r2, [r4, #0]
 80070e4:	f883 c000 	strb.w	ip, [r3]
 80070e8:	3501      	adds	r5, #1
 80070ea:	42b5      	cmp	r5, r6
 80070ec:	d216      	bcs.n	800711c <__fputwc+0x7c>
 80070ee:	f815 c00a 	ldrb.w	ip, [r5, sl]
 80070f2:	68a3      	ldr	r3, [r4, #8]
 80070f4:	3b01      	subs	r3, #1
 80070f6:	2b00      	cmp	r3, #0
 80070f8:	60a3      	str	r3, [r4, #8]
 80070fa:	daf0      	bge.n	80070de <__fputwc+0x3e>
 80070fc:	69a7      	ldr	r7, [r4, #24]
 80070fe:	42bb      	cmp	r3, r7
 8007100:	4661      	mov	r1, ip
 8007102:	4622      	mov	r2, r4
 8007104:	4648      	mov	r0, r9
 8007106:	db02      	blt.n	800710e <__fputwc+0x6e>
 8007108:	f1bc 0f0a 	cmp.w	ip, #10
 800710c:	d1e7      	bne.n	80070de <__fputwc+0x3e>
 800710e:	f000 fc4f 	bl	80079b0 <__swbuf_r>
 8007112:	1c43      	adds	r3, r0, #1
 8007114:	d1e8      	bne.n	80070e8 <__fputwc+0x48>
 8007116:	b002      	add	sp, #8
 8007118:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800711c:	4640      	mov	r0, r8
 800711e:	b002      	add	sp, #8
 8007120:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007124:	fa5f fc88 	uxtb.w	ip, r8
 8007128:	4606      	mov	r6, r0
 800712a:	f88d c004 	strb.w	ip, [sp, #4]
 800712e:	e7d2      	b.n	80070d6 <__fputwc+0x36>
 8007130:	89a3      	ldrh	r3, [r4, #12]
 8007132:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007136:	81a3      	strh	r3, [r4, #12]
 8007138:	b002      	add	sp, #8
 800713a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800713e:	bf00      	nop

08007140 <_fputwc_r>:
 8007140:	b530      	push	{r4, r5, lr}
 8007142:	4605      	mov	r5, r0
 8007144:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007146:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800714a:	07c0      	lsls	r0, r0, #31
 800714c:	4614      	mov	r4, r2
 800714e:	b083      	sub	sp, #12
 8007150:	b29a      	uxth	r2, r3
 8007152:	d401      	bmi.n	8007158 <_fputwc_r+0x18>
 8007154:	0590      	lsls	r0, r2, #22
 8007156:	d51c      	bpl.n	8007192 <_fputwc_r+0x52>
 8007158:	0490      	lsls	r0, r2, #18
 800715a:	d406      	bmi.n	800716a <_fputwc_r+0x2a>
 800715c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800715e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007162:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007166:	81a3      	strh	r3, [r4, #12]
 8007168:	6662      	str	r2, [r4, #100]	; 0x64
 800716a:	4628      	mov	r0, r5
 800716c:	4622      	mov	r2, r4
 800716e:	f7ff ff97 	bl	80070a0 <__fputwc>
 8007172:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007174:	07da      	lsls	r2, r3, #31
 8007176:	4605      	mov	r5, r0
 8007178:	d402      	bmi.n	8007180 <_fputwc_r+0x40>
 800717a:	89a3      	ldrh	r3, [r4, #12]
 800717c:	059b      	lsls	r3, r3, #22
 800717e:	d502      	bpl.n	8007186 <_fputwc_r+0x46>
 8007180:	4628      	mov	r0, r5
 8007182:	b003      	add	sp, #12
 8007184:	bd30      	pop	{r4, r5, pc}
 8007186:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007188:	f7fe ff30 	bl	8005fec <__retarget_lock_release_recursive>
 800718c:	4628      	mov	r0, r5
 800718e:	b003      	add	sp, #12
 8007190:	bd30      	pop	{r4, r5, pc}
 8007192:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007194:	9101      	str	r1, [sp, #4]
 8007196:	f7fe ff27 	bl	8005fe8 <__retarget_lock_acquire_recursive>
 800719a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800719e:	9901      	ldr	r1, [sp, #4]
 80071a0:	b29a      	uxth	r2, r3
 80071a2:	e7d9      	b.n	8007158 <_fputwc_r+0x18>

080071a4 <_fstat_r>:
 80071a4:	b538      	push	{r3, r4, r5, lr}
 80071a6:	460b      	mov	r3, r1
 80071a8:	4c07      	ldr	r4, [pc, #28]	; (80071c8 <_fstat_r+0x24>)
 80071aa:	4605      	mov	r5, r0
 80071ac:	4611      	mov	r1, r2
 80071ae:	4618      	mov	r0, r3
 80071b0:	2300      	movs	r3, #0
 80071b2:	6023      	str	r3, [r4, #0]
 80071b4:	f7fb fd98 	bl	8002ce8 <_fstat>
 80071b8:	1c43      	adds	r3, r0, #1
 80071ba:	d000      	beq.n	80071be <_fstat_r+0x1a>
 80071bc:	bd38      	pop	{r3, r4, r5, pc}
 80071be:	6823      	ldr	r3, [r4, #0]
 80071c0:	2b00      	cmp	r3, #0
 80071c2:	d0fb      	beq.n	80071bc <_fstat_r+0x18>
 80071c4:	602b      	str	r3, [r5, #0]
 80071c6:	bd38      	pop	{r3, r4, r5, pc}
 80071c8:	20000c38 	.word	0x20000c38

080071cc <__sfvwrite_r>:
 80071cc:	6893      	ldr	r3, [r2, #8]
 80071ce:	2b00      	cmp	r3, #0
 80071d0:	f000 80e4 	beq.w	800739c <__sfvwrite_r+0x1d0>
 80071d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80071d8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80071dc:	b29b      	uxth	r3, r3
 80071de:	460c      	mov	r4, r1
 80071e0:	0719      	lsls	r1, r3, #28
 80071e2:	b083      	sub	sp, #12
 80071e4:	4682      	mov	sl, r0
 80071e6:	4690      	mov	r8, r2
 80071e8:	d535      	bpl.n	8007256 <__sfvwrite_r+0x8a>
 80071ea:	6922      	ldr	r2, [r4, #16]
 80071ec:	b39a      	cbz	r2, 8007256 <__sfvwrite_r+0x8a>
 80071ee:	f013 0202 	ands.w	r2, r3, #2
 80071f2:	f8d8 6000 	ldr.w	r6, [r8]
 80071f6:	d03d      	beq.n	8007274 <__sfvwrite_r+0xa8>
 80071f8:	2700      	movs	r7, #0
 80071fa:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80071fe:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8007202:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80074c4 <__sfvwrite_r+0x2f8>
 8007206:	463d      	mov	r5, r7
 8007208:	454d      	cmp	r5, r9
 800720a:	462b      	mov	r3, r5
 800720c:	463a      	mov	r2, r7
 800720e:	bf28      	it	cs
 8007210:	464b      	movcs	r3, r9
 8007212:	4661      	mov	r1, ip
 8007214:	4650      	mov	r0, sl
 8007216:	b1d5      	cbz	r5, 800724e <__sfvwrite_r+0x82>
 8007218:	47d8      	blx	fp
 800721a:	2800      	cmp	r0, #0
 800721c:	f340 80c6 	ble.w	80073ac <__sfvwrite_r+0x1e0>
 8007220:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007224:	1a1b      	subs	r3, r3, r0
 8007226:	4407      	add	r7, r0
 8007228:	1a2d      	subs	r5, r5, r0
 800722a:	f8c8 3008 	str.w	r3, [r8, #8]
 800722e:	2b00      	cmp	r3, #0
 8007230:	f000 80b0 	beq.w	8007394 <__sfvwrite_r+0x1c8>
 8007234:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8007238:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800723c:	454d      	cmp	r5, r9
 800723e:	462b      	mov	r3, r5
 8007240:	463a      	mov	r2, r7
 8007242:	bf28      	it	cs
 8007244:	464b      	movcs	r3, r9
 8007246:	4661      	mov	r1, ip
 8007248:	4650      	mov	r0, sl
 800724a:	2d00      	cmp	r5, #0
 800724c:	d1e4      	bne.n	8007218 <__sfvwrite_r+0x4c>
 800724e:	e9d6 7500 	ldrd	r7, r5, [r6]
 8007252:	3608      	adds	r6, #8
 8007254:	e7d8      	b.n	8007208 <__sfvwrite_r+0x3c>
 8007256:	4621      	mov	r1, r4
 8007258:	4650      	mov	r0, sl
 800725a:	f7fd fbd5 	bl	8004a08 <__swsetup_r>
 800725e:	2800      	cmp	r0, #0
 8007260:	f040 812a 	bne.w	80074b8 <__sfvwrite_r+0x2ec>
 8007264:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007268:	f8d8 6000 	ldr.w	r6, [r8]
 800726c:	b29b      	uxth	r3, r3
 800726e:	f013 0202 	ands.w	r2, r3, #2
 8007272:	d1c1      	bne.n	80071f8 <__sfvwrite_r+0x2c>
 8007274:	f013 0901 	ands.w	r9, r3, #1
 8007278:	d15d      	bne.n	8007336 <__sfvwrite_r+0x16a>
 800727a:	68a7      	ldr	r7, [r4, #8]
 800727c:	6820      	ldr	r0, [r4, #0]
 800727e:	464d      	mov	r5, r9
 8007280:	2d00      	cmp	r5, #0
 8007282:	d054      	beq.n	800732e <__sfvwrite_r+0x162>
 8007284:	059a      	lsls	r2, r3, #22
 8007286:	f140 809b 	bpl.w	80073c0 <__sfvwrite_r+0x1f4>
 800728a:	42af      	cmp	r7, r5
 800728c:	46bb      	mov	fp, r7
 800728e:	f200 80d8 	bhi.w	8007442 <__sfvwrite_r+0x276>
 8007292:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8007296:	d02f      	beq.n	80072f8 <__sfvwrite_r+0x12c>
 8007298:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 800729c:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80072a0:	eba0 0b01 	sub.w	fp, r0, r1
 80072a4:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80072a8:	1c68      	adds	r0, r5, #1
 80072aa:	107f      	asrs	r7, r7, #1
 80072ac:	4458      	add	r0, fp
 80072ae:	42b8      	cmp	r0, r7
 80072b0:	463a      	mov	r2, r7
 80072b2:	bf84      	itt	hi
 80072b4:	4607      	movhi	r7, r0
 80072b6:	463a      	movhi	r2, r7
 80072b8:	055b      	lsls	r3, r3, #21
 80072ba:	f140 80d3 	bpl.w	8007464 <__sfvwrite_r+0x298>
 80072be:	4611      	mov	r1, r2
 80072c0:	4650      	mov	r0, sl
 80072c2:	f7fe ff0d 	bl	80060e0 <_malloc_r>
 80072c6:	2800      	cmp	r0, #0
 80072c8:	f000 80f0 	beq.w	80074ac <__sfvwrite_r+0x2e0>
 80072cc:	465a      	mov	r2, fp
 80072ce:	6921      	ldr	r1, [r4, #16]
 80072d0:	9001      	str	r0, [sp, #4]
 80072d2:	f7f9 f915 	bl	8000500 <memcpy>
 80072d6:	89a2      	ldrh	r2, [r4, #12]
 80072d8:	9b01      	ldr	r3, [sp, #4]
 80072da:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80072de:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80072e2:	81a2      	strh	r2, [r4, #12]
 80072e4:	eba7 020b 	sub.w	r2, r7, fp
 80072e8:	eb03 000b 	add.w	r0, r3, fp
 80072ec:	6167      	str	r7, [r4, #20]
 80072ee:	6123      	str	r3, [r4, #16]
 80072f0:	6020      	str	r0, [r4, #0]
 80072f2:	60a2      	str	r2, [r4, #8]
 80072f4:	462f      	mov	r7, r5
 80072f6:	46ab      	mov	fp, r5
 80072f8:	465a      	mov	r2, fp
 80072fa:	4649      	mov	r1, r9
 80072fc:	f000 f930 	bl	8007560 <memmove>
 8007300:	68a2      	ldr	r2, [r4, #8]
 8007302:	6823      	ldr	r3, [r4, #0]
 8007304:	1bd2      	subs	r2, r2, r7
 8007306:	445b      	add	r3, fp
 8007308:	462f      	mov	r7, r5
 800730a:	60a2      	str	r2, [r4, #8]
 800730c:	6023      	str	r3, [r4, #0]
 800730e:	2500      	movs	r5, #0
 8007310:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007314:	1bdb      	subs	r3, r3, r7
 8007316:	44b9      	add	r9, r7
 8007318:	f8c8 3008 	str.w	r3, [r8, #8]
 800731c:	2b00      	cmp	r3, #0
 800731e:	d039      	beq.n	8007394 <__sfvwrite_r+0x1c8>
 8007320:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007324:	68a7      	ldr	r7, [r4, #8]
 8007326:	6820      	ldr	r0, [r4, #0]
 8007328:	b29b      	uxth	r3, r3
 800732a:	2d00      	cmp	r5, #0
 800732c:	d1aa      	bne.n	8007284 <__sfvwrite_r+0xb8>
 800732e:	e9d6 9500 	ldrd	r9, r5, [r6]
 8007332:	3608      	adds	r6, #8
 8007334:	e7a4      	b.n	8007280 <__sfvwrite_r+0xb4>
 8007336:	4633      	mov	r3, r6
 8007338:	4691      	mov	r9, r2
 800733a:	4610      	mov	r0, r2
 800733c:	4617      	mov	r7, r2
 800733e:	464e      	mov	r6, r9
 8007340:	469b      	mov	fp, r3
 8007342:	2f00      	cmp	r7, #0
 8007344:	d06b      	beq.n	800741e <__sfvwrite_r+0x252>
 8007346:	2800      	cmp	r0, #0
 8007348:	d071      	beq.n	800742e <__sfvwrite_r+0x262>
 800734a:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800734e:	6820      	ldr	r0, [r4, #0]
 8007350:	45b9      	cmp	r9, r7
 8007352:	464b      	mov	r3, r9
 8007354:	bf28      	it	cs
 8007356:	463b      	movcs	r3, r7
 8007358:	4288      	cmp	r0, r1
 800735a:	d903      	bls.n	8007364 <__sfvwrite_r+0x198>
 800735c:	68a5      	ldr	r5, [r4, #8]
 800735e:	4415      	add	r5, r2
 8007360:	42ab      	cmp	r3, r5
 8007362:	dc71      	bgt.n	8007448 <__sfvwrite_r+0x27c>
 8007364:	429a      	cmp	r2, r3
 8007366:	f300 8093 	bgt.w	8007490 <__sfvwrite_r+0x2c4>
 800736a:	4613      	mov	r3, r2
 800736c:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800736e:	69e1      	ldr	r1, [r4, #28]
 8007370:	4632      	mov	r2, r6
 8007372:	4650      	mov	r0, sl
 8007374:	47a8      	blx	r5
 8007376:	1e05      	subs	r5, r0, #0
 8007378:	dd18      	ble.n	80073ac <__sfvwrite_r+0x1e0>
 800737a:	ebb9 0905 	subs.w	r9, r9, r5
 800737e:	d00f      	beq.n	80073a0 <__sfvwrite_r+0x1d4>
 8007380:	2001      	movs	r0, #1
 8007382:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007386:	1b5b      	subs	r3, r3, r5
 8007388:	442e      	add	r6, r5
 800738a:	1b7f      	subs	r7, r7, r5
 800738c:	f8c8 3008 	str.w	r3, [r8, #8]
 8007390:	2b00      	cmp	r3, #0
 8007392:	d1d6      	bne.n	8007342 <__sfvwrite_r+0x176>
 8007394:	2000      	movs	r0, #0
 8007396:	b003      	add	sp, #12
 8007398:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800739c:	2000      	movs	r0, #0
 800739e:	4770      	bx	lr
 80073a0:	4621      	mov	r1, r4
 80073a2:	4650      	mov	r0, sl
 80073a4:	f7fe fbf2 	bl	8005b8c <_fflush_r>
 80073a8:	2800      	cmp	r0, #0
 80073aa:	d0ea      	beq.n	8007382 <__sfvwrite_r+0x1b6>
 80073ac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80073b0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80073b4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80073b8:	81a3      	strh	r3, [r4, #12]
 80073ba:	b003      	add	sp, #12
 80073bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80073c0:	6923      	ldr	r3, [r4, #16]
 80073c2:	4283      	cmp	r3, r0
 80073c4:	d315      	bcc.n	80073f2 <__sfvwrite_r+0x226>
 80073c6:	6961      	ldr	r1, [r4, #20]
 80073c8:	42a9      	cmp	r1, r5
 80073ca:	d812      	bhi.n	80073f2 <__sfvwrite_r+0x226>
 80073cc:	4b3c      	ldr	r3, [pc, #240]	; (80074c0 <__sfvwrite_r+0x2f4>)
 80073ce:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80073d0:	429d      	cmp	r5, r3
 80073d2:	bf94      	ite	ls
 80073d4:	462b      	movls	r3, r5
 80073d6:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80073da:	464a      	mov	r2, r9
 80073dc:	fb93 f3f1 	sdiv	r3, r3, r1
 80073e0:	4650      	mov	r0, sl
 80073e2:	fb01 f303 	mul.w	r3, r1, r3
 80073e6:	69e1      	ldr	r1, [r4, #28]
 80073e8:	47b8      	blx	r7
 80073ea:	1e07      	subs	r7, r0, #0
 80073ec:	ddde      	ble.n	80073ac <__sfvwrite_r+0x1e0>
 80073ee:	1bed      	subs	r5, r5, r7
 80073f0:	e78e      	b.n	8007310 <__sfvwrite_r+0x144>
 80073f2:	42af      	cmp	r7, r5
 80073f4:	bf28      	it	cs
 80073f6:	462f      	movcs	r7, r5
 80073f8:	463a      	mov	r2, r7
 80073fa:	4649      	mov	r1, r9
 80073fc:	f000 f8b0 	bl	8007560 <memmove>
 8007400:	68a3      	ldr	r3, [r4, #8]
 8007402:	6822      	ldr	r2, [r4, #0]
 8007404:	1bdb      	subs	r3, r3, r7
 8007406:	443a      	add	r2, r7
 8007408:	60a3      	str	r3, [r4, #8]
 800740a:	6022      	str	r2, [r4, #0]
 800740c:	2b00      	cmp	r3, #0
 800740e:	d1ee      	bne.n	80073ee <__sfvwrite_r+0x222>
 8007410:	4621      	mov	r1, r4
 8007412:	4650      	mov	r0, sl
 8007414:	f7fe fbba 	bl	8005b8c <_fflush_r>
 8007418:	2800      	cmp	r0, #0
 800741a:	d0e8      	beq.n	80073ee <__sfvwrite_r+0x222>
 800741c:	e7c6      	b.n	80073ac <__sfvwrite_r+0x1e0>
 800741e:	f10b 0308 	add.w	r3, fp, #8
 8007422:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8007426:	469b      	mov	fp, r3
 8007428:	3308      	adds	r3, #8
 800742a:	2f00      	cmp	r7, #0
 800742c:	d0f9      	beq.n	8007422 <__sfvwrite_r+0x256>
 800742e:	463a      	mov	r2, r7
 8007430:	210a      	movs	r1, #10
 8007432:	4630      	mov	r0, r6
 8007434:	f7f9 f974 	bl	8000720 <memchr>
 8007438:	b338      	cbz	r0, 800748a <__sfvwrite_r+0x2be>
 800743a:	3001      	adds	r0, #1
 800743c:	eba0 0906 	sub.w	r9, r0, r6
 8007440:	e783      	b.n	800734a <__sfvwrite_r+0x17e>
 8007442:	462f      	mov	r7, r5
 8007444:	46ab      	mov	fp, r5
 8007446:	e757      	b.n	80072f8 <__sfvwrite_r+0x12c>
 8007448:	4631      	mov	r1, r6
 800744a:	462a      	mov	r2, r5
 800744c:	f000 f888 	bl	8007560 <memmove>
 8007450:	6823      	ldr	r3, [r4, #0]
 8007452:	442b      	add	r3, r5
 8007454:	6023      	str	r3, [r4, #0]
 8007456:	4621      	mov	r1, r4
 8007458:	4650      	mov	r0, sl
 800745a:	f7fe fb97 	bl	8005b8c <_fflush_r>
 800745e:	2800      	cmp	r0, #0
 8007460:	d08b      	beq.n	800737a <__sfvwrite_r+0x1ae>
 8007462:	e7a3      	b.n	80073ac <__sfvwrite_r+0x1e0>
 8007464:	4650      	mov	r0, sl
 8007466:	f000 f8f5 	bl	8007654 <_realloc_r>
 800746a:	4603      	mov	r3, r0
 800746c:	2800      	cmp	r0, #0
 800746e:	f47f af39 	bne.w	80072e4 <__sfvwrite_r+0x118>
 8007472:	6921      	ldr	r1, [r4, #16]
 8007474:	4650      	mov	r0, sl
 8007476:	f7fe fc87 	bl	8005d88 <_free_r>
 800747a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800747e:	220c      	movs	r2, #12
 8007480:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8007484:	f8ca 2000 	str.w	r2, [sl]
 8007488:	e792      	b.n	80073b0 <__sfvwrite_r+0x1e4>
 800748a:	f107 0901 	add.w	r9, r7, #1
 800748e:	e75c      	b.n	800734a <__sfvwrite_r+0x17e>
 8007490:	461a      	mov	r2, r3
 8007492:	4631      	mov	r1, r6
 8007494:	9301      	str	r3, [sp, #4]
 8007496:	f000 f863 	bl	8007560 <memmove>
 800749a:	9b01      	ldr	r3, [sp, #4]
 800749c:	68a1      	ldr	r1, [r4, #8]
 800749e:	6822      	ldr	r2, [r4, #0]
 80074a0:	1ac9      	subs	r1, r1, r3
 80074a2:	441a      	add	r2, r3
 80074a4:	60a1      	str	r1, [r4, #8]
 80074a6:	6022      	str	r2, [r4, #0]
 80074a8:	461d      	mov	r5, r3
 80074aa:	e766      	b.n	800737a <__sfvwrite_r+0x1ae>
 80074ac:	230c      	movs	r3, #12
 80074ae:	f8ca 3000 	str.w	r3, [sl]
 80074b2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80074b6:	e77b      	b.n	80073b0 <__sfvwrite_r+0x1e4>
 80074b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80074bc:	e76b      	b.n	8007396 <__sfvwrite_r+0x1ca>
 80074be:	bf00      	nop
 80074c0:	7ffffffe 	.word	0x7ffffffe
 80074c4:	7ffffc00 	.word	0x7ffffc00

080074c8 <_isatty_r>:
 80074c8:	b538      	push	{r3, r4, r5, lr}
 80074ca:	4c07      	ldr	r4, [pc, #28]	; (80074e8 <_isatty_r+0x20>)
 80074cc:	2300      	movs	r3, #0
 80074ce:	4605      	mov	r5, r0
 80074d0:	4608      	mov	r0, r1
 80074d2:	6023      	str	r3, [r4, #0]
 80074d4:	f7fb fc16 	bl	8002d04 <_isatty>
 80074d8:	1c43      	adds	r3, r0, #1
 80074da:	d000      	beq.n	80074de <_isatty_r+0x16>
 80074dc:	bd38      	pop	{r3, r4, r5, pc}
 80074de:	6823      	ldr	r3, [r4, #0]
 80074e0:	2b00      	cmp	r3, #0
 80074e2:	d0fb      	beq.n	80074dc <_isatty_r+0x14>
 80074e4:	602b      	str	r3, [r5, #0]
 80074e6:	bd38      	pop	{r3, r4, r5, pc}
 80074e8:	20000c38 	.word	0x20000c38

080074ec <__locale_mb_cur_max>:
 80074ec:	4b04      	ldr	r3, [pc, #16]	; (8007500 <__locale_mb_cur_max+0x14>)
 80074ee:	4a05      	ldr	r2, [pc, #20]	; (8007504 <__locale_mb_cur_max+0x18>)
 80074f0:	681b      	ldr	r3, [r3, #0]
 80074f2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80074f4:	2b00      	cmp	r3, #0
 80074f6:	bf08      	it	eq
 80074f8:	4613      	moveq	r3, r2
 80074fa:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 80074fe:	4770      	bx	lr
 8007500:	20000018 	.word	0x20000018
 8007504:	2000085c 	.word	0x2000085c

08007508 <_lseek_r>:
 8007508:	b570      	push	{r4, r5, r6, lr}
 800750a:	460d      	mov	r5, r1
 800750c:	4c08      	ldr	r4, [pc, #32]	; (8007530 <_lseek_r+0x28>)
 800750e:	4611      	mov	r1, r2
 8007510:	4606      	mov	r6, r0
 8007512:	461a      	mov	r2, r3
 8007514:	4628      	mov	r0, r5
 8007516:	2300      	movs	r3, #0
 8007518:	6023      	str	r3, [r4, #0]
 800751a:	f7fb fbfa 	bl	8002d12 <_lseek>
 800751e:	1c43      	adds	r3, r0, #1
 8007520:	d000      	beq.n	8007524 <_lseek_r+0x1c>
 8007522:	bd70      	pop	{r4, r5, r6, pc}
 8007524:	6823      	ldr	r3, [r4, #0]
 8007526:	2b00      	cmp	r3, #0
 8007528:	d0fb      	beq.n	8007522 <_lseek_r+0x1a>
 800752a:	6033      	str	r3, [r6, #0]
 800752c:	bd70      	pop	{r4, r5, r6, pc}
 800752e:	bf00      	nop
 8007530:	20000c38 	.word	0x20000c38

08007534 <__ascii_mbtowc>:
 8007534:	b082      	sub	sp, #8
 8007536:	b149      	cbz	r1, 800754c <__ascii_mbtowc+0x18>
 8007538:	b15a      	cbz	r2, 8007552 <__ascii_mbtowc+0x1e>
 800753a:	b16b      	cbz	r3, 8007558 <__ascii_mbtowc+0x24>
 800753c:	7813      	ldrb	r3, [r2, #0]
 800753e:	600b      	str	r3, [r1, #0]
 8007540:	7812      	ldrb	r2, [r2, #0]
 8007542:	1c10      	adds	r0, r2, #0
 8007544:	bf18      	it	ne
 8007546:	2001      	movne	r0, #1
 8007548:	b002      	add	sp, #8
 800754a:	4770      	bx	lr
 800754c:	a901      	add	r1, sp, #4
 800754e:	2a00      	cmp	r2, #0
 8007550:	d1f3      	bne.n	800753a <__ascii_mbtowc+0x6>
 8007552:	4610      	mov	r0, r2
 8007554:	b002      	add	sp, #8
 8007556:	4770      	bx	lr
 8007558:	f06f 0001 	mvn.w	r0, #1
 800755c:	e7f4      	b.n	8007548 <__ascii_mbtowc+0x14>
 800755e:	bf00      	nop

08007560 <memmove>:
 8007560:	4288      	cmp	r0, r1
 8007562:	b4f0      	push	{r4, r5, r6, r7}
 8007564:	d90d      	bls.n	8007582 <memmove+0x22>
 8007566:	188b      	adds	r3, r1, r2
 8007568:	4283      	cmp	r3, r0
 800756a:	d90a      	bls.n	8007582 <memmove+0x22>
 800756c:	1884      	adds	r4, r0, r2
 800756e:	b132      	cbz	r2, 800757e <memmove+0x1e>
 8007570:	4622      	mov	r2, r4
 8007572:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8007576:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800757a:	4299      	cmp	r1, r3
 800757c:	d1f9      	bne.n	8007572 <memmove+0x12>
 800757e:	bcf0      	pop	{r4, r5, r6, r7}
 8007580:	4770      	bx	lr
 8007582:	2a0f      	cmp	r2, #15
 8007584:	d949      	bls.n	800761a <memmove+0xba>
 8007586:	ea40 0301 	orr.w	r3, r0, r1
 800758a:	079b      	lsls	r3, r3, #30
 800758c:	d147      	bne.n	800761e <memmove+0xbe>
 800758e:	f1a2 0310 	sub.w	r3, r2, #16
 8007592:	091b      	lsrs	r3, r3, #4
 8007594:	f101 0720 	add.w	r7, r1, #32
 8007598:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 800759c:	f101 0410 	add.w	r4, r1, #16
 80075a0:	f100 0510 	add.w	r5, r0, #16
 80075a4:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80075a8:	f845 6c10 	str.w	r6, [r5, #-16]
 80075ac:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80075b0:	f845 6c0c 	str.w	r6, [r5, #-12]
 80075b4:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80075b8:	f845 6c08 	str.w	r6, [r5, #-8]
 80075bc:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80075c0:	f845 6c04 	str.w	r6, [r5, #-4]
 80075c4:	3410      	adds	r4, #16
 80075c6:	42bc      	cmp	r4, r7
 80075c8:	f105 0510 	add.w	r5, r5, #16
 80075cc:	d1ea      	bne.n	80075a4 <memmove+0x44>
 80075ce:	3301      	adds	r3, #1
 80075d0:	f002 050f 	and.w	r5, r2, #15
 80075d4:	011b      	lsls	r3, r3, #4
 80075d6:	2d03      	cmp	r5, #3
 80075d8:	4419      	add	r1, r3
 80075da:	4403      	add	r3, r0
 80075dc:	d921      	bls.n	8007622 <memmove+0xc2>
 80075de:	1f1f      	subs	r7, r3, #4
 80075e0:	460e      	mov	r6, r1
 80075e2:	462c      	mov	r4, r5
 80075e4:	3c04      	subs	r4, #4
 80075e6:	f856 cb04 	ldr.w	ip, [r6], #4
 80075ea:	f847 cf04 	str.w	ip, [r7, #4]!
 80075ee:	2c03      	cmp	r4, #3
 80075f0:	d8f8      	bhi.n	80075e4 <memmove+0x84>
 80075f2:	1f2c      	subs	r4, r5, #4
 80075f4:	f024 0403 	bic.w	r4, r4, #3
 80075f8:	3404      	adds	r4, #4
 80075fa:	4423      	add	r3, r4
 80075fc:	4421      	add	r1, r4
 80075fe:	f002 0203 	and.w	r2, r2, #3
 8007602:	2a00      	cmp	r2, #0
 8007604:	d0bb      	beq.n	800757e <memmove+0x1e>
 8007606:	3b01      	subs	r3, #1
 8007608:	440a      	add	r2, r1
 800760a:	f811 4b01 	ldrb.w	r4, [r1], #1
 800760e:	f803 4f01 	strb.w	r4, [r3, #1]!
 8007612:	4291      	cmp	r1, r2
 8007614:	d1f9      	bne.n	800760a <memmove+0xaa>
 8007616:	bcf0      	pop	{r4, r5, r6, r7}
 8007618:	4770      	bx	lr
 800761a:	4603      	mov	r3, r0
 800761c:	e7f1      	b.n	8007602 <memmove+0xa2>
 800761e:	4603      	mov	r3, r0
 8007620:	e7f1      	b.n	8007606 <memmove+0xa6>
 8007622:	462a      	mov	r2, r5
 8007624:	e7ed      	b.n	8007602 <memmove+0xa2>
 8007626:	bf00      	nop

08007628 <_read_r>:
 8007628:	b570      	push	{r4, r5, r6, lr}
 800762a:	460d      	mov	r5, r1
 800762c:	4c08      	ldr	r4, [pc, #32]	; (8007650 <_read_r+0x28>)
 800762e:	4611      	mov	r1, r2
 8007630:	4606      	mov	r6, r0
 8007632:	461a      	mov	r2, r3
 8007634:	4628      	mov	r0, r5
 8007636:	2300      	movs	r3, #0
 8007638:	6023      	str	r3, [r4, #0]
 800763a:	f7fb fac4 	bl	8002bc6 <_read>
 800763e:	1c43      	adds	r3, r0, #1
 8007640:	d000      	beq.n	8007644 <_read_r+0x1c>
 8007642:	bd70      	pop	{r4, r5, r6, pc}
 8007644:	6823      	ldr	r3, [r4, #0]
 8007646:	2b00      	cmp	r3, #0
 8007648:	d0fb      	beq.n	8007642 <_read_r+0x1a>
 800764a:	6033      	str	r3, [r6, #0]
 800764c:	bd70      	pop	{r4, r5, r6, pc}
 800764e:	bf00      	nop
 8007650:	20000c38 	.word	0x20000c38

08007654 <_realloc_r>:
 8007654:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007658:	4692      	mov	sl, r2
 800765a:	b083      	sub	sp, #12
 800765c:	2900      	cmp	r1, #0
 800765e:	f000 80a1 	beq.w	80077a4 <_realloc_r+0x150>
 8007662:	460d      	mov	r5, r1
 8007664:	4680      	mov	r8, r0
 8007666:	f10a 040b 	add.w	r4, sl, #11
 800766a:	f7fe ffdd 	bl	8006628 <__malloc_lock>
 800766e:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8007672:	2c16      	cmp	r4, #22
 8007674:	f022 0603 	bic.w	r6, r2, #3
 8007678:	f1a5 0708 	sub.w	r7, r5, #8
 800767c:	d83e      	bhi.n	80076fc <_realloc_r+0xa8>
 800767e:	2410      	movs	r4, #16
 8007680:	4621      	mov	r1, r4
 8007682:	45a2      	cmp	sl, r4
 8007684:	d83f      	bhi.n	8007706 <_realloc_r+0xb2>
 8007686:	428e      	cmp	r6, r1
 8007688:	eb07 0906 	add.w	r9, r7, r6
 800768c:	da74      	bge.n	8007778 <_realloc_r+0x124>
 800768e:	4bc7      	ldr	r3, [pc, #796]	; (80079ac <_realloc_r+0x358>)
 8007690:	6898      	ldr	r0, [r3, #8]
 8007692:	4548      	cmp	r0, r9
 8007694:	f000 80aa 	beq.w	80077ec <_realloc_r+0x198>
 8007698:	f8d9 0004 	ldr.w	r0, [r9, #4]
 800769c:	f020 0301 	bic.w	r3, r0, #1
 80076a0:	444b      	add	r3, r9
 80076a2:	685b      	ldr	r3, [r3, #4]
 80076a4:	07db      	lsls	r3, r3, #31
 80076a6:	f140 8083 	bpl.w	80077b0 <_realloc_r+0x15c>
 80076aa:	07d2      	lsls	r2, r2, #31
 80076ac:	d534      	bpl.n	8007718 <_realloc_r+0xc4>
 80076ae:	4651      	mov	r1, sl
 80076b0:	4640      	mov	r0, r8
 80076b2:	f7fe fd15 	bl	80060e0 <_malloc_r>
 80076b6:	4682      	mov	sl, r0
 80076b8:	b1e0      	cbz	r0, 80076f4 <_realloc_r+0xa0>
 80076ba:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80076be:	f023 0301 	bic.w	r3, r3, #1
 80076c2:	443b      	add	r3, r7
 80076c4:	f1a0 0208 	sub.w	r2, r0, #8
 80076c8:	4293      	cmp	r3, r2
 80076ca:	f000 80f9 	beq.w	80078c0 <_realloc_r+0x26c>
 80076ce:	1f32      	subs	r2, r6, #4
 80076d0:	2a24      	cmp	r2, #36	; 0x24
 80076d2:	f200 8107 	bhi.w	80078e4 <_realloc_r+0x290>
 80076d6:	2a13      	cmp	r2, #19
 80076d8:	6829      	ldr	r1, [r5, #0]
 80076da:	f200 80e6 	bhi.w	80078aa <_realloc_r+0x256>
 80076de:	4603      	mov	r3, r0
 80076e0:	462a      	mov	r2, r5
 80076e2:	6019      	str	r1, [r3, #0]
 80076e4:	6851      	ldr	r1, [r2, #4]
 80076e6:	6059      	str	r1, [r3, #4]
 80076e8:	6892      	ldr	r2, [r2, #8]
 80076ea:	609a      	str	r2, [r3, #8]
 80076ec:	4629      	mov	r1, r5
 80076ee:	4640      	mov	r0, r8
 80076f0:	f7fe fb4a 	bl	8005d88 <_free_r>
 80076f4:	4640      	mov	r0, r8
 80076f6:	f7fe ff9d 	bl	8006634 <__malloc_unlock>
 80076fa:	e04f      	b.n	800779c <_realloc_r+0x148>
 80076fc:	f024 0407 	bic.w	r4, r4, #7
 8007700:	2c00      	cmp	r4, #0
 8007702:	4621      	mov	r1, r4
 8007704:	dabd      	bge.n	8007682 <_realloc_r+0x2e>
 8007706:	f04f 0a00 	mov.w	sl, #0
 800770a:	230c      	movs	r3, #12
 800770c:	4650      	mov	r0, sl
 800770e:	f8c8 3000 	str.w	r3, [r8]
 8007712:	b003      	add	sp, #12
 8007714:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007718:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800771c:	eba7 0b03 	sub.w	fp, r7, r3
 8007720:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007724:	f022 0203 	bic.w	r2, r2, #3
 8007728:	18b3      	adds	r3, r6, r2
 800772a:	428b      	cmp	r3, r1
 800772c:	dbbf      	blt.n	80076ae <_realloc_r+0x5a>
 800772e:	46da      	mov	sl, fp
 8007730:	f8db 100c 	ldr.w	r1, [fp, #12]
 8007734:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8007738:	1f32      	subs	r2, r6, #4
 800773a:	2a24      	cmp	r2, #36	; 0x24
 800773c:	60c1      	str	r1, [r0, #12]
 800773e:	eb0b 0903 	add.w	r9, fp, r3
 8007742:	6088      	str	r0, [r1, #8]
 8007744:	f200 80c6 	bhi.w	80078d4 <_realloc_r+0x280>
 8007748:	2a13      	cmp	r2, #19
 800774a:	6829      	ldr	r1, [r5, #0]
 800774c:	f240 80c0 	bls.w	80078d0 <_realloc_r+0x27c>
 8007750:	f8cb 1008 	str.w	r1, [fp, #8]
 8007754:	6869      	ldr	r1, [r5, #4]
 8007756:	f8cb 100c 	str.w	r1, [fp, #12]
 800775a:	2a1b      	cmp	r2, #27
 800775c:	68a9      	ldr	r1, [r5, #8]
 800775e:	f200 80d8 	bhi.w	8007912 <_realloc_r+0x2be>
 8007762:	f10b 0210 	add.w	r2, fp, #16
 8007766:	3508      	adds	r5, #8
 8007768:	6011      	str	r1, [r2, #0]
 800776a:	6869      	ldr	r1, [r5, #4]
 800776c:	6051      	str	r1, [r2, #4]
 800776e:	68a9      	ldr	r1, [r5, #8]
 8007770:	6091      	str	r1, [r2, #8]
 8007772:	461e      	mov	r6, r3
 8007774:	465f      	mov	r7, fp
 8007776:	4655      	mov	r5, sl
 8007778:	687b      	ldr	r3, [r7, #4]
 800777a:	1b32      	subs	r2, r6, r4
 800777c:	2a0f      	cmp	r2, #15
 800777e:	f003 0301 	and.w	r3, r3, #1
 8007782:	d822      	bhi.n	80077ca <_realloc_r+0x176>
 8007784:	4333      	orrs	r3, r6
 8007786:	607b      	str	r3, [r7, #4]
 8007788:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800778c:	f043 0301 	orr.w	r3, r3, #1
 8007790:	f8c9 3004 	str.w	r3, [r9, #4]
 8007794:	4640      	mov	r0, r8
 8007796:	f7fe ff4d 	bl	8006634 <__malloc_unlock>
 800779a:	46aa      	mov	sl, r5
 800779c:	4650      	mov	r0, sl
 800779e:	b003      	add	sp, #12
 80077a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80077a4:	4611      	mov	r1, r2
 80077a6:	b003      	add	sp, #12
 80077a8:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80077ac:	f7fe bc98 	b.w	80060e0 <_malloc_r>
 80077b0:	f020 0003 	bic.w	r0, r0, #3
 80077b4:	1833      	adds	r3, r6, r0
 80077b6:	428b      	cmp	r3, r1
 80077b8:	db61      	blt.n	800787e <_realloc_r+0x22a>
 80077ba:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80077be:	461e      	mov	r6, r3
 80077c0:	60ca      	str	r2, [r1, #12]
 80077c2:	eb07 0903 	add.w	r9, r7, r3
 80077c6:	6091      	str	r1, [r2, #8]
 80077c8:	e7d6      	b.n	8007778 <_realloc_r+0x124>
 80077ca:	1939      	adds	r1, r7, r4
 80077cc:	4323      	orrs	r3, r4
 80077ce:	f042 0201 	orr.w	r2, r2, #1
 80077d2:	607b      	str	r3, [r7, #4]
 80077d4:	604a      	str	r2, [r1, #4]
 80077d6:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80077da:	f043 0301 	orr.w	r3, r3, #1
 80077de:	3108      	adds	r1, #8
 80077e0:	f8c9 3004 	str.w	r3, [r9, #4]
 80077e4:	4640      	mov	r0, r8
 80077e6:	f7fe facf 	bl	8005d88 <_free_r>
 80077ea:	e7d3      	b.n	8007794 <_realloc_r+0x140>
 80077ec:	6840      	ldr	r0, [r0, #4]
 80077ee:	f020 0903 	bic.w	r9, r0, #3
 80077f2:	44b1      	add	r9, r6
 80077f4:	f104 0010 	add.w	r0, r4, #16
 80077f8:	4581      	cmp	r9, r0
 80077fa:	da77      	bge.n	80078ec <_realloc_r+0x298>
 80077fc:	07d2      	lsls	r2, r2, #31
 80077fe:	f53f af56 	bmi.w	80076ae <_realloc_r+0x5a>
 8007802:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8007806:	eba7 0b02 	sub.w	fp, r7, r2
 800780a:	f8db 2004 	ldr.w	r2, [fp, #4]
 800780e:	f022 0203 	bic.w	r2, r2, #3
 8007812:	4491      	add	r9, r2
 8007814:	4548      	cmp	r0, r9
 8007816:	dc87      	bgt.n	8007728 <_realloc_r+0xd4>
 8007818:	46da      	mov	sl, fp
 800781a:	f8db 100c 	ldr.w	r1, [fp, #12]
 800781e:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8007822:	1f32      	subs	r2, r6, #4
 8007824:	2a24      	cmp	r2, #36	; 0x24
 8007826:	60c1      	str	r1, [r0, #12]
 8007828:	6088      	str	r0, [r1, #8]
 800782a:	f200 80a1 	bhi.w	8007970 <_realloc_r+0x31c>
 800782e:	2a13      	cmp	r2, #19
 8007830:	6829      	ldr	r1, [r5, #0]
 8007832:	f240 809b 	bls.w	800796c <_realloc_r+0x318>
 8007836:	f8cb 1008 	str.w	r1, [fp, #8]
 800783a:	6869      	ldr	r1, [r5, #4]
 800783c:	f8cb 100c 	str.w	r1, [fp, #12]
 8007840:	2a1b      	cmp	r2, #27
 8007842:	68a9      	ldr	r1, [r5, #8]
 8007844:	f200 809b 	bhi.w	800797e <_realloc_r+0x32a>
 8007848:	f10b 0210 	add.w	r2, fp, #16
 800784c:	3508      	adds	r5, #8
 800784e:	6011      	str	r1, [r2, #0]
 8007850:	6869      	ldr	r1, [r5, #4]
 8007852:	6051      	str	r1, [r2, #4]
 8007854:	68a9      	ldr	r1, [r5, #8]
 8007856:	6091      	str	r1, [r2, #8]
 8007858:	eb0b 0104 	add.w	r1, fp, r4
 800785c:	eba9 0204 	sub.w	r2, r9, r4
 8007860:	f042 0201 	orr.w	r2, r2, #1
 8007864:	6099      	str	r1, [r3, #8]
 8007866:	604a      	str	r2, [r1, #4]
 8007868:	f8db 3004 	ldr.w	r3, [fp, #4]
 800786c:	f003 0301 	and.w	r3, r3, #1
 8007870:	431c      	orrs	r4, r3
 8007872:	4640      	mov	r0, r8
 8007874:	f8cb 4004 	str.w	r4, [fp, #4]
 8007878:	f7fe fedc 	bl	8006634 <__malloc_unlock>
 800787c:	e78e      	b.n	800779c <_realloc_r+0x148>
 800787e:	07d3      	lsls	r3, r2, #31
 8007880:	f53f af15 	bmi.w	80076ae <_realloc_r+0x5a>
 8007884:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8007888:	eba7 0b03 	sub.w	fp, r7, r3
 800788c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007890:	f022 0203 	bic.w	r2, r2, #3
 8007894:	4410      	add	r0, r2
 8007896:	1983      	adds	r3, r0, r6
 8007898:	428b      	cmp	r3, r1
 800789a:	f6ff af45 	blt.w	8007728 <_realloc_r+0xd4>
 800789e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80078a2:	46da      	mov	sl, fp
 80078a4:	60ca      	str	r2, [r1, #12]
 80078a6:	6091      	str	r1, [r2, #8]
 80078a8:	e742      	b.n	8007730 <_realloc_r+0xdc>
 80078aa:	6001      	str	r1, [r0, #0]
 80078ac:	686b      	ldr	r3, [r5, #4]
 80078ae:	6043      	str	r3, [r0, #4]
 80078b0:	2a1b      	cmp	r2, #27
 80078b2:	d83a      	bhi.n	800792a <_realloc_r+0x2d6>
 80078b4:	f105 0208 	add.w	r2, r5, #8
 80078b8:	f100 0308 	add.w	r3, r0, #8
 80078bc:	68a9      	ldr	r1, [r5, #8]
 80078be:	e710      	b.n	80076e2 <_realloc_r+0x8e>
 80078c0:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80078c4:	f023 0303 	bic.w	r3, r3, #3
 80078c8:	441e      	add	r6, r3
 80078ca:	eb07 0906 	add.w	r9, r7, r6
 80078ce:	e753      	b.n	8007778 <_realloc_r+0x124>
 80078d0:	4652      	mov	r2, sl
 80078d2:	e749      	b.n	8007768 <_realloc_r+0x114>
 80078d4:	4629      	mov	r1, r5
 80078d6:	4650      	mov	r0, sl
 80078d8:	461e      	mov	r6, r3
 80078da:	465f      	mov	r7, fp
 80078dc:	f7ff fe40 	bl	8007560 <memmove>
 80078e0:	4655      	mov	r5, sl
 80078e2:	e749      	b.n	8007778 <_realloc_r+0x124>
 80078e4:	4629      	mov	r1, r5
 80078e6:	f7ff fe3b 	bl	8007560 <memmove>
 80078ea:	e6ff      	b.n	80076ec <_realloc_r+0x98>
 80078ec:	4427      	add	r7, r4
 80078ee:	eba9 0904 	sub.w	r9, r9, r4
 80078f2:	f049 0201 	orr.w	r2, r9, #1
 80078f6:	609f      	str	r7, [r3, #8]
 80078f8:	607a      	str	r2, [r7, #4]
 80078fa:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80078fe:	f003 0301 	and.w	r3, r3, #1
 8007902:	431c      	orrs	r4, r3
 8007904:	4640      	mov	r0, r8
 8007906:	f845 4c04 	str.w	r4, [r5, #-4]
 800790a:	f7fe fe93 	bl	8006634 <__malloc_unlock>
 800790e:	46aa      	mov	sl, r5
 8007910:	e744      	b.n	800779c <_realloc_r+0x148>
 8007912:	f8cb 1010 	str.w	r1, [fp, #16]
 8007916:	68e9      	ldr	r1, [r5, #12]
 8007918:	f8cb 1014 	str.w	r1, [fp, #20]
 800791c:	2a24      	cmp	r2, #36	; 0x24
 800791e:	d010      	beq.n	8007942 <_realloc_r+0x2ee>
 8007920:	6929      	ldr	r1, [r5, #16]
 8007922:	f10b 0218 	add.w	r2, fp, #24
 8007926:	3510      	adds	r5, #16
 8007928:	e71e      	b.n	8007768 <_realloc_r+0x114>
 800792a:	68ab      	ldr	r3, [r5, #8]
 800792c:	6083      	str	r3, [r0, #8]
 800792e:	68eb      	ldr	r3, [r5, #12]
 8007930:	60c3      	str	r3, [r0, #12]
 8007932:	2a24      	cmp	r2, #36	; 0x24
 8007934:	d010      	beq.n	8007958 <_realloc_r+0x304>
 8007936:	f105 0210 	add.w	r2, r5, #16
 800793a:	f100 0310 	add.w	r3, r0, #16
 800793e:	6929      	ldr	r1, [r5, #16]
 8007940:	e6cf      	b.n	80076e2 <_realloc_r+0x8e>
 8007942:	692a      	ldr	r2, [r5, #16]
 8007944:	f8cb 2018 	str.w	r2, [fp, #24]
 8007948:	696a      	ldr	r2, [r5, #20]
 800794a:	f8cb 201c 	str.w	r2, [fp, #28]
 800794e:	69a9      	ldr	r1, [r5, #24]
 8007950:	f10b 0220 	add.w	r2, fp, #32
 8007954:	3518      	adds	r5, #24
 8007956:	e707      	b.n	8007768 <_realloc_r+0x114>
 8007958:	692b      	ldr	r3, [r5, #16]
 800795a:	6103      	str	r3, [r0, #16]
 800795c:	696b      	ldr	r3, [r5, #20]
 800795e:	6143      	str	r3, [r0, #20]
 8007960:	69a9      	ldr	r1, [r5, #24]
 8007962:	f105 0218 	add.w	r2, r5, #24
 8007966:	f100 0318 	add.w	r3, r0, #24
 800796a:	e6ba      	b.n	80076e2 <_realloc_r+0x8e>
 800796c:	4652      	mov	r2, sl
 800796e:	e76e      	b.n	800784e <_realloc_r+0x1fa>
 8007970:	4629      	mov	r1, r5
 8007972:	4650      	mov	r0, sl
 8007974:	9301      	str	r3, [sp, #4]
 8007976:	f7ff fdf3 	bl	8007560 <memmove>
 800797a:	9b01      	ldr	r3, [sp, #4]
 800797c:	e76c      	b.n	8007858 <_realloc_r+0x204>
 800797e:	f8cb 1010 	str.w	r1, [fp, #16]
 8007982:	68e9      	ldr	r1, [r5, #12]
 8007984:	f8cb 1014 	str.w	r1, [fp, #20]
 8007988:	2a24      	cmp	r2, #36	; 0x24
 800798a:	d004      	beq.n	8007996 <_realloc_r+0x342>
 800798c:	6929      	ldr	r1, [r5, #16]
 800798e:	f10b 0218 	add.w	r2, fp, #24
 8007992:	3510      	adds	r5, #16
 8007994:	e75b      	b.n	800784e <_realloc_r+0x1fa>
 8007996:	692a      	ldr	r2, [r5, #16]
 8007998:	f8cb 2018 	str.w	r2, [fp, #24]
 800799c:	696a      	ldr	r2, [r5, #20]
 800799e:	f8cb 201c 	str.w	r2, [fp, #28]
 80079a2:	69a9      	ldr	r1, [r5, #24]
 80079a4:	f10b 0220 	add.w	r2, fp, #32
 80079a8:	3518      	adds	r5, #24
 80079aa:	e750      	b.n	800784e <_realloc_r+0x1fa>
 80079ac:	2000044c 	.word	0x2000044c

080079b0 <__swbuf_r>:
 80079b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80079b2:	460d      	mov	r5, r1
 80079b4:	4614      	mov	r4, r2
 80079b6:	4606      	mov	r6, r0
 80079b8:	b110      	cbz	r0, 80079c0 <__swbuf_r+0x10>
 80079ba:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80079bc:	2b00      	cmp	r3, #0
 80079be:	d043      	beq.n	8007a48 <__swbuf_r+0x98>
 80079c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80079c4:	69a3      	ldr	r3, [r4, #24]
 80079c6:	60a3      	str	r3, [r4, #8]
 80079c8:	b291      	uxth	r1, r2
 80079ca:	0708      	lsls	r0, r1, #28
 80079cc:	d51b      	bpl.n	8007a06 <__swbuf_r+0x56>
 80079ce:	6923      	ldr	r3, [r4, #16]
 80079d0:	b1cb      	cbz	r3, 8007a06 <__swbuf_r+0x56>
 80079d2:	b2ed      	uxtb	r5, r5
 80079d4:	0489      	lsls	r1, r1, #18
 80079d6:	462f      	mov	r7, r5
 80079d8:	d522      	bpl.n	8007a20 <__swbuf_r+0x70>
 80079da:	6822      	ldr	r2, [r4, #0]
 80079dc:	6961      	ldr	r1, [r4, #20]
 80079de:	1ad3      	subs	r3, r2, r3
 80079e0:	4299      	cmp	r1, r3
 80079e2:	dd29      	ble.n	8007a38 <__swbuf_r+0x88>
 80079e4:	3301      	adds	r3, #1
 80079e6:	68a1      	ldr	r1, [r4, #8]
 80079e8:	1c50      	adds	r0, r2, #1
 80079ea:	3901      	subs	r1, #1
 80079ec:	60a1      	str	r1, [r4, #8]
 80079ee:	6020      	str	r0, [r4, #0]
 80079f0:	7015      	strb	r5, [r2, #0]
 80079f2:	6962      	ldr	r2, [r4, #20]
 80079f4:	429a      	cmp	r2, r3
 80079f6:	d02a      	beq.n	8007a4e <__swbuf_r+0x9e>
 80079f8:	89a3      	ldrh	r3, [r4, #12]
 80079fa:	07db      	lsls	r3, r3, #31
 80079fc:	d501      	bpl.n	8007a02 <__swbuf_r+0x52>
 80079fe:	2d0a      	cmp	r5, #10
 8007a00:	d025      	beq.n	8007a4e <__swbuf_r+0x9e>
 8007a02:	4638      	mov	r0, r7
 8007a04:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007a06:	4621      	mov	r1, r4
 8007a08:	4630      	mov	r0, r6
 8007a0a:	f7fc fffd 	bl	8004a08 <__swsetup_r>
 8007a0e:	bb20      	cbnz	r0, 8007a5a <__swbuf_r+0xaa>
 8007a10:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007a14:	6923      	ldr	r3, [r4, #16]
 8007a16:	b291      	uxth	r1, r2
 8007a18:	b2ed      	uxtb	r5, r5
 8007a1a:	0489      	lsls	r1, r1, #18
 8007a1c:	462f      	mov	r7, r5
 8007a1e:	d4dc      	bmi.n	80079da <__swbuf_r+0x2a>
 8007a20:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007a22:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007a26:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007a2a:	81a2      	strh	r2, [r4, #12]
 8007a2c:	6822      	ldr	r2, [r4, #0]
 8007a2e:	6661      	str	r1, [r4, #100]	; 0x64
 8007a30:	6961      	ldr	r1, [r4, #20]
 8007a32:	1ad3      	subs	r3, r2, r3
 8007a34:	4299      	cmp	r1, r3
 8007a36:	dcd5      	bgt.n	80079e4 <__swbuf_r+0x34>
 8007a38:	4621      	mov	r1, r4
 8007a3a:	4630      	mov	r0, r6
 8007a3c:	f7fe f8a6 	bl	8005b8c <_fflush_r>
 8007a40:	b958      	cbnz	r0, 8007a5a <__swbuf_r+0xaa>
 8007a42:	6822      	ldr	r2, [r4, #0]
 8007a44:	2301      	movs	r3, #1
 8007a46:	e7ce      	b.n	80079e6 <__swbuf_r+0x36>
 8007a48:	f7fe f8fc 	bl	8005c44 <__sinit>
 8007a4c:	e7b8      	b.n	80079c0 <__swbuf_r+0x10>
 8007a4e:	4621      	mov	r1, r4
 8007a50:	4630      	mov	r0, r6
 8007a52:	f7fe f89b 	bl	8005b8c <_fflush_r>
 8007a56:	2800      	cmp	r0, #0
 8007a58:	d0d3      	beq.n	8007a02 <__swbuf_r+0x52>
 8007a5a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8007a5e:	e7d0      	b.n	8007a02 <__swbuf_r+0x52>

08007a60 <_wcrtomb_r>:
 8007a60:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007a62:	4c11      	ldr	r4, [pc, #68]	; (8007aa8 <_wcrtomb_r+0x48>)
 8007a64:	6824      	ldr	r4, [r4, #0]
 8007a66:	b085      	sub	sp, #20
 8007a68:	4606      	mov	r6, r0
 8007a6a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8007a6c:	461f      	mov	r7, r3
 8007a6e:	b151      	cbz	r1, 8007a86 <_wcrtomb_r+0x26>
 8007a70:	4d0e      	ldr	r5, [pc, #56]	; (8007aac <_wcrtomb_r+0x4c>)
 8007a72:	2c00      	cmp	r4, #0
 8007a74:	bf08      	it	eq
 8007a76:	462c      	moveq	r4, r5
 8007a78:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007a7c:	47a0      	blx	r4
 8007a7e:	1c43      	adds	r3, r0, #1
 8007a80:	d00c      	beq.n	8007a9c <_wcrtomb_r+0x3c>
 8007a82:	b005      	add	sp, #20
 8007a84:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007a86:	4a09      	ldr	r2, [pc, #36]	; (8007aac <_wcrtomb_r+0x4c>)
 8007a88:	2c00      	cmp	r4, #0
 8007a8a:	bf08      	it	eq
 8007a8c:	4614      	moveq	r4, r2
 8007a8e:	460a      	mov	r2, r1
 8007a90:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007a94:	a901      	add	r1, sp, #4
 8007a96:	47a0      	blx	r4
 8007a98:	1c43      	adds	r3, r0, #1
 8007a9a:	d1f2      	bne.n	8007a82 <_wcrtomb_r+0x22>
 8007a9c:	2200      	movs	r2, #0
 8007a9e:	238a      	movs	r3, #138	; 0x8a
 8007aa0:	603a      	str	r2, [r7, #0]
 8007aa2:	6033      	str	r3, [r6, #0]
 8007aa4:	b005      	add	sp, #20
 8007aa6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007aa8:	20000018 	.word	0x20000018
 8007aac:	2000085c 	.word	0x2000085c

08007ab0 <__ascii_wctomb>:
 8007ab0:	b121      	cbz	r1, 8007abc <__ascii_wctomb+0xc>
 8007ab2:	2aff      	cmp	r2, #255	; 0xff
 8007ab4:	d804      	bhi.n	8007ac0 <__ascii_wctomb+0x10>
 8007ab6:	700a      	strb	r2, [r1, #0]
 8007ab8:	2001      	movs	r0, #1
 8007aba:	4770      	bx	lr
 8007abc:	4608      	mov	r0, r1
 8007abe:	4770      	bx	lr
 8007ac0:	238a      	movs	r3, #138	; 0x8a
 8007ac2:	6003      	str	r3, [r0, #0]
 8007ac4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007ac8:	4770      	bx	lr
 8007aca:	bf00      	nop

08007acc <_init>:
 8007acc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007ace:	bf00      	nop
 8007ad0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007ad2:	bc08      	pop	{r3}
 8007ad4:	469e      	mov	lr, r3
 8007ad6:	4770      	bx	lr

08007ad8 <_fini>:
 8007ad8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007ada:	bf00      	nop
 8007adc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007ade:	bc08      	pop	{r3}
 8007ae0:	469e      	mov	lr, r3
 8007ae2:	4770      	bx	lr
 8007ae4:	0000      	movs	r0, r0
	...
