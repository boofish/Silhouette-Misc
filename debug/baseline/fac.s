
fac.elf:     file format elf32-littlearm


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
 80001e0:	0800706c 	.word	0x0800706c

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
 80001fc:	0800706c 	.word	0x0800706c

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
 8001430:	f247 02a0 	movw	r2, #28832	; 0x70a0
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
 80014aa:	f247 0298 	movw	r2, #28824	; 0x7098
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
 80014d4:	f247 0298 	movw	r2, #28824	; 0x7098
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
 8001a82:	f247 03d0 	movw	r3, #28880	; 0x70d0
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
 8001aaa:	f247 03e0 	movw	r3, #28896	; 0x70e0
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

08002014 <initialise_benchmark>:
 8002014:	4770      	bx	lr

08002016 <benchmark>:
 8002016:	b082      	sub	sp, #8
 8002018:	2000      	movs	r0, #0
 800201a:	f84d 0e04 	strt	r0, [sp, #4]
 800201e:	200a      	movs	r0, #10
 8002020:	f84d 0e00 	strt	r0, [sp]
 8002024:	9800      	ldr	r0, [sp, #0]
 8002026:	2800      	cmp	r0, #0
 8002028:	db0f      	blt.n	800204a <benchmark+0x34>
 800202a:	2000      	movs	r0, #0
 800202c:	2101      	movs	r1, #1
 800202e:	b118      	cbz	r0, 8002038 <benchmark+0x22>
 8002030:	4602      	mov	r2, r0
 8002032:	4351      	muls	r1, r2
 8002034:	3a01      	subs	r2, #1
 8002036:	d1fc      	bne.n	8002032 <benchmark+0x1c>
 8002038:	9a01      	ldr	r2, [sp, #4]
 800203a:	4411      	add	r1, r2
 800203c:	f84d 1e04 	strt	r1, [sp, #4]
 8002040:	1c41      	adds	r1, r0, #1
 8002042:	9a00      	ldr	r2, [sp, #0]
 8002044:	4290      	cmp	r0, r2
 8002046:	4608      	mov	r0, r1
 8002048:	dbf0      	blt.n	800202c <benchmark+0x16>
 800204a:	9801      	ldr	r0, [sp, #4]
 800204c:	b002      	add	sp, #8
 800204e:	4770      	bx	lr

08002050 <verify_benchmark>:
 8002050:	f649 521a 	movw	r2, #40218	; 0x9d1a
 8002054:	2100      	movs	r1, #0
 8002056:	f2c0 023d 	movt	r2, #61	; 0x3d
 800205a:	4290      	cmp	r0, r2
 800205c:	bf08      	it	eq
 800205e:	2101      	moveq	r1, #1
 8002060:	4608      	mov	r0, r1
 8002062:	4770      	bx	lr

08002064 <__io_putchar>:
 8002064:	b082      	sub	sp, #8
 8002066:	f84d 7e00 	strt	r7, [sp]
 800206a:	f84d ee04 	strt	lr, [sp, #4]
 800206e:	466f      	mov	r7, sp
 8002070:	b082      	sub	sp, #8
 8002072:	f84d 0e04 	strt	r0, [sp, #4]
 8002076:	f640 10e4 	movw	r0, #2532	; 0x9e4
 800207a:	a901      	add	r1, sp, #4
 800207c:	2201      	movs	r2, #1
 800207e:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002082:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002086:	f7ff fe9e 	bl	8001dc6 <HAL_UART_Transmit>
 800208a:	9801      	ldr	r0, [sp, #4]
 800208c:	b002      	add	sp, #8
 800208e:	bd80      	pop	{r7, pc}

08002090 <main>:
 8002090:	b084      	sub	sp, #16
 8002092:	f84d 4e00 	strt	r4, [sp]
 8002096:	f84d 5e04 	strt	r5, [sp, #4]
 800209a:	f84d 7e08 	strt	r7, [sp, #8]
 800209e:	f84d ee0c 	strt	lr, [sp, #12]
 80020a2:	af02      	add	r7, sp, #8
 80020a4:	f640 11e4 	movw	r1, #2532	; 0x9e4
 80020a8:	f643 0000 	movw	r0, #14336	; 0x3800
 80020ac:	220c      	movs	r2, #12
 80020ae:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020b2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80020b6:	f841 0e00 	strt	r0, [r1]
 80020ba:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80020be:	f841 0e04 	strt	r0, [r1, #4]
 80020c2:	2000      	movs	r0, #0
 80020c4:	f841 0e08 	strt	r0, [r1, #8]
 80020c8:	f841 0e0c 	strt	r0, [r1, #12]
 80020cc:	f841 0e10 	strt	r0, [r1, #16]
 80020d0:	f841 0e24 	strt	r0, [r1, #36]
 80020d4:	f841 0e1c 	strt	r0, [r1, #28]
 80020d8:	f841 0e20 	strt	r0, [r1, #32]
 80020dc:	f841 2e14 	strt	r2, [r1, #20]
 80020e0:	f841 0e18 	strt	r0, [r1, #24]
 80020e4:	2000      	movs	r0, #0
 80020e6:	f7ff ff21 	bl	8001f2c <BSP_COM_Init>
 80020ea:	f7ff ff93 	bl	8002014 <initialise_benchmark>
 80020ee:	f247 00f0 	movw	r0, #28912	; 0x70f0
 80020f2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020f6:	f000 f96d 	bl	80023d4 <printf>
 80020fa:	f247 1096 	movw	r0, #29078	; 0x7196
 80020fe:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002102:	f000 f9c9 	bl	8002498 <puts>
 8002106:	f7fe ffef 	bl	80010e8 <HAL_Init>
 800210a:	f7ff f806 	bl	800111a <HAL_GetTick>
 800210e:	4604      	mov	r4, r0
 8002110:	f7ff ff81 	bl	8002016 <benchmark>
 8002114:	4605      	mov	r5, r0
 8002116:	f7ff f800 	bl	800111a <HAL_GetTick>
 800211a:	1b04      	subs	r4, r0, r4
 800211c:	4628      	mov	r0, r5
 800211e:	f7ff ff97 	bl	8002050 <verify_benchmark>
 8002122:	1c41      	adds	r1, r0, #1
 8002124:	d006      	beq.n	8002134 <main+0xa4>
 8002126:	2801      	cmp	r0, #1
 8002128:	d109      	bne.n	800213e <main+0xae>
 800212a:	f247 1002 	movw	r0, #28930	; 0x7102
 800212e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002132:	e008      	b.n	8002146 <main+0xb6>
 8002134:	f247 1026 	movw	r0, #28966	; 0x7126
 8002138:	f6c0 0000 	movt	r0, #2048	; 0x800
 800213c:	e003      	b.n	8002146 <main+0xb6>
 800213e:	f247 105b 	movw	r0, #29019	; 0x715b
 8002142:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002146:	4621      	mov	r1, r4
 8002148:	f000 f944 	bl	80023d4 <printf>
 800214c:	2000      	movs	r0, #0
 800214e:	bdb0      	pop	{r4, r5, r7, pc}

08002150 <SysTick_Handler>:
 8002150:	b082      	sub	sp, #8
 8002152:	f84d 7e00 	strt	r7, [sp]
 8002156:	f84d ee04 	strt	lr, [sp, #4]
 800215a:	466f      	mov	r7, sp
 800215c:	f7fe ffd4 	bl	8001108 <HAL_IncTick>
 8002160:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002164:	f7ff b82f 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

08002168 <_read>:
 8002168:	b085      	sub	sp, #20
 800216a:	f84d 4e00 	strt	r4, [sp]
 800216e:	f84d 5e04 	strt	r5, [sp, #4]
 8002172:	f84d 6e08 	strt	r6, [sp, #8]
 8002176:	f84d 7e0c 	strt	r7, [sp, #12]
 800217a:	f84d ee10 	strt	lr, [sp, #16]
 800217e:	af03      	add	r7, sp, #12
 8002180:	b081      	sub	sp, #4
 8002182:	f84d be00 	strt	fp, [sp]
 8002186:	4614      	mov	r4, r2
 8002188:	460d      	mov	r5, r1
 800218a:	2c01      	cmp	r4, #1
 800218c:	db08      	blt.n	80021a0 <_read+0x38>
 800218e:	4626      	mov	r6, r4
 8002190:	f3af 8000 	nop.w
 8002194:	f805 0e00 	strbt	r0, [r5]
 8002198:	bfe8      	it	al
 800219a:	3501      	addal	r5, #1
 800219c:	3e01      	subs	r6, #1
 800219e:	d1f7      	bne.n	8002190 <_read+0x28>
 80021a0:	4620      	mov	r0, r4
 80021a2:	f85d bb04 	ldr.w	fp, [sp], #4
 80021a6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021a8 <_write>:
 80021a8:	b085      	sub	sp, #20
 80021aa:	f84d 4e00 	strt	r4, [sp]
 80021ae:	f84d 5e04 	strt	r5, [sp, #4]
 80021b2:	f84d 6e08 	strt	r6, [sp, #8]
 80021b6:	f84d 7e0c 	strt	r7, [sp, #12]
 80021ba:	f84d ee10 	strt	lr, [sp, #16]
 80021be:	af03      	add	r7, sp, #12
 80021c0:	b081      	sub	sp, #4
 80021c2:	f84d be00 	strt	fp, [sp]
 80021c6:	4614      	mov	r4, r2
 80021c8:	460d      	mov	r5, r1
 80021ca:	2c01      	cmp	r4, #1
 80021cc:	db06      	blt.n	80021dc <_write+0x34>
 80021ce:	4626      	mov	r6, r4
 80021d0:	f815 0b01 	ldrb.w	r0, [r5], #1
 80021d4:	f7ff ff46 	bl	8002064 <__io_putchar>
 80021d8:	3e01      	subs	r6, #1
 80021da:	d1f9      	bne.n	80021d0 <_write+0x28>
 80021dc:	4620      	mov	r0, r4
 80021de:	f85d bb04 	ldr.w	fp, [sp], #4
 80021e2:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021e4 <_sbrk>:
 80021e4:	f640 2268 	movw	r2, #2664	; 0xa68
 80021e8:	4601      	mov	r1, r0
 80021ea:	466b      	mov	r3, sp
 80021ec:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021f0:	6810      	ldr	r0, [r2, #0]
 80021f2:	2800      	cmp	r0, #0
 80021f4:	bf02      	ittt	eq
 80021f6:	f640 3010 	movweq	r0, #2832	; 0xb10
 80021fa:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80021fe:	f842 0e00 	strteq	r0, [r2]
 8002202:	4401      	add	r1, r0
 8002204:	4299      	cmp	r1, r3
 8002206:	bf9c      	itt	ls
 8002208:	f842 1e00 	strtls	r1, [r2]
 800220c:	4770      	bxls	lr
 800220e:	b082      	sub	sp, #8
 8002210:	f84d 7e00 	strt	r7, [sp]
 8002214:	f84d ee04 	strt	lr, [sp, #4]
 8002218:	466f      	mov	r7, sp
 800221a:	f000 f867 	bl	80022ec <__errno>
 800221e:	210c      	movs	r1, #12
 8002220:	f840 1e00 	strt	r1, [r0]
 8002224:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002228:	bd80      	pop	{r7, pc}

0800222a <_close>:
 800222a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800222e:	4770      	bx	lr

08002230 <_fstat>:
 8002230:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002234:	f841 0e04 	strt	r0, [r1, #4]
 8002238:	2000      	movs	r0, #0
 800223a:	4770      	bx	lr

0800223c <_isatty>:
 800223c:	2001      	movs	r0, #1
 800223e:	4770      	bx	lr

08002240 <_lseek>:
 8002240:	2000      	movs	r0, #0
 8002242:	4770      	bx	lr

08002244 <SystemInit>:
 8002244:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002248:	f04f 0c00 	mov.w	ip, #0
 800224c:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002250:	6801      	ldr	r1, [r0, #0]
 8002252:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002256:	6001      	str	r1, [r0, #0]
 8002258:	f241 0100 	movw	r1, #4096	; 0x1000
 800225c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002260:	680a      	ldr	r2, [r1, #0]
 8002262:	f042 0201 	orr.w	r2, r2, #1
 8002266:	600a      	str	r2, [r1, #0]
 8002268:	f8c1 c008 	str.w	ip, [r1, #8]
 800226c:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002270:	680b      	ldr	r3, [r1, #0]
 8002272:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002276:	401a      	ands	r2, r3
 8002278:	600a      	str	r2, [r1, #0]
 800227a:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800227e:	60ca      	str	r2, [r1, #12]
 8002280:	680a      	ldr	r2, [r1, #0]
 8002282:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002286:	600a      	str	r2, [r1, #0]
 8002288:	f8c1 c018 	str.w	ip, [r1, #24]
 800228c:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002290:	f840 1c80 	str.w	r1, [r0, #-128]
 8002294:	4770      	bx	lr
	...

08002298 <Reset_Handler>:
 8002298:	f8df d034 	ldr.w	sp, [pc, #52]	; 80022d0 <LoopForever+0x2>
 800229c:	2100      	movs	r1, #0
 800229e:	e003      	b.n	80022a8 <LoopCopyDataInit>

080022a0 <CopyDataInit>:
 80022a0:	4b0c      	ldr	r3, [pc, #48]	; (80022d4 <LoopForever+0x6>)
 80022a2:	585b      	ldr	r3, [r3, r1]
 80022a4:	5043      	str	r3, [r0, r1]
 80022a6:	3104      	adds	r1, #4

080022a8 <LoopCopyDataInit>:
 80022a8:	480b      	ldr	r0, [pc, #44]	; (80022d8 <LoopForever+0xa>)
 80022aa:	4b0c      	ldr	r3, [pc, #48]	; (80022dc <LoopForever+0xe>)
 80022ac:	1842      	adds	r2, r0, r1
 80022ae:	429a      	cmp	r2, r3
 80022b0:	d3f6      	bcc.n	80022a0 <CopyDataInit>
 80022b2:	4a0b      	ldr	r2, [pc, #44]	; (80022e0 <LoopForever+0x12>)
 80022b4:	e002      	b.n	80022bc <LoopFillZerobss>

080022b6 <FillZerobss>:
 80022b6:	2300      	movs	r3, #0
 80022b8:	f842 3b04 	str.w	r3, [r2], #4

080022bc <LoopFillZerobss>:
 80022bc:	4b09      	ldr	r3, [pc, #36]	; (80022e4 <LoopForever+0x16>)
 80022be:	429a      	cmp	r2, r3
 80022c0:	d3f9      	bcc.n	80022b6 <FillZerobss>
 80022c2:	f7ff ffbf 	bl	8002244 <SystemInit>
 80022c6:	f000 f817 	bl	80022f8 <__libc_init_array>
 80022ca:	f7ff fee1 	bl	8002090 <main>

080022ce <LoopForever>:
 80022ce:	e7fe      	b.n	80022ce <LoopForever>
 80022d0:	20018000 	.word	0x20018000
 80022d4:	08007440 	.word	0x08007440
 80022d8:	20000000 	.word	0x20000000
 80022dc:	200009c8 	.word	0x200009c8
 80022e0:	200009c8 	.word	0x200009c8
 80022e4:	20000b10 	.word	0x20000b10

080022e8 <ADC1_2_IRQHandler>:
 80022e8:	e7fe      	b.n	80022e8 <ADC1_2_IRQHandler>
	...

080022ec <__errno>:
 80022ec:	4b01      	ldr	r3, [pc, #4]	; (80022f4 <__errno+0x8>)
 80022ee:	6818      	ldr	r0, [r3, #0]
 80022f0:	4770      	bx	lr
 80022f2:	bf00      	nop
 80022f4:	20000018 	.word	0x20000018

080022f8 <__libc_init_array>:
 80022f8:	b570      	push	{r4, r5, r6, lr}
 80022fa:	4e0d      	ldr	r6, [pc, #52]	; (8002330 <__libc_init_array+0x38>)
 80022fc:	4d0d      	ldr	r5, [pc, #52]	; (8002334 <__libc_init_array+0x3c>)
 80022fe:	1b76      	subs	r6, r6, r5
 8002300:	10b6      	asrs	r6, r6, #2
 8002302:	d006      	beq.n	8002312 <__libc_init_array+0x1a>
 8002304:	2400      	movs	r4, #0
 8002306:	3401      	adds	r4, #1
 8002308:	f855 3b04 	ldr.w	r3, [r5], #4
 800230c:	4798      	blx	r3
 800230e:	42a6      	cmp	r6, r4
 8002310:	d1f9      	bne.n	8002306 <__libc_init_array+0xe>
 8002312:	4e09      	ldr	r6, [pc, #36]	; (8002338 <__libc_init_array+0x40>)
 8002314:	4d09      	ldr	r5, [pc, #36]	; (800233c <__libc_init_array+0x44>)
 8002316:	1b76      	subs	r6, r6, r5
 8002318:	f004 fea8 	bl	800706c <_init>
 800231c:	10b6      	asrs	r6, r6, #2
 800231e:	d006      	beq.n	800232e <__libc_init_array+0x36>
 8002320:	2400      	movs	r4, #0
 8002322:	3401      	adds	r4, #1
 8002324:	f855 3b04 	ldr.w	r3, [r5], #4
 8002328:	4798      	blx	r3
 800232a:	42a6      	cmp	r6, r4
 800232c:	d1f9      	bne.n	8002322 <__libc_init_array+0x2a>
 800232e:	bd70      	pop	{r4, r5, r6, pc}
 8002330:	08007430 	.word	0x08007430
 8002334:	08007430 	.word	0x08007430
 8002338:	08007438 	.word	0x08007438
 800233c:	08007430 	.word	0x08007430

08002340 <memset>:
 8002340:	b4f0      	push	{r4, r5, r6, r7}
 8002342:	0786      	lsls	r6, r0, #30
 8002344:	d043      	beq.n	80023ce <memset+0x8e>
 8002346:	1e54      	subs	r4, r2, #1
 8002348:	2a00      	cmp	r2, #0
 800234a:	d03e      	beq.n	80023ca <memset+0x8a>
 800234c:	b2ca      	uxtb	r2, r1
 800234e:	4603      	mov	r3, r0
 8002350:	e002      	b.n	8002358 <memset+0x18>
 8002352:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002356:	d338      	bcc.n	80023ca <memset+0x8a>
 8002358:	f803 2b01 	strb.w	r2, [r3], #1
 800235c:	079d      	lsls	r5, r3, #30
 800235e:	d1f8      	bne.n	8002352 <memset+0x12>
 8002360:	2c03      	cmp	r4, #3
 8002362:	d92b      	bls.n	80023bc <memset+0x7c>
 8002364:	b2cd      	uxtb	r5, r1
 8002366:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800236a:	2c0f      	cmp	r4, #15
 800236c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002370:	d916      	bls.n	80023a0 <memset+0x60>
 8002372:	f1a4 0710 	sub.w	r7, r4, #16
 8002376:	093f      	lsrs	r7, r7, #4
 8002378:	f103 0620 	add.w	r6, r3, #32
 800237c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002380:	f103 0210 	add.w	r2, r3, #16
 8002384:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002388:	e942 5502 	strd	r5, r5, [r2, #-8]
 800238c:	3210      	adds	r2, #16
 800238e:	42b2      	cmp	r2, r6
 8002390:	d1f8      	bne.n	8002384 <memset+0x44>
 8002392:	f004 040f 	and.w	r4, r4, #15
 8002396:	3701      	adds	r7, #1
 8002398:	2c03      	cmp	r4, #3
 800239a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800239e:	d90d      	bls.n	80023bc <memset+0x7c>
 80023a0:	461e      	mov	r6, r3
 80023a2:	4622      	mov	r2, r4
 80023a4:	3a04      	subs	r2, #4
 80023a6:	2a03      	cmp	r2, #3
 80023a8:	f846 5b04 	str.w	r5, [r6], #4
 80023ac:	d8fa      	bhi.n	80023a4 <memset+0x64>
 80023ae:	1f22      	subs	r2, r4, #4
 80023b0:	f022 0203 	bic.w	r2, r2, #3
 80023b4:	3204      	adds	r2, #4
 80023b6:	4413      	add	r3, r2
 80023b8:	f004 0403 	and.w	r4, r4, #3
 80023bc:	b12c      	cbz	r4, 80023ca <memset+0x8a>
 80023be:	b2c9      	uxtb	r1, r1
 80023c0:	441c      	add	r4, r3
 80023c2:	f803 1b01 	strb.w	r1, [r3], #1
 80023c6:	429c      	cmp	r4, r3
 80023c8:	d1fb      	bne.n	80023c2 <memset+0x82>
 80023ca:	bcf0      	pop	{r4, r5, r6, r7}
 80023cc:	4770      	bx	lr
 80023ce:	4614      	mov	r4, r2
 80023d0:	4603      	mov	r3, r0
 80023d2:	e7c5      	b.n	8002360 <memset+0x20>

080023d4 <printf>:
 80023d4:	b40f      	push	{r0, r1, r2, r3}
 80023d6:	b500      	push	{lr}
 80023d8:	4907      	ldr	r1, [pc, #28]	; (80023f8 <printf+0x24>)
 80023da:	b083      	sub	sp, #12
 80023dc:	ab04      	add	r3, sp, #16
 80023de:	6808      	ldr	r0, [r1, #0]
 80023e0:	f853 2b04 	ldr.w	r2, [r3], #4
 80023e4:	6881      	ldr	r1, [r0, #8]
 80023e6:	9301      	str	r3, [sp, #4]
 80023e8:	f000 f85e 	bl	80024a8 <_vfprintf_r>
 80023ec:	b003      	add	sp, #12
 80023ee:	f85d eb04 	ldr.w	lr, [sp], #4
 80023f2:	b004      	add	sp, #16
 80023f4:	4770      	bx	lr
 80023f6:	bf00      	nop
 80023f8:	20000018 	.word	0x20000018

080023fc <_puts_r>:
 80023fc:	b570      	push	{r4, r5, r6, lr}
 80023fe:	4605      	mov	r5, r0
 8002400:	b088      	sub	sp, #32
 8002402:	4608      	mov	r0, r1
 8002404:	460c      	mov	r4, r1
 8002406:	f7fe f91b 	bl	8000640 <strlen>
 800240a:	4a22      	ldr	r2, [pc, #136]	; (8002494 <_puts_r+0x98>)
 800240c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800240e:	9404      	str	r4, [sp, #16]
 8002410:	2601      	movs	r6, #1
 8002412:	1c44      	adds	r4, r0, #1
 8002414:	a904      	add	r1, sp, #16
 8002416:	9206      	str	r2, [sp, #24]
 8002418:	2202      	movs	r2, #2
 800241a:	9403      	str	r4, [sp, #12]
 800241c:	9005      	str	r0, [sp, #20]
 800241e:	68ac      	ldr	r4, [r5, #8]
 8002420:	9607      	str	r6, [sp, #28]
 8002422:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002426:	b31b      	cbz	r3, 8002470 <_puts_r+0x74>
 8002428:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800242a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800242e:	07ce      	lsls	r6, r1, #31
 8002430:	b29a      	uxth	r2, r3
 8002432:	d401      	bmi.n	8002438 <_puts_r+0x3c>
 8002434:	0590      	lsls	r0, r2, #22
 8002436:	d525      	bpl.n	8002484 <_puts_r+0x88>
 8002438:	0491      	lsls	r1, r2, #18
 800243a:	d406      	bmi.n	800244a <_puts_r+0x4e>
 800243c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800243e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002442:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002446:	81a3      	strh	r3, [r4, #12]
 8002448:	6662      	str	r2, [r4, #100]	; 0x64
 800244a:	4628      	mov	r0, r5
 800244c:	aa01      	add	r2, sp, #4
 800244e:	4621      	mov	r1, r4
 8002450:	f003 f85e 	bl	8005510 <__sfvwrite_r>
 8002454:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002456:	2800      	cmp	r0, #0
 8002458:	bf0c      	ite	eq
 800245a:	250a      	moveq	r5, #10
 800245c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002460:	07da      	lsls	r2, r3, #31
 8002462:	d402      	bmi.n	800246a <_puts_r+0x6e>
 8002464:	89a3      	ldrh	r3, [r4, #12]
 8002466:	059b      	lsls	r3, r3, #22
 8002468:	d506      	bpl.n	8002478 <_puts_r+0x7c>
 800246a:	4628      	mov	r0, r5
 800246c:	b008      	add	sp, #32
 800246e:	bd70      	pop	{r4, r5, r6, pc}
 8002470:	4628      	mov	r0, r5
 8002472:	f002 feb7 	bl	80051e4 <__sinit>
 8002476:	e7d7      	b.n	8002428 <_puts_r+0x2c>
 8002478:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800247a:	f003 fa05 	bl	8005888 <__retarget_lock_release_recursive>
 800247e:	4628      	mov	r0, r5
 8002480:	b008      	add	sp, #32
 8002482:	bd70      	pop	{r4, r5, r6, pc}
 8002484:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002486:	f003 f9fd 	bl	8005884 <__retarget_lock_acquire_recursive>
 800248a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800248e:	b29a      	uxth	r2, r3
 8002490:	e7d2      	b.n	8002438 <_puts_r+0x3c>
 8002492:	bf00      	nop
 8002494:	0800719c 	.word	0x0800719c

08002498 <puts>:
 8002498:	4b02      	ldr	r3, [pc, #8]	; (80024a4 <puts+0xc>)
 800249a:	4601      	mov	r1, r0
 800249c:	6818      	ldr	r0, [r3, #0]
 800249e:	f7ff bfad 	b.w	80023fc <_puts_r>
 80024a2:	bf00      	nop
 80024a4:	20000018 	.word	0x20000018

080024a8 <_vfprintf_r>:
 80024a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80024ac:	b0d7      	sub	sp, #348	; 0x15c
 80024ae:	461c      	mov	r4, r3
 80024b0:	4689      	mov	r9, r1
 80024b2:	4617      	mov	r7, r2
 80024b4:	4605      	mov	r5, r0
 80024b6:	9003      	str	r0, [sp, #12]
 80024b8:	f003 f9d2 	bl	8005860 <_localeconv_r>
 80024bc:	6803      	ldr	r3, [r0, #0]
 80024be:	9316      	str	r3, [sp, #88]	; 0x58
 80024c0:	4618      	mov	r0, r3
 80024c2:	f7fe f8bd 	bl	8000640 <strlen>
 80024c6:	9408      	str	r4, [sp, #32]
 80024c8:	9015      	str	r0, [sp, #84]	; 0x54
 80024ca:	b11d      	cbz	r5, 80024d4 <_vfprintf_r+0x2c>
 80024cc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80024ce:	2b00      	cmp	r3, #0
 80024d0:	f000 8107 	beq.w	80026e2 <_vfprintf_r+0x23a>
 80024d4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80024d8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80024dc:	07c8      	lsls	r0, r1, #31
 80024de:	b293      	uxth	r3, r2
 80024e0:	d402      	bmi.n	80024e8 <_vfprintf_r+0x40>
 80024e2:	0599      	lsls	r1, r3, #22
 80024e4:	f140 811f 	bpl.w	8002726 <_vfprintf_r+0x27e>
 80024e8:	049e      	lsls	r6, r3, #18
 80024ea:	d40a      	bmi.n	8002502 <_vfprintf_r+0x5a>
 80024ec:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80024f0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80024f4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80024f8:	f8a9 300c 	strh.w	r3, [r9, #12]
 80024fc:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002500:	b29b      	uxth	r3, r3
 8002502:	071d      	lsls	r5, r3, #28
 8002504:	f140 80b2 	bpl.w	800266c <_vfprintf_r+0x1c4>
 8002508:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800250c:	2a00      	cmp	r2, #0
 800250e:	f000 80ad 	beq.w	800266c <_vfprintf_r+0x1c4>
 8002512:	f003 021a 	and.w	r2, r3, #26
 8002516:	2a0a      	cmp	r2, #10
 8002518:	f000 80c9 	beq.w	80026ae <_vfprintf_r+0x206>
 800251c:	2300      	movs	r3, #0
 800251e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002738 <_vfprintf_r+0x290>
 8002522:	9310      	str	r3, [sp, #64]	; 0x40
 8002524:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002528:	9317      	str	r3, [sp, #92]	; 0x5c
 800252a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800252e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002530:	9318      	str	r3, [sp, #96]	; 0x60
 8002532:	9305      	str	r3, [sp, #20]
 8002534:	ab2d      	add	r3, sp, #180	; 0xb4
 8002536:	932a      	str	r3, [sp, #168]	; 0xa8
 8002538:	469b      	mov	fp, r3
 800253a:	783b      	ldrb	r3, [r7, #0]
 800253c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002540:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002544:	2b00      	cmp	r3, #0
 8002546:	f000 8259 	beq.w	80029fc <_vfprintf_r+0x554>
 800254a:	2b25      	cmp	r3, #37	; 0x25
 800254c:	463c      	mov	r4, r7
 800254e:	d102      	bne.n	8002556 <_vfprintf_r+0xae>
 8002550:	e01d      	b.n	800258e <_vfprintf_r+0xe6>
 8002552:	2b25      	cmp	r3, #37	; 0x25
 8002554:	d003      	beq.n	800255e <_vfprintf_r+0xb6>
 8002556:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800255a:	2b00      	cmp	r3, #0
 800255c:	d1f9      	bne.n	8002552 <_vfprintf_r+0xaa>
 800255e:	1be5      	subs	r5, r4, r7
 8002560:	b18d      	cbz	r5, 8002586 <_vfprintf_r+0xde>
 8002562:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002566:	3301      	adds	r3, #1
 8002568:	442a      	add	r2, r5
 800256a:	2b07      	cmp	r3, #7
 800256c:	f8cb 7000 	str.w	r7, [fp]
 8002570:	f8cb 5004 	str.w	r5, [fp, #4]
 8002574:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002578:	f300 80ca 	bgt.w	8002710 <_vfprintf_r+0x268>
 800257c:	f10b 0b08 	add.w	fp, fp, #8
 8002580:	9b05      	ldr	r3, [sp, #20]
 8002582:	442b      	add	r3, r5
 8002584:	9305      	str	r3, [sp, #20]
 8002586:	7823      	ldrb	r3, [r4, #0]
 8002588:	2b00      	cmp	r3, #0
 800258a:	f000 8237 	beq.w	80029fc <_vfprintf_r+0x554>
 800258e:	2300      	movs	r3, #0
 8002590:	7866      	ldrb	r6, [r4, #1]
 8002592:	9306      	str	r3, [sp, #24]
 8002594:	4698      	mov	r8, r3
 8002596:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800259a:	f104 0a01 	add.w	sl, r4, #1
 800259e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80025a2:	252b      	movs	r5, #43	; 0x2b
 80025a4:	f10a 0a01 	add.w	sl, sl, #1
 80025a8:	f1a6 0320 	sub.w	r3, r6, #32
 80025ac:	2b5a      	cmp	r3, #90	; 0x5a
 80025ae:	f200 842a 	bhi.w	8002e06 <_vfprintf_r+0x95e>
 80025b2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80025b6:	03aa      	.short	0x03aa
 80025b8:	04280428 	.word	0x04280428
 80025bc:	0428029c 	.word	0x0428029c
 80025c0:	04280428 	.word	0x04280428
 80025c4:	042802a7 	.word	0x042802a7
 80025c8:	02c60428 	.word	0x02c60428
 80025cc:	042802d2 	.word	0x042802d2
 80025d0:	02dc02d7 	.word	0x02dc02d7
 80025d4:	02f60428 	.word	0x02f60428
 80025d8:	026d026d 	.word	0x026d026d
 80025dc:	026d026d 	.word	0x026d026d
 80025e0:	026d026d 	.word	0x026d026d
 80025e4:	026d026d 	.word	0x026d026d
 80025e8:	0428026d 	.word	0x0428026d
 80025ec:	04280428 	.word	0x04280428
 80025f0:	04280428 	.word	0x04280428
 80025f4:	04280428 	.word	0x04280428
 80025f8:	042802fb 	.word	0x042802fb
 80025fc:	03f3033c 	.word	0x03f3033c
 8002600:	02fb02fb 	.word	0x02fb02fb
 8002604:	042802fb 	.word	0x042802fb
 8002608:	04280428 	.word	0x04280428
 800260c:	03ee0428 	.word	0x03ee0428
 8002610:	04280428 	.word	0x04280428
 8002614:	0428009a 	.word	0x0428009a
 8002618:	04280428 	.word	0x04280428
 800261c:	04280350 	.word	0x04280350
 8002620:	04280379 	.word	0x04280379
 8002624:	03900428 	.word	0x03900428
 8002628:	04280428 	.word	0x04280428
 800262c:	04280428 	.word	0x04280428
 8002630:	04280428 	.word	0x04280428
 8002634:	04280428 	.word	0x04280428
 8002638:	042802fb 	.word	0x042802fb
 800263c:	00c5033c 	.word	0x00c5033c
 8002640:	02fb02fb 	.word	0x02fb02fb
 8002644:	03d102fb 	.word	0x03d102fb
 8002648:	007000c5 	.word	0x007000c5
 800264c:	03b50428 	.word	0x03b50428
 8002650:	03c20428 	.word	0x03c20428
 8002654:	03de009c 	.word	0x03de009c
 8002658:	04280070 	.word	0x04280070
 800265c:	00720350 	.word	0x00720350
 8002660:	0428022c 	.word	0x0428022c
 8002664:	027c0428 	.word	0x027c0428
 8002668:	00720428 	.word	0x00720428
 800266c:	4649      	mov	r1, r9
 800266e:	9803      	ldr	r0, [sp, #12]
 8002670:	f001 fc9a 	bl	8003fa8 <__swsetup_r>
 8002674:	b1a0      	cbz	r0, 80026a0 <_vfprintf_r+0x1f8>
 8002676:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800267a:	07d8      	lsls	r0, r3, #31
 800267c:	d404      	bmi.n	8002688 <_vfprintf_r+0x1e0>
 800267e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002682:	0599      	lsls	r1, r3, #22
 8002684:	f140 83b7 	bpl.w	8002df6 <_vfprintf_r+0x94e>
 8002688:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800268c:	9305      	str	r3, [sp, #20]
 800268e:	9805      	ldr	r0, [sp, #20]
 8002690:	b057      	add	sp, #348	; 0x15c
 8002692:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002696:	f048 0820 	orr.w	r8, r8, #32
 800269a:	f89a 6000 	ldrb.w	r6, [sl]
 800269e:	e781      	b.n	80025a4 <_vfprintf_r+0xfc>
 80026a0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80026a4:	f003 021a 	and.w	r2, r3, #26
 80026a8:	2a0a      	cmp	r2, #10
 80026aa:	f47f af37 	bne.w	800251c <_vfprintf_r+0x74>
 80026ae:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80026b2:	2a00      	cmp	r2, #0
 80026b4:	f6ff af32 	blt.w	800251c <_vfprintf_r+0x74>
 80026b8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80026bc:	07d2      	lsls	r2, r2, #31
 80026be:	d405      	bmi.n	80026cc <_vfprintf_r+0x224>
 80026c0:	059b      	lsls	r3, r3, #22
 80026c2:	d403      	bmi.n	80026cc <_vfprintf_r+0x224>
 80026c4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80026c8:	f003 f8de 	bl	8005888 <__retarget_lock_release_recursive>
 80026cc:	4623      	mov	r3, r4
 80026ce:	463a      	mov	r2, r7
 80026d0:	4649      	mov	r1, r9
 80026d2:	9803      	ldr	r0, [sp, #12]
 80026d4:	f001 fc26 	bl	8003f24 <__sbprintf>
 80026d8:	9005      	str	r0, [sp, #20]
 80026da:	9805      	ldr	r0, [sp, #20]
 80026dc:	b057      	add	sp, #348	; 0x15c
 80026de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80026e2:	9803      	ldr	r0, [sp, #12]
 80026e4:	f002 fd7e 	bl	80051e4 <__sinit>
 80026e8:	e6f4      	b.n	80024d4 <_vfprintf_r+0x2c>
 80026ea:	f048 0810 	orr.w	r8, r8, #16
 80026ee:	f018 0f20 	tst.w	r8, #32
 80026f2:	f000 836c 	beq.w	8002dce <_vfprintf_r+0x926>
 80026f6:	9c08      	ldr	r4, [sp, #32]
 80026f8:	3407      	adds	r4, #7
 80026fa:	f024 0307 	bic.w	r3, r4, #7
 80026fe:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002702:	f103 0208 	add.w	r2, r3, #8
 8002706:	9208      	str	r2, [sp, #32]
 8002708:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800270c:	2200      	movs	r2, #0
 800270e:	e18c      	b.n	8002a2a <_vfprintf_r+0x582>
 8002710:	aa2a      	add	r2, sp, #168	; 0xa8
 8002712:	9907      	ldr	r1, [sp, #28]
 8002714:	9803      	ldr	r0, [sp, #12]
 8002716:	f004 f9f5 	bl	8006b04 <__sprint_r>
 800271a:	2800      	cmp	r0, #0
 800271c:	f041 8376 	bne.w	8003e0c <_vfprintf_r+0x1964>
 8002720:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002724:	e72c      	b.n	8002580 <_vfprintf_r+0xd8>
 8002726:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800272a:	f003 f8ab 	bl	8005884 <__retarget_lock_acquire_recursive>
 800272e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002732:	b293      	uxth	r3, r2
 8002734:	e6d8      	b.n	80024e8 <_vfprintf_r+0x40>
 8002736:	bf00      	nop
	...
 8002740:	4643      	mov	r3, r8
 8002742:	069f      	lsls	r7, r3, #26
 8002744:	f140 832f 	bpl.w	8002da6 <_vfprintf_r+0x8fe>
 8002748:	9c08      	ldr	r4, [sp, #32]
 800274a:	3407      	adds	r4, #7
 800274c:	f024 0407 	bic.w	r4, r4, #7
 8002750:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002754:	f104 0208 	add.w	r2, r4, #8
 8002758:	9208      	str	r2, [sp, #32]
 800275a:	4604      	mov	r4, r0
 800275c:	460d      	mov	r5, r1
 800275e:	2800      	cmp	r0, #0
 8002760:	f171 0200 	sbcs.w	r2, r1, #0
 8002764:	da05      	bge.n	8002772 <_vfprintf_r+0x2ca>
 8002766:	222d      	movs	r2, #45	; 0x2d
 8002768:	4264      	negs	r4, r4
 800276a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800276e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002772:	aa56      	add	r2, sp, #344	; 0x158
 8002774:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002778:	9204      	str	r2, [sp, #16]
 800277a:	f000 84b2 	beq.w	80030e2 <_vfprintf_r+0xc3a>
 800277e:	2201      	movs	r2, #1
 8002780:	ea54 0105 	orrs.w	r1, r4, r5
 8002784:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002788:	f040 8159 	bne.w	8002a3e <_vfprintf_r+0x596>
 800278c:	f1b9 0f00 	cmp.w	r9, #0
 8002790:	f040 8619 	bne.w	80033c6 <_vfprintf_r+0xf1e>
 8002794:	2a00      	cmp	r2, #0
 8002796:	f040 8508 	bne.w	80031aa <_vfprintf_r+0xd02>
 800279a:	f013 0301 	ands.w	r3, r3, #1
 800279e:	af56      	add	r7, sp, #344	; 0x158
 80027a0:	9309      	str	r3, [sp, #36]	; 0x24
 80027a2:	d002      	beq.n	80027aa <_vfprintf_r+0x302>
 80027a4:	2330      	movs	r3, #48	; 0x30
 80027a6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80027aa:	2300      	movs	r3, #0
 80027ac:	930a      	str	r3, [sp, #40]	; 0x28
 80027ae:	930f      	str	r3, [sp, #60]	; 0x3c
 80027b0:	9314      	str	r3, [sp, #80]	; 0x50
 80027b2:	9311      	str	r3, [sp, #68]	; 0x44
 80027b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80027b6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80027ba:	454b      	cmp	r3, r9
 80027bc:	bfb8      	it	lt
 80027be:	464b      	movlt	r3, r9
 80027c0:	9304      	str	r3, [sp, #16]
 80027c2:	b112      	cbz	r2, 80027ca <_vfprintf_r+0x322>
 80027c4:	9b04      	ldr	r3, [sp, #16]
 80027c6:	3301      	adds	r3, #1
 80027c8:	9304      	str	r3, [sp, #16]
 80027ca:	f018 0302 	ands.w	r3, r8, #2
 80027ce:	930b      	str	r3, [sp, #44]	; 0x2c
 80027d0:	d002      	beq.n	80027d8 <_vfprintf_r+0x330>
 80027d2:	9b04      	ldr	r3, [sp, #16]
 80027d4:	3302      	adds	r3, #2
 80027d6:	9304      	str	r3, [sp, #16]
 80027d8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80027dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80027de:	930e      	str	r3, [sp, #56]	; 0x38
 80027e0:	d13f      	bne.n	8002862 <_vfprintf_r+0x3ba>
 80027e2:	9b06      	ldr	r3, [sp, #24]
 80027e4:	9904      	ldr	r1, [sp, #16]
 80027e6:	1a5d      	subs	r5, r3, r1
 80027e8:	2d00      	cmp	r5, #0
 80027ea:	dd3a      	ble.n	8002862 <_vfprintf_r+0x3ba>
 80027ec:	2d10      	cmp	r5, #16
 80027ee:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80027f0:	dd29      	ble.n	8002846 <_vfprintf_r+0x39e>
 80027f2:	4659      	mov	r1, fp
 80027f4:	4620      	mov	r0, r4
 80027f6:	9620      	str	r6, [sp, #128]	; 0x80
 80027f8:	2310      	movs	r3, #16
 80027fa:	9c03      	ldr	r4, [sp, #12]
 80027fc:	9e07      	ldr	r6, [sp, #28]
 80027fe:	46bb      	mov	fp, r7
 8002800:	e004      	b.n	800280c <_vfprintf_r+0x364>
 8002802:	3d10      	subs	r5, #16
 8002804:	2d10      	cmp	r5, #16
 8002806:	f101 0108 	add.w	r1, r1, #8
 800280a:	dd18      	ble.n	800283e <_vfprintf_r+0x396>
 800280c:	3201      	adds	r2, #1
 800280e:	4fba      	ldr	r7, [pc, #744]	; (8002af8 <_vfprintf_r+0x650>)
 8002810:	3010      	adds	r0, #16
 8002812:	2a07      	cmp	r2, #7
 8002814:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002818:	e9c1 7300 	strd	r7, r3, [r1]
 800281c:	ddf1      	ble.n	8002802 <_vfprintf_r+0x35a>
 800281e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002820:	4631      	mov	r1, r6
 8002822:	4620      	mov	r0, r4
 8002824:	930c      	str	r3, [sp, #48]	; 0x30
 8002826:	f004 f96d 	bl	8006b04 <__sprint_r>
 800282a:	2800      	cmp	r0, #0
 800282c:	f040 843d 	bne.w	80030aa <_vfprintf_r+0xc02>
 8002830:	3d10      	subs	r5, #16
 8002832:	2d10      	cmp	r5, #16
 8002834:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002838:	a92d      	add	r1, sp, #180	; 0xb4
 800283a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800283c:	dce6      	bgt.n	800280c <_vfprintf_r+0x364>
 800283e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002840:	465f      	mov	r7, fp
 8002842:	4604      	mov	r4, r0
 8002844:	468b      	mov	fp, r1
 8002846:	3201      	adds	r2, #1
 8002848:	4bab      	ldr	r3, [pc, #684]	; (8002af8 <_vfprintf_r+0x650>)
 800284a:	442c      	add	r4, r5
 800284c:	2a07      	cmp	r2, #7
 800284e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002852:	e9cb 3500 	strd	r3, r5, [fp]
 8002856:	f300 84ff 	bgt.w	8003258 <_vfprintf_r+0xdb0>
 800285a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800285e:	f10b 0b08 	add.w	fp, fp, #8
 8002862:	b172      	cbz	r2, 8002882 <_vfprintf_r+0x3da>
 8002864:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002866:	3201      	adds	r2, #1
 8002868:	3401      	adds	r4, #1
 800286a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800286e:	2101      	movs	r1, #1
 8002870:	2a07      	cmp	r2, #7
 8002872:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002876:	e9cb 0100 	strd	r0, r1, [fp]
 800287a:	f300 8418 	bgt.w	80030ae <_vfprintf_r+0xc06>
 800287e:	f10b 0b08 	add.w	fp, fp, #8
 8002882:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002884:	b16b      	cbz	r3, 80028a2 <_vfprintf_r+0x3fa>
 8002886:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002888:	3301      	adds	r3, #1
 800288a:	3402      	adds	r4, #2
 800288c:	a923      	add	r1, sp, #140	; 0x8c
 800288e:	2202      	movs	r2, #2
 8002890:	2b07      	cmp	r3, #7
 8002892:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002896:	e9cb 1200 	strd	r1, r2, [fp]
 800289a:	f300 8415 	bgt.w	80030c8 <_vfprintf_r+0xc20>
 800289e:	f10b 0b08 	add.w	fp, fp, #8
 80028a2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80028a4:	2b80      	cmp	r3, #128	; 0x80
 80028a6:	f000 8331 	beq.w	8002f0c <_vfprintf_r+0xa64>
 80028aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80028ac:	eba9 0503 	sub.w	r5, r9, r3
 80028b0:	2d00      	cmp	r5, #0
 80028b2:	dd37      	ble.n	8002924 <_vfprintf_r+0x47c>
 80028b4:	2d10      	cmp	r5, #16
 80028b6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80028b8:	4b90      	ldr	r3, [pc, #576]	; (8002afc <_vfprintf_r+0x654>)
 80028ba:	dd28      	ble.n	800290e <_vfprintf_r+0x466>
 80028bc:	4659      	mov	r1, fp
 80028be:	4620      	mov	r0, r4
 80028c0:	46bb      	mov	fp, r7
 80028c2:	f04f 0910 	mov.w	r9, #16
 80028c6:	4637      	mov	r7, r6
 80028c8:	461c      	mov	r4, r3
 80028ca:	9e07      	ldr	r6, [sp, #28]
 80028cc:	e004      	b.n	80028d8 <_vfprintf_r+0x430>
 80028ce:	3d10      	subs	r5, #16
 80028d0:	2d10      	cmp	r5, #16
 80028d2:	f101 0108 	add.w	r1, r1, #8
 80028d6:	dd15      	ble.n	8002904 <_vfprintf_r+0x45c>
 80028d8:	3201      	adds	r2, #1
 80028da:	3010      	adds	r0, #16
 80028dc:	2a07      	cmp	r2, #7
 80028de:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80028e2:	e9c1 4900 	strd	r4, r9, [r1]
 80028e6:	ddf2      	ble.n	80028ce <_vfprintf_r+0x426>
 80028e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80028ea:	4631      	mov	r1, r6
 80028ec:	9803      	ldr	r0, [sp, #12]
 80028ee:	f004 f909 	bl	8006b04 <__sprint_r>
 80028f2:	2800      	cmp	r0, #0
 80028f4:	f040 83d9 	bne.w	80030aa <_vfprintf_r+0xc02>
 80028f8:	3d10      	subs	r5, #16
 80028fa:	2d10      	cmp	r5, #16
 80028fc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002900:	a92d      	add	r1, sp, #180	; 0xb4
 8002902:	dce9      	bgt.n	80028d8 <_vfprintf_r+0x430>
 8002904:	463e      	mov	r6, r7
 8002906:	4623      	mov	r3, r4
 8002908:	465f      	mov	r7, fp
 800290a:	4604      	mov	r4, r0
 800290c:	468b      	mov	fp, r1
 800290e:	3201      	adds	r2, #1
 8002910:	442c      	add	r4, r5
 8002912:	2a07      	cmp	r2, #7
 8002914:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002918:	e9cb 3500 	strd	r3, r5, [fp]
 800291c:	f300 83ef 	bgt.w	80030fe <_vfprintf_r+0xc56>
 8002920:	f10b 0b08 	add.w	fp, fp, #8
 8002924:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002928:	f040 8280 	bne.w	8002e2c <_vfprintf_r+0x984>
 800292c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800292e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002930:	f8cb 7000 	str.w	r7, [fp]
 8002934:	3301      	adds	r3, #1
 8002936:	4414      	add	r4, r2
 8002938:	2b07      	cmp	r3, #7
 800293a:	942c      	str	r4, [sp, #176]	; 0xb0
 800293c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002940:	932b      	str	r3, [sp, #172]	; 0xac
 8002942:	f300 8392 	bgt.w	800306a <_vfprintf_r+0xbc2>
 8002946:	f10b 0b08 	add.w	fp, fp, #8
 800294a:	f018 0f04 	tst.w	r8, #4
 800294e:	d03b      	beq.n	80029c8 <_vfprintf_r+0x520>
 8002950:	9b06      	ldr	r3, [sp, #24]
 8002952:	9a04      	ldr	r2, [sp, #16]
 8002954:	1a9d      	subs	r5, r3, r2
 8002956:	2d00      	cmp	r5, #0
 8002958:	dd36      	ble.n	80029c8 <_vfprintf_r+0x520>
 800295a:	2d10      	cmp	r5, #16
 800295c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800295e:	dd21      	ble.n	80029a4 <_vfprintf_r+0x4fc>
 8002960:	2610      	movs	r6, #16
 8002962:	9f03      	ldr	r7, [sp, #12]
 8002964:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002968:	e004      	b.n	8002974 <_vfprintf_r+0x4cc>
 800296a:	3d10      	subs	r5, #16
 800296c:	2d10      	cmp	r5, #16
 800296e:	f10b 0b08 	add.w	fp, fp, #8
 8002972:	dd17      	ble.n	80029a4 <_vfprintf_r+0x4fc>
 8002974:	3301      	adds	r3, #1
 8002976:	4a60      	ldr	r2, [pc, #384]	; (8002af8 <_vfprintf_r+0x650>)
 8002978:	3410      	adds	r4, #16
 800297a:	2b07      	cmp	r3, #7
 800297c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002980:	e9cb 2600 	strd	r2, r6, [fp]
 8002984:	ddf1      	ble.n	800296a <_vfprintf_r+0x4c2>
 8002986:	aa2a      	add	r2, sp, #168	; 0xa8
 8002988:	4641      	mov	r1, r8
 800298a:	4638      	mov	r0, r7
 800298c:	f004 f8ba 	bl	8006b04 <__sprint_r>
 8002990:	2800      	cmp	r0, #0
 8002992:	f040 856c 	bne.w	800346e <_vfprintf_r+0xfc6>
 8002996:	3d10      	subs	r5, #16
 8002998:	2d10      	cmp	r5, #16
 800299a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800299e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80029a2:	dce7      	bgt.n	8002974 <_vfprintf_r+0x4cc>
 80029a4:	3301      	adds	r3, #1
 80029a6:	4a54      	ldr	r2, [pc, #336]	; (8002af8 <_vfprintf_r+0x650>)
 80029a8:	442c      	add	r4, r5
 80029aa:	2b07      	cmp	r3, #7
 80029ac:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80029b0:	e9cb 2500 	strd	r2, r5, [fp]
 80029b4:	dd08      	ble.n	80029c8 <_vfprintf_r+0x520>
 80029b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80029b8:	9907      	ldr	r1, [sp, #28]
 80029ba:	9803      	ldr	r0, [sp, #12]
 80029bc:	f004 f8a2 	bl	8006b04 <__sprint_r>
 80029c0:	2800      	cmp	r0, #0
 80029c2:	f040 82e9 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 80029c6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80029c8:	9904      	ldr	r1, [sp, #16]
 80029ca:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80029ce:	428a      	cmp	r2, r1
 80029d0:	bfac      	ite	ge
 80029d2:	189b      	addge	r3, r3, r2
 80029d4:	185b      	addlt	r3, r3, r1
 80029d6:	9305      	str	r3, [sp, #20]
 80029d8:	2c00      	cmp	r4, #0
 80029da:	f040 82d5 	bne.w	8002f88 <_vfprintf_r+0xae0>
 80029de:	2300      	movs	r3, #0
 80029e0:	932b      	str	r3, [sp, #172]	; 0xac
 80029e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80029e4:	b11b      	cbz	r3, 80029ee <_vfprintf_r+0x546>
 80029e6:	990a      	ldr	r1, [sp, #40]	; 0x28
 80029e8:	9803      	ldr	r0, [sp, #12]
 80029ea:	f002 fc9d 	bl	8005328 <_free_r>
 80029ee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80029f2:	4657      	mov	r7, sl
 80029f4:	783b      	ldrb	r3, [r7, #0]
 80029f6:	2b00      	cmp	r3, #0
 80029f8:	f47f ada7 	bne.w	800254a <_vfprintf_r+0xa2>
 80029fc:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80029fe:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002a02:	2b00      	cmp	r3, #0
 8002a04:	f041 80e7 	bne.w	8003bd6 <_vfprintf_r+0x172e>
 8002a08:	2300      	movs	r3, #0
 8002a0a:	932b      	str	r3, [sp, #172]	; 0xac
 8002a0c:	e2cb      	b.n	8002fa6 <_vfprintf_r+0xafe>
 8002a0e:	4643      	mov	r3, r8
 8002a10:	069a      	lsls	r2, r3, #26
 8002a12:	f140 814e 	bpl.w	8002cb2 <_vfprintf_r+0x80a>
 8002a16:	9c08      	ldr	r4, [sp, #32]
 8002a18:	3407      	adds	r4, #7
 8002a1a:	f024 0207 	bic.w	r2, r4, #7
 8002a1e:	f102 0108 	add.w	r1, r2, #8
 8002a22:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002a26:	9108      	str	r1, [sp, #32]
 8002a28:	2201      	movs	r2, #1
 8002a2a:	2100      	movs	r1, #0
 8002a2c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002a30:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a34:	a956      	add	r1, sp, #344	; 0x158
 8002a36:	9104      	str	r1, [sp, #16]
 8002a38:	f47f aea2 	bne.w	8002780 <_vfprintf_r+0x2d8>
 8002a3c:	4698      	mov	r8, r3
 8002a3e:	2a01      	cmp	r2, #1
 8002a40:	f000 8350 	beq.w	80030e4 <_vfprintf_r+0xc3c>
 8002a44:	2a02      	cmp	r2, #2
 8002a46:	f000 831b 	beq.w	8003080 <_vfprintf_r+0xbd8>
 8002a4a:	a956      	add	r1, sp, #344	; 0x158
 8002a4c:	e000      	b.n	8002a50 <_vfprintf_r+0x5a8>
 8002a4e:	4639      	mov	r1, r7
 8002a50:	08e2      	lsrs	r2, r4, #3
 8002a52:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002a56:	08e8      	lsrs	r0, r5, #3
 8002a58:	f004 0307 	and.w	r3, r4, #7
 8002a5c:	4605      	mov	r5, r0
 8002a5e:	4614      	mov	r4, r2
 8002a60:	3330      	adds	r3, #48	; 0x30
 8002a62:	ea54 0205 	orrs.w	r2, r4, r5
 8002a66:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002a6a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002a6e:	d1ee      	bne.n	8002a4e <_vfprintf_r+0x5a6>
 8002a70:	f018 0f01 	tst.w	r8, #1
 8002a74:	f000 8314 	beq.w	80030a0 <_vfprintf_r+0xbf8>
 8002a78:	2b30      	cmp	r3, #48	; 0x30
 8002a7a:	f000 8311 	beq.w	80030a0 <_vfprintf_r+0xbf8>
 8002a7e:	9a04      	ldr	r2, [sp, #16]
 8002a80:	3902      	subs	r1, #2
 8002a82:	2330      	movs	r3, #48	; 0x30
 8002a84:	1a52      	subs	r2, r2, r1
 8002a86:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002a8a:	9209      	str	r2, [sp, #36]	; 0x24
 8002a8c:	460f      	mov	r7, r1
 8002a8e:	e68c      	b.n	80027aa <_vfprintf_r+0x302>
 8002a90:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a94:	2200      	movs	r2, #0
 8002a96:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a9a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002a9e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002aa2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002aa6:	2b09      	cmp	r3, #9
 8002aa8:	d9f5      	bls.n	8002a96 <_vfprintf_r+0x5ee>
 8002aaa:	9206      	str	r2, [sp, #24]
 8002aac:	e57c      	b.n	80025a8 <_vfprintf_r+0x100>
 8002aae:	4b14      	ldr	r3, [pc, #80]	; (8002b00 <_vfprintf_r+0x658>)
 8002ab0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002ab2:	f018 0f20 	tst.w	r8, #32
 8002ab6:	f000 8114 	beq.w	8002ce2 <_vfprintf_r+0x83a>
 8002aba:	9c08      	ldr	r4, [sp, #32]
 8002abc:	3407      	adds	r4, #7
 8002abe:	f024 0307 	bic.w	r3, r4, #7
 8002ac2:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002ac6:	f103 0208 	add.w	r2, r3, #8
 8002aca:	9208      	str	r2, [sp, #32]
 8002acc:	f018 0f01 	tst.w	r8, #1
 8002ad0:	d009      	beq.n	8002ae6 <_vfprintf_r+0x63e>
 8002ad2:	ea54 0305 	orrs.w	r3, r4, r5
 8002ad6:	d006      	beq.n	8002ae6 <_vfprintf_r+0x63e>
 8002ad8:	2330      	movs	r3, #48	; 0x30
 8002ada:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002ade:	f048 0802 	orr.w	r8, r8, #2
 8002ae2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002ae6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002aea:	2202      	movs	r2, #2
 8002aec:	e79d      	b.n	8002a2a <_vfprintf_r+0x582>
 8002aee:	f048 0801 	orr.w	r8, r8, #1
 8002af2:	f89a 6000 	ldrb.w	r6, [sl]
 8002af6:	e555      	b.n	80025a4 <_vfprintf_r+0xfc>
 8002af8:	080071e4 	.word	0x080071e4
 8002afc:	080071f4 	.word	0x080071f4
 8002b00:	080071b0 	.word	0x080071b0
 8002b04:	9e03      	ldr	r6, [sp, #12]
 8002b06:	4630      	mov	r0, r6
 8002b08:	f002 feaa 	bl	8005860 <_localeconv_r>
 8002b0c:	6843      	ldr	r3, [r0, #4]
 8002b0e:	9318      	str	r3, [sp, #96]	; 0x60
 8002b10:	4618      	mov	r0, r3
 8002b12:	f7fd fd95 	bl	8000640 <strlen>
 8002b16:	901b      	str	r0, [sp, #108]	; 0x6c
 8002b18:	4604      	mov	r4, r0
 8002b1a:	4630      	mov	r0, r6
 8002b1c:	f002 fea0 	bl	8005860 <_localeconv_r>
 8002b20:	6883      	ldr	r3, [r0, #8]
 8002b22:	931a      	str	r3, [sp, #104]	; 0x68
 8002b24:	2c00      	cmp	r4, #0
 8002b26:	f43f adb8 	beq.w	800269a <_vfprintf_r+0x1f2>
 8002b2a:	f89a 6000 	ldrb.w	r6, [sl]
 8002b2e:	2b00      	cmp	r3, #0
 8002b30:	f43f ad38 	beq.w	80025a4 <_vfprintf_r+0xfc>
 8002b34:	781b      	ldrb	r3, [r3, #0]
 8002b36:	2b00      	cmp	r3, #0
 8002b38:	f43f ad34 	beq.w	80025a4 <_vfprintf_r+0xfc>
 8002b3c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002b40:	e530      	b.n	80025a4 <_vfprintf_r+0xfc>
 8002b42:	9b08      	ldr	r3, [sp, #32]
 8002b44:	f89a 6000 	ldrb.w	r6, [sl]
 8002b48:	681a      	ldr	r2, [r3, #0]
 8002b4a:	9206      	str	r2, [sp, #24]
 8002b4c:	2a00      	cmp	r2, #0
 8002b4e:	f103 0304 	add.w	r3, r3, #4
 8002b52:	f2c0 8697 	blt.w	8003884 <_vfprintf_r+0x13dc>
 8002b56:	9308      	str	r3, [sp, #32]
 8002b58:	e524      	b.n	80025a4 <_vfprintf_r+0xfc>
 8002b5a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002b5e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b62:	e51f      	b.n	80025a4 <_vfprintf_r+0xfc>
 8002b64:	f89a 6000 	ldrb.w	r6, [sl]
 8002b68:	f048 0804 	orr.w	r8, r8, #4
 8002b6c:	e51a      	b.n	80025a4 <_vfprintf_r+0xfc>
 8002b6e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b72:	2e2a      	cmp	r6, #42	; 0x2a
 8002b74:	f10a 0201 	add.w	r2, sl, #1
 8002b78:	f001 81b0 	beq.w	8003edc <_vfprintf_r+0x1a34>
 8002b7c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b80:	2b09      	cmp	r3, #9
 8002b82:	4692      	mov	sl, r2
 8002b84:	f04f 0900 	mov.w	r9, #0
 8002b88:	f63f ad0e 	bhi.w	80025a8 <_vfprintf_r+0x100>
 8002b8c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b90:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002b94:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002b98:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b9c:	2b09      	cmp	r3, #9
 8002b9e:	d9f5      	bls.n	8002b8c <_vfprintf_r+0x6e4>
 8002ba0:	e502      	b.n	80025a8 <_vfprintf_r+0x100>
 8002ba2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002ba6:	f89a 6000 	ldrb.w	r6, [sl]
 8002baa:	e4fb      	b.n	80025a4 <_vfprintf_r+0xfc>
 8002bac:	9c08      	ldr	r4, [sp, #32]
 8002bae:	3407      	adds	r4, #7
 8002bb0:	f024 0407 	bic.w	r4, r4, #7
 8002bb4:	ed94 7b00 	vldr	d7, [r4]
 8002bb8:	ec52 1b17 	vmov	r1, r2, d7
 8002bbc:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002bc0:	931d      	str	r3, [sp, #116]	; 0x74
 8002bc2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002bc6:	3408      	adds	r4, #8
 8002bc8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002bcc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002bd0:	4bba      	ldr	r3, [pc, #744]	; (8002ebc <_vfprintf_r+0xa14>)
 8002bd2:	9408      	str	r4, [sp, #32]
 8002bd4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002bd8:	f7fe fa48 	bl	800106c <__aeabi_dcmpun>
 8002bdc:	2800      	cmp	r0, #0
 8002bde:	f040 846f 	bne.w	80034c0 <_vfprintf_r+0x1018>
 8002be2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002be6:	4bb5      	ldr	r3, [pc, #724]	; (8002ebc <_vfprintf_r+0xa14>)
 8002be8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002bec:	f7fe fa20 	bl	8001030 <__aeabi_dcmple>
 8002bf0:	2800      	cmp	r0, #0
 8002bf2:	f040 8465 	bne.w	80034c0 <_vfprintf_r+0x1018>
 8002bf6:	2200      	movs	r2, #0
 8002bf8:	2300      	movs	r3, #0
 8002bfa:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002bfe:	f7fe fa0d 	bl	800101c <__aeabi_dcmplt>
 8002c02:	2800      	cmp	r0, #0
 8002c04:	f040 855b 	bne.w	80036be <_vfprintf_r+0x1216>
 8002c08:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c0c:	4fac      	ldr	r7, [pc, #688]	; (8002ec0 <_vfprintf_r+0xa18>)
 8002c0e:	4bad      	ldr	r3, [pc, #692]	; (8002ec4 <_vfprintf_r+0xa1c>)
 8002c10:	2000      	movs	r0, #0
 8002c12:	2103      	movs	r1, #3
 8002c14:	9104      	str	r1, [sp, #16]
 8002c16:	900a      	str	r0, [sp, #40]	; 0x28
 8002c18:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002c1c:	2e47      	cmp	r6, #71	; 0x47
 8002c1e:	bfd8      	it	le
 8002c20:	461f      	movle	r7, r3
 8002c22:	9109      	str	r1, [sp, #36]	; 0x24
 8002c24:	4681      	mov	r9, r0
 8002c26:	900f      	str	r0, [sp, #60]	; 0x3c
 8002c28:	9014      	str	r0, [sp, #80]	; 0x50
 8002c2a:	9011      	str	r0, [sp, #68]	; 0x44
 8002c2c:	e5c9      	b.n	80027c2 <_vfprintf_r+0x31a>
 8002c2e:	9808      	ldr	r0, [sp, #32]
 8002c30:	2300      	movs	r3, #0
 8002c32:	6801      	ldr	r1, [r0, #0]
 8002c34:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c38:	461a      	mov	r2, r3
 8002c3a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002c3e:	2301      	movs	r3, #1
 8002c40:	1d01      	adds	r1, r0, #4
 8002c42:	9304      	str	r3, [sp, #16]
 8002c44:	920a      	str	r2, [sp, #40]	; 0x28
 8002c46:	4691      	mov	r9, r2
 8002c48:	920f      	str	r2, [sp, #60]	; 0x3c
 8002c4a:	9214      	str	r2, [sp, #80]	; 0x50
 8002c4c:	9211      	str	r2, [sp, #68]	; 0x44
 8002c4e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002c52:	af3d      	add	r7, sp, #244	; 0xf4
 8002c54:	e5b9      	b.n	80027ca <_vfprintf_r+0x322>
 8002c56:	9b08      	ldr	r3, [sp, #32]
 8002c58:	681f      	ldr	r7, [r3, #0]
 8002c5a:	2500      	movs	r5, #0
 8002c5c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002c60:	1d1c      	adds	r4, r3, #4
 8002c62:	2f00      	cmp	r7, #0
 8002c64:	f000 8639 	beq.w	80038da <_vfprintf_r+0x1432>
 8002c68:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c6c:	f000 8711 	beq.w	8003a92 <_vfprintf_r+0x15ea>
 8002c70:	464a      	mov	r2, r9
 8002c72:	4629      	mov	r1, r5
 8002c74:	4638      	mov	r0, r7
 8002c76:	f7fd fd53 	bl	8000720 <memchr>
 8002c7a:	900a      	str	r0, [sp, #40]	; 0x28
 8002c7c:	2800      	cmp	r0, #0
 8002c7e:	f000 85e7 	beq.w	8003850 <_vfprintf_r+0x13a8>
 8002c82:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c84:	1bdb      	subs	r3, r3, r7
 8002c86:	9309      	str	r3, [sp, #36]	; 0x24
 8002c88:	46a9      	mov	r9, r5
 8002c8a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002c8e:	9408      	str	r4, [sp, #32]
 8002c90:	9304      	str	r3, [sp, #16]
 8002c92:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002c96:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002c9a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002c9e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002ca2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002ca6:	e58c      	b.n	80027c2 <_vfprintf_r+0x31a>
 8002ca8:	f048 0310 	orr.w	r3, r8, #16
 8002cac:	069a      	lsls	r2, r3, #26
 8002cae:	f53f aeb2 	bmi.w	8002a16 <_vfprintf_r+0x56e>
 8002cb2:	9a08      	ldr	r2, [sp, #32]
 8002cb4:	06df      	lsls	r7, r3, #27
 8002cb6:	f102 0104 	add.w	r1, r2, #4
 8002cba:	f100 837e 	bmi.w	80033ba <_vfprintf_r+0xf12>
 8002cbe:	065d      	lsls	r5, r3, #25
 8002cc0:	9a08      	ldr	r2, [sp, #32]
 8002cc2:	f100 84e4 	bmi.w	800368e <_vfprintf_r+0x11e6>
 8002cc6:	059c      	lsls	r4, r3, #22
 8002cc8:	f140 8377 	bpl.w	80033ba <_vfprintf_r+0xf12>
 8002ccc:	7814      	ldrb	r4, [r2, #0]
 8002cce:	9108      	str	r1, [sp, #32]
 8002cd0:	2500      	movs	r5, #0
 8002cd2:	2201      	movs	r2, #1
 8002cd4:	e6a9      	b.n	8002a2a <_vfprintf_r+0x582>
 8002cd6:	4b7c      	ldr	r3, [pc, #496]	; (8002ec8 <_vfprintf_r+0xa20>)
 8002cd8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002cda:	f018 0f20 	tst.w	r8, #32
 8002cde:	f47f aeec 	bne.w	8002aba <_vfprintf_r+0x612>
 8002ce2:	9a08      	ldr	r2, [sp, #32]
 8002ce4:	f018 0f10 	tst.w	r8, #16
 8002ce8:	f102 0304 	add.w	r3, r2, #4
 8002cec:	f040 8354 	bne.w	8003398 <_vfprintf_r+0xef0>
 8002cf0:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002cf4:	9a08      	ldr	r2, [sp, #32]
 8002cf6:	f040 84d0 	bne.w	800369a <_vfprintf_r+0x11f2>
 8002cfa:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002cfe:	f000 834b 	beq.w	8003398 <_vfprintf_r+0xef0>
 8002d02:	7814      	ldrb	r4, [r2, #0]
 8002d04:	9308      	str	r3, [sp, #32]
 8002d06:	2500      	movs	r5, #0
 8002d08:	e6e0      	b.n	8002acc <_vfprintf_r+0x624>
 8002d0a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002d0e:	f89a 6000 	ldrb.w	r6, [sl]
 8002d12:	2b00      	cmp	r3, #0
 8002d14:	f47f ac46 	bne.w	80025a4 <_vfprintf_r+0xfc>
 8002d18:	2320      	movs	r3, #32
 8002d1a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002d1e:	e441      	b.n	80025a4 <_vfprintf_r+0xfc>
 8002d20:	f89a 6000 	ldrb.w	r6, [sl]
 8002d24:	2e6c      	cmp	r6, #108	; 0x6c
 8002d26:	bf03      	ittte	eq
 8002d28:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d2c:	f048 0820 	orreq.w	r8, r8, #32
 8002d30:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d34:	f048 0810 	orrne.w	r8, r8, #16
 8002d38:	e434      	b.n	80025a4 <_vfprintf_r+0xfc>
 8002d3a:	9a08      	ldr	r2, [sp, #32]
 8002d3c:	f018 0f20 	tst.w	r8, #32
 8002d40:	f852 3b04 	ldr.w	r3, [r2], #4
 8002d44:	9208      	str	r2, [sp, #32]
 8002d46:	f000 83a1 	beq.w	800348c <_vfprintf_r+0xfe4>
 8002d4a:	9a05      	ldr	r2, [sp, #20]
 8002d4c:	4610      	mov	r0, r2
 8002d4e:	17d1      	asrs	r1, r2, #31
 8002d50:	e9c3 0100 	strd	r0, r1, [r3]
 8002d54:	4657      	mov	r7, sl
 8002d56:	e64d      	b.n	80029f4 <_vfprintf_r+0x54c>
 8002d58:	f89a 6000 	ldrb.w	r6, [sl]
 8002d5c:	2e68      	cmp	r6, #104	; 0x68
 8002d5e:	bf03      	ittte	eq
 8002d60:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d64:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002d68:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d6c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002d70:	e418      	b.n	80025a4 <_vfprintf_r+0xfc>
 8002d72:	9908      	ldr	r1, [sp, #32]
 8002d74:	4b55      	ldr	r3, [pc, #340]	; (8002ecc <_vfprintf_r+0xa24>)
 8002d76:	680c      	ldr	r4, [r1, #0]
 8002d78:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d7a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002d7e:	3104      	adds	r1, #4
 8002d80:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002d84:	f048 0302 	orr.w	r3, r8, #2
 8002d88:	9108      	str	r1, [sp, #32]
 8002d8a:	2500      	movs	r5, #0
 8002d8c:	2202      	movs	r2, #2
 8002d8e:	2678      	movs	r6, #120	; 0x78
 8002d90:	e64b      	b.n	8002a2a <_vfprintf_r+0x582>
 8002d92:	f048 0808 	orr.w	r8, r8, #8
 8002d96:	f89a 6000 	ldrb.w	r6, [sl]
 8002d9a:	e403      	b.n	80025a4 <_vfprintf_r+0xfc>
 8002d9c:	f048 0310 	orr.w	r3, r8, #16
 8002da0:	069f      	lsls	r7, r3, #26
 8002da2:	f53f acd1 	bmi.w	8002748 <_vfprintf_r+0x2a0>
 8002da6:	9908      	ldr	r1, [sp, #32]
 8002da8:	06dd      	lsls	r5, r3, #27
 8002daa:	f101 0204 	add.w	r2, r1, #4
 8002dae:	f100 82fd 	bmi.w	80033ac <_vfprintf_r+0xf04>
 8002db2:	065c      	lsls	r4, r3, #25
 8002db4:	9908      	ldr	r1, [sp, #32]
 8002db6:	f100 8475 	bmi.w	80036a4 <_vfprintf_r+0x11fc>
 8002dba:	0598      	lsls	r0, r3, #22
 8002dbc:	f140 82f6 	bpl.w	80033ac <_vfprintf_r+0xf04>
 8002dc0:	f991 4000 	ldrsb.w	r4, [r1]
 8002dc4:	9208      	str	r2, [sp, #32]
 8002dc6:	17e5      	asrs	r5, r4, #31
 8002dc8:	4620      	mov	r0, r4
 8002dca:	4629      	mov	r1, r5
 8002dcc:	e4c7      	b.n	800275e <_vfprintf_r+0x2b6>
 8002dce:	9a08      	ldr	r2, [sp, #32]
 8002dd0:	f018 0f10 	tst.w	r8, #16
 8002dd4:	f102 0304 	add.w	r3, r2, #4
 8002dd8:	f040 82e3 	bne.w	80033a2 <_vfprintf_r+0xefa>
 8002ddc:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002de0:	9a08      	ldr	r2, [sp, #32]
 8002de2:	f040 8467 	bne.w	80036b4 <_vfprintf_r+0x120c>
 8002de6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002dea:	f000 82da 	beq.w	80033a2 <_vfprintf_r+0xefa>
 8002dee:	7814      	ldrb	r4, [r2, #0]
 8002df0:	9308      	str	r3, [sp, #32]
 8002df2:	2500      	movs	r5, #0
 8002df4:	e488      	b.n	8002708 <_vfprintf_r+0x260>
 8002df6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002dfa:	f002 fd45 	bl	8005888 <__retarget_lock_release_recursive>
 8002dfe:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002e02:	9305      	str	r3, [sp, #20]
 8002e04:	e443      	b.n	800268e <_vfprintf_r+0x1e6>
 8002e06:	2e00      	cmp	r6, #0
 8002e08:	f43f adf8 	beq.w	80029fc <_vfprintf_r+0x554>
 8002e0c:	2300      	movs	r3, #0
 8002e0e:	2101      	movs	r1, #1
 8002e10:	461a      	mov	r2, r3
 8002e12:	9104      	str	r1, [sp, #16]
 8002e14:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002e18:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002e1c:	930a      	str	r3, [sp, #40]	; 0x28
 8002e1e:	4699      	mov	r9, r3
 8002e20:	930f      	str	r3, [sp, #60]	; 0x3c
 8002e22:	9314      	str	r3, [sp, #80]	; 0x50
 8002e24:	9311      	str	r3, [sp, #68]	; 0x44
 8002e26:	9109      	str	r1, [sp, #36]	; 0x24
 8002e28:	af3d      	add	r7, sp, #244	; 0xf4
 8002e2a:	e4ce      	b.n	80027ca <_vfprintf_r+0x322>
 8002e2c:	2e65      	cmp	r6, #101	; 0x65
 8002e2e:	f340 80ca 	ble.w	8002fc6 <_vfprintf_r+0xb1e>
 8002e32:	2200      	movs	r2, #0
 8002e34:	2300      	movs	r3, #0
 8002e36:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e3a:	f7fe f8e5 	bl	8001008 <__aeabi_dcmpeq>
 8002e3e:	2800      	cmp	r0, #0
 8002e40:	f000 8169 	beq.w	8003116 <_vfprintf_r+0xc6e>
 8002e44:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e46:	4a22      	ldr	r2, [pc, #136]	; (8002ed0 <_vfprintf_r+0xa28>)
 8002e48:	f8cb 2000 	str.w	r2, [fp]
 8002e4c:	3301      	adds	r3, #1
 8002e4e:	3401      	adds	r4, #1
 8002e50:	2201      	movs	r2, #1
 8002e52:	2b07      	cmp	r3, #7
 8002e54:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e58:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e5c:	f300 8406 	bgt.w	800366c <_vfprintf_r+0x11c4>
 8002e60:	f10b 0b08 	add.w	fp, fp, #8
 8002e64:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002e66:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e68:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e6a:	4293      	cmp	r3, r2
 8002e6c:	db03      	blt.n	8002e76 <_vfprintf_r+0x9ce>
 8002e6e:	f018 0f01 	tst.w	r8, #1
 8002e72:	f43f ad6a 	beq.w	800294a <_vfprintf_r+0x4a2>
 8002e76:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e78:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e7a:	f8cb 2000 	str.w	r2, [fp]
 8002e7e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002e80:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e84:	3301      	adds	r3, #1
 8002e86:	4414      	add	r4, r2
 8002e88:	2b07      	cmp	r3, #7
 8002e8a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e8e:	f300 8517 	bgt.w	80038c0 <_vfprintf_r+0x1418>
 8002e92:	f10b 0b08 	add.w	fp, fp, #8
 8002e96:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002e98:	1e5d      	subs	r5, r3, #1
 8002e9a:	2d00      	cmp	r5, #0
 8002e9c:	f77f ad55 	ble.w	800294a <_vfprintf_r+0x4a2>
 8002ea0:	2d10      	cmp	r5, #16
 8002ea2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ea4:	4b0b      	ldr	r3, [pc, #44]	; (8002ed4 <_vfprintf_r+0xa2c>)
 8002ea6:	f340 82e7 	ble.w	8003478 <_vfprintf_r+0xfd0>
 8002eaa:	4619      	mov	r1, r3
 8002eac:	2610      	movs	r6, #16
 8002eae:	4623      	mov	r3, r4
 8002eb0:	9f03      	ldr	r7, [sp, #12]
 8002eb2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002eb6:	460c      	mov	r4, r1
 8002eb8:	e014      	b.n	8002ee4 <_vfprintf_r+0xa3c>
 8002eba:	bf00      	nop
 8002ebc:	7fefffff 	.word	0x7fefffff
 8002ec0:	080071a4 	.word	0x080071a4
 8002ec4:	080071a0 	.word	0x080071a0
 8002ec8:	080071c4 	.word	0x080071c4
 8002ecc:	080071b0 	.word	0x080071b0
 8002ed0:	080071e0 	.word	0x080071e0
 8002ed4:	080071f4 	.word	0x080071f4
 8002ed8:	f10b 0b08 	add.w	fp, fp, #8
 8002edc:	3d10      	subs	r5, #16
 8002ede:	2d10      	cmp	r5, #16
 8002ee0:	f340 82c7 	ble.w	8003472 <_vfprintf_r+0xfca>
 8002ee4:	3201      	adds	r2, #1
 8002ee6:	3310      	adds	r3, #16
 8002ee8:	2a07      	cmp	r2, #7
 8002eea:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002eee:	e9cb 4600 	strd	r4, r6, [fp]
 8002ef2:	ddf1      	ble.n	8002ed8 <_vfprintf_r+0xa30>
 8002ef4:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ef6:	4649      	mov	r1, r9
 8002ef8:	4638      	mov	r0, r7
 8002efa:	f003 fe03 	bl	8006b04 <__sprint_r>
 8002efe:	2800      	cmp	r0, #0
 8002f00:	d14c      	bne.n	8002f9c <_vfprintf_r+0xaf4>
 8002f02:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002f06:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f0a:	e7e7      	b.n	8002edc <_vfprintf_r+0xa34>
 8002f0c:	9b06      	ldr	r3, [sp, #24]
 8002f0e:	9a04      	ldr	r2, [sp, #16]
 8002f10:	1a9d      	subs	r5, r3, r2
 8002f12:	2d00      	cmp	r5, #0
 8002f14:	f77f acc9 	ble.w	80028aa <_vfprintf_r+0x402>
 8002f18:	2d10      	cmp	r5, #16
 8002f1a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f1c:	4bbc      	ldr	r3, [pc, #752]	; (8003210 <_vfprintf_r+0xd68>)
 8002f1e:	dd27      	ble.n	8002f70 <_vfprintf_r+0xac8>
 8002f20:	4659      	mov	r1, fp
 8002f22:	4620      	mov	r0, r4
 8002f24:	46bb      	mov	fp, r7
 8002f26:	461c      	mov	r4, r3
 8002f28:	4637      	mov	r7, r6
 8002f2a:	9e07      	ldr	r6, [sp, #28]
 8002f2c:	e004      	b.n	8002f38 <_vfprintf_r+0xa90>
 8002f2e:	3d10      	subs	r5, #16
 8002f30:	2d10      	cmp	r5, #16
 8002f32:	f101 0108 	add.w	r1, r1, #8
 8002f36:	dd16      	ble.n	8002f66 <_vfprintf_r+0xabe>
 8002f38:	3201      	adds	r2, #1
 8002f3a:	3010      	adds	r0, #16
 8002f3c:	2310      	movs	r3, #16
 8002f3e:	2a07      	cmp	r2, #7
 8002f40:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002f44:	600c      	str	r4, [r1, #0]
 8002f46:	604b      	str	r3, [r1, #4]
 8002f48:	ddf1      	ble.n	8002f2e <_vfprintf_r+0xa86>
 8002f4a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f4c:	4631      	mov	r1, r6
 8002f4e:	9803      	ldr	r0, [sp, #12]
 8002f50:	f003 fdd8 	bl	8006b04 <__sprint_r>
 8002f54:	2800      	cmp	r0, #0
 8002f56:	f040 80a8 	bne.w	80030aa <_vfprintf_r+0xc02>
 8002f5a:	3d10      	subs	r5, #16
 8002f5c:	2d10      	cmp	r5, #16
 8002f5e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002f62:	a92d      	add	r1, sp, #180	; 0xb4
 8002f64:	dce8      	bgt.n	8002f38 <_vfprintf_r+0xa90>
 8002f66:	463e      	mov	r6, r7
 8002f68:	4623      	mov	r3, r4
 8002f6a:	465f      	mov	r7, fp
 8002f6c:	4604      	mov	r4, r0
 8002f6e:	468b      	mov	fp, r1
 8002f70:	3201      	adds	r2, #1
 8002f72:	442c      	add	r4, r5
 8002f74:	2a07      	cmp	r2, #7
 8002f76:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f7a:	e9cb 3500 	strd	r3, r5, [fp]
 8002f7e:	f300 8292 	bgt.w	80034a6 <_vfprintf_r+0xffe>
 8002f82:	f10b 0b08 	add.w	fp, fp, #8
 8002f86:	e490      	b.n	80028aa <_vfprintf_r+0x402>
 8002f88:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f8a:	9907      	ldr	r1, [sp, #28]
 8002f8c:	9803      	ldr	r0, [sp, #12]
 8002f8e:	f003 fdb9 	bl	8006b04 <__sprint_r>
 8002f92:	2800      	cmp	r0, #0
 8002f94:	f43f ad23 	beq.w	80029de <_vfprintf_r+0x536>
 8002f98:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f9c:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f9e:	b111      	cbz	r1, 8002fa6 <_vfprintf_r+0xafe>
 8002fa0:	9803      	ldr	r0, [sp, #12]
 8002fa2:	f002 f9c1 	bl	8005328 <_free_r>
 8002fa6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002faa:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002fae:	07d0      	lsls	r0, r2, #31
 8002fb0:	d402      	bmi.n	8002fb8 <_vfprintf_r+0xb10>
 8002fb2:	0599      	lsls	r1, r3, #22
 8002fb4:	f140 81d0 	bpl.w	8003358 <_vfprintf_r+0xeb0>
 8002fb8:	065a      	lsls	r2, r3, #25
 8002fba:	f53f ab65 	bmi.w	8002688 <_vfprintf_r+0x1e0>
 8002fbe:	9805      	ldr	r0, [sp, #20]
 8002fc0:	b057      	add	sp, #348	; 0x15c
 8002fc2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002fc6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002fc8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002fca:	2a01      	cmp	r2, #1
 8002fcc:	f104 0401 	add.w	r4, r4, #1
 8002fd0:	f103 0501 	add.w	r5, r3, #1
 8002fd4:	f10b 0608 	add.w	r6, fp, #8
 8002fd8:	f340 811c 	ble.w	8003214 <_vfprintf_r+0xd6c>
 8002fdc:	2301      	movs	r3, #1
 8002fde:	2d07      	cmp	r5, #7
 8002fe0:	f8cb 7000 	str.w	r7, [fp]
 8002fe4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002fe8:	f8cb 3004 	str.w	r3, [fp, #4]
 8002fec:	f300 81bb 	bgt.w	8003366 <_vfprintf_r+0xebe>
 8002ff0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002ff2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002ff4:	1c69      	adds	r1, r5, #1
 8002ff6:	441c      	add	r4, r3
 8002ff8:	2907      	cmp	r1, #7
 8002ffa:	910b      	str	r1, [sp, #44]	; 0x2c
 8002ffc:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003000:	e9c6 2300 	strd	r2, r3, [r6]
 8003004:	f300 81bb 	bgt.w	800337e <_vfprintf_r+0xed6>
 8003008:	3608      	adds	r6, #8
 800300a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800300c:	1c53      	adds	r3, r2, #1
 800300e:	461d      	mov	r5, r3
 8003010:	9509      	str	r5, [sp, #36]	; 0x24
 8003012:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003014:	930e      	str	r3, [sp, #56]	; 0x38
 8003016:	2200      	movs	r2, #0
 8003018:	2300      	movs	r3, #0
 800301a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800301e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003022:	f106 0b08 	add.w	fp, r6, #8
 8003026:	f7fd ffef 	bl	8001008 <__aeabi_dcmpeq>
 800302a:	2800      	cmp	r0, #0
 800302c:	f040 80c2 	bne.w	80031b4 <_vfprintf_r+0xd0c>
 8003030:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003032:	f8c6 9004 	str.w	r9, [r6, #4]
 8003036:	3701      	adds	r7, #1
 8003038:	444c      	add	r4, r9
 800303a:	2d07      	cmp	r5, #7
 800303c:	6037      	str	r7, [r6, #0]
 800303e:	942c      	str	r4, [sp, #176]	; 0xb0
 8003040:	952b      	str	r5, [sp, #172]	; 0xac
 8003042:	f300 80f9 	bgt.w	8003238 <_vfprintf_r+0xd90>
 8003046:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003048:	f106 0310 	add.w	r3, r6, #16
 800304c:	3202      	adds	r2, #2
 800304e:	465e      	mov	r6, fp
 8003050:	9209      	str	r2, [sp, #36]	; 0x24
 8003052:	469b      	mov	fp, r3
 8003054:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003056:	6072      	str	r2, [r6, #4]
 8003058:	4414      	add	r4, r2
 800305a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800305c:	942c      	str	r4, [sp, #176]	; 0xb0
 800305e:	ab26      	add	r3, sp, #152	; 0x98
 8003060:	2a07      	cmp	r2, #7
 8003062:	922b      	str	r2, [sp, #172]	; 0xac
 8003064:	6033      	str	r3, [r6, #0]
 8003066:	f77f ac70 	ble.w	800294a <_vfprintf_r+0x4a2>
 800306a:	aa2a      	add	r2, sp, #168	; 0xa8
 800306c:	9907      	ldr	r1, [sp, #28]
 800306e:	9803      	ldr	r0, [sp, #12]
 8003070:	f003 fd48 	bl	8006b04 <__sprint_r>
 8003074:	2800      	cmp	r0, #0
 8003076:	d18f      	bne.n	8002f98 <_vfprintf_r+0xaf0>
 8003078:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800307a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800307e:	e464      	b.n	800294a <_vfprintf_r+0x4a2>
 8003080:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003082:	af56      	add	r7, sp, #344	; 0x158
 8003084:	0923      	lsrs	r3, r4, #4
 8003086:	f004 010f 	and.w	r1, r4, #15
 800308a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800308e:	092a      	lsrs	r2, r5, #4
 8003090:	461c      	mov	r4, r3
 8003092:	4615      	mov	r5, r2
 8003094:	5c43      	ldrb	r3, [r0, r1]
 8003096:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800309a:	ea54 0305 	orrs.w	r3, r4, r5
 800309e:	d1f1      	bne.n	8003084 <_vfprintf_r+0xbdc>
 80030a0:	9b04      	ldr	r3, [sp, #16]
 80030a2:	1bdb      	subs	r3, r3, r7
 80030a4:	9309      	str	r3, [sp, #36]	; 0x24
 80030a6:	f7ff bb80 	b.w	80027aa <_vfprintf_r+0x302>
 80030aa:	46b1      	mov	r9, r6
 80030ac:	e776      	b.n	8002f9c <_vfprintf_r+0xaf4>
 80030ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80030b0:	9907      	ldr	r1, [sp, #28]
 80030b2:	9803      	ldr	r0, [sp, #12]
 80030b4:	f003 fd26 	bl	8006b04 <__sprint_r>
 80030b8:	2800      	cmp	r0, #0
 80030ba:	f47f af6d 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 80030be:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030c4:	f7ff bbdd 	b.w	8002882 <_vfprintf_r+0x3da>
 80030c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80030ca:	9907      	ldr	r1, [sp, #28]
 80030cc:	9803      	ldr	r0, [sp, #12]
 80030ce:	f003 fd19 	bl	8006b04 <__sprint_r>
 80030d2:	2800      	cmp	r0, #0
 80030d4:	f47f af60 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 80030d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030da:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030de:	f7ff bbe0 	b.w	80028a2 <_vfprintf_r+0x3fa>
 80030e2:	4698      	mov	r8, r3
 80030e4:	2d00      	cmp	r5, #0
 80030e6:	bf08      	it	eq
 80030e8:	2c0a      	cmpeq	r4, #10
 80030ea:	f080 8170 	bcs.w	80033ce <_vfprintf_r+0xf26>
 80030ee:	af56      	add	r7, sp, #344	; 0x158
 80030f0:	3430      	adds	r4, #48	; 0x30
 80030f2:	2301      	movs	r3, #1
 80030f4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80030f8:	9309      	str	r3, [sp, #36]	; 0x24
 80030fa:	f7ff bb56 	b.w	80027aa <_vfprintf_r+0x302>
 80030fe:	aa2a      	add	r2, sp, #168	; 0xa8
 8003100:	9907      	ldr	r1, [sp, #28]
 8003102:	9803      	ldr	r0, [sp, #12]
 8003104:	f003 fcfe 	bl	8006b04 <__sprint_r>
 8003108:	2800      	cmp	r0, #0
 800310a:	f47f af45 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 800310e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003110:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003114:	e406      	b.n	8002924 <_vfprintf_r+0x47c>
 8003116:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003118:	2b00      	cmp	r3, #0
 800311a:	f340 8273 	ble.w	8003604 <_vfprintf_r+0x115c>
 800311e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003122:	4293      	cmp	r3, r2
 8003124:	bfa8      	it	ge
 8003126:	4613      	movge	r3, r2
 8003128:	2b00      	cmp	r3, #0
 800312a:	461d      	mov	r5, r3
 800312c:	dd0d      	ble.n	800314a <_vfprintf_r+0xca2>
 800312e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003130:	f8cb 7000 	str.w	r7, [fp]
 8003134:	3301      	adds	r3, #1
 8003136:	442c      	add	r4, r5
 8003138:	2b07      	cmp	r3, #7
 800313a:	942c      	str	r4, [sp, #176]	; 0xb0
 800313c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003140:	932b      	str	r3, [sp, #172]	; 0xac
 8003142:	f300 82c1 	bgt.w	80036c8 <_vfprintf_r+0x1220>
 8003146:	f10b 0b08 	add.w	fp, fp, #8
 800314a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800314c:	2d00      	cmp	r5, #0
 800314e:	bfa8      	it	ge
 8003150:	1b5b      	subge	r3, r3, r5
 8003152:	2b00      	cmp	r3, #0
 8003154:	461d      	mov	r5, r3
 8003156:	f340 8099 	ble.w	800328c <_vfprintf_r+0xde4>
 800315a:	2d10      	cmp	r5, #16
 800315c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800315e:	4b2c      	ldr	r3, [pc, #176]	; (8003210 <_vfprintf_r+0xd68>)
 8003160:	f340 83db 	ble.w	800391a <_vfprintf_r+0x1472>
 8003164:	4618      	mov	r0, r3
 8003166:	4621      	mov	r1, r4
 8003168:	465b      	mov	r3, fp
 800316a:	2610      	movs	r6, #16
 800316c:	46bb      	mov	fp, r7
 800316e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003172:	9c07      	ldr	r4, [sp, #28]
 8003174:	4607      	mov	r7, r0
 8003176:	e004      	b.n	8003182 <_vfprintf_r+0xcda>
 8003178:	3308      	adds	r3, #8
 800317a:	3d10      	subs	r5, #16
 800317c:	2d10      	cmp	r5, #16
 800317e:	f340 83c7 	ble.w	8003910 <_vfprintf_r+0x1468>
 8003182:	3201      	adds	r2, #1
 8003184:	3110      	adds	r1, #16
 8003186:	2a07      	cmp	r2, #7
 8003188:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800318c:	e9c3 7600 	strd	r7, r6, [r3]
 8003190:	ddf2      	ble.n	8003178 <_vfprintf_r+0xcd0>
 8003192:	aa2a      	add	r2, sp, #168	; 0xa8
 8003194:	4621      	mov	r1, r4
 8003196:	4648      	mov	r0, r9
 8003198:	f003 fcb4 	bl	8006b04 <__sprint_r>
 800319c:	2800      	cmp	r0, #0
 800319e:	f040 84a5 	bne.w	8003aec <_vfprintf_r+0x1644>
 80031a2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80031a6:	ab2d      	add	r3, sp, #180	; 0xb4
 80031a8:	e7e7      	b.n	800317a <_vfprintf_r+0xcd2>
 80031aa:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80031ae:	af56      	add	r7, sp, #344	; 0x158
 80031b0:	f7ff bafb 	b.w	80027aa <_vfprintf_r+0x302>
 80031b4:	f1b9 0f00 	cmp.w	r9, #0
 80031b8:	f77f af4c 	ble.w	8003054 <_vfprintf_r+0xbac>
 80031bc:	f1b9 0f10 	cmp.w	r9, #16
 80031c0:	4b13      	ldr	r3, [pc, #76]	; (8003210 <_vfprintf_r+0xd68>)
 80031c2:	f340 8659 	ble.w	8003e78 <_vfprintf_r+0x19d0>
 80031c6:	4619      	mov	r1, r3
 80031c8:	4622      	mov	r2, r4
 80031ca:	4633      	mov	r3, r6
 80031cc:	2710      	movs	r7, #16
 80031ce:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80031d2:	9c07      	ldr	r4, [sp, #28]
 80031d4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80031d6:	460e      	mov	r6, r1
 80031d8:	e007      	b.n	80031ea <_vfprintf_r+0xd42>
 80031da:	3308      	adds	r3, #8
 80031dc:	f1a9 0910 	sub.w	r9, r9, #16
 80031e0:	f1b9 0f10 	cmp.w	r9, #16
 80031e4:	f340 8353 	ble.w	800388e <_vfprintf_r+0x13e6>
 80031e8:	3501      	adds	r5, #1
 80031ea:	3210      	adds	r2, #16
 80031ec:	2d07      	cmp	r5, #7
 80031ee:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80031f2:	e9c3 6700 	strd	r6, r7, [r3]
 80031f6:	ddf0      	ble.n	80031da <_vfprintf_r+0xd32>
 80031f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80031fa:	4621      	mov	r1, r4
 80031fc:	4658      	mov	r0, fp
 80031fe:	f003 fc81 	bl	8006b04 <__sprint_r>
 8003202:	2800      	cmp	r0, #0
 8003204:	f040 8472 	bne.w	8003aec <_vfprintf_r+0x1644>
 8003208:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800320c:	ab2d      	add	r3, sp, #180	; 0xb4
 800320e:	e7e5      	b.n	80031dc <_vfprintf_r+0xd34>
 8003210:	080071f4 	.word	0x080071f4
 8003214:	f018 0f01 	tst.w	r8, #1
 8003218:	f47f aee0 	bne.w	8002fdc <_vfprintf_r+0xb34>
 800321c:	2201      	movs	r2, #1
 800321e:	2d07      	cmp	r5, #7
 8003220:	f8cb 7000 	str.w	r7, [fp]
 8003224:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003228:	f8cb 2004 	str.w	r2, [fp, #4]
 800322c:	dc04      	bgt.n	8003238 <_vfprintf_r+0xd90>
 800322e:	3302      	adds	r3, #2
 8003230:	9309      	str	r3, [sp, #36]	; 0x24
 8003232:	f10b 0b10 	add.w	fp, fp, #16
 8003236:	e70d      	b.n	8003054 <_vfprintf_r+0xbac>
 8003238:	aa2a      	add	r2, sp, #168	; 0xa8
 800323a:	9907      	ldr	r1, [sp, #28]
 800323c:	9803      	ldr	r0, [sp, #12]
 800323e:	f003 fc61 	bl	8006b04 <__sprint_r>
 8003242:	2800      	cmp	r0, #0
 8003244:	f47f aea8 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 8003248:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800324c:	3301      	adds	r3, #1
 800324e:	9309      	str	r3, [sp, #36]	; 0x24
 8003250:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003254:	ae2d      	add	r6, sp, #180	; 0xb4
 8003256:	e6fd      	b.n	8003054 <_vfprintf_r+0xbac>
 8003258:	aa2a      	add	r2, sp, #168	; 0xa8
 800325a:	9907      	ldr	r1, [sp, #28]
 800325c:	9803      	ldr	r0, [sp, #12]
 800325e:	f003 fc51 	bl	8006b04 <__sprint_r>
 8003262:	2800      	cmp	r0, #0
 8003264:	f47f ae98 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 8003268:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800326c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800326e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003272:	f7ff baf6 	b.w	8002862 <_vfprintf_r+0x3ba>
 8003276:	aa2a      	add	r2, sp, #168	; 0xa8
 8003278:	9907      	ldr	r1, [sp, #28]
 800327a:	9803      	ldr	r0, [sp, #12]
 800327c:	f003 fc42 	bl	8006b04 <__sprint_r>
 8003280:	2800      	cmp	r0, #0
 8003282:	f47f ae89 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 8003286:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003288:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800328c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800328e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003292:	443b      	add	r3, r7
 8003294:	4699      	mov	r9, r3
 8003296:	f040 8357 	bne.w	8003948 <_vfprintf_r+0x14a0>
 800329a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800329c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800329e:	4293      	cmp	r3, r2
 80032a0:	db49      	blt.n	8003336 <_vfprintf_r+0xe8e>
 80032a2:	f018 0f01 	tst.w	r8, #1
 80032a6:	d146      	bne.n	8003336 <_vfprintf_r+0xe8e>
 80032a8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80032aa:	18bd      	adds	r5, r7, r2
 80032ac:	eba5 0509 	sub.w	r5, r5, r9
 80032b0:	1ad3      	subs	r3, r2, r3
 80032b2:	429d      	cmp	r5, r3
 80032b4:	bfa8      	it	ge
 80032b6:	461d      	movge	r5, r3
 80032b8:	2d00      	cmp	r5, #0
 80032ba:	dd0d      	ble.n	80032d8 <_vfprintf_r+0xe30>
 80032bc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032be:	f8cb 9000 	str.w	r9, [fp]
 80032c2:	3201      	adds	r2, #1
 80032c4:	442c      	add	r4, r5
 80032c6:	2a07      	cmp	r2, #7
 80032c8:	942c      	str	r4, [sp, #176]	; 0xb0
 80032ca:	f8cb 5004 	str.w	r5, [fp, #4]
 80032ce:	922b      	str	r2, [sp, #172]	; 0xac
 80032d0:	f300 8462 	bgt.w	8003b98 <_vfprintf_r+0x16f0>
 80032d4:	f10b 0b08 	add.w	fp, fp, #8
 80032d8:	2d00      	cmp	r5, #0
 80032da:	bfac      	ite	ge
 80032dc:	1b5d      	subge	r5, r3, r5
 80032de:	461d      	movlt	r5, r3
 80032e0:	2d00      	cmp	r5, #0
 80032e2:	f77f ab32 	ble.w	800294a <_vfprintf_r+0x4a2>
 80032e6:	2d10      	cmp	r5, #16
 80032e8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032ea:	4bc5      	ldr	r3, [pc, #788]	; (8003600 <_vfprintf_r+0x1158>)
 80032ec:	f340 80c4 	ble.w	8003478 <_vfprintf_r+0xfd0>
 80032f0:	4619      	mov	r1, r3
 80032f2:	2610      	movs	r6, #16
 80032f4:	4623      	mov	r3, r4
 80032f6:	9f03      	ldr	r7, [sp, #12]
 80032f8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80032fc:	460c      	mov	r4, r1
 80032fe:	e005      	b.n	800330c <_vfprintf_r+0xe64>
 8003300:	f10b 0b08 	add.w	fp, fp, #8
 8003304:	3d10      	subs	r5, #16
 8003306:	2d10      	cmp	r5, #16
 8003308:	f340 80b3 	ble.w	8003472 <_vfprintf_r+0xfca>
 800330c:	3201      	adds	r2, #1
 800330e:	3310      	adds	r3, #16
 8003310:	2a07      	cmp	r2, #7
 8003312:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003316:	e9cb 4600 	strd	r4, r6, [fp]
 800331a:	ddf1      	ble.n	8003300 <_vfprintf_r+0xe58>
 800331c:	aa2a      	add	r2, sp, #168	; 0xa8
 800331e:	4649      	mov	r1, r9
 8003320:	4638      	mov	r0, r7
 8003322:	f003 fbef 	bl	8006b04 <__sprint_r>
 8003326:	2800      	cmp	r0, #0
 8003328:	f47f ae38 	bne.w	8002f9c <_vfprintf_r+0xaf4>
 800332c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003330:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003334:	e7e6      	b.n	8003304 <_vfprintf_r+0xe5c>
 8003336:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003338:	9916      	ldr	r1, [sp, #88]	; 0x58
 800333a:	f8cb 1000 	str.w	r1, [fp]
 800333e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003340:	f8cb 1004 	str.w	r1, [fp, #4]
 8003344:	3201      	adds	r2, #1
 8003346:	440c      	add	r4, r1
 8003348:	2a07      	cmp	r2, #7
 800334a:	942c      	str	r4, [sp, #176]	; 0xb0
 800334c:	922b      	str	r2, [sp, #172]	; 0xac
 800334e:	f300 828c 	bgt.w	800386a <_vfprintf_r+0x13c2>
 8003352:	f10b 0b08 	add.w	fp, fp, #8
 8003356:	e7a7      	b.n	80032a8 <_vfprintf_r+0xe00>
 8003358:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800335c:	f002 fa94 	bl	8005888 <__retarget_lock_release_recursive>
 8003360:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003364:	e628      	b.n	8002fb8 <_vfprintf_r+0xb10>
 8003366:	aa2a      	add	r2, sp, #168	; 0xa8
 8003368:	9907      	ldr	r1, [sp, #28]
 800336a:	9803      	ldr	r0, [sp, #12]
 800336c:	f003 fbca 	bl	8006b04 <__sprint_r>
 8003370:	2800      	cmp	r0, #0
 8003372:	f47f ae11 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 8003376:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800337a:	ae2d      	add	r6, sp, #180	; 0xb4
 800337c:	e638      	b.n	8002ff0 <_vfprintf_r+0xb48>
 800337e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003380:	9907      	ldr	r1, [sp, #28]
 8003382:	9803      	ldr	r0, [sp, #12]
 8003384:	f003 fbbe 	bl	8006b04 <__sprint_r>
 8003388:	2800      	cmp	r0, #0
 800338a:	f47f ae05 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 800338e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003392:	ae2d      	add	r6, sp, #180	; 0xb4
 8003394:	930b      	str	r3, [sp, #44]	; 0x2c
 8003396:	e638      	b.n	800300a <_vfprintf_r+0xb62>
 8003398:	6814      	ldr	r4, [r2, #0]
 800339a:	9308      	str	r3, [sp, #32]
 800339c:	2500      	movs	r5, #0
 800339e:	f7ff bb95 	b.w	8002acc <_vfprintf_r+0x624>
 80033a2:	6814      	ldr	r4, [r2, #0]
 80033a4:	9308      	str	r3, [sp, #32]
 80033a6:	2500      	movs	r5, #0
 80033a8:	f7ff b9ae 	b.w	8002708 <_vfprintf_r+0x260>
 80033ac:	680c      	ldr	r4, [r1, #0]
 80033ae:	9208      	str	r2, [sp, #32]
 80033b0:	17e5      	asrs	r5, r4, #31
 80033b2:	4620      	mov	r0, r4
 80033b4:	4629      	mov	r1, r5
 80033b6:	f7ff b9d2 	b.w	800275e <_vfprintf_r+0x2b6>
 80033ba:	6814      	ldr	r4, [r2, #0]
 80033bc:	9108      	str	r1, [sp, #32]
 80033be:	2201      	movs	r2, #1
 80033c0:	2500      	movs	r5, #0
 80033c2:	f7ff bb32 	b.w	8002a2a <_vfprintf_r+0x582>
 80033c6:	2a01      	cmp	r2, #1
 80033c8:	f47f ab3c 	bne.w	8002a44 <_vfprintf_r+0x59c>
 80033cc:	e68f      	b.n	80030ee <_vfprintf_r+0xc46>
 80033ce:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80033d2:	2200      	movs	r2, #0
 80033d4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80033d8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80033dc:	af56      	add	r7, sp, #344	; 0x158
 80033de:	4692      	mov	sl, r2
 80033e0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80033e4:	461e      	mov	r6, r3
 80033e6:	e00a      	b.n	80033fe <_vfprintf_r+0xf56>
 80033e8:	2300      	movs	r3, #0
 80033ea:	4620      	mov	r0, r4
 80033ec:	4629      	mov	r1, r5
 80033ee:	220a      	movs	r2, #10
 80033f0:	f7fc ff06 	bl	8000200 <__aeabi_uldivmod>
 80033f4:	4604      	mov	r4, r0
 80033f6:	460d      	mov	r5, r1
 80033f8:	ea54 0305 	orrs.w	r3, r4, r5
 80033fc:	d029      	beq.n	8003452 <_vfprintf_r+0xfaa>
 80033fe:	220a      	movs	r2, #10
 8003400:	2300      	movs	r3, #0
 8003402:	4620      	mov	r0, r4
 8003404:	4629      	mov	r1, r5
 8003406:	f7fc fefb 	bl	8000200 <__aeabi_uldivmod>
 800340a:	3230      	adds	r2, #48	; 0x30
 800340c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003410:	f10a 0a01 	add.w	sl, sl, #1
 8003414:	3f01      	subs	r7, #1
 8003416:	2e00      	cmp	r6, #0
 8003418:	d0e6      	beq.n	80033e8 <_vfprintf_r+0xf40>
 800341a:	f898 3000 	ldrb.w	r3, [r8]
 800341e:	459a      	cmp	sl, r3
 8003420:	d1e2      	bne.n	80033e8 <_vfprintf_r+0xf40>
 8003422:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003426:	d0df      	beq.n	80033e8 <_vfprintf_r+0xf40>
 8003428:	2d00      	cmp	r5, #0
 800342a:	bf08      	it	eq
 800342c:	2c0a      	cmpeq	r4, #10
 800342e:	d3db      	bcc.n	80033e8 <_vfprintf_r+0xf40>
 8003430:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003432:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003434:	1aff      	subs	r7, r7, r3
 8003436:	461a      	mov	r2, r3
 8003438:	4638      	mov	r0, r7
 800343a:	f003 faf5 	bl	8006a28 <strncpy>
 800343e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003442:	2b00      	cmp	r3, #0
 8003444:	f000 8496 	beq.w	8003d74 <_vfprintf_r+0x18cc>
 8003448:	f108 0801 	add.w	r8, r8, #1
 800344c:	f04f 0a00 	mov.w	sl, #0
 8003450:	e7ca      	b.n	80033e8 <_vfprintf_r+0xf40>
 8003452:	9b04      	ldr	r3, [sp, #16]
 8003454:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003458:	1bdb      	subs	r3, r3, r7
 800345a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800345e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003460:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003464:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003468:	9309      	str	r3, [sp, #36]	; 0x24
 800346a:	f7ff b99e 	b.w	80027aa <_vfprintf_r+0x302>
 800346e:	46c1      	mov	r9, r8
 8003470:	e594      	b.n	8002f9c <_vfprintf_r+0xaf4>
 8003472:	4621      	mov	r1, r4
 8003474:	461c      	mov	r4, r3
 8003476:	460b      	mov	r3, r1
 8003478:	3201      	adds	r2, #1
 800347a:	442c      	add	r4, r5
 800347c:	2a07      	cmp	r2, #7
 800347e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003482:	e9cb 3500 	strd	r3, r5, [fp]
 8003486:	f77f aa5e 	ble.w	8002946 <_vfprintf_r+0x49e>
 800348a:	e5ee      	b.n	800306a <_vfprintf_r+0xbc2>
 800348c:	f018 0f10 	tst.w	r8, #16
 8003490:	f040 80f8 	bne.w	8003684 <_vfprintf_r+0x11dc>
 8003494:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003498:	f000 8351 	beq.w	8003b3e <_vfprintf_r+0x1696>
 800349c:	9a05      	ldr	r2, [sp, #20]
 800349e:	801a      	strh	r2, [r3, #0]
 80034a0:	4657      	mov	r7, sl
 80034a2:	f7ff baa7 	b.w	80029f4 <_vfprintf_r+0x54c>
 80034a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80034a8:	9907      	ldr	r1, [sp, #28]
 80034aa:	9803      	ldr	r0, [sp, #12]
 80034ac:	f003 fb2a 	bl	8006b04 <__sprint_r>
 80034b0:	2800      	cmp	r0, #0
 80034b2:	f47f ad71 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 80034b6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034bc:	f7ff b9f5 	b.w	80028aa <_vfprintf_r+0x402>
 80034c0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80034c4:	4602      	mov	r2, r0
 80034c6:	460b      	mov	r3, r1
 80034c8:	f7fd fdd0 	bl	800106c <__aeabi_dcmpun>
 80034cc:	2800      	cmp	r0, #0
 80034ce:	f040 8491 	bne.w	8003df4 <_vfprintf_r+0x194c>
 80034d2:	2e61      	cmp	r6, #97	; 0x61
 80034d4:	f000 8111 	beq.w	80036fa <_vfprintf_r+0x1252>
 80034d8:	2e41      	cmp	r6, #65	; 0x41
 80034da:	f000 8377 	beq.w	8003bcc <_vfprintf_r+0x1724>
 80034de:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80034e2:	f026 0220 	bic.w	r2, r6, #32
 80034e6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80034ea:	930e      	str	r3, [sp, #56]	; 0x38
 80034ec:	9204      	str	r2, [sp, #16]
 80034ee:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80034f0:	f000 842d 	beq.w	8003d4e <_vfprintf_r+0x18a6>
 80034f4:	2a47      	cmp	r2, #71	; 0x47
 80034f6:	f000 8424 	beq.w	8003d42 <_vfprintf_r+0x189a>
 80034fa:	2b00      	cmp	r3, #0
 80034fc:	f2c0 82f9 	blt.w	8003af2 <_vfprintf_r+0x164a>
 8003500:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003504:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003508:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800350c:	2e66      	cmp	r6, #102	; 0x66
 800350e:	f000 83eb 	beq.w	8003ce8 <_vfprintf_r+0x1840>
 8003512:	2e46      	cmp	r6, #70	; 0x46
 8003514:	f000 847e 	beq.w	8003e14 <_vfprintf_r+0x196c>
 8003518:	9b04      	ldr	r3, [sp, #16]
 800351a:	9803      	ldr	r0, [sp, #12]
 800351c:	2b45      	cmp	r3, #69	; 0x45
 800351e:	bf0c      	ite	eq
 8003520:	f109 0501 	addeq.w	r5, r9, #1
 8003524:	464d      	movne	r5, r9
 8003526:	aa28      	add	r2, sp, #160	; 0xa0
 8003528:	ab25      	add	r3, sp, #148	; 0x94
 800352a:	e9cd 3200 	strd	r3, r2, [sp]
 800352e:	2102      	movs	r1, #2
 8003530:	ab24      	add	r3, sp, #144	; 0x90
 8003532:	462a      	mov	r2, r5
 8003534:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003538:	f000 fe3e 	bl	80041b8 <_dtoa_r>
 800353c:	2e67      	cmp	r6, #103	; 0x67
 800353e:	4607      	mov	r7, r0
 8003540:	f040 849c 	bne.w	8003e7c <_vfprintf_r+0x19d4>
 8003544:	f018 0f01 	tst.w	r8, #1
 8003548:	f040 83f9 	bne.w	8003d3e <_vfprintf_r+0x1896>
 800354c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800354e:	4640      	mov	r0, r8
 8003550:	1bdb      	subs	r3, r3, r7
 8003552:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003556:	9310      	str	r3, [sp, #64]	; 0x40
 8003558:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800355a:	9311      	str	r3, [sp, #68]	; 0x44
 800355c:	9b04      	ldr	r3, [sp, #16]
 800355e:	2b47      	cmp	r3, #71	; 0x47
 8003560:	f000 81e7 	beq.w	8003932 <_vfprintf_r+0x148a>
 8003564:	9b04      	ldr	r3, [sp, #16]
 8003566:	2b46      	cmp	r3, #70	; 0x46
 8003568:	f000 8300 	beq.w	8003b6c <_vfprintf_r+0x16c4>
 800356c:	9904      	ldr	r1, [sp, #16]
 800356e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003570:	b2f2      	uxtb	r2, r6
 8003572:	2941      	cmp	r1, #65	; 0x41
 8003574:	bf08      	it	eq
 8003576:	320f      	addeq	r2, #15
 8003578:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800357c:	bf06      	itte	eq
 800357e:	b2d2      	uxtbeq	r2, r2
 8003580:	2101      	moveq	r1, #1
 8003582:	2100      	movne	r1, #0
 8003584:	2b00      	cmp	r3, #0
 8003586:	9324      	str	r3, [sp, #144]	; 0x90
 8003588:	bfb8      	it	lt
 800358a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800358c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003590:	bfba      	itte	lt
 8003592:	f1c3 0301 	rsblt	r3, r3, #1
 8003596:	222d      	movlt	r2, #45	; 0x2d
 8003598:	222b      	movge	r2, #43	; 0x2b
 800359a:	2b09      	cmp	r3, #9
 800359c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80035a0:	f300 83f9 	bgt.w	8003d96 <_vfprintf_r+0x18ee>
 80035a4:	2900      	cmp	r1, #0
 80035a6:	f040 8487 	bne.w	8003eb8 <_vfprintf_r+0x1a10>
 80035aa:	2230      	movs	r2, #48	; 0x30
 80035ac:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80035b0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80035b4:	3330      	adds	r3, #48	; 0x30
 80035b6:	7013      	strb	r3, [r2, #0]
 80035b8:	1c53      	adds	r3, r2, #1
 80035ba:	aa26      	add	r2, sp, #152	; 0x98
 80035bc:	1a9b      	subs	r3, r3, r2
 80035be:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80035c0:	9319      	str	r3, [sp, #100]	; 0x64
 80035c2:	2a01      	cmp	r2, #1
 80035c4:	4413      	add	r3, r2
 80035c6:	9309      	str	r3, [sp, #36]	; 0x24
 80035c8:	f340 8442 	ble.w	8003e50 <_vfprintf_r+0x19a8>
 80035cc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80035ce:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80035d0:	4413      	add	r3, r2
 80035d2:	9309      	str	r3, [sp, #36]	; 0x24
 80035d4:	2300      	movs	r3, #0
 80035d6:	930f      	str	r3, [sp, #60]	; 0x3c
 80035d8:	9314      	str	r3, [sp, #80]	; 0x50
 80035da:	9311      	str	r3, [sp, #68]	; 0x44
 80035dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80035de:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80035e2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80035e6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80035ea:	9304      	str	r3, [sp, #16]
 80035ec:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80035ee:	2b00      	cmp	r3, #0
 80035f0:	f040 8275 	bne.w	8003ade <_vfprintf_r+0x1636>
 80035f4:	4699      	mov	r9, r3
 80035f6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80035fa:	f7ff b8e2 	b.w	80027c2 <_vfprintf_r+0x31a>
 80035fe:	bf00      	nop
 8003600:	080071f4 	.word	0x080071f4
 8003604:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003606:	49bd      	ldr	r1, [pc, #756]	; (80038fc <_vfprintf_r+0x1454>)
 8003608:	f8cb 1000 	str.w	r1, [fp]
 800360c:	3201      	adds	r2, #1
 800360e:	3401      	adds	r4, #1
 8003610:	2101      	movs	r1, #1
 8003612:	2a07      	cmp	r2, #7
 8003614:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003618:	f8cb 1004 	str.w	r1, [fp, #4]
 800361c:	dc60      	bgt.n	80036e0 <_vfprintf_r+0x1238>
 800361e:	f10b 0b08 	add.w	fp, fp, #8
 8003622:	b92b      	cbnz	r3, 8003630 <_vfprintf_r+0x1188>
 8003624:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003626:	b91a      	cbnz	r2, 8003630 <_vfprintf_r+0x1188>
 8003628:	f018 0f01 	tst.w	r8, #1
 800362c:	f43f a98d 	beq.w	800294a <_vfprintf_r+0x4a2>
 8003630:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003632:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003634:	f8cb 1000 	str.w	r1, [fp]
 8003638:	9915      	ldr	r1, [sp, #84]	; 0x54
 800363a:	f8cb 1004 	str.w	r1, [fp, #4]
 800363e:	3201      	adds	r2, #1
 8003640:	440c      	add	r4, r1
 8003642:	2a07      	cmp	r2, #7
 8003644:	942c      	str	r4, [sp, #176]	; 0xb0
 8003646:	922b      	str	r2, [sp, #172]	; 0xac
 8003648:	f300 8282 	bgt.w	8003b50 <_vfprintf_r+0x16a8>
 800364c:	f10b 0b08 	add.w	fp, fp, #8
 8003650:	2b00      	cmp	r3, #0
 8003652:	f2c0 82e7 	blt.w	8003c24 <_vfprintf_r+0x177c>
 8003656:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003658:	3201      	adds	r2, #1
 800365a:	441c      	add	r4, r3
 800365c:	2a07      	cmp	r2, #7
 800365e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003662:	e9cb 7300 	strd	r7, r3, [fp]
 8003666:	f77f a96e 	ble.w	8002946 <_vfprintf_r+0x49e>
 800366a:	e4fe      	b.n	800306a <_vfprintf_r+0xbc2>
 800366c:	aa2a      	add	r2, sp, #168	; 0xa8
 800366e:	9907      	ldr	r1, [sp, #28]
 8003670:	9803      	ldr	r0, [sp, #12]
 8003672:	f003 fa47 	bl	8006b04 <__sprint_r>
 8003676:	2800      	cmp	r0, #0
 8003678:	f47f ac8e 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 800367c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003680:	f7ff bbf0 	b.w	8002e64 <_vfprintf_r+0x9bc>
 8003684:	9a05      	ldr	r2, [sp, #20]
 8003686:	601a      	str	r2, [r3, #0]
 8003688:	4657      	mov	r7, sl
 800368a:	f7ff b9b3 	b.w	80029f4 <_vfprintf_r+0x54c>
 800368e:	8814      	ldrh	r4, [r2, #0]
 8003690:	9108      	str	r1, [sp, #32]
 8003692:	2500      	movs	r5, #0
 8003694:	2201      	movs	r2, #1
 8003696:	f7ff b9c8 	b.w	8002a2a <_vfprintf_r+0x582>
 800369a:	8814      	ldrh	r4, [r2, #0]
 800369c:	9308      	str	r3, [sp, #32]
 800369e:	2500      	movs	r5, #0
 80036a0:	f7ff ba14 	b.w	8002acc <_vfprintf_r+0x624>
 80036a4:	f9b1 4000 	ldrsh.w	r4, [r1]
 80036a8:	9208      	str	r2, [sp, #32]
 80036aa:	17e5      	asrs	r5, r4, #31
 80036ac:	4620      	mov	r0, r4
 80036ae:	4629      	mov	r1, r5
 80036b0:	f7ff b855 	b.w	800275e <_vfprintf_r+0x2b6>
 80036b4:	8814      	ldrh	r4, [r2, #0]
 80036b6:	9308      	str	r3, [sp, #32]
 80036b8:	2500      	movs	r5, #0
 80036ba:	f7ff b825 	b.w	8002708 <_vfprintf_r+0x260>
 80036be:	222d      	movs	r2, #45	; 0x2d
 80036c0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80036c4:	f7ff baa2 	b.w	8002c0c <_vfprintf_r+0x764>
 80036c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80036ca:	9907      	ldr	r1, [sp, #28]
 80036cc:	9803      	ldr	r0, [sp, #12]
 80036ce:	f003 fa19 	bl	8006b04 <__sprint_r>
 80036d2:	2800      	cmp	r0, #0
 80036d4:	f47f ac60 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 80036d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036da:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036de:	e534      	b.n	800314a <_vfprintf_r+0xca2>
 80036e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80036e2:	9907      	ldr	r1, [sp, #28]
 80036e4:	9803      	ldr	r0, [sp, #12]
 80036e6:	f003 fa0d 	bl	8006b04 <__sprint_r>
 80036ea:	2800      	cmp	r0, #0
 80036ec:	f47f ac54 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 80036f0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036f2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036f4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036f8:	e793      	b.n	8003622 <_vfprintf_r+0x117a>
 80036fa:	2330      	movs	r3, #48	; 0x30
 80036fc:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003700:	2378      	movs	r3, #120	; 0x78
 8003702:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003706:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800370a:	f048 0402 	orr.w	r4, r8, #2
 800370e:	f300 82b0 	bgt.w	8003c72 <_vfprintf_r+0x17ca>
 8003712:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003716:	930e      	str	r3, [sp, #56]	; 0x38
 8003718:	f026 0320 	bic.w	r3, r6, #32
 800371c:	9304      	str	r3, [sp, #16]
 800371e:	2200      	movs	r2, #0
 8003720:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003722:	920a      	str	r2, [sp, #40]	; 0x28
 8003724:	46a0      	mov	r8, r4
 8003726:	af3d      	add	r7, sp, #244	; 0xf4
 8003728:	2b00      	cmp	r3, #0
 800372a:	f2c0 81e3 	blt.w	8003af4 <_vfprintf_r+0x164c>
 800372e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003732:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003736:	2300      	movs	r3, #0
 8003738:	930b      	str	r3, [sp, #44]	; 0x2c
 800373a:	2e61      	cmp	r6, #97	; 0x61
 800373c:	f000 8255 	beq.w	8003bea <_vfprintf_r+0x1742>
 8003740:	2e41      	cmp	r6, #65	; 0x41
 8003742:	f47f aee3 	bne.w	800350c <_vfprintf_r+0x1064>
 8003746:	a824      	add	r0, sp, #144	; 0x90
 8003748:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800374c:	f003 f8e2 	bl	8006914 <frexp>
 8003750:	2200      	movs	r2, #0
 8003752:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003756:	ec51 0b10 	vmov	r0, r1, d0
 800375a:	f7fd f9ed 	bl	8000b38 <__aeabi_dmul>
 800375e:	2200      	movs	r2, #0
 8003760:	2300      	movs	r3, #0
 8003762:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003766:	f7fd fc4f 	bl	8001008 <__aeabi_dcmpeq>
 800376a:	2800      	cmp	r0, #0
 800376c:	f040 8305 	bne.w	8003d7a <_vfprintf_r+0x18d2>
 8003770:	4b63      	ldr	r3, [pc, #396]	; (8003900 <_vfprintf_r+0x1458>)
 8003772:	9309      	str	r3, [sp, #36]	; 0x24
 8003774:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003778:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800377c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003780:	9721      	str	r7, [sp, #132]	; 0x84
 8003782:	46b9      	mov	r9, r7
 8003784:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003788:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800378c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003790:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003794:	e003      	b.n	800379e <_vfprintf_r+0x12f6>
 8003796:	f7fd fc37 	bl	8001008 <__aeabi_dcmpeq>
 800379a:	bb20      	cbnz	r0, 80037e6 <_vfprintf_r+0x133e>
 800379c:	46a9      	mov	r9, r5
 800379e:	2200      	movs	r2, #0
 80037a0:	4b58      	ldr	r3, [pc, #352]	; (8003904 <_vfprintf_r+0x145c>)
 80037a2:	4630      	mov	r0, r6
 80037a4:	4639      	mov	r1, r7
 80037a6:	f7fd f9c7 	bl	8000b38 <__aeabi_dmul>
 80037aa:	460f      	mov	r7, r1
 80037ac:	4606      	mov	r6, r0
 80037ae:	f7fd fc73 	bl	8001098 <__aeabi_d2iz>
 80037b2:	4680      	mov	r8, r0
 80037b4:	f7fd f956 	bl	8000a64 <__aeabi_i2d>
 80037b8:	4602      	mov	r2, r0
 80037ba:	460b      	mov	r3, r1
 80037bc:	4630      	mov	r0, r6
 80037be:	4639      	mov	r1, r7
 80037c0:	f7fd f802 	bl	80007c8 <__aeabi_dsub>
 80037c4:	464d      	mov	r5, r9
 80037c6:	f81a c008 	ldrb.w	ip, [sl, r8]
 80037ca:	f805 cb01 	strb.w	ip, [r5], #1
 80037ce:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80037d2:	46a3      	mov	fp, r4
 80037d4:	4606      	mov	r6, r0
 80037d6:	460f      	mov	r7, r1
 80037d8:	f04f 0200 	mov.w	r2, #0
 80037dc:	f04f 0300 	mov.w	r3, #0
 80037e0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80037e4:	d1d7      	bne.n	8003796 <_vfprintf_r+0x12ee>
 80037e6:	4630      	mov	r0, r6
 80037e8:	4639      	mov	r1, r7
 80037ea:	2200      	movs	r2, #0
 80037ec:	4b46      	ldr	r3, [pc, #280]	; (8003908 <_vfprintf_r+0x1460>)
 80037ee:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80037f2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80037f4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80037f8:	4644      	mov	r4, r8
 80037fa:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80037fe:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003802:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003806:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800380a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800380c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003810:	f7fd fc22 	bl	8001058 <__aeabi_dcmpgt>
 8003814:	2800      	cmp	r0, #0
 8003816:	f040 8176 	bne.w	8003b06 <_vfprintf_r+0x165e>
 800381a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800381e:	2200      	movs	r2, #0
 8003820:	4b39      	ldr	r3, [pc, #228]	; (8003908 <_vfprintf_r+0x1460>)
 8003822:	f7fd fbf1 	bl	8001008 <__aeabi_dcmpeq>
 8003826:	b110      	cbz	r0, 800382e <_vfprintf_r+0x1386>
 8003828:	07e2      	lsls	r2, r4, #31
 800382a:	f100 816c 	bmi.w	8003b06 <_vfprintf_r+0x165e>
 800382e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003830:	2b00      	cmp	r3, #0
 8003832:	db07      	blt.n	8003844 <_vfprintf_r+0x139c>
 8003834:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003836:	3301      	adds	r3, #1
 8003838:	442b      	add	r3, r5
 800383a:	2230      	movs	r2, #48	; 0x30
 800383c:	f805 2b01 	strb.w	r2, [r5], #1
 8003840:	42ab      	cmp	r3, r5
 8003842:	d1fb      	bne.n	800383c <_vfprintf_r+0x1394>
 8003844:	1beb      	subs	r3, r5, r7
 8003846:	4640      	mov	r0, r8
 8003848:	9310      	str	r3, [sp, #64]	; 0x40
 800384a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800384e:	e683      	b.n	8003558 <_vfprintf_r+0x10b0>
 8003850:	f8cd 9010 	str.w	r9, [sp, #16]
 8003854:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003858:	9408      	str	r4, [sp, #32]
 800385a:	4681      	mov	r9, r0
 800385c:	900f      	str	r0, [sp, #60]	; 0x3c
 800385e:	9014      	str	r0, [sp, #80]	; 0x50
 8003860:	9011      	str	r0, [sp, #68]	; 0x44
 8003862:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003866:	f7fe bfac 	b.w	80027c2 <_vfprintf_r+0x31a>
 800386a:	aa2a      	add	r2, sp, #168	; 0xa8
 800386c:	9907      	ldr	r1, [sp, #28]
 800386e:	9803      	ldr	r0, [sp, #12]
 8003870:	f003 f948 	bl	8006b04 <__sprint_r>
 8003874:	2800      	cmp	r0, #0
 8003876:	f47f ab8f 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 800387a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800387c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800387e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003882:	e511      	b.n	80032a8 <_vfprintf_r+0xe00>
 8003884:	4252      	negs	r2, r2
 8003886:	9206      	str	r2, [sp, #24]
 8003888:	9308      	str	r3, [sp, #32]
 800388a:	f7ff b96d 	b.w	8002b68 <_vfprintf_r+0x6c0>
 800388e:	4614      	mov	r4, r2
 8003890:	4632      	mov	r2, r6
 8003892:	461e      	mov	r6, r3
 8003894:	4613      	mov	r3, r2
 8003896:	462a      	mov	r2, r5
 8003898:	3201      	adds	r2, #1
 800389a:	9209      	str	r2, [sp, #36]	; 0x24
 800389c:	f106 0208 	add.w	r2, r6, #8
 80038a0:	e9c6 3900 	strd	r3, r9, [r6]
 80038a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038a6:	932b      	str	r3, [sp, #172]	; 0xac
 80038a8:	444c      	add	r4, r9
 80038aa:	2b07      	cmp	r3, #7
 80038ac:	942c      	str	r4, [sp, #176]	; 0xb0
 80038ae:	f73f acc3 	bgt.w	8003238 <_vfprintf_r+0xd90>
 80038b2:	3301      	adds	r3, #1
 80038b4:	9309      	str	r3, [sp, #36]	; 0x24
 80038b6:	f102 0b08 	add.w	fp, r2, #8
 80038ba:	4616      	mov	r6, r2
 80038bc:	f7ff bbca 	b.w	8003054 <_vfprintf_r+0xbac>
 80038c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80038c2:	9907      	ldr	r1, [sp, #28]
 80038c4:	9803      	ldr	r0, [sp, #12]
 80038c6:	f003 f91d 	bl	8006b04 <__sprint_r>
 80038ca:	2800      	cmp	r0, #0
 80038cc:	f47f ab64 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 80038d0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038d2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038d6:	f7ff bade 	b.w	8002e96 <_vfprintf_r+0x9ee>
 80038da:	464b      	mov	r3, r9
 80038dc:	2b06      	cmp	r3, #6
 80038de:	bf28      	it	cs
 80038e0:	2306      	movcs	r3, #6
 80038e2:	46b9      	mov	r9, r7
 80038e4:	970f      	str	r7, [sp, #60]	; 0x3c
 80038e6:	9714      	str	r7, [sp, #80]	; 0x50
 80038e8:	9711      	str	r7, [sp, #68]	; 0x44
 80038ea:	970a      	str	r7, [sp, #40]	; 0x28
 80038ec:	463a      	mov	r2, r7
 80038ee:	9304      	str	r3, [sp, #16]
 80038f0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80038f4:	4f05      	ldr	r7, [pc, #20]	; (800390c <_vfprintf_r+0x1464>)
 80038f6:	f7fe bf64 	b.w	80027c2 <_vfprintf_r+0x31a>
 80038fa:	bf00      	nop
 80038fc:	080071e0 	.word	0x080071e0
 8003900:	080071c4 	.word	0x080071c4
 8003904:	40300000 	.word	0x40300000
 8003908:	3fe00000 	.word	0x3fe00000
 800390c:	080071d8 	.word	0x080071d8
 8003910:	460c      	mov	r4, r1
 8003912:	4639      	mov	r1, r7
 8003914:	465f      	mov	r7, fp
 8003916:	469b      	mov	fp, r3
 8003918:	460b      	mov	r3, r1
 800391a:	3201      	adds	r2, #1
 800391c:	442c      	add	r4, r5
 800391e:	2a07      	cmp	r2, #7
 8003920:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003924:	e9cb 3500 	strd	r3, r5, [fp]
 8003928:	f73f aca5 	bgt.w	8003276 <_vfprintf_r+0xdce>
 800392c:	f10b 0b08 	add.w	fp, fp, #8
 8003930:	e4ac      	b.n	800328c <_vfprintf_r+0xde4>
 8003932:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003934:	1cda      	adds	r2, r3, #3
 8003936:	db02      	blt.n	800393e <_vfprintf_r+0x1496>
 8003938:	4599      	cmp	r9, r3
 800393a:	f280 80b5 	bge.w	8003aa8 <_vfprintf_r+0x1600>
 800393e:	3e02      	subs	r6, #2
 8003940:	f026 0320 	bic.w	r3, r6, #32
 8003944:	9304      	str	r3, [sp, #16]
 8003946:	e611      	b.n	800356c <_vfprintf_r+0x10c4>
 8003948:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800394a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800394e:	465a      	mov	r2, fp
 8003950:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003954:	18fb      	adds	r3, r7, r3
 8003956:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800395a:	970c      	str	r7, [sp, #48]	; 0x30
 800395c:	4eaf      	ldr	r6, [pc, #700]	; (8003c1c <_vfprintf_r+0x1774>)
 800395e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003962:	9309      	str	r3, [sp, #36]	; 0x24
 8003964:	464f      	mov	r7, r9
 8003966:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800396a:	4621      	mov	r1, r4
 800396c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800396e:	2b00      	cmp	r3, #0
 8003970:	d05b      	beq.n	8003a2a <_vfprintf_r+0x1582>
 8003972:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003974:	2b00      	cmp	r3, #0
 8003976:	d154      	bne.n	8003a22 <_vfprintf_r+0x157a>
 8003978:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800397a:	3b01      	subs	r3, #1
 800397c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003980:	9314      	str	r3, [sp, #80]	; 0x50
 8003982:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003984:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003986:	6010      	str	r0, [r2, #0]
 8003988:	3301      	adds	r3, #1
 800398a:	4459      	add	r1, fp
 800398c:	2b07      	cmp	r3, #7
 800398e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003990:	f8c2 b004 	str.w	fp, [r2, #4]
 8003994:	932b      	str	r3, [sp, #172]	; 0xac
 8003996:	dc68      	bgt.n	8003a6a <_vfprintf_r+0x15c2>
 8003998:	3208      	adds	r2, #8
 800399a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800399c:	f898 3000 	ldrb.w	r3, [r8]
 80039a0:	1bc5      	subs	r5, r0, r7
 80039a2:	429d      	cmp	r5, r3
 80039a4:	bfa8      	it	ge
 80039a6:	461d      	movge	r5, r3
 80039a8:	2d00      	cmp	r5, #0
 80039aa:	dd0b      	ble.n	80039c4 <_vfprintf_r+0x151c>
 80039ac:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80039ae:	6017      	str	r7, [r2, #0]
 80039b0:	3301      	adds	r3, #1
 80039b2:	4429      	add	r1, r5
 80039b4:	2b07      	cmp	r3, #7
 80039b6:	912c      	str	r1, [sp, #176]	; 0xb0
 80039b8:	6055      	str	r5, [r2, #4]
 80039ba:	932b      	str	r3, [sp, #172]	; 0xac
 80039bc:	dc5e      	bgt.n	8003a7c <_vfprintf_r+0x15d4>
 80039be:	f898 3000 	ldrb.w	r3, [r8]
 80039c2:	3208      	adds	r2, #8
 80039c4:	2d00      	cmp	r5, #0
 80039c6:	bfac      	ite	ge
 80039c8:	1b5d      	subge	r5, r3, r5
 80039ca:	461d      	movlt	r5, r3
 80039cc:	2d00      	cmp	r5, #0
 80039ce:	dd26      	ble.n	8003a1e <_vfprintf_r+0x1576>
 80039d0:	2d10      	cmp	r5, #16
 80039d2:	982b      	ldr	r0, [sp, #172]	; 0xac
 80039d4:	dd3c      	ble.n	8003a50 <_vfprintf_r+0x15a8>
 80039d6:	2410      	movs	r4, #16
 80039d8:	e003      	b.n	80039e2 <_vfprintf_r+0x153a>
 80039da:	3208      	adds	r2, #8
 80039dc:	3d10      	subs	r5, #16
 80039de:	2d10      	cmp	r5, #16
 80039e0:	dd36      	ble.n	8003a50 <_vfprintf_r+0x15a8>
 80039e2:	3001      	adds	r0, #1
 80039e4:	3110      	adds	r1, #16
 80039e6:	2807      	cmp	r0, #7
 80039e8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80039ec:	e9c2 6400 	strd	r6, r4, [r2]
 80039f0:	ddf3      	ble.n	80039da <_vfprintf_r+0x1532>
 80039f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80039f4:	4651      	mov	r1, sl
 80039f6:	4648      	mov	r0, r9
 80039f8:	f003 f884 	bl	8006b04 <__sprint_r>
 80039fc:	2800      	cmp	r0, #0
 80039fe:	d150      	bne.n	8003aa2 <_vfprintf_r+0x15fa>
 8003a00:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003a04:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a06:	e7e9      	b.n	80039dc <_vfprintf_r+0x1534>
 8003a08:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a0a:	4651      	mov	r1, sl
 8003a0c:	4648      	mov	r0, r9
 8003a0e:	f003 f879 	bl	8006b04 <__sprint_r>
 8003a12:	2800      	cmp	r0, #0
 8003a14:	d145      	bne.n	8003aa2 <_vfprintf_r+0x15fa>
 8003a16:	f898 3000 	ldrb.w	r3, [r8]
 8003a1a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a1c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a1e:	441f      	add	r7, r3
 8003a20:	e7a4      	b.n	800396c <_vfprintf_r+0x14c4>
 8003a22:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a24:	3b01      	subs	r3, #1
 8003a26:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a28:	e7ab      	b.n	8003982 <_vfprintf_r+0x14da>
 8003a2a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a2c:	2b00      	cmp	r3, #0
 8003a2e:	d1f8      	bne.n	8003a22 <_vfprintf_r+0x157a>
 8003a30:	46b9      	mov	r9, r7
 8003a32:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a34:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003a36:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003a3a:	18fb      	adds	r3, r7, r3
 8003a3c:	4599      	cmp	r9, r3
 8003a3e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003a42:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003a46:	4693      	mov	fp, r2
 8003a48:	460c      	mov	r4, r1
 8003a4a:	bf28      	it	cs
 8003a4c:	4699      	movcs	r9, r3
 8003a4e:	e424      	b.n	800329a <_vfprintf_r+0xdf2>
 8003a50:	3001      	adds	r0, #1
 8003a52:	4429      	add	r1, r5
 8003a54:	2807      	cmp	r0, #7
 8003a56:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003a5a:	e9c2 6500 	strd	r6, r5, [r2]
 8003a5e:	dcd3      	bgt.n	8003a08 <_vfprintf_r+0x1560>
 8003a60:	f898 3000 	ldrb.w	r3, [r8]
 8003a64:	3208      	adds	r2, #8
 8003a66:	441f      	add	r7, r3
 8003a68:	e780      	b.n	800396c <_vfprintf_r+0x14c4>
 8003a6a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a6c:	4651      	mov	r1, sl
 8003a6e:	4648      	mov	r0, r9
 8003a70:	f003 f848 	bl	8006b04 <__sprint_r>
 8003a74:	b9a8      	cbnz	r0, 8003aa2 <_vfprintf_r+0x15fa>
 8003a76:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a78:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a7a:	e78e      	b.n	800399a <_vfprintf_r+0x14f2>
 8003a7c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a7e:	4651      	mov	r1, sl
 8003a80:	4648      	mov	r0, r9
 8003a82:	f003 f83f 	bl	8006b04 <__sprint_r>
 8003a86:	b960      	cbnz	r0, 8003aa2 <_vfprintf_r+0x15fa>
 8003a88:	f898 3000 	ldrb.w	r3, [r8]
 8003a8c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a8e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a90:	e798      	b.n	80039c4 <_vfprintf_r+0x151c>
 8003a92:	4638      	mov	r0, r7
 8003a94:	f7fc fdd4 	bl	8000640 <strlen>
 8003a98:	46a9      	mov	r9, r5
 8003a9a:	4603      	mov	r3, r0
 8003a9c:	9009      	str	r0, [sp, #36]	; 0x24
 8003a9e:	f7ff b8f4 	b.w	8002c8a <_vfprintf_r+0x7e2>
 8003aa2:	46d1      	mov	r9, sl
 8003aa4:	f7ff ba7a 	b.w	8002f9c <_vfprintf_r+0xaf4>
 8003aa8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003aaa:	4619      	mov	r1, r3
 8003aac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003aae:	4299      	cmp	r1, r3
 8003ab0:	f300 8082 	bgt.w	8003bb8 <_vfprintf_r+0x1710>
 8003ab4:	07c4      	lsls	r4, r0, #31
 8003ab6:	f140 816b 	bpl.w	8003d90 <_vfprintf_r+0x18e8>
 8003aba:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003abc:	4413      	add	r3, r2
 8003abe:	9309      	str	r3, [sp, #36]	; 0x24
 8003ac0:	0541      	lsls	r1, r0, #21
 8003ac2:	d503      	bpl.n	8003acc <_vfprintf_r+0x1624>
 8003ac4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ac6:	2b00      	cmp	r3, #0
 8003ac8:	f300 80e6 	bgt.w	8003c98 <_vfprintf_r+0x17f0>
 8003acc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ace:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003ad2:	9304      	str	r3, [sp, #16]
 8003ad4:	2667      	movs	r6, #103	; 0x67
 8003ad6:	2300      	movs	r3, #0
 8003ad8:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ada:	9314      	str	r3, [sp, #80]	; 0x50
 8003adc:	e586      	b.n	80035ec <_vfprintf_r+0x1144>
 8003ade:	222d      	movs	r2, #45	; 0x2d
 8003ae0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003ae4:	f04f 0900 	mov.w	r9, #0
 8003ae8:	f7fe be6c 	b.w	80027c4 <_vfprintf_r+0x31c>
 8003aec:	46a1      	mov	r9, r4
 8003aee:	f7ff ba55 	b.w	8002f9c <_vfprintf_r+0xaf4>
 8003af2:	900a      	str	r0, [sp, #40]	; 0x28
 8003af4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003af8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003afc:	931f      	str	r3, [sp, #124]	; 0x7c
 8003afe:	232d      	movs	r3, #45	; 0x2d
 8003b00:	911e      	str	r1, [sp, #120]	; 0x78
 8003b02:	930b      	str	r3, [sp, #44]	; 0x2c
 8003b04:	e619      	b.n	800373a <_vfprintf_r+0x1292>
 8003b06:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b08:	9328      	str	r3, [sp, #160]	; 0xa0
 8003b0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b0c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003b10:	7bd9      	ldrb	r1, [r3, #15]
 8003b12:	4291      	cmp	r1, r2
 8003b14:	462b      	mov	r3, r5
 8003b16:	d109      	bne.n	8003b2c <_vfprintf_r+0x1684>
 8003b18:	2030      	movs	r0, #48	; 0x30
 8003b1a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003b1e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b20:	1e5a      	subs	r2, r3, #1
 8003b22:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b24:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003b28:	4291      	cmp	r1, r2
 8003b2a:	d0f6      	beq.n	8003b1a <_vfprintf_r+0x1672>
 8003b2c:	2a39      	cmp	r2, #57	; 0x39
 8003b2e:	bf0b      	itete	eq
 8003b30:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003b32:	3201      	addne	r2, #1
 8003b34:	7a92      	ldrbeq	r2, [r2, #10]
 8003b36:	b2d2      	uxtbne	r2, r2
 8003b38:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003b3c:	e682      	b.n	8003844 <_vfprintf_r+0x139c>
 8003b3e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003b42:	f43f ad9f 	beq.w	8003684 <_vfprintf_r+0x11dc>
 8003b46:	9a05      	ldr	r2, [sp, #20]
 8003b48:	701a      	strb	r2, [r3, #0]
 8003b4a:	4657      	mov	r7, sl
 8003b4c:	f7fe bf52 	b.w	80029f4 <_vfprintf_r+0x54c>
 8003b50:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b52:	9907      	ldr	r1, [sp, #28]
 8003b54:	9803      	ldr	r0, [sp, #12]
 8003b56:	f002 ffd5 	bl	8006b04 <__sprint_r>
 8003b5a:	2800      	cmp	r0, #0
 8003b5c:	f47f aa1c 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 8003b60:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b62:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003b66:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b6a:	e571      	b.n	8003650 <_vfprintf_r+0x11a8>
 8003b6c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b6e:	2b00      	cmp	r3, #0
 8003b70:	f340 8164 	ble.w	8003e3c <_vfprintf_r+0x1994>
 8003b74:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b76:	f1b9 0f00 	cmp.w	r9, #0
 8003b7a:	f040 8103 	bne.w	8003d84 <_vfprintf_r+0x18dc>
 8003b7e:	07c6      	lsls	r6, r0, #31
 8003b80:	f100 8100 	bmi.w	8003d84 <_vfprintf_r+0x18dc>
 8003b84:	9309      	str	r3, [sp, #36]	; 0x24
 8003b86:	2666      	movs	r6, #102	; 0x66
 8003b88:	0543      	lsls	r3, r0, #21
 8003b8a:	f100 8086 	bmi.w	8003c9a <_vfprintf_r+0x17f2>
 8003b8e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b90:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b94:	9304      	str	r3, [sp, #16]
 8003b96:	e79e      	b.n	8003ad6 <_vfprintf_r+0x162e>
 8003b98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b9a:	9907      	ldr	r1, [sp, #28]
 8003b9c:	9803      	ldr	r0, [sp, #12]
 8003b9e:	f002 ffb1 	bl	8006b04 <__sprint_r>
 8003ba2:	2800      	cmp	r0, #0
 8003ba4:	f47f a9f8 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 8003ba8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003baa:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003bac:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bae:	1ad3      	subs	r3, r2, r3
 8003bb0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bb4:	f7ff bb90 	b.w	80032d8 <_vfprintf_r+0xe30>
 8003bb8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bba:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003bbc:	4413      	add	r3, r2
 8003bbe:	9309      	str	r3, [sp, #36]	; 0x24
 8003bc0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bc2:	2b00      	cmp	r3, #0
 8003bc4:	f340 8149 	ble.w	8003e5a <_vfprintf_r+0x19b2>
 8003bc8:	2667      	movs	r6, #103	; 0x67
 8003bca:	e7dd      	b.n	8003b88 <_vfprintf_r+0x16e0>
 8003bcc:	2330      	movs	r3, #48	; 0x30
 8003bce:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003bd2:	2358      	movs	r3, #88	; 0x58
 8003bd4:	e595      	b.n	8003702 <_vfprintf_r+0x125a>
 8003bd6:	9803      	ldr	r0, [sp, #12]
 8003bd8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bda:	4649      	mov	r1, r9
 8003bdc:	f002 ff92 	bl	8006b04 <__sprint_r>
 8003be0:	2800      	cmp	r0, #0
 8003be2:	f47f a9e0 	bne.w	8002fa6 <_vfprintf_r+0xafe>
 8003be6:	f7fe bf0f 	b.w	8002a08 <_vfprintf_r+0x560>
 8003bea:	a824      	add	r0, sp, #144	; 0x90
 8003bec:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003bf0:	f002 fe90 	bl	8006914 <frexp>
 8003bf4:	2200      	movs	r2, #0
 8003bf6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003bfa:	ec51 0b10 	vmov	r0, r1, d0
 8003bfe:	f7fc ff9b 	bl	8000b38 <__aeabi_dmul>
 8003c02:	2200      	movs	r2, #0
 8003c04:	2300      	movs	r3, #0
 8003c06:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003c0a:	f7fd f9fd 	bl	8001008 <__aeabi_dcmpeq>
 8003c0e:	b108      	cbz	r0, 8003c14 <_vfprintf_r+0x176c>
 8003c10:	2301      	movs	r3, #1
 8003c12:	9324      	str	r3, [sp, #144]	; 0x90
 8003c14:	4b02      	ldr	r3, [pc, #8]	; (8003c20 <_vfprintf_r+0x1778>)
 8003c16:	9309      	str	r3, [sp, #36]	; 0x24
 8003c18:	e5ac      	b.n	8003774 <_vfprintf_r+0x12cc>
 8003c1a:	bf00      	nop
 8003c1c:	080071f4 	.word	0x080071f4
 8003c20:	080071b0 	.word	0x080071b0
 8003c24:	425d      	negs	r5, r3
 8003c26:	3310      	adds	r3, #16
 8003c28:	4bb9      	ldr	r3, [pc, #740]	; (8003f10 <_vfprintf_r+0x1a68>)
 8003c2a:	f280 8097 	bge.w	8003d5c <_vfprintf_r+0x18b4>
 8003c2e:	4619      	mov	r1, r3
 8003c30:	2610      	movs	r6, #16
 8003c32:	4623      	mov	r3, r4
 8003c34:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c38:	460c      	mov	r4, r1
 8003c3a:	e005      	b.n	8003c48 <_vfprintf_r+0x17a0>
 8003c3c:	f10b 0b08 	add.w	fp, fp, #8
 8003c40:	3d10      	subs	r5, #16
 8003c42:	2d10      	cmp	r5, #16
 8003c44:	f340 8087 	ble.w	8003d56 <_vfprintf_r+0x18ae>
 8003c48:	3201      	adds	r2, #1
 8003c4a:	3310      	adds	r3, #16
 8003c4c:	2a07      	cmp	r2, #7
 8003c4e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003c52:	e9cb 4600 	strd	r4, r6, [fp]
 8003c56:	ddf1      	ble.n	8003c3c <_vfprintf_r+0x1794>
 8003c58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c5a:	9907      	ldr	r1, [sp, #28]
 8003c5c:	4648      	mov	r0, r9
 8003c5e:	f002 ff51 	bl	8006b04 <__sprint_r>
 8003c62:	2800      	cmp	r0, #0
 8003c64:	f47f a998 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 8003c68:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003c6c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c70:	e7e6      	b.n	8003c40 <_vfprintf_r+0x1798>
 8003c72:	f109 0101 	add.w	r1, r9, #1
 8003c76:	9803      	ldr	r0, [sp, #12]
 8003c78:	f001 fe80 	bl	800597c <_malloc_r>
 8003c7c:	4607      	mov	r7, r0
 8003c7e:	2800      	cmp	r0, #0
 8003c80:	f000 813b 	beq.w	8003efa <_vfprintf_r+0x1a52>
 8003c84:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003c88:	930e      	str	r3, [sp, #56]	; 0x38
 8003c8a:	f026 0320 	bic.w	r3, r6, #32
 8003c8e:	9304      	str	r3, [sp, #16]
 8003c90:	46a0      	mov	r8, r4
 8003c92:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c94:	900a      	str	r0, [sp, #40]	; 0x28
 8003c96:	e547      	b.n	8003728 <_vfprintf_r+0x1280>
 8003c98:	2667      	movs	r6, #103	; 0x67
 8003c9a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003c9c:	2200      	movs	r2, #0
 8003c9e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003ca0:	9214      	str	r2, [sp, #80]	; 0x50
 8003ca2:	7803      	ldrb	r3, [r0, #0]
 8003ca4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003ca6:	2bff      	cmp	r3, #255	; 0xff
 8003ca8:	d00c      	beq.n	8003cc4 <_vfprintf_r+0x181c>
 8003caa:	4293      	cmp	r3, r2
 8003cac:	da0a      	bge.n	8003cc4 <_vfprintf_r+0x181c>
 8003cae:	7841      	ldrb	r1, [r0, #1]
 8003cb0:	1ad2      	subs	r2, r2, r3
 8003cb2:	b1a9      	cbz	r1, 8003ce0 <_vfprintf_r+0x1838>
 8003cb4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003cb6:	3301      	adds	r3, #1
 8003cb8:	9314      	str	r3, [sp, #80]	; 0x50
 8003cba:	460b      	mov	r3, r1
 8003cbc:	2bff      	cmp	r3, #255	; 0xff
 8003cbe:	f100 0001 	add.w	r0, r0, #1
 8003cc2:	d1f2      	bne.n	8003caa <_vfprintf_r+0x1802>
 8003cc4:	9211      	str	r2, [sp, #68]	; 0x44
 8003cc6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003cc8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003cca:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003ccc:	901a      	str	r0, [sp, #104]	; 0x68
 8003cce:	4413      	add	r3, r2
 8003cd0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003cd2:	fb02 1303 	mla	r3, r2, r3, r1
 8003cd6:	9309      	str	r3, [sp, #36]	; 0x24
 8003cd8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cdc:	9304      	str	r3, [sp, #16]
 8003cde:	e485      	b.n	80035ec <_vfprintf_r+0x1144>
 8003ce0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003ce2:	3101      	adds	r1, #1
 8003ce4:	910f      	str	r1, [sp, #60]	; 0x3c
 8003ce6:	e7de      	b.n	8003ca6 <_vfprintf_r+0x17fe>
 8003ce8:	aa28      	add	r2, sp, #160	; 0xa0
 8003cea:	ab25      	add	r3, sp, #148	; 0x94
 8003cec:	e9cd 3200 	strd	r3, r2, [sp]
 8003cf0:	2103      	movs	r1, #3
 8003cf2:	ab24      	add	r3, sp, #144	; 0x90
 8003cf4:	464a      	mov	r2, r9
 8003cf6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003cfa:	9803      	ldr	r0, [sp, #12]
 8003cfc:	f000 fa5c 	bl	80041b8 <_dtoa_r>
 8003d00:	464d      	mov	r5, r9
 8003d02:	4607      	mov	r7, r0
 8003d04:	eb00 0409 	add.w	r4, r0, r9
 8003d08:	783b      	ldrb	r3, [r7, #0]
 8003d0a:	2b30      	cmp	r3, #48	; 0x30
 8003d0c:	f000 80be 	beq.w	8003e8c <_vfprintf_r+0x19e4>
 8003d10:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003d12:	442c      	add	r4, r5
 8003d14:	2200      	movs	r2, #0
 8003d16:	2300      	movs	r3, #0
 8003d18:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003d1c:	f7fd f974 	bl	8001008 <__aeabi_dcmpeq>
 8003d20:	b108      	cbz	r0, 8003d26 <_vfprintf_r+0x187e>
 8003d22:	4623      	mov	r3, r4
 8003d24:	e413      	b.n	800354e <_vfprintf_r+0x10a6>
 8003d26:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d28:	42a3      	cmp	r3, r4
 8003d2a:	f4bf ac10 	bcs.w	800354e <_vfprintf_r+0x10a6>
 8003d2e:	2130      	movs	r1, #48	; 0x30
 8003d30:	1c5a      	adds	r2, r3, #1
 8003d32:	9228      	str	r2, [sp, #160]	; 0xa0
 8003d34:	7019      	strb	r1, [r3, #0]
 8003d36:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d38:	429c      	cmp	r4, r3
 8003d3a:	d8f9      	bhi.n	8003d30 <_vfprintf_r+0x1888>
 8003d3c:	e407      	b.n	800354e <_vfprintf_r+0x10a6>
 8003d3e:	197c      	adds	r4, r7, r5
 8003d40:	e7e8      	b.n	8003d14 <_vfprintf_r+0x186c>
 8003d42:	f1b9 0f00 	cmp.w	r9, #0
 8003d46:	f000 8092 	beq.w	8003e6e <_vfprintf_r+0x19c6>
 8003d4a:	900a      	str	r0, [sp, #40]	; 0x28
 8003d4c:	e4ec      	b.n	8003728 <_vfprintf_r+0x1280>
 8003d4e:	900a      	str	r0, [sp, #40]	; 0x28
 8003d50:	f04f 0906 	mov.w	r9, #6
 8003d54:	e4e8      	b.n	8003728 <_vfprintf_r+0x1280>
 8003d56:	4621      	mov	r1, r4
 8003d58:	461c      	mov	r4, r3
 8003d5a:	460b      	mov	r3, r1
 8003d5c:	3201      	adds	r2, #1
 8003d5e:	442c      	add	r4, r5
 8003d60:	2a07      	cmp	r2, #7
 8003d62:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d66:	e9cb 3500 	strd	r3, r5, [fp]
 8003d6a:	f300 80a9 	bgt.w	8003ec0 <_vfprintf_r+0x1a18>
 8003d6e:	f10b 0b08 	add.w	fp, fp, #8
 8003d72:	e470      	b.n	8003656 <_vfprintf_r+0x11ae>
 8003d74:	469a      	mov	sl, r3
 8003d76:	f7ff bb37 	b.w	80033e8 <_vfprintf_r+0xf40>
 8003d7a:	2301      	movs	r3, #1
 8003d7c:	9324      	str	r3, [sp, #144]	; 0x90
 8003d7e:	4b65      	ldr	r3, [pc, #404]	; (8003f14 <_vfprintf_r+0x1a6c>)
 8003d80:	9309      	str	r3, [sp, #36]	; 0x24
 8003d82:	e4f7      	b.n	8003774 <_vfprintf_r+0x12cc>
 8003d84:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d86:	4413      	add	r3, r2
 8003d88:	444b      	add	r3, r9
 8003d8a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d8c:	2666      	movs	r6, #102	; 0x66
 8003d8e:	e6fb      	b.n	8003b88 <_vfprintf_r+0x16e0>
 8003d90:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d92:	9309      	str	r3, [sp, #36]	; 0x24
 8003d94:	e694      	b.n	8003ac0 <_vfprintf_r+0x1618>
 8003d96:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003d9a:	4664      	mov	r4, ip
 8003d9c:	4d5e      	ldr	r5, [pc, #376]	; (8003f18 <_vfprintf_r+0x1a70>)
 8003d9e:	e000      	b.n	8003da2 <_vfprintf_r+0x18fa>
 8003da0:	4614      	mov	r4, r2
 8003da2:	fba5 1203 	umull	r1, r2, r5, r3
 8003da6:	08d2      	lsrs	r2, r2, #3
 8003da8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003dac:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003db0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003db4:	4613      	mov	r3, r2
 8003db6:	2b09      	cmp	r3, #9
 8003db8:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003dbc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003dc0:	dcee      	bgt.n	8003da0 <_vfprintf_r+0x18f8>
 8003dc2:	3330      	adds	r3, #48	; 0x30
 8003dc4:	3c02      	subs	r4, #2
 8003dc6:	b2db      	uxtb	r3, r3
 8003dc8:	45a4      	cmp	ip, r4
 8003dca:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003dce:	f240 8090 	bls.w	8003ef2 <_vfprintf_r+0x1a4a>
 8003dd2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003dd6:	4611      	mov	r1, r2
 8003dd8:	e001      	b.n	8003dde <_vfprintf_r+0x1936>
 8003dda:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003dde:	f804 3b01 	strb.w	r3, [r4], #1
 8003de2:	458c      	cmp	ip, r1
 8003de4:	d1f9      	bne.n	8003dda <_vfprintf_r+0x1932>
 8003de6:	ab2a      	add	r3, sp, #168	; 0xa8
 8003de8:	1a9b      	subs	r3, r3, r2
 8003dea:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003dee:	4413      	add	r3, r2
 8003df0:	f7ff bbe3 	b.w	80035ba <_vfprintf_r+0x1112>
 8003df4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003df6:	4f49      	ldr	r7, [pc, #292]	; (8003f1c <_vfprintf_r+0x1a74>)
 8003df8:	2b00      	cmp	r3, #0
 8003dfa:	bfb6      	itet	lt
 8003dfc:	222d      	movlt	r2, #45	; 0x2d
 8003dfe:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003e02:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003e06:	4b46      	ldr	r3, [pc, #280]	; (8003f20 <_vfprintf_r+0x1a78>)
 8003e08:	f7fe bf02 	b.w	8002c10 <_vfprintf_r+0x768>
 8003e0c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e10:	f7ff b8c9 	b.w	8002fa6 <_vfprintf_r+0xafe>
 8003e14:	aa28      	add	r2, sp, #160	; 0xa0
 8003e16:	ab25      	add	r3, sp, #148	; 0x94
 8003e18:	e9cd 3200 	strd	r3, r2, [sp]
 8003e1c:	2103      	movs	r1, #3
 8003e1e:	ab24      	add	r3, sp, #144	; 0x90
 8003e20:	464a      	mov	r2, r9
 8003e22:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e26:	9803      	ldr	r0, [sp, #12]
 8003e28:	f000 f9c6 	bl	80041b8 <_dtoa_r>
 8003e2c:	464d      	mov	r5, r9
 8003e2e:	4607      	mov	r7, r0
 8003e30:	2e46      	cmp	r6, #70	; 0x46
 8003e32:	eb07 0405 	add.w	r4, r7, r5
 8003e36:	f43f af67 	beq.w	8003d08 <_vfprintf_r+0x1860>
 8003e3a:	e76b      	b.n	8003d14 <_vfprintf_r+0x186c>
 8003e3c:	f1b9 0f00 	cmp.w	r9, #0
 8003e40:	d131      	bne.n	8003ea6 <_vfprintf_r+0x19fe>
 8003e42:	07c5      	lsls	r5, r0, #31
 8003e44:	d42f      	bmi.n	8003ea6 <_vfprintf_r+0x19fe>
 8003e46:	2301      	movs	r3, #1
 8003e48:	9304      	str	r3, [sp, #16]
 8003e4a:	9309      	str	r3, [sp, #36]	; 0x24
 8003e4c:	2666      	movs	r6, #102	; 0x66
 8003e4e:	e642      	b.n	8003ad6 <_vfprintf_r+0x162e>
 8003e50:	07c3      	lsls	r3, r0, #31
 8003e52:	f57f abbf 	bpl.w	80035d4 <_vfprintf_r+0x112c>
 8003e56:	f7ff bbb9 	b.w	80035cc <_vfprintf_r+0x1124>
 8003e5a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003e5c:	f1c3 0301 	rsb	r3, r3, #1
 8003e60:	441a      	add	r2, r3
 8003e62:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003e66:	9209      	str	r2, [sp, #36]	; 0x24
 8003e68:	9304      	str	r3, [sp, #16]
 8003e6a:	2667      	movs	r6, #103	; 0x67
 8003e6c:	e633      	b.n	8003ad6 <_vfprintf_r+0x162e>
 8003e6e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003e72:	f04f 0901 	mov.w	r9, #1
 8003e76:	e457      	b.n	8003728 <_vfprintf_r+0x1280>
 8003e78:	465a      	mov	r2, fp
 8003e7a:	e511      	b.n	80038a0 <_vfprintf_r+0x13f8>
 8003e7c:	2e47      	cmp	r6, #71	; 0x47
 8003e7e:	f47f af5e 	bne.w	8003d3e <_vfprintf_r+0x1896>
 8003e82:	f018 0f01 	tst.w	r8, #1
 8003e86:	f43f ab61 	beq.w	800354c <_vfprintf_r+0x10a4>
 8003e8a:	e7d1      	b.n	8003e30 <_vfprintf_r+0x1988>
 8003e8c:	2200      	movs	r2, #0
 8003e8e:	2300      	movs	r3, #0
 8003e90:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003e94:	f7fd f8b8 	bl	8001008 <__aeabi_dcmpeq>
 8003e98:	2800      	cmp	r0, #0
 8003e9a:	f47f af39 	bne.w	8003d10 <_vfprintf_r+0x1868>
 8003e9e:	f1c5 0501 	rsb	r5, r5, #1
 8003ea2:	9524      	str	r5, [sp, #144]	; 0x90
 8003ea4:	e735      	b.n	8003d12 <_vfprintf_r+0x186a>
 8003ea6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003ea8:	3301      	adds	r3, #1
 8003eaa:	444b      	add	r3, r9
 8003eac:	9309      	str	r3, [sp, #36]	; 0x24
 8003eae:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003eb2:	9304      	str	r3, [sp, #16]
 8003eb4:	2666      	movs	r6, #102	; 0x66
 8003eb6:	e60e      	b.n	8003ad6 <_vfprintf_r+0x162e>
 8003eb8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003ebc:	f7ff bb7a 	b.w	80035b4 <_vfprintf_r+0x110c>
 8003ec0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ec2:	9907      	ldr	r1, [sp, #28]
 8003ec4:	9803      	ldr	r0, [sp, #12]
 8003ec6:	f002 fe1d 	bl	8006b04 <__sprint_r>
 8003eca:	2800      	cmp	r0, #0
 8003ecc:	f47f a864 	bne.w	8002f98 <_vfprintf_r+0xaf0>
 8003ed0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003ed4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ed8:	f7ff bbbd 	b.w	8003656 <_vfprintf_r+0x11ae>
 8003edc:	9908      	ldr	r1, [sp, #32]
 8003ede:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003ee2:	680b      	ldr	r3, [r1, #0]
 8003ee4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003ee8:	1d0b      	adds	r3, r1, #4
 8003eea:	4692      	mov	sl, r2
 8003eec:	9308      	str	r3, [sp, #32]
 8003eee:	f7fe bb59 	b.w	80025a4 <_vfprintf_r+0xfc>
 8003ef2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003ef6:	f7ff bb60 	b.w	80035ba <_vfprintf_r+0x1112>
 8003efa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003efe:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003f02:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f06:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003f0a:	f7ff b84c 	b.w	8002fa6 <_vfprintf_r+0xafe>
 8003f0e:	bf00      	nop
 8003f10:	080071f4 	.word	0x080071f4
 8003f14:	080071c4 	.word	0x080071c4
 8003f18:	cccccccd 	.word	0xcccccccd
 8003f1c:	080071ac 	.word	0x080071ac
 8003f20:	080071a8 	.word	0x080071a8

08003f24 <__sbprintf>:
 8003f24:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003f28:	460c      	mov	r4, r1
 8003f2a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003f2e:	8989      	ldrh	r1, [r1, #12]
 8003f30:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003f32:	89e5      	ldrh	r5, [r4, #14]
 8003f34:	9619      	str	r6, [sp, #100]	; 0x64
 8003f36:	f021 0102 	bic.w	r1, r1, #2
 8003f3a:	4606      	mov	r6, r0
 8003f3c:	69e0      	ldr	r0, [r4, #28]
 8003f3e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003f42:	4617      	mov	r7, r2
 8003f44:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003f48:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003f4a:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003f4e:	4698      	mov	r8, r3
 8003f50:	ad1a      	add	r5, sp, #104	; 0x68
 8003f52:	2300      	movs	r3, #0
 8003f54:	9007      	str	r0, [sp, #28]
 8003f56:	a816      	add	r0, sp, #88	; 0x58
 8003f58:	9209      	str	r2, [sp, #36]	; 0x24
 8003f5a:	9306      	str	r3, [sp, #24]
 8003f5c:	9500      	str	r5, [sp, #0]
 8003f5e:	9504      	str	r5, [sp, #16]
 8003f60:	9102      	str	r1, [sp, #8]
 8003f62:	9105      	str	r1, [sp, #20]
 8003f64:	f001 fc8a 	bl	800587c <__retarget_lock_init_recursive>
 8003f68:	4643      	mov	r3, r8
 8003f6a:	463a      	mov	r2, r7
 8003f6c:	4669      	mov	r1, sp
 8003f6e:	4630      	mov	r0, r6
 8003f70:	f7fe fa9a 	bl	80024a8 <_vfprintf_r>
 8003f74:	1e05      	subs	r5, r0, #0
 8003f76:	db07      	blt.n	8003f88 <__sbprintf+0x64>
 8003f78:	4630      	mov	r0, r6
 8003f7a:	4669      	mov	r1, sp
 8003f7c:	f001 f8d6 	bl	800512c <_fflush_r>
 8003f80:	2800      	cmp	r0, #0
 8003f82:	bf18      	it	ne
 8003f84:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003f88:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003f8c:	065b      	lsls	r3, r3, #25
 8003f8e:	d503      	bpl.n	8003f98 <__sbprintf+0x74>
 8003f90:	89a3      	ldrh	r3, [r4, #12]
 8003f92:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f96:	81a3      	strh	r3, [r4, #12]
 8003f98:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003f9a:	f001 fc71 	bl	8005880 <__retarget_lock_close_recursive>
 8003f9e:	4628      	mov	r0, r5
 8003fa0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003fa4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003fa8 <__swsetup_r>:
 8003fa8:	b538      	push	{r3, r4, r5, lr}
 8003faa:	4b31      	ldr	r3, [pc, #196]	; (8004070 <__swsetup_r+0xc8>)
 8003fac:	681b      	ldr	r3, [r3, #0]
 8003fae:	4605      	mov	r5, r0
 8003fb0:	460c      	mov	r4, r1
 8003fb2:	b113      	cbz	r3, 8003fba <__swsetup_r+0x12>
 8003fb4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003fb6:	2a00      	cmp	r2, #0
 8003fb8:	d03a      	beq.n	8004030 <__swsetup_r+0x88>
 8003fba:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003fbe:	b293      	uxth	r3, r2
 8003fc0:	0718      	lsls	r0, r3, #28
 8003fc2:	d50c      	bpl.n	8003fde <__swsetup_r+0x36>
 8003fc4:	6920      	ldr	r0, [r4, #16]
 8003fc6:	b1a8      	cbz	r0, 8003ff4 <__swsetup_r+0x4c>
 8003fc8:	f013 0201 	ands.w	r2, r3, #1
 8003fcc:	d020      	beq.n	8004010 <__swsetup_r+0x68>
 8003fce:	6963      	ldr	r3, [r4, #20]
 8003fd0:	2200      	movs	r2, #0
 8003fd2:	425b      	negs	r3, r3
 8003fd4:	61a3      	str	r3, [r4, #24]
 8003fd6:	60a2      	str	r2, [r4, #8]
 8003fd8:	b300      	cbz	r0, 800401c <__swsetup_r+0x74>
 8003fda:	2000      	movs	r0, #0
 8003fdc:	bd38      	pop	{r3, r4, r5, pc}
 8003fde:	06d9      	lsls	r1, r3, #27
 8003fe0:	d53e      	bpl.n	8004060 <__swsetup_r+0xb8>
 8003fe2:	0758      	lsls	r0, r3, #29
 8003fe4:	d428      	bmi.n	8004038 <__swsetup_r+0x90>
 8003fe6:	6920      	ldr	r0, [r4, #16]
 8003fe8:	f042 0308 	orr.w	r3, r2, #8
 8003fec:	81a3      	strh	r3, [r4, #12]
 8003fee:	b29b      	uxth	r3, r3
 8003ff0:	2800      	cmp	r0, #0
 8003ff2:	d1e9      	bne.n	8003fc8 <__swsetup_r+0x20>
 8003ff4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003ff8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003ffc:	d0e4      	beq.n	8003fc8 <__swsetup_r+0x20>
 8003ffe:	4628      	mov	r0, r5
 8004000:	4621      	mov	r1, r4
 8004002:	f001 fc71 	bl	80058e8 <__smakebuf_r>
 8004006:	89a3      	ldrh	r3, [r4, #12]
 8004008:	6920      	ldr	r0, [r4, #16]
 800400a:	f013 0201 	ands.w	r2, r3, #1
 800400e:	d1de      	bne.n	8003fce <__swsetup_r+0x26>
 8004010:	0799      	lsls	r1, r3, #30
 8004012:	bf58      	it	pl
 8004014:	6962      	ldrpl	r2, [r4, #20]
 8004016:	60a2      	str	r2, [r4, #8]
 8004018:	2800      	cmp	r0, #0
 800401a:	d1de      	bne.n	8003fda <__swsetup_r+0x32>
 800401c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004020:	061a      	lsls	r2, r3, #24
 8004022:	d5db      	bpl.n	8003fdc <__swsetup_r+0x34>
 8004024:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004028:	81a3      	strh	r3, [r4, #12]
 800402a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800402e:	bd38      	pop	{r3, r4, r5, pc}
 8004030:	4618      	mov	r0, r3
 8004032:	f001 f8d7 	bl	80051e4 <__sinit>
 8004036:	e7c0      	b.n	8003fba <__swsetup_r+0x12>
 8004038:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800403a:	b151      	cbz	r1, 8004052 <__swsetup_r+0xaa>
 800403c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004040:	4299      	cmp	r1, r3
 8004042:	d004      	beq.n	800404e <__swsetup_r+0xa6>
 8004044:	4628      	mov	r0, r5
 8004046:	f001 f96f 	bl	8005328 <_free_r>
 800404a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800404e:	2300      	movs	r3, #0
 8004050:	6323      	str	r3, [r4, #48]	; 0x30
 8004052:	2300      	movs	r3, #0
 8004054:	6920      	ldr	r0, [r4, #16]
 8004056:	6063      	str	r3, [r4, #4]
 8004058:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800405c:	6020      	str	r0, [r4, #0]
 800405e:	e7c3      	b.n	8003fe8 <__swsetup_r+0x40>
 8004060:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004064:	2309      	movs	r3, #9
 8004066:	602b      	str	r3, [r5, #0]
 8004068:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800406c:	81a2      	strh	r2, [r4, #12]
 800406e:	bd38      	pop	{r3, r4, r5, pc}
 8004070:	20000018 	.word	0x20000018

08004074 <register_fini>:
 8004074:	4b02      	ldr	r3, [pc, #8]	; (8004080 <register_fini+0xc>)
 8004076:	b113      	cbz	r3, 800407e <register_fini+0xa>
 8004078:	4802      	ldr	r0, [pc, #8]	; (8004084 <register_fini+0x10>)
 800407a:	f000 b805 	b.w	8004088 <atexit>
 800407e:	4770      	bx	lr
 8004080:	00000000 	.word	0x00000000
 8004084:	08005255 	.word	0x08005255

08004088 <atexit>:
 8004088:	2300      	movs	r3, #0
 800408a:	4601      	mov	r1, r0
 800408c:	461a      	mov	r2, r3
 800408e:	4618      	mov	r0, r3
 8004090:	f002 bd58 	b.w	8006b44 <__register_exitproc>

08004094 <quorem>:
 8004094:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004098:	6903      	ldr	r3, [r0, #16]
 800409a:	690f      	ldr	r7, [r1, #16]
 800409c:	42bb      	cmp	r3, r7
 800409e:	b083      	sub	sp, #12
 80040a0:	f2c0 8086 	blt.w	80041b0 <quorem+0x11c>
 80040a4:	3f01      	subs	r7, #1
 80040a6:	f101 0914 	add.w	r9, r1, #20
 80040aa:	f100 0a14 	add.w	sl, r0, #20
 80040ae:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80040b2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80040b6:	00bc      	lsls	r4, r7, #2
 80040b8:	3201      	adds	r2, #1
 80040ba:	fbb3 f8f2 	udiv	r8, r3, r2
 80040be:	eb0a 0304 	add.w	r3, sl, r4
 80040c2:	9400      	str	r4, [sp, #0]
 80040c4:	eb09 0b04 	add.w	fp, r9, r4
 80040c8:	9301      	str	r3, [sp, #4]
 80040ca:	f1b8 0f00 	cmp.w	r8, #0
 80040ce:	d038      	beq.n	8004142 <quorem+0xae>
 80040d0:	2500      	movs	r5, #0
 80040d2:	462e      	mov	r6, r5
 80040d4:	46ce      	mov	lr, r9
 80040d6:	46d4      	mov	ip, sl
 80040d8:	f85e 4b04 	ldr.w	r4, [lr], #4
 80040dc:	f8dc 3000 	ldr.w	r3, [ip]
 80040e0:	b2a2      	uxth	r2, r4
 80040e2:	fb08 5502 	mla	r5, r8, r2, r5
 80040e6:	0c22      	lsrs	r2, r4, #16
 80040e8:	0c2c      	lsrs	r4, r5, #16
 80040ea:	fb08 4202 	mla	r2, r8, r2, r4
 80040ee:	b2ad      	uxth	r5, r5
 80040f0:	1b75      	subs	r5, r6, r5
 80040f2:	b296      	uxth	r6, r2
 80040f4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80040f8:	fa15 f383 	uxtah	r3, r5, r3
 80040fc:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004100:	b29b      	uxth	r3, r3
 8004102:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004106:	45f3      	cmp	fp, lr
 8004108:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800410c:	f84c 3b04 	str.w	r3, [ip], #4
 8004110:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004114:	d2e0      	bcs.n	80040d8 <quorem+0x44>
 8004116:	9b00      	ldr	r3, [sp, #0]
 8004118:	f85a 3003 	ldr.w	r3, [sl, r3]
 800411c:	b98b      	cbnz	r3, 8004142 <quorem+0xae>
 800411e:	9a01      	ldr	r2, [sp, #4]
 8004120:	1f13      	subs	r3, r2, #4
 8004122:	459a      	cmp	sl, r3
 8004124:	d20c      	bcs.n	8004140 <quorem+0xac>
 8004126:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800412a:	b94b      	cbnz	r3, 8004140 <quorem+0xac>
 800412c:	f1a2 0308 	sub.w	r3, r2, #8
 8004130:	e002      	b.n	8004138 <quorem+0xa4>
 8004132:	681a      	ldr	r2, [r3, #0]
 8004134:	3b04      	subs	r3, #4
 8004136:	b91a      	cbnz	r2, 8004140 <quorem+0xac>
 8004138:	459a      	cmp	sl, r3
 800413a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800413e:	d3f8      	bcc.n	8004132 <quorem+0x9e>
 8004140:	6107      	str	r7, [r0, #16]
 8004142:	4604      	mov	r4, r0
 8004144:	f002 f944 	bl	80063d0 <__mcmp>
 8004148:	2800      	cmp	r0, #0
 800414a:	db2d      	blt.n	80041a8 <quorem+0x114>
 800414c:	f108 0801 	add.w	r8, r8, #1
 8004150:	4655      	mov	r5, sl
 8004152:	2300      	movs	r3, #0
 8004154:	f859 1b04 	ldr.w	r1, [r9], #4
 8004158:	6828      	ldr	r0, [r5, #0]
 800415a:	b28a      	uxth	r2, r1
 800415c:	1a9a      	subs	r2, r3, r2
 800415e:	0c0b      	lsrs	r3, r1, #16
 8004160:	fa12 f280 	uxtah	r2, r2, r0
 8004164:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004168:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800416c:	b292      	uxth	r2, r2
 800416e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004172:	45cb      	cmp	fp, r9
 8004174:	f845 2b04 	str.w	r2, [r5], #4
 8004178:	ea4f 4323 	mov.w	r3, r3, asr #16
 800417c:	d2ea      	bcs.n	8004154 <quorem+0xc0>
 800417e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004182:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004186:	b97a      	cbnz	r2, 80041a8 <quorem+0x114>
 8004188:	1f1a      	subs	r2, r3, #4
 800418a:	4592      	cmp	sl, r2
 800418c:	d20b      	bcs.n	80041a6 <quorem+0x112>
 800418e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004192:	b942      	cbnz	r2, 80041a6 <quorem+0x112>
 8004194:	3b08      	subs	r3, #8
 8004196:	e002      	b.n	800419e <quorem+0x10a>
 8004198:	681a      	ldr	r2, [r3, #0]
 800419a:	3b04      	subs	r3, #4
 800419c:	b91a      	cbnz	r2, 80041a6 <quorem+0x112>
 800419e:	459a      	cmp	sl, r3
 80041a0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80041a4:	d3f8      	bcc.n	8004198 <quorem+0x104>
 80041a6:	6127      	str	r7, [r4, #16]
 80041a8:	4640      	mov	r0, r8
 80041aa:	b003      	add	sp, #12
 80041ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041b0:	2000      	movs	r0, #0
 80041b2:	b003      	add	sp, #12
 80041b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080041b8 <_dtoa_r>:
 80041b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80041bc:	ec55 4b10 	vmov	r4, r5, d0
 80041c0:	b09b      	sub	sp, #108	; 0x6c
 80041c2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80041c4:	9102      	str	r1, [sp, #8]
 80041c6:	4681      	mov	r9, r0
 80041c8:	9207      	str	r2, [sp, #28]
 80041ca:	9305      	str	r3, [sp, #20]
 80041cc:	e9cd 4500 	strd	r4, r5, [sp]
 80041d0:	b156      	cbz	r6, 80041e8 <_dtoa_r+0x30>
 80041d2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80041d4:	6072      	str	r2, [r6, #4]
 80041d6:	2301      	movs	r3, #1
 80041d8:	4093      	lsls	r3, r2
 80041da:	60b3      	str	r3, [r6, #8]
 80041dc:	4631      	mov	r1, r6
 80041de:	f001 ff07 	bl	8005ff0 <_Bfree>
 80041e2:	2300      	movs	r3, #0
 80041e4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80041e8:	f1b5 0800 	subs.w	r8, r5, #0
 80041ec:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80041ee:	bfb4      	ite	lt
 80041f0:	2301      	movlt	r3, #1
 80041f2:	2300      	movge	r3, #0
 80041f4:	6013      	str	r3, [r2, #0]
 80041f6:	4b76      	ldr	r3, [pc, #472]	; (80043d0 <_dtoa_r+0x218>)
 80041f8:	bfbc      	itt	lt
 80041fa:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80041fe:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004202:	ea33 0308 	bics.w	r3, r3, r8
 8004206:	f000 80a6 	beq.w	8004356 <_dtoa_r+0x19e>
 800420a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800420e:	2200      	movs	r2, #0
 8004210:	2300      	movs	r3, #0
 8004212:	4630      	mov	r0, r6
 8004214:	4639      	mov	r1, r7
 8004216:	f7fc fef7 	bl	8001008 <__aeabi_dcmpeq>
 800421a:	4605      	mov	r5, r0
 800421c:	b178      	cbz	r0, 800423e <_dtoa_r+0x86>
 800421e:	9a05      	ldr	r2, [sp, #20]
 8004220:	2301      	movs	r3, #1
 8004222:	6013      	str	r3, [r2, #0]
 8004224:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004226:	2b00      	cmp	r3, #0
 8004228:	f000 80c0 	beq.w	80043ac <_dtoa_r+0x1f4>
 800422c:	4b69      	ldr	r3, [pc, #420]	; (80043d4 <_dtoa_r+0x21c>)
 800422e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004230:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004234:	6013      	str	r3, [r2, #0]
 8004236:	4658      	mov	r0, fp
 8004238:	b01b      	add	sp, #108	; 0x6c
 800423a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800423e:	aa18      	add	r2, sp, #96	; 0x60
 8004240:	a919      	add	r1, sp, #100	; 0x64
 8004242:	ec47 6b10 	vmov	d0, r6, r7
 8004246:	4648      	mov	r0, r9
 8004248:	f002 f954 	bl	80064f4 <__d2b>
 800424c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004250:	4682      	mov	sl, r0
 8004252:	f040 80a0 	bne.w	8004396 <_dtoa_r+0x1de>
 8004256:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800425a:	442c      	add	r4, r5
 800425c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004260:	2b20      	cmp	r3, #32
 8004262:	f340 842c 	ble.w	8004abe <_dtoa_r+0x906>
 8004266:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800426a:	fa08 f803 	lsl.w	r8, r8, r3
 800426e:	9b00      	ldr	r3, [sp, #0]
 8004270:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004274:	fa23 f000 	lsr.w	r0, r3, r0
 8004278:	ea48 0000 	orr.w	r0, r8, r0
 800427c:	f7fc fbe2 	bl	8000a44 <__aeabi_ui2d>
 8004280:	2301      	movs	r3, #1
 8004282:	4606      	mov	r6, r0
 8004284:	3c01      	subs	r4, #1
 8004286:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800428a:	930f      	str	r3, [sp, #60]	; 0x3c
 800428c:	4630      	mov	r0, r6
 800428e:	4639      	mov	r1, r7
 8004290:	2200      	movs	r2, #0
 8004292:	4b51      	ldr	r3, [pc, #324]	; (80043d8 <_dtoa_r+0x220>)
 8004294:	f7fc fa98 	bl	80007c8 <__aeabi_dsub>
 8004298:	a347      	add	r3, pc, #284	; (adr r3, 80043b8 <_dtoa_r+0x200>)
 800429a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800429e:	f7fc fc4b 	bl	8000b38 <__aeabi_dmul>
 80042a2:	a347      	add	r3, pc, #284	; (adr r3, 80043c0 <_dtoa_r+0x208>)
 80042a4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80042a8:	f7fc fa90 	bl	80007cc <__adddf3>
 80042ac:	4606      	mov	r6, r0
 80042ae:	4620      	mov	r0, r4
 80042b0:	460f      	mov	r7, r1
 80042b2:	f7fc fbd7 	bl	8000a64 <__aeabi_i2d>
 80042b6:	a344      	add	r3, pc, #272	; (adr r3, 80043c8 <_dtoa_r+0x210>)
 80042b8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80042bc:	f7fc fc3c 	bl	8000b38 <__aeabi_dmul>
 80042c0:	4602      	mov	r2, r0
 80042c2:	460b      	mov	r3, r1
 80042c4:	4630      	mov	r0, r6
 80042c6:	4639      	mov	r1, r7
 80042c8:	f7fc fa80 	bl	80007cc <__adddf3>
 80042cc:	4606      	mov	r6, r0
 80042ce:	460f      	mov	r7, r1
 80042d0:	f7fc fee2 	bl	8001098 <__aeabi_d2iz>
 80042d4:	2200      	movs	r2, #0
 80042d6:	9006      	str	r0, [sp, #24]
 80042d8:	2300      	movs	r3, #0
 80042da:	4630      	mov	r0, r6
 80042dc:	4639      	mov	r1, r7
 80042de:	f7fc fe9d 	bl	800101c <__aeabi_dcmplt>
 80042e2:	2800      	cmp	r0, #0
 80042e4:	f040 8273 	bne.w	80047ce <_dtoa_r+0x616>
 80042e8:	9e06      	ldr	r6, [sp, #24]
 80042ea:	2e16      	cmp	r6, #22
 80042ec:	f200 825d 	bhi.w	80047aa <_dtoa_r+0x5f2>
 80042f0:	4b3a      	ldr	r3, [pc, #232]	; (80043dc <_dtoa_r+0x224>)
 80042f2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80042f6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80042fa:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042fe:	f7fc feab 	bl	8001058 <__aeabi_dcmpgt>
 8004302:	2800      	cmp	r0, #0
 8004304:	f000 83d7 	beq.w	8004ab6 <_dtoa_r+0x8fe>
 8004308:	1e73      	subs	r3, r6, #1
 800430a:	9306      	str	r3, [sp, #24]
 800430c:	2300      	movs	r3, #0
 800430e:	930d      	str	r3, [sp, #52]	; 0x34
 8004310:	1b2c      	subs	r4, r5, r4
 8004312:	f1b4 0801 	subs.w	r8, r4, #1
 8004316:	f100 8254 	bmi.w	80047c2 <_dtoa_r+0x60a>
 800431a:	2300      	movs	r3, #0
 800431c:	9308      	str	r3, [sp, #32]
 800431e:	9b06      	ldr	r3, [sp, #24]
 8004320:	2b00      	cmp	r3, #0
 8004322:	f2c0 8245 	blt.w	80047b0 <_dtoa_r+0x5f8>
 8004326:	4498      	add	r8, r3
 8004328:	930c      	str	r3, [sp, #48]	; 0x30
 800432a:	2300      	movs	r3, #0
 800432c:	930b      	str	r3, [sp, #44]	; 0x2c
 800432e:	9b02      	ldr	r3, [sp, #8]
 8004330:	2b09      	cmp	r3, #9
 8004332:	d85b      	bhi.n	80043ec <_dtoa_r+0x234>
 8004334:	2b05      	cmp	r3, #5
 8004336:	f340 83c0 	ble.w	8004aba <_dtoa_r+0x902>
 800433a:	3b04      	subs	r3, #4
 800433c:	9302      	str	r3, [sp, #8]
 800433e:	2500      	movs	r5, #0
 8004340:	9b02      	ldr	r3, [sp, #8]
 8004342:	3b02      	subs	r3, #2
 8004344:	2b03      	cmp	r3, #3
 8004346:	f200 8498 	bhi.w	8004c7a <_dtoa_r+0xac2>
 800434a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800434e:	03df      	.short	0x03df
 8004350:	03e803bf 	.word	0x03e803bf
 8004354:	04f5      	.short	0x04f5
 8004356:	9a05      	ldr	r2, [sp, #20]
 8004358:	f242 730f 	movw	r3, #9999	; 0x270f
 800435c:	6013      	str	r3, [r2, #0]
 800435e:	9b00      	ldr	r3, [sp, #0]
 8004360:	b983      	cbnz	r3, 8004384 <_dtoa_r+0x1cc>
 8004362:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004366:	b96b      	cbnz	r3, 8004384 <_dtoa_r+0x1cc>
 8004368:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800436a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80043e0 <_dtoa_r+0x228>
 800436e:	2b00      	cmp	r3, #0
 8004370:	f43f af61 	beq.w	8004236 <_dtoa_r+0x7e>
 8004374:	f10b 0308 	add.w	r3, fp, #8
 8004378:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800437a:	4658      	mov	r0, fp
 800437c:	6013      	str	r3, [r2, #0]
 800437e:	b01b      	add	sp, #108	; 0x6c
 8004380:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004384:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004386:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80043e4 <_dtoa_r+0x22c>
 800438a:	2b00      	cmp	r3, #0
 800438c:	f43f af53 	beq.w	8004236 <_dtoa_r+0x7e>
 8004390:	f10b 0303 	add.w	r3, fp, #3
 8004394:	e7f0      	b.n	8004378 <_dtoa_r+0x1c0>
 8004396:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800439a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800439e:	950f      	str	r5, [sp, #60]	; 0x3c
 80043a0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80043a4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80043a8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80043aa:	e76f      	b.n	800428c <_dtoa_r+0xd4>
 80043ac:	f8df b038 	ldr.w	fp, [pc, #56]	; 80043e8 <_dtoa_r+0x230>
 80043b0:	4658      	mov	r0, fp
 80043b2:	b01b      	add	sp, #108	; 0x6c
 80043b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80043b8:	636f4361 	.word	0x636f4361
 80043bc:	3fd287a7 	.word	0x3fd287a7
 80043c0:	8b60c8b3 	.word	0x8b60c8b3
 80043c4:	3fc68a28 	.word	0x3fc68a28
 80043c8:	509f79fb 	.word	0x509f79fb
 80043cc:	3fd34413 	.word	0x3fd34413
 80043d0:	7ff00000 	.word	0x7ff00000
 80043d4:	080071e1 	.word	0x080071e1
 80043d8:	3ff80000 	.word	0x3ff80000
 80043dc:	08007240 	.word	0x08007240
 80043e0:	08007204 	.word	0x08007204
 80043e4:	08007210 	.word	0x08007210
 80043e8:	080071e0 	.word	0x080071e0
 80043ec:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80043f0:	2501      	movs	r5, #1
 80043f2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80043f6:	2300      	movs	r3, #0
 80043f8:	9302      	str	r3, [sp, #8]
 80043fa:	9307      	str	r3, [sp, #28]
 80043fc:	2100      	movs	r1, #0
 80043fe:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004402:	940e      	str	r4, [sp, #56]	; 0x38
 8004404:	4648      	mov	r0, r9
 8004406:	f001 fdcd 	bl	8005fa4 <_Balloc>
 800440a:	2c0e      	cmp	r4, #14
 800440c:	4683      	mov	fp, r0
 800440e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004412:	f200 80fb 	bhi.w	800460c <_dtoa_r+0x454>
 8004416:	2d00      	cmp	r5, #0
 8004418:	f000 80f8 	beq.w	800460c <_dtoa_r+0x454>
 800441c:	ed9d 7b00 	vldr	d7, [sp]
 8004420:	9906      	ldr	r1, [sp, #24]
 8004422:	2900      	cmp	r1, #0
 8004424:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004428:	f340 83e5 	ble.w	8004bf6 <_dtoa_r+0xa3e>
 800442c:	4b9d      	ldr	r3, [pc, #628]	; (80046a4 <_dtoa_r+0x4ec>)
 800442e:	f001 020f 	and.w	r2, r1, #15
 8004432:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004436:	ed93 7b00 	vldr	d7, [r3]
 800443a:	110c      	asrs	r4, r1, #4
 800443c:	06e2      	lsls	r2, r4, #27
 800443e:	ed8d 7b00 	vstr	d7, [sp]
 8004442:	f140 849e 	bpl.w	8004d82 <_dtoa_r+0xbca>
 8004446:	4b98      	ldr	r3, [pc, #608]	; (80046a8 <_dtoa_r+0x4f0>)
 8004448:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800444c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004450:	f7fc fc9c 	bl	8000d8c <__aeabi_ddiv>
 8004454:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004458:	f004 040f 	and.w	r4, r4, #15
 800445c:	2603      	movs	r6, #3
 800445e:	b17c      	cbz	r4, 8004480 <_dtoa_r+0x2c8>
 8004460:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004464:	4d90      	ldr	r5, [pc, #576]	; (80046a8 <_dtoa_r+0x4f0>)
 8004466:	07e3      	lsls	r3, r4, #31
 8004468:	d504      	bpl.n	8004474 <_dtoa_r+0x2bc>
 800446a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800446e:	f7fc fb63 	bl	8000b38 <__aeabi_dmul>
 8004472:	3601      	adds	r6, #1
 8004474:	1064      	asrs	r4, r4, #1
 8004476:	f105 0508 	add.w	r5, r5, #8
 800447a:	d1f4      	bne.n	8004466 <_dtoa_r+0x2ae>
 800447c:	e9cd 0100 	strd	r0, r1, [sp]
 8004480:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004484:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004488:	f7fc fc80 	bl	8000d8c <__aeabi_ddiv>
 800448c:	e9cd 0100 	strd	r0, r1, [sp]
 8004490:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004492:	b143      	cbz	r3, 80044a6 <_dtoa_r+0x2ee>
 8004494:	2200      	movs	r2, #0
 8004496:	4b85      	ldr	r3, [pc, #532]	; (80046ac <_dtoa_r+0x4f4>)
 8004498:	e9dd 0100 	ldrd	r0, r1, [sp]
 800449c:	f7fc fdbe 	bl	800101c <__aeabi_dcmplt>
 80044a0:	2800      	cmp	r0, #0
 80044a2:	f040 84ff 	bne.w	8004ea4 <_dtoa_r+0xcec>
 80044a6:	4630      	mov	r0, r6
 80044a8:	f7fc fadc 	bl	8000a64 <__aeabi_i2d>
 80044ac:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044b0:	f7fc fb42 	bl	8000b38 <__aeabi_dmul>
 80044b4:	4b7e      	ldr	r3, [pc, #504]	; (80046b0 <_dtoa_r+0x4f8>)
 80044b6:	2200      	movs	r2, #0
 80044b8:	f7fc f988 	bl	80007cc <__adddf3>
 80044bc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044be:	4606      	mov	r6, r0
 80044c0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80044c4:	2b00      	cmp	r3, #0
 80044c6:	f000 841c 	beq.w	8004d02 <_dtoa_r+0xb4a>
 80044ca:	9b06      	ldr	r3, [sp, #24]
 80044cc:	9316      	str	r3, [sp, #88]	; 0x58
 80044ce:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044d0:	9312      	str	r3, [sp, #72]	; 0x48
 80044d2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044d6:	f7fc fddf 	bl	8001098 <__aeabi_d2iz>
 80044da:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80044dc:	4b71      	ldr	r3, [pc, #452]	; (80046a4 <_dtoa_r+0x4ec>)
 80044de:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044e2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80044e6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80044ea:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80044ee:	f7fc fab9 	bl	8000a64 <__aeabi_i2d>
 80044f2:	460b      	mov	r3, r1
 80044f4:	4602      	mov	r2, r0
 80044f6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044fa:	e9cd 6700 	strd	r6, r7, [sp]
 80044fe:	f7fc f963 	bl	80007c8 <__aeabi_dsub>
 8004502:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004504:	b2ed      	uxtb	r5, r5
 8004506:	4606      	mov	r6, r0
 8004508:	460f      	mov	r7, r1
 800450a:	f10b 0401 	add.w	r4, fp, #1
 800450e:	2b00      	cmp	r3, #0
 8004510:	f000 8458 	beq.w	8004dc4 <_dtoa_r+0xc0c>
 8004514:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004518:	2000      	movs	r0, #0
 800451a:	4966      	ldr	r1, [pc, #408]	; (80046b4 <_dtoa_r+0x4fc>)
 800451c:	f7fc fc36 	bl	8000d8c <__aeabi_ddiv>
 8004520:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004524:	f7fc f950 	bl	80007c8 <__aeabi_dsub>
 8004528:	f88b 5000 	strb.w	r5, [fp]
 800452c:	4632      	mov	r2, r6
 800452e:	463b      	mov	r3, r7
 8004530:	e9cd 0100 	strd	r0, r1, [sp]
 8004534:	f7fc fd90 	bl	8001058 <__aeabi_dcmpgt>
 8004538:	2800      	cmp	r0, #0
 800453a:	f040 8502 	bne.w	8004f42 <_dtoa_r+0xd8a>
 800453e:	4632      	mov	r2, r6
 8004540:	463b      	mov	r3, r7
 8004542:	2000      	movs	r0, #0
 8004544:	4959      	ldr	r1, [pc, #356]	; (80046ac <_dtoa_r+0x4f4>)
 8004546:	f7fc f93f 	bl	80007c8 <__aeabi_dsub>
 800454a:	4602      	mov	r2, r0
 800454c:	460b      	mov	r3, r1
 800454e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004552:	f7fc fd81 	bl	8001058 <__aeabi_dcmpgt>
 8004556:	2800      	cmp	r0, #0
 8004558:	f040 84fb 	bne.w	8004f52 <_dtoa_r+0xd9a>
 800455c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800455e:	2a01      	cmp	r2, #1
 8004560:	d050      	beq.n	8004604 <_dtoa_r+0x44c>
 8004562:	445a      	add	r2, fp
 8004564:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004568:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800456c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004570:	4692      	mov	sl, r2
 8004572:	46cb      	mov	fp, r9
 8004574:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004578:	e00c      	b.n	8004594 <_dtoa_r+0x3dc>
 800457a:	2000      	movs	r0, #0
 800457c:	494b      	ldr	r1, [pc, #300]	; (80046ac <_dtoa_r+0x4f4>)
 800457e:	f7fc f923 	bl	80007c8 <__aeabi_dsub>
 8004582:	4642      	mov	r2, r8
 8004584:	464b      	mov	r3, r9
 8004586:	f7fc fd49 	bl	800101c <__aeabi_dcmplt>
 800458a:	2800      	cmp	r0, #0
 800458c:	f040 84dc 	bne.w	8004f48 <_dtoa_r+0xd90>
 8004590:	4554      	cmp	r4, sl
 8004592:	d030      	beq.n	80045f6 <_dtoa_r+0x43e>
 8004594:	4640      	mov	r0, r8
 8004596:	4649      	mov	r1, r9
 8004598:	2200      	movs	r2, #0
 800459a:	4b47      	ldr	r3, [pc, #284]	; (80046b8 <_dtoa_r+0x500>)
 800459c:	f7fc facc 	bl	8000b38 <__aeabi_dmul>
 80045a0:	2200      	movs	r2, #0
 80045a2:	4b45      	ldr	r3, [pc, #276]	; (80046b8 <_dtoa_r+0x500>)
 80045a4:	4680      	mov	r8, r0
 80045a6:	4689      	mov	r9, r1
 80045a8:	4630      	mov	r0, r6
 80045aa:	4639      	mov	r1, r7
 80045ac:	f7fc fac4 	bl	8000b38 <__aeabi_dmul>
 80045b0:	460f      	mov	r7, r1
 80045b2:	4606      	mov	r6, r0
 80045b4:	f7fc fd70 	bl	8001098 <__aeabi_d2iz>
 80045b8:	4605      	mov	r5, r0
 80045ba:	f7fc fa53 	bl	8000a64 <__aeabi_i2d>
 80045be:	4602      	mov	r2, r0
 80045c0:	460b      	mov	r3, r1
 80045c2:	4630      	mov	r0, r6
 80045c4:	4639      	mov	r1, r7
 80045c6:	f7fc f8ff 	bl	80007c8 <__aeabi_dsub>
 80045ca:	3530      	adds	r5, #48	; 0x30
 80045cc:	b2ed      	uxtb	r5, r5
 80045ce:	4642      	mov	r2, r8
 80045d0:	464b      	mov	r3, r9
 80045d2:	f804 5b01 	strb.w	r5, [r4], #1
 80045d6:	4606      	mov	r6, r0
 80045d8:	460f      	mov	r7, r1
 80045da:	f7fc fd1f 	bl	800101c <__aeabi_dcmplt>
 80045de:	4632      	mov	r2, r6
 80045e0:	463b      	mov	r3, r7
 80045e2:	2800      	cmp	r0, #0
 80045e4:	d0c9      	beq.n	800457a <_dtoa_r+0x3c2>
 80045e6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80045e8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80045ec:	9306      	str	r3, [sp, #24]
 80045ee:	46d9      	mov	r9, fp
 80045f0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80045f4:	e236      	b.n	8004a64 <_dtoa_r+0x8ac>
 80045f6:	46d9      	mov	r9, fp
 80045f8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80045fc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004600:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004604:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004608:	e9cd 3400 	strd	r3, r4, [sp]
 800460c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800460e:	2b00      	cmp	r3, #0
 8004610:	f2c0 80ae 	blt.w	8004770 <_dtoa_r+0x5b8>
 8004614:	9a06      	ldr	r2, [sp, #24]
 8004616:	2a0e      	cmp	r2, #14
 8004618:	f300 80aa 	bgt.w	8004770 <_dtoa_r+0x5b8>
 800461c:	4b21      	ldr	r3, [pc, #132]	; (80046a4 <_dtoa_r+0x4ec>)
 800461e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004622:	ed93 7b00 	vldr	d7, [r3]
 8004626:	9b07      	ldr	r3, [sp, #28]
 8004628:	2b00      	cmp	r3, #0
 800462a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800462e:	f2c0 82be 	blt.w	8004bae <_dtoa_r+0x9f6>
 8004632:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004636:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800463a:	4630      	mov	r0, r6
 800463c:	4639      	mov	r1, r7
 800463e:	f7fc fba5 	bl	8000d8c <__aeabi_ddiv>
 8004642:	f7fc fd29 	bl	8001098 <__aeabi_d2iz>
 8004646:	4605      	mov	r5, r0
 8004648:	f7fc fa0c 	bl	8000a64 <__aeabi_i2d>
 800464c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004650:	f7fc fa72 	bl	8000b38 <__aeabi_dmul>
 8004654:	460b      	mov	r3, r1
 8004656:	4602      	mov	r2, r0
 8004658:	4639      	mov	r1, r7
 800465a:	4630      	mov	r0, r6
 800465c:	f7fc f8b4 	bl	80007c8 <__aeabi_dsub>
 8004660:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004664:	f88b 3000 	strb.w	r3, [fp]
 8004668:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800466a:	2b01      	cmp	r3, #1
 800466c:	4606      	mov	r6, r0
 800466e:	460f      	mov	r7, r1
 8004670:	f10b 0401 	add.w	r4, fp, #1
 8004674:	d053      	beq.n	800471e <_dtoa_r+0x566>
 8004676:	2200      	movs	r2, #0
 8004678:	4b0f      	ldr	r3, [pc, #60]	; (80046b8 <_dtoa_r+0x500>)
 800467a:	f7fc fa5d 	bl	8000b38 <__aeabi_dmul>
 800467e:	2200      	movs	r2, #0
 8004680:	2300      	movs	r3, #0
 8004682:	4606      	mov	r6, r0
 8004684:	460f      	mov	r7, r1
 8004686:	f7fc fcbf 	bl	8001008 <__aeabi_dcmpeq>
 800468a:	2800      	cmp	r0, #0
 800468c:	f040 81ea 	bne.w	8004a64 <_dtoa_r+0x8ac>
 8004690:	f8cd a000 	str.w	sl, [sp]
 8004694:	f8cd 901c 	str.w	r9, [sp, #28]
 8004698:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800469c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80046a0:	e017      	b.n	80046d2 <_dtoa_r+0x51a>
 80046a2:	bf00      	nop
 80046a4:	08007240 	.word	0x08007240
 80046a8:	08007218 	.word	0x08007218
 80046ac:	3ff00000 	.word	0x3ff00000
 80046b0:	401c0000 	.word	0x401c0000
 80046b4:	3fe00000 	.word	0x3fe00000
 80046b8:	40240000 	.word	0x40240000
 80046bc:	f7fc fa3c 	bl	8000b38 <__aeabi_dmul>
 80046c0:	2200      	movs	r2, #0
 80046c2:	2300      	movs	r3, #0
 80046c4:	4606      	mov	r6, r0
 80046c6:	460f      	mov	r7, r1
 80046c8:	f7fc fc9e 	bl	8001008 <__aeabi_dcmpeq>
 80046cc:	2800      	cmp	r0, #0
 80046ce:	f040 833d 	bne.w	8004d4c <_dtoa_r+0xb94>
 80046d2:	464a      	mov	r2, r9
 80046d4:	4653      	mov	r3, sl
 80046d6:	4630      	mov	r0, r6
 80046d8:	4639      	mov	r1, r7
 80046da:	f7fc fb57 	bl	8000d8c <__aeabi_ddiv>
 80046de:	f7fc fcdb 	bl	8001098 <__aeabi_d2iz>
 80046e2:	4605      	mov	r5, r0
 80046e4:	f7fc f9be 	bl	8000a64 <__aeabi_i2d>
 80046e8:	464a      	mov	r2, r9
 80046ea:	4653      	mov	r3, sl
 80046ec:	f7fc fa24 	bl	8000b38 <__aeabi_dmul>
 80046f0:	4602      	mov	r2, r0
 80046f2:	460b      	mov	r3, r1
 80046f4:	4630      	mov	r0, r6
 80046f6:	4639      	mov	r1, r7
 80046f8:	f7fc f866 	bl	80007c8 <__aeabi_dsub>
 80046fc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004700:	f804 cb01 	strb.w	ip, [r4], #1
 8004704:	eba4 0c0b 	sub.w	ip, r4, fp
 8004708:	45e0      	cmp	r8, ip
 800470a:	4606      	mov	r6, r0
 800470c:	460f      	mov	r7, r1
 800470e:	f04f 0200 	mov.w	r2, #0
 8004712:	4bc1      	ldr	r3, [pc, #772]	; (8004a18 <_dtoa_r+0x860>)
 8004714:	d1d2      	bne.n	80046bc <_dtoa_r+0x504>
 8004716:	f8dd a000 	ldr.w	sl, [sp]
 800471a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800471e:	4632      	mov	r2, r6
 8004720:	463b      	mov	r3, r7
 8004722:	4630      	mov	r0, r6
 8004724:	4639      	mov	r1, r7
 8004726:	f7fc f851 	bl	80007cc <__adddf3>
 800472a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800472e:	4606      	mov	r6, r0
 8004730:	460f      	mov	r7, r1
 8004732:	f7fc fc91 	bl	8001058 <__aeabi_dcmpgt>
 8004736:	b958      	cbnz	r0, 8004750 <_dtoa_r+0x598>
 8004738:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800473c:	4630      	mov	r0, r6
 800473e:	4639      	mov	r1, r7
 8004740:	f7fc fc62 	bl	8001008 <__aeabi_dcmpeq>
 8004744:	2800      	cmp	r0, #0
 8004746:	f000 818d 	beq.w	8004a64 <_dtoa_r+0x8ac>
 800474a:	07e9      	lsls	r1, r5, #31
 800474c:	f140 818a 	bpl.w	8004a64 <_dtoa_r+0x8ac>
 8004750:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004754:	e005      	b.n	8004762 <_dtoa_r+0x5aa>
 8004756:	459b      	cmp	fp, r3
 8004758:	f000 8373 	beq.w	8004e42 <_dtoa_r+0xc8a>
 800475c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004760:	461c      	mov	r4, r3
 8004762:	2d39      	cmp	r5, #57	; 0x39
 8004764:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004768:	d0f5      	beq.n	8004756 <_dtoa_r+0x59e>
 800476a:	3501      	adds	r5, #1
 800476c:	701d      	strb	r5, [r3, #0]
 800476e:	e179      	b.n	8004a64 <_dtoa_r+0x8ac>
 8004770:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004772:	2a00      	cmp	r2, #0
 8004774:	d03b      	beq.n	80047ee <_dtoa_r+0x636>
 8004776:	9a02      	ldr	r2, [sp, #8]
 8004778:	2a01      	cmp	r2, #1
 800477a:	f340 820b 	ble.w	8004b94 <_dtoa_r+0x9dc>
 800477e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004780:	1e5f      	subs	r7, r3, #1
 8004782:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004784:	42bb      	cmp	r3, r7
 8004786:	f2c0 82e6 	blt.w	8004d56 <_dtoa_r+0xb9e>
 800478a:	1bdf      	subs	r7, r3, r7
 800478c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800478e:	2b00      	cmp	r3, #0
 8004790:	f2c0 830b 	blt.w	8004daa <_dtoa_r+0xbf2>
 8004794:	9a08      	ldr	r2, [sp, #32]
 8004796:	4614      	mov	r4, r2
 8004798:	441a      	add	r2, r3
 800479a:	4498      	add	r8, r3
 800479c:	9208      	str	r2, [sp, #32]
 800479e:	2101      	movs	r1, #1
 80047a0:	4648      	mov	r0, r9
 80047a2:	f001 fcbf 	bl	8006124 <__i2b>
 80047a6:	4605      	mov	r5, r0
 80047a8:	e024      	b.n	80047f4 <_dtoa_r+0x63c>
 80047aa:	2301      	movs	r3, #1
 80047ac:	930d      	str	r3, [sp, #52]	; 0x34
 80047ae:	e5af      	b.n	8004310 <_dtoa_r+0x158>
 80047b0:	9a08      	ldr	r2, [sp, #32]
 80047b2:	9b06      	ldr	r3, [sp, #24]
 80047b4:	1ad2      	subs	r2, r2, r3
 80047b6:	425b      	negs	r3, r3
 80047b8:	930b      	str	r3, [sp, #44]	; 0x2c
 80047ba:	2300      	movs	r3, #0
 80047bc:	9208      	str	r2, [sp, #32]
 80047be:	930c      	str	r3, [sp, #48]	; 0x30
 80047c0:	e5b5      	b.n	800432e <_dtoa_r+0x176>
 80047c2:	f1c4 0301 	rsb	r3, r4, #1
 80047c6:	9308      	str	r3, [sp, #32]
 80047c8:	f04f 0800 	mov.w	r8, #0
 80047cc:	e5a7      	b.n	800431e <_dtoa_r+0x166>
 80047ce:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80047d2:	4640      	mov	r0, r8
 80047d4:	f7fc f946 	bl	8000a64 <__aeabi_i2d>
 80047d8:	4632      	mov	r2, r6
 80047da:	463b      	mov	r3, r7
 80047dc:	f7fc fc14 	bl	8001008 <__aeabi_dcmpeq>
 80047e0:	2800      	cmp	r0, #0
 80047e2:	f47f ad81 	bne.w	80042e8 <_dtoa_r+0x130>
 80047e6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80047ea:	9306      	str	r3, [sp, #24]
 80047ec:	e57c      	b.n	80042e8 <_dtoa_r+0x130>
 80047ee:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80047f0:	9c08      	ldr	r4, [sp, #32]
 80047f2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80047f4:	2c00      	cmp	r4, #0
 80047f6:	dd0c      	ble.n	8004812 <_dtoa_r+0x65a>
 80047f8:	f1b8 0f00 	cmp.w	r8, #0
 80047fc:	dd09      	ble.n	8004812 <_dtoa_r+0x65a>
 80047fe:	4544      	cmp	r4, r8
 8004800:	9a08      	ldr	r2, [sp, #32]
 8004802:	4623      	mov	r3, r4
 8004804:	bfa8      	it	ge
 8004806:	4643      	movge	r3, r8
 8004808:	1ad2      	subs	r2, r2, r3
 800480a:	9208      	str	r2, [sp, #32]
 800480c:	1ae4      	subs	r4, r4, r3
 800480e:	eba8 0803 	sub.w	r8, r8, r3
 8004812:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004814:	b16b      	cbz	r3, 8004832 <_dtoa_r+0x67a>
 8004816:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004818:	2a00      	cmp	r2, #0
 800481a:	f000 8290 	beq.w	8004d3e <_dtoa_r+0xb86>
 800481e:	1bde      	subs	r6, r3, r7
 8004820:	2f00      	cmp	r7, #0
 8004822:	f040 819b 	bne.w	8004b5c <_dtoa_r+0x9a4>
 8004826:	4651      	mov	r1, sl
 8004828:	4632      	mov	r2, r6
 800482a:	4648      	mov	r0, r9
 800482c:	f001 fd2a 	bl	8006284 <__pow5mult>
 8004830:	4682      	mov	sl, r0
 8004832:	2101      	movs	r1, #1
 8004834:	4648      	mov	r0, r9
 8004836:	f001 fc75 	bl	8006124 <__i2b>
 800483a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800483c:	4606      	mov	r6, r0
 800483e:	2a00      	cmp	r2, #0
 8004840:	f040 8125 	bne.w	8004a8e <_dtoa_r+0x8d6>
 8004844:	9b02      	ldr	r3, [sp, #8]
 8004846:	2b01      	cmp	r3, #1
 8004848:	f340 816c 	ble.w	8004b24 <_dtoa_r+0x96c>
 800484c:	2001      	movs	r0, #1
 800484e:	4440      	add	r0, r8
 8004850:	f010 001f 	ands.w	r0, r0, #31
 8004854:	f000 8119 	beq.w	8004a8a <_dtoa_r+0x8d2>
 8004858:	f1c0 0320 	rsb	r3, r0, #32
 800485c:	2b04      	cmp	r3, #4
 800485e:	f340 83ac 	ble.w	8004fba <_dtoa_r+0xe02>
 8004862:	f1c0 001c 	rsb	r0, r0, #28
 8004866:	9b08      	ldr	r3, [sp, #32]
 8004868:	4403      	add	r3, r0
 800486a:	9308      	str	r3, [sp, #32]
 800486c:	4404      	add	r4, r0
 800486e:	4480      	add	r8, r0
 8004870:	9b08      	ldr	r3, [sp, #32]
 8004872:	2b00      	cmp	r3, #0
 8004874:	dd05      	ble.n	8004882 <_dtoa_r+0x6ca>
 8004876:	4651      	mov	r1, sl
 8004878:	461a      	mov	r2, r3
 800487a:	4648      	mov	r0, r9
 800487c:	f001 fd52 	bl	8006324 <__lshift>
 8004880:	4682      	mov	sl, r0
 8004882:	f1b8 0f00 	cmp.w	r8, #0
 8004886:	dd05      	ble.n	8004894 <_dtoa_r+0x6dc>
 8004888:	4631      	mov	r1, r6
 800488a:	4642      	mov	r2, r8
 800488c:	4648      	mov	r0, r9
 800488e:	f001 fd49 	bl	8006324 <__lshift>
 8004892:	4606      	mov	r6, r0
 8004894:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004896:	2b00      	cmp	r3, #0
 8004898:	d177      	bne.n	800498a <_dtoa_r+0x7d2>
 800489a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800489c:	2b00      	cmp	r3, #0
 800489e:	f340 8209 	ble.w	8004cb4 <_dtoa_r+0xafc>
 80048a2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048a4:	2b00      	cmp	r3, #0
 80048a6:	f000 8089 	beq.w	80049bc <_dtoa_r+0x804>
 80048aa:	2c00      	cmp	r4, #0
 80048ac:	f300 816b 	bgt.w	8004b86 <_dtoa_r+0x9ce>
 80048b0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80048b2:	2b00      	cmp	r3, #0
 80048b4:	f040 81cd 	bne.w	8004c52 <_dtoa_r+0xa9a>
 80048b8:	46a8      	mov	r8, r5
 80048ba:	9a00      	ldr	r2, [sp, #0]
 80048bc:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80048c0:	f002 0201 	and.w	r2, r2, #1
 80048c4:	920a      	str	r2, [sp, #40]	; 0x28
 80048c6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80048c8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80048cc:	441a      	add	r2, r3
 80048ce:	465f      	mov	r7, fp
 80048d0:	9209      	str	r2, [sp, #36]	; 0x24
 80048d2:	46b3      	mov	fp, r6
 80048d4:	4659      	mov	r1, fp
 80048d6:	4650      	mov	r0, sl
 80048d8:	f7ff fbdc 	bl	8004094 <quorem>
 80048dc:	4629      	mov	r1, r5
 80048de:	4604      	mov	r4, r0
 80048e0:	4650      	mov	r0, sl
 80048e2:	f001 fd75 	bl	80063d0 <__mcmp>
 80048e6:	4659      	mov	r1, fp
 80048e8:	4606      	mov	r6, r0
 80048ea:	4642      	mov	r2, r8
 80048ec:	4648      	mov	r0, r9
 80048ee:	f001 fd8b 	bl	8006408 <__mdiff>
 80048f2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80048f6:	9300      	str	r3, [sp, #0]
 80048f8:	68c3      	ldr	r3, [r0, #12]
 80048fa:	4601      	mov	r1, r0
 80048fc:	2b00      	cmp	r3, #0
 80048fe:	f040 81d4 	bne.w	8004caa <_dtoa_r+0xaf2>
 8004902:	9008      	str	r0, [sp, #32]
 8004904:	4650      	mov	r0, sl
 8004906:	f001 fd63 	bl	80063d0 <__mcmp>
 800490a:	9a08      	ldr	r2, [sp, #32]
 800490c:	9007      	str	r0, [sp, #28]
 800490e:	4611      	mov	r1, r2
 8004910:	4648      	mov	r0, r9
 8004912:	f001 fb6d 	bl	8005ff0 <_Bfree>
 8004916:	9b07      	ldr	r3, [sp, #28]
 8004918:	b933      	cbnz	r3, 8004928 <_dtoa_r+0x770>
 800491a:	9a02      	ldr	r2, [sp, #8]
 800491c:	b922      	cbnz	r2, 8004928 <_dtoa_r+0x770>
 800491e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004920:	2b00      	cmp	r3, #0
 8004922:	f000 8319 	beq.w	8004f58 <_dtoa_r+0xda0>
 8004926:	9b02      	ldr	r3, [sp, #8]
 8004928:	2e00      	cmp	r6, #0
 800492a:	f2c0 821c 	blt.w	8004d66 <_dtoa_r+0xbae>
 800492e:	d105      	bne.n	800493c <_dtoa_r+0x784>
 8004930:	9a02      	ldr	r2, [sp, #8]
 8004932:	b91a      	cbnz	r2, 800493c <_dtoa_r+0x784>
 8004934:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004936:	2a00      	cmp	r2, #0
 8004938:	f000 8215 	beq.w	8004d66 <_dtoa_r+0xbae>
 800493c:	2b00      	cmp	r3, #0
 800493e:	f107 0401 	add.w	r4, r7, #1
 8004942:	f300 8225 	bgt.w	8004d90 <_dtoa_r+0xbd8>
 8004946:	9b00      	ldr	r3, [sp, #0]
 8004948:	703b      	strb	r3, [r7, #0]
 800494a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800494c:	42bb      	cmp	r3, r7
 800494e:	f000 8230 	beq.w	8004db2 <_dtoa_r+0xbfa>
 8004952:	4651      	mov	r1, sl
 8004954:	2300      	movs	r3, #0
 8004956:	220a      	movs	r2, #10
 8004958:	4648      	mov	r0, r9
 800495a:	f001 fb53 	bl	8006004 <__multadd>
 800495e:	4545      	cmp	r5, r8
 8004960:	4682      	mov	sl, r0
 8004962:	4629      	mov	r1, r5
 8004964:	f04f 0300 	mov.w	r3, #0
 8004968:	f04f 020a 	mov.w	r2, #10
 800496c:	4648      	mov	r0, r9
 800496e:	f000 8196 	beq.w	8004c9e <_dtoa_r+0xae6>
 8004972:	f001 fb47 	bl	8006004 <__multadd>
 8004976:	4641      	mov	r1, r8
 8004978:	4605      	mov	r5, r0
 800497a:	2300      	movs	r3, #0
 800497c:	220a      	movs	r2, #10
 800497e:	4648      	mov	r0, r9
 8004980:	f001 fb40 	bl	8006004 <__multadd>
 8004984:	4627      	mov	r7, r4
 8004986:	4680      	mov	r8, r0
 8004988:	e7a4      	b.n	80048d4 <_dtoa_r+0x71c>
 800498a:	4631      	mov	r1, r6
 800498c:	4650      	mov	r0, sl
 800498e:	f001 fd1f 	bl	80063d0 <__mcmp>
 8004992:	2800      	cmp	r0, #0
 8004994:	da81      	bge.n	800489a <_dtoa_r+0x6e2>
 8004996:	9f06      	ldr	r7, [sp, #24]
 8004998:	4651      	mov	r1, sl
 800499a:	2300      	movs	r3, #0
 800499c:	220a      	movs	r2, #10
 800499e:	4648      	mov	r0, r9
 80049a0:	3f01      	subs	r7, #1
 80049a2:	9706      	str	r7, [sp, #24]
 80049a4:	f001 fb2e 	bl	8006004 <__multadd>
 80049a8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80049aa:	4682      	mov	sl, r0
 80049ac:	2b00      	cmp	r3, #0
 80049ae:	f040 82eb 	bne.w	8004f88 <_dtoa_r+0xdd0>
 80049b2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80049b4:	2b00      	cmp	r3, #0
 80049b6:	f340 82f3 	ble.w	8004fa0 <_dtoa_r+0xde8>
 80049ba:	9309      	str	r3, [sp, #36]	; 0x24
 80049bc:	465c      	mov	r4, fp
 80049be:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80049c2:	e002      	b.n	80049ca <_dtoa_r+0x812>
 80049c4:	f001 fb1e 	bl	8006004 <__multadd>
 80049c8:	4682      	mov	sl, r0
 80049ca:	4631      	mov	r1, r6
 80049cc:	4650      	mov	r0, sl
 80049ce:	f7ff fb61 	bl	8004094 <quorem>
 80049d2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80049d6:	f804 7b01 	strb.w	r7, [r4], #1
 80049da:	eba4 030b 	sub.w	r3, r4, fp
 80049de:	4598      	cmp	r8, r3
 80049e0:	f04f 020a 	mov.w	r2, #10
 80049e4:	f04f 0300 	mov.w	r3, #0
 80049e8:	4651      	mov	r1, sl
 80049ea:	4648      	mov	r0, r9
 80049ec:	dcea      	bgt.n	80049c4 <_dtoa_r+0x80c>
 80049ee:	2300      	movs	r3, #0
 80049f0:	9700      	str	r7, [sp, #0]
 80049f2:	9302      	str	r3, [sp, #8]
 80049f4:	4651      	mov	r1, sl
 80049f6:	2201      	movs	r2, #1
 80049f8:	4648      	mov	r0, r9
 80049fa:	f001 fc93 	bl	8006324 <__lshift>
 80049fe:	4631      	mov	r1, r6
 8004a00:	4682      	mov	sl, r0
 8004a02:	f001 fce5 	bl	80063d0 <__mcmp>
 8004a06:	2800      	cmp	r0, #0
 8004a08:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004a0c:	dc14      	bgt.n	8004a38 <_dtoa_r+0x880>
 8004a0e:	d108      	bne.n	8004a22 <_dtoa_r+0x86a>
 8004a10:	9b00      	ldr	r3, [sp, #0]
 8004a12:	07db      	lsls	r3, r3, #31
 8004a14:	d410      	bmi.n	8004a38 <_dtoa_r+0x880>
 8004a16:	e004      	b.n	8004a22 <_dtoa_r+0x86a>
 8004a18:	40240000 	.word	0x40240000
 8004a1c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004a20:	461c      	mov	r4, r3
 8004a22:	2a30      	cmp	r2, #48	; 0x30
 8004a24:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a28:	d0f8      	beq.n	8004a1c <_dtoa_r+0x864>
 8004a2a:	e00b      	b.n	8004a44 <_dtoa_r+0x88c>
 8004a2c:	459b      	cmp	fp, r3
 8004a2e:	f000 814e 	beq.w	8004cce <_dtoa_r+0xb16>
 8004a32:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004a36:	461c      	mov	r4, r3
 8004a38:	2a39      	cmp	r2, #57	; 0x39
 8004a3a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a3e:	d0f5      	beq.n	8004a2c <_dtoa_r+0x874>
 8004a40:	3201      	adds	r2, #1
 8004a42:	701a      	strb	r2, [r3, #0]
 8004a44:	4631      	mov	r1, r6
 8004a46:	4648      	mov	r0, r9
 8004a48:	f001 fad2 	bl	8005ff0 <_Bfree>
 8004a4c:	b155      	cbz	r5, 8004a64 <_dtoa_r+0x8ac>
 8004a4e:	9902      	ldr	r1, [sp, #8]
 8004a50:	b121      	cbz	r1, 8004a5c <_dtoa_r+0x8a4>
 8004a52:	42a9      	cmp	r1, r5
 8004a54:	d002      	beq.n	8004a5c <_dtoa_r+0x8a4>
 8004a56:	4648      	mov	r0, r9
 8004a58:	f001 faca 	bl	8005ff0 <_Bfree>
 8004a5c:	4629      	mov	r1, r5
 8004a5e:	4648      	mov	r0, r9
 8004a60:	f001 fac6 	bl	8005ff0 <_Bfree>
 8004a64:	4651      	mov	r1, sl
 8004a66:	4648      	mov	r0, r9
 8004a68:	f001 fac2 	bl	8005ff0 <_Bfree>
 8004a6c:	2200      	movs	r2, #0
 8004a6e:	9b06      	ldr	r3, [sp, #24]
 8004a70:	7022      	strb	r2, [r4, #0]
 8004a72:	9a05      	ldr	r2, [sp, #20]
 8004a74:	3301      	adds	r3, #1
 8004a76:	6013      	str	r3, [r2, #0]
 8004a78:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a7a:	2b00      	cmp	r3, #0
 8004a7c:	f43f abdb 	beq.w	8004236 <_dtoa_r+0x7e>
 8004a80:	4658      	mov	r0, fp
 8004a82:	601c      	str	r4, [r3, #0]
 8004a84:	b01b      	add	sp, #108	; 0x6c
 8004a86:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a8a:	201c      	movs	r0, #28
 8004a8c:	e6eb      	b.n	8004866 <_dtoa_r+0x6ae>
 8004a8e:	4601      	mov	r1, r0
 8004a90:	4648      	mov	r0, r9
 8004a92:	f001 fbf7 	bl	8006284 <__pow5mult>
 8004a96:	9b02      	ldr	r3, [sp, #8]
 8004a98:	2b01      	cmp	r3, #1
 8004a9a:	4606      	mov	r6, r0
 8004a9c:	f340 80d4 	ble.w	8004c48 <_dtoa_r+0xa90>
 8004aa0:	2300      	movs	r3, #0
 8004aa2:	930c      	str	r3, [sp, #48]	; 0x30
 8004aa4:	6933      	ldr	r3, [r6, #16]
 8004aa6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004aaa:	6918      	ldr	r0, [r3, #16]
 8004aac:	f001 faea 	bl	8006084 <__hi0bits>
 8004ab0:	f1c0 0020 	rsb	r0, r0, #32
 8004ab4:	e6cb      	b.n	800484e <_dtoa_r+0x696>
 8004ab6:	900d      	str	r0, [sp, #52]	; 0x34
 8004ab8:	e42a      	b.n	8004310 <_dtoa_r+0x158>
 8004aba:	2501      	movs	r5, #1
 8004abc:	e440      	b.n	8004340 <_dtoa_r+0x188>
 8004abe:	f1c3 0820 	rsb	r8, r3, #32
 8004ac2:	9b00      	ldr	r3, [sp, #0]
 8004ac4:	fa03 f008 	lsl.w	r0, r3, r8
 8004ac8:	f7ff bbd8 	b.w	800427c <_dtoa_r+0xc4>
 8004acc:	2300      	movs	r3, #0
 8004ace:	930a      	str	r3, [sp, #40]	; 0x28
 8004ad0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004ad4:	4413      	add	r3, r2
 8004ad6:	930e      	str	r3, [sp, #56]	; 0x38
 8004ad8:	3301      	adds	r3, #1
 8004ada:	2b01      	cmp	r3, #1
 8004adc:	461e      	mov	r6, r3
 8004ade:	9309      	str	r3, [sp, #36]	; 0x24
 8004ae0:	bfb8      	it	lt
 8004ae2:	2601      	movlt	r6, #1
 8004ae4:	2100      	movs	r1, #0
 8004ae6:	2e17      	cmp	r6, #23
 8004ae8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004aec:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004aee:	f77f ac89 	ble.w	8004404 <_dtoa_r+0x24c>
 8004af2:	2201      	movs	r2, #1
 8004af4:	2304      	movs	r3, #4
 8004af6:	005b      	lsls	r3, r3, #1
 8004af8:	f103 0014 	add.w	r0, r3, #20
 8004afc:	42b0      	cmp	r0, r6
 8004afe:	4611      	mov	r1, r2
 8004b00:	f102 0201 	add.w	r2, r2, #1
 8004b04:	d9f7      	bls.n	8004af6 <_dtoa_r+0x93e>
 8004b06:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004b0a:	e47b      	b.n	8004404 <_dtoa_r+0x24c>
 8004b0c:	2300      	movs	r3, #0
 8004b0e:	930a      	str	r3, [sp, #40]	; 0x28
 8004b10:	9e07      	ldr	r6, [sp, #28]
 8004b12:	2e00      	cmp	r6, #0
 8004b14:	f340 80e2 	ble.w	8004cdc <_dtoa_r+0xb24>
 8004b18:	960e      	str	r6, [sp, #56]	; 0x38
 8004b1a:	9609      	str	r6, [sp, #36]	; 0x24
 8004b1c:	e7e2      	b.n	8004ae4 <_dtoa_r+0x92c>
 8004b1e:	2301      	movs	r3, #1
 8004b20:	930a      	str	r3, [sp, #40]	; 0x28
 8004b22:	e7f5      	b.n	8004b10 <_dtoa_r+0x958>
 8004b24:	9b00      	ldr	r3, [sp, #0]
 8004b26:	2b00      	cmp	r3, #0
 8004b28:	f47f ae90 	bne.w	800484c <_dtoa_r+0x694>
 8004b2c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004b30:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004b34:	2b00      	cmp	r3, #0
 8004b36:	f040 8192 	bne.w	8004e5e <_dtoa_r+0xca6>
 8004b3a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004b3e:	0d1b      	lsrs	r3, r3, #20
 8004b40:	051b      	lsls	r3, r3, #20
 8004b42:	b12b      	cbz	r3, 8004b50 <_dtoa_r+0x998>
 8004b44:	9b08      	ldr	r3, [sp, #32]
 8004b46:	3301      	adds	r3, #1
 8004b48:	9308      	str	r3, [sp, #32]
 8004b4a:	f108 0801 	add.w	r8, r8, #1
 8004b4e:	2301      	movs	r3, #1
 8004b50:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b52:	930c      	str	r3, [sp, #48]	; 0x30
 8004b54:	2a00      	cmp	r2, #0
 8004b56:	f43f ae79 	beq.w	800484c <_dtoa_r+0x694>
 8004b5a:	e7a3      	b.n	8004aa4 <_dtoa_r+0x8ec>
 8004b5c:	463a      	mov	r2, r7
 8004b5e:	4629      	mov	r1, r5
 8004b60:	4648      	mov	r0, r9
 8004b62:	f001 fb8f 	bl	8006284 <__pow5mult>
 8004b66:	4652      	mov	r2, sl
 8004b68:	4601      	mov	r1, r0
 8004b6a:	4605      	mov	r5, r0
 8004b6c:	4648      	mov	r0, r9
 8004b6e:	f001 fae3 	bl	8006138 <__multiply>
 8004b72:	4651      	mov	r1, sl
 8004b74:	4607      	mov	r7, r0
 8004b76:	4648      	mov	r0, r9
 8004b78:	f001 fa3a 	bl	8005ff0 <_Bfree>
 8004b7c:	46ba      	mov	sl, r7
 8004b7e:	2e00      	cmp	r6, #0
 8004b80:	f43f ae57 	beq.w	8004832 <_dtoa_r+0x67a>
 8004b84:	e64f      	b.n	8004826 <_dtoa_r+0x66e>
 8004b86:	4629      	mov	r1, r5
 8004b88:	4622      	mov	r2, r4
 8004b8a:	4648      	mov	r0, r9
 8004b8c:	f001 fbca 	bl	8006324 <__lshift>
 8004b90:	4605      	mov	r5, r0
 8004b92:	e68d      	b.n	80048b0 <_dtoa_r+0x6f8>
 8004b94:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004b96:	2a00      	cmp	r2, #0
 8004b98:	f000 815d 	beq.w	8004e56 <_dtoa_r+0xc9e>
 8004b9c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004ba0:	9a08      	ldr	r2, [sp, #32]
 8004ba2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004ba4:	4614      	mov	r4, r2
 8004ba6:	441a      	add	r2, r3
 8004ba8:	4498      	add	r8, r3
 8004baa:	9208      	str	r2, [sp, #32]
 8004bac:	e5f7      	b.n	800479e <_dtoa_r+0x5e6>
 8004bae:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bb0:	2b00      	cmp	r3, #0
 8004bb2:	f73f ad3e 	bgt.w	8004632 <_dtoa_r+0x47a>
 8004bb6:	f040 80bc 	bne.w	8004d32 <_dtoa_r+0xb7a>
 8004bba:	ec51 0b17 	vmov	r0, r1, d7
 8004bbe:	2200      	movs	r2, #0
 8004bc0:	4bb2      	ldr	r3, [pc, #712]	; (8004e8c <_dtoa_r+0xcd4>)
 8004bc2:	f7fb ffb9 	bl	8000b38 <__aeabi_dmul>
 8004bc6:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004bca:	f7fc fa3b 	bl	8001044 <__aeabi_dcmpge>
 8004bce:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004bd0:	4635      	mov	r5, r6
 8004bd2:	2800      	cmp	r0, #0
 8004bd4:	d176      	bne.n	8004cc4 <_dtoa_r+0xb0c>
 8004bd6:	9a06      	ldr	r2, [sp, #24]
 8004bd8:	2331      	movs	r3, #49	; 0x31
 8004bda:	3201      	adds	r2, #1
 8004bdc:	9206      	str	r2, [sp, #24]
 8004bde:	f88b 3000 	strb.w	r3, [fp]
 8004be2:	f10b 0401 	add.w	r4, fp, #1
 8004be6:	4631      	mov	r1, r6
 8004be8:	4648      	mov	r0, r9
 8004bea:	f001 fa01 	bl	8005ff0 <_Bfree>
 8004bee:	2d00      	cmp	r5, #0
 8004bf0:	f47f af34 	bne.w	8004a5c <_dtoa_r+0x8a4>
 8004bf4:	e736      	b.n	8004a64 <_dtoa_r+0x8ac>
 8004bf6:	f000 8142 	beq.w	8004e7e <_dtoa_r+0xcc6>
 8004bfa:	9b06      	ldr	r3, [sp, #24]
 8004bfc:	425c      	negs	r4, r3
 8004bfe:	4ba4      	ldr	r3, [pc, #656]	; (8004e90 <_dtoa_r+0xcd8>)
 8004c00:	f004 020f 	and.w	r2, r4, #15
 8004c04:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004c08:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c0c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004c10:	f7fb ff92 	bl	8000b38 <__aeabi_dmul>
 8004c14:	1124      	asrs	r4, r4, #4
 8004c16:	e9cd 0100 	strd	r0, r1, [sp]
 8004c1a:	f000 81c6 	beq.w	8004faa <_dtoa_r+0xdf2>
 8004c1e:	4d9d      	ldr	r5, [pc, #628]	; (8004e94 <_dtoa_r+0xcdc>)
 8004c20:	2300      	movs	r3, #0
 8004c22:	2602      	movs	r6, #2
 8004c24:	07e7      	lsls	r7, r4, #31
 8004c26:	d505      	bpl.n	8004c34 <_dtoa_r+0xa7c>
 8004c28:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004c2c:	f7fb ff84 	bl	8000b38 <__aeabi_dmul>
 8004c30:	3601      	adds	r6, #1
 8004c32:	2301      	movs	r3, #1
 8004c34:	1064      	asrs	r4, r4, #1
 8004c36:	f105 0508 	add.w	r5, r5, #8
 8004c3a:	d1f3      	bne.n	8004c24 <_dtoa_r+0xa6c>
 8004c3c:	2b00      	cmp	r3, #0
 8004c3e:	f43f ac27 	beq.w	8004490 <_dtoa_r+0x2d8>
 8004c42:	e9cd 0100 	strd	r0, r1, [sp]
 8004c46:	e423      	b.n	8004490 <_dtoa_r+0x2d8>
 8004c48:	9b00      	ldr	r3, [sp, #0]
 8004c4a:	2b00      	cmp	r3, #0
 8004c4c:	f43f af6e 	beq.w	8004b2c <_dtoa_r+0x974>
 8004c50:	e726      	b.n	8004aa0 <_dtoa_r+0x8e8>
 8004c52:	6869      	ldr	r1, [r5, #4]
 8004c54:	4648      	mov	r0, r9
 8004c56:	f001 f9a5 	bl	8005fa4 <_Balloc>
 8004c5a:	692b      	ldr	r3, [r5, #16]
 8004c5c:	3302      	adds	r3, #2
 8004c5e:	009a      	lsls	r2, r3, #2
 8004c60:	4604      	mov	r4, r0
 8004c62:	f105 010c 	add.w	r1, r5, #12
 8004c66:	300c      	adds	r0, #12
 8004c68:	f7fb fc4a 	bl	8000500 <memcpy>
 8004c6c:	4621      	mov	r1, r4
 8004c6e:	2201      	movs	r2, #1
 8004c70:	4648      	mov	r0, r9
 8004c72:	f001 fb57 	bl	8006324 <__lshift>
 8004c76:	4680      	mov	r8, r0
 8004c78:	e61f      	b.n	80048ba <_dtoa_r+0x702>
 8004c7a:	2400      	movs	r4, #0
 8004c7c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004c80:	4621      	mov	r1, r4
 8004c82:	4648      	mov	r0, r9
 8004c84:	f001 f98e 	bl	8005fa4 <_Balloc>
 8004c88:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004c8c:	930e      	str	r3, [sp, #56]	; 0x38
 8004c8e:	9309      	str	r3, [sp, #36]	; 0x24
 8004c90:	2301      	movs	r3, #1
 8004c92:	4683      	mov	fp, r0
 8004c94:	9407      	str	r4, [sp, #28]
 8004c96:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004c9a:	930a      	str	r3, [sp, #40]	; 0x28
 8004c9c:	e4b6      	b.n	800460c <_dtoa_r+0x454>
 8004c9e:	f001 f9b1 	bl	8006004 <__multadd>
 8004ca2:	4627      	mov	r7, r4
 8004ca4:	4605      	mov	r5, r0
 8004ca6:	4680      	mov	r8, r0
 8004ca8:	e614      	b.n	80048d4 <_dtoa_r+0x71c>
 8004caa:	4648      	mov	r0, r9
 8004cac:	f001 f9a0 	bl	8005ff0 <_Bfree>
 8004cb0:	2301      	movs	r3, #1
 8004cb2:	e639      	b.n	8004928 <_dtoa_r+0x770>
 8004cb4:	9b02      	ldr	r3, [sp, #8]
 8004cb6:	2b02      	cmp	r3, #2
 8004cb8:	f77f adf3 	ble.w	80048a2 <_dtoa_r+0x6ea>
 8004cbc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cbe:	2b00      	cmp	r3, #0
 8004cc0:	f000 80cf 	beq.w	8004e62 <_dtoa_r+0xcaa>
 8004cc4:	9b07      	ldr	r3, [sp, #28]
 8004cc6:	43db      	mvns	r3, r3
 8004cc8:	9306      	str	r3, [sp, #24]
 8004cca:	465c      	mov	r4, fp
 8004ccc:	e78b      	b.n	8004be6 <_dtoa_r+0xa2e>
 8004cce:	9a06      	ldr	r2, [sp, #24]
 8004cd0:	2331      	movs	r3, #49	; 0x31
 8004cd2:	3201      	adds	r2, #1
 8004cd4:	9206      	str	r2, [sp, #24]
 8004cd6:	f88b 3000 	strb.w	r3, [fp]
 8004cda:	e6b3      	b.n	8004a44 <_dtoa_r+0x88c>
 8004cdc:	2401      	movs	r4, #1
 8004cde:	9409      	str	r4, [sp, #36]	; 0x24
 8004ce0:	9407      	str	r4, [sp, #28]
 8004ce2:	f7ff bb8b 	b.w	80043fc <_dtoa_r+0x244>
 8004ce6:	4630      	mov	r0, r6
 8004ce8:	f7fb febc 	bl	8000a64 <__aeabi_i2d>
 8004cec:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004cf0:	f7fb ff22 	bl	8000b38 <__aeabi_dmul>
 8004cf4:	2200      	movs	r2, #0
 8004cf6:	4b68      	ldr	r3, [pc, #416]	; (8004e98 <_dtoa_r+0xce0>)
 8004cf8:	f7fb fd68 	bl	80007cc <__adddf3>
 8004cfc:	4606      	mov	r6, r0
 8004cfe:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d02:	2200      	movs	r2, #0
 8004d04:	4b61      	ldr	r3, [pc, #388]	; (8004e8c <_dtoa_r+0xcd4>)
 8004d06:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d0a:	f7fb fd5d 	bl	80007c8 <__aeabi_dsub>
 8004d0e:	4632      	mov	r2, r6
 8004d10:	463b      	mov	r3, r7
 8004d12:	4604      	mov	r4, r0
 8004d14:	460d      	mov	r5, r1
 8004d16:	f7fc f99f 	bl	8001058 <__aeabi_dcmpgt>
 8004d1a:	2800      	cmp	r0, #0
 8004d1c:	d14f      	bne.n	8004dbe <_dtoa_r+0xc06>
 8004d1e:	4632      	mov	r2, r6
 8004d20:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004d24:	4620      	mov	r0, r4
 8004d26:	4629      	mov	r1, r5
 8004d28:	f7fc f978 	bl	800101c <__aeabi_dcmplt>
 8004d2c:	2800      	cmp	r0, #0
 8004d2e:	f43f ac69 	beq.w	8004604 <_dtoa_r+0x44c>
 8004d32:	2600      	movs	r6, #0
 8004d34:	4635      	mov	r5, r6
 8004d36:	e7c5      	b.n	8004cc4 <_dtoa_r+0xb0c>
 8004d38:	2301      	movs	r3, #1
 8004d3a:	930a      	str	r3, [sp, #40]	; 0x28
 8004d3c:	e6c8      	b.n	8004ad0 <_dtoa_r+0x918>
 8004d3e:	4651      	mov	r1, sl
 8004d40:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004d42:	4648      	mov	r0, r9
 8004d44:	f001 fa9e 	bl	8006284 <__pow5mult>
 8004d48:	4682      	mov	sl, r0
 8004d4a:	e572      	b.n	8004832 <_dtoa_r+0x67a>
 8004d4c:	f8dd a000 	ldr.w	sl, [sp]
 8004d50:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004d54:	e686      	b.n	8004a64 <_dtoa_r+0x8ac>
 8004d56:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d58:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d5a:	1afb      	subs	r3, r7, r3
 8004d5c:	441a      	add	r2, r3
 8004d5e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004d62:	2700      	movs	r7, #0
 8004d64:	e512      	b.n	800478c <_dtoa_r+0x5d4>
 8004d66:	2b00      	cmp	r3, #0
 8004d68:	9402      	str	r4, [sp, #8]
 8004d6a:	465e      	mov	r6, fp
 8004d6c:	f107 0401 	add.w	r4, r7, #1
 8004d70:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d74:	f300 80ba 	bgt.w	8004eec <_dtoa_r+0xd34>
 8004d78:	9b00      	ldr	r3, [sp, #0]
 8004d7a:	9502      	str	r5, [sp, #8]
 8004d7c:	703b      	strb	r3, [r7, #0]
 8004d7e:	4645      	mov	r5, r8
 8004d80:	e660      	b.n	8004a44 <_dtoa_r+0x88c>
 8004d82:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d86:	2602      	movs	r6, #2
 8004d88:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004d8c:	f7ff bb67 	b.w	800445e <_dtoa_r+0x2a6>
 8004d90:	9b00      	ldr	r3, [sp, #0]
 8004d92:	2b39      	cmp	r3, #57	; 0x39
 8004d94:	465e      	mov	r6, fp
 8004d96:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d9a:	f000 80b9 	beq.w	8004f10 <_dtoa_r+0xd58>
 8004d9e:	9b00      	ldr	r3, [sp, #0]
 8004da0:	9502      	str	r5, [sp, #8]
 8004da2:	3301      	adds	r3, #1
 8004da4:	703b      	strb	r3, [r7, #0]
 8004da6:	4645      	mov	r5, r8
 8004da8:	e64c      	b.n	8004a44 <_dtoa_r+0x88c>
 8004daa:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004dae:	1a9c      	subs	r4, r3, r2
 8004db0:	e4f5      	b.n	800479e <_dtoa_r+0x5e6>
 8004db2:	465e      	mov	r6, fp
 8004db4:	9502      	str	r5, [sp, #8]
 8004db6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004dba:	4645      	mov	r5, r8
 8004dbc:	e61a      	b.n	80049f4 <_dtoa_r+0x83c>
 8004dbe:	2600      	movs	r6, #0
 8004dc0:	4635      	mov	r5, r6
 8004dc2:	e708      	b.n	8004bd6 <_dtoa_r+0xa1e>
 8004dc4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004dc8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dcc:	f7fb feb4 	bl	8000b38 <__aeabi_dmul>
 8004dd0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004dd2:	f88b 5000 	strb.w	r5, [fp]
 8004dd6:	2b01      	cmp	r3, #1
 8004dd8:	e9cd 0100 	strd	r0, r1, [sp]
 8004ddc:	d020      	beq.n	8004e20 <_dtoa_r+0xc68>
 8004dde:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004de0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004de4:	445b      	add	r3, fp
 8004de6:	4698      	mov	r8, r3
 8004de8:	2200      	movs	r2, #0
 8004dea:	4b2c      	ldr	r3, [pc, #176]	; (8004e9c <_dtoa_r+0xce4>)
 8004dec:	4630      	mov	r0, r6
 8004dee:	4639      	mov	r1, r7
 8004df0:	f7fb fea2 	bl	8000b38 <__aeabi_dmul>
 8004df4:	460f      	mov	r7, r1
 8004df6:	4606      	mov	r6, r0
 8004df8:	f7fc f94e 	bl	8001098 <__aeabi_d2iz>
 8004dfc:	4605      	mov	r5, r0
 8004dfe:	f7fb fe31 	bl	8000a64 <__aeabi_i2d>
 8004e02:	3530      	adds	r5, #48	; 0x30
 8004e04:	4602      	mov	r2, r0
 8004e06:	460b      	mov	r3, r1
 8004e08:	4630      	mov	r0, r6
 8004e0a:	4639      	mov	r1, r7
 8004e0c:	f7fb fcdc 	bl	80007c8 <__aeabi_dsub>
 8004e10:	f804 5b01 	strb.w	r5, [r4], #1
 8004e14:	4544      	cmp	r4, r8
 8004e16:	4606      	mov	r6, r0
 8004e18:	460f      	mov	r7, r1
 8004e1a:	d1e5      	bne.n	8004de8 <_dtoa_r+0xc30>
 8004e1c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004e20:	4b1f      	ldr	r3, [pc, #124]	; (8004ea0 <_dtoa_r+0xce8>)
 8004e22:	2200      	movs	r2, #0
 8004e24:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e28:	f7fb fcd0 	bl	80007cc <__adddf3>
 8004e2c:	4632      	mov	r2, r6
 8004e2e:	463b      	mov	r3, r7
 8004e30:	f7fc f8f4 	bl	800101c <__aeabi_dcmplt>
 8004e34:	2800      	cmp	r0, #0
 8004e36:	d070      	beq.n	8004f1a <_dtoa_r+0xd62>
 8004e38:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e3a:	9306      	str	r3, [sp, #24]
 8004e3c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e40:	e48f      	b.n	8004762 <_dtoa_r+0x5aa>
 8004e42:	2330      	movs	r3, #48	; 0x30
 8004e44:	f88b 3000 	strb.w	r3, [fp]
 8004e48:	9b06      	ldr	r3, [sp, #24]
 8004e4a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e4e:	3301      	adds	r3, #1
 8004e50:	9306      	str	r3, [sp, #24]
 8004e52:	465b      	mov	r3, fp
 8004e54:	e489      	b.n	800476a <_dtoa_r+0x5b2>
 8004e56:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004e58:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004e5c:	e6a0      	b.n	8004ba0 <_dtoa_r+0x9e8>
 8004e5e:	2300      	movs	r3, #0
 8004e60:	e676      	b.n	8004b50 <_dtoa_r+0x998>
 8004e62:	4631      	mov	r1, r6
 8004e64:	2205      	movs	r2, #5
 8004e66:	4648      	mov	r0, r9
 8004e68:	f001 f8cc 	bl	8006004 <__multadd>
 8004e6c:	4601      	mov	r1, r0
 8004e6e:	4606      	mov	r6, r0
 8004e70:	4650      	mov	r0, sl
 8004e72:	f001 faad 	bl	80063d0 <__mcmp>
 8004e76:	2800      	cmp	r0, #0
 8004e78:	f73f aead 	bgt.w	8004bd6 <_dtoa_r+0xa1e>
 8004e7c:	e722      	b.n	8004cc4 <_dtoa_r+0xb0c>
 8004e7e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e82:	2602      	movs	r6, #2
 8004e84:	ed8d 7b00 	vstr	d7, [sp]
 8004e88:	f7ff bb02 	b.w	8004490 <_dtoa_r+0x2d8>
 8004e8c:	40140000 	.word	0x40140000
 8004e90:	08007240 	.word	0x08007240
 8004e94:	08007218 	.word	0x08007218
 8004e98:	401c0000 	.word	0x401c0000
 8004e9c:	40240000 	.word	0x40240000
 8004ea0:	3fe00000 	.word	0x3fe00000
 8004ea4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ea6:	2b00      	cmp	r3, #0
 8004ea8:	f43f af1d 	beq.w	8004ce6 <_dtoa_r+0xb2e>
 8004eac:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004eae:	2c00      	cmp	r4, #0
 8004eb0:	f77f aba8 	ble.w	8004604 <_dtoa_r+0x44c>
 8004eb4:	2200      	movs	r2, #0
 8004eb6:	4b45      	ldr	r3, [pc, #276]	; (8004fcc <_dtoa_r+0xe14>)
 8004eb8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ebc:	f7fb fe3c 	bl	8000b38 <__aeabi_dmul>
 8004ec0:	e9cd 0100 	strd	r0, r1, [sp]
 8004ec4:	1c70      	adds	r0, r6, #1
 8004ec6:	f7fb fdcd 	bl	8000a64 <__aeabi_i2d>
 8004eca:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ece:	f7fb fe33 	bl	8000b38 <__aeabi_dmul>
 8004ed2:	4b3f      	ldr	r3, [pc, #252]	; (8004fd0 <_dtoa_r+0xe18>)
 8004ed4:	2200      	movs	r2, #0
 8004ed6:	f7fb fc79 	bl	80007cc <__adddf3>
 8004eda:	9b06      	ldr	r3, [sp, #24]
 8004edc:	9412      	str	r4, [sp, #72]	; 0x48
 8004ede:	3b01      	subs	r3, #1
 8004ee0:	4606      	mov	r6, r0
 8004ee2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004ee6:	9316      	str	r3, [sp, #88]	; 0x58
 8004ee8:	f7ff baf3 	b.w	80044d2 <_dtoa_r+0x31a>
 8004eec:	4651      	mov	r1, sl
 8004eee:	2201      	movs	r2, #1
 8004ef0:	4648      	mov	r0, r9
 8004ef2:	f001 fa17 	bl	8006324 <__lshift>
 8004ef6:	4631      	mov	r1, r6
 8004ef8:	4682      	mov	sl, r0
 8004efa:	f001 fa69 	bl	80063d0 <__mcmp>
 8004efe:	2800      	cmp	r0, #0
 8004f00:	dd3b      	ble.n	8004f7a <_dtoa_r+0xdc2>
 8004f02:	9b00      	ldr	r3, [sp, #0]
 8004f04:	2b39      	cmp	r3, #57	; 0x39
 8004f06:	d003      	beq.n	8004f10 <_dtoa_r+0xd58>
 8004f08:	9b02      	ldr	r3, [sp, #8]
 8004f0a:	3331      	adds	r3, #49	; 0x31
 8004f0c:	9300      	str	r3, [sp, #0]
 8004f0e:	e733      	b.n	8004d78 <_dtoa_r+0xbc0>
 8004f10:	2239      	movs	r2, #57	; 0x39
 8004f12:	9502      	str	r5, [sp, #8]
 8004f14:	703a      	strb	r2, [r7, #0]
 8004f16:	4645      	mov	r5, r8
 8004f18:	e58e      	b.n	8004a38 <_dtoa_r+0x880>
 8004f1a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f1e:	2000      	movs	r0, #0
 8004f20:	492c      	ldr	r1, [pc, #176]	; (8004fd4 <_dtoa_r+0xe1c>)
 8004f22:	f7fb fc51 	bl	80007c8 <__aeabi_dsub>
 8004f26:	4632      	mov	r2, r6
 8004f28:	463b      	mov	r3, r7
 8004f2a:	f7fc f895 	bl	8001058 <__aeabi_dcmpgt>
 8004f2e:	b910      	cbnz	r0, 8004f36 <_dtoa_r+0xd7e>
 8004f30:	f7ff bb68 	b.w	8004604 <_dtoa_r+0x44c>
 8004f34:	4614      	mov	r4, r2
 8004f36:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004f3a:	2b30      	cmp	r3, #48	; 0x30
 8004f3c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004f40:	d0f8      	beq.n	8004f34 <_dtoa_r+0xd7c>
 8004f42:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f44:	9306      	str	r3, [sp, #24]
 8004f46:	e58d      	b.n	8004a64 <_dtoa_r+0x8ac>
 8004f48:	46d9      	mov	r9, fp
 8004f4a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f4e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f52:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f54:	9306      	str	r3, [sp, #24]
 8004f56:	e404      	b.n	8004762 <_dtoa_r+0x5aa>
 8004f58:	9b00      	ldr	r3, [sp, #0]
 8004f5a:	2b39      	cmp	r3, #57	; 0x39
 8004f5c:	4621      	mov	r1, r4
 8004f5e:	4632      	mov	r2, r6
 8004f60:	f107 0401 	add.w	r4, r7, #1
 8004f64:	465e      	mov	r6, fp
 8004f66:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f6a:	d0d1      	beq.n	8004f10 <_dtoa_r+0xd58>
 8004f6c:	2a00      	cmp	r2, #0
 8004f6e:	f77f af03 	ble.w	8004d78 <_dtoa_r+0xbc0>
 8004f72:	460b      	mov	r3, r1
 8004f74:	3331      	adds	r3, #49	; 0x31
 8004f76:	9300      	str	r3, [sp, #0]
 8004f78:	e6fe      	b.n	8004d78 <_dtoa_r+0xbc0>
 8004f7a:	f47f aefd 	bne.w	8004d78 <_dtoa_r+0xbc0>
 8004f7e:	9b00      	ldr	r3, [sp, #0]
 8004f80:	07da      	lsls	r2, r3, #31
 8004f82:	f57f aef9 	bpl.w	8004d78 <_dtoa_r+0xbc0>
 8004f86:	e7bc      	b.n	8004f02 <_dtoa_r+0xd4a>
 8004f88:	4629      	mov	r1, r5
 8004f8a:	2300      	movs	r3, #0
 8004f8c:	220a      	movs	r2, #10
 8004f8e:	4648      	mov	r0, r9
 8004f90:	f001 f838 	bl	8006004 <__multadd>
 8004f94:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f96:	2b00      	cmp	r3, #0
 8004f98:	4605      	mov	r5, r0
 8004f9a:	dd09      	ble.n	8004fb0 <_dtoa_r+0xdf8>
 8004f9c:	9309      	str	r3, [sp, #36]	; 0x24
 8004f9e:	e484      	b.n	80048aa <_dtoa_r+0x6f2>
 8004fa0:	9b02      	ldr	r3, [sp, #8]
 8004fa2:	2b02      	cmp	r3, #2
 8004fa4:	dc0e      	bgt.n	8004fc4 <_dtoa_r+0xe0c>
 8004fa6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004fa8:	e507      	b.n	80049ba <_dtoa_r+0x802>
 8004faa:	2602      	movs	r6, #2
 8004fac:	f7ff ba70 	b.w	8004490 <_dtoa_r+0x2d8>
 8004fb0:	9b02      	ldr	r3, [sp, #8]
 8004fb2:	2b02      	cmp	r3, #2
 8004fb4:	dc06      	bgt.n	8004fc4 <_dtoa_r+0xe0c>
 8004fb6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004fb8:	e7f0      	b.n	8004f9c <_dtoa_r+0xde4>
 8004fba:	f43f ac59 	beq.w	8004870 <_dtoa_r+0x6b8>
 8004fbe:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004fc2:	e450      	b.n	8004866 <_dtoa_r+0x6ae>
 8004fc4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004fc6:	9309      	str	r3, [sp, #36]	; 0x24
 8004fc8:	e678      	b.n	8004cbc <_dtoa_r+0xb04>
 8004fca:	bf00      	nop
 8004fcc:	40240000 	.word	0x40240000
 8004fd0:	401c0000 	.word	0x401c0000
 8004fd4:	3fe00000 	.word	0x3fe00000

08004fd8 <__sflush_r>:
 8004fd8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004fdc:	b29a      	uxth	r2, r3
 8004fde:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004fe2:	460c      	mov	r4, r1
 8004fe4:	0711      	lsls	r1, r2, #28
 8004fe6:	4680      	mov	r8, r0
 8004fe8:	d444      	bmi.n	8005074 <__sflush_r+0x9c>
 8004fea:	6862      	ldr	r2, [r4, #4]
 8004fec:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004ff0:	2a00      	cmp	r2, #0
 8004ff2:	81a3      	strh	r3, [r4, #12]
 8004ff4:	dd59      	ble.n	80050aa <__sflush_r+0xd2>
 8004ff6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004ff8:	2d00      	cmp	r5, #0
 8004ffa:	d053      	beq.n	80050a4 <__sflush_r+0xcc>
 8004ffc:	2200      	movs	r2, #0
 8004ffe:	b29b      	uxth	r3, r3
 8005000:	f8d8 6000 	ldr.w	r6, [r8]
 8005004:	69e1      	ldr	r1, [r4, #28]
 8005006:	f8c8 2000 	str.w	r2, [r8]
 800500a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800500e:	f040 8083 	bne.w	8005118 <__sflush_r+0x140>
 8005012:	2301      	movs	r3, #1
 8005014:	4640      	mov	r0, r8
 8005016:	47a8      	blx	r5
 8005018:	1c42      	adds	r2, r0, #1
 800501a:	d04a      	beq.n	80050b2 <__sflush_r+0xda>
 800501c:	89a3      	ldrh	r3, [r4, #12]
 800501e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005020:	69e1      	ldr	r1, [r4, #28]
 8005022:	075b      	lsls	r3, r3, #29
 8005024:	d505      	bpl.n	8005032 <__sflush_r+0x5a>
 8005026:	6862      	ldr	r2, [r4, #4]
 8005028:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800502a:	1a80      	subs	r0, r0, r2
 800502c:	b10b      	cbz	r3, 8005032 <__sflush_r+0x5a>
 800502e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005030:	1ac0      	subs	r0, r0, r3
 8005032:	4602      	mov	r2, r0
 8005034:	2300      	movs	r3, #0
 8005036:	4640      	mov	r0, r8
 8005038:	47a8      	blx	r5
 800503a:	1c47      	adds	r7, r0, #1
 800503c:	d045      	beq.n	80050ca <__sflush_r+0xf2>
 800503e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005042:	6922      	ldr	r2, [r4, #16]
 8005044:	6022      	str	r2, [r4, #0]
 8005046:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800504a:	2200      	movs	r2, #0
 800504c:	81a3      	strh	r3, [r4, #12]
 800504e:	04db      	lsls	r3, r3, #19
 8005050:	6062      	str	r2, [r4, #4]
 8005052:	d500      	bpl.n	8005056 <__sflush_r+0x7e>
 8005054:	6520      	str	r0, [r4, #80]	; 0x50
 8005056:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005058:	f8c8 6000 	str.w	r6, [r8]
 800505c:	b311      	cbz	r1, 80050a4 <__sflush_r+0xcc>
 800505e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005062:	4299      	cmp	r1, r3
 8005064:	d002      	beq.n	800506c <__sflush_r+0x94>
 8005066:	4640      	mov	r0, r8
 8005068:	f000 f95e 	bl	8005328 <_free_r>
 800506c:	2000      	movs	r0, #0
 800506e:	6320      	str	r0, [r4, #48]	; 0x30
 8005070:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005074:	6926      	ldr	r6, [r4, #16]
 8005076:	b1ae      	cbz	r6, 80050a4 <__sflush_r+0xcc>
 8005078:	6825      	ldr	r5, [r4, #0]
 800507a:	6026      	str	r6, [r4, #0]
 800507c:	0792      	lsls	r2, r2, #30
 800507e:	bf0c      	ite	eq
 8005080:	6963      	ldreq	r3, [r4, #20]
 8005082:	2300      	movne	r3, #0
 8005084:	1bad      	subs	r5, r5, r6
 8005086:	60a3      	str	r3, [r4, #8]
 8005088:	e00a      	b.n	80050a0 <__sflush_r+0xc8>
 800508a:	462b      	mov	r3, r5
 800508c:	4632      	mov	r2, r6
 800508e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005090:	69e1      	ldr	r1, [r4, #28]
 8005092:	4640      	mov	r0, r8
 8005094:	47b8      	blx	r7
 8005096:	2800      	cmp	r0, #0
 8005098:	eba5 0500 	sub.w	r5, r5, r0
 800509c:	4406      	add	r6, r0
 800509e:	dd2b      	ble.n	80050f8 <__sflush_r+0x120>
 80050a0:	2d00      	cmp	r5, #0
 80050a2:	dcf2      	bgt.n	800508a <__sflush_r+0xb2>
 80050a4:	2000      	movs	r0, #0
 80050a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80050aa:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80050ac:	2a00      	cmp	r2, #0
 80050ae:	dca2      	bgt.n	8004ff6 <__sflush_r+0x1e>
 80050b0:	e7f8      	b.n	80050a4 <__sflush_r+0xcc>
 80050b2:	f8d8 3000 	ldr.w	r3, [r8]
 80050b6:	2b00      	cmp	r3, #0
 80050b8:	d0b0      	beq.n	800501c <__sflush_r+0x44>
 80050ba:	2b1d      	cmp	r3, #29
 80050bc:	d001      	beq.n	80050c2 <__sflush_r+0xea>
 80050be:	2b16      	cmp	r3, #22
 80050c0:	d12c      	bne.n	800511c <__sflush_r+0x144>
 80050c2:	f8c8 6000 	str.w	r6, [r8]
 80050c6:	2000      	movs	r0, #0
 80050c8:	e7ed      	b.n	80050a6 <__sflush_r+0xce>
 80050ca:	f8d8 1000 	ldr.w	r1, [r8]
 80050ce:	291d      	cmp	r1, #29
 80050d0:	d81a      	bhi.n	8005108 <__sflush_r+0x130>
 80050d2:	4b15      	ldr	r3, [pc, #84]	; (8005128 <__sflush_r+0x150>)
 80050d4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80050d8:	40cb      	lsrs	r3, r1
 80050da:	43db      	mvns	r3, r3
 80050dc:	f013 0301 	ands.w	r3, r3, #1
 80050e0:	d114      	bne.n	800510c <__sflush_r+0x134>
 80050e2:	6925      	ldr	r5, [r4, #16]
 80050e4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80050e8:	e9c4 5300 	strd	r5, r3, [r4]
 80050ec:	04d5      	lsls	r5, r2, #19
 80050ee:	81a2      	strh	r2, [r4, #12]
 80050f0:	d5b1      	bpl.n	8005056 <__sflush_r+0x7e>
 80050f2:	2900      	cmp	r1, #0
 80050f4:	d1af      	bne.n	8005056 <__sflush_r+0x7e>
 80050f6:	e7ad      	b.n	8005054 <__sflush_r+0x7c>
 80050f8:	89a3      	ldrh	r3, [r4, #12]
 80050fa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80050fe:	81a3      	strh	r3, [r4, #12]
 8005100:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005104:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005108:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800510c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005110:	81a2      	strh	r2, [r4, #12]
 8005112:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005116:	e7c6      	b.n	80050a6 <__sflush_r+0xce>
 8005118:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800511a:	e782      	b.n	8005022 <__sflush_r+0x4a>
 800511c:	89a3      	ldrh	r3, [r4, #12]
 800511e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005122:	81a3      	strh	r3, [r4, #12]
 8005124:	e7bf      	b.n	80050a6 <__sflush_r+0xce>
 8005126:	bf00      	nop
 8005128:	20400001 	.word	0x20400001

0800512c <_fflush_r>:
 800512c:	b538      	push	{r3, r4, r5, lr}
 800512e:	460d      	mov	r5, r1
 8005130:	4604      	mov	r4, r0
 8005132:	b108      	cbz	r0, 8005138 <_fflush_r+0xc>
 8005134:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005136:	b1a3      	cbz	r3, 8005162 <_fflush_r+0x36>
 8005138:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800513c:	b1b8      	cbz	r0, 800516e <_fflush_r+0x42>
 800513e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005140:	07db      	lsls	r3, r3, #31
 8005142:	d401      	bmi.n	8005148 <_fflush_r+0x1c>
 8005144:	0581      	lsls	r1, r0, #22
 8005146:	d51a      	bpl.n	800517e <_fflush_r+0x52>
 8005148:	4620      	mov	r0, r4
 800514a:	4629      	mov	r1, r5
 800514c:	f7ff ff44 	bl	8004fd8 <__sflush_r>
 8005150:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005152:	07da      	lsls	r2, r3, #31
 8005154:	4604      	mov	r4, r0
 8005156:	d402      	bmi.n	800515e <_fflush_r+0x32>
 8005158:	89ab      	ldrh	r3, [r5, #12]
 800515a:	059b      	lsls	r3, r3, #22
 800515c:	d50a      	bpl.n	8005174 <_fflush_r+0x48>
 800515e:	4620      	mov	r0, r4
 8005160:	bd38      	pop	{r3, r4, r5, pc}
 8005162:	f000 f83f 	bl	80051e4 <__sinit>
 8005166:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800516a:	2800      	cmp	r0, #0
 800516c:	d1e7      	bne.n	800513e <_fflush_r+0x12>
 800516e:	4604      	mov	r4, r0
 8005170:	4620      	mov	r0, r4
 8005172:	bd38      	pop	{r3, r4, r5, pc}
 8005174:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005176:	f000 fb87 	bl	8005888 <__retarget_lock_release_recursive>
 800517a:	4620      	mov	r0, r4
 800517c:	bd38      	pop	{r3, r4, r5, pc}
 800517e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005180:	f000 fb80 	bl	8005884 <__retarget_lock_acquire_recursive>
 8005184:	e7e0      	b.n	8005148 <_fflush_r+0x1c>
 8005186:	bf00      	nop

08005188 <std>:
 8005188:	b510      	push	{r4, lr}
 800518a:	2300      	movs	r3, #0
 800518c:	4604      	mov	r4, r0
 800518e:	8181      	strh	r1, [r0, #12]
 8005190:	81c2      	strh	r2, [r0, #14]
 8005192:	e9c0 3300 	strd	r3, r3, [r0]
 8005196:	6083      	str	r3, [r0, #8]
 8005198:	6643      	str	r3, [r0, #100]	; 0x64
 800519a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800519e:	6183      	str	r3, [r0, #24]
 80051a0:	4619      	mov	r1, r3
 80051a2:	2208      	movs	r2, #8
 80051a4:	305c      	adds	r0, #92	; 0x5c
 80051a6:	f7fd f8cb 	bl	8002340 <memset>
 80051aa:	4807      	ldr	r0, [pc, #28]	; (80051c8 <std+0x40>)
 80051ac:	4907      	ldr	r1, [pc, #28]	; (80051cc <std+0x44>)
 80051ae:	4a08      	ldr	r2, [pc, #32]	; (80051d0 <std+0x48>)
 80051b0:	4b08      	ldr	r3, [pc, #32]	; (80051d4 <std+0x4c>)
 80051b2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80051b4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80051b8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80051bc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80051c0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80051c4:	f000 bb5a 	b.w	800587c <__retarget_lock_init_recursive>
 80051c8:	080069a1 	.word	0x080069a1
 80051cc:	080069c5 	.word	0x080069c5
 80051d0:	08006a01 	.word	0x08006a01
 80051d4:	08006a21 	.word	0x08006a21

080051d8 <_cleanup_r>:
 80051d8:	4901      	ldr	r1, [pc, #4]	; (80051e0 <_cleanup_r+0x8>)
 80051da:	f000 bb17 	b.w	800580c <_fwalk_reent>
 80051de:	bf00      	nop
 80051e0:	08006c91 	.word	0x08006c91

080051e4 <__sinit>:
 80051e4:	b510      	push	{r4, lr}
 80051e6:	4604      	mov	r4, r0
 80051e8:	4812      	ldr	r0, [pc, #72]	; (8005234 <__sinit+0x50>)
 80051ea:	f000 fb4b 	bl	8005884 <__retarget_lock_acquire_recursive>
 80051ee:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80051f0:	b9d2      	cbnz	r2, 8005228 <__sinit+0x44>
 80051f2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80051f6:	4810      	ldr	r0, [pc, #64]	; (8005238 <__sinit+0x54>)
 80051f8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80051fc:	2103      	movs	r1, #3
 80051fe:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005202:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005204:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005208:	6860      	ldr	r0, [r4, #4]
 800520a:	2104      	movs	r1, #4
 800520c:	f7ff ffbc 	bl	8005188 <std>
 8005210:	2201      	movs	r2, #1
 8005212:	2109      	movs	r1, #9
 8005214:	68a0      	ldr	r0, [r4, #8]
 8005216:	f7ff ffb7 	bl	8005188 <std>
 800521a:	2202      	movs	r2, #2
 800521c:	2112      	movs	r1, #18
 800521e:	68e0      	ldr	r0, [r4, #12]
 8005220:	f7ff ffb2 	bl	8005188 <std>
 8005224:	2301      	movs	r3, #1
 8005226:	63a3      	str	r3, [r4, #56]	; 0x38
 8005228:	4802      	ldr	r0, [pc, #8]	; (8005234 <__sinit+0x50>)
 800522a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800522e:	f000 bb2b 	b.w	8005888 <__retarget_lock_release_recursive>
 8005232:	bf00      	nop
 8005234:	20000af4 	.word	0x20000af4
 8005238:	080051d9 	.word	0x080051d9

0800523c <__sfp_lock_acquire>:
 800523c:	4801      	ldr	r0, [pc, #4]	; (8005244 <__sfp_lock_acquire+0x8>)
 800523e:	f000 bb21 	b.w	8005884 <__retarget_lock_acquire_recursive>
 8005242:	bf00      	nop
 8005244:	20000b08 	.word	0x20000b08

08005248 <__sfp_lock_release>:
 8005248:	4801      	ldr	r0, [pc, #4]	; (8005250 <__sfp_lock_release+0x8>)
 800524a:	f000 bb1d 	b.w	8005888 <__retarget_lock_release_recursive>
 800524e:	bf00      	nop
 8005250:	20000b08 	.word	0x20000b08

08005254 <__libc_fini_array>:
 8005254:	b538      	push	{r3, r4, r5, lr}
 8005256:	4c0a      	ldr	r4, [pc, #40]	; (8005280 <__libc_fini_array+0x2c>)
 8005258:	4d0a      	ldr	r5, [pc, #40]	; (8005284 <__libc_fini_array+0x30>)
 800525a:	1b64      	subs	r4, r4, r5
 800525c:	10a4      	asrs	r4, r4, #2
 800525e:	d00a      	beq.n	8005276 <__libc_fini_array+0x22>
 8005260:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005264:	3b01      	subs	r3, #1
 8005266:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800526a:	3c01      	subs	r4, #1
 800526c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005270:	4798      	blx	r3
 8005272:	2c00      	cmp	r4, #0
 8005274:	d1f9      	bne.n	800526a <__libc_fini_array+0x16>
 8005276:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800527a:	f001 befd 	b.w	8007078 <_fini>
 800527e:	bf00      	nop
 8005280:	0800743c 	.word	0x0800743c
 8005284:	08007438 	.word	0x08007438

08005288 <_malloc_trim_r>:
 8005288:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800528a:	4f24      	ldr	r7, [pc, #144]	; (800531c <_malloc_trim_r+0x94>)
 800528c:	460c      	mov	r4, r1
 800528e:	4606      	mov	r6, r0
 8005290:	f000 fe7c 	bl	8005f8c <__malloc_lock>
 8005294:	68bb      	ldr	r3, [r7, #8]
 8005296:	685d      	ldr	r5, [r3, #4]
 8005298:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800529c:	310f      	adds	r1, #15
 800529e:	f025 0503 	bic.w	r5, r5, #3
 80052a2:	4429      	add	r1, r5
 80052a4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80052a8:	f021 010f 	bic.w	r1, r1, #15
 80052ac:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80052b0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80052b4:	db07      	blt.n	80052c6 <_malloc_trim_r+0x3e>
 80052b6:	2100      	movs	r1, #0
 80052b8:	4630      	mov	r0, r6
 80052ba:	f001 fb5f 	bl	800697c <_sbrk_r>
 80052be:	68bb      	ldr	r3, [r7, #8]
 80052c0:	442b      	add	r3, r5
 80052c2:	4298      	cmp	r0, r3
 80052c4:	d004      	beq.n	80052d0 <_malloc_trim_r+0x48>
 80052c6:	4630      	mov	r0, r6
 80052c8:	f000 fe66 	bl	8005f98 <__malloc_unlock>
 80052cc:	2000      	movs	r0, #0
 80052ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80052d0:	4261      	negs	r1, r4
 80052d2:	4630      	mov	r0, r6
 80052d4:	f001 fb52 	bl	800697c <_sbrk_r>
 80052d8:	3001      	adds	r0, #1
 80052da:	d00d      	beq.n	80052f8 <_malloc_trim_r+0x70>
 80052dc:	4b10      	ldr	r3, [pc, #64]	; (8005320 <_malloc_trim_r+0x98>)
 80052de:	68ba      	ldr	r2, [r7, #8]
 80052e0:	6819      	ldr	r1, [r3, #0]
 80052e2:	1b2d      	subs	r5, r5, r4
 80052e4:	f045 0501 	orr.w	r5, r5, #1
 80052e8:	4630      	mov	r0, r6
 80052ea:	1b09      	subs	r1, r1, r4
 80052ec:	6055      	str	r5, [r2, #4]
 80052ee:	6019      	str	r1, [r3, #0]
 80052f0:	f000 fe52 	bl	8005f98 <__malloc_unlock>
 80052f4:	2001      	movs	r0, #1
 80052f6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80052f8:	2100      	movs	r1, #0
 80052fa:	4630      	mov	r0, r6
 80052fc:	f001 fb3e 	bl	800697c <_sbrk_r>
 8005300:	68ba      	ldr	r2, [r7, #8]
 8005302:	1a83      	subs	r3, r0, r2
 8005304:	2b0f      	cmp	r3, #15
 8005306:	ddde      	ble.n	80052c6 <_malloc_trim_r+0x3e>
 8005308:	4c06      	ldr	r4, [pc, #24]	; (8005324 <_malloc_trim_r+0x9c>)
 800530a:	4905      	ldr	r1, [pc, #20]	; (8005320 <_malloc_trim_r+0x98>)
 800530c:	6824      	ldr	r4, [r4, #0]
 800530e:	f043 0301 	orr.w	r3, r3, #1
 8005312:	1b00      	subs	r0, r0, r4
 8005314:	6053      	str	r3, [r2, #4]
 8005316:	6008      	str	r0, [r1, #0]
 8005318:	e7d5      	b.n	80052c6 <_malloc_trim_r+0x3e>
 800531a:	bf00      	nop
 800531c:	2000044c 	.word	0x2000044c
 8005320:	20000a6c 	.word	0x20000a6c
 8005324:	20000854 	.word	0x20000854

08005328 <_free_r>:
 8005328:	2900      	cmp	r1, #0
 800532a:	d053      	beq.n	80053d4 <_free_r+0xac>
 800532c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800532e:	460c      	mov	r4, r1
 8005330:	4606      	mov	r6, r0
 8005332:	f000 fe2b 	bl	8005f8c <__malloc_lock>
 8005336:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800533a:	4f71      	ldr	r7, [pc, #452]	; (8005500 <_free_r+0x1d8>)
 800533c:	f02c 0101 	bic.w	r1, ip, #1
 8005340:	f1a4 0508 	sub.w	r5, r4, #8
 8005344:	186b      	adds	r3, r5, r1
 8005346:	68b8      	ldr	r0, [r7, #8]
 8005348:	685a      	ldr	r2, [r3, #4]
 800534a:	4298      	cmp	r0, r3
 800534c:	f022 0203 	bic.w	r2, r2, #3
 8005350:	d053      	beq.n	80053fa <_free_r+0xd2>
 8005352:	f01c 0f01 	tst.w	ip, #1
 8005356:	605a      	str	r2, [r3, #4]
 8005358:	eb03 0002 	add.w	r0, r3, r2
 800535c:	d13b      	bne.n	80053d6 <_free_r+0xae>
 800535e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005362:	6840      	ldr	r0, [r0, #4]
 8005364:	eba5 050c 	sub.w	r5, r5, ip
 8005368:	f107 0e08 	add.w	lr, r7, #8
 800536c:	68ac      	ldr	r4, [r5, #8]
 800536e:	4574      	cmp	r4, lr
 8005370:	4461      	add	r1, ip
 8005372:	f000 0001 	and.w	r0, r0, #1
 8005376:	d075      	beq.n	8005464 <_free_r+0x13c>
 8005378:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800537c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005380:	f8cc 4008 	str.w	r4, [ip, #8]
 8005384:	b360      	cbz	r0, 80053e0 <_free_r+0xb8>
 8005386:	f041 0301 	orr.w	r3, r1, #1
 800538a:	606b      	str	r3, [r5, #4]
 800538c:	5069      	str	r1, [r5, r1]
 800538e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005392:	d350      	bcc.n	8005436 <_free_r+0x10e>
 8005394:	0a4b      	lsrs	r3, r1, #9
 8005396:	2b04      	cmp	r3, #4
 8005398:	d870      	bhi.n	800547c <_free_r+0x154>
 800539a:	098b      	lsrs	r3, r1, #6
 800539c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80053a0:	00e4      	lsls	r4, r4, #3
 80053a2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80053a6:	1938      	adds	r0, r7, r4
 80053a8:	593b      	ldr	r3, [r7, r4]
 80053aa:	3808      	subs	r0, #8
 80053ac:	4298      	cmp	r0, r3
 80053ae:	d078      	beq.n	80054a2 <_free_r+0x17a>
 80053b0:	685a      	ldr	r2, [r3, #4]
 80053b2:	f022 0203 	bic.w	r2, r2, #3
 80053b6:	428a      	cmp	r2, r1
 80053b8:	d971      	bls.n	800549e <_free_r+0x176>
 80053ba:	689b      	ldr	r3, [r3, #8]
 80053bc:	4298      	cmp	r0, r3
 80053be:	d1f7      	bne.n	80053b0 <_free_r+0x88>
 80053c0:	68c3      	ldr	r3, [r0, #12]
 80053c2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80053c6:	609d      	str	r5, [r3, #8]
 80053c8:	60c5      	str	r5, [r0, #12]
 80053ca:	4630      	mov	r0, r6
 80053cc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053d0:	f000 bde2 	b.w	8005f98 <__malloc_unlock>
 80053d4:	4770      	bx	lr
 80053d6:	6840      	ldr	r0, [r0, #4]
 80053d8:	f000 0001 	and.w	r0, r0, #1
 80053dc:	2800      	cmp	r0, #0
 80053de:	d1d2      	bne.n	8005386 <_free_r+0x5e>
 80053e0:	6898      	ldr	r0, [r3, #8]
 80053e2:	4c48      	ldr	r4, [pc, #288]	; (8005504 <_free_r+0x1dc>)
 80053e4:	4411      	add	r1, r2
 80053e6:	42a0      	cmp	r0, r4
 80053e8:	f041 0201 	orr.w	r2, r1, #1
 80053ec:	d062      	beq.n	80054b4 <_free_r+0x18c>
 80053ee:	68db      	ldr	r3, [r3, #12]
 80053f0:	60c3      	str	r3, [r0, #12]
 80053f2:	6098      	str	r0, [r3, #8]
 80053f4:	606a      	str	r2, [r5, #4]
 80053f6:	5069      	str	r1, [r5, r1]
 80053f8:	e7c9      	b.n	800538e <_free_r+0x66>
 80053fa:	f01c 0f01 	tst.w	ip, #1
 80053fe:	440a      	add	r2, r1
 8005400:	d107      	bne.n	8005412 <_free_r+0xea>
 8005402:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005406:	1aed      	subs	r5, r5, r3
 8005408:	441a      	add	r2, r3
 800540a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800540e:	60cb      	str	r3, [r1, #12]
 8005410:	6099      	str	r1, [r3, #8]
 8005412:	4b3d      	ldr	r3, [pc, #244]	; (8005508 <_free_r+0x1e0>)
 8005414:	681b      	ldr	r3, [r3, #0]
 8005416:	f042 0101 	orr.w	r1, r2, #1
 800541a:	4293      	cmp	r3, r2
 800541c:	6069      	str	r1, [r5, #4]
 800541e:	60bd      	str	r5, [r7, #8]
 8005420:	d804      	bhi.n	800542c <_free_r+0x104>
 8005422:	4b3a      	ldr	r3, [pc, #232]	; (800550c <_free_r+0x1e4>)
 8005424:	4630      	mov	r0, r6
 8005426:	6819      	ldr	r1, [r3, #0]
 8005428:	f7ff ff2e 	bl	8005288 <_malloc_trim_r>
 800542c:	4630      	mov	r0, r6
 800542e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005432:	f000 bdb1 	b.w	8005f98 <__malloc_unlock>
 8005436:	08c9      	lsrs	r1, r1, #3
 8005438:	6878      	ldr	r0, [r7, #4]
 800543a:	1c4a      	adds	r2, r1, #1
 800543c:	2301      	movs	r3, #1
 800543e:	1089      	asrs	r1, r1, #2
 8005440:	408b      	lsls	r3, r1
 8005442:	4303      	orrs	r3, r0
 8005444:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005448:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800544c:	607b      	str	r3, [r7, #4]
 800544e:	3908      	subs	r1, #8
 8005450:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005454:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005458:	60c5      	str	r5, [r0, #12]
 800545a:	4630      	mov	r0, r6
 800545c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005460:	f000 bd9a 	b.w	8005f98 <__malloc_unlock>
 8005464:	2800      	cmp	r0, #0
 8005466:	d145      	bne.n	80054f4 <_free_r+0x1cc>
 8005468:	440a      	add	r2, r1
 800546a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800546e:	f042 0001 	orr.w	r0, r2, #1
 8005472:	60cb      	str	r3, [r1, #12]
 8005474:	6099      	str	r1, [r3, #8]
 8005476:	6068      	str	r0, [r5, #4]
 8005478:	50aa      	str	r2, [r5, r2]
 800547a:	e7d7      	b.n	800542c <_free_r+0x104>
 800547c:	2b14      	cmp	r3, #20
 800547e:	d908      	bls.n	8005492 <_free_r+0x16a>
 8005480:	2b54      	cmp	r3, #84	; 0x54
 8005482:	d81e      	bhi.n	80054c2 <_free_r+0x19a>
 8005484:	0b0b      	lsrs	r3, r1, #12
 8005486:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800548a:	00e4      	lsls	r4, r4, #3
 800548c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005490:	e789      	b.n	80053a6 <_free_r+0x7e>
 8005492:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005496:	00e4      	lsls	r4, r4, #3
 8005498:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800549c:	e783      	b.n	80053a6 <_free_r+0x7e>
 800549e:	4618      	mov	r0, r3
 80054a0:	e78e      	b.n	80053c0 <_free_r+0x98>
 80054a2:	1093      	asrs	r3, r2, #2
 80054a4:	6879      	ldr	r1, [r7, #4]
 80054a6:	2201      	movs	r2, #1
 80054a8:	fa02 f303 	lsl.w	r3, r2, r3
 80054ac:	430b      	orrs	r3, r1
 80054ae:	607b      	str	r3, [r7, #4]
 80054b0:	4603      	mov	r3, r0
 80054b2:	e786      	b.n	80053c2 <_free_r+0x9a>
 80054b4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80054b8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80054bc:	606a      	str	r2, [r5, #4]
 80054be:	5069      	str	r1, [r5, r1]
 80054c0:	e7b4      	b.n	800542c <_free_r+0x104>
 80054c2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80054c6:	d806      	bhi.n	80054d6 <_free_r+0x1ae>
 80054c8:	0bcb      	lsrs	r3, r1, #15
 80054ca:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80054ce:	00e4      	lsls	r4, r4, #3
 80054d0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80054d4:	e767      	b.n	80053a6 <_free_r+0x7e>
 80054d6:	f240 5254 	movw	r2, #1364	; 0x554
 80054da:	4293      	cmp	r3, r2
 80054dc:	d806      	bhi.n	80054ec <_free_r+0x1c4>
 80054de:	0c8b      	lsrs	r3, r1, #18
 80054e0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80054e4:	00e4      	lsls	r4, r4, #3
 80054e6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80054ea:	e75c      	b.n	80053a6 <_free_r+0x7e>
 80054ec:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80054f0:	227e      	movs	r2, #126	; 0x7e
 80054f2:	e758      	b.n	80053a6 <_free_r+0x7e>
 80054f4:	f041 0201 	orr.w	r2, r1, #1
 80054f8:	606a      	str	r2, [r5, #4]
 80054fa:	6019      	str	r1, [r3, #0]
 80054fc:	e796      	b.n	800542c <_free_r+0x104>
 80054fe:	bf00      	nop
 8005500:	2000044c 	.word	0x2000044c
 8005504:	20000454 	.word	0x20000454
 8005508:	20000858 	.word	0x20000858
 800550c:	20000a9c 	.word	0x20000a9c

08005510 <__sfvwrite_r>:
 8005510:	6893      	ldr	r3, [r2, #8]
 8005512:	2b00      	cmp	r3, #0
 8005514:	f000 80e4 	beq.w	80056e0 <__sfvwrite_r+0x1d0>
 8005518:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800551c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005520:	b29b      	uxth	r3, r3
 8005522:	460c      	mov	r4, r1
 8005524:	0719      	lsls	r1, r3, #28
 8005526:	b083      	sub	sp, #12
 8005528:	4682      	mov	sl, r0
 800552a:	4690      	mov	r8, r2
 800552c:	d535      	bpl.n	800559a <__sfvwrite_r+0x8a>
 800552e:	6922      	ldr	r2, [r4, #16]
 8005530:	b39a      	cbz	r2, 800559a <__sfvwrite_r+0x8a>
 8005532:	f013 0202 	ands.w	r2, r3, #2
 8005536:	f8d8 6000 	ldr.w	r6, [r8]
 800553a:	d03d      	beq.n	80055b8 <__sfvwrite_r+0xa8>
 800553c:	2700      	movs	r7, #0
 800553e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005542:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005546:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005808 <__sfvwrite_r+0x2f8>
 800554a:	463d      	mov	r5, r7
 800554c:	454d      	cmp	r5, r9
 800554e:	462b      	mov	r3, r5
 8005550:	463a      	mov	r2, r7
 8005552:	bf28      	it	cs
 8005554:	464b      	movcs	r3, r9
 8005556:	4661      	mov	r1, ip
 8005558:	4650      	mov	r0, sl
 800555a:	b1d5      	cbz	r5, 8005592 <__sfvwrite_r+0x82>
 800555c:	47d8      	blx	fp
 800555e:	2800      	cmp	r0, #0
 8005560:	f340 80c6 	ble.w	80056f0 <__sfvwrite_r+0x1e0>
 8005564:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005568:	1a1b      	subs	r3, r3, r0
 800556a:	4407      	add	r7, r0
 800556c:	1a2d      	subs	r5, r5, r0
 800556e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005572:	2b00      	cmp	r3, #0
 8005574:	f000 80b0 	beq.w	80056d8 <__sfvwrite_r+0x1c8>
 8005578:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800557c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005580:	454d      	cmp	r5, r9
 8005582:	462b      	mov	r3, r5
 8005584:	463a      	mov	r2, r7
 8005586:	bf28      	it	cs
 8005588:	464b      	movcs	r3, r9
 800558a:	4661      	mov	r1, ip
 800558c:	4650      	mov	r0, sl
 800558e:	2d00      	cmp	r5, #0
 8005590:	d1e4      	bne.n	800555c <__sfvwrite_r+0x4c>
 8005592:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005596:	3608      	adds	r6, #8
 8005598:	e7d8      	b.n	800554c <__sfvwrite_r+0x3c>
 800559a:	4621      	mov	r1, r4
 800559c:	4650      	mov	r0, sl
 800559e:	f7fe fd03 	bl	8003fa8 <__swsetup_r>
 80055a2:	2800      	cmp	r0, #0
 80055a4:	f040 812a 	bne.w	80057fc <__sfvwrite_r+0x2ec>
 80055a8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055ac:	f8d8 6000 	ldr.w	r6, [r8]
 80055b0:	b29b      	uxth	r3, r3
 80055b2:	f013 0202 	ands.w	r2, r3, #2
 80055b6:	d1c1      	bne.n	800553c <__sfvwrite_r+0x2c>
 80055b8:	f013 0901 	ands.w	r9, r3, #1
 80055bc:	d15d      	bne.n	800567a <__sfvwrite_r+0x16a>
 80055be:	68a7      	ldr	r7, [r4, #8]
 80055c0:	6820      	ldr	r0, [r4, #0]
 80055c2:	464d      	mov	r5, r9
 80055c4:	2d00      	cmp	r5, #0
 80055c6:	d054      	beq.n	8005672 <__sfvwrite_r+0x162>
 80055c8:	059a      	lsls	r2, r3, #22
 80055ca:	f140 809b 	bpl.w	8005704 <__sfvwrite_r+0x1f4>
 80055ce:	42af      	cmp	r7, r5
 80055d0:	46bb      	mov	fp, r7
 80055d2:	f200 80d8 	bhi.w	8005786 <__sfvwrite_r+0x276>
 80055d6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80055da:	d02f      	beq.n	800563c <__sfvwrite_r+0x12c>
 80055dc:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80055e0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80055e4:	eba0 0b01 	sub.w	fp, r0, r1
 80055e8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80055ec:	1c68      	adds	r0, r5, #1
 80055ee:	107f      	asrs	r7, r7, #1
 80055f0:	4458      	add	r0, fp
 80055f2:	42b8      	cmp	r0, r7
 80055f4:	463a      	mov	r2, r7
 80055f6:	bf84      	itt	hi
 80055f8:	4607      	movhi	r7, r0
 80055fa:	463a      	movhi	r2, r7
 80055fc:	055b      	lsls	r3, r3, #21
 80055fe:	f140 80d3 	bpl.w	80057a8 <__sfvwrite_r+0x298>
 8005602:	4611      	mov	r1, r2
 8005604:	4650      	mov	r0, sl
 8005606:	f000 f9b9 	bl	800597c <_malloc_r>
 800560a:	2800      	cmp	r0, #0
 800560c:	f000 80f0 	beq.w	80057f0 <__sfvwrite_r+0x2e0>
 8005610:	465a      	mov	r2, fp
 8005612:	6921      	ldr	r1, [r4, #16]
 8005614:	9001      	str	r0, [sp, #4]
 8005616:	f7fa ff73 	bl	8000500 <memcpy>
 800561a:	89a2      	ldrh	r2, [r4, #12]
 800561c:	9b01      	ldr	r3, [sp, #4]
 800561e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005622:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005626:	81a2      	strh	r2, [r4, #12]
 8005628:	eba7 020b 	sub.w	r2, r7, fp
 800562c:	eb03 000b 	add.w	r0, r3, fp
 8005630:	6167      	str	r7, [r4, #20]
 8005632:	6123      	str	r3, [r4, #16]
 8005634:	6020      	str	r0, [r4, #0]
 8005636:	60a2      	str	r2, [r4, #8]
 8005638:	462f      	mov	r7, r5
 800563a:	46ab      	mov	fp, r5
 800563c:	465a      	mov	r2, fp
 800563e:	4649      	mov	r1, r9
 8005640:	f000 fc40 	bl	8005ec4 <memmove>
 8005644:	68a2      	ldr	r2, [r4, #8]
 8005646:	6823      	ldr	r3, [r4, #0]
 8005648:	1bd2      	subs	r2, r2, r7
 800564a:	445b      	add	r3, fp
 800564c:	462f      	mov	r7, r5
 800564e:	60a2      	str	r2, [r4, #8]
 8005650:	6023      	str	r3, [r4, #0]
 8005652:	2500      	movs	r5, #0
 8005654:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005658:	1bdb      	subs	r3, r3, r7
 800565a:	44b9      	add	r9, r7
 800565c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005660:	2b00      	cmp	r3, #0
 8005662:	d039      	beq.n	80056d8 <__sfvwrite_r+0x1c8>
 8005664:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005668:	68a7      	ldr	r7, [r4, #8]
 800566a:	6820      	ldr	r0, [r4, #0]
 800566c:	b29b      	uxth	r3, r3
 800566e:	2d00      	cmp	r5, #0
 8005670:	d1aa      	bne.n	80055c8 <__sfvwrite_r+0xb8>
 8005672:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005676:	3608      	adds	r6, #8
 8005678:	e7a4      	b.n	80055c4 <__sfvwrite_r+0xb4>
 800567a:	4633      	mov	r3, r6
 800567c:	4691      	mov	r9, r2
 800567e:	4610      	mov	r0, r2
 8005680:	4617      	mov	r7, r2
 8005682:	464e      	mov	r6, r9
 8005684:	469b      	mov	fp, r3
 8005686:	2f00      	cmp	r7, #0
 8005688:	d06b      	beq.n	8005762 <__sfvwrite_r+0x252>
 800568a:	2800      	cmp	r0, #0
 800568c:	d071      	beq.n	8005772 <__sfvwrite_r+0x262>
 800568e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005692:	6820      	ldr	r0, [r4, #0]
 8005694:	45b9      	cmp	r9, r7
 8005696:	464b      	mov	r3, r9
 8005698:	bf28      	it	cs
 800569a:	463b      	movcs	r3, r7
 800569c:	4288      	cmp	r0, r1
 800569e:	d903      	bls.n	80056a8 <__sfvwrite_r+0x198>
 80056a0:	68a5      	ldr	r5, [r4, #8]
 80056a2:	4415      	add	r5, r2
 80056a4:	42ab      	cmp	r3, r5
 80056a6:	dc71      	bgt.n	800578c <__sfvwrite_r+0x27c>
 80056a8:	429a      	cmp	r2, r3
 80056aa:	f300 8093 	bgt.w	80057d4 <__sfvwrite_r+0x2c4>
 80056ae:	4613      	mov	r3, r2
 80056b0:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80056b2:	69e1      	ldr	r1, [r4, #28]
 80056b4:	4632      	mov	r2, r6
 80056b6:	4650      	mov	r0, sl
 80056b8:	47a8      	blx	r5
 80056ba:	1e05      	subs	r5, r0, #0
 80056bc:	dd18      	ble.n	80056f0 <__sfvwrite_r+0x1e0>
 80056be:	ebb9 0905 	subs.w	r9, r9, r5
 80056c2:	d00f      	beq.n	80056e4 <__sfvwrite_r+0x1d4>
 80056c4:	2001      	movs	r0, #1
 80056c6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80056ca:	1b5b      	subs	r3, r3, r5
 80056cc:	442e      	add	r6, r5
 80056ce:	1b7f      	subs	r7, r7, r5
 80056d0:	f8c8 3008 	str.w	r3, [r8, #8]
 80056d4:	2b00      	cmp	r3, #0
 80056d6:	d1d6      	bne.n	8005686 <__sfvwrite_r+0x176>
 80056d8:	2000      	movs	r0, #0
 80056da:	b003      	add	sp, #12
 80056dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056e0:	2000      	movs	r0, #0
 80056e2:	4770      	bx	lr
 80056e4:	4621      	mov	r1, r4
 80056e6:	4650      	mov	r0, sl
 80056e8:	f7ff fd20 	bl	800512c <_fflush_r>
 80056ec:	2800      	cmp	r0, #0
 80056ee:	d0ea      	beq.n	80056c6 <__sfvwrite_r+0x1b6>
 80056f0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056f4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056fc:	81a3      	strh	r3, [r4, #12]
 80056fe:	b003      	add	sp, #12
 8005700:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005704:	6923      	ldr	r3, [r4, #16]
 8005706:	4283      	cmp	r3, r0
 8005708:	d315      	bcc.n	8005736 <__sfvwrite_r+0x226>
 800570a:	6961      	ldr	r1, [r4, #20]
 800570c:	42a9      	cmp	r1, r5
 800570e:	d812      	bhi.n	8005736 <__sfvwrite_r+0x226>
 8005710:	4b3c      	ldr	r3, [pc, #240]	; (8005804 <__sfvwrite_r+0x2f4>)
 8005712:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005714:	429d      	cmp	r5, r3
 8005716:	bf94      	ite	ls
 8005718:	462b      	movls	r3, r5
 800571a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800571e:	464a      	mov	r2, r9
 8005720:	fb93 f3f1 	sdiv	r3, r3, r1
 8005724:	4650      	mov	r0, sl
 8005726:	fb01 f303 	mul.w	r3, r1, r3
 800572a:	69e1      	ldr	r1, [r4, #28]
 800572c:	47b8      	blx	r7
 800572e:	1e07      	subs	r7, r0, #0
 8005730:	ddde      	ble.n	80056f0 <__sfvwrite_r+0x1e0>
 8005732:	1bed      	subs	r5, r5, r7
 8005734:	e78e      	b.n	8005654 <__sfvwrite_r+0x144>
 8005736:	42af      	cmp	r7, r5
 8005738:	bf28      	it	cs
 800573a:	462f      	movcs	r7, r5
 800573c:	463a      	mov	r2, r7
 800573e:	4649      	mov	r1, r9
 8005740:	f000 fbc0 	bl	8005ec4 <memmove>
 8005744:	68a3      	ldr	r3, [r4, #8]
 8005746:	6822      	ldr	r2, [r4, #0]
 8005748:	1bdb      	subs	r3, r3, r7
 800574a:	443a      	add	r2, r7
 800574c:	60a3      	str	r3, [r4, #8]
 800574e:	6022      	str	r2, [r4, #0]
 8005750:	2b00      	cmp	r3, #0
 8005752:	d1ee      	bne.n	8005732 <__sfvwrite_r+0x222>
 8005754:	4621      	mov	r1, r4
 8005756:	4650      	mov	r0, sl
 8005758:	f7ff fce8 	bl	800512c <_fflush_r>
 800575c:	2800      	cmp	r0, #0
 800575e:	d0e8      	beq.n	8005732 <__sfvwrite_r+0x222>
 8005760:	e7c6      	b.n	80056f0 <__sfvwrite_r+0x1e0>
 8005762:	f10b 0308 	add.w	r3, fp, #8
 8005766:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800576a:	469b      	mov	fp, r3
 800576c:	3308      	adds	r3, #8
 800576e:	2f00      	cmp	r7, #0
 8005770:	d0f9      	beq.n	8005766 <__sfvwrite_r+0x256>
 8005772:	463a      	mov	r2, r7
 8005774:	210a      	movs	r1, #10
 8005776:	4630      	mov	r0, r6
 8005778:	f7fa ffd2 	bl	8000720 <memchr>
 800577c:	b338      	cbz	r0, 80057ce <__sfvwrite_r+0x2be>
 800577e:	3001      	adds	r0, #1
 8005780:	eba0 0906 	sub.w	r9, r0, r6
 8005784:	e783      	b.n	800568e <__sfvwrite_r+0x17e>
 8005786:	462f      	mov	r7, r5
 8005788:	46ab      	mov	fp, r5
 800578a:	e757      	b.n	800563c <__sfvwrite_r+0x12c>
 800578c:	4631      	mov	r1, r6
 800578e:	462a      	mov	r2, r5
 8005790:	f000 fb98 	bl	8005ec4 <memmove>
 8005794:	6823      	ldr	r3, [r4, #0]
 8005796:	442b      	add	r3, r5
 8005798:	6023      	str	r3, [r4, #0]
 800579a:	4621      	mov	r1, r4
 800579c:	4650      	mov	r0, sl
 800579e:	f7ff fcc5 	bl	800512c <_fflush_r>
 80057a2:	2800      	cmp	r0, #0
 80057a4:	d08b      	beq.n	80056be <__sfvwrite_r+0x1ae>
 80057a6:	e7a3      	b.n	80056f0 <__sfvwrite_r+0x1e0>
 80057a8:	4650      	mov	r0, sl
 80057aa:	f000 ff05 	bl	80065b8 <_realloc_r>
 80057ae:	4603      	mov	r3, r0
 80057b0:	2800      	cmp	r0, #0
 80057b2:	f47f af39 	bne.w	8005628 <__sfvwrite_r+0x118>
 80057b6:	6921      	ldr	r1, [r4, #16]
 80057b8:	4650      	mov	r0, sl
 80057ba:	f7ff fdb5 	bl	8005328 <_free_r>
 80057be:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057c2:	220c      	movs	r2, #12
 80057c4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80057c8:	f8ca 2000 	str.w	r2, [sl]
 80057cc:	e792      	b.n	80056f4 <__sfvwrite_r+0x1e4>
 80057ce:	f107 0901 	add.w	r9, r7, #1
 80057d2:	e75c      	b.n	800568e <__sfvwrite_r+0x17e>
 80057d4:	461a      	mov	r2, r3
 80057d6:	4631      	mov	r1, r6
 80057d8:	9301      	str	r3, [sp, #4]
 80057da:	f000 fb73 	bl	8005ec4 <memmove>
 80057de:	9b01      	ldr	r3, [sp, #4]
 80057e0:	68a1      	ldr	r1, [r4, #8]
 80057e2:	6822      	ldr	r2, [r4, #0]
 80057e4:	1ac9      	subs	r1, r1, r3
 80057e6:	441a      	add	r2, r3
 80057e8:	60a1      	str	r1, [r4, #8]
 80057ea:	6022      	str	r2, [r4, #0]
 80057ec:	461d      	mov	r5, r3
 80057ee:	e766      	b.n	80056be <__sfvwrite_r+0x1ae>
 80057f0:	230c      	movs	r3, #12
 80057f2:	f8ca 3000 	str.w	r3, [sl]
 80057f6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057fa:	e77b      	b.n	80056f4 <__sfvwrite_r+0x1e4>
 80057fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005800:	e76b      	b.n	80056da <__sfvwrite_r+0x1ca>
 8005802:	bf00      	nop
 8005804:	7ffffffe 	.word	0x7ffffffe
 8005808:	7ffffc00 	.word	0x7ffffc00

0800580c <_fwalk_reent>:
 800580c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005810:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005814:	d01f      	beq.n	8005856 <_fwalk_reent+0x4a>
 8005816:	4688      	mov	r8, r1
 8005818:	4606      	mov	r6, r0
 800581a:	f04f 0900 	mov.w	r9, #0
 800581e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005822:	3d01      	subs	r5, #1
 8005824:	d411      	bmi.n	800584a <_fwalk_reent+0x3e>
 8005826:	89a3      	ldrh	r3, [r4, #12]
 8005828:	2b01      	cmp	r3, #1
 800582a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800582e:	4621      	mov	r1, r4
 8005830:	4630      	mov	r0, r6
 8005832:	d906      	bls.n	8005842 <_fwalk_reent+0x36>
 8005834:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005838:	3301      	adds	r3, #1
 800583a:	d002      	beq.n	8005842 <_fwalk_reent+0x36>
 800583c:	47c0      	blx	r8
 800583e:	ea49 0900 	orr.w	r9, r9, r0
 8005842:	1c6b      	adds	r3, r5, #1
 8005844:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005848:	d1ed      	bne.n	8005826 <_fwalk_reent+0x1a>
 800584a:	683f      	ldr	r7, [r7, #0]
 800584c:	2f00      	cmp	r7, #0
 800584e:	d1e6      	bne.n	800581e <_fwalk_reent+0x12>
 8005850:	4648      	mov	r0, r9
 8005852:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005856:	46b9      	mov	r9, r7
 8005858:	4648      	mov	r0, r9
 800585a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800585e:	bf00      	nop

08005860 <_localeconv_r>:
 8005860:	4a04      	ldr	r2, [pc, #16]	; (8005874 <_localeconv_r+0x14>)
 8005862:	4b05      	ldr	r3, [pc, #20]	; (8005878 <_localeconv_r+0x18>)
 8005864:	6812      	ldr	r2, [r2, #0]
 8005866:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005868:	2800      	cmp	r0, #0
 800586a:	bf08      	it	eq
 800586c:	4618      	moveq	r0, r3
 800586e:	30f0      	adds	r0, #240	; 0xf0
 8005870:	4770      	bx	lr
 8005872:	bf00      	nop
 8005874:	20000018 	.word	0x20000018
 8005878:	2000085c 	.word	0x2000085c

0800587c <__retarget_lock_init_recursive>:
 800587c:	4770      	bx	lr
 800587e:	bf00      	nop

08005880 <__retarget_lock_close_recursive>:
 8005880:	4770      	bx	lr
 8005882:	bf00      	nop

08005884 <__retarget_lock_acquire_recursive>:
 8005884:	4770      	bx	lr
 8005886:	bf00      	nop

08005888 <__retarget_lock_release_recursive>:
 8005888:	4770      	bx	lr
 800588a:	bf00      	nop

0800588c <__swhatbuf_r>:
 800588c:	b570      	push	{r4, r5, r6, lr}
 800588e:	460c      	mov	r4, r1
 8005890:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005894:	2900      	cmp	r1, #0
 8005896:	b096      	sub	sp, #88	; 0x58
 8005898:	4615      	mov	r5, r2
 800589a:	461e      	mov	r6, r3
 800589c:	da0f      	bge.n	80058be <__swhatbuf_r+0x32>
 800589e:	89a2      	ldrh	r2, [r4, #12]
 80058a0:	2300      	movs	r3, #0
 80058a2:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80058a6:	6033      	str	r3, [r6, #0]
 80058a8:	d104      	bne.n	80058b4 <__swhatbuf_r+0x28>
 80058aa:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80058ae:	602b      	str	r3, [r5, #0]
 80058b0:	b016      	add	sp, #88	; 0x58
 80058b2:	bd70      	pop	{r4, r5, r6, pc}
 80058b4:	2240      	movs	r2, #64	; 0x40
 80058b6:	4618      	mov	r0, r3
 80058b8:	602a      	str	r2, [r5, #0]
 80058ba:	b016      	add	sp, #88	; 0x58
 80058bc:	bd70      	pop	{r4, r5, r6, pc}
 80058be:	466a      	mov	r2, sp
 80058c0:	f001 fad0 	bl	8006e64 <_fstat_r>
 80058c4:	2800      	cmp	r0, #0
 80058c6:	dbea      	blt.n	800589e <__swhatbuf_r+0x12>
 80058c8:	9b01      	ldr	r3, [sp, #4]
 80058ca:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80058ce:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80058d2:	fab3 f383 	clz	r3, r3
 80058d6:	095b      	lsrs	r3, r3, #5
 80058d8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80058dc:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80058e0:	6033      	str	r3, [r6, #0]
 80058e2:	602a      	str	r2, [r5, #0]
 80058e4:	b016      	add	sp, #88	; 0x58
 80058e6:	bd70      	pop	{r4, r5, r6, pc}

080058e8 <__smakebuf_r>:
 80058e8:	898a      	ldrh	r2, [r1, #12]
 80058ea:	0792      	lsls	r2, r2, #30
 80058ec:	460b      	mov	r3, r1
 80058ee:	d506      	bpl.n	80058fe <__smakebuf_r+0x16>
 80058f0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80058f4:	2101      	movs	r1, #1
 80058f6:	601a      	str	r2, [r3, #0]
 80058f8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80058fc:	4770      	bx	lr
 80058fe:	b570      	push	{r4, r5, r6, lr}
 8005900:	b082      	sub	sp, #8
 8005902:	ab01      	add	r3, sp, #4
 8005904:	466a      	mov	r2, sp
 8005906:	460c      	mov	r4, r1
 8005908:	4605      	mov	r5, r0
 800590a:	f7ff ffbf 	bl	800588c <__swhatbuf_r>
 800590e:	9900      	ldr	r1, [sp, #0]
 8005910:	4606      	mov	r6, r0
 8005912:	4628      	mov	r0, r5
 8005914:	f000 f832 	bl	800597c <_malloc_r>
 8005918:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800591c:	b1d8      	cbz	r0, 8005956 <__smakebuf_r+0x6e>
 800591e:	4916      	ldr	r1, [pc, #88]	; (8005978 <__smakebuf_r+0x90>)
 8005920:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005922:	9a01      	ldr	r2, [sp, #4]
 8005924:	9900      	ldr	r1, [sp, #0]
 8005926:	6020      	str	r0, [r4, #0]
 8005928:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800592c:	81a3      	strh	r3, [r4, #12]
 800592e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005932:	b91a      	cbnz	r2, 800593c <__smakebuf_r+0x54>
 8005934:	4333      	orrs	r3, r6
 8005936:	81a3      	strh	r3, [r4, #12]
 8005938:	b002      	add	sp, #8
 800593a:	bd70      	pop	{r4, r5, r6, pc}
 800593c:	4628      	mov	r0, r5
 800593e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005942:	f001 faa3 	bl	8006e8c <_isatty_r>
 8005946:	b1a0      	cbz	r0, 8005972 <__smakebuf_r+0x8a>
 8005948:	89a3      	ldrh	r3, [r4, #12]
 800594a:	f023 0303 	bic.w	r3, r3, #3
 800594e:	f043 0301 	orr.w	r3, r3, #1
 8005952:	b21b      	sxth	r3, r3
 8005954:	e7ee      	b.n	8005934 <__smakebuf_r+0x4c>
 8005956:	059a      	lsls	r2, r3, #22
 8005958:	d4ee      	bmi.n	8005938 <__smakebuf_r+0x50>
 800595a:	f023 0303 	bic.w	r3, r3, #3
 800595e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005962:	f043 0302 	orr.w	r3, r3, #2
 8005966:	2101      	movs	r1, #1
 8005968:	81a3      	strh	r3, [r4, #12]
 800596a:	6022      	str	r2, [r4, #0]
 800596c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005970:	e7e2      	b.n	8005938 <__smakebuf_r+0x50>
 8005972:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005976:	e7dd      	b.n	8005934 <__smakebuf_r+0x4c>
 8005978:	080051d9 	.word	0x080051d9

0800597c <_malloc_r>:
 800597c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005980:	f101 050b 	add.w	r5, r1, #11
 8005984:	2d16      	cmp	r5, #22
 8005986:	b083      	sub	sp, #12
 8005988:	4606      	mov	r6, r0
 800598a:	d823      	bhi.n	80059d4 <_malloc_r+0x58>
 800598c:	2910      	cmp	r1, #16
 800598e:	f200 80b9 	bhi.w	8005b04 <_malloc_r+0x188>
 8005992:	f000 fafb 	bl	8005f8c <__malloc_lock>
 8005996:	2510      	movs	r5, #16
 8005998:	2318      	movs	r3, #24
 800599a:	2002      	movs	r0, #2
 800599c:	4fc5      	ldr	r7, [pc, #788]	; (8005cb4 <_malloc_r+0x338>)
 800599e:	443b      	add	r3, r7
 80059a0:	f1a3 0208 	sub.w	r2, r3, #8
 80059a4:	685c      	ldr	r4, [r3, #4]
 80059a6:	4294      	cmp	r4, r2
 80059a8:	f000 8166 	beq.w	8005c78 <_malloc_r+0x2fc>
 80059ac:	6863      	ldr	r3, [r4, #4]
 80059ae:	f023 0303 	bic.w	r3, r3, #3
 80059b2:	4423      	add	r3, r4
 80059b4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80059b8:	685a      	ldr	r2, [r3, #4]
 80059ba:	60e9      	str	r1, [r5, #12]
 80059bc:	f042 0201 	orr.w	r2, r2, #1
 80059c0:	608d      	str	r5, [r1, #8]
 80059c2:	4630      	mov	r0, r6
 80059c4:	605a      	str	r2, [r3, #4]
 80059c6:	f000 fae7 	bl	8005f98 <__malloc_unlock>
 80059ca:	3408      	adds	r4, #8
 80059cc:	4620      	mov	r0, r4
 80059ce:	b003      	add	sp, #12
 80059d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059d4:	f035 0507 	bics.w	r5, r5, #7
 80059d8:	f100 8094 	bmi.w	8005b04 <_malloc_r+0x188>
 80059dc:	42a9      	cmp	r1, r5
 80059de:	f200 8091 	bhi.w	8005b04 <_malloc_r+0x188>
 80059e2:	f000 fad3 	bl	8005f8c <__malloc_lock>
 80059e6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80059ea:	f0c0 8183 	bcc.w	8005cf4 <_malloc_r+0x378>
 80059ee:	0a6b      	lsrs	r3, r5, #9
 80059f0:	f000 808f 	beq.w	8005b12 <_malloc_r+0x196>
 80059f4:	2b04      	cmp	r3, #4
 80059f6:	f200 8146 	bhi.w	8005c86 <_malloc_r+0x30a>
 80059fa:	09ab      	lsrs	r3, r5, #6
 80059fc:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005a00:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005a04:	00c3      	lsls	r3, r0, #3
 8005a06:	4fab      	ldr	r7, [pc, #684]	; (8005cb4 <_malloc_r+0x338>)
 8005a08:	443b      	add	r3, r7
 8005a0a:	f1a3 0108 	sub.w	r1, r3, #8
 8005a0e:	685c      	ldr	r4, [r3, #4]
 8005a10:	42a1      	cmp	r1, r4
 8005a12:	d106      	bne.n	8005a22 <_malloc_r+0xa6>
 8005a14:	e00c      	b.n	8005a30 <_malloc_r+0xb4>
 8005a16:	2a00      	cmp	r2, #0
 8005a18:	f280 811d 	bge.w	8005c56 <_malloc_r+0x2da>
 8005a1c:	68e4      	ldr	r4, [r4, #12]
 8005a1e:	42a1      	cmp	r1, r4
 8005a20:	d006      	beq.n	8005a30 <_malloc_r+0xb4>
 8005a22:	6863      	ldr	r3, [r4, #4]
 8005a24:	f023 0303 	bic.w	r3, r3, #3
 8005a28:	1b5a      	subs	r2, r3, r5
 8005a2a:	2a0f      	cmp	r2, #15
 8005a2c:	ddf3      	ble.n	8005a16 <_malloc_r+0x9a>
 8005a2e:	4660      	mov	r0, ip
 8005a30:	693c      	ldr	r4, [r7, #16]
 8005a32:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005cc8 <_malloc_r+0x34c>
 8005a36:	4564      	cmp	r4, ip
 8005a38:	d071      	beq.n	8005b1e <_malloc_r+0x1a2>
 8005a3a:	6863      	ldr	r3, [r4, #4]
 8005a3c:	f023 0303 	bic.w	r3, r3, #3
 8005a40:	1b5a      	subs	r2, r3, r5
 8005a42:	2a0f      	cmp	r2, #15
 8005a44:	f300 8144 	bgt.w	8005cd0 <_malloc_r+0x354>
 8005a48:	2a00      	cmp	r2, #0
 8005a4a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005a4e:	f280 8126 	bge.w	8005c9e <_malloc_r+0x322>
 8005a52:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005a56:	f080 8169 	bcs.w	8005d2c <_malloc_r+0x3b0>
 8005a5a:	08db      	lsrs	r3, r3, #3
 8005a5c:	1c59      	adds	r1, r3, #1
 8005a5e:	687a      	ldr	r2, [r7, #4]
 8005a60:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005a64:	f8c4 8008 	str.w	r8, [r4, #8]
 8005a68:	f04f 0e01 	mov.w	lr, #1
 8005a6c:	109b      	asrs	r3, r3, #2
 8005a6e:	fa0e f303 	lsl.w	r3, lr, r3
 8005a72:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005a76:	4313      	orrs	r3, r2
 8005a78:	f1ae 0208 	sub.w	r2, lr, #8
 8005a7c:	60e2      	str	r2, [r4, #12]
 8005a7e:	607b      	str	r3, [r7, #4]
 8005a80:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005a84:	f8c8 400c 	str.w	r4, [r8, #12]
 8005a88:	1082      	asrs	r2, r0, #2
 8005a8a:	2401      	movs	r4, #1
 8005a8c:	4094      	lsls	r4, r2
 8005a8e:	429c      	cmp	r4, r3
 8005a90:	d84b      	bhi.n	8005b2a <_malloc_r+0x1ae>
 8005a92:	421c      	tst	r4, r3
 8005a94:	d106      	bne.n	8005aa4 <_malloc_r+0x128>
 8005a96:	f020 0003 	bic.w	r0, r0, #3
 8005a9a:	0064      	lsls	r4, r4, #1
 8005a9c:	421c      	tst	r4, r3
 8005a9e:	f100 0004 	add.w	r0, r0, #4
 8005aa2:	d0fa      	beq.n	8005a9a <_malloc_r+0x11e>
 8005aa4:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005aa8:	46ce      	mov	lr, r9
 8005aaa:	4680      	mov	r8, r0
 8005aac:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005ab0:	459e      	cmp	lr, r3
 8005ab2:	d107      	bne.n	8005ac4 <_malloc_r+0x148>
 8005ab4:	e122      	b.n	8005cfc <_malloc_r+0x380>
 8005ab6:	2a00      	cmp	r2, #0
 8005ab8:	f280 8129 	bge.w	8005d0e <_malloc_r+0x392>
 8005abc:	68db      	ldr	r3, [r3, #12]
 8005abe:	459e      	cmp	lr, r3
 8005ac0:	f000 811c 	beq.w	8005cfc <_malloc_r+0x380>
 8005ac4:	6859      	ldr	r1, [r3, #4]
 8005ac6:	f021 0103 	bic.w	r1, r1, #3
 8005aca:	1b4a      	subs	r2, r1, r5
 8005acc:	2a0f      	cmp	r2, #15
 8005ace:	ddf2      	ble.n	8005ab6 <_malloc_r+0x13a>
 8005ad0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005ad4:	195c      	adds	r4, r3, r5
 8005ad6:	f045 0501 	orr.w	r5, r5, #1
 8005ada:	605d      	str	r5, [r3, #4]
 8005adc:	f042 0501 	orr.w	r5, r2, #1
 8005ae0:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005ae4:	4630      	mov	r0, r6
 8005ae6:	f8ce 8008 	str.w	r8, [lr, #8]
 8005aea:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005aee:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005af2:	6065      	str	r5, [r4, #4]
 8005af4:	505a      	str	r2, [r3, r1]
 8005af6:	9301      	str	r3, [sp, #4]
 8005af8:	f000 fa4e 	bl	8005f98 <__malloc_unlock>
 8005afc:	9b01      	ldr	r3, [sp, #4]
 8005afe:	f103 0408 	add.w	r4, r3, #8
 8005b02:	e763      	b.n	80059cc <_malloc_r+0x50>
 8005b04:	2400      	movs	r4, #0
 8005b06:	230c      	movs	r3, #12
 8005b08:	4620      	mov	r0, r4
 8005b0a:	6033      	str	r3, [r6, #0]
 8005b0c:	b003      	add	sp, #12
 8005b0e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b12:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005b16:	2040      	movs	r0, #64	; 0x40
 8005b18:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005b1c:	e773      	b.n	8005a06 <_malloc_r+0x8a>
 8005b1e:	687b      	ldr	r3, [r7, #4]
 8005b20:	1082      	asrs	r2, r0, #2
 8005b22:	2401      	movs	r4, #1
 8005b24:	4094      	lsls	r4, r2
 8005b26:	429c      	cmp	r4, r3
 8005b28:	d9b3      	bls.n	8005a92 <_malloc_r+0x116>
 8005b2a:	68bc      	ldr	r4, [r7, #8]
 8005b2c:	6863      	ldr	r3, [r4, #4]
 8005b2e:	f023 0903 	bic.w	r9, r3, #3
 8005b32:	45a9      	cmp	r9, r5
 8005b34:	d303      	bcc.n	8005b3e <_malloc_r+0x1c2>
 8005b36:	eba9 0305 	sub.w	r3, r9, r5
 8005b3a:	2b0f      	cmp	r3, #15
 8005b3c:	dc7b      	bgt.n	8005c36 <_malloc_r+0x2ba>
 8005b3e:	4b5e      	ldr	r3, [pc, #376]	; (8005cb8 <_malloc_r+0x33c>)
 8005b40:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005ccc <_malloc_r+0x350>
 8005b44:	681a      	ldr	r2, [r3, #0]
 8005b46:	f8da 3000 	ldr.w	r3, [sl]
 8005b4a:	3301      	adds	r3, #1
 8005b4c:	eb05 0802 	add.w	r8, r5, r2
 8005b50:	f000 8148 	beq.w	8005de4 <_malloc_r+0x468>
 8005b54:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005b58:	f108 080f 	add.w	r8, r8, #15
 8005b5c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005b60:	f028 080f 	bic.w	r8, r8, #15
 8005b64:	4641      	mov	r1, r8
 8005b66:	4630      	mov	r0, r6
 8005b68:	f000 ff08 	bl	800697c <_sbrk_r>
 8005b6c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005b70:	4683      	mov	fp, r0
 8005b72:	f000 8104 	beq.w	8005d7e <_malloc_r+0x402>
 8005b76:	eb04 0009 	add.w	r0, r4, r9
 8005b7a:	4558      	cmp	r0, fp
 8005b7c:	f200 80fd 	bhi.w	8005d7a <_malloc_r+0x3fe>
 8005b80:	4a4e      	ldr	r2, [pc, #312]	; (8005cbc <_malloc_r+0x340>)
 8005b82:	6813      	ldr	r3, [r2, #0]
 8005b84:	4443      	add	r3, r8
 8005b86:	6013      	str	r3, [r2, #0]
 8005b88:	f000 814d 	beq.w	8005e26 <_malloc_r+0x4aa>
 8005b8c:	f8da 1000 	ldr.w	r1, [sl]
 8005b90:	3101      	adds	r1, #1
 8005b92:	bf1b      	ittet	ne
 8005b94:	ebab 0000 	subne.w	r0, fp, r0
 8005b98:	181b      	addne	r3, r3, r0
 8005b9a:	f8ca b000 	streq.w	fp, [sl]
 8005b9e:	6013      	strne	r3, [r2, #0]
 8005ba0:	f01b 0307 	ands.w	r3, fp, #7
 8005ba4:	f000 8134 	beq.w	8005e10 <_malloc_r+0x494>
 8005ba8:	f1c3 0108 	rsb	r1, r3, #8
 8005bac:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005bb0:	448b      	add	fp, r1
 8005bb2:	3308      	adds	r3, #8
 8005bb4:	44d8      	add	r8, fp
 8005bb6:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005bba:	eba3 0808 	sub.w	r8, r3, r8
 8005bbe:	4641      	mov	r1, r8
 8005bc0:	4630      	mov	r0, r6
 8005bc2:	9201      	str	r2, [sp, #4]
 8005bc4:	f000 feda 	bl	800697c <_sbrk_r>
 8005bc8:	1c43      	adds	r3, r0, #1
 8005bca:	9a01      	ldr	r2, [sp, #4]
 8005bcc:	f000 8146 	beq.w	8005e5c <_malloc_r+0x4e0>
 8005bd0:	eba0 010b 	sub.w	r1, r0, fp
 8005bd4:	4441      	add	r1, r8
 8005bd6:	f041 0101 	orr.w	r1, r1, #1
 8005bda:	6813      	ldr	r3, [r2, #0]
 8005bdc:	f8c7 b008 	str.w	fp, [r7, #8]
 8005be0:	4443      	add	r3, r8
 8005be2:	42bc      	cmp	r4, r7
 8005be4:	f8cb 1004 	str.w	r1, [fp, #4]
 8005be8:	6013      	str	r3, [r2, #0]
 8005bea:	d015      	beq.n	8005c18 <_malloc_r+0x29c>
 8005bec:	f1b9 0f0f 	cmp.w	r9, #15
 8005bf0:	f240 8130 	bls.w	8005e54 <_malloc_r+0x4d8>
 8005bf4:	6860      	ldr	r0, [r4, #4]
 8005bf6:	f1a9 010c 	sub.w	r1, r9, #12
 8005bfa:	f021 0107 	bic.w	r1, r1, #7
 8005bfe:	f000 0001 	and.w	r0, r0, #1
 8005c02:	eb04 0c01 	add.w	ip, r4, r1
 8005c06:	4308      	orrs	r0, r1
 8005c08:	f04f 0e05 	mov.w	lr, #5
 8005c0c:	290f      	cmp	r1, #15
 8005c0e:	6060      	str	r0, [r4, #4]
 8005c10:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005c14:	f200 813a 	bhi.w	8005e8c <_malloc_r+0x510>
 8005c18:	4a29      	ldr	r2, [pc, #164]	; (8005cc0 <_malloc_r+0x344>)
 8005c1a:	482a      	ldr	r0, [pc, #168]	; (8005cc4 <_malloc_r+0x348>)
 8005c1c:	6811      	ldr	r1, [r2, #0]
 8005c1e:	68bc      	ldr	r4, [r7, #8]
 8005c20:	428b      	cmp	r3, r1
 8005c22:	6801      	ldr	r1, [r0, #0]
 8005c24:	bf88      	it	hi
 8005c26:	6013      	strhi	r3, [r2, #0]
 8005c28:	6862      	ldr	r2, [r4, #4]
 8005c2a:	428b      	cmp	r3, r1
 8005c2c:	f022 0203 	bic.w	r2, r2, #3
 8005c30:	bf88      	it	hi
 8005c32:	6003      	strhi	r3, [r0, #0]
 8005c34:	e0a7      	b.n	8005d86 <_malloc_r+0x40a>
 8005c36:	1962      	adds	r2, r4, r5
 8005c38:	f043 0301 	orr.w	r3, r3, #1
 8005c3c:	f045 0501 	orr.w	r5, r5, #1
 8005c40:	6065      	str	r5, [r4, #4]
 8005c42:	4630      	mov	r0, r6
 8005c44:	60ba      	str	r2, [r7, #8]
 8005c46:	6053      	str	r3, [r2, #4]
 8005c48:	f000 f9a6 	bl	8005f98 <__malloc_unlock>
 8005c4c:	3408      	adds	r4, #8
 8005c4e:	4620      	mov	r0, r4
 8005c50:	b003      	add	sp, #12
 8005c52:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c56:	4423      	add	r3, r4
 8005c58:	68e1      	ldr	r1, [r4, #12]
 8005c5a:	685a      	ldr	r2, [r3, #4]
 8005c5c:	68a5      	ldr	r5, [r4, #8]
 8005c5e:	f042 0201 	orr.w	r2, r2, #1
 8005c62:	60e9      	str	r1, [r5, #12]
 8005c64:	4630      	mov	r0, r6
 8005c66:	608d      	str	r5, [r1, #8]
 8005c68:	605a      	str	r2, [r3, #4]
 8005c6a:	f000 f995 	bl	8005f98 <__malloc_unlock>
 8005c6e:	3408      	adds	r4, #8
 8005c70:	4620      	mov	r0, r4
 8005c72:	b003      	add	sp, #12
 8005c74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c78:	68dc      	ldr	r4, [r3, #12]
 8005c7a:	42a3      	cmp	r3, r4
 8005c7c:	bf08      	it	eq
 8005c7e:	3002      	addeq	r0, #2
 8005c80:	f43f aed6 	beq.w	8005a30 <_malloc_r+0xb4>
 8005c84:	e692      	b.n	80059ac <_malloc_r+0x30>
 8005c86:	2b14      	cmp	r3, #20
 8005c88:	d971      	bls.n	8005d6e <_malloc_r+0x3f2>
 8005c8a:	2b54      	cmp	r3, #84	; 0x54
 8005c8c:	f200 80ad 	bhi.w	8005dea <_malloc_r+0x46e>
 8005c90:	0b2b      	lsrs	r3, r5, #12
 8005c92:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005c96:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005c9a:	00c3      	lsls	r3, r0, #3
 8005c9c:	e6b3      	b.n	8005a06 <_malloc_r+0x8a>
 8005c9e:	4423      	add	r3, r4
 8005ca0:	4630      	mov	r0, r6
 8005ca2:	685a      	ldr	r2, [r3, #4]
 8005ca4:	f042 0201 	orr.w	r2, r2, #1
 8005ca8:	605a      	str	r2, [r3, #4]
 8005caa:	3408      	adds	r4, #8
 8005cac:	f000 f974 	bl	8005f98 <__malloc_unlock>
 8005cb0:	e68c      	b.n	80059cc <_malloc_r+0x50>
 8005cb2:	bf00      	nop
 8005cb4:	2000044c 	.word	0x2000044c
 8005cb8:	20000a9c 	.word	0x20000a9c
 8005cbc:	20000a6c 	.word	0x20000a6c
 8005cc0:	20000a94 	.word	0x20000a94
 8005cc4:	20000a98 	.word	0x20000a98
 8005cc8:	20000454 	.word	0x20000454
 8005ccc:	20000854 	.word	0x20000854
 8005cd0:	1961      	adds	r1, r4, r5
 8005cd2:	f045 0e01 	orr.w	lr, r5, #1
 8005cd6:	f042 0501 	orr.w	r5, r2, #1
 8005cda:	f8c4 e004 	str.w	lr, [r4, #4]
 8005cde:	4630      	mov	r0, r6
 8005ce0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005ce4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005ce8:	604d      	str	r5, [r1, #4]
 8005cea:	50e2      	str	r2, [r4, r3]
 8005cec:	f000 f954 	bl	8005f98 <__malloc_unlock>
 8005cf0:	3408      	adds	r4, #8
 8005cf2:	e66b      	b.n	80059cc <_malloc_r+0x50>
 8005cf4:	08e8      	lsrs	r0, r5, #3
 8005cf6:	f105 0308 	add.w	r3, r5, #8
 8005cfa:	e64f      	b.n	800599c <_malloc_r+0x20>
 8005cfc:	f108 0801 	add.w	r8, r8, #1
 8005d00:	f018 0f03 	tst.w	r8, #3
 8005d04:	f10e 0e08 	add.w	lr, lr, #8
 8005d08:	f47f aed0 	bne.w	8005aac <_malloc_r+0x130>
 8005d0c:	e052      	b.n	8005db4 <_malloc_r+0x438>
 8005d0e:	4419      	add	r1, r3
 8005d10:	461c      	mov	r4, r3
 8005d12:	684a      	ldr	r2, [r1, #4]
 8005d14:	68db      	ldr	r3, [r3, #12]
 8005d16:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005d1a:	f042 0201 	orr.w	r2, r2, #1
 8005d1e:	604a      	str	r2, [r1, #4]
 8005d20:	4630      	mov	r0, r6
 8005d22:	60eb      	str	r3, [r5, #12]
 8005d24:	609d      	str	r5, [r3, #8]
 8005d26:	f000 f937 	bl	8005f98 <__malloc_unlock>
 8005d2a:	e64f      	b.n	80059cc <_malloc_r+0x50>
 8005d2c:	0a5a      	lsrs	r2, r3, #9
 8005d2e:	2a04      	cmp	r2, #4
 8005d30:	d935      	bls.n	8005d9e <_malloc_r+0x422>
 8005d32:	2a14      	cmp	r2, #20
 8005d34:	d86f      	bhi.n	8005e16 <_malloc_r+0x49a>
 8005d36:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005d3a:	00c9      	lsls	r1, r1, #3
 8005d3c:	325b      	adds	r2, #91	; 0x5b
 8005d3e:	eb07 0e01 	add.w	lr, r7, r1
 8005d42:	5879      	ldr	r1, [r7, r1]
 8005d44:	f1ae 0e08 	sub.w	lr, lr, #8
 8005d48:	458e      	cmp	lr, r1
 8005d4a:	d058      	beq.n	8005dfe <_malloc_r+0x482>
 8005d4c:	684a      	ldr	r2, [r1, #4]
 8005d4e:	f022 0203 	bic.w	r2, r2, #3
 8005d52:	429a      	cmp	r2, r3
 8005d54:	d902      	bls.n	8005d5c <_malloc_r+0x3e0>
 8005d56:	6889      	ldr	r1, [r1, #8]
 8005d58:	458e      	cmp	lr, r1
 8005d5a:	d1f7      	bne.n	8005d4c <_malloc_r+0x3d0>
 8005d5c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005d60:	687b      	ldr	r3, [r7, #4]
 8005d62:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005d66:	f8ce 4008 	str.w	r4, [lr, #8]
 8005d6a:	60cc      	str	r4, [r1, #12]
 8005d6c:	e68c      	b.n	8005a88 <_malloc_r+0x10c>
 8005d6e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005d72:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005d76:	00c3      	lsls	r3, r0, #3
 8005d78:	e645      	b.n	8005a06 <_malloc_r+0x8a>
 8005d7a:	42bc      	cmp	r4, r7
 8005d7c:	d072      	beq.n	8005e64 <_malloc_r+0x4e8>
 8005d7e:	68bc      	ldr	r4, [r7, #8]
 8005d80:	6862      	ldr	r2, [r4, #4]
 8005d82:	f022 0203 	bic.w	r2, r2, #3
 8005d86:	4295      	cmp	r5, r2
 8005d88:	eba2 0305 	sub.w	r3, r2, r5
 8005d8c:	d802      	bhi.n	8005d94 <_malloc_r+0x418>
 8005d8e:	2b0f      	cmp	r3, #15
 8005d90:	f73f af51 	bgt.w	8005c36 <_malloc_r+0x2ba>
 8005d94:	4630      	mov	r0, r6
 8005d96:	f000 f8ff 	bl	8005f98 <__malloc_unlock>
 8005d9a:	2400      	movs	r4, #0
 8005d9c:	e616      	b.n	80059cc <_malloc_r+0x50>
 8005d9e:	099a      	lsrs	r2, r3, #6
 8005da0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005da4:	00c9      	lsls	r1, r1, #3
 8005da6:	3238      	adds	r2, #56	; 0x38
 8005da8:	e7c9      	b.n	8005d3e <_malloc_r+0x3c2>
 8005daa:	f8d9 9000 	ldr.w	r9, [r9]
 8005dae:	4599      	cmp	r9, r3
 8005db0:	f040 8083 	bne.w	8005eba <_malloc_r+0x53e>
 8005db4:	f010 0f03 	tst.w	r0, #3
 8005db8:	f1a9 0308 	sub.w	r3, r9, #8
 8005dbc:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005dc0:	d1f3      	bne.n	8005daa <_malloc_r+0x42e>
 8005dc2:	687b      	ldr	r3, [r7, #4]
 8005dc4:	ea23 0304 	bic.w	r3, r3, r4
 8005dc8:	607b      	str	r3, [r7, #4]
 8005dca:	0064      	lsls	r4, r4, #1
 8005dcc:	429c      	cmp	r4, r3
 8005dce:	f63f aeac 	bhi.w	8005b2a <_malloc_r+0x1ae>
 8005dd2:	b91c      	cbnz	r4, 8005ddc <_malloc_r+0x460>
 8005dd4:	e6a9      	b.n	8005b2a <_malloc_r+0x1ae>
 8005dd6:	0064      	lsls	r4, r4, #1
 8005dd8:	f108 0804 	add.w	r8, r8, #4
 8005ddc:	421c      	tst	r4, r3
 8005dde:	d0fa      	beq.n	8005dd6 <_malloc_r+0x45a>
 8005de0:	4640      	mov	r0, r8
 8005de2:	e65f      	b.n	8005aa4 <_malloc_r+0x128>
 8005de4:	f108 0810 	add.w	r8, r8, #16
 8005de8:	e6bc      	b.n	8005b64 <_malloc_r+0x1e8>
 8005dea:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005dee:	d826      	bhi.n	8005e3e <_malloc_r+0x4c2>
 8005df0:	0beb      	lsrs	r3, r5, #15
 8005df2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005df6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005dfa:	00c3      	lsls	r3, r0, #3
 8005dfc:	e603      	b.n	8005a06 <_malloc_r+0x8a>
 8005dfe:	687b      	ldr	r3, [r7, #4]
 8005e00:	1092      	asrs	r2, r2, #2
 8005e02:	f04f 0801 	mov.w	r8, #1
 8005e06:	fa08 f202 	lsl.w	r2, r8, r2
 8005e0a:	4313      	orrs	r3, r2
 8005e0c:	607b      	str	r3, [r7, #4]
 8005e0e:	e7a8      	b.n	8005d62 <_malloc_r+0x3e6>
 8005e10:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005e14:	e6ce      	b.n	8005bb4 <_malloc_r+0x238>
 8005e16:	2a54      	cmp	r2, #84	; 0x54
 8005e18:	d829      	bhi.n	8005e6e <_malloc_r+0x4f2>
 8005e1a:	0b1a      	lsrs	r2, r3, #12
 8005e1c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005e20:	00c9      	lsls	r1, r1, #3
 8005e22:	326e      	adds	r2, #110	; 0x6e
 8005e24:	e78b      	b.n	8005d3e <_malloc_r+0x3c2>
 8005e26:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005e2a:	2900      	cmp	r1, #0
 8005e2c:	f47f aeae 	bne.w	8005b8c <_malloc_r+0x210>
 8005e30:	eb09 0208 	add.w	r2, r9, r8
 8005e34:	68b9      	ldr	r1, [r7, #8]
 8005e36:	f042 0201 	orr.w	r2, r2, #1
 8005e3a:	604a      	str	r2, [r1, #4]
 8005e3c:	e6ec      	b.n	8005c18 <_malloc_r+0x29c>
 8005e3e:	f240 5254 	movw	r2, #1364	; 0x554
 8005e42:	4293      	cmp	r3, r2
 8005e44:	d81c      	bhi.n	8005e80 <_malloc_r+0x504>
 8005e46:	0cab      	lsrs	r3, r5, #18
 8005e48:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005e4c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005e50:	00c3      	lsls	r3, r0, #3
 8005e52:	e5d8      	b.n	8005a06 <_malloc_r+0x8a>
 8005e54:	2301      	movs	r3, #1
 8005e56:	f8cb 3004 	str.w	r3, [fp, #4]
 8005e5a:	e79b      	b.n	8005d94 <_malloc_r+0x418>
 8005e5c:	2101      	movs	r1, #1
 8005e5e:	f04f 0800 	mov.w	r8, #0
 8005e62:	e6ba      	b.n	8005bda <_malloc_r+0x25e>
 8005e64:	4a16      	ldr	r2, [pc, #88]	; (8005ec0 <_malloc_r+0x544>)
 8005e66:	6813      	ldr	r3, [r2, #0]
 8005e68:	4443      	add	r3, r8
 8005e6a:	6013      	str	r3, [r2, #0]
 8005e6c:	e68e      	b.n	8005b8c <_malloc_r+0x210>
 8005e6e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005e72:	d814      	bhi.n	8005e9e <_malloc_r+0x522>
 8005e74:	0bda      	lsrs	r2, r3, #15
 8005e76:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005e7a:	00c9      	lsls	r1, r1, #3
 8005e7c:	3277      	adds	r2, #119	; 0x77
 8005e7e:	e75e      	b.n	8005d3e <_malloc_r+0x3c2>
 8005e80:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005e84:	207f      	movs	r0, #127	; 0x7f
 8005e86:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005e8a:	e5bc      	b.n	8005a06 <_malloc_r+0x8a>
 8005e8c:	f104 0108 	add.w	r1, r4, #8
 8005e90:	4630      	mov	r0, r6
 8005e92:	9201      	str	r2, [sp, #4]
 8005e94:	f7ff fa48 	bl	8005328 <_free_r>
 8005e98:	9a01      	ldr	r2, [sp, #4]
 8005e9a:	6813      	ldr	r3, [r2, #0]
 8005e9c:	e6bc      	b.n	8005c18 <_malloc_r+0x29c>
 8005e9e:	f240 5154 	movw	r1, #1364	; 0x554
 8005ea2:	428a      	cmp	r2, r1
 8005ea4:	d805      	bhi.n	8005eb2 <_malloc_r+0x536>
 8005ea6:	0c9a      	lsrs	r2, r3, #18
 8005ea8:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005eac:	00c9      	lsls	r1, r1, #3
 8005eae:	327c      	adds	r2, #124	; 0x7c
 8005eb0:	e745      	b.n	8005d3e <_malloc_r+0x3c2>
 8005eb2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005eb6:	227e      	movs	r2, #126	; 0x7e
 8005eb8:	e741      	b.n	8005d3e <_malloc_r+0x3c2>
 8005eba:	687b      	ldr	r3, [r7, #4]
 8005ebc:	e785      	b.n	8005dca <_malloc_r+0x44e>
 8005ebe:	bf00      	nop
 8005ec0:	20000a6c 	.word	0x20000a6c

08005ec4 <memmove>:
 8005ec4:	4288      	cmp	r0, r1
 8005ec6:	b4f0      	push	{r4, r5, r6, r7}
 8005ec8:	d90d      	bls.n	8005ee6 <memmove+0x22>
 8005eca:	188b      	adds	r3, r1, r2
 8005ecc:	4283      	cmp	r3, r0
 8005ece:	d90a      	bls.n	8005ee6 <memmove+0x22>
 8005ed0:	1884      	adds	r4, r0, r2
 8005ed2:	b132      	cbz	r2, 8005ee2 <memmove+0x1e>
 8005ed4:	4622      	mov	r2, r4
 8005ed6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005eda:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005ede:	4299      	cmp	r1, r3
 8005ee0:	d1f9      	bne.n	8005ed6 <memmove+0x12>
 8005ee2:	bcf0      	pop	{r4, r5, r6, r7}
 8005ee4:	4770      	bx	lr
 8005ee6:	2a0f      	cmp	r2, #15
 8005ee8:	d949      	bls.n	8005f7e <memmove+0xba>
 8005eea:	ea40 0301 	orr.w	r3, r0, r1
 8005eee:	079b      	lsls	r3, r3, #30
 8005ef0:	d147      	bne.n	8005f82 <memmove+0xbe>
 8005ef2:	f1a2 0310 	sub.w	r3, r2, #16
 8005ef6:	091b      	lsrs	r3, r3, #4
 8005ef8:	f101 0720 	add.w	r7, r1, #32
 8005efc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005f00:	f101 0410 	add.w	r4, r1, #16
 8005f04:	f100 0510 	add.w	r5, r0, #16
 8005f08:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005f0c:	f845 6c10 	str.w	r6, [r5, #-16]
 8005f10:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005f14:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005f18:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005f1c:	f845 6c08 	str.w	r6, [r5, #-8]
 8005f20:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005f24:	f845 6c04 	str.w	r6, [r5, #-4]
 8005f28:	3410      	adds	r4, #16
 8005f2a:	42bc      	cmp	r4, r7
 8005f2c:	f105 0510 	add.w	r5, r5, #16
 8005f30:	d1ea      	bne.n	8005f08 <memmove+0x44>
 8005f32:	3301      	adds	r3, #1
 8005f34:	f002 050f 	and.w	r5, r2, #15
 8005f38:	011b      	lsls	r3, r3, #4
 8005f3a:	2d03      	cmp	r5, #3
 8005f3c:	4419      	add	r1, r3
 8005f3e:	4403      	add	r3, r0
 8005f40:	d921      	bls.n	8005f86 <memmove+0xc2>
 8005f42:	1f1f      	subs	r7, r3, #4
 8005f44:	460e      	mov	r6, r1
 8005f46:	462c      	mov	r4, r5
 8005f48:	3c04      	subs	r4, #4
 8005f4a:	f856 cb04 	ldr.w	ip, [r6], #4
 8005f4e:	f847 cf04 	str.w	ip, [r7, #4]!
 8005f52:	2c03      	cmp	r4, #3
 8005f54:	d8f8      	bhi.n	8005f48 <memmove+0x84>
 8005f56:	1f2c      	subs	r4, r5, #4
 8005f58:	f024 0403 	bic.w	r4, r4, #3
 8005f5c:	3404      	adds	r4, #4
 8005f5e:	4423      	add	r3, r4
 8005f60:	4421      	add	r1, r4
 8005f62:	f002 0203 	and.w	r2, r2, #3
 8005f66:	2a00      	cmp	r2, #0
 8005f68:	d0bb      	beq.n	8005ee2 <memmove+0x1e>
 8005f6a:	3b01      	subs	r3, #1
 8005f6c:	440a      	add	r2, r1
 8005f6e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005f72:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005f76:	4291      	cmp	r1, r2
 8005f78:	d1f9      	bne.n	8005f6e <memmove+0xaa>
 8005f7a:	bcf0      	pop	{r4, r5, r6, r7}
 8005f7c:	4770      	bx	lr
 8005f7e:	4603      	mov	r3, r0
 8005f80:	e7f1      	b.n	8005f66 <memmove+0xa2>
 8005f82:	4603      	mov	r3, r0
 8005f84:	e7f1      	b.n	8005f6a <memmove+0xa6>
 8005f86:	462a      	mov	r2, r5
 8005f88:	e7ed      	b.n	8005f66 <memmove+0xa2>
 8005f8a:	bf00      	nop

08005f8c <__malloc_lock>:
 8005f8c:	4801      	ldr	r0, [pc, #4]	; (8005f94 <__malloc_lock+0x8>)
 8005f8e:	f7ff bc79 	b.w	8005884 <__retarget_lock_acquire_recursive>
 8005f92:	bf00      	nop
 8005f94:	20000af8 	.word	0x20000af8

08005f98 <__malloc_unlock>:
 8005f98:	4801      	ldr	r0, [pc, #4]	; (8005fa0 <__malloc_unlock+0x8>)
 8005f9a:	f7ff bc75 	b.w	8005888 <__retarget_lock_release_recursive>
 8005f9e:	bf00      	nop
 8005fa0:	20000af8 	.word	0x20000af8

08005fa4 <_Balloc>:
 8005fa4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005fa6:	b570      	push	{r4, r5, r6, lr}
 8005fa8:	4605      	mov	r5, r0
 8005faa:	460c      	mov	r4, r1
 8005fac:	b14b      	cbz	r3, 8005fc2 <_Balloc+0x1e>
 8005fae:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005fb2:	b180      	cbz	r0, 8005fd6 <_Balloc+0x32>
 8005fb4:	6802      	ldr	r2, [r0, #0]
 8005fb6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005fba:	2300      	movs	r3, #0
 8005fbc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005fc0:	bd70      	pop	{r4, r5, r6, pc}
 8005fc2:	2221      	movs	r2, #33	; 0x21
 8005fc4:	2104      	movs	r1, #4
 8005fc6:	f000 fe1d 	bl	8006c04 <_calloc_r>
 8005fca:	4603      	mov	r3, r0
 8005fcc:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005fce:	2800      	cmp	r0, #0
 8005fd0:	d1ed      	bne.n	8005fae <_Balloc+0xa>
 8005fd2:	2000      	movs	r0, #0
 8005fd4:	bd70      	pop	{r4, r5, r6, pc}
 8005fd6:	2101      	movs	r1, #1
 8005fd8:	fa01 f604 	lsl.w	r6, r1, r4
 8005fdc:	1d72      	adds	r2, r6, #5
 8005fde:	4628      	mov	r0, r5
 8005fe0:	0092      	lsls	r2, r2, #2
 8005fe2:	f000 fe0f 	bl	8006c04 <_calloc_r>
 8005fe6:	2800      	cmp	r0, #0
 8005fe8:	d0f3      	beq.n	8005fd2 <_Balloc+0x2e>
 8005fea:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005fee:	e7e4      	b.n	8005fba <_Balloc+0x16>

08005ff0 <_Bfree>:
 8005ff0:	b131      	cbz	r1, 8006000 <_Bfree+0x10>
 8005ff2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005ff4:	684a      	ldr	r2, [r1, #4]
 8005ff6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005ffa:	6008      	str	r0, [r1, #0]
 8005ffc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006000:	4770      	bx	lr
 8006002:	bf00      	nop

08006004 <__multadd>:
 8006004:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006006:	690c      	ldr	r4, [r1, #16]
 8006008:	b083      	sub	sp, #12
 800600a:	460d      	mov	r5, r1
 800600c:	4606      	mov	r6, r0
 800600e:	f101 0c14 	add.w	ip, r1, #20
 8006012:	2700      	movs	r7, #0
 8006014:	f8dc 0000 	ldr.w	r0, [ip]
 8006018:	b281      	uxth	r1, r0
 800601a:	fb02 3301 	mla	r3, r2, r1, r3
 800601e:	0c01      	lsrs	r1, r0, #16
 8006020:	0c18      	lsrs	r0, r3, #16
 8006022:	fb02 0101 	mla	r1, r2, r1, r0
 8006026:	b29b      	uxth	r3, r3
 8006028:	3701      	adds	r7, #1
 800602a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800602e:	42bc      	cmp	r4, r7
 8006030:	f84c 3b04 	str.w	r3, [ip], #4
 8006034:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006038:	dcec      	bgt.n	8006014 <__multadd+0x10>
 800603a:	b13b      	cbz	r3, 800604c <__multadd+0x48>
 800603c:	68aa      	ldr	r2, [r5, #8]
 800603e:	42a2      	cmp	r2, r4
 8006040:	dd07      	ble.n	8006052 <__multadd+0x4e>
 8006042:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006046:	3401      	adds	r4, #1
 8006048:	6153      	str	r3, [r2, #20]
 800604a:	612c      	str	r4, [r5, #16]
 800604c:	4628      	mov	r0, r5
 800604e:	b003      	add	sp, #12
 8006050:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006052:	6869      	ldr	r1, [r5, #4]
 8006054:	9301      	str	r3, [sp, #4]
 8006056:	3101      	adds	r1, #1
 8006058:	4630      	mov	r0, r6
 800605a:	f7ff ffa3 	bl	8005fa4 <_Balloc>
 800605e:	692a      	ldr	r2, [r5, #16]
 8006060:	3202      	adds	r2, #2
 8006062:	f105 010c 	add.w	r1, r5, #12
 8006066:	4607      	mov	r7, r0
 8006068:	0092      	lsls	r2, r2, #2
 800606a:	300c      	adds	r0, #12
 800606c:	f7fa fa48 	bl	8000500 <memcpy>
 8006070:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006072:	6869      	ldr	r1, [r5, #4]
 8006074:	9b01      	ldr	r3, [sp, #4]
 8006076:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800607a:	6028      	str	r0, [r5, #0]
 800607c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006080:	463d      	mov	r5, r7
 8006082:	e7de      	b.n	8006042 <__multadd+0x3e>

08006084 <__hi0bits>:
 8006084:	0c02      	lsrs	r2, r0, #16
 8006086:	0412      	lsls	r2, r2, #16
 8006088:	4603      	mov	r3, r0
 800608a:	b9c2      	cbnz	r2, 80060be <__hi0bits+0x3a>
 800608c:	0403      	lsls	r3, r0, #16
 800608e:	2010      	movs	r0, #16
 8006090:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006094:	bf04      	itt	eq
 8006096:	021b      	lsleq	r3, r3, #8
 8006098:	3008      	addeq	r0, #8
 800609a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800609e:	bf04      	itt	eq
 80060a0:	011b      	lsleq	r3, r3, #4
 80060a2:	3004      	addeq	r0, #4
 80060a4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80060a8:	bf04      	itt	eq
 80060aa:	009b      	lsleq	r3, r3, #2
 80060ac:	3002      	addeq	r0, #2
 80060ae:	2b00      	cmp	r3, #0
 80060b0:	db04      	blt.n	80060bc <__hi0bits+0x38>
 80060b2:	005b      	lsls	r3, r3, #1
 80060b4:	d501      	bpl.n	80060ba <__hi0bits+0x36>
 80060b6:	3001      	adds	r0, #1
 80060b8:	4770      	bx	lr
 80060ba:	2020      	movs	r0, #32
 80060bc:	4770      	bx	lr
 80060be:	2000      	movs	r0, #0
 80060c0:	e7e6      	b.n	8006090 <__hi0bits+0xc>
 80060c2:	bf00      	nop

080060c4 <__lo0bits>:
 80060c4:	6803      	ldr	r3, [r0, #0]
 80060c6:	f013 0207 	ands.w	r2, r3, #7
 80060ca:	4601      	mov	r1, r0
 80060cc:	d007      	beq.n	80060de <__lo0bits+0x1a>
 80060ce:	07da      	lsls	r2, r3, #31
 80060d0:	d41f      	bmi.n	8006112 <__lo0bits+0x4e>
 80060d2:	0798      	lsls	r0, r3, #30
 80060d4:	d51f      	bpl.n	8006116 <__lo0bits+0x52>
 80060d6:	085b      	lsrs	r3, r3, #1
 80060d8:	600b      	str	r3, [r1, #0]
 80060da:	2001      	movs	r0, #1
 80060dc:	4770      	bx	lr
 80060de:	b298      	uxth	r0, r3
 80060e0:	b1a0      	cbz	r0, 800610c <__lo0bits+0x48>
 80060e2:	4610      	mov	r0, r2
 80060e4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80060e8:	bf04      	itt	eq
 80060ea:	0a1b      	lsreq	r3, r3, #8
 80060ec:	3008      	addeq	r0, #8
 80060ee:	071a      	lsls	r2, r3, #28
 80060f0:	bf04      	itt	eq
 80060f2:	091b      	lsreq	r3, r3, #4
 80060f4:	3004      	addeq	r0, #4
 80060f6:	079a      	lsls	r2, r3, #30
 80060f8:	bf04      	itt	eq
 80060fa:	089b      	lsreq	r3, r3, #2
 80060fc:	3002      	addeq	r0, #2
 80060fe:	07da      	lsls	r2, r3, #31
 8006100:	d402      	bmi.n	8006108 <__lo0bits+0x44>
 8006102:	085b      	lsrs	r3, r3, #1
 8006104:	d00b      	beq.n	800611e <__lo0bits+0x5a>
 8006106:	3001      	adds	r0, #1
 8006108:	600b      	str	r3, [r1, #0]
 800610a:	4770      	bx	lr
 800610c:	0c1b      	lsrs	r3, r3, #16
 800610e:	2010      	movs	r0, #16
 8006110:	e7e8      	b.n	80060e4 <__lo0bits+0x20>
 8006112:	2000      	movs	r0, #0
 8006114:	4770      	bx	lr
 8006116:	089b      	lsrs	r3, r3, #2
 8006118:	600b      	str	r3, [r1, #0]
 800611a:	2002      	movs	r0, #2
 800611c:	4770      	bx	lr
 800611e:	2020      	movs	r0, #32
 8006120:	4770      	bx	lr
 8006122:	bf00      	nop

08006124 <__i2b>:
 8006124:	b510      	push	{r4, lr}
 8006126:	460c      	mov	r4, r1
 8006128:	2101      	movs	r1, #1
 800612a:	f7ff ff3b 	bl	8005fa4 <_Balloc>
 800612e:	2201      	movs	r2, #1
 8006130:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006134:	bd10      	pop	{r4, pc}
 8006136:	bf00      	nop

08006138 <__multiply>:
 8006138:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800613c:	690e      	ldr	r6, [r1, #16]
 800613e:	6914      	ldr	r4, [r2, #16]
 8006140:	42a6      	cmp	r6, r4
 8006142:	b083      	sub	sp, #12
 8006144:	460f      	mov	r7, r1
 8006146:	4615      	mov	r5, r2
 8006148:	da04      	bge.n	8006154 <__multiply+0x1c>
 800614a:	4632      	mov	r2, r6
 800614c:	462f      	mov	r7, r5
 800614e:	4626      	mov	r6, r4
 8006150:	460d      	mov	r5, r1
 8006152:	4614      	mov	r4, r2
 8006154:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006158:	eb06 0804 	add.w	r8, r6, r4
 800615c:	4543      	cmp	r3, r8
 800615e:	bfb8      	it	lt
 8006160:	3101      	addlt	r1, #1
 8006162:	f7ff ff1f 	bl	8005fa4 <_Balloc>
 8006166:	f100 0914 	add.w	r9, r0, #20
 800616a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800616e:	45f1      	cmp	r9, lr
 8006170:	9000      	str	r0, [sp, #0]
 8006172:	d205      	bcs.n	8006180 <__multiply+0x48>
 8006174:	464b      	mov	r3, r9
 8006176:	2200      	movs	r2, #0
 8006178:	f843 2b04 	str.w	r2, [r3], #4
 800617c:	459e      	cmp	lr, r3
 800617e:	d8fb      	bhi.n	8006178 <__multiply+0x40>
 8006180:	f105 0a14 	add.w	sl, r5, #20
 8006184:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006188:	f107 0314 	add.w	r3, r7, #20
 800618c:	45a2      	cmp	sl, r4
 800618e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006192:	d261      	bcs.n	8006258 <__multiply+0x120>
 8006194:	1b64      	subs	r4, r4, r5
 8006196:	3c15      	subs	r4, #21
 8006198:	f024 0403 	bic.w	r4, r4, #3
 800619c:	f8cd e004 	str.w	lr, [sp, #4]
 80061a0:	44a2      	add	sl, r4
 80061a2:	f105 0210 	add.w	r2, r5, #16
 80061a6:	469e      	mov	lr, r3
 80061a8:	e005      	b.n	80061b6 <__multiply+0x7e>
 80061aa:	0c2d      	lsrs	r5, r5, #16
 80061ac:	d12b      	bne.n	8006206 <__multiply+0xce>
 80061ae:	4592      	cmp	sl, r2
 80061b0:	f109 0904 	add.w	r9, r9, #4
 80061b4:	d04e      	beq.n	8006254 <__multiply+0x11c>
 80061b6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80061ba:	fa1f fb85 	uxth.w	fp, r5
 80061be:	f1bb 0f00 	cmp.w	fp, #0
 80061c2:	d0f2      	beq.n	80061aa <__multiply+0x72>
 80061c4:	4677      	mov	r7, lr
 80061c6:	464e      	mov	r6, r9
 80061c8:	2000      	movs	r0, #0
 80061ca:	e000      	b.n	80061ce <__multiply+0x96>
 80061cc:	4626      	mov	r6, r4
 80061ce:	f857 1b04 	ldr.w	r1, [r7], #4
 80061d2:	6834      	ldr	r4, [r6, #0]
 80061d4:	b28b      	uxth	r3, r1
 80061d6:	b2a5      	uxth	r5, r4
 80061d8:	0c09      	lsrs	r1, r1, #16
 80061da:	0c24      	lsrs	r4, r4, #16
 80061dc:	fb0b 5303 	mla	r3, fp, r3, r5
 80061e0:	4403      	add	r3, r0
 80061e2:	fb0b 4001 	mla	r0, fp, r1, r4
 80061e6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80061ea:	4634      	mov	r4, r6
 80061ec:	b29b      	uxth	r3, r3
 80061ee:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80061f2:	45bc      	cmp	ip, r7
 80061f4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80061f8:	f844 3b04 	str.w	r3, [r4], #4
 80061fc:	d8e6      	bhi.n	80061cc <__multiply+0x94>
 80061fe:	6070      	str	r0, [r6, #4]
 8006200:	6815      	ldr	r5, [r2, #0]
 8006202:	0c2d      	lsrs	r5, r5, #16
 8006204:	d0d3      	beq.n	80061ae <__multiply+0x76>
 8006206:	f8d9 3000 	ldr.w	r3, [r9]
 800620a:	4676      	mov	r6, lr
 800620c:	4618      	mov	r0, r3
 800620e:	46cb      	mov	fp, r9
 8006210:	2100      	movs	r1, #0
 8006212:	e000      	b.n	8006216 <__multiply+0xde>
 8006214:	46a3      	mov	fp, r4
 8006216:	8834      	ldrh	r4, [r6, #0]
 8006218:	0c00      	lsrs	r0, r0, #16
 800621a:	fb05 0004 	mla	r0, r5, r4, r0
 800621e:	4401      	add	r1, r0
 8006220:	b29b      	uxth	r3, r3
 8006222:	465c      	mov	r4, fp
 8006224:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006228:	f844 3b04 	str.w	r3, [r4], #4
 800622c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006230:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006234:	0c1b      	lsrs	r3, r3, #16
 8006236:	b287      	uxth	r7, r0
 8006238:	fb05 7303 	mla	r3, r5, r3, r7
 800623c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006240:	45b4      	cmp	ip, r6
 8006242:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006246:	d8e5      	bhi.n	8006214 <__multiply+0xdc>
 8006248:	4592      	cmp	sl, r2
 800624a:	f8cb 3004 	str.w	r3, [fp, #4]
 800624e:	f109 0904 	add.w	r9, r9, #4
 8006252:	d1b0      	bne.n	80061b6 <__multiply+0x7e>
 8006254:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006258:	f1b8 0f00 	cmp.w	r8, #0
 800625c:	dd0b      	ble.n	8006276 <__multiply+0x13e>
 800625e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006262:	f1ae 0e04 	sub.w	lr, lr, #4
 8006266:	b11b      	cbz	r3, 8006270 <__multiply+0x138>
 8006268:	e005      	b.n	8006276 <__multiply+0x13e>
 800626a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800626e:	b913      	cbnz	r3, 8006276 <__multiply+0x13e>
 8006270:	f1b8 0801 	subs.w	r8, r8, #1
 8006274:	d1f9      	bne.n	800626a <__multiply+0x132>
 8006276:	9800      	ldr	r0, [sp, #0]
 8006278:	f8c0 8010 	str.w	r8, [r0, #16]
 800627c:	b003      	add	sp, #12
 800627e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006282:	bf00      	nop

08006284 <__pow5mult>:
 8006284:	f012 0303 	ands.w	r3, r2, #3
 8006288:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800628c:	4614      	mov	r4, r2
 800628e:	4607      	mov	r7, r0
 8006290:	d12e      	bne.n	80062f0 <__pow5mult+0x6c>
 8006292:	460d      	mov	r5, r1
 8006294:	10a4      	asrs	r4, r4, #2
 8006296:	d01c      	beq.n	80062d2 <__pow5mult+0x4e>
 8006298:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800629a:	b396      	cbz	r6, 8006302 <__pow5mult+0x7e>
 800629c:	07e3      	lsls	r3, r4, #31
 800629e:	f04f 0800 	mov.w	r8, #0
 80062a2:	d406      	bmi.n	80062b2 <__pow5mult+0x2e>
 80062a4:	1064      	asrs	r4, r4, #1
 80062a6:	d014      	beq.n	80062d2 <__pow5mult+0x4e>
 80062a8:	6830      	ldr	r0, [r6, #0]
 80062aa:	b1a8      	cbz	r0, 80062d8 <__pow5mult+0x54>
 80062ac:	4606      	mov	r6, r0
 80062ae:	07e3      	lsls	r3, r4, #31
 80062b0:	d5f8      	bpl.n	80062a4 <__pow5mult+0x20>
 80062b2:	4632      	mov	r2, r6
 80062b4:	4629      	mov	r1, r5
 80062b6:	4638      	mov	r0, r7
 80062b8:	f7ff ff3e 	bl	8006138 <__multiply>
 80062bc:	b1b5      	cbz	r5, 80062ec <__pow5mult+0x68>
 80062be:	686a      	ldr	r2, [r5, #4]
 80062c0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80062c2:	1064      	asrs	r4, r4, #1
 80062c4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80062c8:	6029      	str	r1, [r5, #0]
 80062ca:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80062ce:	4605      	mov	r5, r0
 80062d0:	d1ea      	bne.n	80062a8 <__pow5mult+0x24>
 80062d2:	4628      	mov	r0, r5
 80062d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80062d8:	4632      	mov	r2, r6
 80062da:	4631      	mov	r1, r6
 80062dc:	4638      	mov	r0, r7
 80062de:	f7ff ff2b 	bl	8006138 <__multiply>
 80062e2:	6030      	str	r0, [r6, #0]
 80062e4:	f8c0 8000 	str.w	r8, [r0]
 80062e8:	4606      	mov	r6, r0
 80062ea:	e7e0      	b.n	80062ae <__pow5mult+0x2a>
 80062ec:	4605      	mov	r5, r0
 80062ee:	e7d9      	b.n	80062a4 <__pow5mult+0x20>
 80062f0:	3b01      	subs	r3, #1
 80062f2:	4a0b      	ldr	r2, [pc, #44]	; (8006320 <__pow5mult+0x9c>)
 80062f4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80062f8:	2300      	movs	r3, #0
 80062fa:	f7ff fe83 	bl	8006004 <__multadd>
 80062fe:	4605      	mov	r5, r0
 8006300:	e7c8      	b.n	8006294 <__pow5mult+0x10>
 8006302:	2101      	movs	r1, #1
 8006304:	4638      	mov	r0, r7
 8006306:	f7ff fe4d 	bl	8005fa4 <_Balloc>
 800630a:	f240 2371 	movw	r3, #625	; 0x271
 800630e:	6143      	str	r3, [r0, #20]
 8006310:	2201      	movs	r2, #1
 8006312:	2300      	movs	r3, #0
 8006314:	6102      	str	r2, [r0, #16]
 8006316:	4606      	mov	r6, r0
 8006318:	64b8      	str	r0, [r7, #72]	; 0x48
 800631a:	6003      	str	r3, [r0, #0]
 800631c:	e7be      	b.n	800629c <__pow5mult+0x18>
 800631e:	bf00      	nop
 8006320:	08007308 	.word	0x08007308

08006324 <__lshift>:
 8006324:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006328:	4691      	mov	r9, r2
 800632a:	690a      	ldr	r2, [r1, #16]
 800632c:	460e      	mov	r6, r1
 800632e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006332:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006336:	eb04 0802 	add.w	r8, r4, r2
 800633a:	f108 0501 	add.w	r5, r8, #1
 800633e:	429d      	cmp	r5, r3
 8006340:	4607      	mov	r7, r0
 8006342:	dd04      	ble.n	800634e <__lshift+0x2a>
 8006344:	005b      	lsls	r3, r3, #1
 8006346:	429d      	cmp	r5, r3
 8006348:	f101 0101 	add.w	r1, r1, #1
 800634c:	dcfa      	bgt.n	8006344 <__lshift+0x20>
 800634e:	4638      	mov	r0, r7
 8006350:	f7ff fe28 	bl	8005fa4 <_Balloc>
 8006354:	2c00      	cmp	r4, #0
 8006356:	f100 0314 	add.w	r3, r0, #20
 800635a:	dd37      	ble.n	80063cc <__lshift+0xa8>
 800635c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006360:	2200      	movs	r2, #0
 8006362:	f843 2b04 	str.w	r2, [r3], #4
 8006366:	428b      	cmp	r3, r1
 8006368:	d1fb      	bne.n	8006362 <__lshift+0x3e>
 800636a:	6934      	ldr	r4, [r6, #16]
 800636c:	f106 0314 	add.w	r3, r6, #20
 8006370:	f019 091f 	ands.w	r9, r9, #31
 8006374:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006378:	d020      	beq.n	80063bc <__lshift+0x98>
 800637a:	f1c9 0e20 	rsb	lr, r9, #32
 800637e:	2200      	movs	r2, #0
 8006380:	e000      	b.n	8006384 <__lshift+0x60>
 8006382:	4651      	mov	r1, sl
 8006384:	681c      	ldr	r4, [r3, #0]
 8006386:	468a      	mov	sl, r1
 8006388:	fa04 f409 	lsl.w	r4, r4, r9
 800638c:	4314      	orrs	r4, r2
 800638e:	f84a 4b04 	str.w	r4, [sl], #4
 8006392:	f853 2b04 	ldr.w	r2, [r3], #4
 8006396:	4563      	cmp	r3, ip
 8006398:	fa22 f20e 	lsr.w	r2, r2, lr
 800639c:	d3f1      	bcc.n	8006382 <__lshift+0x5e>
 800639e:	604a      	str	r2, [r1, #4]
 80063a0:	b10a      	cbz	r2, 80063a6 <__lshift+0x82>
 80063a2:	f108 0502 	add.w	r5, r8, #2
 80063a6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80063a8:	6872      	ldr	r2, [r6, #4]
 80063aa:	3d01      	subs	r5, #1
 80063ac:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80063b0:	6105      	str	r5, [r0, #16]
 80063b2:	6031      	str	r1, [r6, #0]
 80063b4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80063b8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80063bc:	3904      	subs	r1, #4
 80063be:	f853 2b04 	ldr.w	r2, [r3], #4
 80063c2:	f841 2f04 	str.w	r2, [r1, #4]!
 80063c6:	459c      	cmp	ip, r3
 80063c8:	d8f9      	bhi.n	80063be <__lshift+0x9a>
 80063ca:	e7ec      	b.n	80063a6 <__lshift+0x82>
 80063cc:	4619      	mov	r1, r3
 80063ce:	e7cc      	b.n	800636a <__lshift+0x46>

080063d0 <__mcmp>:
 80063d0:	b430      	push	{r4, r5}
 80063d2:	690b      	ldr	r3, [r1, #16]
 80063d4:	4605      	mov	r5, r0
 80063d6:	6900      	ldr	r0, [r0, #16]
 80063d8:	1ac0      	subs	r0, r0, r3
 80063da:	d10f      	bne.n	80063fc <__mcmp+0x2c>
 80063dc:	009b      	lsls	r3, r3, #2
 80063de:	3514      	adds	r5, #20
 80063e0:	3114      	adds	r1, #20
 80063e2:	4419      	add	r1, r3
 80063e4:	442b      	add	r3, r5
 80063e6:	e001      	b.n	80063ec <__mcmp+0x1c>
 80063e8:	429d      	cmp	r5, r3
 80063ea:	d207      	bcs.n	80063fc <__mcmp+0x2c>
 80063ec:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80063f0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80063f4:	4294      	cmp	r4, r2
 80063f6:	d0f7      	beq.n	80063e8 <__mcmp+0x18>
 80063f8:	d302      	bcc.n	8006400 <__mcmp+0x30>
 80063fa:	2001      	movs	r0, #1
 80063fc:	bc30      	pop	{r4, r5}
 80063fe:	4770      	bx	lr
 8006400:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006404:	e7fa      	b.n	80063fc <__mcmp+0x2c>
 8006406:	bf00      	nop

08006408 <__mdiff>:
 8006408:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800640c:	6913      	ldr	r3, [r2, #16]
 800640e:	690d      	ldr	r5, [r1, #16]
 8006410:	1aed      	subs	r5, r5, r3
 8006412:	2d00      	cmp	r5, #0
 8006414:	460e      	mov	r6, r1
 8006416:	4690      	mov	r8, r2
 8006418:	f101 0414 	add.w	r4, r1, #20
 800641c:	f102 0714 	add.w	r7, r2, #20
 8006420:	d114      	bne.n	800644c <__mdiff+0x44>
 8006422:	009b      	lsls	r3, r3, #2
 8006424:	18e2      	adds	r2, r4, r3
 8006426:	443b      	add	r3, r7
 8006428:	e001      	b.n	800642e <__mdiff+0x26>
 800642a:	42a2      	cmp	r2, r4
 800642c:	d959      	bls.n	80064e2 <__mdiff+0xda>
 800642e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006432:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006436:	458c      	cmp	ip, r1
 8006438:	d0f7      	beq.n	800642a <__mdiff+0x22>
 800643a:	d209      	bcs.n	8006450 <__mdiff+0x48>
 800643c:	4622      	mov	r2, r4
 800643e:	4633      	mov	r3, r6
 8006440:	463c      	mov	r4, r7
 8006442:	4646      	mov	r6, r8
 8006444:	4617      	mov	r7, r2
 8006446:	4698      	mov	r8, r3
 8006448:	2501      	movs	r5, #1
 800644a:	e001      	b.n	8006450 <__mdiff+0x48>
 800644c:	dbf6      	blt.n	800643c <__mdiff+0x34>
 800644e:	2500      	movs	r5, #0
 8006450:	6871      	ldr	r1, [r6, #4]
 8006452:	f7ff fda7 	bl	8005fa4 <_Balloc>
 8006456:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800645a:	6936      	ldr	r6, [r6, #16]
 800645c:	60c5      	str	r5, [r0, #12]
 800645e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006462:	46bc      	mov	ip, r7
 8006464:	f100 0514 	add.w	r5, r0, #20
 8006468:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800646c:	2300      	movs	r3, #0
 800646e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006472:	f854 8b04 	ldr.w	r8, [r4], #4
 8006476:	b28a      	uxth	r2, r1
 8006478:	fa13 f388 	uxtah	r3, r3, r8
 800647c:	0c09      	lsrs	r1, r1, #16
 800647e:	1a9a      	subs	r2, r3, r2
 8006480:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006484:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006488:	b292      	uxth	r2, r2
 800648a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800648e:	45e6      	cmp	lr, ip
 8006490:	f845 2b04 	str.w	r2, [r5], #4
 8006494:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006498:	d8e9      	bhi.n	800646e <__mdiff+0x66>
 800649a:	42a7      	cmp	r7, r4
 800649c:	d917      	bls.n	80064ce <__mdiff+0xc6>
 800649e:	46ae      	mov	lr, r5
 80064a0:	46a4      	mov	ip, r4
 80064a2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80064a6:	fa13 f382 	uxtah	r3, r3, r2
 80064aa:	1419      	asrs	r1, r3, #16
 80064ac:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80064b0:	b29b      	uxth	r3, r3
 80064b2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80064b6:	4567      	cmp	r7, ip
 80064b8:	f84e 2b04 	str.w	r2, [lr], #4
 80064bc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80064c0:	d8ef      	bhi.n	80064a2 <__mdiff+0x9a>
 80064c2:	43e4      	mvns	r4, r4
 80064c4:	4427      	add	r7, r4
 80064c6:	f027 0703 	bic.w	r7, r7, #3
 80064ca:	3704      	adds	r7, #4
 80064cc:	443d      	add	r5, r7
 80064ce:	3d04      	subs	r5, #4
 80064d0:	b922      	cbnz	r2, 80064dc <__mdiff+0xd4>
 80064d2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80064d6:	3e01      	subs	r6, #1
 80064d8:	2b00      	cmp	r3, #0
 80064da:	d0fa      	beq.n	80064d2 <__mdiff+0xca>
 80064dc:	6106      	str	r6, [r0, #16]
 80064de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80064e2:	2100      	movs	r1, #0
 80064e4:	f7ff fd5e 	bl	8005fa4 <_Balloc>
 80064e8:	2201      	movs	r2, #1
 80064ea:	2300      	movs	r3, #0
 80064ec:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80064f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080064f4 <__d2b>:
 80064f4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80064f8:	460f      	mov	r7, r1
 80064fa:	b083      	sub	sp, #12
 80064fc:	2101      	movs	r1, #1
 80064fe:	ec55 4b10 	vmov	r4, r5, d0
 8006502:	4616      	mov	r6, r2
 8006504:	f7ff fd4e 	bl	8005fa4 <_Balloc>
 8006508:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800650c:	4681      	mov	r9, r0
 800650e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006512:	f1b8 0f00 	cmp.w	r8, #0
 8006516:	d001      	beq.n	800651c <__d2b+0x28>
 8006518:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800651c:	2c00      	cmp	r4, #0
 800651e:	9301      	str	r3, [sp, #4]
 8006520:	d024      	beq.n	800656c <__d2b+0x78>
 8006522:	a802      	add	r0, sp, #8
 8006524:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006528:	f7ff fdcc 	bl	80060c4 <__lo0bits>
 800652c:	2800      	cmp	r0, #0
 800652e:	d136      	bne.n	800659e <__d2b+0xaa>
 8006530:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006534:	f8c9 2014 	str.w	r2, [r9, #20]
 8006538:	2b00      	cmp	r3, #0
 800653a:	bf0c      	ite	eq
 800653c:	2101      	moveq	r1, #1
 800653e:	2102      	movne	r1, #2
 8006540:	f8c9 3018 	str.w	r3, [r9, #24]
 8006544:	f8c9 1010 	str.w	r1, [r9, #16]
 8006548:	f1b8 0f00 	cmp.w	r8, #0
 800654c:	d11b      	bne.n	8006586 <__d2b+0x92>
 800654e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006552:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006556:	6038      	str	r0, [r7, #0]
 8006558:	6918      	ldr	r0, [r3, #16]
 800655a:	f7ff fd93 	bl	8006084 <__hi0bits>
 800655e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006562:	6030      	str	r0, [r6, #0]
 8006564:	4648      	mov	r0, r9
 8006566:	b003      	add	sp, #12
 8006568:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800656c:	a801      	add	r0, sp, #4
 800656e:	f7ff fda9 	bl	80060c4 <__lo0bits>
 8006572:	9b01      	ldr	r3, [sp, #4]
 8006574:	f8c9 3014 	str.w	r3, [r9, #20]
 8006578:	2101      	movs	r1, #1
 800657a:	3020      	adds	r0, #32
 800657c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006580:	f1b8 0f00 	cmp.w	r8, #0
 8006584:	d0e3      	beq.n	800654e <__d2b+0x5a>
 8006586:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800658a:	eb08 0300 	add.w	r3, r8, r0
 800658e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006592:	603b      	str	r3, [r7, #0]
 8006594:	6030      	str	r0, [r6, #0]
 8006596:	4648      	mov	r0, r9
 8006598:	b003      	add	sp, #12
 800659a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800659e:	e9dd 1300 	ldrd	r1, r3, [sp]
 80065a2:	f1c0 0220 	rsb	r2, r0, #32
 80065a6:	fa03 f202 	lsl.w	r2, r3, r2
 80065aa:	430a      	orrs	r2, r1
 80065ac:	40c3      	lsrs	r3, r0
 80065ae:	9301      	str	r3, [sp, #4]
 80065b0:	f8c9 2014 	str.w	r2, [r9, #20]
 80065b4:	e7c0      	b.n	8006538 <__d2b+0x44>
 80065b6:	bf00      	nop

080065b8 <_realloc_r>:
 80065b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80065bc:	4692      	mov	sl, r2
 80065be:	b083      	sub	sp, #12
 80065c0:	2900      	cmp	r1, #0
 80065c2:	f000 80a1 	beq.w	8006708 <_realloc_r+0x150>
 80065c6:	460d      	mov	r5, r1
 80065c8:	4680      	mov	r8, r0
 80065ca:	f10a 040b 	add.w	r4, sl, #11
 80065ce:	f7ff fcdd 	bl	8005f8c <__malloc_lock>
 80065d2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80065d6:	2c16      	cmp	r4, #22
 80065d8:	f022 0603 	bic.w	r6, r2, #3
 80065dc:	f1a5 0708 	sub.w	r7, r5, #8
 80065e0:	d83e      	bhi.n	8006660 <_realloc_r+0xa8>
 80065e2:	2410      	movs	r4, #16
 80065e4:	4621      	mov	r1, r4
 80065e6:	45a2      	cmp	sl, r4
 80065e8:	d83f      	bhi.n	800666a <_realloc_r+0xb2>
 80065ea:	428e      	cmp	r6, r1
 80065ec:	eb07 0906 	add.w	r9, r7, r6
 80065f0:	da74      	bge.n	80066dc <_realloc_r+0x124>
 80065f2:	4bc7      	ldr	r3, [pc, #796]	; (8006910 <_realloc_r+0x358>)
 80065f4:	6898      	ldr	r0, [r3, #8]
 80065f6:	4548      	cmp	r0, r9
 80065f8:	f000 80aa 	beq.w	8006750 <_realloc_r+0x198>
 80065fc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006600:	f020 0301 	bic.w	r3, r0, #1
 8006604:	444b      	add	r3, r9
 8006606:	685b      	ldr	r3, [r3, #4]
 8006608:	07db      	lsls	r3, r3, #31
 800660a:	f140 8083 	bpl.w	8006714 <_realloc_r+0x15c>
 800660e:	07d2      	lsls	r2, r2, #31
 8006610:	d534      	bpl.n	800667c <_realloc_r+0xc4>
 8006612:	4651      	mov	r1, sl
 8006614:	4640      	mov	r0, r8
 8006616:	f7ff f9b1 	bl	800597c <_malloc_r>
 800661a:	4682      	mov	sl, r0
 800661c:	b1e0      	cbz	r0, 8006658 <_realloc_r+0xa0>
 800661e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006622:	f023 0301 	bic.w	r3, r3, #1
 8006626:	443b      	add	r3, r7
 8006628:	f1a0 0208 	sub.w	r2, r0, #8
 800662c:	4293      	cmp	r3, r2
 800662e:	f000 80f9 	beq.w	8006824 <_realloc_r+0x26c>
 8006632:	1f32      	subs	r2, r6, #4
 8006634:	2a24      	cmp	r2, #36	; 0x24
 8006636:	f200 8107 	bhi.w	8006848 <_realloc_r+0x290>
 800663a:	2a13      	cmp	r2, #19
 800663c:	6829      	ldr	r1, [r5, #0]
 800663e:	f200 80e6 	bhi.w	800680e <_realloc_r+0x256>
 8006642:	4603      	mov	r3, r0
 8006644:	462a      	mov	r2, r5
 8006646:	6019      	str	r1, [r3, #0]
 8006648:	6851      	ldr	r1, [r2, #4]
 800664a:	6059      	str	r1, [r3, #4]
 800664c:	6892      	ldr	r2, [r2, #8]
 800664e:	609a      	str	r2, [r3, #8]
 8006650:	4629      	mov	r1, r5
 8006652:	4640      	mov	r0, r8
 8006654:	f7fe fe68 	bl	8005328 <_free_r>
 8006658:	4640      	mov	r0, r8
 800665a:	f7ff fc9d 	bl	8005f98 <__malloc_unlock>
 800665e:	e04f      	b.n	8006700 <_realloc_r+0x148>
 8006660:	f024 0407 	bic.w	r4, r4, #7
 8006664:	2c00      	cmp	r4, #0
 8006666:	4621      	mov	r1, r4
 8006668:	dabd      	bge.n	80065e6 <_realloc_r+0x2e>
 800666a:	f04f 0a00 	mov.w	sl, #0
 800666e:	230c      	movs	r3, #12
 8006670:	4650      	mov	r0, sl
 8006672:	f8c8 3000 	str.w	r3, [r8]
 8006676:	b003      	add	sp, #12
 8006678:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800667c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006680:	eba7 0b03 	sub.w	fp, r7, r3
 8006684:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006688:	f022 0203 	bic.w	r2, r2, #3
 800668c:	18b3      	adds	r3, r6, r2
 800668e:	428b      	cmp	r3, r1
 8006690:	dbbf      	blt.n	8006612 <_realloc_r+0x5a>
 8006692:	46da      	mov	sl, fp
 8006694:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006698:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800669c:	1f32      	subs	r2, r6, #4
 800669e:	2a24      	cmp	r2, #36	; 0x24
 80066a0:	60c1      	str	r1, [r0, #12]
 80066a2:	eb0b 0903 	add.w	r9, fp, r3
 80066a6:	6088      	str	r0, [r1, #8]
 80066a8:	f200 80c6 	bhi.w	8006838 <_realloc_r+0x280>
 80066ac:	2a13      	cmp	r2, #19
 80066ae:	6829      	ldr	r1, [r5, #0]
 80066b0:	f240 80c0 	bls.w	8006834 <_realloc_r+0x27c>
 80066b4:	f8cb 1008 	str.w	r1, [fp, #8]
 80066b8:	6869      	ldr	r1, [r5, #4]
 80066ba:	f8cb 100c 	str.w	r1, [fp, #12]
 80066be:	2a1b      	cmp	r2, #27
 80066c0:	68a9      	ldr	r1, [r5, #8]
 80066c2:	f200 80d8 	bhi.w	8006876 <_realloc_r+0x2be>
 80066c6:	f10b 0210 	add.w	r2, fp, #16
 80066ca:	3508      	adds	r5, #8
 80066cc:	6011      	str	r1, [r2, #0]
 80066ce:	6869      	ldr	r1, [r5, #4]
 80066d0:	6051      	str	r1, [r2, #4]
 80066d2:	68a9      	ldr	r1, [r5, #8]
 80066d4:	6091      	str	r1, [r2, #8]
 80066d6:	461e      	mov	r6, r3
 80066d8:	465f      	mov	r7, fp
 80066da:	4655      	mov	r5, sl
 80066dc:	687b      	ldr	r3, [r7, #4]
 80066de:	1b32      	subs	r2, r6, r4
 80066e0:	2a0f      	cmp	r2, #15
 80066e2:	f003 0301 	and.w	r3, r3, #1
 80066e6:	d822      	bhi.n	800672e <_realloc_r+0x176>
 80066e8:	4333      	orrs	r3, r6
 80066ea:	607b      	str	r3, [r7, #4]
 80066ec:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066f0:	f043 0301 	orr.w	r3, r3, #1
 80066f4:	f8c9 3004 	str.w	r3, [r9, #4]
 80066f8:	4640      	mov	r0, r8
 80066fa:	f7ff fc4d 	bl	8005f98 <__malloc_unlock>
 80066fe:	46aa      	mov	sl, r5
 8006700:	4650      	mov	r0, sl
 8006702:	b003      	add	sp, #12
 8006704:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006708:	4611      	mov	r1, r2
 800670a:	b003      	add	sp, #12
 800670c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006710:	f7ff b934 	b.w	800597c <_malloc_r>
 8006714:	f020 0003 	bic.w	r0, r0, #3
 8006718:	1833      	adds	r3, r6, r0
 800671a:	428b      	cmp	r3, r1
 800671c:	db61      	blt.n	80067e2 <_realloc_r+0x22a>
 800671e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006722:	461e      	mov	r6, r3
 8006724:	60ca      	str	r2, [r1, #12]
 8006726:	eb07 0903 	add.w	r9, r7, r3
 800672a:	6091      	str	r1, [r2, #8]
 800672c:	e7d6      	b.n	80066dc <_realloc_r+0x124>
 800672e:	1939      	adds	r1, r7, r4
 8006730:	4323      	orrs	r3, r4
 8006732:	f042 0201 	orr.w	r2, r2, #1
 8006736:	607b      	str	r3, [r7, #4]
 8006738:	604a      	str	r2, [r1, #4]
 800673a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800673e:	f043 0301 	orr.w	r3, r3, #1
 8006742:	3108      	adds	r1, #8
 8006744:	f8c9 3004 	str.w	r3, [r9, #4]
 8006748:	4640      	mov	r0, r8
 800674a:	f7fe fded 	bl	8005328 <_free_r>
 800674e:	e7d3      	b.n	80066f8 <_realloc_r+0x140>
 8006750:	6840      	ldr	r0, [r0, #4]
 8006752:	f020 0903 	bic.w	r9, r0, #3
 8006756:	44b1      	add	r9, r6
 8006758:	f104 0010 	add.w	r0, r4, #16
 800675c:	4581      	cmp	r9, r0
 800675e:	da77      	bge.n	8006850 <_realloc_r+0x298>
 8006760:	07d2      	lsls	r2, r2, #31
 8006762:	f53f af56 	bmi.w	8006612 <_realloc_r+0x5a>
 8006766:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800676a:	eba7 0b02 	sub.w	fp, r7, r2
 800676e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006772:	f022 0203 	bic.w	r2, r2, #3
 8006776:	4491      	add	r9, r2
 8006778:	4548      	cmp	r0, r9
 800677a:	dc87      	bgt.n	800668c <_realloc_r+0xd4>
 800677c:	46da      	mov	sl, fp
 800677e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006782:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006786:	1f32      	subs	r2, r6, #4
 8006788:	2a24      	cmp	r2, #36	; 0x24
 800678a:	60c1      	str	r1, [r0, #12]
 800678c:	6088      	str	r0, [r1, #8]
 800678e:	f200 80a1 	bhi.w	80068d4 <_realloc_r+0x31c>
 8006792:	2a13      	cmp	r2, #19
 8006794:	6829      	ldr	r1, [r5, #0]
 8006796:	f240 809b 	bls.w	80068d0 <_realloc_r+0x318>
 800679a:	f8cb 1008 	str.w	r1, [fp, #8]
 800679e:	6869      	ldr	r1, [r5, #4]
 80067a0:	f8cb 100c 	str.w	r1, [fp, #12]
 80067a4:	2a1b      	cmp	r2, #27
 80067a6:	68a9      	ldr	r1, [r5, #8]
 80067a8:	f200 809b 	bhi.w	80068e2 <_realloc_r+0x32a>
 80067ac:	f10b 0210 	add.w	r2, fp, #16
 80067b0:	3508      	adds	r5, #8
 80067b2:	6011      	str	r1, [r2, #0]
 80067b4:	6869      	ldr	r1, [r5, #4]
 80067b6:	6051      	str	r1, [r2, #4]
 80067b8:	68a9      	ldr	r1, [r5, #8]
 80067ba:	6091      	str	r1, [r2, #8]
 80067bc:	eb0b 0104 	add.w	r1, fp, r4
 80067c0:	eba9 0204 	sub.w	r2, r9, r4
 80067c4:	f042 0201 	orr.w	r2, r2, #1
 80067c8:	6099      	str	r1, [r3, #8]
 80067ca:	604a      	str	r2, [r1, #4]
 80067cc:	f8db 3004 	ldr.w	r3, [fp, #4]
 80067d0:	f003 0301 	and.w	r3, r3, #1
 80067d4:	431c      	orrs	r4, r3
 80067d6:	4640      	mov	r0, r8
 80067d8:	f8cb 4004 	str.w	r4, [fp, #4]
 80067dc:	f7ff fbdc 	bl	8005f98 <__malloc_unlock>
 80067e0:	e78e      	b.n	8006700 <_realloc_r+0x148>
 80067e2:	07d3      	lsls	r3, r2, #31
 80067e4:	f53f af15 	bmi.w	8006612 <_realloc_r+0x5a>
 80067e8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80067ec:	eba7 0b03 	sub.w	fp, r7, r3
 80067f0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80067f4:	f022 0203 	bic.w	r2, r2, #3
 80067f8:	4410      	add	r0, r2
 80067fa:	1983      	adds	r3, r0, r6
 80067fc:	428b      	cmp	r3, r1
 80067fe:	f6ff af45 	blt.w	800668c <_realloc_r+0xd4>
 8006802:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006806:	46da      	mov	sl, fp
 8006808:	60ca      	str	r2, [r1, #12]
 800680a:	6091      	str	r1, [r2, #8]
 800680c:	e742      	b.n	8006694 <_realloc_r+0xdc>
 800680e:	6001      	str	r1, [r0, #0]
 8006810:	686b      	ldr	r3, [r5, #4]
 8006812:	6043      	str	r3, [r0, #4]
 8006814:	2a1b      	cmp	r2, #27
 8006816:	d83a      	bhi.n	800688e <_realloc_r+0x2d6>
 8006818:	f105 0208 	add.w	r2, r5, #8
 800681c:	f100 0308 	add.w	r3, r0, #8
 8006820:	68a9      	ldr	r1, [r5, #8]
 8006822:	e710      	b.n	8006646 <_realloc_r+0x8e>
 8006824:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006828:	f023 0303 	bic.w	r3, r3, #3
 800682c:	441e      	add	r6, r3
 800682e:	eb07 0906 	add.w	r9, r7, r6
 8006832:	e753      	b.n	80066dc <_realloc_r+0x124>
 8006834:	4652      	mov	r2, sl
 8006836:	e749      	b.n	80066cc <_realloc_r+0x114>
 8006838:	4629      	mov	r1, r5
 800683a:	4650      	mov	r0, sl
 800683c:	461e      	mov	r6, r3
 800683e:	465f      	mov	r7, fp
 8006840:	f7ff fb40 	bl	8005ec4 <memmove>
 8006844:	4655      	mov	r5, sl
 8006846:	e749      	b.n	80066dc <_realloc_r+0x124>
 8006848:	4629      	mov	r1, r5
 800684a:	f7ff fb3b 	bl	8005ec4 <memmove>
 800684e:	e6ff      	b.n	8006650 <_realloc_r+0x98>
 8006850:	4427      	add	r7, r4
 8006852:	eba9 0904 	sub.w	r9, r9, r4
 8006856:	f049 0201 	orr.w	r2, r9, #1
 800685a:	609f      	str	r7, [r3, #8]
 800685c:	607a      	str	r2, [r7, #4]
 800685e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006862:	f003 0301 	and.w	r3, r3, #1
 8006866:	431c      	orrs	r4, r3
 8006868:	4640      	mov	r0, r8
 800686a:	f845 4c04 	str.w	r4, [r5, #-4]
 800686e:	f7ff fb93 	bl	8005f98 <__malloc_unlock>
 8006872:	46aa      	mov	sl, r5
 8006874:	e744      	b.n	8006700 <_realloc_r+0x148>
 8006876:	f8cb 1010 	str.w	r1, [fp, #16]
 800687a:	68e9      	ldr	r1, [r5, #12]
 800687c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006880:	2a24      	cmp	r2, #36	; 0x24
 8006882:	d010      	beq.n	80068a6 <_realloc_r+0x2ee>
 8006884:	6929      	ldr	r1, [r5, #16]
 8006886:	f10b 0218 	add.w	r2, fp, #24
 800688a:	3510      	adds	r5, #16
 800688c:	e71e      	b.n	80066cc <_realloc_r+0x114>
 800688e:	68ab      	ldr	r3, [r5, #8]
 8006890:	6083      	str	r3, [r0, #8]
 8006892:	68eb      	ldr	r3, [r5, #12]
 8006894:	60c3      	str	r3, [r0, #12]
 8006896:	2a24      	cmp	r2, #36	; 0x24
 8006898:	d010      	beq.n	80068bc <_realloc_r+0x304>
 800689a:	f105 0210 	add.w	r2, r5, #16
 800689e:	f100 0310 	add.w	r3, r0, #16
 80068a2:	6929      	ldr	r1, [r5, #16]
 80068a4:	e6cf      	b.n	8006646 <_realloc_r+0x8e>
 80068a6:	692a      	ldr	r2, [r5, #16]
 80068a8:	f8cb 2018 	str.w	r2, [fp, #24]
 80068ac:	696a      	ldr	r2, [r5, #20]
 80068ae:	f8cb 201c 	str.w	r2, [fp, #28]
 80068b2:	69a9      	ldr	r1, [r5, #24]
 80068b4:	f10b 0220 	add.w	r2, fp, #32
 80068b8:	3518      	adds	r5, #24
 80068ba:	e707      	b.n	80066cc <_realloc_r+0x114>
 80068bc:	692b      	ldr	r3, [r5, #16]
 80068be:	6103      	str	r3, [r0, #16]
 80068c0:	696b      	ldr	r3, [r5, #20]
 80068c2:	6143      	str	r3, [r0, #20]
 80068c4:	69a9      	ldr	r1, [r5, #24]
 80068c6:	f105 0218 	add.w	r2, r5, #24
 80068ca:	f100 0318 	add.w	r3, r0, #24
 80068ce:	e6ba      	b.n	8006646 <_realloc_r+0x8e>
 80068d0:	4652      	mov	r2, sl
 80068d2:	e76e      	b.n	80067b2 <_realloc_r+0x1fa>
 80068d4:	4629      	mov	r1, r5
 80068d6:	4650      	mov	r0, sl
 80068d8:	9301      	str	r3, [sp, #4]
 80068da:	f7ff faf3 	bl	8005ec4 <memmove>
 80068de:	9b01      	ldr	r3, [sp, #4]
 80068e0:	e76c      	b.n	80067bc <_realloc_r+0x204>
 80068e2:	f8cb 1010 	str.w	r1, [fp, #16]
 80068e6:	68e9      	ldr	r1, [r5, #12]
 80068e8:	f8cb 1014 	str.w	r1, [fp, #20]
 80068ec:	2a24      	cmp	r2, #36	; 0x24
 80068ee:	d004      	beq.n	80068fa <_realloc_r+0x342>
 80068f0:	6929      	ldr	r1, [r5, #16]
 80068f2:	f10b 0218 	add.w	r2, fp, #24
 80068f6:	3510      	adds	r5, #16
 80068f8:	e75b      	b.n	80067b2 <_realloc_r+0x1fa>
 80068fa:	692a      	ldr	r2, [r5, #16]
 80068fc:	f8cb 2018 	str.w	r2, [fp, #24]
 8006900:	696a      	ldr	r2, [r5, #20]
 8006902:	f8cb 201c 	str.w	r2, [fp, #28]
 8006906:	69a9      	ldr	r1, [r5, #24]
 8006908:	f10b 0220 	add.w	r2, fp, #32
 800690c:	3518      	adds	r5, #24
 800690e:	e750      	b.n	80067b2 <_realloc_r+0x1fa>
 8006910:	2000044c 	.word	0x2000044c

08006914 <frexp>:
 8006914:	ec53 2b10 	vmov	r2, r3, d0
 8006918:	b570      	push	{r4, r5, r6, lr}
 800691a:	4e16      	ldr	r6, [pc, #88]	; (8006974 <frexp+0x60>)
 800691c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006920:	2500      	movs	r5, #0
 8006922:	42b1      	cmp	r1, r6
 8006924:	4604      	mov	r4, r0
 8006926:	6005      	str	r5, [r0, #0]
 8006928:	dc21      	bgt.n	800696e <frexp+0x5a>
 800692a:	ee10 6a10 	vmov	r6, s0
 800692e:	430e      	orrs	r6, r1
 8006930:	d01d      	beq.n	800696e <frexp+0x5a>
 8006932:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006936:	4618      	mov	r0, r3
 8006938:	da0c      	bge.n	8006954 <frexp+0x40>
 800693a:	4619      	mov	r1, r3
 800693c:	2200      	movs	r2, #0
 800693e:	ee10 0a10 	vmov	r0, s0
 8006942:	4b0d      	ldr	r3, [pc, #52]	; (8006978 <frexp+0x64>)
 8006944:	f7fa f8f8 	bl	8000b38 <__aeabi_dmul>
 8006948:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800694c:	4602      	mov	r2, r0
 800694e:	4608      	mov	r0, r1
 8006950:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006954:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006958:	1509      	asrs	r1, r1, #20
 800695a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800695e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006962:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006966:	4429      	add	r1, r5
 8006968:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800696c:	6021      	str	r1, [r4, #0]
 800696e:	ec43 2b10 	vmov	d0, r2, r3
 8006972:	bd70      	pop	{r4, r5, r6, pc}
 8006974:	7fefffff 	.word	0x7fefffff
 8006978:	43500000 	.word	0x43500000

0800697c <_sbrk_r>:
 800697c:	b538      	push	{r3, r4, r5, lr}
 800697e:	4c07      	ldr	r4, [pc, #28]	; (800699c <_sbrk_r+0x20>)
 8006980:	2300      	movs	r3, #0
 8006982:	4605      	mov	r5, r0
 8006984:	4608      	mov	r0, r1
 8006986:	6023      	str	r3, [r4, #0]
 8006988:	f7fb fc2c 	bl	80021e4 <_sbrk>
 800698c:	1c43      	adds	r3, r0, #1
 800698e:	d000      	beq.n	8006992 <_sbrk_r+0x16>
 8006990:	bd38      	pop	{r3, r4, r5, pc}
 8006992:	6823      	ldr	r3, [r4, #0]
 8006994:	2b00      	cmp	r3, #0
 8006996:	d0fb      	beq.n	8006990 <_sbrk_r+0x14>
 8006998:	602b      	str	r3, [r5, #0]
 800699a:	bd38      	pop	{r3, r4, r5, pc}
 800699c:	20000b0c 	.word	0x20000b0c

080069a0 <__sread>:
 80069a0:	b510      	push	{r4, lr}
 80069a2:	460c      	mov	r4, r1
 80069a4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069a8:	f000 fabc 	bl	8006f24 <_read_r>
 80069ac:	2800      	cmp	r0, #0
 80069ae:	db03      	blt.n	80069b8 <__sread+0x18>
 80069b0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80069b2:	4403      	add	r3, r0
 80069b4:	6523      	str	r3, [r4, #80]	; 0x50
 80069b6:	bd10      	pop	{r4, pc}
 80069b8:	89a3      	ldrh	r3, [r4, #12]
 80069ba:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80069be:	81a3      	strh	r3, [r4, #12]
 80069c0:	bd10      	pop	{r4, pc}
 80069c2:	bf00      	nop

080069c4 <__swrite>:
 80069c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80069c8:	4616      	mov	r6, r2
 80069ca:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80069ce:	461f      	mov	r7, r3
 80069d0:	05d3      	lsls	r3, r2, #23
 80069d2:	460c      	mov	r4, r1
 80069d4:	4605      	mov	r5, r0
 80069d6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069da:	d507      	bpl.n	80069ec <__swrite+0x28>
 80069dc:	2200      	movs	r2, #0
 80069de:	2302      	movs	r3, #2
 80069e0:	f000 fa74 	bl	8006ecc <_lseek_r>
 80069e4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80069e8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80069ec:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80069f0:	81a2      	strh	r2, [r4, #12]
 80069f2:	463b      	mov	r3, r7
 80069f4:	4632      	mov	r2, r6
 80069f6:	4628      	mov	r0, r5
 80069f8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80069fc:	f000 b88c 	b.w	8006b18 <_write_r>

08006a00 <__sseek>:
 8006a00:	b510      	push	{r4, lr}
 8006a02:	460c      	mov	r4, r1
 8006a04:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a08:	f000 fa60 	bl	8006ecc <_lseek_r>
 8006a0c:	89a3      	ldrh	r3, [r4, #12]
 8006a0e:	1c42      	adds	r2, r0, #1
 8006a10:	bf0e      	itee	eq
 8006a12:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006a16:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006a1a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006a1c:	81a3      	strh	r3, [r4, #12]
 8006a1e:	bd10      	pop	{r4, pc}

08006a20 <__sclose>:
 8006a20:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a24:	f000 b922 	b.w	8006c6c <_close_r>

08006a28 <strncpy>:
 8006a28:	ea40 0301 	orr.w	r3, r0, r1
 8006a2c:	079b      	lsls	r3, r3, #30
 8006a2e:	b470      	push	{r4, r5, r6}
 8006a30:	d12a      	bne.n	8006a88 <strncpy+0x60>
 8006a32:	2a03      	cmp	r2, #3
 8006a34:	d928      	bls.n	8006a88 <strncpy+0x60>
 8006a36:	460c      	mov	r4, r1
 8006a38:	4603      	mov	r3, r0
 8006a3a:	4621      	mov	r1, r4
 8006a3c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006a40:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006a44:	ea25 0506 	bic.w	r5, r5, r6
 8006a48:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006a4c:	d106      	bne.n	8006a5c <strncpy+0x34>
 8006a4e:	3a04      	subs	r2, #4
 8006a50:	2a03      	cmp	r2, #3
 8006a52:	f843 6b04 	str.w	r6, [r3], #4
 8006a56:	4621      	mov	r1, r4
 8006a58:	d8ef      	bhi.n	8006a3a <strncpy+0x12>
 8006a5a:	b19a      	cbz	r2, 8006a84 <strncpy+0x5c>
 8006a5c:	780c      	ldrb	r4, [r1, #0]
 8006a5e:	701c      	strb	r4, [r3, #0]
 8006a60:	3a01      	subs	r2, #1
 8006a62:	3301      	adds	r3, #1
 8006a64:	b13c      	cbz	r4, 8006a76 <strncpy+0x4e>
 8006a66:	b16a      	cbz	r2, 8006a84 <strncpy+0x5c>
 8006a68:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006a6c:	f803 4b01 	strb.w	r4, [r3], #1
 8006a70:	3a01      	subs	r2, #1
 8006a72:	2c00      	cmp	r4, #0
 8006a74:	d1f7      	bne.n	8006a66 <strncpy+0x3e>
 8006a76:	b12a      	cbz	r2, 8006a84 <strncpy+0x5c>
 8006a78:	441a      	add	r2, r3
 8006a7a:	2100      	movs	r1, #0
 8006a7c:	f803 1b01 	strb.w	r1, [r3], #1
 8006a80:	4293      	cmp	r3, r2
 8006a82:	d1fb      	bne.n	8006a7c <strncpy+0x54>
 8006a84:	bc70      	pop	{r4, r5, r6}
 8006a86:	4770      	bx	lr
 8006a88:	4603      	mov	r3, r0
 8006a8a:	e7e6      	b.n	8006a5a <strncpy+0x32>

08006a8c <__sprint_r.part.0>:
 8006a8c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a90:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006a92:	049c      	lsls	r4, r3, #18
 8006a94:	4692      	mov	sl, r2
 8006a96:	d52d      	bpl.n	8006af4 <__sprint_r.part.0+0x68>
 8006a98:	6893      	ldr	r3, [r2, #8]
 8006a9a:	6812      	ldr	r2, [r2, #0]
 8006a9c:	b343      	cbz	r3, 8006af0 <__sprint_r.part.0+0x64>
 8006a9e:	460e      	mov	r6, r1
 8006aa0:	4607      	mov	r7, r0
 8006aa2:	f102 0908 	add.w	r9, r2, #8
 8006aa6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006aaa:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006aae:	d015      	beq.n	8006adc <__sprint_r.part.0+0x50>
 8006ab0:	3d04      	subs	r5, #4
 8006ab2:	2400      	movs	r4, #0
 8006ab4:	e001      	b.n	8006aba <__sprint_r.part.0+0x2e>
 8006ab6:	45a0      	cmp	r8, r4
 8006ab8:	d00e      	beq.n	8006ad8 <__sprint_r.part.0+0x4c>
 8006aba:	4632      	mov	r2, r6
 8006abc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006ac0:	4638      	mov	r0, r7
 8006ac2:	f000 f99d 	bl	8006e00 <_fputwc_r>
 8006ac6:	1c43      	adds	r3, r0, #1
 8006ac8:	f104 0401 	add.w	r4, r4, #1
 8006acc:	d1f3      	bne.n	8006ab6 <__sprint_r.part.0+0x2a>
 8006ace:	2300      	movs	r3, #0
 8006ad0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ad4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ad8:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006adc:	f02b 0b03 	bic.w	fp, fp, #3
 8006ae0:	eba3 030b 	sub.w	r3, r3, fp
 8006ae4:	f8ca 3008 	str.w	r3, [sl, #8]
 8006ae8:	f109 0908 	add.w	r9, r9, #8
 8006aec:	2b00      	cmp	r3, #0
 8006aee:	d1da      	bne.n	8006aa6 <__sprint_r.part.0+0x1a>
 8006af0:	2000      	movs	r0, #0
 8006af2:	e7ec      	b.n	8006ace <__sprint_r.part.0+0x42>
 8006af4:	f7fe fd0c 	bl	8005510 <__sfvwrite_r>
 8006af8:	2300      	movs	r3, #0
 8006afa:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006afe:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b02:	bf00      	nop

08006b04 <__sprint_r>:
 8006b04:	6893      	ldr	r3, [r2, #8]
 8006b06:	b10b      	cbz	r3, 8006b0c <__sprint_r+0x8>
 8006b08:	f7ff bfc0 	b.w	8006a8c <__sprint_r.part.0>
 8006b0c:	b410      	push	{r4}
 8006b0e:	4618      	mov	r0, r3
 8006b10:	6053      	str	r3, [r2, #4]
 8006b12:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006b16:	4770      	bx	lr

08006b18 <_write_r>:
 8006b18:	b570      	push	{r4, r5, r6, lr}
 8006b1a:	460d      	mov	r5, r1
 8006b1c:	4c08      	ldr	r4, [pc, #32]	; (8006b40 <_write_r+0x28>)
 8006b1e:	4611      	mov	r1, r2
 8006b20:	4606      	mov	r6, r0
 8006b22:	461a      	mov	r2, r3
 8006b24:	4628      	mov	r0, r5
 8006b26:	2300      	movs	r3, #0
 8006b28:	6023      	str	r3, [r4, #0]
 8006b2a:	f7fb fb3d 	bl	80021a8 <_write>
 8006b2e:	1c43      	adds	r3, r0, #1
 8006b30:	d000      	beq.n	8006b34 <_write_r+0x1c>
 8006b32:	bd70      	pop	{r4, r5, r6, pc}
 8006b34:	6823      	ldr	r3, [r4, #0]
 8006b36:	2b00      	cmp	r3, #0
 8006b38:	d0fb      	beq.n	8006b32 <_write_r+0x1a>
 8006b3a:	6033      	str	r3, [r6, #0]
 8006b3c:	bd70      	pop	{r4, r5, r6, pc}
 8006b3e:	bf00      	nop
 8006b40:	20000b0c 	.word	0x20000b0c

08006b44 <__register_exitproc>:
 8006b44:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006b48:	4d2b      	ldr	r5, [pc, #172]	; (8006bf8 <__register_exitproc+0xb4>)
 8006b4a:	4606      	mov	r6, r0
 8006b4c:	6828      	ldr	r0, [r5, #0]
 8006b4e:	4698      	mov	r8, r3
 8006b50:	460f      	mov	r7, r1
 8006b52:	4691      	mov	r9, r2
 8006b54:	f7fe fe96 	bl	8005884 <__retarget_lock_acquire_recursive>
 8006b58:	4b28      	ldr	r3, [pc, #160]	; (8006bfc <__register_exitproc+0xb8>)
 8006b5a:	681c      	ldr	r4, [r3, #0]
 8006b5c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006b60:	2b00      	cmp	r3, #0
 8006b62:	d03d      	beq.n	8006be0 <__register_exitproc+0x9c>
 8006b64:	685a      	ldr	r2, [r3, #4]
 8006b66:	2a1f      	cmp	r2, #31
 8006b68:	dc0d      	bgt.n	8006b86 <__register_exitproc+0x42>
 8006b6a:	f102 0c01 	add.w	ip, r2, #1
 8006b6e:	bb16      	cbnz	r6, 8006bb6 <__register_exitproc+0x72>
 8006b70:	3202      	adds	r2, #2
 8006b72:	f8c3 c004 	str.w	ip, [r3, #4]
 8006b76:	6828      	ldr	r0, [r5, #0]
 8006b78:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006b7c:	f7fe fe84 	bl	8005888 <__retarget_lock_release_recursive>
 8006b80:	2000      	movs	r0, #0
 8006b82:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b86:	4b1e      	ldr	r3, [pc, #120]	; (8006c00 <__register_exitproc+0xbc>)
 8006b88:	b37b      	cbz	r3, 8006bea <__register_exitproc+0xa6>
 8006b8a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006b8e:	f3af 8000 	nop.w
 8006b92:	4603      	mov	r3, r0
 8006b94:	b348      	cbz	r0, 8006bea <__register_exitproc+0xa6>
 8006b96:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006b9a:	2100      	movs	r1, #0
 8006b9c:	e9c0 2100 	strd	r2, r1, [r0]
 8006ba0:	f04f 0c01 	mov.w	ip, #1
 8006ba4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006ba8:	460a      	mov	r2, r1
 8006baa:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006bae:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006bb2:	2e00      	cmp	r6, #0
 8006bb4:	d0dc      	beq.n	8006b70 <__register_exitproc+0x2c>
 8006bb6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006bba:	2401      	movs	r4, #1
 8006bbc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006bc0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006bc4:	4094      	lsls	r4, r2
 8006bc6:	4320      	orrs	r0, r4
 8006bc8:	2e02      	cmp	r6, #2
 8006bca:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006bce:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006bd2:	d1cd      	bne.n	8006b70 <__register_exitproc+0x2c>
 8006bd4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006bd8:	430c      	orrs	r4, r1
 8006bda:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006bde:	e7c7      	b.n	8006b70 <__register_exitproc+0x2c>
 8006be0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006be4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006be8:	e7bc      	b.n	8006b64 <__register_exitproc+0x20>
 8006bea:	6828      	ldr	r0, [r5, #0]
 8006bec:	f7fe fe4c 	bl	8005888 <__retarget_lock_release_recursive>
 8006bf0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006bf4:	e7c5      	b.n	8006b82 <__register_exitproc+0x3e>
 8006bf6:	bf00      	nop
 8006bf8:	20000448 	.word	0x20000448
 8006bfc:	08007198 	.word	0x08007198
 8006c00:	00000000 	.word	0x00000000

08006c04 <_calloc_r>:
 8006c04:	b510      	push	{r4, lr}
 8006c06:	fb02 f101 	mul.w	r1, r2, r1
 8006c0a:	f7fe feb7 	bl	800597c <_malloc_r>
 8006c0e:	4604      	mov	r4, r0
 8006c10:	b1d8      	cbz	r0, 8006c4a <_calloc_r+0x46>
 8006c12:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006c16:	f022 0203 	bic.w	r2, r2, #3
 8006c1a:	3a04      	subs	r2, #4
 8006c1c:	2a24      	cmp	r2, #36	; 0x24
 8006c1e:	d81d      	bhi.n	8006c5c <_calloc_r+0x58>
 8006c20:	2a13      	cmp	r2, #19
 8006c22:	d914      	bls.n	8006c4e <_calloc_r+0x4a>
 8006c24:	2300      	movs	r3, #0
 8006c26:	2a1b      	cmp	r2, #27
 8006c28:	e9c0 3300 	strd	r3, r3, [r0]
 8006c2c:	d91b      	bls.n	8006c66 <_calloc_r+0x62>
 8006c2e:	2a24      	cmp	r2, #36	; 0x24
 8006c30:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006c34:	bf0a      	itet	eq
 8006c36:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006c3a:	f100 0210 	addne.w	r2, r0, #16
 8006c3e:	f100 0218 	addeq.w	r2, r0, #24
 8006c42:	2300      	movs	r3, #0
 8006c44:	e9c2 3300 	strd	r3, r3, [r2]
 8006c48:	6093      	str	r3, [r2, #8]
 8006c4a:	4620      	mov	r0, r4
 8006c4c:	bd10      	pop	{r4, pc}
 8006c4e:	4602      	mov	r2, r0
 8006c50:	2300      	movs	r3, #0
 8006c52:	e9c2 3300 	strd	r3, r3, [r2]
 8006c56:	6093      	str	r3, [r2, #8]
 8006c58:	4620      	mov	r0, r4
 8006c5a:	bd10      	pop	{r4, pc}
 8006c5c:	2100      	movs	r1, #0
 8006c5e:	f7fb fb6f 	bl	8002340 <memset>
 8006c62:	4620      	mov	r0, r4
 8006c64:	bd10      	pop	{r4, pc}
 8006c66:	f100 0208 	add.w	r2, r0, #8
 8006c6a:	e7f1      	b.n	8006c50 <_calloc_r+0x4c>

08006c6c <_close_r>:
 8006c6c:	b538      	push	{r3, r4, r5, lr}
 8006c6e:	4c07      	ldr	r4, [pc, #28]	; (8006c8c <_close_r+0x20>)
 8006c70:	2300      	movs	r3, #0
 8006c72:	4605      	mov	r5, r0
 8006c74:	4608      	mov	r0, r1
 8006c76:	6023      	str	r3, [r4, #0]
 8006c78:	f7fb fad7 	bl	800222a <_close>
 8006c7c:	1c43      	adds	r3, r0, #1
 8006c7e:	d000      	beq.n	8006c82 <_close_r+0x16>
 8006c80:	bd38      	pop	{r3, r4, r5, pc}
 8006c82:	6823      	ldr	r3, [r4, #0]
 8006c84:	2b00      	cmp	r3, #0
 8006c86:	d0fb      	beq.n	8006c80 <_close_r+0x14>
 8006c88:	602b      	str	r3, [r5, #0]
 8006c8a:	bd38      	pop	{r3, r4, r5, pc}
 8006c8c:	20000b0c 	.word	0x20000b0c

08006c90 <_fclose_r>:
 8006c90:	b570      	push	{r4, r5, r6, lr}
 8006c92:	2900      	cmp	r1, #0
 8006c94:	d048      	beq.n	8006d28 <_fclose_r+0x98>
 8006c96:	4605      	mov	r5, r0
 8006c98:	460c      	mov	r4, r1
 8006c9a:	b110      	cbz	r0, 8006ca2 <_fclose_r+0x12>
 8006c9c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006c9e:	2b00      	cmp	r3, #0
 8006ca0:	d048      	beq.n	8006d34 <_fclose_r+0xa4>
 8006ca2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006ca4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ca8:	07d0      	lsls	r0, r2, #31
 8006caa:	d440      	bmi.n	8006d2e <_fclose_r+0x9e>
 8006cac:	0599      	lsls	r1, r3, #22
 8006cae:	d530      	bpl.n	8006d12 <_fclose_r+0x82>
 8006cb0:	4621      	mov	r1, r4
 8006cb2:	4628      	mov	r0, r5
 8006cb4:	f7fe f990 	bl	8004fd8 <__sflush_r>
 8006cb8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006cba:	4606      	mov	r6, r0
 8006cbc:	b133      	cbz	r3, 8006ccc <_fclose_r+0x3c>
 8006cbe:	69e1      	ldr	r1, [r4, #28]
 8006cc0:	4628      	mov	r0, r5
 8006cc2:	4798      	blx	r3
 8006cc4:	2800      	cmp	r0, #0
 8006cc6:	bfb8      	it	lt
 8006cc8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006ccc:	89a3      	ldrh	r3, [r4, #12]
 8006cce:	061a      	lsls	r2, r3, #24
 8006cd0:	d43c      	bmi.n	8006d4c <_fclose_r+0xbc>
 8006cd2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006cd4:	b141      	cbz	r1, 8006ce8 <_fclose_r+0x58>
 8006cd6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006cda:	4299      	cmp	r1, r3
 8006cdc:	d002      	beq.n	8006ce4 <_fclose_r+0x54>
 8006cde:	4628      	mov	r0, r5
 8006ce0:	f7fe fb22 	bl	8005328 <_free_r>
 8006ce4:	2300      	movs	r3, #0
 8006ce6:	6323      	str	r3, [r4, #48]	; 0x30
 8006ce8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006cea:	b121      	cbz	r1, 8006cf6 <_fclose_r+0x66>
 8006cec:	4628      	mov	r0, r5
 8006cee:	f7fe fb1b 	bl	8005328 <_free_r>
 8006cf2:	2300      	movs	r3, #0
 8006cf4:	6463      	str	r3, [r4, #68]	; 0x44
 8006cf6:	f7fe faa1 	bl	800523c <__sfp_lock_acquire>
 8006cfa:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006cfc:	2200      	movs	r2, #0
 8006cfe:	07db      	lsls	r3, r3, #31
 8006d00:	81a2      	strh	r2, [r4, #12]
 8006d02:	d51f      	bpl.n	8006d44 <_fclose_r+0xb4>
 8006d04:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d06:	f7fe fdbb 	bl	8005880 <__retarget_lock_close_recursive>
 8006d0a:	f7fe fa9d 	bl	8005248 <__sfp_lock_release>
 8006d0e:	4630      	mov	r0, r6
 8006d10:	bd70      	pop	{r4, r5, r6, pc}
 8006d12:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d14:	f7fe fdb6 	bl	8005884 <__retarget_lock_acquire_recursive>
 8006d18:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d1c:	2b00      	cmp	r3, #0
 8006d1e:	d1c7      	bne.n	8006cb0 <_fclose_r+0x20>
 8006d20:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006d22:	f016 0601 	ands.w	r6, r6, #1
 8006d26:	d016      	beq.n	8006d56 <_fclose_r+0xc6>
 8006d28:	2600      	movs	r6, #0
 8006d2a:	4630      	mov	r0, r6
 8006d2c:	bd70      	pop	{r4, r5, r6, pc}
 8006d2e:	2b00      	cmp	r3, #0
 8006d30:	d0fa      	beq.n	8006d28 <_fclose_r+0x98>
 8006d32:	e7bd      	b.n	8006cb0 <_fclose_r+0x20>
 8006d34:	f7fe fa56 	bl	80051e4 <__sinit>
 8006d38:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d3a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d3e:	07d0      	lsls	r0, r2, #31
 8006d40:	d4f5      	bmi.n	8006d2e <_fclose_r+0x9e>
 8006d42:	e7b3      	b.n	8006cac <_fclose_r+0x1c>
 8006d44:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d46:	f7fe fd9f 	bl	8005888 <__retarget_lock_release_recursive>
 8006d4a:	e7db      	b.n	8006d04 <_fclose_r+0x74>
 8006d4c:	6921      	ldr	r1, [r4, #16]
 8006d4e:	4628      	mov	r0, r5
 8006d50:	f7fe faea 	bl	8005328 <_free_r>
 8006d54:	e7bd      	b.n	8006cd2 <_fclose_r+0x42>
 8006d56:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d58:	f7fe fd96 	bl	8005888 <__retarget_lock_release_recursive>
 8006d5c:	4630      	mov	r0, r6
 8006d5e:	bd70      	pop	{r4, r5, r6, pc}

08006d60 <__fputwc>:
 8006d60:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006d64:	b082      	sub	sp, #8
 8006d66:	4681      	mov	r9, r0
 8006d68:	4688      	mov	r8, r1
 8006d6a:	4614      	mov	r4, r2
 8006d6c:	f000 f8a0 	bl	8006eb0 <__locale_mb_cur_max>
 8006d70:	2801      	cmp	r0, #1
 8006d72:	d103      	bne.n	8006d7c <__fputwc+0x1c>
 8006d74:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006d78:	2bfe      	cmp	r3, #254	; 0xfe
 8006d7a:	d933      	bls.n	8006de4 <__fputwc+0x84>
 8006d7c:	4642      	mov	r2, r8
 8006d7e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006d82:	a901      	add	r1, sp, #4
 8006d84:	4648      	mov	r0, r9
 8006d86:	f000 f93b 	bl	8007000 <_wcrtomb_r>
 8006d8a:	1c42      	adds	r2, r0, #1
 8006d8c:	4606      	mov	r6, r0
 8006d8e:	d02f      	beq.n	8006df0 <__fputwc+0x90>
 8006d90:	b320      	cbz	r0, 8006ddc <__fputwc+0x7c>
 8006d92:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006d96:	2500      	movs	r5, #0
 8006d98:	f10d 0a04 	add.w	sl, sp, #4
 8006d9c:	e009      	b.n	8006db2 <__fputwc+0x52>
 8006d9e:	6823      	ldr	r3, [r4, #0]
 8006da0:	1c5a      	adds	r2, r3, #1
 8006da2:	6022      	str	r2, [r4, #0]
 8006da4:	f883 c000 	strb.w	ip, [r3]
 8006da8:	3501      	adds	r5, #1
 8006daa:	42b5      	cmp	r5, r6
 8006dac:	d216      	bcs.n	8006ddc <__fputwc+0x7c>
 8006dae:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006db2:	68a3      	ldr	r3, [r4, #8]
 8006db4:	3b01      	subs	r3, #1
 8006db6:	2b00      	cmp	r3, #0
 8006db8:	60a3      	str	r3, [r4, #8]
 8006dba:	daf0      	bge.n	8006d9e <__fputwc+0x3e>
 8006dbc:	69a7      	ldr	r7, [r4, #24]
 8006dbe:	42bb      	cmp	r3, r7
 8006dc0:	4661      	mov	r1, ip
 8006dc2:	4622      	mov	r2, r4
 8006dc4:	4648      	mov	r0, r9
 8006dc6:	db02      	blt.n	8006dce <__fputwc+0x6e>
 8006dc8:	f1bc 0f0a 	cmp.w	ip, #10
 8006dcc:	d1e7      	bne.n	8006d9e <__fputwc+0x3e>
 8006dce:	f000 f8bf 	bl	8006f50 <__swbuf_r>
 8006dd2:	1c43      	adds	r3, r0, #1
 8006dd4:	d1e8      	bne.n	8006da8 <__fputwc+0x48>
 8006dd6:	b002      	add	sp, #8
 8006dd8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006ddc:	4640      	mov	r0, r8
 8006dde:	b002      	add	sp, #8
 8006de0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006de4:	fa5f fc88 	uxtb.w	ip, r8
 8006de8:	4606      	mov	r6, r0
 8006dea:	f88d c004 	strb.w	ip, [sp, #4]
 8006dee:	e7d2      	b.n	8006d96 <__fputwc+0x36>
 8006df0:	89a3      	ldrh	r3, [r4, #12]
 8006df2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006df6:	81a3      	strh	r3, [r4, #12]
 8006df8:	b002      	add	sp, #8
 8006dfa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006dfe:	bf00      	nop

08006e00 <_fputwc_r>:
 8006e00:	b530      	push	{r4, r5, lr}
 8006e02:	4605      	mov	r5, r0
 8006e04:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006e06:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006e0a:	07c0      	lsls	r0, r0, #31
 8006e0c:	4614      	mov	r4, r2
 8006e0e:	b083      	sub	sp, #12
 8006e10:	b29a      	uxth	r2, r3
 8006e12:	d401      	bmi.n	8006e18 <_fputwc_r+0x18>
 8006e14:	0590      	lsls	r0, r2, #22
 8006e16:	d51c      	bpl.n	8006e52 <_fputwc_r+0x52>
 8006e18:	0490      	lsls	r0, r2, #18
 8006e1a:	d406      	bmi.n	8006e2a <_fputwc_r+0x2a>
 8006e1c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006e1e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006e22:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e26:	81a3      	strh	r3, [r4, #12]
 8006e28:	6662      	str	r2, [r4, #100]	; 0x64
 8006e2a:	4628      	mov	r0, r5
 8006e2c:	4622      	mov	r2, r4
 8006e2e:	f7ff ff97 	bl	8006d60 <__fputwc>
 8006e32:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006e34:	07da      	lsls	r2, r3, #31
 8006e36:	4605      	mov	r5, r0
 8006e38:	d402      	bmi.n	8006e40 <_fputwc_r+0x40>
 8006e3a:	89a3      	ldrh	r3, [r4, #12]
 8006e3c:	059b      	lsls	r3, r3, #22
 8006e3e:	d502      	bpl.n	8006e46 <_fputwc_r+0x46>
 8006e40:	4628      	mov	r0, r5
 8006e42:	b003      	add	sp, #12
 8006e44:	bd30      	pop	{r4, r5, pc}
 8006e46:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e48:	f7fe fd1e 	bl	8005888 <__retarget_lock_release_recursive>
 8006e4c:	4628      	mov	r0, r5
 8006e4e:	b003      	add	sp, #12
 8006e50:	bd30      	pop	{r4, r5, pc}
 8006e52:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e54:	9101      	str	r1, [sp, #4]
 8006e56:	f7fe fd15 	bl	8005884 <__retarget_lock_acquire_recursive>
 8006e5a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e5e:	9901      	ldr	r1, [sp, #4]
 8006e60:	b29a      	uxth	r2, r3
 8006e62:	e7d9      	b.n	8006e18 <_fputwc_r+0x18>

08006e64 <_fstat_r>:
 8006e64:	b538      	push	{r3, r4, r5, lr}
 8006e66:	460b      	mov	r3, r1
 8006e68:	4c07      	ldr	r4, [pc, #28]	; (8006e88 <_fstat_r+0x24>)
 8006e6a:	4605      	mov	r5, r0
 8006e6c:	4611      	mov	r1, r2
 8006e6e:	4618      	mov	r0, r3
 8006e70:	2300      	movs	r3, #0
 8006e72:	6023      	str	r3, [r4, #0]
 8006e74:	f7fb f9dc 	bl	8002230 <_fstat>
 8006e78:	1c43      	adds	r3, r0, #1
 8006e7a:	d000      	beq.n	8006e7e <_fstat_r+0x1a>
 8006e7c:	bd38      	pop	{r3, r4, r5, pc}
 8006e7e:	6823      	ldr	r3, [r4, #0]
 8006e80:	2b00      	cmp	r3, #0
 8006e82:	d0fb      	beq.n	8006e7c <_fstat_r+0x18>
 8006e84:	602b      	str	r3, [r5, #0]
 8006e86:	bd38      	pop	{r3, r4, r5, pc}
 8006e88:	20000b0c 	.word	0x20000b0c

08006e8c <_isatty_r>:
 8006e8c:	b538      	push	{r3, r4, r5, lr}
 8006e8e:	4c07      	ldr	r4, [pc, #28]	; (8006eac <_isatty_r+0x20>)
 8006e90:	2300      	movs	r3, #0
 8006e92:	4605      	mov	r5, r0
 8006e94:	4608      	mov	r0, r1
 8006e96:	6023      	str	r3, [r4, #0]
 8006e98:	f7fb f9d0 	bl	800223c <_isatty>
 8006e9c:	1c43      	adds	r3, r0, #1
 8006e9e:	d000      	beq.n	8006ea2 <_isatty_r+0x16>
 8006ea0:	bd38      	pop	{r3, r4, r5, pc}
 8006ea2:	6823      	ldr	r3, [r4, #0]
 8006ea4:	2b00      	cmp	r3, #0
 8006ea6:	d0fb      	beq.n	8006ea0 <_isatty_r+0x14>
 8006ea8:	602b      	str	r3, [r5, #0]
 8006eaa:	bd38      	pop	{r3, r4, r5, pc}
 8006eac:	20000b0c 	.word	0x20000b0c

08006eb0 <__locale_mb_cur_max>:
 8006eb0:	4b04      	ldr	r3, [pc, #16]	; (8006ec4 <__locale_mb_cur_max+0x14>)
 8006eb2:	4a05      	ldr	r2, [pc, #20]	; (8006ec8 <__locale_mb_cur_max+0x18>)
 8006eb4:	681b      	ldr	r3, [r3, #0]
 8006eb6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006eb8:	2b00      	cmp	r3, #0
 8006eba:	bf08      	it	eq
 8006ebc:	4613      	moveq	r3, r2
 8006ebe:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006ec2:	4770      	bx	lr
 8006ec4:	20000018 	.word	0x20000018
 8006ec8:	2000085c 	.word	0x2000085c

08006ecc <_lseek_r>:
 8006ecc:	b570      	push	{r4, r5, r6, lr}
 8006ece:	460d      	mov	r5, r1
 8006ed0:	4c08      	ldr	r4, [pc, #32]	; (8006ef4 <_lseek_r+0x28>)
 8006ed2:	4611      	mov	r1, r2
 8006ed4:	4606      	mov	r6, r0
 8006ed6:	461a      	mov	r2, r3
 8006ed8:	4628      	mov	r0, r5
 8006eda:	2300      	movs	r3, #0
 8006edc:	6023      	str	r3, [r4, #0]
 8006ede:	f7fb f9af 	bl	8002240 <_lseek>
 8006ee2:	1c43      	adds	r3, r0, #1
 8006ee4:	d000      	beq.n	8006ee8 <_lseek_r+0x1c>
 8006ee6:	bd70      	pop	{r4, r5, r6, pc}
 8006ee8:	6823      	ldr	r3, [r4, #0]
 8006eea:	2b00      	cmp	r3, #0
 8006eec:	d0fb      	beq.n	8006ee6 <_lseek_r+0x1a>
 8006eee:	6033      	str	r3, [r6, #0]
 8006ef0:	bd70      	pop	{r4, r5, r6, pc}
 8006ef2:	bf00      	nop
 8006ef4:	20000b0c 	.word	0x20000b0c

08006ef8 <__ascii_mbtowc>:
 8006ef8:	b082      	sub	sp, #8
 8006efa:	b149      	cbz	r1, 8006f10 <__ascii_mbtowc+0x18>
 8006efc:	b15a      	cbz	r2, 8006f16 <__ascii_mbtowc+0x1e>
 8006efe:	b16b      	cbz	r3, 8006f1c <__ascii_mbtowc+0x24>
 8006f00:	7813      	ldrb	r3, [r2, #0]
 8006f02:	600b      	str	r3, [r1, #0]
 8006f04:	7812      	ldrb	r2, [r2, #0]
 8006f06:	1c10      	adds	r0, r2, #0
 8006f08:	bf18      	it	ne
 8006f0a:	2001      	movne	r0, #1
 8006f0c:	b002      	add	sp, #8
 8006f0e:	4770      	bx	lr
 8006f10:	a901      	add	r1, sp, #4
 8006f12:	2a00      	cmp	r2, #0
 8006f14:	d1f3      	bne.n	8006efe <__ascii_mbtowc+0x6>
 8006f16:	4610      	mov	r0, r2
 8006f18:	b002      	add	sp, #8
 8006f1a:	4770      	bx	lr
 8006f1c:	f06f 0001 	mvn.w	r0, #1
 8006f20:	e7f4      	b.n	8006f0c <__ascii_mbtowc+0x14>
 8006f22:	bf00      	nop

08006f24 <_read_r>:
 8006f24:	b570      	push	{r4, r5, r6, lr}
 8006f26:	460d      	mov	r5, r1
 8006f28:	4c08      	ldr	r4, [pc, #32]	; (8006f4c <_read_r+0x28>)
 8006f2a:	4611      	mov	r1, r2
 8006f2c:	4606      	mov	r6, r0
 8006f2e:	461a      	mov	r2, r3
 8006f30:	4628      	mov	r0, r5
 8006f32:	2300      	movs	r3, #0
 8006f34:	6023      	str	r3, [r4, #0]
 8006f36:	f7fb f917 	bl	8002168 <_read>
 8006f3a:	1c43      	adds	r3, r0, #1
 8006f3c:	d000      	beq.n	8006f40 <_read_r+0x1c>
 8006f3e:	bd70      	pop	{r4, r5, r6, pc}
 8006f40:	6823      	ldr	r3, [r4, #0]
 8006f42:	2b00      	cmp	r3, #0
 8006f44:	d0fb      	beq.n	8006f3e <_read_r+0x1a>
 8006f46:	6033      	str	r3, [r6, #0]
 8006f48:	bd70      	pop	{r4, r5, r6, pc}
 8006f4a:	bf00      	nop
 8006f4c:	20000b0c 	.word	0x20000b0c

08006f50 <__swbuf_r>:
 8006f50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f52:	460d      	mov	r5, r1
 8006f54:	4614      	mov	r4, r2
 8006f56:	4606      	mov	r6, r0
 8006f58:	b110      	cbz	r0, 8006f60 <__swbuf_r+0x10>
 8006f5a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f5c:	2b00      	cmp	r3, #0
 8006f5e:	d043      	beq.n	8006fe8 <__swbuf_r+0x98>
 8006f60:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f64:	69a3      	ldr	r3, [r4, #24]
 8006f66:	60a3      	str	r3, [r4, #8]
 8006f68:	b291      	uxth	r1, r2
 8006f6a:	0708      	lsls	r0, r1, #28
 8006f6c:	d51b      	bpl.n	8006fa6 <__swbuf_r+0x56>
 8006f6e:	6923      	ldr	r3, [r4, #16]
 8006f70:	b1cb      	cbz	r3, 8006fa6 <__swbuf_r+0x56>
 8006f72:	b2ed      	uxtb	r5, r5
 8006f74:	0489      	lsls	r1, r1, #18
 8006f76:	462f      	mov	r7, r5
 8006f78:	d522      	bpl.n	8006fc0 <__swbuf_r+0x70>
 8006f7a:	6822      	ldr	r2, [r4, #0]
 8006f7c:	6961      	ldr	r1, [r4, #20]
 8006f7e:	1ad3      	subs	r3, r2, r3
 8006f80:	4299      	cmp	r1, r3
 8006f82:	dd29      	ble.n	8006fd8 <__swbuf_r+0x88>
 8006f84:	3301      	adds	r3, #1
 8006f86:	68a1      	ldr	r1, [r4, #8]
 8006f88:	1c50      	adds	r0, r2, #1
 8006f8a:	3901      	subs	r1, #1
 8006f8c:	60a1      	str	r1, [r4, #8]
 8006f8e:	6020      	str	r0, [r4, #0]
 8006f90:	7015      	strb	r5, [r2, #0]
 8006f92:	6962      	ldr	r2, [r4, #20]
 8006f94:	429a      	cmp	r2, r3
 8006f96:	d02a      	beq.n	8006fee <__swbuf_r+0x9e>
 8006f98:	89a3      	ldrh	r3, [r4, #12]
 8006f9a:	07db      	lsls	r3, r3, #31
 8006f9c:	d501      	bpl.n	8006fa2 <__swbuf_r+0x52>
 8006f9e:	2d0a      	cmp	r5, #10
 8006fa0:	d025      	beq.n	8006fee <__swbuf_r+0x9e>
 8006fa2:	4638      	mov	r0, r7
 8006fa4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006fa6:	4621      	mov	r1, r4
 8006fa8:	4630      	mov	r0, r6
 8006faa:	f7fc fffd 	bl	8003fa8 <__swsetup_r>
 8006fae:	bb20      	cbnz	r0, 8006ffa <__swbuf_r+0xaa>
 8006fb0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006fb4:	6923      	ldr	r3, [r4, #16]
 8006fb6:	b291      	uxth	r1, r2
 8006fb8:	b2ed      	uxtb	r5, r5
 8006fba:	0489      	lsls	r1, r1, #18
 8006fbc:	462f      	mov	r7, r5
 8006fbe:	d4dc      	bmi.n	8006f7a <__swbuf_r+0x2a>
 8006fc0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006fc2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006fc6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006fca:	81a2      	strh	r2, [r4, #12]
 8006fcc:	6822      	ldr	r2, [r4, #0]
 8006fce:	6661      	str	r1, [r4, #100]	; 0x64
 8006fd0:	6961      	ldr	r1, [r4, #20]
 8006fd2:	1ad3      	subs	r3, r2, r3
 8006fd4:	4299      	cmp	r1, r3
 8006fd6:	dcd5      	bgt.n	8006f84 <__swbuf_r+0x34>
 8006fd8:	4621      	mov	r1, r4
 8006fda:	4630      	mov	r0, r6
 8006fdc:	f7fe f8a6 	bl	800512c <_fflush_r>
 8006fe0:	b958      	cbnz	r0, 8006ffa <__swbuf_r+0xaa>
 8006fe2:	6822      	ldr	r2, [r4, #0]
 8006fe4:	2301      	movs	r3, #1
 8006fe6:	e7ce      	b.n	8006f86 <__swbuf_r+0x36>
 8006fe8:	f7fe f8fc 	bl	80051e4 <__sinit>
 8006fec:	e7b8      	b.n	8006f60 <__swbuf_r+0x10>
 8006fee:	4621      	mov	r1, r4
 8006ff0:	4630      	mov	r0, r6
 8006ff2:	f7fe f89b 	bl	800512c <_fflush_r>
 8006ff6:	2800      	cmp	r0, #0
 8006ff8:	d0d3      	beq.n	8006fa2 <__swbuf_r+0x52>
 8006ffa:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006ffe:	e7d0      	b.n	8006fa2 <__swbuf_r+0x52>

08007000 <_wcrtomb_r>:
 8007000:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007002:	4c11      	ldr	r4, [pc, #68]	; (8007048 <_wcrtomb_r+0x48>)
 8007004:	6824      	ldr	r4, [r4, #0]
 8007006:	b085      	sub	sp, #20
 8007008:	4606      	mov	r6, r0
 800700a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800700c:	461f      	mov	r7, r3
 800700e:	b151      	cbz	r1, 8007026 <_wcrtomb_r+0x26>
 8007010:	4d0e      	ldr	r5, [pc, #56]	; (800704c <_wcrtomb_r+0x4c>)
 8007012:	2c00      	cmp	r4, #0
 8007014:	bf08      	it	eq
 8007016:	462c      	moveq	r4, r5
 8007018:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800701c:	47a0      	blx	r4
 800701e:	1c43      	adds	r3, r0, #1
 8007020:	d00c      	beq.n	800703c <_wcrtomb_r+0x3c>
 8007022:	b005      	add	sp, #20
 8007024:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007026:	4a09      	ldr	r2, [pc, #36]	; (800704c <_wcrtomb_r+0x4c>)
 8007028:	2c00      	cmp	r4, #0
 800702a:	bf08      	it	eq
 800702c:	4614      	moveq	r4, r2
 800702e:	460a      	mov	r2, r1
 8007030:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007034:	a901      	add	r1, sp, #4
 8007036:	47a0      	blx	r4
 8007038:	1c43      	adds	r3, r0, #1
 800703a:	d1f2      	bne.n	8007022 <_wcrtomb_r+0x22>
 800703c:	2200      	movs	r2, #0
 800703e:	238a      	movs	r3, #138	; 0x8a
 8007040:	603a      	str	r2, [r7, #0]
 8007042:	6033      	str	r3, [r6, #0]
 8007044:	b005      	add	sp, #20
 8007046:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007048:	20000018 	.word	0x20000018
 800704c:	2000085c 	.word	0x2000085c

08007050 <__ascii_wctomb>:
 8007050:	b121      	cbz	r1, 800705c <__ascii_wctomb+0xc>
 8007052:	2aff      	cmp	r2, #255	; 0xff
 8007054:	d804      	bhi.n	8007060 <__ascii_wctomb+0x10>
 8007056:	700a      	strb	r2, [r1, #0]
 8007058:	2001      	movs	r0, #1
 800705a:	4770      	bx	lr
 800705c:	4608      	mov	r0, r1
 800705e:	4770      	bx	lr
 8007060:	238a      	movs	r3, #138	; 0x8a
 8007062:	6003      	str	r3, [r0, #0]
 8007064:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007068:	4770      	bx	lr
 800706a:	bf00      	nop

0800706c <_init>:
 800706c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800706e:	bf00      	nop
 8007070:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007072:	bc08      	pop	{r3}
 8007074:	469e      	mov	lr, r3
 8007076:	4770      	bx	lr

08007078 <_fini>:
 8007078:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800707a:	bf00      	nop
 800707c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800707e:	bc08      	pop	{r3}
 8007080:	469e      	mov	lr, r3
 8007082:	4770      	bx	lr
 8007084:	0000      	movs	r0, r0
	...
