
fasta.elf:     file format elf32-littlearm


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
 80001d8:	20000a60 	.word	0x20000a60
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08007314 	.word	0x08007314

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000a64 	.word	0x20000a64
 80001fc:	08007314 	.word	0x08007314

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
 8001108:	f640 3038 	movw	r0, #2872	; 0xb38
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	f840 1e00 	strt	r1, [r0]
 8001118:	4770      	bx	lr

0800111a <HAL_GetTick>:
 800111a:	f640 3038 	movw	r0, #2872	; 0xb38
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
 8001430:	f247 3248 	movw	r2, #29512	; 0x7348
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
 80014a2:	f240 00b0 	movw	r0, #176	; 0xb0
 80014a6:	f241 0108 	movw	r1, #4104	; 0x1008
 80014aa:	f247 3240 	movw	r2, #29504	; 0x7340
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
 80014cc:	f240 00b0 	movw	r0, #176	; 0xb0
 80014d0:	f241 0108 	movw	r1, #4104	; 0x1008
 80014d4:	f247 3240 	movw	r2, #29504	; 0x7340
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
 80018bc:	f640 313c 	movw	r1, #2876	; 0xb3c
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
 8001906:	f640 303c 	movw	r0, #2876	; 0xb3c
 800190a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800190e:	f7ff feb4 	bl	800167a <HAL_TIM_Base_Start_IT>
 8001912:	b006      	add	sp, #24
 8001914:	bdb0      	pop	{r4, r5, r7, pc}

08001916 <HAL_TIM_PeriodElapsedCallback>:
 8001916:	f7ff bbf7 	b.w	8001108 <HAL_IncTick>

0800191a <TIM6_DAC_IRQHandler>:
 800191a:	f640 303c 	movw	r0, #2876	; 0xb3c
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
 8001a82:	f247 3378 	movw	r3, #29560	; 0x7378
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
 8001aaa:	f247 3388 	movw	r3, #29576	; 0x7388
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

08002014 <verify_benchmark>:
 8002014:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002018:	4770      	bx	lr

0800201a <initialise_benchmark>:
 800201a:	4770      	bx	lr

0800201c <benchmark>:
 800201c:	b085      	sub	sp, #20
 800201e:	f84d 4e00 	strt	r4, [sp]
 8002022:	f84d 5e04 	strt	r5, [sp, #4]
 8002026:	f84d 6e08 	strt	r6, [sp, #8]
 800202a:	f84d 7e0c 	strt	r7, [sp, #12]
 800202e:	f84d ee10 	strt	lr, [sp, #16]
 8002032:	af03      	add	r7, sp, #12
 8002034:	b083      	sub	sp, #12
 8002036:	f84d 8e00 	strt	r8, [sp]
 800203a:	f84d 9e04 	strt	r9, [sp, #4]
 800203e:	f84d ae08 	strt	sl, [sp, #8]
 8002042:	f240 0814 	movw	r8, #20
 8002046:	ed9f 0aae 	vldr	s0, [pc, #696]	; 8002300 <benchmark+0x2e4>
 800204a:	f240 008c 	movw	r0, #140	; 0x8c
 800204e:	f240 0cac 	movw	ip, #172	; 0xac
 8002052:	f245 6281 	movw	r2, #22145	; 0x5681
 8002056:	f640 3eb8 	movw	lr, #3000	; 0xbb8
 800205a:	f247 3985 	movw	r9, #29573	; 0x7385
 800205e:	f640 7a25 	movw	sl, #3877	; 0xf25
 8002062:	f640 058b 	movw	r5, #2187	; 0x88b
 8002066:	f2c2 0800 	movt	r8, #8192	; 0x2000
 800206a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800206e:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002072:	f6c1 52f7 	movt	r2, #7671	; 0x1df7
 8002076:	ed98 1a00 	vldr	s2, [r8]
 800207a:	f8dc 3000 	ldr.w	r3, [ip]
 800207e:	ee31 1a00 	vadd.f32	s2, s2, s0
 8002082:	b081      	sub	sp, #4
 8002084:	f84d 0e00 	strt	r0, [sp]
 8002088:	ee10 0a10 	vmov	r0, s0
 800208c:	f848 0e00 	strt	r0, [r8]
 8002090:	bc01      	pop	{r0}
 8002092:	ed98 2a02 	vldr	s4, [r8, #8]
 8002096:	ee31 1a02 	vadd.f32	s2, s2, s4
 800209a:	b081      	sub	sp, #4
 800209c:	f84d 0e00 	strt	r0, [sp]
 80020a0:	ee10 0a10 	vmov	r0, s0
 80020a4:	f848 0e08 	strt	r0, [r8, #8]
 80020a8:	bc01      	pop	{r0}
 80020aa:	ed98 2a04 	vldr	s4, [r8, #16]
 80020ae:	ee31 1a02 	vadd.f32	s2, s2, s4
 80020b2:	b081      	sub	sp, #4
 80020b4:	f84d 0e00 	strt	r0, [sp]
 80020b8:	ee10 0a10 	vmov	r0, s0
 80020bc:	f848 0e10 	strt	r0, [r8, #16]
 80020c0:	bc01      	pop	{r0}
 80020c2:	ed98 2a06 	vldr	s4, [r8, #24]
 80020c6:	ee31 1a02 	vadd.f32	s2, s2, s4
 80020ca:	b081      	sub	sp, #4
 80020cc:	f84d 0e00 	strt	r0, [sp]
 80020d0:	ee10 0a10 	vmov	r0, s0
 80020d4:	f848 0e18 	strt	r0, [r8, #24]
 80020d8:	bc01      	pop	{r0}
 80020da:	ed98 2a08 	vldr	s4, [r8, #32]
 80020de:	ee31 1a02 	vadd.f32	s2, s2, s4
 80020e2:	b081      	sub	sp, #4
 80020e4:	f84d 0e00 	strt	r0, [sp]
 80020e8:	ee10 0a10 	vmov	r0, s0
 80020ec:	f848 0e20 	strt	r0, [r8, #32]
 80020f0:	bc01      	pop	{r0}
 80020f2:	ed98 2a0a 	vldr	s4, [r8, #40]	; 0x28
 80020f6:	ee31 1a02 	vadd.f32	s2, s2, s4
 80020fa:	b081      	sub	sp, #4
 80020fc:	f84d 0e00 	strt	r0, [sp]
 8002100:	ee10 0a10 	vmov	r0, s0
 8002104:	f848 0e28 	strt	r0, [r8, #40]
 8002108:	bc01      	pop	{r0}
 800210a:	ed98 2a0c 	vldr	s4, [r8, #48]	; 0x30
 800210e:	ee31 1a02 	vadd.f32	s2, s2, s4
 8002112:	b081      	sub	sp, #4
 8002114:	f84d 0e00 	strt	r0, [sp]
 8002118:	ee10 0a10 	vmov	r0, s0
 800211c:	f848 0e30 	strt	r0, [r8, #48]
 8002120:	bc01      	pop	{r0}
 8002122:	ed98 2a0e 	vldr	s4, [r8, #56]	; 0x38
 8002126:	ee31 1a02 	vadd.f32	s2, s2, s4
 800212a:	b081      	sub	sp, #4
 800212c:	f84d 0e00 	strt	r0, [sp]
 8002130:	ee10 0a10 	vmov	r0, s0
 8002134:	f848 0e38 	strt	r0, [r8, #56]
 8002138:	bc01      	pop	{r0}
 800213a:	ed98 2a10 	vldr	s4, [r8, #64]	; 0x40
 800213e:	ee31 1a02 	vadd.f32	s2, s2, s4
 8002142:	b081      	sub	sp, #4
 8002144:	f84d 0e00 	strt	r0, [sp]
 8002148:	ee10 0a10 	vmov	r0, s0
 800214c:	f848 0e40 	strt	r0, [r8, #64]
 8002150:	bc01      	pop	{r0}
 8002152:	ed98 2a12 	vldr	s4, [r8, #72]	; 0x48
 8002156:	ee31 1a02 	vadd.f32	s2, s2, s4
 800215a:	b081      	sub	sp, #4
 800215c:	f84d 0e00 	strt	r0, [sp]
 8002160:	ee10 0a10 	vmov	r0, s0
 8002164:	f848 0e48 	strt	r0, [r8, #72]
 8002168:	bc01      	pop	{r0}
 800216a:	ed98 2a14 	vldr	s4, [r8, #80]	; 0x50
 800216e:	ee31 1a02 	vadd.f32	s2, s2, s4
 8002172:	b081      	sub	sp, #4
 8002174:	f84d 0e00 	strt	r0, [sp]
 8002178:	ee10 0a10 	vmov	r0, s0
 800217c:	f848 0e50 	strt	r0, [r8, #80]
 8002180:	bc01      	pop	{r0}
 8002182:	ed98 2a16 	vldr	s4, [r8, #88]	; 0x58
 8002186:	ee31 1a02 	vadd.f32	s2, s2, s4
 800218a:	b081      	sub	sp, #4
 800218c:	f84d 0e00 	strt	r0, [sp]
 8002190:	ee10 0a10 	vmov	r0, s0
 8002194:	f848 0e58 	strt	r0, [r8, #88]
 8002198:	bc01      	pop	{r0}
 800219a:	ed98 2a18 	vldr	s4, [r8, #96]	; 0x60
 800219e:	ee31 1a02 	vadd.f32	s2, s2, s4
 80021a2:	b081      	sub	sp, #4
 80021a4:	f84d 0e00 	strt	r0, [sp]
 80021a8:	ee10 0a10 	vmov	r0, s0
 80021ac:	f848 0e60 	strt	r0, [r8, #96]
 80021b0:	bc01      	pop	{r0}
 80021b2:	ed98 2a1a 	vldr	s4, [r8, #104]	; 0x68
 80021b6:	ee31 1a02 	vadd.f32	s2, s2, s4
 80021ba:	b081      	sub	sp, #4
 80021bc:	f84d 0e00 	strt	r0, [sp]
 80021c0:	ee10 0a10 	vmov	r0, s0
 80021c4:	f848 0e68 	strt	r0, [r8, #104]
 80021c8:	bc01      	pop	{r0}
 80021ca:	ed98 2a1c 	vldr	s4, [r8, #112]	; 0x70
 80021ce:	ee31 1a02 	vadd.f32	s2, s2, s4
 80021d2:	b081      	sub	sp, #4
 80021d4:	f84d 0e00 	strt	r0, [sp]
 80021d8:	ee10 0a10 	vmov	r0, s0
 80021dc:	f848 0e70 	strt	r0, [r8, #112]
 80021e0:	bc01      	pop	{r0}
 80021e2:	ed90 1a00 	vldr	s2, [r0]
 80021e6:	ee31 0a00 	vadd.f32	s0, s2, s0
 80021ea:	b081      	sub	sp, #4
 80021ec:	f84d 1e00 	strt	r1, [sp]
 80021f0:	ee10 1a90 	vmov	r1, s1
 80021f4:	f840 1e00 	strt	r1, [r0]
 80021f8:	bc02      	pop	{r1}
 80021fa:	ed90 1a02 	vldr	s2, [r0, #8]
 80021fe:	ee30 0a01 	vadd.f32	s0, s0, s2
 8002202:	b081      	sub	sp, #4
 8002204:	f84d 1e00 	strt	r1, [sp]
 8002208:	ee10 1a90 	vmov	r1, s1
 800220c:	f840 1e08 	strt	r1, [r0, #8]
 8002210:	bc02      	pop	{r1}
 8002212:	ed90 1a04 	vldr	s2, [r0, #16]
 8002216:	ee30 0a01 	vadd.f32	s0, s0, s2
 800221a:	b081      	sub	sp, #4
 800221c:	f84d 1e00 	strt	r1, [sp]
 8002220:	ee10 1a90 	vmov	r1, s1
 8002224:	f840 1e10 	strt	r1, [r0, #16]
 8002228:	bc02      	pop	{r1}
 800222a:	ed90 1a06 	vldr	s2, [r0, #24]
 800222e:	ee30 0a01 	vadd.f32	s0, s0, s2
 8002232:	b081      	sub	sp, #4
 8002234:	f84d 1e00 	strt	r1, [sp]
 8002238:	ee10 1a90 	vmov	r1, s1
 800223c:	f840 1e18 	strt	r1, [r0, #24]
 8002240:	bc02      	pop	{r1}
 8002242:	ed9f 0a30 	vldr	s0, [pc, #192]	; 8002304 <benchmark+0x2e8>
 8002246:	f1be 0f3c 	cmp.w	lr, #60	; 0x3c
 800224a:	4676      	mov	r6, lr
 800224c:	f04f 0100 	mov.w	r1, #0
 8002250:	bf28      	it	cs
 8002252:	263c      	movcs	r6, #60	; 0x3c
 8002254:	fb03 900a 	mla	r0, r3, sl, r9
 8002258:	fba0 3402 	umull	r3, r4, r0, r2
 800225c:	0ba3      	lsrs	r3, r4, #14
 800225e:	436b      	muls	r3, r5
 8002260:	eba0 1383 	sub.w	r3, r0, r3, lsl #6
 8002264:	4640      	mov	r0, r8
 8002266:	ee01 3a10 	vmov	s2, r3
 800226a:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
 800226e:	ee81 1a00 	vdiv.f32	s2, s2, s0
 8002272:	ed90 2a00 	vldr	s4, [r0]
 8002276:	3008      	adds	r0, #8
 8002278:	eeb4 2ac1 	vcmpe.f32	s4, s2
 800227c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002280:	d4f7      	bmi.n	8002272 <benchmark+0x256>
 8002282:	3101      	adds	r1, #1
 8002284:	42b1      	cmp	r1, r6
 8002286:	d3e5      	bcc.n	8002254 <benchmark+0x238>
 8002288:	ebbe 0e06 	subs.w	lr, lr, r6
 800228c:	d1db      	bne.n	8002246 <benchmark+0x22a>
 800228e:	f240 048c 	movw	r4, #140	; 0x8c
 8002292:	f241 3e88 	movw	lr, #5000	; 0x1388
 8002296:	f247 3885 	movw	r8, #29573	; 0x7385
 800229a:	f640 7925 	movw	r9, #3877	; 0xf25
 800229e:	f640 0a8b 	movw	sl, #2187	; 0x88b
 80022a2:	f84c 3e00 	strt	r3, [ip]
 80022a6:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80022aa:	f1be 0f3c 	cmp.w	lr, #60	; 0x3c
 80022ae:	4676      	mov	r6, lr
 80022b0:	f04f 0100 	mov.w	r1, #0
 80022b4:	bf28      	it	cs
 80022b6:	263c      	movcs	r6, #60	; 0x3c
 80022b8:	fb03 8009 	mla	r0, r3, r9, r8
 80022bc:	fba0 3502 	umull	r3, r5, r0, r2
 80022c0:	0bab      	lsrs	r3, r5, #14
 80022c2:	fb03 f30a 	mul.w	r3, r3, sl
 80022c6:	eba0 1383 	sub.w	r3, r0, r3, lsl #6
 80022ca:	4620      	mov	r0, r4
 80022cc:	ee01 3a10 	vmov	s2, r3
 80022d0:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
 80022d4:	ee81 1a00 	vdiv.f32	s2, s2, s0
 80022d8:	ed90 2a00 	vldr	s4, [r0]
 80022dc:	3008      	adds	r0, #8
 80022de:	eeb4 2ac1 	vcmpe.f32	s4, s2
 80022e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80022e6:	d4f7      	bmi.n	80022d8 <benchmark+0x2bc>
 80022e8:	3101      	adds	r1, #1
 80022ea:	42b1      	cmp	r1, r6
 80022ec:	d3e4      	bcc.n	80022b8 <benchmark+0x29c>
 80022ee:	ebbe 0e06 	subs.w	lr, lr, r6
 80022f2:	d1da      	bne.n	80022aa <benchmark+0x28e>
 80022f4:	f84c 3e00 	strt	r3, [ip]
 80022f8:	2000      	movs	r0, #0
 80022fa:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 80022fe:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002300:	00000000 	.word	0x00000000
 8002304:	4808b000 	.word	0x4808b000

08002308 <__io_putchar>:
 8002308:	b082      	sub	sp, #8
 800230a:	f84d 7e00 	strt	r7, [sp]
 800230e:	f84d ee04 	strt	lr, [sp, #4]
 8002312:	466f      	mov	r7, sp
 8002314:	b082      	sub	sp, #8
 8002316:	f84d 0e04 	strt	r0, [sp, #4]
 800231a:	f640 207c 	movw	r0, #2684	; 0xa7c
 800231e:	a901      	add	r1, sp, #4
 8002320:	2201      	movs	r2, #1
 8002322:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002326:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800232a:	f7ff fd4c 	bl	8001dc6 <HAL_UART_Transmit>
 800232e:	9801      	ldr	r0, [sp, #4]
 8002330:	b002      	add	sp, #8
 8002332:	bd80      	pop	{r7, pc}

08002334 <main>:
 8002334:	b084      	sub	sp, #16
 8002336:	f84d 4e00 	strt	r4, [sp]
 800233a:	f84d 5e04 	strt	r5, [sp, #4]
 800233e:	f84d 7e08 	strt	r7, [sp, #8]
 8002342:	f84d ee0c 	strt	lr, [sp, #12]
 8002346:	af02      	add	r7, sp, #8
 8002348:	f640 217c 	movw	r1, #2684	; 0xa7c
 800234c:	f643 0000 	movw	r0, #14336	; 0x3800
 8002350:	220c      	movs	r2, #12
 8002352:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002356:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800235a:	f841 0e00 	strt	r0, [r1]
 800235e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002362:	f841 0e04 	strt	r0, [r1, #4]
 8002366:	2000      	movs	r0, #0
 8002368:	f841 0e08 	strt	r0, [r1, #8]
 800236c:	f841 0e0c 	strt	r0, [r1, #12]
 8002370:	f841 0e10 	strt	r0, [r1, #16]
 8002374:	f841 0e24 	strt	r0, [r1, #36]
 8002378:	f841 0e1c 	strt	r0, [r1, #28]
 800237c:	f841 0e20 	strt	r0, [r1, #32]
 8002380:	f841 2e14 	strt	r2, [r1, #20]
 8002384:	f841 0e18 	strt	r0, [r1, #24]
 8002388:	2000      	movs	r0, #0
 800238a:	f7ff fdcf 	bl	8001f2c <BSP_COM_Init>
 800238e:	f7ff fe44 	bl	800201a <initialise_benchmark>
 8002392:	f247 3098 	movw	r0, #29592	; 0x7398
 8002396:	f6c0 0000 	movt	r0, #2048	; 0x800
 800239a:	f000 f96d 	bl	8002678 <printf>
 800239e:	f247 4040 	movw	r0, #29760	; 0x7440
 80023a2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023a6:	f000 f9c9 	bl	800273c <puts>
 80023aa:	f7fe fe9d 	bl	80010e8 <HAL_Init>
 80023ae:	f7fe feb4 	bl	800111a <HAL_GetTick>
 80023b2:	4604      	mov	r4, r0
 80023b4:	f7ff fe32 	bl	800201c <benchmark>
 80023b8:	4605      	mov	r5, r0
 80023ba:	f7fe feae 	bl	800111a <HAL_GetTick>
 80023be:	1b04      	subs	r4, r0, r4
 80023c0:	4628      	mov	r0, r5
 80023c2:	f7ff fe27 	bl	8002014 <verify_benchmark>
 80023c6:	1c41      	adds	r1, r0, #1
 80023c8:	d006      	beq.n	80023d8 <main+0xa4>
 80023ca:	2801      	cmp	r0, #1
 80023cc:	d109      	bne.n	80023e2 <main+0xae>
 80023ce:	f247 30ac 	movw	r0, #29612	; 0x73ac
 80023d2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023d6:	e008      	b.n	80023ea <main+0xb6>
 80023d8:	f247 30d0 	movw	r0, #29648	; 0x73d0
 80023dc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023e0:	e003      	b.n	80023ea <main+0xb6>
 80023e2:	f247 4005 	movw	r0, #29701	; 0x7405
 80023e6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023ea:	4621      	mov	r1, r4
 80023ec:	f000 f944 	bl	8002678 <printf>
 80023f0:	2000      	movs	r0, #0
 80023f2:	bdb0      	pop	{r4, r5, r7, pc}

080023f4 <SysTick_Handler>:
 80023f4:	b082      	sub	sp, #8
 80023f6:	f84d 7e00 	strt	r7, [sp]
 80023fa:	f84d ee04 	strt	lr, [sp, #4]
 80023fe:	466f      	mov	r7, sp
 8002400:	f7fe fe82 	bl	8001108 <HAL_IncTick>
 8002404:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002408:	f7fe bedd 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

0800240c <_read>:
 800240c:	b085      	sub	sp, #20
 800240e:	f84d 4e00 	strt	r4, [sp]
 8002412:	f84d 5e04 	strt	r5, [sp, #4]
 8002416:	f84d 6e08 	strt	r6, [sp, #8]
 800241a:	f84d 7e0c 	strt	r7, [sp, #12]
 800241e:	f84d ee10 	strt	lr, [sp, #16]
 8002422:	af03      	add	r7, sp, #12
 8002424:	b081      	sub	sp, #4
 8002426:	f84d be00 	strt	fp, [sp]
 800242a:	4614      	mov	r4, r2
 800242c:	460d      	mov	r5, r1
 800242e:	2c01      	cmp	r4, #1
 8002430:	db08      	blt.n	8002444 <_read+0x38>
 8002432:	4626      	mov	r6, r4
 8002434:	f3af 8000 	nop.w
 8002438:	f805 0e00 	strbt	r0, [r5]
 800243c:	bfe8      	it	al
 800243e:	3501      	addal	r5, #1
 8002440:	3e01      	subs	r6, #1
 8002442:	d1f7      	bne.n	8002434 <_read+0x28>
 8002444:	4620      	mov	r0, r4
 8002446:	f85d bb04 	ldr.w	fp, [sp], #4
 800244a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800244c <_write>:
 800244c:	b085      	sub	sp, #20
 800244e:	f84d 4e00 	strt	r4, [sp]
 8002452:	f84d 5e04 	strt	r5, [sp, #4]
 8002456:	f84d 6e08 	strt	r6, [sp, #8]
 800245a:	f84d 7e0c 	strt	r7, [sp, #12]
 800245e:	f84d ee10 	strt	lr, [sp, #16]
 8002462:	af03      	add	r7, sp, #12
 8002464:	b081      	sub	sp, #4
 8002466:	f84d be00 	strt	fp, [sp]
 800246a:	4614      	mov	r4, r2
 800246c:	460d      	mov	r5, r1
 800246e:	2c01      	cmp	r4, #1
 8002470:	db06      	blt.n	8002480 <_write+0x34>
 8002472:	4626      	mov	r6, r4
 8002474:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002478:	f7ff ff46 	bl	8002308 <__io_putchar>
 800247c:	3e01      	subs	r6, #1
 800247e:	d1f9      	bne.n	8002474 <_write+0x28>
 8002480:	4620      	mov	r0, r4
 8002482:	f85d bb04 	ldr.w	fp, [sp], #4
 8002486:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002488 <_sbrk>:
 8002488:	f640 3200 	movw	r2, #2816	; 0xb00
 800248c:	4601      	mov	r1, r0
 800248e:	466b      	mov	r3, sp
 8002490:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002494:	6810      	ldr	r0, [r2, #0]
 8002496:	2800      	cmp	r0, #0
 8002498:	bf02      	ittt	eq
 800249a:	f640 30a8 	movweq	r0, #2984	; 0xba8
 800249e:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80024a2:	f842 0e00 	strteq	r0, [r2]
 80024a6:	4401      	add	r1, r0
 80024a8:	4299      	cmp	r1, r3
 80024aa:	bf9c      	itt	ls
 80024ac:	f842 1e00 	strtls	r1, [r2]
 80024b0:	4770      	bxls	lr
 80024b2:	b082      	sub	sp, #8
 80024b4:	f84d 7e00 	strt	r7, [sp]
 80024b8:	f84d ee04 	strt	lr, [sp, #4]
 80024bc:	466f      	mov	r7, sp
 80024be:	f000 f867 	bl	8002590 <__errno>
 80024c2:	210c      	movs	r1, #12
 80024c4:	f840 1e00 	strt	r1, [r0]
 80024c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80024cc:	bd80      	pop	{r7, pc}

080024ce <_close>:
 80024ce:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80024d2:	4770      	bx	lr

080024d4 <_fstat>:
 80024d4:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80024d8:	f841 0e04 	strt	r0, [r1, #4]
 80024dc:	2000      	movs	r0, #0
 80024de:	4770      	bx	lr

080024e0 <_isatty>:
 80024e0:	2001      	movs	r0, #1
 80024e2:	4770      	bx	lr

080024e4 <_lseek>:
 80024e4:	2000      	movs	r0, #0
 80024e6:	4770      	bx	lr

080024e8 <SystemInit>:
 80024e8:	f64e 5088 	movw	r0, #60808	; 0xed88
 80024ec:	f04f 0c00 	mov.w	ip, #0
 80024f0:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80024f4:	6801      	ldr	r1, [r0, #0]
 80024f6:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80024fa:	6001      	str	r1, [r0, #0]
 80024fc:	f241 0100 	movw	r1, #4096	; 0x1000
 8002500:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002504:	680a      	ldr	r2, [r1, #0]
 8002506:	f042 0201 	orr.w	r2, r2, #1
 800250a:	600a      	str	r2, [r1, #0]
 800250c:	f8c1 c008 	str.w	ip, [r1, #8]
 8002510:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002514:	680b      	ldr	r3, [r1, #0]
 8002516:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800251a:	401a      	ands	r2, r3
 800251c:	600a      	str	r2, [r1, #0]
 800251e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002522:	60ca      	str	r2, [r1, #12]
 8002524:	680a      	ldr	r2, [r1, #0]
 8002526:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800252a:	600a      	str	r2, [r1, #0]
 800252c:	f8c1 c018 	str.w	ip, [r1, #24]
 8002530:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002534:	f840 1c80 	str.w	r1, [r0, #-128]
 8002538:	4770      	bx	lr
	...

0800253c <Reset_Handler>:
 800253c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002574 <LoopForever+0x2>
 8002540:	2100      	movs	r1, #0
 8002542:	e003      	b.n	800254c <LoopCopyDataInit>

08002544 <CopyDataInit>:
 8002544:	4b0c      	ldr	r3, [pc, #48]	; (8002578 <LoopForever+0x6>)
 8002546:	585b      	ldr	r3, [r3, r1]
 8002548:	5043      	str	r3, [r0, r1]
 800254a:	3104      	adds	r1, #4

0800254c <LoopCopyDataInit>:
 800254c:	480b      	ldr	r0, [pc, #44]	; (800257c <LoopForever+0xa>)
 800254e:	4b0c      	ldr	r3, [pc, #48]	; (8002580 <LoopForever+0xe>)
 8002550:	1842      	adds	r2, r0, r1
 8002552:	429a      	cmp	r2, r3
 8002554:	d3f6      	bcc.n	8002544 <CopyDataInit>
 8002556:	4a0b      	ldr	r2, [pc, #44]	; (8002584 <LoopForever+0x12>)
 8002558:	e002      	b.n	8002560 <LoopFillZerobss>

0800255a <FillZerobss>:
 800255a:	2300      	movs	r3, #0
 800255c:	f842 3b04 	str.w	r3, [r2], #4

08002560 <LoopFillZerobss>:
 8002560:	4b09      	ldr	r3, [pc, #36]	; (8002588 <LoopForever+0x16>)
 8002562:	429a      	cmp	r2, r3
 8002564:	d3f9      	bcc.n	800255a <FillZerobss>
 8002566:	f7ff ffbf 	bl	80024e8 <SystemInit>
 800256a:	f000 f817 	bl	800259c <__libc_init_array>
 800256e:	f7ff fee1 	bl	8002334 <main>

08002572 <LoopForever>:
 8002572:	e7fe      	b.n	8002572 <LoopForever>
 8002574:	20018000 	.word	0x20018000
 8002578:	080076e8 	.word	0x080076e8
 800257c:	20000000 	.word	0x20000000
 8002580:	20000a60 	.word	0x20000a60
 8002584:	20000a60 	.word	0x20000a60
 8002588:	20000ba8 	.word	0x20000ba8

0800258c <ADC1_2_IRQHandler>:
 800258c:	e7fe      	b.n	800258c <ADC1_2_IRQHandler>
	...

08002590 <__errno>:
 8002590:	4b01      	ldr	r3, [pc, #4]	; (8002598 <__errno+0x8>)
 8002592:	6818      	ldr	r0, [r3, #0]
 8002594:	4770      	bx	lr
 8002596:	bf00      	nop
 8002598:	200000b4 	.word	0x200000b4

0800259c <__libc_init_array>:
 800259c:	b570      	push	{r4, r5, r6, lr}
 800259e:	4e0d      	ldr	r6, [pc, #52]	; (80025d4 <__libc_init_array+0x38>)
 80025a0:	4d0d      	ldr	r5, [pc, #52]	; (80025d8 <__libc_init_array+0x3c>)
 80025a2:	1b76      	subs	r6, r6, r5
 80025a4:	10b6      	asrs	r6, r6, #2
 80025a6:	d006      	beq.n	80025b6 <__libc_init_array+0x1a>
 80025a8:	2400      	movs	r4, #0
 80025aa:	3401      	adds	r4, #1
 80025ac:	f855 3b04 	ldr.w	r3, [r5], #4
 80025b0:	4798      	blx	r3
 80025b2:	42a6      	cmp	r6, r4
 80025b4:	d1f9      	bne.n	80025aa <__libc_init_array+0xe>
 80025b6:	4e09      	ldr	r6, [pc, #36]	; (80025dc <__libc_init_array+0x40>)
 80025b8:	4d09      	ldr	r5, [pc, #36]	; (80025e0 <__libc_init_array+0x44>)
 80025ba:	1b76      	subs	r6, r6, r5
 80025bc:	f004 feaa 	bl	8007314 <_init>
 80025c0:	10b6      	asrs	r6, r6, #2
 80025c2:	d006      	beq.n	80025d2 <__libc_init_array+0x36>
 80025c4:	2400      	movs	r4, #0
 80025c6:	3401      	adds	r4, #1
 80025c8:	f855 3b04 	ldr.w	r3, [r5], #4
 80025cc:	4798      	blx	r3
 80025ce:	42a6      	cmp	r6, r4
 80025d0:	d1f9      	bne.n	80025c6 <__libc_init_array+0x2a>
 80025d2:	bd70      	pop	{r4, r5, r6, pc}
 80025d4:	080076d8 	.word	0x080076d8
 80025d8:	080076d8 	.word	0x080076d8
 80025dc:	080076e0 	.word	0x080076e0
 80025e0:	080076d8 	.word	0x080076d8

080025e4 <memset>:
 80025e4:	b4f0      	push	{r4, r5, r6, r7}
 80025e6:	0786      	lsls	r6, r0, #30
 80025e8:	d043      	beq.n	8002672 <memset+0x8e>
 80025ea:	1e54      	subs	r4, r2, #1
 80025ec:	2a00      	cmp	r2, #0
 80025ee:	d03e      	beq.n	800266e <memset+0x8a>
 80025f0:	b2ca      	uxtb	r2, r1
 80025f2:	4603      	mov	r3, r0
 80025f4:	e002      	b.n	80025fc <memset+0x18>
 80025f6:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80025fa:	d338      	bcc.n	800266e <memset+0x8a>
 80025fc:	f803 2b01 	strb.w	r2, [r3], #1
 8002600:	079d      	lsls	r5, r3, #30
 8002602:	d1f8      	bne.n	80025f6 <memset+0x12>
 8002604:	2c03      	cmp	r4, #3
 8002606:	d92b      	bls.n	8002660 <memset+0x7c>
 8002608:	b2cd      	uxtb	r5, r1
 800260a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800260e:	2c0f      	cmp	r4, #15
 8002610:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002614:	d916      	bls.n	8002644 <memset+0x60>
 8002616:	f1a4 0710 	sub.w	r7, r4, #16
 800261a:	093f      	lsrs	r7, r7, #4
 800261c:	f103 0620 	add.w	r6, r3, #32
 8002620:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002624:	f103 0210 	add.w	r2, r3, #16
 8002628:	e942 5504 	strd	r5, r5, [r2, #-16]
 800262c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002630:	3210      	adds	r2, #16
 8002632:	42b2      	cmp	r2, r6
 8002634:	d1f8      	bne.n	8002628 <memset+0x44>
 8002636:	f004 040f 	and.w	r4, r4, #15
 800263a:	3701      	adds	r7, #1
 800263c:	2c03      	cmp	r4, #3
 800263e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002642:	d90d      	bls.n	8002660 <memset+0x7c>
 8002644:	461e      	mov	r6, r3
 8002646:	4622      	mov	r2, r4
 8002648:	3a04      	subs	r2, #4
 800264a:	2a03      	cmp	r2, #3
 800264c:	f846 5b04 	str.w	r5, [r6], #4
 8002650:	d8fa      	bhi.n	8002648 <memset+0x64>
 8002652:	1f22      	subs	r2, r4, #4
 8002654:	f022 0203 	bic.w	r2, r2, #3
 8002658:	3204      	adds	r2, #4
 800265a:	4413      	add	r3, r2
 800265c:	f004 0403 	and.w	r4, r4, #3
 8002660:	b12c      	cbz	r4, 800266e <memset+0x8a>
 8002662:	b2c9      	uxtb	r1, r1
 8002664:	441c      	add	r4, r3
 8002666:	f803 1b01 	strb.w	r1, [r3], #1
 800266a:	429c      	cmp	r4, r3
 800266c:	d1fb      	bne.n	8002666 <memset+0x82>
 800266e:	bcf0      	pop	{r4, r5, r6, r7}
 8002670:	4770      	bx	lr
 8002672:	4614      	mov	r4, r2
 8002674:	4603      	mov	r3, r0
 8002676:	e7c5      	b.n	8002604 <memset+0x20>

08002678 <printf>:
 8002678:	b40f      	push	{r0, r1, r2, r3}
 800267a:	b500      	push	{lr}
 800267c:	4907      	ldr	r1, [pc, #28]	; (800269c <printf+0x24>)
 800267e:	b083      	sub	sp, #12
 8002680:	ab04      	add	r3, sp, #16
 8002682:	6808      	ldr	r0, [r1, #0]
 8002684:	f853 2b04 	ldr.w	r2, [r3], #4
 8002688:	6881      	ldr	r1, [r0, #8]
 800268a:	9301      	str	r3, [sp, #4]
 800268c:	f000 f860 	bl	8002750 <_vfprintf_r>
 8002690:	b003      	add	sp, #12
 8002692:	f85d eb04 	ldr.w	lr, [sp], #4
 8002696:	b004      	add	sp, #16
 8002698:	4770      	bx	lr
 800269a:	bf00      	nop
 800269c:	200000b4 	.word	0x200000b4

080026a0 <_puts_r>:
 80026a0:	b570      	push	{r4, r5, r6, lr}
 80026a2:	4605      	mov	r5, r0
 80026a4:	b088      	sub	sp, #32
 80026a6:	4608      	mov	r0, r1
 80026a8:	460c      	mov	r4, r1
 80026aa:	f7fd ffc9 	bl	8000640 <strlen>
 80026ae:	4a22      	ldr	r2, [pc, #136]	; (8002738 <_puts_r+0x98>)
 80026b0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80026b2:	9404      	str	r4, [sp, #16]
 80026b4:	2601      	movs	r6, #1
 80026b6:	1c44      	adds	r4, r0, #1
 80026b8:	a904      	add	r1, sp, #16
 80026ba:	9206      	str	r2, [sp, #24]
 80026bc:	2202      	movs	r2, #2
 80026be:	9403      	str	r4, [sp, #12]
 80026c0:	9005      	str	r0, [sp, #20]
 80026c2:	68ac      	ldr	r4, [r5, #8]
 80026c4:	9607      	str	r6, [sp, #28]
 80026c6:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80026ca:	b31b      	cbz	r3, 8002714 <_puts_r+0x74>
 80026cc:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80026ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80026d2:	07ce      	lsls	r6, r1, #31
 80026d4:	b29a      	uxth	r2, r3
 80026d6:	d401      	bmi.n	80026dc <_puts_r+0x3c>
 80026d8:	0590      	lsls	r0, r2, #22
 80026da:	d525      	bpl.n	8002728 <_puts_r+0x88>
 80026dc:	0491      	lsls	r1, r2, #18
 80026de:	d406      	bmi.n	80026ee <_puts_r+0x4e>
 80026e0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80026e2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80026e6:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80026ea:	81a3      	strh	r3, [r4, #12]
 80026ec:	6662      	str	r2, [r4, #100]	; 0x64
 80026ee:	4628      	mov	r0, r5
 80026f0:	aa01      	add	r2, sp, #4
 80026f2:	4621      	mov	r1, r4
 80026f4:	f003 f860 	bl	80057b8 <__sfvwrite_r>
 80026f8:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80026fa:	2800      	cmp	r0, #0
 80026fc:	bf0c      	ite	eq
 80026fe:	250a      	moveq	r5, #10
 8002700:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002704:	07da      	lsls	r2, r3, #31
 8002706:	d402      	bmi.n	800270e <_puts_r+0x6e>
 8002708:	89a3      	ldrh	r3, [r4, #12]
 800270a:	059b      	lsls	r3, r3, #22
 800270c:	d506      	bpl.n	800271c <_puts_r+0x7c>
 800270e:	4628      	mov	r0, r5
 8002710:	b008      	add	sp, #32
 8002712:	bd70      	pop	{r4, r5, r6, pc}
 8002714:	4628      	mov	r0, r5
 8002716:	f002 feb9 	bl	800548c <__sinit>
 800271a:	e7d7      	b.n	80026cc <_puts_r+0x2c>
 800271c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800271e:	f003 fa07 	bl	8005b30 <__retarget_lock_release_recursive>
 8002722:	4628      	mov	r0, r5
 8002724:	b008      	add	sp, #32
 8002726:	bd70      	pop	{r4, r5, r6, pc}
 8002728:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800272a:	f003 f9ff 	bl	8005b2c <__retarget_lock_acquire_recursive>
 800272e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002732:	b29a      	uxth	r2, r3
 8002734:	e7d2      	b.n	80026dc <_puts_r+0x3c>
 8002736:	bf00      	nop
 8002738:	08007448 	.word	0x08007448

0800273c <puts>:
 800273c:	4b02      	ldr	r3, [pc, #8]	; (8002748 <puts+0xc>)
 800273e:	4601      	mov	r1, r0
 8002740:	6818      	ldr	r0, [r3, #0]
 8002742:	f7ff bfad 	b.w	80026a0 <_puts_r>
 8002746:	bf00      	nop
 8002748:	200000b4 	.word	0x200000b4
 800274c:	00000000 	.word	0x00000000

08002750 <_vfprintf_r>:
 8002750:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002754:	b0d7      	sub	sp, #348	; 0x15c
 8002756:	461c      	mov	r4, r3
 8002758:	4689      	mov	r9, r1
 800275a:	4617      	mov	r7, r2
 800275c:	4605      	mov	r5, r0
 800275e:	9003      	str	r0, [sp, #12]
 8002760:	f003 f9d2 	bl	8005b08 <_localeconv_r>
 8002764:	6803      	ldr	r3, [r0, #0]
 8002766:	9316      	str	r3, [sp, #88]	; 0x58
 8002768:	4618      	mov	r0, r3
 800276a:	f7fd ff69 	bl	8000640 <strlen>
 800276e:	9408      	str	r4, [sp, #32]
 8002770:	9015      	str	r0, [sp, #84]	; 0x54
 8002772:	b11d      	cbz	r5, 800277c <_vfprintf_r+0x2c>
 8002774:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002776:	2b00      	cmp	r3, #0
 8002778:	f000 8107 	beq.w	800298a <_vfprintf_r+0x23a>
 800277c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002780:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002784:	07c8      	lsls	r0, r1, #31
 8002786:	b293      	uxth	r3, r2
 8002788:	d402      	bmi.n	8002790 <_vfprintf_r+0x40>
 800278a:	0599      	lsls	r1, r3, #22
 800278c:	f140 811f 	bpl.w	80029ce <_vfprintf_r+0x27e>
 8002790:	049e      	lsls	r6, r3, #18
 8002792:	d40a      	bmi.n	80027aa <_vfprintf_r+0x5a>
 8002794:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002798:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800279c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80027a0:	f8a9 300c 	strh.w	r3, [r9, #12]
 80027a4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80027a8:	b29b      	uxth	r3, r3
 80027aa:	071d      	lsls	r5, r3, #28
 80027ac:	f140 80b2 	bpl.w	8002914 <_vfprintf_r+0x1c4>
 80027b0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80027b4:	2a00      	cmp	r2, #0
 80027b6:	f000 80ad 	beq.w	8002914 <_vfprintf_r+0x1c4>
 80027ba:	f003 021a 	and.w	r2, r3, #26
 80027be:	2a0a      	cmp	r2, #10
 80027c0:	f000 80c9 	beq.w	8002956 <_vfprintf_r+0x206>
 80027c4:	2300      	movs	r3, #0
 80027c6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80029e0 <_vfprintf_r+0x290>
 80027ca:	9310      	str	r3, [sp, #64]	; 0x40
 80027cc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80027d0:	9317      	str	r3, [sp, #92]	; 0x5c
 80027d2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80027d6:	931b      	str	r3, [sp, #108]	; 0x6c
 80027d8:	9318      	str	r3, [sp, #96]	; 0x60
 80027da:	9305      	str	r3, [sp, #20]
 80027dc:	ab2d      	add	r3, sp, #180	; 0xb4
 80027de:	932a      	str	r3, [sp, #168]	; 0xa8
 80027e0:	469b      	mov	fp, r3
 80027e2:	783b      	ldrb	r3, [r7, #0]
 80027e4:	f8cd 901c 	str.w	r9, [sp, #28]
 80027e8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80027ec:	2b00      	cmp	r3, #0
 80027ee:	f000 8259 	beq.w	8002ca4 <_vfprintf_r+0x554>
 80027f2:	2b25      	cmp	r3, #37	; 0x25
 80027f4:	463c      	mov	r4, r7
 80027f6:	d102      	bne.n	80027fe <_vfprintf_r+0xae>
 80027f8:	e01d      	b.n	8002836 <_vfprintf_r+0xe6>
 80027fa:	2b25      	cmp	r3, #37	; 0x25
 80027fc:	d003      	beq.n	8002806 <_vfprintf_r+0xb6>
 80027fe:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002802:	2b00      	cmp	r3, #0
 8002804:	d1f9      	bne.n	80027fa <_vfprintf_r+0xaa>
 8002806:	1be5      	subs	r5, r4, r7
 8002808:	b18d      	cbz	r5, 800282e <_vfprintf_r+0xde>
 800280a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800280e:	3301      	adds	r3, #1
 8002810:	442a      	add	r2, r5
 8002812:	2b07      	cmp	r3, #7
 8002814:	f8cb 7000 	str.w	r7, [fp]
 8002818:	f8cb 5004 	str.w	r5, [fp, #4]
 800281c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002820:	f300 80ca 	bgt.w	80029b8 <_vfprintf_r+0x268>
 8002824:	f10b 0b08 	add.w	fp, fp, #8
 8002828:	9b05      	ldr	r3, [sp, #20]
 800282a:	442b      	add	r3, r5
 800282c:	9305      	str	r3, [sp, #20]
 800282e:	7823      	ldrb	r3, [r4, #0]
 8002830:	2b00      	cmp	r3, #0
 8002832:	f000 8237 	beq.w	8002ca4 <_vfprintf_r+0x554>
 8002836:	2300      	movs	r3, #0
 8002838:	7866      	ldrb	r6, [r4, #1]
 800283a:	9306      	str	r3, [sp, #24]
 800283c:	4698      	mov	r8, r3
 800283e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002842:	f104 0a01 	add.w	sl, r4, #1
 8002846:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800284a:	252b      	movs	r5, #43	; 0x2b
 800284c:	f10a 0a01 	add.w	sl, sl, #1
 8002850:	f1a6 0320 	sub.w	r3, r6, #32
 8002854:	2b5a      	cmp	r3, #90	; 0x5a
 8002856:	f200 842a 	bhi.w	80030ae <_vfprintf_r+0x95e>
 800285a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800285e:	03aa      	.short	0x03aa
 8002860:	04280428 	.word	0x04280428
 8002864:	0428029c 	.word	0x0428029c
 8002868:	04280428 	.word	0x04280428
 800286c:	042802a7 	.word	0x042802a7
 8002870:	02c60428 	.word	0x02c60428
 8002874:	042802d2 	.word	0x042802d2
 8002878:	02dc02d7 	.word	0x02dc02d7
 800287c:	02f60428 	.word	0x02f60428
 8002880:	026d026d 	.word	0x026d026d
 8002884:	026d026d 	.word	0x026d026d
 8002888:	026d026d 	.word	0x026d026d
 800288c:	026d026d 	.word	0x026d026d
 8002890:	0428026d 	.word	0x0428026d
 8002894:	04280428 	.word	0x04280428
 8002898:	04280428 	.word	0x04280428
 800289c:	04280428 	.word	0x04280428
 80028a0:	042802fb 	.word	0x042802fb
 80028a4:	03f3033c 	.word	0x03f3033c
 80028a8:	02fb02fb 	.word	0x02fb02fb
 80028ac:	042802fb 	.word	0x042802fb
 80028b0:	04280428 	.word	0x04280428
 80028b4:	03ee0428 	.word	0x03ee0428
 80028b8:	04280428 	.word	0x04280428
 80028bc:	0428009a 	.word	0x0428009a
 80028c0:	04280428 	.word	0x04280428
 80028c4:	04280350 	.word	0x04280350
 80028c8:	04280379 	.word	0x04280379
 80028cc:	03900428 	.word	0x03900428
 80028d0:	04280428 	.word	0x04280428
 80028d4:	04280428 	.word	0x04280428
 80028d8:	04280428 	.word	0x04280428
 80028dc:	04280428 	.word	0x04280428
 80028e0:	042802fb 	.word	0x042802fb
 80028e4:	00c5033c 	.word	0x00c5033c
 80028e8:	02fb02fb 	.word	0x02fb02fb
 80028ec:	03d102fb 	.word	0x03d102fb
 80028f0:	007000c5 	.word	0x007000c5
 80028f4:	03b50428 	.word	0x03b50428
 80028f8:	03c20428 	.word	0x03c20428
 80028fc:	03de009c 	.word	0x03de009c
 8002900:	04280070 	.word	0x04280070
 8002904:	00720350 	.word	0x00720350
 8002908:	0428022c 	.word	0x0428022c
 800290c:	027c0428 	.word	0x027c0428
 8002910:	00720428 	.word	0x00720428
 8002914:	4649      	mov	r1, r9
 8002916:	9803      	ldr	r0, [sp, #12]
 8002918:	f001 fc9a 	bl	8004250 <__swsetup_r>
 800291c:	b1a0      	cbz	r0, 8002948 <_vfprintf_r+0x1f8>
 800291e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002922:	07d8      	lsls	r0, r3, #31
 8002924:	d404      	bmi.n	8002930 <_vfprintf_r+0x1e0>
 8002926:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800292a:	0599      	lsls	r1, r3, #22
 800292c:	f140 83b7 	bpl.w	800309e <_vfprintf_r+0x94e>
 8002930:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002934:	9305      	str	r3, [sp, #20]
 8002936:	9805      	ldr	r0, [sp, #20]
 8002938:	b057      	add	sp, #348	; 0x15c
 800293a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800293e:	f048 0820 	orr.w	r8, r8, #32
 8002942:	f89a 6000 	ldrb.w	r6, [sl]
 8002946:	e781      	b.n	800284c <_vfprintf_r+0xfc>
 8002948:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800294c:	f003 021a 	and.w	r2, r3, #26
 8002950:	2a0a      	cmp	r2, #10
 8002952:	f47f af37 	bne.w	80027c4 <_vfprintf_r+0x74>
 8002956:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800295a:	2a00      	cmp	r2, #0
 800295c:	f6ff af32 	blt.w	80027c4 <_vfprintf_r+0x74>
 8002960:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002964:	07d2      	lsls	r2, r2, #31
 8002966:	d405      	bmi.n	8002974 <_vfprintf_r+0x224>
 8002968:	059b      	lsls	r3, r3, #22
 800296a:	d403      	bmi.n	8002974 <_vfprintf_r+0x224>
 800296c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002970:	f003 f8de 	bl	8005b30 <__retarget_lock_release_recursive>
 8002974:	4623      	mov	r3, r4
 8002976:	463a      	mov	r2, r7
 8002978:	4649      	mov	r1, r9
 800297a:	9803      	ldr	r0, [sp, #12]
 800297c:	f001 fc26 	bl	80041cc <__sbprintf>
 8002980:	9005      	str	r0, [sp, #20]
 8002982:	9805      	ldr	r0, [sp, #20]
 8002984:	b057      	add	sp, #348	; 0x15c
 8002986:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800298a:	9803      	ldr	r0, [sp, #12]
 800298c:	f002 fd7e 	bl	800548c <__sinit>
 8002990:	e6f4      	b.n	800277c <_vfprintf_r+0x2c>
 8002992:	f048 0810 	orr.w	r8, r8, #16
 8002996:	f018 0f20 	tst.w	r8, #32
 800299a:	f000 836c 	beq.w	8003076 <_vfprintf_r+0x926>
 800299e:	9c08      	ldr	r4, [sp, #32]
 80029a0:	3407      	adds	r4, #7
 80029a2:	f024 0307 	bic.w	r3, r4, #7
 80029a6:	e9d3 4500 	ldrd	r4, r5, [r3]
 80029aa:	f103 0208 	add.w	r2, r3, #8
 80029ae:	9208      	str	r2, [sp, #32]
 80029b0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80029b4:	2200      	movs	r2, #0
 80029b6:	e18c      	b.n	8002cd2 <_vfprintf_r+0x582>
 80029b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80029ba:	9907      	ldr	r1, [sp, #28]
 80029bc:	9803      	ldr	r0, [sp, #12]
 80029be:	f004 f9f5 	bl	8006dac <__sprint_r>
 80029c2:	2800      	cmp	r0, #0
 80029c4:	f041 8376 	bne.w	80040b4 <_vfprintf_r+0x1964>
 80029c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80029cc:	e72c      	b.n	8002828 <_vfprintf_r+0xd8>
 80029ce:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80029d2:	f003 f8ab 	bl	8005b2c <__retarget_lock_acquire_recursive>
 80029d6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80029da:	b293      	uxth	r3, r2
 80029dc:	e6d8      	b.n	8002790 <_vfprintf_r+0x40>
 80029de:	bf00      	nop
	...
 80029e8:	4643      	mov	r3, r8
 80029ea:	069f      	lsls	r7, r3, #26
 80029ec:	f140 832f 	bpl.w	800304e <_vfprintf_r+0x8fe>
 80029f0:	9c08      	ldr	r4, [sp, #32]
 80029f2:	3407      	adds	r4, #7
 80029f4:	f024 0407 	bic.w	r4, r4, #7
 80029f8:	e9d4 0100 	ldrd	r0, r1, [r4]
 80029fc:	f104 0208 	add.w	r2, r4, #8
 8002a00:	9208      	str	r2, [sp, #32]
 8002a02:	4604      	mov	r4, r0
 8002a04:	460d      	mov	r5, r1
 8002a06:	2800      	cmp	r0, #0
 8002a08:	f171 0200 	sbcs.w	r2, r1, #0
 8002a0c:	da05      	bge.n	8002a1a <_vfprintf_r+0x2ca>
 8002a0e:	222d      	movs	r2, #45	; 0x2d
 8002a10:	4264      	negs	r4, r4
 8002a12:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002a16:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002a1a:	aa56      	add	r2, sp, #344	; 0x158
 8002a1c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a20:	9204      	str	r2, [sp, #16]
 8002a22:	f000 84b2 	beq.w	800338a <_vfprintf_r+0xc3a>
 8002a26:	2201      	movs	r2, #1
 8002a28:	ea54 0105 	orrs.w	r1, r4, r5
 8002a2c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002a30:	f040 8159 	bne.w	8002ce6 <_vfprintf_r+0x596>
 8002a34:	f1b9 0f00 	cmp.w	r9, #0
 8002a38:	f040 8619 	bne.w	800366e <_vfprintf_r+0xf1e>
 8002a3c:	2a00      	cmp	r2, #0
 8002a3e:	f040 8508 	bne.w	8003452 <_vfprintf_r+0xd02>
 8002a42:	f013 0301 	ands.w	r3, r3, #1
 8002a46:	af56      	add	r7, sp, #344	; 0x158
 8002a48:	9309      	str	r3, [sp, #36]	; 0x24
 8002a4a:	d002      	beq.n	8002a52 <_vfprintf_r+0x302>
 8002a4c:	2330      	movs	r3, #48	; 0x30
 8002a4e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002a52:	2300      	movs	r3, #0
 8002a54:	930a      	str	r3, [sp, #40]	; 0x28
 8002a56:	930f      	str	r3, [sp, #60]	; 0x3c
 8002a58:	9314      	str	r3, [sp, #80]	; 0x50
 8002a5a:	9311      	str	r3, [sp, #68]	; 0x44
 8002a5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002a5e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a62:	454b      	cmp	r3, r9
 8002a64:	bfb8      	it	lt
 8002a66:	464b      	movlt	r3, r9
 8002a68:	9304      	str	r3, [sp, #16]
 8002a6a:	b112      	cbz	r2, 8002a72 <_vfprintf_r+0x322>
 8002a6c:	9b04      	ldr	r3, [sp, #16]
 8002a6e:	3301      	adds	r3, #1
 8002a70:	9304      	str	r3, [sp, #16]
 8002a72:	f018 0302 	ands.w	r3, r8, #2
 8002a76:	930b      	str	r3, [sp, #44]	; 0x2c
 8002a78:	d002      	beq.n	8002a80 <_vfprintf_r+0x330>
 8002a7a:	9b04      	ldr	r3, [sp, #16]
 8002a7c:	3302      	adds	r3, #2
 8002a7e:	9304      	str	r3, [sp, #16]
 8002a80:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002a84:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002a86:	930e      	str	r3, [sp, #56]	; 0x38
 8002a88:	d13f      	bne.n	8002b0a <_vfprintf_r+0x3ba>
 8002a8a:	9b06      	ldr	r3, [sp, #24]
 8002a8c:	9904      	ldr	r1, [sp, #16]
 8002a8e:	1a5d      	subs	r5, r3, r1
 8002a90:	2d00      	cmp	r5, #0
 8002a92:	dd3a      	ble.n	8002b0a <_vfprintf_r+0x3ba>
 8002a94:	2d10      	cmp	r5, #16
 8002a96:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002a98:	dd29      	ble.n	8002aee <_vfprintf_r+0x39e>
 8002a9a:	4659      	mov	r1, fp
 8002a9c:	4620      	mov	r0, r4
 8002a9e:	9620      	str	r6, [sp, #128]	; 0x80
 8002aa0:	2310      	movs	r3, #16
 8002aa2:	9c03      	ldr	r4, [sp, #12]
 8002aa4:	9e07      	ldr	r6, [sp, #28]
 8002aa6:	46bb      	mov	fp, r7
 8002aa8:	e004      	b.n	8002ab4 <_vfprintf_r+0x364>
 8002aaa:	3d10      	subs	r5, #16
 8002aac:	2d10      	cmp	r5, #16
 8002aae:	f101 0108 	add.w	r1, r1, #8
 8002ab2:	dd18      	ble.n	8002ae6 <_vfprintf_r+0x396>
 8002ab4:	3201      	adds	r2, #1
 8002ab6:	4fba      	ldr	r7, [pc, #744]	; (8002da0 <_vfprintf_r+0x650>)
 8002ab8:	3010      	adds	r0, #16
 8002aba:	2a07      	cmp	r2, #7
 8002abc:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002ac0:	e9c1 7300 	strd	r7, r3, [r1]
 8002ac4:	ddf1      	ble.n	8002aaa <_vfprintf_r+0x35a>
 8002ac6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ac8:	4631      	mov	r1, r6
 8002aca:	4620      	mov	r0, r4
 8002acc:	930c      	str	r3, [sp, #48]	; 0x30
 8002ace:	f004 f96d 	bl	8006dac <__sprint_r>
 8002ad2:	2800      	cmp	r0, #0
 8002ad4:	f040 843d 	bne.w	8003352 <_vfprintf_r+0xc02>
 8002ad8:	3d10      	subs	r5, #16
 8002ada:	2d10      	cmp	r5, #16
 8002adc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ae0:	a92d      	add	r1, sp, #180	; 0xb4
 8002ae2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002ae4:	dce6      	bgt.n	8002ab4 <_vfprintf_r+0x364>
 8002ae6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002ae8:	465f      	mov	r7, fp
 8002aea:	4604      	mov	r4, r0
 8002aec:	468b      	mov	fp, r1
 8002aee:	3201      	adds	r2, #1
 8002af0:	4bab      	ldr	r3, [pc, #684]	; (8002da0 <_vfprintf_r+0x650>)
 8002af2:	442c      	add	r4, r5
 8002af4:	2a07      	cmp	r2, #7
 8002af6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002afa:	e9cb 3500 	strd	r3, r5, [fp]
 8002afe:	f300 84ff 	bgt.w	8003500 <_vfprintf_r+0xdb0>
 8002b02:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b06:	f10b 0b08 	add.w	fp, fp, #8
 8002b0a:	b172      	cbz	r2, 8002b2a <_vfprintf_r+0x3da>
 8002b0c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b0e:	3201      	adds	r2, #1
 8002b10:	3401      	adds	r4, #1
 8002b12:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002b16:	2101      	movs	r1, #1
 8002b18:	2a07      	cmp	r2, #7
 8002b1a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b1e:	e9cb 0100 	strd	r0, r1, [fp]
 8002b22:	f300 8418 	bgt.w	8003356 <_vfprintf_r+0xc06>
 8002b26:	f10b 0b08 	add.w	fp, fp, #8
 8002b2a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002b2c:	b16b      	cbz	r3, 8002b4a <_vfprintf_r+0x3fa>
 8002b2e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b30:	3301      	adds	r3, #1
 8002b32:	3402      	adds	r4, #2
 8002b34:	a923      	add	r1, sp, #140	; 0x8c
 8002b36:	2202      	movs	r2, #2
 8002b38:	2b07      	cmp	r3, #7
 8002b3a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002b3e:	e9cb 1200 	strd	r1, r2, [fp]
 8002b42:	f300 8415 	bgt.w	8003370 <_vfprintf_r+0xc20>
 8002b46:	f10b 0b08 	add.w	fp, fp, #8
 8002b4a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002b4c:	2b80      	cmp	r3, #128	; 0x80
 8002b4e:	f000 8331 	beq.w	80031b4 <_vfprintf_r+0xa64>
 8002b52:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002b54:	eba9 0503 	sub.w	r5, r9, r3
 8002b58:	2d00      	cmp	r5, #0
 8002b5a:	dd37      	ble.n	8002bcc <_vfprintf_r+0x47c>
 8002b5c:	2d10      	cmp	r5, #16
 8002b5e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b60:	4b90      	ldr	r3, [pc, #576]	; (8002da4 <_vfprintf_r+0x654>)
 8002b62:	dd28      	ble.n	8002bb6 <_vfprintf_r+0x466>
 8002b64:	4659      	mov	r1, fp
 8002b66:	4620      	mov	r0, r4
 8002b68:	46bb      	mov	fp, r7
 8002b6a:	f04f 0910 	mov.w	r9, #16
 8002b6e:	4637      	mov	r7, r6
 8002b70:	461c      	mov	r4, r3
 8002b72:	9e07      	ldr	r6, [sp, #28]
 8002b74:	e004      	b.n	8002b80 <_vfprintf_r+0x430>
 8002b76:	3d10      	subs	r5, #16
 8002b78:	2d10      	cmp	r5, #16
 8002b7a:	f101 0108 	add.w	r1, r1, #8
 8002b7e:	dd15      	ble.n	8002bac <_vfprintf_r+0x45c>
 8002b80:	3201      	adds	r2, #1
 8002b82:	3010      	adds	r0, #16
 8002b84:	2a07      	cmp	r2, #7
 8002b86:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002b8a:	e9c1 4900 	strd	r4, r9, [r1]
 8002b8e:	ddf2      	ble.n	8002b76 <_vfprintf_r+0x426>
 8002b90:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b92:	4631      	mov	r1, r6
 8002b94:	9803      	ldr	r0, [sp, #12]
 8002b96:	f004 f909 	bl	8006dac <__sprint_r>
 8002b9a:	2800      	cmp	r0, #0
 8002b9c:	f040 83d9 	bne.w	8003352 <_vfprintf_r+0xc02>
 8002ba0:	3d10      	subs	r5, #16
 8002ba2:	2d10      	cmp	r5, #16
 8002ba4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ba8:	a92d      	add	r1, sp, #180	; 0xb4
 8002baa:	dce9      	bgt.n	8002b80 <_vfprintf_r+0x430>
 8002bac:	463e      	mov	r6, r7
 8002bae:	4623      	mov	r3, r4
 8002bb0:	465f      	mov	r7, fp
 8002bb2:	4604      	mov	r4, r0
 8002bb4:	468b      	mov	fp, r1
 8002bb6:	3201      	adds	r2, #1
 8002bb8:	442c      	add	r4, r5
 8002bba:	2a07      	cmp	r2, #7
 8002bbc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002bc0:	e9cb 3500 	strd	r3, r5, [fp]
 8002bc4:	f300 83ef 	bgt.w	80033a6 <_vfprintf_r+0xc56>
 8002bc8:	f10b 0b08 	add.w	fp, fp, #8
 8002bcc:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002bd0:	f040 8280 	bne.w	80030d4 <_vfprintf_r+0x984>
 8002bd4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002bd6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002bd8:	f8cb 7000 	str.w	r7, [fp]
 8002bdc:	3301      	adds	r3, #1
 8002bde:	4414      	add	r4, r2
 8002be0:	2b07      	cmp	r3, #7
 8002be2:	942c      	str	r4, [sp, #176]	; 0xb0
 8002be4:	f8cb 2004 	str.w	r2, [fp, #4]
 8002be8:	932b      	str	r3, [sp, #172]	; 0xac
 8002bea:	f300 8392 	bgt.w	8003312 <_vfprintf_r+0xbc2>
 8002bee:	f10b 0b08 	add.w	fp, fp, #8
 8002bf2:	f018 0f04 	tst.w	r8, #4
 8002bf6:	d03b      	beq.n	8002c70 <_vfprintf_r+0x520>
 8002bf8:	9b06      	ldr	r3, [sp, #24]
 8002bfa:	9a04      	ldr	r2, [sp, #16]
 8002bfc:	1a9d      	subs	r5, r3, r2
 8002bfe:	2d00      	cmp	r5, #0
 8002c00:	dd36      	ble.n	8002c70 <_vfprintf_r+0x520>
 8002c02:	2d10      	cmp	r5, #16
 8002c04:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c06:	dd21      	ble.n	8002c4c <_vfprintf_r+0x4fc>
 8002c08:	2610      	movs	r6, #16
 8002c0a:	9f03      	ldr	r7, [sp, #12]
 8002c0c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002c10:	e004      	b.n	8002c1c <_vfprintf_r+0x4cc>
 8002c12:	3d10      	subs	r5, #16
 8002c14:	2d10      	cmp	r5, #16
 8002c16:	f10b 0b08 	add.w	fp, fp, #8
 8002c1a:	dd17      	ble.n	8002c4c <_vfprintf_r+0x4fc>
 8002c1c:	3301      	adds	r3, #1
 8002c1e:	4a60      	ldr	r2, [pc, #384]	; (8002da0 <_vfprintf_r+0x650>)
 8002c20:	3410      	adds	r4, #16
 8002c22:	2b07      	cmp	r3, #7
 8002c24:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c28:	e9cb 2600 	strd	r2, r6, [fp]
 8002c2c:	ddf1      	ble.n	8002c12 <_vfprintf_r+0x4c2>
 8002c2e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c30:	4641      	mov	r1, r8
 8002c32:	4638      	mov	r0, r7
 8002c34:	f004 f8ba 	bl	8006dac <__sprint_r>
 8002c38:	2800      	cmp	r0, #0
 8002c3a:	f040 856c 	bne.w	8003716 <_vfprintf_r+0xfc6>
 8002c3e:	3d10      	subs	r5, #16
 8002c40:	2d10      	cmp	r5, #16
 8002c42:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002c46:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c4a:	dce7      	bgt.n	8002c1c <_vfprintf_r+0x4cc>
 8002c4c:	3301      	adds	r3, #1
 8002c4e:	4a54      	ldr	r2, [pc, #336]	; (8002da0 <_vfprintf_r+0x650>)
 8002c50:	442c      	add	r4, r5
 8002c52:	2b07      	cmp	r3, #7
 8002c54:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c58:	e9cb 2500 	strd	r2, r5, [fp]
 8002c5c:	dd08      	ble.n	8002c70 <_vfprintf_r+0x520>
 8002c5e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c60:	9907      	ldr	r1, [sp, #28]
 8002c62:	9803      	ldr	r0, [sp, #12]
 8002c64:	f004 f8a2 	bl	8006dac <__sprint_r>
 8002c68:	2800      	cmp	r0, #0
 8002c6a:	f040 82e9 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8002c6e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c70:	9904      	ldr	r1, [sp, #16]
 8002c72:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002c76:	428a      	cmp	r2, r1
 8002c78:	bfac      	ite	ge
 8002c7a:	189b      	addge	r3, r3, r2
 8002c7c:	185b      	addlt	r3, r3, r1
 8002c7e:	9305      	str	r3, [sp, #20]
 8002c80:	2c00      	cmp	r4, #0
 8002c82:	f040 82d5 	bne.w	8003230 <_vfprintf_r+0xae0>
 8002c86:	2300      	movs	r3, #0
 8002c88:	932b      	str	r3, [sp, #172]	; 0xac
 8002c8a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c8c:	b11b      	cbz	r3, 8002c96 <_vfprintf_r+0x546>
 8002c8e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002c90:	9803      	ldr	r0, [sp, #12]
 8002c92:	f002 fc9d 	bl	80055d0 <_free_r>
 8002c96:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c9a:	4657      	mov	r7, sl
 8002c9c:	783b      	ldrb	r3, [r7, #0]
 8002c9e:	2b00      	cmp	r3, #0
 8002ca0:	f47f ada7 	bne.w	80027f2 <_vfprintf_r+0xa2>
 8002ca4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002ca6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002caa:	2b00      	cmp	r3, #0
 8002cac:	f041 80e7 	bne.w	8003e7e <_vfprintf_r+0x172e>
 8002cb0:	2300      	movs	r3, #0
 8002cb2:	932b      	str	r3, [sp, #172]	; 0xac
 8002cb4:	e2cb      	b.n	800324e <_vfprintf_r+0xafe>
 8002cb6:	4643      	mov	r3, r8
 8002cb8:	069a      	lsls	r2, r3, #26
 8002cba:	f140 814e 	bpl.w	8002f5a <_vfprintf_r+0x80a>
 8002cbe:	9c08      	ldr	r4, [sp, #32]
 8002cc0:	3407      	adds	r4, #7
 8002cc2:	f024 0207 	bic.w	r2, r4, #7
 8002cc6:	f102 0108 	add.w	r1, r2, #8
 8002cca:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002cce:	9108      	str	r1, [sp, #32]
 8002cd0:	2201      	movs	r2, #1
 8002cd2:	2100      	movs	r1, #0
 8002cd4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002cd8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002cdc:	a956      	add	r1, sp, #344	; 0x158
 8002cde:	9104      	str	r1, [sp, #16]
 8002ce0:	f47f aea2 	bne.w	8002a28 <_vfprintf_r+0x2d8>
 8002ce4:	4698      	mov	r8, r3
 8002ce6:	2a01      	cmp	r2, #1
 8002ce8:	f000 8350 	beq.w	800338c <_vfprintf_r+0xc3c>
 8002cec:	2a02      	cmp	r2, #2
 8002cee:	f000 831b 	beq.w	8003328 <_vfprintf_r+0xbd8>
 8002cf2:	a956      	add	r1, sp, #344	; 0x158
 8002cf4:	e000      	b.n	8002cf8 <_vfprintf_r+0x5a8>
 8002cf6:	4639      	mov	r1, r7
 8002cf8:	08e2      	lsrs	r2, r4, #3
 8002cfa:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002cfe:	08e8      	lsrs	r0, r5, #3
 8002d00:	f004 0307 	and.w	r3, r4, #7
 8002d04:	4605      	mov	r5, r0
 8002d06:	4614      	mov	r4, r2
 8002d08:	3330      	adds	r3, #48	; 0x30
 8002d0a:	ea54 0205 	orrs.w	r2, r4, r5
 8002d0e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002d12:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002d16:	d1ee      	bne.n	8002cf6 <_vfprintf_r+0x5a6>
 8002d18:	f018 0f01 	tst.w	r8, #1
 8002d1c:	f000 8314 	beq.w	8003348 <_vfprintf_r+0xbf8>
 8002d20:	2b30      	cmp	r3, #48	; 0x30
 8002d22:	f000 8311 	beq.w	8003348 <_vfprintf_r+0xbf8>
 8002d26:	9a04      	ldr	r2, [sp, #16]
 8002d28:	3902      	subs	r1, #2
 8002d2a:	2330      	movs	r3, #48	; 0x30
 8002d2c:	1a52      	subs	r2, r2, r1
 8002d2e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002d32:	9209      	str	r2, [sp, #36]	; 0x24
 8002d34:	460f      	mov	r7, r1
 8002d36:	e68c      	b.n	8002a52 <_vfprintf_r+0x302>
 8002d38:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d3c:	2200      	movs	r2, #0
 8002d3e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002d42:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002d46:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002d4a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d4e:	2b09      	cmp	r3, #9
 8002d50:	d9f5      	bls.n	8002d3e <_vfprintf_r+0x5ee>
 8002d52:	9206      	str	r2, [sp, #24]
 8002d54:	e57c      	b.n	8002850 <_vfprintf_r+0x100>
 8002d56:	4b14      	ldr	r3, [pc, #80]	; (8002da8 <_vfprintf_r+0x658>)
 8002d58:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d5a:	f018 0f20 	tst.w	r8, #32
 8002d5e:	f000 8114 	beq.w	8002f8a <_vfprintf_r+0x83a>
 8002d62:	9c08      	ldr	r4, [sp, #32]
 8002d64:	3407      	adds	r4, #7
 8002d66:	f024 0307 	bic.w	r3, r4, #7
 8002d6a:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002d6e:	f103 0208 	add.w	r2, r3, #8
 8002d72:	9208      	str	r2, [sp, #32]
 8002d74:	f018 0f01 	tst.w	r8, #1
 8002d78:	d009      	beq.n	8002d8e <_vfprintf_r+0x63e>
 8002d7a:	ea54 0305 	orrs.w	r3, r4, r5
 8002d7e:	d006      	beq.n	8002d8e <_vfprintf_r+0x63e>
 8002d80:	2330      	movs	r3, #48	; 0x30
 8002d82:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002d86:	f048 0802 	orr.w	r8, r8, #2
 8002d8a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002d8e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002d92:	2202      	movs	r2, #2
 8002d94:	e79d      	b.n	8002cd2 <_vfprintf_r+0x582>
 8002d96:	f048 0801 	orr.w	r8, r8, #1
 8002d9a:	f89a 6000 	ldrb.w	r6, [sl]
 8002d9e:	e555      	b.n	800284c <_vfprintf_r+0xfc>
 8002da0:	08007490 	.word	0x08007490
 8002da4:	080074a0 	.word	0x080074a0
 8002da8:	0800745c 	.word	0x0800745c
 8002dac:	9e03      	ldr	r6, [sp, #12]
 8002dae:	4630      	mov	r0, r6
 8002db0:	f002 feaa 	bl	8005b08 <_localeconv_r>
 8002db4:	6843      	ldr	r3, [r0, #4]
 8002db6:	9318      	str	r3, [sp, #96]	; 0x60
 8002db8:	4618      	mov	r0, r3
 8002dba:	f7fd fc41 	bl	8000640 <strlen>
 8002dbe:	901b      	str	r0, [sp, #108]	; 0x6c
 8002dc0:	4604      	mov	r4, r0
 8002dc2:	4630      	mov	r0, r6
 8002dc4:	f002 fea0 	bl	8005b08 <_localeconv_r>
 8002dc8:	6883      	ldr	r3, [r0, #8]
 8002dca:	931a      	str	r3, [sp, #104]	; 0x68
 8002dcc:	2c00      	cmp	r4, #0
 8002dce:	f43f adb8 	beq.w	8002942 <_vfprintf_r+0x1f2>
 8002dd2:	f89a 6000 	ldrb.w	r6, [sl]
 8002dd6:	2b00      	cmp	r3, #0
 8002dd8:	f43f ad38 	beq.w	800284c <_vfprintf_r+0xfc>
 8002ddc:	781b      	ldrb	r3, [r3, #0]
 8002dde:	2b00      	cmp	r3, #0
 8002de0:	f43f ad34 	beq.w	800284c <_vfprintf_r+0xfc>
 8002de4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002de8:	e530      	b.n	800284c <_vfprintf_r+0xfc>
 8002dea:	9b08      	ldr	r3, [sp, #32]
 8002dec:	f89a 6000 	ldrb.w	r6, [sl]
 8002df0:	681a      	ldr	r2, [r3, #0]
 8002df2:	9206      	str	r2, [sp, #24]
 8002df4:	2a00      	cmp	r2, #0
 8002df6:	f103 0304 	add.w	r3, r3, #4
 8002dfa:	f2c0 8697 	blt.w	8003b2c <_vfprintf_r+0x13dc>
 8002dfe:	9308      	str	r3, [sp, #32]
 8002e00:	e524      	b.n	800284c <_vfprintf_r+0xfc>
 8002e02:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002e06:	f89a 6000 	ldrb.w	r6, [sl]
 8002e0a:	e51f      	b.n	800284c <_vfprintf_r+0xfc>
 8002e0c:	f89a 6000 	ldrb.w	r6, [sl]
 8002e10:	f048 0804 	orr.w	r8, r8, #4
 8002e14:	e51a      	b.n	800284c <_vfprintf_r+0xfc>
 8002e16:	f89a 6000 	ldrb.w	r6, [sl]
 8002e1a:	2e2a      	cmp	r6, #42	; 0x2a
 8002e1c:	f10a 0201 	add.w	r2, sl, #1
 8002e20:	f001 81b0 	beq.w	8004184 <_vfprintf_r+0x1a34>
 8002e24:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e28:	2b09      	cmp	r3, #9
 8002e2a:	4692      	mov	sl, r2
 8002e2c:	f04f 0900 	mov.w	r9, #0
 8002e30:	f63f ad0e 	bhi.w	8002850 <_vfprintf_r+0x100>
 8002e34:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002e38:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002e3c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002e40:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e44:	2b09      	cmp	r3, #9
 8002e46:	d9f5      	bls.n	8002e34 <_vfprintf_r+0x6e4>
 8002e48:	e502      	b.n	8002850 <_vfprintf_r+0x100>
 8002e4a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002e4e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e52:	e4fb      	b.n	800284c <_vfprintf_r+0xfc>
 8002e54:	9c08      	ldr	r4, [sp, #32]
 8002e56:	3407      	adds	r4, #7
 8002e58:	f024 0407 	bic.w	r4, r4, #7
 8002e5c:	ed94 7b00 	vldr	d7, [r4]
 8002e60:	ec52 1b17 	vmov	r1, r2, d7
 8002e64:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002e68:	931d      	str	r3, [sp, #116]	; 0x74
 8002e6a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002e6e:	3408      	adds	r4, #8
 8002e70:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002e74:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002e78:	4bba      	ldr	r3, [pc, #744]	; (8003164 <_vfprintf_r+0xa14>)
 8002e7a:	9408      	str	r4, [sp, #32]
 8002e7c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002e80:	f7fe f8f4 	bl	800106c <__aeabi_dcmpun>
 8002e84:	2800      	cmp	r0, #0
 8002e86:	f040 846f 	bne.w	8003768 <_vfprintf_r+0x1018>
 8002e8a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002e8e:	4bb5      	ldr	r3, [pc, #724]	; (8003164 <_vfprintf_r+0xa14>)
 8002e90:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002e94:	f7fe f8cc 	bl	8001030 <__aeabi_dcmple>
 8002e98:	2800      	cmp	r0, #0
 8002e9a:	f040 8465 	bne.w	8003768 <_vfprintf_r+0x1018>
 8002e9e:	2200      	movs	r2, #0
 8002ea0:	2300      	movs	r3, #0
 8002ea2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ea6:	f7fe f8b9 	bl	800101c <__aeabi_dcmplt>
 8002eaa:	2800      	cmp	r0, #0
 8002eac:	f040 855b 	bne.w	8003966 <_vfprintf_r+0x1216>
 8002eb0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002eb4:	4fac      	ldr	r7, [pc, #688]	; (8003168 <_vfprintf_r+0xa18>)
 8002eb6:	4bad      	ldr	r3, [pc, #692]	; (800316c <_vfprintf_r+0xa1c>)
 8002eb8:	2000      	movs	r0, #0
 8002eba:	2103      	movs	r1, #3
 8002ebc:	9104      	str	r1, [sp, #16]
 8002ebe:	900a      	str	r0, [sp, #40]	; 0x28
 8002ec0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002ec4:	2e47      	cmp	r6, #71	; 0x47
 8002ec6:	bfd8      	it	le
 8002ec8:	461f      	movle	r7, r3
 8002eca:	9109      	str	r1, [sp, #36]	; 0x24
 8002ecc:	4681      	mov	r9, r0
 8002ece:	900f      	str	r0, [sp, #60]	; 0x3c
 8002ed0:	9014      	str	r0, [sp, #80]	; 0x50
 8002ed2:	9011      	str	r0, [sp, #68]	; 0x44
 8002ed4:	e5c9      	b.n	8002a6a <_vfprintf_r+0x31a>
 8002ed6:	9808      	ldr	r0, [sp, #32]
 8002ed8:	2300      	movs	r3, #0
 8002eda:	6801      	ldr	r1, [r0, #0]
 8002edc:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ee0:	461a      	mov	r2, r3
 8002ee2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002ee6:	2301      	movs	r3, #1
 8002ee8:	1d01      	adds	r1, r0, #4
 8002eea:	9304      	str	r3, [sp, #16]
 8002eec:	920a      	str	r2, [sp, #40]	; 0x28
 8002eee:	4691      	mov	r9, r2
 8002ef0:	920f      	str	r2, [sp, #60]	; 0x3c
 8002ef2:	9214      	str	r2, [sp, #80]	; 0x50
 8002ef4:	9211      	str	r2, [sp, #68]	; 0x44
 8002ef6:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002efa:	af3d      	add	r7, sp, #244	; 0xf4
 8002efc:	e5b9      	b.n	8002a72 <_vfprintf_r+0x322>
 8002efe:	9b08      	ldr	r3, [sp, #32]
 8002f00:	681f      	ldr	r7, [r3, #0]
 8002f02:	2500      	movs	r5, #0
 8002f04:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002f08:	1d1c      	adds	r4, r3, #4
 8002f0a:	2f00      	cmp	r7, #0
 8002f0c:	f000 8639 	beq.w	8003b82 <_vfprintf_r+0x1432>
 8002f10:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002f14:	f000 8711 	beq.w	8003d3a <_vfprintf_r+0x15ea>
 8002f18:	464a      	mov	r2, r9
 8002f1a:	4629      	mov	r1, r5
 8002f1c:	4638      	mov	r0, r7
 8002f1e:	f7fd fbff 	bl	8000720 <memchr>
 8002f22:	900a      	str	r0, [sp, #40]	; 0x28
 8002f24:	2800      	cmp	r0, #0
 8002f26:	f000 85e7 	beq.w	8003af8 <_vfprintf_r+0x13a8>
 8002f2a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002f2c:	1bdb      	subs	r3, r3, r7
 8002f2e:	9309      	str	r3, [sp, #36]	; 0x24
 8002f30:	46a9      	mov	r9, r5
 8002f32:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002f36:	9408      	str	r4, [sp, #32]
 8002f38:	9304      	str	r3, [sp, #16]
 8002f3a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002f3e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002f42:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002f46:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002f4a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002f4e:	e58c      	b.n	8002a6a <_vfprintf_r+0x31a>
 8002f50:	f048 0310 	orr.w	r3, r8, #16
 8002f54:	069a      	lsls	r2, r3, #26
 8002f56:	f53f aeb2 	bmi.w	8002cbe <_vfprintf_r+0x56e>
 8002f5a:	9a08      	ldr	r2, [sp, #32]
 8002f5c:	06df      	lsls	r7, r3, #27
 8002f5e:	f102 0104 	add.w	r1, r2, #4
 8002f62:	f100 837e 	bmi.w	8003662 <_vfprintf_r+0xf12>
 8002f66:	065d      	lsls	r5, r3, #25
 8002f68:	9a08      	ldr	r2, [sp, #32]
 8002f6a:	f100 84e4 	bmi.w	8003936 <_vfprintf_r+0x11e6>
 8002f6e:	059c      	lsls	r4, r3, #22
 8002f70:	f140 8377 	bpl.w	8003662 <_vfprintf_r+0xf12>
 8002f74:	7814      	ldrb	r4, [r2, #0]
 8002f76:	9108      	str	r1, [sp, #32]
 8002f78:	2500      	movs	r5, #0
 8002f7a:	2201      	movs	r2, #1
 8002f7c:	e6a9      	b.n	8002cd2 <_vfprintf_r+0x582>
 8002f7e:	4b7c      	ldr	r3, [pc, #496]	; (8003170 <_vfprintf_r+0xa20>)
 8002f80:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f82:	f018 0f20 	tst.w	r8, #32
 8002f86:	f47f aeec 	bne.w	8002d62 <_vfprintf_r+0x612>
 8002f8a:	9a08      	ldr	r2, [sp, #32]
 8002f8c:	f018 0f10 	tst.w	r8, #16
 8002f90:	f102 0304 	add.w	r3, r2, #4
 8002f94:	f040 8354 	bne.w	8003640 <_vfprintf_r+0xef0>
 8002f98:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002f9c:	9a08      	ldr	r2, [sp, #32]
 8002f9e:	f040 84d0 	bne.w	8003942 <_vfprintf_r+0x11f2>
 8002fa2:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002fa6:	f000 834b 	beq.w	8003640 <_vfprintf_r+0xef0>
 8002faa:	7814      	ldrb	r4, [r2, #0]
 8002fac:	9308      	str	r3, [sp, #32]
 8002fae:	2500      	movs	r5, #0
 8002fb0:	e6e0      	b.n	8002d74 <_vfprintf_r+0x624>
 8002fb2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002fb6:	f89a 6000 	ldrb.w	r6, [sl]
 8002fba:	2b00      	cmp	r3, #0
 8002fbc:	f47f ac46 	bne.w	800284c <_vfprintf_r+0xfc>
 8002fc0:	2320      	movs	r3, #32
 8002fc2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002fc6:	e441      	b.n	800284c <_vfprintf_r+0xfc>
 8002fc8:	f89a 6000 	ldrb.w	r6, [sl]
 8002fcc:	2e6c      	cmp	r6, #108	; 0x6c
 8002fce:	bf03      	ittte	eq
 8002fd0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002fd4:	f048 0820 	orreq.w	r8, r8, #32
 8002fd8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002fdc:	f048 0810 	orrne.w	r8, r8, #16
 8002fe0:	e434      	b.n	800284c <_vfprintf_r+0xfc>
 8002fe2:	9a08      	ldr	r2, [sp, #32]
 8002fe4:	f018 0f20 	tst.w	r8, #32
 8002fe8:	f852 3b04 	ldr.w	r3, [r2], #4
 8002fec:	9208      	str	r2, [sp, #32]
 8002fee:	f000 83a1 	beq.w	8003734 <_vfprintf_r+0xfe4>
 8002ff2:	9a05      	ldr	r2, [sp, #20]
 8002ff4:	4610      	mov	r0, r2
 8002ff6:	17d1      	asrs	r1, r2, #31
 8002ff8:	e9c3 0100 	strd	r0, r1, [r3]
 8002ffc:	4657      	mov	r7, sl
 8002ffe:	e64d      	b.n	8002c9c <_vfprintf_r+0x54c>
 8003000:	f89a 6000 	ldrb.w	r6, [sl]
 8003004:	2e68      	cmp	r6, #104	; 0x68
 8003006:	bf03      	ittte	eq
 8003008:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800300c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003010:	f10a 0a01 	addeq.w	sl, sl, #1
 8003014:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003018:	e418      	b.n	800284c <_vfprintf_r+0xfc>
 800301a:	9908      	ldr	r1, [sp, #32]
 800301c:	4b55      	ldr	r3, [pc, #340]	; (8003174 <_vfprintf_r+0xa24>)
 800301e:	680c      	ldr	r4, [r1, #0]
 8003020:	9317      	str	r3, [sp, #92]	; 0x5c
 8003022:	f647 0230 	movw	r2, #30768	; 0x7830
 8003026:	3104      	adds	r1, #4
 8003028:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 800302c:	f048 0302 	orr.w	r3, r8, #2
 8003030:	9108      	str	r1, [sp, #32]
 8003032:	2500      	movs	r5, #0
 8003034:	2202      	movs	r2, #2
 8003036:	2678      	movs	r6, #120	; 0x78
 8003038:	e64b      	b.n	8002cd2 <_vfprintf_r+0x582>
 800303a:	f048 0808 	orr.w	r8, r8, #8
 800303e:	f89a 6000 	ldrb.w	r6, [sl]
 8003042:	e403      	b.n	800284c <_vfprintf_r+0xfc>
 8003044:	f048 0310 	orr.w	r3, r8, #16
 8003048:	069f      	lsls	r7, r3, #26
 800304a:	f53f acd1 	bmi.w	80029f0 <_vfprintf_r+0x2a0>
 800304e:	9908      	ldr	r1, [sp, #32]
 8003050:	06dd      	lsls	r5, r3, #27
 8003052:	f101 0204 	add.w	r2, r1, #4
 8003056:	f100 82fd 	bmi.w	8003654 <_vfprintf_r+0xf04>
 800305a:	065c      	lsls	r4, r3, #25
 800305c:	9908      	ldr	r1, [sp, #32]
 800305e:	f100 8475 	bmi.w	800394c <_vfprintf_r+0x11fc>
 8003062:	0598      	lsls	r0, r3, #22
 8003064:	f140 82f6 	bpl.w	8003654 <_vfprintf_r+0xf04>
 8003068:	f991 4000 	ldrsb.w	r4, [r1]
 800306c:	9208      	str	r2, [sp, #32]
 800306e:	17e5      	asrs	r5, r4, #31
 8003070:	4620      	mov	r0, r4
 8003072:	4629      	mov	r1, r5
 8003074:	e4c7      	b.n	8002a06 <_vfprintf_r+0x2b6>
 8003076:	9a08      	ldr	r2, [sp, #32]
 8003078:	f018 0f10 	tst.w	r8, #16
 800307c:	f102 0304 	add.w	r3, r2, #4
 8003080:	f040 82e3 	bne.w	800364a <_vfprintf_r+0xefa>
 8003084:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003088:	9a08      	ldr	r2, [sp, #32]
 800308a:	f040 8467 	bne.w	800395c <_vfprintf_r+0x120c>
 800308e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003092:	f000 82da 	beq.w	800364a <_vfprintf_r+0xefa>
 8003096:	7814      	ldrb	r4, [r2, #0]
 8003098:	9308      	str	r3, [sp, #32]
 800309a:	2500      	movs	r5, #0
 800309c:	e488      	b.n	80029b0 <_vfprintf_r+0x260>
 800309e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80030a2:	f002 fd45 	bl	8005b30 <__retarget_lock_release_recursive>
 80030a6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80030aa:	9305      	str	r3, [sp, #20]
 80030ac:	e443      	b.n	8002936 <_vfprintf_r+0x1e6>
 80030ae:	2e00      	cmp	r6, #0
 80030b0:	f43f adf8 	beq.w	8002ca4 <_vfprintf_r+0x554>
 80030b4:	2300      	movs	r3, #0
 80030b6:	2101      	movs	r1, #1
 80030b8:	461a      	mov	r2, r3
 80030ba:	9104      	str	r1, [sp, #16]
 80030bc:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80030c0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80030c4:	930a      	str	r3, [sp, #40]	; 0x28
 80030c6:	4699      	mov	r9, r3
 80030c8:	930f      	str	r3, [sp, #60]	; 0x3c
 80030ca:	9314      	str	r3, [sp, #80]	; 0x50
 80030cc:	9311      	str	r3, [sp, #68]	; 0x44
 80030ce:	9109      	str	r1, [sp, #36]	; 0x24
 80030d0:	af3d      	add	r7, sp, #244	; 0xf4
 80030d2:	e4ce      	b.n	8002a72 <_vfprintf_r+0x322>
 80030d4:	2e65      	cmp	r6, #101	; 0x65
 80030d6:	f340 80ca 	ble.w	800326e <_vfprintf_r+0xb1e>
 80030da:	2200      	movs	r2, #0
 80030dc:	2300      	movs	r3, #0
 80030de:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80030e2:	f7fd ff91 	bl	8001008 <__aeabi_dcmpeq>
 80030e6:	2800      	cmp	r0, #0
 80030e8:	f000 8169 	beq.w	80033be <_vfprintf_r+0xc6e>
 80030ec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030ee:	4a22      	ldr	r2, [pc, #136]	; (8003178 <_vfprintf_r+0xa28>)
 80030f0:	f8cb 2000 	str.w	r2, [fp]
 80030f4:	3301      	adds	r3, #1
 80030f6:	3401      	adds	r4, #1
 80030f8:	2201      	movs	r2, #1
 80030fa:	2b07      	cmp	r3, #7
 80030fc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003100:	f8cb 2004 	str.w	r2, [fp, #4]
 8003104:	f300 8406 	bgt.w	8003914 <_vfprintf_r+0x11c4>
 8003108:	f10b 0b08 	add.w	fp, fp, #8
 800310c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800310e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003110:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003112:	4293      	cmp	r3, r2
 8003114:	db03      	blt.n	800311e <_vfprintf_r+0x9ce>
 8003116:	f018 0f01 	tst.w	r8, #1
 800311a:	f43f ad6a 	beq.w	8002bf2 <_vfprintf_r+0x4a2>
 800311e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003120:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003122:	f8cb 2000 	str.w	r2, [fp]
 8003126:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003128:	f8cb 2004 	str.w	r2, [fp, #4]
 800312c:	3301      	adds	r3, #1
 800312e:	4414      	add	r4, r2
 8003130:	2b07      	cmp	r3, #7
 8003132:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003136:	f300 8517 	bgt.w	8003b68 <_vfprintf_r+0x1418>
 800313a:	f10b 0b08 	add.w	fp, fp, #8
 800313e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003140:	1e5d      	subs	r5, r3, #1
 8003142:	2d00      	cmp	r5, #0
 8003144:	f77f ad55 	ble.w	8002bf2 <_vfprintf_r+0x4a2>
 8003148:	2d10      	cmp	r5, #16
 800314a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800314c:	4b0b      	ldr	r3, [pc, #44]	; (800317c <_vfprintf_r+0xa2c>)
 800314e:	f340 82e7 	ble.w	8003720 <_vfprintf_r+0xfd0>
 8003152:	4619      	mov	r1, r3
 8003154:	2610      	movs	r6, #16
 8003156:	4623      	mov	r3, r4
 8003158:	9f03      	ldr	r7, [sp, #12]
 800315a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800315e:	460c      	mov	r4, r1
 8003160:	e014      	b.n	800318c <_vfprintf_r+0xa3c>
 8003162:	bf00      	nop
 8003164:	7fefffff 	.word	0x7fefffff
 8003168:	08007450 	.word	0x08007450
 800316c:	0800744c 	.word	0x0800744c
 8003170:	08007470 	.word	0x08007470
 8003174:	0800745c 	.word	0x0800745c
 8003178:	0800748c 	.word	0x0800748c
 800317c:	080074a0 	.word	0x080074a0
 8003180:	f10b 0b08 	add.w	fp, fp, #8
 8003184:	3d10      	subs	r5, #16
 8003186:	2d10      	cmp	r5, #16
 8003188:	f340 82c7 	ble.w	800371a <_vfprintf_r+0xfca>
 800318c:	3201      	adds	r2, #1
 800318e:	3310      	adds	r3, #16
 8003190:	2a07      	cmp	r2, #7
 8003192:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003196:	e9cb 4600 	strd	r4, r6, [fp]
 800319a:	ddf1      	ble.n	8003180 <_vfprintf_r+0xa30>
 800319c:	aa2a      	add	r2, sp, #168	; 0xa8
 800319e:	4649      	mov	r1, r9
 80031a0:	4638      	mov	r0, r7
 80031a2:	f003 fe03 	bl	8006dac <__sprint_r>
 80031a6:	2800      	cmp	r0, #0
 80031a8:	d14c      	bne.n	8003244 <_vfprintf_r+0xaf4>
 80031aa:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80031ae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031b2:	e7e7      	b.n	8003184 <_vfprintf_r+0xa34>
 80031b4:	9b06      	ldr	r3, [sp, #24]
 80031b6:	9a04      	ldr	r2, [sp, #16]
 80031b8:	1a9d      	subs	r5, r3, r2
 80031ba:	2d00      	cmp	r5, #0
 80031bc:	f77f acc9 	ble.w	8002b52 <_vfprintf_r+0x402>
 80031c0:	2d10      	cmp	r5, #16
 80031c2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031c4:	4bbc      	ldr	r3, [pc, #752]	; (80034b8 <_vfprintf_r+0xd68>)
 80031c6:	dd27      	ble.n	8003218 <_vfprintf_r+0xac8>
 80031c8:	4659      	mov	r1, fp
 80031ca:	4620      	mov	r0, r4
 80031cc:	46bb      	mov	fp, r7
 80031ce:	461c      	mov	r4, r3
 80031d0:	4637      	mov	r7, r6
 80031d2:	9e07      	ldr	r6, [sp, #28]
 80031d4:	e004      	b.n	80031e0 <_vfprintf_r+0xa90>
 80031d6:	3d10      	subs	r5, #16
 80031d8:	2d10      	cmp	r5, #16
 80031da:	f101 0108 	add.w	r1, r1, #8
 80031de:	dd16      	ble.n	800320e <_vfprintf_r+0xabe>
 80031e0:	3201      	adds	r2, #1
 80031e2:	3010      	adds	r0, #16
 80031e4:	2310      	movs	r3, #16
 80031e6:	2a07      	cmp	r2, #7
 80031e8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80031ec:	600c      	str	r4, [r1, #0]
 80031ee:	604b      	str	r3, [r1, #4]
 80031f0:	ddf1      	ble.n	80031d6 <_vfprintf_r+0xa86>
 80031f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80031f4:	4631      	mov	r1, r6
 80031f6:	9803      	ldr	r0, [sp, #12]
 80031f8:	f003 fdd8 	bl	8006dac <__sprint_r>
 80031fc:	2800      	cmp	r0, #0
 80031fe:	f040 80a8 	bne.w	8003352 <_vfprintf_r+0xc02>
 8003202:	3d10      	subs	r5, #16
 8003204:	2d10      	cmp	r5, #16
 8003206:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800320a:	a92d      	add	r1, sp, #180	; 0xb4
 800320c:	dce8      	bgt.n	80031e0 <_vfprintf_r+0xa90>
 800320e:	463e      	mov	r6, r7
 8003210:	4623      	mov	r3, r4
 8003212:	465f      	mov	r7, fp
 8003214:	4604      	mov	r4, r0
 8003216:	468b      	mov	fp, r1
 8003218:	3201      	adds	r2, #1
 800321a:	442c      	add	r4, r5
 800321c:	2a07      	cmp	r2, #7
 800321e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003222:	e9cb 3500 	strd	r3, r5, [fp]
 8003226:	f300 8292 	bgt.w	800374e <_vfprintf_r+0xffe>
 800322a:	f10b 0b08 	add.w	fp, fp, #8
 800322e:	e490      	b.n	8002b52 <_vfprintf_r+0x402>
 8003230:	aa2a      	add	r2, sp, #168	; 0xa8
 8003232:	9907      	ldr	r1, [sp, #28]
 8003234:	9803      	ldr	r0, [sp, #12]
 8003236:	f003 fdb9 	bl	8006dac <__sprint_r>
 800323a:	2800      	cmp	r0, #0
 800323c:	f43f ad23 	beq.w	8002c86 <_vfprintf_r+0x536>
 8003240:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003244:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003246:	b111      	cbz	r1, 800324e <_vfprintf_r+0xafe>
 8003248:	9803      	ldr	r0, [sp, #12]
 800324a:	f002 f9c1 	bl	80055d0 <_free_r>
 800324e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003252:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003256:	07d0      	lsls	r0, r2, #31
 8003258:	d402      	bmi.n	8003260 <_vfprintf_r+0xb10>
 800325a:	0599      	lsls	r1, r3, #22
 800325c:	f140 81d0 	bpl.w	8003600 <_vfprintf_r+0xeb0>
 8003260:	065a      	lsls	r2, r3, #25
 8003262:	f53f ab65 	bmi.w	8002930 <_vfprintf_r+0x1e0>
 8003266:	9805      	ldr	r0, [sp, #20]
 8003268:	b057      	add	sp, #348	; 0x15c
 800326a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800326e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003270:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003272:	2a01      	cmp	r2, #1
 8003274:	f104 0401 	add.w	r4, r4, #1
 8003278:	f103 0501 	add.w	r5, r3, #1
 800327c:	f10b 0608 	add.w	r6, fp, #8
 8003280:	f340 811c 	ble.w	80034bc <_vfprintf_r+0xd6c>
 8003284:	2301      	movs	r3, #1
 8003286:	2d07      	cmp	r5, #7
 8003288:	f8cb 7000 	str.w	r7, [fp]
 800328c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003290:	f8cb 3004 	str.w	r3, [fp, #4]
 8003294:	f300 81bb 	bgt.w	800360e <_vfprintf_r+0xebe>
 8003298:	9b15      	ldr	r3, [sp, #84]	; 0x54
 800329a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800329c:	1c69      	adds	r1, r5, #1
 800329e:	441c      	add	r4, r3
 80032a0:	2907      	cmp	r1, #7
 80032a2:	910b      	str	r1, [sp, #44]	; 0x2c
 80032a4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80032a8:	e9c6 2300 	strd	r2, r3, [r6]
 80032ac:	f300 81bb 	bgt.w	8003626 <_vfprintf_r+0xed6>
 80032b0:	3608      	adds	r6, #8
 80032b2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80032b4:	1c53      	adds	r3, r2, #1
 80032b6:	461d      	mov	r5, r3
 80032b8:	9509      	str	r5, [sp, #36]	; 0x24
 80032ba:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80032bc:	930e      	str	r3, [sp, #56]	; 0x38
 80032be:	2200      	movs	r2, #0
 80032c0:	2300      	movs	r3, #0
 80032c2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032c6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80032ca:	f106 0b08 	add.w	fp, r6, #8
 80032ce:	f7fd fe9b 	bl	8001008 <__aeabi_dcmpeq>
 80032d2:	2800      	cmp	r0, #0
 80032d4:	f040 80c2 	bne.w	800345c <_vfprintf_r+0xd0c>
 80032d8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80032da:	f8c6 9004 	str.w	r9, [r6, #4]
 80032de:	3701      	adds	r7, #1
 80032e0:	444c      	add	r4, r9
 80032e2:	2d07      	cmp	r5, #7
 80032e4:	6037      	str	r7, [r6, #0]
 80032e6:	942c      	str	r4, [sp, #176]	; 0xb0
 80032e8:	952b      	str	r5, [sp, #172]	; 0xac
 80032ea:	f300 80f9 	bgt.w	80034e0 <_vfprintf_r+0xd90>
 80032ee:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80032f0:	f106 0310 	add.w	r3, r6, #16
 80032f4:	3202      	adds	r2, #2
 80032f6:	465e      	mov	r6, fp
 80032f8:	9209      	str	r2, [sp, #36]	; 0x24
 80032fa:	469b      	mov	fp, r3
 80032fc:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80032fe:	6072      	str	r2, [r6, #4]
 8003300:	4414      	add	r4, r2
 8003302:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003304:	942c      	str	r4, [sp, #176]	; 0xb0
 8003306:	ab26      	add	r3, sp, #152	; 0x98
 8003308:	2a07      	cmp	r2, #7
 800330a:	922b      	str	r2, [sp, #172]	; 0xac
 800330c:	6033      	str	r3, [r6, #0]
 800330e:	f77f ac70 	ble.w	8002bf2 <_vfprintf_r+0x4a2>
 8003312:	aa2a      	add	r2, sp, #168	; 0xa8
 8003314:	9907      	ldr	r1, [sp, #28]
 8003316:	9803      	ldr	r0, [sp, #12]
 8003318:	f003 fd48 	bl	8006dac <__sprint_r>
 800331c:	2800      	cmp	r0, #0
 800331e:	d18f      	bne.n	8003240 <_vfprintf_r+0xaf0>
 8003320:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003322:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003326:	e464      	b.n	8002bf2 <_vfprintf_r+0x4a2>
 8003328:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800332a:	af56      	add	r7, sp, #344	; 0x158
 800332c:	0923      	lsrs	r3, r4, #4
 800332e:	f004 010f 	and.w	r1, r4, #15
 8003332:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003336:	092a      	lsrs	r2, r5, #4
 8003338:	461c      	mov	r4, r3
 800333a:	4615      	mov	r5, r2
 800333c:	5c43      	ldrb	r3, [r0, r1]
 800333e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003342:	ea54 0305 	orrs.w	r3, r4, r5
 8003346:	d1f1      	bne.n	800332c <_vfprintf_r+0xbdc>
 8003348:	9b04      	ldr	r3, [sp, #16]
 800334a:	1bdb      	subs	r3, r3, r7
 800334c:	9309      	str	r3, [sp, #36]	; 0x24
 800334e:	f7ff bb80 	b.w	8002a52 <_vfprintf_r+0x302>
 8003352:	46b1      	mov	r9, r6
 8003354:	e776      	b.n	8003244 <_vfprintf_r+0xaf4>
 8003356:	aa2a      	add	r2, sp, #168	; 0xa8
 8003358:	9907      	ldr	r1, [sp, #28]
 800335a:	9803      	ldr	r0, [sp, #12]
 800335c:	f003 fd26 	bl	8006dac <__sprint_r>
 8003360:	2800      	cmp	r0, #0
 8003362:	f47f af6d 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003366:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003368:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800336c:	f7ff bbdd 	b.w	8002b2a <_vfprintf_r+0x3da>
 8003370:	aa2a      	add	r2, sp, #168	; 0xa8
 8003372:	9907      	ldr	r1, [sp, #28]
 8003374:	9803      	ldr	r0, [sp, #12]
 8003376:	f003 fd19 	bl	8006dac <__sprint_r>
 800337a:	2800      	cmp	r0, #0
 800337c:	f47f af60 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003380:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003382:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003386:	f7ff bbe0 	b.w	8002b4a <_vfprintf_r+0x3fa>
 800338a:	4698      	mov	r8, r3
 800338c:	2d00      	cmp	r5, #0
 800338e:	bf08      	it	eq
 8003390:	2c0a      	cmpeq	r4, #10
 8003392:	f080 8170 	bcs.w	8003676 <_vfprintf_r+0xf26>
 8003396:	af56      	add	r7, sp, #344	; 0x158
 8003398:	3430      	adds	r4, #48	; 0x30
 800339a:	2301      	movs	r3, #1
 800339c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80033a0:	9309      	str	r3, [sp, #36]	; 0x24
 80033a2:	f7ff bb56 	b.w	8002a52 <_vfprintf_r+0x302>
 80033a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80033a8:	9907      	ldr	r1, [sp, #28]
 80033aa:	9803      	ldr	r0, [sp, #12]
 80033ac:	f003 fcfe 	bl	8006dac <__sprint_r>
 80033b0:	2800      	cmp	r0, #0
 80033b2:	f47f af45 	bne.w	8003240 <_vfprintf_r+0xaf0>
 80033b6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033bc:	e406      	b.n	8002bcc <_vfprintf_r+0x47c>
 80033be:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80033c0:	2b00      	cmp	r3, #0
 80033c2:	f340 8273 	ble.w	80038ac <_vfprintf_r+0x115c>
 80033c6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80033ca:	4293      	cmp	r3, r2
 80033cc:	bfa8      	it	ge
 80033ce:	4613      	movge	r3, r2
 80033d0:	2b00      	cmp	r3, #0
 80033d2:	461d      	mov	r5, r3
 80033d4:	dd0d      	ble.n	80033f2 <_vfprintf_r+0xca2>
 80033d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033d8:	f8cb 7000 	str.w	r7, [fp]
 80033dc:	3301      	adds	r3, #1
 80033de:	442c      	add	r4, r5
 80033e0:	2b07      	cmp	r3, #7
 80033e2:	942c      	str	r4, [sp, #176]	; 0xb0
 80033e4:	f8cb 5004 	str.w	r5, [fp, #4]
 80033e8:	932b      	str	r3, [sp, #172]	; 0xac
 80033ea:	f300 82c1 	bgt.w	8003970 <_vfprintf_r+0x1220>
 80033ee:	f10b 0b08 	add.w	fp, fp, #8
 80033f2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80033f4:	2d00      	cmp	r5, #0
 80033f6:	bfa8      	it	ge
 80033f8:	1b5b      	subge	r3, r3, r5
 80033fa:	2b00      	cmp	r3, #0
 80033fc:	461d      	mov	r5, r3
 80033fe:	f340 8099 	ble.w	8003534 <_vfprintf_r+0xde4>
 8003402:	2d10      	cmp	r5, #16
 8003404:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003406:	4b2c      	ldr	r3, [pc, #176]	; (80034b8 <_vfprintf_r+0xd68>)
 8003408:	f340 83db 	ble.w	8003bc2 <_vfprintf_r+0x1472>
 800340c:	4618      	mov	r0, r3
 800340e:	4621      	mov	r1, r4
 8003410:	465b      	mov	r3, fp
 8003412:	2610      	movs	r6, #16
 8003414:	46bb      	mov	fp, r7
 8003416:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800341a:	9c07      	ldr	r4, [sp, #28]
 800341c:	4607      	mov	r7, r0
 800341e:	e004      	b.n	800342a <_vfprintf_r+0xcda>
 8003420:	3308      	adds	r3, #8
 8003422:	3d10      	subs	r5, #16
 8003424:	2d10      	cmp	r5, #16
 8003426:	f340 83c7 	ble.w	8003bb8 <_vfprintf_r+0x1468>
 800342a:	3201      	adds	r2, #1
 800342c:	3110      	adds	r1, #16
 800342e:	2a07      	cmp	r2, #7
 8003430:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003434:	e9c3 7600 	strd	r7, r6, [r3]
 8003438:	ddf2      	ble.n	8003420 <_vfprintf_r+0xcd0>
 800343a:	aa2a      	add	r2, sp, #168	; 0xa8
 800343c:	4621      	mov	r1, r4
 800343e:	4648      	mov	r0, r9
 8003440:	f003 fcb4 	bl	8006dac <__sprint_r>
 8003444:	2800      	cmp	r0, #0
 8003446:	f040 84a5 	bne.w	8003d94 <_vfprintf_r+0x1644>
 800344a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800344e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003450:	e7e7      	b.n	8003422 <_vfprintf_r+0xcd2>
 8003452:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003456:	af56      	add	r7, sp, #344	; 0x158
 8003458:	f7ff bafb 	b.w	8002a52 <_vfprintf_r+0x302>
 800345c:	f1b9 0f00 	cmp.w	r9, #0
 8003460:	f77f af4c 	ble.w	80032fc <_vfprintf_r+0xbac>
 8003464:	f1b9 0f10 	cmp.w	r9, #16
 8003468:	4b13      	ldr	r3, [pc, #76]	; (80034b8 <_vfprintf_r+0xd68>)
 800346a:	f340 8659 	ble.w	8004120 <_vfprintf_r+0x19d0>
 800346e:	4619      	mov	r1, r3
 8003470:	4622      	mov	r2, r4
 8003472:	4633      	mov	r3, r6
 8003474:	2710      	movs	r7, #16
 8003476:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800347a:	9c07      	ldr	r4, [sp, #28]
 800347c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800347e:	460e      	mov	r6, r1
 8003480:	e007      	b.n	8003492 <_vfprintf_r+0xd42>
 8003482:	3308      	adds	r3, #8
 8003484:	f1a9 0910 	sub.w	r9, r9, #16
 8003488:	f1b9 0f10 	cmp.w	r9, #16
 800348c:	f340 8353 	ble.w	8003b36 <_vfprintf_r+0x13e6>
 8003490:	3501      	adds	r5, #1
 8003492:	3210      	adds	r2, #16
 8003494:	2d07      	cmp	r5, #7
 8003496:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800349a:	e9c3 6700 	strd	r6, r7, [r3]
 800349e:	ddf0      	ble.n	8003482 <_vfprintf_r+0xd32>
 80034a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80034a2:	4621      	mov	r1, r4
 80034a4:	4658      	mov	r0, fp
 80034a6:	f003 fc81 	bl	8006dac <__sprint_r>
 80034aa:	2800      	cmp	r0, #0
 80034ac:	f040 8472 	bne.w	8003d94 <_vfprintf_r+0x1644>
 80034b0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80034b4:	ab2d      	add	r3, sp, #180	; 0xb4
 80034b6:	e7e5      	b.n	8003484 <_vfprintf_r+0xd34>
 80034b8:	080074a0 	.word	0x080074a0
 80034bc:	f018 0f01 	tst.w	r8, #1
 80034c0:	f47f aee0 	bne.w	8003284 <_vfprintf_r+0xb34>
 80034c4:	2201      	movs	r2, #1
 80034c6:	2d07      	cmp	r5, #7
 80034c8:	f8cb 7000 	str.w	r7, [fp]
 80034cc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80034d0:	f8cb 2004 	str.w	r2, [fp, #4]
 80034d4:	dc04      	bgt.n	80034e0 <_vfprintf_r+0xd90>
 80034d6:	3302      	adds	r3, #2
 80034d8:	9309      	str	r3, [sp, #36]	; 0x24
 80034da:	f10b 0b10 	add.w	fp, fp, #16
 80034de:	e70d      	b.n	80032fc <_vfprintf_r+0xbac>
 80034e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80034e2:	9907      	ldr	r1, [sp, #28]
 80034e4:	9803      	ldr	r0, [sp, #12]
 80034e6:	f003 fc61 	bl	8006dac <__sprint_r>
 80034ea:	2800      	cmp	r0, #0
 80034ec:	f47f aea8 	bne.w	8003240 <_vfprintf_r+0xaf0>
 80034f0:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80034f4:	3301      	adds	r3, #1
 80034f6:	9309      	str	r3, [sp, #36]	; 0x24
 80034f8:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80034fc:	ae2d      	add	r6, sp, #180	; 0xb4
 80034fe:	e6fd      	b.n	80032fc <_vfprintf_r+0xbac>
 8003500:	aa2a      	add	r2, sp, #168	; 0xa8
 8003502:	9907      	ldr	r1, [sp, #28]
 8003504:	9803      	ldr	r0, [sp, #12]
 8003506:	f003 fc51 	bl	8006dac <__sprint_r>
 800350a:	2800      	cmp	r0, #0
 800350c:	f47f ae98 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003510:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003514:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003516:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800351a:	f7ff baf6 	b.w	8002b0a <_vfprintf_r+0x3ba>
 800351e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003520:	9907      	ldr	r1, [sp, #28]
 8003522:	9803      	ldr	r0, [sp, #12]
 8003524:	f003 fc42 	bl	8006dac <__sprint_r>
 8003528:	2800      	cmp	r0, #0
 800352a:	f47f ae89 	bne.w	8003240 <_vfprintf_r+0xaf0>
 800352e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003530:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003534:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003536:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800353a:	443b      	add	r3, r7
 800353c:	4699      	mov	r9, r3
 800353e:	f040 8357 	bne.w	8003bf0 <_vfprintf_r+0x14a0>
 8003542:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003544:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003546:	4293      	cmp	r3, r2
 8003548:	db49      	blt.n	80035de <_vfprintf_r+0xe8e>
 800354a:	f018 0f01 	tst.w	r8, #1
 800354e:	d146      	bne.n	80035de <_vfprintf_r+0xe8e>
 8003550:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003552:	18bd      	adds	r5, r7, r2
 8003554:	eba5 0509 	sub.w	r5, r5, r9
 8003558:	1ad3      	subs	r3, r2, r3
 800355a:	429d      	cmp	r5, r3
 800355c:	bfa8      	it	ge
 800355e:	461d      	movge	r5, r3
 8003560:	2d00      	cmp	r5, #0
 8003562:	dd0d      	ble.n	8003580 <_vfprintf_r+0xe30>
 8003564:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003566:	f8cb 9000 	str.w	r9, [fp]
 800356a:	3201      	adds	r2, #1
 800356c:	442c      	add	r4, r5
 800356e:	2a07      	cmp	r2, #7
 8003570:	942c      	str	r4, [sp, #176]	; 0xb0
 8003572:	f8cb 5004 	str.w	r5, [fp, #4]
 8003576:	922b      	str	r2, [sp, #172]	; 0xac
 8003578:	f300 8462 	bgt.w	8003e40 <_vfprintf_r+0x16f0>
 800357c:	f10b 0b08 	add.w	fp, fp, #8
 8003580:	2d00      	cmp	r5, #0
 8003582:	bfac      	ite	ge
 8003584:	1b5d      	subge	r5, r3, r5
 8003586:	461d      	movlt	r5, r3
 8003588:	2d00      	cmp	r5, #0
 800358a:	f77f ab32 	ble.w	8002bf2 <_vfprintf_r+0x4a2>
 800358e:	2d10      	cmp	r5, #16
 8003590:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003592:	4bc5      	ldr	r3, [pc, #788]	; (80038a8 <_vfprintf_r+0x1158>)
 8003594:	f340 80c4 	ble.w	8003720 <_vfprintf_r+0xfd0>
 8003598:	4619      	mov	r1, r3
 800359a:	2610      	movs	r6, #16
 800359c:	4623      	mov	r3, r4
 800359e:	9f03      	ldr	r7, [sp, #12]
 80035a0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80035a4:	460c      	mov	r4, r1
 80035a6:	e005      	b.n	80035b4 <_vfprintf_r+0xe64>
 80035a8:	f10b 0b08 	add.w	fp, fp, #8
 80035ac:	3d10      	subs	r5, #16
 80035ae:	2d10      	cmp	r5, #16
 80035b0:	f340 80b3 	ble.w	800371a <_vfprintf_r+0xfca>
 80035b4:	3201      	adds	r2, #1
 80035b6:	3310      	adds	r3, #16
 80035b8:	2a07      	cmp	r2, #7
 80035ba:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80035be:	e9cb 4600 	strd	r4, r6, [fp]
 80035c2:	ddf1      	ble.n	80035a8 <_vfprintf_r+0xe58>
 80035c4:	aa2a      	add	r2, sp, #168	; 0xa8
 80035c6:	4649      	mov	r1, r9
 80035c8:	4638      	mov	r0, r7
 80035ca:	f003 fbef 	bl	8006dac <__sprint_r>
 80035ce:	2800      	cmp	r0, #0
 80035d0:	f47f ae38 	bne.w	8003244 <_vfprintf_r+0xaf4>
 80035d4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80035d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035dc:	e7e6      	b.n	80035ac <_vfprintf_r+0xe5c>
 80035de:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035e0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80035e2:	f8cb 1000 	str.w	r1, [fp]
 80035e6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80035e8:	f8cb 1004 	str.w	r1, [fp, #4]
 80035ec:	3201      	adds	r2, #1
 80035ee:	440c      	add	r4, r1
 80035f0:	2a07      	cmp	r2, #7
 80035f2:	942c      	str	r4, [sp, #176]	; 0xb0
 80035f4:	922b      	str	r2, [sp, #172]	; 0xac
 80035f6:	f300 828c 	bgt.w	8003b12 <_vfprintf_r+0x13c2>
 80035fa:	f10b 0b08 	add.w	fp, fp, #8
 80035fe:	e7a7      	b.n	8003550 <_vfprintf_r+0xe00>
 8003600:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003604:	f002 fa94 	bl	8005b30 <__retarget_lock_release_recursive>
 8003608:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800360c:	e628      	b.n	8003260 <_vfprintf_r+0xb10>
 800360e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003610:	9907      	ldr	r1, [sp, #28]
 8003612:	9803      	ldr	r0, [sp, #12]
 8003614:	f003 fbca 	bl	8006dac <__sprint_r>
 8003618:	2800      	cmp	r0, #0
 800361a:	f47f ae11 	bne.w	8003240 <_vfprintf_r+0xaf0>
 800361e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003622:	ae2d      	add	r6, sp, #180	; 0xb4
 8003624:	e638      	b.n	8003298 <_vfprintf_r+0xb48>
 8003626:	aa2a      	add	r2, sp, #168	; 0xa8
 8003628:	9907      	ldr	r1, [sp, #28]
 800362a:	9803      	ldr	r0, [sp, #12]
 800362c:	f003 fbbe 	bl	8006dac <__sprint_r>
 8003630:	2800      	cmp	r0, #0
 8003632:	f47f ae05 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003636:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800363a:	ae2d      	add	r6, sp, #180	; 0xb4
 800363c:	930b      	str	r3, [sp, #44]	; 0x2c
 800363e:	e638      	b.n	80032b2 <_vfprintf_r+0xb62>
 8003640:	6814      	ldr	r4, [r2, #0]
 8003642:	9308      	str	r3, [sp, #32]
 8003644:	2500      	movs	r5, #0
 8003646:	f7ff bb95 	b.w	8002d74 <_vfprintf_r+0x624>
 800364a:	6814      	ldr	r4, [r2, #0]
 800364c:	9308      	str	r3, [sp, #32]
 800364e:	2500      	movs	r5, #0
 8003650:	f7ff b9ae 	b.w	80029b0 <_vfprintf_r+0x260>
 8003654:	680c      	ldr	r4, [r1, #0]
 8003656:	9208      	str	r2, [sp, #32]
 8003658:	17e5      	asrs	r5, r4, #31
 800365a:	4620      	mov	r0, r4
 800365c:	4629      	mov	r1, r5
 800365e:	f7ff b9d2 	b.w	8002a06 <_vfprintf_r+0x2b6>
 8003662:	6814      	ldr	r4, [r2, #0]
 8003664:	9108      	str	r1, [sp, #32]
 8003666:	2201      	movs	r2, #1
 8003668:	2500      	movs	r5, #0
 800366a:	f7ff bb32 	b.w	8002cd2 <_vfprintf_r+0x582>
 800366e:	2a01      	cmp	r2, #1
 8003670:	f47f ab3c 	bne.w	8002cec <_vfprintf_r+0x59c>
 8003674:	e68f      	b.n	8003396 <_vfprintf_r+0xc46>
 8003676:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800367a:	2200      	movs	r2, #0
 800367c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003680:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003684:	af56      	add	r7, sp, #344	; 0x158
 8003686:	4692      	mov	sl, r2
 8003688:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800368c:	461e      	mov	r6, r3
 800368e:	e00a      	b.n	80036a6 <_vfprintf_r+0xf56>
 8003690:	2300      	movs	r3, #0
 8003692:	4620      	mov	r0, r4
 8003694:	4629      	mov	r1, r5
 8003696:	220a      	movs	r2, #10
 8003698:	f7fc fdb2 	bl	8000200 <__aeabi_uldivmod>
 800369c:	4604      	mov	r4, r0
 800369e:	460d      	mov	r5, r1
 80036a0:	ea54 0305 	orrs.w	r3, r4, r5
 80036a4:	d029      	beq.n	80036fa <_vfprintf_r+0xfaa>
 80036a6:	220a      	movs	r2, #10
 80036a8:	2300      	movs	r3, #0
 80036aa:	4620      	mov	r0, r4
 80036ac:	4629      	mov	r1, r5
 80036ae:	f7fc fda7 	bl	8000200 <__aeabi_uldivmod>
 80036b2:	3230      	adds	r2, #48	; 0x30
 80036b4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80036b8:	f10a 0a01 	add.w	sl, sl, #1
 80036bc:	3f01      	subs	r7, #1
 80036be:	2e00      	cmp	r6, #0
 80036c0:	d0e6      	beq.n	8003690 <_vfprintf_r+0xf40>
 80036c2:	f898 3000 	ldrb.w	r3, [r8]
 80036c6:	459a      	cmp	sl, r3
 80036c8:	d1e2      	bne.n	8003690 <_vfprintf_r+0xf40>
 80036ca:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80036ce:	d0df      	beq.n	8003690 <_vfprintf_r+0xf40>
 80036d0:	2d00      	cmp	r5, #0
 80036d2:	bf08      	it	eq
 80036d4:	2c0a      	cmpeq	r4, #10
 80036d6:	d3db      	bcc.n	8003690 <_vfprintf_r+0xf40>
 80036d8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80036da:	9918      	ldr	r1, [sp, #96]	; 0x60
 80036dc:	1aff      	subs	r7, r7, r3
 80036de:	461a      	mov	r2, r3
 80036e0:	4638      	mov	r0, r7
 80036e2:	f003 faf5 	bl	8006cd0 <strncpy>
 80036e6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80036ea:	2b00      	cmp	r3, #0
 80036ec:	f000 8496 	beq.w	800401c <_vfprintf_r+0x18cc>
 80036f0:	f108 0801 	add.w	r8, r8, #1
 80036f4:	f04f 0a00 	mov.w	sl, #0
 80036f8:	e7ca      	b.n	8003690 <_vfprintf_r+0xf40>
 80036fa:	9b04      	ldr	r3, [sp, #16]
 80036fc:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003700:	1bdb      	subs	r3, r3, r7
 8003702:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003706:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003708:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800370c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003710:	9309      	str	r3, [sp, #36]	; 0x24
 8003712:	f7ff b99e 	b.w	8002a52 <_vfprintf_r+0x302>
 8003716:	46c1      	mov	r9, r8
 8003718:	e594      	b.n	8003244 <_vfprintf_r+0xaf4>
 800371a:	4621      	mov	r1, r4
 800371c:	461c      	mov	r4, r3
 800371e:	460b      	mov	r3, r1
 8003720:	3201      	adds	r2, #1
 8003722:	442c      	add	r4, r5
 8003724:	2a07      	cmp	r2, #7
 8003726:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800372a:	e9cb 3500 	strd	r3, r5, [fp]
 800372e:	f77f aa5e 	ble.w	8002bee <_vfprintf_r+0x49e>
 8003732:	e5ee      	b.n	8003312 <_vfprintf_r+0xbc2>
 8003734:	f018 0f10 	tst.w	r8, #16
 8003738:	f040 80f8 	bne.w	800392c <_vfprintf_r+0x11dc>
 800373c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003740:	f000 8351 	beq.w	8003de6 <_vfprintf_r+0x1696>
 8003744:	9a05      	ldr	r2, [sp, #20]
 8003746:	801a      	strh	r2, [r3, #0]
 8003748:	4657      	mov	r7, sl
 800374a:	f7ff baa7 	b.w	8002c9c <_vfprintf_r+0x54c>
 800374e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003750:	9907      	ldr	r1, [sp, #28]
 8003752:	9803      	ldr	r0, [sp, #12]
 8003754:	f003 fb2a 	bl	8006dac <__sprint_r>
 8003758:	2800      	cmp	r0, #0
 800375a:	f47f ad71 	bne.w	8003240 <_vfprintf_r+0xaf0>
 800375e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003760:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003764:	f7ff b9f5 	b.w	8002b52 <_vfprintf_r+0x402>
 8003768:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800376c:	4602      	mov	r2, r0
 800376e:	460b      	mov	r3, r1
 8003770:	f7fd fc7c 	bl	800106c <__aeabi_dcmpun>
 8003774:	2800      	cmp	r0, #0
 8003776:	f040 8491 	bne.w	800409c <_vfprintf_r+0x194c>
 800377a:	2e61      	cmp	r6, #97	; 0x61
 800377c:	f000 8111 	beq.w	80039a2 <_vfprintf_r+0x1252>
 8003780:	2e41      	cmp	r6, #65	; 0x41
 8003782:	f000 8377 	beq.w	8003e74 <_vfprintf_r+0x1724>
 8003786:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800378a:	f026 0220 	bic.w	r2, r6, #32
 800378e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003792:	930e      	str	r3, [sp, #56]	; 0x38
 8003794:	9204      	str	r2, [sp, #16]
 8003796:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003798:	f000 842d 	beq.w	8003ff6 <_vfprintf_r+0x18a6>
 800379c:	2a47      	cmp	r2, #71	; 0x47
 800379e:	f000 8424 	beq.w	8003fea <_vfprintf_r+0x189a>
 80037a2:	2b00      	cmp	r3, #0
 80037a4:	f2c0 82f9 	blt.w	8003d9a <_vfprintf_r+0x164a>
 80037a8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80037ac:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80037b0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80037b4:	2e66      	cmp	r6, #102	; 0x66
 80037b6:	f000 83eb 	beq.w	8003f90 <_vfprintf_r+0x1840>
 80037ba:	2e46      	cmp	r6, #70	; 0x46
 80037bc:	f000 847e 	beq.w	80040bc <_vfprintf_r+0x196c>
 80037c0:	9b04      	ldr	r3, [sp, #16]
 80037c2:	9803      	ldr	r0, [sp, #12]
 80037c4:	2b45      	cmp	r3, #69	; 0x45
 80037c6:	bf0c      	ite	eq
 80037c8:	f109 0501 	addeq.w	r5, r9, #1
 80037cc:	464d      	movne	r5, r9
 80037ce:	aa28      	add	r2, sp, #160	; 0xa0
 80037d0:	ab25      	add	r3, sp, #148	; 0x94
 80037d2:	e9cd 3200 	strd	r3, r2, [sp]
 80037d6:	2102      	movs	r1, #2
 80037d8:	ab24      	add	r3, sp, #144	; 0x90
 80037da:	462a      	mov	r2, r5
 80037dc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80037e0:	f000 fe3e 	bl	8004460 <_dtoa_r>
 80037e4:	2e67      	cmp	r6, #103	; 0x67
 80037e6:	4607      	mov	r7, r0
 80037e8:	f040 849c 	bne.w	8004124 <_vfprintf_r+0x19d4>
 80037ec:	f018 0f01 	tst.w	r8, #1
 80037f0:	f040 83f9 	bne.w	8003fe6 <_vfprintf_r+0x1896>
 80037f4:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80037f6:	4640      	mov	r0, r8
 80037f8:	1bdb      	subs	r3, r3, r7
 80037fa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80037fe:	9310      	str	r3, [sp, #64]	; 0x40
 8003800:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003802:	9311      	str	r3, [sp, #68]	; 0x44
 8003804:	9b04      	ldr	r3, [sp, #16]
 8003806:	2b47      	cmp	r3, #71	; 0x47
 8003808:	f000 81e7 	beq.w	8003bda <_vfprintf_r+0x148a>
 800380c:	9b04      	ldr	r3, [sp, #16]
 800380e:	2b46      	cmp	r3, #70	; 0x46
 8003810:	f000 8300 	beq.w	8003e14 <_vfprintf_r+0x16c4>
 8003814:	9904      	ldr	r1, [sp, #16]
 8003816:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003818:	b2f2      	uxtb	r2, r6
 800381a:	2941      	cmp	r1, #65	; 0x41
 800381c:	bf08      	it	eq
 800381e:	320f      	addeq	r2, #15
 8003820:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003824:	bf06      	itte	eq
 8003826:	b2d2      	uxtbeq	r2, r2
 8003828:	2101      	moveq	r1, #1
 800382a:	2100      	movne	r1, #0
 800382c:	2b00      	cmp	r3, #0
 800382e:	9324      	str	r3, [sp, #144]	; 0x90
 8003830:	bfb8      	it	lt
 8003832:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003834:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003838:	bfba      	itte	lt
 800383a:	f1c3 0301 	rsblt	r3, r3, #1
 800383e:	222d      	movlt	r2, #45	; 0x2d
 8003840:	222b      	movge	r2, #43	; 0x2b
 8003842:	2b09      	cmp	r3, #9
 8003844:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003848:	f300 83f9 	bgt.w	800403e <_vfprintf_r+0x18ee>
 800384c:	2900      	cmp	r1, #0
 800384e:	f040 8487 	bne.w	8004160 <_vfprintf_r+0x1a10>
 8003852:	2230      	movs	r2, #48	; 0x30
 8003854:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003858:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800385c:	3330      	adds	r3, #48	; 0x30
 800385e:	7013      	strb	r3, [r2, #0]
 8003860:	1c53      	adds	r3, r2, #1
 8003862:	aa26      	add	r2, sp, #152	; 0x98
 8003864:	1a9b      	subs	r3, r3, r2
 8003866:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003868:	9319      	str	r3, [sp, #100]	; 0x64
 800386a:	2a01      	cmp	r2, #1
 800386c:	4413      	add	r3, r2
 800386e:	9309      	str	r3, [sp, #36]	; 0x24
 8003870:	f340 8442 	ble.w	80040f8 <_vfprintf_r+0x19a8>
 8003874:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003876:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003878:	4413      	add	r3, r2
 800387a:	9309      	str	r3, [sp, #36]	; 0x24
 800387c:	2300      	movs	r3, #0
 800387e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003880:	9314      	str	r3, [sp, #80]	; 0x50
 8003882:	9311      	str	r3, [sp, #68]	; 0x44
 8003884:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003886:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800388a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800388e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003892:	9304      	str	r3, [sp, #16]
 8003894:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003896:	2b00      	cmp	r3, #0
 8003898:	f040 8275 	bne.w	8003d86 <_vfprintf_r+0x1636>
 800389c:	4699      	mov	r9, r3
 800389e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80038a2:	f7ff b8e2 	b.w	8002a6a <_vfprintf_r+0x31a>
 80038a6:	bf00      	nop
 80038a8:	080074a0 	.word	0x080074a0
 80038ac:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038ae:	49bd      	ldr	r1, [pc, #756]	; (8003ba4 <_vfprintf_r+0x1454>)
 80038b0:	f8cb 1000 	str.w	r1, [fp]
 80038b4:	3201      	adds	r2, #1
 80038b6:	3401      	adds	r4, #1
 80038b8:	2101      	movs	r1, #1
 80038ba:	2a07      	cmp	r2, #7
 80038bc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038c0:	f8cb 1004 	str.w	r1, [fp, #4]
 80038c4:	dc60      	bgt.n	8003988 <_vfprintf_r+0x1238>
 80038c6:	f10b 0b08 	add.w	fp, fp, #8
 80038ca:	b92b      	cbnz	r3, 80038d8 <_vfprintf_r+0x1188>
 80038cc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80038ce:	b91a      	cbnz	r2, 80038d8 <_vfprintf_r+0x1188>
 80038d0:	f018 0f01 	tst.w	r8, #1
 80038d4:	f43f a98d 	beq.w	8002bf2 <_vfprintf_r+0x4a2>
 80038d8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038da:	9916      	ldr	r1, [sp, #88]	; 0x58
 80038dc:	f8cb 1000 	str.w	r1, [fp]
 80038e0:	9915      	ldr	r1, [sp, #84]	; 0x54
 80038e2:	f8cb 1004 	str.w	r1, [fp, #4]
 80038e6:	3201      	adds	r2, #1
 80038e8:	440c      	add	r4, r1
 80038ea:	2a07      	cmp	r2, #7
 80038ec:	942c      	str	r4, [sp, #176]	; 0xb0
 80038ee:	922b      	str	r2, [sp, #172]	; 0xac
 80038f0:	f300 8282 	bgt.w	8003df8 <_vfprintf_r+0x16a8>
 80038f4:	f10b 0b08 	add.w	fp, fp, #8
 80038f8:	2b00      	cmp	r3, #0
 80038fa:	f2c0 82e7 	blt.w	8003ecc <_vfprintf_r+0x177c>
 80038fe:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003900:	3201      	adds	r2, #1
 8003902:	441c      	add	r4, r3
 8003904:	2a07      	cmp	r2, #7
 8003906:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800390a:	e9cb 7300 	strd	r7, r3, [fp]
 800390e:	f77f a96e 	ble.w	8002bee <_vfprintf_r+0x49e>
 8003912:	e4fe      	b.n	8003312 <_vfprintf_r+0xbc2>
 8003914:	aa2a      	add	r2, sp, #168	; 0xa8
 8003916:	9907      	ldr	r1, [sp, #28]
 8003918:	9803      	ldr	r0, [sp, #12]
 800391a:	f003 fa47 	bl	8006dac <__sprint_r>
 800391e:	2800      	cmp	r0, #0
 8003920:	f47f ac8e 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003924:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003928:	f7ff bbf0 	b.w	800310c <_vfprintf_r+0x9bc>
 800392c:	9a05      	ldr	r2, [sp, #20]
 800392e:	601a      	str	r2, [r3, #0]
 8003930:	4657      	mov	r7, sl
 8003932:	f7ff b9b3 	b.w	8002c9c <_vfprintf_r+0x54c>
 8003936:	8814      	ldrh	r4, [r2, #0]
 8003938:	9108      	str	r1, [sp, #32]
 800393a:	2500      	movs	r5, #0
 800393c:	2201      	movs	r2, #1
 800393e:	f7ff b9c8 	b.w	8002cd2 <_vfprintf_r+0x582>
 8003942:	8814      	ldrh	r4, [r2, #0]
 8003944:	9308      	str	r3, [sp, #32]
 8003946:	2500      	movs	r5, #0
 8003948:	f7ff ba14 	b.w	8002d74 <_vfprintf_r+0x624>
 800394c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003950:	9208      	str	r2, [sp, #32]
 8003952:	17e5      	asrs	r5, r4, #31
 8003954:	4620      	mov	r0, r4
 8003956:	4629      	mov	r1, r5
 8003958:	f7ff b855 	b.w	8002a06 <_vfprintf_r+0x2b6>
 800395c:	8814      	ldrh	r4, [r2, #0]
 800395e:	9308      	str	r3, [sp, #32]
 8003960:	2500      	movs	r5, #0
 8003962:	f7ff b825 	b.w	80029b0 <_vfprintf_r+0x260>
 8003966:	222d      	movs	r2, #45	; 0x2d
 8003968:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800396c:	f7ff baa2 	b.w	8002eb4 <_vfprintf_r+0x764>
 8003970:	aa2a      	add	r2, sp, #168	; 0xa8
 8003972:	9907      	ldr	r1, [sp, #28]
 8003974:	9803      	ldr	r0, [sp, #12]
 8003976:	f003 fa19 	bl	8006dac <__sprint_r>
 800397a:	2800      	cmp	r0, #0
 800397c:	f47f ac60 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003980:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003982:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003986:	e534      	b.n	80033f2 <_vfprintf_r+0xca2>
 8003988:	aa2a      	add	r2, sp, #168	; 0xa8
 800398a:	9907      	ldr	r1, [sp, #28]
 800398c:	9803      	ldr	r0, [sp, #12]
 800398e:	f003 fa0d 	bl	8006dac <__sprint_r>
 8003992:	2800      	cmp	r0, #0
 8003994:	f47f ac54 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003998:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800399a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800399c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039a0:	e793      	b.n	80038ca <_vfprintf_r+0x117a>
 80039a2:	2330      	movs	r3, #48	; 0x30
 80039a4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80039a8:	2378      	movs	r3, #120	; 0x78
 80039aa:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80039ae:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80039b2:	f048 0402 	orr.w	r4, r8, #2
 80039b6:	f300 82b0 	bgt.w	8003f1a <_vfprintf_r+0x17ca>
 80039ba:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80039be:	930e      	str	r3, [sp, #56]	; 0x38
 80039c0:	f026 0320 	bic.w	r3, r6, #32
 80039c4:	9304      	str	r3, [sp, #16]
 80039c6:	2200      	movs	r2, #0
 80039c8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80039ca:	920a      	str	r2, [sp, #40]	; 0x28
 80039cc:	46a0      	mov	r8, r4
 80039ce:	af3d      	add	r7, sp, #244	; 0xf4
 80039d0:	2b00      	cmp	r3, #0
 80039d2:	f2c0 81e3 	blt.w	8003d9c <_vfprintf_r+0x164c>
 80039d6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80039da:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80039de:	2300      	movs	r3, #0
 80039e0:	930b      	str	r3, [sp, #44]	; 0x2c
 80039e2:	2e61      	cmp	r6, #97	; 0x61
 80039e4:	f000 8255 	beq.w	8003e92 <_vfprintf_r+0x1742>
 80039e8:	2e41      	cmp	r6, #65	; 0x41
 80039ea:	f47f aee3 	bne.w	80037b4 <_vfprintf_r+0x1064>
 80039ee:	a824      	add	r0, sp, #144	; 0x90
 80039f0:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80039f4:	f003 f8e2 	bl	8006bbc <frexp>
 80039f8:	2200      	movs	r2, #0
 80039fa:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80039fe:	ec51 0b10 	vmov	r0, r1, d0
 8003a02:	f7fd f899 	bl	8000b38 <__aeabi_dmul>
 8003a06:	2200      	movs	r2, #0
 8003a08:	2300      	movs	r3, #0
 8003a0a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a0e:	f7fd fafb 	bl	8001008 <__aeabi_dcmpeq>
 8003a12:	2800      	cmp	r0, #0
 8003a14:	f040 8305 	bne.w	8004022 <_vfprintf_r+0x18d2>
 8003a18:	4b63      	ldr	r3, [pc, #396]	; (8003ba8 <_vfprintf_r+0x1458>)
 8003a1a:	9309      	str	r3, [sp, #36]	; 0x24
 8003a1c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003a20:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003a24:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003a28:	9721      	str	r7, [sp, #132]	; 0x84
 8003a2a:	46b9      	mov	r9, r7
 8003a2c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003a30:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003a34:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003a38:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003a3c:	e003      	b.n	8003a46 <_vfprintf_r+0x12f6>
 8003a3e:	f7fd fae3 	bl	8001008 <__aeabi_dcmpeq>
 8003a42:	bb20      	cbnz	r0, 8003a8e <_vfprintf_r+0x133e>
 8003a44:	46a9      	mov	r9, r5
 8003a46:	2200      	movs	r2, #0
 8003a48:	4b58      	ldr	r3, [pc, #352]	; (8003bac <_vfprintf_r+0x145c>)
 8003a4a:	4630      	mov	r0, r6
 8003a4c:	4639      	mov	r1, r7
 8003a4e:	f7fd f873 	bl	8000b38 <__aeabi_dmul>
 8003a52:	460f      	mov	r7, r1
 8003a54:	4606      	mov	r6, r0
 8003a56:	f7fd fb1f 	bl	8001098 <__aeabi_d2iz>
 8003a5a:	4680      	mov	r8, r0
 8003a5c:	f7fd f802 	bl	8000a64 <__aeabi_i2d>
 8003a60:	4602      	mov	r2, r0
 8003a62:	460b      	mov	r3, r1
 8003a64:	4630      	mov	r0, r6
 8003a66:	4639      	mov	r1, r7
 8003a68:	f7fc feae 	bl	80007c8 <__aeabi_dsub>
 8003a6c:	464d      	mov	r5, r9
 8003a6e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003a72:	f805 cb01 	strb.w	ip, [r5], #1
 8003a76:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003a7a:	46a3      	mov	fp, r4
 8003a7c:	4606      	mov	r6, r0
 8003a7e:	460f      	mov	r7, r1
 8003a80:	f04f 0200 	mov.w	r2, #0
 8003a84:	f04f 0300 	mov.w	r3, #0
 8003a88:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003a8c:	d1d7      	bne.n	8003a3e <_vfprintf_r+0x12ee>
 8003a8e:	4630      	mov	r0, r6
 8003a90:	4639      	mov	r1, r7
 8003a92:	2200      	movs	r2, #0
 8003a94:	4b46      	ldr	r3, [pc, #280]	; (8003bb0 <_vfprintf_r+0x1460>)
 8003a96:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003a9a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003a9c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003aa0:	4644      	mov	r4, r8
 8003aa2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003aa6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003aaa:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003aae:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003ab2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003ab4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003ab8:	f7fd face 	bl	8001058 <__aeabi_dcmpgt>
 8003abc:	2800      	cmp	r0, #0
 8003abe:	f040 8176 	bne.w	8003dae <_vfprintf_r+0x165e>
 8003ac2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003ac6:	2200      	movs	r2, #0
 8003ac8:	4b39      	ldr	r3, [pc, #228]	; (8003bb0 <_vfprintf_r+0x1460>)
 8003aca:	f7fd fa9d 	bl	8001008 <__aeabi_dcmpeq>
 8003ace:	b110      	cbz	r0, 8003ad6 <_vfprintf_r+0x1386>
 8003ad0:	07e2      	lsls	r2, r4, #31
 8003ad2:	f100 816c 	bmi.w	8003dae <_vfprintf_r+0x165e>
 8003ad6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ad8:	2b00      	cmp	r3, #0
 8003ada:	db07      	blt.n	8003aec <_vfprintf_r+0x139c>
 8003adc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ade:	3301      	adds	r3, #1
 8003ae0:	442b      	add	r3, r5
 8003ae2:	2230      	movs	r2, #48	; 0x30
 8003ae4:	f805 2b01 	strb.w	r2, [r5], #1
 8003ae8:	42ab      	cmp	r3, r5
 8003aea:	d1fb      	bne.n	8003ae4 <_vfprintf_r+0x1394>
 8003aec:	1beb      	subs	r3, r5, r7
 8003aee:	4640      	mov	r0, r8
 8003af0:	9310      	str	r3, [sp, #64]	; 0x40
 8003af2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003af6:	e683      	b.n	8003800 <_vfprintf_r+0x10b0>
 8003af8:	f8cd 9010 	str.w	r9, [sp, #16]
 8003afc:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003b00:	9408      	str	r4, [sp, #32]
 8003b02:	4681      	mov	r9, r0
 8003b04:	900f      	str	r0, [sp, #60]	; 0x3c
 8003b06:	9014      	str	r0, [sp, #80]	; 0x50
 8003b08:	9011      	str	r0, [sp, #68]	; 0x44
 8003b0a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003b0e:	f7fe bfac 	b.w	8002a6a <_vfprintf_r+0x31a>
 8003b12:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b14:	9907      	ldr	r1, [sp, #28]
 8003b16:	9803      	ldr	r0, [sp, #12]
 8003b18:	f003 f948 	bl	8006dac <__sprint_r>
 8003b1c:	2800      	cmp	r0, #0
 8003b1e:	f47f ab8f 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003b22:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b24:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b26:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b2a:	e511      	b.n	8003550 <_vfprintf_r+0xe00>
 8003b2c:	4252      	negs	r2, r2
 8003b2e:	9206      	str	r2, [sp, #24]
 8003b30:	9308      	str	r3, [sp, #32]
 8003b32:	f7ff b96d 	b.w	8002e10 <_vfprintf_r+0x6c0>
 8003b36:	4614      	mov	r4, r2
 8003b38:	4632      	mov	r2, r6
 8003b3a:	461e      	mov	r6, r3
 8003b3c:	4613      	mov	r3, r2
 8003b3e:	462a      	mov	r2, r5
 8003b40:	3201      	adds	r2, #1
 8003b42:	9209      	str	r2, [sp, #36]	; 0x24
 8003b44:	f106 0208 	add.w	r2, r6, #8
 8003b48:	e9c6 3900 	strd	r3, r9, [r6]
 8003b4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b4e:	932b      	str	r3, [sp, #172]	; 0xac
 8003b50:	444c      	add	r4, r9
 8003b52:	2b07      	cmp	r3, #7
 8003b54:	942c      	str	r4, [sp, #176]	; 0xb0
 8003b56:	f73f acc3 	bgt.w	80034e0 <_vfprintf_r+0xd90>
 8003b5a:	3301      	adds	r3, #1
 8003b5c:	9309      	str	r3, [sp, #36]	; 0x24
 8003b5e:	f102 0b08 	add.w	fp, r2, #8
 8003b62:	4616      	mov	r6, r2
 8003b64:	f7ff bbca 	b.w	80032fc <_vfprintf_r+0xbac>
 8003b68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b6a:	9907      	ldr	r1, [sp, #28]
 8003b6c:	9803      	ldr	r0, [sp, #12]
 8003b6e:	f003 f91d 	bl	8006dac <__sprint_r>
 8003b72:	2800      	cmp	r0, #0
 8003b74:	f47f ab64 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003b78:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b7a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b7e:	f7ff bade 	b.w	800313e <_vfprintf_r+0x9ee>
 8003b82:	464b      	mov	r3, r9
 8003b84:	2b06      	cmp	r3, #6
 8003b86:	bf28      	it	cs
 8003b88:	2306      	movcs	r3, #6
 8003b8a:	46b9      	mov	r9, r7
 8003b8c:	970f      	str	r7, [sp, #60]	; 0x3c
 8003b8e:	9714      	str	r7, [sp, #80]	; 0x50
 8003b90:	9711      	str	r7, [sp, #68]	; 0x44
 8003b92:	970a      	str	r7, [sp, #40]	; 0x28
 8003b94:	463a      	mov	r2, r7
 8003b96:	9304      	str	r3, [sp, #16]
 8003b98:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003b9c:	4f05      	ldr	r7, [pc, #20]	; (8003bb4 <_vfprintf_r+0x1464>)
 8003b9e:	f7fe bf64 	b.w	8002a6a <_vfprintf_r+0x31a>
 8003ba2:	bf00      	nop
 8003ba4:	0800748c 	.word	0x0800748c
 8003ba8:	08007470 	.word	0x08007470
 8003bac:	40300000 	.word	0x40300000
 8003bb0:	3fe00000 	.word	0x3fe00000
 8003bb4:	08007484 	.word	0x08007484
 8003bb8:	460c      	mov	r4, r1
 8003bba:	4639      	mov	r1, r7
 8003bbc:	465f      	mov	r7, fp
 8003bbe:	469b      	mov	fp, r3
 8003bc0:	460b      	mov	r3, r1
 8003bc2:	3201      	adds	r2, #1
 8003bc4:	442c      	add	r4, r5
 8003bc6:	2a07      	cmp	r2, #7
 8003bc8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003bcc:	e9cb 3500 	strd	r3, r5, [fp]
 8003bd0:	f73f aca5 	bgt.w	800351e <_vfprintf_r+0xdce>
 8003bd4:	f10b 0b08 	add.w	fp, fp, #8
 8003bd8:	e4ac      	b.n	8003534 <_vfprintf_r+0xde4>
 8003bda:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bdc:	1cda      	adds	r2, r3, #3
 8003bde:	db02      	blt.n	8003be6 <_vfprintf_r+0x1496>
 8003be0:	4599      	cmp	r9, r3
 8003be2:	f280 80b5 	bge.w	8003d50 <_vfprintf_r+0x1600>
 8003be6:	3e02      	subs	r6, #2
 8003be8:	f026 0320 	bic.w	r3, r6, #32
 8003bec:	9304      	str	r3, [sp, #16]
 8003bee:	e611      	b.n	8003814 <_vfprintf_r+0x10c4>
 8003bf0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bf2:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003bf6:	465a      	mov	r2, fp
 8003bf8:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003bfc:	18fb      	adds	r3, r7, r3
 8003bfe:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003c02:	970c      	str	r7, [sp, #48]	; 0x30
 8003c04:	4eaf      	ldr	r6, [pc, #700]	; (8003ec4 <_vfprintf_r+0x1774>)
 8003c06:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003c0a:	9309      	str	r3, [sp, #36]	; 0x24
 8003c0c:	464f      	mov	r7, r9
 8003c0e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c12:	4621      	mov	r1, r4
 8003c14:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c16:	2b00      	cmp	r3, #0
 8003c18:	d05b      	beq.n	8003cd2 <_vfprintf_r+0x1582>
 8003c1a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c1c:	2b00      	cmp	r3, #0
 8003c1e:	d154      	bne.n	8003cca <_vfprintf_r+0x157a>
 8003c20:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c22:	3b01      	subs	r3, #1
 8003c24:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003c28:	9314      	str	r3, [sp, #80]	; 0x50
 8003c2a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c2c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003c2e:	6010      	str	r0, [r2, #0]
 8003c30:	3301      	adds	r3, #1
 8003c32:	4459      	add	r1, fp
 8003c34:	2b07      	cmp	r3, #7
 8003c36:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c38:	f8c2 b004 	str.w	fp, [r2, #4]
 8003c3c:	932b      	str	r3, [sp, #172]	; 0xac
 8003c3e:	dc68      	bgt.n	8003d12 <_vfprintf_r+0x15c2>
 8003c40:	3208      	adds	r2, #8
 8003c42:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003c44:	f898 3000 	ldrb.w	r3, [r8]
 8003c48:	1bc5      	subs	r5, r0, r7
 8003c4a:	429d      	cmp	r5, r3
 8003c4c:	bfa8      	it	ge
 8003c4e:	461d      	movge	r5, r3
 8003c50:	2d00      	cmp	r5, #0
 8003c52:	dd0b      	ble.n	8003c6c <_vfprintf_r+0x151c>
 8003c54:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c56:	6017      	str	r7, [r2, #0]
 8003c58:	3301      	adds	r3, #1
 8003c5a:	4429      	add	r1, r5
 8003c5c:	2b07      	cmp	r3, #7
 8003c5e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c60:	6055      	str	r5, [r2, #4]
 8003c62:	932b      	str	r3, [sp, #172]	; 0xac
 8003c64:	dc5e      	bgt.n	8003d24 <_vfprintf_r+0x15d4>
 8003c66:	f898 3000 	ldrb.w	r3, [r8]
 8003c6a:	3208      	adds	r2, #8
 8003c6c:	2d00      	cmp	r5, #0
 8003c6e:	bfac      	ite	ge
 8003c70:	1b5d      	subge	r5, r3, r5
 8003c72:	461d      	movlt	r5, r3
 8003c74:	2d00      	cmp	r5, #0
 8003c76:	dd26      	ble.n	8003cc6 <_vfprintf_r+0x1576>
 8003c78:	2d10      	cmp	r5, #16
 8003c7a:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003c7c:	dd3c      	ble.n	8003cf8 <_vfprintf_r+0x15a8>
 8003c7e:	2410      	movs	r4, #16
 8003c80:	e003      	b.n	8003c8a <_vfprintf_r+0x153a>
 8003c82:	3208      	adds	r2, #8
 8003c84:	3d10      	subs	r5, #16
 8003c86:	2d10      	cmp	r5, #16
 8003c88:	dd36      	ble.n	8003cf8 <_vfprintf_r+0x15a8>
 8003c8a:	3001      	adds	r0, #1
 8003c8c:	3110      	adds	r1, #16
 8003c8e:	2807      	cmp	r0, #7
 8003c90:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003c94:	e9c2 6400 	strd	r6, r4, [r2]
 8003c98:	ddf3      	ble.n	8003c82 <_vfprintf_r+0x1532>
 8003c9a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c9c:	4651      	mov	r1, sl
 8003c9e:	4648      	mov	r0, r9
 8003ca0:	f003 f884 	bl	8006dac <__sprint_r>
 8003ca4:	2800      	cmp	r0, #0
 8003ca6:	d150      	bne.n	8003d4a <_vfprintf_r+0x15fa>
 8003ca8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003cac:	aa2d      	add	r2, sp, #180	; 0xb4
 8003cae:	e7e9      	b.n	8003c84 <_vfprintf_r+0x1534>
 8003cb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cb2:	4651      	mov	r1, sl
 8003cb4:	4648      	mov	r0, r9
 8003cb6:	f003 f879 	bl	8006dac <__sprint_r>
 8003cba:	2800      	cmp	r0, #0
 8003cbc:	d145      	bne.n	8003d4a <_vfprintf_r+0x15fa>
 8003cbe:	f898 3000 	ldrb.w	r3, [r8]
 8003cc2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003cc4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003cc6:	441f      	add	r7, r3
 8003cc8:	e7a4      	b.n	8003c14 <_vfprintf_r+0x14c4>
 8003cca:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ccc:	3b01      	subs	r3, #1
 8003cce:	930f      	str	r3, [sp, #60]	; 0x3c
 8003cd0:	e7ab      	b.n	8003c2a <_vfprintf_r+0x14da>
 8003cd2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003cd4:	2b00      	cmp	r3, #0
 8003cd6:	d1f8      	bne.n	8003cca <_vfprintf_r+0x157a>
 8003cd8:	46b9      	mov	r9, r7
 8003cda:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cdc:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003cde:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003ce2:	18fb      	adds	r3, r7, r3
 8003ce4:	4599      	cmp	r9, r3
 8003ce6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003cea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003cee:	4693      	mov	fp, r2
 8003cf0:	460c      	mov	r4, r1
 8003cf2:	bf28      	it	cs
 8003cf4:	4699      	movcs	r9, r3
 8003cf6:	e424      	b.n	8003542 <_vfprintf_r+0xdf2>
 8003cf8:	3001      	adds	r0, #1
 8003cfa:	4429      	add	r1, r5
 8003cfc:	2807      	cmp	r0, #7
 8003cfe:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003d02:	e9c2 6500 	strd	r6, r5, [r2]
 8003d06:	dcd3      	bgt.n	8003cb0 <_vfprintf_r+0x1560>
 8003d08:	f898 3000 	ldrb.w	r3, [r8]
 8003d0c:	3208      	adds	r2, #8
 8003d0e:	441f      	add	r7, r3
 8003d10:	e780      	b.n	8003c14 <_vfprintf_r+0x14c4>
 8003d12:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d14:	4651      	mov	r1, sl
 8003d16:	4648      	mov	r0, r9
 8003d18:	f003 f848 	bl	8006dac <__sprint_r>
 8003d1c:	b9a8      	cbnz	r0, 8003d4a <_vfprintf_r+0x15fa>
 8003d1e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d20:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d22:	e78e      	b.n	8003c42 <_vfprintf_r+0x14f2>
 8003d24:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d26:	4651      	mov	r1, sl
 8003d28:	4648      	mov	r0, r9
 8003d2a:	f003 f83f 	bl	8006dac <__sprint_r>
 8003d2e:	b960      	cbnz	r0, 8003d4a <_vfprintf_r+0x15fa>
 8003d30:	f898 3000 	ldrb.w	r3, [r8]
 8003d34:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d36:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d38:	e798      	b.n	8003c6c <_vfprintf_r+0x151c>
 8003d3a:	4638      	mov	r0, r7
 8003d3c:	f7fc fc80 	bl	8000640 <strlen>
 8003d40:	46a9      	mov	r9, r5
 8003d42:	4603      	mov	r3, r0
 8003d44:	9009      	str	r0, [sp, #36]	; 0x24
 8003d46:	f7ff b8f4 	b.w	8002f32 <_vfprintf_r+0x7e2>
 8003d4a:	46d1      	mov	r9, sl
 8003d4c:	f7ff ba7a 	b.w	8003244 <_vfprintf_r+0xaf4>
 8003d50:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d52:	4619      	mov	r1, r3
 8003d54:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d56:	4299      	cmp	r1, r3
 8003d58:	f300 8082 	bgt.w	8003e60 <_vfprintf_r+0x1710>
 8003d5c:	07c4      	lsls	r4, r0, #31
 8003d5e:	f140 816b 	bpl.w	8004038 <_vfprintf_r+0x18e8>
 8003d62:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d64:	4413      	add	r3, r2
 8003d66:	9309      	str	r3, [sp, #36]	; 0x24
 8003d68:	0541      	lsls	r1, r0, #21
 8003d6a:	d503      	bpl.n	8003d74 <_vfprintf_r+0x1624>
 8003d6c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d6e:	2b00      	cmp	r3, #0
 8003d70:	f300 80e6 	bgt.w	8003f40 <_vfprintf_r+0x17f0>
 8003d74:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d76:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d7a:	9304      	str	r3, [sp, #16]
 8003d7c:	2667      	movs	r6, #103	; 0x67
 8003d7e:	2300      	movs	r3, #0
 8003d80:	930f      	str	r3, [sp, #60]	; 0x3c
 8003d82:	9314      	str	r3, [sp, #80]	; 0x50
 8003d84:	e586      	b.n	8003894 <_vfprintf_r+0x1144>
 8003d86:	222d      	movs	r2, #45	; 0x2d
 8003d88:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003d8c:	f04f 0900 	mov.w	r9, #0
 8003d90:	f7fe be6c 	b.w	8002a6c <_vfprintf_r+0x31c>
 8003d94:	46a1      	mov	r9, r4
 8003d96:	f7ff ba55 	b.w	8003244 <_vfprintf_r+0xaf4>
 8003d9a:	900a      	str	r0, [sp, #40]	; 0x28
 8003d9c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003da0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003da4:	931f      	str	r3, [sp, #124]	; 0x7c
 8003da6:	232d      	movs	r3, #45	; 0x2d
 8003da8:	911e      	str	r1, [sp, #120]	; 0x78
 8003daa:	930b      	str	r3, [sp, #44]	; 0x2c
 8003dac:	e619      	b.n	80039e2 <_vfprintf_r+0x1292>
 8003dae:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003db0:	9328      	str	r3, [sp, #160]	; 0xa0
 8003db2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003db4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003db8:	7bd9      	ldrb	r1, [r3, #15]
 8003dba:	4291      	cmp	r1, r2
 8003dbc:	462b      	mov	r3, r5
 8003dbe:	d109      	bne.n	8003dd4 <_vfprintf_r+0x1684>
 8003dc0:	2030      	movs	r0, #48	; 0x30
 8003dc2:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003dc6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003dc8:	1e5a      	subs	r2, r3, #1
 8003dca:	9228      	str	r2, [sp, #160]	; 0xa0
 8003dcc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003dd0:	4291      	cmp	r1, r2
 8003dd2:	d0f6      	beq.n	8003dc2 <_vfprintf_r+0x1672>
 8003dd4:	2a39      	cmp	r2, #57	; 0x39
 8003dd6:	bf0b      	itete	eq
 8003dd8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003dda:	3201      	addne	r2, #1
 8003ddc:	7a92      	ldrbeq	r2, [r2, #10]
 8003dde:	b2d2      	uxtbne	r2, r2
 8003de0:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003de4:	e682      	b.n	8003aec <_vfprintf_r+0x139c>
 8003de6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003dea:	f43f ad9f 	beq.w	800392c <_vfprintf_r+0x11dc>
 8003dee:	9a05      	ldr	r2, [sp, #20]
 8003df0:	701a      	strb	r2, [r3, #0]
 8003df2:	4657      	mov	r7, sl
 8003df4:	f7fe bf52 	b.w	8002c9c <_vfprintf_r+0x54c>
 8003df8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dfa:	9907      	ldr	r1, [sp, #28]
 8003dfc:	9803      	ldr	r0, [sp, #12]
 8003dfe:	f002 ffd5 	bl	8006dac <__sprint_r>
 8003e02:	2800      	cmp	r0, #0
 8003e04:	f47f aa1c 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003e08:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e0a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e12:	e571      	b.n	80038f8 <_vfprintf_r+0x11a8>
 8003e14:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e16:	2b00      	cmp	r3, #0
 8003e18:	f340 8164 	ble.w	80040e4 <_vfprintf_r+0x1994>
 8003e1c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e1e:	f1b9 0f00 	cmp.w	r9, #0
 8003e22:	f040 8103 	bne.w	800402c <_vfprintf_r+0x18dc>
 8003e26:	07c6      	lsls	r6, r0, #31
 8003e28:	f100 8100 	bmi.w	800402c <_vfprintf_r+0x18dc>
 8003e2c:	9309      	str	r3, [sp, #36]	; 0x24
 8003e2e:	2666      	movs	r6, #102	; 0x66
 8003e30:	0543      	lsls	r3, r0, #21
 8003e32:	f100 8086 	bmi.w	8003f42 <_vfprintf_r+0x17f2>
 8003e36:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e38:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e3c:	9304      	str	r3, [sp, #16]
 8003e3e:	e79e      	b.n	8003d7e <_vfprintf_r+0x162e>
 8003e40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e42:	9907      	ldr	r1, [sp, #28]
 8003e44:	9803      	ldr	r0, [sp, #12]
 8003e46:	f002 ffb1 	bl	8006dac <__sprint_r>
 8003e4a:	2800      	cmp	r0, #0
 8003e4c:	f47f a9f8 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003e50:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e52:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003e54:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e56:	1ad3      	subs	r3, r2, r3
 8003e58:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e5c:	f7ff bb90 	b.w	8003580 <_vfprintf_r+0xe30>
 8003e60:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e62:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e64:	4413      	add	r3, r2
 8003e66:	9309      	str	r3, [sp, #36]	; 0x24
 8003e68:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e6a:	2b00      	cmp	r3, #0
 8003e6c:	f340 8149 	ble.w	8004102 <_vfprintf_r+0x19b2>
 8003e70:	2667      	movs	r6, #103	; 0x67
 8003e72:	e7dd      	b.n	8003e30 <_vfprintf_r+0x16e0>
 8003e74:	2330      	movs	r3, #48	; 0x30
 8003e76:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003e7a:	2358      	movs	r3, #88	; 0x58
 8003e7c:	e595      	b.n	80039aa <_vfprintf_r+0x125a>
 8003e7e:	9803      	ldr	r0, [sp, #12]
 8003e80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e82:	4649      	mov	r1, r9
 8003e84:	f002 ff92 	bl	8006dac <__sprint_r>
 8003e88:	2800      	cmp	r0, #0
 8003e8a:	f47f a9e0 	bne.w	800324e <_vfprintf_r+0xafe>
 8003e8e:	f7fe bf0f 	b.w	8002cb0 <_vfprintf_r+0x560>
 8003e92:	a824      	add	r0, sp, #144	; 0x90
 8003e94:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e98:	f002 fe90 	bl	8006bbc <frexp>
 8003e9c:	2200      	movs	r2, #0
 8003e9e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003ea2:	ec51 0b10 	vmov	r0, r1, d0
 8003ea6:	f7fc fe47 	bl	8000b38 <__aeabi_dmul>
 8003eaa:	2200      	movs	r2, #0
 8003eac:	2300      	movs	r3, #0
 8003eae:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003eb2:	f7fd f8a9 	bl	8001008 <__aeabi_dcmpeq>
 8003eb6:	b108      	cbz	r0, 8003ebc <_vfprintf_r+0x176c>
 8003eb8:	2301      	movs	r3, #1
 8003eba:	9324      	str	r3, [sp, #144]	; 0x90
 8003ebc:	4b02      	ldr	r3, [pc, #8]	; (8003ec8 <_vfprintf_r+0x1778>)
 8003ebe:	9309      	str	r3, [sp, #36]	; 0x24
 8003ec0:	e5ac      	b.n	8003a1c <_vfprintf_r+0x12cc>
 8003ec2:	bf00      	nop
 8003ec4:	080074a0 	.word	0x080074a0
 8003ec8:	0800745c 	.word	0x0800745c
 8003ecc:	425d      	negs	r5, r3
 8003ece:	3310      	adds	r3, #16
 8003ed0:	4bb9      	ldr	r3, [pc, #740]	; (80041b8 <_vfprintf_r+0x1a68>)
 8003ed2:	f280 8097 	bge.w	8004004 <_vfprintf_r+0x18b4>
 8003ed6:	4619      	mov	r1, r3
 8003ed8:	2610      	movs	r6, #16
 8003eda:	4623      	mov	r3, r4
 8003edc:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003ee0:	460c      	mov	r4, r1
 8003ee2:	e005      	b.n	8003ef0 <_vfprintf_r+0x17a0>
 8003ee4:	f10b 0b08 	add.w	fp, fp, #8
 8003ee8:	3d10      	subs	r5, #16
 8003eea:	2d10      	cmp	r5, #16
 8003eec:	f340 8087 	ble.w	8003ffe <_vfprintf_r+0x18ae>
 8003ef0:	3201      	adds	r2, #1
 8003ef2:	3310      	adds	r3, #16
 8003ef4:	2a07      	cmp	r2, #7
 8003ef6:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003efa:	e9cb 4600 	strd	r4, r6, [fp]
 8003efe:	ddf1      	ble.n	8003ee4 <_vfprintf_r+0x1794>
 8003f00:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f02:	9907      	ldr	r1, [sp, #28]
 8003f04:	4648      	mov	r0, r9
 8003f06:	f002 ff51 	bl	8006dac <__sprint_r>
 8003f0a:	2800      	cmp	r0, #0
 8003f0c:	f47f a998 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8003f10:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003f14:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f18:	e7e6      	b.n	8003ee8 <_vfprintf_r+0x1798>
 8003f1a:	f109 0101 	add.w	r1, r9, #1
 8003f1e:	9803      	ldr	r0, [sp, #12]
 8003f20:	f001 fe80 	bl	8005c24 <_malloc_r>
 8003f24:	4607      	mov	r7, r0
 8003f26:	2800      	cmp	r0, #0
 8003f28:	f000 813b 	beq.w	80041a2 <_vfprintf_r+0x1a52>
 8003f2c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003f30:	930e      	str	r3, [sp, #56]	; 0x38
 8003f32:	f026 0320 	bic.w	r3, r6, #32
 8003f36:	9304      	str	r3, [sp, #16]
 8003f38:	46a0      	mov	r8, r4
 8003f3a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003f3c:	900a      	str	r0, [sp, #40]	; 0x28
 8003f3e:	e547      	b.n	80039d0 <_vfprintf_r+0x1280>
 8003f40:	2667      	movs	r6, #103	; 0x67
 8003f42:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003f44:	2200      	movs	r2, #0
 8003f46:	920f      	str	r2, [sp, #60]	; 0x3c
 8003f48:	9214      	str	r2, [sp, #80]	; 0x50
 8003f4a:	7803      	ldrb	r3, [r0, #0]
 8003f4c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003f4e:	2bff      	cmp	r3, #255	; 0xff
 8003f50:	d00c      	beq.n	8003f6c <_vfprintf_r+0x181c>
 8003f52:	4293      	cmp	r3, r2
 8003f54:	da0a      	bge.n	8003f6c <_vfprintf_r+0x181c>
 8003f56:	7841      	ldrb	r1, [r0, #1]
 8003f58:	1ad2      	subs	r2, r2, r3
 8003f5a:	b1a9      	cbz	r1, 8003f88 <_vfprintf_r+0x1838>
 8003f5c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f5e:	3301      	adds	r3, #1
 8003f60:	9314      	str	r3, [sp, #80]	; 0x50
 8003f62:	460b      	mov	r3, r1
 8003f64:	2bff      	cmp	r3, #255	; 0xff
 8003f66:	f100 0001 	add.w	r0, r0, #1
 8003f6a:	d1f2      	bne.n	8003f52 <_vfprintf_r+0x1802>
 8003f6c:	9211      	str	r2, [sp, #68]	; 0x44
 8003f6e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f70:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003f72:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003f74:	901a      	str	r0, [sp, #104]	; 0x68
 8003f76:	4413      	add	r3, r2
 8003f78:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003f7a:	fb02 1303 	mla	r3, r2, r3, r1
 8003f7e:	9309      	str	r3, [sp, #36]	; 0x24
 8003f80:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f84:	9304      	str	r3, [sp, #16]
 8003f86:	e485      	b.n	8003894 <_vfprintf_r+0x1144>
 8003f88:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003f8a:	3101      	adds	r1, #1
 8003f8c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003f8e:	e7de      	b.n	8003f4e <_vfprintf_r+0x17fe>
 8003f90:	aa28      	add	r2, sp, #160	; 0xa0
 8003f92:	ab25      	add	r3, sp, #148	; 0x94
 8003f94:	e9cd 3200 	strd	r3, r2, [sp]
 8003f98:	2103      	movs	r1, #3
 8003f9a:	ab24      	add	r3, sp, #144	; 0x90
 8003f9c:	464a      	mov	r2, r9
 8003f9e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003fa2:	9803      	ldr	r0, [sp, #12]
 8003fa4:	f000 fa5c 	bl	8004460 <_dtoa_r>
 8003fa8:	464d      	mov	r5, r9
 8003faa:	4607      	mov	r7, r0
 8003fac:	eb00 0409 	add.w	r4, r0, r9
 8003fb0:	783b      	ldrb	r3, [r7, #0]
 8003fb2:	2b30      	cmp	r3, #48	; 0x30
 8003fb4:	f000 80be 	beq.w	8004134 <_vfprintf_r+0x19e4>
 8003fb8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003fba:	442c      	add	r4, r5
 8003fbc:	2200      	movs	r2, #0
 8003fbe:	2300      	movs	r3, #0
 8003fc0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003fc4:	f7fd f820 	bl	8001008 <__aeabi_dcmpeq>
 8003fc8:	b108      	cbz	r0, 8003fce <_vfprintf_r+0x187e>
 8003fca:	4623      	mov	r3, r4
 8003fcc:	e413      	b.n	80037f6 <_vfprintf_r+0x10a6>
 8003fce:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003fd0:	42a3      	cmp	r3, r4
 8003fd2:	f4bf ac10 	bcs.w	80037f6 <_vfprintf_r+0x10a6>
 8003fd6:	2130      	movs	r1, #48	; 0x30
 8003fd8:	1c5a      	adds	r2, r3, #1
 8003fda:	9228      	str	r2, [sp, #160]	; 0xa0
 8003fdc:	7019      	strb	r1, [r3, #0]
 8003fde:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003fe0:	429c      	cmp	r4, r3
 8003fe2:	d8f9      	bhi.n	8003fd8 <_vfprintf_r+0x1888>
 8003fe4:	e407      	b.n	80037f6 <_vfprintf_r+0x10a6>
 8003fe6:	197c      	adds	r4, r7, r5
 8003fe8:	e7e8      	b.n	8003fbc <_vfprintf_r+0x186c>
 8003fea:	f1b9 0f00 	cmp.w	r9, #0
 8003fee:	f000 8092 	beq.w	8004116 <_vfprintf_r+0x19c6>
 8003ff2:	900a      	str	r0, [sp, #40]	; 0x28
 8003ff4:	e4ec      	b.n	80039d0 <_vfprintf_r+0x1280>
 8003ff6:	900a      	str	r0, [sp, #40]	; 0x28
 8003ff8:	f04f 0906 	mov.w	r9, #6
 8003ffc:	e4e8      	b.n	80039d0 <_vfprintf_r+0x1280>
 8003ffe:	4621      	mov	r1, r4
 8004000:	461c      	mov	r4, r3
 8004002:	460b      	mov	r3, r1
 8004004:	3201      	adds	r2, #1
 8004006:	442c      	add	r4, r5
 8004008:	2a07      	cmp	r2, #7
 800400a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800400e:	e9cb 3500 	strd	r3, r5, [fp]
 8004012:	f300 80a9 	bgt.w	8004168 <_vfprintf_r+0x1a18>
 8004016:	f10b 0b08 	add.w	fp, fp, #8
 800401a:	e470      	b.n	80038fe <_vfprintf_r+0x11ae>
 800401c:	469a      	mov	sl, r3
 800401e:	f7ff bb37 	b.w	8003690 <_vfprintf_r+0xf40>
 8004022:	2301      	movs	r3, #1
 8004024:	9324      	str	r3, [sp, #144]	; 0x90
 8004026:	4b65      	ldr	r3, [pc, #404]	; (80041bc <_vfprintf_r+0x1a6c>)
 8004028:	9309      	str	r3, [sp, #36]	; 0x24
 800402a:	e4f7      	b.n	8003a1c <_vfprintf_r+0x12cc>
 800402c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800402e:	4413      	add	r3, r2
 8004030:	444b      	add	r3, r9
 8004032:	9309      	str	r3, [sp, #36]	; 0x24
 8004034:	2666      	movs	r6, #102	; 0x66
 8004036:	e6fb      	b.n	8003e30 <_vfprintf_r+0x16e0>
 8004038:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800403a:	9309      	str	r3, [sp, #36]	; 0x24
 800403c:	e694      	b.n	8003d68 <_vfprintf_r+0x1618>
 800403e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8004042:	4664      	mov	r4, ip
 8004044:	4d5e      	ldr	r5, [pc, #376]	; (80041c0 <_vfprintf_r+0x1a70>)
 8004046:	e000      	b.n	800404a <_vfprintf_r+0x18fa>
 8004048:	4614      	mov	r4, r2
 800404a:	fba5 1203 	umull	r1, r2, r5, r3
 800404e:	08d2      	lsrs	r2, r2, #3
 8004050:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8004054:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004058:	f103 0130 	add.w	r1, r3, #48	; 0x30
 800405c:	4613      	mov	r3, r2
 800405e:	2b09      	cmp	r3, #9
 8004060:	f804 1c01 	strb.w	r1, [r4, #-1]
 8004064:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004068:	dcee      	bgt.n	8004048 <_vfprintf_r+0x18f8>
 800406a:	3330      	adds	r3, #48	; 0x30
 800406c:	3c02      	subs	r4, #2
 800406e:	b2db      	uxtb	r3, r3
 8004070:	45a4      	cmp	ip, r4
 8004072:	f802 3c01 	strb.w	r3, [r2, #-1]
 8004076:	f240 8090 	bls.w	800419a <_vfprintf_r+0x1a4a>
 800407a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 800407e:	4611      	mov	r1, r2
 8004080:	e001      	b.n	8004086 <_vfprintf_r+0x1936>
 8004082:	f811 3b01 	ldrb.w	r3, [r1], #1
 8004086:	f804 3b01 	strb.w	r3, [r4], #1
 800408a:	458c      	cmp	ip, r1
 800408c:	d1f9      	bne.n	8004082 <_vfprintf_r+0x1932>
 800408e:	ab2a      	add	r3, sp, #168	; 0xa8
 8004090:	1a9b      	subs	r3, r3, r2
 8004092:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004096:	4413      	add	r3, r2
 8004098:	f7ff bbe3 	b.w	8003862 <_vfprintf_r+0x1112>
 800409c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800409e:	4f49      	ldr	r7, [pc, #292]	; (80041c4 <_vfprintf_r+0x1a74>)
 80040a0:	2b00      	cmp	r3, #0
 80040a2:	bfb6      	itet	lt
 80040a4:	222d      	movlt	r2, #45	; 0x2d
 80040a6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80040aa:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80040ae:	4b46      	ldr	r3, [pc, #280]	; (80041c8 <_vfprintf_r+0x1a78>)
 80040b0:	f7fe bf02 	b.w	8002eb8 <_vfprintf_r+0x768>
 80040b4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80040b8:	f7ff b8c9 	b.w	800324e <_vfprintf_r+0xafe>
 80040bc:	aa28      	add	r2, sp, #160	; 0xa0
 80040be:	ab25      	add	r3, sp, #148	; 0x94
 80040c0:	e9cd 3200 	strd	r3, r2, [sp]
 80040c4:	2103      	movs	r1, #3
 80040c6:	ab24      	add	r3, sp, #144	; 0x90
 80040c8:	464a      	mov	r2, r9
 80040ca:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80040ce:	9803      	ldr	r0, [sp, #12]
 80040d0:	f000 f9c6 	bl	8004460 <_dtoa_r>
 80040d4:	464d      	mov	r5, r9
 80040d6:	4607      	mov	r7, r0
 80040d8:	2e46      	cmp	r6, #70	; 0x46
 80040da:	eb07 0405 	add.w	r4, r7, r5
 80040de:	f43f af67 	beq.w	8003fb0 <_vfprintf_r+0x1860>
 80040e2:	e76b      	b.n	8003fbc <_vfprintf_r+0x186c>
 80040e4:	f1b9 0f00 	cmp.w	r9, #0
 80040e8:	d131      	bne.n	800414e <_vfprintf_r+0x19fe>
 80040ea:	07c5      	lsls	r5, r0, #31
 80040ec:	d42f      	bmi.n	800414e <_vfprintf_r+0x19fe>
 80040ee:	2301      	movs	r3, #1
 80040f0:	9304      	str	r3, [sp, #16]
 80040f2:	9309      	str	r3, [sp, #36]	; 0x24
 80040f4:	2666      	movs	r6, #102	; 0x66
 80040f6:	e642      	b.n	8003d7e <_vfprintf_r+0x162e>
 80040f8:	07c3      	lsls	r3, r0, #31
 80040fa:	f57f abbf 	bpl.w	800387c <_vfprintf_r+0x112c>
 80040fe:	f7ff bbb9 	b.w	8003874 <_vfprintf_r+0x1124>
 8004102:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004104:	f1c3 0301 	rsb	r3, r3, #1
 8004108:	441a      	add	r2, r3
 800410a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800410e:	9209      	str	r2, [sp, #36]	; 0x24
 8004110:	9304      	str	r3, [sp, #16]
 8004112:	2667      	movs	r6, #103	; 0x67
 8004114:	e633      	b.n	8003d7e <_vfprintf_r+0x162e>
 8004116:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800411a:	f04f 0901 	mov.w	r9, #1
 800411e:	e457      	b.n	80039d0 <_vfprintf_r+0x1280>
 8004120:	465a      	mov	r2, fp
 8004122:	e511      	b.n	8003b48 <_vfprintf_r+0x13f8>
 8004124:	2e47      	cmp	r6, #71	; 0x47
 8004126:	f47f af5e 	bne.w	8003fe6 <_vfprintf_r+0x1896>
 800412a:	f018 0f01 	tst.w	r8, #1
 800412e:	f43f ab61 	beq.w	80037f4 <_vfprintf_r+0x10a4>
 8004132:	e7d1      	b.n	80040d8 <_vfprintf_r+0x1988>
 8004134:	2200      	movs	r2, #0
 8004136:	2300      	movs	r3, #0
 8004138:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800413c:	f7fc ff64 	bl	8001008 <__aeabi_dcmpeq>
 8004140:	2800      	cmp	r0, #0
 8004142:	f47f af39 	bne.w	8003fb8 <_vfprintf_r+0x1868>
 8004146:	f1c5 0501 	rsb	r5, r5, #1
 800414a:	9524      	str	r5, [sp, #144]	; 0x90
 800414c:	e735      	b.n	8003fba <_vfprintf_r+0x186a>
 800414e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004150:	3301      	adds	r3, #1
 8004152:	444b      	add	r3, r9
 8004154:	9309      	str	r3, [sp, #36]	; 0x24
 8004156:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800415a:	9304      	str	r3, [sp, #16]
 800415c:	2666      	movs	r6, #102	; 0x66
 800415e:	e60e      	b.n	8003d7e <_vfprintf_r+0x162e>
 8004160:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004164:	f7ff bb7a 	b.w	800385c <_vfprintf_r+0x110c>
 8004168:	aa2a      	add	r2, sp, #168	; 0xa8
 800416a:	9907      	ldr	r1, [sp, #28]
 800416c:	9803      	ldr	r0, [sp, #12]
 800416e:	f002 fe1d 	bl	8006dac <__sprint_r>
 8004172:	2800      	cmp	r0, #0
 8004174:	f47f a864 	bne.w	8003240 <_vfprintf_r+0xaf0>
 8004178:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800417c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004180:	f7ff bbbd 	b.w	80038fe <_vfprintf_r+0x11ae>
 8004184:	9908      	ldr	r1, [sp, #32]
 8004186:	f89a 6001 	ldrb.w	r6, [sl, #1]
 800418a:	680b      	ldr	r3, [r1, #0]
 800418c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004190:	1d0b      	adds	r3, r1, #4
 8004192:	4692      	mov	sl, r2
 8004194:	9308      	str	r3, [sp, #32]
 8004196:	f7fe bb59 	b.w	800284c <_vfprintf_r+0xfc>
 800419a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 800419e:	f7ff bb60 	b.w	8003862 <_vfprintf_r+0x1112>
 80041a2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80041a6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80041aa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80041ae:	f8a9 300c 	strh.w	r3, [r9, #12]
 80041b2:	f7ff b84c 	b.w	800324e <_vfprintf_r+0xafe>
 80041b6:	bf00      	nop
 80041b8:	080074a0 	.word	0x080074a0
 80041bc:	08007470 	.word	0x08007470
 80041c0:	cccccccd 	.word	0xcccccccd
 80041c4:	08007458 	.word	0x08007458
 80041c8:	08007454 	.word	0x08007454

080041cc <__sbprintf>:
 80041cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80041d0:	460c      	mov	r4, r1
 80041d2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80041d6:	8989      	ldrh	r1, [r1, #12]
 80041d8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80041da:	89e5      	ldrh	r5, [r4, #14]
 80041dc:	9619      	str	r6, [sp, #100]	; 0x64
 80041de:	f021 0102 	bic.w	r1, r1, #2
 80041e2:	4606      	mov	r6, r0
 80041e4:	69e0      	ldr	r0, [r4, #28]
 80041e6:	f8ad 100c 	strh.w	r1, [sp, #12]
 80041ea:	4617      	mov	r7, r2
 80041ec:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80041f0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80041f2:	f8ad 500e 	strh.w	r5, [sp, #14]
 80041f6:	4698      	mov	r8, r3
 80041f8:	ad1a      	add	r5, sp, #104	; 0x68
 80041fa:	2300      	movs	r3, #0
 80041fc:	9007      	str	r0, [sp, #28]
 80041fe:	a816      	add	r0, sp, #88	; 0x58
 8004200:	9209      	str	r2, [sp, #36]	; 0x24
 8004202:	9306      	str	r3, [sp, #24]
 8004204:	9500      	str	r5, [sp, #0]
 8004206:	9504      	str	r5, [sp, #16]
 8004208:	9102      	str	r1, [sp, #8]
 800420a:	9105      	str	r1, [sp, #20]
 800420c:	f001 fc8a 	bl	8005b24 <__retarget_lock_init_recursive>
 8004210:	4643      	mov	r3, r8
 8004212:	463a      	mov	r2, r7
 8004214:	4669      	mov	r1, sp
 8004216:	4630      	mov	r0, r6
 8004218:	f7fe fa9a 	bl	8002750 <_vfprintf_r>
 800421c:	1e05      	subs	r5, r0, #0
 800421e:	db07      	blt.n	8004230 <__sbprintf+0x64>
 8004220:	4630      	mov	r0, r6
 8004222:	4669      	mov	r1, sp
 8004224:	f001 f8d6 	bl	80053d4 <_fflush_r>
 8004228:	2800      	cmp	r0, #0
 800422a:	bf18      	it	ne
 800422c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004230:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004234:	065b      	lsls	r3, r3, #25
 8004236:	d503      	bpl.n	8004240 <__sbprintf+0x74>
 8004238:	89a3      	ldrh	r3, [r4, #12]
 800423a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800423e:	81a3      	strh	r3, [r4, #12]
 8004240:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004242:	f001 fc71 	bl	8005b28 <__retarget_lock_close_recursive>
 8004246:	4628      	mov	r0, r5
 8004248:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800424c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004250 <__swsetup_r>:
 8004250:	b538      	push	{r3, r4, r5, lr}
 8004252:	4b31      	ldr	r3, [pc, #196]	; (8004318 <__swsetup_r+0xc8>)
 8004254:	681b      	ldr	r3, [r3, #0]
 8004256:	4605      	mov	r5, r0
 8004258:	460c      	mov	r4, r1
 800425a:	b113      	cbz	r3, 8004262 <__swsetup_r+0x12>
 800425c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800425e:	2a00      	cmp	r2, #0
 8004260:	d03a      	beq.n	80042d8 <__swsetup_r+0x88>
 8004262:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004266:	b293      	uxth	r3, r2
 8004268:	0718      	lsls	r0, r3, #28
 800426a:	d50c      	bpl.n	8004286 <__swsetup_r+0x36>
 800426c:	6920      	ldr	r0, [r4, #16]
 800426e:	b1a8      	cbz	r0, 800429c <__swsetup_r+0x4c>
 8004270:	f013 0201 	ands.w	r2, r3, #1
 8004274:	d020      	beq.n	80042b8 <__swsetup_r+0x68>
 8004276:	6963      	ldr	r3, [r4, #20]
 8004278:	2200      	movs	r2, #0
 800427a:	425b      	negs	r3, r3
 800427c:	61a3      	str	r3, [r4, #24]
 800427e:	60a2      	str	r2, [r4, #8]
 8004280:	b300      	cbz	r0, 80042c4 <__swsetup_r+0x74>
 8004282:	2000      	movs	r0, #0
 8004284:	bd38      	pop	{r3, r4, r5, pc}
 8004286:	06d9      	lsls	r1, r3, #27
 8004288:	d53e      	bpl.n	8004308 <__swsetup_r+0xb8>
 800428a:	0758      	lsls	r0, r3, #29
 800428c:	d428      	bmi.n	80042e0 <__swsetup_r+0x90>
 800428e:	6920      	ldr	r0, [r4, #16]
 8004290:	f042 0308 	orr.w	r3, r2, #8
 8004294:	81a3      	strh	r3, [r4, #12]
 8004296:	b29b      	uxth	r3, r3
 8004298:	2800      	cmp	r0, #0
 800429a:	d1e9      	bne.n	8004270 <__swsetup_r+0x20>
 800429c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80042a0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80042a4:	d0e4      	beq.n	8004270 <__swsetup_r+0x20>
 80042a6:	4628      	mov	r0, r5
 80042a8:	4621      	mov	r1, r4
 80042aa:	f001 fc71 	bl	8005b90 <__smakebuf_r>
 80042ae:	89a3      	ldrh	r3, [r4, #12]
 80042b0:	6920      	ldr	r0, [r4, #16]
 80042b2:	f013 0201 	ands.w	r2, r3, #1
 80042b6:	d1de      	bne.n	8004276 <__swsetup_r+0x26>
 80042b8:	0799      	lsls	r1, r3, #30
 80042ba:	bf58      	it	pl
 80042bc:	6962      	ldrpl	r2, [r4, #20]
 80042be:	60a2      	str	r2, [r4, #8]
 80042c0:	2800      	cmp	r0, #0
 80042c2:	d1de      	bne.n	8004282 <__swsetup_r+0x32>
 80042c4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80042c8:	061a      	lsls	r2, r3, #24
 80042ca:	d5db      	bpl.n	8004284 <__swsetup_r+0x34>
 80042cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80042d0:	81a3      	strh	r3, [r4, #12]
 80042d2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80042d6:	bd38      	pop	{r3, r4, r5, pc}
 80042d8:	4618      	mov	r0, r3
 80042da:	f001 f8d7 	bl	800548c <__sinit>
 80042de:	e7c0      	b.n	8004262 <__swsetup_r+0x12>
 80042e0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80042e2:	b151      	cbz	r1, 80042fa <__swsetup_r+0xaa>
 80042e4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80042e8:	4299      	cmp	r1, r3
 80042ea:	d004      	beq.n	80042f6 <__swsetup_r+0xa6>
 80042ec:	4628      	mov	r0, r5
 80042ee:	f001 f96f 	bl	80055d0 <_free_r>
 80042f2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80042f6:	2300      	movs	r3, #0
 80042f8:	6323      	str	r3, [r4, #48]	; 0x30
 80042fa:	2300      	movs	r3, #0
 80042fc:	6920      	ldr	r0, [r4, #16]
 80042fe:	6063      	str	r3, [r4, #4]
 8004300:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004304:	6020      	str	r0, [r4, #0]
 8004306:	e7c3      	b.n	8004290 <__swsetup_r+0x40>
 8004308:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800430c:	2309      	movs	r3, #9
 800430e:	602b      	str	r3, [r5, #0]
 8004310:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004314:	81a2      	strh	r2, [r4, #12]
 8004316:	bd38      	pop	{r3, r4, r5, pc}
 8004318:	200000b4 	.word	0x200000b4

0800431c <register_fini>:
 800431c:	4b02      	ldr	r3, [pc, #8]	; (8004328 <register_fini+0xc>)
 800431e:	b113      	cbz	r3, 8004326 <register_fini+0xa>
 8004320:	4802      	ldr	r0, [pc, #8]	; (800432c <register_fini+0x10>)
 8004322:	f000 b805 	b.w	8004330 <atexit>
 8004326:	4770      	bx	lr
 8004328:	00000000 	.word	0x00000000
 800432c:	080054fd 	.word	0x080054fd

08004330 <atexit>:
 8004330:	2300      	movs	r3, #0
 8004332:	4601      	mov	r1, r0
 8004334:	461a      	mov	r2, r3
 8004336:	4618      	mov	r0, r3
 8004338:	f002 bd58 	b.w	8006dec <__register_exitproc>

0800433c <quorem>:
 800433c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004340:	6903      	ldr	r3, [r0, #16]
 8004342:	690f      	ldr	r7, [r1, #16]
 8004344:	42bb      	cmp	r3, r7
 8004346:	b083      	sub	sp, #12
 8004348:	f2c0 8086 	blt.w	8004458 <quorem+0x11c>
 800434c:	3f01      	subs	r7, #1
 800434e:	f101 0914 	add.w	r9, r1, #20
 8004352:	f100 0a14 	add.w	sl, r0, #20
 8004356:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800435a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800435e:	00bc      	lsls	r4, r7, #2
 8004360:	3201      	adds	r2, #1
 8004362:	fbb3 f8f2 	udiv	r8, r3, r2
 8004366:	eb0a 0304 	add.w	r3, sl, r4
 800436a:	9400      	str	r4, [sp, #0]
 800436c:	eb09 0b04 	add.w	fp, r9, r4
 8004370:	9301      	str	r3, [sp, #4]
 8004372:	f1b8 0f00 	cmp.w	r8, #0
 8004376:	d038      	beq.n	80043ea <quorem+0xae>
 8004378:	2500      	movs	r5, #0
 800437a:	462e      	mov	r6, r5
 800437c:	46ce      	mov	lr, r9
 800437e:	46d4      	mov	ip, sl
 8004380:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004384:	f8dc 3000 	ldr.w	r3, [ip]
 8004388:	b2a2      	uxth	r2, r4
 800438a:	fb08 5502 	mla	r5, r8, r2, r5
 800438e:	0c22      	lsrs	r2, r4, #16
 8004390:	0c2c      	lsrs	r4, r5, #16
 8004392:	fb08 4202 	mla	r2, r8, r2, r4
 8004396:	b2ad      	uxth	r5, r5
 8004398:	1b75      	subs	r5, r6, r5
 800439a:	b296      	uxth	r6, r2
 800439c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80043a0:	fa15 f383 	uxtah	r3, r5, r3
 80043a4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80043a8:	b29b      	uxth	r3, r3
 80043aa:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80043ae:	45f3      	cmp	fp, lr
 80043b0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80043b4:	f84c 3b04 	str.w	r3, [ip], #4
 80043b8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80043bc:	d2e0      	bcs.n	8004380 <quorem+0x44>
 80043be:	9b00      	ldr	r3, [sp, #0]
 80043c0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80043c4:	b98b      	cbnz	r3, 80043ea <quorem+0xae>
 80043c6:	9a01      	ldr	r2, [sp, #4]
 80043c8:	1f13      	subs	r3, r2, #4
 80043ca:	459a      	cmp	sl, r3
 80043cc:	d20c      	bcs.n	80043e8 <quorem+0xac>
 80043ce:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80043d2:	b94b      	cbnz	r3, 80043e8 <quorem+0xac>
 80043d4:	f1a2 0308 	sub.w	r3, r2, #8
 80043d8:	e002      	b.n	80043e0 <quorem+0xa4>
 80043da:	681a      	ldr	r2, [r3, #0]
 80043dc:	3b04      	subs	r3, #4
 80043de:	b91a      	cbnz	r2, 80043e8 <quorem+0xac>
 80043e0:	459a      	cmp	sl, r3
 80043e2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80043e6:	d3f8      	bcc.n	80043da <quorem+0x9e>
 80043e8:	6107      	str	r7, [r0, #16]
 80043ea:	4604      	mov	r4, r0
 80043ec:	f002 f944 	bl	8006678 <__mcmp>
 80043f0:	2800      	cmp	r0, #0
 80043f2:	db2d      	blt.n	8004450 <quorem+0x114>
 80043f4:	f108 0801 	add.w	r8, r8, #1
 80043f8:	4655      	mov	r5, sl
 80043fa:	2300      	movs	r3, #0
 80043fc:	f859 1b04 	ldr.w	r1, [r9], #4
 8004400:	6828      	ldr	r0, [r5, #0]
 8004402:	b28a      	uxth	r2, r1
 8004404:	1a9a      	subs	r2, r3, r2
 8004406:	0c0b      	lsrs	r3, r1, #16
 8004408:	fa12 f280 	uxtah	r2, r2, r0
 800440c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004410:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004414:	b292      	uxth	r2, r2
 8004416:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800441a:	45cb      	cmp	fp, r9
 800441c:	f845 2b04 	str.w	r2, [r5], #4
 8004420:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004424:	d2ea      	bcs.n	80043fc <quorem+0xc0>
 8004426:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800442a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800442e:	b97a      	cbnz	r2, 8004450 <quorem+0x114>
 8004430:	1f1a      	subs	r2, r3, #4
 8004432:	4592      	cmp	sl, r2
 8004434:	d20b      	bcs.n	800444e <quorem+0x112>
 8004436:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800443a:	b942      	cbnz	r2, 800444e <quorem+0x112>
 800443c:	3b08      	subs	r3, #8
 800443e:	e002      	b.n	8004446 <quorem+0x10a>
 8004440:	681a      	ldr	r2, [r3, #0]
 8004442:	3b04      	subs	r3, #4
 8004444:	b91a      	cbnz	r2, 800444e <quorem+0x112>
 8004446:	459a      	cmp	sl, r3
 8004448:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800444c:	d3f8      	bcc.n	8004440 <quorem+0x104>
 800444e:	6127      	str	r7, [r4, #16]
 8004450:	4640      	mov	r0, r8
 8004452:	b003      	add	sp, #12
 8004454:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004458:	2000      	movs	r0, #0
 800445a:	b003      	add	sp, #12
 800445c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004460 <_dtoa_r>:
 8004460:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004464:	ec55 4b10 	vmov	r4, r5, d0
 8004468:	b09b      	sub	sp, #108	; 0x6c
 800446a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800446c:	9102      	str	r1, [sp, #8]
 800446e:	4681      	mov	r9, r0
 8004470:	9207      	str	r2, [sp, #28]
 8004472:	9305      	str	r3, [sp, #20]
 8004474:	e9cd 4500 	strd	r4, r5, [sp]
 8004478:	b156      	cbz	r6, 8004490 <_dtoa_r+0x30>
 800447a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800447c:	6072      	str	r2, [r6, #4]
 800447e:	2301      	movs	r3, #1
 8004480:	4093      	lsls	r3, r2
 8004482:	60b3      	str	r3, [r6, #8]
 8004484:	4631      	mov	r1, r6
 8004486:	f001 ff07 	bl	8006298 <_Bfree>
 800448a:	2300      	movs	r3, #0
 800448c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004490:	f1b5 0800 	subs.w	r8, r5, #0
 8004494:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004496:	bfb4      	ite	lt
 8004498:	2301      	movlt	r3, #1
 800449a:	2300      	movge	r3, #0
 800449c:	6013      	str	r3, [r2, #0]
 800449e:	4b76      	ldr	r3, [pc, #472]	; (8004678 <_dtoa_r+0x218>)
 80044a0:	bfbc      	itt	lt
 80044a2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80044a6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80044aa:	ea33 0308 	bics.w	r3, r3, r8
 80044ae:	f000 80a6 	beq.w	80045fe <_dtoa_r+0x19e>
 80044b2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80044b6:	2200      	movs	r2, #0
 80044b8:	2300      	movs	r3, #0
 80044ba:	4630      	mov	r0, r6
 80044bc:	4639      	mov	r1, r7
 80044be:	f7fc fda3 	bl	8001008 <__aeabi_dcmpeq>
 80044c2:	4605      	mov	r5, r0
 80044c4:	b178      	cbz	r0, 80044e6 <_dtoa_r+0x86>
 80044c6:	9a05      	ldr	r2, [sp, #20]
 80044c8:	2301      	movs	r3, #1
 80044ca:	6013      	str	r3, [r2, #0]
 80044cc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80044ce:	2b00      	cmp	r3, #0
 80044d0:	f000 80c0 	beq.w	8004654 <_dtoa_r+0x1f4>
 80044d4:	4b69      	ldr	r3, [pc, #420]	; (800467c <_dtoa_r+0x21c>)
 80044d6:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80044d8:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80044dc:	6013      	str	r3, [r2, #0]
 80044de:	4658      	mov	r0, fp
 80044e0:	b01b      	add	sp, #108	; 0x6c
 80044e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80044e6:	aa18      	add	r2, sp, #96	; 0x60
 80044e8:	a919      	add	r1, sp, #100	; 0x64
 80044ea:	ec47 6b10 	vmov	d0, r6, r7
 80044ee:	4648      	mov	r0, r9
 80044f0:	f002 f954 	bl	800679c <__d2b>
 80044f4:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80044f8:	4682      	mov	sl, r0
 80044fa:	f040 80a0 	bne.w	800463e <_dtoa_r+0x1de>
 80044fe:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004502:	442c      	add	r4, r5
 8004504:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004508:	2b20      	cmp	r3, #32
 800450a:	f340 842c 	ble.w	8004d66 <_dtoa_r+0x906>
 800450e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004512:	fa08 f803 	lsl.w	r8, r8, r3
 8004516:	9b00      	ldr	r3, [sp, #0]
 8004518:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800451c:	fa23 f000 	lsr.w	r0, r3, r0
 8004520:	ea48 0000 	orr.w	r0, r8, r0
 8004524:	f7fc fa8e 	bl	8000a44 <__aeabi_ui2d>
 8004528:	2301      	movs	r3, #1
 800452a:	4606      	mov	r6, r0
 800452c:	3c01      	subs	r4, #1
 800452e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004532:	930f      	str	r3, [sp, #60]	; 0x3c
 8004534:	4630      	mov	r0, r6
 8004536:	4639      	mov	r1, r7
 8004538:	2200      	movs	r2, #0
 800453a:	4b51      	ldr	r3, [pc, #324]	; (8004680 <_dtoa_r+0x220>)
 800453c:	f7fc f944 	bl	80007c8 <__aeabi_dsub>
 8004540:	a347      	add	r3, pc, #284	; (adr r3, 8004660 <_dtoa_r+0x200>)
 8004542:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004546:	f7fc faf7 	bl	8000b38 <__aeabi_dmul>
 800454a:	a347      	add	r3, pc, #284	; (adr r3, 8004668 <_dtoa_r+0x208>)
 800454c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004550:	f7fc f93c 	bl	80007cc <__adddf3>
 8004554:	4606      	mov	r6, r0
 8004556:	4620      	mov	r0, r4
 8004558:	460f      	mov	r7, r1
 800455a:	f7fc fa83 	bl	8000a64 <__aeabi_i2d>
 800455e:	a344      	add	r3, pc, #272	; (adr r3, 8004670 <_dtoa_r+0x210>)
 8004560:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004564:	f7fc fae8 	bl	8000b38 <__aeabi_dmul>
 8004568:	4602      	mov	r2, r0
 800456a:	460b      	mov	r3, r1
 800456c:	4630      	mov	r0, r6
 800456e:	4639      	mov	r1, r7
 8004570:	f7fc f92c 	bl	80007cc <__adddf3>
 8004574:	4606      	mov	r6, r0
 8004576:	460f      	mov	r7, r1
 8004578:	f7fc fd8e 	bl	8001098 <__aeabi_d2iz>
 800457c:	2200      	movs	r2, #0
 800457e:	9006      	str	r0, [sp, #24]
 8004580:	2300      	movs	r3, #0
 8004582:	4630      	mov	r0, r6
 8004584:	4639      	mov	r1, r7
 8004586:	f7fc fd49 	bl	800101c <__aeabi_dcmplt>
 800458a:	2800      	cmp	r0, #0
 800458c:	f040 8273 	bne.w	8004a76 <_dtoa_r+0x616>
 8004590:	9e06      	ldr	r6, [sp, #24]
 8004592:	2e16      	cmp	r6, #22
 8004594:	f200 825d 	bhi.w	8004a52 <_dtoa_r+0x5f2>
 8004598:	4b3a      	ldr	r3, [pc, #232]	; (8004684 <_dtoa_r+0x224>)
 800459a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800459e:	e9d3 0100 	ldrd	r0, r1, [r3]
 80045a2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045a6:	f7fc fd57 	bl	8001058 <__aeabi_dcmpgt>
 80045aa:	2800      	cmp	r0, #0
 80045ac:	f000 83d7 	beq.w	8004d5e <_dtoa_r+0x8fe>
 80045b0:	1e73      	subs	r3, r6, #1
 80045b2:	9306      	str	r3, [sp, #24]
 80045b4:	2300      	movs	r3, #0
 80045b6:	930d      	str	r3, [sp, #52]	; 0x34
 80045b8:	1b2c      	subs	r4, r5, r4
 80045ba:	f1b4 0801 	subs.w	r8, r4, #1
 80045be:	f100 8254 	bmi.w	8004a6a <_dtoa_r+0x60a>
 80045c2:	2300      	movs	r3, #0
 80045c4:	9308      	str	r3, [sp, #32]
 80045c6:	9b06      	ldr	r3, [sp, #24]
 80045c8:	2b00      	cmp	r3, #0
 80045ca:	f2c0 8245 	blt.w	8004a58 <_dtoa_r+0x5f8>
 80045ce:	4498      	add	r8, r3
 80045d0:	930c      	str	r3, [sp, #48]	; 0x30
 80045d2:	2300      	movs	r3, #0
 80045d4:	930b      	str	r3, [sp, #44]	; 0x2c
 80045d6:	9b02      	ldr	r3, [sp, #8]
 80045d8:	2b09      	cmp	r3, #9
 80045da:	d85b      	bhi.n	8004694 <_dtoa_r+0x234>
 80045dc:	2b05      	cmp	r3, #5
 80045de:	f340 83c0 	ble.w	8004d62 <_dtoa_r+0x902>
 80045e2:	3b04      	subs	r3, #4
 80045e4:	9302      	str	r3, [sp, #8]
 80045e6:	2500      	movs	r5, #0
 80045e8:	9b02      	ldr	r3, [sp, #8]
 80045ea:	3b02      	subs	r3, #2
 80045ec:	2b03      	cmp	r3, #3
 80045ee:	f200 8498 	bhi.w	8004f22 <_dtoa_r+0xac2>
 80045f2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80045f6:	03df      	.short	0x03df
 80045f8:	03e803bf 	.word	0x03e803bf
 80045fc:	04f5      	.short	0x04f5
 80045fe:	9a05      	ldr	r2, [sp, #20]
 8004600:	f242 730f 	movw	r3, #9999	; 0x270f
 8004604:	6013      	str	r3, [r2, #0]
 8004606:	9b00      	ldr	r3, [sp, #0]
 8004608:	b983      	cbnz	r3, 800462c <_dtoa_r+0x1cc>
 800460a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800460e:	b96b      	cbnz	r3, 800462c <_dtoa_r+0x1cc>
 8004610:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004612:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004688 <_dtoa_r+0x228>
 8004616:	2b00      	cmp	r3, #0
 8004618:	f43f af61 	beq.w	80044de <_dtoa_r+0x7e>
 800461c:	f10b 0308 	add.w	r3, fp, #8
 8004620:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004622:	4658      	mov	r0, fp
 8004624:	6013      	str	r3, [r2, #0]
 8004626:	b01b      	add	sp, #108	; 0x6c
 8004628:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800462c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800462e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800468c <_dtoa_r+0x22c>
 8004632:	2b00      	cmp	r3, #0
 8004634:	f43f af53 	beq.w	80044de <_dtoa_r+0x7e>
 8004638:	f10b 0303 	add.w	r3, fp, #3
 800463c:	e7f0      	b.n	8004620 <_dtoa_r+0x1c0>
 800463e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004642:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004646:	950f      	str	r5, [sp, #60]	; 0x3c
 8004648:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800464c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004650:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004652:	e76f      	b.n	8004534 <_dtoa_r+0xd4>
 8004654:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004690 <_dtoa_r+0x230>
 8004658:	4658      	mov	r0, fp
 800465a:	b01b      	add	sp, #108	; 0x6c
 800465c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004660:	636f4361 	.word	0x636f4361
 8004664:	3fd287a7 	.word	0x3fd287a7
 8004668:	8b60c8b3 	.word	0x8b60c8b3
 800466c:	3fc68a28 	.word	0x3fc68a28
 8004670:	509f79fb 	.word	0x509f79fb
 8004674:	3fd34413 	.word	0x3fd34413
 8004678:	7ff00000 	.word	0x7ff00000
 800467c:	0800748d 	.word	0x0800748d
 8004680:	3ff80000 	.word	0x3ff80000
 8004684:	080074e8 	.word	0x080074e8
 8004688:	080074b0 	.word	0x080074b0
 800468c:	080074bc 	.word	0x080074bc
 8004690:	0800748c 	.word	0x0800748c
 8004694:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004698:	2501      	movs	r5, #1
 800469a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800469e:	2300      	movs	r3, #0
 80046a0:	9302      	str	r3, [sp, #8]
 80046a2:	9307      	str	r3, [sp, #28]
 80046a4:	2100      	movs	r1, #0
 80046a6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80046aa:	940e      	str	r4, [sp, #56]	; 0x38
 80046ac:	4648      	mov	r0, r9
 80046ae:	f001 fdcd 	bl	800624c <_Balloc>
 80046b2:	2c0e      	cmp	r4, #14
 80046b4:	4683      	mov	fp, r0
 80046b6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80046ba:	f200 80fb 	bhi.w	80048b4 <_dtoa_r+0x454>
 80046be:	2d00      	cmp	r5, #0
 80046c0:	f000 80f8 	beq.w	80048b4 <_dtoa_r+0x454>
 80046c4:	ed9d 7b00 	vldr	d7, [sp]
 80046c8:	9906      	ldr	r1, [sp, #24]
 80046ca:	2900      	cmp	r1, #0
 80046cc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80046d0:	f340 83e5 	ble.w	8004e9e <_dtoa_r+0xa3e>
 80046d4:	4b9d      	ldr	r3, [pc, #628]	; (800494c <_dtoa_r+0x4ec>)
 80046d6:	f001 020f 	and.w	r2, r1, #15
 80046da:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80046de:	ed93 7b00 	vldr	d7, [r3]
 80046e2:	110c      	asrs	r4, r1, #4
 80046e4:	06e2      	lsls	r2, r4, #27
 80046e6:	ed8d 7b00 	vstr	d7, [sp]
 80046ea:	f140 849e 	bpl.w	800502a <_dtoa_r+0xbca>
 80046ee:	4b98      	ldr	r3, [pc, #608]	; (8004950 <_dtoa_r+0x4f0>)
 80046f0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80046f4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80046f8:	f7fc fb48 	bl	8000d8c <__aeabi_ddiv>
 80046fc:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004700:	f004 040f 	and.w	r4, r4, #15
 8004704:	2603      	movs	r6, #3
 8004706:	b17c      	cbz	r4, 8004728 <_dtoa_r+0x2c8>
 8004708:	e9dd 0100 	ldrd	r0, r1, [sp]
 800470c:	4d90      	ldr	r5, [pc, #576]	; (8004950 <_dtoa_r+0x4f0>)
 800470e:	07e3      	lsls	r3, r4, #31
 8004710:	d504      	bpl.n	800471c <_dtoa_r+0x2bc>
 8004712:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004716:	f7fc fa0f 	bl	8000b38 <__aeabi_dmul>
 800471a:	3601      	adds	r6, #1
 800471c:	1064      	asrs	r4, r4, #1
 800471e:	f105 0508 	add.w	r5, r5, #8
 8004722:	d1f4      	bne.n	800470e <_dtoa_r+0x2ae>
 8004724:	e9cd 0100 	strd	r0, r1, [sp]
 8004728:	e9dd 2300 	ldrd	r2, r3, [sp]
 800472c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004730:	f7fc fb2c 	bl	8000d8c <__aeabi_ddiv>
 8004734:	e9cd 0100 	strd	r0, r1, [sp]
 8004738:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800473a:	b143      	cbz	r3, 800474e <_dtoa_r+0x2ee>
 800473c:	2200      	movs	r2, #0
 800473e:	4b85      	ldr	r3, [pc, #532]	; (8004954 <_dtoa_r+0x4f4>)
 8004740:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004744:	f7fc fc6a 	bl	800101c <__aeabi_dcmplt>
 8004748:	2800      	cmp	r0, #0
 800474a:	f040 84ff 	bne.w	800514c <_dtoa_r+0xcec>
 800474e:	4630      	mov	r0, r6
 8004750:	f7fc f988 	bl	8000a64 <__aeabi_i2d>
 8004754:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004758:	f7fc f9ee 	bl	8000b38 <__aeabi_dmul>
 800475c:	4b7e      	ldr	r3, [pc, #504]	; (8004958 <_dtoa_r+0x4f8>)
 800475e:	2200      	movs	r2, #0
 8004760:	f7fc f834 	bl	80007cc <__adddf3>
 8004764:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004766:	4606      	mov	r6, r0
 8004768:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800476c:	2b00      	cmp	r3, #0
 800476e:	f000 841c 	beq.w	8004faa <_dtoa_r+0xb4a>
 8004772:	9b06      	ldr	r3, [sp, #24]
 8004774:	9316      	str	r3, [sp, #88]	; 0x58
 8004776:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004778:	9312      	str	r3, [sp, #72]	; 0x48
 800477a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800477e:	f7fc fc8b 	bl	8001098 <__aeabi_d2iz>
 8004782:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004784:	4b71      	ldr	r3, [pc, #452]	; (800494c <_dtoa_r+0x4ec>)
 8004786:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800478a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800478e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004792:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004796:	f7fc f965 	bl	8000a64 <__aeabi_i2d>
 800479a:	460b      	mov	r3, r1
 800479c:	4602      	mov	r2, r0
 800479e:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047a2:	e9cd 6700 	strd	r6, r7, [sp]
 80047a6:	f7fc f80f 	bl	80007c8 <__aeabi_dsub>
 80047aa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047ac:	b2ed      	uxtb	r5, r5
 80047ae:	4606      	mov	r6, r0
 80047b0:	460f      	mov	r7, r1
 80047b2:	f10b 0401 	add.w	r4, fp, #1
 80047b6:	2b00      	cmp	r3, #0
 80047b8:	f000 8458 	beq.w	800506c <_dtoa_r+0xc0c>
 80047bc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80047c0:	2000      	movs	r0, #0
 80047c2:	4966      	ldr	r1, [pc, #408]	; (800495c <_dtoa_r+0x4fc>)
 80047c4:	f7fc fae2 	bl	8000d8c <__aeabi_ddiv>
 80047c8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80047cc:	f7fb fffc 	bl	80007c8 <__aeabi_dsub>
 80047d0:	f88b 5000 	strb.w	r5, [fp]
 80047d4:	4632      	mov	r2, r6
 80047d6:	463b      	mov	r3, r7
 80047d8:	e9cd 0100 	strd	r0, r1, [sp]
 80047dc:	f7fc fc3c 	bl	8001058 <__aeabi_dcmpgt>
 80047e0:	2800      	cmp	r0, #0
 80047e2:	f040 8502 	bne.w	80051ea <_dtoa_r+0xd8a>
 80047e6:	4632      	mov	r2, r6
 80047e8:	463b      	mov	r3, r7
 80047ea:	2000      	movs	r0, #0
 80047ec:	4959      	ldr	r1, [pc, #356]	; (8004954 <_dtoa_r+0x4f4>)
 80047ee:	f7fb ffeb 	bl	80007c8 <__aeabi_dsub>
 80047f2:	4602      	mov	r2, r0
 80047f4:	460b      	mov	r3, r1
 80047f6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047fa:	f7fc fc2d 	bl	8001058 <__aeabi_dcmpgt>
 80047fe:	2800      	cmp	r0, #0
 8004800:	f040 84fb 	bne.w	80051fa <_dtoa_r+0xd9a>
 8004804:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004806:	2a01      	cmp	r2, #1
 8004808:	d050      	beq.n	80048ac <_dtoa_r+0x44c>
 800480a:	445a      	add	r2, fp
 800480c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004810:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004814:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004818:	4692      	mov	sl, r2
 800481a:	46cb      	mov	fp, r9
 800481c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004820:	e00c      	b.n	800483c <_dtoa_r+0x3dc>
 8004822:	2000      	movs	r0, #0
 8004824:	494b      	ldr	r1, [pc, #300]	; (8004954 <_dtoa_r+0x4f4>)
 8004826:	f7fb ffcf 	bl	80007c8 <__aeabi_dsub>
 800482a:	4642      	mov	r2, r8
 800482c:	464b      	mov	r3, r9
 800482e:	f7fc fbf5 	bl	800101c <__aeabi_dcmplt>
 8004832:	2800      	cmp	r0, #0
 8004834:	f040 84dc 	bne.w	80051f0 <_dtoa_r+0xd90>
 8004838:	4554      	cmp	r4, sl
 800483a:	d030      	beq.n	800489e <_dtoa_r+0x43e>
 800483c:	4640      	mov	r0, r8
 800483e:	4649      	mov	r1, r9
 8004840:	2200      	movs	r2, #0
 8004842:	4b47      	ldr	r3, [pc, #284]	; (8004960 <_dtoa_r+0x500>)
 8004844:	f7fc f978 	bl	8000b38 <__aeabi_dmul>
 8004848:	2200      	movs	r2, #0
 800484a:	4b45      	ldr	r3, [pc, #276]	; (8004960 <_dtoa_r+0x500>)
 800484c:	4680      	mov	r8, r0
 800484e:	4689      	mov	r9, r1
 8004850:	4630      	mov	r0, r6
 8004852:	4639      	mov	r1, r7
 8004854:	f7fc f970 	bl	8000b38 <__aeabi_dmul>
 8004858:	460f      	mov	r7, r1
 800485a:	4606      	mov	r6, r0
 800485c:	f7fc fc1c 	bl	8001098 <__aeabi_d2iz>
 8004860:	4605      	mov	r5, r0
 8004862:	f7fc f8ff 	bl	8000a64 <__aeabi_i2d>
 8004866:	4602      	mov	r2, r0
 8004868:	460b      	mov	r3, r1
 800486a:	4630      	mov	r0, r6
 800486c:	4639      	mov	r1, r7
 800486e:	f7fb ffab 	bl	80007c8 <__aeabi_dsub>
 8004872:	3530      	adds	r5, #48	; 0x30
 8004874:	b2ed      	uxtb	r5, r5
 8004876:	4642      	mov	r2, r8
 8004878:	464b      	mov	r3, r9
 800487a:	f804 5b01 	strb.w	r5, [r4], #1
 800487e:	4606      	mov	r6, r0
 8004880:	460f      	mov	r7, r1
 8004882:	f7fc fbcb 	bl	800101c <__aeabi_dcmplt>
 8004886:	4632      	mov	r2, r6
 8004888:	463b      	mov	r3, r7
 800488a:	2800      	cmp	r0, #0
 800488c:	d0c9      	beq.n	8004822 <_dtoa_r+0x3c2>
 800488e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004890:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004894:	9306      	str	r3, [sp, #24]
 8004896:	46d9      	mov	r9, fp
 8004898:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800489c:	e236      	b.n	8004d0c <_dtoa_r+0x8ac>
 800489e:	46d9      	mov	r9, fp
 80048a0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80048a4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80048a8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80048ac:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80048b0:	e9cd 3400 	strd	r3, r4, [sp]
 80048b4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80048b6:	2b00      	cmp	r3, #0
 80048b8:	f2c0 80ae 	blt.w	8004a18 <_dtoa_r+0x5b8>
 80048bc:	9a06      	ldr	r2, [sp, #24]
 80048be:	2a0e      	cmp	r2, #14
 80048c0:	f300 80aa 	bgt.w	8004a18 <_dtoa_r+0x5b8>
 80048c4:	4b21      	ldr	r3, [pc, #132]	; (800494c <_dtoa_r+0x4ec>)
 80048c6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80048ca:	ed93 7b00 	vldr	d7, [r3]
 80048ce:	9b07      	ldr	r3, [sp, #28]
 80048d0:	2b00      	cmp	r3, #0
 80048d2:	ed8d 7b02 	vstr	d7, [sp, #8]
 80048d6:	f2c0 82be 	blt.w	8004e56 <_dtoa_r+0x9f6>
 80048da:	e9dd 6700 	ldrd	r6, r7, [sp]
 80048de:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048e2:	4630      	mov	r0, r6
 80048e4:	4639      	mov	r1, r7
 80048e6:	f7fc fa51 	bl	8000d8c <__aeabi_ddiv>
 80048ea:	f7fc fbd5 	bl	8001098 <__aeabi_d2iz>
 80048ee:	4605      	mov	r5, r0
 80048f0:	f7fc f8b8 	bl	8000a64 <__aeabi_i2d>
 80048f4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048f8:	f7fc f91e 	bl	8000b38 <__aeabi_dmul>
 80048fc:	460b      	mov	r3, r1
 80048fe:	4602      	mov	r2, r0
 8004900:	4639      	mov	r1, r7
 8004902:	4630      	mov	r0, r6
 8004904:	f7fb ff60 	bl	80007c8 <__aeabi_dsub>
 8004908:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800490c:	f88b 3000 	strb.w	r3, [fp]
 8004910:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004912:	2b01      	cmp	r3, #1
 8004914:	4606      	mov	r6, r0
 8004916:	460f      	mov	r7, r1
 8004918:	f10b 0401 	add.w	r4, fp, #1
 800491c:	d053      	beq.n	80049c6 <_dtoa_r+0x566>
 800491e:	2200      	movs	r2, #0
 8004920:	4b0f      	ldr	r3, [pc, #60]	; (8004960 <_dtoa_r+0x500>)
 8004922:	f7fc f909 	bl	8000b38 <__aeabi_dmul>
 8004926:	2200      	movs	r2, #0
 8004928:	2300      	movs	r3, #0
 800492a:	4606      	mov	r6, r0
 800492c:	460f      	mov	r7, r1
 800492e:	f7fc fb6b 	bl	8001008 <__aeabi_dcmpeq>
 8004932:	2800      	cmp	r0, #0
 8004934:	f040 81ea 	bne.w	8004d0c <_dtoa_r+0x8ac>
 8004938:	f8cd a000 	str.w	sl, [sp]
 800493c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004940:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004944:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004948:	e017      	b.n	800497a <_dtoa_r+0x51a>
 800494a:	bf00      	nop
 800494c:	080074e8 	.word	0x080074e8
 8004950:	080074c0 	.word	0x080074c0
 8004954:	3ff00000 	.word	0x3ff00000
 8004958:	401c0000 	.word	0x401c0000
 800495c:	3fe00000 	.word	0x3fe00000
 8004960:	40240000 	.word	0x40240000
 8004964:	f7fc f8e8 	bl	8000b38 <__aeabi_dmul>
 8004968:	2200      	movs	r2, #0
 800496a:	2300      	movs	r3, #0
 800496c:	4606      	mov	r6, r0
 800496e:	460f      	mov	r7, r1
 8004970:	f7fc fb4a 	bl	8001008 <__aeabi_dcmpeq>
 8004974:	2800      	cmp	r0, #0
 8004976:	f040 833d 	bne.w	8004ff4 <_dtoa_r+0xb94>
 800497a:	464a      	mov	r2, r9
 800497c:	4653      	mov	r3, sl
 800497e:	4630      	mov	r0, r6
 8004980:	4639      	mov	r1, r7
 8004982:	f7fc fa03 	bl	8000d8c <__aeabi_ddiv>
 8004986:	f7fc fb87 	bl	8001098 <__aeabi_d2iz>
 800498a:	4605      	mov	r5, r0
 800498c:	f7fc f86a 	bl	8000a64 <__aeabi_i2d>
 8004990:	464a      	mov	r2, r9
 8004992:	4653      	mov	r3, sl
 8004994:	f7fc f8d0 	bl	8000b38 <__aeabi_dmul>
 8004998:	4602      	mov	r2, r0
 800499a:	460b      	mov	r3, r1
 800499c:	4630      	mov	r0, r6
 800499e:	4639      	mov	r1, r7
 80049a0:	f7fb ff12 	bl	80007c8 <__aeabi_dsub>
 80049a4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80049a8:	f804 cb01 	strb.w	ip, [r4], #1
 80049ac:	eba4 0c0b 	sub.w	ip, r4, fp
 80049b0:	45e0      	cmp	r8, ip
 80049b2:	4606      	mov	r6, r0
 80049b4:	460f      	mov	r7, r1
 80049b6:	f04f 0200 	mov.w	r2, #0
 80049ba:	4bc1      	ldr	r3, [pc, #772]	; (8004cc0 <_dtoa_r+0x860>)
 80049bc:	d1d2      	bne.n	8004964 <_dtoa_r+0x504>
 80049be:	f8dd a000 	ldr.w	sl, [sp]
 80049c2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80049c6:	4632      	mov	r2, r6
 80049c8:	463b      	mov	r3, r7
 80049ca:	4630      	mov	r0, r6
 80049cc:	4639      	mov	r1, r7
 80049ce:	f7fb fefd 	bl	80007cc <__adddf3>
 80049d2:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80049d6:	4606      	mov	r6, r0
 80049d8:	460f      	mov	r7, r1
 80049da:	f7fc fb3d 	bl	8001058 <__aeabi_dcmpgt>
 80049de:	b958      	cbnz	r0, 80049f8 <_dtoa_r+0x598>
 80049e0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80049e4:	4630      	mov	r0, r6
 80049e6:	4639      	mov	r1, r7
 80049e8:	f7fc fb0e 	bl	8001008 <__aeabi_dcmpeq>
 80049ec:	2800      	cmp	r0, #0
 80049ee:	f000 818d 	beq.w	8004d0c <_dtoa_r+0x8ac>
 80049f2:	07e9      	lsls	r1, r5, #31
 80049f4:	f140 818a 	bpl.w	8004d0c <_dtoa_r+0x8ac>
 80049f8:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80049fc:	e005      	b.n	8004a0a <_dtoa_r+0x5aa>
 80049fe:	459b      	cmp	fp, r3
 8004a00:	f000 8373 	beq.w	80050ea <_dtoa_r+0xc8a>
 8004a04:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004a08:	461c      	mov	r4, r3
 8004a0a:	2d39      	cmp	r5, #57	; 0x39
 8004a0c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a10:	d0f5      	beq.n	80049fe <_dtoa_r+0x59e>
 8004a12:	3501      	adds	r5, #1
 8004a14:	701d      	strb	r5, [r3, #0]
 8004a16:	e179      	b.n	8004d0c <_dtoa_r+0x8ac>
 8004a18:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004a1a:	2a00      	cmp	r2, #0
 8004a1c:	d03b      	beq.n	8004a96 <_dtoa_r+0x636>
 8004a1e:	9a02      	ldr	r2, [sp, #8]
 8004a20:	2a01      	cmp	r2, #1
 8004a22:	f340 820b 	ble.w	8004e3c <_dtoa_r+0x9dc>
 8004a26:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a28:	1e5f      	subs	r7, r3, #1
 8004a2a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004a2c:	42bb      	cmp	r3, r7
 8004a2e:	f2c0 82e6 	blt.w	8004ffe <_dtoa_r+0xb9e>
 8004a32:	1bdf      	subs	r7, r3, r7
 8004a34:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a36:	2b00      	cmp	r3, #0
 8004a38:	f2c0 830b 	blt.w	8005052 <_dtoa_r+0xbf2>
 8004a3c:	9a08      	ldr	r2, [sp, #32]
 8004a3e:	4614      	mov	r4, r2
 8004a40:	441a      	add	r2, r3
 8004a42:	4498      	add	r8, r3
 8004a44:	9208      	str	r2, [sp, #32]
 8004a46:	2101      	movs	r1, #1
 8004a48:	4648      	mov	r0, r9
 8004a4a:	f001 fcbf 	bl	80063cc <__i2b>
 8004a4e:	4605      	mov	r5, r0
 8004a50:	e024      	b.n	8004a9c <_dtoa_r+0x63c>
 8004a52:	2301      	movs	r3, #1
 8004a54:	930d      	str	r3, [sp, #52]	; 0x34
 8004a56:	e5af      	b.n	80045b8 <_dtoa_r+0x158>
 8004a58:	9a08      	ldr	r2, [sp, #32]
 8004a5a:	9b06      	ldr	r3, [sp, #24]
 8004a5c:	1ad2      	subs	r2, r2, r3
 8004a5e:	425b      	negs	r3, r3
 8004a60:	930b      	str	r3, [sp, #44]	; 0x2c
 8004a62:	2300      	movs	r3, #0
 8004a64:	9208      	str	r2, [sp, #32]
 8004a66:	930c      	str	r3, [sp, #48]	; 0x30
 8004a68:	e5b5      	b.n	80045d6 <_dtoa_r+0x176>
 8004a6a:	f1c4 0301 	rsb	r3, r4, #1
 8004a6e:	9308      	str	r3, [sp, #32]
 8004a70:	f04f 0800 	mov.w	r8, #0
 8004a74:	e5a7      	b.n	80045c6 <_dtoa_r+0x166>
 8004a76:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004a7a:	4640      	mov	r0, r8
 8004a7c:	f7fb fff2 	bl	8000a64 <__aeabi_i2d>
 8004a80:	4632      	mov	r2, r6
 8004a82:	463b      	mov	r3, r7
 8004a84:	f7fc fac0 	bl	8001008 <__aeabi_dcmpeq>
 8004a88:	2800      	cmp	r0, #0
 8004a8a:	f47f ad81 	bne.w	8004590 <_dtoa_r+0x130>
 8004a8e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004a92:	9306      	str	r3, [sp, #24]
 8004a94:	e57c      	b.n	8004590 <_dtoa_r+0x130>
 8004a96:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004a98:	9c08      	ldr	r4, [sp, #32]
 8004a9a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004a9c:	2c00      	cmp	r4, #0
 8004a9e:	dd0c      	ble.n	8004aba <_dtoa_r+0x65a>
 8004aa0:	f1b8 0f00 	cmp.w	r8, #0
 8004aa4:	dd09      	ble.n	8004aba <_dtoa_r+0x65a>
 8004aa6:	4544      	cmp	r4, r8
 8004aa8:	9a08      	ldr	r2, [sp, #32]
 8004aaa:	4623      	mov	r3, r4
 8004aac:	bfa8      	it	ge
 8004aae:	4643      	movge	r3, r8
 8004ab0:	1ad2      	subs	r2, r2, r3
 8004ab2:	9208      	str	r2, [sp, #32]
 8004ab4:	1ae4      	subs	r4, r4, r3
 8004ab6:	eba8 0803 	sub.w	r8, r8, r3
 8004aba:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004abc:	b16b      	cbz	r3, 8004ada <_dtoa_r+0x67a>
 8004abe:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ac0:	2a00      	cmp	r2, #0
 8004ac2:	f000 8290 	beq.w	8004fe6 <_dtoa_r+0xb86>
 8004ac6:	1bde      	subs	r6, r3, r7
 8004ac8:	2f00      	cmp	r7, #0
 8004aca:	f040 819b 	bne.w	8004e04 <_dtoa_r+0x9a4>
 8004ace:	4651      	mov	r1, sl
 8004ad0:	4632      	mov	r2, r6
 8004ad2:	4648      	mov	r0, r9
 8004ad4:	f001 fd2a 	bl	800652c <__pow5mult>
 8004ad8:	4682      	mov	sl, r0
 8004ada:	2101      	movs	r1, #1
 8004adc:	4648      	mov	r0, r9
 8004ade:	f001 fc75 	bl	80063cc <__i2b>
 8004ae2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004ae4:	4606      	mov	r6, r0
 8004ae6:	2a00      	cmp	r2, #0
 8004ae8:	f040 8125 	bne.w	8004d36 <_dtoa_r+0x8d6>
 8004aec:	9b02      	ldr	r3, [sp, #8]
 8004aee:	2b01      	cmp	r3, #1
 8004af0:	f340 816c 	ble.w	8004dcc <_dtoa_r+0x96c>
 8004af4:	2001      	movs	r0, #1
 8004af6:	4440      	add	r0, r8
 8004af8:	f010 001f 	ands.w	r0, r0, #31
 8004afc:	f000 8119 	beq.w	8004d32 <_dtoa_r+0x8d2>
 8004b00:	f1c0 0320 	rsb	r3, r0, #32
 8004b04:	2b04      	cmp	r3, #4
 8004b06:	f340 83ac 	ble.w	8005262 <_dtoa_r+0xe02>
 8004b0a:	f1c0 001c 	rsb	r0, r0, #28
 8004b0e:	9b08      	ldr	r3, [sp, #32]
 8004b10:	4403      	add	r3, r0
 8004b12:	9308      	str	r3, [sp, #32]
 8004b14:	4404      	add	r4, r0
 8004b16:	4480      	add	r8, r0
 8004b18:	9b08      	ldr	r3, [sp, #32]
 8004b1a:	2b00      	cmp	r3, #0
 8004b1c:	dd05      	ble.n	8004b2a <_dtoa_r+0x6ca>
 8004b1e:	4651      	mov	r1, sl
 8004b20:	461a      	mov	r2, r3
 8004b22:	4648      	mov	r0, r9
 8004b24:	f001 fd52 	bl	80065cc <__lshift>
 8004b28:	4682      	mov	sl, r0
 8004b2a:	f1b8 0f00 	cmp.w	r8, #0
 8004b2e:	dd05      	ble.n	8004b3c <_dtoa_r+0x6dc>
 8004b30:	4631      	mov	r1, r6
 8004b32:	4642      	mov	r2, r8
 8004b34:	4648      	mov	r0, r9
 8004b36:	f001 fd49 	bl	80065cc <__lshift>
 8004b3a:	4606      	mov	r6, r0
 8004b3c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004b3e:	2b00      	cmp	r3, #0
 8004b40:	d177      	bne.n	8004c32 <_dtoa_r+0x7d2>
 8004b42:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b44:	2b00      	cmp	r3, #0
 8004b46:	f340 8209 	ble.w	8004f5c <_dtoa_r+0xafc>
 8004b4a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b4c:	2b00      	cmp	r3, #0
 8004b4e:	f000 8089 	beq.w	8004c64 <_dtoa_r+0x804>
 8004b52:	2c00      	cmp	r4, #0
 8004b54:	f300 816b 	bgt.w	8004e2e <_dtoa_r+0x9ce>
 8004b58:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004b5a:	2b00      	cmp	r3, #0
 8004b5c:	f040 81cd 	bne.w	8004efa <_dtoa_r+0xa9a>
 8004b60:	46a8      	mov	r8, r5
 8004b62:	9a00      	ldr	r2, [sp, #0]
 8004b64:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004b68:	f002 0201 	and.w	r2, r2, #1
 8004b6c:	920a      	str	r2, [sp, #40]	; 0x28
 8004b6e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004b70:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004b74:	441a      	add	r2, r3
 8004b76:	465f      	mov	r7, fp
 8004b78:	9209      	str	r2, [sp, #36]	; 0x24
 8004b7a:	46b3      	mov	fp, r6
 8004b7c:	4659      	mov	r1, fp
 8004b7e:	4650      	mov	r0, sl
 8004b80:	f7ff fbdc 	bl	800433c <quorem>
 8004b84:	4629      	mov	r1, r5
 8004b86:	4604      	mov	r4, r0
 8004b88:	4650      	mov	r0, sl
 8004b8a:	f001 fd75 	bl	8006678 <__mcmp>
 8004b8e:	4659      	mov	r1, fp
 8004b90:	4606      	mov	r6, r0
 8004b92:	4642      	mov	r2, r8
 8004b94:	4648      	mov	r0, r9
 8004b96:	f001 fd8b 	bl	80066b0 <__mdiff>
 8004b9a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004b9e:	9300      	str	r3, [sp, #0]
 8004ba0:	68c3      	ldr	r3, [r0, #12]
 8004ba2:	4601      	mov	r1, r0
 8004ba4:	2b00      	cmp	r3, #0
 8004ba6:	f040 81d4 	bne.w	8004f52 <_dtoa_r+0xaf2>
 8004baa:	9008      	str	r0, [sp, #32]
 8004bac:	4650      	mov	r0, sl
 8004bae:	f001 fd63 	bl	8006678 <__mcmp>
 8004bb2:	9a08      	ldr	r2, [sp, #32]
 8004bb4:	9007      	str	r0, [sp, #28]
 8004bb6:	4611      	mov	r1, r2
 8004bb8:	4648      	mov	r0, r9
 8004bba:	f001 fb6d 	bl	8006298 <_Bfree>
 8004bbe:	9b07      	ldr	r3, [sp, #28]
 8004bc0:	b933      	cbnz	r3, 8004bd0 <_dtoa_r+0x770>
 8004bc2:	9a02      	ldr	r2, [sp, #8]
 8004bc4:	b922      	cbnz	r2, 8004bd0 <_dtoa_r+0x770>
 8004bc6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004bc8:	2b00      	cmp	r3, #0
 8004bca:	f000 8319 	beq.w	8005200 <_dtoa_r+0xda0>
 8004bce:	9b02      	ldr	r3, [sp, #8]
 8004bd0:	2e00      	cmp	r6, #0
 8004bd2:	f2c0 821c 	blt.w	800500e <_dtoa_r+0xbae>
 8004bd6:	d105      	bne.n	8004be4 <_dtoa_r+0x784>
 8004bd8:	9a02      	ldr	r2, [sp, #8]
 8004bda:	b91a      	cbnz	r2, 8004be4 <_dtoa_r+0x784>
 8004bdc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004bde:	2a00      	cmp	r2, #0
 8004be0:	f000 8215 	beq.w	800500e <_dtoa_r+0xbae>
 8004be4:	2b00      	cmp	r3, #0
 8004be6:	f107 0401 	add.w	r4, r7, #1
 8004bea:	f300 8225 	bgt.w	8005038 <_dtoa_r+0xbd8>
 8004bee:	9b00      	ldr	r3, [sp, #0]
 8004bf0:	703b      	strb	r3, [r7, #0]
 8004bf2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bf4:	42bb      	cmp	r3, r7
 8004bf6:	f000 8230 	beq.w	800505a <_dtoa_r+0xbfa>
 8004bfa:	4651      	mov	r1, sl
 8004bfc:	2300      	movs	r3, #0
 8004bfe:	220a      	movs	r2, #10
 8004c00:	4648      	mov	r0, r9
 8004c02:	f001 fb53 	bl	80062ac <__multadd>
 8004c06:	4545      	cmp	r5, r8
 8004c08:	4682      	mov	sl, r0
 8004c0a:	4629      	mov	r1, r5
 8004c0c:	f04f 0300 	mov.w	r3, #0
 8004c10:	f04f 020a 	mov.w	r2, #10
 8004c14:	4648      	mov	r0, r9
 8004c16:	f000 8196 	beq.w	8004f46 <_dtoa_r+0xae6>
 8004c1a:	f001 fb47 	bl	80062ac <__multadd>
 8004c1e:	4641      	mov	r1, r8
 8004c20:	4605      	mov	r5, r0
 8004c22:	2300      	movs	r3, #0
 8004c24:	220a      	movs	r2, #10
 8004c26:	4648      	mov	r0, r9
 8004c28:	f001 fb40 	bl	80062ac <__multadd>
 8004c2c:	4627      	mov	r7, r4
 8004c2e:	4680      	mov	r8, r0
 8004c30:	e7a4      	b.n	8004b7c <_dtoa_r+0x71c>
 8004c32:	4631      	mov	r1, r6
 8004c34:	4650      	mov	r0, sl
 8004c36:	f001 fd1f 	bl	8006678 <__mcmp>
 8004c3a:	2800      	cmp	r0, #0
 8004c3c:	da81      	bge.n	8004b42 <_dtoa_r+0x6e2>
 8004c3e:	9f06      	ldr	r7, [sp, #24]
 8004c40:	4651      	mov	r1, sl
 8004c42:	2300      	movs	r3, #0
 8004c44:	220a      	movs	r2, #10
 8004c46:	4648      	mov	r0, r9
 8004c48:	3f01      	subs	r7, #1
 8004c4a:	9706      	str	r7, [sp, #24]
 8004c4c:	f001 fb2e 	bl	80062ac <__multadd>
 8004c50:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004c52:	4682      	mov	sl, r0
 8004c54:	2b00      	cmp	r3, #0
 8004c56:	f040 82eb 	bne.w	8005230 <_dtoa_r+0xdd0>
 8004c5a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004c5c:	2b00      	cmp	r3, #0
 8004c5e:	f340 82f3 	ble.w	8005248 <_dtoa_r+0xde8>
 8004c62:	9309      	str	r3, [sp, #36]	; 0x24
 8004c64:	465c      	mov	r4, fp
 8004c66:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004c6a:	e002      	b.n	8004c72 <_dtoa_r+0x812>
 8004c6c:	f001 fb1e 	bl	80062ac <__multadd>
 8004c70:	4682      	mov	sl, r0
 8004c72:	4631      	mov	r1, r6
 8004c74:	4650      	mov	r0, sl
 8004c76:	f7ff fb61 	bl	800433c <quorem>
 8004c7a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004c7e:	f804 7b01 	strb.w	r7, [r4], #1
 8004c82:	eba4 030b 	sub.w	r3, r4, fp
 8004c86:	4598      	cmp	r8, r3
 8004c88:	f04f 020a 	mov.w	r2, #10
 8004c8c:	f04f 0300 	mov.w	r3, #0
 8004c90:	4651      	mov	r1, sl
 8004c92:	4648      	mov	r0, r9
 8004c94:	dcea      	bgt.n	8004c6c <_dtoa_r+0x80c>
 8004c96:	2300      	movs	r3, #0
 8004c98:	9700      	str	r7, [sp, #0]
 8004c9a:	9302      	str	r3, [sp, #8]
 8004c9c:	4651      	mov	r1, sl
 8004c9e:	2201      	movs	r2, #1
 8004ca0:	4648      	mov	r0, r9
 8004ca2:	f001 fc93 	bl	80065cc <__lshift>
 8004ca6:	4631      	mov	r1, r6
 8004ca8:	4682      	mov	sl, r0
 8004caa:	f001 fce5 	bl	8006678 <__mcmp>
 8004cae:	2800      	cmp	r0, #0
 8004cb0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004cb4:	dc14      	bgt.n	8004ce0 <_dtoa_r+0x880>
 8004cb6:	d108      	bne.n	8004cca <_dtoa_r+0x86a>
 8004cb8:	9b00      	ldr	r3, [sp, #0]
 8004cba:	07db      	lsls	r3, r3, #31
 8004cbc:	d410      	bmi.n	8004ce0 <_dtoa_r+0x880>
 8004cbe:	e004      	b.n	8004cca <_dtoa_r+0x86a>
 8004cc0:	40240000 	.word	0x40240000
 8004cc4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004cc8:	461c      	mov	r4, r3
 8004cca:	2a30      	cmp	r2, #48	; 0x30
 8004ccc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004cd0:	d0f8      	beq.n	8004cc4 <_dtoa_r+0x864>
 8004cd2:	e00b      	b.n	8004cec <_dtoa_r+0x88c>
 8004cd4:	459b      	cmp	fp, r3
 8004cd6:	f000 814e 	beq.w	8004f76 <_dtoa_r+0xb16>
 8004cda:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004cde:	461c      	mov	r4, r3
 8004ce0:	2a39      	cmp	r2, #57	; 0x39
 8004ce2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ce6:	d0f5      	beq.n	8004cd4 <_dtoa_r+0x874>
 8004ce8:	3201      	adds	r2, #1
 8004cea:	701a      	strb	r2, [r3, #0]
 8004cec:	4631      	mov	r1, r6
 8004cee:	4648      	mov	r0, r9
 8004cf0:	f001 fad2 	bl	8006298 <_Bfree>
 8004cf4:	b155      	cbz	r5, 8004d0c <_dtoa_r+0x8ac>
 8004cf6:	9902      	ldr	r1, [sp, #8]
 8004cf8:	b121      	cbz	r1, 8004d04 <_dtoa_r+0x8a4>
 8004cfa:	42a9      	cmp	r1, r5
 8004cfc:	d002      	beq.n	8004d04 <_dtoa_r+0x8a4>
 8004cfe:	4648      	mov	r0, r9
 8004d00:	f001 faca 	bl	8006298 <_Bfree>
 8004d04:	4629      	mov	r1, r5
 8004d06:	4648      	mov	r0, r9
 8004d08:	f001 fac6 	bl	8006298 <_Bfree>
 8004d0c:	4651      	mov	r1, sl
 8004d0e:	4648      	mov	r0, r9
 8004d10:	f001 fac2 	bl	8006298 <_Bfree>
 8004d14:	2200      	movs	r2, #0
 8004d16:	9b06      	ldr	r3, [sp, #24]
 8004d18:	7022      	strb	r2, [r4, #0]
 8004d1a:	9a05      	ldr	r2, [sp, #20]
 8004d1c:	3301      	adds	r3, #1
 8004d1e:	6013      	str	r3, [r2, #0]
 8004d20:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004d22:	2b00      	cmp	r3, #0
 8004d24:	f43f abdb 	beq.w	80044de <_dtoa_r+0x7e>
 8004d28:	4658      	mov	r0, fp
 8004d2a:	601c      	str	r4, [r3, #0]
 8004d2c:	b01b      	add	sp, #108	; 0x6c
 8004d2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d32:	201c      	movs	r0, #28
 8004d34:	e6eb      	b.n	8004b0e <_dtoa_r+0x6ae>
 8004d36:	4601      	mov	r1, r0
 8004d38:	4648      	mov	r0, r9
 8004d3a:	f001 fbf7 	bl	800652c <__pow5mult>
 8004d3e:	9b02      	ldr	r3, [sp, #8]
 8004d40:	2b01      	cmp	r3, #1
 8004d42:	4606      	mov	r6, r0
 8004d44:	f340 80d4 	ble.w	8004ef0 <_dtoa_r+0xa90>
 8004d48:	2300      	movs	r3, #0
 8004d4a:	930c      	str	r3, [sp, #48]	; 0x30
 8004d4c:	6933      	ldr	r3, [r6, #16]
 8004d4e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004d52:	6918      	ldr	r0, [r3, #16]
 8004d54:	f001 faea 	bl	800632c <__hi0bits>
 8004d58:	f1c0 0020 	rsb	r0, r0, #32
 8004d5c:	e6cb      	b.n	8004af6 <_dtoa_r+0x696>
 8004d5e:	900d      	str	r0, [sp, #52]	; 0x34
 8004d60:	e42a      	b.n	80045b8 <_dtoa_r+0x158>
 8004d62:	2501      	movs	r5, #1
 8004d64:	e440      	b.n	80045e8 <_dtoa_r+0x188>
 8004d66:	f1c3 0820 	rsb	r8, r3, #32
 8004d6a:	9b00      	ldr	r3, [sp, #0]
 8004d6c:	fa03 f008 	lsl.w	r0, r3, r8
 8004d70:	f7ff bbd8 	b.w	8004524 <_dtoa_r+0xc4>
 8004d74:	2300      	movs	r3, #0
 8004d76:	930a      	str	r3, [sp, #40]	; 0x28
 8004d78:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004d7c:	4413      	add	r3, r2
 8004d7e:	930e      	str	r3, [sp, #56]	; 0x38
 8004d80:	3301      	adds	r3, #1
 8004d82:	2b01      	cmp	r3, #1
 8004d84:	461e      	mov	r6, r3
 8004d86:	9309      	str	r3, [sp, #36]	; 0x24
 8004d88:	bfb8      	it	lt
 8004d8a:	2601      	movlt	r6, #1
 8004d8c:	2100      	movs	r1, #0
 8004d8e:	2e17      	cmp	r6, #23
 8004d90:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004d94:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004d96:	f77f ac89 	ble.w	80046ac <_dtoa_r+0x24c>
 8004d9a:	2201      	movs	r2, #1
 8004d9c:	2304      	movs	r3, #4
 8004d9e:	005b      	lsls	r3, r3, #1
 8004da0:	f103 0014 	add.w	r0, r3, #20
 8004da4:	42b0      	cmp	r0, r6
 8004da6:	4611      	mov	r1, r2
 8004da8:	f102 0201 	add.w	r2, r2, #1
 8004dac:	d9f7      	bls.n	8004d9e <_dtoa_r+0x93e>
 8004dae:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004db2:	e47b      	b.n	80046ac <_dtoa_r+0x24c>
 8004db4:	2300      	movs	r3, #0
 8004db6:	930a      	str	r3, [sp, #40]	; 0x28
 8004db8:	9e07      	ldr	r6, [sp, #28]
 8004dba:	2e00      	cmp	r6, #0
 8004dbc:	f340 80e2 	ble.w	8004f84 <_dtoa_r+0xb24>
 8004dc0:	960e      	str	r6, [sp, #56]	; 0x38
 8004dc2:	9609      	str	r6, [sp, #36]	; 0x24
 8004dc4:	e7e2      	b.n	8004d8c <_dtoa_r+0x92c>
 8004dc6:	2301      	movs	r3, #1
 8004dc8:	930a      	str	r3, [sp, #40]	; 0x28
 8004dca:	e7f5      	b.n	8004db8 <_dtoa_r+0x958>
 8004dcc:	9b00      	ldr	r3, [sp, #0]
 8004dce:	2b00      	cmp	r3, #0
 8004dd0:	f47f ae90 	bne.w	8004af4 <_dtoa_r+0x694>
 8004dd4:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004dd8:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004ddc:	2b00      	cmp	r3, #0
 8004dde:	f040 8192 	bne.w	8005106 <_dtoa_r+0xca6>
 8004de2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004de6:	0d1b      	lsrs	r3, r3, #20
 8004de8:	051b      	lsls	r3, r3, #20
 8004dea:	b12b      	cbz	r3, 8004df8 <_dtoa_r+0x998>
 8004dec:	9b08      	ldr	r3, [sp, #32]
 8004dee:	3301      	adds	r3, #1
 8004df0:	9308      	str	r3, [sp, #32]
 8004df2:	f108 0801 	add.w	r8, r8, #1
 8004df6:	2301      	movs	r3, #1
 8004df8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004dfa:	930c      	str	r3, [sp, #48]	; 0x30
 8004dfc:	2a00      	cmp	r2, #0
 8004dfe:	f43f ae79 	beq.w	8004af4 <_dtoa_r+0x694>
 8004e02:	e7a3      	b.n	8004d4c <_dtoa_r+0x8ec>
 8004e04:	463a      	mov	r2, r7
 8004e06:	4629      	mov	r1, r5
 8004e08:	4648      	mov	r0, r9
 8004e0a:	f001 fb8f 	bl	800652c <__pow5mult>
 8004e0e:	4652      	mov	r2, sl
 8004e10:	4601      	mov	r1, r0
 8004e12:	4605      	mov	r5, r0
 8004e14:	4648      	mov	r0, r9
 8004e16:	f001 fae3 	bl	80063e0 <__multiply>
 8004e1a:	4651      	mov	r1, sl
 8004e1c:	4607      	mov	r7, r0
 8004e1e:	4648      	mov	r0, r9
 8004e20:	f001 fa3a 	bl	8006298 <_Bfree>
 8004e24:	46ba      	mov	sl, r7
 8004e26:	2e00      	cmp	r6, #0
 8004e28:	f43f ae57 	beq.w	8004ada <_dtoa_r+0x67a>
 8004e2c:	e64f      	b.n	8004ace <_dtoa_r+0x66e>
 8004e2e:	4629      	mov	r1, r5
 8004e30:	4622      	mov	r2, r4
 8004e32:	4648      	mov	r0, r9
 8004e34:	f001 fbca 	bl	80065cc <__lshift>
 8004e38:	4605      	mov	r5, r0
 8004e3a:	e68d      	b.n	8004b58 <_dtoa_r+0x6f8>
 8004e3c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004e3e:	2a00      	cmp	r2, #0
 8004e40:	f000 815d 	beq.w	80050fe <_dtoa_r+0xc9e>
 8004e44:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004e48:	9a08      	ldr	r2, [sp, #32]
 8004e4a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004e4c:	4614      	mov	r4, r2
 8004e4e:	441a      	add	r2, r3
 8004e50:	4498      	add	r8, r3
 8004e52:	9208      	str	r2, [sp, #32]
 8004e54:	e5f7      	b.n	8004a46 <_dtoa_r+0x5e6>
 8004e56:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e58:	2b00      	cmp	r3, #0
 8004e5a:	f73f ad3e 	bgt.w	80048da <_dtoa_r+0x47a>
 8004e5e:	f040 80bc 	bne.w	8004fda <_dtoa_r+0xb7a>
 8004e62:	ec51 0b17 	vmov	r0, r1, d7
 8004e66:	2200      	movs	r2, #0
 8004e68:	4bb2      	ldr	r3, [pc, #712]	; (8005134 <_dtoa_r+0xcd4>)
 8004e6a:	f7fb fe65 	bl	8000b38 <__aeabi_dmul>
 8004e6e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e72:	f7fc f8e7 	bl	8001044 <__aeabi_dcmpge>
 8004e76:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004e78:	4635      	mov	r5, r6
 8004e7a:	2800      	cmp	r0, #0
 8004e7c:	d176      	bne.n	8004f6c <_dtoa_r+0xb0c>
 8004e7e:	9a06      	ldr	r2, [sp, #24]
 8004e80:	2331      	movs	r3, #49	; 0x31
 8004e82:	3201      	adds	r2, #1
 8004e84:	9206      	str	r2, [sp, #24]
 8004e86:	f88b 3000 	strb.w	r3, [fp]
 8004e8a:	f10b 0401 	add.w	r4, fp, #1
 8004e8e:	4631      	mov	r1, r6
 8004e90:	4648      	mov	r0, r9
 8004e92:	f001 fa01 	bl	8006298 <_Bfree>
 8004e96:	2d00      	cmp	r5, #0
 8004e98:	f47f af34 	bne.w	8004d04 <_dtoa_r+0x8a4>
 8004e9c:	e736      	b.n	8004d0c <_dtoa_r+0x8ac>
 8004e9e:	f000 8142 	beq.w	8005126 <_dtoa_r+0xcc6>
 8004ea2:	9b06      	ldr	r3, [sp, #24]
 8004ea4:	425c      	negs	r4, r3
 8004ea6:	4ba4      	ldr	r3, [pc, #656]	; (8005138 <_dtoa_r+0xcd8>)
 8004ea8:	f004 020f 	and.w	r2, r4, #15
 8004eac:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004eb0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004eb4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004eb8:	f7fb fe3e 	bl	8000b38 <__aeabi_dmul>
 8004ebc:	1124      	asrs	r4, r4, #4
 8004ebe:	e9cd 0100 	strd	r0, r1, [sp]
 8004ec2:	f000 81c6 	beq.w	8005252 <_dtoa_r+0xdf2>
 8004ec6:	4d9d      	ldr	r5, [pc, #628]	; (800513c <_dtoa_r+0xcdc>)
 8004ec8:	2300      	movs	r3, #0
 8004eca:	2602      	movs	r6, #2
 8004ecc:	07e7      	lsls	r7, r4, #31
 8004ece:	d505      	bpl.n	8004edc <_dtoa_r+0xa7c>
 8004ed0:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004ed4:	f7fb fe30 	bl	8000b38 <__aeabi_dmul>
 8004ed8:	3601      	adds	r6, #1
 8004eda:	2301      	movs	r3, #1
 8004edc:	1064      	asrs	r4, r4, #1
 8004ede:	f105 0508 	add.w	r5, r5, #8
 8004ee2:	d1f3      	bne.n	8004ecc <_dtoa_r+0xa6c>
 8004ee4:	2b00      	cmp	r3, #0
 8004ee6:	f43f ac27 	beq.w	8004738 <_dtoa_r+0x2d8>
 8004eea:	e9cd 0100 	strd	r0, r1, [sp]
 8004eee:	e423      	b.n	8004738 <_dtoa_r+0x2d8>
 8004ef0:	9b00      	ldr	r3, [sp, #0]
 8004ef2:	2b00      	cmp	r3, #0
 8004ef4:	f43f af6e 	beq.w	8004dd4 <_dtoa_r+0x974>
 8004ef8:	e726      	b.n	8004d48 <_dtoa_r+0x8e8>
 8004efa:	6869      	ldr	r1, [r5, #4]
 8004efc:	4648      	mov	r0, r9
 8004efe:	f001 f9a5 	bl	800624c <_Balloc>
 8004f02:	692b      	ldr	r3, [r5, #16]
 8004f04:	3302      	adds	r3, #2
 8004f06:	009a      	lsls	r2, r3, #2
 8004f08:	4604      	mov	r4, r0
 8004f0a:	f105 010c 	add.w	r1, r5, #12
 8004f0e:	300c      	adds	r0, #12
 8004f10:	f7fb faf6 	bl	8000500 <memcpy>
 8004f14:	4621      	mov	r1, r4
 8004f16:	2201      	movs	r2, #1
 8004f18:	4648      	mov	r0, r9
 8004f1a:	f001 fb57 	bl	80065cc <__lshift>
 8004f1e:	4680      	mov	r8, r0
 8004f20:	e61f      	b.n	8004b62 <_dtoa_r+0x702>
 8004f22:	2400      	movs	r4, #0
 8004f24:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004f28:	4621      	mov	r1, r4
 8004f2a:	4648      	mov	r0, r9
 8004f2c:	f001 f98e 	bl	800624c <_Balloc>
 8004f30:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004f34:	930e      	str	r3, [sp, #56]	; 0x38
 8004f36:	9309      	str	r3, [sp, #36]	; 0x24
 8004f38:	2301      	movs	r3, #1
 8004f3a:	4683      	mov	fp, r0
 8004f3c:	9407      	str	r4, [sp, #28]
 8004f3e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004f42:	930a      	str	r3, [sp, #40]	; 0x28
 8004f44:	e4b6      	b.n	80048b4 <_dtoa_r+0x454>
 8004f46:	f001 f9b1 	bl	80062ac <__multadd>
 8004f4a:	4627      	mov	r7, r4
 8004f4c:	4605      	mov	r5, r0
 8004f4e:	4680      	mov	r8, r0
 8004f50:	e614      	b.n	8004b7c <_dtoa_r+0x71c>
 8004f52:	4648      	mov	r0, r9
 8004f54:	f001 f9a0 	bl	8006298 <_Bfree>
 8004f58:	2301      	movs	r3, #1
 8004f5a:	e639      	b.n	8004bd0 <_dtoa_r+0x770>
 8004f5c:	9b02      	ldr	r3, [sp, #8]
 8004f5e:	2b02      	cmp	r3, #2
 8004f60:	f77f adf3 	ble.w	8004b4a <_dtoa_r+0x6ea>
 8004f64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f66:	2b00      	cmp	r3, #0
 8004f68:	f000 80cf 	beq.w	800510a <_dtoa_r+0xcaa>
 8004f6c:	9b07      	ldr	r3, [sp, #28]
 8004f6e:	43db      	mvns	r3, r3
 8004f70:	9306      	str	r3, [sp, #24]
 8004f72:	465c      	mov	r4, fp
 8004f74:	e78b      	b.n	8004e8e <_dtoa_r+0xa2e>
 8004f76:	9a06      	ldr	r2, [sp, #24]
 8004f78:	2331      	movs	r3, #49	; 0x31
 8004f7a:	3201      	adds	r2, #1
 8004f7c:	9206      	str	r2, [sp, #24]
 8004f7e:	f88b 3000 	strb.w	r3, [fp]
 8004f82:	e6b3      	b.n	8004cec <_dtoa_r+0x88c>
 8004f84:	2401      	movs	r4, #1
 8004f86:	9409      	str	r4, [sp, #36]	; 0x24
 8004f88:	9407      	str	r4, [sp, #28]
 8004f8a:	f7ff bb8b 	b.w	80046a4 <_dtoa_r+0x244>
 8004f8e:	4630      	mov	r0, r6
 8004f90:	f7fb fd68 	bl	8000a64 <__aeabi_i2d>
 8004f94:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f98:	f7fb fdce 	bl	8000b38 <__aeabi_dmul>
 8004f9c:	2200      	movs	r2, #0
 8004f9e:	4b68      	ldr	r3, [pc, #416]	; (8005140 <_dtoa_r+0xce0>)
 8004fa0:	f7fb fc14 	bl	80007cc <__adddf3>
 8004fa4:	4606      	mov	r6, r0
 8004fa6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004faa:	2200      	movs	r2, #0
 8004fac:	4b61      	ldr	r3, [pc, #388]	; (8005134 <_dtoa_r+0xcd4>)
 8004fae:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004fb2:	f7fb fc09 	bl	80007c8 <__aeabi_dsub>
 8004fb6:	4632      	mov	r2, r6
 8004fb8:	463b      	mov	r3, r7
 8004fba:	4604      	mov	r4, r0
 8004fbc:	460d      	mov	r5, r1
 8004fbe:	f7fc f84b 	bl	8001058 <__aeabi_dcmpgt>
 8004fc2:	2800      	cmp	r0, #0
 8004fc4:	d14f      	bne.n	8005066 <_dtoa_r+0xc06>
 8004fc6:	4632      	mov	r2, r6
 8004fc8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004fcc:	4620      	mov	r0, r4
 8004fce:	4629      	mov	r1, r5
 8004fd0:	f7fc f824 	bl	800101c <__aeabi_dcmplt>
 8004fd4:	2800      	cmp	r0, #0
 8004fd6:	f43f ac69 	beq.w	80048ac <_dtoa_r+0x44c>
 8004fda:	2600      	movs	r6, #0
 8004fdc:	4635      	mov	r5, r6
 8004fde:	e7c5      	b.n	8004f6c <_dtoa_r+0xb0c>
 8004fe0:	2301      	movs	r3, #1
 8004fe2:	930a      	str	r3, [sp, #40]	; 0x28
 8004fe4:	e6c8      	b.n	8004d78 <_dtoa_r+0x918>
 8004fe6:	4651      	mov	r1, sl
 8004fe8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004fea:	4648      	mov	r0, r9
 8004fec:	f001 fa9e 	bl	800652c <__pow5mult>
 8004ff0:	4682      	mov	sl, r0
 8004ff2:	e572      	b.n	8004ada <_dtoa_r+0x67a>
 8004ff4:	f8dd a000 	ldr.w	sl, [sp]
 8004ff8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004ffc:	e686      	b.n	8004d0c <_dtoa_r+0x8ac>
 8004ffe:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005000:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005002:	1afb      	subs	r3, r7, r3
 8005004:	441a      	add	r2, r3
 8005006:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800500a:	2700      	movs	r7, #0
 800500c:	e512      	b.n	8004a34 <_dtoa_r+0x5d4>
 800500e:	2b00      	cmp	r3, #0
 8005010:	9402      	str	r4, [sp, #8]
 8005012:	465e      	mov	r6, fp
 8005014:	f107 0401 	add.w	r4, r7, #1
 8005018:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800501c:	f300 80ba 	bgt.w	8005194 <_dtoa_r+0xd34>
 8005020:	9b00      	ldr	r3, [sp, #0]
 8005022:	9502      	str	r5, [sp, #8]
 8005024:	703b      	strb	r3, [r7, #0]
 8005026:	4645      	mov	r5, r8
 8005028:	e660      	b.n	8004cec <_dtoa_r+0x88c>
 800502a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800502e:	2602      	movs	r6, #2
 8005030:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005034:	f7ff bb67 	b.w	8004706 <_dtoa_r+0x2a6>
 8005038:	9b00      	ldr	r3, [sp, #0]
 800503a:	2b39      	cmp	r3, #57	; 0x39
 800503c:	465e      	mov	r6, fp
 800503e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005042:	f000 80b9 	beq.w	80051b8 <_dtoa_r+0xd58>
 8005046:	9b00      	ldr	r3, [sp, #0]
 8005048:	9502      	str	r5, [sp, #8]
 800504a:	3301      	adds	r3, #1
 800504c:	703b      	strb	r3, [r7, #0]
 800504e:	4645      	mov	r5, r8
 8005050:	e64c      	b.n	8004cec <_dtoa_r+0x88c>
 8005052:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8005056:	1a9c      	subs	r4, r3, r2
 8005058:	e4f5      	b.n	8004a46 <_dtoa_r+0x5e6>
 800505a:	465e      	mov	r6, fp
 800505c:	9502      	str	r5, [sp, #8]
 800505e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005062:	4645      	mov	r5, r8
 8005064:	e61a      	b.n	8004c9c <_dtoa_r+0x83c>
 8005066:	2600      	movs	r6, #0
 8005068:	4635      	mov	r5, r6
 800506a:	e708      	b.n	8004e7e <_dtoa_r+0xa1e>
 800506c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005070:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005074:	f7fb fd60 	bl	8000b38 <__aeabi_dmul>
 8005078:	9b12      	ldr	r3, [sp, #72]	; 0x48
 800507a:	f88b 5000 	strb.w	r5, [fp]
 800507e:	2b01      	cmp	r3, #1
 8005080:	e9cd 0100 	strd	r0, r1, [sp]
 8005084:	d020      	beq.n	80050c8 <_dtoa_r+0xc68>
 8005086:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005088:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 800508c:	445b      	add	r3, fp
 800508e:	4698      	mov	r8, r3
 8005090:	2200      	movs	r2, #0
 8005092:	4b2c      	ldr	r3, [pc, #176]	; (8005144 <_dtoa_r+0xce4>)
 8005094:	4630      	mov	r0, r6
 8005096:	4639      	mov	r1, r7
 8005098:	f7fb fd4e 	bl	8000b38 <__aeabi_dmul>
 800509c:	460f      	mov	r7, r1
 800509e:	4606      	mov	r6, r0
 80050a0:	f7fb fffa 	bl	8001098 <__aeabi_d2iz>
 80050a4:	4605      	mov	r5, r0
 80050a6:	f7fb fcdd 	bl	8000a64 <__aeabi_i2d>
 80050aa:	3530      	adds	r5, #48	; 0x30
 80050ac:	4602      	mov	r2, r0
 80050ae:	460b      	mov	r3, r1
 80050b0:	4630      	mov	r0, r6
 80050b2:	4639      	mov	r1, r7
 80050b4:	f7fb fb88 	bl	80007c8 <__aeabi_dsub>
 80050b8:	f804 5b01 	strb.w	r5, [r4], #1
 80050bc:	4544      	cmp	r4, r8
 80050be:	4606      	mov	r6, r0
 80050c0:	460f      	mov	r7, r1
 80050c2:	d1e5      	bne.n	8005090 <_dtoa_r+0xc30>
 80050c4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80050c8:	4b1f      	ldr	r3, [pc, #124]	; (8005148 <_dtoa_r+0xce8>)
 80050ca:	2200      	movs	r2, #0
 80050cc:	e9dd 0100 	ldrd	r0, r1, [sp]
 80050d0:	f7fb fb7c 	bl	80007cc <__adddf3>
 80050d4:	4632      	mov	r2, r6
 80050d6:	463b      	mov	r3, r7
 80050d8:	f7fb ffa0 	bl	800101c <__aeabi_dcmplt>
 80050dc:	2800      	cmp	r0, #0
 80050de:	d070      	beq.n	80051c2 <_dtoa_r+0xd62>
 80050e0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80050e2:	9306      	str	r3, [sp, #24]
 80050e4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050e8:	e48f      	b.n	8004a0a <_dtoa_r+0x5aa>
 80050ea:	2330      	movs	r3, #48	; 0x30
 80050ec:	f88b 3000 	strb.w	r3, [fp]
 80050f0:	9b06      	ldr	r3, [sp, #24]
 80050f2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050f6:	3301      	adds	r3, #1
 80050f8:	9306      	str	r3, [sp, #24]
 80050fa:	465b      	mov	r3, fp
 80050fc:	e489      	b.n	8004a12 <_dtoa_r+0x5b2>
 80050fe:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005100:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005104:	e6a0      	b.n	8004e48 <_dtoa_r+0x9e8>
 8005106:	2300      	movs	r3, #0
 8005108:	e676      	b.n	8004df8 <_dtoa_r+0x998>
 800510a:	4631      	mov	r1, r6
 800510c:	2205      	movs	r2, #5
 800510e:	4648      	mov	r0, r9
 8005110:	f001 f8cc 	bl	80062ac <__multadd>
 8005114:	4601      	mov	r1, r0
 8005116:	4606      	mov	r6, r0
 8005118:	4650      	mov	r0, sl
 800511a:	f001 faad 	bl	8006678 <__mcmp>
 800511e:	2800      	cmp	r0, #0
 8005120:	f73f aead 	bgt.w	8004e7e <_dtoa_r+0xa1e>
 8005124:	e722      	b.n	8004f6c <_dtoa_r+0xb0c>
 8005126:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800512a:	2602      	movs	r6, #2
 800512c:	ed8d 7b00 	vstr	d7, [sp]
 8005130:	f7ff bb02 	b.w	8004738 <_dtoa_r+0x2d8>
 8005134:	40140000 	.word	0x40140000
 8005138:	080074e8 	.word	0x080074e8
 800513c:	080074c0 	.word	0x080074c0
 8005140:	401c0000 	.word	0x401c0000
 8005144:	40240000 	.word	0x40240000
 8005148:	3fe00000 	.word	0x3fe00000
 800514c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800514e:	2b00      	cmp	r3, #0
 8005150:	f43f af1d 	beq.w	8004f8e <_dtoa_r+0xb2e>
 8005154:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8005156:	2c00      	cmp	r4, #0
 8005158:	f77f aba8 	ble.w	80048ac <_dtoa_r+0x44c>
 800515c:	2200      	movs	r2, #0
 800515e:	4b45      	ldr	r3, [pc, #276]	; (8005274 <_dtoa_r+0xe14>)
 8005160:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005164:	f7fb fce8 	bl	8000b38 <__aeabi_dmul>
 8005168:	e9cd 0100 	strd	r0, r1, [sp]
 800516c:	1c70      	adds	r0, r6, #1
 800516e:	f7fb fc79 	bl	8000a64 <__aeabi_i2d>
 8005172:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005176:	f7fb fcdf 	bl	8000b38 <__aeabi_dmul>
 800517a:	4b3f      	ldr	r3, [pc, #252]	; (8005278 <_dtoa_r+0xe18>)
 800517c:	2200      	movs	r2, #0
 800517e:	f7fb fb25 	bl	80007cc <__adddf3>
 8005182:	9b06      	ldr	r3, [sp, #24]
 8005184:	9412      	str	r4, [sp, #72]	; 0x48
 8005186:	3b01      	subs	r3, #1
 8005188:	4606      	mov	r6, r0
 800518a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800518e:	9316      	str	r3, [sp, #88]	; 0x58
 8005190:	f7ff baf3 	b.w	800477a <_dtoa_r+0x31a>
 8005194:	4651      	mov	r1, sl
 8005196:	2201      	movs	r2, #1
 8005198:	4648      	mov	r0, r9
 800519a:	f001 fa17 	bl	80065cc <__lshift>
 800519e:	4631      	mov	r1, r6
 80051a0:	4682      	mov	sl, r0
 80051a2:	f001 fa69 	bl	8006678 <__mcmp>
 80051a6:	2800      	cmp	r0, #0
 80051a8:	dd3b      	ble.n	8005222 <_dtoa_r+0xdc2>
 80051aa:	9b00      	ldr	r3, [sp, #0]
 80051ac:	2b39      	cmp	r3, #57	; 0x39
 80051ae:	d003      	beq.n	80051b8 <_dtoa_r+0xd58>
 80051b0:	9b02      	ldr	r3, [sp, #8]
 80051b2:	3331      	adds	r3, #49	; 0x31
 80051b4:	9300      	str	r3, [sp, #0]
 80051b6:	e733      	b.n	8005020 <_dtoa_r+0xbc0>
 80051b8:	2239      	movs	r2, #57	; 0x39
 80051ba:	9502      	str	r5, [sp, #8]
 80051bc:	703a      	strb	r2, [r7, #0]
 80051be:	4645      	mov	r5, r8
 80051c0:	e58e      	b.n	8004ce0 <_dtoa_r+0x880>
 80051c2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80051c6:	2000      	movs	r0, #0
 80051c8:	492c      	ldr	r1, [pc, #176]	; (800527c <_dtoa_r+0xe1c>)
 80051ca:	f7fb fafd 	bl	80007c8 <__aeabi_dsub>
 80051ce:	4632      	mov	r2, r6
 80051d0:	463b      	mov	r3, r7
 80051d2:	f7fb ff41 	bl	8001058 <__aeabi_dcmpgt>
 80051d6:	b910      	cbnz	r0, 80051de <_dtoa_r+0xd7e>
 80051d8:	f7ff bb68 	b.w	80048ac <_dtoa_r+0x44c>
 80051dc:	4614      	mov	r4, r2
 80051de:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80051e2:	2b30      	cmp	r3, #48	; 0x30
 80051e4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80051e8:	d0f8      	beq.n	80051dc <_dtoa_r+0xd7c>
 80051ea:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051ec:	9306      	str	r3, [sp, #24]
 80051ee:	e58d      	b.n	8004d0c <_dtoa_r+0x8ac>
 80051f0:	46d9      	mov	r9, fp
 80051f2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80051f6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80051fa:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051fc:	9306      	str	r3, [sp, #24]
 80051fe:	e404      	b.n	8004a0a <_dtoa_r+0x5aa>
 8005200:	9b00      	ldr	r3, [sp, #0]
 8005202:	2b39      	cmp	r3, #57	; 0x39
 8005204:	4621      	mov	r1, r4
 8005206:	4632      	mov	r2, r6
 8005208:	f107 0401 	add.w	r4, r7, #1
 800520c:	465e      	mov	r6, fp
 800520e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005212:	d0d1      	beq.n	80051b8 <_dtoa_r+0xd58>
 8005214:	2a00      	cmp	r2, #0
 8005216:	f77f af03 	ble.w	8005020 <_dtoa_r+0xbc0>
 800521a:	460b      	mov	r3, r1
 800521c:	3331      	adds	r3, #49	; 0x31
 800521e:	9300      	str	r3, [sp, #0]
 8005220:	e6fe      	b.n	8005020 <_dtoa_r+0xbc0>
 8005222:	f47f aefd 	bne.w	8005020 <_dtoa_r+0xbc0>
 8005226:	9b00      	ldr	r3, [sp, #0]
 8005228:	07da      	lsls	r2, r3, #31
 800522a:	f57f aef9 	bpl.w	8005020 <_dtoa_r+0xbc0>
 800522e:	e7bc      	b.n	80051aa <_dtoa_r+0xd4a>
 8005230:	4629      	mov	r1, r5
 8005232:	2300      	movs	r3, #0
 8005234:	220a      	movs	r2, #10
 8005236:	4648      	mov	r0, r9
 8005238:	f001 f838 	bl	80062ac <__multadd>
 800523c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800523e:	2b00      	cmp	r3, #0
 8005240:	4605      	mov	r5, r0
 8005242:	dd09      	ble.n	8005258 <_dtoa_r+0xdf8>
 8005244:	9309      	str	r3, [sp, #36]	; 0x24
 8005246:	e484      	b.n	8004b52 <_dtoa_r+0x6f2>
 8005248:	9b02      	ldr	r3, [sp, #8]
 800524a:	2b02      	cmp	r3, #2
 800524c:	dc0e      	bgt.n	800526c <_dtoa_r+0xe0c>
 800524e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005250:	e507      	b.n	8004c62 <_dtoa_r+0x802>
 8005252:	2602      	movs	r6, #2
 8005254:	f7ff ba70 	b.w	8004738 <_dtoa_r+0x2d8>
 8005258:	9b02      	ldr	r3, [sp, #8]
 800525a:	2b02      	cmp	r3, #2
 800525c:	dc06      	bgt.n	800526c <_dtoa_r+0xe0c>
 800525e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005260:	e7f0      	b.n	8005244 <_dtoa_r+0xde4>
 8005262:	f43f ac59 	beq.w	8004b18 <_dtoa_r+0x6b8>
 8005266:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800526a:	e450      	b.n	8004b0e <_dtoa_r+0x6ae>
 800526c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800526e:	9309      	str	r3, [sp, #36]	; 0x24
 8005270:	e678      	b.n	8004f64 <_dtoa_r+0xb04>
 8005272:	bf00      	nop
 8005274:	40240000 	.word	0x40240000
 8005278:	401c0000 	.word	0x401c0000
 800527c:	3fe00000 	.word	0x3fe00000

08005280 <__sflush_r>:
 8005280:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005284:	b29a      	uxth	r2, r3
 8005286:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800528a:	460c      	mov	r4, r1
 800528c:	0711      	lsls	r1, r2, #28
 800528e:	4680      	mov	r8, r0
 8005290:	d444      	bmi.n	800531c <__sflush_r+0x9c>
 8005292:	6862      	ldr	r2, [r4, #4]
 8005294:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005298:	2a00      	cmp	r2, #0
 800529a:	81a3      	strh	r3, [r4, #12]
 800529c:	dd59      	ble.n	8005352 <__sflush_r+0xd2>
 800529e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80052a0:	2d00      	cmp	r5, #0
 80052a2:	d053      	beq.n	800534c <__sflush_r+0xcc>
 80052a4:	2200      	movs	r2, #0
 80052a6:	b29b      	uxth	r3, r3
 80052a8:	f8d8 6000 	ldr.w	r6, [r8]
 80052ac:	69e1      	ldr	r1, [r4, #28]
 80052ae:	f8c8 2000 	str.w	r2, [r8]
 80052b2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80052b6:	f040 8083 	bne.w	80053c0 <__sflush_r+0x140>
 80052ba:	2301      	movs	r3, #1
 80052bc:	4640      	mov	r0, r8
 80052be:	47a8      	blx	r5
 80052c0:	1c42      	adds	r2, r0, #1
 80052c2:	d04a      	beq.n	800535a <__sflush_r+0xda>
 80052c4:	89a3      	ldrh	r3, [r4, #12]
 80052c6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80052c8:	69e1      	ldr	r1, [r4, #28]
 80052ca:	075b      	lsls	r3, r3, #29
 80052cc:	d505      	bpl.n	80052da <__sflush_r+0x5a>
 80052ce:	6862      	ldr	r2, [r4, #4]
 80052d0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80052d2:	1a80      	subs	r0, r0, r2
 80052d4:	b10b      	cbz	r3, 80052da <__sflush_r+0x5a>
 80052d6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80052d8:	1ac0      	subs	r0, r0, r3
 80052da:	4602      	mov	r2, r0
 80052dc:	2300      	movs	r3, #0
 80052de:	4640      	mov	r0, r8
 80052e0:	47a8      	blx	r5
 80052e2:	1c47      	adds	r7, r0, #1
 80052e4:	d045      	beq.n	8005372 <__sflush_r+0xf2>
 80052e6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80052ea:	6922      	ldr	r2, [r4, #16]
 80052ec:	6022      	str	r2, [r4, #0]
 80052ee:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80052f2:	2200      	movs	r2, #0
 80052f4:	81a3      	strh	r3, [r4, #12]
 80052f6:	04db      	lsls	r3, r3, #19
 80052f8:	6062      	str	r2, [r4, #4]
 80052fa:	d500      	bpl.n	80052fe <__sflush_r+0x7e>
 80052fc:	6520      	str	r0, [r4, #80]	; 0x50
 80052fe:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005300:	f8c8 6000 	str.w	r6, [r8]
 8005304:	b311      	cbz	r1, 800534c <__sflush_r+0xcc>
 8005306:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800530a:	4299      	cmp	r1, r3
 800530c:	d002      	beq.n	8005314 <__sflush_r+0x94>
 800530e:	4640      	mov	r0, r8
 8005310:	f000 f95e 	bl	80055d0 <_free_r>
 8005314:	2000      	movs	r0, #0
 8005316:	6320      	str	r0, [r4, #48]	; 0x30
 8005318:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800531c:	6926      	ldr	r6, [r4, #16]
 800531e:	b1ae      	cbz	r6, 800534c <__sflush_r+0xcc>
 8005320:	6825      	ldr	r5, [r4, #0]
 8005322:	6026      	str	r6, [r4, #0]
 8005324:	0792      	lsls	r2, r2, #30
 8005326:	bf0c      	ite	eq
 8005328:	6963      	ldreq	r3, [r4, #20]
 800532a:	2300      	movne	r3, #0
 800532c:	1bad      	subs	r5, r5, r6
 800532e:	60a3      	str	r3, [r4, #8]
 8005330:	e00a      	b.n	8005348 <__sflush_r+0xc8>
 8005332:	462b      	mov	r3, r5
 8005334:	4632      	mov	r2, r6
 8005336:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005338:	69e1      	ldr	r1, [r4, #28]
 800533a:	4640      	mov	r0, r8
 800533c:	47b8      	blx	r7
 800533e:	2800      	cmp	r0, #0
 8005340:	eba5 0500 	sub.w	r5, r5, r0
 8005344:	4406      	add	r6, r0
 8005346:	dd2b      	ble.n	80053a0 <__sflush_r+0x120>
 8005348:	2d00      	cmp	r5, #0
 800534a:	dcf2      	bgt.n	8005332 <__sflush_r+0xb2>
 800534c:	2000      	movs	r0, #0
 800534e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005352:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005354:	2a00      	cmp	r2, #0
 8005356:	dca2      	bgt.n	800529e <__sflush_r+0x1e>
 8005358:	e7f8      	b.n	800534c <__sflush_r+0xcc>
 800535a:	f8d8 3000 	ldr.w	r3, [r8]
 800535e:	2b00      	cmp	r3, #0
 8005360:	d0b0      	beq.n	80052c4 <__sflush_r+0x44>
 8005362:	2b1d      	cmp	r3, #29
 8005364:	d001      	beq.n	800536a <__sflush_r+0xea>
 8005366:	2b16      	cmp	r3, #22
 8005368:	d12c      	bne.n	80053c4 <__sflush_r+0x144>
 800536a:	f8c8 6000 	str.w	r6, [r8]
 800536e:	2000      	movs	r0, #0
 8005370:	e7ed      	b.n	800534e <__sflush_r+0xce>
 8005372:	f8d8 1000 	ldr.w	r1, [r8]
 8005376:	291d      	cmp	r1, #29
 8005378:	d81a      	bhi.n	80053b0 <__sflush_r+0x130>
 800537a:	4b15      	ldr	r3, [pc, #84]	; (80053d0 <__sflush_r+0x150>)
 800537c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005380:	40cb      	lsrs	r3, r1
 8005382:	43db      	mvns	r3, r3
 8005384:	f013 0301 	ands.w	r3, r3, #1
 8005388:	d114      	bne.n	80053b4 <__sflush_r+0x134>
 800538a:	6925      	ldr	r5, [r4, #16]
 800538c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005390:	e9c4 5300 	strd	r5, r3, [r4]
 8005394:	04d5      	lsls	r5, r2, #19
 8005396:	81a2      	strh	r2, [r4, #12]
 8005398:	d5b1      	bpl.n	80052fe <__sflush_r+0x7e>
 800539a:	2900      	cmp	r1, #0
 800539c:	d1af      	bne.n	80052fe <__sflush_r+0x7e>
 800539e:	e7ad      	b.n	80052fc <__sflush_r+0x7c>
 80053a0:	89a3      	ldrh	r3, [r4, #12]
 80053a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80053a6:	81a3      	strh	r3, [r4, #12]
 80053a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80053ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80053b0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80053b4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80053b8:	81a2      	strh	r2, [r4, #12]
 80053ba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80053be:	e7c6      	b.n	800534e <__sflush_r+0xce>
 80053c0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80053c2:	e782      	b.n	80052ca <__sflush_r+0x4a>
 80053c4:	89a3      	ldrh	r3, [r4, #12]
 80053c6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80053ca:	81a3      	strh	r3, [r4, #12]
 80053cc:	e7bf      	b.n	800534e <__sflush_r+0xce>
 80053ce:	bf00      	nop
 80053d0:	20400001 	.word	0x20400001

080053d4 <_fflush_r>:
 80053d4:	b538      	push	{r3, r4, r5, lr}
 80053d6:	460d      	mov	r5, r1
 80053d8:	4604      	mov	r4, r0
 80053da:	b108      	cbz	r0, 80053e0 <_fflush_r+0xc>
 80053dc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80053de:	b1a3      	cbz	r3, 800540a <_fflush_r+0x36>
 80053e0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80053e4:	b1b8      	cbz	r0, 8005416 <_fflush_r+0x42>
 80053e6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80053e8:	07db      	lsls	r3, r3, #31
 80053ea:	d401      	bmi.n	80053f0 <_fflush_r+0x1c>
 80053ec:	0581      	lsls	r1, r0, #22
 80053ee:	d51a      	bpl.n	8005426 <_fflush_r+0x52>
 80053f0:	4620      	mov	r0, r4
 80053f2:	4629      	mov	r1, r5
 80053f4:	f7ff ff44 	bl	8005280 <__sflush_r>
 80053f8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80053fa:	07da      	lsls	r2, r3, #31
 80053fc:	4604      	mov	r4, r0
 80053fe:	d402      	bmi.n	8005406 <_fflush_r+0x32>
 8005400:	89ab      	ldrh	r3, [r5, #12]
 8005402:	059b      	lsls	r3, r3, #22
 8005404:	d50a      	bpl.n	800541c <_fflush_r+0x48>
 8005406:	4620      	mov	r0, r4
 8005408:	bd38      	pop	{r3, r4, r5, pc}
 800540a:	f000 f83f 	bl	800548c <__sinit>
 800540e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005412:	2800      	cmp	r0, #0
 8005414:	d1e7      	bne.n	80053e6 <_fflush_r+0x12>
 8005416:	4604      	mov	r4, r0
 8005418:	4620      	mov	r0, r4
 800541a:	bd38      	pop	{r3, r4, r5, pc}
 800541c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800541e:	f000 fb87 	bl	8005b30 <__retarget_lock_release_recursive>
 8005422:	4620      	mov	r0, r4
 8005424:	bd38      	pop	{r3, r4, r5, pc}
 8005426:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005428:	f000 fb80 	bl	8005b2c <__retarget_lock_acquire_recursive>
 800542c:	e7e0      	b.n	80053f0 <_fflush_r+0x1c>
 800542e:	bf00      	nop

08005430 <std>:
 8005430:	b510      	push	{r4, lr}
 8005432:	2300      	movs	r3, #0
 8005434:	4604      	mov	r4, r0
 8005436:	8181      	strh	r1, [r0, #12]
 8005438:	81c2      	strh	r2, [r0, #14]
 800543a:	e9c0 3300 	strd	r3, r3, [r0]
 800543e:	6083      	str	r3, [r0, #8]
 8005440:	6643      	str	r3, [r0, #100]	; 0x64
 8005442:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005446:	6183      	str	r3, [r0, #24]
 8005448:	4619      	mov	r1, r3
 800544a:	2208      	movs	r2, #8
 800544c:	305c      	adds	r0, #92	; 0x5c
 800544e:	f7fd f8c9 	bl	80025e4 <memset>
 8005452:	4807      	ldr	r0, [pc, #28]	; (8005470 <std+0x40>)
 8005454:	4907      	ldr	r1, [pc, #28]	; (8005474 <std+0x44>)
 8005456:	4a08      	ldr	r2, [pc, #32]	; (8005478 <std+0x48>)
 8005458:	4b08      	ldr	r3, [pc, #32]	; (800547c <std+0x4c>)
 800545a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800545c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005460:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005464:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005468:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800546c:	f000 bb5a 	b.w	8005b24 <__retarget_lock_init_recursive>
 8005470:	08006c49 	.word	0x08006c49
 8005474:	08006c6d 	.word	0x08006c6d
 8005478:	08006ca9 	.word	0x08006ca9
 800547c:	08006cc9 	.word	0x08006cc9

08005480 <_cleanup_r>:
 8005480:	4901      	ldr	r1, [pc, #4]	; (8005488 <_cleanup_r+0x8>)
 8005482:	f000 bb17 	b.w	8005ab4 <_fwalk_reent>
 8005486:	bf00      	nop
 8005488:	08006f39 	.word	0x08006f39

0800548c <__sinit>:
 800548c:	b510      	push	{r4, lr}
 800548e:	4604      	mov	r4, r0
 8005490:	4812      	ldr	r0, [pc, #72]	; (80054dc <__sinit+0x50>)
 8005492:	f000 fb4b 	bl	8005b2c <__retarget_lock_acquire_recursive>
 8005496:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005498:	b9d2      	cbnz	r2, 80054d0 <__sinit+0x44>
 800549a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800549e:	4810      	ldr	r0, [pc, #64]	; (80054e0 <__sinit+0x54>)
 80054a0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80054a4:	2103      	movs	r1, #3
 80054a6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80054aa:	63e0      	str	r0, [r4, #60]	; 0x3c
 80054ac:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80054b0:	6860      	ldr	r0, [r4, #4]
 80054b2:	2104      	movs	r1, #4
 80054b4:	f7ff ffbc 	bl	8005430 <std>
 80054b8:	2201      	movs	r2, #1
 80054ba:	2109      	movs	r1, #9
 80054bc:	68a0      	ldr	r0, [r4, #8]
 80054be:	f7ff ffb7 	bl	8005430 <std>
 80054c2:	2202      	movs	r2, #2
 80054c4:	2112      	movs	r1, #18
 80054c6:	68e0      	ldr	r0, [r4, #12]
 80054c8:	f7ff ffb2 	bl	8005430 <std>
 80054cc:	2301      	movs	r3, #1
 80054ce:	63a3      	str	r3, [r4, #56]	; 0x38
 80054d0:	4802      	ldr	r0, [pc, #8]	; (80054dc <__sinit+0x50>)
 80054d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80054d6:	f000 bb2b 	b.w	8005b30 <__retarget_lock_release_recursive>
 80054da:	bf00      	nop
 80054dc:	20000b8c 	.word	0x20000b8c
 80054e0:	08005481 	.word	0x08005481

080054e4 <__sfp_lock_acquire>:
 80054e4:	4801      	ldr	r0, [pc, #4]	; (80054ec <__sfp_lock_acquire+0x8>)
 80054e6:	f000 bb21 	b.w	8005b2c <__retarget_lock_acquire_recursive>
 80054ea:	bf00      	nop
 80054ec:	20000ba0 	.word	0x20000ba0

080054f0 <__sfp_lock_release>:
 80054f0:	4801      	ldr	r0, [pc, #4]	; (80054f8 <__sfp_lock_release+0x8>)
 80054f2:	f000 bb1d 	b.w	8005b30 <__retarget_lock_release_recursive>
 80054f6:	bf00      	nop
 80054f8:	20000ba0 	.word	0x20000ba0

080054fc <__libc_fini_array>:
 80054fc:	b538      	push	{r3, r4, r5, lr}
 80054fe:	4c0a      	ldr	r4, [pc, #40]	; (8005528 <__libc_fini_array+0x2c>)
 8005500:	4d0a      	ldr	r5, [pc, #40]	; (800552c <__libc_fini_array+0x30>)
 8005502:	1b64      	subs	r4, r4, r5
 8005504:	10a4      	asrs	r4, r4, #2
 8005506:	d00a      	beq.n	800551e <__libc_fini_array+0x22>
 8005508:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800550c:	3b01      	subs	r3, #1
 800550e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005512:	3c01      	subs	r4, #1
 8005514:	f855 3904 	ldr.w	r3, [r5], #-4
 8005518:	4798      	blx	r3
 800551a:	2c00      	cmp	r4, #0
 800551c:	d1f9      	bne.n	8005512 <__libc_fini_array+0x16>
 800551e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005522:	f001 befd 	b.w	8007320 <_fini>
 8005526:	bf00      	nop
 8005528:	080076e4 	.word	0x080076e4
 800552c:	080076e0 	.word	0x080076e0

08005530 <_malloc_trim_r>:
 8005530:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005532:	4f24      	ldr	r7, [pc, #144]	; (80055c4 <_malloc_trim_r+0x94>)
 8005534:	460c      	mov	r4, r1
 8005536:	4606      	mov	r6, r0
 8005538:	f000 fe7c 	bl	8006234 <__malloc_lock>
 800553c:	68bb      	ldr	r3, [r7, #8]
 800553e:	685d      	ldr	r5, [r3, #4]
 8005540:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005544:	310f      	adds	r1, #15
 8005546:	f025 0503 	bic.w	r5, r5, #3
 800554a:	4429      	add	r1, r5
 800554c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005550:	f021 010f 	bic.w	r1, r1, #15
 8005554:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005558:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800555c:	db07      	blt.n	800556e <_malloc_trim_r+0x3e>
 800555e:	2100      	movs	r1, #0
 8005560:	4630      	mov	r0, r6
 8005562:	f001 fb5f 	bl	8006c24 <_sbrk_r>
 8005566:	68bb      	ldr	r3, [r7, #8]
 8005568:	442b      	add	r3, r5
 800556a:	4298      	cmp	r0, r3
 800556c:	d004      	beq.n	8005578 <_malloc_trim_r+0x48>
 800556e:	4630      	mov	r0, r6
 8005570:	f000 fe66 	bl	8006240 <__malloc_unlock>
 8005574:	2000      	movs	r0, #0
 8005576:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005578:	4261      	negs	r1, r4
 800557a:	4630      	mov	r0, r6
 800557c:	f001 fb52 	bl	8006c24 <_sbrk_r>
 8005580:	3001      	adds	r0, #1
 8005582:	d00d      	beq.n	80055a0 <_malloc_trim_r+0x70>
 8005584:	4b10      	ldr	r3, [pc, #64]	; (80055c8 <_malloc_trim_r+0x98>)
 8005586:	68ba      	ldr	r2, [r7, #8]
 8005588:	6819      	ldr	r1, [r3, #0]
 800558a:	1b2d      	subs	r5, r5, r4
 800558c:	f045 0501 	orr.w	r5, r5, #1
 8005590:	4630      	mov	r0, r6
 8005592:	1b09      	subs	r1, r1, r4
 8005594:	6055      	str	r5, [r2, #4]
 8005596:	6019      	str	r1, [r3, #0]
 8005598:	f000 fe52 	bl	8006240 <__malloc_unlock>
 800559c:	2001      	movs	r0, #1
 800559e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80055a0:	2100      	movs	r1, #0
 80055a2:	4630      	mov	r0, r6
 80055a4:	f001 fb3e 	bl	8006c24 <_sbrk_r>
 80055a8:	68ba      	ldr	r2, [r7, #8]
 80055aa:	1a83      	subs	r3, r0, r2
 80055ac:	2b0f      	cmp	r3, #15
 80055ae:	ddde      	ble.n	800556e <_malloc_trim_r+0x3e>
 80055b0:	4c06      	ldr	r4, [pc, #24]	; (80055cc <_malloc_trim_r+0x9c>)
 80055b2:	4905      	ldr	r1, [pc, #20]	; (80055c8 <_malloc_trim_r+0x98>)
 80055b4:	6824      	ldr	r4, [r4, #0]
 80055b6:	f043 0301 	orr.w	r3, r3, #1
 80055ba:	1b00      	subs	r0, r0, r4
 80055bc:	6053      	str	r3, [r2, #4]
 80055be:	6008      	str	r0, [r1, #0]
 80055c0:	e7d5      	b.n	800556e <_malloc_trim_r+0x3e>
 80055c2:	bf00      	nop
 80055c4:	200004e4 	.word	0x200004e4
 80055c8:	20000b04 	.word	0x20000b04
 80055cc:	200008ec 	.word	0x200008ec

080055d0 <_free_r>:
 80055d0:	2900      	cmp	r1, #0
 80055d2:	d053      	beq.n	800567c <_free_r+0xac>
 80055d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80055d6:	460c      	mov	r4, r1
 80055d8:	4606      	mov	r6, r0
 80055da:	f000 fe2b 	bl	8006234 <__malloc_lock>
 80055de:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80055e2:	4f71      	ldr	r7, [pc, #452]	; (80057a8 <_free_r+0x1d8>)
 80055e4:	f02c 0101 	bic.w	r1, ip, #1
 80055e8:	f1a4 0508 	sub.w	r5, r4, #8
 80055ec:	186b      	adds	r3, r5, r1
 80055ee:	68b8      	ldr	r0, [r7, #8]
 80055f0:	685a      	ldr	r2, [r3, #4]
 80055f2:	4298      	cmp	r0, r3
 80055f4:	f022 0203 	bic.w	r2, r2, #3
 80055f8:	d053      	beq.n	80056a2 <_free_r+0xd2>
 80055fa:	f01c 0f01 	tst.w	ip, #1
 80055fe:	605a      	str	r2, [r3, #4]
 8005600:	eb03 0002 	add.w	r0, r3, r2
 8005604:	d13b      	bne.n	800567e <_free_r+0xae>
 8005606:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800560a:	6840      	ldr	r0, [r0, #4]
 800560c:	eba5 050c 	sub.w	r5, r5, ip
 8005610:	f107 0e08 	add.w	lr, r7, #8
 8005614:	68ac      	ldr	r4, [r5, #8]
 8005616:	4574      	cmp	r4, lr
 8005618:	4461      	add	r1, ip
 800561a:	f000 0001 	and.w	r0, r0, #1
 800561e:	d075      	beq.n	800570c <_free_r+0x13c>
 8005620:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005624:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005628:	f8cc 4008 	str.w	r4, [ip, #8]
 800562c:	b360      	cbz	r0, 8005688 <_free_r+0xb8>
 800562e:	f041 0301 	orr.w	r3, r1, #1
 8005632:	606b      	str	r3, [r5, #4]
 8005634:	5069      	str	r1, [r5, r1]
 8005636:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800563a:	d350      	bcc.n	80056de <_free_r+0x10e>
 800563c:	0a4b      	lsrs	r3, r1, #9
 800563e:	2b04      	cmp	r3, #4
 8005640:	d870      	bhi.n	8005724 <_free_r+0x154>
 8005642:	098b      	lsrs	r3, r1, #6
 8005644:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005648:	00e4      	lsls	r4, r4, #3
 800564a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800564e:	1938      	adds	r0, r7, r4
 8005650:	593b      	ldr	r3, [r7, r4]
 8005652:	3808      	subs	r0, #8
 8005654:	4298      	cmp	r0, r3
 8005656:	d078      	beq.n	800574a <_free_r+0x17a>
 8005658:	685a      	ldr	r2, [r3, #4]
 800565a:	f022 0203 	bic.w	r2, r2, #3
 800565e:	428a      	cmp	r2, r1
 8005660:	d971      	bls.n	8005746 <_free_r+0x176>
 8005662:	689b      	ldr	r3, [r3, #8]
 8005664:	4298      	cmp	r0, r3
 8005666:	d1f7      	bne.n	8005658 <_free_r+0x88>
 8005668:	68c3      	ldr	r3, [r0, #12]
 800566a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800566e:	609d      	str	r5, [r3, #8]
 8005670:	60c5      	str	r5, [r0, #12]
 8005672:	4630      	mov	r0, r6
 8005674:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005678:	f000 bde2 	b.w	8006240 <__malloc_unlock>
 800567c:	4770      	bx	lr
 800567e:	6840      	ldr	r0, [r0, #4]
 8005680:	f000 0001 	and.w	r0, r0, #1
 8005684:	2800      	cmp	r0, #0
 8005686:	d1d2      	bne.n	800562e <_free_r+0x5e>
 8005688:	6898      	ldr	r0, [r3, #8]
 800568a:	4c48      	ldr	r4, [pc, #288]	; (80057ac <_free_r+0x1dc>)
 800568c:	4411      	add	r1, r2
 800568e:	42a0      	cmp	r0, r4
 8005690:	f041 0201 	orr.w	r2, r1, #1
 8005694:	d062      	beq.n	800575c <_free_r+0x18c>
 8005696:	68db      	ldr	r3, [r3, #12]
 8005698:	60c3      	str	r3, [r0, #12]
 800569a:	6098      	str	r0, [r3, #8]
 800569c:	606a      	str	r2, [r5, #4]
 800569e:	5069      	str	r1, [r5, r1]
 80056a0:	e7c9      	b.n	8005636 <_free_r+0x66>
 80056a2:	f01c 0f01 	tst.w	ip, #1
 80056a6:	440a      	add	r2, r1
 80056a8:	d107      	bne.n	80056ba <_free_r+0xea>
 80056aa:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80056ae:	1aed      	subs	r5, r5, r3
 80056b0:	441a      	add	r2, r3
 80056b2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80056b6:	60cb      	str	r3, [r1, #12]
 80056b8:	6099      	str	r1, [r3, #8]
 80056ba:	4b3d      	ldr	r3, [pc, #244]	; (80057b0 <_free_r+0x1e0>)
 80056bc:	681b      	ldr	r3, [r3, #0]
 80056be:	f042 0101 	orr.w	r1, r2, #1
 80056c2:	4293      	cmp	r3, r2
 80056c4:	6069      	str	r1, [r5, #4]
 80056c6:	60bd      	str	r5, [r7, #8]
 80056c8:	d804      	bhi.n	80056d4 <_free_r+0x104>
 80056ca:	4b3a      	ldr	r3, [pc, #232]	; (80057b4 <_free_r+0x1e4>)
 80056cc:	4630      	mov	r0, r6
 80056ce:	6819      	ldr	r1, [r3, #0]
 80056d0:	f7ff ff2e 	bl	8005530 <_malloc_trim_r>
 80056d4:	4630      	mov	r0, r6
 80056d6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80056da:	f000 bdb1 	b.w	8006240 <__malloc_unlock>
 80056de:	08c9      	lsrs	r1, r1, #3
 80056e0:	6878      	ldr	r0, [r7, #4]
 80056e2:	1c4a      	adds	r2, r1, #1
 80056e4:	2301      	movs	r3, #1
 80056e6:	1089      	asrs	r1, r1, #2
 80056e8:	408b      	lsls	r3, r1
 80056ea:	4303      	orrs	r3, r0
 80056ec:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80056f0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80056f4:	607b      	str	r3, [r7, #4]
 80056f6:	3908      	subs	r1, #8
 80056f8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80056fc:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005700:	60c5      	str	r5, [r0, #12]
 8005702:	4630      	mov	r0, r6
 8005704:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005708:	f000 bd9a 	b.w	8006240 <__malloc_unlock>
 800570c:	2800      	cmp	r0, #0
 800570e:	d145      	bne.n	800579c <_free_r+0x1cc>
 8005710:	440a      	add	r2, r1
 8005712:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005716:	f042 0001 	orr.w	r0, r2, #1
 800571a:	60cb      	str	r3, [r1, #12]
 800571c:	6099      	str	r1, [r3, #8]
 800571e:	6068      	str	r0, [r5, #4]
 8005720:	50aa      	str	r2, [r5, r2]
 8005722:	e7d7      	b.n	80056d4 <_free_r+0x104>
 8005724:	2b14      	cmp	r3, #20
 8005726:	d908      	bls.n	800573a <_free_r+0x16a>
 8005728:	2b54      	cmp	r3, #84	; 0x54
 800572a:	d81e      	bhi.n	800576a <_free_r+0x19a>
 800572c:	0b0b      	lsrs	r3, r1, #12
 800572e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005732:	00e4      	lsls	r4, r4, #3
 8005734:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005738:	e789      	b.n	800564e <_free_r+0x7e>
 800573a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800573e:	00e4      	lsls	r4, r4, #3
 8005740:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005744:	e783      	b.n	800564e <_free_r+0x7e>
 8005746:	4618      	mov	r0, r3
 8005748:	e78e      	b.n	8005668 <_free_r+0x98>
 800574a:	1093      	asrs	r3, r2, #2
 800574c:	6879      	ldr	r1, [r7, #4]
 800574e:	2201      	movs	r2, #1
 8005750:	fa02 f303 	lsl.w	r3, r2, r3
 8005754:	430b      	orrs	r3, r1
 8005756:	607b      	str	r3, [r7, #4]
 8005758:	4603      	mov	r3, r0
 800575a:	e786      	b.n	800566a <_free_r+0x9a>
 800575c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005760:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005764:	606a      	str	r2, [r5, #4]
 8005766:	5069      	str	r1, [r5, r1]
 8005768:	e7b4      	b.n	80056d4 <_free_r+0x104>
 800576a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800576e:	d806      	bhi.n	800577e <_free_r+0x1ae>
 8005770:	0bcb      	lsrs	r3, r1, #15
 8005772:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005776:	00e4      	lsls	r4, r4, #3
 8005778:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800577c:	e767      	b.n	800564e <_free_r+0x7e>
 800577e:	f240 5254 	movw	r2, #1364	; 0x554
 8005782:	4293      	cmp	r3, r2
 8005784:	d806      	bhi.n	8005794 <_free_r+0x1c4>
 8005786:	0c8b      	lsrs	r3, r1, #18
 8005788:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800578c:	00e4      	lsls	r4, r4, #3
 800578e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005792:	e75c      	b.n	800564e <_free_r+0x7e>
 8005794:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005798:	227e      	movs	r2, #126	; 0x7e
 800579a:	e758      	b.n	800564e <_free_r+0x7e>
 800579c:	f041 0201 	orr.w	r2, r1, #1
 80057a0:	606a      	str	r2, [r5, #4]
 80057a2:	6019      	str	r1, [r3, #0]
 80057a4:	e796      	b.n	80056d4 <_free_r+0x104>
 80057a6:	bf00      	nop
 80057a8:	200004e4 	.word	0x200004e4
 80057ac:	200004ec 	.word	0x200004ec
 80057b0:	200008f0 	.word	0x200008f0
 80057b4:	20000b34 	.word	0x20000b34

080057b8 <__sfvwrite_r>:
 80057b8:	6893      	ldr	r3, [r2, #8]
 80057ba:	2b00      	cmp	r3, #0
 80057bc:	f000 80e4 	beq.w	8005988 <__sfvwrite_r+0x1d0>
 80057c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80057c4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80057c8:	b29b      	uxth	r3, r3
 80057ca:	460c      	mov	r4, r1
 80057cc:	0719      	lsls	r1, r3, #28
 80057ce:	b083      	sub	sp, #12
 80057d0:	4682      	mov	sl, r0
 80057d2:	4690      	mov	r8, r2
 80057d4:	d535      	bpl.n	8005842 <__sfvwrite_r+0x8a>
 80057d6:	6922      	ldr	r2, [r4, #16]
 80057d8:	b39a      	cbz	r2, 8005842 <__sfvwrite_r+0x8a>
 80057da:	f013 0202 	ands.w	r2, r3, #2
 80057de:	f8d8 6000 	ldr.w	r6, [r8]
 80057e2:	d03d      	beq.n	8005860 <__sfvwrite_r+0xa8>
 80057e4:	2700      	movs	r7, #0
 80057e6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80057ea:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80057ee:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005ab0 <__sfvwrite_r+0x2f8>
 80057f2:	463d      	mov	r5, r7
 80057f4:	454d      	cmp	r5, r9
 80057f6:	462b      	mov	r3, r5
 80057f8:	463a      	mov	r2, r7
 80057fa:	bf28      	it	cs
 80057fc:	464b      	movcs	r3, r9
 80057fe:	4661      	mov	r1, ip
 8005800:	4650      	mov	r0, sl
 8005802:	b1d5      	cbz	r5, 800583a <__sfvwrite_r+0x82>
 8005804:	47d8      	blx	fp
 8005806:	2800      	cmp	r0, #0
 8005808:	f340 80c6 	ble.w	8005998 <__sfvwrite_r+0x1e0>
 800580c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005810:	1a1b      	subs	r3, r3, r0
 8005812:	4407      	add	r7, r0
 8005814:	1a2d      	subs	r5, r5, r0
 8005816:	f8c8 3008 	str.w	r3, [r8, #8]
 800581a:	2b00      	cmp	r3, #0
 800581c:	f000 80b0 	beq.w	8005980 <__sfvwrite_r+0x1c8>
 8005820:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005824:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005828:	454d      	cmp	r5, r9
 800582a:	462b      	mov	r3, r5
 800582c:	463a      	mov	r2, r7
 800582e:	bf28      	it	cs
 8005830:	464b      	movcs	r3, r9
 8005832:	4661      	mov	r1, ip
 8005834:	4650      	mov	r0, sl
 8005836:	2d00      	cmp	r5, #0
 8005838:	d1e4      	bne.n	8005804 <__sfvwrite_r+0x4c>
 800583a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800583e:	3608      	adds	r6, #8
 8005840:	e7d8      	b.n	80057f4 <__sfvwrite_r+0x3c>
 8005842:	4621      	mov	r1, r4
 8005844:	4650      	mov	r0, sl
 8005846:	f7fe fd03 	bl	8004250 <__swsetup_r>
 800584a:	2800      	cmp	r0, #0
 800584c:	f040 812a 	bne.w	8005aa4 <__sfvwrite_r+0x2ec>
 8005850:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005854:	f8d8 6000 	ldr.w	r6, [r8]
 8005858:	b29b      	uxth	r3, r3
 800585a:	f013 0202 	ands.w	r2, r3, #2
 800585e:	d1c1      	bne.n	80057e4 <__sfvwrite_r+0x2c>
 8005860:	f013 0901 	ands.w	r9, r3, #1
 8005864:	d15d      	bne.n	8005922 <__sfvwrite_r+0x16a>
 8005866:	68a7      	ldr	r7, [r4, #8]
 8005868:	6820      	ldr	r0, [r4, #0]
 800586a:	464d      	mov	r5, r9
 800586c:	2d00      	cmp	r5, #0
 800586e:	d054      	beq.n	800591a <__sfvwrite_r+0x162>
 8005870:	059a      	lsls	r2, r3, #22
 8005872:	f140 809b 	bpl.w	80059ac <__sfvwrite_r+0x1f4>
 8005876:	42af      	cmp	r7, r5
 8005878:	46bb      	mov	fp, r7
 800587a:	f200 80d8 	bhi.w	8005a2e <__sfvwrite_r+0x276>
 800587e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005882:	d02f      	beq.n	80058e4 <__sfvwrite_r+0x12c>
 8005884:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005888:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800588c:	eba0 0b01 	sub.w	fp, r0, r1
 8005890:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005894:	1c68      	adds	r0, r5, #1
 8005896:	107f      	asrs	r7, r7, #1
 8005898:	4458      	add	r0, fp
 800589a:	42b8      	cmp	r0, r7
 800589c:	463a      	mov	r2, r7
 800589e:	bf84      	itt	hi
 80058a0:	4607      	movhi	r7, r0
 80058a2:	463a      	movhi	r2, r7
 80058a4:	055b      	lsls	r3, r3, #21
 80058a6:	f140 80d3 	bpl.w	8005a50 <__sfvwrite_r+0x298>
 80058aa:	4611      	mov	r1, r2
 80058ac:	4650      	mov	r0, sl
 80058ae:	f000 f9b9 	bl	8005c24 <_malloc_r>
 80058b2:	2800      	cmp	r0, #0
 80058b4:	f000 80f0 	beq.w	8005a98 <__sfvwrite_r+0x2e0>
 80058b8:	465a      	mov	r2, fp
 80058ba:	6921      	ldr	r1, [r4, #16]
 80058bc:	9001      	str	r0, [sp, #4]
 80058be:	f7fa fe1f 	bl	8000500 <memcpy>
 80058c2:	89a2      	ldrh	r2, [r4, #12]
 80058c4:	9b01      	ldr	r3, [sp, #4]
 80058c6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80058ca:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80058ce:	81a2      	strh	r2, [r4, #12]
 80058d0:	eba7 020b 	sub.w	r2, r7, fp
 80058d4:	eb03 000b 	add.w	r0, r3, fp
 80058d8:	6167      	str	r7, [r4, #20]
 80058da:	6123      	str	r3, [r4, #16]
 80058dc:	6020      	str	r0, [r4, #0]
 80058de:	60a2      	str	r2, [r4, #8]
 80058e0:	462f      	mov	r7, r5
 80058e2:	46ab      	mov	fp, r5
 80058e4:	465a      	mov	r2, fp
 80058e6:	4649      	mov	r1, r9
 80058e8:	f000 fc40 	bl	800616c <memmove>
 80058ec:	68a2      	ldr	r2, [r4, #8]
 80058ee:	6823      	ldr	r3, [r4, #0]
 80058f0:	1bd2      	subs	r2, r2, r7
 80058f2:	445b      	add	r3, fp
 80058f4:	462f      	mov	r7, r5
 80058f6:	60a2      	str	r2, [r4, #8]
 80058f8:	6023      	str	r3, [r4, #0]
 80058fa:	2500      	movs	r5, #0
 80058fc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005900:	1bdb      	subs	r3, r3, r7
 8005902:	44b9      	add	r9, r7
 8005904:	f8c8 3008 	str.w	r3, [r8, #8]
 8005908:	2b00      	cmp	r3, #0
 800590a:	d039      	beq.n	8005980 <__sfvwrite_r+0x1c8>
 800590c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005910:	68a7      	ldr	r7, [r4, #8]
 8005912:	6820      	ldr	r0, [r4, #0]
 8005914:	b29b      	uxth	r3, r3
 8005916:	2d00      	cmp	r5, #0
 8005918:	d1aa      	bne.n	8005870 <__sfvwrite_r+0xb8>
 800591a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800591e:	3608      	adds	r6, #8
 8005920:	e7a4      	b.n	800586c <__sfvwrite_r+0xb4>
 8005922:	4633      	mov	r3, r6
 8005924:	4691      	mov	r9, r2
 8005926:	4610      	mov	r0, r2
 8005928:	4617      	mov	r7, r2
 800592a:	464e      	mov	r6, r9
 800592c:	469b      	mov	fp, r3
 800592e:	2f00      	cmp	r7, #0
 8005930:	d06b      	beq.n	8005a0a <__sfvwrite_r+0x252>
 8005932:	2800      	cmp	r0, #0
 8005934:	d071      	beq.n	8005a1a <__sfvwrite_r+0x262>
 8005936:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800593a:	6820      	ldr	r0, [r4, #0]
 800593c:	45b9      	cmp	r9, r7
 800593e:	464b      	mov	r3, r9
 8005940:	bf28      	it	cs
 8005942:	463b      	movcs	r3, r7
 8005944:	4288      	cmp	r0, r1
 8005946:	d903      	bls.n	8005950 <__sfvwrite_r+0x198>
 8005948:	68a5      	ldr	r5, [r4, #8]
 800594a:	4415      	add	r5, r2
 800594c:	42ab      	cmp	r3, r5
 800594e:	dc71      	bgt.n	8005a34 <__sfvwrite_r+0x27c>
 8005950:	429a      	cmp	r2, r3
 8005952:	f300 8093 	bgt.w	8005a7c <__sfvwrite_r+0x2c4>
 8005956:	4613      	mov	r3, r2
 8005958:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800595a:	69e1      	ldr	r1, [r4, #28]
 800595c:	4632      	mov	r2, r6
 800595e:	4650      	mov	r0, sl
 8005960:	47a8      	blx	r5
 8005962:	1e05      	subs	r5, r0, #0
 8005964:	dd18      	ble.n	8005998 <__sfvwrite_r+0x1e0>
 8005966:	ebb9 0905 	subs.w	r9, r9, r5
 800596a:	d00f      	beq.n	800598c <__sfvwrite_r+0x1d4>
 800596c:	2001      	movs	r0, #1
 800596e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005972:	1b5b      	subs	r3, r3, r5
 8005974:	442e      	add	r6, r5
 8005976:	1b7f      	subs	r7, r7, r5
 8005978:	f8c8 3008 	str.w	r3, [r8, #8]
 800597c:	2b00      	cmp	r3, #0
 800597e:	d1d6      	bne.n	800592e <__sfvwrite_r+0x176>
 8005980:	2000      	movs	r0, #0
 8005982:	b003      	add	sp, #12
 8005984:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005988:	2000      	movs	r0, #0
 800598a:	4770      	bx	lr
 800598c:	4621      	mov	r1, r4
 800598e:	4650      	mov	r0, sl
 8005990:	f7ff fd20 	bl	80053d4 <_fflush_r>
 8005994:	2800      	cmp	r0, #0
 8005996:	d0ea      	beq.n	800596e <__sfvwrite_r+0x1b6>
 8005998:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800599c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80059a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80059a4:	81a3      	strh	r3, [r4, #12]
 80059a6:	b003      	add	sp, #12
 80059a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059ac:	6923      	ldr	r3, [r4, #16]
 80059ae:	4283      	cmp	r3, r0
 80059b0:	d315      	bcc.n	80059de <__sfvwrite_r+0x226>
 80059b2:	6961      	ldr	r1, [r4, #20]
 80059b4:	42a9      	cmp	r1, r5
 80059b6:	d812      	bhi.n	80059de <__sfvwrite_r+0x226>
 80059b8:	4b3c      	ldr	r3, [pc, #240]	; (8005aac <__sfvwrite_r+0x2f4>)
 80059ba:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80059bc:	429d      	cmp	r5, r3
 80059be:	bf94      	ite	ls
 80059c0:	462b      	movls	r3, r5
 80059c2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80059c6:	464a      	mov	r2, r9
 80059c8:	fb93 f3f1 	sdiv	r3, r3, r1
 80059cc:	4650      	mov	r0, sl
 80059ce:	fb01 f303 	mul.w	r3, r1, r3
 80059d2:	69e1      	ldr	r1, [r4, #28]
 80059d4:	47b8      	blx	r7
 80059d6:	1e07      	subs	r7, r0, #0
 80059d8:	ddde      	ble.n	8005998 <__sfvwrite_r+0x1e0>
 80059da:	1bed      	subs	r5, r5, r7
 80059dc:	e78e      	b.n	80058fc <__sfvwrite_r+0x144>
 80059de:	42af      	cmp	r7, r5
 80059e0:	bf28      	it	cs
 80059e2:	462f      	movcs	r7, r5
 80059e4:	463a      	mov	r2, r7
 80059e6:	4649      	mov	r1, r9
 80059e8:	f000 fbc0 	bl	800616c <memmove>
 80059ec:	68a3      	ldr	r3, [r4, #8]
 80059ee:	6822      	ldr	r2, [r4, #0]
 80059f0:	1bdb      	subs	r3, r3, r7
 80059f2:	443a      	add	r2, r7
 80059f4:	60a3      	str	r3, [r4, #8]
 80059f6:	6022      	str	r2, [r4, #0]
 80059f8:	2b00      	cmp	r3, #0
 80059fa:	d1ee      	bne.n	80059da <__sfvwrite_r+0x222>
 80059fc:	4621      	mov	r1, r4
 80059fe:	4650      	mov	r0, sl
 8005a00:	f7ff fce8 	bl	80053d4 <_fflush_r>
 8005a04:	2800      	cmp	r0, #0
 8005a06:	d0e8      	beq.n	80059da <__sfvwrite_r+0x222>
 8005a08:	e7c6      	b.n	8005998 <__sfvwrite_r+0x1e0>
 8005a0a:	f10b 0308 	add.w	r3, fp, #8
 8005a0e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005a12:	469b      	mov	fp, r3
 8005a14:	3308      	adds	r3, #8
 8005a16:	2f00      	cmp	r7, #0
 8005a18:	d0f9      	beq.n	8005a0e <__sfvwrite_r+0x256>
 8005a1a:	463a      	mov	r2, r7
 8005a1c:	210a      	movs	r1, #10
 8005a1e:	4630      	mov	r0, r6
 8005a20:	f7fa fe7e 	bl	8000720 <memchr>
 8005a24:	b338      	cbz	r0, 8005a76 <__sfvwrite_r+0x2be>
 8005a26:	3001      	adds	r0, #1
 8005a28:	eba0 0906 	sub.w	r9, r0, r6
 8005a2c:	e783      	b.n	8005936 <__sfvwrite_r+0x17e>
 8005a2e:	462f      	mov	r7, r5
 8005a30:	46ab      	mov	fp, r5
 8005a32:	e757      	b.n	80058e4 <__sfvwrite_r+0x12c>
 8005a34:	4631      	mov	r1, r6
 8005a36:	462a      	mov	r2, r5
 8005a38:	f000 fb98 	bl	800616c <memmove>
 8005a3c:	6823      	ldr	r3, [r4, #0]
 8005a3e:	442b      	add	r3, r5
 8005a40:	6023      	str	r3, [r4, #0]
 8005a42:	4621      	mov	r1, r4
 8005a44:	4650      	mov	r0, sl
 8005a46:	f7ff fcc5 	bl	80053d4 <_fflush_r>
 8005a4a:	2800      	cmp	r0, #0
 8005a4c:	d08b      	beq.n	8005966 <__sfvwrite_r+0x1ae>
 8005a4e:	e7a3      	b.n	8005998 <__sfvwrite_r+0x1e0>
 8005a50:	4650      	mov	r0, sl
 8005a52:	f000 ff05 	bl	8006860 <_realloc_r>
 8005a56:	4603      	mov	r3, r0
 8005a58:	2800      	cmp	r0, #0
 8005a5a:	f47f af39 	bne.w	80058d0 <__sfvwrite_r+0x118>
 8005a5e:	6921      	ldr	r1, [r4, #16]
 8005a60:	4650      	mov	r0, sl
 8005a62:	f7ff fdb5 	bl	80055d0 <_free_r>
 8005a66:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a6a:	220c      	movs	r2, #12
 8005a6c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005a70:	f8ca 2000 	str.w	r2, [sl]
 8005a74:	e792      	b.n	800599c <__sfvwrite_r+0x1e4>
 8005a76:	f107 0901 	add.w	r9, r7, #1
 8005a7a:	e75c      	b.n	8005936 <__sfvwrite_r+0x17e>
 8005a7c:	461a      	mov	r2, r3
 8005a7e:	4631      	mov	r1, r6
 8005a80:	9301      	str	r3, [sp, #4]
 8005a82:	f000 fb73 	bl	800616c <memmove>
 8005a86:	9b01      	ldr	r3, [sp, #4]
 8005a88:	68a1      	ldr	r1, [r4, #8]
 8005a8a:	6822      	ldr	r2, [r4, #0]
 8005a8c:	1ac9      	subs	r1, r1, r3
 8005a8e:	441a      	add	r2, r3
 8005a90:	60a1      	str	r1, [r4, #8]
 8005a92:	6022      	str	r2, [r4, #0]
 8005a94:	461d      	mov	r5, r3
 8005a96:	e766      	b.n	8005966 <__sfvwrite_r+0x1ae>
 8005a98:	230c      	movs	r3, #12
 8005a9a:	f8ca 3000 	str.w	r3, [sl]
 8005a9e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005aa2:	e77b      	b.n	800599c <__sfvwrite_r+0x1e4>
 8005aa4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005aa8:	e76b      	b.n	8005982 <__sfvwrite_r+0x1ca>
 8005aaa:	bf00      	nop
 8005aac:	7ffffffe 	.word	0x7ffffffe
 8005ab0:	7ffffc00 	.word	0x7ffffc00

08005ab4 <_fwalk_reent>:
 8005ab4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005ab8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005abc:	d01f      	beq.n	8005afe <_fwalk_reent+0x4a>
 8005abe:	4688      	mov	r8, r1
 8005ac0:	4606      	mov	r6, r0
 8005ac2:	f04f 0900 	mov.w	r9, #0
 8005ac6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005aca:	3d01      	subs	r5, #1
 8005acc:	d411      	bmi.n	8005af2 <_fwalk_reent+0x3e>
 8005ace:	89a3      	ldrh	r3, [r4, #12]
 8005ad0:	2b01      	cmp	r3, #1
 8005ad2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005ad6:	4621      	mov	r1, r4
 8005ad8:	4630      	mov	r0, r6
 8005ada:	d906      	bls.n	8005aea <_fwalk_reent+0x36>
 8005adc:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005ae0:	3301      	adds	r3, #1
 8005ae2:	d002      	beq.n	8005aea <_fwalk_reent+0x36>
 8005ae4:	47c0      	blx	r8
 8005ae6:	ea49 0900 	orr.w	r9, r9, r0
 8005aea:	1c6b      	adds	r3, r5, #1
 8005aec:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005af0:	d1ed      	bne.n	8005ace <_fwalk_reent+0x1a>
 8005af2:	683f      	ldr	r7, [r7, #0]
 8005af4:	2f00      	cmp	r7, #0
 8005af6:	d1e6      	bne.n	8005ac6 <_fwalk_reent+0x12>
 8005af8:	4648      	mov	r0, r9
 8005afa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005afe:	46b9      	mov	r9, r7
 8005b00:	4648      	mov	r0, r9
 8005b02:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005b06:	bf00      	nop

08005b08 <_localeconv_r>:
 8005b08:	4a04      	ldr	r2, [pc, #16]	; (8005b1c <_localeconv_r+0x14>)
 8005b0a:	4b05      	ldr	r3, [pc, #20]	; (8005b20 <_localeconv_r+0x18>)
 8005b0c:	6812      	ldr	r2, [r2, #0]
 8005b0e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005b10:	2800      	cmp	r0, #0
 8005b12:	bf08      	it	eq
 8005b14:	4618      	moveq	r0, r3
 8005b16:	30f0      	adds	r0, #240	; 0xf0
 8005b18:	4770      	bx	lr
 8005b1a:	bf00      	nop
 8005b1c:	200000b4 	.word	0x200000b4
 8005b20:	200008f4 	.word	0x200008f4

08005b24 <__retarget_lock_init_recursive>:
 8005b24:	4770      	bx	lr
 8005b26:	bf00      	nop

08005b28 <__retarget_lock_close_recursive>:
 8005b28:	4770      	bx	lr
 8005b2a:	bf00      	nop

08005b2c <__retarget_lock_acquire_recursive>:
 8005b2c:	4770      	bx	lr
 8005b2e:	bf00      	nop

08005b30 <__retarget_lock_release_recursive>:
 8005b30:	4770      	bx	lr
 8005b32:	bf00      	nop

08005b34 <__swhatbuf_r>:
 8005b34:	b570      	push	{r4, r5, r6, lr}
 8005b36:	460c      	mov	r4, r1
 8005b38:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005b3c:	2900      	cmp	r1, #0
 8005b3e:	b096      	sub	sp, #88	; 0x58
 8005b40:	4615      	mov	r5, r2
 8005b42:	461e      	mov	r6, r3
 8005b44:	da0f      	bge.n	8005b66 <__swhatbuf_r+0x32>
 8005b46:	89a2      	ldrh	r2, [r4, #12]
 8005b48:	2300      	movs	r3, #0
 8005b4a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005b4e:	6033      	str	r3, [r6, #0]
 8005b50:	d104      	bne.n	8005b5c <__swhatbuf_r+0x28>
 8005b52:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005b56:	602b      	str	r3, [r5, #0]
 8005b58:	b016      	add	sp, #88	; 0x58
 8005b5a:	bd70      	pop	{r4, r5, r6, pc}
 8005b5c:	2240      	movs	r2, #64	; 0x40
 8005b5e:	4618      	mov	r0, r3
 8005b60:	602a      	str	r2, [r5, #0]
 8005b62:	b016      	add	sp, #88	; 0x58
 8005b64:	bd70      	pop	{r4, r5, r6, pc}
 8005b66:	466a      	mov	r2, sp
 8005b68:	f001 fad0 	bl	800710c <_fstat_r>
 8005b6c:	2800      	cmp	r0, #0
 8005b6e:	dbea      	blt.n	8005b46 <__swhatbuf_r+0x12>
 8005b70:	9b01      	ldr	r3, [sp, #4]
 8005b72:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005b76:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005b7a:	fab3 f383 	clz	r3, r3
 8005b7e:	095b      	lsrs	r3, r3, #5
 8005b80:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005b84:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005b88:	6033      	str	r3, [r6, #0]
 8005b8a:	602a      	str	r2, [r5, #0]
 8005b8c:	b016      	add	sp, #88	; 0x58
 8005b8e:	bd70      	pop	{r4, r5, r6, pc}

08005b90 <__smakebuf_r>:
 8005b90:	898a      	ldrh	r2, [r1, #12]
 8005b92:	0792      	lsls	r2, r2, #30
 8005b94:	460b      	mov	r3, r1
 8005b96:	d506      	bpl.n	8005ba6 <__smakebuf_r+0x16>
 8005b98:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005b9c:	2101      	movs	r1, #1
 8005b9e:	601a      	str	r2, [r3, #0]
 8005ba0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005ba4:	4770      	bx	lr
 8005ba6:	b570      	push	{r4, r5, r6, lr}
 8005ba8:	b082      	sub	sp, #8
 8005baa:	ab01      	add	r3, sp, #4
 8005bac:	466a      	mov	r2, sp
 8005bae:	460c      	mov	r4, r1
 8005bb0:	4605      	mov	r5, r0
 8005bb2:	f7ff ffbf 	bl	8005b34 <__swhatbuf_r>
 8005bb6:	9900      	ldr	r1, [sp, #0]
 8005bb8:	4606      	mov	r6, r0
 8005bba:	4628      	mov	r0, r5
 8005bbc:	f000 f832 	bl	8005c24 <_malloc_r>
 8005bc0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005bc4:	b1d8      	cbz	r0, 8005bfe <__smakebuf_r+0x6e>
 8005bc6:	4916      	ldr	r1, [pc, #88]	; (8005c20 <__smakebuf_r+0x90>)
 8005bc8:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005bca:	9a01      	ldr	r2, [sp, #4]
 8005bcc:	9900      	ldr	r1, [sp, #0]
 8005bce:	6020      	str	r0, [r4, #0]
 8005bd0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005bd4:	81a3      	strh	r3, [r4, #12]
 8005bd6:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005bda:	b91a      	cbnz	r2, 8005be4 <__smakebuf_r+0x54>
 8005bdc:	4333      	orrs	r3, r6
 8005bde:	81a3      	strh	r3, [r4, #12]
 8005be0:	b002      	add	sp, #8
 8005be2:	bd70      	pop	{r4, r5, r6, pc}
 8005be4:	4628      	mov	r0, r5
 8005be6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005bea:	f001 faa3 	bl	8007134 <_isatty_r>
 8005bee:	b1a0      	cbz	r0, 8005c1a <__smakebuf_r+0x8a>
 8005bf0:	89a3      	ldrh	r3, [r4, #12]
 8005bf2:	f023 0303 	bic.w	r3, r3, #3
 8005bf6:	f043 0301 	orr.w	r3, r3, #1
 8005bfa:	b21b      	sxth	r3, r3
 8005bfc:	e7ee      	b.n	8005bdc <__smakebuf_r+0x4c>
 8005bfe:	059a      	lsls	r2, r3, #22
 8005c00:	d4ee      	bmi.n	8005be0 <__smakebuf_r+0x50>
 8005c02:	f023 0303 	bic.w	r3, r3, #3
 8005c06:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005c0a:	f043 0302 	orr.w	r3, r3, #2
 8005c0e:	2101      	movs	r1, #1
 8005c10:	81a3      	strh	r3, [r4, #12]
 8005c12:	6022      	str	r2, [r4, #0]
 8005c14:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005c18:	e7e2      	b.n	8005be0 <__smakebuf_r+0x50>
 8005c1a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c1e:	e7dd      	b.n	8005bdc <__smakebuf_r+0x4c>
 8005c20:	08005481 	.word	0x08005481

08005c24 <_malloc_r>:
 8005c24:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005c28:	f101 050b 	add.w	r5, r1, #11
 8005c2c:	2d16      	cmp	r5, #22
 8005c2e:	b083      	sub	sp, #12
 8005c30:	4606      	mov	r6, r0
 8005c32:	d823      	bhi.n	8005c7c <_malloc_r+0x58>
 8005c34:	2910      	cmp	r1, #16
 8005c36:	f200 80b9 	bhi.w	8005dac <_malloc_r+0x188>
 8005c3a:	f000 fafb 	bl	8006234 <__malloc_lock>
 8005c3e:	2510      	movs	r5, #16
 8005c40:	2318      	movs	r3, #24
 8005c42:	2002      	movs	r0, #2
 8005c44:	4fc5      	ldr	r7, [pc, #788]	; (8005f5c <_malloc_r+0x338>)
 8005c46:	443b      	add	r3, r7
 8005c48:	f1a3 0208 	sub.w	r2, r3, #8
 8005c4c:	685c      	ldr	r4, [r3, #4]
 8005c4e:	4294      	cmp	r4, r2
 8005c50:	f000 8166 	beq.w	8005f20 <_malloc_r+0x2fc>
 8005c54:	6863      	ldr	r3, [r4, #4]
 8005c56:	f023 0303 	bic.w	r3, r3, #3
 8005c5a:	4423      	add	r3, r4
 8005c5c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005c60:	685a      	ldr	r2, [r3, #4]
 8005c62:	60e9      	str	r1, [r5, #12]
 8005c64:	f042 0201 	orr.w	r2, r2, #1
 8005c68:	608d      	str	r5, [r1, #8]
 8005c6a:	4630      	mov	r0, r6
 8005c6c:	605a      	str	r2, [r3, #4]
 8005c6e:	f000 fae7 	bl	8006240 <__malloc_unlock>
 8005c72:	3408      	adds	r4, #8
 8005c74:	4620      	mov	r0, r4
 8005c76:	b003      	add	sp, #12
 8005c78:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c7c:	f035 0507 	bics.w	r5, r5, #7
 8005c80:	f100 8094 	bmi.w	8005dac <_malloc_r+0x188>
 8005c84:	42a9      	cmp	r1, r5
 8005c86:	f200 8091 	bhi.w	8005dac <_malloc_r+0x188>
 8005c8a:	f000 fad3 	bl	8006234 <__malloc_lock>
 8005c8e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005c92:	f0c0 8183 	bcc.w	8005f9c <_malloc_r+0x378>
 8005c96:	0a6b      	lsrs	r3, r5, #9
 8005c98:	f000 808f 	beq.w	8005dba <_malloc_r+0x196>
 8005c9c:	2b04      	cmp	r3, #4
 8005c9e:	f200 8146 	bhi.w	8005f2e <_malloc_r+0x30a>
 8005ca2:	09ab      	lsrs	r3, r5, #6
 8005ca4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005ca8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005cac:	00c3      	lsls	r3, r0, #3
 8005cae:	4fab      	ldr	r7, [pc, #684]	; (8005f5c <_malloc_r+0x338>)
 8005cb0:	443b      	add	r3, r7
 8005cb2:	f1a3 0108 	sub.w	r1, r3, #8
 8005cb6:	685c      	ldr	r4, [r3, #4]
 8005cb8:	42a1      	cmp	r1, r4
 8005cba:	d106      	bne.n	8005cca <_malloc_r+0xa6>
 8005cbc:	e00c      	b.n	8005cd8 <_malloc_r+0xb4>
 8005cbe:	2a00      	cmp	r2, #0
 8005cc0:	f280 811d 	bge.w	8005efe <_malloc_r+0x2da>
 8005cc4:	68e4      	ldr	r4, [r4, #12]
 8005cc6:	42a1      	cmp	r1, r4
 8005cc8:	d006      	beq.n	8005cd8 <_malloc_r+0xb4>
 8005cca:	6863      	ldr	r3, [r4, #4]
 8005ccc:	f023 0303 	bic.w	r3, r3, #3
 8005cd0:	1b5a      	subs	r2, r3, r5
 8005cd2:	2a0f      	cmp	r2, #15
 8005cd4:	ddf3      	ble.n	8005cbe <_malloc_r+0x9a>
 8005cd6:	4660      	mov	r0, ip
 8005cd8:	693c      	ldr	r4, [r7, #16]
 8005cda:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005f70 <_malloc_r+0x34c>
 8005cde:	4564      	cmp	r4, ip
 8005ce0:	d071      	beq.n	8005dc6 <_malloc_r+0x1a2>
 8005ce2:	6863      	ldr	r3, [r4, #4]
 8005ce4:	f023 0303 	bic.w	r3, r3, #3
 8005ce8:	1b5a      	subs	r2, r3, r5
 8005cea:	2a0f      	cmp	r2, #15
 8005cec:	f300 8144 	bgt.w	8005f78 <_malloc_r+0x354>
 8005cf0:	2a00      	cmp	r2, #0
 8005cf2:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005cf6:	f280 8126 	bge.w	8005f46 <_malloc_r+0x322>
 8005cfa:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005cfe:	f080 8169 	bcs.w	8005fd4 <_malloc_r+0x3b0>
 8005d02:	08db      	lsrs	r3, r3, #3
 8005d04:	1c59      	adds	r1, r3, #1
 8005d06:	687a      	ldr	r2, [r7, #4]
 8005d08:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005d0c:	f8c4 8008 	str.w	r8, [r4, #8]
 8005d10:	f04f 0e01 	mov.w	lr, #1
 8005d14:	109b      	asrs	r3, r3, #2
 8005d16:	fa0e f303 	lsl.w	r3, lr, r3
 8005d1a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005d1e:	4313      	orrs	r3, r2
 8005d20:	f1ae 0208 	sub.w	r2, lr, #8
 8005d24:	60e2      	str	r2, [r4, #12]
 8005d26:	607b      	str	r3, [r7, #4]
 8005d28:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005d2c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005d30:	1082      	asrs	r2, r0, #2
 8005d32:	2401      	movs	r4, #1
 8005d34:	4094      	lsls	r4, r2
 8005d36:	429c      	cmp	r4, r3
 8005d38:	d84b      	bhi.n	8005dd2 <_malloc_r+0x1ae>
 8005d3a:	421c      	tst	r4, r3
 8005d3c:	d106      	bne.n	8005d4c <_malloc_r+0x128>
 8005d3e:	f020 0003 	bic.w	r0, r0, #3
 8005d42:	0064      	lsls	r4, r4, #1
 8005d44:	421c      	tst	r4, r3
 8005d46:	f100 0004 	add.w	r0, r0, #4
 8005d4a:	d0fa      	beq.n	8005d42 <_malloc_r+0x11e>
 8005d4c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005d50:	46ce      	mov	lr, r9
 8005d52:	4680      	mov	r8, r0
 8005d54:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005d58:	459e      	cmp	lr, r3
 8005d5a:	d107      	bne.n	8005d6c <_malloc_r+0x148>
 8005d5c:	e122      	b.n	8005fa4 <_malloc_r+0x380>
 8005d5e:	2a00      	cmp	r2, #0
 8005d60:	f280 8129 	bge.w	8005fb6 <_malloc_r+0x392>
 8005d64:	68db      	ldr	r3, [r3, #12]
 8005d66:	459e      	cmp	lr, r3
 8005d68:	f000 811c 	beq.w	8005fa4 <_malloc_r+0x380>
 8005d6c:	6859      	ldr	r1, [r3, #4]
 8005d6e:	f021 0103 	bic.w	r1, r1, #3
 8005d72:	1b4a      	subs	r2, r1, r5
 8005d74:	2a0f      	cmp	r2, #15
 8005d76:	ddf2      	ble.n	8005d5e <_malloc_r+0x13a>
 8005d78:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005d7c:	195c      	adds	r4, r3, r5
 8005d7e:	f045 0501 	orr.w	r5, r5, #1
 8005d82:	605d      	str	r5, [r3, #4]
 8005d84:	f042 0501 	orr.w	r5, r2, #1
 8005d88:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005d8c:	4630      	mov	r0, r6
 8005d8e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005d92:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005d96:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005d9a:	6065      	str	r5, [r4, #4]
 8005d9c:	505a      	str	r2, [r3, r1]
 8005d9e:	9301      	str	r3, [sp, #4]
 8005da0:	f000 fa4e 	bl	8006240 <__malloc_unlock>
 8005da4:	9b01      	ldr	r3, [sp, #4]
 8005da6:	f103 0408 	add.w	r4, r3, #8
 8005daa:	e763      	b.n	8005c74 <_malloc_r+0x50>
 8005dac:	2400      	movs	r4, #0
 8005dae:	230c      	movs	r3, #12
 8005db0:	4620      	mov	r0, r4
 8005db2:	6033      	str	r3, [r6, #0]
 8005db4:	b003      	add	sp, #12
 8005db6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005dba:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005dbe:	2040      	movs	r0, #64	; 0x40
 8005dc0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005dc4:	e773      	b.n	8005cae <_malloc_r+0x8a>
 8005dc6:	687b      	ldr	r3, [r7, #4]
 8005dc8:	1082      	asrs	r2, r0, #2
 8005dca:	2401      	movs	r4, #1
 8005dcc:	4094      	lsls	r4, r2
 8005dce:	429c      	cmp	r4, r3
 8005dd0:	d9b3      	bls.n	8005d3a <_malloc_r+0x116>
 8005dd2:	68bc      	ldr	r4, [r7, #8]
 8005dd4:	6863      	ldr	r3, [r4, #4]
 8005dd6:	f023 0903 	bic.w	r9, r3, #3
 8005dda:	45a9      	cmp	r9, r5
 8005ddc:	d303      	bcc.n	8005de6 <_malloc_r+0x1c2>
 8005dde:	eba9 0305 	sub.w	r3, r9, r5
 8005de2:	2b0f      	cmp	r3, #15
 8005de4:	dc7b      	bgt.n	8005ede <_malloc_r+0x2ba>
 8005de6:	4b5e      	ldr	r3, [pc, #376]	; (8005f60 <_malloc_r+0x33c>)
 8005de8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005f74 <_malloc_r+0x350>
 8005dec:	681a      	ldr	r2, [r3, #0]
 8005dee:	f8da 3000 	ldr.w	r3, [sl]
 8005df2:	3301      	adds	r3, #1
 8005df4:	eb05 0802 	add.w	r8, r5, r2
 8005df8:	f000 8148 	beq.w	800608c <_malloc_r+0x468>
 8005dfc:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005e00:	f108 080f 	add.w	r8, r8, #15
 8005e04:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005e08:	f028 080f 	bic.w	r8, r8, #15
 8005e0c:	4641      	mov	r1, r8
 8005e0e:	4630      	mov	r0, r6
 8005e10:	f000 ff08 	bl	8006c24 <_sbrk_r>
 8005e14:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005e18:	4683      	mov	fp, r0
 8005e1a:	f000 8104 	beq.w	8006026 <_malloc_r+0x402>
 8005e1e:	eb04 0009 	add.w	r0, r4, r9
 8005e22:	4558      	cmp	r0, fp
 8005e24:	f200 80fd 	bhi.w	8006022 <_malloc_r+0x3fe>
 8005e28:	4a4e      	ldr	r2, [pc, #312]	; (8005f64 <_malloc_r+0x340>)
 8005e2a:	6813      	ldr	r3, [r2, #0]
 8005e2c:	4443      	add	r3, r8
 8005e2e:	6013      	str	r3, [r2, #0]
 8005e30:	f000 814d 	beq.w	80060ce <_malloc_r+0x4aa>
 8005e34:	f8da 1000 	ldr.w	r1, [sl]
 8005e38:	3101      	adds	r1, #1
 8005e3a:	bf1b      	ittet	ne
 8005e3c:	ebab 0000 	subne.w	r0, fp, r0
 8005e40:	181b      	addne	r3, r3, r0
 8005e42:	f8ca b000 	streq.w	fp, [sl]
 8005e46:	6013      	strne	r3, [r2, #0]
 8005e48:	f01b 0307 	ands.w	r3, fp, #7
 8005e4c:	f000 8134 	beq.w	80060b8 <_malloc_r+0x494>
 8005e50:	f1c3 0108 	rsb	r1, r3, #8
 8005e54:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005e58:	448b      	add	fp, r1
 8005e5a:	3308      	adds	r3, #8
 8005e5c:	44d8      	add	r8, fp
 8005e5e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005e62:	eba3 0808 	sub.w	r8, r3, r8
 8005e66:	4641      	mov	r1, r8
 8005e68:	4630      	mov	r0, r6
 8005e6a:	9201      	str	r2, [sp, #4]
 8005e6c:	f000 feda 	bl	8006c24 <_sbrk_r>
 8005e70:	1c43      	adds	r3, r0, #1
 8005e72:	9a01      	ldr	r2, [sp, #4]
 8005e74:	f000 8146 	beq.w	8006104 <_malloc_r+0x4e0>
 8005e78:	eba0 010b 	sub.w	r1, r0, fp
 8005e7c:	4441      	add	r1, r8
 8005e7e:	f041 0101 	orr.w	r1, r1, #1
 8005e82:	6813      	ldr	r3, [r2, #0]
 8005e84:	f8c7 b008 	str.w	fp, [r7, #8]
 8005e88:	4443      	add	r3, r8
 8005e8a:	42bc      	cmp	r4, r7
 8005e8c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005e90:	6013      	str	r3, [r2, #0]
 8005e92:	d015      	beq.n	8005ec0 <_malloc_r+0x29c>
 8005e94:	f1b9 0f0f 	cmp.w	r9, #15
 8005e98:	f240 8130 	bls.w	80060fc <_malloc_r+0x4d8>
 8005e9c:	6860      	ldr	r0, [r4, #4]
 8005e9e:	f1a9 010c 	sub.w	r1, r9, #12
 8005ea2:	f021 0107 	bic.w	r1, r1, #7
 8005ea6:	f000 0001 	and.w	r0, r0, #1
 8005eaa:	eb04 0c01 	add.w	ip, r4, r1
 8005eae:	4308      	orrs	r0, r1
 8005eb0:	f04f 0e05 	mov.w	lr, #5
 8005eb4:	290f      	cmp	r1, #15
 8005eb6:	6060      	str	r0, [r4, #4]
 8005eb8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005ebc:	f200 813a 	bhi.w	8006134 <_malloc_r+0x510>
 8005ec0:	4a29      	ldr	r2, [pc, #164]	; (8005f68 <_malloc_r+0x344>)
 8005ec2:	482a      	ldr	r0, [pc, #168]	; (8005f6c <_malloc_r+0x348>)
 8005ec4:	6811      	ldr	r1, [r2, #0]
 8005ec6:	68bc      	ldr	r4, [r7, #8]
 8005ec8:	428b      	cmp	r3, r1
 8005eca:	6801      	ldr	r1, [r0, #0]
 8005ecc:	bf88      	it	hi
 8005ece:	6013      	strhi	r3, [r2, #0]
 8005ed0:	6862      	ldr	r2, [r4, #4]
 8005ed2:	428b      	cmp	r3, r1
 8005ed4:	f022 0203 	bic.w	r2, r2, #3
 8005ed8:	bf88      	it	hi
 8005eda:	6003      	strhi	r3, [r0, #0]
 8005edc:	e0a7      	b.n	800602e <_malloc_r+0x40a>
 8005ede:	1962      	adds	r2, r4, r5
 8005ee0:	f043 0301 	orr.w	r3, r3, #1
 8005ee4:	f045 0501 	orr.w	r5, r5, #1
 8005ee8:	6065      	str	r5, [r4, #4]
 8005eea:	4630      	mov	r0, r6
 8005eec:	60ba      	str	r2, [r7, #8]
 8005eee:	6053      	str	r3, [r2, #4]
 8005ef0:	f000 f9a6 	bl	8006240 <__malloc_unlock>
 8005ef4:	3408      	adds	r4, #8
 8005ef6:	4620      	mov	r0, r4
 8005ef8:	b003      	add	sp, #12
 8005efa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005efe:	4423      	add	r3, r4
 8005f00:	68e1      	ldr	r1, [r4, #12]
 8005f02:	685a      	ldr	r2, [r3, #4]
 8005f04:	68a5      	ldr	r5, [r4, #8]
 8005f06:	f042 0201 	orr.w	r2, r2, #1
 8005f0a:	60e9      	str	r1, [r5, #12]
 8005f0c:	4630      	mov	r0, r6
 8005f0e:	608d      	str	r5, [r1, #8]
 8005f10:	605a      	str	r2, [r3, #4]
 8005f12:	f000 f995 	bl	8006240 <__malloc_unlock>
 8005f16:	3408      	adds	r4, #8
 8005f18:	4620      	mov	r0, r4
 8005f1a:	b003      	add	sp, #12
 8005f1c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f20:	68dc      	ldr	r4, [r3, #12]
 8005f22:	42a3      	cmp	r3, r4
 8005f24:	bf08      	it	eq
 8005f26:	3002      	addeq	r0, #2
 8005f28:	f43f aed6 	beq.w	8005cd8 <_malloc_r+0xb4>
 8005f2c:	e692      	b.n	8005c54 <_malloc_r+0x30>
 8005f2e:	2b14      	cmp	r3, #20
 8005f30:	d971      	bls.n	8006016 <_malloc_r+0x3f2>
 8005f32:	2b54      	cmp	r3, #84	; 0x54
 8005f34:	f200 80ad 	bhi.w	8006092 <_malloc_r+0x46e>
 8005f38:	0b2b      	lsrs	r3, r5, #12
 8005f3a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005f3e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005f42:	00c3      	lsls	r3, r0, #3
 8005f44:	e6b3      	b.n	8005cae <_malloc_r+0x8a>
 8005f46:	4423      	add	r3, r4
 8005f48:	4630      	mov	r0, r6
 8005f4a:	685a      	ldr	r2, [r3, #4]
 8005f4c:	f042 0201 	orr.w	r2, r2, #1
 8005f50:	605a      	str	r2, [r3, #4]
 8005f52:	3408      	adds	r4, #8
 8005f54:	f000 f974 	bl	8006240 <__malloc_unlock>
 8005f58:	e68c      	b.n	8005c74 <_malloc_r+0x50>
 8005f5a:	bf00      	nop
 8005f5c:	200004e4 	.word	0x200004e4
 8005f60:	20000b34 	.word	0x20000b34
 8005f64:	20000b04 	.word	0x20000b04
 8005f68:	20000b2c 	.word	0x20000b2c
 8005f6c:	20000b30 	.word	0x20000b30
 8005f70:	200004ec 	.word	0x200004ec
 8005f74:	200008ec 	.word	0x200008ec
 8005f78:	1961      	adds	r1, r4, r5
 8005f7a:	f045 0e01 	orr.w	lr, r5, #1
 8005f7e:	f042 0501 	orr.w	r5, r2, #1
 8005f82:	f8c4 e004 	str.w	lr, [r4, #4]
 8005f86:	4630      	mov	r0, r6
 8005f88:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005f8c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005f90:	604d      	str	r5, [r1, #4]
 8005f92:	50e2      	str	r2, [r4, r3]
 8005f94:	f000 f954 	bl	8006240 <__malloc_unlock>
 8005f98:	3408      	adds	r4, #8
 8005f9a:	e66b      	b.n	8005c74 <_malloc_r+0x50>
 8005f9c:	08e8      	lsrs	r0, r5, #3
 8005f9e:	f105 0308 	add.w	r3, r5, #8
 8005fa2:	e64f      	b.n	8005c44 <_malloc_r+0x20>
 8005fa4:	f108 0801 	add.w	r8, r8, #1
 8005fa8:	f018 0f03 	tst.w	r8, #3
 8005fac:	f10e 0e08 	add.w	lr, lr, #8
 8005fb0:	f47f aed0 	bne.w	8005d54 <_malloc_r+0x130>
 8005fb4:	e052      	b.n	800605c <_malloc_r+0x438>
 8005fb6:	4419      	add	r1, r3
 8005fb8:	461c      	mov	r4, r3
 8005fba:	684a      	ldr	r2, [r1, #4]
 8005fbc:	68db      	ldr	r3, [r3, #12]
 8005fbe:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005fc2:	f042 0201 	orr.w	r2, r2, #1
 8005fc6:	604a      	str	r2, [r1, #4]
 8005fc8:	4630      	mov	r0, r6
 8005fca:	60eb      	str	r3, [r5, #12]
 8005fcc:	609d      	str	r5, [r3, #8]
 8005fce:	f000 f937 	bl	8006240 <__malloc_unlock>
 8005fd2:	e64f      	b.n	8005c74 <_malloc_r+0x50>
 8005fd4:	0a5a      	lsrs	r2, r3, #9
 8005fd6:	2a04      	cmp	r2, #4
 8005fd8:	d935      	bls.n	8006046 <_malloc_r+0x422>
 8005fda:	2a14      	cmp	r2, #20
 8005fdc:	d86f      	bhi.n	80060be <_malloc_r+0x49a>
 8005fde:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005fe2:	00c9      	lsls	r1, r1, #3
 8005fe4:	325b      	adds	r2, #91	; 0x5b
 8005fe6:	eb07 0e01 	add.w	lr, r7, r1
 8005fea:	5879      	ldr	r1, [r7, r1]
 8005fec:	f1ae 0e08 	sub.w	lr, lr, #8
 8005ff0:	458e      	cmp	lr, r1
 8005ff2:	d058      	beq.n	80060a6 <_malloc_r+0x482>
 8005ff4:	684a      	ldr	r2, [r1, #4]
 8005ff6:	f022 0203 	bic.w	r2, r2, #3
 8005ffa:	429a      	cmp	r2, r3
 8005ffc:	d902      	bls.n	8006004 <_malloc_r+0x3e0>
 8005ffe:	6889      	ldr	r1, [r1, #8]
 8006000:	458e      	cmp	lr, r1
 8006002:	d1f7      	bne.n	8005ff4 <_malloc_r+0x3d0>
 8006004:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006008:	687b      	ldr	r3, [r7, #4]
 800600a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 800600e:	f8ce 4008 	str.w	r4, [lr, #8]
 8006012:	60cc      	str	r4, [r1, #12]
 8006014:	e68c      	b.n	8005d30 <_malloc_r+0x10c>
 8006016:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 800601a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 800601e:	00c3      	lsls	r3, r0, #3
 8006020:	e645      	b.n	8005cae <_malloc_r+0x8a>
 8006022:	42bc      	cmp	r4, r7
 8006024:	d072      	beq.n	800610c <_malloc_r+0x4e8>
 8006026:	68bc      	ldr	r4, [r7, #8]
 8006028:	6862      	ldr	r2, [r4, #4]
 800602a:	f022 0203 	bic.w	r2, r2, #3
 800602e:	4295      	cmp	r5, r2
 8006030:	eba2 0305 	sub.w	r3, r2, r5
 8006034:	d802      	bhi.n	800603c <_malloc_r+0x418>
 8006036:	2b0f      	cmp	r3, #15
 8006038:	f73f af51 	bgt.w	8005ede <_malloc_r+0x2ba>
 800603c:	4630      	mov	r0, r6
 800603e:	f000 f8ff 	bl	8006240 <__malloc_unlock>
 8006042:	2400      	movs	r4, #0
 8006044:	e616      	b.n	8005c74 <_malloc_r+0x50>
 8006046:	099a      	lsrs	r2, r3, #6
 8006048:	f102 0139 	add.w	r1, r2, #57	; 0x39
 800604c:	00c9      	lsls	r1, r1, #3
 800604e:	3238      	adds	r2, #56	; 0x38
 8006050:	e7c9      	b.n	8005fe6 <_malloc_r+0x3c2>
 8006052:	f8d9 9000 	ldr.w	r9, [r9]
 8006056:	4599      	cmp	r9, r3
 8006058:	f040 8083 	bne.w	8006162 <_malloc_r+0x53e>
 800605c:	f010 0f03 	tst.w	r0, #3
 8006060:	f1a9 0308 	sub.w	r3, r9, #8
 8006064:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006068:	d1f3      	bne.n	8006052 <_malloc_r+0x42e>
 800606a:	687b      	ldr	r3, [r7, #4]
 800606c:	ea23 0304 	bic.w	r3, r3, r4
 8006070:	607b      	str	r3, [r7, #4]
 8006072:	0064      	lsls	r4, r4, #1
 8006074:	429c      	cmp	r4, r3
 8006076:	f63f aeac 	bhi.w	8005dd2 <_malloc_r+0x1ae>
 800607a:	b91c      	cbnz	r4, 8006084 <_malloc_r+0x460>
 800607c:	e6a9      	b.n	8005dd2 <_malloc_r+0x1ae>
 800607e:	0064      	lsls	r4, r4, #1
 8006080:	f108 0804 	add.w	r8, r8, #4
 8006084:	421c      	tst	r4, r3
 8006086:	d0fa      	beq.n	800607e <_malloc_r+0x45a>
 8006088:	4640      	mov	r0, r8
 800608a:	e65f      	b.n	8005d4c <_malloc_r+0x128>
 800608c:	f108 0810 	add.w	r8, r8, #16
 8006090:	e6bc      	b.n	8005e0c <_malloc_r+0x1e8>
 8006092:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8006096:	d826      	bhi.n	80060e6 <_malloc_r+0x4c2>
 8006098:	0beb      	lsrs	r3, r5, #15
 800609a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 800609e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80060a2:	00c3      	lsls	r3, r0, #3
 80060a4:	e603      	b.n	8005cae <_malloc_r+0x8a>
 80060a6:	687b      	ldr	r3, [r7, #4]
 80060a8:	1092      	asrs	r2, r2, #2
 80060aa:	f04f 0801 	mov.w	r8, #1
 80060ae:	fa08 f202 	lsl.w	r2, r8, r2
 80060b2:	4313      	orrs	r3, r2
 80060b4:	607b      	str	r3, [r7, #4]
 80060b6:	e7a8      	b.n	800600a <_malloc_r+0x3e6>
 80060b8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80060bc:	e6ce      	b.n	8005e5c <_malloc_r+0x238>
 80060be:	2a54      	cmp	r2, #84	; 0x54
 80060c0:	d829      	bhi.n	8006116 <_malloc_r+0x4f2>
 80060c2:	0b1a      	lsrs	r2, r3, #12
 80060c4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80060c8:	00c9      	lsls	r1, r1, #3
 80060ca:	326e      	adds	r2, #110	; 0x6e
 80060cc:	e78b      	b.n	8005fe6 <_malloc_r+0x3c2>
 80060ce:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80060d2:	2900      	cmp	r1, #0
 80060d4:	f47f aeae 	bne.w	8005e34 <_malloc_r+0x210>
 80060d8:	eb09 0208 	add.w	r2, r9, r8
 80060dc:	68b9      	ldr	r1, [r7, #8]
 80060de:	f042 0201 	orr.w	r2, r2, #1
 80060e2:	604a      	str	r2, [r1, #4]
 80060e4:	e6ec      	b.n	8005ec0 <_malloc_r+0x29c>
 80060e6:	f240 5254 	movw	r2, #1364	; 0x554
 80060ea:	4293      	cmp	r3, r2
 80060ec:	d81c      	bhi.n	8006128 <_malloc_r+0x504>
 80060ee:	0cab      	lsrs	r3, r5, #18
 80060f0:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80060f4:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80060f8:	00c3      	lsls	r3, r0, #3
 80060fa:	e5d8      	b.n	8005cae <_malloc_r+0x8a>
 80060fc:	2301      	movs	r3, #1
 80060fe:	f8cb 3004 	str.w	r3, [fp, #4]
 8006102:	e79b      	b.n	800603c <_malloc_r+0x418>
 8006104:	2101      	movs	r1, #1
 8006106:	f04f 0800 	mov.w	r8, #0
 800610a:	e6ba      	b.n	8005e82 <_malloc_r+0x25e>
 800610c:	4a16      	ldr	r2, [pc, #88]	; (8006168 <_malloc_r+0x544>)
 800610e:	6813      	ldr	r3, [r2, #0]
 8006110:	4443      	add	r3, r8
 8006112:	6013      	str	r3, [r2, #0]
 8006114:	e68e      	b.n	8005e34 <_malloc_r+0x210>
 8006116:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800611a:	d814      	bhi.n	8006146 <_malloc_r+0x522>
 800611c:	0bda      	lsrs	r2, r3, #15
 800611e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8006122:	00c9      	lsls	r1, r1, #3
 8006124:	3277      	adds	r2, #119	; 0x77
 8006126:	e75e      	b.n	8005fe6 <_malloc_r+0x3c2>
 8006128:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 800612c:	207f      	movs	r0, #127	; 0x7f
 800612e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8006132:	e5bc      	b.n	8005cae <_malloc_r+0x8a>
 8006134:	f104 0108 	add.w	r1, r4, #8
 8006138:	4630      	mov	r0, r6
 800613a:	9201      	str	r2, [sp, #4]
 800613c:	f7ff fa48 	bl	80055d0 <_free_r>
 8006140:	9a01      	ldr	r2, [sp, #4]
 8006142:	6813      	ldr	r3, [r2, #0]
 8006144:	e6bc      	b.n	8005ec0 <_malloc_r+0x29c>
 8006146:	f240 5154 	movw	r1, #1364	; 0x554
 800614a:	428a      	cmp	r2, r1
 800614c:	d805      	bhi.n	800615a <_malloc_r+0x536>
 800614e:	0c9a      	lsrs	r2, r3, #18
 8006150:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8006154:	00c9      	lsls	r1, r1, #3
 8006156:	327c      	adds	r2, #124	; 0x7c
 8006158:	e745      	b.n	8005fe6 <_malloc_r+0x3c2>
 800615a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 800615e:	227e      	movs	r2, #126	; 0x7e
 8006160:	e741      	b.n	8005fe6 <_malloc_r+0x3c2>
 8006162:	687b      	ldr	r3, [r7, #4]
 8006164:	e785      	b.n	8006072 <_malloc_r+0x44e>
 8006166:	bf00      	nop
 8006168:	20000b04 	.word	0x20000b04

0800616c <memmove>:
 800616c:	4288      	cmp	r0, r1
 800616e:	b4f0      	push	{r4, r5, r6, r7}
 8006170:	d90d      	bls.n	800618e <memmove+0x22>
 8006172:	188b      	adds	r3, r1, r2
 8006174:	4283      	cmp	r3, r0
 8006176:	d90a      	bls.n	800618e <memmove+0x22>
 8006178:	1884      	adds	r4, r0, r2
 800617a:	b132      	cbz	r2, 800618a <memmove+0x1e>
 800617c:	4622      	mov	r2, r4
 800617e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8006182:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8006186:	4299      	cmp	r1, r3
 8006188:	d1f9      	bne.n	800617e <memmove+0x12>
 800618a:	bcf0      	pop	{r4, r5, r6, r7}
 800618c:	4770      	bx	lr
 800618e:	2a0f      	cmp	r2, #15
 8006190:	d949      	bls.n	8006226 <memmove+0xba>
 8006192:	ea40 0301 	orr.w	r3, r0, r1
 8006196:	079b      	lsls	r3, r3, #30
 8006198:	d147      	bne.n	800622a <memmove+0xbe>
 800619a:	f1a2 0310 	sub.w	r3, r2, #16
 800619e:	091b      	lsrs	r3, r3, #4
 80061a0:	f101 0720 	add.w	r7, r1, #32
 80061a4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80061a8:	f101 0410 	add.w	r4, r1, #16
 80061ac:	f100 0510 	add.w	r5, r0, #16
 80061b0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80061b4:	f845 6c10 	str.w	r6, [r5, #-16]
 80061b8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80061bc:	f845 6c0c 	str.w	r6, [r5, #-12]
 80061c0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80061c4:	f845 6c08 	str.w	r6, [r5, #-8]
 80061c8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80061cc:	f845 6c04 	str.w	r6, [r5, #-4]
 80061d0:	3410      	adds	r4, #16
 80061d2:	42bc      	cmp	r4, r7
 80061d4:	f105 0510 	add.w	r5, r5, #16
 80061d8:	d1ea      	bne.n	80061b0 <memmove+0x44>
 80061da:	3301      	adds	r3, #1
 80061dc:	f002 050f 	and.w	r5, r2, #15
 80061e0:	011b      	lsls	r3, r3, #4
 80061e2:	2d03      	cmp	r5, #3
 80061e4:	4419      	add	r1, r3
 80061e6:	4403      	add	r3, r0
 80061e8:	d921      	bls.n	800622e <memmove+0xc2>
 80061ea:	1f1f      	subs	r7, r3, #4
 80061ec:	460e      	mov	r6, r1
 80061ee:	462c      	mov	r4, r5
 80061f0:	3c04      	subs	r4, #4
 80061f2:	f856 cb04 	ldr.w	ip, [r6], #4
 80061f6:	f847 cf04 	str.w	ip, [r7, #4]!
 80061fa:	2c03      	cmp	r4, #3
 80061fc:	d8f8      	bhi.n	80061f0 <memmove+0x84>
 80061fe:	1f2c      	subs	r4, r5, #4
 8006200:	f024 0403 	bic.w	r4, r4, #3
 8006204:	3404      	adds	r4, #4
 8006206:	4423      	add	r3, r4
 8006208:	4421      	add	r1, r4
 800620a:	f002 0203 	and.w	r2, r2, #3
 800620e:	2a00      	cmp	r2, #0
 8006210:	d0bb      	beq.n	800618a <memmove+0x1e>
 8006212:	3b01      	subs	r3, #1
 8006214:	440a      	add	r2, r1
 8006216:	f811 4b01 	ldrb.w	r4, [r1], #1
 800621a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800621e:	4291      	cmp	r1, r2
 8006220:	d1f9      	bne.n	8006216 <memmove+0xaa>
 8006222:	bcf0      	pop	{r4, r5, r6, r7}
 8006224:	4770      	bx	lr
 8006226:	4603      	mov	r3, r0
 8006228:	e7f1      	b.n	800620e <memmove+0xa2>
 800622a:	4603      	mov	r3, r0
 800622c:	e7f1      	b.n	8006212 <memmove+0xa6>
 800622e:	462a      	mov	r2, r5
 8006230:	e7ed      	b.n	800620e <memmove+0xa2>
 8006232:	bf00      	nop

08006234 <__malloc_lock>:
 8006234:	4801      	ldr	r0, [pc, #4]	; (800623c <__malloc_lock+0x8>)
 8006236:	f7ff bc79 	b.w	8005b2c <__retarget_lock_acquire_recursive>
 800623a:	bf00      	nop
 800623c:	20000b90 	.word	0x20000b90

08006240 <__malloc_unlock>:
 8006240:	4801      	ldr	r0, [pc, #4]	; (8006248 <__malloc_unlock+0x8>)
 8006242:	f7ff bc75 	b.w	8005b30 <__retarget_lock_release_recursive>
 8006246:	bf00      	nop
 8006248:	20000b90 	.word	0x20000b90

0800624c <_Balloc>:
 800624c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800624e:	b570      	push	{r4, r5, r6, lr}
 8006250:	4605      	mov	r5, r0
 8006252:	460c      	mov	r4, r1
 8006254:	b14b      	cbz	r3, 800626a <_Balloc+0x1e>
 8006256:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800625a:	b180      	cbz	r0, 800627e <_Balloc+0x32>
 800625c:	6802      	ldr	r2, [r0, #0]
 800625e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006262:	2300      	movs	r3, #0
 8006264:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006268:	bd70      	pop	{r4, r5, r6, pc}
 800626a:	2221      	movs	r2, #33	; 0x21
 800626c:	2104      	movs	r1, #4
 800626e:	f000 fe1d 	bl	8006eac <_calloc_r>
 8006272:	4603      	mov	r3, r0
 8006274:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006276:	2800      	cmp	r0, #0
 8006278:	d1ed      	bne.n	8006256 <_Balloc+0xa>
 800627a:	2000      	movs	r0, #0
 800627c:	bd70      	pop	{r4, r5, r6, pc}
 800627e:	2101      	movs	r1, #1
 8006280:	fa01 f604 	lsl.w	r6, r1, r4
 8006284:	1d72      	adds	r2, r6, #5
 8006286:	4628      	mov	r0, r5
 8006288:	0092      	lsls	r2, r2, #2
 800628a:	f000 fe0f 	bl	8006eac <_calloc_r>
 800628e:	2800      	cmp	r0, #0
 8006290:	d0f3      	beq.n	800627a <_Balloc+0x2e>
 8006292:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8006296:	e7e4      	b.n	8006262 <_Balloc+0x16>

08006298 <_Bfree>:
 8006298:	b131      	cbz	r1, 80062a8 <_Bfree+0x10>
 800629a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800629c:	684a      	ldr	r2, [r1, #4]
 800629e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80062a2:	6008      	str	r0, [r1, #0]
 80062a4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80062a8:	4770      	bx	lr
 80062aa:	bf00      	nop

080062ac <__multadd>:
 80062ac:	b5f0      	push	{r4, r5, r6, r7, lr}
 80062ae:	690c      	ldr	r4, [r1, #16]
 80062b0:	b083      	sub	sp, #12
 80062b2:	460d      	mov	r5, r1
 80062b4:	4606      	mov	r6, r0
 80062b6:	f101 0c14 	add.w	ip, r1, #20
 80062ba:	2700      	movs	r7, #0
 80062bc:	f8dc 0000 	ldr.w	r0, [ip]
 80062c0:	b281      	uxth	r1, r0
 80062c2:	fb02 3301 	mla	r3, r2, r1, r3
 80062c6:	0c01      	lsrs	r1, r0, #16
 80062c8:	0c18      	lsrs	r0, r3, #16
 80062ca:	fb02 0101 	mla	r1, r2, r1, r0
 80062ce:	b29b      	uxth	r3, r3
 80062d0:	3701      	adds	r7, #1
 80062d2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80062d6:	42bc      	cmp	r4, r7
 80062d8:	f84c 3b04 	str.w	r3, [ip], #4
 80062dc:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80062e0:	dcec      	bgt.n	80062bc <__multadd+0x10>
 80062e2:	b13b      	cbz	r3, 80062f4 <__multadd+0x48>
 80062e4:	68aa      	ldr	r2, [r5, #8]
 80062e6:	42a2      	cmp	r2, r4
 80062e8:	dd07      	ble.n	80062fa <__multadd+0x4e>
 80062ea:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80062ee:	3401      	adds	r4, #1
 80062f0:	6153      	str	r3, [r2, #20]
 80062f2:	612c      	str	r4, [r5, #16]
 80062f4:	4628      	mov	r0, r5
 80062f6:	b003      	add	sp, #12
 80062f8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80062fa:	6869      	ldr	r1, [r5, #4]
 80062fc:	9301      	str	r3, [sp, #4]
 80062fe:	3101      	adds	r1, #1
 8006300:	4630      	mov	r0, r6
 8006302:	f7ff ffa3 	bl	800624c <_Balloc>
 8006306:	692a      	ldr	r2, [r5, #16]
 8006308:	3202      	adds	r2, #2
 800630a:	f105 010c 	add.w	r1, r5, #12
 800630e:	4607      	mov	r7, r0
 8006310:	0092      	lsls	r2, r2, #2
 8006312:	300c      	adds	r0, #12
 8006314:	f7fa f8f4 	bl	8000500 <memcpy>
 8006318:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800631a:	6869      	ldr	r1, [r5, #4]
 800631c:	9b01      	ldr	r3, [sp, #4]
 800631e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006322:	6028      	str	r0, [r5, #0]
 8006324:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006328:	463d      	mov	r5, r7
 800632a:	e7de      	b.n	80062ea <__multadd+0x3e>

0800632c <__hi0bits>:
 800632c:	0c02      	lsrs	r2, r0, #16
 800632e:	0412      	lsls	r2, r2, #16
 8006330:	4603      	mov	r3, r0
 8006332:	b9c2      	cbnz	r2, 8006366 <__hi0bits+0x3a>
 8006334:	0403      	lsls	r3, r0, #16
 8006336:	2010      	movs	r0, #16
 8006338:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800633c:	bf04      	itt	eq
 800633e:	021b      	lsleq	r3, r3, #8
 8006340:	3008      	addeq	r0, #8
 8006342:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006346:	bf04      	itt	eq
 8006348:	011b      	lsleq	r3, r3, #4
 800634a:	3004      	addeq	r0, #4
 800634c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006350:	bf04      	itt	eq
 8006352:	009b      	lsleq	r3, r3, #2
 8006354:	3002      	addeq	r0, #2
 8006356:	2b00      	cmp	r3, #0
 8006358:	db04      	blt.n	8006364 <__hi0bits+0x38>
 800635a:	005b      	lsls	r3, r3, #1
 800635c:	d501      	bpl.n	8006362 <__hi0bits+0x36>
 800635e:	3001      	adds	r0, #1
 8006360:	4770      	bx	lr
 8006362:	2020      	movs	r0, #32
 8006364:	4770      	bx	lr
 8006366:	2000      	movs	r0, #0
 8006368:	e7e6      	b.n	8006338 <__hi0bits+0xc>
 800636a:	bf00      	nop

0800636c <__lo0bits>:
 800636c:	6803      	ldr	r3, [r0, #0]
 800636e:	f013 0207 	ands.w	r2, r3, #7
 8006372:	4601      	mov	r1, r0
 8006374:	d007      	beq.n	8006386 <__lo0bits+0x1a>
 8006376:	07da      	lsls	r2, r3, #31
 8006378:	d41f      	bmi.n	80063ba <__lo0bits+0x4e>
 800637a:	0798      	lsls	r0, r3, #30
 800637c:	d51f      	bpl.n	80063be <__lo0bits+0x52>
 800637e:	085b      	lsrs	r3, r3, #1
 8006380:	600b      	str	r3, [r1, #0]
 8006382:	2001      	movs	r0, #1
 8006384:	4770      	bx	lr
 8006386:	b298      	uxth	r0, r3
 8006388:	b1a0      	cbz	r0, 80063b4 <__lo0bits+0x48>
 800638a:	4610      	mov	r0, r2
 800638c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006390:	bf04      	itt	eq
 8006392:	0a1b      	lsreq	r3, r3, #8
 8006394:	3008      	addeq	r0, #8
 8006396:	071a      	lsls	r2, r3, #28
 8006398:	bf04      	itt	eq
 800639a:	091b      	lsreq	r3, r3, #4
 800639c:	3004      	addeq	r0, #4
 800639e:	079a      	lsls	r2, r3, #30
 80063a0:	bf04      	itt	eq
 80063a2:	089b      	lsreq	r3, r3, #2
 80063a4:	3002      	addeq	r0, #2
 80063a6:	07da      	lsls	r2, r3, #31
 80063a8:	d402      	bmi.n	80063b0 <__lo0bits+0x44>
 80063aa:	085b      	lsrs	r3, r3, #1
 80063ac:	d00b      	beq.n	80063c6 <__lo0bits+0x5a>
 80063ae:	3001      	adds	r0, #1
 80063b0:	600b      	str	r3, [r1, #0]
 80063b2:	4770      	bx	lr
 80063b4:	0c1b      	lsrs	r3, r3, #16
 80063b6:	2010      	movs	r0, #16
 80063b8:	e7e8      	b.n	800638c <__lo0bits+0x20>
 80063ba:	2000      	movs	r0, #0
 80063bc:	4770      	bx	lr
 80063be:	089b      	lsrs	r3, r3, #2
 80063c0:	600b      	str	r3, [r1, #0]
 80063c2:	2002      	movs	r0, #2
 80063c4:	4770      	bx	lr
 80063c6:	2020      	movs	r0, #32
 80063c8:	4770      	bx	lr
 80063ca:	bf00      	nop

080063cc <__i2b>:
 80063cc:	b510      	push	{r4, lr}
 80063ce:	460c      	mov	r4, r1
 80063d0:	2101      	movs	r1, #1
 80063d2:	f7ff ff3b 	bl	800624c <_Balloc>
 80063d6:	2201      	movs	r2, #1
 80063d8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80063dc:	bd10      	pop	{r4, pc}
 80063de:	bf00      	nop

080063e0 <__multiply>:
 80063e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80063e4:	690e      	ldr	r6, [r1, #16]
 80063e6:	6914      	ldr	r4, [r2, #16]
 80063e8:	42a6      	cmp	r6, r4
 80063ea:	b083      	sub	sp, #12
 80063ec:	460f      	mov	r7, r1
 80063ee:	4615      	mov	r5, r2
 80063f0:	da04      	bge.n	80063fc <__multiply+0x1c>
 80063f2:	4632      	mov	r2, r6
 80063f4:	462f      	mov	r7, r5
 80063f6:	4626      	mov	r6, r4
 80063f8:	460d      	mov	r5, r1
 80063fa:	4614      	mov	r4, r2
 80063fc:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006400:	eb06 0804 	add.w	r8, r6, r4
 8006404:	4543      	cmp	r3, r8
 8006406:	bfb8      	it	lt
 8006408:	3101      	addlt	r1, #1
 800640a:	f7ff ff1f 	bl	800624c <_Balloc>
 800640e:	f100 0914 	add.w	r9, r0, #20
 8006412:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006416:	45f1      	cmp	r9, lr
 8006418:	9000      	str	r0, [sp, #0]
 800641a:	d205      	bcs.n	8006428 <__multiply+0x48>
 800641c:	464b      	mov	r3, r9
 800641e:	2200      	movs	r2, #0
 8006420:	f843 2b04 	str.w	r2, [r3], #4
 8006424:	459e      	cmp	lr, r3
 8006426:	d8fb      	bhi.n	8006420 <__multiply+0x40>
 8006428:	f105 0a14 	add.w	sl, r5, #20
 800642c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006430:	f107 0314 	add.w	r3, r7, #20
 8006434:	45a2      	cmp	sl, r4
 8006436:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800643a:	d261      	bcs.n	8006500 <__multiply+0x120>
 800643c:	1b64      	subs	r4, r4, r5
 800643e:	3c15      	subs	r4, #21
 8006440:	f024 0403 	bic.w	r4, r4, #3
 8006444:	f8cd e004 	str.w	lr, [sp, #4]
 8006448:	44a2      	add	sl, r4
 800644a:	f105 0210 	add.w	r2, r5, #16
 800644e:	469e      	mov	lr, r3
 8006450:	e005      	b.n	800645e <__multiply+0x7e>
 8006452:	0c2d      	lsrs	r5, r5, #16
 8006454:	d12b      	bne.n	80064ae <__multiply+0xce>
 8006456:	4592      	cmp	sl, r2
 8006458:	f109 0904 	add.w	r9, r9, #4
 800645c:	d04e      	beq.n	80064fc <__multiply+0x11c>
 800645e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006462:	fa1f fb85 	uxth.w	fp, r5
 8006466:	f1bb 0f00 	cmp.w	fp, #0
 800646a:	d0f2      	beq.n	8006452 <__multiply+0x72>
 800646c:	4677      	mov	r7, lr
 800646e:	464e      	mov	r6, r9
 8006470:	2000      	movs	r0, #0
 8006472:	e000      	b.n	8006476 <__multiply+0x96>
 8006474:	4626      	mov	r6, r4
 8006476:	f857 1b04 	ldr.w	r1, [r7], #4
 800647a:	6834      	ldr	r4, [r6, #0]
 800647c:	b28b      	uxth	r3, r1
 800647e:	b2a5      	uxth	r5, r4
 8006480:	0c09      	lsrs	r1, r1, #16
 8006482:	0c24      	lsrs	r4, r4, #16
 8006484:	fb0b 5303 	mla	r3, fp, r3, r5
 8006488:	4403      	add	r3, r0
 800648a:	fb0b 4001 	mla	r0, fp, r1, r4
 800648e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006492:	4634      	mov	r4, r6
 8006494:	b29b      	uxth	r3, r3
 8006496:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800649a:	45bc      	cmp	ip, r7
 800649c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80064a0:	f844 3b04 	str.w	r3, [r4], #4
 80064a4:	d8e6      	bhi.n	8006474 <__multiply+0x94>
 80064a6:	6070      	str	r0, [r6, #4]
 80064a8:	6815      	ldr	r5, [r2, #0]
 80064aa:	0c2d      	lsrs	r5, r5, #16
 80064ac:	d0d3      	beq.n	8006456 <__multiply+0x76>
 80064ae:	f8d9 3000 	ldr.w	r3, [r9]
 80064b2:	4676      	mov	r6, lr
 80064b4:	4618      	mov	r0, r3
 80064b6:	46cb      	mov	fp, r9
 80064b8:	2100      	movs	r1, #0
 80064ba:	e000      	b.n	80064be <__multiply+0xde>
 80064bc:	46a3      	mov	fp, r4
 80064be:	8834      	ldrh	r4, [r6, #0]
 80064c0:	0c00      	lsrs	r0, r0, #16
 80064c2:	fb05 0004 	mla	r0, r5, r4, r0
 80064c6:	4401      	add	r1, r0
 80064c8:	b29b      	uxth	r3, r3
 80064ca:	465c      	mov	r4, fp
 80064cc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80064d0:	f844 3b04 	str.w	r3, [r4], #4
 80064d4:	f856 3b04 	ldr.w	r3, [r6], #4
 80064d8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80064dc:	0c1b      	lsrs	r3, r3, #16
 80064de:	b287      	uxth	r7, r0
 80064e0:	fb05 7303 	mla	r3, r5, r3, r7
 80064e4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80064e8:	45b4      	cmp	ip, r6
 80064ea:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80064ee:	d8e5      	bhi.n	80064bc <__multiply+0xdc>
 80064f0:	4592      	cmp	sl, r2
 80064f2:	f8cb 3004 	str.w	r3, [fp, #4]
 80064f6:	f109 0904 	add.w	r9, r9, #4
 80064fa:	d1b0      	bne.n	800645e <__multiply+0x7e>
 80064fc:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006500:	f1b8 0f00 	cmp.w	r8, #0
 8006504:	dd0b      	ble.n	800651e <__multiply+0x13e>
 8006506:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800650a:	f1ae 0e04 	sub.w	lr, lr, #4
 800650e:	b11b      	cbz	r3, 8006518 <__multiply+0x138>
 8006510:	e005      	b.n	800651e <__multiply+0x13e>
 8006512:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006516:	b913      	cbnz	r3, 800651e <__multiply+0x13e>
 8006518:	f1b8 0801 	subs.w	r8, r8, #1
 800651c:	d1f9      	bne.n	8006512 <__multiply+0x132>
 800651e:	9800      	ldr	r0, [sp, #0]
 8006520:	f8c0 8010 	str.w	r8, [r0, #16]
 8006524:	b003      	add	sp, #12
 8006526:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800652a:	bf00      	nop

0800652c <__pow5mult>:
 800652c:	f012 0303 	ands.w	r3, r2, #3
 8006530:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006534:	4614      	mov	r4, r2
 8006536:	4607      	mov	r7, r0
 8006538:	d12e      	bne.n	8006598 <__pow5mult+0x6c>
 800653a:	460d      	mov	r5, r1
 800653c:	10a4      	asrs	r4, r4, #2
 800653e:	d01c      	beq.n	800657a <__pow5mult+0x4e>
 8006540:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006542:	b396      	cbz	r6, 80065aa <__pow5mult+0x7e>
 8006544:	07e3      	lsls	r3, r4, #31
 8006546:	f04f 0800 	mov.w	r8, #0
 800654a:	d406      	bmi.n	800655a <__pow5mult+0x2e>
 800654c:	1064      	asrs	r4, r4, #1
 800654e:	d014      	beq.n	800657a <__pow5mult+0x4e>
 8006550:	6830      	ldr	r0, [r6, #0]
 8006552:	b1a8      	cbz	r0, 8006580 <__pow5mult+0x54>
 8006554:	4606      	mov	r6, r0
 8006556:	07e3      	lsls	r3, r4, #31
 8006558:	d5f8      	bpl.n	800654c <__pow5mult+0x20>
 800655a:	4632      	mov	r2, r6
 800655c:	4629      	mov	r1, r5
 800655e:	4638      	mov	r0, r7
 8006560:	f7ff ff3e 	bl	80063e0 <__multiply>
 8006564:	b1b5      	cbz	r5, 8006594 <__pow5mult+0x68>
 8006566:	686a      	ldr	r2, [r5, #4]
 8006568:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800656a:	1064      	asrs	r4, r4, #1
 800656c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006570:	6029      	str	r1, [r5, #0]
 8006572:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006576:	4605      	mov	r5, r0
 8006578:	d1ea      	bne.n	8006550 <__pow5mult+0x24>
 800657a:	4628      	mov	r0, r5
 800657c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006580:	4632      	mov	r2, r6
 8006582:	4631      	mov	r1, r6
 8006584:	4638      	mov	r0, r7
 8006586:	f7ff ff2b 	bl	80063e0 <__multiply>
 800658a:	6030      	str	r0, [r6, #0]
 800658c:	f8c0 8000 	str.w	r8, [r0]
 8006590:	4606      	mov	r6, r0
 8006592:	e7e0      	b.n	8006556 <__pow5mult+0x2a>
 8006594:	4605      	mov	r5, r0
 8006596:	e7d9      	b.n	800654c <__pow5mult+0x20>
 8006598:	3b01      	subs	r3, #1
 800659a:	4a0b      	ldr	r2, [pc, #44]	; (80065c8 <__pow5mult+0x9c>)
 800659c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80065a0:	2300      	movs	r3, #0
 80065a2:	f7ff fe83 	bl	80062ac <__multadd>
 80065a6:	4605      	mov	r5, r0
 80065a8:	e7c8      	b.n	800653c <__pow5mult+0x10>
 80065aa:	2101      	movs	r1, #1
 80065ac:	4638      	mov	r0, r7
 80065ae:	f7ff fe4d 	bl	800624c <_Balloc>
 80065b2:	f240 2371 	movw	r3, #625	; 0x271
 80065b6:	6143      	str	r3, [r0, #20]
 80065b8:	2201      	movs	r2, #1
 80065ba:	2300      	movs	r3, #0
 80065bc:	6102      	str	r2, [r0, #16]
 80065be:	4606      	mov	r6, r0
 80065c0:	64b8      	str	r0, [r7, #72]	; 0x48
 80065c2:	6003      	str	r3, [r0, #0]
 80065c4:	e7be      	b.n	8006544 <__pow5mult+0x18>
 80065c6:	bf00      	nop
 80065c8:	080075b0 	.word	0x080075b0

080065cc <__lshift>:
 80065cc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80065d0:	4691      	mov	r9, r2
 80065d2:	690a      	ldr	r2, [r1, #16]
 80065d4:	460e      	mov	r6, r1
 80065d6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80065da:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80065de:	eb04 0802 	add.w	r8, r4, r2
 80065e2:	f108 0501 	add.w	r5, r8, #1
 80065e6:	429d      	cmp	r5, r3
 80065e8:	4607      	mov	r7, r0
 80065ea:	dd04      	ble.n	80065f6 <__lshift+0x2a>
 80065ec:	005b      	lsls	r3, r3, #1
 80065ee:	429d      	cmp	r5, r3
 80065f0:	f101 0101 	add.w	r1, r1, #1
 80065f4:	dcfa      	bgt.n	80065ec <__lshift+0x20>
 80065f6:	4638      	mov	r0, r7
 80065f8:	f7ff fe28 	bl	800624c <_Balloc>
 80065fc:	2c00      	cmp	r4, #0
 80065fe:	f100 0314 	add.w	r3, r0, #20
 8006602:	dd37      	ble.n	8006674 <__lshift+0xa8>
 8006604:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006608:	2200      	movs	r2, #0
 800660a:	f843 2b04 	str.w	r2, [r3], #4
 800660e:	428b      	cmp	r3, r1
 8006610:	d1fb      	bne.n	800660a <__lshift+0x3e>
 8006612:	6934      	ldr	r4, [r6, #16]
 8006614:	f106 0314 	add.w	r3, r6, #20
 8006618:	f019 091f 	ands.w	r9, r9, #31
 800661c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006620:	d020      	beq.n	8006664 <__lshift+0x98>
 8006622:	f1c9 0e20 	rsb	lr, r9, #32
 8006626:	2200      	movs	r2, #0
 8006628:	e000      	b.n	800662c <__lshift+0x60>
 800662a:	4651      	mov	r1, sl
 800662c:	681c      	ldr	r4, [r3, #0]
 800662e:	468a      	mov	sl, r1
 8006630:	fa04 f409 	lsl.w	r4, r4, r9
 8006634:	4314      	orrs	r4, r2
 8006636:	f84a 4b04 	str.w	r4, [sl], #4
 800663a:	f853 2b04 	ldr.w	r2, [r3], #4
 800663e:	4563      	cmp	r3, ip
 8006640:	fa22 f20e 	lsr.w	r2, r2, lr
 8006644:	d3f1      	bcc.n	800662a <__lshift+0x5e>
 8006646:	604a      	str	r2, [r1, #4]
 8006648:	b10a      	cbz	r2, 800664e <__lshift+0x82>
 800664a:	f108 0502 	add.w	r5, r8, #2
 800664e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006650:	6872      	ldr	r2, [r6, #4]
 8006652:	3d01      	subs	r5, #1
 8006654:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006658:	6105      	str	r5, [r0, #16]
 800665a:	6031      	str	r1, [r6, #0]
 800665c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006660:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006664:	3904      	subs	r1, #4
 8006666:	f853 2b04 	ldr.w	r2, [r3], #4
 800666a:	f841 2f04 	str.w	r2, [r1, #4]!
 800666e:	459c      	cmp	ip, r3
 8006670:	d8f9      	bhi.n	8006666 <__lshift+0x9a>
 8006672:	e7ec      	b.n	800664e <__lshift+0x82>
 8006674:	4619      	mov	r1, r3
 8006676:	e7cc      	b.n	8006612 <__lshift+0x46>

08006678 <__mcmp>:
 8006678:	b430      	push	{r4, r5}
 800667a:	690b      	ldr	r3, [r1, #16]
 800667c:	4605      	mov	r5, r0
 800667e:	6900      	ldr	r0, [r0, #16]
 8006680:	1ac0      	subs	r0, r0, r3
 8006682:	d10f      	bne.n	80066a4 <__mcmp+0x2c>
 8006684:	009b      	lsls	r3, r3, #2
 8006686:	3514      	adds	r5, #20
 8006688:	3114      	adds	r1, #20
 800668a:	4419      	add	r1, r3
 800668c:	442b      	add	r3, r5
 800668e:	e001      	b.n	8006694 <__mcmp+0x1c>
 8006690:	429d      	cmp	r5, r3
 8006692:	d207      	bcs.n	80066a4 <__mcmp+0x2c>
 8006694:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006698:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800669c:	4294      	cmp	r4, r2
 800669e:	d0f7      	beq.n	8006690 <__mcmp+0x18>
 80066a0:	d302      	bcc.n	80066a8 <__mcmp+0x30>
 80066a2:	2001      	movs	r0, #1
 80066a4:	bc30      	pop	{r4, r5}
 80066a6:	4770      	bx	lr
 80066a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80066ac:	e7fa      	b.n	80066a4 <__mcmp+0x2c>
 80066ae:	bf00      	nop

080066b0 <__mdiff>:
 80066b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80066b4:	6913      	ldr	r3, [r2, #16]
 80066b6:	690d      	ldr	r5, [r1, #16]
 80066b8:	1aed      	subs	r5, r5, r3
 80066ba:	2d00      	cmp	r5, #0
 80066bc:	460e      	mov	r6, r1
 80066be:	4690      	mov	r8, r2
 80066c0:	f101 0414 	add.w	r4, r1, #20
 80066c4:	f102 0714 	add.w	r7, r2, #20
 80066c8:	d114      	bne.n	80066f4 <__mdiff+0x44>
 80066ca:	009b      	lsls	r3, r3, #2
 80066cc:	18e2      	adds	r2, r4, r3
 80066ce:	443b      	add	r3, r7
 80066d0:	e001      	b.n	80066d6 <__mdiff+0x26>
 80066d2:	42a2      	cmp	r2, r4
 80066d4:	d959      	bls.n	800678a <__mdiff+0xda>
 80066d6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80066da:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80066de:	458c      	cmp	ip, r1
 80066e0:	d0f7      	beq.n	80066d2 <__mdiff+0x22>
 80066e2:	d209      	bcs.n	80066f8 <__mdiff+0x48>
 80066e4:	4622      	mov	r2, r4
 80066e6:	4633      	mov	r3, r6
 80066e8:	463c      	mov	r4, r7
 80066ea:	4646      	mov	r6, r8
 80066ec:	4617      	mov	r7, r2
 80066ee:	4698      	mov	r8, r3
 80066f0:	2501      	movs	r5, #1
 80066f2:	e001      	b.n	80066f8 <__mdiff+0x48>
 80066f4:	dbf6      	blt.n	80066e4 <__mdiff+0x34>
 80066f6:	2500      	movs	r5, #0
 80066f8:	6871      	ldr	r1, [r6, #4]
 80066fa:	f7ff fda7 	bl	800624c <_Balloc>
 80066fe:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006702:	6936      	ldr	r6, [r6, #16]
 8006704:	60c5      	str	r5, [r0, #12]
 8006706:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800670a:	46bc      	mov	ip, r7
 800670c:	f100 0514 	add.w	r5, r0, #20
 8006710:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006714:	2300      	movs	r3, #0
 8006716:	f85c 1b04 	ldr.w	r1, [ip], #4
 800671a:	f854 8b04 	ldr.w	r8, [r4], #4
 800671e:	b28a      	uxth	r2, r1
 8006720:	fa13 f388 	uxtah	r3, r3, r8
 8006724:	0c09      	lsrs	r1, r1, #16
 8006726:	1a9a      	subs	r2, r3, r2
 8006728:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800672c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006730:	b292      	uxth	r2, r2
 8006732:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006736:	45e6      	cmp	lr, ip
 8006738:	f845 2b04 	str.w	r2, [r5], #4
 800673c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006740:	d8e9      	bhi.n	8006716 <__mdiff+0x66>
 8006742:	42a7      	cmp	r7, r4
 8006744:	d917      	bls.n	8006776 <__mdiff+0xc6>
 8006746:	46ae      	mov	lr, r5
 8006748:	46a4      	mov	ip, r4
 800674a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800674e:	fa13 f382 	uxtah	r3, r3, r2
 8006752:	1419      	asrs	r1, r3, #16
 8006754:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006758:	b29b      	uxth	r3, r3
 800675a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800675e:	4567      	cmp	r7, ip
 8006760:	f84e 2b04 	str.w	r2, [lr], #4
 8006764:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006768:	d8ef      	bhi.n	800674a <__mdiff+0x9a>
 800676a:	43e4      	mvns	r4, r4
 800676c:	4427      	add	r7, r4
 800676e:	f027 0703 	bic.w	r7, r7, #3
 8006772:	3704      	adds	r7, #4
 8006774:	443d      	add	r5, r7
 8006776:	3d04      	subs	r5, #4
 8006778:	b922      	cbnz	r2, 8006784 <__mdiff+0xd4>
 800677a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800677e:	3e01      	subs	r6, #1
 8006780:	2b00      	cmp	r3, #0
 8006782:	d0fa      	beq.n	800677a <__mdiff+0xca>
 8006784:	6106      	str	r6, [r0, #16]
 8006786:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800678a:	2100      	movs	r1, #0
 800678c:	f7ff fd5e 	bl	800624c <_Balloc>
 8006790:	2201      	movs	r2, #1
 8006792:	2300      	movs	r3, #0
 8006794:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006798:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800679c <__d2b>:
 800679c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80067a0:	460f      	mov	r7, r1
 80067a2:	b083      	sub	sp, #12
 80067a4:	2101      	movs	r1, #1
 80067a6:	ec55 4b10 	vmov	r4, r5, d0
 80067aa:	4616      	mov	r6, r2
 80067ac:	f7ff fd4e 	bl	800624c <_Balloc>
 80067b0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80067b4:	4681      	mov	r9, r0
 80067b6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80067ba:	f1b8 0f00 	cmp.w	r8, #0
 80067be:	d001      	beq.n	80067c4 <__d2b+0x28>
 80067c0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80067c4:	2c00      	cmp	r4, #0
 80067c6:	9301      	str	r3, [sp, #4]
 80067c8:	d024      	beq.n	8006814 <__d2b+0x78>
 80067ca:	a802      	add	r0, sp, #8
 80067cc:	f840 4d08 	str.w	r4, [r0, #-8]!
 80067d0:	f7ff fdcc 	bl	800636c <__lo0bits>
 80067d4:	2800      	cmp	r0, #0
 80067d6:	d136      	bne.n	8006846 <__d2b+0xaa>
 80067d8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80067dc:	f8c9 2014 	str.w	r2, [r9, #20]
 80067e0:	2b00      	cmp	r3, #0
 80067e2:	bf0c      	ite	eq
 80067e4:	2101      	moveq	r1, #1
 80067e6:	2102      	movne	r1, #2
 80067e8:	f8c9 3018 	str.w	r3, [r9, #24]
 80067ec:	f8c9 1010 	str.w	r1, [r9, #16]
 80067f0:	f1b8 0f00 	cmp.w	r8, #0
 80067f4:	d11b      	bne.n	800682e <__d2b+0x92>
 80067f6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80067fa:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80067fe:	6038      	str	r0, [r7, #0]
 8006800:	6918      	ldr	r0, [r3, #16]
 8006802:	f7ff fd93 	bl	800632c <__hi0bits>
 8006806:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800680a:	6030      	str	r0, [r6, #0]
 800680c:	4648      	mov	r0, r9
 800680e:	b003      	add	sp, #12
 8006810:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006814:	a801      	add	r0, sp, #4
 8006816:	f7ff fda9 	bl	800636c <__lo0bits>
 800681a:	9b01      	ldr	r3, [sp, #4]
 800681c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006820:	2101      	movs	r1, #1
 8006822:	3020      	adds	r0, #32
 8006824:	f8c9 1010 	str.w	r1, [r9, #16]
 8006828:	f1b8 0f00 	cmp.w	r8, #0
 800682c:	d0e3      	beq.n	80067f6 <__d2b+0x5a>
 800682e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006832:	eb08 0300 	add.w	r3, r8, r0
 8006836:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800683a:	603b      	str	r3, [r7, #0]
 800683c:	6030      	str	r0, [r6, #0]
 800683e:	4648      	mov	r0, r9
 8006840:	b003      	add	sp, #12
 8006842:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006846:	e9dd 1300 	ldrd	r1, r3, [sp]
 800684a:	f1c0 0220 	rsb	r2, r0, #32
 800684e:	fa03 f202 	lsl.w	r2, r3, r2
 8006852:	430a      	orrs	r2, r1
 8006854:	40c3      	lsrs	r3, r0
 8006856:	9301      	str	r3, [sp, #4]
 8006858:	f8c9 2014 	str.w	r2, [r9, #20]
 800685c:	e7c0      	b.n	80067e0 <__d2b+0x44>
 800685e:	bf00      	nop

08006860 <_realloc_r>:
 8006860:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006864:	4692      	mov	sl, r2
 8006866:	b083      	sub	sp, #12
 8006868:	2900      	cmp	r1, #0
 800686a:	f000 80a1 	beq.w	80069b0 <_realloc_r+0x150>
 800686e:	460d      	mov	r5, r1
 8006870:	4680      	mov	r8, r0
 8006872:	f10a 040b 	add.w	r4, sl, #11
 8006876:	f7ff fcdd 	bl	8006234 <__malloc_lock>
 800687a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800687e:	2c16      	cmp	r4, #22
 8006880:	f022 0603 	bic.w	r6, r2, #3
 8006884:	f1a5 0708 	sub.w	r7, r5, #8
 8006888:	d83e      	bhi.n	8006908 <_realloc_r+0xa8>
 800688a:	2410      	movs	r4, #16
 800688c:	4621      	mov	r1, r4
 800688e:	45a2      	cmp	sl, r4
 8006890:	d83f      	bhi.n	8006912 <_realloc_r+0xb2>
 8006892:	428e      	cmp	r6, r1
 8006894:	eb07 0906 	add.w	r9, r7, r6
 8006898:	da74      	bge.n	8006984 <_realloc_r+0x124>
 800689a:	4bc7      	ldr	r3, [pc, #796]	; (8006bb8 <_realloc_r+0x358>)
 800689c:	6898      	ldr	r0, [r3, #8]
 800689e:	4548      	cmp	r0, r9
 80068a0:	f000 80aa 	beq.w	80069f8 <_realloc_r+0x198>
 80068a4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80068a8:	f020 0301 	bic.w	r3, r0, #1
 80068ac:	444b      	add	r3, r9
 80068ae:	685b      	ldr	r3, [r3, #4]
 80068b0:	07db      	lsls	r3, r3, #31
 80068b2:	f140 8083 	bpl.w	80069bc <_realloc_r+0x15c>
 80068b6:	07d2      	lsls	r2, r2, #31
 80068b8:	d534      	bpl.n	8006924 <_realloc_r+0xc4>
 80068ba:	4651      	mov	r1, sl
 80068bc:	4640      	mov	r0, r8
 80068be:	f7ff f9b1 	bl	8005c24 <_malloc_r>
 80068c2:	4682      	mov	sl, r0
 80068c4:	b1e0      	cbz	r0, 8006900 <_realloc_r+0xa0>
 80068c6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80068ca:	f023 0301 	bic.w	r3, r3, #1
 80068ce:	443b      	add	r3, r7
 80068d0:	f1a0 0208 	sub.w	r2, r0, #8
 80068d4:	4293      	cmp	r3, r2
 80068d6:	f000 80f9 	beq.w	8006acc <_realloc_r+0x26c>
 80068da:	1f32      	subs	r2, r6, #4
 80068dc:	2a24      	cmp	r2, #36	; 0x24
 80068de:	f200 8107 	bhi.w	8006af0 <_realloc_r+0x290>
 80068e2:	2a13      	cmp	r2, #19
 80068e4:	6829      	ldr	r1, [r5, #0]
 80068e6:	f200 80e6 	bhi.w	8006ab6 <_realloc_r+0x256>
 80068ea:	4603      	mov	r3, r0
 80068ec:	462a      	mov	r2, r5
 80068ee:	6019      	str	r1, [r3, #0]
 80068f0:	6851      	ldr	r1, [r2, #4]
 80068f2:	6059      	str	r1, [r3, #4]
 80068f4:	6892      	ldr	r2, [r2, #8]
 80068f6:	609a      	str	r2, [r3, #8]
 80068f8:	4629      	mov	r1, r5
 80068fa:	4640      	mov	r0, r8
 80068fc:	f7fe fe68 	bl	80055d0 <_free_r>
 8006900:	4640      	mov	r0, r8
 8006902:	f7ff fc9d 	bl	8006240 <__malloc_unlock>
 8006906:	e04f      	b.n	80069a8 <_realloc_r+0x148>
 8006908:	f024 0407 	bic.w	r4, r4, #7
 800690c:	2c00      	cmp	r4, #0
 800690e:	4621      	mov	r1, r4
 8006910:	dabd      	bge.n	800688e <_realloc_r+0x2e>
 8006912:	f04f 0a00 	mov.w	sl, #0
 8006916:	230c      	movs	r3, #12
 8006918:	4650      	mov	r0, sl
 800691a:	f8c8 3000 	str.w	r3, [r8]
 800691e:	b003      	add	sp, #12
 8006920:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006924:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006928:	eba7 0b03 	sub.w	fp, r7, r3
 800692c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006930:	f022 0203 	bic.w	r2, r2, #3
 8006934:	18b3      	adds	r3, r6, r2
 8006936:	428b      	cmp	r3, r1
 8006938:	dbbf      	blt.n	80068ba <_realloc_r+0x5a>
 800693a:	46da      	mov	sl, fp
 800693c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006940:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006944:	1f32      	subs	r2, r6, #4
 8006946:	2a24      	cmp	r2, #36	; 0x24
 8006948:	60c1      	str	r1, [r0, #12]
 800694a:	eb0b 0903 	add.w	r9, fp, r3
 800694e:	6088      	str	r0, [r1, #8]
 8006950:	f200 80c6 	bhi.w	8006ae0 <_realloc_r+0x280>
 8006954:	2a13      	cmp	r2, #19
 8006956:	6829      	ldr	r1, [r5, #0]
 8006958:	f240 80c0 	bls.w	8006adc <_realloc_r+0x27c>
 800695c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006960:	6869      	ldr	r1, [r5, #4]
 8006962:	f8cb 100c 	str.w	r1, [fp, #12]
 8006966:	2a1b      	cmp	r2, #27
 8006968:	68a9      	ldr	r1, [r5, #8]
 800696a:	f200 80d8 	bhi.w	8006b1e <_realloc_r+0x2be>
 800696e:	f10b 0210 	add.w	r2, fp, #16
 8006972:	3508      	adds	r5, #8
 8006974:	6011      	str	r1, [r2, #0]
 8006976:	6869      	ldr	r1, [r5, #4]
 8006978:	6051      	str	r1, [r2, #4]
 800697a:	68a9      	ldr	r1, [r5, #8]
 800697c:	6091      	str	r1, [r2, #8]
 800697e:	461e      	mov	r6, r3
 8006980:	465f      	mov	r7, fp
 8006982:	4655      	mov	r5, sl
 8006984:	687b      	ldr	r3, [r7, #4]
 8006986:	1b32      	subs	r2, r6, r4
 8006988:	2a0f      	cmp	r2, #15
 800698a:	f003 0301 	and.w	r3, r3, #1
 800698e:	d822      	bhi.n	80069d6 <_realloc_r+0x176>
 8006990:	4333      	orrs	r3, r6
 8006992:	607b      	str	r3, [r7, #4]
 8006994:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006998:	f043 0301 	orr.w	r3, r3, #1
 800699c:	f8c9 3004 	str.w	r3, [r9, #4]
 80069a0:	4640      	mov	r0, r8
 80069a2:	f7ff fc4d 	bl	8006240 <__malloc_unlock>
 80069a6:	46aa      	mov	sl, r5
 80069a8:	4650      	mov	r0, sl
 80069aa:	b003      	add	sp, #12
 80069ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80069b0:	4611      	mov	r1, r2
 80069b2:	b003      	add	sp, #12
 80069b4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069b8:	f7ff b934 	b.w	8005c24 <_malloc_r>
 80069bc:	f020 0003 	bic.w	r0, r0, #3
 80069c0:	1833      	adds	r3, r6, r0
 80069c2:	428b      	cmp	r3, r1
 80069c4:	db61      	blt.n	8006a8a <_realloc_r+0x22a>
 80069c6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80069ca:	461e      	mov	r6, r3
 80069cc:	60ca      	str	r2, [r1, #12]
 80069ce:	eb07 0903 	add.w	r9, r7, r3
 80069d2:	6091      	str	r1, [r2, #8]
 80069d4:	e7d6      	b.n	8006984 <_realloc_r+0x124>
 80069d6:	1939      	adds	r1, r7, r4
 80069d8:	4323      	orrs	r3, r4
 80069da:	f042 0201 	orr.w	r2, r2, #1
 80069de:	607b      	str	r3, [r7, #4]
 80069e0:	604a      	str	r2, [r1, #4]
 80069e2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80069e6:	f043 0301 	orr.w	r3, r3, #1
 80069ea:	3108      	adds	r1, #8
 80069ec:	f8c9 3004 	str.w	r3, [r9, #4]
 80069f0:	4640      	mov	r0, r8
 80069f2:	f7fe fded 	bl	80055d0 <_free_r>
 80069f6:	e7d3      	b.n	80069a0 <_realloc_r+0x140>
 80069f8:	6840      	ldr	r0, [r0, #4]
 80069fa:	f020 0903 	bic.w	r9, r0, #3
 80069fe:	44b1      	add	r9, r6
 8006a00:	f104 0010 	add.w	r0, r4, #16
 8006a04:	4581      	cmp	r9, r0
 8006a06:	da77      	bge.n	8006af8 <_realloc_r+0x298>
 8006a08:	07d2      	lsls	r2, r2, #31
 8006a0a:	f53f af56 	bmi.w	80068ba <_realloc_r+0x5a>
 8006a0e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006a12:	eba7 0b02 	sub.w	fp, r7, r2
 8006a16:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a1a:	f022 0203 	bic.w	r2, r2, #3
 8006a1e:	4491      	add	r9, r2
 8006a20:	4548      	cmp	r0, r9
 8006a22:	dc87      	bgt.n	8006934 <_realloc_r+0xd4>
 8006a24:	46da      	mov	sl, fp
 8006a26:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006a2a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006a2e:	1f32      	subs	r2, r6, #4
 8006a30:	2a24      	cmp	r2, #36	; 0x24
 8006a32:	60c1      	str	r1, [r0, #12]
 8006a34:	6088      	str	r0, [r1, #8]
 8006a36:	f200 80a1 	bhi.w	8006b7c <_realloc_r+0x31c>
 8006a3a:	2a13      	cmp	r2, #19
 8006a3c:	6829      	ldr	r1, [r5, #0]
 8006a3e:	f240 809b 	bls.w	8006b78 <_realloc_r+0x318>
 8006a42:	f8cb 1008 	str.w	r1, [fp, #8]
 8006a46:	6869      	ldr	r1, [r5, #4]
 8006a48:	f8cb 100c 	str.w	r1, [fp, #12]
 8006a4c:	2a1b      	cmp	r2, #27
 8006a4e:	68a9      	ldr	r1, [r5, #8]
 8006a50:	f200 809b 	bhi.w	8006b8a <_realloc_r+0x32a>
 8006a54:	f10b 0210 	add.w	r2, fp, #16
 8006a58:	3508      	adds	r5, #8
 8006a5a:	6011      	str	r1, [r2, #0]
 8006a5c:	6869      	ldr	r1, [r5, #4]
 8006a5e:	6051      	str	r1, [r2, #4]
 8006a60:	68a9      	ldr	r1, [r5, #8]
 8006a62:	6091      	str	r1, [r2, #8]
 8006a64:	eb0b 0104 	add.w	r1, fp, r4
 8006a68:	eba9 0204 	sub.w	r2, r9, r4
 8006a6c:	f042 0201 	orr.w	r2, r2, #1
 8006a70:	6099      	str	r1, [r3, #8]
 8006a72:	604a      	str	r2, [r1, #4]
 8006a74:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006a78:	f003 0301 	and.w	r3, r3, #1
 8006a7c:	431c      	orrs	r4, r3
 8006a7e:	4640      	mov	r0, r8
 8006a80:	f8cb 4004 	str.w	r4, [fp, #4]
 8006a84:	f7ff fbdc 	bl	8006240 <__malloc_unlock>
 8006a88:	e78e      	b.n	80069a8 <_realloc_r+0x148>
 8006a8a:	07d3      	lsls	r3, r2, #31
 8006a8c:	f53f af15 	bmi.w	80068ba <_realloc_r+0x5a>
 8006a90:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006a94:	eba7 0b03 	sub.w	fp, r7, r3
 8006a98:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a9c:	f022 0203 	bic.w	r2, r2, #3
 8006aa0:	4410      	add	r0, r2
 8006aa2:	1983      	adds	r3, r0, r6
 8006aa4:	428b      	cmp	r3, r1
 8006aa6:	f6ff af45 	blt.w	8006934 <_realloc_r+0xd4>
 8006aaa:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006aae:	46da      	mov	sl, fp
 8006ab0:	60ca      	str	r2, [r1, #12]
 8006ab2:	6091      	str	r1, [r2, #8]
 8006ab4:	e742      	b.n	800693c <_realloc_r+0xdc>
 8006ab6:	6001      	str	r1, [r0, #0]
 8006ab8:	686b      	ldr	r3, [r5, #4]
 8006aba:	6043      	str	r3, [r0, #4]
 8006abc:	2a1b      	cmp	r2, #27
 8006abe:	d83a      	bhi.n	8006b36 <_realloc_r+0x2d6>
 8006ac0:	f105 0208 	add.w	r2, r5, #8
 8006ac4:	f100 0308 	add.w	r3, r0, #8
 8006ac8:	68a9      	ldr	r1, [r5, #8]
 8006aca:	e710      	b.n	80068ee <_realloc_r+0x8e>
 8006acc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006ad0:	f023 0303 	bic.w	r3, r3, #3
 8006ad4:	441e      	add	r6, r3
 8006ad6:	eb07 0906 	add.w	r9, r7, r6
 8006ada:	e753      	b.n	8006984 <_realloc_r+0x124>
 8006adc:	4652      	mov	r2, sl
 8006ade:	e749      	b.n	8006974 <_realloc_r+0x114>
 8006ae0:	4629      	mov	r1, r5
 8006ae2:	4650      	mov	r0, sl
 8006ae4:	461e      	mov	r6, r3
 8006ae6:	465f      	mov	r7, fp
 8006ae8:	f7ff fb40 	bl	800616c <memmove>
 8006aec:	4655      	mov	r5, sl
 8006aee:	e749      	b.n	8006984 <_realloc_r+0x124>
 8006af0:	4629      	mov	r1, r5
 8006af2:	f7ff fb3b 	bl	800616c <memmove>
 8006af6:	e6ff      	b.n	80068f8 <_realloc_r+0x98>
 8006af8:	4427      	add	r7, r4
 8006afa:	eba9 0904 	sub.w	r9, r9, r4
 8006afe:	f049 0201 	orr.w	r2, r9, #1
 8006b02:	609f      	str	r7, [r3, #8]
 8006b04:	607a      	str	r2, [r7, #4]
 8006b06:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006b0a:	f003 0301 	and.w	r3, r3, #1
 8006b0e:	431c      	orrs	r4, r3
 8006b10:	4640      	mov	r0, r8
 8006b12:	f845 4c04 	str.w	r4, [r5, #-4]
 8006b16:	f7ff fb93 	bl	8006240 <__malloc_unlock>
 8006b1a:	46aa      	mov	sl, r5
 8006b1c:	e744      	b.n	80069a8 <_realloc_r+0x148>
 8006b1e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006b22:	68e9      	ldr	r1, [r5, #12]
 8006b24:	f8cb 1014 	str.w	r1, [fp, #20]
 8006b28:	2a24      	cmp	r2, #36	; 0x24
 8006b2a:	d010      	beq.n	8006b4e <_realloc_r+0x2ee>
 8006b2c:	6929      	ldr	r1, [r5, #16]
 8006b2e:	f10b 0218 	add.w	r2, fp, #24
 8006b32:	3510      	adds	r5, #16
 8006b34:	e71e      	b.n	8006974 <_realloc_r+0x114>
 8006b36:	68ab      	ldr	r3, [r5, #8]
 8006b38:	6083      	str	r3, [r0, #8]
 8006b3a:	68eb      	ldr	r3, [r5, #12]
 8006b3c:	60c3      	str	r3, [r0, #12]
 8006b3e:	2a24      	cmp	r2, #36	; 0x24
 8006b40:	d010      	beq.n	8006b64 <_realloc_r+0x304>
 8006b42:	f105 0210 	add.w	r2, r5, #16
 8006b46:	f100 0310 	add.w	r3, r0, #16
 8006b4a:	6929      	ldr	r1, [r5, #16]
 8006b4c:	e6cf      	b.n	80068ee <_realloc_r+0x8e>
 8006b4e:	692a      	ldr	r2, [r5, #16]
 8006b50:	f8cb 2018 	str.w	r2, [fp, #24]
 8006b54:	696a      	ldr	r2, [r5, #20]
 8006b56:	f8cb 201c 	str.w	r2, [fp, #28]
 8006b5a:	69a9      	ldr	r1, [r5, #24]
 8006b5c:	f10b 0220 	add.w	r2, fp, #32
 8006b60:	3518      	adds	r5, #24
 8006b62:	e707      	b.n	8006974 <_realloc_r+0x114>
 8006b64:	692b      	ldr	r3, [r5, #16]
 8006b66:	6103      	str	r3, [r0, #16]
 8006b68:	696b      	ldr	r3, [r5, #20]
 8006b6a:	6143      	str	r3, [r0, #20]
 8006b6c:	69a9      	ldr	r1, [r5, #24]
 8006b6e:	f105 0218 	add.w	r2, r5, #24
 8006b72:	f100 0318 	add.w	r3, r0, #24
 8006b76:	e6ba      	b.n	80068ee <_realloc_r+0x8e>
 8006b78:	4652      	mov	r2, sl
 8006b7a:	e76e      	b.n	8006a5a <_realloc_r+0x1fa>
 8006b7c:	4629      	mov	r1, r5
 8006b7e:	4650      	mov	r0, sl
 8006b80:	9301      	str	r3, [sp, #4]
 8006b82:	f7ff faf3 	bl	800616c <memmove>
 8006b86:	9b01      	ldr	r3, [sp, #4]
 8006b88:	e76c      	b.n	8006a64 <_realloc_r+0x204>
 8006b8a:	f8cb 1010 	str.w	r1, [fp, #16]
 8006b8e:	68e9      	ldr	r1, [r5, #12]
 8006b90:	f8cb 1014 	str.w	r1, [fp, #20]
 8006b94:	2a24      	cmp	r2, #36	; 0x24
 8006b96:	d004      	beq.n	8006ba2 <_realloc_r+0x342>
 8006b98:	6929      	ldr	r1, [r5, #16]
 8006b9a:	f10b 0218 	add.w	r2, fp, #24
 8006b9e:	3510      	adds	r5, #16
 8006ba0:	e75b      	b.n	8006a5a <_realloc_r+0x1fa>
 8006ba2:	692a      	ldr	r2, [r5, #16]
 8006ba4:	f8cb 2018 	str.w	r2, [fp, #24]
 8006ba8:	696a      	ldr	r2, [r5, #20]
 8006baa:	f8cb 201c 	str.w	r2, [fp, #28]
 8006bae:	69a9      	ldr	r1, [r5, #24]
 8006bb0:	f10b 0220 	add.w	r2, fp, #32
 8006bb4:	3518      	adds	r5, #24
 8006bb6:	e750      	b.n	8006a5a <_realloc_r+0x1fa>
 8006bb8:	200004e4 	.word	0x200004e4

08006bbc <frexp>:
 8006bbc:	ec53 2b10 	vmov	r2, r3, d0
 8006bc0:	b570      	push	{r4, r5, r6, lr}
 8006bc2:	4e16      	ldr	r6, [pc, #88]	; (8006c1c <frexp+0x60>)
 8006bc4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006bc8:	2500      	movs	r5, #0
 8006bca:	42b1      	cmp	r1, r6
 8006bcc:	4604      	mov	r4, r0
 8006bce:	6005      	str	r5, [r0, #0]
 8006bd0:	dc21      	bgt.n	8006c16 <frexp+0x5a>
 8006bd2:	ee10 6a10 	vmov	r6, s0
 8006bd6:	430e      	orrs	r6, r1
 8006bd8:	d01d      	beq.n	8006c16 <frexp+0x5a>
 8006bda:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006bde:	4618      	mov	r0, r3
 8006be0:	da0c      	bge.n	8006bfc <frexp+0x40>
 8006be2:	4619      	mov	r1, r3
 8006be4:	2200      	movs	r2, #0
 8006be6:	ee10 0a10 	vmov	r0, s0
 8006bea:	4b0d      	ldr	r3, [pc, #52]	; (8006c20 <frexp+0x64>)
 8006bec:	f7f9 ffa4 	bl	8000b38 <__aeabi_dmul>
 8006bf0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006bf4:	4602      	mov	r2, r0
 8006bf6:	4608      	mov	r0, r1
 8006bf8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006bfc:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006c00:	1509      	asrs	r1, r1, #20
 8006c02:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006c06:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006c0a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006c0e:	4429      	add	r1, r5
 8006c10:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006c14:	6021      	str	r1, [r4, #0]
 8006c16:	ec43 2b10 	vmov	d0, r2, r3
 8006c1a:	bd70      	pop	{r4, r5, r6, pc}
 8006c1c:	7fefffff 	.word	0x7fefffff
 8006c20:	43500000 	.word	0x43500000

08006c24 <_sbrk_r>:
 8006c24:	b538      	push	{r3, r4, r5, lr}
 8006c26:	4c07      	ldr	r4, [pc, #28]	; (8006c44 <_sbrk_r+0x20>)
 8006c28:	2300      	movs	r3, #0
 8006c2a:	4605      	mov	r5, r0
 8006c2c:	4608      	mov	r0, r1
 8006c2e:	6023      	str	r3, [r4, #0]
 8006c30:	f7fb fc2a 	bl	8002488 <_sbrk>
 8006c34:	1c43      	adds	r3, r0, #1
 8006c36:	d000      	beq.n	8006c3a <_sbrk_r+0x16>
 8006c38:	bd38      	pop	{r3, r4, r5, pc}
 8006c3a:	6823      	ldr	r3, [r4, #0]
 8006c3c:	2b00      	cmp	r3, #0
 8006c3e:	d0fb      	beq.n	8006c38 <_sbrk_r+0x14>
 8006c40:	602b      	str	r3, [r5, #0]
 8006c42:	bd38      	pop	{r3, r4, r5, pc}
 8006c44:	20000ba4 	.word	0x20000ba4

08006c48 <__sread>:
 8006c48:	b510      	push	{r4, lr}
 8006c4a:	460c      	mov	r4, r1
 8006c4c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c50:	f000 fabc 	bl	80071cc <_read_r>
 8006c54:	2800      	cmp	r0, #0
 8006c56:	db03      	blt.n	8006c60 <__sread+0x18>
 8006c58:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006c5a:	4403      	add	r3, r0
 8006c5c:	6523      	str	r3, [r4, #80]	; 0x50
 8006c5e:	bd10      	pop	{r4, pc}
 8006c60:	89a3      	ldrh	r3, [r4, #12]
 8006c62:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006c66:	81a3      	strh	r3, [r4, #12]
 8006c68:	bd10      	pop	{r4, pc}
 8006c6a:	bf00      	nop

08006c6c <__swrite>:
 8006c6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006c70:	4616      	mov	r6, r2
 8006c72:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006c76:	461f      	mov	r7, r3
 8006c78:	05d3      	lsls	r3, r2, #23
 8006c7a:	460c      	mov	r4, r1
 8006c7c:	4605      	mov	r5, r0
 8006c7e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c82:	d507      	bpl.n	8006c94 <__swrite+0x28>
 8006c84:	2200      	movs	r2, #0
 8006c86:	2302      	movs	r3, #2
 8006c88:	f000 fa74 	bl	8007174 <_lseek_r>
 8006c8c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006c90:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006c94:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006c98:	81a2      	strh	r2, [r4, #12]
 8006c9a:	463b      	mov	r3, r7
 8006c9c:	4632      	mov	r2, r6
 8006c9e:	4628      	mov	r0, r5
 8006ca0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006ca4:	f000 b88c 	b.w	8006dc0 <_write_r>

08006ca8 <__sseek>:
 8006ca8:	b510      	push	{r4, lr}
 8006caa:	460c      	mov	r4, r1
 8006cac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006cb0:	f000 fa60 	bl	8007174 <_lseek_r>
 8006cb4:	89a3      	ldrh	r3, [r4, #12]
 8006cb6:	1c42      	adds	r2, r0, #1
 8006cb8:	bf0e      	itee	eq
 8006cba:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006cbe:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006cc2:	6520      	strne	r0, [r4, #80]	; 0x50
 8006cc4:	81a3      	strh	r3, [r4, #12]
 8006cc6:	bd10      	pop	{r4, pc}

08006cc8 <__sclose>:
 8006cc8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ccc:	f000 b922 	b.w	8006f14 <_close_r>

08006cd0 <strncpy>:
 8006cd0:	ea40 0301 	orr.w	r3, r0, r1
 8006cd4:	079b      	lsls	r3, r3, #30
 8006cd6:	b470      	push	{r4, r5, r6}
 8006cd8:	d12a      	bne.n	8006d30 <strncpy+0x60>
 8006cda:	2a03      	cmp	r2, #3
 8006cdc:	d928      	bls.n	8006d30 <strncpy+0x60>
 8006cde:	460c      	mov	r4, r1
 8006ce0:	4603      	mov	r3, r0
 8006ce2:	4621      	mov	r1, r4
 8006ce4:	f854 6b04 	ldr.w	r6, [r4], #4
 8006ce8:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006cec:	ea25 0506 	bic.w	r5, r5, r6
 8006cf0:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006cf4:	d106      	bne.n	8006d04 <strncpy+0x34>
 8006cf6:	3a04      	subs	r2, #4
 8006cf8:	2a03      	cmp	r2, #3
 8006cfa:	f843 6b04 	str.w	r6, [r3], #4
 8006cfe:	4621      	mov	r1, r4
 8006d00:	d8ef      	bhi.n	8006ce2 <strncpy+0x12>
 8006d02:	b19a      	cbz	r2, 8006d2c <strncpy+0x5c>
 8006d04:	780c      	ldrb	r4, [r1, #0]
 8006d06:	701c      	strb	r4, [r3, #0]
 8006d08:	3a01      	subs	r2, #1
 8006d0a:	3301      	adds	r3, #1
 8006d0c:	b13c      	cbz	r4, 8006d1e <strncpy+0x4e>
 8006d0e:	b16a      	cbz	r2, 8006d2c <strncpy+0x5c>
 8006d10:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006d14:	f803 4b01 	strb.w	r4, [r3], #1
 8006d18:	3a01      	subs	r2, #1
 8006d1a:	2c00      	cmp	r4, #0
 8006d1c:	d1f7      	bne.n	8006d0e <strncpy+0x3e>
 8006d1e:	b12a      	cbz	r2, 8006d2c <strncpy+0x5c>
 8006d20:	441a      	add	r2, r3
 8006d22:	2100      	movs	r1, #0
 8006d24:	f803 1b01 	strb.w	r1, [r3], #1
 8006d28:	4293      	cmp	r3, r2
 8006d2a:	d1fb      	bne.n	8006d24 <strncpy+0x54>
 8006d2c:	bc70      	pop	{r4, r5, r6}
 8006d2e:	4770      	bx	lr
 8006d30:	4603      	mov	r3, r0
 8006d32:	e7e6      	b.n	8006d02 <strncpy+0x32>

08006d34 <__sprint_r.part.0>:
 8006d34:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006d38:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006d3a:	049c      	lsls	r4, r3, #18
 8006d3c:	4692      	mov	sl, r2
 8006d3e:	d52d      	bpl.n	8006d9c <__sprint_r.part.0+0x68>
 8006d40:	6893      	ldr	r3, [r2, #8]
 8006d42:	6812      	ldr	r2, [r2, #0]
 8006d44:	b343      	cbz	r3, 8006d98 <__sprint_r.part.0+0x64>
 8006d46:	460e      	mov	r6, r1
 8006d48:	4607      	mov	r7, r0
 8006d4a:	f102 0908 	add.w	r9, r2, #8
 8006d4e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006d52:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006d56:	d015      	beq.n	8006d84 <__sprint_r.part.0+0x50>
 8006d58:	3d04      	subs	r5, #4
 8006d5a:	2400      	movs	r4, #0
 8006d5c:	e001      	b.n	8006d62 <__sprint_r.part.0+0x2e>
 8006d5e:	45a0      	cmp	r8, r4
 8006d60:	d00e      	beq.n	8006d80 <__sprint_r.part.0+0x4c>
 8006d62:	4632      	mov	r2, r6
 8006d64:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006d68:	4638      	mov	r0, r7
 8006d6a:	f000 f99d 	bl	80070a8 <_fputwc_r>
 8006d6e:	1c43      	adds	r3, r0, #1
 8006d70:	f104 0401 	add.w	r4, r4, #1
 8006d74:	d1f3      	bne.n	8006d5e <__sprint_r.part.0+0x2a>
 8006d76:	2300      	movs	r3, #0
 8006d78:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006d7c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d80:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006d84:	f02b 0b03 	bic.w	fp, fp, #3
 8006d88:	eba3 030b 	sub.w	r3, r3, fp
 8006d8c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006d90:	f109 0908 	add.w	r9, r9, #8
 8006d94:	2b00      	cmp	r3, #0
 8006d96:	d1da      	bne.n	8006d4e <__sprint_r.part.0+0x1a>
 8006d98:	2000      	movs	r0, #0
 8006d9a:	e7ec      	b.n	8006d76 <__sprint_r.part.0+0x42>
 8006d9c:	f7fe fd0c 	bl	80057b8 <__sfvwrite_r>
 8006da0:	2300      	movs	r3, #0
 8006da2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006da6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006daa:	bf00      	nop

08006dac <__sprint_r>:
 8006dac:	6893      	ldr	r3, [r2, #8]
 8006dae:	b10b      	cbz	r3, 8006db4 <__sprint_r+0x8>
 8006db0:	f7ff bfc0 	b.w	8006d34 <__sprint_r.part.0>
 8006db4:	b410      	push	{r4}
 8006db6:	4618      	mov	r0, r3
 8006db8:	6053      	str	r3, [r2, #4]
 8006dba:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006dbe:	4770      	bx	lr

08006dc0 <_write_r>:
 8006dc0:	b570      	push	{r4, r5, r6, lr}
 8006dc2:	460d      	mov	r5, r1
 8006dc4:	4c08      	ldr	r4, [pc, #32]	; (8006de8 <_write_r+0x28>)
 8006dc6:	4611      	mov	r1, r2
 8006dc8:	4606      	mov	r6, r0
 8006dca:	461a      	mov	r2, r3
 8006dcc:	4628      	mov	r0, r5
 8006dce:	2300      	movs	r3, #0
 8006dd0:	6023      	str	r3, [r4, #0]
 8006dd2:	f7fb fb3b 	bl	800244c <_write>
 8006dd6:	1c43      	adds	r3, r0, #1
 8006dd8:	d000      	beq.n	8006ddc <_write_r+0x1c>
 8006dda:	bd70      	pop	{r4, r5, r6, pc}
 8006ddc:	6823      	ldr	r3, [r4, #0]
 8006dde:	2b00      	cmp	r3, #0
 8006de0:	d0fb      	beq.n	8006dda <_write_r+0x1a>
 8006de2:	6033      	str	r3, [r6, #0]
 8006de4:	bd70      	pop	{r4, r5, r6, pc}
 8006de6:	bf00      	nop
 8006de8:	20000ba4 	.word	0x20000ba4

08006dec <__register_exitproc>:
 8006dec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006df0:	4d2b      	ldr	r5, [pc, #172]	; (8006ea0 <__register_exitproc+0xb4>)
 8006df2:	4606      	mov	r6, r0
 8006df4:	6828      	ldr	r0, [r5, #0]
 8006df6:	4698      	mov	r8, r3
 8006df8:	460f      	mov	r7, r1
 8006dfa:	4691      	mov	r9, r2
 8006dfc:	f7fe fe96 	bl	8005b2c <__retarget_lock_acquire_recursive>
 8006e00:	4b28      	ldr	r3, [pc, #160]	; (8006ea4 <__register_exitproc+0xb8>)
 8006e02:	681c      	ldr	r4, [r3, #0]
 8006e04:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006e08:	2b00      	cmp	r3, #0
 8006e0a:	d03d      	beq.n	8006e88 <__register_exitproc+0x9c>
 8006e0c:	685a      	ldr	r2, [r3, #4]
 8006e0e:	2a1f      	cmp	r2, #31
 8006e10:	dc0d      	bgt.n	8006e2e <__register_exitproc+0x42>
 8006e12:	f102 0c01 	add.w	ip, r2, #1
 8006e16:	bb16      	cbnz	r6, 8006e5e <__register_exitproc+0x72>
 8006e18:	3202      	adds	r2, #2
 8006e1a:	f8c3 c004 	str.w	ip, [r3, #4]
 8006e1e:	6828      	ldr	r0, [r5, #0]
 8006e20:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006e24:	f7fe fe84 	bl	8005b30 <__retarget_lock_release_recursive>
 8006e28:	2000      	movs	r0, #0
 8006e2a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006e2e:	4b1e      	ldr	r3, [pc, #120]	; (8006ea8 <__register_exitproc+0xbc>)
 8006e30:	b37b      	cbz	r3, 8006e92 <__register_exitproc+0xa6>
 8006e32:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006e36:	f3af 8000 	nop.w
 8006e3a:	4603      	mov	r3, r0
 8006e3c:	b348      	cbz	r0, 8006e92 <__register_exitproc+0xa6>
 8006e3e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006e42:	2100      	movs	r1, #0
 8006e44:	e9c0 2100 	strd	r2, r1, [r0]
 8006e48:	f04f 0c01 	mov.w	ip, #1
 8006e4c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006e50:	460a      	mov	r2, r1
 8006e52:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006e56:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006e5a:	2e00      	cmp	r6, #0
 8006e5c:	d0dc      	beq.n	8006e18 <__register_exitproc+0x2c>
 8006e5e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006e62:	2401      	movs	r4, #1
 8006e64:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006e68:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006e6c:	4094      	lsls	r4, r2
 8006e6e:	4320      	orrs	r0, r4
 8006e70:	2e02      	cmp	r6, #2
 8006e72:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006e76:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006e7a:	d1cd      	bne.n	8006e18 <__register_exitproc+0x2c>
 8006e7c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006e80:	430c      	orrs	r4, r1
 8006e82:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006e86:	e7c7      	b.n	8006e18 <__register_exitproc+0x2c>
 8006e88:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006e8c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006e90:	e7bc      	b.n	8006e0c <__register_exitproc+0x20>
 8006e92:	6828      	ldr	r0, [r5, #0]
 8006e94:	f7fe fe4c 	bl	8005b30 <__retarget_lock_release_recursive>
 8006e98:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006e9c:	e7c5      	b.n	8006e2a <__register_exitproc+0x3e>
 8006e9e:	bf00      	nop
 8006ea0:	200004e0 	.word	0x200004e0
 8006ea4:	08007444 	.word	0x08007444
 8006ea8:	00000000 	.word	0x00000000

08006eac <_calloc_r>:
 8006eac:	b510      	push	{r4, lr}
 8006eae:	fb02 f101 	mul.w	r1, r2, r1
 8006eb2:	f7fe feb7 	bl	8005c24 <_malloc_r>
 8006eb6:	4604      	mov	r4, r0
 8006eb8:	b1d8      	cbz	r0, 8006ef2 <_calloc_r+0x46>
 8006eba:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006ebe:	f022 0203 	bic.w	r2, r2, #3
 8006ec2:	3a04      	subs	r2, #4
 8006ec4:	2a24      	cmp	r2, #36	; 0x24
 8006ec6:	d81d      	bhi.n	8006f04 <_calloc_r+0x58>
 8006ec8:	2a13      	cmp	r2, #19
 8006eca:	d914      	bls.n	8006ef6 <_calloc_r+0x4a>
 8006ecc:	2300      	movs	r3, #0
 8006ece:	2a1b      	cmp	r2, #27
 8006ed0:	e9c0 3300 	strd	r3, r3, [r0]
 8006ed4:	d91b      	bls.n	8006f0e <_calloc_r+0x62>
 8006ed6:	2a24      	cmp	r2, #36	; 0x24
 8006ed8:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006edc:	bf0a      	itet	eq
 8006ede:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006ee2:	f100 0210 	addne.w	r2, r0, #16
 8006ee6:	f100 0218 	addeq.w	r2, r0, #24
 8006eea:	2300      	movs	r3, #0
 8006eec:	e9c2 3300 	strd	r3, r3, [r2]
 8006ef0:	6093      	str	r3, [r2, #8]
 8006ef2:	4620      	mov	r0, r4
 8006ef4:	bd10      	pop	{r4, pc}
 8006ef6:	4602      	mov	r2, r0
 8006ef8:	2300      	movs	r3, #0
 8006efa:	e9c2 3300 	strd	r3, r3, [r2]
 8006efe:	6093      	str	r3, [r2, #8]
 8006f00:	4620      	mov	r0, r4
 8006f02:	bd10      	pop	{r4, pc}
 8006f04:	2100      	movs	r1, #0
 8006f06:	f7fb fb6d 	bl	80025e4 <memset>
 8006f0a:	4620      	mov	r0, r4
 8006f0c:	bd10      	pop	{r4, pc}
 8006f0e:	f100 0208 	add.w	r2, r0, #8
 8006f12:	e7f1      	b.n	8006ef8 <_calloc_r+0x4c>

08006f14 <_close_r>:
 8006f14:	b538      	push	{r3, r4, r5, lr}
 8006f16:	4c07      	ldr	r4, [pc, #28]	; (8006f34 <_close_r+0x20>)
 8006f18:	2300      	movs	r3, #0
 8006f1a:	4605      	mov	r5, r0
 8006f1c:	4608      	mov	r0, r1
 8006f1e:	6023      	str	r3, [r4, #0]
 8006f20:	f7fb fad5 	bl	80024ce <_close>
 8006f24:	1c43      	adds	r3, r0, #1
 8006f26:	d000      	beq.n	8006f2a <_close_r+0x16>
 8006f28:	bd38      	pop	{r3, r4, r5, pc}
 8006f2a:	6823      	ldr	r3, [r4, #0]
 8006f2c:	2b00      	cmp	r3, #0
 8006f2e:	d0fb      	beq.n	8006f28 <_close_r+0x14>
 8006f30:	602b      	str	r3, [r5, #0]
 8006f32:	bd38      	pop	{r3, r4, r5, pc}
 8006f34:	20000ba4 	.word	0x20000ba4

08006f38 <_fclose_r>:
 8006f38:	b570      	push	{r4, r5, r6, lr}
 8006f3a:	2900      	cmp	r1, #0
 8006f3c:	d048      	beq.n	8006fd0 <_fclose_r+0x98>
 8006f3e:	4605      	mov	r5, r0
 8006f40:	460c      	mov	r4, r1
 8006f42:	b110      	cbz	r0, 8006f4a <_fclose_r+0x12>
 8006f44:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f46:	2b00      	cmp	r3, #0
 8006f48:	d048      	beq.n	8006fdc <_fclose_r+0xa4>
 8006f4a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f4c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f50:	07d0      	lsls	r0, r2, #31
 8006f52:	d440      	bmi.n	8006fd6 <_fclose_r+0x9e>
 8006f54:	0599      	lsls	r1, r3, #22
 8006f56:	d530      	bpl.n	8006fba <_fclose_r+0x82>
 8006f58:	4621      	mov	r1, r4
 8006f5a:	4628      	mov	r0, r5
 8006f5c:	f7fe f990 	bl	8005280 <__sflush_r>
 8006f60:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006f62:	4606      	mov	r6, r0
 8006f64:	b133      	cbz	r3, 8006f74 <_fclose_r+0x3c>
 8006f66:	69e1      	ldr	r1, [r4, #28]
 8006f68:	4628      	mov	r0, r5
 8006f6a:	4798      	blx	r3
 8006f6c:	2800      	cmp	r0, #0
 8006f6e:	bfb8      	it	lt
 8006f70:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006f74:	89a3      	ldrh	r3, [r4, #12]
 8006f76:	061a      	lsls	r2, r3, #24
 8006f78:	d43c      	bmi.n	8006ff4 <_fclose_r+0xbc>
 8006f7a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006f7c:	b141      	cbz	r1, 8006f90 <_fclose_r+0x58>
 8006f7e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006f82:	4299      	cmp	r1, r3
 8006f84:	d002      	beq.n	8006f8c <_fclose_r+0x54>
 8006f86:	4628      	mov	r0, r5
 8006f88:	f7fe fb22 	bl	80055d0 <_free_r>
 8006f8c:	2300      	movs	r3, #0
 8006f8e:	6323      	str	r3, [r4, #48]	; 0x30
 8006f90:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006f92:	b121      	cbz	r1, 8006f9e <_fclose_r+0x66>
 8006f94:	4628      	mov	r0, r5
 8006f96:	f7fe fb1b 	bl	80055d0 <_free_r>
 8006f9a:	2300      	movs	r3, #0
 8006f9c:	6463      	str	r3, [r4, #68]	; 0x44
 8006f9e:	f7fe faa1 	bl	80054e4 <__sfp_lock_acquire>
 8006fa2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006fa4:	2200      	movs	r2, #0
 8006fa6:	07db      	lsls	r3, r3, #31
 8006fa8:	81a2      	strh	r2, [r4, #12]
 8006faa:	d51f      	bpl.n	8006fec <_fclose_r+0xb4>
 8006fac:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fae:	f7fe fdbb 	bl	8005b28 <__retarget_lock_close_recursive>
 8006fb2:	f7fe fa9d 	bl	80054f0 <__sfp_lock_release>
 8006fb6:	4630      	mov	r0, r6
 8006fb8:	bd70      	pop	{r4, r5, r6, pc}
 8006fba:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fbc:	f7fe fdb6 	bl	8005b2c <__retarget_lock_acquire_recursive>
 8006fc0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006fc4:	2b00      	cmp	r3, #0
 8006fc6:	d1c7      	bne.n	8006f58 <_fclose_r+0x20>
 8006fc8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006fca:	f016 0601 	ands.w	r6, r6, #1
 8006fce:	d016      	beq.n	8006ffe <_fclose_r+0xc6>
 8006fd0:	2600      	movs	r6, #0
 8006fd2:	4630      	mov	r0, r6
 8006fd4:	bd70      	pop	{r4, r5, r6, pc}
 8006fd6:	2b00      	cmp	r3, #0
 8006fd8:	d0fa      	beq.n	8006fd0 <_fclose_r+0x98>
 8006fda:	e7bd      	b.n	8006f58 <_fclose_r+0x20>
 8006fdc:	f7fe fa56 	bl	800548c <__sinit>
 8006fe0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006fe2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006fe6:	07d0      	lsls	r0, r2, #31
 8006fe8:	d4f5      	bmi.n	8006fd6 <_fclose_r+0x9e>
 8006fea:	e7b3      	b.n	8006f54 <_fclose_r+0x1c>
 8006fec:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fee:	f7fe fd9f 	bl	8005b30 <__retarget_lock_release_recursive>
 8006ff2:	e7db      	b.n	8006fac <_fclose_r+0x74>
 8006ff4:	6921      	ldr	r1, [r4, #16]
 8006ff6:	4628      	mov	r0, r5
 8006ff8:	f7fe faea 	bl	80055d0 <_free_r>
 8006ffc:	e7bd      	b.n	8006f7a <_fclose_r+0x42>
 8006ffe:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007000:	f7fe fd96 	bl	8005b30 <__retarget_lock_release_recursive>
 8007004:	4630      	mov	r0, r6
 8007006:	bd70      	pop	{r4, r5, r6, pc}

08007008 <__fputwc>:
 8007008:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800700c:	b082      	sub	sp, #8
 800700e:	4681      	mov	r9, r0
 8007010:	4688      	mov	r8, r1
 8007012:	4614      	mov	r4, r2
 8007014:	f000 f8a0 	bl	8007158 <__locale_mb_cur_max>
 8007018:	2801      	cmp	r0, #1
 800701a:	d103      	bne.n	8007024 <__fputwc+0x1c>
 800701c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007020:	2bfe      	cmp	r3, #254	; 0xfe
 8007022:	d933      	bls.n	800708c <__fputwc+0x84>
 8007024:	4642      	mov	r2, r8
 8007026:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800702a:	a901      	add	r1, sp, #4
 800702c:	4648      	mov	r0, r9
 800702e:	f000 f93b 	bl	80072a8 <_wcrtomb_r>
 8007032:	1c42      	adds	r2, r0, #1
 8007034:	4606      	mov	r6, r0
 8007036:	d02f      	beq.n	8007098 <__fputwc+0x90>
 8007038:	b320      	cbz	r0, 8007084 <__fputwc+0x7c>
 800703a:	f89d c004 	ldrb.w	ip, [sp, #4]
 800703e:	2500      	movs	r5, #0
 8007040:	f10d 0a04 	add.w	sl, sp, #4
 8007044:	e009      	b.n	800705a <__fputwc+0x52>
 8007046:	6823      	ldr	r3, [r4, #0]
 8007048:	1c5a      	adds	r2, r3, #1
 800704a:	6022      	str	r2, [r4, #0]
 800704c:	f883 c000 	strb.w	ip, [r3]
 8007050:	3501      	adds	r5, #1
 8007052:	42b5      	cmp	r5, r6
 8007054:	d216      	bcs.n	8007084 <__fputwc+0x7c>
 8007056:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800705a:	68a3      	ldr	r3, [r4, #8]
 800705c:	3b01      	subs	r3, #1
 800705e:	2b00      	cmp	r3, #0
 8007060:	60a3      	str	r3, [r4, #8]
 8007062:	daf0      	bge.n	8007046 <__fputwc+0x3e>
 8007064:	69a7      	ldr	r7, [r4, #24]
 8007066:	42bb      	cmp	r3, r7
 8007068:	4661      	mov	r1, ip
 800706a:	4622      	mov	r2, r4
 800706c:	4648      	mov	r0, r9
 800706e:	db02      	blt.n	8007076 <__fputwc+0x6e>
 8007070:	f1bc 0f0a 	cmp.w	ip, #10
 8007074:	d1e7      	bne.n	8007046 <__fputwc+0x3e>
 8007076:	f000 f8bf 	bl	80071f8 <__swbuf_r>
 800707a:	1c43      	adds	r3, r0, #1
 800707c:	d1e8      	bne.n	8007050 <__fputwc+0x48>
 800707e:	b002      	add	sp, #8
 8007080:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007084:	4640      	mov	r0, r8
 8007086:	b002      	add	sp, #8
 8007088:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800708c:	fa5f fc88 	uxtb.w	ip, r8
 8007090:	4606      	mov	r6, r0
 8007092:	f88d c004 	strb.w	ip, [sp, #4]
 8007096:	e7d2      	b.n	800703e <__fputwc+0x36>
 8007098:	89a3      	ldrh	r3, [r4, #12]
 800709a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800709e:	81a3      	strh	r3, [r4, #12]
 80070a0:	b002      	add	sp, #8
 80070a2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80070a6:	bf00      	nop

080070a8 <_fputwc_r>:
 80070a8:	b530      	push	{r4, r5, lr}
 80070aa:	4605      	mov	r5, r0
 80070ac:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80070ae:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80070b2:	07c0      	lsls	r0, r0, #31
 80070b4:	4614      	mov	r4, r2
 80070b6:	b083      	sub	sp, #12
 80070b8:	b29a      	uxth	r2, r3
 80070ba:	d401      	bmi.n	80070c0 <_fputwc_r+0x18>
 80070bc:	0590      	lsls	r0, r2, #22
 80070be:	d51c      	bpl.n	80070fa <_fputwc_r+0x52>
 80070c0:	0490      	lsls	r0, r2, #18
 80070c2:	d406      	bmi.n	80070d2 <_fputwc_r+0x2a>
 80070c4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80070c6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80070ca:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80070ce:	81a3      	strh	r3, [r4, #12]
 80070d0:	6662      	str	r2, [r4, #100]	; 0x64
 80070d2:	4628      	mov	r0, r5
 80070d4:	4622      	mov	r2, r4
 80070d6:	f7ff ff97 	bl	8007008 <__fputwc>
 80070da:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80070dc:	07da      	lsls	r2, r3, #31
 80070de:	4605      	mov	r5, r0
 80070e0:	d402      	bmi.n	80070e8 <_fputwc_r+0x40>
 80070e2:	89a3      	ldrh	r3, [r4, #12]
 80070e4:	059b      	lsls	r3, r3, #22
 80070e6:	d502      	bpl.n	80070ee <_fputwc_r+0x46>
 80070e8:	4628      	mov	r0, r5
 80070ea:	b003      	add	sp, #12
 80070ec:	bd30      	pop	{r4, r5, pc}
 80070ee:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070f0:	f7fe fd1e 	bl	8005b30 <__retarget_lock_release_recursive>
 80070f4:	4628      	mov	r0, r5
 80070f6:	b003      	add	sp, #12
 80070f8:	bd30      	pop	{r4, r5, pc}
 80070fa:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070fc:	9101      	str	r1, [sp, #4]
 80070fe:	f7fe fd15 	bl	8005b2c <__retarget_lock_acquire_recursive>
 8007102:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007106:	9901      	ldr	r1, [sp, #4]
 8007108:	b29a      	uxth	r2, r3
 800710a:	e7d9      	b.n	80070c0 <_fputwc_r+0x18>

0800710c <_fstat_r>:
 800710c:	b538      	push	{r3, r4, r5, lr}
 800710e:	460b      	mov	r3, r1
 8007110:	4c07      	ldr	r4, [pc, #28]	; (8007130 <_fstat_r+0x24>)
 8007112:	4605      	mov	r5, r0
 8007114:	4611      	mov	r1, r2
 8007116:	4618      	mov	r0, r3
 8007118:	2300      	movs	r3, #0
 800711a:	6023      	str	r3, [r4, #0]
 800711c:	f7fb f9da 	bl	80024d4 <_fstat>
 8007120:	1c43      	adds	r3, r0, #1
 8007122:	d000      	beq.n	8007126 <_fstat_r+0x1a>
 8007124:	bd38      	pop	{r3, r4, r5, pc}
 8007126:	6823      	ldr	r3, [r4, #0]
 8007128:	2b00      	cmp	r3, #0
 800712a:	d0fb      	beq.n	8007124 <_fstat_r+0x18>
 800712c:	602b      	str	r3, [r5, #0]
 800712e:	bd38      	pop	{r3, r4, r5, pc}
 8007130:	20000ba4 	.word	0x20000ba4

08007134 <_isatty_r>:
 8007134:	b538      	push	{r3, r4, r5, lr}
 8007136:	4c07      	ldr	r4, [pc, #28]	; (8007154 <_isatty_r+0x20>)
 8007138:	2300      	movs	r3, #0
 800713a:	4605      	mov	r5, r0
 800713c:	4608      	mov	r0, r1
 800713e:	6023      	str	r3, [r4, #0]
 8007140:	f7fb f9ce 	bl	80024e0 <_isatty>
 8007144:	1c43      	adds	r3, r0, #1
 8007146:	d000      	beq.n	800714a <_isatty_r+0x16>
 8007148:	bd38      	pop	{r3, r4, r5, pc}
 800714a:	6823      	ldr	r3, [r4, #0]
 800714c:	2b00      	cmp	r3, #0
 800714e:	d0fb      	beq.n	8007148 <_isatty_r+0x14>
 8007150:	602b      	str	r3, [r5, #0]
 8007152:	bd38      	pop	{r3, r4, r5, pc}
 8007154:	20000ba4 	.word	0x20000ba4

08007158 <__locale_mb_cur_max>:
 8007158:	4b04      	ldr	r3, [pc, #16]	; (800716c <__locale_mb_cur_max+0x14>)
 800715a:	4a05      	ldr	r2, [pc, #20]	; (8007170 <__locale_mb_cur_max+0x18>)
 800715c:	681b      	ldr	r3, [r3, #0]
 800715e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007160:	2b00      	cmp	r3, #0
 8007162:	bf08      	it	eq
 8007164:	4613      	moveq	r3, r2
 8007166:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800716a:	4770      	bx	lr
 800716c:	200000b4 	.word	0x200000b4
 8007170:	200008f4 	.word	0x200008f4

08007174 <_lseek_r>:
 8007174:	b570      	push	{r4, r5, r6, lr}
 8007176:	460d      	mov	r5, r1
 8007178:	4c08      	ldr	r4, [pc, #32]	; (800719c <_lseek_r+0x28>)
 800717a:	4611      	mov	r1, r2
 800717c:	4606      	mov	r6, r0
 800717e:	461a      	mov	r2, r3
 8007180:	4628      	mov	r0, r5
 8007182:	2300      	movs	r3, #0
 8007184:	6023      	str	r3, [r4, #0]
 8007186:	f7fb f9ad 	bl	80024e4 <_lseek>
 800718a:	1c43      	adds	r3, r0, #1
 800718c:	d000      	beq.n	8007190 <_lseek_r+0x1c>
 800718e:	bd70      	pop	{r4, r5, r6, pc}
 8007190:	6823      	ldr	r3, [r4, #0]
 8007192:	2b00      	cmp	r3, #0
 8007194:	d0fb      	beq.n	800718e <_lseek_r+0x1a>
 8007196:	6033      	str	r3, [r6, #0]
 8007198:	bd70      	pop	{r4, r5, r6, pc}
 800719a:	bf00      	nop
 800719c:	20000ba4 	.word	0x20000ba4

080071a0 <__ascii_mbtowc>:
 80071a0:	b082      	sub	sp, #8
 80071a2:	b149      	cbz	r1, 80071b8 <__ascii_mbtowc+0x18>
 80071a4:	b15a      	cbz	r2, 80071be <__ascii_mbtowc+0x1e>
 80071a6:	b16b      	cbz	r3, 80071c4 <__ascii_mbtowc+0x24>
 80071a8:	7813      	ldrb	r3, [r2, #0]
 80071aa:	600b      	str	r3, [r1, #0]
 80071ac:	7812      	ldrb	r2, [r2, #0]
 80071ae:	1c10      	adds	r0, r2, #0
 80071b0:	bf18      	it	ne
 80071b2:	2001      	movne	r0, #1
 80071b4:	b002      	add	sp, #8
 80071b6:	4770      	bx	lr
 80071b8:	a901      	add	r1, sp, #4
 80071ba:	2a00      	cmp	r2, #0
 80071bc:	d1f3      	bne.n	80071a6 <__ascii_mbtowc+0x6>
 80071be:	4610      	mov	r0, r2
 80071c0:	b002      	add	sp, #8
 80071c2:	4770      	bx	lr
 80071c4:	f06f 0001 	mvn.w	r0, #1
 80071c8:	e7f4      	b.n	80071b4 <__ascii_mbtowc+0x14>
 80071ca:	bf00      	nop

080071cc <_read_r>:
 80071cc:	b570      	push	{r4, r5, r6, lr}
 80071ce:	460d      	mov	r5, r1
 80071d0:	4c08      	ldr	r4, [pc, #32]	; (80071f4 <_read_r+0x28>)
 80071d2:	4611      	mov	r1, r2
 80071d4:	4606      	mov	r6, r0
 80071d6:	461a      	mov	r2, r3
 80071d8:	4628      	mov	r0, r5
 80071da:	2300      	movs	r3, #0
 80071dc:	6023      	str	r3, [r4, #0]
 80071de:	f7fb f915 	bl	800240c <_read>
 80071e2:	1c43      	adds	r3, r0, #1
 80071e4:	d000      	beq.n	80071e8 <_read_r+0x1c>
 80071e6:	bd70      	pop	{r4, r5, r6, pc}
 80071e8:	6823      	ldr	r3, [r4, #0]
 80071ea:	2b00      	cmp	r3, #0
 80071ec:	d0fb      	beq.n	80071e6 <_read_r+0x1a>
 80071ee:	6033      	str	r3, [r6, #0]
 80071f0:	bd70      	pop	{r4, r5, r6, pc}
 80071f2:	bf00      	nop
 80071f4:	20000ba4 	.word	0x20000ba4

080071f8 <__swbuf_r>:
 80071f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80071fa:	460d      	mov	r5, r1
 80071fc:	4614      	mov	r4, r2
 80071fe:	4606      	mov	r6, r0
 8007200:	b110      	cbz	r0, 8007208 <__swbuf_r+0x10>
 8007202:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007204:	2b00      	cmp	r3, #0
 8007206:	d043      	beq.n	8007290 <__swbuf_r+0x98>
 8007208:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800720c:	69a3      	ldr	r3, [r4, #24]
 800720e:	60a3      	str	r3, [r4, #8]
 8007210:	b291      	uxth	r1, r2
 8007212:	0708      	lsls	r0, r1, #28
 8007214:	d51b      	bpl.n	800724e <__swbuf_r+0x56>
 8007216:	6923      	ldr	r3, [r4, #16]
 8007218:	b1cb      	cbz	r3, 800724e <__swbuf_r+0x56>
 800721a:	b2ed      	uxtb	r5, r5
 800721c:	0489      	lsls	r1, r1, #18
 800721e:	462f      	mov	r7, r5
 8007220:	d522      	bpl.n	8007268 <__swbuf_r+0x70>
 8007222:	6822      	ldr	r2, [r4, #0]
 8007224:	6961      	ldr	r1, [r4, #20]
 8007226:	1ad3      	subs	r3, r2, r3
 8007228:	4299      	cmp	r1, r3
 800722a:	dd29      	ble.n	8007280 <__swbuf_r+0x88>
 800722c:	3301      	adds	r3, #1
 800722e:	68a1      	ldr	r1, [r4, #8]
 8007230:	1c50      	adds	r0, r2, #1
 8007232:	3901      	subs	r1, #1
 8007234:	60a1      	str	r1, [r4, #8]
 8007236:	6020      	str	r0, [r4, #0]
 8007238:	7015      	strb	r5, [r2, #0]
 800723a:	6962      	ldr	r2, [r4, #20]
 800723c:	429a      	cmp	r2, r3
 800723e:	d02a      	beq.n	8007296 <__swbuf_r+0x9e>
 8007240:	89a3      	ldrh	r3, [r4, #12]
 8007242:	07db      	lsls	r3, r3, #31
 8007244:	d501      	bpl.n	800724a <__swbuf_r+0x52>
 8007246:	2d0a      	cmp	r5, #10
 8007248:	d025      	beq.n	8007296 <__swbuf_r+0x9e>
 800724a:	4638      	mov	r0, r7
 800724c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800724e:	4621      	mov	r1, r4
 8007250:	4630      	mov	r0, r6
 8007252:	f7fc fffd 	bl	8004250 <__swsetup_r>
 8007256:	bb20      	cbnz	r0, 80072a2 <__swbuf_r+0xaa>
 8007258:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800725c:	6923      	ldr	r3, [r4, #16]
 800725e:	b291      	uxth	r1, r2
 8007260:	b2ed      	uxtb	r5, r5
 8007262:	0489      	lsls	r1, r1, #18
 8007264:	462f      	mov	r7, r5
 8007266:	d4dc      	bmi.n	8007222 <__swbuf_r+0x2a>
 8007268:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800726a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800726e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007272:	81a2      	strh	r2, [r4, #12]
 8007274:	6822      	ldr	r2, [r4, #0]
 8007276:	6661      	str	r1, [r4, #100]	; 0x64
 8007278:	6961      	ldr	r1, [r4, #20]
 800727a:	1ad3      	subs	r3, r2, r3
 800727c:	4299      	cmp	r1, r3
 800727e:	dcd5      	bgt.n	800722c <__swbuf_r+0x34>
 8007280:	4621      	mov	r1, r4
 8007282:	4630      	mov	r0, r6
 8007284:	f7fe f8a6 	bl	80053d4 <_fflush_r>
 8007288:	b958      	cbnz	r0, 80072a2 <__swbuf_r+0xaa>
 800728a:	6822      	ldr	r2, [r4, #0]
 800728c:	2301      	movs	r3, #1
 800728e:	e7ce      	b.n	800722e <__swbuf_r+0x36>
 8007290:	f7fe f8fc 	bl	800548c <__sinit>
 8007294:	e7b8      	b.n	8007208 <__swbuf_r+0x10>
 8007296:	4621      	mov	r1, r4
 8007298:	4630      	mov	r0, r6
 800729a:	f7fe f89b 	bl	80053d4 <_fflush_r>
 800729e:	2800      	cmp	r0, #0
 80072a0:	d0d3      	beq.n	800724a <__swbuf_r+0x52>
 80072a2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80072a6:	e7d0      	b.n	800724a <__swbuf_r+0x52>

080072a8 <_wcrtomb_r>:
 80072a8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80072aa:	4c11      	ldr	r4, [pc, #68]	; (80072f0 <_wcrtomb_r+0x48>)
 80072ac:	6824      	ldr	r4, [r4, #0]
 80072ae:	b085      	sub	sp, #20
 80072b0:	4606      	mov	r6, r0
 80072b2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80072b4:	461f      	mov	r7, r3
 80072b6:	b151      	cbz	r1, 80072ce <_wcrtomb_r+0x26>
 80072b8:	4d0e      	ldr	r5, [pc, #56]	; (80072f4 <_wcrtomb_r+0x4c>)
 80072ba:	2c00      	cmp	r4, #0
 80072bc:	bf08      	it	eq
 80072be:	462c      	moveq	r4, r5
 80072c0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80072c4:	47a0      	blx	r4
 80072c6:	1c43      	adds	r3, r0, #1
 80072c8:	d00c      	beq.n	80072e4 <_wcrtomb_r+0x3c>
 80072ca:	b005      	add	sp, #20
 80072cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80072ce:	4a09      	ldr	r2, [pc, #36]	; (80072f4 <_wcrtomb_r+0x4c>)
 80072d0:	2c00      	cmp	r4, #0
 80072d2:	bf08      	it	eq
 80072d4:	4614      	moveq	r4, r2
 80072d6:	460a      	mov	r2, r1
 80072d8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80072dc:	a901      	add	r1, sp, #4
 80072de:	47a0      	blx	r4
 80072e0:	1c43      	adds	r3, r0, #1
 80072e2:	d1f2      	bne.n	80072ca <_wcrtomb_r+0x22>
 80072e4:	2200      	movs	r2, #0
 80072e6:	238a      	movs	r3, #138	; 0x8a
 80072e8:	603a      	str	r2, [r7, #0]
 80072ea:	6033      	str	r3, [r6, #0]
 80072ec:	b005      	add	sp, #20
 80072ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80072f0:	200000b4 	.word	0x200000b4
 80072f4:	200008f4 	.word	0x200008f4

080072f8 <__ascii_wctomb>:
 80072f8:	b121      	cbz	r1, 8007304 <__ascii_wctomb+0xc>
 80072fa:	2aff      	cmp	r2, #255	; 0xff
 80072fc:	d804      	bhi.n	8007308 <__ascii_wctomb+0x10>
 80072fe:	700a      	strb	r2, [r1, #0]
 8007300:	2001      	movs	r0, #1
 8007302:	4770      	bx	lr
 8007304:	4608      	mov	r0, r1
 8007306:	4770      	bx	lr
 8007308:	238a      	movs	r3, #138	; 0x8a
 800730a:	6003      	str	r3, [r0, #0]
 800730c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007310:	4770      	bx	lr
 8007312:	bf00      	nop

08007314 <_init>:
 8007314:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007316:	bf00      	nop
 8007318:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800731a:	bc08      	pop	{r3}
 800731c:	469e      	mov	lr, r3
 800731e:	4770      	bx	lr

08007320 <_fini>:
 8007320:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007322:	bf00      	nop
 8007324:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007326:	bc08      	pop	{r3}
 8007328:	469e      	mov	lr, r3
 800732a:	4770      	bx	lr
 800732c:	0000      	movs	r0, r0
	...
