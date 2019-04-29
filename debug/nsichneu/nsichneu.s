
nsichneu.elf:     file format elf32-littlearm


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
 80001d8:	200009d0 	.word	0x200009d0
 80001dc:	00000000 	.word	0x00000000
 80001e0:	080094cc 	.word	0x080094cc

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	200009d4 	.word	0x200009d4
 80001fc:	080094cc 	.word	0x080094cc

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
 8001108:	f640 20ac 	movw	r0, #2732	; 0xaac
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20ac 	movw	r0, #2732	; 0xaac
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
 80013e8:	f249 5200 	movw	r2, #38144	; 0x9500
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
 800145a:	f240 001c 	movw	r0, #28
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f249 42f8 	movw	r2, #38136	; 0x94f8
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
 8001484:	f240 001c 	movw	r0, #28
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f249 42f8 	movw	r2, #38136	; 0x94f8
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
 8001842:	f640 21b0 	movw	r1, #2736	; 0xab0
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
 800188c:	f640 20b0 	movw	r0, #2736	; 0xab0
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20b0 	movw	r0, #2736	; 0xab0
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
 80019d4:	f249 5330 	movw	r3, #38192	; 0x9530
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
 80019fc:	f249 5340 	movw	r3, #38208	; 0x9540
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

08001eb6 <initialise_benchmark>:
 8001eb6:	4770      	bx	lr

08001eb8 <benchmark>:
 8001eb8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eba:	af03      	add	r7, sp, #12
 8001ebc:	f84d 8d04 	str.w	r8, [sp, #-4]!
 8001ec0:	f240 0e14 	movw	lr, #20
 8001ec4:	f640 12ec 	movw	r2, #2540	; 0x9ec
 8001ec8:	f640 3c0c 	movw	ip, #2828	; 0xb0c
 8001ecc:	f640 28f4 	movw	r8, #2804	; 0xaf4
 8001ed0:	f240 0118 	movw	r1, #24
 8001ed4:	f640 3418 	movw	r4, #2840	; 0xb18
 8001ed8:	2003      	movs	r0, #3
 8001eda:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8001ede:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001ee2:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8001ee6:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8001eea:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001eee:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8001ef2:	f8de 5000 	ldr.w	r5, [lr]
 8001ef6:	2d03      	cmp	r5, #3
 8001ef8:	db23      	blt.n	8001f42 <benchmark+0x8a>
 8001efa:	6815      	ldr	r5, [r2, #0]
 8001efc:	3503      	adds	r5, #3
 8001efe:	2d06      	cmp	r5, #6
 8001f00:	dc1f      	bgt.n	8001f42 <benchmark+0x8a>
 8001f02:	f8dc 5004 	ldr.w	r5, [ip, #4]
 8001f06:	f8dc 6008 	ldr.w	r6, [ip, #8]
 8001f0a:	42b5      	cmp	r5, r6
 8001f0c:	d119      	bne.n	8001f42 <benchmark+0x8a>
 8001f0e:	f8dc 5000 	ldr.w	r5, [ip]
 8001f12:	f8dc 6004 	ldr.w	r6, [ip, #4]
 8001f16:	42b5      	cmp	r5, r6
 8001f18:	da13      	bge.n	8001f42 <benchmark+0x8a>
 8001f1a:	f8de 3000 	ldr.w	r3, [lr]
 8001f1e:	3b03      	subs	r3, #3
 8001f20:	f8ce 3000 	str.w	r3, [lr]
 8001f24:	6813      	ldr	r3, [r2, #0]
 8001f26:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8001f2a:	6813      	ldr	r3, [r2, #0]
 8001f2c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8001f30:	605e      	str	r6, [r3, #4]
 8001f32:	1bab      	subs	r3, r5, r6
 8001f34:	6815      	ldr	r5, [r2, #0]
 8001f36:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8001f3a:	60ab      	str	r3, [r5, #8]
 8001f3c:	6813      	ldr	r3, [r2, #0]
 8001f3e:	3303      	adds	r3, #3
 8001f40:	6013      	str	r3, [r2, #0]
 8001f42:	f8de 3000 	ldr.w	r3, [lr]
 8001f46:	2b03      	cmp	r3, #3
 8001f48:	db23      	blt.n	8001f92 <benchmark+0xda>
 8001f4a:	6813      	ldr	r3, [r2, #0]
 8001f4c:	3303      	adds	r3, #3
 8001f4e:	2b06      	cmp	r3, #6
 8001f50:	dc1f      	bgt.n	8001f92 <benchmark+0xda>
 8001f52:	f8dc 3008 	ldr.w	r3, [ip, #8]
 8001f56:	f8dc 5004 	ldr.w	r5, [ip, #4]
 8001f5a:	42ab      	cmp	r3, r5
 8001f5c:	d119      	bne.n	8001f92 <benchmark+0xda>
 8001f5e:	f8dc 5000 	ldr.w	r5, [ip]
 8001f62:	f8dc 6008 	ldr.w	r6, [ip, #8]
 8001f66:	42b5      	cmp	r5, r6
 8001f68:	da13      	bge.n	8001f92 <benchmark+0xda>
 8001f6a:	f8de 3000 	ldr.w	r3, [lr]
 8001f6e:	3b03      	subs	r3, #3
 8001f70:	f8ce 3000 	str.w	r3, [lr]
 8001f74:	6813      	ldr	r3, [r2, #0]
 8001f76:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8001f7a:	6813      	ldr	r3, [r2, #0]
 8001f7c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8001f80:	605e      	str	r6, [r3, #4]
 8001f82:	1bab      	subs	r3, r5, r6
 8001f84:	6815      	ldr	r5, [r2, #0]
 8001f86:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8001f8a:	60ab      	str	r3, [r5, #8]
 8001f8c:	6813      	ldr	r3, [r2, #0]
 8001f8e:	3303      	adds	r3, #3
 8001f90:	6013      	str	r3, [r2, #0]
 8001f92:	f8de 3000 	ldr.w	r3, [lr]
 8001f96:	2b03      	cmp	r3, #3
 8001f98:	db23      	blt.n	8001fe2 <benchmark+0x12a>
 8001f9a:	6813      	ldr	r3, [r2, #0]
 8001f9c:	3303      	adds	r3, #3
 8001f9e:	2b06      	cmp	r3, #6
 8001fa0:	dc1f      	bgt.n	8001fe2 <benchmark+0x12a>
 8001fa2:	f8dc 3000 	ldr.w	r3, [ip]
 8001fa6:	f8dc 5008 	ldr.w	r5, [ip, #8]
 8001faa:	42ab      	cmp	r3, r5
 8001fac:	d119      	bne.n	8001fe2 <benchmark+0x12a>
 8001fae:	f8dc 5004 	ldr.w	r5, [ip, #4]
 8001fb2:	f8dc 6000 	ldr.w	r6, [ip]
 8001fb6:	42b5      	cmp	r5, r6
 8001fb8:	da13      	bge.n	8001fe2 <benchmark+0x12a>
 8001fba:	f8de 3000 	ldr.w	r3, [lr]
 8001fbe:	3b03      	subs	r3, #3
 8001fc0:	f8ce 3000 	str.w	r3, [lr]
 8001fc4:	6813      	ldr	r3, [r2, #0]
 8001fc6:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8001fca:	6813      	ldr	r3, [r2, #0]
 8001fcc:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8001fd0:	605e      	str	r6, [r3, #4]
 8001fd2:	1bab      	subs	r3, r5, r6
 8001fd4:	6815      	ldr	r5, [r2, #0]
 8001fd6:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8001fda:	60ab      	str	r3, [r5, #8]
 8001fdc:	6813      	ldr	r3, [r2, #0]
 8001fde:	3303      	adds	r3, #3
 8001fe0:	6013      	str	r3, [r2, #0]
 8001fe2:	f8de 3000 	ldr.w	r3, [lr]
 8001fe6:	2b03      	cmp	r3, #3
 8001fe8:	db23      	blt.n	8002032 <benchmark+0x17a>
 8001fea:	6813      	ldr	r3, [r2, #0]
 8001fec:	3303      	adds	r3, #3
 8001fee:	2b06      	cmp	r3, #6
 8001ff0:	dc1f      	bgt.n	8002032 <benchmark+0x17a>
 8001ff2:	f8dc 3008 	ldr.w	r3, [ip, #8]
 8001ff6:	f8dc 5000 	ldr.w	r5, [ip]
 8001ffa:	42ab      	cmp	r3, r5
 8001ffc:	d119      	bne.n	8002032 <benchmark+0x17a>
 8001ffe:	f8dc 5004 	ldr.w	r5, [ip, #4]
 8002002:	f8dc 6008 	ldr.w	r6, [ip, #8]
 8002006:	42b5      	cmp	r5, r6
 8002008:	da13      	bge.n	8002032 <benchmark+0x17a>
 800200a:	f8de 3000 	ldr.w	r3, [lr]
 800200e:	3b03      	subs	r3, #3
 8002010:	f8ce 3000 	str.w	r3, [lr]
 8002014:	6813      	ldr	r3, [r2, #0]
 8002016:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800201a:	6813      	ldr	r3, [r2, #0]
 800201c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002020:	605e      	str	r6, [r3, #4]
 8002022:	1bab      	subs	r3, r5, r6
 8002024:	6815      	ldr	r5, [r2, #0]
 8002026:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800202a:	60ab      	str	r3, [r5, #8]
 800202c:	6813      	ldr	r3, [r2, #0]
 800202e:	3303      	adds	r3, #3
 8002030:	6013      	str	r3, [r2, #0]
 8002032:	f8de 3000 	ldr.w	r3, [lr]
 8002036:	2b03      	cmp	r3, #3
 8002038:	db23      	blt.n	8002082 <benchmark+0x1ca>
 800203a:	6813      	ldr	r3, [r2, #0]
 800203c:	3303      	adds	r3, #3
 800203e:	2b06      	cmp	r3, #6
 8002040:	dc1f      	bgt.n	8002082 <benchmark+0x1ca>
 8002042:	f8dc 3000 	ldr.w	r3, [ip]
 8002046:	f8dc 5004 	ldr.w	r5, [ip, #4]
 800204a:	42ab      	cmp	r3, r5
 800204c:	d119      	bne.n	8002082 <benchmark+0x1ca>
 800204e:	f8dc 5008 	ldr.w	r5, [ip, #8]
 8002052:	f8dc 6000 	ldr.w	r6, [ip]
 8002056:	42b5      	cmp	r5, r6
 8002058:	da13      	bge.n	8002082 <benchmark+0x1ca>
 800205a:	f8de 3000 	ldr.w	r3, [lr]
 800205e:	3b03      	subs	r3, #3
 8002060:	f8ce 3000 	str.w	r3, [lr]
 8002064:	6813      	ldr	r3, [r2, #0]
 8002066:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800206a:	6813      	ldr	r3, [r2, #0]
 800206c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002070:	605e      	str	r6, [r3, #4]
 8002072:	1bab      	subs	r3, r5, r6
 8002074:	6815      	ldr	r5, [r2, #0]
 8002076:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800207a:	60ab      	str	r3, [r5, #8]
 800207c:	6813      	ldr	r3, [r2, #0]
 800207e:	3303      	adds	r3, #3
 8002080:	6013      	str	r3, [r2, #0]
 8002082:	f8de 3000 	ldr.w	r3, [lr]
 8002086:	2b03      	cmp	r3, #3
 8002088:	db23      	blt.n	80020d2 <benchmark+0x21a>
 800208a:	6813      	ldr	r3, [r2, #0]
 800208c:	3303      	adds	r3, #3
 800208e:	2b06      	cmp	r3, #6
 8002090:	dc1f      	bgt.n	80020d2 <benchmark+0x21a>
 8002092:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8002096:	f8dc 5000 	ldr.w	r5, [ip]
 800209a:	42ab      	cmp	r3, r5
 800209c:	d119      	bne.n	80020d2 <benchmark+0x21a>
 800209e:	f8dc 5008 	ldr.w	r5, [ip, #8]
 80020a2:	f8dc 6004 	ldr.w	r6, [ip, #4]
 80020a6:	42b5      	cmp	r5, r6
 80020a8:	da13      	bge.n	80020d2 <benchmark+0x21a>
 80020aa:	f8de 3000 	ldr.w	r3, [lr]
 80020ae:	3b03      	subs	r3, #3
 80020b0:	f8ce 3000 	str.w	r3, [lr]
 80020b4:	6813      	ldr	r3, [r2, #0]
 80020b6:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80020ba:	6813      	ldr	r3, [r2, #0]
 80020bc:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80020c0:	605e      	str	r6, [r3, #4]
 80020c2:	1bab      	subs	r3, r5, r6
 80020c4:	6815      	ldr	r5, [r2, #0]
 80020c6:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80020ca:	60ab      	str	r3, [r5, #8]
 80020cc:	6813      	ldr	r3, [r2, #0]
 80020ce:	3303      	adds	r3, #3
 80020d0:	6013      	str	r3, [r2, #0]
 80020d2:	680b      	ldr	r3, [r1, #0]
 80020d4:	2b04      	cmp	r3, #4
 80020d6:	db21      	blt.n	800211c <benchmark+0x264>
 80020d8:	6813      	ldr	r3, [r2, #0]
 80020da:	3303      	adds	r3, #3
 80020dc:	2b06      	cmp	r3, #6
 80020de:	dc1d      	bgt.n	800211c <benchmark+0x264>
 80020e0:	6863      	ldr	r3, [r4, #4]
 80020e2:	68a5      	ldr	r5, [r4, #8]
 80020e4:	42ab      	cmp	r3, r5
 80020e6:	d119      	bne.n	800211c <benchmark+0x264>
 80020e8:	6863      	ldr	r3, [r4, #4]
 80020ea:	68e5      	ldr	r5, [r4, #12]
 80020ec:	42ab      	cmp	r3, r5
 80020ee:	d115      	bne.n	800211c <benchmark+0x264>
 80020f0:	6825      	ldr	r5, [r4, #0]
 80020f2:	6866      	ldr	r6, [r4, #4]
 80020f4:	42ae      	cmp	r6, r5
 80020f6:	dd11      	ble.n	800211c <benchmark+0x264>
 80020f8:	680b      	ldr	r3, [r1, #0]
 80020fa:	3b04      	subs	r3, #4
 80020fc:	600b      	str	r3, [r1, #0]
 80020fe:	6813      	ldr	r3, [r2, #0]
 8002100:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002104:	6813      	ldr	r3, [r2, #0]
 8002106:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800210a:	605e      	str	r6, [r3, #4]
 800210c:	1973      	adds	r3, r6, r5
 800210e:	6815      	ldr	r5, [r2, #0]
 8002110:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002114:	60ab      	str	r3, [r5, #8]
 8002116:	6813      	ldr	r3, [r2, #0]
 8002118:	3303      	adds	r3, #3
 800211a:	6013      	str	r3, [r2, #0]
 800211c:	680b      	ldr	r3, [r1, #0]
 800211e:	2b04      	cmp	r3, #4
 8002120:	db21      	blt.n	8002166 <benchmark+0x2ae>
 8002122:	6813      	ldr	r3, [r2, #0]
 8002124:	3303      	adds	r3, #3
 8002126:	2b06      	cmp	r3, #6
 8002128:	dc1d      	bgt.n	8002166 <benchmark+0x2ae>
 800212a:	6863      	ldr	r3, [r4, #4]
 800212c:	68e5      	ldr	r5, [r4, #12]
 800212e:	42ab      	cmp	r3, r5
 8002130:	d119      	bne.n	8002166 <benchmark+0x2ae>
 8002132:	6863      	ldr	r3, [r4, #4]
 8002134:	68a5      	ldr	r5, [r4, #8]
 8002136:	42ab      	cmp	r3, r5
 8002138:	d115      	bne.n	8002166 <benchmark+0x2ae>
 800213a:	6825      	ldr	r5, [r4, #0]
 800213c:	6866      	ldr	r6, [r4, #4]
 800213e:	42ae      	cmp	r6, r5
 8002140:	dd11      	ble.n	8002166 <benchmark+0x2ae>
 8002142:	680b      	ldr	r3, [r1, #0]
 8002144:	3b04      	subs	r3, #4
 8002146:	600b      	str	r3, [r1, #0]
 8002148:	6813      	ldr	r3, [r2, #0]
 800214a:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800214e:	6813      	ldr	r3, [r2, #0]
 8002150:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002154:	605e      	str	r6, [r3, #4]
 8002156:	1973      	adds	r3, r6, r5
 8002158:	6815      	ldr	r5, [r2, #0]
 800215a:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800215e:	60ab      	str	r3, [r5, #8]
 8002160:	6813      	ldr	r3, [r2, #0]
 8002162:	3303      	adds	r3, #3
 8002164:	6013      	str	r3, [r2, #0]
 8002166:	680b      	ldr	r3, [r1, #0]
 8002168:	2b04      	cmp	r3, #4
 800216a:	db21      	blt.n	80021b0 <benchmark+0x2f8>
 800216c:	6813      	ldr	r3, [r2, #0]
 800216e:	3303      	adds	r3, #3
 8002170:	2b06      	cmp	r3, #6
 8002172:	dc1d      	bgt.n	80021b0 <benchmark+0x2f8>
 8002174:	68a3      	ldr	r3, [r4, #8]
 8002176:	6865      	ldr	r5, [r4, #4]
 8002178:	42ab      	cmp	r3, r5
 800217a:	d119      	bne.n	80021b0 <benchmark+0x2f8>
 800217c:	68a3      	ldr	r3, [r4, #8]
 800217e:	68e5      	ldr	r5, [r4, #12]
 8002180:	42ab      	cmp	r3, r5
 8002182:	d115      	bne.n	80021b0 <benchmark+0x2f8>
 8002184:	6825      	ldr	r5, [r4, #0]
 8002186:	68a6      	ldr	r6, [r4, #8]
 8002188:	42ae      	cmp	r6, r5
 800218a:	dd11      	ble.n	80021b0 <benchmark+0x2f8>
 800218c:	680b      	ldr	r3, [r1, #0]
 800218e:	3b04      	subs	r3, #4
 8002190:	600b      	str	r3, [r1, #0]
 8002192:	6813      	ldr	r3, [r2, #0]
 8002194:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002198:	6813      	ldr	r3, [r2, #0]
 800219a:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800219e:	605e      	str	r6, [r3, #4]
 80021a0:	1973      	adds	r3, r6, r5
 80021a2:	6815      	ldr	r5, [r2, #0]
 80021a4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80021a8:	60ab      	str	r3, [r5, #8]
 80021aa:	6813      	ldr	r3, [r2, #0]
 80021ac:	3303      	adds	r3, #3
 80021ae:	6013      	str	r3, [r2, #0]
 80021b0:	680b      	ldr	r3, [r1, #0]
 80021b2:	2b04      	cmp	r3, #4
 80021b4:	db21      	blt.n	80021fa <benchmark+0x342>
 80021b6:	6813      	ldr	r3, [r2, #0]
 80021b8:	3303      	adds	r3, #3
 80021ba:	2b06      	cmp	r3, #6
 80021bc:	dc1d      	bgt.n	80021fa <benchmark+0x342>
 80021be:	68a3      	ldr	r3, [r4, #8]
 80021c0:	68e5      	ldr	r5, [r4, #12]
 80021c2:	42ab      	cmp	r3, r5
 80021c4:	d119      	bne.n	80021fa <benchmark+0x342>
 80021c6:	68a3      	ldr	r3, [r4, #8]
 80021c8:	6865      	ldr	r5, [r4, #4]
 80021ca:	42ab      	cmp	r3, r5
 80021cc:	d115      	bne.n	80021fa <benchmark+0x342>
 80021ce:	6825      	ldr	r5, [r4, #0]
 80021d0:	68a6      	ldr	r6, [r4, #8]
 80021d2:	42ae      	cmp	r6, r5
 80021d4:	dd11      	ble.n	80021fa <benchmark+0x342>
 80021d6:	680b      	ldr	r3, [r1, #0]
 80021d8:	3b04      	subs	r3, #4
 80021da:	600b      	str	r3, [r1, #0]
 80021dc:	6813      	ldr	r3, [r2, #0]
 80021de:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80021e2:	6813      	ldr	r3, [r2, #0]
 80021e4:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80021e8:	605e      	str	r6, [r3, #4]
 80021ea:	1973      	adds	r3, r6, r5
 80021ec:	6815      	ldr	r5, [r2, #0]
 80021ee:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80021f2:	60ab      	str	r3, [r5, #8]
 80021f4:	6813      	ldr	r3, [r2, #0]
 80021f6:	3303      	adds	r3, #3
 80021f8:	6013      	str	r3, [r2, #0]
 80021fa:	680b      	ldr	r3, [r1, #0]
 80021fc:	2b04      	cmp	r3, #4
 80021fe:	db21      	blt.n	8002244 <benchmark+0x38c>
 8002200:	6813      	ldr	r3, [r2, #0]
 8002202:	3303      	adds	r3, #3
 8002204:	2b06      	cmp	r3, #6
 8002206:	dc1d      	bgt.n	8002244 <benchmark+0x38c>
 8002208:	68e3      	ldr	r3, [r4, #12]
 800220a:	6865      	ldr	r5, [r4, #4]
 800220c:	42ab      	cmp	r3, r5
 800220e:	d119      	bne.n	8002244 <benchmark+0x38c>
 8002210:	68e3      	ldr	r3, [r4, #12]
 8002212:	68a5      	ldr	r5, [r4, #8]
 8002214:	42ab      	cmp	r3, r5
 8002216:	d115      	bne.n	8002244 <benchmark+0x38c>
 8002218:	6825      	ldr	r5, [r4, #0]
 800221a:	68e6      	ldr	r6, [r4, #12]
 800221c:	42ae      	cmp	r6, r5
 800221e:	dd11      	ble.n	8002244 <benchmark+0x38c>
 8002220:	680b      	ldr	r3, [r1, #0]
 8002222:	3b04      	subs	r3, #4
 8002224:	600b      	str	r3, [r1, #0]
 8002226:	6813      	ldr	r3, [r2, #0]
 8002228:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800222c:	6813      	ldr	r3, [r2, #0]
 800222e:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002232:	605e      	str	r6, [r3, #4]
 8002234:	1973      	adds	r3, r6, r5
 8002236:	6815      	ldr	r5, [r2, #0]
 8002238:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800223c:	60ab      	str	r3, [r5, #8]
 800223e:	6813      	ldr	r3, [r2, #0]
 8002240:	3303      	adds	r3, #3
 8002242:	6013      	str	r3, [r2, #0]
 8002244:	680b      	ldr	r3, [r1, #0]
 8002246:	2b04      	cmp	r3, #4
 8002248:	db21      	blt.n	800228e <benchmark+0x3d6>
 800224a:	6813      	ldr	r3, [r2, #0]
 800224c:	3303      	adds	r3, #3
 800224e:	2b06      	cmp	r3, #6
 8002250:	dc1d      	bgt.n	800228e <benchmark+0x3d6>
 8002252:	68e3      	ldr	r3, [r4, #12]
 8002254:	68a5      	ldr	r5, [r4, #8]
 8002256:	42ab      	cmp	r3, r5
 8002258:	d119      	bne.n	800228e <benchmark+0x3d6>
 800225a:	68e3      	ldr	r3, [r4, #12]
 800225c:	6865      	ldr	r5, [r4, #4]
 800225e:	42ab      	cmp	r3, r5
 8002260:	d115      	bne.n	800228e <benchmark+0x3d6>
 8002262:	6825      	ldr	r5, [r4, #0]
 8002264:	68e6      	ldr	r6, [r4, #12]
 8002266:	42ae      	cmp	r6, r5
 8002268:	dd11      	ble.n	800228e <benchmark+0x3d6>
 800226a:	680b      	ldr	r3, [r1, #0]
 800226c:	3b04      	subs	r3, #4
 800226e:	600b      	str	r3, [r1, #0]
 8002270:	6813      	ldr	r3, [r2, #0]
 8002272:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002276:	6813      	ldr	r3, [r2, #0]
 8002278:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800227c:	605e      	str	r6, [r3, #4]
 800227e:	1973      	adds	r3, r6, r5
 8002280:	6815      	ldr	r5, [r2, #0]
 8002282:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002286:	60ab      	str	r3, [r5, #8]
 8002288:	6813      	ldr	r3, [r2, #0]
 800228a:	3303      	adds	r3, #3
 800228c:	6013      	str	r3, [r2, #0]
 800228e:	680b      	ldr	r3, [r1, #0]
 8002290:	2b04      	cmp	r3, #4
 8002292:	db21      	blt.n	80022d8 <benchmark+0x420>
 8002294:	6813      	ldr	r3, [r2, #0]
 8002296:	3303      	adds	r3, #3
 8002298:	2b06      	cmp	r3, #6
 800229a:	dc1d      	bgt.n	80022d8 <benchmark+0x420>
 800229c:	6823      	ldr	r3, [r4, #0]
 800229e:	68a5      	ldr	r5, [r4, #8]
 80022a0:	42ab      	cmp	r3, r5
 80022a2:	d119      	bne.n	80022d8 <benchmark+0x420>
 80022a4:	6823      	ldr	r3, [r4, #0]
 80022a6:	68e5      	ldr	r5, [r4, #12]
 80022a8:	42ab      	cmp	r3, r5
 80022aa:	d115      	bne.n	80022d8 <benchmark+0x420>
 80022ac:	6865      	ldr	r5, [r4, #4]
 80022ae:	6826      	ldr	r6, [r4, #0]
 80022b0:	42ae      	cmp	r6, r5
 80022b2:	dd11      	ble.n	80022d8 <benchmark+0x420>
 80022b4:	680b      	ldr	r3, [r1, #0]
 80022b6:	3b04      	subs	r3, #4
 80022b8:	600b      	str	r3, [r1, #0]
 80022ba:	6813      	ldr	r3, [r2, #0]
 80022bc:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80022c0:	6813      	ldr	r3, [r2, #0]
 80022c2:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80022c6:	605e      	str	r6, [r3, #4]
 80022c8:	1973      	adds	r3, r6, r5
 80022ca:	6815      	ldr	r5, [r2, #0]
 80022cc:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80022d0:	60ab      	str	r3, [r5, #8]
 80022d2:	6813      	ldr	r3, [r2, #0]
 80022d4:	3303      	adds	r3, #3
 80022d6:	6013      	str	r3, [r2, #0]
 80022d8:	680b      	ldr	r3, [r1, #0]
 80022da:	2b04      	cmp	r3, #4
 80022dc:	db21      	blt.n	8002322 <benchmark+0x46a>
 80022de:	6813      	ldr	r3, [r2, #0]
 80022e0:	3303      	adds	r3, #3
 80022e2:	2b06      	cmp	r3, #6
 80022e4:	dc1d      	bgt.n	8002322 <benchmark+0x46a>
 80022e6:	6823      	ldr	r3, [r4, #0]
 80022e8:	68e5      	ldr	r5, [r4, #12]
 80022ea:	42ab      	cmp	r3, r5
 80022ec:	d119      	bne.n	8002322 <benchmark+0x46a>
 80022ee:	6823      	ldr	r3, [r4, #0]
 80022f0:	68a5      	ldr	r5, [r4, #8]
 80022f2:	42ab      	cmp	r3, r5
 80022f4:	d115      	bne.n	8002322 <benchmark+0x46a>
 80022f6:	6865      	ldr	r5, [r4, #4]
 80022f8:	6826      	ldr	r6, [r4, #0]
 80022fa:	42ae      	cmp	r6, r5
 80022fc:	dd11      	ble.n	8002322 <benchmark+0x46a>
 80022fe:	680b      	ldr	r3, [r1, #0]
 8002300:	3b04      	subs	r3, #4
 8002302:	600b      	str	r3, [r1, #0]
 8002304:	6813      	ldr	r3, [r2, #0]
 8002306:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800230a:	6813      	ldr	r3, [r2, #0]
 800230c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002310:	605e      	str	r6, [r3, #4]
 8002312:	1973      	adds	r3, r6, r5
 8002314:	6815      	ldr	r5, [r2, #0]
 8002316:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800231a:	60ab      	str	r3, [r5, #8]
 800231c:	6813      	ldr	r3, [r2, #0]
 800231e:	3303      	adds	r3, #3
 8002320:	6013      	str	r3, [r2, #0]
 8002322:	680b      	ldr	r3, [r1, #0]
 8002324:	2b04      	cmp	r3, #4
 8002326:	db21      	blt.n	800236c <benchmark+0x4b4>
 8002328:	6813      	ldr	r3, [r2, #0]
 800232a:	3303      	adds	r3, #3
 800232c:	2b06      	cmp	r3, #6
 800232e:	dc1d      	bgt.n	800236c <benchmark+0x4b4>
 8002330:	68a3      	ldr	r3, [r4, #8]
 8002332:	6825      	ldr	r5, [r4, #0]
 8002334:	42ab      	cmp	r3, r5
 8002336:	d119      	bne.n	800236c <benchmark+0x4b4>
 8002338:	68a3      	ldr	r3, [r4, #8]
 800233a:	68e5      	ldr	r5, [r4, #12]
 800233c:	42ab      	cmp	r3, r5
 800233e:	d115      	bne.n	800236c <benchmark+0x4b4>
 8002340:	6865      	ldr	r5, [r4, #4]
 8002342:	68a6      	ldr	r6, [r4, #8]
 8002344:	42ae      	cmp	r6, r5
 8002346:	dd11      	ble.n	800236c <benchmark+0x4b4>
 8002348:	680b      	ldr	r3, [r1, #0]
 800234a:	3b04      	subs	r3, #4
 800234c:	600b      	str	r3, [r1, #0]
 800234e:	6813      	ldr	r3, [r2, #0]
 8002350:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002354:	6813      	ldr	r3, [r2, #0]
 8002356:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800235a:	605e      	str	r6, [r3, #4]
 800235c:	1973      	adds	r3, r6, r5
 800235e:	6815      	ldr	r5, [r2, #0]
 8002360:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002364:	60ab      	str	r3, [r5, #8]
 8002366:	6813      	ldr	r3, [r2, #0]
 8002368:	3303      	adds	r3, #3
 800236a:	6013      	str	r3, [r2, #0]
 800236c:	680b      	ldr	r3, [r1, #0]
 800236e:	2b04      	cmp	r3, #4
 8002370:	db21      	blt.n	80023b6 <benchmark+0x4fe>
 8002372:	6813      	ldr	r3, [r2, #0]
 8002374:	3303      	adds	r3, #3
 8002376:	2b06      	cmp	r3, #6
 8002378:	dc1d      	bgt.n	80023b6 <benchmark+0x4fe>
 800237a:	68a3      	ldr	r3, [r4, #8]
 800237c:	68e5      	ldr	r5, [r4, #12]
 800237e:	42ab      	cmp	r3, r5
 8002380:	d119      	bne.n	80023b6 <benchmark+0x4fe>
 8002382:	68a3      	ldr	r3, [r4, #8]
 8002384:	6825      	ldr	r5, [r4, #0]
 8002386:	42ab      	cmp	r3, r5
 8002388:	d115      	bne.n	80023b6 <benchmark+0x4fe>
 800238a:	6865      	ldr	r5, [r4, #4]
 800238c:	68a6      	ldr	r6, [r4, #8]
 800238e:	42ae      	cmp	r6, r5
 8002390:	dd11      	ble.n	80023b6 <benchmark+0x4fe>
 8002392:	680b      	ldr	r3, [r1, #0]
 8002394:	3b04      	subs	r3, #4
 8002396:	600b      	str	r3, [r1, #0]
 8002398:	6813      	ldr	r3, [r2, #0]
 800239a:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800239e:	6813      	ldr	r3, [r2, #0]
 80023a0:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80023a4:	605e      	str	r6, [r3, #4]
 80023a6:	1973      	adds	r3, r6, r5
 80023a8:	6815      	ldr	r5, [r2, #0]
 80023aa:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80023ae:	60ab      	str	r3, [r5, #8]
 80023b0:	6813      	ldr	r3, [r2, #0]
 80023b2:	3303      	adds	r3, #3
 80023b4:	6013      	str	r3, [r2, #0]
 80023b6:	680b      	ldr	r3, [r1, #0]
 80023b8:	2b04      	cmp	r3, #4
 80023ba:	db21      	blt.n	8002400 <benchmark+0x548>
 80023bc:	6813      	ldr	r3, [r2, #0]
 80023be:	3303      	adds	r3, #3
 80023c0:	2b06      	cmp	r3, #6
 80023c2:	dc1d      	bgt.n	8002400 <benchmark+0x548>
 80023c4:	68e3      	ldr	r3, [r4, #12]
 80023c6:	6825      	ldr	r5, [r4, #0]
 80023c8:	42ab      	cmp	r3, r5
 80023ca:	d119      	bne.n	8002400 <benchmark+0x548>
 80023cc:	68e3      	ldr	r3, [r4, #12]
 80023ce:	68a5      	ldr	r5, [r4, #8]
 80023d0:	42ab      	cmp	r3, r5
 80023d2:	d115      	bne.n	8002400 <benchmark+0x548>
 80023d4:	6865      	ldr	r5, [r4, #4]
 80023d6:	68e6      	ldr	r6, [r4, #12]
 80023d8:	42ae      	cmp	r6, r5
 80023da:	dd11      	ble.n	8002400 <benchmark+0x548>
 80023dc:	680b      	ldr	r3, [r1, #0]
 80023de:	3b04      	subs	r3, #4
 80023e0:	600b      	str	r3, [r1, #0]
 80023e2:	6813      	ldr	r3, [r2, #0]
 80023e4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80023e8:	6813      	ldr	r3, [r2, #0]
 80023ea:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80023ee:	605e      	str	r6, [r3, #4]
 80023f0:	1973      	adds	r3, r6, r5
 80023f2:	6815      	ldr	r5, [r2, #0]
 80023f4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80023f8:	60ab      	str	r3, [r5, #8]
 80023fa:	6813      	ldr	r3, [r2, #0]
 80023fc:	3303      	adds	r3, #3
 80023fe:	6013      	str	r3, [r2, #0]
 8002400:	680b      	ldr	r3, [r1, #0]
 8002402:	2b04      	cmp	r3, #4
 8002404:	db21      	blt.n	800244a <benchmark+0x592>
 8002406:	6813      	ldr	r3, [r2, #0]
 8002408:	3303      	adds	r3, #3
 800240a:	2b06      	cmp	r3, #6
 800240c:	dc1d      	bgt.n	800244a <benchmark+0x592>
 800240e:	68e3      	ldr	r3, [r4, #12]
 8002410:	68a5      	ldr	r5, [r4, #8]
 8002412:	42ab      	cmp	r3, r5
 8002414:	d119      	bne.n	800244a <benchmark+0x592>
 8002416:	68e3      	ldr	r3, [r4, #12]
 8002418:	6825      	ldr	r5, [r4, #0]
 800241a:	42ab      	cmp	r3, r5
 800241c:	d115      	bne.n	800244a <benchmark+0x592>
 800241e:	6865      	ldr	r5, [r4, #4]
 8002420:	68e6      	ldr	r6, [r4, #12]
 8002422:	42ae      	cmp	r6, r5
 8002424:	dd11      	ble.n	800244a <benchmark+0x592>
 8002426:	680b      	ldr	r3, [r1, #0]
 8002428:	3b04      	subs	r3, #4
 800242a:	600b      	str	r3, [r1, #0]
 800242c:	6813      	ldr	r3, [r2, #0]
 800242e:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002432:	6813      	ldr	r3, [r2, #0]
 8002434:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002438:	605e      	str	r6, [r3, #4]
 800243a:	1973      	adds	r3, r6, r5
 800243c:	6815      	ldr	r5, [r2, #0]
 800243e:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002442:	60ab      	str	r3, [r5, #8]
 8002444:	6813      	ldr	r3, [r2, #0]
 8002446:	3303      	adds	r3, #3
 8002448:	6013      	str	r3, [r2, #0]
 800244a:	680b      	ldr	r3, [r1, #0]
 800244c:	2b04      	cmp	r3, #4
 800244e:	db21      	blt.n	8002494 <benchmark+0x5dc>
 8002450:	6813      	ldr	r3, [r2, #0]
 8002452:	3303      	adds	r3, #3
 8002454:	2b06      	cmp	r3, #6
 8002456:	dc1d      	bgt.n	8002494 <benchmark+0x5dc>
 8002458:	6823      	ldr	r3, [r4, #0]
 800245a:	6865      	ldr	r5, [r4, #4]
 800245c:	42ab      	cmp	r3, r5
 800245e:	d119      	bne.n	8002494 <benchmark+0x5dc>
 8002460:	6823      	ldr	r3, [r4, #0]
 8002462:	68e5      	ldr	r5, [r4, #12]
 8002464:	42ab      	cmp	r3, r5
 8002466:	d115      	bne.n	8002494 <benchmark+0x5dc>
 8002468:	68a5      	ldr	r5, [r4, #8]
 800246a:	6826      	ldr	r6, [r4, #0]
 800246c:	42ae      	cmp	r6, r5
 800246e:	dd11      	ble.n	8002494 <benchmark+0x5dc>
 8002470:	680b      	ldr	r3, [r1, #0]
 8002472:	3b04      	subs	r3, #4
 8002474:	600b      	str	r3, [r1, #0]
 8002476:	6813      	ldr	r3, [r2, #0]
 8002478:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800247c:	6813      	ldr	r3, [r2, #0]
 800247e:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002482:	605e      	str	r6, [r3, #4]
 8002484:	1973      	adds	r3, r6, r5
 8002486:	6815      	ldr	r5, [r2, #0]
 8002488:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800248c:	60ab      	str	r3, [r5, #8]
 800248e:	6813      	ldr	r3, [r2, #0]
 8002490:	3303      	adds	r3, #3
 8002492:	6013      	str	r3, [r2, #0]
 8002494:	680b      	ldr	r3, [r1, #0]
 8002496:	2b04      	cmp	r3, #4
 8002498:	db21      	blt.n	80024de <benchmark+0x626>
 800249a:	6813      	ldr	r3, [r2, #0]
 800249c:	3303      	adds	r3, #3
 800249e:	2b06      	cmp	r3, #6
 80024a0:	dc1d      	bgt.n	80024de <benchmark+0x626>
 80024a2:	6823      	ldr	r3, [r4, #0]
 80024a4:	68e5      	ldr	r5, [r4, #12]
 80024a6:	42ab      	cmp	r3, r5
 80024a8:	d119      	bne.n	80024de <benchmark+0x626>
 80024aa:	6823      	ldr	r3, [r4, #0]
 80024ac:	6865      	ldr	r5, [r4, #4]
 80024ae:	42ab      	cmp	r3, r5
 80024b0:	d115      	bne.n	80024de <benchmark+0x626>
 80024b2:	68a5      	ldr	r5, [r4, #8]
 80024b4:	6826      	ldr	r6, [r4, #0]
 80024b6:	42ae      	cmp	r6, r5
 80024b8:	dd11      	ble.n	80024de <benchmark+0x626>
 80024ba:	680b      	ldr	r3, [r1, #0]
 80024bc:	3b04      	subs	r3, #4
 80024be:	600b      	str	r3, [r1, #0]
 80024c0:	6813      	ldr	r3, [r2, #0]
 80024c2:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80024c6:	6813      	ldr	r3, [r2, #0]
 80024c8:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80024cc:	605e      	str	r6, [r3, #4]
 80024ce:	1973      	adds	r3, r6, r5
 80024d0:	6815      	ldr	r5, [r2, #0]
 80024d2:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80024d6:	60ab      	str	r3, [r5, #8]
 80024d8:	6813      	ldr	r3, [r2, #0]
 80024da:	3303      	adds	r3, #3
 80024dc:	6013      	str	r3, [r2, #0]
 80024de:	680b      	ldr	r3, [r1, #0]
 80024e0:	2b04      	cmp	r3, #4
 80024e2:	db21      	blt.n	8002528 <benchmark+0x670>
 80024e4:	6813      	ldr	r3, [r2, #0]
 80024e6:	3303      	adds	r3, #3
 80024e8:	2b06      	cmp	r3, #6
 80024ea:	dc1d      	bgt.n	8002528 <benchmark+0x670>
 80024ec:	6863      	ldr	r3, [r4, #4]
 80024ee:	6825      	ldr	r5, [r4, #0]
 80024f0:	42ab      	cmp	r3, r5
 80024f2:	d119      	bne.n	8002528 <benchmark+0x670>
 80024f4:	6863      	ldr	r3, [r4, #4]
 80024f6:	68e5      	ldr	r5, [r4, #12]
 80024f8:	42ab      	cmp	r3, r5
 80024fa:	d115      	bne.n	8002528 <benchmark+0x670>
 80024fc:	68a5      	ldr	r5, [r4, #8]
 80024fe:	6866      	ldr	r6, [r4, #4]
 8002500:	42ae      	cmp	r6, r5
 8002502:	dd11      	ble.n	8002528 <benchmark+0x670>
 8002504:	680b      	ldr	r3, [r1, #0]
 8002506:	3b04      	subs	r3, #4
 8002508:	600b      	str	r3, [r1, #0]
 800250a:	6813      	ldr	r3, [r2, #0]
 800250c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002510:	6813      	ldr	r3, [r2, #0]
 8002512:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002516:	605e      	str	r6, [r3, #4]
 8002518:	1973      	adds	r3, r6, r5
 800251a:	6815      	ldr	r5, [r2, #0]
 800251c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002520:	60ab      	str	r3, [r5, #8]
 8002522:	6813      	ldr	r3, [r2, #0]
 8002524:	3303      	adds	r3, #3
 8002526:	6013      	str	r3, [r2, #0]
 8002528:	680b      	ldr	r3, [r1, #0]
 800252a:	2b04      	cmp	r3, #4
 800252c:	db21      	blt.n	8002572 <benchmark+0x6ba>
 800252e:	6813      	ldr	r3, [r2, #0]
 8002530:	3303      	adds	r3, #3
 8002532:	2b06      	cmp	r3, #6
 8002534:	dc1d      	bgt.n	8002572 <benchmark+0x6ba>
 8002536:	6863      	ldr	r3, [r4, #4]
 8002538:	68e5      	ldr	r5, [r4, #12]
 800253a:	42ab      	cmp	r3, r5
 800253c:	d119      	bne.n	8002572 <benchmark+0x6ba>
 800253e:	6863      	ldr	r3, [r4, #4]
 8002540:	6825      	ldr	r5, [r4, #0]
 8002542:	42ab      	cmp	r3, r5
 8002544:	d115      	bne.n	8002572 <benchmark+0x6ba>
 8002546:	68a5      	ldr	r5, [r4, #8]
 8002548:	6866      	ldr	r6, [r4, #4]
 800254a:	42ae      	cmp	r6, r5
 800254c:	dd11      	ble.n	8002572 <benchmark+0x6ba>
 800254e:	680b      	ldr	r3, [r1, #0]
 8002550:	3b04      	subs	r3, #4
 8002552:	600b      	str	r3, [r1, #0]
 8002554:	6813      	ldr	r3, [r2, #0]
 8002556:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800255a:	6813      	ldr	r3, [r2, #0]
 800255c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002560:	605e      	str	r6, [r3, #4]
 8002562:	1973      	adds	r3, r6, r5
 8002564:	6815      	ldr	r5, [r2, #0]
 8002566:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800256a:	60ab      	str	r3, [r5, #8]
 800256c:	6813      	ldr	r3, [r2, #0]
 800256e:	3303      	adds	r3, #3
 8002570:	6013      	str	r3, [r2, #0]
 8002572:	680b      	ldr	r3, [r1, #0]
 8002574:	2b04      	cmp	r3, #4
 8002576:	db21      	blt.n	80025bc <benchmark+0x704>
 8002578:	6813      	ldr	r3, [r2, #0]
 800257a:	3303      	adds	r3, #3
 800257c:	2b06      	cmp	r3, #6
 800257e:	dc1d      	bgt.n	80025bc <benchmark+0x704>
 8002580:	68e3      	ldr	r3, [r4, #12]
 8002582:	6825      	ldr	r5, [r4, #0]
 8002584:	42ab      	cmp	r3, r5
 8002586:	d119      	bne.n	80025bc <benchmark+0x704>
 8002588:	68e3      	ldr	r3, [r4, #12]
 800258a:	6865      	ldr	r5, [r4, #4]
 800258c:	42ab      	cmp	r3, r5
 800258e:	d115      	bne.n	80025bc <benchmark+0x704>
 8002590:	68a5      	ldr	r5, [r4, #8]
 8002592:	68e6      	ldr	r6, [r4, #12]
 8002594:	42ae      	cmp	r6, r5
 8002596:	dd11      	ble.n	80025bc <benchmark+0x704>
 8002598:	680b      	ldr	r3, [r1, #0]
 800259a:	3b04      	subs	r3, #4
 800259c:	600b      	str	r3, [r1, #0]
 800259e:	6813      	ldr	r3, [r2, #0]
 80025a0:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80025a4:	6813      	ldr	r3, [r2, #0]
 80025a6:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80025aa:	605e      	str	r6, [r3, #4]
 80025ac:	1973      	adds	r3, r6, r5
 80025ae:	6815      	ldr	r5, [r2, #0]
 80025b0:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80025b4:	60ab      	str	r3, [r5, #8]
 80025b6:	6813      	ldr	r3, [r2, #0]
 80025b8:	3303      	adds	r3, #3
 80025ba:	6013      	str	r3, [r2, #0]
 80025bc:	680b      	ldr	r3, [r1, #0]
 80025be:	2b04      	cmp	r3, #4
 80025c0:	db21      	blt.n	8002606 <benchmark+0x74e>
 80025c2:	6813      	ldr	r3, [r2, #0]
 80025c4:	3303      	adds	r3, #3
 80025c6:	2b06      	cmp	r3, #6
 80025c8:	dc1d      	bgt.n	8002606 <benchmark+0x74e>
 80025ca:	68e3      	ldr	r3, [r4, #12]
 80025cc:	6865      	ldr	r5, [r4, #4]
 80025ce:	42ab      	cmp	r3, r5
 80025d0:	d119      	bne.n	8002606 <benchmark+0x74e>
 80025d2:	68e3      	ldr	r3, [r4, #12]
 80025d4:	6825      	ldr	r5, [r4, #0]
 80025d6:	42ab      	cmp	r3, r5
 80025d8:	d115      	bne.n	8002606 <benchmark+0x74e>
 80025da:	68a5      	ldr	r5, [r4, #8]
 80025dc:	68e6      	ldr	r6, [r4, #12]
 80025de:	42ae      	cmp	r6, r5
 80025e0:	dd11      	ble.n	8002606 <benchmark+0x74e>
 80025e2:	680b      	ldr	r3, [r1, #0]
 80025e4:	3b04      	subs	r3, #4
 80025e6:	600b      	str	r3, [r1, #0]
 80025e8:	6813      	ldr	r3, [r2, #0]
 80025ea:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80025ee:	6813      	ldr	r3, [r2, #0]
 80025f0:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80025f4:	605e      	str	r6, [r3, #4]
 80025f6:	1973      	adds	r3, r6, r5
 80025f8:	6815      	ldr	r5, [r2, #0]
 80025fa:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80025fe:	60ab      	str	r3, [r5, #8]
 8002600:	6813      	ldr	r3, [r2, #0]
 8002602:	3303      	adds	r3, #3
 8002604:	6013      	str	r3, [r2, #0]
 8002606:	680b      	ldr	r3, [r1, #0]
 8002608:	2b04      	cmp	r3, #4
 800260a:	db21      	blt.n	8002650 <benchmark+0x798>
 800260c:	6813      	ldr	r3, [r2, #0]
 800260e:	3303      	adds	r3, #3
 8002610:	2b06      	cmp	r3, #6
 8002612:	dc1d      	bgt.n	8002650 <benchmark+0x798>
 8002614:	6823      	ldr	r3, [r4, #0]
 8002616:	6865      	ldr	r5, [r4, #4]
 8002618:	42ab      	cmp	r3, r5
 800261a:	d119      	bne.n	8002650 <benchmark+0x798>
 800261c:	6823      	ldr	r3, [r4, #0]
 800261e:	68a5      	ldr	r5, [r4, #8]
 8002620:	42ab      	cmp	r3, r5
 8002622:	d115      	bne.n	8002650 <benchmark+0x798>
 8002624:	68e5      	ldr	r5, [r4, #12]
 8002626:	6826      	ldr	r6, [r4, #0]
 8002628:	42ae      	cmp	r6, r5
 800262a:	dd11      	ble.n	8002650 <benchmark+0x798>
 800262c:	680b      	ldr	r3, [r1, #0]
 800262e:	3b04      	subs	r3, #4
 8002630:	600b      	str	r3, [r1, #0]
 8002632:	6813      	ldr	r3, [r2, #0]
 8002634:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002638:	6813      	ldr	r3, [r2, #0]
 800263a:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800263e:	605e      	str	r6, [r3, #4]
 8002640:	1973      	adds	r3, r6, r5
 8002642:	6815      	ldr	r5, [r2, #0]
 8002644:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002648:	60ab      	str	r3, [r5, #8]
 800264a:	6813      	ldr	r3, [r2, #0]
 800264c:	3303      	adds	r3, #3
 800264e:	6013      	str	r3, [r2, #0]
 8002650:	680b      	ldr	r3, [r1, #0]
 8002652:	2b04      	cmp	r3, #4
 8002654:	db21      	blt.n	800269a <benchmark+0x7e2>
 8002656:	6813      	ldr	r3, [r2, #0]
 8002658:	3303      	adds	r3, #3
 800265a:	2b06      	cmp	r3, #6
 800265c:	dc1d      	bgt.n	800269a <benchmark+0x7e2>
 800265e:	6823      	ldr	r3, [r4, #0]
 8002660:	68a5      	ldr	r5, [r4, #8]
 8002662:	42ab      	cmp	r3, r5
 8002664:	d119      	bne.n	800269a <benchmark+0x7e2>
 8002666:	6823      	ldr	r3, [r4, #0]
 8002668:	6865      	ldr	r5, [r4, #4]
 800266a:	42ab      	cmp	r3, r5
 800266c:	d115      	bne.n	800269a <benchmark+0x7e2>
 800266e:	68e5      	ldr	r5, [r4, #12]
 8002670:	6826      	ldr	r6, [r4, #0]
 8002672:	42ae      	cmp	r6, r5
 8002674:	dd11      	ble.n	800269a <benchmark+0x7e2>
 8002676:	680b      	ldr	r3, [r1, #0]
 8002678:	3b04      	subs	r3, #4
 800267a:	600b      	str	r3, [r1, #0]
 800267c:	6813      	ldr	r3, [r2, #0]
 800267e:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002682:	6813      	ldr	r3, [r2, #0]
 8002684:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002688:	605e      	str	r6, [r3, #4]
 800268a:	1973      	adds	r3, r6, r5
 800268c:	6815      	ldr	r5, [r2, #0]
 800268e:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002692:	60ab      	str	r3, [r5, #8]
 8002694:	6813      	ldr	r3, [r2, #0]
 8002696:	3303      	adds	r3, #3
 8002698:	6013      	str	r3, [r2, #0]
 800269a:	680b      	ldr	r3, [r1, #0]
 800269c:	2b04      	cmp	r3, #4
 800269e:	db21      	blt.n	80026e4 <benchmark+0x82c>
 80026a0:	6813      	ldr	r3, [r2, #0]
 80026a2:	3303      	adds	r3, #3
 80026a4:	2b06      	cmp	r3, #6
 80026a6:	dc1d      	bgt.n	80026e4 <benchmark+0x82c>
 80026a8:	6863      	ldr	r3, [r4, #4]
 80026aa:	6825      	ldr	r5, [r4, #0]
 80026ac:	42ab      	cmp	r3, r5
 80026ae:	d119      	bne.n	80026e4 <benchmark+0x82c>
 80026b0:	6863      	ldr	r3, [r4, #4]
 80026b2:	68a5      	ldr	r5, [r4, #8]
 80026b4:	42ab      	cmp	r3, r5
 80026b6:	d115      	bne.n	80026e4 <benchmark+0x82c>
 80026b8:	68e5      	ldr	r5, [r4, #12]
 80026ba:	6866      	ldr	r6, [r4, #4]
 80026bc:	42ae      	cmp	r6, r5
 80026be:	dd11      	ble.n	80026e4 <benchmark+0x82c>
 80026c0:	680b      	ldr	r3, [r1, #0]
 80026c2:	3b04      	subs	r3, #4
 80026c4:	600b      	str	r3, [r1, #0]
 80026c6:	6813      	ldr	r3, [r2, #0]
 80026c8:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80026cc:	6813      	ldr	r3, [r2, #0]
 80026ce:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80026d2:	605e      	str	r6, [r3, #4]
 80026d4:	1973      	adds	r3, r6, r5
 80026d6:	6815      	ldr	r5, [r2, #0]
 80026d8:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80026dc:	60ab      	str	r3, [r5, #8]
 80026de:	6813      	ldr	r3, [r2, #0]
 80026e0:	3303      	adds	r3, #3
 80026e2:	6013      	str	r3, [r2, #0]
 80026e4:	680b      	ldr	r3, [r1, #0]
 80026e6:	2b04      	cmp	r3, #4
 80026e8:	db21      	blt.n	800272e <benchmark+0x876>
 80026ea:	6813      	ldr	r3, [r2, #0]
 80026ec:	3303      	adds	r3, #3
 80026ee:	2b06      	cmp	r3, #6
 80026f0:	dc1d      	bgt.n	800272e <benchmark+0x876>
 80026f2:	6863      	ldr	r3, [r4, #4]
 80026f4:	68a5      	ldr	r5, [r4, #8]
 80026f6:	42ab      	cmp	r3, r5
 80026f8:	d119      	bne.n	800272e <benchmark+0x876>
 80026fa:	6863      	ldr	r3, [r4, #4]
 80026fc:	6825      	ldr	r5, [r4, #0]
 80026fe:	42ab      	cmp	r3, r5
 8002700:	d115      	bne.n	800272e <benchmark+0x876>
 8002702:	68e5      	ldr	r5, [r4, #12]
 8002704:	6866      	ldr	r6, [r4, #4]
 8002706:	42ae      	cmp	r6, r5
 8002708:	dd11      	ble.n	800272e <benchmark+0x876>
 800270a:	680b      	ldr	r3, [r1, #0]
 800270c:	3b04      	subs	r3, #4
 800270e:	600b      	str	r3, [r1, #0]
 8002710:	6813      	ldr	r3, [r2, #0]
 8002712:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002716:	6813      	ldr	r3, [r2, #0]
 8002718:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800271c:	605e      	str	r6, [r3, #4]
 800271e:	1973      	adds	r3, r6, r5
 8002720:	6815      	ldr	r5, [r2, #0]
 8002722:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002726:	60ab      	str	r3, [r5, #8]
 8002728:	6813      	ldr	r3, [r2, #0]
 800272a:	3303      	adds	r3, #3
 800272c:	6013      	str	r3, [r2, #0]
 800272e:	680b      	ldr	r3, [r1, #0]
 8002730:	2b04      	cmp	r3, #4
 8002732:	db21      	blt.n	8002778 <benchmark+0x8c0>
 8002734:	6813      	ldr	r3, [r2, #0]
 8002736:	3303      	adds	r3, #3
 8002738:	2b06      	cmp	r3, #6
 800273a:	dc1d      	bgt.n	8002778 <benchmark+0x8c0>
 800273c:	68a3      	ldr	r3, [r4, #8]
 800273e:	6825      	ldr	r5, [r4, #0]
 8002740:	42ab      	cmp	r3, r5
 8002742:	d119      	bne.n	8002778 <benchmark+0x8c0>
 8002744:	68a3      	ldr	r3, [r4, #8]
 8002746:	6865      	ldr	r5, [r4, #4]
 8002748:	42ab      	cmp	r3, r5
 800274a:	d115      	bne.n	8002778 <benchmark+0x8c0>
 800274c:	68e5      	ldr	r5, [r4, #12]
 800274e:	68a6      	ldr	r6, [r4, #8]
 8002750:	42ae      	cmp	r6, r5
 8002752:	dd11      	ble.n	8002778 <benchmark+0x8c0>
 8002754:	680b      	ldr	r3, [r1, #0]
 8002756:	3b04      	subs	r3, #4
 8002758:	600b      	str	r3, [r1, #0]
 800275a:	6813      	ldr	r3, [r2, #0]
 800275c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002760:	6813      	ldr	r3, [r2, #0]
 8002762:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002766:	605e      	str	r6, [r3, #4]
 8002768:	1973      	adds	r3, r6, r5
 800276a:	6815      	ldr	r5, [r2, #0]
 800276c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002770:	60ab      	str	r3, [r5, #8]
 8002772:	6813      	ldr	r3, [r2, #0]
 8002774:	3303      	adds	r3, #3
 8002776:	6013      	str	r3, [r2, #0]
 8002778:	680b      	ldr	r3, [r1, #0]
 800277a:	2b04      	cmp	r3, #4
 800277c:	db21      	blt.n	80027c2 <benchmark+0x90a>
 800277e:	6813      	ldr	r3, [r2, #0]
 8002780:	3303      	adds	r3, #3
 8002782:	2b06      	cmp	r3, #6
 8002784:	dc1d      	bgt.n	80027c2 <benchmark+0x90a>
 8002786:	68a3      	ldr	r3, [r4, #8]
 8002788:	6865      	ldr	r5, [r4, #4]
 800278a:	42ab      	cmp	r3, r5
 800278c:	d119      	bne.n	80027c2 <benchmark+0x90a>
 800278e:	68a3      	ldr	r3, [r4, #8]
 8002790:	6825      	ldr	r5, [r4, #0]
 8002792:	42ab      	cmp	r3, r5
 8002794:	d115      	bne.n	80027c2 <benchmark+0x90a>
 8002796:	68e5      	ldr	r5, [r4, #12]
 8002798:	68a6      	ldr	r6, [r4, #8]
 800279a:	42ae      	cmp	r6, r5
 800279c:	dd11      	ble.n	80027c2 <benchmark+0x90a>
 800279e:	680b      	ldr	r3, [r1, #0]
 80027a0:	3b04      	subs	r3, #4
 80027a2:	600b      	str	r3, [r1, #0]
 80027a4:	6813      	ldr	r3, [r2, #0]
 80027a6:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80027aa:	6813      	ldr	r3, [r2, #0]
 80027ac:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80027b0:	605e      	str	r6, [r3, #4]
 80027b2:	1973      	adds	r3, r6, r5
 80027b4:	6815      	ldr	r5, [r2, #0]
 80027b6:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80027ba:	60ab      	str	r3, [r5, #8]
 80027bc:	6813      	ldr	r3, [r2, #0]
 80027be:	3303      	adds	r3, #3
 80027c0:	6013      	str	r3, [r2, #0]
 80027c2:	680b      	ldr	r3, [r1, #0]
 80027c4:	2b05      	cmp	r3, #5
 80027c6:	db23      	blt.n	8002810 <benchmark+0x958>
 80027c8:	6813      	ldr	r3, [r2, #0]
 80027ca:	3303      	adds	r3, #3
 80027cc:	2b06      	cmp	r3, #6
 80027ce:	dc1f      	bgt.n	8002810 <benchmark+0x958>
 80027d0:	6863      	ldr	r3, [r4, #4]
 80027d2:	68a5      	ldr	r5, [r4, #8]
 80027d4:	42ab      	cmp	r3, r5
 80027d6:	d11b      	bne.n	8002810 <benchmark+0x958>
 80027d8:	6863      	ldr	r3, [r4, #4]
 80027da:	6925      	ldr	r5, [r4, #16]
 80027dc:	42ab      	cmp	r3, r5
 80027de:	d117      	bne.n	8002810 <benchmark+0x958>
 80027e0:	6825      	ldr	r5, [r4, #0]
 80027e2:	6866      	ldr	r6, [r4, #4]
 80027e4:	42ae      	cmp	r6, r5
 80027e6:	dd13      	ble.n	8002810 <benchmark+0x958>
 80027e8:	68e3      	ldr	r3, [r4, #12]
 80027ea:	6023      	str	r3, [r4, #0]
 80027ec:	680b      	ldr	r3, [r1, #0]
 80027ee:	3b04      	subs	r3, #4
 80027f0:	600b      	str	r3, [r1, #0]
 80027f2:	6813      	ldr	r3, [r2, #0]
 80027f4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80027f8:	6813      	ldr	r3, [r2, #0]
 80027fa:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80027fe:	605e      	str	r6, [r3, #4]
 8002800:	1973      	adds	r3, r6, r5
 8002802:	6815      	ldr	r5, [r2, #0]
 8002804:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002808:	60ab      	str	r3, [r5, #8]
 800280a:	6813      	ldr	r3, [r2, #0]
 800280c:	3303      	adds	r3, #3
 800280e:	6013      	str	r3, [r2, #0]
 8002810:	680b      	ldr	r3, [r1, #0]
 8002812:	2b05      	cmp	r3, #5
 8002814:	db23      	blt.n	800285e <benchmark+0x9a6>
 8002816:	6813      	ldr	r3, [r2, #0]
 8002818:	3303      	adds	r3, #3
 800281a:	2b06      	cmp	r3, #6
 800281c:	dc1f      	bgt.n	800285e <benchmark+0x9a6>
 800281e:	6863      	ldr	r3, [r4, #4]
 8002820:	68e5      	ldr	r5, [r4, #12]
 8002822:	42ab      	cmp	r3, r5
 8002824:	d11b      	bne.n	800285e <benchmark+0x9a6>
 8002826:	6863      	ldr	r3, [r4, #4]
 8002828:	6925      	ldr	r5, [r4, #16]
 800282a:	42ab      	cmp	r3, r5
 800282c:	d117      	bne.n	800285e <benchmark+0x9a6>
 800282e:	6825      	ldr	r5, [r4, #0]
 8002830:	6866      	ldr	r6, [r4, #4]
 8002832:	42ae      	cmp	r6, r5
 8002834:	dd13      	ble.n	800285e <benchmark+0x9a6>
 8002836:	68a3      	ldr	r3, [r4, #8]
 8002838:	6023      	str	r3, [r4, #0]
 800283a:	680b      	ldr	r3, [r1, #0]
 800283c:	3b04      	subs	r3, #4
 800283e:	600b      	str	r3, [r1, #0]
 8002840:	6813      	ldr	r3, [r2, #0]
 8002842:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002846:	6813      	ldr	r3, [r2, #0]
 8002848:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800284c:	605e      	str	r6, [r3, #4]
 800284e:	1973      	adds	r3, r6, r5
 8002850:	6815      	ldr	r5, [r2, #0]
 8002852:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002856:	60ab      	str	r3, [r5, #8]
 8002858:	6813      	ldr	r3, [r2, #0]
 800285a:	3303      	adds	r3, #3
 800285c:	6013      	str	r3, [r2, #0]
 800285e:	680b      	ldr	r3, [r1, #0]
 8002860:	2b05      	cmp	r3, #5
 8002862:	db23      	blt.n	80028ac <benchmark+0x9f4>
 8002864:	6813      	ldr	r3, [r2, #0]
 8002866:	3303      	adds	r3, #3
 8002868:	2b06      	cmp	r3, #6
 800286a:	dc1f      	bgt.n	80028ac <benchmark+0x9f4>
 800286c:	6863      	ldr	r3, [r4, #4]
 800286e:	6925      	ldr	r5, [r4, #16]
 8002870:	42ab      	cmp	r3, r5
 8002872:	d11b      	bne.n	80028ac <benchmark+0x9f4>
 8002874:	6863      	ldr	r3, [r4, #4]
 8002876:	68a5      	ldr	r5, [r4, #8]
 8002878:	42ab      	cmp	r3, r5
 800287a:	d117      	bne.n	80028ac <benchmark+0x9f4>
 800287c:	6825      	ldr	r5, [r4, #0]
 800287e:	6866      	ldr	r6, [r4, #4]
 8002880:	42ae      	cmp	r6, r5
 8002882:	dd13      	ble.n	80028ac <benchmark+0x9f4>
 8002884:	68e3      	ldr	r3, [r4, #12]
 8002886:	6023      	str	r3, [r4, #0]
 8002888:	680b      	ldr	r3, [r1, #0]
 800288a:	3b04      	subs	r3, #4
 800288c:	600b      	str	r3, [r1, #0]
 800288e:	6813      	ldr	r3, [r2, #0]
 8002890:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002894:	6813      	ldr	r3, [r2, #0]
 8002896:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800289a:	605e      	str	r6, [r3, #4]
 800289c:	1973      	adds	r3, r6, r5
 800289e:	6815      	ldr	r5, [r2, #0]
 80028a0:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80028a4:	60ab      	str	r3, [r5, #8]
 80028a6:	6813      	ldr	r3, [r2, #0]
 80028a8:	3303      	adds	r3, #3
 80028aa:	6013      	str	r3, [r2, #0]
 80028ac:	680b      	ldr	r3, [r1, #0]
 80028ae:	2b05      	cmp	r3, #5
 80028b0:	db23      	blt.n	80028fa <benchmark+0xa42>
 80028b2:	6813      	ldr	r3, [r2, #0]
 80028b4:	3303      	adds	r3, #3
 80028b6:	2b06      	cmp	r3, #6
 80028b8:	dc1f      	bgt.n	80028fa <benchmark+0xa42>
 80028ba:	6863      	ldr	r3, [r4, #4]
 80028bc:	6925      	ldr	r5, [r4, #16]
 80028be:	42ab      	cmp	r3, r5
 80028c0:	d11b      	bne.n	80028fa <benchmark+0xa42>
 80028c2:	6863      	ldr	r3, [r4, #4]
 80028c4:	68e5      	ldr	r5, [r4, #12]
 80028c6:	42ab      	cmp	r3, r5
 80028c8:	d117      	bne.n	80028fa <benchmark+0xa42>
 80028ca:	6825      	ldr	r5, [r4, #0]
 80028cc:	6866      	ldr	r6, [r4, #4]
 80028ce:	42ae      	cmp	r6, r5
 80028d0:	dd13      	ble.n	80028fa <benchmark+0xa42>
 80028d2:	68a3      	ldr	r3, [r4, #8]
 80028d4:	6023      	str	r3, [r4, #0]
 80028d6:	680b      	ldr	r3, [r1, #0]
 80028d8:	3b04      	subs	r3, #4
 80028da:	600b      	str	r3, [r1, #0]
 80028dc:	6813      	ldr	r3, [r2, #0]
 80028de:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80028e2:	6813      	ldr	r3, [r2, #0]
 80028e4:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80028e8:	605e      	str	r6, [r3, #4]
 80028ea:	1973      	adds	r3, r6, r5
 80028ec:	6815      	ldr	r5, [r2, #0]
 80028ee:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80028f2:	60ab      	str	r3, [r5, #8]
 80028f4:	6813      	ldr	r3, [r2, #0]
 80028f6:	3303      	adds	r3, #3
 80028f8:	6013      	str	r3, [r2, #0]
 80028fa:	680b      	ldr	r3, [r1, #0]
 80028fc:	2b05      	cmp	r3, #5
 80028fe:	db23      	blt.n	8002948 <benchmark+0xa90>
 8002900:	6813      	ldr	r3, [r2, #0]
 8002902:	3303      	adds	r3, #3
 8002904:	2b06      	cmp	r3, #6
 8002906:	dc1f      	bgt.n	8002948 <benchmark+0xa90>
 8002908:	68a3      	ldr	r3, [r4, #8]
 800290a:	6865      	ldr	r5, [r4, #4]
 800290c:	42ab      	cmp	r3, r5
 800290e:	d11b      	bne.n	8002948 <benchmark+0xa90>
 8002910:	68a3      	ldr	r3, [r4, #8]
 8002912:	6925      	ldr	r5, [r4, #16]
 8002914:	42ab      	cmp	r3, r5
 8002916:	d117      	bne.n	8002948 <benchmark+0xa90>
 8002918:	6825      	ldr	r5, [r4, #0]
 800291a:	68a6      	ldr	r6, [r4, #8]
 800291c:	42ae      	cmp	r6, r5
 800291e:	dd13      	ble.n	8002948 <benchmark+0xa90>
 8002920:	68e3      	ldr	r3, [r4, #12]
 8002922:	6023      	str	r3, [r4, #0]
 8002924:	680b      	ldr	r3, [r1, #0]
 8002926:	3b04      	subs	r3, #4
 8002928:	600b      	str	r3, [r1, #0]
 800292a:	6813      	ldr	r3, [r2, #0]
 800292c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002930:	6813      	ldr	r3, [r2, #0]
 8002932:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002936:	605e      	str	r6, [r3, #4]
 8002938:	1973      	adds	r3, r6, r5
 800293a:	6815      	ldr	r5, [r2, #0]
 800293c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002940:	60ab      	str	r3, [r5, #8]
 8002942:	6813      	ldr	r3, [r2, #0]
 8002944:	3303      	adds	r3, #3
 8002946:	6013      	str	r3, [r2, #0]
 8002948:	680b      	ldr	r3, [r1, #0]
 800294a:	2b05      	cmp	r3, #5
 800294c:	db23      	blt.n	8002996 <benchmark+0xade>
 800294e:	6813      	ldr	r3, [r2, #0]
 8002950:	3303      	adds	r3, #3
 8002952:	2b06      	cmp	r3, #6
 8002954:	dc1f      	bgt.n	8002996 <benchmark+0xade>
 8002956:	68a3      	ldr	r3, [r4, #8]
 8002958:	68e5      	ldr	r5, [r4, #12]
 800295a:	42ab      	cmp	r3, r5
 800295c:	d11b      	bne.n	8002996 <benchmark+0xade>
 800295e:	68a3      	ldr	r3, [r4, #8]
 8002960:	6925      	ldr	r5, [r4, #16]
 8002962:	42ab      	cmp	r3, r5
 8002964:	d117      	bne.n	8002996 <benchmark+0xade>
 8002966:	6825      	ldr	r5, [r4, #0]
 8002968:	68a6      	ldr	r6, [r4, #8]
 800296a:	42ae      	cmp	r6, r5
 800296c:	dd13      	ble.n	8002996 <benchmark+0xade>
 800296e:	6863      	ldr	r3, [r4, #4]
 8002970:	6023      	str	r3, [r4, #0]
 8002972:	680b      	ldr	r3, [r1, #0]
 8002974:	3b04      	subs	r3, #4
 8002976:	600b      	str	r3, [r1, #0]
 8002978:	6813      	ldr	r3, [r2, #0]
 800297a:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800297e:	6813      	ldr	r3, [r2, #0]
 8002980:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002984:	605e      	str	r6, [r3, #4]
 8002986:	1973      	adds	r3, r6, r5
 8002988:	6815      	ldr	r5, [r2, #0]
 800298a:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800298e:	60ab      	str	r3, [r5, #8]
 8002990:	6813      	ldr	r3, [r2, #0]
 8002992:	3303      	adds	r3, #3
 8002994:	6013      	str	r3, [r2, #0]
 8002996:	680b      	ldr	r3, [r1, #0]
 8002998:	2b05      	cmp	r3, #5
 800299a:	db23      	blt.n	80029e4 <benchmark+0xb2c>
 800299c:	6813      	ldr	r3, [r2, #0]
 800299e:	3303      	adds	r3, #3
 80029a0:	2b06      	cmp	r3, #6
 80029a2:	dc1f      	bgt.n	80029e4 <benchmark+0xb2c>
 80029a4:	68a3      	ldr	r3, [r4, #8]
 80029a6:	6925      	ldr	r5, [r4, #16]
 80029a8:	42ab      	cmp	r3, r5
 80029aa:	d11b      	bne.n	80029e4 <benchmark+0xb2c>
 80029ac:	68a3      	ldr	r3, [r4, #8]
 80029ae:	6865      	ldr	r5, [r4, #4]
 80029b0:	42ab      	cmp	r3, r5
 80029b2:	d117      	bne.n	80029e4 <benchmark+0xb2c>
 80029b4:	6825      	ldr	r5, [r4, #0]
 80029b6:	68a6      	ldr	r6, [r4, #8]
 80029b8:	42ae      	cmp	r6, r5
 80029ba:	dd13      	ble.n	80029e4 <benchmark+0xb2c>
 80029bc:	68e3      	ldr	r3, [r4, #12]
 80029be:	6023      	str	r3, [r4, #0]
 80029c0:	680b      	ldr	r3, [r1, #0]
 80029c2:	3b04      	subs	r3, #4
 80029c4:	600b      	str	r3, [r1, #0]
 80029c6:	6813      	ldr	r3, [r2, #0]
 80029c8:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80029cc:	6813      	ldr	r3, [r2, #0]
 80029ce:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80029d2:	605e      	str	r6, [r3, #4]
 80029d4:	1973      	adds	r3, r6, r5
 80029d6:	6815      	ldr	r5, [r2, #0]
 80029d8:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80029dc:	60ab      	str	r3, [r5, #8]
 80029de:	6813      	ldr	r3, [r2, #0]
 80029e0:	3303      	adds	r3, #3
 80029e2:	6013      	str	r3, [r2, #0]
 80029e4:	680b      	ldr	r3, [r1, #0]
 80029e6:	2b05      	cmp	r3, #5
 80029e8:	db23      	blt.n	8002a32 <benchmark+0xb7a>
 80029ea:	6813      	ldr	r3, [r2, #0]
 80029ec:	3303      	adds	r3, #3
 80029ee:	2b06      	cmp	r3, #6
 80029f0:	dc1f      	bgt.n	8002a32 <benchmark+0xb7a>
 80029f2:	68a3      	ldr	r3, [r4, #8]
 80029f4:	6925      	ldr	r5, [r4, #16]
 80029f6:	42ab      	cmp	r3, r5
 80029f8:	d11b      	bne.n	8002a32 <benchmark+0xb7a>
 80029fa:	68a3      	ldr	r3, [r4, #8]
 80029fc:	68e5      	ldr	r5, [r4, #12]
 80029fe:	42ab      	cmp	r3, r5
 8002a00:	d117      	bne.n	8002a32 <benchmark+0xb7a>
 8002a02:	6825      	ldr	r5, [r4, #0]
 8002a04:	68a6      	ldr	r6, [r4, #8]
 8002a06:	42ae      	cmp	r6, r5
 8002a08:	dd13      	ble.n	8002a32 <benchmark+0xb7a>
 8002a0a:	6863      	ldr	r3, [r4, #4]
 8002a0c:	6023      	str	r3, [r4, #0]
 8002a0e:	680b      	ldr	r3, [r1, #0]
 8002a10:	3b04      	subs	r3, #4
 8002a12:	600b      	str	r3, [r1, #0]
 8002a14:	6813      	ldr	r3, [r2, #0]
 8002a16:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002a1a:	6813      	ldr	r3, [r2, #0]
 8002a1c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002a20:	605e      	str	r6, [r3, #4]
 8002a22:	1973      	adds	r3, r6, r5
 8002a24:	6815      	ldr	r5, [r2, #0]
 8002a26:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002a2a:	60ab      	str	r3, [r5, #8]
 8002a2c:	6813      	ldr	r3, [r2, #0]
 8002a2e:	3303      	adds	r3, #3
 8002a30:	6013      	str	r3, [r2, #0]
 8002a32:	680b      	ldr	r3, [r1, #0]
 8002a34:	2b05      	cmp	r3, #5
 8002a36:	db23      	blt.n	8002a80 <benchmark+0xbc8>
 8002a38:	6813      	ldr	r3, [r2, #0]
 8002a3a:	3303      	adds	r3, #3
 8002a3c:	2b06      	cmp	r3, #6
 8002a3e:	dc1f      	bgt.n	8002a80 <benchmark+0xbc8>
 8002a40:	68e3      	ldr	r3, [r4, #12]
 8002a42:	6865      	ldr	r5, [r4, #4]
 8002a44:	42ab      	cmp	r3, r5
 8002a46:	d11b      	bne.n	8002a80 <benchmark+0xbc8>
 8002a48:	68e3      	ldr	r3, [r4, #12]
 8002a4a:	6925      	ldr	r5, [r4, #16]
 8002a4c:	42ab      	cmp	r3, r5
 8002a4e:	d117      	bne.n	8002a80 <benchmark+0xbc8>
 8002a50:	6825      	ldr	r5, [r4, #0]
 8002a52:	68e6      	ldr	r6, [r4, #12]
 8002a54:	42ae      	cmp	r6, r5
 8002a56:	dd13      	ble.n	8002a80 <benchmark+0xbc8>
 8002a58:	68a3      	ldr	r3, [r4, #8]
 8002a5a:	6023      	str	r3, [r4, #0]
 8002a5c:	680b      	ldr	r3, [r1, #0]
 8002a5e:	3b04      	subs	r3, #4
 8002a60:	600b      	str	r3, [r1, #0]
 8002a62:	6813      	ldr	r3, [r2, #0]
 8002a64:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002a68:	6813      	ldr	r3, [r2, #0]
 8002a6a:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002a6e:	605e      	str	r6, [r3, #4]
 8002a70:	1973      	adds	r3, r6, r5
 8002a72:	6815      	ldr	r5, [r2, #0]
 8002a74:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002a78:	60ab      	str	r3, [r5, #8]
 8002a7a:	6813      	ldr	r3, [r2, #0]
 8002a7c:	3303      	adds	r3, #3
 8002a7e:	6013      	str	r3, [r2, #0]
 8002a80:	680b      	ldr	r3, [r1, #0]
 8002a82:	2b05      	cmp	r3, #5
 8002a84:	db23      	blt.n	8002ace <benchmark+0xc16>
 8002a86:	6813      	ldr	r3, [r2, #0]
 8002a88:	3303      	adds	r3, #3
 8002a8a:	2b06      	cmp	r3, #6
 8002a8c:	dc1f      	bgt.n	8002ace <benchmark+0xc16>
 8002a8e:	68e3      	ldr	r3, [r4, #12]
 8002a90:	68a5      	ldr	r5, [r4, #8]
 8002a92:	42ab      	cmp	r3, r5
 8002a94:	d11b      	bne.n	8002ace <benchmark+0xc16>
 8002a96:	68e3      	ldr	r3, [r4, #12]
 8002a98:	6925      	ldr	r5, [r4, #16]
 8002a9a:	42ab      	cmp	r3, r5
 8002a9c:	d117      	bne.n	8002ace <benchmark+0xc16>
 8002a9e:	6825      	ldr	r5, [r4, #0]
 8002aa0:	68e6      	ldr	r6, [r4, #12]
 8002aa2:	42ae      	cmp	r6, r5
 8002aa4:	dd13      	ble.n	8002ace <benchmark+0xc16>
 8002aa6:	6863      	ldr	r3, [r4, #4]
 8002aa8:	6023      	str	r3, [r4, #0]
 8002aaa:	680b      	ldr	r3, [r1, #0]
 8002aac:	3b04      	subs	r3, #4
 8002aae:	600b      	str	r3, [r1, #0]
 8002ab0:	6813      	ldr	r3, [r2, #0]
 8002ab2:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002ab6:	6813      	ldr	r3, [r2, #0]
 8002ab8:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002abc:	605e      	str	r6, [r3, #4]
 8002abe:	1973      	adds	r3, r6, r5
 8002ac0:	6815      	ldr	r5, [r2, #0]
 8002ac2:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002ac6:	60ab      	str	r3, [r5, #8]
 8002ac8:	6813      	ldr	r3, [r2, #0]
 8002aca:	3303      	adds	r3, #3
 8002acc:	6013      	str	r3, [r2, #0]
 8002ace:	680b      	ldr	r3, [r1, #0]
 8002ad0:	2b05      	cmp	r3, #5
 8002ad2:	db23      	blt.n	8002b1c <benchmark+0xc64>
 8002ad4:	6813      	ldr	r3, [r2, #0]
 8002ad6:	3303      	adds	r3, #3
 8002ad8:	2b06      	cmp	r3, #6
 8002ada:	dc1f      	bgt.n	8002b1c <benchmark+0xc64>
 8002adc:	68e3      	ldr	r3, [r4, #12]
 8002ade:	6925      	ldr	r5, [r4, #16]
 8002ae0:	42ab      	cmp	r3, r5
 8002ae2:	d11b      	bne.n	8002b1c <benchmark+0xc64>
 8002ae4:	68e3      	ldr	r3, [r4, #12]
 8002ae6:	6865      	ldr	r5, [r4, #4]
 8002ae8:	42ab      	cmp	r3, r5
 8002aea:	d117      	bne.n	8002b1c <benchmark+0xc64>
 8002aec:	6825      	ldr	r5, [r4, #0]
 8002aee:	68e6      	ldr	r6, [r4, #12]
 8002af0:	42ae      	cmp	r6, r5
 8002af2:	dd13      	ble.n	8002b1c <benchmark+0xc64>
 8002af4:	68a3      	ldr	r3, [r4, #8]
 8002af6:	6023      	str	r3, [r4, #0]
 8002af8:	680b      	ldr	r3, [r1, #0]
 8002afa:	3b04      	subs	r3, #4
 8002afc:	600b      	str	r3, [r1, #0]
 8002afe:	6813      	ldr	r3, [r2, #0]
 8002b00:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002b04:	6813      	ldr	r3, [r2, #0]
 8002b06:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002b0a:	605e      	str	r6, [r3, #4]
 8002b0c:	1973      	adds	r3, r6, r5
 8002b0e:	6815      	ldr	r5, [r2, #0]
 8002b10:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002b14:	60ab      	str	r3, [r5, #8]
 8002b16:	6813      	ldr	r3, [r2, #0]
 8002b18:	3303      	adds	r3, #3
 8002b1a:	6013      	str	r3, [r2, #0]
 8002b1c:	680b      	ldr	r3, [r1, #0]
 8002b1e:	2b05      	cmp	r3, #5
 8002b20:	db23      	blt.n	8002b6a <benchmark+0xcb2>
 8002b22:	6813      	ldr	r3, [r2, #0]
 8002b24:	3303      	adds	r3, #3
 8002b26:	2b06      	cmp	r3, #6
 8002b28:	dc1f      	bgt.n	8002b6a <benchmark+0xcb2>
 8002b2a:	68e3      	ldr	r3, [r4, #12]
 8002b2c:	6925      	ldr	r5, [r4, #16]
 8002b2e:	42ab      	cmp	r3, r5
 8002b30:	d11b      	bne.n	8002b6a <benchmark+0xcb2>
 8002b32:	68e3      	ldr	r3, [r4, #12]
 8002b34:	68a5      	ldr	r5, [r4, #8]
 8002b36:	42ab      	cmp	r3, r5
 8002b38:	d117      	bne.n	8002b6a <benchmark+0xcb2>
 8002b3a:	6825      	ldr	r5, [r4, #0]
 8002b3c:	68e6      	ldr	r6, [r4, #12]
 8002b3e:	42ae      	cmp	r6, r5
 8002b40:	dd13      	ble.n	8002b6a <benchmark+0xcb2>
 8002b42:	6863      	ldr	r3, [r4, #4]
 8002b44:	6023      	str	r3, [r4, #0]
 8002b46:	680b      	ldr	r3, [r1, #0]
 8002b48:	3b04      	subs	r3, #4
 8002b4a:	600b      	str	r3, [r1, #0]
 8002b4c:	6813      	ldr	r3, [r2, #0]
 8002b4e:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002b52:	6813      	ldr	r3, [r2, #0]
 8002b54:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002b58:	605e      	str	r6, [r3, #4]
 8002b5a:	1973      	adds	r3, r6, r5
 8002b5c:	6815      	ldr	r5, [r2, #0]
 8002b5e:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002b62:	60ab      	str	r3, [r5, #8]
 8002b64:	6813      	ldr	r3, [r2, #0]
 8002b66:	3303      	adds	r3, #3
 8002b68:	6013      	str	r3, [r2, #0]
 8002b6a:	680b      	ldr	r3, [r1, #0]
 8002b6c:	2b05      	cmp	r3, #5
 8002b6e:	db23      	blt.n	8002bb8 <benchmark+0xd00>
 8002b70:	6813      	ldr	r3, [r2, #0]
 8002b72:	3303      	adds	r3, #3
 8002b74:	2b06      	cmp	r3, #6
 8002b76:	dc1f      	bgt.n	8002bb8 <benchmark+0xd00>
 8002b78:	6923      	ldr	r3, [r4, #16]
 8002b7a:	6865      	ldr	r5, [r4, #4]
 8002b7c:	42ab      	cmp	r3, r5
 8002b7e:	d11b      	bne.n	8002bb8 <benchmark+0xd00>
 8002b80:	6923      	ldr	r3, [r4, #16]
 8002b82:	68a5      	ldr	r5, [r4, #8]
 8002b84:	42ab      	cmp	r3, r5
 8002b86:	d117      	bne.n	8002bb8 <benchmark+0xd00>
 8002b88:	6825      	ldr	r5, [r4, #0]
 8002b8a:	6926      	ldr	r6, [r4, #16]
 8002b8c:	42ae      	cmp	r6, r5
 8002b8e:	dd13      	ble.n	8002bb8 <benchmark+0xd00>
 8002b90:	68e3      	ldr	r3, [r4, #12]
 8002b92:	6023      	str	r3, [r4, #0]
 8002b94:	680b      	ldr	r3, [r1, #0]
 8002b96:	3b04      	subs	r3, #4
 8002b98:	600b      	str	r3, [r1, #0]
 8002b9a:	6813      	ldr	r3, [r2, #0]
 8002b9c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002ba0:	6813      	ldr	r3, [r2, #0]
 8002ba2:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002ba6:	605e      	str	r6, [r3, #4]
 8002ba8:	1973      	adds	r3, r6, r5
 8002baa:	6815      	ldr	r5, [r2, #0]
 8002bac:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002bb0:	60ab      	str	r3, [r5, #8]
 8002bb2:	6813      	ldr	r3, [r2, #0]
 8002bb4:	3303      	adds	r3, #3
 8002bb6:	6013      	str	r3, [r2, #0]
 8002bb8:	680b      	ldr	r3, [r1, #0]
 8002bba:	2b05      	cmp	r3, #5
 8002bbc:	db23      	blt.n	8002c06 <benchmark+0xd4e>
 8002bbe:	6813      	ldr	r3, [r2, #0]
 8002bc0:	3303      	adds	r3, #3
 8002bc2:	2b06      	cmp	r3, #6
 8002bc4:	dc1f      	bgt.n	8002c06 <benchmark+0xd4e>
 8002bc6:	6923      	ldr	r3, [r4, #16]
 8002bc8:	6865      	ldr	r5, [r4, #4]
 8002bca:	42ab      	cmp	r3, r5
 8002bcc:	d11b      	bne.n	8002c06 <benchmark+0xd4e>
 8002bce:	6923      	ldr	r3, [r4, #16]
 8002bd0:	68e5      	ldr	r5, [r4, #12]
 8002bd2:	42ab      	cmp	r3, r5
 8002bd4:	d117      	bne.n	8002c06 <benchmark+0xd4e>
 8002bd6:	6825      	ldr	r5, [r4, #0]
 8002bd8:	6926      	ldr	r6, [r4, #16]
 8002bda:	42ae      	cmp	r6, r5
 8002bdc:	dd13      	ble.n	8002c06 <benchmark+0xd4e>
 8002bde:	68a3      	ldr	r3, [r4, #8]
 8002be0:	6023      	str	r3, [r4, #0]
 8002be2:	680b      	ldr	r3, [r1, #0]
 8002be4:	3b04      	subs	r3, #4
 8002be6:	600b      	str	r3, [r1, #0]
 8002be8:	6813      	ldr	r3, [r2, #0]
 8002bea:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002bee:	6813      	ldr	r3, [r2, #0]
 8002bf0:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002bf4:	605e      	str	r6, [r3, #4]
 8002bf6:	1973      	adds	r3, r6, r5
 8002bf8:	6815      	ldr	r5, [r2, #0]
 8002bfa:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002bfe:	60ab      	str	r3, [r5, #8]
 8002c00:	6813      	ldr	r3, [r2, #0]
 8002c02:	3303      	adds	r3, #3
 8002c04:	6013      	str	r3, [r2, #0]
 8002c06:	680b      	ldr	r3, [r1, #0]
 8002c08:	2b05      	cmp	r3, #5
 8002c0a:	db23      	blt.n	8002c54 <benchmark+0xd9c>
 8002c0c:	6813      	ldr	r3, [r2, #0]
 8002c0e:	3303      	adds	r3, #3
 8002c10:	2b06      	cmp	r3, #6
 8002c12:	dc1f      	bgt.n	8002c54 <benchmark+0xd9c>
 8002c14:	6923      	ldr	r3, [r4, #16]
 8002c16:	68a5      	ldr	r5, [r4, #8]
 8002c18:	42ab      	cmp	r3, r5
 8002c1a:	d11b      	bne.n	8002c54 <benchmark+0xd9c>
 8002c1c:	6923      	ldr	r3, [r4, #16]
 8002c1e:	6865      	ldr	r5, [r4, #4]
 8002c20:	42ab      	cmp	r3, r5
 8002c22:	d117      	bne.n	8002c54 <benchmark+0xd9c>
 8002c24:	6825      	ldr	r5, [r4, #0]
 8002c26:	6926      	ldr	r6, [r4, #16]
 8002c28:	42ae      	cmp	r6, r5
 8002c2a:	dd13      	ble.n	8002c54 <benchmark+0xd9c>
 8002c2c:	68e3      	ldr	r3, [r4, #12]
 8002c2e:	6023      	str	r3, [r4, #0]
 8002c30:	680b      	ldr	r3, [r1, #0]
 8002c32:	3b04      	subs	r3, #4
 8002c34:	600b      	str	r3, [r1, #0]
 8002c36:	6813      	ldr	r3, [r2, #0]
 8002c38:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002c3c:	6813      	ldr	r3, [r2, #0]
 8002c3e:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002c42:	605e      	str	r6, [r3, #4]
 8002c44:	1973      	adds	r3, r6, r5
 8002c46:	6815      	ldr	r5, [r2, #0]
 8002c48:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002c4c:	60ab      	str	r3, [r5, #8]
 8002c4e:	6813      	ldr	r3, [r2, #0]
 8002c50:	3303      	adds	r3, #3
 8002c52:	6013      	str	r3, [r2, #0]
 8002c54:	680b      	ldr	r3, [r1, #0]
 8002c56:	2b05      	cmp	r3, #5
 8002c58:	db23      	blt.n	8002ca2 <benchmark+0xdea>
 8002c5a:	6813      	ldr	r3, [r2, #0]
 8002c5c:	3303      	adds	r3, #3
 8002c5e:	2b06      	cmp	r3, #6
 8002c60:	dc1f      	bgt.n	8002ca2 <benchmark+0xdea>
 8002c62:	6923      	ldr	r3, [r4, #16]
 8002c64:	68a5      	ldr	r5, [r4, #8]
 8002c66:	42ab      	cmp	r3, r5
 8002c68:	d11b      	bne.n	8002ca2 <benchmark+0xdea>
 8002c6a:	6923      	ldr	r3, [r4, #16]
 8002c6c:	68e5      	ldr	r5, [r4, #12]
 8002c6e:	42ab      	cmp	r3, r5
 8002c70:	d117      	bne.n	8002ca2 <benchmark+0xdea>
 8002c72:	6825      	ldr	r5, [r4, #0]
 8002c74:	6926      	ldr	r6, [r4, #16]
 8002c76:	42ae      	cmp	r6, r5
 8002c78:	dd13      	ble.n	8002ca2 <benchmark+0xdea>
 8002c7a:	6863      	ldr	r3, [r4, #4]
 8002c7c:	6023      	str	r3, [r4, #0]
 8002c7e:	680b      	ldr	r3, [r1, #0]
 8002c80:	3b04      	subs	r3, #4
 8002c82:	600b      	str	r3, [r1, #0]
 8002c84:	6813      	ldr	r3, [r2, #0]
 8002c86:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002c8a:	6813      	ldr	r3, [r2, #0]
 8002c8c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002c90:	605e      	str	r6, [r3, #4]
 8002c92:	1973      	adds	r3, r6, r5
 8002c94:	6815      	ldr	r5, [r2, #0]
 8002c96:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002c9a:	60ab      	str	r3, [r5, #8]
 8002c9c:	6813      	ldr	r3, [r2, #0]
 8002c9e:	3303      	adds	r3, #3
 8002ca0:	6013      	str	r3, [r2, #0]
 8002ca2:	680b      	ldr	r3, [r1, #0]
 8002ca4:	2b05      	cmp	r3, #5
 8002ca6:	db23      	blt.n	8002cf0 <benchmark+0xe38>
 8002ca8:	6813      	ldr	r3, [r2, #0]
 8002caa:	3303      	adds	r3, #3
 8002cac:	2b06      	cmp	r3, #6
 8002cae:	dc1f      	bgt.n	8002cf0 <benchmark+0xe38>
 8002cb0:	6923      	ldr	r3, [r4, #16]
 8002cb2:	68e5      	ldr	r5, [r4, #12]
 8002cb4:	42ab      	cmp	r3, r5
 8002cb6:	d11b      	bne.n	8002cf0 <benchmark+0xe38>
 8002cb8:	6923      	ldr	r3, [r4, #16]
 8002cba:	6865      	ldr	r5, [r4, #4]
 8002cbc:	42ab      	cmp	r3, r5
 8002cbe:	d117      	bne.n	8002cf0 <benchmark+0xe38>
 8002cc0:	6825      	ldr	r5, [r4, #0]
 8002cc2:	6926      	ldr	r6, [r4, #16]
 8002cc4:	42ae      	cmp	r6, r5
 8002cc6:	dd13      	ble.n	8002cf0 <benchmark+0xe38>
 8002cc8:	68a3      	ldr	r3, [r4, #8]
 8002cca:	6023      	str	r3, [r4, #0]
 8002ccc:	680b      	ldr	r3, [r1, #0]
 8002cce:	3b04      	subs	r3, #4
 8002cd0:	600b      	str	r3, [r1, #0]
 8002cd2:	6813      	ldr	r3, [r2, #0]
 8002cd4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002cd8:	6813      	ldr	r3, [r2, #0]
 8002cda:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002cde:	605e      	str	r6, [r3, #4]
 8002ce0:	1973      	adds	r3, r6, r5
 8002ce2:	6815      	ldr	r5, [r2, #0]
 8002ce4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002ce8:	60ab      	str	r3, [r5, #8]
 8002cea:	6813      	ldr	r3, [r2, #0]
 8002cec:	3303      	adds	r3, #3
 8002cee:	6013      	str	r3, [r2, #0]
 8002cf0:	680b      	ldr	r3, [r1, #0]
 8002cf2:	2b05      	cmp	r3, #5
 8002cf4:	db23      	blt.n	8002d3e <benchmark+0xe86>
 8002cf6:	6813      	ldr	r3, [r2, #0]
 8002cf8:	3303      	adds	r3, #3
 8002cfa:	2b06      	cmp	r3, #6
 8002cfc:	dc1f      	bgt.n	8002d3e <benchmark+0xe86>
 8002cfe:	6923      	ldr	r3, [r4, #16]
 8002d00:	68e5      	ldr	r5, [r4, #12]
 8002d02:	42ab      	cmp	r3, r5
 8002d04:	d11b      	bne.n	8002d3e <benchmark+0xe86>
 8002d06:	6923      	ldr	r3, [r4, #16]
 8002d08:	68a5      	ldr	r5, [r4, #8]
 8002d0a:	42ab      	cmp	r3, r5
 8002d0c:	d117      	bne.n	8002d3e <benchmark+0xe86>
 8002d0e:	6825      	ldr	r5, [r4, #0]
 8002d10:	6926      	ldr	r6, [r4, #16]
 8002d12:	42ae      	cmp	r6, r5
 8002d14:	dd13      	ble.n	8002d3e <benchmark+0xe86>
 8002d16:	6863      	ldr	r3, [r4, #4]
 8002d18:	6023      	str	r3, [r4, #0]
 8002d1a:	680b      	ldr	r3, [r1, #0]
 8002d1c:	3b04      	subs	r3, #4
 8002d1e:	600b      	str	r3, [r1, #0]
 8002d20:	6813      	ldr	r3, [r2, #0]
 8002d22:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002d26:	6813      	ldr	r3, [r2, #0]
 8002d28:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002d2c:	605e      	str	r6, [r3, #4]
 8002d2e:	1973      	adds	r3, r6, r5
 8002d30:	6815      	ldr	r5, [r2, #0]
 8002d32:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002d36:	60ab      	str	r3, [r5, #8]
 8002d38:	6813      	ldr	r3, [r2, #0]
 8002d3a:	3303      	adds	r3, #3
 8002d3c:	6013      	str	r3, [r2, #0]
 8002d3e:	680b      	ldr	r3, [r1, #0]
 8002d40:	2b05      	cmp	r3, #5
 8002d42:	db23      	blt.n	8002d8c <benchmark+0xed4>
 8002d44:	6813      	ldr	r3, [r2, #0]
 8002d46:	3303      	adds	r3, #3
 8002d48:	2b06      	cmp	r3, #6
 8002d4a:	dc1f      	bgt.n	8002d8c <benchmark+0xed4>
 8002d4c:	6823      	ldr	r3, [r4, #0]
 8002d4e:	68a5      	ldr	r5, [r4, #8]
 8002d50:	42ab      	cmp	r3, r5
 8002d52:	d11b      	bne.n	8002d8c <benchmark+0xed4>
 8002d54:	6823      	ldr	r3, [r4, #0]
 8002d56:	6925      	ldr	r5, [r4, #16]
 8002d58:	42ab      	cmp	r3, r5
 8002d5a:	d117      	bne.n	8002d8c <benchmark+0xed4>
 8002d5c:	6865      	ldr	r5, [r4, #4]
 8002d5e:	6826      	ldr	r6, [r4, #0]
 8002d60:	42ae      	cmp	r6, r5
 8002d62:	dd13      	ble.n	8002d8c <benchmark+0xed4>
 8002d64:	68e3      	ldr	r3, [r4, #12]
 8002d66:	6023      	str	r3, [r4, #0]
 8002d68:	680b      	ldr	r3, [r1, #0]
 8002d6a:	3b04      	subs	r3, #4
 8002d6c:	600b      	str	r3, [r1, #0]
 8002d6e:	6813      	ldr	r3, [r2, #0]
 8002d70:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002d74:	6813      	ldr	r3, [r2, #0]
 8002d76:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002d7a:	605e      	str	r6, [r3, #4]
 8002d7c:	1973      	adds	r3, r6, r5
 8002d7e:	6815      	ldr	r5, [r2, #0]
 8002d80:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002d84:	60ab      	str	r3, [r5, #8]
 8002d86:	6813      	ldr	r3, [r2, #0]
 8002d88:	3303      	adds	r3, #3
 8002d8a:	6013      	str	r3, [r2, #0]
 8002d8c:	680b      	ldr	r3, [r1, #0]
 8002d8e:	2b05      	cmp	r3, #5
 8002d90:	db23      	blt.n	8002dda <benchmark+0xf22>
 8002d92:	6813      	ldr	r3, [r2, #0]
 8002d94:	3303      	adds	r3, #3
 8002d96:	2b06      	cmp	r3, #6
 8002d98:	dc1f      	bgt.n	8002dda <benchmark+0xf22>
 8002d9a:	6823      	ldr	r3, [r4, #0]
 8002d9c:	68e5      	ldr	r5, [r4, #12]
 8002d9e:	42ab      	cmp	r3, r5
 8002da0:	d11b      	bne.n	8002dda <benchmark+0xf22>
 8002da2:	6823      	ldr	r3, [r4, #0]
 8002da4:	6925      	ldr	r5, [r4, #16]
 8002da6:	42ab      	cmp	r3, r5
 8002da8:	d117      	bne.n	8002dda <benchmark+0xf22>
 8002daa:	6865      	ldr	r5, [r4, #4]
 8002dac:	6826      	ldr	r6, [r4, #0]
 8002dae:	42ae      	cmp	r6, r5
 8002db0:	dd13      	ble.n	8002dda <benchmark+0xf22>
 8002db2:	68a3      	ldr	r3, [r4, #8]
 8002db4:	6023      	str	r3, [r4, #0]
 8002db6:	680b      	ldr	r3, [r1, #0]
 8002db8:	3b04      	subs	r3, #4
 8002dba:	600b      	str	r3, [r1, #0]
 8002dbc:	6813      	ldr	r3, [r2, #0]
 8002dbe:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002dc2:	6813      	ldr	r3, [r2, #0]
 8002dc4:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002dc8:	605e      	str	r6, [r3, #4]
 8002dca:	1973      	adds	r3, r6, r5
 8002dcc:	6815      	ldr	r5, [r2, #0]
 8002dce:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002dd2:	60ab      	str	r3, [r5, #8]
 8002dd4:	6813      	ldr	r3, [r2, #0]
 8002dd6:	3303      	adds	r3, #3
 8002dd8:	6013      	str	r3, [r2, #0]
 8002dda:	680b      	ldr	r3, [r1, #0]
 8002ddc:	2b05      	cmp	r3, #5
 8002dde:	db23      	blt.n	8002e28 <benchmark+0xf70>
 8002de0:	6813      	ldr	r3, [r2, #0]
 8002de2:	3303      	adds	r3, #3
 8002de4:	2b06      	cmp	r3, #6
 8002de6:	dc1f      	bgt.n	8002e28 <benchmark+0xf70>
 8002de8:	6823      	ldr	r3, [r4, #0]
 8002dea:	6925      	ldr	r5, [r4, #16]
 8002dec:	42ab      	cmp	r3, r5
 8002dee:	d11b      	bne.n	8002e28 <benchmark+0xf70>
 8002df0:	6823      	ldr	r3, [r4, #0]
 8002df2:	68a5      	ldr	r5, [r4, #8]
 8002df4:	42ab      	cmp	r3, r5
 8002df6:	d117      	bne.n	8002e28 <benchmark+0xf70>
 8002df8:	6865      	ldr	r5, [r4, #4]
 8002dfa:	6826      	ldr	r6, [r4, #0]
 8002dfc:	42ae      	cmp	r6, r5
 8002dfe:	dd13      	ble.n	8002e28 <benchmark+0xf70>
 8002e00:	68e3      	ldr	r3, [r4, #12]
 8002e02:	6023      	str	r3, [r4, #0]
 8002e04:	680b      	ldr	r3, [r1, #0]
 8002e06:	3b04      	subs	r3, #4
 8002e08:	600b      	str	r3, [r1, #0]
 8002e0a:	6813      	ldr	r3, [r2, #0]
 8002e0c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002e10:	6813      	ldr	r3, [r2, #0]
 8002e12:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002e16:	605e      	str	r6, [r3, #4]
 8002e18:	1973      	adds	r3, r6, r5
 8002e1a:	6815      	ldr	r5, [r2, #0]
 8002e1c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002e20:	60ab      	str	r3, [r5, #8]
 8002e22:	6813      	ldr	r3, [r2, #0]
 8002e24:	3303      	adds	r3, #3
 8002e26:	6013      	str	r3, [r2, #0]
 8002e28:	680b      	ldr	r3, [r1, #0]
 8002e2a:	2b05      	cmp	r3, #5
 8002e2c:	db23      	blt.n	8002e76 <benchmark+0xfbe>
 8002e2e:	6813      	ldr	r3, [r2, #0]
 8002e30:	3303      	adds	r3, #3
 8002e32:	2b06      	cmp	r3, #6
 8002e34:	dc1f      	bgt.n	8002e76 <benchmark+0xfbe>
 8002e36:	6823      	ldr	r3, [r4, #0]
 8002e38:	6925      	ldr	r5, [r4, #16]
 8002e3a:	42ab      	cmp	r3, r5
 8002e3c:	d11b      	bne.n	8002e76 <benchmark+0xfbe>
 8002e3e:	6823      	ldr	r3, [r4, #0]
 8002e40:	68e5      	ldr	r5, [r4, #12]
 8002e42:	42ab      	cmp	r3, r5
 8002e44:	d117      	bne.n	8002e76 <benchmark+0xfbe>
 8002e46:	6865      	ldr	r5, [r4, #4]
 8002e48:	6826      	ldr	r6, [r4, #0]
 8002e4a:	42ae      	cmp	r6, r5
 8002e4c:	dd13      	ble.n	8002e76 <benchmark+0xfbe>
 8002e4e:	68a3      	ldr	r3, [r4, #8]
 8002e50:	6023      	str	r3, [r4, #0]
 8002e52:	680b      	ldr	r3, [r1, #0]
 8002e54:	3b04      	subs	r3, #4
 8002e56:	600b      	str	r3, [r1, #0]
 8002e58:	6813      	ldr	r3, [r2, #0]
 8002e5a:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002e5e:	6813      	ldr	r3, [r2, #0]
 8002e60:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002e64:	605e      	str	r6, [r3, #4]
 8002e66:	1973      	adds	r3, r6, r5
 8002e68:	6815      	ldr	r5, [r2, #0]
 8002e6a:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002e6e:	60ab      	str	r3, [r5, #8]
 8002e70:	6813      	ldr	r3, [r2, #0]
 8002e72:	3303      	adds	r3, #3
 8002e74:	6013      	str	r3, [r2, #0]
 8002e76:	680b      	ldr	r3, [r1, #0]
 8002e78:	2b05      	cmp	r3, #5
 8002e7a:	db23      	blt.n	8002ec4 <benchmark+0x100c>
 8002e7c:	6813      	ldr	r3, [r2, #0]
 8002e7e:	3303      	adds	r3, #3
 8002e80:	2b06      	cmp	r3, #6
 8002e82:	dc1f      	bgt.n	8002ec4 <benchmark+0x100c>
 8002e84:	68a3      	ldr	r3, [r4, #8]
 8002e86:	6825      	ldr	r5, [r4, #0]
 8002e88:	42ab      	cmp	r3, r5
 8002e8a:	d11b      	bne.n	8002ec4 <benchmark+0x100c>
 8002e8c:	68a3      	ldr	r3, [r4, #8]
 8002e8e:	6925      	ldr	r5, [r4, #16]
 8002e90:	42ab      	cmp	r3, r5
 8002e92:	d117      	bne.n	8002ec4 <benchmark+0x100c>
 8002e94:	6865      	ldr	r5, [r4, #4]
 8002e96:	68a6      	ldr	r6, [r4, #8]
 8002e98:	42ae      	cmp	r6, r5
 8002e9a:	dd13      	ble.n	8002ec4 <benchmark+0x100c>
 8002e9c:	68e3      	ldr	r3, [r4, #12]
 8002e9e:	6023      	str	r3, [r4, #0]
 8002ea0:	680b      	ldr	r3, [r1, #0]
 8002ea2:	3b04      	subs	r3, #4
 8002ea4:	600b      	str	r3, [r1, #0]
 8002ea6:	6813      	ldr	r3, [r2, #0]
 8002ea8:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002eac:	6813      	ldr	r3, [r2, #0]
 8002eae:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002eb2:	605e      	str	r6, [r3, #4]
 8002eb4:	1973      	adds	r3, r6, r5
 8002eb6:	6815      	ldr	r5, [r2, #0]
 8002eb8:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002ebc:	60ab      	str	r3, [r5, #8]
 8002ebe:	6813      	ldr	r3, [r2, #0]
 8002ec0:	3303      	adds	r3, #3
 8002ec2:	6013      	str	r3, [r2, #0]
 8002ec4:	680b      	ldr	r3, [r1, #0]
 8002ec6:	2b05      	cmp	r3, #5
 8002ec8:	db21      	blt.n	8002f0e <benchmark+0x1056>
 8002eca:	6813      	ldr	r3, [r2, #0]
 8002ecc:	3303      	adds	r3, #3
 8002ece:	2b06      	cmp	r3, #6
 8002ed0:	dc1d      	bgt.n	8002f0e <benchmark+0x1056>
 8002ed2:	68a3      	ldr	r3, [r4, #8]
 8002ed4:	68e5      	ldr	r5, [r4, #12]
 8002ed6:	42ab      	cmp	r3, r5
 8002ed8:	d119      	bne.n	8002f0e <benchmark+0x1056>
 8002eda:	68a3      	ldr	r3, [r4, #8]
 8002edc:	6925      	ldr	r5, [r4, #16]
 8002ede:	42ab      	cmp	r3, r5
 8002ee0:	d115      	bne.n	8002f0e <benchmark+0x1056>
 8002ee2:	6865      	ldr	r5, [r4, #4]
 8002ee4:	68a6      	ldr	r6, [r4, #8]
 8002ee6:	42ae      	cmp	r6, r5
 8002ee8:	dd11      	ble.n	8002f0e <benchmark+0x1056>
 8002eea:	680b      	ldr	r3, [r1, #0]
 8002eec:	3b04      	subs	r3, #4
 8002eee:	600b      	str	r3, [r1, #0]
 8002ef0:	6813      	ldr	r3, [r2, #0]
 8002ef2:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002ef6:	6813      	ldr	r3, [r2, #0]
 8002ef8:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002efc:	605e      	str	r6, [r3, #4]
 8002efe:	1973      	adds	r3, r6, r5
 8002f00:	6815      	ldr	r5, [r2, #0]
 8002f02:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002f06:	60ab      	str	r3, [r5, #8]
 8002f08:	6813      	ldr	r3, [r2, #0]
 8002f0a:	3303      	adds	r3, #3
 8002f0c:	6013      	str	r3, [r2, #0]
 8002f0e:	680b      	ldr	r3, [r1, #0]
 8002f10:	2b05      	cmp	r3, #5
 8002f12:	db23      	blt.n	8002f5c <benchmark+0x10a4>
 8002f14:	6813      	ldr	r3, [r2, #0]
 8002f16:	3303      	adds	r3, #3
 8002f18:	2b06      	cmp	r3, #6
 8002f1a:	dc1f      	bgt.n	8002f5c <benchmark+0x10a4>
 8002f1c:	68a3      	ldr	r3, [r4, #8]
 8002f1e:	6925      	ldr	r5, [r4, #16]
 8002f20:	42ab      	cmp	r3, r5
 8002f22:	d11b      	bne.n	8002f5c <benchmark+0x10a4>
 8002f24:	68a3      	ldr	r3, [r4, #8]
 8002f26:	6825      	ldr	r5, [r4, #0]
 8002f28:	42ab      	cmp	r3, r5
 8002f2a:	d117      	bne.n	8002f5c <benchmark+0x10a4>
 8002f2c:	6865      	ldr	r5, [r4, #4]
 8002f2e:	68a6      	ldr	r6, [r4, #8]
 8002f30:	42ae      	cmp	r6, r5
 8002f32:	dd13      	ble.n	8002f5c <benchmark+0x10a4>
 8002f34:	68e3      	ldr	r3, [r4, #12]
 8002f36:	6023      	str	r3, [r4, #0]
 8002f38:	680b      	ldr	r3, [r1, #0]
 8002f3a:	3b04      	subs	r3, #4
 8002f3c:	600b      	str	r3, [r1, #0]
 8002f3e:	6813      	ldr	r3, [r2, #0]
 8002f40:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002f44:	6813      	ldr	r3, [r2, #0]
 8002f46:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002f4a:	605e      	str	r6, [r3, #4]
 8002f4c:	1973      	adds	r3, r6, r5
 8002f4e:	6815      	ldr	r5, [r2, #0]
 8002f50:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002f54:	60ab      	str	r3, [r5, #8]
 8002f56:	6813      	ldr	r3, [r2, #0]
 8002f58:	3303      	adds	r3, #3
 8002f5a:	6013      	str	r3, [r2, #0]
 8002f5c:	680b      	ldr	r3, [r1, #0]
 8002f5e:	2b05      	cmp	r3, #5
 8002f60:	db21      	blt.n	8002fa6 <benchmark+0x10ee>
 8002f62:	6813      	ldr	r3, [r2, #0]
 8002f64:	3303      	adds	r3, #3
 8002f66:	2b06      	cmp	r3, #6
 8002f68:	dc1d      	bgt.n	8002fa6 <benchmark+0x10ee>
 8002f6a:	68a3      	ldr	r3, [r4, #8]
 8002f6c:	6925      	ldr	r5, [r4, #16]
 8002f6e:	42ab      	cmp	r3, r5
 8002f70:	d119      	bne.n	8002fa6 <benchmark+0x10ee>
 8002f72:	68a3      	ldr	r3, [r4, #8]
 8002f74:	68e5      	ldr	r5, [r4, #12]
 8002f76:	42ab      	cmp	r3, r5
 8002f78:	d115      	bne.n	8002fa6 <benchmark+0x10ee>
 8002f7a:	6865      	ldr	r5, [r4, #4]
 8002f7c:	68a6      	ldr	r6, [r4, #8]
 8002f7e:	42ae      	cmp	r6, r5
 8002f80:	dd11      	ble.n	8002fa6 <benchmark+0x10ee>
 8002f82:	680b      	ldr	r3, [r1, #0]
 8002f84:	3b04      	subs	r3, #4
 8002f86:	600b      	str	r3, [r1, #0]
 8002f88:	6813      	ldr	r3, [r2, #0]
 8002f8a:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002f8e:	6813      	ldr	r3, [r2, #0]
 8002f90:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002f94:	605e      	str	r6, [r3, #4]
 8002f96:	1973      	adds	r3, r6, r5
 8002f98:	6815      	ldr	r5, [r2, #0]
 8002f9a:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002f9e:	60ab      	str	r3, [r5, #8]
 8002fa0:	6813      	ldr	r3, [r2, #0]
 8002fa2:	3303      	adds	r3, #3
 8002fa4:	6013      	str	r3, [r2, #0]
 8002fa6:	680b      	ldr	r3, [r1, #0]
 8002fa8:	2b05      	cmp	r3, #5
 8002faa:	db23      	blt.n	8002ff4 <benchmark+0x113c>
 8002fac:	6813      	ldr	r3, [r2, #0]
 8002fae:	3303      	adds	r3, #3
 8002fb0:	2b06      	cmp	r3, #6
 8002fb2:	dc1f      	bgt.n	8002ff4 <benchmark+0x113c>
 8002fb4:	68e3      	ldr	r3, [r4, #12]
 8002fb6:	6825      	ldr	r5, [r4, #0]
 8002fb8:	42ab      	cmp	r3, r5
 8002fba:	d11b      	bne.n	8002ff4 <benchmark+0x113c>
 8002fbc:	68e3      	ldr	r3, [r4, #12]
 8002fbe:	6925      	ldr	r5, [r4, #16]
 8002fc0:	42ab      	cmp	r3, r5
 8002fc2:	d117      	bne.n	8002ff4 <benchmark+0x113c>
 8002fc4:	6865      	ldr	r5, [r4, #4]
 8002fc6:	68e6      	ldr	r6, [r4, #12]
 8002fc8:	42ae      	cmp	r6, r5
 8002fca:	dd13      	ble.n	8002ff4 <benchmark+0x113c>
 8002fcc:	68a3      	ldr	r3, [r4, #8]
 8002fce:	6023      	str	r3, [r4, #0]
 8002fd0:	680b      	ldr	r3, [r1, #0]
 8002fd2:	3b04      	subs	r3, #4
 8002fd4:	600b      	str	r3, [r1, #0]
 8002fd6:	6813      	ldr	r3, [r2, #0]
 8002fd8:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8002fdc:	6813      	ldr	r3, [r2, #0]
 8002fde:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8002fe2:	605e      	str	r6, [r3, #4]
 8002fe4:	1973      	adds	r3, r6, r5
 8002fe6:	6815      	ldr	r5, [r2, #0]
 8002fe8:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8002fec:	60ab      	str	r3, [r5, #8]
 8002fee:	6813      	ldr	r3, [r2, #0]
 8002ff0:	3303      	adds	r3, #3
 8002ff2:	6013      	str	r3, [r2, #0]
 8002ff4:	680b      	ldr	r3, [r1, #0]
 8002ff6:	2b05      	cmp	r3, #5
 8002ff8:	db21      	blt.n	800303e <benchmark+0x1186>
 8002ffa:	6813      	ldr	r3, [r2, #0]
 8002ffc:	3303      	adds	r3, #3
 8002ffe:	2b06      	cmp	r3, #6
 8003000:	dc1d      	bgt.n	800303e <benchmark+0x1186>
 8003002:	68e3      	ldr	r3, [r4, #12]
 8003004:	68a5      	ldr	r5, [r4, #8]
 8003006:	42ab      	cmp	r3, r5
 8003008:	d119      	bne.n	800303e <benchmark+0x1186>
 800300a:	68e3      	ldr	r3, [r4, #12]
 800300c:	6925      	ldr	r5, [r4, #16]
 800300e:	42ab      	cmp	r3, r5
 8003010:	d115      	bne.n	800303e <benchmark+0x1186>
 8003012:	6865      	ldr	r5, [r4, #4]
 8003014:	68e6      	ldr	r6, [r4, #12]
 8003016:	42ae      	cmp	r6, r5
 8003018:	dd11      	ble.n	800303e <benchmark+0x1186>
 800301a:	680b      	ldr	r3, [r1, #0]
 800301c:	3b04      	subs	r3, #4
 800301e:	600b      	str	r3, [r1, #0]
 8003020:	6813      	ldr	r3, [r2, #0]
 8003022:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003026:	6813      	ldr	r3, [r2, #0]
 8003028:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800302c:	605e      	str	r6, [r3, #4]
 800302e:	1973      	adds	r3, r6, r5
 8003030:	6815      	ldr	r5, [r2, #0]
 8003032:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003036:	60ab      	str	r3, [r5, #8]
 8003038:	6813      	ldr	r3, [r2, #0]
 800303a:	3303      	adds	r3, #3
 800303c:	6013      	str	r3, [r2, #0]
 800303e:	680b      	ldr	r3, [r1, #0]
 8003040:	2b05      	cmp	r3, #5
 8003042:	db23      	blt.n	800308c <benchmark+0x11d4>
 8003044:	6813      	ldr	r3, [r2, #0]
 8003046:	3303      	adds	r3, #3
 8003048:	2b06      	cmp	r3, #6
 800304a:	dc1f      	bgt.n	800308c <benchmark+0x11d4>
 800304c:	68e3      	ldr	r3, [r4, #12]
 800304e:	6925      	ldr	r5, [r4, #16]
 8003050:	42ab      	cmp	r3, r5
 8003052:	d11b      	bne.n	800308c <benchmark+0x11d4>
 8003054:	68e3      	ldr	r3, [r4, #12]
 8003056:	6825      	ldr	r5, [r4, #0]
 8003058:	42ab      	cmp	r3, r5
 800305a:	d117      	bne.n	800308c <benchmark+0x11d4>
 800305c:	6865      	ldr	r5, [r4, #4]
 800305e:	68e6      	ldr	r6, [r4, #12]
 8003060:	42ae      	cmp	r6, r5
 8003062:	dd13      	ble.n	800308c <benchmark+0x11d4>
 8003064:	68a3      	ldr	r3, [r4, #8]
 8003066:	6023      	str	r3, [r4, #0]
 8003068:	680b      	ldr	r3, [r1, #0]
 800306a:	3b04      	subs	r3, #4
 800306c:	600b      	str	r3, [r1, #0]
 800306e:	6813      	ldr	r3, [r2, #0]
 8003070:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003074:	6813      	ldr	r3, [r2, #0]
 8003076:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800307a:	605e      	str	r6, [r3, #4]
 800307c:	1973      	adds	r3, r6, r5
 800307e:	6815      	ldr	r5, [r2, #0]
 8003080:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003084:	60ab      	str	r3, [r5, #8]
 8003086:	6813      	ldr	r3, [r2, #0]
 8003088:	3303      	adds	r3, #3
 800308a:	6013      	str	r3, [r2, #0]
 800308c:	680b      	ldr	r3, [r1, #0]
 800308e:	2b05      	cmp	r3, #5
 8003090:	db21      	blt.n	80030d6 <benchmark+0x121e>
 8003092:	6813      	ldr	r3, [r2, #0]
 8003094:	3303      	adds	r3, #3
 8003096:	2b06      	cmp	r3, #6
 8003098:	dc1d      	bgt.n	80030d6 <benchmark+0x121e>
 800309a:	68e3      	ldr	r3, [r4, #12]
 800309c:	6925      	ldr	r5, [r4, #16]
 800309e:	42ab      	cmp	r3, r5
 80030a0:	d119      	bne.n	80030d6 <benchmark+0x121e>
 80030a2:	68e3      	ldr	r3, [r4, #12]
 80030a4:	68a5      	ldr	r5, [r4, #8]
 80030a6:	42ab      	cmp	r3, r5
 80030a8:	d115      	bne.n	80030d6 <benchmark+0x121e>
 80030aa:	6865      	ldr	r5, [r4, #4]
 80030ac:	68e6      	ldr	r6, [r4, #12]
 80030ae:	42ae      	cmp	r6, r5
 80030b0:	dd11      	ble.n	80030d6 <benchmark+0x121e>
 80030b2:	680b      	ldr	r3, [r1, #0]
 80030b4:	3b04      	subs	r3, #4
 80030b6:	600b      	str	r3, [r1, #0]
 80030b8:	6813      	ldr	r3, [r2, #0]
 80030ba:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80030be:	6813      	ldr	r3, [r2, #0]
 80030c0:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80030c4:	605e      	str	r6, [r3, #4]
 80030c6:	1973      	adds	r3, r6, r5
 80030c8:	6815      	ldr	r5, [r2, #0]
 80030ca:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80030ce:	60ab      	str	r3, [r5, #8]
 80030d0:	6813      	ldr	r3, [r2, #0]
 80030d2:	3303      	adds	r3, #3
 80030d4:	6013      	str	r3, [r2, #0]
 80030d6:	680b      	ldr	r3, [r1, #0]
 80030d8:	2b05      	cmp	r3, #5
 80030da:	db23      	blt.n	8003124 <benchmark+0x126c>
 80030dc:	6813      	ldr	r3, [r2, #0]
 80030de:	3303      	adds	r3, #3
 80030e0:	2b06      	cmp	r3, #6
 80030e2:	dc1f      	bgt.n	8003124 <benchmark+0x126c>
 80030e4:	6923      	ldr	r3, [r4, #16]
 80030e6:	6825      	ldr	r5, [r4, #0]
 80030e8:	42ab      	cmp	r3, r5
 80030ea:	d11b      	bne.n	8003124 <benchmark+0x126c>
 80030ec:	6923      	ldr	r3, [r4, #16]
 80030ee:	68a5      	ldr	r5, [r4, #8]
 80030f0:	42ab      	cmp	r3, r5
 80030f2:	d117      	bne.n	8003124 <benchmark+0x126c>
 80030f4:	6865      	ldr	r5, [r4, #4]
 80030f6:	6926      	ldr	r6, [r4, #16]
 80030f8:	42ae      	cmp	r6, r5
 80030fa:	dd13      	ble.n	8003124 <benchmark+0x126c>
 80030fc:	68e3      	ldr	r3, [r4, #12]
 80030fe:	6023      	str	r3, [r4, #0]
 8003100:	680b      	ldr	r3, [r1, #0]
 8003102:	3b04      	subs	r3, #4
 8003104:	600b      	str	r3, [r1, #0]
 8003106:	6813      	ldr	r3, [r2, #0]
 8003108:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800310c:	6813      	ldr	r3, [r2, #0]
 800310e:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003112:	605e      	str	r6, [r3, #4]
 8003114:	1973      	adds	r3, r6, r5
 8003116:	6815      	ldr	r5, [r2, #0]
 8003118:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800311c:	60ab      	str	r3, [r5, #8]
 800311e:	6813      	ldr	r3, [r2, #0]
 8003120:	3303      	adds	r3, #3
 8003122:	6013      	str	r3, [r2, #0]
 8003124:	680b      	ldr	r3, [r1, #0]
 8003126:	2b05      	cmp	r3, #5
 8003128:	db23      	blt.n	8003172 <benchmark+0x12ba>
 800312a:	6813      	ldr	r3, [r2, #0]
 800312c:	3303      	adds	r3, #3
 800312e:	2b06      	cmp	r3, #6
 8003130:	dc1f      	bgt.n	8003172 <benchmark+0x12ba>
 8003132:	6923      	ldr	r3, [r4, #16]
 8003134:	6825      	ldr	r5, [r4, #0]
 8003136:	42ab      	cmp	r3, r5
 8003138:	d11b      	bne.n	8003172 <benchmark+0x12ba>
 800313a:	6923      	ldr	r3, [r4, #16]
 800313c:	68e5      	ldr	r5, [r4, #12]
 800313e:	42ab      	cmp	r3, r5
 8003140:	d117      	bne.n	8003172 <benchmark+0x12ba>
 8003142:	6865      	ldr	r5, [r4, #4]
 8003144:	6926      	ldr	r6, [r4, #16]
 8003146:	42ae      	cmp	r6, r5
 8003148:	dd13      	ble.n	8003172 <benchmark+0x12ba>
 800314a:	68a3      	ldr	r3, [r4, #8]
 800314c:	6023      	str	r3, [r4, #0]
 800314e:	680b      	ldr	r3, [r1, #0]
 8003150:	3b04      	subs	r3, #4
 8003152:	600b      	str	r3, [r1, #0]
 8003154:	6813      	ldr	r3, [r2, #0]
 8003156:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800315a:	6813      	ldr	r3, [r2, #0]
 800315c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003160:	605e      	str	r6, [r3, #4]
 8003162:	1973      	adds	r3, r6, r5
 8003164:	6815      	ldr	r5, [r2, #0]
 8003166:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800316a:	60ab      	str	r3, [r5, #8]
 800316c:	6813      	ldr	r3, [r2, #0]
 800316e:	3303      	adds	r3, #3
 8003170:	6013      	str	r3, [r2, #0]
 8003172:	680b      	ldr	r3, [r1, #0]
 8003174:	2b05      	cmp	r3, #5
 8003176:	db23      	blt.n	80031c0 <benchmark+0x1308>
 8003178:	6813      	ldr	r3, [r2, #0]
 800317a:	3303      	adds	r3, #3
 800317c:	2b06      	cmp	r3, #6
 800317e:	dc1f      	bgt.n	80031c0 <benchmark+0x1308>
 8003180:	6923      	ldr	r3, [r4, #16]
 8003182:	68a5      	ldr	r5, [r4, #8]
 8003184:	42ab      	cmp	r3, r5
 8003186:	d11b      	bne.n	80031c0 <benchmark+0x1308>
 8003188:	6923      	ldr	r3, [r4, #16]
 800318a:	6825      	ldr	r5, [r4, #0]
 800318c:	42ab      	cmp	r3, r5
 800318e:	d117      	bne.n	80031c0 <benchmark+0x1308>
 8003190:	6865      	ldr	r5, [r4, #4]
 8003192:	6926      	ldr	r6, [r4, #16]
 8003194:	42ae      	cmp	r6, r5
 8003196:	dd13      	ble.n	80031c0 <benchmark+0x1308>
 8003198:	68e3      	ldr	r3, [r4, #12]
 800319a:	6023      	str	r3, [r4, #0]
 800319c:	680b      	ldr	r3, [r1, #0]
 800319e:	3b04      	subs	r3, #4
 80031a0:	600b      	str	r3, [r1, #0]
 80031a2:	6813      	ldr	r3, [r2, #0]
 80031a4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80031a8:	6813      	ldr	r3, [r2, #0]
 80031aa:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80031ae:	605e      	str	r6, [r3, #4]
 80031b0:	1973      	adds	r3, r6, r5
 80031b2:	6815      	ldr	r5, [r2, #0]
 80031b4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80031b8:	60ab      	str	r3, [r5, #8]
 80031ba:	6813      	ldr	r3, [r2, #0]
 80031bc:	3303      	adds	r3, #3
 80031be:	6013      	str	r3, [r2, #0]
 80031c0:	680b      	ldr	r3, [r1, #0]
 80031c2:	2b05      	cmp	r3, #5
 80031c4:	db21      	blt.n	800320a <benchmark+0x1352>
 80031c6:	6813      	ldr	r3, [r2, #0]
 80031c8:	3303      	adds	r3, #3
 80031ca:	2b06      	cmp	r3, #6
 80031cc:	dc1d      	bgt.n	800320a <benchmark+0x1352>
 80031ce:	6923      	ldr	r3, [r4, #16]
 80031d0:	68a5      	ldr	r5, [r4, #8]
 80031d2:	42ab      	cmp	r3, r5
 80031d4:	d119      	bne.n	800320a <benchmark+0x1352>
 80031d6:	6923      	ldr	r3, [r4, #16]
 80031d8:	68e5      	ldr	r5, [r4, #12]
 80031da:	42ab      	cmp	r3, r5
 80031dc:	d115      	bne.n	800320a <benchmark+0x1352>
 80031de:	6865      	ldr	r5, [r4, #4]
 80031e0:	6926      	ldr	r6, [r4, #16]
 80031e2:	42ae      	cmp	r6, r5
 80031e4:	dd11      	ble.n	800320a <benchmark+0x1352>
 80031e6:	680b      	ldr	r3, [r1, #0]
 80031e8:	3b04      	subs	r3, #4
 80031ea:	600b      	str	r3, [r1, #0]
 80031ec:	6813      	ldr	r3, [r2, #0]
 80031ee:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80031f2:	6813      	ldr	r3, [r2, #0]
 80031f4:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80031f8:	605e      	str	r6, [r3, #4]
 80031fa:	1973      	adds	r3, r6, r5
 80031fc:	6815      	ldr	r5, [r2, #0]
 80031fe:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003202:	60ab      	str	r3, [r5, #8]
 8003204:	6813      	ldr	r3, [r2, #0]
 8003206:	3303      	adds	r3, #3
 8003208:	6013      	str	r3, [r2, #0]
 800320a:	680b      	ldr	r3, [r1, #0]
 800320c:	2b05      	cmp	r3, #5
 800320e:	db23      	blt.n	8003258 <benchmark+0x13a0>
 8003210:	6813      	ldr	r3, [r2, #0]
 8003212:	3303      	adds	r3, #3
 8003214:	2b06      	cmp	r3, #6
 8003216:	dc1f      	bgt.n	8003258 <benchmark+0x13a0>
 8003218:	6923      	ldr	r3, [r4, #16]
 800321a:	68e5      	ldr	r5, [r4, #12]
 800321c:	42ab      	cmp	r3, r5
 800321e:	d11b      	bne.n	8003258 <benchmark+0x13a0>
 8003220:	6923      	ldr	r3, [r4, #16]
 8003222:	6825      	ldr	r5, [r4, #0]
 8003224:	42ab      	cmp	r3, r5
 8003226:	d117      	bne.n	8003258 <benchmark+0x13a0>
 8003228:	6865      	ldr	r5, [r4, #4]
 800322a:	6926      	ldr	r6, [r4, #16]
 800322c:	42ae      	cmp	r6, r5
 800322e:	dd13      	ble.n	8003258 <benchmark+0x13a0>
 8003230:	68a3      	ldr	r3, [r4, #8]
 8003232:	6023      	str	r3, [r4, #0]
 8003234:	680b      	ldr	r3, [r1, #0]
 8003236:	3b04      	subs	r3, #4
 8003238:	600b      	str	r3, [r1, #0]
 800323a:	6813      	ldr	r3, [r2, #0]
 800323c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003240:	6813      	ldr	r3, [r2, #0]
 8003242:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003246:	605e      	str	r6, [r3, #4]
 8003248:	1973      	adds	r3, r6, r5
 800324a:	6815      	ldr	r5, [r2, #0]
 800324c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003250:	60ab      	str	r3, [r5, #8]
 8003252:	6813      	ldr	r3, [r2, #0]
 8003254:	3303      	adds	r3, #3
 8003256:	6013      	str	r3, [r2, #0]
 8003258:	680b      	ldr	r3, [r1, #0]
 800325a:	2b05      	cmp	r3, #5
 800325c:	db21      	blt.n	80032a2 <benchmark+0x13ea>
 800325e:	6813      	ldr	r3, [r2, #0]
 8003260:	3303      	adds	r3, #3
 8003262:	2b06      	cmp	r3, #6
 8003264:	dc1d      	bgt.n	80032a2 <benchmark+0x13ea>
 8003266:	6923      	ldr	r3, [r4, #16]
 8003268:	68e5      	ldr	r5, [r4, #12]
 800326a:	42ab      	cmp	r3, r5
 800326c:	d119      	bne.n	80032a2 <benchmark+0x13ea>
 800326e:	6923      	ldr	r3, [r4, #16]
 8003270:	68a5      	ldr	r5, [r4, #8]
 8003272:	42ab      	cmp	r3, r5
 8003274:	d115      	bne.n	80032a2 <benchmark+0x13ea>
 8003276:	6865      	ldr	r5, [r4, #4]
 8003278:	6926      	ldr	r6, [r4, #16]
 800327a:	42ae      	cmp	r6, r5
 800327c:	dd11      	ble.n	80032a2 <benchmark+0x13ea>
 800327e:	680b      	ldr	r3, [r1, #0]
 8003280:	3b04      	subs	r3, #4
 8003282:	600b      	str	r3, [r1, #0]
 8003284:	6813      	ldr	r3, [r2, #0]
 8003286:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800328a:	6813      	ldr	r3, [r2, #0]
 800328c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003290:	605e      	str	r6, [r3, #4]
 8003292:	1973      	adds	r3, r6, r5
 8003294:	6815      	ldr	r5, [r2, #0]
 8003296:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800329a:	60ab      	str	r3, [r5, #8]
 800329c:	6813      	ldr	r3, [r2, #0]
 800329e:	3303      	adds	r3, #3
 80032a0:	6013      	str	r3, [r2, #0]
 80032a2:	680b      	ldr	r3, [r1, #0]
 80032a4:	2b05      	cmp	r3, #5
 80032a6:	db23      	blt.n	80032f0 <benchmark+0x1438>
 80032a8:	6813      	ldr	r3, [r2, #0]
 80032aa:	3303      	adds	r3, #3
 80032ac:	2b06      	cmp	r3, #6
 80032ae:	dc1f      	bgt.n	80032f0 <benchmark+0x1438>
 80032b0:	6823      	ldr	r3, [r4, #0]
 80032b2:	6865      	ldr	r5, [r4, #4]
 80032b4:	42ab      	cmp	r3, r5
 80032b6:	d11b      	bne.n	80032f0 <benchmark+0x1438>
 80032b8:	6823      	ldr	r3, [r4, #0]
 80032ba:	6925      	ldr	r5, [r4, #16]
 80032bc:	42ab      	cmp	r3, r5
 80032be:	d117      	bne.n	80032f0 <benchmark+0x1438>
 80032c0:	68a5      	ldr	r5, [r4, #8]
 80032c2:	6826      	ldr	r6, [r4, #0]
 80032c4:	42ae      	cmp	r6, r5
 80032c6:	dd13      	ble.n	80032f0 <benchmark+0x1438>
 80032c8:	68e3      	ldr	r3, [r4, #12]
 80032ca:	6023      	str	r3, [r4, #0]
 80032cc:	680b      	ldr	r3, [r1, #0]
 80032ce:	3b04      	subs	r3, #4
 80032d0:	600b      	str	r3, [r1, #0]
 80032d2:	6813      	ldr	r3, [r2, #0]
 80032d4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80032d8:	6813      	ldr	r3, [r2, #0]
 80032da:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80032de:	605e      	str	r6, [r3, #4]
 80032e0:	1973      	adds	r3, r6, r5
 80032e2:	6815      	ldr	r5, [r2, #0]
 80032e4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80032e8:	60ab      	str	r3, [r5, #8]
 80032ea:	6813      	ldr	r3, [r2, #0]
 80032ec:	3303      	adds	r3, #3
 80032ee:	6013      	str	r3, [r2, #0]
 80032f0:	680b      	ldr	r3, [r1, #0]
 80032f2:	2b05      	cmp	r3, #5
 80032f4:	db23      	blt.n	800333e <benchmark+0x1486>
 80032f6:	6813      	ldr	r3, [r2, #0]
 80032f8:	3303      	adds	r3, #3
 80032fa:	2b06      	cmp	r3, #6
 80032fc:	dc1f      	bgt.n	800333e <benchmark+0x1486>
 80032fe:	6823      	ldr	r3, [r4, #0]
 8003300:	68e5      	ldr	r5, [r4, #12]
 8003302:	42ab      	cmp	r3, r5
 8003304:	d11b      	bne.n	800333e <benchmark+0x1486>
 8003306:	6823      	ldr	r3, [r4, #0]
 8003308:	6925      	ldr	r5, [r4, #16]
 800330a:	42ab      	cmp	r3, r5
 800330c:	d117      	bne.n	800333e <benchmark+0x1486>
 800330e:	68a5      	ldr	r5, [r4, #8]
 8003310:	6826      	ldr	r6, [r4, #0]
 8003312:	42ae      	cmp	r6, r5
 8003314:	dd13      	ble.n	800333e <benchmark+0x1486>
 8003316:	6863      	ldr	r3, [r4, #4]
 8003318:	6023      	str	r3, [r4, #0]
 800331a:	680b      	ldr	r3, [r1, #0]
 800331c:	3b04      	subs	r3, #4
 800331e:	600b      	str	r3, [r1, #0]
 8003320:	6813      	ldr	r3, [r2, #0]
 8003322:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003326:	6813      	ldr	r3, [r2, #0]
 8003328:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800332c:	605e      	str	r6, [r3, #4]
 800332e:	1973      	adds	r3, r6, r5
 8003330:	6815      	ldr	r5, [r2, #0]
 8003332:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003336:	60ab      	str	r3, [r5, #8]
 8003338:	6813      	ldr	r3, [r2, #0]
 800333a:	3303      	adds	r3, #3
 800333c:	6013      	str	r3, [r2, #0]
 800333e:	680b      	ldr	r3, [r1, #0]
 8003340:	2b05      	cmp	r3, #5
 8003342:	db23      	blt.n	800338c <benchmark+0x14d4>
 8003344:	6813      	ldr	r3, [r2, #0]
 8003346:	3303      	adds	r3, #3
 8003348:	2b06      	cmp	r3, #6
 800334a:	dc1f      	bgt.n	800338c <benchmark+0x14d4>
 800334c:	6823      	ldr	r3, [r4, #0]
 800334e:	6925      	ldr	r5, [r4, #16]
 8003350:	42ab      	cmp	r3, r5
 8003352:	d11b      	bne.n	800338c <benchmark+0x14d4>
 8003354:	6823      	ldr	r3, [r4, #0]
 8003356:	6865      	ldr	r5, [r4, #4]
 8003358:	42ab      	cmp	r3, r5
 800335a:	d117      	bne.n	800338c <benchmark+0x14d4>
 800335c:	68a5      	ldr	r5, [r4, #8]
 800335e:	6826      	ldr	r6, [r4, #0]
 8003360:	42ae      	cmp	r6, r5
 8003362:	dd13      	ble.n	800338c <benchmark+0x14d4>
 8003364:	68e3      	ldr	r3, [r4, #12]
 8003366:	6023      	str	r3, [r4, #0]
 8003368:	680b      	ldr	r3, [r1, #0]
 800336a:	3b04      	subs	r3, #4
 800336c:	600b      	str	r3, [r1, #0]
 800336e:	6813      	ldr	r3, [r2, #0]
 8003370:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003374:	6813      	ldr	r3, [r2, #0]
 8003376:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800337a:	605e      	str	r6, [r3, #4]
 800337c:	1973      	adds	r3, r6, r5
 800337e:	6815      	ldr	r5, [r2, #0]
 8003380:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003384:	60ab      	str	r3, [r5, #8]
 8003386:	6813      	ldr	r3, [r2, #0]
 8003388:	3303      	adds	r3, #3
 800338a:	6013      	str	r3, [r2, #0]
 800338c:	680b      	ldr	r3, [r1, #0]
 800338e:	2b05      	cmp	r3, #5
 8003390:	db23      	blt.n	80033da <benchmark+0x1522>
 8003392:	6813      	ldr	r3, [r2, #0]
 8003394:	3303      	adds	r3, #3
 8003396:	2b06      	cmp	r3, #6
 8003398:	dc1f      	bgt.n	80033da <benchmark+0x1522>
 800339a:	6823      	ldr	r3, [r4, #0]
 800339c:	6925      	ldr	r5, [r4, #16]
 800339e:	42ab      	cmp	r3, r5
 80033a0:	d11b      	bne.n	80033da <benchmark+0x1522>
 80033a2:	6823      	ldr	r3, [r4, #0]
 80033a4:	68e5      	ldr	r5, [r4, #12]
 80033a6:	42ab      	cmp	r3, r5
 80033a8:	d117      	bne.n	80033da <benchmark+0x1522>
 80033aa:	68a5      	ldr	r5, [r4, #8]
 80033ac:	6826      	ldr	r6, [r4, #0]
 80033ae:	42ae      	cmp	r6, r5
 80033b0:	dd13      	ble.n	80033da <benchmark+0x1522>
 80033b2:	6863      	ldr	r3, [r4, #4]
 80033b4:	6023      	str	r3, [r4, #0]
 80033b6:	680b      	ldr	r3, [r1, #0]
 80033b8:	3b04      	subs	r3, #4
 80033ba:	600b      	str	r3, [r1, #0]
 80033bc:	6813      	ldr	r3, [r2, #0]
 80033be:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80033c2:	6813      	ldr	r3, [r2, #0]
 80033c4:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80033c8:	605e      	str	r6, [r3, #4]
 80033ca:	1973      	adds	r3, r6, r5
 80033cc:	6815      	ldr	r5, [r2, #0]
 80033ce:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80033d2:	60ab      	str	r3, [r5, #8]
 80033d4:	6813      	ldr	r3, [r2, #0]
 80033d6:	3303      	adds	r3, #3
 80033d8:	6013      	str	r3, [r2, #0]
 80033da:	680b      	ldr	r3, [r1, #0]
 80033dc:	2b05      	cmp	r3, #5
 80033de:	db23      	blt.n	8003428 <benchmark+0x1570>
 80033e0:	6813      	ldr	r3, [r2, #0]
 80033e2:	3303      	adds	r3, #3
 80033e4:	2b06      	cmp	r3, #6
 80033e6:	dc1f      	bgt.n	8003428 <benchmark+0x1570>
 80033e8:	6863      	ldr	r3, [r4, #4]
 80033ea:	6825      	ldr	r5, [r4, #0]
 80033ec:	42ab      	cmp	r3, r5
 80033ee:	d11b      	bne.n	8003428 <benchmark+0x1570>
 80033f0:	6863      	ldr	r3, [r4, #4]
 80033f2:	6925      	ldr	r5, [r4, #16]
 80033f4:	42ab      	cmp	r3, r5
 80033f6:	d117      	bne.n	8003428 <benchmark+0x1570>
 80033f8:	68a5      	ldr	r5, [r4, #8]
 80033fa:	6866      	ldr	r6, [r4, #4]
 80033fc:	42ae      	cmp	r6, r5
 80033fe:	dd13      	ble.n	8003428 <benchmark+0x1570>
 8003400:	68e3      	ldr	r3, [r4, #12]
 8003402:	6023      	str	r3, [r4, #0]
 8003404:	680b      	ldr	r3, [r1, #0]
 8003406:	3b04      	subs	r3, #4
 8003408:	600b      	str	r3, [r1, #0]
 800340a:	6813      	ldr	r3, [r2, #0]
 800340c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003410:	6813      	ldr	r3, [r2, #0]
 8003412:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003416:	605e      	str	r6, [r3, #4]
 8003418:	1973      	adds	r3, r6, r5
 800341a:	6815      	ldr	r5, [r2, #0]
 800341c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003420:	60ab      	str	r3, [r5, #8]
 8003422:	6813      	ldr	r3, [r2, #0]
 8003424:	3303      	adds	r3, #3
 8003426:	6013      	str	r3, [r2, #0]
 8003428:	680b      	ldr	r3, [r1, #0]
 800342a:	2b05      	cmp	r3, #5
 800342c:	db21      	blt.n	8003472 <benchmark+0x15ba>
 800342e:	6813      	ldr	r3, [r2, #0]
 8003430:	3303      	adds	r3, #3
 8003432:	2b06      	cmp	r3, #6
 8003434:	dc1d      	bgt.n	8003472 <benchmark+0x15ba>
 8003436:	6863      	ldr	r3, [r4, #4]
 8003438:	68e5      	ldr	r5, [r4, #12]
 800343a:	42ab      	cmp	r3, r5
 800343c:	d119      	bne.n	8003472 <benchmark+0x15ba>
 800343e:	6863      	ldr	r3, [r4, #4]
 8003440:	6925      	ldr	r5, [r4, #16]
 8003442:	42ab      	cmp	r3, r5
 8003444:	d115      	bne.n	8003472 <benchmark+0x15ba>
 8003446:	68a5      	ldr	r5, [r4, #8]
 8003448:	6866      	ldr	r6, [r4, #4]
 800344a:	42ae      	cmp	r6, r5
 800344c:	dd11      	ble.n	8003472 <benchmark+0x15ba>
 800344e:	680b      	ldr	r3, [r1, #0]
 8003450:	3b04      	subs	r3, #4
 8003452:	600b      	str	r3, [r1, #0]
 8003454:	6813      	ldr	r3, [r2, #0]
 8003456:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800345a:	6813      	ldr	r3, [r2, #0]
 800345c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003460:	605e      	str	r6, [r3, #4]
 8003462:	1973      	adds	r3, r6, r5
 8003464:	6815      	ldr	r5, [r2, #0]
 8003466:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800346a:	60ab      	str	r3, [r5, #8]
 800346c:	6813      	ldr	r3, [r2, #0]
 800346e:	3303      	adds	r3, #3
 8003470:	6013      	str	r3, [r2, #0]
 8003472:	680b      	ldr	r3, [r1, #0]
 8003474:	2b05      	cmp	r3, #5
 8003476:	db23      	blt.n	80034c0 <benchmark+0x1608>
 8003478:	6813      	ldr	r3, [r2, #0]
 800347a:	3303      	adds	r3, #3
 800347c:	2b06      	cmp	r3, #6
 800347e:	dc1f      	bgt.n	80034c0 <benchmark+0x1608>
 8003480:	6863      	ldr	r3, [r4, #4]
 8003482:	6925      	ldr	r5, [r4, #16]
 8003484:	42ab      	cmp	r3, r5
 8003486:	d11b      	bne.n	80034c0 <benchmark+0x1608>
 8003488:	6863      	ldr	r3, [r4, #4]
 800348a:	6825      	ldr	r5, [r4, #0]
 800348c:	42ab      	cmp	r3, r5
 800348e:	d117      	bne.n	80034c0 <benchmark+0x1608>
 8003490:	68a5      	ldr	r5, [r4, #8]
 8003492:	6866      	ldr	r6, [r4, #4]
 8003494:	42ae      	cmp	r6, r5
 8003496:	dd13      	ble.n	80034c0 <benchmark+0x1608>
 8003498:	68e3      	ldr	r3, [r4, #12]
 800349a:	6023      	str	r3, [r4, #0]
 800349c:	680b      	ldr	r3, [r1, #0]
 800349e:	3b04      	subs	r3, #4
 80034a0:	600b      	str	r3, [r1, #0]
 80034a2:	6813      	ldr	r3, [r2, #0]
 80034a4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80034a8:	6813      	ldr	r3, [r2, #0]
 80034aa:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80034ae:	605e      	str	r6, [r3, #4]
 80034b0:	1973      	adds	r3, r6, r5
 80034b2:	6815      	ldr	r5, [r2, #0]
 80034b4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80034b8:	60ab      	str	r3, [r5, #8]
 80034ba:	6813      	ldr	r3, [r2, #0]
 80034bc:	3303      	adds	r3, #3
 80034be:	6013      	str	r3, [r2, #0]
 80034c0:	680b      	ldr	r3, [r1, #0]
 80034c2:	2b05      	cmp	r3, #5
 80034c4:	db21      	blt.n	800350a <benchmark+0x1652>
 80034c6:	6813      	ldr	r3, [r2, #0]
 80034c8:	3303      	adds	r3, #3
 80034ca:	2b06      	cmp	r3, #6
 80034cc:	dc1d      	bgt.n	800350a <benchmark+0x1652>
 80034ce:	6863      	ldr	r3, [r4, #4]
 80034d0:	6925      	ldr	r5, [r4, #16]
 80034d2:	42ab      	cmp	r3, r5
 80034d4:	d119      	bne.n	800350a <benchmark+0x1652>
 80034d6:	6863      	ldr	r3, [r4, #4]
 80034d8:	68e5      	ldr	r5, [r4, #12]
 80034da:	42ab      	cmp	r3, r5
 80034dc:	d115      	bne.n	800350a <benchmark+0x1652>
 80034de:	68a5      	ldr	r5, [r4, #8]
 80034e0:	6866      	ldr	r6, [r4, #4]
 80034e2:	42ae      	cmp	r6, r5
 80034e4:	dd11      	ble.n	800350a <benchmark+0x1652>
 80034e6:	680b      	ldr	r3, [r1, #0]
 80034e8:	3b04      	subs	r3, #4
 80034ea:	600b      	str	r3, [r1, #0]
 80034ec:	6813      	ldr	r3, [r2, #0]
 80034ee:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80034f2:	6813      	ldr	r3, [r2, #0]
 80034f4:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80034f8:	605e      	str	r6, [r3, #4]
 80034fa:	1973      	adds	r3, r6, r5
 80034fc:	6815      	ldr	r5, [r2, #0]
 80034fe:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003502:	60ab      	str	r3, [r5, #8]
 8003504:	6813      	ldr	r3, [r2, #0]
 8003506:	3303      	adds	r3, #3
 8003508:	6013      	str	r3, [r2, #0]
 800350a:	680b      	ldr	r3, [r1, #0]
 800350c:	2b05      	cmp	r3, #5
 800350e:	db23      	blt.n	8003558 <benchmark+0x16a0>
 8003510:	6813      	ldr	r3, [r2, #0]
 8003512:	3303      	adds	r3, #3
 8003514:	2b06      	cmp	r3, #6
 8003516:	dc1f      	bgt.n	8003558 <benchmark+0x16a0>
 8003518:	68e3      	ldr	r3, [r4, #12]
 800351a:	6825      	ldr	r5, [r4, #0]
 800351c:	42ab      	cmp	r3, r5
 800351e:	d11b      	bne.n	8003558 <benchmark+0x16a0>
 8003520:	68e3      	ldr	r3, [r4, #12]
 8003522:	6925      	ldr	r5, [r4, #16]
 8003524:	42ab      	cmp	r3, r5
 8003526:	d117      	bne.n	8003558 <benchmark+0x16a0>
 8003528:	68a5      	ldr	r5, [r4, #8]
 800352a:	68e6      	ldr	r6, [r4, #12]
 800352c:	42ae      	cmp	r6, r5
 800352e:	dd13      	ble.n	8003558 <benchmark+0x16a0>
 8003530:	6863      	ldr	r3, [r4, #4]
 8003532:	6023      	str	r3, [r4, #0]
 8003534:	680b      	ldr	r3, [r1, #0]
 8003536:	3b04      	subs	r3, #4
 8003538:	600b      	str	r3, [r1, #0]
 800353a:	6813      	ldr	r3, [r2, #0]
 800353c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003540:	6813      	ldr	r3, [r2, #0]
 8003542:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003546:	605e      	str	r6, [r3, #4]
 8003548:	1973      	adds	r3, r6, r5
 800354a:	6815      	ldr	r5, [r2, #0]
 800354c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003550:	60ab      	str	r3, [r5, #8]
 8003552:	6813      	ldr	r3, [r2, #0]
 8003554:	3303      	adds	r3, #3
 8003556:	6013      	str	r3, [r2, #0]
 8003558:	680b      	ldr	r3, [r1, #0]
 800355a:	2b05      	cmp	r3, #5
 800355c:	db21      	blt.n	80035a2 <benchmark+0x16ea>
 800355e:	6813      	ldr	r3, [r2, #0]
 8003560:	3303      	adds	r3, #3
 8003562:	2b06      	cmp	r3, #6
 8003564:	dc1d      	bgt.n	80035a2 <benchmark+0x16ea>
 8003566:	68e3      	ldr	r3, [r4, #12]
 8003568:	6865      	ldr	r5, [r4, #4]
 800356a:	42ab      	cmp	r3, r5
 800356c:	d119      	bne.n	80035a2 <benchmark+0x16ea>
 800356e:	68e3      	ldr	r3, [r4, #12]
 8003570:	6925      	ldr	r5, [r4, #16]
 8003572:	42ab      	cmp	r3, r5
 8003574:	d115      	bne.n	80035a2 <benchmark+0x16ea>
 8003576:	68a5      	ldr	r5, [r4, #8]
 8003578:	68e6      	ldr	r6, [r4, #12]
 800357a:	42ae      	cmp	r6, r5
 800357c:	dd11      	ble.n	80035a2 <benchmark+0x16ea>
 800357e:	680b      	ldr	r3, [r1, #0]
 8003580:	3b04      	subs	r3, #4
 8003582:	600b      	str	r3, [r1, #0]
 8003584:	6813      	ldr	r3, [r2, #0]
 8003586:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800358a:	6813      	ldr	r3, [r2, #0]
 800358c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003590:	605e      	str	r6, [r3, #4]
 8003592:	1973      	adds	r3, r6, r5
 8003594:	6815      	ldr	r5, [r2, #0]
 8003596:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800359a:	60ab      	str	r3, [r5, #8]
 800359c:	6813      	ldr	r3, [r2, #0]
 800359e:	3303      	adds	r3, #3
 80035a0:	6013      	str	r3, [r2, #0]
 80035a2:	680b      	ldr	r3, [r1, #0]
 80035a4:	2b05      	cmp	r3, #5
 80035a6:	db23      	blt.n	80035f0 <benchmark+0x1738>
 80035a8:	6813      	ldr	r3, [r2, #0]
 80035aa:	3303      	adds	r3, #3
 80035ac:	2b06      	cmp	r3, #6
 80035ae:	dc1f      	bgt.n	80035f0 <benchmark+0x1738>
 80035b0:	68e3      	ldr	r3, [r4, #12]
 80035b2:	6925      	ldr	r5, [r4, #16]
 80035b4:	42ab      	cmp	r3, r5
 80035b6:	d11b      	bne.n	80035f0 <benchmark+0x1738>
 80035b8:	68e3      	ldr	r3, [r4, #12]
 80035ba:	6825      	ldr	r5, [r4, #0]
 80035bc:	42ab      	cmp	r3, r5
 80035be:	d117      	bne.n	80035f0 <benchmark+0x1738>
 80035c0:	68a5      	ldr	r5, [r4, #8]
 80035c2:	68e6      	ldr	r6, [r4, #12]
 80035c4:	42ae      	cmp	r6, r5
 80035c6:	dd13      	ble.n	80035f0 <benchmark+0x1738>
 80035c8:	6863      	ldr	r3, [r4, #4]
 80035ca:	6023      	str	r3, [r4, #0]
 80035cc:	680b      	ldr	r3, [r1, #0]
 80035ce:	3b04      	subs	r3, #4
 80035d0:	600b      	str	r3, [r1, #0]
 80035d2:	6813      	ldr	r3, [r2, #0]
 80035d4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80035d8:	6813      	ldr	r3, [r2, #0]
 80035da:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80035de:	605e      	str	r6, [r3, #4]
 80035e0:	1973      	adds	r3, r6, r5
 80035e2:	6815      	ldr	r5, [r2, #0]
 80035e4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80035e8:	60ab      	str	r3, [r5, #8]
 80035ea:	6813      	ldr	r3, [r2, #0]
 80035ec:	3303      	adds	r3, #3
 80035ee:	6013      	str	r3, [r2, #0]
 80035f0:	680b      	ldr	r3, [r1, #0]
 80035f2:	2b05      	cmp	r3, #5
 80035f4:	db21      	blt.n	800363a <benchmark+0x1782>
 80035f6:	6813      	ldr	r3, [r2, #0]
 80035f8:	3303      	adds	r3, #3
 80035fa:	2b06      	cmp	r3, #6
 80035fc:	dc1d      	bgt.n	800363a <benchmark+0x1782>
 80035fe:	68e3      	ldr	r3, [r4, #12]
 8003600:	6925      	ldr	r5, [r4, #16]
 8003602:	42ab      	cmp	r3, r5
 8003604:	d119      	bne.n	800363a <benchmark+0x1782>
 8003606:	68e3      	ldr	r3, [r4, #12]
 8003608:	6865      	ldr	r5, [r4, #4]
 800360a:	42ab      	cmp	r3, r5
 800360c:	d115      	bne.n	800363a <benchmark+0x1782>
 800360e:	68a5      	ldr	r5, [r4, #8]
 8003610:	68e6      	ldr	r6, [r4, #12]
 8003612:	42ae      	cmp	r6, r5
 8003614:	dd11      	ble.n	800363a <benchmark+0x1782>
 8003616:	680b      	ldr	r3, [r1, #0]
 8003618:	3b04      	subs	r3, #4
 800361a:	600b      	str	r3, [r1, #0]
 800361c:	6813      	ldr	r3, [r2, #0]
 800361e:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003622:	6813      	ldr	r3, [r2, #0]
 8003624:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003628:	605e      	str	r6, [r3, #4]
 800362a:	1973      	adds	r3, r6, r5
 800362c:	6815      	ldr	r5, [r2, #0]
 800362e:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003632:	60ab      	str	r3, [r5, #8]
 8003634:	6813      	ldr	r3, [r2, #0]
 8003636:	3303      	adds	r3, #3
 8003638:	6013      	str	r3, [r2, #0]
 800363a:	680b      	ldr	r3, [r1, #0]
 800363c:	2b05      	cmp	r3, #5
 800363e:	db23      	blt.n	8003688 <benchmark+0x17d0>
 8003640:	6813      	ldr	r3, [r2, #0]
 8003642:	3303      	adds	r3, #3
 8003644:	2b06      	cmp	r3, #6
 8003646:	dc1f      	bgt.n	8003688 <benchmark+0x17d0>
 8003648:	6923      	ldr	r3, [r4, #16]
 800364a:	6825      	ldr	r5, [r4, #0]
 800364c:	42ab      	cmp	r3, r5
 800364e:	d11b      	bne.n	8003688 <benchmark+0x17d0>
 8003650:	6923      	ldr	r3, [r4, #16]
 8003652:	6865      	ldr	r5, [r4, #4]
 8003654:	42ab      	cmp	r3, r5
 8003656:	d117      	bne.n	8003688 <benchmark+0x17d0>
 8003658:	68a5      	ldr	r5, [r4, #8]
 800365a:	6926      	ldr	r6, [r4, #16]
 800365c:	42ae      	cmp	r6, r5
 800365e:	dd13      	ble.n	8003688 <benchmark+0x17d0>
 8003660:	68e3      	ldr	r3, [r4, #12]
 8003662:	6023      	str	r3, [r4, #0]
 8003664:	680b      	ldr	r3, [r1, #0]
 8003666:	3b04      	subs	r3, #4
 8003668:	600b      	str	r3, [r1, #0]
 800366a:	6813      	ldr	r3, [r2, #0]
 800366c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003670:	6813      	ldr	r3, [r2, #0]
 8003672:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003676:	605e      	str	r6, [r3, #4]
 8003678:	1973      	adds	r3, r6, r5
 800367a:	6815      	ldr	r5, [r2, #0]
 800367c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003680:	60ab      	str	r3, [r5, #8]
 8003682:	6813      	ldr	r3, [r2, #0]
 8003684:	3303      	adds	r3, #3
 8003686:	6013      	str	r3, [r2, #0]
 8003688:	680b      	ldr	r3, [r1, #0]
 800368a:	2b05      	cmp	r3, #5
 800368c:	db23      	blt.n	80036d6 <benchmark+0x181e>
 800368e:	6813      	ldr	r3, [r2, #0]
 8003690:	3303      	adds	r3, #3
 8003692:	2b06      	cmp	r3, #6
 8003694:	dc1f      	bgt.n	80036d6 <benchmark+0x181e>
 8003696:	6923      	ldr	r3, [r4, #16]
 8003698:	6825      	ldr	r5, [r4, #0]
 800369a:	42ab      	cmp	r3, r5
 800369c:	d11b      	bne.n	80036d6 <benchmark+0x181e>
 800369e:	6923      	ldr	r3, [r4, #16]
 80036a0:	68e5      	ldr	r5, [r4, #12]
 80036a2:	42ab      	cmp	r3, r5
 80036a4:	d117      	bne.n	80036d6 <benchmark+0x181e>
 80036a6:	68a5      	ldr	r5, [r4, #8]
 80036a8:	6926      	ldr	r6, [r4, #16]
 80036aa:	42ae      	cmp	r6, r5
 80036ac:	dd13      	ble.n	80036d6 <benchmark+0x181e>
 80036ae:	6863      	ldr	r3, [r4, #4]
 80036b0:	6023      	str	r3, [r4, #0]
 80036b2:	680b      	ldr	r3, [r1, #0]
 80036b4:	3b04      	subs	r3, #4
 80036b6:	600b      	str	r3, [r1, #0]
 80036b8:	6813      	ldr	r3, [r2, #0]
 80036ba:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80036be:	6813      	ldr	r3, [r2, #0]
 80036c0:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80036c4:	605e      	str	r6, [r3, #4]
 80036c6:	1973      	adds	r3, r6, r5
 80036c8:	6815      	ldr	r5, [r2, #0]
 80036ca:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80036ce:	60ab      	str	r3, [r5, #8]
 80036d0:	6813      	ldr	r3, [r2, #0]
 80036d2:	3303      	adds	r3, #3
 80036d4:	6013      	str	r3, [r2, #0]
 80036d6:	680b      	ldr	r3, [r1, #0]
 80036d8:	2b05      	cmp	r3, #5
 80036da:	db23      	blt.n	8003724 <benchmark+0x186c>
 80036dc:	6813      	ldr	r3, [r2, #0]
 80036de:	3303      	adds	r3, #3
 80036e0:	2b06      	cmp	r3, #6
 80036e2:	dc1f      	bgt.n	8003724 <benchmark+0x186c>
 80036e4:	6923      	ldr	r3, [r4, #16]
 80036e6:	6865      	ldr	r5, [r4, #4]
 80036e8:	42ab      	cmp	r3, r5
 80036ea:	d11b      	bne.n	8003724 <benchmark+0x186c>
 80036ec:	6923      	ldr	r3, [r4, #16]
 80036ee:	6825      	ldr	r5, [r4, #0]
 80036f0:	42ab      	cmp	r3, r5
 80036f2:	d117      	bne.n	8003724 <benchmark+0x186c>
 80036f4:	68a5      	ldr	r5, [r4, #8]
 80036f6:	6926      	ldr	r6, [r4, #16]
 80036f8:	42ae      	cmp	r6, r5
 80036fa:	dd13      	ble.n	8003724 <benchmark+0x186c>
 80036fc:	68e3      	ldr	r3, [r4, #12]
 80036fe:	6023      	str	r3, [r4, #0]
 8003700:	680b      	ldr	r3, [r1, #0]
 8003702:	3b04      	subs	r3, #4
 8003704:	600b      	str	r3, [r1, #0]
 8003706:	6813      	ldr	r3, [r2, #0]
 8003708:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800370c:	6813      	ldr	r3, [r2, #0]
 800370e:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003712:	605e      	str	r6, [r3, #4]
 8003714:	1973      	adds	r3, r6, r5
 8003716:	6815      	ldr	r5, [r2, #0]
 8003718:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800371c:	60ab      	str	r3, [r5, #8]
 800371e:	6813      	ldr	r3, [r2, #0]
 8003720:	3303      	adds	r3, #3
 8003722:	6013      	str	r3, [r2, #0]
 8003724:	680b      	ldr	r3, [r1, #0]
 8003726:	2b05      	cmp	r3, #5
 8003728:	db21      	blt.n	800376e <benchmark+0x18b6>
 800372a:	6813      	ldr	r3, [r2, #0]
 800372c:	3303      	adds	r3, #3
 800372e:	2b06      	cmp	r3, #6
 8003730:	dc1d      	bgt.n	800376e <benchmark+0x18b6>
 8003732:	6923      	ldr	r3, [r4, #16]
 8003734:	6865      	ldr	r5, [r4, #4]
 8003736:	42ab      	cmp	r3, r5
 8003738:	d119      	bne.n	800376e <benchmark+0x18b6>
 800373a:	6923      	ldr	r3, [r4, #16]
 800373c:	68e5      	ldr	r5, [r4, #12]
 800373e:	42ab      	cmp	r3, r5
 8003740:	d115      	bne.n	800376e <benchmark+0x18b6>
 8003742:	68a5      	ldr	r5, [r4, #8]
 8003744:	6926      	ldr	r6, [r4, #16]
 8003746:	42ae      	cmp	r6, r5
 8003748:	dd11      	ble.n	800376e <benchmark+0x18b6>
 800374a:	680b      	ldr	r3, [r1, #0]
 800374c:	3b04      	subs	r3, #4
 800374e:	600b      	str	r3, [r1, #0]
 8003750:	6813      	ldr	r3, [r2, #0]
 8003752:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003756:	6813      	ldr	r3, [r2, #0]
 8003758:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800375c:	605e      	str	r6, [r3, #4]
 800375e:	1973      	adds	r3, r6, r5
 8003760:	6815      	ldr	r5, [r2, #0]
 8003762:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003766:	60ab      	str	r3, [r5, #8]
 8003768:	6813      	ldr	r3, [r2, #0]
 800376a:	3303      	adds	r3, #3
 800376c:	6013      	str	r3, [r2, #0]
 800376e:	680b      	ldr	r3, [r1, #0]
 8003770:	2b05      	cmp	r3, #5
 8003772:	db23      	blt.n	80037bc <benchmark+0x1904>
 8003774:	6813      	ldr	r3, [r2, #0]
 8003776:	3303      	adds	r3, #3
 8003778:	2b06      	cmp	r3, #6
 800377a:	dc1f      	bgt.n	80037bc <benchmark+0x1904>
 800377c:	6923      	ldr	r3, [r4, #16]
 800377e:	68e5      	ldr	r5, [r4, #12]
 8003780:	42ab      	cmp	r3, r5
 8003782:	d11b      	bne.n	80037bc <benchmark+0x1904>
 8003784:	6923      	ldr	r3, [r4, #16]
 8003786:	6825      	ldr	r5, [r4, #0]
 8003788:	42ab      	cmp	r3, r5
 800378a:	d117      	bne.n	80037bc <benchmark+0x1904>
 800378c:	68a5      	ldr	r5, [r4, #8]
 800378e:	6926      	ldr	r6, [r4, #16]
 8003790:	42ae      	cmp	r6, r5
 8003792:	dd13      	ble.n	80037bc <benchmark+0x1904>
 8003794:	6863      	ldr	r3, [r4, #4]
 8003796:	6023      	str	r3, [r4, #0]
 8003798:	680b      	ldr	r3, [r1, #0]
 800379a:	3b04      	subs	r3, #4
 800379c:	600b      	str	r3, [r1, #0]
 800379e:	6813      	ldr	r3, [r2, #0]
 80037a0:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80037a4:	6813      	ldr	r3, [r2, #0]
 80037a6:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80037aa:	605e      	str	r6, [r3, #4]
 80037ac:	1973      	adds	r3, r6, r5
 80037ae:	6815      	ldr	r5, [r2, #0]
 80037b0:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80037b4:	60ab      	str	r3, [r5, #8]
 80037b6:	6813      	ldr	r3, [r2, #0]
 80037b8:	3303      	adds	r3, #3
 80037ba:	6013      	str	r3, [r2, #0]
 80037bc:	680b      	ldr	r3, [r1, #0]
 80037be:	2b05      	cmp	r3, #5
 80037c0:	db21      	blt.n	8003806 <benchmark+0x194e>
 80037c2:	6813      	ldr	r3, [r2, #0]
 80037c4:	3303      	adds	r3, #3
 80037c6:	2b06      	cmp	r3, #6
 80037c8:	dc1d      	bgt.n	8003806 <benchmark+0x194e>
 80037ca:	6923      	ldr	r3, [r4, #16]
 80037cc:	68e5      	ldr	r5, [r4, #12]
 80037ce:	42ab      	cmp	r3, r5
 80037d0:	d119      	bne.n	8003806 <benchmark+0x194e>
 80037d2:	6923      	ldr	r3, [r4, #16]
 80037d4:	6865      	ldr	r5, [r4, #4]
 80037d6:	42ab      	cmp	r3, r5
 80037d8:	d115      	bne.n	8003806 <benchmark+0x194e>
 80037da:	68a5      	ldr	r5, [r4, #8]
 80037dc:	6926      	ldr	r6, [r4, #16]
 80037de:	42ae      	cmp	r6, r5
 80037e0:	dd11      	ble.n	8003806 <benchmark+0x194e>
 80037e2:	680b      	ldr	r3, [r1, #0]
 80037e4:	3b04      	subs	r3, #4
 80037e6:	600b      	str	r3, [r1, #0]
 80037e8:	6813      	ldr	r3, [r2, #0]
 80037ea:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80037ee:	6813      	ldr	r3, [r2, #0]
 80037f0:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80037f4:	605e      	str	r6, [r3, #4]
 80037f6:	1973      	adds	r3, r6, r5
 80037f8:	6815      	ldr	r5, [r2, #0]
 80037fa:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80037fe:	60ab      	str	r3, [r5, #8]
 8003800:	6813      	ldr	r3, [r2, #0]
 8003802:	3303      	adds	r3, #3
 8003804:	6013      	str	r3, [r2, #0]
 8003806:	680b      	ldr	r3, [r1, #0]
 8003808:	2b05      	cmp	r3, #5
 800380a:	db23      	blt.n	8003854 <benchmark+0x199c>
 800380c:	6813      	ldr	r3, [r2, #0]
 800380e:	3303      	adds	r3, #3
 8003810:	2b06      	cmp	r3, #6
 8003812:	dc1f      	bgt.n	8003854 <benchmark+0x199c>
 8003814:	6823      	ldr	r3, [r4, #0]
 8003816:	6865      	ldr	r5, [r4, #4]
 8003818:	42ab      	cmp	r3, r5
 800381a:	d11b      	bne.n	8003854 <benchmark+0x199c>
 800381c:	6823      	ldr	r3, [r4, #0]
 800381e:	6925      	ldr	r5, [r4, #16]
 8003820:	42ab      	cmp	r3, r5
 8003822:	d117      	bne.n	8003854 <benchmark+0x199c>
 8003824:	68e5      	ldr	r5, [r4, #12]
 8003826:	6826      	ldr	r6, [r4, #0]
 8003828:	42ae      	cmp	r6, r5
 800382a:	dd13      	ble.n	8003854 <benchmark+0x199c>
 800382c:	68a3      	ldr	r3, [r4, #8]
 800382e:	6023      	str	r3, [r4, #0]
 8003830:	680b      	ldr	r3, [r1, #0]
 8003832:	3b04      	subs	r3, #4
 8003834:	600b      	str	r3, [r1, #0]
 8003836:	6813      	ldr	r3, [r2, #0]
 8003838:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800383c:	6813      	ldr	r3, [r2, #0]
 800383e:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003842:	605e      	str	r6, [r3, #4]
 8003844:	1973      	adds	r3, r6, r5
 8003846:	6815      	ldr	r5, [r2, #0]
 8003848:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800384c:	60ab      	str	r3, [r5, #8]
 800384e:	6813      	ldr	r3, [r2, #0]
 8003850:	3303      	adds	r3, #3
 8003852:	6013      	str	r3, [r2, #0]
 8003854:	680b      	ldr	r3, [r1, #0]
 8003856:	2b05      	cmp	r3, #5
 8003858:	db23      	blt.n	80038a2 <benchmark+0x19ea>
 800385a:	6813      	ldr	r3, [r2, #0]
 800385c:	3303      	adds	r3, #3
 800385e:	2b06      	cmp	r3, #6
 8003860:	dc1f      	bgt.n	80038a2 <benchmark+0x19ea>
 8003862:	6823      	ldr	r3, [r4, #0]
 8003864:	68a5      	ldr	r5, [r4, #8]
 8003866:	42ab      	cmp	r3, r5
 8003868:	d11b      	bne.n	80038a2 <benchmark+0x19ea>
 800386a:	6823      	ldr	r3, [r4, #0]
 800386c:	6925      	ldr	r5, [r4, #16]
 800386e:	42ab      	cmp	r3, r5
 8003870:	d117      	bne.n	80038a2 <benchmark+0x19ea>
 8003872:	68e5      	ldr	r5, [r4, #12]
 8003874:	6826      	ldr	r6, [r4, #0]
 8003876:	42ae      	cmp	r6, r5
 8003878:	dd13      	ble.n	80038a2 <benchmark+0x19ea>
 800387a:	6863      	ldr	r3, [r4, #4]
 800387c:	6023      	str	r3, [r4, #0]
 800387e:	680b      	ldr	r3, [r1, #0]
 8003880:	3b04      	subs	r3, #4
 8003882:	600b      	str	r3, [r1, #0]
 8003884:	6813      	ldr	r3, [r2, #0]
 8003886:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800388a:	6813      	ldr	r3, [r2, #0]
 800388c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003890:	605e      	str	r6, [r3, #4]
 8003892:	1973      	adds	r3, r6, r5
 8003894:	6815      	ldr	r5, [r2, #0]
 8003896:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800389a:	60ab      	str	r3, [r5, #8]
 800389c:	6813      	ldr	r3, [r2, #0]
 800389e:	3303      	adds	r3, #3
 80038a0:	6013      	str	r3, [r2, #0]
 80038a2:	680b      	ldr	r3, [r1, #0]
 80038a4:	2b05      	cmp	r3, #5
 80038a6:	db23      	blt.n	80038f0 <benchmark+0x1a38>
 80038a8:	6813      	ldr	r3, [r2, #0]
 80038aa:	3303      	adds	r3, #3
 80038ac:	2b06      	cmp	r3, #6
 80038ae:	dc1f      	bgt.n	80038f0 <benchmark+0x1a38>
 80038b0:	6823      	ldr	r3, [r4, #0]
 80038b2:	6925      	ldr	r5, [r4, #16]
 80038b4:	42ab      	cmp	r3, r5
 80038b6:	d11b      	bne.n	80038f0 <benchmark+0x1a38>
 80038b8:	6823      	ldr	r3, [r4, #0]
 80038ba:	6865      	ldr	r5, [r4, #4]
 80038bc:	42ab      	cmp	r3, r5
 80038be:	d117      	bne.n	80038f0 <benchmark+0x1a38>
 80038c0:	68e5      	ldr	r5, [r4, #12]
 80038c2:	6826      	ldr	r6, [r4, #0]
 80038c4:	42ae      	cmp	r6, r5
 80038c6:	dd13      	ble.n	80038f0 <benchmark+0x1a38>
 80038c8:	68a3      	ldr	r3, [r4, #8]
 80038ca:	6023      	str	r3, [r4, #0]
 80038cc:	680b      	ldr	r3, [r1, #0]
 80038ce:	3b04      	subs	r3, #4
 80038d0:	600b      	str	r3, [r1, #0]
 80038d2:	6813      	ldr	r3, [r2, #0]
 80038d4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80038d8:	6813      	ldr	r3, [r2, #0]
 80038da:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80038de:	605e      	str	r6, [r3, #4]
 80038e0:	1973      	adds	r3, r6, r5
 80038e2:	6815      	ldr	r5, [r2, #0]
 80038e4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80038e8:	60ab      	str	r3, [r5, #8]
 80038ea:	6813      	ldr	r3, [r2, #0]
 80038ec:	3303      	adds	r3, #3
 80038ee:	6013      	str	r3, [r2, #0]
 80038f0:	680b      	ldr	r3, [r1, #0]
 80038f2:	2b05      	cmp	r3, #5
 80038f4:	db23      	blt.n	800393e <benchmark+0x1a86>
 80038f6:	6813      	ldr	r3, [r2, #0]
 80038f8:	3303      	adds	r3, #3
 80038fa:	2b06      	cmp	r3, #6
 80038fc:	dc1f      	bgt.n	800393e <benchmark+0x1a86>
 80038fe:	6823      	ldr	r3, [r4, #0]
 8003900:	6925      	ldr	r5, [r4, #16]
 8003902:	42ab      	cmp	r3, r5
 8003904:	d11b      	bne.n	800393e <benchmark+0x1a86>
 8003906:	6823      	ldr	r3, [r4, #0]
 8003908:	68a5      	ldr	r5, [r4, #8]
 800390a:	42ab      	cmp	r3, r5
 800390c:	d117      	bne.n	800393e <benchmark+0x1a86>
 800390e:	68e5      	ldr	r5, [r4, #12]
 8003910:	6826      	ldr	r6, [r4, #0]
 8003912:	42ae      	cmp	r6, r5
 8003914:	dd13      	ble.n	800393e <benchmark+0x1a86>
 8003916:	6863      	ldr	r3, [r4, #4]
 8003918:	6023      	str	r3, [r4, #0]
 800391a:	680b      	ldr	r3, [r1, #0]
 800391c:	3b04      	subs	r3, #4
 800391e:	600b      	str	r3, [r1, #0]
 8003920:	6813      	ldr	r3, [r2, #0]
 8003922:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003926:	6813      	ldr	r3, [r2, #0]
 8003928:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800392c:	605e      	str	r6, [r3, #4]
 800392e:	1973      	adds	r3, r6, r5
 8003930:	6815      	ldr	r5, [r2, #0]
 8003932:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003936:	60ab      	str	r3, [r5, #8]
 8003938:	6813      	ldr	r3, [r2, #0]
 800393a:	3303      	adds	r3, #3
 800393c:	6013      	str	r3, [r2, #0]
 800393e:	680b      	ldr	r3, [r1, #0]
 8003940:	2b05      	cmp	r3, #5
 8003942:	db23      	blt.n	800398c <benchmark+0x1ad4>
 8003944:	6813      	ldr	r3, [r2, #0]
 8003946:	3303      	adds	r3, #3
 8003948:	2b06      	cmp	r3, #6
 800394a:	dc1f      	bgt.n	800398c <benchmark+0x1ad4>
 800394c:	6863      	ldr	r3, [r4, #4]
 800394e:	6825      	ldr	r5, [r4, #0]
 8003950:	42ab      	cmp	r3, r5
 8003952:	d11b      	bne.n	800398c <benchmark+0x1ad4>
 8003954:	6863      	ldr	r3, [r4, #4]
 8003956:	6925      	ldr	r5, [r4, #16]
 8003958:	42ab      	cmp	r3, r5
 800395a:	d117      	bne.n	800398c <benchmark+0x1ad4>
 800395c:	68e5      	ldr	r5, [r4, #12]
 800395e:	6866      	ldr	r6, [r4, #4]
 8003960:	42ae      	cmp	r6, r5
 8003962:	dd13      	ble.n	800398c <benchmark+0x1ad4>
 8003964:	68a3      	ldr	r3, [r4, #8]
 8003966:	6023      	str	r3, [r4, #0]
 8003968:	680b      	ldr	r3, [r1, #0]
 800396a:	3b04      	subs	r3, #4
 800396c:	600b      	str	r3, [r1, #0]
 800396e:	6813      	ldr	r3, [r2, #0]
 8003970:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003974:	6813      	ldr	r3, [r2, #0]
 8003976:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800397a:	605e      	str	r6, [r3, #4]
 800397c:	1973      	adds	r3, r6, r5
 800397e:	6815      	ldr	r5, [r2, #0]
 8003980:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003984:	60ab      	str	r3, [r5, #8]
 8003986:	6813      	ldr	r3, [r2, #0]
 8003988:	3303      	adds	r3, #3
 800398a:	6013      	str	r3, [r2, #0]
 800398c:	680b      	ldr	r3, [r1, #0]
 800398e:	2b05      	cmp	r3, #5
 8003990:	db21      	blt.n	80039d6 <benchmark+0x1b1e>
 8003992:	6813      	ldr	r3, [r2, #0]
 8003994:	3303      	adds	r3, #3
 8003996:	2b06      	cmp	r3, #6
 8003998:	dc1d      	bgt.n	80039d6 <benchmark+0x1b1e>
 800399a:	6863      	ldr	r3, [r4, #4]
 800399c:	68a5      	ldr	r5, [r4, #8]
 800399e:	42ab      	cmp	r3, r5
 80039a0:	d119      	bne.n	80039d6 <benchmark+0x1b1e>
 80039a2:	6863      	ldr	r3, [r4, #4]
 80039a4:	6925      	ldr	r5, [r4, #16]
 80039a6:	42ab      	cmp	r3, r5
 80039a8:	d115      	bne.n	80039d6 <benchmark+0x1b1e>
 80039aa:	68e5      	ldr	r5, [r4, #12]
 80039ac:	6866      	ldr	r6, [r4, #4]
 80039ae:	42ae      	cmp	r6, r5
 80039b0:	dd11      	ble.n	80039d6 <benchmark+0x1b1e>
 80039b2:	680b      	ldr	r3, [r1, #0]
 80039b4:	3b04      	subs	r3, #4
 80039b6:	600b      	str	r3, [r1, #0]
 80039b8:	6813      	ldr	r3, [r2, #0]
 80039ba:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80039be:	6813      	ldr	r3, [r2, #0]
 80039c0:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80039c4:	605e      	str	r6, [r3, #4]
 80039c6:	1973      	adds	r3, r6, r5
 80039c8:	6815      	ldr	r5, [r2, #0]
 80039ca:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80039ce:	60ab      	str	r3, [r5, #8]
 80039d0:	6813      	ldr	r3, [r2, #0]
 80039d2:	3303      	adds	r3, #3
 80039d4:	6013      	str	r3, [r2, #0]
 80039d6:	680b      	ldr	r3, [r1, #0]
 80039d8:	2b05      	cmp	r3, #5
 80039da:	db23      	blt.n	8003a24 <benchmark+0x1b6c>
 80039dc:	6813      	ldr	r3, [r2, #0]
 80039de:	3303      	adds	r3, #3
 80039e0:	2b06      	cmp	r3, #6
 80039e2:	dc1f      	bgt.n	8003a24 <benchmark+0x1b6c>
 80039e4:	6863      	ldr	r3, [r4, #4]
 80039e6:	6925      	ldr	r5, [r4, #16]
 80039e8:	42ab      	cmp	r3, r5
 80039ea:	d11b      	bne.n	8003a24 <benchmark+0x1b6c>
 80039ec:	6863      	ldr	r3, [r4, #4]
 80039ee:	6825      	ldr	r5, [r4, #0]
 80039f0:	42ab      	cmp	r3, r5
 80039f2:	d117      	bne.n	8003a24 <benchmark+0x1b6c>
 80039f4:	68e5      	ldr	r5, [r4, #12]
 80039f6:	6866      	ldr	r6, [r4, #4]
 80039f8:	42ae      	cmp	r6, r5
 80039fa:	dd13      	ble.n	8003a24 <benchmark+0x1b6c>
 80039fc:	68a3      	ldr	r3, [r4, #8]
 80039fe:	6023      	str	r3, [r4, #0]
 8003a00:	680b      	ldr	r3, [r1, #0]
 8003a02:	3b04      	subs	r3, #4
 8003a04:	600b      	str	r3, [r1, #0]
 8003a06:	6813      	ldr	r3, [r2, #0]
 8003a08:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003a0c:	6813      	ldr	r3, [r2, #0]
 8003a0e:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003a12:	605e      	str	r6, [r3, #4]
 8003a14:	1973      	adds	r3, r6, r5
 8003a16:	6815      	ldr	r5, [r2, #0]
 8003a18:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003a1c:	60ab      	str	r3, [r5, #8]
 8003a1e:	6813      	ldr	r3, [r2, #0]
 8003a20:	3303      	adds	r3, #3
 8003a22:	6013      	str	r3, [r2, #0]
 8003a24:	680b      	ldr	r3, [r1, #0]
 8003a26:	2b05      	cmp	r3, #5
 8003a28:	db21      	blt.n	8003a6e <benchmark+0x1bb6>
 8003a2a:	6813      	ldr	r3, [r2, #0]
 8003a2c:	3303      	adds	r3, #3
 8003a2e:	2b06      	cmp	r3, #6
 8003a30:	dc1d      	bgt.n	8003a6e <benchmark+0x1bb6>
 8003a32:	6863      	ldr	r3, [r4, #4]
 8003a34:	6925      	ldr	r5, [r4, #16]
 8003a36:	42ab      	cmp	r3, r5
 8003a38:	d119      	bne.n	8003a6e <benchmark+0x1bb6>
 8003a3a:	6863      	ldr	r3, [r4, #4]
 8003a3c:	68a5      	ldr	r5, [r4, #8]
 8003a3e:	42ab      	cmp	r3, r5
 8003a40:	d115      	bne.n	8003a6e <benchmark+0x1bb6>
 8003a42:	68e5      	ldr	r5, [r4, #12]
 8003a44:	6866      	ldr	r6, [r4, #4]
 8003a46:	42ae      	cmp	r6, r5
 8003a48:	dd11      	ble.n	8003a6e <benchmark+0x1bb6>
 8003a4a:	680b      	ldr	r3, [r1, #0]
 8003a4c:	3b04      	subs	r3, #4
 8003a4e:	600b      	str	r3, [r1, #0]
 8003a50:	6813      	ldr	r3, [r2, #0]
 8003a52:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003a56:	6813      	ldr	r3, [r2, #0]
 8003a58:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003a5c:	605e      	str	r6, [r3, #4]
 8003a5e:	1973      	adds	r3, r6, r5
 8003a60:	6815      	ldr	r5, [r2, #0]
 8003a62:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003a66:	60ab      	str	r3, [r5, #8]
 8003a68:	6813      	ldr	r3, [r2, #0]
 8003a6a:	3303      	adds	r3, #3
 8003a6c:	6013      	str	r3, [r2, #0]
 8003a6e:	680b      	ldr	r3, [r1, #0]
 8003a70:	2b05      	cmp	r3, #5
 8003a72:	db23      	blt.n	8003abc <benchmark+0x1c04>
 8003a74:	6813      	ldr	r3, [r2, #0]
 8003a76:	3303      	adds	r3, #3
 8003a78:	2b06      	cmp	r3, #6
 8003a7a:	dc1f      	bgt.n	8003abc <benchmark+0x1c04>
 8003a7c:	68a3      	ldr	r3, [r4, #8]
 8003a7e:	6825      	ldr	r5, [r4, #0]
 8003a80:	42ab      	cmp	r3, r5
 8003a82:	d11b      	bne.n	8003abc <benchmark+0x1c04>
 8003a84:	68a3      	ldr	r3, [r4, #8]
 8003a86:	6925      	ldr	r5, [r4, #16]
 8003a88:	42ab      	cmp	r3, r5
 8003a8a:	d117      	bne.n	8003abc <benchmark+0x1c04>
 8003a8c:	68e5      	ldr	r5, [r4, #12]
 8003a8e:	68a6      	ldr	r6, [r4, #8]
 8003a90:	42ae      	cmp	r6, r5
 8003a92:	dd13      	ble.n	8003abc <benchmark+0x1c04>
 8003a94:	6863      	ldr	r3, [r4, #4]
 8003a96:	6023      	str	r3, [r4, #0]
 8003a98:	680b      	ldr	r3, [r1, #0]
 8003a9a:	3b04      	subs	r3, #4
 8003a9c:	600b      	str	r3, [r1, #0]
 8003a9e:	6813      	ldr	r3, [r2, #0]
 8003aa0:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003aa4:	6813      	ldr	r3, [r2, #0]
 8003aa6:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003aaa:	605e      	str	r6, [r3, #4]
 8003aac:	1973      	adds	r3, r6, r5
 8003aae:	6815      	ldr	r5, [r2, #0]
 8003ab0:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003ab4:	60ab      	str	r3, [r5, #8]
 8003ab6:	6813      	ldr	r3, [r2, #0]
 8003ab8:	3303      	adds	r3, #3
 8003aba:	6013      	str	r3, [r2, #0]
 8003abc:	680b      	ldr	r3, [r1, #0]
 8003abe:	2b05      	cmp	r3, #5
 8003ac0:	db21      	blt.n	8003b06 <benchmark+0x1c4e>
 8003ac2:	6813      	ldr	r3, [r2, #0]
 8003ac4:	3303      	adds	r3, #3
 8003ac6:	2b06      	cmp	r3, #6
 8003ac8:	dc1d      	bgt.n	8003b06 <benchmark+0x1c4e>
 8003aca:	68a3      	ldr	r3, [r4, #8]
 8003acc:	6865      	ldr	r5, [r4, #4]
 8003ace:	42ab      	cmp	r3, r5
 8003ad0:	d119      	bne.n	8003b06 <benchmark+0x1c4e>
 8003ad2:	68a3      	ldr	r3, [r4, #8]
 8003ad4:	6925      	ldr	r5, [r4, #16]
 8003ad6:	42ab      	cmp	r3, r5
 8003ad8:	d115      	bne.n	8003b06 <benchmark+0x1c4e>
 8003ada:	68e5      	ldr	r5, [r4, #12]
 8003adc:	68a6      	ldr	r6, [r4, #8]
 8003ade:	42ae      	cmp	r6, r5
 8003ae0:	dd11      	ble.n	8003b06 <benchmark+0x1c4e>
 8003ae2:	680b      	ldr	r3, [r1, #0]
 8003ae4:	3b04      	subs	r3, #4
 8003ae6:	600b      	str	r3, [r1, #0]
 8003ae8:	6813      	ldr	r3, [r2, #0]
 8003aea:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003aee:	6813      	ldr	r3, [r2, #0]
 8003af0:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003af4:	605e      	str	r6, [r3, #4]
 8003af6:	1973      	adds	r3, r6, r5
 8003af8:	6815      	ldr	r5, [r2, #0]
 8003afa:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003afe:	60ab      	str	r3, [r5, #8]
 8003b00:	6813      	ldr	r3, [r2, #0]
 8003b02:	3303      	adds	r3, #3
 8003b04:	6013      	str	r3, [r2, #0]
 8003b06:	680b      	ldr	r3, [r1, #0]
 8003b08:	2b05      	cmp	r3, #5
 8003b0a:	db23      	blt.n	8003b54 <benchmark+0x1c9c>
 8003b0c:	6813      	ldr	r3, [r2, #0]
 8003b0e:	3303      	adds	r3, #3
 8003b10:	2b06      	cmp	r3, #6
 8003b12:	dc1f      	bgt.n	8003b54 <benchmark+0x1c9c>
 8003b14:	68a3      	ldr	r3, [r4, #8]
 8003b16:	6925      	ldr	r5, [r4, #16]
 8003b18:	42ab      	cmp	r3, r5
 8003b1a:	d11b      	bne.n	8003b54 <benchmark+0x1c9c>
 8003b1c:	68a3      	ldr	r3, [r4, #8]
 8003b1e:	6825      	ldr	r5, [r4, #0]
 8003b20:	42ab      	cmp	r3, r5
 8003b22:	d117      	bne.n	8003b54 <benchmark+0x1c9c>
 8003b24:	68e5      	ldr	r5, [r4, #12]
 8003b26:	68a6      	ldr	r6, [r4, #8]
 8003b28:	42ae      	cmp	r6, r5
 8003b2a:	dd13      	ble.n	8003b54 <benchmark+0x1c9c>
 8003b2c:	6863      	ldr	r3, [r4, #4]
 8003b2e:	6023      	str	r3, [r4, #0]
 8003b30:	680b      	ldr	r3, [r1, #0]
 8003b32:	3b04      	subs	r3, #4
 8003b34:	600b      	str	r3, [r1, #0]
 8003b36:	6813      	ldr	r3, [r2, #0]
 8003b38:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003b3c:	6813      	ldr	r3, [r2, #0]
 8003b3e:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003b42:	605e      	str	r6, [r3, #4]
 8003b44:	1973      	adds	r3, r6, r5
 8003b46:	6815      	ldr	r5, [r2, #0]
 8003b48:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003b4c:	60ab      	str	r3, [r5, #8]
 8003b4e:	6813      	ldr	r3, [r2, #0]
 8003b50:	3303      	adds	r3, #3
 8003b52:	6013      	str	r3, [r2, #0]
 8003b54:	680b      	ldr	r3, [r1, #0]
 8003b56:	2b05      	cmp	r3, #5
 8003b58:	db21      	blt.n	8003b9e <benchmark+0x1ce6>
 8003b5a:	6813      	ldr	r3, [r2, #0]
 8003b5c:	3303      	adds	r3, #3
 8003b5e:	2b06      	cmp	r3, #6
 8003b60:	dc1d      	bgt.n	8003b9e <benchmark+0x1ce6>
 8003b62:	68a3      	ldr	r3, [r4, #8]
 8003b64:	6925      	ldr	r5, [r4, #16]
 8003b66:	42ab      	cmp	r3, r5
 8003b68:	d119      	bne.n	8003b9e <benchmark+0x1ce6>
 8003b6a:	68a3      	ldr	r3, [r4, #8]
 8003b6c:	6865      	ldr	r5, [r4, #4]
 8003b6e:	42ab      	cmp	r3, r5
 8003b70:	d115      	bne.n	8003b9e <benchmark+0x1ce6>
 8003b72:	68e5      	ldr	r5, [r4, #12]
 8003b74:	68a6      	ldr	r6, [r4, #8]
 8003b76:	42ae      	cmp	r6, r5
 8003b78:	dd11      	ble.n	8003b9e <benchmark+0x1ce6>
 8003b7a:	680b      	ldr	r3, [r1, #0]
 8003b7c:	3b04      	subs	r3, #4
 8003b7e:	600b      	str	r3, [r1, #0]
 8003b80:	6813      	ldr	r3, [r2, #0]
 8003b82:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003b86:	6813      	ldr	r3, [r2, #0]
 8003b88:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003b8c:	605e      	str	r6, [r3, #4]
 8003b8e:	1973      	adds	r3, r6, r5
 8003b90:	6815      	ldr	r5, [r2, #0]
 8003b92:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003b96:	60ab      	str	r3, [r5, #8]
 8003b98:	6813      	ldr	r3, [r2, #0]
 8003b9a:	3303      	adds	r3, #3
 8003b9c:	6013      	str	r3, [r2, #0]
 8003b9e:	680b      	ldr	r3, [r1, #0]
 8003ba0:	2b05      	cmp	r3, #5
 8003ba2:	db23      	blt.n	8003bec <benchmark+0x1d34>
 8003ba4:	6813      	ldr	r3, [r2, #0]
 8003ba6:	3303      	adds	r3, #3
 8003ba8:	2b06      	cmp	r3, #6
 8003baa:	dc1f      	bgt.n	8003bec <benchmark+0x1d34>
 8003bac:	6923      	ldr	r3, [r4, #16]
 8003bae:	6825      	ldr	r5, [r4, #0]
 8003bb0:	42ab      	cmp	r3, r5
 8003bb2:	d11b      	bne.n	8003bec <benchmark+0x1d34>
 8003bb4:	6923      	ldr	r3, [r4, #16]
 8003bb6:	6865      	ldr	r5, [r4, #4]
 8003bb8:	42ab      	cmp	r3, r5
 8003bba:	d117      	bne.n	8003bec <benchmark+0x1d34>
 8003bbc:	68e5      	ldr	r5, [r4, #12]
 8003bbe:	6926      	ldr	r6, [r4, #16]
 8003bc0:	42ae      	cmp	r6, r5
 8003bc2:	dd13      	ble.n	8003bec <benchmark+0x1d34>
 8003bc4:	68a3      	ldr	r3, [r4, #8]
 8003bc6:	6023      	str	r3, [r4, #0]
 8003bc8:	680b      	ldr	r3, [r1, #0]
 8003bca:	3b04      	subs	r3, #4
 8003bcc:	600b      	str	r3, [r1, #0]
 8003bce:	6813      	ldr	r3, [r2, #0]
 8003bd0:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003bd4:	6813      	ldr	r3, [r2, #0]
 8003bd6:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003bda:	605e      	str	r6, [r3, #4]
 8003bdc:	1973      	adds	r3, r6, r5
 8003bde:	6815      	ldr	r5, [r2, #0]
 8003be0:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003be4:	60ab      	str	r3, [r5, #8]
 8003be6:	6813      	ldr	r3, [r2, #0]
 8003be8:	3303      	adds	r3, #3
 8003bea:	6013      	str	r3, [r2, #0]
 8003bec:	680b      	ldr	r3, [r1, #0]
 8003bee:	2b05      	cmp	r3, #5
 8003bf0:	db23      	blt.n	8003c3a <benchmark+0x1d82>
 8003bf2:	6813      	ldr	r3, [r2, #0]
 8003bf4:	3303      	adds	r3, #3
 8003bf6:	2b06      	cmp	r3, #6
 8003bf8:	dc1f      	bgt.n	8003c3a <benchmark+0x1d82>
 8003bfa:	6923      	ldr	r3, [r4, #16]
 8003bfc:	6825      	ldr	r5, [r4, #0]
 8003bfe:	42ab      	cmp	r3, r5
 8003c00:	d11b      	bne.n	8003c3a <benchmark+0x1d82>
 8003c02:	6923      	ldr	r3, [r4, #16]
 8003c04:	68a5      	ldr	r5, [r4, #8]
 8003c06:	42ab      	cmp	r3, r5
 8003c08:	d117      	bne.n	8003c3a <benchmark+0x1d82>
 8003c0a:	68e5      	ldr	r5, [r4, #12]
 8003c0c:	6926      	ldr	r6, [r4, #16]
 8003c0e:	42ae      	cmp	r6, r5
 8003c10:	dd13      	ble.n	8003c3a <benchmark+0x1d82>
 8003c12:	6863      	ldr	r3, [r4, #4]
 8003c14:	6023      	str	r3, [r4, #0]
 8003c16:	680b      	ldr	r3, [r1, #0]
 8003c18:	3b04      	subs	r3, #4
 8003c1a:	600b      	str	r3, [r1, #0]
 8003c1c:	6813      	ldr	r3, [r2, #0]
 8003c1e:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003c22:	6813      	ldr	r3, [r2, #0]
 8003c24:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003c28:	605e      	str	r6, [r3, #4]
 8003c2a:	1973      	adds	r3, r6, r5
 8003c2c:	6815      	ldr	r5, [r2, #0]
 8003c2e:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003c32:	60ab      	str	r3, [r5, #8]
 8003c34:	6813      	ldr	r3, [r2, #0]
 8003c36:	3303      	adds	r3, #3
 8003c38:	6013      	str	r3, [r2, #0]
 8003c3a:	680b      	ldr	r3, [r1, #0]
 8003c3c:	2b05      	cmp	r3, #5
 8003c3e:	db23      	blt.n	8003c88 <benchmark+0x1dd0>
 8003c40:	6813      	ldr	r3, [r2, #0]
 8003c42:	3303      	adds	r3, #3
 8003c44:	2b06      	cmp	r3, #6
 8003c46:	dc1f      	bgt.n	8003c88 <benchmark+0x1dd0>
 8003c48:	6923      	ldr	r3, [r4, #16]
 8003c4a:	6865      	ldr	r5, [r4, #4]
 8003c4c:	42ab      	cmp	r3, r5
 8003c4e:	d11b      	bne.n	8003c88 <benchmark+0x1dd0>
 8003c50:	6923      	ldr	r3, [r4, #16]
 8003c52:	6825      	ldr	r5, [r4, #0]
 8003c54:	42ab      	cmp	r3, r5
 8003c56:	d117      	bne.n	8003c88 <benchmark+0x1dd0>
 8003c58:	68e5      	ldr	r5, [r4, #12]
 8003c5a:	6926      	ldr	r6, [r4, #16]
 8003c5c:	42ae      	cmp	r6, r5
 8003c5e:	dd13      	ble.n	8003c88 <benchmark+0x1dd0>
 8003c60:	68a3      	ldr	r3, [r4, #8]
 8003c62:	6023      	str	r3, [r4, #0]
 8003c64:	680b      	ldr	r3, [r1, #0]
 8003c66:	3b04      	subs	r3, #4
 8003c68:	600b      	str	r3, [r1, #0]
 8003c6a:	6813      	ldr	r3, [r2, #0]
 8003c6c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003c70:	6813      	ldr	r3, [r2, #0]
 8003c72:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003c76:	605e      	str	r6, [r3, #4]
 8003c78:	1973      	adds	r3, r6, r5
 8003c7a:	6815      	ldr	r5, [r2, #0]
 8003c7c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003c80:	60ab      	str	r3, [r5, #8]
 8003c82:	6813      	ldr	r3, [r2, #0]
 8003c84:	3303      	adds	r3, #3
 8003c86:	6013      	str	r3, [r2, #0]
 8003c88:	680b      	ldr	r3, [r1, #0]
 8003c8a:	2b05      	cmp	r3, #5
 8003c8c:	db21      	blt.n	8003cd2 <benchmark+0x1e1a>
 8003c8e:	6813      	ldr	r3, [r2, #0]
 8003c90:	3303      	adds	r3, #3
 8003c92:	2b06      	cmp	r3, #6
 8003c94:	dc1d      	bgt.n	8003cd2 <benchmark+0x1e1a>
 8003c96:	6923      	ldr	r3, [r4, #16]
 8003c98:	6865      	ldr	r5, [r4, #4]
 8003c9a:	42ab      	cmp	r3, r5
 8003c9c:	d119      	bne.n	8003cd2 <benchmark+0x1e1a>
 8003c9e:	6923      	ldr	r3, [r4, #16]
 8003ca0:	68a5      	ldr	r5, [r4, #8]
 8003ca2:	42ab      	cmp	r3, r5
 8003ca4:	d115      	bne.n	8003cd2 <benchmark+0x1e1a>
 8003ca6:	68e5      	ldr	r5, [r4, #12]
 8003ca8:	6926      	ldr	r6, [r4, #16]
 8003caa:	42ae      	cmp	r6, r5
 8003cac:	dd11      	ble.n	8003cd2 <benchmark+0x1e1a>
 8003cae:	680b      	ldr	r3, [r1, #0]
 8003cb0:	3b04      	subs	r3, #4
 8003cb2:	600b      	str	r3, [r1, #0]
 8003cb4:	6813      	ldr	r3, [r2, #0]
 8003cb6:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003cba:	6813      	ldr	r3, [r2, #0]
 8003cbc:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003cc0:	605e      	str	r6, [r3, #4]
 8003cc2:	1973      	adds	r3, r6, r5
 8003cc4:	6815      	ldr	r5, [r2, #0]
 8003cc6:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003cca:	60ab      	str	r3, [r5, #8]
 8003ccc:	6813      	ldr	r3, [r2, #0]
 8003cce:	3303      	adds	r3, #3
 8003cd0:	6013      	str	r3, [r2, #0]
 8003cd2:	680b      	ldr	r3, [r1, #0]
 8003cd4:	2b05      	cmp	r3, #5
 8003cd6:	db23      	blt.n	8003d20 <benchmark+0x1e68>
 8003cd8:	6813      	ldr	r3, [r2, #0]
 8003cda:	3303      	adds	r3, #3
 8003cdc:	2b06      	cmp	r3, #6
 8003cde:	dc1f      	bgt.n	8003d20 <benchmark+0x1e68>
 8003ce0:	6923      	ldr	r3, [r4, #16]
 8003ce2:	68a5      	ldr	r5, [r4, #8]
 8003ce4:	42ab      	cmp	r3, r5
 8003ce6:	d11b      	bne.n	8003d20 <benchmark+0x1e68>
 8003ce8:	6923      	ldr	r3, [r4, #16]
 8003cea:	6825      	ldr	r5, [r4, #0]
 8003cec:	42ab      	cmp	r3, r5
 8003cee:	d117      	bne.n	8003d20 <benchmark+0x1e68>
 8003cf0:	68e5      	ldr	r5, [r4, #12]
 8003cf2:	6926      	ldr	r6, [r4, #16]
 8003cf4:	42ae      	cmp	r6, r5
 8003cf6:	dd13      	ble.n	8003d20 <benchmark+0x1e68>
 8003cf8:	6863      	ldr	r3, [r4, #4]
 8003cfa:	6023      	str	r3, [r4, #0]
 8003cfc:	680b      	ldr	r3, [r1, #0]
 8003cfe:	3b04      	subs	r3, #4
 8003d00:	600b      	str	r3, [r1, #0]
 8003d02:	6813      	ldr	r3, [r2, #0]
 8003d04:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003d08:	6813      	ldr	r3, [r2, #0]
 8003d0a:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003d0e:	605e      	str	r6, [r3, #4]
 8003d10:	1973      	adds	r3, r6, r5
 8003d12:	6815      	ldr	r5, [r2, #0]
 8003d14:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003d18:	60ab      	str	r3, [r5, #8]
 8003d1a:	6813      	ldr	r3, [r2, #0]
 8003d1c:	3303      	adds	r3, #3
 8003d1e:	6013      	str	r3, [r2, #0]
 8003d20:	680b      	ldr	r3, [r1, #0]
 8003d22:	2b05      	cmp	r3, #5
 8003d24:	db21      	blt.n	8003d6a <benchmark+0x1eb2>
 8003d26:	6813      	ldr	r3, [r2, #0]
 8003d28:	3303      	adds	r3, #3
 8003d2a:	2b06      	cmp	r3, #6
 8003d2c:	dc1d      	bgt.n	8003d6a <benchmark+0x1eb2>
 8003d2e:	6923      	ldr	r3, [r4, #16]
 8003d30:	68a5      	ldr	r5, [r4, #8]
 8003d32:	42ab      	cmp	r3, r5
 8003d34:	d119      	bne.n	8003d6a <benchmark+0x1eb2>
 8003d36:	6923      	ldr	r3, [r4, #16]
 8003d38:	6865      	ldr	r5, [r4, #4]
 8003d3a:	42ab      	cmp	r3, r5
 8003d3c:	d115      	bne.n	8003d6a <benchmark+0x1eb2>
 8003d3e:	68e5      	ldr	r5, [r4, #12]
 8003d40:	6926      	ldr	r6, [r4, #16]
 8003d42:	42ae      	cmp	r6, r5
 8003d44:	dd11      	ble.n	8003d6a <benchmark+0x1eb2>
 8003d46:	680b      	ldr	r3, [r1, #0]
 8003d48:	3b04      	subs	r3, #4
 8003d4a:	600b      	str	r3, [r1, #0]
 8003d4c:	6813      	ldr	r3, [r2, #0]
 8003d4e:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003d52:	6813      	ldr	r3, [r2, #0]
 8003d54:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003d58:	605e      	str	r6, [r3, #4]
 8003d5a:	1973      	adds	r3, r6, r5
 8003d5c:	6815      	ldr	r5, [r2, #0]
 8003d5e:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003d62:	60ab      	str	r3, [r5, #8]
 8003d64:	6813      	ldr	r3, [r2, #0]
 8003d66:	3303      	adds	r3, #3
 8003d68:	6013      	str	r3, [r2, #0]
 8003d6a:	680b      	ldr	r3, [r1, #0]
 8003d6c:	2b05      	cmp	r3, #5
 8003d6e:	db23      	blt.n	8003db8 <benchmark+0x1f00>
 8003d70:	6813      	ldr	r3, [r2, #0]
 8003d72:	3303      	adds	r3, #3
 8003d74:	2b06      	cmp	r3, #6
 8003d76:	dc1f      	bgt.n	8003db8 <benchmark+0x1f00>
 8003d78:	6823      	ldr	r3, [r4, #0]
 8003d7a:	6865      	ldr	r5, [r4, #4]
 8003d7c:	42ab      	cmp	r3, r5
 8003d7e:	d11b      	bne.n	8003db8 <benchmark+0x1f00>
 8003d80:	6823      	ldr	r3, [r4, #0]
 8003d82:	68a5      	ldr	r5, [r4, #8]
 8003d84:	42ab      	cmp	r3, r5
 8003d86:	d117      	bne.n	8003db8 <benchmark+0x1f00>
 8003d88:	6925      	ldr	r5, [r4, #16]
 8003d8a:	6826      	ldr	r6, [r4, #0]
 8003d8c:	42ae      	cmp	r6, r5
 8003d8e:	dd13      	ble.n	8003db8 <benchmark+0x1f00>
 8003d90:	68e3      	ldr	r3, [r4, #12]
 8003d92:	6023      	str	r3, [r4, #0]
 8003d94:	680b      	ldr	r3, [r1, #0]
 8003d96:	3b04      	subs	r3, #4
 8003d98:	600b      	str	r3, [r1, #0]
 8003d9a:	6813      	ldr	r3, [r2, #0]
 8003d9c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003da0:	6813      	ldr	r3, [r2, #0]
 8003da2:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003da6:	605e      	str	r6, [r3, #4]
 8003da8:	1973      	adds	r3, r6, r5
 8003daa:	6815      	ldr	r5, [r2, #0]
 8003dac:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003db0:	60ab      	str	r3, [r5, #8]
 8003db2:	6813      	ldr	r3, [r2, #0]
 8003db4:	3303      	adds	r3, #3
 8003db6:	6013      	str	r3, [r2, #0]
 8003db8:	680b      	ldr	r3, [r1, #0]
 8003dba:	2b05      	cmp	r3, #5
 8003dbc:	db23      	blt.n	8003e06 <benchmark+0x1f4e>
 8003dbe:	6813      	ldr	r3, [r2, #0]
 8003dc0:	3303      	adds	r3, #3
 8003dc2:	2b06      	cmp	r3, #6
 8003dc4:	dc1f      	bgt.n	8003e06 <benchmark+0x1f4e>
 8003dc6:	6823      	ldr	r3, [r4, #0]
 8003dc8:	6865      	ldr	r5, [r4, #4]
 8003dca:	42ab      	cmp	r3, r5
 8003dcc:	d11b      	bne.n	8003e06 <benchmark+0x1f4e>
 8003dce:	6823      	ldr	r3, [r4, #0]
 8003dd0:	68e5      	ldr	r5, [r4, #12]
 8003dd2:	42ab      	cmp	r3, r5
 8003dd4:	d117      	bne.n	8003e06 <benchmark+0x1f4e>
 8003dd6:	6925      	ldr	r5, [r4, #16]
 8003dd8:	6826      	ldr	r6, [r4, #0]
 8003dda:	42ae      	cmp	r6, r5
 8003ddc:	dd13      	ble.n	8003e06 <benchmark+0x1f4e>
 8003dde:	68a3      	ldr	r3, [r4, #8]
 8003de0:	6023      	str	r3, [r4, #0]
 8003de2:	680b      	ldr	r3, [r1, #0]
 8003de4:	3b04      	subs	r3, #4
 8003de6:	600b      	str	r3, [r1, #0]
 8003de8:	6813      	ldr	r3, [r2, #0]
 8003dea:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003dee:	6813      	ldr	r3, [r2, #0]
 8003df0:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003df4:	605e      	str	r6, [r3, #4]
 8003df6:	1973      	adds	r3, r6, r5
 8003df8:	6815      	ldr	r5, [r2, #0]
 8003dfa:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003dfe:	60ab      	str	r3, [r5, #8]
 8003e00:	6813      	ldr	r3, [r2, #0]
 8003e02:	3303      	adds	r3, #3
 8003e04:	6013      	str	r3, [r2, #0]
 8003e06:	680b      	ldr	r3, [r1, #0]
 8003e08:	2b05      	cmp	r3, #5
 8003e0a:	db23      	blt.n	8003e54 <benchmark+0x1f9c>
 8003e0c:	6813      	ldr	r3, [r2, #0]
 8003e0e:	3303      	adds	r3, #3
 8003e10:	2b06      	cmp	r3, #6
 8003e12:	dc1f      	bgt.n	8003e54 <benchmark+0x1f9c>
 8003e14:	6823      	ldr	r3, [r4, #0]
 8003e16:	68a5      	ldr	r5, [r4, #8]
 8003e18:	42ab      	cmp	r3, r5
 8003e1a:	d11b      	bne.n	8003e54 <benchmark+0x1f9c>
 8003e1c:	6823      	ldr	r3, [r4, #0]
 8003e1e:	6865      	ldr	r5, [r4, #4]
 8003e20:	42ab      	cmp	r3, r5
 8003e22:	d117      	bne.n	8003e54 <benchmark+0x1f9c>
 8003e24:	6925      	ldr	r5, [r4, #16]
 8003e26:	6826      	ldr	r6, [r4, #0]
 8003e28:	42ae      	cmp	r6, r5
 8003e2a:	dd13      	ble.n	8003e54 <benchmark+0x1f9c>
 8003e2c:	68e3      	ldr	r3, [r4, #12]
 8003e2e:	6023      	str	r3, [r4, #0]
 8003e30:	680b      	ldr	r3, [r1, #0]
 8003e32:	3b04      	subs	r3, #4
 8003e34:	600b      	str	r3, [r1, #0]
 8003e36:	6813      	ldr	r3, [r2, #0]
 8003e38:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003e3c:	6813      	ldr	r3, [r2, #0]
 8003e3e:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003e42:	605e      	str	r6, [r3, #4]
 8003e44:	1973      	adds	r3, r6, r5
 8003e46:	6815      	ldr	r5, [r2, #0]
 8003e48:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003e4c:	60ab      	str	r3, [r5, #8]
 8003e4e:	6813      	ldr	r3, [r2, #0]
 8003e50:	3303      	adds	r3, #3
 8003e52:	6013      	str	r3, [r2, #0]
 8003e54:	680b      	ldr	r3, [r1, #0]
 8003e56:	2b05      	cmp	r3, #5
 8003e58:	db23      	blt.n	8003ea2 <benchmark+0x1fea>
 8003e5a:	6813      	ldr	r3, [r2, #0]
 8003e5c:	3303      	adds	r3, #3
 8003e5e:	2b06      	cmp	r3, #6
 8003e60:	dc1f      	bgt.n	8003ea2 <benchmark+0x1fea>
 8003e62:	6823      	ldr	r3, [r4, #0]
 8003e64:	68a5      	ldr	r5, [r4, #8]
 8003e66:	42ab      	cmp	r3, r5
 8003e68:	d11b      	bne.n	8003ea2 <benchmark+0x1fea>
 8003e6a:	6823      	ldr	r3, [r4, #0]
 8003e6c:	68e5      	ldr	r5, [r4, #12]
 8003e6e:	42ab      	cmp	r3, r5
 8003e70:	d117      	bne.n	8003ea2 <benchmark+0x1fea>
 8003e72:	6925      	ldr	r5, [r4, #16]
 8003e74:	6826      	ldr	r6, [r4, #0]
 8003e76:	42ae      	cmp	r6, r5
 8003e78:	dd13      	ble.n	8003ea2 <benchmark+0x1fea>
 8003e7a:	6863      	ldr	r3, [r4, #4]
 8003e7c:	6023      	str	r3, [r4, #0]
 8003e7e:	680b      	ldr	r3, [r1, #0]
 8003e80:	3b04      	subs	r3, #4
 8003e82:	600b      	str	r3, [r1, #0]
 8003e84:	6813      	ldr	r3, [r2, #0]
 8003e86:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003e8a:	6813      	ldr	r3, [r2, #0]
 8003e8c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003e90:	605e      	str	r6, [r3, #4]
 8003e92:	1973      	adds	r3, r6, r5
 8003e94:	6815      	ldr	r5, [r2, #0]
 8003e96:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003e9a:	60ab      	str	r3, [r5, #8]
 8003e9c:	6813      	ldr	r3, [r2, #0]
 8003e9e:	3303      	adds	r3, #3
 8003ea0:	6013      	str	r3, [r2, #0]
 8003ea2:	680b      	ldr	r3, [r1, #0]
 8003ea4:	2b05      	cmp	r3, #5
 8003ea6:	db23      	blt.n	8003ef0 <benchmark+0x2038>
 8003ea8:	6813      	ldr	r3, [r2, #0]
 8003eaa:	3303      	adds	r3, #3
 8003eac:	2b06      	cmp	r3, #6
 8003eae:	dc1f      	bgt.n	8003ef0 <benchmark+0x2038>
 8003eb0:	6823      	ldr	r3, [r4, #0]
 8003eb2:	68e5      	ldr	r5, [r4, #12]
 8003eb4:	42ab      	cmp	r3, r5
 8003eb6:	d11b      	bne.n	8003ef0 <benchmark+0x2038>
 8003eb8:	6823      	ldr	r3, [r4, #0]
 8003eba:	6865      	ldr	r5, [r4, #4]
 8003ebc:	42ab      	cmp	r3, r5
 8003ebe:	d117      	bne.n	8003ef0 <benchmark+0x2038>
 8003ec0:	6925      	ldr	r5, [r4, #16]
 8003ec2:	6826      	ldr	r6, [r4, #0]
 8003ec4:	42ae      	cmp	r6, r5
 8003ec6:	dd13      	ble.n	8003ef0 <benchmark+0x2038>
 8003ec8:	68a3      	ldr	r3, [r4, #8]
 8003eca:	6023      	str	r3, [r4, #0]
 8003ecc:	680b      	ldr	r3, [r1, #0]
 8003ece:	3b04      	subs	r3, #4
 8003ed0:	600b      	str	r3, [r1, #0]
 8003ed2:	6813      	ldr	r3, [r2, #0]
 8003ed4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003ed8:	6813      	ldr	r3, [r2, #0]
 8003eda:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003ede:	605e      	str	r6, [r3, #4]
 8003ee0:	1973      	adds	r3, r6, r5
 8003ee2:	6815      	ldr	r5, [r2, #0]
 8003ee4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003ee8:	60ab      	str	r3, [r5, #8]
 8003eea:	6813      	ldr	r3, [r2, #0]
 8003eec:	3303      	adds	r3, #3
 8003eee:	6013      	str	r3, [r2, #0]
 8003ef0:	680b      	ldr	r3, [r1, #0]
 8003ef2:	2b05      	cmp	r3, #5
 8003ef4:	db23      	blt.n	8003f3e <benchmark+0x2086>
 8003ef6:	6813      	ldr	r3, [r2, #0]
 8003ef8:	3303      	adds	r3, #3
 8003efa:	2b06      	cmp	r3, #6
 8003efc:	dc1f      	bgt.n	8003f3e <benchmark+0x2086>
 8003efe:	6823      	ldr	r3, [r4, #0]
 8003f00:	68e5      	ldr	r5, [r4, #12]
 8003f02:	42ab      	cmp	r3, r5
 8003f04:	d11b      	bne.n	8003f3e <benchmark+0x2086>
 8003f06:	6823      	ldr	r3, [r4, #0]
 8003f08:	68a5      	ldr	r5, [r4, #8]
 8003f0a:	42ab      	cmp	r3, r5
 8003f0c:	d117      	bne.n	8003f3e <benchmark+0x2086>
 8003f0e:	6925      	ldr	r5, [r4, #16]
 8003f10:	6826      	ldr	r6, [r4, #0]
 8003f12:	42ae      	cmp	r6, r5
 8003f14:	dd13      	ble.n	8003f3e <benchmark+0x2086>
 8003f16:	6863      	ldr	r3, [r4, #4]
 8003f18:	6023      	str	r3, [r4, #0]
 8003f1a:	680b      	ldr	r3, [r1, #0]
 8003f1c:	3b04      	subs	r3, #4
 8003f1e:	600b      	str	r3, [r1, #0]
 8003f20:	6813      	ldr	r3, [r2, #0]
 8003f22:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003f26:	6813      	ldr	r3, [r2, #0]
 8003f28:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003f2c:	605e      	str	r6, [r3, #4]
 8003f2e:	1973      	adds	r3, r6, r5
 8003f30:	6815      	ldr	r5, [r2, #0]
 8003f32:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003f36:	60ab      	str	r3, [r5, #8]
 8003f38:	6813      	ldr	r3, [r2, #0]
 8003f3a:	3303      	adds	r3, #3
 8003f3c:	6013      	str	r3, [r2, #0]
 8003f3e:	680b      	ldr	r3, [r1, #0]
 8003f40:	2b05      	cmp	r3, #5
 8003f42:	db23      	blt.n	8003f8c <benchmark+0x20d4>
 8003f44:	6813      	ldr	r3, [r2, #0]
 8003f46:	3303      	adds	r3, #3
 8003f48:	2b06      	cmp	r3, #6
 8003f4a:	dc1f      	bgt.n	8003f8c <benchmark+0x20d4>
 8003f4c:	6863      	ldr	r3, [r4, #4]
 8003f4e:	6825      	ldr	r5, [r4, #0]
 8003f50:	42ab      	cmp	r3, r5
 8003f52:	d11b      	bne.n	8003f8c <benchmark+0x20d4>
 8003f54:	6863      	ldr	r3, [r4, #4]
 8003f56:	68a5      	ldr	r5, [r4, #8]
 8003f58:	42ab      	cmp	r3, r5
 8003f5a:	d117      	bne.n	8003f8c <benchmark+0x20d4>
 8003f5c:	6925      	ldr	r5, [r4, #16]
 8003f5e:	6866      	ldr	r6, [r4, #4]
 8003f60:	42ae      	cmp	r6, r5
 8003f62:	dd13      	ble.n	8003f8c <benchmark+0x20d4>
 8003f64:	68e3      	ldr	r3, [r4, #12]
 8003f66:	6023      	str	r3, [r4, #0]
 8003f68:	680b      	ldr	r3, [r1, #0]
 8003f6a:	3b04      	subs	r3, #4
 8003f6c:	600b      	str	r3, [r1, #0]
 8003f6e:	6813      	ldr	r3, [r2, #0]
 8003f70:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003f74:	6813      	ldr	r3, [r2, #0]
 8003f76:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003f7a:	605e      	str	r6, [r3, #4]
 8003f7c:	1973      	adds	r3, r6, r5
 8003f7e:	6815      	ldr	r5, [r2, #0]
 8003f80:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003f84:	60ab      	str	r3, [r5, #8]
 8003f86:	6813      	ldr	r3, [r2, #0]
 8003f88:	3303      	adds	r3, #3
 8003f8a:	6013      	str	r3, [r2, #0]
 8003f8c:	680b      	ldr	r3, [r1, #0]
 8003f8e:	2b05      	cmp	r3, #5
 8003f90:	db23      	blt.n	8003fda <benchmark+0x2122>
 8003f92:	6813      	ldr	r3, [r2, #0]
 8003f94:	3303      	adds	r3, #3
 8003f96:	2b06      	cmp	r3, #6
 8003f98:	dc1f      	bgt.n	8003fda <benchmark+0x2122>
 8003f9a:	6863      	ldr	r3, [r4, #4]
 8003f9c:	6825      	ldr	r5, [r4, #0]
 8003f9e:	42ab      	cmp	r3, r5
 8003fa0:	d11b      	bne.n	8003fda <benchmark+0x2122>
 8003fa2:	6863      	ldr	r3, [r4, #4]
 8003fa4:	68e5      	ldr	r5, [r4, #12]
 8003fa6:	42ab      	cmp	r3, r5
 8003fa8:	d117      	bne.n	8003fda <benchmark+0x2122>
 8003faa:	6925      	ldr	r5, [r4, #16]
 8003fac:	6866      	ldr	r6, [r4, #4]
 8003fae:	42ae      	cmp	r6, r5
 8003fb0:	dd13      	ble.n	8003fda <benchmark+0x2122>
 8003fb2:	68a3      	ldr	r3, [r4, #8]
 8003fb4:	6023      	str	r3, [r4, #0]
 8003fb6:	680b      	ldr	r3, [r1, #0]
 8003fb8:	3b04      	subs	r3, #4
 8003fba:	600b      	str	r3, [r1, #0]
 8003fbc:	6813      	ldr	r3, [r2, #0]
 8003fbe:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003fc2:	6813      	ldr	r3, [r2, #0]
 8003fc4:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8003fc8:	605e      	str	r6, [r3, #4]
 8003fca:	1973      	adds	r3, r6, r5
 8003fcc:	6815      	ldr	r5, [r2, #0]
 8003fce:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8003fd2:	60ab      	str	r3, [r5, #8]
 8003fd4:	6813      	ldr	r3, [r2, #0]
 8003fd6:	3303      	adds	r3, #3
 8003fd8:	6013      	str	r3, [r2, #0]
 8003fda:	680b      	ldr	r3, [r1, #0]
 8003fdc:	2b05      	cmp	r3, #5
 8003fde:	db23      	blt.n	8004028 <benchmark+0x2170>
 8003fe0:	6813      	ldr	r3, [r2, #0]
 8003fe2:	3303      	adds	r3, #3
 8003fe4:	2b06      	cmp	r3, #6
 8003fe6:	dc1f      	bgt.n	8004028 <benchmark+0x2170>
 8003fe8:	6863      	ldr	r3, [r4, #4]
 8003fea:	68a5      	ldr	r5, [r4, #8]
 8003fec:	42ab      	cmp	r3, r5
 8003fee:	d11b      	bne.n	8004028 <benchmark+0x2170>
 8003ff0:	6863      	ldr	r3, [r4, #4]
 8003ff2:	6825      	ldr	r5, [r4, #0]
 8003ff4:	42ab      	cmp	r3, r5
 8003ff6:	d117      	bne.n	8004028 <benchmark+0x2170>
 8003ff8:	6925      	ldr	r5, [r4, #16]
 8003ffa:	6866      	ldr	r6, [r4, #4]
 8003ffc:	42ae      	cmp	r6, r5
 8003ffe:	dd13      	ble.n	8004028 <benchmark+0x2170>
 8004000:	68e3      	ldr	r3, [r4, #12]
 8004002:	6023      	str	r3, [r4, #0]
 8004004:	680b      	ldr	r3, [r1, #0]
 8004006:	3b04      	subs	r3, #4
 8004008:	600b      	str	r3, [r1, #0]
 800400a:	6813      	ldr	r3, [r2, #0]
 800400c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8004010:	6813      	ldr	r3, [r2, #0]
 8004012:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8004016:	605e      	str	r6, [r3, #4]
 8004018:	1973      	adds	r3, r6, r5
 800401a:	6815      	ldr	r5, [r2, #0]
 800401c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8004020:	60ab      	str	r3, [r5, #8]
 8004022:	6813      	ldr	r3, [r2, #0]
 8004024:	3303      	adds	r3, #3
 8004026:	6013      	str	r3, [r2, #0]
 8004028:	680b      	ldr	r3, [r1, #0]
 800402a:	2b05      	cmp	r3, #5
 800402c:	db21      	blt.n	8004072 <benchmark+0x21ba>
 800402e:	6813      	ldr	r3, [r2, #0]
 8004030:	3303      	adds	r3, #3
 8004032:	2b06      	cmp	r3, #6
 8004034:	dc1d      	bgt.n	8004072 <benchmark+0x21ba>
 8004036:	6863      	ldr	r3, [r4, #4]
 8004038:	68a5      	ldr	r5, [r4, #8]
 800403a:	42ab      	cmp	r3, r5
 800403c:	d119      	bne.n	8004072 <benchmark+0x21ba>
 800403e:	6863      	ldr	r3, [r4, #4]
 8004040:	68e5      	ldr	r5, [r4, #12]
 8004042:	42ab      	cmp	r3, r5
 8004044:	d115      	bne.n	8004072 <benchmark+0x21ba>
 8004046:	6925      	ldr	r5, [r4, #16]
 8004048:	6866      	ldr	r6, [r4, #4]
 800404a:	42ae      	cmp	r6, r5
 800404c:	dd11      	ble.n	8004072 <benchmark+0x21ba>
 800404e:	680b      	ldr	r3, [r1, #0]
 8004050:	3b04      	subs	r3, #4
 8004052:	600b      	str	r3, [r1, #0]
 8004054:	6813      	ldr	r3, [r2, #0]
 8004056:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800405a:	6813      	ldr	r3, [r2, #0]
 800405c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8004060:	605e      	str	r6, [r3, #4]
 8004062:	1973      	adds	r3, r6, r5
 8004064:	6815      	ldr	r5, [r2, #0]
 8004066:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800406a:	60ab      	str	r3, [r5, #8]
 800406c:	6813      	ldr	r3, [r2, #0]
 800406e:	3303      	adds	r3, #3
 8004070:	6013      	str	r3, [r2, #0]
 8004072:	680b      	ldr	r3, [r1, #0]
 8004074:	2b05      	cmp	r3, #5
 8004076:	db23      	blt.n	80040c0 <benchmark+0x2208>
 8004078:	6813      	ldr	r3, [r2, #0]
 800407a:	3303      	adds	r3, #3
 800407c:	2b06      	cmp	r3, #6
 800407e:	dc1f      	bgt.n	80040c0 <benchmark+0x2208>
 8004080:	6863      	ldr	r3, [r4, #4]
 8004082:	68e5      	ldr	r5, [r4, #12]
 8004084:	42ab      	cmp	r3, r5
 8004086:	d11b      	bne.n	80040c0 <benchmark+0x2208>
 8004088:	6863      	ldr	r3, [r4, #4]
 800408a:	6825      	ldr	r5, [r4, #0]
 800408c:	42ab      	cmp	r3, r5
 800408e:	d117      	bne.n	80040c0 <benchmark+0x2208>
 8004090:	6925      	ldr	r5, [r4, #16]
 8004092:	6866      	ldr	r6, [r4, #4]
 8004094:	42ae      	cmp	r6, r5
 8004096:	dd13      	ble.n	80040c0 <benchmark+0x2208>
 8004098:	68a3      	ldr	r3, [r4, #8]
 800409a:	6023      	str	r3, [r4, #0]
 800409c:	680b      	ldr	r3, [r1, #0]
 800409e:	3b04      	subs	r3, #4
 80040a0:	600b      	str	r3, [r1, #0]
 80040a2:	6813      	ldr	r3, [r2, #0]
 80040a4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80040a8:	6813      	ldr	r3, [r2, #0]
 80040aa:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80040ae:	605e      	str	r6, [r3, #4]
 80040b0:	1973      	adds	r3, r6, r5
 80040b2:	6815      	ldr	r5, [r2, #0]
 80040b4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80040b8:	60ab      	str	r3, [r5, #8]
 80040ba:	6813      	ldr	r3, [r2, #0]
 80040bc:	3303      	adds	r3, #3
 80040be:	6013      	str	r3, [r2, #0]
 80040c0:	680b      	ldr	r3, [r1, #0]
 80040c2:	2b05      	cmp	r3, #5
 80040c4:	db21      	blt.n	800410a <benchmark+0x2252>
 80040c6:	6813      	ldr	r3, [r2, #0]
 80040c8:	3303      	adds	r3, #3
 80040ca:	2b06      	cmp	r3, #6
 80040cc:	dc1d      	bgt.n	800410a <benchmark+0x2252>
 80040ce:	6863      	ldr	r3, [r4, #4]
 80040d0:	68e5      	ldr	r5, [r4, #12]
 80040d2:	42ab      	cmp	r3, r5
 80040d4:	d119      	bne.n	800410a <benchmark+0x2252>
 80040d6:	6863      	ldr	r3, [r4, #4]
 80040d8:	68a5      	ldr	r5, [r4, #8]
 80040da:	42ab      	cmp	r3, r5
 80040dc:	d115      	bne.n	800410a <benchmark+0x2252>
 80040de:	6925      	ldr	r5, [r4, #16]
 80040e0:	6866      	ldr	r6, [r4, #4]
 80040e2:	42ae      	cmp	r6, r5
 80040e4:	dd11      	ble.n	800410a <benchmark+0x2252>
 80040e6:	680b      	ldr	r3, [r1, #0]
 80040e8:	3b04      	subs	r3, #4
 80040ea:	600b      	str	r3, [r1, #0]
 80040ec:	6813      	ldr	r3, [r2, #0]
 80040ee:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80040f2:	6813      	ldr	r3, [r2, #0]
 80040f4:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80040f8:	605e      	str	r6, [r3, #4]
 80040fa:	1973      	adds	r3, r6, r5
 80040fc:	6815      	ldr	r5, [r2, #0]
 80040fe:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8004102:	60ab      	str	r3, [r5, #8]
 8004104:	6813      	ldr	r3, [r2, #0]
 8004106:	3303      	adds	r3, #3
 8004108:	6013      	str	r3, [r2, #0]
 800410a:	680b      	ldr	r3, [r1, #0]
 800410c:	2b05      	cmp	r3, #5
 800410e:	db23      	blt.n	8004158 <benchmark+0x22a0>
 8004110:	6813      	ldr	r3, [r2, #0]
 8004112:	3303      	adds	r3, #3
 8004114:	2b06      	cmp	r3, #6
 8004116:	dc1f      	bgt.n	8004158 <benchmark+0x22a0>
 8004118:	68a3      	ldr	r3, [r4, #8]
 800411a:	6825      	ldr	r5, [r4, #0]
 800411c:	42ab      	cmp	r3, r5
 800411e:	d11b      	bne.n	8004158 <benchmark+0x22a0>
 8004120:	68a3      	ldr	r3, [r4, #8]
 8004122:	6865      	ldr	r5, [r4, #4]
 8004124:	42ab      	cmp	r3, r5
 8004126:	d117      	bne.n	8004158 <benchmark+0x22a0>
 8004128:	6925      	ldr	r5, [r4, #16]
 800412a:	68a6      	ldr	r6, [r4, #8]
 800412c:	42ae      	cmp	r6, r5
 800412e:	dd13      	ble.n	8004158 <benchmark+0x22a0>
 8004130:	68e3      	ldr	r3, [r4, #12]
 8004132:	6023      	str	r3, [r4, #0]
 8004134:	680b      	ldr	r3, [r1, #0]
 8004136:	3b04      	subs	r3, #4
 8004138:	600b      	str	r3, [r1, #0]
 800413a:	6813      	ldr	r3, [r2, #0]
 800413c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8004140:	6813      	ldr	r3, [r2, #0]
 8004142:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8004146:	605e      	str	r6, [r3, #4]
 8004148:	1973      	adds	r3, r6, r5
 800414a:	6815      	ldr	r5, [r2, #0]
 800414c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8004150:	60ab      	str	r3, [r5, #8]
 8004152:	6813      	ldr	r3, [r2, #0]
 8004154:	3303      	adds	r3, #3
 8004156:	6013      	str	r3, [r2, #0]
 8004158:	680b      	ldr	r3, [r1, #0]
 800415a:	2b05      	cmp	r3, #5
 800415c:	db23      	blt.n	80041a6 <benchmark+0x22ee>
 800415e:	6813      	ldr	r3, [r2, #0]
 8004160:	3303      	adds	r3, #3
 8004162:	2b06      	cmp	r3, #6
 8004164:	dc1f      	bgt.n	80041a6 <benchmark+0x22ee>
 8004166:	68a3      	ldr	r3, [r4, #8]
 8004168:	6825      	ldr	r5, [r4, #0]
 800416a:	42ab      	cmp	r3, r5
 800416c:	d11b      	bne.n	80041a6 <benchmark+0x22ee>
 800416e:	68a3      	ldr	r3, [r4, #8]
 8004170:	68e5      	ldr	r5, [r4, #12]
 8004172:	42ab      	cmp	r3, r5
 8004174:	d117      	bne.n	80041a6 <benchmark+0x22ee>
 8004176:	6925      	ldr	r5, [r4, #16]
 8004178:	68a6      	ldr	r6, [r4, #8]
 800417a:	42ae      	cmp	r6, r5
 800417c:	dd13      	ble.n	80041a6 <benchmark+0x22ee>
 800417e:	6863      	ldr	r3, [r4, #4]
 8004180:	6023      	str	r3, [r4, #0]
 8004182:	680b      	ldr	r3, [r1, #0]
 8004184:	3b04      	subs	r3, #4
 8004186:	600b      	str	r3, [r1, #0]
 8004188:	6813      	ldr	r3, [r2, #0]
 800418a:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800418e:	6813      	ldr	r3, [r2, #0]
 8004190:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8004194:	605e      	str	r6, [r3, #4]
 8004196:	1973      	adds	r3, r6, r5
 8004198:	6815      	ldr	r5, [r2, #0]
 800419a:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800419e:	60ab      	str	r3, [r5, #8]
 80041a0:	6813      	ldr	r3, [r2, #0]
 80041a2:	3303      	adds	r3, #3
 80041a4:	6013      	str	r3, [r2, #0]
 80041a6:	680b      	ldr	r3, [r1, #0]
 80041a8:	2b05      	cmp	r3, #5
 80041aa:	db23      	blt.n	80041f4 <benchmark+0x233c>
 80041ac:	6813      	ldr	r3, [r2, #0]
 80041ae:	3303      	adds	r3, #3
 80041b0:	2b06      	cmp	r3, #6
 80041b2:	dc1f      	bgt.n	80041f4 <benchmark+0x233c>
 80041b4:	68a3      	ldr	r3, [r4, #8]
 80041b6:	6865      	ldr	r5, [r4, #4]
 80041b8:	42ab      	cmp	r3, r5
 80041ba:	d11b      	bne.n	80041f4 <benchmark+0x233c>
 80041bc:	68a3      	ldr	r3, [r4, #8]
 80041be:	6825      	ldr	r5, [r4, #0]
 80041c0:	42ab      	cmp	r3, r5
 80041c2:	d117      	bne.n	80041f4 <benchmark+0x233c>
 80041c4:	6925      	ldr	r5, [r4, #16]
 80041c6:	68a6      	ldr	r6, [r4, #8]
 80041c8:	42ae      	cmp	r6, r5
 80041ca:	dd13      	ble.n	80041f4 <benchmark+0x233c>
 80041cc:	68e3      	ldr	r3, [r4, #12]
 80041ce:	6023      	str	r3, [r4, #0]
 80041d0:	680b      	ldr	r3, [r1, #0]
 80041d2:	3b04      	subs	r3, #4
 80041d4:	600b      	str	r3, [r1, #0]
 80041d6:	6813      	ldr	r3, [r2, #0]
 80041d8:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80041dc:	6813      	ldr	r3, [r2, #0]
 80041de:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80041e2:	605e      	str	r6, [r3, #4]
 80041e4:	1973      	adds	r3, r6, r5
 80041e6:	6815      	ldr	r5, [r2, #0]
 80041e8:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80041ec:	60ab      	str	r3, [r5, #8]
 80041ee:	6813      	ldr	r3, [r2, #0]
 80041f0:	3303      	adds	r3, #3
 80041f2:	6013      	str	r3, [r2, #0]
 80041f4:	680b      	ldr	r3, [r1, #0]
 80041f6:	2b05      	cmp	r3, #5
 80041f8:	db21      	blt.n	800423e <benchmark+0x2386>
 80041fa:	6813      	ldr	r3, [r2, #0]
 80041fc:	3303      	adds	r3, #3
 80041fe:	2b06      	cmp	r3, #6
 8004200:	dc1d      	bgt.n	800423e <benchmark+0x2386>
 8004202:	68a3      	ldr	r3, [r4, #8]
 8004204:	6865      	ldr	r5, [r4, #4]
 8004206:	42ab      	cmp	r3, r5
 8004208:	d119      	bne.n	800423e <benchmark+0x2386>
 800420a:	68a3      	ldr	r3, [r4, #8]
 800420c:	68e5      	ldr	r5, [r4, #12]
 800420e:	42ab      	cmp	r3, r5
 8004210:	d115      	bne.n	800423e <benchmark+0x2386>
 8004212:	6925      	ldr	r5, [r4, #16]
 8004214:	68a6      	ldr	r6, [r4, #8]
 8004216:	42ae      	cmp	r6, r5
 8004218:	dd11      	ble.n	800423e <benchmark+0x2386>
 800421a:	680b      	ldr	r3, [r1, #0]
 800421c:	3b04      	subs	r3, #4
 800421e:	600b      	str	r3, [r1, #0]
 8004220:	6813      	ldr	r3, [r2, #0]
 8004222:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8004226:	6813      	ldr	r3, [r2, #0]
 8004228:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800422c:	605e      	str	r6, [r3, #4]
 800422e:	1973      	adds	r3, r6, r5
 8004230:	6815      	ldr	r5, [r2, #0]
 8004232:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8004236:	60ab      	str	r3, [r5, #8]
 8004238:	6813      	ldr	r3, [r2, #0]
 800423a:	3303      	adds	r3, #3
 800423c:	6013      	str	r3, [r2, #0]
 800423e:	680b      	ldr	r3, [r1, #0]
 8004240:	2b05      	cmp	r3, #5
 8004242:	db23      	blt.n	800428c <benchmark+0x23d4>
 8004244:	6813      	ldr	r3, [r2, #0]
 8004246:	3303      	adds	r3, #3
 8004248:	2b06      	cmp	r3, #6
 800424a:	dc1f      	bgt.n	800428c <benchmark+0x23d4>
 800424c:	68a3      	ldr	r3, [r4, #8]
 800424e:	68e5      	ldr	r5, [r4, #12]
 8004250:	42ab      	cmp	r3, r5
 8004252:	d11b      	bne.n	800428c <benchmark+0x23d4>
 8004254:	68a3      	ldr	r3, [r4, #8]
 8004256:	6825      	ldr	r5, [r4, #0]
 8004258:	42ab      	cmp	r3, r5
 800425a:	d117      	bne.n	800428c <benchmark+0x23d4>
 800425c:	6925      	ldr	r5, [r4, #16]
 800425e:	68a6      	ldr	r6, [r4, #8]
 8004260:	42ae      	cmp	r6, r5
 8004262:	dd13      	ble.n	800428c <benchmark+0x23d4>
 8004264:	6863      	ldr	r3, [r4, #4]
 8004266:	6023      	str	r3, [r4, #0]
 8004268:	680b      	ldr	r3, [r1, #0]
 800426a:	3b04      	subs	r3, #4
 800426c:	600b      	str	r3, [r1, #0]
 800426e:	6813      	ldr	r3, [r2, #0]
 8004270:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8004274:	6813      	ldr	r3, [r2, #0]
 8004276:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 800427a:	605e      	str	r6, [r3, #4]
 800427c:	1973      	adds	r3, r6, r5
 800427e:	6815      	ldr	r5, [r2, #0]
 8004280:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8004284:	60ab      	str	r3, [r5, #8]
 8004286:	6813      	ldr	r3, [r2, #0]
 8004288:	3303      	adds	r3, #3
 800428a:	6013      	str	r3, [r2, #0]
 800428c:	680b      	ldr	r3, [r1, #0]
 800428e:	2b05      	cmp	r3, #5
 8004290:	db21      	blt.n	80042d6 <benchmark+0x241e>
 8004292:	6813      	ldr	r3, [r2, #0]
 8004294:	3303      	adds	r3, #3
 8004296:	2b06      	cmp	r3, #6
 8004298:	dc1d      	bgt.n	80042d6 <benchmark+0x241e>
 800429a:	68a3      	ldr	r3, [r4, #8]
 800429c:	68e5      	ldr	r5, [r4, #12]
 800429e:	42ab      	cmp	r3, r5
 80042a0:	d119      	bne.n	80042d6 <benchmark+0x241e>
 80042a2:	68a3      	ldr	r3, [r4, #8]
 80042a4:	6865      	ldr	r5, [r4, #4]
 80042a6:	42ab      	cmp	r3, r5
 80042a8:	d115      	bne.n	80042d6 <benchmark+0x241e>
 80042aa:	6925      	ldr	r5, [r4, #16]
 80042ac:	68a6      	ldr	r6, [r4, #8]
 80042ae:	42ae      	cmp	r6, r5
 80042b0:	dd11      	ble.n	80042d6 <benchmark+0x241e>
 80042b2:	680b      	ldr	r3, [r1, #0]
 80042b4:	3b04      	subs	r3, #4
 80042b6:	600b      	str	r3, [r1, #0]
 80042b8:	6813      	ldr	r3, [r2, #0]
 80042ba:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80042be:	6813      	ldr	r3, [r2, #0]
 80042c0:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80042c4:	605e      	str	r6, [r3, #4]
 80042c6:	1973      	adds	r3, r6, r5
 80042c8:	6815      	ldr	r5, [r2, #0]
 80042ca:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80042ce:	60ab      	str	r3, [r5, #8]
 80042d0:	6813      	ldr	r3, [r2, #0]
 80042d2:	3303      	adds	r3, #3
 80042d4:	6013      	str	r3, [r2, #0]
 80042d6:	680b      	ldr	r3, [r1, #0]
 80042d8:	2b05      	cmp	r3, #5
 80042da:	db23      	blt.n	8004324 <benchmark+0x246c>
 80042dc:	6813      	ldr	r3, [r2, #0]
 80042de:	3303      	adds	r3, #3
 80042e0:	2b06      	cmp	r3, #6
 80042e2:	dc1f      	bgt.n	8004324 <benchmark+0x246c>
 80042e4:	68e3      	ldr	r3, [r4, #12]
 80042e6:	6825      	ldr	r5, [r4, #0]
 80042e8:	42ab      	cmp	r3, r5
 80042ea:	d11b      	bne.n	8004324 <benchmark+0x246c>
 80042ec:	68e3      	ldr	r3, [r4, #12]
 80042ee:	6865      	ldr	r5, [r4, #4]
 80042f0:	42ab      	cmp	r3, r5
 80042f2:	d117      	bne.n	8004324 <benchmark+0x246c>
 80042f4:	6925      	ldr	r5, [r4, #16]
 80042f6:	68e6      	ldr	r6, [r4, #12]
 80042f8:	42ae      	cmp	r6, r5
 80042fa:	dd13      	ble.n	8004324 <benchmark+0x246c>
 80042fc:	68a3      	ldr	r3, [r4, #8]
 80042fe:	6023      	str	r3, [r4, #0]
 8004300:	680b      	ldr	r3, [r1, #0]
 8004302:	3b04      	subs	r3, #4
 8004304:	600b      	str	r3, [r1, #0]
 8004306:	6813      	ldr	r3, [r2, #0]
 8004308:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800430c:	6813      	ldr	r3, [r2, #0]
 800430e:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8004312:	605e      	str	r6, [r3, #4]
 8004314:	1973      	adds	r3, r6, r5
 8004316:	6815      	ldr	r5, [r2, #0]
 8004318:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800431c:	60ab      	str	r3, [r5, #8]
 800431e:	6813      	ldr	r3, [r2, #0]
 8004320:	3303      	adds	r3, #3
 8004322:	6013      	str	r3, [r2, #0]
 8004324:	680b      	ldr	r3, [r1, #0]
 8004326:	2b05      	cmp	r3, #5
 8004328:	db23      	blt.n	8004372 <benchmark+0x24ba>
 800432a:	6813      	ldr	r3, [r2, #0]
 800432c:	3303      	adds	r3, #3
 800432e:	2b06      	cmp	r3, #6
 8004330:	dc1f      	bgt.n	8004372 <benchmark+0x24ba>
 8004332:	68e3      	ldr	r3, [r4, #12]
 8004334:	6825      	ldr	r5, [r4, #0]
 8004336:	42ab      	cmp	r3, r5
 8004338:	d11b      	bne.n	8004372 <benchmark+0x24ba>
 800433a:	68e3      	ldr	r3, [r4, #12]
 800433c:	68a5      	ldr	r5, [r4, #8]
 800433e:	42ab      	cmp	r3, r5
 8004340:	d117      	bne.n	8004372 <benchmark+0x24ba>
 8004342:	6925      	ldr	r5, [r4, #16]
 8004344:	68e6      	ldr	r6, [r4, #12]
 8004346:	42ae      	cmp	r6, r5
 8004348:	dd13      	ble.n	8004372 <benchmark+0x24ba>
 800434a:	6863      	ldr	r3, [r4, #4]
 800434c:	6023      	str	r3, [r4, #0]
 800434e:	680b      	ldr	r3, [r1, #0]
 8004350:	3b04      	subs	r3, #4
 8004352:	600b      	str	r3, [r1, #0]
 8004354:	6813      	ldr	r3, [r2, #0]
 8004356:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800435a:	6813      	ldr	r3, [r2, #0]
 800435c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8004360:	605e      	str	r6, [r3, #4]
 8004362:	1973      	adds	r3, r6, r5
 8004364:	6815      	ldr	r5, [r2, #0]
 8004366:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800436a:	60ab      	str	r3, [r5, #8]
 800436c:	6813      	ldr	r3, [r2, #0]
 800436e:	3303      	adds	r3, #3
 8004370:	6013      	str	r3, [r2, #0]
 8004372:	680b      	ldr	r3, [r1, #0]
 8004374:	2b05      	cmp	r3, #5
 8004376:	db23      	blt.n	80043c0 <benchmark+0x2508>
 8004378:	6813      	ldr	r3, [r2, #0]
 800437a:	3303      	adds	r3, #3
 800437c:	2b06      	cmp	r3, #6
 800437e:	dc1f      	bgt.n	80043c0 <benchmark+0x2508>
 8004380:	68e3      	ldr	r3, [r4, #12]
 8004382:	6865      	ldr	r5, [r4, #4]
 8004384:	42ab      	cmp	r3, r5
 8004386:	d11b      	bne.n	80043c0 <benchmark+0x2508>
 8004388:	68e3      	ldr	r3, [r4, #12]
 800438a:	6825      	ldr	r5, [r4, #0]
 800438c:	42ab      	cmp	r3, r5
 800438e:	d117      	bne.n	80043c0 <benchmark+0x2508>
 8004390:	6925      	ldr	r5, [r4, #16]
 8004392:	68e6      	ldr	r6, [r4, #12]
 8004394:	42ae      	cmp	r6, r5
 8004396:	dd13      	ble.n	80043c0 <benchmark+0x2508>
 8004398:	68a3      	ldr	r3, [r4, #8]
 800439a:	6023      	str	r3, [r4, #0]
 800439c:	680b      	ldr	r3, [r1, #0]
 800439e:	3b04      	subs	r3, #4
 80043a0:	600b      	str	r3, [r1, #0]
 80043a2:	6813      	ldr	r3, [r2, #0]
 80043a4:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80043a8:	6813      	ldr	r3, [r2, #0]
 80043aa:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80043ae:	605e      	str	r6, [r3, #4]
 80043b0:	1973      	adds	r3, r6, r5
 80043b2:	6815      	ldr	r5, [r2, #0]
 80043b4:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 80043b8:	60ab      	str	r3, [r5, #8]
 80043ba:	6813      	ldr	r3, [r2, #0]
 80043bc:	3303      	adds	r3, #3
 80043be:	6013      	str	r3, [r2, #0]
 80043c0:	680b      	ldr	r3, [r1, #0]
 80043c2:	2b05      	cmp	r3, #5
 80043c4:	db21      	blt.n	800440a <benchmark+0x2552>
 80043c6:	6813      	ldr	r3, [r2, #0]
 80043c8:	3303      	adds	r3, #3
 80043ca:	2b06      	cmp	r3, #6
 80043cc:	dc1d      	bgt.n	800440a <benchmark+0x2552>
 80043ce:	68e3      	ldr	r3, [r4, #12]
 80043d0:	6865      	ldr	r5, [r4, #4]
 80043d2:	42ab      	cmp	r3, r5
 80043d4:	d119      	bne.n	800440a <benchmark+0x2552>
 80043d6:	68e3      	ldr	r3, [r4, #12]
 80043d8:	68a5      	ldr	r5, [r4, #8]
 80043da:	42ab      	cmp	r3, r5
 80043dc:	d115      	bne.n	800440a <benchmark+0x2552>
 80043de:	6925      	ldr	r5, [r4, #16]
 80043e0:	68e6      	ldr	r6, [r4, #12]
 80043e2:	42ae      	cmp	r6, r5
 80043e4:	dd11      	ble.n	800440a <benchmark+0x2552>
 80043e6:	680b      	ldr	r3, [r1, #0]
 80043e8:	3b04      	subs	r3, #4
 80043ea:	600b      	str	r3, [r1, #0]
 80043ec:	6813      	ldr	r3, [r2, #0]
 80043ee:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 80043f2:	6813      	ldr	r3, [r2, #0]
 80043f4:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 80043f8:	605e      	str	r6, [r3, #4]
 80043fa:	1973      	adds	r3, r6, r5
 80043fc:	6815      	ldr	r5, [r2, #0]
 80043fe:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8004402:	60ab      	str	r3, [r5, #8]
 8004404:	6813      	ldr	r3, [r2, #0]
 8004406:	3303      	adds	r3, #3
 8004408:	6013      	str	r3, [r2, #0]
 800440a:	680b      	ldr	r3, [r1, #0]
 800440c:	2b05      	cmp	r3, #5
 800440e:	db23      	blt.n	8004458 <benchmark+0x25a0>
 8004410:	6813      	ldr	r3, [r2, #0]
 8004412:	3303      	adds	r3, #3
 8004414:	2b06      	cmp	r3, #6
 8004416:	dc1f      	bgt.n	8004458 <benchmark+0x25a0>
 8004418:	68e3      	ldr	r3, [r4, #12]
 800441a:	68a5      	ldr	r5, [r4, #8]
 800441c:	42ab      	cmp	r3, r5
 800441e:	d11b      	bne.n	8004458 <benchmark+0x25a0>
 8004420:	68e3      	ldr	r3, [r4, #12]
 8004422:	6825      	ldr	r5, [r4, #0]
 8004424:	42ab      	cmp	r3, r5
 8004426:	d117      	bne.n	8004458 <benchmark+0x25a0>
 8004428:	6925      	ldr	r5, [r4, #16]
 800442a:	68e6      	ldr	r6, [r4, #12]
 800442c:	42ae      	cmp	r6, r5
 800442e:	dd13      	ble.n	8004458 <benchmark+0x25a0>
 8004430:	6863      	ldr	r3, [r4, #4]
 8004432:	6023      	str	r3, [r4, #0]
 8004434:	680b      	ldr	r3, [r1, #0]
 8004436:	3b04      	subs	r3, #4
 8004438:	600b      	str	r3, [r1, #0]
 800443a:	6813      	ldr	r3, [r2, #0]
 800443c:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8004440:	6813      	ldr	r3, [r2, #0]
 8004442:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8004446:	605e      	str	r6, [r3, #4]
 8004448:	1973      	adds	r3, r6, r5
 800444a:	6815      	ldr	r5, [r2, #0]
 800444c:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 8004450:	60ab      	str	r3, [r5, #8]
 8004452:	6813      	ldr	r3, [r2, #0]
 8004454:	3303      	adds	r3, #3
 8004456:	6013      	str	r3, [r2, #0]
 8004458:	680b      	ldr	r3, [r1, #0]
 800445a:	2b05      	cmp	r3, #5
 800445c:	db21      	blt.n	80044a2 <benchmark+0x25ea>
 800445e:	6813      	ldr	r3, [r2, #0]
 8004460:	3303      	adds	r3, #3
 8004462:	2b06      	cmp	r3, #6
 8004464:	dc1d      	bgt.n	80044a2 <benchmark+0x25ea>
 8004466:	68e3      	ldr	r3, [r4, #12]
 8004468:	68a5      	ldr	r5, [r4, #8]
 800446a:	42ab      	cmp	r3, r5
 800446c:	d119      	bne.n	80044a2 <benchmark+0x25ea>
 800446e:	68e3      	ldr	r3, [r4, #12]
 8004470:	6865      	ldr	r5, [r4, #4]
 8004472:	42ab      	cmp	r3, r5
 8004474:	d115      	bne.n	80044a2 <benchmark+0x25ea>
 8004476:	6925      	ldr	r5, [r4, #16]
 8004478:	68e6      	ldr	r6, [r4, #12]
 800447a:	42ae      	cmp	r6, r5
 800447c:	dd11      	ble.n	80044a2 <benchmark+0x25ea>
 800447e:	680b      	ldr	r3, [r1, #0]
 8004480:	3b04      	subs	r3, #4
 8004482:	600b      	str	r3, [r1, #0]
 8004484:	6813      	ldr	r3, [r2, #0]
 8004486:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 800448a:	6813      	ldr	r3, [r2, #0]
 800448c:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8004490:	605e      	str	r6, [r3, #4]
 8004492:	1973      	adds	r3, r6, r5
 8004494:	6815      	ldr	r5, [r2, #0]
 8004496:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800449a:	60ab      	str	r3, [r5, #8]
 800449c:	6813      	ldr	r3, [r2, #0]
 800449e:	3303      	adds	r3, #3
 80044a0:	6013      	str	r3, [r2, #0]
 80044a2:	3801      	subs	r0, #1
 80044a4:	2801      	cmp	r0, #1
 80044a6:	f73d ad24 	bgt.w	8001ef2 <benchmark+0x3a>
 80044aa:	204d      	movs	r0, #77	; 0x4d
 80044ac:	f85d 8b04 	ldr.w	r8, [sp], #4
 80044b0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080044b2 <verify_benchmark>:
 80044b2:	f240 0014 	movw	r0, #20
 80044b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80044ba:	6800      	ldr	r0, [r0, #0]
 80044bc:	2803      	cmp	r0, #3
 80044be:	d132      	bne.n	8004526 <verify_benchmark+0x74>
 80044c0:	f240 0018 	movw	r0, #24
 80044c4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80044c8:	6800      	ldr	r0, [r0, #0]
 80044ca:	2805      	cmp	r0, #5
 80044cc:	d12b      	bne.n	8004526 <verify_benchmark+0x74>
 80044ce:	f640 10ec 	movw	r0, #2540	; 0x9ec
 80044d2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80044d6:	6800      	ldr	r0, [r0, #0]
 80044d8:	bb28      	cbnz	r0, 8004526 <verify_benchmark+0x74>
 80044da:	f640 320c 	movw	r2, #2828	; 0xb0c
 80044de:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80044e2:	6810      	ldr	r0, [r2, #0]
 80044e4:	b9f8      	cbnz	r0, 8004526 <verify_benchmark+0x74>
 80044e6:	f640 3118 	movw	r1, #2840	; 0xb18
 80044ea:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80044ee:	6808      	ldr	r0, [r1, #0]
 80044f0:	b9c8      	cbnz	r0, 8004526 <verify_benchmark+0x74>
 80044f2:	f640 20f4 	movw	r0, #2804	; 0xaf4
 80044f6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80044fa:	6803      	ldr	r3, [r0, #0]
 80044fc:	b99b      	cbnz	r3, 8004526 <verify_benchmark+0x74>
 80044fe:	6853      	ldr	r3, [r2, #4]
 8004500:	b98b      	cbnz	r3, 8004526 <verify_benchmark+0x74>
 8004502:	684b      	ldr	r3, [r1, #4]
 8004504:	b97b      	cbnz	r3, 8004526 <verify_benchmark+0x74>
 8004506:	6843      	ldr	r3, [r0, #4]
 8004508:	b96b      	cbnz	r3, 8004526 <verify_benchmark+0x74>
 800450a:	6892      	ldr	r2, [r2, #8]
 800450c:	b95a      	cbnz	r2, 8004526 <verify_benchmark+0x74>
 800450e:	688a      	ldr	r2, [r1, #8]
 8004510:	b94a      	cbnz	r2, 8004526 <verify_benchmark+0x74>
 8004512:	6882      	ldr	r2, [r0, #8]
 8004514:	b93a      	cbnz	r2, 8004526 <verify_benchmark+0x74>
 8004516:	68ca      	ldr	r2, [r1, #12]
 8004518:	b92a      	cbnz	r2, 8004526 <verify_benchmark+0x74>
 800451a:	68c2      	ldr	r2, [r0, #12]
 800451c:	b91a      	cbnz	r2, 8004526 <verify_benchmark+0x74>
 800451e:	6909      	ldr	r1, [r1, #16]
 8004520:	b909      	cbnz	r1, 8004526 <verify_benchmark+0x74>
 8004522:	6901      	ldr	r1, [r0, #16]
 8004524:	b109      	cbz	r1, 800452a <verify_benchmark+0x78>
 8004526:	2000      	movs	r0, #0
 8004528:	4770      	bx	lr
 800452a:	6941      	ldr	r1, [r0, #20]
 800452c:	2000      	movs	r0, #0
 800452e:	2900      	cmp	r1, #0
 8004530:	bf08      	it	eq
 8004532:	2001      	moveq	r0, #1
 8004534:	4770      	bx	lr

08004536 <__io_putchar>:
 8004536:	b580      	push	{r7, lr}
 8004538:	466f      	mov	r7, sp
 800453a:	b082      	sub	sp, #8
 800453c:	9001      	str	r0, [sp, #4]
 800453e:	f640 10f0 	movw	r0, #2544	; 0x9f0
 8004542:	a901      	add	r1, sp, #4
 8004544:	2201      	movs	r2, #1
 8004546:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800454a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800454e:	f7fd fbc4 	bl	8001cda <HAL_UART_Transmit>
 8004552:	9801      	ldr	r0, [sp, #4]
 8004554:	b002      	add	sp, #8
 8004556:	bd80      	pop	{r7, pc}

08004558 <main>:
 8004558:	b5b0      	push	{r4, r5, r7, lr}
 800455a:	af02      	add	r7, sp, #8
 800455c:	f640 11f0 	movw	r1, #2544	; 0x9f0
 8004560:	f643 0000 	movw	r0, #14336	; 0x3800
 8004564:	220c      	movs	r2, #12
 8004566:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800456a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800456e:	6008      	str	r0, [r1, #0]
 8004570:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8004574:	6048      	str	r0, [r1, #4]
 8004576:	2000      	movs	r0, #0
 8004578:	e9c1 0002 	strd	r0, r0, [r1, #8]
 800457c:	6108      	str	r0, [r1, #16]
 800457e:	6248      	str	r0, [r1, #36]	; 0x24
 8004580:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8004584:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8004588:	2000      	movs	r0, #0
 800458a:	f7fd fc3b 	bl	8001e04 <BSP_COM_Init>
 800458e:	f7fd fc92 	bl	8001eb6 <initialise_benchmark>
 8004592:	f249 5050 	movw	r0, #38224	; 0x9550
 8004596:	f6c0 0000 	movt	r0, #2048	; 0x800
 800459a:	f000 f949 	bl	8004830 <printf>
 800459e:	f249 50fb 	movw	r0, #38395	; 0x95fb
 80045a2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80045a6:	f000 f9a5 	bl	80048f4 <puts>
 80045aa:	f7fc fd9d 	bl	80010e8 <HAL_Init>
 80045ae:	f7fc fdb3 	bl	8001118 <HAL_GetTick>
 80045b2:	4604      	mov	r4, r0
 80045b4:	f7fd fc80 	bl	8001eb8 <benchmark>
 80045b8:	4605      	mov	r5, r0
 80045ba:	f7fc fdad 	bl	8001118 <HAL_GetTick>
 80045be:	1b04      	subs	r4, r0, r4
 80045c0:	4628      	mov	r0, r5
 80045c2:	f7ff ff76 	bl	80044b2 <verify_benchmark>
 80045c6:	1c41      	adds	r1, r0, #1
 80045c8:	d006      	beq.n	80045d8 <main+0x80>
 80045ca:	2801      	cmp	r0, #1
 80045cc:	d109      	bne.n	80045e2 <main+0x8a>
 80045ce:	f249 5067 	movw	r0, #38247	; 0x9567
 80045d2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80045d6:	e008      	b.n	80045ea <main+0x92>
 80045d8:	f249 508b 	movw	r0, #38283	; 0x958b
 80045dc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80045e0:	e003      	b.n	80045ea <main+0x92>
 80045e2:	f249 50c0 	movw	r0, #38336	; 0x95c0
 80045e6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80045ea:	4621      	mov	r1, r4
 80045ec:	f000 f920 	bl	8004830 <printf>
 80045f0:	2000      	movs	r0, #0
 80045f2:	bdb0      	pop	{r4, r5, r7, pc}

080045f4 <SysTick_Handler>:
 80045f4:	b580      	push	{r7, lr}
 80045f6:	466f      	mov	r7, sp
 80045f8:	f7fc fd86 	bl	8001108 <HAL_IncTick>
 80045fc:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8004600:	f7fc bde0 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08004604 <_read>:
 8004604:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004606:	af03      	add	r7, sp, #12
 8004608:	f84d bd04 	str.w	fp, [sp, #-4]!
 800460c:	4614      	mov	r4, r2
 800460e:	460d      	mov	r5, r1
 8004610:	2c01      	cmp	r4, #1
 8004612:	db06      	blt.n	8004622 <_read+0x1e>
 8004614:	4626      	mov	r6, r4
 8004616:	f3af 8000 	nop.w
 800461a:	f805 0b01 	strb.w	r0, [r5], #1
 800461e:	3e01      	subs	r6, #1
 8004620:	d1f9      	bne.n	8004616 <_read+0x12>
 8004622:	4620      	mov	r0, r4
 8004624:	f85d bb04 	ldr.w	fp, [sp], #4
 8004628:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800462a <_write>:
 800462a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800462c:	af03      	add	r7, sp, #12
 800462e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8004632:	4614      	mov	r4, r2
 8004634:	460d      	mov	r5, r1
 8004636:	2c01      	cmp	r4, #1
 8004638:	db06      	blt.n	8004648 <_write+0x1e>
 800463a:	4626      	mov	r6, r4
 800463c:	f815 0b01 	ldrb.w	r0, [r5], #1
 8004640:	f7ff ff79 	bl	8004536 <__io_putchar>
 8004644:	3e01      	subs	r6, #1
 8004646:	d1f9      	bne.n	800463c <_write+0x12>
 8004648:	4620      	mov	r0, r4
 800464a:	f85d bb04 	ldr.w	fp, [sp], #4
 800464e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004650 <_sbrk>:
 8004650:	f640 2274 	movw	r2, #2676	; 0xa74
 8004654:	4601      	mov	r1, r0
 8004656:	466b      	mov	r3, sp
 8004658:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800465c:	6810      	ldr	r0, [r2, #0]
 800465e:	2800      	cmp	r0, #0
 8004660:	bf02      	ittt	eq
 8004662:	f640 3058 	movweq	r0, #2904	; 0xb58
 8004666:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800466a:	6010      	streq	r0, [r2, #0]
 800466c:	4401      	add	r1, r0
 800466e:	4299      	cmp	r1, r3
 8004670:	bf9c      	itt	ls
 8004672:	6011      	strls	r1, [r2, #0]
 8004674:	4770      	bxls	lr
 8004676:	b580      	push	{r7, lr}
 8004678:	466f      	mov	r7, sp
 800467a:	f000 f865 	bl	8004748 <__errno>
 800467e:	210c      	movs	r1, #12
 8004680:	6001      	str	r1, [r0, #0]
 8004682:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004686:	bd80      	pop	{r7, pc}

08004688 <_close>:
 8004688:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800468c:	4770      	bx	lr

0800468e <_fstat>:
 800468e:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8004692:	6048      	str	r0, [r1, #4]
 8004694:	2000      	movs	r0, #0
 8004696:	4770      	bx	lr

08004698 <_isatty>:
 8004698:	2001      	movs	r0, #1
 800469a:	4770      	bx	lr

0800469c <_lseek>:
 800469c:	2000      	movs	r0, #0
 800469e:	4770      	bx	lr

080046a0 <SystemInit>:
 80046a0:	f64e 5088 	movw	r0, #60808	; 0xed88
 80046a4:	f04f 0c00 	mov.w	ip, #0
 80046a8:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80046ac:	6801      	ldr	r1, [r0, #0]
 80046ae:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80046b2:	6001      	str	r1, [r0, #0]
 80046b4:	f241 0100 	movw	r1, #4096	; 0x1000
 80046b8:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80046bc:	680a      	ldr	r2, [r1, #0]
 80046be:	f042 0201 	orr.w	r2, r2, #1
 80046c2:	600a      	str	r2, [r1, #0]
 80046c4:	f8c1 c008 	str.w	ip, [r1, #8]
 80046c8:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80046cc:	680b      	ldr	r3, [r1, #0]
 80046ce:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80046d2:	401a      	ands	r2, r3
 80046d4:	600a      	str	r2, [r1, #0]
 80046d6:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80046da:	60ca      	str	r2, [r1, #12]
 80046dc:	680a      	ldr	r2, [r1, #0]
 80046de:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80046e2:	600a      	str	r2, [r1, #0]
 80046e4:	f8c1 c018 	str.w	ip, [r1, #24]
 80046e8:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80046ec:	f840 1c80 	str.w	r1, [r0, #-128]
 80046f0:	4770      	bx	lr
	...

080046f4 <Reset_Handler>:
 80046f4:	f8df d034 	ldr.w	sp, [pc, #52]	; 800472c <LoopForever+0x2>
 80046f8:	2100      	movs	r1, #0
 80046fa:	e003      	b.n	8004704 <LoopCopyDataInit>

080046fc <CopyDataInit>:
 80046fc:	4b0c      	ldr	r3, [pc, #48]	; (8004730 <LoopForever+0x6>)
 80046fe:	585b      	ldr	r3, [r3, r1]
 8004700:	5043      	str	r3, [r0, r1]
 8004702:	3104      	adds	r1, #4

08004704 <LoopCopyDataInit>:
 8004704:	480b      	ldr	r0, [pc, #44]	; (8004734 <LoopForever+0xa>)
 8004706:	4b0c      	ldr	r3, [pc, #48]	; (8004738 <LoopForever+0xe>)
 8004708:	1842      	adds	r2, r0, r1
 800470a:	429a      	cmp	r2, r3
 800470c:	d3f6      	bcc.n	80046fc <CopyDataInit>
 800470e:	4a0b      	ldr	r2, [pc, #44]	; (800473c <LoopForever+0x12>)
 8004710:	e002      	b.n	8004718 <LoopFillZerobss>

08004712 <FillZerobss>:
 8004712:	2300      	movs	r3, #0
 8004714:	f842 3b04 	str.w	r3, [r2], #4

08004718 <LoopFillZerobss>:
 8004718:	4b09      	ldr	r3, [pc, #36]	; (8004740 <LoopForever+0x16>)
 800471a:	429a      	cmp	r2, r3
 800471c:	d3f9      	bcc.n	8004712 <FillZerobss>
 800471e:	f7ff ffbf 	bl	80046a0 <SystemInit>
 8004722:	f000 f817 	bl	8004754 <__libc_init_array>
 8004726:	f7ff ff17 	bl	8004558 <main>

0800472a <LoopForever>:
 800472a:	e7fe      	b.n	800472a <LoopForever>
 800472c:	20018000 	.word	0x20018000
 8004730:	080098a8 	.word	0x080098a8
 8004734:	20000000 	.word	0x20000000
 8004738:	200009d0 	.word	0x200009d0
 800473c:	200009d0 	.word	0x200009d0
 8004740:	20000b54 	.word	0x20000b54

08004744 <ADC1_2_IRQHandler>:
 8004744:	e7fe      	b.n	8004744 <ADC1_2_IRQHandler>
	...

08004748 <__errno>:
 8004748:	4b01      	ldr	r3, [pc, #4]	; (8004750 <__errno+0x8>)
 800474a:	6818      	ldr	r0, [r3, #0]
 800474c:	4770      	bx	lr
 800474e:	bf00      	nop
 8004750:	20000020 	.word	0x20000020

08004754 <__libc_init_array>:
 8004754:	b570      	push	{r4, r5, r6, lr}
 8004756:	4e0d      	ldr	r6, [pc, #52]	; (800478c <__libc_init_array+0x38>)
 8004758:	4d0d      	ldr	r5, [pc, #52]	; (8004790 <__libc_init_array+0x3c>)
 800475a:	1b76      	subs	r6, r6, r5
 800475c:	10b6      	asrs	r6, r6, #2
 800475e:	d006      	beq.n	800476e <__libc_init_array+0x1a>
 8004760:	2400      	movs	r4, #0
 8004762:	3401      	adds	r4, #1
 8004764:	f855 3b04 	ldr.w	r3, [r5], #4
 8004768:	4798      	blx	r3
 800476a:	42a6      	cmp	r6, r4
 800476c:	d1f9      	bne.n	8004762 <__libc_init_array+0xe>
 800476e:	4e09      	ldr	r6, [pc, #36]	; (8004794 <__libc_init_array+0x40>)
 8004770:	4d09      	ldr	r5, [pc, #36]	; (8004798 <__libc_init_array+0x44>)
 8004772:	1b76      	subs	r6, r6, r5
 8004774:	f004 feaa 	bl	80094cc <_init>
 8004778:	10b6      	asrs	r6, r6, #2
 800477a:	d006      	beq.n	800478a <__libc_init_array+0x36>
 800477c:	2400      	movs	r4, #0
 800477e:	3401      	adds	r4, #1
 8004780:	f855 3b04 	ldr.w	r3, [r5], #4
 8004784:	4798      	blx	r3
 8004786:	42a6      	cmp	r6, r4
 8004788:	d1f9      	bne.n	800477e <__libc_init_array+0x2a>
 800478a:	bd70      	pop	{r4, r5, r6, pc}
 800478c:	08009898 	.word	0x08009898
 8004790:	08009898 	.word	0x08009898
 8004794:	080098a0 	.word	0x080098a0
 8004798:	08009898 	.word	0x08009898

0800479c <memset>:
 800479c:	b4f0      	push	{r4, r5, r6, r7}
 800479e:	0786      	lsls	r6, r0, #30
 80047a0:	d043      	beq.n	800482a <memset+0x8e>
 80047a2:	1e54      	subs	r4, r2, #1
 80047a4:	2a00      	cmp	r2, #0
 80047a6:	d03e      	beq.n	8004826 <memset+0x8a>
 80047a8:	b2ca      	uxtb	r2, r1
 80047aa:	4603      	mov	r3, r0
 80047ac:	e002      	b.n	80047b4 <memset+0x18>
 80047ae:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80047b2:	d338      	bcc.n	8004826 <memset+0x8a>
 80047b4:	f803 2b01 	strb.w	r2, [r3], #1
 80047b8:	079d      	lsls	r5, r3, #30
 80047ba:	d1f8      	bne.n	80047ae <memset+0x12>
 80047bc:	2c03      	cmp	r4, #3
 80047be:	d92b      	bls.n	8004818 <memset+0x7c>
 80047c0:	b2cd      	uxtb	r5, r1
 80047c2:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80047c6:	2c0f      	cmp	r4, #15
 80047c8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80047cc:	d916      	bls.n	80047fc <memset+0x60>
 80047ce:	f1a4 0710 	sub.w	r7, r4, #16
 80047d2:	093f      	lsrs	r7, r7, #4
 80047d4:	f103 0620 	add.w	r6, r3, #32
 80047d8:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80047dc:	f103 0210 	add.w	r2, r3, #16
 80047e0:	e942 5504 	strd	r5, r5, [r2, #-16]
 80047e4:	e942 5502 	strd	r5, r5, [r2, #-8]
 80047e8:	3210      	adds	r2, #16
 80047ea:	42b2      	cmp	r2, r6
 80047ec:	d1f8      	bne.n	80047e0 <memset+0x44>
 80047ee:	f004 040f 	and.w	r4, r4, #15
 80047f2:	3701      	adds	r7, #1
 80047f4:	2c03      	cmp	r4, #3
 80047f6:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80047fa:	d90d      	bls.n	8004818 <memset+0x7c>
 80047fc:	461e      	mov	r6, r3
 80047fe:	4622      	mov	r2, r4
 8004800:	3a04      	subs	r2, #4
 8004802:	2a03      	cmp	r2, #3
 8004804:	f846 5b04 	str.w	r5, [r6], #4
 8004808:	d8fa      	bhi.n	8004800 <memset+0x64>
 800480a:	1f22      	subs	r2, r4, #4
 800480c:	f022 0203 	bic.w	r2, r2, #3
 8004810:	3204      	adds	r2, #4
 8004812:	4413      	add	r3, r2
 8004814:	f004 0403 	and.w	r4, r4, #3
 8004818:	b12c      	cbz	r4, 8004826 <memset+0x8a>
 800481a:	b2c9      	uxtb	r1, r1
 800481c:	441c      	add	r4, r3
 800481e:	f803 1b01 	strb.w	r1, [r3], #1
 8004822:	429c      	cmp	r4, r3
 8004824:	d1fb      	bne.n	800481e <memset+0x82>
 8004826:	bcf0      	pop	{r4, r5, r6, r7}
 8004828:	4770      	bx	lr
 800482a:	4614      	mov	r4, r2
 800482c:	4603      	mov	r3, r0
 800482e:	e7c5      	b.n	80047bc <memset+0x20>

08004830 <printf>:
 8004830:	b40f      	push	{r0, r1, r2, r3}
 8004832:	b500      	push	{lr}
 8004834:	4907      	ldr	r1, [pc, #28]	; (8004854 <printf+0x24>)
 8004836:	b083      	sub	sp, #12
 8004838:	ab04      	add	r3, sp, #16
 800483a:	6808      	ldr	r0, [r1, #0]
 800483c:	f853 2b04 	ldr.w	r2, [r3], #4
 8004840:	6881      	ldr	r1, [r0, #8]
 8004842:	9301      	str	r3, [sp, #4]
 8004844:	f000 f860 	bl	8004908 <_vfprintf_r>
 8004848:	b003      	add	sp, #12
 800484a:	f85d eb04 	ldr.w	lr, [sp], #4
 800484e:	b004      	add	sp, #16
 8004850:	4770      	bx	lr
 8004852:	bf00      	nop
 8004854:	20000020 	.word	0x20000020

08004858 <_puts_r>:
 8004858:	b570      	push	{r4, r5, r6, lr}
 800485a:	4605      	mov	r5, r0
 800485c:	b088      	sub	sp, #32
 800485e:	4608      	mov	r0, r1
 8004860:	460c      	mov	r4, r1
 8004862:	f7fb feed 	bl	8000640 <strlen>
 8004866:	4a22      	ldr	r2, [pc, #136]	; (80048f0 <_puts_r+0x98>)
 8004868:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800486a:	9404      	str	r4, [sp, #16]
 800486c:	2601      	movs	r6, #1
 800486e:	1c44      	adds	r4, r0, #1
 8004870:	a904      	add	r1, sp, #16
 8004872:	9206      	str	r2, [sp, #24]
 8004874:	2202      	movs	r2, #2
 8004876:	9403      	str	r4, [sp, #12]
 8004878:	9005      	str	r0, [sp, #20]
 800487a:	68ac      	ldr	r4, [r5, #8]
 800487c:	9607      	str	r6, [sp, #28]
 800487e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8004882:	b31b      	cbz	r3, 80048cc <_puts_r+0x74>
 8004884:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8004886:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800488a:	07ce      	lsls	r6, r1, #31
 800488c:	b29a      	uxth	r2, r3
 800488e:	d401      	bmi.n	8004894 <_puts_r+0x3c>
 8004890:	0590      	lsls	r0, r2, #22
 8004892:	d525      	bpl.n	80048e0 <_puts_r+0x88>
 8004894:	0491      	lsls	r1, r2, #18
 8004896:	d406      	bmi.n	80048a6 <_puts_r+0x4e>
 8004898:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800489a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800489e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80048a2:	81a3      	strh	r3, [r4, #12]
 80048a4:	6662      	str	r2, [r4, #100]	; 0x64
 80048a6:	4628      	mov	r0, r5
 80048a8:	aa01      	add	r2, sp, #4
 80048aa:	4621      	mov	r1, r4
 80048ac:	f003 f860 	bl	8007970 <__sfvwrite_r>
 80048b0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80048b2:	2800      	cmp	r0, #0
 80048b4:	bf0c      	ite	eq
 80048b6:	250a      	moveq	r5, #10
 80048b8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80048bc:	07da      	lsls	r2, r3, #31
 80048be:	d402      	bmi.n	80048c6 <_puts_r+0x6e>
 80048c0:	89a3      	ldrh	r3, [r4, #12]
 80048c2:	059b      	lsls	r3, r3, #22
 80048c4:	d506      	bpl.n	80048d4 <_puts_r+0x7c>
 80048c6:	4628      	mov	r0, r5
 80048c8:	b008      	add	sp, #32
 80048ca:	bd70      	pop	{r4, r5, r6, pc}
 80048cc:	4628      	mov	r0, r5
 80048ce:	f002 feb9 	bl	8007644 <__sinit>
 80048d2:	e7d7      	b.n	8004884 <_puts_r+0x2c>
 80048d4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80048d6:	f003 fa07 	bl	8007ce8 <__retarget_lock_release_recursive>
 80048da:	4628      	mov	r0, r5
 80048dc:	b008      	add	sp, #32
 80048de:	bd70      	pop	{r4, r5, r6, pc}
 80048e0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80048e2:	f003 f9ff 	bl	8007ce4 <__retarget_lock_acquire_recursive>
 80048e6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80048ea:	b29a      	uxth	r2, r3
 80048ec:	e7d2      	b.n	8004894 <_puts_r+0x3c>
 80048ee:	bf00      	nop
 80048f0:	08009604 	.word	0x08009604

080048f4 <puts>:
 80048f4:	4b02      	ldr	r3, [pc, #8]	; (8004900 <puts+0xc>)
 80048f6:	4601      	mov	r1, r0
 80048f8:	6818      	ldr	r0, [r3, #0]
 80048fa:	f7ff bfad 	b.w	8004858 <_puts_r>
 80048fe:	bf00      	nop
 8004900:	20000020 	.word	0x20000020
 8004904:	00000000 	.word	0x00000000

08004908 <_vfprintf_r>:
 8004908:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800490c:	b0d7      	sub	sp, #348	; 0x15c
 800490e:	461c      	mov	r4, r3
 8004910:	4689      	mov	r9, r1
 8004912:	4617      	mov	r7, r2
 8004914:	4605      	mov	r5, r0
 8004916:	9003      	str	r0, [sp, #12]
 8004918:	f003 f9d2 	bl	8007cc0 <_localeconv_r>
 800491c:	6803      	ldr	r3, [r0, #0]
 800491e:	9316      	str	r3, [sp, #88]	; 0x58
 8004920:	4618      	mov	r0, r3
 8004922:	f7fb fe8d 	bl	8000640 <strlen>
 8004926:	9408      	str	r4, [sp, #32]
 8004928:	9015      	str	r0, [sp, #84]	; 0x54
 800492a:	b11d      	cbz	r5, 8004934 <_vfprintf_r+0x2c>
 800492c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800492e:	2b00      	cmp	r3, #0
 8004930:	f000 8107 	beq.w	8004b42 <_vfprintf_r+0x23a>
 8004934:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8004938:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800493c:	07c8      	lsls	r0, r1, #31
 800493e:	b293      	uxth	r3, r2
 8004940:	d402      	bmi.n	8004948 <_vfprintf_r+0x40>
 8004942:	0599      	lsls	r1, r3, #22
 8004944:	f140 811f 	bpl.w	8004b86 <_vfprintf_r+0x27e>
 8004948:	049e      	lsls	r6, r3, #18
 800494a:	d40a      	bmi.n	8004962 <_vfprintf_r+0x5a>
 800494c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8004950:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8004954:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8004958:	f8a9 300c 	strh.w	r3, [r9, #12]
 800495c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8004960:	b29b      	uxth	r3, r3
 8004962:	071d      	lsls	r5, r3, #28
 8004964:	f140 80b2 	bpl.w	8004acc <_vfprintf_r+0x1c4>
 8004968:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800496c:	2a00      	cmp	r2, #0
 800496e:	f000 80ad 	beq.w	8004acc <_vfprintf_r+0x1c4>
 8004972:	f003 021a 	and.w	r2, r3, #26
 8004976:	2a0a      	cmp	r2, #10
 8004978:	f000 80c9 	beq.w	8004b0e <_vfprintf_r+0x206>
 800497c:	2300      	movs	r3, #0
 800497e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8004b98 <_vfprintf_r+0x290>
 8004982:	9310      	str	r3, [sp, #64]	; 0x40
 8004984:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8004988:	9317      	str	r3, [sp, #92]	; 0x5c
 800498a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800498e:	931b      	str	r3, [sp, #108]	; 0x6c
 8004990:	9318      	str	r3, [sp, #96]	; 0x60
 8004992:	9305      	str	r3, [sp, #20]
 8004994:	ab2d      	add	r3, sp, #180	; 0xb4
 8004996:	932a      	str	r3, [sp, #168]	; 0xa8
 8004998:	469b      	mov	fp, r3
 800499a:	783b      	ldrb	r3, [r7, #0]
 800499c:	f8cd 901c 	str.w	r9, [sp, #28]
 80049a0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80049a4:	2b00      	cmp	r3, #0
 80049a6:	f000 8259 	beq.w	8004e5c <_vfprintf_r+0x554>
 80049aa:	2b25      	cmp	r3, #37	; 0x25
 80049ac:	463c      	mov	r4, r7
 80049ae:	d102      	bne.n	80049b6 <_vfprintf_r+0xae>
 80049b0:	e01d      	b.n	80049ee <_vfprintf_r+0xe6>
 80049b2:	2b25      	cmp	r3, #37	; 0x25
 80049b4:	d003      	beq.n	80049be <_vfprintf_r+0xb6>
 80049b6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80049ba:	2b00      	cmp	r3, #0
 80049bc:	d1f9      	bne.n	80049b2 <_vfprintf_r+0xaa>
 80049be:	1be5      	subs	r5, r4, r7
 80049c0:	b18d      	cbz	r5, 80049e6 <_vfprintf_r+0xde>
 80049c2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80049c6:	3301      	adds	r3, #1
 80049c8:	442a      	add	r2, r5
 80049ca:	2b07      	cmp	r3, #7
 80049cc:	f8cb 7000 	str.w	r7, [fp]
 80049d0:	f8cb 5004 	str.w	r5, [fp, #4]
 80049d4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80049d8:	f300 80ca 	bgt.w	8004b70 <_vfprintf_r+0x268>
 80049dc:	f10b 0b08 	add.w	fp, fp, #8
 80049e0:	9b05      	ldr	r3, [sp, #20]
 80049e2:	442b      	add	r3, r5
 80049e4:	9305      	str	r3, [sp, #20]
 80049e6:	7823      	ldrb	r3, [r4, #0]
 80049e8:	2b00      	cmp	r3, #0
 80049ea:	f000 8237 	beq.w	8004e5c <_vfprintf_r+0x554>
 80049ee:	2300      	movs	r3, #0
 80049f0:	7866      	ldrb	r6, [r4, #1]
 80049f2:	9306      	str	r3, [sp, #24]
 80049f4:	4698      	mov	r8, r3
 80049f6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80049fa:	f104 0a01 	add.w	sl, r4, #1
 80049fe:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8004a02:	252b      	movs	r5, #43	; 0x2b
 8004a04:	f10a 0a01 	add.w	sl, sl, #1
 8004a08:	f1a6 0320 	sub.w	r3, r6, #32
 8004a0c:	2b5a      	cmp	r3, #90	; 0x5a
 8004a0e:	f200 842a 	bhi.w	8005266 <_vfprintf_r+0x95e>
 8004a12:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004a16:	03aa      	.short	0x03aa
 8004a18:	04280428 	.word	0x04280428
 8004a1c:	0428029c 	.word	0x0428029c
 8004a20:	04280428 	.word	0x04280428
 8004a24:	042802a7 	.word	0x042802a7
 8004a28:	02c60428 	.word	0x02c60428
 8004a2c:	042802d2 	.word	0x042802d2
 8004a30:	02dc02d7 	.word	0x02dc02d7
 8004a34:	02f60428 	.word	0x02f60428
 8004a38:	026d026d 	.word	0x026d026d
 8004a3c:	026d026d 	.word	0x026d026d
 8004a40:	026d026d 	.word	0x026d026d
 8004a44:	026d026d 	.word	0x026d026d
 8004a48:	0428026d 	.word	0x0428026d
 8004a4c:	04280428 	.word	0x04280428
 8004a50:	04280428 	.word	0x04280428
 8004a54:	04280428 	.word	0x04280428
 8004a58:	042802fb 	.word	0x042802fb
 8004a5c:	03f3033c 	.word	0x03f3033c
 8004a60:	02fb02fb 	.word	0x02fb02fb
 8004a64:	042802fb 	.word	0x042802fb
 8004a68:	04280428 	.word	0x04280428
 8004a6c:	03ee0428 	.word	0x03ee0428
 8004a70:	04280428 	.word	0x04280428
 8004a74:	0428009a 	.word	0x0428009a
 8004a78:	04280428 	.word	0x04280428
 8004a7c:	04280350 	.word	0x04280350
 8004a80:	04280379 	.word	0x04280379
 8004a84:	03900428 	.word	0x03900428
 8004a88:	04280428 	.word	0x04280428
 8004a8c:	04280428 	.word	0x04280428
 8004a90:	04280428 	.word	0x04280428
 8004a94:	04280428 	.word	0x04280428
 8004a98:	042802fb 	.word	0x042802fb
 8004a9c:	00c5033c 	.word	0x00c5033c
 8004aa0:	02fb02fb 	.word	0x02fb02fb
 8004aa4:	03d102fb 	.word	0x03d102fb
 8004aa8:	007000c5 	.word	0x007000c5
 8004aac:	03b50428 	.word	0x03b50428
 8004ab0:	03c20428 	.word	0x03c20428
 8004ab4:	03de009c 	.word	0x03de009c
 8004ab8:	04280070 	.word	0x04280070
 8004abc:	00720350 	.word	0x00720350
 8004ac0:	0428022c 	.word	0x0428022c
 8004ac4:	027c0428 	.word	0x027c0428
 8004ac8:	00720428 	.word	0x00720428
 8004acc:	4649      	mov	r1, r9
 8004ace:	9803      	ldr	r0, [sp, #12]
 8004ad0:	f001 fc9a 	bl	8006408 <__swsetup_r>
 8004ad4:	b1a0      	cbz	r0, 8004b00 <_vfprintf_r+0x1f8>
 8004ad6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8004ada:	07d8      	lsls	r0, r3, #31
 8004adc:	d404      	bmi.n	8004ae8 <_vfprintf_r+0x1e0>
 8004ade:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004ae2:	0599      	lsls	r1, r3, #22
 8004ae4:	f140 83b7 	bpl.w	8005256 <_vfprintf_r+0x94e>
 8004ae8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004aec:	9305      	str	r3, [sp, #20]
 8004aee:	9805      	ldr	r0, [sp, #20]
 8004af0:	b057      	add	sp, #348	; 0x15c
 8004af2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004af6:	f048 0820 	orr.w	r8, r8, #32
 8004afa:	f89a 6000 	ldrb.w	r6, [sl]
 8004afe:	e781      	b.n	8004a04 <_vfprintf_r+0xfc>
 8004b00:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004b04:	f003 021a 	and.w	r2, r3, #26
 8004b08:	2a0a      	cmp	r2, #10
 8004b0a:	f47f af37 	bne.w	800497c <_vfprintf_r+0x74>
 8004b0e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8004b12:	2a00      	cmp	r2, #0
 8004b14:	f6ff af32 	blt.w	800497c <_vfprintf_r+0x74>
 8004b18:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8004b1c:	07d2      	lsls	r2, r2, #31
 8004b1e:	d405      	bmi.n	8004b2c <_vfprintf_r+0x224>
 8004b20:	059b      	lsls	r3, r3, #22
 8004b22:	d403      	bmi.n	8004b2c <_vfprintf_r+0x224>
 8004b24:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004b28:	f003 f8de 	bl	8007ce8 <__retarget_lock_release_recursive>
 8004b2c:	4623      	mov	r3, r4
 8004b2e:	463a      	mov	r2, r7
 8004b30:	4649      	mov	r1, r9
 8004b32:	9803      	ldr	r0, [sp, #12]
 8004b34:	f001 fc26 	bl	8006384 <__sbprintf>
 8004b38:	9005      	str	r0, [sp, #20]
 8004b3a:	9805      	ldr	r0, [sp, #20]
 8004b3c:	b057      	add	sp, #348	; 0x15c
 8004b3e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b42:	9803      	ldr	r0, [sp, #12]
 8004b44:	f002 fd7e 	bl	8007644 <__sinit>
 8004b48:	e6f4      	b.n	8004934 <_vfprintf_r+0x2c>
 8004b4a:	f048 0810 	orr.w	r8, r8, #16
 8004b4e:	f018 0f20 	tst.w	r8, #32
 8004b52:	f000 836c 	beq.w	800522e <_vfprintf_r+0x926>
 8004b56:	9c08      	ldr	r4, [sp, #32]
 8004b58:	3407      	adds	r4, #7
 8004b5a:	f024 0307 	bic.w	r3, r4, #7
 8004b5e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8004b62:	f103 0208 	add.w	r2, r3, #8
 8004b66:	9208      	str	r2, [sp, #32]
 8004b68:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8004b6c:	2200      	movs	r2, #0
 8004b6e:	e18c      	b.n	8004e8a <_vfprintf_r+0x582>
 8004b70:	aa2a      	add	r2, sp, #168	; 0xa8
 8004b72:	9907      	ldr	r1, [sp, #28]
 8004b74:	9803      	ldr	r0, [sp, #12]
 8004b76:	f004 f9f5 	bl	8008f64 <__sprint_r>
 8004b7a:	2800      	cmp	r0, #0
 8004b7c:	f041 8376 	bne.w	800626c <_vfprintf_r+0x1964>
 8004b80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004b84:	e72c      	b.n	80049e0 <_vfprintf_r+0xd8>
 8004b86:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004b8a:	f003 f8ab 	bl	8007ce4 <__retarget_lock_acquire_recursive>
 8004b8e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8004b92:	b293      	uxth	r3, r2
 8004b94:	e6d8      	b.n	8004948 <_vfprintf_r+0x40>
 8004b96:	bf00      	nop
	...
 8004ba0:	4643      	mov	r3, r8
 8004ba2:	069f      	lsls	r7, r3, #26
 8004ba4:	f140 832f 	bpl.w	8005206 <_vfprintf_r+0x8fe>
 8004ba8:	9c08      	ldr	r4, [sp, #32]
 8004baa:	3407      	adds	r4, #7
 8004bac:	f024 0407 	bic.w	r4, r4, #7
 8004bb0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8004bb4:	f104 0208 	add.w	r2, r4, #8
 8004bb8:	9208      	str	r2, [sp, #32]
 8004bba:	4604      	mov	r4, r0
 8004bbc:	460d      	mov	r5, r1
 8004bbe:	2800      	cmp	r0, #0
 8004bc0:	f171 0200 	sbcs.w	r2, r1, #0
 8004bc4:	da05      	bge.n	8004bd2 <_vfprintf_r+0x2ca>
 8004bc6:	222d      	movs	r2, #45	; 0x2d
 8004bc8:	4264      	negs	r4, r4
 8004bca:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8004bce:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004bd2:	aa56      	add	r2, sp, #344	; 0x158
 8004bd4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004bd8:	9204      	str	r2, [sp, #16]
 8004bda:	f000 84b2 	beq.w	8005542 <_vfprintf_r+0xc3a>
 8004bde:	2201      	movs	r2, #1
 8004be0:	ea54 0105 	orrs.w	r1, r4, r5
 8004be4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8004be8:	f040 8159 	bne.w	8004e9e <_vfprintf_r+0x596>
 8004bec:	f1b9 0f00 	cmp.w	r9, #0
 8004bf0:	f040 8619 	bne.w	8005826 <_vfprintf_r+0xf1e>
 8004bf4:	2a00      	cmp	r2, #0
 8004bf6:	f040 8508 	bne.w	800560a <_vfprintf_r+0xd02>
 8004bfa:	f013 0301 	ands.w	r3, r3, #1
 8004bfe:	af56      	add	r7, sp, #344	; 0x158
 8004c00:	9309      	str	r3, [sp, #36]	; 0x24
 8004c02:	d002      	beq.n	8004c0a <_vfprintf_r+0x302>
 8004c04:	2330      	movs	r3, #48	; 0x30
 8004c06:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8004c0a:	2300      	movs	r3, #0
 8004c0c:	930a      	str	r3, [sp, #40]	; 0x28
 8004c0e:	930f      	str	r3, [sp, #60]	; 0x3c
 8004c10:	9314      	str	r3, [sp, #80]	; 0x50
 8004c12:	9311      	str	r3, [sp, #68]	; 0x44
 8004c14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c16:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004c1a:	454b      	cmp	r3, r9
 8004c1c:	bfb8      	it	lt
 8004c1e:	464b      	movlt	r3, r9
 8004c20:	9304      	str	r3, [sp, #16]
 8004c22:	b112      	cbz	r2, 8004c2a <_vfprintf_r+0x322>
 8004c24:	9b04      	ldr	r3, [sp, #16]
 8004c26:	3301      	adds	r3, #1
 8004c28:	9304      	str	r3, [sp, #16]
 8004c2a:	f018 0302 	ands.w	r3, r8, #2
 8004c2e:	930b      	str	r3, [sp, #44]	; 0x2c
 8004c30:	d002      	beq.n	8004c38 <_vfprintf_r+0x330>
 8004c32:	9b04      	ldr	r3, [sp, #16]
 8004c34:	3302      	adds	r3, #2
 8004c36:	9304      	str	r3, [sp, #16]
 8004c38:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8004c3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004c3e:	930e      	str	r3, [sp, #56]	; 0x38
 8004c40:	d13f      	bne.n	8004cc2 <_vfprintf_r+0x3ba>
 8004c42:	9b06      	ldr	r3, [sp, #24]
 8004c44:	9904      	ldr	r1, [sp, #16]
 8004c46:	1a5d      	subs	r5, r3, r1
 8004c48:	2d00      	cmp	r5, #0
 8004c4a:	dd3a      	ble.n	8004cc2 <_vfprintf_r+0x3ba>
 8004c4c:	2d10      	cmp	r5, #16
 8004c4e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004c50:	dd29      	ble.n	8004ca6 <_vfprintf_r+0x39e>
 8004c52:	4659      	mov	r1, fp
 8004c54:	4620      	mov	r0, r4
 8004c56:	9620      	str	r6, [sp, #128]	; 0x80
 8004c58:	2310      	movs	r3, #16
 8004c5a:	9c03      	ldr	r4, [sp, #12]
 8004c5c:	9e07      	ldr	r6, [sp, #28]
 8004c5e:	46bb      	mov	fp, r7
 8004c60:	e004      	b.n	8004c6c <_vfprintf_r+0x364>
 8004c62:	3d10      	subs	r5, #16
 8004c64:	2d10      	cmp	r5, #16
 8004c66:	f101 0108 	add.w	r1, r1, #8
 8004c6a:	dd18      	ble.n	8004c9e <_vfprintf_r+0x396>
 8004c6c:	3201      	adds	r2, #1
 8004c6e:	4fba      	ldr	r7, [pc, #744]	; (8004f58 <_vfprintf_r+0x650>)
 8004c70:	3010      	adds	r0, #16
 8004c72:	2a07      	cmp	r2, #7
 8004c74:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8004c78:	e9c1 7300 	strd	r7, r3, [r1]
 8004c7c:	ddf1      	ble.n	8004c62 <_vfprintf_r+0x35a>
 8004c7e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004c80:	4631      	mov	r1, r6
 8004c82:	4620      	mov	r0, r4
 8004c84:	930c      	str	r3, [sp, #48]	; 0x30
 8004c86:	f004 f96d 	bl	8008f64 <__sprint_r>
 8004c8a:	2800      	cmp	r0, #0
 8004c8c:	f040 843d 	bne.w	800550a <_vfprintf_r+0xc02>
 8004c90:	3d10      	subs	r5, #16
 8004c92:	2d10      	cmp	r5, #16
 8004c94:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8004c98:	a92d      	add	r1, sp, #180	; 0xb4
 8004c9a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004c9c:	dce6      	bgt.n	8004c6c <_vfprintf_r+0x364>
 8004c9e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8004ca0:	465f      	mov	r7, fp
 8004ca2:	4604      	mov	r4, r0
 8004ca4:	468b      	mov	fp, r1
 8004ca6:	3201      	adds	r2, #1
 8004ca8:	4bab      	ldr	r3, [pc, #684]	; (8004f58 <_vfprintf_r+0x650>)
 8004caa:	442c      	add	r4, r5
 8004cac:	2a07      	cmp	r2, #7
 8004cae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004cb2:	e9cb 3500 	strd	r3, r5, [fp]
 8004cb6:	f300 84ff 	bgt.w	80056b8 <_vfprintf_r+0xdb0>
 8004cba:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004cbe:	f10b 0b08 	add.w	fp, fp, #8
 8004cc2:	b172      	cbz	r2, 8004ce2 <_vfprintf_r+0x3da>
 8004cc4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004cc6:	3201      	adds	r2, #1
 8004cc8:	3401      	adds	r4, #1
 8004cca:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8004cce:	2101      	movs	r1, #1
 8004cd0:	2a07      	cmp	r2, #7
 8004cd2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004cd6:	e9cb 0100 	strd	r0, r1, [fp]
 8004cda:	f300 8418 	bgt.w	800550e <_vfprintf_r+0xc06>
 8004cde:	f10b 0b08 	add.w	fp, fp, #8
 8004ce2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004ce4:	b16b      	cbz	r3, 8004d02 <_vfprintf_r+0x3fa>
 8004ce6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004ce8:	3301      	adds	r3, #1
 8004cea:	3402      	adds	r4, #2
 8004cec:	a923      	add	r1, sp, #140	; 0x8c
 8004cee:	2202      	movs	r2, #2
 8004cf0:	2b07      	cmp	r3, #7
 8004cf2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004cf6:	e9cb 1200 	strd	r1, r2, [fp]
 8004cfa:	f300 8415 	bgt.w	8005528 <_vfprintf_r+0xc20>
 8004cfe:	f10b 0b08 	add.w	fp, fp, #8
 8004d02:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004d04:	2b80      	cmp	r3, #128	; 0x80
 8004d06:	f000 8331 	beq.w	800536c <_vfprintf_r+0xa64>
 8004d0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d0c:	eba9 0503 	sub.w	r5, r9, r3
 8004d10:	2d00      	cmp	r5, #0
 8004d12:	dd37      	ble.n	8004d84 <_vfprintf_r+0x47c>
 8004d14:	2d10      	cmp	r5, #16
 8004d16:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004d18:	4b90      	ldr	r3, [pc, #576]	; (8004f5c <_vfprintf_r+0x654>)
 8004d1a:	dd28      	ble.n	8004d6e <_vfprintf_r+0x466>
 8004d1c:	4659      	mov	r1, fp
 8004d1e:	4620      	mov	r0, r4
 8004d20:	46bb      	mov	fp, r7
 8004d22:	f04f 0910 	mov.w	r9, #16
 8004d26:	4637      	mov	r7, r6
 8004d28:	461c      	mov	r4, r3
 8004d2a:	9e07      	ldr	r6, [sp, #28]
 8004d2c:	e004      	b.n	8004d38 <_vfprintf_r+0x430>
 8004d2e:	3d10      	subs	r5, #16
 8004d30:	2d10      	cmp	r5, #16
 8004d32:	f101 0108 	add.w	r1, r1, #8
 8004d36:	dd15      	ble.n	8004d64 <_vfprintf_r+0x45c>
 8004d38:	3201      	adds	r2, #1
 8004d3a:	3010      	adds	r0, #16
 8004d3c:	2a07      	cmp	r2, #7
 8004d3e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8004d42:	e9c1 4900 	strd	r4, r9, [r1]
 8004d46:	ddf2      	ble.n	8004d2e <_vfprintf_r+0x426>
 8004d48:	aa2a      	add	r2, sp, #168	; 0xa8
 8004d4a:	4631      	mov	r1, r6
 8004d4c:	9803      	ldr	r0, [sp, #12]
 8004d4e:	f004 f909 	bl	8008f64 <__sprint_r>
 8004d52:	2800      	cmp	r0, #0
 8004d54:	f040 83d9 	bne.w	800550a <_vfprintf_r+0xc02>
 8004d58:	3d10      	subs	r5, #16
 8004d5a:	2d10      	cmp	r5, #16
 8004d5c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8004d60:	a92d      	add	r1, sp, #180	; 0xb4
 8004d62:	dce9      	bgt.n	8004d38 <_vfprintf_r+0x430>
 8004d64:	463e      	mov	r6, r7
 8004d66:	4623      	mov	r3, r4
 8004d68:	465f      	mov	r7, fp
 8004d6a:	4604      	mov	r4, r0
 8004d6c:	468b      	mov	fp, r1
 8004d6e:	3201      	adds	r2, #1
 8004d70:	442c      	add	r4, r5
 8004d72:	2a07      	cmp	r2, #7
 8004d74:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004d78:	e9cb 3500 	strd	r3, r5, [fp]
 8004d7c:	f300 83ef 	bgt.w	800555e <_vfprintf_r+0xc56>
 8004d80:	f10b 0b08 	add.w	fp, fp, #8
 8004d84:	f418 7f80 	tst.w	r8, #256	; 0x100
 8004d88:	f040 8280 	bne.w	800528c <_vfprintf_r+0x984>
 8004d8c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004d8e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004d90:	f8cb 7000 	str.w	r7, [fp]
 8004d94:	3301      	adds	r3, #1
 8004d96:	4414      	add	r4, r2
 8004d98:	2b07      	cmp	r3, #7
 8004d9a:	942c      	str	r4, [sp, #176]	; 0xb0
 8004d9c:	f8cb 2004 	str.w	r2, [fp, #4]
 8004da0:	932b      	str	r3, [sp, #172]	; 0xac
 8004da2:	f300 8392 	bgt.w	80054ca <_vfprintf_r+0xbc2>
 8004da6:	f10b 0b08 	add.w	fp, fp, #8
 8004daa:	f018 0f04 	tst.w	r8, #4
 8004dae:	d03b      	beq.n	8004e28 <_vfprintf_r+0x520>
 8004db0:	9b06      	ldr	r3, [sp, #24]
 8004db2:	9a04      	ldr	r2, [sp, #16]
 8004db4:	1a9d      	subs	r5, r3, r2
 8004db6:	2d00      	cmp	r5, #0
 8004db8:	dd36      	ble.n	8004e28 <_vfprintf_r+0x520>
 8004dba:	2d10      	cmp	r5, #16
 8004dbc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004dbe:	dd21      	ble.n	8004e04 <_vfprintf_r+0x4fc>
 8004dc0:	2610      	movs	r6, #16
 8004dc2:	9f03      	ldr	r7, [sp, #12]
 8004dc4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8004dc8:	e004      	b.n	8004dd4 <_vfprintf_r+0x4cc>
 8004dca:	3d10      	subs	r5, #16
 8004dcc:	2d10      	cmp	r5, #16
 8004dce:	f10b 0b08 	add.w	fp, fp, #8
 8004dd2:	dd17      	ble.n	8004e04 <_vfprintf_r+0x4fc>
 8004dd4:	3301      	adds	r3, #1
 8004dd6:	4a60      	ldr	r2, [pc, #384]	; (8004f58 <_vfprintf_r+0x650>)
 8004dd8:	3410      	adds	r4, #16
 8004dda:	2b07      	cmp	r3, #7
 8004ddc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004de0:	e9cb 2600 	strd	r2, r6, [fp]
 8004de4:	ddf1      	ble.n	8004dca <_vfprintf_r+0x4c2>
 8004de6:	aa2a      	add	r2, sp, #168	; 0xa8
 8004de8:	4641      	mov	r1, r8
 8004dea:	4638      	mov	r0, r7
 8004dec:	f004 f8ba 	bl	8008f64 <__sprint_r>
 8004df0:	2800      	cmp	r0, #0
 8004df2:	f040 856c 	bne.w	80058ce <_vfprintf_r+0xfc6>
 8004df6:	3d10      	subs	r5, #16
 8004df8:	2d10      	cmp	r5, #16
 8004dfa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8004dfe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004e02:	dce7      	bgt.n	8004dd4 <_vfprintf_r+0x4cc>
 8004e04:	3301      	adds	r3, #1
 8004e06:	4a54      	ldr	r2, [pc, #336]	; (8004f58 <_vfprintf_r+0x650>)
 8004e08:	442c      	add	r4, r5
 8004e0a:	2b07      	cmp	r3, #7
 8004e0c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004e10:	e9cb 2500 	strd	r2, r5, [fp]
 8004e14:	dd08      	ble.n	8004e28 <_vfprintf_r+0x520>
 8004e16:	aa2a      	add	r2, sp, #168	; 0xa8
 8004e18:	9907      	ldr	r1, [sp, #28]
 8004e1a:	9803      	ldr	r0, [sp, #12]
 8004e1c:	f004 f8a2 	bl	8008f64 <__sprint_r>
 8004e20:	2800      	cmp	r0, #0
 8004e22:	f040 82e9 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8004e26:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004e28:	9904      	ldr	r1, [sp, #16]
 8004e2a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8004e2e:	428a      	cmp	r2, r1
 8004e30:	bfac      	ite	ge
 8004e32:	189b      	addge	r3, r3, r2
 8004e34:	185b      	addlt	r3, r3, r1
 8004e36:	9305      	str	r3, [sp, #20]
 8004e38:	2c00      	cmp	r4, #0
 8004e3a:	f040 82d5 	bne.w	80053e8 <_vfprintf_r+0xae0>
 8004e3e:	2300      	movs	r3, #0
 8004e40:	932b      	str	r3, [sp, #172]	; 0xac
 8004e42:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e44:	b11b      	cbz	r3, 8004e4e <_vfprintf_r+0x546>
 8004e46:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004e48:	9803      	ldr	r0, [sp, #12]
 8004e4a:	f002 fc9d 	bl	8007788 <_free_r>
 8004e4e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004e52:	4657      	mov	r7, sl
 8004e54:	783b      	ldrb	r3, [r7, #0]
 8004e56:	2b00      	cmp	r3, #0
 8004e58:	f47f ada7 	bne.w	80049aa <_vfprintf_r+0xa2>
 8004e5c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8004e5e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004e62:	2b00      	cmp	r3, #0
 8004e64:	f041 80e7 	bne.w	8006036 <_vfprintf_r+0x172e>
 8004e68:	2300      	movs	r3, #0
 8004e6a:	932b      	str	r3, [sp, #172]	; 0xac
 8004e6c:	e2cb      	b.n	8005406 <_vfprintf_r+0xafe>
 8004e6e:	4643      	mov	r3, r8
 8004e70:	069a      	lsls	r2, r3, #26
 8004e72:	f140 814e 	bpl.w	8005112 <_vfprintf_r+0x80a>
 8004e76:	9c08      	ldr	r4, [sp, #32]
 8004e78:	3407      	adds	r4, #7
 8004e7a:	f024 0207 	bic.w	r2, r4, #7
 8004e7e:	f102 0108 	add.w	r1, r2, #8
 8004e82:	e9d2 4500 	ldrd	r4, r5, [r2]
 8004e86:	9108      	str	r1, [sp, #32]
 8004e88:	2201      	movs	r2, #1
 8004e8a:	2100      	movs	r1, #0
 8004e8c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8004e90:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004e94:	a956      	add	r1, sp, #344	; 0x158
 8004e96:	9104      	str	r1, [sp, #16]
 8004e98:	f47f aea2 	bne.w	8004be0 <_vfprintf_r+0x2d8>
 8004e9c:	4698      	mov	r8, r3
 8004e9e:	2a01      	cmp	r2, #1
 8004ea0:	f000 8350 	beq.w	8005544 <_vfprintf_r+0xc3c>
 8004ea4:	2a02      	cmp	r2, #2
 8004ea6:	f000 831b 	beq.w	80054e0 <_vfprintf_r+0xbd8>
 8004eaa:	a956      	add	r1, sp, #344	; 0x158
 8004eac:	e000      	b.n	8004eb0 <_vfprintf_r+0x5a8>
 8004eae:	4639      	mov	r1, r7
 8004eb0:	08e2      	lsrs	r2, r4, #3
 8004eb2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8004eb6:	08e8      	lsrs	r0, r5, #3
 8004eb8:	f004 0307 	and.w	r3, r4, #7
 8004ebc:	4605      	mov	r5, r0
 8004ebe:	4614      	mov	r4, r2
 8004ec0:	3330      	adds	r3, #48	; 0x30
 8004ec2:	ea54 0205 	orrs.w	r2, r4, r5
 8004ec6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8004eca:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8004ece:	d1ee      	bne.n	8004eae <_vfprintf_r+0x5a6>
 8004ed0:	f018 0f01 	tst.w	r8, #1
 8004ed4:	f000 8314 	beq.w	8005500 <_vfprintf_r+0xbf8>
 8004ed8:	2b30      	cmp	r3, #48	; 0x30
 8004eda:	f000 8311 	beq.w	8005500 <_vfprintf_r+0xbf8>
 8004ede:	9a04      	ldr	r2, [sp, #16]
 8004ee0:	3902      	subs	r1, #2
 8004ee2:	2330      	movs	r3, #48	; 0x30
 8004ee4:	1a52      	subs	r2, r2, r1
 8004ee6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8004eea:	9209      	str	r2, [sp, #36]	; 0x24
 8004eec:	460f      	mov	r7, r1
 8004eee:	e68c      	b.n	8004c0a <_vfprintf_r+0x302>
 8004ef0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004ef4:	2200      	movs	r2, #0
 8004ef6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8004efa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8004efe:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8004f02:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004f06:	2b09      	cmp	r3, #9
 8004f08:	d9f5      	bls.n	8004ef6 <_vfprintf_r+0x5ee>
 8004f0a:	9206      	str	r2, [sp, #24]
 8004f0c:	e57c      	b.n	8004a08 <_vfprintf_r+0x100>
 8004f0e:	4b14      	ldr	r3, [pc, #80]	; (8004f60 <_vfprintf_r+0x658>)
 8004f10:	9317      	str	r3, [sp, #92]	; 0x5c
 8004f12:	f018 0f20 	tst.w	r8, #32
 8004f16:	f000 8114 	beq.w	8005142 <_vfprintf_r+0x83a>
 8004f1a:	9c08      	ldr	r4, [sp, #32]
 8004f1c:	3407      	adds	r4, #7
 8004f1e:	f024 0307 	bic.w	r3, r4, #7
 8004f22:	e9d3 4500 	ldrd	r4, r5, [r3]
 8004f26:	f103 0208 	add.w	r2, r3, #8
 8004f2a:	9208      	str	r2, [sp, #32]
 8004f2c:	f018 0f01 	tst.w	r8, #1
 8004f30:	d009      	beq.n	8004f46 <_vfprintf_r+0x63e>
 8004f32:	ea54 0305 	orrs.w	r3, r4, r5
 8004f36:	d006      	beq.n	8004f46 <_vfprintf_r+0x63e>
 8004f38:	2330      	movs	r3, #48	; 0x30
 8004f3a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8004f3e:	f048 0802 	orr.w	r8, r8, #2
 8004f42:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004f46:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8004f4a:	2202      	movs	r2, #2
 8004f4c:	e79d      	b.n	8004e8a <_vfprintf_r+0x582>
 8004f4e:	f048 0801 	orr.w	r8, r8, #1
 8004f52:	f89a 6000 	ldrb.w	r6, [sl]
 8004f56:	e555      	b.n	8004a04 <_vfprintf_r+0xfc>
 8004f58:	0800964c 	.word	0x0800964c
 8004f5c:	0800965c 	.word	0x0800965c
 8004f60:	08009618 	.word	0x08009618
 8004f64:	9e03      	ldr	r6, [sp, #12]
 8004f66:	4630      	mov	r0, r6
 8004f68:	f002 feaa 	bl	8007cc0 <_localeconv_r>
 8004f6c:	6843      	ldr	r3, [r0, #4]
 8004f6e:	9318      	str	r3, [sp, #96]	; 0x60
 8004f70:	4618      	mov	r0, r3
 8004f72:	f7fb fb65 	bl	8000640 <strlen>
 8004f76:	901b      	str	r0, [sp, #108]	; 0x6c
 8004f78:	4604      	mov	r4, r0
 8004f7a:	4630      	mov	r0, r6
 8004f7c:	f002 fea0 	bl	8007cc0 <_localeconv_r>
 8004f80:	6883      	ldr	r3, [r0, #8]
 8004f82:	931a      	str	r3, [sp, #104]	; 0x68
 8004f84:	2c00      	cmp	r4, #0
 8004f86:	f43f adb8 	beq.w	8004afa <_vfprintf_r+0x1f2>
 8004f8a:	f89a 6000 	ldrb.w	r6, [sl]
 8004f8e:	2b00      	cmp	r3, #0
 8004f90:	f43f ad38 	beq.w	8004a04 <_vfprintf_r+0xfc>
 8004f94:	781b      	ldrb	r3, [r3, #0]
 8004f96:	2b00      	cmp	r3, #0
 8004f98:	f43f ad34 	beq.w	8004a04 <_vfprintf_r+0xfc>
 8004f9c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8004fa0:	e530      	b.n	8004a04 <_vfprintf_r+0xfc>
 8004fa2:	9b08      	ldr	r3, [sp, #32]
 8004fa4:	f89a 6000 	ldrb.w	r6, [sl]
 8004fa8:	681a      	ldr	r2, [r3, #0]
 8004faa:	9206      	str	r2, [sp, #24]
 8004fac:	2a00      	cmp	r2, #0
 8004fae:	f103 0304 	add.w	r3, r3, #4
 8004fb2:	f2c0 8697 	blt.w	8005ce4 <_vfprintf_r+0x13dc>
 8004fb6:	9308      	str	r3, [sp, #32]
 8004fb8:	e524      	b.n	8004a04 <_vfprintf_r+0xfc>
 8004fba:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8004fbe:	f89a 6000 	ldrb.w	r6, [sl]
 8004fc2:	e51f      	b.n	8004a04 <_vfprintf_r+0xfc>
 8004fc4:	f89a 6000 	ldrb.w	r6, [sl]
 8004fc8:	f048 0804 	orr.w	r8, r8, #4
 8004fcc:	e51a      	b.n	8004a04 <_vfprintf_r+0xfc>
 8004fce:	f89a 6000 	ldrb.w	r6, [sl]
 8004fd2:	2e2a      	cmp	r6, #42	; 0x2a
 8004fd4:	f10a 0201 	add.w	r2, sl, #1
 8004fd8:	f001 81b0 	beq.w	800633c <_vfprintf_r+0x1a34>
 8004fdc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004fe0:	2b09      	cmp	r3, #9
 8004fe2:	4692      	mov	sl, r2
 8004fe4:	f04f 0900 	mov.w	r9, #0
 8004fe8:	f63f ad0e 	bhi.w	8004a08 <_vfprintf_r+0x100>
 8004fec:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8004ff0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8004ff4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8004ff8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004ffc:	2b09      	cmp	r3, #9
 8004ffe:	d9f5      	bls.n	8004fec <_vfprintf_r+0x6e4>
 8005000:	e502      	b.n	8004a08 <_vfprintf_r+0x100>
 8005002:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8005006:	f89a 6000 	ldrb.w	r6, [sl]
 800500a:	e4fb      	b.n	8004a04 <_vfprintf_r+0xfc>
 800500c:	9c08      	ldr	r4, [sp, #32]
 800500e:	3407      	adds	r4, #7
 8005010:	f024 0407 	bic.w	r4, r4, #7
 8005014:	ed94 7b00 	vldr	d7, [r4]
 8005018:	ec52 1b17 	vmov	r1, r2, d7
 800501c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8005020:	931d      	str	r3, [sp, #116]	; 0x74
 8005022:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8005026:	3408      	adds	r4, #8
 8005028:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800502c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005030:	4bba      	ldr	r3, [pc, #744]	; (800531c <_vfprintf_r+0xa14>)
 8005032:	9408      	str	r4, [sp, #32]
 8005034:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005038:	f7fc f818 	bl	800106c <__aeabi_dcmpun>
 800503c:	2800      	cmp	r0, #0
 800503e:	f040 846f 	bne.w	8005920 <_vfprintf_r+0x1018>
 8005042:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005046:	4bb5      	ldr	r3, [pc, #724]	; (800531c <_vfprintf_r+0xa14>)
 8005048:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800504c:	f7fb fff0 	bl	8001030 <__aeabi_dcmple>
 8005050:	2800      	cmp	r0, #0
 8005052:	f040 8465 	bne.w	8005920 <_vfprintf_r+0x1018>
 8005056:	2200      	movs	r2, #0
 8005058:	2300      	movs	r3, #0
 800505a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800505e:	f7fb ffdd 	bl	800101c <__aeabi_dcmplt>
 8005062:	2800      	cmp	r0, #0
 8005064:	f040 855b 	bne.w	8005b1e <_vfprintf_r+0x1216>
 8005068:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800506c:	4fac      	ldr	r7, [pc, #688]	; (8005320 <_vfprintf_r+0xa18>)
 800506e:	4bad      	ldr	r3, [pc, #692]	; (8005324 <_vfprintf_r+0xa1c>)
 8005070:	2000      	movs	r0, #0
 8005072:	2103      	movs	r1, #3
 8005074:	9104      	str	r1, [sp, #16]
 8005076:	900a      	str	r0, [sp, #40]	; 0x28
 8005078:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800507c:	2e47      	cmp	r6, #71	; 0x47
 800507e:	bfd8      	it	le
 8005080:	461f      	movle	r7, r3
 8005082:	9109      	str	r1, [sp, #36]	; 0x24
 8005084:	4681      	mov	r9, r0
 8005086:	900f      	str	r0, [sp, #60]	; 0x3c
 8005088:	9014      	str	r0, [sp, #80]	; 0x50
 800508a:	9011      	str	r0, [sp, #68]	; 0x44
 800508c:	e5c9      	b.n	8004c22 <_vfprintf_r+0x31a>
 800508e:	9808      	ldr	r0, [sp, #32]
 8005090:	2300      	movs	r3, #0
 8005092:	6801      	ldr	r1, [r0, #0]
 8005094:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005098:	461a      	mov	r2, r3
 800509a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800509e:	2301      	movs	r3, #1
 80050a0:	1d01      	adds	r1, r0, #4
 80050a2:	9304      	str	r3, [sp, #16]
 80050a4:	920a      	str	r2, [sp, #40]	; 0x28
 80050a6:	4691      	mov	r9, r2
 80050a8:	920f      	str	r2, [sp, #60]	; 0x3c
 80050aa:	9214      	str	r2, [sp, #80]	; 0x50
 80050ac:	9211      	str	r2, [sp, #68]	; 0x44
 80050ae:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80050b2:	af3d      	add	r7, sp, #244	; 0xf4
 80050b4:	e5b9      	b.n	8004c2a <_vfprintf_r+0x322>
 80050b6:	9b08      	ldr	r3, [sp, #32]
 80050b8:	681f      	ldr	r7, [r3, #0]
 80050ba:	2500      	movs	r5, #0
 80050bc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80050c0:	1d1c      	adds	r4, r3, #4
 80050c2:	2f00      	cmp	r7, #0
 80050c4:	f000 8639 	beq.w	8005d3a <_vfprintf_r+0x1432>
 80050c8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80050cc:	f000 8711 	beq.w	8005ef2 <_vfprintf_r+0x15ea>
 80050d0:	464a      	mov	r2, r9
 80050d2:	4629      	mov	r1, r5
 80050d4:	4638      	mov	r0, r7
 80050d6:	f7fb fb23 	bl	8000720 <memchr>
 80050da:	900a      	str	r0, [sp, #40]	; 0x28
 80050dc:	2800      	cmp	r0, #0
 80050de:	f000 85e7 	beq.w	8005cb0 <_vfprintf_r+0x13a8>
 80050e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80050e4:	1bdb      	subs	r3, r3, r7
 80050e6:	9309      	str	r3, [sp, #36]	; 0x24
 80050e8:	46a9      	mov	r9, r5
 80050ea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80050ee:	9408      	str	r4, [sp, #32]
 80050f0:	9304      	str	r3, [sp, #16]
 80050f2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80050f6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80050fa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80050fe:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8005102:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005106:	e58c      	b.n	8004c22 <_vfprintf_r+0x31a>
 8005108:	f048 0310 	orr.w	r3, r8, #16
 800510c:	069a      	lsls	r2, r3, #26
 800510e:	f53f aeb2 	bmi.w	8004e76 <_vfprintf_r+0x56e>
 8005112:	9a08      	ldr	r2, [sp, #32]
 8005114:	06df      	lsls	r7, r3, #27
 8005116:	f102 0104 	add.w	r1, r2, #4
 800511a:	f100 837e 	bmi.w	800581a <_vfprintf_r+0xf12>
 800511e:	065d      	lsls	r5, r3, #25
 8005120:	9a08      	ldr	r2, [sp, #32]
 8005122:	f100 84e4 	bmi.w	8005aee <_vfprintf_r+0x11e6>
 8005126:	059c      	lsls	r4, r3, #22
 8005128:	f140 8377 	bpl.w	800581a <_vfprintf_r+0xf12>
 800512c:	7814      	ldrb	r4, [r2, #0]
 800512e:	9108      	str	r1, [sp, #32]
 8005130:	2500      	movs	r5, #0
 8005132:	2201      	movs	r2, #1
 8005134:	e6a9      	b.n	8004e8a <_vfprintf_r+0x582>
 8005136:	4b7c      	ldr	r3, [pc, #496]	; (8005328 <_vfprintf_r+0xa20>)
 8005138:	9317      	str	r3, [sp, #92]	; 0x5c
 800513a:	f018 0f20 	tst.w	r8, #32
 800513e:	f47f aeec 	bne.w	8004f1a <_vfprintf_r+0x612>
 8005142:	9a08      	ldr	r2, [sp, #32]
 8005144:	f018 0f10 	tst.w	r8, #16
 8005148:	f102 0304 	add.w	r3, r2, #4
 800514c:	f040 8354 	bne.w	80057f8 <_vfprintf_r+0xef0>
 8005150:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005154:	9a08      	ldr	r2, [sp, #32]
 8005156:	f040 84d0 	bne.w	8005afa <_vfprintf_r+0x11f2>
 800515a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800515e:	f000 834b 	beq.w	80057f8 <_vfprintf_r+0xef0>
 8005162:	7814      	ldrb	r4, [r2, #0]
 8005164:	9308      	str	r3, [sp, #32]
 8005166:	2500      	movs	r5, #0
 8005168:	e6e0      	b.n	8004f2c <_vfprintf_r+0x624>
 800516a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800516e:	f89a 6000 	ldrb.w	r6, [sl]
 8005172:	2b00      	cmp	r3, #0
 8005174:	f47f ac46 	bne.w	8004a04 <_vfprintf_r+0xfc>
 8005178:	2320      	movs	r3, #32
 800517a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800517e:	e441      	b.n	8004a04 <_vfprintf_r+0xfc>
 8005180:	f89a 6000 	ldrb.w	r6, [sl]
 8005184:	2e6c      	cmp	r6, #108	; 0x6c
 8005186:	bf03      	ittte	eq
 8005188:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800518c:	f048 0820 	orreq.w	r8, r8, #32
 8005190:	f10a 0a01 	addeq.w	sl, sl, #1
 8005194:	f048 0810 	orrne.w	r8, r8, #16
 8005198:	e434      	b.n	8004a04 <_vfprintf_r+0xfc>
 800519a:	9a08      	ldr	r2, [sp, #32]
 800519c:	f018 0f20 	tst.w	r8, #32
 80051a0:	f852 3b04 	ldr.w	r3, [r2], #4
 80051a4:	9208      	str	r2, [sp, #32]
 80051a6:	f000 83a1 	beq.w	80058ec <_vfprintf_r+0xfe4>
 80051aa:	9a05      	ldr	r2, [sp, #20]
 80051ac:	4610      	mov	r0, r2
 80051ae:	17d1      	asrs	r1, r2, #31
 80051b0:	e9c3 0100 	strd	r0, r1, [r3]
 80051b4:	4657      	mov	r7, sl
 80051b6:	e64d      	b.n	8004e54 <_vfprintf_r+0x54c>
 80051b8:	f89a 6000 	ldrb.w	r6, [sl]
 80051bc:	2e68      	cmp	r6, #104	; 0x68
 80051be:	bf03      	ittte	eq
 80051c0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80051c4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80051c8:	f10a 0a01 	addeq.w	sl, sl, #1
 80051cc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80051d0:	e418      	b.n	8004a04 <_vfprintf_r+0xfc>
 80051d2:	9908      	ldr	r1, [sp, #32]
 80051d4:	4b55      	ldr	r3, [pc, #340]	; (800532c <_vfprintf_r+0xa24>)
 80051d6:	680c      	ldr	r4, [r1, #0]
 80051d8:	9317      	str	r3, [sp, #92]	; 0x5c
 80051da:	f647 0230 	movw	r2, #30768	; 0x7830
 80051de:	3104      	adds	r1, #4
 80051e0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80051e4:	f048 0302 	orr.w	r3, r8, #2
 80051e8:	9108      	str	r1, [sp, #32]
 80051ea:	2500      	movs	r5, #0
 80051ec:	2202      	movs	r2, #2
 80051ee:	2678      	movs	r6, #120	; 0x78
 80051f0:	e64b      	b.n	8004e8a <_vfprintf_r+0x582>
 80051f2:	f048 0808 	orr.w	r8, r8, #8
 80051f6:	f89a 6000 	ldrb.w	r6, [sl]
 80051fa:	e403      	b.n	8004a04 <_vfprintf_r+0xfc>
 80051fc:	f048 0310 	orr.w	r3, r8, #16
 8005200:	069f      	lsls	r7, r3, #26
 8005202:	f53f acd1 	bmi.w	8004ba8 <_vfprintf_r+0x2a0>
 8005206:	9908      	ldr	r1, [sp, #32]
 8005208:	06dd      	lsls	r5, r3, #27
 800520a:	f101 0204 	add.w	r2, r1, #4
 800520e:	f100 82fd 	bmi.w	800580c <_vfprintf_r+0xf04>
 8005212:	065c      	lsls	r4, r3, #25
 8005214:	9908      	ldr	r1, [sp, #32]
 8005216:	f100 8475 	bmi.w	8005b04 <_vfprintf_r+0x11fc>
 800521a:	0598      	lsls	r0, r3, #22
 800521c:	f140 82f6 	bpl.w	800580c <_vfprintf_r+0xf04>
 8005220:	f991 4000 	ldrsb.w	r4, [r1]
 8005224:	9208      	str	r2, [sp, #32]
 8005226:	17e5      	asrs	r5, r4, #31
 8005228:	4620      	mov	r0, r4
 800522a:	4629      	mov	r1, r5
 800522c:	e4c7      	b.n	8004bbe <_vfprintf_r+0x2b6>
 800522e:	9a08      	ldr	r2, [sp, #32]
 8005230:	f018 0f10 	tst.w	r8, #16
 8005234:	f102 0304 	add.w	r3, r2, #4
 8005238:	f040 82e3 	bne.w	8005802 <_vfprintf_r+0xefa>
 800523c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005240:	9a08      	ldr	r2, [sp, #32]
 8005242:	f040 8467 	bne.w	8005b14 <_vfprintf_r+0x120c>
 8005246:	f418 7f00 	tst.w	r8, #512	; 0x200
 800524a:	f000 82da 	beq.w	8005802 <_vfprintf_r+0xefa>
 800524e:	7814      	ldrb	r4, [r2, #0]
 8005250:	9308      	str	r3, [sp, #32]
 8005252:	2500      	movs	r5, #0
 8005254:	e488      	b.n	8004b68 <_vfprintf_r+0x260>
 8005256:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800525a:	f002 fd45 	bl	8007ce8 <__retarget_lock_release_recursive>
 800525e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005262:	9305      	str	r3, [sp, #20]
 8005264:	e443      	b.n	8004aee <_vfprintf_r+0x1e6>
 8005266:	2e00      	cmp	r6, #0
 8005268:	f43f adf8 	beq.w	8004e5c <_vfprintf_r+0x554>
 800526c:	2300      	movs	r3, #0
 800526e:	2101      	movs	r1, #1
 8005270:	461a      	mov	r2, r3
 8005272:	9104      	str	r1, [sp, #16]
 8005274:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8005278:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800527c:	930a      	str	r3, [sp, #40]	; 0x28
 800527e:	4699      	mov	r9, r3
 8005280:	930f      	str	r3, [sp, #60]	; 0x3c
 8005282:	9314      	str	r3, [sp, #80]	; 0x50
 8005284:	9311      	str	r3, [sp, #68]	; 0x44
 8005286:	9109      	str	r1, [sp, #36]	; 0x24
 8005288:	af3d      	add	r7, sp, #244	; 0xf4
 800528a:	e4ce      	b.n	8004c2a <_vfprintf_r+0x322>
 800528c:	2e65      	cmp	r6, #101	; 0x65
 800528e:	f340 80ca 	ble.w	8005426 <_vfprintf_r+0xb1e>
 8005292:	2200      	movs	r2, #0
 8005294:	2300      	movs	r3, #0
 8005296:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800529a:	f7fb feb5 	bl	8001008 <__aeabi_dcmpeq>
 800529e:	2800      	cmp	r0, #0
 80052a0:	f000 8169 	beq.w	8005576 <_vfprintf_r+0xc6e>
 80052a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80052a6:	4a22      	ldr	r2, [pc, #136]	; (8005330 <_vfprintf_r+0xa28>)
 80052a8:	f8cb 2000 	str.w	r2, [fp]
 80052ac:	3301      	adds	r3, #1
 80052ae:	3401      	adds	r4, #1
 80052b0:	2201      	movs	r2, #1
 80052b2:	2b07      	cmp	r3, #7
 80052b4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80052b8:	f8cb 2004 	str.w	r2, [fp, #4]
 80052bc:	f300 8406 	bgt.w	8005acc <_vfprintf_r+0x11c4>
 80052c0:	f10b 0b08 	add.w	fp, fp, #8
 80052c4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80052c6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80052c8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80052ca:	4293      	cmp	r3, r2
 80052cc:	db03      	blt.n	80052d6 <_vfprintf_r+0x9ce>
 80052ce:	f018 0f01 	tst.w	r8, #1
 80052d2:	f43f ad6a 	beq.w	8004daa <_vfprintf_r+0x4a2>
 80052d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80052d8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80052da:	f8cb 2000 	str.w	r2, [fp]
 80052de:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80052e0:	f8cb 2004 	str.w	r2, [fp, #4]
 80052e4:	3301      	adds	r3, #1
 80052e6:	4414      	add	r4, r2
 80052e8:	2b07      	cmp	r3, #7
 80052ea:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80052ee:	f300 8517 	bgt.w	8005d20 <_vfprintf_r+0x1418>
 80052f2:	f10b 0b08 	add.w	fp, fp, #8
 80052f6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80052f8:	1e5d      	subs	r5, r3, #1
 80052fa:	2d00      	cmp	r5, #0
 80052fc:	f77f ad55 	ble.w	8004daa <_vfprintf_r+0x4a2>
 8005300:	2d10      	cmp	r5, #16
 8005302:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005304:	4b0b      	ldr	r3, [pc, #44]	; (8005334 <_vfprintf_r+0xa2c>)
 8005306:	f340 82e7 	ble.w	80058d8 <_vfprintf_r+0xfd0>
 800530a:	4619      	mov	r1, r3
 800530c:	2610      	movs	r6, #16
 800530e:	4623      	mov	r3, r4
 8005310:	9f03      	ldr	r7, [sp, #12]
 8005312:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005316:	460c      	mov	r4, r1
 8005318:	e014      	b.n	8005344 <_vfprintf_r+0xa3c>
 800531a:	bf00      	nop
 800531c:	7fefffff 	.word	0x7fefffff
 8005320:	0800960c 	.word	0x0800960c
 8005324:	08009608 	.word	0x08009608
 8005328:	0800962c 	.word	0x0800962c
 800532c:	08009618 	.word	0x08009618
 8005330:	08009648 	.word	0x08009648
 8005334:	0800965c 	.word	0x0800965c
 8005338:	f10b 0b08 	add.w	fp, fp, #8
 800533c:	3d10      	subs	r5, #16
 800533e:	2d10      	cmp	r5, #16
 8005340:	f340 82c7 	ble.w	80058d2 <_vfprintf_r+0xfca>
 8005344:	3201      	adds	r2, #1
 8005346:	3310      	adds	r3, #16
 8005348:	2a07      	cmp	r2, #7
 800534a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800534e:	e9cb 4600 	strd	r4, r6, [fp]
 8005352:	ddf1      	ble.n	8005338 <_vfprintf_r+0xa30>
 8005354:	aa2a      	add	r2, sp, #168	; 0xa8
 8005356:	4649      	mov	r1, r9
 8005358:	4638      	mov	r0, r7
 800535a:	f003 fe03 	bl	8008f64 <__sprint_r>
 800535e:	2800      	cmp	r0, #0
 8005360:	d14c      	bne.n	80053fc <_vfprintf_r+0xaf4>
 8005362:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005366:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800536a:	e7e7      	b.n	800533c <_vfprintf_r+0xa34>
 800536c:	9b06      	ldr	r3, [sp, #24]
 800536e:	9a04      	ldr	r2, [sp, #16]
 8005370:	1a9d      	subs	r5, r3, r2
 8005372:	2d00      	cmp	r5, #0
 8005374:	f77f acc9 	ble.w	8004d0a <_vfprintf_r+0x402>
 8005378:	2d10      	cmp	r5, #16
 800537a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800537c:	4bbc      	ldr	r3, [pc, #752]	; (8005670 <_vfprintf_r+0xd68>)
 800537e:	dd27      	ble.n	80053d0 <_vfprintf_r+0xac8>
 8005380:	4659      	mov	r1, fp
 8005382:	4620      	mov	r0, r4
 8005384:	46bb      	mov	fp, r7
 8005386:	461c      	mov	r4, r3
 8005388:	4637      	mov	r7, r6
 800538a:	9e07      	ldr	r6, [sp, #28]
 800538c:	e004      	b.n	8005398 <_vfprintf_r+0xa90>
 800538e:	3d10      	subs	r5, #16
 8005390:	2d10      	cmp	r5, #16
 8005392:	f101 0108 	add.w	r1, r1, #8
 8005396:	dd16      	ble.n	80053c6 <_vfprintf_r+0xabe>
 8005398:	3201      	adds	r2, #1
 800539a:	3010      	adds	r0, #16
 800539c:	2310      	movs	r3, #16
 800539e:	2a07      	cmp	r2, #7
 80053a0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80053a4:	600c      	str	r4, [r1, #0]
 80053a6:	604b      	str	r3, [r1, #4]
 80053a8:	ddf1      	ble.n	800538e <_vfprintf_r+0xa86>
 80053aa:	aa2a      	add	r2, sp, #168	; 0xa8
 80053ac:	4631      	mov	r1, r6
 80053ae:	9803      	ldr	r0, [sp, #12]
 80053b0:	f003 fdd8 	bl	8008f64 <__sprint_r>
 80053b4:	2800      	cmp	r0, #0
 80053b6:	f040 80a8 	bne.w	800550a <_vfprintf_r+0xc02>
 80053ba:	3d10      	subs	r5, #16
 80053bc:	2d10      	cmp	r5, #16
 80053be:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80053c2:	a92d      	add	r1, sp, #180	; 0xb4
 80053c4:	dce8      	bgt.n	8005398 <_vfprintf_r+0xa90>
 80053c6:	463e      	mov	r6, r7
 80053c8:	4623      	mov	r3, r4
 80053ca:	465f      	mov	r7, fp
 80053cc:	4604      	mov	r4, r0
 80053ce:	468b      	mov	fp, r1
 80053d0:	3201      	adds	r2, #1
 80053d2:	442c      	add	r4, r5
 80053d4:	2a07      	cmp	r2, #7
 80053d6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80053da:	e9cb 3500 	strd	r3, r5, [fp]
 80053de:	f300 8292 	bgt.w	8005906 <_vfprintf_r+0xffe>
 80053e2:	f10b 0b08 	add.w	fp, fp, #8
 80053e6:	e490      	b.n	8004d0a <_vfprintf_r+0x402>
 80053e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80053ea:	9907      	ldr	r1, [sp, #28]
 80053ec:	9803      	ldr	r0, [sp, #12]
 80053ee:	f003 fdb9 	bl	8008f64 <__sprint_r>
 80053f2:	2800      	cmp	r0, #0
 80053f4:	f43f ad23 	beq.w	8004e3e <_vfprintf_r+0x536>
 80053f8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80053fc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80053fe:	b111      	cbz	r1, 8005406 <_vfprintf_r+0xafe>
 8005400:	9803      	ldr	r0, [sp, #12]
 8005402:	f002 f9c1 	bl	8007788 <_free_r>
 8005406:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800540a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800540e:	07d0      	lsls	r0, r2, #31
 8005410:	d402      	bmi.n	8005418 <_vfprintf_r+0xb10>
 8005412:	0599      	lsls	r1, r3, #22
 8005414:	f140 81d0 	bpl.w	80057b8 <_vfprintf_r+0xeb0>
 8005418:	065a      	lsls	r2, r3, #25
 800541a:	f53f ab65 	bmi.w	8004ae8 <_vfprintf_r+0x1e0>
 800541e:	9805      	ldr	r0, [sp, #20]
 8005420:	b057      	add	sp, #348	; 0x15c
 8005422:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005426:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005428:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800542a:	2a01      	cmp	r2, #1
 800542c:	f104 0401 	add.w	r4, r4, #1
 8005430:	f103 0501 	add.w	r5, r3, #1
 8005434:	f10b 0608 	add.w	r6, fp, #8
 8005438:	f340 811c 	ble.w	8005674 <_vfprintf_r+0xd6c>
 800543c:	2301      	movs	r3, #1
 800543e:	2d07      	cmp	r5, #7
 8005440:	f8cb 7000 	str.w	r7, [fp]
 8005444:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8005448:	f8cb 3004 	str.w	r3, [fp, #4]
 800544c:	f300 81bb 	bgt.w	80057c6 <_vfprintf_r+0xebe>
 8005450:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8005452:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8005454:	1c69      	adds	r1, r5, #1
 8005456:	441c      	add	r4, r3
 8005458:	2907      	cmp	r1, #7
 800545a:	910b      	str	r1, [sp, #44]	; 0x2c
 800545c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8005460:	e9c6 2300 	strd	r2, r3, [r6]
 8005464:	f300 81bb 	bgt.w	80057de <_vfprintf_r+0xed6>
 8005468:	3608      	adds	r6, #8
 800546a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800546c:	1c53      	adds	r3, r2, #1
 800546e:	461d      	mov	r5, r3
 8005470:	9509      	str	r5, [sp, #36]	; 0x24
 8005472:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8005474:	930e      	str	r3, [sp, #56]	; 0x38
 8005476:	2200      	movs	r2, #0
 8005478:	2300      	movs	r3, #0
 800547a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800547e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8005482:	f106 0b08 	add.w	fp, r6, #8
 8005486:	f7fb fdbf 	bl	8001008 <__aeabi_dcmpeq>
 800548a:	2800      	cmp	r0, #0
 800548c:	f040 80c2 	bne.w	8005614 <_vfprintf_r+0xd0c>
 8005490:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005492:	f8c6 9004 	str.w	r9, [r6, #4]
 8005496:	3701      	adds	r7, #1
 8005498:	444c      	add	r4, r9
 800549a:	2d07      	cmp	r5, #7
 800549c:	6037      	str	r7, [r6, #0]
 800549e:	942c      	str	r4, [sp, #176]	; 0xb0
 80054a0:	952b      	str	r5, [sp, #172]	; 0xac
 80054a2:	f300 80f9 	bgt.w	8005698 <_vfprintf_r+0xd90>
 80054a6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80054a8:	f106 0310 	add.w	r3, r6, #16
 80054ac:	3202      	adds	r2, #2
 80054ae:	465e      	mov	r6, fp
 80054b0:	9209      	str	r2, [sp, #36]	; 0x24
 80054b2:	469b      	mov	fp, r3
 80054b4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80054b6:	6072      	str	r2, [r6, #4]
 80054b8:	4414      	add	r4, r2
 80054ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80054bc:	942c      	str	r4, [sp, #176]	; 0xb0
 80054be:	ab26      	add	r3, sp, #152	; 0x98
 80054c0:	2a07      	cmp	r2, #7
 80054c2:	922b      	str	r2, [sp, #172]	; 0xac
 80054c4:	6033      	str	r3, [r6, #0]
 80054c6:	f77f ac70 	ble.w	8004daa <_vfprintf_r+0x4a2>
 80054ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80054cc:	9907      	ldr	r1, [sp, #28]
 80054ce:	9803      	ldr	r0, [sp, #12]
 80054d0:	f003 fd48 	bl	8008f64 <__sprint_r>
 80054d4:	2800      	cmp	r0, #0
 80054d6:	d18f      	bne.n	80053f8 <_vfprintf_r+0xaf0>
 80054d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80054da:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80054de:	e464      	b.n	8004daa <_vfprintf_r+0x4a2>
 80054e0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80054e2:	af56      	add	r7, sp, #344	; 0x158
 80054e4:	0923      	lsrs	r3, r4, #4
 80054e6:	f004 010f 	and.w	r1, r4, #15
 80054ea:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80054ee:	092a      	lsrs	r2, r5, #4
 80054f0:	461c      	mov	r4, r3
 80054f2:	4615      	mov	r5, r2
 80054f4:	5c43      	ldrb	r3, [r0, r1]
 80054f6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80054fa:	ea54 0305 	orrs.w	r3, r4, r5
 80054fe:	d1f1      	bne.n	80054e4 <_vfprintf_r+0xbdc>
 8005500:	9b04      	ldr	r3, [sp, #16]
 8005502:	1bdb      	subs	r3, r3, r7
 8005504:	9309      	str	r3, [sp, #36]	; 0x24
 8005506:	f7ff bb80 	b.w	8004c0a <_vfprintf_r+0x302>
 800550a:	46b1      	mov	r9, r6
 800550c:	e776      	b.n	80053fc <_vfprintf_r+0xaf4>
 800550e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005510:	9907      	ldr	r1, [sp, #28]
 8005512:	9803      	ldr	r0, [sp, #12]
 8005514:	f003 fd26 	bl	8008f64 <__sprint_r>
 8005518:	2800      	cmp	r0, #0
 800551a:	f47f af6d 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 800551e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005520:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005524:	f7ff bbdd 	b.w	8004ce2 <_vfprintf_r+0x3da>
 8005528:	aa2a      	add	r2, sp, #168	; 0xa8
 800552a:	9907      	ldr	r1, [sp, #28]
 800552c:	9803      	ldr	r0, [sp, #12]
 800552e:	f003 fd19 	bl	8008f64 <__sprint_r>
 8005532:	2800      	cmp	r0, #0
 8005534:	f47f af60 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8005538:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800553a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800553e:	f7ff bbe0 	b.w	8004d02 <_vfprintf_r+0x3fa>
 8005542:	4698      	mov	r8, r3
 8005544:	2d00      	cmp	r5, #0
 8005546:	bf08      	it	eq
 8005548:	2c0a      	cmpeq	r4, #10
 800554a:	f080 8170 	bcs.w	800582e <_vfprintf_r+0xf26>
 800554e:	af56      	add	r7, sp, #344	; 0x158
 8005550:	3430      	adds	r4, #48	; 0x30
 8005552:	2301      	movs	r3, #1
 8005554:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8005558:	9309      	str	r3, [sp, #36]	; 0x24
 800555a:	f7ff bb56 	b.w	8004c0a <_vfprintf_r+0x302>
 800555e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005560:	9907      	ldr	r1, [sp, #28]
 8005562:	9803      	ldr	r0, [sp, #12]
 8005564:	f003 fcfe 	bl	8008f64 <__sprint_r>
 8005568:	2800      	cmp	r0, #0
 800556a:	f47f af45 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 800556e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005570:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005574:	e406      	b.n	8004d84 <_vfprintf_r+0x47c>
 8005576:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005578:	2b00      	cmp	r3, #0
 800557a:	f340 8273 	ble.w	8005a64 <_vfprintf_r+0x115c>
 800557e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8005582:	4293      	cmp	r3, r2
 8005584:	bfa8      	it	ge
 8005586:	4613      	movge	r3, r2
 8005588:	2b00      	cmp	r3, #0
 800558a:	461d      	mov	r5, r3
 800558c:	dd0d      	ble.n	80055aa <_vfprintf_r+0xca2>
 800558e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005590:	f8cb 7000 	str.w	r7, [fp]
 8005594:	3301      	adds	r3, #1
 8005596:	442c      	add	r4, r5
 8005598:	2b07      	cmp	r3, #7
 800559a:	942c      	str	r4, [sp, #176]	; 0xb0
 800559c:	f8cb 5004 	str.w	r5, [fp, #4]
 80055a0:	932b      	str	r3, [sp, #172]	; 0xac
 80055a2:	f300 82c1 	bgt.w	8005b28 <_vfprintf_r+0x1220>
 80055a6:	f10b 0b08 	add.w	fp, fp, #8
 80055aa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80055ac:	2d00      	cmp	r5, #0
 80055ae:	bfa8      	it	ge
 80055b0:	1b5b      	subge	r3, r3, r5
 80055b2:	2b00      	cmp	r3, #0
 80055b4:	461d      	mov	r5, r3
 80055b6:	f340 8099 	ble.w	80056ec <_vfprintf_r+0xde4>
 80055ba:	2d10      	cmp	r5, #16
 80055bc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80055be:	4b2c      	ldr	r3, [pc, #176]	; (8005670 <_vfprintf_r+0xd68>)
 80055c0:	f340 83db 	ble.w	8005d7a <_vfprintf_r+0x1472>
 80055c4:	4618      	mov	r0, r3
 80055c6:	4621      	mov	r1, r4
 80055c8:	465b      	mov	r3, fp
 80055ca:	2610      	movs	r6, #16
 80055cc:	46bb      	mov	fp, r7
 80055ce:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80055d2:	9c07      	ldr	r4, [sp, #28]
 80055d4:	4607      	mov	r7, r0
 80055d6:	e004      	b.n	80055e2 <_vfprintf_r+0xcda>
 80055d8:	3308      	adds	r3, #8
 80055da:	3d10      	subs	r5, #16
 80055dc:	2d10      	cmp	r5, #16
 80055de:	f340 83c7 	ble.w	8005d70 <_vfprintf_r+0x1468>
 80055e2:	3201      	adds	r2, #1
 80055e4:	3110      	adds	r1, #16
 80055e6:	2a07      	cmp	r2, #7
 80055e8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80055ec:	e9c3 7600 	strd	r7, r6, [r3]
 80055f0:	ddf2      	ble.n	80055d8 <_vfprintf_r+0xcd0>
 80055f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80055f4:	4621      	mov	r1, r4
 80055f6:	4648      	mov	r0, r9
 80055f8:	f003 fcb4 	bl	8008f64 <__sprint_r>
 80055fc:	2800      	cmp	r0, #0
 80055fe:	f040 84a5 	bne.w	8005f4c <_vfprintf_r+0x1644>
 8005602:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8005606:	ab2d      	add	r3, sp, #180	; 0xb4
 8005608:	e7e7      	b.n	80055da <_vfprintf_r+0xcd2>
 800560a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800560e:	af56      	add	r7, sp, #344	; 0x158
 8005610:	f7ff bafb 	b.w	8004c0a <_vfprintf_r+0x302>
 8005614:	f1b9 0f00 	cmp.w	r9, #0
 8005618:	f77f af4c 	ble.w	80054b4 <_vfprintf_r+0xbac>
 800561c:	f1b9 0f10 	cmp.w	r9, #16
 8005620:	4b13      	ldr	r3, [pc, #76]	; (8005670 <_vfprintf_r+0xd68>)
 8005622:	f340 8659 	ble.w	80062d8 <_vfprintf_r+0x19d0>
 8005626:	4619      	mov	r1, r3
 8005628:	4622      	mov	r2, r4
 800562a:	4633      	mov	r3, r6
 800562c:	2710      	movs	r7, #16
 800562e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8005632:	9c07      	ldr	r4, [sp, #28]
 8005634:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8005636:	460e      	mov	r6, r1
 8005638:	e007      	b.n	800564a <_vfprintf_r+0xd42>
 800563a:	3308      	adds	r3, #8
 800563c:	f1a9 0910 	sub.w	r9, r9, #16
 8005640:	f1b9 0f10 	cmp.w	r9, #16
 8005644:	f340 8353 	ble.w	8005cee <_vfprintf_r+0x13e6>
 8005648:	3501      	adds	r5, #1
 800564a:	3210      	adds	r2, #16
 800564c:	2d07      	cmp	r5, #7
 800564e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8005652:	e9c3 6700 	strd	r6, r7, [r3]
 8005656:	ddf0      	ble.n	800563a <_vfprintf_r+0xd32>
 8005658:	aa2a      	add	r2, sp, #168	; 0xa8
 800565a:	4621      	mov	r1, r4
 800565c:	4658      	mov	r0, fp
 800565e:	f003 fc81 	bl	8008f64 <__sprint_r>
 8005662:	2800      	cmp	r0, #0
 8005664:	f040 8472 	bne.w	8005f4c <_vfprintf_r+0x1644>
 8005668:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800566c:	ab2d      	add	r3, sp, #180	; 0xb4
 800566e:	e7e5      	b.n	800563c <_vfprintf_r+0xd34>
 8005670:	0800965c 	.word	0x0800965c
 8005674:	f018 0f01 	tst.w	r8, #1
 8005678:	f47f aee0 	bne.w	800543c <_vfprintf_r+0xb34>
 800567c:	2201      	movs	r2, #1
 800567e:	2d07      	cmp	r5, #7
 8005680:	f8cb 7000 	str.w	r7, [fp]
 8005684:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8005688:	f8cb 2004 	str.w	r2, [fp, #4]
 800568c:	dc04      	bgt.n	8005698 <_vfprintf_r+0xd90>
 800568e:	3302      	adds	r3, #2
 8005690:	9309      	str	r3, [sp, #36]	; 0x24
 8005692:	f10b 0b10 	add.w	fp, fp, #16
 8005696:	e70d      	b.n	80054b4 <_vfprintf_r+0xbac>
 8005698:	aa2a      	add	r2, sp, #168	; 0xa8
 800569a:	9907      	ldr	r1, [sp, #28]
 800569c:	9803      	ldr	r0, [sp, #12]
 800569e:	f003 fc61 	bl	8008f64 <__sprint_r>
 80056a2:	2800      	cmp	r0, #0
 80056a4:	f47f aea8 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 80056a8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80056ac:	3301      	adds	r3, #1
 80056ae:	9309      	str	r3, [sp, #36]	; 0x24
 80056b0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80056b4:	ae2d      	add	r6, sp, #180	; 0xb4
 80056b6:	e6fd      	b.n	80054b4 <_vfprintf_r+0xbac>
 80056b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80056ba:	9907      	ldr	r1, [sp, #28]
 80056bc:	9803      	ldr	r0, [sp, #12]
 80056be:	f003 fc51 	bl	8008f64 <__sprint_r>
 80056c2:	2800      	cmp	r0, #0
 80056c4:	f47f ae98 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 80056c8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80056cc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80056ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80056d2:	f7ff baf6 	b.w	8004cc2 <_vfprintf_r+0x3ba>
 80056d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80056d8:	9907      	ldr	r1, [sp, #28]
 80056da:	9803      	ldr	r0, [sp, #12]
 80056dc:	f003 fc42 	bl	8008f64 <__sprint_r>
 80056e0:	2800      	cmp	r0, #0
 80056e2:	f47f ae89 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 80056e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80056e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80056ec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80056ee:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80056f2:	443b      	add	r3, r7
 80056f4:	4699      	mov	r9, r3
 80056f6:	f040 8357 	bne.w	8005da8 <_vfprintf_r+0x14a0>
 80056fa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80056fc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80056fe:	4293      	cmp	r3, r2
 8005700:	db49      	blt.n	8005796 <_vfprintf_r+0xe8e>
 8005702:	f018 0f01 	tst.w	r8, #1
 8005706:	d146      	bne.n	8005796 <_vfprintf_r+0xe8e>
 8005708:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800570a:	18bd      	adds	r5, r7, r2
 800570c:	eba5 0509 	sub.w	r5, r5, r9
 8005710:	1ad3      	subs	r3, r2, r3
 8005712:	429d      	cmp	r5, r3
 8005714:	bfa8      	it	ge
 8005716:	461d      	movge	r5, r3
 8005718:	2d00      	cmp	r5, #0
 800571a:	dd0d      	ble.n	8005738 <_vfprintf_r+0xe30>
 800571c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800571e:	f8cb 9000 	str.w	r9, [fp]
 8005722:	3201      	adds	r2, #1
 8005724:	442c      	add	r4, r5
 8005726:	2a07      	cmp	r2, #7
 8005728:	942c      	str	r4, [sp, #176]	; 0xb0
 800572a:	f8cb 5004 	str.w	r5, [fp, #4]
 800572e:	922b      	str	r2, [sp, #172]	; 0xac
 8005730:	f300 8462 	bgt.w	8005ff8 <_vfprintf_r+0x16f0>
 8005734:	f10b 0b08 	add.w	fp, fp, #8
 8005738:	2d00      	cmp	r5, #0
 800573a:	bfac      	ite	ge
 800573c:	1b5d      	subge	r5, r3, r5
 800573e:	461d      	movlt	r5, r3
 8005740:	2d00      	cmp	r5, #0
 8005742:	f77f ab32 	ble.w	8004daa <_vfprintf_r+0x4a2>
 8005746:	2d10      	cmp	r5, #16
 8005748:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800574a:	4bc5      	ldr	r3, [pc, #788]	; (8005a60 <_vfprintf_r+0x1158>)
 800574c:	f340 80c4 	ble.w	80058d8 <_vfprintf_r+0xfd0>
 8005750:	4619      	mov	r1, r3
 8005752:	2610      	movs	r6, #16
 8005754:	4623      	mov	r3, r4
 8005756:	9f03      	ldr	r7, [sp, #12]
 8005758:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800575c:	460c      	mov	r4, r1
 800575e:	e005      	b.n	800576c <_vfprintf_r+0xe64>
 8005760:	f10b 0b08 	add.w	fp, fp, #8
 8005764:	3d10      	subs	r5, #16
 8005766:	2d10      	cmp	r5, #16
 8005768:	f340 80b3 	ble.w	80058d2 <_vfprintf_r+0xfca>
 800576c:	3201      	adds	r2, #1
 800576e:	3310      	adds	r3, #16
 8005770:	2a07      	cmp	r2, #7
 8005772:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8005776:	e9cb 4600 	strd	r4, r6, [fp]
 800577a:	ddf1      	ble.n	8005760 <_vfprintf_r+0xe58>
 800577c:	aa2a      	add	r2, sp, #168	; 0xa8
 800577e:	4649      	mov	r1, r9
 8005780:	4638      	mov	r0, r7
 8005782:	f003 fbef 	bl	8008f64 <__sprint_r>
 8005786:	2800      	cmp	r0, #0
 8005788:	f47f ae38 	bne.w	80053fc <_vfprintf_r+0xaf4>
 800578c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005790:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005794:	e7e6      	b.n	8005764 <_vfprintf_r+0xe5c>
 8005796:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005798:	9916      	ldr	r1, [sp, #88]	; 0x58
 800579a:	f8cb 1000 	str.w	r1, [fp]
 800579e:	9915      	ldr	r1, [sp, #84]	; 0x54
 80057a0:	f8cb 1004 	str.w	r1, [fp, #4]
 80057a4:	3201      	adds	r2, #1
 80057a6:	440c      	add	r4, r1
 80057a8:	2a07      	cmp	r2, #7
 80057aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80057ac:	922b      	str	r2, [sp, #172]	; 0xac
 80057ae:	f300 828c 	bgt.w	8005cca <_vfprintf_r+0x13c2>
 80057b2:	f10b 0b08 	add.w	fp, fp, #8
 80057b6:	e7a7      	b.n	8005708 <_vfprintf_r+0xe00>
 80057b8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80057bc:	f002 fa94 	bl	8007ce8 <__retarget_lock_release_recursive>
 80057c0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80057c4:	e628      	b.n	8005418 <_vfprintf_r+0xb10>
 80057c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80057c8:	9907      	ldr	r1, [sp, #28]
 80057ca:	9803      	ldr	r0, [sp, #12]
 80057cc:	f003 fbca 	bl	8008f64 <__sprint_r>
 80057d0:	2800      	cmp	r0, #0
 80057d2:	f47f ae11 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 80057d6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80057da:	ae2d      	add	r6, sp, #180	; 0xb4
 80057dc:	e638      	b.n	8005450 <_vfprintf_r+0xb48>
 80057de:	aa2a      	add	r2, sp, #168	; 0xa8
 80057e0:	9907      	ldr	r1, [sp, #28]
 80057e2:	9803      	ldr	r0, [sp, #12]
 80057e4:	f003 fbbe 	bl	8008f64 <__sprint_r>
 80057e8:	2800      	cmp	r0, #0
 80057ea:	f47f ae05 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 80057ee:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80057f2:	ae2d      	add	r6, sp, #180	; 0xb4
 80057f4:	930b      	str	r3, [sp, #44]	; 0x2c
 80057f6:	e638      	b.n	800546a <_vfprintf_r+0xb62>
 80057f8:	6814      	ldr	r4, [r2, #0]
 80057fa:	9308      	str	r3, [sp, #32]
 80057fc:	2500      	movs	r5, #0
 80057fe:	f7ff bb95 	b.w	8004f2c <_vfprintf_r+0x624>
 8005802:	6814      	ldr	r4, [r2, #0]
 8005804:	9308      	str	r3, [sp, #32]
 8005806:	2500      	movs	r5, #0
 8005808:	f7ff b9ae 	b.w	8004b68 <_vfprintf_r+0x260>
 800580c:	680c      	ldr	r4, [r1, #0]
 800580e:	9208      	str	r2, [sp, #32]
 8005810:	17e5      	asrs	r5, r4, #31
 8005812:	4620      	mov	r0, r4
 8005814:	4629      	mov	r1, r5
 8005816:	f7ff b9d2 	b.w	8004bbe <_vfprintf_r+0x2b6>
 800581a:	6814      	ldr	r4, [r2, #0]
 800581c:	9108      	str	r1, [sp, #32]
 800581e:	2201      	movs	r2, #1
 8005820:	2500      	movs	r5, #0
 8005822:	f7ff bb32 	b.w	8004e8a <_vfprintf_r+0x582>
 8005826:	2a01      	cmp	r2, #1
 8005828:	f47f ab3c 	bne.w	8004ea4 <_vfprintf_r+0x59c>
 800582c:	e68f      	b.n	800554e <_vfprintf_r+0xc46>
 800582e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8005832:	2200      	movs	r2, #0
 8005834:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8005838:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800583c:	af56      	add	r7, sp, #344	; 0x158
 800583e:	4692      	mov	sl, r2
 8005840:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8005844:	461e      	mov	r6, r3
 8005846:	e00a      	b.n	800585e <_vfprintf_r+0xf56>
 8005848:	2300      	movs	r3, #0
 800584a:	4620      	mov	r0, r4
 800584c:	4629      	mov	r1, r5
 800584e:	220a      	movs	r2, #10
 8005850:	f7fa fcd6 	bl	8000200 <__aeabi_uldivmod>
 8005854:	4604      	mov	r4, r0
 8005856:	460d      	mov	r5, r1
 8005858:	ea54 0305 	orrs.w	r3, r4, r5
 800585c:	d029      	beq.n	80058b2 <_vfprintf_r+0xfaa>
 800585e:	220a      	movs	r2, #10
 8005860:	2300      	movs	r3, #0
 8005862:	4620      	mov	r0, r4
 8005864:	4629      	mov	r1, r5
 8005866:	f7fa fccb 	bl	8000200 <__aeabi_uldivmod>
 800586a:	3230      	adds	r2, #48	; 0x30
 800586c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8005870:	f10a 0a01 	add.w	sl, sl, #1
 8005874:	3f01      	subs	r7, #1
 8005876:	2e00      	cmp	r6, #0
 8005878:	d0e6      	beq.n	8005848 <_vfprintf_r+0xf40>
 800587a:	f898 3000 	ldrb.w	r3, [r8]
 800587e:	459a      	cmp	sl, r3
 8005880:	d1e2      	bne.n	8005848 <_vfprintf_r+0xf40>
 8005882:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8005886:	d0df      	beq.n	8005848 <_vfprintf_r+0xf40>
 8005888:	2d00      	cmp	r5, #0
 800588a:	bf08      	it	eq
 800588c:	2c0a      	cmpeq	r4, #10
 800588e:	d3db      	bcc.n	8005848 <_vfprintf_r+0xf40>
 8005890:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8005892:	9918      	ldr	r1, [sp, #96]	; 0x60
 8005894:	1aff      	subs	r7, r7, r3
 8005896:	461a      	mov	r2, r3
 8005898:	4638      	mov	r0, r7
 800589a:	f003 faf5 	bl	8008e88 <strncpy>
 800589e:	f898 3001 	ldrb.w	r3, [r8, #1]
 80058a2:	2b00      	cmp	r3, #0
 80058a4:	f000 8496 	beq.w	80061d4 <_vfprintf_r+0x18cc>
 80058a8:	f108 0801 	add.w	r8, r8, #1
 80058ac:	f04f 0a00 	mov.w	sl, #0
 80058b0:	e7ca      	b.n	8005848 <_vfprintf_r+0xf40>
 80058b2:	9b04      	ldr	r3, [sp, #16]
 80058b4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80058b8:	1bdb      	subs	r3, r3, r7
 80058ba:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80058be:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80058c0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80058c4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80058c8:	9309      	str	r3, [sp, #36]	; 0x24
 80058ca:	f7ff b99e 	b.w	8004c0a <_vfprintf_r+0x302>
 80058ce:	46c1      	mov	r9, r8
 80058d0:	e594      	b.n	80053fc <_vfprintf_r+0xaf4>
 80058d2:	4621      	mov	r1, r4
 80058d4:	461c      	mov	r4, r3
 80058d6:	460b      	mov	r3, r1
 80058d8:	3201      	adds	r2, #1
 80058da:	442c      	add	r4, r5
 80058dc:	2a07      	cmp	r2, #7
 80058de:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80058e2:	e9cb 3500 	strd	r3, r5, [fp]
 80058e6:	f77f aa5e 	ble.w	8004da6 <_vfprintf_r+0x49e>
 80058ea:	e5ee      	b.n	80054ca <_vfprintf_r+0xbc2>
 80058ec:	f018 0f10 	tst.w	r8, #16
 80058f0:	f040 80f8 	bne.w	8005ae4 <_vfprintf_r+0x11dc>
 80058f4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80058f8:	f000 8351 	beq.w	8005f9e <_vfprintf_r+0x1696>
 80058fc:	9a05      	ldr	r2, [sp, #20]
 80058fe:	801a      	strh	r2, [r3, #0]
 8005900:	4657      	mov	r7, sl
 8005902:	f7ff baa7 	b.w	8004e54 <_vfprintf_r+0x54c>
 8005906:	aa2a      	add	r2, sp, #168	; 0xa8
 8005908:	9907      	ldr	r1, [sp, #28]
 800590a:	9803      	ldr	r0, [sp, #12]
 800590c:	f003 fb2a 	bl	8008f64 <__sprint_r>
 8005910:	2800      	cmp	r0, #0
 8005912:	f47f ad71 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8005916:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005918:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800591c:	f7ff b9f5 	b.w	8004d0a <_vfprintf_r+0x402>
 8005920:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005924:	4602      	mov	r2, r0
 8005926:	460b      	mov	r3, r1
 8005928:	f7fb fba0 	bl	800106c <__aeabi_dcmpun>
 800592c:	2800      	cmp	r0, #0
 800592e:	f040 8491 	bne.w	8006254 <_vfprintf_r+0x194c>
 8005932:	2e61      	cmp	r6, #97	; 0x61
 8005934:	f000 8111 	beq.w	8005b5a <_vfprintf_r+0x1252>
 8005938:	2e41      	cmp	r6, #65	; 0x41
 800593a:	f000 8377 	beq.w	800602c <_vfprintf_r+0x1724>
 800593e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8005942:	f026 0220 	bic.w	r2, r6, #32
 8005946:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800594a:	930e      	str	r3, [sp, #56]	; 0x38
 800594c:	9204      	str	r2, [sp, #16]
 800594e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8005950:	f000 842d 	beq.w	80061ae <_vfprintf_r+0x18a6>
 8005954:	2a47      	cmp	r2, #71	; 0x47
 8005956:	f000 8424 	beq.w	80061a2 <_vfprintf_r+0x189a>
 800595a:	2b00      	cmp	r3, #0
 800595c:	f2c0 82f9 	blt.w	8005f52 <_vfprintf_r+0x164a>
 8005960:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8005964:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8005968:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800596c:	2e66      	cmp	r6, #102	; 0x66
 800596e:	f000 83eb 	beq.w	8006148 <_vfprintf_r+0x1840>
 8005972:	2e46      	cmp	r6, #70	; 0x46
 8005974:	f000 847e 	beq.w	8006274 <_vfprintf_r+0x196c>
 8005978:	9b04      	ldr	r3, [sp, #16]
 800597a:	9803      	ldr	r0, [sp, #12]
 800597c:	2b45      	cmp	r3, #69	; 0x45
 800597e:	bf0c      	ite	eq
 8005980:	f109 0501 	addeq.w	r5, r9, #1
 8005984:	464d      	movne	r5, r9
 8005986:	aa28      	add	r2, sp, #160	; 0xa0
 8005988:	ab25      	add	r3, sp, #148	; 0x94
 800598a:	e9cd 3200 	strd	r3, r2, [sp]
 800598e:	2102      	movs	r1, #2
 8005990:	ab24      	add	r3, sp, #144	; 0x90
 8005992:	462a      	mov	r2, r5
 8005994:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005998:	f000 fe3e 	bl	8006618 <_dtoa_r>
 800599c:	2e67      	cmp	r6, #103	; 0x67
 800599e:	4607      	mov	r7, r0
 80059a0:	f040 849c 	bne.w	80062dc <_vfprintf_r+0x19d4>
 80059a4:	f018 0f01 	tst.w	r8, #1
 80059a8:	f040 83f9 	bne.w	800619e <_vfprintf_r+0x1896>
 80059ac:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80059ae:	4640      	mov	r0, r8
 80059b0:	1bdb      	subs	r3, r3, r7
 80059b2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80059b6:	9310      	str	r3, [sp, #64]	; 0x40
 80059b8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80059ba:	9311      	str	r3, [sp, #68]	; 0x44
 80059bc:	9b04      	ldr	r3, [sp, #16]
 80059be:	2b47      	cmp	r3, #71	; 0x47
 80059c0:	f000 81e7 	beq.w	8005d92 <_vfprintf_r+0x148a>
 80059c4:	9b04      	ldr	r3, [sp, #16]
 80059c6:	2b46      	cmp	r3, #70	; 0x46
 80059c8:	f000 8300 	beq.w	8005fcc <_vfprintf_r+0x16c4>
 80059cc:	9904      	ldr	r1, [sp, #16]
 80059ce:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80059d0:	b2f2      	uxtb	r2, r6
 80059d2:	2941      	cmp	r1, #65	; 0x41
 80059d4:	bf08      	it	eq
 80059d6:	320f      	addeq	r2, #15
 80059d8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80059dc:	bf06      	itte	eq
 80059de:	b2d2      	uxtbeq	r2, r2
 80059e0:	2101      	moveq	r1, #1
 80059e2:	2100      	movne	r1, #0
 80059e4:	2b00      	cmp	r3, #0
 80059e6:	9324      	str	r3, [sp, #144]	; 0x90
 80059e8:	bfb8      	it	lt
 80059ea:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80059ec:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80059f0:	bfba      	itte	lt
 80059f2:	f1c3 0301 	rsblt	r3, r3, #1
 80059f6:	222d      	movlt	r2, #45	; 0x2d
 80059f8:	222b      	movge	r2, #43	; 0x2b
 80059fa:	2b09      	cmp	r3, #9
 80059fc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8005a00:	f300 83f9 	bgt.w	80061f6 <_vfprintf_r+0x18ee>
 8005a04:	2900      	cmp	r1, #0
 8005a06:	f040 8487 	bne.w	8006318 <_vfprintf_r+0x1a10>
 8005a0a:	2230      	movs	r2, #48	; 0x30
 8005a0c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8005a10:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8005a14:	3330      	adds	r3, #48	; 0x30
 8005a16:	7013      	strb	r3, [r2, #0]
 8005a18:	1c53      	adds	r3, r2, #1
 8005a1a:	aa26      	add	r2, sp, #152	; 0x98
 8005a1c:	1a9b      	subs	r3, r3, r2
 8005a1e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005a20:	9319      	str	r3, [sp, #100]	; 0x64
 8005a22:	2a01      	cmp	r2, #1
 8005a24:	4413      	add	r3, r2
 8005a26:	9309      	str	r3, [sp, #36]	; 0x24
 8005a28:	f340 8442 	ble.w	80062b0 <_vfprintf_r+0x19a8>
 8005a2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005a2e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8005a30:	4413      	add	r3, r2
 8005a32:	9309      	str	r3, [sp, #36]	; 0x24
 8005a34:	2300      	movs	r3, #0
 8005a36:	930f      	str	r3, [sp, #60]	; 0x3c
 8005a38:	9314      	str	r3, [sp, #80]	; 0x50
 8005a3a:	9311      	str	r3, [sp, #68]	; 0x44
 8005a3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005a3e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8005a42:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005a46:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8005a4a:	9304      	str	r3, [sp, #16]
 8005a4c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005a4e:	2b00      	cmp	r3, #0
 8005a50:	f040 8275 	bne.w	8005f3e <_vfprintf_r+0x1636>
 8005a54:	4699      	mov	r9, r3
 8005a56:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005a5a:	f7ff b8e2 	b.w	8004c22 <_vfprintf_r+0x31a>
 8005a5e:	bf00      	nop
 8005a60:	0800965c 	.word	0x0800965c
 8005a64:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005a66:	49bd      	ldr	r1, [pc, #756]	; (8005d5c <_vfprintf_r+0x1454>)
 8005a68:	f8cb 1000 	str.w	r1, [fp]
 8005a6c:	3201      	adds	r2, #1
 8005a6e:	3401      	adds	r4, #1
 8005a70:	2101      	movs	r1, #1
 8005a72:	2a07      	cmp	r2, #7
 8005a74:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005a78:	f8cb 1004 	str.w	r1, [fp, #4]
 8005a7c:	dc60      	bgt.n	8005b40 <_vfprintf_r+0x1238>
 8005a7e:	f10b 0b08 	add.w	fp, fp, #8
 8005a82:	b92b      	cbnz	r3, 8005a90 <_vfprintf_r+0x1188>
 8005a84:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005a86:	b91a      	cbnz	r2, 8005a90 <_vfprintf_r+0x1188>
 8005a88:	f018 0f01 	tst.w	r8, #1
 8005a8c:	f43f a98d 	beq.w	8004daa <_vfprintf_r+0x4a2>
 8005a90:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005a92:	9916      	ldr	r1, [sp, #88]	; 0x58
 8005a94:	f8cb 1000 	str.w	r1, [fp]
 8005a98:	9915      	ldr	r1, [sp, #84]	; 0x54
 8005a9a:	f8cb 1004 	str.w	r1, [fp, #4]
 8005a9e:	3201      	adds	r2, #1
 8005aa0:	440c      	add	r4, r1
 8005aa2:	2a07      	cmp	r2, #7
 8005aa4:	942c      	str	r4, [sp, #176]	; 0xb0
 8005aa6:	922b      	str	r2, [sp, #172]	; 0xac
 8005aa8:	f300 8282 	bgt.w	8005fb0 <_vfprintf_r+0x16a8>
 8005aac:	f10b 0b08 	add.w	fp, fp, #8
 8005ab0:	2b00      	cmp	r3, #0
 8005ab2:	f2c0 82e7 	blt.w	8006084 <_vfprintf_r+0x177c>
 8005ab6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005ab8:	3201      	adds	r2, #1
 8005aba:	441c      	add	r4, r3
 8005abc:	2a07      	cmp	r2, #7
 8005abe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005ac2:	e9cb 7300 	strd	r7, r3, [fp]
 8005ac6:	f77f a96e 	ble.w	8004da6 <_vfprintf_r+0x49e>
 8005aca:	e4fe      	b.n	80054ca <_vfprintf_r+0xbc2>
 8005acc:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ace:	9907      	ldr	r1, [sp, #28]
 8005ad0:	9803      	ldr	r0, [sp, #12]
 8005ad2:	f003 fa47 	bl	8008f64 <__sprint_r>
 8005ad6:	2800      	cmp	r0, #0
 8005ad8:	f47f ac8e 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8005adc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005ae0:	f7ff bbf0 	b.w	80052c4 <_vfprintf_r+0x9bc>
 8005ae4:	9a05      	ldr	r2, [sp, #20]
 8005ae6:	601a      	str	r2, [r3, #0]
 8005ae8:	4657      	mov	r7, sl
 8005aea:	f7ff b9b3 	b.w	8004e54 <_vfprintf_r+0x54c>
 8005aee:	8814      	ldrh	r4, [r2, #0]
 8005af0:	9108      	str	r1, [sp, #32]
 8005af2:	2500      	movs	r5, #0
 8005af4:	2201      	movs	r2, #1
 8005af6:	f7ff b9c8 	b.w	8004e8a <_vfprintf_r+0x582>
 8005afa:	8814      	ldrh	r4, [r2, #0]
 8005afc:	9308      	str	r3, [sp, #32]
 8005afe:	2500      	movs	r5, #0
 8005b00:	f7ff ba14 	b.w	8004f2c <_vfprintf_r+0x624>
 8005b04:	f9b1 4000 	ldrsh.w	r4, [r1]
 8005b08:	9208      	str	r2, [sp, #32]
 8005b0a:	17e5      	asrs	r5, r4, #31
 8005b0c:	4620      	mov	r0, r4
 8005b0e:	4629      	mov	r1, r5
 8005b10:	f7ff b855 	b.w	8004bbe <_vfprintf_r+0x2b6>
 8005b14:	8814      	ldrh	r4, [r2, #0]
 8005b16:	9308      	str	r3, [sp, #32]
 8005b18:	2500      	movs	r5, #0
 8005b1a:	f7ff b825 	b.w	8004b68 <_vfprintf_r+0x260>
 8005b1e:	222d      	movs	r2, #45	; 0x2d
 8005b20:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8005b24:	f7ff baa2 	b.w	800506c <_vfprintf_r+0x764>
 8005b28:	aa2a      	add	r2, sp, #168	; 0xa8
 8005b2a:	9907      	ldr	r1, [sp, #28]
 8005b2c:	9803      	ldr	r0, [sp, #12]
 8005b2e:	f003 fa19 	bl	8008f64 <__sprint_r>
 8005b32:	2800      	cmp	r0, #0
 8005b34:	f47f ac60 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8005b38:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005b3a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005b3e:	e534      	b.n	80055aa <_vfprintf_r+0xca2>
 8005b40:	aa2a      	add	r2, sp, #168	; 0xa8
 8005b42:	9907      	ldr	r1, [sp, #28]
 8005b44:	9803      	ldr	r0, [sp, #12]
 8005b46:	f003 fa0d 	bl	8008f64 <__sprint_r>
 8005b4a:	2800      	cmp	r0, #0
 8005b4c:	f47f ac54 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8005b50:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005b52:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005b54:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005b58:	e793      	b.n	8005a82 <_vfprintf_r+0x117a>
 8005b5a:	2330      	movs	r3, #48	; 0x30
 8005b5c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8005b60:	2378      	movs	r3, #120	; 0x78
 8005b62:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8005b66:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8005b6a:	f048 0402 	orr.w	r4, r8, #2
 8005b6e:	f300 82b0 	bgt.w	80060d2 <_vfprintf_r+0x17ca>
 8005b72:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8005b76:	930e      	str	r3, [sp, #56]	; 0x38
 8005b78:	f026 0320 	bic.w	r3, r6, #32
 8005b7c:	9304      	str	r3, [sp, #16]
 8005b7e:	2200      	movs	r2, #0
 8005b80:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8005b82:	920a      	str	r2, [sp, #40]	; 0x28
 8005b84:	46a0      	mov	r8, r4
 8005b86:	af3d      	add	r7, sp, #244	; 0xf4
 8005b88:	2b00      	cmp	r3, #0
 8005b8a:	f2c0 81e3 	blt.w	8005f54 <_vfprintf_r+0x164c>
 8005b8e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8005b92:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8005b96:	2300      	movs	r3, #0
 8005b98:	930b      	str	r3, [sp, #44]	; 0x2c
 8005b9a:	2e61      	cmp	r6, #97	; 0x61
 8005b9c:	f000 8255 	beq.w	800604a <_vfprintf_r+0x1742>
 8005ba0:	2e41      	cmp	r6, #65	; 0x41
 8005ba2:	f47f aee3 	bne.w	800596c <_vfprintf_r+0x1064>
 8005ba6:	a824      	add	r0, sp, #144	; 0x90
 8005ba8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005bac:	f003 f8e2 	bl	8008d74 <frexp>
 8005bb0:	2200      	movs	r2, #0
 8005bb2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8005bb6:	ec51 0b10 	vmov	r0, r1, d0
 8005bba:	f7fa ffbd 	bl	8000b38 <__aeabi_dmul>
 8005bbe:	2200      	movs	r2, #0
 8005bc0:	2300      	movs	r3, #0
 8005bc2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8005bc6:	f7fb fa1f 	bl	8001008 <__aeabi_dcmpeq>
 8005bca:	2800      	cmp	r0, #0
 8005bcc:	f040 8305 	bne.w	80061da <_vfprintf_r+0x18d2>
 8005bd0:	4b63      	ldr	r3, [pc, #396]	; (8005d60 <_vfprintf_r+0x1458>)
 8005bd2:	9309      	str	r3, [sp, #36]	; 0x24
 8005bd4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8005bd8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8005bdc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8005be0:	9721      	str	r7, [sp, #132]	; 0x84
 8005be2:	46b9      	mov	r9, r7
 8005be4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8005be8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8005bec:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8005bf0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8005bf4:	e003      	b.n	8005bfe <_vfprintf_r+0x12f6>
 8005bf6:	f7fb fa07 	bl	8001008 <__aeabi_dcmpeq>
 8005bfa:	bb20      	cbnz	r0, 8005c46 <_vfprintf_r+0x133e>
 8005bfc:	46a9      	mov	r9, r5
 8005bfe:	2200      	movs	r2, #0
 8005c00:	4b58      	ldr	r3, [pc, #352]	; (8005d64 <_vfprintf_r+0x145c>)
 8005c02:	4630      	mov	r0, r6
 8005c04:	4639      	mov	r1, r7
 8005c06:	f7fa ff97 	bl	8000b38 <__aeabi_dmul>
 8005c0a:	460f      	mov	r7, r1
 8005c0c:	4606      	mov	r6, r0
 8005c0e:	f7fb fa43 	bl	8001098 <__aeabi_d2iz>
 8005c12:	4680      	mov	r8, r0
 8005c14:	f7fa ff26 	bl	8000a64 <__aeabi_i2d>
 8005c18:	4602      	mov	r2, r0
 8005c1a:	460b      	mov	r3, r1
 8005c1c:	4630      	mov	r0, r6
 8005c1e:	4639      	mov	r1, r7
 8005c20:	f7fa fdd2 	bl	80007c8 <__aeabi_dsub>
 8005c24:	464d      	mov	r5, r9
 8005c26:	f81a c008 	ldrb.w	ip, [sl, r8]
 8005c2a:	f805 cb01 	strb.w	ip, [r5], #1
 8005c2e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8005c32:	46a3      	mov	fp, r4
 8005c34:	4606      	mov	r6, r0
 8005c36:	460f      	mov	r7, r1
 8005c38:	f04f 0200 	mov.w	r2, #0
 8005c3c:	f04f 0300 	mov.w	r3, #0
 8005c40:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8005c44:	d1d7      	bne.n	8005bf6 <_vfprintf_r+0x12ee>
 8005c46:	4630      	mov	r0, r6
 8005c48:	4639      	mov	r1, r7
 8005c4a:	2200      	movs	r2, #0
 8005c4c:	4b46      	ldr	r3, [pc, #280]	; (8005d68 <_vfprintf_r+0x1460>)
 8005c4e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8005c52:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8005c54:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8005c58:	4644      	mov	r4, r8
 8005c5a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8005c5e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8005c62:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8005c66:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8005c6a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8005c6c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8005c70:	f7fb f9f2 	bl	8001058 <__aeabi_dcmpgt>
 8005c74:	2800      	cmp	r0, #0
 8005c76:	f040 8176 	bne.w	8005f66 <_vfprintf_r+0x165e>
 8005c7a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8005c7e:	2200      	movs	r2, #0
 8005c80:	4b39      	ldr	r3, [pc, #228]	; (8005d68 <_vfprintf_r+0x1460>)
 8005c82:	f7fb f9c1 	bl	8001008 <__aeabi_dcmpeq>
 8005c86:	b110      	cbz	r0, 8005c8e <_vfprintf_r+0x1386>
 8005c88:	07e2      	lsls	r2, r4, #31
 8005c8a:	f100 816c 	bmi.w	8005f66 <_vfprintf_r+0x165e>
 8005c8e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005c90:	2b00      	cmp	r3, #0
 8005c92:	db07      	blt.n	8005ca4 <_vfprintf_r+0x139c>
 8005c94:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005c96:	3301      	adds	r3, #1
 8005c98:	442b      	add	r3, r5
 8005c9a:	2230      	movs	r2, #48	; 0x30
 8005c9c:	f805 2b01 	strb.w	r2, [r5], #1
 8005ca0:	42ab      	cmp	r3, r5
 8005ca2:	d1fb      	bne.n	8005c9c <_vfprintf_r+0x1394>
 8005ca4:	1beb      	subs	r3, r5, r7
 8005ca6:	4640      	mov	r0, r8
 8005ca8:	9310      	str	r3, [sp, #64]	; 0x40
 8005caa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8005cae:	e683      	b.n	80059b8 <_vfprintf_r+0x10b0>
 8005cb0:	f8cd 9010 	str.w	r9, [sp, #16]
 8005cb4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8005cb8:	9408      	str	r4, [sp, #32]
 8005cba:	4681      	mov	r9, r0
 8005cbc:	900f      	str	r0, [sp, #60]	; 0x3c
 8005cbe:	9014      	str	r0, [sp, #80]	; 0x50
 8005cc0:	9011      	str	r0, [sp, #68]	; 0x44
 8005cc2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005cc6:	f7fe bfac 	b.w	8004c22 <_vfprintf_r+0x31a>
 8005cca:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ccc:	9907      	ldr	r1, [sp, #28]
 8005cce:	9803      	ldr	r0, [sp, #12]
 8005cd0:	f003 f948 	bl	8008f64 <__sprint_r>
 8005cd4:	2800      	cmp	r0, #0
 8005cd6:	f47f ab8f 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8005cda:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005cdc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005cde:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005ce2:	e511      	b.n	8005708 <_vfprintf_r+0xe00>
 8005ce4:	4252      	negs	r2, r2
 8005ce6:	9206      	str	r2, [sp, #24]
 8005ce8:	9308      	str	r3, [sp, #32]
 8005cea:	f7ff b96d 	b.w	8004fc8 <_vfprintf_r+0x6c0>
 8005cee:	4614      	mov	r4, r2
 8005cf0:	4632      	mov	r2, r6
 8005cf2:	461e      	mov	r6, r3
 8005cf4:	4613      	mov	r3, r2
 8005cf6:	462a      	mov	r2, r5
 8005cf8:	3201      	adds	r2, #1
 8005cfa:	9209      	str	r2, [sp, #36]	; 0x24
 8005cfc:	f106 0208 	add.w	r2, r6, #8
 8005d00:	e9c6 3900 	strd	r3, r9, [r6]
 8005d04:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005d06:	932b      	str	r3, [sp, #172]	; 0xac
 8005d08:	444c      	add	r4, r9
 8005d0a:	2b07      	cmp	r3, #7
 8005d0c:	942c      	str	r4, [sp, #176]	; 0xb0
 8005d0e:	f73f acc3 	bgt.w	8005698 <_vfprintf_r+0xd90>
 8005d12:	3301      	adds	r3, #1
 8005d14:	9309      	str	r3, [sp, #36]	; 0x24
 8005d16:	f102 0b08 	add.w	fp, r2, #8
 8005d1a:	4616      	mov	r6, r2
 8005d1c:	f7ff bbca 	b.w	80054b4 <_vfprintf_r+0xbac>
 8005d20:	aa2a      	add	r2, sp, #168	; 0xa8
 8005d22:	9907      	ldr	r1, [sp, #28]
 8005d24:	9803      	ldr	r0, [sp, #12]
 8005d26:	f003 f91d 	bl	8008f64 <__sprint_r>
 8005d2a:	2800      	cmp	r0, #0
 8005d2c:	f47f ab64 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8005d30:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005d32:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005d36:	f7ff bade 	b.w	80052f6 <_vfprintf_r+0x9ee>
 8005d3a:	464b      	mov	r3, r9
 8005d3c:	2b06      	cmp	r3, #6
 8005d3e:	bf28      	it	cs
 8005d40:	2306      	movcs	r3, #6
 8005d42:	46b9      	mov	r9, r7
 8005d44:	970f      	str	r7, [sp, #60]	; 0x3c
 8005d46:	9714      	str	r7, [sp, #80]	; 0x50
 8005d48:	9711      	str	r7, [sp, #68]	; 0x44
 8005d4a:	970a      	str	r7, [sp, #40]	; 0x28
 8005d4c:	463a      	mov	r2, r7
 8005d4e:	9304      	str	r3, [sp, #16]
 8005d50:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8005d54:	4f05      	ldr	r7, [pc, #20]	; (8005d6c <_vfprintf_r+0x1464>)
 8005d56:	f7fe bf64 	b.w	8004c22 <_vfprintf_r+0x31a>
 8005d5a:	bf00      	nop
 8005d5c:	08009648 	.word	0x08009648
 8005d60:	0800962c 	.word	0x0800962c
 8005d64:	40300000 	.word	0x40300000
 8005d68:	3fe00000 	.word	0x3fe00000
 8005d6c:	08009640 	.word	0x08009640
 8005d70:	460c      	mov	r4, r1
 8005d72:	4639      	mov	r1, r7
 8005d74:	465f      	mov	r7, fp
 8005d76:	469b      	mov	fp, r3
 8005d78:	460b      	mov	r3, r1
 8005d7a:	3201      	adds	r2, #1
 8005d7c:	442c      	add	r4, r5
 8005d7e:	2a07      	cmp	r2, #7
 8005d80:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005d84:	e9cb 3500 	strd	r3, r5, [fp]
 8005d88:	f73f aca5 	bgt.w	80056d6 <_vfprintf_r+0xdce>
 8005d8c:	f10b 0b08 	add.w	fp, fp, #8
 8005d90:	e4ac      	b.n	80056ec <_vfprintf_r+0xde4>
 8005d92:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005d94:	1cda      	adds	r2, r3, #3
 8005d96:	db02      	blt.n	8005d9e <_vfprintf_r+0x1496>
 8005d98:	4599      	cmp	r9, r3
 8005d9a:	f280 80b5 	bge.w	8005f08 <_vfprintf_r+0x1600>
 8005d9e:	3e02      	subs	r6, #2
 8005da0:	f026 0320 	bic.w	r3, r6, #32
 8005da4:	9304      	str	r3, [sp, #16]
 8005da6:	e611      	b.n	80059cc <_vfprintf_r+0x10c4>
 8005da8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005daa:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8005dae:	465a      	mov	r2, fp
 8005db0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8005db4:	18fb      	adds	r3, r7, r3
 8005db6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8005dba:	970c      	str	r7, [sp, #48]	; 0x30
 8005dbc:	4eaf      	ldr	r6, [pc, #700]	; (800607c <_vfprintf_r+0x1774>)
 8005dbe:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8005dc2:	9309      	str	r3, [sp, #36]	; 0x24
 8005dc4:	464f      	mov	r7, r9
 8005dc6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005dca:	4621      	mov	r1, r4
 8005dcc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8005dce:	2b00      	cmp	r3, #0
 8005dd0:	d05b      	beq.n	8005e8a <_vfprintf_r+0x1582>
 8005dd2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005dd4:	2b00      	cmp	r3, #0
 8005dd6:	d154      	bne.n	8005e82 <_vfprintf_r+0x157a>
 8005dd8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8005dda:	3b01      	subs	r3, #1
 8005ddc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8005de0:	9314      	str	r3, [sp, #80]	; 0x50
 8005de2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005de4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8005de6:	6010      	str	r0, [r2, #0]
 8005de8:	3301      	adds	r3, #1
 8005dea:	4459      	add	r1, fp
 8005dec:	2b07      	cmp	r3, #7
 8005dee:	912c      	str	r1, [sp, #176]	; 0xb0
 8005df0:	f8c2 b004 	str.w	fp, [r2, #4]
 8005df4:	932b      	str	r3, [sp, #172]	; 0xac
 8005df6:	dc68      	bgt.n	8005eca <_vfprintf_r+0x15c2>
 8005df8:	3208      	adds	r2, #8
 8005dfa:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005dfc:	f898 3000 	ldrb.w	r3, [r8]
 8005e00:	1bc5      	subs	r5, r0, r7
 8005e02:	429d      	cmp	r5, r3
 8005e04:	bfa8      	it	ge
 8005e06:	461d      	movge	r5, r3
 8005e08:	2d00      	cmp	r5, #0
 8005e0a:	dd0b      	ble.n	8005e24 <_vfprintf_r+0x151c>
 8005e0c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005e0e:	6017      	str	r7, [r2, #0]
 8005e10:	3301      	adds	r3, #1
 8005e12:	4429      	add	r1, r5
 8005e14:	2b07      	cmp	r3, #7
 8005e16:	912c      	str	r1, [sp, #176]	; 0xb0
 8005e18:	6055      	str	r5, [r2, #4]
 8005e1a:	932b      	str	r3, [sp, #172]	; 0xac
 8005e1c:	dc5e      	bgt.n	8005edc <_vfprintf_r+0x15d4>
 8005e1e:	f898 3000 	ldrb.w	r3, [r8]
 8005e22:	3208      	adds	r2, #8
 8005e24:	2d00      	cmp	r5, #0
 8005e26:	bfac      	ite	ge
 8005e28:	1b5d      	subge	r5, r3, r5
 8005e2a:	461d      	movlt	r5, r3
 8005e2c:	2d00      	cmp	r5, #0
 8005e2e:	dd26      	ble.n	8005e7e <_vfprintf_r+0x1576>
 8005e30:	2d10      	cmp	r5, #16
 8005e32:	982b      	ldr	r0, [sp, #172]	; 0xac
 8005e34:	dd3c      	ble.n	8005eb0 <_vfprintf_r+0x15a8>
 8005e36:	2410      	movs	r4, #16
 8005e38:	e003      	b.n	8005e42 <_vfprintf_r+0x153a>
 8005e3a:	3208      	adds	r2, #8
 8005e3c:	3d10      	subs	r5, #16
 8005e3e:	2d10      	cmp	r5, #16
 8005e40:	dd36      	ble.n	8005eb0 <_vfprintf_r+0x15a8>
 8005e42:	3001      	adds	r0, #1
 8005e44:	3110      	adds	r1, #16
 8005e46:	2807      	cmp	r0, #7
 8005e48:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8005e4c:	e9c2 6400 	strd	r6, r4, [r2]
 8005e50:	ddf3      	ble.n	8005e3a <_vfprintf_r+0x1532>
 8005e52:	aa2a      	add	r2, sp, #168	; 0xa8
 8005e54:	4651      	mov	r1, sl
 8005e56:	4648      	mov	r0, r9
 8005e58:	f003 f884 	bl	8008f64 <__sprint_r>
 8005e5c:	2800      	cmp	r0, #0
 8005e5e:	d150      	bne.n	8005f02 <_vfprintf_r+0x15fa>
 8005e60:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8005e64:	aa2d      	add	r2, sp, #180	; 0xb4
 8005e66:	e7e9      	b.n	8005e3c <_vfprintf_r+0x1534>
 8005e68:	aa2a      	add	r2, sp, #168	; 0xa8
 8005e6a:	4651      	mov	r1, sl
 8005e6c:	4648      	mov	r0, r9
 8005e6e:	f003 f879 	bl	8008f64 <__sprint_r>
 8005e72:	2800      	cmp	r0, #0
 8005e74:	d145      	bne.n	8005f02 <_vfprintf_r+0x15fa>
 8005e76:	f898 3000 	ldrb.w	r3, [r8]
 8005e7a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8005e7c:	aa2d      	add	r2, sp, #180	; 0xb4
 8005e7e:	441f      	add	r7, r3
 8005e80:	e7a4      	b.n	8005dcc <_vfprintf_r+0x14c4>
 8005e82:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005e84:	3b01      	subs	r3, #1
 8005e86:	930f      	str	r3, [sp, #60]	; 0x3c
 8005e88:	e7ab      	b.n	8005de2 <_vfprintf_r+0x14da>
 8005e8a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005e8c:	2b00      	cmp	r3, #0
 8005e8e:	d1f8      	bne.n	8005e82 <_vfprintf_r+0x157a>
 8005e90:	46b9      	mov	r9, r7
 8005e92:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005e94:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8005e96:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8005e9a:	18fb      	adds	r3, r7, r3
 8005e9c:	4599      	cmp	r9, r3
 8005e9e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8005ea2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8005ea6:	4693      	mov	fp, r2
 8005ea8:	460c      	mov	r4, r1
 8005eaa:	bf28      	it	cs
 8005eac:	4699      	movcs	r9, r3
 8005eae:	e424      	b.n	80056fa <_vfprintf_r+0xdf2>
 8005eb0:	3001      	adds	r0, #1
 8005eb2:	4429      	add	r1, r5
 8005eb4:	2807      	cmp	r0, #7
 8005eb6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8005eba:	e9c2 6500 	strd	r6, r5, [r2]
 8005ebe:	dcd3      	bgt.n	8005e68 <_vfprintf_r+0x1560>
 8005ec0:	f898 3000 	ldrb.w	r3, [r8]
 8005ec4:	3208      	adds	r2, #8
 8005ec6:	441f      	add	r7, r3
 8005ec8:	e780      	b.n	8005dcc <_vfprintf_r+0x14c4>
 8005eca:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ecc:	4651      	mov	r1, sl
 8005ece:	4648      	mov	r0, r9
 8005ed0:	f003 f848 	bl	8008f64 <__sprint_r>
 8005ed4:	b9a8      	cbnz	r0, 8005f02 <_vfprintf_r+0x15fa>
 8005ed6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8005ed8:	aa2d      	add	r2, sp, #180	; 0xb4
 8005eda:	e78e      	b.n	8005dfa <_vfprintf_r+0x14f2>
 8005edc:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ede:	4651      	mov	r1, sl
 8005ee0:	4648      	mov	r0, r9
 8005ee2:	f003 f83f 	bl	8008f64 <__sprint_r>
 8005ee6:	b960      	cbnz	r0, 8005f02 <_vfprintf_r+0x15fa>
 8005ee8:	f898 3000 	ldrb.w	r3, [r8]
 8005eec:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8005eee:	aa2d      	add	r2, sp, #180	; 0xb4
 8005ef0:	e798      	b.n	8005e24 <_vfprintf_r+0x151c>
 8005ef2:	4638      	mov	r0, r7
 8005ef4:	f7fa fba4 	bl	8000640 <strlen>
 8005ef8:	46a9      	mov	r9, r5
 8005efa:	4603      	mov	r3, r0
 8005efc:	9009      	str	r0, [sp, #36]	; 0x24
 8005efe:	f7ff b8f4 	b.w	80050ea <_vfprintf_r+0x7e2>
 8005f02:	46d1      	mov	r9, sl
 8005f04:	f7ff ba7a 	b.w	80053fc <_vfprintf_r+0xaf4>
 8005f08:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005f0a:	4619      	mov	r1, r3
 8005f0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005f0e:	4299      	cmp	r1, r3
 8005f10:	f300 8082 	bgt.w	8006018 <_vfprintf_r+0x1710>
 8005f14:	07c4      	lsls	r4, r0, #31
 8005f16:	f140 816b 	bpl.w	80061f0 <_vfprintf_r+0x18e8>
 8005f1a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8005f1c:	4413      	add	r3, r2
 8005f1e:	9309      	str	r3, [sp, #36]	; 0x24
 8005f20:	0541      	lsls	r1, r0, #21
 8005f22:	d503      	bpl.n	8005f2c <_vfprintf_r+0x1624>
 8005f24:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005f26:	2b00      	cmp	r3, #0
 8005f28:	f300 80e6 	bgt.w	80060f8 <_vfprintf_r+0x17f0>
 8005f2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005f2e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005f32:	9304      	str	r3, [sp, #16]
 8005f34:	2667      	movs	r6, #103	; 0x67
 8005f36:	2300      	movs	r3, #0
 8005f38:	930f      	str	r3, [sp, #60]	; 0x3c
 8005f3a:	9314      	str	r3, [sp, #80]	; 0x50
 8005f3c:	e586      	b.n	8005a4c <_vfprintf_r+0x1144>
 8005f3e:	222d      	movs	r2, #45	; 0x2d
 8005f40:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8005f44:	f04f 0900 	mov.w	r9, #0
 8005f48:	f7fe be6c 	b.w	8004c24 <_vfprintf_r+0x31c>
 8005f4c:	46a1      	mov	r9, r4
 8005f4e:	f7ff ba55 	b.w	80053fc <_vfprintf_r+0xaf4>
 8005f52:	900a      	str	r0, [sp, #40]	; 0x28
 8005f54:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8005f58:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8005f5c:	931f      	str	r3, [sp, #124]	; 0x7c
 8005f5e:	232d      	movs	r3, #45	; 0x2d
 8005f60:	911e      	str	r1, [sp, #120]	; 0x78
 8005f62:	930b      	str	r3, [sp, #44]	; 0x2c
 8005f64:	e619      	b.n	8005b9a <_vfprintf_r+0x1292>
 8005f66:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005f68:	9328      	str	r3, [sp, #160]	; 0xa0
 8005f6a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005f6c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8005f70:	7bd9      	ldrb	r1, [r3, #15]
 8005f72:	4291      	cmp	r1, r2
 8005f74:	462b      	mov	r3, r5
 8005f76:	d109      	bne.n	8005f8c <_vfprintf_r+0x1684>
 8005f78:	2030      	movs	r0, #48	; 0x30
 8005f7a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8005f7e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005f80:	1e5a      	subs	r2, r3, #1
 8005f82:	9228      	str	r2, [sp, #160]	; 0xa0
 8005f84:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005f88:	4291      	cmp	r1, r2
 8005f8a:	d0f6      	beq.n	8005f7a <_vfprintf_r+0x1672>
 8005f8c:	2a39      	cmp	r2, #57	; 0x39
 8005f8e:	bf0b      	itete	eq
 8005f90:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8005f92:	3201      	addne	r2, #1
 8005f94:	7a92      	ldrbeq	r2, [r2, #10]
 8005f96:	b2d2      	uxtbne	r2, r2
 8005f98:	f803 2c01 	strb.w	r2, [r3, #-1]
 8005f9c:	e682      	b.n	8005ca4 <_vfprintf_r+0x139c>
 8005f9e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8005fa2:	f43f ad9f 	beq.w	8005ae4 <_vfprintf_r+0x11dc>
 8005fa6:	9a05      	ldr	r2, [sp, #20]
 8005fa8:	701a      	strb	r2, [r3, #0]
 8005faa:	4657      	mov	r7, sl
 8005fac:	f7fe bf52 	b.w	8004e54 <_vfprintf_r+0x54c>
 8005fb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8005fb2:	9907      	ldr	r1, [sp, #28]
 8005fb4:	9803      	ldr	r0, [sp, #12]
 8005fb6:	f002 ffd5 	bl	8008f64 <__sprint_r>
 8005fba:	2800      	cmp	r0, #0
 8005fbc:	f47f aa1c 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8005fc0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005fc2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8005fc6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005fca:	e571      	b.n	8005ab0 <_vfprintf_r+0x11a8>
 8005fcc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005fce:	2b00      	cmp	r3, #0
 8005fd0:	f340 8164 	ble.w	800629c <_vfprintf_r+0x1994>
 8005fd4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005fd6:	f1b9 0f00 	cmp.w	r9, #0
 8005fda:	f040 8103 	bne.w	80061e4 <_vfprintf_r+0x18dc>
 8005fde:	07c6      	lsls	r6, r0, #31
 8005fe0:	f100 8100 	bmi.w	80061e4 <_vfprintf_r+0x18dc>
 8005fe4:	9309      	str	r3, [sp, #36]	; 0x24
 8005fe6:	2666      	movs	r6, #102	; 0x66
 8005fe8:	0543      	lsls	r3, r0, #21
 8005fea:	f100 8086 	bmi.w	80060fa <_vfprintf_r+0x17f2>
 8005fee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005ff0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005ff4:	9304      	str	r3, [sp, #16]
 8005ff6:	e79e      	b.n	8005f36 <_vfprintf_r+0x162e>
 8005ff8:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ffa:	9907      	ldr	r1, [sp, #28]
 8005ffc:	9803      	ldr	r0, [sp, #12]
 8005ffe:	f002 ffb1 	bl	8008f64 <__sprint_r>
 8006002:	2800      	cmp	r0, #0
 8006004:	f47f a9f8 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8006008:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800600a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800600c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800600e:	1ad3      	subs	r3, r2, r3
 8006010:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006014:	f7ff bb90 	b.w	8005738 <_vfprintf_r+0xe30>
 8006018:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800601a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800601c:	4413      	add	r3, r2
 800601e:	9309      	str	r3, [sp, #36]	; 0x24
 8006020:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006022:	2b00      	cmp	r3, #0
 8006024:	f340 8149 	ble.w	80062ba <_vfprintf_r+0x19b2>
 8006028:	2667      	movs	r6, #103	; 0x67
 800602a:	e7dd      	b.n	8005fe8 <_vfprintf_r+0x16e0>
 800602c:	2330      	movs	r3, #48	; 0x30
 800602e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006032:	2358      	movs	r3, #88	; 0x58
 8006034:	e595      	b.n	8005b62 <_vfprintf_r+0x125a>
 8006036:	9803      	ldr	r0, [sp, #12]
 8006038:	aa2a      	add	r2, sp, #168	; 0xa8
 800603a:	4649      	mov	r1, r9
 800603c:	f002 ff92 	bl	8008f64 <__sprint_r>
 8006040:	2800      	cmp	r0, #0
 8006042:	f47f a9e0 	bne.w	8005406 <_vfprintf_r+0xafe>
 8006046:	f7fe bf0f 	b.w	8004e68 <_vfprintf_r+0x560>
 800604a:	a824      	add	r0, sp, #144	; 0x90
 800604c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006050:	f002 fe90 	bl	8008d74 <frexp>
 8006054:	2200      	movs	r2, #0
 8006056:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800605a:	ec51 0b10 	vmov	r0, r1, d0
 800605e:	f7fa fd6b 	bl	8000b38 <__aeabi_dmul>
 8006062:	2200      	movs	r2, #0
 8006064:	2300      	movs	r3, #0
 8006066:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800606a:	f7fa ffcd 	bl	8001008 <__aeabi_dcmpeq>
 800606e:	b108      	cbz	r0, 8006074 <_vfprintf_r+0x176c>
 8006070:	2301      	movs	r3, #1
 8006072:	9324      	str	r3, [sp, #144]	; 0x90
 8006074:	4b02      	ldr	r3, [pc, #8]	; (8006080 <_vfprintf_r+0x1778>)
 8006076:	9309      	str	r3, [sp, #36]	; 0x24
 8006078:	e5ac      	b.n	8005bd4 <_vfprintf_r+0x12cc>
 800607a:	bf00      	nop
 800607c:	0800965c 	.word	0x0800965c
 8006080:	08009618 	.word	0x08009618
 8006084:	425d      	negs	r5, r3
 8006086:	3310      	adds	r3, #16
 8006088:	4bb9      	ldr	r3, [pc, #740]	; (8006370 <_vfprintf_r+0x1a68>)
 800608a:	f280 8097 	bge.w	80061bc <_vfprintf_r+0x18b4>
 800608e:	4619      	mov	r1, r3
 8006090:	2610      	movs	r6, #16
 8006092:	4623      	mov	r3, r4
 8006094:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8006098:	460c      	mov	r4, r1
 800609a:	e005      	b.n	80060a8 <_vfprintf_r+0x17a0>
 800609c:	f10b 0b08 	add.w	fp, fp, #8
 80060a0:	3d10      	subs	r5, #16
 80060a2:	2d10      	cmp	r5, #16
 80060a4:	f340 8087 	ble.w	80061b6 <_vfprintf_r+0x18ae>
 80060a8:	3201      	adds	r2, #1
 80060aa:	3310      	adds	r3, #16
 80060ac:	2a07      	cmp	r2, #7
 80060ae:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80060b2:	e9cb 4600 	strd	r4, r6, [fp]
 80060b6:	ddf1      	ble.n	800609c <_vfprintf_r+0x1794>
 80060b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80060ba:	9907      	ldr	r1, [sp, #28]
 80060bc:	4648      	mov	r0, r9
 80060be:	f002 ff51 	bl	8008f64 <__sprint_r>
 80060c2:	2800      	cmp	r0, #0
 80060c4:	f47f a998 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 80060c8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80060cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80060d0:	e7e6      	b.n	80060a0 <_vfprintf_r+0x1798>
 80060d2:	f109 0101 	add.w	r1, r9, #1
 80060d6:	9803      	ldr	r0, [sp, #12]
 80060d8:	f001 fe80 	bl	8007ddc <_malloc_r>
 80060dc:	4607      	mov	r7, r0
 80060de:	2800      	cmp	r0, #0
 80060e0:	f000 813b 	beq.w	800635a <_vfprintf_r+0x1a52>
 80060e4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80060e8:	930e      	str	r3, [sp, #56]	; 0x38
 80060ea:	f026 0320 	bic.w	r3, r6, #32
 80060ee:	9304      	str	r3, [sp, #16]
 80060f0:	46a0      	mov	r8, r4
 80060f2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80060f4:	900a      	str	r0, [sp, #40]	; 0x28
 80060f6:	e547      	b.n	8005b88 <_vfprintf_r+0x1280>
 80060f8:	2667      	movs	r6, #103	; 0x67
 80060fa:	981a      	ldr	r0, [sp, #104]	; 0x68
 80060fc:	2200      	movs	r2, #0
 80060fe:	920f      	str	r2, [sp, #60]	; 0x3c
 8006100:	9214      	str	r2, [sp, #80]	; 0x50
 8006102:	7803      	ldrb	r3, [r0, #0]
 8006104:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8006106:	2bff      	cmp	r3, #255	; 0xff
 8006108:	d00c      	beq.n	8006124 <_vfprintf_r+0x181c>
 800610a:	4293      	cmp	r3, r2
 800610c:	da0a      	bge.n	8006124 <_vfprintf_r+0x181c>
 800610e:	7841      	ldrb	r1, [r0, #1]
 8006110:	1ad2      	subs	r2, r2, r3
 8006112:	b1a9      	cbz	r1, 8006140 <_vfprintf_r+0x1838>
 8006114:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006116:	3301      	adds	r3, #1
 8006118:	9314      	str	r3, [sp, #80]	; 0x50
 800611a:	460b      	mov	r3, r1
 800611c:	2bff      	cmp	r3, #255	; 0xff
 800611e:	f100 0001 	add.w	r0, r0, #1
 8006122:	d1f2      	bne.n	800610a <_vfprintf_r+0x1802>
 8006124:	9211      	str	r2, [sp, #68]	; 0x44
 8006126:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006128:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800612a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800612c:	901a      	str	r0, [sp, #104]	; 0x68
 800612e:	4413      	add	r3, r2
 8006130:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8006132:	fb02 1303 	mla	r3, r2, r3, r1
 8006136:	9309      	str	r3, [sp, #36]	; 0x24
 8006138:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800613c:	9304      	str	r3, [sp, #16]
 800613e:	e485      	b.n	8005a4c <_vfprintf_r+0x1144>
 8006140:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8006142:	3101      	adds	r1, #1
 8006144:	910f      	str	r1, [sp, #60]	; 0x3c
 8006146:	e7de      	b.n	8006106 <_vfprintf_r+0x17fe>
 8006148:	aa28      	add	r2, sp, #160	; 0xa0
 800614a:	ab25      	add	r3, sp, #148	; 0x94
 800614c:	e9cd 3200 	strd	r3, r2, [sp]
 8006150:	2103      	movs	r1, #3
 8006152:	ab24      	add	r3, sp, #144	; 0x90
 8006154:	464a      	mov	r2, r9
 8006156:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800615a:	9803      	ldr	r0, [sp, #12]
 800615c:	f000 fa5c 	bl	8006618 <_dtoa_r>
 8006160:	464d      	mov	r5, r9
 8006162:	4607      	mov	r7, r0
 8006164:	eb00 0409 	add.w	r4, r0, r9
 8006168:	783b      	ldrb	r3, [r7, #0]
 800616a:	2b30      	cmp	r3, #48	; 0x30
 800616c:	f000 80be 	beq.w	80062ec <_vfprintf_r+0x19e4>
 8006170:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8006172:	442c      	add	r4, r5
 8006174:	2200      	movs	r2, #0
 8006176:	2300      	movs	r3, #0
 8006178:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800617c:	f7fa ff44 	bl	8001008 <__aeabi_dcmpeq>
 8006180:	b108      	cbz	r0, 8006186 <_vfprintf_r+0x187e>
 8006182:	4623      	mov	r3, r4
 8006184:	e413      	b.n	80059ae <_vfprintf_r+0x10a6>
 8006186:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006188:	42a3      	cmp	r3, r4
 800618a:	f4bf ac10 	bcs.w	80059ae <_vfprintf_r+0x10a6>
 800618e:	2130      	movs	r1, #48	; 0x30
 8006190:	1c5a      	adds	r2, r3, #1
 8006192:	9228      	str	r2, [sp, #160]	; 0xa0
 8006194:	7019      	strb	r1, [r3, #0]
 8006196:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006198:	429c      	cmp	r4, r3
 800619a:	d8f9      	bhi.n	8006190 <_vfprintf_r+0x1888>
 800619c:	e407      	b.n	80059ae <_vfprintf_r+0x10a6>
 800619e:	197c      	adds	r4, r7, r5
 80061a0:	e7e8      	b.n	8006174 <_vfprintf_r+0x186c>
 80061a2:	f1b9 0f00 	cmp.w	r9, #0
 80061a6:	f000 8092 	beq.w	80062ce <_vfprintf_r+0x19c6>
 80061aa:	900a      	str	r0, [sp, #40]	; 0x28
 80061ac:	e4ec      	b.n	8005b88 <_vfprintf_r+0x1280>
 80061ae:	900a      	str	r0, [sp, #40]	; 0x28
 80061b0:	f04f 0906 	mov.w	r9, #6
 80061b4:	e4e8      	b.n	8005b88 <_vfprintf_r+0x1280>
 80061b6:	4621      	mov	r1, r4
 80061b8:	461c      	mov	r4, r3
 80061ba:	460b      	mov	r3, r1
 80061bc:	3201      	adds	r2, #1
 80061be:	442c      	add	r4, r5
 80061c0:	2a07      	cmp	r2, #7
 80061c2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80061c6:	e9cb 3500 	strd	r3, r5, [fp]
 80061ca:	f300 80a9 	bgt.w	8006320 <_vfprintf_r+0x1a18>
 80061ce:	f10b 0b08 	add.w	fp, fp, #8
 80061d2:	e470      	b.n	8005ab6 <_vfprintf_r+0x11ae>
 80061d4:	469a      	mov	sl, r3
 80061d6:	f7ff bb37 	b.w	8005848 <_vfprintf_r+0xf40>
 80061da:	2301      	movs	r3, #1
 80061dc:	9324      	str	r3, [sp, #144]	; 0x90
 80061de:	4b65      	ldr	r3, [pc, #404]	; (8006374 <_vfprintf_r+0x1a6c>)
 80061e0:	9309      	str	r3, [sp, #36]	; 0x24
 80061e2:	e4f7      	b.n	8005bd4 <_vfprintf_r+0x12cc>
 80061e4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80061e6:	4413      	add	r3, r2
 80061e8:	444b      	add	r3, r9
 80061ea:	9309      	str	r3, [sp, #36]	; 0x24
 80061ec:	2666      	movs	r6, #102	; 0x66
 80061ee:	e6fb      	b.n	8005fe8 <_vfprintf_r+0x16e0>
 80061f0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80061f2:	9309      	str	r3, [sp, #36]	; 0x24
 80061f4:	e694      	b.n	8005f20 <_vfprintf_r+0x1618>
 80061f6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80061fa:	4664      	mov	r4, ip
 80061fc:	4d5e      	ldr	r5, [pc, #376]	; (8006378 <_vfprintf_r+0x1a70>)
 80061fe:	e000      	b.n	8006202 <_vfprintf_r+0x18fa>
 8006200:	4614      	mov	r4, r2
 8006202:	fba5 1203 	umull	r1, r2, r5, r3
 8006206:	08d2      	lsrs	r2, r2, #3
 8006208:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800620c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8006210:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8006214:	4613      	mov	r3, r2
 8006216:	2b09      	cmp	r3, #9
 8006218:	f804 1c01 	strb.w	r1, [r4, #-1]
 800621c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8006220:	dcee      	bgt.n	8006200 <_vfprintf_r+0x18f8>
 8006222:	3330      	adds	r3, #48	; 0x30
 8006224:	3c02      	subs	r4, #2
 8006226:	b2db      	uxtb	r3, r3
 8006228:	45a4      	cmp	ip, r4
 800622a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800622e:	f240 8090 	bls.w	8006352 <_vfprintf_r+0x1a4a>
 8006232:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8006236:	4611      	mov	r1, r2
 8006238:	e001      	b.n	800623e <_vfprintf_r+0x1936>
 800623a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800623e:	f804 3b01 	strb.w	r3, [r4], #1
 8006242:	458c      	cmp	ip, r1
 8006244:	d1f9      	bne.n	800623a <_vfprintf_r+0x1932>
 8006246:	ab2a      	add	r3, sp, #168	; 0xa8
 8006248:	1a9b      	subs	r3, r3, r2
 800624a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800624e:	4413      	add	r3, r2
 8006250:	f7ff bbe3 	b.w	8005a1a <_vfprintf_r+0x1112>
 8006254:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006256:	4f49      	ldr	r7, [pc, #292]	; (800637c <_vfprintf_r+0x1a74>)
 8006258:	2b00      	cmp	r3, #0
 800625a:	bfb6      	itet	lt
 800625c:	222d      	movlt	r2, #45	; 0x2d
 800625e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8006262:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8006266:	4b46      	ldr	r3, [pc, #280]	; (8006380 <_vfprintf_r+0x1a78>)
 8006268:	f7fe bf02 	b.w	8005070 <_vfprintf_r+0x768>
 800626c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006270:	f7ff b8c9 	b.w	8005406 <_vfprintf_r+0xafe>
 8006274:	aa28      	add	r2, sp, #160	; 0xa0
 8006276:	ab25      	add	r3, sp, #148	; 0x94
 8006278:	e9cd 3200 	strd	r3, r2, [sp]
 800627c:	2103      	movs	r1, #3
 800627e:	ab24      	add	r3, sp, #144	; 0x90
 8006280:	464a      	mov	r2, r9
 8006282:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006286:	9803      	ldr	r0, [sp, #12]
 8006288:	f000 f9c6 	bl	8006618 <_dtoa_r>
 800628c:	464d      	mov	r5, r9
 800628e:	4607      	mov	r7, r0
 8006290:	2e46      	cmp	r6, #70	; 0x46
 8006292:	eb07 0405 	add.w	r4, r7, r5
 8006296:	f43f af67 	beq.w	8006168 <_vfprintf_r+0x1860>
 800629a:	e76b      	b.n	8006174 <_vfprintf_r+0x186c>
 800629c:	f1b9 0f00 	cmp.w	r9, #0
 80062a0:	d131      	bne.n	8006306 <_vfprintf_r+0x19fe>
 80062a2:	07c5      	lsls	r5, r0, #31
 80062a4:	d42f      	bmi.n	8006306 <_vfprintf_r+0x19fe>
 80062a6:	2301      	movs	r3, #1
 80062a8:	9304      	str	r3, [sp, #16]
 80062aa:	9309      	str	r3, [sp, #36]	; 0x24
 80062ac:	2666      	movs	r6, #102	; 0x66
 80062ae:	e642      	b.n	8005f36 <_vfprintf_r+0x162e>
 80062b0:	07c3      	lsls	r3, r0, #31
 80062b2:	f57f abbf 	bpl.w	8005a34 <_vfprintf_r+0x112c>
 80062b6:	f7ff bbb9 	b.w	8005a2c <_vfprintf_r+0x1124>
 80062ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80062bc:	f1c3 0301 	rsb	r3, r3, #1
 80062c0:	441a      	add	r2, r3
 80062c2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80062c6:	9209      	str	r2, [sp, #36]	; 0x24
 80062c8:	9304      	str	r3, [sp, #16]
 80062ca:	2667      	movs	r6, #103	; 0x67
 80062cc:	e633      	b.n	8005f36 <_vfprintf_r+0x162e>
 80062ce:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80062d2:	f04f 0901 	mov.w	r9, #1
 80062d6:	e457      	b.n	8005b88 <_vfprintf_r+0x1280>
 80062d8:	465a      	mov	r2, fp
 80062da:	e511      	b.n	8005d00 <_vfprintf_r+0x13f8>
 80062dc:	2e47      	cmp	r6, #71	; 0x47
 80062de:	f47f af5e 	bne.w	800619e <_vfprintf_r+0x1896>
 80062e2:	f018 0f01 	tst.w	r8, #1
 80062e6:	f43f ab61 	beq.w	80059ac <_vfprintf_r+0x10a4>
 80062ea:	e7d1      	b.n	8006290 <_vfprintf_r+0x1988>
 80062ec:	2200      	movs	r2, #0
 80062ee:	2300      	movs	r3, #0
 80062f0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80062f4:	f7fa fe88 	bl	8001008 <__aeabi_dcmpeq>
 80062f8:	2800      	cmp	r0, #0
 80062fa:	f47f af39 	bne.w	8006170 <_vfprintf_r+0x1868>
 80062fe:	f1c5 0501 	rsb	r5, r5, #1
 8006302:	9524      	str	r5, [sp, #144]	; 0x90
 8006304:	e735      	b.n	8006172 <_vfprintf_r+0x186a>
 8006306:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8006308:	3301      	adds	r3, #1
 800630a:	444b      	add	r3, r9
 800630c:	9309      	str	r3, [sp, #36]	; 0x24
 800630e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006312:	9304      	str	r3, [sp, #16]
 8006314:	2666      	movs	r6, #102	; 0x66
 8006316:	e60e      	b.n	8005f36 <_vfprintf_r+0x162e>
 8006318:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800631c:	f7ff bb7a 	b.w	8005a14 <_vfprintf_r+0x110c>
 8006320:	aa2a      	add	r2, sp, #168	; 0xa8
 8006322:	9907      	ldr	r1, [sp, #28]
 8006324:	9803      	ldr	r0, [sp, #12]
 8006326:	f002 fe1d 	bl	8008f64 <__sprint_r>
 800632a:	2800      	cmp	r0, #0
 800632c:	f47f a864 	bne.w	80053f8 <_vfprintf_r+0xaf0>
 8006330:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8006334:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006338:	f7ff bbbd 	b.w	8005ab6 <_vfprintf_r+0x11ae>
 800633c:	9908      	ldr	r1, [sp, #32]
 800633e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8006342:	680b      	ldr	r3, [r1, #0]
 8006344:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8006348:	1d0b      	adds	r3, r1, #4
 800634a:	4692      	mov	sl, r2
 800634c:	9308      	str	r3, [sp, #32]
 800634e:	f7fe bb59 	b.w	8004a04 <_vfprintf_r+0xfc>
 8006352:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8006356:	f7ff bb60 	b.w	8005a1a <_vfprintf_r+0x1112>
 800635a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800635e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8006362:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006366:	f8a9 300c 	strh.w	r3, [r9, #12]
 800636a:	f7ff b84c 	b.w	8005406 <_vfprintf_r+0xafe>
 800636e:	bf00      	nop
 8006370:	0800965c 	.word	0x0800965c
 8006374:	0800962c 	.word	0x0800962c
 8006378:	cccccccd 	.word	0xcccccccd
 800637c:	08009614 	.word	0x08009614
 8006380:	08009610 	.word	0x08009610

08006384 <__sbprintf>:
 8006384:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006388:	460c      	mov	r4, r1
 800638a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800638e:	8989      	ldrh	r1, [r1, #12]
 8006390:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006392:	89e5      	ldrh	r5, [r4, #14]
 8006394:	9619      	str	r6, [sp, #100]	; 0x64
 8006396:	f021 0102 	bic.w	r1, r1, #2
 800639a:	4606      	mov	r6, r0
 800639c:	69e0      	ldr	r0, [r4, #28]
 800639e:	f8ad 100c 	strh.w	r1, [sp, #12]
 80063a2:	4617      	mov	r7, r2
 80063a4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80063a8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80063aa:	f8ad 500e 	strh.w	r5, [sp, #14]
 80063ae:	4698      	mov	r8, r3
 80063b0:	ad1a      	add	r5, sp, #104	; 0x68
 80063b2:	2300      	movs	r3, #0
 80063b4:	9007      	str	r0, [sp, #28]
 80063b6:	a816      	add	r0, sp, #88	; 0x58
 80063b8:	9209      	str	r2, [sp, #36]	; 0x24
 80063ba:	9306      	str	r3, [sp, #24]
 80063bc:	9500      	str	r5, [sp, #0]
 80063be:	9504      	str	r5, [sp, #16]
 80063c0:	9102      	str	r1, [sp, #8]
 80063c2:	9105      	str	r1, [sp, #20]
 80063c4:	f001 fc8a 	bl	8007cdc <__retarget_lock_init_recursive>
 80063c8:	4643      	mov	r3, r8
 80063ca:	463a      	mov	r2, r7
 80063cc:	4669      	mov	r1, sp
 80063ce:	4630      	mov	r0, r6
 80063d0:	f7fe fa9a 	bl	8004908 <_vfprintf_r>
 80063d4:	1e05      	subs	r5, r0, #0
 80063d6:	db07      	blt.n	80063e8 <__sbprintf+0x64>
 80063d8:	4630      	mov	r0, r6
 80063da:	4669      	mov	r1, sp
 80063dc:	f001 f8d6 	bl	800758c <_fflush_r>
 80063e0:	2800      	cmp	r0, #0
 80063e2:	bf18      	it	ne
 80063e4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80063e8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80063ec:	065b      	lsls	r3, r3, #25
 80063ee:	d503      	bpl.n	80063f8 <__sbprintf+0x74>
 80063f0:	89a3      	ldrh	r3, [r4, #12]
 80063f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80063f6:	81a3      	strh	r3, [r4, #12]
 80063f8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80063fa:	f001 fc71 	bl	8007ce0 <__retarget_lock_close_recursive>
 80063fe:	4628      	mov	r0, r5
 8006400:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8006404:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006408 <__swsetup_r>:
 8006408:	b538      	push	{r3, r4, r5, lr}
 800640a:	4b31      	ldr	r3, [pc, #196]	; (80064d0 <__swsetup_r+0xc8>)
 800640c:	681b      	ldr	r3, [r3, #0]
 800640e:	4605      	mov	r5, r0
 8006410:	460c      	mov	r4, r1
 8006412:	b113      	cbz	r3, 800641a <__swsetup_r+0x12>
 8006414:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8006416:	2a00      	cmp	r2, #0
 8006418:	d03a      	beq.n	8006490 <__swsetup_r+0x88>
 800641a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800641e:	b293      	uxth	r3, r2
 8006420:	0718      	lsls	r0, r3, #28
 8006422:	d50c      	bpl.n	800643e <__swsetup_r+0x36>
 8006424:	6920      	ldr	r0, [r4, #16]
 8006426:	b1a8      	cbz	r0, 8006454 <__swsetup_r+0x4c>
 8006428:	f013 0201 	ands.w	r2, r3, #1
 800642c:	d020      	beq.n	8006470 <__swsetup_r+0x68>
 800642e:	6963      	ldr	r3, [r4, #20]
 8006430:	2200      	movs	r2, #0
 8006432:	425b      	negs	r3, r3
 8006434:	61a3      	str	r3, [r4, #24]
 8006436:	60a2      	str	r2, [r4, #8]
 8006438:	b300      	cbz	r0, 800647c <__swsetup_r+0x74>
 800643a:	2000      	movs	r0, #0
 800643c:	bd38      	pop	{r3, r4, r5, pc}
 800643e:	06d9      	lsls	r1, r3, #27
 8006440:	d53e      	bpl.n	80064c0 <__swsetup_r+0xb8>
 8006442:	0758      	lsls	r0, r3, #29
 8006444:	d428      	bmi.n	8006498 <__swsetup_r+0x90>
 8006446:	6920      	ldr	r0, [r4, #16]
 8006448:	f042 0308 	orr.w	r3, r2, #8
 800644c:	81a3      	strh	r3, [r4, #12]
 800644e:	b29b      	uxth	r3, r3
 8006450:	2800      	cmp	r0, #0
 8006452:	d1e9      	bne.n	8006428 <__swsetup_r+0x20>
 8006454:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8006458:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800645c:	d0e4      	beq.n	8006428 <__swsetup_r+0x20>
 800645e:	4628      	mov	r0, r5
 8006460:	4621      	mov	r1, r4
 8006462:	f001 fc71 	bl	8007d48 <__smakebuf_r>
 8006466:	89a3      	ldrh	r3, [r4, #12]
 8006468:	6920      	ldr	r0, [r4, #16]
 800646a:	f013 0201 	ands.w	r2, r3, #1
 800646e:	d1de      	bne.n	800642e <__swsetup_r+0x26>
 8006470:	0799      	lsls	r1, r3, #30
 8006472:	bf58      	it	pl
 8006474:	6962      	ldrpl	r2, [r4, #20]
 8006476:	60a2      	str	r2, [r4, #8]
 8006478:	2800      	cmp	r0, #0
 800647a:	d1de      	bne.n	800643a <__swsetup_r+0x32>
 800647c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006480:	061a      	lsls	r2, r3, #24
 8006482:	d5db      	bpl.n	800643c <__swsetup_r+0x34>
 8006484:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006488:	81a3      	strh	r3, [r4, #12]
 800648a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800648e:	bd38      	pop	{r3, r4, r5, pc}
 8006490:	4618      	mov	r0, r3
 8006492:	f001 f8d7 	bl	8007644 <__sinit>
 8006496:	e7c0      	b.n	800641a <__swsetup_r+0x12>
 8006498:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800649a:	b151      	cbz	r1, 80064b2 <__swsetup_r+0xaa>
 800649c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80064a0:	4299      	cmp	r1, r3
 80064a2:	d004      	beq.n	80064ae <__swsetup_r+0xa6>
 80064a4:	4628      	mov	r0, r5
 80064a6:	f001 f96f 	bl	8007788 <_free_r>
 80064aa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80064ae:	2300      	movs	r3, #0
 80064b0:	6323      	str	r3, [r4, #48]	; 0x30
 80064b2:	2300      	movs	r3, #0
 80064b4:	6920      	ldr	r0, [r4, #16]
 80064b6:	6063      	str	r3, [r4, #4]
 80064b8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80064bc:	6020      	str	r0, [r4, #0]
 80064be:	e7c3      	b.n	8006448 <__swsetup_r+0x40>
 80064c0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80064c4:	2309      	movs	r3, #9
 80064c6:	602b      	str	r3, [r5, #0]
 80064c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80064cc:	81a2      	strh	r2, [r4, #12]
 80064ce:	bd38      	pop	{r3, r4, r5, pc}
 80064d0:	20000020 	.word	0x20000020

080064d4 <register_fini>:
 80064d4:	4b02      	ldr	r3, [pc, #8]	; (80064e0 <register_fini+0xc>)
 80064d6:	b113      	cbz	r3, 80064de <register_fini+0xa>
 80064d8:	4802      	ldr	r0, [pc, #8]	; (80064e4 <register_fini+0x10>)
 80064da:	f000 b805 	b.w	80064e8 <atexit>
 80064de:	4770      	bx	lr
 80064e0:	00000000 	.word	0x00000000
 80064e4:	080076b5 	.word	0x080076b5

080064e8 <atexit>:
 80064e8:	2300      	movs	r3, #0
 80064ea:	4601      	mov	r1, r0
 80064ec:	461a      	mov	r2, r3
 80064ee:	4618      	mov	r0, r3
 80064f0:	f002 bd58 	b.w	8008fa4 <__register_exitproc>

080064f4 <quorem>:
 80064f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80064f8:	6903      	ldr	r3, [r0, #16]
 80064fa:	690f      	ldr	r7, [r1, #16]
 80064fc:	42bb      	cmp	r3, r7
 80064fe:	b083      	sub	sp, #12
 8006500:	f2c0 8086 	blt.w	8006610 <quorem+0x11c>
 8006504:	3f01      	subs	r7, #1
 8006506:	f101 0914 	add.w	r9, r1, #20
 800650a:	f100 0a14 	add.w	sl, r0, #20
 800650e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8006512:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8006516:	00bc      	lsls	r4, r7, #2
 8006518:	3201      	adds	r2, #1
 800651a:	fbb3 f8f2 	udiv	r8, r3, r2
 800651e:	eb0a 0304 	add.w	r3, sl, r4
 8006522:	9400      	str	r4, [sp, #0]
 8006524:	eb09 0b04 	add.w	fp, r9, r4
 8006528:	9301      	str	r3, [sp, #4]
 800652a:	f1b8 0f00 	cmp.w	r8, #0
 800652e:	d038      	beq.n	80065a2 <quorem+0xae>
 8006530:	2500      	movs	r5, #0
 8006532:	462e      	mov	r6, r5
 8006534:	46ce      	mov	lr, r9
 8006536:	46d4      	mov	ip, sl
 8006538:	f85e 4b04 	ldr.w	r4, [lr], #4
 800653c:	f8dc 3000 	ldr.w	r3, [ip]
 8006540:	b2a2      	uxth	r2, r4
 8006542:	fb08 5502 	mla	r5, r8, r2, r5
 8006546:	0c22      	lsrs	r2, r4, #16
 8006548:	0c2c      	lsrs	r4, r5, #16
 800654a:	fb08 4202 	mla	r2, r8, r2, r4
 800654e:	b2ad      	uxth	r5, r5
 8006550:	1b75      	subs	r5, r6, r5
 8006552:	b296      	uxth	r6, r2
 8006554:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8006558:	fa15 f383 	uxtah	r3, r5, r3
 800655c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8006560:	b29b      	uxth	r3, r3
 8006562:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8006566:	45f3      	cmp	fp, lr
 8006568:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800656c:	f84c 3b04 	str.w	r3, [ip], #4
 8006570:	ea4f 4626 	mov.w	r6, r6, asr #16
 8006574:	d2e0      	bcs.n	8006538 <quorem+0x44>
 8006576:	9b00      	ldr	r3, [sp, #0]
 8006578:	f85a 3003 	ldr.w	r3, [sl, r3]
 800657c:	b98b      	cbnz	r3, 80065a2 <quorem+0xae>
 800657e:	9a01      	ldr	r2, [sp, #4]
 8006580:	1f13      	subs	r3, r2, #4
 8006582:	459a      	cmp	sl, r3
 8006584:	d20c      	bcs.n	80065a0 <quorem+0xac>
 8006586:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800658a:	b94b      	cbnz	r3, 80065a0 <quorem+0xac>
 800658c:	f1a2 0308 	sub.w	r3, r2, #8
 8006590:	e002      	b.n	8006598 <quorem+0xa4>
 8006592:	681a      	ldr	r2, [r3, #0]
 8006594:	3b04      	subs	r3, #4
 8006596:	b91a      	cbnz	r2, 80065a0 <quorem+0xac>
 8006598:	459a      	cmp	sl, r3
 800659a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800659e:	d3f8      	bcc.n	8006592 <quorem+0x9e>
 80065a0:	6107      	str	r7, [r0, #16]
 80065a2:	4604      	mov	r4, r0
 80065a4:	f002 f944 	bl	8008830 <__mcmp>
 80065a8:	2800      	cmp	r0, #0
 80065aa:	db2d      	blt.n	8006608 <quorem+0x114>
 80065ac:	f108 0801 	add.w	r8, r8, #1
 80065b0:	4655      	mov	r5, sl
 80065b2:	2300      	movs	r3, #0
 80065b4:	f859 1b04 	ldr.w	r1, [r9], #4
 80065b8:	6828      	ldr	r0, [r5, #0]
 80065ba:	b28a      	uxth	r2, r1
 80065bc:	1a9a      	subs	r2, r3, r2
 80065be:	0c0b      	lsrs	r3, r1, #16
 80065c0:	fa12 f280 	uxtah	r2, r2, r0
 80065c4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80065c8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80065cc:	b292      	uxth	r2, r2
 80065ce:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80065d2:	45cb      	cmp	fp, r9
 80065d4:	f845 2b04 	str.w	r2, [r5], #4
 80065d8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80065dc:	d2ea      	bcs.n	80065b4 <quorem+0xc0>
 80065de:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80065e2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80065e6:	b97a      	cbnz	r2, 8006608 <quorem+0x114>
 80065e8:	1f1a      	subs	r2, r3, #4
 80065ea:	4592      	cmp	sl, r2
 80065ec:	d20b      	bcs.n	8006606 <quorem+0x112>
 80065ee:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80065f2:	b942      	cbnz	r2, 8006606 <quorem+0x112>
 80065f4:	3b08      	subs	r3, #8
 80065f6:	e002      	b.n	80065fe <quorem+0x10a>
 80065f8:	681a      	ldr	r2, [r3, #0]
 80065fa:	3b04      	subs	r3, #4
 80065fc:	b91a      	cbnz	r2, 8006606 <quorem+0x112>
 80065fe:	459a      	cmp	sl, r3
 8006600:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8006604:	d3f8      	bcc.n	80065f8 <quorem+0x104>
 8006606:	6127      	str	r7, [r4, #16]
 8006608:	4640      	mov	r0, r8
 800660a:	b003      	add	sp, #12
 800660c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006610:	2000      	movs	r0, #0
 8006612:	b003      	add	sp, #12
 8006614:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08006618 <_dtoa_r>:
 8006618:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800661c:	ec55 4b10 	vmov	r4, r5, d0
 8006620:	b09b      	sub	sp, #108	; 0x6c
 8006622:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8006624:	9102      	str	r1, [sp, #8]
 8006626:	4681      	mov	r9, r0
 8006628:	9207      	str	r2, [sp, #28]
 800662a:	9305      	str	r3, [sp, #20]
 800662c:	e9cd 4500 	strd	r4, r5, [sp]
 8006630:	b156      	cbz	r6, 8006648 <_dtoa_r+0x30>
 8006632:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8006634:	6072      	str	r2, [r6, #4]
 8006636:	2301      	movs	r3, #1
 8006638:	4093      	lsls	r3, r2
 800663a:	60b3      	str	r3, [r6, #8]
 800663c:	4631      	mov	r1, r6
 800663e:	f001 ff07 	bl	8008450 <_Bfree>
 8006642:	2300      	movs	r3, #0
 8006644:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8006648:	f1b5 0800 	subs.w	r8, r5, #0
 800664c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800664e:	bfb4      	ite	lt
 8006650:	2301      	movlt	r3, #1
 8006652:	2300      	movge	r3, #0
 8006654:	6013      	str	r3, [r2, #0]
 8006656:	4b76      	ldr	r3, [pc, #472]	; (8006830 <_dtoa_r+0x218>)
 8006658:	bfbc      	itt	lt
 800665a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800665e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8006662:	ea33 0308 	bics.w	r3, r3, r8
 8006666:	f000 80a6 	beq.w	80067b6 <_dtoa_r+0x19e>
 800666a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800666e:	2200      	movs	r2, #0
 8006670:	2300      	movs	r3, #0
 8006672:	4630      	mov	r0, r6
 8006674:	4639      	mov	r1, r7
 8006676:	f7fa fcc7 	bl	8001008 <__aeabi_dcmpeq>
 800667a:	4605      	mov	r5, r0
 800667c:	b178      	cbz	r0, 800669e <_dtoa_r+0x86>
 800667e:	9a05      	ldr	r2, [sp, #20]
 8006680:	2301      	movs	r3, #1
 8006682:	6013      	str	r3, [r2, #0]
 8006684:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006686:	2b00      	cmp	r3, #0
 8006688:	f000 80c0 	beq.w	800680c <_dtoa_r+0x1f4>
 800668c:	4b69      	ldr	r3, [pc, #420]	; (8006834 <_dtoa_r+0x21c>)
 800668e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8006690:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8006694:	6013      	str	r3, [r2, #0]
 8006696:	4658      	mov	r0, fp
 8006698:	b01b      	add	sp, #108	; 0x6c
 800669a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800669e:	aa18      	add	r2, sp, #96	; 0x60
 80066a0:	a919      	add	r1, sp, #100	; 0x64
 80066a2:	ec47 6b10 	vmov	d0, r6, r7
 80066a6:	4648      	mov	r0, r9
 80066a8:	f002 f954 	bl	8008954 <__d2b>
 80066ac:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80066b0:	4682      	mov	sl, r0
 80066b2:	f040 80a0 	bne.w	80067f6 <_dtoa_r+0x1de>
 80066b6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80066ba:	442c      	add	r4, r5
 80066bc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80066c0:	2b20      	cmp	r3, #32
 80066c2:	f340 842c 	ble.w	8006f1e <_dtoa_r+0x906>
 80066c6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80066ca:	fa08 f803 	lsl.w	r8, r8, r3
 80066ce:	9b00      	ldr	r3, [sp, #0]
 80066d0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80066d4:	fa23 f000 	lsr.w	r0, r3, r0
 80066d8:	ea48 0000 	orr.w	r0, r8, r0
 80066dc:	f7fa f9b2 	bl	8000a44 <__aeabi_ui2d>
 80066e0:	2301      	movs	r3, #1
 80066e2:	4606      	mov	r6, r0
 80066e4:	3c01      	subs	r4, #1
 80066e6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80066ea:	930f      	str	r3, [sp, #60]	; 0x3c
 80066ec:	4630      	mov	r0, r6
 80066ee:	4639      	mov	r1, r7
 80066f0:	2200      	movs	r2, #0
 80066f2:	4b51      	ldr	r3, [pc, #324]	; (8006838 <_dtoa_r+0x220>)
 80066f4:	f7fa f868 	bl	80007c8 <__aeabi_dsub>
 80066f8:	a347      	add	r3, pc, #284	; (adr r3, 8006818 <_dtoa_r+0x200>)
 80066fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80066fe:	f7fa fa1b 	bl	8000b38 <__aeabi_dmul>
 8006702:	a347      	add	r3, pc, #284	; (adr r3, 8006820 <_dtoa_r+0x208>)
 8006704:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006708:	f7fa f860 	bl	80007cc <__adddf3>
 800670c:	4606      	mov	r6, r0
 800670e:	4620      	mov	r0, r4
 8006710:	460f      	mov	r7, r1
 8006712:	f7fa f9a7 	bl	8000a64 <__aeabi_i2d>
 8006716:	a344      	add	r3, pc, #272	; (adr r3, 8006828 <_dtoa_r+0x210>)
 8006718:	e9d3 2300 	ldrd	r2, r3, [r3]
 800671c:	f7fa fa0c 	bl	8000b38 <__aeabi_dmul>
 8006720:	4602      	mov	r2, r0
 8006722:	460b      	mov	r3, r1
 8006724:	4630      	mov	r0, r6
 8006726:	4639      	mov	r1, r7
 8006728:	f7fa f850 	bl	80007cc <__adddf3>
 800672c:	4606      	mov	r6, r0
 800672e:	460f      	mov	r7, r1
 8006730:	f7fa fcb2 	bl	8001098 <__aeabi_d2iz>
 8006734:	2200      	movs	r2, #0
 8006736:	9006      	str	r0, [sp, #24]
 8006738:	2300      	movs	r3, #0
 800673a:	4630      	mov	r0, r6
 800673c:	4639      	mov	r1, r7
 800673e:	f7fa fc6d 	bl	800101c <__aeabi_dcmplt>
 8006742:	2800      	cmp	r0, #0
 8006744:	f040 8273 	bne.w	8006c2e <_dtoa_r+0x616>
 8006748:	9e06      	ldr	r6, [sp, #24]
 800674a:	2e16      	cmp	r6, #22
 800674c:	f200 825d 	bhi.w	8006c0a <_dtoa_r+0x5f2>
 8006750:	4b3a      	ldr	r3, [pc, #232]	; (800683c <_dtoa_r+0x224>)
 8006752:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8006756:	e9d3 0100 	ldrd	r0, r1, [r3]
 800675a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800675e:	f7fa fc7b 	bl	8001058 <__aeabi_dcmpgt>
 8006762:	2800      	cmp	r0, #0
 8006764:	f000 83d7 	beq.w	8006f16 <_dtoa_r+0x8fe>
 8006768:	1e73      	subs	r3, r6, #1
 800676a:	9306      	str	r3, [sp, #24]
 800676c:	2300      	movs	r3, #0
 800676e:	930d      	str	r3, [sp, #52]	; 0x34
 8006770:	1b2c      	subs	r4, r5, r4
 8006772:	f1b4 0801 	subs.w	r8, r4, #1
 8006776:	f100 8254 	bmi.w	8006c22 <_dtoa_r+0x60a>
 800677a:	2300      	movs	r3, #0
 800677c:	9308      	str	r3, [sp, #32]
 800677e:	9b06      	ldr	r3, [sp, #24]
 8006780:	2b00      	cmp	r3, #0
 8006782:	f2c0 8245 	blt.w	8006c10 <_dtoa_r+0x5f8>
 8006786:	4498      	add	r8, r3
 8006788:	930c      	str	r3, [sp, #48]	; 0x30
 800678a:	2300      	movs	r3, #0
 800678c:	930b      	str	r3, [sp, #44]	; 0x2c
 800678e:	9b02      	ldr	r3, [sp, #8]
 8006790:	2b09      	cmp	r3, #9
 8006792:	d85b      	bhi.n	800684c <_dtoa_r+0x234>
 8006794:	2b05      	cmp	r3, #5
 8006796:	f340 83c0 	ble.w	8006f1a <_dtoa_r+0x902>
 800679a:	3b04      	subs	r3, #4
 800679c:	9302      	str	r3, [sp, #8]
 800679e:	2500      	movs	r5, #0
 80067a0:	9b02      	ldr	r3, [sp, #8]
 80067a2:	3b02      	subs	r3, #2
 80067a4:	2b03      	cmp	r3, #3
 80067a6:	f200 8498 	bhi.w	80070da <_dtoa_r+0xac2>
 80067aa:	e8df f013 	tbh	[pc, r3, lsl #1]
 80067ae:	03df      	.short	0x03df
 80067b0:	03e803bf 	.word	0x03e803bf
 80067b4:	04f5      	.short	0x04f5
 80067b6:	9a05      	ldr	r2, [sp, #20]
 80067b8:	f242 730f 	movw	r3, #9999	; 0x270f
 80067bc:	6013      	str	r3, [r2, #0]
 80067be:	9b00      	ldr	r3, [sp, #0]
 80067c0:	b983      	cbnz	r3, 80067e4 <_dtoa_r+0x1cc>
 80067c2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80067c6:	b96b      	cbnz	r3, 80067e4 <_dtoa_r+0x1cc>
 80067c8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80067ca:	f8df b074 	ldr.w	fp, [pc, #116]	; 8006840 <_dtoa_r+0x228>
 80067ce:	2b00      	cmp	r3, #0
 80067d0:	f43f af61 	beq.w	8006696 <_dtoa_r+0x7e>
 80067d4:	f10b 0308 	add.w	r3, fp, #8
 80067d8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80067da:	4658      	mov	r0, fp
 80067dc:	6013      	str	r3, [r2, #0]
 80067de:	b01b      	add	sp, #108	; 0x6c
 80067e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80067e4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80067e6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8006844 <_dtoa_r+0x22c>
 80067ea:	2b00      	cmp	r3, #0
 80067ec:	f43f af53 	beq.w	8006696 <_dtoa_r+0x7e>
 80067f0:	f10b 0303 	add.w	r3, fp, #3
 80067f4:	e7f0      	b.n	80067d8 <_dtoa_r+0x1c0>
 80067f6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80067fa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80067fe:	950f      	str	r5, [sp, #60]	; 0x3c
 8006800:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8006804:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8006808:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800680a:	e76f      	b.n	80066ec <_dtoa_r+0xd4>
 800680c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8006848 <_dtoa_r+0x230>
 8006810:	4658      	mov	r0, fp
 8006812:	b01b      	add	sp, #108	; 0x6c
 8006814:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006818:	636f4361 	.word	0x636f4361
 800681c:	3fd287a7 	.word	0x3fd287a7
 8006820:	8b60c8b3 	.word	0x8b60c8b3
 8006824:	3fc68a28 	.word	0x3fc68a28
 8006828:	509f79fb 	.word	0x509f79fb
 800682c:	3fd34413 	.word	0x3fd34413
 8006830:	7ff00000 	.word	0x7ff00000
 8006834:	08009649 	.word	0x08009649
 8006838:	3ff80000 	.word	0x3ff80000
 800683c:	080096a8 	.word	0x080096a8
 8006840:	0800966c 	.word	0x0800966c
 8006844:	08009678 	.word	0x08009678
 8006848:	08009648 	.word	0x08009648
 800684c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8006850:	2501      	movs	r5, #1
 8006852:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8006856:	2300      	movs	r3, #0
 8006858:	9302      	str	r3, [sp, #8]
 800685a:	9307      	str	r3, [sp, #28]
 800685c:	2100      	movs	r1, #0
 800685e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8006862:	940e      	str	r4, [sp, #56]	; 0x38
 8006864:	4648      	mov	r0, r9
 8006866:	f001 fdcd 	bl	8008404 <_Balloc>
 800686a:	2c0e      	cmp	r4, #14
 800686c:	4683      	mov	fp, r0
 800686e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8006872:	f200 80fb 	bhi.w	8006a6c <_dtoa_r+0x454>
 8006876:	2d00      	cmp	r5, #0
 8006878:	f000 80f8 	beq.w	8006a6c <_dtoa_r+0x454>
 800687c:	ed9d 7b00 	vldr	d7, [sp]
 8006880:	9906      	ldr	r1, [sp, #24]
 8006882:	2900      	cmp	r1, #0
 8006884:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8006888:	f340 83e5 	ble.w	8007056 <_dtoa_r+0xa3e>
 800688c:	4b9d      	ldr	r3, [pc, #628]	; (8006b04 <_dtoa_r+0x4ec>)
 800688e:	f001 020f 	and.w	r2, r1, #15
 8006892:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006896:	ed93 7b00 	vldr	d7, [r3]
 800689a:	110c      	asrs	r4, r1, #4
 800689c:	06e2      	lsls	r2, r4, #27
 800689e:	ed8d 7b00 	vstr	d7, [sp]
 80068a2:	f140 849e 	bpl.w	80071e2 <_dtoa_r+0xbca>
 80068a6:	4b98      	ldr	r3, [pc, #608]	; (8006b08 <_dtoa_r+0x4f0>)
 80068a8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80068ac:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80068b0:	f7fa fa6c 	bl	8000d8c <__aeabi_ddiv>
 80068b4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80068b8:	f004 040f 	and.w	r4, r4, #15
 80068bc:	2603      	movs	r6, #3
 80068be:	b17c      	cbz	r4, 80068e0 <_dtoa_r+0x2c8>
 80068c0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80068c4:	4d90      	ldr	r5, [pc, #576]	; (8006b08 <_dtoa_r+0x4f0>)
 80068c6:	07e3      	lsls	r3, r4, #31
 80068c8:	d504      	bpl.n	80068d4 <_dtoa_r+0x2bc>
 80068ca:	e9d5 2300 	ldrd	r2, r3, [r5]
 80068ce:	f7fa f933 	bl	8000b38 <__aeabi_dmul>
 80068d2:	3601      	adds	r6, #1
 80068d4:	1064      	asrs	r4, r4, #1
 80068d6:	f105 0508 	add.w	r5, r5, #8
 80068da:	d1f4      	bne.n	80068c6 <_dtoa_r+0x2ae>
 80068dc:	e9cd 0100 	strd	r0, r1, [sp]
 80068e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80068e4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80068e8:	f7fa fa50 	bl	8000d8c <__aeabi_ddiv>
 80068ec:	e9cd 0100 	strd	r0, r1, [sp]
 80068f0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80068f2:	b143      	cbz	r3, 8006906 <_dtoa_r+0x2ee>
 80068f4:	2200      	movs	r2, #0
 80068f6:	4b85      	ldr	r3, [pc, #532]	; (8006b0c <_dtoa_r+0x4f4>)
 80068f8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80068fc:	f7fa fb8e 	bl	800101c <__aeabi_dcmplt>
 8006900:	2800      	cmp	r0, #0
 8006902:	f040 84ff 	bne.w	8007304 <_dtoa_r+0xcec>
 8006906:	4630      	mov	r0, r6
 8006908:	f7fa f8ac 	bl	8000a64 <__aeabi_i2d>
 800690c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006910:	f7fa f912 	bl	8000b38 <__aeabi_dmul>
 8006914:	4b7e      	ldr	r3, [pc, #504]	; (8006b10 <_dtoa_r+0x4f8>)
 8006916:	2200      	movs	r2, #0
 8006918:	f7f9 ff58 	bl	80007cc <__adddf3>
 800691c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800691e:	4606      	mov	r6, r0
 8006920:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8006924:	2b00      	cmp	r3, #0
 8006926:	f000 841c 	beq.w	8007162 <_dtoa_r+0xb4a>
 800692a:	9b06      	ldr	r3, [sp, #24]
 800692c:	9316      	str	r3, [sp, #88]	; 0x58
 800692e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006930:	9312      	str	r3, [sp, #72]	; 0x48
 8006932:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006936:	f7fa fbaf 	bl	8001098 <__aeabi_d2iz>
 800693a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800693c:	4b71      	ldr	r3, [pc, #452]	; (8006b04 <_dtoa_r+0x4ec>)
 800693e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006942:	ed13 7b02 	vldr	d7, [r3, #-8]
 8006946:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800694a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800694e:	f7fa f889 	bl	8000a64 <__aeabi_i2d>
 8006952:	460b      	mov	r3, r1
 8006954:	4602      	mov	r2, r0
 8006956:	e9dd 0100 	ldrd	r0, r1, [sp]
 800695a:	e9cd 6700 	strd	r6, r7, [sp]
 800695e:	f7f9 ff33 	bl	80007c8 <__aeabi_dsub>
 8006962:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006964:	b2ed      	uxtb	r5, r5
 8006966:	4606      	mov	r6, r0
 8006968:	460f      	mov	r7, r1
 800696a:	f10b 0401 	add.w	r4, fp, #1
 800696e:	2b00      	cmp	r3, #0
 8006970:	f000 8458 	beq.w	8007224 <_dtoa_r+0xc0c>
 8006974:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8006978:	2000      	movs	r0, #0
 800697a:	4966      	ldr	r1, [pc, #408]	; (8006b14 <_dtoa_r+0x4fc>)
 800697c:	f7fa fa06 	bl	8000d8c <__aeabi_ddiv>
 8006980:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006984:	f7f9 ff20 	bl	80007c8 <__aeabi_dsub>
 8006988:	f88b 5000 	strb.w	r5, [fp]
 800698c:	4632      	mov	r2, r6
 800698e:	463b      	mov	r3, r7
 8006990:	e9cd 0100 	strd	r0, r1, [sp]
 8006994:	f7fa fb60 	bl	8001058 <__aeabi_dcmpgt>
 8006998:	2800      	cmp	r0, #0
 800699a:	f040 8502 	bne.w	80073a2 <_dtoa_r+0xd8a>
 800699e:	4632      	mov	r2, r6
 80069a0:	463b      	mov	r3, r7
 80069a2:	2000      	movs	r0, #0
 80069a4:	4959      	ldr	r1, [pc, #356]	; (8006b0c <_dtoa_r+0x4f4>)
 80069a6:	f7f9 ff0f 	bl	80007c8 <__aeabi_dsub>
 80069aa:	4602      	mov	r2, r0
 80069ac:	460b      	mov	r3, r1
 80069ae:	e9dd 0100 	ldrd	r0, r1, [sp]
 80069b2:	f7fa fb51 	bl	8001058 <__aeabi_dcmpgt>
 80069b6:	2800      	cmp	r0, #0
 80069b8:	f040 84fb 	bne.w	80073b2 <_dtoa_r+0xd9a>
 80069bc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80069be:	2a01      	cmp	r2, #1
 80069c0:	d050      	beq.n	8006a64 <_dtoa_r+0x44c>
 80069c2:	445a      	add	r2, fp
 80069c4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80069c8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80069cc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80069d0:	4692      	mov	sl, r2
 80069d2:	46cb      	mov	fp, r9
 80069d4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80069d8:	e00c      	b.n	80069f4 <_dtoa_r+0x3dc>
 80069da:	2000      	movs	r0, #0
 80069dc:	494b      	ldr	r1, [pc, #300]	; (8006b0c <_dtoa_r+0x4f4>)
 80069de:	f7f9 fef3 	bl	80007c8 <__aeabi_dsub>
 80069e2:	4642      	mov	r2, r8
 80069e4:	464b      	mov	r3, r9
 80069e6:	f7fa fb19 	bl	800101c <__aeabi_dcmplt>
 80069ea:	2800      	cmp	r0, #0
 80069ec:	f040 84dc 	bne.w	80073a8 <_dtoa_r+0xd90>
 80069f0:	4554      	cmp	r4, sl
 80069f2:	d030      	beq.n	8006a56 <_dtoa_r+0x43e>
 80069f4:	4640      	mov	r0, r8
 80069f6:	4649      	mov	r1, r9
 80069f8:	2200      	movs	r2, #0
 80069fa:	4b47      	ldr	r3, [pc, #284]	; (8006b18 <_dtoa_r+0x500>)
 80069fc:	f7fa f89c 	bl	8000b38 <__aeabi_dmul>
 8006a00:	2200      	movs	r2, #0
 8006a02:	4b45      	ldr	r3, [pc, #276]	; (8006b18 <_dtoa_r+0x500>)
 8006a04:	4680      	mov	r8, r0
 8006a06:	4689      	mov	r9, r1
 8006a08:	4630      	mov	r0, r6
 8006a0a:	4639      	mov	r1, r7
 8006a0c:	f7fa f894 	bl	8000b38 <__aeabi_dmul>
 8006a10:	460f      	mov	r7, r1
 8006a12:	4606      	mov	r6, r0
 8006a14:	f7fa fb40 	bl	8001098 <__aeabi_d2iz>
 8006a18:	4605      	mov	r5, r0
 8006a1a:	f7fa f823 	bl	8000a64 <__aeabi_i2d>
 8006a1e:	4602      	mov	r2, r0
 8006a20:	460b      	mov	r3, r1
 8006a22:	4630      	mov	r0, r6
 8006a24:	4639      	mov	r1, r7
 8006a26:	f7f9 fecf 	bl	80007c8 <__aeabi_dsub>
 8006a2a:	3530      	adds	r5, #48	; 0x30
 8006a2c:	b2ed      	uxtb	r5, r5
 8006a2e:	4642      	mov	r2, r8
 8006a30:	464b      	mov	r3, r9
 8006a32:	f804 5b01 	strb.w	r5, [r4], #1
 8006a36:	4606      	mov	r6, r0
 8006a38:	460f      	mov	r7, r1
 8006a3a:	f7fa faef 	bl	800101c <__aeabi_dcmplt>
 8006a3e:	4632      	mov	r2, r6
 8006a40:	463b      	mov	r3, r7
 8006a42:	2800      	cmp	r0, #0
 8006a44:	d0c9      	beq.n	80069da <_dtoa_r+0x3c2>
 8006a46:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006a48:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8006a4c:	9306      	str	r3, [sp, #24]
 8006a4e:	46d9      	mov	r9, fp
 8006a50:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8006a54:	e236      	b.n	8006ec4 <_dtoa_r+0x8ac>
 8006a56:	46d9      	mov	r9, fp
 8006a58:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8006a5c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8006a60:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8006a64:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8006a68:	e9cd 3400 	strd	r3, r4, [sp]
 8006a6c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8006a6e:	2b00      	cmp	r3, #0
 8006a70:	f2c0 80ae 	blt.w	8006bd0 <_dtoa_r+0x5b8>
 8006a74:	9a06      	ldr	r2, [sp, #24]
 8006a76:	2a0e      	cmp	r2, #14
 8006a78:	f300 80aa 	bgt.w	8006bd0 <_dtoa_r+0x5b8>
 8006a7c:	4b21      	ldr	r3, [pc, #132]	; (8006b04 <_dtoa_r+0x4ec>)
 8006a7e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006a82:	ed93 7b00 	vldr	d7, [r3]
 8006a86:	9b07      	ldr	r3, [sp, #28]
 8006a88:	2b00      	cmp	r3, #0
 8006a8a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8006a8e:	f2c0 82be 	blt.w	800700e <_dtoa_r+0x9f6>
 8006a92:	e9dd 6700 	ldrd	r6, r7, [sp]
 8006a96:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006a9a:	4630      	mov	r0, r6
 8006a9c:	4639      	mov	r1, r7
 8006a9e:	f7fa f975 	bl	8000d8c <__aeabi_ddiv>
 8006aa2:	f7fa faf9 	bl	8001098 <__aeabi_d2iz>
 8006aa6:	4605      	mov	r5, r0
 8006aa8:	f7f9 ffdc 	bl	8000a64 <__aeabi_i2d>
 8006aac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006ab0:	f7fa f842 	bl	8000b38 <__aeabi_dmul>
 8006ab4:	460b      	mov	r3, r1
 8006ab6:	4602      	mov	r2, r0
 8006ab8:	4639      	mov	r1, r7
 8006aba:	4630      	mov	r0, r6
 8006abc:	f7f9 fe84 	bl	80007c8 <__aeabi_dsub>
 8006ac0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8006ac4:	f88b 3000 	strb.w	r3, [fp]
 8006ac8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006aca:	2b01      	cmp	r3, #1
 8006acc:	4606      	mov	r6, r0
 8006ace:	460f      	mov	r7, r1
 8006ad0:	f10b 0401 	add.w	r4, fp, #1
 8006ad4:	d053      	beq.n	8006b7e <_dtoa_r+0x566>
 8006ad6:	2200      	movs	r2, #0
 8006ad8:	4b0f      	ldr	r3, [pc, #60]	; (8006b18 <_dtoa_r+0x500>)
 8006ada:	f7fa f82d 	bl	8000b38 <__aeabi_dmul>
 8006ade:	2200      	movs	r2, #0
 8006ae0:	2300      	movs	r3, #0
 8006ae2:	4606      	mov	r6, r0
 8006ae4:	460f      	mov	r7, r1
 8006ae6:	f7fa fa8f 	bl	8001008 <__aeabi_dcmpeq>
 8006aea:	2800      	cmp	r0, #0
 8006aec:	f040 81ea 	bne.w	8006ec4 <_dtoa_r+0x8ac>
 8006af0:	f8cd a000 	str.w	sl, [sp]
 8006af4:	f8cd 901c 	str.w	r9, [sp, #28]
 8006af8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8006afc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8006b00:	e017      	b.n	8006b32 <_dtoa_r+0x51a>
 8006b02:	bf00      	nop
 8006b04:	080096a8 	.word	0x080096a8
 8006b08:	08009680 	.word	0x08009680
 8006b0c:	3ff00000 	.word	0x3ff00000
 8006b10:	401c0000 	.word	0x401c0000
 8006b14:	3fe00000 	.word	0x3fe00000
 8006b18:	40240000 	.word	0x40240000
 8006b1c:	f7fa f80c 	bl	8000b38 <__aeabi_dmul>
 8006b20:	2200      	movs	r2, #0
 8006b22:	2300      	movs	r3, #0
 8006b24:	4606      	mov	r6, r0
 8006b26:	460f      	mov	r7, r1
 8006b28:	f7fa fa6e 	bl	8001008 <__aeabi_dcmpeq>
 8006b2c:	2800      	cmp	r0, #0
 8006b2e:	f040 833d 	bne.w	80071ac <_dtoa_r+0xb94>
 8006b32:	464a      	mov	r2, r9
 8006b34:	4653      	mov	r3, sl
 8006b36:	4630      	mov	r0, r6
 8006b38:	4639      	mov	r1, r7
 8006b3a:	f7fa f927 	bl	8000d8c <__aeabi_ddiv>
 8006b3e:	f7fa faab 	bl	8001098 <__aeabi_d2iz>
 8006b42:	4605      	mov	r5, r0
 8006b44:	f7f9 ff8e 	bl	8000a64 <__aeabi_i2d>
 8006b48:	464a      	mov	r2, r9
 8006b4a:	4653      	mov	r3, sl
 8006b4c:	f7f9 fff4 	bl	8000b38 <__aeabi_dmul>
 8006b50:	4602      	mov	r2, r0
 8006b52:	460b      	mov	r3, r1
 8006b54:	4630      	mov	r0, r6
 8006b56:	4639      	mov	r1, r7
 8006b58:	f7f9 fe36 	bl	80007c8 <__aeabi_dsub>
 8006b5c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8006b60:	f804 cb01 	strb.w	ip, [r4], #1
 8006b64:	eba4 0c0b 	sub.w	ip, r4, fp
 8006b68:	45e0      	cmp	r8, ip
 8006b6a:	4606      	mov	r6, r0
 8006b6c:	460f      	mov	r7, r1
 8006b6e:	f04f 0200 	mov.w	r2, #0
 8006b72:	4bc1      	ldr	r3, [pc, #772]	; (8006e78 <_dtoa_r+0x860>)
 8006b74:	d1d2      	bne.n	8006b1c <_dtoa_r+0x504>
 8006b76:	f8dd a000 	ldr.w	sl, [sp]
 8006b7a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006b7e:	4632      	mov	r2, r6
 8006b80:	463b      	mov	r3, r7
 8006b82:	4630      	mov	r0, r6
 8006b84:	4639      	mov	r1, r7
 8006b86:	f7f9 fe21 	bl	80007cc <__adddf3>
 8006b8a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006b8e:	4606      	mov	r6, r0
 8006b90:	460f      	mov	r7, r1
 8006b92:	f7fa fa61 	bl	8001058 <__aeabi_dcmpgt>
 8006b96:	b958      	cbnz	r0, 8006bb0 <_dtoa_r+0x598>
 8006b98:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006b9c:	4630      	mov	r0, r6
 8006b9e:	4639      	mov	r1, r7
 8006ba0:	f7fa fa32 	bl	8001008 <__aeabi_dcmpeq>
 8006ba4:	2800      	cmp	r0, #0
 8006ba6:	f000 818d 	beq.w	8006ec4 <_dtoa_r+0x8ac>
 8006baa:	07e9      	lsls	r1, r5, #31
 8006bac:	f140 818a 	bpl.w	8006ec4 <_dtoa_r+0x8ac>
 8006bb0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8006bb4:	e005      	b.n	8006bc2 <_dtoa_r+0x5aa>
 8006bb6:	459b      	cmp	fp, r3
 8006bb8:	f000 8373 	beq.w	80072a2 <_dtoa_r+0xc8a>
 8006bbc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8006bc0:	461c      	mov	r4, r3
 8006bc2:	2d39      	cmp	r5, #57	; 0x39
 8006bc4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006bc8:	d0f5      	beq.n	8006bb6 <_dtoa_r+0x59e>
 8006bca:	3501      	adds	r5, #1
 8006bcc:	701d      	strb	r5, [r3, #0]
 8006bce:	e179      	b.n	8006ec4 <_dtoa_r+0x8ac>
 8006bd0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8006bd2:	2a00      	cmp	r2, #0
 8006bd4:	d03b      	beq.n	8006c4e <_dtoa_r+0x636>
 8006bd6:	9a02      	ldr	r2, [sp, #8]
 8006bd8:	2a01      	cmp	r2, #1
 8006bda:	f340 820b 	ble.w	8006ff4 <_dtoa_r+0x9dc>
 8006bde:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006be0:	1e5f      	subs	r7, r3, #1
 8006be2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006be4:	42bb      	cmp	r3, r7
 8006be6:	f2c0 82e6 	blt.w	80071b6 <_dtoa_r+0xb9e>
 8006bea:	1bdf      	subs	r7, r3, r7
 8006bec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006bee:	2b00      	cmp	r3, #0
 8006bf0:	f2c0 830b 	blt.w	800720a <_dtoa_r+0xbf2>
 8006bf4:	9a08      	ldr	r2, [sp, #32]
 8006bf6:	4614      	mov	r4, r2
 8006bf8:	441a      	add	r2, r3
 8006bfa:	4498      	add	r8, r3
 8006bfc:	9208      	str	r2, [sp, #32]
 8006bfe:	2101      	movs	r1, #1
 8006c00:	4648      	mov	r0, r9
 8006c02:	f001 fcbf 	bl	8008584 <__i2b>
 8006c06:	4605      	mov	r5, r0
 8006c08:	e024      	b.n	8006c54 <_dtoa_r+0x63c>
 8006c0a:	2301      	movs	r3, #1
 8006c0c:	930d      	str	r3, [sp, #52]	; 0x34
 8006c0e:	e5af      	b.n	8006770 <_dtoa_r+0x158>
 8006c10:	9a08      	ldr	r2, [sp, #32]
 8006c12:	9b06      	ldr	r3, [sp, #24]
 8006c14:	1ad2      	subs	r2, r2, r3
 8006c16:	425b      	negs	r3, r3
 8006c18:	930b      	str	r3, [sp, #44]	; 0x2c
 8006c1a:	2300      	movs	r3, #0
 8006c1c:	9208      	str	r2, [sp, #32]
 8006c1e:	930c      	str	r3, [sp, #48]	; 0x30
 8006c20:	e5b5      	b.n	800678e <_dtoa_r+0x176>
 8006c22:	f1c4 0301 	rsb	r3, r4, #1
 8006c26:	9308      	str	r3, [sp, #32]
 8006c28:	f04f 0800 	mov.w	r8, #0
 8006c2c:	e5a7      	b.n	800677e <_dtoa_r+0x166>
 8006c2e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8006c32:	4640      	mov	r0, r8
 8006c34:	f7f9 ff16 	bl	8000a64 <__aeabi_i2d>
 8006c38:	4632      	mov	r2, r6
 8006c3a:	463b      	mov	r3, r7
 8006c3c:	f7fa f9e4 	bl	8001008 <__aeabi_dcmpeq>
 8006c40:	2800      	cmp	r0, #0
 8006c42:	f47f ad81 	bne.w	8006748 <_dtoa_r+0x130>
 8006c46:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006c4a:	9306      	str	r3, [sp, #24]
 8006c4c:	e57c      	b.n	8006748 <_dtoa_r+0x130>
 8006c4e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8006c50:	9c08      	ldr	r4, [sp, #32]
 8006c52:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8006c54:	2c00      	cmp	r4, #0
 8006c56:	dd0c      	ble.n	8006c72 <_dtoa_r+0x65a>
 8006c58:	f1b8 0f00 	cmp.w	r8, #0
 8006c5c:	dd09      	ble.n	8006c72 <_dtoa_r+0x65a>
 8006c5e:	4544      	cmp	r4, r8
 8006c60:	9a08      	ldr	r2, [sp, #32]
 8006c62:	4623      	mov	r3, r4
 8006c64:	bfa8      	it	ge
 8006c66:	4643      	movge	r3, r8
 8006c68:	1ad2      	subs	r2, r2, r3
 8006c6a:	9208      	str	r2, [sp, #32]
 8006c6c:	1ae4      	subs	r4, r4, r3
 8006c6e:	eba8 0803 	sub.w	r8, r8, r3
 8006c72:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006c74:	b16b      	cbz	r3, 8006c92 <_dtoa_r+0x67a>
 8006c76:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8006c78:	2a00      	cmp	r2, #0
 8006c7a:	f000 8290 	beq.w	800719e <_dtoa_r+0xb86>
 8006c7e:	1bde      	subs	r6, r3, r7
 8006c80:	2f00      	cmp	r7, #0
 8006c82:	f040 819b 	bne.w	8006fbc <_dtoa_r+0x9a4>
 8006c86:	4651      	mov	r1, sl
 8006c88:	4632      	mov	r2, r6
 8006c8a:	4648      	mov	r0, r9
 8006c8c:	f001 fd2a 	bl	80086e4 <__pow5mult>
 8006c90:	4682      	mov	sl, r0
 8006c92:	2101      	movs	r1, #1
 8006c94:	4648      	mov	r0, r9
 8006c96:	f001 fc75 	bl	8008584 <__i2b>
 8006c9a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006c9c:	4606      	mov	r6, r0
 8006c9e:	2a00      	cmp	r2, #0
 8006ca0:	f040 8125 	bne.w	8006eee <_dtoa_r+0x8d6>
 8006ca4:	9b02      	ldr	r3, [sp, #8]
 8006ca6:	2b01      	cmp	r3, #1
 8006ca8:	f340 816c 	ble.w	8006f84 <_dtoa_r+0x96c>
 8006cac:	2001      	movs	r0, #1
 8006cae:	4440      	add	r0, r8
 8006cb0:	f010 001f 	ands.w	r0, r0, #31
 8006cb4:	f000 8119 	beq.w	8006eea <_dtoa_r+0x8d2>
 8006cb8:	f1c0 0320 	rsb	r3, r0, #32
 8006cbc:	2b04      	cmp	r3, #4
 8006cbe:	f340 83ac 	ble.w	800741a <_dtoa_r+0xe02>
 8006cc2:	f1c0 001c 	rsb	r0, r0, #28
 8006cc6:	9b08      	ldr	r3, [sp, #32]
 8006cc8:	4403      	add	r3, r0
 8006cca:	9308      	str	r3, [sp, #32]
 8006ccc:	4404      	add	r4, r0
 8006cce:	4480      	add	r8, r0
 8006cd0:	9b08      	ldr	r3, [sp, #32]
 8006cd2:	2b00      	cmp	r3, #0
 8006cd4:	dd05      	ble.n	8006ce2 <_dtoa_r+0x6ca>
 8006cd6:	4651      	mov	r1, sl
 8006cd8:	461a      	mov	r2, r3
 8006cda:	4648      	mov	r0, r9
 8006cdc:	f001 fd52 	bl	8008784 <__lshift>
 8006ce0:	4682      	mov	sl, r0
 8006ce2:	f1b8 0f00 	cmp.w	r8, #0
 8006ce6:	dd05      	ble.n	8006cf4 <_dtoa_r+0x6dc>
 8006ce8:	4631      	mov	r1, r6
 8006cea:	4642      	mov	r2, r8
 8006cec:	4648      	mov	r0, r9
 8006cee:	f001 fd49 	bl	8008784 <__lshift>
 8006cf2:	4606      	mov	r6, r0
 8006cf4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8006cf6:	2b00      	cmp	r3, #0
 8006cf8:	d177      	bne.n	8006dea <_dtoa_r+0x7d2>
 8006cfa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006cfc:	2b00      	cmp	r3, #0
 8006cfe:	f340 8209 	ble.w	8007114 <_dtoa_r+0xafc>
 8006d02:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006d04:	2b00      	cmp	r3, #0
 8006d06:	f000 8089 	beq.w	8006e1c <_dtoa_r+0x804>
 8006d0a:	2c00      	cmp	r4, #0
 8006d0c:	f300 816b 	bgt.w	8006fe6 <_dtoa_r+0x9ce>
 8006d10:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8006d12:	2b00      	cmp	r3, #0
 8006d14:	f040 81cd 	bne.w	80070b2 <_dtoa_r+0xa9a>
 8006d18:	46a8      	mov	r8, r5
 8006d1a:	9a00      	ldr	r2, [sp, #0]
 8006d1c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8006d20:	f002 0201 	and.w	r2, r2, #1
 8006d24:	920a      	str	r2, [sp, #40]	; 0x28
 8006d26:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8006d28:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8006d2c:	441a      	add	r2, r3
 8006d2e:	465f      	mov	r7, fp
 8006d30:	9209      	str	r2, [sp, #36]	; 0x24
 8006d32:	46b3      	mov	fp, r6
 8006d34:	4659      	mov	r1, fp
 8006d36:	4650      	mov	r0, sl
 8006d38:	f7ff fbdc 	bl	80064f4 <quorem>
 8006d3c:	4629      	mov	r1, r5
 8006d3e:	4604      	mov	r4, r0
 8006d40:	4650      	mov	r0, sl
 8006d42:	f001 fd75 	bl	8008830 <__mcmp>
 8006d46:	4659      	mov	r1, fp
 8006d48:	4606      	mov	r6, r0
 8006d4a:	4642      	mov	r2, r8
 8006d4c:	4648      	mov	r0, r9
 8006d4e:	f001 fd8b 	bl	8008868 <__mdiff>
 8006d52:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8006d56:	9300      	str	r3, [sp, #0]
 8006d58:	68c3      	ldr	r3, [r0, #12]
 8006d5a:	4601      	mov	r1, r0
 8006d5c:	2b00      	cmp	r3, #0
 8006d5e:	f040 81d4 	bne.w	800710a <_dtoa_r+0xaf2>
 8006d62:	9008      	str	r0, [sp, #32]
 8006d64:	4650      	mov	r0, sl
 8006d66:	f001 fd63 	bl	8008830 <__mcmp>
 8006d6a:	9a08      	ldr	r2, [sp, #32]
 8006d6c:	9007      	str	r0, [sp, #28]
 8006d6e:	4611      	mov	r1, r2
 8006d70:	4648      	mov	r0, r9
 8006d72:	f001 fb6d 	bl	8008450 <_Bfree>
 8006d76:	9b07      	ldr	r3, [sp, #28]
 8006d78:	b933      	cbnz	r3, 8006d88 <_dtoa_r+0x770>
 8006d7a:	9a02      	ldr	r2, [sp, #8]
 8006d7c:	b922      	cbnz	r2, 8006d88 <_dtoa_r+0x770>
 8006d7e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006d80:	2b00      	cmp	r3, #0
 8006d82:	f000 8319 	beq.w	80073b8 <_dtoa_r+0xda0>
 8006d86:	9b02      	ldr	r3, [sp, #8]
 8006d88:	2e00      	cmp	r6, #0
 8006d8a:	f2c0 821c 	blt.w	80071c6 <_dtoa_r+0xbae>
 8006d8e:	d105      	bne.n	8006d9c <_dtoa_r+0x784>
 8006d90:	9a02      	ldr	r2, [sp, #8]
 8006d92:	b91a      	cbnz	r2, 8006d9c <_dtoa_r+0x784>
 8006d94:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8006d96:	2a00      	cmp	r2, #0
 8006d98:	f000 8215 	beq.w	80071c6 <_dtoa_r+0xbae>
 8006d9c:	2b00      	cmp	r3, #0
 8006d9e:	f107 0401 	add.w	r4, r7, #1
 8006da2:	f300 8225 	bgt.w	80071f0 <_dtoa_r+0xbd8>
 8006da6:	9b00      	ldr	r3, [sp, #0]
 8006da8:	703b      	strb	r3, [r7, #0]
 8006daa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006dac:	42bb      	cmp	r3, r7
 8006dae:	f000 8230 	beq.w	8007212 <_dtoa_r+0xbfa>
 8006db2:	4651      	mov	r1, sl
 8006db4:	2300      	movs	r3, #0
 8006db6:	220a      	movs	r2, #10
 8006db8:	4648      	mov	r0, r9
 8006dba:	f001 fb53 	bl	8008464 <__multadd>
 8006dbe:	4545      	cmp	r5, r8
 8006dc0:	4682      	mov	sl, r0
 8006dc2:	4629      	mov	r1, r5
 8006dc4:	f04f 0300 	mov.w	r3, #0
 8006dc8:	f04f 020a 	mov.w	r2, #10
 8006dcc:	4648      	mov	r0, r9
 8006dce:	f000 8196 	beq.w	80070fe <_dtoa_r+0xae6>
 8006dd2:	f001 fb47 	bl	8008464 <__multadd>
 8006dd6:	4641      	mov	r1, r8
 8006dd8:	4605      	mov	r5, r0
 8006dda:	2300      	movs	r3, #0
 8006ddc:	220a      	movs	r2, #10
 8006dde:	4648      	mov	r0, r9
 8006de0:	f001 fb40 	bl	8008464 <__multadd>
 8006de4:	4627      	mov	r7, r4
 8006de6:	4680      	mov	r8, r0
 8006de8:	e7a4      	b.n	8006d34 <_dtoa_r+0x71c>
 8006dea:	4631      	mov	r1, r6
 8006dec:	4650      	mov	r0, sl
 8006dee:	f001 fd1f 	bl	8008830 <__mcmp>
 8006df2:	2800      	cmp	r0, #0
 8006df4:	da81      	bge.n	8006cfa <_dtoa_r+0x6e2>
 8006df6:	9f06      	ldr	r7, [sp, #24]
 8006df8:	4651      	mov	r1, sl
 8006dfa:	2300      	movs	r3, #0
 8006dfc:	220a      	movs	r2, #10
 8006dfe:	4648      	mov	r0, r9
 8006e00:	3f01      	subs	r7, #1
 8006e02:	9706      	str	r7, [sp, #24]
 8006e04:	f001 fb2e 	bl	8008464 <__multadd>
 8006e08:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006e0a:	4682      	mov	sl, r0
 8006e0c:	2b00      	cmp	r3, #0
 8006e0e:	f040 82eb 	bne.w	80073e8 <_dtoa_r+0xdd0>
 8006e12:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006e14:	2b00      	cmp	r3, #0
 8006e16:	f340 82f3 	ble.w	8007400 <_dtoa_r+0xde8>
 8006e1a:	9309      	str	r3, [sp, #36]	; 0x24
 8006e1c:	465c      	mov	r4, fp
 8006e1e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8006e22:	e002      	b.n	8006e2a <_dtoa_r+0x812>
 8006e24:	f001 fb1e 	bl	8008464 <__multadd>
 8006e28:	4682      	mov	sl, r0
 8006e2a:	4631      	mov	r1, r6
 8006e2c:	4650      	mov	r0, sl
 8006e2e:	f7ff fb61 	bl	80064f4 <quorem>
 8006e32:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8006e36:	f804 7b01 	strb.w	r7, [r4], #1
 8006e3a:	eba4 030b 	sub.w	r3, r4, fp
 8006e3e:	4598      	cmp	r8, r3
 8006e40:	f04f 020a 	mov.w	r2, #10
 8006e44:	f04f 0300 	mov.w	r3, #0
 8006e48:	4651      	mov	r1, sl
 8006e4a:	4648      	mov	r0, r9
 8006e4c:	dcea      	bgt.n	8006e24 <_dtoa_r+0x80c>
 8006e4e:	2300      	movs	r3, #0
 8006e50:	9700      	str	r7, [sp, #0]
 8006e52:	9302      	str	r3, [sp, #8]
 8006e54:	4651      	mov	r1, sl
 8006e56:	2201      	movs	r2, #1
 8006e58:	4648      	mov	r0, r9
 8006e5a:	f001 fc93 	bl	8008784 <__lshift>
 8006e5e:	4631      	mov	r1, r6
 8006e60:	4682      	mov	sl, r0
 8006e62:	f001 fce5 	bl	8008830 <__mcmp>
 8006e66:	2800      	cmp	r0, #0
 8006e68:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8006e6c:	dc14      	bgt.n	8006e98 <_dtoa_r+0x880>
 8006e6e:	d108      	bne.n	8006e82 <_dtoa_r+0x86a>
 8006e70:	9b00      	ldr	r3, [sp, #0]
 8006e72:	07db      	lsls	r3, r3, #31
 8006e74:	d410      	bmi.n	8006e98 <_dtoa_r+0x880>
 8006e76:	e004      	b.n	8006e82 <_dtoa_r+0x86a>
 8006e78:	40240000 	.word	0x40240000
 8006e7c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8006e80:	461c      	mov	r4, r3
 8006e82:	2a30      	cmp	r2, #48	; 0x30
 8006e84:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006e88:	d0f8      	beq.n	8006e7c <_dtoa_r+0x864>
 8006e8a:	e00b      	b.n	8006ea4 <_dtoa_r+0x88c>
 8006e8c:	459b      	cmp	fp, r3
 8006e8e:	f000 814e 	beq.w	800712e <_dtoa_r+0xb16>
 8006e92:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8006e96:	461c      	mov	r4, r3
 8006e98:	2a39      	cmp	r2, #57	; 0x39
 8006e9a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006e9e:	d0f5      	beq.n	8006e8c <_dtoa_r+0x874>
 8006ea0:	3201      	adds	r2, #1
 8006ea2:	701a      	strb	r2, [r3, #0]
 8006ea4:	4631      	mov	r1, r6
 8006ea6:	4648      	mov	r0, r9
 8006ea8:	f001 fad2 	bl	8008450 <_Bfree>
 8006eac:	b155      	cbz	r5, 8006ec4 <_dtoa_r+0x8ac>
 8006eae:	9902      	ldr	r1, [sp, #8]
 8006eb0:	b121      	cbz	r1, 8006ebc <_dtoa_r+0x8a4>
 8006eb2:	42a9      	cmp	r1, r5
 8006eb4:	d002      	beq.n	8006ebc <_dtoa_r+0x8a4>
 8006eb6:	4648      	mov	r0, r9
 8006eb8:	f001 faca 	bl	8008450 <_Bfree>
 8006ebc:	4629      	mov	r1, r5
 8006ebe:	4648      	mov	r0, r9
 8006ec0:	f001 fac6 	bl	8008450 <_Bfree>
 8006ec4:	4651      	mov	r1, sl
 8006ec6:	4648      	mov	r0, r9
 8006ec8:	f001 fac2 	bl	8008450 <_Bfree>
 8006ecc:	2200      	movs	r2, #0
 8006ece:	9b06      	ldr	r3, [sp, #24]
 8006ed0:	7022      	strb	r2, [r4, #0]
 8006ed2:	9a05      	ldr	r2, [sp, #20]
 8006ed4:	3301      	adds	r3, #1
 8006ed6:	6013      	str	r3, [r2, #0]
 8006ed8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006eda:	2b00      	cmp	r3, #0
 8006edc:	f43f abdb 	beq.w	8006696 <_dtoa_r+0x7e>
 8006ee0:	4658      	mov	r0, fp
 8006ee2:	601c      	str	r4, [r3, #0]
 8006ee4:	b01b      	add	sp, #108	; 0x6c
 8006ee6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006eea:	201c      	movs	r0, #28
 8006eec:	e6eb      	b.n	8006cc6 <_dtoa_r+0x6ae>
 8006eee:	4601      	mov	r1, r0
 8006ef0:	4648      	mov	r0, r9
 8006ef2:	f001 fbf7 	bl	80086e4 <__pow5mult>
 8006ef6:	9b02      	ldr	r3, [sp, #8]
 8006ef8:	2b01      	cmp	r3, #1
 8006efa:	4606      	mov	r6, r0
 8006efc:	f340 80d4 	ble.w	80070a8 <_dtoa_r+0xa90>
 8006f00:	2300      	movs	r3, #0
 8006f02:	930c      	str	r3, [sp, #48]	; 0x30
 8006f04:	6933      	ldr	r3, [r6, #16]
 8006f06:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8006f0a:	6918      	ldr	r0, [r3, #16]
 8006f0c:	f001 faea 	bl	80084e4 <__hi0bits>
 8006f10:	f1c0 0020 	rsb	r0, r0, #32
 8006f14:	e6cb      	b.n	8006cae <_dtoa_r+0x696>
 8006f16:	900d      	str	r0, [sp, #52]	; 0x34
 8006f18:	e42a      	b.n	8006770 <_dtoa_r+0x158>
 8006f1a:	2501      	movs	r5, #1
 8006f1c:	e440      	b.n	80067a0 <_dtoa_r+0x188>
 8006f1e:	f1c3 0820 	rsb	r8, r3, #32
 8006f22:	9b00      	ldr	r3, [sp, #0]
 8006f24:	fa03 f008 	lsl.w	r0, r3, r8
 8006f28:	f7ff bbd8 	b.w	80066dc <_dtoa_r+0xc4>
 8006f2c:	2300      	movs	r3, #0
 8006f2e:	930a      	str	r3, [sp, #40]	; 0x28
 8006f30:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8006f34:	4413      	add	r3, r2
 8006f36:	930e      	str	r3, [sp, #56]	; 0x38
 8006f38:	3301      	adds	r3, #1
 8006f3a:	2b01      	cmp	r3, #1
 8006f3c:	461e      	mov	r6, r3
 8006f3e:	9309      	str	r3, [sp, #36]	; 0x24
 8006f40:	bfb8      	it	lt
 8006f42:	2601      	movlt	r6, #1
 8006f44:	2100      	movs	r1, #0
 8006f46:	2e17      	cmp	r6, #23
 8006f48:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8006f4c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8006f4e:	f77f ac89 	ble.w	8006864 <_dtoa_r+0x24c>
 8006f52:	2201      	movs	r2, #1
 8006f54:	2304      	movs	r3, #4
 8006f56:	005b      	lsls	r3, r3, #1
 8006f58:	f103 0014 	add.w	r0, r3, #20
 8006f5c:	42b0      	cmp	r0, r6
 8006f5e:	4611      	mov	r1, r2
 8006f60:	f102 0201 	add.w	r2, r2, #1
 8006f64:	d9f7      	bls.n	8006f56 <_dtoa_r+0x93e>
 8006f66:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8006f6a:	e47b      	b.n	8006864 <_dtoa_r+0x24c>
 8006f6c:	2300      	movs	r3, #0
 8006f6e:	930a      	str	r3, [sp, #40]	; 0x28
 8006f70:	9e07      	ldr	r6, [sp, #28]
 8006f72:	2e00      	cmp	r6, #0
 8006f74:	f340 80e2 	ble.w	800713c <_dtoa_r+0xb24>
 8006f78:	960e      	str	r6, [sp, #56]	; 0x38
 8006f7a:	9609      	str	r6, [sp, #36]	; 0x24
 8006f7c:	e7e2      	b.n	8006f44 <_dtoa_r+0x92c>
 8006f7e:	2301      	movs	r3, #1
 8006f80:	930a      	str	r3, [sp, #40]	; 0x28
 8006f82:	e7f5      	b.n	8006f70 <_dtoa_r+0x958>
 8006f84:	9b00      	ldr	r3, [sp, #0]
 8006f86:	2b00      	cmp	r3, #0
 8006f88:	f47f ae90 	bne.w	8006cac <_dtoa_r+0x694>
 8006f8c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8006f90:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8006f94:	2b00      	cmp	r3, #0
 8006f96:	f040 8192 	bne.w	80072be <_dtoa_r+0xca6>
 8006f9a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8006f9e:	0d1b      	lsrs	r3, r3, #20
 8006fa0:	051b      	lsls	r3, r3, #20
 8006fa2:	b12b      	cbz	r3, 8006fb0 <_dtoa_r+0x998>
 8006fa4:	9b08      	ldr	r3, [sp, #32]
 8006fa6:	3301      	adds	r3, #1
 8006fa8:	9308      	str	r3, [sp, #32]
 8006faa:	f108 0801 	add.w	r8, r8, #1
 8006fae:	2301      	movs	r3, #1
 8006fb0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006fb2:	930c      	str	r3, [sp, #48]	; 0x30
 8006fb4:	2a00      	cmp	r2, #0
 8006fb6:	f43f ae79 	beq.w	8006cac <_dtoa_r+0x694>
 8006fba:	e7a3      	b.n	8006f04 <_dtoa_r+0x8ec>
 8006fbc:	463a      	mov	r2, r7
 8006fbe:	4629      	mov	r1, r5
 8006fc0:	4648      	mov	r0, r9
 8006fc2:	f001 fb8f 	bl	80086e4 <__pow5mult>
 8006fc6:	4652      	mov	r2, sl
 8006fc8:	4601      	mov	r1, r0
 8006fca:	4605      	mov	r5, r0
 8006fcc:	4648      	mov	r0, r9
 8006fce:	f001 fae3 	bl	8008598 <__multiply>
 8006fd2:	4651      	mov	r1, sl
 8006fd4:	4607      	mov	r7, r0
 8006fd6:	4648      	mov	r0, r9
 8006fd8:	f001 fa3a 	bl	8008450 <_Bfree>
 8006fdc:	46ba      	mov	sl, r7
 8006fde:	2e00      	cmp	r6, #0
 8006fe0:	f43f ae57 	beq.w	8006c92 <_dtoa_r+0x67a>
 8006fe4:	e64f      	b.n	8006c86 <_dtoa_r+0x66e>
 8006fe6:	4629      	mov	r1, r5
 8006fe8:	4622      	mov	r2, r4
 8006fea:	4648      	mov	r0, r9
 8006fec:	f001 fbca 	bl	8008784 <__lshift>
 8006ff0:	4605      	mov	r5, r0
 8006ff2:	e68d      	b.n	8006d10 <_dtoa_r+0x6f8>
 8006ff4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8006ff6:	2a00      	cmp	r2, #0
 8006ff8:	f000 815d 	beq.w	80072b6 <_dtoa_r+0xc9e>
 8006ffc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8007000:	9a08      	ldr	r2, [sp, #32]
 8007002:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007004:	4614      	mov	r4, r2
 8007006:	441a      	add	r2, r3
 8007008:	4498      	add	r8, r3
 800700a:	9208      	str	r2, [sp, #32]
 800700c:	e5f7      	b.n	8006bfe <_dtoa_r+0x5e6>
 800700e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007010:	2b00      	cmp	r3, #0
 8007012:	f73f ad3e 	bgt.w	8006a92 <_dtoa_r+0x47a>
 8007016:	f040 80bc 	bne.w	8007192 <_dtoa_r+0xb7a>
 800701a:	ec51 0b17 	vmov	r0, r1, d7
 800701e:	2200      	movs	r2, #0
 8007020:	4bb2      	ldr	r3, [pc, #712]	; (80072ec <_dtoa_r+0xcd4>)
 8007022:	f7f9 fd89 	bl	8000b38 <__aeabi_dmul>
 8007026:	e9dd 2300 	ldrd	r2, r3, [sp]
 800702a:	f7fa f80b 	bl	8001044 <__aeabi_dcmpge>
 800702e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8007030:	4635      	mov	r5, r6
 8007032:	2800      	cmp	r0, #0
 8007034:	d176      	bne.n	8007124 <_dtoa_r+0xb0c>
 8007036:	9a06      	ldr	r2, [sp, #24]
 8007038:	2331      	movs	r3, #49	; 0x31
 800703a:	3201      	adds	r2, #1
 800703c:	9206      	str	r2, [sp, #24]
 800703e:	f88b 3000 	strb.w	r3, [fp]
 8007042:	f10b 0401 	add.w	r4, fp, #1
 8007046:	4631      	mov	r1, r6
 8007048:	4648      	mov	r0, r9
 800704a:	f001 fa01 	bl	8008450 <_Bfree>
 800704e:	2d00      	cmp	r5, #0
 8007050:	f47f af34 	bne.w	8006ebc <_dtoa_r+0x8a4>
 8007054:	e736      	b.n	8006ec4 <_dtoa_r+0x8ac>
 8007056:	f000 8142 	beq.w	80072de <_dtoa_r+0xcc6>
 800705a:	9b06      	ldr	r3, [sp, #24]
 800705c:	425c      	negs	r4, r3
 800705e:	4ba4      	ldr	r3, [pc, #656]	; (80072f0 <_dtoa_r+0xcd8>)
 8007060:	f004 020f 	and.w	r2, r4, #15
 8007064:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007068:	e9d3 2300 	ldrd	r2, r3, [r3]
 800706c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8007070:	f7f9 fd62 	bl	8000b38 <__aeabi_dmul>
 8007074:	1124      	asrs	r4, r4, #4
 8007076:	e9cd 0100 	strd	r0, r1, [sp]
 800707a:	f000 81c6 	beq.w	800740a <_dtoa_r+0xdf2>
 800707e:	4d9d      	ldr	r5, [pc, #628]	; (80072f4 <_dtoa_r+0xcdc>)
 8007080:	2300      	movs	r3, #0
 8007082:	2602      	movs	r6, #2
 8007084:	07e7      	lsls	r7, r4, #31
 8007086:	d505      	bpl.n	8007094 <_dtoa_r+0xa7c>
 8007088:	e9d5 2300 	ldrd	r2, r3, [r5]
 800708c:	f7f9 fd54 	bl	8000b38 <__aeabi_dmul>
 8007090:	3601      	adds	r6, #1
 8007092:	2301      	movs	r3, #1
 8007094:	1064      	asrs	r4, r4, #1
 8007096:	f105 0508 	add.w	r5, r5, #8
 800709a:	d1f3      	bne.n	8007084 <_dtoa_r+0xa6c>
 800709c:	2b00      	cmp	r3, #0
 800709e:	f43f ac27 	beq.w	80068f0 <_dtoa_r+0x2d8>
 80070a2:	e9cd 0100 	strd	r0, r1, [sp]
 80070a6:	e423      	b.n	80068f0 <_dtoa_r+0x2d8>
 80070a8:	9b00      	ldr	r3, [sp, #0]
 80070aa:	2b00      	cmp	r3, #0
 80070ac:	f43f af6e 	beq.w	8006f8c <_dtoa_r+0x974>
 80070b0:	e726      	b.n	8006f00 <_dtoa_r+0x8e8>
 80070b2:	6869      	ldr	r1, [r5, #4]
 80070b4:	4648      	mov	r0, r9
 80070b6:	f001 f9a5 	bl	8008404 <_Balloc>
 80070ba:	692b      	ldr	r3, [r5, #16]
 80070bc:	3302      	adds	r3, #2
 80070be:	009a      	lsls	r2, r3, #2
 80070c0:	4604      	mov	r4, r0
 80070c2:	f105 010c 	add.w	r1, r5, #12
 80070c6:	300c      	adds	r0, #12
 80070c8:	f7f9 fa1a 	bl	8000500 <memcpy>
 80070cc:	4621      	mov	r1, r4
 80070ce:	2201      	movs	r2, #1
 80070d0:	4648      	mov	r0, r9
 80070d2:	f001 fb57 	bl	8008784 <__lshift>
 80070d6:	4680      	mov	r8, r0
 80070d8:	e61f      	b.n	8006d1a <_dtoa_r+0x702>
 80070da:	2400      	movs	r4, #0
 80070dc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80070e0:	4621      	mov	r1, r4
 80070e2:	4648      	mov	r0, r9
 80070e4:	f001 f98e 	bl	8008404 <_Balloc>
 80070e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80070ec:	930e      	str	r3, [sp, #56]	; 0x38
 80070ee:	9309      	str	r3, [sp, #36]	; 0x24
 80070f0:	2301      	movs	r3, #1
 80070f2:	4683      	mov	fp, r0
 80070f4:	9407      	str	r4, [sp, #28]
 80070f6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80070fa:	930a      	str	r3, [sp, #40]	; 0x28
 80070fc:	e4b6      	b.n	8006a6c <_dtoa_r+0x454>
 80070fe:	f001 f9b1 	bl	8008464 <__multadd>
 8007102:	4627      	mov	r7, r4
 8007104:	4605      	mov	r5, r0
 8007106:	4680      	mov	r8, r0
 8007108:	e614      	b.n	8006d34 <_dtoa_r+0x71c>
 800710a:	4648      	mov	r0, r9
 800710c:	f001 f9a0 	bl	8008450 <_Bfree>
 8007110:	2301      	movs	r3, #1
 8007112:	e639      	b.n	8006d88 <_dtoa_r+0x770>
 8007114:	9b02      	ldr	r3, [sp, #8]
 8007116:	2b02      	cmp	r3, #2
 8007118:	f77f adf3 	ble.w	8006d02 <_dtoa_r+0x6ea>
 800711c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800711e:	2b00      	cmp	r3, #0
 8007120:	f000 80cf 	beq.w	80072c2 <_dtoa_r+0xcaa>
 8007124:	9b07      	ldr	r3, [sp, #28]
 8007126:	43db      	mvns	r3, r3
 8007128:	9306      	str	r3, [sp, #24]
 800712a:	465c      	mov	r4, fp
 800712c:	e78b      	b.n	8007046 <_dtoa_r+0xa2e>
 800712e:	9a06      	ldr	r2, [sp, #24]
 8007130:	2331      	movs	r3, #49	; 0x31
 8007132:	3201      	adds	r2, #1
 8007134:	9206      	str	r2, [sp, #24]
 8007136:	f88b 3000 	strb.w	r3, [fp]
 800713a:	e6b3      	b.n	8006ea4 <_dtoa_r+0x88c>
 800713c:	2401      	movs	r4, #1
 800713e:	9409      	str	r4, [sp, #36]	; 0x24
 8007140:	9407      	str	r4, [sp, #28]
 8007142:	f7ff bb8b 	b.w	800685c <_dtoa_r+0x244>
 8007146:	4630      	mov	r0, r6
 8007148:	f7f9 fc8c 	bl	8000a64 <__aeabi_i2d>
 800714c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007150:	f7f9 fcf2 	bl	8000b38 <__aeabi_dmul>
 8007154:	2200      	movs	r2, #0
 8007156:	4b68      	ldr	r3, [pc, #416]	; (80072f8 <_dtoa_r+0xce0>)
 8007158:	f7f9 fb38 	bl	80007cc <__adddf3>
 800715c:	4606      	mov	r6, r0
 800715e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007162:	2200      	movs	r2, #0
 8007164:	4b61      	ldr	r3, [pc, #388]	; (80072ec <_dtoa_r+0xcd4>)
 8007166:	e9dd 0100 	ldrd	r0, r1, [sp]
 800716a:	f7f9 fb2d 	bl	80007c8 <__aeabi_dsub>
 800716e:	4632      	mov	r2, r6
 8007170:	463b      	mov	r3, r7
 8007172:	4604      	mov	r4, r0
 8007174:	460d      	mov	r5, r1
 8007176:	f7f9 ff6f 	bl	8001058 <__aeabi_dcmpgt>
 800717a:	2800      	cmp	r0, #0
 800717c:	d14f      	bne.n	800721e <_dtoa_r+0xc06>
 800717e:	4632      	mov	r2, r6
 8007180:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8007184:	4620      	mov	r0, r4
 8007186:	4629      	mov	r1, r5
 8007188:	f7f9 ff48 	bl	800101c <__aeabi_dcmplt>
 800718c:	2800      	cmp	r0, #0
 800718e:	f43f ac69 	beq.w	8006a64 <_dtoa_r+0x44c>
 8007192:	2600      	movs	r6, #0
 8007194:	4635      	mov	r5, r6
 8007196:	e7c5      	b.n	8007124 <_dtoa_r+0xb0c>
 8007198:	2301      	movs	r3, #1
 800719a:	930a      	str	r3, [sp, #40]	; 0x28
 800719c:	e6c8      	b.n	8006f30 <_dtoa_r+0x918>
 800719e:	4651      	mov	r1, sl
 80071a0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80071a2:	4648      	mov	r0, r9
 80071a4:	f001 fa9e 	bl	80086e4 <__pow5mult>
 80071a8:	4682      	mov	sl, r0
 80071aa:	e572      	b.n	8006c92 <_dtoa_r+0x67a>
 80071ac:	f8dd a000 	ldr.w	sl, [sp]
 80071b0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80071b4:	e686      	b.n	8006ec4 <_dtoa_r+0x8ac>
 80071b6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80071b8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80071ba:	1afb      	subs	r3, r7, r3
 80071bc:	441a      	add	r2, r3
 80071be:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80071c2:	2700      	movs	r7, #0
 80071c4:	e512      	b.n	8006bec <_dtoa_r+0x5d4>
 80071c6:	2b00      	cmp	r3, #0
 80071c8:	9402      	str	r4, [sp, #8]
 80071ca:	465e      	mov	r6, fp
 80071cc:	f107 0401 	add.w	r4, r7, #1
 80071d0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80071d4:	f300 80ba 	bgt.w	800734c <_dtoa_r+0xd34>
 80071d8:	9b00      	ldr	r3, [sp, #0]
 80071da:	9502      	str	r5, [sp, #8]
 80071dc:	703b      	strb	r3, [r7, #0]
 80071de:	4645      	mov	r5, r8
 80071e0:	e660      	b.n	8006ea4 <_dtoa_r+0x88c>
 80071e2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80071e6:	2602      	movs	r6, #2
 80071e8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80071ec:	f7ff bb67 	b.w	80068be <_dtoa_r+0x2a6>
 80071f0:	9b00      	ldr	r3, [sp, #0]
 80071f2:	2b39      	cmp	r3, #57	; 0x39
 80071f4:	465e      	mov	r6, fp
 80071f6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80071fa:	f000 80b9 	beq.w	8007370 <_dtoa_r+0xd58>
 80071fe:	9b00      	ldr	r3, [sp, #0]
 8007200:	9502      	str	r5, [sp, #8]
 8007202:	3301      	adds	r3, #1
 8007204:	703b      	strb	r3, [r7, #0]
 8007206:	4645      	mov	r5, r8
 8007208:	e64c      	b.n	8006ea4 <_dtoa_r+0x88c>
 800720a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800720e:	1a9c      	subs	r4, r3, r2
 8007210:	e4f5      	b.n	8006bfe <_dtoa_r+0x5e6>
 8007212:	465e      	mov	r6, fp
 8007214:	9502      	str	r5, [sp, #8]
 8007216:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800721a:	4645      	mov	r5, r8
 800721c:	e61a      	b.n	8006e54 <_dtoa_r+0x83c>
 800721e:	2600      	movs	r6, #0
 8007220:	4635      	mov	r5, r6
 8007222:	e708      	b.n	8007036 <_dtoa_r+0xa1e>
 8007224:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007228:	e9dd 0100 	ldrd	r0, r1, [sp]
 800722c:	f7f9 fc84 	bl	8000b38 <__aeabi_dmul>
 8007230:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8007232:	f88b 5000 	strb.w	r5, [fp]
 8007236:	2b01      	cmp	r3, #1
 8007238:	e9cd 0100 	strd	r0, r1, [sp]
 800723c:	d020      	beq.n	8007280 <_dtoa_r+0xc68>
 800723e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8007240:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8007244:	445b      	add	r3, fp
 8007246:	4698      	mov	r8, r3
 8007248:	2200      	movs	r2, #0
 800724a:	4b2c      	ldr	r3, [pc, #176]	; (80072fc <_dtoa_r+0xce4>)
 800724c:	4630      	mov	r0, r6
 800724e:	4639      	mov	r1, r7
 8007250:	f7f9 fc72 	bl	8000b38 <__aeabi_dmul>
 8007254:	460f      	mov	r7, r1
 8007256:	4606      	mov	r6, r0
 8007258:	f7f9 ff1e 	bl	8001098 <__aeabi_d2iz>
 800725c:	4605      	mov	r5, r0
 800725e:	f7f9 fc01 	bl	8000a64 <__aeabi_i2d>
 8007262:	3530      	adds	r5, #48	; 0x30
 8007264:	4602      	mov	r2, r0
 8007266:	460b      	mov	r3, r1
 8007268:	4630      	mov	r0, r6
 800726a:	4639      	mov	r1, r7
 800726c:	f7f9 faac 	bl	80007c8 <__aeabi_dsub>
 8007270:	f804 5b01 	strb.w	r5, [r4], #1
 8007274:	4544      	cmp	r4, r8
 8007276:	4606      	mov	r6, r0
 8007278:	460f      	mov	r7, r1
 800727a:	d1e5      	bne.n	8007248 <_dtoa_r+0xc30>
 800727c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8007280:	4b1f      	ldr	r3, [pc, #124]	; (8007300 <_dtoa_r+0xce8>)
 8007282:	2200      	movs	r2, #0
 8007284:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007288:	f7f9 faa0 	bl	80007cc <__adddf3>
 800728c:	4632      	mov	r2, r6
 800728e:	463b      	mov	r3, r7
 8007290:	f7f9 fec4 	bl	800101c <__aeabi_dcmplt>
 8007294:	2800      	cmp	r0, #0
 8007296:	d070      	beq.n	800737a <_dtoa_r+0xd62>
 8007298:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800729a:	9306      	str	r3, [sp, #24]
 800729c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80072a0:	e48f      	b.n	8006bc2 <_dtoa_r+0x5aa>
 80072a2:	2330      	movs	r3, #48	; 0x30
 80072a4:	f88b 3000 	strb.w	r3, [fp]
 80072a8:	9b06      	ldr	r3, [sp, #24]
 80072aa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80072ae:	3301      	adds	r3, #1
 80072b0:	9306      	str	r3, [sp, #24]
 80072b2:	465b      	mov	r3, fp
 80072b4:	e489      	b.n	8006bca <_dtoa_r+0x5b2>
 80072b6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80072b8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80072bc:	e6a0      	b.n	8007000 <_dtoa_r+0x9e8>
 80072be:	2300      	movs	r3, #0
 80072c0:	e676      	b.n	8006fb0 <_dtoa_r+0x998>
 80072c2:	4631      	mov	r1, r6
 80072c4:	2205      	movs	r2, #5
 80072c6:	4648      	mov	r0, r9
 80072c8:	f001 f8cc 	bl	8008464 <__multadd>
 80072cc:	4601      	mov	r1, r0
 80072ce:	4606      	mov	r6, r0
 80072d0:	4650      	mov	r0, sl
 80072d2:	f001 faad 	bl	8008830 <__mcmp>
 80072d6:	2800      	cmp	r0, #0
 80072d8:	f73f aead 	bgt.w	8007036 <_dtoa_r+0xa1e>
 80072dc:	e722      	b.n	8007124 <_dtoa_r+0xb0c>
 80072de:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80072e2:	2602      	movs	r6, #2
 80072e4:	ed8d 7b00 	vstr	d7, [sp]
 80072e8:	f7ff bb02 	b.w	80068f0 <_dtoa_r+0x2d8>
 80072ec:	40140000 	.word	0x40140000
 80072f0:	080096a8 	.word	0x080096a8
 80072f4:	08009680 	.word	0x08009680
 80072f8:	401c0000 	.word	0x401c0000
 80072fc:	40240000 	.word	0x40240000
 8007300:	3fe00000 	.word	0x3fe00000
 8007304:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007306:	2b00      	cmp	r3, #0
 8007308:	f43f af1d 	beq.w	8007146 <_dtoa_r+0xb2e>
 800730c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800730e:	2c00      	cmp	r4, #0
 8007310:	f77f aba8 	ble.w	8006a64 <_dtoa_r+0x44c>
 8007314:	2200      	movs	r2, #0
 8007316:	4b45      	ldr	r3, [pc, #276]	; (800742c <_dtoa_r+0xe14>)
 8007318:	e9dd 0100 	ldrd	r0, r1, [sp]
 800731c:	f7f9 fc0c 	bl	8000b38 <__aeabi_dmul>
 8007320:	e9cd 0100 	strd	r0, r1, [sp]
 8007324:	1c70      	adds	r0, r6, #1
 8007326:	f7f9 fb9d 	bl	8000a64 <__aeabi_i2d>
 800732a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800732e:	f7f9 fc03 	bl	8000b38 <__aeabi_dmul>
 8007332:	4b3f      	ldr	r3, [pc, #252]	; (8007430 <_dtoa_r+0xe18>)
 8007334:	2200      	movs	r2, #0
 8007336:	f7f9 fa49 	bl	80007cc <__adddf3>
 800733a:	9b06      	ldr	r3, [sp, #24]
 800733c:	9412      	str	r4, [sp, #72]	; 0x48
 800733e:	3b01      	subs	r3, #1
 8007340:	4606      	mov	r6, r0
 8007342:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007346:	9316      	str	r3, [sp, #88]	; 0x58
 8007348:	f7ff baf3 	b.w	8006932 <_dtoa_r+0x31a>
 800734c:	4651      	mov	r1, sl
 800734e:	2201      	movs	r2, #1
 8007350:	4648      	mov	r0, r9
 8007352:	f001 fa17 	bl	8008784 <__lshift>
 8007356:	4631      	mov	r1, r6
 8007358:	4682      	mov	sl, r0
 800735a:	f001 fa69 	bl	8008830 <__mcmp>
 800735e:	2800      	cmp	r0, #0
 8007360:	dd3b      	ble.n	80073da <_dtoa_r+0xdc2>
 8007362:	9b00      	ldr	r3, [sp, #0]
 8007364:	2b39      	cmp	r3, #57	; 0x39
 8007366:	d003      	beq.n	8007370 <_dtoa_r+0xd58>
 8007368:	9b02      	ldr	r3, [sp, #8]
 800736a:	3331      	adds	r3, #49	; 0x31
 800736c:	9300      	str	r3, [sp, #0]
 800736e:	e733      	b.n	80071d8 <_dtoa_r+0xbc0>
 8007370:	2239      	movs	r2, #57	; 0x39
 8007372:	9502      	str	r5, [sp, #8]
 8007374:	703a      	strb	r2, [r7, #0]
 8007376:	4645      	mov	r5, r8
 8007378:	e58e      	b.n	8006e98 <_dtoa_r+0x880>
 800737a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800737e:	2000      	movs	r0, #0
 8007380:	492c      	ldr	r1, [pc, #176]	; (8007434 <_dtoa_r+0xe1c>)
 8007382:	f7f9 fa21 	bl	80007c8 <__aeabi_dsub>
 8007386:	4632      	mov	r2, r6
 8007388:	463b      	mov	r3, r7
 800738a:	f7f9 fe65 	bl	8001058 <__aeabi_dcmpgt>
 800738e:	b910      	cbnz	r0, 8007396 <_dtoa_r+0xd7e>
 8007390:	f7ff bb68 	b.w	8006a64 <_dtoa_r+0x44c>
 8007394:	4614      	mov	r4, r2
 8007396:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800739a:	2b30      	cmp	r3, #48	; 0x30
 800739c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80073a0:	d0f8      	beq.n	8007394 <_dtoa_r+0xd7c>
 80073a2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80073a4:	9306      	str	r3, [sp, #24]
 80073a6:	e58d      	b.n	8006ec4 <_dtoa_r+0x8ac>
 80073a8:	46d9      	mov	r9, fp
 80073aa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80073ae:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80073b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80073b4:	9306      	str	r3, [sp, #24]
 80073b6:	e404      	b.n	8006bc2 <_dtoa_r+0x5aa>
 80073b8:	9b00      	ldr	r3, [sp, #0]
 80073ba:	2b39      	cmp	r3, #57	; 0x39
 80073bc:	4621      	mov	r1, r4
 80073be:	4632      	mov	r2, r6
 80073c0:	f107 0401 	add.w	r4, r7, #1
 80073c4:	465e      	mov	r6, fp
 80073c6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80073ca:	d0d1      	beq.n	8007370 <_dtoa_r+0xd58>
 80073cc:	2a00      	cmp	r2, #0
 80073ce:	f77f af03 	ble.w	80071d8 <_dtoa_r+0xbc0>
 80073d2:	460b      	mov	r3, r1
 80073d4:	3331      	adds	r3, #49	; 0x31
 80073d6:	9300      	str	r3, [sp, #0]
 80073d8:	e6fe      	b.n	80071d8 <_dtoa_r+0xbc0>
 80073da:	f47f aefd 	bne.w	80071d8 <_dtoa_r+0xbc0>
 80073de:	9b00      	ldr	r3, [sp, #0]
 80073e0:	07da      	lsls	r2, r3, #31
 80073e2:	f57f aef9 	bpl.w	80071d8 <_dtoa_r+0xbc0>
 80073e6:	e7bc      	b.n	8007362 <_dtoa_r+0xd4a>
 80073e8:	4629      	mov	r1, r5
 80073ea:	2300      	movs	r3, #0
 80073ec:	220a      	movs	r2, #10
 80073ee:	4648      	mov	r0, r9
 80073f0:	f001 f838 	bl	8008464 <__multadd>
 80073f4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80073f6:	2b00      	cmp	r3, #0
 80073f8:	4605      	mov	r5, r0
 80073fa:	dd09      	ble.n	8007410 <_dtoa_r+0xdf8>
 80073fc:	9309      	str	r3, [sp, #36]	; 0x24
 80073fe:	e484      	b.n	8006d0a <_dtoa_r+0x6f2>
 8007400:	9b02      	ldr	r3, [sp, #8]
 8007402:	2b02      	cmp	r3, #2
 8007404:	dc0e      	bgt.n	8007424 <_dtoa_r+0xe0c>
 8007406:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007408:	e507      	b.n	8006e1a <_dtoa_r+0x802>
 800740a:	2602      	movs	r6, #2
 800740c:	f7ff ba70 	b.w	80068f0 <_dtoa_r+0x2d8>
 8007410:	9b02      	ldr	r3, [sp, #8]
 8007412:	2b02      	cmp	r3, #2
 8007414:	dc06      	bgt.n	8007424 <_dtoa_r+0xe0c>
 8007416:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007418:	e7f0      	b.n	80073fc <_dtoa_r+0xde4>
 800741a:	f43f ac59 	beq.w	8006cd0 <_dtoa_r+0x6b8>
 800741e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8007422:	e450      	b.n	8006cc6 <_dtoa_r+0x6ae>
 8007424:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007426:	9309      	str	r3, [sp, #36]	; 0x24
 8007428:	e678      	b.n	800711c <_dtoa_r+0xb04>
 800742a:	bf00      	nop
 800742c:	40240000 	.word	0x40240000
 8007430:	401c0000 	.word	0x401c0000
 8007434:	3fe00000 	.word	0x3fe00000

08007438 <__sflush_r>:
 8007438:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800743c:	b29a      	uxth	r2, r3
 800743e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007442:	460c      	mov	r4, r1
 8007444:	0711      	lsls	r1, r2, #28
 8007446:	4680      	mov	r8, r0
 8007448:	d444      	bmi.n	80074d4 <__sflush_r+0x9c>
 800744a:	6862      	ldr	r2, [r4, #4]
 800744c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8007450:	2a00      	cmp	r2, #0
 8007452:	81a3      	strh	r3, [r4, #12]
 8007454:	dd59      	ble.n	800750a <__sflush_r+0xd2>
 8007456:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007458:	2d00      	cmp	r5, #0
 800745a:	d053      	beq.n	8007504 <__sflush_r+0xcc>
 800745c:	2200      	movs	r2, #0
 800745e:	b29b      	uxth	r3, r3
 8007460:	f8d8 6000 	ldr.w	r6, [r8]
 8007464:	69e1      	ldr	r1, [r4, #28]
 8007466:	f8c8 2000 	str.w	r2, [r8]
 800746a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800746e:	f040 8083 	bne.w	8007578 <__sflush_r+0x140>
 8007472:	2301      	movs	r3, #1
 8007474:	4640      	mov	r0, r8
 8007476:	47a8      	blx	r5
 8007478:	1c42      	adds	r2, r0, #1
 800747a:	d04a      	beq.n	8007512 <__sflush_r+0xda>
 800747c:	89a3      	ldrh	r3, [r4, #12]
 800747e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007480:	69e1      	ldr	r1, [r4, #28]
 8007482:	075b      	lsls	r3, r3, #29
 8007484:	d505      	bpl.n	8007492 <__sflush_r+0x5a>
 8007486:	6862      	ldr	r2, [r4, #4]
 8007488:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800748a:	1a80      	subs	r0, r0, r2
 800748c:	b10b      	cbz	r3, 8007492 <__sflush_r+0x5a>
 800748e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8007490:	1ac0      	subs	r0, r0, r3
 8007492:	4602      	mov	r2, r0
 8007494:	2300      	movs	r3, #0
 8007496:	4640      	mov	r0, r8
 8007498:	47a8      	blx	r5
 800749a:	1c47      	adds	r7, r0, #1
 800749c:	d045      	beq.n	800752a <__sflush_r+0xf2>
 800749e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80074a2:	6922      	ldr	r2, [r4, #16]
 80074a4:	6022      	str	r2, [r4, #0]
 80074a6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80074aa:	2200      	movs	r2, #0
 80074ac:	81a3      	strh	r3, [r4, #12]
 80074ae:	04db      	lsls	r3, r3, #19
 80074b0:	6062      	str	r2, [r4, #4]
 80074b2:	d500      	bpl.n	80074b6 <__sflush_r+0x7e>
 80074b4:	6520      	str	r0, [r4, #80]	; 0x50
 80074b6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80074b8:	f8c8 6000 	str.w	r6, [r8]
 80074bc:	b311      	cbz	r1, 8007504 <__sflush_r+0xcc>
 80074be:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80074c2:	4299      	cmp	r1, r3
 80074c4:	d002      	beq.n	80074cc <__sflush_r+0x94>
 80074c6:	4640      	mov	r0, r8
 80074c8:	f000 f95e 	bl	8007788 <_free_r>
 80074cc:	2000      	movs	r0, #0
 80074ce:	6320      	str	r0, [r4, #48]	; 0x30
 80074d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80074d4:	6926      	ldr	r6, [r4, #16]
 80074d6:	b1ae      	cbz	r6, 8007504 <__sflush_r+0xcc>
 80074d8:	6825      	ldr	r5, [r4, #0]
 80074da:	6026      	str	r6, [r4, #0]
 80074dc:	0792      	lsls	r2, r2, #30
 80074de:	bf0c      	ite	eq
 80074e0:	6963      	ldreq	r3, [r4, #20]
 80074e2:	2300      	movne	r3, #0
 80074e4:	1bad      	subs	r5, r5, r6
 80074e6:	60a3      	str	r3, [r4, #8]
 80074e8:	e00a      	b.n	8007500 <__sflush_r+0xc8>
 80074ea:	462b      	mov	r3, r5
 80074ec:	4632      	mov	r2, r6
 80074ee:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80074f0:	69e1      	ldr	r1, [r4, #28]
 80074f2:	4640      	mov	r0, r8
 80074f4:	47b8      	blx	r7
 80074f6:	2800      	cmp	r0, #0
 80074f8:	eba5 0500 	sub.w	r5, r5, r0
 80074fc:	4406      	add	r6, r0
 80074fe:	dd2b      	ble.n	8007558 <__sflush_r+0x120>
 8007500:	2d00      	cmp	r5, #0
 8007502:	dcf2      	bgt.n	80074ea <__sflush_r+0xb2>
 8007504:	2000      	movs	r0, #0
 8007506:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800750a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800750c:	2a00      	cmp	r2, #0
 800750e:	dca2      	bgt.n	8007456 <__sflush_r+0x1e>
 8007510:	e7f8      	b.n	8007504 <__sflush_r+0xcc>
 8007512:	f8d8 3000 	ldr.w	r3, [r8]
 8007516:	2b00      	cmp	r3, #0
 8007518:	d0b0      	beq.n	800747c <__sflush_r+0x44>
 800751a:	2b1d      	cmp	r3, #29
 800751c:	d001      	beq.n	8007522 <__sflush_r+0xea>
 800751e:	2b16      	cmp	r3, #22
 8007520:	d12c      	bne.n	800757c <__sflush_r+0x144>
 8007522:	f8c8 6000 	str.w	r6, [r8]
 8007526:	2000      	movs	r0, #0
 8007528:	e7ed      	b.n	8007506 <__sflush_r+0xce>
 800752a:	f8d8 1000 	ldr.w	r1, [r8]
 800752e:	291d      	cmp	r1, #29
 8007530:	d81a      	bhi.n	8007568 <__sflush_r+0x130>
 8007532:	4b15      	ldr	r3, [pc, #84]	; (8007588 <__sflush_r+0x150>)
 8007534:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007538:	40cb      	lsrs	r3, r1
 800753a:	43db      	mvns	r3, r3
 800753c:	f013 0301 	ands.w	r3, r3, #1
 8007540:	d114      	bne.n	800756c <__sflush_r+0x134>
 8007542:	6925      	ldr	r5, [r4, #16]
 8007544:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8007548:	e9c4 5300 	strd	r5, r3, [r4]
 800754c:	04d5      	lsls	r5, r2, #19
 800754e:	81a2      	strh	r2, [r4, #12]
 8007550:	d5b1      	bpl.n	80074b6 <__sflush_r+0x7e>
 8007552:	2900      	cmp	r1, #0
 8007554:	d1af      	bne.n	80074b6 <__sflush_r+0x7e>
 8007556:	e7ad      	b.n	80074b4 <__sflush_r+0x7c>
 8007558:	89a3      	ldrh	r3, [r4, #12]
 800755a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800755e:	81a3      	strh	r3, [r4, #12]
 8007560:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007564:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007568:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800756c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8007570:	81a2      	strh	r2, [r4, #12]
 8007572:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007576:	e7c6      	b.n	8007506 <__sflush_r+0xce>
 8007578:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800757a:	e782      	b.n	8007482 <__sflush_r+0x4a>
 800757c:	89a3      	ldrh	r3, [r4, #12]
 800757e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007582:	81a3      	strh	r3, [r4, #12]
 8007584:	e7bf      	b.n	8007506 <__sflush_r+0xce>
 8007586:	bf00      	nop
 8007588:	20400001 	.word	0x20400001

0800758c <_fflush_r>:
 800758c:	b538      	push	{r3, r4, r5, lr}
 800758e:	460d      	mov	r5, r1
 8007590:	4604      	mov	r4, r0
 8007592:	b108      	cbz	r0, 8007598 <_fflush_r+0xc>
 8007594:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007596:	b1a3      	cbz	r3, 80075c2 <_fflush_r+0x36>
 8007598:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800759c:	b1b8      	cbz	r0, 80075ce <_fflush_r+0x42>
 800759e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80075a0:	07db      	lsls	r3, r3, #31
 80075a2:	d401      	bmi.n	80075a8 <_fflush_r+0x1c>
 80075a4:	0581      	lsls	r1, r0, #22
 80075a6:	d51a      	bpl.n	80075de <_fflush_r+0x52>
 80075a8:	4620      	mov	r0, r4
 80075aa:	4629      	mov	r1, r5
 80075ac:	f7ff ff44 	bl	8007438 <__sflush_r>
 80075b0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80075b2:	07da      	lsls	r2, r3, #31
 80075b4:	4604      	mov	r4, r0
 80075b6:	d402      	bmi.n	80075be <_fflush_r+0x32>
 80075b8:	89ab      	ldrh	r3, [r5, #12]
 80075ba:	059b      	lsls	r3, r3, #22
 80075bc:	d50a      	bpl.n	80075d4 <_fflush_r+0x48>
 80075be:	4620      	mov	r0, r4
 80075c0:	bd38      	pop	{r3, r4, r5, pc}
 80075c2:	f000 f83f 	bl	8007644 <__sinit>
 80075c6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80075ca:	2800      	cmp	r0, #0
 80075cc:	d1e7      	bne.n	800759e <_fflush_r+0x12>
 80075ce:	4604      	mov	r4, r0
 80075d0:	4620      	mov	r0, r4
 80075d2:	bd38      	pop	{r3, r4, r5, pc}
 80075d4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80075d6:	f000 fb87 	bl	8007ce8 <__retarget_lock_release_recursive>
 80075da:	4620      	mov	r0, r4
 80075dc:	bd38      	pop	{r3, r4, r5, pc}
 80075de:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80075e0:	f000 fb80 	bl	8007ce4 <__retarget_lock_acquire_recursive>
 80075e4:	e7e0      	b.n	80075a8 <_fflush_r+0x1c>
 80075e6:	bf00      	nop

080075e8 <std>:
 80075e8:	b510      	push	{r4, lr}
 80075ea:	2300      	movs	r3, #0
 80075ec:	4604      	mov	r4, r0
 80075ee:	8181      	strh	r1, [r0, #12]
 80075f0:	81c2      	strh	r2, [r0, #14]
 80075f2:	e9c0 3300 	strd	r3, r3, [r0]
 80075f6:	6083      	str	r3, [r0, #8]
 80075f8:	6643      	str	r3, [r0, #100]	; 0x64
 80075fa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80075fe:	6183      	str	r3, [r0, #24]
 8007600:	4619      	mov	r1, r3
 8007602:	2208      	movs	r2, #8
 8007604:	305c      	adds	r0, #92	; 0x5c
 8007606:	f7fd f8c9 	bl	800479c <memset>
 800760a:	4807      	ldr	r0, [pc, #28]	; (8007628 <std+0x40>)
 800760c:	4907      	ldr	r1, [pc, #28]	; (800762c <std+0x44>)
 800760e:	4a08      	ldr	r2, [pc, #32]	; (8007630 <std+0x48>)
 8007610:	4b08      	ldr	r3, [pc, #32]	; (8007634 <std+0x4c>)
 8007612:	62e3      	str	r3, [r4, #44]	; 0x2c
 8007614:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8007618:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800761c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8007620:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8007624:	f000 bb5a 	b.w	8007cdc <__retarget_lock_init_recursive>
 8007628:	08008e01 	.word	0x08008e01
 800762c:	08008e25 	.word	0x08008e25
 8007630:	08008e61 	.word	0x08008e61
 8007634:	08008e81 	.word	0x08008e81

08007638 <_cleanup_r>:
 8007638:	4901      	ldr	r1, [pc, #4]	; (8007640 <_cleanup_r+0x8>)
 800763a:	f000 bb17 	b.w	8007c6c <_fwalk_reent>
 800763e:	bf00      	nop
 8007640:	080090f1 	.word	0x080090f1

08007644 <__sinit>:
 8007644:	b510      	push	{r4, lr}
 8007646:	4604      	mov	r4, r0
 8007648:	4812      	ldr	r0, [pc, #72]	; (8007694 <__sinit+0x50>)
 800764a:	f000 fb4b 	bl	8007ce4 <__retarget_lock_acquire_recursive>
 800764e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8007650:	b9d2      	cbnz	r2, 8007688 <__sinit+0x44>
 8007652:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8007656:	4810      	ldr	r0, [pc, #64]	; (8007698 <__sinit+0x54>)
 8007658:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800765c:	2103      	movs	r1, #3
 800765e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8007662:	63e0      	str	r0, [r4, #60]	; 0x3c
 8007664:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8007668:	6860      	ldr	r0, [r4, #4]
 800766a:	2104      	movs	r1, #4
 800766c:	f7ff ffbc 	bl	80075e8 <std>
 8007670:	2201      	movs	r2, #1
 8007672:	2109      	movs	r1, #9
 8007674:	68a0      	ldr	r0, [r4, #8]
 8007676:	f7ff ffb7 	bl	80075e8 <std>
 800767a:	2202      	movs	r2, #2
 800767c:	2112      	movs	r1, #18
 800767e:	68e0      	ldr	r0, [r4, #12]
 8007680:	f7ff ffb2 	bl	80075e8 <std>
 8007684:	2301      	movs	r3, #1
 8007686:	63a3      	str	r3, [r4, #56]	; 0x38
 8007688:	4802      	ldr	r0, [pc, #8]	; (8007694 <__sinit+0x50>)
 800768a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800768e:	f000 bb2b 	b.w	8007ce8 <__retarget_lock_release_recursive>
 8007692:	bf00      	nop
 8007694:	20000b38 	.word	0x20000b38
 8007698:	08007639 	.word	0x08007639

0800769c <__sfp_lock_acquire>:
 800769c:	4801      	ldr	r0, [pc, #4]	; (80076a4 <__sfp_lock_acquire+0x8>)
 800769e:	f000 bb21 	b.w	8007ce4 <__retarget_lock_acquire_recursive>
 80076a2:	bf00      	nop
 80076a4:	20000b4c 	.word	0x20000b4c

080076a8 <__sfp_lock_release>:
 80076a8:	4801      	ldr	r0, [pc, #4]	; (80076b0 <__sfp_lock_release+0x8>)
 80076aa:	f000 bb1d 	b.w	8007ce8 <__retarget_lock_release_recursive>
 80076ae:	bf00      	nop
 80076b0:	20000b4c 	.word	0x20000b4c

080076b4 <__libc_fini_array>:
 80076b4:	b538      	push	{r3, r4, r5, lr}
 80076b6:	4c0a      	ldr	r4, [pc, #40]	; (80076e0 <__libc_fini_array+0x2c>)
 80076b8:	4d0a      	ldr	r5, [pc, #40]	; (80076e4 <__libc_fini_array+0x30>)
 80076ba:	1b64      	subs	r4, r4, r5
 80076bc:	10a4      	asrs	r4, r4, #2
 80076be:	d00a      	beq.n	80076d6 <__libc_fini_array+0x22>
 80076c0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80076c4:	3b01      	subs	r3, #1
 80076c6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80076ca:	3c01      	subs	r4, #1
 80076cc:	f855 3904 	ldr.w	r3, [r5], #-4
 80076d0:	4798      	blx	r3
 80076d2:	2c00      	cmp	r4, #0
 80076d4:	d1f9      	bne.n	80076ca <__libc_fini_array+0x16>
 80076d6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80076da:	f001 befd 	b.w	80094d8 <_fini>
 80076de:	bf00      	nop
 80076e0:	080098a4 	.word	0x080098a4
 80076e4:	080098a0 	.word	0x080098a0

080076e8 <_malloc_trim_r>:
 80076e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80076ea:	4f24      	ldr	r7, [pc, #144]	; (800777c <_malloc_trim_r+0x94>)
 80076ec:	460c      	mov	r4, r1
 80076ee:	4606      	mov	r6, r0
 80076f0:	f000 fe7c 	bl	80083ec <__malloc_lock>
 80076f4:	68bb      	ldr	r3, [r7, #8]
 80076f6:	685d      	ldr	r5, [r3, #4]
 80076f8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80076fc:	310f      	adds	r1, #15
 80076fe:	f025 0503 	bic.w	r5, r5, #3
 8007702:	4429      	add	r1, r5
 8007704:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8007708:	f021 010f 	bic.w	r1, r1, #15
 800770c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8007710:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8007714:	db07      	blt.n	8007726 <_malloc_trim_r+0x3e>
 8007716:	2100      	movs	r1, #0
 8007718:	4630      	mov	r0, r6
 800771a:	f001 fb5f 	bl	8008ddc <_sbrk_r>
 800771e:	68bb      	ldr	r3, [r7, #8]
 8007720:	442b      	add	r3, r5
 8007722:	4298      	cmp	r0, r3
 8007724:	d004      	beq.n	8007730 <_malloc_trim_r+0x48>
 8007726:	4630      	mov	r0, r6
 8007728:	f000 fe66 	bl	80083f8 <__malloc_unlock>
 800772c:	2000      	movs	r0, #0
 800772e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007730:	4261      	negs	r1, r4
 8007732:	4630      	mov	r0, r6
 8007734:	f001 fb52 	bl	8008ddc <_sbrk_r>
 8007738:	3001      	adds	r0, #1
 800773a:	d00d      	beq.n	8007758 <_malloc_trim_r+0x70>
 800773c:	4b10      	ldr	r3, [pc, #64]	; (8007780 <_malloc_trim_r+0x98>)
 800773e:	68ba      	ldr	r2, [r7, #8]
 8007740:	6819      	ldr	r1, [r3, #0]
 8007742:	1b2d      	subs	r5, r5, r4
 8007744:	f045 0501 	orr.w	r5, r5, #1
 8007748:	4630      	mov	r0, r6
 800774a:	1b09      	subs	r1, r1, r4
 800774c:	6055      	str	r5, [r2, #4]
 800774e:	6019      	str	r1, [r3, #0]
 8007750:	f000 fe52 	bl	80083f8 <__malloc_unlock>
 8007754:	2001      	movs	r0, #1
 8007756:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007758:	2100      	movs	r1, #0
 800775a:	4630      	mov	r0, r6
 800775c:	f001 fb3e 	bl	8008ddc <_sbrk_r>
 8007760:	68ba      	ldr	r2, [r7, #8]
 8007762:	1a83      	subs	r3, r0, r2
 8007764:	2b0f      	cmp	r3, #15
 8007766:	ddde      	ble.n	8007726 <_malloc_trim_r+0x3e>
 8007768:	4c06      	ldr	r4, [pc, #24]	; (8007784 <_malloc_trim_r+0x9c>)
 800776a:	4905      	ldr	r1, [pc, #20]	; (8007780 <_malloc_trim_r+0x98>)
 800776c:	6824      	ldr	r4, [r4, #0]
 800776e:	f043 0301 	orr.w	r3, r3, #1
 8007772:	1b00      	subs	r0, r0, r4
 8007774:	6053      	str	r3, [r2, #4]
 8007776:	6008      	str	r0, [r1, #0]
 8007778:	e7d5      	b.n	8007726 <_malloc_trim_r+0x3e>
 800777a:	bf00      	nop
 800777c:	20000454 	.word	0x20000454
 8007780:	20000a78 	.word	0x20000a78
 8007784:	2000085c 	.word	0x2000085c

08007788 <_free_r>:
 8007788:	2900      	cmp	r1, #0
 800778a:	d053      	beq.n	8007834 <_free_r+0xac>
 800778c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800778e:	460c      	mov	r4, r1
 8007790:	4606      	mov	r6, r0
 8007792:	f000 fe2b 	bl	80083ec <__malloc_lock>
 8007796:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800779a:	4f71      	ldr	r7, [pc, #452]	; (8007960 <_free_r+0x1d8>)
 800779c:	f02c 0101 	bic.w	r1, ip, #1
 80077a0:	f1a4 0508 	sub.w	r5, r4, #8
 80077a4:	186b      	adds	r3, r5, r1
 80077a6:	68b8      	ldr	r0, [r7, #8]
 80077a8:	685a      	ldr	r2, [r3, #4]
 80077aa:	4298      	cmp	r0, r3
 80077ac:	f022 0203 	bic.w	r2, r2, #3
 80077b0:	d053      	beq.n	800785a <_free_r+0xd2>
 80077b2:	f01c 0f01 	tst.w	ip, #1
 80077b6:	605a      	str	r2, [r3, #4]
 80077b8:	eb03 0002 	add.w	r0, r3, r2
 80077bc:	d13b      	bne.n	8007836 <_free_r+0xae>
 80077be:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80077c2:	6840      	ldr	r0, [r0, #4]
 80077c4:	eba5 050c 	sub.w	r5, r5, ip
 80077c8:	f107 0e08 	add.w	lr, r7, #8
 80077cc:	68ac      	ldr	r4, [r5, #8]
 80077ce:	4574      	cmp	r4, lr
 80077d0:	4461      	add	r1, ip
 80077d2:	f000 0001 	and.w	r0, r0, #1
 80077d6:	d075      	beq.n	80078c4 <_free_r+0x13c>
 80077d8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80077dc:	f8c4 c00c 	str.w	ip, [r4, #12]
 80077e0:	f8cc 4008 	str.w	r4, [ip, #8]
 80077e4:	b360      	cbz	r0, 8007840 <_free_r+0xb8>
 80077e6:	f041 0301 	orr.w	r3, r1, #1
 80077ea:	606b      	str	r3, [r5, #4]
 80077ec:	5069      	str	r1, [r5, r1]
 80077ee:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80077f2:	d350      	bcc.n	8007896 <_free_r+0x10e>
 80077f4:	0a4b      	lsrs	r3, r1, #9
 80077f6:	2b04      	cmp	r3, #4
 80077f8:	d870      	bhi.n	80078dc <_free_r+0x154>
 80077fa:	098b      	lsrs	r3, r1, #6
 80077fc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8007800:	00e4      	lsls	r4, r4, #3
 8007802:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8007806:	1938      	adds	r0, r7, r4
 8007808:	593b      	ldr	r3, [r7, r4]
 800780a:	3808      	subs	r0, #8
 800780c:	4298      	cmp	r0, r3
 800780e:	d078      	beq.n	8007902 <_free_r+0x17a>
 8007810:	685a      	ldr	r2, [r3, #4]
 8007812:	f022 0203 	bic.w	r2, r2, #3
 8007816:	428a      	cmp	r2, r1
 8007818:	d971      	bls.n	80078fe <_free_r+0x176>
 800781a:	689b      	ldr	r3, [r3, #8]
 800781c:	4298      	cmp	r0, r3
 800781e:	d1f7      	bne.n	8007810 <_free_r+0x88>
 8007820:	68c3      	ldr	r3, [r0, #12]
 8007822:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8007826:	609d      	str	r5, [r3, #8]
 8007828:	60c5      	str	r5, [r0, #12]
 800782a:	4630      	mov	r0, r6
 800782c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007830:	f000 bde2 	b.w	80083f8 <__malloc_unlock>
 8007834:	4770      	bx	lr
 8007836:	6840      	ldr	r0, [r0, #4]
 8007838:	f000 0001 	and.w	r0, r0, #1
 800783c:	2800      	cmp	r0, #0
 800783e:	d1d2      	bne.n	80077e6 <_free_r+0x5e>
 8007840:	6898      	ldr	r0, [r3, #8]
 8007842:	4c48      	ldr	r4, [pc, #288]	; (8007964 <_free_r+0x1dc>)
 8007844:	4411      	add	r1, r2
 8007846:	42a0      	cmp	r0, r4
 8007848:	f041 0201 	orr.w	r2, r1, #1
 800784c:	d062      	beq.n	8007914 <_free_r+0x18c>
 800784e:	68db      	ldr	r3, [r3, #12]
 8007850:	60c3      	str	r3, [r0, #12]
 8007852:	6098      	str	r0, [r3, #8]
 8007854:	606a      	str	r2, [r5, #4]
 8007856:	5069      	str	r1, [r5, r1]
 8007858:	e7c9      	b.n	80077ee <_free_r+0x66>
 800785a:	f01c 0f01 	tst.w	ip, #1
 800785e:	440a      	add	r2, r1
 8007860:	d107      	bne.n	8007872 <_free_r+0xea>
 8007862:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8007866:	1aed      	subs	r5, r5, r3
 8007868:	441a      	add	r2, r3
 800786a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800786e:	60cb      	str	r3, [r1, #12]
 8007870:	6099      	str	r1, [r3, #8]
 8007872:	4b3d      	ldr	r3, [pc, #244]	; (8007968 <_free_r+0x1e0>)
 8007874:	681b      	ldr	r3, [r3, #0]
 8007876:	f042 0101 	orr.w	r1, r2, #1
 800787a:	4293      	cmp	r3, r2
 800787c:	6069      	str	r1, [r5, #4]
 800787e:	60bd      	str	r5, [r7, #8]
 8007880:	d804      	bhi.n	800788c <_free_r+0x104>
 8007882:	4b3a      	ldr	r3, [pc, #232]	; (800796c <_free_r+0x1e4>)
 8007884:	4630      	mov	r0, r6
 8007886:	6819      	ldr	r1, [r3, #0]
 8007888:	f7ff ff2e 	bl	80076e8 <_malloc_trim_r>
 800788c:	4630      	mov	r0, r6
 800788e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007892:	f000 bdb1 	b.w	80083f8 <__malloc_unlock>
 8007896:	08c9      	lsrs	r1, r1, #3
 8007898:	6878      	ldr	r0, [r7, #4]
 800789a:	1c4a      	adds	r2, r1, #1
 800789c:	2301      	movs	r3, #1
 800789e:	1089      	asrs	r1, r1, #2
 80078a0:	408b      	lsls	r3, r1
 80078a2:	4303      	orrs	r3, r0
 80078a4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80078a8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80078ac:	607b      	str	r3, [r7, #4]
 80078ae:	3908      	subs	r1, #8
 80078b0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80078b4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80078b8:	60c5      	str	r5, [r0, #12]
 80078ba:	4630      	mov	r0, r6
 80078bc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80078c0:	f000 bd9a 	b.w	80083f8 <__malloc_unlock>
 80078c4:	2800      	cmp	r0, #0
 80078c6:	d145      	bne.n	8007954 <_free_r+0x1cc>
 80078c8:	440a      	add	r2, r1
 80078ca:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80078ce:	f042 0001 	orr.w	r0, r2, #1
 80078d2:	60cb      	str	r3, [r1, #12]
 80078d4:	6099      	str	r1, [r3, #8]
 80078d6:	6068      	str	r0, [r5, #4]
 80078d8:	50aa      	str	r2, [r5, r2]
 80078da:	e7d7      	b.n	800788c <_free_r+0x104>
 80078dc:	2b14      	cmp	r3, #20
 80078de:	d908      	bls.n	80078f2 <_free_r+0x16a>
 80078e0:	2b54      	cmp	r3, #84	; 0x54
 80078e2:	d81e      	bhi.n	8007922 <_free_r+0x19a>
 80078e4:	0b0b      	lsrs	r3, r1, #12
 80078e6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80078ea:	00e4      	lsls	r4, r4, #3
 80078ec:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80078f0:	e789      	b.n	8007806 <_free_r+0x7e>
 80078f2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80078f6:	00e4      	lsls	r4, r4, #3
 80078f8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80078fc:	e783      	b.n	8007806 <_free_r+0x7e>
 80078fe:	4618      	mov	r0, r3
 8007900:	e78e      	b.n	8007820 <_free_r+0x98>
 8007902:	1093      	asrs	r3, r2, #2
 8007904:	6879      	ldr	r1, [r7, #4]
 8007906:	2201      	movs	r2, #1
 8007908:	fa02 f303 	lsl.w	r3, r2, r3
 800790c:	430b      	orrs	r3, r1
 800790e:	607b      	str	r3, [r7, #4]
 8007910:	4603      	mov	r3, r0
 8007912:	e786      	b.n	8007822 <_free_r+0x9a>
 8007914:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8007918:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800791c:	606a      	str	r2, [r5, #4]
 800791e:	5069      	str	r1, [r5, r1]
 8007920:	e7b4      	b.n	800788c <_free_r+0x104>
 8007922:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8007926:	d806      	bhi.n	8007936 <_free_r+0x1ae>
 8007928:	0bcb      	lsrs	r3, r1, #15
 800792a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800792e:	00e4      	lsls	r4, r4, #3
 8007930:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8007934:	e767      	b.n	8007806 <_free_r+0x7e>
 8007936:	f240 5254 	movw	r2, #1364	; 0x554
 800793a:	4293      	cmp	r3, r2
 800793c:	d806      	bhi.n	800794c <_free_r+0x1c4>
 800793e:	0c8b      	lsrs	r3, r1, #18
 8007940:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8007944:	00e4      	lsls	r4, r4, #3
 8007946:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800794a:	e75c      	b.n	8007806 <_free_r+0x7e>
 800794c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8007950:	227e      	movs	r2, #126	; 0x7e
 8007952:	e758      	b.n	8007806 <_free_r+0x7e>
 8007954:	f041 0201 	orr.w	r2, r1, #1
 8007958:	606a      	str	r2, [r5, #4]
 800795a:	6019      	str	r1, [r3, #0]
 800795c:	e796      	b.n	800788c <_free_r+0x104>
 800795e:	bf00      	nop
 8007960:	20000454 	.word	0x20000454
 8007964:	2000045c 	.word	0x2000045c
 8007968:	20000860 	.word	0x20000860
 800796c:	20000aa8 	.word	0x20000aa8

08007970 <__sfvwrite_r>:
 8007970:	6893      	ldr	r3, [r2, #8]
 8007972:	2b00      	cmp	r3, #0
 8007974:	f000 80e4 	beq.w	8007b40 <__sfvwrite_r+0x1d0>
 8007978:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800797c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8007980:	b29b      	uxth	r3, r3
 8007982:	460c      	mov	r4, r1
 8007984:	0719      	lsls	r1, r3, #28
 8007986:	b083      	sub	sp, #12
 8007988:	4682      	mov	sl, r0
 800798a:	4690      	mov	r8, r2
 800798c:	d535      	bpl.n	80079fa <__sfvwrite_r+0x8a>
 800798e:	6922      	ldr	r2, [r4, #16]
 8007990:	b39a      	cbz	r2, 80079fa <__sfvwrite_r+0x8a>
 8007992:	f013 0202 	ands.w	r2, r3, #2
 8007996:	f8d8 6000 	ldr.w	r6, [r8]
 800799a:	d03d      	beq.n	8007a18 <__sfvwrite_r+0xa8>
 800799c:	2700      	movs	r7, #0
 800799e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80079a2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80079a6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8007c68 <__sfvwrite_r+0x2f8>
 80079aa:	463d      	mov	r5, r7
 80079ac:	454d      	cmp	r5, r9
 80079ae:	462b      	mov	r3, r5
 80079b0:	463a      	mov	r2, r7
 80079b2:	bf28      	it	cs
 80079b4:	464b      	movcs	r3, r9
 80079b6:	4661      	mov	r1, ip
 80079b8:	4650      	mov	r0, sl
 80079ba:	b1d5      	cbz	r5, 80079f2 <__sfvwrite_r+0x82>
 80079bc:	47d8      	blx	fp
 80079be:	2800      	cmp	r0, #0
 80079c0:	f340 80c6 	ble.w	8007b50 <__sfvwrite_r+0x1e0>
 80079c4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80079c8:	1a1b      	subs	r3, r3, r0
 80079ca:	4407      	add	r7, r0
 80079cc:	1a2d      	subs	r5, r5, r0
 80079ce:	f8c8 3008 	str.w	r3, [r8, #8]
 80079d2:	2b00      	cmp	r3, #0
 80079d4:	f000 80b0 	beq.w	8007b38 <__sfvwrite_r+0x1c8>
 80079d8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80079dc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80079e0:	454d      	cmp	r5, r9
 80079e2:	462b      	mov	r3, r5
 80079e4:	463a      	mov	r2, r7
 80079e6:	bf28      	it	cs
 80079e8:	464b      	movcs	r3, r9
 80079ea:	4661      	mov	r1, ip
 80079ec:	4650      	mov	r0, sl
 80079ee:	2d00      	cmp	r5, #0
 80079f0:	d1e4      	bne.n	80079bc <__sfvwrite_r+0x4c>
 80079f2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80079f6:	3608      	adds	r6, #8
 80079f8:	e7d8      	b.n	80079ac <__sfvwrite_r+0x3c>
 80079fa:	4621      	mov	r1, r4
 80079fc:	4650      	mov	r0, sl
 80079fe:	f7fe fd03 	bl	8006408 <__swsetup_r>
 8007a02:	2800      	cmp	r0, #0
 8007a04:	f040 812a 	bne.w	8007c5c <__sfvwrite_r+0x2ec>
 8007a08:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007a0c:	f8d8 6000 	ldr.w	r6, [r8]
 8007a10:	b29b      	uxth	r3, r3
 8007a12:	f013 0202 	ands.w	r2, r3, #2
 8007a16:	d1c1      	bne.n	800799c <__sfvwrite_r+0x2c>
 8007a18:	f013 0901 	ands.w	r9, r3, #1
 8007a1c:	d15d      	bne.n	8007ada <__sfvwrite_r+0x16a>
 8007a1e:	68a7      	ldr	r7, [r4, #8]
 8007a20:	6820      	ldr	r0, [r4, #0]
 8007a22:	464d      	mov	r5, r9
 8007a24:	2d00      	cmp	r5, #0
 8007a26:	d054      	beq.n	8007ad2 <__sfvwrite_r+0x162>
 8007a28:	059a      	lsls	r2, r3, #22
 8007a2a:	f140 809b 	bpl.w	8007b64 <__sfvwrite_r+0x1f4>
 8007a2e:	42af      	cmp	r7, r5
 8007a30:	46bb      	mov	fp, r7
 8007a32:	f200 80d8 	bhi.w	8007be6 <__sfvwrite_r+0x276>
 8007a36:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8007a3a:	d02f      	beq.n	8007a9c <__sfvwrite_r+0x12c>
 8007a3c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8007a40:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8007a44:	eba0 0b01 	sub.w	fp, r0, r1
 8007a48:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8007a4c:	1c68      	adds	r0, r5, #1
 8007a4e:	107f      	asrs	r7, r7, #1
 8007a50:	4458      	add	r0, fp
 8007a52:	42b8      	cmp	r0, r7
 8007a54:	463a      	mov	r2, r7
 8007a56:	bf84      	itt	hi
 8007a58:	4607      	movhi	r7, r0
 8007a5a:	463a      	movhi	r2, r7
 8007a5c:	055b      	lsls	r3, r3, #21
 8007a5e:	f140 80d3 	bpl.w	8007c08 <__sfvwrite_r+0x298>
 8007a62:	4611      	mov	r1, r2
 8007a64:	4650      	mov	r0, sl
 8007a66:	f000 f9b9 	bl	8007ddc <_malloc_r>
 8007a6a:	2800      	cmp	r0, #0
 8007a6c:	f000 80f0 	beq.w	8007c50 <__sfvwrite_r+0x2e0>
 8007a70:	465a      	mov	r2, fp
 8007a72:	6921      	ldr	r1, [r4, #16]
 8007a74:	9001      	str	r0, [sp, #4]
 8007a76:	f7f8 fd43 	bl	8000500 <memcpy>
 8007a7a:	89a2      	ldrh	r2, [r4, #12]
 8007a7c:	9b01      	ldr	r3, [sp, #4]
 8007a7e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8007a82:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8007a86:	81a2      	strh	r2, [r4, #12]
 8007a88:	eba7 020b 	sub.w	r2, r7, fp
 8007a8c:	eb03 000b 	add.w	r0, r3, fp
 8007a90:	6167      	str	r7, [r4, #20]
 8007a92:	6123      	str	r3, [r4, #16]
 8007a94:	6020      	str	r0, [r4, #0]
 8007a96:	60a2      	str	r2, [r4, #8]
 8007a98:	462f      	mov	r7, r5
 8007a9a:	46ab      	mov	fp, r5
 8007a9c:	465a      	mov	r2, fp
 8007a9e:	4649      	mov	r1, r9
 8007aa0:	f000 fc40 	bl	8008324 <memmove>
 8007aa4:	68a2      	ldr	r2, [r4, #8]
 8007aa6:	6823      	ldr	r3, [r4, #0]
 8007aa8:	1bd2      	subs	r2, r2, r7
 8007aaa:	445b      	add	r3, fp
 8007aac:	462f      	mov	r7, r5
 8007aae:	60a2      	str	r2, [r4, #8]
 8007ab0:	6023      	str	r3, [r4, #0]
 8007ab2:	2500      	movs	r5, #0
 8007ab4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007ab8:	1bdb      	subs	r3, r3, r7
 8007aba:	44b9      	add	r9, r7
 8007abc:	f8c8 3008 	str.w	r3, [r8, #8]
 8007ac0:	2b00      	cmp	r3, #0
 8007ac2:	d039      	beq.n	8007b38 <__sfvwrite_r+0x1c8>
 8007ac4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007ac8:	68a7      	ldr	r7, [r4, #8]
 8007aca:	6820      	ldr	r0, [r4, #0]
 8007acc:	b29b      	uxth	r3, r3
 8007ace:	2d00      	cmp	r5, #0
 8007ad0:	d1aa      	bne.n	8007a28 <__sfvwrite_r+0xb8>
 8007ad2:	e9d6 9500 	ldrd	r9, r5, [r6]
 8007ad6:	3608      	adds	r6, #8
 8007ad8:	e7a4      	b.n	8007a24 <__sfvwrite_r+0xb4>
 8007ada:	4633      	mov	r3, r6
 8007adc:	4691      	mov	r9, r2
 8007ade:	4610      	mov	r0, r2
 8007ae0:	4617      	mov	r7, r2
 8007ae2:	464e      	mov	r6, r9
 8007ae4:	469b      	mov	fp, r3
 8007ae6:	2f00      	cmp	r7, #0
 8007ae8:	d06b      	beq.n	8007bc2 <__sfvwrite_r+0x252>
 8007aea:	2800      	cmp	r0, #0
 8007aec:	d071      	beq.n	8007bd2 <__sfvwrite_r+0x262>
 8007aee:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8007af2:	6820      	ldr	r0, [r4, #0]
 8007af4:	45b9      	cmp	r9, r7
 8007af6:	464b      	mov	r3, r9
 8007af8:	bf28      	it	cs
 8007afa:	463b      	movcs	r3, r7
 8007afc:	4288      	cmp	r0, r1
 8007afe:	d903      	bls.n	8007b08 <__sfvwrite_r+0x198>
 8007b00:	68a5      	ldr	r5, [r4, #8]
 8007b02:	4415      	add	r5, r2
 8007b04:	42ab      	cmp	r3, r5
 8007b06:	dc71      	bgt.n	8007bec <__sfvwrite_r+0x27c>
 8007b08:	429a      	cmp	r2, r3
 8007b0a:	f300 8093 	bgt.w	8007c34 <__sfvwrite_r+0x2c4>
 8007b0e:	4613      	mov	r3, r2
 8007b10:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8007b12:	69e1      	ldr	r1, [r4, #28]
 8007b14:	4632      	mov	r2, r6
 8007b16:	4650      	mov	r0, sl
 8007b18:	47a8      	blx	r5
 8007b1a:	1e05      	subs	r5, r0, #0
 8007b1c:	dd18      	ble.n	8007b50 <__sfvwrite_r+0x1e0>
 8007b1e:	ebb9 0905 	subs.w	r9, r9, r5
 8007b22:	d00f      	beq.n	8007b44 <__sfvwrite_r+0x1d4>
 8007b24:	2001      	movs	r0, #1
 8007b26:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007b2a:	1b5b      	subs	r3, r3, r5
 8007b2c:	442e      	add	r6, r5
 8007b2e:	1b7f      	subs	r7, r7, r5
 8007b30:	f8c8 3008 	str.w	r3, [r8, #8]
 8007b34:	2b00      	cmp	r3, #0
 8007b36:	d1d6      	bne.n	8007ae6 <__sfvwrite_r+0x176>
 8007b38:	2000      	movs	r0, #0
 8007b3a:	b003      	add	sp, #12
 8007b3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007b40:	2000      	movs	r0, #0
 8007b42:	4770      	bx	lr
 8007b44:	4621      	mov	r1, r4
 8007b46:	4650      	mov	r0, sl
 8007b48:	f7ff fd20 	bl	800758c <_fflush_r>
 8007b4c:	2800      	cmp	r0, #0
 8007b4e:	d0ea      	beq.n	8007b26 <__sfvwrite_r+0x1b6>
 8007b50:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007b54:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007b58:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007b5c:	81a3      	strh	r3, [r4, #12]
 8007b5e:	b003      	add	sp, #12
 8007b60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007b64:	6923      	ldr	r3, [r4, #16]
 8007b66:	4283      	cmp	r3, r0
 8007b68:	d315      	bcc.n	8007b96 <__sfvwrite_r+0x226>
 8007b6a:	6961      	ldr	r1, [r4, #20]
 8007b6c:	42a9      	cmp	r1, r5
 8007b6e:	d812      	bhi.n	8007b96 <__sfvwrite_r+0x226>
 8007b70:	4b3c      	ldr	r3, [pc, #240]	; (8007c64 <__sfvwrite_r+0x2f4>)
 8007b72:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8007b74:	429d      	cmp	r5, r3
 8007b76:	bf94      	ite	ls
 8007b78:	462b      	movls	r3, r5
 8007b7a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8007b7e:	464a      	mov	r2, r9
 8007b80:	fb93 f3f1 	sdiv	r3, r3, r1
 8007b84:	4650      	mov	r0, sl
 8007b86:	fb01 f303 	mul.w	r3, r1, r3
 8007b8a:	69e1      	ldr	r1, [r4, #28]
 8007b8c:	47b8      	blx	r7
 8007b8e:	1e07      	subs	r7, r0, #0
 8007b90:	ddde      	ble.n	8007b50 <__sfvwrite_r+0x1e0>
 8007b92:	1bed      	subs	r5, r5, r7
 8007b94:	e78e      	b.n	8007ab4 <__sfvwrite_r+0x144>
 8007b96:	42af      	cmp	r7, r5
 8007b98:	bf28      	it	cs
 8007b9a:	462f      	movcs	r7, r5
 8007b9c:	463a      	mov	r2, r7
 8007b9e:	4649      	mov	r1, r9
 8007ba0:	f000 fbc0 	bl	8008324 <memmove>
 8007ba4:	68a3      	ldr	r3, [r4, #8]
 8007ba6:	6822      	ldr	r2, [r4, #0]
 8007ba8:	1bdb      	subs	r3, r3, r7
 8007baa:	443a      	add	r2, r7
 8007bac:	60a3      	str	r3, [r4, #8]
 8007bae:	6022      	str	r2, [r4, #0]
 8007bb0:	2b00      	cmp	r3, #0
 8007bb2:	d1ee      	bne.n	8007b92 <__sfvwrite_r+0x222>
 8007bb4:	4621      	mov	r1, r4
 8007bb6:	4650      	mov	r0, sl
 8007bb8:	f7ff fce8 	bl	800758c <_fflush_r>
 8007bbc:	2800      	cmp	r0, #0
 8007bbe:	d0e8      	beq.n	8007b92 <__sfvwrite_r+0x222>
 8007bc0:	e7c6      	b.n	8007b50 <__sfvwrite_r+0x1e0>
 8007bc2:	f10b 0308 	add.w	r3, fp, #8
 8007bc6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8007bca:	469b      	mov	fp, r3
 8007bcc:	3308      	adds	r3, #8
 8007bce:	2f00      	cmp	r7, #0
 8007bd0:	d0f9      	beq.n	8007bc6 <__sfvwrite_r+0x256>
 8007bd2:	463a      	mov	r2, r7
 8007bd4:	210a      	movs	r1, #10
 8007bd6:	4630      	mov	r0, r6
 8007bd8:	f7f8 fda2 	bl	8000720 <memchr>
 8007bdc:	b338      	cbz	r0, 8007c2e <__sfvwrite_r+0x2be>
 8007bde:	3001      	adds	r0, #1
 8007be0:	eba0 0906 	sub.w	r9, r0, r6
 8007be4:	e783      	b.n	8007aee <__sfvwrite_r+0x17e>
 8007be6:	462f      	mov	r7, r5
 8007be8:	46ab      	mov	fp, r5
 8007bea:	e757      	b.n	8007a9c <__sfvwrite_r+0x12c>
 8007bec:	4631      	mov	r1, r6
 8007bee:	462a      	mov	r2, r5
 8007bf0:	f000 fb98 	bl	8008324 <memmove>
 8007bf4:	6823      	ldr	r3, [r4, #0]
 8007bf6:	442b      	add	r3, r5
 8007bf8:	6023      	str	r3, [r4, #0]
 8007bfa:	4621      	mov	r1, r4
 8007bfc:	4650      	mov	r0, sl
 8007bfe:	f7ff fcc5 	bl	800758c <_fflush_r>
 8007c02:	2800      	cmp	r0, #0
 8007c04:	d08b      	beq.n	8007b1e <__sfvwrite_r+0x1ae>
 8007c06:	e7a3      	b.n	8007b50 <__sfvwrite_r+0x1e0>
 8007c08:	4650      	mov	r0, sl
 8007c0a:	f000 ff05 	bl	8008a18 <_realloc_r>
 8007c0e:	4603      	mov	r3, r0
 8007c10:	2800      	cmp	r0, #0
 8007c12:	f47f af39 	bne.w	8007a88 <__sfvwrite_r+0x118>
 8007c16:	6921      	ldr	r1, [r4, #16]
 8007c18:	4650      	mov	r0, sl
 8007c1a:	f7ff fdb5 	bl	8007788 <_free_r>
 8007c1e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007c22:	220c      	movs	r2, #12
 8007c24:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8007c28:	f8ca 2000 	str.w	r2, [sl]
 8007c2c:	e792      	b.n	8007b54 <__sfvwrite_r+0x1e4>
 8007c2e:	f107 0901 	add.w	r9, r7, #1
 8007c32:	e75c      	b.n	8007aee <__sfvwrite_r+0x17e>
 8007c34:	461a      	mov	r2, r3
 8007c36:	4631      	mov	r1, r6
 8007c38:	9301      	str	r3, [sp, #4]
 8007c3a:	f000 fb73 	bl	8008324 <memmove>
 8007c3e:	9b01      	ldr	r3, [sp, #4]
 8007c40:	68a1      	ldr	r1, [r4, #8]
 8007c42:	6822      	ldr	r2, [r4, #0]
 8007c44:	1ac9      	subs	r1, r1, r3
 8007c46:	441a      	add	r2, r3
 8007c48:	60a1      	str	r1, [r4, #8]
 8007c4a:	6022      	str	r2, [r4, #0]
 8007c4c:	461d      	mov	r5, r3
 8007c4e:	e766      	b.n	8007b1e <__sfvwrite_r+0x1ae>
 8007c50:	230c      	movs	r3, #12
 8007c52:	f8ca 3000 	str.w	r3, [sl]
 8007c56:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007c5a:	e77b      	b.n	8007b54 <__sfvwrite_r+0x1e4>
 8007c5c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007c60:	e76b      	b.n	8007b3a <__sfvwrite_r+0x1ca>
 8007c62:	bf00      	nop
 8007c64:	7ffffffe 	.word	0x7ffffffe
 8007c68:	7ffffc00 	.word	0x7ffffc00

08007c6c <_fwalk_reent>:
 8007c6c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007c70:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8007c74:	d01f      	beq.n	8007cb6 <_fwalk_reent+0x4a>
 8007c76:	4688      	mov	r8, r1
 8007c78:	4606      	mov	r6, r0
 8007c7a:	f04f 0900 	mov.w	r9, #0
 8007c7e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8007c82:	3d01      	subs	r5, #1
 8007c84:	d411      	bmi.n	8007caa <_fwalk_reent+0x3e>
 8007c86:	89a3      	ldrh	r3, [r4, #12]
 8007c88:	2b01      	cmp	r3, #1
 8007c8a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8007c8e:	4621      	mov	r1, r4
 8007c90:	4630      	mov	r0, r6
 8007c92:	d906      	bls.n	8007ca2 <_fwalk_reent+0x36>
 8007c94:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8007c98:	3301      	adds	r3, #1
 8007c9a:	d002      	beq.n	8007ca2 <_fwalk_reent+0x36>
 8007c9c:	47c0      	blx	r8
 8007c9e:	ea49 0900 	orr.w	r9, r9, r0
 8007ca2:	1c6b      	adds	r3, r5, #1
 8007ca4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8007ca8:	d1ed      	bne.n	8007c86 <_fwalk_reent+0x1a>
 8007caa:	683f      	ldr	r7, [r7, #0]
 8007cac:	2f00      	cmp	r7, #0
 8007cae:	d1e6      	bne.n	8007c7e <_fwalk_reent+0x12>
 8007cb0:	4648      	mov	r0, r9
 8007cb2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007cb6:	46b9      	mov	r9, r7
 8007cb8:	4648      	mov	r0, r9
 8007cba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007cbe:	bf00      	nop

08007cc0 <_localeconv_r>:
 8007cc0:	4a04      	ldr	r2, [pc, #16]	; (8007cd4 <_localeconv_r+0x14>)
 8007cc2:	4b05      	ldr	r3, [pc, #20]	; (8007cd8 <_localeconv_r+0x18>)
 8007cc4:	6812      	ldr	r2, [r2, #0]
 8007cc6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8007cc8:	2800      	cmp	r0, #0
 8007cca:	bf08      	it	eq
 8007ccc:	4618      	moveq	r0, r3
 8007cce:	30f0      	adds	r0, #240	; 0xf0
 8007cd0:	4770      	bx	lr
 8007cd2:	bf00      	nop
 8007cd4:	20000020 	.word	0x20000020
 8007cd8:	20000864 	.word	0x20000864

08007cdc <__retarget_lock_init_recursive>:
 8007cdc:	4770      	bx	lr
 8007cde:	bf00      	nop

08007ce0 <__retarget_lock_close_recursive>:
 8007ce0:	4770      	bx	lr
 8007ce2:	bf00      	nop

08007ce4 <__retarget_lock_acquire_recursive>:
 8007ce4:	4770      	bx	lr
 8007ce6:	bf00      	nop

08007ce8 <__retarget_lock_release_recursive>:
 8007ce8:	4770      	bx	lr
 8007cea:	bf00      	nop

08007cec <__swhatbuf_r>:
 8007cec:	b570      	push	{r4, r5, r6, lr}
 8007cee:	460c      	mov	r4, r1
 8007cf0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007cf4:	2900      	cmp	r1, #0
 8007cf6:	b096      	sub	sp, #88	; 0x58
 8007cf8:	4615      	mov	r5, r2
 8007cfa:	461e      	mov	r6, r3
 8007cfc:	da0f      	bge.n	8007d1e <__swhatbuf_r+0x32>
 8007cfe:	89a2      	ldrh	r2, [r4, #12]
 8007d00:	2300      	movs	r3, #0
 8007d02:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8007d06:	6033      	str	r3, [r6, #0]
 8007d08:	d104      	bne.n	8007d14 <__swhatbuf_r+0x28>
 8007d0a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8007d0e:	602b      	str	r3, [r5, #0]
 8007d10:	b016      	add	sp, #88	; 0x58
 8007d12:	bd70      	pop	{r4, r5, r6, pc}
 8007d14:	2240      	movs	r2, #64	; 0x40
 8007d16:	4618      	mov	r0, r3
 8007d18:	602a      	str	r2, [r5, #0]
 8007d1a:	b016      	add	sp, #88	; 0x58
 8007d1c:	bd70      	pop	{r4, r5, r6, pc}
 8007d1e:	466a      	mov	r2, sp
 8007d20:	f001 fad0 	bl	80092c4 <_fstat_r>
 8007d24:	2800      	cmp	r0, #0
 8007d26:	dbea      	blt.n	8007cfe <__swhatbuf_r+0x12>
 8007d28:	9b01      	ldr	r3, [sp, #4]
 8007d2a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8007d2e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8007d32:	fab3 f383 	clz	r3, r3
 8007d36:	095b      	lsrs	r3, r3, #5
 8007d38:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8007d3c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8007d40:	6033      	str	r3, [r6, #0]
 8007d42:	602a      	str	r2, [r5, #0]
 8007d44:	b016      	add	sp, #88	; 0x58
 8007d46:	bd70      	pop	{r4, r5, r6, pc}

08007d48 <__smakebuf_r>:
 8007d48:	898a      	ldrh	r2, [r1, #12]
 8007d4a:	0792      	lsls	r2, r2, #30
 8007d4c:	460b      	mov	r3, r1
 8007d4e:	d506      	bpl.n	8007d5e <__smakebuf_r+0x16>
 8007d50:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8007d54:	2101      	movs	r1, #1
 8007d56:	601a      	str	r2, [r3, #0]
 8007d58:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8007d5c:	4770      	bx	lr
 8007d5e:	b570      	push	{r4, r5, r6, lr}
 8007d60:	b082      	sub	sp, #8
 8007d62:	ab01      	add	r3, sp, #4
 8007d64:	466a      	mov	r2, sp
 8007d66:	460c      	mov	r4, r1
 8007d68:	4605      	mov	r5, r0
 8007d6a:	f7ff ffbf 	bl	8007cec <__swhatbuf_r>
 8007d6e:	9900      	ldr	r1, [sp, #0]
 8007d70:	4606      	mov	r6, r0
 8007d72:	4628      	mov	r0, r5
 8007d74:	f000 f832 	bl	8007ddc <_malloc_r>
 8007d78:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007d7c:	b1d8      	cbz	r0, 8007db6 <__smakebuf_r+0x6e>
 8007d7e:	4916      	ldr	r1, [pc, #88]	; (8007dd8 <__smakebuf_r+0x90>)
 8007d80:	63e9      	str	r1, [r5, #60]	; 0x3c
 8007d82:	9a01      	ldr	r2, [sp, #4]
 8007d84:	9900      	ldr	r1, [sp, #0]
 8007d86:	6020      	str	r0, [r4, #0]
 8007d88:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8007d8c:	81a3      	strh	r3, [r4, #12]
 8007d8e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8007d92:	b91a      	cbnz	r2, 8007d9c <__smakebuf_r+0x54>
 8007d94:	4333      	orrs	r3, r6
 8007d96:	81a3      	strh	r3, [r4, #12]
 8007d98:	b002      	add	sp, #8
 8007d9a:	bd70      	pop	{r4, r5, r6, pc}
 8007d9c:	4628      	mov	r0, r5
 8007d9e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8007da2:	f001 faa3 	bl	80092ec <_isatty_r>
 8007da6:	b1a0      	cbz	r0, 8007dd2 <__smakebuf_r+0x8a>
 8007da8:	89a3      	ldrh	r3, [r4, #12]
 8007daa:	f023 0303 	bic.w	r3, r3, #3
 8007dae:	f043 0301 	orr.w	r3, r3, #1
 8007db2:	b21b      	sxth	r3, r3
 8007db4:	e7ee      	b.n	8007d94 <__smakebuf_r+0x4c>
 8007db6:	059a      	lsls	r2, r3, #22
 8007db8:	d4ee      	bmi.n	8007d98 <__smakebuf_r+0x50>
 8007dba:	f023 0303 	bic.w	r3, r3, #3
 8007dbe:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8007dc2:	f043 0302 	orr.w	r3, r3, #2
 8007dc6:	2101      	movs	r1, #1
 8007dc8:	81a3      	strh	r3, [r4, #12]
 8007dca:	6022      	str	r2, [r4, #0]
 8007dcc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8007dd0:	e7e2      	b.n	8007d98 <__smakebuf_r+0x50>
 8007dd2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007dd6:	e7dd      	b.n	8007d94 <__smakebuf_r+0x4c>
 8007dd8:	08007639 	.word	0x08007639

08007ddc <_malloc_r>:
 8007ddc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007de0:	f101 050b 	add.w	r5, r1, #11
 8007de4:	2d16      	cmp	r5, #22
 8007de6:	b083      	sub	sp, #12
 8007de8:	4606      	mov	r6, r0
 8007dea:	d823      	bhi.n	8007e34 <_malloc_r+0x58>
 8007dec:	2910      	cmp	r1, #16
 8007dee:	f200 80b9 	bhi.w	8007f64 <_malloc_r+0x188>
 8007df2:	f000 fafb 	bl	80083ec <__malloc_lock>
 8007df6:	2510      	movs	r5, #16
 8007df8:	2318      	movs	r3, #24
 8007dfa:	2002      	movs	r0, #2
 8007dfc:	4fc5      	ldr	r7, [pc, #788]	; (8008114 <_malloc_r+0x338>)
 8007dfe:	443b      	add	r3, r7
 8007e00:	f1a3 0208 	sub.w	r2, r3, #8
 8007e04:	685c      	ldr	r4, [r3, #4]
 8007e06:	4294      	cmp	r4, r2
 8007e08:	f000 8166 	beq.w	80080d8 <_malloc_r+0x2fc>
 8007e0c:	6863      	ldr	r3, [r4, #4]
 8007e0e:	f023 0303 	bic.w	r3, r3, #3
 8007e12:	4423      	add	r3, r4
 8007e14:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8007e18:	685a      	ldr	r2, [r3, #4]
 8007e1a:	60e9      	str	r1, [r5, #12]
 8007e1c:	f042 0201 	orr.w	r2, r2, #1
 8007e20:	608d      	str	r5, [r1, #8]
 8007e22:	4630      	mov	r0, r6
 8007e24:	605a      	str	r2, [r3, #4]
 8007e26:	f000 fae7 	bl	80083f8 <__malloc_unlock>
 8007e2a:	3408      	adds	r4, #8
 8007e2c:	4620      	mov	r0, r4
 8007e2e:	b003      	add	sp, #12
 8007e30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007e34:	f035 0507 	bics.w	r5, r5, #7
 8007e38:	f100 8094 	bmi.w	8007f64 <_malloc_r+0x188>
 8007e3c:	42a9      	cmp	r1, r5
 8007e3e:	f200 8091 	bhi.w	8007f64 <_malloc_r+0x188>
 8007e42:	f000 fad3 	bl	80083ec <__malloc_lock>
 8007e46:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8007e4a:	f0c0 8183 	bcc.w	8008154 <_malloc_r+0x378>
 8007e4e:	0a6b      	lsrs	r3, r5, #9
 8007e50:	f000 808f 	beq.w	8007f72 <_malloc_r+0x196>
 8007e54:	2b04      	cmp	r3, #4
 8007e56:	f200 8146 	bhi.w	80080e6 <_malloc_r+0x30a>
 8007e5a:	09ab      	lsrs	r3, r5, #6
 8007e5c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8007e60:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8007e64:	00c3      	lsls	r3, r0, #3
 8007e66:	4fab      	ldr	r7, [pc, #684]	; (8008114 <_malloc_r+0x338>)
 8007e68:	443b      	add	r3, r7
 8007e6a:	f1a3 0108 	sub.w	r1, r3, #8
 8007e6e:	685c      	ldr	r4, [r3, #4]
 8007e70:	42a1      	cmp	r1, r4
 8007e72:	d106      	bne.n	8007e82 <_malloc_r+0xa6>
 8007e74:	e00c      	b.n	8007e90 <_malloc_r+0xb4>
 8007e76:	2a00      	cmp	r2, #0
 8007e78:	f280 811d 	bge.w	80080b6 <_malloc_r+0x2da>
 8007e7c:	68e4      	ldr	r4, [r4, #12]
 8007e7e:	42a1      	cmp	r1, r4
 8007e80:	d006      	beq.n	8007e90 <_malloc_r+0xb4>
 8007e82:	6863      	ldr	r3, [r4, #4]
 8007e84:	f023 0303 	bic.w	r3, r3, #3
 8007e88:	1b5a      	subs	r2, r3, r5
 8007e8a:	2a0f      	cmp	r2, #15
 8007e8c:	ddf3      	ble.n	8007e76 <_malloc_r+0x9a>
 8007e8e:	4660      	mov	r0, ip
 8007e90:	693c      	ldr	r4, [r7, #16]
 8007e92:	f8df c294 	ldr.w	ip, [pc, #660]	; 8008128 <_malloc_r+0x34c>
 8007e96:	4564      	cmp	r4, ip
 8007e98:	d071      	beq.n	8007f7e <_malloc_r+0x1a2>
 8007e9a:	6863      	ldr	r3, [r4, #4]
 8007e9c:	f023 0303 	bic.w	r3, r3, #3
 8007ea0:	1b5a      	subs	r2, r3, r5
 8007ea2:	2a0f      	cmp	r2, #15
 8007ea4:	f300 8144 	bgt.w	8008130 <_malloc_r+0x354>
 8007ea8:	2a00      	cmp	r2, #0
 8007eaa:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8007eae:	f280 8126 	bge.w	80080fe <_malloc_r+0x322>
 8007eb2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8007eb6:	f080 8169 	bcs.w	800818c <_malloc_r+0x3b0>
 8007eba:	08db      	lsrs	r3, r3, #3
 8007ebc:	1c59      	adds	r1, r3, #1
 8007ebe:	687a      	ldr	r2, [r7, #4]
 8007ec0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8007ec4:	f8c4 8008 	str.w	r8, [r4, #8]
 8007ec8:	f04f 0e01 	mov.w	lr, #1
 8007ecc:	109b      	asrs	r3, r3, #2
 8007ece:	fa0e f303 	lsl.w	r3, lr, r3
 8007ed2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8007ed6:	4313      	orrs	r3, r2
 8007ed8:	f1ae 0208 	sub.w	r2, lr, #8
 8007edc:	60e2      	str	r2, [r4, #12]
 8007ede:	607b      	str	r3, [r7, #4]
 8007ee0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8007ee4:	f8c8 400c 	str.w	r4, [r8, #12]
 8007ee8:	1082      	asrs	r2, r0, #2
 8007eea:	2401      	movs	r4, #1
 8007eec:	4094      	lsls	r4, r2
 8007eee:	429c      	cmp	r4, r3
 8007ef0:	d84b      	bhi.n	8007f8a <_malloc_r+0x1ae>
 8007ef2:	421c      	tst	r4, r3
 8007ef4:	d106      	bne.n	8007f04 <_malloc_r+0x128>
 8007ef6:	f020 0003 	bic.w	r0, r0, #3
 8007efa:	0064      	lsls	r4, r4, #1
 8007efc:	421c      	tst	r4, r3
 8007efe:	f100 0004 	add.w	r0, r0, #4
 8007f02:	d0fa      	beq.n	8007efa <_malloc_r+0x11e>
 8007f04:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8007f08:	46ce      	mov	lr, r9
 8007f0a:	4680      	mov	r8, r0
 8007f0c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8007f10:	459e      	cmp	lr, r3
 8007f12:	d107      	bne.n	8007f24 <_malloc_r+0x148>
 8007f14:	e122      	b.n	800815c <_malloc_r+0x380>
 8007f16:	2a00      	cmp	r2, #0
 8007f18:	f280 8129 	bge.w	800816e <_malloc_r+0x392>
 8007f1c:	68db      	ldr	r3, [r3, #12]
 8007f1e:	459e      	cmp	lr, r3
 8007f20:	f000 811c 	beq.w	800815c <_malloc_r+0x380>
 8007f24:	6859      	ldr	r1, [r3, #4]
 8007f26:	f021 0103 	bic.w	r1, r1, #3
 8007f2a:	1b4a      	subs	r2, r1, r5
 8007f2c:	2a0f      	cmp	r2, #15
 8007f2e:	ddf2      	ble.n	8007f16 <_malloc_r+0x13a>
 8007f30:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8007f34:	195c      	adds	r4, r3, r5
 8007f36:	f045 0501 	orr.w	r5, r5, #1
 8007f3a:	605d      	str	r5, [r3, #4]
 8007f3c:	f042 0501 	orr.w	r5, r2, #1
 8007f40:	f8c8 e00c 	str.w	lr, [r8, #12]
 8007f44:	4630      	mov	r0, r6
 8007f46:	f8ce 8008 	str.w	r8, [lr, #8]
 8007f4a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8007f4e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8007f52:	6065      	str	r5, [r4, #4]
 8007f54:	505a      	str	r2, [r3, r1]
 8007f56:	9301      	str	r3, [sp, #4]
 8007f58:	f000 fa4e 	bl	80083f8 <__malloc_unlock>
 8007f5c:	9b01      	ldr	r3, [sp, #4]
 8007f5e:	f103 0408 	add.w	r4, r3, #8
 8007f62:	e763      	b.n	8007e2c <_malloc_r+0x50>
 8007f64:	2400      	movs	r4, #0
 8007f66:	230c      	movs	r3, #12
 8007f68:	4620      	mov	r0, r4
 8007f6a:	6033      	str	r3, [r6, #0]
 8007f6c:	b003      	add	sp, #12
 8007f6e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007f72:	f44f 7300 	mov.w	r3, #512	; 0x200
 8007f76:	2040      	movs	r0, #64	; 0x40
 8007f78:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8007f7c:	e773      	b.n	8007e66 <_malloc_r+0x8a>
 8007f7e:	687b      	ldr	r3, [r7, #4]
 8007f80:	1082      	asrs	r2, r0, #2
 8007f82:	2401      	movs	r4, #1
 8007f84:	4094      	lsls	r4, r2
 8007f86:	429c      	cmp	r4, r3
 8007f88:	d9b3      	bls.n	8007ef2 <_malloc_r+0x116>
 8007f8a:	68bc      	ldr	r4, [r7, #8]
 8007f8c:	6863      	ldr	r3, [r4, #4]
 8007f8e:	f023 0903 	bic.w	r9, r3, #3
 8007f92:	45a9      	cmp	r9, r5
 8007f94:	d303      	bcc.n	8007f9e <_malloc_r+0x1c2>
 8007f96:	eba9 0305 	sub.w	r3, r9, r5
 8007f9a:	2b0f      	cmp	r3, #15
 8007f9c:	dc7b      	bgt.n	8008096 <_malloc_r+0x2ba>
 8007f9e:	4b5e      	ldr	r3, [pc, #376]	; (8008118 <_malloc_r+0x33c>)
 8007fa0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800812c <_malloc_r+0x350>
 8007fa4:	681a      	ldr	r2, [r3, #0]
 8007fa6:	f8da 3000 	ldr.w	r3, [sl]
 8007faa:	3301      	adds	r3, #1
 8007fac:	eb05 0802 	add.w	r8, r5, r2
 8007fb0:	f000 8148 	beq.w	8008244 <_malloc_r+0x468>
 8007fb4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8007fb8:	f108 080f 	add.w	r8, r8, #15
 8007fbc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8007fc0:	f028 080f 	bic.w	r8, r8, #15
 8007fc4:	4641      	mov	r1, r8
 8007fc6:	4630      	mov	r0, r6
 8007fc8:	f000 ff08 	bl	8008ddc <_sbrk_r>
 8007fcc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8007fd0:	4683      	mov	fp, r0
 8007fd2:	f000 8104 	beq.w	80081de <_malloc_r+0x402>
 8007fd6:	eb04 0009 	add.w	r0, r4, r9
 8007fda:	4558      	cmp	r0, fp
 8007fdc:	f200 80fd 	bhi.w	80081da <_malloc_r+0x3fe>
 8007fe0:	4a4e      	ldr	r2, [pc, #312]	; (800811c <_malloc_r+0x340>)
 8007fe2:	6813      	ldr	r3, [r2, #0]
 8007fe4:	4443      	add	r3, r8
 8007fe6:	6013      	str	r3, [r2, #0]
 8007fe8:	f000 814d 	beq.w	8008286 <_malloc_r+0x4aa>
 8007fec:	f8da 1000 	ldr.w	r1, [sl]
 8007ff0:	3101      	adds	r1, #1
 8007ff2:	bf1b      	ittet	ne
 8007ff4:	ebab 0000 	subne.w	r0, fp, r0
 8007ff8:	181b      	addne	r3, r3, r0
 8007ffa:	f8ca b000 	streq.w	fp, [sl]
 8007ffe:	6013      	strne	r3, [r2, #0]
 8008000:	f01b 0307 	ands.w	r3, fp, #7
 8008004:	f000 8134 	beq.w	8008270 <_malloc_r+0x494>
 8008008:	f1c3 0108 	rsb	r1, r3, #8
 800800c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8008010:	448b      	add	fp, r1
 8008012:	3308      	adds	r3, #8
 8008014:	44d8      	add	r8, fp
 8008016:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800801a:	eba3 0808 	sub.w	r8, r3, r8
 800801e:	4641      	mov	r1, r8
 8008020:	4630      	mov	r0, r6
 8008022:	9201      	str	r2, [sp, #4]
 8008024:	f000 feda 	bl	8008ddc <_sbrk_r>
 8008028:	1c43      	adds	r3, r0, #1
 800802a:	9a01      	ldr	r2, [sp, #4]
 800802c:	f000 8146 	beq.w	80082bc <_malloc_r+0x4e0>
 8008030:	eba0 010b 	sub.w	r1, r0, fp
 8008034:	4441      	add	r1, r8
 8008036:	f041 0101 	orr.w	r1, r1, #1
 800803a:	6813      	ldr	r3, [r2, #0]
 800803c:	f8c7 b008 	str.w	fp, [r7, #8]
 8008040:	4443      	add	r3, r8
 8008042:	42bc      	cmp	r4, r7
 8008044:	f8cb 1004 	str.w	r1, [fp, #4]
 8008048:	6013      	str	r3, [r2, #0]
 800804a:	d015      	beq.n	8008078 <_malloc_r+0x29c>
 800804c:	f1b9 0f0f 	cmp.w	r9, #15
 8008050:	f240 8130 	bls.w	80082b4 <_malloc_r+0x4d8>
 8008054:	6860      	ldr	r0, [r4, #4]
 8008056:	f1a9 010c 	sub.w	r1, r9, #12
 800805a:	f021 0107 	bic.w	r1, r1, #7
 800805e:	f000 0001 	and.w	r0, r0, #1
 8008062:	eb04 0c01 	add.w	ip, r4, r1
 8008066:	4308      	orrs	r0, r1
 8008068:	f04f 0e05 	mov.w	lr, #5
 800806c:	290f      	cmp	r1, #15
 800806e:	6060      	str	r0, [r4, #4]
 8008070:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8008074:	f200 813a 	bhi.w	80082ec <_malloc_r+0x510>
 8008078:	4a29      	ldr	r2, [pc, #164]	; (8008120 <_malloc_r+0x344>)
 800807a:	482a      	ldr	r0, [pc, #168]	; (8008124 <_malloc_r+0x348>)
 800807c:	6811      	ldr	r1, [r2, #0]
 800807e:	68bc      	ldr	r4, [r7, #8]
 8008080:	428b      	cmp	r3, r1
 8008082:	6801      	ldr	r1, [r0, #0]
 8008084:	bf88      	it	hi
 8008086:	6013      	strhi	r3, [r2, #0]
 8008088:	6862      	ldr	r2, [r4, #4]
 800808a:	428b      	cmp	r3, r1
 800808c:	f022 0203 	bic.w	r2, r2, #3
 8008090:	bf88      	it	hi
 8008092:	6003      	strhi	r3, [r0, #0]
 8008094:	e0a7      	b.n	80081e6 <_malloc_r+0x40a>
 8008096:	1962      	adds	r2, r4, r5
 8008098:	f043 0301 	orr.w	r3, r3, #1
 800809c:	f045 0501 	orr.w	r5, r5, #1
 80080a0:	6065      	str	r5, [r4, #4]
 80080a2:	4630      	mov	r0, r6
 80080a4:	60ba      	str	r2, [r7, #8]
 80080a6:	6053      	str	r3, [r2, #4]
 80080a8:	f000 f9a6 	bl	80083f8 <__malloc_unlock>
 80080ac:	3408      	adds	r4, #8
 80080ae:	4620      	mov	r0, r4
 80080b0:	b003      	add	sp, #12
 80080b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80080b6:	4423      	add	r3, r4
 80080b8:	68e1      	ldr	r1, [r4, #12]
 80080ba:	685a      	ldr	r2, [r3, #4]
 80080bc:	68a5      	ldr	r5, [r4, #8]
 80080be:	f042 0201 	orr.w	r2, r2, #1
 80080c2:	60e9      	str	r1, [r5, #12]
 80080c4:	4630      	mov	r0, r6
 80080c6:	608d      	str	r5, [r1, #8]
 80080c8:	605a      	str	r2, [r3, #4]
 80080ca:	f000 f995 	bl	80083f8 <__malloc_unlock>
 80080ce:	3408      	adds	r4, #8
 80080d0:	4620      	mov	r0, r4
 80080d2:	b003      	add	sp, #12
 80080d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80080d8:	68dc      	ldr	r4, [r3, #12]
 80080da:	42a3      	cmp	r3, r4
 80080dc:	bf08      	it	eq
 80080de:	3002      	addeq	r0, #2
 80080e0:	f43f aed6 	beq.w	8007e90 <_malloc_r+0xb4>
 80080e4:	e692      	b.n	8007e0c <_malloc_r+0x30>
 80080e6:	2b14      	cmp	r3, #20
 80080e8:	d971      	bls.n	80081ce <_malloc_r+0x3f2>
 80080ea:	2b54      	cmp	r3, #84	; 0x54
 80080ec:	f200 80ad 	bhi.w	800824a <_malloc_r+0x46e>
 80080f0:	0b2b      	lsrs	r3, r5, #12
 80080f2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80080f6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80080fa:	00c3      	lsls	r3, r0, #3
 80080fc:	e6b3      	b.n	8007e66 <_malloc_r+0x8a>
 80080fe:	4423      	add	r3, r4
 8008100:	4630      	mov	r0, r6
 8008102:	685a      	ldr	r2, [r3, #4]
 8008104:	f042 0201 	orr.w	r2, r2, #1
 8008108:	605a      	str	r2, [r3, #4]
 800810a:	3408      	adds	r4, #8
 800810c:	f000 f974 	bl	80083f8 <__malloc_unlock>
 8008110:	e68c      	b.n	8007e2c <_malloc_r+0x50>
 8008112:	bf00      	nop
 8008114:	20000454 	.word	0x20000454
 8008118:	20000aa8 	.word	0x20000aa8
 800811c:	20000a78 	.word	0x20000a78
 8008120:	20000aa0 	.word	0x20000aa0
 8008124:	20000aa4 	.word	0x20000aa4
 8008128:	2000045c 	.word	0x2000045c
 800812c:	2000085c 	.word	0x2000085c
 8008130:	1961      	adds	r1, r4, r5
 8008132:	f045 0e01 	orr.w	lr, r5, #1
 8008136:	f042 0501 	orr.w	r5, r2, #1
 800813a:	f8c4 e004 	str.w	lr, [r4, #4]
 800813e:	4630      	mov	r0, r6
 8008140:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8008144:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8008148:	604d      	str	r5, [r1, #4]
 800814a:	50e2      	str	r2, [r4, r3]
 800814c:	f000 f954 	bl	80083f8 <__malloc_unlock>
 8008150:	3408      	adds	r4, #8
 8008152:	e66b      	b.n	8007e2c <_malloc_r+0x50>
 8008154:	08e8      	lsrs	r0, r5, #3
 8008156:	f105 0308 	add.w	r3, r5, #8
 800815a:	e64f      	b.n	8007dfc <_malloc_r+0x20>
 800815c:	f108 0801 	add.w	r8, r8, #1
 8008160:	f018 0f03 	tst.w	r8, #3
 8008164:	f10e 0e08 	add.w	lr, lr, #8
 8008168:	f47f aed0 	bne.w	8007f0c <_malloc_r+0x130>
 800816c:	e052      	b.n	8008214 <_malloc_r+0x438>
 800816e:	4419      	add	r1, r3
 8008170:	461c      	mov	r4, r3
 8008172:	684a      	ldr	r2, [r1, #4]
 8008174:	68db      	ldr	r3, [r3, #12]
 8008176:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800817a:	f042 0201 	orr.w	r2, r2, #1
 800817e:	604a      	str	r2, [r1, #4]
 8008180:	4630      	mov	r0, r6
 8008182:	60eb      	str	r3, [r5, #12]
 8008184:	609d      	str	r5, [r3, #8]
 8008186:	f000 f937 	bl	80083f8 <__malloc_unlock>
 800818a:	e64f      	b.n	8007e2c <_malloc_r+0x50>
 800818c:	0a5a      	lsrs	r2, r3, #9
 800818e:	2a04      	cmp	r2, #4
 8008190:	d935      	bls.n	80081fe <_malloc_r+0x422>
 8008192:	2a14      	cmp	r2, #20
 8008194:	d86f      	bhi.n	8008276 <_malloc_r+0x49a>
 8008196:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800819a:	00c9      	lsls	r1, r1, #3
 800819c:	325b      	adds	r2, #91	; 0x5b
 800819e:	eb07 0e01 	add.w	lr, r7, r1
 80081a2:	5879      	ldr	r1, [r7, r1]
 80081a4:	f1ae 0e08 	sub.w	lr, lr, #8
 80081a8:	458e      	cmp	lr, r1
 80081aa:	d058      	beq.n	800825e <_malloc_r+0x482>
 80081ac:	684a      	ldr	r2, [r1, #4]
 80081ae:	f022 0203 	bic.w	r2, r2, #3
 80081b2:	429a      	cmp	r2, r3
 80081b4:	d902      	bls.n	80081bc <_malloc_r+0x3e0>
 80081b6:	6889      	ldr	r1, [r1, #8]
 80081b8:	458e      	cmp	lr, r1
 80081ba:	d1f7      	bne.n	80081ac <_malloc_r+0x3d0>
 80081bc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 80081c0:	687b      	ldr	r3, [r7, #4]
 80081c2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 80081c6:	f8ce 4008 	str.w	r4, [lr, #8]
 80081ca:	60cc      	str	r4, [r1, #12]
 80081cc:	e68c      	b.n	8007ee8 <_malloc_r+0x10c>
 80081ce:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80081d2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80081d6:	00c3      	lsls	r3, r0, #3
 80081d8:	e645      	b.n	8007e66 <_malloc_r+0x8a>
 80081da:	42bc      	cmp	r4, r7
 80081dc:	d072      	beq.n	80082c4 <_malloc_r+0x4e8>
 80081de:	68bc      	ldr	r4, [r7, #8]
 80081e0:	6862      	ldr	r2, [r4, #4]
 80081e2:	f022 0203 	bic.w	r2, r2, #3
 80081e6:	4295      	cmp	r5, r2
 80081e8:	eba2 0305 	sub.w	r3, r2, r5
 80081ec:	d802      	bhi.n	80081f4 <_malloc_r+0x418>
 80081ee:	2b0f      	cmp	r3, #15
 80081f0:	f73f af51 	bgt.w	8008096 <_malloc_r+0x2ba>
 80081f4:	4630      	mov	r0, r6
 80081f6:	f000 f8ff 	bl	80083f8 <__malloc_unlock>
 80081fa:	2400      	movs	r4, #0
 80081fc:	e616      	b.n	8007e2c <_malloc_r+0x50>
 80081fe:	099a      	lsrs	r2, r3, #6
 8008200:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8008204:	00c9      	lsls	r1, r1, #3
 8008206:	3238      	adds	r2, #56	; 0x38
 8008208:	e7c9      	b.n	800819e <_malloc_r+0x3c2>
 800820a:	f8d9 9000 	ldr.w	r9, [r9]
 800820e:	4599      	cmp	r9, r3
 8008210:	f040 8083 	bne.w	800831a <_malloc_r+0x53e>
 8008214:	f010 0f03 	tst.w	r0, #3
 8008218:	f1a9 0308 	sub.w	r3, r9, #8
 800821c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8008220:	d1f3      	bne.n	800820a <_malloc_r+0x42e>
 8008222:	687b      	ldr	r3, [r7, #4]
 8008224:	ea23 0304 	bic.w	r3, r3, r4
 8008228:	607b      	str	r3, [r7, #4]
 800822a:	0064      	lsls	r4, r4, #1
 800822c:	429c      	cmp	r4, r3
 800822e:	f63f aeac 	bhi.w	8007f8a <_malloc_r+0x1ae>
 8008232:	b91c      	cbnz	r4, 800823c <_malloc_r+0x460>
 8008234:	e6a9      	b.n	8007f8a <_malloc_r+0x1ae>
 8008236:	0064      	lsls	r4, r4, #1
 8008238:	f108 0804 	add.w	r8, r8, #4
 800823c:	421c      	tst	r4, r3
 800823e:	d0fa      	beq.n	8008236 <_malloc_r+0x45a>
 8008240:	4640      	mov	r0, r8
 8008242:	e65f      	b.n	8007f04 <_malloc_r+0x128>
 8008244:	f108 0810 	add.w	r8, r8, #16
 8008248:	e6bc      	b.n	8007fc4 <_malloc_r+0x1e8>
 800824a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800824e:	d826      	bhi.n	800829e <_malloc_r+0x4c2>
 8008250:	0beb      	lsrs	r3, r5, #15
 8008252:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8008256:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800825a:	00c3      	lsls	r3, r0, #3
 800825c:	e603      	b.n	8007e66 <_malloc_r+0x8a>
 800825e:	687b      	ldr	r3, [r7, #4]
 8008260:	1092      	asrs	r2, r2, #2
 8008262:	f04f 0801 	mov.w	r8, #1
 8008266:	fa08 f202 	lsl.w	r2, r8, r2
 800826a:	4313      	orrs	r3, r2
 800826c:	607b      	str	r3, [r7, #4]
 800826e:	e7a8      	b.n	80081c2 <_malloc_r+0x3e6>
 8008270:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8008274:	e6ce      	b.n	8008014 <_malloc_r+0x238>
 8008276:	2a54      	cmp	r2, #84	; 0x54
 8008278:	d829      	bhi.n	80082ce <_malloc_r+0x4f2>
 800827a:	0b1a      	lsrs	r2, r3, #12
 800827c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8008280:	00c9      	lsls	r1, r1, #3
 8008282:	326e      	adds	r2, #110	; 0x6e
 8008284:	e78b      	b.n	800819e <_malloc_r+0x3c2>
 8008286:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800828a:	2900      	cmp	r1, #0
 800828c:	f47f aeae 	bne.w	8007fec <_malloc_r+0x210>
 8008290:	eb09 0208 	add.w	r2, r9, r8
 8008294:	68b9      	ldr	r1, [r7, #8]
 8008296:	f042 0201 	orr.w	r2, r2, #1
 800829a:	604a      	str	r2, [r1, #4]
 800829c:	e6ec      	b.n	8008078 <_malloc_r+0x29c>
 800829e:	f240 5254 	movw	r2, #1364	; 0x554
 80082a2:	4293      	cmp	r3, r2
 80082a4:	d81c      	bhi.n	80082e0 <_malloc_r+0x504>
 80082a6:	0cab      	lsrs	r3, r5, #18
 80082a8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80082ac:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80082b0:	00c3      	lsls	r3, r0, #3
 80082b2:	e5d8      	b.n	8007e66 <_malloc_r+0x8a>
 80082b4:	2301      	movs	r3, #1
 80082b6:	f8cb 3004 	str.w	r3, [fp, #4]
 80082ba:	e79b      	b.n	80081f4 <_malloc_r+0x418>
 80082bc:	2101      	movs	r1, #1
 80082be:	f04f 0800 	mov.w	r8, #0
 80082c2:	e6ba      	b.n	800803a <_malloc_r+0x25e>
 80082c4:	4a16      	ldr	r2, [pc, #88]	; (8008320 <_malloc_r+0x544>)
 80082c6:	6813      	ldr	r3, [r2, #0]
 80082c8:	4443      	add	r3, r8
 80082ca:	6013      	str	r3, [r2, #0]
 80082cc:	e68e      	b.n	8007fec <_malloc_r+0x210>
 80082ce:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80082d2:	d814      	bhi.n	80082fe <_malloc_r+0x522>
 80082d4:	0bda      	lsrs	r2, r3, #15
 80082d6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80082da:	00c9      	lsls	r1, r1, #3
 80082dc:	3277      	adds	r2, #119	; 0x77
 80082de:	e75e      	b.n	800819e <_malloc_r+0x3c2>
 80082e0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80082e4:	207f      	movs	r0, #127	; 0x7f
 80082e6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80082ea:	e5bc      	b.n	8007e66 <_malloc_r+0x8a>
 80082ec:	f104 0108 	add.w	r1, r4, #8
 80082f0:	4630      	mov	r0, r6
 80082f2:	9201      	str	r2, [sp, #4]
 80082f4:	f7ff fa48 	bl	8007788 <_free_r>
 80082f8:	9a01      	ldr	r2, [sp, #4]
 80082fa:	6813      	ldr	r3, [r2, #0]
 80082fc:	e6bc      	b.n	8008078 <_malloc_r+0x29c>
 80082fe:	f240 5154 	movw	r1, #1364	; 0x554
 8008302:	428a      	cmp	r2, r1
 8008304:	d805      	bhi.n	8008312 <_malloc_r+0x536>
 8008306:	0c9a      	lsrs	r2, r3, #18
 8008308:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800830c:	00c9      	lsls	r1, r1, #3
 800830e:	327c      	adds	r2, #124	; 0x7c
 8008310:	e745      	b.n	800819e <_malloc_r+0x3c2>
 8008312:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8008316:	227e      	movs	r2, #126	; 0x7e
 8008318:	e741      	b.n	800819e <_malloc_r+0x3c2>
 800831a:	687b      	ldr	r3, [r7, #4]
 800831c:	e785      	b.n	800822a <_malloc_r+0x44e>
 800831e:	bf00      	nop
 8008320:	20000a78 	.word	0x20000a78

08008324 <memmove>:
 8008324:	4288      	cmp	r0, r1
 8008326:	b4f0      	push	{r4, r5, r6, r7}
 8008328:	d90d      	bls.n	8008346 <memmove+0x22>
 800832a:	188b      	adds	r3, r1, r2
 800832c:	4283      	cmp	r3, r0
 800832e:	d90a      	bls.n	8008346 <memmove+0x22>
 8008330:	1884      	adds	r4, r0, r2
 8008332:	b132      	cbz	r2, 8008342 <memmove+0x1e>
 8008334:	4622      	mov	r2, r4
 8008336:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800833a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800833e:	4299      	cmp	r1, r3
 8008340:	d1f9      	bne.n	8008336 <memmove+0x12>
 8008342:	bcf0      	pop	{r4, r5, r6, r7}
 8008344:	4770      	bx	lr
 8008346:	2a0f      	cmp	r2, #15
 8008348:	d949      	bls.n	80083de <memmove+0xba>
 800834a:	ea40 0301 	orr.w	r3, r0, r1
 800834e:	079b      	lsls	r3, r3, #30
 8008350:	d147      	bne.n	80083e2 <memmove+0xbe>
 8008352:	f1a2 0310 	sub.w	r3, r2, #16
 8008356:	091b      	lsrs	r3, r3, #4
 8008358:	f101 0720 	add.w	r7, r1, #32
 800835c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8008360:	f101 0410 	add.w	r4, r1, #16
 8008364:	f100 0510 	add.w	r5, r0, #16
 8008368:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800836c:	f845 6c10 	str.w	r6, [r5, #-16]
 8008370:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8008374:	f845 6c0c 	str.w	r6, [r5, #-12]
 8008378:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800837c:	f845 6c08 	str.w	r6, [r5, #-8]
 8008380:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8008384:	f845 6c04 	str.w	r6, [r5, #-4]
 8008388:	3410      	adds	r4, #16
 800838a:	42bc      	cmp	r4, r7
 800838c:	f105 0510 	add.w	r5, r5, #16
 8008390:	d1ea      	bne.n	8008368 <memmove+0x44>
 8008392:	3301      	adds	r3, #1
 8008394:	f002 050f 	and.w	r5, r2, #15
 8008398:	011b      	lsls	r3, r3, #4
 800839a:	2d03      	cmp	r5, #3
 800839c:	4419      	add	r1, r3
 800839e:	4403      	add	r3, r0
 80083a0:	d921      	bls.n	80083e6 <memmove+0xc2>
 80083a2:	1f1f      	subs	r7, r3, #4
 80083a4:	460e      	mov	r6, r1
 80083a6:	462c      	mov	r4, r5
 80083a8:	3c04      	subs	r4, #4
 80083aa:	f856 cb04 	ldr.w	ip, [r6], #4
 80083ae:	f847 cf04 	str.w	ip, [r7, #4]!
 80083b2:	2c03      	cmp	r4, #3
 80083b4:	d8f8      	bhi.n	80083a8 <memmove+0x84>
 80083b6:	1f2c      	subs	r4, r5, #4
 80083b8:	f024 0403 	bic.w	r4, r4, #3
 80083bc:	3404      	adds	r4, #4
 80083be:	4423      	add	r3, r4
 80083c0:	4421      	add	r1, r4
 80083c2:	f002 0203 	and.w	r2, r2, #3
 80083c6:	2a00      	cmp	r2, #0
 80083c8:	d0bb      	beq.n	8008342 <memmove+0x1e>
 80083ca:	3b01      	subs	r3, #1
 80083cc:	440a      	add	r2, r1
 80083ce:	f811 4b01 	ldrb.w	r4, [r1], #1
 80083d2:	f803 4f01 	strb.w	r4, [r3, #1]!
 80083d6:	4291      	cmp	r1, r2
 80083d8:	d1f9      	bne.n	80083ce <memmove+0xaa>
 80083da:	bcf0      	pop	{r4, r5, r6, r7}
 80083dc:	4770      	bx	lr
 80083de:	4603      	mov	r3, r0
 80083e0:	e7f1      	b.n	80083c6 <memmove+0xa2>
 80083e2:	4603      	mov	r3, r0
 80083e4:	e7f1      	b.n	80083ca <memmove+0xa6>
 80083e6:	462a      	mov	r2, r5
 80083e8:	e7ed      	b.n	80083c6 <memmove+0xa2>
 80083ea:	bf00      	nop

080083ec <__malloc_lock>:
 80083ec:	4801      	ldr	r0, [pc, #4]	; (80083f4 <__malloc_lock+0x8>)
 80083ee:	f7ff bc79 	b.w	8007ce4 <__retarget_lock_acquire_recursive>
 80083f2:	bf00      	nop
 80083f4:	20000b3c 	.word	0x20000b3c

080083f8 <__malloc_unlock>:
 80083f8:	4801      	ldr	r0, [pc, #4]	; (8008400 <__malloc_unlock+0x8>)
 80083fa:	f7ff bc75 	b.w	8007ce8 <__retarget_lock_release_recursive>
 80083fe:	bf00      	nop
 8008400:	20000b3c 	.word	0x20000b3c

08008404 <_Balloc>:
 8008404:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8008406:	b570      	push	{r4, r5, r6, lr}
 8008408:	4605      	mov	r5, r0
 800840a:	460c      	mov	r4, r1
 800840c:	b14b      	cbz	r3, 8008422 <_Balloc+0x1e>
 800840e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8008412:	b180      	cbz	r0, 8008436 <_Balloc+0x32>
 8008414:	6802      	ldr	r2, [r0, #0]
 8008416:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800841a:	2300      	movs	r3, #0
 800841c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8008420:	bd70      	pop	{r4, r5, r6, pc}
 8008422:	2221      	movs	r2, #33	; 0x21
 8008424:	2104      	movs	r1, #4
 8008426:	f000 fe1d 	bl	8009064 <_calloc_r>
 800842a:	4603      	mov	r3, r0
 800842c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800842e:	2800      	cmp	r0, #0
 8008430:	d1ed      	bne.n	800840e <_Balloc+0xa>
 8008432:	2000      	movs	r0, #0
 8008434:	bd70      	pop	{r4, r5, r6, pc}
 8008436:	2101      	movs	r1, #1
 8008438:	fa01 f604 	lsl.w	r6, r1, r4
 800843c:	1d72      	adds	r2, r6, #5
 800843e:	4628      	mov	r0, r5
 8008440:	0092      	lsls	r2, r2, #2
 8008442:	f000 fe0f 	bl	8009064 <_calloc_r>
 8008446:	2800      	cmp	r0, #0
 8008448:	d0f3      	beq.n	8008432 <_Balloc+0x2e>
 800844a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800844e:	e7e4      	b.n	800841a <_Balloc+0x16>

08008450 <_Bfree>:
 8008450:	b131      	cbz	r1, 8008460 <_Bfree+0x10>
 8008452:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8008454:	684a      	ldr	r2, [r1, #4]
 8008456:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800845a:	6008      	str	r0, [r1, #0]
 800845c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8008460:	4770      	bx	lr
 8008462:	bf00      	nop

08008464 <__multadd>:
 8008464:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008466:	690c      	ldr	r4, [r1, #16]
 8008468:	b083      	sub	sp, #12
 800846a:	460d      	mov	r5, r1
 800846c:	4606      	mov	r6, r0
 800846e:	f101 0c14 	add.w	ip, r1, #20
 8008472:	2700      	movs	r7, #0
 8008474:	f8dc 0000 	ldr.w	r0, [ip]
 8008478:	b281      	uxth	r1, r0
 800847a:	fb02 3301 	mla	r3, r2, r1, r3
 800847e:	0c01      	lsrs	r1, r0, #16
 8008480:	0c18      	lsrs	r0, r3, #16
 8008482:	fb02 0101 	mla	r1, r2, r1, r0
 8008486:	b29b      	uxth	r3, r3
 8008488:	3701      	adds	r7, #1
 800848a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800848e:	42bc      	cmp	r4, r7
 8008490:	f84c 3b04 	str.w	r3, [ip], #4
 8008494:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8008498:	dcec      	bgt.n	8008474 <__multadd+0x10>
 800849a:	b13b      	cbz	r3, 80084ac <__multadd+0x48>
 800849c:	68aa      	ldr	r2, [r5, #8]
 800849e:	42a2      	cmp	r2, r4
 80084a0:	dd07      	ble.n	80084b2 <__multadd+0x4e>
 80084a2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80084a6:	3401      	adds	r4, #1
 80084a8:	6153      	str	r3, [r2, #20]
 80084aa:	612c      	str	r4, [r5, #16]
 80084ac:	4628      	mov	r0, r5
 80084ae:	b003      	add	sp, #12
 80084b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80084b2:	6869      	ldr	r1, [r5, #4]
 80084b4:	9301      	str	r3, [sp, #4]
 80084b6:	3101      	adds	r1, #1
 80084b8:	4630      	mov	r0, r6
 80084ba:	f7ff ffa3 	bl	8008404 <_Balloc>
 80084be:	692a      	ldr	r2, [r5, #16]
 80084c0:	3202      	adds	r2, #2
 80084c2:	f105 010c 	add.w	r1, r5, #12
 80084c6:	4607      	mov	r7, r0
 80084c8:	0092      	lsls	r2, r2, #2
 80084ca:	300c      	adds	r0, #12
 80084cc:	f7f8 f818 	bl	8000500 <memcpy>
 80084d0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80084d2:	6869      	ldr	r1, [r5, #4]
 80084d4:	9b01      	ldr	r3, [sp, #4]
 80084d6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80084da:	6028      	str	r0, [r5, #0]
 80084dc:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80084e0:	463d      	mov	r5, r7
 80084e2:	e7de      	b.n	80084a2 <__multadd+0x3e>

080084e4 <__hi0bits>:
 80084e4:	0c02      	lsrs	r2, r0, #16
 80084e6:	0412      	lsls	r2, r2, #16
 80084e8:	4603      	mov	r3, r0
 80084ea:	b9c2      	cbnz	r2, 800851e <__hi0bits+0x3a>
 80084ec:	0403      	lsls	r3, r0, #16
 80084ee:	2010      	movs	r0, #16
 80084f0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80084f4:	bf04      	itt	eq
 80084f6:	021b      	lsleq	r3, r3, #8
 80084f8:	3008      	addeq	r0, #8
 80084fa:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80084fe:	bf04      	itt	eq
 8008500:	011b      	lsleq	r3, r3, #4
 8008502:	3004      	addeq	r0, #4
 8008504:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8008508:	bf04      	itt	eq
 800850a:	009b      	lsleq	r3, r3, #2
 800850c:	3002      	addeq	r0, #2
 800850e:	2b00      	cmp	r3, #0
 8008510:	db04      	blt.n	800851c <__hi0bits+0x38>
 8008512:	005b      	lsls	r3, r3, #1
 8008514:	d501      	bpl.n	800851a <__hi0bits+0x36>
 8008516:	3001      	adds	r0, #1
 8008518:	4770      	bx	lr
 800851a:	2020      	movs	r0, #32
 800851c:	4770      	bx	lr
 800851e:	2000      	movs	r0, #0
 8008520:	e7e6      	b.n	80084f0 <__hi0bits+0xc>
 8008522:	bf00      	nop

08008524 <__lo0bits>:
 8008524:	6803      	ldr	r3, [r0, #0]
 8008526:	f013 0207 	ands.w	r2, r3, #7
 800852a:	4601      	mov	r1, r0
 800852c:	d007      	beq.n	800853e <__lo0bits+0x1a>
 800852e:	07da      	lsls	r2, r3, #31
 8008530:	d41f      	bmi.n	8008572 <__lo0bits+0x4e>
 8008532:	0798      	lsls	r0, r3, #30
 8008534:	d51f      	bpl.n	8008576 <__lo0bits+0x52>
 8008536:	085b      	lsrs	r3, r3, #1
 8008538:	600b      	str	r3, [r1, #0]
 800853a:	2001      	movs	r0, #1
 800853c:	4770      	bx	lr
 800853e:	b298      	uxth	r0, r3
 8008540:	b1a0      	cbz	r0, 800856c <__lo0bits+0x48>
 8008542:	4610      	mov	r0, r2
 8008544:	f013 0fff 	tst.w	r3, #255	; 0xff
 8008548:	bf04      	itt	eq
 800854a:	0a1b      	lsreq	r3, r3, #8
 800854c:	3008      	addeq	r0, #8
 800854e:	071a      	lsls	r2, r3, #28
 8008550:	bf04      	itt	eq
 8008552:	091b      	lsreq	r3, r3, #4
 8008554:	3004      	addeq	r0, #4
 8008556:	079a      	lsls	r2, r3, #30
 8008558:	bf04      	itt	eq
 800855a:	089b      	lsreq	r3, r3, #2
 800855c:	3002      	addeq	r0, #2
 800855e:	07da      	lsls	r2, r3, #31
 8008560:	d402      	bmi.n	8008568 <__lo0bits+0x44>
 8008562:	085b      	lsrs	r3, r3, #1
 8008564:	d00b      	beq.n	800857e <__lo0bits+0x5a>
 8008566:	3001      	adds	r0, #1
 8008568:	600b      	str	r3, [r1, #0]
 800856a:	4770      	bx	lr
 800856c:	0c1b      	lsrs	r3, r3, #16
 800856e:	2010      	movs	r0, #16
 8008570:	e7e8      	b.n	8008544 <__lo0bits+0x20>
 8008572:	2000      	movs	r0, #0
 8008574:	4770      	bx	lr
 8008576:	089b      	lsrs	r3, r3, #2
 8008578:	600b      	str	r3, [r1, #0]
 800857a:	2002      	movs	r0, #2
 800857c:	4770      	bx	lr
 800857e:	2020      	movs	r0, #32
 8008580:	4770      	bx	lr
 8008582:	bf00      	nop

08008584 <__i2b>:
 8008584:	b510      	push	{r4, lr}
 8008586:	460c      	mov	r4, r1
 8008588:	2101      	movs	r1, #1
 800858a:	f7ff ff3b 	bl	8008404 <_Balloc>
 800858e:	2201      	movs	r2, #1
 8008590:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8008594:	bd10      	pop	{r4, pc}
 8008596:	bf00      	nop

08008598 <__multiply>:
 8008598:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800859c:	690e      	ldr	r6, [r1, #16]
 800859e:	6914      	ldr	r4, [r2, #16]
 80085a0:	42a6      	cmp	r6, r4
 80085a2:	b083      	sub	sp, #12
 80085a4:	460f      	mov	r7, r1
 80085a6:	4615      	mov	r5, r2
 80085a8:	da04      	bge.n	80085b4 <__multiply+0x1c>
 80085aa:	4632      	mov	r2, r6
 80085ac:	462f      	mov	r7, r5
 80085ae:	4626      	mov	r6, r4
 80085b0:	460d      	mov	r5, r1
 80085b2:	4614      	mov	r4, r2
 80085b4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80085b8:	eb06 0804 	add.w	r8, r6, r4
 80085bc:	4543      	cmp	r3, r8
 80085be:	bfb8      	it	lt
 80085c0:	3101      	addlt	r1, #1
 80085c2:	f7ff ff1f 	bl	8008404 <_Balloc>
 80085c6:	f100 0914 	add.w	r9, r0, #20
 80085ca:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80085ce:	45f1      	cmp	r9, lr
 80085d0:	9000      	str	r0, [sp, #0]
 80085d2:	d205      	bcs.n	80085e0 <__multiply+0x48>
 80085d4:	464b      	mov	r3, r9
 80085d6:	2200      	movs	r2, #0
 80085d8:	f843 2b04 	str.w	r2, [r3], #4
 80085dc:	459e      	cmp	lr, r3
 80085de:	d8fb      	bhi.n	80085d8 <__multiply+0x40>
 80085e0:	f105 0a14 	add.w	sl, r5, #20
 80085e4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80085e8:	f107 0314 	add.w	r3, r7, #20
 80085ec:	45a2      	cmp	sl, r4
 80085ee:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80085f2:	d261      	bcs.n	80086b8 <__multiply+0x120>
 80085f4:	1b64      	subs	r4, r4, r5
 80085f6:	3c15      	subs	r4, #21
 80085f8:	f024 0403 	bic.w	r4, r4, #3
 80085fc:	f8cd e004 	str.w	lr, [sp, #4]
 8008600:	44a2      	add	sl, r4
 8008602:	f105 0210 	add.w	r2, r5, #16
 8008606:	469e      	mov	lr, r3
 8008608:	e005      	b.n	8008616 <__multiply+0x7e>
 800860a:	0c2d      	lsrs	r5, r5, #16
 800860c:	d12b      	bne.n	8008666 <__multiply+0xce>
 800860e:	4592      	cmp	sl, r2
 8008610:	f109 0904 	add.w	r9, r9, #4
 8008614:	d04e      	beq.n	80086b4 <__multiply+0x11c>
 8008616:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800861a:	fa1f fb85 	uxth.w	fp, r5
 800861e:	f1bb 0f00 	cmp.w	fp, #0
 8008622:	d0f2      	beq.n	800860a <__multiply+0x72>
 8008624:	4677      	mov	r7, lr
 8008626:	464e      	mov	r6, r9
 8008628:	2000      	movs	r0, #0
 800862a:	e000      	b.n	800862e <__multiply+0x96>
 800862c:	4626      	mov	r6, r4
 800862e:	f857 1b04 	ldr.w	r1, [r7], #4
 8008632:	6834      	ldr	r4, [r6, #0]
 8008634:	b28b      	uxth	r3, r1
 8008636:	b2a5      	uxth	r5, r4
 8008638:	0c09      	lsrs	r1, r1, #16
 800863a:	0c24      	lsrs	r4, r4, #16
 800863c:	fb0b 5303 	mla	r3, fp, r3, r5
 8008640:	4403      	add	r3, r0
 8008642:	fb0b 4001 	mla	r0, fp, r1, r4
 8008646:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800864a:	4634      	mov	r4, r6
 800864c:	b29b      	uxth	r3, r3
 800864e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8008652:	45bc      	cmp	ip, r7
 8008654:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8008658:	f844 3b04 	str.w	r3, [r4], #4
 800865c:	d8e6      	bhi.n	800862c <__multiply+0x94>
 800865e:	6070      	str	r0, [r6, #4]
 8008660:	6815      	ldr	r5, [r2, #0]
 8008662:	0c2d      	lsrs	r5, r5, #16
 8008664:	d0d3      	beq.n	800860e <__multiply+0x76>
 8008666:	f8d9 3000 	ldr.w	r3, [r9]
 800866a:	4676      	mov	r6, lr
 800866c:	4618      	mov	r0, r3
 800866e:	46cb      	mov	fp, r9
 8008670:	2100      	movs	r1, #0
 8008672:	e000      	b.n	8008676 <__multiply+0xde>
 8008674:	46a3      	mov	fp, r4
 8008676:	8834      	ldrh	r4, [r6, #0]
 8008678:	0c00      	lsrs	r0, r0, #16
 800867a:	fb05 0004 	mla	r0, r5, r4, r0
 800867e:	4401      	add	r1, r0
 8008680:	b29b      	uxth	r3, r3
 8008682:	465c      	mov	r4, fp
 8008684:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8008688:	f844 3b04 	str.w	r3, [r4], #4
 800868c:	f856 3b04 	ldr.w	r3, [r6], #4
 8008690:	f8db 0004 	ldr.w	r0, [fp, #4]
 8008694:	0c1b      	lsrs	r3, r3, #16
 8008696:	b287      	uxth	r7, r0
 8008698:	fb05 7303 	mla	r3, r5, r3, r7
 800869c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80086a0:	45b4      	cmp	ip, r6
 80086a2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80086a6:	d8e5      	bhi.n	8008674 <__multiply+0xdc>
 80086a8:	4592      	cmp	sl, r2
 80086aa:	f8cb 3004 	str.w	r3, [fp, #4]
 80086ae:	f109 0904 	add.w	r9, r9, #4
 80086b2:	d1b0      	bne.n	8008616 <__multiply+0x7e>
 80086b4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80086b8:	f1b8 0f00 	cmp.w	r8, #0
 80086bc:	dd0b      	ble.n	80086d6 <__multiply+0x13e>
 80086be:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80086c2:	f1ae 0e04 	sub.w	lr, lr, #4
 80086c6:	b11b      	cbz	r3, 80086d0 <__multiply+0x138>
 80086c8:	e005      	b.n	80086d6 <__multiply+0x13e>
 80086ca:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80086ce:	b913      	cbnz	r3, 80086d6 <__multiply+0x13e>
 80086d0:	f1b8 0801 	subs.w	r8, r8, #1
 80086d4:	d1f9      	bne.n	80086ca <__multiply+0x132>
 80086d6:	9800      	ldr	r0, [sp, #0]
 80086d8:	f8c0 8010 	str.w	r8, [r0, #16]
 80086dc:	b003      	add	sp, #12
 80086de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80086e2:	bf00      	nop

080086e4 <__pow5mult>:
 80086e4:	f012 0303 	ands.w	r3, r2, #3
 80086e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80086ec:	4614      	mov	r4, r2
 80086ee:	4607      	mov	r7, r0
 80086f0:	d12e      	bne.n	8008750 <__pow5mult+0x6c>
 80086f2:	460d      	mov	r5, r1
 80086f4:	10a4      	asrs	r4, r4, #2
 80086f6:	d01c      	beq.n	8008732 <__pow5mult+0x4e>
 80086f8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80086fa:	b396      	cbz	r6, 8008762 <__pow5mult+0x7e>
 80086fc:	07e3      	lsls	r3, r4, #31
 80086fe:	f04f 0800 	mov.w	r8, #0
 8008702:	d406      	bmi.n	8008712 <__pow5mult+0x2e>
 8008704:	1064      	asrs	r4, r4, #1
 8008706:	d014      	beq.n	8008732 <__pow5mult+0x4e>
 8008708:	6830      	ldr	r0, [r6, #0]
 800870a:	b1a8      	cbz	r0, 8008738 <__pow5mult+0x54>
 800870c:	4606      	mov	r6, r0
 800870e:	07e3      	lsls	r3, r4, #31
 8008710:	d5f8      	bpl.n	8008704 <__pow5mult+0x20>
 8008712:	4632      	mov	r2, r6
 8008714:	4629      	mov	r1, r5
 8008716:	4638      	mov	r0, r7
 8008718:	f7ff ff3e 	bl	8008598 <__multiply>
 800871c:	b1b5      	cbz	r5, 800874c <__pow5mult+0x68>
 800871e:	686a      	ldr	r2, [r5, #4]
 8008720:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8008722:	1064      	asrs	r4, r4, #1
 8008724:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008728:	6029      	str	r1, [r5, #0]
 800872a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800872e:	4605      	mov	r5, r0
 8008730:	d1ea      	bne.n	8008708 <__pow5mult+0x24>
 8008732:	4628      	mov	r0, r5
 8008734:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008738:	4632      	mov	r2, r6
 800873a:	4631      	mov	r1, r6
 800873c:	4638      	mov	r0, r7
 800873e:	f7ff ff2b 	bl	8008598 <__multiply>
 8008742:	6030      	str	r0, [r6, #0]
 8008744:	f8c0 8000 	str.w	r8, [r0]
 8008748:	4606      	mov	r6, r0
 800874a:	e7e0      	b.n	800870e <__pow5mult+0x2a>
 800874c:	4605      	mov	r5, r0
 800874e:	e7d9      	b.n	8008704 <__pow5mult+0x20>
 8008750:	3b01      	subs	r3, #1
 8008752:	4a0b      	ldr	r2, [pc, #44]	; (8008780 <__pow5mult+0x9c>)
 8008754:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8008758:	2300      	movs	r3, #0
 800875a:	f7ff fe83 	bl	8008464 <__multadd>
 800875e:	4605      	mov	r5, r0
 8008760:	e7c8      	b.n	80086f4 <__pow5mult+0x10>
 8008762:	2101      	movs	r1, #1
 8008764:	4638      	mov	r0, r7
 8008766:	f7ff fe4d 	bl	8008404 <_Balloc>
 800876a:	f240 2371 	movw	r3, #625	; 0x271
 800876e:	6143      	str	r3, [r0, #20]
 8008770:	2201      	movs	r2, #1
 8008772:	2300      	movs	r3, #0
 8008774:	6102      	str	r2, [r0, #16]
 8008776:	4606      	mov	r6, r0
 8008778:	64b8      	str	r0, [r7, #72]	; 0x48
 800877a:	6003      	str	r3, [r0, #0]
 800877c:	e7be      	b.n	80086fc <__pow5mult+0x18>
 800877e:	bf00      	nop
 8008780:	08009770 	.word	0x08009770

08008784 <__lshift>:
 8008784:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008788:	4691      	mov	r9, r2
 800878a:	690a      	ldr	r2, [r1, #16]
 800878c:	460e      	mov	r6, r1
 800878e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8008792:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8008796:	eb04 0802 	add.w	r8, r4, r2
 800879a:	f108 0501 	add.w	r5, r8, #1
 800879e:	429d      	cmp	r5, r3
 80087a0:	4607      	mov	r7, r0
 80087a2:	dd04      	ble.n	80087ae <__lshift+0x2a>
 80087a4:	005b      	lsls	r3, r3, #1
 80087a6:	429d      	cmp	r5, r3
 80087a8:	f101 0101 	add.w	r1, r1, #1
 80087ac:	dcfa      	bgt.n	80087a4 <__lshift+0x20>
 80087ae:	4638      	mov	r0, r7
 80087b0:	f7ff fe28 	bl	8008404 <_Balloc>
 80087b4:	2c00      	cmp	r4, #0
 80087b6:	f100 0314 	add.w	r3, r0, #20
 80087ba:	dd37      	ble.n	800882c <__lshift+0xa8>
 80087bc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80087c0:	2200      	movs	r2, #0
 80087c2:	f843 2b04 	str.w	r2, [r3], #4
 80087c6:	428b      	cmp	r3, r1
 80087c8:	d1fb      	bne.n	80087c2 <__lshift+0x3e>
 80087ca:	6934      	ldr	r4, [r6, #16]
 80087cc:	f106 0314 	add.w	r3, r6, #20
 80087d0:	f019 091f 	ands.w	r9, r9, #31
 80087d4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80087d8:	d020      	beq.n	800881c <__lshift+0x98>
 80087da:	f1c9 0e20 	rsb	lr, r9, #32
 80087de:	2200      	movs	r2, #0
 80087e0:	e000      	b.n	80087e4 <__lshift+0x60>
 80087e2:	4651      	mov	r1, sl
 80087e4:	681c      	ldr	r4, [r3, #0]
 80087e6:	468a      	mov	sl, r1
 80087e8:	fa04 f409 	lsl.w	r4, r4, r9
 80087ec:	4314      	orrs	r4, r2
 80087ee:	f84a 4b04 	str.w	r4, [sl], #4
 80087f2:	f853 2b04 	ldr.w	r2, [r3], #4
 80087f6:	4563      	cmp	r3, ip
 80087f8:	fa22 f20e 	lsr.w	r2, r2, lr
 80087fc:	d3f1      	bcc.n	80087e2 <__lshift+0x5e>
 80087fe:	604a      	str	r2, [r1, #4]
 8008800:	b10a      	cbz	r2, 8008806 <__lshift+0x82>
 8008802:	f108 0502 	add.w	r5, r8, #2
 8008806:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8008808:	6872      	ldr	r2, [r6, #4]
 800880a:	3d01      	subs	r5, #1
 800880c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008810:	6105      	str	r5, [r0, #16]
 8008812:	6031      	str	r1, [r6, #0]
 8008814:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8008818:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800881c:	3904      	subs	r1, #4
 800881e:	f853 2b04 	ldr.w	r2, [r3], #4
 8008822:	f841 2f04 	str.w	r2, [r1, #4]!
 8008826:	459c      	cmp	ip, r3
 8008828:	d8f9      	bhi.n	800881e <__lshift+0x9a>
 800882a:	e7ec      	b.n	8008806 <__lshift+0x82>
 800882c:	4619      	mov	r1, r3
 800882e:	e7cc      	b.n	80087ca <__lshift+0x46>

08008830 <__mcmp>:
 8008830:	b430      	push	{r4, r5}
 8008832:	690b      	ldr	r3, [r1, #16]
 8008834:	4605      	mov	r5, r0
 8008836:	6900      	ldr	r0, [r0, #16]
 8008838:	1ac0      	subs	r0, r0, r3
 800883a:	d10f      	bne.n	800885c <__mcmp+0x2c>
 800883c:	009b      	lsls	r3, r3, #2
 800883e:	3514      	adds	r5, #20
 8008840:	3114      	adds	r1, #20
 8008842:	4419      	add	r1, r3
 8008844:	442b      	add	r3, r5
 8008846:	e001      	b.n	800884c <__mcmp+0x1c>
 8008848:	429d      	cmp	r5, r3
 800884a:	d207      	bcs.n	800885c <__mcmp+0x2c>
 800884c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8008850:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8008854:	4294      	cmp	r4, r2
 8008856:	d0f7      	beq.n	8008848 <__mcmp+0x18>
 8008858:	d302      	bcc.n	8008860 <__mcmp+0x30>
 800885a:	2001      	movs	r0, #1
 800885c:	bc30      	pop	{r4, r5}
 800885e:	4770      	bx	lr
 8008860:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008864:	e7fa      	b.n	800885c <__mcmp+0x2c>
 8008866:	bf00      	nop

08008868 <__mdiff>:
 8008868:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800886c:	6913      	ldr	r3, [r2, #16]
 800886e:	690d      	ldr	r5, [r1, #16]
 8008870:	1aed      	subs	r5, r5, r3
 8008872:	2d00      	cmp	r5, #0
 8008874:	460e      	mov	r6, r1
 8008876:	4690      	mov	r8, r2
 8008878:	f101 0414 	add.w	r4, r1, #20
 800887c:	f102 0714 	add.w	r7, r2, #20
 8008880:	d114      	bne.n	80088ac <__mdiff+0x44>
 8008882:	009b      	lsls	r3, r3, #2
 8008884:	18e2      	adds	r2, r4, r3
 8008886:	443b      	add	r3, r7
 8008888:	e001      	b.n	800888e <__mdiff+0x26>
 800888a:	42a2      	cmp	r2, r4
 800888c:	d959      	bls.n	8008942 <__mdiff+0xda>
 800888e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8008892:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8008896:	458c      	cmp	ip, r1
 8008898:	d0f7      	beq.n	800888a <__mdiff+0x22>
 800889a:	d209      	bcs.n	80088b0 <__mdiff+0x48>
 800889c:	4622      	mov	r2, r4
 800889e:	4633      	mov	r3, r6
 80088a0:	463c      	mov	r4, r7
 80088a2:	4646      	mov	r6, r8
 80088a4:	4617      	mov	r7, r2
 80088a6:	4698      	mov	r8, r3
 80088a8:	2501      	movs	r5, #1
 80088aa:	e001      	b.n	80088b0 <__mdiff+0x48>
 80088ac:	dbf6      	blt.n	800889c <__mdiff+0x34>
 80088ae:	2500      	movs	r5, #0
 80088b0:	6871      	ldr	r1, [r6, #4]
 80088b2:	f7ff fda7 	bl	8008404 <_Balloc>
 80088b6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80088ba:	6936      	ldr	r6, [r6, #16]
 80088bc:	60c5      	str	r5, [r0, #12]
 80088be:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80088c2:	46bc      	mov	ip, r7
 80088c4:	f100 0514 	add.w	r5, r0, #20
 80088c8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80088cc:	2300      	movs	r3, #0
 80088ce:	f85c 1b04 	ldr.w	r1, [ip], #4
 80088d2:	f854 8b04 	ldr.w	r8, [r4], #4
 80088d6:	b28a      	uxth	r2, r1
 80088d8:	fa13 f388 	uxtah	r3, r3, r8
 80088dc:	0c09      	lsrs	r1, r1, #16
 80088de:	1a9a      	subs	r2, r3, r2
 80088e0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80088e4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80088e8:	b292      	uxth	r2, r2
 80088ea:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80088ee:	45e6      	cmp	lr, ip
 80088f0:	f845 2b04 	str.w	r2, [r5], #4
 80088f4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80088f8:	d8e9      	bhi.n	80088ce <__mdiff+0x66>
 80088fa:	42a7      	cmp	r7, r4
 80088fc:	d917      	bls.n	800892e <__mdiff+0xc6>
 80088fe:	46ae      	mov	lr, r5
 8008900:	46a4      	mov	ip, r4
 8008902:	f85c 2b04 	ldr.w	r2, [ip], #4
 8008906:	fa13 f382 	uxtah	r3, r3, r2
 800890a:	1419      	asrs	r1, r3, #16
 800890c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8008910:	b29b      	uxth	r3, r3
 8008912:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8008916:	4567      	cmp	r7, ip
 8008918:	f84e 2b04 	str.w	r2, [lr], #4
 800891c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8008920:	d8ef      	bhi.n	8008902 <__mdiff+0x9a>
 8008922:	43e4      	mvns	r4, r4
 8008924:	4427      	add	r7, r4
 8008926:	f027 0703 	bic.w	r7, r7, #3
 800892a:	3704      	adds	r7, #4
 800892c:	443d      	add	r5, r7
 800892e:	3d04      	subs	r5, #4
 8008930:	b922      	cbnz	r2, 800893c <__mdiff+0xd4>
 8008932:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8008936:	3e01      	subs	r6, #1
 8008938:	2b00      	cmp	r3, #0
 800893a:	d0fa      	beq.n	8008932 <__mdiff+0xca>
 800893c:	6106      	str	r6, [r0, #16]
 800893e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008942:	2100      	movs	r1, #0
 8008944:	f7ff fd5e 	bl	8008404 <_Balloc>
 8008948:	2201      	movs	r2, #1
 800894a:	2300      	movs	r3, #0
 800894c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8008950:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08008954 <__d2b>:
 8008954:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8008958:	460f      	mov	r7, r1
 800895a:	b083      	sub	sp, #12
 800895c:	2101      	movs	r1, #1
 800895e:	ec55 4b10 	vmov	r4, r5, d0
 8008962:	4616      	mov	r6, r2
 8008964:	f7ff fd4e 	bl	8008404 <_Balloc>
 8008968:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800896c:	4681      	mov	r9, r0
 800896e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8008972:	f1b8 0f00 	cmp.w	r8, #0
 8008976:	d001      	beq.n	800897c <__d2b+0x28>
 8008978:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800897c:	2c00      	cmp	r4, #0
 800897e:	9301      	str	r3, [sp, #4]
 8008980:	d024      	beq.n	80089cc <__d2b+0x78>
 8008982:	a802      	add	r0, sp, #8
 8008984:	f840 4d08 	str.w	r4, [r0, #-8]!
 8008988:	f7ff fdcc 	bl	8008524 <__lo0bits>
 800898c:	2800      	cmp	r0, #0
 800898e:	d136      	bne.n	80089fe <__d2b+0xaa>
 8008990:	e9dd 2300 	ldrd	r2, r3, [sp]
 8008994:	f8c9 2014 	str.w	r2, [r9, #20]
 8008998:	2b00      	cmp	r3, #0
 800899a:	bf0c      	ite	eq
 800899c:	2101      	moveq	r1, #1
 800899e:	2102      	movne	r1, #2
 80089a0:	f8c9 3018 	str.w	r3, [r9, #24]
 80089a4:	f8c9 1010 	str.w	r1, [r9, #16]
 80089a8:	f1b8 0f00 	cmp.w	r8, #0
 80089ac:	d11b      	bne.n	80089e6 <__d2b+0x92>
 80089ae:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80089b2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80089b6:	6038      	str	r0, [r7, #0]
 80089b8:	6918      	ldr	r0, [r3, #16]
 80089ba:	f7ff fd93 	bl	80084e4 <__hi0bits>
 80089be:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80089c2:	6030      	str	r0, [r6, #0]
 80089c4:	4648      	mov	r0, r9
 80089c6:	b003      	add	sp, #12
 80089c8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80089cc:	a801      	add	r0, sp, #4
 80089ce:	f7ff fda9 	bl	8008524 <__lo0bits>
 80089d2:	9b01      	ldr	r3, [sp, #4]
 80089d4:	f8c9 3014 	str.w	r3, [r9, #20]
 80089d8:	2101      	movs	r1, #1
 80089da:	3020      	adds	r0, #32
 80089dc:	f8c9 1010 	str.w	r1, [r9, #16]
 80089e0:	f1b8 0f00 	cmp.w	r8, #0
 80089e4:	d0e3      	beq.n	80089ae <__d2b+0x5a>
 80089e6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80089ea:	eb08 0300 	add.w	r3, r8, r0
 80089ee:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80089f2:	603b      	str	r3, [r7, #0]
 80089f4:	6030      	str	r0, [r6, #0]
 80089f6:	4648      	mov	r0, r9
 80089f8:	b003      	add	sp, #12
 80089fa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80089fe:	e9dd 1300 	ldrd	r1, r3, [sp]
 8008a02:	f1c0 0220 	rsb	r2, r0, #32
 8008a06:	fa03 f202 	lsl.w	r2, r3, r2
 8008a0a:	430a      	orrs	r2, r1
 8008a0c:	40c3      	lsrs	r3, r0
 8008a0e:	9301      	str	r3, [sp, #4]
 8008a10:	f8c9 2014 	str.w	r2, [r9, #20]
 8008a14:	e7c0      	b.n	8008998 <__d2b+0x44>
 8008a16:	bf00      	nop

08008a18 <_realloc_r>:
 8008a18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008a1c:	4692      	mov	sl, r2
 8008a1e:	b083      	sub	sp, #12
 8008a20:	2900      	cmp	r1, #0
 8008a22:	f000 80a1 	beq.w	8008b68 <_realloc_r+0x150>
 8008a26:	460d      	mov	r5, r1
 8008a28:	4680      	mov	r8, r0
 8008a2a:	f10a 040b 	add.w	r4, sl, #11
 8008a2e:	f7ff fcdd 	bl	80083ec <__malloc_lock>
 8008a32:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8008a36:	2c16      	cmp	r4, #22
 8008a38:	f022 0603 	bic.w	r6, r2, #3
 8008a3c:	f1a5 0708 	sub.w	r7, r5, #8
 8008a40:	d83e      	bhi.n	8008ac0 <_realloc_r+0xa8>
 8008a42:	2410      	movs	r4, #16
 8008a44:	4621      	mov	r1, r4
 8008a46:	45a2      	cmp	sl, r4
 8008a48:	d83f      	bhi.n	8008aca <_realloc_r+0xb2>
 8008a4a:	428e      	cmp	r6, r1
 8008a4c:	eb07 0906 	add.w	r9, r7, r6
 8008a50:	da74      	bge.n	8008b3c <_realloc_r+0x124>
 8008a52:	4bc7      	ldr	r3, [pc, #796]	; (8008d70 <_realloc_r+0x358>)
 8008a54:	6898      	ldr	r0, [r3, #8]
 8008a56:	4548      	cmp	r0, r9
 8008a58:	f000 80aa 	beq.w	8008bb0 <_realloc_r+0x198>
 8008a5c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8008a60:	f020 0301 	bic.w	r3, r0, #1
 8008a64:	444b      	add	r3, r9
 8008a66:	685b      	ldr	r3, [r3, #4]
 8008a68:	07db      	lsls	r3, r3, #31
 8008a6a:	f140 8083 	bpl.w	8008b74 <_realloc_r+0x15c>
 8008a6e:	07d2      	lsls	r2, r2, #31
 8008a70:	d534      	bpl.n	8008adc <_realloc_r+0xc4>
 8008a72:	4651      	mov	r1, sl
 8008a74:	4640      	mov	r0, r8
 8008a76:	f7ff f9b1 	bl	8007ddc <_malloc_r>
 8008a7a:	4682      	mov	sl, r0
 8008a7c:	b1e0      	cbz	r0, 8008ab8 <_realloc_r+0xa0>
 8008a7e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8008a82:	f023 0301 	bic.w	r3, r3, #1
 8008a86:	443b      	add	r3, r7
 8008a88:	f1a0 0208 	sub.w	r2, r0, #8
 8008a8c:	4293      	cmp	r3, r2
 8008a8e:	f000 80f9 	beq.w	8008c84 <_realloc_r+0x26c>
 8008a92:	1f32      	subs	r2, r6, #4
 8008a94:	2a24      	cmp	r2, #36	; 0x24
 8008a96:	f200 8107 	bhi.w	8008ca8 <_realloc_r+0x290>
 8008a9a:	2a13      	cmp	r2, #19
 8008a9c:	6829      	ldr	r1, [r5, #0]
 8008a9e:	f200 80e6 	bhi.w	8008c6e <_realloc_r+0x256>
 8008aa2:	4603      	mov	r3, r0
 8008aa4:	462a      	mov	r2, r5
 8008aa6:	6019      	str	r1, [r3, #0]
 8008aa8:	6851      	ldr	r1, [r2, #4]
 8008aaa:	6059      	str	r1, [r3, #4]
 8008aac:	6892      	ldr	r2, [r2, #8]
 8008aae:	609a      	str	r2, [r3, #8]
 8008ab0:	4629      	mov	r1, r5
 8008ab2:	4640      	mov	r0, r8
 8008ab4:	f7fe fe68 	bl	8007788 <_free_r>
 8008ab8:	4640      	mov	r0, r8
 8008aba:	f7ff fc9d 	bl	80083f8 <__malloc_unlock>
 8008abe:	e04f      	b.n	8008b60 <_realloc_r+0x148>
 8008ac0:	f024 0407 	bic.w	r4, r4, #7
 8008ac4:	2c00      	cmp	r4, #0
 8008ac6:	4621      	mov	r1, r4
 8008ac8:	dabd      	bge.n	8008a46 <_realloc_r+0x2e>
 8008aca:	f04f 0a00 	mov.w	sl, #0
 8008ace:	230c      	movs	r3, #12
 8008ad0:	4650      	mov	r0, sl
 8008ad2:	f8c8 3000 	str.w	r3, [r8]
 8008ad6:	b003      	add	sp, #12
 8008ad8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008adc:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8008ae0:	eba7 0b03 	sub.w	fp, r7, r3
 8008ae4:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008ae8:	f022 0203 	bic.w	r2, r2, #3
 8008aec:	18b3      	adds	r3, r6, r2
 8008aee:	428b      	cmp	r3, r1
 8008af0:	dbbf      	blt.n	8008a72 <_realloc_r+0x5a>
 8008af2:	46da      	mov	sl, fp
 8008af4:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008af8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8008afc:	1f32      	subs	r2, r6, #4
 8008afe:	2a24      	cmp	r2, #36	; 0x24
 8008b00:	60c1      	str	r1, [r0, #12]
 8008b02:	eb0b 0903 	add.w	r9, fp, r3
 8008b06:	6088      	str	r0, [r1, #8]
 8008b08:	f200 80c6 	bhi.w	8008c98 <_realloc_r+0x280>
 8008b0c:	2a13      	cmp	r2, #19
 8008b0e:	6829      	ldr	r1, [r5, #0]
 8008b10:	f240 80c0 	bls.w	8008c94 <_realloc_r+0x27c>
 8008b14:	f8cb 1008 	str.w	r1, [fp, #8]
 8008b18:	6869      	ldr	r1, [r5, #4]
 8008b1a:	f8cb 100c 	str.w	r1, [fp, #12]
 8008b1e:	2a1b      	cmp	r2, #27
 8008b20:	68a9      	ldr	r1, [r5, #8]
 8008b22:	f200 80d8 	bhi.w	8008cd6 <_realloc_r+0x2be>
 8008b26:	f10b 0210 	add.w	r2, fp, #16
 8008b2a:	3508      	adds	r5, #8
 8008b2c:	6011      	str	r1, [r2, #0]
 8008b2e:	6869      	ldr	r1, [r5, #4]
 8008b30:	6051      	str	r1, [r2, #4]
 8008b32:	68a9      	ldr	r1, [r5, #8]
 8008b34:	6091      	str	r1, [r2, #8]
 8008b36:	461e      	mov	r6, r3
 8008b38:	465f      	mov	r7, fp
 8008b3a:	4655      	mov	r5, sl
 8008b3c:	687b      	ldr	r3, [r7, #4]
 8008b3e:	1b32      	subs	r2, r6, r4
 8008b40:	2a0f      	cmp	r2, #15
 8008b42:	f003 0301 	and.w	r3, r3, #1
 8008b46:	d822      	bhi.n	8008b8e <_realloc_r+0x176>
 8008b48:	4333      	orrs	r3, r6
 8008b4a:	607b      	str	r3, [r7, #4]
 8008b4c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8008b50:	f043 0301 	orr.w	r3, r3, #1
 8008b54:	f8c9 3004 	str.w	r3, [r9, #4]
 8008b58:	4640      	mov	r0, r8
 8008b5a:	f7ff fc4d 	bl	80083f8 <__malloc_unlock>
 8008b5e:	46aa      	mov	sl, r5
 8008b60:	4650      	mov	r0, sl
 8008b62:	b003      	add	sp, #12
 8008b64:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008b68:	4611      	mov	r1, r2
 8008b6a:	b003      	add	sp, #12
 8008b6c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008b70:	f7ff b934 	b.w	8007ddc <_malloc_r>
 8008b74:	f020 0003 	bic.w	r0, r0, #3
 8008b78:	1833      	adds	r3, r6, r0
 8008b7a:	428b      	cmp	r3, r1
 8008b7c:	db61      	blt.n	8008c42 <_realloc_r+0x22a>
 8008b7e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8008b82:	461e      	mov	r6, r3
 8008b84:	60ca      	str	r2, [r1, #12]
 8008b86:	eb07 0903 	add.w	r9, r7, r3
 8008b8a:	6091      	str	r1, [r2, #8]
 8008b8c:	e7d6      	b.n	8008b3c <_realloc_r+0x124>
 8008b8e:	1939      	adds	r1, r7, r4
 8008b90:	4323      	orrs	r3, r4
 8008b92:	f042 0201 	orr.w	r2, r2, #1
 8008b96:	607b      	str	r3, [r7, #4]
 8008b98:	604a      	str	r2, [r1, #4]
 8008b9a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8008b9e:	f043 0301 	orr.w	r3, r3, #1
 8008ba2:	3108      	adds	r1, #8
 8008ba4:	f8c9 3004 	str.w	r3, [r9, #4]
 8008ba8:	4640      	mov	r0, r8
 8008baa:	f7fe fded 	bl	8007788 <_free_r>
 8008bae:	e7d3      	b.n	8008b58 <_realloc_r+0x140>
 8008bb0:	6840      	ldr	r0, [r0, #4]
 8008bb2:	f020 0903 	bic.w	r9, r0, #3
 8008bb6:	44b1      	add	r9, r6
 8008bb8:	f104 0010 	add.w	r0, r4, #16
 8008bbc:	4581      	cmp	r9, r0
 8008bbe:	da77      	bge.n	8008cb0 <_realloc_r+0x298>
 8008bc0:	07d2      	lsls	r2, r2, #31
 8008bc2:	f53f af56 	bmi.w	8008a72 <_realloc_r+0x5a>
 8008bc6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8008bca:	eba7 0b02 	sub.w	fp, r7, r2
 8008bce:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008bd2:	f022 0203 	bic.w	r2, r2, #3
 8008bd6:	4491      	add	r9, r2
 8008bd8:	4548      	cmp	r0, r9
 8008bda:	dc87      	bgt.n	8008aec <_realloc_r+0xd4>
 8008bdc:	46da      	mov	sl, fp
 8008bde:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008be2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8008be6:	1f32      	subs	r2, r6, #4
 8008be8:	2a24      	cmp	r2, #36	; 0x24
 8008bea:	60c1      	str	r1, [r0, #12]
 8008bec:	6088      	str	r0, [r1, #8]
 8008bee:	f200 80a1 	bhi.w	8008d34 <_realloc_r+0x31c>
 8008bf2:	2a13      	cmp	r2, #19
 8008bf4:	6829      	ldr	r1, [r5, #0]
 8008bf6:	f240 809b 	bls.w	8008d30 <_realloc_r+0x318>
 8008bfa:	f8cb 1008 	str.w	r1, [fp, #8]
 8008bfe:	6869      	ldr	r1, [r5, #4]
 8008c00:	f8cb 100c 	str.w	r1, [fp, #12]
 8008c04:	2a1b      	cmp	r2, #27
 8008c06:	68a9      	ldr	r1, [r5, #8]
 8008c08:	f200 809b 	bhi.w	8008d42 <_realloc_r+0x32a>
 8008c0c:	f10b 0210 	add.w	r2, fp, #16
 8008c10:	3508      	adds	r5, #8
 8008c12:	6011      	str	r1, [r2, #0]
 8008c14:	6869      	ldr	r1, [r5, #4]
 8008c16:	6051      	str	r1, [r2, #4]
 8008c18:	68a9      	ldr	r1, [r5, #8]
 8008c1a:	6091      	str	r1, [r2, #8]
 8008c1c:	eb0b 0104 	add.w	r1, fp, r4
 8008c20:	eba9 0204 	sub.w	r2, r9, r4
 8008c24:	f042 0201 	orr.w	r2, r2, #1
 8008c28:	6099      	str	r1, [r3, #8]
 8008c2a:	604a      	str	r2, [r1, #4]
 8008c2c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8008c30:	f003 0301 	and.w	r3, r3, #1
 8008c34:	431c      	orrs	r4, r3
 8008c36:	4640      	mov	r0, r8
 8008c38:	f8cb 4004 	str.w	r4, [fp, #4]
 8008c3c:	f7ff fbdc 	bl	80083f8 <__malloc_unlock>
 8008c40:	e78e      	b.n	8008b60 <_realloc_r+0x148>
 8008c42:	07d3      	lsls	r3, r2, #31
 8008c44:	f53f af15 	bmi.w	8008a72 <_realloc_r+0x5a>
 8008c48:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8008c4c:	eba7 0b03 	sub.w	fp, r7, r3
 8008c50:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008c54:	f022 0203 	bic.w	r2, r2, #3
 8008c58:	4410      	add	r0, r2
 8008c5a:	1983      	adds	r3, r0, r6
 8008c5c:	428b      	cmp	r3, r1
 8008c5e:	f6ff af45 	blt.w	8008aec <_realloc_r+0xd4>
 8008c62:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8008c66:	46da      	mov	sl, fp
 8008c68:	60ca      	str	r2, [r1, #12]
 8008c6a:	6091      	str	r1, [r2, #8]
 8008c6c:	e742      	b.n	8008af4 <_realloc_r+0xdc>
 8008c6e:	6001      	str	r1, [r0, #0]
 8008c70:	686b      	ldr	r3, [r5, #4]
 8008c72:	6043      	str	r3, [r0, #4]
 8008c74:	2a1b      	cmp	r2, #27
 8008c76:	d83a      	bhi.n	8008cee <_realloc_r+0x2d6>
 8008c78:	f105 0208 	add.w	r2, r5, #8
 8008c7c:	f100 0308 	add.w	r3, r0, #8
 8008c80:	68a9      	ldr	r1, [r5, #8]
 8008c82:	e710      	b.n	8008aa6 <_realloc_r+0x8e>
 8008c84:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8008c88:	f023 0303 	bic.w	r3, r3, #3
 8008c8c:	441e      	add	r6, r3
 8008c8e:	eb07 0906 	add.w	r9, r7, r6
 8008c92:	e753      	b.n	8008b3c <_realloc_r+0x124>
 8008c94:	4652      	mov	r2, sl
 8008c96:	e749      	b.n	8008b2c <_realloc_r+0x114>
 8008c98:	4629      	mov	r1, r5
 8008c9a:	4650      	mov	r0, sl
 8008c9c:	461e      	mov	r6, r3
 8008c9e:	465f      	mov	r7, fp
 8008ca0:	f7ff fb40 	bl	8008324 <memmove>
 8008ca4:	4655      	mov	r5, sl
 8008ca6:	e749      	b.n	8008b3c <_realloc_r+0x124>
 8008ca8:	4629      	mov	r1, r5
 8008caa:	f7ff fb3b 	bl	8008324 <memmove>
 8008cae:	e6ff      	b.n	8008ab0 <_realloc_r+0x98>
 8008cb0:	4427      	add	r7, r4
 8008cb2:	eba9 0904 	sub.w	r9, r9, r4
 8008cb6:	f049 0201 	orr.w	r2, r9, #1
 8008cba:	609f      	str	r7, [r3, #8]
 8008cbc:	607a      	str	r2, [r7, #4]
 8008cbe:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8008cc2:	f003 0301 	and.w	r3, r3, #1
 8008cc6:	431c      	orrs	r4, r3
 8008cc8:	4640      	mov	r0, r8
 8008cca:	f845 4c04 	str.w	r4, [r5, #-4]
 8008cce:	f7ff fb93 	bl	80083f8 <__malloc_unlock>
 8008cd2:	46aa      	mov	sl, r5
 8008cd4:	e744      	b.n	8008b60 <_realloc_r+0x148>
 8008cd6:	f8cb 1010 	str.w	r1, [fp, #16]
 8008cda:	68e9      	ldr	r1, [r5, #12]
 8008cdc:	f8cb 1014 	str.w	r1, [fp, #20]
 8008ce0:	2a24      	cmp	r2, #36	; 0x24
 8008ce2:	d010      	beq.n	8008d06 <_realloc_r+0x2ee>
 8008ce4:	6929      	ldr	r1, [r5, #16]
 8008ce6:	f10b 0218 	add.w	r2, fp, #24
 8008cea:	3510      	adds	r5, #16
 8008cec:	e71e      	b.n	8008b2c <_realloc_r+0x114>
 8008cee:	68ab      	ldr	r3, [r5, #8]
 8008cf0:	6083      	str	r3, [r0, #8]
 8008cf2:	68eb      	ldr	r3, [r5, #12]
 8008cf4:	60c3      	str	r3, [r0, #12]
 8008cf6:	2a24      	cmp	r2, #36	; 0x24
 8008cf8:	d010      	beq.n	8008d1c <_realloc_r+0x304>
 8008cfa:	f105 0210 	add.w	r2, r5, #16
 8008cfe:	f100 0310 	add.w	r3, r0, #16
 8008d02:	6929      	ldr	r1, [r5, #16]
 8008d04:	e6cf      	b.n	8008aa6 <_realloc_r+0x8e>
 8008d06:	692a      	ldr	r2, [r5, #16]
 8008d08:	f8cb 2018 	str.w	r2, [fp, #24]
 8008d0c:	696a      	ldr	r2, [r5, #20]
 8008d0e:	f8cb 201c 	str.w	r2, [fp, #28]
 8008d12:	69a9      	ldr	r1, [r5, #24]
 8008d14:	f10b 0220 	add.w	r2, fp, #32
 8008d18:	3518      	adds	r5, #24
 8008d1a:	e707      	b.n	8008b2c <_realloc_r+0x114>
 8008d1c:	692b      	ldr	r3, [r5, #16]
 8008d1e:	6103      	str	r3, [r0, #16]
 8008d20:	696b      	ldr	r3, [r5, #20]
 8008d22:	6143      	str	r3, [r0, #20]
 8008d24:	69a9      	ldr	r1, [r5, #24]
 8008d26:	f105 0218 	add.w	r2, r5, #24
 8008d2a:	f100 0318 	add.w	r3, r0, #24
 8008d2e:	e6ba      	b.n	8008aa6 <_realloc_r+0x8e>
 8008d30:	4652      	mov	r2, sl
 8008d32:	e76e      	b.n	8008c12 <_realloc_r+0x1fa>
 8008d34:	4629      	mov	r1, r5
 8008d36:	4650      	mov	r0, sl
 8008d38:	9301      	str	r3, [sp, #4]
 8008d3a:	f7ff faf3 	bl	8008324 <memmove>
 8008d3e:	9b01      	ldr	r3, [sp, #4]
 8008d40:	e76c      	b.n	8008c1c <_realloc_r+0x204>
 8008d42:	f8cb 1010 	str.w	r1, [fp, #16]
 8008d46:	68e9      	ldr	r1, [r5, #12]
 8008d48:	f8cb 1014 	str.w	r1, [fp, #20]
 8008d4c:	2a24      	cmp	r2, #36	; 0x24
 8008d4e:	d004      	beq.n	8008d5a <_realloc_r+0x342>
 8008d50:	6929      	ldr	r1, [r5, #16]
 8008d52:	f10b 0218 	add.w	r2, fp, #24
 8008d56:	3510      	adds	r5, #16
 8008d58:	e75b      	b.n	8008c12 <_realloc_r+0x1fa>
 8008d5a:	692a      	ldr	r2, [r5, #16]
 8008d5c:	f8cb 2018 	str.w	r2, [fp, #24]
 8008d60:	696a      	ldr	r2, [r5, #20]
 8008d62:	f8cb 201c 	str.w	r2, [fp, #28]
 8008d66:	69a9      	ldr	r1, [r5, #24]
 8008d68:	f10b 0220 	add.w	r2, fp, #32
 8008d6c:	3518      	adds	r5, #24
 8008d6e:	e750      	b.n	8008c12 <_realloc_r+0x1fa>
 8008d70:	20000454 	.word	0x20000454

08008d74 <frexp>:
 8008d74:	ec53 2b10 	vmov	r2, r3, d0
 8008d78:	b570      	push	{r4, r5, r6, lr}
 8008d7a:	4e16      	ldr	r6, [pc, #88]	; (8008dd4 <frexp+0x60>)
 8008d7c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8008d80:	2500      	movs	r5, #0
 8008d82:	42b1      	cmp	r1, r6
 8008d84:	4604      	mov	r4, r0
 8008d86:	6005      	str	r5, [r0, #0]
 8008d88:	dc21      	bgt.n	8008dce <frexp+0x5a>
 8008d8a:	ee10 6a10 	vmov	r6, s0
 8008d8e:	430e      	orrs	r6, r1
 8008d90:	d01d      	beq.n	8008dce <frexp+0x5a>
 8008d92:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8008d96:	4618      	mov	r0, r3
 8008d98:	da0c      	bge.n	8008db4 <frexp+0x40>
 8008d9a:	4619      	mov	r1, r3
 8008d9c:	2200      	movs	r2, #0
 8008d9e:	ee10 0a10 	vmov	r0, s0
 8008da2:	4b0d      	ldr	r3, [pc, #52]	; (8008dd8 <frexp+0x64>)
 8008da4:	f7f7 fec8 	bl	8000b38 <__aeabi_dmul>
 8008da8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8008dac:	4602      	mov	r2, r0
 8008dae:	4608      	mov	r0, r1
 8008db0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8008db4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8008db8:	1509      	asrs	r1, r1, #20
 8008dba:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8008dbe:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8008dc2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8008dc6:	4429      	add	r1, r5
 8008dc8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8008dcc:	6021      	str	r1, [r4, #0]
 8008dce:	ec43 2b10 	vmov	d0, r2, r3
 8008dd2:	bd70      	pop	{r4, r5, r6, pc}
 8008dd4:	7fefffff 	.word	0x7fefffff
 8008dd8:	43500000 	.word	0x43500000

08008ddc <_sbrk_r>:
 8008ddc:	b538      	push	{r3, r4, r5, lr}
 8008dde:	4c07      	ldr	r4, [pc, #28]	; (8008dfc <_sbrk_r+0x20>)
 8008de0:	2300      	movs	r3, #0
 8008de2:	4605      	mov	r5, r0
 8008de4:	4608      	mov	r0, r1
 8008de6:	6023      	str	r3, [r4, #0]
 8008de8:	f7fb fc32 	bl	8004650 <_sbrk>
 8008dec:	1c43      	adds	r3, r0, #1
 8008dee:	d000      	beq.n	8008df2 <_sbrk_r+0x16>
 8008df0:	bd38      	pop	{r3, r4, r5, pc}
 8008df2:	6823      	ldr	r3, [r4, #0]
 8008df4:	2b00      	cmp	r3, #0
 8008df6:	d0fb      	beq.n	8008df0 <_sbrk_r+0x14>
 8008df8:	602b      	str	r3, [r5, #0]
 8008dfa:	bd38      	pop	{r3, r4, r5, pc}
 8008dfc:	20000b50 	.word	0x20000b50

08008e00 <__sread>:
 8008e00:	b510      	push	{r4, lr}
 8008e02:	460c      	mov	r4, r1
 8008e04:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008e08:	f000 fabc 	bl	8009384 <_read_r>
 8008e0c:	2800      	cmp	r0, #0
 8008e0e:	db03      	blt.n	8008e18 <__sread+0x18>
 8008e10:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8008e12:	4403      	add	r3, r0
 8008e14:	6523      	str	r3, [r4, #80]	; 0x50
 8008e16:	bd10      	pop	{r4, pc}
 8008e18:	89a3      	ldrh	r3, [r4, #12]
 8008e1a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8008e1e:	81a3      	strh	r3, [r4, #12]
 8008e20:	bd10      	pop	{r4, pc}
 8008e22:	bf00      	nop

08008e24 <__swrite>:
 8008e24:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008e28:	4616      	mov	r6, r2
 8008e2a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8008e2e:	461f      	mov	r7, r3
 8008e30:	05d3      	lsls	r3, r2, #23
 8008e32:	460c      	mov	r4, r1
 8008e34:	4605      	mov	r5, r0
 8008e36:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008e3a:	d507      	bpl.n	8008e4c <__swrite+0x28>
 8008e3c:	2200      	movs	r2, #0
 8008e3e:	2302      	movs	r3, #2
 8008e40:	f000 fa74 	bl	800932c <_lseek_r>
 8008e44:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8008e48:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8008e4c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8008e50:	81a2      	strh	r2, [r4, #12]
 8008e52:	463b      	mov	r3, r7
 8008e54:	4632      	mov	r2, r6
 8008e56:	4628      	mov	r0, r5
 8008e58:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8008e5c:	f000 b88c 	b.w	8008f78 <_write_r>

08008e60 <__sseek>:
 8008e60:	b510      	push	{r4, lr}
 8008e62:	460c      	mov	r4, r1
 8008e64:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008e68:	f000 fa60 	bl	800932c <_lseek_r>
 8008e6c:	89a3      	ldrh	r3, [r4, #12]
 8008e6e:	1c42      	adds	r2, r0, #1
 8008e70:	bf0e      	itee	eq
 8008e72:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8008e76:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8008e7a:	6520      	strne	r0, [r4, #80]	; 0x50
 8008e7c:	81a3      	strh	r3, [r4, #12]
 8008e7e:	bd10      	pop	{r4, pc}

08008e80 <__sclose>:
 8008e80:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008e84:	f000 b922 	b.w	80090cc <_close_r>

08008e88 <strncpy>:
 8008e88:	ea40 0301 	orr.w	r3, r0, r1
 8008e8c:	079b      	lsls	r3, r3, #30
 8008e8e:	b470      	push	{r4, r5, r6}
 8008e90:	d12a      	bne.n	8008ee8 <strncpy+0x60>
 8008e92:	2a03      	cmp	r2, #3
 8008e94:	d928      	bls.n	8008ee8 <strncpy+0x60>
 8008e96:	460c      	mov	r4, r1
 8008e98:	4603      	mov	r3, r0
 8008e9a:	4621      	mov	r1, r4
 8008e9c:	f854 6b04 	ldr.w	r6, [r4], #4
 8008ea0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8008ea4:	ea25 0506 	bic.w	r5, r5, r6
 8008ea8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8008eac:	d106      	bne.n	8008ebc <strncpy+0x34>
 8008eae:	3a04      	subs	r2, #4
 8008eb0:	2a03      	cmp	r2, #3
 8008eb2:	f843 6b04 	str.w	r6, [r3], #4
 8008eb6:	4621      	mov	r1, r4
 8008eb8:	d8ef      	bhi.n	8008e9a <strncpy+0x12>
 8008eba:	b19a      	cbz	r2, 8008ee4 <strncpy+0x5c>
 8008ebc:	780c      	ldrb	r4, [r1, #0]
 8008ebe:	701c      	strb	r4, [r3, #0]
 8008ec0:	3a01      	subs	r2, #1
 8008ec2:	3301      	adds	r3, #1
 8008ec4:	b13c      	cbz	r4, 8008ed6 <strncpy+0x4e>
 8008ec6:	b16a      	cbz	r2, 8008ee4 <strncpy+0x5c>
 8008ec8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8008ecc:	f803 4b01 	strb.w	r4, [r3], #1
 8008ed0:	3a01      	subs	r2, #1
 8008ed2:	2c00      	cmp	r4, #0
 8008ed4:	d1f7      	bne.n	8008ec6 <strncpy+0x3e>
 8008ed6:	b12a      	cbz	r2, 8008ee4 <strncpy+0x5c>
 8008ed8:	441a      	add	r2, r3
 8008eda:	2100      	movs	r1, #0
 8008edc:	f803 1b01 	strb.w	r1, [r3], #1
 8008ee0:	4293      	cmp	r3, r2
 8008ee2:	d1fb      	bne.n	8008edc <strncpy+0x54>
 8008ee4:	bc70      	pop	{r4, r5, r6}
 8008ee6:	4770      	bx	lr
 8008ee8:	4603      	mov	r3, r0
 8008eea:	e7e6      	b.n	8008eba <strncpy+0x32>

08008eec <__sprint_r.part.0>:
 8008eec:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008ef0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8008ef2:	049c      	lsls	r4, r3, #18
 8008ef4:	4692      	mov	sl, r2
 8008ef6:	d52d      	bpl.n	8008f54 <__sprint_r.part.0+0x68>
 8008ef8:	6893      	ldr	r3, [r2, #8]
 8008efa:	6812      	ldr	r2, [r2, #0]
 8008efc:	b343      	cbz	r3, 8008f50 <__sprint_r.part.0+0x64>
 8008efe:	460e      	mov	r6, r1
 8008f00:	4607      	mov	r7, r0
 8008f02:	f102 0908 	add.w	r9, r2, #8
 8008f06:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8008f0a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8008f0e:	d015      	beq.n	8008f3c <__sprint_r.part.0+0x50>
 8008f10:	3d04      	subs	r5, #4
 8008f12:	2400      	movs	r4, #0
 8008f14:	e001      	b.n	8008f1a <__sprint_r.part.0+0x2e>
 8008f16:	45a0      	cmp	r8, r4
 8008f18:	d00e      	beq.n	8008f38 <__sprint_r.part.0+0x4c>
 8008f1a:	4632      	mov	r2, r6
 8008f1c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8008f20:	4638      	mov	r0, r7
 8008f22:	f000 f99d 	bl	8009260 <_fputwc_r>
 8008f26:	1c43      	adds	r3, r0, #1
 8008f28:	f104 0401 	add.w	r4, r4, #1
 8008f2c:	d1f3      	bne.n	8008f16 <__sprint_r.part.0+0x2a>
 8008f2e:	2300      	movs	r3, #0
 8008f30:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8008f34:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008f38:	f8da 3008 	ldr.w	r3, [sl, #8]
 8008f3c:	f02b 0b03 	bic.w	fp, fp, #3
 8008f40:	eba3 030b 	sub.w	r3, r3, fp
 8008f44:	f8ca 3008 	str.w	r3, [sl, #8]
 8008f48:	f109 0908 	add.w	r9, r9, #8
 8008f4c:	2b00      	cmp	r3, #0
 8008f4e:	d1da      	bne.n	8008f06 <__sprint_r.part.0+0x1a>
 8008f50:	2000      	movs	r0, #0
 8008f52:	e7ec      	b.n	8008f2e <__sprint_r.part.0+0x42>
 8008f54:	f7fe fd0c 	bl	8007970 <__sfvwrite_r>
 8008f58:	2300      	movs	r3, #0
 8008f5a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8008f5e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008f62:	bf00      	nop

08008f64 <__sprint_r>:
 8008f64:	6893      	ldr	r3, [r2, #8]
 8008f66:	b10b      	cbz	r3, 8008f6c <__sprint_r+0x8>
 8008f68:	f7ff bfc0 	b.w	8008eec <__sprint_r.part.0>
 8008f6c:	b410      	push	{r4}
 8008f6e:	4618      	mov	r0, r3
 8008f70:	6053      	str	r3, [r2, #4]
 8008f72:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008f76:	4770      	bx	lr

08008f78 <_write_r>:
 8008f78:	b570      	push	{r4, r5, r6, lr}
 8008f7a:	460d      	mov	r5, r1
 8008f7c:	4c08      	ldr	r4, [pc, #32]	; (8008fa0 <_write_r+0x28>)
 8008f7e:	4611      	mov	r1, r2
 8008f80:	4606      	mov	r6, r0
 8008f82:	461a      	mov	r2, r3
 8008f84:	4628      	mov	r0, r5
 8008f86:	2300      	movs	r3, #0
 8008f88:	6023      	str	r3, [r4, #0]
 8008f8a:	f7fb fb4e 	bl	800462a <_write>
 8008f8e:	1c43      	adds	r3, r0, #1
 8008f90:	d000      	beq.n	8008f94 <_write_r+0x1c>
 8008f92:	bd70      	pop	{r4, r5, r6, pc}
 8008f94:	6823      	ldr	r3, [r4, #0]
 8008f96:	2b00      	cmp	r3, #0
 8008f98:	d0fb      	beq.n	8008f92 <_write_r+0x1a>
 8008f9a:	6033      	str	r3, [r6, #0]
 8008f9c:	bd70      	pop	{r4, r5, r6, pc}
 8008f9e:	bf00      	nop
 8008fa0:	20000b50 	.word	0x20000b50

08008fa4 <__register_exitproc>:
 8008fa4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008fa8:	4d2b      	ldr	r5, [pc, #172]	; (8009058 <__register_exitproc+0xb4>)
 8008faa:	4606      	mov	r6, r0
 8008fac:	6828      	ldr	r0, [r5, #0]
 8008fae:	4698      	mov	r8, r3
 8008fb0:	460f      	mov	r7, r1
 8008fb2:	4691      	mov	r9, r2
 8008fb4:	f7fe fe96 	bl	8007ce4 <__retarget_lock_acquire_recursive>
 8008fb8:	4b28      	ldr	r3, [pc, #160]	; (800905c <__register_exitproc+0xb8>)
 8008fba:	681c      	ldr	r4, [r3, #0]
 8008fbc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8008fc0:	2b00      	cmp	r3, #0
 8008fc2:	d03d      	beq.n	8009040 <__register_exitproc+0x9c>
 8008fc4:	685a      	ldr	r2, [r3, #4]
 8008fc6:	2a1f      	cmp	r2, #31
 8008fc8:	dc0d      	bgt.n	8008fe6 <__register_exitproc+0x42>
 8008fca:	f102 0c01 	add.w	ip, r2, #1
 8008fce:	bb16      	cbnz	r6, 8009016 <__register_exitproc+0x72>
 8008fd0:	3202      	adds	r2, #2
 8008fd2:	f8c3 c004 	str.w	ip, [r3, #4]
 8008fd6:	6828      	ldr	r0, [r5, #0]
 8008fd8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8008fdc:	f7fe fe84 	bl	8007ce8 <__retarget_lock_release_recursive>
 8008fe0:	2000      	movs	r0, #0
 8008fe2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008fe6:	4b1e      	ldr	r3, [pc, #120]	; (8009060 <__register_exitproc+0xbc>)
 8008fe8:	b37b      	cbz	r3, 800904a <__register_exitproc+0xa6>
 8008fea:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8008fee:	f3af 8000 	nop.w
 8008ff2:	4603      	mov	r3, r0
 8008ff4:	b348      	cbz	r0, 800904a <__register_exitproc+0xa6>
 8008ff6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8008ffa:	2100      	movs	r1, #0
 8008ffc:	e9c0 2100 	strd	r2, r1, [r0]
 8009000:	f04f 0c01 	mov.w	ip, #1
 8009004:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8009008:	460a      	mov	r2, r1
 800900a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800900e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8009012:	2e00      	cmp	r6, #0
 8009014:	d0dc      	beq.n	8008fd0 <__register_exitproc+0x2c>
 8009016:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800901a:	2401      	movs	r4, #1
 800901c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8009020:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8009024:	4094      	lsls	r4, r2
 8009026:	4320      	orrs	r0, r4
 8009028:	2e02      	cmp	r6, #2
 800902a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800902e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8009032:	d1cd      	bne.n	8008fd0 <__register_exitproc+0x2c>
 8009034:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8009038:	430c      	orrs	r4, r1
 800903a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800903e:	e7c7      	b.n	8008fd0 <__register_exitproc+0x2c>
 8009040:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8009044:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8009048:	e7bc      	b.n	8008fc4 <__register_exitproc+0x20>
 800904a:	6828      	ldr	r0, [r5, #0]
 800904c:	f7fe fe4c 	bl	8007ce8 <__retarget_lock_release_recursive>
 8009050:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009054:	e7c5      	b.n	8008fe2 <__register_exitproc+0x3e>
 8009056:	bf00      	nop
 8009058:	20000450 	.word	0x20000450
 800905c:	08009600 	.word	0x08009600
 8009060:	00000000 	.word	0x00000000

08009064 <_calloc_r>:
 8009064:	b510      	push	{r4, lr}
 8009066:	fb02 f101 	mul.w	r1, r2, r1
 800906a:	f7fe feb7 	bl	8007ddc <_malloc_r>
 800906e:	4604      	mov	r4, r0
 8009070:	b1d8      	cbz	r0, 80090aa <_calloc_r+0x46>
 8009072:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8009076:	f022 0203 	bic.w	r2, r2, #3
 800907a:	3a04      	subs	r2, #4
 800907c:	2a24      	cmp	r2, #36	; 0x24
 800907e:	d81d      	bhi.n	80090bc <_calloc_r+0x58>
 8009080:	2a13      	cmp	r2, #19
 8009082:	d914      	bls.n	80090ae <_calloc_r+0x4a>
 8009084:	2300      	movs	r3, #0
 8009086:	2a1b      	cmp	r2, #27
 8009088:	e9c0 3300 	strd	r3, r3, [r0]
 800908c:	d91b      	bls.n	80090c6 <_calloc_r+0x62>
 800908e:	2a24      	cmp	r2, #36	; 0x24
 8009090:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8009094:	bf0a      	itet	eq
 8009096:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 800909a:	f100 0210 	addne.w	r2, r0, #16
 800909e:	f100 0218 	addeq.w	r2, r0, #24
 80090a2:	2300      	movs	r3, #0
 80090a4:	e9c2 3300 	strd	r3, r3, [r2]
 80090a8:	6093      	str	r3, [r2, #8]
 80090aa:	4620      	mov	r0, r4
 80090ac:	bd10      	pop	{r4, pc}
 80090ae:	4602      	mov	r2, r0
 80090b0:	2300      	movs	r3, #0
 80090b2:	e9c2 3300 	strd	r3, r3, [r2]
 80090b6:	6093      	str	r3, [r2, #8]
 80090b8:	4620      	mov	r0, r4
 80090ba:	bd10      	pop	{r4, pc}
 80090bc:	2100      	movs	r1, #0
 80090be:	f7fb fb6d 	bl	800479c <memset>
 80090c2:	4620      	mov	r0, r4
 80090c4:	bd10      	pop	{r4, pc}
 80090c6:	f100 0208 	add.w	r2, r0, #8
 80090ca:	e7f1      	b.n	80090b0 <_calloc_r+0x4c>

080090cc <_close_r>:
 80090cc:	b538      	push	{r3, r4, r5, lr}
 80090ce:	4c07      	ldr	r4, [pc, #28]	; (80090ec <_close_r+0x20>)
 80090d0:	2300      	movs	r3, #0
 80090d2:	4605      	mov	r5, r0
 80090d4:	4608      	mov	r0, r1
 80090d6:	6023      	str	r3, [r4, #0]
 80090d8:	f7fb fad6 	bl	8004688 <_close>
 80090dc:	1c43      	adds	r3, r0, #1
 80090de:	d000      	beq.n	80090e2 <_close_r+0x16>
 80090e0:	bd38      	pop	{r3, r4, r5, pc}
 80090e2:	6823      	ldr	r3, [r4, #0]
 80090e4:	2b00      	cmp	r3, #0
 80090e6:	d0fb      	beq.n	80090e0 <_close_r+0x14>
 80090e8:	602b      	str	r3, [r5, #0]
 80090ea:	bd38      	pop	{r3, r4, r5, pc}
 80090ec:	20000b50 	.word	0x20000b50

080090f0 <_fclose_r>:
 80090f0:	b570      	push	{r4, r5, r6, lr}
 80090f2:	2900      	cmp	r1, #0
 80090f4:	d048      	beq.n	8009188 <_fclose_r+0x98>
 80090f6:	4605      	mov	r5, r0
 80090f8:	460c      	mov	r4, r1
 80090fa:	b110      	cbz	r0, 8009102 <_fclose_r+0x12>
 80090fc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80090fe:	2b00      	cmp	r3, #0
 8009100:	d048      	beq.n	8009194 <_fclose_r+0xa4>
 8009102:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009104:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009108:	07d0      	lsls	r0, r2, #31
 800910a:	d440      	bmi.n	800918e <_fclose_r+0x9e>
 800910c:	0599      	lsls	r1, r3, #22
 800910e:	d530      	bpl.n	8009172 <_fclose_r+0x82>
 8009110:	4621      	mov	r1, r4
 8009112:	4628      	mov	r0, r5
 8009114:	f7fe f990 	bl	8007438 <__sflush_r>
 8009118:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800911a:	4606      	mov	r6, r0
 800911c:	b133      	cbz	r3, 800912c <_fclose_r+0x3c>
 800911e:	69e1      	ldr	r1, [r4, #28]
 8009120:	4628      	mov	r0, r5
 8009122:	4798      	blx	r3
 8009124:	2800      	cmp	r0, #0
 8009126:	bfb8      	it	lt
 8009128:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800912c:	89a3      	ldrh	r3, [r4, #12]
 800912e:	061a      	lsls	r2, r3, #24
 8009130:	d43c      	bmi.n	80091ac <_fclose_r+0xbc>
 8009132:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8009134:	b141      	cbz	r1, 8009148 <_fclose_r+0x58>
 8009136:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800913a:	4299      	cmp	r1, r3
 800913c:	d002      	beq.n	8009144 <_fclose_r+0x54>
 800913e:	4628      	mov	r0, r5
 8009140:	f7fe fb22 	bl	8007788 <_free_r>
 8009144:	2300      	movs	r3, #0
 8009146:	6323      	str	r3, [r4, #48]	; 0x30
 8009148:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800914a:	b121      	cbz	r1, 8009156 <_fclose_r+0x66>
 800914c:	4628      	mov	r0, r5
 800914e:	f7fe fb1b 	bl	8007788 <_free_r>
 8009152:	2300      	movs	r3, #0
 8009154:	6463      	str	r3, [r4, #68]	; 0x44
 8009156:	f7fe faa1 	bl	800769c <__sfp_lock_acquire>
 800915a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800915c:	2200      	movs	r2, #0
 800915e:	07db      	lsls	r3, r3, #31
 8009160:	81a2      	strh	r2, [r4, #12]
 8009162:	d51f      	bpl.n	80091a4 <_fclose_r+0xb4>
 8009164:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009166:	f7fe fdbb 	bl	8007ce0 <__retarget_lock_close_recursive>
 800916a:	f7fe fa9d 	bl	80076a8 <__sfp_lock_release>
 800916e:	4630      	mov	r0, r6
 8009170:	bd70      	pop	{r4, r5, r6, pc}
 8009172:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009174:	f7fe fdb6 	bl	8007ce4 <__retarget_lock_acquire_recursive>
 8009178:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800917c:	2b00      	cmp	r3, #0
 800917e:	d1c7      	bne.n	8009110 <_fclose_r+0x20>
 8009180:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8009182:	f016 0601 	ands.w	r6, r6, #1
 8009186:	d016      	beq.n	80091b6 <_fclose_r+0xc6>
 8009188:	2600      	movs	r6, #0
 800918a:	4630      	mov	r0, r6
 800918c:	bd70      	pop	{r4, r5, r6, pc}
 800918e:	2b00      	cmp	r3, #0
 8009190:	d0fa      	beq.n	8009188 <_fclose_r+0x98>
 8009192:	e7bd      	b.n	8009110 <_fclose_r+0x20>
 8009194:	f7fe fa56 	bl	8007644 <__sinit>
 8009198:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800919a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800919e:	07d0      	lsls	r0, r2, #31
 80091a0:	d4f5      	bmi.n	800918e <_fclose_r+0x9e>
 80091a2:	e7b3      	b.n	800910c <_fclose_r+0x1c>
 80091a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80091a6:	f7fe fd9f 	bl	8007ce8 <__retarget_lock_release_recursive>
 80091aa:	e7db      	b.n	8009164 <_fclose_r+0x74>
 80091ac:	6921      	ldr	r1, [r4, #16]
 80091ae:	4628      	mov	r0, r5
 80091b0:	f7fe faea 	bl	8007788 <_free_r>
 80091b4:	e7bd      	b.n	8009132 <_fclose_r+0x42>
 80091b6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80091b8:	f7fe fd96 	bl	8007ce8 <__retarget_lock_release_recursive>
 80091bc:	4630      	mov	r0, r6
 80091be:	bd70      	pop	{r4, r5, r6, pc}

080091c0 <__fputwc>:
 80091c0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80091c4:	b082      	sub	sp, #8
 80091c6:	4681      	mov	r9, r0
 80091c8:	4688      	mov	r8, r1
 80091ca:	4614      	mov	r4, r2
 80091cc:	f000 f8a0 	bl	8009310 <__locale_mb_cur_max>
 80091d0:	2801      	cmp	r0, #1
 80091d2:	d103      	bne.n	80091dc <__fputwc+0x1c>
 80091d4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80091d8:	2bfe      	cmp	r3, #254	; 0xfe
 80091da:	d933      	bls.n	8009244 <__fputwc+0x84>
 80091dc:	4642      	mov	r2, r8
 80091de:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 80091e2:	a901      	add	r1, sp, #4
 80091e4:	4648      	mov	r0, r9
 80091e6:	f000 f93b 	bl	8009460 <_wcrtomb_r>
 80091ea:	1c42      	adds	r2, r0, #1
 80091ec:	4606      	mov	r6, r0
 80091ee:	d02f      	beq.n	8009250 <__fputwc+0x90>
 80091f0:	b320      	cbz	r0, 800923c <__fputwc+0x7c>
 80091f2:	f89d c004 	ldrb.w	ip, [sp, #4]
 80091f6:	2500      	movs	r5, #0
 80091f8:	f10d 0a04 	add.w	sl, sp, #4
 80091fc:	e009      	b.n	8009212 <__fputwc+0x52>
 80091fe:	6823      	ldr	r3, [r4, #0]
 8009200:	1c5a      	adds	r2, r3, #1
 8009202:	6022      	str	r2, [r4, #0]
 8009204:	f883 c000 	strb.w	ip, [r3]
 8009208:	3501      	adds	r5, #1
 800920a:	42b5      	cmp	r5, r6
 800920c:	d216      	bcs.n	800923c <__fputwc+0x7c>
 800920e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8009212:	68a3      	ldr	r3, [r4, #8]
 8009214:	3b01      	subs	r3, #1
 8009216:	2b00      	cmp	r3, #0
 8009218:	60a3      	str	r3, [r4, #8]
 800921a:	daf0      	bge.n	80091fe <__fputwc+0x3e>
 800921c:	69a7      	ldr	r7, [r4, #24]
 800921e:	42bb      	cmp	r3, r7
 8009220:	4661      	mov	r1, ip
 8009222:	4622      	mov	r2, r4
 8009224:	4648      	mov	r0, r9
 8009226:	db02      	blt.n	800922e <__fputwc+0x6e>
 8009228:	f1bc 0f0a 	cmp.w	ip, #10
 800922c:	d1e7      	bne.n	80091fe <__fputwc+0x3e>
 800922e:	f000 f8bf 	bl	80093b0 <__swbuf_r>
 8009232:	1c43      	adds	r3, r0, #1
 8009234:	d1e8      	bne.n	8009208 <__fputwc+0x48>
 8009236:	b002      	add	sp, #8
 8009238:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800923c:	4640      	mov	r0, r8
 800923e:	b002      	add	sp, #8
 8009240:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009244:	fa5f fc88 	uxtb.w	ip, r8
 8009248:	4606      	mov	r6, r0
 800924a:	f88d c004 	strb.w	ip, [sp, #4]
 800924e:	e7d2      	b.n	80091f6 <__fputwc+0x36>
 8009250:	89a3      	ldrh	r3, [r4, #12]
 8009252:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009256:	81a3      	strh	r3, [r4, #12]
 8009258:	b002      	add	sp, #8
 800925a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800925e:	bf00      	nop

08009260 <_fputwc_r>:
 8009260:	b530      	push	{r4, r5, lr}
 8009262:	4605      	mov	r5, r0
 8009264:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8009266:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800926a:	07c0      	lsls	r0, r0, #31
 800926c:	4614      	mov	r4, r2
 800926e:	b083      	sub	sp, #12
 8009270:	b29a      	uxth	r2, r3
 8009272:	d401      	bmi.n	8009278 <_fputwc_r+0x18>
 8009274:	0590      	lsls	r0, r2, #22
 8009276:	d51c      	bpl.n	80092b2 <_fputwc_r+0x52>
 8009278:	0490      	lsls	r0, r2, #18
 800927a:	d406      	bmi.n	800928a <_fputwc_r+0x2a>
 800927c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800927e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8009282:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8009286:	81a3      	strh	r3, [r4, #12]
 8009288:	6662      	str	r2, [r4, #100]	; 0x64
 800928a:	4628      	mov	r0, r5
 800928c:	4622      	mov	r2, r4
 800928e:	f7ff ff97 	bl	80091c0 <__fputwc>
 8009292:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8009294:	07da      	lsls	r2, r3, #31
 8009296:	4605      	mov	r5, r0
 8009298:	d402      	bmi.n	80092a0 <_fputwc_r+0x40>
 800929a:	89a3      	ldrh	r3, [r4, #12]
 800929c:	059b      	lsls	r3, r3, #22
 800929e:	d502      	bpl.n	80092a6 <_fputwc_r+0x46>
 80092a0:	4628      	mov	r0, r5
 80092a2:	b003      	add	sp, #12
 80092a4:	bd30      	pop	{r4, r5, pc}
 80092a6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80092a8:	f7fe fd1e 	bl	8007ce8 <__retarget_lock_release_recursive>
 80092ac:	4628      	mov	r0, r5
 80092ae:	b003      	add	sp, #12
 80092b0:	bd30      	pop	{r4, r5, pc}
 80092b2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80092b4:	9101      	str	r1, [sp, #4]
 80092b6:	f7fe fd15 	bl	8007ce4 <__retarget_lock_acquire_recursive>
 80092ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80092be:	9901      	ldr	r1, [sp, #4]
 80092c0:	b29a      	uxth	r2, r3
 80092c2:	e7d9      	b.n	8009278 <_fputwc_r+0x18>

080092c4 <_fstat_r>:
 80092c4:	b538      	push	{r3, r4, r5, lr}
 80092c6:	460b      	mov	r3, r1
 80092c8:	4c07      	ldr	r4, [pc, #28]	; (80092e8 <_fstat_r+0x24>)
 80092ca:	4605      	mov	r5, r0
 80092cc:	4611      	mov	r1, r2
 80092ce:	4618      	mov	r0, r3
 80092d0:	2300      	movs	r3, #0
 80092d2:	6023      	str	r3, [r4, #0]
 80092d4:	f7fb f9db 	bl	800468e <_fstat>
 80092d8:	1c43      	adds	r3, r0, #1
 80092da:	d000      	beq.n	80092de <_fstat_r+0x1a>
 80092dc:	bd38      	pop	{r3, r4, r5, pc}
 80092de:	6823      	ldr	r3, [r4, #0]
 80092e0:	2b00      	cmp	r3, #0
 80092e2:	d0fb      	beq.n	80092dc <_fstat_r+0x18>
 80092e4:	602b      	str	r3, [r5, #0]
 80092e6:	bd38      	pop	{r3, r4, r5, pc}
 80092e8:	20000b50 	.word	0x20000b50

080092ec <_isatty_r>:
 80092ec:	b538      	push	{r3, r4, r5, lr}
 80092ee:	4c07      	ldr	r4, [pc, #28]	; (800930c <_isatty_r+0x20>)
 80092f0:	2300      	movs	r3, #0
 80092f2:	4605      	mov	r5, r0
 80092f4:	4608      	mov	r0, r1
 80092f6:	6023      	str	r3, [r4, #0]
 80092f8:	f7fb f9ce 	bl	8004698 <_isatty>
 80092fc:	1c43      	adds	r3, r0, #1
 80092fe:	d000      	beq.n	8009302 <_isatty_r+0x16>
 8009300:	bd38      	pop	{r3, r4, r5, pc}
 8009302:	6823      	ldr	r3, [r4, #0]
 8009304:	2b00      	cmp	r3, #0
 8009306:	d0fb      	beq.n	8009300 <_isatty_r+0x14>
 8009308:	602b      	str	r3, [r5, #0]
 800930a:	bd38      	pop	{r3, r4, r5, pc}
 800930c:	20000b50 	.word	0x20000b50

08009310 <__locale_mb_cur_max>:
 8009310:	4b04      	ldr	r3, [pc, #16]	; (8009324 <__locale_mb_cur_max+0x14>)
 8009312:	4a05      	ldr	r2, [pc, #20]	; (8009328 <__locale_mb_cur_max+0x18>)
 8009314:	681b      	ldr	r3, [r3, #0]
 8009316:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8009318:	2b00      	cmp	r3, #0
 800931a:	bf08      	it	eq
 800931c:	4613      	moveq	r3, r2
 800931e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8009322:	4770      	bx	lr
 8009324:	20000020 	.word	0x20000020
 8009328:	20000864 	.word	0x20000864

0800932c <_lseek_r>:
 800932c:	b570      	push	{r4, r5, r6, lr}
 800932e:	460d      	mov	r5, r1
 8009330:	4c08      	ldr	r4, [pc, #32]	; (8009354 <_lseek_r+0x28>)
 8009332:	4611      	mov	r1, r2
 8009334:	4606      	mov	r6, r0
 8009336:	461a      	mov	r2, r3
 8009338:	4628      	mov	r0, r5
 800933a:	2300      	movs	r3, #0
 800933c:	6023      	str	r3, [r4, #0]
 800933e:	f7fb f9ad 	bl	800469c <_lseek>
 8009342:	1c43      	adds	r3, r0, #1
 8009344:	d000      	beq.n	8009348 <_lseek_r+0x1c>
 8009346:	bd70      	pop	{r4, r5, r6, pc}
 8009348:	6823      	ldr	r3, [r4, #0]
 800934a:	2b00      	cmp	r3, #0
 800934c:	d0fb      	beq.n	8009346 <_lseek_r+0x1a>
 800934e:	6033      	str	r3, [r6, #0]
 8009350:	bd70      	pop	{r4, r5, r6, pc}
 8009352:	bf00      	nop
 8009354:	20000b50 	.word	0x20000b50

08009358 <__ascii_mbtowc>:
 8009358:	b082      	sub	sp, #8
 800935a:	b149      	cbz	r1, 8009370 <__ascii_mbtowc+0x18>
 800935c:	b15a      	cbz	r2, 8009376 <__ascii_mbtowc+0x1e>
 800935e:	b16b      	cbz	r3, 800937c <__ascii_mbtowc+0x24>
 8009360:	7813      	ldrb	r3, [r2, #0]
 8009362:	600b      	str	r3, [r1, #0]
 8009364:	7812      	ldrb	r2, [r2, #0]
 8009366:	1c10      	adds	r0, r2, #0
 8009368:	bf18      	it	ne
 800936a:	2001      	movne	r0, #1
 800936c:	b002      	add	sp, #8
 800936e:	4770      	bx	lr
 8009370:	a901      	add	r1, sp, #4
 8009372:	2a00      	cmp	r2, #0
 8009374:	d1f3      	bne.n	800935e <__ascii_mbtowc+0x6>
 8009376:	4610      	mov	r0, r2
 8009378:	b002      	add	sp, #8
 800937a:	4770      	bx	lr
 800937c:	f06f 0001 	mvn.w	r0, #1
 8009380:	e7f4      	b.n	800936c <__ascii_mbtowc+0x14>
 8009382:	bf00      	nop

08009384 <_read_r>:
 8009384:	b570      	push	{r4, r5, r6, lr}
 8009386:	460d      	mov	r5, r1
 8009388:	4c08      	ldr	r4, [pc, #32]	; (80093ac <_read_r+0x28>)
 800938a:	4611      	mov	r1, r2
 800938c:	4606      	mov	r6, r0
 800938e:	461a      	mov	r2, r3
 8009390:	4628      	mov	r0, r5
 8009392:	2300      	movs	r3, #0
 8009394:	6023      	str	r3, [r4, #0]
 8009396:	f7fb f935 	bl	8004604 <_read>
 800939a:	1c43      	adds	r3, r0, #1
 800939c:	d000      	beq.n	80093a0 <_read_r+0x1c>
 800939e:	bd70      	pop	{r4, r5, r6, pc}
 80093a0:	6823      	ldr	r3, [r4, #0]
 80093a2:	2b00      	cmp	r3, #0
 80093a4:	d0fb      	beq.n	800939e <_read_r+0x1a>
 80093a6:	6033      	str	r3, [r6, #0]
 80093a8:	bd70      	pop	{r4, r5, r6, pc}
 80093aa:	bf00      	nop
 80093ac:	20000b50 	.word	0x20000b50

080093b0 <__swbuf_r>:
 80093b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80093b2:	460d      	mov	r5, r1
 80093b4:	4614      	mov	r4, r2
 80093b6:	4606      	mov	r6, r0
 80093b8:	b110      	cbz	r0, 80093c0 <__swbuf_r+0x10>
 80093ba:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80093bc:	2b00      	cmp	r3, #0
 80093be:	d043      	beq.n	8009448 <__swbuf_r+0x98>
 80093c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80093c4:	69a3      	ldr	r3, [r4, #24]
 80093c6:	60a3      	str	r3, [r4, #8]
 80093c8:	b291      	uxth	r1, r2
 80093ca:	0708      	lsls	r0, r1, #28
 80093cc:	d51b      	bpl.n	8009406 <__swbuf_r+0x56>
 80093ce:	6923      	ldr	r3, [r4, #16]
 80093d0:	b1cb      	cbz	r3, 8009406 <__swbuf_r+0x56>
 80093d2:	b2ed      	uxtb	r5, r5
 80093d4:	0489      	lsls	r1, r1, #18
 80093d6:	462f      	mov	r7, r5
 80093d8:	d522      	bpl.n	8009420 <__swbuf_r+0x70>
 80093da:	6822      	ldr	r2, [r4, #0]
 80093dc:	6961      	ldr	r1, [r4, #20]
 80093de:	1ad3      	subs	r3, r2, r3
 80093e0:	4299      	cmp	r1, r3
 80093e2:	dd29      	ble.n	8009438 <__swbuf_r+0x88>
 80093e4:	3301      	adds	r3, #1
 80093e6:	68a1      	ldr	r1, [r4, #8]
 80093e8:	1c50      	adds	r0, r2, #1
 80093ea:	3901      	subs	r1, #1
 80093ec:	60a1      	str	r1, [r4, #8]
 80093ee:	6020      	str	r0, [r4, #0]
 80093f0:	7015      	strb	r5, [r2, #0]
 80093f2:	6962      	ldr	r2, [r4, #20]
 80093f4:	429a      	cmp	r2, r3
 80093f6:	d02a      	beq.n	800944e <__swbuf_r+0x9e>
 80093f8:	89a3      	ldrh	r3, [r4, #12]
 80093fa:	07db      	lsls	r3, r3, #31
 80093fc:	d501      	bpl.n	8009402 <__swbuf_r+0x52>
 80093fe:	2d0a      	cmp	r5, #10
 8009400:	d025      	beq.n	800944e <__swbuf_r+0x9e>
 8009402:	4638      	mov	r0, r7
 8009404:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8009406:	4621      	mov	r1, r4
 8009408:	4630      	mov	r0, r6
 800940a:	f7fc fffd 	bl	8006408 <__swsetup_r>
 800940e:	bb20      	cbnz	r0, 800945a <__swbuf_r+0xaa>
 8009410:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009414:	6923      	ldr	r3, [r4, #16]
 8009416:	b291      	uxth	r1, r2
 8009418:	b2ed      	uxtb	r5, r5
 800941a:	0489      	lsls	r1, r1, #18
 800941c:	462f      	mov	r7, r5
 800941e:	d4dc      	bmi.n	80093da <__swbuf_r+0x2a>
 8009420:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8009422:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8009426:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800942a:	81a2      	strh	r2, [r4, #12]
 800942c:	6822      	ldr	r2, [r4, #0]
 800942e:	6661      	str	r1, [r4, #100]	; 0x64
 8009430:	6961      	ldr	r1, [r4, #20]
 8009432:	1ad3      	subs	r3, r2, r3
 8009434:	4299      	cmp	r1, r3
 8009436:	dcd5      	bgt.n	80093e4 <__swbuf_r+0x34>
 8009438:	4621      	mov	r1, r4
 800943a:	4630      	mov	r0, r6
 800943c:	f7fe f8a6 	bl	800758c <_fflush_r>
 8009440:	b958      	cbnz	r0, 800945a <__swbuf_r+0xaa>
 8009442:	6822      	ldr	r2, [r4, #0]
 8009444:	2301      	movs	r3, #1
 8009446:	e7ce      	b.n	80093e6 <__swbuf_r+0x36>
 8009448:	f7fe f8fc 	bl	8007644 <__sinit>
 800944c:	e7b8      	b.n	80093c0 <__swbuf_r+0x10>
 800944e:	4621      	mov	r1, r4
 8009450:	4630      	mov	r0, r6
 8009452:	f7fe f89b 	bl	800758c <_fflush_r>
 8009456:	2800      	cmp	r0, #0
 8009458:	d0d3      	beq.n	8009402 <__swbuf_r+0x52>
 800945a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800945e:	e7d0      	b.n	8009402 <__swbuf_r+0x52>

08009460 <_wcrtomb_r>:
 8009460:	b5f0      	push	{r4, r5, r6, r7, lr}
 8009462:	4c11      	ldr	r4, [pc, #68]	; (80094a8 <_wcrtomb_r+0x48>)
 8009464:	6824      	ldr	r4, [r4, #0]
 8009466:	b085      	sub	sp, #20
 8009468:	4606      	mov	r6, r0
 800946a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800946c:	461f      	mov	r7, r3
 800946e:	b151      	cbz	r1, 8009486 <_wcrtomb_r+0x26>
 8009470:	4d0e      	ldr	r5, [pc, #56]	; (80094ac <_wcrtomb_r+0x4c>)
 8009472:	2c00      	cmp	r4, #0
 8009474:	bf08      	it	eq
 8009476:	462c      	moveq	r4, r5
 8009478:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800947c:	47a0      	blx	r4
 800947e:	1c43      	adds	r3, r0, #1
 8009480:	d00c      	beq.n	800949c <_wcrtomb_r+0x3c>
 8009482:	b005      	add	sp, #20
 8009484:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009486:	4a09      	ldr	r2, [pc, #36]	; (80094ac <_wcrtomb_r+0x4c>)
 8009488:	2c00      	cmp	r4, #0
 800948a:	bf08      	it	eq
 800948c:	4614      	moveq	r4, r2
 800948e:	460a      	mov	r2, r1
 8009490:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8009494:	a901      	add	r1, sp, #4
 8009496:	47a0      	blx	r4
 8009498:	1c43      	adds	r3, r0, #1
 800949a:	d1f2      	bne.n	8009482 <_wcrtomb_r+0x22>
 800949c:	2200      	movs	r2, #0
 800949e:	238a      	movs	r3, #138	; 0x8a
 80094a0:	603a      	str	r2, [r7, #0]
 80094a2:	6033      	str	r3, [r6, #0]
 80094a4:	b005      	add	sp, #20
 80094a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80094a8:	20000020 	.word	0x20000020
 80094ac:	20000864 	.word	0x20000864

080094b0 <__ascii_wctomb>:
 80094b0:	b121      	cbz	r1, 80094bc <__ascii_wctomb+0xc>
 80094b2:	2aff      	cmp	r2, #255	; 0xff
 80094b4:	d804      	bhi.n	80094c0 <__ascii_wctomb+0x10>
 80094b6:	700a      	strb	r2, [r1, #0]
 80094b8:	2001      	movs	r0, #1
 80094ba:	4770      	bx	lr
 80094bc:	4608      	mov	r0, r1
 80094be:	4770      	bx	lr
 80094c0:	238a      	movs	r3, #138	; 0x8a
 80094c2:	6003      	str	r3, [r0, #0]
 80094c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80094c8:	4770      	bx	lr
 80094ca:	bf00      	nop

080094cc <_init>:
 80094cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80094ce:	bf00      	nop
 80094d0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80094d2:	bc08      	pop	{r3}
 80094d4:	469e      	mov	lr, r3
 80094d6:	4770      	bx	lr

080094d8 <_fini>:
 80094d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80094da:	bf00      	nop
 80094dc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80094de:	bc08      	pop	{r3}
 80094e0:	469e      	mov	lr, r3
 80094e2:	4770      	bx	lr
 80094e4:	0000      	movs	r0, r0
	...
