
minver.elf:     file format elf32-littlearm


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
 80001d8:	200009e8 	.word	0x200009e8
 80001dc:	00000000 	.word	0x00000000
 80001e0:	0800722c 	.word	0x0800722c

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	200009ec 	.word	0x200009ec
 80001fc:	0800722c 	.word	0x0800722c

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
 8001108:	f640 20c4 	movw	r0, #2756	; 0xac4
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20c4 	movw	r0, #2756	; 0xac4
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
 80013e8:	f247 2260 	movw	r2, #29280	; 0x7260
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
 800145a:	f240 0038 	movw	r0, #56	; 0x38
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f247 2258 	movw	r2, #29272	; 0x7258
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
 8001484:	f240 0038 	movw	r0, #56	; 0x38
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f247 2258 	movw	r2, #29272	; 0x7258
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
 8001842:	f640 21c8 	movw	r1, #2760	; 0xac8
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
 800188c:	f640 20c8 	movw	r0, #2760	; 0xac8
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20c8 	movw	r0, #2760	; 0xac8
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
 80019d4:	f247 2390 	movw	r3, #29328	; 0x7290
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
 80019fc:	f247 23a0 	movw	r3, #29344	; 0x72a0
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
	...

08001eb8 <minver>:
 8001eb8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eba:	af03      	add	r7, sp, #12
 8001ebc:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ec0:	f5ad 6dfc 	sub.w	sp, sp, #2016	; 0x7e0
 8001ec4:	1e83      	subs	r3, r0, #2
 8001ec6:	460c      	mov	r4, r1
 8001ec8:	f240 32e7 	movw	r2, #999	; 0x3e7
 8001ecc:	f5b3 7ff9 	cmp.w	r3, #498	; 0x1f2
 8001ed0:	f200 8117 	bhi.w	8002102 <minver+0x24a>
 8001ed4:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8001ed8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001edc:	f240 8111 	bls.w	8002102 <minver+0x24a>
 8001ee0:	2200      	movs	r2, #0
 8001ee2:	f10d 0a10 	add.w	sl, sp, #16
 8001ee6:	f84a 2022 	str.w	r2, [sl, r2, lsl #2]
 8001eea:	3201      	adds	r2, #1
 8001eec:	4290      	cmp	r0, r2
 8001eee:	d1fa      	bne.n	8001ee6 <minver+0x2e>
 8001ef0:	ed9f 3a87 	vldr	s6, [pc, #540]	; 8002110 <minver+0x258>
 8001ef4:	f240 0b14 	movw	fp, #20
 8001ef8:	1e41      	subs	r1, r0, #1
 8001efa:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
 8001efe:	2200      	movs	r2, #0
 8001f00:	f04f 0c00 	mov.w	ip, #0
 8001f04:	2600      	movs	r6, #0
 8001f06:	9100      	str	r1, [sp, #0]
 8001f08:	2100      	movs	r1, #0
 8001f0a:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8001f0e:	eeb0 1a42 	vmov.f32	s2, s4
 8001f12:	9101      	str	r1, [sp, #4]
 8001f14:	4659      	mov	r1, fp
 8001f16:	f8cd b00c 	str.w	fp, [sp, #12]
 8001f1a:	4696      	mov	lr, r2
 8001f1c:	460b      	mov	r3, r1
 8001f1e:	4635      	mov	r5, r6
 8001f20:	eeb0 4a43 	vmov.f32	s8, s6
 8001f24:	ed93 5a00 	vldr	s10, [r3]
 8001f28:	1c6a      	adds	r2, r5, #1
 8001f2a:	330c      	adds	r3, #12
 8001f2c:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
 8001f30:	eeb1 6a45 	vneg.f32	s12, s10
 8001f34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f38:	bfb8      	it	lt
 8001f3a:	eeb0 5a46 	vmovlt.f32	s10, s12
 8001f3e:	eeb4 5ac4 	vcmpe.f32	s10, s8
 8001f42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f46:	bfc4      	itt	gt
 8001f48:	eeb0 4a45 	vmovgt.f32	s8, s10
 8001f4c:	46ac      	movgt	ip, r5
 8001f4e:	4290      	cmp	r0, r2
 8001f50:	4615      	mov	r5, r2
 8001f52:	d1e7      	bne.n	8001f24 <minver+0x6c>
 8001f54:	eb0c 024c 	add.w	r2, ip, ip, lsl #1
 8001f58:	eb0b 0382 	add.w	r3, fp, r2, lsl #2
 8001f5c:	eb03 0286 	add.w	r2, r3, r6, lsl #2
 8001f60:	ed92 4a00 	vldr	s8, [r2]
 8001f64:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
 8001f68:	eeb1 6a44 	vneg.f32	s12, s8
 8001f6c:	eeb0 7a44 	vmov.f32	s14, s8
 8001f70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f74:	bfb8      	it	lt
 8001f76:	eeb0 7a46 	vmovlt.f32	s14, s12
 8001f7a:	eeb4 7ac0 	vcmpe.f32	s14, s0
 8001f7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f82:	f240 80b7 	bls.w	80020f4 <minver+0x23c>
 8001f86:	45b4      	cmp	ip, r6
 8001f88:	4672      	mov	r2, lr
 8001f8a:	9102      	str	r1, [sp, #8]
 8001f8c:	d102      	bne.n	8001f94 <minver+0xdc>
 8001f8e:	ee21 1a04 	vmul.f32	s2, s2, s8
 8001f92:	e01f      	b.n	8001fd4 <minver+0x11c>
 8001f94:	f85a 502c 	ldr.w	r5, [sl, ip, lsl #2]
 8001f98:	f85a 2026 	ldr.w	r2, [sl, r6, lsl #2]
 8001f9c:	fb0c f804 	mul.w	r8, ip, r4
 8001fa0:	46a1      	mov	r9, r4
 8001fa2:	fb06 fe04 	mul.w	lr, r6, r4
 8001fa6:	eeb1 1a45 	vneg.f32	s2, s10
 8001faa:	f84a 5026 	str.w	r5, [sl, r6, lsl #2]
 8001fae:	9d03      	ldr	r5, [sp, #12]
 8001fb0:	f84a 202c 	str.w	r2, [sl, ip, lsl #2]
 8001fb4:	4602      	mov	r2, r0
 8001fb6:	682c      	ldr	r4, [r5, #0]
 8001fb8:	6819      	ldr	r1, [r3, #0]
 8001fba:	3a01      	subs	r2, #1
 8001fbc:	f845 1b04 	str.w	r1, [r5], #4
 8001fc0:	f843 4b04 	str.w	r4, [r3], #4
 8001fc4:	d1f7      	bne.n	8001fb6 <minver+0xfe>
 8001fc6:	9900      	ldr	r1, [sp, #0]
 8001fc8:	464c      	mov	r4, r9
 8001fca:	460a      	mov	r2, r1
 8001fcc:	eb02 0108 	add.w	r1, r2, r8
 8001fd0:	4472      	add	r2, lr
 8001fd2:	9101      	str	r1, [sp, #4]
 8001fd4:	9b03      	ldr	r3, [sp, #12]
 8001fd6:	4605      	mov	r5, r0
 8001fd8:	ed93 5a00 	vldr	s10, [r3]
 8001fdc:	3d01      	subs	r5, #1
 8001fde:	ee85 5a04 	vdiv.f32	s10, s10, s8
 8001fe2:	eca3 5a01 	vstmia	r3!, {s10}
 8001fe6:	d1f7      	bne.n	8001fd8 <minver+0x120>
 8001fe8:	2300      	movs	r3, #0
 8001fea:	46d9      	mov	r9, fp
 8001fec:	42b3      	cmp	r3, r6
 8001fee:	d02c      	beq.n	800204a <minver+0x192>
 8001ff0:	eb03 0143 	add.w	r1, r3, r3, lsl #1
 8001ff4:	fb03 6204 	mla	r2, r3, r4, r6
 8001ff8:	eb0b 0181 	add.w	r1, fp, r1, lsl #2
 8001ffc:	eb01 0e86 	add.w	lr, r1, r6, lsl #2
 8002000:	ed9e 5a00 	vldr	s10, [lr]
 8002004:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
 8002008:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800200c:	d01d      	beq.n	800204a <minver+0x192>
 800200e:	4659      	mov	r1, fp
 8002010:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8002014:	f04f 0800 	mov.w	r8, #0
 8002018:	464d      	mov	r5, r9
 800201a:	4546      	cmp	r6, r8
 800201c:	f108 0801 	add.w	r8, r8, #1
 8002020:	bf1f      	itttt	ne
 8002022:	ed9b 6a00 	vldrne	s12, [fp]
 8002026:	ed95 7a00 	vldrne	s14, [r5]
 800202a:	ee05 7a46 	vmlsne.f32	s14, s10, s12
 800202e:	ed85 7a00 	vstrne	s14, [r5]
 8002032:	3504      	adds	r5, #4
 8002034:	f10b 0b04 	add.w	fp, fp, #4
 8002038:	4540      	cmp	r0, r8
 800203a:	d1ee      	bne.n	800201a <minver+0x162>
 800203c:	eeb1 5a45 	vneg.f32	s10, s10
 8002040:	468b      	mov	fp, r1
 8002042:	ee85 5a04 	vdiv.f32	s10, s10, s8
 8002046:	ed8e 5a00 	vstr	s10, [lr]
 800204a:	3301      	adds	r3, #1
 800204c:	f109 090c 	add.w	r9, r9, #12
 8002050:	4283      	cmp	r3, r0
 8002052:	d1cb      	bne.n	8001fec <minver+0x134>
 8002054:	eb06 0146 	add.w	r1, r6, r6, lsl #1
 8002058:	ee82 4a04 	vdiv.f32	s8, s4, s8
 800205c:	eb0b 0181 	add.w	r1, fp, r1, lsl #2
 8002060:	eb01 0186 	add.w	r1, r1, r6, lsl #2
 8002064:	3601      	adds	r6, #1
 8002066:	ed81 4a00 	vstr	s8, [r1]
 800206a:	9903      	ldr	r1, [sp, #12]
 800206c:	4286      	cmp	r6, r0
 800206e:	f101 010c 	add.w	r1, r1, #12
 8002072:	9103      	str	r1, [sp, #12]
 8002074:	9902      	ldr	r1, [sp, #8]
 8002076:	f101 0110 	add.w	r1, r1, #16
 800207a:	f6ff af4e 	blt.w	8001f1a <minver+0x62>
 800207e:	9900      	ldr	r1, [sp, #0]
 8002080:	f04f 0e00 	mov.w	lr, #0
 8002084:	fb01 fc04 	mul.w	ip, r1, r4
 8002088:	9901      	ldr	r1, [sp, #4]
 800208a:	f85a 802e 	ldr.w	r8, [sl, lr, lsl #2]
 800208e:	45f0      	cmp	r8, lr
 8002090:	d01e      	beq.n	80020d0 <minver+0x218>
 8002092:	eb0c 090e 	add.w	r9, ip, lr
 8002096:	4646      	mov	r6, r8
 8002098:	eb06 0146 	add.w	r1, r6, r6, lsl #1
 800209c:	f85a 8026 	ldr.w	r8, [sl, r6, lsl #2]
 80020a0:	f84a 6026 	str.w	r6, [sl, r6, lsl #2]
 80020a4:	eb0b 0281 	add.w	r2, fp, r1, lsl #2
 80020a8:	f852 3026 	ldr.w	r3, [r2, r6, lsl #2]
 80020ac:	eb02 0486 	add.w	r4, r2, r6, lsl #2
 80020b0:	eb02 018e 	add.w	r1, r2, lr, lsl #2
 80020b4:	4602      	mov	r2, r0
 80020b6:	f84a 802e 	str.w	r8, [sl, lr, lsl #2]
 80020ba:	680d      	ldr	r5, [r1, #0]
 80020bc:	600b      	str	r3, [r1, #0]
 80020be:	3a01      	subs	r2, #1
 80020c0:	462b      	mov	r3, r5
 80020c2:	6025      	str	r5, [r4, #0]
 80020c4:	d1f9      	bne.n	80020ba <minver+0x202>
 80020c6:	45f0      	cmp	r8, lr
 80020c8:	d1e5      	bne.n	8002096 <minver+0x1de>
 80020ca:	eb0c 0106 	add.w	r1, ip, r6
 80020ce:	464a      	mov	r2, r9
 80020d0:	f10e 0e01 	add.w	lr, lr, #1
 80020d4:	4586      	cmp	lr, r0
 80020d6:	d1d8      	bne.n	800208a <minver+0x1d2>
 80020d8:	f640 3030 	movw	r0, #2864	; 0xb30
 80020dc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020e0:	ed80 1a00 	vstr	s2, [r0]
 80020e4:	f640 2004 	movw	r0, #2564	; 0xa04
 80020e8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020ec:	6001      	str	r1, [r0, #0]
 80020ee:	6002      	str	r2, [r0, #0]
 80020f0:	2200      	movs	r2, #0
 80020f2:	e006      	b.n	8002102 <minver+0x24a>
 80020f4:	f640 3030 	movw	r0, #2864	; 0xb30
 80020f8:	2201      	movs	r2, #1
 80020fa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020fe:	ed80 1a00 	vstr	s2, [r0]
 8002102:	4610      	mov	r0, r2
 8002104:	f50d 6dfc 	add.w	sp, sp, #2016	; 0x7e0
 8002108:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800210c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800210e:	bf00      	nop
 8002110:	00000000 	.word	0x00000000

08002114 <verify_benchmark>:
 8002114:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002118:	4770      	bx	lr

0800211a <initialise_benchmark>:
 800211a:	4770      	bx	lr

0800211c <benchmark>:
 800211c:	b5d0      	push	{r4, r6, r7, lr}
 800211e:	af02      	add	r7, sp, #8
 8002120:	f240 0414 	movw	r4, #20
 8002124:	f640 3358 	movw	r3, #2904	; 0xb58
 8002128:	ed9f 0a5a 	vldr	s0, [pc, #360]	; 8002294 <benchmark+0x178>
 800212c:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8002130:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002134:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
 8002138:	f103 0c0c 	add.w	ip, r3, #12
 800213c:	e883 0007 	stmia.w	r3, {r0, r1, r2}
 8002140:	f104 020c 	add.w	r2, r4, #12
 8002144:	3318      	adds	r3, #24
 8002146:	ca07      	ldmia	r2, {r0, r1, r2}
 8002148:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
 800214c:	f104 0218 	add.w	r2, r4, #24
 8002150:	ca07      	ldmia	r2, {r0, r1, r2}
 8002152:	c307      	stmia	r3!, {r0, r1, r2}
 8002154:	2003      	movs	r0, #3
 8002156:	2103      	movs	r1, #3
 8002158:	f7ff feae 	bl	8001eb8 <minver>
 800215c:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
 8002160:	f640 3334 	movw	r3, #2868	; 0xb34
 8002164:	ed9f 0a4c 	vldr	s0, [pc, #304]	; 8002298 <benchmark+0x17c>
 8002168:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800216c:	f103 0c0c 	add.w	ip, r3, #12
 8002170:	e883 0007 	stmia.w	r3, {r0, r1, r2}
 8002174:	f104 020c 	add.w	r2, r4, #12
 8002178:	3318      	adds	r3, #24
 800217a:	eef0 1a40 	vmov.f32	s3, s0
 800217e:	eef0 2a40 	vmov.f32	s5, s0
 8002182:	eef0 6a40 	vmov.f32	s13, s0
 8002186:	eef0 7a40 	vmov.f32	s15, s0
 800218a:	ca07      	ldmia	r2, {r0, r1, r2}
 800218c:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
 8002190:	f104 0218 	add.w	r2, r4, #24
 8002194:	ca07      	ldmia	r2, {r0, r1, r2}
 8002196:	c307      	stmia	r3!, {r0, r1, r2}
 8002198:	f640 300c 	movw	r0, #2828	; 0xb0c
 800219c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021a0:	ed94 5a00 	vldr	s10, [r4]
 80021a4:	ed94 6a01 	vldr	s12, [r4, #4]
 80021a8:	ed94 7a02 	vldr	s14, [r4, #8]
 80021ac:	ed90 2a00 	vldr	s4, [r0]
 80021b0:	ed90 3a01 	vldr	s6, [r0, #4]
 80021b4:	ed90 1a02 	vldr	s2, [r0, #8]
 80021b8:	ed90 4a03 	vldr	s8, [r0, #12]
 80021bc:	edd0 0a04 	vldr	s1, [r0, #16]
 80021c0:	edd0 4a05 	vldr	s9, [r0, #20]
 80021c4:	edd0 3a06 	vldr	s7, [r0, #24]
 80021c8:	edd0 5a07 	vldr	s11, [r0, #28]
 80021cc:	ee45 1a02 	vmla.f32	s3, s10, s4
 80021d0:	ee45 2a03 	vmla.f32	s5, s10, s6
 80021d4:	ee45 6a01 	vmla.f32	s13, s10, s2
 80021d8:	ed90 5a08 	vldr	s10, [r0, #32]
 80021dc:	f640 307c 	movw	r0, #2940	; 0xb7c
 80021e0:	ee46 1a04 	vmla.f32	s3, s12, s8
 80021e4:	ee46 2a20 	vmla.f32	s5, s12, s1
 80021e8:	ee46 6a24 	vmla.f32	s13, s12, s9
 80021ec:	ed94 6a03 	vldr	s12, [r4, #12]
 80021f0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021f4:	ee47 1a23 	vmla.f32	s3, s14, s7
 80021f8:	ee47 2a25 	vmla.f32	s5, s14, s11
 80021fc:	edc0 1a00 	vstr	s3, [r0]
 8002200:	edd4 1a05 	vldr	s3, [r4, #20]
 8002204:	edc0 2a01 	vstr	s5, [r0, #4]
 8002208:	eef0 2a40 	vmov.f32	s5, s0
 800220c:	ee47 6a05 	vmla.f32	s13, s14, s10
 8002210:	ed94 7a04 	vldr	s14, [r4, #16]
 8002214:	edc0 6a02 	vstr	s13, [r0, #8]
 8002218:	eef0 6a40 	vmov.f32	s13, s0
 800221c:	ee46 2a02 	vmla.f32	s5, s12, s4
 8002220:	ee46 7a01 	vmla.f32	s15, s12, s2
 8002224:	ee46 6a03 	vmla.f32	s13, s12, s6
 8002228:	ed94 6a06 	vldr	s12, [r4, #24]
 800222c:	ee47 2a04 	vmla.f32	s5, s14, s8
 8002230:	ee47 6a20 	vmla.f32	s13, s14, s1
 8002234:	ee47 7a24 	vmla.f32	s15, s14, s9
 8002238:	ed94 7a07 	vldr	s14, [r4, #28]
 800223c:	ee41 2aa3 	vmla.f32	s5, s3, s7
 8002240:	ee41 6aa5 	vmla.f32	s13, s3, s11
 8002244:	ee41 7a85 	vmla.f32	s15, s3, s10
 8002248:	edd4 1a08 	vldr	s3, [r4, #32]
 800224c:	edc0 2a03 	vstr	s5, [r0, #12]
 8002250:	eef0 2a40 	vmov.f32	s5, s0
 8002254:	edc0 6a04 	vstr	s13, [r0, #16]
 8002258:	edc0 7a05 	vstr	s15, [r0, #20]
 800225c:	ee46 2a02 	vmla.f32	s5, s12, s4
 8002260:	eeb0 2a40 	vmov.f32	s4, s0
 8002264:	ee06 0a01 	vmla.f32	s0, s12, s2
 8002268:	ee06 2a03 	vmla.f32	s4, s12, s6
 800226c:	ee47 2a04 	vmla.f32	s5, s14, s8
 8002270:	ee07 0a24 	vmla.f32	s0, s14, s9
 8002274:	ee07 2a20 	vmla.f32	s4, s14, s1
 8002278:	ee41 2aa3 	vmla.f32	s5, s3, s7
 800227c:	ee01 0a85 	vmla.f32	s0, s3, s10
 8002280:	ee01 2aa5 	vmla.f32	s4, s3, s11
 8002284:	edc0 2a06 	vstr	s5, [r0, #24]
 8002288:	ed80 2a07 	vstr	s4, [r0, #28]
 800228c:	ed80 0a08 	vstr	s0, [r0, #32]
 8002290:	2000      	movs	r0, #0
 8002292:	bdd0      	pop	{r4, r6, r7, pc}
 8002294:	358637bd 	.word	0x358637bd
 8002298:	00000000 	.word	0x00000000

0800229c <__io_putchar>:
 800229c:	b580      	push	{r7, lr}
 800229e:	466f      	mov	r7, sp
 80022a0:	b082      	sub	sp, #8
 80022a2:	9001      	str	r0, [sp, #4]
 80022a4:	f640 2008 	movw	r0, #2568	; 0xa08
 80022a8:	a901      	add	r1, sp, #4
 80022aa:	2201      	movs	r2, #1
 80022ac:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80022b0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022b4:	f7ff fd11 	bl	8001cda <HAL_UART_Transmit>
 80022b8:	9801      	ldr	r0, [sp, #4]
 80022ba:	b002      	add	sp, #8
 80022bc:	bd80      	pop	{r7, pc}

080022be <main>:
 80022be:	b5b0      	push	{r4, r5, r7, lr}
 80022c0:	af02      	add	r7, sp, #8
 80022c2:	f640 2108 	movw	r1, #2568	; 0xa08
 80022c6:	f643 0000 	movw	r0, #14336	; 0x3800
 80022ca:	220c      	movs	r2, #12
 80022cc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80022d0:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80022d4:	6008      	str	r0, [r1, #0]
 80022d6:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80022da:	6048      	str	r0, [r1, #4]
 80022dc:	2000      	movs	r0, #0
 80022de:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80022e2:	6108      	str	r0, [r1, #16]
 80022e4:	6248      	str	r0, [r1, #36]	; 0x24
 80022e6:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80022ea:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80022ee:	2000      	movs	r0, #0
 80022f0:	f7ff fd88 	bl	8001e04 <BSP_COM_Init>
 80022f4:	f7ff ff11 	bl	800211a <initialise_benchmark>
 80022f8:	f247 20b0 	movw	r0, #29360	; 0x72b0
 80022fc:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002300:	f000 f948 	bl	8002594 <printf>
 8002304:	f247 3059 	movw	r0, #29529	; 0x7359
 8002308:	f6c0 0000 	movt	r0, #2048	; 0x800
 800230c:	f000 f9a4 	bl	8002658 <puts>
 8002310:	f7fe feea 	bl	80010e8 <HAL_Init>
 8002314:	f7fe ff00 	bl	8001118 <HAL_GetTick>
 8002318:	4604      	mov	r4, r0
 800231a:	f7ff feff 	bl	800211c <benchmark>
 800231e:	4605      	mov	r5, r0
 8002320:	f7fe fefa 	bl	8001118 <HAL_GetTick>
 8002324:	1b04      	subs	r4, r0, r4
 8002326:	4628      	mov	r0, r5
 8002328:	f7ff fef4 	bl	8002114 <verify_benchmark>
 800232c:	1c41      	adds	r1, r0, #1
 800232e:	d006      	beq.n	800233e <main+0x80>
 8002330:	2801      	cmp	r0, #1
 8002332:	d109      	bne.n	8002348 <main+0x8a>
 8002334:	f247 20c5 	movw	r0, #29381	; 0x72c5
 8002338:	f6c0 0000 	movt	r0, #2048	; 0x800
 800233c:	e008      	b.n	8002350 <main+0x92>
 800233e:	f247 20e9 	movw	r0, #29417	; 0x72e9
 8002342:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002346:	e003      	b.n	8002350 <main+0x92>
 8002348:	f247 301e 	movw	r0, #29470	; 0x731e
 800234c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002350:	4621      	mov	r1, r4
 8002352:	f000 f91f 	bl	8002594 <printf>
 8002356:	2000      	movs	r0, #0
 8002358:	bdb0      	pop	{r4, r5, r7, pc}

0800235a <SysTick_Handler>:
 800235a:	b580      	push	{r7, lr}
 800235c:	466f      	mov	r7, sp
 800235e:	f7fe fed3 	bl	8001108 <HAL_IncTick>
 8002362:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002366:	f7fe bf2d 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

0800236a <_read>:
 800236a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800236c:	af03      	add	r7, sp, #12
 800236e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002372:	4614      	mov	r4, r2
 8002374:	460d      	mov	r5, r1
 8002376:	2c01      	cmp	r4, #1
 8002378:	db06      	blt.n	8002388 <_read+0x1e>
 800237a:	4626      	mov	r6, r4
 800237c:	f3af 8000 	nop.w
 8002380:	f805 0b01 	strb.w	r0, [r5], #1
 8002384:	3e01      	subs	r6, #1
 8002386:	d1f9      	bne.n	800237c <_read+0x12>
 8002388:	4620      	mov	r0, r4
 800238a:	f85d bb04 	ldr.w	fp, [sp], #4
 800238e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002390 <_write>:
 8002390:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002392:	af03      	add	r7, sp, #12
 8002394:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002398:	4614      	mov	r4, r2
 800239a:	460d      	mov	r5, r1
 800239c:	2c01      	cmp	r4, #1
 800239e:	db06      	blt.n	80023ae <_write+0x1e>
 80023a0:	4626      	mov	r6, r4
 80023a2:	f815 0b01 	ldrb.w	r0, [r5], #1
 80023a6:	f7ff ff79 	bl	800229c <__io_putchar>
 80023aa:	3e01      	subs	r6, #1
 80023ac:	d1f9      	bne.n	80023a2 <_write+0x12>
 80023ae:	4620      	mov	r0, r4
 80023b0:	f85d bb04 	ldr.w	fp, [sp], #4
 80023b4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080023b6 <_sbrk>:
 80023b6:	f640 228c 	movw	r2, #2700	; 0xa8c
 80023ba:	4601      	mov	r1, r0
 80023bc:	466b      	mov	r3, sp
 80023be:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80023c2:	6810      	ldr	r0, [r2, #0]
 80023c4:	2800      	cmp	r0, #0
 80023c6:	bf02      	ittt	eq
 80023c8:	f640 30f0 	movweq	r0, #3056	; 0xbf0
 80023cc:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80023d0:	6010      	streq	r0, [r2, #0]
 80023d2:	4401      	add	r1, r0
 80023d4:	4299      	cmp	r1, r3
 80023d6:	bf9c      	itt	ls
 80023d8:	6011      	strls	r1, [r2, #0]
 80023da:	4770      	bxls	lr
 80023dc:	b580      	push	{r7, lr}
 80023de:	466f      	mov	r7, sp
 80023e0:	f000 f864 	bl	80024ac <__errno>
 80023e4:	210c      	movs	r1, #12
 80023e6:	6001      	str	r1, [r0, #0]
 80023e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80023ec:	bd80      	pop	{r7, pc}

080023ee <_close>:
 80023ee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80023f2:	4770      	bx	lr

080023f4 <_fstat>:
 80023f4:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80023f8:	6048      	str	r0, [r1, #4]
 80023fa:	2000      	movs	r0, #0
 80023fc:	4770      	bx	lr

080023fe <_isatty>:
 80023fe:	2001      	movs	r0, #1
 8002400:	4770      	bx	lr

08002402 <_lseek>:
 8002402:	2000      	movs	r0, #0
 8002404:	4770      	bx	lr

08002406 <SystemInit>:
 8002406:	f64e 5088 	movw	r0, #60808	; 0xed88
 800240a:	f04f 0c00 	mov.w	ip, #0
 800240e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002412:	6801      	ldr	r1, [r0, #0]
 8002414:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002418:	6001      	str	r1, [r0, #0]
 800241a:	f241 0100 	movw	r1, #4096	; 0x1000
 800241e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002422:	680a      	ldr	r2, [r1, #0]
 8002424:	f042 0201 	orr.w	r2, r2, #1
 8002428:	600a      	str	r2, [r1, #0]
 800242a:	f8c1 c008 	str.w	ip, [r1, #8]
 800242e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002432:	680b      	ldr	r3, [r1, #0]
 8002434:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002438:	401a      	ands	r2, r3
 800243a:	600a      	str	r2, [r1, #0]
 800243c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002440:	60ca      	str	r2, [r1, #12]
 8002442:	680a      	ldr	r2, [r1, #0]
 8002444:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002448:	600a      	str	r2, [r1, #0]
 800244a:	f8c1 c018 	str.w	ip, [r1, #24]
 800244e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002452:	f840 1c80 	str.w	r1, [r0, #-128]
 8002456:	4770      	bx	lr

08002458 <Reset_Handler>:
 8002458:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002490 <LoopForever+0x2>
 800245c:	2100      	movs	r1, #0
 800245e:	e003      	b.n	8002468 <LoopCopyDataInit>

08002460 <CopyDataInit>:
 8002460:	4b0c      	ldr	r3, [pc, #48]	; (8002494 <LoopForever+0x6>)
 8002462:	585b      	ldr	r3, [r3, r1]
 8002464:	5043      	str	r3, [r0, r1]
 8002466:	3104      	adds	r1, #4

08002468 <LoopCopyDataInit>:
 8002468:	480b      	ldr	r0, [pc, #44]	; (8002498 <LoopForever+0xa>)
 800246a:	4b0c      	ldr	r3, [pc, #48]	; (800249c <LoopForever+0xe>)
 800246c:	1842      	adds	r2, r0, r1
 800246e:	429a      	cmp	r2, r3
 8002470:	d3f6      	bcc.n	8002460 <CopyDataInit>
 8002472:	4a0b      	ldr	r2, [pc, #44]	; (80024a0 <LoopForever+0x12>)
 8002474:	e002      	b.n	800247c <LoopFillZerobss>

08002476 <FillZerobss>:
 8002476:	2300      	movs	r3, #0
 8002478:	f842 3b04 	str.w	r3, [r2], #4

0800247c <LoopFillZerobss>:
 800247c:	4b09      	ldr	r3, [pc, #36]	; (80024a4 <LoopForever+0x16>)
 800247e:	429a      	cmp	r2, r3
 8002480:	d3f9      	bcc.n	8002476 <FillZerobss>
 8002482:	f7ff ffc0 	bl	8002406 <SystemInit>
 8002486:	f000 f817 	bl	80024b8 <__libc_init_array>
 800248a:	f7ff ff18 	bl	80022be <main>

0800248e <LoopForever>:
 800248e:	e7fe      	b.n	800248e <LoopForever>
 8002490:	20018000 	.word	0x20018000
 8002494:	08007600 	.word	0x08007600
 8002498:	20000000 	.word	0x20000000
 800249c:	200009e8 	.word	0x200009e8
 80024a0:	200009e8 	.word	0x200009e8
 80024a4:	20000bec 	.word	0x20000bec

080024a8 <ADC1_2_IRQHandler>:
 80024a8:	e7fe      	b.n	80024a8 <ADC1_2_IRQHandler>
	...

080024ac <__errno>:
 80024ac:	4b01      	ldr	r3, [pc, #4]	; (80024b4 <__errno+0x8>)
 80024ae:	6818      	ldr	r0, [r3, #0]
 80024b0:	4770      	bx	lr
 80024b2:	bf00      	nop
 80024b4:	2000003c 	.word	0x2000003c

080024b8 <__libc_init_array>:
 80024b8:	b570      	push	{r4, r5, r6, lr}
 80024ba:	4e0d      	ldr	r6, [pc, #52]	; (80024f0 <__libc_init_array+0x38>)
 80024bc:	4d0d      	ldr	r5, [pc, #52]	; (80024f4 <__libc_init_array+0x3c>)
 80024be:	1b76      	subs	r6, r6, r5
 80024c0:	10b6      	asrs	r6, r6, #2
 80024c2:	d006      	beq.n	80024d2 <__libc_init_array+0x1a>
 80024c4:	2400      	movs	r4, #0
 80024c6:	3401      	adds	r4, #1
 80024c8:	f855 3b04 	ldr.w	r3, [r5], #4
 80024cc:	4798      	blx	r3
 80024ce:	42a6      	cmp	r6, r4
 80024d0:	d1f9      	bne.n	80024c6 <__libc_init_array+0xe>
 80024d2:	4e09      	ldr	r6, [pc, #36]	; (80024f8 <__libc_init_array+0x40>)
 80024d4:	4d09      	ldr	r5, [pc, #36]	; (80024fc <__libc_init_array+0x44>)
 80024d6:	1b76      	subs	r6, r6, r5
 80024d8:	f004 fea8 	bl	800722c <_init>
 80024dc:	10b6      	asrs	r6, r6, #2
 80024de:	d006      	beq.n	80024ee <__libc_init_array+0x36>
 80024e0:	2400      	movs	r4, #0
 80024e2:	3401      	adds	r4, #1
 80024e4:	f855 3b04 	ldr.w	r3, [r5], #4
 80024e8:	4798      	blx	r3
 80024ea:	42a6      	cmp	r6, r4
 80024ec:	d1f9      	bne.n	80024e2 <__libc_init_array+0x2a>
 80024ee:	bd70      	pop	{r4, r5, r6, pc}
 80024f0:	080075f0 	.word	0x080075f0
 80024f4:	080075f0 	.word	0x080075f0
 80024f8:	080075f8 	.word	0x080075f8
 80024fc:	080075f0 	.word	0x080075f0

08002500 <memset>:
 8002500:	b4f0      	push	{r4, r5, r6, r7}
 8002502:	0786      	lsls	r6, r0, #30
 8002504:	d043      	beq.n	800258e <memset+0x8e>
 8002506:	1e54      	subs	r4, r2, #1
 8002508:	2a00      	cmp	r2, #0
 800250a:	d03e      	beq.n	800258a <memset+0x8a>
 800250c:	b2ca      	uxtb	r2, r1
 800250e:	4603      	mov	r3, r0
 8002510:	e002      	b.n	8002518 <memset+0x18>
 8002512:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002516:	d338      	bcc.n	800258a <memset+0x8a>
 8002518:	f803 2b01 	strb.w	r2, [r3], #1
 800251c:	079d      	lsls	r5, r3, #30
 800251e:	d1f8      	bne.n	8002512 <memset+0x12>
 8002520:	2c03      	cmp	r4, #3
 8002522:	d92b      	bls.n	800257c <memset+0x7c>
 8002524:	b2cd      	uxtb	r5, r1
 8002526:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800252a:	2c0f      	cmp	r4, #15
 800252c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002530:	d916      	bls.n	8002560 <memset+0x60>
 8002532:	f1a4 0710 	sub.w	r7, r4, #16
 8002536:	093f      	lsrs	r7, r7, #4
 8002538:	f103 0620 	add.w	r6, r3, #32
 800253c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002540:	f103 0210 	add.w	r2, r3, #16
 8002544:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002548:	e942 5502 	strd	r5, r5, [r2, #-8]
 800254c:	3210      	adds	r2, #16
 800254e:	42b2      	cmp	r2, r6
 8002550:	d1f8      	bne.n	8002544 <memset+0x44>
 8002552:	f004 040f 	and.w	r4, r4, #15
 8002556:	3701      	adds	r7, #1
 8002558:	2c03      	cmp	r4, #3
 800255a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800255e:	d90d      	bls.n	800257c <memset+0x7c>
 8002560:	461e      	mov	r6, r3
 8002562:	4622      	mov	r2, r4
 8002564:	3a04      	subs	r2, #4
 8002566:	2a03      	cmp	r2, #3
 8002568:	f846 5b04 	str.w	r5, [r6], #4
 800256c:	d8fa      	bhi.n	8002564 <memset+0x64>
 800256e:	1f22      	subs	r2, r4, #4
 8002570:	f022 0203 	bic.w	r2, r2, #3
 8002574:	3204      	adds	r2, #4
 8002576:	4413      	add	r3, r2
 8002578:	f004 0403 	and.w	r4, r4, #3
 800257c:	b12c      	cbz	r4, 800258a <memset+0x8a>
 800257e:	b2c9      	uxtb	r1, r1
 8002580:	441c      	add	r4, r3
 8002582:	f803 1b01 	strb.w	r1, [r3], #1
 8002586:	429c      	cmp	r4, r3
 8002588:	d1fb      	bne.n	8002582 <memset+0x82>
 800258a:	bcf0      	pop	{r4, r5, r6, r7}
 800258c:	4770      	bx	lr
 800258e:	4614      	mov	r4, r2
 8002590:	4603      	mov	r3, r0
 8002592:	e7c5      	b.n	8002520 <memset+0x20>

08002594 <printf>:
 8002594:	b40f      	push	{r0, r1, r2, r3}
 8002596:	b500      	push	{lr}
 8002598:	4907      	ldr	r1, [pc, #28]	; (80025b8 <printf+0x24>)
 800259a:	b083      	sub	sp, #12
 800259c:	ab04      	add	r3, sp, #16
 800259e:	6808      	ldr	r0, [r1, #0]
 80025a0:	f853 2b04 	ldr.w	r2, [r3], #4
 80025a4:	6881      	ldr	r1, [r0, #8]
 80025a6:	9301      	str	r3, [sp, #4]
 80025a8:	f000 f85e 	bl	8002668 <_vfprintf_r>
 80025ac:	b003      	add	sp, #12
 80025ae:	f85d eb04 	ldr.w	lr, [sp], #4
 80025b2:	b004      	add	sp, #16
 80025b4:	4770      	bx	lr
 80025b6:	bf00      	nop
 80025b8:	2000003c 	.word	0x2000003c

080025bc <_puts_r>:
 80025bc:	b570      	push	{r4, r5, r6, lr}
 80025be:	4605      	mov	r5, r0
 80025c0:	b088      	sub	sp, #32
 80025c2:	4608      	mov	r0, r1
 80025c4:	460c      	mov	r4, r1
 80025c6:	f7fe f83b 	bl	8000640 <strlen>
 80025ca:	4a22      	ldr	r2, [pc, #136]	; (8002654 <_puts_r+0x98>)
 80025cc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80025ce:	9404      	str	r4, [sp, #16]
 80025d0:	2601      	movs	r6, #1
 80025d2:	1c44      	adds	r4, r0, #1
 80025d4:	a904      	add	r1, sp, #16
 80025d6:	9206      	str	r2, [sp, #24]
 80025d8:	2202      	movs	r2, #2
 80025da:	9403      	str	r4, [sp, #12]
 80025dc:	9005      	str	r0, [sp, #20]
 80025de:	68ac      	ldr	r4, [r5, #8]
 80025e0:	9607      	str	r6, [sp, #28]
 80025e2:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80025e6:	b31b      	cbz	r3, 8002630 <_puts_r+0x74>
 80025e8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80025ea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80025ee:	07ce      	lsls	r6, r1, #31
 80025f0:	b29a      	uxth	r2, r3
 80025f2:	d401      	bmi.n	80025f8 <_puts_r+0x3c>
 80025f4:	0590      	lsls	r0, r2, #22
 80025f6:	d525      	bpl.n	8002644 <_puts_r+0x88>
 80025f8:	0491      	lsls	r1, r2, #18
 80025fa:	d406      	bmi.n	800260a <_puts_r+0x4e>
 80025fc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80025fe:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002602:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002606:	81a3      	strh	r3, [r4, #12]
 8002608:	6662      	str	r2, [r4, #100]	; 0x64
 800260a:	4628      	mov	r0, r5
 800260c:	aa01      	add	r2, sp, #4
 800260e:	4621      	mov	r1, r4
 8002610:	f003 f85e 	bl	80056d0 <__sfvwrite_r>
 8002614:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002616:	2800      	cmp	r0, #0
 8002618:	bf0c      	ite	eq
 800261a:	250a      	moveq	r5, #10
 800261c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002620:	07da      	lsls	r2, r3, #31
 8002622:	d402      	bmi.n	800262a <_puts_r+0x6e>
 8002624:	89a3      	ldrh	r3, [r4, #12]
 8002626:	059b      	lsls	r3, r3, #22
 8002628:	d506      	bpl.n	8002638 <_puts_r+0x7c>
 800262a:	4628      	mov	r0, r5
 800262c:	b008      	add	sp, #32
 800262e:	bd70      	pop	{r4, r5, r6, pc}
 8002630:	4628      	mov	r0, r5
 8002632:	f002 feb7 	bl	80053a4 <__sinit>
 8002636:	e7d7      	b.n	80025e8 <_puts_r+0x2c>
 8002638:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800263a:	f003 fa05 	bl	8005a48 <__retarget_lock_release_recursive>
 800263e:	4628      	mov	r0, r5
 8002640:	b008      	add	sp, #32
 8002642:	bd70      	pop	{r4, r5, r6, pc}
 8002644:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002646:	f003 f9fd 	bl	8005a44 <__retarget_lock_acquire_recursive>
 800264a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800264e:	b29a      	uxth	r2, r3
 8002650:	e7d2      	b.n	80025f8 <_puts_r+0x3c>
 8002652:	bf00      	nop
 8002654:	08007360 	.word	0x08007360

08002658 <puts>:
 8002658:	4b02      	ldr	r3, [pc, #8]	; (8002664 <puts+0xc>)
 800265a:	4601      	mov	r1, r0
 800265c:	6818      	ldr	r0, [r3, #0]
 800265e:	f7ff bfad 	b.w	80025bc <_puts_r>
 8002662:	bf00      	nop
 8002664:	2000003c 	.word	0x2000003c

08002668 <_vfprintf_r>:
 8002668:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800266c:	b0d7      	sub	sp, #348	; 0x15c
 800266e:	461c      	mov	r4, r3
 8002670:	4689      	mov	r9, r1
 8002672:	4617      	mov	r7, r2
 8002674:	4605      	mov	r5, r0
 8002676:	9003      	str	r0, [sp, #12]
 8002678:	f003 f9d2 	bl	8005a20 <_localeconv_r>
 800267c:	6803      	ldr	r3, [r0, #0]
 800267e:	9316      	str	r3, [sp, #88]	; 0x58
 8002680:	4618      	mov	r0, r3
 8002682:	f7fd ffdd 	bl	8000640 <strlen>
 8002686:	9408      	str	r4, [sp, #32]
 8002688:	9015      	str	r0, [sp, #84]	; 0x54
 800268a:	b11d      	cbz	r5, 8002694 <_vfprintf_r+0x2c>
 800268c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800268e:	2b00      	cmp	r3, #0
 8002690:	f000 8107 	beq.w	80028a2 <_vfprintf_r+0x23a>
 8002694:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002698:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800269c:	07c8      	lsls	r0, r1, #31
 800269e:	b293      	uxth	r3, r2
 80026a0:	d402      	bmi.n	80026a8 <_vfprintf_r+0x40>
 80026a2:	0599      	lsls	r1, r3, #22
 80026a4:	f140 811f 	bpl.w	80028e6 <_vfprintf_r+0x27e>
 80026a8:	049e      	lsls	r6, r3, #18
 80026aa:	d40a      	bmi.n	80026c2 <_vfprintf_r+0x5a>
 80026ac:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80026b0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80026b4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80026b8:	f8a9 300c 	strh.w	r3, [r9, #12]
 80026bc:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80026c0:	b29b      	uxth	r3, r3
 80026c2:	071d      	lsls	r5, r3, #28
 80026c4:	f140 80b2 	bpl.w	800282c <_vfprintf_r+0x1c4>
 80026c8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80026cc:	2a00      	cmp	r2, #0
 80026ce:	f000 80ad 	beq.w	800282c <_vfprintf_r+0x1c4>
 80026d2:	f003 021a 	and.w	r2, r3, #26
 80026d6:	2a0a      	cmp	r2, #10
 80026d8:	f000 80c9 	beq.w	800286e <_vfprintf_r+0x206>
 80026dc:	2300      	movs	r3, #0
 80026de:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80028f8 <_vfprintf_r+0x290>
 80026e2:	9310      	str	r3, [sp, #64]	; 0x40
 80026e4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80026e8:	9317      	str	r3, [sp, #92]	; 0x5c
 80026ea:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80026ee:	931b      	str	r3, [sp, #108]	; 0x6c
 80026f0:	9318      	str	r3, [sp, #96]	; 0x60
 80026f2:	9305      	str	r3, [sp, #20]
 80026f4:	ab2d      	add	r3, sp, #180	; 0xb4
 80026f6:	932a      	str	r3, [sp, #168]	; 0xa8
 80026f8:	469b      	mov	fp, r3
 80026fa:	783b      	ldrb	r3, [r7, #0]
 80026fc:	f8cd 901c 	str.w	r9, [sp, #28]
 8002700:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002704:	2b00      	cmp	r3, #0
 8002706:	f000 8259 	beq.w	8002bbc <_vfprintf_r+0x554>
 800270a:	2b25      	cmp	r3, #37	; 0x25
 800270c:	463c      	mov	r4, r7
 800270e:	d102      	bne.n	8002716 <_vfprintf_r+0xae>
 8002710:	e01d      	b.n	800274e <_vfprintf_r+0xe6>
 8002712:	2b25      	cmp	r3, #37	; 0x25
 8002714:	d003      	beq.n	800271e <_vfprintf_r+0xb6>
 8002716:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800271a:	2b00      	cmp	r3, #0
 800271c:	d1f9      	bne.n	8002712 <_vfprintf_r+0xaa>
 800271e:	1be5      	subs	r5, r4, r7
 8002720:	b18d      	cbz	r5, 8002746 <_vfprintf_r+0xde>
 8002722:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002726:	3301      	adds	r3, #1
 8002728:	442a      	add	r2, r5
 800272a:	2b07      	cmp	r3, #7
 800272c:	f8cb 7000 	str.w	r7, [fp]
 8002730:	f8cb 5004 	str.w	r5, [fp, #4]
 8002734:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002738:	f300 80ca 	bgt.w	80028d0 <_vfprintf_r+0x268>
 800273c:	f10b 0b08 	add.w	fp, fp, #8
 8002740:	9b05      	ldr	r3, [sp, #20]
 8002742:	442b      	add	r3, r5
 8002744:	9305      	str	r3, [sp, #20]
 8002746:	7823      	ldrb	r3, [r4, #0]
 8002748:	2b00      	cmp	r3, #0
 800274a:	f000 8237 	beq.w	8002bbc <_vfprintf_r+0x554>
 800274e:	2300      	movs	r3, #0
 8002750:	7866      	ldrb	r6, [r4, #1]
 8002752:	9306      	str	r3, [sp, #24]
 8002754:	4698      	mov	r8, r3
 8002756:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800275a:	f104 0a01 	add.w	sl, r4, #1
 800275e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002762:	252b      	movs	r5, #43	; 0x2b
 8002764:	f10a 0a01 	add.w	sl, sl, #1
 8002768:	f1a6 0320 	sub.w	r3, r6, #32
 800276c:	2b5a      	cmp	r3, #90	; 0x5a
 800276e:	f200 842a 	bhi.w	8002fc6 <_vfprintf_r+0x95e>
 8002772:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002776:	03aa      	.short	0x03aa
 8002778:	04280428 	.word	0x04280428
 800277c:	0428029c 	.word	0x0428029c
 8002780:	04280428 	.word	0x04280428
 8002784:	042802a7 	.word	0x042802a7
 8002788:	02c60428 	.word	0x02c60428
 800278c:	042802d2 	.word	0x042802d2
 8002790:	02dc02d7 	.word	0x02dc02d7
 8002794:	02f60428 	.word	0x02f60428
 8002798:	026d026d 	.word	0x026d026d
 800279c:	026d026d 	.word	0x026d026d
 80027a0:	026d026d 	.word	0x026d026d
 80027a4:	026d026d 	.word	0x026d026d
 80027a8:	0428026d 	.word	0x0428026d
 80027ac:	04280428 	.word	0x04280428
 80027b0:	04280428 	.word	0x04280428
 80027b4:	04280428 	.word	0x04280428
 80027b8:	042802fb 	.word	0x042802fb
 80027bc:	03f3033c 	.word	0x03f3033c
 80027c0:	02fb02fb 	.word	0x02fb02fb
 80027c4:	042802fb 	.word	0x042802fb
 80027c8:	04280428 	.word	0x04280428
 80027cc:	03ee0428 	.word	0x03ee0428
 80027d0:	04280428 	.word	0x04280428
 80027d4:	0428009a 	.word	0x0428009a
 80027d8:	04280428 	.word	0x04280428
 80027dc:	04280350 	.word	0x04280350
 80027e0:	04280379 	.word	0x04280379
 80027e4:	03900428 	.word	0x03900428
 80027e8:	04280428 	.word	0x04280428
 80027ec:	04280428 	.word	0x04280428
 80027f0:	04280428 	.word	0x04280428
 80027f4:	04280428 	.word	0x04280428
 80027f8:	042802fb 	.word	0x042802fb
 80027fc:	00c5033c 	.word	0x00c5033c
 8002800:	02fb02fb 	.word	0x02fb02fb
 8002804:	03d102fb 	.word	0x03d102fb
 8002808:	007000c5 	.word	0x007000c5
 800280c:	03b50428 	.word	0x03b50428
 8002810:	03c20428 	.word	0x03c20428
 8002814:	03de009c 	.word	0x03de009c
 8002818:	04280070 	.word	0x04280070
 800281c:	00720350 	.word	0x00720350
 8002820:	0428022c 	.word	0x0428022c
 8002824:	027c0428 	.word	0x027c0428
 8002828:	00720428 	.word	0x00720428
 800282c:	4649      	mov	r1, r9
 800282e:	9803      	ldr	r0, [sp, #12]
 8002830:	f001 fc9a 	bl	8004168 <__swsetup_r>
 8002834:	b1a0      	cbz	r0, 8002860 <_vfprintf_r+0x1f8>
 8002836:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800283a:	07d8      	lsls	r0, r3, #31
 800283c:	d404      	bmi.n	8002848 <_vfprintf_r+0x1e0>
 800283e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002842:	0599      	lsls	r1, r3, #22
 8002844:	f140 83b7 	bpl.w	8002fb6 <_vfprintf_r+0x94e>
 8002848:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800284c:	9305      	str	r3, [sp, #20]
 800284e:	9805      	ldr	r0, [sp, #20]
 8002850:	b057      	add	sp, #348	; 0x15c
 8002852:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002856:	f048 0820 	orr.w	r8, r8, #32
 800285a:	f89a 6000 	ldrb.w	r6, [sl]
 800285e:	e781      	b.n	8002764 <_vfprintf_r+0xfc>
 8002860:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002864:	f003 021a 	and.w	r2, r3, #26
 8002868:	2a0a      	cmp	r2, #10
 800286a:	f47f af37 	bne.w	80026dc <_vfprintf_r+0x74>
 800286e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002872:	2a00      	cmp	r2, #0
 8002874:	f6ff af32 	blt.w	80026dc <_vfprintf_r+0x74>
 8002878:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800287c:	07d2      	lsls	r2, r2, #31
 800287e:	d405      	bmi.n	800288c <_vfprintf_r+0x224>
 8002880:	059b      	lsls	r3, r3, #22
 8002882:	d403      	bmi.n	800288c <_vfprintf_r+0x224>
 8002884:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002888:	f003 f8de 	bl	8005a48 <__retarget_lock_release_recursive>
 800288c:	4623      	mov	r3, r4
 800288e:	463a      	mov	r2, r7
 8002890:	4649      	mov	r1, r9
 8002892:	9803      	ldr	r0, [sp, #12]
 8002894:	f001 fc26 	bl	80040e4 <__sbprintf>
 8002898:	9005      	str	r0, [sp, #20]
 800289a:	9805      	ldr	r0, [sp, #20]
 800289c:	b057      	add	sp, #348	; 0x15c
 800289e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80028a2:	9803      	ldr	r0, [sp, #12]
 80028a4:	f002 fd7e 	bl	80053a4 <__sinit>
 80028a8:	e6f4      	b.n	8002694 <_vfprintf_r+0x2c>
 80028aa:	f048 0810 	orr.w	r8, r8, #16
 80028ae:	f018 0f20 	tst.w	r8, #32
 80028b2:	f000 836c 	beq.w	8002f8e <_vfprintf_r+0x926>
 80028b6:	9c08      	ldr	r4, [sp, #32]
 80028b8:	3407      	adds	r4, #7
 80028ba:	f024 0307 	bic.w	r3, r4, #7
 80028be:	e9d3 4500 	ldrd	r4, r5, [r3]
 80028c2:	f103 0208 	add.w	r2, r3, #8
 80028c6:	9208      	str	r2, [sp, #32]
 80028c8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80028cc:	2200      	movs	r2, #0
 80028ce:	e18c      	b.n	8002bea <_vfprintf_r+0x582>
 80028d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80028d2:	9907      	ldr	r1, [sp, #28]
 80028d4:	9803      	ldr	r0, [sp, #12]
 80028d6:	f004 f9f5 	bl	8006cc4 <__sprint_r>
 80028da:	2800      	cmp	r0, #0
 80028dc:	f041 8376 	bne.w	8003fcc <_vfprintf_r+0x1964>
 80028e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80028e4:	e72c      	b.n	8002740 <_vfprintf_r+0xd8>
 80028e6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80028ea:	f003 f8ab 	bl	8005a44 <__retarget_lock_acquire_recursive>
 80028ee:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80028f2:	b293      	uxth	r3, r2
 80028f4:	e6d8      	b.n	80026a8 <_vfprintf_r+0x40>
 80028f6:	bf00      	nop
	...
 8002900:	4643      	mov	r3, r8
 8002902:	069f      	lsls	r7, r3, #26
 8002904:	f140 832f 	bpl.w	8002f66 <_vfprintf_r+0x8fe>
 8002908:	9c08      	ldr	r4, [sp, #32]
 800290a:	3407      	adds	r4, #7
 800290c:	f024 0407 	bic.w	r4, r4, #7
 8002910:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002914:	f104 0208 	add.w	r2, r4, #8
 8002918:	9208      	str	r2, [sp, #32]
 800291a:	4604      	mov	r4, r0
 800291c:	460d      	mov	r5, r1
 800291e:	2800      	cmp	r0, #0
 8002920:	f171 0200 	sbcs.w	r2, r1, #0
 8002924:	da05      	bge.n	8002932 <_vfprintf_r+0x2ca>
 8002926:	222d      	movs	r2, #45	; 0x2d
 8002928:	4264      	negs	r4, r4
 800292a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800292e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002932:	aa56      	add	r2, sp, #344	; 0x158
 8002934:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002938:	9204      	str	r2, [sp, #16]
 800293a:	f000 84b2 	beq.w	80032a2 <_vfprintf_r+0xc3a>
 800293e:	2201      	movs	r2, #1
 8002940:	ea54 0105 	orrs.w	r1, r4, r5
 8002944:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002948:	f040 8159 	bne.w	8002bfe <_vfprintf_r+0x596>
 800294c:	f1b9 0f00 	cmp.w	r9, #0
 8002950:	f040 8619 	bne.w	8003586 <_vfprintf_r+0xf1e>
 8002954:	2a00      	cmp	r2, #0
 8002956:	f040 8508 	bne.w	800336a <_vfprintf_r+0xd02>
 800295a:	f013 0301 	ands.w	r3, r3, #1
 800295e:	af56      	add	r7, sp, #344	; 0x158
 8002960:	9309      	str	r3, [sp, #36]	; 0x24
 8002962:	d002      	beq.n	800296a <_vfprintf_r+0x302>
 8002964:	2330      	movs	r3, #48	; 0x30
 8002966:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800296a:	2300      	movs	r3, #0
 800296c:	930a      	str	r3, [sp, #40]	; 0x28
 800296e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002970:	9314      	str	r3, [sp, #80]	; 0x50
 8002972:	9311      	str	r3, [sp, #68]	; 0x44
 8002974:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002976:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800297a:	454b      	cmp	r3, r9
 800297c:	bfb8      	it	lt
 800297e:	464b      	movlt	r3, r9
 8002980:	9304      	str	r3, [sp, #16]
 8002982:	b112      	cbz	r2, 800298a <_vfprintf_r+0x322>
 8002984:	9b04      	ldr	r3, [sp, #16]
 8002986:	3301      	adds	r3, #1
 8002988:	9304      	str	r3, [sp, #16]
 800298a:	f018 0302 	ands.w	r3, r8, #2
 800298e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002990:	d002      	beq.n	8002998 <_vfprintf_r+0x330>
 8002992:	9b04      	ldr	r3, [sp, #16]
 8002994:	3302      	adds	r3, #2
 8002996:	9304      	str	r3, [sp, #16]
 8002998:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800299c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800299e:	930e      	str	r3, [sp, #56]	; 0x38
 80029a0:	d13f      	bne.n	8002a22 <_vfprintf_r+0x3ba>
 80029a2:	9b06      	ldr	r3, [sp, #24]
 80029a4:	9904      	ldr	r1, [sp, #16]
 80029a6:	1a5d      	subs	r5, r3, r1
 80029a8:	2d00      	cmp	r5, #0
 80029aa:	dd3a      	ble.n	8002a22 <_vfprintf_r+0x3ba>
 80029ac:	2d10      	cmp	r5, #16
 80029ae:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80029b0:	dd29      	ble.n	8002a06 <_vfprintf_r+0x39e>
 80029b2:	4659      	mov	r1, fp
 80029b4:	4620      	mov	r0, r4
 80029b6:	9620      	str	r6, [sp, #128]	; 0x80
 80029b8:	2310      	movs	r3, #16
 80029ba:	9c03      	ldr	r4, [sp, #12]
 80029bc:	9e07      	ldr	r6, [sp, #28]
 80029be:	46bb      	mov	fp, r7
 80029c0:	e004      	b.n	80029cc <_vfprintf_r+0x364>
 80029c2:	3d10      	subs	r5, #16
 80029c4:	2d10      	cmp	r5, #16
 80029c6:	f101 0108 	add.w	r1, r1, #8
 80029ca:	dd18      	ble.n	80029fe <_vfprintf_r+0x396>
 80029cc:	3201      	adds	r2, #1
 80029ce:	4fba      	ldr	r7, [pc, #744]	; (8002cb8 <_vfprintf_r+0x650>)
 80029d0:	3010      	adds	r0, #16
 80029d2:	2a07      	cmp	r2, #7
 80029d4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80029d8:	e9c1 7300 	strd	r7, r3, [r1]
 80029dc:	ddf1      	ble.n	80029c2 <_vfprintf_r+0x35a>
 80029de:	aa2a      	add	r2, sp, #168	; 0xa8
 80029e0:	4631      	mov	r1, r6
 80029e2:	4620      	mov	r0, r4
 80029e4:	930c      	str	r3, [sp, #48]	; 0x30
 80029e6:	f004 f96d 	bl	8006cc4 <__sprint_r>
 80029ea:	2800      	cmp	r0, #0
 80029ec:	f040 843d 	bne.w	800326a <_vfprintf_r+0xc02>
 80029f0:	3d10      	subs	r5, #16
 80029f2:	2d10      	cmp	r5, #16
 80029f4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80029f8:	a92d      	add	r1, sp, #180	; 0xb4
 80029fa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80029fc:	dce6      	bgt.n	80029cc <_vfprintf_r+0x364>
 80029fe:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002a00:	465f      	mov	r7, fp
 8002a02:	4604      	mov	r4, r0
 8002a04:	468b      	mov	fp, r1
 8002a06:	3201      	adds	r2, #1
 8002a08:	4bab      	ldr	r3, [pc, #684]	; (8002cb8 <_vfprintf_r+0x650>)
 8002a0a:	442c      	add	r4, r5
 8002a0c:	2a07      	cmp	r2, #7
 8002a0e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002a12:	e9cb 3500 	strd	r3, r5, [fp]
 8002a16:	f300 84ff 	bgt.w	8003418 <_vfprintf_r+0xdb0>
 8002a1a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a1e:	f10b 0b08 	add.w	fp, fp, #8
 8002a22:	b172      	cbz	r2, 8002a42 <_vfprintf_r+0x3da>
 8002a24:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002a26:	3201      	adds	r2, #1
 8002a28:	3401      	adds	r4, #1
 8002a2a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002a2e:	2101      	movs	r1, #1
 8002a30:	2a07      	cmp	r2, #7
 8002a32:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002a36:	e9cb 0100 	strd	r0, r1, [fp]
 8002a3a:	f300 8418 	bgt.w	800326e <_vfprintf_r+0xc06>
 8002a3e:	f10b 0b08 	add.w	fp, fp, #8
 8002a42:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002a44:	b16b      	cbz	r3, 8002a62 <_vfprintf_r+0x3fa>
 8002a46:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002a48:	3301      	adds	r3, #1
 8002a4a:	3402      	adds	r4, #2
 8002a4c:	a923      	add	r1, sp, #140	; 0x8c
 8002a4e:	2202      	movs	r2, #2
 8002a50:	2b07      	cmp	r3, #7
 8002a52:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002a56:	e9cb 1200 	strd	r1, r2, [fp]
 8002a5a:	f300 8415 	bgt.w	8003288 <_vfprintf_r+0xc20>
 8002a5e:	f10b 0b08 	add.w	fp, fp, #8
 8002a62:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002a64:	2b80      	cmp	r3, #128	; 0x80
 8002a66:	f000 8331 	beq.w	80030cc <_vfprintf_r+0xa64>
 8002a6a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002a6c:	eba9 0503 	sub.w	r5, r9, r3
 8002a70:	2d00      	cmp	r5, #0
 8002a72:	dd37      	ble.n	8002ae4 <_vfprintf_r+0x47c>
 8002a74:	2d10      	cmp	r5, #16
 8002a76:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002a78:	4b90      	ldr	r3, [pc, #576]	; (8002cbc <_vfprintf_r+0x654>)
 8002a7a:	dd28      	ble.n	8002ace <_vfprintf_r+0x466>
 8002a7c:	4659      	mov	r1, fp
 8002a7e:	4620      	mov	r0, r4
 8002a80:	46bb      	mov	fp, r7
 8002a82:	f04f 0910 	mov.w	r9, #16
 8002a86:	4637      	mov	r7, r6
 8002a88:	461c      	mov	r4, r3
 8002a8a:	9e07      	ldr	r6, [sp, #28]
 8002a8c:	e004      	b.n	8002a98 <_vfprintf_r+0x430>
 8002a8e:	3d10      	subs	r5, #16
 8002a90:	2d10      	cmp	r5, #16
 8002a92:	f101 0108 	add.w	r1, r1, #8
 8002a96:	dd15      	ble.n	8002ac4 <_vfprintf_r+0x45c>
 8002a98:	3201      	adds	r2, #1
 8002a9a:	3010      	adds	r0, #16
 8002a9c:	2a07      	cmp	r2, #7
 8002a9e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002aa2:	e9c1 4900 	strd	r4, r9, [r1]
 8002aa6:	ddf2      	ble.n	8002a8e <_vfprintf_r+0x426>
 8002aa8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002aaa:	4631      	mov	r1, r6
 8002aac:	9803      	ldr	r0, [sp, #12]
 8002aae:	f004 f909 	bl	8006cc4 <__sprint_r>
 8002ab2:	2800      	cmp	r0, #0
 8002ab4:	f040 83d9 	bne.w	800326a <_vfprintf_r+0xc02>
 8002ab8:	3d10      	subs	r5, #16
 8002aba:	2d10      	cmp	r5, #16
 8002abc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ac0:	a92d      	add	r1, sp, #180	; 0xb4
 8002ac2:	dce9      	bgt.n	8002a98 <_vfprintf_r+0x430>
 8002ac4:	463e      	mov	r6, r7
 8002ac6:	4623      	mov	r3, r4
 8002ac8:	465f      	mov	r7, fp
 8002aca:	4604      	mov	r4, r0
 8002acc:	468b      	mov	fp, r1
 8002ace:	3201      	adds	r2, #1
 8002ad0:	442c      	add	r4, r5
 8002ad2:	2a07      	cmp	r2, #7
 8002ad4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ad8:	e9cb 3500 	strd	r3, r5, [fp]
 8002adc:	f300 83ef 	bgt.w	80032be <_vfprintf_r+0xc56>
 8002ae0:	f10b 0b08 	add.w	fp, fp, #8
 8002ae4:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002ae8:	f040 8280 	bne.w	8002fec <_vfprintf_r+0x984>
 8002aec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002aee:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002af0:	f8cb 7000 	str.w	r7, [fp]
 8002af4:	3301      	adds	r3, #1
 8002af6:	4414      	add	r4, r2
 8002af8:	2b07      	cmp	r3, #7
 8002afa:	942c      	str	r4, [sp, #176]	; 0xb0
 8002afc:	f8cb 2004 	str.w	r2, [fp, #4]
 8002b00:	932b      	str	r3, [sp, #172]	; 0xac
 8002b02:	f300 8392 	bgt.w	800322a <_vfprintf_r+0xbc2>
 8002b06:	f10b 0b08 	add.w	fp, fp, #8
 8002b0a:	f018 0f04 	tst.w	r8, #4
 8002b0e:	d03b      	beq.n	8002b88 <_vfprintf_r+0x520>
 8002b10:	9b06      	ldr	r3, [sp, #24]
 8002b12:	9a04      	ldr	r2, [sp, #16]
 8002b14:	1a9d      	subs	r5, r3, r2
 8002b16:	2d00      	cmp	r5, #0
 8002b18:	dd36      	ble.n	8002b88 <_vfprintf_r+0x520>
 8002b1a:	2d10      	cmp	r5, #16
 8002b1c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b1e:	dd21      	ble.n	8002b64 <_vfprintf_r+0x4fc>
 8002b20:	2610      	movs	r6, #16
 8002b22:	9f03      	ldr	r7, [sp, #12]
 8002b24:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002b28:	e004      	b.n	8002b34 <_vfprintf_r+0x4cc>
 8002b2a:	3d10      	subs	r5, #16
 8002b2c:	2d10      	cmp	r5, #16
 8002b2e:	f10b 0b08 	add.w	fp, fp, #8
 8002b32:	dd17      	ble.n	8002b64 <_vfprintf_r+0x4fc>
 8002b34:	3301      	adds	r3, #1
 8002b36:	4a60      	ldr	r2, [pc, #384]	; (8002cb8 <_vfprintf_r+0x650>)
 8002b38:	3410      	adds	r4, #16
 8002b3a:	2b07      	cmp	r3, #7
 8002b3c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002b40:	e9cb 2600 	strd	r2, r6, [fp]
 8002b44:	ddf1      	ble.n	8002b2a <_vfprintf_r+0x4c2>
 8002b46:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b48:	4641      	mov	r1, r8
 8002b4a:	4638      	mov	r0, r7
 8002b4c:	f004 f8ba 	bl	8006cc4 <__sprint_r>
 8002b50:	2800      	cmp	r0, #0
 8002b52:	f040 856c 	bne.w	800362e <_vfprintf_r+0xfc6>
 8002b56:	3d10      	subs	r5, #16
 8002b58:	2d10      	cmp	r5, #16
 8002b5a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002b5e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002b62:	dce7      	bgt.n	8002b34 <_vfprintf_r+0x4cc>
 8002b64:	3301      	adds	r3, #1
 8002b66:	4a54      	ldr	r2, [pc, #336]	; (8002cb8 <_vfprintf_r+0x650>)
 8002b68:	442c      	add	r4, r5
 8002b6a:	2b07      	cmp	r3, #7
 8002b6c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002b70:	e9cb 2500 	strd	r2, r5, [fp]
 8002b74:	dd08      	ble.n	8002b88 <_vfprintf_r+0x520>
 8002b76:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b78:	9907      	ldr	r1, [sp, #28]
 8002b7a:	9803      	ldr	r0, [sp, #12]
 8002b7c:	f004 f8a2 	bl	8006cc4 <__sprint_r>
 8002b80:	2800      	cmp	r0, #0
 8002b82:	f040 82e9 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8002b86:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002b88:	9904      	ldr	r1, [sp, #16]
 8002b8a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002b8e:	428a      	cmp	r2, r1
 8002b90:	bfac      	ite	ge
 8002b92:	189b      	addge	r3, r3, r2
 8002b94:	185b      	addlt	r3, r3, r1
 8002b96:	9305      	str	r3, [sp, #20]
 8002b98:	2c00      	cmp	r4, #0
 8002b9a:	f040 82d5 	bne.w	8003148 <_vfprintf_r+0xae0>
 8002b9e:	2300      	movs	r3, #0
 8002ba0:	932b      	str	r3, [sp, #172]	; 0xac
 8002ba2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002ba4:	b11b      	cbz	r3, 8002bae <_vfprintf_r+0x546>
 8002ba6:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002ba8:	9803      	ldr	r0, [sp, #12]
 8002baa:	f002 fc9d 	bl	80054e8 <_free_r>
 8002bae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002bb2:	4657      	mov	r7, sl
 8002bb4:	783b      	ldrb	r3, [r7, #0]
 8002bb6:	2b00      	cmp	r3, #0
 8002bb8:	f47f ada7 	bne.w	800270a <_vfprintf_r+0xa2>
 8002bbc:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002bbe:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002bc2:	2b00      	cmp	r3, #0
 8002bc4:	f041 80e7 	bne.w	8003d96 <_vfprintf_r+0x172e>
 8002bc8:	2300      	movs	r3, #0
 8002bca:	932b      	str	r3, [sp, #172]	; 0xac
 8002bcc:	e2cb      	b.n	8003166 <_vfprintf_r+0xafe>
 8002bce:	4643      	mov	r3, r8
 8002bd0:	069a      	lsls	r2, r3, #26
 8002bd2:	f140 814e 	bpl.w	8002e72 <_vfprintf_r+0x80a>
 8002bd6:	9c08      	ldr	r4, [sp, #32]
 8002bd8:	3407      	adds	r4, #7
 8002bda:	f024 0207 	bic.w	r2, r4, #7
 8002bde:	f102 0108 	add.w	r1, r2, #8
 8002be2:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002be6:	9108      	str	r1, [sp, #32]
 8002be8:	2201      	movs	r2, #1
 8002bea:	2100      	movs	r1, #0
 8002bec:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002bf0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002bf4:	a956      	add	r1, sp, #344	; 0x158
 8002bf6:	9104      	str	r1, [sp, #16]
 8002bf8:	f47f aea2 	bne.w	8002940 <_vfprintf_r+0x2d8>
 8002bfc:	4698      	mov	r8, r3
 8002bfe:	2a01      	cmp	r2, #1
 8002c00:	f000 8350 	beq.w	80032a4 <_vfprintf_r+0xc3c>
 8002c04:	2a02      	cmp	r2, #2
 8002c06:	f000 831b 	beq.w	8003240 <_vfprintf_r+0xbd8>
 8002c0a:	a956      	add	r1, sp, #344	; 0x158
 8002c0c:	e000      	b.n	8002c10 <_vfprintf_r+0x5a8>
 8002c0e:	4639      	mov	r1, r7
 8002c10:	08e2      	lsrs	r2, r4, #3
 8002c12:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002c16:	08e8      	lsrs	r0, r5, #3
 8002c18:	f004 0307 	and.w	r3, r4, #7
 8002c1c:	4605      	mov	r5, r0
 8002c1e:	4614      	mov	r4, r2
 8002c20:	3330      	adds	r3, #48	; 0x30
 8002c22:	ea54 0205 	orrs.w	r2, r4, r5
 8002c26:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002c2a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002c2e:	d1ee      	bne.n	8002c0e <_vfprintf_r+0x5a6>
 8002c30:	f018 0f01 	tst.w	r8, #1
 8002c34:	f000 8314 	beq.w	8003260 <_vfprintf_r+0xbf8>
 8002c38:	2b30      	cmp	r3, #48	; 0x30
 8002c3a:	f000 8311 	beq.w	8003260 <_vfprintf_r+0xbf8>
 8002c3e:	9a04      	ldr	r2, [sp, #16]
 8002c40:	3902      	subs	r1, #2
 8002c42:	2330      	movs	r3, #48	; 0x30
 8002c44:	1a52      	subs	r2, r2, r1
 8002c46:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002c4a:	9209      	str	r2, [sp, #36]	; 0x24
 8002c4c:	460f      	mov	r7, r1
 8002c4e:	e68c      	b.n	800296a <_vfprintf_r+0x302>
 8002c50:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c54:	2200      	movs	r2, #0
 8002c56:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002c5a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002c5e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002c62:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c66:	2b09      	cmp	r3, #9
 8002c68:	d9f5      	bls.n	8002c56 <_vfprintf_r+0x5ee>
 8002c6a:	9206      	str	r2, [sp, #24]
 8002c6c:	e57c      	b.n	8002768 <_vfprintf_r+0x100>
 8002c6e:	4b14      	ldr	r3, [pc, #80]	; (8002cc0 <_vfprintf_r+0x658>)
 8002c70:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c72:	f018 0f20 	tst.w	r8, #32
 8002c76:	f000 8114 	beq.w	8002ea2 <_vfprintf_r+0x83a>
 8002c7a:	9c08      	ldr	r4, [sp, #32]
 8002c7c:	3407      	adds	r4, #7
 8002c7e:	f024 0307 	bic.w	r3, r4, #7
 8002c82:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002c86:	f103 0208 	add.w	r2, r3, #8
 8002c8a:	9208      	str	r2, [sp, #32]
 8002c8c:	f018 0f01 	tst.w	r8, #1
 8002c90:	d009      	beq.n	8002ca6 <_vfprintf_r+0x63e>
 8002c92:	ea54 0305 	orrs.w	r3, r4, r5
 8002c96:	d006      	beq.n	8002ca6 <_vfprintf_r+0x63e>
 8002c98:	2330      	movs	r3, #48	; 0x30
 8002c9a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002c9e:	f048 0802 	orr.w	r8, r8, #2
 8002ca2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002ca6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002caa:	2202      	movs	r2, #2
 8002cac:	e79d      	b.n	8002bea <_vfprintf_r+0x582>
 8002cae:	f048 0801 	orr.w	r8, r8, #1
 8002cb2:	f89a 6000 	ldrb.w	r6, [sl]
 8002cb6:	e555      	b.n	8002764 <_vfprintf_r+0xfc>
 8002cb8:	080073a8 	.word	0x080073a8
 8002cbc:	080073b8 	.word	0x080073b8
 8002cc0:	08007374 	.word	0x08007374
 8002cc4:	9e03      	ldr	r6, [sp, #12]
 8002cc6:	4630      	mov	r0, r6
 8002cc8:	f002 feaa 	bl	8005a20 <_localeconv_r>
 8002ccc:	6843      	ldr	r3, [r0, #4]
 8002cce:	9318      	str	r3, [sp, #96]	; 0x60
 8002cd0:	4618      	mov	r0, r3
 8002cd2:	f7fd fcb5 	bl	8000640 <strlen>
 8002cd6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002cd8:	4604      	mov	r4, r0
 8002cda:	4630      	mov	r0, r6
 8002cdc:	f002 fea0 	bl	8005a20 <_localeconv_r>
 8002ce0:	6883      	ldr	r3, [r0, #8]
 8002ce2:	931a      	str	r3, [sp, #104]	; 0x68
 8002ce4:	2c00      	cmp	r4, #0
 8002ce6:	f43f adb8 	beq.w	800285a <_vfprintf_r+0x1f2>
 8002cea:	f89a 6000 	ldrb.w	r6, [sl]
 8002cee:	2b00      	cmp	r3, #0
 8002cf0:	f43f ad38 	beq.w	8002764 <_vfprintf_r+0xfc>
 8002cf4:	781b      	ldrb	r3, [r3, #0]
 8002cf6:	2b00      	cmp	r3, #0
 8002cf8:	f43f ad34 	beq.w	8002764 <_vfprintf_r+0xfc>
 8002cfc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002d00:	e530      	b.n	8002764 <_vfprintf_r+0xfc>
 8002d02:	9b08      	ldr	r3, [sp, #32]
 8002d04:	f89a 6000 	ldrb.w	r6, [sl]
 8002d08:	681a      	ldr	r2, [r3, #0]
 8002d0a:	9206      	str	r2, [sp, #24]
 8002d0c:	2a00      	cmp	r2, #0
 8002d0e:	f103 0304 	add.w	r3, r3, #4
 8002d12:	f2c0 8697 	blt.w	8003a44 <_vfprintf_r+0x13dc>
 8002d16:	9308      	str	r3, [sp, #32]
 8002d18:	e524      	b.n	8002764 <_vfprintf_r+0xfc>
 8002d1a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002d1e:	f89a 6000 	ldrb.w	r6, [sl]
 8002d22:	e51f      	b.n	8002764 <_vfprintf_r+0xfc>
 8002d24:	f89a 6000 	ldrb.w	r6, [sl]
 8002d28:	f048 0804 	orr.w	r8, r8, #4
 8002d2c:	e51a      	b.n	8002764 <_vfprintf_r+0xfc>
 8002d2e:	f89a 6000 	ldrb.w	r6, [sl]
 8002d32:	2e2a      	cmp	r6, #42	; 0x2a
 8002d34:	f10a 0201 	add.w	r2, sl, #1
 8002d38:	f001 81b0 	beq.w	800409c <_vfprintf_r+0x1a34>
 8002d3c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d40:	2b09      	cmp	r3, #9
 8002d42:	4692      	mov	sl, r2
 8002d44:	f04f 0900 	mov.w	r9, #0
 8002d48:	f63f ad0e 	bhi.w	8002768 <_vfprintf_r+0x100>
 8002d4c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002d50:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002d54:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002d58:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d5c:	2b09      	cmp	r3, #9
 8002d5e:	d9f5      	bls.n	8002d4c <_vfprintf_r+0x6e4>
 8002d60:	e502      	b.n	8002768 <_vfprintf_r+0x100>
 8002d62:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002d66:	f89a 6000 	ldrb.w	r6, [sl]
 8002d6a:	e4fb      	b.n	8002764 <_vfprintf_r+0xfc>
 8002d6c:	9c08      	ldr	r4, [sp, #32]
 8002d6e:	3407      	adds	r4, #7
 8002d70:	f024 0407 	bic.w	r4, r4, #7
 8002d74:	ed94 7b00 	vldr	d7, [r4]
 8002d78:	ec52 1b17 	vmov	r1, r2, d7
 8002d7c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002d80:	931d      	str	r3, [sp, #116]	; 0x74
 8002d82:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002d86:	3408      	adds	r4, #8
 8002d88:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002d8c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002d90:	4bba      	ldr	r3, [pc, #744]	; (800307c <_vfprintf_r+0xa14>)
 8002d92:	9408      	str	r4, [sp, #32]
 8002d94:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002d98:	f7fe f968 	bl	800106c <__aeabi_dcmpun>
 8002d9c:	2800      	cmp	r0, #0
 8002d9e:	f040 846f 	bne.w	8003680 <_vfprintf_r+0x1018>
 8002da2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002da6:	4bb5      	ldr	r3, [pc, #724]	; (800307c <_vfprintf_r+0xa14>)
 8002da8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002dac:	f7fe f940 	bl	8001030 <__aeabi_dcmple>
 8002db0:	2800      	cmp	r0, #0
 8002db2:	f040 8465 	bne.w	8003680 <_vfprintf_r+0x1018>
 8002db6:	2200      	movs	r2, #0
 8002db8:	2300      	movs	r3, #0
 8002dba:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002dbe:	f7fe f92d 	bl	800101c <__aeabi_dcmplt>
 8002dc2:	2800      	cmp	r0, #0
 8002dc4:	f040 855b 	bne.w	800387e <_vfprintf_r+0x1216>
 8002dc8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002dcc:	4fac      	ldr	r7, [pc, #688]	; (8003080 <_vfprintf_r+0xa18>)
 8002dce:	4bad      	ldr	r3, [pc, #692]	; (8003084 <_vfprintf_r+0xa1c>)
 8002dd0:	2000      	movs	r0, #0
 8002dd2:	2103      	movs	r1, #3
 8002dd4:	9104      	str	r1, [sp, #16]
 8002dd6:	900a      	str	r0, [sp, #40]	; 0x28
 8002dd8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002ddc:	2e47      	cmp	r6, #71	; 0x47
 8002dde:	bfd8      	it	le
 8002de0:	461f      	movle	r7, r3
 8002de2:	9109      	str	r1, [sp, #36]	; 0x24
 8002de4:	4681      	mov	r9, r0
 8002de6:	900f      	str	r0, [sp, #60]	; 0x3c
 8002de8:	9014      	str	r0, [sp, #80]	; 0x50
 8002dea:	9011      	str	r0, [sp, #68]	; 0x44
 8002dec:	e5c9      	b.n	8002982 <_vfprintf_r+0x31a>
 8002dee:	9808      	ldr	r0, [sp, #32]
 8002df0:	2300      	movs	r3, #0
 8002df2:	6801      	ldr	r1, [r0, #0]
 8002df4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002df8:	461a      	mov	r2, r3
 8002dfa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002dfe:	2301      	movs	r3, #1
 8002e00:	1d01      	adds	r1, r0, #4
 8002e02:	9304      	str	r3, [sp, #16]
 8002e04:	920a      	str	r2, [sp, #40]	; 0x28
 8002e06:	4691      	mov	r9, r2
 8002e08:	920f      	str	r2, [sp, #60]	; 0x3c
 8002e0a:	9214      	str	r2, [sp, #80]	; 0x50
 8002e0c:	9211      	str	r2, [sp, #68]	; 0x44
 8002e0e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002e12:	af3d      	add	r7, sp, #244	; 0xf4
 8002e14:	e5b9      	b.n	800298a <_vfprintf_r+0x322>
 8002e16:	9b08      	ldr	r3, [sp, #32]
 8002e18:	681f      	ldr	r7, [r3, #0]
 8002e1a:	2500      	movs	r5, #0
 8002e1c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002e20:	1d1c      	adds	r4, r3, #4
 8002e22:	2f00      	cmp	r7, #0
 8002e24:	f000 8639 	beq.w	8003a9a <_vfprintf_r+0x1432>
 8002e28:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002e2c:	f000 8711 	beq.w	8003c52 <_vfprintf_r+0x15ea>
 8002e30:	464a      	mov	r2, r9
 8002e32:	4629      	mov	r1, r5
 8002e34:	4638      	mov	r0, r7
 8002e36:	f7fd fc73 	bl	8000720 <memchr>
 8002e3a:	900a      	str	r0, [sp, #40]	; 0x28
 8002e3c:	2800      	cmp	r0, #0
 8002e3e:	f000 85e7 	beq.w	8003a10 <_vfprintf_r+0x13a8>
 8002e42:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002e44:	1bdb      	subs	r3, r3, r7
 8002e46:	9309      	str	r3, [sp, #36]	; 0x24
 8002e48:	46a9      	mov	r9, r5
 8002e4a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002e4e:	9408      	str	r4, [sp, #32]
 8002e50:	9304      	str	r3, [sp, #16]
 8002e52:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002e56:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002e5a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002e5e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002e62:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002e66:	e58c      	b.n	8002982 <_vfprintf_r+0x31a>
 8002e68:	f048 0310 	orr.w	r3, r8, #16
 8002e6c:	069a      	lsls	r2, r3, #26
 8002e6e:	f53f aeb2 	bmi.w	8002bd6 <_vfprintf_r+0x56e>
 8002e72:	9a08      	ldr	r2, [sp, #32]
 8002e74:	06df      	lsls	r7, r3, #27
 8002e76:	f102 0104 	add.w	r1, r2, #4
 8002e7a:	f100 837e 	bmi.w	800357a <_vfprintf_r+0xf12>
 8002e7e:	065d      	lsls	r5, r3, #25
 8002e80:	9a08      	ldr	r2, [sp, #32]
 8002e82:	f100 84e4 	bmi.w	800384e <_vfprintf_r+0x11e6>
 8002e86:	059c      	lsls	r4, r3, #22
 8002e88:	f140 8377 	bpl.w	800357a <_vfprintf_r+0xf12>
 8002e8c:	7814      	ldrb	r4, [r2, #0]
 8002e8e:	9108      	str	r1, [sp, #32]
 8002e90:	2500      	movs	r5, #0
 8002e92:	2201      	movs	r2, #1
 8002e94:	e6a9      	b.n	8002bea <_vfprintf_r+0x582>
 8002e96:	4b7c      	ldr	r3, [pc, #496]	; (8003088 <_vfprintf_r+0xa20>)
 8002e98:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e9a:	f018 0f20 	tst.w	r8, #32
 8002e9e:	f47f aeec 	bne.w	8002c7a <_vfprintf_r+0x612>
 8002ea2:	9a08      	ldr	r2, [sp, #32]
 8002ea4:	f018 0f10 	tst.w	r8, #16
 8002ea8:	f102 0304 	add.w	r3, r2, #4
 8002eac:	f040 8354 	bne.w	8003558 <_vfprintf_r+0xef0>
 8002eb0:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002eb4:	9a08      	ldr	r2, [sp, #32]
 8002eb6:	f040 84d0 	bne.w	800385a <_vfprintf_r+0x11f2>
 8002eba:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002ebe:	f000 834b 	beq.w	8003558 <_vfprintf_r+0xef0>
 8002ec2:	7814      	ldrb	r4, [r2, #0]
 8002ec4:	9308      	str	r3, [sp, #32]
 8002ec6:	2500      	movs	r5, #0
 8002ec8:	e6e0      	b.n	8002c8c <_vfprintf_r+0x624>
 8002eca:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002ece:	f89a 6000 	ldrb.w	r6, [sl]
 8002ed2:	2b00      	cmp	r3, #0
 8002ed4:	f47f ac46 	bne.w	8002764 <_vfprintf_r+0xfc>
 8002ed8:	2320      	movs	r3, #32
 8002eda:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ede:	e441      	b.n	8002764 <_vfprintf_r+0xfc>
 8002ee0:	f89a 6000 	ldrb.w	r6, [sl]
 8002ee4:	2e6c      	cmp	r6, #108	; 0x6c
 8002ee6:	bf03      	ittte	eq
 8002ee8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002eec:	f048 0820 	orreq.w	r8, r8, #32
 8002ef0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002ef4:	f048 0810 	orrne.w	r8, r8, #16
 8002ef8:	e434      	b.n	8002764 <_vfprintf_r+0xfc>
 8002efa:	9a08      	ldr	r2, [sp, #32]
 8002efc:	f018 0f20 	tst.w	r8, #32
 8002f00:	f852 3b04 	ldr.w	r3, [r2], #4
 8002f04:	9208      	str	r2, [sp, #32]
 8002f06:	f000 83a1 	beq.w	800364c <_vfprintf_r+0xfe4>
 8002f0a:	9a05      	ldr	r2, [sp, #20]
 8002f0c:	4610      	mov	r0, r2
 8002f0e:	17d1      	asrs	r1, r2, #31
 8002f10:	e9c3 0100 	strd	r0, r1, [r3]
 8002f14:	4657      	mov	r7, sl
 8002f16:	e64d      	b.n	8002bb4 <_vfprintf_r+0x54c>
 8002f18:	f89a 6000 	ldrb.w	r6, [sl]
 8002f1c:	2e68      	cmp	r6, #104	; 0x68
 8002f1e:	bf03      	ittte	eq
 8002f20:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002f24:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002f28:	f10a 0a01 	addeq.w	sl, sl, #1
 8002f2c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002f30:	e418      	b.n	8002764 <_vfprintf_r+0xfc>
 8002f32:	9908      	ldr	r1, [sp, #32]
 8002f34:	4b55      	ldr	r3, [pc, #340]	; (800308c <_vfprintf_r+0xa24>)
 8002f36:	680c      	ldr	r4, [r1, #0]
 8002f38:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f3a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002f3e:	3104      	adds	r1, #4
 8002f40:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002f44:	f048 0302 	orr.w	r3, r8, #2
 8002f48:	9108      	str	r1, [sp, #32]
 8002f4a:	2500      	movs	r5, #0
 8002f4c:	2202      	movs	r2, #2
 8002f4e:	2678      	movs	r6, #120	; 0x78
 8002f50:	e64b      	b.n	8002bea <_vfprintf_r+0x582>
 8002f52:	f048 0808 	orr.w	r8, r8, #8
 8002f56:	f89a 6000 	ldrb.w	r6, [sl]
 8002f5a:	e403      	b.n	8002764 <_vfprintf_r+0xfc>
 8002f5c:	f048 0310 	orr.w	r3, r8, #16
 8002f60:	069f      	lsls	r7, r3, #26
 8002f62:	f53f acd1 	bmi.w	8002908 <_vfprintf_r+0x2a0>
 8002f66:	9908      	ldr	r1, [sp, #32]
 8002f68:	06dd      	lsls	r5, r3, #27
 8002f6a:	f101 0204 	add.w	r2, r1, #4
 8002f6e:	f100 82fd 	bmi.w	800356c <_vfprintf_r+0xf04>
 8002f72:	065c      	lsls	r4, r3, #25
 8002f74:	9908      	ldr	r1, [sp, #32]
 8002f76:	f100 8475 	bmi.w	8003864 <_vfprintf_r+0x11fc>
 8002f7a:	0598      	lsls	r0, r3, #22
 8002f7c:	f140 82f6 	bpl.w	800356c <_vfprintf_r+0xf04>
 8002f80:	f991 4000 	ldrsb.w	r4, [r1]
 8002f84:	9208      	str	r2, [sp, #32]
 8002f86:	17e5      	asrs	r5, r4, #31
 8002f88:	4620      	mov	r0, r4
 8002f8a:	4629      	mov	r1, r5
 8002f8c:	e4c7      	b.n	800291e <_vfprintf_r+0x2b6>
 8002f8e:	9a08      	ldr	r2, [sp, #32]
 8002f90:	f018 0f10 	tst.w	r8, #16
 8002f94:	f102 0304 	add.w	r3, r2, #4
 8002f98:	f040 82e3 	bne.w	8003562 <_vfprintf_r+0xefa>
 8002f9c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002fa0:	9a08      	ldr	r2, [sp, #32]
 8002fa2:	f040 8467 	bne.w	8003874 <_vfprintf_r+0x120c>
 8002fa6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002faa:	f000 82da 	beq.w	8003562 <_vfprintf_r+0xefa>
 8002fae:	7814      	ldrb	r4, [r2, #0]
 8002fb0:	9308      	str	r3, [sp, #32]
 8002fb2:	2500      	movs	r5, #0
 8002fb4:	e488      	b.n	80028c8 <_vfprintf_r+0x260>
 8002fb6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002fba:	f002 fd45 	bl	8005a48 <__retarget_lock_release_recursive>
 8002fbe:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002fc2:	9305      	str	r3, [sp, #20]
 8002fc4:	e443      	b.n	800284e <_vfprintf_r+0x1e6>
 8002fc6:	2e00      	cmp	r6, #0
 8002fc8:	f43f adf8 	beq.w	8002bbc <_vfprintf_r+0x554>
 8002fcc:	2300      	movs	r3, #0
 8002fce:	2101      	movs	r1, #1
 8002fd0:	461a      	mov	r2, r3
 8002fd2:	9104      	str	r1, [sp, #16]
 8002fd4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002fd8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002fdc:	930a      	str	r3, [sp, #40]	; 0x28
 8002fde:	4699      	mov	r9, r3
 8002fe0:	930f      	str	r3, [sp, #60]	; 0x3c
 8002fe2:	9314      	str	r3, [sp, #80]	; 0x50
 8002fe4:	9311      	str	r3, [sp, #68]	; 0x44
 8002fe6:	9109      	str	r1, [sp, #36]	; 0x24
 8002fe8:	af3d      	add	r7, sp, #244	; 0xf4
 8002fea:	e4ce      	b.n	800298a <_vfprintf_r+0x322>
 8002fec:	2e65      	cmp	r6, #101	; 0x65
 8002fee:	f340 80ca 	ble.w	8003186 <_vfprintf_r+0xb1e>
 8002ff2:	2200      	movs	r2, #0
 8002ff4:	2300      	movs	r3, #0
 8002ff6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ffa:	f7fe f805 	bl	8001008 <__aeabi_dcmpeq>
 8002ffe:	2800      	cmp	r0, #0
 8003000:	f000 8169 	beq.w	80032d6 <_vfprintf_r+0xc6e>
 8003004:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003006:	4a22      	ldr	r2, [pc, #136]	; (8003090 <_vfprintf_r+0xa28>)
 8003008:	f8cb 2000 	str.w	r2, [fp]
 800300c:	3301      	adds	r3, #1
 800300e:	3401      	adds	r4, #1
 8003010:	2201      	movs	r2, #1
 8003012:	2b07      	cmp	r3, #7
 8003014:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003018:	f8cb 2004 	str.w	r2, [fp, #4]
 800301c:	f300 8406 	bgt.w	800382c <_vfprintf_r+0x11c4>
 8003020:	f10b 0b08 	add.w	fp, fp, #8
 8003024:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003026:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003028:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800302a:	4293      	cmp	r3, r2
 800302c:	db03      	blt.n	8003036 <_vfprintf_r+0x9ce>
 800302e:	f018 0f01 	tst.w	r8, #1
 8003032:	f43f ad6a 	beq.w	8002b0a <_vfprintf_r+0x4a2>
 8003036:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003038:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800303a:	f8cb 2000 	str.w	r2, [fp]
 800303e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003040:	f8cb 2004 	str.w	r2, [fp, #4]
 8003044:	3301      	adds	r3, #1
 8003046:	4414      	add	r4, r2
 8003048:	2b07      	cmp	r3, #7
 800304a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800304e:	f300 8517 	bgt.w	8003a80 <_vfprintf_r+0x1418>
 8003052:	f10b 0b08 	add.w	fp, fp, #8
 8003056:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003058:	1e5d      	subs	r5, r3, #1
 800305a:	2d00      	cmp	r5, #0
 800305c:	f77f ad55 	ble.w	8002b0a <_vfprintf_r+0x4a2>
 8003060:	2d10      	cmp	r5, #16
 8003062:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003064:	4b0b      	ldr	r3, [pc, #44]	; (8003094 <_vfprintf_r+0xa2c>)
 8003066:	f340 82e7 	ble.w	8003638 <_vfprintf_r+0xfd0>
 800306a:	4619      	mov	r1, r3
 800306c:	2610      	movs	r6, #16
 800306e:	4623      	mov	r3, r4
 8003070:	9f03      	ldr	r7, [sp, #12]
 8003072:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003076:	460c      	mov	r4, r1
 8003078:	e014      	b.n	80030a4 <_vfprintf_r+0xa3c>
 800307a:	bf00      	nop
 800307c:	7fefffff 	.word	0x7fefffff
 8003080:	08007368 	.word	0x08007368
 8003084:	08007364 	.word	0x08007364
 8003088:	08007388 	.word	0x08007388
 800308c:	08007374 	.word	0x08007374
 8003090:	080073a4 	.word	0x080073a4
 8003094:	080073b8 	.word	0x080073b8
 8003098:	f10b 0b08 	add.w	fp, fp, #8
 800309c:	3d10      	subs	r5, #16
 800309e:	2d10      	cmp	r5, #16
 80030a0:	f340 82c7 	ble.w	8003632 <_vfprintf_r+0xfca>
 80030a4:	3201      	adds	r2, #1
 80030a6:	3310      	adds	r3, #16
 80030a8:	2a07      	cmp	r2, #7
 80030aa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80030ae:	e9cb 4600 	strd	r4, r6, [fp]
 80030b2:	ddf1      	ble.n	8003098 <_vfprintf_r+0xa30>
 80030b4:	aa2a      	add	r2, sp, #168	; 0xa8
 80030b6:	4649      	mov	r1, r9
 80030b8:	4638      	mov	r0, r7
 80030ba:	f003 fe03 	bl	8006cc4 <__sprint_r>
 80030be:	2800      	cmp	r0, #0
 80030c0:	d14c      	bne.n	800315c <_vfprintf_r+0xaf4>
 80030c2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80030c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030ca:	e7e7      	b.n	800309c <_vfprintf_r+0xa34>
 80030cc:	9b06      	ldr	r3, [sp, #24]
 80030ce:	9a04      	ldr	r2, [sp, #16]
 80030d0:	1a9d      	subs	r5, r3, r2
 80030d2:	2d00      	cmp	r5, #0
 80030d4:	f77f acc9 	ble.w	8002a6a <_vfprintf_r+0x402>
 80030d8:	2d10      	cmp	r5, #16
 80030da:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030dc:	4bbc      	ldr	r3, [pc, #752]	; (80033d0 <_vfprintf_r+0xd68>)
 80030de:	dd27      	ble.n	8003130 <_vfprintf_r+0xac8>
 80030e0:	4659      	mov	r1, fp
 80030e2:	4620      	mov	r0, r4
 80030e4:	46bb      	mov	fp, r7
 80030e6:	461c      	mov	r4, r3
 80030e8:	4637      	mov	r7, r6
 80030ea:	9e07      	ldr	r6, [sp, #28]
 80030ec:	e004      	b.n	80030f8 <_vfprintf_r+0xa90>
 80030ee:	3d10      	subs	r5, #16
 80030f0:	2d10      	cmp	r5, #16
 80030f2:	f101 0108 	add.w	r1, r1, #8
 80030f6:	dd16      	ble.n	8003126 <_vfprintf_r+0xabe>
 80030f8:	3201      	adds	r2, #1
 80030fa:	3010      	adds	r0, #16
 80030fc:	2310      	movs	r3, #16
 80030fe:	2a07      	cmp	r2, #7
 8003100:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003104:	600c      	str	r4, [r1, #0]
 8003106:	604b      	str	r3, [r1, #4]
 8003108:	ddf1      	ble.n	80030ee <_vfprintf_r+0xa86>
 800310a:	aa2a      	add	r2, sp, #168	; 0xa8
 800310c:	4631      	mov	r1, r6
 800310e:	9803      	ldr	r0, [sp, #12]
 8003110:	f003 fdd8 	bl	8006cc4 <__sprint_r>
 8003114:	2800      	cmp	r0, #0
 8003116:	f040 80a8 	bne.w	800326a <_vfprintf_r+0xc02>
 800311a:	3d10      	subs	r5, #16
 800311c:	2d10      	cmp	r5, #16
 800311e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003122:	a92d      	add	r1, sp, #180	; 0xb4
 8003124:	dce8      	bgt.n	80030f8 <_vfprintf_r+0xa90>
 8003126:	463e      	mov	r6, r7
 8003128:	4623      	mov	r3, r4
 800312a:	465f      	mov	r7, fp
 800312c:	4604      	mov	r4, r0
 800312e:	468b      	mov	fp, r1
 8003130:	3201      	adds	r2, #1
 8003132:	442c      	add	r4, r5
 8003134:	2a07      	cmp	r2, #7
 8003136:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800313a:	e9cb 3500 	strd	r3, r5, [fp]
 800313e:	f300 8292 	bgt.w	8003666 <_vfprintf_r+0xffe>
 8003142:	f10b 0b08 	add.w	fp, fp, #8
 8003146:	e490      	b.n	8002a6a <_vfprintf_r+0x402>
 8003148:	aa2a      	add	r2, sp, #168	; 0xa8
 800314a:	9907      	ldr	r1, [sp, #28]
 800314c:	9803      	ldr	r0, [sp, #12]
 800314e:	f003 fdb9 	bl	8006cc4 <__sprint_r>
 8003152:	2800      	cmp	r0, #0
 8003154:	f43f ad23 	beq.w	8002b9e <_vfprintf_r+0x536>
 8003158:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800315c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800315e:	b111      	cbz	r1, 8003166 <_vfprintf_r+0xafe>
 8003160:	9803      	ldr	r0, [sp, #12]
 8003162:	f002 f9c1 	bl	80054e8 <_free_r>
 8003166:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800316a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800316e:	07d0      	lsls	r0, r2, #31
 8003170:	d402      	bmi.n	8003178 <_vfprintf_r+0xb10>
 8003172:	0599      	lsls	r1, r3, #22
 8003174:	f140 81d0 	bpl.w	8003518 <_vfprintf_r+0xeb0>
 8003178:	065a      	lsls	r2, r3, #25
 800317a:	f53f ab65 	bmi.w	8002848 <_vfprintf_r+0x1e0>
 800317e:	9805      	ldr	r0, [sp, #20]
 8003180:	b057      	add	sp, #348	; 0x15c
 8003182:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003186:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003188:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800318a:	2a01      	cmp	r2, #1
 800318c:	f104 0401 	add.w	r4, r4, #1
 8003190:	f103 0501 	add.w	r5, r3, #1
 8003194:	f10b 0608 	add.w	r6, fp, #8
 8003198:	f340 811c 	ble.w	80033d4 <_vfprintf_r+0xd6c>
 800319c:	2301      	movs	r3, #1
 800319e:	2d07      	cmp	r5, #7
 80031a0:	f8cb 7000 	str.w	r7, [fp]
 80031a4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80031a8:	f8cb 3004 	str.w	r3, [fp, #4]
 80031ac:	f300 81bb 	bgt.w	8003526 <_vfprintf_r+0xebe>
 80031b0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80031b2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80031b4:	1c69      	adds	r1, r5, #1
 80031b6:	441c      	add	r4, r3
 80031b8:	2907      	cmp	r1, #7
 80031ba:	910b      	str	r1, [sp, #44]	; 0x2c
 80031bc:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80031c0:	e9c6 2300 	strd	r2, r3, [r6]
 80031c4:	f300 81bb 	bgt.w	800353e <_vfprintf_r+0xed6>
 80031c8:	3608      	adds	r6, #8
 80031ca:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80031cc:	1c53      	adds	r3, r2, #1
 80031ce:	461d      	mov	r5, r3
 80031d0:	9509      	str	r5, [sp, #36]	; 0x24
 80031d2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80031d4:	930e      	str	r3, [sp, #56]	; 0x38
 80031d6:	2200      	movs	r2, #0
 80031d8:	2300      	movs	r3, #0
 80031da:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80031de:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80031e2:	f106 0b08 	add.w	fp, r6, #8
 80031e6:	f7fd ff0f 	bl	8001008 <__aeabi_dcmpeq>
 80031ea:	2800      	cmp	r0, #0
 80031ec:	f040 80c2 	bne.w	8003374 <_vfprintf_r+0xd0c>
 80031f0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80031f2:	f8c6 9004 	str.w	r9, [r6, #4]
 80031f6:	3701      	adds	r7, #1
 80031f8:	444c      	add	r4, r9
 80031fa:	2d07      	cmp	r5, #7
 80031fc:	6037      	str	r7, [r6, #0]
 80031fe:	942c      	str	r4, [sp, #176]	; 0xb0
 8003200:	952b      	str	r5, [sp, #172]	; 0xac
 8003202:	f300 80f9 	bgt.w	80033f8 <_vfprintf_r+0xd90>
 8003206:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003208:	f106 0310 	add.w	r3, r6, #16
 800320c:	3202      	adds	r2, #2
 800320e:	465e      	mov	r6, fp
 8003210:	9209      	str	r2, [sp, #36]	; 0x24
 8003212:	469b      	mov	fp, r3
 8003214:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003216:	6072      	str	r2, [r6, #4]
 8003218:	4414      	add	r4, r2
 800321a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800321c:	942c      	str	r4, [sp, #176]	; 0xb0
 800321e:	ab26      	add	r3, sp, #152	; 0x98
 8003220:	2a07      	cmp	r2, #7
 8003222:	922b      	str	r2, [sp, #172]	; 0xac
 8003224:	6033      	str	r3, [r6, #0]
 8003226:	f77f ac70 	ble.w	8002b0a <_vfprintf_r+0x4a2>
 800322a:	aa2a      	add	r2, sp, #168	; 0xa8
 800322c:	9907      	ldr	r1, [sp, #28]
 800322e:	9803      	ldr	r0, [sp, #12]
 8003230:	f003 fd48 	bl	8006cc4 <__sprint_r>
 8003234:	2800      	cmp	r0, #0
 8003236:	d18f      	bne.n	8003158 <_vfprintf_r+0xaf0>
 8003238:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800323a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800323e:	e464      	b.n	8002b0a <_vfprintf_r+0x4a2>
 8003240:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003242:	af56      	add	r7, sp, #344	; 0x158
 8003244:	0923      	lsrs	r3, r4, #4
 8003246:	f004 010f 	and.w	r1, r4, #15
 800324a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800324e:	092a      	lsrs	r2, r5, #4
 8003250:	461c      	mov	r4, r3
 8003252:	4615      	mov	r5, r2
 8003254:	5c43      	ldrb	r3, [r0, r1]
 8003256:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800325a:	ea54 0305 	orrs.w	r3, r4, r5
 800325e:	d1f1      	bne.n	8003244 <_vfprintf_r+0xbdc>
 8003260:	9b04      	ldr	r3, [sp, #16]
 8003262:	1bdb      	subs	r3, r3, r7
 8003264:	9309      	str	r3, [sp, #36]	; 0x24
 8003266:	f7ff bb80 	b.w	800296a <_vfprintf_r+0x302>
 800326a:	46b1      	mov	r9, r6
 800326c:	e776      	b.n	800315c <_vfprintf_r+0xaf4>
 800326e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003270:	9907      	ldr	r1, [sp, #28]
 8003272:	9803      	ldr	r0, [sp, #12]
 8003274:	f003 fd26 	bl	8006cc4 <__sprint_r>
 8003278:	2800      	cmp	r0, #0
 800327a:	f47f af6d 	bne.w	8003158 <_vfprintf_r+0xaf0>
 800327e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003280:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003284:	f7ff bbdd 	b.w	8002a42 <_vfprintf_r+0x3da>
 8003288:	aa2a      	add	r2, sp, #168	; 0xa8
 800328a:	9907      	ldr	r1, [sp, #28]
 800328c:	9803      	ldr	r0, [sp, #12]
 800328e:	f003 fd19 	bl	8006cc4 <__sprint_r>
 8003292:	2800      	cmp	r0, #0
 8003294:	f47f af60 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003298:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800329a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800329e:	f7ff bbe0 	b.w	8002a62 <_vfprintf_r+0x3fa>
 80032a2:	4698      	mov	r8, r3
 80032a4:	2d00      	cmp	r5, #0
 80032a6:	bf08      	it	eq
 80032a8:	2c0a      	cmpeq	r4, #10
 80032aa:	f080 8170 	bcs.w	800358e <_vfprintf_r+0xf26>
 80032ae:	af56      	add	r7, sp, #344	; 0x158
 80032b0:	3430      	adds	r4, #48	; 0x30
 80032b2:	2301      	movs	r3, #1
 80032b4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80032b8:	9309      	str	r3, [sp, #36]	; 0x24
 80032ba:	f7ff bb56 	b.w	800296a <_vfprintf_r+0x302>
 80032be:	aa2a      	add	r2, sp, #168	; 0xa8
 80032c0:	9907      	ldr	r1, [sp, #28]
 80032c2:	9803      	ldr	r0, [sp, #12]
 80032c4:	f003 fcfe 	bl	8006cc4 <__sprint_r>
 80032c8:	2800      	cmp	r0, #0
 80032ca:	f47f af45 	bne.w	8003158 <_vfprintf_r+0xaf0>
 80032ce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032d4:	e406      	b.n	8002ae4 <_vfprintf_r+0x47c>
 80032d6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80032d8:	2b00      	cmp	r3, #0
 80032da:	f340 8273 	ble.w	80037c4 <_vfprintf_r+0x115c>
 80032de:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80032e2:	4293      	cmp	r3, r2
 80032e4:	bfa8      	it	ge
 80032e6:	4613      	movge	r3, r2
 80032e8:	2b00      	cmp	r3, #0
 80032ea:	461d      	mov	r5, r3
 80032ec:	dd0d      	ble.n	800330a <_vfprintf_r+0xca2>
 80032ee:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032f0:	f8cb 7000 	str.w	r7, [fp]
 80032f4:	3301      	adds	r3, #1
 80032f6:	442c      	add	r4, r5
 80032f8:	2b07      	cmp	r3, #7
 80032fa:	942c      	str	r4, [sp, #176]	; 0xb0
 80032fc:	f8cb 5004 	str.w	r5, [fp, #4]
 8003300:	932b      	str	r3, [sp, #172]	; 0xac
 8003302:	f300 82c1 	bgt.w	8003888 <_vfprintf_r+0x1220>
 8003306:	f10b 0b08 	add.w	fp, fp, #8
 800330a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800330c:	2d00      	cmp	r5, #0
 800330e:	bfa8      	it	ge
 8003310:	1b5b      	subge	r3, r3, r5
 8003312:	2b00      	cmp	r3, #0
 8003314:	461d      	mov	r5, r3
 8003316:	f340 8099 	ble.w	800344c <_vfprintf_r+0xde4>
 800331a:	2d10      	cmp	r5, #16
 800331c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800331e:	4b2c      	ldr	r3, [pc, #176]	; (80033d0 <_vfprintf_r+0xd68>)
 8003320:	f340 83db 	ble.w	8003ada <_vfprintf_r+0x1472>
 8003324:	4618      	mov	r0, r3
 8003326:	4621      	mov	r1, r4
 8003328:	465b      	mov	r3, fp
 800332a:	2610      	movs	r6, #16
 800332c:	46bb      	mov	fp, r7
 800332e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003332:	9c07      	ldr	r4, [sp, #28]
 8003334:	4607      	mov	r7, r0
 8003336:	e004      	b.n	8003342 <_vfprintf_r+0xcda>
 8003338:	3308      	adds	r3, #8
 800333a:	3d10      	subs	r5, #16
 800333c:	2d10      	cmp	r5, #16
 800333e:	f340 83c7 	ble.w	8003ad0 <_vfprintf_r+0x1468>
 8003342:	3201      	adds	r2, #1
 8003344:	3110      	adds	r1, #16
 8003346:	2a07      	cmp	r2, #7
 8003348:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800334c:	e9c3 7600 	strd	r7, r6, [r3]
 8003350:	ddf2      	ble.n	8003338 <_vfprintf_r+0xcd0>
 8003352:	aa2a      	add	r2, sp, #168	; 0xa8
 8003354:	4621      	mov	r1, r4
 8003356:	4648      	mov	r0, r9
 8003358:	f003 fcb4 	bl	8006cc4 <__sprint_r>
 800335c:	2800      	cmp	r0, #0
 800335e:	f040 84a5 	bne.w	8003cac <_vfprintf_r+0x1644>
 8003362:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003366:	ab2d      	add	r3, sp, #180	; 0xb4
 8003368:	e7e7      	b.n	800333a <_vfprintf_r+0xcd2>
 800336a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800336e:	af56      	add	r7, sp, #344	; 0x158
 8003370:	f7ff bafb 	b.w	800296a <_vfprintf_r+0x302>
 8003374:	f1b9 0f00 	cmp.w	r9, #0
 8003378:	f77f af4c 	ble.w	8003214 <_vfprintf_r+0xbac>
 800337c:	f1b9 0f10 	cmp.w	r9, #16
 8003380:	4b13      	ldr	r3, [pc, #76]	; (80033d0 <_vfprintf_r+0xd68>)
 8003382:	f340 8659 	ble.w	8004038 <_vfprintf_r+0x19d0>
 8003386:	4619      	mov	r1, r3
 8003388:	4622      	mov	r2, r4
 800338a:	4633      	mov	r3, r6
 800338c:	2710      	movs	r7, #16
 800338e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003392:	9c07      	ldr	r4, [sp, #28]
 8003394:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003396:	460e      	mov	r6, r1
 8003398:	e007      	b.n	80033aa <_vfprintf_r+0xd42>
 800339a:	3308      	adds	r3, #8
 800339c:	f1a9 0910 	sub.w	r9, r9, #16
 80033a0:	f1b9 0f10 	cmp.w	r9, #16
 80033a4:	f340 8353 	ble.w	8003a4e <_vfprintf_r+0x13e6>
 80033a8:	3501      	adds	r5, #1
 80033aa:	3210      	adds	r2, #16
 80033ac:	2d07      	cmp	r5, #7
 80033ae:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80033b2:	e9c3 6700 	strd	r6, r7, [r3]
 80033b6:	ddf0      	ble.n	800339a <_vfprintf_r+0xd32>
 80033b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80033ba:	4621      	mov	r1, r4
 80033bc:	4658      	mov	r0, fp
 80033be:	f003 fc81 	bl	8006cc4 <__sprint_r>
 80033c2:	2800      	cmp	r0, #0
 80033c4:	f040 8472 	bne.w	8003cac <_vfprintf_r+0x1644>
 80033c8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80033cc:	ab2d      	add	r3, sp, #180	; 0xb4
 80033ce:	e7e5      	b.n	800339c <_vfprintf_r+0xd34>
 80033d0:	080073b8 	.word	0x080073b8
 80033d4:	f018 0f01 	tst.w	r8, #1
 80033d8:	f47f aee0 	bne.w	800319c <_vfprintf_r+0xb34>
 80033dc:	2201      	movs	r2, #1
 80033de:	2d07      	cmp	r5, #7
 80033e0:	f8cb 7000 	str.w	r7, [fp]
 80033e4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80033e8:	f8cb 2004 	str.w	r2, [fp, #4]
 80033ec:	dc04      	bgt.n	80033f8 <_vfprintf_r+0xd90>
 80033ee:	3302      	adds	r3, #2
 80033f0:	9309      	str	r3, [sp, #36]	; 0x24
 80033f2:	f10b 0b10 	add.w	fp, fp, #16
 80033f6:	e70d      	b.n	8003214 <_vfprintf_r+0xbac>
 80033f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80033fa:	9907      	ldr	r1, [sp, #28]
 80033fc:	9803      	ldr	r0, [sp, #12]
 80033fe:	f003 fc61 	bl	8006cc4 <__sprint_r>
 8003402:	2800      	cmp	r0, #0
 8003404:	f47f aea8 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003408:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800340c:	3301      	adds	r3, #1
 800340e:	9309      	str	r3, [sp, #36]	; 0x24
 8003410:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003414:	ae2d      	add	r6, sp, #180	; 0xb4
 8003416:	e6fd      	b.n	8003214 <_vfprintf_r+0xbac>
 8003418:	aa2a      	add	r2, sp, #168	; 0xa8
 800341a:	9907      	ldr	r1, [sp, #28]
 800341c:	9803      	ldr	r0, [sp, #12]
 800341e:	f003 fc51 	bl	8006cc4 <__sprint_r>
 8003422:	2800      	cmp	r0, #0
 8003424:	f47f ae98 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003428:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800342c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800342e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003432:	f7ff baf6 	b.w	8002a22 <_vfprintf_r+0x3ba>
 8003436:	aa2a      	add	r2, sp, #168	; 0xa8
 8003438:	9907      	ldr	r1, [sp, #28]
 800343a:	9803      	ldr	r0, [sp, #12]
 800343c:	f003 fc42 	bl	8006cc4 <__sprint_r>
 8003440:	2800      	cmp	r0, #0
 8003442:	f47f ae89 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003446:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003448:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800344c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800344e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003452:	443b      	add	r3, r7
 8003454:	4699      	mov	r9, r3
 8003456:	f040 8357 	bne.w	8003b08 <_vfprintf_r+0x14a0>
 800345a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800345c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800345e:	4293      	cmp	r3, r2
 8003460:	db49      	blt.n	80034f6 <_vfprintf_r+0xe8e>
 8003462:	f018 0f01 	tst.w	r8, #1
 8003466:	d146      	bne.n	80034f6 <_vfprintf_r+0xe8e>
 8003468:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800346a:	18bd      	adds	r5, r7, r2
 800346c:	eba5 0509 	sub.w	r5, r5, r9
 8003470:	1ad3      	subs	r3, r2, r3
 8003472:	429d      	cmp	r5, r3
 8003474:	bfa8      	it	ge
 8003476:	461d      	movge	r5, r3
 8003478:	2d00      	cmp	r5, #0
 800347a:	dd0d      	ble.n	8003498 <_vfprintf_r+0xe30>
 800347c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800347e:	f8cb 9000 	str.w	r9, [fp]
 8003482:	3201      	adds	r2, #1
 8003484:	442c      	add	r4, r5
 8003486:	2a07      	cmp	r2, #7
 8003488:	942c      	str	r4, [sp, #176]	; 0xb0
 800348a:	f8cb 5004 	str.w	r5, [fp, #4]
 800348e:	922b      	str	r2, [sp, #172]	; 0xac
 8003490:	f300 8462 	bgt.w	8003d58 <_vfprintf_r+0x16f0>
 8003494:	f10b 0b08 	add.w	fp, fp, #8
 8003498:	2d00      	cmp	r5, #0
 800349a:	bfac      	ite	ge
 800349c:	1b5d      	subge	r5, r3, r5
 800349e:	461d      	movlt	r5, r3
 80034a0:	2d00      	cmp	r5, #0
 80034a2:	f77f ab32 	ble.w	8002b0a <_vfprintf_r+0x4a2>
 80034a6:	2d10      	cmp	r5, #16
 80034a8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034aa:	4bc5      	ldr	r3, [pc, #788]	; (80037c0 <_vfprintf_r+0x1158>)
 80034ac:	f340 80c4 	ble.w	8003638 <_vfprintf_r+0xfd0>
 80034b0:	4619      	mov	r1, r3
 80034b2:	2610      	movs	r6, #16
 80034b4:	4623      	mov	r3, r4
 80034b6:	9f03      	ldr	r7, [sp, #12]
 80034b8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80034bc:	460c      	mov	r4, r1
 80034be:	e005      	b.n	80034cc <_vfprintf_r+0xe64>
 80034c0:	f10b 0b08 	add.w	fp, fp, #8
 80034c4:	3d10      	subs	r5, #16
 80034c6:	2d10      	cmp	r5, #16
 80034c8:	f340 80b3 	ble.w	8003632 <_vfprintf_r+0xfca>
 80034cc:	3201      	adds	r2, #1
 80034ce:	3310      	adds	r3, #16
 80034d0:	2a07      	cmp	r2, #7
 80034d2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80034d6:	e9cb 4600 	strd	r4, r6, [fp]
 80034da:	ddf1      	ble.n	80034c0 <_vfprintf_r+0xe58>
 80034dc:	aa2a      	add	r2, sp, #168	; 0xa8
 80034de:	4649      	mov	r1, r9
 80034e0:	4638      	mov	r0, r7
 80034e2:	f003 fbef 	bl	8006cc4 <__sprint_r>
 80034e6:	2800      	cmp	r0, #0
 80034e8:	f47f ae38 	bne.w	800315c <_vfprintf_r+0xaf4>
 80034ec:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80034f0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034f4:	e7e6      	b.n	80034c4 <_vfprintf_r+0xe5c>
 80034f6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034f8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80034fa:	f8cb 1000 	str.w	r1, [fp]
 80034fe:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003500:	f8cb 1004 	str.w	r1, [fp, #4]
 8003504:	3201      	adds	r2, #1
 8003506:	440c      	add	r4, r1
 8003508:	2a07      	cmp	r2, #7
 800350a:	942c      	str	r4, [sp, #176]	; 0xb0
 800350c:	922b      	str	r2, [sp, #172]	; 0xac
 800350e:	f300 828c 	bgt.w	8003a2a <_vfprintf_r+0x13c2>
 8003512:	f10b 0b08 	add.w	fp, fp, #8
 8003516:	e7a7      	b.n	8003468 <_vfprintf_r+0xe00>
 8003518:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800351c:	f002 fa94 	bl	8005a48 <__retarget_lock_release_recursive>
 8003520:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003524:	e628      	b.n	8003178 <_vfprintf_r+0xb10>
 8003526:	aa2a      	add	r2, sp, #168	; 0xa8
 8003528:	9907      	ldr	r1, [sp, #28]
 800352a:	9803      	ldr	r0, [sp, #12]
 800352c:	f003 fbca 	bl	8006cc4 <__sprint_r>
 8003530:	2800      	cmp	r0, #0
 8003532:	f47f ae11 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003536:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800353a:	ae2d      	add	r6, sp, #180	; 0xb4
 800353c:	e638      	b.n	80031b0 <_vfprintf_r+0xb48>
 800353e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003540:	9907      	ldr	r1, [sp, #28]
 8003542:	9803      	ldr	r0, [sp, #12]
 8003544:	f003 fbbe 	bl	8006cc4 <__sprint_r>
 8003548:	2800      	cmp	r0, #0
 800354a:	f47f ae05 	bne.w	8003158 <_vfprintf_r+0xaf0>
 800354e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003552:	ae2d      	add	r6, sp, #180	; 0xb4
 8003554:	930b      	str	r3, [sp, #44]	; 0x2c
 8003556:	e638      	b.n	80031ca <_vfprintf_r+0xb62>
 8003558:	6814      	ldr	r4, [r2, #0]
 800355a:	9308      	str	r3, [sp, #32]
 800355c:	2500      	movs	r5, #0
 800355e:	f7ff bb95 	b.w	8002c8c <_vfprintf_r+0x624>
 8003562:	6814      	ldr	r4, [r2, #0]
 8003564:	9308      	str	r3, [sp, #32]
 8003566:	2500      	movs	r5, #0
 8003568:	f7ff b9ae 	b.w	80028c8 <_vfprintf_r+0x260>
 800356c:	680c      	ldr	r4, [r1, #0]
 800356e:	9208      	str	r2, [sp, #32]
 8003570:	17e5      	asrs	r5, r4, #31
 8003572:	4620      	mov	r0, r4
 8003574:	4629      	mov	r1, r5
 8003576:	f7ff b9d2 	b.w	800291e <_vfprintf_r+0x2b6>
 800357a:	6814      	ldr	r4, [r2, #0]
 800357c:	9108      	str	r1, [sp, #32]
 800357e:	2201      	movs	r2, #1
 8003580:	2500      	movs	r5, #0
 8003582:	f7ff bb32 	b.w	8002bea <_vfprintf_r+0x582>
 8003586:	2a01      	cmp	r2, #1
 8003588:	f47f ab3c 	bne.w	8002c04 <_vfprintf_r+0x59c>
 800358c:	e68f      	b.n	80032ae <_vfprintf_r+0xc46>
 800358e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003592:	2200      	movs	r2, #0
 8003594:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003598:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800359c:	af56      	add	r7, sp, #344	; 0x158
 800359e:	4692      	mov	sl, r2
 80035a0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80035a4:	461e      	mov	r6, r3
 80035a6:	e00a      	b.n	80035be <_vfprintf_r+0xf56>
 80035a8:	2300      	movs	r3, #0
 80035aa:	4620      	mov	r0, r4
 80035ac:	4629      	mov	r1, r5
 80035ae:	220a      	movs	r2, #10
 80035b0:	f7fc fe26 	bl	8000200 <__aeabi_uldivmod>
 80035b4:	4604      	mov	r4, r0
 80035b6:	460d      	mov	r5, r1
 80035b8:	ea54 0305 	orrs.w	r3, r4, r5
 80035bc:	d029      	beq.n	8003612 <_vfprintf_r+0xfaa>
 80035be:	220a      	movs	r2, #10
 80035c0:	2300      	movs	r3, #0
 80035c2:	4620      	mov	r0, r4
 80035c4:	4629      	mov	r1, r5
 80035c6:	f7fc fe1b 	bl	8000200 <__aeabi_uldivmod>
 80035ca:	3230      	adds	r2, #48	; 0x30
 80035cc:	f807 2c01 	strb.w	r2, [r7, #-1]
 80035d0:	f10a 0a01 	add.w	sl, sl, #1
 80035d4:	3f01      	subs	r7, #1
 80035d6:	2e00      	cmp	r6, #0
 80035d8:	d0e6      	beq.n	80035a8 <_vfprintf_r+0xf40>
 80035da:	f898 3000 	ldrb.w	r3, [r8]
 80035de:	459a      	cmp	sl, r3
 80035e0:	d1e2      	bne.n	80035a8 <_vfprintf_r+0xf40>
 80035e2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80035e6:	d0df      	beq.n	80035a8 <_vfprintf_r+0xf40>
 80035e8:	2d00      	cmp	r5, #0
 80035ea:	bf08      	it	eq
 80035ec:	2c0a      	cmpeq	r4, #10
 80035ee:	d3db      	bcc.n	80035a8 <_vfprintf_r+0xf40>
 80035f0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80035f2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80035f4:	1aff      	subs	r7, r7, r3
 80035f6:	461a      	mov	r2, r3
 80035f8:	4638      	mov	r0, r7
 80035fa:	f003 faf5 	bl	8006be8 <strncpy>
 80035fe:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003602:	2b00      	cmp	r3, #0
 8003604:	f000 8496 	beq.w	8003f34 <_vfprintf_r+0x18cc>
 8003608:	f108 0801 	add.w	r8, r8, #1
 800360c:	f04f 0a00 	mov.w	sl, #0
 8003610:	e7ca      	b.n	80035a8 <_vfprintf_r+0xf40>
 8003612:	9b04      	ldr	r3, [sp, #16]
 8003614:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003618:	1bdb      	subs	r3, r3, r7
 800361a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800361e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003620:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003624:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003628:	9309      	str	r3, [sp, #36]	; 0x24
 800362a:	f7ff b99e 	b.w	800296a <_vfprintf_r+0x302>
 800362e:	46c1      	mov	r9, r8
 8003630:	e594      	b.n	800315c <_vfprintf_r+0xaf4>
 8003632:	4621      	mov	r1, r4
 8003634:	461c      	mov	r4, r3
 8003636:	460b      	mov	r3, r1
 8003638:	3201      	adds	r2, #1
 800363a:	442c      	add	r4, r5
 800363c:	2a07      	cmp	r2, #7
 800363e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003642:	e9cb 3500 	strd	r3, r5, [fp]
 8003646:	f77f aa5e 	ble.w	8002b06 <_vfprintf_r+0x49e>
 800364a:	e5ee      	b.n	800322a <_vfprintf_r+0xbc2>
 800364c:	f018 0f10 	tst.w	r8, #16
 8003650:	f040 80f8 	bne.w	8003844 <_vfprintf_r+0x11dc>
 8003654:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003658:	f000 8351 	beq.w	8003cfe <_vfprintf_r+0x1696>
 800365c:	9a05      	ldr	r2, [sp, #20]
 800365e:	801a      	strh	r2, [r3, #0]
 8003660:	4657      	mov	r7, sl
 8003662:	f7ff baa7 	b.w	8002bb4 <_vfprintf_r+0x54c>
 8003666:	aa2a      	add	r2, sp, #168	; 0xa8
 8003668:	9907      	ldr	r1, [sp, #28]
 800366a:	9803      	ldr	r0, [sp, #12]
 800366c:	f003 fb2a 	bl	8006cc4 <__sprint_r>
 8003670:	2800      	cmp	r0, #0
 8003672:	f47f ad71 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003676:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003678:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800367c:	f7ff b9f5 	b.w	8002a6a <_vfprintf_r+0x402>
 8003680:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003684:	4602      	mov	r2, r0
 8003686:	460b      	mov	r3, r1
 8003688:	f7fd fcf0 	bl	800106c <__aeabi_dcmpun>
 800368c:	2800      	cmp	r0, #0
 800368e:	f040 8491 	bne.w	8003fb4 <_vfprintf_r+0x194c>
 8003692:	2e61      	cmp	r6, #97	; 0x61
 8003694:	f000 8111 	beq.w	80038ba <_vfprintf_r+0x1252>
 8003698:	2e41      	cmp	r6, #65	; 0x41
 800369a:	f000 8377 	beq.w	8003d8c <_vfprintf_r+0x1724>
 800369e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80036a2:	f026 0220 	bic.w	r2, r6, #32
 80036a6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80036aa:	930e      	str	r3, [sp, #56]	; 0x38
 80036ac:	9204      	str	r2, [sp, #16]
 80036ae:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80036b0:	f000 842d 	beq.w	8003f0e <_vfprintf_r+0x18a6>
 80036b4:	2a47      	cmp	r2, #71	; 0x47
 80036b6:	f000 8424 	beq.w	8003f02 <_vfprintf_r+0x189a>
 80036ba:	2b00      	cmp	r3, #0
 80036bc:	f2c0 82f9 	blt.w	8003cb2 <_vfprintf_r+0x164a>
 80036c0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80036c4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80036c8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80036cc:	2e66      	cmp	r6, #102	; 0x66
 80036ce:	f000 83eb 	beq.w	8003ea8 <_vfprintf_r+0x1840>
 80036d2:	2e46      	cmp	r6, #70	; 0x46
 80036d4:	f000 847e 	beq.w	8003fd4 <_vfprintf_r+0x196c>
 80036d8:	9b04      	ldr	r3, [sp, #16]
 80036da:	9803      	ldr	r0, [sp, #12]
 80036dc:	2b45      	cmp	r3, #69	; 0x45
 80036de:	bf0c      	ite	eq
 80036e0:	f109 0501 	addeq.w	r5, r9, #1
 80036e4:	464d      	movne	r5, r9
 80036e6:	aa28      	add	r2, sp, #160	; 0xa0
 80036e8:	ab25      	add	r3, sp, #148	; 0x94
 80036ea:	e9cd 3200 	strd	r3, r2, [sp]
 80036ee:	2102      	movs	r1, #2
 80036f0:	ab24      	add	r3, sp, #144	; 0x90
 80036f2:	462a      	mov	r2, r5
 80036f4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80036f8:	f000 fe3e 	bl	8004378 <_dtoa_r>
 80036fc:	2e67      	cmp	r6, #103	; 0x67
 80036fe:	4607      	mov	r7, r0
 8003700:	f040 849c 	bne.w	800403c <_vfprintf_r+0x19d4>
 8003704:	f018 0f01 	tst.w	r8, #1
 8003708:	f040 83f9 	bne.w	8003efe <_vfprintf_r+0x1896>
 800370c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800370e:	4640      	mov	r0, r8
 8003710:	1bdb      	subs	r3, r3, r7
 8003712:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003716:	9310      	str	r3, [sp, #64]	; 0x40
 8003718:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800371a:	9311      	str	r3, [sp, #68]	; 0x44
 800371c:	9b04      	ldr	r3, [sp, #16]
 800371e:	2b47      	cmp	r3, #71	; 0x47
 8003720:	f000 81e7 	beq.w	8003af2 <_vfprintf_r+0x148a>
 8003724:	9b04      	ldr	r3, [sp, #16]
 8003726:	2b46      	cmp	r3, #70	; 0x46
 8003728:	f000 8300 	beq.w	8003d2c <_vfprintf_r+0x16c4>
 800372c:	9904      	ldr	r1, [sp, #16]
 800372e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003730:	b2f2      	uxtb	r2, r6
 8003732:	2941      	cmp	r1, #65	; 0x41
 8003734:	bf08      	it	eq
 8003736:	320f      	addeq	r2, #15
 8003738:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800373c:	bf06      	itte	eq
 800373e:	b2d2      	uxtbeq	r2, r2
 8003740:	2101      	moveq	r1, #1
 8003742:	2100      	movne	r1, #0
 8003744:	2b00      	cmp	r3, #0
 8003746:	9324      	str	r3, [sp, #144]	; 0x90
 8003748:	bfb8      	it	lt
 800374a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800374c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003750:	bfba      	itte	lt
 8003752:	f1c3 0301 	rsblt	r3, r3, #1
 8003756:	222d      	movlt	r2, #45	; 0x2d
 8003758:	222b      	movge	r2, #43	; 0x2b
 800375a:	2b09      	cmp	r3, #9
 800375c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003760:	f300 83f9 	bgt.w	8003f56 <_vfprintf_r+0x18ee>
 8003764:	2900      	cmp	r1, #0
 8003766:	f040 8487 	bne.w	8004078 <_vfprintf_r+0x1a10>
 800376a:	2230      	movs	r2, #48	; 0x30
 800376c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003770:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003774:	3330      	adds	r3, #48	; 0x30
 8003776:	7013      	strb	r3, [r2, #0]
 8003778:	1c53      	adds	r3, r2, #1
 800377a:	aa26      	add	r2, sp, #152	; 0x98
 800377c:	1a9b      	subs	r3, r3, r2
 800377e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003780:	9319      	str	r3, [sp, #100]	; 0x64
 8003782:	2a01      	cmp	r2, #1
 8003784:	4413      	add	r3, r2
 8003786:	9309      	str	r3, [sp, #36]	; 0x24
 8003788:	f340 8442 	ble.w	8004010 <_vfprintf_r+0x19a8>
 800378c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800378e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003790:	4413      	add	r3, r2
 8003792:	9309      	str	r3, [sp, #36]	; 0x24
 8003794:	2300      	movs	r3, #0
 8003796:	930f      	str	r3, [sp, #60]	; 0x3c
 8003798:	9314      	str	r3, [sp, #80]	; 0x50
 800379a:	9311      	str	r3, [sp, #68]	; 0x44
 800379c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800379e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80037a2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80037a6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80037aa:	9304      	str	r3, [sp, #16]
 80037ac:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80037ae:	2b00      	cmp	r3, #0
 80037b0:	f040 8275 	bne.w	8003c9e <_vfprintf_r+0x1636>
 80037b4:	4699      	mov	r9, r3
 80037b6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80037ba:	f7ff b8e2 	b.w	8002982 <_vfprintf_r+0x31a>
 80037be:	bf00      	nop
 80037c0:	080073b8 	.word	0x080073b8
 80037c4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80037c6:	49bd      	ldr	r1, [pc, #756]	; (8003abc <_vfprintf_r+0x1454>)
 80037c8:	f8cb 1000 	str.w	r1, [fp]
 80037cc:	3201      	adds	r2, #1
 80037ce:	3401      	adds	r4, #1
 80037d0:	2101      	movs	r1, #1
 80037d2:	2a07      	cmp	r2, #7
 80037d4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80037d8:	f8cb 1004 	str.w	r1, [fp, #4]
 80037dc:	dc60      	bgt.n	80038a0 <_vfprintf_r+0x1238>
 80037de:	f10b 0b08 	add.w	fp, fp, #8
 80037e2:	b92b      	cbnz	r3, 80037f0 <_vfprintf_r+0x1188>
 80037e4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80037e6:	b91a      	cbnz	r2, 80037f0 <_vfprintf_r+0x1188>
 80037e8:	f018 0f01 	tst.w	r8, #1
 80037ec:	f43f a98d 	beq.w	8002b0a <_vfprintf_r+0x4a2>
 80037f0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80037f2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80037f4:	f8cb 1000 	str.w	r1, [fp]
 80037f8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80037fa:	f8cb 1004 	str.w	r1, [fp, #4]
 80037fe:	3201      	adds	r2, #1
 8003800:	440c      	add	r4, r1
 8003802:	2a07      	cmp	r2, #7
 8003804:	942c      	str	r4, [sp, #176]	; 0xb0
 8003806:	922b      	str	r2, [sp, #172]	; 0xac
 8003808:	f300 8282 	bgt.w	8003d10 <_vfprintf_r+0x16a8>
 800380c:	f10b 0b08 	add.w	fp, fp, #8
 8003810:	2b00      	cmp	r3, #0
 8003812:	f2c0 82e7 	blt.w	8003de4 <_vfprintf_r+0x177c>
 8003816:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003818:	3201      	adds	r2, #1
 800381a:	441c      	add	r4, r3
 800381c:	2a07      	cmp	r2, #7
 800381e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003822:	e9cb 7300 	strd	r7, r3, [fp]
 8003826:	f77f a96e 	ble.w	8002b06 <_vfprintf_r+0x49e>
 800382a:	e4fe      	b.n	800322a <_vfprintf_r+0xbc2>
 800382c:	aa2a      	add	r2, sp, #168	; 0xa8
 800382e:	9907      	ldr	r1, [sp, #28]
 8003830:	9803      	ldr	r0, [sp, #12]
 8003832:	f003 fa47 	bl	8006cc4 <__sprint_r>
 8003836:	2800      	cmp	r0, #0
 8003838:	f47f ac8e 	bne.w	8003158 <_vfprintf_r+0xaf0>
 800383c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003840:	f7ff bbf0 	b.w	8003024 <_vfprintf_r+0x9bc>
 8003844:	9a05      	ldr	r2, [sp, #20]
 8003846:	601a      	str	r2, [r3, #0]
 8003848:	4657      	mov	r7, sl
 800384a:	f7ff b9b3 	b.w	8002bb4 <_vfprintf_r+0x54c>
 800384e:	8814      	ldrh	r4, [r2, #0]
 8003850:	9108      	str	r1, [sp, #32]
 8003852:	2500      	movs	r5, #0
 8003854:	2201      	movs	r2, #1
 8003856:	f7ff b9c8 	b.w	8002bea <_vfprintf_r+0x582>
 800385a:	8814      	ldrh	r4, [r2, #0]
 800385c:	9308      	str	r3, [sp, #32]
 800385e:	2500      	movs	r5, #0
 8003860:	f7ff ba14 	b.w	8002c8c <_vfprintf_r+0x624>
 8003864:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003868:	9208      	str	r2, [sp, #32]
 800386a:	17e5      	asrs	r5, r4, #31
 800386c:	4620      	mov	r0, r4
 800386e:	4629      	mov	r1, r5
 8003870:	f7ff b855 	b.w	800291e <_vfprintf_r+0x2b6>
 8003874:	8814      	ldrh	r4, [r2, #0]
 8003876:	9308      	str	r3, [sp, #32]
 8003878:	2500      	movs	r5, #0
 800387a:	f7ff b825 	b.w	80028c8 <_vfprintf_r+0x260>
 800387e:	222d      	movs	r2, #45	; 0x2d
 8003880:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003884:	f7ff baa2 	b.w	8002dcc <_vfprintf_r+0x764>
 8003888:	aa2a      	add	r2, sp, #168	; 0xa8
 800388a:	9907      	ldr	r1, [sp, #28]
 800388c:	9803      	ldr	r0, [sp, #12]
 800388e:	f003 fa19 	bl	8006cc4 <__sprint_r>
 8003892:	2800      	cmp	r0, #0
 8003894:	f47f ac60 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003898:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800389a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800389e:	e534      	b.n	800330a <_vfprintf_r+0xca2>
 80038a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80038a2:	9907      	ldr	r1, [sp, #28]
 80038a4:	9803      	ldr	r0, [sp, #12]
 80038a6:	f003 fa0d 	bl	8006cc4 <__sprint_r>
 80038aa:	2800      	cmp	r0, #0
 80038ac:	f47f ac54 	bne.w	8003158 <_vfprintf_r+0xaf0>
 80038b0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80038b2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038b4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038b8:	e793      	b.n	80037e2 <_vfprintf_r+0x117a>
 80038ba:	2330      	movs	r3, #48	; 0x30
 80038bc:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80038c0:	2378      	movs	r3, #120	; 0x78
 80038c2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80038c6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80038ca:	f048 0402 	orr.w	r4, r8, #2
 80038ce:	f300 82b0 	bgt.w	8003e32 <_vfprintf_r+0x17ca>
 80038d2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80038d6:	930e      	str	r3, [sp, #56]	; 0x38
 80038d8:	f026 0320 	bic.w	r3, r6, #32
 80038dc:	9304      	str	r3, [sp, #16]
 80038de:	2200      	movs	r2, #0
 80038e0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80038e2:	920a      	str	r2, [sp, #40]	; 0x28
 80038e4:	46a0      	mov	r8, r4
 80038e6:	af3d      	add	r7, sp, #244	; 0xf4
 80038e8:	2b00      	cmp	r3, #0
 80038ea:	f2c0 81e3 	blt.w	8003cb4 <_vfprintf_r+0x164c>
 80038ee:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80038f2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80038f6:	2300      	movs	r3, #0
 80038f8:	930b      	str	r3, [sp, #44]	; 0x2c
 80038fa:	2e61      	cmp	r6, #97	; 0x61
 80038fc:	f000 8255 	beq.w	8003daa <_vfprintf_r+0x1742>
 8003900:	2e41      	cmp	r6, #65	; 0x41
 8003902:	f47f aee3 	bne.w	80036cc <_vfprintf_r+0x1064>
 8003906:	a824      	add	r0, sp, #144	; 0x90
 8003908:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800390c:	f003 f8e2 	bl	8006ad4 <frexp>
 8003910:	2200      	movs	r2, #0
 8003912:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003916:	ec51 0b10 	vmov	r0, r1, d0
 800391a:	f7fd f90d 	bl	8000b38 <__aeabi_dmul>
 800391e:	2200      	movs	r2, #0
 8003920:	2300      	movs	r3, #0
 8003922:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003926:	f7fd fb6f 	bl	8001008 <__aeabi_dcmpeq>
 800392a:	2800      	cmp	r0, #0
 800392c:	f040 8305 	bne.w	8003f3a <_vfprintf_r+0x18d2>
 8003930:	4b63      	ldr	r3, [pc, #396]	; (8003ac0 <_vfprintf_r+0x1458>)
 8003932:	9309      	str	r3, [sp, #36]	; 0x24
 8003934:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003938:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800393c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003940:	9721      	str	r7, [sp, #132]	; 0x84
 8003942:	46b9      	mov	r9, r7
 8003944:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003948:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800394c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003950:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003954:	e003      	b.n	800395e <_vfprintf_r+0x12f6>
 8003956:	f7fd fb57 	bl	8001008 <__aeabi_dcmpeq>
 800395a:	bb20      	cbnz	r0, 80039a6 <_vfprintf_r+0x133e>
 800395c:	46a9      	mov	r9, r5
 800395e:	2200      	movs	r2, #0
 8003960:	4b58      	ldr	r3, [pc, #352]	; (8003ac4 <_vfprintf_r+0x145c>)
 8003962:	4630      	mov	r0, r6
 8003964:	4639      	mov	r1, r7
 8003966:	f7fd f8e7 	bl	8000b38 <__aeabi_dmul>
 800396a:	460f      	mov	r7, r1
 800396c:	4606      	mov	r6, r0
 800396e:	f7fd fb93 	bl	8001098 <__aeabi_d2iz>
 8003972:	4680      	mov	r8, r0
 8003974:	f7fd f876 	bl	8000a64 <__aeabi_i2d>
 8003978:	4602      	mov	r2, r0
 800397a:	460b      	mov	r3, r1
 800397c:	4630      	mov	r0, r6
 800397e:	4639      	mov	r1, r7
 8003980:	f7fc ff22 	bl	80007c8 <__aeabi_dsub>
 8003984:	464d      	mov	r5, r9
 8003986:	f81a c008 	ldrb.w	ip, [sl, r8]
 800398a:	f805 cb01 	strb.w	ip, [r5], #1
 800398e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003992:	46a3      	mov	fp, r4
 8003994:	4606      	mov	r6, r0
 8003996:	460f      	mov	r7, r1
 8003998:	f04f 0200 	mov.w	r2, #0
 800399c:	f04f 0300 	mov.w	r3, #0
 80039a0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80039a4:	d1d7      	bne.n	8003956 <_vfprintf_r+0x12ee>
 80039a6:	4630      	mov	r0, r6
 80039a8:	4639      	mov	r1, r7
 80039aa:	2200      	movs	r2, #0
 80039ac:	4b46      	ldr	r3, [pc, #280]	; (8003ac8 <_vfprintf_r+0x1460>)
 80039ae:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80039b2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80039b4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80039b8:	4644      	mov	r4, r8
 80039ba:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80039be:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80039c2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80039c6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80039ca:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80039cc:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80039d0:	f7fd fb42 	bl	8001058 <__aeabi_dcmpgt>
 80039d4:	2800      	cmp	r0, #0
 80039d6:	f040 8176 	bne.w	8003cc6 <_vfprintf_r+0x165e>
 80039da:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80039de:	2200      	movs	r2, #0
 80039e0:	4b39      	ldr	r3, [pc, #228]	; (8003ac8 <_vfprintf_r+0x1460>)
 80039e2:	f7fd fb11 	bl	8001008 <__aeabi_dcmpeq>
 80039e6:	b110      	cbz	r0, 80039ee <_vfprintf_r+0x1386>
 80039e8:	07e2      	lsls	r2, r4, #31
 80039ea:	f100 816c 	bmi.w	8003cc6 <_vfprintf_r+0x165e>
 80039ee:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039f0:	2b00      	cmp	r3, #0
 80039f2:	db07      	blt.n	8003a04 <_vfprintf_r+0x139c>
 80039f4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039f6:	3301      	adds	r3, #1
 80039f8:	442b      	add	r3, r5
 80039fa:	2230      	movs	r2, #48	; 0x30
 80039fc:	f805 2b01 	strb.w	r2, [r5], #1
 8003a00:	42ab      	cmp	r3, r5
 8003a02:	d1fb      	bne.n	80039fc <_vfprintf_r+0x1394>
 8003a04:	1beb      	subs	r3, r5, r7
 8003a06:	4640      	mov	r0, r8
 8003a08:	9310      	str	r3, [sp, #64]	; 0x40
 8003a0a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003a0e:	e683      	b.n	8003718 <_vfprintf_r+0x10b0>
 8003a10:	f8cd 9010 	str.w	r9, [sp, #16]
 8003a14:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003a18:	9408      	str	r4, [sp, #32]
 8003a1a:	4681      	mov	r9, r0
 8003a1c:	900f      	str	r0, [sp, #60]	; 0x3c
 8003a1e:	9014      	str	r0, [sp, #80]	; 0x50
 8003a20:	9011      	str	r0, [sp, #68]	; 0x44
 8003a22:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003a26:	f7fe bfac 	b.w	8002982 <_vfprintf_r+0x31a>
 8003a2a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a2c:	9907      	ldr	r1, [sp, #28]
 8003a2e:	9803      	ldr	r0, [sp, #12]
 8003a30:	f003 f948 	bl	8006cc4 <__sprint_r>
 8003a34:	2800      	cmp	r0, #0
 8003a36:	f47f ab8f 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003a3a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a42:	e511      	b.n	8003468 <_vfprintf_r+0xe00>
 8003a44:	4252      	negs	r2, r2
 8003a46:	9206      	str	r2, [sp, #24]
 8003a48:	9308      	str	r3, [sp, #32]
 8003a4a:	f7ff b96d 	b.w	8002d28 <_vfprintf_r+0x6c0>
 8003a4e:	4614      	mov	r4, r2
 8003a50:	4632      	mov	r2, r6
 8003a52:	461e      	mov	r6, r3
 8003a54:	4613      	mov	r3, r2
 8003a56:	462a      	mov	r2, r5
 8003a58:	3201      	adds	r2, #1
 8003a5a:	9209      	str	r2, [sp, #36]	; 0x24
 8003a5c:	f106 0208 	add.w	r2, r6, #8
 8003a60:	e9c6 3900 	strd	r3, r9, [r6]
 8003a64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a66:	932b      	str	r3, [sp, #172]	; 0xac
 8003a68:	444c      	add	r4, r9
 8003a6a:	2b07      	cmp	r3, #7
 8003a6c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003a6e:	f73f acc3 	bgt.w	80033f8 <_vfprintf_r+0xd90>
 8003a72:	3301      	adds	r3, #1
 8003a74:	9309      	str	r3, [sp, #36]	; 0x24
 8003a76:	f102 0b08 	add.w	fp, r2, #8
 8003a7a:	4616      	mov	r6, r2
 8003a7c:	f7ff bbca 	b.w	8003214 <_vfprintf_r+0xbac>
 8003a80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a82:	9907      	ldr	r1, [sp, #28]
 8003a84:	9803      	ldr	r0, [sp, #12]
 8003a86:	f003 f91d 	bl	8006cc4 <__sprint_r>
 8003a8a:	2800      	cmp	r0, #0
 8003a8c:	f47f ab64 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003a90:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a92:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a96:	f7ff bade 	b.w	8003056 <_vfprintf_r+0x9ee>
 8003a9a:	464b      	mov	r3, r9
 8003a9c:	2b06      	cmp	r3, #6
 8003a9e:	bf28      	it	cs
 8003aa0:	2306      	movcs	r3, #6
 8003aa2:	46b9      	mov	r9, r7
 8003aa4:	970f      	str	r7, [sp, #60]	; 0x3c
 8003aa6:	9714      	str	r7, [sp, #80]	; 0x50
 8003aa8:	9711      	str	r7, [sp, #68]	; 0x44
 8003aaa:	970a      	str	r7, [sp, #40]	; 0x28
 8003aac:	463a      	mov	r2, r7
 8003aae:	9304      	str	r3, [sp, #16]
 8003ab0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003ab4:	4f05      	ldr	r7, [pc, #20]	; (8003acc <_vfprintf_r+0x1464>)
 8003ab6:	f7fe bf64 	b.w	8002982 <_vfprintf_r+0x31a>
 8003aba:	bf00      	nop
 8003abc:	080073a4 	.word	0x080073a4
 8003ac0:	08007388 	.word	0x08007388
 8003ac4:	40300000 	.word	0x40300000
 8003ac8:	3fe00000 	.word	0x3fe00000
 8003acc:	0800739c 	.word	0x0800739c
 8003ad0:	460c      	mov	r4, r1
 8003ad2:	4639      	mov	r1, r7
 8003ad4:	465f      	mov	r7, fp
 8003ad6:	469b      	mov	fp, r3
 8003ad8:	460b      	mov	r3, r1
 8003ada:	3201      	adds	r2, #1
 8003adc:	442c      	add	r4, r5
 8003ade:	2a07      	cmp	r2, #7
 8003ae0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ae4:	e9cb 3500 	strd	r3, r5, [fp]
 8003ae8:	f73f aca5 	bgt.w	8003436 <_vfprintf_r+0xdce>
 8003aec:	f10b 0b08 	add.w	fp, fp, #8
 8003af0:	e4ac      	b.n	800344c <_vfprintf_r+0xde4>
 8003af2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003af4:	1cda      	adds	r2, r3, #3
 8003af6:	db02      	blt.n	8003afe <_vfprintf_r+0x1496>
 8003af8:	4599      	cmp	r9, r3
 8003afa:	f280 80b5 	bge.w	8003c68 <_vfprintf_r+0x1600>
 8003afe:	3e02      	subs	r6, #2
 8003b00:	f026 0320 	bic.w	r3, r6, #32
 8003b04:	9304      	str	r3, [sp, #16]
 8003b06:	e611      	b.n	800372c <_vfprintf_r+0x10c4>
 8003b08:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b0a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003b0e:	465a      	mov	r2, fp
 8003b10:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003b14:	18fb      	adds	r3, r7, r3
 8003b16:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003b1a:	970c      	str	r7, [sp, #48]	; 0x30
 8003b1c:	4eaf      	ldr	r6, [pc, #700]	; (8003ddc <_vfprintf_r+0x1774>)
 8003b1e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003b22:	9309      	str	r3, [sp, #36]	; 0x24
 8003b24:	464f      	mov	r7, r9
 8003b26:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003b2a:	4621      	mov	r1, r4
 8003b2c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b2e:	2b00      	cmp	r3, #0
 8003b30:	d05b      	beq.n	8003bea <_vfprintf_r+0x1582>
 8003b32:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b34:	2b00      	cmp	r3, #0
 8003b36:	d154      	bne.n	8003be2 <_vfprintf_r+0x157a>
 8003b38:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b3a:	3b01      	subs	r3, #1
 8003b3c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003b40:	9314      	str	r3, [sp, #80]	; 0x50
 8003b42:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003b44:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003b46:	6010      	str	r0, [r2, #0]
 8003b48:	3301      	adds	r3, #1
 8003b4a:	4459      	add	r1, fp
 8003b4c:	2b07      	cmp	r3, #7
 8003b4e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003b50:	f8c2 b004 	str.w	fp, [r2, #4]
 8003b54:	932b      	str	r3, [sp, #172]	; 0xac
 8003b56:	dc68      	bgt.n	8003c2a <_vfprintf_r+0x15c2>
 8003b58:	3208      	adds	r2, #8
 8003b5a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003b5c:	f898 3000 	ldrb.w	r3, [r8]
 8003b60:	1bc5      	subs	r5, r0, r7
 8003b62:	429d      	cmp	r5, r3
 8003b64:	bfa8      	it	ge
 8003b66:	461d      	movge	r5, r3
 8003b68:	2d00      	cmp	r5, #0
 8003b6a:	dd0b      	ble.n	8003b84 <_vfprintf_r+0x151c>
 8003b6c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003b6e:	6017      	str	r7, [r2, #0]
 8003b70:	3301      	adds	r3, #1
 8003b72:	4429      	add	r1, r5
 8003b74:	2b07      	cmp	r3, #7
 8003b76:	912c      	str	r1, [sp, #176]	; 0xb0
 8003b78:	6055      	str	r5, [r2, #4]
 8003b7a:	932b      	str	r3, [sp, #172]	; 0xac
 8003b7c:	dc5e      	bgt.n	8003c3c <_vfprintf_r+0x15d4>
 8003b7e:	f898 3000 	ldrb.w	r3, [r8]
 8003b82:	3208      	adds	r2, #8
 8003b84:	2d00      	cmp	r5, #0
 8003b86:	bfac      	ite	ge
 8003b88:	1b5d      	subge	r5, r3, r5
 8003b8a:	461d      	movlt	r5, r3
 8003b8c:	2d00      	cmp	r5, #0
 8003b8e:	dd26      	ble.n	8003bde <_vfprintf_r+0x1576>
 8003b90:	2d10      	cmp	r5, #16
 8003b92:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003b94:	dd3c      	ble.n	8003c10 <_vfprintf_r+0x15a8>
 8003b96:	2410      	movs	r4, #16
 8003b98:	e003      	b.n	8003ba2 <_vfprintf_r+0x153a>
 8003b9a:	3208      	adds	r2, #8
 8003b9c:	3d10      	subs	r5, #16
 8003b9e:	2d10      	cmp	r5, #16
 8003ba0:	dd36      	ble.n	8003c10 <_vfprintf_r+0x15a8>
 8003ba2:	3001      	adds	r0, #1
 8003ba4:	3110      	adds	r1, #16
 8003ba6:	2807      	cmp	r0, #7
 8003ba8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003bac:	e9c2 6400 	strd	r6, r4, [r2]
 8003bb0:	ddf3      	ble.n	8003b9a <_vfprintf_r+0x1532>
 8003bb2:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bb4:	4651      	mov	r1, sl
 8003bb6:	4648      	mov	r0, r9
 8003bb8:	f003 f884 	bl	8006cc4 <__sprint_r>
 8003bbc:	2800      	cmp	r0, #0
 8003bbe:	d150      	bne.n	8003c62 <_vfprintf_r+0x15fa>
 8003bc0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003bc4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003bc6:	e7e9      	b.n	8003b9c <_vfprintf_r+0x1534>
 8003bc8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bca:	4651      	mov	r1, sl
 8003bcc:	4648      	mov	r0, r9
 8003bce:	f003 f879 	bl	8006cc4 <__sprint_r>
 8003bd2:	2800      	cmp	r0, #0
 8003bd4:	d145      	bne.n	8003c62 <_vfprintf_r+0x15fa>
 8003bd6:	f898 3000 	ldrb.w	r3, [r8]
 8003bda:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003bdc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003bde:	441f      	add	r7, r3
 8003be0:	e7a4      	b.n	8003b2c <_vfprintf_r+0x14c4>
 8003be2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003be4:	3b01      	subs	r3, #1
 8003be6:	930f      	str	r3, [sp, #60]	; 0x3c
 8003be8:	e7ab      	b.n	8003b42 <_vfprintf_r+0x14da>
 8003bea:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003bec:	2b00      	cmp	r3, #0
 8003bee:	d1f8      	bne.n	8003be2 <_vfprintf_r+0x157a>
 8003bf0:	46b9      	mov	r9, r7
 8003bf2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bf4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003bf6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003bfa:	18fb      	adds	r3, r7, r3
 8003bfc:	4599      	cmp	r9, r3
 8003bfe:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003c02:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003c06:	4693      	mov	fp, r2
 8003c08:	460c      	mov	r4, r1
 8003c0a:	bf28      	it	cs
 8003c0c:	4699      	movcs	r9, r3
 8003c0e:	e424      	b.n	800345a <_vfprintf_r+0xdf2>
 8003c10:	3001      	adds	r0, #1
 8003c12:	4429      	add	r1, r5
 8003c14:	2807      	cmp	r0, #7
 8003c16:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003c1a:	e9c2 6500 	strd	r6, r5, [r2]
 8003c1e:	dcd3      	bgt.n	8003bc8 <_vfprintf_r+0x1560>
 8003c20:	f898 3000 	ldrb.w	r3, [r8]
 8003c24:	3208      	adds	r2, #8
 8003c26:	441f      	add	r7, r3
 8003c28:	e780      	b.n	8003b2c <_vfprintf_r+0x14c4>
 8003c2a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c2c:	4651      	mov	r1, sl
 8003c2e:	4648      	mov	r0, r9
 8003c30:	f003 f848 	bl	8006cc4 <__sprint_r>
 8003c34:	b9a8      	cbnz	r0, 8003c62 <_vfprintf_r+0x15fa>
 8003c36:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003c38:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c3a:	e78e      	b.n	8003b5a <_vfprintf_r+0x14f2>
 8003c3c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c3e:	4651      	mov	r1, sl
 8003c40:	4648      	mov	r0, r9
 8003c42:	f003 f83f 	bl	8006cc4 <__sprint_r>
 8003c46:	b960      	cbnz	r0, 8003c62 <_vfprintf_r+0x15fa>
 8003c48:	f898 3000 	ldrb.w	r3, [r8]
 8003c4c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003c4e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c50:	e798      	b.n	8003b84 <_vfprintf_r+0x151c>
 8003c52:	4638      	mov	r0, r7
 8003c54:	f7fc fcf4 	bl	8000640 <strlen>
 8003c58:	46a9      	mov	r9, r5
 8003c5a:	4603      	mov	r3, r0
 8003c5c:	9009      	str	r0, [sp, #36]	; 0x24
 8003c5e:	f7ff b8f4 	b.w	8002e4a <_vfprintf_r+0x7e2>
 8003c62:	46d1      	mov	r9, sl
 8003c64:	f7ff ba7a 	b.w	800315c <_vfprintf_r+0xaf4>
 8003c68:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c6a:	4619      	mov	r1, r3
 8003c6c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c6e:	4299      	cmp	r1, r3
 8003c70:	f300 8082 	bgt.w	8003d78 <_vfprintf_r+0x1710>
 8003c74:	07c4      	lsls	r4, r0, #31
 8003c76:	f140 816b 	bpl.w	8003f50 <_vfprintf_r+0x18e8>
 8003c7a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c7c:	4413      	add	r3, r2
 8003c7e:	9309      	str	r3, [sp, #36]	; 0x24
 8003c80:	0541      	lsls	r1, r0, #21
 8003c82:	d503      	bpl.n	8003c8c <_vfprintf_r+0x1624>
 8003c84:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c86:	2b00      	cmp	r3, #0
 8003c88:	f300 80e6 	bgt.w	8003e58 <_vfprintf_r+0x17f0>
 8003c8c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c8e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c92:	9304      	str	r3, [sp, #16]
 8003c94:	2667      	movs	r6, #103	; 0x67
 8003c96:	2300      	movs	r3, #0
 8003c98:	930f      	str	r3, [sp, #60]	; 0x3c
 8003c9a:	9314      	str	r3, [sp, #80]	; 0x50
 8003c9c:	e586      	b.n	80037ac <_vfprintf_r+0x1144>
 8003c9e:	222d      	movs	r2, #45	; 0x2d
 8003ca0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003ca4:	f04f 0900 	mov.w	r9, #0
 8003ca8:	f7fe be6c 	b.w	8002984 <_vfprintf_r+0x31c>
 8003cac:	46a1      	mov	r9, r4
 8003cae:	f7ff ba55 	b.w	800315c <_vfprintf_r+0xaf4>
 8003cb2:	900a      	str	r0, [sp, #40]	; 0x28
 8003cb4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003cb8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003cbc:	931f      	str	r3, [sp, #124]	; 0x7c
 8003cbe:	232d      	movs	r3, #45	; 0x2d
 8003cc0:	911e      	str	r1, [sp, #120]	; 0x78
 8003cc2:	930b      	str	r3, [sp, #44]	; 0x2c
 8003cc4:	e619      	b.n	80038fa <_vfprintf_r+0x1292>
 8003cc6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cc8:	9328      	str	r3, [sp, #160]	; 0xa0
 8003cca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ccc:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003cd0:	7bd9      	ldrb	r1, [r3, #15]
 8003cd2:	4291      	cmp	r1, r2
 8003cd4:	462b      	mov	r3, r5
 8003cd6:	d109      	bne.n	8003cec <_vfprintf_r+0x1684>
 8003cd8:	2030      	movs	r0, #48	; 0x30
 8003cda:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003cde:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ce0:	1e5a      	subs	r2, r3, #1
 8003ce2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003ce4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003ce8:	4291      	cmp	r1, r2
 8003cea:	d0f6      	beq.n	8003cda <_vfprintf_r+0x1672>
 8003cec:	2a39      	cmp	r2, #57	; 0x39
 8003cee:	bf0b      	itete	eq
 8003cf0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003cf2:	3201      	addne	r2, #1
 8003cf4:	7a92      	ldrbeq	r2, [r2, #10]
 8003cf6:	b2d2      	uxtbne	r2, r2
 8003cf8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003cfc:	e682      	b.n	8003a04 <_vfprintf_r+0x139c>
 8003cfe:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003d02:	f43f ad9f 	beq.w	8003844 <_vfprintf_r+0x11dc>
 8003d06:	9a05      	ldr	r2, [sp, #20]
 8003d08:	701a      	strb	r2, [r3, #0]
 8003d0a:	4657      	mov	r7, sl
 8003d0c:	f7fe bf52 	b.w	8002bb4 <_vfprintf_r+0x54c>
 8003d10:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d12:	9907      	ldr	r1, [sp, #28]
 8003d14:	9803      	ldr	r0, [sp, #12]
 8003d16:	f002 ffd5 	bl	8006cc4 <__sprint_r>
 8003d1a:	2800      	cmp	r0, #0
 8003d1c:	f47f aa1c 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003d20:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003d22:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003d26:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d2a:	e571      	b.n	8003810 <_vfprintf_r+0x11a8>
 8003d2c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d2e:	2b00      	cmp	r3, #0
 8003d30:	f340 8164 	ble.w	8003ffc <_vfprintf_r+0x1994>
 8003d34:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d36:	f1b9 0f00 	cmp.w	r9, #0
 8003d3a:	f040 8103 	bne.w	8003f44 <_vfprintf_r+0x18dc>
 8003d3e:	07c6      	lsls	r6, r0, #31
 8003d40:	f100 8100 	bmi.w	8003f44 <_vfprintf_r+0x18dc>
 8003d44:	9309      	str	r3, [sp, #36]	; 0x24
 8003d46:	2666      	movs	r6, #102	; 0x66
 8003d48:	0543      	lsls	r3, r0, #21
 8003d4a:	f100 8086 	bmi.w	8003e5a <_vfprintf_r+0x17f2>
 8003d4e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d50:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d54:	9304      	str	r3, [sp, #16]
 8003d56:	e79e      	b.n	8003c96 <_vfprintf_r+0x162e>
 8003d58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d5a:	9907      	ldr	r1, [sp, #28]
 8003d5c:	9803      	ldr	r0, [sp, #12]
 8003d5e:	f002 ffb1 	bl	8006cc4 <__sprint_r>
 8003d62:	2800      	cmp	r0, #0
 8003d64:	f47f a9f8 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003d68:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003d6a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003d6c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d6e:	1ad3      	subs	r3, r2, r3
 8003d70:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d74:	f7ff bb90 	b.w	8003498 <_vfprintf_r+0xe30>
 8003d78:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d7a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d7c:	4413      	add	r3, r2
 8003d7e:	9309      	str	r3, [sp, #36]	; 0x24
 8003d80:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d82:	2b00      	cmp	r3, #0
 8003d84:	f340 8149 	ble.w	800401a <_vfprintf_r+0x19b2>
 8003d88:	2667      	movs	r6, #103	; 0x67
 8003d8a:	e7dd      	b.n	8003d48 <_vfprintf_r+0x16e0>
 8003d8c:	2330      	movs	r3, #48	; 0x30
 8003d8e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003d92:	2358      	movs	r3, #88	; 0x58
 8003d94:	e595      	b.n	80038c2 <_vfprintf_r+0x125a>
 8003d96:	9803      	ldr	r0, [sp, #12]
 8003d98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d9a:	4649      	mov	r1, r9
 8003d9c:	f002 ff92 	bl	8006cc4 <__sprint_r>
 8003da0:	2800      	cmp	r0, #0
 8003da2:	f47f a9e0 	bne.w	8003166 <_vfprintf_r+0xafe>
 8003da6:	f7fe bf0f 	b.w	8002bc8 <_vfprintf_r+0x560>
 8003daa:	a824      	add	r0, sp, #144	; 0x90
 8003dac:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003db0:	f002 fe90 	bl	8006ad4 <frexp>
 8003db4:	2200      	movs	r2, #0
 8003db6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003dba:	ec51 0b10 	vmov	r0, r1, d0
 8003dbe:	f7fc febb 	bl	8000b38 <__aeabi_dmul>
 8003dc2:	2200      	movs	r2, #0
 8003dc4:	2300      	movs	r3, #0
 8003dc6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003dca:	f7fd f91d 	bl	8001008 <__aeabi_dcmpeq>
 8003dce:	b108      	cbz	r0, 8003dd4 <_vfprintf_r+0x176c>
 8003dd0:	2301      	movs	r3, #1
 8003dd2:	9324      	str	r3, [sp, #144]	; 0x90
 8003dd4:	4b02      	ldr	r3, [pc, #8]	; (8003de0 <_vfprintf_r+0x1778>)
 8003dd6:	9309      	str	r3, [sp, #36]	; 0x24
 8003dd8:	e5ac      	b.n	8003934 <_vfprintf_r+0x12cc>
 8003dda:	bf00      	nop
 8003ddc:	080073b8 	.word	0x080073b8
 8003de0:	08007374 	.word	0x08007374
 8003de4:	425d      	negs	r5, r3
 8003de6:	3310      	adds	r3, #16
 8003de8:	4bb9      	ldr	r3, [pc, #740]	; (80040d0 <_vfprintf_r+0x1a68>)
 8003dea:	f280 8097 	bge.w	8003f1c <_vfprintf_r+0x18b4>
 8003dee:	4619      	mov	r1, r3
 8003df0:	2610      	movs	r6, #16
 8003df2:	4623      	mov	r3, r4
 8003df4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003df8:	460c      	mov	r4, r1
 8003dfa:	e005      	b.n	8003e08 <_vfprintf_r+0x17a0>
 8003dfc:	f10b 0b08 	add.w	fp, fp, #8
 8003e00:	3d10      	subs	r5, #16
 8003e02:	2d10      	cmp	r5, #16
 8003e04:	f340 8087 	ble.w	8003f16 <_vfprintf_r+0x18ae>
 8003e08:	3201      	adds	r2, #1
 8003e0a:	3310      	adds	r3, #16
 8003e0c:	2a07      	cmp	r2, #7
 8003e0e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003e12:	e9cb 4600 	strd	r4, r6, [fp]
 8003e16:	ddf1      	ble.n	8003dfc <_vfprintf_r+0x1794>
 8003e18:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e1a:	9907      	ldr	r1, [sp, #28]
 8003e1c:	4648      	mov	r0, r9
 8003e1e:	f002 ff51 	bl	8006cc4 <__sprint_r>
 8003e22:	2800      	cmp	r0, #0
 8003e24:	f47f a998 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8003e28:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003e2c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e30:	e7e6      	b.n	8003e00 <_vfprintf_r+0x1798>
 8003e32:	f109 0101 	add.w	r1, r9, #1
 8003e36:	9803      	ldr	r0, [sp, #12]
 8003e38:	f001 fe80 	bl	8005b3c <_malloc_r>
 8003e3c:	4607      	mov	r7, r0
 8003e3e:	2800      	cmp	r0, #0
 8003e40:	f000 813b 	beq.w	80040ba <_vfprintf_r+0x1a52>
 8003e44:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003e48:	930e      	str	r3, [sp, #56]	; 0x38
 8003e4a:	f026 0320 	bic.w	r3, r6, #32
 8003e4e:	9304      	str	r3, [sp, #16]
 8003e50:	46a0      	mov	r8, r4
 8003e52:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003e54:	900a      	str	r0, [sp, #40]	; 0x28
 8003e56:	e547      	b.n	80038e8 <_vfprintf_r+0x1280>
 8003e58:	2667      	movs	r6, #103	; 0x67
 8003e5a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003e5c:	2200      	movs	r2, #0
 8003e5e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003e60:	9214      	str	r2, [sp, #80]	; 0x50
 8003e62:	7803      	ldrb	r3, [r0, #0]
 8003e64:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003e66:	2bff      	cmp	r3, #255	; 0xff
 8003e68:	d00c      	beq.n	8003e84 <_vfprintf_r+0x181c>
 8003e6a:	4293      	cmp	r3, r2
 8003e6c:	da0a      	bge.n	8003e84 <_vfprintf_r+0x181c>
 8003e6e:	7841      	ldrb	r1, [r0, #1]
 8003e70:	1ad2      	subs	r2, r2, r3
 8003e72:	b1a9      	cbz	r1, 8003ea0 <_vfprintf_r+0x1838>
 8003e74:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003e76:	3301      	adds	r3, #1
 8003e78:	9314      	str	r3, [sp, #80]	; 0x50
 8003e7a:	460b      	mov	r3, r1
 8003e7c:	2bff      	cmp	r3, #255	; 0xff
 8003e7e:	f100 0001 	add.w	r0, r0, #1
 8003e82:	d1f2      	bne.n	8003e6a <_vfprintf_r+0x1802>
 8003e84:	9211      	str	r2, [sp, #68]	; 0x44
 8003e86:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003e88:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003e8a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003e8c:	901a      	str	r0, [sp, #104]	; 0x68
 8003e8e:	4413      	add	r3, r2
 8003e90:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003e92:	fb02 1303 	mla	r3, r2, r3, r1
 8003e96:	9309      	str	r3, [sp, #36]	; 0x24
 8003e98:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e9c:	9304      	str	r3, [sp, #16]
 8003e9e:	e485      	b.n	80037ac <_vfprintf_r+0x1144>
 8003ea0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003ea2:	3101      	adds	r1, #1
 8003ea4:	910f      	str	r1, [sp, #60]	; 0x3c
 8003ea6:	e7de      	b.n	8003e66 <_vfprintf_r+0x17fe>
 8003ea8:	aa28      	add	r2, sp, #160	; 0xa0
 8003eaa:	ab25      	add	r3, sp, #148	; 0x94
 8003eac:	e9cd 3200 	strd	r3, r2, [sp]
 8003eb0:	2103      	movs	r1, #3
 8003eb2:	ab24      	add	r3, sp, #144	; 0x90
 8003eb4:	464a      	mov	r2, r9
 8003eb6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003eba:	9803      	ldr	r0, [sp, #12]
 8003ebc:	f000 fa5c 	bl	8004378 <_dtoa_r>
 8003ec0:	464d      	mov	r5, r9
 8003ec2:	4607      	mov	r7, r0
 8003ec4:	eb00 0409 	add.w	r4, r0, r9
 8003ec8:	783b      	ldrb	r3, [r7, #0]
 8003eca:	2b30      	cmp	r3, #48	; 0x30
 8003ecc:	f000 80be 	beq.w	800404c <_vfprintf_r+0x19e4>
 8003ed0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003ed2:	442c      	add	r4, r5
 8003ed4:	2200      	movs	r2, #0
 8003ed6:	2300      	movs	r3, #0
 8003ed8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003edc:	f7fd f894 	bl	8001008 <__aeabi_dcmpeq>
 8003ee0:	b108      	cbz	r0, 8003ee6 <_vfprintf_r+0x187e>
 8003ee2:	4623      	mov	r3, r4
 8003ee4:	e413      	b.n	800370e <_vfprintf_r+0x10a6>
 8003ee6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ee8:	42a3      	cmp	r3, r4
 8003eea:	f4bf ac10 	bcs.w	800370e <_vfprintf_r+0x10a6>
 8003eee:	2130      	movs	r1, #48	; 0x30
 8003ef0:	1c5a      	adds	r2, r3, #1
 8003ef2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003ef4:	7019      	strb	r1, [r3, #0]
 8003ef6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ef8:	429c      	cmp	r4, r3
 8003efa:	d8f9      	bhi.n	8003ef0 <_vfprintf_r+0x1888>
 8003efc:	e407      	b.n	800370e <_vfprintf_r+0x10a6>
 8003efe:	197c      	adds	r4, r7, r5
 8003f00:	e7e8      	b.n	8003ed4 <_vfprintf_r+0x186c>
 8003f02:	f1b9 0f00 	cmp.w	r9, #0
 8003f06:	f000 8092 	beq.w	800402e <_vfprintf_r+0x19c6>
 8003f0a:	900a      	str	r0, [sp, #40]	; 0x28
 8003f0c:	e4ec      	b.n	80038e8 <_vfprintf_r+0x1280>
 8003f0e:	900a      	str	r0, [sp, #40]	; 0x28
 8003f10:	f04f 0906 	mov.w	r9, #6
 8003f14:	e4e8      	b.n	80038e8 <_vfprintf_r+0x1280>
 8003f16:	4621      	mov	r1, r4
 8003f18:	461c      	mov	r4, r3
 8003f1a:	460b      	mov	r3, r1
 8003f1c:	3201      	adds	r2, #1
 8003f1e:	442c      	add	r4, r5
 8003f20:	2a07      	cmp	r2, #7
 8003f22:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f26:	e9cb 3500 	strd	r3, r5, [fp]
 8003f2a:	f300 80a9 	bgt.w	8004080 <_vfprintf_r+0x1a18>
 8003f2e:	f10b 0b08 	add.w	fp, fp, #8
 8003f32:	e470      	b.n	8003816 <_vfprintf_r+0x11ae>
 8003f34:	469a      	mov	sl, r3
 8003f36:	f7ff bb37 	b.w	80035a8 <_vfprintf_r+0xf40>
 8003f3a:	2301      	movs	r3, #1
 8003f3c:	9324      	str	r3, [sp, #144]	; 0x90
 8003f3e:	4b65      	ldr	r3, [pc, #404]	; (80040d4 <_vfprintf_r+0x1a6c>)
 8003f40:	9309      	str	r3, [sp, #36]	; 0x24
 8003f42:	e4f7      	b.n	8003934 <_vfprintf_r+0x12cc>
 8003f44:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f46:	4413      	add	r3, r2
 8003f48:	444b      	add	r3, r9
 8003f4a:	9309      	str	r3, [sp, #36]	; 0x24
 8003f4c:	2666      	movs	r6, #102	; 0x66
 8003f4e:	e6fb      	b.n	8003d48 <_vfprintf_r+0x16e0>
 8003f50:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f52:	9309      	str	r3, [sp, #36]	; 0x24
 8003f54:	e694      	b.n	8003c80 <_vfprintf_r+0x1618>
 8003f56:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003f5a:	4664      	mov	r4, ip
 8003f5c:	4d5e      	ldr	r5, [pc, #376]	; (80040d8 <_vfprintf_r+0x1a70>)
 8003f5e:	e000      	b.n	8003f62 <_vfprintf_r+0x18fa>
 8003f60:	4614      	mov	r4, r2
 8003f62:	fba5 1203 	umull	r1, r2, r5, r3
 8003f66:	08d2      	lsrs	r2, r2, #3
 8003f68:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003f6c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003f70:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003f74:	4613      	mov	r3, r2
 8003f76:	2b09      	cmp	r3, #9
 8003f78:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003f7c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003f80:	dcee      	bgt.n	8003f60 <_vfprintf_r+0x18f8>
 8003f82:	3330      	adds	r3, #48	; 0x30
 8003f84:	3c02      	subs	r4, #2
 8003f86:	b2db      	uxtb	r3, r3
 8003f88:	45a4      	cmp	ip, r4
 8003f8a:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003f8e:	f240 8090 	bls.w	80040b2 <_vfprintf_r+0x1a4a>
 8003f92:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003f96:	4611      	mov	r1, r2
 8003f98:	e001      	b.n	8003f9e <_vfprintf_r+0x1936>
 8003f9a:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003f9e:	f804 3b01 	strb.w	r3, [r4], #1
 8003fa2:	458c      	cmp	ip, r1
 8003fa4:	d1f9      	bne.n	8003f9a <_vfprintf_r+0x1932>
 8003fa6:	ab2a      	add	r3, sp, #168	; 0xa8
 8003fa8:	1a9b      	subs	r3, r3, r2
 8003faa:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003fae:	4413      	add	r3, r2
 8003fb0:	f7ff bbe3 	b.w	800377a <_vfprintf_r+0x1112>
 8003fb4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003fb6:	4f49      	ldr	r7, [pc, #292]	; (80040dc <_vfprintf_r+0x1a74>)
 8003fb8:	2b00      	cmp	r3, #0
 8003fba:	bfb6      	itet	lt
 8003fbc:	222d      	movlt	r2, #45	; 0x2d
 8003fbe:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003fc2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003fc6:	4b46      	ldr	r3, [pc, #280]	; (80040e0 <_vfprintf_r+0x1a78>)
 8003fc8:	f7fe bf02 	b.w	8002dd0 <_vfprintf_r+0x768>
 8003fcc:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003fd0:	f7ff b8c9 	b.w	8003166 <_vfprintf_r+0xafe>
 8003fd4:	aa28      	add	r2, sp, #160	; 0xa0
 8003fd6:	ab25      	add	r3, sp, #148	; 0x94
 8003fd8:	e9cd 3200 	strd	r3, r2, [sp]
 8003fdc:	2103      	movs	r1, #3
 8003fde:	ab24      	add	r3, sp, #144	; 0x90
 8003fe0:	464a      	mov	r2, r9
 8003fe2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003fe6:	9803      	ldr	r0, [sp, #12]
 8003fe8:	f000 f9c6 	bl	8004378 <_dtoa_r>
 8003fec:	464d      	mov	r5, r9
 8003fee:	4607      	mov	r7, r0
 8003ff0:	2e46      	cmp	r6, #70	; 0x46
 8003ff2:	eb07 0405 	add.w	r4, r7, r5
 8003ff6:	f43f af67 	beq.w	8003ec8 <_vfprintf_r+0x1860>
 8003ffa:	e76b      	b.n	8003ed4 <_vfprintf_r+0x186c>
 8003ffc:	f1b9 0f00 	cmp.w	r9, #0
 8004000:	d131      	bne.n	8004066 <_vfprintf_r+0x19fe>
 8004002:	07c5      	lsls	r5, r0, #31
 8004004:	d42f      	bmi.n	8004066 <_vfprintf_r+0x19fe>
 8004006:	2301      	movs	r3, #1
 8004008:	9304      	str	r3, [sp, #16]
 800400a:	9309      	str	r3, [sp, #36]	; 0x24
 800400c:	2666      	movs	r6, #102	; 0x66
 800400e:	e642      	b.n	8003c96 <_vfprintf_r+0x162e>
 8004010:	07c3      	lsls	r3, r0, #31
 8004012:	f57f abbf 	bpl.w	8003794 <_vfprintf_r+0x112c>
 8004016:	f7ff bbb9 	b.w	800378c <_vfprintf_r+0x1124>
 800401a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800401c:	f1c3 0301 	rsb	r3, r3, #1
 8004020:	441a      	add	r2, r3
 8004022:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004026:	9209      	str	r2, [sp, #36]	; 0x24
 8004028:	9304      	str	r3, [sp, #16]
 800402a:	2667      	movs	r6, #103	; 0x67
 800402c:	e633      	b.n	8003c96 <_vfprintf_r+0x162e>
 800402e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004032:	f04f 0901 	mov.w	r9, #1
 8004036:	e457      	b.n	80038e8 <_vfprintf_r+0x1280>
 8004038:	465a      	mov	r2, fp
 800403a:	e511      	b.n	8003a60 <_vfprintf_r+0x13f8>
 800403c:	2e47      	cmp	r6, #71	; 0x47
 800403e:	f47f af5e 	bne.w	8003efe <_vfprintf_r+0x1896>
 8004042:	f018 0f01 	tst.w	r8, #1
 8004046:	f43f ab61 	beq.w	800370c <_vfprintf_r+0x10a4>
 800404a:	e7d1      	b.n	8003ff0 <_vfprintf_r+0x1988>
 800404c:	2200      	movs	r2, #0
 800404e:	2300      	movs	r3, #0
 8004050:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004054:	f7fc ffd8 	bl	8001008 <__aeabi_dcmpeq>
 8004058:	2800      	cmp	r0, #0
 800405a:	f47f af39 	bne.w	8003ed0 <_vfprintf_r+0x1868>
 800405e:	f1c5 0501 	rsb	r5, r5, #1
 8004062:	9524      	str	r5, [sp, #144]	; 0x90
 8004064:	e735      	b.n	8003ed2 <_vfprintf_r+0x186a>
 8004066:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004068:	3301      	adds	r3, #1
 800406a:	444b      	add	r3, r9
 800406c:	9309      	str	r3, [sp, #36]	; 0x24
 800406e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004072:	9304      	str	r3, [sp, #16]
 8004074:	2666      	movs	r6, #102	; 0x66
 8004076:	e60e      	b.n	8003c96 <_vfprintf_r+0x162e>
 8004078:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800407c:	f7ff bb7a 	b.w	8003774 <_vfprintf_r+0x110c>
 8004080:	aa2a      	add	r2, sp, #168	; 0xa8
 8004082:	9907      	ldr	r1, [sp, #28]
 8004084:	9803      	ldr	r0, [sp, #12]
 8004086:	f002 fe1d 	bl	8006cc4 <__sprint_r>
 800408a:	2800      	cmp	r0, #0
 800408c:	f47f a864 	bne.w	8003158 <_vfprintf_r+0xaf0>
 8004090:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004094:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004098:	f7ff bbbd 	b.w	8003816 <_vfprintf_r+0x11ae>
 800409c:	9908      	ldr	r1, [sp, #32]
 800409e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80040a2:	680b      	ldr	r3, [r1, #0]
 80040a4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80040a8:	1d0b      	adds	r3, r1, #4
 80040aa:	4692      	mov	sl, r2
 80040ac:	9308      	str	r3, [sp, #32]
 80040ae:	f7fe bb59 	b.w	8002764 <_vfprintf_r+0xfc>
 80040b2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80040b6:	f7ff bb60 	b.w	800377a <_vfprintf_r+0x1112>
 80040ba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80040be:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80040c2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80040c6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80040ca:	f7ff b84c 	b.w	8003166 <_vfprintf_r+0xafe>
 80040ce:	bf00      	nop
 80040d0:	080073b8 	.word	0x080073b8
 80040d4:	08007388 	.word	0x08007388
 80040d8:	cccccccd 	.word	0xcccccccd
 80040dc:	08007370 	.word	0x08007370
 80040e0:	0800736c 	.word	0x0800736c

080040e4 <__sbprintf>:
 80040e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80040e8:	460c      	mov	r4, r1
 80040ea:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80040ee:	8989      	ldrh	r1, [r1, #12]
 80040f0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80040f2:	89e5      	ldrh	r5, [r4, #14]
 80040f4:	9619      	str	r6, [sp, #100]	; 0x64
 80040f6:	f021 0102 	bic.w	r1, r1, #2
 80040fa:	4606      	mov	r6, r0
 80040fc:	69e0      	ldr	r0, [r4, #28]
 80040fe:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004102:	4617      	mov	r7, r2
 8004104:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004108:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800410a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800410e:	4698      	mov	r8, r3
 8004110:	ad1a      	add	r5, sp, #104	; 0x68
 8004112:	2300      	movs	r3, #0
 8004114:	9007      	str	r0, [sp, #28]
 8004116:	a816      	add	r0, sp, #88	; 0x58
 8004118:	9209      	str	r2, [sp, #36]	; 0x24
 800411a:	9306      	str	r3, [sp, #24]
 800411c:	9500      	str	r5, [sp, #0]
 800411e:	9504      	str	r5, [sp, #16]
 8004120:	9102      	str	r1, [sp, #8]
 8004122:	9105      	str	r1, [sp, #20]
 8004124:	f001 fc8a 	bl	8005a3c <__retarget_lock_init_recursive>
 8004128:	4643      	mov	r3, r8
 800412a:	463a      	mov	r2, r7
 800412c:	4669      	mov	r1, sp
 800412e:	4630      	mov	r0, r6
 8004130:	f7fe fa9a 	bl	8002668 <_vfprintf_r>
 8004134:	1e05      	subs	r5, r0, #0
 8004136:	db07      	blt.n	8004148 <__sbprintf+0x64>
 8004138:	4630      	mov	r0, r6
 800413a:	4669      	mov	r1, sp
 800413c:	f001 f8d6 	bl	80052ec <_fflush_r>
 8004140:	2800      	cmp	r0, #0
 8004142:	bf18      	it	ne
 8004144:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004148:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800414c:	065b      	lsls	r3, r3, #25
 800414e:	d503      	bpl.n	8004158 <__sbprintf+0x74>
 8004150:	89a3      	ldrh	r3, [r4, #12]
 8004152:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004156:	81a3      	strh	r3, [r4, #12]
 8004158:	9816      	ldr	r0, [sp, #88]	; 0x58
 800415a:	f001 fc71 	bl	8005a40 <__retarget_lock_close_recursive>
 800415e:	4628      	mov	r0, r5
 8004160:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004164:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004168 <__swsetup_r>:
 8004168:	b538      	push	{r3, r4, r5, lr}
 800416a:	4b31      	ldr	r3, [pc, #196]	; (8004230 <__swsetup_r+0xc8>)
 800416c:	681b      	ldr	r3, [r3, #0]
 800416e:	4605      	mov	r5, r0
 8004170:	460c      	mov	r4, r1
 8004172:	b113      	cbz	r3, 800417a <__swsetup_r+0x12>
 8004174:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004176:	2a00      	cmp	r2, #0
 8004178:	d03a      	beq.n	80041f0 <__swsetup_r+0x88>
 800417a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800417e:	b293      	uxth	r3, r2
 8004180:	0718      	lsls	r0, r3, #28
 8004182:	d50c      	bpl.n	800419e <__swsetup_r+0x36>
 8004184:	6920      	ldr	r0, [r4, #16]
 8004186:	b1a8      	cbz	r0, 80041b4 <__swsetup_r+0x4c>
 8004188:	f013 0201 	ands.w	r2, r3, #1
 800418c:	d020      	beq.n	80041d0 <__swsetup_r+0x68>
 800418e:	6963      	ldr	r3, [r4, #20]
 8004190:	2200      	movs	r2, #0
 8004192:	425b      	negs	r3, r3
 8004194:	61a3      	str	r3, [r4, #24]
 8004196:	60a2      	str	r2, [r4, #8]
 8004198:	b300      	cbz	r0, 80041dc <__swsetup_r+0x74>
 800419a:	2000      	movs	r0, #0
 800419c:	bd38      	pop	{r3, r4, r5, pc}
 800419e:	06d9      	lsls	r1, r3, #27
 80041a0:	d53e      	bpl.n	8004220 <__swsetup_r+0xb8>
 80041a2:	0758      	lsls	r0, r3, #29
 80041a4:	d428      	bmi.n	80041f8 <__swsetup_r+0x90>
 80041a6:	6920      	ldr	r0, [r4, #16]
 80041a8:	f042 0308 	orr.w	r3, r2, #8
 80041ac:	81a3      	strh	r3, [r4, #12]
 80041ae:	b29b      	uxth	r3, r3
 80041b0:	2800      	cmp	r0, #0
 80041b2:	d1e9      	bne.n	8004188 <__swsetup_r+0x20>
 80041b4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80041b8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80041bc:	d0e4      	beq.n	8004188 <__swsetup_r+0x20>
 80041be:	4628      	mov	r0, r5
 80041c0:	4621      	mov	r1, r4
 80041c2:	f001 fc71 	bl	8005aa8 <__smakebuf_r>
 80041c6:	89a3      	ldrh	r3, [r4, #12]
 80041c8:	6920      	ldr	r0, [r4, #16]
 80041ca:	f013 0201 	ands.w	r2, r3, #1
 80041ce:	d1de      	bne.n	800418e <__swsetup_r+0x26>
 80041d0:	0799      	lsls	r1, r3, #30
 80041d2:	bf58      	it	pl
 80041d4:	6962      	ldrpl	r2, [r4, #20]
 80041d6:	60a2      	str	r2, [r4, #8]
 80041d8:	2800      	cmp	r0, #0
 80041da:	d1de      	bne.n	800419a <__swsetup_r+0x32>
 80041dc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80041e0:	061a      	lsls	r2, r3, #24
 80041e2:	d5db      	bpl.n	800419c <__swsetup_r+0x34>
 80041e4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80041e8:	81a3      	strh	r3, [r4, #12]
 80041ea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80041ee:	bd38      	pop	{r3, r4, r5, pc}
 80041f0:	4618      	mov	r0, r3
 80041f2:	f001 f8d7 	bl	80053a4 <__sinit>
 80041f6:	e7c0      	b.n	800417a <__swsetup_r+0x12>
 80041f8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80041fa:	b151      	cbz	r1, 8004212 <__swsetup_r+0xaa>
 80041fc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004200:	4299      	cmp	r1, r3
 8004202:	d004      	beq.n	800420e <__swsetup_r+0xa6>
 8004204:	4628      	mov	r0, r5
 8004206:	f001 f96f 	bl	80054e8 <_free_r>
 800420a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800420e:	2300      	movs	r3, #0
 8004210:	6323      	str	r3, [r4, #48]	; 0x30
 8004212:	2300      	movs	r3, #0
 8004214:	6920      	ldr	r0, [r4, #16]
 8004216:	6063      	str	r3, [r4, #4]
 8004218:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800421c:	6020      	str	r0, [r4, #0]
 800421e:	e7c3      	b.n	80041a8 <__swsetup_r+0x40>
 8004220:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004224:	2309      	movs	r3, #9
 8004226:	602b      	str	r3, [r5, #0]
 8004228:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800422c:	81a2      	strh	r2, [r4, #12]
 800422e:	bd38      	pop	{r3, r4, r5, pc}
 8004230:	2000003c 	.word	0x2000003c

08004234 <register_fini>:
 8004234:	4b02      	ldr	r3, [pc, #8]	; (8004240 <register_fini+0xc>)
 8004236:	b113      	cbz	r3, 800423e <register_fini+0xa>
 8004238:	4802      	ldr	r0, [pc, #8]	; (8004244 <register_fini+0x10>)
 800423a:	f000 b805 	b.w	8004248 <atexit>
 800423e:	4770      	bx	lr
 8004240:	00000000 	.word	0x00000000
 8004244:	08005415 	.word	0x08005415

08004248 <atexit>:
 8004248:	2300      	movs	r3, #0
 800424a:	4601      	mov	r1, r0
 800424c:	461a      	mov	r2, r3
 800424e:	4618      	mov	r0, r3
 8004250:	f002 bd58 	b.w	8006d04 <__register_exitproc>

08004254 <quorem>:
 8004254:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004258:	6903      	ldr	r3, [r0, #16]
 800425a:	690f      	ldr	r7, [r1, #16]
 800425c:	42bb      	cmp	r3, r7
 800425e:	b083      	sub	sp, #12
 8004260:	f2c0 8086 	blt.w	8004370 <quorem+0x11c>
 8004264:	3f01      	subs	r7, #1
 8004266:	f101 0914 	add.w	r9, r1, #20
 800426a:	f100 0a14 	add.w	sl, r0, #20
 800426e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004272:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004276:	00bc      	lsls	r4, r7, #2
 8004278:	3201      	adds	r2, #1
 800427a:	fbb3 f8f2 	udiv	r8, r3, r2
 800427e:	eb0a 0304 	add.w	r3, sl, r4
 8004282:	9400      	str	r4, [sp, #0]
 8004284:	eb09 0b04 	add.w	fp, r9, r4
 8004288:	9301      	str	r3, [sp, #4]
 800428a:	f1b8 0f00 	cmp.w	r8, #0
 800428e:	d038      	beq.n	8004302 <quorem+0xae>
 8004290:	2500      	movs	r5, #0
 8004292:	462e      	mov	r6, r5
 8004294:	46ce      	mov	lr, r9
 8004296:	46d4      	mov	ip, sl
 8004298:	f85e 4b04 	ldr.w	r4, [lr], #4
 800429c:	f8dc 3000 	ldr.w	r3, [ip]
 80042a0:	b2a2      	uxth	r2, r4
 80042a2:	fb08 5502 	mla	r5, r8, r2, r5
 80042a6:	0c22      	lsrs	r2, r4, #16
 80042a8:	0c2c      	lsrs	r4, r5, #16
 80042aa:	fb08 4202 	mla	r2, r8, r2, r4
 80042ae:	b2ad      	uxth	r5, r5
 80042b0:	1b75      	subs	r5, r6, r5
 80042b2:	b296      	uxth	r6, r2
 80042b4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80042b8:	fa15 f383 	uxtah	r3, r5, r3
 80042bc:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80042c0:	b29b      	uxth	r3, r3
 80042c2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80042c6:	45f3      	cmp	fp, lr
 80042c8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80042cc:	f84c 3b04 	str.w	r3, [ip], #4
 80042d0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80042d4:	d2e0      	bcs.n	8004298 <quorem+0x44>
 80042d6:	9b00      	ldr	r3, [sp, #0]
 80042d8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80042dc:	b98b      	cbnz	r3, 8004302 <quorem+0xae>
 80042de:	9a01      	ldr	r2, [sp, #4]
 80042e0:	1f13      	subs	r3, r2, #4
 80042e2:	459a      	cmp	sl, r3
 80042e4:	d20c      	bcs.n	8004300 <quorem+0xac>
 80042e6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80042ea:	b94b      	cbnz	r3, 8004300 <quorem+0xac>
 80042ec:	f1a2 0308 	sub.w	r3, r2, #8
 80042f0:	e002      	b.n	80042f8 <quorem+0xa4>
 80042f2:	681a      	ldr	r2, [r3, #0]
 80042f4:	3b04      	subs	r3, #4
 80042f6:	b91a      	cbnz	r2, 8004300 <quorem+0xac>
 80042f8:	459a      	cmp	sl, r3
 80042fa:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80042fe:	d3f8      	bcc.n	80042f2 <quorem+0x9e>
 8004300:	6107      	str	r7, [r0, #16]
 8004302:	4604      	mov	r4, r0
 8004304:	f002 f944 	bl	8006590 <__mcmp>
 8004308:	2800      	cmp	r0, #0
 800430a:	db2d      	blt.n	8004368 <quorem+0x114>
 800430c:	f108 0801 	add.w	r8, r8, #1
 8004310:	4655      	mov	r5, sl
 8004312:	2300      	movs	r3, #0
 8004314:	f859 1b04 	ldr.w	r1, [r9], #4
 8004318:	6828      	ldr	r0, [r5, #0]
 800431a:	b28a      	uxth	r2, r1
 800431c:	1a9a      	subs	r2, r3, r2
 800431e:	0c0b      	lsrs	r3, r1, #16
 8004320:	fa12 f280 	uxtah	r2, r2, r0
 8004324:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004328:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800432c:	b292      	uxth	r2, r2
 800432e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004332:	45cb      	cmp	fp, r9
 8004334:	f845 2b04 	str.w	r2, [r5], #4
 8004338:	ea4f 4323 	mov.w	r3, r3, asr #16
 800433c:	d2ea      	bcs.n	8004314 <quorem+0xc0>
 800433e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004342:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004346:	b97a      	cbnz	r2, 8004368 <quorem+0x114>
 8004348:	1f1a      	subs	r2, r3, #4
 800434a:	4592      	cmp	sl, r2
 800434c:	d20b      	bcs.n	8004366 <quorem+0x112>
 800434e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004352:	b942      	cbnz	r2, 8004366 <quorem+0x112>
 8004354:	3b08      	subs	r3, #8
 8004356:	e002      	b.n	800435e <quorem+0x10a>
 8004358:	681a      	ldr	r2, [r3, #0]
 800435a:	3b04      	subs	r3, #4
 800435c:	b91a      	cbnz	r2, 8004366 <quorem+0x112>
 800435e:	459a      	cmp	sl, r3
 8004360:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004364:	d3f8      	bcc.n	8004358 <quorem+0x104>
 8004366:	6127      	str	r7, [r4, #16]
 8004368:	4640      	mov	r0, r8
 800436a:	b003      	add	sp, #12
 800436c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004370:	2000      	movs	r0, #0
 8004372:	b003      	add	sp, #12
 8004374:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004378 <_dtoa_r>:
 8004378:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800437c:	ec55 4b10 	vmov	r4, r5, d0
 8004380:	b09b      	sub	sp, #108	; 0x6c
 8004382:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004384:	9102      	str	r1, [sp, #8]
 8004386:	4681      	mov	r9, r0
 8004388:	9207      	str	r2, [sp, #28]
 800438a:	9305      	str	r3, [sp, #20]
 800438c:	e9cd 4500 	strd	r4, r5, [sp]
 8004390:	b156      	cbz	r6, 80043a8 <_dtoa_r+0x30>
 8004392:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004394:	6072      	str	r2, [r6, #4]
 8004396:	2301      	movs	r3, #1
 8004398:	4093      	lsls	r3, r2
 800439a:	60b3      	str	r3, [r6, #8]
 800439c:	4631      	mov	r1, r6
 800439e:	f001 ff07 	bl	80061b0 <_Bfree>
 80043a2:	2300      	movs	r3, #0
 80043a4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80043a8:	f1b5 0800 	subs.w	r8, r5, #0
 80043ac:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80043ae:	bfb4      	ite	lt
 80043b0:	2301      	movlt	r3, #1
 80043b2:	2300      	movge	r3, #0
 80043b4:	6013      	str	r3, [r2, #0]
 80043b6:	4b76      	ldr	r3, [pc, #472]	; (8004590 <_dtoa_r+0x218>)
 80043b8:	bfbc      	itt	lt
 80043ba:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80043be:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80043c2:	ea33 0308 	bics.w	r3, r3, r8
 80043c6:	f000 80a6 	beq.w	8004516 <_dtoa_r+0x19e>
 80043ca:	e9dd 6700 	ldrd	r6, r7, [sp]
 80043ce:	2200      	movs	r2, #0
 80043d0:	2300      	movs	r3, #0
 80043d2:	4630      	mov	r0, r6
 80043d4:	4639      	mov	r1, r7
 80043d6:	f7fc fe17 	bl	8001008 <__aeabi_dcmpeq>
 80043da:	4605      	mov	r5, r0
 80043dc:	b178      	cbz	r0, 80043fe <_dtoa_r+0x86>
 80043de:	9a05      	ldr	r2, [sp, #20]
 80043e0:	2301      	movs	r3, #1
 80043e2:	6013      	str	r3, [r2, #0]
 80043e4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80043e6:	2b00      	cmp	r3, #0
 80043e8:	f000 80c0 	beq.w	800456c <_dtoa_r+0x1f4>
 80043ec:	4b69      	ldr	r3, [pc, #420]	; (8004594 <_dtoa_r+0x21c>)
 80043ee:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80043f0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80043f4:	6013      	str	r3, [r2, #0]
 80043f6:	4658      	mov	r0, fp
 80043f8:	b01b      	add	sp, #108	; 0x6c
 80043fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80043fe:	aa18      	add	r2, sp, #96	; 0x60
 8004400:	a919      	add	r1, sp, #100	; 0x64
 8004402:	ec47 6b10 	vmov	d0, r6, r7
 8004406:	4648      	mov	r0, r9
 8004408:	f002 f954 	bl	80066b4 <__d2b>
 800440c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004410:	4682      	mov	sl, r0
 8004412:	f040 80a0 	bne.w	8004556 <_dtoa_r+0x1de>
 8004416:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800441a:	442c      	add	r4, r5
 800441c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004420:	2b20      	cmp	r3, #32
 8004422:	f340 842c 	ble.w	8004c7e <_dtoa_r+0x906>
 8004426:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800442a:	fa08 f803 	lsl.w	r8, r8, r3
 800442e:	9b00      	ldr	r3, [sp, #0]
 8004430:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004434:	fa23 f000 	lsr.w	r0, r3, r0
 8004438:	ea48 0000 	orr.w	r0, r8, r0
 800443c:	f7fc fb02 	bl	8000a44 <__aeabi_ui2d>
 8004440:	2301      	movs	r3, #1
 8004442:	4606      	mov	r6, r0
 8004444:	3c01      	subs	r4, #1
 8004446:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800444a:	930f      	str	r3, [sp, #60]	; 0x3c
 800444c:	4630      	mov	r0, r6
 800444e:	4639      	mov	r1, r7
 8004450:	2200      	movs	r2, #0
 8004452:	4b51      	ldr	r3, [pc, #324]	; (8004598 <_dtoa_r+0x220>)
 8004454:	f7fc f9b8 	bl	80007c8 <__aeabi_dsub>
 8004458:	a347      	add	r3, pc, #284	; (adr r3, 8004578 <_dtoa_r+0x200>)
 800445a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800445e:	f7fc fb6b 	bl	8000b38 <__aeabi_dmul>
 8004462:	a347      	add	r3, pc, #284	; (adr r3, 8004580 <_dtoa_r+0x208>)
 8004464:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004468:	f7fc f9b0 	bl	80007cc <__adddf3>
 800446c:	4606      	mov	r6, r0
 800446e:	4620      	mov	r0, r4
 8004470:	460f      	mov	r7, r1
 8004472:	f7fc faf7 	bl	8000a64 <__aeabi_i2d>
 8004476:	a344      	add	r3, pc, #272	; (adr r3, 8004588 <_dtoa_r+0x210>)
 8004478:	e9d3 2300 	ldrd	r2, r3, [r3]
 800447c:	f7fc fb5c 	bl	8000b38 <__aeabi_dmul>
 8004480:	4602      	mov	r2, r0
 8004482:	460b      	mov	r3, r1
 8004484:	4630      	mov	r0, r6
 8004486:	4639      	mov	r1, r7
 8004488:	f7fc f9a0 	bl	80007cc <__adddf3>
 800448c:	4606      	mov	r6, r0
 800448e:	460f      	mov	r7, r1
 8004490:	f7fc fe02 	bl	8001098 <__aeabi_d2iz>
 8004494:	2200      	movs	r2, #0
 8004496:	9006      	str	r0, [sp, #24]
 8004498:	2300      	movs	r3, #0
 800449a:	4630      	mov	r0, r6
 800449c:	4639      	mov	r1, r7
 800449e:	f7fc fdbd 	bl	800101c <__aeabi_dcmplt>
 80044a2:	2800      	cmp	r0, #0
 80044a4:	f040 8273 	bne.w	800498e <_dtoa_r+0x616>
 80044a8:	9e06      	ldr	r6, [sp, #24]
 80044aa:	2e16      	cmp	r6, #22
 80044ac:	f200 825d 	bhi.w	800496a <_dtoa_r+0x5f2>
 80044b0:	4b3a      	ldr	r3, [pc, #232]	; (800459c <_dtoa_r+0x224>)
 80044b2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80044b6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80044ba:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044be:	f7fc fdcb 	bl	8001058 <__aeabi_dcmpgt>
 80044c2:	2800      	cmp	r0, #0
 80044c4:	f000 83d7 	beq.w	8004c76 <_dtoa_r+0x8fe>
 80044c8:	1e73      	subs	r3, r6, #1
 80044ca:	9306      	str	r3, [sp, #24]
 80044cc:	2300      	movs	r3, #0
 80044ce:	930d      	str	r3, [sp, #52]	; 0x34
 80044d0:	1b2c      	subs	r4, r5, r4
 80044d2:	f1b4 0801 	subs.w	r8, r4, #1
 80044d6:	f100 8254 	bmi.w	8004982 <_dtoa_r+0x60a>
 80044da:	2300      	movs	r3, #0
 80044dc:	9308      	str	r3, [sp, #32]
 80044de:	9b06      	ldr	r3, [sp, #24]
 80044e0:	2b00      	cmp	r3, #0
 80044e2:	f2c0 8245 	blt.w	8004970 <_dtoa_r+0x5f8>
 80044e6:	4498      	add	r8, r3
 80044e8:	930c      	str	r3, [sp, #48]	; 0x30
 80044ea:	2300      	movs	r3, #0
 80044ec:	930b      	str	r3, [sp, #44]	; 0x2c
 80044ee:	9b02      	ldr	r3, [sp, #8]
 80044f0:	2b09      	cmp	r3, #9
 80044f2:	d85b      	bhi.n	80045ac <_dtoa_r+0x234>
 80044f4:	2b05      	cmp	r3, #5
 80044f6:	f340 83c0 	ble.w	8004c7a <_dtoa_r+0x902>
 80044fa:	3b04      	subs	r3, #4
 80044fc:	9302      	str	r3, [sp, #8]
 80044fe:	2500      	movs	r5, #0
 8004500:	9b02      	ldr	r3, [sp, #8]
 8004502:	3b02      	subs	r3, #2
 8004504:	2b03      	cmp	r3, #3
 8004506:	f200 8498 	bhi.w	8004e3a <_dtoa_r+0xac2>
 800450a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800450e:	03df      	.short	0x03df
 8004510:	03e803bf 	.word	0x03e803bf
 8004514:	04f5      	.short	0x04f5
 8004516:	9a05      	ldr	r2, [sp, #20]
 8004518:	f242 730f 	movw	r3, #9999	; 0x270f
 800451c:	6013      	str	r3, [r2, #0]
 800451e:	9b00      	ldr	r3, [sp, #0]
 8004520:	b983      	cbnz	r3, 8004544 <_dtoa_r+0x1cc>
 8004522:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004526:	b96b      	cbnz	r3, 8004544 <_dtoa_r+0x1cc>
 8004528:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800452a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80045a0 <_dtoa_r+0x228>
 800452e:	2b00      	cmp	r3, #0
 8004530:	f43f af61 	beq.w	80043f6 <_dtoa_r+0x7e>
 8004534:	f10b 0308 	add.w	r3, fp, #8
 8004538:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800453a:	4658      	mov	r0, fp
 800453c:	6013      	str	r3, [r2, #0]
 800453e:	b01b      	add	sp, #108	; 0x6c
 8004540:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004544:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004546:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80045a4 <_dtoa_r+0x22c>
 800454a:	2b00      	cmp	r3, #0
 800454c:	f43f af53 	beq.w	80043f6 <_dtoa_r+0x7e>
 8004550:	f10b 0303 	add.w	r3, fp, #3
 8004554:	e7f0      	b.n	8004538 <_dtoa_r+0x1c0>
 8004556:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800455a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800455e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004560:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004564:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004568:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800456a:	e76f      	b.n	800444c <_dtoa_r+0xd4>
 800456c:	f8df b038 	ldr.w	fp, [pc, #56]	; 80045a8 <_dtoa_r+0x230>
 8004570:	4658      	mov	r0, fp
 8004572:	b01b      	add	sp, #108	; 0x6c
 8004574:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004578:	636f4361 	.word	0x636f4361
 800457c:	3fd287a7 	.word	0x3fd287a7
 8004580:	8b60c8b3 	.word	0x8b60c8b3
 8004584:	3fc68a28 	.word	0x3fc68a28
 8004588:	509f79fb 	.word	0x509f79fb
 800458c:	3fd34413 	.word	0x3fd34413
 8004590:	7ff00000 	.word	0x7ff00000
 8004594:	080073a5 	.word	0x080073a5
 8004598:	3ff80000 	.word	0x3ff80000
 800459c:	08007400 	.word	0x08007400
 80045a0:	080073c8 	.word	0x080073c8
 80045a4:	080073d4 	.word	0x080073d4
 80045a8:	080073a4 	.word	0x080073a4
 80045ac:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80045b0:	2501      	movs	r5, #1
 80045b2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80045b6:	2300      	movs	r3, #0
 80045b8:	9302      	str	r3, [sp, #8]
 80045ba:	9307      	str	r3, [sp, #28]
 80045bc:	2100      	movs	r1, #0
 80045be:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80045c2:	940e      	str	r4, [sp, #56]	; 0x38
 80045c4:	4648      	mov	r0, r9
 80045c6:	f001 fdcd 	bl	8006164 <_Balloc>
 80045ca:	2c0e      	cmp	r4, #14
 80045cc:	4683      	mov	fp, r0
 80045ce:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80045d2:	f200 80fb 	bhi.w	80047cc <_dtoa_r+0x454>
 80045d6:	2d00      	cmp	r5, #0
 80045d8:	f000 80f8 	beq.w	80047cc <_dtoa_r+0x454>
 80045dc:	ed9d 7b00 	vldr	d7, [sp]
 80045e0:	9906      	ldr	r1, [sp, #24]
 80045e2:	2900      	cmp	r1, #0
 80045e4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80045e8:	f340 83e5 	ble.w	8004db6 <_dtoa_r+0xa3e>
 80045ec:	4b9d      	ldr	r3, [pc, #628]	; (8004864 <_dtoa_r+0x4ec>)
 80045ee:	f001 020f 	and.w	r2, r1, #15
 80045f2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80045f6:	ed93 7b00 	vldr	d7, [r3]
 80045fa:	110c      	asrs	r4, r1, #4
 80045fc:	06e2      	lsls	r2, r4, #27
 80045fe:	ed8d 7b00 	vstr	d7, [sp]
 8004602:	f140 849e 	bpl.w	8004f42 <_dtoa_r+0xbca>
 8004606:	4b98      	ldr	r3, [pc, #608]	; (8004868 <_dtoa_r+0x4f0>)
 8004608:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800460c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004610:	f7fc fbbc 	bl	8000d8c <__aeabi_ddiv>
 8004614:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004618:	f004 040f 	and.w	r4, r4, #15
 800461c:	2603      	movs	r6, #3
 800461e:	b17c      	cbz	r4, 8004640 <_dtoa_r+0x2c8>
 8004620:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004624:	4d90      	ldr	r5, [pc, #576]	; (8004868 <_dtoa_r+0x4f0>)
 8004626:	07e3      	lsls	r3, r4, #31
 8004628:	d504      	bpl.n	8004634 <_dtoa_r+0x2bc>
 800462a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800462e:	f7fc fa83 	bl	8000b38 <__aeabi_dmul>
 8004632:	3601      	adds	r6, #1
 8004634:	1064      	asrs	r4, r4, #1
 8004636:	f105 0508 	add.w	r5, r5, #8
 800463a:	d1f4      	bne.n	8004626 <_dtoa_r+0x2ae>
 800463c:	e9cd 0100 	strd	r0, r1, [sp]
 8004640:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004644:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004648:	f7fc fba0 	bl	8000d8c <__aeabi_ddiv>
 800464c:	e9cd 0100 	strd	r0, r1, [sp]
 8004650:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004652:	b143      	cbz	r3, 8004666 <_dtoa_r+0x2ee>
 8004654:	2200      	movs	r2, #0
 8004656:	4b85      	ldr	r3, [pc, #532]	; (800486c <_dtoa_r+0x4f4>)
 8004658:	e9dd 0100 	ldrd	r0, r1, [sp]
 800465c:	f7fc fcde 	bl	800101c <__aeabi_dcmplt>
 8004660:	2800      	cmp	r0, #0
 8004662:	f040 84ff 	bne.w	8005064 <_dtoa_r+0xcec>
 8004666:	4630      	mov	r0, r6
 8004668:	f7fc f9fc 	bl	8000a64 <__aeabi_i2d>
 800466c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004670:	f7fc fa62 	bl	8000b38 <__aeabi_dmul>
 8004674:	4b7e      	ldr	r3, [pc, #504]	; (8004870 <_dtoa_r+0x4f8>)
 8004676:	2200      	movs	r2, #0
 8004678:	f7fc f8a8 	bl	80007cc <__adddf3>
 800467c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800467e:	4606      	mov	r6, r0
 8004680:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004684:	2b00      	cmp	r3, #0
 8004686:	f000 841c 	beq.w	8004ec2 <_dtoa_r+0xb4a>
 800468a:	9b06      	ldr	r3, [sp, #24]
 800468c:	9316      	str	r3, [sp, #88]	; 0x58
 800468e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004690:	9312      	str	r3, [sp, #72]	; 0x48
 8004692:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004696:	f7fc fcff 	bl	8001098 <__aeabi_d2iz>
 800469a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800469c:	4b71      	ldr	r3, [pc, #452]	; (8004864 <_dtoa_r+0x4ec>)
 800469e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80046a2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80046a6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80046aa:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80046ae:	f7fc f9d9 	bl	8000a64 <__aeabi_i2d>
 80046b2:	460b      	mov	r3, r1
 80046b4:	4602      	mov	r2, r0
 80046b6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80046ba:	e9cd 6700 	strd	r6, r7, [sp]
 80046be:	f7fc f883 	bl	80007c8 <__aeabi_dsub>
 80046c2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80046c4:	b2ed      	uxtb	r5, r5
 80046c6:	4606      	mov	r6, r0
 80046c8:	460f      	mov	r7, r1
 80046ca:	f10b 0401 	add.w	r4, fp, #1
 80046ce:	2b00      	cmp	r3, #0
 80046d0:	f000 8458 	beq.w	8004f84 <_dtoa_r+0xc0c>
 80046d4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80046d8:	2000      	movs	r0, #0
 80046da:	4966      	ldr	r1, [pc, #408]	; (8004874 <_dtoa_r+0x4fc>)
 80046dc:	f7fc fb56 	bl	8000d8c <__aeabi_ddiv>
 80046e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80046e4:	f7fc f870 	bl	80007c8 <__aeabi_dsub>
 80046e8:	f88b 5000 	strb.w	r5, [fp]
 80046ec:	4632      	mov	r2, r6
 80046ee:	463b      	mov	r3, r7
 80046f0:	e9cd 0100 	strd	r0, r1, [sp]
 80046f4:	f7fc fcb0 	bl	8001058 <__aeabi_dcmpgt>
 80046f8:	2800      	cmp	r0, #0
 80046fa:	f040 8502 	bne.w	8005102 <_dtoa_r+0xd8a>
 80046fe:	4632      	mov	r2, r6
 8004700:	463b      	mov	r3, r7
 8004702:	2000      	movs	r0, #0
 8004704:	4959      	ldr	r1, [pc, #356]	; (800486c <_dtoa_r+0x4f4>)
 8004706:	f7fc f85f 	bl	80007c8 <__aeabi_dsub>
 800470a:	4602      	mov	r2, r0
 800470c:	460b      	mov	r3, r1
 800470e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004712:	f7fc fca1 	bl	8001058 <__aeabi_dcmpgt>
 8004716:	2800      	cmp	r0, #0
 8004718:	f040 84fb 	bne.w	8005112 <_dtoa_r+0xd9a>
 800471c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800471e:	2a01      	cmp	r2, #1
 8004720:	d050      	beq.n	80047c4 <_dtoa_r+0x44c>
 8004722:	445a      	add	r2, fp
 8004724:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004728:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800472c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004730:	4692      	mov	sl, r2
 8004732:	46cb      	mov	fp, r9
 8004734:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004738:	e00c      	b.n	8004754 <_dtoa_r+0x3dc>
 800473a:	2000      	movs	r0, #0
 800473c:	494b      	ldr	r1, [pc, #300]	; (800486c <_dtoa_r+0x4f4>)
 800473e:	f7fc f843 	bl	80007c8 <__aeabi_dsub>
 8004742:	4642      	mov	r2, r8
 8004744:	464b      	mov	r3, r9
 8004746:	f7fc fc69 	bl	800101c <__aeabi_dcmplt>
 800474a:	2800      	cmp	r0, #0
 800474c:	f040 84dc 	bne.w	8005108 <_dtoa_r+0xd90>
 8004750:	4554      	cmp	r4, sl
 8004752:	d030      	beq.n	80047b6 <_dtoa_r+0x43e>
 8004754:	4640      	mov	r0, r8
 8004756:	4649      	mov	r1, r9
 8004758:	2200      	movs	r2, #0
 800475a:	4b47      	ldr	r3, [pc, #284]	; (8004878 <_dtoa_r+0x500>)
 800475c:	f7fc f9ec 	bl	8000b38 <__aeabi_dmul>
 8004760:	2200      	movs	r2, #0
 8004762:	4b45      	ldr	r3, [pc, #276]	; (8004878 <_dtoa_r+0x500>)
 8004764:	4680      	mov	r8, r0
 8004766:	4689      	mov	r9, r1
 8004768:	4630      	mov	r0, r6
 800476a:	4639      	mov	r1, r7
 800476c:	f7fc f9e4 	bl	8000b38 <__aeabi_dmul>
 8004770:	460f      	mov	r7, r1
 8004772:	4606      	mov	r6, r0
 8004774:	f7fc fc90 	bl	8001098 <__aeabi_d2iz>
 8004778:	4605      	mov	r5, r0
 800477a:	f7fc f973 	bl	8000a64 <__aeabi_i2d>
 800477e:	4602      	mov	r2, r0
 8004780:	460b      	mov	r3, r1
 8004782:	4630      	mov	r0, r6
 8004784:	4639      	mov	r1, r7
 8004786:	f7fc f81f 	bl	80007c8 <__aeabi_dsub>
 800478a:	3530      	adds	r5, #48	; 0x30
 800478c:	b2ed      	uxtb	r5, r5
 800478e:	4642      	mov	r2, r8
 8004790:	464b      	mov	r3, r9
 8004792:	f804 5b01 	strb.w	r5, [r4], #1
 8004796:	4606      	mov	r6, r0
 8004798:	460f      	mov	r7, r1
 800479a:	f7fc fc3f 	bl	800101c <__aeabi_dcmplt>
 800479e:	4632      	mov	r2, r6
 80047a0:	463b      	mov	r3, r7
 80047a2:	2800      	cmp	r0, #0
 80047a4:	d0c9      	beq.n	800473a <_dtoa_r+0x3c2>
 80047a6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80047a8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80047ac:	9306      	str	r3, [sp, #24]
 80047ae:	46d9      	mov	r9, fp
 80047b0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80047b4:	e236      	b.n	8004c24 <_dtoa_r+0x8ac>
 80047b6:	46d9      	mov	r9, fp
 80047b8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80047bc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80047c0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80047c4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80047c8:	e9cd 3400 	strd	r3, r4, [sp]
 80047cc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80047ce:	2b00      	cmp	r3, #0
 80047d0:	f2c0 80ae 	blt.w	8004930 <_dtoa_r+0x5b8>
 80047d4:	9a06      	ldr	r2, [sp, #24]
 80047d6:	2a0e      	cmp	r2, #14
 80047d8:	f300 80aa 	bgt.w	8004930 <_dtoa_r+0x5b8>
 80047dc:	4b21      	ldr	r3, [pc, #132]	; (8004864 <_dtoa_r+0x4ec>)
 80047de:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80047e2:	ed93 7b00 	vldr	d7, [r3]
 80047e6:	9b07      	ldr	r3, [sp, #28]
 80047e8:	2b00      	cmp	r3, #0
 80047ea:	ed8d 7b02 	vstr	d7, [sp, #8]
 80047ee:	f2c0 82be 	blt.w	8004d6e <_dtoa_r+0x9f6>
 80047f2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80047f6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047fa:	4630      	mov	r0, r6
 80047fc:	4639      	mov	r1, r7
 80047fe:	f7fc fac5 	bl	8000d8c <__aeabi_ddiv>
 8004802:	f7fc fc49 	bl	8001098 <__aeabi_d2iz>
 8004806:	4605      	mov	r5, r0
 8004808:	f7fc f92c 	bl	8000a64 <__aeabi_i2d>
 800480c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004810:	f7fc f992 	bl	8000b38 <__aeabi_dmul>
 8004814:	460b      	mov	r3, r1
 8004816:	4602      	mov	r2, r0
 8004818:	4639      	mov	r1, r7
 800481a:	4630      	mov	r0, r6
 800481c:	f7fb ffd4 	bl	80007c8 <__aeabi_dsub>
 8004820:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004824:	f88b 3000 	strb.w	r3, [fp]
 8004828:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800482a:	2b01      	cmp	r3, #1
 800482c:	4606      	mov	r6, r0
 800482e:	460f      	mov	r7, r1
 8004830:	f10b 0401 	add.w	r4, fp, #1
 8004834:	d053      	beq.n	80048de <_dtoa_r+0x566>
 8004836:	2200      	movs	r2, #0
 8004838:	4b0f      	ldr	r3, [pc, #60]	; (8004878 <_dtoa_r+0x500>)
 800483a:	f7fc f97d 	bl	8000b38 <__aeabi_dmul>
 800483e:	2200      	movs	r2, #0
 8004840:	2300      	movs	r3, #0
 8004842:	4606      	mov	r6, r0
 8004844:	460f      	mov	r7, r1
 8004846:	f7fc fbdf 	bl	8001008 <__aeabi_dcmpeq>
 800484a:	2800      	cmp	r0, #0
 800484c:	f040 81ea 	bne.w	8004c24 <_dtoa_r+0x8ac>
 8004850:	f8cd a000 	str.w	sl, [sp]
 8004854:	f8cd 901c 	str.w	r9, [sp, #28]
 8004858:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800485c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004860:	e017      	b.n	8004892 <_dtoa_r+0x51a>
 8004862:	bf00      	nop
 8004864:	08007400 	.word	0x08007400
 8004868:	080073d8 	.word	0x080073d8
 800486c:	3ff00000 	.word	0x3ff00000
 8004870:	401c0000 	.word	0x401c0000
 8004874:	3fe00000 	.word	0x3fe00000
 8004878:	40240000 	.word	0x40240000
 800487c:	f7fc f95c 	bl	8000b38 <__aeabi_dmul>
 8004880:	2200      	movs	r2, #0
 8004882:	2300      	movs	r3, #0
 8004884:	4606      	mov	r6, r0
 8004886:	460f      	mov	r7, r1
 8004888:	f7fc fbbe 	bl	8001008 <__aeabi_dcmpeq>
 800488c:	2800      	cmp	r0, #0
 800488e:	f040 833d 	bne.w	8004f0c <_dtoa_r+0xb94>
 8004892:	464a      	mov	r2, r9
 8004894:	4653      	mov	r3, sl
 8004896:	4630      	mov	r0, r6
 8004898:	4639      	mov	r1, r7
 800489a:	f7fc fa77 	bl	8000d8c <__aeabi_ddiv>
 800489e:	f7fc fbfb 	bl	8001098 <__aeabi_d2iz>
 80048a2:	4605      	mov	r5, r0
 80048a4:	f7fc f8de 	bl	8000a64 <__aeabi_i2d>
 80048a8:	464a      	mov	r2, r9
 80048aa:	4653      	mov	r3, sl
 80048ac:	f7fc f944 	bl	8000b38 <__aeabi_dmul>
 80048b0:	4602      	mov	r2, r0
 80048b2:	460b      	mov	r3, r1
 80048b4:	4630      	mov	r0, r6
 80048b6:	4639      	mov	r1, r7
 80048b8:	f7fb ff86 	bl	80007c8 <__aeabi_dsub>
 80048bc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80048c0:	f804 cb01 	strb.w	ip, [r4], #1
 80048c4:	eba4 0c0b 	sub.w	ip, r4, fp
 80048c8:	45e0      	cmp	r8, ip
 80048ca:	4606      	mov	r6, r0
 80048cc:	460f      	mov	r7, r1
 80048ce:	f04f 0200 	mov.w	r2, #0
 80048d2:	4bc1      	ldr	r3, [pc, #772]	; (8004bd8 <_dtoa_r+0x860>)
 80048d4:	d1d2      	bne.n	800487c <_dtoa_r+0x504>
 80048d6:	f8dd a000 	ldr.w	sl, [sp]
 80048da:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80048de:	4632      	mov	r2, r6
 80048e0:	463b      	mov	r3, r7
 80048e2:	4630      	mov	r0, r6
 80048e4:	4639      	mov	r1, r7
 80048e6:	f7fb ff71 	bl	80007cc <__adddf3>
 80048ea:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048ee:	4606      	mov	r6, r0
 80048f0:	460f      	mov	r7, r1
 80048f2:	f7fc fbb1 	bl	8001058 <__aeabi_dcmpgt>
 80048f6:	b958      	cbnz	r0, 8004910 <_dtoa_r+0x598>
 80048f8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048fc:	4630      	mov	r0, r6
 80048fe:	4639      	mov	r1, r7
 8004900:	f7fc fb82 	bl	8001008 <__aeabi_dcmpeq>
 8004904:	2800      	cmp	r0, #0
 8004906:	f000 818d 	beq.w	8004c24 <_dtoa_r+0x8ac>
 800490a:	07e9      	lsls	r1, r5, #31
 800490c:	f140 818a 	bpl.w	8004c24 <_dtoa_r+0x8ac>
 8004910:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004914:	e005      	b.n	8004922 <_dtoa_r+0x5aa>
 8004916:	459b      	cmp	fp, r3
 8004918:	f000 8373 	beq.w	8005002 <_dtoa_r+0xc8a>
 800491c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004920:	461c      	mov	r4, r3
 8004922:	2d39      	cmp	r5, #57	; 0x39
 8004924:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004928:	d0f5      	beq.n	8004916 <_dtoa_r+0x59e>
 800492a:	3501      	adds	r5, #1
 800492c:	701d      	strb	r5, [r3, #0]
 800492e:	e179      	b.n	8004c24 <_dtoa_r+0x8ac>
 8004930:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004932:	2a00      	cmp	r2, #0
 8004934:	d03b      	beq.n	80049ae <_dtoa_r+0x636>
 8004936:	9a02      	ldr	r2, [sp, #8]
 8004938:	2a01      	cmp	r2, #1
 800493a:	f340 820b 	ble.w	8004d54 <_dtoa_r+0x9dc>
 800493e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004940:	1e5f      	subs	r7, r3, #1
 8004942:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004944:	42bb      	cmp	r3, r7
 8004946:	f2c0 82e6 	blt.w	8004f16 <_dtoa_r+0xb9e>
 800494a:	1bdf      	subs	r7, r3, r7
 800494c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800494e:	2b00      	cmp	r3, #0
 8004950:	f2c0 830b 	blt.w	8004f6a <_dtoa_r+0xbf2>
 8004954:	9a08      	ldr	r2, [sp, #32]
 8004956:	4614      	mov	r4, r2
 8004958:	441a      	add	r2, r3
 800495a:	4498      	add	r8, r3
 800495c:	9208      	str	r2, [sp, #32]
 800495e:	2101      	movs	r1, #1
 8004960:	4648      	mov	r0, r9
 8004962:	f001 fcbf 	bl	80062e4 <__i2b>
 8004966:	4605      	mov	r5, r0
 8004968:	e024      	b.n	80049b4 <_dtoa_r+0x63c>
 800496a:	2301      	movs	r3, #1
 800496c:	930d      	str	r3, [sp, #52]	; 0x34
 800496e:	e5af      	b.n	80044d0 <_dtoa_r+0x158>
 8004970:	9a08      	ldr	r2, [sp, #32]
 8004972:	9b06      	ldr	r3, [sp, #24]
 8004974:	1ad2      	subs	r2, r2, r3
 8004976:	425b      	negs	r3, r3
 8004978:	930b      	str	r3, [sp, #44]	; 0x2c
 800497a:	2300      	movs	r3, #0
 800497c:	9208      	str	r2, [sp, #32]
 800497e:	930c      	str	r3, [sp, #48]	; 0x30
 8004980:	e5b5      	b.n	80044ee <_dtoa_r+0x176>
 8004982:	f1c4 0301 	rsb	r3, r4, #1
 8004986:	9308      	str	r3, [sp, #32]
 8004988:	f04f 0800 	mov.w	r8, #0
 800498c:	e5a7      	b.n	80044de <_dtoa_r+0x166>
 800498e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004992:	4640      	mov	r0, r8
 8004994:	f7fc f866 	bl	8000a64 <__aeabi_i2d>
 8004998:	4632      	mov	r2, r6
 800499a:	463b      	mov	r3, r7
 800499c:	f7fc fb34 	bl	8001008 <__aeabi_dcmpeq>
 80049a0:	2800      	cmp	r0, #0
 80049a2:	f47f ad81 	bne.w	80044a8 <_dtoa_r+0x130>
 80049a6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80049aa:	9306      	str	r3, [sp, #24]
 80049ac:	e57c      	b.n	80044a8 <_dtoa_r+0x130>
 80049ae:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80049b0:	9c08      	ldr	r4, [sp, #32]
 80049b2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80049b4:	2c00      	cmp	r4, #0
 80049b6:	dd0c      	ble.n	80049d2 <_dtoa_r+0x65a>
 80049b8:	f1b8 0f00 	cmp.w	r8, #0
 80049bc:	dd09      	ble.n	80049d2 <_dtoa_r+0x65a>
 80049be:	4544      	cmp	r4, r8
 80049c0:	9a08      	ldr	r2, [sp, #32]
 80049c2:	4623      	mov	r3, r4
 80049c4:	bfa8      	it	ge
 80049c6:	4643      	movge	r3, r8
 80049c8:	1ad2      	subs	r2, r2, r3
 80049ca:	9208      	str	r2, [sp, #32]
 80049cc:	1ae4      	subs	r4, r4, r3
 80049ce:	eba8 0803 	sub.w	r8, r8, r3
 80049d2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80049d4:	b16b      	cbz	r3, 80049f2 <_dtoa_r+0x67a>
 80049d6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049d8:	2a00      	cmp	r2, #0
 80049da:	f000 8290 	beq.w	8004efe <_dtoa_r+0xb86>
 80049de:	1bde      	subs	r6, r3, r7
 80049e0:	2f00      	cmp	r7, #0
 80049e2:	f040 819b 	bne.w	8004d1c <_dtoa_r+0x9a4>
 80049e6:	4651      	mov	r1, sl
 80049e8:	4632      	mov	r2, r6
 80049ea:	4648      	mov	r0, r9
 80049ec:	f001 fd2a 	bl	8006444 <__pow5mult>
 80049f0:	4682      	mov	sl, r0
 80049f2:	2101      	movs	r1, #1
 80049f4:	4648      	mov	r0, r9
 80049f6:	f001 fc75 	bl	80062e4 <__i2b>
 80049fa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80049fc:	4606      	mov	r6, r0
 80049fe:	2a00      	cmp	r2, #0
 8004a00:	f040 8125 	bne.w	8004c4e <_dtoa_r+0x8d6>
 8004a04:	9b02      	ldr	r3, [sp, #8]
 8004a06:	2b01      	cmp	r3, #1
 8004a08:	f340 816c 	ble.w	8004ce4 <_dtoa_r+0x96c>
 8004a0c:	2001      	movs	r0, #1
 8004a0e:	4440      	add	r0, r8
 8004a10:	f010 001f 	ands.w	r0, r0, #31
 8004a14:	f000 8119 	beq.w	8004c4a <_dtoa_r+0x8d2>
 8004a18:	f1c0 0320 	rsb	r3, r0, #32
 8004a1c:	2b04      	cmp	r3, #4
 8004a1e:	f340 83ac 	ble.w	800517a <_dtoa_r+0xe02>
 8004a22:	f1c0 001c 	rsb	r0, r0, #28
 8004a26:	9b08      	ldr	r3, [sp, #32]
 8004a28:	4403      	add	r3, r0
 8004a2a:	9308      	str	r3, [sp, #32]
 8004a2c:	4404      	add	r4, r0
 8004a2e:	4480      	add	r8, r0
 8004a30:	9b08      	ldr	r3, [sp, #32]
 8004a32:	2b00      	cmp	r3, #0
 8004a34:	dd05      	ble.n	8004a42 <_dtoa_r+0x6ca>
 8004a36:	4651      	mov	r1, sl
 8004a38:	461a      	mov	r2, r3
 8004a3a:	4648      	mov	r0, r9
 8004a3c:	f001 fd52 	bl	80064e4 <__lshift>
 8004a40:	4682      	mov	sl, r0
 8004a42:	f1b8 0f00 	cmp.w	r8, #0
 8004a46:	dd05      	ble.n	8004a54 <_dtoa_r+0x6dc>
 8004a48:	4631      	mov	r1, r6
 8004a4a:	4642      	mov	r2, r8
 8004a4c:	4648      	mov	r0, r9
 8004a4e:	f001 fd49 	bl	80064e4 <__lshift>
 8004a52:	4606      	mov	r6, r0
 8004a54:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004a56:	2b00      	cmp	r3, #0
 8004a58:	d177      	bne.n	8004b4a <_dtoa_r+0x7d2>
 8004a5a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a5c:	2b00      	cmp	r3, #0
 8004a5e:	f340 8209 	ble.w	8004e74 <_dtoa_r+0xafc>
 8004a62:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a64:	2b00      	cmp	r3, #0
 8004a66:	f000 8089 	beq.w	8004b7c <_dtoa_r+0x804>
 8004a6a:	2c00      	cmp	r4, #0
 8004a6c:	f300 816b 	bgt.w	8004d46 <_dtoa_r+0x9ce>
 8004a70:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004a72:	2b00      	cmp	r3, #0
 8004a74:	f040 81cd 	bne.w	8004e12 <_dtoa_r+0xa9a>
 8004a78:	46a8      	mov	r8, r5
 8004a7a:	9a00      	ldr	r2, [sp, #0]
 8004a7c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004a80:	f002 0201 	and.w	r2, r2, #1
 8004a84:	920a      	str	r2, [sp, #40]	; 0x28
 8004a86:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004a88:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004a8c:	441a      	add	r2, r3
 8004a8e:	465f      	mov	r7, fp
 8004a90:	9209      	str	r2, [sp, #36]	; 0x24
 8004a92:	46b3      	mov	fp, r6
 8004a94:	4659      	mov	r1, fp
 8004a96:	4650      	mov	r0, sl
 8004a98:	f7ff fbdc 	bl	8004254 <quorem>
 8004a9c:	4629      	mov	r1, r5
 8004a9e:	4604      	mov	r4, r0
 8004aa0:	4650      	mov	r0, sl
 8004aa2:	f001 fd75 	bl	8006590 <__mcmp>
 8004aa6:	4659      	mov	r1, fp
 8004aa8:	4606      	mov	r6, r0
 8004aaa:	4642      	mov	r2, r8
 8004aac:	4648      	mov	r0, r9
 8004aae:	f001 fd8b 	bl	80065c8 <__mdiff>
 8004ab2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004ab6:	9300      	str	r3, [sp, #0]
 8004ab8:	68c3      	ldr	r3, [r0, #12]
 8004aba:	4601      	mov	r1, r0
 8004abc:	2b00      	cmp	r3, #0
 8004abe:	f040 81d4 	bne.w	8004e6a <_dtoa_r+0xaf2>
 8004ac2:	9008      	str	r0, [sp, #32]
 8004ac4:	4650      	mov	r0, sl
 8004ac6:	f001 fd63 	bl	8006590 <__mcmp>
 8004aca:	9a08      	ldr	r2, [sp, #32]
 8004acc:	9007      	str	r0, [sp, #28]
 8004ace:	4611      	mov	r1, r2
 8004ad0:	4648      	mov	r0, r9
 8004ad2:	f001 fb6d 	bl	80061b0 <_Bfree>
 8004ad6:	9b07      	ldr	r3, [sp, #28]
 8004ad8:	b933      	cbnz	r3, 8004ae8 <_dtoa_r+0x770>
 8004ada:	9a02      	ldr	r2, [sp, #8]
 8004adc:	b922      	cbnz	r2, 8004ae8 <_dtoa_r+0x770>
 8004ade:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004ae0:	2b00      	cmp	r3, #0
 8004ae2:	f000 8319 	beq.w	8005118 <_dtoa_r+0xda0>
 8004ae6:	9b02      	ldr	r3, [sp, #8]
 8004ae8:	2e00      	cmp	r6, #0
 8004aea:	f2c0 821c 	blt.w	8004f26 <_dtoa_r+0xbae>
 8004aee:	d105      	bne.n	8004afc <_dtoa_r+0x784>
 8004af0:	9a02      	ldr	r2, [sp, #8]
 8004af2:	b91a      	cbnz	r2, 8004afc <_dtoa_r+0x784>
 8004af4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004af6:	2a00      	cmp	r2, #0
 8004af8:	f000 8215 	beq.w	8004f26 <_dtoa_r+0xbae>
 8004afc:	2b00      	cmp	r3, #0
 8004afe:	f107 0401 	add.w	r4, r7, #1
 8004b02:	f300 8225 	bgt.w	8004f50 <_dtoa_r+0xbd8>
 8004b06:	9b00      	ldr	r3, [sp, #0]
 8004b08:	703b      	strb	r3, [r7, #0]
 8004b0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b0c:	42bb      	cmp	r3, r7
 8004b0e:	f000 8230 	beq.w	8004f72 <_dtoa_r+0xbfa>
 8004b12:	4651      	mov	r1, sl
 8004b14:	2300      	movs	r3, #0
 8004b16:	220a      	movs	r2, #10
 8004b18:	4648      	mov	r0, r9
 8004b1a:	f001 fb53 	bl	80061c4 <__multadd>
 8004b1e:	4545      	cmp	r5, r8
 8004b20:	4682      	mov	sl, r0
 8004b22:	4629      	mov	r1, r5
 8004b24:	f04f 0300 	mov.w	r3, #0
 8004b28:	f04f 020a 	mov.w	r2, #10
 8004b2c:	4648      	mov	r0, r9
 8004b2e:	f000 8196 	beq.w	8004e5e <_dtoa_r+0xae6>
 8004b32:	f001 fb47 	bl	80061c4 <__multadd>
 8004b36:	4641      	mov	r1, r8
 8004b38:	4605      	mov	r5, r0
 8004b3a:	2300      	movs	r3, #0
 8004b3c:	220a      	movs	r2, #10
 8004b3e:	4648      	mov	r0, r9
 8004b40:	f001 fb40 	bl	80061c4 <__multadd>
 8004b44:	4627      	mov	r7, r4
 8004b46:	4680      	mov	r8, r0
 8004b48:	e7a4      	b.n	8004a94 <_dtoa_r+0x71c>
 8004b4a:	4631      	mov	r1, r6
 8004b4c:	4650      	mov	r0, sl
 8004b4e:	f001 fd1f 	bl	8006590 <__mcmp>
 8004b52:	2800      	cmp	r0, #0
 8004b54:	da81      	bge.n	8004a5a <_dtoa_r+0x6e2>
 8004b56:	9f06      	ldr	r7, [sp, #24]
 8004b58:	4651      	mov	r1, sl
 8004b5a:	2300      	movs	r3, #0
 8004b5c:	220a      	movs	r2, #10
 8004b5e:	4648      	mov	r0, r9
 8004b60:	3f01      	subs	r7, #1
 8004b62:	9706      	str	r7, [sp, #24]
 8004b64:	f001 fb2e 	bl	80061c4 <__multadd>
 8004b68:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b6a:	4682      	mov	sl, r0
 8004b6c:	2b00      	cmp	r3, #0
 8004b6e:	f040 82eb 	bne.w	8005148 <_dtoa_r+0xdd0>
 8004b72:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004b74:	2b00      	cmp	r3, #0
 8004b76:	f340 82f3 	ble.w	8005160 <_dtoa_r+0xde8>
 8004b7a:	9309      	str	r3, [sp, #36]	; 0x24
 8004b7c:	465c      	mov	r4, fp
 8004b7e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004b82:	e002      	b.n	8004b8a <_dtoa_r+0x812>
 8004b84:	f001 fb1e 	bl	80061c4 <__multadd>
 8004b88:	4682      	mov	sl, r0
 8004b8a:	4631      	mov	r1, r6
 8004b8c:	4650      	mov	r0, sl
 8004b8e:	f7ff fb61 	bl	8004254 <quorem>
 8004b92:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004b96:	f804 7b01 	strb.w	r7, [r4], #1
 8004b9a:	eba4 030b 	sub.w	r3, r4, fp
 8004b9e:	4598      	cmp	r8, r3
 8004ba0:	f04f 020a 	mov.w	r2, #10
 8004ba4:	f04f 0300 	mov.w	r3, #0
 8004ba8:	4651      	mov	r1, sl
 8004baa:	4648      	mov	r0, r9
 8004bac:	dcea      	bgt.n	8004b84 <_dtoa_r+0x80c>
 8004bae:	2300      	movs	r3, #0
 8004bb0:	9700      	str	r7, [sp, #0]
 8004bb2:	9302      	str	r3, [sp, #8]
 8004bb4:	4651      	mov	r1, sl
 8004bb6:	2201      	movs	r2, #1
 8004bb8:	4648      	mov	r0, r9
 8004bba:	f001 fc93 	bl	80064e4 <__lshift>
 8004bbe:	4631      	mov	r1, r6
 8004bc0:	4682      	mov	sl, r0
 8004bc2:	f001 fce5 	bl	8006590 <__mcmp>
 8004bc6:	2800      	cmp	r0, #0
 8004bc8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004bcc:	dc14      	bgt.n	8004bf8 <_dtoa_r+0x880>
 8004bce:	d108      	bne.n	8004be2 <_dtoa_r+0x86a>
 8004bd0:	9b00      	ldr	r3, [sp, #0]
 8004bd2:	07db      	lsls	r3, r3, #31
 8004bd4:	d410      	bmi.n	8004bf8 <_dtoa_r+0x880>
 8004bd6:	e004      	b.n	8004be2 <_dtoa_r+0x86a>
 8004bd8:	40240000 	.word	0x40240000
 8004bdc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004be0:	461c      	mov	r4, r3
 8004be2:	2a30      	cmp	r2, #48	; 0x30
 8004be4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004be8:	d0f8      	beq.n	8004bdc <_dtoa_r+0x864>
 8004bea:	e00b      	b.n	8004c04 <_dtoa_r+0x88c>
 8004bec:	459b      	cmp	fp, r3
 8004bee:	f000 814e 	beq.w	8004e8e <_dtoa_r+0xb16>
 8004bf2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004bf6:	461c      	mov	r4, r3
 8004bf8:	2a39      	cmp	r2, #57	; 0x39
 8004bfa:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004bfe:	d0f5      	beq.n	8004bec <_dtoa_r+0x874>
 8004c00:	3201      	adds	r2, #1
 8004c02:	701a      	strb	r2, [r3, #0]
 8004c04:	4631      	mov	r1, r6
 8004c06:	4648      	mov	r0, r9
 8004c08:	f001 fad2 	bl	80061b0 <_Bfree>
 8004c0c:	b155      	cbz	r5, 8004c24 <_dtoa_r+0x8ac>
 8004c0e:	9902      	ldr	r1, [sp, #8]
 8004c10:	b121      	cbz	r1, 8004c1c <_dtoa_r+0x8a4>
 8004c12:	42a9      	cmp	r1, r5
 8004c14:	d002      	beq.n	8004c1c <_dtoa_r+0x8a4>
 8004c16:	4648      	mov	r0, r9
 8004c18:	f001 faca 	bl	80061b0 <_Bfree>
 8004c1c:	4629      	mov	r1, r5
 8004c1e:	4648      	mov	r0, r9
 8004c20:	f001 fac6 	bl	80061b0 <_Bfree>
 8004c24:	4651      	mov	r1, sl
 8004c26:	4648      	mov	r0, r9
 8004c28:	f001 fac2 	bl	80061b0 <_Bfree>
 8004c2c:	2200      	movs	r2, #0
 8004c2e:	9b06      	ldr	r3, [sp, #24]
 8004c30:	7022      	strb	r2, [r4, #0]
 8004c32:	9a05      	ldr	r2, [sp, #20]
 8004c34:	3301      	adds	r3, #1
 8004c36:	6013      	str	r3, [r2, #0]
 8004c38:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004c3a:	2b00      	cmp	r3, #0
 8004c3c:	f43f abdb 	beq.w	80043f6 <_dtoa_r+0x7e>
 8004c40:	4658      	mov	r0, fp
 8004c42:	601c      	str	r4, [r3, #0]
 8004c44:	b01b      	add	sp, #108	; 0x6c
 8004c46:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c4a:	201c      	movs	r0, #28
 8004c4c:	e6eb      	b.n	8004a26 <_dtoa_r+0x6ae>
 8004c4e:	4601      	mov	r1, r0
 8004c50:	4648      	mov	r0, r9
 8004c52:	f001 fbf7 	bl	8006444 <__pow5mult>
 8004c56:	9b02      	ldr	r3, [sp, #8]
 8004c58:	2b01      	cmp	r3, #1
 8004c5a:	4606      	mov	r6, r0
 8004c5c:	f340 80d4 	ble.w	8004e08 <_dtoa_r+0xa90>
 8004c60:	2300      	movs	r3, #0
 8004c62:	930c      	str	r3, [sp, #48]	; 0x30
 8004c64:	6933      	ldr	r3, [r6, #16]
 8004c66:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004c6a:	6918      	ldr	r0, [r3, #16]
 8004c6c:	f001 faea 	bl	8006244 <__hi0bits>
 8004c70:	f1c0 0020 	rsb	r0, r0, #32
 8004c74:	e6cb      	b.n	8004a0e <_dtoa_r+0x696>
 8004c76:	900d      	str	r0, [sp, #52]	; 0x34
 8004c78:	e42a      	b.n	80044d0 <_dtoa_r+0x158>
 8004c7a:	2501      	movs	r5, #1
 8004c7c:	e440      	b.n	8004500 <_dtoa_r+0x188>
 8004c7e:	f1c3 0820 	rsb	r8, r3, #32
 8004c82:	9b00      	ldr	r3, [sp, #0]
 8004c84:	fa03 f008 	lsl.w	r0, r3, r8
 8004c88:	f7ff bbd8 	b.w	800443c <_dtoa_r+0xc4>
 8004c8c:	2300      	movs	r3, #0
 8004c8e:	930a      	str	r3, [sp, #40]	; 0x28
 8004c90:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004c94:	4413      	add	r3, r2
 8004c96:	930e      	str	r3, [sp, #56]	; 0x38
 8004c98:	3301      	adds	r3, #1
 8004c9a:	2b01      	cmp	r3, #1
 8004c9c:	461e      	mov	r6, r3
 8004c9e:	9309      	str	r3, [sp, #36]	; 0x24
 8004ca0:	bfb8      	it	lt
 8004ca2:	2601      	movlt	r6, #1
 8004ca4:	2100      	movs	r1, #0
 8004ca6:	2e17      	cmp	r6, #23
 8004ca8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004cac:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004cae:	f77f ac89 	ble.w	80045c4 <_dtoa_r+0x24c>
 8004cb2:	2201      	movs	r2, #1
 8004cb4:	2304      	movs	r3, #4
 8004cb6:	005b      	lsls	r3, r3, #1
 8004cb8:	f103 0014 	add.w	r0, r3, #20
 8004cbc:	42b0      	cmp	r0, r6
 8004cbe:	4611      	mov	r1, r2
 8004cc0:	f102 0201 	add.w	r2, r2, #1
 8004cc4:	d9f7      	bls.n	8004cb6 <_dtoa_r+0x93e>
 8004cc6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004cca:	e47b      	b.n	80045c4 <_dtoa_r+0x24c>
 8004ccc:	2300      	movs	r3, #0
 8004cce:	930a      	str	r3, [sp, #40]	; 0x28
 8004cd0:	9e07      	ldr	r6, [sp, #28]
 8004cd2:	2e00      	cmp	r6, #0
 8004cd4:	f340 80e2 	ble.w	8004e9c <_dtoa_r+0xb24>
 8004cd8:	960e      	str	r6, [sp, #56]	; 0x38
 8004cda:	9609      	str	r6, [sp, #36]	; 0x24
 8004cdc:	e7e2      	b.n	8004ca4 <_dtoa_r+0x92c>
 8004cde:	2301      	movs	r3, #1
 8004ce0:	930a      	str	r3, [sp, #40]	; 0x28
 8004ce2:	e7f5      	b.n	8004cd0 <_dtoa_r+0x958>
 8004ce4:	9b00      	ldr	r3, [sp, #0]
 8004ce6:	2b00      	cmp	r3, #0
 8004ce8:	f47f ae90 	bne.w	8004a0c <_dtoa_r+0x694>
 8004cec:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004cf0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004cf4:	2b00      	cmp	r3, #0
 8004cf6:	f040 8192 	bne.w	800501e <_dtoa_r+0xca6>
 8004cfa:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004cfe:	0d1b      	lsrs	r3, r3, #20
 8004d00:	051b      	lsls	r3, r3, #20
 8004d02:	b12b      	cbz	r3, 8004d10 <_dtoa_r+0x998>
 8004d04:	9b08      	ldr	r3, [sp, #32]
 8004d06:	3301      	adds	r3, #1
 8004d08:	9308      	str	r3, [sp, #32]
 8004d0a:	f108 0801 	add.w	r8, r8, #1
 8004d0e:	2301      	movs	r3, #1
 8004d10:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d12:	930c      	str	r3, [sp, #48]	; 0x30
 8004d14:	2a00      	cmp	r2, #0
 8004d16:	f43f ae79 	beq.w	8004a0c <_dtoa_r+0x694>
 8004d1a:	e7a3      	b.n	8004c64 <_dtoa_r+0x8ec>
 8004d1c:	463a      	mov	r2, r7
 8004d1e:	4629      	mov	r1, r5
 8004d20:	4648      	mov	r0, r9
 8004d22:	f001 fb8f 	bl	8006444 <__pow5mult>
 8004d26:	4652      	mov	r2, sl
 8004d28:	4601      	mov	r1, r0
 8004d2a:	4605      	mov	r5, r0
 8004d2c:	4648      	mov	r0, r9
 8004d2e:	f001 fae3 	bl	80062f8 <__multiply>
 8004d32:	4651      	mov	r1, sl
 8004d34:	4607      	mov	r7, r0
 8004d36:	4648      	mov	r0, r9
 8004d38:	f001 fa3a 	bl	80061b0 <_Bfree>
 8004d3c:	46ba      	mov	sl, r7
 8004d3e:	2e00      	cmp	r6, #0
 8004d40:	f43f ae57 	beq.w	80049f2 <_dtoa_r+0x67a>
 8004d44:	e64f      	b.n	80049e6 <_dtoa_r+0x66e>
 8004d46:	4629      	mov	r1, r5
 8004d48:	4622      	mov	r2, r4
 8004d4a:	4648      	mov	r0, r9
 8004d4c:	f001 fbca 	bl	80064e4 <__lshift>
 8004d50:	4605      	mov	r5, r0
 8004d52:	e68d      	b.n	8004a70 <_dtoa_r+0x6f8>
 8004d54:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004d56:	2a00      	cmp	r2, #0
 8004d58:	f000 815d 	beq.w	8005016 <_dtoa_r+0xc9e>
 8004d5c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004d60:	9a08      	ldr	r2, [sp, #32]
 8004d62:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004d64:	4614      	mov	r4, r2
 8004d66:	441a      	add	r2, r3
 8004d68:	4498      	add	r8, r3
 8004d6a:	9208      	str	r2, [sp, #32]
 8004d6c:	e5f7      	b.n	800495e <_dtoa_r+0x5e6>
 8004d6e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d70:	2b00      	cmp	r3, #0
 8004d72:	f73f ad3e 	bgt.w	80047f2 <_dtoa_r+0x47a>
 8004d76:	f040 80bc 	bne.w	8004ef2 <_dtoa_r+0xb7a>
 8004d7a:	ec51 0b17 	vmov	r0, r1, d7
 8004d7e:	2200      	movs	r2, #0
 8004d80:	4bb2      	ldr	r3, [pc, #712]	; (800504c <_dtoa_r+0xcd4>)
 8004d82:	f7fb fed9 	bl	8000b38 <__aeabi_dmul>
 8004d86:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d8a:	f7fc f95b 	bl	8001044 <__aeabi_dcmpge>
 8004d8e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004d90:	4635      	mov	r5, r6
 8004d92:	2800      	cmp	r0, #0
 8004d94:	d176      	bne.n	8004e84 <_dtoa_r+0xb0c>
 8004d96:	9a06      	ldr	r2, [sp, #24]
 8004d98:	2331      	movs	r3, #49	; 0x31
 8004d9a:	3201      	adds	r2, #1
 8004d9c:	9206      	str	r2, [sp, #24]
 8004d9e:	f88b 3000 	strb.w	r3, [fp]
 8004da2:	f10b 0401 	add.w	r4, fp, #1
 8004da6:	4631      	mov	r1, r6
 8004da8:	4648      	mov	r0, r9
 8004daa:	f001 fa01 	bl	80061b0 <_Bfree>
 8004dae:	2d00      	cmp	r5, #0
 8004db0:	f47f af34 	bne.w	8004c1c <_dtoa_r+0x8a4>
 8004db4:	e736      	b.n	8004c24 <_dtoa_r+0x8ac>
 8004db6:	f000 8142 	beq.w	800503e <_dtoa_r+0xcc6>
 8004dba:	9b06      	ldr	r3, [sp, #24]
 8004dbc:	425c      	negs	r4, r3
 8004dbe:	4ba4      	ldr	r3, [pc, #656]	; (8005050 <_dtoa_r+0xcd8>)
 8004dc0:	f004 020f 	and.w	r2, r4, #15
 8004dc4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004dc8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004dcc:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004dd0:	f7fb feb2 	bl	8000b38 <__aeabi_dmul>
 8004dd4:	1124      	asrs	r4, r4, #4
 8004dd6:	e9cd 0100 	strd	r0, r1, [sp]
 8004dda:	f000 81c6 	beq.w	800516a <_dtoa_r+0xdf2>
 8004dde:	4d9d      	ldr	r5, [pc, #628]	; (8005054 <_dtoa_r+0xcdc>)
 8004de0:	2300      	movs	r3, #0
 8004de2:	2602      	movs	r6, #2
 8004de4:	07e7      	lsls	r7, r4, #31
 8004de6:	d505      	bpl.n	8004df4 <_dtoa_r+0xa7c>
 8004de8:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004dec:	f7fb fea4 	bl	8000b38 <__aeabi_dmul>
 8004df0:	3601      	adds	r6, #1
 8004df2:	2301      	movs	r3, #1
 8004df4:	1064      	asrs	r4, r4, #1
 8004df6:	f105 0508 	add.w	r5, r5, #8
 8004dfa:	d1f3      	bne.n	8004de4 <_dtoa_r+0xa6c>
 8004dfc:	2b00      	cmp	r3, #0
 8004dfe:	f43f ac27 	beq.w	8004650 <_dtoa_r+0x2d8>
 8004e02:	e9cd 0100 	strd	r0, r1, [sp]
 8004e06:	e423      	b.n	8004650 <_dtoa_r+0x2d8>
 8004e08:	9b00      	ldr	r3, [sp, #0]
 8004e0a:	2b00      	cmp	r3, #0
 8004e0c:	f43f af6e 	beq.w	8004cec <_dtoa_r+0x974>
 8004e10:	e726      	b.n	8004c60 <_dtoa_r+0x8e8>
 8004e12:	6869      	ldr	r1, [r5, #4]
 8004e14:	4648      	mov	r0, r9
 8004e16:	f001 f9a5 	bl	8006164 <_Balloc>
 8004e1a:	692b      	ldr	r3, [r5, #16]
 8004e1c:	3302      	adds	r3, #2
 8004e1e:	009a      	lsls	r2, r3, #2
 8004e20:	4604      	mov	r4, r0
 8004e22:	f105 010c 	add.w	r1, r5, #12
 8004e26:	300c      	adds	r0, #12
 8004e28:	f7fb fb6a 	bl	8000500 <memcpy>
 8004e2c:	4621      	mov	r1, r4
 8004e2e:	2201      	movs	r2, #1
 8004e30:	4648      	mov	r0, r9
 8004e32:	f001 fb57 	bl	80064e4 <__lshift>
 8004e36:	4680      	mov	r8, r0
 8004e38:	e61f      	b.n	8004a7a <_dtoa_r+0x702>
 8004e3a:	2400      	movs	r4, #0
 8004e3c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004e40:	4621      	mov	r1, r4
 8004e42:	4648      	mov	r0, r9
 8004e44:	f001 f98e 	bl	8006164 <_Balloc>
 8004e48:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004e4c:	930e      	str	r3, [sp, #56]	; 0x38
 8004e4e:	9309      	str	r3, [sp, #36]	; 0x24
 8004e50:	2301      	movs	r3, #1
 8004e52:	4683      	mov	fp, r0
 8004e54:	9407      	str	r4, [sp, #28]
 8004e56:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004e5a:	930a      	str	r3, [sp, #40]	; 0x28
 8004e5c:	e4b6      	b.n	80047cc <_dtoa_r+0x454>
 8004e5e:	f001 f9b1 	bl	80061c4 <__multadd>
 8004e62:	4627      	mov	r7, r4
 8004e64:	4605      	mov	r5, r0
 8004e66:	4680      	mov	r8, r0
 8004e68:	e614      	b.n	8004a94 <_dtoa_r+0x71c>
 8004e6a:	4648      	mov	r0, r9
 8004e6c:	f001 f9a0 	bl	80061b0 <_Bfree>
 8004e70:	2301      	movs	r3, #1
 8004e72:	e639      	b.n	8004ae8 <_dtoa_r+0x770>
 8004e74:	9b02      	ldr	r3, [sp, #8]
 8004e76:	2b02      	cmp	r3, #2
 8004e78:	f77f adf3 	ble.w	8004a62 <_dtoa_r+0x6ea>
 8004e7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e7e:	2b00      	cmp	r3, #0
 8004e80:	f000 80cf 	beq.w	8005022 <_dtoa_r+0xcaa>
 8004e84:	9b07      	ldr	r3, [sp, #28]
 8004e86:	43db      	mvns	r3, r3
 8004e88:	9306      	str	r3, [sp, #24]
 8004e8a:	465c      	mov	r4, fp
 8004e8c:	e78b      	b.n	8004da6 <_dtoa_r+0xa2e>
 8004e8e:	9a06      	ldr	r2, [sp, #24]
 8004e90:	2331      	movs	r3, #49	; 0x31
 8004e92:	3201      	adds	r2, #1
 8004e94:	9206      	str	r2, [sp, #24]
 8004e96:	f88b 3000 	strb.w	r3, [fp]
 8004e9a:	e6b3      	b.n	8004c04 <_dtoa_r+0x88c>
 8004e9c:	2401      	movs	r4, #1
 8004e9e:	9409      	str	r4, [sp, #36]	; 0x24
 8004ea0:	9407      	str	r4, [sp, #28]
 8004ea2:	f7ff bb8b 	b.w	80045bc <_dtoa_r+0x244>
 8004ea6:	4630      	mov	r0, r6
 8004ea8:	f7fb fddc 	bl	8000a64 <__aeabi_i2d>
 8004eac:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004eb0:	f7fb fe42 	bl	8000b38 <__aeabi_dmul>
 8004eb4:	2200      	movs	r2, #0
 8004eb6:	4b68      	ldr	r3, [pc, #416]	; (8005058 <_dtoa_r+0xce0>)
 8004eb8:	f7fb fc88 	bl	80007cc <__adddf3>
 8004ebc:	4606      	mov	r6, r0
 8004ebe:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004ec2:	2200      	movs	r2, #0
 8004ec4:	4b61      	ldr	r3, [pc, #388]	; (800504c <_dtoa_r+0xcd4>)
 8004ec6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004eca:	f7fb fc7d 	bl	80007c8 <__aeabi_dsub>
 8004ece:	4632      	mov	r2, r6
 8004ed0:	463b      	mov	r3, r7
 8004ed2:	4604      	mov	r4, r0
 8004ed4:	460d      	mov	r5, r1
 8004ed6:	f7fc f8bf 	bl	8001058 <__aeabi_dcmpgt>
 8004eda:	2800      	cmp	r0, #0
 8004edc:	d14f      	bne.n	8004f7e <_dtoa_r+0xc06>
 8004ede:	4632      	mov	r2, r6
 8004ee0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004ee4:	4620      	mov	r0, r4
 8004ee6:	4629      	mov	r1, r5
 8004ee8:	f7fc f898 	bl	800101c <__aeabi_dcmplt>
 8004eec:	2800      	cmp	r0, #0
 8004eee:	f43f ac69 	beq.w	80047c4 <_dtoa_r+0x44c>
 8004ef2:	2600      	movs	r6, #0
 8004ef4:	4635      	mov	r5, r6
 8004ef6:	e7c5      	b.n	8004e84 <_dtoa_r+0xb0c>
 8004ef8:	2301      	movs	r3, #1
 8004efa:	930a      	str	r3, [sp, #40]	; 0x28
 8004efc:	e6c8      	b.n	8004c90 <_dtoa_r+0x918>
 8004efe:	4651      	mov	r1, sl
 8004f00:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004f02:	4648      	mov	r0, r9
 8004f04:	f001 fa9e 	bl	8006444 <__pow5mult>
 8004f08:	4682      	mov	sl, r0
 8004f0a:	e572      	b.n	80049f2 <_dtoa_r+0x67a>
 8004f0c:	f8dd a000 	ldr.w	sl, [sp]
 8004f10:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004f14:	e686      	b.n	8004c24 <_dtoa_r+0x8ac>
 8004f16:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004f18:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004f1a:	1afb      	subs	r3, r7, r3
 8004f1c:	441a      	add	r2, r3
 8004f1e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004f22:	2700      	movs	r7, #0
 8004f24:	e512      	b.n	800494c <_dtoa_r+0x5d4>
 8004f26:	2b00      	cmp	r3, #0
 8004f28:	9402      	str	r4, [sp, #8]
 8004f2a:	465e      	mov	r6, fp
 8004f2c:	f107 0401 	add.w	r4, r7, #1
 8004f30:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f34:	f300 80ba 	bgt.w	80050ac <_dtoa_r+0xd34>
 8004f38:	9b00      	ldr	r3, [sp, #0]
 8004f3a:	9502      	str	r5, [sp, #8]
 8004f3c:	703b      	strb	r3, [r7, #0]
 8004f3e:	4645      	mov	r5, r8
 8004f40:	e660      	b.n	8004c04 <_dtoa_r+0x88c>
 8004f42:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004f46:	2602      	movs	r6, #2
 8004f48:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004f4c:	f7ff bb67 	b.w	800461e <_dtoa_r+0x2a6>
 8004f50:	9b00      	ldr	r3, [sp, #0]
 8004f52:	2b39      	cmp	r3, #57	; 0x39
 8004f54:	465e      	mov	r6, fp
 8004f56:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f5a:	f000 80b9 	beq.w	80050d0 <_dtoa_r+0xd58>
 8004f5e:	9b00      	ldr	r3, [sp, #0]
 8004f60:	9502      	str	r5, [sp, #8]
 8004f62:	3301      	adds	r3, #1
 8004f64:	703b      	strb	r3, [r7, #0]
 8004f66:	4645      	mov	r5, r8
 8004f68:	e64c      	b.n	8004c04 <_dtoa_r+0x88c>
 8004f6a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004f6e:	1a9c      	subs	r4, r3, r2
 8004f70:	e4f5      	b.n	800495e <_dtoa_r+0x5e6>
 8004f72:	465e      	mov	r6, fp
 8004f74:	9502      	str	r5, [sp, #8]
 8004f76:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f7a:	4645      	mov	r5, r8
 8004f7c:	e61a      	b.n	8004bb4 <_dtoa_r+0x83c>
 8004f7e:	2600      	movs	r6, #0
 8004f80:	4635      	mov	r5, r6
 8004f82:	e708      	b.n	8004d96 <_dtoa_r+0xa1e>
 8004f84:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004f88:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f8c:	f7fb fdd4 	bl	8000b38 <__aeabi_dmul>
 8004f90:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004f92:	f88b 5000 	strb.w	r5, [fp]
 8004f96:	2b01      	cmp	r3, #1
 8004f98:	e9cd 0100 	strd	r0, r1, [sp]
 8004f9c:	d020      	beq.n	8004fe0 <_dtoa_r+0xc68>
 8004f9e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004fa0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004fa4:	445b      	add	r3, fp
 8004fa6:	4698      	mov	r8, r3
 8004fa8:	2200      	movs	r2, #0
 8004faa:	4b2c      	ldr	r3, [pc, #176]	; (800505c <_dtoa_r+0xce4>)
 8004fac:	4630      	mov	r0, r6
 8004fae:	4639      	mov	r1, r7
 8004fb0:	f7fb fdc2 	bl	8000b38 <__aeabi_dmul>
 8004fb4:	460f      	mov	r7, r1
 8004fb6:	4606      	mov	r6, r0
 8004fb8:	f7fc f86e 	bl	8001098 <__aeabi_d2iz>
 8004fbc:	4605      	mov	r5, r0
 8004fbe:	f7fb fd51 	bl	8000a64 <__aeabi_i2d>
 8004fc2:	3530      	adds	r5, #48	; 0x30
 8004fc4:	4602      	mov	r2, r0
 8004fc6:	460b      	mov	r3, r1
 8004fc8:	4630      	mov	r0, r6
 8004fca:	4639      	mov	r1, r7
 8004fcc:	f7fb fbfc 	bl	80007c8 <__aeabi_dsub>
 8004fd0:	f804 5b01 	strb.w	r5, [r4], #1
 8004fd4:	4544      	cmp	r4, r8
 8004fd6:	4606      	mov	r6, r0
 8004fd8:	460f      	mov	r7, r1
 8004fda:	d1e5      	bne.n	8004fa8 <_dtoa_r+0xc30>
 8004fdc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004fe0:	4b1f      	ldr	r3, [pc, #124]	; (8005060 <_dtoa_r+0xce8>)
 8004fe2:	2200      	movs	r2, #0
 8004fe4:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004fe8:	f7fb fbf0 	bl	80007cc <__adddf3>
 8004fec:	4632      	mov	r2, r6
 8004fee:	463b      	mov	r3, r7
 8004ff0:	f7fc f814 	bl	800101c <__aeabi_dcmplt>
 8004ff4:	2800      	cmp	r0, #0
 8004ff6:	d070      	beq.n	80050da <_dtoa_r+0xd62>
 8004ff8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ffa:	9306      	str	r3, [sp, #24]
 8004ffc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005000:	e48f      	b.n	8004922 <_dtoa_r+0x5aa>
 8005002:	2330      	movs	r3, #48	; 0x30
 8005004:	f88b 3000 	strb.w	r3, [fp]
 8005008:	9b06      	ldr	r3, [sp, #24]
 800500a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800500e:	3301      	adds	r3, #1
 8005010:	9306      	str	r3, [sp, #24]
 8005012:	465b      	mov	r3, fp
 8005014:	e489      	b.n	800492a <_dtoa_r+0x5b2>
 8005016:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005018:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800501c:	e6a0      	b.n	8004d60 <_dtoa_r+0x9e8>
 800501e:	2300      	movs	r3, #0
 8005020:	e676      	b.n	8004d10 <_dtoa_r+0x998>
 8005022:	4631      	mov	r1, r6
 8005024:	2205      	movs	r2, #5
 8005026:	4648      	mov	r0, r9
 8005028:	f001 f8cc 	bl	80061c4 <__multadd>
 800502c:	4601      	mov	r1, r0
 800502e:	4606      	mov	r6, r0
 8005030:	4650      	mov	r0, sl
 8005032:	f001 faad 	bl	8006590 <__mcmp>
 8005036:	2800      	cmp	r0, #0
 8005038:	f73f aead 	bgt.w	8004d96 <_dtoa_r+0xa1e>
 800503c:	e722      	b.n	8004e84 <_dtoa_r+0xb0c>
 800503e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005042:	2602      	movs	r6, #2
 8005044:	ed8d 7b00 	vstr	d7, [sp]
 8005048:	f7ff bb02 	b.w	8004650 <_dtoa_r+0x2d8>
 800504c:	40140000 	.word	0x40140000
 8005050:	08007400 	.word	0x08007400
 8005054:	080073d8 	.word	0x080073d8
 8005058:	401c0000 	.word	0x401c0000
 800505c:	40240000 	.word	0x40240000
 8005060:	3fe00000 	.word	0x3fe00000
 8005064:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005066:	2b00      	cmp	r3, #0
 8005068:	f43f af1d 	beq.w	8004ea6 <_dtoa_r+0xb2e>
 800506c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800506e:	2c00      	cmp	r4, #0
 8005070:	f77f aba8 	ble.w	80047c4 <_dtoa_r+0x44c>
 8005074:	2200      	movs	r2, #0
 8005076:	4b45      	ldr	r3, [pc, #276]	; (800518c <_dtoa_r+0xe14>)
 8005078:	e9dd 0100 	ldrd	r0, r1, [sp]
 800507c:	f7fb fd5c 	bl	8000b38 <__aeabi_dmul>
 8005080:	e9cd 0100 	strd	r0, r1, [sp]
 8005084:	1c70      	adds	r0, r6, #1
 8005086:	f7fb fced 	bl	8000a64 <__aeabi_i2d>
 800508a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800508e:	f7fb fd53 	bl	8000b38 <__aeabi_dmul>
 8005092:	4b3f      	ldr	r3, [pc, #252]	; (8005190 <_dtoa_r+0xe18>)
 8005094:	2200      	movs	r2, #0
 8005096:	f7fb fb99 	bl	80007cc <__adddf3>
 800509a:	9b06      	ldr	r3, [sp, #24]
 800509c:	9412      	str	r4, [sp, #72]	; 0x48
 800509e:	3b01      	subs	r3, #1
 80050a0:	4606      	mov	r6, r0
 80050a2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80050a6:	9316      	str	r3, [sp, #88]	; 0x58
 80050a8:	f7ff baf3 	b.w	8004692 <_dtoa_r+0x31a>
 80050ac:	4651      	mov	r1, sl
 80050ae:	2201      	movs	r2, #1
 80050b0:	4648      	mov	r0, r9
 80050b2:	f001 fa17 	bl	80064e4 <__lshift>
 80050b6:	4631      	mov	r1, r6
 80050b8:	4682      	mov	sl, r0
 80050ba:	f001 fa69 	bl	8006590 <__mcmp>
 80050be:	2800      	cmp	r0, #0
 80050c0:	dd3b      	ble.n	800513a <_dtoa_r+0xdc2>
 80050c2:	9b00      	ldr	r3, [sp, #0]
 80050c4:	2b39      	cmp	r3, #57	; 0x39
 80050c6:	d003      	beq.n	80050d0 <_dtoa_r+0xd58>
 80050c8:	9b02      	ldr	r3, [sp, #8]
 80050ca:	3331      	adds	r3, #49	; 0x31
 80050cc:	9300      	str	r3, [sp, #0]
 80050ce:	e733      	b.n	8004f38 <_dtoa_r+0xbc0>
 80050d0:	2239      	movs	r2, #57	; 0x39
 80050d2:	9502      	str	r5, [sp, #8]
 80050d4:	703a      	strb	r2, [r7, #0]
 80050d6:	4645      	mov	r5, r8
 80050d8:	e58e      	b.n	8004bf8 <_dtoa_r+0x880>
 80050da:	e9dd 2300 	ldrd	r2, r3, [sp]
 80050de:	2000      	movs	r0, #0
 80050e0:	492c      	ldr	r1, [pc, #176]	; (8005194 <_dtoa_r+0xe1c>)
 80050e2:	f7fb fb71 	bl	80007c8 <__aeabi_dsub>
 80050e6:	4632      	mov	r2, r6
 80050e8:	463b      	mov	r3, r7
 80050ea:	f7fb ffb5 	bl	8001058 <__aeabi_dcmpgt>
 80050ee:	b910      	cbnz	r0, 80050f6 <_dtoa_r+0xd7e>
 80050f0:	f7ff bb68 	b.w	80047c4 <_dtoa_r+0x44c>
 80050f4:	4614      	mov	r4, r2
 80050f6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80050fa:	2b30      	cmp	r3, #48	; 0x30
 80050fc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005100:	d0f8      	beq.n	80050f4 <_dtoa_r+0xd7c>
 8005102:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005104:	9306      	str	r3, [sp, #24]
 8005106:	e58d      	b.n	8004c24 <_dtoa_r+0x8ac>
 8005108:	46d9      	mov	r9, fp
 800510a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800510e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005112:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005114:	9306      	str	r3, [sp, #24]
 8005116:	e404      	b.n	8004922 <_dtoa_r+0x5aa>
 8005118:	9b00      	ldr	r3, [sp, #0]
 800511a:	2b39      	cmp	r3, #57	; 0x39
 800511c:	4621      	mov	r1, r4
 800511e:	4632      	mov	r2, r6
 8005120:	f107 0401 	add.w	r4, r7, #1
 8005124:	465e      	mov	r6, fp
 8005126:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800512a:	d0d1      	beq.n	80050d0 <_dtoa_r+0xd58>
 800512c:	2a00      	cmp	r2, #0
 800512e:	f77f af03 	ble.w	8004f38 <_dtoa_r+0xbc0>
 8005132:	460b      	mov	r3, r1
 8005134:	3331      	adds	r3, #49	; 0x31
 8005136:	9300      	str	r3, [sp, #0]
 8005138:	e6fe      	b.n	8004f38 <_dtoa_r+0xbc0>
 800513a:	f47f aefd 	bne.w	8004f38 <_dtoa_r+0xbc0>
 800513e:	9b00      	ldr	r3, [sp, #0]
 8005140:	07da      	lsls	r2, r3, #31
 8005142:	f57f aef9 	bpl.w	8004f38 <_dtoa_r+0xbc0>
 8005146:	e7bc      	b.n	80050c2 <_dtoa_r+0xd4a>
 8005148:	4629      	mov	r1, r5
 800514a:	2300      	movs	r3, #0
 800514c:	220a      	movs	r2, #10
 800514e:	4648      	mov	r0, r9
 8005150:	f001 f838 	bl	80061c4 <__multadd>
 8005154:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005156:	2b00      	cmp	r3, #0
 8005158:	4605      	mov	r5, r0
 800515a:	dd09      	ble.n	8005170 <_dtoa_r+0xdf8>
 800515c:	9309      	str	r3, [sp, #36]	; 0x24
 800515e:	e484      	b.n	8004a6a <_dtoa_r+0x6f2>
 8005160:	9b02      	ldr	r3, [sp, #8]
 8005162:	2b02      	cmp	r3, #2
 8005164:	dc0e      	bgt.n	8005184 <_dtoa_r+0xe0c>
 8005166:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005168:	e507      	b.n	8004b7a <_dtoa_r+0x802>
 800516a:	2602      	movs	r6, #2
 800516c:	f7ff ba70 	b.w	8004650 <_dtoa_r+0x2d8>
 8005170:	9b02      	ldr	r3, [sp, #8]
 8005172:	2b02      	cmp	r3, #2
 8005174:	dc06      	bgt.n	8005184 <_dtoa_r+0xe0c>
 8005176:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005178:	e7f0      	b.n	800515c <_dtoa_r+0xde4>
 800517a:	f43f ac59 	beq.w	8004a30 <_dtoa_r+0x6b8>
 800517e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005182:	e450      	b.n	8004a26 <_dtoa_r+0x6ae>
 8005184:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005186:	9309      	str	r3, [sp, #36]	; 0x24
 8005188:	e678      	b.n	8004e7c <_dtoa_r+0xb04>
 800518a:	bf00      	nop
 800518c:	40240000 	.word	0x40240000
 8005190:	401c0000 	.word	0x401c0000
 8005194:	3fe00000 	.word	0x3fe00000

08005198 <__sflush_r>:
 8005198:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800519c:	b29a      	uxth	r2, r3
 800519e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80051a2:	460c      	mov	r4, r1
 80051a4:	0711      	lsls	r1, r2, #28
 80051a6:	4680      	mov	r8, r0
 80051a8:	d444      	bmi.n	8005234 <__sflush_r+0x9c>
 80051aa:	6862      	ldr	r2, [r4, #4]
 80051ac:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80051b0:	2a00      	cmp	r2, #0
 80051b2:	81a3      	strh	r3, [r4, #12]
 80051b4:	dd59      	ble.n	800526a <__sflush_r+0xd2>
 80051b6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80051b8:	2d00      	cmp	r5, #0
 80051ba:	d053      	beq.n	8005264 <__sflush_r+0xcc>
 80051bc:	2200      	movs	r2, #0
 80051be:	b29b      	uxth	r3, r3
 80051c0:	f8d8 6000 	ldr.w	r6, [r8]
 80051c4:	69e1      	ldr	r1, [r4, #28]
 80051c6:	f8c8 2000 	str.w	r2, [r8]
 80051ca:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80051ce:	f040 8083 	bne.w	80052d8 <__sflush_r+0x140>
 80051d2:	2301      	movs	r3, #1
 80051d4:	4640      	mov	r0, r8
 80051d6:	47a8      	blx	r5
 80051d8:	1c42      	adds	r2, r0, #1
 80051da:	d04a      	beq.n	8005272 <__sflush_r+0xda>
 80051dc:	89a3      	ldrh	r3, [r4, #12]
 80051de:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80051e0:	69e1      	ldr	r1, [r4, #28]
 80051e2:	075b      	lsls	r3, r3, #29
 80051e4:	d505      	bpl.n	80051f2 <__sflush_r+0x5a>
 80051e6:	6862      	ldr	r2, [r4, #4]
 80051e8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80051ea:	1a80      	subs	r0, r0, r2
 80051ec:	b10b      	cbz	r3, 80051f2 <__sflush_r+0x5a>
 80051ee:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80051f0:	1ac0      	subs	r0, r0, r3
 80051f2:	4602      	mov	r2, r0
 80051f4:	2300      	movs	r3, #0
 80051f6:	4640      	mov	r0, r8
 80051f8:	47a8      	blx	r5
 80051fa:	1c47      	adds	r7, r0, #1
 80051fc:	d045      	beq.n	800528a <__sflush_r+0xf2>
 80051fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005202:	6922      	ldr	r2, [r4, #16]
 8005204:	6022      	str	r2, [r4, #0]
 8005206:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800520a:	2200      	movs	r2, #0
 800520c:	81a3      	strh	r3, [r4, #12]
 800520e:	04db      	lsls	r3, r3, #19
 8005210:	6062      	str	r2, [r4, #4]
 8005212:	d500      	bpl.n	8005216 <__sflush_r+0x7e>
 8005214:	6520      	str	r0, [r4, #80]	; 0x50
 8005216:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005218:	f8c8 6000 	str.w	r6, [r8]
 800521c:	b311      	cbz	r1, 8005264 <__sflush_r+0xcc>
 800521e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005222:	4299      	cmp	r1, r3
 8005224:	d002      	beq.n	800522c <__sflush_r+0x94>
 8005226:	4640      	mov	r0, r8
 8005228:	f000 f95e 	bl	80054e8 <_free_r>
 800522c:	2000      	movs	r0, #0
 800522e:	6320      	str	r0, [r4, #48]	; 0x30
 8005230:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005234:	6926      	ldr	r6, [r4, #16]
 8005236:	b1ae      	cbz	r6, 8005264 <__sflush_r+0xcc>
 8005238:	6825      	ldr	r5, [r4, #0]
 800523a:	6026      	str	r6, [r4, #0]
 800523c:	0792      	lsls	r2, r2, #30
 800523e:	bf0c      	ite	eq
 8005240:	6963      	ldreq	r3, [r4, #20]
 8005242:	2300      	movne	r3, #0
 8005244:	1bad      	subs	r5, r5, r6
 8005246:	60a3      	str	r3, [r4, #8]
 8005248:	e00a      	b.n	8005260 <__sflush_r+0xc8>
 800524a:	462b      	mov	r3, r5
 800524c:	4632      	mov	r2, r6
 800524e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005250:	69e1      	ldr	r1, [r4, #28]
 8005252:	4640      	mov	r0, r8
 8005254:	47b8      	blx	r7
 8005256:	2800      	cmp	r0, #0
 8005258:	eba5 0500 	sub.w	r5, r5, r0
 800525c:	4406      	add	r6, r0
 800525e:	dd2b      	ble.n	80052b8 <__sflush_r+0x120>
 8005260:	2d00      	cmp	r5, #0
 8005262:	dcf2      	bgt.n	800524a <__sflush_r+0xb2>
 8005264:	2000      	movs	r0, #0
 8005266:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800526a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800526c:	2a00      	cmp	r2, #0
 800526e:	dca2      	bgt.n	80051b6 <__sflush_r+0x1e>
 8005270:	e7f8      	b.n	8005264 <__sflush_r+0xcc>
 8005272:	f8d8 3000 	ldr.w	r3, [r8]
 8005276:	2b00      	cmp	r3, #0
 8005278:	d0b0      	beq.n	80051dc <__sflush_r+0x44>
 800527a:	2b1d      	cmp	r3, #29
 800527c:	d001      	beq.n	8005282 <__sflush_r+0xea>
 800527e:	2b16      	cmp	r3, #22
 8005280:	d12c      	bne.n	80052dc <__sflush_r+0x144>
 8005282:	f8c8 6000 	str.w	r6, [r8]
 8005286:	2000      	movs	r0, #0
 8005288:	e7ed      	b.n	8005266 <__sflush_r+0xce>
 800528a:	f8d8 1000 	ldr.w	r1, [r8]
 800528e:	291d      	cmp	r1, #29
 8005290:	d81a      	bhi.n	80052c8 <__sflush_r+0x130>
 8005292:	4b15      	ldr	r3, [pc, #84]	; (80052e8 <__sflush_r+0x150>)
 8005294:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005298:	40cb      	lsrs	r3, r1
 800529a:	43db      	mvns	r3, r3
 800529c:	f013 0301 	ands.w	r3, r3, #1
 80052a0:	d114      	bne.n	80052cc <__sflush_r+0x134>
 80052a2:	6925      	ldr	r5, [r4, #16]
 80052a4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80052a8:	e9c4 5300 	strd	r5, r3, [r4]
 80052ac:	04d5      	lsls	r5, r2, #19
 80052ae:	81a2      	strh	r2, [r4, #12]
 80052b0:	d5b1      	bpl.n	8005216 <__sflush_r+0x7e>
 80052b2:	2900      	cmp	r1, #0
 80052b4:	d1af      	bne.n	8005216 <__sflush_r+0x7e>
 80052b6:	e7ad      	b.n	8005214 <__sflush_r+0x7c>
 80052b8:	89a3      	ldrh	r3, [r4, #12]
 80052ba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80052be:	81a3      	strh	r3, [r4, #12]
 80052c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80052c4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80052c8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80052cc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80052d0:	81a2      	strh	r2, [r4, #12]
 80052d2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80052d6:	e7c6      	b.n	8005266 <__sflush_r+0xce>
 80052d8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80052da:	e782      	b.n	80051e2 <__sflush_r+0x4a>
 80052dc:	89a3      	ldrh	r3, [r4, #12]
 80052de:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80052e2:	81a3      	strh	r3, [r4, #12]
 80052e4:	e7bf      	b.n	8005266 <__sflush_r+0xce>
 80052e6:	bf00      	nop
 80052e8:	20400001 	.word	0x20400001

080052ec <_fflush_r>:
 80052ec:	b538      	push	{r3, r4, r5, lr}
 80052ee:	460d      	mov	r5, r1
 80052f0:	4604      	mov	r4, r0
 80052f2:	b108      	cbz	r0, 80052f8 <_fflush_r+0xc>
 80052f4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80052f6:	b1a3      	cbz	r3, 8005322 <_fflush_r+0x36>
 80052f8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80052fc:	b1b8      	cbz	r0, 800532e <_fflush_r+0x42>
 80052fe:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005300:	07db      	lsls	r3, r3, #31
 8005302:	d401      	bmi.n	8005308 <_fflush_r+0x1c>
 8005304:	0581      	lsls	r1, r0, #22
 8005306:	d51a      	bpl.n	800533e <_fflush_r+0x52>
 8005308:	4620      	mov	r0, r4
 800530a:	4629      	mov	r1, r5
 800530c:	f7ff ff44 	bl	8005198 <__sflush_r>
 8005310:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005312:	07da      	lsls	r2, r3, #31
 8005314:	4604      	mov	r4, r0
 8005316:	d402      	bmi.n	800531e <_fflush_r+0x32>
 8005318:	89ab      	ldrh	r3, [r5, #12]
 800531a:	059b      	lsls	r3, r3, #22
 800531c:	d50a      	bpl.n	8005334 <_fflush_r+0x48>
 800531e:	4620      	mov	r0, r4
 8005320:	bd38      	pop	{r3, r4, r5, pc}
 8005322:	f000 f83f 	bl	80053a4 <__sinit>
 8005326:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800532a:	2800      	cmp	r0, #0
 800532c:	d1e7      	bne.n	80052fe <_fflush_r+0x12>
 800532e:	4604      	mov	r4, r0
 8005330:	4620      	mov	r0, r4
 8005332:	bd38      	pop	{r3, r4, r5, pc}
 8005334:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005336:	f000 fb87 	bl	8005a48 <__retarget_lock_release_recursive>
 800533a:	4620      	mov	r0, r4
 800533c:	bd38      	pop	{r3, r4, r5, pc}
 800533e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005340:	f000 fb80 	bl	8005a44 <__retarget_lock_acquire_recursive>
 8005344:	e7e0      	b.n	8005308 <_fflush_r+0x1c>
 8005346:	bf00      	nop

08005348 <std>:
 8005348:	b510      	push	{r4, lr}
 800534a:	2300      	movs	r3, #0
 800534c:	4604      	mov	r4, r0
 800534e:	8181      	strh	r1, [r0, #12]
 8005350:	81c2      	strh	r2, [r0, #14]
 8005352:	e9c0 3300 	strd	r3, r3, [r0]
 8005356:	6083      	str	r3, [r0, #8]
 8005358:	6643      	str	r3, [r0, #100]	; 0x64
 800535a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800535e:	6183      	str	r3, [r0, #24]
 8005360:	4619      	mov	r1, r3
 8005362:	2208      	movs	r2, #8
 8005364:	305c      	adds	r0, #92	; 0x5c
 8005366:	f7fd f8cb 	bl	8002500 <memset>
 800536a:	4807      	ldr	r0, [pc, #28]	; (8005388 <std+0x40>)
 800536c:	4907      	ldr	r1, [pc, #28]	; (800538c <std+0x44>)
 800536e:	4a08      	ldr	r2, [pc, #32]	; (8005390 <std+0x48>)
 8005370:	4b08      	ldr	r3, [pc, #32]	; (8005394 <std+0x4c>)
 8005372:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005374:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005378:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800537c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005380:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005384:	f000 bb5a 	b.w	8005a3c <__retarget_lock_init_recursive>
 8005388:	08006b61 	.word	0x08006b61
 800538c:	08006b85 	.word	0x08006b85
 8005390:	08006bc1 	.word	0x08006bc1
 8005394:	08006be1 	.word	0x08006be1

08005398 <_cleanup_r>:
 8005398:	4901      	ldr	r1, [pc, #4]	; (80053a0 <_cleanup_r+0x8>)
 800539a:	f000 bb17 	b.w	80059cc <_fwalk_reent>
 800539e:	bf00      	nop
 80053a0:	08006e51 	.word	0x08006e51

080053a4 <__sinit>:
 80053a4:	b510      	push	{r4, lr}
 80053a6:	4604      	mov	r4, r0
 80053a8:	4812      	ldr	r0, [pc, #72]	; (80053f4 <__sinit+0x50>)
 80053aa:	f000 fb4b 	bl	8005a44 <__retarget_lock_acquire_recursive>
 80053ae:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80053b0:	b9d2      	cbnz	r2, 80053e8 <__sinit+0x44>
 80053b2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80053b6:	4810      	ldr	r0, [pc, #64]	; (80053f8 <__sinit+0x54>)
 80053b8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80053bc:	2103      	movs	r1, #3
 80053be:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80053c2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80053c4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80053c8:	6860      	ldr	r0, [r4, #4]
 80053ca:	2104      	movs	r1, #4
 80053cc:	f7ff ffbc 	bl	8005348 <std>
 80053d0:	2201      	movs	r2, #1
 80053d2:	2109      	movs	r1, #9
 80053d4:	68a0      	ldr	r0, [r4, #8]
 80053d6:	f7ff ffb7 	bl	8005348 <std>
 80053da:	2202      	movs	r2, #2
 80053dc:	2112      	movs	r1, #18
 80053de:	68e0      	ldr	r0, [r4, #12]
 80053e0:	f7ff ffb2 	bl	8005348 <std>
 80053e4:	2301      	movs	r3, #1
 80053e6:	63a3      	str	r3, [r4, #56]	; 0x38
 80053e8:	4802      	ldr	r0, [pc, #8]	; (80053f4 <__sinit+0x50>)
 80053ea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80053ee:	f000 bb2b 	b.w	8005a48 <__retarget_lock_release_recursive>
 80053f2:	bf00      	nop
 80053f4:	20000bd0 	.word	0x20000bd0
 80053f8:	08005399 	.word	0x08005399

080053fc <__sfp_lock_acquire>:
 80053fc:	4801      	ldr	r0, [pc, #4]	; (8005404 <__sfp_lock_acquire+0x8>)
 80053fe:	f000 bb21 	b.w	8005a44 <__retarget_lock_acquire_recursive>
 8005402:	bf00      	nop
 8005404:	20000be4 	.word	0x20000be4

08005408 <__sfp_lock_release>:
 8005408:	4801      	ldr	r0, [pc, #4]	; (8005410 <__sfp_lock_release+0x8>)
 800540a:	f000 bb1d 	b.w	8005a48 <__retarget_lock_release_recursive>
 800540e:	bf00      	nop
 8005410:	20000be4 	.word	0x20000be4

08005414 <__libc_fini_array>:
 8005414:	b538      	push	{r3, r4, r5, lr}
 8005416:	4c0a      	ldr	r4, [pc, #40]	; (8005440 <__libc_fini_array+0x2c>)
 8005418:	4d0a      	ldr	r5, [pc, #40]	; (8005444 <__libc_fini_array+0x30>)
 800541a:	1b64      	subs	r4, r4, r5
 800541c:	10a4      	asrs	r4, r4, #2
 800541e:	d00a      	beq.n	8005436 <__libc_fini_array+0x22>
 8005420:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005424:	3b01      	subs	r3, #1
 8005426:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800542a:	3c01      	subs	r4, #1
 800542c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005430:	4798      	blx	r3
 8005432:	2c00      	cmp	r4, #0
 8005434:	d1f9      	bne.n	800542a <__libc_fini_array+0x16>
 8005436:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800543a:	f001 befd 	b.w	8007238 <_fini>
 800543e:	bf00      	nop
 8005440:	080075fc 	.word	0x080075fc
 8005444:	080075f8 	.word	0x080075f8

08005448 <_malloc_trim_r>:
 8005448:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800544a:	4f24      	ldr	r7, [pc, #144]	; (80054dc <_malloc_trim_r+0x94>)
 800544c:	460c      	mov	r4, r1
 800544e:	4606      	mov	r6, r0
 8005450:	f000 fe7c 	bl	800614c <__malloc_lock>
 8005454:	68bb      	ldr	r3, [r7, #8]
 8005456:	685d      	ldr	r5, [r3, #4]
 8005458:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800545c:	310f      	adds	r1, #15
 800545e:	f025 0503 	bic.w	r5, r5, #3
 8005462:	4429      	add	r1, r5
 8005464:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005468:	f021 010f 	bic.w	r1, r1, #15
 800546c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005470:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005474:	db07      	blt.n	8005486 <_malloc_trim_r+0x3e>
 8005476:	2100      	movs	r1, #0
 8005478:	4630      	mov	r0, r6
 800547a:	f001 fb5f 	bl	8006b3c <_sbrk_r>
 800547e:	68bb      	ldr	r3, [r7, #8]
 8005480:	442b      	add	r3, r5
 8005482:	4298      	cmp	r0, r3
 8005484:	d004      	beq.n	8005490 <_malloc_trim_r+0x48>
 8005486:	4630      	mov	r0, r6
 8005488:	f000 fe66 	bl	8006158 <__malloc_unlock>
 800548c:	2000      	movs	r0, #0
 800548e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005490:	4261      	negs	r1, r4
 8005492:	4630      	mov	r0, r6
 8005494:	f001 fb52 	bl	8006b3c <_sbrk_r>
 8005498:	3001      	adds	r0, #1
 800549a:	d00d      	beq.n	80054b8 <_malloc_trim_r+0x70>
 800549c:	4b10      	ldr	r3, [pc, #64]	; (80054e0 <_malloc_trim_r+0x98>)
 800549e:	68ba      	ldr	r2, [r7, #8]
 80054a0:	6819      	ldr	r1, [r3, #0]
 80054a2:	1b2d      	subs	r5, r5, r4
 80054a4:	f045 0501 	orr.w	r5, r5, #1
 80054a8:	4630      	mov	r0, r6
 80054aa:	1b09      	subs	r1, r1, r4
 80054ac:	6055      	str	r5, [r2, #4]
 80054ae:	6019      	str	r1, [r3, #0]
 80054b0:	f000 fe52 	bl	8006158 <__malloc_unlock>
 80054b4:	2001      	movs	r0, #1
 80054b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80054b8:	2100      	movs	r1, #0
 80054ba:	4630      	mov	r0, r6
 80054bc:	f001 fb3e 	bl	8006b3c <_sbrk_r>
 80054c0:	68ba      	ldr	r2, [r7, #8]
 80054c2:	1a83      	subs	r3, r0, r2
 80054c4:	2b0f      	cmp	r3, #15
 80054c6:	ddde      	ble.n	8005486 <_malloc_trim_r+0x3e>
 80054c8:	4c06      	ldr	r4, [pc, #24]	; (80054e4 <_malloc_trim_r+0x9c>)
 80054ca:	4905      	ldr	r1, [pc, #20]	; (80054e0 <_malloc_trim_r+0x98>)
 80054cc:	6824      	ldr	r4, [r4, #0]
 80054ce:	f043 0301 	orr.w	r3, r3, #1
 80054d2:	1b00      	subs	r0, r0, r4
 80054d4:	6053      	str	r3, [r2, #4]
 80054d6:	6008      	str	r0, [r1, #0]
 80054d8:	e7d5      	b.n	8005486 <_malloc_trim_r+0x3e>
 80054da:	bf00      	nop
 80054dc:	2000046c 	.word	0x2000046c
 80054e0:	20000a90 	.word	0x20000a90
 80054e4:	20000874 	.word	0x20000874

080054e8 <_free_r>:
 80054e8:	2900      	cmp	r1, #0
 80054ea:	d053      	beq.n	8005594 <_free_r+0xac>
 80054ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80054ee:	460c      	mov	r4, r1
 80054f0:	4606      	mov	r6, r0
 80054f2:	f000 fe2b 	bl	800614c <__malloc_lock>
 80054f6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80054fa:	4f71      	ldr	r7, [pc, #452]	; (80056c0 <_free_r+0x1d8>)
 80054fc:	f02c 0101 	bic.w	r1, ip, #1
 8005500:	f1a4 0508 	sub.w	r5, r4, #8
 8005504:	186b      	adds	r3, r5, r1
 8005506:	68b8      	ldr	r0, [r7, #8]
 8005508:	685a      	ldr	r2, [r3, #4]
 800550a:	4298      	cmp	r0, r3
 800550c:	f022 0203 	bic.w	r2, r2, #3
 8005510:	d053      	beq.n	80055ba <_free_r+0xd2>
 8005512:	f01c 0f01 	tst.w	ip, #1
 8005516:	605a      	str	r2, [r3, #4]
 8005518:	eb03 0002 	add.w	r0, r3, r2
 800551c:	d13b      	bne.n	8005596 <_free_r+0xae>
 800551e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005522:	6840      	ldr	r0, [r0, #4]
 8005524:	eba5 050c 	sub.w	r5, r5, ip
 8005528:	f107 0e08 	add.w	lr, r7, #8
 800552c:	68ac      	ldr	r4, [r5, #8]
 800552e:	4574      	cmp	r4, lr
 8005530:	4461      	add	r1, ip
 8005532:	f000 0001 	and.w	r0, r0, #1
 8005536:	d075      	beq.n	8005624 <_free_r+0x13c>
 8005538:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800553c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005540:	f8cc 4008 	str.w	r4, [ip, #8]
 8005544:	b360      	cbz	r0, 80055a0 <_free_r+0xb8>
 8005546:	f041 0301 	orr.w	r3, r1, #1
 800554a:	606b      	str	r3, [r5, #4]
 800554c:	5069      	str	r1, [r5, r1]
 800554e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005552:	d350      	bcc.n	80055f6 <_free_r+0x10e>
 8005554:	0a4b      	lsrs	r3, r1, #9
 8005556:	2b04      	cmp	r3, #4
 8005558:	d870      	bhi.n	800563c <_free_r+0x154>
 800555a:	098b      	lsrs	r3, r1, #6
 800555c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005560:	00e4      	lsls	r4, r4, #3
 8005562:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005566:	1938      	adds	r0, r7, r4
 8005568:	593b      	ldr	r3, [r7, r4]
 800556a:	3808      	subs	r0, #8
 800556c:	4298      	cmp	r0, r3
 800556e:	d078      	beq.n	8005662 <_free_r+0x17a>
 8005570:	685a      	ldr	r2, [r3, #4]
 8005572:	f022 0203 	bic.w	r2, r2, #3
 8005576:	428a      	cmp	r2, r1
 8005578:	d971      	bls.n	800565e <_free_r+0x176>
 800557a:	689b      	ldr	r3, [r3, #8]
 800557c:	4298      	cmp	r0, r3
 800557e:	d1f7      	bne.n	8005570 <_free_r+0x88>
 8005580:	68c3      	ldr	r3, [r0, #12]
 8005582:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005586:	609d      	str	r5, [r3, #8]
 8005588:	60c5      	str	r5, [r0, #12]
 800558a:	4630      	mov	r0, r6
 800558c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005590:	f000 bde2 	b.w	8006158 <__malloc_unlock>
 8005594:	4770      	bx	lr
 8005596:	6840      	ldr	r0, [r0, #4]
 8005598:	f000 0001 	and.w	r0, r0, #1
 800559c:	2800      	cmp	r0, #0
 800559e:	d1d2      	bne.n	8005546 <_free_r+0x5e>
 80055a0:	6898      	ldr	r0, [r3, #8]
 80055a2:	4c48      	ldr	r4, [pc, #288]	; (80056c4 <_free_r+0x1dc>)
 80055a4:	4411      	add	r1, r2
 80055a6:	42a0      	cmp	r0, r4
 80055a8:	f041 0201 	orr.w	r2, r1, #1
 80055ac:	d062      	beq.n	8005674 <_free_r+0x18c>
 80055ae:	68db      	ldr	r3, [r3, #12]
 80055b0:	60c3      	str	r3, [r0, #12]
 80055b2:	6098      	str	r0, [r3, #8]
 80055b4:	606a      	str	r2, [r5, #4]
 80055b6:	5069      	str	r1, [r5, r1]
 80055b8:	e7c9      	b.n	800554e <_free_r+0x66>
 80055ba:	f01c 0f01 	tst.w	ip, #1
 80055be:	440a      	add	r2, r1
 80055c0:	d107      	bne.n	80055d2 <_free_r+0xea>
 80055c2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80055c6:	1aed      	subs	r5, r5, r3
 80055c8:	441a      	add	r2, r3
 80055ca:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80055ce:	60cb      	str	r3, [r1, #12]
 80055d0:	6099      	str	r1, [r3, #8]
 80055d2:	4b3d      	ldr	r3, [pc, #244]	; (80056c8 <_free_r+0x1e0>)
 80055d4:	681b      	ldr	r3, [r3, #0]
 80055d6:	f042 0101 	orr.w	r1, r2, #1
 80055da:	4293      	cmp	r3, r2
 80055dc:	6069      	str	r1, [r5, #4]
 80055de:	60bd      	str	r5, [r7, #8]
 80055e0:	d804      	bhi.n	80055ec <_free_r+0x104>
 80055e2:	4b3a      	ldr	r3, [pc, #232]	; (80056cc <_free_r+0x1e4>)
 80055e4:	4630      	mov	r0, r6
 80055e6:	6819      	ldr	r1, [r3, #0]
 80055e8:	f7ff ff2e 	bl	8005448 <_malloc_trim_r>
 80055ec:	4630      	mov	r0, r6
 80055ee:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80055f2:	f000 bdb1 	b.w	8006158 <__malloc_unlock>
 80055f6:	08c9      	lsrs	r1, r1, #3
 80055f8:	6878      	ldr	r0, [r7, #4]
 80055fa:	1c4a      	adds	r2, r1, #1
 80055fc:	2301      	movs	r3, #1
 80055fe:	1089      	asrs	r1, r1, #2
 8005600:	408b      	lsls	r3, r1
 8005602:	4303      	orrs	r3, r0
 8005604:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005608:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800560c:	607b      	str	r3, [r7, #4]
 800560e:	3908      	subs	r1, #8
 8005610:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005614:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005618:	60c5      	str	r5, [r0, #12]
 800561a:	4630      	mov	r0, r6
 800561c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005620:	f000 bd9a 	b.w	8006158 <__malloc_unlock>
 8005624:	2800      	cmp	r0, #0
 8005626:	d145      	bne.n	80056b4 <_free_r+0x1cc>
 8005628:	440a      	add	r2, r1
 800562a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800562e:	f042 0001 	orr.w	r0, r2, #1
 8005632:	60cb      	str	r3, [r1, #12]
 8005634:	6099      	str	r1, [r3, #8]
 8005636:	6068      	str	r0, [r5, #4]
 8005638:	50aa      	str	r2, [r5, r2]
 800563a:	e7d7      	b.n	80055ec <_free_r+0x104>
 800563c:	2b14      	cmp	r3, #20
 800563e:	d908      	bls.n	8005652 <_free_r+0x16a>
 8005640:	2b54      	cmp	r3, #84	; 0x54
 8005642:	d81e      	bhi.n	8005682 <_free_r+0x19a>
 8005644:	0b0b      	lsrs	r3, r1, #12
 8005646:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800564a:	00e4      	lsls	r4, r4, #3
 800564c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005650:	e789      	b.n	8005566 <_free_r+0x7e>
 8005652:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005656:	00e4      	lsls	r4, r4, #3
 8005658:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800565c:	e783      	b.n	8005566 <_free_r+0x7e>
 800565e:	4618      	mov	r0, r3
 8005660:	e78e      	b.n	8005580 <_free_r+0x98>
 8005662:	1093      	asrs	r3, r2, #2
 8005664:	6879      	ldr	r1, [r7, #4]
 8005666:	2201      	movs	r2, #1
 8005668:	fa02 f303 	lsl.w	r3, r2, r3
 800566c:	430b      	orrs	r3, r1
 800566e:	607b      	str	r3, [r7, #4]
 8005670:	4603      	mov	r3, r0
 8005672:	e786      	b.n	8005582 <_free_r+0x9a>
 8005674:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005678:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800567c:	606a      	str	r2, [r5, #4]
 800567e:	5069      	str	r1, [r5, r1]
 8005680:	e7b4      	b.n	80055ec <_free_r+0x104>
 8005682:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005686:	d806      	bhi.n	8005696 <_free_r+0x1ae>
 8005688:	0bcb      	lsrs	r3, r1, #15
 800568a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800568e:	00e4      	lsls	r4, r4, #3
 8005690:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005694:	e767      	b.n	8005566 <_free_r+0x7e>
 8005696:	f240 5254 	movw	r2, #1364	; 0x554
 800569a:	4293      	cmp	r3, r2
 800569c:	d806      	bhi.n	80056ac <_free_r+0x1c4>
 800569e:	0c8b      	lsrs	r3, r1, #18
 80056a0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80056a4:	00e4      	lsls	r4, r4, #3
 80056a6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80056aa:	e75c      	b.n	8005566 <_free_r+0x7e>
 80056ac:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80056b0:	227e      	movs	r2, #126	; 0x7e
 80056b2:	e758      	b.n	8005566 <_free_r+0x7e>
 80056b4:	f041 0201 	orr.w	r2, r1, #1
 80056b8:	606a      	str	r2, [r5, #4]
 80056ba:	6019      	str	r1, [r3, #0]
 80056bc:	e796      	b.n	80055ec <_free_r+0x104>
 80056be:	bf00      	nop
 80056c0:	2000046c 	.word	0x2000046c
 80056c4:	20000474 	.word	0x20000474
 80056c8:	20000878 	.word	0x20000878
 80056cc:	20000ac0 	.word	0x20000ac0

080056d0 <__sfvwrite_r>:
 80056d0:	6893      	ldr	r3, [r2, #8]
 80056d2:	2b00      	cmp	r3, #0
 80056d4:	f000 80e4 	beq.w	80058a0 <__sfvwrite_r+0x1d0>
 80056d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80056dc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80056e0:	b29b      	uxth	r3, r3
 80056e2:	460c      	mov	r4, r1
 80056e4:	0719      	lsls	r1, r3, #28
 80056e6:	b083      	sub	sp, #12
 80056e8:	4682      	mov	sl, r0
 80056ea:	4690      	mov	r8, r2
 80056ec:	d535      	bpl.n	800575a <__sfvwrite_r+0x8a>
 80056ee:	6922      	ldr	r2, [r4, #16]
 80056f0:	b39a      	cbz	r2, 800575a <__sfvwrite_r+0x8a>
 80056f2:	f013 0202 	ands.w	r2, r3, #2
 80056f6:	f8d8 6000 	ldr.w	r6, [r8]
 80056fa:	d03d      	beq.n	8005778 <__sfvwrite_r+0xa8>
 80056fc:	2700      	movs	r7, #0
 80056fe:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005702:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005706:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80059c8 <__sfvwrite_r+0x2f8>
 800570a:	463d      	mov	r5, r7
 800570c:	454d      	cmp	r5, r9
 800570e:	462b      	mov	r3, r5
 8005710:	463a      	mov	r2, r7
 8005712:	bf28      	it	cs
 8005714:	464b      	movcs	r3, r9
 8005716:	4661      	mov	r1, ip
 8005718:	4650      	mov	r0, sl
 800571a:	b1d5      	cbz	r5, 8005752 <__sfvwrite_r+0x82>
 800571c:	47d8      	blx	fp
 800571e:	2800      	cmp	r0, #0
 8005720:	f340 80c6 	ble.w	80058b0 <__sfvwrite_r+0x1e0>
 8005724:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005728:	1a1b      	subs	r3, r3, r0
 800572a:	4407      	add	r7, r0
 800572c:	1a2d      	subs	r5, r5, r0
 800572e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005732:	2b00      	cmp	r3, #0
 8005734:	f000 80b0 	beq.w	8005898 <__sfvwrite_r+0x1c8>
 8005738:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800573c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005740:	454d      	cmp	r5, r9
 8005742:	462b      	mov	r3, r5
 8005744:	463a      	mov	r2, r7
 8005746:	bf28      	it	cs
 8005748:	464b      	movcs	r3, r9
 800574a:	4661      	mov	r1, ip
 800574c:	4650      	mov	r0, sl
 800574e:	2d00      	cmp	r5, #0
 8005750:	d1e4      	bne.n	800571c <__sfvwrite_r+0x4c>
 8005752:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005756:	3608      	adds	r6, #8
 8005758:	e7d8      	b.n	800570c <__sfvwrite_r+0x3c>
 800575a:	4621      	mov	r1, r4
 800575c:	4650      	mov	r0, sl
 800575e:	f7fe fd03 	bl	8004168 <__swsetup_r>
 8005762:	2800      	cmp	r0, #0
 8005764:	f040 812a 	bne.w	80059bc <__sfvwrite_r+0x2ec>
 8005768:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800576c:	f8d8 6000 	ldr.w	r6, [r8]
 8005770:	b29b      	uxth	r3, r3
 8005772:	f013 0202 	ands.w	r2, r3, #2
 8005776:	d1c1      	bne.n	80056fc <__sfvwrite_r+0x2c>
 8005778:	f013 0901 	ands.w	r9, r3, #1
 800577c:	d15d      	bne.n	800583a <__sfvwrite_r+0x16a>
 800577e:	68a7      	ldr	r7, [r4, #8]
 8005780:	6820      	ldr	r0, [r4, #0]
 8005782:	464d      	mov	r5, r9
 8005784:	2d00      	cmp	r5, #0
 8005786:	d054      	beq.n	8005832 <__sfvwrite_r+0x162>
 8005788:	059a      	lsls	r2, r3, #22
 800578a:	f140 809b 	bpl.w	80058c4 <__sfvwrite_r+0x1f4>
 800578e:	42af      	cmp	r7, r5
 8005790:	46bb      	mov	fp, r7
 8005792:	f200 80d8 	bhi.w	8005946 <__sfvwrite_r+0x276>
 8005796:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800579a:	d02f      	beq.n	80057fc <__sfvwrite_r+0x12c>
 800579c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80057a0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80057a4:	eba0 0b01 	sub.w	fp, r0, r1
 80057a8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80057ac:	1c68      	adds	r0, r5, #1
 80057ae:	107f      	asrs	r7, r7, #1
 80057b0:	4458      	add	r0, fp
 80057b2:	42b8      	cmp	r0, r7
 80057b4:	463a      	mov	r2, r7
 80057b6:	bf84      	itt	hi
 80057b8:	4607      	movhi	r7, r0
 80057ba:	463a      	movhi	r2, r7
 80057bc:	055b      	lsls	r3, r3, #21
 80057be:	f140 80d3 	bpl.w	8005968 <__sfvwrite_r+0x298>
 80057c2:	4611      	mov	r1, r2
 80057c4:	4650      	mov	r0, sl
 80057c6:	f000 f9b9 	bl	8005b3c <_malloc_r>
 80057ca:	2800      	cmp	r0, #0
 80057cc:	f000 80f0 	beq.w	80059b0 <__sfvwrite_r+0x2e0>
 80057d0:	465a      	mov	r2, fp
 80057d2:	6921      	ldr	r1, [r4, #16]
 80057d4:	9001      	str	r0, [sp, #4]
 80057d6:	f7fa fe93 	bl	8000500 <memcpy>
 80057da:	89a2      	ldrh	r2, [r4, #12]
 80057dc:	9b01      	ldr	r3, [sp, #4]
 80057de:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80057e2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80057e6:	81a2      	strh	r2, [r4, #12]
 80057e8:	eba7 020b 	sub.w	r2, r7, fp
 80057ec:	eb03 000b 	add.w	r0, r3, fp
 80057f0:	6167      	str	r7, [r4, #20]
 80057f2:	6123      	str	r3, [r4, #16]
 80057f4:	6020      	str	r0, [r4, #0]
 80057f6:	60a2      	str	r2, [r4, #8]
 80057f8:	462f      	mov	r7, r5
 80057fa:	46ab      	mov	fp, r5
 80057fc:	465a      	mov	r2, fp
 80057fe:	4649      	mov	r1, r9
 8005800:	f000 fc40 	bl	8006084 <memmove>
 8005804:	68a2      	ldr	r2, [r4, #8]
 8005806:	6823      	ldr	r3, [r4, #0]
 8005808:	1bd2      	subs	r2, r2, r7
 800580a:	445b      	add	r3, fp
 800580c:	462f      	mov	r7, r5
 800580e:	60a2      	str	r2, [r4, #8]
 8005810:	6023      	str	r3, [r4, #0]
 8005812:	2500      	movs	r5, #0
 8005814:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005818:	1bdb      	subs	r3, r3, r7
 800581a:	44b9      	add	r9, r7
 800581c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005820:	2b00      	cmp	r3, #0
 8005822:	d039      	beq.n	8005898 <__sfvwrite_r+0x1c8>
 8005824:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005828:	68a7      	ldr	r7, [r4, #8]
 800582a:	6820      	ldr	r0, [r4, #0]
 800582c:	b29b      	uxth	r3, r3
 800582e:	2d00      	cmp	r5, #0
 8005830:	d1aa      	bne.n	8005788 <__sfvwrite_r+0xb8>
 8005832:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005836:	3608      	adds	r6, #8
 8005838:	e7a4      	b.n	8005784 <__sfvwrite_r+0xb4>
 800583a:	4633      	mov	r3, r6
 800583c:	4691      	mov	r9, r2
 800583e:	4610      	mov	r0, r2
 8005840:	4617      	mov	r7, r2
 8005842:	464e      	mov	r6, r9
 8005844:	469b      	mov	fp, r3
 8005846:	2f00      	cmp	r7, #0
 8005848:	d06b      	beq.n	8005922 <__sfvwrite_r+0x252>
 800584a:	2800      	cmp	r0, #0
 800584c:	d071      	beq.n	8005932 <__sfvwrite_r+0x262>
 800584e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005852:	6820      	ldr	r0, [r4, #0]
 8005854:	45b9      	cmp	r9, r7
 8005856:	464b      	mov	r3, r9
 8005858:	bf28      	it	cs
 800585a:	463b      	movcs	r3, r7
 800585c:	4288      	cmp	r0, r1
 800585e:	d903      	bls.n	8005868 <__sfvwrite_r+0x198>
 8005860:	68a5      	ldr	r5, [r4, #8]
 8005862:	4415      	add	r5, r2
 8005864:	42ab      	cmp	r3, r5
 8005866:	dc71      	bgt.n	800594c <__sfvwrite_r+0x27c>
 8005868:	429a      	cmp	r2, r3
 800586a:	f300 8093 	bgt.w	8005994 <__sfvwrite_r+0x2c4>
 800586e:	4613      	mov	r3, r2
 8005870:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005872:	69e1      	ldr	r1, [r4, #28]
 8005874:	4632      	mov	r2, r6
 8005876:	4650      	mov	r0, sl
 8005878:	47a8      	blx	r5
 800587a:	1e05      	subs	r5, r0, #0
 800587c:	dd18      	ble.n	80058b0 <__sfvwrite_r+0x1e0>
 800587e:	ebb9 0905 	subs.w	r9, r9, r5
 8005882:	d00f      	beq.n	80058a4 <__sfvwrite_r+0x1d4>
 8005884:	2001      	movs	r0, #1
 8005886:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800588a:	1b5b      	subs	r3, r3, r5
 800588c:	442e      	add	r6, r5
 800588e:	1b7f      	subs	r7, r7, r5
 8005890:	f8c8 3008 	str.w	r3, [r8, #8]
 8005894:	2b00      	cmp	r3, #0
 8005896:	d1d6      	bne.n	8005846 <__sfvwrite_r+0x176>
 8005898:	2000      	movs	r0, #0
 800589a:	b003      	add	sp, #12
 800589c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058a0:	2000      	movs	r0, #0
 80058a2:	4770      	bx	lr
 80058a4:	4621      	mov	r1, r4
 80058a6:	4650      	mov	r0, sl
 80058a8:	f7ff fd20 	bl	80052ec <_fflush_r>
 80058ac:	2800      	cmp	r0, #0
 80058ae:	d0ea      	beq.n	8005886 <__sfvwrite_r+0x1b6>
 80058b0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058b4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80058b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80058bc:	81a3      	strh	r3, [r4, #12]
 80058be:	b003      	add	sp, #12
 80058c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058c4:	6923      	ldr	r3, [r4, #16]
 80058c6:	4283      	cmp	r3, r0
 80058c8:	d315      	bcc.n	80058f6 <__sfvwrite_r+0x226>
 80058ca:	6961      	ldr	r1, [r4, #20]
 80058cc:	42a9      	cmp	r1, r5
 80058ce:	d812      	bhi.n	80058f6 <__sfvwrite_r+0x226>
 80058d0:	4b3c      	ldr	r3, [pc, #240]	; (80059c4 <__sfvwrite_r+0x2f4>)
 80058d2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80058d4:	429d      	cmp	r5, r3
 80058d6:	bf94      	ite	ls
 80058d8:	462b      	movls	r3, r5
 80058da:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80058de:	464a      	mov	r2, r9
 80058e0:	fb93 f3f1 	sdiv	r3, r3, r1
 80058e4:	4650      	mov	r0, sl
 80058e6:	fb01 f303 	mul.w	r3, r1, r3
 80058ea:	69e1      	ldr	r1, [r4, #28]
 80058ec:	47b8      	blx	r7
 80058ee:	1e07      	subs	r7, r0, #0
 80058f0:	ddde      	ble.n	80058b0 <__sfvwrite_r+0x1e0>
 80058f2:	1bed      	subs	r5, r5, r7
 80058f4:	e78e      	b.n	8005814 <__sfvwrite_r+0x144>
 80058f6:	42af      	cmp	r7, r5
 80058f8:	bf28      	it	cs
 80058fa:	462f      	movcs	r7, r5
 80058fc:	463a      	mov	r2, r7
 80058fe:	4649      	mov	r1, r9
 8005900:	f000 fbc0 	bl	8006084 <memmove>
 8005904:	68a3      	ldr	r3, [r4, #8]
 8005906:	6822      	ldr	r2, [r4, #0]
 8005908:	1bdb      	subs	r3, r3, r7
 800590a:	443a      	add	r2, r7
 800590c:	60a3      	str	r3, [r4, #8]
 800590e:	6022      	str	r2, [r4, #0]
 8005910:	2b00      	cmp	r3, #0
 8005912:	d1ee      	bne.n	80058f2 <__sfvwrite_r+0x222>
 8005914:	4621      	mov	r1, r4
 8005916:	4650      	mov	r0, sl
 8005918:	f7ff fce8 	bl	80052ec <_fflush_r>
 800591c:	2800      	cmp	r0, #0
 800591e:	d0e8      	beq.n	80058f2 <__sfvwrite_r+0x222>
 8005920:	e7c6      	b.n	80058b0 <__sfvwrite_r+0x1e0>
 8005922:	f10b 0308 	add.w	r3, fp, #8
 8005926:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800592a:	469b      	mov	fp, r3
 800592c:	3308      	adds	r3, #8
 800592e:	2f00      	cmp	r7, #0
 8005930:	d0f9      	beq.n	8005926 <__sfvwrite_r+0x256>
 8005932:	463a      	mov	r2, r7
 8005934:	210a      	movs	r1, #10
 8005936:	4630      	mov	r0, r6
 8005938:	f7fa fef2 	bl	8000720 <memchr>
 800593c:	b338      	cbz	r0, 800598e <__sfvwrite_r+0x2be>
 800593e:	3001      	adds	r0, #1
 8005940:	eba0 0906 	sub.w	r9, r0, r6
 8005944:	e783      	b.n	800584e <__sfvwrite_r+0x17e>
 8005946:	462f      	mov	r7, r5
 8005948:	46ab      	mov	fp, r5
 800594a:	e757      	b.n	80057fc <__sfvwrite_r+0x12c>
 800594c:	4631      	mov	r1, r6
 800594e:	462a      	mov	r2, r5
 8005950:	f000 fb98 	bl	8006084 <memmove>
 8005954:	6823      	ldr	r3, [r4, #0]
 8005956:	442b      	add	r3, r5
 8005958:	6023      	str	r3, [r4, #0]
 800595a:	4621      	mov	r1, r4
 800595c:	4650      	mov	r0, sl
 800595e:	f7ff fcc5 	bl	80052ec <_fflush_r>
 8005962:	2800      	cmp	r0, #0
 8005964:	d08b      	beq.n	800587e <__sfvwrite_r+0x1ae>
 8005966:	e7a3      	b.n	80058b0 <__sfvwrite_r+0x1e0>
 8005968:	4650      	mov	r0, sl
 800596a:	f000 ff05 	bl	8006778 <_realloc_r>
 800596e:	4603      	mov	r3, r0
 8005970:	2800      	cmp	r0, #0
 8005972:	f47f af39 	bne.w	80057e8 <__sfvwrite_r+0x118>
 8005976:	6921      	ldr	r1, [r4, #16]
 8005978:	4650      	mov	r0, sl
 800597a:	f7ff fdb5 	bl	80054e8 <_free_r>
 800597e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005982:	220c      	movs	r2, #12
 8005984:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005988:	f8ca 2000 	str.w	r2, [sl]
 800598c:	e792      	b.n	80058b4 <__sfvwrite_r+0x1e4>
 800598e:	f107 0901 	add.w	r9, r7, #1
 8005992:	e75c      	b.n	800584e <__sfvwrite_r+0x17e>
 8005994:	461a      	mov	r2, r3
 8005996:	4631      	mov	r1, r6
 8005998:	9301      	str	r3, [sp, #4]
 800599a:	f000 fb73 	bl	8006084 <memmove>
 800599e:	9b01      	ldr	r3, [sp, #4]
 80059a0:	68a1      	ldr	r1, [r4, #8]
 80059a2:	6822      	ldr	r2, [r4, #0]
 80059a4:	1ac9      	subs	r1, r1, r3
 80059a6:	441a      	add	r2, r3
 80059a8:	60a1      	str	r1, [r4, #8]
 80059aa:	6022      	str	r2, [r4, #0]
 80059ac:	461d      	mov	r5, r3
 80059ae:	e766      	b.n	800587e <__sfvwrite_r+0x1ae>
 80059b0:	230c      	movs	r3, #12
 80059b2:	f8ca 3000 	str.w	r3, [sl]
 80059b6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059ba:	e77b      	b.n	80058b4 <__sfvwrite_r+0x1e4>
 80059bc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80059c0:	e76b      	b.n	800589a <__sfvwrite_r+0x1ca>
 80059c2:	bf00      	nop
 80059c4:	7ffffffe 	.word	0x7ffffffe
 80059c8:	7ffffc00 	.word	0x7ffffc00

080059cc <_fwalk_reent>:
 80059cc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80059d0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80059d4:	d01f      	beq.n	8005a16 <_fwalk_reent+0x4a>
 80059d6:	4688      	mov	r8, r1
 80059d8:	4606      	mov	r6, r0
 80059da:	f04f 0900 	mov.w	r9, #0
 80059de:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80059e2:	3d01      	subs	r5, #1
 80059e4:	d411      	bmi.n	8005a0a <_fwalk_reent+0x3e>
 80059e6:	89a3      	ldrh	r3, [r4, #12]
 80059e8:	2b01      	cmp	r3, #1
 80059ea:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80059ee:	4621      	mov	r1, r4
 80059f0:	4630      	mov	r0, r6
 80059f2:	d906      	bls.n	8005a02 <_fwalk_reent+0x36>
 80059f4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80059f8:	3301      	adds	r3, #1
 80059fa:	d002      	beq.n	8005a02 <_fwalk_reent+0x36>
 80059fc:	47c0      	blx	r8
 80059fe:	ea49 0900 	orr.w	r9, r9, r0
 8005a02:	1c6b      	adds	r3, r5, #1
 8005a04:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005a08:	d1ed      	bne.n	80059e6 <_fwalk_reent+0x1a>
 8005a0a:	683f      	ldr	r7, [r7, #0]
 8005a0c:	2f00      	cmp	r7, #0
 8005a0e:	d1e6      	bne.n	80059de <_fwalk_reent+0x12>
 8005a10:	4648      	mov	r0, r9
 8005a12:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005a16:	46b9      	mov	r9, r7
 8005a18:	4648      	mov	r0, r9
 8005a1a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005a1e:	bf00      	nop

08005a20 <_localeconv_r>:
 8005a20:	4a04      	ldr	r2, [pc, #16]	; (8005a34 <_localeconv_r+0x14>)
 8005a22:	4b05      	ldr	r3, [pc, #20]	; (8005a38 <_localeconv_r+0x18>)
 8005a24:	6812      	ldr	r2, [r2, #0]
 8005a26:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005a28:	2800      	cmp	r0, #0
 8005a2a:	bf08      	it	eq
 8005a2c:	4618      	moveq	r0, r3
 8005a2e:	30f0      	adds	r0, #240	; 0xf0
 8005a30:	4770      	bx	lr
 8005a32:	bf00      	nop
 8005a34:	2000003c 	.word	0x2000003c
 8005a38:	2000087c 	.word	0x2000087c

08005a3c <__retarget_lock_init_recursive>:
 8005a3c:	4770      	bx	lr
 8005a3e:	bf00      	nop

08005a40 <__retarget_lock_close_recursive>:
 8005a40:	4770      	bx	lr
 8005a42:	bf00      	nop

08005a44 <__retarget_lock_acquire_recursive>:
 8005a44:	4770      	bx	lr
 8005a46:	bf00      	nop

08005a48 <__retarget_lock_release_recursive>:
 8005a48:	4770      	bx	lr
 8005a4a:	bf00      	nop

08005a4c <__swhatbuf_r>:
 8005a4c:	b570      	push	{r4, r5, r6, lr}
 8005a4e:	460c      	mov	r4, r1
 8005a50:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005a54:	2900      	cmp	r1, #0
 8005a56:	b096      	sub	sp, #88	; 0x58
 8005a58:	4615      	mov	r5, r2
 8005a5a:	461e      	mov	r6, r3
 8005a5c:	da0f      	bge.n	8005a7e <__swhatbuf_r+0x32>
 8005a5e:	89a2      	ldrh	r2, [r4, #12]
 8005a60:	2300      	movs	r3, #0
 8005a62:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005a66:	6033      	str	r3, [r6, #0]
 8005a68:	d104      	bne.n	8005a74 <__swhatbuf_r+0x28>
 8005a6a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005a6e:	602b      	str	r3, [r5, #0]
 8005a70:	b016      	add	sp, #88	; 0x58
 8005a72:	bd70      	pop	{r4, r5, r6, pc}
 8005a74:	2240      	movs	r2, #64	; 0x40
 8005a76:	4618      	mov	r0, r3
 8005a78:	602a      	str	r2, [r5, #0]
 8005a7a:	b016      	add	sp, #88	; 0x58
 8005a7c:	bd70      	pop	{r4, r5, r6, pc}
 8005a7e:	466a      	mov	r2, sp
 8005a80:	f001 fad0 	bl	8007024 <_fstat_r>
 8005a84:	2800      	cmp	r0, #0
 8005a86:	dbea      	blt.n	8005a5e <__swhatbuf_r+0x12>
 8005a88:	9b01      	ldr	r3, [sp, #4]
 8005a8a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005a8e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005a92:	fab3 f383 	clz	r3, r3
 8005a96:	095b      	lsrs	r3, r3, #5
 8005a98:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005a9c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005aa0:	6033      	str	r3, [r6, #0]
 8005aa2:	602a      	str	r2, [r5, #0]
 8005aa4:	b016      	add	sp, #88	; 0x58
 8005aa6:	bd70      	pop	{r4, r5, r6, pc}

08005aa8 <__smakebuf_r>:
 8005aa8:	898a      	ldrh	r2, [r1, #12]
 8005aaa:	0792      	lsls	r2, r2, #30
 8005aac:	460b      	mov	r3, r1
 8005aae:	d506      	bpl.n	8005abe <__smakebuf_r+0x16>
 8005ab0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005ab4:	2101      	movs	r1, #1
 8005ab6:	601a      	str	r2, [r3, #0]
 8005ab8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005abc:	4770      	bx	lr
 8005abe:	b570      	push	{r4, r5, r6, lr}
 8005ac0:	b082      	sub	sp, #8
 8005ac2:	ab01      	add	r3, sp, #4
 8005ac4:	466a      	mov	r2, sp
 8005ac6:	460c      	mov	r4, r1
 8005ac8:	4605      	mov	r5, r0
 8005aca:	f7ff ffbf 	bl	8005a4c <__swhatbuf_r>
 8005ace:	9900      	ldr	r1, [sp, #0]
 8005ad0:	4606      	mov	r6, r0
 8005ad2:	4628      	mov	r0, r5
 8005ad4:	f000 f832 	bl	8005b3c <_malloc_r>
 8005ad8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005adc:	b1d8      	cbz	r0, 8005b16 <__smakebuf_r+0x6e>
 8005ade:	4916      	ldr	r1, [pc, #88]	; (8005b38 <__smakebuf_r+0x90>)
 8005ae0:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005ae2:	9a01      	ldr	r2, [sp, #4]
 8005ae4:	9900      	ldr	r1, [sp, #0]
 8005ae6:	6020      	str	r0, [r4, #0]
 8005ae8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005aec:	81a3      	strh	r3, [r4, #12]
 8005aee:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005af2:	b91a      	cbnz	r2, 8005afc <__smakebuf_r+0x54>
 8005af4:	4333      	orrs	r3, r6
 8005af6:	81a3      	strh	r3, [r4, #12]
 8005af8:	b002      	add	sp, #8
 8005afa:	bd70      	pop	{r4, r5, r6, pc}
 8005afc:	4628      	mov	r0, r5
 8005afe:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005b02:	f001 faa3 	bl	800704c <_isatty_r>
 8005b06:	b1a0      	cbz	r0, 8005b32 <__smakebuf_r+0x8a>
 8005b08:	89a3      	ldrh	r3, [r4, #12]
 8005b0a:	f023 0303 	bic.w	r3, r3, #3
 8005b0e:	f043 0301 	orr.w	r3, r3, #1
 8005b12:	b21b      	sxth	r3, r3
 8005b14:	e7ee      	b.n	8005af4 <__smakebuf_r+0x4c>
 8005b16:	059a      	lsls	r2, r3, #22
 8005b18:	d4ee      	bmi.n	8005af8 <__smakebuf_r+0x50>
 8005b1a:	f023 0303 	bic.w	r3, r3, #3
 8005b1e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005b22:	f043 0302 	orr.w	r3, r3, #2
 8005b26:	2101      	movs	r1, #1
 8005b28:	81a3      	strh	r3, [r4, #12]
 8005b2a:	6022      	str	r2, [r4, #0]
 8005b2c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005b30:	e7e2      	b.n	8005af8 <__smakebuf_r+0x50>
 8005b32:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b36:	e7dd      	b.n	8005af4 <__smakebuf_r+0x4c>
 8005b38:	08005399 	.word	0x08005399

08005b3c <_malloc_r>:
 8005b3c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005b40:	f101 050b 	add.w	r5, r1, #11
 8005b44:	2d16      	cmp	r5, #22
 8005b46:	b083      	sub	sp, #12
 8005b48:	4606      	mov	r6, r0
 8005b4a:	d823      	bhi.n	8005b94 <_malloc_r+0x58>
 8005b4c:	2910      	cmp	r1, #16
 8005b4e:	f200 80b9 	bhi.w	8005cc4 <_malloc_r+0x188>
 8005b52:	f000 fafb 	bl	800614c <__malloc_lock>
 8005b56:	2510      	movs	r5, #16
 8005b58:	2318      	movs	r3, #24
 8005b5a:	2002      	movs	r0, #2
 8005b5c:	4fc5      	ldr	r7, [pc, #788]	; (8005e74 <_malloc_r+0x338>)
 8005b5e:	443b      	add	r3, r7
 8005b60:	f1a3 0208 	sub.w	r2, r3, #8
 8005b64:	685c      	ldr	r4, [r3, #4]
 8005b66:	4294      	cmp	r4, r2
 8005b68:	f000 8166 	beq.w	8005e38 <_malloc_r+0x2fc>
 8005b6c:	6863      	ldr	r3, [r4, #4]
 8005b6e:	f023 0303 	bic.w	r3, r3, #3
 8005b72:	4423      	add	r3, r4
 8005b74:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005b78:	685a      	ldr	r2, [r3, #4]
 8005b7a:	60e9      	str	r1, [r5, #12]
 8005b7c:	f042 0201 	orr.w	r2, r2, #1
 8005b80:	608d      	str	r5, [r1, #8]
 8005b82:	4630      	mov	r0, r6
 8005b84:	605a      	str	r2, [r3, #4]
 8005b86:	f000 fae7 	bl	8006158 <__malloc_unlock>
 8005b8a:	3408      	adds	r4, #8
 8005b8c:	4620      	mov	r0, r4
 8005b8e:	b003      	add	sp, #12
 8005b90:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b94:	f035 0507 	bics.w	r5, r5, #7
 8005b98:	f100 8094 	bmi.w	8005cc4 <_malloc_r+0x188>
 8005b9c:	42a9      	cmp	r1, r5
 8005b9e:	f200 8091 	bhi.w	8005cc4 <_malloc_r+0x188>
 8005ba2:	f000 fad3 	bl	800614c <__malloc_lock>
 8005ba6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005baa:	f0c0 8183 	bcc.w	8005eb4 <_malloc_r+0x378>
 8005bae:	0a6b      	lsrs	r3, r5, #9
 8005bb0:	f000 808f 	beq.w	8005cd2 <_malloc_r+0x196>
 8005bb4:	2b04      	cmp	r3, #4
 8005bb6:	f200 8146 	bhi.w	8005e46 <_malloc_r+0x30a>
 8005bba:	09ab      	lsrs	r3, r5, #6
 8005bbc:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005bc0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005bc4:	00c3      	lsls	r3, r0, #3
 8005bc6:	4fab      	ldr	r7, [pc, #684]	; (8005e74 <_malloc_r+0x338>)
 8005bc8:	443b      	add	r3, r7
 8005bca:	f1a3 0108 	sub.w	r1, r3, #8
 8005bce:	685c      	ldr	r4, [r3, #4]
 8005bd0:	42a1      	cmp	r1, r4
 8005bd2:	d106      	bne.n	8005be2 <_malloc_r+0xa6>
 8005bd4:	e00c      	b.n	8005bf0 <_malloc_r+0xb4>
 8005bd6:	2a00      	cmp	r2, #0
 8005bd8:	f280 811d 	bge.w	8005e16 <_malloc_r+0x2da>
 8005bdc:	68e4      	ldr	r4, [r4, #12]
 8005bde:	42a1      	cmp	r1, r4
 8005be0:	d006      	beq.n	8005bf0 <_malloc_r+0xb4>
 8005be2:	6863      	ldr	r3, [r4, #4]
 8005be4:	f023 0303 	bic.w	r3, r3, #3
 8005be8:	1b5a      	subs	r2, r3, r5
 8005bea:	2a0f      	cmp	r2, #15
 8005bec:	ddf3      	ble.n	8005bd6 <_malloc_r+0x9a>
 8005bee:	4660      	mov	r0, ip
 8005bf0:	693c      	ldr	r4, [r7, #16]
 8005bf2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005e88 <_malloc_r+0x34c>
 8005bf6:	4564      	cmp	r4, ip
 8005bf8:	d071      	beq.n	8005cde <_malloc_r+0x1a2>
 8005bfa:	6863      	ldr	r3, [r4, #4]
 8005bfc:	f023 0303 	bic.w	r3, r3, #3
 8005c00:	1b5a      	subs	r2, r3, r5
 8005c02:	2a0f      	cmp	r2, #15
 8005c04:	f300 8144 	bgt.w	8005e90 <_malloc_r+0x354>
 8005c08:	2a00      	cmp	r2, #0
 8005c0a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005c0e:	f280 8126 	bge.w	8005e5e <_malloc_r+0x322>
 8005c12:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005c16:	f080 8169 	bcs.w	8005eec <_malloc_r+0x3b0>
 8005c1a:	08db      	lsrs	r3, r3, #3
 8005c1c:	1c59      	adds	r1, r3, #1
 8005c1e:	687a      	ldr	r2, [r7, #4]
 8005c20:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005c24:	f8c4 8008 	str.w	r8, [r4, #8]
 8005c28:	f04f 0e01 	mov.w	lr, #1
 8005c2c:	109b      	asrs	r3, r3, #2
 8005c2e:	fa0e f303 	lsl.w	r3, lr, r3
 8005c32:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005c36:	4313      	orrs	r3, r2
 8005c38:	f1ae 0208 	sub.w	r2, lr, #8
 8005c3c:	60e2      	str	r2, [r4, #12]
 8005c3e:	607b      	str	r3, [r7, #4]
 8005c40:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005c44:	f8c8 400c 	str.w	r4, [r8, #12]
 8005c48:	1082      	asrs	r2, r0, #2
 8005c4a:	2401      	movs	r4, #1
 8005c4c:	4094      	lsls	r4, r2
 8005c4e:	429c      	cmp	r4, r3
 8005c50:	d84b      	bhi.n	8005cea <_malloc_r+0x1ae>
 8005c52:	421c      	tst	r4, r3
 8005c54:	d106      	bne.n	8005c64 <_malloc_r+0x128>
 8005c56:	f020 0003 	bic.w	r0, r0, #3
 8005c5a:	0064      	lsls	r4, r4, #1
 8005c5c:	421c      	tst	r4, r3
 8005c5e:	f100 0004 	add.w	r0, r0, #4
 8005c62:	d0fa      	beq.n	8005c5a <_malloc_r+0x11e>
 8005c64:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005c68:	46ce      	mov	lr, r9
 8005c6a:	4680      	mov	r8, r0
 8005c6c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005c70:	459e      	cmp	lr, r3
 8005c72:	d107      	bne.n	8005c84 <_malloc_r+0x148>
 8005c74:	e122      	b.n	8005ebc <_malloc_r+0x380>
 8005c76:	2a00      	cmp	r2, #0
 8005c78:	f280 8129 	bge.w	8005ece <_malloc_r+0x392>
 8005c7c:	68db      	ldr	r3, [r3, #12]
 8005c7e:	459e      	cmp	lr, r3
 8005c80:	f000 811c 	beq.w	8005ebc <_malloc_r+0x380>
 8005c84:	6859      	ldr	r1, [r3, #4]
 8005c86:	f021 0103 	bic.w	r1, r1, #3
 8005c8a:	1b4a      	subs	r2, r1, r5
 8005c8c:	2a0f      	cmp	r2, #15
 8005c8e:	ddf2      	ble.n	8005c76 <_malloc_r+0x13a>
 8005c90:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005c94:	195c      	adds	r4, r3, r5
 8005c96:	f045 0501 	orr.w	r5, r5, #1
 8005c9a:	605d      	str	r5, [r3, #4]
 8005c9c:	f042 0501 	orr.w	r5, r2, #1
 8005ca0:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005ca4:	4630      	mov	r0, r6
 8005ca6:	f8ce 8008 	str.w	r8, [lr, #8]
 8005caa:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005cae:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005cb2:	6065      	str	r5, [r4, #4]
 8005cb4:	505a      	str	r2, [r3, r1]
 8005cb6:	9301      	str	r3, [sp, #4]
 8005cb8:	f000 fa4e 	bl	8006158 <__malloc_unlock>
 8005cbc:	9b01      	ldr	r3, [sp, #4]
 8005cbe:	f103 0408 	add.w	r4, r3, #8
 8005cc2:	e763      	b.n	8005b8c <_malloc_r+0x50>
 8005cc4:	2400      	movs	r4, #0
 8005cc6:	230c      	movs	r3, #12
 8005cc8:	4620      	mov	r0, r4
 8005cca:	6033      	str	r3, [r6, #0]
 8005ccc:	b003      	add	sp, #12
 8005cce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005cd2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005cd6:	2040      	movs	r0, #64	; 0x40
 8005cd8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005cdc:	e773      	b.n	8005bc6 <_malloc_r+0x8a>
 8005cde:	687b      	ldr	r3, [r7, #4]
 8005ce0:	1082      	asrs	r2, r0, #2
 8005ce2:	2401      	movs	r4, #1
 8005ce4:	4094      	lsls	r4, r2
 8005ce6:	429c      	cmp	r4, r3
 8005ce8:	d9b3      	bls.n	8005c52 <_malloc_r+0x116>
 8005cea:	68bc      	ldr	r4, [r7, #8]
 8005cec:	6863      	ldr	r3, [r4, #4]
 8005cee:	f023 0903 	bic.w	r9, r3, #3
 8005cf2:	45a9      	cmp	r9, r5
 8005cf4:	d303      	bcc.n	8005cfe <_malloc_r+0x1c2>
 8005cf6:	eba9 0305 	sub.w	r3, r9, r5
 8005cfa:	2b0f      	cmp	r3, #15
 8005cfc:	dc7b      	bgt.n	8005df6 <_malloc_r+0x2ba>
 8005cfe:	4b5e      	ldr	r3, [pc, #376]	; (8005e78 <_malloc_r+0x33c>)
 8005d00:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005e8c <_malloc_r+0x350>
 8005d04:	681a      	ldr	r2, [r3, #0]
 8005d06:	f8da 3000 	ldr.w	r3, [sl]
 8005d0a:	3301      	adds	r3, #1
 8005d0c:	eb05 0802 	add.w	r8, r5, r2
 8005d10:	f000 8148 	beq.w	8005fa4 <_malloc_r+0x468>
 8005d14:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005d18:	f108 080f 	add.w	r8, r8, #15
 8005d1c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005d20:	f028 080f 	bic.w	r8, r8, #15
 8005d24:	4641      	mov	r1, r8
 8005d26:	4630      	mov	r0, r6
 8005d28:	f000 ff08 	bl	8006b3c <_sbrk_r>
 8005d2c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005d30:	4683      	mov	fp, r0
 8005d32:	f000 8104 	beq.w	8005f3e <_malloc_r+0x402>
 8005d36:	eb04 0009 	add.w	r0, r4, r9
 8005d3a:	4558      	cmp	r0, fp
 8005d3c:	f200 80fd 	bhi.w	8005f3a <_malloc_r+0x3fe>
 8005d40:	4a4e      	ldr	r2, [pc, #312]	; (8005e7c <_malloc_r+0x340>)
 8005d42:	6813      	ldr	r3, [r2, #0]
 8005d44:	4443      	add	r3, r8
 8005d46:	6013      	str	r3, [r2, #0]
 8005d48:	f000 814d 	beq.w	8005fe6 <_malloc_r+0x4aa>
 8005d4c:	f8da 1000 	ldr.w	r1, [sl]
 8005d50:	3101      	adds	r1, #1
 8005d52:	bf1b      	ittet	ne
 8005d54:	ebab 0000 	subne.w	r0, fp, r0
 8005d58:	181b      	addne	r3, r3, r0
 8005d5a:	f8ca b000 	streq.w	fp, [sl]
 8005d5e:	6013      	strne	r3, [r2, #0]
 8005d60:	f01b 0307 	ands.w	r3, fp, #7
 8005d64:	f000 8134 	beq.w	8005fd0 <_malloc_r+0x494>
 8005d68:	f1c3 0108 	rsb	r1, r3, #8
 8005d6c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005d70:	448b      	add	fp, r1
 8005d72:	3308      	adds	r3, #8
 8005d74:	44d8      	add	r8, fp
 8005d76:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005d7a:	eba3 0808 	sub.w	r8, r3, r8
 8005d7e:	4641      	mov	r1, r8
 8005d80:	4630      	mov	r0, r6
 8005d82:	9201      	str	r2, [sp, #4]
 8005d84:	f000 feda 	bl	8006b3c <_sbrk_r>
 8005d88:	1c43      	adds	r3, r0, #1
 8005d8a:	9a01      	ldr	r2, [sp, #4]
 8005d8c:	f000 8146 	beq.w	800601c <_malloc_r+0x4e0>
 8005d90:	eba0 010b 	sub.w	r1, r0, fp
 8005d94:	4441      	add	r1, r8
 8005d96:	f041 0101 	orr.w	r1, r1, #1
 8005d9a:	6813      	ldr	r3, [r2, #0]
 8005d9c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005da0:	4443      	add	r3, r8
 8005da2:	42bc      	cmp	r4, r7
 8005da4:	f8cb 1004 	str.w	r1, [fp, #4]
 8005da8:	6013      	str	r3, [r2, #0]
 8005daa:	d015      	beq.n	8005dd8 <_malloc_r+0x29c>
 8005dac:	f1b9 0f0f 	cmp.w	r9, #15
 8005db0:	f240 8130 	bls.w	8006014 <_malloc_r+0x4d8>
 8005db4:	6860      	ldr	r0, [r4, #4]
 8005db6:	f1a9 010c 	sub.w	r1, r9, #12
 8005dba:	f021 0107 	bic.w	r1, r1, #7
 8005dbe:	f000 0001 	and.w	r0, r0, #1
 8005dc2:	eb04 0c01 	add.w	ip, r4, r1
 8005dc6:	4308      	orrs	r0, r1
 8005dc8:	f04f 0e05 	mov.w	lr, #5
 8005dcc:	290f      	cmp	r1, #15
 8005dce:	6060      	str	r0, [r4, #4]
 8005dd0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005dd4:	f200 813a 	bhi.w	800604c <_malloc_r+0x510>
 8005dd8:	4a29      	ldr	r2, [pc, #164]	; (8005e80 <_malloc_r+0x344>)
 8005dda:	482a      	ldr	r0, [pc, #168]	; (8005e84 <_malloc_r+0x348>)
 8005ddc:	6811      	ldr	r1, [r2, #0]
 8005dde:	68bc      	ldr	r4, [r7, #8]
 8005de0:	428b      	cmp	r3, r1
 8005de2:	6801      	ldr	r1, [r0, #0]
 8005de4:	bf88      	it	hi
 8005de6:	6013      	strhi	r3, [r2, #0]
 8005de8:	6862      	ldr	r2, [r4, #4]
 8005dea:	428b      	cmp	r3, r1
 8005dec:	f022 0203 	bic.w	r2, r2, #3
 8005df0:	bf88      	it	hi
 8005df2:	6003      	strhi	r3, [r0, #0]
 8005df4:	e0a7      	b.n	8005f46 <_malloc_r+0x40a>
 8005df6:	1962      	adds	r2, r4, r5
 8005df8:	f043 0301 	orr.w	r3, r3, #1
 8005dfc:	f045 0501 	orr.w	r5, r5, #1
 8005e00:	6065      	str	r5, [r4, #4]
 8005e02:	4630      	mov	r0, r6
 8005e04:	60ba      	str	r2, [r7, #8]
 8005e06:	6053      	str	r3, [r2, #4]
 8005e08:	f000 f9a6 	bl	8006158 <__malloc_unlock>
 8005e0c:	3408      	adds	r4, #8
 8005e0e:	4620      	mov	r0, r4
 8005e10:	b003      	add	sp, #12
 8005e12:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e16:	4423      	add	r3, r4
 8005e18:	68e1      	ldr	r1, [r4, #12]
 8005e1a:	685a      	ldr	r2, [r3, #4]
 8005e1c:	68a5      	ldr	r5, [r4, #8]
 8005e1e:	f042 0201 	orr.w	r2, r2, #1
 8005e22:	60e9      	str	r1, [r5, #12]
 8005e24:	4630      	mov	r0, r6
 8005e26:	608d      	str	r5, [r1, #8]
 8005e28:	605a      	str	r2, [r3, #4]
 8005e2a:	f000 f995 	bl	8006158 <__malloc_unlock>
 8005e2e:	3408      	adds	r4, #8
 8005e30:	4620      	mov	r0, r4
 8005e32:	b003      	add	sp, #12
 8005e34:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e38:	68dc      	ldr	r4, [r3, #12]
 8005e3a:	42a3      	cmp	r3, r4
 8005e3c:	bf08      	it	eq
 8005e3e:	3002      	addeq	r0, #2
 8005e40:	f43f aed6 	beq.w	8005bf0 <_malloc_r+0xb4>
 8005e44:	e692      	b.n	8005b6c <_malloc_r+0x30>
 8005e46:	2b14      	cmp	r3, #20
 8005e48:	d971      	bls.n	8005f2e <_malloc_r+0x3f2>
 8005e4a:	2b54      	cmp	r3, #84	; 0x54
 8005e4c:	f200 80ad 	bhi.w	8005faa <_malloc_r+0x46e>
 8005e50:	0b2b      	lsrs	r3, r5, #12
 8005e52:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005e56:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005e5a:	00c3      	lsls	r3, r0, #3
 8005e5c:	e6b3      	b.n	8005bc6 <_malloc_r+0x8a>
 8005e5e:	4423      	add	r3, r4
 8005e60:	4630      	mov	r0, r6
 8005e62:	685a      	ldr	r2, [r3, #4]
 8005e64:	f042 0201 	orr.w	r2, r2, #1
 8005e68:	605a      	str	r2, [r3, #4]
 8005e6a:	3408      	adds	r4, #8
 8005e6c:	f000 f974 	bl	8006158 <__malloc_unlock>
 8005e70:	e68c      	b.n	8005b8c <_malloc_r+0x50>
 8005e72:	bf00      	nop
 8005e74:	2000046c 	.word	0x2000046c
 8005e78:	20000ac0 	.word	0x20000ac0
 8005e7c:	20000a90 	.word	0x20000a90
 8005e80:	20000ab8 	.word	0x20000ab8
 8005e84:	20000abc 	.word	0x20000abc
 8005e88:	20000474 	.word	0x20000474
 8005e8c:	20000874 	.word	0x20000874
 8005e90:	1961      	adds	r1, r4, r5
 8005e92:	f045 0e01 	orr.w	lr, r5, #1
 8005e96:	f042 0501 	orr.w	r5, r2, #1
 8005e9a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005e9e:	4630      	mov	r0, r6
 8005ea0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005ea4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005ea8:	604d      	str	r5, [r1, #4]
 8005eaa:	50e2      	str	r2, [r4, r3]
 8005eac:	f000 f954 	bl	8006158 <__malloc_unlock>
 8005eb0:	3408      	adds	r4, #8
 8005eb2:	e66b      	b.n	8005b8c <_malloc_r+0x50>
 8005eb4:	08e8      	lsrs	r0, r5, #3
 8005eb6:	f105 0308 	add.w	r3, r5, #8
 8005eba:	e64f      	b.n	8005b5c <_malloc_r+0x20>
 8005ebc:	f108 0801 	add.w	r8, r8, #1
 8005ec0:	f018 0f03 	tst.w	r8, #3
 8005ec4:	f10e 0e08 	add.w	lr, lr, #8
 8005ec8:	f47f aed0 	bne.w	8005c6c <_malloc_r+0x130>
 8005ecc:	e052      	b.n	8005f74 <_malloc_r+0x438>
 8005ece:	4419      	add	r1, r3
 8005ed0:	461c      	mov	r4, r3
 8005ed2:	684a      	ldr	r2, [r1, #4]
 8005ed4:	68db      	ldr	r3, [r3, #12]
 8005ed6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005eda:	f042 0201 	orr.w	r2, r2, #1
 8005ede:	604a      	str	r2, [r1, #4]
 8005ee0:	4630      	mov	r0, r6
 8005ee2:	60eb      	str	r3, [r5, #12]
 8005ee4:	609d      	str	r5, [r3, #8]
 8005ee6:	f000 f937 	bl	8006158 <__malloc_unlock>
 8005eea:	e64f      	b.n	8005b8c <_malloc_r+0x50>
 8005eec:	0a5a      	lsrs	r2, r3, #9
 8005eee:	2a04      	cmp	r2, #4
 8005ef0:	d935      	bls.n	8005f5e <_malloc_r+0x422>
 8005ef2:	2a14      	cmp	r2, #20
 8005ef4:	d86f      	bhi.n	8005fd6 <_malloc_r+0x49a>
 8005ef6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005efa:	00c9      	lsls	r1, r1, #3
 8005efc:	325b      	adds	r2, #91	; 0x5b
 8005efe:	eb07 0e01 	add.w	lr, r7, r1
 8005f02:	5879      	ldr	r1, [r7, r1]
 8005f04:	f1ae 0e08 	sub.w	lr, lr, #8
 8005f08:	458e      	cmp	lr, r1
 8005f0a:	d058      	beq.n	8005fbe <_malloc_r+0x482>
 8005f0c:	684a      	ldr	r2, [r1, #4]
 8005f0e:	f022 0203 	bic.w	r2, r2, #3
 8005f12:	429a      	cmp	r2, r3
 8005f14:	d902      	bls.n	8005f1c <_malloc_r+0x3e0>
 8005f16:	6889      	ldr	r1, [r1, #8]
 8005f18:	458e      	cmp	lr, r1
 8005f1a:	d1f7      	bne.n	8005f0c <_malloc_r+0x3d0>
 8005f1c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005f20:	687b      	ldr	r3, [r7, #4]
 8005f22:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005f26:	f8ce 4008 	str.w	r4, [lr, #8]
 8005f2a:	60cc      	str	r4, [r1, #12]
 8005f2c:	e68c      	b.n	8005c48 <_malloc_r+0x10c>
 8005f2e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005f32:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005f36:	00c3      	lsls	r3, r0, #3
 8005f38:	e645      	b.n	8005bc6 <_malloc_r+0x8a>
 8005f3a:	42bc      	cmp	r4, r7
 8005f3c:	d072      	beq.n	8006024 <_malloc_r+0x4e8>
 8005f3e:	68bc      	ldr	r4, [r7, #8]
 8005f40:	6862      	ldr	r2, [r4, #4]
 8005f42:	f022 0203 	bic.w	r2, r2, #3
 8005f46:	4295      	cmp	r5, r2
 8005f48:	eba2 0305 	sub.w	r3, r2, r5
 8005f4c:	d802      	bhi.n	8005f54 <_malloc_r+0x418>
 8005f4e:	2b0f      	cmp	r3, #15
 8005f50:	f73f af51 	bgt.w	8005df6 <_malloc_r+0x2ba>
 8005f54:	4630      	mov	r0, r6
 8005f56:	f000 f8ff 	bl	8006158 <__malloc_unlock>
 8005f5a:	2400      	movs	r4, #0
 8005f5c:	e616      	b.n	8005b8c <_malloc_r+0x50>
 8005f5e:	099a      	lsrs	r2, r3, #6
 8005f60:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005f64:	00c9      	lsls	r1, r1, #3
 8005f66:	3238      	adds	r2, #56	; 0x38
 8005f68:	e7c9      	b.n	8005efe <_malloc_r+0x3c2>
 8005f6a:	f8d9 9000 	ldr.w	r9, [r9]
 8005f6e:	4599      	cmp	r9, r3
 8005f70:	f040 8083 	bne.w	800607a <_malloc_r+0x53e>
 8005f74:	f010 0f03 	tst.w	r0, #3
 8005f78:	f1a9 0308 	sub.w	r3, r9, #8
 8005f7c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005f80:	d1f3      	bne.n	8005f6a <_malloc_r+0x42e>
 8005f82:	687b      	ldr	r3, [r7, #4]
 8005f84:	ea23 0304 	bic.w	r3, r3, r4
 8005f88:	607b      	str	r3, [r7, #4]
 8005f8a:	0064      	lsls	r4, r4, #1
 8005f8c:	429c      	cmp	r4, r3
 8005f8e:	f63f aeac 	bhi.w	8005cea <_malloc_r+0x1ae>
 8005f92:	b91c      	cbnz	r4, 8005f9c <_malloc_r+0x460>
 8005f94:	e6a9      	b.n	8005cea <_malloc_r+0x1ae>
 8005f96:	0064      	lsls	r4, r4, #1
 8005f98:	f108 0804 	add.w	r8, r8, #4
 8005f9c:	421c      	tst	r4, r3
 8005f9e:	d0fa      	beq.n	8005f96 <_malloc_r+0x45a>
 8005fa0:	4640      	mov	r0, r8
 8005fa2:	e65f      	b.n	8005c64 <_malloc_r+0x128>
 8005fa4:	f108 0810 	add.w	r8, r8, #16
 8005fa8:	e6bc      	b.n	8005d24 <_malloc_r+0x1e8>
 8005faa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005fae:	d826      	bhi.n	8005ffe <_malloc_r+0x4c2>
 8005fb0:	0beb      	lsrs	r3, r5, #15
 8005fb2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005fb6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005fba:	00c3      	lsls	r3, r0, #3
 8005fbc:	e603      	b.n	8005bc6 <_malloc_r+0x8a>
 8005fbe:	687b      	ldr	r3, [r7, #4]
 8005fc0:	1092      	asrs	r2, r2, #2
 8005fc2:	f04f 0801 	mov.w	r8, #1
 8005fc6:	fa08 f202 	lsl.w	r2, r8, r2
 8005fca:	4313      	orrs	r3, r2
 8005fcc:	607b      	str	r3, [r7, #4]
 8005fce:	e7a8      	b.n	8005f22 <_malloc_r+0x3e6>
 8005fd0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005fd4:	e6ce      	b.n	8005d74 <_malloc_r+0x238>
 8005fd6:	2a54      	cmp	r2, #84	; 0x54
 8005fd8:	d829      	bhi.n	800602e <_malloc_r+0x4f2>
 8005fda:	0b1a      	lsrs	r2, r3, #12
 8005fdc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005fe0:	00c9      	lsls	r1, r1, #3
 8005fe2:	326e      	adds	r2, #110	; 0x6e
 8005fe4:	e78b      	b.n	8005efe <_malloc_r+0x3c2>
 8005fe6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005fea:	2900      	cmp	r1, #0
 8005fec:	f47f aeae 	bne.w	8005d4c <_malloc_r+0x210>
 8005ff0:	eb09 0208 	add.w	r2, r9, r8
 8005ff4:	68b9      	ldr	r1, [r7, #8]
 8005ff6:	f042 0201 	orr.w	r2, r2, #1
 8005ffa:	604a      	str	r2, [r1, #4]
 8005ffc:	e6ec      	b.n	8005dd8 <_malloc_r+0x29c>
 8005ffe:	f240 5254 	movw	r2, #1364	; 0x554
 8006002:	4293      	cmp	r3, r2
 8006004:	d81c      	bhi.n	8006040 <_malloc_r+0x504>
 8006006:	0cab      	lsrs	r3, r5, #18
 8006008:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800600c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006010:	00c3      	lsls	r3, r0, #3
 8006012:	e5d8      	b.n	8005bc6 <_malloc_r+0x8a>
 8006014:	2301      	movs	r3, #1
 8006016:	f8cb 3004 	str.w	r3, [fp, #4]
 800601a:	e79b      	b.n	8005f54 <_malloc_r+0x418>
 800601c:	2101      	movs	r1, #1
 800601e:	f04f 0800 	mov.w	r8, #0
 8006022:	e6ba      	b.n	8005d9a <_malloc_r+0x25e>
 8006024:	4a16      	ldr	r2, [pc, #88]	; (8006080 <_malloc_r+0x544>)
 8006026:	6813      	ldr	r3, [r2, #0]
 8006028:	4443      	add	r3, r8
 800602a:	6013      	str	r3, [r2, #0]
 800602c:	e68e      	b.n	8005d4c <_malloc_r+0x210>
 800602e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006032:	d814      	bhi.n	800605e <_malloc_r+0x522>
 8006034:	0bda      	lsrs	r2, r3, #15
 8006036:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800603a:	00c9      	lsls	r1, r1, #3
 800603c:	3277      	adds	r2, #119	; 0x77
 800603e:	e75e      	b.n	8005efe <_malloc_r+0x3c2>
 8006040:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006044:	207f      	movs	r0, #127	; 0x7f
 8006046:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800604a:	e5bc      	b.n	8005bc6 <_malloc_r+0x8a>
 800604c:	f104 0108 	add.w	r1, r4, #8
 8006050:	4630      	mov	r0, r6
 8006052:	9201      	str	r2, [sp, #4]
 8006054:	f7ff fa48 	bl	80054e8 <_free_r>
 8006058:	9a01      	ldr	r2, [sp, #4]
 800605a:	6813      	ldr	r3, [r2, #0]
 800605c:	e6bc      	b.n	8005dd8 <_malloc_r+0x29c>
 800605e:	f240 5154 	movw	r1, #1364	; 0x554
 8006062:	428a      	cmp	r2, r1
 8006064:	d805      	bhi.n	8006072 <_malloc_r+0x536>
 8006066:	0c9a      	lsrs	r2, r3, #18
 8006068:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800606c:	00c9      	lsls	r1, r1, #3
 800606e:	327c      	adds	r2, #124	; 0x7c
 8006070:	e745      	b.n	8005efe <_malloc_r+0x3c2>
 8006072:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006076:	227e      	movs	r2, #126	; 0x7e
 8006078:	e741      	b.n	8005efe <_malloc_r+0x3c2>
 800607a:	687b      	ldr	r3, [r7, #4]
 800607c:	e785      	b.n	8005f8a <_malloc_r+0x44e>
 800607e:	bf00      	nop
 8006080:	20000a90 	.word	0x20000a90

08006084 <memmove>:
 8006084:	4288      	cmp	r0, r1
 8006086:	b4f0      	push	{r4, r5, r6, r7}
 8006088:	d90d      	bls.n	80060a6 <memmove+0x22>
 800608a:	188b      	adds	r3, r1, r2
 800608c:	4283      	cmp	r3, r0
 800608e:	d90a      	bls.n	80060a6 <memmove+0x22>
 8006090:	1884      	adds	r4, r0, r2
 8006092:	b132      	cbz	r2, 80060a2 <memmove+0x1e>
 8006094:	4622      	mov	r2, r4
 8006096:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800609a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800609e:	4299      	cmp	r1, r3
 80060a0:	d1f9      	bne.n	8006096 <memmove+0x12>
 80060a2:	bcf0      	pop	{r4, r5, r6, r7}
 80060a4:	4770      	bx	lr
 80060a6:	2a0f      	cmp	r2, #15
 80060a8:	d949      	bls.n	800613e <memmove+0xba>
 80060aa:	ea40 0301 	orr.w	r3, r0, r1
 80060ae:	079b      	lsls	r3, r3, #30
 80060b0:	d147      	bne.n	8006142 <memmove+0xbe>
 80060b2:	f1a2 0310 	sub.w	r3, r2, #16
 80060b6:	091b      	lsrs	r3, r3, #4
 80060b8:	f101 0720 	add.w	r7, r1, #32
 80060bc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80060c0:	f101 0410 	add.w	r4, r1, #16
 80060c4:	f100 0510 	add.w	r5, r0, #16
 80060c8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80060cc:	f845 6c10 	str.w	r6, [r5, #-16]
 80060d0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80060d4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80060d8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80060dc:	f845 6c08 	str.w	r6, [r5, #-8]
 80060e0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80060e4:	f845 6c04 	str.w	r6, [r5, #-4]
 80060e8:	3410      	adds	r4, #16
 80060ea:	42bc      	cmp	r4, r7
 80060ec:	f105 0510 	add.w	r5, r5, #16
 80060f0:	d1ea      	bne.n	80060c8 <memmove+0x44>
 80060f2:	3301      	adds	r3, #1
 80060f4:	f002 050f 	and.w	r5, r2, #15
 80060f8:	011b      	lsls	r3, r3, #4
 80060fa:	2d03      	cmp	r5, #3
 80060fc:	4419      	add	r1, r3
 80060fe:	4403      	add	r3, r0
 8006100:	d921      	bls.n	8006146 <memmove+0xc2>
 8006102:	1f1f      	subs	r7, r3, #4
 8006104:	460e      	mov	r6, r1
 8006106:	462c      	mov	r4, r5
 8006108:	3c04      	subs	r4, #4
 800610a:	f856 cb04 	ldr.w	ip, [r6], #4
 800610e:	f847 cf04 	str.w	ip, [r7, #4]!
 8006112:	2c03      	cmp	r4, #3
 8006114:	d8f8      	bhi.n	8006108 <memmove+0x84>
 8006116:	1f2c      	subs	r4, r5, #4
 8006118:	f024 0403 	bic.w	r4, r4, #3
 800611c:	3404      	adds	r4, #4
 800611e:	4423      	add	r3, r4
 8006120:	4421      	add	r1, r4
 8006122:	f002 0203 	and.w	r2, r2, #3
 8006126:	2a00      	cmp	r2, #0
 8006128:	d0bb      	beq.n	80060a2 <memmove+0x1e>
 800612a:	3b01      	subs	r3, #1
 800612c:	440a      	add	r2, r1
 800612e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006132:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006136:	4291      	cmp	r1, r2
 8006138:	d1f9      	bne.n	800612e <memmove+0xaa>
 800613a:	bcf0      	pop	{r4, r5, r6, r7}
 800613c:	4770      	bx	lr
 800613e:	4603      	mov	r3, r0
 8006140:	e7f1      	b.n	8006126 <memmove+0xa2>
 8006142:	4603      	mov	r3, r0
 8006144:	e7f1      	b.n	800612a <memmove+0xa6>
 8006146:	462a      	mov	r2, r5
 8006148:	e7ed      	b.n	8006126 <memmove+0xa2>
 800614a:	bf00      	nop

0800614c <__malloc_lock>:
 800614c:	4801      	ldr	r0, [pc, #4]	; (8006154 <__malloc_lock+0x8>)
 800614e:	f7ff bc79 	b.w	8005a44 <__retarget_lock_acquire_recursive>
 8006152:	bf00      	nop
 8006154:	20000bd4 	.word	0x20000bd4

08006158 <__malloc_unlock>:
 8006158:	4801      	ldr	r0, [pc, #4]	; (8006160 <__malloc_unlock+0x8>)
 800615a:	f7ff bc75 	b.w	8005a48 <__retarget_lock_release_recursive>
 800615e:	bf00      	nop
 8006160:	20000bd4 	.word	0x20000bd4

08006164 <_Balloc>:
 8006164:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006166:	b570      	push	{r4, r5, r6, lr}
 8006168:	4605      	mov	r5, r0
 800616a:	460c      	mov	r4, r1
 800616c:	b14b      	cbz	r3, 8006182 <_Balloc+0x1e>
 800616e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006172:	b180      	cbz	r0, 8006196 <_Balloc+0x32>
 8006174:	6802      	ldr	r2, [r0, #0]
 8006176:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800617a:	2300      	movs	r3, #0
 800617c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006180:	bd70      	pop	{r4, r5, r6, pc}
 8006182:	2221      	movs	r2, #33	; 0x21
 8006184:	2104      	movs	r1, #4
 8006186:	f000 fe1d 	bl	8006dc4 <_calloc_r>
 800618a:	4603      	mov	r3, r0
 800618c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800618e:	2800      	cmp	r0, #0
 8006190:	d1ed      	bne.n	800616e <_Balloc+0xa>
 8006192:	2000      	movs	r0, #0
 8006194:	bd70      	pop	{r4, r5, r6, pc}
 8006196:	2101      	movs	r1, #1
 8006198:	fa01 f604 	lsl.w	r6, r1, r4
 800619c:	1d72      	adds	r2, r6, #5
 800619e:	4628      	mov	r0, r5
 80061a0:	0092      	lsls	r2, r2, #2
 80061a2:	f000 fe0f 	bl	8006dc4 <_calloc_r>
 80061a6:	2800      	cmp	r0, #0
 80061a8:	d0f3      	beq.n	8006192 <_Balloc+0x2e>
 80061aa:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80061ae:	e7e4      	b.n	800617a <_Balloc+0x16>

080061b0 <_Bfree>:
 80061b0:	b131      	cbz	r1, 80061c0 <_Bfree+0x10>
 80061b2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80061b4:	684a      	ldr	r2, [r1, #4]
 80061b6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80061ba:	6008      	str	r0, [r1, #0]
 80061bc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80061c0:	4770      	bx	lr
 80061c2:	bf00      	nop

080061c4 <__multadd>:
 80061c4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80061c6:	690c      	ldr	r4, [r1, #16]
 80061c8:	b083      	sub	sp, #12
 80061ca:	460d      	mov	r5, r1
 80061cc:	4606      	mov	r6, r0
 80061ce:	f101 0c14 	add.w	ip, r1, #20
 80061d2:	2700      	movs	r7, #0
 80061d4:	f8dc 0000 	ldr.w	r0, [ip]
 80061d8:	b281      	uxth	r1, r0
 80061da:	fb02 3301 	mla	r3, r2, r1, r3
 80061de:	0c01      	lsrs	r1, r0, #16
 80061e0:	0c18      	lsrs	r0, r3, #16
 80061e2:	fb02 0101 	mla	r1, r2, r1, r0
 80061e6:	b29b      	uxth	r3, r3
 80061e8:	3701      	adds	r7, #1
 80061ea:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80061ee:	42bc      	cmp	r4, r7
 80061f0:	f84c 3b04 	str.w	r3, [ip], #4
 80061f4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80061f8:	dcec      	bgt.n	80061d4 <__multadd+0x10>
 80061fa:	b13b      	cbz	r3, 800620c <__multadd+0x48>
 80061fc:	68aa      	ldr	r2, [r5, #8]
 80061fe:	42a2      	cmp	r2, r4
 8006200:	dd07      	ble.n	8006212 <__multadd+0x4e>
 8006202:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006206:	3401      	adds	r4, #1
 8006208:	6153      	str	r3, [r2, #20]
 800620a:	612c      	str	r4, [r5, #16]
 800620c:	4628      	mov	r0, r5
 800620e:	b003      	add	sp, #12
 8006210:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006212:	6869      	ldr	r1, [r5, #4]
 8006214:	9301      	str	r3, [sp, #4]
 8006216:	3101      	adds	r1, #1
 8006218:	4630      	mov	r0, r6
 800621a:	f7ff ffa3 	bl	8006164 <_Balloc>
 800621e:	692a      	ldr	r2, [r5, #16]
 8006220:	3202      	adds	r2, #2
 8006222:	f105 010c 	add.w	r1, r5, #12
 8006226:	4607      	mov	r7, r0
 8006228:	0092      	lsls	r2, r2, #2
 800622a:	300c      	adds	r0, #12
 800622c:	f7fa f968 	bl	8000500 <memcpy>
 8006230:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006232:	6869      	ldr	r1, [r5, #4]
 8006234:	9b01      	ldr	r3, [sp, #4]
 8006236:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800623a:	6028      	str	r0, [r5, #0]
 800623c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006240:	463d      	mov	r5, r7
 8006242:	e7de      	b.n	8006202 <__multadd+0x3e>

08006244 <__hi0bits>:
 8006244:	0c02      	lsrs	r2, r0, #16
 8006246:	0412      	lsls	r2, r2, #16
 8006248:	4603      	mov	r3, r0
 800624a:	b9c2      	cbnz	r2, 800627e <__hi0bits+0x3a>
 800624c:	0403      	lsls	r3, r0, #16
 800624e:	2010      	movs	r0, #16
 8006250:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006254:	bf04      	itt	eq
 8006256:	021b      	lsleq	r3, r3, #8
 8006258:	3008      	addeq	r0, #8
 800625a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800625e:	bf04      	itt	eq
 8006260:	011b      	lsleq	r3, r3, #4
 8006262:	3004      	addeq	r0, #4
 8006264:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006268:	bf04      	itt	eq
 800626a:	009b      	lsleq	r3, r3, #2
 800626c:	3002      	addeq	r0, #2
 800626e:	2b00      	cmp	r3, #0
 8006270:	db04      	blt.n	800627c <__hi0bits+0x38>
 8006272:	005b      	lsls	r3, r3, #1
 8006274:	d501      	bpl.n	800627a <__hi0bits+0x36>
 8006276:	3001      	adds	r0, #1
 8006278:	4770      	bx	lr
 800627a:	2020      	movs	r0, #32
 800627c:	4770      	bx	lr
 800627e:	2000      	movs	r0, #0
 8006280:	e7e6      	b.n	8006250 <__hi0bits+0xc>
 8006282:	bf00      	nop

08006284 <__lo0bits>:
 8006284:	6803      	ldr	r3, [r0, #0]
 8006286:	f013 0207 	ands.w	r2, r3, #7
 800628a:	4601      	mov	r1, r0
 800628c:	d007      	beq.n	800629e <__lo0bits+0x1a>
 800628e:	07da      	lsls	r2, r3, #31
 8006290:	d41f      	bmi.n	80062d2 <__lo0bits+0x4e>
 8006292:	0798      	lsls	r0, r3, #30
 8006294:	d51f      	bpl.n	80062d6 <__lo0bits+0x52>
 8006296:	085b      	lsrs	r3, r3, #1
 8006298:	600b      	str	r3, [r1, #0]
 800629a:	2001      	movs	r0, #1
 800629c:	4770      	bx	lr
 800629e:	b298      	uxth	r0, r3
 80062a0:	b1a0      	cbz	r0, 80062cc <__lo0bits+0x48>
 80062a2:	4610      	mov	r0, r2
 80062a4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80062a8:	bf04      	itt	eq
 80062aa:	0a1b      	lsreq	r3, r3, #8
 80062ac:	3008      	addeq	r0, #8
 80062ae:	071a      	lsls	r2, r3, #28
 80062b0:	bf04      	itt	eq
 80062b2:	091b      	lsreq	r3, r3, #4
 80062b4:	3004      	addeq	r0, #4
 80062b6:	079a      	lsls	r2, r3, #30
 80062b8:	bf04      	itt	eq
 80062ba:	089b      	lsreq	r3, r3, #2
 80062bc:	3002      	addeq	r0, #2
 80062be:	07da      	lsls	r2, r3, #31
 80062c0:	d402      	bmi.n	80062c8 <__lo0bits+0x44>
 80062c2:	085b      	lsrs	r3, r3, #1
 80062c4:	d00b      	beq.n	80062de <__lo0bits+0x5a>
 80062c6:	3001      	adds	r0, #1
 80062c8:	600b      	str	r3, [r1, #0]
 80062ca:	4770      	bx	lr
 80062cc:	0c1b      	lsrs	r3, r3, #16
 80062ce:	2010      	movs	r0, #16
 80062d0:	e7e8      	b.n	80062a4 <__lo0bits+0x20>
 80062d2:	2000      	movs	r0, #0
 80062d4:	4770      	bx	lr
 80062d6:	089b      	lsrs	r3, r3, #2
 80062d8:	600b      	str	r3, [r1, #0]
 80062da:	2002      	movs	r0, #2
 80062dc:	4770      	bx	lr
 80062de:	2020      	movs	r0, #32
 80062e0:	4770      	bx	lr
 80062e2:	bf00      	nop

080062e4 <__i2b>:
 80062e4:	b510      	push	{r4, lr}
 80062e6:	460c      	mov	r4, r1
 80062e8:	2101      	movs	r1, #1
 80062ea:	f7ff ff3b 	bl	8006164 <_Balloc>
 80062ee:	2201      	movs	r2, #1
 80062f0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80062f4:	bd10      	pop	{r4, pc}
 80062f6:	bf00      	nop

080062f8 <__multiply>:
 80062f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80062fc:	690e      	ldr	r6, [r1, #16]
 80062fe:	6914      	ldr	r4, [r2, #16]
 8006300:	42a6      	cmp	r6, r4
 8006302:	b083      	sub	sp, #12
 8006304:	460f      	mov	r7, r1
 8006306:	4615      	mov	r5, r2
 8006308:	da04      	bge.n	8006314 <__multiply+0x1c>
 800630a:	4632      	mov	r2, r6
 800630c:	462f      	mov	r7, r5
 800630e:	4626      	mov	r6, r4
 8006310:	460d      	mov	r5, r1
 8006312:	4614      	mov	r4, r2
 8006314:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006318:	eb06 0804 	add.w	r8, r6, r4
 800631c:	4543      	cmp	r3, r8
 800631e:	bfb8      	it	lt
 8006320:	3101      	addlt	r1, #1
 8006322:	f7ff ff1f 	bl	8006164 <_Balloc>
 8006326:	f100 0914 	add.w	r9, r0, #20
 800632a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800632e:	45f1      	cmp	r9, lr
 8006330:	9000      	str	r0, [sp, #0]
 8006332:	d205      	bcs.n	8006340 <__multiply+0x48>
 8006334:	464b      	mov	r3, r9
 8006336:	2200      	movs	r2, #0
 8006338:	f843 2b04 	str.w	r2, [r3], #4
 800633c:	459e      	cmp	lr, r3
 800633e:	d8fb      	bhi.n	8006338 <__multiply+0x40>
 8006340:	f105 0a14 	add.w	sl, r5, #20
 8006344:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006348:	f107 0314 	add.w	r3, r7, #20
 800634c:	45a2      	cmp	sl, r4
 800634e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006352:	d261      	bcs.n	8006418 <__multiply+0x120>
 8006354:	1b64      	subs	r4, r4, r5
 8006356:	3c15      	subs	r4, #21
 8006358:	f024 0403 	bic.w	r4, r4, #3
 800635c:	f8cd e004 	str.w	lr, [sp, #4]
 8006360:	44a2      	add	sl, r4
 8006362:	f105 0210 	add.w	r2, r5, #16
 8006366:	469e      	mov	lr, r3
 8006368:	e005      	b.n	8006376 <__multiply+0x7e>
 800636a:	0c2d      	lsrs	r5, r5, #16
 800636c:	d12b      	bne.n	80063c6 <__multiply+0xce>
 800636e:	4592      	cmp	sl, r2
 8006370:	f109 0904 	add.w	r9, r9, #4
 8006374:	d04e      	beq.n	8006414 <__multiply+0x11c>
 8006376:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800637a:	fa1f fb85 	uxth.w	fp, r5
 800637e:	f1bb 0f00 	cmp.w	fp, #0
 8006382:	d0f2      	beq.n	800636a <__multiply+0x72>
 8006384:	4677      	mov	r7, lr
 8006386:	464e      	mov	r6, r9
 8006388:	2000      	movs	r0, #0
 800638a:	e000      	b.n	800638e <__multiply+0x96>
 800638c:	4626      	mov	r6, r4
 800638e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006392:	6834      	ldr	r4, [r6, #0]
 8006394:	b28b      	uxth	r3, r1
 8006396:	b2a5      	uxth	r5, r4
 8006398:	0c09      	lsrs	r1, r1, #16
 800639a:	0c24      	lsrs	r4, r4, #16
 800639c:	fb0b 5303 	mla	r3, fp, r3, r5
 80063a0:	4403      	add	r3, r0
 80063a2:	fb0b 4001 	mla	r0, fp, r1, r4
 80063a6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80063aa:	4634      	mov	r4, r6
 80063ac:	b29b      	uxth	r3, r3
 80063ae:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80063b2:	45bc      	cmp	ip, r7
 80063b4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80063b8:	f844 3b04 	str.w	r3, [r4], #4
 80063bc:	d8e6      	bhi.n	800638c <__multiply+0x94>
 80063be:	6070      	str	r0, [r6, #4]
 80063c0:	6815      	ldr	r5, [r2, #0]
 80063c2:	0c2d      	lsrs	r5, r5, #16
 80063c4:	d0d3      	beq.n	800636e <__multiply+0x76>
 80063c6:	f8d9 3000 	ldr.w	r3, [r9]
 80063ca:	4676      	mov	r6, lr
 80063cc:	4618      	mov	r0, r3
 80063ce:	46cb      	mov	fp, r9
 80063d0:	2100      	movs	r1, #0
 80063d2:	e000      	b.n	80063d6 <__multiply+0xde>
 80063d4:	46a3      	mov	fp, r4
 80063d6:	8834      	ldrh	r4, [r6, #0]
 80063d8:	0c00      	lsrs	r0, r0, #16
 80063da:	fb05 0004 	mla	r0, r5, r4, r0
 80063de:	4401      	add	r1, r0
 80063e0:	b29b      	uxth	r3, r3
 80063e2:	465c      	mov	r4, fp
 80063e4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80063e8:	f844 3b04 	str.w	r3, [r4], #4
 80063ec:	f856 3b04 	ldr.w	r3, [r6], #4
 80063f0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80063f4:	0c1b      	lsrs	r3, r3, #16
 80063f6:	b287      	uxth	r7, r0
 80063f8:	fb05 7303 	mla	r3, r5, r3, r7
 80063fc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006400:	45b4      	cmp	ip, r6
 8006402:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006406:	d8e5      	bhi.n	80063d4 <__multiply+0xdc>
 8006408:	4592      	cmp	sl, r2
 800640a:	f8cb 3004 	str.w	r3, [fp, #4]
 800640e:	f109 0904 	add.w	r9, r9, #4
 8006412:	d1b0      	bne.n	8006376 <__multiply+0x7e>
 8006414:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006418:	f1b8 0f00 	cmp.w	r8, #0
 800641c:	dd0b      	ble.n	8006436 <__multiply+0x13e>
 800641e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006422:	f1ae 0e04 	sub.w	lr, lr, #4
 8006426:	b11b      	cbz	r3, 8006430 <__multiply+0x138>
 8006428:	e005      	b.n	8006436 <__multiply+0x13e>
 800642a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800642e:	b913      	cbnz	r3, 8006436 <__multiply+0x13e>
 8006430:	f1b8 0801 	subs.w	r8, r8, #1
 8006434:	d1f9      	bne.n	800642a <__multiply+0x132>
 8006436:	9800      	ldr	r0, [sp, #0]
 8006438:	f8c0 8010 	str.w	r8, [r0, #16]
 800643c:	b003      	add	sp, #12
 800643e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006442:	bf00      	nop

08006444 <__pow5mult>:
 8006444:	f012 0303 	ands.w	r3, r2, #3
 8006448:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800644c:	4614      	mov	r4, r2
 800644e:	4607      	mov	r7, r0
 8006450:	d12e      	bne.n	80064b0 <__pow5mult+0x6c>
 8006452:	460d      	mov	r5, r1
 8006454:	10a4      	asrs	r4, r4, #2
 8006456:	d01c      	beq.n	8006492 <__pow5mult+0x4e>
 8006458:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800645a:	b396      	cbz	r6, 80064c2 <__pow5mult+0x7e>
 800645c:	07e3      	lsls	r3, r4, #31
 800645e:	f04f 0800 	mov.w	r8, #0
 8006462:	d406      	bmi.n	8006472 <__pow5mult+0x2e>
 8006464:	1064      	asrs	r4, r4, #1
 8006466:	d014      	beq.n	8006492 <__pow5mult+0x4e>
 8006468:	6830      	ldr	r0, [r6, #0]
 800646a:	b1a8      	cbz	r0, 8006498 <__pow5mult+0x54>
 800646c:	4606      	mov	r6, r0
 800646e:	07e3      	lsls	r3, r4, #31
 8006470:	d5f8      	bpl.n	8006464 <__pow5mult+0x20>
 8006472:	4632      	mov	r2, r6
 8006474:	4629      	mov	r1, r5
 8006476:	4638      	mov	r0, r7
 8006478:	f7ff ff3e 	bl	80062f8 <__multiply>
 800647c:	b1b5      	cbz	r5, 80064ac <__pow5mult+0x68>
 800647e:	686a      	ldr	r2, [r5, #4]
 8006480:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006482:	1064      	asrs	r4, r4, #1
 8006484:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006488:	6029      	str	r1, [r5, #0]
 800648a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800648e:	4605      	mov	r5, r0
 8006490:	d1ea      	bne.n	8006468 <__pow5mult+0x24>
 8006492:	4628      	mov	r0, r5
 8006494:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006498:	4632      	mov	r2, r6
 800649a:	4631      	mov	r1, r6
 800649c:	4638      	mov	r0, r7
 800649e:	f7ff ff2b 	bl	80062f8 <__multiply>
 80064a2:	6030      	str	r0, [r6, #0]
 80064a4:	f8c0 8000 	str.w	r8, [r0]
 80064a8:	4606      	mov	r6, r0
 80064aa:	e7e0      	b.n	800646e <__pow5mult+0x2a>
 80064ac:	4605      	mov	r5, r0
 80064ae:	e7d9      	b.n	8006464 <__pow5mult+0x20>
 80064b0:	3b01      	subs	r3, #1
 80064b2:	4a0b      	ldr	r2, [pc, #44]	; (80064e0 <__pow5mult+0x9c>)
 80064b4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80064b8:	2300      	movs	r3, #0
 80064ba:	f7ff fe83 	bl	80061c4 <__multadd>
 80064be:	4605      	mov	r5, r0
 80064c0:	e7c8      	b.n	8006454 <__pow5mult+0x10>
 80064c2:	2101      	movs	r1, #1
 80064c4:	4638      	mov	r0, r7
 80064c6:	f7ff fe4d 	bl	8006164 <_Balloc>
 80064ca:	f240 2371 	movw	r3, #625	; 0x271
 80064ce:	6143      	str	r3, [r0, #20]
 80064d0:	2201      	movs	r2, #1
 80064d2:	2300      	movs	r3, #0
 80064d4:	6102      	str	r2, [r0, #16]
 80064d6:	4606      	mov	r6, r0
 80064d8:	64b8      	str	r0, [r7, #72]	; 0x48
 80064da:	6003      	str	r3, [r0, #0]
 80064dc:	e7be      	b.n	800645c <__pow5mult+0x18>
 80064de:	bf00      	nop
 80064e0:	080074c8 	.word	0x080074c8

080064e4 <__lshift>:
 80064e4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80064e8:	4691      	mov	r9, r2
 80064ea:	690a      	ldr	r2, [r1, #16]
 80064ec:	460e      	mov	r6, r1
 80064ee:	ea4f 1469 	mov.w	r4, r9, asr #5
 80064f2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80064f6:	eb04 0802 	add.w	r8, r4, r2
 80064fa:	f108 0501 	add.w	r5, r8, #1
 80064fe:	429d      	cmp	r5, r3
 8006500:	4607      	mov	r7, r0
 8006502:	dd04      	ble.n	800650e <__lshift+0x2a>
 8006504:	005b      	lsls	r3, r3, #1
 8006506:	429d      	cmp	r5, r3
 8006508:	f101 0101 	add.w	r1, r1, #1
 800650c:	dcfa      	bgt.n	8006504 <__lshift+0x20>
 800650e:	4638      	mov	r0, r7
 8006510:	f7ff fe28 	bl	8006164 <_Balloc>
 8006514:	2c00      	cmp	r4, #0
 8006516:	f100 0314 	add.w	r3, r0, #20
 800651a:	dd37      	ble.n	800658c <__lshift+0xa8>
 800651c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006520:	2200      	movs	r2, #0
 8006522:	f843 2b04 	str.w	r2, [r3], #4
 8006526:	428b      	cmp	r3, r1
 8006528:	d1fb      	bne.n	8006522 <__lshift+0x3e>
 800652a:	6934      	ldr	r4, [r6, #16]
 800652c:	f106 0314 	add.w	r3, r6, #20
 8006530:	f019 091f 	ands.w	r9, r9, #31
 8006534:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006538:	d020      	beq.n	800657c <__lshift+0x98>
 800653a:	f1c9 0e20 	rsb	lr, r9, #32
 800653e:	2200      	movs	r2, #0
 8006540:	e000      	b.n	8006544 <__lshift+0x60>
 8006542:	4651      	mov	r1, sl
 8006544:	681c      	ldr	r4, [r3, #0]
 8006546:	468a      	mov	sl, r1
 8006548:	fa04 f409 	lsl.w	r4, r4, r9
 800654c:	4314      	orrs	r4, r2
 800654e:	f84a 4b04 	str.w	r4, [sl], #4
 8006552:	f853 2b04 	ldr.w	r2, [r3], #4
 8006556:	4563      	cmp	r3, ip
 8006558:	fa22 f20e 	lsr.w	r2, r2, lr
 800655c:	d3f1      	bcc.n	8006542 <__lshift+0x5e>
 800655e:	604a      	str	r2, [r1, #4]
 8006560:	b10a      	cbz	r2, 8006566 <__lshift+0x82>
 8006562:	f108 0502 	add.w	r5, r8, #2
 8006566:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006568:	6872      	ldr	r2, [r6, #4]
 800656a:	3d01      	subs	r5, #1
 800656c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006570:	6105      	str	r5, [r0, #16]
 8006572:	6031      	str	r1, [r6, #0]
 8006574:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006578:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800657c:	3904      	subs	r1, #4
 800657e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006582:	f841 2f04 	str.w	r2, [r1, #4]!
 8006586:	459c      	cmp	ip, r3
 8006588:	d8f9      	bhi.n	800657e <__lshift+0x9a>
 800658a:	e7ec      	b.n	8006566 <__lshift+0x82>
 800658c:	4619      	mov	r1, r3
 800658e:	e7cc      	b.n	800652a <__lshift+0x46>

08006590 <__mcmp>:
 8006590:	b430      	push	{r4, r5}
 8006592:	690b      	ldr	r3, [r1, #16]
 8006594:	4605      	mov	r5, r0
 8006596:	6900      	ldr	r0, [r0, #16]
 8006598:	1ac0      	subs	r0, r0, r3
 800659a:	d10f      	bne.n	80065bc <__mcmp+0x2c>
 800659c:	009b      	lsls	r3, r3, #2
 800659e:	3514      	adds	r5, #20
 80065a0:	3114      	adds	r1, #20
 80065a2:	4419      	add	r1, r3
 80065a4:	442b      	add	r3, r5
 80065a6:	e001      	b.n	80065ac <__mcmp+0x1c>
 80065a8:	429d      	cmp	r5, r3
 80065aa:	d207      	bcs.n	80065bc <__mcmp+0x2c>
 80065ac:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80065b0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80065b4:	4294      	cmp	r4, r2
 80065b6:	d0f7      	beq.n	80065a8 <__mcmp+0x18>
 80065b8:	d302      	bcc.n	80065c0 <__mcmp+0x30>
 80065ba:	2001      	movs	r0, #1
 80065bc:	bc30      	pop	{r4, r5}
 80065be:	4770      	bx	lr
 80065c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80065c4:	e7fa      	b.n	80065bc <__mcmp+0x2c>
 80065c6:	bf00      	nop

080065c8 <__mdiff>:
 80065c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80065cc:	6913      	ldr	r3, [r2, #16]
 80065ce:	690d      	ldr	r5, [r1, #16]
 80065d0:	1aed      	subs	r5, r5, r3
 80065d2:	2d00      	cmp	r5, #0
 80065d4:	460e      	mov	r6, r1
 80065d6:	4690      	mov	r8, r2
 80065d8:	f101 0414 	add.w	r4, r1, #20
 80065dc:	f102 0714 	add.w	r7, r2, #20
 80065e0:	d114      	bne.n	800660c <__mdiff+0x44>
 80065e2:	009b      	lsls	r3, r3, #2
 80065e4:	18e2      	adds	r2, r4, r3
 80065e6:	443b      	add	r3, r7
 80065e8:	e001      	b.n	80065ee <__mdiff+0x26>
 80065ea:	42a2      	cmp	r2, r4
 80065ec:	d959      	bls.n	80066a2 <__mdiff+0xda>
 80065ee:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80065f2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80065f6:	458c      	cmp	ip, r1
 80065f8:	d0f7      	beq.n	80065ea <__mdiff+0x22>
 80065fa:	d209      	bcs.n	8006610 <__mdiff+0x48>
 80065fc:	4622      	mov	r2, r4
 80065fe:	4633      	mov	r3, r6
 8006600:	463c      	mov	r4, r7
 8006602:	4646      	mov	r6, r8
 8006604:	4617      	mov	r7, r2
 8006606:	4698      	mov	r8, r3
 8006608:	2501      	movs	r5, #1
 800660a:	e001      	b.n	8006610 <__mdiff+0x48>
 800660c:	dbf6      	blt.n	80065fc <__mdiff+0x34>
 800660e:	2500      	movs	r5, #0
 8006610:	6871      	ldr	r1, [r6, #4]
 8006612:	f7ff fda7 	bl	8006164 <_Balloc>
 8006616:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800661a:	6936      	ldr	r6, [r6, #16]
 800661c:	60c5      	str	r5, [r0, #12]
 800661e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006622:	46bc      	mov	ip, r7
 8006624:	f100 0514 	add.w	r5, r0, #20
 8006628:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800662c:	2300      	movs	r3, #0
 800662e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006632:	f854 8b04 	ldr.w	r8, [r4], #4
 8006636:	b28a      	uxth	r2, r1
 8006638:	fa13 f388 	uxtah	r3, r3, r8
 800663c:	0c09      	lsrs	r1, r1, #16
 800663e:	1a9a      	subs	r2, r3, r2
 8006640:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006644:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006648:	b292      	uxth	r2, r2
 800664a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800664e:	45e6      	cmp	lr, ip
 8006650:	f845 2b04 	str.w	r2, [r5], #4
 8006654:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006658:	d8e9      	bhi.n	800662e <__mdiff+0x66>
 800665a:	42a7      	cmp	r7, r4
 800665c:	d917      	bls.n	800668e <__mdiff+0xc6>
 800665e:	46ae      	mov	lr, r5
 8006660:	46a4      	mov	ip, r4
 8006662:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006666:	fa13 f382 	uxtah	r3, r3, r2
 800666a:	1419      	asrs	r1, r3, #16
 800666c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006670:	b29b      	uxth	r3, r3
 8006672:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006676:	4567      	cmp	r7, ip
 8006678:	f84e 2b04 	str.w	r2, [lr], #4
 800667c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006680:	d8ef      	bhi.n	8006662 <__mdiff+0x9a>
 8006682:	43e4      	mvns	r4, r4
 8006684:	4427      	add	r7, r4
 8006686:	f027 0703 	bic.w	r7, r7, #3
 800668a:	3704      	adds	r7, #4
 800668c:	443d      	add	r5, r7
 800668e:	3d04      	subs	r5, #4
 8006690:	b922      	cbnz	r2, 800669c <__mdiff+0xd4>
 8006692:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006696:	3e01      	subs	r6, #1
 8006698:	2b00      	cmp	r3, #0
 800669a:	d0fa      	beq.n	8006692 <__mdiff+0xca>
 800669c:	6106      	str	r6, [r0, #16]
 800669e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80066a2:	2100      	movs	r1, #0
 80066a4:	f7ff fd5e 	bl	8006164 <_Balloc>
 80066a8:	2201      	movs	r2, #1
 80066aa:	2300      	movs	r3, #0
 80066ac:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80066b0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080066b4 <__d2b>:
 80066b4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80066b8:	460f      	mov	r7, r1
 80066ba:	b083      	sub	sp, #12
 80066bc:	2101      	movs	r1, #1
 80066be:	ec55 4b10 	vmov	r4, r5, d0
 80066c2:	4616      	mov	r6, r2
 80066c4:	f7ff fd4e 	bl	8006164 <_Balloc>
 80066c8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80066cc:	4681      	mov	r9, r0
 80066ce:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80066d2:	f1b8 0f00 	cmp.w	r8, #0
 80066d6:	d001      	beq.n	80066dc <__d2b+0x28>
 80066d8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80066dc:	2c00      	cmp	r4, #0
 80066de:	9301      	str	r3, [sp, #4]
 80066e0:	d024      	beq.n	800672c <__d2b+0x78>
 80066e2:	a802      	add	r0, sp, #8
 80066e4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80066e8:	f7ff fdcc 	bl	8006284 <__lo0bits>
 80066ec:	2800      	cmp	r0, #0
 80066ee:	d136      	bne.n	800675e <__d2b+0xaa>
 80066f0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80066f4:	f8c9 2014 	str.w	r2, [r9, #20]
 80066f8:	2b00      	cmp	r3, #0
 80066fa:	bf0c      	ite	eq
 80066fc:	2101      	moveq	r1, #1
 80066fe:	2102      	movne	r1, #2
 8006700:	f8c9 3018 	str.w	r3, [r9, #24]
 8006704:	f8c9 1010 	str.w	r1, [r9, #16]
 8006708:	f1b8 0f00 	cmp.w	r8, #0
 800670c:	d11b      	bne.n	8006746 <__d2b+0x92>
 800670e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006712:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006716:	6038      	str	r0, [r7, #0]
 8006718:	6918      	ldr	r0, [r3, #16]
 800671a:	f7ff fd93 	bl	8006244 <__hi0bits>
 800671e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006722:	6030      	str	r0, [r6, #0]
 8006724:	4648      	mov	r0, r9
 8006726:	b003      	add	sp, #12
 8006728:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800672c:	a801      	add	r0, sp, #4
 800672e:	f7ff fda9 	bl	8006284 <__lo0bits>
 8006732:	9b01      	ldr	r3, [sp, #4]
 8006734:	f8c9 3014 	str.w	r3, [r9, #20]
 8006738:	2101      	movs	r1, #1
 800673a:	3020      	adds	r0, #32
 800673c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006740:	f1b8 0f00 	cmp.w	r8, #0
 8006744:	d0e3      	beq.n	800670e <__d2b+0x5a>
 8006746:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800674a:	eb08 0300 	add.w	r3, r8, r0
 800674e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006752:	603b      	str	r3, [r7, #0]
 8006754:	6030      	str	r0, [r6, #0]
 8006756:	4648      	mov	r0, r9
 8006758:	b003      	add	sp, #12
 800675a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800675e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006762:	f1c0 0220 	rsb	r2, r0, #32
 8006766:	fa03 f202 	lsl.w	r2, r3, r2
 800676a:	430a      	orrs	r2, r1
 800676c:	40c3      	lsrs	r3, r0
 800676e:	9301      	str	r3, [sp, #4]
 8006770:	f8c9 2014 	str.w	r2, [r9, #20]
 8006774:	e7c0      	b.n	80066f8 <__d2b+0x44>
 8006776:	bf00      	nop

08006778 <_realloc_r>:
 8006778:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800677c:	4692      	mov	sl, r2
 800677e:	b083      	sub	sp, #12
 8006780:	2900      	cmp	r1, #0
 8006782:	f000 80a1 	beq.w	80068c8 <_realloc_r+0x150>
 8006786:	460d      	mov	r5, r1
 8006788:	4680      	mov	r8, r0
 800678a:	f10a 040b 	add.w	r4, sl, #11
 800678e:	f7ff fcdd 	bl	800614c <__malloc_lock>
 8006792:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006796:	2c16      	cmp	r4, #22
 8006798:	f022 0603 	bic.w	r6, r2, #3
 800679c:	f1a5 0708 	sub.w	r7, r5, #8
 80067a0:	d83e      	bhi.n	8006820 <_realloc_r+0xa8>
 80067a2:	2410      	movs	r4, #16
 80067a4:	4621      	mov	r1, r4
 80067a6:	45a2      	cmp	sl, r4
 80067a8:	d83f      	bhi.n	800682a <_realloc_r+0xb2>
 80067aa:	428e      	cmp	r6, r1
 80067ac:	eb07 0906 	add.w	r9, r7, r6
 80067b0:	da74      	bge.n	800689c <_realloc_r+0x124>
 80067b2:	4bc7      	ldr	r3, [pc, #796]	; (8006ad0 <_realloc_r+0x358>)
 80067b4:	6898      	ldr	r0, [r3, #8]
 80067b6:	4548      	cmp	r0, r9
 80067b8:	f000 80aa 	beq.w	8006910 <_realloc_r+0x198>
 80067bc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80067c0:	f020 0301 	bic.w	r3, r0, #1
 80067c4:	444b      	add	r3, r9
 80067c6:	685b      	ldr	r3, [r3, #4]
 80067c8:	07db      	lsls	r3, r3, #31
 80067ca:	f140 8083 	bpl.w	80068d4 <_realloc_r+0x15c>
 80067ce:	07d2      	lsls	r2, r2, #31
 80067d0:	d534      	bpl.n	800683c <_realloc_r+0xc4>
 80067d2:	4651      	mov	r1, sl
 80067d4:	4640      	mov	r0, r8
 80067d6:	f7ff f9b1 	bl	8005b3c <_malloc_r>
 80067da:	4682      	mov	sl, r0
 80067dc:	b1e0      	cbz	r0, 8006818 <_realloc_r+0xa0>
 80067de:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80067e2:	f023 0301 	bic.w	r3, r3, #1
 80067e6:	443b      	add	r3, r7
 80067e8:	f1a0 0208 	sub.w	r2, r0, #8
 80067ec:	4293      	cmp	r3, r2
 80067ee:	f000 80f9 	beq.w	80069e4 <_realloc_r+0x26c>
 80067f2:	1f32      	subs	r2, r6, #4
 80067f4:	2a24      	cmp	r2, #36	; 0x24
 80067f6:	f200 8107 	bhi.w	8006a08 <_realloc_r+0x290>
 80067fa:	2a13      	cmp	r2, #19
 80067fc:	6829      	ldr	r1, [r5, #0]
 80067fe:	f200 80e6 	bhi.w	80069ce <_realloc_r+0x256>
 8006802:	4603      	mov	r3, r0
 8006804:	462a      	mov	r2, r5
 8006806:	6019      	str	r1, [r3, #0]
 8006808:	6851      	ldr	r1, [r2, #4]
 800680a:	6059      	str	r1, [r3, #4]
 800680c:	6892      	ldr	r2, [r2, #8]
 800680e:	609a      	str	r2, [r3, #8]
 8006810:	4629      	mov	r1, r5
 8006812:	4640      	mov	r0, r8
 8006814:	f7fe fe68 	bl	80054e8 <_free_r>
 8006818:	4640      	mov	r0, r8
 800681a:	f7ff fc9d 	bl	8006158 <__malloc_unlock>
 800681e:	e04f      	b.n	80068c0 <_realloc_r+0x148>
 8006820:	f024 0407 	bic.w	r4, r4, #7
 8006824:	2c00      	cmp	r4, #0
 8006826:	4621      	mov	r1, r4
 8006828:	dabd      	bge.n	80067a6 <_realloc_r+0x2e>
 800682a:	f04f 0a00 	mov.w	sl, #0
 800682e:	230c      	movs	r3, #12
 8006830:	4650      	mov	r0, sl
 8006832:	f8c8 3000 	str.w	r3, [r8]
 8006836:	b003      	add	sp, #12
 8006838:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800683c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006840:	eba7 0b03 	sub.w	fp, r7, r3
 8006844:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006848:	f022 0203 	bic.w	r2, r2, #3
 800684c:	18b3      	adds	r3, r6, r2
 800684e:	428b      	cmp	r3, r1
 8006850:	dbbf      	blt.n	80067d2 <_realloc_r+0x5a>
 8006852:	46da      	mov	sl, fp
 8006854:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006858:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800685c:	1f32      	subs	r2, r6, #4
 800685e:	2a24      	cmp	r2, #36	; 0x24
 8006860:	60c1      	str	r1, [r0, #12]
 8006862:	eb0b 0903 	add.w	r9, fp, r3
 8006866:	6088      	str	r0, [r1, #8]
 8006868:	f200 80c6 	bhi.w	80069f8 <_realloc_r+0x280>
 800686c:	2a13      	cmp	r2, #19
 800686e:	6829      	ldr	r1, [r5, #0]
 8006870:	f240 80c0 	bls.w	80069f4 <_realloc_r+0x27c>
 8006874:	f8cb 1008 	str.w	r1, [fp, #8]
 8006878:	6869      	ldr	r1, [r5, #4]
 800687a:	f8cb 100c 	str.w	r1, [fp, #12]
 800687e:	2a1b      	cmp	r2, #27
 8006880:	68a9      	ldr	r1, [r5, #8]
 8006882:	f200 80d8 	bhi.w	8006a36 <_realloc_r+0x2be>
 8006886:	f10b 0210 	add.w	r2, fp, #16
 800688a:	3508      	adds	r5, #8
 800688c:	6011      	str	r1, [r2, #0]
 800688e:	6869      	ldr	r1, [r5, #4]
 8006890:	6051      	str	r1, [r2, #4]
 8006892:	68a9      	ldr	r1, [r5, #8]
 8006894:	6091      	str	r1, [r2, #8]
 8006896:	461e      	mov	r6, r3
 8006898:	465f      	mov	r7, fp
 800689a:	4655      	mov	r5, sl
 800689c:	687b      	ldr	r3, [r7, #4]
 800689e:	1b32      	subs	r2, r6, r4
 80068a0:	2a0f      	cmp	r2, #15
 80068a2:	f003 0301 	and.w	r3, r3, #1
 80068a6:	d822      	bhi.n	80068ee <_realloc_r+0x176>
 80068a8:	4333      	orrs	r3, r6
 80068aa:	607b      	str	r3, [r7, #4]
 80068ac:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80068b0:	f043 0301 	orr.w	r3, r3, #1
 80068b4:	f8c9 3004 	str.w	r3, [r9, #4]
 80068b8:	4640      	mov	r0, r8
 80068ba:	f7ff fc4d 	bl	8006158 <__malloc_unlock>
 80068be:	46aa      	mov	sl, r5
 80068c0:	4650      	mov	r0, sl
 80068c2:	b003      	add	sp, #12
 80068c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068c8:	4611      	mov	r1, r2
 80068ca:	b003      	add	sp, #12
 80068cc:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80068d0:	f7ff b934 	b.w	8005b3c <_malloc_r>
 80068d4:	f020 0003 	bic.w	r0, r0, #3
 80068d8:	1833      	adds	r3, r6, r0
 80068da:	428b      	cmp	r3, r1
 80068dc:	db61      	blt.n	80069a2 <_realloc_r+0x22a>
 80068de:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80068e2:	461e      	mov	r6, r3
 80068e4:	60ca      	str	r2, [r1, #12]
 80068e6:	eb07 0903 	add.w	r9, r7, r3
 80068ea:	6091      	str	r1, [r2, #8]
 80068ec:	e7d6      	b.n	800689c <_realloc_r+0x124>
 80068ee:	1939      	adds	r1, r7, r4
 80068f0:	4323      	orrs	r3, r4
 80068f2:	f042 0201 	orr.w	r2, r2, #1
 80068f6:	607b      	str	r3, [r7, #4]
 80068f8:	604a      	str	r2, [r1, #4]
 80068fa:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80068fe:	f043 0301 	orr.w	r3, r3, #1
 8006902:	3108      	adds	r1, #8
 8006904:	f8c9 3004 	str.w	r3, [r9, #4]
 8006908:	4640      	mov	r0, r8
 800690a:	f7fe fded 	bl	80054e8 <_free_r>
 800690e:	e7d3      	b.n	80068b8 <_realloc_r+0x140>
 8006910:	6840      	ldr	r0, [r0, #4]
 8006912:	f020 0903 	bic.w	r9, r0, #3
 8006916:	44b1      	add	r9, r6
 8006918:	f104 0010 	add.w	r0, r4, #16
 800691c:	4581      	cmp	r9, r0
 800691e:	da77      	bge.n	8006a10 <_realloc_r+0x298>
 8006920:	07d2      	lsls	r2, r2, #31
 8006922:	f53f af56 	bmi.w	80067d2 <_realloc_r+0x5a>
 8006926:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800692a:	eba7 0b02 	sub.w	fp, r7, r2
 800692e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006932:	f022 0203 	bic.w	r2, r2, #3
 8006936:	4491      	add	r9, r2
 8006938:	4548      	cmp	r0, r9
 800693a:	dc87      	bgt.n	800684c <_realloc_r+0xd4>
 800693c:	46da      	mov	sl, fp
 800693e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006942:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006946:	1f32      	subs	r2, r6, #4
 8006948:	2a24      	cmp	r2, #36	; 0x24
 800694a:	60c1      	str	r1, [r0, #12]
 800694c:	6088      	str	r0, [r1, #8]
 800694e:	f200 80a1 	bhi.w	8006a94 <_realloc_r+0x31c>
 8006952:	2a13      	cmp	r2, #19
 8006954:	6829      	ldr	r1, [r5, #0]
 8006956:	f240 809b 	bls.w	8006a90 <_realloc_r+0x318>
 800695a:	f8cb 1008 	str.w	r1, [fp, #8]
 800695e:	6869      	ldr	r1, [r5, #4]
 8006960:	f8cb 100c 	str.w	r1, [fp, #12]
 8006964:	2a1b      	cmp	r2, #27
 8006966:	68a9      	ldr	r1, [r5, #8]
 8006968:	f200 809b 	bhi.w	8006aa2 <_realloc_r+0x32a>
 800696c:	f10b 0210 	add.w	r2, fp, #16
 8006970:	3508      	adds	r5, #8
 8006972:	6011      	str	r1, [r2, #0]
 8006974:	6869      	ldr	r1, [r5, #4]
 8006976:	6051      	str	r1, [r2, #4]
 8006978:	68a9      	ldr	r1, [r5, #8]
 800697a:	6091      	str	r1, [r2, #8]
 800697c:	eb0b 0104 	add.w	r1, fp, r4
 8006980:	eba9 0204 	sub.w	r2, r9, r4
 8006984:	f042 0201 	orr.w	r2, r2, #1
 8006988:	6099      	str	r1, [r3, #8]
 800698a:	604a      	str	r2, [r1, #4]
 800698c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006990:	f003 0301 	and.w	r3, r3, #1
 8006994:	431c      	orrs	r4, r3
 8006996:	4640      	mov	r0, r8
 8006998:	f8cb 4004 	str.w	r4, [fp, #4]
 800699c:	f7ff fbdc 	bl	8006158 <__malloc_unlock>
 80069a0:	e78e      	b.n	80068c0 <_realloc_r+0x148>
 80069a2:	07d3      	lsls	r3, r2, #31
 80069a4:	f53f af15 	bmi.w	80067d2 <_realloc_r+0x5a>
 80069a8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80069ac:	eba7 0b03 	sub.w	fp, r7, r3
 80069b0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80069b4:	f022 0203 	bic.w	r2, r2, #3
 80069b8:	4410      	add	r0, r2
 80069ba:	1983      	adds	r3, r0, r6
 80069bc:	428b      	cmp	r3, r1
 80069be:	f6ff af45 	blt.w	800684c <_realloc_r+0xd4>
 80069c2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80069c6:	46da      	mov	sl, fp
 80069c8:	60ca      	str	r2, [r1, #12]
 80069ca:	6091      	str	r1, [r2, #8]
 80069cc:	e742      	b.n	8006854 <_realloc_r+0xdc>
 80069ce:	6001      	str	r1, [r0, #0]
 80069d0:	686b      	ldr	r3, [r5, #4]
 80069d2:	6043      	str	r3, [r0, #4]
 80069d4:	2a1b      	cmp	r2, #27
 80069d6:	d83a      	bhi.n	8006a4e <_realloc_r+0x2d6>
 80069d8:	f105 0208 	add.w	r2, r5, #8
 80069dc:	f100 0308 	add.w	r3, r0, #8
 80069e0:	68a9      	ldr	r1, [r5, #8]
 80069e2:	e710      	b.n	8006806 <_realloc_r+0x8e>
 80069e4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80069e8:	f023 0303 	bic.w	r3, r3, #3
 80069ec:	441e      	add	r6, r3
 80069ee:	eb07 0906 	add.w	r9, r7, r6
 80069f2:	e753      	b.n	800689c <_realloc_r+0x124>
 80069f4:	4652      	mov	r2, sl
 80069f6:	e749      	b.n	800688c <_realloc_r+0x114>
 80069f8:	4629      	mov	r1, r5
 80069fa:	4650      	mov	r0, sl
 80069fc:	461e      	mov	r6, r3
 80069fe:	465f      	mov	r7, fp
 8006a00:	f7ff fb40 	bl	8006084 <memmove>
 8006a04:	4655      	mov	r5, sl
 8006a06:	e749      	b.n	800689c <_realloc_r+0x124>
 8006a08:	4629      	mov	r1, r5
 8006a0a:	f7ff fb3b 	bl	8006084 <memmove>
 8006a0e:	e6ff      	b.n	8006810 <_realloc_r+0x98>
 8006a10:	4427      	add	r7, r4
 8006a12:	eba9 0904 	sub.w	r9, r9, r4
 8006a16:	f049 0201 	orr.w	r2, r9, #1
 8006a1a:	609f      	str	r7, [r3, #8]
 8006a1c:	607a      	str	r2, [r7, #4]
 8006a1e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006a22:	f003 0301 	and.w	r3, r3, #1
 8006a26:	431c      	orrs	r4, r3
 8006a28:	4640      	mov	r0, r8
 8006a2a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006a2e:	f7ff fb93 	bl	8006158 <__malloc_unlock>
 8006a32:	46aa      	mov	sl, r5
 8006a34:	e744      	b.n	80068c0 <_realloc_r+0x148>
 8006a36:	f8cb 1010 	str.w	r1, [fp, #16]
 8006a3a:	68e9      	ldr	r1, [r5, #12]
 8006a3c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006a40:	2a24      	cmp	r2, #36	; 0x24
 8006a42:	d010      	beq.n	8006a66 <_realloc_r+0x2ee>
 8006a44:	6929      	ldr	r1, [r5, #16]
 8006a46:	f10b 0218 	add.w	r2, fp, #24
 8006a4a:	3510      	adds	r5, #16
 8006a4c:	e71e      	b.n	800688c <_realloc_r+0x114>
 8006a4e:	68ab      	ldr	r3, [r5, #8]
 8006a50:	6083      	str	r3, [r0, #8]
 8006a52:	68eb      	ldr	r3, [r5, #12]
 8006a54:	60c3      	str	r3, [r0, #12]
 8006a56:	2a24      	cmp	r2, #36	; 0x24
 8006a58:	d010      	beq.n	8006a7c <_realloc_r+0x304>
 8006a5a:	f105 0210 	add.w	r2, r5, #16
 8006a5e:	f100 0310 	add.w	r3, r0, #16
 8006a62:	6929      	ldr	r1, [r5, #16]
 8006a64:	e6cf      	b.n	8006806 <_realloc_r+0x8e>
 8006a66:	692a      	ldr	r2, [r5, #16]
 8006a68:	f8cb 2018 	str.w	r2, [fp, #24]
 8006a6c:	696a      	ldr	r2, [r5, #20]
 8006a6e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006a72:	69a9      	ldr	r1, [r5, #24]
 8006a74:	f10b 0220 	add.w	r2, fp, #32
 8006a78:	3518      	adds	r5, #24
 8006a7a:	e707      	b.n	800688c <_realloc_r+0x114>
 8006a7c:	692b      	ldr	r3, [r5, #16]
 8006a7e:	6103      	str	r3, [r0, #16]
 8006a80:	696b      	ldr	r3, [r5, #20]
 8006a82:	6143      	str	r3, [r0, #20]
 8006a84:	69a9      	ldr	r1, [r5, #24]
 8006a86:	f105 0218 	add.w	r2, r5, #24
 8006a8a:	f100 0318 	add.w	r3, r0, #24
 8006a8e:	e6ba      	b.n	8006806 <_realloc_r+0x8e>
 8006a90:	4652      	mov	r2, sl
 8006a92:	e76e      	b.n	8006972 <_realloc_r+0x1fa>
 8006a94:	4629      	mov	r1, r5
 8006a96:	4650      	mov	r0, sl
 8006a98:	9301      	str	r3, [sp, #4]
 8006a9a:	f7ff faf3 	bl	8006084 <memmove>
 8006a9e:	9b01      	ldr	r3, [sp, #4]
 8006aa0:	e76c      	b.n	800697c <_realloc_r+0x204>
 8006aa2:	f8cb 1010 	str.w	r1, [fp, #16]
 8006aa6:	68e9      	ldr	r1, [r5, #12]
 8006aa8:	f8cb 1014 	str.w	r1, [fp, #20]
 8006aac:	2a24      	cmp	r2, #36	; 0x24
 8006aae:	d004      	beq.n	8006aba <_realloc_r+0x342>
 8006ab0:	6929      	ldr	r1, [r5, #16]
 8006ab2:	f10b 0218 	add.w	r2, fp, #24
 8006ab6:	3510      	adds	r5, #16
 8006ab8:	e75b      	b.n	8006972 <_realloc_r+0x1fa>
 8006aba:	692a      	ldr	r2, [r5, #16]
 8006abc:	f8cb 2018 	str.w	r2, [fp, #24]
 8006ac0:	696a      	ldr	r2, [r5, #20]
 8006ac2:	f8cb 201c 	str.w	r2, [fp, #28]
 8006ac6:	69a9      	ldr	r1, [r5, #24]
 8006ac8:	f10b 0220 	add.w	r2, fp, #32
 8006acc:	3518      	adds	r5, #24
 8006ace:	e750      	b.n	8006972 <_realloc_r+0x1fa>
 8006ad0:	2000046c 	.word	0x2000046c

08006ad4 <frexp>:
 8006ad4:	ec53 2b10 	vmov	r2, r3, d0
 8006ad8:	b570      	push	{r4, r5, r6, lr}
 8006ada:	4e16      	ldr	r6, [pc, #88]	; (8006b34 <frexp+0x60>)
 8006adc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006ae0:	2500      	movs	r5, #0
 8006ae2:	42b1      	cmp	r1, r6
 8006ae4:	4604      	mov	r4, r0
 8006ae6:	6005      	str	r5, [r0, #0]
 8006ae8:	dc21      	bgt.n	8006b2e <frexp+0x5a>
 8006aea:	ee10 6a10 	vmov	r6, s0
 8006aee:	430e      	orrs	r6, r1
 8006af0:	d01d      	beq.n	8006b2e <frexp+0x5a>
 8006af2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006af6:	4618      	mov	r0, r3
 8006af8:	da0c      	bge.n	8006b14 <frexp+0x40>
 8006afa:	4619      	mov	r1, r3
 8006afc:	2200      	movs	r2, #0
 8006afe:	ee10 0a10 	vmov	r0, s0
 8006b02:	4b0d      	ldr	r3, [pc, #52]	; (8006b38 <frexp+0x64>)
 8006b04:	f7fa f818 	bl	8000b38 <__aeabi_dmul>
 8006b08:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006b0c:	4602      	mov	r2, r0
 8006b0e:	4608      	mov	r0, r1
 8006b10:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006b14:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006b18:	1509      	asrs	r1, r1, #20
 8006b1a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006b1e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006b22:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006b26:	4429      	add	r1, r5
 8006b28:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006b2c:	6021      	str	r1, [r4, #0]
 8006b2e:	ec43 2b10 	vmov	d0, r2, r3
 8006b32:	bd70      	pop	{r4, r5, r6, pc}
 8006b34:	7fefffff 	.word	0x7fefffff
 8006b38:	43500000 	.word	0x43500000

08006b3c <_sbrk_r>:
 8006b3c:	b538      	push	{r3, r4, r5, lr}
 8006b3e:	4c07      	ldr	r4, [pc, #28]	; (8006b5c <_sbrk_r+0x20>)
 8006b40:	2300      	movs	r3, #0
 8006b42:	4605      	mov	r5, r0
 8006b44:	4608      	mov	r0, r1
 8006b46:	6023      	str	r3, [r4, #0]
 8006b48:	f7fb fc35 	bl	80023b6 <_sbrk>
 8006b4c:	1c43      	adds	r3, r0, #1
 8006b4e:	d000      	beq.n	8006b52 <_sbrk_r+0x16>
 8006b50:	bd38      	pop	{r3, r4, r5, pc}
 8006b52:	6823      	ldr	r3, [r4, #0]
 8006b54:	2b00      	cmp	r3, #0
 8006b56:	d0fb      	beq.n	8006b50 <_sbrk_r+0x14>
 8006b58:	602b      	str	r3, [r5, #0]
 8006b5a:	bd38      	pop	{r3, r4, r5, pc}
 8006b5c:	20000be8 	.word	0x20000be8

08006b60 <__sread>:
 8006b60:	b510      	push	{r4, lr}
 8006b62:	460c      	mov	r4, r1
 8006b64:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b68:	f000 fabc 	bl	80070e4 <_read_r>
 8006b6c:	2800      	cmp	r0, #0
 8006b6e:	db03      	blt.n	8006b78 <__sread+0x18>
 8006b70:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006b72:	4403      	add	r3, r0
 8006b74:	6523      	str	r3, [r4, #80]	; 0x50
 8006b76:	bd10      	pop	{r4, pc}
 8006b78:	89a3      	ldrh	r3, [r4, #12]
 8006b7a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006b7e:	81a3      	strh	r3, [r4, #12]
 8006b80:	bd10      	pop	{r4, pc}
 8006b82:	bf00      	nop

08006b84 <__swrite>:
 8006b84:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006b88:	4616      	mov	r6, r2
 8006b8a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006b8e:	461f      	mov	r7, r3
 8006b90:	05d3      	lsls	r3, r2, #23
 8006b92:	460c      	mov	r4, r1
 8006b94:	4605      	mov	r5, r0
 8006b96:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b9a:	d507      	bpl.n	8006bac <__swrite+0x28>
 8006b9c:	2200      	movs	r2, #0
 8006b9e:	2302      	movs	r3, #2
 8006ba0:	f000 fa74 	bl	800708c <_lseek_r>
 8006ba4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ba8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006bac:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006bb0:	81a2      	strh	r2, [r4, #12]
 8006bb2:	463b      	mov	r3, r7
 8006bb4:	4632      	mov	r2, r6
 8006bb6:	4628      	mov	r0, r5
 8006bb8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006bbc:	f000 b88c 	b.w	8006cd8 <_write_r>

08006bc0 <__sseek>:
 8006bc0:	b510      	push	{r4, lr}
 8006bc2:	460c      	mov	r4, r1
 8006bc4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006bc8:	f000 fa60 	bl	800708c <_lseek_r>
 8006bcc:	89a3      	ldrh	r3, [r4, #12]
 8006bce:	1c42      	adds	r2, r0, #1
 8006bd0:	bf0e      	itee	eq
 8006bd2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006bd6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006bda:	6520      	strne	r0, [r4, #80]	; 0x50
 8006bdc:	81a3      	strh	r3, [r4, #12]
 8006bde:	bd10      	pop	{r4, pc}

08006be0 <__sclose>:
 8006be0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006be4:	f000 b922 	b.w	8006e2c <_close_r>

08006be8 <strncpy>:
 8006be8:	ea40 0301 	orr.w	r3, r0, r1
 8006bec:	079b      	lsls	r3, r3, #30
 8006bee:	b470      	push	{r4, r5, r6}
 8006bf0:	d12a      	bne.n	8006c48 <strncpy+0x60>
 8006bf2:	2a03      	cmp	r2, #3
 8006bf4:	d928      	bls.n	8006c48 <strncpy+0x60>
 8006bf6:	460c      	mov	r4, r1
 8006bf8:	4603      	mov	r3, r0
 8006bfa:	4621      	mov	r1, r4
 8006bfc:	f854 6b04 	ldr.w	r6, [r4], #4
 8006c00:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006c04:	ea25 0506 	bic.w	r5, r5, r6
 8006c08:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006c0c:	d106      	bne.n	8006c1c <strncpy+0x34>
 8006c0e:	3a04      	subs	r2, #4
 8006c10:	2a03      	cmp	r2, #3
 8006c12:	f843 6b04 	str.w	r6, [r3], #4
 8006c16:	4621      	mov	r1, r4
 8006c18:	d8ef      	bhi.n	8006bfa <strncpy+0x12>
 8006c1a:	b19a      	cbz	r2, 8006c44 <strncpy+0x5c>
 8006c1c:	780c      	ldrb	r4, [r1, #0]
 8006c1e:	701c      	strb	r4, [r3, #0]
 8006c20:	3a01      	subs	r2, #1
 8006c22:	3301      	adds	r3, #1
 8006c24:	b13c      	cbz	r4, 8006c36 <strncpy+0x4e>
 8006c26:	b16a      	cbz	r2, 8006c44 <strncpy+0x5c>
 8006c28:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006c2c:	f803 4b01 	strb.w	r4, [r3], #1
 8006c30:	3a01      	subs	r2, #1
 8006c32:	2c00      	cmp	r4, #0
 8006c34:	d1f7      	bne.n	8006c26 <strncpy+0x3e>
 8006c36:	b12a      	cbz	r2, 8006c44 <strncpy+0x5c>
 8006c38:	441a      	add	r2, r3
 8006c3a:	2100      	movs	r1, #0
 8006c3c:	f803 1b01 	strb.w	r1, [r3], #1
 8006c40:	4293      	cmp	r3, r2
 8006c42:	d1fb      	bne.n	8006c3c <strncpy+0x54>
 8006c44:	bc70      	pop	{r4, r5, r6}
 8006c46:	4770      	bx	lr
 8006c48:	4603      	mov	r3, r0
 8006c4a:	e7e6      	b.n	8006c1a <strncpy+0x32>

08006c4c <__sprint_r.part.0>:
 8006c4c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006c50:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006c52:	049c      	lsls	r4, r3, #18
 8006c54:	4692      	mov	sl, r2
 8006c56:	d52d      	bpl.n	8006cb4 <__sprint_r.part.0+0x68>
 8006c58:	6893      	ldr	r3, [r2, #8]
 8006c5a:	6812      	ldr	r2, [r2, #0]
 8006c5c:	b343      	cbz	r3, 8006cb0 <__sprint_r.part.0+0x64>
 8006c5e:	460e      	mov	r6, r1
 8006c60:	4607      	mov	r7, r0
 8006c62:	f102 0908 	add.w	r9, r2, #8
 8006c66:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006c6a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006c6e:	d015      	beq.n	8006c9c <__sprint_r.part.0+0x50>
 8006c70:	3d04      	subs	r5, #4
 8006c72:	2400      	movs	r4, #0
 8006c74:	e001      	b.n	8006c7a <__sprint_r.part.0+0x2e>
 8006c76:	45a0      	cmp	r8, r4
 8006c78:	d00e      	beq.n	8006c98 <__sprint_r.part.0+0x4c>
 8006c7a:	4632      	mov	r2, r6
 8006c7c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006c80:	4638      	mov	r0, r7
 8006c82:	f000 f99d 	bl	8006fc0 <_fputwc_r>
 8006c86:	1c43      	adds	r3, r0, #1
 8006c88:	f104 0401 	add.w	r4, r4, #1
 8006c8c:	d1f3      	bne.n	8006c76 <__sprint_r.part.0+0x2a>
 8006c8e:	2300      	movs	r3, #0
 8006c90:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006c94:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c98:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006c9c:	f02b 0b03 	bic.w	fp, fp, #3
 8006ca0:	eba3 030b 	sub.w	r3, r3, fp
 8006ca4:	f8ca 3008 	str.w	r3, [sl, #8]
 8006ca8:	f109 0908 	add.w	r9, r9, #8
 8006cac:	2b00      	cmp	r3, #0
 8006cae:	d1da      	bne.n	8006c66 <__sprint_r.part.0+0x1a>
 8006cb0:	2000      	movs	r0, #0
 8006cb2:	e7ec      	b.n	8006c8e <__sprint_r.part.0+0x42>
 8006cb4:	f7fe fd0c 	bl	80056d0 <__sfvwrite_r>
 8006cb8:	2300      	movs	r3, #0
 8006cba:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006cbe:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006cc2:	bf00      	nop

08006cc4 <__sprint_r>:
 8006cc4:	6893      	ldr	r3, [r2, #8]
 8006cc6:	b10b      	cbz	r3, 8006ccc <__sprint_r+0x8>
 8006cc8:	f7ff bfc0 	b.w	8006c4c <__sprint_r.part.0>
 8006ccc:	b410      	push	{r4}
 8006cce:	4618      	mov	r0, r3
 8006cd0:	6053      	str	r3, [r2, #4]
 8006cd2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006cd6:	4770      	bx	lr

08006cd8 <_write_r>:
 8006cd8:	b570      	push	{r4, r5, r6, lr}
 8006cda:	460d      	mov	r5, r1
 8006cdc:	4c08      	ldr	r4, [pc, #32]	; (8006d00 <_write_r+0x28>)
 8006cde:	4611      	mov	r1, r2
 8006ce0:	4606      	mov	r6, r0
 8006ce2:	461a      	mov	r2, r3
 8006ce4:	4628      	mov	r0, r5
 8006ce6:	2300      	movs	r3, #0
 8006ce8:	6023      	str	r3, [r4, #0]
 8006cea:	f7fb fb51 	bl	8002390 <_write>
 8006cee:	1c43      	adds	r3, r0, #1
 8006cf0:	d000      	beq.n	8006cf4 <_write_r+0x1c>
 8006cf2:	bd70      	pop	{r4, r5, r6, pc}
 8006cf4:	6823      	ldr	r3, [r4, #0]
 8006cf6:	2b00      	cmp	r3, #0
 8006cf8:	d0fb      	beq.n	8006cf2 <_write_r+0x1a>
 8006cfa:	6033      	str	r3, [r6, #0]
 8006cfc:	bd70      	pop	{r4, r5, r6, pc}
 8006cfe:	bf00      	nop
 8006d00:	20000be8 	.word	0x20000be8

08006d04 <__register_exitproc>:
 8006d04:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006d08:	4d2b      	ldr	r5, [pc, #172]	; (8006db8 <__register_exitproc+0xb4>)
 8006d0a:	4606      	mov	r6, r0
 8006d0c:	6828      	ldr	r0, [r5, #0]
 8006d0e:	4698      	mov	r8, r3
 8006d10:	460f      	mov	r7, r1
 8006d12:	4691      	mov	r9, r2
 8006d14:	f7fe fe96 	bl	8005a44 <__retarget_lock_acquire_recursive>
 8006d18:	4b28      	ldr	r3, [pc, #160]	; (8006dbc <__register_exitproc+0xb8>)
 8006d1a:	681c      	ldr	r4, [r3, #0]
 8006d1c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006d20:	2b00      	cmp	r3, #0
 8006d22:	d03d      	beq.n	8006da0 <__register_exitproc+0x9c>
 8006d24:	685a      	ldr	r2, [r3, #4]
 8006d26:	2a1f      	cmp	r2, #31
 8006d28:	dc0d      	bgt.n	8006d46 <__register_exitproc+0x42>
 8006d2a:	f102 0c01 	add.w	ip, r2, #1
 8006d2e:	bb16      	cbnz	r6, 8006d76 <__register_exitproc+0x72>
 8006d30:	3202      	adds	r2, #2
 8006d32:	f8c3 c004 	str.w	ip, [r3, #4]
 8006d36:	6828      	ldr	r0, [r5, #0]
 8006d38:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006d3c:	f7fe fe84 	bl	8005a48 <__retarget_lock_release_recursive>
 8006d40:	2000      	movs	r0, #0
 8006d42:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006d46:	4b1e      	ldr	r3, [pc, #120]	; (8006dc0 <__register_exitproc+0xbc>)
 8006d48:	b37b      	cbz	r3, 8006daa <__register_exitproc+0xa6>
 8006d4a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006d4e:	f3af 8000 	nop.w
 8006d52:	4603      	mov	r3, r0
 8006d54:	b348      	cbz	r0, 8006daa <__register_exitproc+0xa6>
 8006d56:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006d5a:	2100      	movs	r1, #0
 8006d5c:	e9c0 2100 	strd	r2, r1, [r0]
 8006d60:	f04f 0c01 	mov.w	ip, #1
 8006d64:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006d68:	460a      	mov	r2, r1
 8006d6a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006d6e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006d72:	2e00      	cmp	r6, #0
 8006d74:	d0dc      	beq.n	8006d30 <__register_exitproc+0x2c>
 8006d76:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006d7a:	2401      	movs	r4, #1
 8006d7c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006d80:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006d84:	4094      	lsls	r4, r2
 8006d86:	4320      	orrs	r0, r4
 8006d88:	2e02      	cmp	r6, #2
 8006d8a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006d8e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006d92:	d1cd      	bne.n	8006d30 <__register_exitproc+0x2c>
 8006d94:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006d98:	430c      	orrs	r4, r1
 8006d9a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006d9e:	e7c7      	b.n	8006d30 <__register_exitproc+0x2c>
 8006da0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006da4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006da8:	e7bc      	b.n	8006d24 <__register_exitproc+0x20>
 8006daa:	6828      	ldr	r0, [r5, #0]
 8006dac:	f7fe fe4c 	bl	8005a48 <__retarget_lock_release_recursive>
 8006db0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006db4:	e7c5      	b.n	8006d42 <__register_exitproc+0x3e>
 8006db6:	bf00      	nop
 8006db8:	20000468 	.word	0x20000468
 8006dbc:	0800735c 	.word	0x0800735c
 8006dc0:	00000000 	.word	0x00000000

08006dc4 <_calloc_r>:
 8006dc4:	b510      	push	{r4, lr}
 8006dc6:	fb02 f101 	mul.w	r1, r2, r1
 8006dca:	f7fe feb7 	bl	8005b3c <_malloc_r>
 8006dce:	4604      	mov	r4, r0
 8006dd0:	b1d8      	cbz	r0, 8006e0a <_calloc_r+0x46>
 8006dd2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006dd6:	f022 0203 	bic.w	r2, r2, #3
 8006dda:	3a04      	subs	r2, #4
 8006ddc:	2a24      	cmp	r2, #36	; 0x24
 8006dde:	d81d      	bhi.n	8006e1c <_calloc_r+0x58>
 8006de0:	2a13      	cmp	r2, #19
 8006de2:	d914      	bls.n	8006e0e <_calloc_r+0x4a>
 8006de4:	2300      	movs	r3, #0
 8006de6:	2a1b      	cmp	r2, #27
 8006de8:	e9c0 3300 	strd	r3, r3, [r0]
 8006dec:	d91b      	bls.n	8006e26 <_calloc_r+0x62>
 8006dee:	2a24      	cmp	r2, #36	; 0x24
 8006df0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006df4:	bf0a      	itet	eq
 8006df6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006dfa:	f100 0210 	addne.w	r2, r0, #16
 8006dfe:	f100 0218 	addeq.w	r2, r0, #24
 8006e02:	2300      	movs	r3, #0
 8006e04:	e9c2 3300 	strd	r3, r3, [r2]
 8006e08:	6093      	str	r3, [r2, #8]
 8006e0a:	4620      	mov	r0, r4
 8006e0c:	bd10      	pop	{r4, pc}
 8006e0e:	4602      	mov	r2, r0
 8006e10:	2300      	movs	r3, #0
 8006e12:	e9c2 3300 	strd	r3, r3, [r2]
 8006e16:	6093      	str	r3, [r2, #8]
 8006e18:	4620      	mov	r0, r4
 8006e1a:	bd10      	pop	{r4, pc}
 8006e1c:	2100      	movs	r1, #0
 8006e1e:	f7fb fb6f 	bl	8002500 <memset>
 8006e22:	4620      	mov	r0, r4
 8006e24:	bd10      	pop	{r4, pc}
 8006e26:	f100 0208 	add.w	r2, r0, #8
 8006e2a:	e7f1      	b.n	8006e10 <_calloc_r+0x4c>

08006e2c <_close_r>:
 8006e2c:	b538      	push	{r3, r4, r5, lr}
 8006e2e:	4c07      	ldr	r4, [pc, #28]	; (8006e4c <_close_r+0x20>)
 8006e30:	2300      	movs	r3, #0
 8006e32:	4605      	mov	r5, r0
 8006e34:	4608      	mov	r0, r1
 8006e36:	6023      	str	r3, [r4, #0]
 8006e38:	f7fb fad9 	bl	80023ee <_close>
 8006e3c:	1c43      	adds	r3, r0, #1
 8006e3e:	d000      	beq.n	8006e42 <_close_r+0x16>
 8006e40:	bd38      	pop	{r3, r4, r5, pc}
 8006e42:	6823      	ldr	r3, [r4, #0]
 8006e44:	2b00      	cmp	r3, #0
 8006e46:	d0fb      	beq.n	8006e40 <_close_r+0x14>
 8006e48:	602b      	str	r3, [r5, #0]
 8006e4a:	bd38      	pop	{r3, r4, r5, pc}
 8006e4c:	20000be8 	.word	0x20000be8

08006e50 <_fclose_r>:
 8006e50:	b570      	push	{r4, r5, r6, lr}
 8006e52:	2900      	cmp	r1, #0
 8006e54:	d048      	beq.n	8006ee8 <_fclose_r+0x98>
 8006e56:	4605      	mov	r5, r0
 8006e58:	460c      	mov	r4, r1
 8006e5a:	b110      	cbz	r0, 8006e62 <_fclose_r+0x12>
 8006e5c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006e5e:	2b00      	cmp	r3, #0
 8006e60:	d048      	beq.n	8006ef4 <_fclose_r+0xa4>
 8006e62:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006e64:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e68:	07d0      	lsls	r0, r2, #31
 8006e6a:	d440      	bmi.n	8006eee <_fclose_r+0x9e>
 8006e6c:	0599      	lsls	r1, r3, #22
 8006e6e:	d530      	bpl.n	8006ed2 <_fclose_r+0x82>
 8006e70:	4621      	mov	r1, r4
 8006e72:	4628      	mov	r0, r5
 8006e74:	f7fe f990 	bl	8005198 <__sflush_r>
 8006e78:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006e7a:	4606      	mov	r6, r0
 8006e7c:	b133      	cbz	r3, 8006e8c <_fclose_r+0x3c>
 8006e7e:	69e1      	ldr	r1, [r4, #28]
 8006e80:	4628      	mov	r0, r5
 8006e82:	4798      	blx	r3
 8006e84:	2800      	cmp	r0, #0
 8006e86:	bfb8      	it	lt
 8006e88:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006e8c:	89a3      	ldrh	r3, [r4, #12]
 8006e8e:	061a      	lsls	r2, r3, #24
 8006e90:	d43c      	bmi.n	8006f0c <_fclose_r+0xbc>
 8006e92:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006e94:	b141      	cbz	r1, 8006ea8 <_fclose_r+0x58>
 8006e96:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006e9a:	4299      	cmp	r1, r3
 8006e9c:	d002      	beq.n	8006ea4 <_fclose_r+0x54>
 8006e9e:	4628      	mov	r0, r5
 8006ea0:	f7fe fb22 	bl	80054e8 <_free_r>
 8006ea4:	2300      	movs	r3, #0
 8006ea6:	6323      	str	r3, [r4, #48]	; 0x30
 8006ea8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006eaa:	b121      	cbz	r1, 8006eb6 <_fclose_r+0x66>
 8006eac:	4628      	mov	r0, r5
 8006eae:	f7fe fb1b 	bl	80054e8 <_free_r>
 8006eb2:	2300      	movs	r3, #0
 8006eb4:	6463      	str	r3, [r4, #68]	; 0x44
 8006eb6:	f7fe faa1 	bl	80053fc <__sfp_lock_acquire>
 8006eba:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ebc:	2200      	movs	r2, #0
 8006ebe:	07db      	lsls	r3, r3, #31
 8006ec0:	81a2      	strh	r2, [r4, #12]
 8006ec2:	d51f      	bpl.n	8006f04 <_fclose_r+0xb4>
 8006ec4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ec6:	f7fe fdbb 	bl	8005a40 <__retarget_lock_close_recursive>
 8006eca:	f7fe fa9d 	bl	8005408 <__sfp_lock_release>
 8006ece:	4630      	mov	r0, r6
 8006ed0:	bd70      	pop	{r4, r5, r6, pc}
 8006ed2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ed4:	f7fe fdb6 	bl	8005a44 <__retarget_lock_acquire_recursive>
 8006ed8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006edc:	2b00      	cmp	r3, #0
 8006ede:	d1c7      	bne.n	8006e70 <_fclose_r+0x20>
 8006ee0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006ee2:	f016 0601 	ands.w	r6, r6, #1
 8006ee6:	d016      	beq.n	8006f16 <_fclose_r+0xc6>
 8006ee8:	2600      	movs	r6, #0
 8006eea:	4630      	mov	r0, r6
 8006eec:	bd70      	pop	{r4, r5, r6, pc}
 8006eee:	2b00      	cmp	r3, #0
 8006ef0:	d0fa      	beq.n	8006ee8 <_fclose_r+0x98>
 8006ef2:	e7bd      	b.n	8006e70 <_fclose_r+0x20>
 8006ef4:	f7fe fa56 	bl	80053a4 <__sinit>
 8006ef8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006efa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006efe:	07d0      	lsls	r0, r2, #31
 8006f00:	d4f5      	bmi.n	8006eee <_fclose_r+0x9e>
 8006f02:	e7b3      	b.n	8006e6c <_fclose_r+0x1c>
 8006f04:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f06:	f7fe fd9f 	bl	8005a48 <__retarget_lock_release_recursive>
 8006f0a:	e7db      	b.n	8006ec4 <_fclose_r+0x74>
 8006f0c:	6921      	ldr	r1, [r4, #16]
 8006f0e:	4628      	mov	r0, r5
 8006f10:	f7fe faea 	bl	80054e8 <_free_r>
 8006f14:	e7bd      	b.n	8006e92 <_fclose_r+0x42>
 8006f16:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f18:	f7fe fd96 	bl	8005a48 <__retarget_lock_release_recursive>
 8006f1c:	4630      	mov	r0, r6
 8006f1e:	bd70      	pop	{r4, r5, r6, pc}

08006f20 <__fputwc>:
 8006f20:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006f24:	b082      	sub	sp, #8
 8006f26:	4681      	mov	r9, r0
 8006f28:	4688      	mov	r8, r1
 8006f2a:	4614      	mov	r4, r2
 8006f2c:	f000 f8a0 	bl	8007070 <__locale_mb_cur_max>
 8006f30:	2801      	cmp	r0, #1
 8006f32:	d103      	bne.n	8006f3c <__fputwc+0x1c>
 8006f34:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006f38:	2bfe      	cmp	r3, #254	; 0xfe
 8006f3a:	d933      	bls.n	8006fa4 <__fputwc+0x84>
 8006f3c:	4642      	mov	r2, r8
 8006f3e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006f42:	a901      	add	r1, sp, #4
 8006f44:	4648      	mov	r0, r9
 8006f46:	f000 f93b 	bl	80071c0 <_wcrtomb_r>
 8006f4a:	1c42      	adds	r2, r0, #1
 8006f4c:	4606      	mov	r6, r0
 8006f4e:	d02f      	beq.n	8006fb0 <__fputwc+0x90>
 8006f50:	b320      	cbz	r0, 8006f9c <__fputwc+0x7c>
 8006f52:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006f56:	2500      	movs	r5, #0
 8006f58:	f10d 0a04 	add.w	sl, sp, #4
 8006f5c:	e009      	b.n	8006f72 <__fputwc+0x52>
 8006f5e:	6823      	ldr	r3, [r4, #0]
 8006f60:	1c5a      	adds	r2, r3, #1
 8006f62:	6022      	str	r2, [r4, #0]
 8006f64:	f883 c000 	strb.w	ip, [r3]
 8006f68:	3501      	adds	r5, #1
 8006f6a:	42b5      	cmp	r5, r6
 8006f6c:	d216      	bcs.n	8006f9c <__fputwc+0x7c>
 8006f6e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006f72:	68a3      	ldr	r3, [r4, #8]
 8006f74:	3b01      	subs	r3, #1
 8006f76:	2b00      	cmp	r3, #0
 8006f78:	60a3      	str	r3, [r4, #8]
 8006f7a:	daf0      	bge.n	8006f5e <__fputwc+0x3e>
 8006f7c:	69a7      	ldr	r7, [r4, #24]
 8006f7e:	42bb      	cmp	r3, r7
 8006f80:	4661      	mov	r1, ip
 8006f82:	4622      	mov	r2, r4
 8006f84:	4648      	mov	r0, r9
 8006f86:	db02      	blt.n	8006f8e <__fputwc+0x6e>
 8006f88:	f1bc 0f0a 	cmp.w	ip, #10
 8006f8c:	d1e7      	bne.n	8006f5e <__fputwc+0x3e>
 8006f8e:	f000 f8bf 	bl	8007110 <__swbuf_r>
 8006f92:	1c43      	adds	r3, r0, #1
 8006f94:	d1e8      	bne.n	8006f68 <__fputwc+0x48>
 8006f96:	b002      	add	sp, #8
 8006f98:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f9c:	4640      	mov	r0, r8
 8006f9e:	b002      	add	sp, #8
 8006fa0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006fa4:	fa5f fc88 	uxtb.w	ip, r8
 8006fa8:	4606      	mov	r6, r0
 8006faa:	f88d c004 	strb.w	ip, [sp, #4]
 8006fae:	e7d2      	b.n	8006f56 <__fputwc+0x36>
 8006fb0:	89a3      	ldrh	r3, [r4, #12]
 8006fb2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006fb6:	81a3      	strh	r3, [r4, #12]
 8006fb8:	b002      	add	sp, #8
 8006fba:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006fbe:	bf00      	nop

08006fc0 <_fputwc_r>:
 8006fc0:	b530      	push	{r4, r5, lr}
 8006fc2:	4605      	mov	r5, r0
 8006fc4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006fc6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006fca:	07c0      	lsls	r0, r0, #31
 8006fcc:	4614      	mov	r4, r2
 8006fce:	b083      	sub	sp, #12
 8006fd0:	b29a      	uxth	r2, r3
 8006fd2:	d401      	bmi.n	8006fd8 <_fputwc_r+0x18>
 8006fd4:	0590      	lsls	r0, r2, #22
 8006fd6:	d51c      	bpl.n	8007012 <_fputwc_r+0x52>
 8006fd8:	0490      	lsls	r0, r2, #18
 8006fda:	d406      	bmi.n	8006fea <_fputwc_r+0x2a>
 8006fdc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006fde:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006fe2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006fe6:	81a3      	strh	r3, [r4, #12]
 8006fe8:	6662      	str	r2, [r4, #100]	; 0x64
 8006fea:	4628      	mov	r0, r5
 8006fec:	4622      	mov	r2, r4
 8006fee:	f7ff ff97 	bl	8006f20 <__fputwc>
 8006ff2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ff4:	07da      	lsls	r2, r3, #31
 8006ff6:	4605      	mov	r5, r0
 8006ff8:	d402      	bmi.n	8007000 <_fputwc_r+0x40>
 8006ffa:	89a3      	ldrh	r3, [r4, #12]
 8006ffc:	059b      	lsls	r3, r3, #22
 8006ffe:	d502      	bpl.n	8007006 <_fputwc_r+0x46>
 8007000:	4628      	mov	r0, r5
 8007002:	b003      	add	sp, #12
 8007004:	bd30      	pop	{r4, r5, pc}
 8007006:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007008:	f7fe fd1e 	bl	8005a48 <__retarget_lock_release_recursive>
 800700c:	4628      	mov	r0, r5
 800700e:	b003      	add	sp, #12
 8007010:	bd30      	pop	{r4, r5, pc}
 8007012:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007014:	9101      	str	r1, [sp, #4]
 8007016:	f7fe fd15 	bl	8005a44 <__retarget_lock_acquire_recursive>
 800701a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800701e:	9901      	ldr	r1, [sp, #4]
 8007020:	b29a      	uxth	r2, r3
 8007022:	e7d9      	b.n	8006fd8 <_fputwc_r+0x18>

08007024 <_fstat_r>:
 8007024:	b538      	push	{r3, r4, r5, lr}
 8007026:	460b      	mov	r3, r1
 8007028:	4c07      	ldr	r4, [pc, #28]	; (8007048 <_fstat_r+0x24>)
 800702a:	4605      	mov	r5, r0
 800702c:	4611      	mov	r1, r2
 800702e:	4618      	mov	r0, r3
 8007030:	2300      	movs	r3, #0
 8007032:	6023      	str	r3, [r4, #0]
 8007034:	f7fb f9de 	bl	80023f4 <_fstat>
 8007038:	1c43      	adds	r3, r0, #1
 800703a:	d000      	beq.n	800703e <_fstat_r+0x1a>
 800703c:	bd38      	pop	{r3, r4, r5, pc}
 800703e:	6823      	ldr	r3, [r4, #0]
 8007040:	2b00      	cmp	r3, #0
 8007042:	d0fb      	beq.n	800703c <_fstat_r+0x18>
 8007044:	602b      	str	r3, [r5, #0]
 8007046:	bd38      	pop	{r3, r4, r5, pc}
 8007048:	20000be8 	.word	0x20000be8

0800704c <_isatty_r>:
 800704c:	b538      	push	{r3, r4, r5, lr}
 800704e:	4c07      	ldr	r4, [pc, #28]	; (800706c <_isatty_r+0x20>)
 8007050:	2300      	movs	r3, #0
 8007052:	4605      	mov	r5, r0
 8007054:	4608      	mov	r0, r1
 8007056:	6023      	str	r3, [r4, #0]
 8007058:	f7fb f9d1 	bl	80023fe <_isatty>
 800705c:	1c43      	adds	r3, r0, #1
 800705e:	d000      	beq.n	8007062 <_isatty_r+0x16>
 8007060:	bd38      	pop	{r3, r4, r5, pc}
 8007062:	6823      	ldr	r3, [r4, #0]
 8007064:	2b00      	cmp	r3, #0
 8007066:	d0fb      	beq.n	8007060 <_isatty_r+0x14>
 8007068:	602b      	str	r3, [r5, #0]
 800706a:	bd38      	pop	{r3, r4, r5, pc}
 800706c:	20000be8 	.word	0x20000be8

08007070 <__locale_mb_cur_max>:
 8007070:	4b04      	ldr	r3, [pc, #16]	; (8007084 <__locale_mb_cur_max+0x14>)
 8007072:	4a05      	ldr	r2, [pc, #20]	; (8007088 <__locale_mb_cur_max+0x18>)
 8007074:	681b      	ldr	r3, [r3, #0]
 8007076:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007078:	2b00      	cmp	r3, #0
 800707a:	bf08      	it	eq
 800707c:	4613      	moveq	r3, r2
 800707e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007082:	4770      	bx	lr
 8007084:	2000003c 	.word	0x2000003c
 8007088:	2000087c 	.word	0x2000087c

0800708c <_lseek_r>:
 800708c:	b570      	push	{r4, r5, r6, lr}
 800708e:	460d      	mov	r5, r1
 8007090:	4c08      	ldr	r4, [pc, #32]	; (80070b4 <_lseek_r+0x28>)
 8007092:	4611      	mov	r1, r2
 8007094:	4606      	mov	r6, r0
 8007096:	461a      	mov	r2, r3
 8007098:	4628      	mov	r0, r5
 800709a:	2300      	movs	r3, #0
 800709c:	6023      	str	r3, [r4, #0]
 800709e:	f7fb f9b0 	bl	8002402 <_lseek>
 80070a2:	1c43      	adds	r3, r0, #1
 80070a4:	d000      	beq.n	80070a8 <_lseek_r+0x1c>
 80070a6:	bd70      	pop	{r4, r5, r6, pc}
 80070a8:	6823      	ldr	r3, [r4, #0]
 80070aa:	2b00      	cmp	r3, #0
 80070ac:	d0fb      	beq.n	80070a6 <_lseek_r+0x1a>
 80070ae:	6033      	str	r3, [r6, #0]
 80070b0:	bd70      	pop	{r4, r5, r6, pc}
 80070b2:	bf00      	nop
 80070b4:	20000be8 	.word	0x20000be8

080070b8 <__ascii_mbtowc>:
 80070b8:	b082      	sub	sp, #8
 80070ba:	b149      	cbz	r1, 80070d0 <__ascii_mbtowc+0x18>
 80070bc:	b15a      	cbz	r2, 80070d6 <__ascii_mbtowc+0x1e>
 80070be:	b16b      	cbz	r3, 80070dc <__ascii_mbtowc+0x24>
 80070c0:	7813      	ldrb	r3, [r2, #0]
 80070c2:	600b      	str	r3, [r1, #0]
 80070c4:	7812      	ldrb	r2, [r2, #0]
 80070c6:	1c10      	adds	r0, r2, #0
 80070c8:	bf18      	it	ne
 80070ca:	2001      	movne	r0, #1
 80070cc:	b002      	add	sp, #8
 80070ce:	4770      	bx	lr
 80070d0:	a901      	add	r1, sp, #4
 80070d2:	2a00      	cmp	r2, #0
 80070d4:	d1f3      	bne.n	80070be <__ascii_mbtowc+0x6>
 80070d6:	4610      	mov	r0, r2
 80070d8:	b002      	add	sp, #8
 80070da:	4770      	bx	lr
 80070dc:	f06f 0001 	mvn.w	r0, #1
 80070e0:	e7f4      	b.n	80070cc <__ascii_mbtowc+0x14>
 80070e2:	bf00      	nop

080070e4 <_read_r>:
 80070e4:	b570      	push	{r4, r5, r6, lr}
 80070e6:	460d      	mov	r5, r1
 80070e8:	4c08      	ldr	r4, [pc, #32]	; (800710c <_read_r+0x28>)
 80070ea:	4611      	mov	r1, r2
 80070ec:	4606      	mov	r6, r0
 80070ee:	461a      	mov	r2, r3
 80070f0:	4628      	mov	r0, r5
 80070f2:	2300      	movs	r3, #0
 80070f4:	6023      	str	r3, [r4, #0]
 80070f6:	f7fb f938 	bl	800236a <_read>
 80070fa:	1c43      	adds	r3, r0, #1
 80070fc:	d000      	beq.n	8007100 <_read_r+0x1c>
 80070fe:	bd70      	pop	{r4, r5, r6, pc}
 8007100:	6823      	ldr	r3, [r4, #0]
 8007102:	2b00      	cmp	r3, #0
 8007104:	d0fb      	beq.n	80070fe <_read_r+0x1a>
 8007106:	6033      	str	r3, [r6, #0]
 8007108:	bd70      	pop	{r4, r5, r6, pc}
 800710a:	bf00      	nop
 800710c:	20000be8 	.word	0x20000be8

08007110 <__swbuf_r>:
 8007110:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007112:	460d      	mov	r5, r1
 8007114:	4614      	mov	r4, r2
 8007116:	4606      	mov	r6, r0
 8007118:	b110      	cbz	r0, 8007120 <__swbuf_r+0x10>
 800711a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800711c:	2b00      	cmp	r3, #0
 800711e:	d043      	beq.n	80071a8 <__swbuf_r+0x98>
 8007120:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007124:	69a3      	ldr	r3, [r4, #24]
 8007126:	60a3      	str	r3, [r4, #8]
 8007128:	b291      	uxth	r1, r2
 800712a:	0708      	lsls	r0, r1, #28
 800712c:	d51b      	bpl.n	8007166 <__swbuf_r+0x56>
 800712e:	6923      	ldr	r3, [r4, #16]
 8007130:	b1cb      	cbz	r3, 8007166 <__swbuf_r+0x56>
 8007132:	b2ed      	uxtb	r5, r5
 8007134:	0489      	lsls	r1, r1, #18
 8007136:	462f      	mov	r7, r5
 8007138:	d522      	bpl.n	8007180 <__swbuf_r+0x70>
 800713a:	6822      	ldr	r2, [r4, #0]
 800713c:	6961      	ldr	r1, [r4, #20]
 800713e:	1ad3      	subs	r3, r2, r3
 8007140:	4299      	cmp	r1, r3
 8007142:	dd29      	ble.n	8007198 <__swbuf_r+0x88>
 8007144:	3301      	adds	r3, #1
 8007146:	68a1      	ldr	r1, [r4, #8]
 8007148:	1c50      	adds	r0, r2, #1
 800714a:	3901      	subs	r1, #1
 800714c:	60a1      	str	r1, [r4, #8]
 800714e:	6020      	str	r0, [r4, #0]
 8007150:	7015      	strb	r5, [r2, #0]
 8007152:	6962      	ldr	r2, [r4, #20]
 8007154:	429a      	cmp	r2, r3
 8007156:	d02a      	beq.n	80071ae <__swbuf_r+0x9e>
 8007158:	89a3      	ldrh	r3, [r4, #12]
 800715a:	07db      	lsls	r3, r3, #31
 800715c:	d501      	bpl.n	8007162 <__swbuf_r+0x52>
 800715e:	2d0a      	cmp	r5, #10
 8007160:	d025      	beq.n	80071ae <__swbuf_r+0x9e>
 8007162:	4638      	mov	r0, r7
 8007164:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007166:	4621      	mov	r1, r4
 8007168:	4630      	mov	r0, r6
 800716a:	f7fc fffd 	bl	8004168 <__swsetup_r>
 800716e:	bb20      	cbnz	r0, 80071ba <__swbuf_r+0xaa>
 8007170:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007174:	6923      	ldr	r3, [r4, #16]
 8007176:	b291      	uxth	r1, r2
 8007178:	b2ed      	uxtb	r5, r5
 800717a:	0489      	lsls	r1, r1, #18
 800717c:	462f      	mov	r7, r5
 800717e:	d4dc      	bmi.n	800713a <__swbuf_r+0x2a>
 8007180:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007182:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007186:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800718a:	81a2      	strh	r2, [r4, #12]
 800718c:	6822      	ldr	r2, [r4, #0]
 800718e:	6661      	str	r1, [r4, #100]	; 0x64
 8007190:	6961      	ldr	r1, [r4, #20]
 8007192:	1ad3      	subs	r3, r2, r3
 8007194:	4299      	cmp	r1, r3
 8007196:	dcd5      	bgt.n	8007144 <__swbuf_r+0x34>
 8007198:	4621      	mov	r1, r4
 800719a:	4630      	mov	r0, r6
 800719c:	f7fe f8a6 	bl	80052ec <_fflush_r>
 80071a0:	b958      	cbnz	r0, 80071ba <__swbuf_r+0xaa>
 80071a2:	6822      	ldr	r2, [r4, #0]
 80071a4:	2301      	movs	r3, #1
 80071a6:	e7ce      	b.n	8007146 <__swbuf_r+0x36>
 80071a8:	f7fe f8fc 	bl	80053a4 <__sinit>
 80071ac:	e7b8      	b.n	8007120 <__swbuf_r+0x10>
 80071ae:	4621      	mov	r1, r4
 80071b0:	4630      	mov	r0, r6
 80071b2:	f7fe f89b 	bl	80052ec <_fflush_r>
 80071b6:	2800      	cmp	r0, #0
 80071b8:	d0d3      	beq.n	8007162 <__swbuf_r+0x52>
 80071ba:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80071be:	e7d0      	b.n	8007162 <__swbuf_r+0x52>

080071c0 <_wcrtomb_r>:
 80071c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80071c2:	4c11      	ldr	r4, [pc, #68]	; (8007208 <_wcrtomb_r+0x48>)
 80071c4:	6824      	ldr	r4, [r4, #0]
 80071c6:	b085      	sub	sp, #20
 80071c8:	4606      	mov	r6, r0
 80071ca:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80071cc:	461f      	mov	r7, r3
 80071ce:	b151      	cbz	r1, 80071e6 <_wcrtomb_r+0x26>
 80071d0:	4d0e      	ldr	r5, [pc, #56]	; (800720c <_wcrtomb_r+0x4c>)
 80071d2:	2c00      	cmp	r4, #0
 80071d4:	bf08      	it	eq
 80071d6:	462c      	moveq	r4, r5
 80071d8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80071dc:	47a0      	blx	r4
 80071de:	1c43      	adds	r3, r0, #1
 80071e0:	d00c      	beq.n	80071fc <_wcrtomb_r+0x3c>
 80071e2:	b005      	add	sp, #20
 80071e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80071e6:	4a09      	ldr	r2, [pc, #36]	; (800720c <_wcrtomb_r+0x4c>)
 80071e8:	2c00      	cmp	r4, #0
 80071ea:	bf08      	it	eq
 80071ec:	4614      	moveq	r4, r2
 80071ee:	460a      	mov	r2, r1
 80071f0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80071f4:	a901      	add	r1, sp, #4
 80071f6:	47a0      	blx	r4
 80071f8:	1c43      	adds	r3, r0, #1
 80071fa:	d1f2      	bne.n	80071e2 <_wcrtomb_r+0x22>
 80071fc:	2200      	movs	r2, #0
 80071fe:	238a      	movs	r3, #138	; 0x8a
 8007200:	603a      	str	r2, [r7, #0]
 8007202:	6033      	str	r3, [r6, #0]
 8007204:	b005      	add	sp, #20
 8007206:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007208:	2000003c 	.word	0x2000003c
 800720c:	2000087c 	.word	0x2000087c

08007210 <__ascii_wctomb>:
 8007210:	b121      	cbz	r1, 800721c <__ascii_wctomb+0xc>
 8007212:	2aff      	cmp	r2, #255	; 0xff
 8007214:	d804      	bhi.n	8007220 <__ascii_wctomb+0x10>
 8007216:	700a      	strb	r2, [r1, #0]
 8007218:	2001      	movs	r0, #1
 800721a:	4770      	bx	lr
 800721c:	4608      	mov	r0, r1
 800721e:	4770      	bx	lr
 8007220:	238a      	movs	r3, #138	; 0x8a
 8007222:	6003      	str	r3, [r0, #0]
 8007224:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007228:	4770      	bx	lr
 800722a:	bf00      	nop

0800722c <_init>:
 800722c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800722e:	bf00      	nop
 8007230:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007232:	bc08      	pop	{r3}
 8007234:	469e      	mov	lr, r3
 8007236:	4770      	bx	lr

08007238 <_fini>:
 8007238:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800723a:	bf00      	nop
 800723c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800723e:	bc08      	pop	{r3}
 8007240:	469e      	mov	lr, r3
 8007242:	4770      	bx	lr
 8007244:	0000      	movs	r0, r0
	...
