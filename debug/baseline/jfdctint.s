
jfdctint.elf:     file format elf32-littlearm


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
 80001e0:	080071ac 	.word	0x080071ac

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
 80001fc:	080071ac 	.word	0x080071ac

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
 80013e8:	f247 22e0 	movw	r2, #29408	; 0x72e0
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
 8001462:	f247 22d8 	movw	r2, #29400	; 0x72d8
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
 800148c:	f247 22d8 	movw	r2, #29400	; 0x72d8
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
 80019d4:	f247 3310 	movw	r3, #29456	; 0x7310
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
 80019fc:	f247 3320 	movw	r3, #29472	; 0x7320
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

08001eb6 <jpeg_fdct_islow>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	b086      	sub	sp, #24
 8001ec0:	f24c 103b 	movw	r0, #49467	; 0xc13b
 8001ec4:	f640 21e8 	movw	r1, #2792	; 0xae8
 8001ec8:	f04f 0c08 	mov.w	ip, #8
 8001ecc:	f6cf 70ff 	movt	r0, #65535	; 0xffff
 8001ed0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001ed4:	f500 7069 	add.w	r0, r0, #932	; 0x3a4
 8001ed8:	9005      	str	r0, [sp, #20]
 8001eda:	f8d1 9000 	ldr.w	r9, [r1]
 8001ede:	684c      	ldr	r4, [r1, #4]
 8001ee0:	6888      	ldr	r0, [r1, #8]
 8001ee2:	f8d1 a00c 	ldr.w	sl, [r1, #12]
 8001ee6:	690b      	ldr	r3, [r1, #16]
 8001ee8:	f1ac 0c01 	sub.w	ip, ip, #1
 8001eec:	f1bc 0f00 	cmp.w	ip, #0
 8001ef0:	f8cd 9000 	str.w	r9, [sp]
 8001ef4:	9401      	str	r4, [sp, #4]
 8001ef6:	9004      	str	r0, [sp, #16]
 8001ef8:	f8cd a00c 	str.w	sl, [sp, #12]
 8001efc:	9302      	str	r3, [sp, #8]
 8001efe:	e9d1 6205 	ldrd	r6, r2, [r1, #20]
 8001f02:	f8d1 e01c 	ldr.w	lr, [r1, #28]
 8001f06:	eb02 0804 	add.w	r8, r2, r4
 8001f0a:	eb06 0500 	add.w	r5, r6, r0
 8001f0e:	eb0e 0409 	add.w	r4, lr, r9
 8001f12:	eb03 090a 	add.w	r9, r3, sl
 8001f16:	eb05 0008 	add.w	r0, r5, r8
 8001f1a:	eb09 0a04 	add.w	sl, r9, r4
 8001f1e:	eb0a 0b00 	add.w	fp, sl, r0
 8001f22:	ebaa 0000 	sub.w	r0, sl, r0
 8001f26:	ea4f 038b 	mov.w	r3, fp, lsl #2
 8001f2a:	ea4f 0080 	mov.w	r0, r0, lsl #2
 8001f2e:	600b      	str	r3, [r1, #0]
 8001f30:	f24c 133b 	movw	r3, #49467	; 0xc13b
 8001f34:	6108      	str	r0, [r1, #16]
 8001f36:	eba8 0005 	sub.w	r0, r8, r5
 8001f3a:	f241 1551 	movw	r5, #4433	; 0x1151
 8001f3e:	f6cf 73ff 	movt	r3, #65535	; 0xffff
 8001f42:	469a      	mov	sl, r3
 8001f44:	eba4 0309 	sub.w	r3, r4, r9
 8001f48:	f24e 3433 	movw	r4, #58163	; 0xe333
 8001f4c:	f6cf 74ff 	movt	r4, #65535	; 0xffff
 8001f50:	46a1      	mov	r9, r4
 8001f52:	eb03 0400 	add.w	r4, r3, r0
 8001f56:	fb05 f404 	mul.w	r4, r5, r4
 8001f5a:	f641 057e 	movw	r5, #6270	; 0x187e
 8001f5e:	fb03 4305 	mla	r3, r3, r5, r4
 8001f62:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001f66:	ea4f 23e3 	mov.w	r3, r3, asr #11
 8001f6a:	608b      	str	r3, [r1, #8]
 8001f6c:	9b05      	ldr	r3, [sp, #20]
 8001f6e:	fb00 4003 	mla	r0, r0, r3, r4
 8001f72:	f500 6080 	add.w	r0, r0, #1024	; 0x400
 8001f76:	ea4f 20e0 	mov.w	r0, r0, asr #11
 8001f7a:	6188      	str	r0, [r1, #24]
 8001f7c:	9801      	ldr	r0, [sp, #4]
 8001f7e:	eba0 0002 	sub.w	r0, r0, r2
 8001f82:	9a00      	ldr	r2, [sp, #0]
 8001f84:	eba2 0e0e 	sub.w	lr, r2, lr
 8001f88:	9a04      	ldr	r2, [sp, #16]
 8001f8a:	e9dd 4302 	ldrd	r4, r3, [sp, #8]
 8001f8e:	eba2 0206 	sub.w	r2, r2, r6
 8001f92:	eba3 0504 	sub.w	r5, r3, r4
 8001f96:	eb02 060e 	add.w	r6, r2, lr
 8001f9a:	eb05 0400 	add.w	r4, r5, r0
 8001f9e:	eb04 0306 	add.w	r3, r4, r6
 8001fa2:	fb04 f40a 	mul.w	r4, r4, sl
 8001fa6:	f242 5aa1 	movw	sl, #9633	; 0x25a1
 8001faa:	fb03 480a 	mla	r8, r3, sl, r4
 8001fae:	eb05 040e 	add.w	r4, r5, lr
 8001fb2:	fb04 f909 	mul.w	r9, r4, r9
 8001fb6:	f640 148e 	movw	r4, #2446	; 0x98e
 8001fba:	fb05 9504 	mla	r5, r5, r4, r9
 8001fbe:	f244 14b3 	movw	r4, #16819	; 0x41b3
 8001fc2:	4445      	add	r5, r8
 8001fc4:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001fc8:	ea4f 25e5 	mov.w	r5, r5, asr #11
 8001fcc:	61cd      	str	r5, [r1, #28]
 8001fce:	f24f 3584 	movw	r5, #62340	; 0xf384
 8001fd2:	f6cf 75ff 	movt	r5, #65535	; 0xffff
 8001fd6:	fb06 f505 	mul.w	r5, r6, r5
 8001fda:	f64a 56fd 	movw	r6, #44541	; 0xadfd
 8001fde:	fb03 530a 	mla	r3, r3, sl, r5
 8001fe2:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8001fe6:	eb02 0500 	add.w	r5, r2, r0
 8001fea:	fb06 f505 	mul.w	r5, r6, r5
 8001fee:	fb02 5204 	mla	r2, r2, r4, r5
 8001ff2:	441a      	add	r2, r3
 8001ff4:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ff8:	ea4f 22e2 	mov.w	r2, r2, asr #11
 8001ffc:	614a      	str	r2, [r1, #20]
 8001ffe:	f246 2254 	movw	r2, #25172	; 0x6254
 8002002:	fb00 5002 	mla	r0, r0, r2, r5
 8002006:	4440      	add	r0, r8
 8002008:	f500 6080 	add.w	r0, r0, #1024	; 0x400
 800200c:	ea4f 20e0 	mov.w	r0, r0, asr #11
 8002010:	60c8      	str	r0, [r1, #12]
 8002012:	f243 000b 	movw	r0, #12299	; 0x300b
 8002016:	fb0e 9000 	mla	r0, lr, r0, r9
 800201a:	4418      	add	r0, r3
 800201c:	f500 6080 	add.w	r0, r0, #1024	; 0x400
 8002020:	ea4f 20e0 	mov.w	r0, r0, asr #11
 8002024:	6048      	str	r0, [r1, #4]
 8002026:	f101 0120 	add.w	r1, r1, #32
 800202a:	f73f af56 	bgt.w	8001eda <jpeg_fdct_islow+0x24>
 800202e:	f640 21e8 	movw	r1, #2792	; 0xae8
 8002032:	f04f 0b08 	mov.w	fp, #8
 8002036:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800203a:	6e0b      	ldr	r3, [r1, #96]	; 0x60
 800203c:	f8d1 2080 	ldr.w	r2, [r1, #128]	; 0x80
 8002040:	6808      	ldr	r0, [r1, #0]
 8002042:	6a0c      	ldr	r4, [r1, #32]
 8002044:	f8d1 9040 	ldr.w	r9, [r1, #64]	; 0x40
 8002048:	f8d1 c0c0 	ldr.w	ip, [r1, #192]	; 0xc0
 800204c:	f8d1 80e0 	ldr.w	r8, [r1, #224]	; 0xe0
 8002050:	f1ab 0b01 	sub.w	fp, fp, #1
 8002054:	f1bb 0f00 	cmp.w	fp, #0
 8002058:	9303      	str	r3, [sp, #12]
 800205a:	eb02 0503 	add.w	r5, r2, r3
 800205e:	f8d1 30a0 	ldr.w	r3, [r1, #160]	; 0xa0
 8002062:	9002      	str	r0, [sp, #8]
 8002064:	4440      	add	r0, r8
 8002066:	9400      	str	r4, [sp, #0]
 8002068:	eb0c 0e04 	add.w	lr, ip, r4
 800206c:	f8cd 9004 	str.w	r9, [sp, #4]
 8002070:	9204      	str	r2, [sp, #16]
 8002072:	eb05 0600 	add.w	r6, r5, r0
 8002076:	eba0 0005 	sub.w	r0, r0, r5
 800207a:	f241 1551 	movw	r5, #4433	; 0x1151
 800207e:	eb03 0409 	add.w	r4, r3, r9
 8002082:	eb04 0a0e 	add.w	sl, r4, lr
 8002086:	eb0a 0906 	add.w	r9, sl, r6
 800208a:	f109 0202 	add.w	r2, r9, #2
 800208e:	f242 59a1 	movw	r9, #9633	; 0x25a1
 8002092:	ea4f 02a2 	mov.w	r2, r2, asr #2
 8002096:	600a      	str	r2, [r1, #0]
 8002098:	f1ca 0202 	rsb	r2, sl, #2
 800209c:	4432      	add	r2, r6
 800209e:	ea4f 02a2 	mov.w	r2, r2, asr #2
 80020a2:	f8c1 2080 	str.w	r2, [r1, #128]	; 0x80
 80020a6:	ebae 0204 	sub.w	r2, lr, r4
 80020aa:	eb00 0602 	add.w	r6, r0, r2
 80020ae:	fb05 f606 	mul.w	r6, r5, r6
 80020b2:	f641 057e 	movw	r5, #6270	; 0x187e
 80020b6:	fb00 6005 	mla	r0, r0, r5, r6
 80020ba:	f500 4080 	add.w	r0, r0, #16384	; 0x4000
 80020be:	ea4f 30e0 	mov.w	r0, r0, asr #15
 80020c2:	6408      	str	r0, [r1, #64]	; 0x40
 80020c4:	9805      	ldr	r0, [sp, #20]
 80020c6:	fb02 6000 	mla	r0, r2, r0, r6
 80020ca:	9a02      	ldr	r2, [sp, #8]
 80020cc:	f500 4080 	add.w	r0, r0, #16384	; 0x4000
 80020d0:	ea4f 30e0 	mov.w	r0, r0, asr #15
 80020d4:	f8c1 00c0 	str.w	r0, [r1, #192]	; 0xc0
 80020d8:	9800      	ldr	r0, [sp, #0]
 80020da:	eba0 000c 	sub.w	r0, r0, ip
 80020de:	eba2 0c08 	sub.w	ip, r2, r8
 80020e2:	9a01      	ldr	r2, [sp, #4]
 80020e4:	eba2 0303 	sub.w	r3, r2, r3
 80020e8:	e9dd 6203 	ldrd	r6, r2, [sp, #12]
 80020ec:	eb03 080c 	add.w	r8, r3, ip
 80020f0:	eba6 0502 	sub.w	r5, r6, r2
 80020f4:	f24c 163b 	movw	r6, #49467	; 0xc13b
 80020f8:	eb05 0400 	add.w	r4, r5, r0
 80020fc:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8002100:	eb04 0208 	add.w	r2, r4, r8
 8002104:	fb06 f404 	mul.w	r4, r6, r4
 8002108:	f24e 3633 	movw	r6, #58163	; 0xe333
 800210c:	fb02 4e09 	mla	lr, r2, r9, r4
 8002110:	eb05 040c 	add.w	r4, r5, ip
 8002114:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8002118:	fb06 f404 	mul.w	r4, r6, r4
 800211c:	f640 168e 	movw	r6, #2446	; 0x98e
 8002120:	fb05 4506 	mla	r5, r5, r6, r4
 8002124:	f64a 56fd 	movw	r6, #44541	; 0xadfd
 8002128:	4475      	add	r5, lr
 800212a:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 800212e:	f505 4580 	add.w	r5, r5, #16384	; 0x4000
 8002132:	ea4f 35e5 	mov.w	r5, r5, asr #15
 8002136:	f8c1 50e0 	str.w	r5, [r1, #224]	; 0xe0
 800213a:	f24f 3584 	movw	r5, #62340	; 0xf384
 800213e:	f6cf 75ff 	movt	r5, #65535	; 0xffff
 8002142:	fb08 f505 	mul.w	r5, r8, r5
 8002146:	fb02 5209 	mla	r2, r2, r9, r5
 800214a:	eb03 0500 	add.w	r5, r3, r0
 800214e:	fb06 f505 	mul.w	r5, r6, r5
 8002152:	f244 16b3 	movw	r6, #16819	; 0x41b3
 8002156:	fb03 5306 	mla	r3, r3, r6, r5
 800215a:	4413      	add	r3, r2
 800215c:	f503 4380 	add.w	r3, r3, #16384	; 0x4000
 8002160:	ea4f 33e3 	mov.w	r3, r3, asr #15
 8002164:	f8c1 30a0 	str.w	r3, [r1, #160]	; 0xa0
 8002168:	f246 2354 	movw	r3, #25172	; 0x6254
 800216c:	fb00 5003 	mla	r0, r0, r3, r5
 8002170:	4470      	add	r0, lr
 8002172:	f500 4080 	add.w	r0, r0, #16384	; 0x4000
 8002176:	ea4f 30e0 	mov.w	r0, r0, asr #15
 800217a:	6608      	str	r0, [r1, #96]	; 0x60
 800217c:	f243 000b 	movw	r0, #12299	; 0x300b
 8002180:	fb0c 4000 	mla	r0, ip, r0, r4
 8002184:	4410      	add	r0, r2
 8002186:	f500 4080 	add.w	r0, r0, #16384	; 0x4000
 800218a:	ea4f 30e0 	mov.w	r0, r0, asr #15
 800218e:	6208      	str	r0, [r1, #32]
 8002190:	f101 0104 	add.w	r1, r1, #4
 8002194:	f73f af51 	bgt.w	800203a <jpeg_fdct_islow+0x184>
 8002198:	b006      	add	sp, #24
 800219a:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800219e:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021a0 <benchmark>:
 80021a0:	b580      	push	{r7, lr}
 80021a2:	466f      	mov	r7, sp
 80021a4:	f7ff fe87 	bl	8001eb6 <jpeg_fdct_islow>
 80021a8:	2000      	movs	r0, #0
 80021aa:	bd80      	pop	{r7, pc}

080021ac <initialise_benchmark>:
 80021ac:	b5d0      	push	{r4, r6, r7, lr}
 80021ae:	af02      	add	r7, sp, #8
 80021b0:	f248 0e01 	movw	lr, #32769	; 0x8001
 80021b4:	f640 23e8 	movw	r3, #2792	; 0xae8
 80021b8:	2000      	movs	r0, #0
 80021ba:	2101      	movs	r1, #1
 80021bc:	f04f 0c85 	mov.w	ip, #133	; 0x85
 80021c0:	f2c8 0e00 	movt	lr, #32768	; 0x8000
 80021c4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80021c8:	fb01 f10c 	mul.w	r1, r1, ip
 80021cc:	3151      	adds	r1, #81	; 0x51
 80021ce:	fb5e 1201 	smmla	r2, lr, r1, r1
 80021d2:	13d4      	asrs	r4, r2, #15
 80021d4:	eb04 72d2 	add.w	r2, r4, r2, lsr #31
 80021d8:	ebc2 4202 	rsb	r2, r2, r2, lsl #16
 80021dc:	1a89      	subs	r1, r1, r2
 80021de:	f843 1020 	str.w	r1, [r3, r0, lsl #2]
 80021e2:	3001      	adds	r0, #1
 80021e4:	2840      	cmp	r0, #64	; 0x40
 80021e6:	d1ef      	bne.n	80021c8 <initialise_benchmark+0x1c>
 80021e8:	bdd0      	pop	{r4, r6, r7, pc}

080021ea <verify_benchmark>:
 80021ea:	f247 1cc8 	movw	ip, #29128	; 0x71c8
 80021ee:	f640 22e8 	movw	r2, #2792	; 0xae8
 80021f2:	2000      	movs	r0, #0
 80021f4:	f6c0 0c00 	movt	ip, #2048	; 0x800
 80021f8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021fc:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
 8002200:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8002204:	4299      	cmp	r1, r3
 8002206:	bf1c      	itt	ne
 8002208:	2000      	movne	r0, #0
 800220a:	4770      	bxne	lr
 800220c:	3001      	adds	r0, #1
 800220e:	283f      	cmp	r0, #63	; 0x3f
 8002210:	bfc4      	itt	gt
 8002212:	2001      	movgt	r0, #1
 8002214:	4770      	bxgt	lr
 8002216:	e7f1      	b.n	80021fc <verify_benchmark+0x12>

08002218 <__io_putchar>:
 8002218:	b580      	push	{r7, lr}
 800221a:	466f      	mov	r7, sp
 800221c:	b082      	sub	sp, #8
 800221e:	9001      	str	r0, [sp, #4]
 8002220:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002224:	a901      	add	r1, sp, #4
 8002226:	2201      	movs	r2, #1
 8002228:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800222c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002230:	f7ff fd53 	bl	8001cda <HAL_UART_Transmit>
 8002234:	9801      	ldr	r0, [sp, #4]
 8002236:	b002      	add	sp, #8
 8002238:	bd80      	pop	{r7, pc}

0800223a <main>:
 800223a:	b5b0      	push	{r4, r5, r7, lr}
 800223c:	af02      	add	r7, sp, #8
 800223e:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002242:	f643 0000 	movw	r0, #14336	; 0x3800
 8002246:	220c      	movs	r2, #12
 8002248:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800224c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002250:	6008      	str	r0, [r1, #0]
 8002252:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002256:	6048      	str	r0, [r1, #4]
 8002258:	2000      	movs	r0, #0
 800225a:	e9c1 0002 	strd	r0, r0, [r1, #8]
 800225e:	6108      	str	r0, [r1, #16]
 8002260:	6248      	str	r0, [r1, #36]	; 0x24
 8002262:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002266:	e9c1 2005 	strd	r2, r0, [r1, #20]
 800226a:	2000      	movs	r0, #0
 800226c:	f7ff fdca 	bl	8001e04 <BSP_COM_Init>
 8002270:	f7ff ff9c 	bl	80021ac <initialise_benchmark>
 8002274:	f247 3030 	movw	r0, #29488	; 0x7330
 8002278:	f6c0 0000 	movt	r0, #2048	; 0x800
 800227c:	f000 f948 	bl	8002510 <printf>
 8002280:	f247 30db 	movw	r0, #29659	; 0x73db
 8002284:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002288:	f000 f9a4 	bl	80025d4 <puts>
 800228c:	f7fe ff2c 	bl	80010e8 <HAL_Init>
 8002290:	f7fe ff42 	bl	8001118 <HAL_GetTick>
 8002294:	4604      	mov	r4, r0
 8002296:	f7ff ff83 	bl	80021a0 <benchmark>
 800229a:	4605      	mov	r5, r0
 800229c:	f7fe ff3c 	bl	8001118 <HAL_GetTick>
 80022a0:	1b04      	subs	r4, r0, r4
 80022a2:	4628      	mov	r0, r5
 80022a4:	f7ff ffa1 	bl	80021ea <verify_benchmark>
 80022a8:	1c41      	adds	r1, r0, #1
 80022aa:	d006      	beq.n	80022ba <main+0x80>
 80022ac:	2801      	cmp	r0, #1
 80022ae:	d109      	bne.n	80022c4 <main+0x8a>
 80022b0:	f247 3047 	movw	r0, #29511	; 0x7347
 80022b4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022b8:	e008      	b.n	80022cc <main+0x92>
 80022ba:	f247 306b 	movw	r0, #29547	; 0x736b
 80022be:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022c2:	e003      	b.n	80022cc <main+0x92>
 80022c4:	f247 30a0 	movw	r0, #29600	; 0x73a0
 80022c8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022cc:	4621      	mov	r1, r4
 80022ce:	f000 f91f 	bl	8002510 <printf>
 80022d2:	2000      	movs	r0, #0
 80022d4:	bdb0      	pop	{r4, r5, r7, pc}

080022d6 <SysTick_Handler>:
 80022d6:	b580      	push	{r7, lr}
 80022d8:	466f      	mov	r7, sp
 80022da:	f7fe ff15 	bl	8001108 <HAL_IncTick>
 80022de:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80022e2:	f7fe bf6f 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080022e6 <_read>:
 80022e6:	b5f0      	push	{r4, r5, r6, r7, lr}
 80022e8:	af03      	add	r7, sp, #12
 80022ea:	f84d bd04 	str.w	fp, [sp, #-4]!
 80022ee:	4614      	mov	r4, r2
 80022f0:	460d      	mov	r5, r1
 80022f2:	2c01      	cmp	r4, #1
 80022f4:	db06      	blt.n	8002304 <_read+0x1e>
 80022f6:	4626      	mov	r6, r4
 80022f8:	f3af 8000 	nop.w
 80022fc:	f805 0b01 	strb.w	r0, [r5], #1
 8002300:	3e01      	subs	r6, #1
 8002302:	d1f9      	bne.n	80022f8 <_read+0x12>
 8002304:	4620      	mov	r0, r4
 8002306:	f85d bb04 	ldr.w	fp, [sp], #4
 800230a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800230c <_write>:
 800230c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800230e:	af03      	add	r7, sp, #12
 8002310:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002314:	4614      	mov	r4, r2
 8002316:	460d      	mov	r5, r1
 8002318:	2c01      	cmp	r4, #1
 800231a:	db06      	blt.n	800232a <_write+0x1e>
 800231c:	4626      	mov	r6, r4
 800231e:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002322:	f7ff ff79 	bl	8002218 <__io_putchar>
 8002326:	3e01      	subs	r6, #1
 8002328:	d1f9      	bne.n	800231e <_write+0x12>
 800232a:	4620      	mov	r0, r4
 800232c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002330:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002332 <_sbrk>:
 8002332:	f640 2268 	movw	r2, #2664	; 0xa68
 8002336:	4601      	mov	r1, r0
 8002338:	466b      	mov	r3, sp
 800233a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800233e:	6810      	ldr	r0, [r2, #0]
 8002340:	2800      	cmp	r0, #0
 8002342:	bf02      	ittt	eq
 8002344:	f640 4010 	movweq	r0, #3088	; 0xc10
 8002348:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800234c:	6010      	streq	r0, [r2, #0]
 800234e:	4401      	add	r1, r0
 8002350:	4299      	cmp	r1, r3
 8002352:	bf9c      	itt	ls
 8002354:	6011      	strls	r1, [r2, #0]
 8002356:	4770      	bxls	lr
 8002358:	b580      	push	{r7, lr}
 800235a:	466f      	mov	r7, sp
 800235c:	f000 f864 	bl	8002428 <__errno>
 8002360:	210c      	movs	r1, #12
 8002362:	6001      	str	r1, [r0, #0]
 8002364:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002368:	bd80      	pop	{r7, pc}

0800236a <_close>:
 800236a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800236e:	4770      	bx	lr

08002370 <_fstat>:
 8002370:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002374:	6048      	str	r0, [r1, #4]
 8002376:	2000      	movs	r0, #0
 8002378:	4770      	bx	lr

0800237a <_isatty>:
 800237a:	2001      	movs	r0, #1
 800237c:	4770      	bx	lr

0800237e <_lseek>:
 800237e:	2000      	movs	r0, #0
 8002380:	4770      	bx	lr

08002382 <SystemInit>:
 8002382:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002386:	f04f 0c00 	mov.w	ip, #0
 800238a:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800238e:	6801      	ldr	r1, [r0, #0]
 8002390:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002394:	6001      	str	r1, [r0, #0]
 8002396:	f241 0100 	movw	r1, #4096	; 0x1000
 800239a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800239e:	680a      	ldr	r2, [r1, #0]
 80023a0:	f042 0201 	orr.w	r2, r2, #1
 80023a4:	600a      	str	r2, [r1, #0]
 80023a6:	f8c1 c008 	str.w	ip, [r1, #8]
 80023aa:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80023ae:	680b      	ldr	r3, [r1, #0]
 80023b0:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80023b4:	401a      	ands	r2, r3
 80023b6:	600a      	str	r2, [r1, #0]
 80023b8:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80023bc:	60ca      	str	r2, [r1, #12]
 80023be:	680a      	ldr	r2, [r1, #0]
 80023c0:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80023c4:	600a      	str	r2, [r1, #0]
 80023c6:	f8c1 c018 	str.w	ip, [r1, #24]
 80023ca:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80023ce:	f840 1c80 	str.w	r1, [r0, #-128]
 80023d2:	4770      	bx	lr

080023d4 <Reset_Handler>:
 80023d4:	f8df d034 	ldr.w	sp, [pc, #52]	; 800240c <LoopForever+0x2>
 80023d8:	2100      	movs	r1, #0
 80023da:	e003      	b.n	80023e4 <LoopCopyDataInit>

080023dc <CopyDataInit>:
 80023dc:	4b0c      	ldr	r3, [pc, #48]	; (8002410 <LoopForever+0x6>)
 80023de:	585b      	ldr	r3, [r3, r1]
 80023e0:	5043      	str	r3, [r0, r1]
 80023e2:	3104      	adds	r1, #4

080023e4 <LoopCopyDataInit>:
 80023e4:	480b      	ldr	r0, [pc, #44]	; (8002414 <LoopForever+0xa>)
 80023e6:	4b0c      	ldr	r3, [pc, #48]	; (8002418 <LoopForever+0xe>)
 80023e8:	1842      	adds	r2, r0, r1
 80023ea:	429a      	cmp	r2, r3
 80023ec:	d3f6      	bcc.n	80023dc <CopyDataInit>
 80023ee:	4a0b      	ldr	r2, [pc, #44]	; (800241c <LoopForever+0x12>)
 80023f0:	e002      	b.n	80023f8 <LoopFillZerobss>

080023f2 <FillZerobss>:
 80023f2:	2300      	movs	r3, #0
 80023f4:	f842 3b04 	str.w	r3, [r2], #4

080023f8 <LoopFillZerobss>:
 80023f8:	4b09      	ldr	r3, [pc, #36]	; (8002420 <LoopForever+0x16>)
 80023fa:	429a      	cmp	r2, r3
 80023fc:	d3f9      	bcc.n	80023f2 <FillZerobss>
 80023fe:	f7ff ffc0 	bl	8002382 <SystemInit>
 8002402:	f000 f817 	bl	8002434 <__libc_init_array>
 8002406:	f7ff ff18 	bl	800223a <main>

0800240a <LoopForever>:
 800240a:	e7fe      	b.n	800240a <LoopForever>
 800240c:	20018000 	.word	0x20018000
 8002410:	08007688 	.word	0x08007688
 8002414:	20000000 	.word	0x20000000
 8002418:	200009c8 	.word	0x200009c8
 800241c:	200009c8 	.word	0x200009c8
 8002420:	20000c10 	.word	0x20000c10

08002424 <ADC1_2_IRQHandler>:
 8002424:	e7fe      	b.n	8002424 <ADC1_2_IRQHandler>
	...

08002428 <__errno>:
 8002428:	4b01      	ldr	r3, [pc, #4]	; (8002430 <__errno+0x8>)
 800242a:	6818      	ldr	r0, [r3, #0]
 800242c:	4770      	bx	lr
 800242e:	bf00      	nop
 8002430:	20000018 	.word	0x20000018

08002434 <__libc_init_array>:
 8002434:	b570      	push	{r4, r5, r6, lr}
 8002436:	4e0d      	ldr	r6, [pc, #52]	; (800246c <__libc_init_array+0x38>)
 8002438:	4d0d      	ldr	r5, [pc, #52]	; (8002470 <__libc_init_array+0x3c>)
 800243a:	1b76      	subs	r6, r6, r5
 800243c:	10b6      	asrs	r6, r6, #2
 800243e:	d006      	beq.n	800244e <__libc_init_array+0x1a>
 8002440:	2400      	movs	r4, #0
 8002442:	3401      	adds	r4, #1
 8002444:	f855 3b04 	ldr.w	r3, [r5], #4
 8002448:	4798      	blx	r3
 800244a:	42a6      	cmp	r6, r4
 800244c:	d1f9      	bne.n	8002442 <__libc_init_array+0xe>
 800244e:	4e09      	ldr	r6, [pc, #36]	; (8002474 <__libc_init_array+0x40>)
 8002450:	4d09      	ldr	r5, [pc, #36]	; (8002478 <__libc_init_array+0x44>)
 8002452:	1b76      	subs	r6, r6, r5
 8002454:	f004 feaa 	bl	80071ac <_init>
 8002458:	10b6      	asrs	r6, r6, #2
 800245a:	d006      	beq.n	800246a <__libc_init_array+0x36>
 800245c:	2400      	movs	r4, #0
 800245e:	3401      	adds	r4, #1
 8002460:	f855 3b04 	ldr.w	r3, [r5], #4
 8002464:	4798      	blx	r3
 8002466:	42a6      	cmp	r6, r4
 8002468:	d1f9      	bne.n	800245e <__libc_init_array+0x2a>
 800246a:	bd70      	pop	{r4, r5, r6, pc}
 800246c:	08007678 	.word	0x08007678
 8002470:	08007678 	.word	0x08007678
 8002474:	08007680 	.word	0x08007680
 8002478:	08007678 	.word	0x08007678

0800247c <memset>:
 800247c:	b4f0      	push	{r4, r5, r6, r7}
 800247e:	0786      	lsls	r6, r0, #30
 8002480:	d043      	beq.n	800250a <memset+0x8e>
 8002482:	1e54      	subs	r4, r2, #1
 8002484:	2a00      	cmp	r2, #0
 8002486:	d03e      	beq.n	8002506 <memset+0x8a>
 8002488:	b2ca      	uxtb	r2, r1
 800248a:	4603      	mov	r3, r0
 800248c:	e002      	b.n	8002494 <memset+0x18>
 800248e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002492:	d338      	bcc.n	8002506 <memset+0x8a>
 8002494:	f803 2b01 	strb.w	r2, [r3], #1
 8002498:	079d      	lsls	r5, r3, #30
 800249a:	d1f8      	bne.n	800248e <memset+0x12>
 800249c:	2c03      	cmp	r4, #3
 800249e:	d92b      	bls.n	80024f8 <memset+0x7c>
 80024a0:	b2cd      	uxtb	r5, r1
 80024a2:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80024a6:	2c0f      	cmp	r4, #15
 80024a8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80024ac:	d916      	bls.n	80024dc <memset+0x60>
 80024ae:	f1a4 0710 	sub.w	r7, r4, #16
 80024b2:	093f      	lsrs	r7, r7, #4
 80024b4:	f103 0620 	add.w	r6, r3, #32
 80024b8:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80024bc:	f103 0210 	add.w	r2, r3, #16
 80024c0:	e942 5504 	strd	r5, r5, [r2, #-16]
 80024c4:	e942 5502 	strd	r5, r5, [r2, #-8]
 80024c8:	3210      	adds	r2, #16
 80024ca:	42b2      	cmp	r2, r6
 80024cc:	d1f8      	bne.n	80024c0 <memset+0x44>
 80024ce:	f004 040f 	and.w	r4, r4, #15
 80024d2:	3701      	adds	r7, #1
 80024d4:	2c03      	cmp	r4, #3
 80024d6:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80024da:	d90d      	bls.n	80024f8 <memset+0x7c>
 80024dc:	461e      	mov	r6, r3
 80024de:	4622      	mov	r2, r4
 80024e0:	3a04      	subs	r2, #4
 80024e2:	2a03      	cmp	r2, #3
 80024e4:	f846 5b04 	str.w	r5, [r6], #4
 80024e8:	d8fa      	bhi.n	80024e0 <memset+0x64>
 80024ea:	1f22      	subs	r2, r4, #4
 80024ec:	f022 0203 	bic.w	r2, r2, #3
 80024f0:	3204      	adds	r2, #4
 80024f2:	4413      	add	r3, r2
 80024f4:	f004 0403 	and.w	r4, r4, #3
 80024f8:	b12c      	cbz	r4, 8002506 <memset+0x8a>
 80024fa:	b2c9      	uxtb	r1, r1
 80024fc:	441c      	add	r4, r3
 80024fe:	f803 1b01 	strb.w	r1, [r3], #1
 8002502:	429c      	cmp	r4, r3
 8002504:	d1fb      	bne.n	80024fe <memset+0x82>
 8002506:	bcf0      	pop	{r4, r5, r6, r7}
 8002508:	4770      	bx	lr
 800250a:	4614      	mov	r4, r2
 800250c:	4603      	mov	r3, r0
 800250e:	e7c5      	b.n	800249c <memset+0x20>

08002510 <printf>:
 8002510:	b40f      	push	{r0, r1, r2, r3}
 8002512:	b500      	push	{lr}
 8002514:	4907      	ldr	r1, [pc, #28]	; (8002534 <printf+0x24>)
 8002516:	b083      	sub	sp, #12
 8002518:	ab04      	add	r3, sp, #16
 800251a:	6808      	ldr	r0, [r1, #0]
 800251c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002520:	6881      	ldr	r1, [r0, #8]
 8002522:	9301      	str	r3, [sp, #4]
 8002524:	f000 f860 	bl	80025e8 <_vfprintf_r>
 8002528:	b003      	add	sp, #12
 800252a:	f85d eb04 	ldr.w	lr, [sp], #4
 800252e:	b004      	add	sp, #16
 8002530:	4770      	bx	lr
 8002532:	bf00      	nop
 8002534:	20000018 	.word	0x20000018

08002538 <_puts_r>:
 8002538:	b570      	push	{r4, r5, r6, lr}
 800253a:	4605      	mov	r5, r0
 800253c:	b088      	sub	sp, #32
 800253e:	4608      	mov	r0, r1
 8002540:	460c      	mov	r4, r1
 8002542:	f7fe f87d 	bl	8000640 <strlen>
 8002546:	4a22      	ldr	r2, [pc, #136]	; (80025d0 <_puts_r+0x98>)
 8002548:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800254a:	9404      	str	r4, [sp, #16]
 800254c:	2601      	movs	r6, #1
 800254e:	1c44      	adds	r4, r0, #1
 8002550:	a904      	add	r1, sp, #16
 8002552:	9206      	str	r2, [sp, #24]
 8002554:	2202      	movs	r2, #2
 8002556:	9403      	str	r4, [sp, #12]
 8002558:	9005      	str	r0, [sp, #20]
 800255a:	68ac      	ldr	r4, [r5, #8]
 800255c:	9607      	str	r6, [sp, #28]
 800255e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002562:	b31b      	cbz	r3, 80025ac <_puts_r+0x74>
 8002564:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002566:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800256a:	07ce      	lsls	r6, r1, #31
 800256c:	b29a      	uxth	r2, r3
 800256e:	d401      	bmi.n	8002574 <_puts_r+0x3c>
 8002570:	0590      	lsls	r0, r2, #22
 8002572:	d525      	bpl.n	80025c0 <_puts_r+0x88>
 8002574:	0491      	lsls	r1, r2, #18
 8002576:	d406      	bmi.n	8002586 <_puts_r+0x4e>
 8002578:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800257a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800257e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002582:	81a3      	strh	r3, [r4, #12]
 8002584:	6662      	str	r2, [r4, #100]	; 0x64
 8002586:	4628      	mov	r0, r5
 8002588:	aa01      	add	r2, sp, #4
 800258a:	4621      	mov	r1, r4
 800258c:	f003 f860 	bl	8005650 <__sfvwrite_r>
 8002590:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002592:	2800      	cmp	r0, #0
 8002594:	bf0c      	ite	eq
 8002596:	250a      	moveq	r5, #10
 8002598:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 800259c:	07da      	lsls	r2, r3, #31
 800259e:	d402      	bmi.n	80025a6 <_puts_r+0x6e>
 80025a0:	89a3      	ldrh	r3, [r4, #12]
 80025a2:	059b      	lsls	r3, r3, #22
 80025a4:	d506      	bpl.n	80025b4 <_puts_r+0x7c>
 80025a6:	4628      	mov	r0, r5
 80025a8:	b008      	add	sp, #32
 80025aa:	bd70      	pop	{r4, r5, r6, pc}
 80025ac:	4628      	mov	r0, r5
 80025ae:	f002 feb9 	bl	8005324 <__sinit>
 80025b2:	e7d7      	b.n	8002564 <_puts_r+0x2c>
 80025b4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80025b6:	f003 fa07 	bl	80059c8 <__retarget_lock_release_recursive>
 80025ba:	4628      	mov	r0, r5
 80025bc:	b008      	add	sp, #32
 80025be:	bd70      	pop	{r4, r5, r6, pc}
 80025c0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80025c2:	f003 f9ff 	bl	80059c4 <__retarget_lock_acquire_recursive>
 80025c6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80025ca:	b29a      	uxth	r2, r3
 80025cc:	e7d2      	b.n	8002574 <_puts_r+0x3c>
 80025ce:	bf00      	nop
 80025d0:	080073e4 	.word	0x080073e4

080025d4 <puts>:
 80025d4:	4b02      	ldr	r3, [pc, #8]	; (80025e0 <puts+0xc>)
 80025d6:	4601      	mov	r1, r0
 80025d8:	6818      	ldr	r0, [r3, #0]
 80025da:	f7ff bfad 	b.w	8002538 <_puts_r>
 80025de:	bf00      	nop
 80025e0:	20000018 	.word	0x20000018
 80025e4:	00000000 	.word	0x00000000

080025e8 <_vfprintf_r>:
 80025e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80025ec:	b0d7      	sub	sp, #348	; 0x15c
 80025ee:	461c      	mov	r4, r3
 80025f0:	4689      	mov	r9, r1
 80025f2:	4617      	mov	r7, r2
 80025f4:	4605      	mov	r5, r0
 80025f6:	9003      	str	r0, [sp, #12]
 80025f8:	f003 f9d2 	bl	80059a0 <_localeconv_r>
 80025fc:	6803      	ldr	r3, [r0, #0]
 80025fe:	9316      	str	r3, [sp, #88]	; 0x58
 8002600:	4618      	mov	r0, r3
 8002602:	f7fe f81d 	bl	8000640 <strlen>
 8002606:	9408      	str	r4, [sp, #32]
 8002608:	9015      	str	r0, [sp, #84]	; 0x54
 800260a:	b11d      	cbz	r5, 8002614 <_vfprintf_r+0x2c>
 800260c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800260e:	2b00      	cmp	r3, #0
 8002610:	f000 8107 	beq.w	8002822 <_vfprintf_r+0x23a>
 8002614:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002618:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800261c:	07c8      	lsls	r0, r1, #31
 800261e:	b293      	uxth	r3, r2
 8002620:	d402      	bmi.n	8002628 <_vfprintf_r+0x40>
 8002622:	0599      	lsls	r1, r3, #22
 8002624:	f140 811f 	bpl.w	8002866 <_vfprintf_r+0x27e>
 8002628:	049e      	lsls	r6, r3, #18
 800262a:	d40a      	bmi.n	8002642 <_vfprintf_r+0x5a>
 800262c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002630:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002634:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002638:	f8a9 300c 	strh.w	r3, [r9, #12]
 800263c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002640:	b29b      	uxth	r3, r3
 8002642:	071d      	lsls	r5, r3, #28
 8002644:	f140 80b2 	bpl.w	80027ac <_vfprintf_r+0x1c4>
 8002648:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800264c:	2a00      	cmp	r2, #0
 800264e:	f000 80ad 	beq.w	80027ac <_vfprintf_r+0x1c4>
 8002652:	f003 021a 	and.w	r2, r3, #26
 8002656:	2a0a      	cmp	r2, #10
 8002658:	f000 80c9 	beq.w	80027ee <_vfprintf_r+0x206>
 800265c:	2300      	movs	r3, #0
 800265e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002878 <_vfprintf_r+0x290>
 8002662:	9310      	str	r3, [sp, #64]	; 0x40
 8002664:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002668:	9317      	str	r3, [sp, #92]	; 0x5c
 800266a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800266e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002670:	9318      	str	r3, [sp, #96]	; 0x60
 8002672:	9305      	str	r3, [sp, #20]
 8002674:	ab2d      	add	r3, sp, #180	; 0xb4
 8002676:	932a      	str	r3, [sp, #168]	; 0xa8
 8002678:	469b      	mov	fp, r3
 800267a:	783b      	ldrb	r3, [r7, #0]
 800267c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002680:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002684:	2b00      	cmp	r3, #0
 8002686:	f000 8259 	beq.w	8002b3c <_vfprintf_r+0x554>
 800268a:	2b25      	cmp	r3, #37	; 0x25
 800268c:	463c      	mov	r4, r7
 800268e:	d102      	bne.n	8002696 <_vfprintf_r+0xae>
 8002690:	e01d      	b.n	80026ce <_vfprintf_r+0xe6>
 8002692:	2b25      	cmp	r3, #37	; 0x25
 8002694:	d003      	beq.n	800269e <_vfprintf_r+0xb6>
 8002696:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800269a:	2b00      	cmp	r3, #0
 800269c:	d1f9      	bne.n	8002692 <_vfprintf_r+0xaa>
 800269e:	1be5      	subs	r5, r4, r7
 80026a0:	b18d      	cbz	r5, 80026c6 <_vfprintf_r+0xde>
 80026a2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80026a6:	3301      	adds	r3, #1
 80026a8:	442a      	add	r2, r5
 80026aa:	2b07      	cmp	r3, #7
 80026ac:	f8cb 7000 	str.w	r7, [fp]
 80026b0:	f8cb 5004 	str.w	r5, [fp, #4]
 80026b4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80026b8:	f300 80ca 	bgt.w	8002850 <_vfprintf_r+0x268>
 80026bc:	f10b 0b08 	add.w	fp, fp, #8
 80026c0:	9b05      	ldr	r3, [sp, #20]
 80026c2:	442b      	add	r3, r5
 80026c4:	9305      	str	r3, [sp, #20]
 80026c6:	7823      	ldrb	r3, [r4, #0]
 80026c8:	2b00      	cmp	r3, #0
 80026ca:	f000 8237 	beq.w	8002b3c <_vfprintf_r+0x554>
 80026ce:	2300      	movs	r3, #0
 80026d0:	7866      	ldrb	r6, [r4, #1]
 80026d2:	9306      	str	r3, [sp, #24]
 80026d4:	4698      	mov	r8, r3
 80026d6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80026da:	f104 0a01 	add.w	sl, r4, #1
 80026de:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80026e2:	252b      	movs	r5, #43	; 0x2b
 80026e4:	f10a 0a01 	add.w	sl, sl, #1
 80026e8:	f1a6 0320 	sub.w	r3, r6, #32
 80026ec:	2b5a      	cmp	r3, #90	; 0x5a
 80026ee:	f200 842a 	bhi.w	8002f46 <_vfprintf_r+0x95e>
 80026f2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80026f6:	03aa      	.short	0x03aa
 80026f8:	04280428 	.word	0x04280428
 80026fc:	0428029c 	.word	0x0428029c
 8002700:	04280428 	.word	0x04280428
 8002704:	042802a7 	.word	0x042802a7
 8002708:	02c60428 	.word	0x02c60428
 800270c:	042802d2 	.word	0x042802d2
 8002710:	02dc02d7 	.word	0x02dc02d7
 8002714:	02f60428 	.word	0x02f60428
 8002718:	026d026d 	.word	0x026d026d
 800271c:	026d026d 	.word	0x026d026d
 8002720:	026d026d 	.word	0x026d026d
 8002724:	026d026d 	.word	0x026d026d
 8002728:	0428026d 	.word	0x0428026d
 800272c:	04280428 	.word	0x04280428
 8002730:	04280428 	.word	0x04280428
 8002734:	04280428 	.word	0x04280428
 8002738:	042802fb 	.word	0x042802fb
 800273c:	03f3033c 	.word	0x03f3033c
 8002740:	02fb02fb 	.word	0x02fb02fb
 8002744:	042802fb 	.word	0x042802fb
 8002748:	04280428 	.word	0x04280428
 800274c:	03ee0428 	.word	0x03ee0428
 8002750:	04280428 	.word	0x04280428
 8002754:	0428009a 	.word	0x0428009a
 8002758:	04280428 	.word	0x04280428
 800275c:	04280350 	.word	0x04280350
 8002760:	04280379 	.word	0x04280379
 8002764:	03900428 	.word	0x03900428
 8002768:	04280428 	.word	0x04280428
 800276c:	04280428 	.word	0x04280428
 8002770:	04280428 	.word	0x04280428
 8002774:	04280428 	.word	0x04280428
 8002778:	042802fb 	.word	0x042802fb
 800277c:	00c5033c 	.word	0x00c5033c
 8002780:	02fb02fb 	.word	0x02fb02fb
 8002784:	03d102fb 	.word	0x03d102fb
 8002788:	007000c5 	.word	0x007000c5
 800278c:	03b50428 	.word	0x03b50428
 8002790:	03c20428 	.word	0x03c20428
 8002794:	03de009c 	.word	0x03de009c
 8002798:	04280070 	.word	0x04280070
 800279c:	00720350 	.word	0x00720350
 80027a0:	0428022c 	.word	0x0428022c
 80027a4:	027c0428 	.word	0x027c0428
 80027a8:	00720428 	.word	0x00720428
 80027ac:	4649      	mov	r1, r9
 80027ae:	9803      	ldr	r0, [sp, #12]
 80027b0:	f001 fc9a 	bl	80040e8 <__swsetup_r>
 80027b4:	b1a0      	cbz	r0, 80027e0 <_vfprintf_r+0x1f8>
 80027b6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80027ba:	07d8      	lsls	r0, r3, #31
 80027bc:	d404      	bmi.n	80027c8 <_vfprintf_r+0x1e0>
 80027be:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80027c2:	0599      	lsls	r1, r3, #22
 80027c4:	f140 83b7 	bpl.w	8002f36 <_vfprintf_r+0x94e>
 80027c8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80027cc:	9305      	str	r3, [sp, #20]
 80027ce:	9805      	ldr	r0, [sp, #20]
 80027d0:	b057      	add	sp, #348	; 0x15c
 80027d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80027d6:	f048 0820 	orr.w	r8, r8, #32
 80027da:	f89a 6000 	ldrb.w	r6, [sl]
 80027de:	e781      	b.n	80026e4 <_vfprintf_r+0xfc>
 80027e0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80027e4:	f003 021a 	and.w	r2, r3, #26
 80027e8:	2a0a      	cmp	r2, #10
 80027ea:	f47f af37 	bne.w	800265c <_vfprintf_r+0x74>
 80027ee:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80027f2:	2a00      	cmp	r2, #0
 80027f4:	f6ff af32 	blt.w	800265c <_vfprintf_r+0x74>
 80027f8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80027fc:	07d2      	lsls	r2, r2, #31
 80027fe:	d405      	bmi.n	800280c <_vfprintf_r+0x224>
 8002800:	059b      	lsls	r3, r3, #22
 8002802:	d403      	bmi.n	800280c <_vfprintf_r+0x224>
 8002804:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002808:	f003 f8de 	bl	80059c8 <__retarget_lock_release_recursive>
 800280c:	4623      	mov	r3, r4
 800280e:	463a      	mov	r2, r7
 8002810:	4649      	mov	r1, r9
 8002812:	9803      	ldr	r0, [sp, #12]
 8002814:	f001 fc26 	bl	8004064 <__sbprintf>
 8002818:	9005      	str	r0, [sp, #20]
 800281a:	9805      	ldr	r0, [sp, #20]
 800281c:	b057      	add	sp, #348	; 0x15c
 800281e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002822:	9803      	ldr	r0, [sp, #12]
 8002824:	f002 fd7e 	bl	8005324 <__sinit>
 8002828:	e6f4      	b.n	8002614 <_vfprintf_r+0x2c>
 800282a:	f048 0810 	orr.w	r8, r8, #16
 800282e:	f018 0f20 	tst.w	r8, #32
 8002832:	f000 836c 	beq.w	8002f0e <_vfprintf_r+0x926>
 8002836:	9c08      	ldr	r4, [sp, #32]
 8002838:	3407      	adds	r4, #7
 800283a:	f024 0307 	bic.w	r3, r4, #7
 800283e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002842:	f103 0208 	add.w	r2, r3, #8
 8002846:	9208      	str	r2, [sp, #32]
 8002848:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800284c:	2200      	movs	r2, #0
 800284e:	e18c      	b.n	8002b6a <_vfprintf_r+0x582>
 8002850:	aa2a      	add	r2, sp, #168	; 0xa8
 8002852:	9907      	ldr	r1, [sp, #28]
 8002854:	9803      	ldr	r0, [sp, #12]
 8002856:	f004 f9f5 	bl	8006c44 <__sprint_r>
 800285a:	2800      	cmp	r0, #0
 800285c:	f041 8376 	bne.w	8003f4c <_vfprintf_r+0x1964>
 8002860:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002864:	e72c      	b.n	80026c0 <_vfprintf_r+0xd8>
 8002866:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800286a:	f003 f8ab 	bl	80059c4 <__retarget_lock_acquire_recursive>
 800286e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002872:	b293      	uxth	r3, r2
 8002874:	e6d8      	b.n	8002628 <_vfprintf_r+0x40>
 8002876:	bf00      	nop
	...
 8002880:	4643      	mov	r3, r8
 8002882:	069f      	lsls	r7, r3, #26
 8002884:	f140 832f 	bpl.w	8002ee6 <_vfprintf_r+0x8fe>
 8002888:	9c08      	ldr	r4, [sp, #32]
 800288a:	3407      	adds	r4, #7
 800288c:	f024 0407 	bic.w	r4, r4, #7
 8002890:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002894:	f104 0208 	add.w	r2, r4, #8
 8002898:	9208      	str	r2, [sp, #32]
 800289a:	4604      	mov	r4, r0
 800289c:	460d      	mov	r5, r1
 800289e:	2800      	cmp	r0, #0
 80028a0:	f171 0200 	sbcs.w	r2, r1, #0
 80028a4:	da05      	bge.n	80028b2 <_vfprintf_r+0x2ca>
 80028a6:	222d      	movs	r2, #45	; 0x2d
 80028a8:	4264      	negs	r4, r4
 80028aa:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80028ae:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80028b2:	aa56      	add	r2, sp, #344	; 0x158
 80028b4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80028b8:	9204      	str	r2, [sp, #16]
 80028ba:	f000 84b2 	beq.w	8003222 <_vfprintf_r+0xc3a>
 80028be:	2201      	movs	r2, #1
 80028c0:	ea54 0105 	orrs.w	r1, r4, r5
 80028c4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80028c8:	f040 8159 	bne.w	8002b7e <_vfprintf_r+0x596>
 80028cc:	f1b9 0f00 	cmp.w	r9, #0
 80028d0:	f040 8619 	bne.w	8003506 <_vfprintf_r+0xf1e>
 80028d4:	2a00      	cmp	r2, #0
 80028d6:	f040 8508 	bne.w	80032ea <_vfprintf_r+0xd02>
 80028da:	f013 0301 	ands.w	r3, r3, #1
 80028de:	af56      	add	r7, sp, #344	; 0x158
 80028e0:	9309      	str	r3, [sp, #36]	; 0x24
 80028e2:	d002      	beq.n	80028ea <_vfprintf_r+0x302>
 80028e4:	2330      	movs	r3, #48	; 0x30
 80028e6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80028ea:	2300      	movs	r3, #0
 80028ec:	930a      	str	r3, [sp, #40]	; 0x28
 80028ee:	930f      	str	r3, [sp, #60]	; 0x3c
 80028f0:	9314      	str	r3, [sp, #80]	; 0x50
 80028f2:	9311      	str	r3, [sp, #68]	; 0x44
 80028f4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80028f6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80028fa:	454b      	cmp	r3, r9
 80028fc:	bfb8      	it	lt
 80028fe:	464b      	movlt	r3, r9
 8002900:	9304      	str	r3, [sp, #16]
 8002902:	b112      	cbz	r2, 800290a <_vfprintf_r+0x322>
 8002904:	9b04      	ldr	r3, [sp, #16]
 8002906:	3301      	adds	r3, #1
 8002908:	9304      	str	r3, [sp, #16]
 800290a:	f018 0302 	ands.w	r3, r8, #2
 800290e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002910:	d002      	beq.n	8002918 <_vfprintf_r+0x330>
 8002912:	9b04      	ldr	r3, [sp, #16]
 8002914:	3302      	adds	r3, #2
 8002916:	9304      	str	r3, [sp, #16]
 8002918:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800291c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800291e:	930e      	str	r3, [sp, #56]	; 0x38
 8002920:	d13f      	bne.n	80029a2 <_vfprintf_r+0x3ba>
 8002922:	9b06      	ldr	r3, [sp, #24]
 8002924:	9904      	ldr	r1, [sp, #16]
 8002926:	1a5d      	subs	r5, r3, r1
 8002928:	2d00      	cmp	r5, #0
 800292a:	dd3a      	ble.n	80029a2 <_vfprintf_r+0x3ba>
 800292c:	2d10      	cmp	r5, #16
 800292e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002930:	dd29      	ble.n	8002986 <_vfprintf_r+0x39e>
 8002932:	4659      	mov	r1, fp
 8002934:	4620      	mov	r0, r4
 8002936:	9620      	str	r6, [sp, #128]	; 0x80
 8002938:	2310      	movs	r3, #16
 800293a:	9c03      	ldr	r4, [sp, #12]
 800293c:	9e07      	ldr	r6, [sp, #28]
 800293e:	46bb      	mov	fp, r7
 8002940:	e004      	b.n	800294c <_vfprintf_r+0x364>
 8002942:	3d10      	subs	r5, #16
 8002944:	2d10      	cmp	r5, #16
 8002946:	f101 0108 	add.w	r1, r1, #8
 800294a:	dd18      	ble.n	800297e <_vfprintf_r+0x396>
 800294c:	3201      	adds	r2, #1
 800294e:	4fba      	ldr	r7, [pc, #744]	; (8002c38 <_vfprintf_r+0x650>)
 8002950:	3010      	adds	r0, #16
 8002952:	2a07      	cmp	r2, #7
 8002954:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002958:	e9c1 7300 	strd	r7, r3, [r1]
 800295c:	ddf1      	ble.n	8002942 <_vfprintf_r+0x35a>
 800295e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002960:	4631      	mov	r1, r6
 8002962:	4620      	mov	r0, r4
 8002964:	930c      	str	r3, [sp, #48]	; 0x30
 8002966:	f004 f96d 	bl	8006c44 <__sprint_r>
 800296a:	2800      	cmp	r0, #0
 800296c:	f040 843d 	bne.w	80031ea <_vfprintf_r+0xc02>
 8002970:	3d10      	subs	r5, #16
 8002972:	2d10      	cmp	r5, #16
 8002974:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002978:	a92d      	add	r1, sp, #180	; 0xb4
 800297a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800297c:	dce6      	bgt.n	800294c <_vfprintf_r+0x364>
 800297e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002980:	465f      	mov	r7, fp
 8002982:	4604      	mov	r4, r0
 8002984:	468b      	mov	fp, r1
 8002986:	3201      	adds	r2, #1
 8002988:	4bab      	ldr	r3, [pc, #684]	; (8002c38 <_vfprintf_r+0x650>)
 800298a:	442c      	add	r4, r5
 800298c:	2a07      	cmp	r2, #7
 800298e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002992:	e9cb 3500 	strd	r3, r5, [fp]
 8002996:	f300 84ff 	bgt.w	8003398 <_vfprintf_r+0xdb0>
 800299a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800299e:	f10b 0b08 	add.w	fp, fp, #8
 80029a2:	b172      	cbz	r2, 80029c2 <_vfprintf_r+0x3da>
 80029a4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80029a6:	3201      	adds	r2, #1
 80029a8:	3401      	adds	r4, #1
 80029aa:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80029ae:	2101      	movs	r1, #1
 80029b0:	2a07      	cmp	r2, #7
 80029b2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80029b6:	e9cb 0100 	strd	r0, r1, [fp]
 80029ba:	f300 8418 	bgt.w	80031ee <_vfprintf_r+0xc06>
 80029be:	f10b 0b08 	add.w	fp, fp, #8
 80029c2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80029c4:	b16b      	cbz	r3, 80029e2 <_vfprintf_r+0x3fa>
 80029c6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80029c8:	3301      	adds	r3, #1
 80029ca:	3402      	adds	r4, #2
 80029cc:	a923      	add	r1, sp, #140	; 0x8c
 80029ce:	2202      	movs	r2, #2
 80029d0:	2b07      	cmp	r3, #7
 80029d2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80029d6:	e9cb 1200 	strd	r1, r2, [fp]
 80029da:	f300 8415 	bgt.w	8003208 <_vfprintf_r+0xc20>
 80029de:	f10b 0b08 	add.w	fp, fp, #8
 80029e2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80029e4:	2b80      	cmp	r3, #128	; 0x80
 80029e6:	f000 8331 	beq.w	800304c <_vfprintf_r+0xa64>
 80029ea:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80029ec:	eba9 0503 	sub.w	r5, r9, r3
 80029f0:	2d00      	cmp	r5, #0
 80029f2:	dd37      	ble.n	8002a64 <_vfprintf_r+0x47c>
 80029f4:	2d10      	cmp	r5, #16
 80029f6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80029f8:	4b90      	ldr	r3, [pc, #576]	; (8002c3c <_vfprintf_r+0x654>)
 80029fa:	dd28      	ble.n	8002a4e <_vfprintf_r+0x466>
 80029fc:	4659      	mov	r1, fp
 80029fe:	4620      	mov	r0, r4
 8002a00:	46bb      	mov	fp, r7
 8002a02:	f04f 0910 	mov.w	r9, #16
 8002a06:	4637      	mov	r7, r6
 8002a08:	461c      	mov	r4, r3
 8002a0a:	9e07      	ldr	r6, [sp, #28]
 8002a0c:	e004      	b.n	8002a18 <_vfprintf_r+0x430>
 8002a0e:	3d10      	subs	r5, #16
 8002a10:	2d10      	cmp	r5, #16
 8002a12:	f101 0108 	add.w	r1, r1, #8
 8002a16:	dd15      	ble.n	8002a44 <_vfprintf_r+0x45c>
 8002a18:	3201      	adds	r2, #1
 8002a1a:	3010      	adds	r0, #16
 8002a1c:	2a07      	cmp	r2, #7
 8002a1e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002a22:	e9c1 4900 	strd	r4, r9, [r1]
 8002a26:	ddf2      	ble.n	8002a0e <_vfprintf_r+0x426>
 8002a28:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a2a:	4631      	mov	r1, r6
 8002a2c:	9803      	ldr	r0, [sp, #12]
 8002a2e:	f004 f909 	bl	8006c44 <__sprint_r>
 8002a32:	2800      	cmp	r0, #0
 8002a34:	f040 83d9 	bne.w	80031ea <_vfprintf_r+0xc02>
 8002a38:	3d10      	subs	r5, #16
 8002a3a:	2d10      	cmp	r5, #16
 8002a3c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002a40:	a92d      	add	r1, sp, #180	; 0xb4
 8002a42:	dce9      	bgt.n	8002a18 <_vfprintf_r+0x430>
 8002a44:	463e      	mov	r6, r7
 8002a46:	4623      	mov	r3, r4
 8002a48:	465f      	mov	r7, fp
 8002a4a:	4604      	mov	r4, r0
 8002a4c:	468b      	mov	fp, r1
 8002a4e:	3201      	adds	r2, #1
 8002a50:	442c      	add	r4, r5
 8002a52:	2a07      	cmp	r2, #7
 8002a54:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002a58:	e9cb 3500 	strd	r3, r5, [fp]
 8002a5c:	f300 83ef 	bgt.w	800323e <_vfprintf_r+0xc56>
 8002a60:	f10b 0b08 	add.w	fp, fp, #8
 8002a64:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002a68:	f040 8280 	bne.w	8002f6c <_vfprintf_r+0x984>
 8002a6c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002a6e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002a70:	f8cb 7000 	str.w	r7, [fp]
 8002a74:	3301      	adds	r3, #1
 8002a76:	4414      	add	r4, r2
 8002a78:	2b07      	cmp	r3, #7
 8002a7a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002a7c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002a80:	932b      	str	r3, [sp, #172]	; 0xac
 8002a82:	f300 8392 	bgt.w	80031aa <_vfprintf_r+0xbc2>
 8002a86:	f10b 0b08 	add.w	fp, fp, #8
 8002a8a:	f018 0f04 	tst.w	r8, #4
 8002a8e:	d03b      	beq.n	8002b08 <_vfprintf_r+0x520>
 8002a90:	9b06      	ldr	r3, [sp, #24]
 8002a92:	9a04      	ldr	r2, [sp, #16]
 8002a94:	1a9d      	subs	r5, r3, r2
 8002a96:	2d00      	cmp	r5, #0
 8002a98:	dd36      	ble.n	8002b08 <_vfprintf_r+0x520>
 8002a9a:	2d10      	cmp	r5, #16
 8002a9c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002a9e:	dd21      	ble.n	8002ae4 <_vfprintf_r+0x4fc>
 8002aa0:	2610      	movs	r6, #16
 8002aa2:	9f03      	ldr	r7, [sp, #12]
 8002aa4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002aa8:	e004      	b.n	8002ab4 <_vfprintf_r+0x4cc>
 8002aaa:	3d10      	subs	r5, #16
 8002aac:	2d10      	cmp	r5, #16
 8002aae:	f10b 0b08 	add.w	fp, fp, #8
 8002ab2:	dd17      	ble.n	8002ae4 <_vfprintf_r+0x4fc>
 8002ab4:	3301      	adds	r3, #1
 8002ab6:	4a60      	ldr	r2, [pc, #384]	; (8002c38 <_vfprintf_r+0x650>)
 8002ab8:	3410      	adds	r4, #16
 8002aba:	2b07      	cmp	r3, #7
 8002abc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ac0:	e9cb 2600 	strd	r2, r6, [fp]
 8002ac4:	ddf1      	ble.n	8002aaa <_vfprintf_r+0x4c2>
 8002ac6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ac8:	4641      	mov	r1, r8
 8002aca:	4638      	mov	r0, r7
 8002acc:	f004 f8ba 	bl	8006c44 <__sprint_r>
 8002ad0:	2800      	cmp	r0, #0
 8002ad2:	f040 856c 	bne.w	80035ae <_vfprintf_r+0xfc6>
 8002ad6:	3d10      	subs	r5, #16
 8002ad8:	2d10      	cmp	r5, #16
 8002ada:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002ade:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ae2:	dce7      	bgt.n	8002ab4 <_vfprintf_r+0x4cc>
 8002ae4:	3301      	adds	r3, #1
 8002ae6:	4a54      	ldr	r2, [pc, #336]	; (8002c38 <_vfprintf_r+0x650>)
 8002ae8:	442c      	add	r4, r5
 8002aea:	2b07      	cmp	r3, #7
 8002aec:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002af0:	e9cb 2500 	strd	r2, r5, [fp]
 8002af4:	dd08      	ble.n	8002b08 <_vfprintf_r+0x520>
 8002af6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002af8:	9907      	ldr	r1, [sp, #28]
 8002afa:	9803      	ldr	r0, [sp, #12]
 8002afc:	f004 f8a2 	bl	8006c44 <__sprint_r>
 8002b00:	2800      	cmp	r0, #0
 8002b02:	f040 82e9 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 8002b06:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002b08:	9904      	ldr	r1, [sp, #16]
 8002b0a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002b0e:	428a      	cmp	r2, r1
 8002b10:	bfac      	ite	ge
 8002b12:	189b      	addge	r3, r3, r2
 8002b14:	185b      	addlt	r3, r3, r1
 8002b16:	9305      	str	r3, [sp, #20]
 8002b18:	2c00      	cmp	r4, #0
 8002b1a:	f040 82d5 	bne.w	80030c8 <_vfprintf_r+0xae0>
 8002b1e:	2300      	movs	r3, #0
 8002b20:	932b      	str	r3, [sp, #172]	; 0xac
 8002b22:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002b24:	b11b      	cbz	r3, 8002b2e <_vfprintf_r+0x546>
 8002b26:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002b28:	9803      	ldr	r0, [sp, #12]
 8002b2a:	f002 fc9d 	bl	8005468 <_free_r>
 8002b2e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002b32:	4657      	mov	r7, sl
 8002b34:	783b      	ldrb	r3, [r7, #0]
 8002b36:	2b00      	cmp	r3, #0
 8002b38:	f47f ada7 	bne.w	800268a <_vfprintf_r+0xa2>
 8002b3c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002b3e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002b42:	2b00      	cmp	r3, #0
 8002b44:	f041 80e7 	bne.w	8003d16 <_vfprintf_r+0x172e>
 8002b48:	2300      	movs	r3, #0
 8002b4a:	932b      	str	r3, [sp, #172]	; 0xac
 8002b4c:	e2cb      	b.n	80030e6 <_vfprintf_r+0xafe>
 8002b4e:	4643      	mov	r3, r8
 8002b50:	069a      	lsls	r2, r3, #26
 8002b52:	f140 814e 	bpl.w	8002df2 <_vfprintf_r+0x80a>
 8002b56:	9c08      	ldr	r4, [sp, #32]
 8002b58:	3407      	adds	r4, #7
 8002b5a:	f024 0207 	bic.w	r2, r4, #7
 8002b5e:	f102 0108 	add.w	r1, r2, #8
 8002b62:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002b66:	9108      	str	r1, [sp, #32]
 8002b68:	2201      	movs	r2, #1
 8002b6a:	2100      	movs	r1, #0
 8002b6c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002b70:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002b74:	a956      	add	r1, sp, #344	; 0x158
 8002b76:	9104      	str	r1, [sp, #16]
 8002b78:	f47f aea2 	bne.w	80028c0 <_vfprintf_r+0x2d8>
 8002b7c:	4698      	mov	r8, r3
 8002b7e:	2a01      	cmp	r2, #1
 8002b80:	f000 8350 	beq.w	8003224 <_vfprintf_r+0xc3c>
 8002b84:	2a02      	cmp	r2, #2
 8002b86:	f000 831b 	beq.w	80031c0 <_vfprintf_r+0xbd8>
 8002b8a:	a956      	add	r1, sp, #344	; 0x158
 8002b8c:	e000      	b.n	8002b90 <_vfprintf_r+0x5a8>
 8002b8e:	4639      	mov	r1, r7
 8002b90:	08e2      	lsrs	r2, r4, #3
 8002b92:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002b96:	08e8      	lsrs	r0, r5, #3
 8002b98:	f004 0307 	and.w	r3, r4, #7
 8002b9c:	4605      	mov	r5, r0
 8002b9e:	4614      	mov	r4, r2
 8002ba0:	3330      	adds	r3, #48	; 0x30
 8002ba2:	ea54 0205 	orrs.w	r2, r4, r5
 8002ba6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002baa:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002bae:	d1ee      	bne.n	8002b8e <_vfprintf_r+0x5a6>
 8002bb0:	f018 0f01 	tst.w	r8, #1
 8002bb4:	f000 8314 	beq.w	80031e0 <_vfprintf_r+0xbf8>
 8002bb8:	2b30      	cmp	r3, #48	; 0x30
 8002bba:	f000 8311 	beq.w	80031e0 <_vfprintf_r+0xbf8>
 8002bbe:	9a04      	ldr	r2, [sp, #16]
 8002bc0:	3902      	subs	r1, #2
 8002bc2:	2330      	movs	r3, #48	; 0x30
 8002bc4:	1a52      	subs	r2, r2, r1
 8002bc6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002bca:	9209      	str	r2, [sp, #36]	; 0x24
 8002bcc:	460f      	mov	r7, r1
 8002bce:	e68c      	b.n	80028ea <_vfprintf_r+0x302>
 8002bd0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002bd4:	2200      	movs	r2, #0
 8002bd6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002bda:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002bde:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002be2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002be6:	2b09      	cmp	r3, #9
 8002be8:	d9f5      	bls.n	8002bd6 <_vfprintf_r+0x5ee>
 8002bea:	9206      	str	r2, [sp, #24]
 8002bec:	e57c      	b.n	80026e8 <_vfprintf_r+0x100>
 8002bee:	4b14      	ldr	r3, [pc, #80]	; (8002c40 <_vfprintf_r+0x658>)
 8002bf0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002bf2:	f018 0f20 	tst.w	r8, #32
 8002bf6:	f000 8114 	beq.w	8002e22 <_vfprintf_r+0x83a>
 8002bfa:	9c08      	ldr	r4, [sp, #32]
 8002bfc:	3407      	adds	r4, #7
 8002bfe:	f024 0307 	bic.w	r3, r4, #7
 8002c02:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002c06:	f103 0208 	add.w	r2, r3, #8
 8002c0a:	9208      	str	r2, [sp, #32]
 8002c0c:	f018 0f01 	tst.w	r8, #1
 8002c10:	d009      	beq.n	8002c26 <_vfprintf_r+0x63e>
 8002c12:	ea54 0305 	orrs.w	r3, r4, r5
 8002c16:	d006      	beq.n	8002c26 <_vfprintf_r+0x63e>
 8002c18:	2330      	movs	r3, #48	; 0x30
 8002c1a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002c1e:	f048 0802 	orr.w	r8, r8, #2
 8002c22:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002c26:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002c2a:	2202      	movs	r2, #2
 8002c2c:	e79d      	b.n	8002b6a <_vfprintf_r+0x582>
 8002c2e:	f048 0801 	orr.w	r8, r8, #1
 8002c32:	f89a 6000 	ldrb.w	r6, [sl]
 8002c36:	e555      	b.n	80026e4 <_vfprintf_r+0xfc>
 8002c38:	0800742c 	.word	0x0800742c
 8002c3c:	0800743c 	.word	0x0800743c
 8002c40:	080073f8 	.word	0x080073f8
 8002c44:	9e03      	ldr	r6, [sp, #12]
 8002c46:	4630      	mov	r0, r6
 8002c48:	f002 feaa 	bl	80059a0 <_localeconv_r>
 8002c4c:	6843      	ldr	r3, [r0, #4]
 8002c4e:	9318      	str	r3, [sp, #96]	; 0x60
 8002c50:	4618      	mov	r0, r3
 8002c52:	f7fd fcf5 	bl	8000640 <strlen>
 8002c56:	901b      	str	r0, [sp, #108]	; 0x6c
 8002c58:	4604      	mov	r4, r0
 8002c5a:	4630      	mov	r0, r6
 8002c5c:	f002 fea0 	bl	80059a0 <_localeconv_r>
 8002c60:	6883      	ldr	r3, [r0, #8]
 8002c62:	931a      	str	r3, [sp, #104]	; 0x68
 8002c64:	2c00      	cmp	r4, #0
 8002c66:	f43f adb8 	beq.w	80027da <_vfprintf_r+0x1f2>
 8002c6a:	f89a 6000 	ldrb.w	r6, [sl]
 8002c6e:	2b00      	cmp	r3, #0
 8002c70:	f43f ad38 	beq.w	80026e4 <_vfprintf_r+0xfc>
 8002c74:	781b      	ldrb	r3, [r3, #0]
 8002c76:	2b00      	cmp	r3, #0
 8002c78:	f43f ad34 	beq.w	80026e4 <_vfprintf_r+0xfc>
 8002c7c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002c80:	e530      	b.n	80026e4 <_vfprintf_r+0xfc>
 8002c82:	9b08      	ldr	r3, [sp, #32]
 8002c84:	f89a 6000 	ldrb.w	r6, [sl]
 8002c88:	681a      	ldr	r2, [r3, #0]
 8002c8a:	9206      	str	r2, [sp, #24]
 8002c8c:	2a00      	cmp	r2, #0
 8002c8e:	f103 0304 	add.w	r3, r3, #4
 8002c92:	f2c0 8697 	blt.w	80039c4 <_vfprintf_r+0x13dc>
 8002c96:	9308      	str	r3, [sp, #32]
 8002c98:	e524      	b.n	80026e4 <_vfprintf_r+0xfc>
 8002c9a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002c9e:	f89a 6000 	ldrb.w	r6, [sl]
 8002ca2:	e51f      	b.n	80026e4 <_vfprintf_r+0xfc>
 8002ca4:	f89a 6000 	ldrb.w	r6, [sl]
 8002ca8:	f048 0804 	orr.w	r8, r8, #4
 8002cac:	e51a      	b.n	80026e4 <_vfprintf_r+0xfc>
 8002cae:	f89a 6000 	ldrb.w	r6, [sl]
 8002cb2:	2e2a      	cmp	r6, #42	; 0x2a
 8002cb4:	f10a 0201 	add.w	r2, sl, #1
 8002cb8:	f001 81b0 	beq.w	800401c <_vfprintf_r+0x1a34>
 8002cbc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002cc0:	2b09      	cmp	r3, #9
 8002cc2:	4692      	mov	sl, r2
 8002cc4:	f04f 0900 	mov.w	r9, #0
 8002cc8:	f63f ad0e 	bhi.w	80026e8 <_vfprintf_r+0x100>
 8002ccc:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002cd0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002cd4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002cd8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002cdc:	2b09      	cmp	r3, #9
 8002cde:	d9f5      	bls.n	8002ccc <_vfprintf_r+0x6e4>
 8002ce0:	e502      	b.n	80026e8 <_vfprintf_r+0x100>
 8002ce2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002ce6:	f89a 6000 	ldrb.w	r6, [sl]
 8002cea:	e4fb      	b.n	80026e4 <_vfprintf_r+0xfc>
 8002cec:	9c08      	ldr	r4, [sp, #32]
 8002cee:	3407      	adds	r4, #7
 8002cf0:	f024 0407 	bic.w	r4, r4, #7
 8002cf4:	ed94 7b00 	vldr	d7, [r4]
 8002cf8:	ec52 1b17 	vmov	r1, r2, d7
 8002cfc:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002d00:	931d      	str	r3, [sp, #116]	; 0x74
 8002d02:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002d06:	3408      	adds	r4, #8
 8002d08:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002d0c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002d10:	4bba      	ldr	r3, [pc, #744]	; (8002ffc <_vfprintf_r+0xa14>)
 8002d12:	9408      	str	r4, [sp, #32]
 8002d14:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002d18:	f7fe f9a8 	bl	800106c <__aeabi_dcmpun>
 8002d1c:	2800      	cmp	r0, #0
 8002d1e:	f040 846f 	bne.w	8003600 <_vfprintf_r+0x1018>
 8002d22:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002d26:	4bb5      	ldr	r3, [pc, #724]	; (8002ffc <_vfprintf_r+0xa14>)
 8002d28:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002d2c:	f7fe f980 	bl	8001030 <__aeabi_dcmple>
 8002d30:	2800      	cmp	r0, #0
 8002d32:	f040 8465 	bne.w	8003600 <_vfprintf_r+0x1018>
 8002d36:	2200      	movs	r2, #0
 8002d38:	2300      	movs	r3, #0
 8002d3a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002d3e:	f7fe f96d 	bl	800101c <__aeabi_dcmplt>
 8002d42:	2800      	cmp	r0, #0
 8002d44:	f040 855b 	bne.w	80037fe <_vfprintf_r+0x1216>
 8002d48:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d4c:	4fac      	ldr	r7, [pc, #688]	; (8003000 <_vfprintf_r+0xa18>)
 8002d4e:	4bad      	ldr	r3, [pc, #692]	; (8003004 <_vfprintf_r+0xa1c>)
 8002d50:	2000      	movs	r0, #0
 8002d52:	2103      	movs	r1, #3
 8002d54:	9104      	str	r1, [sp, #16]
 8002d56:	900a      	str	r0, [sp, #40]	; 0x28
 8002d58:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002d5c:	2e47      	cmp	r6, #71	; 0x47
 8002d5e:	bfd8      	it	le
 8002d60:	461f      	movle	r7, r3
 8002d62:	9109      	str	r1, [sp, #36]	; 0x24
 8002d64:	4681      	mov	r9, r0
 8002d66:	900f      	str	r0, [sp, #60]	; 0x3c
 8002d68:	9014      	str	r0, [sp, #80]	; 0x50
 8002d6a:	9011      	str	r0, [sp, #68]	; 0x44
 8002d6c:	e5c9      	b.n	8002902 <_vfprintf_r+0x31a>
 8002d6e:	9808      	ldr	r0, [sp, #32]
 8002d70:	2300      	movs	r3, #0
 8002d72:	6801      	ldr	r1, [r0, #0]
 8002d74:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002d78:	461a      	mov	r2, r3
 8002d7a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002d7e:	2301      	movs	r3, #1
 8002d80:	1d01      	adds	r1, r0, #4
 8002d82:	9304      	str	r3, [sp, #16]
 8002d84:	920a      	str	r2, [sp, #40]	; 0x28
 8002d86:	4691      	mov	r9, r2
 8002d88:	920f      	str	r2, [sp, #60]	; 0x3c
 8002d8a:	9214      	str	r2, [sp, #80]	; 0x50
 8002d8c:	9211      	str	r2, [sp, #68]	; 0x44
 8002d8e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002d92:	af3d      	add	r7, sp, #244	; 0xf4
 8002d94:	e5b9      	b.n	800290a <_vfprintf_r+0x322>
 8002d96:	9b08      	ldr	r3, [sp, #32]
 8002d98:	681f      	ldr	r7, [r3, #0]
 8002d9a:	2500      	movs	r5, #0
 8002d9c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002da0:	1d1c      	adds	r4, r3, #4
 8002da2:	2f00      	cmp	r7, #0
 8002da4:	f000 8639 	beq.w	8003a1a <_vfprintf_r+0x1432>
 8002da8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002dac:	f000 8711 	beq.w	8003bd2 <_vfprintf_r+0x15ea>
 8002db0:	464a      	mov	r2, r9
 8002db2:	4629      	mov	r1, r5
 8002db4:	4638      	mov	r0, r7
 8002db6:	f7fd fcb3 	bl	8000720 <memchr>
 8002dba:	900a      	str	r0, [sp, #40]	; 0x28
 8002dbc:	2800      	cmp	r0, #0
 8002dbe:	f000 85e7 	beq.w	8003990 <_vfprintf_r+0x13a8>
 8002dc2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002dc4:	1bdb      	subs	r3, r3, r7
 8002dc6:	9309      	str	r3, [sp, #36]	; 0x24
 8002dc8:	46a9      	mov	r9, r5
 8002dca:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002dce:	9408      	str	r4, [sp, #32]
 8002dd0:	9304      	str	r3, [sp, #16]
 8002dd2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002dd6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002dda:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002dde:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002de2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002de6:	e58c      	b.n	8002902 <_vfprintf_r+0x31a>
 8002de8:	f048 0310 	orr.w	r3, r8, #16
 8002dec:	069a      	lsls	r2, r3, #26
 8002dee:	f53f aeb2 	bmi.w	8002b56 <_vfprintf_r+0x56e>
 8002df2:	9a08      	ldr	r2, [sp, #32]
 8002df4:	06df      	lsls	r7, r3, #27
 8002df6:	f102 0104 	add.w	r1, r2, #4
 8002dfa:	f100 837e 	bmi.w	80034fa <_vfprintf_r+0xf12>
 8002dfe:	065d      	lsls	r5, r3, #25
 8002e00:	9a08      	ldr	r2, [sp, #32]
 8002e02:	f100 84e4 	bmi.w	80037ce <_vfprintf_r+0x11e6>
 8002e06:	059c      	lsls	r4, r3, #22
 8002e08:	f140 8377 	bpl.w	80034fa <_vfprintf_r+0xf12>
 8002e0c:	7814      	ldrb	r4, [r2, #0]
 8002e0e:	9108      	str	r1, [sp, #32]
 8002e10:	2500      	movs	r5, #0
 8002e12:	2201      	movs	r2, #1
 8002e14:	e6a9      	b.n	8002b6a <_vfprintf_r+0x582>
 8002e16:	4b7c      	ldr	r3, [pc, #496]	; (8003008 <_vfprintf_r+0xa20>)
 8002e18:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e1a:	f018 0f20 	tst.w	r8, #32
 8002e1e:	f47f aeec 	bne.w	8002bfa <_vfprintf_r+0x612>
 8002e22:	9a08      	ldr	r2, [sp, #32]
 8002e24:	f018 0f10 	tst.w	r8, #16
 8002e28:	f102 0304 	add.w	r3, r2, #4
 8002e2c:	f040 8354 	bne.w	80034d8 <_vfprintf_r+0xef0>
 8002e30:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002e34:	9a08      	ldr	r2, [sp, #32]
 8002e36:	f040 84d0 	bne.w	80037da <_vfprintf_r+0x11f2>
 8002e3a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002e3e:	f000 834b 	beq.w	80034d8 <_vfprintf_r+0xef0>
 8002e42:	7814      	ldrb	r4, [r2, #0]
 8002e44:	9308      	str	r3, [sp, #32]
 8002e46:	2500      	movs	r5, #0
 8002e48:	e6e0      	b.n	8002c0c <_vfprintf_r+0x624>
 8002e4a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002e4e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e52:	2b00      	cmp	r3, #0
 8002e54:	f47f ac46 	bne.w	80026e4 <_vfprintf_r+0xfc>
 8002e58:	2320      	movs	r3, #32
 8002e5a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002e5e:	e441      	b.n	80026e4 <_vfprintf_r+0xfc>
 8002e60:	f89a 6000 	ldrb.w	r6, [sl]
 8002e64:	2e6c      	cmp	r6, #108	; 0x6c
 8002e66:	bf03      	ittte	eq
 8002e68:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002e6c:	f048 0820 	orreq.w	r8, r8, #32
 8002e70:	f10a 0a01 	addeq.w	sl, sl, #1
 8002e74:	f048 0810 	orrne.w	r8, r8, #16
 8002e78:	e434      	b.n	80026e4 <_vfprintf_r+0xfc>
 8002e7a:	9a08      	ldr	r2, [sp, #32]
 8002e7c:	f018 0f20 	tst.w	r8, #32
 8002e80:	f852 3b04 	ldr.w	r3, [r2], #4
 8002e84:	9208      	str	r2, [sp, #32]
 8002e86:	f000 83a1 	beq.w	80035cc <_vfprintf_r+0xfe4>
 8002e8a:	9a05      	ldr	r2, [sp, #20]
 8002e8c:	4610      	mov	r0, r2
 8002e8e:	17d1      	asrs	r1, r2, #31
 8002e90:	e9c3 0100 	strd	r0, r1, [r3]
 8002e94:	4657      	mov	r7, sl
 8002e96:	e64d      	b.n	8002b34 <_vfprintf_r+0x54c>
 8002e98:	f89a 6000 	ldrb.w	r6, [sl]
 8002e9c:	2e68      	cmp	r6, #104	; 0x68
 8002e9e:	bf03      	ittte	eq
 8002ea0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002ea4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002ea8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002eac:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002eb0:	e418      	b.n	80026e4 <_vfprintf_r+0xfc>
 8002eb2:	9908      	ldr	r1, [sp, #32]
 8002eb4:	4b55      	ldr	r3, [pc, #340]	; (800300c <_vfprintf_r+0xa24>)
 8002eb6:	680c      	ldr	r4, [r1, #0]
 8002eb8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002eba:	f647 0230 	movw	r2, #30768	; 0x7830
 8002ebe:	3104      	adds	r1, #4
 8002ec0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002ec4:	f048 0302 	orr.w	r3, r8, #2
 8002ec8:	9108      	str	r1, [sp, #32]
 8002eca:	2500      	movs	r5, #0
 8002ecc:	2202      	movs	r2, #2
 8002ece:	2678      	movs	r6, #120	; 0x78
 8002ed0:	e64b      	b.n	8002b6a <_vfprintf_r+0x582>
 8002ed2:	f048 0808 	orr.w	r8, r8, #8
 8002ed6:	f89a 6000 	ldrb.w	r6, [sl]
 8002eda:	e403      	b.n	80026e4 <_vfprintf_r+0xfc>
 8002edc:	f048 0310 	orr.w	r3, r8, #16
 8002ee0:	069f      	lsls	r7, r3, #26
 8002ee2:	f53f acd1 	bmi.w	8002888 <_vfprintf_r+0x2a0>
 8002ee6:	9908      	ldr	r1, [sp, #32]
 8002ee8:	06dd      	lsls	r5, r3, #27
 8002eea:	f101 0204 	add.w	r2, r1, #4
 8002eee:	f100 82fd 	bmi.w	80034ec <_vfprintf_r+0xf04>
 8002ef2:	065c      	lsls	r4, r3, #25
 8002ef4:	9908      	ldr	r1, [sp, #32]
 8002ef6:	f100 8475 	bmi.w	80037e4 <_vfprintf_r+0x11fc>
 8002efa:	0598      	lsls	r0, r3, #22
 8002efc:	f140 82f6 	bpl.w	80034ec <_vfprintf_r+0xf04>
 8002f00:	f991 4000 	ldrsb.w	r4, [r1]
 8002f04:	9208      	str	r2, [sp, #32]
 8002f06:	17e5      	asrs	r5, r4, #31
 8002f08:	4620      	mov	r0, r4
 8002f0a:	4629      	mov	r1, r5
 8002f0c:	e4c7      	b.n	800289e <_vfprintf_r+0x2b6>
 8002f0e:	9a08      	ldr	r2, [sp, #32]
 8002f10:	f018 0f10 	tst.w	r8, #16
 8002f14:	f102 0304 	add.w	r3, r2, #4
 8002f18:	f040 82e3 	bne.w	80034e2 <_vfprintf_r+0xefa>
 8002f1c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002f20:	9a08      	ldr	r2, [sp, #32]
 8002f22:	f040 8467 	bne.w	80037f4 <_vfprintf_r+0x120c>
 8002f26:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002f2a:	f000 82da 	beq.w	80034e2 <_vfprintf_r+0xefa>
 8002f2e:	7814      	ldrb	r4, [r2, #0]
 8002f30:	9308      	str	r3, [sp, #32]
 8002f32:	2500      	movs	r5, #0
 8002f34:	e488      	b.n	8002848 <_vfprintf_r+0x260>
 8002f36:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002f3a:	f002 fd45 	bl	80059c8 <__retarget_lock_release_recursive>
 8002f3e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002f42:	9305      	str	r3, [sp, #20]
 8002f44:	e443      	b.n	80027ce <_vfprintf_r+0x1e6>
 8002f46:	2e00      	cmp	r6, #0
 8002f48:	f43f adf8 	beq.w	8002b3c <_vfprintf_r+0x554>
 8002f4c:	2300      	movs	r3, #0
 8002f4e:	2101      	movs	r1, #1
 8002f50:	461a      	mov	r2, r3
 8002f52:	9104      	str	r1, [sp, #16]
 8002f54:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002f58:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002f5c:	930a      	str	r3, [sp, #40]	; 0x28
 8002f5e:	4699      	mov	r9, r3
 8002f60:	930f      	str	r3, [sp, #60]	; 0x3c
 8002f62:	9314      	str	r3, [sp, #80]	; 0x50
 8002f64:	9311      	str	r3, [sp, #68]	; 0x44
 8002f66:	9109      	str	r1, [sp, #36]	; 0x24
 8002f68:	af3d      	add	r7, sp, #244	; 0xf4
 8002f6a:	e4ce      	b.n	800290a <_vfprintf_r+0x322>
 8002f6c:	2e65      	cmp	r6, #101	; 0x65
 8002f6e:	f340 80ca 	ble.w	8003106 <_vfprintf_r+0xb1e>
 8002f72:	2200      	movs	r2, #0
 8002f74:	2300      	movs	r3, #0
 8002f76:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002f7a:	f7fe f845 	bl	8001008 <__aeabi_dcmpeq>
 8002f7e:	2800      	cmp	r0, #0
 8002f80:	f000 8169 	beq.w	8003256 <_vfprintf_r+0xc6e>
 8002f84:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f86:	4a22      	ldr	r2, [pc, #136]	; (8003010 <_vfprintf_r+0xa28>)
 8002f88:	f8cb 2000 	str.w	r2, [fp]
 8002f8c:	3301      	adds	r3, #1
 8002f8e:	3401      	adds	r4, #1
 8002f90:	2201      	movs	r2, #1
 8002f92:	2b07      	cmp	r3, #7
 8002f94:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f98:	f8cb 2004 	str.w	r2, [fp, #4]
 8002f9c:	f300 8406 	bgt.w	80037ac <_vfprintf_r+0x11c4>
 8002fa0:	f10b 0b08 	add.w	fp, fp, #8
 8002fa4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002fa6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002fa8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002faa:	4293      	cmp	r3, r2
 8002fac:	db03      	blt.n	8002fb6 <_vfprintf_r+0x9ce>
 8002fae:	f018 0f01 	tst.w	r8, #1
 8002fb2:	f43f ad6a 	beq.w	8002a8a <_vfprintf_r+0x4a2>
 8002fb6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002fb8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002fba:	f8cb 2000 	str.w	r2, [fp]
 8002fbe:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002fc0:	f8cb 2004 	str.w	r2, [fp, #4]
 8002fc4:	3301      	adds	r3, #1
 8002fc6:	4414      	add	r4, r2
 8002fc8:	2b07      	cmp	r3, #7
 8002fca:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002fce:	f300 8517 	bgt.w	8003a00 <_vfprintf_r+0x1418>
 8002fd2:	f10b 0b08 	add.w	fp, fp, #8
 8002fd6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002fd8:	1e5d      	subs	r5, r3, #1
 8002fda:	2d00      	cmp	r5, #0
 8002fdc:	f77f ad55 	ble.w	8002a8a <_vfprintf_r+0x4a2>
 8002fe0:	2d10      	cmp	r5, #16
 8002fe2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002fe4:	4b0b      	ldr	r3, [pc, #44]	; (8003014 <_vfprintf_r+0xa2c>)
 8002fe6:	f340 82e7 	ble.w	80035b8 <_vfprintf_r+0xfd0>
 8002fea:	4619      	mov	r1, r3
 8002fec:	2610      	movs	r6, #16
 8002fee:	4623      	mov	r3, r4
 8002ff0:	9f03      	ldr	r7, [sp, #12]
 8002ff2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002ff6:	460c      	mov	r4, r1
 8002ff8:	e014      	b.n	8003024 <_vfprintf_r+0xa3c>
 8002ffa:	bf00      	nop
 8002ffc:	7fefffff 	.word	0x7fefffff
 8003000:	080073ec 	.word	0x080073ec
 8003004:	080073e8 	.word	0x080073e8
 8003008:	0800740c 	.word	0x0800740c
 800300c:	080073f8 	.word	0x080073f8
 8003010:	08007428 	.word	0x08007428
 8003014:	0800743c 	.word	0x0800743c
 8003018:	f10b 0b08 	add.w	fp, fp, #8
 800301c:	3d10      	subs	r5, #16
 800301e:	2d10      	cmp	r5, #16
 8003020:	f340 82c7 	ble.w	80035b2 <_vfprintf_r+0xfca>
 8003024:	3201      	adds	r2, #1
 8003026:	3310      	adds	r3, #16
 8003028:	2a07      	cmp	r2, #7
 800302a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800302e:	e9cb 4600 	strd	r4, r6, [fp]
 8003032:	ddf1      	ble.n	8003018 <_vfprintf_r+0xa30>
 8003034:	aa2a      	add	r2, sp, #168	; 0xa8
 8003036:	4649      	mov	r1, r9
 8003038:	4638      	mov	r0, r7
 800303a:	f003 fe03 	bl	8006c44 <__sprint_r>
 800303e:	2800      	cmp	r0, #0
 8003040:	d14c      	bne.n	80030dc <_vfprintf_r+0xaf4>
 8003042:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003046:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800304a:	e7e7      	b.n	800301c <_vfprintf_r+0xa34>
 800304c:	9b06      	ldr	r3, [sp, #24]
 800304e:	9a04      	ldr	r2, [sp, #16]
 8003050:	1a9d      	subs	r5, r3, r2
 8003052:	2d00      	cmp	r5, #0
 8003054:	f77f acc9 	ble.w	80029ea <_vfprintf_r+0x402>
 8003058:	2d10      	cmp	r5, #16
 800305a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800305c:	4bbc      	ldr	r3, [pc, #752]	; (8003350 <_vfprintf_r+0xd68>)
 800305e:	dd27      	ble.n	80030b0 <_vfprintf_r+0xac8>
 8003060:	4659      	mov	r1, fp
 8003062:	4620      	mov	r0, r4
 8003064:	46bb      	mov	fp, r7
 8003066:	461c      	mov	r4, r3
 8003068:	4637      	mov	r7, r6
 800306a:	9e07      	ldr	r6, [sp, #28]
 800306c:	e004      	b.n	8003078 <_vfprintf_r+0xa90>
 800306e:	3d10      	subs	r5, #16
 8003070:	2d10      	cmp	r5, #16
 8003072:	f101 0108 	add.w	r1, r1, #8
 8003076:	dd16      	ble.n	80030a6 <_vfprintf_r+0xabe>
 8003078:	3201      	adds	r2, #1
 800307a:	3010      	adds	r0, #16
 800307c:	2310      	movs	r3, #16
 800307e:	2a07      	cmp	r2, #7
 8003080:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003084:	600c      	str	r4, [r1, #0]
 8003086:	604b      	str	r3, [r1, #4]
 8003088:	ddf1      	ble.n	800306e <_vfprintf_r+0xa86>
 800308a:	aa2a      	add	r2, sp, #168	; 0xa8
 800308c:	4631      	mov	r1, r6
 800308e:	9803      	ldr	r0, [sp, #12]
 8003090:	f003 fdd8 	bl	8006c44 <__sprint_r>
 8003094:	2800      	cmp	r0, #0
 8003096:	f040 80a8 	bne.w	80031ea <_vfprintf_r+0xc02>
 800309a:	3d10      	subs	r5, #16
 800309c:	2d10      	cmp	r5, #16
 800309e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80030a2:	a92d      	add	r1, sp, #180	; 0xb4
 80030a4:	dce8      	bgt.n	8003078 <_vfprintf_r+0xa90>
 80030a6:	463e      	mov	r6, r7
 80030a8:	4623      	mov	r3, r4
 80030aa:	465f      	mov	r7, fp
 80030ac:	4604      	mov	r4, r0
 80030ae:	468b      	mov	fp, r1
 80030b0:	3201      	adds	r2, #1
 80030b2:	442c      	add	r4, r5
 80030b4:	2a07      	cmp	r2, #7
 80030b6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80030ba:	e9cb 3500 	strd	r3, r5, [fp]
 80030be:	f300 8292 	bgt.w	80035e6 <_vfprintf_r+0xffe>
 80030c2:	f10b 0b08 	add.w	fp, fp, #8
 80030c6:	e490      	b.n	80029ea <_vfprintf_r+0x402>
 80030c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80030ca:	9907      	ldr	r1, [sp, #28]
 80030cc:	9803      	ldr	r0, [sp, #12]
 80030ce:	f003 fdb9 	bl	8006c44 <__sprint_r>
 80030d2:	2800      	cmp	r0, #0
 80030d4:	f43f ad23 	beq.w	8002b1e <_vfprintf_r+0x536>
 80030d8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80030dc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80030de:	b111      	cbz	r1, 80030e6 <_vfprintf_r+0xafe>
 80030e0:	9803      	ldr	r0, [sp, #12]
 80030e2:	f002 f9c1 	bl	8005468 <_free_r>
 80030e6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80030ea:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80030ee:	07d0      	lsls	r0, r2, #31
 80030f0:	d402      	bmi.n	80030f8 <_vfprintf_r+0xb10>
 80030f2:	0599      	lsls	r1, r3, #22
 80030f4:	f140 81d0 	bpl.w	8003498 <_vfprintf_r+0xeb0>
 80030f8:	065a      	lsls	r2, r3, #25
 80030fa:	f53f ab65 	bmi.w	80027c8 <_vfprintf_r+0x1e0>
 80030fe:	9805      	ldr	r0, [sp, #20]
 8003100:	b057      	add	sp, #348	; 0x15c
 8003102:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003106:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003108:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800310a:	2a01      	cmp	r2, #1
 800310c:	f104 0401 	add.w	r4, r4, #1
 8003110:	f103 0501 	add.w	r5, r3, #1
 8003114:	f10b 0608 	add.w	r6, fp, #8
 8003118:	f340 811c 	ble.w	8003354 <_vfprintf_r+0xd6c>
 800311c:	2301      	movs	r3, #1
 800311e:	2d07      	cmp	r5, #7
 8003120:	f8cb 7000 	str.w	r7, [fp]
 8003124:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003128:	f8cb 3004 	str.w	r3, [fp, #4]
 800312c:	f300 81bb 	bgt.w	80034a6 <_vfprintf_r+0xebe>
 8003130:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003132:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003134:	1c69      	adds	r1, r5, #1
 8003136:	441c      	add	r4, r3
 8003138:	2907      	cmp	r1, #7
 800313a:	910b      	str	r1, [sp, #44]	; 0x2c
 800313c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003140:	e9c6 2300 	strd	r2, r3, [r6]
 8003144:	f300 81bb 	bgt.w	80034be <_vfprintf_r+0xed6>
 8003148:	3608      	adds	r6, #8
 800314a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800314c:	1c53      	adds	r3, r2, #1
 800314e:	461d      	mov	r5, r3
 8003150:	9509      	str	r5, [sp, #36]	; 0x24
 8003152:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003154:	930e      	str	r3, [sp, #56]	; 0x38
 8003156:	2200      	movs	r2, #0
 8003158:	2300      	movs	r3, #0
 800315a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800315e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003162:	f106 0b08 	add.w	fp, r6, #8
 8003166:	f7fd ff4f 	bl	8001008 <__aeabi_dcmpeq>
 800316a:	2800      	cmp	r0, #0
 800316c:	f040 80c2 	bne.w	80032f4 <_vfprintf_r+0xd0c>
 8003170:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003172:	f8c6 9004 	str.w	r9, [r6, #4]
 8003176:	3701      	adds	r7, #1
 8003178:	444c      	add	r4, r9
 800317a:	2d07      	cmp	r5, #7
 800317c:	6037      	str	r7, [r6, #0]
 800317e:	942c      	str	r4, [sp, #176]	; 0xb0
 8003180:	952b      	str	r5, [sp, #172]	; 0xac
 8003182:	f300 80f9 	bgt.w	8003378 <_vfprintf_r+0xd90>
 8003186:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003188:	f106 0310 	add.w	r3, r6, #16
 800318c:	3202      	adds	r2, #2
 800318e:	465e      	mov	r6, fp
 8003190:	9209      	str	r2, [sp, #36]	; 0x24
 8003192:	469b      	mov	fp, r3
 8003194:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003196:	6072      	str	r2, [r6, #4]
 8003198:	4414      	add	r4, r2
 800319a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800319c:	942c      	str	r4, [sp, #176]	; 0xb0
 800319e:	ab26      	add	r3, sp, #152	; 0x98
 80031a0:	2a07      	cmp	r2, #7
 80031a2:	922b      	str	r2, [sp, #172]	; 0xac
 80031a4:	6033      	str	r3, [r6, #0]
 80031a6:	f77f ac70 	ble.w	8002a8a <_vfprintf_r+0x4a2>
 80031aa:	aa2a      	add	r2, sp, #168	; 0xa8
 80031ac:	9907      	ldr	r1, [sp, #28]
 80031ae:	9803      	ldr	r0, [sp, #12]
 80031b0:	f003 fd48 	bl	8006c44 <__sprint_r>
 80031b4:	2800      	cmp	r0, #0
 80031b6:	d18f      	bne.n	80030d8 <_vfprintf_r+0xaf0>
 80031b8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031ba:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031be:	e464      	b.n	8002a8a <_vfprintf_r+0x4a2>
 80031c0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80031c2:	af56      	add	r7, sp, #344	; 0x158
 80031c4:	0923      	lsrs	r3, r4, #4
 80031c6:	f004 010f 	and.w	r1, r4, #15
 80031ca:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80031ce:	092a      	lsrs	r2, r5, #4
 80031d0:	461c      	mov	r4, r3
 80031d2:	4615      	mov	r5, r2
 80031d4:	5c43      	ldrb	r3, [r0, r1]
 80031d6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80031da:	ea54 0305 	orrs.w	r3, r4, r5
 80031de:	d1f1      	bne.n	80031c4 <_vfprintf_r+0xbdc>
 80031e0:	9b04      	ldr	r3, [sp, #16]
 80031e2:	1bdb      	subs	r3, r3, r7
 80031e4:	9309      	str	r3, [sp, #36]	; 0x24
 80031e6:	f7ff bb80 	b.w	80028ea <_vfprintf_r+0x302>
 80031ea:	46b1      	mov	r9, r6
 80031ec:	e776      	b.n	80030dc <_vfprintf_r+0xaf4>
 80031ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80031f0:	9907      	ldr	r1, [sp, #28]
 80031f2:	9803      	ldr	r0, [sp, #12]
 80031f4:	f003 fd26 	bl	8006c44 <__sprint_r>
 80031f8:	2800      	cmp	r0, #0
 80031fa:	f47f af6d 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 80031fe:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003200:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003204:	f7ff bbdd 	b.w	80029c2 <_vfprintf_r+0x3da>
 8003208:	aa2a      	add	r2, sp, #168	; 0xa8
 800320a:	9907      	ldr	r1, [sp, #28]
 800320c:	9803      	ldr	r0, [sp, #12]
 800320e:	f003 fd19 	bl	8006c44 <__sprint_r>
 8003212:	2800      	cmp	r0, #0
 8003214:	f47f af60 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 8003218:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800321a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800321e:	f7ff bbe0 	b.w	80029e2 <_vfprintf_r+0x3fa>
 8003222:	4698      	mov	r8, r3
 8003224:	2d00      	cmp	r5, #0
 8003226:	bf08      	it	eq
 8003228:	2c0a      	cmpeq	r4, #10
 800322a:	f080 8170 	bcs.w	800350e <_vfprintf_r+0xf26>
 800322e:	af56      	add	r7, sp, #344	; 0x158
 8003230:	3430      	adds	r4, #48	; 0x30
 8003232:	2301      	movs	r3, #1
 8003234:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003238:	9309      	str	r3, [sp, #36]	; 0x24
 800323a:	f7ff bb56 	b.w	80028ea <_vfprintf_r+0x302>
 800323e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003240:	9907      	ldr	r1, [sp, #28]
 8003242:	9803      	ldr	r0, [sp, #12]
 8003244:	f003 fcfe 	bl	8006c44 <__sprint_r>
 8003248:	2800      	cmp	r0, #0
 800324a:	f47f af45 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 800324e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003250:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003254:	e406      	b.n	8002a64 <_vfprintf_r+0x47c>
 8003256:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003258:	2b00      	cmp	r3, #0
 800325a:	f340 8273 	ble.w	8003744 <_vfprintf_r+0x115c>
 800325e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003262:	4293      	cmp	r3, r2
 8003264:	bfa8      	it	ge
 8003266:	4613      	movge	r3, r2
 8003268:	2b00      	cmp	r3, #0
 800326a:	461d      	mov	r5, r3
 800326c:	dd0d      	ble.n	800328a <_vfprintf_r+0xca2>
 800326e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003270:	f8cb 7000 	str.w	r7, [fp]
 8003274:	3301      	adds	r3, #1
 8003276:	442c      	add	r4, r5
 8003278:	2b07      	cmp	r3, #7
 800327a:	942c      	str	r4, [sp, #176]	; 0xb0
 800327c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003280:	932b      	str	r3, [sp, #172]	; 0xac
 8003282:	f300 82c1 	bgt.w	8003808 <_vfprintf_r+0x1220>
 8003286:	f10b 0b08 	add.w	fp, fp, #8
 800328a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800328c:	2d00      	cmp	r5, #0
 800328e:	bfa8      	it	ge
 8003290:	1b5b      	subge	r3, r3, r5
 8003292:	2b00      	cmp	r3, #0
 8003294:	461d      	mov	r5, r3
 8003296:	f340 8099 	ble.w	80033cc <_vfprintf_r+0xde4>
 800329a:	2d10      	cmp	r5, #16
 800329c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800329e:	4b2c      	ldr	r3, [pc, #176]	; (8003350 <_vfprintf_r+0xd68>)
 80032a0:	f340 83db 	ble.w	8003a5a <_vfprintf_r+0x1472>
 80032a4:	4618      	mov	r0, r3
 80032a6:	4621      	mov	r1, r4
 80032a8:	465b      	mov	r3, fp
 80032aa:	2610      	movs	r6, #16
 80032ac:	46bb      	mov	fp, r7
 80032ae:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80032b2:	9c07      	ldr	r4, [sp, #28]
 80032b4:	4607      	mov	r7, r0
 80032b6:	e004      	b.n	80032c2 <_vfprintf_r+0xcda>
 80032b8:	3308      	adds	r3, #8
 80032ba:	3d10      	subs	r5, #16
 80032bc:	2d10      	cmp	r5, #16
 80032be:	f340 83c7 	ble.w	8003a50 <_vfprintf_r+0x1468>
 80032c2:	3201      	adds	r2, #1
 80032c4:	3110      	adds	r1, #16
 80032c6:	2a07      	cmp	r2, #7
 80032c8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80032cc:	e9c3 7600 	strd	r7, r6, [r3]
 80032d0:	ddf2      	ble.n	80032b8 <_vfprintf_r+0xcd0>
 80032d2:	aa2a      	add	r2, sp, #168	; 0xa8
 80032d4:	4621      	mov	r1, r4
 80032d6:	4648      	mov	r0, r9
 80032d8:	f003 fcb4 	bl	8006c44 <__sprint_r>
 80032dc:	2800      	cmp	r0, #0
 80032de:	f040 84a5 	bne.w	8003c2c <_vfprintf_r+0x1644>
 80032e2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80032e6:	ab2d      	add	r3, sp, #180	; 0xb4
 80032e8:	e7e7      	b.n	80032ba <_vfprintf_r+0xcd2>
 80032ea:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80032ee:	af56      	add	r7, sp, #344	; 0x158
 80032f0:	f7ff bafb 	b.w	80028ea <_vfprintf_r+0x302>
 80032f4:	f1b9 0f00 	cmp.w	r9, #0
 80032f8:	f77f af4c 	ble.w	8003194 <_vfprintf_r+0xbac>
 80032fc:	f1b9 0f10 	cmp.w	r9, #16
 8003300:	4b13      	ldr	r3, [pc, #76]	; (8003350 <_vfprintf_r+0xd68>)
 8003302:	f340 8659 	ble.w	8003fb8 <_vfprintf_r+0x19d0>
 8003306:	4619      	mov	r1, r3
 8003308:	4622      	mov	r2, r4
 800330a:	4633      	mov	r3, r6
 800330c:	2710      	movs	r7, #16
 800330e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003312:	9c07      	ldr	r4, [sp, #28]
 8003314:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003316:	460e      	mov	r6, r1
 8003318:	e007      	b.n	800332a <_vfprintf_r+0xd42>
 800331a:	3308      	adds	r3, #8
 800331c:	f1a9 0910 	sub.w	r9, r9, #16
 8003320:	f1b9 0f10 	cmp.w	r9, #16
 8003324:	f340 8353 	ble.w	80039ce <_vfprintf_r+0x13e6>
 8003328:	3501      	adds	r5, #1
 800332a:	3210      	adds	r2, #16
 800332c:	2d07      	cmp	r5, #7
 800332e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003332:	e9c3 6700 	strd	r6, r7, [r3]
 8003336:	ddf0      	ble.n	800331a <_vfprintf_r+0xd32>
 8003338:	aa2a      	add	r2, sp, #168	; 0xa8
 800333a:	4621      	mov	r1, r4
 800333c:	4658      	mov	r0, fp
 800333e:	f003 fc81 	bl	8006c44 <__sprint_r>
 8003342:	2800      	cmp	r0, #0
 8003344:	f040 8472 	bne.w	8003c2c <_vfprintf_r+0x1644>
 8003348:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800334c:	ab2d      	add	r3, sp, #180	; 0xb4
 800334e:	e7e5      	b.n	800331c <_vfprintf_r+0xd34>
 8003350:	0800743c 	.word	0x0800743c
 8003354:	f018 0f01 	tst.w	r8, #1
 8003358:	f47f aee0 	bne.w	800311c <_vfprintf_r+0xb34>
 800335c:	2201      	movs	r2, #1
 800335e:	2d07      	cmp	r5, #7
 8003360:	f8cb 7000 	str.w	r7, [fp]
 8003364:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003368:	f8cb 2004 	str.w	r2, [fp, #4]
 800336c:	dc04      	bgt.n	8003378 <_vfprintf_r+0xd90>
 800336e:	3302      	adds	r3, #2
 8003370:	9309      	str	r3, [sp, #36]	; 0x24
 8003372:	f10b 0b10 	add.w	fp, fp, #16
 8003376:	e70d      	b.n	8003194 <_vfprintf_r+0xbac>
 8003378:	aa2a      	add	r2, sp, #168	; 0xa8
 800337a:	9907      	ldr	r1, [sp, #28]
 800337c:	9803      	ldr	r0, [sp, #12]
 800337e:	f003 fc61 	bl	8006c44 <__sprint_r>
 8003382:	2800      	cmp	r0, #0
 8003384:	f47f aea8 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 8003388:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800338c:	3301      	adds	r3, #1
 800338e:	9309      	str	r3, [sp, #36]	; 0x24
 8003390:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003394:	ae2d      	add	r6, sp, #180	; 0xb4
 8003396:	e6fd      	b.n	8003194 <_vfprintf_r+0xbac>
 8003398:	aa2a      	add	r2, sp, #168	; 0xa8
 800339a:	9907      	ldr	r1, [sp, #28]
 800339c:	9803      	ldr	r0, [sp, #12]
 800339e:	f003 fc51 	bl	8006c44 <__sprint_r>
 80033a2:	2800      	cmp	r0, #0
 80033a4:	f47f ae98 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 80033a8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80033ac:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033ae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033b2:	f7ff baf6 	b.w	80029a2 <_vfprintf_r+0x3ba>
 80033b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80033b8:	9907      	ldr	r1, [sp, #28]
 80033ba:	9803      	ldr	r0, [sp, #12]
 80033bc:	f003 fc42 	bl	8006c44 <__sprint_r>
 80033c0:	2800      	cmp	r0, #0
 80033c2:	f47f ae89 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 80033c6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033cc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80033ce:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80033d2:	443b      	add	r3, r7
 80033d4:	4699      	mov	r9, r3
 80033d6:	f040 8357 	bne.w	8003a88 <_vfprintf_r+0x14a0>
 80033da:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80033dc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033de:	4293      	cmp	r3, r2
 80033e0:	db49      	blt.n	8003476 <_vfprintf_r+0xe8e>
 80033e2:	f018 0f01 	tst.w	r8, #1
 80033e6:	d146      	bne.n	8003476 <_vfprintf_r+0xe8e>
 80033e8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033ea:	18bd      	adds	r5, r7, r2
 80033ec:	eba5 0509 	sub.w	r5, r5, r9
 80033f0:	1ad3      	subs	r3, r2, r3
 80033f2:	429d      	cmp	r5, r3
 80033f4:	bfa8      	it	ge
 80033f6:	461d      	movge	r5, r3
 80033f8:	2d00      	cmp	r5, #0
 80033fa:	dd0d      	ble.n	8003418 <_vfprintf_r+0xe30>
 80033fc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033fe:	f8cb 9000 	str.w	r9, [fp]
 8003402:	3201      	adds	r2, #1
 8003404:	442c      	add	r4, r5
 8003406:	2a07      	cmp	r2, #7
 8003408:	942c      	str	r4, [sp, #176]	; 0xb0
 800340a:	f8cb 5004 	str.w	r5, [fp, #4]
 800340e:	922b      	str	r2, [sp, #172]	; 0xac
 8003410:	f300 8462 	bgt.w	8003cd8 <_vfprintf_r+0x16f0>
 8003414:	f10b 0b08 	add.w	fp, fp, #8
 8003418:	2d00      	cmp	r5, #0
 800341a:	bfac      	ite	ge
 800341c:	1b5d      	subge	r5, r3, r5
 800341e:	461d      	movlt	r5, r3
 8003420:	2d00      	cmp	r5, #0
 8003422:	f77f ab32 	ble.w	8002a8a <_vfprintf_r+0x4a2>
 8003426:	2d10      	cmp	r5, #16
 8003428:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800342a:	4bc5      	ldr	r3, [pc, #788]	; (8003740 <_vfprintf_r+0x1158>)
 800342c:	f340 80c4 	ble.w	80035b8 <_vfprintf_r+0xfd0>
 8003430:	4619      	mov	r1, r3
 8003432:	2610      	movs	r6, #16
 8003434:	4623      	mov	r3, r4
 8003436:	9f03      	ldr	r7, [sp, #12]
 8003438:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800343c:	460c      	mov	r4, r1
 800343e:	e005      	b.n	800344c <_vfprintf_r+0xe64>
 8003440:	f10b 0b08 	add.w	fp, fp, #8
 8003444:	3d10      	subs	r5, #16
 8003446:	2d10      	cmp	r5, #16
 8003448:	f340 80b3 	ble.w	80035b2 <_vfprintf_r+0xfca>
 800344c:	3201      	adds	r2, #1
 800344e:	3310      	adds	r3, #16
 8003450:	2a07      	cmp	r2, #7
 8003452:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003456:	e9cb 4600 	strd	r4, r6, [fp]
 800345a:	ddf1      	ble.n	8003440 <_vfprintf_r+0xe58>
 800345c:	aa2a      	add	r2, sp, #168	; 0xa8
 800345e:	4649      	mov	r1, r9
 8003460:	4638      	mov	r0, r7
 8003462:	f003 fbef 	bl	8006c44 <__sprint_r>
 8003466:	2800      	cmp	r0, #0
 8003468:	f47f ae38 	bne.w	80030dc <_vfprintf_r+0xaf4>
 800346c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003470:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003474:	e7e6      	b.n	8003444 <_vfprintf_r+0xe5c>
 8003476:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003478:	9916      	ldr	r1, [sp, #88]	; 0x58
 800347a:	f8cb 1000 	str.w	r1, [fp]
 800347e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003480:	f8cb 1004 	str.w	r1, [fp, #4]
 8003484:	3201      	adds	r2, #1
 8003486:	440c      	add	r4, r1
 8003488:	2a07      	cmp	r2, #7
 800348a:	942c      	str	r4, [sp, #176]	; 0xb0
 800348c:	922b      	str	r2, [sp, #172]	; 0xac
 800348e:	f300 828c 	bgt.w	80039aa <_vfprintf_r+0x13c2>
 8003492:	f10b 0b08 	add.w	fp, fp, #8
 8003496:	e7a7      	b.n	80033e8 <_vfprintf_r+0xe00>
 8003498:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800349c:	f002 fa94 	bl	80059c8 <__retarget_lock_release_recursive>
 80034a0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80034a4:	e628      	b.n	80030f8 <_vfprintf_r+0xb10>
 80034a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80034a8:	9907      	ldr	r1, [sp, #28]
 80034aa:	9803      	ldr	r0, [sp, #12]
 80034ac:	f003 fbca 	bl	8006c44 <__sprint_r>
 80034b0:	2800      	cmp	r0, #0
 80034b2:	f47f ae11 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 80034b6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80034ba:	ae2d      	add	r6, sp, #180	; 0xb4
 80034bc:	e638      	b.n	8003130 <_vfprintf_r+0xb48>
 80034be:	aa2a      	add	r2, sp, #168	; 0xa8
 80034c0:	9907      	ldr	r1, [sp, #28]
 80034c2:	9803      	ldr	r0, [sp, #12]
 80034c4:	f003 fbbe 	bl	8006c44 <__sprint_r>
 80034c8:	2800      	cmp	r0, #0
 80034ca:	f47f ae05 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 80034ce:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80034d2:	ae2d      	add	r6, sp, #180	; 0xb4
 80034d4:	930b      	str	r3, [sp, #44]	; 0x2c
 80034d6:	e638      	b.n	800314a <_vfprintf_r+0xb62>
 80034d8:	6814      	ldr	r4, [r2, #0]
 80034da:	9308      	str	r3, [sp, #32]
 80034dc:	2500      	movs	r5, #0
 80034de:	f7ff bb95 	b.w	8002c0c <_vfprintf_r+0x624>
 80034e2:	6814      	ldr	r4, [r2, #0]
 80034e4:	9308      	str	r3, [sp, #32]
 80034e6:	2500      	movs	r5, #0
 80034e8:	f7ff b9ae 	b.w	8002848 <_vfprintf_r+0x260>
 80034ec:	680c      	ldr	r4, [r1, #0]
 80034ee:	9208      	str	r2, [sp, #32]
 80034f0:	17e5      	asrs	r5, r4, #31
 80034f2:	4620      	mov	r0, r4
 80034f4:	4629      	mov	r1, r5
 80034f6:	f7ff b9d2 	b.w	800289e <_vfprintf_r+0x2b6>
 80034fa:	6814      	ldr	r4, [r2, #0]
 80034fc:	9108      	str	r1, [sp, #32]
 80034fe:	2201      	movs	r2, #1
 8003500:	2500      	movs	r5, #0
 8003502:	f7ff bb32 	b.w	8002b6a <_vfprintf_r+0x582>
 8003506:	2a01      	cmp	r2, #1
 8003508:	f47f ab3c 	bne.w	8002b84 <_vfprintf_r+0x59c>
 800350c:	e68f      	b.n	800322e <_vfprintf_r+0xc46>
 800350e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003512:	2200      	movs	r2, #0
 8003514:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003518:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800351c:	af56      	add	r7, sp, #344	; 0x158
 800351e:	4692      	mov	sl, r2
 8003520:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003524:	461e      	mov	r6, r3
 8003526:	e00a      	b.n	800353e <_vfprintf_r+0xf56>
 8003528:	2300      	movs	r3, #0
 800352a:	4620      	mov	r0, r4
 800352c:	4629      	mov	r1, r5
 800352e:	220a      	movs	r2, #10
 8003530:	f7fc fe66 	bl	8000200 <__aeabi_uldivmod>
 8003534:	4604      	mov	r4, r0
 8003536:	460d      	mov	r5, r1
 8003538:	ea54 0305 	orrs.w	r3, r4, r5
 800353c:	d029      	beq.n	8003592 <_vfprintf_r+0xfaa>
 800353e:	220a      	movs	r2, #10
 8003540:	2300      	movs	r3, #0
 8003542:	4620      	mov	r0, r4
 8003544:	4629      	mov	r1, r5
 8003546:	f7fc fe5b 	bl	8000200 <__aeabi_uldivmod>
 800354a:	3230      	adds	r2, #48	; 0x30
 800354c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003550:	f10a 0a01 	add.w	sl, sl, #1
 8003554:	3f01      	subs	r7, #1
 8003556:	2e00      	cmp	r6, #0
 8003558:	d0e6      	beq.n	8003528 <_vfprintf_r+0xf40>
 800355a:	f898 3000 	ldrb.w	r3, [r8]
 800355e:	459a      	cmp	sl, r3
 8003560:	d1e2      	bne.n	8003528 <_vfprintf_r+0xf40>
 8003562:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003566:	d0df      	beq.n	8003528 <_vfprintf_r+0xf40>
 8003568:	2d00      	cmp	r5, #0
 800356a:	bf08      	it	eq
 800356c:	2c0a      	cmpeq	r4, #10
 800356e:	d3db      	bcc.n	8003528 <_vfprintf_r+0xf40>
 8003570:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003572:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003574:	1aff      	subs	r7, r7, r3
 8003576:	461a      	mov	r2, r3
 8003578:	4638      	mov	r0, r7
 800357a:	f003 faf5 	bl	8006b68 <strncpy>
 800357e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003582:	2b00      	cmp	r3, #0
 8003584:	f000 8496 	beq.w	8003eb4 <_vfprintf_r+0x18cc>
 8003588:	f108 0801 	add.w	r8, r8, #1
 800358c:	f04f 0a00 	mov.w	sl, #0
 8003590:	e7ca      	b.n	8003528 <_vfprintf_r+0xf40>
 8003592:	9b04      	ldr	r3, [sp, #16]
 8003594:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003598:	1bdb      	subs	r3, r3, r7
 800359a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800359e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80035a0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80035a4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80035a8:	9309      	str	r3, [sp, #36]	; 0x24
 80035aa:	f7ff b99e 	b.w	80028ea <_vfprintf_r+0x302>
 80035ae:	46c1      	mov	r9, r8
 80035b0:	e594      	b.n	80030dc <_vfprintf_r+0xaf4>
 80035b2:	4621      	mov	r1, r4
 80035b4:	461c      	mov	r4, r3
 80035b6:	460b      	mov	r3, r1
 80035b8:	3201      	adds	r2, #1
 80035ba:	442c      	add	r4, r5
 80035bc:	2a07      	cmp	r2, #7
 80035be:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035c2:	e9cb 3500 	strd	r3, r5, [fp]
 80035c6:	f77f aa5e 	ble.w	8002a86 <_vfprintf_r+0x49e>
 80035ca:	e5ee      	b.n	80031aa <_vfprintf_r+0xbc2>
 80035cc:	f018 0f10 	tst.w	r8, #16
 80035d0:	f040 80f8 	bne.w	80037c4 <_vfprintf_r+0x11dc>
 80035d4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80035d8:	f000 8351 	beq.w	8003c7e <_vfprintf_r+0x1696>
 80035dc:	9a05      	ldr	r2, [sp, #20]
 80035de:	801a      	strh	r2, [r3, #0]
 80035e0:	4657      	mov	r7, sl
 80035e2:	f7ff baa7 	b.w	8002b34 <_vfprintf_r+0x54c>
 80035e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80035e8:	9907      	ldr	r1, [sp, #28]
 80035ea:	9803      	ldr	r0, [sp, #12]
 80035ec:	f003 fb2a 	bl	8006c44 <__sprint_r>
 80035f0:	2800      	cmp	r0, #0
 80035f2:	f47f ad71 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 80035f6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035fc:	f7ff b9f5 	b.w	80029ea <_vfprintf_r+0x402>
 8003600:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003604:	4602      	mov	r2, r0
 8003606:	460b      	mov	r3, r1
 8003608:	f7fd fd30 	bl	800106c <__aeabi_dcmpun>
 800360c:	2800      	cmp	r0, #0
 800360e:	f040 8491 	bne.w	8003f34 <_vfprintf_r+0x194c>
 8003612:	2e61      	cmp	r6, #97	; 0x61
 8003614:	f000 8111 	beq.w	800383a <_vfprintf_r+0x1252>
 8003618:	2e41      	cmp	r6, #65	; 0x41
 800361a:	f000 8377 	beq.w	8003d0c <_vfprintf_r+0x1724>
 800361e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003622:	f026 0220 	bic.w	r2, r6, #32
 8003626:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800362a:	930e      	str	r3, [sp, #56]	; 0x38
 800362c:	9204      	str	r2, [sp, #16]
 800362e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003630:	f000 842d 	beq.w	8003e8e <_vfprintf_r+0x18a6>
 8003634:	2a47      	cmp	r2, #71	; 0x47
 8003636:	f000 8424 	beq.w	8003e82 <_vfprintf_r+0x189a>
 800363a:	2b00      	cmp	r3, #0
 800363c:	f2c0 82f9 	blt.w	8003c32 <_vfprintf_r+0x164a>
 8003640:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003644:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003648:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800364c:	2e66      	cmp	r6, #102	; 0x66
 800364e:	f000 83eb 	beq.w	8003e28 <_vfprintf_r+0x1840>
 8003652:	2e46      	cmp	r6, #70	; 0x46
 8003654:	f000 847e 	beq.w	8003f54 <_vfprintf_r+0x196c>
 8003658:	9b04      	ldr	r3, [sp, #16]
 800365a:	9803      	ldr	r0, [sp, #12]
 800365c:	2b45      	cmp	r3, #69	; 0x45
 800365e:	bf0c      	ite	eq
 8003660:	f109 0501 	addeq.w	r5, r9, #1
 8003664:	464d      	movne	r5, r9
 8003666:	aa28      	add	r2, sp, #160	; 0xa0
 8003668:	ab25      	add	r3, sp, #148	; 0x94
 800366a:	e9cd 3200 	strd	r3, r2, [sp]
 800366e:	2102      	movs	r1, #2
 8003670:	ab24      	add	r3, sp, #144	; 0x90
 8003672:	462a      	mov	r2, r5
 8003674:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003678:	f000 fe3e 	bl	80042f8 <_dtoa_r>
 800367c:	2e67      	cmp	r6, #103	; 0x67
 800367e:	4607      	mov	r7, r0
 8003680:	f040 849c 	bne.w	8003fbc <_vfprintf_r+0x19d4>
 8003684:	f018 0f01 	tst.w	r8, #1
 8003688:	f040 83f9 	bne.w	8003e7e <_vfprintf_r+0x1896>
 800368c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800368e:	4640      	mov	r0, r8
 8003690:	1bdb      	subs	r3, r3, r7
 8003692:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003696:	9310      	str	r3, [sp, #64]	; 0x40
 8003698:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800369a:	9311      	str	r3, [sp, #68]	; 0x44
 800369c:	9b04      	ldr	r3, [sp, #16]
 800369e:	2b47      	cmp	r3, #71	; 0x47
 80036a0:	f000 81e7 	beq.w	8003a72 <_vfprintf_r+0x148a>
 80036a4:	9b04      	ldr	r3, [sp, #16]
 80036a6:	2b46      	cmp	r3, #70	; 0x46
 80036a8:	f000 8300 	beq.w	8003cac <_vfprintf_r+0x16c4>
 80036ac:	9904      	ldr	r1, [sp, #16]
 80036ae:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80036b0:	b2f2      	uxtb	r2, r6
 80036b2:	2941      	cmp	r1, #65	; 0x41
 80036b4:	bf08      	it	eq
 80036b6:	320f      	addeq	r2, #15
 80036b8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80036bc:	bf06      	itte	eq
 80036be:	b2d2      	uxtbeq	r2, r2
 80036c0:	2101      	moveq	r1, #1
 80036c2:	2100      	movne	r1, #0
 80036c4:	2b00      	cmp	r3, #0
 80036c6:	9324      	str	r3, [sp, #144]	; 0x90
 80036c8:	bfb8      	it	lt
 80036ca:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80036cc:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80036d0:	bfba      	itte	lt
 80036d2:	f1c3 0301 	rsblt	r3, r3, #1
 80036d6:	222d      	movlt	r2, #45	; 0x2d
 80036d8:	222b      	movge	r2, #43	; 0x2b
 80036da:	2b09      	cmp	r3, #9
 80036dc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80036e0:	f300 83f9 	bgt.w	8003ed6 <_vfprintf_r+0x18ee>
 80036e4:	2900      	cmp	r1, #0
 80036e6:	f040 8487 	bne.w	8003ff8 <_vfprintf_r+0x1a10>
 80036ea:	2230      	movs	r2, #48	; 0x30
 80036ec:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80036f0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80036f4:	3330      	adds	r3, #48	; 0x30
 80036f6:	7013      	strb	r3, [r2, #0]
 80036f8:	1c53      	adds	r3, r2, #1
 80036fa:	aa26      	add	r2, sp, #152	; 0x98
 80036fc:	1a9b      	subs	r3, r3, r2
 80036fe:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003700:	9319      	str	r3, [sp, #100]	; 0x64
 8003702:	2a01      	cmp	r2, #1
 8003704:	4413      	add	r3, r2
 8003706:	9309      	str	r3, [sp, #36]	; 0x24
 8003708:	f340 8442 	ble.w	8003f90 <_vfprintf_r+0x19a8>
 800370c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800370e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003710:	4413      	add	r3, r2
 8003712:	9309      	str	r3, [sp, #36]	; 0x24
 8003714:	2300      	movs	r3, #0
 8003716:	930f      	str	r3, [sp, #60]	; 0x3c
 8003718:	9314      	str	r3, [sp, #80]	; 0x50
 800371a:	9311      	str	r3, [sp, #68]	; 0x44
 800371c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800371e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003722:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003726:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800372a:	9304      	str	r3, [sp, #16]
 800372c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800372e:	2b00      	cmp	r3, #0
 8003730:	f040 8275 	bne.w	8003c1e <_vfprintf_r+0x1636>
 8003734:	4699      	mov	r9, r3
 8003736:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800373a:	f7ff b8e2 	b.w	8002902 <_vfprintf_r+0x31a>
 800373e:	bf00      	nop
 8003740:	0800743c 	.word	0x0800743c
 8003744:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003746:	49bd      	ldr	r1, [pc, #756]	; (8003a3c <_vfprintf_r+0x1454>)
 8003748:	f8cb 1000 	str.w	r1, [fp]
 800374c:	3201      	adds	r2, #1
 800374e:	3401      	adds	r4, #1
 8003750:	2101      	movs	r1, #1
 8003752:	2a07      	cmp	r2, #7
 8003754:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003758:	f8cb 1004 	str.w	r1, [fp, #4]
 800375c:	dc60      	bgt.n	8003820 <_vfprintf_r+0x1238>
 800375e:	f10b 0b08 	add.w	fp, fp, #8
 8003762:	b92b      	cbnz	r3, 8003770 <_vfprintf_r+0x1188>
 8003764:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003766:	b91a      	cbnz	r2, 8003770 <_vfprintf_r+0x1188>
 8003768:	f018 0f01 	tst.w	r8, #1
 800376c:	f43f a98d 	beq.w	8002a8a <_vfprintf_r+0x4a2>
 8003770:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003772:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003774:	f8cb 1000 	str.w	r1, [fp]
 8003778:	9915      	ldr	r1, [sp, #84]	; 0x54
 800377a:	f8cb 1004 	str.w	r1, [fp, #4]
 800377e:	3201      	adds	r2, #1
 8003780:	440c      	add	r4, r1
 8003782:	2a07      	cmp	r2, #7
 8003784:	942c      	str	r4, [sp, #176]	; 0xb0
 8003786:	922b      	str	r2, [sp, #172]	; 0xac
 8003788:	f300 8282 	bgt.w	8003c90 <_vfprintf_r+0x16a8>
 800378c:	f10b 0b08 	add.w	fp, fp, #8
 8003790:	2b00      	cmp	r3, #0
 8003792:	f2c0 82e7 	blt.w	8003d64 <_vfprintf_r+0x177c>
 8003796:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003798:	3201      	adds	r2, #1
 800379a:	441c      	add	r4, r3
 800379c:	2a07      	cmp	r2, #7
 800379e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80037a2:	e9cb 7300 	strd	r7, r3, [fp]
 80037a6:	f77f a96e 	ble.w	8002a86 <_vfprintf_r+0x49e>
 80037aa:	e4fe      	b.n	80031aa <_vfprintf_r+0xbc2>
 80037ac:	aa2a      	add	r2, sp, #168	; 0xa8
 80037ae:	9907      	ldr	r1, [sp, #28]
 80037b0:	9803      	ldr	r0, [sp, #12]
 80037b2:	f003 fa47 	bl	8006c44 <__sprint_r>
 80037b6:	2800      	cmp	r0, #0
 80037b8:	f47f ac8e 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 80037bc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037c0:	f7ff bbf0 	b.w	8002fa4 <_vfprintf_r+0x9bc>
 80037c4:	9a05      	ldr	r2, [sp, #20]
 80037c6:	601a      	str	r2, [r3, #0]
 80037c8:	4657      	mov	r7, sl
 80037ca:	f7ff b9b3 	b.w	8002b34 <_vfprintf_r+0x54c>
 80037ce:	8814      	ldrh	r4, [r2, #0]
 80037d0:	9108      	str	r1, [sp, #32]
 80037d2:	2500      	movs	r5, #0
 80037d4:	2201      	movs	r2, #1
 80037d6:	f7ff b9c8 	b.w	8002b6a <_vfprintf_r+0x582>
 80037da:	8814      	ldrh	r4, [r2, #0]
 80037dc:	9308      	str	r3, [sp, #32]
 80037de:	2500      	movs	r5, #0
 80037e0:	f7ff ba14 	b.w	8002c0c <_vfprintf_r+0x624>
 80037e4:	f9b1 4000 	ldrsh.w	r4, [r1]
 80037e8:	9208      	str	r2, [sp, #32]
 80037ea:	17e5      	asrs	r5, r4, #31
 80037ec:	4620      	mov	r0, r4
 80037ee:	4629      	mov	r1, r5
 80037f0:	f7ff b855 	b.w	800289e <_vfprintf_r+0x2b6>
 80037f4:	8814      	ldrh	r4, [r2, #0]
 80037f6:	9308      	str	r3, [sp, #32]
 80037f8:	2500      	movs	r5, #0
 80037fa:	f7ff b825 	b.w	8002848 <_vfprintf_r+0x260>
 80037fe:	222d      	movs	r2, #45	; 0x2d
 8003800:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003804:	f7ff baa2 	b.w	8002d4c <_vfprintf_r+0x764>
 8003808:	aa2a      	add	r2, sp, #168	; 0xa8
 800380a:	9907      	ldr	r1, [sp, #28]
 800380c:	9803      	ldr	r0, [sp, #12]
 800380e:	f003 fa19 	bl	8006c44 <__sprint_r>
 8003812:	2800      	cmp	r0, #0
 8003814:	f47f ac60 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 8003818:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800381a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800381e:	e534      	b.n	800328a <_vfprintf_r+0xca2>
 8003820:	aa2a      	add	r2, sp, #168	; 0xa8
 8003822:	9907      	ldr	r1, [sp, #28]
 8003824:	9803      	ldr	r0, [sp, #12]
 8003826:	f003 fa0d 	bl	8006c44 <__sprint_r>
 800382a:	2800      	cmp	r0, #0
 800382c:	f47f ac54 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 8003830:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003832:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003834:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003838:	e793      	b.n	8003762 <_vfprintf_r+0x117a>
 800383a:	2330      	movs	r3, #48	; 0x30
 800383c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003840:	2378      	movs	r3, #120	; 0x78
 8003842:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003846:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800384a:	f048 0402 	orr.w	r4, r8, #2
 800384e:	f300 82b0 	bgt.w	8003db2 <_vfprintf_r+0x17ca>
 8003852:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003856:	930e      	str	r3, [sp, #56]	; 0x38
 8003858:	f026 0320 	bic.w	r3, r6, #32
 800385c:	9304      	str	r3, [sp, #16]
 800385e:	2200      	movs	r2, #0
 8003860:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003862:	920a      	str	r2, [sp, #40]	; 0x28
 8003864:	46a0      	mov	r8, r4
 8003866:	af3d      	add	r7, sp, #244	; 0xf4
 8003868:	2b00      	cmp	r3, #0
 800386a:	f2c0 81e3 	blt.w	8003c34 <_vfprintf_r+0x164c>
 800386e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003872:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003876:	2300      	movs	r3, #0
 8003878:	930b      	str	r3, [sp, #44]	; 0x2c
 800387a:	2e61      	cmp	r6, #97	; 0x61
 800387c:	f000 8255 	beq.w	8003d2a <_vfprintf_r+0x1742>
 8003880:	2e41      	cmp	r6, #65	; 0x41
 8003882:	f47f aee3 	bne.w	800364c <_vfprintf_r+0x1064>
 8003886:	a824      	add	r0, sp, #144	; 0x90
 8003888:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800388c:	f003 f8e2 	bl	8006a54 <frexp>
 8003890:	2200      	movs	r2, #0
 8003892:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003896:	ec51 0b10 	vmov	r0, r1, d0
 800389a:	f7fd f94d 	bl	8000b38 <__aeabi_dmul>
 800389e:	2200      	movs	r2, #0
 80038a0:	2300      	movs	r3, #0
 80038a2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80038a6:	f7fd fbaf 	bl	8001008 <__aeabi_dcmpeq>
 80038aa:	2800      	cmp	r0, #0
 80038ac:	f040 8305 	bne.w	8003eba <_vfprintf_r+0x18d2>
 80038b0:	4b63      	ldr	r3, [pc, #396]	; (8003a40 <_vfprintf_r+0x1458>)
 80038b2:	9309      	str	r3, [sp, #36]	; 0x24
 80038b4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80038b8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80038bc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80038c0:	9721      	str	r7, [sp, #132]	; 0x84
 80038c2:	46b9      	mov	r9, r7
 80038c4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80038c8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80038cc:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80038d0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80038d4:	e003      	b.n	80038de <_vfprintf_r+0x12f6>
 80038d6:	f7fd fb97 	bl	8001008 <__aeabi_dcmpeq>
 80038da:	bb20      	cbnz	r0, 8003926 <_vfprintf_r+0x133e>
 80038dc:	46a9      	mov	r9, r5
 80038de:	2200      	movs	r2, #0
 80038e0:	4b58      	ldr	r3, [pc, #352]	; (8003a44 <_vfprintf_r+0x145c>)
 80038e2:	4630      	mov	r0, r6
 80038e4:	4639      	mov	r1, r7
 80038e6:	f7fd f927 	bl	8000b38 <__aeabi_dmul>
 80038ea:	460f      	mov	r7, r1
 80038ec:	4606      	mov	r6, r0
 80038ee:	f7fd fbd3 	bl	8001098 <__aeabi_d2iz>
 80038f2:	4680      	mov	r8, r0
 80038f4:	f7fd f8b6 	bl	8000a64 <__aeabi_i2d>
 80038f8:	4602      	mov	r2, r0
 80038fa:	460b      	mov	r3, r1
 80038fc:	4630      	mov	r0, r6
 80038fe:	4639      	mov	r1, r7
 8003900:	f7fc ff62 	bl	80007c8 <__aeabi_dsub>
 8003904:	464d      	mov	r5, r9
 8003906:	f81a c008 	ldrb.w	ip, [sl, r8]
 800390a:	f805 cb01 	strb.w	ip, [r5], #1
 800390e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003912:	46a3      	mov	fp, r4
 8003914:	4606      	mov	r6, r0
 8003916:	460f      	mov	r7, r1
 8003918:	f04f 0200 	mov.w	r2, #0
 800391c:	f04f 0300 	mov.w	r3, #0
 8003920:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003924:	d1d7      	bne.n	80038d6 <_vfprintf_r+0x12ee>
 8003926:	4630      	mov	r0, r6
 8003928:	4639      	mov	r1, r7
 800392a:	2200      	movs	r2, #0
 800392c:	4b46      	ldr	r3, [pc, #280]	; (8003a48 <_vfprintf_r+0x1460>)
 800392e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003932:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003934:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003938:	4644      	mov	r4, r8
 800393a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800393e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003942:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003946:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800394a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800394c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003950:	f7fd fb82 	bl	8001058 <__aeabi_dcmpgt>
 8003954:	2800      	cmp	r0, #0
 8003956:	f040 8176 	bne.w	8003c46 <_vfprintf_r+0x165e>
 800395a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800395e:	2200      	movs	r2, #0
 8003960:	4b39      	ldr	r3, [pc, #228]	; (8003a48 <_vfprintf_r+0x1460>)
 8003962:	f7fd fb51 	bl	8001008 <__aeabi_dcmpeq>
 8003966:	b110      	cbz	r0, 800396e <_vfprintf_r+0x1386>
 8003968:	07e2      	lsls	r2, r4, #31
 800396a:	f100 816c 	bmi.w	8003c46 <_vfprintf_r+0x165e>
 800396e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003970:	2b00      	cmp	r3, #0
 8003972:	db07      	blt.n	8003984 <_vfprintf_r+0x139c>
 8003974:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003976:	3301      	adds	r3, #1
 8003978:	442b      	add	r3, r5
 800397a:	2230      	movs	r2, #48	; 0x30
 800397c:	f805 2b01 	strb.w	r2, [r5], #1
 8003980:	42ab      	cmp	r3, r5
 8003982:	d1fb      	bne.n	800397c <_vfprintf_r+0x1394>
 8003984:	1beb      	subs	r3, r5, r7
 8003986:	4640      	mov	r0, r8
 8003988:	9310      	str	r3, [sp, #64]	; 0x40
 800398a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800398e:	e683      	b.n	8003698 <_vfprintf_r+0x10b0>
 8003990:	f8cd 9010 	str.w	r9, [sp, #16]
 8003994:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003998:	9408      	str	r4, [sp, #32]
 800399a:	4681      	mov	r9, r0
 800399c:	900f      	str	r0, [sp, #60]	; 0x3c
 800399e:	9014      	str	r0, [sp, #80]	; 0x50
 80039a0:	9011      	str	r0, [sp, #68]	; 0x44
 80039a2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80039a6:	f7fe bfac 	b.w	8002902 <_vfprintf_r+0x31a>
 80039aa:	aa2a      	add	r2, sp, #168	; 0xa8
 80039ac:	9907      	ldr	r1, [sp, #28]
 80039ae:	9803      	ldr	r0, [sp, #12]
 80039b0:	f003 f948 	bl	8006c44 <__sprint_r>
 80039b4:	2800      	cmp	r0, #0
 80039b6:	f47f ab8f 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 80039ba:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039bc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039be:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039c2:	e511      	b.n	80033e8 <_vfprintf_r+0xe00>
 80039c4:	4252      	negs	r2, r2
 80039c6:	9206      	str	r2, [sp, #24]
 80039c8:	9308      	str	r3, [sp, #32]
 80039ca:	f7ff b96d 	b.w	8002ca8 <_vfprintf_r+0x6c0>
 80039ce:	4614      	mov	r4, r2
 80039d0:	4632      	mov	r2, r6
 80039d2:	461e      	mov	r6, r3
 80039d4:	4613      	mov	r3, r2
 80039d6:	462a      	mov	r2, r5
 80039d8:	3201      	adds	r2, #1
 80039da:	9209      	str	r2, [sp, #36]	; 0x24
 80039dc:	f106 0208 	add.w	r2, r6, #8
 80039e0:	e9c6 3900 	strd	r3, r9, [r6]
 80039e4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039e6:	932b      	str	r3, [sp, #172]	; 0xac
 80039e8:	444c      	add	r4, r9
 80039ea:	2b07      	cmp	r3, #7
 80039ec:	942c      	str	r4, [sp, #176]	; 0xb0
 80039ee:	f73f acc3 	bgt.w	8003378 <_vfprintf_r+0xd90>
 80039f2:	3301      	adds	r3, #1
 80039f4:	9309      	str	r3, [sp, #36]	; 0x24
 80039f6:	f102 0b08 	add.w	fp, r2, #8
 80039fa:	4616      	mov	r6, r2
 80039fc:	f7ff bbca 	b.w	8003194 <_vfprintf_r+0xbac>
 8003a00:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a02:	9907      	ldr	r1, [sp, #28]
 8003a04:	9803      	ldr	r0, [sp, #12]
 8003a06:	f003 f91d 	bl	8006c44 <__sprint_r>
 8003a0a:	2800      	cmp	r0, #0
 8003a0c:	f47f ab64 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 8003a10:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a12:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a16:	f7ff bade 	b.w	8002fd6 <_vfprintf_r+0x9ee>
 8003a1a:	464b      	mov	r3, r9
 8003a1c:	2b06      	cmp	r3, #6
 8003a1e:	bf28      	it	cs
 8003a20:	2306      	movcs	r3, #6
 8003a22:	46b9      	mov	r9, r7
 8003a24:	970f      	str	r7, [sp, #60]	; 0x3c
 8003a26:	9714      	str	r7, [sp, #80]	; 0x50
 8003a28:	9711      	str	r7, [sp, #68]	; 0x44
 8003a2a:	970a      	str	r7, [sp, #40]	; 0x28
 8003a2c:	463a      	mov	r2, r7
 8003a2e:	9304      	str	r3, [sp, #16]
 8003a30:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003a34:	4f05      	ldr	r7, [pc, #20]	; (8003a4c <_vfprintf_r+0x1464>)
 8003a36:	f7fe bf64 	b.w	8002902 <_vfprintf_r+0x31a>
 8003a3a:	bf00      	nop
 8003a3c:	08007428 	.word	0x08007428
 8003a40:	0800740c 	.word	0x0800740c
 8003a44:	40300000 	.word	0x40300000
 8003a48:	3fe00000 	.word	0x3fe00000
 8003a4c:	08007420 	.word	0x08007420
 8003a50:	460c      	mov	r4, r1
 8003a52:	4639      	mov	r1, r7
 8003a54:	465f      	mov	r7, fp
 8003a56:	469b      	mov	fp, r3
 8003a58:	460b      	mov	r3, r1
 8003a5a:	3201      	adds	r2, #1
 8003a5c:	442c      	add	r4, r5
 8003a5e:	2a07      	cmp	r2, #7
 8003a60:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a64:	e9cb 3500 	strd	r3, r5, [fp]
 8003a68:	f73f aca5 	bgt.w	80033b6 <_vfprintf_r+0xdce>
 8003a6c:	f10b 0b08 	add.w	fp, fp, #8
 8003a70:	e4ac      	b.n	80033cc <_vfprintf_r+0xde4>
 8003a72:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a74:	1cda      	adds	r2, r3, #3
 8003a76:	db02      	blt.n	8003a7e <_vfprintf_r+0x1496>
 8003a78:	4599      	cmp	r9, r3
 8003a7a:	f280 80b5 	bge.w	8003be8 <_vfprintf_r+0x1600>
 8003a7e:	3e02      	subs	r6, #2
 8003a80:	f026 0320 	bic.w	r3, r6, #32
 8003a84:	9304      	str	r3, [sp, #16]
 8003a86:	e611      	b.n	80036ac <_vfprintf_r+0x10c4>
 8003a88:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a8a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003a8e:	465a      	mov	r2, fp
 8003a90:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003a94:	18fb      	adds	r3, r7, r3
 8003a96:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003a9a:	970c      	str	r7, [sp, #48]	; 0x30
 8003a9c:	4eaf      	ldr	r6, [pc, #700]	; (8003d5c <_vfprintf_r+0x1774>)
 8003a9e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003aa2:	9309      	str	r3, [sp, #36]	; 0x24
 8003aa4:	464f      	mov	r7, r9
 8003aa6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003aaa:	4621      	mov	r1, r4
 8003aac:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003aae:	2b00      	cmp	r3, #0
 8003ab0:	d05b      	beq.n	8003b6a <_vfprintf_r+0x1582>
 8003ab2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ab4:	2b00      	cmp	r3, #0
 8003ab6:	d154      	bne.n	8003b62 <_vfprintf_r+0x157a>
 8003ab8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003aba:	3b01      	subs	r3, #1
 8003abc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003ac0:	9314      	str	r3, [sp, #80]	; 0x50
 8003ac2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003ac4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003ac6:	6010      	str	r0, [r2, #0]
 8003ac8:	3301      	adds	r3, #1
 8003aca:	4459      	add	r1, fp
 8003acc:	2b07      	cmp	r3, #7
 8003ace:	912c      	str	r1, [sp, #176]	; 0xb0
 8003ad0:	f8c2 b004 	str.w	fp, [r2, #4]
 8003ad4:	932b      	str	r3, [sp, #172]	; 0xac
 8003ad6:	dc68      	bgt.n	8003baa <_vfprintf_r+0x15c2>
 8003ad8:	3208      	adds	r2, #8
 8003ada:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003adc:	f898 3000 	ldrb.w	r3, [r8]
 8003ae0:	1bc5      	subs	r5, r0, r7
 8003ae2:	429d      	cmp	r5, r3
 8003ae4:	bfa8      	it	ge
 8003ae6:	461d      	movge	r5, r3
 8003ae8:	2d00      	cmp	r5, #0
 8003aea:	dd0b      	ble.n	8003b04 <_vfprintf_r+0x151c>
 8003aec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003aee:	6017      	str	r7, [r2, #0]
 8003af0:	3301      	adds	r3, #1
 8003af2:	4429      	add	r1, r5
 8003af4:	2b07      	cmp	r3, #7
 8003af6:	912c      	str	r1, [sp, #176]	; 0xb0
 8003af8:	6055      	str	r5, [r2, #4]
 8003afa:	932b      	str	r3, [sp, #172]	; 0xac
 8003afc:	dc5e      	bgt.n	8003bbc <_vfprintf_r+0x15d4>
 8003afe:	f898 3000 	ldrb.w	r3, [r8]
 8003b02:	3208      	adds	r2, #8
 8003b04:	2d00      	cmp	r5, #0
 8003b06:	bfac      	ite	ge
 8003b08:	1b5d      	subge	r5, r3, r5
 8003b0a:	461d      	movlt	r5, r3
 8003b0c:	2d00      	cmp	r5, #0
 8003b0e:	dd26      	ble.n	8003b5e <_vfprintf_r+0x1576>
 8003b10:	2d10      	cmp	r5, #16
 8003b12:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003b14:	dd3c      	ble.n	8003b90 <_vfprintf_r+0x15a8>
 8003b16:	2410      	movs	r4, #16
 8003b18:	e003      	b.n	8003b22 <_vfprintf_r+0x153a>
 8003b1a:	3208      	adds	r2, #8
 8003b1c:	3d10      	subs	r5, #16
 8003b1e:	2d10      	cmp	r5, #16
 8003b20:	dd36      	ble.n	8003b90 <_vfprintf_r+0x15a8>
 8003b22:	3001      	adds	r0, #1
 8003b24:	3110      	adds	r1, #16
 8003b26:	2807      	cmp	r0, #7
 8003b28:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003b2c:	e9c2 6400 	strd	r6, r4, [r2]
 8003b30:	ddf3      	ble.n	8003b1a <_vfprintf_r+0x1532>
 8003b32:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b34:	4651      	mov	r1, sl
 8003b36:	4648      	mov	r0, r9
 8003b38:	f003 f884 	bl	8006c44 <__sprint_r>
 8003b3c:	2800      	cmp	r0, #0
 8003b3e:	d150      	bne.n	8003be2 <_vfprintf_r+0x15fa>
 8003b40:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003b44:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b46:	e7e9      	b.n	8003b1c <_vfprintf_r+0x1534>
 8003b48:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b4a:	4651      	mov	r1, sl
 8003b4c:	4648      	mov	r0, r9
 8003b4e:	f003 f879 	bl	8006c44 <__sprint_r>
 8003b52:	2800      	cmp	r0, #0
 8003b54:	d145      	bne.n	8003be2 <_vfprintf_r+0x15fa>
 8003b56:	f898 3000 	ldrb.w	r3, [r8]
 8003b5a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003b5c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b5e:	441f      	add	r7, r3
 8003b60:	e7a4      	b.n	8003aac <_vfprintf_r+0x14c4>
 8003b62:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b64:	3b01      	subs	r3, #1
 8003b66:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b68:	e7ab      	b.n	8003ac2 <_vfprintf_r+0x14da>
 8003b6a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b6c:	2b00      	cmp	r3, #0
 8003b6e:	d1f8      	bne.n	8003b62 <_vfprintf_r+0x157a>
 8003b70:	46b9      	mov	r9, r7
 8003b72:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b74:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003b76:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003b7a:	18fb      	adds	r3, r7, r3
 8003b7c:	4599      	cmp	r9, r3
 8003b7e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003b82:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003b86:	4693      	mov	fp, r2
 8003b88:	460c      	mov	r4, r1
 8003b8a:	bf28      	it	cs
 8003b8c:	4699      	movcs	r9, r3
 8003b8e:	e424      	b.n	80033da <_vfprintf_r+0xdf2>
 8003b90:	3001      	adds	r0, #1
 8003b92:	4429      	add	r1, r5
 8003b94:	2807      	cmp	r0, #7
 8003b96:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003b9a:	e9c2 6500 	strd	r6, r5, [r2]
 8003b9e:	dcd3      	bgt.n	8003b48 <_vfprintf_r+0x1560>
 8003ba0:	f898 3000 	ldrb.w	r3, [r8]
 8003ba4:	3208      	adds	r2, #8
 8003ba6:	441f      	add	r7, r3
 8003ba8:	e780      	b.n	8003aac <_vfprintf_r+0x14c4>
 8003baa:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bac:	4651      	mov	r1, sl
 8003bae:	4648      	mov	r0, r9
 8003bb0:	f003 f848 	bl	8006c44 <__sprint_r>
 8003bb4:	b9a8      	cbnz	r0, 8003be2 <_vfprintf_r+0x15fa>
 8003bb6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003bb8:	aa2d      	add	r2, sp, #180	; 0xb4
 8003bba:	e78e      	b.n	8003ada <_vfprintf_r+0x14f2>
 8003bbc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bbe:	4651      	mov	r1, sl
 8003bc0:	4648      	mov	r0, r9
 8003bc2:	f003 f83f 	bl	8006c44 <__sprint_r>
 8003bc6:	b960      	cbnz	r0, 8003be2 <_vfprintf_r+0x15fa>
 8003bc8:	f898 3000 	ldrb.w	r3, [r8]
 8003bcc:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003bce:	aa2d      	add	r2, sp, #180	; 0xb4
 8003bd0:	e798      	b.n	8003b04 <_vfprintf_r+0x151c>
 8003bd2:	4638      	mov	r0, r7
 8003bd4:	f7fc fd34 	bl	8000640 <strlen>
 8003bd8:	46a9      	mov	r9, r5
 8003bda:	4603      	mov	r3, r0
 8003bdc:	9009      	str	r0, [sp, #36]	; 0x24
 8003bde:	f7ff b8f4 	b.w	8002dca <_vfprintf_r+0x7e2>
 8003be2:	46d1      	mov	r9, sl
 8003be4:	f7ff ba7a 	b.w	80030dc <_vfprintf_r+0xaf4>
 8003be8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bea:	4619      	mov	r1, r3
 8003bec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bee:	4299      	cmp	r1, r3
 8003bf0:	f300 8082 	bgt.w	8003cf8 <_vfprintf_r+0x1710>
 8003bf4:	07c4      	lsls	r4, r0, #31
 8003bf6:	f140 816b 	bpl.w	8003ed0 <_vfprintf_r+0x18e8>
 8003bfa:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003bfc:	4413      	add	r3, r2
 8003bfe:	9309      	str	r3, [sp, #36]	; 0x24
 8003c00:	0541      	lsls	r1, r0, #21
 8003c02:	d503      	bpl.n	8003c0c <_vfprintf_r+0x1624>
 8003c04:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c06:	2b00      	cmp	r3, #0
 8003c08:	f300 80e6 	bgt.w	8003dd8 <_vfprintf_r+0x17f0>
 8003c0c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c0e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c12:	9304      	str	r3, [sp, #16]
 8003c14:	2667      	movs	r6, #103	; 0x67
 8003c16:	2300      	movs	r3, #0
 8003c18:	930f      	str	r3, [sp, #60]	; 0x3c
 8003c1a:	9314      	str	r3, [sp, #80]	; 0x50
 8003c1c:	e586      	b.n	800372c <_vfprintf_r+0x1144>
 8003c1e:	222d      	movs	r2, #45	; 0x2d
 8003c20:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003c24:	f04f 0900 	mov.w	r9, #0
 8003c28:	f7fe be6c 	b.w	8002904 <_vfprintf_r+0x31c>
 8003c2c:	46a1      	mov	r9, r4
 8003c2e:	f7ff ba55 	b.w	80030dc <_vfprintf_r+0xaf4>
 8003c32:	900a      	str	r0, [sp, #40]	; 0x28
 8003c34:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003c38:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003c3c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003c3e:	232d      	movs	r3, #45	; 0x2d
 8003c40:	911e      	str	r1, [sp, #120]	; 0x78
 8003c42:	930b      	str	r3, [sp, #44]	; 0x2c
 8003c44:	e619      	b.n	800387a <_vfprintf_r+0x1292>
 8003c46:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c48:	9328      	str	r3, [sp, #160]	; 0xa0
 8003c4a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c4c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003c50:	7bd9      	ldrb	r1, [r3, #15]
 8003c52:	4291      	cmp	r1, r2
 8003c54:	462b      	mov	r3, r5
 8003c56:	d109      	bne.n	8003c6c <_vfprintf_r+0x1684>
 8003c58:	2030      	movs	r0, #48	; 0x30
 8003c5a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003c5e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003c60:	1e5a      	subs	r2, r3, #1
 8003c62:	9228      	str	r2, [sp, #160]	; 0xa0
 8003c64:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003c68:	4291      	cmp	r1, r2
 8003c6a:	d0f6      	beq.n	8003c5a <_vfprintf_r+0x1672>
 8003c6c:	2a39      	cmp	r2, #57	; 0x39
 8003c6e:	bf0b      	itete	eq
 8003c70:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003c72:	3201      	addne	r2, #1
 8003c74:	7a92      	ldrbeq	r2, [r2, #10]
 8003c76:	b2d2      	uxtbne	r2, r2
 8003c78:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003c7c:	e682      	b.n	8003984 <_vfprintf_r+0x139c>
 8003c7e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003c82:	f43f ad9f 	beq.w	80037c4 <_vfprintf_r+0x11dc>
 8003c86:	9a05      	ldr	r2, [sp, #20]
 8003c88:	701a      	strb	r2, [r3, #0]
 8003c8a:	4657      	mov	r7, sl
 8003c8c:	f7fe bf52 	b.w	8002b34 <_vfprintf_r+0x54c>
 8003c90:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c92:	9907      	ldr	r1, [sp, #28]
 8003c94:	9803      	ldr	r0, [sp, #12]
 8003c96:	f002 ffd5 	bl	8006c44 <__sprint_r>
 8003c9a:	2800      	cmp	r0, #0
 8003c9c:	f47f aa1c 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 8003ca0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003ca2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003ca6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003caa:	e571      	b.n	8003790 <_vfprintf_r+0x11a8>
 8003cac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003cae:	2b00      	cmp	r3, #0
 8003cb0:	f340 8164 	ble.w	8003f7c <_vfprintf_r+0x1994>
 8003cb4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003cb6:	f1b9 0f00 	cmp.w	r9, #0
 8003cba:	f040 8103 	bne.w	8003ec4 <_vfprintf_r+0x18dc>
 8003cbe:	07c6      	lsls	r6, r0, #31
 8003cc0:	f100 8100 	bmi.w	8003ec4 <_vfprintf_r+0x18dc>
 8003cc4:	9309      	str	r3, [sp, #36]	; 0x24
 8003cc6:	2666      	movs	r6, #102	; 0x66
 8003cc8:	0543      	lsls	r3, r0, #21
 8003cca:	f100 8086 	bmi.w	8003dda <_vfprintf_r+0x17f2>
 8003cce:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003cd0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cd4:	9304      	str	r3, [sp, #16]
 8003cd6:	e79e      	b.n	8003c16 <_vfprintf_r+0x162e>
 8003cd8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cda:	9907      	ldr	r1, [sp, #28]
 8003cdc:	9803      	ldr	r0, [sp, #12]
 8003cde:	f002 ffb1 	bl	8006c44 <__sprint_r>
 8003ce2:	2800      	cmp	r0, #0
 8003ce4:	f47f a9f8 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 8003ce8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003cea:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003cec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003cee:	1ad3      	subs	r3, r2, r3
 8003cf0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cf4:	f7ff bb90 	b.w	8003418 <_vfprintf_r+0xe30>
 8003cf8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cfa:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003cfc:	4413      	add	r3, r2
 8003cfe:	9309      	str	r3, [sp, #36]	; 0x24
 8003d00:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d02:	2b00      	cmp	r3, #0
 8003d04:	f340 8149 	ble.w	8003f9a <_vfprintf_r+0x19b2>
 8003d08:	2667      	movs	r6, #103	; 0x67
 8003d0a:	e7dd      	b.n	8003cc8 <_vfprintf_r+0x16e0>
 8003d0c:	2330      	movs	r3, #48	; 0x30
 8003d0e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003d12:	2358      	movs	r3, #88	; 0x58
 8003d14:	e595      	b.n	8003842 <_vfprintf_r+0x125a>
 8003d16:	9803      	ldr	r0, [sp, #12]
 8003d18:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d1a:	4649      	mov	r1, r9
 8003d1c:	f002 ff92 	bl	8006c44 <__sprint_r>
 8003d20:	2800      	cmp	r0, #0
 8003d22:	f47f a9e0 	bne.w	80030e6 <_vfprintf_r+0xafe>
 8003d26:	f7fe bf0f 	b.w	8002b48 <_vfprintf_r+0x560>
 8003d2a:	a824      	add	r0, sp, #144	; 0x90
 8003d2c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d30:	f002 fe90 	bl	8006a54 <frexp>
 8003d34:	2200      	movs	r2, #0
 8003d36:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003d3a:	ec51 0b10 	vmov	r0, r1, d0
 8003d3e:	f7fc fefb 	bl	8000b38 <__aeabi_dmul>
 8003d42:	2200      	movs	r2, #0
 8003d44:	2300      	movs	r3, #0
 8003d46:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003d4a:	f7fd f95d 	bl	8001008 <__aeabi_dcmpeq>
 8003d4e:	b108      	cbz	r0, 8003d54 <_vfprintf_r+0x176c>
 8003d50:	2301      	movs	r3, #1
 8003d52:	9324      	str	r3, [sp, #144]	; 0x90
 8003d54:	4b02      	ldr	r3, [pc, #8]	; (8003d60 <_vfprintf_r+0x1778>)
 8003d56:	9309      	str	r3, [sp, #36]	; 0x24
 8003d58:	e5ac      	b.n	80038b4 <_vfprintf_r+0x12cc>
 8003d5a:	bf00      	nop
 8003d5c:	0800743c 	.word	0x0800743c
 8003d60:	080073f8 	.word	0x080073f8
 8003d64:	425d      	negs	r5, r3
 8003d66:	3310      	adds	r3, #16
 8003d68:	4bb9      	ldr	r3, [pc, #740]	; (8004050 <_vfprintf_r+0x1a68>)
 8003d6a:	f280 8097 	bge.w	8003e9c <_vfprintf_r+0x18b4>
 8003d6e:	4619      	mov	r1, r3
 8003d70:	2610      	movs	r6, #16
 8003d72:	4623      	mov	r3, r4
 8003d74:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003d78:	460c      	mov	r4, r1
 8003d7a:	e005      	b.n	8003d88 <_vfprintf_r+0x17a0>
 8003d7c:	f10b 0b08 	add.w	fp, fp, #8
 8003d80:	3d10      	subs	r5, #16
 8003d82:	2d10      	cmp	r5, #16
 8003d84:	f340 8087 	ble.w	8003e96 <_vfprintf_r+0x18ae>
 8003d88:	3201      	adds	r2, #1
 8003d8a:	3310      	adds	r3, #16
 8003d8c:	2a07      	cmp	r2, #7
 8003d8e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003d92:	e9cb 4600 	strd	r4, r6, [fp]
 8003d96:	ddf1      	ble.n	8003d7c <_vfprintf_r+0x1794>
 8003d98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d9a:	9907      	ldr	r1, [sp, #28]
 8003d9c:	4648      	mov	r0, r9
 8003d9e:	f002 ff51 	bl	8006c44 <__sprint_r>
 8003da2:	2800      	cmp	r0, #0
 8003da4:	f47f a998 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 8003da8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003dac:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003db0:	e7e6      	b.n	8003d80 <_vfprintf_r+0x1798>
 8003db2:	f109 0101 	add.w	r1, r9, #1
 8003db6:	9803      	ldr	r0, [sp, #12]
 8003db8:	f001 fe80 	bl	8005abc <_malloc_r>
 8003dbc:	4607      	mov	r7, r0
 8003dbe:	2800      	cmp	r0, #0
 8003dc0:	f000 813b 	beq.w	800403a <_vfprintf_r+0x1a52>
 8003dc4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003dc8:	930e      	str	r3, [sp, #56]	; 0x38
 8003dca:	f026 0320 	bic.w	r3, r6, #32
 8003dce:	9304      	str	r3, [sp, #16]
 8003dd0:	46a0      	mov	r8, r4
 8003dd2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003dd4:	900a      	str	r0, [sp, #40]	; 0x28
 8003dd6:	e547      	b.n	8003868 <_vfprintf_r+0x1280>
 8003dd8:	2667      	movs	r6, #103	; 0x67
 8003dda:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003ddc:	2200      	movs	r2, #0
 8003dde:	920f      	str	r2, [sp, #60]	; 0x3c
 8003de0:	9214      	str	r2, [sp, #80]	; 0x50
 8003de2:	7803      	ldrb	r3, [r0, #0]
 8003de4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003de6:	2bff      	cmp	r3, #255	; 0xff
 8003de8:	d00c      	beq.n	8003e04 <_vfprintf_r+0x181c>
 8003dea:	4293      	cmp	r3, r2
 8003dec:	da0a      	bge.n	8003e04 <_vfprintf_r+0x181c>
 8003dee:	7841      	ldrb	r1, [r0, #1]
 8003df0:	1ad2      	subs	r2, r2, r3
 8003df2:	b1a9      	cbz	r1, 8003e20 <_vfprintf_r+0x1838>
 8003df4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003df6:	3301      	adds	r3, #1
 8003df8:	9314      	str	r3, [sp, #80]	; 0x50
 8003dfa:	460b      	mov	r3, r1
 8003dfc:	2bff      	cmp	r3, #255	; 0xff
 8003dfe:	f100 0001 	add.w	r0, r0, #1
 8003e02:	d1f2      	bne.n	8003dea <_vfprintf_r+0x1802>
 8003e04:	9211      	str	r2, [sp, #68]	; 0x44
 8003e06:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003e08:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003e0a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003e0c:	901a      	str	r0, [sp, #104]	; 0x68
 8003e0e:	4413      	add	r3, r2
 8003e10:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003e12:	fb02 1303 	mla	r3, r2, r3, r1
 8003e16:	9309      	str	r3, [sp, #36]	; 0x24
 8003e18:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e1c:	9304      	str	r3, [sp, #16]
 8003e1e:	e485      	b.n	800372c <_vfprintf_r+0x1144>
 8003e20:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003e22:	3101      	adds	r1, #1
 8003e24:	910f      	str	r1, [sp, #60]	; 0x3c
 8003e26:	e7de      	b.n	8003de6 <_vfprintf_r+0x17fe>
 8003e28:	aa28      	add	r2, sp, #160	; 0xa0
 8003e2a:	ab25      	add	r3, sp, #148	; 0x94
 8003e2c:	e9cd 3200 	strd	r3, r2, [sp]
 8003e30:	2103      	movs	r1, #3
 8003e32:	ab24      	add	r3, sp, #144	; 0x90
 8003e34:	464a      	mov	r2, r9
 8003e36:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e3a:	9803      	ldr	r0, [sp, #12]
 8003e3c:	f000 fa5c 	bl	80042f8 <_dtoa_r>
 8003e40:	464d      	mov	r5, r9
 8003e42:	4607      	mov	r7, r0
 8003e44:	eb00 0409 	add.w	r4, r0, r9
 8003e48:	783b      	ldrb	r3, [r7, #0]
 8003e4a:	2b30      	cmp	r3, #48	; 0x30
 8003e4c:	f000 80be 	beq.w	8003fcc <_vfprintf_r+0x19e4>
 8003e50:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003e52:	442c      	add	r4, r5
 8003e54:	2200      	movs	r2, #0
 8003e56:	2300      	movs	r3, #0
 8003e58:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003e5c:	f7fd f8d4 	bl	8001008 <__aeabi_dcmpeq>
 8003e60:	b108      	cbz	r0, 8003e66 <_vfprintf_r+0x187e>
 8003e62:	4623      	mov	r3, r4
 8003e64:	e413      	b.n	800368e <_vfprintf_r+0x10a6>
 8003e66:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003e68:	42a3      	cmp	r3, r4
 8003e6a:	f4bf ac10 	bcs.w	800368e <_vfprintf_r+0x10a6>
 8003e6e:	2130      	movs	r1, #48	; 0x30
 8003e70:	1c5a      	adds	r2, r3, #1
 8003e72:	9228      	str	r2, [sp, #160]	; 0xa0
 8003e74:	7019      	strb	r1, [r3, #0]
 8003e76:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003e78:	429c      	cmp	r4, r3
 8003e7a:	d8f9      	bhi.n	8003e70 <_vfprintf_r+0x1888>
 8003e7c:	e407      	b.n	800368e <_vfprintf_r+0x10a6>
 8003e7e:	197c      	adds	r4, r7, r5
 8003e80:	e7e8      	b.n	8003e54 <_vfprintf_r+0x186c>
 8003e82:	f1b9 0f00 	cmp.w	r9, #0
 8003e86:	f000 8092 	beq.w	8003fae <_vfprintf_r+0x19c6>
 8003e8a:	900a      	str	r0, [sp, #40]	; 0x28
 8003e8c:	e4ec      	b.n	8003868 <_vfprintf_r+0x1280>
 8003e8e:	900a      	str	r0, [sp, #40]	; 0x28
 8003e90:	f04f 0906 	mov.w	r9, #6
 8003e94:	e4e8      	b.n	8003868 <_vfprintf_r+0x1280>
 8003e96:	4621      	mov	r1, r4
 8003e98:	461c      	mov	r4, r3
 8003e9a:	460b      	mov	r3, r1
 8003e9c:	3201      	adds	r2, #1
 8003e9e:	442c      	add	r4, r5
 8003ea0:	2a07      	cmp	r2, #7
 8003ea2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ea6:	e9cb 3500 	strd	r3, r5, [fp]
 8003eaa:	f300 80a9 	bgt.w	8004000 <_vfprintf_r+0x1a18>
 8003eae:	f10b 0b08 	add.w	fp, fp, #8
 8003eb2:	e470      	b.n	8003796 <_vfprintf_r+0x11ae>
 8003eb4:	469a      	mov	sl, r3
 8003eb6:	f7ff bb37 	b.w	8003528 <_vfprintf_r+0xf40>
 8003eba:	2301      	movs	r3, #1
 8003ebc:	9324      	str	r3, [sp, #144]	; 0x90
 8003ebe:	4b65      	ldr	r3, [pc, #404]	; (8004054 <_vfprintf_r+0x1a6c>)
 8003ec0:	9309      	str	r3, [sp, #36]	; 0x24
 8003ec2:	e4f7      	b.n	80038b4 <_vfprintf_r+0x12cc>
 8003ec4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ec6:	4413      	add	r3, r2
 8003ec8:	444b      	add	r3, r9
 8003eca:	9309      	str	r3, [sp, #36]	; 0x24
 8003ecc:	2666      	movs	r6, #102	; 0x66
 8003ece:	e6fb      	b.n	8003cc8 <_vfprintf_r+0x16e0>
 8003ed0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ed2:	9309      	str	r3, [sp, #36]	; 0x24
 8003ed4:	e694      	b.n	8003c00 <_vfprintf_r+0x1618>
 8003ed6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003eda:	4664      	mov	r4, ip
 8003edc:	4d5e      	ldr	r5, [pc, #376]	; (8004058 <_vfprintf_r+0x1a70>)
 8003ede:	e000      	b.n	8003ee2 <_vfprintf_r+0x18fa>
 8003ee0:	4614      	mov	r4, r2
 8003ee2:	fba5 1203 	umull	r1, r2, r5, r3
 8003ee6:	08d2      	lsrs	r2, r2, #3
 8003ee8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003eec:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003ef0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003ef4:	4613      	mov	r3, r2
 8003ef6:	2b09      	cmp	r3, #9
 8003ef8:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003efc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003f00:	dcee      	bgt.n	8003ee0 <_vfprintf_r+0x18f8>
 8003f02:	3330      	adds	r3, #48	; 0x30
 8003f04:	3c02      	subs	r4, #2
 8003f06:	b2db      	uxtb	r3, r3
 8003f08:	45a4      	cmp	ip, r4
 8003f0a:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003f0e:	f240 8090 	bls.w	8004032 <_vfprintf_r+0x1a4a>
 8003f12:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003f16:	4611      	mov	r1, r2
 8003f18:	e001      	b.n	8003f1e <_vfprintf_r+0x1936>
 8003f1a:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003f1e:	f804 3b01 	strb.w	r3, [r4], #1
 8003f22:	458c      	cmp	ip, r1
 8003f24:	d1f9      	bne.n	8003f1a <_vfprintf_r+0x1932>
 8003f26:	ab2a      	add	r3, sp, #168	; 0xa8
 8003f28:	1a9b      	subs	r3, r3, r2
 8003f2a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003f2e:	4413      	add	r3, r2
 8003f30:	f7ff bbe3 	b.w	80036fa <_vfprintf_r+0x1112>
 8003f34:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003f36:	4f49      	ldr	r7, [pc, #292]	; (800405c <_vfprintf_r+0x1a74>)
 8003f38:	2b00      	cmp	r3, #0
 8003f3a:	bfb6      	itet	lt
 8003f3c:	222d      	movlt	r2, #45	; 0x2d
 8003f3e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003f42:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003f46:	4b46      	ldr	r3, [pc, #280]	; (8004060 <_vfprintf_r+0x1a78>)
 8003f48:	f7fe bf02 	b.w	8002d50 <_vfprintf_r+0x768>
 8003f4c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003f50:	f7ff b8c9 	b.w	80030e6 <_vfprintf_r+0xafe>
 8003f54:	aa28      	add	r2, sp, #160	; 0xa0
 8003f56:	ab25      	add	r3, sp, #148	; 0x94
 8003f58:	e9cd 3200 	strd	r3, r2, [sp]
 8003f5c:	2103      	movs	r1, #3
 8003f5e:	ab24      	add	r3, sp, #144	; 0x90
 8003f60:	464a      	mov	r2, r9
 8003f62:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003f66:	9803      	ldr	r0, [sp, #12]
 8003f68:	f000 f9c6 	bl	80042f8 <_dtoa_r>
 8003f6c:	464d      	mov	r5, r9
 8003f6e:	4607      	mov	r7, r0
 8003f70:	2e46      	cmp	r6, #70	; 0x46
 8003f72:	eb07 0405 	add.w	r4, r7, r5
 8003f76:	f43f af67 	beq.w	8003e48 <_vfprintf_r+0x1860>
 8003f7a:	e76b      	b.n	8003e54 <_vfprintf_r+0x186c>
 8003f7c:	f1b9 0f00 	cmp.w	r9, #0
 8003f80:	d131      	bne.n	8003fe6 <_vfprintf_r+0x19fe>
 8003f82:	07c5      	lsls	r5, r0, #31
 8003f84:	d42f      	bmi.n	8003fe6 <_vfprintf_r+0x19fe>
 8003f86:	2301      	movs	r3, #1
 8003f88:	9304      	str	r3, [sp, #16]
 8003f8a:	9309      	str	r3, [sp, #36]	; 0x24
 8003f8c:	2666      	movs	r6, #102	; 0x66
 8003f8e:	e642      	b.n	8003c16 <_vfprintf_r+0x162e>
 8003f90:	07c3      	lsls	r3, r0, #31
 8003f92:	f57f abbf 	bpl.w	8003714 <_vfprintf_r+0x112c>
 8003f96:	f7ff bbb9 	b.w	800370c <_vfprintf_r+0x1124>
 8003f9a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003f9c:	f1c3 0301 	rsb	r3, r3, #1
 8003fa0:	441a      	add	r2, r3
 8003fa2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003fa6:	9209      	str	r2, [sp, #36]	; 0x24
 8003fa8:	9304      	str	r3, [sp, #16]
 8003faa:	2667      	movs	r6, #103	; 0x67
 8003fac:	e633      	b.n	8003c16 <_vfprintf_r+0x162e>
 8003fae:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003fb2:	f04f 0901 	mov.w	r9, #1
 8003fb6:	e457      	b.n	8003868 <_vfprintf_r+0x1280>
 8003fb8:	465a      	mov	r2, fp
 8003fba:	e511      	b.n	80039e0 <_vfprintf_r+0x13f8>
 8003fbc:	2e47      	cmp	r6, #71	; 0x47
 8003fbe:	f47f af5e 	bne.w	8003e7e <_vfprintf_r+0x1896>
 8003fc2:	f018 0f01 	tst.w	r8, #1
 8003fc6:	f43f ab61 	beq.w	800368c <_vfprintf_r+0x10a4>
 8003fca:	e7d1      	b.n	8003f70 <_vfprintf_r+0x1988>
 8003fcc:	2200      	movs	r2, #0
 8003fce:	2300      	movs	r3, #0
 8003fd0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003fd4:	f7fd f818 	bl	8001008 <__aeabi_dcmpeq>
 8003fd8:	2800      	cmp	r0, #0
 8003fda:	f47f af39 	bne.w	8003e50 <_vfprintf_r+0x1868>
 8003fde:	f1c5 0501 	rsb	r5, r5, #1
 8003fe2:	9524      	str	r5, [sp, #144]	; 0x90
 8003fe4:	e735      	b.n	8003e52 <_vfprintf_r+0x186a>
 8003fe6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003fe8:	3301      	adds	r3, #1
 8003fea:	444b      	add	r3, r9
 8003fec:	9309      	str	r3, [sp, #36]	; 0x24
 8003fee:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003ff2:	9304      	str	r3, [sp, #16]
 8003ff4:	2666      	movs	r6, #102	; 0x66
 8003ff6:	e60e      	b.n	8003c16 <_vfprintf_r+0x162e>
 8003ff8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003ffc:	f7ff bb7a 	b.w	80036f4 <_vfprintf_r+0x110c>
 8004000:	aa2a      	add	r2, sp, #168	; 0xa8
 8004002:	9907      	ldr	r1, [sp, #28]
 8004004:	9803      	ldr	r0, [sp, #12]
 8004006:	f002 fe1d 	bl	8006c44 <__sprint_r>
 800400a:	2800      	cmp	r0, #0
 800400c:	f47f a864 	bne.w	80030d8 <_vfprintf_r+0xaf0>
 8004010:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004014:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004018:	f7ff bbbd 	b.w	8003796 <_vfprintf_r+0x11ae>
 800401c:	9908      	ldr	r1, [sp, #32]
 800401e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004022:	680b      	ldr	r3, [r1, #0]
 8004024:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004028:	1d0b      	adds	r3, r1, #4
 800402a:	4692      	mov	sl, r2
 800402c:	9308      	str	r3, [sp, #32]
 800402e:	f7fe bb59 	b.w	80026e4 <_vfprintf_r+0xfc>
 8004032:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004036:	f7ff bb60 	b.w	80036fa <_vfprintf_r+0x1112>
 800403a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800403e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004042:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004046:	f8a9 300c 	strh.w	r3, [r9, #12]
 800404a:	f7ff b84c 	b.w	80030e6 <_vfprintf_r+0xafe>
 800404e:	bf00      	nop
 8004050:	0800743c 	.word	0x0800743c
 8004054:	0800740c 	.word	0x0800740c
 8004058:	cccccccd 	.word	0xcccccccd
 800405c:	080073f4 	.word	0x080073f4
 8004060:	080073f0 	.word	0x080073f0

08004064 <__sbprintf>:
 8004064:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004068:	460c      	mov	r4, r1
 800406a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800406e:	8989      	ldrh	r1, [r1, #12]
 8004070:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004072:	89e5      	ldrh	r5, [r4, #14]
 8004074:	9619      	str	r6, [sp, #100]	; 0x64
 8004076:	f021 0102 	bic.w	r1, r1, #2
 800407a:	4606      	mov	r6, r0
 800407c:	69e0      	ldr	r0, [r4, #28]
 800407e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004082:	4617      	mov	r7, r2
 8004084:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004088:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800408a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800408e:	4698      	mov	r8, r3
 8004090:	ad1a      	add	r5, sp, #104	; 0x68
 8004092:	2300      	movs	r3, #0
 8004094:	9007      	str	r0, [sp, #28]
 8004096:	a816      	add	r0, sp, #88	; 0x58
 8004098:	9209      	str	r2, [sp, #36]	; 0x24
 800409a:	9306      	str	r3, [sp, #24]
 800409c:	9500      	str	r5, [sp, #0]
 800409e:	9504      	str	r5, [sp, #16]
 80040a0:	9102      	str	r1, [sp, #8]
 80040a2:	9105      	str	r1, [sp, #20]
 80040a4:	f001 fc8a 	bl	80059bc <__retarget_lock_init_recursive>
 80040a8:	4643      	mov	r3, r8
 80040aa:	463a      	mov	r2, r7
 80040ac:	4669      	mov	r1, sp
 80040ae:	4630      	mov	r0, r6
 80040b0:	f7fe fa9a 	bl	80025e8 <_vfprintf_r>
 80040b4:	1e05      	subs	r5, r0, #0
 80040b6:	db07      	blt.n	80040c8 <__sbprintf+0x64>
 80040b8:	4630      	mov	r0, r6
 80040ba:	4669      	mov	r1, sp
 80040bc:	f001 f8d6 	bl	800526c <_fflush_r>
 80040c0:	2800      	cmp	r0, #0
 80040c2:	bf18      	it	ne
 80040c4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80040c8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80040cc:	065b      	lsls	r3, r3, #25
 80040ce:	d503      	bpl.n	80040d8 <__sbprintf+0x74>
 80040d0:	89a3      	ldrh	r3, [r4, #12]
 80040d2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80040d6:	81a3      	strh	r3, [r4, #12]
 80040d8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80040da:	f001 fc71 	bl	80059c0 <__retarget_lock_close_recursive>
 80040de:	4628      	mov	r0, r5
 80040e0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 80040e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080040e8 <__swsetup_r>:
 80040e8:	b538      	push	{r3, r4, r5, lr}
 80040ea:	4b31      	ldr	r3, [pc, #196]	; (80041b0 <__swsetup_r+0xc8>)
 80040ec:	681b      	ldr	r3, [r3, #0]
 80040ee:	4605      	mov	r5, r0
 80040f0:	460c      	mov	r4, r1
 80040f2:	b113      	cbz	r3, 80040fa <__swsetup_r+0x12>
 80040f4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80040f6:	2a00      	cmp	r2, #0
 80040f8:	d03a      	beq.n	8004170 <__swsetup_r+0x88>
 80040fa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80040fe:	b293      	uxth	r3, r2
 8004100:	0718      	lsls	r0, r3, #28
 8004102:	d50c      	bpl.n	800411e <__swsetup_r+0x36>
 8004104:	6920      	ldr	r0, [r4, #16]
 8004106:	b1a8      	cbz	r0, 8004134 <__swsetup_r+0x4c>
 8004108:	f013 0201 	ands.w	r2, r3, #1
 800410c:	d020      	beq.n	8004150 <__swsetup_r+0x68>
 800410e:	6963      	ldr	r3, [r4, #20]
 8004110:	2200      	movs	r2, #0
 8004112:	425b      	negs	r3, r3
 8004114:	61a3      	str	r3, [r4, #24]
 8004116:	60a2      	str	r2, [r4, #8]
 8004118:	b300      	cbz	r0, 800415c <__swsetup_r+0x74>
 800411a:	2000      	movs	r0, #0
 800411c:	bd38      	pop	{r3, r4, r5, pc}
 800411e:	06d9      	lsls	r1, r3, #27
 8004120:	d53e      	bpl.n	80041a0 <__swsetup_r+0xb8>
 8004122:	0758      	lsls	r0, r3, #29
 8004124:	d428      	bmi.n	8004178 <__swsetup_r+0x90>
 8004126:	6920      	ldr	r0, [r4, #16]
 8004128:	f042 0308 	orr.w	r3, r2, #8
 800412c:	81a3      	strh	r3, [r4, #12]
 800412e:	b29b      	uxth	r3, r3
 8004130:	2800      	cmp	r0, #0
 8004132:	d1e9      	bne.n	8004108 <__swsetup_r+0x20>
 8004134:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004138:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800413c:	d0e4      	beq.n	8004108 <__swsetup_r+0x20>
 800413e:	4628      	mov	r0, r5
 8004140:	4621      	mov	r1, r4
 8004142:	f001 fc71 	bl	8005a28 <__smakebuf_r>
 8004146:	89a3      	ldrh	r3, [r4, #12]
 8004148:	6920      	ldr	r0, [r4, #16]
 800414a:	f013 0201 	ands.w	r2, r3, #1
 800414e:	d1de      	bne.n	800410e <__swsetup_r+0x26>
 8004150:	0799      	lsls	r1, r3, #30
 8004152:	bf58      	it	pl
 8004154:	6962      	ldrpl	r2, [r4, #20]
 8004156:	60a2      	str	r2, [r4, #8]
 8004158:	2800      	cmp	r0, #0
 800415a:	d1de      	bne.n	800411a <__swsetup_r+0x32>
 800415c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004160:	061a      	lsls	r2, r3, #24
 8004162:	d5db      	bpl.n	800411c <__swsetup_r+0x34>
 8004164:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004168:	81a3      	strh	r3, [r4, #12]
 800416a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800416e:	bd38      	pop	{r3, r4, r5, pc}
 8004170:	4618      	mov	r0, r3
 8004172:	f001 f8d7 	bl	8005324 <__sinit>
 8004176:	e7c0      	b.n	80040fa <__swsetup_r+0x12>
 8004178:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800417a:	b151      	cbz	r1, 8004192 <__swsetup_r+0xaa>
 800417c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004180:	4299      	cmp	r1, r3
 8004182:	d004      	beq.n	800418e <__swsetup_r+0xa6>
 8004184:	4628      	mov	r0, r5
 8004186:	f001 f96f 	bl	8005468 <_free_r>
 800418a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800418e:	2300      	movs	r3, #0
 8004190:	6323      	str	r3, [r4, #48]	; 0x30
 8004192:	2300      	movs	r3, #0
 8004194:	6920      	ldr	r0, [r4, #16]
 8004196:	6063      	str	r3, [r4, #4]
 8004198:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800419c:	6020      	str	r0, [r4, #0]
 800419e:	e7c3      	b.n	8004128 <__swsetup_r+0x40>
 80041a0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80041a4:	2309      	movs	r3, #9
 80041a6:	602b      	str	r3, [r5, #0]
 80041a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80041ac:	81a2      	strh	r2, [r4, #12]
 80041ae:	bd38      	pop	{r3, r4, r5, pc}
 80041b0:	20000018 	.word	0x20000018

080041b4 <register_fini>:
 80041b4:	4b02      	ldr	r3, [pc, #8]	; (80041c0 <register_fini+0xc>)
 80041b6:	b113      	cbz	r3, 80041be <register_fini+0xa>
 80041b8:	4802      	ldr	r0, [pc, #8]	; (80041c4 <register_fini+0x10>)
 80041ba:	f000 b805 	b.w	80041c8 <atexit>
 80041be:	4770      	bx	lr
 80041c0:	00000000 	.word	0x00000000
 80041c4:	08005395 	.word	0x08005395

080041c8 <atexit>:
 80041c8:	2300      	movs	r3, #0
 80041ca:	4601      	mov	r1, r0
 80041cc:	461a      	mov	r2, r3
 80041ce:	4618      	mov	r0, r3
 80041d0:	f002 bd58 	b.w	8006c84 <__register_exitproc>

080041d4 <quorem>:
 80041d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80041d8:	6903      	ldr	r3, [r0, #16]
 80041da:	690f      	ldr	r7, [r1, #16]
 80041dc:	42bb      	cmp	r3, r7
 80041de:	b083      	sub	sp, #12
 80041e0:	f2c0 8086 	blt.w	80042f0 <quorem+0x11c>
 80041e4:	3f01      	subs	r7, #1
 80041e6:	f101 0914 	add.w	r9, r1, #20
 80041ea:	f100 0a14 	add.w	sl, r0, #20
 80041ee:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80041f2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80041f6:	00bc      	lsls	r4, r7, #2
 80041f8:	3201      	adds	r2, #1
 80041fa:	fbb3 f8f2 	udiv	r8, r3, r2
 80041fe:	eb0a 0304 	add.w	r3, sl, r4
 8004202:	9400      	str	r4, [sp, #0]
 8004204:	eb09 0b04 	add.w	fp, r9, r4
 8004208:	9301      	str	r3, [sp, #4]
 800420a:	f1b8 0f00 	cmp.w	r8, #0
 800420e:	d038      	beq.n	8004282 <quorem+0xae>
 8004210:	2500      	movs	r5, #0
 8004212:	462e      	mov	r6, r5
 8004214:	46ce      	mov	lr, r9
 8004216:	46d4      	mov	ip, sl
 8004218:	f85e 4b04 	ldr.w	r4, [lr], #4
 800421c:	f8dc 3000 	ldr.w	r3, [ip]
 8004220:	b2a2      	uxth	r2, r4
 8004222:	fb08 5502 	mla	r5, r8, r2, r5
 8004226:	0c22      	lsrs	r2, r4, #16
 8004228:	0c2c      	lsrs	r4, r5, #16
 800422a:	fb08 4202 	mla	r2, r8, r2, r4
 800422e:	b2ad      	uxth	r5, r5
 8004230:	1b75      	subs	r5, r6, r5
 8004232:	b296      	uxth	r6, r2
 8004234:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004238:	fa15 f383 	uxtah	r3, r5, r3
 800423c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004240:	b29b      	uxth	r3, r3
 8004242:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004246:	45f3      	cmp	fp, lr
 8004248:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800424c:	f84c 3b04 	str.w	r3, [ip], #4
 8004250:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004254:	d2e0      	bcs.n	8004218 <quorem+0x44>
 8004256:	9b00      	ldr	r3, [sp, #0]
 8004258:	f85a 3003 	ldr.w	r3, [sl, r3]
 800425c:	b98b      	cbnz	r3, 8004282 <quorem+0xae>
 800425e:	9a01      	ldr	r2, [sp, #4]
 8004260:	1f13      	subs	r3, r2, #4
 8004262:	459a      	cmp	sl, r3
 8004264:	d20c      	bcs.n	8004280 <quorem+0xac>
 8004266:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800426a:	b94b      	cbnz	r3, 8004280 <quorem+0xac>
 800426c:	f1a2 0308 	sub.w	r3, r2, #8
 8004270:	e002      	b.n	8004278 <quorem+0xa4>
 8004272:	681a      	ldr	r2, [r3, #0]
 8004274:	3b04      	subs	r3, #4
 8004276:	b91a      	cbnz	r2, 8004280 <quorem+0xac>
 8004278:	459a      	cmp	sl, r3
 800427a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800427e:	d3f8      	bcc.n	8004272 <quorem+0x9e>
 8004280:	6107      	str	r7, [r0, #16]
 8004282:	4604      	mov	r4, r0
 8004284:	f002 f944 	bl	8006510 <__mcmp>
 8004288:	2800      	cmp	r0, #0
 800428a:	db2d      	blt.n	80042e8 <quorem+0x114>
 800428c:	f108 0801 	add.w	r8, r8, #1
 8004290:	4655      	mov	r5, sl
 8004292:	2300      	movs	r3, #0
 8004294:	f859 1b04 	ldr.w	r1, [r9], #4
 8004298:	6828      	ldr	r0, [r5, #0]
 800429a:	b28a      	uxth	r2, r1
 800429c:	1a9a      	subs	r2, r3, r2
 800429e:	0c0b      	lsrs	r3, r1, #16
 80042a0:	fa12 f280 	uxtah	r2, r2, r0
 80042a4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80042a8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80042ac:	b292      	uxth	r2, r2
 80042ae:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80042b2:	45cb      	cmp	fp, r9
 80042b4:	f845 2b04 	str.w	r2, [r5], #4
 80042b8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80042bc:	d2ea      	bcs.n	8004294 <quorem+0xc0>
 80042be:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80042c2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80042c6:	b97a      	cbnz	r2, 80042e8 <quorem+0x114>
 80042c8:	1f1a      	subs	r2, r3, #4
 80042ca:	4592      	cmp	sl, r2
 80042cc:	d20b      	bcs.n	80042e6 <quorem+0x112>
 80042ce:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80042d2:	b942      	cbnz	r2, 80042e6 <quorem+0x112>
 80042d4:	3b08      	subs	r3, #8
 80042d6:	e002      	b.n	80042de <quorem+0x10a>
 80042d8:	681a      	ldr	r2, [r3, #0]
 80042da:	3b04      	subs	r3, #4
 80042dc:	b91a      	cbnz	r2, 80042e6 <quorem+0x112>
 80042de:	459a      	cmp	sl, r3
 80042e0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80042e4:	d3f8      	bcc.n	80042d8 <quorem+0x104>
 80042e6:	6127      	str	r7, [r4, #16]
 80042e8:	4640      	mov	r0, r8
 80042ea:	b003      	add	sp, #12
 80042ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042f0:	2000      	movs	r0, #0
 80042f2:	b003      	add	sp, #12
 80042f4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080042f8 <_dtoa_r>:
 80042f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80042fc:	ec55 4b10 	vmov	r4, r5, d0
 8004300:	b09b      	sub	sp, #108	; 0x6c
 8004302:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004304:	9102      	str	r1, [sp, #8]
 8004306:	4681      	mov	r9, r0
 8004308:	9207      	str	r2, [sp, #28]
 800430a:	9305      	str	r3, [sp, #20]
 800430c:	e9cd 4500 	strd	r4, r5, [sp]
 8004310:	b156      	cbz	r6, 8004328 <_dtoa_r+0x30>
 8004312:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004314:	6072      	str	r2, [r6, #4]
 8004316:	2301      	movs	r3, #1
 8004318:	4093      	lsls	r3, r2
 800431a:	60b3      	str	r3, [r6, #8]
 800431c:	4631      	mov	r1, r6
 800431e:	f001 ff07 	bl	8006130 <_Bfree>
 8004322:	2300      	movs	r3, #0
 8004324:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004328:	f1b5 0800 	subs.w	r8, r5, #0
 800432c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800432e:	bfb4      	ite	lt
 8004330:	2301      	movlt	r3, #1
 8004332:	2300      	movge	r3, #0
 8004334:	6013      	str	r3, [r2, #0]
 8004336:	4b76      	ldr	r3, [pc, #472]	; (8004510 <_dtoa_r+0x218>)
 8004338:	bfbc      	itt	lt
 800433a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800433e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004342:	ea33 0308 	bics.w	r3, r3, r8
 8004346:	f000 80a6 	beq.w	8004496 <_dtoa_r+0x19e>
 800434a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800434e:	2200      	movs	r2, #0
 8004350:	2300      	movs	r3, #0
 8004352:	4630      	mov	r0, r6
 8004354:	4639      	mov	r1, r7
 8004356:	f7fc fe57 	bl	8001008 <__aeabi_dcmpeq>
 800435a:	4605      	mov	r5, r0
 800435c:	b178      	cbz	r0, 800437e <_dtoa_r+0x86>
 800435e:	9a05      	ldr	r2, [sp, #20]
 8004360:	2301      	movs	r3, #1
 8004362:	6013      	str	r3, [r2, #0]
 8004364:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004366:	2b00      	cmp	r3, #0
 8004368:	f000 80c0 	beq.w	80044ec <_dtoa_r+0x1f4>
 800436c:	4b69      	ldr	r3, [pc, #420]	; (8004514 <_dtoa_r+0x21c>)
 800436e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004370:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004374:	6013      	str	r3, [r2, #0]
 8004376:	4658      	mov	r0, fp
 8004378:	b01b      	add	sp, #108	; 0x6c
 800437a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800437e:	aa18      	add	r2, sp, #96	; 0x60
 8004380:	a919      	add	r1, sp, #100	; 0x64
 8004382:	ec47 6b10 	vmov	d0, r6, r7
 8004386:	4648      	mov	r0, r9
 8004388:	f002 f954 	bl	8006634 <__d2b>
 800438c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004390:	4682      	mov	sl, r0
 8004392:	f040 80a0 	bne.w	80044d6 <_dtoa_r+0x1de>
 8004396:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800439a:	442c      	add	r4, r5
 800439c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80043a0:	2b20      	cmp	r3, #32
 80043a2:	f340 842c 	ble.w	8004bfe <_dtoa_r+0x906>
 80043a6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80043aa:	fa08 f803 	lsl.w	r8, r8, r3
 80043ae:	9b00      	ldr	r3, [sp, #0]
 80043b0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80043b4:	fa23 f000 	lsr.w	r0, r3, r0
 80043b8:	ea48 0000 	orr.w	r0, r8, r0
 80043bc:	f7fc fb42 	bl	8000a44 <__aeabi_ui2d>
 80043c0:	2301      	movs	r3, #1
 80043c2:	4606      	mov	r6, r0
 80043c4:	3c01      	subs	r4, #1
 80043c6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80043ca:	930f      	str	r3, [sp, #60]	; 0x3c
 80043cc:	4630      	mov	r0, r6
 80043ce:	4639      	mov	r1, r7
 80043d0:	2200      	movs	r2, #0
 80043d2:	4b51      	ldr	r3, [pc, #324]	; (8004518 <_dtoa_r+0x220>)
 80043d4:	f7fc f9f8 	bl	80007c8 <__aeabi_dsub>
 80043d8:	a347      	add	r3, pc, #284	; (adr r3, 80044f8 <_dtoa_r+0x200>)
 80043da:	e9d3 2300 	ldrd	r2, r3, [r3]
 80043de:	f7fc fbab 	bl	8000b38 <__aeabi_dmul>
 80043e2:	a347      	add	r3, pc, #284	; (adr r3, 8004500 <_dtoa_r+0x208>)
 80043e4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80043e8:	f7fc f9f0 	bl	80007cc <__adddf3>
 80043ec:	4606      	mov	r6, r0
 80043ee:	4620      	mov	r0, r4
 80043f0:	460f      	mov	r7, r1
 80043f2:	f7fc fb37 	bl	8000a64 <__aeabi_i2d>
 80043f6:	a344      	add	r3, pc, #272	; (adr r3, 8004508 <_dtoa_r+0x210>)
 80043f8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80043fc:	f7fc fb9c 	bl	8000b38 <__aeabi_dmul>
 8004400:	4602      	mov	r2, r0
 8004402:	460b      	mov	r3, r1
 8004404:	4630      	mov	r0, r6
 8004406:	4639      	mov	r1, r7
 8004408:	f7fc f9e0 	bl	80007cc <__adddf3>
 800440c:	4606      	mov	r6, r0
 800440e:	460f      	mov	r7, r1
 8004410:	f7fc fe42 	bl	8001098 <__aeabi_d2iz>
 8004414:	2200      	movs	r2, #0
 8004416:	9006      	str	r0, [sp, #24]
 8004418:	2300      	movs	r3, #0
 800441a:	4630      	mov	r0, r6
 800441c:	4639      	mov	r1, r7
 800441e:	f7fc fdfd 	bl	800101c <__aeabi_dcmplt>
 8004422:	2800      	cmp	r0, #0
 8004424:	f040 8273 	bne.w	800490e <_dtoa_r+0x616>
 8004428:	9e06      	ldr	r6, [sp, #24]
 800442a:	2e16      	cmp	r6, #22
 800442c:	f200 825d 	bhi.w	80048ea <_dtoa_r+0x5f2>
 8004430:	4b3a      	ldr	r3, [pc, #232]	; (800451c <_dtoa_r+0x224>)
 8004432:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004436:	e9d3 0100 	ldrd	r0, r1, [r3]
 800443a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800443e:	f7fc fe0b 	bl	8001058 <__aeabi_dcmpgt>
 8004442:	2800      	cmp	r0, #0
 8004444:	f000 83d7 	beq.w	8004bf6 <_dtoa_r+0x8fe>
 8004448:	1e73      	subs	r3, r6, #1
 800444a:	9306      	str	r3, [sp, #24]
 800444c:	2300      	movs	r3, #0
 800444e:	930d      	str	r3, [sp, #52]	; 0x34
 8004450:	1b2c      	subs	r4, r5, r4
 8004452:	f1b4 0801 	subs.w	r8, r4, #1
 8004456:	f100 8254 	bmi.w	8004902 <_dtoa_r+0x60a>
 800445a:	2300      	movs	r3, #0
 800445c:	9308      	str	r3, [sp, #32]
 800445e:	9b06      	ldr	r3, [sp, #24]
 8004460:	2b00      	cmp	r3, #0
 8004462:	f2c0 8245 	blt.w	80048f0 <_dtoa_r+0x5f8>
 8004466:	4498      	add	r8, r3
 8004468:	930c      	str	r3, [sp, #48]	; 0x30
 800446a:	2300      	movs	r3, #0
 800446c:	930b      	str	r3, [sp, #44]	; 0x2c
 800446e:	9b02      	ldr	r3, [sp, #8]
 8004470:	2b09      	cmp	r3, #9
 8004472:	d85b      	bhi.n	800452c <_dtoa_r+0x234>
 8004474:	2b05      	cmp	r3, #5
 8004476:	f340 83c0 	ble.w	8004bfa <_dtoa_r+0x902>
 800447a:	3b04      	subs	r3, #4
 800447c:	9302      	str	r3, [sp, #8]
 800447e:	2500      	movs	r5, #0
 8004480:	9b02      	ldr	r3, [sp, #8]
 8004482:	3b02      	subs	r3, #2
 8004484:	2b03      	cmp	r3, #3
 8004486:	f200 8498 	bhi.w	8004dba <_dtoa_r+0xac2>
 800448a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800448e:	03df      	.short	0x03df
 8004490:	03e803bf 	.word	0x03e803bf
 8004494:	04f5      	.short	0x04f5
 8004496:	9a05      	ldr	r2, [sp, #20]
 8004498:	f242 730f 	movw	r3, #9999	; 0x270f
 800449c:	6013      	str	r3, [r2, #0]
 800449e:	9b00      	ldr	r3, [sp, #0]
 80044a0:	b983      	cbnz	r3, 80044c4 <_dtoa_r+0x1cc>
 80044a2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80044a6:	b96b      	cbnz	r3, 80044c4 <_dtoa_r+0x1cc>
 80044a8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80044aa:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004520 <_dtoa_r+0x228>
 80044ae:	2b00      	cmp	r3, #0
 80044b0:	f43f af61 	beq.w	8004376 <_dtoa_r+0x7e>
 80044b4:	f10b 0308 	add.w	r3, fp, #8
 80044b8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80044ba:	4658      	mov	r0, fp
 80044bc:	6013      	str	r3, [r2, #0]
 80044be:	b01b      	add	sp, #108	; 0x6c
 80044c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80044c4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80044c6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004524 <_dtoa_r+0x22c>
 80044ca:	2b00      	cmp	r3, #0
 80044cc:	f43f af53 	beq.w	8004376 <_dtoa_r+0x7e>
 80044d0:	f10b 0303 	add.w	r3, fp, #3
 80044d4:	e7f0      	b.n	80044b8 <_dtoa_r+0x1c0>
 80044d6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80044da:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80044de:	950f      	str	r5, [sp, #60]	; 0x3c
 80044e0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80044e4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80044e8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80044ea:	e76f      	b.n	80043cc <_dtoa_r+0xd4>
 80044ec:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004528 <_dtoa_r+0x230>
 80044f0:	4658      	mov	r0, fp
 80044f2:	b01b      	add	sp, #108	; 0x6c
 80044f4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80044f8:	636f4361 	.word	0x636f4361
 80044fc:	3fd287a7 	.word	0x3fd287a7
 8004500:	8b60c8b3 	.word	0x8b60c8b3
 8004504:	3fc68a28 	.word	0x3fc68a28
 8004508:	509f79fb 	.word	0x509f79fb
 800450c:	3fd34413 	.word	0x3fd34413
 8004510:	7ff00000 	.word	0x7ff00000
 8004514:	08007429 	.word	0x08007429
 8004518:	3ff80000 	.word	0x3ff80000
 800451c:	08007488 	.word	0x08007488
 8004520:	0800744c 	.word	0x0800744c
 8004524:	08007458 	.word	0x08007458
 8004528:	08007428 	.word	0x08007428
 800452c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004530:	2501      	movs	r5, #1
 8004532:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004536:	2300      	movs	r3, #0
 8004538:	9302      	str	r3, [sp, #8]
 800453a:	9307      	str	r3, [sp, #28]
 800453c:	2100      	movs	r1, #0
 800453e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004542:	940e      	str	r4, [sp, #56]	; 0x38
 8004544:	4648      	mov	r0, r9
 8004546:	f001 fdcd 	bl	80060e4 <_Balloc>
 800454a:	2c0e      	cmp	r4, #14
 800454c:	4683      	mov	fp, r0
 800454e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004552:	f200 80fb 	bhi.w	800474c <_dtoa_r+0x454>
 8004556:	2d00      	cmp	r5, #0
 8004558:	f000 80f8 	beq.w	800474c <_dtoa_r+0x454>
 800455c:	ed9d 7b00 	vldr	d7, [sp]
 8004560:	9906      	ldr	r1, [sp, #24]
 8004562:	2900      	cmp	r1, #0
 8004564:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004568:	f340 83e5 	ble.w	8004d36 <_dtoa_r+0xa3e>
 800456c:	4b9d      	ldr	r3, [pc, #628]	; (80047e4 <_dtoa_r+0x4ec>)
 800456e:	f001 020f 	and.w	r2, r1, #15
 8004572:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004576:	ed93 7b00 	vldr	d7, [r3]
 800457a:	110c      	asrs	r4, r1, #4
 800457c:	06e2      	lsls	r2, r4, #27
 800457e:	ed8d 7b00 	vstr	d7, [sp]
 8004582:	f140 849e 	bpl.w	8004ec2 <_dtoa_r+0xbca>
 8004586:	4b98      	ldr	r3, [pc, #608]	; (80047e8 <_dtoa_r+0x4f0>)
 8004588:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800458c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004590:	f7fc fbfc 	bl	8000d8c <__aeabi_ddiv>
 8004594:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004598:	f004 040f 	and.w	r4, r4, #15
 800459c:	2603      	movs	r6, #3
 800459e:	b17c      	cbz	r4, 80045c0 <_dtoa_r+0x2c8>
 80045a0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80045a4:	4d90      	ldr	r5, [pc, #576]	; (80047e8 <_dtoa_r+0x4f0>)
 80045a6:	07e3      	lsls	r3, r4, #31
 80045a8:	d504      	bpl.n	80045b4 <_dtoa_r+0x2bc>
 80045aa:	e9d5 2300 	ldrd	r2, r3, [r5]
 80045ae:	f7fc fac3 	bl	8000b38 <__aeabi_dmul>
 80045b2:	3601      	adds	r6, #1
 80045b4:	1064      	asrs	r4, r4, #1
 80045b6:	f105 0508 	add.w	r5, r5, #8
 80045ba:	d1f4      	bne.n	80045a6 <_dtoa_r+0x2ae>
 80045bc:	e9cd 0100 	strd	r0, r1, [sp]
 80045c0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045c4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80045c8:	f7fc fbe0 	bl	8000d8c <__aeabi_ddiv>
 80045cc:	e9cd 0100 	strd	r0, r1, [sp]
 80045d0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80045d2:	b143      	cbz	r3, 80045e6 <_dtoa_r+0x2ee>
 80045d4:	2200      	movs	r2, #0
 80045d6:	4b85      	ldr	r3, [pc, #532]	; (80047ec <_dtoa_r+0x4f4>)
 80045d8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80045dc:	f7fc fd1e 	bl	800101c <__aeabi_dcmplt>
 80045e0:	2800      	cmp	r0, #0
 80045e2:	f040 84ff 	bne.w	8004fe4 <_dtoa_r+0xcec>
 80045e6:	4630      	mov	r0, r6
 80045e8:	f7fc fa3c 	bl	8000a64 <__aeabi_i2d>
 80045ec:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045f0:	f7fc faa2 	bl	8000b38 <__aeabi_dmul>
 80045f4:	4b7e      	ldr	r3, [pc, #504]	; (80047f0 <_dtoa_r+0x4f8>)
 80045f6:	2200      	movs	r2, #0
 80045f8:	f7fc f8e8 	bl	80007cc <__adddf3>
 80045fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045fe:	4606      	mov	r6, r0
 8004600:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004604:	2b00      	cmp	r3, #0
 8004606:	f000 841c 	beq.w	8004e42 <_dtoa_r+0xb4a>
 800460a:	9b06      	ldr	r3, [sp, #24]
 800460c:	9316      	str	r3, [sp, #88]	; 0x58
 800460e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004610:	9312      	str	r3, [sp, #72]	; 0x48
 8004612:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004616:	f7fc fd3f 	bl	8001098 <__aeabi_d2iz>
 800461a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800461c:	4b71      	ldr	r3, [pc, #452]	; (80047e4 <_dtoa_r+0x4ec>)
 800461e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004622:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004626:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800462a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800462e:	f7fc fa19 	bl	8000a64 <__aeabi_i2d>
 8004632:	460b      	mov	r3, r1
 8004634:	4602      	mov	r2, r0
 8004636:	e9dd 0100 	ldrd	r0, r1, [sp]
 800463a:	e9cd 6700 	strd	r6, r7, [sp]
 800463e:	f7fc f8c3 	bl	80007c8 <__aeabi_dsub>
 8004642:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004644:	b2ed      	uxtb	r5, r5
 8004646:	4606      	mov	r6, r0
 8004648:	460f      	mov	r7, r1
 800464a:	f10b 0401 	add.w	r4, fp, #1
 800464e:	2b00      	cmp	r3, #0
 8004650:	f000 8458 	beq.w	8004f04 <_dtoa_r+0xc0c>
 8004654:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004658:	2000      	movs	r0, #0
 800465a:	4966      	ldr	r1, [pc, #408]	; (80047f4 <_dtoa_r+0x4fc>)
 800465c:	f7fc fb96 	bl	8000d8c <__aeabi_ddiv>
 8004660:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004664:	f7fc f8b0 	bl	80007c8 <__aeabi_dsub>
 8004668:	f88b 5000 	strb.w	r5, [fp]
 800466c:	4632      	mov	r2, r6
 800466e:	463b      	mov	r3, r7
 8004670:	e9cd 0100 	strd	r0, r1, [sp]
 8004674:	f7fc fcf0 	bl	8001058 <__aeabi_dcmpgt>
 8004678:	2800      	cmp	r0, #0
 800467a:	f040 8502 	bne.w	8005082 <_dtoa_r+0xd8a>
 800467e:	4632      	mov	r2, r6
 8004680:	463b      	mov	r3, r7
 8004682:	2000      	movs	r0, #0
 8004684:	4959      	ldr	r1, [pc, #356]	; (80047ec <_dtoa_r+0x4f4>)
 8004686:	f7fc f89f 	bl	80007c8 <__aeabi_dsub>
 800468a:	4602      	mov	r2, r0
 800468c:	460b      	mov	r3, r1
 800468e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004692:	f7fc fce1 	bl	8001058 <__aeabi_dcmpgt>
 8004696:	2800      	cmp	r0, #0
 8004698:	f040 84fb 	bne.w	8005092 <_dtoa_r+0xd9a>
 800469c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800469e:	2a01      	cmp	r2, #1
 80046a0:	d050      	beq.n	8004744 <_dtoa_r+0x44c>
 80046a2:	445a      	add	r2, fp
 80046a4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80046a8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80046ac:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80046b0:	4692      	mov	sl, r2
 80046b2:	46cb      	mov	fp, r9
 80046b4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80046b8:	e00c      	b.n	80046d4 <_dtoa_r+0x3dc>
 80046ba:	2000      	movs	r0, #0
 80046bc:	494b      	ldr	r1, [pc, #300]	; (80047ec <_dtoa_r+0x4f4>)
 80046be:	f7fc f883 	bl	80007c8 <__aeabi_dsub>
 80046c2:	4642      	mov	r2, r8
 80046c4:	464b      	mov	r3, r9
 80046c6:	f7fc fca9 	bl	800101c <__aeabi_dcmplt>
 80046ca:	2800      	cmp	r0, #0
 80046cc:	f040 84dc 	bne.w	8005088 <_dtoa_r+0xd90>
 80046d0:	4554      	cmp	r4, sl
 80046d2:	d030      	beq.n	8004736 <_dtoa_r+0x43e>
 80046d4:	4640      	mov	r0, r8
 80046d6:	4649      	mov	r1, r9
 80046d8:	2200      	movs	r2, #0
 80046da:	4b47      	ldr	r3, [pc, #284]	; (80047f8 <_dtoa_r+0x500>)
 80046dc:	f7fc fa2c 	bl	8000b38 <__aeabi_dmul>
 80046e0:	2200      	movs	r2, #0
 80046e2:	4b45      	ldr	r3, [pc, #276]	; (80047f8 <_dtoa_r+0x500>)
 80046e4:	4680      	mov	r8, r0
 80046e6:	4689      	mov	r9, r1
 80046e8:	4630      	mov	r0, r6
 80046ea:	4639      	mov	r1, r7
 80046ec:	f7fc fa24 	bl	8000b38 <__aeabi_dmul>
 80046f0:	460f      	mov	r7, r1
 80046f2:	4606      	mov	r6, r0
 80046f4:	f7fc fcd0 	bl	8001098 <__aeabi_d2iz>
 80046f8:	4605      	mov	r5, r0
 80046fa:	f7fc f9b3 	bl	8000a64 <__aeabi_i2d>
 80046fe:	4602      	mov	r2, r0
 8004700:	460b      	mov	r3, r1
 8004702:	4630      	mov	r0, r6
 8004704:	4639      	mov	r1, r7
 8004706:	f7fc f85f 	bl	80007c8 <__aeabi_dsub>
 800470a:	3530      	adds	r5, #48	; 0x30
 800470c:	b2ed      	uxtb	r5, r5
 800470e:	4642      	mov	r2, r8
 8004710:	464b      	mov	r3, r9
 8004712:	f804 5b01 	strb.w	r5, [r4], #1
 8004716:	4606      	mov	r6, r0
 8004718:	460f      	mov	r7, r1
 800471a:	f7fc fc7f 	bl	800101c <__aeabi_dcmplt>
 800471e:	4632      	mov	r2, r6
 8004720:	463b      	mov	r3, r7
 8004722:	2800      	cmp	r0, #0
 8004724:	d0c9      	beq.n	80046ba <_dtoa_r+0x3c2>
 8004726:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004728:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800472c:	9306      	str	r3, [sp, #24]
 800472e:	46d9      	mov	r9, fp
 8004730:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004734:	e236      	b.n	8004ba4 <_dtoa_r+0x8ac>
 8004736:	46d9      	mov	r9, fp
 8004738:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800473c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004740:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004744:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004748:	e9cd 3400 	strd	r3, r4, [sp]
 800474c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800474e:	2b00      	cmp	r3, #0
 8004750:	f2c0 80ae 	blt.w	80048b0 <_dtoa_r+0x5b8>
 8004754:	9a06      	ldr	r2, [sp, #24]
 8004756:	2a0e      	cmp	r2, #14
 8004758:	f300 80aa 	bgt.w	80048b0 <_dtoa_r+0x5b8>
 800475c:	4b21      	ldr	r3, [pc, #132]	; (80047e4 <_dtoa_r+0x4ec>)
 800475e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004762:	ed93 7b00 	vldr	d7, [r3]
 8004766:	9b07      	ldr	r3, [sp, #28]
 8004768:	2b00      	cmp	r3, #0
 800476a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800476e:	f2c0 82be 	blt.w	8004cee <_dtoa_r+0x9f6>
 8004772:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004776:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800477a:	4630      	mov	r0, r6
 800477c:	4639      	mov	r1, r7
 800477e:	f7fc fb05 	bl	8000d8c <__aeabi_ddiv>
 8004782:	f7fc fc89 	bl	8001098 <__aeabi_d2iz>
 8004786:	4605      	mov	r5, r0
 8004788:	f7fc f96c 	bl	8000a64 <__aeabi_i2d>
 800478c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004790:	f7fc f9d2 	bl	8000b38 <__aeabi_dmul>
 8004794:	460b      	mov	r3, r1
 8004796:	4602      	mov	r2, r0
 8004798:	4639      	mov	r1, r7
 800479a:	4630      	mov	r0, r6
 800479c:	f7fc f814 	bl	80007c8 <__aeabi_dsub>
 80047a0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80047a4:	f88b 3000 	strb.w	r3, [fp]
 80047a8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047aa:	2b01      	cmp	r3, #1
 80047ac:	4606      	mov	r6, r0
 80047ae:	460f      	mov	r7, r1
 80047b0:	f10b 0401 	add.w	r4, fp, #1
 80047b4:	d053      	beq.n	800485e <_dtoa_r+0x566>
 80047b6:	2200      	movs	r2, #0
 80047b8:	4b0f      	ldr	r3, [pc, #60]	; (80047f8 <_dtoa_r+0x500>)
 80047ba:	f7fc f9bd 	bl	8000b38 <__aeabi_dmul>
 80047be:	2200      	movs	r2, #0
 80047c0:	2300      	movs	r3, #0
 80047c2:	4606      	mov	r6, r0
 80047c4:	460f      	mov	r7, r1
 80047c6:	f7fc fc1f 	bl	8001008 <__aeabi_dcmpeq>
 80047ca:	2800      	cmp	r0, #0
 80047cc:	f040 81ea 	bne.w	8004ba4 <_dtoa_r+0x8ac>
 80047d0:	f8cd a000 	str.w	sl, [sp]
 80047d4:	f8cd 901c 	str.w	r9, [sp, #28]
 80047d8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80047dc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80047e0:	e017      	b.n	8004812 <_dtoa_r+0x51a>
 80047e2:	bf00      	nop
 80047e4:	08007488 	.word	0x08007488
 80047e8:	08007460 	.word	0x08007460
 80047ec:	3ff00000 	.word	0x3ff00000
 80047f0:	401c0000 	.word	0x401c0000
 80047f4:	3fe00000 	.word	0x3fe00000
 80047f8:	40240000 	.word	0x40240000
 80047fc:	f7fc f99c 	bl	8000b38 <__aeabi_dmul>
 8004800:	2200      	movs	r2, #0
 8004802:	2300      	movs	r3, #0
 8004804:	4606      	mov	r6, r0
 8004806:	460f      	mov	r7, r1
 8004808:	f7fc fbfe 	bl	8001008 <__aeabi_dcmpeq>
 800480c:	2800      	cmp	r0, #0
 800480e:	f040 833d 	bne.w	8004e8c <_dtoa_r+0xb94>
 8004812:	464a      	mov	r2, r9
 8004814:	4653      	mov	r3, sl
 8004816:	4630      	mov	r0, r6
 8004818:	4639      	mov	r1, r7
 800481a:	f7fc fab7 	bl	8000d8c <__aeabi_ddiv>
 800481e:	f7fc fc3b 	bl	8001098 <__aeabi_d2iz>
 8004822:	4605      	mov	r5, r0
 8004824:	f7fc f91e 	bl	8000a64 <__aeabi_i2d>
 8004828:	464a      	mov	r2, r9
 800482a:	4653      	mov	r3, sl
 800482c:	f7fc f984 	bl	8000b38 <__aeabi_dmul>
 8004830:	4602      	mov	r2, r0
 8004832:	460b      	mov	r3, r1
 8004834:	4630      	mov	r0, r6
 8004836:	4639      	mov	r1, r7
 8004838:	f7fb ffc6 	bl	80007c8 <__aeabi_dsub>
 800483c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004840:	f804 cb01 	strb.w	ip, [r4], #1
 8004844:	eba4 0c0b 	sub.w	ip, r4, fp
 8004848:	45e0      	cmp	r8, ip
 800484a:	4606      	mov	r6, r0
 800484c:	460f      	mov	r7, r1
 800484e:	f04f 0200 	mov.w	r2, #0
 8004852:	4bc1      	ldr	r3, [pc, #772]	; (8004b58 <_dtoa_r+0x860>)
 8004854:	d1d2      	bne.n	80047fc <_dtoa_r+0x504>
 8004856:	f8dd a000 	ldr.w	sl, [sp]
 800485a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800485e:	4632      	mov	r2, r6
 8004860:	463b      	mov	r3, r7
 8004862:	4630      	mov	r0, r6
 8004864:	4639      	mov	r1, r7
 8004866:	f7fb ffb1 	bl	80007cc <__adddf3>
 800486a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800486e:	4606      	mov	r6, r0
 8004870:	460f      	mov	r7, r1
 8004872:	f7fc fbf1 	bl	8001058 <__aeabi_dcmpgt>
 8004876:	b958      	cbnz	r0, 8004890 <_dtoa_r+0x598>
 8004878:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800487c:	4630      	mov	r0, r6
 800487e:	4639      	mov	r1, r7
 8004880:	f7fc fbc2 	bl	8001008 <__aeabi_dcmpeq>
 8004884:	2800      	cmp	r0, #0
 8004886:	f000 818d 	beq.w	8004ba4 <_dtoa_r+0x8ac>
 800488a:	07e9      	lsls	r1, r5, #31
 800488c:	f140 818a 	bpl.w	8004ba4 <_dtoa_r+0x8ac>
 8004890:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004894:	e005      	b.n	80048a2 <_dtoa_r+0x5aa>
 8004896:	459b      	cmp	fp, r3
 8004898:	f000 8373 	beq.w	8004f82 <_dtoa_r+0xc8a>
 800489c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80048a0:	461c      	mov	r4, r3
 80048a2:	2d39      	cmp	r5, #57	; 0x39
 80048a4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80048a8:	d0f5      	beq.n	8004896 <_dtoa_r+0x59e>
 80048aa:	3501      	adds	r5, #1
 80048ac:	701d      	strb	r5, [r3, #0]
 80048ae:	e179      	b.n	8004ba4 <_dtoa_r+0x8ac>
 80048b0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80048b2:	2a00      	cmp	r2, #0
 80048b4:	d03b      	beq.n	800492e <_dtoa_r+0x636>
 80048b6:	9a02      	ldr	r2, [sp, #8]
 80048b8:	2a01      	cmp	r2, #1
 80048ba:	f340 820b 	ble.w	8004cd4 <_dtoa_r+0x9dc>
 80048be:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048c0:	1e5f      	subs	r7, r3, #1
 80048c2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80048c4:	42bb      	cmp	r3, r7
 80048c6:	f2c0 82e6 	blt.w	8004e96 <_dtoa_r+0xb9e>
 80048ca:	1bdf      	subs	r7, r3, r7
 80048cc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048ce:	2b00      	cmp	r3, #0
 80048d0:	f2c0 830b 	blt.w	8004eea <_dtoa_r+0xbf2>
 80048d4:	9a08      	ldr	r2, [sp, #32]
 80048d6:	4614      	mov	r4, r2
 80048d8:	441a      	add	r2, r3
 80048da:	4498      	add	r8, r3
 80048dc:	9208      	str	r2, [sp, #32]
 80048de:	2101      	movs	r1, #1
 80048e0:	4648      	mov	r0, r9
 80048e2:	f001 fcbf 	bl	8006264 <__i2b>
 80048e6:	4605      	mov	r5, r0
 80048e8:	e024      	b.n	8004934 <_dtoa_r+0x63c>
 80048ea:	2301      	movs	r3, #1
 80048ec:	930d      	str	r3, [sp, #52]	; 0x34
 80048ee:	e5af      	b.n	8004450 <_dtoa_r+0x158>
 80048f0:	9a08      	ldr	r2, [sp, #32]
 80048f2:	9b06      	ldr	r3, [sp, #24]
 80048f4:	1ad2      	subs	r2, r2, r3
 80048f6:	425b      	negs	r3, r3
 80048f8:	930b      	str	r3, [sp, #44]	; 0x2c
 80048fa:	2300      	movs	r3, #0
 80048fc:	9208      	str	r2, [sp, #32]
 80048fe:	930c      	str	r3, [sp, #48]	; 0x30
 8004900:	e5b5      	b.n	800446e <_dtoa_r+0x176>
 8004902:	f1c4 0301 	rsb	r3, r4, #1
 8004906:	9308      	str	r3, [sp, #32]
 8004908:	f04f 0800 	mov.w	r8, #0
 800490c:	e5a7      	b.n	800445e <_dtoa_r+0x166>
 800490e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004912:	4640      	mov	r0, r8
 8004914:	f7fc f8a6 	bl	8000a64 <__aeabi_i2d>
 8004918:	4632      	mov	r2, r6
 800491a:	463b      	mov	r3, r7
 800491c:	f7fc fb74 	bl	8001008 <__aeabi_dcmpeq>
 8004920:	2800      	cmp	r0, #0
 8004922:	f47f ad81 	bne.w	8004428 <_dtoa_r+0x130>
 8004926:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800492a:	9306      	str	r3, [sp, #24]
 800492c:	e57c      	b.n	8004428 <_dtoa_r+0x130>
 800492e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004930:	9c08      	ldr	r4, [sp, #32]
 8004932:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004934:	2c00      	cmp	r4, #0
 8004936:	dd0c      	ble.n	8004952 <_dtoa_r+0x65a>
 8004938:	f1b8 0f00 	cmp.w	r8, #0
 800493c:	dd09      	ble.n	8004952 <_dtoa_r+0x65a>
 800493e:	4544      	cmp	r4, r8
 8004940:	9a08      	ldr	r2, [sp, #32]
 8004942:	4623      	mov	r3, r4
 8004944:	bfa8      	it	ge
 8004946:	4643      	movge	r3, r8
 8004948:	1ad2      	subs	r2, r2, r3
 800494a:	9208      	str	r2, [sp, #32]
 800494c:	1ae4      	subs	r4, r4, r3
 800494e:	eba8 0803 	sub.w	r8, r8, r3
 8004952:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004954:	b16b      	cbz	r3, 8004972 <_dtoa_r+0x67a>
 8004956:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004958:	2a00      	cmp	r2, #0
 800495a:	f000 8290 	beq.w	8004e7e <_dtoa_r+0xb86>
 800495e:	1bde      	subs	r6, r3, r7
 8004960:	2f00      	cmp	r7, #0
 8004962:	f040 819b 	bne.w	8004c9c <_dtoa_r+0x9a4>
 8004966:	4651      	mov	r1, sl
 8004968:	4632      	mov	r2, r6
 800496a:	4648      	mov	r0, r9
 800496c:	f001 fd2a 	bl	80063c4 <__pow5mult>
 8004970:	4682      	mov	sl, r0
 8004972:	2101      	movs	r1, #1
 8004974:	4648      	mov	r0, r9
 8004976:	f001 fc75 	bl	8006264 <__i2b>
 800497a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800497c:	4606      	mov	r6, r0
 800497e:	2a00      	cmp	r2, #0
 8004980:	f040 8125 	bne.w	8004bce <_dtoa_r+0x8d6>
 8004984:	9b02      	ldr	r3, [sp, #8]
 8004986:	2b01      	cmp	r3, #1
 8004988:	f340 816c 	ble.w	8004c64 <_dtoa_r+0x96c>
 800498c:	2001      	movs	r0, #1
 800498e:	4440      	add	r0, r8
 8004990:	f010 001f 	ands.w	r0, r0, #31
 8004994:	f000 8119 	beq.w	8004bca <_dtoa_r+0x8d2>
 8004998:	f1c0 0320 	rsb	r3, r0, #32
 800499c:	2b04      	cmp	r3, #4
 800499e:	f340 83ac 	ble.w	80050fa <_dtoa_r+0xe02>
 80049a2:	f1c0 001c 	rsb	r0, r0, #28
 80049a6:	9b08      	ldr	r3, [sp, #32]
 80049a8:	4403      	add	r3, r0
 80049aa:	9308      	str	r3, [sp, #32]
 80049ac:	4404      	add	r4, r0
 80049ae:	4480      	add	r8, r0
 80049b0:	9b08      	ldr	r3, [sp, #32]
 80049b2:	2b00      	cmp	r3, #0
 80049b4:	dd05      	ble.n	80049c2 <_dtoa_r+0x6ca>
 80049b6:	4651      	mov	r1, sl
 80049b8:	461a      	mov	r2, r3
 80049ba:	4648      	mov	r0, r9
 80049bc:	f001 fd52 	bl	8006464 <__lshift>
 80049c0:	4682      	mov	sl, r0
 80049c2:	f1b8 0f00 	cmp.w	r8, #0
 80049c6:	dd05      	ble.n	80049d4 <_dtoa_r+0x6dc>
 80049c8:	4631      	mov	r1, r6
 80049ca:	4642      	mov	r2, r8
 80049cc:	4648      	mov	r0, r9
 80049ce:	f001 fd49 	bl	8006464 <__lshift>
 80049d2:	4606      	mov	r6, r0
 80049d4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80049d6:	2b00      	cmp	r3, #0
 80049d8:	d177      	bne.n	8004aca <_dtoa_r+0x7d2>
 80049da:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049dc:	2b00      	cmp	r3, #0
 80049de:	f340 8209 	ble.w	8004df4 <_dtoa_r+0xafc>
 80049e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80049e4:	2b00      	cmp	r3, #0
 80049e6:	f000 8089 	beq.w	8004afc <_dtoa_r+0x804>
 80049ea:	2c00      	cmp	r4, #0
 80049ec:	f300 816b 	bgt.w	8004cc6 <_dtoa_r+0x9ce>
 80049f0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80049f2:	2b00      	cmp	r3, #0
 80049f4:	f040 81cd 	bne.w	8004d92 <_dtoa_r+0xa9a>
 80049f8:	46a8      	mov	r8, r5
 80049fa:	9a00      	ldr	r2, [sp, #0]
 80049fc:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004a00:	f002 0201 	and.w	r2, r2, #1
 8004a04:	920a      	str	r2, [sp, #40]	; 0x28
 8004a06:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004a08:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004a0c:	441a      	add	r2, r3
 8004a0e:	465f      	mov	r7, fp
 8004a10:	9209      	str	r2, [sp, #36]	; 0x24
 8004a12:	46b3      	mov	fp, r6
 8004a14:	4659      	mov	r1, fp
 8004a16:	4650      	mov	r0, sl
 8004a18:	f7ff fbdc 	bl	80041d4 <quorem>
 8004a1c:	4629      	mov	r1, r5
 8004a1e:	4604      	mov	r4, r0
 8004a20:	4650      	mov	r0, sl
 8004a22:	f001 fd75 	bl	8006510 <__mcmp>
 8004a26:	4659      	mov	r1, fp
 8004a28:	4606      	mov	r6, r0
 8004a2a:	4642      	mov	r2, r8
 8004a2c:	4648      	mov	r0, r9
 8004a2e:	f001 fd8b 	bl	8006548 <__mdiff>
 8004a32:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004a36:	9300      	str	r3, [sp, #0]
 8004a38:	68c3      	ldr	r3, [r0, #12]
 8004a3a:	4601      	mov	r1, r0
 8004a3c:	2b00      	cmp	r3, #0
 8004a3e:	f040 81d4 	bne.w	8004dea <_dtoa_r+0xaf2>
 8004a42:	9008      	str	r0, [sp, #32]
 8004a44:	4650      	mov	r0, sl
 8004a46:	f001 fd63 	bl	8006510 <__mcmp>
 8004a4a:	9a08      	ldr	r2, [sp, #32]
 8004a4c:	9007      	str	r0, [sp, #28]
 8004a4e:	4611      	mov	r1, r2
 8004a50:	4648      	mov	r0, r9
 8004a52:	f001 fb6d 	bl	8006130 <_Bfree>
 8004a56:	9b07      	ldr	r3, [sp, #28]
 8004a58:	b933      	cbnz	r3, 8004a68 <_dtoa_r+0x770>
 8004a5a:	9a02      	ldr	r2, [sp, #8]
 8004a5c:	b922      	cbnz	r2, 8004a68 <_dtoa_r+0x770>
 8004a5e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a60:	2b00      	cmp	r3, #0
 8004a62:	f000 8319 	beq.w	8005098 <_dtoa_r+0xda0>
 8004a66:	9b02      	ldr	r3, [sp, #8]
 8004a68:	2e00      	cmp	r6, #0
 8004a6a:	f2c0 821c 	blt.w	8004ea6 <_dtoa_r+0xbae>
 8004a6e:	d105      	bne.n	8004a7c <_dtoa_r+0x784>
 8004a70:	9a02      	ldr	r2, [sp, #8]
 8004a72:	b91a      	cbnz	r2, 8004a7c <_dtoa_r+0x784>
 8004a74:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004a76:	2a00      	cmp	r2, #0
 8004a78:	f000 8215 	beq.w	8004ea6 <_dtoa_r+0xbae>
 8004a7c:	2b00      	cmp	r3, #0
 8004a7e:	f107 0401 	add.w	r4, r7, #1
 8004a82:	f300 8225 	bgt.w	8004ed0 <_dtoa_r+0xbd8>
 8004a86:	9b00      	ldr	r3, [sp, #0]
 8004a88:	703b      	strb	r3, [r7, #0]
 8004a8a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a8c:	42bb      	cmp	r3, r7
 8004a8e:	f000 8230 	beq.w	8004ef2 <_dtoa_r+0xbfa>
 8004a92:	4651      	mov	r1, sl
 8004a94:	2300      	movs	r3, #0
 8004a96:	220a      	movs	r2, #10
 8004a98:	4648      	mov	r0, r9
 8004a9a:	f001 fb53 	bl	8006144 <__multadd>
 8004a9e:	4545      	cmp	r5, r8
 8004aa0:	4682      	mov	sl, r0
 8004aa2:	4629      	mov	r1, r5
 8004aa4:	f04f 0300 	mov.w	r3, #0
 8004aa8:	f04f 020a 	mov.w	r2, #10
 8004aac:	4648      	mov	r0, r9
 8004aae:	f000 8196 	beq.w	8004dde <_dtoa_r+0xae6>
 8004ab2:	f001 fb47 	bl	8006144 <__multadd>
 8004ab6:	4641      	mov	r1, r8
 8004ab8:	4605      	mov	r5, r0
 8004aba:	2300      	movs	r3, #0
 8004abc:	220a      	movs	r2, #10
 8004abe:	4648      	mov	r0, r9
 8004ac0:	f001 fb40 	bl	8006144 <__multadd>
 8004ac4:	4627      	mov	r7, r4
 8004ac6:	4680      	mov	r8, r0
 8004ac8:	e7a4      	b.n	8004a14 <_dtoa_r+0x71c>
 8004aca:	4631      	mov	r1, r6
 8004acc:	4650      	mov	r0, sl
 8004ace:	f001 fd1f 	bl	8006510 <__mcmp>
 8004ad2:	2800      	cmp	r0, #0
 8004ad4:	da81      	bge.n	80049da <_dtoa_r+0x6e2>
 8004ad6:	9f06      	ldr	r7, [sp, #24]
 8004ad8:	4651      	mov	r1, sl
 8004ada:	2300      	movs	r3, #0
 8004adc:	220a      	movs	r2, #10
 8004ade:	4648      	mov	r0, r9
 8004ae0:	3f01      	subs	r7, #1
 8004ae2:	9706      	str	r7, [sp, #24]
 8004ae4:	f001 fb2e 	bl	8006144 <__multadd>
 8004ae8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004aea:	4682      	mov	sl, r0
 8004aec:	2b00      	cmp	r3, #0
 8004aee:	f040 82eb 	bne.w	80050c8 <_dtoa_r+0xdd0>
 8004af2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004af4:	2b00      	cmp	r3, #0
 8004af6:	f340 82f3 	ble.w	80050e0 <_dtoa_r+0xde8>
 8004afa:	9309      	str	r3, [sp, #36]	; 0x24
 8004afc:	465c      	mov	r4, fp
 8004afe:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004b02:	e002      	b.n	8004b0a <_dtoa_r+0x812>
 8004b04:	f001 fb1e 	bl	8006144 <__multadd>
 8004b08:	4682      	mov	sl, r0
 8004b0a:	4631      	mov	r1, r6
 8004b0c:	4650      	mov	r0, sl
 8004b0e:	f7ff fb61 	bl	80041d4 <quorem>
 8004b12:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004b16:	f804 7b01 	strb.w	r7, [r4], #1
 8004b1a:	eba4 030b 	sub.w	r3, r4, fp
 8004b1e:	4598      	cmp	r8, r3
 8004b20:	f04f 020a 	mov.w	r2, #10
 8004b24:	f04f 0300 	mov.w	r3, #0
 8004b28:	4651      	mov	r1, sl
 8004b2a:	4648      	mov	r0, r9
 8004b2c:	dcea      	bgt.n	8004b04 <_dtoa_r+0x80c>
 8004b2e:	2300      	movs	r3, #0
 8004b30:	9700      	str	r7, [sp, #0]
 8004b32:	9302      	str	r3, [sp, #8]
 8004b34:	4651      	mov	r1, sl
 8004b36:	2201      	movs	r2, #1
 8004b38:	4648      	mov	r0, r9
 8004b3a:	f001 fc93 	bl	8006464 <__lshift>
 8004b3e:	4631      	mov	r1, r6
 8004b40:	4682      	mov	sl, r0
 8004b42:	f001 fce5 	bl	8006510 <__mcmp>
 8004b46:	2800      	cmp	r0, #0
 8004b48:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004b4c:	dc14      	bgt.n	8004b78 <_dtoa_r+0x880>
 8004b4e:	d108      	bne.n	8004b62 <_dtoa_r+0x86a>
 8004b50:	9b00      	ldr	r3, [sp, #0]
 8004b52:	07db      	lsls	r3, r3, #31
 8004b54:	d410      	bmi.n	8004b78 <_dtoa_r+0x880>
 8004b56:	e004      	b.n	8004b62 <_dtoa_r+0x86a>
 8004b58:	40240000 	.word	0x40240000
 8004b5c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004b60:	461c      	mov	r4, r3
 8004b62:	2a30      	cmp	r2, #48	; 0x30
 8004b64:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004b68:	d0f8      	beq.n	8004b5c <_dtoa_r+0x864>
 8004b6a:	e00b      	b.n	8004b84 <_dtoa_r+0x88c>
 8004b6c:	459b      	cmp	fp, r3
 8004b6e:	f000 814e 	beq.w	8004e0e <_dtoa_r+0xb16>
 8004b72:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004b76:	461c      	mov	r4, r3
 8004b78:	2a39      	cmp	r2, #57	; 0x39
 8004b7a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004b7e:	d0f5      	beq.n	8004b6c <_dtoa_r+0x874>
 8004b80:	3201      	adds	r2, #1
 8004b82:	701a      	strb	r2, [r3, #0]
 8004b84:	4631      	mov	r1, r6
 8004b86:	4648      	mov	r0, r9
 8004b88:	f001 fad2 	bl	8006130 <_Bfree>
 8004b8c:	b155      	cbz	r5, 8004ba4 <_dtoa_r+0x8ac>
 8004b8e:	9902      	ldr	r1, [sp, #8]
 8004b90:	b121      	cbz	r1, 8004b9c <_dtoa_r+0x8a4>
 8004b92:	42a9      	cmp	r1, r5
 8004b94:	d002      	beq.n	8004b9c <_dtoa_r+0x8a4>
 8004b96:	4648      	mov	r0, r9
 8004b98:	f001 faca 	bl	8006130 <_Bfree>
 8004b9c:	4629      	mov	r1, r5
 8004b9e:	4648      	mov	r0, r9
 8004ba0:	f001 fac6 	bl	8006130 <_Bfree>
 8004ba4:	4651      	mov	r1, sl
 8004ba6:	4648      	mov	r0, r9
 8004ba8:	f001 fac2 	bl	8006130 <_Bfree>
 8004bac:	2200      	movs	r2, #0
 8004bae:	9b06      	ldr	r3, [sp, #24]
 8004bb0:	7022      	strb	r2, [r4, #0]
 8004bb2:	9a05      	ldr	r2, [sp, #20]
 8004bb4:	3301      	adds	r3, #1
 8004bb6:	6013      	str	r3, [r2, #0]
 8004bb8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004bba:	2b00      	cmp	r3, #0
 8004bbc:	f43f abdb 	beq.w	8004376 <_dtoa_r+0x7e>
 8004bc0:	4658      	mov	r0, fp
 8004bc2:	601c      	str	r4, [r3, #0]
 8004bc4:	b01b      	add	sp, #108	; 0x6c
 8004bc6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004bca:	201c      	movs	r0, #28
 8004bcc:	e6eb      	b.n	80049a6 <_dtoa_r+0x6ae>
 8004bce:	4601      	mov	r1, r0
 8004bd0:	4648      	mov	r0, r9
 8004bd2:	f001 fbf7 	bl	80063c4 <__pow5mult>
 8004bd6:	9b02      	ldr	r3, [sp, #8]
 8004bd8:	2b01      	cmp	r3, #1
 8004bda:	4606      	mov	r6, r0
 8004bdc:	f340 80d4 	ble.w	8004d88 <_dtoa_r+0xa90>
 8004be0:	2300      	movs	r3, #0
 8004be2:	930c      	str	r3, [sp, #48]	; 0x30
 8004be4:	6933      	ldr	r3, [r6, #16]
 8004be6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004bea:	6918      	ldr	r0, [r3, #16]
 8004bec:	f001 faea 	bl	80061c4 <__hi0bits>
 8004bf0:	f1c0 0020 	rsb	r0, r0, #32
 8004bf4:	e6cb      	b.n	800498e <_dtoa_r+0x696>
 8004bf6:	900d      	str	r0, [sp, #52]	; 0x34
 8004bf8:	e42a      	b.n	8004450 <_dtoa_r+0x158>
 8004bfa:	2501      	movs	r5, #1
 8004bfc:	e440      	b.n	8004480 <_dtoa_r+0x188>
 8004bfe:	f1c3 0820 	rsb	r8, r3, #32
 8004c02:	9b00      	ldr	r3, [sp, #0]
 8004c04:	fa03 f008 	lsl.w	r0, r3, r8
 8004c08:	f7ff bbd8 	b.w	80043bc <_dtoa_r+0xc4>
 8004c0c:	2300      	movs	r3, #0
 8004c0e:	930a      	str	r3, [sp, #40]	; 0x28
 8004c10:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004c14:	4413      	add	r3, r2
 8004c16:	930e      	str	r3, [sp, #56]	; 0x38
 8004c18:	3301      	adds	r3, #1
 8004c1a:	2b01      	cmp	r3, #1
 8004c1c:	461e      	mov	r6, r3
 8004c1e:	9309      	str	r3, [sp, #36]	; 0x24
 8004c20:	bfb8      	it	lt
 8004c22:	2601      	movlt	r6, #1
 8004c24:	2100      	movs	r1, #0
 8004c26:	2e17      	cmp	r6, #23
 8004c28:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004c2c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004c2e:	f77f ac89 	ble.w	8004544 <_dtoa_r+0x24c>
 8004c32:	2201      	movs	r2, #1
 8004c34:	2304      	movs	r3, #4
 8004c36:	005b      	lsls	r3, r3, #1
 8004c38:	f103 0014 	add.w	r0, r3, #20
 8004c3c:	42b0      	cmp	r0, r6
 8004c3e:	4611      	mov	r1, r2
 8004c40:	f102 0201 	add.w	r2, r2, #1
 8004c44:	d9f7      	bls.n	8004c36 <_dtoa_r+0x93e>
 8004c46:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004c4a:	e47b      	b.n	8004544 <_dtoa_r+0x24c>
 8004c4c:	2300      	movs	r3, #0
 8004c4e:	930a      	str	r3, [sp, #40]	; 0x28
 8004c50:	9e07      	ldr	r6, [sp, #28]
 8004c52:	2e00      	cmp	r6, #0
 8004c54:	f340 80e2 	ble.w	8004e1c <_dtoa_r+0xb24>
 8004c58:	960e      	str	r6, [sp, #56]	; 0x38
 8004c5a:	9609      	str	r6, [sp, #36]	; 0x24
 8004c5c:	e7e2      	b.n	8004c24 <_dtoa_r+0x92c>
 8004c5e:	2301      	movs	r3, #1
 8004c60:	930a      	str	r3, [sp, #40]	; 0x28
 8004c62:	e7f5      	b.n	8004c50 <_dtoa_r+0x958>
 8004c64:	9b00      	ldr	r3, [sp, #0]
 8004c66:	2b00      	cmp	r3, #0
 8004c68:	f47f ae90 	bne.w	800498c <_dtoa_r+0x694>
 8004c6c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004c70:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004c74:	2b00      	cmp	r3, #0
 8004c76:	f040 8192 	bne.w	8004f9e <_dtoa_r+0xca6>
 8004c7a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004c7e:	0d1b      	lsrs	r3, r3, #20
 8004c80:	051b      	lsls	r3, r3, #20
 8004c82:	b12b      	cbz	r3, 8004c90 <_dtoa_r+0x998>
 8004c84:	9b08      	ldr	r3, [sp, #32]
 8004c86:	3301      	adds	r3, #1
 8004c88:	9308      	str	r3, [sp, #32]
 8004c8a:	f108 0801 	add.w	r8, r8, #1
 8004c8e:	2301      	movs	r3, #1
 8004c90:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004c92:	930c      	str	r3, [sp, #48]	; 0x30
 8004c94:	2a00      	cmp	r2, #0
 8004c96:	f43f ae79 	beq.w	800498c <_dtoa_r+0x694>
 8004c9a:	e7a3      	b.n	8004be4 <_dtoa_r+0x8ec>
 8004c9c:	463a      	mov	r2, r7
 8004c9e:	4629      	mov	r1, r5
 8004ca0:	4648      	mov	r0, r9
 8004ca2:	f001 fb8f 	bl	80063c4 <__pow5mult>
 8004ca6:	4652      	mov	r2, sl
 8004ca8:	4601      	mov	r1, r0
 8004caa:	4605      	mov	r5, r0
 8004cac:	4648      	mov	r0, r9
 8004cae:	f001 fae3 	bl	8006278 <__multiply>
 8004cb2:	4651      	mov	r1, sl
 8004cb4:	4607      	mov	r7, r0
 8004cb6:	4648      	mov	r0, r9
 8004cb8:	f001 fa3a 	bl	8006130 <_Bfree>
 8004cbc:	46ba      	mov	sl, r7
 8004cbe:	2e00      	cmp	r6, #0
 8004cc0:	f43f ae57 	beq.w	8004972 <_dtoa_r+0x67a>
 8004cc4:	e64f      	b.n	8004966 <_dtoa_r+0x66e>
 8004cc6:	4629      	mov	r1, r5
 8004cc8:	4622      	mov	r2, r4
 8004cca:	4648      	mov	r0, r9
 8004ccc:	f001 fbca 	bl	8006464 <__lshift>
 8004cd0:	4605      	mov	r5, r0
 8004cd2:	e68d      	b.n	80049f0 <_dtoa_r+0x6f8>
 8004cd4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004cd6:	2a00      	cmp	r2, #0
 8004cd8:	f000 815d 	beq.w	8004f96 <_dtoa_r+0xc9e>
 8004cdc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004ce0:	9a08      	ldr	r2, [sp, #32]
 8004ce2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004ce4:	4614      	mov	r4, r2
 8004ce6:	441a      	add	r2, r3
 8004ce8:	4498      	add	r8, r3
 8004cea:	9208      	str	r2, [sp, #32]
 8004cec:	e5f7      	b.n	80048de <_dtoa_r+0x5e6>
 8004cee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cf0:	2b00      	cmp	r3, #0
 8004cf2:	f73f ad3e 	bgt.w	8004772 <_dtoa_r+0x47a>
 8004cf6:	f040 80bc 	bne.w	8004e72 <_dtoa_r+0xb7a>
 8004cfa:	ec51 0b17 	vmov	r0, r1, d7
 8004cfe:	2200      	movs	r2, #0
 8004d00:	4bb2      	ldr	r3, [pc, #712]	; (8004fcc <_dtoa_r+0xcd4>)
 8004d02:	f7fb ff19 	bl	8000b38 <__aeabi_dmul>
 8004d06:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d0a:	f7fc f99b 	bl	8001044 <__aeabi_dcmpge>
 8004d0e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004d10:	4635      	mov	r5, r6
 8004d12:	2800      	cmp	r0, #0
 8004d14:	d176      	bne.n	8004e04 <_dtoa_r+0xb0c>
 8004d16:	9a06      	ldr	r2, [sp, #24]
 8004d18:	2331      	movs	r3, #49	; 0x31
 8004d1a:	3201      	adds	r2, #1
 8004d1c:	9206      	str	r2, [sp, #24]
 8004d1e:	f88b 3000 	strb.w	r3, [fp]
 8004d22:	f10b 0401 	add.w	r4, fp, #1
 8004d26:	4631      	mov	r1, r6
 8004d28:	4648      	mov	r0, r9
 8004d2a:	f001 fa01 	bl	8006130 <_Bfree>
 8004d2e:	2d00      	cmp	r5, #0
 8004d30:	f47f af34 	bne.w	8004b9c <_dtoa_r+0x8a4>
 8004d34:	e736      	b.n	8004ba4 <_dtoa_r+0x8ac>
 8004d36:	f000 8142 	beq.w	8004fbe <_dtoa_r+0xcc6>
 8004d3a:	9b06      	ldr	r3, [sp, #24]
 8004d3c:	425c      	negs	r4, r3
 8004d3e:	4ba4      	ldr	r3, [pc, #656]	; (8004fd0 <_dtoa_r+0xcd8>)
 8004d40:	f004 020f 	and.w	r2, r4, #15
 8004d44:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004d48:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004d4c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004d50:	f7fb fef2 	bl	8000b38 <__aeabi_dmul>
 8004d54:	1124      	asrs	r4, r4, #4
 8004d56:	e9cd 0100 	strd	r0, r1, [sp]
 8004d5a:	f000 81c6 	beq.w	80050ea <_dtoa_r+0xdf2>
 8004d5e:	4d9d      	ldr	r5, [pc, #628]	; (8004fd4 <_dtoa_r+0xcdc>)
 8004d60:	2300      	movs	r3, #0
 8004d62:	2602      	movs	r6, #2
 8004d64:	07e7      	lsls	r7, r4, #31
 8004d66:	d505      	bpl.n	8004d74 <_dtoa_r+0xa7c>
 8004d68:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004d6c:	f7fb fee4 	bl	8000b38 <__aeabi_dmul>
 8004d70:	3601      	adds	r6, #1
 8004d72:	2301      	movs	r3, #1
 8004d74:	1064      	asrs	r4, r4, #1
 8004d76:	f105 0508 	add.w	r5, r5, #8
 8004d7a:	d1f3      	bne.n	8004d64 <_dtoa_r+0xa6c>
 8004d7c:	2b00      	cmp	r3, #0
 8004d7e:	f43f ac27 	beq.w	80045d0 <_dtoa_r+0x2d8>
 8004d82:	e9cd 0100 	strd	r0, r1, [sp]
 8004d86:	e423      	b.n	80045d0 <_dtoa_r+0x2d8>
 8004d88:	9b00      	ldr	r3, [sp, #0]
 8004d8a:	2b00      	cmp	r3, #0
 8004d8c:	f43f af6e 	beq.w	8004c6c <_dtoa_r+0x974>
 8004d90:	e726      	b.n	8004be0 <_dtoa_r+0x8e8>
 8004d92:	6869      	ldr	r1, [r5, #4]
 8004d94:	4648      	mov	r0, r9
 8004d96:	f001 f9a5 	bl	80060e4 <_Balloc>
 8004d9a:	692b      	ldr	r3, [r5, #16]
 8004d9c:	3302      	adds	r3, #2
 8004d9e:	009a      	lsls	r2, r3, #2
 8004da0:	4604      	mov	r4, r0
 8004da2:	f105 010c 	add.w	r1, r5, #12
 8004da6:	300c      	adds	r0, #12
 8004da8:	f7fb fbaa 	bl	8000500 <memcpy>
 8004dac:	4621      	mov	r1, r4
 8004dae:	2201      	movs	r2, #1
 8004db0:	4648      	mov	r0, r9
 8004db2:	f001 fb57 	bl	8006464 <__lshift>
 8004db6:	4680      	mov	r8, r0
 8004db8:	e61f      	b.n	80049fa <_dtoa_r+0x702>
 8004dba:	2400      	movs	r4, #0
 8004dbc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004dc0:	4621      	mov	r1, r4
 8004dc2:	4648      	mov	r0, r9
 8004dc4:	f001 f98e 	bl	80060e4 <_Balloc>
 8004dc8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004dcc:	930e      	str	r3, [sp, #56]	; 0x38
 8004dce:	9309      	str	r3, [sp, #36]	; 0x24
 8004dd0:	2301      	movs	r3, #1
 8004dd2:	4683      	mov	fp, r0
 8004dd4:	9407      	str	r4, [sp, #28]
 8004dd6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004dda:	930a      	str	r3, [sp, #40]	; 0x28
 8004ddc:	e4b6      	b.n	800474c <_dtoa_r+0x454>
 8004dde:	f001 f9b1 	bl	8006144 <__multadd>
 8004de2:	4627      	mov	r7, r4
 8004de4:	4605      	mov	r5, r0
 8004de6:	4680      	mov	r8, r0
 8004de8:	e614      	b.n	8004a14 <_dtoa_r+0x71c>
 8004dea:	4648      	mov	r0, r9
 8004dec:	f001 f9a0 	bl	8006130 <_Bfree>
 8004df0:	2301      	movs	r3, #1
 8004df2:	e639      	b.n	8004a68 <_dtoa_r+0x770>
 8004df4:	9b02      	ldr	r3, [sp, #8]
 8004df6:	2b02      	cmp	r3, #2
 8004df8:	f77f adf3 	ble.w	80049e2 <_dtoa_r+0x6ea>
 8004dfc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dfe:	2b00      	cmp	r3, #0
 8004e00:	f000 80cf 	beq.w	8004fa2 <_dtoa_r+0xcaa>
 8004e04:	9b07      	ldr	r3, [sp, #28]
 8004e06:	43db      	mvns	r3, r3
 8004e08:	9306      	str	r3, [sp, #24]
 8004e0a:	465c      	mov	r4, fp
 8004e0c:	e78b      	b.n	8004d26 <_dtoa_r+0xa2e>
 8004e0e:	9a06      	ldr	r2, [sp, #24]
 8004e10:	2331      	movs	r3, #49	; 0x31
 8004e12:	3201      	adds	r2, #1
 8004e14:	9206      	str	r2, [sp, #24]
 8004e16:	f88b 3000 	strb.w	r3, [fp]
 8004e1a:	e6b3      	b.n	8004b84 <_dtoa_r+0x88c>
 8004e1c:	2401      	movs	r4, #1
 8004e1e:	9409      	str	r4, [sp, #36]	; 0x24
 8004e20:	9407      	str	r4, [sp, #28]
 8004e22:	f7ff bb8b 	b.w	800453c <_dtoa_r+0x244>
 8004e26:	4630      	mov	r0, r6
 8004e28:	f7fb fe1c 	bl	8000a64 <__aeabi_i2d>
 8004e2c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e30:	f7fb fe82 	bl	8000b38 <__aeabi_dmul>
 8004e34:	2200      	movs	r2, #0
 8004e36:	4b68      	ldr	r3, [pc, #416]	; (8004fd8 <_dtoa_r+0xce0>)
 8004e38:	f7fb fcc8 	bl	80007cc <__adddf3>
 8004e3c:	4606      	mov	r6, r0
 8004e3e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e42:	2200      	movs	r2, #0
 8004e44:	4b61      	ldr	r3, [pc, #388]	; (8004fcc <_dtoa_r+0xcd4>)
 8004e46:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e4a:	f7fb fcbd 	bl	80007c8 <__aeabi_dsub>
 8004e4e:	4632      	mov	r2, r6
 8004e50:	463b      	mov	r3, r7
 8004e52:	4604      	mov	r4, r0
 8004e54:	460d      	mov	r5, r1
 8004e56:	f7fc f8ff 	bl	8001058 <__aeabi_dcmpgt>
 8004e5a:	2800      	cmp	r0, #0
 8004e5c:	d14f      	bne.n	8004efe <_dtoa_r+0xc06>
 8004e5e:	4632      	mov	r2, r6
 8004e60:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004e64:	4620      	mov	r0, r4
 8004e66:	4629      	mov	r1, r5
 8004e68:	f7fc f8d8 	bl	800101c <__aeabi_dcmplt>
 8004e6c:	2800      	cmp	r0, #0
 8004e6e:	f43f ac69 	beq.w	8004744 <_dtoa_r+0x44c>
 8004e72:	2600      	movs	r6, #0
 8004e74:	4635      	mov	r5, r6
 8004e76:	e7c5      	b.n	8004e04 <_dtoa_r+0xb0c>
 8004e78:	2301      	movs	r3, #1
 8004e7a:	930a      	str	r3, [sp, #40]	; 0x28
 8004e7c:	e6c8      	b.n	8004c10 <_dtoa_r+0x918>
 8004e7e:	4651      	mov	r1, sl
 8004e80:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004e82:	4648      	mov	r0, r9
 8004e84:	f001 fa9e 	bl	80063c4 <__pow5mult>
 8004e88:	4682      	mov	sl, r0
 8004e8a:	e572      	b.n	8004972 <_dtoa_r+0x67a>
 8004e8c:	f8dd a000 	ldr.w	sl, [sp]
 8004e90:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004e94:	e686      	b.n	8004ba4 <_dtoa_r+0x8ac>
 8004e96:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004e98:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004e9a:	1afb      	subs	r3, r7, r3
 8004e9c:	441a      	add	r2, r3
 8004e9e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004ea2:	2700      	movs	r7, #0
 8004ea4:	e512      	b.n	80048cc <_dtoa_r+0x5d4>
 8004ea6:	2b00      	cmp	r3, #0
 8004ea8:	9402      	str	r4, [sp, #8]
 8004eaa:	465e      	mov	r6, fp
 8004eac:	f107 0401 	add.w	r4, r7, #1
 8004eb0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004eb4:	f300 80ba 	bgt.w	800502c <_dtoa_r+0xd34>
 8004eb8:	9b00      	ldr	r3, [sp, #0]
 8004eba:	9502      	str	r5, [sp, #8]
 8004ebc:	703b      	strb	r3, [r7, #0]
 8004ebe:	4645      	mov	r5, r8
 8004ec0:	e660      	b.n	8004b84 <_dtoa_r+0x88c>
 8004ec2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004ec6:	2602      	movs	r6, #2
 8004ec8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004ecc:	f7ff bb67 	b.w	800459e <_dtoa_r+0x2a6>
 8004ed0:	9b00      	ldr	r3, [sp, #0]
 8004ed2:	2b39      	cmp	r3, #57	; 0x39
 8004ed4:	465e      	mov	r6, fp
 8004ed6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004eda:	f000 80b9 	beq.w	8005050 <_dtoa_r+0xd58>
 8004ede:	9b00      	ldr	r3, [sp, #0]
 8004ee0:	9502      	str	r5, [sp, #8]
 8004ee2:	3301      	adds	r3, #1
 8004ee4:	703b      	strb	r3, [r7, #0]
 8004ee6:	4645      	mov	r5, r8
 8004ee8:	e64c      	b.n	8004b84 <_dtoa_r+0x88c>
 8004eea:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004eee:	1a9c      	subs	r4, r3, r2
 8004ef0:	e4f5      	b.n	80048de <_dtoa_r+0x5e6>
 8004ef2:	465e      	mov	r6, fp
 8004ef4:	9502      	str	r5, [sp, #8]
 8004ef6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004efa:	4645      	mov	r5, r8
 8004efc:	e61a      	b.n	8004b34 <_dtoa_r+0x83c>
 8004efe:	2600      	movs	r6, #0
 8004f00:	4635      	mov	r5, r6
 8004f02:	e708      	b.n	8004d16 <_dtoa_r+0xa1e>
 8004f04:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004f08:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f0c:	f7fb fe14 	bl	8000b38 <__aeabi_dmul>
 8004f10:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004f12:	f88b 5000 	strb.w	r5, [fp]
 8004f16:	2b01      	cmp	r3, #1
 8004f18:	e9cd 0100 	strd	r0, r1, [sp]
 8004f1c:	d020      	beq.n	8004f60 <_dtoa_r+0xc68>
 8004f1e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004f20:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004f24:	445b      	add	r3, fp
 8004f26:	4698      	mov	r8, r3
 8004f28:	2200      	movs	r2, #0
 8004f2a:	4b2c      	ldr	r3, [pc, #176]	; (8004fdc <_dtoa_r+0xce4>)
 8004f2c:	4630      	mov	r0, r6
 8004f2e:	4639      	mov	r1, r7
 8004f30:	f7fb fe02 	bl	8000b38 <__aeabi_dmul>
 8004f34:	460f      	mov	r7, r1
 8004f36:	4606      	mov	r6, r0
 8004f38:	f7fc f8ae 	bl	8001098 <__aeabi_d2iz>
 8004f3c:	4605      	mov	r5, r0
 8004f3e:	f7fb fd91 	bl	8000a64 <__aeabi_i2d>
 8004f42:	3530      	adds	r5, #48	; 0x30
 8004f44:	4602      	mov	r2, r0
 8004f46:	460b      	mov	r3, r1
 8004f48:	4630      	mov	r0, r6
 8004f4a:	4639      	mov	r1, r7
 8004f4c:	f7fb fc3c 	bl	80007c8 <__aeabi_dsub>
 8004f50:	f804 5b01 	strb.w	r5, [r4], #1
 8004f54:	4544      	cmp	r4, r8
 8004f56:	4606      	mov	r6, r0
 8004f58:	460f      	mov	r7, r1
 8004f5a:	d1e5      	bne.n	8004f28 <_dtoa_r+0xc30>
 8004f5c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004f60:	4b1f      	ldr	r3, [pc, #124]	; (8004fe0 <_dtoa_r+0xce8>)
 8004f62:	2200      	movs	r2, #0
 8004f64:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f68:	f7fb fc30 	bl	80007cc <__adddf3>
 8004f6c:	4632      	mov	r2, r6
 8004f6e:	463b      	mov	r3, r7
 8004f70:	f7fc f854 	bl	800101c <__aeabi_dcmplt>
 8004f74:	2800      	cmp	r0, #0
 8004f76:	d070      	beq.n	800505a <_dtoa_r+0xd62>
 8004f78:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f7a:	9306      	str	r3, [sp, #24]
 8004f7c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004f80:	e48f      	b.n	80048a2 <_dtoa_r+0x5aa>
 8004f82:	2330      	movs	r3, #48	; 0x30
 8004f84:	f88b 3000 	strb.w	r3, [fp]
 8004f88:	9b06      	ldr	r3, [sp, #24]
 8004f8a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004f8e:	3301      	adds	r3, #1
 8004f90:	9306      	str	r3, [sp, #24]
 8004f92:	465b      	mov	r3, fp
 8004f94:	e489      	b.n	80048aa <_dtoa_r+0x5b2>
 8004f96:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004f98:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004f9c:	e6a0      	b.n	8004ce0 <_dtoa_r+0x9e8>
 8004f9e:	2300      	movs	r3, #0
 8004fa0:	e676      	b.n	8004c90 <_dtoa_r+0x998>
 8004fa2:	4631      	mov	r1, r6
 8004fa4:	2205      	movs	r2, #5
 8004fa6:	4648      	mov	r0, r9
 8004fa8:	f001 f8cc 	bl	8006144 <__multadd>
 8004fac:	4601      	mov	r1, r0
 8004fae:	4606      	mov	r6, r0
 8004fb0:	4650      	mov	r0, sl
 8004fb2:	f001 faad 	bl	8006510 <__mcmp>
 8004fb6:	2800      	cmp	r0, #0
 8004fb8:	f73f aead 	bgt.w	8004d16 <_dtoa_r+0xa1e>
 8004fbc:	e722      	b.n	8004e04 <_dtoa_r+0xb0c>
 8004fbe:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004fc2:	2602      	movs	r6, #2
 8004fc4:	ed8d 7b00 	vstr	d7, [sp]
 8004fc8:	f7ff bb02 	b.w	80045d0 <_dtoa_r+0x2d8>
 8004fcc:	40140000 	.word	0x40140000
 8004fd0:	08007488 	.word	0x08007488
 8004fd4:	08007460 	.word	0x08007460
 8004fd8:	401c0000 	.word	0x401c0000
 8004fdc:	40240000 	.word	0x40240000
 8004fe0:	3fe00000 	.word	0x3fe00000
 8004fe4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fe6:	2b00      	cmp	r3, #0
 8004fe8:	f43f af1d 	beq.w	8004e26 <_dtoa_r+0xb2e>
 8004fec:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004fee:	2c00      	cmp	r4, #0
 8004ff0:	f77f aba8 	ble.w	8004744 <_dtoa_r+0x44c>
 8004ff4:	2200      	movs	r2, #0
 8004ff6:	4b45      	ldr	r3, [pc, #276]	; (800510c <_dtoa_r+0xe14>)
 8004ff8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ffc:	f7fb fd9c 	bl	8000b38 <__aeabi_dmul>
 8005000:	e9cd 0100 	strd	r0, r1, [sp]
 8005004:	1c70      	adds	r0, r6, #1
 8005006:	f7fb fd2d 	bl	8000a64 <__aeabi_i2d>
 800500a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800500e:	f7fb fd93 	bl	8000b38 <__aeabi_dmul>
 8005012:	4b3f      	ldr	r3, [pc, #252]	; (8005110 <_dtoa_r+0xe18>)
 8005014:	2200      	movs	r2, #0
 8005016:	f7fb fbd9 	bl	80007cc <__adddf3>
 800501a:	9b06      	ldr	r3, [sp, #24]
 800501c:	9412      	str	r4, [sp, #72]	; 0x48
 800501e:	3b01      	subs	r3, #1
 8005020:	4606      	mov	r6, r0
 8005022:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005026:	9316      	str	r3, [sp, #88]	; 0x58
 8005028:	f7ff baf3 	b.w	8004612 <_dtoa_r+0x31a>
 800502c:	4651      	mov	r1, sl
 800502e:	2201      	movs	r2, #1
 8005030:	4648      	mov	r0, r9
 8005032:	f001 fa17 	bl	8006464 <__lshift>
 8005036:	4631      	mov	r1, r6
 8005038:	4682      	mov	sl, r0
 800503a:	f001 fa69 	bl	8006510 <__mcmp>
 800503e:	2800      	cmp	r0, #0
 8005040:	dd3b      	ble.n	80050ba <_dtoa_r+0xdc2>
 8005042:	9b00      	ldr	r3, [sp, #0]
 8005044:	2b39      	cmp	r3, #57	; 0x39
 8005046:	d003      	beq.n	8005050 <_dtoa_r+0xd58>
 8005048:	9b02      	ldr	r3, [sp, #8]
 800504a:	3331      	adds	r3, #49	; 0x31
 800504c:	9300      	str	r3, [sp, #0]
 800504e:	e733      	b.n	8004eb8 <_dtoa_r+0xbc0>
 8005050:	2239      	movs	r2, #57	; 0x39
 8005052:	9502      	str	r5, [sp, #8]
 8005054:	703a      	strb	r2, [r7, #0]
 8005056:	4645      	mov	r5, r8
 8005058:	e58e      	b.n	8004b78 <_dtoa_r+0x880>
 800505a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800505e:	2000      	movs	r0, #0
 8005060:	492c      	ldr	r1, [pc, #176]	; (8005114 <_dtoa_r+0xe1c>)
 8005062:	f7fb fbb1 	bl	80007c8 <__aeabi_dsub>
 8005066:	4632      	mov	r2, r6
 8005068:	463b      	mov	r3, r7
 800506a:	f7fb fff5 	bl	8001058 <__aeabi_dcmpgt>
 800506e:	b910      	cbnz	r0, 8005076 <_dtoa_r+0xd7e>
 8005070:	f7ff bb68 	b.w	8004744 <_dtoa_r+0x44c>
 8005074:	4614      	mov	r4, r2
 8005076:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800507a:	2b30      	cmp	r3, #48	; 0x30
 800507c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005080:	d0f8      	beq.n	8005074 <_dtoa_r+0xd7c>
 8005082:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005084:	9306      	str	r3, [sp, #24]
 8005086:	e58d      	b.n	8004ba4 <_dtoa_r+0x8ac>
 8005088:	46d9      	mov	r9, fp
 800508a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800508e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005092:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005094:	9306      	str	r3, [sp, #24]
 8005096:	e404      	b.n	80048a2 <_dtoa_r+0x5aa>
 8005098:	9b00      	ldr	r3, [sp, #0]
 800509a:	2b39      	cmp	r3, #57	; 0x39
 800509c:	4621      	mov	r1, r4
 800509e:	4632      	mov	r2, r6
 80050a0:	f107 0401 	add.w	r4, r7, #1
 80050a4:	465e      	mov	r6, fp
 80050a6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80050aa:	d0d1      	beq.n	8005050 <_dtoa_r+0xd58>
 80050ac:	2a00      	cmp	r2, #0
 80050ae:	f77f af03 	ble.w	8004eb8 <_dtoa_r+0xbc0>
 80050b2:	460b      	mov	r3, r1
 80050b4:	3331      	adds	r3, #49	; 0x31
 80050b6:	9300      	str	r3, [sp, #0]
 80050b8:	e6fe      	b.n	8004eb8 <_dtoa_r+0xbc0>
 80050ba:	f47f aefd 	bne.w	8004eb8 <_dtoa_r+0xbc0>
 80050be:	9b00      	ldr	r3, [sp, #0]
 80050c0:	07da      	lsls	r2, r3, #31
 80050c2:	f57f aef9 	bpl.w	8004eb8 <_dtoa_r+0xbc0>
 80050c6:	e7bc      	b.n	8005042 <_dtoa_r+0xd4a>
 80050c8:	4629      	mov	r1, r5
 80050ca:	2300      	movs	r3, #0
 80050cc:	220a      	movs	r2, #10
 80050ce:	4648      	mov	r0, r9
 80050d0:	f001 f838 	bl	8006144 <__multadd>
 80050d4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80050d6:	2b00      	cmp	r3, #0
 80050d8:	4605      	mov	r5, r0
 80050da:	dd09      	ble.n	80050f0 <_dtoa_r+0xdf8>
 80050dc:	9309      	str	r3, [sp, #36]	; 0x24
 80050de:	e484      	b.n	80049ea <_dtoa_r+0x6f2>
 80050e0:	9b02      	ldr	r3, [sp, #8]
 80050e2:	2b02      	cmp	r3, #2
 80050e4:	dc0e      	bgt.n	8005104 <_dtoa_r+0xe0c>
 80050e6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80050e8:	e507      	b.n	8004afa <_dtoa_r+0x802>
 80050ea:	2602      	movs	r6, #2
 80050ec:	f7ff ba70 	b.w	80045d0 <_dtoa_r+0x2d8>
 80050f0:	9b02      	ldr	r3, [sp, #8]
 80050f2:	2b02      	cmp	r3, #2
 80050f4:	dc06      	bgt.n	8005104 <_dtoa_r+0xe0c>
 80050f6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80050f8:	e7f0      	b.n	80050dc <_dtoa_r+0xde4>
 80050fa:	f43f ac59 	beq.w	80049b0 <_dtoa_r+0x6b8>
 80050fe:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005102:	e450      	b.n	80049a6 <_dtoa_r+0x6ae>
 8005104:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005106:	9309      	str	r3, [sp, #36]	; 0x24
 8005108:	e678      	b.n	8004dfc <_dtoa_r+0xb04>
 800510a:	bf00      	nop
 800510c:	40240000 	.word	0x40240000
 8005110:	401c0000 	.word	0x401c0000
 8005114:	3fe00000 	.word	0x3fe00000

08005118 <__sflush_r>:
 8005118:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800511c:	b29a      	uxth	r2, r3
 800511e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005122:	460c      	mov	r4, r1
 8005124:	0711      	lsls	r1, r2, #28
 8005126:	4680      	mov	r8, r0
 8005128:	d444      	bmi.n	80051b4 <__sflush_r+0x9c>
 800512a:	6862      	ldr	r2, [r4, #4]
 800512c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005130:	2a00      	cmp	r2, #0
 8005132:	81a3      	strh	r3, [r4, #12]
 8005134:	dd59      	ble.n	80051ea <__sflush_r+0xd2>
 8005136:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005138:	2d00      	cmp	r5, #0
 800513a:	d053      	beq.n	80051e4 <__sflush_r+0xcc>
 800513c:	2200      	movs	r2, #0
 800513e:	b29b      	uxth	r3, r3
 8005140:	f8d8 6000 	ldr.w	r6, [r8]
 8005144:	69e1      	ldr	r1, [r4, #28]
 8005146:	f8c8 2000 	str.w	r2, [r8]
 800514a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800514e:	f040 8083 	bne.w	8005258 <__sflush_r+0x140>
 8005152:	2301      	movs	r3, #1
 8005154:	4640      	mov	r0, r8
 8005156:	47a8      	blx	r5
 8005158:	1c42      	adds	r2, r0, #1
 800515a:	d04a      	beq.n	80051f2 <__sflush_r+0xda>
 800515c:	89a3      	ldrh	r3, [r4, #12]
 800515e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005160:	69e1      	ldr	r1, [r4, #28]
 8005162:	075b      	lsls	r3, r3, #29
 8005164:	d505      	bpl.n	8005172 <__sflush_r+0x5a>
 8005166:	6862      	ldr	r2, [r4, #4]
 8005168:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800516a:	1a80      	subs	r0, r0, r2
 800516c:	b10b      	cbz	r3, 8005172 <__sflush_r+0x5a>
 800516e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005170:	1ac0      	subs	r0, r0, r3
 8005172:	4602      	mov	r2, r0
 8005174:	2300      	movs	r3, #0
 8005176:	4640      	mov	r0, r8
 8005178:	47a8      	blx	r5
 800517a:	1c47      	adds	r7, r0, #1
 800517c:	d045      	beq.n	800520a <__sflush_r+0xf2>
 800517e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005182:	6922      	ldr	r2, [r4, #16]
 8005184:	6022      	str	r2, [r4, #0]
 8005186:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800518a:	2200      	movs	r2, #0
 800518c:	81a3      	strh	r3, [r4, #12]
 800518e:	04db      	lsls	r3, r3, #19
 8005190:	6062      	str	r2, [r4, #4]
 8005192:	d500      	bpl.n	8005196 <__sflush_r+0x7e>
 8005194:	6520      	str	r0, [r4, #80]	; 0x50
 8005196:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005198:	f8c8 6000 	str.w	r6, [r8]
 800519c:	b311      	cbz	r1, 80051e4 <__sflush_r+0xcc>
 800519e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80051a2:	4299      	cmp	r1, r3
 80051a4:	d002      	beq.n	80051ac <__sflush_r+0x94>
 80051a6:	4640      	mov	r0, r8
 80051a8:	f000 f95e 	bl	8005468 <_free_r>
 80051ac:	2000      	movs	r0, #0
 80051ae:	6320      	str	r0, [r4, #48]	; 0x30
 80051b0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80051b4:	6926      	ldr	r6, [r4, #16]
 80051b6:	b1ae      	cbz	r6, 80051e4 <__sflush_r+0xcc>
 80051b8:	6825      	ldr	r5, [r4, #0]
 80051ba:	6026      	str	r6, [r4, #0]
 80051bc:	0792      	lsls	r2, r2, #30
 80051be:	bf0c      	ite	eq
 80051c0:	6963      	ldreq	r3, [r4, #20]
 80051c2:	2300      	movne	r3, #0
 80051c4:	1bad      	subs	r5, r5, r6
 80051c6:	60a3      	str	r3, [r4, #8]
 80051c8:	e00a      	b.n	80051e0 <__sflush_r+0xc8>
 80051ca:	462b      	mov	r3, r5
 80051cc:	4632      	mov	r2, r6
 80051ce:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80051d0:	69e1      	ldr	r1, [r4, #28]
 80051d2:	4640      	mov	r0, r8
 80051d4:	47b8      	blx	r7
 80051d6:	2800      	cmp	r0, #0
 80051d8:	eba5 0500 	sub.w	r5, r5, r0
 80051dc:	4406      	add	r6, r0
 80051de:	dd2b      	ble.n	8005238 <__sflush_r+0x120>
 80051e0:	2d00      	cmp	r5, #0
 80051e2:	dcf2      	bgt.n	80051ca <__sflush_r+0xb2>
 80051e4:	2000      	movs	r0, #0
 80051e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80051ea:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80051ec:	2a00      	cmp	r2, #0
 80051ee:	dca2      	bgt.n	8005136 <__sflush_r+0x1e>
 80051f0:	e7f8      	b.n	80051e4 <__sflush_r+0xcc>
 80051f2:	f8d8 3000 	ldr.w	r3, [r8]
 80051f6:	2b00      	cmp	r3, #0
 80051f8:	d0b0      	beq.n	800515c <__sflush_r+0x44>
 80051fa:	2b1d      	cmp	r3, #29
 80051fc:	d001      	beq.n	8005202 <__sflush_r+0xea>
 80051fe:	2b16      	cmp	r3, #22
 8005200:	d12c      	bne.n	800525c <__sflush_r+0x144>
 8005202:	f8c8 6000 	str.w	r6, [r8]
 8005206:	2000      	movs	r0, #0
 8005208:	e7ed      	b.n	80051e6 <__sflush_r+0xce>
 800520a:	f8d8 1000 	ldr.w	r1, [r8]
 800520e:	291d      	cmp	r1, #29
 8005210:	d81a      	bhi.n	8005248 <__sflush_r+0x130>
 8005212:	4b15      	ldr	r3, [pc, #84]	; (8005268 <__sflush_r+0x150>)
 8005214:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005218:	40cb      	lsrs	r3, r1
 800521a:	43db      	mvns	r3, r3
 800521c:	f013 0301 	ands.w	r3, r3, #1
 8005220:	d114      	bne.n	800524c <__sflush_r+0x134>
 8005222:	6925      	ldr	r5, [r4, #16]
 8005224:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005228:	e9c4 5300 	strd	r5, r3, [r4]
 800522c:	04d5      	lsls	r5, r2, #19
 800522e:	81a2      	strh	r2, [r4, #12]
 8005230:	d5b1      	bpl.n	8005196 <__sflush_r+0x7e>
 8005232:	2900      	cmp	r1, #0
 8005234:	d1af      	bne.n	8005196 <__sflush_r+0x7e>
 8005236:	e7ad      	b.n	8005194 <__sflush_r+0x7c>
 8005238:	89a3      	ldrh	r3, [r4, #12]
 800523a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800523e:	81a3      	strh	r3, [r4, #12]
 8005240:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005244:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005248:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800524c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005250:	81a2      	strh	r2, [r4, #12]
 8005252:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005256:	e7c6      	b.n	80051e6 <__sflush_r+0xce>
 8005258:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800525a:	e782      	b.n	8005162 <__sflush_r+0x4a>
 800525c:	89a3      	ldrh	r3, [r4, #12]
 800525e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005262:	81a3      	strh	r3, [r4, #12]
 8005264:	e7bf      	b.n	80051e6 <__sflush_r+0xce>
 8005266:	bf00      	nop
 8005268:	20400001 	.word	0x20400001

0800526c <_fflush_r>:
 800526c:	b538      	push	{r3, r4, r5, lr}
 800526e:	460d      	mov	r5, r1
 8005270:	4604      	mov	r4, r0
 8005272:	b108      	cbz	r0, 8005278 <_fflush_r+0xc>
 8005274:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005276:	b1a3      	cbz	r3, 80052a2 <_fflush_r+0x36>
 8005278:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800527c:	b1b8      	cbz	r0, 80052ae <_fflush_r+0x42>
 800527e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005280:	07db      	lsls	r3, r3, #31
 8005282:	d401      	bmi.n	8005288 <_fflush_r+0x1c>
 8005284:	0581      	lsls	r1, r0, #22
 8005286:	d51a      	bpl.n	80052be <_fflush_r+0x52>
 8005288:	4620      	mov	r0, r4
 800528a:	4629      	mov	r1, r5
 800528c:	f7ff ff44 	bl	8005118 <__sflush_r>
 8005290:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005292:	07da      	lsls	r2, r3, #31
 8005294:	4604      	mov	r4, r0
 8005296:	d402      	bmi.n	800529e <_fflush_r+0x32>
 8005298:	89ab      	ldrh	r3, [r5, #12]
 800529a:	059b      	lsls	r3, r3, #22
 800529c:	d50a      	bpl.n	80052b4 <_fflush_r+0x48>
 800529e:	4620      	mov	r0, r4
 80052a0:	bd38      	pop	{r3, r4, r5, pc}
 80052a2:	f000 f83f 	bl	8005324 <__sinit>
 80052a6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80052aa:	2800      	cmp	r0, #0
 80052ac:	d1e7      	bne.n	800527e <_fflush_r+0x12>
 80052ae:	4604      	mov	r4, r0
 80052b0:	4620      	mov	r0, r4
 80052b2:	bd38      	pop	{r3, r4, r5, pc}
 80052b4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80052b6:	f000 fb87 	bl	80059c8 <__retarget_lock_release_recursive>
 80052ba:	4620      	mov	r0, r4
 80052bc:	bd38      	pop	{r3, r4, r5, pc}
 80052be:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80052c0:	f000 fb80 	bl	80059c4 <__retarget_lock_acquire_recursive>
 80052c4:	e7e0      	b.n	8005288 <_fflush_r+0x1c>
 80052c6:	bf00      	nop

080052c8 <std>:
 80052c8:	b510      	push	{r4, lr}
 80052ca:	2300      	movs	r3, #0
 80052cc:	4604      	mov	r4, r0
 80052ce:	8181      	strh	r1, [r0, #12]
 80052d0:	81c2      	strh	r2, [r0, #14]
 80052d2:	e9c0 3300 	strd	r3, r3, [r0]
 80052d6:	6083      	str	r3, [r0, #8]
 80052d8:	6643      	str	r3, [r0, #100]	; 0x64
 80052da:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80052de:	6183      	str	r3, [r0, #24]
 80052e0:	4619      	mov	r1, r3
 80052e2:	2208      	movs	r2, #8
 80052e4:	305c      	adds	r0, #92	; 0x5c
 80052e6:	f7fd f8c9 	bl	800247c <memset>
 80052ea:	4807      	ldr	r0, [pc, #28]	; (8005308 <std+0x40>)
 80052ec:	4907      	ldr	r1, [pc, #28]	; (800530c <std+0x44>)
 80052ee:	4a08      	ldr	r2, [pc, #32]	; (8005310 <std+0x48>)
 80052f0:	4b08      	ldr	r3, [pc, #32]	; (8005314 <std+0x4c>)
 80052f2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80052f4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80052f8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80052fc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005300:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005304:	f000 bb5a 	b.w	80059bc <__retarget_lock_init_recursive>
 8005308:	08006ae1 	.word	0x08006ae1
 800530c:	08006b05 	.word	0x08006b05
 8005310:	08006b41 	.word	0x08006b41
 8005314:	08006b61 	.word	0x08006b61

08005318 <_cleanup_r>:
 8005318:	4901      	ldr	r1, [pc, #4]	; (8005320 <_cleanup_r+0x8>)
 800531a:	f000 bb17 	b.w	800594c <_fwalk_reent>
 800531e:	bf00      	nop
 8005320:	08006dd1 	.word	0x08006dd1

08005324 <__sinit>:
 8005324:	b510      	push	{r4, lr}
 8005326:	4604      	mov	r4, r0
 8005328:	4812      	ldr	r0, [pc, #72]	; (8005374 <__sinit+0x50>)
 800532a:	f000 fb4b 	bl	80059c4 <__retarget_lock_acquire_recursive>
 800532e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005330:	b9d2      	cbnz	r2, 8005368 <__sinit+0x44>
 8005332:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005336:	4810      	ldr	r0, [pc, #64]	; (8005378 <__sinit+0x54>)
 8005338:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800533c:	2103      	movs	r1, #3
 800533e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005342:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005344:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005348:	6860      	ldr	r0, [r4, #4]
 800534a:	2104      	movs	r1, #4
 800534c:	f7ff ffbc 	bl	80052c8 <std>
 8005350:	2201      	movs	r2, #1
 8005352:	2109      	movs	r1, #9
 8005354:	68a0      	ldr	r0, [r4, #8]
 8005356:	f7ff ffb7 	bl	80052c8 <std>
 800535a:	2202      	movs	r2, #2
 800535c:	2112      	movs	r1, #18
 800535e:	68e0      	ldr	r0, [r4, #12]
 8005360:	f7ff ffb2 	bl	80052c8 <std>
 8005364:	2301      	movs	r3, #1
 8005366:	63a3      	str	r3, [r4, #56]	; 0x38
 8005368:	4802      	ldr	r0, [pc, #8]	; (8005374 <__sinit+0x50>)
 800536a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800536e:	f000 bb2b 	b.w	80059c8 <__retarget_lock_release_recursive>
 8005372:	bf00      	nop
 8005374:	20000bf4 	.word	0x20000bf4
 8005378:	08005319 	.word	0x08005319

0800537c <__sfp_lock_acquire>:
 800537c:	4801      	ldr	r0, [pc, #4]	; (8005384 <__sfp_lock_acquire+0x8>)
 800537e:	f000 bb21 	b.w	80059c4 <__retarget_lock_acquire_recursive>
 8005382:	bf00      	nop
 8005384:	20000c08 	.word	0x20000c08

08005388 <__sfp_lock_release>:
 8005388:	4801      	ldr	r0, [pc, #4]	; (8005390 <__sfp_lock_release+0x8>)
 800538a:	f000 bb1d 	b.w	80059c8 <__retarget_lock_release_recursive>
 800538e:	bf00      	nop
 8005390:	20000c08 	.word	0x20000c08

08005394 <__libc_fini_array>:
 8005394:	b538      	push	{r3, r4, r5, lr}
 8005396:	4c0a      	ldr	r4, [pc, #40]	; (80053c0 <__libc_fini_array+0x2c>)
 8005398:	4d0a      	ldr	r5, [pc, #40]	; (80053c4 <__libc_fini_array+0x30>)
 800539a:	1b64      	subs	r4, r4, r5
 800539c:	10a4      	asrs	r4, r4, #2
 800539e:	d00a      	beq.n	80053b6 <__libc_fini_array+0x22>
 80053a0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80053a4:	3b01      	subs	r3, #1
 80053a6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80053aa:	3c01      	subs	r4, #1
 80053ac:	f855 3904 	ldr.w	r3, [r5], #-4
 80053b0:	4798      	blx	r3
 80053b2:	2c00      	cmp	r4, #0
 80053b4:	d1f9      	bne.n	80053aa <__libc_fini_array+0x16>
 80053b6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80053ba:	f001 befd 	b.w	80071b8 <_fini>
 80053be:	bf00      	nop
 80053c0:	08007684 	.word	0x08007684
 80053c4:	08007680 	.word	0x08007680

080053c8 <_malloc_trim_r>:
 80053c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80053ca:	4f24      	ldr	r7, [pc, #144]	; (800545c <_malloc_trim_r+0x94>)
 80053cc:	460c      	mov	r4, r1
 80053ce:	4606      	mov	r6, r0
 80053d0:	f000 fe7c 	bl	80060cc <__malloc_lock>
 80053d4:	68bb      	ldr	r3, [r7, #8]
 80053d6:	685d      	ldr	r5, [r3, #4]
 80053d8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80053dc:	310f      	adds	r1, #15
 80053de:	f025 0503 	bic.w	r5, r5, #3
 80053e2:	4429      	add	r1, r5
 80053e4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80053e8:	f021 010f 	bic.w	r1, r1, #15
 80053ec:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80053f0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80053f4:	db07      	blt.n	8005406 <_malloc_trim_r+0x3e>
 80053f6:	2100      	movs	r1, #0
 80053f8:	4630      	mov	r0, r6
 80053fa:	f001 fb5f 	bl	8006abc <_sbrk_r>
 80053fe:	68bb      	ldr	r3, [r7, #8]
 8005400:	442b      	add	r3, r5
 8005402:	4298      	cmp	r0, r3
 8005404:	d004      	beq.n	8005410 <_malloc_trim_r+0x48>
 8005406:	4630      	mov	r0, r6
 8005408:	f000 fe66 	bl	80060d8 <__malloc_unlock>
 800540c:	2000      	movs	r0, #0
 800540e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005410:	4261      	negs	r1, r4
 8005412:	4630      	mov	r0, r6
 8005414:	f001 fb52 	bl	8006abc <_sbrk_r>
 8005418:	3001      	adds	r0, #1
 800541a:	d00d      	beq.n	8005438 <_malloc_trim_r+0x70>
 800541c:	4b10      	ldr	r3, [pc, #64]	; (8005460 <_malloc_trim_r+0x98>)
 800541e:	68ba      	ldr	r2, [r7, #8]
 8005420:	6819      	ldr	r1, [r3, #0]
 8005422:	1b2d      	subs	r5, r5, r4
 8005424:	f045 0501 	orr.w	r5, r5, #1
 8005428:	4630      	mov	r0, r6
 800542a:	1b09      	subs	r1, r1, r4
 800542c:	6055      	str	r5, [r2, #4]
 800542e:	6019      	str	r1, [r3, #0]
 8005430:	f000 fe52 	bl	80060d8 <__malloc_unlock>
 8005434:	2001      	movs	r0, #1
 8005436:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005438:	2100      	movs	r1, #0
 800543a:	4630      	mov	r0, r6
 800543c:	f001 fb3e 	bl	8006abc <_sbrk_r>
 8005440:	68ba      	ldr	r2, [r7, #8]
 8005442:	1a83      	subs	r3, r0, r2
 8005444:	2b0f      	cmp	r3, #15
 8005446:	ddde      	ble.n	8005406 <_malloc_trim_r+0x3e>
 8005448:	4c06      	ldr	r4, [pc, #24]	; (8005464 <_malloc_trim_r+0x9c>)
 800544a:	4905      	ldr	r1, [pc, #20]	; (8005460 <_malloc_trim_r+0x98>)
 800544c:	6824      	ldr	r4, [r4, #0]
 800544e:	f043 0301 	orr.w	r3, r3, #1
 8005452:	1b00      	subs	r0, r0, r4
 8005454:	6053      	str	r3, [r2, #4]
 8005456:	6008      	str	r0, [r1, #0]
 8005458:	e7d5      	b.n	8005406 <_malloc_trim_r+0x3e>
 800545a:	bf00      	nop
 800545c:	2000044c 	.word	0x2000044c
 8005460:	20000a6c 	.word	0x20000a6c
 8005464:	20000854 	.word	0x20000854

08005468 <_free_r>:
 8005468:	2900      	cmp	r1, #0
 800546a:	d053      	beq.n	8005514 <_free_r+0xac>
 800546c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800546e:	460c      	mov	r4, r1
 8005470:	4606      	mov	r6, r0
 8005472:	f000 fe2b 	bl	80060cc <__malloc_lock>
 8005476:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800547a:	4f71      	ldr	r7, [pc, #452]	; (8005640 <_free_r+0x1d8>)
 800547c:	f02c 0101 	bic.w	r1, ip, #1
 8005480:	f1a4 0508 	sub.w	r5, r4, #8
 8005484:	186b      	adds	r3, r5, r1
 8005486:	68b8      	ldr	r0, [r7, #8]
 8005488:	685a      	ldr	r2, [r3, #4]
 800548a:	4298      	cmp	r0, r3
 800548c:	f022 0203 	bic.w	r2, r2, #3
 8005490:	d053      	beq.n	800553a <_free_r+0xd2>
 8005492:	f01c 0f01 	tst.w	ip, #1
 8005496:	605a      	str	r2, [r3, #4]
 8005498:	eb03 0002 	add.w	r0, r3, r2
 800549c:	d13b      	bne.n	8005516 <_free_r+0xae>
 800549e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80054a2:	6840      	ldr	r0, [r0, #4]
 80054a4:	eba5 050c 	sub.w	r5, r5, ip
 80054a8:	f107 0e08 	add.w	lr, r7, #8
 80054ac:	68ac      	ldr	r4, [r5, #8]
 80054ae:	4574      	cmp	r4, lr
 80054b0:	4461      	add	r1, ip
 80054b2:	f000 0001 	and.w	r0, r0, #1
 80054b6:	d075      	beq.n	80055a4 <_free_r+0x13c>
 80054b8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80054bc:	f8c4 c00c 	str.w	ip, [r4, #12]
 80054c0:	f8cc 4008 	str.w	r4, [ip, #8]
 80054c4:	b360      	cbz	r0, 8005520 <_free_r+0xb8>
 80054c6:	f041 0301 	orr.w	r3, r1, #1
 80054ca:	606b      	str	r3, [r5, #4]
 80054cc:	5069      	str	r1, [r5, r1]
 80054ce:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80054d2:	d350      	bcc.n	8005576 <_free_r+0x10e>
 80054d4:	0a4b      	lsrs	r3, r1, #9
 80054d6:	2b04      	cmp	r3, #4
 80054d8:	d870      	bhi.n	80055bc <_free_r+0x154>
 80054da:	098b      	lsrs	r3, r1, #6
 80054dc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80054e0:	00e4      	lsls	r4, r4, #3
 80054e2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80054e6:	1938      	adds	r0, r7, r4
 80054e8:	593b      	ldr	r3, [r7, r4]
 80054ea:	3808      	subs	r0, #8
 80054ec:	4298      	cmp	r0, r3
 80054ee:	d078      	beq.n	80055e2 <_free_r+0x17a>
 80054f0:	685a      	ldr	r2, [r3, #4]
 80054f2:	f022 0203 	bic.w	r2, r2, #3
 80054f6:	428a      	cmp	r2, r1
 80054f8:	d971      	bls.n	80055de <_free_r+0x176>
 80054fa:	689b      	ldr	r3, [r3, #8]
 80054fc:	4298      	cmp	r0, r3
 80054fe:	d1f7      	bne.n	80054f0 <_free_r+0x88>
 8005500:	68c3      	ldr	r3, [r0, #12]
 8005502:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005506:	609d      	str	r5, [r3, #8]
 8005508:	60c5      	str	r5, [r0, #12]
 800550a:	4630      	mov	r0, r6
 800550c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005510:	f000 bde2 	b.w	80060d8 <__malloc_unlock>
 8005514:	4770      	bx	lr
 8005516:	6840      	ldr	r0, [r0, #4]
 8005518:	f000 0001 	and.w	r0, r0, #1
 800551c:	2800      	cmp	r0, #0
 800551e:	d1d2      	bne.n	80054c6 <_free_r+0x5e>
 8005520:	6898      	ldr	r0, [r3, #8]
 8005522:	4c48      	ldr	r4, [pc, #288]	; (8005644 <_free_r+0x1dc>)
 8005524:	4411      	add	r1, r2
 8005526:	42a0      	cmp	r0, r4
 8005528:	f041 0201 	orr.w	r2, r1, #1
 800552c:	d062      	beq.n	80055f4 <_free_r+0x18c>
 800552e:	68db      	ldr	r3, [r3, #12]
 8005530:	60c3      	str	r3, [r0, #12]
 8005532:	6098      	str	r0, [r3, #8]
 8005534:	606a      	str	r2, [r5, #4]
 8005536:	5069      	str	r1, [r5, r1]
 8005538:	e7c9      	b.n	80054ce <_free_r+0x66>
 800553a:	f01c 0f01 	tst.w	ip, #1
 800553e:	440a      	add	r2, r1
 8005540:	d107      	bne.n	8005552 <_free_r+0xea>
 8005542:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005546:	1aed      	subs	r5, r5, r3
 8005548:	441a      	add	r2, r3
 800554a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800554e:	60cb      	str	r3, [r1, #12]
 8005550:	6099      	str	r1, [r3, #8]
 8005552:	4b3d      	ldr	r3, [pc, #244]	; (8005648 <_free_r+0x1e0>)
 8005554:	681b      	ldr	r3, [r3, #0]
 8005556:	f042 0101 	orr.w	r1, r2, #1
 800555a:	4293      	cmp	r3, r2
 800555c:	6069      	str	r1, [r5, #4]
 800555e:	60bd      	str	r5, [r7, #8]
 8005560:	d804      	bhi.n	800556c <_free_r+0x104>
 8005562:	4b3a      	ldr	r3, [pc, #232]	; (800564c <_free_r+0x1e4>)
 8005564:	4630      	mov	r0, r6
 8005566:	6819      	ldr	r1, [r3, #0]
 8005568:	f7ff ff2e 	bl	80053c8 <_malloc_trim_r>
 800556c:	4630      	mov	r0, r6
 800556e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005572:	f000 bdb1 	b.w	80060d8 <__malloc_unlock>
 8005576:	08c9      	lsrs	r1, r1, #3
 8005578:	6878      	ldr	r0, [r7, #4]
 800557a:	1c4a      	adds	r2, r1, #1
 800557c:	2301      	movs	r3, #1
 800557e:	1089      	asrs	r1, r1, #2
 8005580:	408b      	lsls	r3, r1
 8005582:	4303      	orrs	r3, r0
 8005584:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005588:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800558c:	607b      	str	r3, [r7, #4]
 800558e:	3908      	subs	r1, #8
 8005590:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005594:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005598:	60c5      	str	r5, [r0, #12]
 800559a:	4630      	mov	r0, r6
 800559c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80055a0:	f000 bd9a 	b.w	80060d8 <__malloc_unlock>
 80055a4:	2800      	cmp	r0, #0
 80055a6:	d145      	bne.n	8005634 <_free_r+0x1cc>
 80055a8:	440a      	add	r2, r1
 80055aa:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80055ae:	f042 0001 	orr.w	r0, r2, #1
 80055b2:	60cb      	str	r3, [r1, #12]
 80055b4:	6099      	str	r1, [r3, #8]
 80055b6:	6068      	str	r0, [r5, #4]
 80055b8:	50aa      	str	r2, [r5, r2]
 80055ba:	e7d7      	b.n	800556c <_free_r+0x104>
 80055bc:	2b14      	cmp	r3, #20
 80055be:	d908      	bls.n	80055d2 <_free_r+0x16a>
 80055c0:	2b54      	cmp	r3, #84	; 0x54
 80055c2:	d81e      	bhi.n	8005602 <_free_r+0x19a>
 80055c4:	0b0b      	lsrs	r3, r1, #12
 80055c6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80055ca:	00e4      	lsls	r4, r4, #3
 80055cc:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80055d0:	e789      	b.n	80054e6 <_free_r+0x7e>
 80055d2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80055d6:	00e4      	lsls	r4, r4, #3
 80055d8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80055dc:	e783      	b.n	80054e6 <_free_r+0x7e>
 80055de:	4618      	mov	r0, r3
 80055e0:	e78e      	b.n	8005500 <_free_r+0x98>
 80055e2:	1093      	asrs	r3, r2, #2
 80055e4:	6879      	ldr	r1, [r7, #4]
 80055e6:	2201      	movs	r2, #1
 80055e8:	fa02 f303 	lsl.w	r3, r2, r3
 80055ec:	430b      	orrs	r3, r1
 80055ee:	607b      	str	r3, [r7, #4]
 80055f0:	4603      	mov	r3, r0
 80055f2:	e786      	b.n	8005502 <_free_r+0x9a>
 80055f4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80055f8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80055fc:	606a      	str	r2, [r5, #4]
 80055fe:	5069      	str	r1, [r5, r1]
 8005600:	e7b4      	b.n	800556c <_free_r+0x104>
 8005602:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005606:	d806      	bhi.n	8005616 <_free_r+0x1ae>
 8005608:	0bcb      	lsrs	r3, r1, #15
 800560a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800560e:	00e4      	lsls	r4, r4, #3
 8005610:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005614:	e767      	b.n	80054e6 <_free_r+0x7e>
 8005616:	f240 5254 	movw	r2, #1364	; 0x554
 800561a:	4293      	cmp	r3, r2
 800561c:	d806      	bhi.n	800562c <_free_r+0x1c4>
 800561e:	0c8b      	lsrs	r3, r1, #18
 8005620:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005624:	00e4      	lsls	r4, r4, #3
 8005626:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800562a:	e75c      	b.n	80054e6 <_free_r+0x7e>
 800562c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005630:	227e      	movs	r2, #126	; 0x7e
 8005632:	e758      	b.n	80054e6 <_free_r+0x7e>
 8005634:	f041 0201 	orr.w	r2, r1, #1
 8005638:	606a      	str	r2, [r5, #4]
 800563a:	6019      	str	r1, [r3, #0]
 800563c:	e796      	b.n	800556c <_free_r+0x104>
 800563e:	bf00      	nop
 8005640:	2000044c 	.word	0x2000044c
 8005644:	20000454 	.word	0x20000454
 8005648:	20000858 	.word	0x20000858
 800564c:	20000a9c 	.word	0x20000a9c

08005650 <__sfvwrite_r>:
 8005650:	6893      	ldr	r3, [r2, #8]
 8005652:	2b00      	cmp	r3, #0
 8005654:	f000 80e4 	beq.w	8005820 <__sfvwrite_r+0x1d0>
 8005658:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800565c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005660:	b29b      	uxth	r3, r3
 8005662:	460c      	mov	r4, r1
 8005664:	0719      	lsls	r1, r3, #28
 8005666:	b083      	sub	sp, #12
 8005668:	4682      	mov	sl, r0
 800566a:	4690      	mov	r8, r2
 800566c:	d535      	bpl.n	80056da <__sfvwrite_r+0x8a>
 800566e:	6922      	ldr	r2, [r4, #16]
 8005670:	b39a      	cbz	r2, 80056da <__sfvwrite_r+0x8a>
 8005672:	f013 0202 	ands.w	r2, r3, #2
 8005676:	f8d8 6000 	ldr.w	r6, [r8]
 800567a:	d03d      	beq.n	80056f8 <__sfvwrite_r+0xa8>
 800567c:	2700      	movs	r7, #0
 800567e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005682:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005686:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005948 <__sfvwrite_r+0x2f8>
 800568a:	463d      	mov	r5, r7
 800568c:	454d      	cmp	r5, r9
 800568e:	462b      	mov	r3, r5
 8005690:	463a      	mov	r2, r7
 8005692:	bf28      	it	cs
 8005694:	464b      	movcs	r3, r9
 8005696:	4661      	mov	r1, ip
 8005698:	4650      	mov	r0, sl
 800569a:	b1d5      	cbz	r5, 80056d2 <__sfvwrite_r+0x82>
 800569c:	47d8      	blx	fp
 800569e:	2800      	cmp	r0, #0
 80056a0:	f340 80c6 	ble.w	8005830 <__sfvwrite_r+0x1e0>
 80056a4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80056a8:	1a1b      	subs	r3, r3, r0
 80056aa:	4407      	add	r7, r0
 80056ac:	1a2d      	subs	r5, r5, r0
 80056ae:	f8c8 3008 	str.w	r3, [r8, #8]
 80056b2:	2b00      	cmp	r3, #0
 80056b4:	f000 80b0 	beq.w	8005818 <__sfvwrite_r+0x1c8>
 80056b8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80056bc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80056c0:	454d      	cmp	r5, r9
 80056c2:	462b      	mov	r3, r5
 80056c4:	463a      	mov	r2, r7
 80056c6:	bf28      	it	cs
 80056c8:	464b      	movcs	r3, r9
 80056ca:	4661      	mov	r1, ip
 80056cc:	4650      	mov	r0, sl
 80056ce:	2d00      	cmp	r5, #0
 80056d0:	d1e4      	bne.n	800569c <__sfvwrite_r+0x4c>
 80056d2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80056d6:	3608      	adds	r6, #8
 80056d8:	e7d8      	b.n	800568c <__sfvwrite_r+0x3c>
 80056da:	4621      	mov	r1, r4
 80056dc:	4650      	mov	r0, sl
 80056de:	f7fe fd03 	bl	80040e8 <__swsetup_r>
 80056e2:	2800      	cmp	r0, #0
 80056e4:	f040 812a 	bne.w	800593c <__sfvwrite_r+0x2ec>
 80056e8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056ec:	f8d8 6000 	ldr.w	r6, [r8]
 80056f0:	b29b      	uxth	r3, r3
 80056f2:	f013 0202 	ands.w	r2, r3, #2
 80056f6:	d1c1      	bne.n	800567c <__sfvwrite_r+0x2c>
 80056f8:	f013 0901 	ands.w	r9, r3, #1
 80056fc:	d15d      	bne.n	80057ba <__sfvwrite_r+0x16a>
 80056fe:	68a7      	ldr	r7, [r4, #8]
 8005700:	6820      	ldr	r0, [r4, #0]
 8005702:	464d      	mov	r5, r9
 8005704:	2d00      	cmp	r5, #0
 8005706:	d054      	beq.n	80057b2 <__sfvwrite_r+0x162>
 8005708:	059a      	lsls	r2, r3, #22
 800570a:	f140 809b 	bpl.w	8005844 <__sfvwrite_r+0x1f4>
 800570e:	42af      	cmp	r7, r5
 8005710:	46bb      	mov	fp, r7
 8005712:	f200 80d8 	bhi.w	80058c6 <__sfvwrite_r+0x276>
 8005716:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800571a:	d02f      	beq.n	800577c <__sfvwrite_r+0x12c>
 800571c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005720:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005724:	eba0 0b01 	sub.w	fp, r0, r1
 8005728:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800572c:	1c68      	adds	r0, r5, #1
 800572e:	107f      	asrs	r7, r7, #1
 8005730:	4458      	add	r0, fp
 8005732:	42b8      	cmp	r0, r7
 8005734:	463a      	mov	r2, r7
 8005736:	bf84      	itt	hi
 8005738:	4607      	movhi	r7, r0
 800573a:	463a      	movhi	r2, r7
 800573c:	055b      	lsls	r3, r3, #21
 800573e:	f140 80d3 	bpl.w	80058e8 <__sfvwrite_r+0x298>
 8005742:	4611      	mov	r1, r2
 8005744:	4650      	mov	r0, sl
 8005746:	f000 f9b9 	bl	8005abc <_malloc_r>
 800574a:	2800      	cmp	r0, #0
 800574c:	f000 80f0 	beq.w	8005930 <__sfvwrite_r+0x2e0>
 8005750:	465a      	mov	r2, fp
 8005752:	6921      	ldr	r1, [r4, #16]
 8005754:	9001      	str	r0, [sp, #4]
 8005756:	f7fa fed3 	bl	8000500 <memcpy>
 800575a:	89a2      	ldrh	r2, [r4, #12]
 800575c:	9b01      	ldr	r3, [sp, #4]
 800575e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005762:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005766:	81a2      	strh	r2, [r4, #12]
 8005768:	eba7 020b 	sub.w	r2, r7, fp
 800576c:	eb03 000b 	add.w	r0, r3, fp
 8005770:	6167      	str	r7, [r4, #20]
 8005772:	6123      	str	r3, [r4, #16]
 8005774:	6020      	str	r0, [r4, #0]
 8005776:	60a2      	str	r2, [r4, #8]
 8005778:	462f      	mov	r7, r5
 800577a:	46ab      	mov	fp, r5
 800577c:	465a      	mov	r2, fp
 800577e:	4649      	mov	r1, r9
 8005780:	f000 fc40 	bl	8006004 <memmove>
 8005784:	68a2      	ldr	r2, [r4, #8]
 8005786:	6823      	ldr	r3, [r4, #0]
 8005788:	1bd2      	subs	r2, r2, r7
 800578a:	445b      	add	r3, fp
 800578c:	462f      	mov	r7, r5
 800578e:	60a2      	str	r2, [r4, #8]
 8005790:	6023      	str	r3, [r4, #0]
 8005792:	2500      	movs	r5, #0
 8005794:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005798:	1bdb      	subs	r3, r3, r7
 800579a:	44b9      	add	r9, r7
 800579c:	f8c8 3008 	str.w	r3, [r8, #8]
 80057a0:	2b00      	cmp	r3, #0
 80057a2:	d039      	beq.n	8005818 <__sfvwrite_r+0x1c8>
 80057a4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057a8:	68a7      	ldr	r7, [r4, #8]
 80057aa:	6820      	ldr	r0, [r4, #0]
 80057ac:	b29b      	uxth	r3, r3
 80057ae:	2d00      	cmp	r5, #0
 80057b0:	d1aa      	bne.n	8005708 <__sfvwrite_r+0xb8>
 80057b2:	e9d6 9500 	ldrd	r9, r5, [r6]
 80057b6:	3608      	adds	r6, #8
 80057b8:	e7a4      	b.n	8005704 <__sfvwrite_r+0xb4>
 80057ba:	4633      	mov	r3, r6
 80057bc:	4691      	mov	r9, r2
 80057be:	4610      	mov	r0, r2
 80057c0:	4617      	mov	r7, r2
 80057c2:	464e      	mov	r6, r9
 80057c4:	469b      	mov	fp, r3
 80057c6:	2f00      	cmp	r7, #0
 80057c8:	d06b      	beq.n	80058a2 <__sfvwrite_r+0x252>
 80057ca:	2800      	cmp	r0, #0
 80057cc:	d071      	beq.n	80058b2 <__sfvwrite_r+0x262>
 80057ce:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80057d2:	6820      	ldr	r0, [r4, #0]
 80057d4:	45b9      	cmp	r9, r7
 80057d6:	464b      	mov	r3, r9
 80057d8:	bf28      	it	cs
 80057da:	463b      	movcs	r3, r7
 80057dc:	4288      	cmp	r0, r1
 80057de:	d903      	bls.n	80057e8 <__sfvwrite_r+0x198>
 80057e0:	68a5      	ldr	r5, [r4, #8]
 80057e2:	4415      	add	r5, r2
 80057e4:	42ab      	cmp	r3, r5
 80057e6:	dc71      	bgt.n	80058cc <__sfvwrite_r+0x27c>
 80057e8:	429a      	cmp	r2, r3
 80057ea:	f300 8093 	bgt.w	8005914 <__sfvwrite_r+0x2c4>
 80057ee:	4613      	mov	r3, r2
 80057f0:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80057f2:	69e1      	ldr	r1, [r4, #28]
 80057f4:	4632      	mov	r2, r6
 80057f6:	4650      	mov	r0, sl
 80057f8:	47a8      	blx	r5
 80057fa:	1e05      	subs	r5, r0, #0
 80057fc:	dd18      	ble.n	8005830 <__sfvwrite_r+0x1e0>
 80057fe:	ebb9 0905 	subs.w	r9, r9, r5
 8005802:	d00f      	beq.n	8005824 <__sfvwrite_r+0x1d4>
 8005804:	2001      	movs	r0, #1
 8005806:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800580a:	1b5b      	subs	r3, r3, r5
 800580c:	442e      	add	r6, r5
 800580e:	1b7f      	subs	r7, r7, r5
 8005810:	f8c8 3008 	str.w	r3, [r8, #8]
 8005814:	2b00      	cmp	r3, #0
 8005816:	d1d6      	bne.n	80057c6 <__sfvwrite_r+0x176>
 8005818:	2000      	movs	r0, #0
 800581a:	b003      	add	sp, #12
 800581c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005820:	2000      	movs	r0, #0
 8005822:	4770      	bx	lr
 8005824:	4621      	mov	r1, r4
 8005826:	4650      	mov	r0, sl
 8005828:	f7ff fd20 	bl	800526c <_fflush_r>
 800582c:	2800      	cmp	r0, #0
 800582e:	d0ea      	beq.n	8005806 <__sfvwrite_r+0x1b6>
 8005830:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005834:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005838:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800583c:	81a3      	strh	r3, [r4, #12]
 800583e:	b003      	add	sp, #12
 8005840:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005844:	6923      	ldr	r3, [r4, #16]
 8005846:	4283      	cmp	r3, r0
 8005848:	d315      	bcc.n	8005876 <__sfvwrite_r+0x226>
 800584a:	6961      	ldr	r1, [r4, #20]
 800584c:	42a9      	cmp	r1, r5
 800584e:	d812      	bhi.n	8005876 <__sfvwrite_r+0x226>
 8005850:	4b3c      	ldr	r3, [pc, #240]	; (8005944 <__sfvwrite_r+0x2f4>)
 8005852:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005854:	429d      	cmp	r5, r3
 8005856:	bf94      	ite	ls
 8005858:	462b      	movls	r3, r5
 800585a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800585e:	464a      	mov	r2, r9
 8005860:	fb93 f3f1 	sdiv	r3, r3, r1
 8005864:	4650      	mov	r0, sl
 8005866:	fb01 f303 	mul.w	r3, r1, r3
 800586a:	69e1      	ldr	r1, [r4, #28]
 800586c:	47b8      	blx	r7
 800586e:	1e07      	subs	r7, r0, #0
 8005870:	ddde      	ble.n	8005830 <__sfvwrite_r+0x1e0>
 8005872:	1bed      	subs	r5, r5, r7
 8005874:	e78e      	b.n	8005794 <__sfvwrite_r+0x144>
 8005876:	42af      	cmp	r7, r5
 8005878:	bf28      	it	cs
 800587a:	462f      	movcs	r7, r5
 800587c:	463a      	mov	r2, r7
 800587e:	4649      	mov	r1, r9
 8005880:	f000 fbc0 	bl	8006004 <memmove>
 8005884:	68a3      	ldr	r3, [r4, #8]
 8005886:	6822      	ldr	r2, [r4, #0]
 8005888:	1bdb      	subs	r3, r3, r7
 800588a:	443a      	add	r2, r7
 800588c:	60a3      	str	r3, [r4, #8]
 800588e:	6022      	str	r2, [r4, #0]
 8005890:	2b00      	cmp	r3, #0
 8005892:	d1ee      	bne.n	8005872 <__sfvwrite_r+0x222>
 8005894:	4621      	mov	r1, r4
 8005896:	4650      	mov	r0, sl
 8005898:	f7ff fce8 	bl	800526c <_fflush_r>
 800589c:	2800      	cmp	r0, #0
 800589e:	d0e8      	beq.n	8005872 <__sfvwrite_r+0x222>
 80058a0:	e7c6      	b.n	8005830 <__sfvwrite_r+0x1e0>
 80058a2:	f10b 0308 	add.w	r3, fp, #8
 80058a6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80058aa:	469b      	mov	fp, r3
 80058ac:	3308      	adds	r3, #8
 80058ae:	2f00      	cmp	r7, #0
 80058b0:	d0f9      	beq.n	80058a6 <__sfvwrite_r+0x256>
 80058b2:	463a      	mov	r2, r7
 80058b4:	210a      	movs	r1, #10
 80058b6:	4630      	mov	r0, r6
 80058b8:	f7fa ff32 	bl	8000720 <memchr>
 80058bc:	b338      	cbz	r0, 800590e <__sfvwrite_r+0x2be>
 80058be:	3001      	adds	r0, #1
 80058c0:	eba0 0906 	sub.w	r9, r0, r6
 80058c4:	e783      	b.n	80057ce <__sfvwrite_r+0x17e>
 80058c6:	462f      	mov	r7, r5
 80058c8:	46ab      	mov	fp, r5
 80058ca:	e757      	b.n	800577c <__sfvwrite_r+0x12c>
 80058cc:	4631      	mov	r1, r6
 80058ce:	462a      	mov	r2, r5
 80058d0:	f000 fb98 	bl	8006004 <memmove>
 80058d4:	6823      	ldr	r3, [r4, #0]
 80058d6:	442b      	add	r3, r5
 80058d8:	6023      	str	r3, [r4, #0]
 80058da:	4621      	mov	r1, r4
 80058dc:	4650      	mov	r0, sl
 80058de:	f7ff fcc5 	bl	800526c <_fflush_r>
 80058e2:	2800      	cmp	r0, #0
 80058e4:	d08b      	beq.n	80057fe <__sfvwrite_r+0x1ae>
 80058e6:	e7a3      	b.n	8005830 <__sfvwrite_r+0x1e0>
 80058e8:	4650      	mov	r0, sl
 80058ea:	f000 ff05 	bl	80066f8 <_realloc_r>
 80058ee:	4603      	mov	r3, r0
 80058f0:	2800      	cmp	r0, #0
 80058f2:	f47f af39 	bne.w	8005768 <__sfvwrite_r+0x118>
 80058f6:	6921      	ldr	r1, [r4, #16]
 80058f8:	4650      	mov	r0, sl
 80058fa:	f7ff fdb5 	bl	8005468 <_free_r>
 80058fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005902:	220c      	movs	r2, #12
 8005904:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005908:	f8ca 2000 	str.w	r2, [sl]
 800590c:	e792      	b.n	8005834 <__sfvwrite_r+0x1e4>
 800590e:	f107 0901 	add.w	r9, r7, #1
 8005912:	e75c      	b.n	80057ce <__sfvwrite_r+0x17e>
 8005914:	461a      	mov	r2, r3
 8005916:	4631      	mov	r1, r6
 8005918:	9301      	str	r3, [sp, #4]
 800591a:	f000 fb73 	bl	8006004 <memmove>
 800591e:	9b01      	ldr	r3, [sp, #4]
 8005920:	68a1      	ldr	r1, [r4, #8]
 8005922:	6822      	ldr	r2, [r4, #0]
 8005924:	1ac9      	subs	r1, r1, r3
 8005926:	441a      	add	r2, r3
 8005928:	60a1      	str	r1, [r4, #8]
 800592a:	6022      	str	r2, [r4, #0]
 800592c:	461d      	mov	r5, r3
 800592e:	e766      	b.n	80057fe <__sfvwrite_r+0x1ae>
 8005930:	230c      	movs	r3, #12
 8005932:	f8ca 3000 	str.w	r3, [sl]
 8005936:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800593a:	e77b      	b.n	8005834 <__sfvwrite_r+0x1e4>
 800593c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005940:	e76b      	b.n	800581a <__sfvwrite_r+0x1ca>
 8005942:	bf00      	nop
 8005944:	7ffffffe 	.word	0x7ffffffe
 8005948:	7ffffc00 	.word	0x7ffffc00

0800594c <_fwalk_reent>:
 800594c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005950:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005954:	d01f      	beq.n	8005996 <_fwalk_reent+0x4a>
 8005956:	4688      	mov	r8, r1
 8005958:	4606      	mov	r6, r0
 800595a:	f04f 0900 	mov.w	r9, #0
 800595e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005962:	3d01      	subs	r5, #1
 8005964:	d411      	bmi.n	800598a <_fwalk_reent+0x3e>
 8005966:	89a3      	ldrh	r3, [r4, #12]
 8005968:	2b01      	cmp	r3, #1
 800596a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800596e:	4621      	mov	r1, r4
 8005970:	4630      	mov	r0, r6
 8005972:	d906      	bls.n	8005982 <_fwalk_reent+0x36>
 8005974:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005978:	3301      	adds	r3, #1
 800597a:	d002      	beq.n	8005982 <_fwalk_reent+0x36>
 800597c:	47c0      	blx	r8
 800597e:	ea49 0900 	orr.w	r9, r9, r0
 8005982:	1c6b      	adds	r3, r5, #1
 8005984:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005988:	d1ed      	bne.n	8005966 <_fwalk_reent+0x1a>
 800598a:	683f      	ldr	r7, [r7, #0]
 800598c:	2f00      	cmp	r7, #0
 800598e:	d1e6      	bne.n	800595e <_fwalk_reent+0x12>
 8005990:	4648      	mov	r0, r9
 8005992:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005996:	46b9      	mov	r9, r7
 8005998:	4648      	mov	r0, r9
 800599a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800599e:	bf00      	nop

080059a0 <_localeconv_r>:
 80059a0:	4a04      	ldr	r2, [pc, #16]	; (80059b4 <_localeconv_r+0x14>)
 80059a2:	4b05      	ldr	r3, [pc, #20]	; (80059b8 <_localeconv_r+0x18>)
 80059a4:	6812      	ldr	r2, [r2, #0]
 80059a6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80059a8:	2800      	cmp	r0, #0
 80059aa:	bf08      	it	eq
 80059ac:	4618      	moveq	r0, r3
 80059ae:	30f0      	adds	r0, #240	; 0xf0
 80059b0:	4770      	bx	lr
 80059b2:	bf00      	nop
 80059b4:	20000018 	.word	0x20000018
 80059b8:	2000085c 	.word	0x2000085c

080059bc <__retarget_lock_init_recursive>:
 80059bc:	4770      	bx	lr
 80059be:	bf00      	nop

080059c0 <__retarget_lock_close_recursive>:
 80059c0:	4770      	bx	lr
 80059c2:	bf00      	nop

080059c4 <__retarget_lock_acquire_recursive>:
 80059c4:	4770      	bx	lr
 80059c6:	bf00      	nop

080059c8 <__retarget_lock_release_recursive>:
 80059c8:	4770      	bx	lr
 80059ca:	bf00      	nop

080059cc <__swhatbuf_r>:
 80059cc:	b570      	push	{r4, r5, r6, lr}
 80059ce:	460c      	mov	r4, r1
 80059d0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80059d4:	2900      	cmp	r1, #0
 80059d6:	b096      	sub	sp, #88	; 0x58
 80059d8:	4615      	mov	r5, r2
 80059da:	461e      	mov	r6, r3
 80059dc:	da0f      	bge.n	80059fe <__swhatbuf_r+0x32>
 80059de:	89a2      	ldrh	r2, [r4, #12]
 80059e0:	2300      	movs	r3, #0
 80059e2:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80059e6:	6033      	str	r3, [r6, #0]
 80059e8:	d104      	bne.n	80059f4 <__swhatbuf_r+0x28>
 80059ea:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80059ee:	602b      	str	r3, [r5, #0]
 80059f0:	b016      	add	sp, #88	; 0x58
 80059f2:	bd70      	pop	{r4, r5, r6, pc}
 80059f4:	2240      	movs	r2, #64	; 0x40
 80059f6:	4618      	mov	r0, r3
 80059f8:	602a      	str	r2, [r5, #0]
 80059fa:	b016      	add	sp, #88	; 0x58
 80059fc:	bd70      	pop	{r4, r5, r6, pc}
 80059fe:	466a      	mov	r2, sp
 8005a00:	f001 fad0 	bl	8006fa4 <_fstat_r>
 8005a04:	2800      	cmp	r0, #0
 8005a06:	dbea      	blt.n	80059de <__swhatbuf_r+0x12>
 8005a08:	9b01      	ldr	r3, [sp, #4]
 8005a0a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005a0e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005a12:	fab3 f383 	clz	r3, r3
 8005a16:	095b      	lsrs	r3, r3, #5
 8005a18:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005a1c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005a20:	6033      	str	r3, [r6, #0]
 8005a22:	602a      	str	r2, [r5, #0]
 8005a24:	b016      	add	sp, #88	; 0x58
 8005a26:	bd70      	pop	{r4, r5, r6, pc}

08005a28 <__smakebuf_r>:
 8005a28:	898a      	ldrh	r2, [r1, #12]
 8005a2a:	0792      	lsls	r2, r2, #30
 8005a2c:	460b      	mov	r3, r1
 8005a2e:	d506      	bpl.n	8005a3e <__smakebuf_r+0x16>
 8005a30:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005a34:	2101      	movs	r1, #1
 8005a36:	601a      	str	r2, [r3, #0]
 8005a38:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005a3c:	4770      	bx	lr
 8005a3e:	b570      	push	{r4, r5, r6, lr}
 8005a40:	b082      	sub	sp, #8
 8005a42:	ab01      	add	r3, sp, #4
 8005a44:	466a      	mov	r2, sp
 8005a46:	460c      	mov	r4, r1
 8005a48:	4605      	mov	r5, r0
 8005a4a:	f7ff ffbf 	bl	80059cc <__swhatbuf_r>
 8005a4e:	9900      	ldr	r1, [sp, #0]
 8005a50:	4606      	mov	r6, r0
 8005a52:	4628      	mov	r0, r5
 8005a54:	f000 f832 	bl	8005abc <_malloc_r>
 8005a58:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a5c:	b1d8      	cbz	r0, 8005a96 <__smakebuf_r+0x6e>
 8005a5e:	4916      	ldr	r1, [pc, #88]	; (8005ab8 <__smakebuf_r+0x90>)
 8005a60:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005a62:	9a01      	ldr	r2, [sp, #4]
 8005a64:	9900      	ldr	r1, [sp, #0]
 8005a66:	6020      	str	r0, [r4, #0]
 8005a68:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005a6c:	81a3      	strh	r3, [r4, #12]
 8005a6e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005a72:	b91a      	cbnz	r2, 8005a7c <__smakebuf_r+0x54>
 8005a74:	4333      	orrs	r3, r6
 8005a76:	81a3      	strh	r3, [r4, #12]
 8005a78:	b002      	add	sp, #8
 8005a7a:	bd70      	pop	{r4, r5, r6, pc}
 8005a7c:	4628      	mov	r0, r5
 8005a7e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005a82:	f001 faa3 	bl	8006fcc <_isatty_r>
 8005a86:	b1a0      	cbz	r0, 8005ab2 <__smakebuf_r+0x8a>
 8005a88:	89a3      	ldrh	r3, [r4, #12]
 8005a8a:	f023 0303 	bic.w	r3, r3, #3
 8005a8e:	f043 0301 	orr.w	r3, r3, #1
 8005a92:	b21b      	sxth	r3, r3
 8005a94:	e7ee      	b.n	8005a74 <__smakebuf_r+0x4c>
 8005a96:	059a      	lsls	r2, r3, #22
 8005a98:	d4ee      	bmi.n	8005a78 <__smakebuf_r+0x50>
 8005a9a:	f023 0303 	bic.w	r3, r3, #3
 8005a9e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005aa2:	f043 0302 	orr.w	r3, r3, #2
 8005aa6:	2101      	movs	r1, #1
 8005aa8:	81a3      	strh	r3, [r4, #12]
 8005aaa:	6022      	str	r2, [r4, #0]
 8005aac:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005ab0:	e7e2      	b.n	8005a78 <__smakebuf_r+0x50>
 8005ab2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ab6:	e7dd      	b.n	8005a74 <__smakebuf_r+0x4c>
 8005ab8:	08005319 	.word	0x08005319

08005abc <_malloc_r>:
 8005abc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005ac0:	f101 050b 	add.w	r5, r1, #11
 8005ac4:	2d16      	cmp	r5, #22
 8005ac6:	b083      	sub	sp, #12
 8005ac8:	4606      	mov	r6, r0
 8005aca:	d823      	bhi.n	8005b14 <_malloc_r+0x58>
 8005acc:	2910      	cmp	r1, #16
 8005ace:	f200 80b9 	bhi.w	8005c44 <_malloc_r+0x188>
 8005ad2:	f000 fafb 	bl	80060cc <__malloc_lock>
 8005ad6:	2510      	movs	r5, #16
 8005ad8:	2318      	movs	r3, #24
 8005ada:	2002      	movs	r0, #2
 8005adc:	4fc5      	ldr	r7, [pc, #788]	; (8005df4 <_malloc_r+0x338>)
 8005ade:	443b      	add	r3, r7
 8005ae0:	f1a3 0208 	sub.w	r2, r3, #8
 8005ae4:	685c      	ldr	r4, [r3, #4]
 8005ae6:	4294      	cmp	r4, r2
 8005ae8:	f000 8166 	beq.w	8005db8 <_malloc_r+0x2fc>
 8005aec:	6863      	ldr	r3, [r4, #4]
 8005aee:	f023 0303 	bic.w	r3, r3, #3
 8005af2:	4423      	add	r3, r4
 8005af4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005af8:	685a      	ldr	r2, [r3, #4]
 8005afa:	60e9      	str	r1, [r5, #12]
 8005afc:	f042 0201 	orr.w	r2, r2, #1
 8005b00:	608d      	str	r5, [r1, #8]
 8005b02:	4630      	mov	r0, r6
 8005b04:	605a      	str	r2, [r3, #4]
 8005b06:	f000 fae7 	bl	80060d8 <__malloc_unlock>
 8005b0a:	3408      	adds	r4, #8
 8005b0c:	4620      	mov	r0, r4
 8005b0e:	b003      	add	sp, #12
 8005b10:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b14:	f035 0507 	bics.w	r5, r5, #7
 8005b18:	f100 8094 	bmi.w	8005c44 <_malloc_r+0x188>
 8005b1c:	42a9      	cmp	r1, r5
 8005b1e:	f200 8091 	bhi.w	8005c44 <_malloc_r+0x188>
 8005b22:	f000 fad3 	bl	80060cc <__malloc_lock>
 8005b26:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005b2a:	f0c0 8183 	bcc.w	8005e34 <_malloc_r+0x378>
 8005b2e:	0a6b      	lsrs	r3, r5, #9
 8005b30:	f000 808f 	beq.w	8005c52 <_malloc_r+0x196>
 8005b34:	2b04      	cmp	r3, #4
 8005b36:	f200 8146 	bhi.w	8005dc6 <_malloc_r+0x30a>
 8005b3a:	09ab      	lsrs	r3, r5, #6
 8005b3c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005b40:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005b44:	00c3      	lsls	r3, r0, #3
 8005b46:	4fab      	ldr	r7, [pc, #684]	; (8005df4 <_malloc_r+0x338>)
 8005b48:	443b      	add	r3, r7
 8005b4a:	f1a3 0108 	sub.w	r1, r3, #8
 8005b4e:	685c      	ldr	r4, [r3, #4]
 8005b50:	42a1      	cmp	r1, r4
 8005b52:	d106      	bne.n	8005b62 <_malloc_r+0xa6>
 8005b54:	e00c      	b.n	8005b70 <_malloc_r+0xb4>
 8005b56:	2a00      	cmp	r2, #0
 8005b58:	f280 811d 	bge.w	8005d96 <_malloc_r+0x2da>
 8005b5c:	68e4      	ldr	r4, [r4, #12]
 8005b5e:	42a1      	cmp	r1, r4
 8005b60:	d006      	beq.n	8005b70 <_malloc_r+0xb4>
 8005b62:	6863      	ldr	r3, [r4, #4]
 8005b64:	f023 0303 	bic.w	r3, r3, #3
 8005b68:	1b5a      	subs	r2, r3, r5
 8005b6a:	2a0f      	cmp	r2, #15
 8005b6c:	ddf3      	ble.n	8005b56 <_malloc_r+0x9a>
 8005b6e:	4660      	mov	r0, ip
 8005b70:	693c      	ldr	r4, [r7, #16]
 8005b72:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005e08 <_malloc_r+0x34c>
 8005b76:	4564      	cmp	r4, ip
 8005b78:	d071      	beq.n	8005c5e <_malloc_r+0x1a2>
 8005b7a:	6863      	ldr	r3, [r4, #4]
 8005b7c:	f023 0303 	bic.w	r3, r3, #3
 8005b80:	1b5a      	subs	r2, r3, r5
 8005b82:	2a0f      	cmp	r2, #15
 8005b84:	f300 8144 	bgt.w	8005e10 <_malloc_r+0x354>
 8005b88:	2a00      	cmp	r2, #0
 8005b8a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005b8e:	f280 8126 	bge.w	8005dde <_malloc_r+0x322>
 8005b92:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005b96:	f080 8169 	bcs.w	8005e6c <_malloc_r+0x3b0>
 8005b9a:	08db      	lsrs	r3, r3, #3
 8005b9c:	1c59      	adds	r1, r3, #1
 8005b9e:	687a      	ldr	r2, [r7, #4]
 8005ba0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005ba4:	f8c4 8008 	str.w	r8, [r4, #8]
 8005ba8:	f04f 0e01 	mov.w	lr, #1
 8005bac:	109b      	asrs	r3, r3, #2
 8005bae:	fa0e f303 	lsl.w	r3, lr, r3
 8005bb2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005bb6:	4313      	orrs	r3, r2
 8005bb8:	f1ae 0208 	sub.w	r2, lr, #8
 8005bbc:	60e2      	str	r2, [r4, #12]
 8005bbe:	607b      	str	r3, [r7, #4]
 8005bc0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005bc4:	f8c8 400c 	str.w	r4, [r8, #12]
 8005bc8:	1082      	asrs	r2, r0, #2
 8005bca:	2401      	movs	r4, #1
 8005bcc:	4094      	lsls	r4, r2
 8005bce:	429c      	cmp	r4, r3
 8005bd0:	d84b      	bhi.n	8005c6a <_malloc_r+0x1ae>
 8005bd2:	421c      	tst	r4, r3
 8005bd4:	d106      	bne.n	8005be4 <_malloc_r+0x128>
 8005bd6:	f020 0003 	bic.w	r0, r0, #3
 8005bda:	0064      	lsls	r4, r4, #1
 8005bdc:	421c      	tst	r4, r3
 8005bde:	f100 0004 	add.w	r0, r0, #4
 8005be2:	d0fa      	beq.n	8005bda <_malloc_r+0x11e>
 8005be4:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005be8:	46ce      	mov	lr, r9
 8005bea:	4680      	mov	r8, r0
 8005bec:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005bf0:	459e      	cmp	lr, r3
 8005bf2:	d107      	bne.n	8005c04 <_malloc_r+0x148>
 8005bf4:	e122      	b.n	8005e3c <_malloc_r+0x380>
 8005bf6:	2a00      	cmp	r2, #0
 8005bf8:	f280 8129 	bge.w	8005e4e <_malloc_r+0x392>
 8005bfc:	68db      	ldr	r3, [r3, #12]
 8005bfe:	459e      	cmp	lr, r3
 8005c00:	f000 811c 	beq.w	8005e3c <_malloc_r+0x380>
 8005c04:	6859      	ldr	r1, [r3, #4]
 8005c06:	f021 0103 	bic.w	r1, r1, #3
 8005c0a:	1b4a      	subs	r2, r1, r5
 8005c0c:	2a0f      	cmp	r2, #15
 8005c0e:	ddf2      	ble.n	8005bf6 <_malloc_r+0x13a>
 8005c10:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005c14:	195c      	adds	r4, r3, r5
 8005c16:	f045 0501 	orr.w	r5, r5, #1
 8005c1a:	605d      	str	r5, [r3, #4]
 8005c1c:	f042 0501 	orr.w	r5, r2, #1
 8005c20:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005c24:	4630      	mov	r0, r6
 8005c26:	f8ce 8008 	str.w	r8, [lr, #8]
 8005c2a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005c2e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005c32:	6065      	str	r5, [r4, #4]
 8005c34:	505a      	str	r2, [r3, r1]
 8005c36:	9301      	str	r3, [sp, #4]
 8005c38:	f000 fa4e 	bl	80060d8 <__malloc_unlock>
 8005c3c:	9b01      	ldr	r3, [sp, #4]
 8005c3e:	f103 0408 	add.w	r4, r3, #8
 8005c42:	e763      	b.n	8005b0c <_malloc_r+0x50>
 8005c44:	2400      	movs	r4, #0
 8005c46:	230c      	movs	r3, #12
 8005c48:	4620      	mov	r0, r4
 8005c4a:	6033      	str	r3, [r6, #0]
 8005c4c:	b003      	add	sp, #12
 8005c4e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c52:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005c56:	2040      	movs	r0, #64	; 0x40
 8005c58:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005c5c:	e773      	b.n	8005b46 <_malloc_r+0x8a>
 8005c5e:	687b      	ldr	r3, [r7, #4]
 8005c60:	1082      	asrs	r2, r0, #2
 8005c62:	2401      	movs	r4, #1
 8005c64:	4094      	lsls	r4, r2
 8005c66:	429c      	cmp	r4, r3
 8005c68:	d9b3      	bls.n	8005bd2 <_malloc_r+0x116>
 8005c6a:	68bc      	ldr	r4, [r7, #8]
 8005c6c:	6863      	ldr	r3, [r4, #4]
 8005c6e:	f023 0903 	bic.w	r9, r3, #3
 8005c72:	45a9      	cmp	r9, r5
 8005c74:	d303      	bcc.n	8005c7e <_malloc_r+0x1c2>
 8005c76:	eba9 0305 	sub.w	r3, r9, r5
 8005c7a:	2b0f      	cmp	r3, #15
 8005c7c:	dc7b      	bgt.n	8005d76 <_malloc_r+0x2ba>
 8005c7e:	4b5e      	ldr	r3, [pc, #376]	; (8005df8 <_malloc_r+0x33c>)
 8005c80:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005e0c <_malloc_r+0x350>
 8005c84:	681a      	ldr	r2, [r3, #0]
 8005c86:	f8da 3000 	ldr.w	r3, [sl]
 8005c8a:	3301      	adds	r3, #1
 8005c8c:	eb05 0802 	add.w	r8, r5, r2
 8005c90:	f000 8148 	beq.w	8005f24 <_malloc_r+0x468>
 8005c94:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005c98:	f108 080f 	add.w	r8, r8, #15
 8005c9c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005ca0:	f028 080f 	bic.w	r8, r8, #15
 8005ca4:	4641      	mov	r1, r8
 8005ca6:	4630      	mov	r0, r6
 8005ca8:	f000 ff08 	bl	8006abc <_sbrk_r>
 8005cac:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005cb0:	4683      	mov	fp, r0
 8005cb2:	f000 8104 	beq.w	8005ebe <_malloc_r+0x402>
 8005cb6:	eb04 0009 	add.w	r0, r4, r9
 8005cba:	4558      	cmp	r0, fp
 8005cbc:	f200 80fd 	bhi.w	8005eba <_malloc_r+0x3fe>
 8005cc0:	4a4e      	ldr	r2, [pc, #312]	; (8005dfc <_malloc_r+0x340>)
 8005cc2:	6813      	ldr	r3, [r2, #0]
 8005cc4:	4443      	add	r3, r8
 8005cc6:	6013      	str	r3, [r2, #0]
 8005cc8:	f000 814d 	beq.w	8005f66 <_malloc_r+0x4aa>
 8005ccc:	f8da 1000 	ldr.w	r1, [sl]
 8005cd0:	3101      	adds	r1, #1
 8005cd2:	bf1b      	ittet	ne
 8005cd4:	ebab 0000 	subne.w	r0, fp, r0
 8005cd8:	181b      	addne	r3, r3, r0
 8005cda:	f8ca b000 	streq.w	fp, [sl]
 8005cde:	6013      	strne	r3, [r2, #0]
 8005ce0:	f01b 0307 	ands.w	r3, fp, #7
 8005ce4:	f000 8134 	beq.w	8005f50 <_malloc_r+0x494>
 8005ce8:	f1c3 0108 	rsb	r1, r3, #8
 8005cec:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005cf0:	448b      	add	fp, r1
 8005cf2:	3308      	adds	r3, #8
 8005cf4:	44d8      	add	r8, fp
 8005cf6:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005cfa:	eba3 0808 	sub.w	r8, r3, r8
 8005cfe:	4641      	mov	r1, r8
 8005d00:	4630      	mov	r0, r6
 8005d02:	9201      	str	r2, [sp, #4]
 8005d04:	f000 feda 	bl	8006abc <_sbrk_r>
 8005d08:	1c43      	adds	r3, r0, #1
 8005d0a:	9a01      	ldr	r2, [sp, #4]
 8005d0c:	f000 8146 	beq.w	8005f9c <_malloc_r+0x4e0>
 8005d10:	eba0 010b 	sub.w	r1, r0, fp
 8005d14:	4441      	add	r1, r8
 8005d16:	f041 0101 	orr.w	r1, r1, #1
 8005d1a:	6813      	ldr	r3, [r2, #0]
 8005d1c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005d20:	4443      	add	r3, r8
 8005d22:	42bc      	cmp	r4, r7
 8005d24:	f8cb 1004 	str.w	r1, [fp, #4]
 8005d28:	6013      	str	r3, [r2, #0]
 8005d2a:	d015      	beq.n	8005d58 <_malloc_r+0x29c>
 8005d2c:	f1b9 0f0f 	cmp.w	r9, #15
 8005d30:	f240 8130 	bls.w	8005f94 <_malloc_r+0x4d8>
 8005d34:	6860      	ldr	r0, [r4, #4]
 8005d36:	f1a9 010c 	sub.w	r1, r9, #12
 8005d3a:	f021 0107 	bic.w	r1, r1, #7
 8005d3e:	f000 0001 	and.w	r0, r0, #1
 8005d42:	eb04 0c01 	add.w	ip, r4, r1
 8005d46:	4308      	orrs	r0, r1
 8005d48:	f04f 0e05 	mov.w	lr, #5
 8005d4c:	290f      	cmp	r1, #15
 8005d4e:	6060      	str	r0, [r4, #4]
 8005d50:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005d54:	f200 813a 	bhi.w	8005fcc <_malloc_r+0x510>
 8005d58:	4a29      	ldr	r2, [pc, #164]	; (8005e00 <_malloc_r+0x344>)
 8005d5a:	482a      	ldr	r0, [pc, #168]	; (8005e04 <_malloc_r+0x348>)
 8005d5c:	6811      	ldr	r1, [r2, #0]
 8005d5e:	68bc      	ldr	r4, [r7, #8]
 8005d60:	428b      	cmp	r3, r1
 8005d62:	6801      	ldr	r1, [r0, #0]
 8005d64:	bf88      	it	hi
 8005d66:	6013      	strhi	r3, [r2, #0]
 8005d68:	6862      	ldr	r2, [r4, #4]
 8005d6a:	428b      	cmp	r3, r1
 8005d6c:	f022 0203 	bic.w	r2, r2, #3
 8005d70:	bf88      	it	hi
 8005d72:	6003      	strhi	r3, [r0, #0]
 8005d74:	e0a7      	b.n	8005ec6 <_malloc_r+0x40a>
 8005d76:	1962      	adds	r2, r4, r5
 8005d78:	f043 0301 	orr.w	r3, r3, #1
 8005d7c:	f045 0501 	orr.w	r5, r5, #1
 8005d80:	6065      	str	r5, [r4, #4]
 8005d82:	4630      	mov	r0, r6
 8005d84:	60ba      	str	r2, [r7, #8]
 8005d86:	6053      	str	r3, [r2, #4]
 8005d88:	f000 f9a6 	bl	80060d8 <__malloc_unlock>
 8005d8c:	3408      	adds	r4, #8
 8005d8e:	4620      	mov	r0, r4
 8005d90:	b003      	add	sp, #12
 8005d92:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d96:	4423      	add	r3, r4
 8005d98:	68e1      	ldr	r1, [r4, #12]
 8005d9a:	685a      	ldr	r2, [r3, #4]
 8005d9c:	68a5      	ldr	r5, [r4, #8]
 8005d9e:	f042 0201 	orr.w	r2, r2, #1
 8005da2:	60e9      	str	r1, [r5, #12]
 8005da4:	4630      	mov	r0, r6
 8005da6:	608d      	str	r5, [r1, #8]
 8005da8:	605a      	str	r2, [r3, #4]
 8005daa:	f000 f995 	bl	80060d8 <__malloc_unlock>
 8005dae:	3408      	adds	r4, #8
 8005db0:	4620      	mov	r0, r4
 8005db2:	b003      	add	sp, #12
 8005db4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005db8:	68dc      	ldr	r4, [r3, #12]
 8005dba:	42a3      	cmp	r3, r4
 8005dbc:	bf08      	it	eq
 8005dbe:	3002      	addeq	r0, #2
 8005dc0:	f43f aed6 	beq.w	8005b70 <_malloc_r+0xb4>
 8005dc4:	e692      	b.n	8005aec <_malloc_r+0x30>
 8005dc6:	2b14      	cmp	r3, #20
 8005dc8:	d971      	bls.n	8005eae <_malloc_r+0x3f2>
 8005dca:	2b54      	cmp	r3, #84	; 0x54
 8005dcc:	f200 80ad 	bhi.w	8005f2a <_malloc_r+0x46e>
 8005dd0:	0b2b      	lsrs	r3, r5, #12
 8005dd2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005dd6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005dda:	00c3      	lsls	r3, r0, #3
 8005ddc:	e6b3      	b.n	8005b46 <_malloc_r+0x8a>
 8005dde:	4423      	add	r3, r4
 8005de0:	4630      	mov	r0, r6
 8005de2:	685a      	ldr	r2, [r3, #4]
 8005de4:	f042 0201 	orr.w	r2, r2, #1
 8005de8:	605a      	str	r2, [r3, #4]
 8005dea:	3408      	adds	r4, #8
 8005dec:	f000 f974 	bl	80060d8 <__malloc_unlock>
 8005df0:	e68c      	b.n	8005b0c <_malloc_r+0x50>
 8005df2:	bf00      	nop
 8005df4:	2000044c 	.word	0x2000044c
 8005df8:	20000a9c 	.word	0x20000a9c
 8005dfc:	20000a6c 	.word	0x20000a6c
 8005e00:	20000a94 	.word	0x20000a94
 8005e04:	20000a98 	.word	0x20000a98
 8005e08:	20000454 	.word	0x20000454
 8005e0c:	20000854 	.word	0x20000854
 8005e10:	1961      	adds	r1, r4, r5
 8005e12:	f045 0e01 	orr.w	lr, r5, #1
 8005e16:	f042 0501 	orr.w	r5, r2, #1
 8005e1a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005e1e:	4630      	mov	r0, r6
 8005e20:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005e24:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005e28:	604d      	str	r5, [r1, #4]
 8005e2a:	50e2      	str	r2, [r4, r3]
 8005e2c:	f000 f954 	bl	80060d8 <__malloc_unlock>
 8005e30:	3408      	adds	r4, #8
 8005e32:	e66b      	b.n	8005b0c <_malloc_r+0x50>
 8005e34:	08e8      	lsrs	r0, r5, #3
 8005e36:	f105 0308 	add.w	r3, r5, #8
 8005e3a:	e64f      	b.n	8005adc <_malloc_r+0x20>
 8005e3c:	f108 0801 	add.w	r8, r8, #1
 8005e40:	f018 0f03 	tst.w	r8, #3
 8005e44:	f10e 0e08 	add.w	lr, lr, #8
 8005e48:	f47f aed0 	bne.w	8005bec <_malloc_r+0x130>
 8005e4c:	e052      	b.n	8005ef4 <_malloc_r+0x438>
 8005e4e:	4419      	add	r1, r3
 8005e50:	461c      	mov	r4, r3
 8005e52:	684a      	ldr	r2, [r1, #4]
 8005e54:	68db      	ldr	r3, [r3, #12]
 8005e56:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005e5a:	f042 0201 	orr.w	r2, r2, #1
 8005e5e:	604a      	str	r2, [r1, #4]
 8005e60:	4630      	mov	r0, r6
 8005e62:	60eb      	str	r3, [r5, #12]
 8005e64:	609d      	str	r5, [r3, #8]
 8005e66:	f000 f937 	bl	80060d8 <__malloc_unlock>
 8005e6a:	e64f      	b.n	8005b0c <_malloc_r+0x50>
 8005e6c:	0a5a      	lsrs	r2, r3, #9
 8005e6e:	2a04      	cmp	r2, #4
 8005e70:	d935      	bls.n	8005ede <_malloc_r+0x422>
 8005e72:	2a14      	cmp	r2, #20
 8005e74:	d86f      	bhi.n	8005f56 <_malloc_r+0x49a>
 8005e76:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005e7a:	00c9      	lsls	r1, r1, #3
 8005e7c:	325b      	adds	r2, #91	; 0x5b
 8005e7e:	eb07 0e01 	add.w	lr, r7, r1
 8005e82:	5879      	ldr	r1, [r7, r1]
 8005e84:	f1ae 0e08 	sub.w	lr, lr, #8
 8005e88:	458e      	cmp	lr, r1
 8005e8a:	d058      	beq.n	8005f3e <_malloc_r+0x482>
 8005e8c:	684a      	ldr	r2, [r1, #4]
 8005e8e:	f022 0203 	bic.w	r2, r2, #3
 8005e92:	429a      	cmp	r2, r3
 8005e94:	d902      	bls.n	8005e9c <_malloc_r+0x3e0>
 8005e96:	6889      	ldr	r1, [r1, #8]
 8005e98:	458e      	cmp	lr, r1
 8005e9a:	d1f7      	bne.n	8005e8c <_malloc_r+0x3d0>
 8005e9c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005ea0:	687b      	ldr	r3, [r7, #4]
 8005ea2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005ea6:	f8ce 4008 	str.w	r4, [lr, #8]
 8005eaa:	60cc      	str	r4, [r1, #12]
 8005eac:	e68c      	b.n	8005bc8 <_malloc_r+0x10c>
 8005eae:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005eb2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005eb6:	00c3      	lsls	r3, r0, #3
 8005eb8:	e645      	b.n	8005b46 <_malloc_r+0x8a>
 8005eba:	42bc      	cmp	r4, r7
 8005ebc:	d072      	beq.n	8005fa4 <_malloc_r+0x4e8>
 8005ebe:	68bc      	ldr	r4, [r7, #8]
 8005ec0:	6862      	ldr	r2, [r4, #4]
 8005ec2:	f022 0203 	bic.w	r2, r2, #3
 8005ec6:	4295      	cmp	r5, r2
 8005ec8:	eba2 0305 	sub.w	r3, r2, r5
 8005ecc:	d802      	bhi.n	8005ed4 <_malloc_r+0x418>
 8005ece:	2b0f      	cmp	r3, #15
 8005ed0:	f73f af51 	bgt.w	8005d76 <_malloc_r+0x2ba>
 8005ed4:	4630      	mov	r0, r6
 8005ed6:	f000 f8ff 	bl	80060d8 <__malloc_unlock>
 8005eda:	2400      	movs	r4, #0
 8005edc:	e616      	b.n	8005b0c <_malloc_r+0x50>
 8005ede:	099a      	lsrs	r2, r3, #6
 8005ee0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005ee4:	00c9      	lsls	r1, r1, #3
 8005ee6:	3238      	adds	r2, #56	; 0x38
 8005ee8:	e7c9      	b.n	8005e7e <_malloc_r+0x3c2>
 8005eea:	f8d9 9000 	ldr.w	r9, [r9]
 8005eee:	4599      	cmp	r9, r3
 8005ef0:	f040 8083 	bne.w	8005ffa <_malloc_r+0x53e>
 8005ef4:	f010 0f03 	tst.w	r0, #3
 8005ef8:	f1a9 0308 	sub.w	r3, r9, #8
 8005efc:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005f00:	d1f3      	bne.n	8005eea <_malloc_r+0x42e>
 8005f02:	687b      	ldr	r3, [r7, #4]
 8005f04:	ea23 0304 	bic.w	r3, r3, r4
 8005f08:	607b      	str	r3, [r7, #4]
 8005f0a:	0064      	lsls	r4, r4, #1
 8005f0c:	429c      	cmp	r4, r3
 8005f0e:	f63f aeac 	bhi.w	8005c6a <_malloc_r+0x1ae>
 8005f12:	b91c      	cbnz	r4, 8005f1c <_malloc_r+0x460>
 8005f14:	e6a9      	b.n	8005c6a <_malloc_r+0x1ae>
 8005f16:	0064      	lsls	r4, r4, #1
 8005f18:	f108 0804 	add.w	r8, r8, #4
 8005f1c:	421c      	tst	r4, r3
 8005f1e:	d0fa      	beq.n	8005f16 <_malloc_r+0x45a>
 8005f20:	4640      	mov	r0, r8
 8005f22:	e65f      	b.n	8005be4 <_malloc_r+0x128>
 8005f24:	f108 0810 	add.w	r8, r8, #16
 8005f28:	e6bc      	b.n	8005ca4 <_malloc_r+0x1e8>
 8005f2a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005f2e:	d826      	bhi.n	8005f7e <_malloc_r+0x4c2>
 8005f30:	0beb      	lsrs	r3, r5, #15
 8005f32:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005f36:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005f3a:	00c3      	lsls	r3, r0, #3
 8005f3c:	e603      	b.n	8005b46 <_malloc_r+0x8a>
 8005f3e:	687b      	ldr	r3, [r7, #4]
 8005f40:	1092      	asrs	r2, r2, #2
 8005f42:	f04f 0801 	mov.w	r8, #1
 8005f46:	fa08 f202 	lsl.w	r2, r8, r2
 8005f4a:	4313      	orrs	r3, r2
 8005f4c:	607b      	str	r3, [r7, #4]
 8005f4e:	e7a8      	b.n	8005ea2 <_malloc_r+0x3e6>
 8005f50:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005f54:	e6ce      	b.n	8005cf4 <_malloc_r+0x238>
 8005f56:	2a54      	cmp	r2, #84	; 0x54
 8005f58:	d829      	bhi.n	8005fae <_malloc_r+0x4f2>
 8005f5a:	0b1a      	lsrs	r2, r3, #12
 8005f5c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005f60:	00c9      	lsls	r1, r1, #3
 8005f62:	326e      	adds	r2, #110	; 0x6e
 8005f64:	e78b      	b.n	8005e7e <_malloc_r+0x3c2>
 8005f66:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005f6a:	2900      	cmp	r1, #0
 8005f6c:	f47f aeae 	bne.w	8005ccc <_malloc_r+0x210>
 8005f70:	eb09 0208 	add.w	r2, r9, r8
 8005f74:	68b9      	ldr	r1, [r7, #8]
 8005f76:	f042 0201 	orr.w	r2, r2, #1
 8005f7a:	604a      	str	r2, [r1, #4]
 8005f7c:	e6ec      	b.n	8005d58 <_malloc_r+0x29c>
 8005f7e:	f240 5254 	movw	r2, #1364	; 0x554
 8005f82:	4293      	cmp	r3, r2
 8005f84:	d81c      	bhi.n	8005fc0 <_malloc_r+0x504>
 8005f86:	0cab      	lsrs	r3, r5, #18
 8005f88:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005f8c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005f90:	00c3      	lsls	r3, r0, #3
 8005f92:	e5d8      	b.n	8005b46 <_malloc_r+0x8a>
 8005f94:	2301      	movs	r3, #1
 8005f96:	f8cb 3004 	str.w	r3, [fp, #4]
 8005f9a:	e79b      	b.n	8005ed4 <_malloc_r+0x418>
 8005f9c:	2101      	movs	r1, #1
 8005f9e:	f04f 0800 	mov.w	r8, #0
 8005fa2:	e6ba      	b.n	8005d1a <_malloc_r+0x25e>
 8005fa4:	4a16      	ldr	r2, [pc, #88]	; (8006000 <_malloc_r+0x544>)
 8005fa6:	6813      	ldr	r3, [r2, #0]
 8005fa8:	4443      	add	r3, r8
 8005faa:	6013      	str	r3, [r2, #0]
 8005fac:	e68e      	b.n	8005ccc <_malloc_r+0x210>
 8005fae:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005fb2:	d814      	bhi.n	8005fde <_malloc_r+0x522>
 8005fb4:	0bda      	lsrs	r2, r3, #15
 8005fb6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005fba:	00c9      	lsls	r1, r1, #3
 8005fbc:	3277      	adds	r2, #119	; 0x77
 8005fbe:	e75e      	b.n	8005e7e <_malloc_r+0x3c2>
 8005fc0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005fc4:	207f      	movs	r0, #127	; 0x7f
 8005fc6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005fca:	e5bc      	b.n	8005b46 <_malloc_r+0x8a>
 8005fcc:	f104 0108 	add.w	r1, r4, #8
 8005fd0:	4630      	mov	r0, r6
 8005fd2:	9201      	str	r2, [sp, #4]
 8005fd4:	f7ff fa48 	bl	8005468 <_free_r>
 8005fd8:	9a01      	ldr	r2, [sp, #4]
 8005fda:	6813      	ldr	r3, [r2, #0]
 8005fdc:	e6bc      	b.n	8005d58 <_malloc_r+0x29c>
 8005fde:	f240 5154 	movw	r1, #1364	; 0x554
 8005fe2:	428a      	cmp	r2, r1
 8005fe4:	d805      	bhi.n	8005ff2 <_malloc_r+0x536>
 8005fe6:	0c9a      	lsrs	r2, r3, #18
 8005fe8:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005fec:	00c9      	lsls	r1, r1, #3
 8005fee:	327c      	adds	r2, #124	; 0x7c
 8005ff0:	e745      	b.n	8005e7e <_malloc_r+0x3c2>
 8005ff2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005ff6:	227e      	movs	r2, #126	; 0x7e
 8005ff8:	e741      	b.n	8005e7e <_malloc_r+0x3c2>
 8005ffa:	687b      	ldr	r3, [r7, #4]
 8005ffc:	e785      	b.n	8005f0a <_malloc_r+0x44e>
 8005ffe:	bf00      	nop
 8006000:	20000a6c 	.word	0x20000a6c

08006004 <memmove>:
 8006004:	4288      	cmp	r0, r1
 8006006:	b4f0      	push	{r4, r5, r6, r7}
 8006008:	d90d      	bls.n	8006026 <memmove+0x22>
 800600a:	188b      	adds	r3, r1, r2
 800600c:	4283      	cmp	r3, r0
 800600e:	d90a      	bls.n	8006026 <memmove+0x22>
 8006010:	1884      	adds	r4, r0, r2
 8006012:	b132      	cbz	r2, 8006022 <memmove+0x1e>
 8006014:	4622      	mov	r2, r4
 8006016:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800601a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800601e:	4299      	cmp	r1, r3
 8006020:	d1f9      	bne.n	8006016 <memmove+0x12>
 8006022:	bcf0      	pop	{r4, r5, r6, r7}
 8006024:	4770      	bx	lr
 8006026:	2a0f      	cmp	r2, #15
 8006028:	d949      	bls.n	80060be <memmove+0xba>
 800602a:	ea40 0301 	orr.w	r3, r0, r1
 800602e:	079b      	lsls	r3, r3, #30
 8006030:	d147      	bne.n	80060c2 <memmove+0xbe>
 8006032:	f1a2 0310 	sub.w	r3, r2, #16
 8006036:	091b      	lsrs	r3, r3, #4
 8006038:	f101 0720 	add.w	r7, r1, #32
 800603c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006040:	f101 0410 	add.w	r4, r1, #16
 8006044:	f100 0510 	add.w	r5, r0, #16
 8006048:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800604c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006050:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006054:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006058:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800605c:	f845 6c08 	str.w	r6, [r5, #-8]
 8006060:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006064:	f845 6c04 	str.w	r6, [r5, #-4]
 8006068:	3410      	adds	r4, #16
 800606a:	42bc      	cmp	r4, r7
 800606c:	f105 0510 	add.w	r5, r5, #16
 8006070:	d1ea      	bne.n	8006048 <memmove+0x44>
 8006072:	3301      	adds	r3, #1
 8006074:	f002 050f 	and.w	r5, r2, #15
 8006078:	011b      	lsls	r3, r3, #4
 800607a:	2d03      	cmp	r5, #3
 800607c:	4419      	add	r1, r3
 800607e:	4403      	add	r3, r0
 8006080:	d921      	bls.n	80060c6 <memmove+0xc2>
 8006082:	1f1f      	subs	r7, r3, #4
 8006084:	460e      	mov	r6, r1
 8006086:	462c      	mov	r4, r5
 8006088:	3c04      	subs	r4, #4
 800608a:	f856 cb04 	ldr.w	ip, [r6], #4
 800608e:	f847 cf04 	str.w	ip, [r7, #4]!
 8006092:	2c03      	cmp	r4, #3
 8006094:	d8f8      	bhi.n	8006088 <memmove+0x84>
 8006096:	1f2c      	subs	r4, r5, #4
 8006098:	f024 0403 	bic.w	r4, r4, #3
 800609c:	3404      	adds	r4, #4
 800609e:	4423      	add	r3, r4
 80060a0:	4421      	add	r1, r4
 80060a2:	f002 0203 	and.w	r2, r2, #3
 80060a6:	2a00      	cmp	r2, #0
 80060a8:	d0bb      	beq.n	8006022 <memmove+0x1e>
 80060aa:	3b01      	subs	r3, #1
 80060ac:	440a      	add	r2, r1
 80060ae:	f811 4b01 	ldrb.w	r4, [r1], #1
 80060b2:	f803 4f01 	strb.w	r4, [r3, #1]!
 80060b6:	4291      	cmp	r1, r2
 80060b8:	d1f9      	bne.n	80060ae <memmove+0xaa>
 80060ba:	bcf0      	pop	{r4, r5, r6, r7}
 80060bc:	4770      	bx	lr
 80060be:	4603      	mov	r3, r0
 80060c0:	e7f1      	b.n	80060a6 <memmove+0xa2>
 80060c2:	4603      	mov	r3, r0
 80060c4:	e7f1      	b.n	80060aa <memmove+0xa6>
 80060c6:	462a      	mov	r2, r5
 80060c8:	e7ed      	b.n	80060a6 <memmove+0xa2>
 80060ca:	bf00      	nop

080060cc <__malloc_lock>:
 80060cc:	4801      	ldr	r0, [pc, #4]	; (80060d4 <__malloc_lock+0x8>)
 80060ce:	f7ff bc79 	b.w	80059c4 <__retarget_lock_acquire_recursive>
 80060d2:	bf00      	nop
 80060d4:	20000bf8 	.word	0x20000bf8

080060d8 <__malloc_unlock>:
 80060d8:	4801      	ldr	r0, [pc, #4]	; (80060e0 <__malloc_unlock+0x8>)
 80060da:	f7ff bc75 	b.w	80059c8 <__retarget_lock_release_recursive>
 80060de:	bf00      	nop
 80060e0:	20000bf8 	.word	0x20000bf8

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
 8006106:	f000 fe1d 	bl	8006d44 <_calloc_r>
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
 8006122:	f000 fe0f 	bl	8006d44 <_calloc_r>
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
 8006460:	08007550 	.word	0x08007550

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
 800670e:	f7ff fcdd 	bl	80060cc <__malloc_lock>
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
 8006756:	f7ff f9b1 	bl	8005abc <_malloc_r>
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
 8006794:	f7fe fe68 	bl	8005468 <_free_r>
 8006798:	4640      	mov	r0, r8
 800679a:	f7ff fc9d 	bl	80060d8 <__malloc_unlock>
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
 800683a:	f7ff fc4d 	bl	80060d8 <__malloc_unlock>
 800683e:	46aa      	mov	sl, r5
 8006840:	4650      	mov	r0, sl
 8006842:	b003      	add	sp, #12
 8006844:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006848:	4611      	mov	r1, r2
 800684a:	b003      	add	sp, #12
 800684c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006850:	f7ff b934 	b.w	8005abc <_malloc_r>
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
 800688a:	f7fe fded 	bl	8005468 <_free_r>
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
 800691c:	f7ff fbdc 	bl	80060d8 <__malloc_unlock>
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
 8006980:	f7ff fb40 	bl	8006004 <memmove>
 8006984:	4655      	mov	r5, sl
 8006986:	e749      	b.n	800681c <_realloc_r+0x124>
 8006988:	4629      	mov	r1, r5
 800698a:	f7ff fb3b 	bl	8006004 <memmove>
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
 80069ae:	f7ff fb93 	bl	80060d8 <__malloc_unlock>
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
 8006a1a:	f7ff faf3 	bl	8006004 <memmove>
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
 8006a50:	2000044c 	.word	0x2000044c

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

08006abc <_sbrk_r>:
 8006abc:	b538      	push	{r3, r4, r5, lr}
 8006abe:	4c07      	ldr	r4, [pc, #28]	; (8006adc <_sbrk_r+0x20>)
 8006ac0:	2300      	movs	r3, #0
 8006ac2:	4605      	mov	r5, r0
 8006ac4:	4608      	mov	r0, r1
 8006ac6:	6023      	str	r3, [r4, #0]
 8006ac8:	f7fb fc33 	bl	8002332 <_sbrk>
 8006acc:	1c43      	adds	r3, r0, #1
 8006ace:	d000      	beq.n	8006ad2 <_sbrk_r+0x16>
 8006ad0:	bd38      	pop	{r3, r4, r5, pc}
 8006ad2:	6823      	ldr	r3, [r4, #0]
 8006ad4:	2b00      	cmp	r3, #0
 8006ad6:	d0fb      	beq.n	8006ad0 <_sbrk_r+0x14>
 8006ad8:	602b      	str	r3, [r5, #0]
 8006ada:	bd38      	pop	{r3, r4, r5, pc}
 8006adc:	20000c0c 	.word	0x20000c0c

08006ae0 <__sread>:
 8006ae0:	b510      	push	{r4, lr}
 8006ae2:	460c      	mov	r4, r1
 8006ae4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ae8:	f000 fabc 	bl	8007064 <_read_r>
 8006aec:	2800      	cmp	r0, #0
 8006aee:	db03      	blt.n	8006af8 <__sread+0x18>
 8006af0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006af2:	4403      	add	r3, r0
 8006af4:	6523      	str	r3, [r4, #80]	; 0x50
 8006af6:	bd10      	pop	{r4, pc}
 8006af8:	89a3      	ldrh	r3, [r4, #12]
 8006afa:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006afe:	81a3      	strh	r3, [r4, #12]
 8006b00:	bd10      	pop	{r4, pc}
 8006b02:	bf00      	nop

08006b04 <__swrite>:
 8006b04:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006b08:	4616      	mov	r6, r2
 8006b0a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006b0e:	461f      	mov	r7, r3
 8006b10:	05d3      	lsls	r3, r2, #23
 8006b12:	460c      	mov	r4, r1
 8006b14:	4605      	mov	r5, r0
 8006b16:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b1a:	d507      	bpl.n	8006b2c <__swrite+0x28>
 8006b1c:	2200      	movs	r2, #0
 8006b1e:	2302      	movs	r3, #2
 8006b20:	f000 fa74 	bl	800700c <_lseek_r>
 8006b24:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006b28:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006b2c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006b30:	81a2      	strh	r2, [r4, #12]
 8006b32:	463b      	mov	r3, r7
 8006b34:	4632      	mov	r2, r6
 8006b36:	4628      	mov	r0, r5
 8006b38:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006b3c:	f000 b88c 	b.w	8006c58 <_write_r>

08006b40 <__sseek>:
 8006b40:	b510      	push	{r4, lr}
 8006b42:	460c      	mov	r4, r1
 8006b44:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b48:	f000 fa60 	bl	800700c <_lseek_r>
 8006b4c:	89a3      	ldrh	r3, [r4, #12]
 8006b4e:	1c42      	adds	r2, r0, #1
 8006b50:	bf0e      	itee	eq
 8006b52:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006b56:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006b5a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006b5c:	81a3      	strh	r3, [r4, #12]
 8006b5e:	bd10      	pop	{r4, pc}

08006b60 <__sclose>:
 8006b60:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b64:	f000 b922 	b.w	8006dac <_close_r>

08006b68 <strncpy>:
 8006b68:	ea40 0301 	orr.w	r3, r0, r1
 8006b6c:	079b      	lsls	r3, r3, #30
 8006b6e:	b470      	push	{r4, r5, r6}
 8006b70:	d12a      	bne.n	8006bc8 <strncpy+0x60>
 8006b72:	2a03      	cmp	r2, #3
 8006b74:	d928      	bls.n	8006bc8 <strncpy+0x60>
 8006b76:	460c      	mov	r4, r1
 8006b78:	4603      	mov	r3, r0
 8006b7a:	4621      	mov	r1, r4
 8006b7c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006b80:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006b84:	ea25 0506 	bic.w	r5, r5, r6
 8006b88:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006b8c:	d106      	bne.n	8006b9c <strncpy+0x34>
 8006b8e:	3a04      	subs	r2, #4
 8006b90:	2a03      	cmp	r2, #3
 8006b92:	f843 6b04 	str.w	r6, [r3], #4
 8006b96:	4621      	mov	r1, r4
 8006b98:	d8ef      	bhi.n	8006b7a <strncpy+0x12>
 8006b9a:	b19a      	cbz	r2, 8006bc4 <strncpy+0x5c>
 8006b9c:	780c      	ldrb	r4, [r1, #0]
 8006b9e:	701c      	strb	r4, [r3, #0]
 8006ba0:	3a01      	subs	r2, #1
 8006ba2:	3301      	adds	r3, #1
 8006ba4:	b13c      	cbz	r4, 8006bb6 <strncpy+0x4e>
 8006ba6:	b16a      	cbz	r2, 8006bc4 <strncpy+0x5c>
 8006ba8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006bac:	f803 4b01 	strb.w	r4, [r3], #1
 8006bb0:	3a01      	subs	r2, #1
 8006bb2:	2c00      	cmp	r4, #0
 8006bb4:	d1f7      	bne.n	8006ba6 <strncpy+0x3e>
 8006bb6:	b12a      	cbz	r2, 8006bc4 <strncpy+0x5c>
 8006bb8:	441a      	add	r2, r3
 8006bba:	2100      	movs	r1, #0
 8006bbc:	f803 1b01 	strb.w	r1, [r3], #1
 8006bc0:	4293      	cmp	r3, r2
 8006bc2:	d1fb      	bne.n	8006bbc <strncpy+0x54>
 8006bc4:	bc70      	pop	{r4, r5, r6}
 8006bc6:	4770      	bx	lr
 8006bc8:	4603      	mov	r3, r0
 8006bca:	e7e6      	b.n	8006b9a <strncpy+0x32>

08006bcc <__sprint_r.part.0>:
 8006bcc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006bd0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006bd2:	049c      	lsls	r4, r3, #18
 8006bd4:	4692      	mov	sl, r2
 8006bd6:	d52d      	bpl.n	8006c34 <__sprint_r.part.0+0x68>
 8006bd8:	6893      	ldr	r3, [r2, #8]
 8006bda:	6812      	ldr	r2, [r2, #0]
 8006bdc:	b343      	cbz	r3, 8006c30 <__sprint_r.part.0+0x64>
 8006bde:	460e      	mov	r6, r1
 8006be0:	4607      	mov	r7, r0
 8006be2:	f102 0908 	add.w	r9, r2, #8
 8006be6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006bea:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006bee:	d015      	beq.n	8006c1c <__sprint_r.part.0+0x50>
 8006bf0:	3d04      	subs	r5, #4
 8006bf2:	2400      	movs	r4, #0
 8006bf4:	e001      	b.n	8006bfa <__sprint_r.part.0+0x2e>
 8006bf6:	45a0      	cmp	r8, r4
 8006bf8:	d00e      	beq.n	8006c18 <__sprint_r.part.0+0x4c>
 8006bfa:	4632      	mov	r2, r6
 8006bfc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006c00:	4638      	mov	r0, r7
 8006c02:	f000 f99d 	bl	8006f40 <_fputwc_r>
 8006c06:	1c43      	adds	r3, r0, #1
 8006c08:	f104 0401 	add.w	r4, r4, #1
 8006c0c:	d1f3      	bne.n	8006bf6 <__sprint_r.part.0+0x2a>
 8006c0e:	2300      	movs	r3, #0
 8006c10:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006c14:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c18:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006c1c:	f02b 0b03 	bic.w	fp, fp, #3
 8006c20:	eba3 030b 	sub.w	r3, r3, fp
 8006c24:	f8ca 3008 	str.w	r3, [sl, #8]
 8006c28:	f109 0908 	add.w	r9, r9, #8
 8006c2c:	2b00      	cmp	r3, #0
 8006c2e:	d1da      	bne.n	8006be6 <__sprint_r.part.0+0x1a>
 8006c30:	2000      	movs	r0, #0
 8006c32:	e7ec      	b.n	8006c0e <__sprint_r.part.0+0x42>
 8006c34:	f7fe fd0c 	bl	8005650 <__sfvwrite_r>
 8006c38:	2300      	movs	r3, #0
 8006c3a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006c3e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c42:	bf00      	nop

08006c44 <__sprint_r>:
 8006c44:	6893      	ldr	r3, [r2, #8]
 8006c46:	b10b      	cbz	r3, 8006c4c <__sprint_r+0x8>
 8006c48:	f7ff bfc0 	b.w	8006bcc <__sprint_r.part.0>
 8006c4c:	b410      	push	{r4}
 8006c4e:	4618      	mov	r0, r3
 8006c50:	6053      	str	r3, [r2, #4]
 8006c52:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006c56:	4770      	bx	lr

08006c58 <_write_r>:
 8006c58:	b570      	push	{r4, r5, r6, lr}
 8006c5a:	460d      	mov	r5, r1
 8006c5c:	4c08      	ldr	r4, [pc, #32]	; (8006c80 <_write_r+0x28>)
 8006c5e:	4611      	mov	r1, r2
 8006c60:	4606      	mov	r6, r0
 8006c62:	461a      	mov	r2, r3
 8006c64:	4628      	mov	r0, r5
 8006c66:	2300      	movs	r3, #0
 8006c68:	6023      	str	r3, [r4, #0]
 8006c6a:	f7fb fb4f 	bl	800230c <_write>
 8006c6e:	1c43      	adds	r3, r0, #1
 8006c70:	d000      	beq.n	8006c74 <_write_r+0x1c>
 8006c72:	bd70      	pop	{r4, r5, r6, pc}
 8006c74:	6823      	ldr	r3, [r4, #0]
 8006c76:	2b00      	cmp	r3, #0
 8006c78:	d0fb      	beq.n	8006c72 <_write_r+0x1a>
 8006c7a:	6033      	str	r3, [r6, #0]
 8006c7c:	bd70      	pop	{r4, r5, r6, pc}
 8006c7e:	bf00      	nop
 8006c80:	20000c0c 	.word	0x20000c0c

08006c84 <__register_exitproc>:
 8006c84:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006c88:	4d2b      	ldr	r5, [pc, #172]	; (8006d38 <__register_exitproc+0xb4>)
 8006c8a:	4606      	mov	r6, r0
 8006c8c:	6828      	ldr	r0, [r5, #0]
 8006c8e:	4698      	mov	r8, r3
 8006c90:	460f      	mov	r7, r1
 8006c92:	4691      	mov	r9, r2
 8006c94:	f7fe fe96 	bl	80059c4 <__retarget_lock_acquire_recursive>
 8006c98:	4b28      	ldr	r3, [pc, #160]	; (8006d3c <__register_exitproc+0xb8>)
 8006c9a:	681c      	ldr	r4, [r3, #0]
 8006c9c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006ca0:	2b00      	cmp	r3, #0
 8006ca2:	d03d      	beq.n	8006d20 <__register_exitproc+0x9c>
 8006ca4:	685a      	ldr	r2, [r3, #4]
 8006ca6:	2a1f      	cmp	r2, #31
 8006ca8:	dc0d      	bgt.n	8006cc6 <__register_exitproc+0x42>
 8006caa:	f102 0c01 	add.w	ip, r2, #1
 8006cae:	bb16      	cbnz	r6, 8006cf6 <__register_exitproc+0x72>
 8006cb0:	3202      	adds	r2, #2
 8006cb2:	f8c3 c004 	str.w	ip, [r3, #4]
 8006cb6:	6828      	ldr	r0, [r5, #0]
 8006cb8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006cbc:	f7fe fe84 	bl	80059c8 <__retarget_lock_release_recursive>
 8006cc0:	2000      	movs	r0, #0
 8006cc2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006cc6:	4b1e      	ldr	r3, [pc, #120]	; (8006d40 <__register_exitproc+0xbc>)
 8006cc8:	b37b      	cbz	r3, 8006d2a <__register_exitproc+0xa6>
 8006cca:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006cce:	f3af 8000 	nop.w
 8006cd2:	4603      	mov	r3, r0
 8006cd4:	b348      	cbz	r0, 8006d2a <__register_exitproc+0xa6>
 8006cd6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006cda:	2100      	movs	r1, #0
 8006cdc:	e9c0 2100 	strd	r2, r1, [r0]
 8006ce0:	f04f 0c01 	mov.w	ip, #1
 8006ce4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006ce8:	460a      	mov	r2, r1
 8006cea:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006cee:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006cf2:	2e00      	cmp	r6, #0
 8006cf4:	d0dc      	beq.n	8006cb0 <__register_exitproc+0x2c>
 8006cf6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006cfa:	2401      	movs	r4, #1
 8006cfc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006d00:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006d04:	4094      	lsls	r4, r2
 8006d06:	4320      	orrs	r0, r4
 8006d08:	2e02      	cmp	r6, #2
 8006d0a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006d0e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006d12:	d1cd      	bne.n	8006cb0 <__register_exitproc+0x2c>
 8006d14:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006d18:	430c      	orrs	r4, r1
 8006d1a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006d1e:	e7c7      	b.n	8006cb0 <__register_exitproc+0x2c>
 8006d20:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006d24:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006d28:	e7bc      	b.n	8006ca4 <__register_exitproc+0x20>
 8006d2a:	6828      	ldr	r0, [r5, #0]
 8006d2c:	f7fe fe4c 	bl	80059c8 <__retarget_lock_release_recursive>
 8006d30:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006d34:	e7c5      	b.n	8006cc2 <__register_exitproc+0x3e>
 8006d36:	bf00      	nop
 8006d38:	20000448 	.word	0x20000448
 8006d3c:	080073e0 	.word	0x080073e0
 8006d40:	00000000 	.word	0x00000000

08006d44 <_calloc_r>:
 8006d44:	b510      	push	{r4, lr}
 8006d46:	fb02 f101 	mul.w	r1, r2, r1
 8006d4a:	f7fe feb7 	bl	8005abc <_malloc_r>
 8006d4e:	4604      	mov	r4, r0
 8006d50:	b1d8      	cbz	r0, 8006d8a <_calloc_r+0x46>
 8006d52:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006d56:	f022 0203 	bic.w	r2, r2, #3
 8006d5a:	3a04      	subs	r2, #4
 8006d5c:	2a24      	cmp	r2, #36	; 0x24
 8006d5e:	d81d      	bhi.n	8006d9c <_calloc_r+0x58>
 8006d60:	2a13      	cmp	r2, #19
 8006d62:	d914      	bls.n	8006d8e <_calloc_r+0x4a>
 8006d64:	2300      	movs	r3, #0
 8006d66:	2a1b      	cmp	r2, #27
 8006d68:	e9c0 3300 	strd	r3, r3, [r0]
 8006d6c:	d91b      	bls.n	8006da6 <_calloc_r+0x62>
 8006d6e:	2a24      	cmp	r2, #36	; 0x24
 8006d70:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006d74:	bf0a      	itet	eq
 8006d76:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006d7a:	f100 0210 	addne.w	r2, r0, #16
 8006d7e:	f100 0218 	addeq.w	r2, r0, #24
 8006d82:	2300      	movs	r3, #0
 8006d84:	e9c2 3300 	strd	r3, r3, [r2]
 8006d88:	6093      	str	r3, [r2, #8]
 8006d8a:	4620      	mov	r0, r4
 8006d8c:	bd10      	pop	{r4, pc}
 8006d8e:	4602      	mov	r2, r0
 8006d90:	2300      	movs	r3, #0
 8006d92:	e9c2 3300 	strd	r3, r3, [r2]
 8006d96:	6093      	str	r3, [r2, #8]
 8006d98:	4620      	mov	r0, r4
 8006d9a:	bd10      	pop	{r4, pc}
 8006d9c:	2100      	movs	r1, #0
 8006d9e:	f7fb fb6d 	bl	800247c <memset>
 8006da2:	4620      	mov	r0, r4
 8006da4:	bd10      	pop	{r4, pc}
 8006da6:	f100 0208 	add.w	r2, r0, #8
 8006daa:	e7f1      	b.n	8006d90 <_calloc_r+0x4c>

08006dac <_close_r>:
 8006dac:	b538      	push	{r3, r4, r5, lr}
 8006dae:	4c07      	ldr	r4, [pc, #28]	; (8006dcc <_close_r+0x20>)
 8006db0:	2300      	movs	r3, #0
 8006db2:	4605      	mov	r5, r0
 8006db4:	4608      	mov	r0, r1
 8006db6:	6023      	str	r3, [r4, #0]
 8006db8:	f7fb fad7 	bl	800236a <_close>
 8006dbc:	1c43      	adds	r3, r0, #1
 8006dbe:	d000      	beq.n	8006dc2 <_close_r+0x16>
 8006dc0:	bd38      	pop	{r3, r4, r5, pc}
 8006dc2:	6823      	ldr	r3, [r4, #0]
 8006dc4:	2b00      	cmp	r3, #0
 8006dc6:	d0fb      	beq.n	8006dc0 <_close_r+0x14>
 8006dc8:	602b      	str	r3, [r5, #0]
 8006dca:	bd38      	pop	{r3, r4, r5, pc}
 8006dcc:	20000c0c 	.word	0x20000c0c

08006dd0 <_fclose_r>:
 8006dd0:	b570      	push	{r4, r5, r6, lr}
 8006dd2:	2900      	cmp	r1, #0
 8006dd4:	d048      	beq.n	8006e68 <_fclose_r+0x98>
 8006dd6:	4605      	mov	r5, r0
 8006dd8:	460c      	mov	r4, r1
 8006dda:	b110      	cbz	r0, 8006de2 <_fclose_r+0x12>
 8006ddc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006dde:	2b00      	cmp	r3, #0
 8006de0:	d048      	beq.n	8006e74 <_fclose_r+0xa4>
 8006de2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006de4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006de8:	07d0      	lsls	r0, r2, #31
 8006dea:	d440      	bmi.n	8006e6e <_fclose_r+0x9e>
 8006dec:	0599      	lsls	r1, r3, #22
 8006dee:	d530      	bpl.n	8006e52 <_fclose_r+0x82>
 8006df0:	4621      	mov	r1, r4
 8006df2:	4628      	mov	r0, r5
 8006df4:	f7fe f990 	bl	8005118 <__sflush_r>
 8006df8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006dfa:	4606      	mov	r6, r0
 8006dfc:	b133      	cbz	r3, 8006e0c <_fclose_r+0x3c>
 8006dfe:	69e1      	ldr	r1, [r4, #28]
 8006e00:	4628      	mov	r0, r5
 8006e02:	4798      	blx	r3
 8006e04:	2800      	cmp	r0, #0
 8006e06:	bfb8      	it	lt
 8006e08:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006e0c:	89a3      	ldrh	r3, [r4, #12]
 8006e0e:	061a      	lsls	r2, r3, #24
 8006e10:	d43c      	bmi.n	8006e8c <_fclose_r+0xbc>
 8006e12:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006e14:	b141      	cbz	r1, 8006e28 <_fclose_r+0x58>
 8006e16:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006e1a:	4299      	cmp	r1, r3
 8006e1c:	d002      	beq.n	8006e24 <_fclose_r+0x54>
 8006e1e:	4628      	mov	r0, r5
 8006e20:	f7fe fb22 	bl	8005468 <_free_r>
 8006e24:	2300      	movs	r3, #0
 8006e26:	6323      	str	r3, [r4, #48]	; 0x30
 8006e28:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006e2a:	b121      	cbz	r1, 8006e36 <_fclose_r+0x66>
 8006e2c:	4628      	mov	r0, r5
 8006e2e:	f7fe fb1b 	bl	8005468 <_free_r>
 8006e32:	2300      	movs	r3, #0
 8006e34:	6463      	str	r3, [r4, #68]	; 0x44
 8006e36:	f7fe faa1 	bl	800537c <__sfp_lock_acquire>
 8006e3a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006e3c:	2200      	movs	r2, #0
 8006e3e:	07db      	lsls	r3, r3, #31
 8006e40:	81a2      	strh	r2, [r4, #12]
 8006e42:	d51f      	bpl.n	8006e84 <_fclose_r+0xb4>
 8006e44:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e46:	f7fe fdbb 	bl	80059c0 <__retarget_lock_close_recursive>
 8006e4a:	f7fe fa9d 	bl	8005388 <__sfp_lock_release>
 8006e4e:	4630      	mov	r0, r6
 8006e50:	bd70      	pop	{r4, r5, r6, pc}
 8006e52:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e54:	f7fe fdb6 	bl	80059c4 <__retarget_lock_acquire_recursive>
 8006e58:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e5c:	2b00      	cmp	r3, #0
 8006e5e:	d1c7      	bne.n	8006df0 <_fclose_r+0x20>
 8006e60:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006e62:	f016 0601 	ands.w	r6, r6, #1
 8006e66:	d016      	beq.n	8006e96 <_fclose_r+0xc6>
 8006e68:	2600      	movs	r6, #0
 8006e6a:	4630      	mov	r0, r6
 8006e6c:	bd70      	pop	{r4, r5, r6, pc}
 8006e6e:	2b00      	cmp	r3, #0
 8006e70:	d0fa      	beq.n	8006e68 <_fclose_r+0x98>
 8006e72:	e7bd      	b.n	8006df0 <_fclose_r+0x20>
 8006e74:	f7fe fa56 	bl	8005324 <__sinit>
 8006e78:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006e7a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e7e:	07d0      	lsls	r0, r2, #31
 8006e80:	d4f5      	bmi.n	8006e6e <_fclose_r+0x9e>
 8006e82:	e7b3      	b.n	8006dec <_fclose_r+0x1c>
 8006e84:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e86:	f7fe fd9f 	bl	80059c8 <__retarget_lock_release_recursive>
 8006e8a:	e7db      	b.n	8006e44 <_fclose_r+0x74>
 8006e8c:	6921      	ldr	r1, [r4, #16]
 8006e8e:	4628      	mov	r0, r5
 8006e90:	f7fe faea 	bl	8005468 <_free_r>
 8006e94:	e7bd      	b.n	8006e12 <_fclose_r+0x42>
 8006e96:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e98:	f7fe fd96 	bl	80059c8 <__retarget_lock_release_recursive>
 8006e9c:	4630      	mov	r0, r6
 8006e9e:	bd70      	pop	{r4, r5, r6, pc}

08006ea0 <__fputwc>:
 8006ea0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006ea4:	b082      	sub	sp, #8
 8006ea6:	4681      	mov	r9, r0
 8006ea8:	4688      	mov	r8, r1
 8006eaa:	4614      	mov	r4, r2
 8006eac:	f000 f8a0 	bl	8006ff0 <__locale_mb_cur_max>
 8006eb0:	2801      	cmp	r0, #1
 8006eb2:	d103      	bne.n	8006ebc <__fputwc+0x1c>
 8006eb4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006eb8:	2bfe      	cmp	r3, #254	; 0xfe
 8006eba:	d933      	bls.n	8006f24 <__fputwc+0x84>
 8006ebc:	4642      	mov	r2, r8
 8006ebe:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006ec2:	a901      	add	r1, sp, #4
 8006ec4:	4648      	mov	r0, r9
 8006ec6:	f000 f93b 	bl	8007140 <_wcrtomb_r>
 8006eca:	1c42      	adds	r2, r0, #1
 8006ecc:	4606      	mov	r6, r0
 8006ece:	d02f      	beq.n	8006f30 <__fputwc+0x90>
 8006ed0:	b320      	cbz	r0, 8006f1c <__fputwc+0x7c>
 8006ed2:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006ed6:	2500      	movs	r5, #0
 8006ed8:	f10d 0a04 	add.w	sl, sp, #4
 8006edc:	e009      	b.n	8006ef2 <__fputwc+0x52>
 8006ede:	6823      	ldr	r3, [r4, #0]
 8006ee0:	1c5a      	adds	r2, r3, #1
 8006ee2:	6022      	str	r2, [r4, #0]
 8006ee4:	f883 c000 	strb.w	ip, [r3]
 8006ee8:	3501      	adds	r5, #1
 8006eea:	42b5      	cmp	r5, r6
 8006eec:	d216      	bcs.n	8006f1c <__fputwc+0x7c>
 8006eee:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006ef2:	68a3      	ldr	r3, [r4, #8]
 8006ef4:	3b01      	subs	r3, #1
 8006ef6:	2b00      	cmp	r3, #0
 8006ef8:	60a3      	str	r3, [r4, #8]
 8006efa:	daf0      	bge.n	8006ede <__fputwc+0x3e>
 8006efc:	69a7      	ldr	r7, [r4, #24]
 8006efe:	42bb      	cmp	r3, r7
 8006f00:	4661      	mov	r1, ip
 8006f02:	4622      	mov	r2, r4
 8006f04:	4648      	mov	r0, r9
 8006f06:	db02      	blt.n	8006f0e <__fputwc+0x6e>
 8006f08:	f1bc 0f0a 	cmp.w	ip, #10
 8006f0c:	d1e7      	bne.n	8006ede <__fputwc+0x3e>
 8006f0e:	f000 f8bf 	bl	8007090 <__swbuf_r>
 8006f12:	1c43      	adds	r3, r0, #1
 8006f14:	d1e8      	bne.n	8006ee8 <__fputwc+0x48>
 8006f16:	b002      	add	sp, #8
 8006f18:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f1c:	4640      	mov	r0, r8
 8006f1e:	b002      	add	sp, #8
 8006f20:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f24:	fa5f fc88 	uxtb.w	ip, r8
 8006f28:	4606      	mov	r6, r0
 8006f2a:	f88d c004 	strb.w	ip, [sp, #4]
 8006f2e:	e7d2      	b.n	8006ed6 <__fputwc+0x36>
 8006f30:	89a3      	ldrh	r3, [r4, #12]
 8006f32:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006f36:	81a3      	strh	r3, [r4, #12]
 8006f38:	b002      	add	sp, #8
 8006f3a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f3e:	bf00      	nop

08006f40 <_fputwc_r>:
 8006f40:	b530      	push	{r4, r5, lr}
 8006f42:	4605      	mov	r5, r0
 8006f44:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006f46:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006f4a:	07c0      	lsls	r0, r0, #31
 8006f4c:	4614      	mov	r4, r2
 8006f4e:	b083      	sub	sp, #12
 8006f50:	b29a      	uxth	r2, r3
 8006f52:	d401      	bmi.n	8006f58 <_fputwc_r+0x18>
 8006f54:	0590      	lsls	r0, r2, #22
 8006f56:	d51c      	bpl.n	8006f92 <_fputwc_r+0x52>
 8006f58:	0490      	lsls	r0, r2, #18
 8006f5a:	d406      	bmi.n	8006f6a <_fputwc_r+0x2a>
 8006f5c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f5e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006f62:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006f66:	81a3      	strh	r3, [r4, #12]
 8006f68:	6662      	str	r2, [r4, #100]	; 0x64
 8006f6a:	4628      	mov	r0, r5
 8006f6c:	4622      	mov	r2, r4
 8006f6e:	f7ff ff97 	bl	8006ea0 <__fputwc>
 8006f72:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006f74:	07da      	lsls	r2, r3, #31
 8006f76:	4605      	mov	r5, r0
 8006f78:	d402      	bmi.n	8006f80 <_fputwc_r+0x40>
 8006f7a:	89a3      	ldrh	r3, [r4, #12]
 8006f7c:	059b      	lsls	r3, r3, #22
 8006f7e:	d502      	bpl.n	8006f86 <_fputwc_r+0x46>
 8006f80:	4628      	mov	r0, r5
 8006f82:	b003      	add	sp, #12
 8006f84:	bd30      	pop	{r4, r5, pc}
 8006f86:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f88:	f7fe fd1e 	bl	80059c8 <__retarget_lock_release_recursive>
 8006f8c:	4628      	mov	r0, r5
 8006f8e:	b003      	add	sp, #12
 8006f90:	bd30      	pop	{r4, r5, pc}
 8006f92:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f94:	9101      	str	r1, [sp, #4]
 8006f96:	f7fe fd15 	bl	80059c4 <__retarget_lock_acquire_recursive>
 8006f9a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f9e:	9901      	ldr	r1, [sp, #4]
 8006fa0:	b29a      	uxth	r2, r3
 8006fa2:	e7d9      	b.n	8006f58 <_fputwc_r+0x18>

08006fa4 <_fstat_r>:
 8006fa4:	b538      	push	{r3, r4, r5, lr}
 8006fa6:	460b      	mov	r3, r1
 8006fa8:	4c07      	ldr	r4, [pc, #28]	; (8006fc8 <_fstat_r+0x24>)
 8006faa:	4605      	mov	r5, r0
 8006fac:	4611      	mov	r1, r2
 8006fae:	4618      	mov	r0, r3
 8006fb0:	2300      	movs	r3, #0
 8006fb2:	6023      	str	r3, [r4, #0]
 8006fb4:	f7fb f9dc 	bl	8002370 <_fstat>
 8006fb8:	1c43      	adds	r3, r0, #1
 8006fba:	d000      	beq.n	8006fbe <_fstat_r+0x1a>
 8006fbc:	bd38      	pop	{r3, r4, r5, pc}
 8006fbe:	6823      	ldr	r3, [r4, #0]
 8006fc0:	2b00      	cmp	r3, #0
 8006fc2:	d0fb      	beq.n	8006fbc <_fstat_r+0x18>
 8006fc4:	602b      	str	r3, [r5, #0]
 8006fc6:	bd38      	pop	{r3, r4, r5, pc}
 8006fc8:	20000c0c 	.word	0x20000c0c

08006fcc <_isatty_r>:
 8006fcc:	b538      	push	{r3, r4, r5, lr}
 8006fce:	4c07      	ldr	r4, [pc, #28]	; (8006fec <_isatty_r+0x20>)
 8006fd0:	2300      	movs	r3, #0
 8006fd2:	4605      	mov	r5, r0
 8006fd4:	4608      	mov	r0, r1
 8006fd6:	6023      	str	r3, [r4, #0]
 8006fd8:	f7fb f9cf 	bl	800237a <_isatty>
 8006fdc:	1c43      	adds	r3, r0, #1
 8006fde:	d000      	beq.n	8006fe2 <_isatty_r+0x16>
 8006fe0:	bd38      	pop	{r3, r4, r5, pc}
 8006fe2:	6823      	ldr	r3, [r4, #0]
 8006fe4:	2b00      	cmp	r3, #0
 8006fe6:	d0fb      	beq.n	8006fe0 <_isatty_r+0x14>
 8006fe8:	602b      	str	r3, [r5, #0]
 8006fea:	bd38      	pop	{r3, r4, r5, pc}
 8006fec:	20000c0c 	.word	0x20000c0c

08006ff0 <__locale_mb_cur_max>:
 8006ff0:	4b04      	ldr	r3, [pc, #16]	; (8007004 <__locale_mb_cur_max+0x14>)
 8006ff2:	4a05      	ldr	r2, [pc, #20]	; (8007008 <__locale_mb_cur_max+0x18>)
 8006ff4:	681b      	ldr	r3, [r3, #0]
 8006ff6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006ff8:	2b00      	cmp	r3, #0
 8006ffa:	bf08      	it	eq
 8006ffc:	4613      	moveq	r3, r2
 8006ffe:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007002:	4770      	bx	lr
 8007004:	20000018 	.word	0x20000018
 8007008:	2000085c 	.word	0x2000085c

0800700c <_lseek_r>:
 800700c:	b570      	push	{r4, r5, r6, lr}
 800700e:	460d      	mov	r5, r1
 8007010:	4c08      	ldr	r4, [pc, #32]	; (8007034 <_lseek_r+0x28>)
 8007012:	4611      	mov	r1, r2
 8007014:	4606      	mov	r6, r0
 8007016:	461a      	mov	r2, r3
 8007018:	4628      	mov	r0, r5
 800701a:	2300      	movs	r3, #0
 800701c:	6023      	str	r3, [r4, #0]
 800701e:	f7fb f9ae 	bl	800237e <_lseek>
 8007022:	1c43      	adds	r3, r0, #1
 8007024:	d000      	beq.n	8007028 <_lseek_r+0x1c>
 8007026:	bd70      	pop	{r4, r5, r6, pc}
 8007028:	6823      	ldr	r3, [r4, #0]
 800702a:	2b00      	cmp	r3, #0
 800702c:	d0fb      	beq.n	8007026 <_lseek_r+0x1a>
 800702e:	6033      	str	r3, [r6, #0]
 8007030:	bd70      	pop	{r4, r5, r6, pc}
 8007032:	bf00      	nop
 8007034:	20000c0c 	.word	0x20000c0c

08007038 <__ascii_mbtowc>:
 8007038:	b082      	sub	sp, #8
 800703a:	b149      	cbz	r1, 8007050 <__ascii_mbtowc+0x18>
 800703c:	b15a      	cbz	r2, 8007056 <__ascii_mbtowc+0x1e>
 800703e:	b16b      	cbz	r3, 800705c <__ascii_mbtowc+0x24>
 8007040:	7813      	ldrb	r3, [r2, #0]
 8007042:	600b      	str	r3, [r1, #0]
 8007044:	7812      	ldrb	r2, [r2, #0]
 8007046:	1c10      	adds	r0, r2, #0
 8007048:	bf18      	it	ne
 800704a:	2001      	movne	r0, #1
 800704c:	b002      	add	sp, #8
 800704e:	4770      	bx	lr
 8007050:	a901      	add	r1, sp, #4
 8007052:	2a00      	cmp	r2, #0
 8007054:	d1f3      	bne.n	800703e <__ascii_mbtowc+0x6>
 8007056:	4610      	mov	r0, r2
 8007058:	b002      	add	sp, #8
 800705a:	4770      	bx	lr
 800705c:	f06f 0001 	mvn.w	r0, #1
 8007060:	e7f4      	b.n	800704c <__ascii_mbtowc+0x14>
 8007062:	bf00      	nop

08007064 <_read_r>:
 8007064:	b570      	push	{r4, r5, r6, lr}
 8007066:	460d      	mov	r5, r1
 8007068:	4c08      	ldr	r4, [pc, #32]	; (800708c <_read_r+0x28>)
 800706a:	4611      	mov	r1, r2
 800706c:	4606      	mov	r6, r0
 800706e:	461a      	mov	r2, r3
 8007070:	4628      	mov	r0, r5
 8007072:	2300      	movs	r3, #0
 8007074:	6023      	str	r3, [r4, #0]
 8007076:	f7fb f936 	bl	80022e6 <_read>
 800707a:	1c43      	adds	r3, r0, #1
 800707c:	d000      	beq.n	8007080 <_read_r+0x1c>
 800707e:	bd70      	pop	{r4, r5, r6, pc}
 8007080:	6823      	ldr	r3, [r4, #0]
 8007082:	2b00      	cmp	r3, #0
 8007084:	d0fb      	beq.n	800707e <_read_r+0x1a>
 8007086:	6033      	str	r3, [r6, #0]
 8007088:	bd70      	pop	{r4, r5, r6, pc}
 800708a:	bf00      	nop
 800708c:	20000c0c 	.word	0x20000c0c

08007090 <__swbuf_r>:
 8007090:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007092:	460d      	mov	r5, r1
 8007094:	4614      	mov	r4, r2
 8007096:	4606      	mov	r6, r0
 8007098:	b110      	cbz	r0, 80070a0 <__swbuf_r+0x10>
 800709a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800709c:	2b00      	cmp	r3, #0
 800709e:	d043      	beq.n	8007128 <__swbuf_r+0x98>
 80070a0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80070a4:	69a3      	ldr	r3, [r4, #24]
 80070a6:	60a3      	str	r3, [r4, #8]
 80070a8:	b291      	uxth	r1, r2
 80070aa:	0708      	lsls	r0, r1, #28
 80070ac:	d51b      	bpl.n	80070e6 <__swbuf_r+0x56>
 80070ae:	6923      	ldr	r3, [r4, #16]
 80070b0:	b1cb      	cbz	r3, 80070e6 <__swbuf_r+0x56>
 80070b2:	b2ed      	uxtb	r5, r5
 80070b4:	0489      	lsls	r1, r1, #18
 80070b6:	462f      	mov	r7, r5
 80070b8:	d522      	bpl.n	8007100 <__swbuf_r+0x70>
 80070ba:	6822      	ldr	r2, [r4, #0]
 80070bc:	6961      	ldr	r1, [r4, #20]
 80070be:	1ad3      	subs	r3, r2, r3
 80070c0:	4299      	cmp	r1, r3
 80070c2:	dd29      	ble.n	8007118 <__swbuf_r+0x88>
 80070c4:	3301      	adds	r3, #1
 80070c6:	68a1      	ldr	r1, [r4, #8]
 80070c8:	1c50      	adds	r0, r2, #1
 80070ca:	3901      	subs	r1, #1
 80070cc:	60a1      	str	r1, [r4, #8]
 80070ce:	6020      	str	r0, [r4, #0]
 80070d0:	7015      	strb	r5, [r2, #0]
 80070d2:	6962      	ldr	r2, [r4, #20]
 80070d4:	429a      	cmp	r2, r3
 80070d6:	d02a      	beq.n	800712e <__swbuf_r+0x9e>
 80070d8:	89a3      	ldrh	r3, [r4, #12]
 80070da:	07db      	lsls	r3, r3, #31
 80070dc:	d501      	bpl.n	80070e2 <__swbuf_r+0x52>
 80070de:	2d0a      	cmp	r5, #10
 80070e0:	d025      	beq.n	800712e <__swbuf_r+0x9e>
 80070e2:	4638      	mov	r0, r7
 80070e4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80070e6:	4621      	mov	r1, r4
 80070e8:	4630      	mov	r0, r6
 80070ea:	f7fc fffd 	bl	80040e8 <__swsetup_r>
 80070ee:	bb20      	cbnz	r0, 800713a <__swbuf_r+0xaa>
 80070f0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80070f4:	6923      	ldr	r3, [r4, #16]
 80070f6:	b291      	uxth	r1, r2
 80070f8:	b2ed      	uxtb	r5, r5
 80070fa:	0489      	lsls	r1, r1, #18
 80070fc:	462f      	mov	r7, r5
 80070fe:	d4dc      	bmi.n	80070ba <__swbuf_r+0x2a>
 8007100:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007102:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007106:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800710a:	81a2      	strh	r2, [r4, #12]
 800710c:	6822      	ldr	r2, [r4, #0]
 800710e:	6661      	str	r1, [r4, #100]	; 0x64
 8007110:	6961      	ldr	r1, [r4, #20]
 8007112:	1ad3      	subs	r3, r2, r3
 8007114:	4299      	cmp	r1, r3
 8007116:	dcd5      	bgt.n	80070c4 <__swbuf_r+0x34>
 8007118:	4621      	mov	r1, r4
 800711a:	4630      	mov	r0, r6
 800711c:	f7fe f8a6 	bl	800526c <_fflush_r>
 8007120:	b958      	cbnz	r0, 800713a <__swbuf_r+0xaa>
 8007122:	6822      	ldr	r2, [r4, #0]
 8007124:	2301      	movs	r3, #1
 8007126:	e7ce      	b.n	80070c6 <__swbuf_r+0x36>
 8007128:	f7fe f8fc 	bl	8005324 <__sinit>
 800712c:	e7b8      	b.n	80070a0 <__swbuf_r+0x10>
 800712e:	4621      	mov	r1, r4
 8007130:	4630      	mov	r0, r6
 8007132:	f7fe f89b 	bl	800526c <_fflush_r>
 8007136:	2800      	cmp	r0, #0
 8007138:	d0d3      	beq.n	80070e2 <__swbuf_r+0x52>
 800713a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800713e:	e7d0      	b.n	80070e2 <__swbuf_r+0x52>

08007140 <_wcrtomb_r>:
 8007140:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007142:	4c11      	ldr	r4, [pc, #68]	; (8007188 <_wcrtomb_r+0x48>)
 8007144:	6824      	ldr	r4, [r4, #0]
 8007146:	b085      	sub	sp, #20
 8007148:	4606      	mov	r6, r0
 800714a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800714c:	461f      	mov	r7, r3
 800714e:	b151      	cbz	r1, 8007166 <_wcrtomb_r+0x26>
 8007150:	4d0e      	ldr	r5, [pc, #56]	; (800718c <_wcrtomb_r+0x4c>)
 8007152:	2c00      	cmp	r4, #0
 8007154:	bf08      	it	eq
 8007156:	462c      	moveq	r4, r5
 8007158:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800715c:	47a0      	blx	r4
 800715e:	1c43      	adds	r3, r0, #1
 8007160:	d00c      	beq.n	800717c <_wcrtomb_r+0x3c>
 8007162:	b005      	add	sp, #20
 8007164:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007166:	4a09      	ldr	r2, [pc, #36]	; (800718c <_wcrtomb_r+0x4c>)
 8007168:	2c00      	cmp	r4, #0
 800716a:	bf08      	it	eq
 800716c:	4614      	moveq	r4, r2
 800716e:	460a      	mov	r2, r1
 8007170:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007174:	a901      	add	r1, sp, #4
 8007176:	47a0      	blx	r4
 8007178:	1c43      	adds	r3, r0, #1
 800717a:	d1f2      	bne.n	8007162 <_wcrtomb_r+0x22>
 800717c:	2200      	movs	r2, #0
 800717e:	238a      	movs	r3, #138	; 0x8a
 8007180:	603a      	str	r2, [r7, #0]
 8007182:	6033      	str	r3, [r6, #0]
 8007184:	b005      	add	sp, #20
 8007186:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007188:	20000018 	.word	0x20000018
 800718c:	2000085c 	.word	0x2000085c

08007190 <__ascii_wctomb>:
 8007190:	b121      	cbz	r1, 800719c <__ascii_wctomb+0xc>
 8007192:	2aff      	cmp	r2, #255	; 0xff
 8007194:	d804      	bhi.n	80071a0 <__ascii_wctomb+0x10>
 8007196:	700a      	strb	r2, [r1, #0]
 8007198:	2001      	movs	r0, #1
 800719a:	4770      	bx	lr
 800719c:	4608      	mov	r0, r1
 800719e:	4770      	bx	lr
 80071a0:	238a      	movs	r3, #138	; 0x8a
 80071a2:	6003      	str	r3, [r0, #0]
 80071a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80071a8:	4770      	bx	lr
 80071aa:	bf00      	nop

080071ac <_init>:
 80071ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80071ae:	bf00      	nop
 80071b0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80071b2:	bc08      	pop	{r3}
 80071b4:	469e      	mov	lr, r3
 80071b6:	4770      	bx	lr

080071b8 <_fini>:
 80071b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80071ba:	bf00      	nop
 80071bc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80071be:	bc08      	pop	{r3}
 80071c0:	469e      	mov	lr, r3
 80071c2:	4770      	bx	lr
 80071c4:	0000      	movs	r0, r0
	...
