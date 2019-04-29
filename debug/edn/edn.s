
edn.elf:     file format elf32-littlearm


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
 80001e0:	08007344 	.word	0x08007344

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
 80001fc:	08007344 	.word	0x08007344

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
 8001108:	f241 00ec 	movw	r0, #4332	; 0x10ec
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f241 00ec 	movw	r0, #4332	; 0x10ec
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
 80013e8:	f647 12b8 	movw	r2, #31160	; 0x79b8
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
 8001462:	f647 12b0 	movw	r2, #31152	; 0x79b0
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
 800148c:	f647 12b0 	movw	r2, #31152	; 0x79b0
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
 8001842:	f241 01f0 	movw	r1, #4336	; 0x10f0
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
 800188c:	f241 00f0 	movw	r0, #4336	; 0x10f0
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f241 00f0 	movw	r0, #4336	; 0x10f0
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
 80019d4:	f647 13e8 	movw	r3, #31208	; 0x79e8
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
 80019fc:	f647 13f8 	movw	r3, #31224	; 0x79f8
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

08001eb6 <jpegdct>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	b099      	sub	sp, #100	; 0x64
 8001ec0:	4688      	mov	r8, r1
 8001ec2:	2101      	movs	r1, #1
 8001ec4:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001ec8:	2340      	movs	r3, #64	; 0x40
 8001eca:	2608      	movs	r6, #8
 8001ecc:	250d      	movs	r5, #13
 8001ece:	2400      	movs	r4, #0
 8001ed0:	9118      	str	r1, [sp, #96]	; 0x60
 8001ed2:	9918      	ldr	r1, [sp, #96]	; 0x60
 8001ed4:	9303      	str	r3, [sp, #12]
 8001ed6:	9501      	str	r5, [sp, #4]
 8001ed8:	9602      	str	r6, [sp, #8]
 8001eda:	9400      	str	r4, [sp, #0]
 8001edc:	008b      	lsls	r3, r1, #2
 8001ede:	930c      	str	r3, [sp, #48]	; 0x30
 8001ee0:	b233      	sxth	r3, r6
 8001ee2:	930b      	str	r3, [sp, #44]	; 0x2c
 8001ee4:	13d3      	asrs	r3, r2, #15
 8001ee6:	1392      	asrs	r2, r2, #14
 8001ee8:	9208      	str	r2, [sp, #32]
 8001eea:	b222      	sxth	r2, r4
 8001eec:	930a      	str	r3, [sp, #40]	; 0x28
 8001eee:	b22b      	sxth	r3, r5
 8001ef0:	4605      	mov	r5, r0
 8001ef2:	9207      	str	r2, [sp, #28]
 8001ef4:	004a      	lsls	r2, r1, #1
 8001ef6:	9309      	str	r3, [sp, #36]	; 0x24
 8001ef8:	9206      	str	r2, [sp, #24]
 8001efa:	eb01 0281 	add.w	r2, r1, r1, lsl #2
 8001efe:	9217      	str	r2, [sp, #92]	; 0x5c
 8001f00:	ebc1 02c1 	rsb	r2, r1, r1, lsl #3
 8001f04:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 8001f08:	9216      	str	r2, [sp, #88]	; 0x58
 8001f0a:	2200      	movs	r2, #0
 8001f0c:	9115      	str	r1, [sp, #84]	; 0x54
 8001f0e:	0049      	lsls	r1, r1, #1
 8001f10:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8001f14:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001f16:	9214      	str	r2, [sp, #80]	; 0x50
 8001f18:	f8dd e014 	ldr.w	lr, [sp, #20]
 8001f1c:	f935 2010 	ldrsh.w	r2, [r5, r0, lsl #1]
 8001f20:	9806      	ldr	r0, [sp, #24]
 8001f22:	920e      	str	r2, [sp, #56]	; 0x38
 8001f24:	f935 1010 	ldrsh.w	r1, [r5, r0, lsl #1]
 8001f28:	9818      	ldr	r0, [sp, #96]	; 0x60
 8001f2a:	9112      	str	r1, [sp, #72]	; 0x48
 8001f2c:	f935 0010 	ldrsh.w	r0, [r5, r0, lsl #1]
 8001f30:	9011      	str	r0, [sp, #68]	; 0x44
 8001f32:	f935 601e 	ldrsh.w	r6, [r5, lr, lsl #1]
 8001f36:	eb06 0900 	add.w	r9, r6, r0
 8001f3a:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001f3c:	f935 0010 	ldrsh.w	r0, [r5, r0, lsl #1]
 8001f40:	eb00 0b01 	add.w	fp, r0, r1
 8001f44:	9013      	str	r0, [sp, #76]	; 0x4c
 8001f46:	9815      	ldr	r0, [sp, #84]	; 0x54
 8001f48:	eb0b 0a09 	add.w	sl, fp, r9
 8001f4c:	eba9 090b 	sub.w	r9, r9, fp
 8001f50:	f935 4010 	ldrsh.w	r4, [r5, r0, lsl #1]
 8001f54:	9816      	ldr	r0, [sp, #88]	; 0x58
 8001f56:	f935 0010 	ldrsh.w	r0, [r5, r0, lsl #1]
 8001f5a:	1911      	adds	r1, r2, r4
 8001f5c:	9010      	str	r0, [sp, #64]	; 0x40
 8001f5e:	f9b5 2000 	ldrsh.w	r2, [r5]
 8001f62:	4410      	add	r0, r2
 8001f64:	920f      	str	r2, [sp, #60]	; 0x3c
 8001f66:	9a07      	ldr	r2, [sp, #28]
 8001f68:	eb01 0c00 	add.w	ip, r1, r0
 8001f6c:	1a40      	subs	r0, r0, r1
 8001f6e:	eb0c 030a 	add.w	r3, ip, sl
 8001f72:	eb00 0109 	add.w	r1, r0, r9
 8001f76:	b209      	sxth	r1, r1
 8001f78:	4113      	asrs	r3, r2
 8001f7a:	802b      	strh	r3, [r5, #0]
 8001f7c:	ebac 030a 	sub.w	r3, ip, sl
 8001f80:	4113      	asrs	r3, r2
 8001f82:	9a08      	ldr	r2, [sp, #32]
 8001f84:	f825 3012 	strh.w	r3, [r5, r2, lsl #1]
 8001f88:	f9b8 c012 	ldrsh.w	ip, [r8, #18]
 8001f8c:	f9b8 3014 	ldrsh.w	r3, [r8, #20]
 8001f90:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8001f92:	fb0c f000 	mul.w	r0, ip, r0
 8001f96:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8001f9a:	fa40 f00c 	asr.w	r0, r0, ip
 8001f9e:	fb11 0003 	smlabb	r0, r1, r3, r0
 8001fa2:	f825 0012 	strh.w	r0, [r5, r2, lsl #1]
 8001fa6:	f9b8 0016 	ldrsh.w	r0, [r8, #22]
 8001faa:	fb00 f009 	mul.w	r0, r0, r9
 8001fae:	fa40 f00c 	asr.w	r0, r0, ip
 8001fb2:	fb11 0003 	smlabb	r0, r1, r3, r0
 8001fb6:	f825 001e 	strh.w	r0, [r5, lr, lsl #1]
 8001fba:	980e      	ldr	r0, [sp, #56]	; 0x38
 8001fbc:	1a21      	subs	r1, r4, r0
 8001fbe:	9811      	ldr	r0, [sp, #68]	; 0x44
 8001fc0:	1b80      	subs	r0, r0, r6
 8001fc2:	900e      	str	r0, [sp, #56]	; 0x38
 8001fc4:	1844      	adds	r4, r0, r1
 8001fc6:	f9b8 0000 	ldrsh.w	r0, [r8]
 8001fca:	b223      	sxth	r3, r4
 8001fcc:	9011      	str	r0, [sp, #68]	; 0x44
 8001fce:	f9b8 0006 	ldrsh.w	r0, [r8, #6]
 8001fd2:	f9b8 6002 	ldrsh.w	r6, [r8, #2]
 8001fd6:	f9b8 a004 	ldrsh.w	sl, [r8, #4]
 8001fda:	900d      	str	r0, [sp, #52]	; 0x34
 8001fdc:	fb13 f906 	smulbb	r9, r3, r6
 8001fe0:	e9dd 3012 	ldrd	r3, r0, [sp, #72]	; 0x48
 8001fe4:	eba3 0e00 	sub.w	lr, r3, r0
 8001fe8:	e9dd 630f 	ldrd	r6, r3, [sp, #60]	; 0x3c
 8001fec:	eba6 0b03 	sub.w	fp, r6, r3
 8001ff0:	f9b8 3010 	ldrsh.w	r3, [r8, #16]
 8001ff4:	eb0b 060e 	add.w	r6, fp, lr
 8001ff8:	4434      	add	r4, r6
 8001ffa:	b224      	sxth	r4, r4
 8001ffc:	fb14 9203 	smlabb	r2, r4, r3, r9
 8002000:	f8b8 9008 	ldrh.w	r9, [r8, #8]
 8002004:	fb09 f901 	mul.w	r9, r9, r1
 8002008:	4459      	add	r1, fp
 800200a:	b208      	sxth	r0, r1
 800200c:	fb10 910a 	smlabb	r1, r0, sl, r9
 8002010:	46d1      	mov	r9, sl
 8002012:	4692      	mov	sl, r2
 8002014:	9013      	str	r0, [sp, #76]	; 0x4c
 8002016:	4411      	add	r1, r2
 8002018:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800201a:	b209      	sxth	r1, r1
 800201c:	fa41 f10c 	asr.w	r1, r1, ip
 8002020:	f825 1012 	strh.w	r1, [r5, r2, lsl #1]
 8002024:	b231      	sxth	r1, r6
 8002026:	980d      	ldr	r0, [sp, #52]	; 0x34
 8002028:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 800202a:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800202c:	fb11 f100 	smulbb	r1, r1, r0
 8002030:	fb14 1103 	smlabb	r1, r4, r3, r1
 8002034:	f8b8 400c 	ldrh.w	r4, [r8, #12]
 8002038:	eb06 030e 	add.w	r3, r6, lr
 800203c:	b21b      	sxth	r3, r3
 800203e:	fb04 f00e 	mul.w	r0, r4, lr
 8002042:	9c17      	ldr	r4, [sp, #92]	; 0x5c
 8002044:	fb13 0002 	smlabb	r0, r3, r2, r0
 8002048:	4408      	add	r0, r1
 800204a:	b200      	sxth	r0, r0
 800204c:	fa40 f00c 	asr.w	r0, r0, ip
 8002050:	f825 0014 	strh.w	r0, [r5, r4, lsl #1]
 8002054:	f8b8 000a 	ldrh.w	r0, [r8, #10]
 8002058:	4370      	muls	r0, r6
 800205a:	fb13 0002 	smlabb	r0, r3, r2, r0
 800205e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002060:	4450      	add	r0, sl
 8002062:	b200      	sxth	r0, r0
 8002064:	fa40 f00c 	asr.w	r0, r0, ip
 8002068:	f825 0012 	strh.w	r0, [r5, r2, lsl #1]
 800206c:	f8b8 000e 	ldrh.w	r0, [r8, #14]
 8002070:	9a13      	ldr	r2, [sp, #76]	; 0x4c
 8002072:	fb00 f00b 	mul.w	r0, r0, fp
 8002076:	fb12 0009 	smlabb	r0, r2, r9, r0
 800207a:	4408      	add	r0, r1
 800207c:	9918      	ldr	r1, [sp, #96]	; 0x60
 800207e:	b200      	sxth	r0, r0
 8002080:	fa40 f00c 	asr.w	r0, r0, ip
 8002084:	f825 0011 	strh.w	r0, [r5, r1, lsl #1]
 8002088:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800208a:	eb05 0540 	add.w	r5, r5, r0, lsl #1
 800208e:	9814      	ldr	r0, [sp, #80]	; 0x50
 8002090:	3001      	adds	r0, #1
 8002092:	b202      	sxth	r2, r0
 8002094:	2a08      	cmp	r2, #8
 8002096:	f6ff af3d 	blt.w	8001f14 <jpegdct+0x5e>
 800209a:	9818      	ldr	r0, [sp, #96]	; 0x60
 800209c:	f44f 21e0 	mov.w	r1, #458752	; 0x70000
 80020a0:	eb01 4200 	add.w	r2, r1, r0, lsl #16
 80020a4:	1410      	asrs	r0, r2, #16
 80020a6:	f5b2 2f10 	cmp.w	r2, #589824	; 0x90000
 80020aa:	9018      	str	r0, [sp, #96]	; 0x60
 80020ac:	e9dd 3003 	ldrd	r3, r0, [sp, #12]
 80020b0:	9c00      	ldr	r4, [sp, #0]
 80020b2:	9d01      	ldr	r5, [sp, #4]
 80020b4:	9e02      	ldr	r6, [sp, #8]
 80020b6:	eb00 0143 	add.w	r1, r0, r3, lsl #1
 80020ba:	f104 0403 	add.w	r4, r4, #3
 80020be:	f105 0503 	add.w	r5, r5, #3
 80020c2:	f1a6 0607 	sub.w	r6, r6, #7
 80020c6:	f1a3 0338 	sub.w	r3, r3, #56	; 0x38
 80020ca:	f1a1 0080 	sub.w	r0, r1, #128	; 0x80
 80020ce:	f6ff af00 	blt.w	8001ed2 <jpegdct+0x1c>
 80020d2:	b019      	add	sp, #100	; 0x64
 80020d4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80020d8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020da <initialise_benchmark>:
 80020da:	4770      	bx	lr

080020dc <benchmark>:
 80020dc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020de:	af03      	add	r7, sp, #12
 80020e0:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80020e4:	b081      	sub	sp, #4
 80020e6:	f640 16e4 	movw	r6, #2532	; 0x9e4
 80020ea:	f640 11e8 	movw	r1, #2536	; 0x9e8
 80020ee:	2003      	movs	r0, #3
 80020f0:	f640 15f0 	movw	r5, #2544	; 0x9f0
 80020f4:	f44f 72c8 	mov.w	r2, #400	; 0x190
 80020f8:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80020fc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002100:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002104:	8030      	strh	r0, [r6, #0]
 8002106:	f64a 20aa 	movw	r0, #43690	; 0xaaaa
 800210a:	6008      	str	r0, [r1, #0]
 800210c:	f640 11ec 	movw	r1, #2540	; 0x9ec
 8002110:	f64e 60ee 	movw	r0, #61166	; 0xeeee
 8002114:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002118:	6008      	str	r0, [r1, #0]
 800211a:	f247 3160 	movw	r1, #29536	; 0x7360
 800211e:	4628      	mov	r0, r5
 8002120:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002124:	f000 fa4a 	bl	80025bc <__aeabi_memcpy>
 8002128:	f640 3a80 	movw	sl, #2944	; 0xb80
 800212c:	f247 41f0 	movw	r1, #29936	; 0x74f0
 8002130:	f44f 72c8 	mov.w	r2, #400	; 0x190
 8002134:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8002138:	f6c0 0100 	movt	r1, #2048	; 0x800
 800213c:	4650      	mov	r0, sl
 800213e:	f000 fa3d 	bl	80025bc <__aeabi_memcpy>
 8002142:	2000      	movs	r0, #0
 8002144:	8028      	strh	r0, [r5, #0]
 8002146:	2001      	movs	r0, #1
 8002148:	f93a 2010 	ldrsh.w	r2, [sl, r0, lsl #1]
 800214c:	f835 1010 	ldrh.w	r1, [r5, r0, lsl #1]
 8002150:	eb02 0242 	add.w	r2, r2, r2, lsl #1
 8002154:	eb01 31d2 	add.w	r1, r1, r2, lsr #15
 8002158:	f825 1010 	strh.w	r1, [r5, r0, lsl #1]
 800215c:	3001      	adds	r0, #1
 800215e:	2896      	cmp	r0, #150	; 0x96
 8002160:	d1f2      	bne.n	8002148 <benchmark+0x6c>
 8002162:	f640 5010 	movw	r0, #3344	; 0xd10
 8002166:	f9b5 1000 	ldrsh.w	r1, [r5]
 800216a:	f44f 6246 	mov.w	r2, #3168	; 0xc60
 800216e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002172:	6800      	ldr	r0, [r0, #0]
 8002174:	fb11 0102 	smlabb	r1, r1, r2, r0
 8002178:	f242 4003 	movw	r0, #9219	; 0x2403
 800217c:	2201      	movs	r2, #1
 800217e:	f2c0 0099 	movt	r0, #153	; 0x99
 8002182:	f93a 3012 	ldrsh.w	r3, [sl, r2, lsl #1]
 8002186:	f935 4012 	ldrsh.w	r4, [r5, r2, lsl #1]
 800218a:	3201      	adds	r2, #1
 800218c:	2a96      	cmp	r2, #150	; 0x96
 800218e:	fb14 1103 	smlabb	r1, r4, r3, r1
 8002192:	fb13 0003 	smlabb	r0, r3, r3, r0
 8002196:	d1f4      	bne.n	8002182 <benchmark+0xa6>
 8002198:	f640 5210 	movw	r2, #3344	; 0xd10
 800219c:	8030      	strh	r0, [r6, #0]
 800219e:	2000      	movs	r0, #0
 80021a0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021a4:	6011      	str	r1, [r2, #0]
 80021a6:	2100      	movs	r1, #0
 80021a8:	2200      	movs	r2, #0
 80021aa:	186e      	adds	r6, r5, r1
 80021ac:	f93a 3001 	ldrsh.w	r3, [sl, r1]
 80021b0:	3102      	adds	r1, #2
 80021b2:	f936 6010 	ldrsh.w	r6, [r6, r0, lsl #1]
 80021b6:	2964      	cmp	r1, #100	; 0x64
 80021b8:	fb13 2206 	smlabb	r2, r3, r6, r2
 80021bc:	d1f5      	bne.n	80021aa <benchmark+0xce>
 80021be:	13d1      	asrs	r1, r2, #15
 80021c0:	f640 5210 	movw	r2, #3344	; 0xd10
 80021c4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021c8:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80021cc:	3001      	adds	r0, #1
 80021ce:	2832      	cmp	r0, #50	; 0x32
 80021d0:	d1e9      	bne.n	80021a6 <benchmark+0xca>
 80021d2:	f105 0e02 	add.w	lr, r5, #2
 80021d6:	f04f 0b00 	mov.w	fp, #0
 80021da:	f640 10f0 	movw	r0, #2544	; 0x9f0
 80021de:	2300      	movs	r3, #0
 80021e0:	4671      	mov	r1, lr
 80021e2:	2400      	movs	r4, #0
 80021e4:	2600      	movs	r6, #0
 80021e6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021ea:	f830 001b 	ldrh.w	r0, [r0, fp, lsl #1]
 80021ee:	eb0a 0c43 	add.w	ip, sl, r3, lsl #1
 80021f2:	f93a 2013 	ldrsh.w	r2, [sl, r3, lsl #1]
 80021f6:	f9b1 8000 	ldrsh.w	r8, [r1]
 80021fa:	f9b1 9002 	ldrsh.w	r9, [r1, #2]
 80021fe:	b200      	sxth	r0, r0
 8002200:	3302      	adds	r3, #2
 8002202:	3104      	adds	r1, #4
 8002204:	f9bc 5002 	ldrsh.w	r5, [ip, #2]
 8002208:	2b20      	cmp	r3, #32
 800220a:	fb12 6608 	smlabb	r6, r2, r8, r6
 800220e:	fb12 4000 	smlabb	r0, r2, r0, r4
 8002212:	fb15 0408 	smlabb	r4, r5, r8, r0
 8002216:	fb15 6609 	smlabb	r6, r5, r9, r6
 800221a:	fa1f f089 	uxth.w	r0, r9
 800221e:	dbe6      	blt.n	80021ee <benchmark+0x112>
 8002220:	f640 5110 	movw	r1, #3344	; 0xd10
 8002224:	13e0      	asrs	r0, r4, #15
 8002226:	f10e 0e04 	add.w	lr, lr, #4
 800222a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800222e:	460a      	mov	r2, r1
 8002230:	13f1      	asrs	r1, r6, #15
 8002232:	f842 002b 	str.w	r0, [r2, fp, lsl #2]
 8002236:	f04b 0001 	orr.w	r0, fp, #1
 800223a:	f10b 0b02 	add.w	fp, fp, #2
 800223e:	f1bb 0f64 	cmp.w	fp, #100	; 0x64
 8002242:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 8002246:	dbc8      	blt.n	80021da <benchmark+0xfe>
 8002248:	f640 1bf0 	movw	fp, #2544	; 0x9f0
 800224c:	f64a 21aa 	movw	r1, #43690	; 0xaaaa
 8002250:	f44f 6242 	mov.w	r2, #3104	; 0xc20
 8002254:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8002258:	f9bb 00c6 	ldrsh.w	r0, [fp, #198]	; 0xc6
 800225c:	eba0 0080 	sub.w	r0, r0, r0, lsl #2
 8002260:	eb01 2980 	add.w	r9, r1, r0, lsl #10
 8002264:	2000      	movs	r0, #0
 8002266:	e004      	b.n	8002272 <benchmark+0x196>
 8002268:	eb0a 0240 	add.w	r2, sl, r0, lsl #1
 800226c:	3801      	subs	r0, #1
 800226e:	f8b2 20c2 	ldrh.w	r2, [r2, #194]	; 0xc2
 8002272:	eb0b 0340 	add.w	r3, fp, r0, lsl #1
 8002276:	b215      	sxth	r5, r2
 8002278:	f9b3 60c4 	ldrsh.w	r6, [r3, #196]	; 0xc4
 800227c:	fb05 9916 	mls	r9, r5, r6, r9
 8002280:	fb19 f222 	smultb	r2, r9, r2
 8002284:	eb06 4212 	add.w	r2, r6, r2, lsr #16
 8002288:	f8a3 20c6 	strh.w	r2, [r3, #198]	; 0xc6
 800228c:	f100 0262 	add.w	r2, r0, #98	; 0x62
 8002290:	2a01      	cmp	r2, #1
 8002292:	dae9      	bge.n	8002268 <benchmark+0x18c>
 8002294:	f9ba 8000 	ldrsh.w	r8, [sl]
 8002298:	f640 10e8 	movw	r0, #2536	; 0x9e8
 800229c:	ea4f 4c19 	mov.w	ip, r9, lsr #16
 80022a0:	2200      	movs	r2, #0
 80022a2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022a6:	f8ab c000 	strh.w	ip, [fp]
 80022aa:	f8c0 9000 	str.w	r9, [r0]
 80022ae:	e002      	b.n	80022b6 <benchmark+0x1da>
 80022b0:	f8b6 c008 	ldrh.w	ip, [r6, #8]
 80022b4:	3208      	adds	r2, #8
 80022b6:	f640 5010 	movw	r0, #3344	; 0xd10
 80022ba:	eb0b 0602 	add.w	r6, fp, r2
 80022be:	f5b2 7fc4 	cmp.w	r2, #392	; 0x188
 80022c2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022c6:	f9b6 3006 	ldrsh.w	r3, [r6, #6]
 80022ca:	f9b6 e002 	ldrsh.w	lr, [r6, #2]
 80022ce:	4682      	mov	sl, r0
 80022d0:	f9b6 0004 	ldrsh.w	r0, [r6, #4]
 80022d4:	eb0a 0502 	add.w	r5, sl, r2
 80022d8:	f85a 1002 	ldr.w	r1, [sl, r2]
 80022dc:	686c      	ldr	r4, [r5, #4]
 80022de:	fb01 f000 	mul.w	r0, r1, r0
 80022e2:	6069      	str	r1, [r5, #4]
 80022e4:	fb03 0004 	mla	r0, r3, r4, r0
 80022e8:	fa0f f38c 	sxth.w	r3, ip
 80022ec:	fb03 f101 	mul.w	r1, r3, r1
 80022f0:	eb08 30e0 	add.w	r0, r8, r0, asr #15
 80022f4:	fb0e 1104 	mla	r1, lr, r4, r1
 80022f8:	f84a 0002 	str.w	r0, [sl, r2]
 80022fc:	eb00 38e1 	add.w	r8, r0, r1, asr #15
 8002300:	d1d6      	bne.n	80022b0 <benchmark+0x1d4>
 8002302:	f640 5010 	movw	r0, #3344	; 0xd10
 8002306:	f640 3180 	movw	r1, #2944	; 0xb80
 800230a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800230e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002312:	f8c0 8190 	str.w	r8, [r0, #400]	; 0x190
 8002316:	f640 10ec 	movw	r0, #2540	; 0x9ec
 800231a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800231e:	f8c0 9000 	str.w	r9, [r0]
 8002322:	f640 10f0 	movw	r0, #2544	; 0x9f0
 8002326:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800232a:	f7ff fdc4 	bl	8001eb6 <jpegdct>
 800232e:	2000      	movs	r0, #0
 8002330:	b001      	add	sp, #4
 8002332:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002336:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002338 <verify_benchmark>:
 8002338:	f247 6c80 	movw	ip, #30336	; 0x7680
 800233c:	f640 5210 	movw	r2, #3344	; 0xd10
 8002340:	2000      	movs	r0, #0
 8002342:	f6c0 0c00 	movt	ip, #2048	; 0x800
 8002346:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800234a:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
 800234e:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8002352:	4299      	cmp	r1, r3
 8002354:	bf1c      	itt	ne
 8002356:	2000      	movne	r0, #0
 8002358:	4770      	bxne	lr
 800235a:	3001      	adds	r0, #1
 800235c:	28c7      	cmp	r0, #199	; 0xc7
 800235e:	ddf4      	ble.n	800234a <verify_benchmark+0x12>
 8002360:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8002364:	f645 1cea 	movw	ip, #23018	; 0x59ea
 8002368:	f640 13e4 	movw	r3, #2532	; 0x9e4
 800236c:	f642 0103 	movw	r1, #10243	; 0x2803
 8002370:	2200      	movs	r2, #0
 8002372:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002376:	f2ce 5ca9 	movt	ip, #58793	; 0xe5a9
 800237a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800237e:	6800      	ldr	r0, [r0, #0]
 8002380:	4560      	cmp	r0, ip
 8002382:	f04f 0000 	mov.w	r0, #0
 8002386:	bf08      	it	eq
 8002388:	2001      	moveq	r0, #1
 800238a:	881b      	ldrh	r3, [r3, #0]
 800238c:	428b      	cmp	r3, r1
 800238e:	f04f 0100 	mov.w	r1, #0
 8002392:	bf08      	it	eq
 8002394:	2101      	moveq	r1, #1
 8002396:	4008      	ands	r0, r1
 8002398:	f640 11ec 	movw	r1, #2540	; 0x9ec
 800239c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80023a0:	6809      	ldr	r1, [r1, #0]
 80023a2:	4561      	cmp	r1, ip
 80023a4:	bf08      	it	eq
 80023a6:	2201      	moveq	r2, #1
 80023a8:	4010      	ands	r0, r2
 80023aa:	4770      	bx	lr

080023ac <__io_putchar>:
 80023ac:	b580      	push	{r7, lr}
 80023ae:	466f      	mov	r7, sp
 80023b0:	b082      	sub	sp, #8
 80023b2:	9001      	str	r0, [sp, #4]
 80023b4:	f241 0030 	movw	r0, #4144	; 0x1030
 80023b8:	a901      	add	r1, sp, #4
 80023ba:	2201      	movs	r2, #1
 80023bc:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80023c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023c4:	f7ff fc89 	bl	8001cda <HAL_UART_Transmit>
 80023c8:	9801      	ldr	r0, [sp, #4]
 80023ca:	b002      	add	sp, #8
 80023cc:	bd80      	pop	{r7, pc}

080023ce <main>:
 80023ce:	b5b0      	push	{r4, r5, r7, lr}
 80023d0:	af02      	add	r7, sp, #8
 80023d2:	f241 0130 	movw	r1, #4144	; 0x1030
 80023d6:	f643 0000 	movw	r0, #14336	; 0x3800
 80023da:	220c      	movs	r2, #12
 80023dc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80023e0:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80023e4:	6008      	str	r0, [r1, #0]
 80023e6:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80023ea:	6048      	str	r0, [r1, #4]
 80023ec:	2000      	movs	r0, #0
 80023ee:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80023f2:	6108      	str	r0, [r1, #16]
 80023f4:	6248      	str	r0, [r1, #36]	; 0x24
 80023f6:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80023fa:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80023fe:	2000      	movs	r0, #0
 8002400:	f7ff fd00 	bl	8001e04 <BSP_COM_Init>
 8002404:	f7ff fe69 	bl	80020da <initialise_benchmark>
 8002408:	f647 2008 	movw	r0, #31240	; 0x7a08
 800240c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002410:	f000 f94a 	bl	80026a8 <printf>
 8002414:	f647 20ae 	movw	r0, #31406	; 0x7aae
 8002418:	f6c0 0000 	movt	r0, #2048	; 0x800
 800241c:	f000 f9a6 	bl	800276c <puts>
 8002420:	f7fe fe62 	bl	80010e8 <HAL_Init>
 8002424:	f7fe fe78 	bl	8001118 <HAL_GetTick>
 8002428:	4604      	mov	r4, r0
 800242a:	f7ff fe57 	bl	80020dc <benchmark>
 800242e:	4605      	mov	r5, r0
 8002430:	f7fe fe72 	bl	8001118 <HAL_GetTick>
 8002434:	1b04      	subs	r4, r0, r4
 8002436:	4628      	mov	r0, r5
 8002438:	f7ff ff7e 	bl	8002338 <verify_benchmark>
 800243c:	1c41      	adds	r1, r0, #1
 800243e:	d006      	beq.n	800244e <main+0x80>
 8002440:	2801      	cmp	r0, #1
 8002442:	d109      	bne.n	8002458 <main+0x8a>
 8002444:	f647 201a 	movw	r0, #31258	; 0x7a1a
 8002448:	f6c0 0000 	movt	r0, #2048	; 0x800
 800244c:	e008      	b.n	8002460 <main+0x92>
 800244e:	f647 203e 	movw	r0, #31294	; 0x7a3e
 8002452:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002456:	e003      	b.n	8002460 <main+0x92>
 8002458:	f647 2073 	movw	r0, #31347	; 0x7a73
 800245c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002460:	4621      	mov	r1, r4
 8002462:	f000 f921 	bl	80026a8 <printf>
 8002466:	2000      	movs	r0, #0
 8002468:	bdb0      	pop	{r4, r5, r7, pc}

0800246a <SysTick_Handler>:
 800246a:	b580      	push	{r7, lr}
 800246c:	466f      	mov	r7, sp
 800246e:	f7fe fe4b 	bl	8001108 <HAL_IncTick>
 8002472:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002476:	f7fe bea5 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

0800247a <_read>:
 800247a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800247c:	af03      	add	r7, sp, #12
 800247e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002482:	4614      	mov	r4, r2
 8002484:	460d      	mov	r5, r1
 8002486:	2c01      	cmp	r4, #1
 8002488:	db06      	blt.n	8002498 <_read+0x1e>
 800248a:	4626      	mov	r6, r4
 800248c:	f3af 8000 	nop.w
 8002490:	f805 0b01 	strb.w	r0, [r5], #1
 8002494:	3e01      	subs	r6, #1
 8002496:	d1f9      	bne.n	800248c <_read+0x12>
 8002498:	4620      	mov	r0, r4
 800249a:	f85d bb04 	ldr.w	fp, [sp], #4
 800249e:	bdf0      	pop	{r4, r5, r6, r7, pc}

080024a0 <_write>:
 80024a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80024a2:	af03      	add	r7, sp, #12
 80024a4:	f84d bd04 	str.w	fp, [sp, #-4]!
 80024a8:	4614      	mov	r4, r2
 80024aa:	460d      	mov	r5, r1
 80024ac:	2c01      	cmp	r4, #1
 80024ae:	db06      	blt.n	80024be <_write+0x1e>
 80024b0:	4626      	mov	r6, r4
 80024b2:	f815 0b01 	ldrb.w	r0, [r5], #1
 80024b6:	f7ff ff79 	bl	80023ac <__io_putchar>
 80024ba:	3e01      	subs	r6, #1
 80024bc:	d1f9      	bne.n	80024b2 <_write+0x12>
 80024be:	4620      	mov	r0, r4
 80024c0:	f85d bb04 	ldr.w	fp, [sp], #4
 80024c4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080024c6 <_sbrk>:
 80024c6:	f241 02b4 	movw	r2, #4276	; 0x10b4
 80024ca:	4601      	mov	r1, r0
 80024cc:	466b      	mov	r3, sp
 80024ce:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80024d2:	6810      	ldr	r0, [r2, #0]
 80024d4:	2800      	cmp	r0, #0
 80024d6:	bf02      	ittt	eq
 80024d8:	f241 1060 	movweq	r0, #4448	; 0x1160
 80024dc:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80024e0:	6010      	streq	r0, [r2, #0]
 80024e2:	4401      	add	r1, r0
 80024e4:	4299      	cmp	r1, r3
 80024e6:	bf9c      	itt	ls
 80024e8:	6011      	strls	r1, [r2, #0]
 80024ea:	4770      	bxls	lr
 80024ec:	b580      	push	{r7, lr}
 80024ee:	466f      	mov	r7, sp
 80024f0:	f000 f866 	bl	80025c0 <__errno>
 80024f4:	210c      	movs	r1, #12
 80024f6:	6001      	str	r1, [r0, #0]
 80024f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80024fc:	bd80      	pop	{r7, pc}

080024fe <_close>:
 80024fe:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002502:	4770      	bx	lr

08002504 <_fstat>:
 8002504:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002508:	6048      	str	r0, [r1, #4]
 800250a:	2000      	movs	r0, #0
 800250c:	4770      	bx	lr

0800250e <_isatty>:
 800250e:	2001      	movs	r0, #1
 8002510:	4770      	bx	lr

08002512 <_lseek>:
 8002512:	2000      	movs	r0, #0
 8002514:	4770      	bx	lr

08002516 <SystemInit>:
 8002516:	f64e 5088 	movw	r0, #60808	; 0xed88
 800251a:	f04f 0c00 	mov.w	ip, #0
 800251e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002522:	6801      	ldr	r1, [r0, #0]
 8002524:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002528:	6001      	str	r1, [r0, #0]
 800252a:	f241 0100 	movw	r1, #4096	; 0x1000
 800252e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002532:	680a      	ldr	r2, [r1, #0]
 8002534:	f042 0201 	orr.w	r2, r2, #1
 8002538:	600a      	str	r2, [r1, #0]
 800253a:	f8c1 c008 	str.w	ip, [r1, #8]
 800253e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002542:	680b      	ldr	r3, [r1, #0]
 8002544:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002548:	401a      	ands	r2, r3
 800254a:	600a      	str	r2, [r1, #0]
 800254c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002550:	60ca      	str	r2, [r1, #12]
 8002552:	680a      	ldr	r2, [r1, #0]
 8002554:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002558:	600a      	str	r2, [r1, #0]
 800255a:	f8c1 c018 	str.w	ip, [r1, #24]
 800255e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002562:	f840 1c80 	str.w	r1, [r0, #-128]
 8002566:	4770      	bx	lr

08002568 <Reset_Handler>:
 8002568:	f8df d034 	ldr.w	sp, [pc, #52]	; 80025a0 <LoopForever+0x2>
 800256c:	2100      	movs	r1, #0
 800256e:	e003      	b.n	8002578 <LoopCopyDataInit>

08002570 <CopyDataInit>:
 8002570:	4b0c      	ldr	r3, [pc, #48]	; (80025a4 <LoopForever+0x6>)
 8002572:	585b      	ldr	r3, [r3, r1]
 8002574:	5043      	str	r3, [r0, r1]
 8002576:	3104      	adds	r1, #4

08002578 <LoopCopyDataInit>:
 8002578:	480b      	ldr	r0, [pc, #44]	; (80025a8 <LoopForever+0xa>)
 800257a:	4b0c      	ldr	r3, [pc, #48]	; (80025ac <LoopForever+0xe>)
 800257c:	1842      	adds	r2, r0, r1
 800257e:	429a      	cmp	r2, r3
 8002580:	d3f6      	bcc.n	8002570 <CopyDataInit>
 8002582:	4a0b      	ldr	r2, [pc, #44]	; (80025b0 <LoopForever+0x12>)
 8002584:	e002      	b.n	800258c <LoopFillZerobss>

08002586 <FillZerobss>:
 8002586:	2300      	movs	r3, #0
 8002588:	f842 3b04 	str.w	r3, [r2], #4

0800258c <LoopFillZerobss>:
 800258c:	4b09      	ldr	r3, [pc, #36]	; (80025b4 <LoopForever+0x16>)
 800258e:	429a      	cmp	r2, r3
 8002590:	d3f9      	bcc.n	8002586 <FillZerobss>
 8002592:	f7ff ffc0 	bl	8002516 <SystemInit>
 8002596:	f000 f819 	bl	80025cc <__libc_init_array>
 800259a:	f7ff ff18 	bl	80023ce <main>

0800259e <LoopForever>:
 800259e:	e7fe      	b.n	800259e <LoopForever>
 80025a0:	20018000 	.word	0x20018000
 80025a4:	08007d58 	.word	0x08007d58
 80025a8:	20000000 	.word	0x20000000
 80025ac:	200009c8 	.word	0x200009c8
 80025b0:	200009c8 	.word	0x200009c8
 80025b4:	2000115c 	.word	0x2000115c

080025b8 <ADC1_2_IRQHandler>:
 80025b8:	e7fe      	b.n	80025b8 <ADC1_2_IRQHandler>
	...

080025bc <__aeabi_memcpy>:
 80025bc:	f7fd bfa0 	b.w	8000500 <memcpy>

080025c0 <__errno>:
 80025c0:	4b01      	ldr	r3, [pc, #4]	; (80025c8 <__errno+0x8>)
 80025c2:	6818      	ldr	r0, [r3, #0]
 80025c4:	4770      	bx	lr
 80025c6:	bf00      	nop
 80025c8:	20000018 	.word	0x20000018

080025cc <__libc_init_array>:
 80025cc:	b570      	push	{r4, r5, r6, lr}
 80025ce:	4e0d      	ldr	r6, [pc, #52]	; (8002604 <__libc_init_array+0x38>)
 80025d0:	4d0d      	ldr	r5, [pc, #52]	; (8002608 <__libc_init_array+0x3c>)
 80025d2:	1b76      	subs	r6, r6, r5
 80025d4:	10b6      	asrs	r6, r6, #2
 80025d6:	d006      	beq.n	80025e6 <__libc_init_array+0x1a>
 80025d8:	2400      	movs	r4, #0
 80025da:	3401      	adds	r4, #1
 80025dc:	f855 3b04 	ldr.w	r3, [r5], #4
 80025e0:	4798      	blx	r3
 80025e2:	42a6      	cmp	r6, r4
 80025e4:	d1f9      	bne.n	80025da <__libc_init_array+0xe>
 80025e6:	4e09      	ldr	r6, [pc, #36]	; (800260c <__libc_init_array+0x40>)
 80025e8:	4d09      	ldr	r5, [pc, #36]	; (8002610 <__libc_init_array+0x44>)
 80025ea:	1b76      	subs	r6, r6, r5
 80025ec:	f004 feaa 	bl	8007344 <_init>
 80025f0:	10b6      	asrs	r6, r6, #2
 80025f2:	d006      	beq.n	8002602 <__libc_init_array+0x36>
 80025f4:	2400      	movs	r4, #0
 80025f6:	3401      	adds	r4, #1
 80025f8:	f855 3b04 	ldr.w	r3, [r5], #4
 80025fc:	4798      	blx	r3
 80025fe:	42a6      	cmp	r6, r4
 8002600:	d1f9      	bne.n	80025f6 <__libc_init_array+0x2a>
 8002602:	bd70      	pop	{r4, r5, r6, pc}
 8002604:	08007d48 	.word	0x08007d48
 8002608:	08007d48 	.word	0x08007d48
 800260c:	08007d50 	.word	0x08007d50
 8002610:	08007d48 	.word	0x08007d48

08002614 <memset>:
 8002614:	b4f0      	push	{r4, r5, r6, r7}
 8002616:	0786      	lsls	r6, r0, #30
 8002618:	d043      	beq.n	80026a2 <memset+0x8e>
 800261a:	1e54      	subs	r4, r2, #1
 800261c:	2a00      	cmp	r2, #0
 800261e:	d03e      	beq.n	800269e <memset+0x8a>
 8002620:	b2ca      	uxtb	r2, r1
 8002622:	4603      	mov	r3, r0
 8002624:	e002      	b.n	800262c <memset+0x18>
 8002626:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800262a:	d338      	bcc.n	800269e <memset+0x8a>
 800262c:	f803 2b01 	strb.w	r2, [r3], #1
 8002630:	079d      	lsls	r5, r3, #30
 8002632:	d1f8      	bne.n	8002626 <memset+0x12>
 8002634:	2c03      	cmp	r4, #3
 8002636:	d92b      	bls.n	8002690 <memset+0x7c>
 8002638:	b2cd      	uxtb	r5, r1
 800263a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800263e:	2c0f      	cmp	r4, #15
 8002640:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002644:	d916      	bls.n	8002674 <memset+0x60>
 8002646:	f1a4 0710 	sub.w	r7, r4, #16
 800264a:	093f      	lsrs	r7, r7, #4
 800264c:	f103 0620 	add.w	r6, r3, #32
 8002650:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002654:	f103 0210 	add.w	r2, r3, #16
 8002658:	e942 5504 	strd	r5, r5, [r2, #-16]
 800265c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002660:	3210      	adds	r2, #16
 8002662:	42b2      	cmp	r2, r6
 8002664:	d1f8      	bne.n	8002658 <memset+0x44>
 8002666:	f004 040f 	and.w	r4, r4, #15
 800266a:	3701      	adds	r7, #1
 800266c:	2c03      	cmp	r4, #3
 800266e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002672:	d90d      	bls.n	8002690 <memset+0x7c>
 8002674:	461e      	mov	r6, r3
 8002676:	4622      	mov	r2, r4
 8002678:	3a04      	subs	r2, #4
 800267a:	2a03      	cmp	r2, #3
 800267c:	f846 5b04 	str.w	r5, [r6], #4
 8002680:	d8fa      	bhi.n	8002678 <memset+0x64>
 8002682:	1f22      	subs	r2, r4, #4
 8002684:	f022 0203 	bic.w	r2, r2, #3
 8002688:	3204      	adds	r2, #4
 800268a:	4413      	add	r3, r2
 800268c:	f004 0403 	and.w	r4, r4, #3
 8002690:	b12c      	cbz	r4, 800269e <memset+0x8a>
 8002692:	b2c9      	uxtb	r1, r1
 8002694:	441c      	add	r4, r3
 8002696:	f803 1b01 	strb.w	r1, [r3], #1
 800269a:	429c      	cmp	r4, r3
 800269c:	d1fb      	bne.n	8002696 <memset+0x82>
 800269e:	bcf0      	pop	{r4, r5, r6, r7}
 80026a0:	4770      	bx	lr
 80026a2:	4614      	mov	r4, r2
 80026a4:	4603      	mov	r3, r0
 80026a6:	e7c5      	b.n	8002634 <memset+0x20>

080026a8 <printf>:
 80026a8:	b40f      	push	{r0, r1, r2, r3}
 80026aa:	b500      	push	{lr}
 80026ac:	4907      	ldr	r1, [pc, #28]	; (80026cc <printf+0x24>)
 80026ae:	b083      	sub	sp, #12
 80026b0:	ab04      	add	r3, sp, #16
 80026b2:	6808      	ldr	r0, [r1, #0]
 80026b4:	f853 2b04 	ldr.w	r2, [r3], #4
 80026b8:	6881      	ldr	r1, [r0, #8]
 80026ba:	9301      	str	r3, [sp, #4]
 80026bc:	f000 f860 	bl	8002780 <_vfprintf_r>
 80026c0:	b003      	add	sp, #12
 80026c2:	f85d eb04 	ldr.w	lr, [sp], #4
 80026c6:	b004      	add	sp, #16
 80026c8:	4770      	bx	lr
 80026ca:	bf00      	nop
 80026cc:	20000018 	.word	0x20000018

080026d0 <_puts_r>:
 80026d0:	b570      	push	{r4, r5, r6, lr}
 80026d2:	4605      	mov	r5, r0
 80026d4:	b088      	sub	sp, #32
 80026d6:	4608      	mov	r0, r1
 80026d8:	460c      	mov	r4, r1
 80026da:	f7fd ffb1 	bl	8000640 <strlen>
 80026de:	4a22      	ldr	r2, [pc, #136]	; (8002768 <_puts_r+0x98>)
 80026e0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80026e2:	9404      	str	r4, [sp, #16]
 80026e4:	2601      	movs	r6, #1
 80026e6:	1c44      	adds	r4, r0, #1
 80026e8:	a904      	add	r1, sp, #16
 80026ea:	9206      	str	r2, [sp, #24]
 80026ec:	2202      	movs	r2, #2
 80026ee:	9403      	str	r4, [sp, #12]
 80026f0:	9005      	str	r0, [sp, #20]
 80026f2:	68ac      	ldr	r4, [r5, #8]
 80026f4:	9607      	str	r6, [sp, #28]
 80026f6:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80026fa:	b31b      	cbz	r3, 8002744 <_puts_r+0x74>
 80026fc:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80026fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002702:	07ce      	lsls	r6, r1, #31
 8002704:	b29a      	uxth	r2, r3
 8002706:	d401      	bmi.n	800270c <_puts_r+0x3c>
 8002708:	0590      	lsls	r0, r2, #22
 800270a:	d525      	bpl.n	8002758 <_puts_r+0x88>
 800270c:	0491      	lsls	r1, r2, #18
 800270e:	d406      	bmi.n	800271e <_puts_r+0x4e>
 8002710:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002712:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002716:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800271a:	81a3      	strh	r3, [r4, #12]
 800271c:	6662      	str	r2, [r4, #100]	; 0x64
 800271e:	4628      	mov	r0, r5
 8002720:	aa01      	add	r2, sp, #4
 8002722:	4621      	mov	r1, r4
 8002724:	f003 f860 	bl	80057e8 <__sfvwrite_r>
 8002728:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800272a:	2800      	cmp	r0, #0
 800272c:	bf0c      	ite	eq
 800272e:	250a      	moveq	r5, #10
 8002730:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002734:	07da      	lsls	r2, r3, #31
 8002736:	d402      	bmi.n	800273e <_puts_r+0x6e>
 8002738:	89a3      	ldrh	r3, [r4, #12]
 800273a:	059b      	lsls	r3, r3, #22
 800273c:	d506      	bpl.n	800274c <_puts_r+0x7c>
 800273e:	4628      	mov	r0, r5
 8002740:	b008      	add	sp, #32
 8002742:	bd70      	pop	{r4, r5, r6, pc}
 8002744:	4628      	mov	r0, r5
 8002746:	f002 feb9 	bl	80054bc <__sinit>
 800274a:	e7d7      	b.n	80026fc <_puts_r+0x2c>
 800274c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800274e:	f003 fa07 	bl	8005b60 <__retarget_lock_release_recursive>
 8002752:	4628      	mov	r0, r5
 8002754:	b008      	add	sp, #32
 8002756:	bd70      	pop	{r4, r5, r6, pc}
 8002758:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800275a:	f003 f9ff 	bl	8005b5c <__retarget_lock_acquire_recursive>
 800275e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002762:	b29a      	uxth	r2, r3
 8002764:	e7d2      	b.n	800270c <_puts_r+0x3c>
 8002766:	bf00      	nop
 8002768:	08007ab4 	.word	0x08007ab4

0800276c <puts>:
 800276c:	4b02      	ldr	r3, [pc, #8]	; (8002778 <puts+0xc>)
 800276e:	4601      	mov	r1, r0
 8002770:	6818      	ldr	r0, [r3, #0]
 8002772:	f7ff bfad 	b.w	80026d0 <_puts_r>
 8002776:	bf00      	nop
 8002778:	20000018 	.word	0x20000018
 800277c:	00000000 	.word	0x00000000

08002780 <_vfprintf_r>:
 8002780:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002784:	b0d7      	sub	sp, #348	; 0x15c
 8002786:	461c      	mov	r4, r3
 8002788:	4689      	mov	r9, r1
 800278a:	4617      	mov	r7, r2
 800278c:	4605      	mov	r5, r0
 800278e:	9003      	str	r0, [sp, #12]
 8002790:	f003 f9d2 	bl	8005b38 <_localeconv_r>
 8002794:	6803      	ldr	r3, [r0, #0]
 8002796:	9316      	str	r3, [sp, #88]	; 0x58
 8002798:	4618      	mov	r0, r3
 800279a:	f7fd ff51 	bl	8000640 <strlen>
 800279e:	9408      	str	r4, [sp, #32]
 80027a0:	9015      	str	r0, [sp, #84]	; 0x54
 80027a2:	b11d      	cbz	r5, 80027ac <_vfprintf_r+0x2c>
 80027a4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80027a6:	2b00      	cmp	r3, #0
 80027a8:	f000 8107 	beq.w	80029ba <_vfprintf_r+0x23a>
 80027ac:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80027b0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80027b4:	07c8      	lsls	r0, r1, #31
 80027b6:	b293      	uxth	r3, r2
 80027b8:	d402      	bmi.n	80027c0 <_vfprintf_r+0x40>
 80027ba:	0599      	lsls	r1, r3, #22
 80027bc:	f140 811f 	bpl.w	80029fe <_vfprintf_r+0x27e>
 80027c0:	049e      	lsls	r6, r3, #18
 80027c2:	d40a      	bmi.n	80027da <_vfprintf_r+0x5a>
 80027c4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80027c8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80027cc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80027d0:	f8a9 300c 	strh.w	r3, [r9, #12]
 80027d4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80027d8:	b29b      	uxth	r3, r3
 80027da:	071d      	lsls	r5, r3, #28
 80027dc:	f140 80b2 	bpl.w	8002944 <_vfprintf_r+0x1c4>
 80027e0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80027e4:	2a00      	cmp	r2, #0
 80027e6:	f000 80ad 	beq.w	8002944 <_vfprintf_r+0x1c4>
 80027ea:	f003 021a 	and.w	r2, r3, #26
 80027ee:	2a0a      	cmp	r2, #10
 80027f0:	f000 80c9 	beq.w	8002986 <_vfprintf_r+0x206>
 80027f4:	2300      	movs	r3, #0
 80027f6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002a10 <_vfprintf_r+0x290>
 80027fa:	9310      	str	r3, [sp, #64]	; 0x40
 80027fc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002800:	9317      	str	r3, [sp, #92]	; 0x5c
 8002802:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002806:	931b      	str	r3, [sp, #108]	; 0x6c
 8002808:	9318      	str	r3, [sp, #96]	; 0x60
 800280a:	9305      	str	r3, [sp, #20]
 800280c:	ab2d      	add	r3, sp, #180	; 0xb4
 800280e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002810:	469b      	mov	fp, r3
 8002812:	783b      	ldrb	r3, [r7, #0]
 8002814:	f8cd 901c 	str.w	r9, [sp, #28]
 8002818:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800281c:	2b00      	cmp	r3, #0
 800281e:	f000 8259 	beq.w	8002cd4 <_vfprintf_r+0x554>
 8002822:	2b25      	cmp	r3, #37	; 0x25
 8002824:	463c      	mov	r4, r7
 8002826:	d102      	bne.n	800282e <_vfprintf_r+0xae>
 8002828:	e01d      	b.n	8002866 <_vfprintf_r+0xe6>
 800282a:	2b25      	cmp	r3, #37	; 0x25
 800282c:	d003      	beq.n	8002836 <_vfprintf_r+0xb6>
 800282e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002832:	2b00      	cmp	r3, #0
 8002834:	d1f9      	bne.n	800282a <_vfprintf_r+0xaa>
 8002836:	1be5      	subs	r5, r4, r7
 8002838:	b18d      	cbz	r5, 800285e <_vfprintf_r+0xde>
 800283a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800283e:	3301      	adds	r3, #1
 8002840:	442a      	add	r2, r5
 8002842:	2b07      	cmp	r3, #7
 8002844:	f8cb 7000 	str.w	r7, [fp]
 8002848:	f8cb 5004 	str.w	r5, [fp, #4]
 800284c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002850:	f300 80ca 	bgt.w	80029e8 <_vfprintf_r+0x268>
 8002854:	f10b 0b08 	add.w	fp, fp, #8
 8002858:	9b05      	ldr	r3, [sp, #20]
 800285a:	442b      	add	r3, r5
 800285c:	9305      	str	r3, [sp, #20]
 800285e:	7823      	ldrb	r3, [r4, #0]
 8002860:	2b00      	cmp	r3, #0
 8002862:	f000 8237 	beq.w	8002cd4 <_vfprintf_r+0x554>
 8002866:	2300      	movs	r3, #0
 8002868:	7866      	ldrb	r6, [r4, #1]
 800286a:	9306      	str	r3, [sp, #24]
 800286c:	4698      	mov	r8, r3
 800286e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002872:	f104 0a01 	add.w	sl, r4, #1
 8002876:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800287a:	252b      	movs	r5, #43	; 0x2b
 800287c:	f10a 0a01 	add.w	sl, sl, #1
 8002880:	f1a6 0320 	sub.w	r3, r6, #32
 8002884:	2b5a      	cmp	r3, #90	; 0x5a
 8002886:	f200 842a 	bhi.w	80030de <_vfprintf_r+0x95e>
 800288a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800288e:	03aa      	.short	0x03aa
 8002890:	04280428 	.word	0x04280428
 8002894:	0428029c 	.word	0x0428029c
 8002898:	04280428 	.word	0x04280428
 800289c:	042802a7 	.word	0x042802a7
 80028a0:	02c60428 	.word	0x02c60428
 80028a4:	042802d2 	.word	0x042802d2
 80028a8:	02dc02d7 	.word	0x02dc02d7
 80028ac:	02f60428 	.word	0x02f60428
 80028b0:	026d026d 	.word	0x026d026d
 80028b4:	026d026d 	.word	0x026d026d
 80028b8:	026d026d 	.word	0x026d026d
 80028bc:	026d026d 	.word	0x026d026d
 80028c0:	0428026d 	.word	0x0428026d
 80028c4:	04280428 	.word	0x04280428
 80028c8:	04280428 	.word	0x04280428
 80028cc:	04280428 	.word	0x04280428
 80028d0:	042802fb 	.word	0x042802fb
 80028d4:	03f3033c 	.word	0x03f3033c
 80028d8:	02fb02fb 	.word	0x02fb02fb
 80028dc:	042802fb 	.word	0x042802fb
 80028e0:	04280428 	.word	0x04280428
 80028e4:	03ee0428 	.word	0x03ee0428
 80028e8:	04280428 	.word	0x04280428
 80028ec:	0428009a 	.word	0x0428009a
 80028f0:	04280428 	.word	0x04280428
 80028f4:	04280350 	.word	0x04280350
 80028f8:	04280379 	.word	0x04280379
 80028fc:	03900428 	.word	0x03900428
 8002900:	04280428 	.word	0x04280428
 8002904:	04280428 	.word	0x04280428
 8002908:	04280428 	.word	0x04280428
 800290c:	04280428 	.word	0x04280428
 8002910:	042802fb 	.word	0x042802fb
 8002914:	00c5033c 	.word	0x00c5033c
 8002918:	02fb02fb 	.word	0x02fb02fb
 800291c:	03d102fb 	.word	0x03d102fb
 8002920:	007000c5 	.word	0x007000c5
 8002924:	03b50428 	.word	0x03b50428
 8002928:	03c20428 	.word	0x03c20428
 800292c:	03de009c 	.word	0x03de009c
 8002930:	04280070 	.word	0x04280070
 8002934:	00720350 	.word	0x00720350
 8002938:	0428022c 	.word	0x0428022c
 800293c:	027c0428 	.word	0x027c0428
 8002940:	00720428 	.word	0x00720428
 8002944:	4649      	mov	r1, r9
 8002946:	9803      	ldr	r0, [sp, #12]
 8002948:	f001 fc9a 	bl	8004280 <__swsetup_r>
 800294c:	b1a0      	cbz	r0, 8002978 <_vfprintf_r+0x1f8>
 800294e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002952:	07d8      	lsls	r0, r3, #31
 8002954:	d404      	bmi.n	8002960 <_vfprintf_r+0x1e0>
 8002956:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800295a:	0599      	lsls	r1, r3, #22
 800295c:	f140 83b7 	bpl.w	80030ce <_vfprintf_r+0x94e>
 8002960:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002964:	9305      	str	r3, [sp, #20]
 8002966:	9805      	ldr	r0, [sp, #20]
 8002968:	b057      	add	sp, #348	; 0x15c
 800296a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800296e:	f048 0820 	orr.w	r8, r8, #32
 8002972:	f89a 6000 	ldrb.w	r6, [sl]
 8002976:	e781      	b.n	800287c <_vfprintf_r+0xfc>
 8002978:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800297c:	f003 021a 	and.w	r2, r3, #26
 8002980:	2a0a      	cmp	r2, #10
 8002982:	f47f af37 	bne.w	80027f4 <_vfprintf_r+0x74>
 8002986:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800298a:	2a00      	cmp	r2, #0
 800298c:	f6ff af32 	blt.w	80027f4 <_vfprintf_r+0x74>
 8002990:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002994:	07d2      	lsls	r2, r2, #31
 8002996:	d405      	bmi.n	80029a4 <_vfprintf_r+0x224>
 8002998:	059b      	lsls	r3, r3, #22
 800299a:	d403      	bmi.n	80029a4 <_vfprintf_r+0x224>
 800299c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80029a0:	f003 f8de 	bl	8005b60 <__retarget_lock_release_recursive>
 80029a4:	4623      	mov	r3, r4
 80029a6:	463a      	mov	r2, r7
 80029a8:	4649      	mov	r1, r9
 80029aa:	9803      	ldr	r0, [sp, #12]
 80029ac:	f001 fc26 	bl	80041fc <__sbprintf>
 80029b0:	9005      	str	r0, [sp, #20]
 80029b2:	9805      	ldr	r0, [sp, #20]
 80029b4:	b057      	add	sp, #348	; 0x15c
 80029b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80029ba:	9803      	ldr	r0, [sp, #12]
 80029bc:	f002 fd7e 	bl	80054bc <__sinit>
 80029c0:	e6f4      	b.n	80027ac <_vfprintf_r+0x2c>
 80029c2:	f048 0810 	orr.w	r8, r8, #16
 80029c6:	f018 0f20 	tst.w	r8, #32
 80029ca:	f000 836c 	beq.w	80030a6 <_vfprintf_r+0x926>
 80029ce:	9c08      	ldr	r4, [sp, #32]
 80029d0:	3407      	adds	r4, #7
 80029d2:	f024 0307 	bic.w	r3, r4, #7
 80029d6:	e9d3 4500 	ldrd	r4, r5, [r3]
 80029da:	f103 0208 	add.w	r2, r3, #8
 80029de:	9208      	str	r2, [sp, #32]
 80029e0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80029e4:	2200      	movs	r2, #0
 80029e6:	e18c      	b.n	8002d02 <_vfprintf_r+0x582>
 80029e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80029ea:	9907      	ldr	r1, [sp, #28]
 80029ec:	9803      	ldr	r0, [sp, #12]
 80029ee:	f004 f9f5 	bl	8006ddc <__sprint_r>
 80029f2:	2800      	cmp	r0, #0
 80029f4:	f041 8376 	bne.w	80040e4 <_vfprintf_r+0x1964>
 80029f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80029fc:	e72c      	b.n	8002858 <_vfprintf_r+0xd8>
 80029fe:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002a02:	f003 f8ab 	bl	8005b5c <__retarget_lock_acquire_recursive>
 8002a06:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002a0a:	b293      	uxth	r3, r2
 8002a0c:	e6d8      	b.n	80027c0 <_vfprintf_r+0x40>
 8002a0e:	bf00      	nop
	...
 8002a18:	4643      	mov	r3, r8
 8002a1a:	069f      	lsls	r7, r3, #26
 8002a1c:	f140 832f 	bpl.w	800307e <_vfprintf_r+0x8fe>
 8002a20:	9c08      	ldr	r4, [sp, #32]
 8002a22:	3407      	adds	r4, #7
 8002a24:	f024 0407 	bic.w	r4, r4, #7
 8002a28:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002a2c:	f104 0208 	add.w	r2, r4, #8
 8002a30:	9208      	str	r2, [sp, #32]
 8002a32:	4604      	mov	r4, r0
 8002a34:	460d      	mov	r5, r1
 8002a36:	2800      	cmp	r0, #0
 8002a38:	f171 0200 	sbcs.w	r2, r1, #0
 8002a3c:	da05      	bge.n	8002a4a <_vfprintf_r+0x2ca>
 8002a3e:	222d      	movs	r2, #45	; 0x2d
 8002a40:	4264      	negs	r4, r4
 8002a42:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002a46:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002a4a:	aa56      	add	r2, sp, #344	; 0x158
 8002a4c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a50:	9204      	str	r2, [sp, #16]
 8002a52:	f000 84b2 	beq.w	80033ba <_vfprintf_r+0xc3a>
 8002a56:	2201      	movs	r2, #1
 8002a58:	ea54 0105 	orrs.w	r1, r4, r5
 8002a5c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002a60:	f040 8159 	bne.w	8002d16 <_vfprintf_r+0x596>
 8002a64:	f1b9 0f00 	cmp.w	r9, #0
 8002a68:	f040 8619 	bne.w	800369e <_vfprintf_r+0xf1e>
 8002a6c:	2a00      	cmp	r2, #0
 8002a6e:	f040 8508 	bne.w	8003482 <_vfprintf_r+0xd02>
 8002a72:	f013 0301 	ands.w	r3, r3, #1
 8002a76:	af56      	add	r7, sp, #344	; 0x158
 8002a78:	9309      	str	r3, [sp, #36]	; 0x24
 8002a7a:	d002      	beq.n	8002a82 <_vfprintf_r+0x302>
 8002a7c:	2330      	movs	r3, #48	; 0x30
 8002a7e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002a82:	2300      	movs	r3, #0
 8002a84:	930a      	str	r3, [sp, #40]	; 0x28
 8002a86:	930f      	str	r3, [sp, #60]	; 0x3c
 8002a88:	9314      	str	r3, [sp, #80]	; 0x50
 8002a8a:	9311      	str	r3, [sp, #68]	; 0x44
 8002a8c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002a8e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a92:	454b      	cmp	r3, r9
 8002a94:	bfb8      	it	lt
 8002a96:	464b      	movlt	r3, r9
 8002a98:	9304      	str	r3, [sp, #16]
 8002a9a:	b112      	cbz	r2, 8002aa2 <_vfprintf_r+0x322>
 8002a9c:	9b04      	ldr	r3, [sp, #16]
 8002a9e:	3301      	adds	r3, #1
 8002aa0:	9304      	str	r3, [sp, #16]
 8002aa2:	f018 0302 	ands.w	r3, r8, #2
 8002aa6:	930b      	str	r3, [sp, #44]	; 0x2c
 8002aa8:	d002      	beq.n	8002ab0 <_vfprintf_r+0x330>
 8002aaa:	9b04      	ldr	r3, [sp, #16]
 8002aac:	3302      	adds	r3, #2
 8002aae:	9304      	str	r3, [sp, #16]
 8002ab0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002ab4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ab6:	930e      	str	r3, [sp, #56]	; 0x38
 8002ab8:	d13f      	bne.n	8002b3a <_vfprintf_r+0x3ba>
 8002aba:	9b06      	ldr	r3, [sp, #24]
 8002abc:	9904      	ldr	r1, [sp, #16]
 8002abe:	1a5d      	subs	r5, r3, r1
 8002ac0:	2d00      	cmp	r5, #0
 8002ac2:	dd3a      	ble.n	8002b3a <_vfprintf_r+0x3ba>
 8002ac4:	2d10      	cmp	r5, #16
 8002ac6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ac8:	dd29      	ble.n	8002b1e <_vfprintf_r+0x39e>
 8002aca:	4659      	mov	r1, fp
 8002acc:	4620      	mov	r0, r4
 8002ace:	9620      	str	r6, [sp, #128]	; 0x80
 8002ad0:	2310      	movs	r3, #16
 8002ad2:	9c03      	ldr	r4, [sp, #12]
 8002ad4:	9e07      	ldr	r6, [sp, #28]
 8002ad6:	46bb      	mov	fp, r7
 8002ad8:	e004      	b.n	8002ae4 <_vfprintf_r+0x364>
 8002ada:	3d10      	subs	r5, #16
 8002adc:	2d10      	cmp	r5, #16
 8002ade:	f101 0108 	add.w	r1, r1, #8
 8002ae2:	dd18      	ble.n	8002b16 <_vfprintf_r+0x396>
 8002ae4:	3201      	adds	r2, #1
 8002ae6:	4fba      	ldr	r7, [pc, #744]	; (8002dd0 <_vfprintf_r+0x650>)
 8002ae8:	3010      	adds	r0, #16
 8002aea:	2a07      	cmp	r2, #7
 8002aec:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002af0:	e9c1 7300 	strd	r7, r3, [r1]
 8002af4:	ddf1      	ble.n	8002ada <_vfprintf_r+0x35a>
 8002af6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002af8:	4631      	mov	r1, r6
 8002afa:	4620      	mov	r0, r4
 8002afc:	930c      	str	r3, [sp, #48]	; 0x30
 8002afe:	f004 f96d 	bl	8006ddc <__sprint_r>
 8002b02:	2800      	cmp	r0, #0
 8002b04:	f040 843d 	bne.w	8003382 <_vfprintf_r+0xc02>
 8002b08:	3d10      	subs	r5, #16
 8002b0a:	2d10      	cmp	r5, #16
 8002b0c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002b10:	a92d      	add	r1, sp, #180	; 0xb4
 8002b12:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002b14:	dce6      	bgt.n	8002ae4 <_vfprintf_r+0x364>
 8002b16:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002b18:	465f      	mov	r7, fp
 8002b1a:	4604      	mov	r4, r0
 8002b1c:	468b      	mov	fp, r1
 8002b1e:	3201      	adds	r2, #1
 8002b20:	4bab      	ldr	r3, [pc, #684]	; (8002dd0 <_vfprintf_r+0x650>)
 8002b22:	442c      	add	r4, r5
 8002b24:	2a07      	cmp	r2, #7
 8002b26:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b2a:	e9cb 3500 	strd	r3, r5, [fp]
 8002b2e:	f300 84ff 	bgt.w	8003530 <_vfprintf_r+0xdb0>
 8002b32:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b36:	f10b 0b08 	add.w	fp, fp, #8
 8002b3a:	b172      	cbz	r2, 8002b5a <_vfprintf_r+0x3da>
 8002b3c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b3e:	3201      	adds	r2, #1
 8002b40:	3401      	adds	r4, #1
 8002b42:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002b46:	2101      	movs	r1, #1
 8002b48:	2a07      	cmp	r2, #7
 8002b4a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b4e:	e9cb 0100 	strd	r0, r1, [fp]
 8002b52:	f300 8418 	bgt.w	8003386 <_vfprintf_r+0xc06>
 8002b56:	f10b 0b08 	add.w	fp, fp, #8
 8002b5a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002b5c:	b16b      	cbz	r3, 8002b7a <_vfprintf_r+0x3fa>
 8002b5e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b60:	3301      	adds	r3, #1
 8002b62:	3402      	adds	r4, #2
 8002b64:	a923      	add	r1, sp, #140	; 0x8c
 8002b66:	2202      	movs	r2, #2
 8002b68:	2b07      	cmp	r3, #7
 8002b6a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002b6e:	e9cb 1200 	strd	r1, r2, [fp]
 8002b72:	f300 8415 	bgt.w	80033a0 <_vfprintf_r+0xc20>
 8002b76:	f10b 0b08 	add.w	fp, fp, #8
 8002b7a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002b7c:	2b80      	cmp	r3, #128	; 0x80
 8002b7e:	f000 8331 	beq.w	80031e4 <_vfprintf_r+0xa64>
 8002b82:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002b84:	eba9 0503 	sub.w	r5, r9, r3
 8002b88:	2d00      	cmp	r5, #0
 8002b8a:	dd37      	ble.n	8002bfc <_vfprintf_r+0x47c>
 8002b8c:	2d10      	cmp	r5, #16
 8002b8e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b90:	4b90      	ldr	r3, [pc, #576]	; (8002dd4 <_vfprintf_r+0x654>)
 8002b92:	dd28      	ble.n	8002be6 <_vfprintf_r+0x466>
 8002b94:	4659      	mov	r1, fp
 8002b96:	4620      	mov	r0, r4
 8002b98:	46bb      	mov	fp, r7
 8002b9a:	f04f 0910 	mov.w	r9, #16
 8002b9e:	4637      	mov	r7, r6
 8002ba0:	461c      	mov	r4, r3
 8002ba2:	9e07      	ldr	r6, [sp, #28]
 8002ba4:	e004      	b.n	8002bb0 <_vfprintf_r+0x430>
 8002ba6:	3d10      	subs	r5, #16
 8002ba8:	2d10      	cmp	r5, #16
 8002baa:	f101 0108 	add.w	r1, r1, #8
 8002bae:	dd15      	ble.n	8002bdc <_vfprintf_r+0x45c>
 8002bb0:	3201      	adds	r2, #1
 8002bb2:	3010      	adds	r0, #16
 8002bb4:	2a07      	cmp	r2, #7
 8002bb6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002bba:	e9c1 4900 	strd	r4, r9, [r1]
 8002bbe:	ddf2      	ble.n	8002ba6 <_vfprintf_r+0x426>
 8002bc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002bc2:	4631      	mov	r1, r6
 8002bc4:	9803      	ldr	r0, [sp, #12]
 8002bc6:	f004 f909 	bl	8006ddc <__sprint_r>
 8002bca:	2800      	cmp	r0, #0
 8002bcc:	f040 83d9 	bne.w	8003382 <_vfprintf_r+0xc02>
 8002bd0:	3d10      	subs	r5, #16
 8002bd2:	2d10      	cmp	r5, #16
 8002bd4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002bd8:	a92d      	add	r1, sp, #180	; 0xb4
 8002bda:	dce9      	bgt.n	8002bb0 <_vfprintf_r+0x430>
 8002bdc:	463e      	mov	r6, r7
 8002bde:	4623      	mov	r3, r4
 8002be0:	465f      	mov	r7, fp
 8002be2:	4604      	mov	r4, r0
 8002be4:	468b      	mov	fp, r1
 8002be6:	3201      	adds	r2, #1
 8002be8:	442c      	add	r4, r5
 8002bea:	2a07      	cmp	r2, #7
 8002bec:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002bf0:	e9cb 3500 	strd	r3, r5, [fp]
 8002bf4:	f300 83ef 	bgt.w	80033d6 <_vfprintf_r+0xc56>
 8002bf8:	f10b 0b08 	add.w	fp, fp, #8
 8002bfc:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002c00:	f040 8280 	bne.w	8003104 <_vfprintf_r+0x984>
 8002c04:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c06:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002c08:	f8cb 7000 	str.w	r7, [fp]
 8002c0c:	3301      	adds	r3, #1
 8002c0e:	4414      	add	r4, r2
 8002c10:	2b07      	cmp	r3, #7
 8002c12:	942c      	str	r4, [sp, #176]	; 0xb0
 8002c14:	f8cb 2004 	str.w	r2, [fp, #4]
 8002c18:	932b      	str	r3, [sp, #172]	; 0xac
 8002c1a:	f300 8392 	bgt.w	8003342 <_vfprintf_r+0xbc2>
 8002c1e:	f10b 0b08 	add.w	fp, fp, #8
 8002c22:	f018 0f04 	tst.w	r8, #4
 8002c26:	d03b      	beq.n	8002ca0 <_vfprintf_r+0x520>
 8002c28:	9b06      	ldr	r3, [sp, #24]
 8002c2a:	9a04      	ldr	r2, [sp, #16]
 8002c2c:	1a9d      	subs	r5, r3, r2
 8002c2e:	2d00      	cmp	r5, #0
 8002c30:	dd36      	ble.n	8002ca0 <_vfprintf_r+0x520>
 8002c32:	2d10      	cmp	r5, #16
 8002c34:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c36:	dd21      	ble.n	8002c7c <_vfprintf_r+0x4fc>
 8002c38:	2610      	movs	r6, #16
 8002c3a:	9f03      	ldr	r7, [sp, #12]
 8002c3c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002c40:	e004      	b.n	8002c4c <_vfprintf_r+0x4cc>
 8002c42:	3d10      	subs	r5, #16
 8002c44:	2d10      	cmp	r5, #16
 8002c46:	f10b 0b08 	add.w	fp, fp, #8
 8002c4a:	dd17      	ble.n	8002c7c <_vfprintf_r+0x4fc>
 8002c4c:	3301      	adds	r3, #1
 8002c4e:	4a60      	ldr	r2, [pc, #384]	; (8002dd0 <_vfprintf_r+0x650>)
 8002c50:	3410      	adds	r4, #16
 8002c52:	2b07      	cmp	r3, #7
 8002c54:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c58:	e9cb 2600 	strd	r2, r6, [fp]
 8002c5c:	ddf1      	ble.n	8002c42 <_vfprintf_r+0x4c2>
 8002c5e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c60:	4641      	mov	r1, r8
 8002c62:	4638      	mov	r0, r7
 8002c64:	f004 f8ba 	bl	8006ddc <__sprint_r>
 8002c68:	2800      	cmp	r0, #0
 8002c6a:	f040 856c 	bne.w	8003746 <_vfprintf_r+0xfc6>
 8002c6e:	3d10      	subs	r5, #16
 8002c70:	2d10      	cmp	r5, #16
 8002c72:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002c76:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c7a:	dce7      	bgt.n	8002c4c <_vfprintf_r+0x4cc>
 8002c7c:	3301      	adds	r3, #1
 8002c7e:	4a54      	ldr	r2, [pc, #336]	; (8002dd0 <_vfprintf_r+0x650>)
 8002c80:	442c      	add	r4, r5
 8002c82:	2b07      	cmp	r3, #7
 8002c84:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c88:	e9cb 2500 	strd	r2, r5, [fp]
 8002c8c:	dd08      	ble.n	8002ca0 <_vfprintf_r+0x520>
 8002c8e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c90:	9907      	ldr	r1, [sp, #28]
 8002c92:	9803      	ldr	r0, [sp, #12]
 8002c94:	f004 f8a2 	bl	8006ddc <__sprint_r>
 8002c98:	2800      	cmp	r0, #0
 8002c9a:	f040 82e9 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8002c9e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ca0:	9904      	ldr	r1, [sp, #16]
 8002ca2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002ca6:	428a      	cmp	r2, r1
 8002ca8:	bfac      	ite	ge
 8002caa:	189b      	addge	r3, r3, r2
 8002cac:	185b      	addlt	r3, r3, r1
 8002cae:	9305      	str	r3, [sp, #20]
 8002cb0:	2c00      	cmp	r4, #0
 8002cb2:	f040 82d5 	bne.w	8003260 <_vfprintf_r+0xae0>
 8002cb6:	2300      	movs	r3, #0
 8002cb8:	932b      	str	r3, [sp, #172]	; 0xac
 8002cba:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002cbc:	b11b      	cbz	r3, 8002cc6 <_vfprintf_r+0x546>
 8002cbe:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002cc0:	9803      	ldr	r0, [sp, #12]
 8002cc2:	f002 fc9d 	bl	8005600 <_free_r>
 8002cc6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002cca:	4657      	mov	r7, sl
 8002ccc:	783b      	ldrb	r3, [r7, #0]
 8002cce:	2b00      	cmp	r3, #0
 8002cd0:	f47f ada7 	bne.w	8002822 <_vfprintf_r+0xa2>
 8002cd4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002cd6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002cda:	2b00      	cmp	r3, #0
 8002cdc:	f041 80e7 	bne.w	8003eae <_vfprintf_r+0x172e>
 8002ce0:	2300      	movs	r3, #0
 8002ce2:	932b      	str	r3, [sp, #172]	; 0xac
 8002ce4:	e2cb      	b.n	800327e <_vfprintf_r+0xafe>
 8002ce6:	4643      	mov	r3, r8
 8002ce8:	069a      	lsls	r2, r3, #26
 8002cea:	f140 814e 	bpl.w	8002f8a <_vfprintf_r+0x80a>
 8002cee:	9c08      	ldr	r4, [sp, #32]
 8002cf0:	3407      	adds	r4, #7
 8002cf2:	f024 0207 	bic.w	r2, r4, #7
 8002cf6:	f102 0108 	add.w	r1, r2, #8
 8002cfa:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002cfe:	9108      	str	r1, [sp, #32]
 8002d00:	2201      	movs	r2, #1
 8002d02:	2100      	movs	r1, #0
 8002d04:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002d08:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002d0c:	a956      	add	r1, sp, #344	; 0x158
 8002d0e:	9104      	str	r1, [sp, #16]
 8002d10:	f47f aea2 	bne.w	8002a58 <_vfprintf_r+0x2d8>
 8002d14:	4698      	mov	r8, r3
 8002d16:	2a01      	cmp	r2, #1
 8002d18:	f000 8350 	beq.w	80033bc <_vfprintf_r+0xc3c>
 8002d1c:	2a02      	cmp	r2, #2
 8002d1e:	f000 831b 	beq.w	8003358 <_vfprintf_r+0xbd8>
 8002d22:	a956      	add	r1, sp, #344	; 0x158
 8002d24:	e000      	b.n	8002d28 <_vfprintf_r+0x5a8>
 8002d26:	4639      	mov	r1, r7
 8002d28:	08e2      	lsrs	r2, r4, #3
 8002d2a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002d2e:	08e8      	lsrs	r0, r5, #3
 8002d30:	f004 0307 	and.w	r3, r4, #7
 8002d34:	4605      	mov	r5, r0
 8002d36:	4614      	mov	r4, r2
 8002d38:	3330      	adds	r3, #48	; 0x30
 8002d3a:	ea54 0205 	orrs.w	r2, r4, r5
 8002d3e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002d42:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002d46:	d1ee      	bne.n	8002d26 <_vfprintf_r+0x5a6>
 8002d48:	f018 0f01 	tst.w	r8, #1
 8002d4c:	f000 8314 	beq.w	8003378 <_vfprintf_r+0xbf8>
 8002d50:	2b30      	cmp	r3, #48	; 0x30
 8002d52:	f000 8311 	beq.w	8003378 <_vfprintf_r+0xbf8>
 8002d56:	9a04      	ldr	r2, [sp, #16]
 8002d58:	3902      	subs	r1, #2
 8002d5a:	2330      	movs	r3, #48	; 0x30
 8002d5c:	1a52      	subs	r2, r2, r1
 8002d5e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002d62:	9209      	str	r2, [sp, #36]	; 0x24
 8002d64:	460f      	mov	r7, r1
 8002d66:	e68c      	b.n	8002a82 <_vfprintf_r+0x302>
 8002d68:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d6c:	2200      	movs	r2, #0
 8002d6e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002d72:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002d76:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002d7a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d7e:	2b09      	cmp	r3, #9
 8002d80:	d9f5      	bls.n	8002d6e <_vfprintf_r+0x5ee>
 8002d82:	9206      	str	r2, [sp, #24]
 8002d84:	e57c      	b.n	8002880 <_vfprintf_r+0x100>
 8002d86:	4b14      	ldr	r3, [pc, #80]	; (8002dd8 <_vfprintf_r+0x658>)
 8002d88:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d8a:	f018 0f20 	tst.w	r8, #32
 8002d8e:	f000 8114 	beq.w	8002fba <_vfprintf_r+0x83a>
 8002d92:	9c08      	ldr	r4, [sp, #32]
 8002d94:	3407      	adds	r4, #7
 8002d96:	f024 0307 	bic.w	r3, r4, #7
 8002d9a:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002d9e:	f103 0208 	add.w	r2, r3, #8
 8002da2:	9208      	str	r2, [sp, #32]
 8002da4:	f018 0f01 	tst.w	r8, #1
 8002da8:	d009      	beq.n	8002dbe <_vfprintf_r+0x63e>
 8002daa:	ea54 0305 	orrs.w	r3, r4, r5
 8002dae:	d006      	beq.n	8002dbe <_vfprintf_r+0x63e>
 8002db0:	2330      	movs	r3, #48	; 0x30
 8002db2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002db6:	f048 0802 	orr.w	r8, r8, #2
 8002dba:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002dbe:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002dc2:	2202      	movs	r2, #2
 8002dc4:	e79d      	b.n	8002d02 <_vfprintf_r+0x582>
 8002dc6:	f048 0801 	orr.w	r8, r8, #1
 8002dca:	f89a 6000 	ldrb.w	r6, [sl]
 8002dce:	e555      	b.n	800287c <_vfprintf_r+0xfc>
 8002dd0:	08007afc 	.word	0x08007afc
 8002dd4:	08007b0c 	.word	0x08007b0c
 8002dd8:	08007ac8 	.word	0x08007ac8
 8002ddc:	9e03      	ldr	r6, [sp, #12]
 8002dde:	4630      	mov	r0, r6
 8002de0:	f002 feaa 	bl	8005b38 <_localeconv_r>
 8002de4:	6843      	ldr	r3, [r0, #4]
 8002de6:	9318      	str	r3, [sp, #96]	; 0x60
 8002de8:	4618      	mov	r0, r3
 8002dea:	f7fd fc29 	bl	8000640 <strlen>
 8002dee:	901b      	str	r0, [sp, #108]	; 0x6c
 8002df0:	4604      	mov	r4, r0
 8002df2:	4630      	mov	r0, r6
 8002df4:	f002 fea0 	bl	8005b38 <_localeconv_r>
 8002df8:	6883      	ldr	r3, [r0, #8]
 8002dfa:	931a      	str	r3, [sp, #104]	; 0x68
 8002dfc:	2c00      	cmp	r4, #0
 8002dfe:	f43f adb8 	beq.w	8002972 <_vfprintf_r+0x1f2>
 8002e02:	f89a 6000 	ldrb.w	r6, [sl]
 8002e06:	2b00      	cmp	r3, #0
 8002e08:	f43f ad38 	beq.w	800287c <_vfprintf_r+0xfc>
 8002e0c:	781b      	ldrb	r3, [r3, #0]
 8002e0e:	2b00      	cmp	r3, #0
 8002e10:	f43f ad34 	beq.w	800287c <_vfprintf_r+0xfc>
 8002e14:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002e18:	e530      	b.n	800287c <_vfprintf_r+0xfc>
 8002e1a:	9b08      	ldr	r3, [sp, #32]
 8002e1c:	f89a 6000 	ldrb.w	r6, [sl]
 8002e20:	681a      	ldr	r2, [r3, #0]
 8002e22:	9206      	str	r2, [sp, #24]
 8002e24:	2a00      	cmp	r2, #0
 8002e26:	f103 0304 	add.w	r3, r3, #4
 8002e2a:	f2c0 8697 	blt.w	8003b5c <_vfprintf_r+0x13dc>
 8002e2e:	9308      	str	r3, [sp, #32]
 8002e30:	e524      	b.n	800287c <_vfprintf_r+0xfc>
 8002e32:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002e36:	f89a 6000 	ldrb.w	r6, [sl]
 8002e3a:	e51f      	b.n	800287c <_vfprintf_r+0xfc>
 8002e3c:	f89a 6000 	ldrb.w	r6, [sl]
 8002e40:	f048 0804 	orr.w	r8, r8, #4
 8002e44:	e51a      	b.n	800287c <_vfprintf_r+0xfc>
 8002e46:	f89a 6000 	ldrb.w	r6, [sl]
 8002e4a:	2e2a      	cmp	r6, #42	; 0x2a
 8002e4c:	f10a 0201 	add.w	r2, sl, #1
 8002e50:	f001 81b0 	beq.w	80041b4 <_vfprintf_r+0x1a34>
 8002e54:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e58:	2b09      	cmp	r3, #9
 8002e5a:	4692      	mov	sl, r2
 8002e5c:	f04f 0900 	mov.w	r9, #0
 8002e60:	f63f ad0e 	bhi.w	8002880 <_vfprintf_r+0x100>
 8002e64:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002e68:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002e6c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002e70:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e74:	2b09      	cmp	r3, #9
 8002e76:	d9f5      	bls.n	8002e64 <_vfprintf_r+0x6e4>
 8002e78:	e502      	b.n	8002880 <_vfprintf_r+0x100>
 8002e7a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002e7e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e82:	e4fb      	b.n	800287c <_vfprintf_r+0xfc>
 8002e84:	9c08      	ldr	r4, [sp, #32]
 8002e86:	3407      	adds	r4, #7
 8002e88:	f024 0407 	bic.w	r4, r4, #7
 8002e8c:	ed94 7b00 	vldr	d7, [r4]
 8002e90:	ec52 1b17 	vmov	r1, r2, d7
 8002e94:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002e98:	931d      	str	r3, [sp, #116]	; 0x74
 8002e9a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002e9e:	3408      	adds	r4, #8
 8002ea0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002ea4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002ea8:	4bba      	ldr	r3, [pc, #744]	; (8003194 <_vfprintf_r+0xa14>)
 8002eaa:	9408      	str	r4, [sp, #32]
 8002eac:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002eb0:	f7fe f8dc 	bl	800106c <__aeabi_dcmpun>
 8002eb4:	2800      	cmp	r0, #0
 8002eb6:	f040 846f 	bne.w	8003798 <_vfprintf_r+0x1018>
 8002eba:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002ebe:	4bb5      	ldr	r3, [pc, #724]	; (8003194 <_vfprintf_r+0xa14>)
 8002ec0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002ec4:	f7fe f8b4 	bl	8001030 <__aeabi_dcmple>
 8002ec8:	2800      	cmp	r0, #0
 8002eca:	f040 8465 	bne.w	8003798 <_vfprintf_r+0x1018>
 8002ece:	2200      	movs	r2, #0
 8002ed0:	2300      	movs	r3, #0
 8002ed2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ed6:	f7fe f8a1 	bl	800101c <__aeabi_dcmplt>
 8002eda:	2800      	cmp	r0, #0
 8002edc:	f040 855b 	bne.w	8003996 <_vfprintf_r+0x1216>
 8002ee0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002ee4:	4fac      	ldr	r7, [pc, #688]	; (8003198 <_vfprintf_r+0xa18>)
 8002ee6:	4bad      	ldr	r3, [pc, #692]	; (800319c <_vfprintf_r+0xa1c>)
 8002ee8:	2000      	movs	r0, #0
 8002eea:	2103      	movs	r1, #3
 8002eec:	9104      	str	r1, [sp, #16]
 8002eee:	900a      	str	r0, [sp, #40]	; 0x28
 8002ef0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002ef4:	2e47      	cmp	r6, #71	; 0x47
 8002ef6:	bfd8      	it	le
 8002ef8:	461f      	movle	r7, r3
 8002efa:	9109      	str	r1, [sp, #36]	; 0x24
 8002efc:	4681      	mov	r9, r0
 8002efe:	900f      	str	r0, [sp, #60]	; 0x3c
 8002f00:	9014      	str	r0, [sp, #80]	; 0x50
 8002f02:	9011      	str	r0, [sp, #68]	; 0x44
 8002f04:	e5c9      	b.n	8002a9a <_vfprintf_r+0x31a>
 8002f06:	9808      	ldr	r0, [sp, #32]
 8002f08:	2300      	movs	r3, #0
 8002f0a:	6801      	ldr	r1, [r0, #0]
 8002f0c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002f10:	461a      	mov	r2, r3
 8002f12:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002f16:	2301      	movs	r3, #1
 8002f18:	1d01      	adds	r1, r0, #4
 8002f1a:	9304      	str	r3, [sp, #16]
 8002f1c:	920a      	str	r2, [sp, #40]	; 0x28
 8002f1e:	4691      	mov	r9, r2
 8002f20:	920f      	str	r2, [sp, #60]	; 0x3c
 8002f22:	9214      	str	r2, [sp, #80]	; 0x50
 8002f24:	9211      	str	r2, [sp, #68]	; 0x44
 8002f26:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002f2a:	af3d      	add	r7, sp, #244	; 0xf4
 8002f2c:	e5b9      	b.n	8002aa2 <_vfprintf_r+0x322>
 8002f2e:	9b08      	ldr	r3, [sp, #32]
 8002f30:	681f      	ldr	r7, [r3, #0]
 8002f32:	2500      	movs	r5, #0
 8002f34:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002f38:	1d1c      	adds	r4, r3, #4
 8002f3a:	2f00      	cmp	r7, #0
 8002f3c:	f000 8639 	beq.w	8003bb2 <_vfprintf_r+0x1432>
 8002f40:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002f44:	f000 8711 	beq.w	8003d6a <_vfprintf_r+0x15ea>
 8002f48:	464a      	mov	r2, r9
 8002f4a:	4629      	mov	r1, r5
 8002f4c:	4638      	mov	r0, r7
 8002f4e:	f7fd fbe7 	bl	8000720 <memchr>
 8002f52:	900a      	str	r0, [sp, #40]	; 0x28
 8002f54:	2800      	cmp	r0, #0
 8002f56:	f000 85e7 	beq.w	8003b28 <_vfprintf_r+0x13a8>
 8002f5a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002f5c:	1bdb      	subs	r3, r3, r7
 8002f5e:	9309      	str	r3, [sp, #36]	; 0x24
 8002f60:	46a9      	mov	r9, r5
 8002f62:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002f66:	9408      	str	r4, [sp, #32]
 8002f68:	9304      	str	r3, [sp, #16]
 8002f6a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002f6e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002f72:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002f76:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002f7a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002f7e:	e58c      	b.n	8002a9a <_vfprintf_r+0x31a>
 8002f80:	f048 0310 	orr.w	r3, r8, #16
 8002f84:	069a      	lsls	r2, r3, #26
 8002f86:	f53f aeb2 	bmi.w	8002cee <_vfprintf_r+0x56e>
 8002f8a:	9a08      	ldr	r2, [sp, #32]
 8002f8c:	06df      	lsls	r7, r3, #27
 8002f8e:	f102 0104 	add.w	r1, r2, #4
 8002f92:	f100 837e 	bmi.w	8003692 <_vfprintf_r+0xf12>
 8002f96:	065d      	lsls	r5, r3, #25
 8002f98:	9a08      	ldr	r2, [sp, #32]
 8002f9a:	f100 84e4 	bmi.w	8003966 <_vfprintf_r+0x11e6>
 8002f9e:	059c      	lsls	r4, r3, #22
 8002fa0:	f140 8377 	bpl.w	8003692 <_vfprintf_r+0xf12>
 8002fa4:	7814      	ldrb	r4, [r2, #0]
 8002fa6:	9108      	str	r1, [sp, #32]
 8002fa8:	2500      	movs	r5, #0
 8002faa:	2201      	movs	r2, #1
 8002fac:	e6a9      	b.n	8002d02 <_vfprintf_r+0x582>
 8002fae:	4b7c      	ldr	r3, [pc, #496]	; (80031a0 <_vfprintf_r+0xa20>)
 8002fb0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002fb2:	f018 0f20 	tst.w	r8, #32
 8002fb6:	f47f aeec 	bne.w	8002d92 <_vfprintf_r+0x612>
 8002fba:	9a08      	ldr	r2, [sp, #32]
 8002fbc:	f018 0f10 	tst.w	r8, #16
 8002fc0:	f102 0304 	add.w	r3, r2, #4
 8002fc4:	f040 8354 	bne.w	8003670 <_vfprintf_r+0xef0>
 8002fc8:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002fcc:	9a08      	ldr	r2, [sp, #32]
 8002fce:	f040 84d0 	bne.w	8003972 <_vfprintf_r+0x11f2>
 8002fd2:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002fd6:	f000 834b 	beq.w	8003670 <_vfprintf_r+0xef0>
 8002fda:	7814      	ldrb	r4, [r2, #0]
 8002fdc:	9308      	str	r3, [sp, #32]
 8002fde:	2500      	movs	r5, #0
 8002fe0:	e6e0      	b.n	8002da4 <_vfprintf_r+0x624>
 8002fe2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002fe6:	f89a 6000 	ldrb.w	r6, [sl]
 8002fea:	2b00      	cmp	r3, #0
 8002fec:	f47f ac46 	bne.w	800287c <_vfprintf_r+0xfc>
 8002ff0:	2320      	movs	r3, #32
 8002ff2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ff6:	e441      	b.n	800287c <_vfprintf_r+0xfc>
 8002ff8:	f89a 6000 	ldrb.w	r6, [sl]
 8002ffc:	2e6c      	cmp	r6, #108	; 0x6c
 8002ffe:	bf03      	ittte	eq
 8003000:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003004:	f048 0820 	orreq.w	r8, r8, #32
 8003008:	f10a 0a01 	addeq.w	sl, sl, #1
 800300c:	f048 0810 	orrne.w	r8, r8, #16
 8003010:	e434      	b.n	800287c <_vfprintf_r+0xfc>
 8003012:	9a08      	ldr	r2, [sp, #32]
 8003014:	f018 0f20 	tst.w	r8, #32
 8003018:	f852 3b04 	ldr.w	r3, [r2], #4
 800301c:	9208      	str	r2, [sp, #32]
 800301e:	f000 83a1 	beq.w	8003764 <_vfprintf_r+0xfe4>
 8003022:	9a05      	ldr	r2, [sp, #20]
 8003024:	4610      	mov	r0, r2
 8003026:	17d1      	asrs	r1, r2, #31
 8003028:	e9c3 0100 	strd	r0, r1, [r3]
 800302c:	4657      	mov	r7, sl
 800302e:	e64d      	b.n	8002ccc <_vfprintf_r+0x54c>
 8003030:	f89a 6000 	ldrb.w	r6, [sl]
 8003034:	2e68      	cmp	r6, #104	; 0x68
 8003036:	bf03      	ittte	eq
 8003038:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800303c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003040:	f10a 0a01 	addeq.w	sl, sl, #1
 8003044:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003048:	e418      	b.n	800287c <_vfprintf_r+0xfc>
 800304a:	9908      	ldr	r1, [sp, #32]
 800304c:	4b55      	ldr	r3, [pc, #340]	; (80031a4 <_vfprintf_r+0xa24>)
 800304e:	680c      	ldr	r4, [r1, #0]
 8003050:	9317      	str	r3, [sp, #92]	; 0x5c
 8003052:	f647 0230 	movw	r2, #30768	; 0x7830
 8003056:	3104      	adds	r1, #4
 8003058:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 800305c:	f048 0302 	orr.w	r3, r8, #2
 8003060:	9108      	str	r1, [sp, #32]
 8003062:	2500      	movs	r5, #0
 8003064:	2202      	movs	r2, #2
 8003066:	2678      	movs	r6, #120	; 0x78
 8003068:	e64b      	b.n	8002d02 <_vfprintf_r+0x582>
 800306a:	f048 0808 	orr.w	r8, r8, #8
 800306e:	f89a 6000 	ldrb.w	r6, [sl]
 8003072:	e403      	b.n	800287c <_vfprintf_r+0xfc>
 8003074:	f048 0310 	orr.w	r3, r8, #16
 8003078:	069f      	lsls	r7, r3, #26
 800307a:	f53f acd1 	bmi.w	8002a20 <_vfprintf_r+0x2a0>
 800307e:	9908      	ldr	r1, [sp, #32]
 8003080:	06dd      	lsls	r5, r3, #27
 8003082:	f101 0204 	add.w	r2, r1, #4
 8003086:	f100 82fd 	bmi.w	8003684 <_vfprintf_r+0xf04>
 800308a:	065c      	lsls	r4, r3, #25
 800308c:	9908      	ldr	r1, [sp, #32]
 800308e:	f100 8475 	bmi.w	800397c <_vfprintf_r+0x11fc>
 8003092:	0598      	lsls	r0, r3, #22
 8003094:	f140 82f6 	bpl.w	8003684 <_vfprintf_r+0xf04>
 8003098:	f991 4000 	ldrsb.w	r4, [r1]
 800309c:	9208      	str	r2, [sp, #32]
 800309e:	17e5      	asrs	r5, r4, #31
 80030a0:	4620      	mov	r0, r4
 80030a2:	4629      	mov	r1, r5
 80030a4:	e4c7      	b.n	8002a36 <_vfprintf_r+0x2b6>
 80030a6:	9a08      	ldr	r2, [sp, #32]
 80030a8:	f018 0f10 	tst.w	r8, #16
 80030ac:	f102 0304 	add.w	r3, r2, #4
 80030b0:	f040 82e3 	bne.w	800367a <_vfprintf_r+0xefa>
 80030b4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80030b8:	9a08      	ldr	r2, [sp, #32]
 80030ba:	f040 8467 	bne.w	800398c <_vfprintf_r+0x120c>
 80030be:	f418 7f00 	tst.w	r8, #512	; 0x200
 80030c2:	f000 82da 	beq.w	800367a <_vfprintf_r+0xefa>
 80030c6:	7814      	ldrb	r4, [r2, #0]
 80030c8:	9308      	str	r3, [sp, #32]
 80030ca:	2500      	movs	r5, #0
 80030cc:	e488      	b.n	80029e0 <_vfprintf_r+0x260>
 80030ce:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80030d2:	f002 fd45 	bl	8005b60 <__retarget_lock_release_recursive>
 80030d6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80030da:	9305      	str	r3, [sp, #20]
 80030dc:	e443      	b.n	8002966 <_vfprintf_r+0x1e6>
 80030de:	2e00      	cmp	r6, #0
 80030e0:	f43f adf8 	beq.w	8002cd4 <_vfprintf_r+0x554>
 80030e4:	2300      	movs	r3, #0
 80030e6:	2101      	movs	r1, #1
 80030e8:	461a      	mov	r2, r3
 80030ea:	9104      	str	r1, [sp, #16]
 80030ec:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80030f0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80030f4:	930a      	str	r3, [sp, #40]	; 0x28
 80030f6:	4699      	mov	r9, r3
 80030f8:	930f      	str	r3, [sp, #60]	; 0x3c
 80030fa:	9314      	str	r3, [sp, #80]	; 0x50
 80030fc:	9311      	str	r3, [sp, #68]	; 0x44
 80030fe:	9109      	str	r1, [sp, #36]	; 0x24
 8003100:	af3d      	add	r7, sp, #244	; 0xf4
 8003102:	e4ce      	b.n	8002aa2 <_vfprintf_r+0x322>
 8003104:	2e65      	cmp	r6, #101	; 0x65
 8003106:	f340 80ca 	ble.w	800329e <_vfprintf_r+0xb1e>
 800310a:	2200      	movs	r2, #0
 800310c:	2300      	movs	r3, #0
 800310e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003112:	f7fd ff79 	bl	8001008 <__aeabi_dcmpeq>
 8003116:	2800      	cmp	r0, #0
 8003118:	f000 8169 	beq.w	80033ee <_vfprintf_r+0xc6e>
 800311c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800311e:	4a22      	ldr	r2, [pc, #136]	; (80031a8 <_vfprintf_r+0xa28>)
 8003120:	f8cb 2000 	str.w	r2, [fp]
 8003124:	3301      	adds	r3, #1
 8003126:	3401      	adds	r4, #1
 8003128:	2201      	movs	r2, #1
 800312a:	2b07      	cmp	r3, #7
 800312c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003130:	f8cb 2004 	str.w	r2, [fp, #4]
 8003134:	f300 8406 	bgt.w	8003944 <_vfprintf_r+0x11c4>
 8003138:	f10b 0b08 	add.w	fp, fp, #8
 800313c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800313e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003140:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003142:	4293      	cmp	r3, r2
 8003144:	db03      	blt.n	800314e <_vfprintf_r+0x9ce>
 8003146:	f018 0f01 	tst.w	r8, #1
 800314a:	f43f ad6a 	beq.w	8002c22 <_vfprintf_r+0x4a2>
 800314e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003150:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003152:	f8cb 2000 	str.w	r2, [fp]
 8003156:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003158:	f8cb 2004 	str.w	r2, [fp, #4]
 800315c:	3301      	adds	r3, #1
 800315e:	4414      	add	r4, r2
 8003160:	2b07      	cmp	r3, #7
 8003162:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003166:	f300 8517 	bgt.w	8003b98 <_vfprintf_r+0x1418>
 800316a:	f10b 0b08 	add.w	fp, fp, #8
 800316e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003170:	1e5d      	subs	r5, r3, #1
 8003172:	2d00      	cmp	r5, #0
 8003174:	f77f ad55 	ble.w	8002c22 <_vfprintf_r+0x4a2>
 8003178:	2d10      	cmp	r5, #16
 800317a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800317c:	4b0b      	ldr	r3, [pc, #44]	; (80031ac <_vfprintf_r+0xa2c>)
 800317e:	f340 82e7 	ble.w	8003750 <_vfprintf_r+0xfd0>
 8003182:	4619      	mov	r1, r3
 8003184:	2610      	movs	r6, #16
 8003186:	4623      	mov	r3, r4
 8003188:	9f03      	ldr	r7, [sp, #12]
 800318a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800318e:	460c      	mov	r4, r1
 8003190:	e014      	b.n	80031bc <_vfprintf_r+0xa3c>
 8003192:	bf00      	nop
 8003194:	7fefffff 	.word	0x7fefffff
 8003198:	08007abc 	.word	0x08007abc
 800319c:	08007ab8 	.word	0x08007ab8
 80031a0:	08007adc 	.word	0x08007adc
 80031a4:	08007ac8 	.word	0x08007ac8
 80031a8:	08007af8 	.word	0x08007af8
 80031ac:	08007b0c 	.word	0x08007b0c
 80031b0:	f10b 0b08 	add.w	fp, fp, #8
 80031b4:	3d10      	subs	r5, #16
 80031b6:	2d10      	cmp	r5, #16
 80031b8:	f340 82c7 	ble.w	800374a <_vfprintf_r+0xfca>
 80031bc:	3201      	adds	r2, #1
 80031be:	3310      	adds	r3, #16
 80031c0:	2a07      	cmp	r2, #7
 80031c2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80031c6:	e9cb 4600 	strd	r4, r6, [fp]
 80031ca:	ddf1      	ble.n	80031b0 <_vfprintf_r+0xa30>
 80031cc:	aa2a      	add	r2, sp, #168	; 0xa8
 80031ce:	4649      	mov	r1, r9
 80031d0:	4638      	mov	r0, r7
 80031d2:	f003 fe03 	bl	8006ddc <__sprint_r>
 80031d6:	2800      	cmp	r0, #0
 80031d8:	d14c      	bne.n	8003274 <_vfprintf_r+0xaf4>
 80031da:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80031de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031e2:	e7e7      	b.n	80031b4 <_vfprintf_r+0xa34>
 80031e4:	9b06      	ldr	r3, [sp, #24]
 80031e6:	9a04      	ldr	r2, [sp, #16]
 80031e8:	1a9d      	subs	r5, r3, r2
 80031ea:	2d00      	cmp	r5, #0
 80031ec:	f77f acc9 	ble.w	8002b82 <_vfprintf_r+0x402>
 80031f0:	2d10      	cmp	r5, #16
 80031f2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031f4:	4bbc      	ldr	r3, [pc, #752]	; (80034e8 <_vfprintf_r+0xd68>)
 80031f6:	dd27      	ble.n	8003248 <_vfprintf_r+0xac8>
 80031f8:	4659      	mov	r1, fp
 80031fa:	4620      	mov	r0, r4
 80031fc:	46bb      	mov	fp, r7
 80031fe:	461c      	mov	r4, r3
 8003200:	4637      	mov	r7, r6
 8003202:	9e07      	ldr	r6, [sp, #28]
 8003204:	e004      	b.n	8003210 <_vfprintf_r+0xa90>
 8003206:	3d10      	subs	r5, #16
 8003208:	2d10      	cmp	r5, #16
 800320a:	f101 0108 	add.w	r1, r1, #8
 800320e:	dd16      	ble.n	800323e <_vfprintf_r+0xabe>
 8003210:	3201      	adds	r2, #1
 8003212:	3010      	adds	r0, #16
 8003214:	2310      	movs	r3, #16
 8003216:	2a07      	cmp	r2, #7
 8003218:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800321c:	600c      	str	r4, [r1, #0]
 800321e:	604b      	str	r3, [r1, #4]
 8003220:	ddf1      	ble.n	8003206 <_vfprintf_r+0xa86>
 8003222:	aa2a      	add	r2, sp, #168	; 0xa8
 8003224:	4631      	mov	r1, r6
 8003226:	9803      	ldr	r0, [sp, #12]
 8003228:	f003 fdd8 	bl	8006ddc <__sprint_r>
 800322c:	2800      	cmp	r0, #0
 800322e:	f040 80a8 	bne.w	8003382 <_vfprintf_r+0xc02>
 8003232:	3d10      	subs	r5, #16
 8003234:	2d10      	cmp	r5, #16
 8003236:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800323a:	a92d      	add	r1, sp, #180	; 0xb4
 800323c:	dce8      	bgt.n	8003210 <_vfprintf_r+0xa90>
 800323e:	463e      	mov	r6, r7
 8003240:	4623      	mov	r3, r4
 8003242:	465f      	mov	r7, fp
 8003244:	4604      	mov	r4, r0
 8003246:	468b      	mov	fp, r1
 8003248:	3201      	adds	r2, #1
 800324a:	442c      	add	r4, r5
 800324c:	2a07      	cmp	r2, #7
 800324e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003252:	e9cb 3500 	strd	r3, r5, [fp]
 8003256:	f300 8292 	bgt.w	800377e <_vfprintf_r+0xffe>
 800325a:	f10b 0b08 	add.w	fp, fp, #8
 800325e:	e490      	b.n	8002b82 <_vfprintf_r+0x402>
 8003260:	aa2a      	add	r2, sp, #168	; 0xa8
 8003262:	9907      	ldr	r1, [sp, #28]
 8003264:	9803      	ldr	r0, [sp, #12]
 8003266:	f003 fdb9 	bl	8006ddc <__sprint_r>
 800326a:	2800      	cmp	r0, #0
 800326c:	f43f ad23 	beq.w	8002cb6 <_vfprintf_r+0x536>
 8003270:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003274:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003276:	b111      	cbz	r1, 800327e <_vfprintf_r+0xafe>
 8003278:	9803      	ldr	r0, [sp, #12]
 800327a:	f002 f9c1 	bl	8005600 <_free_r>
 800327e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003282:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003286:	07d0      	lsls	r0, r2, #31
 8003288:	d402      	bmi.n	8003290 <_vfprintf_r+0xb10>
 800328a:	0599      	lsls	r1, r3, #22
 800328c:	f140 81d0 	bpl.w	8003630 <_vfprintf_r+0xeb0>
 8003290:	065a      	lsls	r2, r3, #25
 8003292:	f53f ab65 	bmi.w	8002960 <_vfprintf_r+0x1e0>
 8003296:	9805      	ldr	r0, [sp, #20]
 8003298:	b057      	add	sp, #348	; 0x15c
 800329a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800329e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80032a0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032a2:	2a01      	cmp	r2, #1
 80032a4:	f104 0401 	add.w	r4, r4, #1
 80032a8:	f103 0501 	add.w	r5, r3, #1
 80032ac:	f10b 0608 	add.w	r6, fp, #8
 80032b0:	f340 811c 	ble.w	80034ec <_vfprintf_r+0xd6c>
 80032b4:	2301      	movs	r3, #1
 80032b6:	2d07      	cmp	r5, #7
 80032b8:	f8cb 7000 	str.w	r7, [fp]
 80032bc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80032c0:	f8cb 3004 	str.w	r3, [fp, #4]
 80032c4:	f300 81bb 	bgt.w	800363e <_vfprintf_r+0xebe>
 80032c8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80032ca:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80032cc:	1c69      	adds	r1, r5, #1
 80032ce:	441c      	add	r4, r3
 80032d0:	2907      	cmp	r1, #7
 80032d2:	910b      	str	r1, [sp, #44]	; 0x2c
 80032d4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80032d8:	e9c6 2300 	strd	r2, r3, [r6]
 80032dc:	f300 81bb 	bgt.w	8003656 <_vfprintf_r+0xed6>
 80032e0:	3608      	adds	r6, #8
 80032e2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80032e4:	1c53      	adds	r3, r2, #1
 80032e6:	461d      	mov	r5, r3
 80032e8:	9509      	str	r5, [sp, #36]	; 0x24
 80032ea:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80032ec:	930e      	str	r3, [sp, #56]	; 0x38
 80032ee:	2200      	movs	r2, #0
 80032f0:	2300      	movs	r3, #0
 80032f2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032f6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80032fa:	f106 0b08 	add.w	fp, r6, #8
 80032fe:	f7fd fe83 	bl	8001008 <__aeabi_dcmpeq>
 8003302:	2800      	cmp	r0, #0
 8003304:	f040 80c2 	bne.w	800348c <_vfprintf_r+0xd0c>
 8003308:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800330a:	f8c6 9004 	str.w	r9, [r6, #4]
 800330e:	3701      	adds	r7, #1
 8003310:	444c      	add	r4, r9
 8003312:	2d07      	cmp	r5, #7
 8003314:	6037      	str	r7, [r6, #0]
 8003316:	942c      	str	r4, [sp, #176]	; 0xb0
 8003318:	952b      	str	r5, [sp, #172]	; 0xac
 800331a:	f300 80f9 	bgt.w	8003510 <_vfprintf_r+0xd90>
 800331e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003320:	f106 0310 	add.w	r3, r6, #16
 8003324:	3202      	adds	r2, #2
 8003326:	465e      	mov	r6, fp
 8003328:	9209      	str	r2, [sp, #36]	; 0x24
 800332a:	469b      	mov	fp, r3
 800332c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800332e:	6072      	str	r2, [r6, #4]
 8003330:	4414      	add	r4, r2
 8003332:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003334:	942c      	str	r4, [sp, #176]	; 0xb0
 8003336:	ab26      	add	r3, sp, #152	; 0x98
 8003338:	2a07      	cmp	r2, #7
 800333a:	922b      	str	r2, [sp, #172]	; 0xac
 800333c:	6033      	str	r3, [r6, #0]
 800333e:	f77f ac70 	ble.w	8002c22 <_vfprintf_r+0x4a2>
 8003342:	aa2a      	add	r2, sp, #168	; 0xa8
 8003344:	9907      	ldr	r1, [sp, #28]
 8003346:	9803      	ldr	r0, [sp, #12]
 8003348:	f003 fd48 	bl	8006ddc <__sprint_r>
 800334c:	2800      	cmp	r0, #0
 800334e:	d18f      	bne.n	8003270 <_vfprintf_r+0xaf0>
 8003350:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003352:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003356:	e464      	b.n	8002c22 <_vfprintf_r+0x4a2>
 8003358:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800335a:	af56      	add	r7, sp, #344	; 0x158
 800335c:	0923      	lsrs	r3, r4, #4
 800335e:	f004 010f 	and.w	r1, r4, #15
 8003362:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003366:	092a      	lsrs	r2, r5, #4
 8003368:	461c      	mov	r4, r3
 800336a:	4615      	mov	r5, r2
 800336c:	5c43      	ldrb	r3, [r0, r1]
 800336e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003372:	ea54 0305 	orrs.w	r3, r4, r5
 8003376:	d1f1      	bne.n	800335c <_vfprintf_r+0xbdc>
 8003378:	9b04      	ldr	r3, [sp, #16]
 800337a:	1bdb      	subs	r3, r3, r7
 800337c:	9309      	str	r3, [sp, #36]	; 0x24
 800337e:	f7ff bb80 	b.w	8002a82 <_vfprintf_r+0x302>
 8003382:	46b1      	mov	r9, r6
 8003384:	e776      	b.n	8003274 <_vfprintf_r+0xaf4>
 8003386:	aa2a      	add	r2, sp, #168	; 0xa8
 8003388:	9907      	ldr	r1, [sp, #28]
 800338a:	9803      	ldr	r0, [sp, #12]
 800338c:	f003 fd26 	bl	8006ddc <__sprint_r>
 8003390:	2800      	cmp	r0, #0
 8003392:	f47f af6d 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8003396:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003398:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800339c:	f7ff bbdd 	b.w	8002b5a <_vfprintf_r+0x3da>
 80033a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80033a2:	9907      	ldr	r1, [sp, #28]
 80033a4:	9803      	ldr	r0, [sp, #12]
 80033a6:	f003 fd19 	bl	8006ddc <__sprint_r>
 80033aa:	2800      	cmp	r0, #0
 80033ac:	f47f af60 	bne.w	8003270 <_vfprintf_r+0xaf0>
 80033b0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033b2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033b6:	f7ff bbe0 	b.w	8002b7a <_vfprintf_r+0x3fa>
 80033ba:	4698      	mov	r8, r3
 80033bc:	2d00      	cmp	r5, #0
 80033be:	bf08      	it	eq
 80033c0:	2c0a      	cmpeq	r4, #10
 80033c2:	f080 8170 	bcs.w	80036a6 <_vfprintf_r+0xf26>
 80033c6:	af56      	add	r7, sp, #344	; 0x158
 80033c8:	3430      	adds	r4, #48	; 0x30
 80033ca:	2301      	movs	r3, #1
 80033cc:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80033d0:	9309      	str	r3, [sp, #36]	; 0x24
 80033d2:	f7ff bb56 	b.w	8002a82 <_vfprintf_r+0x302>
 80033d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80033d8:	9907      	ldr	r1, [sp, #28]
 80033da:	9803      	ldr	r0, [sp, #12]
 80033dc:	f003 fcfe 	bl	8006ddc <__sprint_r>
 80033e0:	2800      	cmp	r0, #0
 80033e2:	f47f af45 	bne.w	8003270 <_vfprintf_r+0xaf0>
 80033e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033ec:	e406      	b.n	8002bfc <_vfprintf_r+0x47c>
 80033ee:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80033f0:	2b00      	cmp	r3, #0
 80033f2:	f340 8273 	ble.w	80038dc <_vfprintf_r+0x115c>
 80033f6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80033fa:	4293      	cmp	r3, r2
 80033fc:	bfa8      	it	ge
 80033fe:	4613      	movge	r3, r2
 8003400:	2b00      	cmp	r3, #0
 8003402:	461d      	mov	r5, r3
 8003404:	dd0d      	ble.n	8003422 <_vfprintf_r+0xca2>
 8003406:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003408:	f8cb 7000 	str.w	r7, [fp]
 800340c:	3301      	adds	r3, #1
 800340e:	442c      	add	r4, r5
 8003410:	2b07      	cmp	r3, #7
 8003412:	942c      	str	r4, [sp, #176]	; 0xb0
 8003414:	f8cb 5004 	str.w	r5, [fp, #4]
 8003418:	932b      	str	r3, [sp, #172]	; 0xac
 800341a:	f300 82c1 	bgt.w	80039a0 <_vfprintf_r+0x1220>
 800341e:	f10b 0b08 	add.w	fp, fp, #8
 8003422:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003424:	2d00      	cmp	r5, #0
 8003426:	bfa8      	it	ge
 8003428:	1b5b      	subge	r3, r3, r5
 800342a:	2b00      	cmp	r3, #0
 800342c:	461d      	mov	r5, r3
 800342e:	f340 8099 	ble.w	8003564 <_vfprintf_r+0xde4>
 8003432:	2d10      	cmp	r5, #16
 8003434:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003436:	4b2c      	ldr	r3, [pc, #176]	; (80034e8 <_vfprintf_r+0xd68>)
 8003438:	f340 83db 	ble.w	8003bf2 <_vfprintf_r+0x1472>
 800343c:	4618      	mov	r0, r3
 800343e:	4621      	mov	r1, r4
 8003440:	465b      	mov	r3, fp
 8003442:	2610      	movs	r6, #16
 8003444:	46bb      	mov	fp, r7
 8003446:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800344a:	9c07      	ldr	r4, [sp, #28]
 800344c:	4607      	mov	r7, r0
 800344e:	e004      	b.n	800345a <_vfprintf_r+0xcda>
 8003450:	3308      	adds	r3, #8
 8003452:	3d10      	subs	r5, #16
 8003454:	2d10      	cmp	r5, #16
 8003456:	f340 83c7 	ble.w	8003be8 <_vfprintf_r+0x1468>
 800345a:	3201      	adds	r2, #1
 800345c:	3110      	adds	r1, #16
 800345e:	2a07      	cmp	r2, #7
 8003460:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003464:	e9c3 7600 	strd	r7, r6, [r3]
 8003468:	ddf2      	ble.n	8003450 <_vfprintf_r+0xcd0>
 800346a:	aa2a      	add	r2, sp, #168	; 0xa8
 800346c:	4621      	mov	r1, r4
 800346e:	4648      	mov	r0, r9
 8003470:	f003 fcb4 	bl	8006ddc <__sprint_r>
 8003474:	2800      	cmp	r0, #0
 8003476:	f040 84a5 	bne.w	8003dc4 <_vfprintf_r+0x1644>
 800347a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800347e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003480:	e7e7      	b.n	8003452 <_vfprintf_r+0xcd2>
 8003482:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003486:	af56      	add	r7, sp, #344	; 0x158
 8003488:	f7ff bafb 	b.w	8002a82 <_vfprintf_r+0x302>
 800348c:	f1b9 0f00 	cmp.w	r9, #0
 8003490:	f77f af4c 	ble.w	800332c <_vfprintf_r+0xbac>
 8003494:	f1b9 0f10 	cmp.w	r9, #16
 8003498:	4b13      	ldr	r3, [pc, #76]	; (80034e8 <_vfprintf_r+0xd68>)
 800349a:	f340 8659 	ble.w	8004150 <_vfprintf_r+0x19d0>
 800349e:	4619      	mov	r1, r3
 80034a0:	4622      	mov	r2, r4
 80034a2:	4633      	mov	r3, r6
 80034a4:	2710      	movs	r7, #16
 80034a6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80034aa:	9c07      	ldr	r4, [sp, #28]
 80034ac:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80034ae:	460e      	mov	r6, r1
 80034b0:	e007      	b.n	80034c2 <_vfprintf_r+0xd42>
 80034b2:	3308      	adds	r3, #8
 80034b4:	f1a9 0910 	sub.w	r9, r9, #16
 80034b8:	f1b9 0f10 	cmp.w	r9, #16
 80034bc:	f340 8353 	ble.w	8003b66 <_vfprintf_r+0x13e6>
 80034c0:	3501      	adds	r5, #1
 80034c2:	3210      	adds	r2, #16
 80034c4:	2d07      	cmp	r5, #7
 80034c6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80034ca:	e9c3 6700 	strd	r6, r7, [r3]
 80034ce:	ddf0      	ble.n	80034b2 <_vfprintf_r+0xd32>
 80034d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80034d2:	4621      	mov	r1, r4
 80034d4:	4658      	mov	r0, fp
 80034d6:	f003 fc81 	bl	8006ddc <__sprint_r>
 80034da:	2800      	cmp	r0, #0
 80034dc:	f040 8472 	bne.w	8003dc4 <_vfprintf_r+0x1644>
 80034e0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80034e4:	ab2d      	add	r3, sp, #180	; 0xb4
 80034e6:	e7e5      	b.n	80034b4 <_vfprintf_r+0xd34>
 80034e8:	08007b0c 	.word	0x08007b0c
 80034ec:	f018 0f01 	tst.w	r8, #1
 80034f0:	f47f aee0 	bne.w	80032b4 <_vfprintf_r+0xb34>
 80034f4:	2201      	movs	r2, #1
 80034f6:	2d07      	cmp	r5, #7
 80034f8:	f8cb 7000 	str.w	r7, [fp]
 80034fc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003500:	f8cb 2004 	str.w	r2, [fp, #4]
 8003504:	dc04      	bgt.n	8003510 <_vfprintf_r+0xd90>
 8003506:	3302      	adds	r3, #2
 8003508:	9309      	str	r3, [sp, #36]	; 0x24
 800350a:	f10b 0b10 	add.w	fp, fp, #16
 800350e:	e70d      	b.n	800332c <_vfprintf_r+0xbac>
 8003510:	aa2a      	add	r2, sp, #168	; 0xa8
 8003512:	9907      	ldr	r1, [sp, #28]
 8003514:	9803      	ldr	r0, [sp, #12]
 8003516:	f003 fc61 	bl	8006ddc <__sprint_r>
 800351a:	2800      	cmp	r0, #0
 800351c:	f47f aea8 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8003520:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003524:	3301      	adds	r3, #1
 8003526:	9309      	str	r3, [sp, #36]	; 0x24
 8003528:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800352c:	ae2d      	add	r6, sp, #180	; 0xb4
 800352e:	e6fd      	b.n	800332c <_vfprintf_r+0xbac>
 8003530:	aa2a      	add	r2, sp, #168	; 0xa8
 8003532:	9907      	ldr	r1, [sp, #28]
 8003534:	9803      	ldr	r0, [sp, #12]
 8003536:	f003 fc51 	bl	8006ddc <__sprint_r>
 800353a:	2800      	cmp	r0, #0
 800353c:	f47f ae98 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8003540:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003544:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003546:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800354a:	f7ff baf6 	b.w	8002b3a <_vfprintf_r+0x3ba>
 800354e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003550:	9907      	ldr	r1, [sp, #28]
 8003552:	9803      	ldr	r0, [sp, #12]
 8003554:	f003 fc42 	bl	8006ddc <__sprint_r>
 8003558:	2800      	cmp	r0, #0
 800355a:	f47f ae89 	bne.w	8003270 <_vfprintf_r+0xaf0>
 800355e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003560:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003564:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003566:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800356a:	443b      	add	r3, r7
 800356c:	4699      	mov	r9, r3
 800356e:	f040 8357 	bne.w	8003c20 <_vfprintf_r+0x14a0>
 8003572:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003574:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003576:	4293      	cmp	r3, r2
 8003578:	db49      	blt.n	800360e <_vfprintf_r+0xe8e>
 800357a:	f018 0f01 	tst.w	r8, #1
 800357e:	d146      	bne.n	800360e <_vfprintf_r+0xe8e>
 8003580:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003582:	18bd      	adds	r5, r7, r2
 8003584:	eba5 0509 	sub.w	r5, r5, r9
 8003588:	1ad3      	subs	r3, r2, r3
 800358a:	429d      	cmp	r5, r3
 800358c:	bfa8      	it	ge
 800358e:	461d      	movge	r5, r3
 8003590:	2d00      	cmp	r5, #0
 8003592:	dd0d      	ble.n	80035b0 <_vfprintf_r+0xe30>
 8003594:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003596:	f8cb 9000 	str.w	r9, [fp]
 800359a:	3201      	adds	r2, #1
 800359c:	442c      	add	r4, r5
 800359e:	2a07      	cmp	r2, #7
 80035a0:	942c      	str	r4, [sp, #176]	; 0xb0
 80035a2:	f8cb 5004 	str.w	r5, [fp, #4]
 80035a6:	922b      	str	r2, [sp, #172]	; 0xac
 80035a8:	f300 8462 	bgt.w	8003e70 <_vfprintf_r+0x16f0>
 80035ac:	f10b 0b08 	add.w	fp, fp, #8
 80035b0:	2d00      	cmp	r5, #0
 80035b2:	bfac      	ite	ge
 80035b4:	1b5d      	subge	r5, r3, r5
 80035b6:	461d      	movlt	r5, r3
 80035b8:	2d00      	cmp	r5, #0
 80035ba:	f77f ab32 	ble.w	8002c22 <_vfprintf_r+0x4a2>
 80035be:	2d10      	cmp	r5, #16
 80035c0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035c2:	4bc5      	ldr	r3, [pc, #788]	; (80038d8 <_vfprintf_r+0x1158>)
 80035c4:	f340 80c4 	ble.w	8003750 <_vfprintf_r+0xfd0>
 80035c8:	4619      	mov	r1, r3
 80035ca:	2610      	movs	r6, #16
 80035cc:	4623      	mov	r3, r4
 80035ce:	9f03      	ldr	r7, [sp, #12]
 80035d0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80035d4:	460c      	mov	r4, r1
 80035d6:	e005      	b.n	80035e4 <_vfprintf_r+0xe64>
 80035d8:	f10b 0b08 	add.w	fp, fp, #8
 80035dc:	3d10      	subs	r5, #16
 80035de:	2d10      	cmp	r5, #16
 80035e0:	f340 80b3 	ble.w	800374a <_vfprintf_r+0xfca>
 80035e4:	3201      	adds	r2, #1
 80035e6:	3310      	adds	r3, #16
 80035e8:	2a07      	cmp	r2, #7
 80035ea:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80035ee:	e9cb 4600 	strd	r4, r6, [fp]
 80035f2:	ddf1      	ble.n	80035d8 <_vfprintf_r+0xe58>
 80035f4:	aa2a      	add	r2, sp, #168	; 0xa8
 80035f6:	4649      	mov	r1, r9
 80035f8:	4638      	mov	r0, r7
 80035fa:	f003 fbef 	bl	8006ddc <__sprint_r>
 80035fe:	2800      	cmp	r0, #0
 8003600:	f47f ae38 	bne.w	8003274 <_vfprintf_r+0xaf4>
 8003604:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003608:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800360c:	e7e6      	b.n	80035dc <_vfprintf_r+0xe5c>
 800360e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003610:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003612:	f8cb 1000 	str.w	r1, [fp]
 8003616:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003618:	f8cb 1004 	str.w	r1, [fp, #4]
 800361c:	3201      	adds	r2, #1
 800361e:	440c      	add	r4, r1
 8003620:	2a07      	cmp	r2, #7
 8003622:	942c      	str	r4, [sp, #176]	; 0xb0
 8003624:	922b      	str	r2, [sp, #172]	; 0xac
 8003626:	f300 828c 	bgt.w	8003b42 <_vfprintf_r+0x13c2>
 800362a:	f10b 0b08 	add.w	fp, fp, #8
 800362e:	e7a7      	b.n	8003580 <_vfprintf_r+0xe00>
 8003630:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003634:	f002 fa94 	bl	8005b60 <__retarget_lock_release_recursive>
 8003638:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800363c:	e628      	b.n	8003290 <_vfprintf_r+0xb10>
 800363e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003640:	9907      	ldr	r1, [sp, #28]
 8003642:	9803      	ldr	r0, [sp, #12]
 8003644:	f003 fbca 	bl	8006ddc <__sprint_r>
 8003648:	2800      	cmp	r0, #0
 800364a:	f47f ae11 	bne.w	8003270 <_vfprintf_r+0xaf0>
 800364e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003652:	ae2d      	add	r6, sp, #180	; 0xb4
 8003654:	e638      	b.n	80032c8 <_vfprintf_r+0xb48>
 8003656:	aa2a      	add	r2, sp, #168	; 0xa8
 8003658:	9907      	ldr	r1, [sp, #28]
 800365a:	9803      	ldr	r0, [sp, #12]
 800365c:	f003 fbbe 	bl	8006ddc <__sprint_r>
 8003660:	2800      	cmp	r0, #0
 8003662:	f47f ae05 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8003666:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800366a:	ae2d      	add	r6, sp, #180	; 0xb4
 800366c:	930b      	str	r3, [sp, #44]	; 0x2c
 800366e:	e638      	b.n	80032e2 <_vfprintf_r+0xb62>
 8003670:	6814      	ldr	r4, [r2, #0]
 8003672:	9308      	str	r3, [sp, #32]
 8003674:	2500      	movs	r5, #0
 8003676:	f7ff bb95 	b.w	8002da4 <_vfprintf_r+0x624>
 800367a:	6814      	ldr	r4, [r2, #0]
 800367c:	9308      	str	r3, [sp, #32]
 800367e:	2500      	movs	r5, #0
 8003680:	f7ff b9ae 	b.w	80029e0 <_vfprintf_r+0x260>
 8003684:	680c      	ldr	r4, [r1, #0]
 8003686:	9208      	str	r2, [sp, #32]
 8003688:	17e5      	asrs	r5, r4, #31
 800368a:	4620      	mov	r0, r4
 800368c:	4629      	mov	r1, r5
 800368e:	f7ff b9d2 	b.w	8002a36 <_vfprintf_r+0x2b6>
 8003692:	6814      	ldr	r4, [r2, #0]
 8003694:	9108      	str	r1, [sp, #32]
 8003696:	2201      	movs	r2, #1
 8003698:	2500      	movs	r5, #0
 800369a:	f7ff bb32 	b.w	8002d02 <_vfprintf_r+0x582>
 800369e:	2a01      	cmp	r2, #1
 80036a0:	f47f ab3c 	bne.w	8002d1c <_vfprintf_r+0x59c>
 80036a4:	e68f      	b.n	80033c6 <_vfprintf_r+0xc46>
 80036a6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80036aa:	2200      	movs	r2, #0
 80036ac:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80036b0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80036b4:	af56      	add	r7, sp, #344	; 0x158
 80036b6:	4692      	mov	sl, r2
 80036b8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80036bc:	461e      	mov	r6, r3
 80036be:	e00a      	b.n	80036d6 <_vfprintf_r+0xf56>
 80036c0:	2300      	movs	r3, #0
 80036c2:	4620      	mov	r0, r4
 80036c4:	4629      	mov	r1, r5
 80036c6:	220a      	movs	r2, #10
 80036c8:	f7fc fd9a 	bl	8000200 <__aeabi_uldivmod>
 80036cc:	4604      	mov	r4, r0
 80036ce:	460d      	mov	r5, r1
 80036d0:	ea54 0305 	orrs.w	r3, r4, r5
 80036d4:	d029      	beq.n	800372a <_vfprintf_r+0xfaa>
 80036d6:	220a      	movs	r2, #10
 80036d8:	2300      	movs	r3, #0
 80036da:	4620      	mov	r0, r4
 80036dc:	4629      	mov	r1, r5
 80036de:	f7fc fd8f 	bl	8000200 <__aeabi_uldivmod>
 80036e2:	3230      	adds	r2, #48	; 0x30
 80036e4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80036e8:	f10a 0a01 	add.w	sl, sl, #1
 80036ec:	3f01      	subs	r7, #1
 80036ee:	2e00      	cmp	r6, #0
 80036f0:	d0e6      	beq.n	80036c0 <_vfprintf_r+0xf40>
 80036f2:	f898 3000 	ldrb.w	r3, [r8]
 80036f6:	459a      	cmp	sl, r3
 80036f8:	d1e2      	bne.n	80036c0 <_vfprintf_r+0xf40>
 80036fa:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80036fe:	d0df      	beq.n	80036c0 <_vfprintf_r+0xf40>
 8003700:	2d00      	cmp	r5, #0
 8003702:	bf08      	it	eq
 8003704:	2c0a      	cmpeq	r4, #10
 8003706:	d3db      	bcc.n	80036c0 <_vfprintf_r+0xf40>
 8003708:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800370a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800370c:	1aff      	subs	r7, r7, r3
 800370e:	461a      	mov	r2, r3
 8003710:	4638      	mov	r0, r7
 8003712:	f003 faf5 	bl	8006d00 <strncpy>
 8003716:	f898 3001 	ldrb.w	r3, [r8, #1]
 800371a:	2b00      	cmp	r3, #0
 800371c:	f000 8496 	beq.w	800404c <_vfprintf_r+0x18cc>
 8003720:	f108 0801 	add.w	r8, r8, #1
 8003724:	f04f 0a00 	mov.w	sl, #0
 8003728:	e7ca      	b.n	80036c0 <_vfprintf_r+0xf40>
 800372a:	9b04      	ldr	r3, [sp, #16]
 800372c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003730:	1bdb      	subs	r3, r3, r7
 8003732:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003736:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003738:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800373c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003740:	9309      	str	r3, [sp, #36]	; 0x24
 8003742:	f7ff b99e 	b.w	8002a82 <_vfprintf_r+0x302>
 8003746:	46c1      	mov	r9, r8
 8003748:	e594      	b.n	8003274 <_vfprintf_r+0xaf4>
 800374a:	4621      	mov	r1, r4
 800374c:	461c      	mov	r4, r3
 800374e:	460b      	mov	r3, r1
 8003750:	3201      	adds	r2, #1
 8003752:	442c      	add	r4, r5
 8003754:	2a07      	cmp	r2, #7
 8003756:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800375a:	e9cb 3500 	strd	r3, r5, [fp]
 800375e:	f77f aa5e 	ble.w	8002c1e <_vfprintf_r+0x49e>
 8003762:	e5ee      	b.n	8003342 <_vfprintf_r+0xbc2>
 8003764:	f018 0f10 	tst.w	r8, #16
 8003768:	f040 80f8 	bne.w	800395c <_vfprintf_r+0x11dc>
 800376c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003770:	f000 8351 	beq.w	8003e16 <_vfprintf_r+0x1696>
 8003774:	9a05      	ldr	r2, [sp, #20]
 8003776:	801a      	strh	r2, [r3, #0]
 8003778:	4657      	mov	r7, sl
 800377a:	f7ff baa7 	b.w	8002ccc <_vfprintf_r+0x54c>
 800377e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003780:	9907      	ldr	r1, [sp, #28]
 8003782:	9803      	ldr	r0, [sp, #12]
 8003784:	f003 fb2a 	bl	8006ddc <__sprint_r>
 8003788:	2800      	cmp	r0, #0
 800378a:	f47f ad71 	bne.w	8003270 <_vfprintf_r+0xaf0>
 800378e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003790:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003794:	f7ff b9f5 	b.w	8002b82 <_vfprintf_r+0x402>
 8003798:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800379c:	4602      	mov	r2, r0
 800379e:	460b      	mov	r3, r1
 80037a0:	f7fd fc64 	bl	800106c <__aeabi_dcmpun>
 80037a4:	2800      	cmp	r0, #0
 80037a6:	f040 8491 	bne.w	80040cc <_vfprintf_r+0x194c>
 80037aa:	2e61      	cmp	r6, #97	; 0x61
 80037ac:	f000 8111 	beq.w	80039d2 <_vfprintf_r+0x1252>
 80037b0:	2e41      	cmp	r6, #65	; 0x41
 80037b2:	f000 8377 	beq.w	8003ea4 <_vfprintf_r+0x1724>
 80037b6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80037ba:	f026 0220 	bic.w	r2, r6, #32
 80037be:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80037c2:	930e      	str	r3, [sp, #56]	; 0x38
 80037c4:	9204      	str	r2, [sp, #16]
 80037c6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80037c8:	f000 842d 	beq.w	8004026 <_vfprintf_r+0x18a6>
 80037cc:	2a47      	cmp	r2, #71	; 0x47
 80037ce:	f000 8424 	beq.w	800401a <_vfprintf_r+0x189a>
 80037d2:	2b00      	cmp	r3, #0
 80037d4:	f2c0 82f9 	blt.w	8003dca <_vfprintf_r+0x164a>
 80037d8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80037dc:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80037e0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80037e4:	2e66      	cmp	r6, #102	; 0x66
 80037e6:	f000 83eb 	beq.w	8003fc0 <_vfprintf_r+0x1840>
 80037ea:	2e46      	cmp	r6, #70	; 0x46
 80037ec:	f000 847e 	beq.w	80040ec <_vfprintf_r+0x196c>
 80037f0:	9b04      	ldr	r3, [sp, #16]
 80037f2:	9803      	ldr	r0, [sp, #12]
 80037f4:	2b45      	cmp	r3, #69	; 0x45
 80037f6:	bf0c      	ite	eq
 80037f8:	f109 0501 	addeq.w	r5, r9, #1
 80037fc:	464d      	movne	r5, r9
 80037fe:	aa28      	add	r2, sp, #160	; 0xa0
 8003800:	ab25      	add	r3, sp, #148	; 0x94
 8003802:	e9cd 3200 	strd	r3, r2, [sp]
 8003806:	2102      	movs	r1, #2
 8003808:	ab24      	add	r3, sp, #144	; 0x90
 800380a:	462a      	mov	r2, r5
 800380c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003810:	f000 fe3e 	bl	8004490 <_dtoa_r>
 8003814:	2e67      	cmp	r6, #103	; 0x67
 8003816:	4607      	mov	r7, r0
 8003818:	f040 849c 	bne.w	8004154 <_vfprintf_r+0x19d4>
 800381c:	f018 0f01 	tst.w	r8, #1
 8003820:	f040 83f9 	bne.w	8004016 <_vfprintf_r+0x1896>
 8003824:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003826:	4640      	mov	r0, r8
 8003828:	1bdb      	subs	r3, r3, r7
 800382a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800382e:	9310      	str	r3, [sp, #64]	; 0x40
 8003830:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003832:	9311      	str	r3, [sp, #68]	; 0x44
 8003834:	9b04      	ldr	r3, [sp, #16]
 8003836:	2b47      	cmp	r3, #71	; 0x47
 8003838:	f000 81e7 	beq.w	8003c0a <_vfprintf_r+0x148a>
 800383c:	9b04      	ldr	r3, [sp, #16]
 800383e:	2b46      	cmp	r3, #70	; 0x46
 8003840:	f000 8300 	beq.w	8003e44 <_vfprintf_r+0x16c4>
 8003844:	9904      	ldr	r1, [sp, #16]
 8003846:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003848:	b2f2      	uxtb	r2, r6
 800384a:	2941      	cmp	r1, #65	; 0x41
 800384c:	bf08      	it	eq
 800384e:	320f      	addeq	r2, #15
 8003850:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003854:	bf06      	itte	eq
 8003856:	b2d2      	uxtbeq	r2, r2
 8003858:	2101      	moveq	r1, #1
 800385a:	2100      	movne	r1, #0
 800385c:	2b00      	cmp	r3, #0
 800385e:	9324      	str	r3, [sp, #144]	; 0x90
 8003860:	bfb8      	it	lt
 8003862:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003864:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003868:	bfba      	itte	lt
 800386a:	f1c3 0301 	rsblt	r3, r3, #1
 800386e:	222d      	movlt	r2, #45	; 0x2d
 8003870:	222b      	movge	r2, #43	; 0x2b
 8003872:	2b09      	cmp	r3, #9
 8003874:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003878:	f300 83f9 	bgt.w	800406e <_vfprintf_r+0x18ee>
 800387c:	2900      	cmp	r1, #0
 800387e:	f040 8487 	bne.w	8004190 <_vfprintf_r+0x1a10>
 8003882:	2230      	movs	r2, #48	; 0x30
 8003884:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003888:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800388c:	3330      	adds	r3, #48	; 0x30
 800388e:	7013      	strb	r3, [r2, #0]
 8003890:	1c53      	adds	r3, r2, #1
 8003892:	aa26      	add	r2, sp, #152	; 0x98
 8003894:	1a9b      	subs	r3, r3, r2
 8003896:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003898:	9319      	str	r3, [sp, #100]	; 0x64
 800389a:	2a01      	cmp	r2, #1
 800389c:	4413      	add	r3, r2
 800389e:	9309      	str	r3, [sp, #36]	; 0x24
 80038a0:	f340 8442 	ble.w	8004128 <_vfprintf_r+0x19a8>
 80038a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038a6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80038a8:	4413      	add	r3, r2
 80038aa:	9309      	str	r3, [sp, #36]	; 0x24
 80038ac:	2300      	movs	r3, #0
 80038ae:	930f      	str	r3, [sp, #60]	; 0x3c
 80038b0:	9314      	str	r3, [sp, #80]	; 0x50
 80038b2:	9311      	str	r3, [sp, #68]	; 0x44
 80038b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038b6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80038ba:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80038be:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80038c2:	9304      	str	r3, [sp, #16]
 80038c4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80038c6:	2b00      	cmp	r3, #0
 80038c8:	f040 8275 	bne.w	8003db6 <_vfprintf_r+0x1636>
 80038cc:	4699      	mov	r9, r3
 80038ce:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80038d2:	f7ff b8e2 	b.w	8002a9a <_vfprintf_r+0x31a>
 80038d6:	bf00      	nop
 80038d8:	08007b0c 	.word	0x08007b0c
 80038dc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038de:	49bd      	ldr	r1, [pc, #756]	; (8003bd4 <_vfprintf_r+0x1454>)
 80038e0:	f8cb 1000 	str.w	r1, [fp]
 80038e4:	3201      	adds	r2, #1
 80038e6:	3401      	adds	r4, #1
 80038e8:	2101      	movs	r1, #1
 80038ea:	2a07      	cmp	r2, #7
 80038ec:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038f0:	f8cb 1004 	str.w	r1, [fp, #4]
 80038f4:	dc60      	bgt.n	80039b8 <_vfprintf_r+0x1238>
 80038f6:	f10b 0b08 	add.w	fp, fp, #8
 80038fa:	b92b      	cbnz	r3, 8003908 <_vfprintf_r+0x1188>
 80038fc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80038fe:	b91a      	cbnz	r2, 8003908 <_vfprintf_r+0x1188>
 8003900:	f018 0f01 	tst.w	r8, #1
 8003904:	f43f a98d 	beq.w	8002c22 <_vfprintf_r+0x4a2>
 8003908:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800390a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800390c:	f8cb 1000 	str.w	r1, [fp]
 8003910:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003912:	f8cb 1004 	str.w	r1, [fp, #4]
 8003916:	3201      	adds	r2, #1
 8003918:	440c      	add	r4, r1
 800391a:	2a07      	cmp	r2, #7
 800391c:	942c      	str	r4, [sp, #176]	; 0xb0
 800391e:	922b      	str	r2, [sp, #172]	; 0xac
 8003920:	f300 8282 	bgt.w	8003e28 <_vfprintf_r+0x16a8>
 8003924:	f10b 0b08 	add.w	fp, fp, #8
 8003928:	2b00      	cmp	r3, #0
 800392a:	f2c0 82e7 	blt.w	8003efc <_vfprintf_r+0x177c>
 800392e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003930:	3201      	adds	r2, #1
 8003932:	441c      	add	r4, r3
 8003934:	2a07      	cmp	r2, #7
 8003936:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800393a:	e9cb 7300 	strd	r7, r3, [fp]
 800393e:	f77f a96e 	ble.w	8002c1e <_vfprintf_r+0x49e>
 8003942:	e4fe      	b.n	8003342 <_vfprintf_r+0xbc2>
 8003944:	aa2a      	add	r2, sp, #168	; 0xa8
 8003946:	9907      	ldr	r1, [sp, #28]
 8003948:	9803      	ldr	r0, [sp, #12]
 800394a:	f003 fa47 	bl	8006ddc <__sprint_r>
 800394e:	2800      	cmp	r0, #0
 8003950:	f47f ac8e 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8003954:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003958:	f7ff bbf0 	b.w	800313c <_vfprintf_r+0x9bc>
 800395c:	9a05      	ldr	r2, [sp, #20]
 800395e:	601a      	str	r2, [r3, #0]
 8003960:	4657      	mov	r7, sl
 8003962:	f7ff b9b3 	b.w	8002ccc <_vfprintf_r+0x54c>
 8003966:	8814      	ldrh	r4, [r2, #0]
 8003968:	9108      	str	r1, [sp, #32]
 800396a:	2500      	movs	r5, #0
 800396c:	2201      	movs	r2, #1
 800396e:	f7ff b9c8 	b.w	8002d02 <_vfprintf_r+0x582>
 8003972:	8814      	ldrh	r4, [r2, #0]
 8003974:	9308      	str	r3, [sp, #32]
 8003976:	2500      	movs	r5, #0
 8003978:	f7ff ba14 	b.w	8002da4 <_vfprintf_r+0x624>
 800397c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003980:	9208      	str	r2, [sp, #32]
 8003982:	17e5      	asrs	r5, r4, #31
 8003984:	4620      	mov	r0, r4
 8003986:	4629      	mov	r1, r5
 8003988:	f7ff b855 	b.w	8002a36 <_vfprintf_r+0x2b6>
 800398c:	8814      	ldrh	r4, [r2, #0]
 800398e:	9308      	str	r3, [sp, #32]
 8003990:	2500      	movs	r5, #0
 8003992:	f7ff b825 	b.w	80029e0 <_vfprintf_r+0x260>
 8003996:	222d      	movs	r2, #45	; 0x2d
 8003998:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800399c:	f7ff baa2 	b.w	8002ee4 <_vfprintf_r+0x764>
 80039a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039a2:	9907      	ldr	r1, [sp, #28]
 80039a4:	9803      	ldr	r0, [sp, #12]
 80039a6:	f003 fa19 	bl	8006ddc <__sprint_r>
 80039aa:	2800      	cmp	r0, #0
 80039ac:	f47f ac60 	bne.w	8003270 <_vfprintf_r+0xaf0>
 80039b0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039b2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039b6:	e534      	b.n	8003422 <_vfprintf_r+0xca2>
 80039b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039ba:	9907      	ldr	r1, [sp, #28]
 80039bc:	9803      	ldr	r0, [sp, #12]
 80039be:	f003 fa0d 	bl	8006ddc <__sprint_r>
 80039c2:	2800      	cmp	r0, #0
 80039c4:	f47f ac54 	bne.w	8003270 <_vfprintf_r+0xaf0>
 80039c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039ca:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039d0:	e793      	b.n	80038fa <_vfprintf_r+0x117a>
 80039d2:	2330      	movs	r3, #48	; 0x30
 80039d4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80039d8:	2378      	movs	r3, #120	; 0x78
 80039da:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80039de:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80039e2:	f048 0402 	orr.w	r4, r8, #2
 80039e6:	f300 82b0 	bgt.w	8003f4a <_vfprintf_r+0x17ca>
 80039ea:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80039ee:	930e      	str	r3, [sp, #56]	; 0x38
 80039f0:	f026 0320 	bic.w	r3, r6, #32
 80039f4:	9304      	str	r3, [sp, #16]
 80039f6:	2200      	movs	r2, #0
 80039f8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80039fa:	920a      	str	r2, [sp, #40]	; 0x28
 80039fc:	46a0      	mov	r8, r4
 80039fe:	af3d      	add	r7, sp, #244	; 0xf4
 8003a00:	2b00      	cmp	r3, #0
 8003a02:	f2c0 81e3 	blt.w	8003dcc <_vfprintf_r+0x164c>
 8003a06:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003a0a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003a0e:	2300      	movs	r3, #0
 8003a10:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a12:	2e61      	cmp	r6, #97	; 0x61
 8003a14:	f000 8255 	beq.w	8003ec2 <_vfprintf_r+0x1742>
 8003a18:	2e41      	cmp	r6, #65	; 0x41
 8003a1a:	f47f aee3 	bne.w	80037e4 <_vfprintf_r+0x1064>
 8003a1e:	a824      	add	r0, sp, #144	; 0x90
 8003a20:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a24:	f003 f8e2 	bl	8006bec <frexp>
 8003a28:	2200      	movs	r2, #0
 8003a2a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003a2e:	ec51 0b10 	vmov	r0, r1, d0
 8003a32:	f7fd f881 	bl	8000b38 <__aeabi_dmul>
 8003a36:	2200      	movs	r2, #0
 8003a38:	2300      	movs	r3, #0
 8003a3a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a3e:	f7fd fae3 	bl	8001008 <__aeabi_dcmpeq>
 8003a42:	2800      	cmp	r0, #0
 8003a44:	f040 8305 	bne.w	8004052 <_vfprintf_r+0x18d2>
 8003a48:	4b63      	ldr	r3, [pc, #396]	; (8003bd8 <_vfprintf_r+0x1458>)
 8003a4a:	9309      	str	r3, [sp, #36]	; 0x24
 8003a4c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003a50:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003a54:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003a58:	9721      	str	r7, [sp, #132]	; 0x84
 8003a5a:	46b9      	mov	r9, r7
 8003a5c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003a60:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003a64:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003a68:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003a6c:	e003      	b.n	8003a76 <_vfprintf_r+0x12f6>
 8003a6e:	f7fd facb 	bl	8001008 <__aeabi_dcmpeq>
 8003a72:	bb20      	cbnz	r0, 8003abe <_vfprintf_r+0x133e>
 8003a74:	46a9      	mov	r9, r5
 8003a76:	2200      	movs	r2, #0
 8003a78:	4b58      	ldr	r3, [pc, #352]	; (8003bdc <_vfprintf_r+0x145c>)
 8003a7a:	4630      	mov	r0, r6
 8003a7c:	4639      	mov	r1, r7
 8003a7e:	f7fd f85b 	bl	8000b38 <__aeabi_dmul>
 8003a82:	460f      	mov	r7, r1
 8003a84:	4606      	mov	r6, r0
 8003a86:	f7fd fb07 	bl	8001098 <__aeabi_d2iz>
 8003a8a:	4680      	mov	r8, r0
 8003a8c:	f7fc ffea 	bl	8000a64 <__aeabi_i2d>
 8003a90:	4602      	mov	r2, r0
 8003a92:	460b      	mov	r3, r1
 8003a94:	4630      	mov	r0, r6
 8003a96:	4639      	mov	r1, r7
 8003a98:	f7fc fe96 	bl	80007c8 <__aeabi_dsub>
 8003a9c:	464d      	mov	r5, r9
 8003a9e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003aa2:	f805 cb01 	strb.w	ip, [r5], #1
 8003aa6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003aaa:	46a3      	mov	fp, r4
 8003aac:	4606      	mov	r6, r0
 8003aae:	460f      	mov	r7, r1
 8003ab0:	f04f 0200 	mov.w	r2, #0
 8003ab4:	f04f 0300 	mov.w	r3, #0
 8003ab8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003abc:	d1d7      	bne.n	8003a6e <_vfprintf_r+0x12ee>
 8003abe:	4630      	mov	r0, r6
 8003ac0:	4639      	mov	r1, r7
 8003ac2:	2200      	movs	r2, #0
 8003ac4:	4b46      	ldr	r3, [pc, #280]	; (8003be0 <_vfprintf_r+0x1460>)
 8003ac6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003aca:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003acc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003ad0:	4644      	mov	r4, r8
 8003ad2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003ad6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003ada:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003ade:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003ae2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003ae4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003ae8:	f7fd fab6 	bl	8001058 <__aeabi_dcmpgt>
 8003aec:	2800      	cmp	r0, #0
 8003aee:	f040 8176 	bne.w	8003dde <_vfprintf_r+0x165e>
 8003af2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003af6:	2200      	movs	r2, #0
 8003af8:	4b39      	ldr	r3, [pc, #228]	; (8003be0 <_vfprintf_r+0x1460>)
 8003afa:	f7fd fa85 	bl	8001008 <__aeabi_dcmpeq>
 8003afe:	b110      	cbz	r0, 8003b06 <_vfprintf_r+0x1386>
 8003b00:	07e2      	lsls	r2, r4, #31
 8003b02:	f100 816c 	bmi.w	8003dde <_vfprintf_r+0x165e>
 8003b06:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b08:	2b00      	cmp	r3, #0
 8003b0a:	db07      	blt.n	8003b1c <_vfprintf_r+0x139c>
 8003b0c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b0e:	3301      	adds	r3, #1
 8003b10:	442b      	add	r3, r5
 8003b12:	2230      	movs	r2, #48	; 0x30
 8003b14:	f805 2b01 	strb.w	r2, [r5], #1
 8003b18:	42ab      	cmp	r3, r5
 8003b1a:	d1fb      	bne.n	8003b14 <_vfprintf_r+0x1394>
 8003b1c:	1beb      	subs	r3, r5, r7
 8003b1e:	4640      	mov	r0, r8
 8003b20:	9310      	str	r3, [sp, #64]	; 0x40
 8003b22:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003b26:	e683      	b.n	8003830 <_vfprintf_r+0x10b0>
 8003b28:	f8cd 9010 	str.w	r9, [sp, #16]
 8003b2c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003b30:	9408      	str	r4, [sp, #32]
 8003b32:	4681      	mov	r9, r0
 8003b34:	900f      	str	r0, [sp, #60]	; 0x3c
 8003b36:	9014      	str	r0, [sp, #80]	; 0x50
 8003b38:	9011      	str	r0, [sp, #68]	; 0x44
 8003b3a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003b3e:	f7fe bfac 	b.w	8002a9a <_vfprintf_r+0x31a>
 8003b42:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b44:	9907      	ldr	r1, [sp, #28]
 8003b46:	9803      	ldr	r0, [sp, #12]
 8003b48:	f003 f948 	bl	8006ddc <__sprint_r>
 8003b4c:	2800      	cmp	r0, #0
 8003b4e:	f47f ab8f 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8003b52:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b54:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b56:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b5a:	e511      	b.n	8003580 <_vfprintf_r+0xe00>
 8003b5c:	4252      	negs	r2, r2
 8003b5e:	9206      	str	r2, [sp, #24]
 8003b60:	9308      	str	r3, [sp, #32]
 8003b62:	f7ff b96d 	b.w	8002e40 <_vfprintf_r+0x6c0>
 8003b66:	4614      	mov	r4, r2
 8003b68:	4632      	mov	r2, r6
 8003b6a:	461e      	mov	r6, r3
 8003b6c:	4613      	mov	r3, r2
 8003b6e:	462a      	mov	r2, r5
 8003b70:	3201      	adds	r2, #1
 8003b72:	9209      	str	r2, [sp, #36]	; 0x24
 8003b74:	f106 0208 	add.w	r2, r6, #8
 8003b78:	e9c6 3900 	strd	r3, r9, [r6]
 8003b7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b7e:	932b      	str	r3, [sp, #172]	; 0xac
 8003b80:	444c      	add	r4, r9
 8003b82:	2b07      	cmp	r3, #7
 8003b84:	942c      	str	r4, [sp, #176]	; 0xb0
 8003b86:	f73f acc3 	bgt.w	8003510 <_vfprintf_r+0xd90>
 8003b8a:	3301      	adds	r3, #1
 8003b8c:	9309      	str	r3, [sp, #36]	; 0x24
 8003b8e:	f102 0b08 	add.w	fp, r2, #8
 8003b92:	4616      	mov	r6, r2
 8003b94:	f7ff bbca 	b.w	800332c <_vfprintf_r+0xbac>
 8003b98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b9a:	9907      	ldr	r1, [sp, #28]
 8003b9c:	9803      	ldr	r0, [sp, #12]
 8003b9e:	f003 f91d 	bl	8006ddc <__sprint_r>
 8003ba2:	2800      	cmp	r0, #0
 8003ba4:	f47f ab64 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8003ba8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003baa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bae:	f7ff bade 	b.w	800316e <_vfprintf_r+0x9ee>
 8003bb2:	464b      	mov	r3, r9
 8003bb4:	2b06      	cmp	r3, #6
 8003bb6:	bf28      	it	cs
 8003bb8:	2306      	movcs	r3, #6
 8003bba:	46b9      	mov	r9, r7
 8003bbc:	970f      	str	r7, [sp, #60]	; 0x3c
 8003bbe:	9714      	str	r7, [sp, #80]	; 0x50
 8003bc0:	9711      	str	r7, [sp, #68]	; 0x44
 8003bc2:	970a      	str	r7, [sp, #40]	; 0x28
 8003bc4:	463a      	mov	r2, r7
 8003bc6:	9304      	str	r3, [sp, #16]
 8003bc8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003bcc:	4f05      	ldr	r7, [pc, #20]	; (8003be4 <_vfprintf_r+0x1464>)
 8003bce:	f7fe bf64 	b.w	8002a9a <_vfprintf_r+0x31a>
 8003bd2:	bf00      	nop
 8003bd4:	08007af8 	.word	0x08007af8
 8003bd8:	08007adc 	.word	0x08007adc
 8003bdc:	40300000 	.word	0x40300000
 8003be0:	3fe00000 	.word	0x3fe00000
 8003be4:	08007af0 	.word	0x08007af0
 8003be8:	460c      	mov	r4, r1
 8003bea:	4639      	mov	r1, r7
 8003bec:	465f      	mov	r7, fp
 8003bee:	469b      	mov	fp, r3
 8003bf0:	460b      	mov	r3, r1
 8003bf2:	3201      	adds	r2, #1
 8003bf4:	442c      	add	r4, r5
 8003bf6:	2a07      	cmp	r2, #7
 8003bf8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003bfc:	e9cb 3500 	strd	r3, r5, [fp]
 8003c00:	f73f aca5 	bgt.w	800354e <_vfprintf_r+0xdce>
 8003c04:	f10b 0b08 	add.w	fp, fp, #8
 8003c08:	e4ac      	b.n	8003564 <_vfprintf_r+0xde4>
 8003c0a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c0c:	1cda      	adds	r2, r3, #3
 8003c0e:	db02      	blt.n	8003c16 <_vfprintf_r+0x1496>
 8003c10:	4599      	cmp	r9, r3
 8003c12:	f280 80b5 	bge.w	8003d80 <_vfprintf_r+0x1600>
 8003c16:	3e02      	subs	r6, #2
 8003c18:	f026 0320 	bic.w	r3, r6, #32
 8003c1c:	9304      	str	r3, [sp, #16]
 8003c1e:	e611      	b.n	8003844 <_vfprintf_r+0x10c4>
 8003c20:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c22:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003c26:	465a      	mov	r2, fp
 8003c28:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003c2c:	18fb      	adds	r3, r7, r3
 8003c2e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003c32:	970c      	str	r7, [sp, #48]	; 0x30
 8003c34:	4eaf      	ldr	r6, [pc, #700]	; (8003ef4 <_vfprintf_r+0x1774>)
 8003c36:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003c3a:	9309      	str	r3, [sp, #36]	; 0x24
 8003c3c:	464f      	mov	r7, r9
 8003c3e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c42:	4621      	mov	r1, r4
 8003c44:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c46:	2b00      	cmp	r3, #0
 8003c48:	d05b      	beq.n	8003d02 <_vfprintf_r+0x1582>
 8003c4a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c4c:	2b00      	cmp	r3, #0
 8003c4e:	d154      	bne.n	8003cfa <_vfprintf_r+0x157a>
 8003c50:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c52:	3b01      	subs	r3, #1
 8003c54:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003c58:	9314      	str	r3, [sp, #80]	; 0x50
 8003c5a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c5c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003c5e:	6010      	str	r0, [r2, #0]
 8003c60:	3301      	adds	r3, #1
 8003c62:	4459      	add	r1, fp
 8003c64:	2b07      	cmp	r3, #7
 8003c66:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c68:	f8c2 b004 	str.w	fp, [r2, #4]
 8003c6c:	932b      	str	r3, [sp, #172]	; 0xac
 8003c6e:	dc68      	bgt.n	8003d42 <_vfprintf_r+0x15c2>
 8003c70:	3208      	adds	r2, #8
 8003c72:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003c74:	f898 3000 	ldrb.w	r3, [r8]
 8003c78:	1bc5      	subs	r5, r0, r7
 8003c7a:	429d      	cmp	r5, r3
 8003c7c:	bfa8      	it	ge
 8003c7e:	461d      	movge	r5, r3
 8003c80:	2d00      	cmp	r5, #0
 8003c82:	dd0b      	ble.n	8003c9c <_vfprintf_r+0x151c>
 8003c84:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c86:	6017      	str	r7, [r2, #0]
 8003c88:	3301      	adds	r3, #1
 8003c8a:	4429      	add	r1, r5
 8003c8c:	2b07      	cmp	r3, #7
 8003c8e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c90:	6055      	str	r5, [r2, #4]
 8003c92:	932b      	str	r3, [sp, #172]	; 0xac
 8003c94:	dc5e      	bgt.n	8003d54 <_vfprintf_r+0x15d4>
 8003c96:	f898 3000 	ldrb.w	r3, [r8]
 8003c9a:	3208      	adds	r2, #8
 8003c9c:	2d00      	cmp	r5, #0
 8003c9e:	bfac      	ite	ge
 8003ca0:	1b5d      	subge	r5, r3, r5
 8003ca2:	461d      	movlt	r5, r3
 8003ca4:	2d00      	cmp	r5, #0
 8003ca6:	dd26      	ble.n	8003cf6 <_vfprintf_r+0x1576>
 8003ca8:	2d10      	cmp	r5, #16
 8003caa:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003cac:	dd3c      	ble.n	8003d28 <_vfprintf_r+0x15a8>
 8003cae:	2410      	movs	r4, #16
 8003cb0:	e003      	b.n	8003cba <_vfprintf_r+0x153a>
 8003cb2:	3208      	adds	r2, #8
 8003cb4:	3d10      	subs	r5, #16
 8003cb6:	2d10      	cmp	r5, #16
 8003cb8:	dd36      	ble.n	8003d28 <_vfprintf_r+0x15a8>
 8003cba:	3001      	adds	r0, #1
 8003cbc:	3110      	adds	r1, #16
 8003cbe:	2807      	cmp	r0, #7
 8003cc0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003cc4:	e9c2 6400 	strd	r6, r4, [r2]
 8003cc8:	ddf3      	ble.n	8003cb2 <_vfprintf_r+0x1532>
 8003cca:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ccc:	4651      	mov	r1, sl
 8003cce:	4648      	mov	r0, r9
 8003cd0:	f003 f884 	bl	8006ddc <__sprint_r>
 8003cd4:	2800      	cmp	r0, #0
 8003cd6:	d150      	bne.n	8003d7a <_vfprintf_r+0x15fa>
 8003cd8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003cdc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003cde:	e7e9      	b.n	8003cb4 <_vfprintf_r+0x1534>
 8003ce0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ce2:	4651      	mov	r1, sl
 8003ce4:	4648      	mov	r0, r9
 8003ce6:	f003 f879 	bl	8006ddc <__sprint_r>
 8003cea:	2800      	cmp	r0, #0
 8003cec:	d145      	bne.n	8003d7a <_vfprintf_r+0x15fa>
 8003cee:	f898 3000 	ldrb.w	r3, [r8]
 8003cf2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003cf4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003cf6:	441f      	add	r7, r3
 8003cf8:	e7a4      	b.n	8003c44 <_vfprintf_r+0x14c4>
 8003cfa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003cfc:	3b01      	subs	r3, #1
 8003cfe:	930f      	str	r3, [sp, #60]	; 0x3c
 8003d00:	e7ab      	b.n	8003c5a <_vfprintf_r+0x14da>
 8003d02:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d04:	2b00      	cmp	r3, #0
 8003d06:	d1f8      	bne.n	8003cfa <_vfprintf_r+0x157a>
 8003d08:	46b9      	mov	r9, r7
 8003d0a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d0c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003d0e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003d12:	18fb      	adds	r3, r7, r3
 8003d14:	4599      	cmp	r9, r3
 8003d16:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003d1a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003d1e:	4693      	mov	fp, r2
 8003d20:	460c      	mov	r4, r1
 8003d22:	bf28      	it	cs
 8003d24:	4699      	movcs	r9, r3
 8003d26:	e424      	b.n	8003572 <_vfprintf_r+0xdf2>
 8003d28:	3001      	adds	r0, #1
 8003d2a:	4429      	add	r1, r5
 8003d2c:	2807      	cmp	r0, #7
 8003d2e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003d32:	e9c2 6500 	strd	r6, r5, [r2]
 8003d36:	dcd3      	bgt.n	8003ce0 <_vfprintf_r+0x1560>
 8003d38:	f898 3000 	ldrb.w	r3, [r8]
 8003d3c:	3208      	adds	r2, #8
 8003d3e:	441f      	add	r7, r3
 8003d40:	e780      	b.n	8003c44 <_vfprintf_r+0x14c4>
 8003d42:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d44:	4651      	mov	r1, sl
 8003d46:	4648      	mov	r0, r9
 8003d48:	f003 f848 	bl	8006ddc <__sprint_r>
 8003d4c:	b9a8      	cbnz	r0, 8003d7a <_vfprintf_r+0x15fa>
 8003d4e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d50:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d52:	e78e      	b.n	8003c72 <_vfprintf_r+0x14f2>
 8003d54:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d56:	4651      	mov	r1, sl
 8003d58:	4648      	mov	r0, r9
 8003d5a:	f003 f83f 	bl	8006ddc <__sprint_r>
 8003d5e:	b960      	cbnz	r0, 8003d7a <_vfprintf_r+0x15fa>
 8003d60:	f898 3000 	ldrb.w	r3, [r8]
 8003d64:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d66:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d68:	e798      	b.n	8003c9c <_vfprintf_r+0x151c>
 8003d6a:	4638      	mov	r0, r7
 8003d6c:	f7fc fc68 	bl	8000640 <strlen>
 8003d70:	46a9      	mov	r9, r5
 8003d72:	4603      	mov	r3, r0
 8003d74:	9009      	str	r0, [sp, #36]	; 0x24
 8003d76:	f7ff b8f4 	b.w	8002f62 <_vfprintf_r+0x7e2>
 8003d7a:	46d1      	mov	r9, sl
 8003d7c:	f7ff ba7a 	b.w	8003274 <_vfprintf_r+0xaf4>
 8003d80:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d82:	4619      	mov	r1, r3
 8003d84:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d86:	4299      	cmp	r1, r3
 8003d88:	f300 8082 	bgt.w	8003e90 <_vfprintf_r+0x1710>
 8003d8c:	07c4      	lsls	r4, r0, #31
 8003d8e:	f140 816b 	bpl.w	8004068 <_vfprintf_r+0x18e8>
 8003d92:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d94:	4413      	add	r3, r2
 8003d96:	9309      	str	r3, [sp, #36]	; 0x24
 8003d98:	0541      	lsls	r1, r0, #21
 8003d9a:	d503      	bpl.n	8003da4 <_vfprintf_r+0x1624>
 8003d9c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d9e:	2b00      	cmp	r3, #0
 8003da0:	f300 80e6 	bgt.w	8003f70 <_vfprintf_r+0x17f0>
 8003da4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003da6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003daa:	9304      	str	r3, [sp, #16]
 8003dac:	2667      	movs	r6, #103	; 0x67
 8003dae:	2300      	movs	r3, #0
 8003db0:	930f      	str	r3, [sp, #60]	; 0x3c
 8003db2:	9314      	str	r3, [sp, #80]	; 0x50
 8003db4:	e586      	b.n	80038c4 <_vfprintf_r+0x1144>
 8003db6:	222d      	movs	r2, #45	; 0x2d
 8003db8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003dbc:	f04f 0900 	mov.w	r9, #0
 8003dc0:	f7fe be6c 	b.w	8002a9c <_vfprintf_r+0x31c>
 8003dc4:	46a1      	mov	r9, r4
 8003dc6:	f7ff ba55 	b.w	8003274 <_vfprintf_r+0xaf4>
 8003dca:	900a      	str	r0, [sp, #40]	; 0x28
 8003dcc:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003dd0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003dd4:	931f      	str	r3, [sp, #124]	; 0x7c
 8003dd6:	232d      	movs	r3, #45	; 0x2d
 8003dd8:	911e      	str	r1, [sp, #120]	; 0x78
 8003dda:	930b      	str	r3, [sp, #44]	; 0x2c
 8003ddc:	e619      	b.n	8003a12 <_vfprintf_r+0x1292>
 8003dde:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003de0:	9328      	str	r3, [sp, #160]	; 0xa0
 8003de2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003de4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003de8:	7bd9      	ldrb	r1, [r3, #15]
 8003dea:	4291      	cmp	r1, r2
 8003dec:	462b      	mov	r3, r5
 8003dee:	d109      	bne.n	8003e04 <_vfprintf_r+0x1684>
 8003df0:	2030      	movs	r0, #48	; 0x30
 8003df2:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003df6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003df8:	1e5a      	subs	r2, r3, #1
 8003dfa:	9228      	str	r2, [sp, #160]	; 0xa0
 8003dfc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003e00:	4291      	cmp	r1, r2
 8003e02:	d0f6      	beq.n	8003df2 <_vfprintf_r+0x1672>
 8003e04:	2a39      	cmp	r2, #57	; 0x39
 8003e06:	bf0b      	itete	eq
 8003e08:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003e0a:	3201      	addne	r2, #1
 8003e0c:	7a92      	ldrbeq	r2, [r2, #10]
 8003e0e:	b2d2      	uxtbne	r2, r2
 8003e10:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003e14:	e682      	b.n	8003b1c <_vfprintf_r+0x139c>
 8003e16:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003e1a:	f43f ad9f 	beq.w	800395c <_vfprintf_r+0x11dc>
 8003e1e:	9a05      	ldr	r2, [sp, #20]
 8003e20:	701a      	strb	r2, [r3, #0]
 8003e22:	4657      	mov	r7, sl
 8003e24:	f7fe bf52 	b.w	8002ccc <_vfprintf_r+0x54c>
 8003e28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e2a:	9907      	ldr	r1, [sp, #28]
 8003e2c:	9803      	ldr	r0, [sp, #12]
 8003e2e:	f002 ffd5 	bl	8006ddc <__sprint_r>
 8003e32:	2800      	cmp	r0, #0
 8003e34:	f47f aa1c 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8003e38:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e3a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e42:	e571      	b.n	8003928 <_vfprintf_r+0x11a8>
 8003e44:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e46:	2b00      	cmp	r3, #0
 8003e48:	f340 8164 	ble.w	8004114 <_vfprintf_r+0x1994>
 8003e4c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e4e:	f1b9 0f00 	cmp.w	r9, #0
 8003e52:	f040 8103 	bne.w	800405c <_vfprintf_r+0x18dc>
 8003e56:	07c6      	lsls	r6, r0, #31
 8003e58:	f100 8100 	bmi.w	800405c <_vfprintf_r+0x18dc>
 8003e5c:	9309      	str	r3, [sp, #36]	; 0x24
 8003e5e:	2666      	movs	r6, #102	; 0x66
 8003e60:	0543      	lsls	r3, r0, #21
 8003e62:	f100 8086 	bmi.w	8003f72 <_vfprintf_r+0x17f2>
 8003e66:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e68:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e6c:	9304      	str	r3, [sp, #16]
 8003e6e:	e79e      	b.n	8003dae <_vfprintf_r+0x162e>
 8003e70:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e72:	9907      	ldr	r1, [sp, #28]
 8003e74:	9803      	ldr	r0, [sp, #12]
 8003e76:	f002 ffb1 	bl	8006ddc <__sprint_r>
 8003e7a:	2800      	cmp	r0, #0
 8003e7c:	f47f a9f8 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8003e80:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e82:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003e84:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e86:	1ad3      	subs	r3, r2, r3
 8003e88:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e8c:	f7ff bb90 	b.w	80035b0 <_vfprintf_r+0xe30>
 8003e90:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e92:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e94:	4413      	add	r3, r2
 8003e96:	9309      	str	r3, [sp, #36]	; 0x24
 8003e98:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e9a:	2b00      	cmp	r3, #0
 8003e9c:	f340 8149 	ble.w	8004132 <_vfprintf_r+0x19b2>
 8003ea0:	2667      	movs	r6, #103	; 0x67
 8003ea2:	e7dd      	b.n	8003e60 <_vfprintf_r+0x16e0>
 8003ea4:	2330      	movs	r3, #48	; 0x30
 8003ea6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003eaa:	2358      	movs	r3, #88	; 0x58
 8003eac:	e595      	b.n	80039da <_vfprintf_r+0x125a>
 8003eae:	9803      	ldr	r0, [sp, #12]
 8003eb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003eb2:	4649      	mov	r1, r9
 8003eb4:	f002 ff92 	bl	8006ddc <__sprint_r>
 8003eb8:	2800      	cmp	r0, #0
 8003eba:	f47f a9e0 	bne.w	800327e <_vfprintf_r+0xafe>
 8003ebe:	f7fe bf0f 	b.w	8002ce0 <_vfprintf_r+0x560>
 8003ec2:	a824      	add	r0, sp, #144	; 0x90
 8003ec4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003ec8:	f002 fe90 	bl	8006bec <frexp>
 8003ecc:	2200      	movs	r2, #0
 8003ece:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003ed2:	ec51 0b10 	vmov	r0, r1, d0
 8003ed6:	f7fc fe2f 	bl	8000b38 <__aeabi_dmul>
 8003eda:	2200      	movs	r2, #0
 8003edc:	2300      	movs	r3, #0
 8003ede:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003ee2:	f7fd f891 	bl	8001008 <__aeabi_dcmpeq>
 8003ee6:	b108      	cbz	r0, 8003eec <_vfprintf_r+0x176c>
 8003ee8:	2301      	movs	r3, #1
 8003eea:	9324      	str	r3, [sp, #144]	; 0x90
 8003eec:	4b02      	ldr	r3, [pc, #8]	; (8003ef8 <_vfprintf_r+0x1778>)
 8003eee:	9309      	str	r3, [sp, #36]	; 0x24
 8003ef0:	e5ac      	b.n	8003a4c <_vfprintf_r+0x12cc>
 8003ef2:	bf00      	nop
 8003ef4:	08007b0c 	.word	0x08007b0c
 8003ef8:	08007ac8 	.word	0x08007ac8
 8003efc:	425d      	negs	r5, r3
 8003efe:	3310      	adds	r3, #16
 8003f00:	4bb9      	ldr	r3, [pc, #740]	; (80041e8 <_vfprintf_r+0x1a68>)
 8003f02:	f280 8097 	bge.w	8004034 <_vfprintf_r+0x18b4>
 8003f06:	4619      	mov	r1, r3
 8003f08:	2610      	movs	r6, #16
 8003f0a:	4623      	mov	r3, r4
 8003f0c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003f10:	460c      	mov	r4, r1
 8003f12:	e005      	b.n	8003f20 <_vfprintf_r+0x17a0>
 8003f14:	f10b 0b08 	add.w	fp, fp, #8
 8003f18:	3d10      	subs	r5, #16
 8003f1a:	2d10      	cmp	r5, #16
 8003f1c:	f340 8087 	ble.w	800402e <_vfprintf_r+0x18ae>
 8003f20:	3201      	adds	r2, #1
 8003f22:	3310      	adds	r3, #16
 8003f24:	2a07      	cmp	r2, #7
 8003f26:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003f2a:	e9cb 4600 	strd	r4, r6, [fp]
 8003f2e:	ddf1      	ble.n	8003f14 <_vfprintf_r+0x1794>
 8003f30:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f32:	9907      	ldr	r1, [sp, #28]
 8003f34:	4648      	mov	r0, r9
 8003f36:	f002 ff51 	bl	8006ddc <__sprint_r>
 8003f3a:	2800      	cmp	r0, #0
 8003f3c:	f47f a998 	bne.w	8003270 <_vfprintf_r+0xaf0>
 8003f40:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003f44:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f48:	e7e6      	b.n	8003f18 <_vfprintf_r+0x1798>
 8003f4a:	f109 0101 	add.w	r1, r9, #1
 8003f4e:	9803      	ldr	r0, [sp, #12]
 8003f50:	f001 fe80 	bl	8005c54 <_malloc_r>
 8003f54:	4607      	mov	r7, r0
 8003f56:	2800      	cmp	r0, #0
 8003f58:	f000 813b 	beq.w	80041d2 <_vfprintf_r+0x1a52>
 8003f5c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003f60:	930e      	str	r3, [sp, #56]	; 0x38
 8003f62:	f026 0320 	bic.w	r3, r6, #32
 8003f66:	9304      	str	r3, [sp, #16]
 8003f68:	46a0      	mov	r8, r4
 8003f6a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003f6c:	900a      	str	r0, [sp, #40]	; 0x28
 8003f6e:	e547      	b.n	8003a00 <_vfprintf_r+0x1280>
 8003f70:	2667      	movs	r6, #103	; 0x67
 8003f72:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003f74:	2200      	movs	r2, #0
 8003f76:	920f      	str	r2, [sp, #60]	; 0x3c
 8003f78:	9214      	str	r2, [sp, #80]	; 0x50
 8003f7a:	7803      	ldrb	r3, [r0, #0]
 8003f7c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003f7e:	2bff      	cmp	r3, #255	; 0xff
 8003f80:	d00c      	beq.n	8003f9c <_vfprintf_r+0x181c>
 8003f82:	4293      	cmp	r3, r2
 8003f84:	da0a      	bge.n	8003f9c <_vfprintf_r+0x181c>
 8003f86:	7841      	ldrb	r1, [r0, #1]
 8003f88:	1ad2      	subs	r2, r2, r3
 8003f8a:	b1a9      	cbz	r1, 8003fb8 <_vfprintf_r+0x1838>
 8003f8c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f8e:	3301      	adds	r3, #1
 8003f90:	9314      	str	r3, [sp, #80]	; 0x50
 8003f92:	460b      	mov	r3, r1
 8003f94:	2bff      	cmp	r3, #255	; 0xff
 8003f96:	f100 0001 	add.w	r0, r0, #1
 8003f9a:	d1f2      	bne.n	8003f82 <_vfprintf_r+0x1802>
 8003f9c:	9211      	str	r2, [sp, #68]	; 0x44
 8003f9e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003fa0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003fa2:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003fa4:	901a      	str	r0, [sp, #104]	; 0x68
 8003fa6:	4413      	add	r3, r2
 8003fa8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003faa:	fb02 1303 	mla	r3, r2, r3, r1
 8003fae:	9309      	str	r3, [sp, #36]	; 0x24
 8003fb0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003fb4:	9304      	str	r3, [sp, #16]
 8003fb6:	e485      	b.n	80038c4 <_vfprintf_r+0x1144>
 8003fb8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003fba:	3101      	adds	r1, #1
 8003fbc:	910f      	str	r1, [sp, #60]	; 0x3c
 8003fbe:	e7de      	b.n	8003f7e <_vfprintf_r+0x17fe>
 8003fc0:	aa28      	add	r2, sp, #160	; 0xa0
 8003fc2:	ab25      	add	r3, sp, #148	; 0x94
 8003fc4:	e9cd 3200 	strd	r3, r2, [sp]
 8003fc8:	2103      	movs	r1, #3
 8003fca:	ab24      	add	r3, sp, #144	; 0x90
 8003fcc:	464a      	mov	r2, r9
 8003fce:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003fd2:	9803      	ldr	r0, [sp, #12]
 8003fd4:	f000 fa5c 	bl	8004490 <_dtoa_r>
 8003fd8:	464d      	mov	r5, r9
 8003fda:	4607      	mov	r7, r0
 8003fdc:	eb00 0409 	add.w	r4, r0, r9
 8003fe0:	783b      	ldrb	r3, [r7, #0]
 8003fe2:	2b30      	cmp	r3, #48	; 0x30
 8003fe4:	f000 80be 	beq.w	8004164 <_vfprintf_r+0x19e4>
 8003fe8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003fea:	442c      	add	r4, r5
 8003fec:	2200      	movs	r2, #0
 8003fee:	2300      	movs	r3, #0
 8003ff0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003ff4:	f7fd f808 	bl	8001008 <__aeabi_dcmpeq>
 8003ff8:	b108      	cbz	r0, 8003ffe <_vfprintf_r+0x187e>
 8003ffa:	4623      	mov	r3, r4
 8003ffc:	e413      	b.n	8003826 <_vfprintf_r+0x10a6>
 8003ffe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004000:	42a3      	cmp	r3, r4
 8004002:	f4bf ac10 	bcs.w	8003826 <_vfprintf_r+0x10a6>
 8004006:	2130      	movs	r1, #48	; 0x30
 8004008:	1c5a      	adds	r2, r3, #1
 800400a:	9228      	str	r2, [sp, #160]	; 0xa0
 800400c:	7019      	strb	r1, [r3, #0]
 800400e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004010:	429c      	cmp	r4, r3
 8004012:	d8f9      	bhi.n	8004008 <_vfprintf_r+0x1888>
 8004014:	e407      	b.n	8003826 <_vfprintf_r+0x10a6>
 8004016:	197c      	adds	r4, r7, r5
 8004018:	e7e8      	b.n	8003fec <_vfprintf_r+0x186c>
 800401a:	f1b9 0f00 	cmp.w	r9, #0
 800401e:	f000 8092 	beq.w	8004146 <_vfprintf_r+0x19c6>
 8004022:	900a      	str	r0, [sp, #40]	; 0x28
 8004024:	e4ec      	b.n	8003a00 <_vfprintf_r+0x1280>
 8004026:	900a      	str	r0, [sp, #40]	; 0x28
 8004028:	f04f 0906 	mov.w	r9, #6
 800402c:	e4e8      	b.n	8003a00 <_vfprintf_r+0x1280>
 800402e:	4621      	mov	r1, r4
 8004030:	461c      	mov	r4, r3
 8004032:	460b      	mov	r3, r1
 8004034:	3201      	adds	r2, #1
 8004036:	442c      	add	r4, r5
 8004038:	2a07      	cmp	r2, #7
 800403a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800403e:	e9cb 3500 	strd	r3, r5, [fp]
 8004042:	f300 80a9 	bgt.w	8004198 <_vfprintf_r+0x1a18>
 8004046:	f10b 0b08 	add.w	fp, fp, #8
 800404a:	e470      	b.n	800392e <_vfprintf_r+0x11ae>
 800404c:	469a      	mov	sl, r3
 800404e:	f7ff bb37 	b.w	80036c0 <_vfprintf_r+0xf40>
 8004052:	2301      	movs	r3, #1
 8004054:	9324      	str	r3, [sp, #144]	; 0x90
 8004056:	4b65      	ldr	r3, [pc, #404]	; (80041ec <_vfprintf_r+0x1a6c>)
 8004058:	9309      	str	r3, [sp, #36]	; 0x24
 800405a:	e4f7      	b.n	8003a4c <_vfprintf_r+0x12cc>
 800405c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800405e:	4413      	add	r3, r2
 8004060:	444b      	add	r3, r9
 8004062:	9309      	str	r3, [sp, #36]	; 0x24
 8004064:	2666      	movs	r6, #102	; 0x66
 8004066:	e6fb      	b.n	8003e60 <_vfprintf_r+0x16e0>
 8004068:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800406a:	9309      	str	r3, [sp, #36]	; 0x24
 800406c:	e694      	b.n	8003d98 <_vfprintf_r+0x1618>
 800406e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8004072:	4664      	mov	r4, ip
 8004074:	4d5e      	ldr	r5, [pc, #376]	; (80041f0 <_vfprintf_r+0x1a70>)
 8004076:	e000      	b.n	800407a <_vfprintf_r+0x18fa>
 8004078:	4614      	mov	r4, r2
 800407a:	fba5 1203 	umull	r1, r2, r5, r3
 800407e:	08d2      	lsrs	r2, r2, #3
 8004080:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8004084:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004088:	f103 0130 	add.w	r1, r3, #48	; 0x30
 800408c:	4613      	mov	r3, r2
 800408e:	2b09      	cmp	r3, #9
 8004090:	f804 1c01 	strb.w	r1, [r4, #-1]
 8004094:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004098:	dcee      	bgt.n	8004078 <_vfprintf_r+0x18f8>
 800409a:	3330      	adds	r3, #48	; 0x30
 800409c:	3c02      	subs	r4, #2
 800409e:	b2db      	uxtb	r3, r3
 80040a0:	45a4      	cmp	ip, r4
 80040a2:	f802 3c01 	strb.w	r3, [r2, #-1]
 80040a6:	f240 8090 	bls.w	80041ca <_vfprintf_r+0x1a4a>
 80040aa:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 80040ae:	4611      	mov	r1, r2
 80040b0:	e001      	b.n	80040b6 <_vfprintf_r+0x1936>
 80040b2:	f811 3b01 	ldrb.w	r3, [r1], #1
 80040b6:	f804 3b01 	strb.w	r3, [r4], #1
 80040ba:	458c      	cmp	ip, r1
 80040bc:	d1f9      	bne.n	80040b2 <_vfprintf_r+0x1932>
 80040be:	ab2a      	add	r3, sp, #168	; 0xa8
 80040c0:	1a9b      	subs	r3, r3, r2
 80040c2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80040c6:	4413      	add	r3, r2
 80040c8:	f7ff bbe3 	b.w	8003892 <_vfprintf_r+0x1112>
 80040cc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80040ce:	4f49      	ldr	r7, [pc, #292]	; (80041f4 <_vfprintf_r+0x1a74>)
 80040d0:	2b00      	cmp	r3, #0
 80040d2:	bfb6      	itet	lt
 80040d4:	222d      	movlt	r2, #45	; 0x2d
 80040d6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80040da:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80040de:	4b46      	ldr	r3, [pc, #280]	; (80041f8 <_vfprintf_r+0x1a78>)
 80040e0:	f7fe bf02 	b.w	8002ee8 <_vfprintf_r+0x768>
 80040e4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80040e8:	f7ff b8c9 	b.w	800327e <_vfprintf_r+0xafe>
 80040ec:	aa28      	add	r2, sp, #160	; 0xa0
 80040ee:	ab25      	add	r3, sp, #148	; 0x94
 80040f0:	e9cd 3200 	strd	r3, r2, [sp]
 80040f4:	2103      	movs	r1, #3
 80040f6:	ab24      	add	r3, sp, #144	; 0x90
 80040f8:	464a      	mov	r2, r9
 80040fa:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80040fe:	9803      	ldr	r0, [sp, #12]
 8004100:	f000 f9c6 	bl	8004490 <_dtoa_r>
 8004104:	464d      	mov	r5, r9
 8004106:	4607      	mov	r7, r0
 8004108:	2e46      	cmp	r6, #70	; 0x46
 800410a:	eb07 0405 	add.w	r4, r7, r5
 800410e:	f43f af67 	beq.w	8003fe0 <_vfprintf_r+0x1860>
 8004112:	e76b      	b.n	8003fec <_vfprintf_r+0x186c>
 8004114:	f1b9 0f00 	cmp.w	r9, #0
 8004118:	d131      	bne.n	800417e <_vfprintf_r+0x19fe>
 800411a:	07c5      	lsls	r5, r0, #31
 800411c:	d42f      	bmi.n	800417e <_vfprintf_r+0x19fe>
 800411e:	2301      	movs	r3, #1
 8004120:	9304      	str	r3, [sp, #16]
 8004122:	9309      	str	r3, [sp, #36]	; 0x24
 8004124:	2666      	movs	r6, #102	; 0x66
 8004126:	e642      	b.n	8003dae <_vfprintf_r+0x162e>
 8004128:	07c3      	lsls	r3, r0, #31
 800412a:	f57f abbf 	bpl.w	80038ac <_vfprintf_r+0x112c>
 800412e:	f7ff bbb9 	b.w	80038a4 <_vfprintf_r+0x1124>
 8004132:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004134:	f1c3 0301 	rsb	r3, r3, #1
 8004138:	441a      	add	r2, r3
 800413a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800413e:	9209      	str	r2, [sp, #36]	; 0x24
 8004140:	9304      	str	r3, [sp, #16]
 8004142:	2667      	movs	r6, #103	; 0x67
 8004144:	e633      	b.n	8003dae <_vfprintf_r+0x162e>
 8004146:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800414a:	f04f 0901 	mov.w	r9, #1
 800414e:	e457      	b.n	8003a00 <_vfprintf_r+0x1280>
 8004150:	465a      	mov	r2, fp
 8004152:	e511      	b.n	8003b78 <_vfprintf_r+0x13f8>
 8004154:	2e47      	cmp	r6, #71	; 0x47
 8004156:	f47f af5e 	bne.w	8004016 <_vfprintf_r+0x1896>
 800415a:	f018 0f01 	tst.w	r8, #1
 800415e:	f43f ab61 	beq.w	8003824 <_vfprintf_r+0x10a4>
 8004162:	e7d1      	b.n	8004108 <_vfprintf_r+0x1988>
 8004164:	2200      	movs	r2, #0
 8004166:	2300      	movs	r3, #0
 8004168:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800416c:	f7fc ff4c 	bl	8001008 <__aeabi_dcmpeq>
 8004170:	2800      	cmp	r0, #0
 8004172:	f47f af39 	bne.w	8003fe8 <_vfprintf_r+0x1868>
 8004176:	f1c5 0501 	rsb	r5, r5, #1
 800417a:	9524      	str	r5, [sp, #144]	; 0x90
 800417c:	e735      	b.n	8003fea <_vfprintf_r+0x186a>
 800417e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004180:	3301      	adds	r3, #1
 8004182:	444b      	add	r3, r9
 8004184:	9309      	str	r3, [sp, #36]	; 0x24
 8004186:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800418a:	9304      	str	r3, [sp, #16]
 800418c:	2666      	movs	r6, #102	; 0x66
 800418e:	e60e      	b.n	8003dae <_vfprintf_r+0x162e>
 8004190:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004194:	f7ff bb7a 	b.w	800388c <_vfprintf_r+0x110c>
 8004198:	aa2a      	add	r2, sp, #168	; 0xa8
 800419a:	9907      	ldr	r1, [sp, #28]
 800419c:	9803      	ldr	r0, [sp, #12]
 800419e:	f002 fe1d 	bl	8006ddc <__sprint_r>
 80041a2:	2800      	cmp	r0, #0
 80041a4:	f47f a864 	bne.w	8003270 <_vfprintf_r+0xaf0>
 80041a8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80041ac:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80041b0:	f7ff bbbd 	b.w	800392e <_vfprintf_r+0x11ae>
 80041b4:	9908      	ldr	r1, [sp, #32]
 80041b6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80041ba:	680b      	ldr	r3, [r1, #0]
 80041bc:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80041c0:	1d0b      	adds	r3, r1, #4
 80041c2:	4692      	mov	sl, r2
 80041c4:	9308      	str	r3, [sp, #32]
 80041c6:	f7fe bb59 	b.w	800287c <_vfprintf_r+0xfc>
 80041ca:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80041ce:	f7ff bb60 	b.w	8003892 <_vfprintf_r+0x1112>
 80041d2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80041d6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80041da:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80041de:	f8a9 300c 	strh.w	r3, [r9, #12]
 80041e2:	f7ff b84c 	b.w	800327e <_vfprintf_r+0xafe>
 80041e6:	bf00      	nop
 80041e8:	08007b0c 	.word	0x08007b0c
 80041ec:	08007adc 	.word	0x08007adc
 80041f0:	cccccccd 	.word	0xcccccccd
 80041f4:	08007ac4 	.word	0x08007ac4
 80041f8:	08007ac0 	.word	0x08007ac0

080041fc <__sbprintf>:
 80041fc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004200:	460c      	mov	r4, r1
 8004202:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8004206:	8989      	ldrh	r1, [r1, #12]
 8004208:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800420a:	89e5      	ldrh	r5, [r4, #14]
 800420c:	9619      	str	r6, [sp, #100]	; 0x64
 800420e:	f021 0102 	bic.w	r1, r1, #2
 8004212:	4606      	mov	r6, r0
 8004214:	69e0      	ldr	r0, [r4, #28]
 8004216:	f8ad 100c 	strh.w	r1, [sp, #12]
 800421a:	4617      	mov	r7, r2
 800421c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004220:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8004222:	f8ad 500e 	strh.w	r5, [sp, #14]
 8004226:	4698      	mov	r8, r3
 8004228:	ad1a      	add	r5, sp, #104	; 0x68
 800422a:	2300      	movs	r3, #0
 800422c:	9007      	str	r0, [sp, #28]
 800422e:	a816      	add	r0, sp, #88	; 0x58
 8004230:	9209      	str	r2, [sp, #36]	; 0x24
 8004232:	9306      	str	r3, [sp, #24]
 8004234:	9500      	str	r5, [sp, #0]
 8004236:	9504      	str	r5, [sp, #16]
 8004238:	9102      	str	r1, [sp, #8]
 800423a:	9105      	str	r1, [sp, #20]
 800423c:	f001 fc8a 	bl	8005b54 <__retarget_lock_init_recursive>
 8004240:	4643      	mov	r3, r8
 8004242:	463a      	mov	r2, r7
 8004244:	4669      	mov	r1, sp
 8004246:	4630      	mov	r0, r6
 8004248:	f7fe fa9a 	bl	8002780 <_vfprintf_r>
 800424c:	1e05      	subs	r5, r0, #0
 800424e:	db07      	blt.n	8004260 <__sbprintf+0x64>
 8004250:	4630      	mov	r0, r6
 8004252:	4669      	mov	r1, sp
 8004254:	f001 f8d6 	bl	8005404 <_fflush_r>
 8004258:	2800      	cmp	r0, #0
 800425a:	bf18      	it	ne
 800425c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004260:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004264:	065b      	lsls	r3, r3, #25
 8004266:	d503      	bpl.n	8004270 <__sbprintf+0x74>
 8004268:	89a3      	ldrh	r3, [r4, #12]
 800426a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800426e:	81a3      	strh	r3, [r4, #12]
 8004270:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004272:	f001 fc71 	bl	8005b58 <__retarget_lock_close_recursive>
 8004276:	4628      	mov	r0, r5
 8004278:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800427c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004280 <__swsetup_r>:
 8004280:	b538      	push	{r3, r4, r5, lr}
 8004282:	4b31      	ldr	r3, [pc, #196]	; (8004348 <__swsetup_r+0xc8>)
 8004284:	681b      	ldr	r3, [r3, #0]
 8004286:	4605      	mov	r5, r0
 8004288:	460c      	mov	r4, r1
 800428a:	b113      	cbz	r3, 8004292 <__swsetup_r+0x12>
 800428c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800428e:	2a00      	cmp	r2, #0
 8004290:	d03a      	beq.n	8004308 <__swsetup_r+0x88>
 8004292:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004296:	b293      	uxth	r3, r2
 8004298:	0718      	lsls	r0, r3, #28
 800429a:	d50c      	bpl.n	80042b6 <__swsetup_r+0x36>
 800429c:	6920      	ldr	r0, [r4, #16]
 800429e:	b1a8      	cbz	r0, 80042cc <__swsetup_r+0x4c>
 80042a0:	f013 0201 	ands.w	r2, r3, #1
 80042a4:	d020      	beq.n	80042e8 <__swsetup_r+0x68>
 80042a6:	6963      	ldr	r3, [r4, #20]
 80042a8:	2200      	movs	r2, #0
 80042aa:	425b      	negs	r3, r3
 80042ac:	61a3      	str	r3, [r4, #24]
 80042ae:	60a2      	str	r2, [r4, #8]
 80042b0:	b300      	cbz	r0, 80042f4 <__swsetup_r+0x74>
 80042b2:	2000      	movs	r0, #0
 80042b4:	bd38      	pop	{r3, r4, r5, pc}
 80042b6:	06d9      	lsls	r1, r3, #27
 80042b8:	d53e      	bpl.n	8004338 <__swsetup_r+0xb8>
 80042ba:	0758      	lsls	r0, r3, #29
 80042bc:	d428      	bmi.n	8004310 <__swsetup_r+0x90>
 80042be:	6920      	ldr	r0, [r4, #16]
 80042c0:	f042 0308 	orr.w	r3, r2, #8
 80042c4:	81a3      	strh	r3, [r4, #12]
 80042c6:	b29b      	uxth	r3, r3
 80042c8:	2800      	cmp	r0, #0
 80042ca:	d1e9      	bne.n	80042a0 <__swsetup_r+0x20>
 80042cc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80042d0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80042d4:	d0e4      	beq.n	80042a0 <__swsetup_r+0x20>
 80042d6:	4628      	mov	r0, r5
 80042d8:	4621      	mov	r1, r4
 80042da:	f001 fc71 	bl	8005bc0 <__smakebuf_r>
 80042de:	89a3      	ldrh	r3, [r4, #12]
 80042e0:	6920      	ldr	r0, [r4, #16]
 80042e2:	f013 0201 	ands.w	r2, r3, #1
 80042e6:	d1de      	bne.n	80042a6 <__swsetup_r+0x26>
 80042e8:	0799      	lsls	r1, r3, #30
 80042ea:	bf58      	it	pl
 80042ec:	6962      	ldrpl	r2, [r4, #20]
 80042ee:	60a2      	str	r2, [r4, #8]
 80042f0:	2800      	cmp	r0, #0
 80042f2:	d1de      	bne.n	80042b2 <__swsetup_r+0x32>
 80042f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80042f8:	061a      	lsls	r2, r3, #24
 80042fa:	d5db      	bpl.n	80042b4 <__swsetup_r+0x34>
 80042fc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004300:	81a3      	strh	r3, [r4, #12]
 8004302:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004306:	bd38      	pop	{r3, r4, r5, pc}
 8004308:	4618      	mov	r0, r3
 800430a:	f001 f8d7 	bl	80054bc <__sinit>
 800430e:	e7c0      	b.n	8004292 <__swsetup_r+0x12>
 8004310:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004312:	b151      	cbz	r1, 800432a <__swsetup_r+0xaa>
 8004314:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004318:	4299      	cmp	r1, r3
 800431a:	d004      	beq.n	8004326 <__swsetup_r+0xa6>
 800431c:	4628      	mov	r0, r5
 800431e:	f001 f96f 	bl	8005600 <_free_r>
 8004322:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004326:	2300      	movs	r3, #0
 8004328:	6323      	str	r3, [r4, #48]	; 0x30
 800432a:	2300      	movs	r3, #0
 800432c:	6920      	ldr	r0, [r4, #16]
 800432e:	6063      	str	r3, [r4, #4]
 8004330:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004334:	6020      	str	r0, [r4, #0]
 8004336:	e7c3      	b.n	80042c0 <__swsetup_r+0x40>
 8004338:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800433c:	2309      	movs	r3, #9
 800433e:	602b      	str	r3, [r5, #0]
 8004340:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004344:	81a2      	strh	r2, [r4, #12]
 8004346:	bd38      	pop	{r3, r4, r5, pc}
 8004348:	20000018 	.word	0x20000018

0800434c <register_fini>:
 800434c:	4b02      	ldr	r3, [pc, #8]	; (8004358 <register_fini+0xc>)
 800434e:	b113      	cbz	r3, 8004356 <register_fini+0xa>
 8004350:	4802      	ldr	r0, [pc, #8]	; (800435c <register_fini+0x10>)
 8004352:	f000 b805 	b.w	8004360 <atexit>
 8004356:	4770      	bx	lr
 8004358:	00000000 	.word	0x00000000
 800435c:	0800552d 	.word	0x0800552d

08004360 <atexit>:
 8004360:	2300      	movs	r3, #0
 8004362:	4601      	mov	r1, r0
 8004364:	461a      	mov	r2, r3
 8004366:	4618      	mov	r0, r3
 8004368:	f002 bd58 	b.w	8006e1c <__register_exitproc>

0800436c <quorem>:
 800436c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004370:	6903      	ldr	r3, [r0, #16]
 8004372:	690f      	ldr	r7, [r1, #16]
 8004374:	42bb      	cmp	r3, r7
 8004376:	b083      	sub	sp, #12
 8004378:	f2c0 8086 	blt.w	8004488 <quorem+0x11c>
 800437c:	3f01      	subs	r7, #1
 800437e:	f101 0914 	add.w	r9, r1, #20
 8004382:	f100 0a14 	add.w	sl, r0, #20
 8004386:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800438a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800438e:	00bc      	lsls	r4, r7, #2
 8004390:	3201      	adds	r2, #1
 8004392:	fbb3 f8f2 	udiv	r8, r3, r2
 8004396:	eb0a 0304 	add.w	r3, sl, r4
 800439a:	9400      	str	r4, [sp, #0]
 800439c:	eb09 0b04 	add.w	fp, r9, r4
 80043a0:	9301      	str	r3, [sp, #4]
 80043a2:	f1b8 0f00 	cmp.w	r8, #0
 80043a6:	d038      	beq.n	800441a <quorem+0xae>
 80043a8:	2500      	movs	r5, #0
 80043aa:	462e      	mov	r6, r5
 80043ac:	46ce      	mov	lr, r9
 80043ae:	46d4      	mov	ip, sl
 80043b0:	f85e 4b04 	ldr.w	r4, [lr], #4
 80043b4:	f8dc 3000 	ldr.w	r3, [ip]
 80043b8:	b2a2      	uxth	r2, r4
 80043ba:	fb08 5502 	mla	r5, r8, r2, r5
 80043be:	0c22      	lsrs	r2, r4, #16
 80043c0:	0c2c      	lsrs	r4, r5, #16
 80043c2:	fb08 4202 	mla	r2, r8, r2, r4
 80043c6:	b2ad      	uxth	r5, r5
 80043c8:	1b75      	subs	r5, r6, r5
 80043ca:	b296      	uxth	r6, r2
 80043cc:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80043d0:	fa15 f383 	uxtah	r3, r5, r3
 80043d4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80043d8:	b29b      	uxth	r3, r3
 80043da:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80043de:	45f3      	cmp	fp, lr
 80043e0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80043e4:	f84c 3b04 	str.w	r3, [ip], #4
 80043e8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80043ec:	d2e0      	bcs.n	80043b0 <quorem+0x44>
 80043ee:	9b00      	ldr	r3, [sp, #0]
 80043f0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80043f4:	b98b      	cbnz	r3, 800441a <quorem+0xae>
 80043f6:	9a01      	ldr	r2, [sp, #4]
 80043f8:	1f13      	subs	r3, r2, #4
 80043fa:	459a      	cmp	sl, r3
 80043fc:	d20c      	bcs.n	8004418 <quorem+0xac>
 80043fe:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004402:	b94b      	cbnz	r3, 8004418 <quorem+0xac>
 8004404:	f1a2 0308 	sub.w	r3, r2, #8
 8004408:	e002      	b.n	8004410 <quorem+0xa4>
 800440a:	681a      	ldr	r2, [r3, #0]
 800440c:	3b04      	subs	r3, #4
 800440e:	b91a      	cbnz	r2, 8004418 <quorem+0xac>
 8004410:	459a      	cmp	sl, r3
 8004412:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004416:	d3f8      	bcc.n	800440a <quorem+0x9e>
 8004418:	6107      	str	r7, [r0, #16]
 800441a:	4604      	mov	r4, r0
 800441c:	f002 f944 	bl	80066a8 <__mcmp>
 8004420:	2800      	cmp	r0, #0
 8004422:	db2d      	blt.n	8004480 <quorem+0x114>
 8004424:	f108 0801 	add.w	r8, r8, #1
 8004428:	4655      	mov	r5, sl
 800442a:	2300      	movs	r3, #0
 800442c:	f859 1b04 	ldr.w	r1, [r9], #4
 8004430:	6828      	ldr	r0, [r5, #0]
 8004432:	b28a      	uxth	r2, r1
 8004434:	1a9a      	subs	r2, r3, r2
 8004436:	0c0b      	lsrs	r3, r1, #16
 8004438:	fa12 f280 	uxtah	r2, r2, r0
 800443c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004440:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004444:	b292      	uxth	r2, r2
 8004446:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800444a:	45cb      	cmp	fp, r9
 800444c:	f845 2b04 	str.w	r2, [r5], #4
 8004450:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004454:	d2ea      	bcs.n	800442c <quorem+0xc0>
 8004456:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800445a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800445e:	b97a      	cbnz	r2, 8004480 <quorem+0x114>
 8004460:	1f1a      	subs	r2, r3, #4
 8004462:	4592      	cmp	sl, r2
 8004464:	d20b      	bcs.n	800447e <quorem+0x112>
 8004466:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800446a:	b942      	cbnz	r2, 800447e <quorem+0x112>
 800446c:	3b08      	subs	r3, #8
 800446e:	e002      	b.n	8004476 <quorem+0x10a>
 8004470:	681a      	ldr	r2, [r3, #0]
 8004472:	3b04      	subs	r3, #4
 8004474:	b91a      	cbnz	r2, 800447e <quorem+0x112>
 8004476:	459a      	cmp	sl, r3
 8004478:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800447c:	d3f8      	bcc.n	8004470 <quorem+0x104>
 800447e:	6127      	str	r7, [r4, #16]
 8004480:	4640      	mov	r0, r8
 8004482:	b003      	add	sp, #12
 8004484:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004488:	2000      	movs	r0, #0
 800448a:	b003      	add	sp, #12
 800448c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004490 <_dtoa_r>:
 8004490:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004494:	ec55 4b10 	vmov	r4, r5, d0
 8004498:	b09b      	sub	sp, #108	; 0x6c
 800449a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800449c:	9102      	str	r1, [sp, #8]
 800449e:	4681      	mov	r9, r0
 80044a0:	9207      	str	r2, [sp, #28]
 80044a2:	9305      	str	r3, [sp, #20]
 80044a4:	e9cd 4500 	strd	r4, r5, [sp]
 80044a8:	b156      	cbz	r6, 80044c0 <_dtoa_r+0x30>
 80044aa:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80044ac:	6072      	str	r2, [r6, #4]
 80044ae:	2301      	movs	r3, #1
 80044b0:	4093      	lsls	r3, r2
 80044b2:	60b3      	str	r3, [r6, #8]
 80044b4:	4631      	mov	r1, r6
 80044b6:	f001 ff07 	bl	80062c8 <_Bfree>
 80044ba:	2300      	movs	r3, #0
 80044bc:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80044c0:	f1b5 0800 	subs.w	r8, r5, #0
 80044c4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80044c6:	bfb4      	ite	lt
 80044c8:	2301      	movlt	r3, #1
 80044ca:	2300      	movge	r3, #0
 80044cc:	6013      	str	r3, [r2, #0]
 80044ce:	4b76      	ldr	r3, [pc, #472]	; (80046a8 <_dtoa_r+0x218>)
 80044d0:	bfbc      	itt	lt
 80044d2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80044d6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80044da:	ea33 0308 	bics.w	r3, r3, r8
 80044de:	f000 80a6 	beq.w	800462e <_dtoa_r+0x19e>
 80044e2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80044e6:	2200      	movs	r2, #0
 80044e8:	2300      	movs	r3, #0
 80044ea:	4630      	mov	r0, r6
 80044ec:	4639      	mov	r1, r7
 80044ee:	f7fc fd8b 	bl	8001008 <__aeabi_dcmpeq>
 80044f2:	4605      	mov	r5, r0
 80044f4:	b178      	cbz	r0, 8004516 <_dtoa_r+0x86>
 80044f6:	9a05      	ldr	r2, [sp, #20]
 80044f8:	2301      	movs	r3, #1
 80044fa:	6013      	str	r3, [r2, #0]
 80044fc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80044fe:	2b00      	cmp	r3, #0
 8004500:	f000 80c0 	beq.w	8004684 <_dtoa_r+0x1f4>
 8004504:	4b69      	ldr	r3, [pc, #420]	; (80046ac <_dtoa_r+0x21c>)
 8004506:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004508:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800450c:	6013      	str	r3, [r2, #0]
 800450e:	4658      	mov	r0, fp
 8004510:	b01b      	add	sp, #108	; 0x6c
 8004512:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004516:	aa18      	add	r2, sp, #96	; 0x60
 8004518:	a919      	add	r1, sp, #100	; 0x64
 800451a:	ec47 6b10 	vmov	d0, r6, r7
 800451e:	4648      	mov	r0, r9
 8004520:	f002 f954 	bl	80067cc <__d2b>
 8004524:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004528:	4682      	mov	sl, r0
 800452a:	f040 80a0 	bne.w	800466e <_dtoa_r+0x1de>
 800452e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004532:	442c      	add	r4, r5
 8004534:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004538:	2b20      	cmp	r3, #32
 800453a:	f340 842c 	ble.w	8004d96 <_dtoa_r+0x906>
 800453e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004542:	fa08 f803 	lsl.w	r8, r8, r3
 8004546:	9b00      	ldr	r3, [sp, #0]
 8004548:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800454c:	fa23 f000 	lsr.w	r0, r3, r0
 8004550:	ea48 0000 	orr.w	r0, r8, r0
 8004554:	f7fc fa76 	bl	8000a44 <__aeabi_ui2d>
 8004558:	2301      	movs	r3, #1
 800455a:	4606      	mov	r6, r0
 800455c:	3c01      	subs	r4, #1
 800455e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004562:	930f      	str	r3, [sp, #60]	; 0x3c
 8004564:	4630      	mov	r0, r6
 8004566:	4639      	mov	r1, r7
 8004568:	2200      	movs	r2, #0
 800456a:	4b51      	ldr	r3, [pc, #324]	; (80046b0 <_dtoa_r+0x220>)
 800456c:	f7fc f92c 	bl	80007c8 <__aeabi_dsub>
 8004570:	a347      	add	r3, pc, #284	; (adr r3, 8004690 <_dtoa_r+0x200>)
 8004572:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004576:	f7fc fadf 	bl	8000b38 <__aeabi_dmul>
 800457a:	a347      	add	r3, pc, #284	; (adr r3, 8004698 <_dtoa_r+0x208>)
 800457c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004580:	f7fc f924 	bl	80007cc <__adddf3>
 8004584:	4606      	mov	r6, r0
 8004586:	4620      	mov	r0, r4
 8004588:	460f      	mov	r7, r1
 800458a:	f7fc fa6b 	bl	8000a64 <__aeabi_i2d>
 800458e:	a344      	add	r3, pc, #272	; (adr r3, 80046a0 <_dtoa_r+0x210>)
 8004590:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004594:	f7fc fad0 	bl	8000b38 <__aeabi_dmul>
 8004598:	4602      	mov	r2, r0
 800459a:	460b      	mov	r3, r1
 800459c:	4630      	mov	r0, r6
 800459e:	4639      	mov	r1, r7
 80045a0:	f7fc f914 	bl	80007cc <__adddf3>
 80045a4:	4606      	mov	r6, r0
 80045a6:	460f      	mov	r7, r1
 80045a8:	f7fc fd76 	bl	8001098 <__aeabi_d2iz>
 80045ac:	2200      	movs	r2, #0
 80045ae:	9006      	str	r0, [sp, #24]
 80045b0:	2300      	movs	r3, #0
 80045b2:	4630      	mov	r0, r6
 80045b4:	4639      	mov	r1, r7
 80045b6:	f7fc fd31 	bl	800101c <__aeabi_dcmplt>
 80045ba:	2800      	cmp	r0, #0
 80045bc:	f040 8273 	bne.w	8004aa6 <_dtoa_r+0x616>
 80045c0:	9e06      	ldr	r6, [sp, #24]
 80045c2:	2e16      	cmp	r6, #22
 80045c4:	f200 825d 	bhi.w	8004a82 <_dtoa_r+0x5f2>
 80045c8:	4b3a      	ldr	r3, [pc, #232]	; (80046b4 <_dtoa_r+0x224>)
 80045ca:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80045ce:	e9d3 0100 	ldrd	r0, r1, [r3]
 80045d2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045d6:	f7fc fd3f 	bl	8001058 <__aeabi_dcmpgt>
 80045da:	2800      	cmp	r0, #0
 80045dc:	f000 83d7 	beq.w	8004d8e <_dtoa_r+0x8fe>
 80045e0:	1e73      	subs	r3, r6, #1
 80045e2:	9306      	str	r3, [sp, #24]
 80045e4:	2300      	movs	r3, #0
 80045e6:	930d      	str	r3, [sp, #52]	; 0x34
 80045e8:	1b2c      	subs	r4, r5, r4
 80045ea:	f1b4 0801 	subs.w	r8, r4, #1
 80045ee:	f100 8254 	bmi.w	8004a9a <_dtoa_r+0x60a>
 80045f2:	2300      	movs	r3, #0
 80045f4:	9308      	str	r3, [sp, #32]
 80045f6:	9b06      	ldr	r3, [sp, #24]
 80045f8:	2b00      	cmp	r3, #0
 80045fa:	f2c0 8245 	blt.w	8004a88 <_dtoa_r+0x5f8>
 80045fe:	4498      	add	r8, r3
 8004600:	930c      	str	r3, [sp, #48]	; 0x30
 8004602:	2300      	movs	r3, #0
 8004604:	930b      	str	r3, [sp, #44]	; 0x2c
 8004606:	9b02      	ldr	r3, [sp, #8]
 8004608:	2b09      	cmp	r3, #9
 800460a:	d85b      	bhi.n	80046c4 <_dtoa_r+0x234>
 800460c:	2b05      	cmp	r3, #5
 800460e:	f340 83c0 	ble.w	8004d92 <_dtoa_r+0x902>
 8004612:	3b04      	subs	r3, #4
 8004614:	9302      	str	r3, [sp, #8]
 8004616:	2500      	movs	r5, #0
 8004618:	9b02      	ldr	r3, [sp, #8]
 800461a:	3b02      	subs	r3, #2
 800461c:	2b03      	cmp	r3, #3
 800461e:	f200 8498 	bhi.w	8004f52 <_dtoa_r+0xac2>
 8004622:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004626:	03df      	.short	0x03df
 8004628:	03e803bf 	.word	0x03e803bf
 800462c:	04f5      	.short	0x04f5
 800462e:	9a05      	ldr	r2, [sp, #20]
 8004630:	f242 730f 	movw	r3, #9999	; 0x270f
 8004634:	6013      	str	r3, [r2, #0]
 8004636:	9b00      	ldr	r3, [sp, #0]
 8004638:	b983      	cbnz	r3, 800465c <_dtoa_r+0x1cc>
 800463a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800463e:	b96b      	cbnz	r3, 800465c <_dtoa_r+0x1cc>
 8004640:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004642:	f8df b074 	ldr.w	fp, [pc, #116]	; 80046b8 <_dtoa_r+0x228>
 8004646:	2b00      	cmp	r3, #0
 8004648:	f43f af61 	beq.w	800450e <_dtoa_r+0x7e>
 800464c:	f10b 0308 	add.w	r3, fp, #8
 8004650:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004652:	4658      	mov	r0, fp
 8004654:	6013      	str	r3, [r2, #0]
 8004656:	b01b      	add	sp, #108	; 0x6c
 8004658:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800465c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800465e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80046bc <_dtoa_r+0x22c>
 8004662:	2b00      	cmp	r3, #0
 8004664:	f43f af53 	beq.w	800450e <_dtoa_r+0x7e>
 8004668:	f10b 0303 	add.w	r3, fp, #3
 800466c:	e7f0      	b.n	8004650 <_dtoa_r+0x1c0>
 800466e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004672:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004676:	950f      	str	r5, [sp, #60]	; 0x3c
 8004678:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800467c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004680:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004682:	e76f      	b.n	8004564 <_dtoa_r+0xd4>
 8004684:	f8df b038 	ldr.w	fp, [pc, #56]	; 80046c0 <_dtoa_r+0x230>
 8004688:	4658      	mov	r0, fp
 800468a:	b01b      	add	sp, #108	; 0x6c
 800468c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004690:	636f4361 	.word	0x636f4361
 8004694:	3fd287a7 	.word	0x3fd287a7
 8004698:	8b60c8b3 	.word	0x8b60c8b3
 800469c:	3fc68a28 	.word	0x3fc68a28
 80046a0:	509f79fb 	.word	0x509f79fb
 80046a4:	3fd34413 	.word	0x3fd34413
 80046a8:	7ff00000 	.word	0x7ff00000
 80046ac:	08007af9 	.word	0x08007af9
 80046b0:	3ff80000 	.word	0x3ff80000
 80046b4:	08007b58 	.word	0x08007b58
 80046b8:	08007b1c 	.word	0x08007b1c
 80046bc:	08007b28 	.word	0x08007b28
 80046c0:	08007af8 	.word	0x08007af8
 80046c4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80046c8:	2501      	movs	r5, #1
 80046ca:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80046ce:	2300      	movs	r3, #0
 80046d0:	9302      	str	r3, [sp, #8]
 80046d2:	9307      	str	r3, [sp, #28]
 80046d4:	2100      	movs	r1, #0
 80046d6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80046da:	940e      	str	r4, [sp, #56]	; 0x38
 80046dc:	4648      	mov	r0, r9
 80046de:	f001 fdcd 	bl	800627c <_Balloc>
 80046e2:	2c0e      	cmp	r4, #14
 80046e4:	4683      	mov	fp, r0
 80046e6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80046ea:	f200 80fb 	bhi.w	80048e4 <_dtoa_r+0x454>
 80046ee:	2d00      	cmp	r5, #0
 80046f0:	f000 80f8 	beq.w	80048e4 <_dtoa_r+0x454>
 80046f4:	ed9d 7b00 	vldr	d7, [sp]
 80046f8:	9906      	ldr	r1, [sp, #24]
 80046fa:	2900      	cmp	r1, #0
 80046fc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004700:	f340 83e5 	ble.w	8004ece <_dtoa_r+0xa3e>
 8004704:	4b9d      	ldr	r3, [pc, #628]	; (800497c <_dtoa_r+0x4ec>)
 8004706:	f001 020f 	and.w	r2, r1, #15
 800470a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800470e:	ed93 7b00 	vldr	d7, [r3]
 8004712:	110c      	asrs	r4, r1, #4
 8004714:	06e2      	lsls	r2, r4, #27
 8004716:	ed8d 7b00 	vstr	d7, [sp]
 800471a:	f140 849e 	bpl.w	800505a <_dtoa_r+0xbca>
 800471e:	4b98      	ldr	r3, [pc, #608]	; (8004980 <_dtoa_r+0x4f0>)
 8004720:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004724:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004728:	f7fc fb30 	bl	8000d8c <__aeabi_ddiv>
 800472c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004730:	f004 040f 	and.w	r4, r4, #15
 8004734:	2603      	movs	r6, #3
 8004736:	b17c      	cbz	r4, 8004758 <_dtoa_r+0x2c8>
 8004738:	e9dd 0100 	ldrd	r0, r1, [sp]
 800473c:	4d90      	ldr	r5, [pc, #576]	; (8004980 <_dtoa_r+0x4f0>)
 800473e:	07e3      	lsls	r3, r4, #31
 8004740:	d504      	bpl.n	800474c <_dtoa_r+0x2bc>
 8004742:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004746:	f7fc f9f7 	bl	8000b38 <__aeabi_dmul>
 800474a:	3601      	adds	r6, #1
 800474c:	1064      	asrs	r4, r4, #1
 800474e:	f105 0508 	add.w	r5, r5, #8
 8004752:	d1f4      	bne.n	800473e <_dtoa_r+0x2ae>
 8004754:	e9cd 0100 	strd	r0, r1, [sp]
 8004758:	e9dd 2300 	ldrd	r2, r3, [sp]
 800475c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004760:	f7fc fb14 	bl	8000d8c <__aeabi_ddiv>
 8004764:	e9cd 0100 	strd	r0, r1, [sp]
 8004768:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800476a:	b143      	cbz	r3, 800477e <_dtoa_r+0x2ee>
 800476c:	2200      	movs	r2, #0
 800476e:	4b85      	ldr	r3, [pc, #532]	; (8004984 <_dtoa_r+0x4f4>)
 8004770:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004774:	f7fc fc52 	bl	800101c <__aeabi_dcmplt>
 8004778:	2800      	cmp	r0, #0
 800477a:	f040 84ff 	bne.w	800517c <_dtoa_r+0xcec>
 800477e:	4630      	mov	r0, r6
 8004780:	f7fc f970 	bl	8000a64 <__aeabi_i2d>
 8004784:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004788:	f7fc f9d6 	bl	8000b38 <__aeabi_dmul>
 800478c:	4b7e      	ldr	r3, [pc, #504]	; (8004988 <_dtoa_r+0x4f8>)
 800478e:	2200      	movs	r2, #0
 8004790:	f7fc f81c 	bl	80007cc <__adddf3>
 8004794:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004796:	4606      	mov	r6, r0
 8004798:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800479c:	2b00      	cmp	r3, #0
 800479e:	f000 841c 	beq.w	8004fda <_dtoa_r+0xb4a>
 80047a2:	9b06      	ldr	r3, [sp, #24]
 80047a4:	9316      	str	r3, [sp, #88]	; 0x58
 80047a6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047a8:	9312      	str	r3, [sp, #72]	; 0x48
 80047aa:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047ae:	f7fc fc73 	bl	8001098 <__aeabi_d2iz>
 80047b2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80047b4:	4b71      	ldr	r3, [pc, #452]	; (800497c <_dtoa_r+0x4ec>)
 80047b6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80047ba:	ed13 7b02 	vldr	d7, [r3, #-8]
 80047be:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80047c2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80047c6:	f7fc f94d 	bl	8000a64 <__aeabi_i2d>
 80047ca:	460b      	mov	r3, r1
 80047cc:	4602      	mov	r2, r0
 80047ce:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047d2:	e9cd 6700 	strd	r6, r7, [sp]
 80047d6:	f7fb fff7 	bl	80007c8 <__aeabi_dsub>
 80047da:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047dc:	b2ed      	uxtb	r5, r5
 80047de:	4606      	mov	r6, r0
 80047e0:	460f      	mov	r7, r1
 80047e2:	f10b 0401 	add.w	r4, fp, #1
 80047e6:	2b00      	cmp	r3, #0
 80047e8:	f000 8458 	beq.w	800509c <_dtoa_r+0xc0c>
 80047ec:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80047f0:	2000      	movs	r0, #0
 80047f2:	4966      	ldr	r1, [pc, #408]	; (800498c <_dtoa_r+0x4fc>)
 80047f4:	f7fc faca 	bl	8000d8c <__aeabi_ddiv>
 80047f8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80047fc:	f7fb ffe4 	bl	80007c8 <__aeabi_dsub>
 8004800:	f88b 5000 	strb.w	r5, [fp]
 8004804:	4632      	mov	r2, r6
 8004806:	463b      	mov	r3, r7
 8004808:	e9cd 0100 	strd	r0, r1, [sp]
 800480c:	f7fc fc24 	bl	8001058 <__aeabi_dcmpgt>
 8004810:	2800      	cmp	r0, #0
 8004812:	f040 8502 	bne.w	800521a <_dtoa_r+0xd8a>
 8004816:	4632      	mov	r2, r6
 8004818:	463b      	mov	r3, r7
 800481a:	2000      	movs	r0, #0
 800481c:	4959      	ldr	r1, [pc, #356]	; (8004984 <_dtoa_r+0x4f4>)
 800481e:	f7fb ffd3 	bl	80007c8 <__aeabi_dsub>
 8004822:	4602      	mov	r2, r0
 8004824:	460b      	mov	r3, r1
 8004826:	e9dd 0100 	ldrd	r0, r1, [sp]
 800482a:	f7fc fc15 	bl	8001058 <__aeabi_dcmpgt>
 800482e:	2800      	cmp	r0, #0
 8004830:	f040 84fb 	bne.w	800522a <_dtoa_r+0xd9a>
 8004834:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004836:	2a01      	cmp	r2, #1
 8004838:	d050      	beq.n	80048dc <_dtoa_r+0x44c>
 800483a:	445a      	add	r2, fp
 800483c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004840:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004844:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004848:	4692      	mov	sl, r2
 800484a:	46cb      	mov	fp, r9
 800484c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004850:	e00c      	b.n	800486c <_dtoa_r+0x3dc>
 8004852:	2000      	movs	r0, #0
 8004854:	494b      	ldr	r1, [pc, #300]	; (8004984 <_dtoa_r+0x4f4>)
 8004856:	f7fb ffb7 	bl	80007c8 <__aeabi_dsub>
 800485a:	4642      	mov	r2, r8
 800485c:	464b      	mov	r3, r9
 800485e:	f7fc fbdd 	bl	800101c <__aeabi_dcmplt>
 8004862:	2800      	cmp	r0, #0
 8004864:	f040 84dc 	bne.w	8005220 <_dtoa_r+0xd90>
 8004868:	4554      	cmp	r4, sl
 800486a:	d030      	beq.n	80048ce <_dtoa_r+0x43e>
 800486c:	4640      	mov	r0, r8
 800486e:	4649      	mov	r1, r9
 8004870:	2200      	movs	r2, #0
 8004872:	4b47      	ldr	r3, [pc, #284]	; (8004990 <_dtoa_r+0x500>)
 8004874:	f7fc f960 	bl	8000b38 <__aeabi_dmul>
 8004878:	2200      	movs	r2, #0
 800487a:	4b45      	ldr	r3, [pc, #276]	; (8004990 <_dtoa_r+0x500>)
 800487c:	4680      	mov	r8, r0
 800487e:	4689      	mov	r9, r1
 8004880:	4630      	mov	r0, r6
 8004882:	4639      	mov	r1, r7
 8004884:	f7fc f958 	bl	8000b38 <__aeabi_dmul>
 8004888:	460f      	mov	r7, r1
 800488a:	4606      	mov	r6, r0
 800488c:	f7fc fc04 	bl	8001098 <__aeabi_d2iz>
 8004890:	4605      	mov	r5, r0
 8004892:	f7fc f8e7 	bl	8000a64 <__aeabi_i2d>
 8004896:	4602      	mov	r2, r0
 8004898:	460b      	mov	r3, r1
 800489a:	4630      	mov	r0, r6
 800489c:	4639      	mov	r1, r7
 800489e:	f7fb ff93 	bl	80007c8 <__aeabi_dsub>
 80048a2:	3530      	adds	r5, #48	; 0x30
 80048a4:	b2ed      	uxtb	r5, r5
 80048a6:	4642      	mov	r2, r8
 80048a8:	464b      	mov	r3, r9
 80048aa:	f804 5b01 	strb.w	r5, [r4], #1
 80048ae:	4606      	mov	r6, r0
 80048b0:	460f      	mov	r7, r1
 80048b2:	f7fc fbb3 	bl	800101c <__aeabi_dcmplt>
 80048b6:	4632      	mov	r2, r6
 80048b8:	463b      	mov	r3, r7
 80048ba:	2800      	cmp	r0, #0
 80048bc:	d0c9      	beq.n	8004852 <_dtoa_r+0x3c2>
 80048be:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80048c0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80048c4:	9306      	str	r3, [sp, #24]
 80048c6:	46d9      	mov	r9, fp
 80048c8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80048cc:	e236      	b.n	8004d3c <_dtoa_r+0x8ac>
 80048ce:	46d9      	mov	r9, fp
 80048d0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80048d4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80048d8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80048dc:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80048e0:	e9cd 3400 	strd	r3, r4, [sp]
 80048e4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80048e6:	2b00      	cmp	r3, #0
 80048e8:	f2c0 80ae 	blt.w	8004a48 <_dtoa_r+0x5b8>
 80048ec:	9a06      	ldr	r2, [sp, #24]
 80048ee:	2a0e      	cmp	r2, #14
 80048f0:	f300 80aa 	bgt.w	8004a48 <_dtoa_r+0x5b8>
 80048f4:	4b21      	ldr	r3, [pc, #132]	; (800497c <_dtoa_r+0x4ec>)
 80048f6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80048fa:	ed93 7b00 	vldr	d7, [r3]
 80048fe:	9b07      	ldr	r3, [sp, #28]
 8004900:	2b00      	cmp	r3, #0
 8004902:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004906:	f2c0 82be 	blt.w	8004e86 <_dtoa_r+0x9f6>
 800490a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800490e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004912:	4630      	mov	r0, r6
 8004914:	4639      	mov	r1, r7
 8004916:	f7fc fa39 	bl	8000d8c <__aeabi_ddiv>
 800491a:	f7fc fbbd 	bl	8001098 <__aeabi_d2iz>
 800491e:	4605      	mov	r5, r0
 8004920:	f7fc f8a0 	bl	8000a64 <__aeabi_i2d>
 8004924:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004928:	f7fc f906 	bl	8000b38 <__aeabi_dmul>
 800492c:	460b      	mov	r3, r1
 800492e:	4602      	mov	r2, r0
 8004930:	4639      	mov	r1, r7
 8004932:	4630      	mov	r0, r6
 8004934:	f7fb ff48 	bl	80007c8 <__aeabi_dsub>
 8004938:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800493c:	f88b 3000 	strb.w	r3, [fp]
 8004940:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004942:	2b01      	cmp	r3, #1
 8004944:	4606      	mov	r6, r0
 8004946:	460f      	mov	r7, r1
 8004948:	f10b 0401 	add.w	r4, fp, #1
 800494c:	d053      	beq.n	80049f6 <_dtoa_r+0x566>
 800494e:	2200      	movs	r2, #0
 8004950:	4b0f      	ldr	r3, [pc, #60]	; (8004990 <_dtoa_r+0x500>)
 8004952:	f7fc f8f1 	bl	8000b38 <__aeabi_dmul>
 8004956:	2200      	movs	r2, #0
 8004958:	2300      	movs	r3, #0
 800495a:	4606      	mov	r6, r0
 800495c:	460f      	mov	r7, r1
 800495e:	f7fc fb53 	bl	8001008 <__aeabi_dcmpeq>
 8004962:	2800      	cmp	r0, #0
 8004964:	f040 81ea 	bne.w	8004d3c <_dtoa_r+0x8ac>
 8004968:	f8cd a000 	str.w	sl, [sp]
 800496c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004970:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004974:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004978:	e017      	b.n	80049aa <_dtoa_r+0x51a>
 800497a:	bf00      	nop
 800497c:	08007b58 	.word	0x08007b58
 8004980:	08007b30 	.word	0x08007b30
 8004984:	3ff00000 	.word	0x3ff00000
 8004988:	401c0000 	.word	0x401c0000
 800498c:	3fe00000 	.word	0x3fe00000
 8004990:	40240000 	.word	0x40240000
 8004994:	f7fc f8d0 	bl	8000b38 <__aeabi_dmul>
 8004998:	2200      	movs	r2, #0
 800499a:	2300      	movs	r3, #0
 800499c:	4606      	mov	r6, r0
 800499e:	460f      	mov	r7, r1
 80049a0:	f7fc fb32 	bl	8001008 <__aeabi_dcmpeq>
 80049a4:	2800      	cmp	r0, #0
 80049a6:	f040 833d 	bne.w	8005024 <_dtoa_r+0xb94>
 80049aa:	464a      	mov	r2, r9
 80049ac:	4653      	mov	r3, sl
 80049ae:	4630      	mov	r0, r6
 80049b0:	4639      	mov	r1, r7
 80049b2:	f7fc f9eb 	bl	8000d8c <__aeabi_ddiv>
 80049b6:	f7fc fb6f 	bl	8001098 <__aeabi_d2iz>
 80049ba:	4605      	mov	r5, r0
 80049bc:	f7fc f852 	bl	8000a64 <__aeabi_i2d>
 80049c0:	464a      	mov	r2, r9
 80049c2:	4653      	mov	r3, sl
 80049c4:	f7fc f8b8 	bl	8000b38 <__aeabi_dmul>
 80049c8:	4602      	mov	r2, r0
 80049ca:	460b      	mov	r3, r1
 80049cc:	4630      	mov	r0, r6
 80049ce:	4639      	mov	r1, r7
 80049d0:	f7fb fefa 	bl	80007c8 <__aeabi_dsub>
 80049d4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80049d8:	f804 cb01 	strb.w	ip, [r4], #1
 80049dc:	eba4 0c0b 	sub.w	ip, r4, fp
 80049e0:	45e0      	cmp	r8, ip
 80049e2:	4606      	mov	r6, r0
 80049e4:	460f      	mov	r7, r1
 80049e6:	f04f 0200 	mov.w	r2, #0
 80049ea:	4bc1      	ldr	r3, [pc, #772]	; (8004cf0 <_dtoa_r+0x860>)
 80049ec:	d1d2      	bne.n	8004994 <_dtoa_r+0x504>
 80049ee:	f8dd a000 	ldr.w	sl, [sp]
 80049f2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80049f6:	4632      	mov	r2, r6
 80049f8:	463b      	mov	r3, r7
 80049fa:	4630      	mov	r0, r6
 80049fc:	4639      	mov	r1, r7
 80049fe:	f7fb fee5 	bl	80007cc <__adddf3>
 8004a02:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004a06:	4606      	mov	r6, r0
 8004a08:	460f      	mov	r7, r1
 8004a0a:	f7fc fb25 	bl	8001058 <__aeabi_dcmpgt>
 8004a0e:	b958      	cbnz	r0, 8004a28 <_dtoa_r+0x598>
 8004a10:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004a14:	4630      	mov	r0, r6
 8004a16:	4639      	mov	r1, r7
 8004a18:	f7fc faf6 	bl	8001008 <__aeabi_dcmpeq>
 8004a1c:	2800      	cmp	r0, #0
 8004a1e:	f000 818d 	beq.w	8004d3c <_dtoa_r+0x8ac>
 8004a22:	07e9      	lsls	r1, r5, #31
 8004a24:	f140 818a 	bpl.w	8004d3c <_dtoa_r+0x8ac>
 8004a28:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004a2c:	e005      	b.n	8004a3a <_dtoa_r+0x5aa>
 8004a2e:	459b      	cmp	fp, r3
 8004a30:	f000 8373 	beq.w	800511a <_dtoa_r+0xc8a>
 8004a34:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004a38:	461c      	mov	r4, r3
 8004a3a:	2d39      	cmp	r5, #57	; 0x39
 8004a3c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a40:	d0f5      	beq.n	8004a2e <_dtoa_r+0x59e>
 8004a42:	3501      	adds	r5, #1
 8004a44:	701d      	strb	r5, [r3, #0]
 8004a46:	e179      	b.n	8004d3c <_dtoa_r+0x8ac>
 8004a48:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004a4a:	2a00      	cmp	r2, #0
 8004a4c:	d03b      	beq.n	8004ac6 <_dtoa_r+0x636>
 8004a4e:	9a02      	ldr	r2, [sp, #8]
 8004a50:	2a01      	cmp	r2, #1
 8004a52:	f340 820b 	ble.w	8004e6c <_dtoa_r+0x9dc>
 8004a56:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a58:	1e5f      	subs	r7, r3, #1
 8004a5a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004a5c:	42bb      	cmp	r3, r7
 8004a5e:	f2c0 82e6 	blt.w	800502e <_dtoa_r+0xb9e>
 8004a62:	1bdf      	subs	r7, r3, r7
 8004a64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a66:	2b00      	cmp	r3, #0
 8004a68:	f2c0 830b 	blt.w	8005082 <_dtoa_r+0xbf2>
 8004a6c:	9a08      	ldr	r2, [sp, #32]
 8004a6e:	4614      	mov	r4, r2
 8004a70:	441a      	add	r2, r3
 8004a72:	4498      	add	r8, r3
 8004a74:	9208      	str	r2, [sp, #32]
 8004a76:	2101      	movs	r1, #1
 8004a78:	4648      	mov	r0, r9
 8004a7a:	f001 fcbf 	bl	80063fc <__i2b>
 8004a7e:	4605      	mov	r5, r0
 8004a80:	e024      	b.n	8004acc <_dtoa_r+0x63c>
 8004a82:	2301      	movs	r3, #1
 8004a84:	930d      	str	r3, [sp, #52]	; 0x34
 8004a86:	e5af      	b.n	80045e8 <_dtoa_r+0x158>
 8004a88:	9a08      	ldr	r2, [sp, #32]
 8004a8a:	9b06      	ldr	r3, [sp, #24]
 8004a8c:	1ad2      	subs	r2, r2, r3
 8004a8e:	425b      	negs	r3, r3
 8004a90:	930b      	str	r3, [sp, #44]	; 0x2c
 8004a92:	2300      	movs	r3, #0
 8004a94:	9208      	str	r2, [sp, #32]
 8004a96:	930c      	str	r3, [sp, #48]	; 0x30
 8004a98:	e5b5      	b.n	8004606 <_dtoa_r+0x176>
 8004a9a:	f1c4 0301 	rsb	r3, r4, #1
 8004a9e:	9308      	str	r3, [sp, #32]
 8004aa0:	f04f 0800 	mov.w	r8, #0
 8004aa4:	e5a7      	b.n	80045f6 <_dtoa_r+0x166>
 8004aa6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004aaa:	4640      	mov	r0, r8
 8004aac:	f7fb ffda 	bl	8000a64 <__aeabi_i2d>
 8004ab0:	4632      	mov	r2, r6
 8004ab2:	463b      	mov	r3, r7
 8004ab4:	f7fc faa8 	bl	8001008 <__aeabi_dcmpeq>
 8004ab8:	2800      	cmp	r0, #0
 8004aba:	f47f ad81 	bne.w	80045c0 <_dtoa_r+0x130>
 8004abe:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004ac2:	9306      	str	r3, [sp, #24]
 8004ac4:	e57c      	b.n	80045c0 <_dtoa_r+0x130>
 8004ac6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004ac8:	9c08      	ldr	r4, [sp, #32]
 8004aca:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004acc:	2c00      	cmp	r4, #0
 8004ace:	dd0c      	ble.n	8004aea <_dtoa_r+0x65a>
 8004ad0:	f1b8 0f00 	cmp.w	r8, #0
 8004ad4:	dd09      	ble.n	8004aea <_dtoa_r+0x65a>
 8004ad6:	4544      	cmp	r4, r8
 8004ad8:	9a08      	ldr	r2, [sp, #32]
 8004ada:	4623      	mov	r3, r4
 8004adc:	bfa8      	it	ge
 8004ade:	4643      	movge	r3, r8
 8004ae0:	1ad2      	subs	r2, r2, r3
 8004ae2:	9208      	str	r2, [sp, #32]
 8004ae4:	1ae4      	subs	r4, r4, r3
 8004ae6:	eba8 0803 	sub.w	r8, r8, r3
 8004aea:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004aec:	b16b      	cbz	r3, 8004b0a <_dtoa_r+0x67a>
 8004aee:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004af0:	2a00      	cmp	r2, #0
 8004af2:	f000 8290 	beq.w	8005016 <_dtoa_r+0xb86>
 8004af6:	1bde      	subs	r6, r3, r7
 8004af8:	2f00      	cmp	r7, #0
 8004afa:	f040 819b 	bne.w	8004e34 <_dtoa_r+0x9a4>
 8004afe:	4651      	mov	r1, sl
 8004b00:	4632      	mov	r2, r6
 8004b02:	4648      	mov	r0, r9
 8004b04:	f001 fd2a 	bl	800655c <__pow5mult>
 8004b08:	4682      	mov	sl, r0
 8004b0a:	2101      	movs	r1, #1
 8004b0c:	4648      	mov	r0, r9
 8004b0e:	f001 fc75 	bl	80063fc <__i2b>
 8004b12:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b14:	4606      	mov	r6, r0
 8004b16:	2a00      	cmp	r2, #0
 8004b18:	f040 8125 	bne.w	8004d66 <_dtoa_r+0x8d6>
 8004b1c:	9b02      	ldr	r3, [sp, #8]
 8004b1e:	2b01      	cmp	r3, #1
 8004b20:	f340 816c 	ble.w	8004dfc <_dtoa_r+0x96c>
 8004b24:	2001      	movs	r0, #1
 8004b26:	4440      	add	r0, r8
 8004b28:	f010 001f 	ands.w	r0, r0, #31
 8004b2c:	f000 8119 	beq.w	8004d62 <_dtoa_r+0x8d2>
 8004b30:	f1c0 0320 	rsb	r3, r0, #32
 8004b34:	2b04      	cmp	r3, #4
 8004b36:	f340 83ac 	ble.w	8005292 <_dtoa_r+0xe02>
 8004b3a:	f1c0 001c 	rsb	r0, r0, #28
 8004b3e:	9b08      	ldr	r3, [sp, #32]
 8004b40:	4403      	add	r3, r0
 8004b42:	9308      	str	r3, [sp, #32]
 8004b44:	4404      	add	r4, r0
 8004b46:	4480      	add	r8, r0
 8004b48:	9b08      	ldr	r3, [sp, #32]
 8004b4a:	2b00      	cmp	r3, #0
 8004b4c:	dd05      	ble.n	8004b5a <_dtoa_r+0x6ca>
 8004b4e:	4651      	mov	r1, sl
 8004b50:	461a      	mov	r2, r3
 8004b52:	4648      	mov	r0, r9
 8004b54:	f001 fd52 	bl	80065fc <__lshift>
 8004b58:	4682      	mov	sl, r0
 8004b5a:	f1b8 0f00 	cmp.w	r8, #0
 8004b5e:	dd05      	ble.n	8004b6c <_dtoa_r+0x6dc>
 8004b60:	4631      	mov	r1, r6
 8004b62:	4642      	mov	r2, r8
 8004b64:	4648      	mov	r0, r9
 8004b66:	f001 fd49 	bl	80065fc <__lshift>
 8004b6a:	4606      	mov	r6, r0
 8004b6c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004b6e:	2b00      	cmp	r3, #0
 8004b70:	d177      	bne.n	8004c62 <_dtoa_r+0x7d2>
 8004b72:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b74:	2b00      	cmp	r3, #0
 8004b76:	f340 8209 	ble.w	8004f8c <_dtoa_r+0xafc>
 8004b7a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b7c:	2b00      	cmp	r3, #0
 8004b7e:	f000 8089 	beq.w	8004c94 <_dtoa_r+0x804>
 8004b82:	2c00      	cmp	r4, #0
 8004b84:	f300 816b 	bgt.w	8004e5e <_dtoa_r+0x9ce>
 8004b88:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004b8a:	2b00      	cmp	r3, #0
 8004b8c:	f040 81cd 	bne.w	8004f2a <_dtoa_r+0xa9a>
 8004b90:	46a8      	mov	r8, r5
 8004b92:	9a00      	ldr	r2, [sp, #0]
 8004b94:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004b98:	f002 0201 	and.w	r2, r2, #1
 8004b9c:	920a      	str	r2, [sp, #40]	; 0x28
 8004b9e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004ba0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004ba4:	441a      	add	r2, r3
 8004ba6:	465f      	mov	r7, fp
 8004ba8:	9209      	str	r2, [sp, #36]	; 0x24
 8004baa:	46b3      	mov	fp, r6
 8004bac:	4659      	mov	r1, fp
 8004bae:	4650      	mov	r0, sl
 8004bb0:	f7ff fbdc 	bl	800436c <quorem>
 8004bb4:	4629      	mov	r1, r5
 8004bb6:	4604      	mov	r4, r0
 8004bb8:	4650      	mov	r0, sl
 8004bba:	f001 fd75 	bl	80066a8 <__mcmp>
 8004bbe:	4659      	mov	r1, fp
 8004bc0:	4606      	mov	r6, r0
 8004bc2:	4642      	mov	r2, r8
 8004bc4:	4648      	mov	r0, r9
 8004bc6:	f001 fd8b 	bl	80066e0 <__mdiff>
 8004bca:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004bce:	9300      	str	r3, [sp, #0]
 8004bd0:	68c3      	ldr	r3, [r0, #12]
 8004bd2:	4601      	mov	r1, r0
 8004bd4:	2b00      	cmp	r3, #0
 8004bd6:	f040 81d4 	bne.w	8004f82 <_dtoa_r+0xaf2>
 8004bda:	9008      	str	r0, [sp, #32]
 8004bdc:	4650      	mov	r0, sl
 8004bde:	f001 fd63 	bl	80066a8 <__mcmp>
 8004be2:	9a08      	ldr	r2, [sp, #32]
 8004be4:	9007      	str	r0, [sp, #28]
 8004be6:	4611      	mov	r1, r2
 8004be8:	4648      	mov	r0, r9
 8004bea:	f001 fb6d 	bl	80062c8 <_Bfree>
 8004bee:	9b07      	ldr	r3, [sp, #28]
 8004bf0:	b933      	cbnz	r3, 8004c00 <_dtoa_r+0x770>
 8004bf2:	9a02      	ldr	r2, [sp, #8]
 8004bf4:	b922      	cbnz	r2, 8004c00 <_dtoa_r+0x770>
 8004bf6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004bf8:	2b00      	cmp	r3, #0
 8004bfa:	f000 8319 	beq.w	8005230 <_dtoa_r+0xda0>
 8004bfe:	9b02      	ldr	r3, [sp, #8]
 8004c00:	2e00      	cmp	r6, #0
 8004c02:	f2c0 821c 	blt.w	800503e <_dtoa_r+0xbae>
 8004c06:	d105      	bne.n	8004c14 <_dtoa_r+0x784>
 8004c08:	9a02      	ldr	r2, [sp, #8]
 8004c0a:	b91a      	cbnz	r2, 8004c14 <_dtoa_r+0x784>
 8004c0c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004c0e:	2a00      	cmp	r2, #0
 8004c10:	f000 8215 	beq.w	800503e <_dtoa_r+0xbae>
 8004c14:	2b00      	cmp	r3, #0
 8004c16:	f107 0401 	add.w	r4, r7, #1
 8004c1a:	f300 8225 	bgt.w	8005068 <_dtoa_r+0xbd8>
 8004c1e:	9b00      	ldr	r3, [sp, #0]
 8004c20:	703b      	strb	r3, [r7, #0]
 8004c22:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c24:	42bb      	cmp	r3, r7
 8004c26:	f000 8230 	beq.w	800508a <_dtoa_r+0xbfa>
 8004c2a:	4651      	mov	r1, sl
 8004c2c:	2300      	movs	r3, #0
 8004c2e:	220a      	movs	r2, #10
 8004c30:	4648      	mov	r0, r9
 8004c32:	f001 fb53 	bl	80062dc <__multadd>
 8004c36:	4545      	cmp	r5, r8
 8004c38:	4682      	mov	sl, r0
 8004c3a:	4629      	mov	r1, r5
 8004c3c:	f04f 0300 	mov.w	r3, #0
 8004c40:	f04f 020a 	mov.w	r2, #10
 8004c44:	4648      	mov	r0, r9
 8004c46:	f000 8196 	beq.w	8004f76 <_dtoa_r+0xae6>
 8004c4a:	f001 fb47 	bl	80062dc <__multadd>
 8004c4e:	4641      	mov	r1, r8
 8004c50:	4605      	mov	r5, r0
 8004c52:	2300      	movs	r3, #0
 8004c54:	220a      	movs	r2, #10
 8004c56:	4648      	mov	r0, r9
 8004c58:	f001 fb40 	bl	80062dc <__multadd>
 8004c5c:	4627      	mov	r7, r4
 8004c5e:	4680      	mov	r8, r0
 8004c60:	e7a4      	b.n	8004bac <_dtoa_r+0x71c>
 8004c62:	4631      	mov	r1, r6
 8004c64:	4650      	mov	r0, sl
 8004c66:	f001 fd1f 	bl	80066a8 <__mcmp>
 8004c6a:	2800      	cmp	r0, #0
 8004c6c:	da81      	bge.n	8004b72 <_dtoa_r+0x6e2>
 8004c6e:	9f06      	ldr	r7, [sp, #24]
 8004c70:	4651      	mov	r1, sl
 8004c72:	2300      	movs	r3, #0
 8004c74:	220a      	movs	r2, #10
 8004c76:	4648      	mov	r0, r9
 8004c78:	3f01      	subs	r7, #1
 8004c7a:	9706      	str	r7, [sp, #24]
 8004c7c:	f001 fb2e 	bl	80062dc <__multadd>
 8004c80:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004c82:	4682      	mov	sl, r0
 8004c84:	2b00      	cmp	r3, #0
 8004c86:	f040 82eb 	bne.w	8005260 <_dtoa_r+0xdd0>
 8004c8a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004c8c:	2b00      	cmp	r3, #0
 8004c8e:	f340 82f3 	ble.w	8005278 <_dtoa_r+0xde8>
 8004c92:	9309      	str	r3, [sp, #36]	; 0x24
 8004c94:	465c      	mov	r4, fp
 8004c96:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004c9a:	e002      	b.n	8004ca2 <_dtoa_r+0x812>
 8004c9c:	f001 fb1e 	bl	80062dc <__multadd>
 8004ca0:	4682      	mov	sl, r0
 8004ca2:	4631      	mov	r1, r6
 8004ca4:	4650      	mov	r0, sl
 8004ca6:	f7ff fb61 	bl	800436c <quorem>
 8004caa:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004cae:	f804 7b01 	strb.w	r7, [r4], #1
 8004cb2:	eba4 030b 	sub.w	r3, r4, fp
 8004cb6:	4598      	cmp	r8, r3
 8004cb8:	f04f 020a 	mov.w	r2, #10
 8004cbc:	f04f 0300 	mov.w	r3, #0
 8004cc0:	4651      	mov	r1, sl
 8004cc2:	4648      	mov	r0, r9
 8004cc4:	dcea      	bgt.n	8004c9c <_dtoa_r+0x80c>
 8004cc6:	2300      	movs	r3, #0
 8004cc8:	9700      	str	r7, [sp, #0]
 8004cca:	9302      	str	r3, [sp, #8]
 8004ccc:	4651      	mov	r1, sl
 8004cce:	2201      	movs	r2, #1
 8004cd0:	4648      	mov	r0, r9
 8004cd2:	f001 fc93 	bl	80065fc <__lshift>
 8004cd6:	4631      	mov	r1, r6
 8004cd8:	4682      	mov	sl, r0
 8004cda:	f001 fce5 	bl	80066a8 <__mcmp>
 8004cde:	2800      	cmp	r0, #0
 8004ce0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004ce4:	dc14      	bgt.n	8004d10 <_dtoa_r+0x880>
 8004ce6:	d108      	bne.n	8004cfa <_dtoa_r+0x86a>
 8004ce8:	9b00      	ldr	r3, [sp, #0]
 8004cea:	07db      	lsls	r3, r3, #31
 8004cec:	d410      	bmi.n	8004d10 <_dtoa_r+0x880>
 8004cee:	e004      	b.n	8004cfa <_dtoa_r+0x86a>
 8004cf0:	40240000 	.word	0x40240000
 8004cf4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004cf8:	461c      	mov	r4, r3
 8004cfa:	2a30      	cmp	r2, #48	; 0x30
 8004cfc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004d00:	d0f8      	beq.n	8004cf4 <_dtoa_r+0x864>
 8004d02:	e00b      	b.n	8004d1c <_dtoa_r+0x88c>
 8004d04:	459b      	cmp	fp, r3
 8004d06:	f000 814e 	beq.w	8004fa6 <_dtoa_r+0xb16>
 8004d0a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004d0e:	461c      	mov	r4, r3
 8004d10:	2a39      	cmp	r2, #57	; 0x39
 8004d12:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004d16:	d0f5      	beq.n	8004d04 <_dtoa_r+0x874>
 8004d18:	3201      	adds	r2, #1
 8004d1a:	701a      	strb	r2, [r3, #0]
 8004d1c:	4631      	mov	r1, r6
 8004d1e:	4648      	mov	r0, r9
 8004d20:	f001 fad2 	bl	80062c8 <_Bfree>
 8004d24:	b155      	cbz	r5, 8004d3c <_dtoa_r+0x8ac>
 8004d26:	9902      	ldr	r1, [sp, #8]
 8004d28:	b121      	cbz	r1, 8004d34 <_dtoa_r+0x8a4>
 8004d2a:	42a9      	cmp	r1, r5
 8004d2c:	d002      	beq.n	8004d34 <_dtoa_r+0x8a4>
 8004d2e:	4648      	mov	r0, r9
 8004d30:	f001 faca 	bl	80062c8 <_Bfree>
 8004d34:	4629      	mov	r1, r5
 8004d36:	4648      	mov	r0, r9
 8004d38:	f001 fac6 	bl	80062c8 <_Bfree>
 8004d3c:	4651      	mov	r1, sl
 8004d3e:	4648      	mov	r0, r9
 8004d40:	f001 fac2 	bl	80062c8 <_Bfree>
 8004d44:	2200      	movs	r2, #0
 8004d46:	9b06      	ldr	r3, [sp, #24]
 8004d48:	7022      	strb	r2, [r4, #0]
 8004d4a:	9a05      	ldr	r2, [sp, #20]
 8004d4c:	3301      	adds	r3, #1
 8004d4e:	6013      	str	r3, [r2, #0]
 8004d50:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004d52:	2b00      	cmp	r3, #0
 8004d54:	f43f abdb 	beq.w	800450e <_dtoa_r+0x7e>
 8004d58:	4658      	mov	r0, fp
 8004d5a:	601c      	str	r4, [r3, #0]
 8004d5c:	b01b      	add	sp, #108	; 0x6c
 8004d5e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d62:	201c      	movs	r0, #28
 8004d64:	e6eb      	b.n	8004b3e <_dtoa_r+0x6ae>
 8004d66:	4601      	mov	r1, r0
 8004d68:	4648      	mov	r0, r9
 8004d6a:	f001 fbf7 	bl	800655c <__pow5mult>
 8004d6e:	9b02      	ldr	r3, [sp, #8]
 8004d70:	2b01      	cmp	r3, #1
 8004d72:	4606      	mov	r6, r0
 8004d74:	f340 80d4 	ble.w	8004f20 <_dtoa_r+0xa90>
 8004d78:	2300      	movs	r3, #0
 8004d7a:	930c      	str	r3, [sp, #48]	; 0x30
 8004d7c:	6933      	ldr	r3, [r6, #16]
 8004d7e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004d82:	6918      	ldr	r0, [r3, #16]
 8004d84:	f001 faea 	bl	800635c <__hi0bits>
 8004d88:	f1c0 0020 	rsb	r0, r0, #32
 8004d8c:	e6cb      	b.n	8004b26 <_dtoa_r+0x696>
 8004d8e:	900d      	str	r0, [sp, #52]	; 0x34
 8004d90:	e42a      	b.n	80045e8 <_dtoa_r+0x158>
 8004d92:	2501      	movs	r5, #1
 8004d94:	e440      	b.n	8004618 <_dtoa_r+0x188>
 8004d96:	f1c3 0820 	rsb	r8, r3, #32
 8004d9a:	9b00      	ldr	r3, [sp, #0]
 8004d9c:	fa03 f008 	lsl.w	r0, r3, r8
 8004da0:	f7ff bbd8 	b.w	8004554 <_dtoa_r+0xc4>
 8004da4:	2300      	movs	r3, #0
 8004da6:	930a      	str	r3, [sp, #40]	; 0x28
 8004da8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004dac:	4413      	add	r3, r2
 8004dae:	930e      	str	r3, [sp, #56]	; 0x38
 8004db0:	3301      	adds	r3, #1
 8004db2:	2b01      	cmp	r3, #1
 8004db4:	461e      	mov	r6, r3
 8004db6:	9309      	str	r3, [sp, #36]	; 0x24
 8004db8:	bfb8      	it	lt
 8004dba:	2601      	movlt	r6, #1
 8004dbc:	2100      	movs	r1, #0
 8004dbe:	2e17      	cmp	r6, #23
 8004dc0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004dc4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004dc6:	f77f ac89 	ble.w	80046dc <_dtoa_r+0x24c>
 8004dca:	2201      	movs	r2, #1
 8004dcc:	2304      	movs	r3, #4
 8004dce:	005b      	lsls	r3, r3, #1
 8004dd0:	f103 0014 	add.w	r0, r3, #20
 8004dd4:	42b0      	cmp	r0, r6
 8004dd6:	4611      	mov	r1, r2
 8004dd8:	f102 0201 	add.w	r2, r2, #1
 8004ddc:	d9f7      	bls.n	8004dce <_dtoa_r+0x93e>
 8004dde:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004de2:	e47b      	b.n	80046dc <_dtoa_r+0x24c>
 8004de4:	2300      	movs	r3, #0
 8004de6:	930a      	str	r3, [sp, #40]	; 0x28
 8004de8:	9e07      	ldr	r6, [sp, #28]
 8004dea:	2e00      	cmp	r6, #0
 8004dec:	f340 80e2 	ble.w	8004fb4 <_dtoa_r+0xb24>
 8004df0:	960e      	str	r6, [sp, #56]	; 0x38
 8004df2:	9609      	str	r6, [sp, #36]	; 0x24
 8004df4:	e7e2      	b.n	8004dbc <_dtoa_r+0x92c>
 8004df6:	2301      	movs	r3, #1
 8004df8:	930a      	str	r3, [sp, #40]	; 0x28
 8004dfa:	e7f5      	b.n	8004de8 <_dtoa_r+0x958>
 8004dfc:	9b00      	ldr	r3, [sp, #0]
 8004dfe:	2b00      	cmp	r3, #0
 8004e00:	f47f ae90 	bne.w	8004b24 <_dtoa_r+0x694>
 8004e04:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004e08:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004e0c:	2b00      	cmp	r3, #0
 8004e0e:	f040 8192 	bne.w	8005136 <_dtoa_r+0xca6>
 8004e12:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004e16:	0d1b      	lsrs	r3, r3, #20
 8004e18:	051b      	lsls	r3, r3, #20
 8004e1a:	b12b      	cbz	r3, 8004e28 <_dtoa_r+0x998>
 8004e1c:	9b08      	ldr	r3, [sp, #32]
 8004e1e:	3301      	adds	r3, #1
 8004e20:	9308      	str	r3, [sp, #32]
 8004e22:	f108 0801 	add.w	r8, r8, #1
 8004e26:	2301      	movs	r3, #1
 8004e28:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004e2a:	930c      	str	r3, [sp, #48]	; 0x30
 8004e2c:	2a00      	cmp	r2, #0
 8004e2e:	f43f ae79 	beq.w	8004b24 <_dtoa_r+0x694>
 8004e32:	e7a3      	b.n	8004d7c <_dtoa_r+0x8ec>
 8004e34:	463a      	mov	r2, r7
 8004e36:	4629      	mov	r1, r5
 8004e38:	4648      	mov	r0, r9
 8004e3a:	f001 fb8f 	bl	800655c <__pow5mult>
 8004e3e:	4652      	mov	r2, sl
 8004e40:	4601      	mov	r1, r0
 8004e42:	4605      	mov	r5, r0
 8004e44:	4648      	mov	r0, r9
 8004e46:	f001 fae3 	bl	8006410 <__multiply>
 8004e4a:	4651      	mov	r1, sl
 8004e4c:	4607      	mov	r7, r0
 8004e4e:	4648      	mov	r0, r9
 8004e50:	f001 fa3a 	bl	80062c8 <_Bfree>
 8004e54:	46ba      	mov	sl, r7
 8004e56:	2e00      	cmp	r6, #0
 8004e58:	f43f ae57 	beq.w	8004b0a <_dtoa_r+0x67a>
 8004e5c:	e64f      	b.n	8004afe <_dtoa_r+0x66e>
 8004e5e:	4629      	mov	r1, r5
 8004e60:	4622      	mov	r2, r4
 8004e62:	4648      	mov	r0, r9
 8004e64:	f001 fbca 	bl	80065fc <__lshift>
 8004e68:	4605      	mov	r5, r0
 8004e6a:	e68d      	b.n	8004b88 <_dtoa_r+0x6f8>
 8004e6c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004e6e:	2a00      	cmp	r2, #0
 8004e70:	f000 815d 	beq.w	800512e <_dtoa_r+0xc9e>
 8004e74:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004e78:	9a08      	ldr	r2, [sp, #32]
 8004e7a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004e7c:	4614      	mov	r4, r2
 8004e7e:	441a      	add	r2, r3
 8004e80:	4498      	add	r8, r3
 8004e82:	9208      	str	r2, [sp, #32]
 8004e84:	e5f7      	b.n	8004a76 <_dtoa_r+0x5e6>
 8004e86:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e88:	2b00      	cmp	r3, #0
 8004e8a:	f73f ad3e 	bgt.w	800490a <_dtoa_r+0x47a>
 8004e8e:	f040 80bc 	bne.w	800500a <_dtoa_r+0xb7a>
 8004e92:	ec51 0b17 	vmov	r0, r1, d7
 8004e96:	2200      	movs	r2, #0
 8004e98:	4bb2      	ldr	r3, [pc, #712]	; (8005164 <_dtoa_r+0xcd4>)
 8004e9a:	f7fb fe4d 	bl	8000b38 <__aeabi_dmul>
 8004e9e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ea2:	f7fc f8cf 	bl	8001044 <__aeabi_dcmpge>
 8004ea6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004ea8:	4635      	mov	r5, r6
 8004eaa:	2800      	cmp	r0, #0
 8004eac:	d176      	bne.n	8004f9c <_dtoa_r+0xb0c>
 8004eae:	9a06      	ldr	r2, [sp, #24]
 8004eb0:	2331      	movs	r3, #49	; 0x31
 8004eb2:	3201      	adds	r2, #1
 8004eb4:	9206      	str	r2, [sp, #24]
 8004eb6:	f88b 3000 	strb.w	r3, [fp]
 8004eba:	f10b 0401 	add.w	r4, fp, #1
 8004ebe:	4631      	mov	r1, r6
 8004ec0:	4648      	mov	r0, r9
 8004ec2:	f001 fa01 	bl	80062c8 <_Bfree>
 8004ec6:	2d00      	cmp	r5, #0
 8004ec8:	f47f af34 	bne.w	8004d34 <_dtoa_r+0x8a4>
 8004ecc:	e736      	b.n	8004d3c <_dtoa_r+0x8ac>
 8004ece:	f000 8142 	beq.w	8005156 <_dtoa_r+0xcc6>
 8004ed2:	9b06      	ldr	r3, [sp, #24]
 8004ed4:	425c      	negs	r4, r3
 8004ed6:	4ba4      	ldr	r3, [pc, #656]	; (8005168 <_dtoa_r+0xcd8>)
 8004ed8:	f004 020f 	and.w	r2, r4, #15
 8004edc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ee0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004ee4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004ee8:	f7fb fe26 	bl	8000b38 <__aeabi_dmul>
 8004eec:	1124      	asrs	r4, r4, #4
 8004eee:	e9cd 0100 	strd	r0, r1, [sp]
 8004ef2:	f000 81c6 	beq.w	8005282 <_dtoa_r+0xdf2>
 8004ef6:	4d9d      	ldr	r5, [pc, #628]	; (800516c <_dtoa_r+0xcdc>)
 8004ef8:	2300      	movs	r3, #0
 8004efa:	2602      	movs	r6, #2
 8004efc:	07e7      	lsls	r7, r4, #31
 8004efe:	d505      	bpl.n	8004f0c <_dtoa_r+0xa7c>
 8004f00:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004f04:	f7fb fe18 	bl	8000b38 <__aeabi_dmul>
 8004f08:	3601      	adds	r6, #1
 8004f0a:	2301      	movs	r3, #1
 8004f0c:	1064      	asrs	r4, r4, #1
 8004f0e:	f105 0508 	add.w	r5, r5, #8
 8004f12:	d1f3      	bne.n	8004efc <_dtoa_r+0xa6c>
 8004f14:	2b00      	cmp	r3, #0
 8004f16:	f43f ac27 	beq.w	8004768 <_dtoa_r+0x2d8>
 8004f1a:	e9cd 0100 	strd	r0, r1, [sp]
 8004f1e:	e423      	b.n	8004768 <_dtoa_r+0x2d8>
 8004f20:	9b00      	ldr	r3, [sp, #0]
 8004f22:	2b00      	cmp	r3, #0
 8004f24:	f43f af6e 	beq.w	8004e04 <_dtoa_r+0x974>
 8004f28:	e726      	b.n	8004d78 <_dtoa_r+0x8e8>
 8004f2a:	6869      	ldr	r1, [r5, #4]
 8004f2c:	4648      	mov	r0, r9
 8004f2e:	f001 f9a5 	bl	800627c <_Balloc>
 8004f32:	692b      	ldr	r3, [r5, #16]
 8004f34:	3302      	adds	r3, #2
 8004f36:	009a      	lsls	r2, r3, #2
 8004f38:	4604      	mov	r4, r0
 8004f3a:	f105 010c 	add.w	r1, r5, #12
 8004f3e:	300c      	adds	r0, #12
 8004f40:	f7fb fade 	bl	8000500 <memcpy>
 8004f44:	4621      	mov	r1, r4
 8004f46:	2201      	movs	r2, #1
 8004f48:	4648      	mov	r0, r9
 8004f4a:	f001 fb57 	bl	80065fc <__lshift>
 8004f4e:	4680      	mov	r8, r0
 8004f50:	e61f      	b.n	8004b92 <_dtoa_r+0x702>
 8004f52:	2400      	movs	r4, #0
 8004f54:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004f58:	4621      	mov	r1, r4
 8004f5a:	4648      	mov	r0, r9
 8004f5c:	f001 f98e 	bl	800627c <_Balloc>
 8004f60:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004f64:	930e      	str	r3, [sp, #56]	; 0x38
 8004f66:	9309      	str	r3, [sp, #36]	; 0x24
 8004f68:	2301      	movs	r3, #1
 8004f6a:	4683      	mov	fp, r0
 8004f6c:	9407      	str	r4, [sp, #28]
 8004f6e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004f72:	930a      	str	r3, [sp, #40]	; 0x28
 8004f74:	e4b6      	b.n	80048e4 <_dtoa_r+0x454>
 8004f76:	f001 f9b1 	bl	80062dc <__multadd>
 8004f7a:	4627      	mov	r7, r4
 8004f7c:	4605      	mov	r5, r0
 8004f7e:	4680      	mov	r8, r0
 8004f80:	e614      	b.n	8004bac <_dtoa_r+0x71c>
 8004f82:	4648      	mov	r0, r9
 8004f84:	f001 f9a0 	bl	80062c8 <_Bfree>
 8004f88:	2301      	movs	r3, #1
 8004f8a:	e639      	b.n	8004c00 <_dtoa_r+0x770>
 8004f8c:	9b02      	ldr	r3, [sp, #8]
 8004f8e:	2b02      	cmp	r3, #2
 8004f90:	f77f adf3 	ble.w	8004b7a <_dtoa_r+0x6ea>
 8004f94:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f96:	2b00      	cmp	r3, #0
 8004f98:	f000 80cf 	beq.w	800513a <_dtoa_r+0xcaa>
 8004f9c:	9b07      	ldr	r3, [sp, #28]
 8004f9e:	43db      	mvns	r3, r3
 8004fa0:	9306      	str	r3, [sp, #24]
 8004fa2:	465c      	mov	r4, fp
 8004fa4:	e78b      	b.n	8004ebe <_dtoa_r+0xa2e>
 8004fa6:	9a06      	ldr	r2, [sp, #24]
 8004fa8:	2331      	movs	r3, #49	; 0x31
 8004faa:	3201      	adds	r2, #1
 8004fac:	9206      	str	r2, [sp, #24]
 8004fae:	f88b 3000 	strb.w	r3, [fp]
 8004fb2:	e6b3      	b.n	8004d1c <_dtoa_r+0x88c>
 8004fb4:	2401      	movs	r4, #1
 8004fb6:	9409      	str	r4, [sp, #36]	; 0x24
 8004fb8:	9407      	str	r4, [sp, #28]
 8004fba:	f7ff bb8b 	b.w	80046d4 <_dtoa_r+0x244>
 8004fbe:	4630      	mov	r0, r6
 8004fc0:	f7fb fd50 	bl	8000a64 <__aeabi_i2d>
 8004fc4:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004fc8:	f7fb fdb6 	bl	8000b38 <__aeabi_dmul>
 8004fcc:	2200      	movs	r2, #0
 8004fce:	4b68      	ldr	r3, [pc, #416]	; (8005170 <_dtoa_r+0xce0>)
 8004fd0:	f7fb fbfc 	bl	80007cc <__adddf3>
 8004fd4:	4606      	mov	r6, r0
 8004fd6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004fda:	2200      	movs	r2, #0
 8004fdc:	4b61      	ldr	r3, [pc, #388]	; (8005164 <_dtoa_r+0xcd4>)
 8004fde:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004fe2:	f7fb fbf1 	bl	80007c8 <__aeabi_dsub>
 8004fe6:	4632      	mov	r2, r6
 8004fe8:	463b      	mov	r3, r7
 8004fea:	4604      	mov	r4, r0
 8004fec:	460d      	mov	r5, r1
 8004fee:	f7fc f833 	bl	8001058 <__aeabi_dcmpgt>
 8004ff2:	2800      	cmp	r0, #0
 8004ff4:	d14f      	bne.n	8005096 <_dtoa_r+0xc06>
 8004ff6:	4632      	mov	r2, r6
 8004ff8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004ffc:	4620      	mov	r0, r4
 8004ffe:	4629      	mov	r1, r5
 8005000:	f7fc f80c 	bl	800101c <__aeabi_dcmplt>
 8005004:	2800      	cmp	r0, #0
 8005006:	f43f ac69 	beq.w	80048dc <_dtoa_r+0x44c>
 800500a:	2600      	movs	r6, #0
 800500c:	4635      	mov	r5, r6
 800500e:	e7c5      	b.n	8004f9c <_dtoa_r+0xb0c>
 8005010:	2301      	movs	r3, #1
 8005012:	930a      	str	r3, [sp, #40]	; 0x28
 8005014:	e6c8      	b.n	8004da8 <_dtoa_r+0x918>
 8005016:	4651      	mov	r1, sl
 8005018:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800501a:	4648      	mov	r0, r9
 800501c:	f001 fa9e 	bl	800655c <__pow5mult>
 8005020:	4682      	mov	sl, r0
 8005022:	e572      	b.n	8004b0a <_dtoa_r+0x67a>
 8005024:	f8dd a000 	ldr.w	sl, [sp]
 8005028:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800502c:	e686      	b.n	8004d3c <_dtoa_r+0x8ac>
 800502e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005030:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005032:	1afb      	subs	r3, r7, r3
 8005034:	441a      	add	r2, r3
 8005036:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800503a:	2700      	movs	r7, #0
 800503c:	e512      	b.n	8004a64 <_dtoa_r+0x5d4>
 800503e:	2b00      	cmp	r3, #0
 8005040:	9402      	str	r4, [sp, #8]
 8005042:	465e      	mov	r6, fp
 8005044:	f107 0401 	add.w	r4, r7, #1
 8005048:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800504c:	f300 80ba 	bgt.w	80051c4 <_dtoa_r+0xd34>
 8005050:	9b00      	ldr	r3, [sp, #0]
 8005052:	9502      	str	r5, [sp, #8]
 8005054:	703b      	strb	r3, [r7, #0]
 8005056:	4645      	mov	r5, r8
 8005058:	e660      	b.n	8004d1c <_dtoa_r+0x88c>
 800505a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800505e:	2602      	movs	r6, #2
 8005060:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005064:	f7ff bb67 	b.w	8004736 <_dtoa_r+0x2a6>
 8005068:	9b00      	ldr	r3, [sp, #0]
 800506a:	2b39      	cmp	r3, #57	; 0x39
 800506c:	465e      	mov	r6, fp
 800506e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005072:	f000 80b9 	beq.w	80051e8 <_dtoa_r+0xd58>
 8005076:	9b00      	ldr	r3, [sp, #0]
 8005078:	9502      	str	r5, [sp, #8]
 800507a:	3301      	adds	r3, #1
 800507c:	703b      	strb	r3, [r7, #0]
 800507e:	4645      	mov	r5, r8
 8005080:	e64c      	b.n	8004d1c <_dtoa_r+0x88c>
 8005082:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8005086:	1a9c      	subs	r4, r3, r2
 8005088:	e4f5      	b.n	8004a76 <_dtoa_r+0x5e6>
 800508a:	465e      	mov	r6, fp
 800508c:	9502      	str	r5, [sp, #8]
 800508e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005092:	4645      	mov	r5, r8
 8005094:	e61a      	b.n	8004ccc <_dtoa_r+0x83c>
 8005096:	2600      	movs	r6, #0
 8005098:	4635      	mov	r5, r6
 800509a:	e708      	b.n	8004eae <_dtoa_r+0xa1e>
 800509c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80050a0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80050a4:	f7fb fd48 	bl	8000b38 <__aeabi_dmul>
 80050a8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80050aa:	f88b 5000 	strb.w	r5, [fp]
 80050ae:	2b01      	cmp	r3, #1
 80050b0:	e9cd 0100 	strd	r0, r1, [sp]
 80050b4:	d020      	beq.n	80050f8 <_dtoa_r+0xc68>
 80050b6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80050b8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80050bc:	445b      	add	r3, fp
 80050be:	4698      	mov	r8, r3
 80050c0:	2200      	movs	r2, #0
 80050c2:	4b2c      	ldr	r3, [pc, #176]	; (8005174 <_dtoa_r+0xce4>)
 80050c4:	4630      	mov	r0, r6
 80050c6:	4639      	mov	r1, r7
 80050c8:	f7fb fd36 	bl	8000b38 <__aeabi_dmul>
 80050cc:	460f      	mov	r7, r1
 80050ce:	4606      	mov	r6, r0
 80050d0:	f7fb ffe2 	bl	8001098 <__aeabi_d2iz>
 80050d4:	4605      	mov	r5, r0
 80050d6:	f7fb fcc5 	bl	8000a64 <__aeabi_i2d>
 80050da:	3530      	adds	r5, #48	; 0x30
 80050dc:	4602      	mov	r2, r0
 80050de:	460b      	mov	r3, r1
 80050e0:	4630      	mov	r0, r6
 80050e2:	4639      	mov	r1, r7
 80050e4:	f7fb fb70 	bl	80007c8 <__aeabi_dsub>
 80050e8:	f804 5b01 	strb.w	r5, [r4], #1
 80050ec:	4544      	cmp	r4, r8
 80050ee:	4606      	mov	r6, r0
 80050f0:	460f      	mov	r7, r1
 80050f2:	d1e5      	bne.n	80050c0 <_dtoa_r+0xc30>
 80050f4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80050f8:	4b1f      	ldr	r3, [pc, #124]	; (8005178 <_dtoa_r+0xce8>)
 80050fa:	2200      	movs	r2, #0
 80050fc:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005100:	f7fb fb64 	bl	80007cc <__adddf3>
 8005104:	4632      	mov	r2, r6
 8005106:	463b      	mov	r3, r7
 8005108:	f7fb ff88 	bl	800101c <__aeabi_dcmplt>
 800510c:	2800      	cmp	r0, #0
 800510e:	d070      	beq.n	80051f2 <_dtoa_r+0xd62>
 8005110:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005112:	9306      	str	r3, [sp, #24]
 8005114:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005118:	e48f      	b.n	8004a3a <_dtoa_r+0x5aa>
 800511a:	2330      	movs	r3, #48	; 0x30
 800511c:	f88b 3000 	strb.w	r3, [fp]
 8005120:	9b06      	ldr	r3, [sp, #24]
 8005122:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005126:	3301      	adds	r3, #1
 8005128:	9306      	str	r3, [sp, #24]
 800512a:	465b      	mov	r3, fp
 800512c:	e489      	b.n	8004a42 <_dtoa_r+0x5b2>
 800512e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005130:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005134:	e6a0      	b.n	8004e78 <_dtoa_r+0x9e8>
 8005136:	2300      	movs	r3, #0
 8005138:	e676      	b.n	8004e28 <_dtoa_r+0x998>
 800513a:	4631      	mov	r1, r6
 800513c:	2205      	movs	r2, #5
 800513e:	4648      	mov	r0, r9
 8005140:	f001 f8cc 	bl	80062dc <__multadd>
 8005144:	4601      	mov	r1, r0
 8005146:	4606      	mov	r6, r0
 8005148:	4650      	mov	r0, sl
 800514a:	f001 faad 	bl	80066a8 <__mcmp>
 800514e:	2800      	cmp	r0, #0
 8005150:	f73f aead 	bgt.w	8004eae <_dtoa_r+0xa1e>
 8005154:	e722      	b.n	8004f9c <_dtoa_r+0xb0c>
 8005156:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800515a:	2602      	movs	r6, #2
 800515c:	ed8d 7b00 	vstr	d7, [sp]
 8005160:	f7ff bb02 	b.w	8004768 <_dtoa_r+0x2d8>
 8005164:	40140000 	.word	0x40140000
 8005168:	08007b58 	.word	0x08007b58
 800516c:	08007b30 	.word	0x08007b30
 8005170:	401c0000 	.word	0x401c0000
 8005174:	40240000 	.word	0x40240000
 8005178:	3fe00000 	.word	0x3fe00000
 800517c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800517e:	2b00      	cmp	r3, #0
 8005180:	f43f af1d 	beq.w	8004fbe <_dtoa_r+0xb2e>
 8005184:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8005186:	2c00      	cmp	r4, #0
 8005188:	f77f aba8 	ble.w	80048dc <_dtoa_r+0x44c>
 800518c:	2200      	movs	r2, #0
 800518e:	4b45      	ldr	r3, [pc, #276]	; (80052a4 <_dtoa_r+0xe14>)
 8005190:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005194:	f7fb fcd0 	bl	8000b38 <__aeabi_dmul>
 8005198:	e9cd 0100 	strd	r0, r1, [sp]
 800519c:	1c70      	adds	r0, r6, #1
 800519e:	f7fb fc61 	bl	8000a64 <__aeabi_i2d>
 80051a2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80051a6:	f7fb fcc7 	bl	8000b38 <__aeabi_dmul>
 80051aa:	4b3f      	ldr	r3, [pc, #252]	; (80052a8 <_dtoa_r+0xe18>)
 80051ac:	2200      	movs	r2, #0
 80051ae:	f7fb fb0d 	bl	80007cc <__adddf3>
 80051b2:	9b06      	ldr	r3, [sp, #24]
 80051b4:	9412      	str	r4, [sp, #72]	; 0x48
 80051b6:	3b01      	subs	r3, #1
 80051b8:	4606      	mov	r6, r0
 80051ba:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80051be:	9316      	str	r3, [sp, #88]	; 0x58
 80051c0:	f7ff baf3 	b.w	80047aa <_dtoa_r+0x31a>
 80051c4:	4651      	mov	r1, sl
 80051c6:	2201      	movs	r2, #1
 80051c8:	4648      	mov	r0, r9
 80051ca:	f001 fa17 	bl	80065fc <__lshift>
 80051ce:	4631      	mov	r1, r6
 80051d0:	4682      	mov	sl, r0
 80051d2:	f001 fa69 	bl	80066a8 <__mcmp>
 80051d6:	2800      	cmp	r0, #0
 80051d8:	dd3b      	ble.n	8005252 <_dtoa_r+0xdc2>
 80051da:	9b00      	ldr	r3, [sp, #0]
 80051dc:	2b39      	cmp	r3, #57	; 0x39
 80051de:	d003      	beq.n	80051e8 <_dtoa_r+0xd58>
 80051e0:	9b02      	ldr	r3, [sp, #8]
 80051e2:	3331      	adds	r3, #49	; 0x31
 80051e4:	9300      	str	r3, [sp, #0]
 80051e6:	e733      	b.n	8005050 <_dtoa_r+0xbc0>
 80051e8:	2239      	movs	r2, #57	; 0x39
 80051ea:	9502      	str	r5, [sp, #8]
 80051ec:	703a      	strb	r2, [r7, #0]
 80051ee:	4645      	mov	r5, r8
 80051f0:	e58e      	b.n	8004d10 <_dtoa_r+0x880>
 80051f2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80051f6:	2000      	movs	r0, #0
 80051f8:	492c      	ldr	r1, [pc, #176]	; (80052ac <_dtoa_r+0xe1c>)
 80051fa:	f7fb fae5 	bl	80007c8 <__aeabi_dsub>
 80051fe:	4632      	mov	r2, r6
 8005200:	463b      	mov	r3, r7
 8005202:	f7fb ff29 	bl	8001058 <__aeabi_dcmpgt>
 8005206:	b910      	cbnz	r0, 800520e <_dtoa_r+0xd7e>
 8005208:	f7ff bb68 	b.w	80048dc <_dtoa_r+0x44c>
 800520c:	4614      	mov	r4, r2
 800520e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8005212:	2b30      	cmp	r3, #48	; 0x30
 8005214:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005218:	d0f8      	beq.n	800520c <_dtoa_r+0xd7c>
 800521a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800521c:	9306      	str	r3, [sp, #24]
 800521e:	e58d      	b.n	8004d3c <_dtoa_r+0x8ac>
 8005220:	46d9      	mov	r9, fp
 8005222:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005226:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800522a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800522c:	9306      	str	r3, [sp, #24]
 800522e:	e404      	b.n	8004a3a <_dtoa_r+0x5aa>
 8005230:	9b00      	ldr	r3, [sp, #0]
 8005232:	2b39      	cmp	r3, #57	; 0x39
 8005234:	4621      	mov	r1, r4
 8005236:	4632      	mov	r2, r6
 8005238:	f107 0401 	add.w	r4, r7, #1
 800523c:	465e      	mov	r6, fp
 800523e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005242:	d0d1      	beq.n	80051e8 <_dtoa_r+0xd58>
 8005244:	2a00      	cmp	r2, #0
 8005246:	f77f af03 	ble.w	8005050 <_dtoa_r+0xbc0>
 800524a:	460b      	mov	r3, r1
 800524c:	3331      	adds	r3, #49	; 0x31
 800524e:	9300      	str	r3, [sp, #0]
 8005250:	e6fe      	b.n	8005050 <_dtoa_r+0xbc0>
 8005252:	f47f aefd 	bne.w	8005050 <_dtoa_r+0xbc0>
 8005256:	9b00      	ldr	r3, [sp, #0]
 8005258:	07da      	lsls	r2, r3, #31
 800525a:	f57f aef9 	bpl.w	8005050 <_dtoa_r+0xbc0>
 800525e:	e7bc      	b.n	80051da <_dtoa_r+0xd4a>
 8005260:	4629      	mov	r1, r5
 8005262:	2300      	movs	r3, #0
 8005264:	220a      	movs	r2, #10
 8005266:	4648      	mov	r0, r9
 8005268:	f001 f838 	bl	80062dc <__multadd>
 800526c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800526e:	2b00      	cmp	r3, #0
 8005270:	4605      	mov	r5, r0
 8005272:	dd09      	ble.n	8005288 <_dtoa_r+0xdf8>
 8005274:	9309      	str	r3, [sp, #36]	; 0x24
 8005276:	e484      	b.n	8004b82 <_dtoa_r+0x6f2>
 8005278:	9b02      	ldr	r3, [sp, #8]
 800527a:	2b02      	cmp	r3, #2
 800527c:	dc0e      	bgt.n	800529c <_dtoa_r+0xe0c>
 800527e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005280:	e507      	b.n	8004c92 <_dtoa_r+0x802>
 8005282:	2602      	movs	r6, #2
 8005284:	f7ff ba70 	b.w	8004768 <_dtoa_r+0x2d8>
 8005288:	9b02      	ldr	r3, [sp, #8]
 800528a:	2b02      	cmp	r3, #2
 800528c:	dc06      	bgt.n	800529c <_dtoa_r+0xe0c>
 800528e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005290:	e7f0      	b.n	8005274 <_dtoa_r+0xde4>
 8005292:	f43f ac59 	beq.w	8004b48 <_dtoa_r+0x6b8>
 8005296:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800529a:	e450      	b.n	8004b3e <_dtoa_r+0x6ae>
 800529c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800529e:	9309      	str	r3, [sp, #36]	; 0x24
 80052a0:	e678      	b.n	8004f94 <_dtoa_r+0xb04>
 80052a2:	bf00      	nop
 80052a4:	40240000 	.word	0x40240000
 80052a8:	401c0000 	.word	0x401c0000
 80052ac:	3fe00000 	.word	0x3fe00000

080052b0 <__sflush_r>:
 80052b0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80052b4:	b29a      	uxth	r2, r3
 80052b6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80052ba:	460c      	mov	r4, r1
 80052bc:	0711      	lsls	r1, r2, #28
 80052be:	4680      	mov	r8, r0
 80052c0:	d444      	bmi.n	800534c <__sflush_r+0x9c>
 80052c2:	6862      	ldr	r2, [r4, #4]
 80052c4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80052c8:	2a00      	cmp	r2, #0
 80052ca:	81a3      	strh	r3, [r4, #12]
 80052cc:	dd59      	ble.n	8005382 <__sflush_r+0xd2>
 80052ce:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80052d0:	2d00      	cmp	r5, #0
 80052d2:	d053      	beq.n	800537c <__sflush_r+0xcc>
 80052d4:	2200      	movs	r2, #0
 80052d6:	b29b      	uxth	r3, r3
 80052d8:	f8d8 6000 	ldr.w	r6, [r8]
 80052dc:	69e1      	ldr	r1, [r4, #28]
 80052de:	f8c8 2000 	str.w	r2, [r8]
 80052e2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80052e6:	f040 8083 	bne.w	80053f0 <__sflush_r+0x140>
 80052ea:	2301      	movs	r3, #1
 80052ec:	4640      	mov	r0, r8
 80052ee:	47a8      	blx	r5
 80052f0:	1c42      	adds	r2, r0, #1
 80052f2:	d04a      	beq.n	800538a <__sflush_r+0xda>
 80052f4:	89a3      	ldrh	r3, [r4, #12]
 80052f6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80052f8:	69e1      	ldr	r1, [r4, #28]
 80052fa:	075b      	lsls	r3, r3, #29
 80052fc:	d505      	bpl.n	800530a <__sflush_r+0x5a>
 80052fe:	6862      	ldr	r2, [r4, #4]
 8005300:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8005302:	1a80      	subs	r0, r0, r2
 8005304:	b10b      	cbz	r3, 800530a <__sflush_r+0x5a>
 8005306:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005308:	1ac0      	subs	r0, r0, r3
 800530a:	4602      	mov	r2, r0
 800530c:	2300      	movs	r3, #0
 800530e:	4640      	mov	r0, r8
 8005310:	47a8      	blx	r5
 8005312:	1c47      	adds	r7, r0, #1
 8005314:	d045      	beq.n	80053a2 <__sflush_r+0xf2>
 8005316:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800531a:	6922      	ldr	r2, [r4, #16]
 800531c:	6022      	str	r2, [r4, #0]
 800531e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005322:	2200      	movs	r2, #0
 8005324:	81a3      	strh	r3, [r4, #12]
 8005326:	04db      	lsls	r3, r3, #19
 8005328:	6062      	str	r2, [r4, #4]
 800532a:	d500      	bpl.n	800532e <__sflush_r+0x7e>
 800532c:	6520      	str	r0, [r4, #80]	; 0x50
 800532e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005330:	f8c8 6000 	str.w	r6, [r8]
 8005334:	b311      	cbz	r1, 800537c <__sflush_r+0xcc>
 8005336:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800533a:	4299      	cmp	r1, r3
 800533c:	d002      	beq.n	8005344 <__sflush_r+0x94>
 800533e:	4640      	mov	r0, r8
 8005340:	f000 f95e 	bl	8005600 <_free_r>
 8005344:	2000      	movs	r0, #0
 8005346:	6320      	str	r0, [r4, #48]	; 0x30
 8005348:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800534c:	6926      	ldr	r6, [r4, #16]
 800534e:	b1ae      	cbz	r6, 800537c <__sflush_r+0xcc>
 8005350:	6825      	ldr	r5, [r4, #0]
 8005352:	6026      	str	r6, [r4, #0]
 8005354:	0792      	lsls	r2, r2, #30
 8005356:	bf0c      	ite	eq
 8005358:	6963      	ldreq	r3, [r4, #20]
 800535a:	2300      	movne	r3, #0
 800535c:	1bad      	subs	r5, r5, r6
 800535e:	60a3      	str	r3, [r4, #8]
 8005360:	e00a      	b.n	8005378 <__sflush_r+0xc8>
 8005362:	462b      	mov	r3, r5
 8005364:	4632      	mov	r2, r6
 8005366:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005368:	69e1      	ldr	r1, [r4, #28]
 800536a:	4640      	mov	r0, r8
 800536c:	47b8      	blx	r7
 800536e:	2800      	cmp	r0, #0
 8005370:	eba5 0500 	sub.w	r5, r5, r0
 8005374:	4406      	add	r6, r0
 8005376:	dd2b      	ble.n	80053d0 <__sflush_r+0x120>
 8005378:	2d00      	cmp	r5, #0
 800537a:	dcf2      	bgt.n	8005362 <__sflush_r+0xb2>
 800537c:	2000      	movs	r0, #0
 800537e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005382:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005384:	2a00      	cmp	r2, #0
 8005386:	dca2      	bgt.n	80052ce <__sflush_r+0x1e>
 8005388:	e7f8      	b.n	800537c <__sflush_r+0xcc>
 800538a:	f8d8 3000 	ldr.w	r3, [r8]
 800538e:	2b00      	cmp	r3, #0
 8005390:	d0b0      	beq.n	80052f4 <__sflush_r+0x44>
 8005392:	2b1d      	cmp	r3, #29
 8005394:	d001      	beq.n	800539a <__sflush_r+0xea>
 8005396:	2b16      	cmp	r3, #22
 8005398:	d12c      	bne.n	80053f4 <__sflush_r+0x144>
 800539a:	f8c8 6000 	str.w	r6, [r8]
 800539e:	2000      	movs	r0, #0
 80053a0:	e7ed      	b.n	800537e <__sflush_r+0xce>
 80053a2:	f8d8 1000 	ldr.w	r1, [r8]
 80053a6:	291d      	cmp	r1, #29
 80053a8:	d81a      	bhi.n	80053e0 <__sflush_r+0x130>
 80053aa:	4b15      	ldr	r3, [pc, #84]	; (8005400 <__sflush_r+0x150>)
 80053ac:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80053b0:	40cb      	lsrs	r3, r1
 80053b2:	43db      	mvns	r3, r3
 80053b4:	f013 0301 	ands.w	r3, r3, #1
 80053b8:	d114      	bne.n	80053e4 <__sflush_r+0x134>
 80053ba:	6925      	ldr	r5, [r4, #16]
 80053bc:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80053c0:	e9c4 5300 	strd	r5, r3, [r4]
 80053c4:	04d5      	lsls	r5, r2, #19
 80053c6:	81a2      	strh	r2, [r4, #12]
 80053c8:	d5b1      	bpl.n	800532e <__sflush_r+0x7e>
 80053ca:	2900      	cmp	r1, #0
 80053cc:	d1af      	bne.n	800532e <__sflush_r+0x7e>
 80053ce:	e7ad      	b.n	800532c <__sflush_r+0x7c>
 80053d0:	89a3      	ldrh	r3, [r4, #12]
 80053d2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80053d6:	81a3      	strh	r3, [r4, #12]
 80053d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80053dc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80053e0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80053e4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80053e8:	81a2      	strh	r2, [r4, #12]
 80053ea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80053ee:	e7c6      	b.n	800537e <__sflush_r+0xce>
 80053f0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80053f2:	e782      	b.n	80052fa <__sflush_r+0x4a>
 80053f4:	89a3      	ldrh	r3, [r4, #12]
 80053f6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80053fa:	81a3      	strh	r3, [r4, #12]
 80053fc:	e7bf      	b.n	800537e <__sflush_r+0xce>
 80053fe:	bf00      	nop
 8005400:	20400001 	.word	0x20400001

08005404 <_fflush_r>:
 8005404:	b538      	push	{r3, r4, r5, lr}
 8005406:	460d      	mov	r5, r1
 8005408:	4604      	mov	r4, r0
 800540a:	b108      	cbz	r0, 8005410 <_fflush_r+0xc>
 800540c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800540e:	b1a3      	cbz	r3, 800543a <_fflush_r+0x36>
 8005410:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005414:	b1b8      	cbz	r0, 8005446 <_fflush_r+0x42>
 8005416:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005418:	07db      	lsls	r3, r3, #31
 800541a:	d401      	bmi.n	8005420 <_fflush_r+0x1c>
 800541c:	0581      	lsls	r1, r0, #22
 800541e:	d51a      	bpl.n	8005456 <_fflush_r+0x52>
 8005420:	4620      	mov	r0, r4
 8005422:	4629      	mov	r1, r5
 8005424:	f7ff ff44 	bl	80052b0 <__sflush_r>
 8005428:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800542a:	07da      	lsls	r2, r3, #31
 800542c:	4604      	mov	r4, r0
 800542e:	d402      	bmi.n	8005436 <_fflush_r+0x32>
 8005430:	89ab      	ldrh	r3, [r5, #12]
 8005432:	059b      	lsls	r3, r3, #22
 8005434:	d50a      	bpl.n	800544c <_fflush_r+0x48>
 8005436:	4620      	mov	r0, r4
 8005438:	bd38      	pop	{r3, r4, r5, pc}
 800543a:	f000 f83f 	bl	80054bc <__sinit>
 800543e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005442:	2800      	cmp	r0, #0
 8005444:	d1e7      	bne.n	8005416 <_fflush_r+0x12>
 8005446:	4604      	mov	r4, r0
 8005448:	4620      	mov	r0, r4
 800544a:	bd38      	pop	{r3, r4, r5, pc}
 800544c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800544e:	f000 fb87 	bl	8005b60 <__retarget_lock_release_recursive>
 8005452:	4620      	mov	r0, r4
 8005454:	bd38      	pop	{r3, r4, r5, pc}
 8005456:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005458:	f000 fb80 	bl	8005b5c <__retarget_lock_acquire_recursive>
 800545c:	e7e0      	b.n	8005420 <_fflush_r+0x1c>
 800545e:	bf00      	nop

08005460 <std>:
 8005460:	b510      	push	{r4, lr}
 8005462:	2300      	movs	r3, #0
 8005464:	4604      	mov	r4, r0
 8005466:	8181      	strh	r1, [r0, #12]
 8005468:	81c2      	strh	r2, [r0, #14]
 800546a:	e9c0 3300 	strd	r3, r3, [r0]
 800546e:	6083      	str	r3, [r0, #8]
 8005470:	6643      	str	r3, [r0, #100]	; 0x64
 8005472:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005476:	6183      	str	r3, [r0, #24]
 8005478:	4619      	mov	r1, r3
 800547a:	2208      	movs	r2, #8
 800547c:	305c      	adds	r0, #92	; 0x5c
 800547e:	f7fd f8c9 	bl	8002614 <memset>
 8005482:	4807      	ldr	r0, [pc, #28]	; (80054a0 <std+0x40>)
 8005484:	4907      	ldr	r1, [pc, #28]	; (80054a4 <std+0x44>)
 8005486:	4a08      	ldr	r2, [pc, #32]	; (80054a8 <std+0x48>)
 8005488:	4b08      	ldr	r3, [pc, #32]	; (80054ac <std+0x4c>)
 800548a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800548c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005490:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005494:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005498:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800549c:	f000 bb5a 	b.w	8005b54 <__retarget_lock_init_recursive>
 80054a0:	08006c79 	.word	0x08006c79
 80054a4:	08006c9d 	.word	0x08006c9d
 80054a8:	08006cd9 	.word	0x08006cd9
 80054ac:	08006cf9 	.word	0x08006cf9

080054b0 <_cleanup_r>:
 80054b0:	4901      	ldr	r1, [pc, #4]	; (80054b8 <_cleanup_r+0x8>)
 80054b2:	f000 bb17 	b.w	8005ae4 <_fwalk_reent>
 80054b6:	bf00      	nop
 80054b8:	08006f69 	.word	0x08006f69

080054bc <__sinit>:
 80054bc:	b510      	push	{r4, lr}
 80054be:	4604      	mov	r4, r0
 80054c0:	4812      	ldr	r0, [pc, #72]	; (800550c <__sinit+0x50>)
 80054c2:	f000 fb4b 	bl	8005b5c <__retarget_lock_acquire_recursive>
 80054c6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80054c8:	b9d2      	cbnz	r2, 8005500 <__sinit+0x44>
 80054ca:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80054ce:	4810      	ldr	r0, [pc, #64]	; (8005510 <__sinit+0x54>)
 80054d0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80054d4:	2103      	movs	r1, #3
 80054d6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80054da:	63e0      	str	r0, [r4, #60]	; 0x3c
 80054dc:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80054e0:	6860      	ldr	r0, [r4, #4]
 80054e2:	2104      	movs	r1, #4
 80054e4:	f7ff ffbc 	bl	8005460 <std>
 80054e8:	2201      	movs	r2, #1
 80054ea:	2109      	movs	r1, #9
 80054ec:	68a0      	ldr	r0, [r4, #8]
 80054ee:	f7ff ffb7 	bl	8005460 <std>
 80054f2:	2202      	movs	r2, #2
 80054f4:	2112      	movs	r1, #18
 80054f6:	68e0      	ldr	r0, [r4, #12]
 80054f8:	f7ff ffb2 	bl	8005460 <std>
 80054fc:	2301      	movs	r3, #1
 80054fe:	63a3      	str	r3, [r4, #56]	; 0x38
 8005500:	4802      	ldr	r0, [pc, #8]	; (800550c <__sinit+0x50>)
 8005502:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005506:	f000 bb2b 	b.w	8005b60 <__retarget_lock_release_recursive>
 800550a:	bf00      	nop
 800550c:	20001140 	.word	0x20001140
 8005510:	080054b1 	.word	0x080054b1

08005514 <__sfp_lock_acquire>:
 8005514:	4801      	ldr	r0, [pc, #4]	; (800551c <__sfp_lock_acquire+0x8>)
 8005516:	f000 bb21 	b.w	8005b5c <__retarget_lock_acquire_recursive>
 800551a:	bf00      	nop
 800551c:	20001154 	.word	0x20001154

08005520 <__sfp_lock_release>:
 8005520:	4801      	ldr	r0, [pc, #4]	; (8005528 <__sfp_lock_release+0x8>)
 8005522:	f000 bb1d 	b.w	8005b60 <__retarget_lock_release_recursive>
 8005526:	bf00      	nop
 8005528:	20001154 	.word	0x20001154

0800552c <__libc_fini_array>:
 800552c:	b538      	push	{r3, r4, r5, lr}
 800552e:	4c0a      	ldr	r4, [pc, #40]	; (8005558 <__libc_fini_array+0x2c>)
 8005530:	4d0a      	ldr	r5, [pc, #40]	; (800555c <__libc_fini_array+0x30>)
 8005532:	1b64      	subs	r4, r4, r5
 8005534:	10a4      	asrs	r4, r4, #2
 8005536:	d00a      	beq.n	800554e <__libc_fini_array+0x22>
 8005538:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800553c:	3b01      	subs	r3, #1
 800553e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005542:	3c01      	subs	r4, #1
 8005544:	f855 3904 	ldr.w	r3, [r5], #-4
 8005548:	4798      	blx	r3
 800554a:	2c00      	cmp	r4, #0
 800554c:	d1f9      	bne.n	8005542 <__libc_fini_array+0x16>
 800554e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005552:	f001 befd 	b.w	8007350 <_fini>
 8005556:	bf00      	nop
 8005558:	08007d54 	.word	0x08007d54
 800555c:	08007d50 	.word	0x08007d50

08005560 <_malloc_trim_r>:
 8005560:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005562:	4f24      	ldr	r7, [pc, #144]	; (80055f4 <_malloc_trim_r+0x94>)
 8005564:	460c      	mov	r4, r1
 8005566:	4606      	mov	r6, r0
 8005568:	f000 fe7c 	bl	8006264 <__malloc_lock>
 800556c:	68bb      	ldr	r3, [r7, #8]
 800556e:	685d      	ldr	r5, [r3, #4]
 8005570:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005574:	310f      	adds	r1, #15
 8005576:	f025 0503 	bic.w	r5, r5, #3
 800557a:	4429      	add	r1, r5
 800557c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005580:	f021 010f 	bic.w	r1, r1, #15
 8005584:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005588:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800558c:	db07      	blt.n	800559e <_malloc_trim_r+0x3e>
 800558e:	2100      	movs	r1, #0
 8005590:	4630      	mov	r0, r6
 8005592:	f001 fb5f 	bl	8006c54 <_sbrk_r>
 8005596:	68bb      	ldr	r3, [r7, #8]
 8005598:	442b      	add	r3, r5
 800559a:	4298      	cmp	r0, r3
 800559c:	d004      	beq.n	80055a8 <_malloc_trim_r+0x48>
 800559e:	4630      	mov	r0, r6
 80055a0:	f000 fe66 	bl	8006270 <__malloc_unlock>
 80055a4:	2000      	movs	r0, #0
 80055a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80055a8:	4261      	negs	r1, r4
 80055aa:	4630      	mov	r0, r6
 80055ac:	f001 fb52 	bl	8006c54 <_sbrk_r>
 80055b0:	3001      	adds	r0, #1
 80055b2:	d00d      	beq.n	80055d0 <_malloc_trim_r+0x70>
 80055b4:	4b10      	ldr	r3, [pc, #64]	; (80055f8 <_malloc_trim_r+0x98>)
 80055b6:	68ba      	ldr	r2, [r7, #8]
 80055b8:	6819      	ldr	r1, [r3, #0]
 80055ba:	1b2d      	subs	r5, r5, r4
 80055bc:	f045 0501 	orr.w	r5, r5, #1
 80055c0:	4630      	mov	r0, r6
 80055c2:	1b09      	subs	r1, r1, r4
 80055c4:	6055      	str	r5, [r2, #4]
 80055c6:	6019      	str	r1, [r3, #0]
 80055c8:	f000 fe52 	bl	8006270 <__malloc_unlock>
 80055cc:	2001      	movs	r0, #1
 80055ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80055d0:	2100      	movs	r1, #0
 80055d2:	4630      	mov	r0, r6
 80055d4:	f001 fb3e 	bl	8006c54 <_sbrk_r>
 80055d8:	68ba      	ldr	r2, [r7, #8]
 80055da:	1a83      	subs	r3, r0, r2
 80055dc:	2b0f      	cmp	r3, #15
 80055de:	ddde      	ble.n	800559e <_malloc_trim_r+0x3e>
 80055e0:	4c06      	ldr	r4, [pc, #24]	; (80055fc <_malloc_trim_r+0x9c>)
 80055e2:	4905      	ldr	r1, [pc, #20]	; (80055f8 <_malloc_trim_r+0x98>)
 80055e4:	6824      	ldr	r4, [r4, #0]
 80055e6:	f043 0301 	orr.w	r3, r3, #1
 80055ea:	1b00      	subs	r0, r0, r4
 80055ec:	6053      	str	r3, [r2, #4]
 80055ee:	6008      	str	r0, [r1, #0]
 80055f0:	e7d5      	b.n	800559e <_malloc_trim_r+0x3e>
 80055f2:	bf00      	nop
 80055f4:	2000044c 	.word	0x2000044c
 80055f8:	200010b8 	.word	0x200010b8
 80055fc:	20000854 	.word	0x20000854

08005600 <_free_r>:
 8005600:	2900      	cmp	r1, #0
 8005602:	d053      	beq.n	80056ac <_free_r+0xac>
 8005604:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005606:	460c      	mov	r4, r1
 8005608:	4606      	mov	r6, r0
 800560a:	f000 fe2b 	bl	8006264 <__malloc_lock>
 800560e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005612:	4f71      	ldr	r7, [pc, #452]	; (80057d8 <_free_r+0x1d8>)
 8005614:	f02c 0101 	bic.w	r1, ip, #1
 8005618:	f1a4 0508 	sub.w	r5, r4, #8
 800561c:	186b      	adds	r3, r5, r1
 800561e:	68b8      	ldr	r0, [r7, #8]
 8005620:	685a      	ldr	r2, [r3, #4]
 8005622:	4298      	cmp	r0, r3
 8005624:	f022 0203 	bic.w	r2, r2, #3
 8005628:	d053      	beq.n	80056d2 <_free_r+0xd2>
 800562a:	f01c 0f01 	tst.w	ip, #1
 800562e:	605a      	str	r2, [r3, #4]
 8005630:	eb03 0002 	add.w	r0, r3, r2
 8005634:	d13b      	bne.n	80056ae <_free_r+0xae>
 8005636:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800563a:	6840      	ldr	r0, [r0, #4]
 800563c:	eba5 050c 	sub.w	r5, r5, ip
 8005640:	f107 0e08 	add.w	lr, r7, #8
 8005644:	68ac      	ldr	r4, [r5, #8]
 8005646:	4574      	cmp	r4, lr
 8005648:	4461      	add	r1, ip
 800564a:	f000 0001 	and.w	r0, r0, #1
 800564e:	d075      	beq.n	800573c <_free_r+0x13c>
 8005650:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005654:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005658:	f8cc 4008 	str.w	r4, [ip, #8]
 800565c:	b360      	cbz	r0, 80056b8 <_free_r+0xb8>
 800565e:	f041 0301 	orr.w	r3, r1, #1
 8005662:	606b      	str	r3, [r5, #4]
 8005664:	5069      	str	r1, [r5, r1]
 8005666:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800566a:	d350      	bcc.n	800570e <_free_r+0x10e>
 800566c:	0a4b      	lsrs	r3, r1, #9
 800566e:	2b04      	cmp	r3, #4
 8005670:	d870      	bhi.n	8005754 <_free_r+0x154>
 8005672:	098b      	lsrs	r3, r1, #6
 8005674:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005678:	00e4      	lsls	r4, r4, #3
 800567a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800567e:	1938      	adds	r0, r7, r4
 8005680:	593b      	ldr	r3, [r7, r4]
 8005682:	3808      	subs	r0, #8
 8005684:	4298      	cmp	r0, r3
 8005686:	d078      	beq.n	800577a <_free_r+0x17a>
 8005688:	685a      	ldr	r2, [r3, #4]
 800568a:	f022 0203 	bic.w	r2, r2, #3
 800568e:	428a      	cmp	r2, r1
 8005690:	d971      	bls.n	8005776 <_free_r+0x176>
 8005692:	689b      	ldr	r3, [r3, #8]
 8005694:	4298      	cmp	r0, r3
 8005696:	d1f7      	bne.n	8005688 <_free_r+0x88>
 8005698:	68c3      	ldr	r3, [r0, #12]
 800569a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800569e:	609d      	str	r5, [r3, #8]
 80056a0:	60c5      	str	r5, [r0, #12]
 80056a2:	4630      	mov	r0, r6
 80056a4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80056a8:	f000 bde2 	b.w	8006270 <__malloc_unlock>
 80056ac:	4770      	bx	lr
 80056ae:	6840      	ldr	r0, [r0, #4]
 80056b0:	f000 0001 	and.w	r0, r0, #1
 80056b4:	2800      	cmp	r0, #0
 80056b6:	d1d2      	bne.n	800565e <_free_r+0x5e>
 80056b8:	6898      	ldr	r0, [r3, #8]
 80056ba:	4c48      	ldr	r4, [pc, #288]	; (80057dc <_free_r+0x1dc>)
 80056bc:	4411      	add	r1, r2
 80056be:	42a0      	cmp	r0, r4
 80056c0:	f041 0201 	orr.w	r2, r1, #1
 80056c4:	d062      	beq.n	800578c <_free_r+0x18c>
 80056c6:	68db      	ldr	r3, [r3, #12]
 80056c8:	60c3      	str	r3, [r0, #12]
 80056ca:	6098      	str	r0, [r3, #8]
 80056cc:	606a      	str	r2, [r5, #4]
 80056ce:	5069      	str	r1, [r5, r1]
 80056d0:	e7c9      	b.n	8005666 <_free_r+0x66>
 80056d2:	f01c 0f01 	tst.w	ip, #1
 80056d6:	440a      	add	r2, r1
 80056d8:	d107      	bne.n	80056ea <_free_r+0xea>
 80056da:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80056de:	1aed      	subs	r5, r5, r3
 80056e0:	441a      	add	r2, r3
 80056e2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80056e6:	60cb      	str	r3, [r1, #12]
 80056e8:	6099      	str	r1, [r3, #8]
 80056ea:	4b3d      	ldr	r3, [pc, #244]	; (80057e0 <_free_r+0x1e0>)
 80056ec:	681b      	ldr	r3, [r3, #0]
 80056ee:	f042 0101 	orr.w	r1, r2, #1
 80056f2:	4293      	cmp	r3, r2
 80056f4:	6069      	str	r1, [r5, #4]
 80056f6:	60bd      	str	r5, [r7, #8]
 80056f8:	d804      	bhi.n	8005704 <_free_r+0x104>
 80056fa:	4b3a      	ldr	r3, [pc, #232]	; (80057e4 <_free_r+0x1e4>)
 80056fc:	4630      	mov	r0, r6
 80056fe:	6819      	ldr	r1, [r3, #0]
 8005700:	f7ff ff2e 	bl	8005560 <_malloc_trim_r>
 8005704:	4630      	mov	r0, r6
 8005706:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800570a:	f000 bdb1 	b.w	8006270 <__malloc_unlock>
 800570e:	08c9      	lsrs	r1, r1, #3
 8005710:	6878      	ldr	r0, [r7, #4]
 8005712:	1c4a      	adds	r2, r1, #1
 8005714:	2301      	movs	r3, #1
 8005716:	1089      	asrs	r1, r1, #2
 8005718:	408b      	lsls	r3, r1
 800571a:	4303      	orrs	r3, r0
 800571c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005720:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005724:	607b      	str	r3, [r7, #4]
 8005726:	3908      	subs	r1, #8
 8005728:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800572c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005730:	60c5      	str	r5, [r0, #12]
 8005732:	4630      	mov	r0, r6
 8005734:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005738:	f000 bd9a 	b.w	8006270 <__malloc_unlock>
 800573c:	2800      	cmp	r0, #0
 800573e:	d145      	bne.n	80057cc <_free_r+0x1cc>
 8005740:	440a      	add	r2, r1
 8005742:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005746:	f042 0001 	orr.w	r0, r2, #1
 800574a:	60cb      	str	r3, [r1, #12]
 800574c:	6099      	str	r1, [r3, #8]
 800574e:	6068      	str	r0, [r5, #4]
 8005750:	50aa      	str	r2, [r5, r2]
 8005752:	e7d7      	b.n	8005704 <_free_r+0x104>
 8005754:	2b14      	cmp	r3, #20
 8005756:	d908      	bls.n	800576a <_free_r+0x16a>
 8005758:	2b54      	cmp	r3, #84	; 0x54
 800575a:	d81e      	bhi.n	800579a <_free_r+0x19a>
 800575c:	0b0b      	lsrs	r3, r1, #12
 800575e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005762:	00e4      	lsls	r4, r4, #3
 8005764:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005768:	e789      	b.n	800567e <_free_r+0x7e>
 800576a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800576e:	00e4      	lsls	r4, r4, #3
 8005770:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005774:	e783      	b.n	800567e <_free_r+0x7e>
 8005776:	4618      	mov	r0, r3
 8005778:	e78e      	b.n	8005698 <_free_r+0x98>
 800577a:	1093      	asrs	r3, r2, #2
 800577c:	6879      	ldr	r1, [r7, #4]
 800577e:	2201      	movs	r2, #1
 8005780:	fa02 f303 	lsl.w	r3, r2, r3
 8005784:	430b      	orrs	r3, r1
 8005786:	607b      	str	r3, [r7, #4]
 8005788:	4603      	mov	r3, r0
 800578a:	e786      	b.n	800569a <_free_r+0x9a>
 800578c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005790:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005794:	606a      	str	r2, [r5, #4]
 8005796:	5069      	str	r1, [r5, r1]
 8005798:	e7b4      	b.n	8005704 <_free_r+0x104>
 800579a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800579e:	d806      	bhi.n	80057ae <_free_r+0x1ae>
 80057a0:	0bcb      	lsrs	r3, r1, #15
 80057a2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80057a6:	00e4      	lsls	r4, r4, #3
 80057a8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80057ac:	e767      	b.n	800567e <_free_r+0x7e>
 80057ae:	f240 5254 	movw	r2, #1364	; 0x554
 80057b2:	4293      	cmp	r3, r2
 80057b4:	d806      	bhi.n	80057c4 <_free_r+0x1c4>
 80057b6:	0c8b      	lsrs	r3, r1, #18
 80057b8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80057bc:	00e4      	lsls	r4, r4, #3
 80057be:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80057c2:	e75c      	b.n	800567e <_free_r+0x7e>
 80057c4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80057c8:	227e      	movs	r2, #126	; 0x7e
 80057ca:	e758      	b.n	800567e <_free_r+0x7e>
 80057cc:	f041 0201 	orr.w	r2, r1, #1
 80057d0:	606a      	str	r2, [r5, #4]
 80057d2:	6019      	str	r1, [r3, #0]
 80057d4:	e796      	b.n	8005704 <_free_r+0x104>
 80057d6:	bf00      	nop
 80057d8:	2000044c 	.word	0x2000044c
 80057dc:	20000454 	.word	0x20000454
 80057e0:	20000858 	.word	0x20000858
 80057e4:	200010e8 	.word	0x200010e8

080057e8 <__sfvwrite_r>:
 80057e8:	6893      	ldr	r3, [r2, #8]
 80057ea:	2b00      	cmp	r3, #0
 80057ec:	f000 80e4 	beq.w	80059b8 <__sfvwrite_r+0x1d0>
 80057f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80057f4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80057f8:	b29b      	uxth	r3, r3
 80057fa:	460c      	mov	r4, r1
 80057fc:	0719      	lsls	r1, r3, #28
 80057fe:	b083      	sub	sp, #12
 8005800:	4682      	mov	sl, r0
 8005802:	4690      	mov	r8, r2
 8005804:	d535      	bpl.n	8005872 <__sfvwrite_r+0x8a>
 8005806:	6922      	ldr	r2, [r4, #16]
 8005808:	b39a      	cbz	r2, 8005872 <__sfvwrite_r+0x8a>
 800580a:	f013 0202 	ands.w	r2, r3, #2
 800580e:	f8d8 6000 	ldr.w	r6, [r8]
 8005812:	d03d      	beq.n	8005890 <__sfvwrite_r+0xa8>
 8005814:	2700      	movs	r7, #0
 8005816:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800581a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800581e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005ae0 <__sfvwrite_r+0x2f8>
 8005822:	463d      	mov	r5, r7
 8005824:	454d      	cmp	r5, r9
 8005826:	462b      	mov	r3, r5
 8005828:	463a      	mov	r2, r7
 800582a:	bf28      	it	cs
 800582c:	464b      	movcs	r3, r9
 800582e:	4661      	mov	r1, ip
 8005830:	4650      	mov	r0, sl
 8005832:	b1d5      	cbz	r5, 800586a <__sfvwrite_r+0x82>
 8005834:	47d8      	blx	fp
 8005836:	2800      	cmp	r0, #0
 8005838:	f340 80c6 	ble.w	80059c8 <__sfvwrite_r+0x1e0>
 800583c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005840:	1a1b      	subs	r3, r3, r0
 8005842:	4407      	add	r7, r0
 8005844:	1a2d      	subs	r5, r5, r0
 8005846:	f8c8 3008 	str.w	r3, [r8, #8]
 800584a:	2b00      	cmp	r3, #0
 800584c:	f000 80b0 	beq.w	80059b0 <__sfvwrite_r+0x1c8>
 8005850:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005854:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005858:	454d      	cmp	r5, r9
 800585a:	462b      	mov	r3, r5
 800585c:	463a      	mov	r2, r7
 800585e:	bf28      	it	cs
 8005860:	464b      	movcs	r3, r9
 8005862:	4661      	mov	r1, ip
 8005864:	4650      	mov	r0, sl
 8005866:	2d00      	cmp	r5, #0
 8005868:	d1e4      	bne.n	8005834 <__sfvwrite_r+0x4c>
 800586a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800586e:	3608      	adds	r6, #8
 8005870:	e7d8      	b.n	8005824 <__sfvwrite_r+0x3c>
 8005872:	4621      	mov	r1, r4
 8005874:	4650      	mov	r0, sl
 8005876:	f7fe fd03 	bl	8004280 <__swsetup_r>
 800587a:	2800      	cmp	r0, #0
 800587c:	f040 812a 	bne.w	8005ad4 <__sfvwrite_r+0x2ec>
 8005880:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005884:	f8d8 6000 	ldr.w	r6, [r8]
 8005888:	b29b      	uxth	r3, r3
 800588a:	f013 0202 	ands.w	r2, r3, #2
 800588e:	d1c1      	bne.n	8005814 <__sfvwrite_r+0x2c>
 8005890:	f013 0901 	ands.w	r9, r3, #1
 8005894:	d15d      	bne.n	8005952 <__sfvwrite_r+0x16a>
 8005896:	68a7      	ldr	r7, [r4, #8]
 8005898:	6820      	ldr	r0, [r4, #0]
 800589a:	464d      	mov	r5, r9
 800589c:	2d00      	cmp	r5, #0
 800589e:	d054      	beq.n	800594a <__sfvwrite_r+0x162>
 80058a0:	059a      	lsls	r2, r3, #22
 80058a2:	f140 809b 	bpl.w	80059dc <__sfvwrite_r+0x1f4>
 80058a6:	42af      	cmp	r7, r5
 80058a8:	46bb      	mov	fp, r7
 80058aa:	f200 80d8 	bhi.w	8005a5e <__sfvwrite_r+0x276>
 80058ae:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80058b2:	d02f      	beq.n	8005914 <__sfvwrite_r+0x12c>
 80058b4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80058b8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80058bc:	eba0 0b01 	sub.w	fp, r0, r1
 80058c0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80058c4:	1c68      	adds	r0, r5, #1
 80058c6:	107f      	asrs	r7, r7, #1
 80058c8:	4458      	add	r0, fp
 80058ca:	42b8      	cmp	r0, r7
 80058cc:	463a      	mov	r2, r7
 80058ce:	bf84      	itt	hi
 80058d0:	4607      	movhi	r7, r0
 80058d2:	463a      	movhi	r2, r7
 80058d4:	055b      	lsls	r3, r3, #21
 80058d6:	f140 80d3 	bpl.w	8005a80 <__sfvwrite_r+0x298>
 80058da:	4611      	mov	r1, r2
 80058dc:	4650      	mov	r0, sl
 80058de:	f000 f9b9 	bl	8005c54 <_malloc_r>
 80058e2:	2800      	cmp	r0, #0
 80058e4:	f000 80f0 	beq.w	8005ac8 <__sfvwrite_r+0x2e0>
 80058e8:	465a      	mov	r2, fp
 80058ea:	6921      	ldr	r1, [r4, #16]
 80058ec:	9001      	str	r0, [sp, #4]
 80058ee:	f7fa fe07 	bl	8000500 <memcpy>
 80058f2:	89a2      	ldrh	r2, [r4, #12]
 80058f4:	9b01      	ldr	r3, [sp, #4]
 80058f6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80058fa:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80058fe:	81a2      	strh	r2, [r4, #12]
 8005900:	eba7 020b 	sub.w	r2, r7, fp
 8005904:	eb03 000b 	add.w	r0, r3, fp
 8005908:	6167      	str	r7, [r4, #20]
 800590a:	6123      	str	r3, [r4, #16]
 800590c:	6020      	str	r0, [r4, #0]
 800590e:	60a2      	str	r2, [r4, #8]
 8005910:	462f      	mov	r7, r5
 8005912:	46ab      	mov	fp, r5
 8005914:	465a      	mov	r2, fp
 8005916:	4649      	mov	r1, r9
 8005918:	f000 fc40 	bl	800619c <memmove>
 800591c:	68a2      	ldr	r2, [r4, #8]
 800591e:	6823      	ldr	r3, [r4, #0]
 8005920:	1bd2      	subs	r2, r2, r7
 8005922:	445b      	add	r3, fp
 8005924:	462f      	mov	r7, r5
 8005926:	60a2      	str	r2, [r4, #8]
 8005928:	6023      	str	r3, [r4, #0]
 800592a:	2500      	movs	r5, #0
 800592c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005930:	1bdb      	subs	r3, r3, r7
 8005932:	44b9      	add	r9, r7
 8005934:	f8c8 3008 	str.w	r3, [r8, #8]
 8005938:	2b00      	cmp	r3, #0
 800593a:	d039      	beq.n	80059b0 <__sfvwrite_r+0x1c8>
 800593c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005940:	68a7      	ldr	r7, [r4, #8]
 8005942:	6820      	ldr	r0, [r4, #0]
 8005944:	b29b      	uxth	r3, r3
 8005946:	2d00      	cmp	r5, #0
 8005948:	d1aa      	bne.n	80058a0 <__sfvwrite_r+0xb8>
 800594a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800594e:	3608      	adds	r6, #8
 8005950:	e7a4      	b.n	800589c <__sfvwrite_r+0xb4>
 8005952:	4633      	mov	r3, r6
 8005954:	4691      	mov	r9, r2
 8005956:	4610      	mov	r0, r2
 8005958:	4617      	mov	r7, r2
 800595a:	464e      	mov	r6, r9
 800595c:	469b      	mov	fp, r3
 800595e:	2f00      	cmp	r7, #0
 8005960:	d06b      	beq.n	8005a3a <__sfvwrite_r+0x252>
 8005962:	2800      	cmp	r0, #0
 8005964:	d071      	beq.n	8005a4a <__sfvwrite_r+0x262>
 8005966:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800596a:	6820      	ldr	r0, [r4, #0]
 800596c:	45b9      	cmp	r9, r7
 800596e:	464b      	mov	r3, r9
 8005970:	bf28      	it	cs
 8005972:	463b      	movcs	r3, r7
 8005974:	4288      	cmp	r0, r1
 8005976:	d903      	bls.n	8005980 <__sfvwrite_r+0x198>
 8005978:	68a5      	ldr	r5, [r4, #8]
 800597a:	4415      	add	r5, r2
 800597c:	42ab      	cmp	r3, r5
 800597e:	dc71      	bgt.n	8005a64 <__sfvwrite_r+0x27c>
 8005980:	429a      	cmp	r2, r3
 8005982:	f300 8093 	bgt.w	8005aac <__sfvwrite_r+0x2c4>
 8005986:	4613      	mov	r3, r2
 8005988:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800598a:	69e1      	ldr	r1, [r4, #28]
 800598c:	4632      	mov	r2, r6
 800598e:	4650      	mov	r0, sl
 8005990:	47a8      	blx	r5
 8005992:	1e05      	subs	r5, r0, #0
 8005994:	dd18      	ble.n	80059c8 <__sfvwrite_r+0x1e0>
 8005996:	ebb9 0905 	subs.w	r9, r9, r5
 800599a:	d00f      	beq.n	80059bc <__sfvwrite_r+0x1d4>
 800599c:	2001      	movs	r0, #1
 800599e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80059a2:	1b5b      	subs	r3, r3, r5
 80059a4:	442e      	add	r6, r5
 80059a6:	1b7f      	subs	r7, r7, r5
 80059a8:	f8c8 3008 	str.w	r3, [r8, #8]
 80059ac:	2b00      	cmp	r3, #0
 80059ae:	d1d6      	bne.n	800595e <__sfvwrite_r+0x176>
 80059b0:	2000      	movs	r0, #0
 80059b2:	b003      	add	sp, #12
 80059b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059b8:	2000      	movs	r0, #0
 80059ba:	4770      	bx	lr
 80059bc:	4621      	mov	r1, r4
 80059be:	4650      	mov	r0, sl
 80059c0:	f7ff fd20 	bl	8005404 <_fflush_r>
 80059c4:	2800      	cmp	r0, #0
 80059c6:	d0ea      	beq.n	800599e <__sfvwrite_r+0x1b6>
 80059c8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80059d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80059d4:	81a3      	strh	r3, [r4, #12]
 80059d6:	b003      	add	sp, #12
 80059d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059dc:	6923      	ldr	r3, [r4, #16]
 80059de:	4283      	cmp	r3, r0
 80059e0:	d315      	bcc.n	8005a0e <__sfvwrite_r+0x226>
 80059e2:	6961      	ldr	r1, [r4, #20]
 80059e4:	42a9      	cmp	r1, r5
 80059e6:	d812      	bhi.n	8005a0e <__sfvwrite_r+0x226>
 80059e8:	4b3c      	ldr	r3, [pc, #240]	; (8005adc <__sfvwrite_r+0x2f4>)
 80059ea:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80059ec:	429d      	cmp	r5, r3
 80059ee:	bf94      	ite	ls
 80059f0:	462b      	movls	r3, r5
 80059f2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80059f6:	464a      	mov	r2, r9
 80059f8:	fb93 f3f1 	sdiv	r3, r3, r1
 80059fc:	4650      	mov	r0, sl
 80059fe:	fb01 f303 	mul.w	r3, r1, r3
 8005a02:	69e1      	ldr	r1, [r4, #28]
 8005a04:	47b8      	blx	r7
 8005a06:	1e07      	subs	r7, r0, #0
 8005a08:	ddde      	ble.n	80059c8 <__sfvwrite_r+0x1e0>
 8005a0a:	1bed      	subs	r5, r5, r7
 8005a0c:	e78e      	b.n	800592c <__sfvwrite_r+0x144>
 8005a0e:	42af      	cmp	r7, r5
 8005a10:	bf28      	it	cs
 8005a12:	462f      	movcs	r7, r5
 8005a14:	463a      	mov	r2, r7
 8005a16:	4649      	mov	r1, r9
 8005a18:	f000 fbc0 	bl	800619c <memmove>
 8005a1c:	68a3      	ldr	r3, [r4, #8]
 8005a1e:	6822      	ldr	r2, [r4, #0]
 8005a20:	1bdb      	subs	r3, r3, r7
 8005a22:	443a      	add	r2, r7
 8005a24:	60a3      	str	r3, [r4, #8]
 8005a26:	6022      	str	r2, [r4, #0]
 8005a28:	2b00      	cmp	r3, #0
 8005a2a:	d1ee      	bne.n	8005a0a <__sfvwrite_r+0x222>
 8005a2c:	4621      	mov	r1, r4
 8005a2e:	4650      	mov	r0, sl
 8005a30:	f7ff fce8 	bl	8005404 <_fflush_r>
 8005a34:	2800      	cmp	r0, #0
 8005a36:	d0e8      	beq.n	8005a0a <__sfvwrite_r+0x222>
 8005a38:	e7c6      	b.n	80059c8 <__sfvwrite_r+0x1e0>
 8005a3a:	f10b 0308 	add.w	r3, fp, #8
 8005a3e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005a42:	469b      	mov	fp, r3
 8005a44:	3308      	adds	r3, #8
 8005a46:	2f00      	cmp	r7, #0
 8005a48:	d0f9      	beq.n	8005a3e <__sfvwrite_r+0x256>
 8005a4a:	463a      	mov	r2, r7
 8005a4c:	210a      	movs	r1, #10
 8005a4e:	4630      	mov	r0, r6
 8005a50:	f7fa fe66 	bl	8000720 <memchr>
 8005a54:	b338      	cbz	r0, 8005aa6 <__sfvwrite_r+0x2be>
 8005a56:	3001      	adds	r0, #1
 8005a58:	eba0 0906 	sub.w	r9, r0, r6
 8005a5c:	e783      	b.n	8005966 <__sfvwrite_r+0x17e>
 8005a5e:	462f      	mov	r7, r5
 8005a60:	46ab      	mov	fp, r5
 8005a62:	e757      	b.n	8005914 <__sfvwrite_r+0x12c>
 8005a64:	4631      	mov	r1, r6
 8005a66:	462a      	mov	r2, r5
 8005a68:	f000 fb98 	bl	800619c <memmove>
 8005a6c:	6823      	ldr	r3, [r4, #0]
 8005a6e:	442b      	add	r3, r5
 8005a70:	6023      	str	r3, [r4, #0]
 8005a72:	4621      	mov	r1, r4
 8005a74:	4650      	mov	r0, sl
 8005a76:	f7ff fcc5 	bl	8005404 <_fflush_r>
 8005a7a:	2800      	cmp	r0, #0
 8005a7c:	d08b      	beq.n	8005996 <__sfvwrite_r+0x1ae>
 8005a7e:	e7a3      	b.n	80059c8 <__sfvwrite_r+0x1e0>
 8005a80:	4650      	mov	r0, sl
 8005a82:	f000 ff05 	bl	8006890 <_realloc_r>
 8005a86:	4603      	mov	r3, r0
 8005a88:	2800      	cmp	r0, #0
 8005a8a:	f47f af39 	bne.w	8005900 <__sfvwrite_r+0x118>
 8005a8e:	6921      	ldr	r1, [r4, #16]
 8005a90:	4650      	mov	r0, sl
 8005a92:	f7ff fdb5 	bl	8005600 <_free_r>
 8005a96:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a9a:	220c      	movs	r2, #12
 8005a9c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005aa0:	f8ca 2000 	str.w	r2, [sl]
 8005aa4:	e792      	b.n	80059cc <__sfvwrite_r+0x1e4>
 8005aa6:	f107 0901 	add.w	r9, r7, #1
 8005aaa:	e75c      	b.n	8005966 <__sfvwrite_r+0x17e>
 8005aac:	461a      	mov	r2, r3
 8005aae:	4631      	mov	r1, r6
 8005ab0:	9301      	str	r3, [sp, #4]
 8005ab2:	f000 fb73 	bl	800619c <memmove>
 8005ab6:	9b01      	ldr	r3, [sp, #4]
 8005ab8:	68a1      	ldr	r1, [r4, #8]
 8005aba:	6822      	ldr	r2, [r4, #0]
 8005abc:	1ac9      	subs	r1, r1, r3
 8005abe:	441a      	add	r2, r3
 8005ac0:	60a1      	str	r1, [r4, #8]
 8005ac2:	6022      	str	r2, [r4, #0]
 8005ac4:	461d      	mov	r5, r3
 8005ac6:	e766      	b.n	8005996 <__sfvwrite_r+0x1ae>
 8005ac8:	230c      	movs	r3, #12
 8005aca:	f8ca 3000 	str.w	r3, [sl]
 8005ace:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ad2:	e77b      	b.n	80059cc <__sfvwrite_r+0x1e4>
 8005ad4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005ad8:	e76b      	b.n	80059b2 <__sfvwrite_r+0x1ca>
 8005ada:	bf00      	nop
 8005adc:	7ffffffe 	.word	0x7ffffffe
 8005ae0:	7ffffc00 	.word	0x7ffffc00

08005ae4 <_fwalk_reent>:
 8005ae4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005ae8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005aec:	d01f      	beq.n	8005b2e <_fwalk_reent+0x4a>
 8005aee:	4688      	mov	r8, r1
 8005af0:	4606      	mov	r6, r0
 8005af2:	f04f 0900 	mov.w	r9, #0
 8005af6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005afa:	3d01      	subs	r5, #1
 8005afc:	d411      	bmi.n	8005b22 <_fwalk_reent+0x3e>
 8005afe:	89a3      	ldrh	r3, [r4, #12]
 8005b00:	2b01      	cmp	r3, #1
 8005b02:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005b06:	4621      	mov	r1, r4
 8005b08:	4630      	mov	r0, r6
 8005b0a:	d906      	bls.n	8005b1a <_fwalk_reent+0x36>
 8005b0c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005b10:	3301      	adds	r3, #1
 8005b12:	d002      	beq.n	8005b1a <_fwalk_reent+0x36>
 8005b14:	47c0      	blx	r8
 8005b16:	ea49 0900 	orr.w	r9, r9, r0
 8005b1a:	1c6b      	adds	r3, r5, #1
 8005b1c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005b20:	d1ed      	bne.n	8005afe <_fwalk_reent+0x1a>
 8005b22:	683f      	ldr	r7, [r7, #0]
 8005b24:	2f00      	cmp	r7, #0
 8005b26:	d1e6      	bne.n	8005af6 <_fwalk_reent+0x12>
 8005b28:	4648      	mov	r0, r9
 8005b2a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005b2e:	46b9      	mov	r9, r7
 8005b30:	4648      	mov	r0, r9
 8005b32:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005b36:	bf00      	nop

08005b38 <_localeconv_r>:
 8005b38:	4a04      	ldr	r2, [pc, #16]	; (8005b4c <_localeconv_r+0x14>)
 8005b3a:	4b05      	ldr	r3, [pc, #20]	; (8005b50 <_localeconv_r+0x18>)
 8005b3c:	6812      	ldr	r2, [r2, #0]
 8005b3e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005b40:	2800      	cmp	r0, #0
 8005b42:	bf08      	it	eq
 8005b44:	4618      	moveq	r0, r3
 8005b46:	30f0      	adds	r0, #240	; 0xf0
 8005b48:	4770      	bx	lr
 8005b4a:	bf00      	nop
 8005b4c:	20000018 	.word	0x20000018
 8005b50:	2000085c 	.word	0x2000085c

08005b54 <__retarget_lock_init_recursive>:
 8005b54:	4770      	bx	lr
 8005b56:	bf00      	nop

08005b58 <__retarget_lock_close_recursive>:
 8005b58:	4770      	bx	lr
 8005b5a:	bf00      	nop

08005b5c <__retarget_lock_acquire_recursive>:
 8005b5c:	4770      	bx	lr
 8005b5e:	bf00      	nop

08005b60 <__retarget_lock_release_recursive>:
 8005b60:	4770      	bx	lr
 8005b62:	bf00      	nop

08005b64 <__swhatbuf_r>:
 8005b64:	b570      	push	{r4, r5, r6, lr}
 8005b66:	460c      	mov	r4, r1
 8005b68:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005b6c:	2900      	cmp	r1, #0
 8005b6e:	b096      	sub	sp, #88	; 0x58
 8005b70:	4615      	mov	r5, r2
 8005b72:	461e      	mov	r6, r3
 8005b74:	da0f      	bge.n	8005b96 <__swhatbuf_r+0x32>
 8005b76:	89a2      	ldrh	r2, [r4, #12]
 8005b78:	2300      	movs	r3, #0
 8005b7a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005b7e:	6033      	str	r3, [r6, #0]
 8005b80:	d104      	bne.n	8005b8c <__swhatbuf_r+0x28>
 8005b82:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005b86:	602b      	str	r3, [r5, #0]
 8005b88:	b016      	add	sp, #88	; 0x58
 8005b8a:	bd70      	pop	{r4, r5, r6, pc}
 8005b8c:	2240      	movs	r2, #64	; 0x40
 8005b8e:	4618      	mov	r0, r3
 8005b90:	602a      	str	r2, [r5, #0]
 8005b92:	b016      	add	sp, #88	; 0x58
 8005b94:	bd70      	pop	{r4, r5, r6, pc}
 8005b96:	466a      	mov	r2, sp
 8005b98:	f001 fad0 	bl	800713c <_fstat_r>
 8005b9c:	2800      	cmp	r0, #0
 8005b9e:	dbea      	blt.n	8005b76 <__swhatbuf_r+0x12>
 8005ba0:	9b01      	ldr	r3, [sp, #4]
 8005ba2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005ba6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005baa:	fab3 f383 	clz	r3, r3
 8005bae:	095b      	lsrs	r3, r3, #5
 8005bb0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005bb4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005bb8:	6033      	str	r3, [r6, #0]
 8005bba:	602a      	str	r2, [r5, #0]
 8005bbc:	b016      	add	sp, #88	; 0x58
 8005bbe:	bd70      	pop	{r4, r5, r6, pc}

08005bc0 <__smakebuf_r>:
 8005bc0:	898a      	ldrh	r2, [r1, #12]
 8005bc2:	0792      	lsls	r2, r2, #30
 8005bc4:	460b      	mov	r3, r1
 8005bc6:	d506      	bpl.n	8005bd6 <__smakebuf_r+0x16>
 8005bc8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005bcc:	2101      	movs	r1, #1
 8005bce:	601a      	str	r2, [r3, #0]
 8005bd0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005bd4:	4770      	bx	lr
 8005bd6:	b570      	push	{r4, r5, r6, lr}
 8005bd8:	b082      	sub	sp, #8
 8005bda:	ab01      	add	r3, sp, #4
 8005bdc:	466a      	mov	r2, sp
 8005bde:	460c      	mov	r4, r1
 8005be0:	4605      	mov	r5, r0
 8005be2:	f7ff ffbf 	bl	8005b64 <__swhatbuf_r>
 8005be6:	9900      	ldr	r1, [sp, #0]
 8005be8:	4606      	mov	r6, r0
 8005bea:	4628      	mov	r0, r5
 8005bec:	f000 f832 	bl	8005c54 <_malloc_r>
 8005bf0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005bf4:	b1d8      	cbz	r0, 8005c2e <__smakebuf_r+0x6e>
 8005bf6:	4916      	ldr	r1, [pc, #88]	; (8005c50 <__smakebuf_r+0x90>)
 8005bf8:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005bfa:	9a01      	ldr	r2, [sp, #4]
 8005bfc:	9900      	ldr	r1, [sp, #0]
 8005bfe:	6020      	str	r0, [r4, #0]
 8005c00:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005c04:	81a3      	strh	r3, [r4, #12]
 8005c06:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005c0a:	b91a      	cbnz	r2, 8005c14 <__smakebuf_r+0x54>
 8005c0c:	4333      	orrs	r3, r6
 8005c0e:	81a3      	strh	r3, [r4, #12]
 8005c10:	b002      	add	sp, #8
 8005c12:	bd70      	pop	{r4, r5, r6, pc}
 8005c14:	4628      	mov	r0, r5
 8005c16:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005c1a:	f001 faa3 	bl	8007164 <_isatty_r>
 8005c1e:	b1a0      	cbz	r0, 8005c4a <__smakebuf_r+0x8a>
 8005c20:	89a3      	ldrh	r3, [r4, #12]
 8005c22:	f023 0303 	bic.w	r3, r3, #3
 8005c26:	f043 0301 	orr.w	r3, r3, #1
 8005c2a:	b21b      	sxth	r3, r3
 8005c2c:	e7ee      	b.n	8005c0c <__smakebuf_r+0x4c>
 8005c2e:	059a      	lsls	r2, r3, #22
 8005c30:	d4ee      	bmi.n	8005c10 <__smakebuf_r+0x50>
 8005c32:	f023 0303 	bic.w	r3, r3, #3
 8005c36:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005c3a:	f043 0302 	orr.w	r3, r3, #2
 8005c3e:	2101      	movs	r1, #1
 8005c40:	81a3      	strh	r3, [r4, #12]
 8005c42:	6022      	str	r2, [r4, #0]
 8005c44:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005c48:	e7e2      	b.n	8005c10 <__smakebuf_r+0x50>
 8005c4a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c4e:	e7dd      	b.n	8005c0c <__smakebuf_r+0x4c>
 8005c50:	080054b1 	.word	0x080054b1

08005c54 <_malloc_r>:
 8005c54:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005c58:	f101 050b 	add.w	r5, r1, #11
 8005c5c:	2d16      	cmp	r5, #22
 8005c5e:	b083      	sub	sp, #12
 8005c60:	4606      	mov	r6, r0
 8005c62:	d823      	bhi.n	8005cac <_malloc_r+0x58>
 8005c64:	2910      	cmp	r1, #16
 8005c66:	f200 80b9 	bhi.w	8005ddc <_malloc_r+0x188>
 8005c6a:	f000 fafb 	bl	8006264 <__malloc_lock>
 8005c6e:	2510      	movs	r5, #16
 8005c70:	2318      	movs	r3, #24
 8005c72:	2002      	movs	r0, #2
 8005c74:	4fc5      	ldr	r7, [pc, #788]	; (8005f8c <_malloc_r+0x338>)
 8005c76:	443b      	add	r3, r7
 8005c78:	f1a3 0208 	sub.w	r2, r3, #8
 8005c7c:	685c      	ldr	r4, [r3, #4]
 8005c7e:	4294      	cmp	r4, r2
 8005c80:	f000 8166 	beq.w	8005f50 <_malloc_r+0x2fc>
 8005c84:	6863      	ldr	r3, [r4, #4]
 8005c86:	f023 0303 	bic.w	r3, r3, #3
 8005c8a:	4423      	add	r3, r4
 8005c8c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005c90:	685a      	ldr	r2, [r3, #4]
 8005c92:	60e9      	str	r1, [r5, #12]
 8005c94:	f042 0201 	orr.w	r2, r2, #1
 8005c98:	608d      	str	r5, [r1, #8]
 8005c9a:	4630      	mov	r0, r6
 8005c9c:	605a      	str	r2, [r3, #4]
 8005c9e:	f000 fae7 	bl	8006270 <__malloc_unlock>
 8005ca2:	3408      	adds	r4, #8
 8005ca4:	4620      	mov	r0, r4
 8005ca6:	b003      	add	sp, #12
 8005ca8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005cac:	f035 0507 	bics.w	r5, r5, #7
 8005cb0:	f100 8094 	bmi.w	8005ddc <_malloc_r+0x188>
 8005cb4:	42a9      	cmp	r1, r5
 8005cb6:	f200 8091 	bhi.w	8005ddc <_malloc_r+0x188>
 8005cba:	f000 fad3 	bl	8006264 <__malloc_lock>
 8005cbe:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005cc2:	f0c0 8183 	bcc.w	8005fcc <_malloc_r+0x378>
 8005cc6:	0a6b      	lsrs	r3, r5, #9
 8005cc8:	f000 808f 	beq.w	8005dea <_malloc_r+0x196>
 8005ccc:	2b04      	cmp	r3, #4
 8005cce:	f200 8146 	bhi.w	8005f5e <_malloc_r+0x30a>
 8005cd2:	09ab      	lsrs	r3, r5, #6
 8005cd4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005cd8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005cdc:	00c3      	lsls	r3, r0, #3
 8005cde:	4fab      	ldr	r7, [pc, #684]	; (8005f8c <_malloc_r+0x338>)
 8005ce0:	443b      	add	r3, r7
 8005ce2:	f1a3 0108 	sub.w	r1, r3, #8
 8005ce6:	685c      	ldr	r4, [r3, #4]
 8005ce8:	42a1      	cmp	r1, r4
 8005cea:	d106      	bne.n	8005cfa <_malloc_r+0xa6>
 8005cec:	e00c      	b.n	8005d08 <_malloc_r+0xb4>
 8005cee:	2a00      	cmp	r2, #0
 8005cf0:	f280 811d 	bge.w	8005f2e <_malloc_r+0x2da>
 8005cf4:	68e4      	ldr	r4, [r4, #12]
 8005cf6:	42a1      	cmp	r1, r4
 8005cf8:	d006      	beq.n	8005d08 <_malloc_r+0xb4>
 8005cfa:	6863      	ldr	r3, [r4, #4]
 8005cfc:	f023 0303 	bic.w	r3, r3, #3
 8005d00:	1b5a      	subs	r2, r3, r5
 8005d02:	2a0f      	cmp	r2, #15
 8005d04:	ddf3      	ble.n	8005cee <_malloc_r+0x9a>
 8005d06:	4660      	mov	r0, ip
 8005d08:	693c      	ldr	r4, [r7, #16]
 8005d0a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005fa0 <_malloc_r+0x34c>
 8005d0e:	4564      	cmp	r4, ip
 8005d10:	d071      	beq.n	8005df6 <_malloc_r+0x1a2>
 8005d12:	6863      	ldr	r3, [r4, #4]
 8005d14:	f023 0303 	bic.w	r3, r3, #3
 8005d18:	1b5a      	subs	r2, r3, r5
 8005d1a:	2a0f      	cmp	r2, #15
 8005d1c:	f300 8144 	bgt.w	8005fa8 <_malloc_r+0x354>
 8005d20:	2a00      	cmp	r2, #0
 8005d22:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005d26:	f280 8126 	bge.w	8005f76 <_malloc_r+0x322>
 8005d2a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005d2e:	f080 8169 	bcs.w	8006004 <_malloc_r+0x3b0>
 8005d32:	08db      	lsrs	r3, r3, #3
 8005d34:	1c59      	adds	r1, r3, #1
 8005d36:	687a      	ldr	r2, [r7, #4]
 8005d38:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005d3c:	f8c4 8008 	str.w	r8, [r4, #8]
 8005d40:	f04f 0e01 	mov.w	lr, #1
 8005d44:	109b      	asrs	r3, r3, #2
 8005d46:	fa0e f303 	lsl.w	r3, lr, r3
 8005d4a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005d4e:	4313      	orrs	r3, r2
 8005d50:	f1ae 0208 	sub.w	r2, lr, #8
 8005d54:	60e2      	str	r2, [r4, #12]
 8005d56:	607b      	str	r3, [r7, #4]
 8005d58:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005d5c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005d60:	1082      	asrs	r2, r0, #2
 8005d62:	2401      	movs	r4, #1
 8005d64:	4094      	lsls	r4, r2
 8005d66:	429c      	cmp	r4, r3
 8005d68:	d84b      	bhi.n	8005e02 <_malloc_r+0x1ae>
 8005d6a:	421c      	tst	r4, r3
 8005d6c:	d106      	bne.n	8005d7c <_malloc_r+0x128>
 8005d6e:	f020 0003 	bic.w	r0, r0, #3
 8005d72:	0064      	lsls	r4, r4, #1
 8005d74:	421c      	tst	r4, r3
 8005d76:	f100 0004 	add.w	r0, r0, #4
 8005d7a:	d0fa      	beq.n	8005d72 <_malloc_r+0x11e>
 8005d7c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005d80:	46ce      	mov	lr, r9
 8005d82:	4680      	mov	r8, r0
 8005d84:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005d88:	459e      	cmp	lr, r3
 8005d8a:	d107      	bne.n	8005d9c <_malloc_r+0x148>
 8005d8c:	e122      	b.n	8005fd4 <_malloc_r+0x380>
 8005d8e:	2a00      	cmp	r2, #0
 8005d90:	f280 8129 	bge.w	8005fe6 <_malloc_r+0x392>
 8005d94:	68db      	ldr	r3, [r3, #12]
 8005d96:	459e      	cmp	lr, r3
 8005d98:	f000 811c 	beq.w	8005fd4 <_malloc_r+0x380>
 8005d9c:	6859      	ldr	r1, [r3, #4]
 8005d9e:	f021 0103 	bic.w	r1, r1, #3
 8005da2:	1b4a      	subs	r2, r1, r5
 8005da4:	2a0f      	cmp	r2, #15
 8005da6:	ddf2      	ble.n	8005d8e <_malloc_r+0x13a>
 8005da8:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005dac:	195c      	adds	r4, r3, r5
 8005dae:	f045 0501 	orr.w	r5, r5, #1
 8005db2:	605d      	str	r5, [r3, #4]
 8005db4:	f042 0501 	orr.w	r5, r2, #1
 8005db8:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005dbc:	4630      	mov	r0, r6
 8005dbe:	f8ce 8008 	str.w	r8, [lr, #8]
 8005dc2:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005dc6:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005dca:	6065      	str	r5, [r4, #4]
 8005dcc:	505a      	str	r2, [r3, r1]
 8005dce:	9301      	str	r3, [sp, #4]
 8005dd0:	f000 fa4e 	bl	8006270 <__malloc_unlock>
 8005dd4:	9b01      	ldr	r3, [sp, #4]
 8005dd6:	f103 0408 	add.w	r4, r3, #8
 8005dda:	e763      	b.n	8005ca4 <_malloc_r+0x50>
 8005ddc:	2400      	movs	r4, #0
 8005dde:	230c      	movs	r3, #12
 8005de0:	4620      	mov	r0, r4
 8005de2:	6033      	str	r3, [r6, #0]
 8005de4:	b003      	add	sp, #12
 8005de6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005dea:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005dee:	2040      	movs	r0, #64	; 0x40
 8005df0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005df4:	e773      	b.n	8005cde <_malloc_r+0x8a>
 8005df6:	687b      	ldr	r3, [r7, #4]
 8005df8:	1082      	asrs	r2, r0, #2
 8005dfa:	2401      	movs	r4, #1
 8005dfc:	4094      	lsls	r4, r2
 8005dfe:	429c      	cmp	r4, r3
 8005e00:	d9b3      	bls.n	8005d6a <_malloc_r+0x116>
 8005e02:	68bc      	ldr	r4, [r7, #8]
 8005e04:	6863      	ldr	r3, [r4, #4]
 8005e06:	f023 0903 	bic.w	r9, r3, #3
 8005e0a:	45a9      	cmp	r9, r5
 8005e0c:	d303      	bcc.n	8005e16 <_malloc_r+0x1c2>
 8005e0e:	eba9 0305 	sub.w	r3, r9, r5
 8005e12:	2b0f      	cmp	r3, #15
 8005e14:	dc7b      	bgt.n	8005f0e <_malloc_r+0x2ba>
 8005e16:	4b5e      	ldr	r3, [pc, #376]	; (8005f90 <_malloc_r+0x33c>)
 8005e18:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005fa4 <_malloc_r+0x350>
 8005e1c:	681a      	ldr	r2, [r3, #0]
 8005e1e:	f8da 3000 	ldr.w	r3, [sl]
 8005e22:	3301      	adds	r3, #1
 8005e24:	eb05 0802 	add.w	r8, r5, r2
 8005e28:	f000 8148 	beq.w	80060bc <_malloc_r+0x468>
 8005e2c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005e30:	f108 080f 	add.w	r8, r8, #15
 8005e34:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005e38:	f028 080f 	bic.w	r8, r8, #15
 8005e3c:	4641      	mov	r1, r8
 8005e3e:	4630      	mov	r0, r6
 8005e40:	f000 ff08 	bl	8006c54 <_sbrk_r>
 8005e44:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005e48:	4683      	mov	fp, r0
 8005e4a:	f000 8104 	beq.w	8006056 <_malloc_r+0x402>
 8005e4e:	eb04 0009 	add.w	r0, r4, r9
 8005e52:	4558      	cmp	r0, fp
 8005e54:	f200 80fd 	bhi.w	8006052 <_malloc_r+0x3fe>
 8005e58:	4a4e      	ldr	r2, [pc, #312]	; (8005f94 <_malloc_r+0x340>)
 8005e5a:	6813      	ldr	r3, [r2, #0]
 8005e5c:	4443      	add	r3, r8
 8005e5e:	6013      	str	r3, [r2, #0]
 8005e60:	f000 814d 	beq.w	80060fe <_malloc_r+0x4aa>
 8005e64:	f8da 1000 	ldr.w	r1, [sl]
 8005e68:	3101      	adds	r1, #1
 8005e6a:	bf1b      	ittet	ne
 8005e6c:	ebab 0000 	subne.w	r0, fp, r0
 8005e70:	181b      	addne	r3, r3, r0
 8005e72:	f8ca b000 	streq.w	fp, [sl]
 8005e76:	6013      	strne	r3, [r2, #0]
 8005e78:	f01b 0307 	ands.w	r3, fp, #7
 8005e7c:	f000 8134 	beq.w	80060e8 <_malloc_r+0x494>
 8005e80:	f1c3 0108 	rsb	r1, r3, #8
 8005e84:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005e88:	448b      	add	fp, r1
 8005e8a:	3308      	adds	r3, #8
 8005e8c:	44d8      	add	r8, fp
 8005e8e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005e92:	eba3 0808 	sub.w	r8, r3, r8
 8005e96:	4641      	mov	r1, r8
 8005e98:	4630      	mov	r0, r6
 8005e9a:	9201      	str	r2, [sp, #4]
 8005e9c:	f000 feda 	bl	8006c54 <_sbrk_r>
 8005ea0:	1c43      	adds	r3, r0, #1
 8005ea2:	9a01      	ldr	r2, [sp, #4]
 8005ea4:	f000 8146 	beq.w	8006134 <_malloc_r+0x4e0>
 8005ea8:	eba0 010b 	sub.w	r1, r0, fp
 8005eac:	4441      	add	r1, r8
 8005eae:	f041 0101 	orr.w	r1, r1, #1
 8005eb2:	6813      	ldr	r3, [r2, #0]
 8005eb4:	f8c7 b008 	str.w	fp, [r7, #8]
 8005eb8:	4443      	add	r3, r8
 8005eba:	42bc      	cmp	r4, r7
 8005ebc:	f8cb 1004 	str.w	r1, [fp, #4]
 8005ec0:	6013      	str	r3, [r2, #0]
 8005ec2:	d015      	beq.n	8005ef0 <_malloc_r+0x29c>
 8005ec4:	f1b9 0f0f 	cmp.w	r9, #15
 8005ec8:	f240 8130 	bls.w	800612c <_malloc_r+0x4d8>
 8005ecc:	6860      	ldr	r0, [r4, #4]
 8005ece:	f1a9 010c 	sub.w	r1, r9, #12
 8005ed2:	f021 0107 	bic.w	r1, r1, #7
 8005ed6:	f000 0001 	and.w	r0, r0, #1
 8005eda:	eb04 0c01 	add.w	ip, r4, r1
 8005ede:	4308      	orrs	r0, r1
 8005ee0:	f04f 0e05 	mov.w	lr, #5
 8005ee4:	290f      	cmp	r1, #15
 8005ee6:	6060      	str	r0, [r4, #4]
 8005ee8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005eec:	f200 813a 	bhi.w	8006164 <_malloc_r+0x510>
 8005ef0:	4a29      	ldr	r2, [pc, #164]	; (8005f98 <_malloc_r+0x344>)
 8005ef2:	482a      	ldr	r0, [pc, #168]	; (8005f9c <_malloc_r+0x348>)
 8005ef4:	6811      	ldr	r1, [r2, #0]
 8005ef6:	68bc      	ldr	r4, [r7, #8]
 8005ef8:	428b      	cmp	r3, r1
 8005efa:	6801      	ldr	r1, [r0, #0]
 8005efc:	bf88      	it	hi
 8005efe:	6013      	strhi	r3, [r2, #0]
 8005f00:	6862      	ldr	r2, [r4, #4]
 8005f02:	428b      	cmp	r3, r1
 8005f04:	f022 0203 	bic.w	r2, r2, #3
 8005f08:	bf88      	it	hi
 8005f0a:	6003      	strhi	r3, [r0, #0]
 8005f0c:	e0a7      	b.n	800605e <_malloc_r+0x40a>
 8005f0e:	1962      	adds	r2, r4, r5
 8005f10:	f043 0301 	orr.w	r3, r3, #1
 8005f14:	f045 0501 	orr.w	r5, r5, #1
 8005f18:	6065      	str	r5, [r4, #4]
 8005f1a:	4630      	mov	r0, r6
 8005f1c:	60ba      	str	r2, [r7, #8]
 8005f1e:	6053      	str	r3, [r2, #4]
 8005f20:	f000 f9a6 	bl	8006270 <__malloc_unlock>
 8005f24:	3408      	adds	r4, #8
 8005f26:	4620      	mov	r0, r4
 8005f28:	b003      	add	sp, #12
 8005f2a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f2e:	4423      	add	r3, r4
 8005f30:	68e1      	ldr	r1, [r4, #12]
 8005f32:	685a      	ldr	r2, [r3, #4]
 8005f34:	68a5      	ldr	r5, [r4, #8]
 8005f36:	f042 0201 	orr.w	r2, r2, #1
 8005f3a:	60e9      	str	r1, [r5, #12]
 8005f3c:	4630      	mov	r0, r6
 8005f3e:	608d      	str	r5, [r1, #8]
 8005f40:	605a      	str	r2, [r3, #4]
 8005f42:	f000 f995 	bl	8006270 <__malloc_unlock>
 8005f46:	3408      	adds	r4, #8
 8005f48:	4620      	mov	r0, r4
 8005f4a:	b003      	add	sp, #12
 8005f4c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f50:	68dc      	ldr	r4, [r3, #12]
 8005f52:	42a3      	cmp	r3, r4
 8005f54:	bf08      	it	eq
 8005f56:	3002      	addeq	r0, #2
 8005f58:	f43f aed6 	beq.w	8005d08 <_malloc_r+0xb4>
 8005f5c:	e692      	b.n	8005c84 <_malloc_r+0x30>
 8005f5e:	2b14      	cmp	r3, #20
 8005f60:	d971      	bls.n	8006046 <_malloc_r+0x3f2>
 8005f62:	2b54      	cmp	r3, #84	; 0x54
 8005f64:	f200 80ad 	bhi.w	80060c2 <_malloc_r+0x46e>
 8005f68:	0b2b      	lsrs	r3, r5, #12
 8005f6a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005f6e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005f72:	00c3      	lsls	r3, r0, #3
 8005f74:	e6b3      	b.n	8005cde <_malloc_r+0x8a>
 8005f76:	4423      	add	r3, r4
 8005f78:	4630      	mov	r0, r6
 8005f7a:	685a      	ldr	r2, [r3, #4]
 8005f7c:	f042 0201 	orr.w	r2, r2, #1
 8005f80:	605a      	str	r2, [r3, #4]
 8005f82:	3408      	adds	r4, #8
 8005f84:	f000 f974 	bl	8006270 <__malloc_unlock>
 8005f88:	e68c      	b.n	8005ca4 <_malloc_r+0x50>
 8005f8a:	bf00      	nop
 8005f8c:	2000044c 	.word	0x2000044c
 8005f90:	200010e8 	.word	0x200010e8
 8005f94:	200010b8 	.word	0x200010b8
 8005f98:	200010e0 	.word	0x200010e0
 8005f9c:	200010e4 	.word	0x200010e4
 8005fa0:	20000454 	.word	0x20000454
 8005fa4:	20000854 	.word	0x20000854
 8005fa8:	1961      	adds	r1, r4, r5
 8005faa:	f045 0e01 	orr.w	lr, r5, #1
 8005fae:	f042 0501 	orr.w	r5, r2, #1
 8005fb2:	f8c4 e004 	str.w	lr, [r4, #4]
 8005fb6:	4630      	mov	r0, r6
 8005fb8:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005fbc:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005fc0:	604d      	str	r5, [r1, #4]
 8005fc2:	50e2      	str	r2, [r4, r3]
 8005fc4:	f000 f954 	bl	8006270 <__malloc_unlock>
 8005fc8:	3408      	adds	r4, #8
 8005fca:	e66b      	b.n	8005ca4 <_malloc_r+0x50>
 8005fcc:	08e8      	lsrs	r0, r5, #3
 8005fce:	f105 0308 	add.w	r3, r5, #8
 8005fd2:	e64f      	b.n	8005c74 <_malloc_r+0x20>
 8005fd4:	f108 0801 	add.w	r8, r8, #1
 8005fd8:	f018 0f03 	tst.w	r8, #3
 8005fdc:	f10e 0e08 	add.w	lr, lr, #8
 8005fe0:	f47f aed0 	bne.w	8005d84 <_malloc_r+0x130>
 8005fe4:	e052      	b.n	800608c <_malloc_r+0x438>
 8005fe6:	4419      	add	r1, r3
 8005fe8:	461c      	mov	r4, r3
 8005fea:	684a      	ldr	r2, [r1, #4]
 8005fec:	68db      	ldr	r3, [r3, #12]
 8005fee:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005ff2:	f042 0201 	orr.w	r2, r2, #1
 8005ff6:	604a      	str	r2, [r1, #4]
 8005ff8:	4630      	mov	r0, r6
 8005ffa:	60eb      	str	r3, [r5, #12]
 8005ffc:	609d      	str	r5, [r3, #8]
 8005ffe:	f000 f937 	bl	8006270 <__malloc_unlock>
 8006002:	e64f      	b.n	8005ca4 <_malloc_r+0x50>
 8006004:	0a5a      	lsrs	r2, r3, #9
 8006006:	2a04      	cmp	r2, #4
 8006008:	d935      	bls.n	8006076 <_malloc_r+0x422>
 800600a:	2a14      	cmp	r2, #20
 800600c:	d86f      	bhi.n	80060ee <_malloc_r+0x49a>
 800600e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8006012:	00c9      	lsls	r1, r1, #3
 8006014:	325b      	adds	r2, #91	; 0x5b
 8006016:	eb07 0e01 	add.w	lr, r7, r1
 800601a:	5879      	ldr	r1, [r7, r1]
 800601c:	f1ae 0e08 	sub.w	lr, lr, #8
 8006020:	458e      	cmp	lr, r1
 8006022:	d058      	beq.n	80060d6 <_malloc_r+0x482>
 8006024:	684a      	ldr	r2, [r1, #4]
 8006026:	f022 0203 	bic.w	r2, r2, #3
 800602a:	429a      	cmp	r2, r3
 800602c:	d902      	bls.n	8006034 <_malloc_r+0x3e0>
 800602e:	6889      	ldr	r1, [r1, #8]
 8006030:	458e      	cmp	lr, r1
 8006032:	d1f7      	bne.n	8006024 <_malloc_r+0x3d0>
 8006034:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006038:	687b      	ldr	r3, [r7, #4]
 800603a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 800603e:	f8ce 4008 	str.w	r4, [lr, #8]
 8006042:	60cc      	str	r4, [r1, #12]
 8006044:	e68c      	b.n	8005d60 <_malloc_r+0x10c>
 8006046:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 800604a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 800604e:	00c3      	lsls	r3, r0, #3
 8006050:	e645      	b.n	8005cde <_malloc_r+0x8a>
 8006052:	42bc      	cmp	r4, r7
 8006054:	d072      	beq.n	800613c <_malloc_r+0x4e8>
 8006056:	68bc      	ldr	r4, [r7, #8]
 8006058:	6862      	ldr	r2, [r4, #4]
 800605a:	f022 0203 	bic.w	r2, r2, #3
 800605e:	4295      	cmp	r5, r2
 8006060:	eba2 0305 	sub.w	r3, r2, r5
 8006064:	d802      	bhi.n	800606c <_malloc_r+0x418>
 8006066:	2b0f      	cmp	r3, #15
 8006068:	f73f af51 	bgt.w	8005f0e <_malloc_r+0x2ba>
 800606c:	4630      	mov	r0, r6
 800606e:	f000 f8ff 	bl	8006270 <__malloc_unlock>
 8006072:	2400      	movs	r4, #0
 8006074:	e616      	b.n	8005ca4 <_malloc_r+0x50>
 8006076:	099a      	lsrs	r2, r3, #6
 8006078:	f102 0139 	add.w	r1, r2, #57	; 0x39
 800607c:	00c9      	lsls	r1, r1, #3
 800607e:	3238      	adds	r2, #56	; 0x38
 8006080:	e7c9      	b.n	8006016 <_malloc_r+0x3c2>
 8006082:	f8d9 9000 	ldr.w	r9, [r9]
 8006086:	4599      	cmp	r9, r3
 8006088:	f040 8083 	bne.w	8006192 <_malloc_r+0x53e>
 800608c:	f010 0f03 	tst.w	r0, #3
 8006090:	f1a9 0308 	sub.w	r3, r9, #8
 8006094:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006098:	d1f3      	bne.n	8006082 <_malloc_r+0x42e>
 800609a:	687b      	ldr	r3, [r7, #4]
 800609c:	ea23 0304 	bic.w	r3, r3, r4
 80060a0:	607b      	str	r3, [r7, #4]
 80060a2:	0064      	lsls	r4, r4, #1
 80060a4:	429c      	cmp	r4, r3
 80060a6:	f63f aeac 	bhi.w	8005e02 <_malloc_r+0x1ae>
 80060aa:	b91c      	cbnz	r4, 80060b4 <_malloc_r+0x460>
 80060ac:	e6a9      	b.n	8005e02 <_malloc_r+0x1ae>
 80060ae:	0064      	lsls	r4, r4, #1
 80060b0:	f108 0804 	add.w	r8, r8, #4
 80060b4:	421c      	tst	r4, r3
 80060b6:	d0fa      	beq.n	80060ae <_malloc_r+0x45a>
 80060b8:	4640      	mov	r0, r8
 80060ba:	e65f      	b.n	8005d7c <_malloc_r+0x128>
 80060bc:	f108 0810 	add.w	r8, r8, #16
 80060c0:	e6bc      	b.n	8005e3c <_malloc_r+0x1e8>
 80060c2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80060c6:	d826      	bhi.n	8006116 <_malloc_r+0x4c2>
 80060c8:	0beb      	lsrs	r3, r5, #15
 80060ca:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80060ce:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80060d2:	00c3      	lsls	r3, r0, #3
 80060d4:	e603      	b.n	8005cde <_malloc_r+0x8a>
 80060d6:	687b      	ldr	r3, [r7, #4]
 80060d8:	1092      	asrs	r2, r2, #2
 80060da:	f04f 0801 	mov.w	r8, #1
 80060de:	fa08 f202 	lsl.w	r2, r8, r2
 80060e2:	4313      	orrs	r3, r2
 80060e4:	607b      	str	r3, [r7, #4]
 80060e6:	e7a8      	b.n	800603a <_malloc_r+0x3e6>
 80060e8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80060ec:	e6ce      	b.n	8005e8c <_malloc_r+0x238>
 80060ee:	2a54      	cmp	r2, #84	; 0x54
 80060f0:	d829      	bhi.n	8006146 <_malloc_r+0x4f2>
 80060f2:	0b1a      	lsrs	r2, r3, #12
 80060f4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80060f8:	00c9      	lsls	r1, r1, #3
 80060fa:	326e      	adds	r2, #110	; 0x6e
 80060fc:	e78b      	b.n	8006016 <_malloc_r+0x3c2>
 80060fe:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8006102:	2900      	cmp	r1, #0
 8006104:	f47f aeae 	bne.w	8005e64 <_malloc_r+0x210>
 8006108:	eb09 0208 	add.w	r2, r9, r8
 800610c:	68b9      	ldr	r1, [r7, #8]
 800610e:	f042 0201 	orr.w	r2, r2, #1
 8006112:	604a      	str	r2, [r1, #4]
 8006114:	e6ec      	b.n	8005ef0 <_malloc_r+0x29c>
 8006116:	f240 5254 	movw	r2, #1364	; 0x554
 800611a:	4293      	cmp	r3, r2
 800611c:	d81c      	bhi.n	8006158 <_malloc_r+0x504>
 800611e:	0cab      	lsrs	r3, r5, #18
 8006120:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8006124:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006128:	00c3      	lsls	r3, r0, #3
 800612a:	e5d8      	b.n	8005cde <_malloc_r+0x8a>
 800612c:	2301      	movs	r3, #1
 800612e:	f8cb 3004 	str.w	r3, [fp, #4]
 8006132:	e79b      	b.n	800606c <_malloc_r+0x418>
 8006134:	2101      	movs	r1, #1
 8006136:	f04f 0800 	mov.w	r8, #0
 800613a:	e6ba      	b.n	8005eb2 <_malloc_r+0x25e>
 800613c:	4a16      	ldr	r2, [pc, #88]	; (8006198 <_malloc_r+0x544>)
 800613e:	6813      	ldr	r3, [r2, #0]
 8006140:	4443      	add	r3, r8
 8006142:	6013      	str	r3, [r2, #0]
 8006144:	e68e      	b.n	8005e64 <_malloc_r+0x210>
 8006146:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800614a:	d814      	bhi.n	8006176 <_malloc_r+0x522>
 800614c:	0bda      	lsrs	r2, r3, #15
 800614e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8006152:	00c9      	lsls	r1, r1, #3
 8006154:	3277      	adds	r2, #119	; 0x77
 8006156:	e75e      	b.n	8006016 <_malloc_r+0x3c2>
 8006158:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 800615c:	207f      	movs	r0, #127	; 0x7f
 800615e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8006162:	e5bc      	b.n	8005cde <_malloc_r+0x8a>
 8006164:	f104 0108 	add.w	r1, r4, #8
 8006168:	4630      	mov	r0, r6
 800616a:	9201      	str	r2, [sp, #4]
 800616c:	f7ff fa48 	bl	8005600 <_free_r>
 8006170:	9a01      	ldr	r2, [sp, #4]
 8006172:	6813      	ldr	r3, [r2, #0]
 8006174:	e6bc      	b.n	8005ef0 <_malloc_r+0x29c>
 8006176:	f240 5154 	movw	r1, #1364	; 0x554
 800617a:	428a      	cmp	r2, r1
 800617c:	d805      	bhi.n	800618a <_malloc_r+0x536>
 800617e:	0c9a      	lsrs	r2, r3, #18
 8006180:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8006184:	00c9      	lsls	r1, r1, #3
 8006186:	327c      	adds	r2, #124	; 0x7c
 8006188:	e745      	b.n	8006016 <_malloc_r+0x3c2>
 800618a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 800618e:	227e      	movs	r2, #126	; 0x7e
 8006190:	e741      	b.n	8006016 <_malloc_r+0x3c2>
 8006192:	687b      	ldr	r3, [r7, #4]
 8006194:	e785      	b.n	80060a2 <_malloc_r+0x44e>
 8006196:	bf00      	nop
 8006198:	200010b8 	.word	0x200010b8

0800619c <memmove>:
 800619c:	4288      	cmp	r0, r1
 800619e:	b4f0      	push	{r4, r5, r6, r7}
 80061a0:	d90d      	bls.n	80061be <memmove+0x22>
 80061a2:	188b      	adds	r3, r1, r2
 80061a4:	4283      	cmp	r3, r0
 80061a6:	d90a      	bls.n	80061be <memmove+0x22>
 80061a8:	1884      	adds	r4, r0, r2
 80061aa:	b132      	cbz	r2, 80061ba <memmove+0x1e>
 80061ac:	4622      	mov	r2, r4
 80061ae:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80061b2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80061b6:	4299      	cmp	r1, r3
 80061b8:	d1f9      	bne.n	80061ae <memmove+0x12>
 80061ba:	bcf0      	pop	{r4, r5, r6, r7}
 80061bc:	4770      	bx	lr
 80061be:	2a0f      	cmp	r2, #15
 80061c0:	d949      	bls.n	8006256 <memmove+0xba>
 80061c2:	ea40 0301 	orr.w	r3, r0, r1
 80061c6:	079b      	lsls	r3, r3, #30
 80061c8:	d147      	bne.n	800625a <memmove+0xbe>
 80061ca:	f1a2 0310 	sub.w	r3, r2, #16
 80061ce:	091b      	lsrs	r3, r3, #4
 80061d0:	f101 0720 	add.w	r7, r1, #32
 80061d4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80061d8:	f101 0410 	add.w	r4, r1, #16
 80061dc:	f100 0510 	add.w	r5, r0, #16
 80061e0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80061e4:	f845 6c10 	str.w	r6, [r5, #-16]
 80061e8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80061ec:	f845 6c0c 	str.w	r6, [r5, #-12]
 80061f0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80061f4:	f845 6c08 	str.w	r6, [r5, #-8]
 80061f8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80061fc:	f845 6c04 	str.w	r6, [r5, #-4]
 8006200:	3410      	adds	r4, #16
 8006202:	42bc      	cmp	r4, r7
 8006204:	f105 0510 	add.w	r5, r5, #16
 8006208:	d1ea      	bne.n	80061e0 <memmove+0x44>
 800620a:	3301      	adds	r3, #1
 800620c:	f002 050f 	and.w	r5, r2, #15
 8006210:	011b      	lsls	r3, r3, #4
 8006212:	2d03      	cmp	r5, #3
 8006214:	4419      	add	r1, r3
 8006216:	4403      	add	r3, r0
 8006218:	d921      	bls.n	800625e <memmove+0xc2>
 800621a:	1f1f      	subs	r7, r3, #4
 800621c:	460e      	mov	r6, r1
 800621e:	462c      	mov	r4, r5
 8006220:	3c04      	subs	r4, #4
 8006222:	f856 cb04 	ldr.w	ip, [r6], #4
 8006226:	f847 cf04 	str.w	ip, [r7, #4]!
 800622a:	2c03      	cmp	r4, #3
 800622c:	d8f8      	bhi.n	8006220 <memmove+0x84>
 800622e:	1f2c      	subs	r4, r5, #4
 8006230:	f024 0403 	bic.w	r4, r4, #3
 8006234:	3404      	adds	r4, #4
 8006236:	4423      	add	r3, r4
 8006238:	4421      	add	r1, r4
 800623a:	f002 0203 	and.w	r2, r2, #3
 800623e:	2a00      	cmp	r2, #0
 8006240:	d0bb      	beq.n	80061ba <memmove+0x1e>
 8006242:	3b01      	subs	r3, #1
 8006244:	440a      	add	r2, r1
 8006246:	f811 4b01 	ldrb.w	r4, [r1], #1
 800624a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800624e:	4291      	cmp	r1, r2
 8006250:	d1f9      	bne.n	8006246 <memmove+0xaa>
 8006252:	bcf0      	pop	{r4, r5, r6, r7}
 8006254:	4770      	bx	lr
 8006256:	4603      	mov	r3, r0
 8006258:	e7f1      	b.n	800623e <memmove+0xa2>
 800625a:	4603      	mov	r3, r0
 800625c:	e7f1      	b.n	8006242 <memmove+0xa6>
 800625e:	462a      	mov	r2, r5
 8006260:	e7ed      	b.n	800623e <memmove+0xa2>
 8006262:	bf00      	nop

08006264 <__malloc_lock>:
 8006264:	4801      	ldr	r0, [pc, #4]	; (800626c <__malloc_lock+0x8>)
 8006266:	f7ff bc79 	b.w	8005b5c <__retarget_lock_acquire_recursive>
 800626a:	bf00      	nop
 800626c:	20001144 	.word	0x20001144

08006270 <__malloc_unlock>:
 8006270:	4801      	ldr	r0, [pc, #4]	; (8006278 <__malloc_unlock+0x8>)
 8006272:	f7ff bc75 	b.w	8005b60 <__retarget_lock_release_recursive>
 8006276:	bf00      	nop
 8006278:	20001144 	.word	0x20001144

0800627c <_Balloc>:
 800627c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800627e:	b570      	push	{r4, r5, r6, lr}
 8006280:	4605      	mov	r5, r0
 8006282:	460c      	mov	r4, r1
 8006284:	b14b      	cbz	r3, 800629a <_Balloc+0x1e>
 8006286:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800628a:	b180      	cbz	r0, 80062ae <_Balloc+0x32>
 800628c:	6802      	ldr	r2, [r0, #0]
 800628e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006292:	2300      	movs	r3, #0
 8006294:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006298:	bd70      	pop	{r4, r5, r6, pc}
 800629a:	2221      	movs	r2, #33	; 0x21
 800629c:	2104      	movs	r1, #4
 800629e:	f000 fe1d 	bl	8006edc <_calloc_r>
 80062a2:	4603      	mov	r3, r0
 80062a4:	64e8      	str	r0, [r5, #76]	; 0x4c
 80062a6:	2800      	cmp	r0, #0
 80062a8:	d1ed      	bne.n	8006286 <_Balloc+0xa>
 80062aa:	2000      	movs	r0, #0
 80062ac:	bd70      	pop	{r4, r5, r6, pc}
 80062ae:	2101      	movs	r1, #1
 80062b0:	fa01 f604 	lsl.w	r6, r1, r4
 80062b4:	1d72      	adds	r2, r6, #5
 80062b6:	4628      	mov	r0, r5
 80062b8:	0092      	lsls	r2, r2, #2
 80062ba:	f000 fe0f 	bl	8006edc <_calloc_r>
 80062be:	2800      	cmp	r0, #0
 80062c0:	d0f3      	beq.n	80062aa <_Balloc+0x2e>
 80062c2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80062c6:	e7e4      	b.n	8006292 <_Balloc+0x16>

080062c8 <_Bfree>:
 80062c8:	b131      	cbz	r1, 80062d8 <_Bfree+0x10>
 80062ca:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80062cc:	684a      	ldr	r2, [r1, #4]
 80062ce:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80062d2:	6008      	str	r0, [r1, #0]
 80062d4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80062d8:	4770      	bx	lr
 80062da:	bf00      	nop

080062dc <__multadd>:
 80062dc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80062de:	690c      	ldr	r4, [r1, #16]
 80062e0:	b083      	sub	sp, #12
 80062e2:	460d      	mov	r5, r1
 80062e4:	4606      	mov	r6, r0
 80062e6:	f101 0c14 	add.w	ip, r1, #20
 80062ea:	2700      	movs	r7, #0
 80062ec:	f8dc 0000 	ldr.w	r0, [ip]
 80062f0:	b281      	uxth	r1, r0
 80062f2:	fb02 3301 	mla	r3, r2, r1, r3
 80062f6:	0c01      	lsrs	r1, r0, #16
 80062f8:	0c18      	lsrs	r0, r3, #16
 80062fa:	fb02 0101 	mla	r1, r2, r1, r0
 80062fe:	b29b      	uxth	r3, r3
 8006300:	3701      	adds	r7, #1
 8006302:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8006306:	42bc      	cmp	r4, r7
 8006308:	f84c 3b04 	str.w	r3, [ip], #4
 800630c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006310:	dcec      	bgt.n	80062ec <__multadd+0x10>
 8006312:	b13b      	cbz	r3, 8006324 <__multadd+0x48>
 8006314:	68aa      	ldr	r2, [r5, #8]
 8006316:	42a2      	cmp	r2, r4
 8006318:	dd07      	ble.n	800632a <__multadd+0x4e>
 800631a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800631e:	3401      	adds	r4, #1
 8006320:	6153      	str	r3, [r2, #20]
 8006322:	612c      	str	r4, [r5, #16]
 8006324:	4628      	mov	r0, r5
 8006326:	b003      	add	sp, #12
 8006328:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800632a:	6869      	ldr	r1, [r5, #4]
 800632c:	9301      	str	r3, [sp, #4]
 800632e:	3101      	adds	r1, #1
 8006330:	4630      	mov	r0, r6
 8006332:	f7ff ffa3 	bl	800627c <_Balloc>
 8006336:	692a      	ldr	r2, [r5, #16]
 8006338:	3202      	adds	r2, #2
 800633a:	f105 010c 	add.w	r1, r5, #12
 800633e:	4607      	mov	r7, r0
 8006340:	0092      	lsls	r2, r2, #2
 8006342:	300c      	adds	r0, #12
 8006344:	f7fa f8dc 	bl	8000500 <memcpy>
 8006348:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800634a:	6869      	ldr	r1, [r5, #4]
 800634c:	9b01      	ldr	r3, [sp, #4]
 800634e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006352:	6028      	str	r0, [r5, #0]
 8006354:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006358:	463d      	mov	r5, r7
 800635a:	e7de      	b.n	800631a <__multadd+0x3e>

0800635c <__hi0bits>:
 800635c:	0c02      	lsrs	r2, r0, #16
 800635e:	0412      	lsls	r2, r2, #16
 8006360:	4603      	mov	r3, r0
 8006362:	b9c2      	cbnz	r2, 8006396 <__hi0bits+0x3a>
 8006364:	0403      	lsls	r3, r0, #16
 8006366:	2010      	movs	r0, #16
 8006368:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800636c:	bf04      	itt	eq
 800636e:	021b      	lsleq	r3, r3, #8
 8006370:	3008      	addeq	r0, #8
 8006372:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006376:	bf04      	itt	eq
 8006378:	011b      	lsleq	r3, r3, #4
 800637a:	3004      	addeq	r0, #4
 800637c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006380:	bf04      	itt	eq
 8006382:	009b      	lsleq	r3, r3, #2
 8006384:	3002      	addeq	r0, #2
 8006386:	2b00      	cmp	r3, #0
 8006388:	db04      	blt.n	8006394 <__hi0bits+0x38>
 800638a:	005b      	lsls	r3, r3, #1
 800638c:	d501      	bpl.n	8006392 <__hi0bits+0x36>
 800638e:	3001      	adds	r0, #1
 8006390:	4770      	bx	lr
 8006392:	2020      	movs	r0, #32
 8006394:	4770      	bx	lr
 8006396:	2000      	movs	r0, #0
 8006398:	e7e6      	b.n	8006368 <__hi0bits+0xc>
 800639a:	bf00      	nop

0800639c <__lo0bits>:
 800639c:	6803      	ldr	r3, [r0, #0]
 800639e:	f013 0207 	ands.w	r2, r3, #7
 80063a2:	4601      	mov	r1, r0
 80063a4:	d007      	beq.n	80063b6 <__lo0bits+0x1a>
 80063a6:	07da      	lsls	r2, r3, #31
 80063a8:	d41f      	bmi.n	80063ea <__lo0bits+0x4e>
 80063aa:	0798      	lsls	r0, r3, #30
 80063ac:	d51f      	bpl.n	80063ee <__lo0bits+0x52>
 80063ae:	085b      	lsrs	r3, r3, #1
 80063b0:	600b      	str	r3, [r1, #0]
 80063b2:	2001      	movs	r0, #1
 80063b4:	4770      	bx	lr
 80063b6:	b298      	uxth	r0, r3
 80063b8:	b1a0      	cbz	r0, 80063e4 <__lo0bits+0x48>
 80063ba:	4610      	mov	r0, r2
 80063bc:	f013 0fff 	tst.w	r3, #255	; 0xff
 80063c0:	bf04      	itt	eq
 80063c2:	0a1b      	lsreq	r3, r3, #8
 80063c4:	3008      	addeq	r0, #8
 80063c6:	071a      	lsls	r2, r3, #28
 80063c8:	bf04      	itt	eq
 80063ca:	091b      	lsreq	r3, r3, #4
 80063cc:	3004      	addeq	r0, #4
 80063ce:	079a      	lsls	r2, r3, #30
 80063d0:	bf04      	itt	eq
 80063d2:	089b      	lsreq	r3, r3, #2
 80063d4:	3002      	addeq	r0, #2
 80063d6:	07da      	lsls	r2, r3, #31
 80063d8:	d402      	bmi.n	80063e0 <__lo0bits+0x44>
 80063da:	085b      	lsrs	r3, r3, #1
 80063dc:	d00b      	beq.n	80063f6 <__lo0bits+0x5a>
 80063de:	3001      	adds	r0, #1
 80063e0:	600b      	str	r3, [r1, #0]
 80063e2:	4770      	bx	lr
 80063e4:	0c1b      	lsrs	r3, r3, #16
 80063e6:	2010      	movs	r0, #16
 80063e8:	e7e8      	b.n	80063bc <__lo0bits+0x20>
 80063ea:	2000      	movs	r0, #0
 80063ec:	4770      	bx	lr
 80063ee:	089b      	lsrs	r3, r3, #2
 80063f0:	600b      	str	r3, [r1, #0]
 80063f2:	2002      	movs	r0, #2
 80063f4:	4770      	bx	lr
 80063f6:	2020      	movs	r0, #32
 80063f8:	4770      	bx	lr
 80063fa:	bf00      	nop

080063fc <__i2b>:
 80063fc:	b510      	push	{r4, lr}
 80063fe:	460c      	mov	r4, r1
 8006400:	2101      	movs	r1, #1
 8006402:	f7ff ff3b 	bl	800627c <_Balloc>
 8006406:	2201      	movs	r2, #1
 8006408:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800640c:	bd10      	pop	{r4, pc}
 800640e:	bf00      	nop

08006410 <__multiply>:
 8006410:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006414:	690e      	ldr	r6, [r1, #16]
 8006416:	6914      	ldr	r4, [r2, #16]
 8006418:	42a6      	cmp	r6, r4
 800641a:	b083      	sub	sp, #12
 800641c:	460f      	mov	r7, r1
 800641e:	4615      	mov	r5, r2
 8006420:	da04      	bge.n	800642c <__multiply+0x1c>
 8006422:	4632      	mov	r2, r6
 8006424:	462f      	mov	r7, r5
 8006426:	4626      	mov	r6, r4
 8006428:	460d      	mov	r5, r1
 800642a:	4614      	mov	r4, r2
 800642c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006430:	eb06 0804 	add.w	r8, r6, r4
 8006434:	4543      	cmp	r3, r8
 8006436:	bfb8      	it	lt
 8006438:	3101      	addlt	r1, #1
 800643a:	f7ff ff1f 	bl	800627c <_Balloc>
 800643e:	f100 0914 	add.w	r9, r0, #20
 8006442:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006446:	45f1      	cmp	r9, lr
 8006448:	9000      	str	r0, [sp, #0]
 800644a:	d205      	bcs.n	8006458 <__multiply+0x48>
 800644c:	464b      	mov	r3, r9
 800644e:	2200      	movs	r2, #0
 8006450:	f843 2b04 	str.w	r2, [r3], #4
 8006454:	459e      	cmp	lr, r3
 8006456:	d8fb      	bhi.n	8006450 <__multiply+0x40>
 8006458:	f105 0a14 	add.w	sl, r5, #20
 800645c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006460:	f107 0314 	add.w	r3, r7, #20
 8006464:	45a2      	cmp	sl, r4
 8006466:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800646a:	d261      	bcs.n	8006530 <__multiply+0x120>
 800646c:	1b64      	subs	r4, r4, r5
 800646e:	3c15      	subs	r4, #21
 8006470:	f024 0403 	bic.w	r4, r4, #3
 8006474:	f8cd e004 	str.w	lr, [sp, #4]
 8006478:	44a2      	add	sl, r4
 800647a:	f105 0210 	add.w	r2, r5, #16
 800647e:	469e      	mov	lr, r3
 8006480:	e005      	b.n	800648e <__multiply+0x7e>
 8006482:	0c2d      	lsrs	r5, r5, #16
 8006484:	d12b      	bne.n	80064de <__multiply+0xce>
 8006486:	4592      	cmp	sl, r2
 8006488:	f109 0904 	add.w	r9, r9, #4
 800648c:	d04e      	beq.n	800652c <__multiply+0x11c>
 800648e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006492:	fa1f fb85 	uxth.w	fp, r5
 8006496:	f1bb 0f00 	cmp.w	fp, #0
 800649a:	d0f2      	beq.n	8006482 <__multiply+0x72>
 800649c:	4677      	mov	r7, lr
 800649e:	464e      	mov	r6, r9
 80064a0:	2000      	movs	r0, #0
 80064a2:	e000      	b.n	80064a6 <__multiply+0x96>
 80064a4:	4626      	mov	r6, r4
 80064a6:	f857 1b04 	ldr.w	r1, [r7], #4
 80064aa:	6834      	ldr	r4, [r6, #0]
 80064ac:	b28b      	uxth	r3, r1
 80064ae:	b2a5      	uxth	r5, r4
 80064b0:	0c09      	lsrs	r1, r1, #16
 80064b2:	0c24      	lsrs	r4, r4, #16
 80064b4:	fb0b 5303 	mla	r3, fp, r3, r5
 80064b8:	4403      	add	r3, r0
 80064ba:	fb0b 4001 	mla	r0, fp, r1, r4
 80064be:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80064c2:	4634      	mov	r4, r6
 80064c4:	b29b      	uxth	r3, r3
 80064c6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80064ca:	45bc      	cmp	ip, r7
 80064cc:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80064d0:	f844 3b04 	str.w	r3, [r4], #4
 80064d4:	d8e6      	bhi.n	80064a4 <__multiply+0x94>
 80064d6:	6070      	str	r0, [r6, #4]
 80064d8:	6815      	ldr	r5, [r2, #0]
 80064da:	0c2d      	lsrs	r5, r5, #16
 80064dc:	d0d3      	beq.n	8006486 <__multiply+0x76>
 80064de:	f8d9 3000 	ldr.w	r3, [r9]
 80064e2:	4676      	mov	r6, lr
 80064e4:	4618      	mov	r0, r3
 80064e6:	46cb      	mov	fp, r9
 80064e8:	2100      	movs	r1, #0
 80064ea:	e000      	b.n	80064ee <__multiply+0xde>
 80064ec:	46a3      	mov	fp, r4
 80064ee:	8834      	ldrh	r4, [r6, #0]
 80064f0:	0c00      	lsrs	r0, r0, #16
 80064f2:	fb05 0004 	mla	r0, r5, r4, r0
 80064f6:	4401      	add	r1, r0
 80064f8:	b29b      	uxth	r3, r3
 80064fa:	465c      	mov	r4, fp
 80064fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006500:	f844 3b04 	str.w	r3, [r4], #4
 8006504:	f856 3b04 	ldr.w	r3, [r6], #4
 8006508:	f8db 0004 	ldr.w	r0, [fp, #4]
 800650c:	0c1b      	lsrs	r3, r3, #16
 800650e:	b287      	uxth	r7, r0
 8006510:	fb05 7303 	mla	r3, r5, r3, r7
 8006514:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006518:	45b4      	cmp	ip, r6
 800651a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800651e:	d8e5      	bhi.n	80064ec <__multiply+0xdc>
 8006520:	4592      	cmp	sl, r2
 8006522:	f8cb 3004 	str.w	r3, [fp, #4]
 8006526:	f109 0904 	add.w	r9, r9, #4
 800652a:	d1b0      	bne.n	800648e <__multiply+0x7e>
 800652c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006530:	f1b8 0f00 	cmp.w	r8, #0
 8006534:	dd0b      	ble.n	800654e <__multiply+0x13e>
 8006536:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800653a:	f1ae 0e04 	sub.w	lr, lr, #4
 800653e:	b11b      	cbz	r3, 8006548 <__multiply+0x138>
 8006540:	e005      	b.n	800654e <__multiply+0x13e>
 8006542:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006546:	b913      	cbnz	r3, 800654e <__multiply+0x13e>
 8006548:	f1b8 0801 	subs.w	r8, r8, #1
 800654c:	d1f9      	bne.n	8006542 <__multiply+0x132>
 800654e:	9800      	ldr	r0, [sp, #0]
 8006550:	f8c0 8010 	str.w	r8, [r0, #16]
 8006554:	b003      	add	sp, #12
 8006556:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800655a:	bf00      	nop

0800655c <__pow5mult>:
 800655c:	f012 0303 	ands.w	r3, r2, #3
 8006560:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006564:	4614      	mov	r4, r2
 8006566:	4607      	mov	r7, r0
 8006568:	d12e      	bne.n	80065c8 <__pow5mult+0x6c>
 800656a:	460d      	mov	r5, r1
 800656c:	10a4      	asrs	r4, r4, #2
 800656e:	d01c      	beq.n	80065aa <__pow5mult+0x4e>
 8006570:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006572:	b396      	cbz	r6, 80065da <__pow5mult+0x7e>
 8006574:	07e3      	lsls	r3, r4, #31
 8006576:	f04f 0800 	mov.w	r8, #0
 800657a:	d406      	bmi.n	800658a <__pow5mult+0x2e>
 800657c:	1064      	asrs	r4, r4, #1
 800657e:	d014      	beq.n	80065aa <__pow5mult+0x4e>
 8006580:	6830      	ldr	r0, [r6, #0]
 8006582:	b1a8      	cbz	r0, 80065b0 <__pow5mult+0x54>
 8006584:	4606      	mov	r6, r0
 8006586:	07e3      	lsls	r3, r4, #31
 8006588:	d5f8      	bpl.n	800657c <__pow5mult+0x20>
 800658a:	4632      	mov	r2, r6
 800658c:	4629      	mov	r1, r5
 800658e:	4638      	mov	r0, r7
 8006590:	f7ff ff3e 	bl	8006410 <__multiply>
 8006594:	b1b5      	cbz	r5, 80065c4 <__pow5mult+0x68>
 8006596:	686a      	ldr	r2, [r5, #4]
 8006598:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800659a:	1064      	asrs	r4, r4, #1
 800659c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80065a0:	6029      	str	r1, [r5, #0]
 80065a2:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80065a6:	4605      	mov	r5, r0
 80065a8:	d1ea      	bne.n	8006580 <__pow5mult+0x24>
 80065aa:	4628      	mov	r0, r5
 80065ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80065b0:	4632      	mov	r2, r6
 80065b2:	4631      	mov	r1, r6
 80065b4:	4638      	mov	r0, r7
 80065b6:	f7ff ff2b 	bl	8006410 <__multiply>
 80065ba:	6030      	str	r0, [r6, #0]
 80065bc:	f8c0 8000 	str.w	r8, [r0]
 80065c0:	4606      	mov	r6, r0
 80065c2:	e7e0      	b.n	8006586 <__pow5mult+0x2a>
 80065c4:	4605      	mov	r5, r0
 80065c6:	e7d9      	b.n	800657c <__pow5mult+0x20>
 80065c8:	3b01      	subs	r3, #1
 80065ca:	4a0b      	ldr	r2, [pc, #44]	; (80065f8 <__pow5mult+0x9c>)
 80065cc:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80065d0:	2300      	movs	r3, #0
 80065d2:	f7ff fe83 	bl	80062dc <__multadd>
 80065d6:	4605      	mov	r5, r0
 80065d8:	e7c8      	b.n	800656c <__pow5mult+0x10>
 80065da:	2101      	movs	r1, #1
 80065dc:	4638      	mov	r0, r7
 80065de:	f7ff fe4d 	bl	800627c <_Balloc>
 80065e2:	f240 2371 	movw	r3, #625	; 0x271
 80065e6:	6143      	str	r3, [r0, #20]
 80065e8:	2201      	movs	r2, #1
 80065ea:	2300      	movs	r3, #0
 80065ec:	6102      	str	r2, [r0, #16]
 80065ee:	4606      	mov	r6, r0
 80065f0:	64b8      	str	r0, [r7, #72]	; 0x48
 80065f2:	6003      	str	r3, [r0, #0]
 80065f4:	e7be      	b.n	8006574 <__pow5mult+0x18>
 80065f6:	bf00      	nop
 80065f8:	08007c20 	.word	0x08007c20

080065fc <__lshift>:
 80065fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006600:	4691      	mov	r9, r2
 8006602:	690a      	ldr	r2, [r1, #16]
 8006604:	460e      	mov	r6, r1
 8006606:	ea4f 1469 	mov.w	r4, r9, asr #5
 800660a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800660e:	eb04 0802 	add.w	r8, r4, r2
 8006612:	f108 0501 	add.w	r5, r8, #1
 8006616:	429d      	cmp	r5, r3
 8006618:	4607      	mov	r7, r0
 800661a:	dd04      	ble.n	8006626 <__lshift+0x2a>
 800661c:	005b      	lsls	r3, r3, #1
 800661e:	429d      	cmp	r5, r3
 8006620:	f101 0101 	add.w	r1, r1, #1
 8006624:	dcfa      	bgt.n	800661c <__lshift+0x20>
 8006626:	4638      	mov	r0, r7
 8006628:	f7ff fe28 	bl	800627c <_Balloc>
 800662c:	2c00      	cmp	r4, #0
 800662e:	f100 0314 	add.w	r3, r0, #20
 8006632:	dd37      	ble.n	80066a4 <__lshift+0xa8>
 8006634:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006638:	2200      	movs	r2, #0
 800663a:	f843 2b04 	str.w	r2, [r3], #4
 800663e:	428b      	cmp	r3, r1
 8006640:	d1fb      	bne.n	800663a <__lshift+0x3e>
 8006642:	6934      	ldr	r4, [r6, #16]
 8006644:	f106 0314 	add.w	r3, r6, #20
 8006648:	f019 091f 	ands.w	r9, r9, #31
 800664c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006650:	d020      	beq.n	8006694 <__lshift+0x98>
 8006652:	f1c9 0e20 	rsb	lr, r9, #32
 8006656:	2200      	movs	r2, #0
 8006658:	e000      	b.n	800665c <__lshift+0x60>
 800665a:	4651      	mov	r1, sl
 800665c:	681c      	ldr	r4, [r3, #0]
 800665e:	468a      	mov	sl, r1
 8006660:	fa04 f409 	lsl.w	r4, r4, r9
 8006664:	4314      	orrs	r4, r2
 8006666:	f84a 4b04 	str.w	r4, [sl], #4
 800666a:	f853 2b04 	ldr.w	r2, [r3], #4
 800666e:	4563      	cmp	r3, ip
 8006670:	fa22 f20e 	lsr.w	r2, r2, lr
 8006674:	d3f1      	bcc.n	800665a <__lshift+0x5e>
 8006676:	604a      	str	r2, [r1, #4]
 8006678:	b10a      	cbz	r2, 800667e <__lshift+0x82>
 800667a:	f108 0502 	add.w	r5, r8, #2
 800667e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006680:	6872      	ldr	r2, [r6, #4]
 8006682:	3d01      	subs	r5, #1
 8006684:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006688:	6105      	str	r5, [r0, #16]
 800668a:	6031      	str	r1, [r6, #0]
 800668c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006690:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006694:	3904      	subs	r1, #4
 8006696:	f853 2b04 	ldr.w	r2, [r3], #4
 800669a:	f841 2f04 	str.w	r2, [r1, #4]!
 800669e:	459c      	cmp	ip, r3
 80066a0:	d8f9      	bhi.n	8006696 <__lshift+0x9a>
 80066a2:	e7ec      	b.n	800667e <__lshift+0x82>
 80066a4:	4619      	mov	r1, r3
 80066a6:	e7cc      	b.n	8006642 <__lshift+0x46>

080066a8 <__mcmp>:
 80066a8:	b430      	push	{r4, r5}
 80066aa:	690b      	ldr	r3, [r1, #16]
 80066ac:	4605      	mov	r5, r0
 80066ae:	6900      	ldr	r0, [r0, #16]
 80066b0:	1ac0      	subs	r0, r0, r3
 80066b2:	d10f      	bne.n	80066d4 <__mcmp+0x2c>
 80066b4:	009b      	lsls	r3, r3, #2
 80066b6:	3514      	adds	r5, #20
 80066b8:	3114      	adds	r1, #20
 80066ba:	4419      	add	r1, r3
 80066bc:	442b      	add	r3, r5
 80066be:	e001      	b.n	80066c4 <__mcmp+0x1c>
 80066c0:	429d      	cmp	r5, r3
 80066c2:	d207      	bcs.n	80066d4 <__mcmp+0x2c>
 80066c4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80066c8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80066cc:	4294      	cmp	r4, r2
 80066ce:	d0f7      	beq.n	80066c0 <__mcmp+0x18>
 80066d0:	d302      	bcc.n	80066d8 <__mcmp+0x30>
 80066d2:	2001      	movs	r0, #1
 80066d4:	bc30      	pop	{r4, r5}
 80066d6:	4770      	bx	lr
 80066d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80066dc:	e7fa      	b.n	80066d4 <__mcmp+0x2c>
 80066de:	bf00      	nop

080066e0 <__mdiff>:
 80066e0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80066e4:	6913      	ldr	r3, [r2, #16]
 80066e6:	690d      	ldr	r5, [r1, #16]
 80066e8:	1aed      	subs	r5, r5, r3
 80066ea:	2d00      	cmp	r5, #0
 80066ec:	460e      	mov	r6, r1
 80066ee:	4690      	mov	r8, r2
 80066f0:	f101 0414 	add.w	r4, r1, #20
 80066f4:	f102 0714 	add.w	r7, r2, #20
 80066f8:	d114      	bne.n	8006724 <__mdiff+0x44>
 80066fa:	009b      	lsls	r3, r3, #2
 80066fc:	18e2      	adds	r2, r4, r3
 80066fe:	443b      	add	r3, r7
 8006700:	e001      	b.n	8006706 <__mdiff+0x26>
 8006702:	42a2      	cmp	r2, r4
 8006704:	d959      	bls.n	80067ba <__mdiff+0xda>
 8006706:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800670a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800670e:	458c      	cmp	ip, r1
 8006710:	d0f7      	beq.n	8006702 <__mdiff+0x22>
 8006712:	d209      	bcs.n	8006728 <__mdiff+0x48>
 8006714:	4622      	mov	r2, r4
 8006716:	4633      	mov	r3, r6
 8006718:	463c      	mov	r4, r7
 800671a:	4646      	mov	r6, r8
 800671c:	4617      	mov	r7, r2
 800671e:	4698      	mov	r8, r3
 8006720:	2501      	movs	r5, #1
 8006722:	e001      	b.n	8006728 <__mdiff+0x48>
 8006724:	dbf6      	blt.n	8006714 <__mdiff+0x34>
 8006726:	2500      	movs	r5, #0
 8006728:	6871      	ldr	r1, [r6, #4]
 800672a:	f7ff fda7 	bl	800627c <_Balloc>
 800672e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006732:	6936      	ldr	r6, [r6, #16]
 8006734:	60c5      	str	r5, [r0, #12]
 8006736:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800673a:	46bc      	mov	ip, r7
 800673c:	f100 0514 	add.w	r5, r0, #20
 8006740:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006744:	2300      	movs	r3, #0
 8006746:	f85c 1b04 	ldr.w	r1, [ip], #4
 800674a:	f854 8b04 	ldr.w	r8, [r4], #4
 800674e:	b28a      	uxth	r2, r1
 8006750:	fa13 f388 	uxtah	r3, r3, r8
 8006754:	0c09      	lsrs	r1, r1, #16
 8006756:	1a9a      	subs	r2, r3, r2
 8006758:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800675c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006760:	b292      	uxth	r2, r2
 8006762:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006766:	45e6      	cmp	lr, ip
 8006768:	f845 2b04 	str.w	r2, [r5], #4
 800676c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006770:	d8e9      	bhi.n	8006746 <__mdiff+0x66>
 8006772:	42a7      	cmp	r7, r4
 8006774:	d917      	bls.n	80067a6 <__mdiff+0xc6>
 8006776:	46ae      	mov	lr, r5
 8006778:	46a4      	mov	ip, r4
 800677a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800677e:	fa13 f382 	uxtah	r3, r3, r2
 8006782:	1419      	asrs	r1, r3, #16
 8006784:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006788:	b29b      	uxth	r3, r3
 800678a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800678e:	4567      	cmp	r7, ip
 8006790:	f84e 2b04 	str.w	r2, [lr], #4
 8006794:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006798:	d8ef      	bhi.n	800677a <__mdiff+0x9a>
 800679a:	43e4      	mvns	r4, r4
 800679c:	4427      	add	r7, r4
 800679e:	f027 0703 	bic.w	r7, r7, #3
 80067a2:	3704      	adds	r7, #4
 80067a4:	443d      	add	r5, r7
 80067a6:	3d04      	subs	r5, #4
 80067a8:	b922      	cbnz	r2, 80067b4 <__mdiff+0xd4>
 80067aa:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80067ae:	3e01      	subs	r6, #1
 80067b0:	2b00      	cmp	r3, #0
 80067b2:	d0fa      	beq.n	80067aa <__mdiff+0xca>
 80067b4:	6106      	str	r6, [r0, #16]
 80067b6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80067ba:	2100      	movs	r1, #0
 80067bc:	f7ff fd5e 	bl	800627c <_Balloc>
 80067c0:	2201      	movs	r2, #1
 80067c2:	2300      	movs	r3, #0
 80067c4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80067c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080067cc <__d2b>:
 80067cc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80067d0:	460f      	mov	r7, r1
 80067d2:	b083      	sub	sp, #12
 80067d4:	2101      	movs	r1, #1
 80067d6:	ec55 4b10 	vmov	r4, r5, d0
 80067da:	4616      	mov	r6, r2
 80067dc:	f7ff fd4e 	bl	800627c <_Balloc>
 80067e0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80067e4:	4681      	mov	r9, r0
 80067e6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80067ea:	f1b8 0f00 	cmp.w	r8, #0
 80067ee:	d001      	beq.n	80067f4 <__d2b+0x28>
 80067f0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80067f4:	2c00      	cmp	r4, #0
 80067f6:	9301      	str	r3, [sp, #4]
 80067f8:	d024      	beq.n	8006844 <__d2b+0x78>
 80067fa:	a802      	add	r0, sp, #8
 80067fc:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006800:	f7ff fdcc 	bl	800639c <__lo0bits>
 8006804:	2800      	cmp	r0, #0
 8006806:	d136      	bne.n	8006876 <__d2b+0xaa>
 8006808:	e9dd 2300 	ldrd	r2, r3, [sp]
 800680c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006810:	2b00      	cmp	r3, #0
 8006812:	bf0c      	ite	eq
 8006814:	2101      	moveq	r1, #1
 8006816:	2102      	movne	r1, #2
 8006818:	f8c9 3018 	str.w	r3, [r9, #24]
 800681c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006820:	f1b8 0f00 	cmp.w	r8, #0
 8006824:	d11b      	bne.n	800685e <__d2b+0x92>
 8006826:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800682a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800682e:	6038      	str	r0, [r7, #0]
 8006830:	6918      	ldr	r0, [r3, #16]
 8006832:	f7ff fd93 	bl	800635c <__hi0bits>
 8006836:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800683a:	6030      	str	r0, [r6, #0]
 800683c:	4648      	mov	r0, r9
 800683e:	b003      	add	sp, #12
 8006840:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006844:	a801      	add	r0, sp, #4
 8006846:	f7ff fda9 	bl	800639c <__lo0bits>
 800684a:	9b01      	ldr	r3, [sp, #4]
 800684c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006850:	2101      	movs	r1, #1
 8006852:	3020      	adds	r0, #32
 8006854:	f8c9 1010 	str.w	r1, [r9, #16]
 8006858:	f1b8 0f00 	cmp.w	r8, #0
 800685c:	d0e3      	beq.n	8006826 <__d2b+0x5a>
 800685e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006862:	eb08 0300 	add.w	r3, r8, r0
 8006866:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800686a:	603b      	str	r3, [r7, #0]
 800686c:	6030      	str	r0, [r6, #0]
 800686e:	4648      	mov	r0, r9
 8006870:	b003      	add	sp, #12
 8006872:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006876:	e9dd 1300 	ldrd	r1, r3, [sp]
 800687a:	f1c0 0220 	rsb	r2, r0, #32
 800687e:	fa03 f202 	lsl.w	r2, r3, r2
 8006882:	430a      	orrs	r2, r1
 8006884:	40c3      	lsrs	r3, r0
 8006886:	9301      	str	r3, [sp, #4]
 8006888:	f8c9 2014 	str.w	r2, [r9, #20]
 800688c:	e7c0      	b.n	8006810 <__d2b+0x44>
 800688e:	bf00      	nop

08006890 <_realloc_r>:
 8006890:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006894:	4692      	mov	sl, r2
 8006896:	b083      	sub	sp, #12
 8006898:	2900      	cmp	r1, #0
 800689a:	f000 80a1 	beq.w	80069e0 <_realloc_r+0x150>
 800689e:	460d      	mov	r5, r1
 80068a0:	4680      	mov	r8, r0
 80068a2:	f10a 040b 	add.w	r4, sl, #11
 80068a6:	f7ff fcdd 	bl	8006264 <__malloc_lock>
 80068aa:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80068ae:	2c16      	cmp	r4, #22
 80068b0:	f022 0603 	bic.w	r6, r2, #3
 80068b4:	f1a5 0708 	sub.w	r7, r5, #8
 80068b8:	d83e      	bhi.n	8006938 <_realloc_r+0xa8>
 80068ba:	2410      	movs	r4, #16
 80068bc:	4621      	mov	r1, r4
 80068be:	45a2      	cmp	sl, r4
 80068c0:	d83f      	bhi.n	8006942 <_realloc_r+0xb2>
 80068c2:	428e      	cmp	r6, r1
 80068c4:	eb07 0906 	add.w	r9, r7, r6
 80068c8:	da74      	bge.n	80069b4 <_realloc_r+0x124>
 80068ca:	4bc7      	ldr	r3, [pc, #796]	; (8006be8 <_realloc_r+0x358>)
 80068cc:	6898      	ldr	r0, [r3, #8]
 80068ce:	4548      	cmp	r0, r9
 80068d0:	f000 80aa 	beq.w	8006a28 <_realloc_r+0x198>
 80068d4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80068d8:	f020 0301 	bic.w	r3, r0, #1
 80068dc:	444b      	add	r3, r9
 80068de:	685b      	ldr	r3, [r3, #4]
 80068e0:	07db      	lsls	r3, r3, #31
 80068e2:	f140 8083 	bpl.w	80069ec <_realloc_r+0x15c>
 80068e6:	07d2      	lsls	r2, r2, #31
 80068e8:	d534      	bpl.n	8006954 <_realloc_r+0xc4>
 80068ea:	4651      	mov	r1, sl
 80068ec:	4640      	mov	r0, r8
 80068ee:	f7ff f9b1 	bl	8005c54 <_malloc_r>
 80068f2:	4682      	mov	sl, r0
 80068f4:	b1e0      	cbz	r0, 8006930 <_realloc_r+0xa0>
 80068f6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80068fa:	f023 0301 	bic.w	r3, r3, #1
 80068fe:	443b      	add	r3, r7
 8006900:	f1a0 0208 	sub.w	r2, r0, #8
 8006904:	4293      	cmp	r3, r2
 8006906:	f000 80f9 	beq.w	8006afc <_realloc_r+0x26c>
 800690a:	1f32      	subs	r2, r6, #4
 800690c:	2a24      	cmp	r2, #36	; 0x24
 800690e:	f200 8107 	bhi.w	8006b20 <_realloc_r+0x290>
 8006912:	2a13      	cmp	r2, #19
 8006914:	6829      	ldr	r1, [r5, #0]
 8006916:	f200 80e6 	bhi.w	8006ae6 <_realloc_r+0x256>
 800691a:	4603      	mov	r3, r0
 800691c:	462a      	mov	r2, r5
 800691e:	6019      	str	r1, [r3, #0]
 8006920:	6851      	ldr	r1, [r2, #4]
 8006922:	6059      	str	r1, [r3, #4]
 8006924:	6892      	ldr	r2, [r2, #8]
 8006926:	609a      	str	r2, [r3, #8]
 8006928:	4629      	mov	r1, r5
 800692a:	4640      	mov	r0, r8
 800692c:	f7fe fe68 	bl	8005600 <_free_r>
 8006930:	4640      	mov	r0, r8
 8006932:	f7ff fc9d 	bl	8006270 <__malloc_unlock>
 8006936:	e04f      	b.n	80069d8 <_realloc_r+0x148>
 8006938:	f024 0407 	bic.w	r4, r4, #7
 800693c:	2c00      	cmp	r4, #0
 800693e:	4621      	mov	r1, r4
 8006940:	dabd      	bge.n	80068be <_realloc_r+0x2e>
 8006942:	f04f 0a00 	mov.w	sl, #0
 8006946:	230c      	movs	r3, #12
 8006948:	4650      	mov	r0, sl
 800694a:	f8c8 3000 	str.w	r3, [r8]
 800694e:	b003      	add	sp, #12
 8006950:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006954:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006958:	eba7 0b03 	sub.w	fp, r7, r3
 800695c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006960:	f022 0203 	bic.w	r2, r2, #3
 8006964:	18b3      	adds	r3, r6, r2
 8006966:	428b      	cmp	r3, r1
 8006968:	dbbf      	blt.n	80068ea <_realloc_r+0x5a>
 800696a:	46da      	mov	sl, fp
 800696c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006970:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006974:	1f32      	subs	r2, r6, #4
 8006976:	2a24      	cmp	r2, #36	; 0x24
 8006978:	60c1      	str	r1, [r0, #12]
 800697a:	eb0b 0903 	add.w	r9, fp, r3
 800697e:	6088      	str	r0, [r1, #8]
 8006980:	f200 80c6 	bhi.w	8006b10 <_realloc_r+0x280>
 8006984:	2a13      	cmp	r2, #19
 8006986:	6829      	ldr	r1, [r5, #0]
 8006988:	f240 80c0 	bls.w	8006b0c <_realloc_r+0x27c>
 800698c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006990:	6869      	ldr	r1, [r5, #4]
 8006992:	f8cb 100c 	str.w	r1, [fp, #12]
 8006996:	2a1b      	cmp	r2, #27
 8006998:	68a9      	ldr	r1, [r5, #8]
 800699a:	f200 80d8 	bhi.w	8006b4e <_realloc_r+0x2be>
 800699e:	f10b 0210 	add.w	r2, fp, #16
 80069a2:	3508      	adds	r5, #8
 80069a4:	6011      	str	r1, [r2, #0]
 80069a6:	6869      	ldr	r1, [r5, #4]
 80069a8:	6051      	str	r1, [r2, #4]
 80069aa:	68a9      	ldr	r1, [r5, #8]
 80069ac:	6091      	str	r1, [r2, #8]
 80069ae:	461e      	mov	r6, r3
 80069b0:	465f      	mov	r7, fp
 80069b2:	4655      	mov	r5, sl
 80069b4:	687b      	ldr	r3, [r7, #4]
 80069b6:	1b32      	subs	r2, r6, r4
 80069b8:	2a0f      	cmp	r2, #15
 80069ba:	f003 0301 	and.w	r3, r3, #1
 80069be:	d822      	bhi.n	8006a06 <_realloc_r+0x176>
 80069c0:	4333      	orrs	r3, r6
 80069c2:	607b      	str	r3, [r7, #4]
 80069c4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80069c8:	f043 0301 	orr.w	r3, r3, #1
 80069cc:	f8c9 3004 	str.w	r3, [r9, #4]
 80069d0:	4640      	mov	r0, r8
 80069d2:	f7ff fc4d 	bl	8006270 <__malloc_unlock>
 80069d6:	46aa      	mov	sl, r5
 80069d8:	4650      	mov	r0, sl
 80069da:	b003      	add	sp, #12
 80069dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80069e0:	4611      	mov	r1, r2
 80069e2:	b003      	add	sp, #12
 80069e4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069e8:	f7ff b934 	b.w	8005c54 <_malloc_r>
 80069ec:	f020 0003 	bic.w	r0, r0, #3
 80069f0:	1833      	adds	r3, r6, r0
 80069f2:	428b      	cmp	r3, r1
 80069f4:	db61      	blt.n	8006aba <_realloc_r+0x22a>
 80069f6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80069fa:	461e      	mov	r6, r3
 80069fc:	60ca      	str	r2, [r1, #12]
 80069fe:	eb07 0903 	add.w	r9, r7, r3
 8006a02:	6091      	str	r1, [r2, #8]
 8006a04:	e7d6      	b.n	80069b4 <_realloc_r+0x124>
 8006a06:	1939      	adds	r1, r7, r4
 8006a08:	4323      	orrs	r3, r4
 8006a0a:	f042 0201 	orr.w	r2, r2, #1
 8006a0e:	607b      	str	r3, [r7, #4]
 8006a10:	604a      	str	r2, [r1, #4]
 8006a12:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006a16:	f043 0301 	orr.w	r3, r3, #1
 8006a1a:	3108      	adds	r1, #8
 8006a1c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006a20:	4640      	mov	r0, r8
 8006a22:	f7fe fded 	bl	8005600 <_free_r>
 8006a26:	e7d3      	b.n	80069d0 <_realloc_r+0x140>
 8006a28:	6840      	ldr	r0, [r0, #4]
 8006a2a:	f020 0903 	bic.w	r9, r0, #3
 8006a2e:	44b1      	add	r9, r6
 8006a30:	f104 0010 	add.w	r0, r4, #16
 8006a34:	4581      	cmp	r9, r0
 8006a36:	da77      	bge.n	8006b28 <_realloc_r+0x298>
 8006a38:	07d2      	lsls	r2, r2, #31
 8006a3a:	f53f af56 	bmi.w	80068ea <_realloc_r+0x5a>
 8006a3e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006a42:	eba7 0b02 	sub.w	fp, r7, r2
 8006a46:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a4a:	f022 0203 	bic.w	r2, r2, #3
 8006a4e:	4491      	add	r9, r2
 8006a50:	4548      	cmp	r0, r9
 8006a52:	dc87      	bgt.n	8006964 <_realloc_r+0xd4>
 8006a54:	46da      	mov	sl, fp
 8006a56:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006a5a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006a5e:	1f32      	subs	r2, r6, #4
 8006a60:	2a24      	cmp	r2, #36	; 0x24
 8006a62:	60c1      	str	r1, [r0, #12]
 8006a64:	6088      	str	r0, [r1, #8]
 8006a66:	f200 80a1 	bhi.w	8006bac <_realloc_r+0x31c>
 8006a6a:	2a13      	cmp	r2, #19
 8006a6c:	6829      	ldr	r1, [r5, #0]
 8006a6e:	f240 809b 	bls.w	8006ba8 <_realloc_r+0x318>
 8006a72:	f8cb 1008 	str.w	r1, [fp, #8]
 8006a76:	6869      	ldr	r1, [r5, #4]
 8006a78:	f8cb 100c 	str.w	r1, [fp, #12]
 8006a7c:	2a1b      	cmp	r2, #27
 8006a7e:	68a9      	ldr	r1, [r5, #8]
 8006a80:	f200 809b 	bhi.w	8006bba <_realloc_r+0x32a>
 8006a84:	f10b 0210 	add.w	r2, fp, #16
 8006a88:	3508      	adds	r5, #8
 8006a8a:	6011      	str	r1, [r2, #0]
 8006a8c:	6869      	ldr	r1, [r5, #4]
 8006a8e:	6051      	str	r1, [r2, #4]
 8006a90:	68a9      	ldr	r1, [r5, #8]
 8006a92:	6091      	str	r1, [r2, #8]
 8006a94:	eb0b 0104 	add.w	r1, fp, r4
 8006a98:	eba9 0204 	sub.w	r2, r9, r4
 8006a9c:	f042 0201 	orr.w	r2, r2, #1
 8006aa0:	6099      	str	r1, [r3, #8]
 8006aa2:	604a      	str	r2, [r1, #4]
 8006aa4:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006aa8:	f003 0301 	and.w	r3, r3, #1
 8006aac:	431c      	orrs	r4, r3
 8006aae:	4640      	mov	r0, r8
 8006ab0:	f8cb 4004 	str.w	r4, [fp, #4]
 8006ab4:	f7ff fbdc 	bl	8006270 <__malloc_unlock>
 8006ab8:	e78e      	b.n	80069d8 <_realloc_r+0x148>
 8006aba:	07d3      	lsls	r3, r2, #31
 8006abc:	f53f af15 	bmi.w	80068ea <_realloc_r+0x5a>
 8006ac0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006ac4:	eba7 0b03 	sub.w	fp, r7, r3
 8006ac8:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006acc:	f022 0203 	bic.w	r2, r2, #3
 8006ad0:	4410      	add	r0, r2
 8006ad2:	1983      	adds	r3, r0, r6
 8006ad4:	428b      	cmp	r3, r1
 8006ad6:	f6ff af45 	blt.w	8006964 <_realloc_r+0xd4>
 8006ada:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006ade:	46da      	mov	sl, fp
 8006ae0:	60ca      	str	r2, [r1, #12]
 8006ae2:	6091      	str	r1, [r2, #8]
 8006ae4:	e742      	b.n	800696c <_realloc_r+0xdc>
 8006ae6:	6001      	str	r1, [r0, #0]
 8006ae8:	686b      	ldr	r3, [r5, #4]
 8006aea:	6043      	str	r3, [r0, #4]
 8006aec:	2a1b      	cmp	r2, #27
 8006aee:	d83a      	bhi.n	8006b66 <_realloc_r+0x2d6>
 8006af0:	f105 0208 	add.w	r2, r5, #8
 8006af4:	f100 0308 	add.w	r3, r0, #8
 8006af8:	68a9      	ldr	r1, [r5, #8]
 8006afa:	e710      	b.n	800691e <_realloc_r+0x8e>
 8006afc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006b00:	f023 0303 	bic.w	r3, r3, #3
 8006b04:	441e      	add	r6, r3
 8006b06:	eb07 0906 	add.w	r9, r7, r6
 8006b0a:	e753      	b.n	80069b4 <_realloc_r+0x124>
 8006b0c:	4652      	mov	r2, sl
 8006b0e:	e749      	b.n	80069a4 <_realloc_r+0x114>
 8006b10:	4629      	mov	r1, r5
 8006b12:	4650      	mov	r0, sl
 8006b14:	461e      	mov	r6, r3
 8006b16:	465f      	mov	r7, fp
 8006b18:	f7ff fb40 	bl	800619c <memmove>
 8006b1c:	4655      	mov	r5, sl
 8006b1e:	e749      	b.n	80069b4 <_realloc_r+0x124>
 8006b20:	4629      	mov	r1, r5
 8006b22:	f7ff fb3b 	bl	800619c <memmove>
 8006b26:	e6ff      	b.n	8006928 <_realloc_r+0x98>
 8006b28:	4427      	add	r7, r4
 8006b2a:	eba9 0904 	sub.w	r9, r9, r4
 8006b2e:	f049 0201 	orr.w	r2, r9, #1
 8006b32:	609f      	str	r7, [r3, #8]
 8006b34:	607a      	str	r2, [r7, #4]
 8006b36:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006b3a:	f003 0301 	and.w	r3, r3, #1
 8006b3e:	431c      	orrs	r4, r3
 8006b40:	4640      	mov	r0, r8
 8006b42:	f845 4c04 	str.w	r4, [r5, #-4]
 8006b46:	f7ff fb93 	bl	8006270 <__malloc_unlock>
 8006b4a:	46aa      	mov	sl, r5
 8006b4c:	e744      	b.n	80069d8 <_realloc_r+0x148>
 8006b4e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006b52:	68e9      	ldr	r1, [r5, #12]
 8006b54:	f8cb 1014 	str.w	r1, [fp, #20]
 8006b58:	2a24      	cmp	r2, #36	; 0x24
 8006b5a:	d010      	beq.n	8006b7e <_realloc_r+0x2ee>
 8006b5c:	6929      	ldr	r1, [r5, #16]
 8006b5e:	f10b 0218 	add.w	r2, fp, #24
 8006b62:	3510      	adds	r5, #16
 8006b64:	e71e      	b.n	80069a4 <_realloc_r+0x114>
 8006b66:	68ab      	ldr	r3, [r5, #8]
 8006b68:	6083      	str	r3, [r0, #8]
 8006b6a:	68eb      	ldr	r3, [r5, #12]
 8006b6c:	60c3      	str	r3, [r0, #12]
 8006b6e:	2a24      	cmp	r2, #36	; 0x24
 8006b70:	d010      	beq.n	8006b94 <_realloc_r+0x304>
 8006b72:	f105 0210 	add.w	r2, r5, #16
 8006b76:	f100 0310 	add.w	r3, r0, #16
 8006b7a:	6929      	ldr	r1, [r5, #16]
 8006b7c:	e6cf      	b.n	800691e <_realloc_r+0x8e>
 8006b7e:	692a      	ldr	r2, [r5, #16]
 8006b80:	f8cb 2018 	str.w	r2, [fp, #24]
 8006b84:	696a      	ldr	r2, [r5, #20]
 8006b86:	f8cb 201c 	str.w	r2, [fp, #28]
 8006b8a:	69a9      	ldr	r1, [r5, #24]
 8006b8c:	f10b 0220 	add.w	r2, fp, #32
 8006b90:	3518      	adds	r5, #24
 8006b92:	e707      	b.n	80069a4 <_realloc_r+0x114>
 8006b94:	692b      	ldr	r3, [r5, #16]
 8006b96:	6103      	str	r3, [r0, #16]
 8006b98:	696b      	ldr	r3, [r5, #20]
 8006b9a:	6143      	str	r3, [r0, #20]
 8006b9c:	69a9      	ldr	r1, [r5, #24]
 8006b9e:	f105 0218 	add.w	r2, r5, #24
 8006ba2:	f100 0318 	add.w	r3, r0, #24
 8006ba6:	e6ba      	b.n	800691e <_realloc_r+0x8e>
 8006ba8:	4652      	mov	r2, sl
 8006baa:	e76e      	b.n	8006a8a <_realloc_r+0x1fa>
 8006bac:	4629      	mov	r1, r5
 8006bae:	4650      	mov	r0, sl
 8006bb0:	9301      	str	r3, [sp, #4]
 8006bb2:	f7ff faf3 	bl	800619c <memmove>
 8006bb6:	9b01      	ldr	r3, [sp, #4]
 8006bb8:	e76c      	b.n	8006a94 <_realloc_r+0x204>
 8006bba:	f8cb 1010 	str.w	r1, [fp, #16]
 8006bbe:	68e9      	ldr	r1, [r5, #12]
 8006bc0:	f8cb 1014 	str.w	r1, [fp, #20]
 8006bc4:	2a24      	cmp	r2, #36	; 0x24
 8006bc6:	d004      	beq.n	8006bd2 <_realloc_r+0x342>
 8006bc8:	6929      	ldr	r1, [r5, #16]
 8006bca:	f10b 0218 	add.w	r2, fp, #24
 8006bce:	3510      	adds	r5, #16
 8006bd0:	e75b      	b.n	8006a8a <_realloc_r+0x1fa>
 8006bd2:	692a      	ldr	r2, [r5, #16]
 8006bd4:	f8cb 2018 	str.w	r2, [fp, #24]
 8006bd8:	696a      	ldr	r2, [r5, #20]
 8006bda:	f8cb 201c 	str.w	r2, [fp, #28]
 8006bde:	69a9      	ldr	r1, [r5, #24]
 8006be0:	f10b 0220 	add.w	r2, fp, #32
 8006be4:	3518      	adds	r5, #24
 8006be6:	e750      	b.n	8006a8a <_realloc_r+0x1fa>
 8006be8:	2000044c 	.word	0x2000044c

08006bec <frexp>:
 8006bec:	ec53 2b10 	vmov	r2, r3, d0
 8006bf0:	b570      	push	{r4, r5, r6, lr}
 8006bf2:	4e16      	ldr	r6, [pc, #88]	; (8006c4c <frexp+0x60>)
 8006bf4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006bf8:	2500      	movs	r5, #0
 8006bfa:	42b1      	cmp	r1, r6
 8006bfc:	4604      	mov	r4, r0
 8006bfe:	6005      	str	r5, [r0, #0]
 8006c00:	dc21      	bgt.n	8006c46 <frexp+0x5a>
 8006c02:	ee10 6a10 	vmov	r6, s0
 8006c06:	430e      	orrs	r6, r1
 8006c08:	d01d      	beq.n	8006c46 <frexp+0x5a>
 8006c0a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006c0e:	4618      	mov	r0, r3
 8006c10:	da0c      	bge.n	8006c2c <frexp+0x40>
 8006c12:	4619      	mov	r1, r3
 8006c14:	2200      	movs	r2, #0
 8006c16:	ee10 0a10 	vmov	r0, s0
 8006c1a:	4b0d      	ldr	r3, [pc, #52]	; (8006c50 <frexp+0x64>)
 8006c1c:	f7f9 ff8c 	bl	8000b38 <__aeabi_dmul>
 8006c20:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006c24:	4602      	mov	r2, r0
 8006c26:	4608      	mov	r0, r1
 8006c28:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006c2c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006c30:	1509      	asrs	r1, r1, #20
 8006c32:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006c36:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006c3a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006c3e:	4429      	add	r1, r5
 8006c40:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006c44:	6021      	str	r1, [r4, #0]
 8006c46:	ec43 2b10 	vmov	d0, r2, r3
 8006c4a:	bd70      	pop	{r4, r5, r6, pc}
 8006c4c:	7fefffff 	.word	0x7fefffff
 8006c50:	43500000 	.word	0x43500000

08006c54 <_sbrk_r>:
 8006c54:	b538      	push	{r3, r4, r5, lr}
 8006c56:	4c07      	ldr	r4, [pc, #28]	; (8006c74 <_sbrk_r+0x20>)
 8006c58:	2300      	movs	r3, #0
 8006c5a:	4605      	mov	r5, r0
 8006c5c:	4608      	mov	r0, r1
 8006c5e:	6023      	str	r3, [r4, #0]
 8006c60:	f7fb fc31 	bl	80024c6 <_sbrk>
 8006c64:	1c43      	adds	r3, r0, #1
 8006c66:	d000      	beq.n	8006c6a <_sbrk_r+0x16>
 8006c68:	bd38      	pop	{r3, r4, r5, pc}
 8006c6a:	6823      	ldr	r3, [r4, #0]
 8006c6c:	2b00      	cmp	r3, #0
 8006c6e:	d0fb      	beq.n	8006c68 <_sbrk_r+0x14>
 8006c70:	602b      	str	r3, [r5, #0]
 8006c72:	bd38      	pop	{r3, r4, r5, pc}
 8006c74:	20001158 	.word	0x20001158

08006c78 <__sread>:
 8006c78:	b510      	push	{r4, lr}
 8006c7a:	460c      	mov	r4, r1
 8006c7c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c80:	f000 fabc 	bl	80071fc <_read_r>
 8006c84:	2800      	cmp	r0, #0
 8006c86:	db03      	blt.n	8006c90 <__sread+0x18>
 8006c88:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006c8a:	4403      	add	r3, r0
 8006c8c:	6523      	str	r3, [r4, #80]	; 0x50
 8006c8e:	bd10      	pop	{r4, pc}
 8006c90:	89a3      	ldrh	r3, [r4, #12]
 8006c92:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006c96:	81a3      	strh	r3, [r4, #12]
 8006c98:	bd10      	pop	{r4, pc}
 8006c9a:	bf00      	nop

08006c9c <__swrite>:
 8006c9c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006ca0:	4616      	mov	r6, r2
 8006ca2:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006ca6:	461f      	mov	r7, r3
 8006ca8:	05d3      	lsls	r3, r2, #23
 8006caa:	460c      	mov	r4, r1
 8006cac:	4605      	mov	r5, r0
 8006cae:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006cb2:	d507      	bpl.n	8006cc4 <__swrite+0x28>
 8006cb4:	2200      	movs	r2, #0
 8006cb6:	2302      	movs	r3, #2
 8006cb8:	f000 fa74 	bl	80071a4 <_lseek_r>
 8006cbc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006cc0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006cc4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006cc8:	81a2      	strh	r2, [r4, #12]
 8006cca:	463b      	mov	r3, r7
 8006ccc:	4632      	mov	r2, r6
 8006cce:	4628      	mov	r0, r5
 8006cd0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006cd4:	f000 b88c 	b.w	8006df0 <_write_r>

08006cd8 <__sseek>:
 8006cd8:	b510      	push	{r4, lr}
 8006cda:	460c      	mov	r4, r1
 8006cdc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ce0:	f000 fa60 	bl	80071a4 <_lseek_r>
 8006ce4:	89a3      	ldrh	r3, [r4, #12]
 8006ce6:	1c42      	adds	r2, r0, #1
 8006ce8:	bf0e      	itee	eq
 8006cea:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006cee:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006cf2:	6520      	strne	r0, [r4, #80]	; 0x50
 8006cf4:	81a3      	strh	r3, [r4, #12]
 8006cf6:	bd10      	pop	{r4, pc}

08006cf8 <__sclose>:
 8006cf8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006cfc:	f000 b922 	b.w	8006f44 <_close_r>

08006d00 <strncpy>:
 8006d00:	ea40 0301 	orr.w	r3, r0, r1
 8006d04:	079b      	lsls	r3, r3, #30
 8006d06:	b470      	push	{r4, r5, r6}
 8006d08:	d12a      	bne.n	8006d60 <strncpy+0x60>
 8006d0a:	2a03      	cmp	r2, #3
 8006d0c:	d928      	bls.n	8006d60 <strncpy+0x60>
 8006d0e:	460c      	mov	r4, r1
 8006d10:	4603      	mov	r3, r0
 8006d12:	4621      	mov	r1, r4
 8006d14:	f854 6b04 	ldr.w	r6, [r4], #4
 8006d18:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006d1c:	ea25 0506 	bic.w	r5, r5, r6
 8006d20:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006d24:	d106      	bne.n	8006d34 <strncpy+0x34>
 8006d26:	3a04      	subs	r2, #4
 8006d28:	2a03      	cmp	r2, #3
 8006d2a:	f843 6b04 	str.w	r6, [r3], #4
 8006d2e:	4621      	mov	r1, r4
 8006d30:	d8ef      	bhi.n	8006d12 <strncpy+0x12>
 8006d32:	b19a      	cbz	r2, 8006d5c <strncpy+0x5c>
 8006d34:	780c      	ldrb	r4, [r1, #0]
 8006d36:	701c      	strb	r4, [r3, #0]
 8006d38:	3a01      	subs	r2, #1
 8006d3a:	3301      	adds	r3, #1
 8006d3c:	b13c      	cbz	r4, 8006d4e <strncpy+0x4e>
 8006d3e:	b16a      	cbz	r2, 8006d5c <strncpy+0x5c>
 8006d40:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006d44:	f803 4b01 	strb.w	r4, [r3], #1
 8006d48:	3a01      	subs	r2, #1
 8006d4a:	2c00      	cmp	r4, #0
 8006d4c:	d1f7      	bne.n	8006d3e <strncpy+0x3e>
 8006d4e:	b12a      	cbz	r2, 8006d5c <strncpy+0x5c>
 8006d50:	441a      	add	r2, r3
 8006d52:	2100      	movs	r1, #0
 8006d54:	f803 1b01 	strb.w	r1, [r3], #1
 8006d58:	4293      	cmp	r3, r2
 8006d5a:	d1fb      	bne.n	8006d54 <strncpy+0x54>
 8006d5c:	bc70      	pop	{r4, r5, r6}
 8006d5e:	4770      	bx	lr
 8006d60:	4603      	mov	r3, r0
 8006d62:	e7e6      	b.n	8006d32 <strncpy+0x32>

08006d64 <__sprint_r.part.0>:
 8006d64:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006d68:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006d6a:	049c      	lsls	r4, r3, #18
 8006d6c:	4692      	mov	sl, r2
 8006d6e:	d52d      	bpl.n	8006dcc <__sprint_r.part.0+0x68>
 8006d70:	6893      	ldr	r3, [r2, #8]
 8006d72:	6812      	ldr	r2, [r2, #0]
 8006d74:	b343      	cbz	r3, 8006dc8 <__sprint_r.part.0+0x64>
 8006d76:	460e      	mov	r6, r1
 8006d78:	4607      	mov	r7, r0
 8006d7a:	f102 0908 	add.w	r9, r2, #8
 8006d7e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006d82:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006d86:	d015      	beq.n	8006db4 <__sprint_r.part.0+0x50>
 8006d88:	3d04      	subs	r5, #4
 8006d8a:	2400      	movs	r4, #0
 8006d8c:	e001      	b.n	8006d92 <__sprint_r.part.0+0x2e>
 8006d8e:	45a0      	cmp	r8, r4
 8006d90:	d00e      	beq.n	8006db0 <__sprint_r.part.0+0x4c>
 8006d92:	4632      	mov	r2, r6
 8006d94:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006d98:	4638      	mov	r0, r7
 8006d9a:	f000 f99d 	bl	80070d8 <_fputwc_r>
 8006d9e:	1c43      	adds	r3, r0, #1
 8006da0:	f104 0401 	add.w	r4, r4, #1
 8006da4:	d1f3      	bne.n	8006d8e <__sprint_r.part.0+0x2a>
 8006da6:	2300      	movs	r3, #0
 8006da8:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006dac:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006db0:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006db4:	f02b 0b03 	bic.w	fp, fp, #3
 8006db8:	eba3 030b 	sub.w	r3, r3, fp
 8006dbc:	f8ca 3008 	str.w	r3, [sl, #8]
 8006dc0:	f109 0908 	add.w	r9, r9, #8
 8006dc4:	2b00      	cmp	r3, #0
 8006dc6:	d1da      	bne.n	8006d7e <__sprint_r.part.0+0x1a>
 8006dc8:	2000      	movs	r0, #0
 8006dca:	e7ec      	b.n	8006da6 <__sprint_r.part.0+0x42>
 8006dcc:	f7fe fd0c 	bl	80057e8 <__sfvwrite_r>
 8006dd0:	2300      	movs	r3, #0
 8006dd2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006dd6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006dda:	bf00      	nop

08006ddc <__sprint_r>:
 8006ddc:	6893      	ldr	r3, [r2, #8]
 8006dde:	b10b      	cbz	r3, 8006de4 <__sprint_r+0x8>
 8006de0:	f7ff bfc0 	b.w	8006d64 <__sprint_r.part.0>
 8006de4:	b410      	push	{r4}
 8006de6:	4618      	mov	r0, r3
 8006de8:	6053      	str	r3, [r2, #4]
 8006dea:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006dee:	4770      	bx	lr

08006df0 <_write_r>:
 8006df0:	b570      	push	{r4, r5, r6, lr}
 8006df2:	460d      	mov	r5, r1
 8006df4:	4c08      	ldr	r4, [pc, #32]	; (8006e18 <_write_r+0x28>)
 8006df6:	4611      	mov	r1, r2
 8006df8:	4606      	mov	r6, r0
 8006dfa:	461a      	mov	r2, r3
 8006dfc:	4628      	mov	r0, r5
 8006dfe:	2300      	movs	r3, #0
 8006e00:	6023      	str	r3, [r4, #0]
 8006e02:	f7fb fb4d 	bl	80024a0 <_write>
 8006e06:	1c43      	adds	r3, r0, #1
 8006e08:	d000      	beq.n	8006e0c <_write_r+0x1c>
 8006e0a:	bd70      	pop	{r4, r5, r6, pc}
 8006e0c:	6823      	ldr	r3, [r4, #0]
 8006e0e:	2b00      	cmp	r3, #0
 8006e10:	d0fb      	beq.n	8006e0a <_write_r+0x1a>
 8006e12:	6033      	str	r3, [r6, #0]
 8006e14:	bd70      	pop	{r4, r5, r6, pc}
 8006e16:	bf00      	nop
 8006e18:	20001158 	.word	0x20001158

08006e1c <__register_exitproc>:
 8006e1c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006e20:	4d2b      	ldr	r5, [pc, #172]	; (8006ed0 <__register_exitproc+0xb4>)
 8006e22:	4606      	mov	r6, r0
 8006e24:	6828      	ldr	r0, [r5, #0]
 8006e26:	4698      	mov	r8, r3
 8006e28:	460f      	mov	r7, r1
 8006e2a:	4691      	mov	r9, r2
 8006e2c:	f7fe fe96 	bl	8005b5c <__retarget_lock_acquire_recursive>
 8006e30:	4b28      	ldr	r3, [pc, #160]	; (8006ed4 <__register_exitproc+0xb8>)
 8006e32:	681c      	ldr	r4, [r3, #0]
 8006e34:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006e38:	2b00      	cmp	r3, #0
 8006e3a:	d03d      	beq.n	8006eb8 <__register_exitproc+0x9c>
 8006e3c:	685a      	ldr	r2, [r3, #4]
 8006e3e:	2a1f      	cmp	r2, #31
 8006e40:	dc0d      	bgt.n	8006e5e <__register_exitproc+0x42>
 8006e42:	f102 0c01 	add.w	ip, r2, #1
 8006e46:	bb16      	cbnz	r6, 8006e8e <__register_exitproc+0x72>
 8006e48:	3202      	adds	r2, #2
 8006e4a:	f8c3 c004 	str.w	ip, [r3, #4]
 8006e4e:	6828      	ldr	r0, [r5, #0]
 8006e50:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006e54:	f7fe fe84 	bl	8005b60 <__retarget_lock_release_recursive>
 8006e58:	2000      	movs	r0, #0
 8006e5a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006e5e:	4b1e      	ldr	r3, [pc, #120]	; (8006ed8 <__register_exitproc+0xbc>)
 8006e60:	b37b      	cbz	r3, 8006ec2 <__register_exitproc+0xa6>
 8006e62:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006e66:	f3af 8000 	nop.w
 8006e6a:	4603      	mov	r3, r0
 8006e6c:	b348      	cbz	r0, 8006ec2 <__register_exitproc+0xa6>
 8006e6e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006e72:	2100      	movs	r1, #0
 8006e74:	e9c0 2100 	strd	r2, r1, [r0]
 8006e78:	f04f 0c01 	mov.w	ip, #1
 8006e7c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006e80:	460a      	mov	r2, r1
 8006e82:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006e86:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006e8a:	2e00      	cmp	r6, #0
 8006e8c:	d0dc      	beq.n	8006e48 <__register_exitproc+0x2c>
 8006e8e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006e92:	2401      	movs	r4, #1
 8006e94:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006e98:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006e9c:	4094      	lsls	r4, r2
 8006e9e:	4320      	orrs	r0, r4
 8006ea0:	2e02      	cmp	r6, #2
 8006ea2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006ea6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006eaa:	d1cd      	bne.n	8006e48 <__register_exitproc+0x2c>
 8006eac:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006eb0:	430c      	orrs	r4, r1
 8006eb2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006eb6:	e7c7      	b.n	8006e48 <__register_exitproc+0x2c>
 8006eb8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006ebc:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006ec0:	e7bc      	b.n	8006e3c <__register_exitproc+0x20>
 8006ec2:	6828      	ldr	r0, [r5, #0]
 8006ec4:	f7fe fe4c 	bl	8005b60 <__retarget_lock_release_recursive>
 8006ec8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ecc:	e7c5      	b.n	8006e5a <__register_exitproc+0x3e>
 8006ece:	bf00      	nop
 8006ed0:	20000448 	.word	0x20000448
 8006ed4:	08007ab0 	.word	0x08007ab0
 8006ed8:	00000000 	.word	0x00000000

08006edc <_calloc_r>:
 8006edc:	b510      	push	{r4, lr}
 8006ede:	fb02 f101 	mul.w	r1, r2, r1
 8006ee2:	f7fe feb7 	bl	8005c54 <_malloc_r>
 8006ee6:	4604      	mov	r4, r0
 8006ee8:	b1d8      	cbz	r0, 8006f22 <_calloc_r+0x46>
 8006eea:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006eee:	f022 0203 	bic.w	r2, r2, #3
 8006ef2:	3a04      	subs	r2, #4
 8006ef4:	2a24      	cmp	r2, #36	; 0x24
 8006ef6:	d81d      	bhi.n	8006f34 <_calloc_r+0x58>
 8006ef8:	2a13      	cmp	r2, #19
 8006efa:	d914      	bls.n	8006f26 <_calloc_r+0x4a>
 8006efc:	2300      	movs	r3, #0
 8006efe:	2a1b      	cmp	r2, #27
 8006f00:	e9c0 3300 	strd	r3, r3, [r0]
 8006f04:	d91b      	bls.n	8006f3e <_calloc_r+0x62>
 8006f06:	2a24      	cmp	r2, #36	; 0x24
 8006f08:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006f0c:	bf0a      	itet	eq
 8006f0e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006f12:	f100 0210 	addne.w	r2, r0, #16
 8006f16:	f100 0218 	addeq.w	r2, r0, #24
 8006f1a:	2300      	movs	r3, #0
 8006f1c:	e9c2 3300 	strd	r3, r3, [r2]
 8006f20:	6093      	str	r3, [r2, #8]
 8006f22:	4620      	mov	r0, r4
 8006f24:	bd10      	pop	{r4, pc}
 8006f26:	4602      	mov	r2, r0
 8006f28:	2300      	movs	r3, #0
 8006f2a:	e9c2 3300 	strd	r3, r3, [r2]
 8006f2e:	6093      	str	r3, [r2, #8]
 8006f30:	4620      	mov	r0, r4
 8006f32:	bd10      	pop	{r4, pc}
 8006f34:	2100      	movs	r1, #0
 8006f36:	f7fb fb6d 	bl	8002614 <memset>
 8006f3a:	4620      	mov	r0, r4
 8006f3c:	bd10      	pop	{r4, pc}
 8006f3e:	f100 0208 	add.w	r2, r0, #8
 8006f42:	e7f1      	b.n	8006f28 <_calloc_r+0x4c>

08006f44 <_close_r>:
 8006f44:	b538      	push	{r3, r4, r5, lr}
 8006f46:	4c07      	ldr	r4, [pc, #28]	; (8006f64 <_close_r+0x20>)
 8006f48:	2300      	movs	r3, #0
 8006f4a:	4605      	mov	r5, r0
 8006f4c:	4608      	mov	r0, r1
 8006f4e:	6023      	str	r3, [r4, #0]
 8006f50:	f7fb fad5 	bl	80024fe <_close>
 8006f54:	1c43      	adds	r3, r0, #1
 8006f56:	d000      	beq.n	8006f5a <_close_r+0x16>
 8006f58:	bd38      	pop	{r3, r4, r5, pc}
 8006f5a:	6823      	ldr	r3, [r4, #0]
 8006f5c:	2b00      	cmp	r3, #0
 8006f5e:	d0fb      	beq.n	8006f58 <_close_r+0x14>
 8006f60:	602b      	str	r3, [r5, #0]
 8006f62:	bd38      	pop	{r3, r4, r5, pc}
 8006f64:	20001158 	.word	0x20001158

08006f68 <_fclose_r>:
 8006f68:	b570      	push	{r4, r5, r6, lr}
 8006f6a:	2900      	cmp	r1, #0
 8006f6c:	d048      	beq.n	8007000 <_fclose_r+0x98>
 8006f6e:	4605      	mov	r5, r0
 8006f70:	460c      	mov	r4, r1
 8006f72:	b110      	cbz	r0, 8006f7a <_fclose_r+0x12>
 8006f74:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f76:	2b00      	cmp	r3, #0
 8006f78:	d048      	beq.n	800700c <_fclose_r+0xa4>
 8006f7a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f7c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f80:	07d0      	lsls	r0, r2, #31
 8006f82:	d440      	bmi.n	8007006 <_fclose_r+0x9e>
 8006f84:	0599      	lsls	r1, r3, #22
 8006f86:	d530      	bpl.n	8006fea <_fclose_r+0x82>
 8006f88:	4621      	mov	r1, r4
 8006f8a:	4628      	mov	r0, r5
 8006f8c:	f7fe f990 	bl	80052b0 <__sflush_r>
 8006f90:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006f92:	4606      	mov	r6, r0
 8006f94:	b133      	cbz	r3, 8006fa4 <_fclose_r+0x3c>
 8006f96:	69e1      	ldr	r1, [r4, #28]
 8006f98:	4628      	mov	r0, r5
 8006f9a:	4798      	blx	r3
 8006f9c:	2800      	cmp	r0, #0
 8006f9e:	bfb8      	it	lt
 8006fa0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006fa4:	89a3      	ldrh	r3, [r4, #12]
 8006fa6:	061a      	lsls	r2, r3, #24
 8006fa8:	d43c      	bmi.n	8007024 <_fclose_r+0xbc>
 8006faa:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006fac:	b141      	cbz	r1, 8006fc0 <_fclose_r+0x58>
 8006fae:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006fb2:	4299      	cmp	r1, r3
 8006fb4:	d002      	beq.n	8006fbc <_fclose_r+0x54>
 8006fb6:	4628      	mov	r0, r5
 8006fb8:	f7fe fb22 	bl	8005600 <_free_r>
 8006fbc:	2300      	movs	r3, #0
 8006fbe:	6323      	str	r3, [r4, #48]	; 0x30
 8006fc0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006fc2:	b121      	cbz	r1, 8006fce <_fclose_r+0x66>
 8006fc4:	4628      	mov	r0, r5
 8006fc6:	f7fe fb1b 	bl	8005600 <_free_r>
 8006fca:	2300      	movs	r3, #0
 8006fcc:	6463      	str	r3, [r4, #68]	; 0x44
 8006fce:	f7fe faa1 	bl	8005514 <__sfp_lock_acquire>
 8006fd2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006fd4:	2200      	movs	r2, #0
 8006fd6:	07db      	lsls	r3, r3, #31
 8006fd8:	81a2      	strh	r2, [r4, #12]
 8006fda:	d51f      	bpl.n	800701c <_fclose_r+0xb4>
 8006fdc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fde:	f7fe fdbb 	bl	8005b58 <__retarget_lock_close_recursive>
 8006fe2:	f7fe fa9d 	bl	8005520 <__sfp_lock_release>
 8006fe6:	4630      	mov	r0, r6
 8006fe8:	bd70      	pop	{r4, r5, r6, pc}
 8006fea:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fec:	f7fe fdb6 	bl	8005b5c <__retarget_lock_acquire_recursive>
 8006ff0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ff4:	2b00      	cmp	r3, #0
 8006ff6:	d1c7      	bne.n	8006f88 <_fclose_r+0x20>
 8006ff8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006ffa:	f016 0601 	ands.w	r6, r6, #1
 8006ffe:	d016      	beq.n	800702e <_fclose_r+0xc6>
 8007000:	2600      	movs	r6, #0
 8007002:	4630      	mov	r0, r6
 8007004:	bd70      	pop	{r4, r5, r6, pc}
 8007006:	2b00      	cmp	r3, #0
 8007008:	d0fa      	beq.n	8007000 <_fclose_r+0x98>
 800700a:	e7bd      	b.n	8006f88 <_fclose_r+0x20>
 800700c:	f7fe fa56 	bl	80054bc <__sinit>
 8007010:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007012:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007016:	07d0      	lsls	r0, r2, #31
 8007018:	d4f5      	bmi.n	8007006 <_fclose_r+0x9e>
 800701a:	e7b3      	b.n	8006f84 <_fclose_r+0x1c>
 800701c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800701e:	f7fe fd9f 	bl	8005b60 <__retarget_lock_release_recursive>
 8007022:	e7db      	b.n	8006fdc <_fclose_r+0x74>
 8007024:	6921      	ldr	r1, [r4, #16]
 8007026:	4628      	mov	r0, r5
 8007028:	f7fe faea 	bl	8005600 <_free_r>
 800702c:	e7bd      	b.n	8006faa <_fclose_r+0x42>
 800702e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007030:	f7fe fd96 	bl	8005b60 <__retarget_lock_release_recursive>
 8007034:	4630      	mov	r0, r6
 8007036:	bd70      	pop	{r4, r5, r6, pc}

08007038 <__fputwc>:
 8007038:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800703c:	b082      	sub	sp, #8
 800703e:	4681      	mov	r9, r0
 8007040:	4688      	mov	r8, r1
 8007042:	4614      	mov	r4, r2
 8007044:	f000 f8a0 	bl	8007188 <__locale_mb_cur_max>
 8007048:	2801      	cmp	r0, #1
 800704a:	d103      	bne.n	8007054 <__fputwc+0x1c>
 800704c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007050:	2bfe      	cmp	r3, #254	; 0xfe
 8007052:	d933      	bls.n	80070bc <__fputwc+0x84>
 8007054:	4642      	mov	r2, r8
 8007056:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800705a:	a901      	add	r1, sp, #4
 800705c:	4648      	mov	r0, r9
 800705e:	f000 f93b 	bl	80072d8 <_wcrtomb_r>
 8007062:	1c42      	adds	r2, r0, #1
 8007064:	4606      	mov	r6, r0
 8007066:	d02f      	beq.n	80070c8 <__fputwc+0x90>
 8007068:	b320      	cbz	r0, 80070b4 <__fputwc+0x7c>
 800706a:	f89d c004 	ldrb.w	ip, [sp, #4]
 800706e:	2500      	movs	r5, #0
 8007070:	f10d 0a04 	add.w	sl, sp, #4
 8007074:	e009      	b.n	800708a <__fputwc+0x52>
 8007076:	6823      	ldr	r3, [r4, #0]
 8007078:	1c5a      	adds	r2, r3, #1
 800707a:	6022      	str	r2, [r4, #0]
 800707c:	f883 c000 	strb.w	ip, [r3]
 8007080:	3501      	adds	r5, #1
 8007082:	42b5      	cmp	r5, r6
 8007084:	d216      	bcs.n	80070b4 <__fputwc+0x7c>
 8007086:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800708a:	68a3      	ldr	r3, [r4, #8]
 800708c:	3b01      	subs	r3, #1
 800708e:	2b00      	cmp	r3, #0
 8007090:	60a3      	str	r3, [r4, #8]
 8007092:	daf0      	bge.n	8007076 <__fputwc+0x3e>
 8007094:	69a7      	ldr	r7, [r4, #24]
 8007096:	42bb      	cmp	r3, r7
 8007098:	4661      	mov	r1, ip
 800709a:	4622      	mov	r2, r4
 800709c:	4648      	mov	r0, r9
 800709e:	db02      	blt.n	80070a6 <__fputwc+0x6e>
 80070a0:	f1bc 0f0a 	cmp.w	ip, #10
 80070a4:	d1e7      	bne.n	8007076 <__fputwc+0x3e>
 80070a6:	f000 f8bf 	bl	8007228 <__swbuf_r>
 80070aa:	1c43      	adds	r3, r0, #1
 80070ac:	d1e8      	bne.n	8007080 <__fputwc+0x48>
 80070ae:	b002      	add	sp, #8
 80070b0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80070b4:	4640      	mov	r0, r8
 80070b6:	b002      	add	sp, #8
 80070b8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80070bc:	fa5f fc88 	uxtb.w	ip, r8
 80070c0:	4606      	mov	r6, r0
 80070c2:	f88d c004 	strb.w	ip, [sp, #4]
 80070c6:	e7d2      	b.n	800706e <__fputwc+0x36>
 80070c8:	89a3      	ldrh	r3, [r4, #12]
 80070ca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80070ce:	81a3      	strh	r3, [r4, #12]
 80070d0:	b002      	add	sp, #8
 80070d2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80070d6:	bf00      	nop

080070d8 <_fputwc_r>:
 80070d8:	b530      	push	{r4, r5, lr}
 80070da:	4605      	mov	r5, r0
 80070dc:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80070de:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80070e2:	07c0      	lsls	r0, r0, #31
 80070e4:	4614      	mov	r4, r2
 80070e6:	b083      	sub	sp, #12
 80070e8:	b29a      	uxth	r2, r3
 80070ea:	d401      	bmi.n	80070f0 <_fputwc_r+0x18>
 80070ec:	0590      	lsls	r0, r2, #22
 80070ee:	d51c      	bpl.n	800712a <_fputwc_r+0x52>
 80070f0:	0490      	lsls	r0, r2, #18
 80070f2:	d406      	bmi.n	8007102 <_fputwc_r+0x2a>
 80070f4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80070f6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80070fa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80070fe:	81a3      	strh	r3, [r4, #12]
 8007100:	6662      	str	r2, [r4, #100]	; 0x64
 8007102:	4628      	mov	r0, r5
 8007104:	4622      	mov	r2, r4
 8007106:	f7ff ff97 	bl	8007038 <__fputwc>
 800710a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800710c:	07da      	lsls	r2, r3, #31
 800710e:	4605      	mov	r5, r0
 8007110:	d402      	bmi.n	8007118 <_fputwc_r+0x40>
 8007112:	89a3      	ldrh	r3, [r4, #12]
 8007114:	059b      	lsls	r3, r3, #22
 8007116:	d502      	bpl.n	800711e <_fputwc_r+0x46>
 8007118:	4628      	mov	r0, r5
 800711a:	b003      	add	sp, #12
 800711c:	bd30      	pop	{r4, r5, pc}
 800711e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007120:	f7fe fd1e 	bl	8005b60 <__retarget_lock_release_recursive>
 8007124:	4628      	mov	r0, r5
 8007126:	b003      	add	sp, #12
 8007128:	bd30      	pop	{r4, r5, pc}
 800712a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800712c:	9101      	str	r1, [sp, #4]
 800712e:	f7fe fd15 	bl	8005b5c <__retarget_lock_acquire_recursive>
 8007132:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007136:	9901      	ldr	r1, [sp, #4]
 8007138:	b29a      	uxth	r2, r3
 800713a:	e7d9      	b.n	80070f0 <_fputwc_r+0x18>

0800713c <_fstat_r>:
 800713c:	b538      	push	{r3, r4, r5, lr}
 800713e:	460b      	mov	r3, r1
 8007140:	4c07      	ldr	r4, [pc, #28]	; (8007160 <_fstat_r+0x24>)
 8007142:	4605      	mov	r5, r0
 8007144:	4611      	mov	r1, r2
 8007146:	4618      	mov	r0, r3
 8007148:	2300      	movs	r3, #0
 800714a:	6023      	str	r3, [r4, #0]
 800714c:	f7fb f9da 	bl	8002504 <_fstat>
 8007150:	1c43      	adds	r3, r0, #1
 8007152:	d000      	beq.n	8007156 <_fstat_r+0x1a>
 8007154:	bd38      	pop	{r3, r4, r5, pc}
 8007156:	6823      	ldr	r3, [r4, #0]
 8007158:	2b00      	cmp	r3, #0
 800715a:	d0fb      	beq.n	8007154 <_fstat_r+0x18>
 800715c:	602b      	str	r3, [r5, #0]
 800715e:	bd38      	pop	{r3, r4, r5, pc}
 8007160:	20001158 	.word	0x20001158

08007164 <_isatty_r>:
 8007164:	b538      	push	{r3, r4, r5, lr}
 8007166:	4c07      	ldr	r4, [pc, #28]	; (8007184 <_isatty_r+0x20>)
 8007168:	2300      	movs	r3, #0
 800716a:	4605      	mov	r5, r0
 800716c:	4608      	mov	r0, r1
 800716e:	6023      	str	r3, [r4, #0]
 8007170:	f7fb f9cd 	bl	800250e <_isatty>
 8007174:	1c43      	adds	r3, r0, #1
 8007176:	d000      	beq.n	800717a <_isatty_r+0x16>
 8007178:	bd38      	pop	{r3, r4, r5, pc}
 800717a:	6823      	ldr	r3, [r4, #0]
 800717c:	2b00      	cmp	r3, #0
 800717e:	d0fb      	beq.n	8007178 <_isatty_r+0x14>
 8007180:	602b      	str	r3, [r5, #0]
 8007182:	bd38      	pop	{r3, r4, r5, pc}
 8007184:	20001158 	.word	0x20001158

08007188 <__locale_mb_cur_max>:
 8007188:	4b04      	ldr	r3, [pc, #16]	; (800719c <__locale_mb_cur_max+0x14>)
 800718a:	4a05      	ldr	r2, [pc, #20]	; (80071a0 <__locale_mb_cur_max+0x18>)
 800718c:	681b      	ldr	r3, [r3, #0]
 800718e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007190:	2b00      	cmp	r3, #0
 8007192:	bf08      	it	eq
 8007194:	4613      	moveq	r3, r2
 8007196:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800719a:	4770      	bx	lr
 800719c:	20000018 	.word	0x20000018
 80071a0:	2000085c 	.word	0x2000085c

080071a4 <_lseek_r>:
 80071a4:	b570      	push	{r4, r5, r6, lr}
 80071a6:	460d      	mov	r5, r1
 80071a8:	4c08      	ldr	r4, [pc, #32]	; (80071cc <_lseek_r+0x28>)
 80071aa:	4611      	mov	r1, r2
 80071ac:	4606      	mov	r6, r0
 80071ae:	461a      	mov	r2, r3
 80071b0:	4628      	mov	r0, r5
 80071b2:	2300      	movs	r3, #0
 80071b4:	6023      	str	r3, [r4, #0]
 80071b6:	f7fb f9ac 	bl	8002512 <_lseek>
 80071ba:	1c43      	adds	r3, r0, #1
 80071bc:	d000      	beq.n	80071c0 <_lseek_r+0x1c>
 80071be:	bd70      	pop	{r4, r5, r6, pc}
 80071c0:	6823      	ldr	r3, [r4, #0]
 80071c2:	2b00      	cmp	r3, #0
 80071c4:	d0fb      	beq.n	80071be <_lseek_r+0x1a>
 80071c6:	6033      	str	r3, [r6, #0]
 80071c8:	bd70      	pop	{r4, r5, r6, pc}
 80071ca:	bf00      	nop
 80071cc:	20001158 	.word	0x20001158

080071d0 <__ascii_mbtowc>:
 80071d0:	b082      	sub	sp, #8
 80071d2:	b149      	cbz	r1, 80071e8 <__ascii_mbtowc+0x18>
 80071d4:	b15a      	cbz	r2, 80071ee <__ascii_mbtowc+0x1e>
 80071d6:	b16b      	cbz	r3, 80071f4 <__ascii_mbtowc+0x24>
 80071d8:	7813      	ldrb	r3, [r2, #0]
 80071da:	600b      	str	r3, [r1, #0]
 80071dc:	7812      	ldrb	r2, [r2, #0]
 80071de:	1c10      	adds	r0, r2, #0
 80071e0:	bf18      	it	ne
 80071e2:	2001      	movne	r0, #1
 80071e4:	b002      	add	sp, #8
 80071e6:	4770      	bx	lr
 80071e8:	a901      	add	r1, sp, #4
 80071ea:	2a00      	cmp	r2, #0
 80071ec:	d1f3      	bne.n	80071d6 <__ascii_mbtowc+0x6>
 80071ee:	4610      	mov	r0, r2
 80071f0:	b002      	add	sp, #8
 80071f2:	4770      	bx	lr
 80071f4:	f06f 0001 	mvn.w	r0, #1
 80071f8:	e7f4      	b.n	80071e4 <__ascii_mbtowc+0x14>
 80071fa:	bf00      	nop

080071fc <_read_r>:
 80071fc:	b570      	push	{r4, r5, r6, lr}
 80071fe:	460d      	mov	r5, r1
 8007200:	4c08      	ldr	r4, [pc, #32]	; (8007224 <_read_r+0x28>)
 8007202:	4611      	mov	r1, r2
 8007204:	4606      	mov	r6, r0
 8007206:	461a      	mov	r2, r3
 8007208:	4628      	mov	r0, r5
 800720a:	2300      	movs	r3, #0
 800720c:	6023      	str	r3, [r4, #0]
 800720e:	f7fb f934 	bl	800247a <_read>
 8007212:	1c43      	adds	r3, r0, #1
 8007214:	d000      	beq.n	8007218 <_read_r+0x1c>
 8007216:	bd70      	pop	{r4, r5, r6, pc}
 8007218:	6823      	ldr	r3, [r4, #0]
 800721a:	2b00      	cmp	r3, #0
 800721c:	d0fb      	beq.n	8007216 <_read_r+0x1a>
 800721e:	6033      	str	r3, [r6, #0]
 8007220:	bd70      	pop	{r4, r5, r6, pc}
 8007222:	bf00      	nop
 8007224:	20001158 	.word	0x20001158

08007228 <__swbuf_r>:
 8007228:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800722a:	460d      	mov	r5, r1
 800722c:	4614      	mov	r4, r2
 800722e:	4606      	mov	r6, r0
 8007230:	b110      	cbz	r0, 8007238 <__swbuf_r+0x10>
 8007232:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007234:	2b00      	cmp	r3, #0
 8007236:	d043      	beq.n	80072c0 <__swbuf_r+0x98>
 8007238:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800723c:	69a3      	ldr	r3, [r4, #24]
 800723e:	60a3      	str	r3, [r4, #8]
 8007240:	b291      	uxth	r1, r2
 8007242:	0708      	lsls	r0, r1, #28
 8007244:	d51b      	bpl.n	800727e <__swbuf_r+0x56>
 8007246:	6923      	ldr	r3, [r4, #16]
 8007248:	b1cb      	cbz	r3, 800727e <__swbuf_r+0x56>
 800724a:	b2ed      	uxtb	r5, r5
 800724c:	0489      	lsls	r1, r1, #18
 800724e:	462f      	mov	r7, r5
 8007250:	d522      	bpl.n	8007298 <__swbuf_r+0x70>
 8007252:	6822      	ldr	r2, [r4, #0]
 8007254:	6961      	ldr	r1, [r4, #20]
 8007256:	1ad3      	subs	r3, r2, r3
 8007258:	4299      	cmp	r1, r3
 800725a:	dd29      	ble.n	80072b0 <__swbuf_r+0x88>
 800725c:	3301      	adds	r3, #1
 800725e:	68a1      	ldr	r1, [r4, #8]
 8007260:	1c50      	adds	r0, r2, #1
 8007262:	3901      	subs	r1, #1
 8007264:	60a1      	str	r1, [r4, #8]
 8007266:	6020      	str	r0, [r4, #0]
 8007268:	7015      	strb	r5, [r2, #0]
 800726a:	6962      	ldr	r2, [r4, #20]
 800726c:	429a      	cmp	r2, r3
 800726e:	d02a      	beq.n	80072c6 <__swbuf_r+0x9e>
 8007270:	89a3      	ldrh	r3, [r4, #12]
 8007272:	07db      	lsls	r3, r3, #31
 8007274:	d501      	bpl.n	800727a <__swbuf_r+0x52>
 8007276:	2d0a      	cmp	r5, #10
 8007278:	d025      	beq.n	80072c6 <__swbuf_r+0x9e>
 800727a:	4638      	mov	r0, r7
 800727c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800727e:	4621      	mov	r1, r4
 8007280:	4630      	mov	r0, r6
 8007282:	f7fc fffd 	bl	8004280 <__swsetup_r>
 8007286:	bb20      	cbnz	r0, 80072d2 <__swbuf_r+0xaa>
 8007288:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800728c:	6923      	ldr	r3, [r4, #16]
 800728e:	b291      	uxth	r1, r2
 8007290:	b2ed      	uxtb	r5, r5
 8007292:	0489      	lsls	r1, r1, #18
 8007294:	462f      	mov	r7, r5
 8007296:	d4dc      	bmi.n	8007252 <__swbuf_r+0x2a>
 8007298:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800729a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800729e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80072a2:	81a2      	strh	r2, [r4, #12]
 80072a4:	6822      	ldr	r2, [r4, #0]
 80072a6:	6661      	str	r1, [r4, #100]	; 0x64
 80072a8:	6961      	ldr	r1, [r4, #20]
 80072aa:	1ad3      	subs	r3, r2, r3
 80072ac:	4299      	cmp	r1, r3
 80072ae:	dcd5      	bgt.n	800725c <__swbuf_r+0x34>
 80072b0:	4621      	mov	r1, r4
 80072b2:	4630      	mov	r0, r6
 80072b4:	f7fe f8a6 	bl	8005404 <_fflush_r>
 80072b8:	b958      	cbnz	r0, 80072d2 <__swbuf_r+0xaa>
 80072ba:	6822      	ldr	r2, [r4, #0]
 80072bc:	2301      	movs	r3, #1
 80072be:	e7ce      	b.n	800725e <__swbuf_r+0x36>
 80072c0:	f7fe f8fc 	bl	80054bc <__sinit>
 80072c4:	e7b8      	b.n	8007238 <__swbuf_r+0x10>
 80072c6:	4621      	mov	r1, r4
 80072c8:	4630      	mov	r0, r6
 80072ca:	f7fe f89b 	bl	8005404 <_fflush_r>
 80072ce:	2800      	cmp	r0, #0
 80072d0:	d0d3      	beq.n	800727a <__swbuf_r+0x52>
 80072d2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80072d6:	e7d0      	b.n	800727a <__swbuf_r+0x52>

080072d8 <_wcrtomb_r>:
 80072d8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80072da:	4c11      	ldr	r4, [pc, #68]	; (8007320 <_wcrtomb_r+0x48>)
 80072dc:	6824      	ldr	r4, [r4, #0]
 80072de:	b085      	sub	sp, #20
 80072e0:	4606      	mov	r6, r0
 80072e2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80072e4:	461f      	mov	r7, r3
 80072e6:	b151      	cbz	r1, 80072fe <_wcrtomb_r+0x26>
 80072e8:	4d0e      	ldr	r5, [pc, #56]	; (8007324 <_wcrtomb_r+0x4c>)
 80072ea:	2c00      	cmp	r4, #0
 80072ec:	bf08      	it	eq
 80072ee:	462c      	moveq	r4, r5
 80072f0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80072f4:	47a0      	blx	r4
 80072f6:	1c43      	adds	r3, r0, #1
 80072f8:	d00c      	beq.n	8007314 <_wcrtomb_r+0x3c>
 80072fa:	b005      	add	sp, #20
 80072fc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80072fe:	4a09      	ldr	r2, [pc, #36]	; (8007324 <_wcrtomb_r+0x4c>)
 8007300:	2c00      	cmp	r4, #0
 8007302:	bf08      	it	eq
 8007304:	4614      	moveq	r4, r2
 8007306:	460a      	mov	r2, r1
 8007308:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800730c:	a901      	add	r1, sp, #4
 800730e:	47a0      	blx	r4
 8007310:	1c43      	adds	r3, r0, #1
 8007312:	d1f2      	bne.n	80072fa <_wcrtomb_r+0x22>
 8007314:	2200      	movs	r2, #0
 8007316:	238a      	movs	r3, #138	; 0x8a
 8007318:	603a      	str	r2, [r7, #0]
 800731a:	6033      	str	r3, [r6, #0]
 800731c:	b005      	add	sp, #20
 800731e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007320:	20000018 	.word	0x20000018
 8007324:	2000085c 	.word	0x2000085c

08007328 <__ascii_wctomb>:
 8007328:	b121      	cbz	r1, 8007334 <__ascii_wctomb+0xc>
 800732a:	2aff      	cmp	r2, #255	; 0xff
 800732c:	d804      	bhi.n	8007338 <__ascii_wctomb+0x10>
 800732e:	700a      	strb	r2, [r1, #0]
 8007330:	2001      	movs	r0, #1
 8007332:	4770      	bx	lr
 8007334:	4608      	mov	r0, r1
 8007336:	4770      	bx	lr
 8007338:	238a      	movs	r3, #138	; 0x8a
 800733a:	6003      	str	r3, [r0, #0]
 800733c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007340:	4770      	bx	lr
 8007342:	bf00      	nop

08007344 <_init>:
 8007344:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007346:	bf00      	nop
 8007348:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800734a:	bc08      	pop	{r3}
 800734c:	469e      	mov	lr, r3
 800734e:	4770      	bx	lr

08007350 <_fini>:
 8007350:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007352:	bf00      	nop
 8007354:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007356:	bc08      	pop	{r3}
 8007358:	469e      	mov	lr, r3
 800735a:	4770      	bx	lr
 800735c:	0000      	movs	r0, r0
	...
