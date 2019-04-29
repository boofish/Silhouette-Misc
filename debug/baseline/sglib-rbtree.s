
sglib-rbtree.elf:     file format elf32-littlearm


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
 80001d8:	20000b58 	.word	0x20000b58
 80001dc:	00000000 	.word	0x00000000
 80001e0:	080073e0 	.word	0x080073e0

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000b5c 	.word	0x20000b5c
 80001fc:	080073e0 	.word	0x080073e0

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
 80010f4:	f000 fbc4 	bl	8001880 <HAL_InitTick>
 80010f8:	2800      	cmp	r0, #0
 80010fa:	bf1c      	itt	ne
 80010fc:	2001      	movne	r0, #1
 80010fe:	bd80      	popne	{r7, pc}
 8001100:	f000 f96e 	bl	80013e0 <HAL_MspInit>
 8001104:	2000      	movs	r0, #0
 8001106:	bd80      	pop	{r7, pc}

08001108 <HAL_IncTick>:
 8001108:	f640 4030 	movw	r0, #3120	; 0xc30
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	f840 1e00 	strt	r1, [r0]
 8001118:	4770      	bx	lr

0800111a <HAL_GetTick>:
 800111a:	f640 4030 	movw	r0, #3120	; 0xc30
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
 80011fc:	f000 80ec 	beq.w	80013d8 <HAL_GPIO_Init+0x20c>
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
 800123a:	f000 80c4 	beq.w	80013c6 <HAL_GPIO_Init+0x1fa>
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
 800129c:	d81b      	bhi.n	80012d6 <HAL_GPIO_Init+0x10a>
 800129e:	2301      	movs	r3, #1
 80012a0:	fa03 f30e 	lsl.w	r3, r3, lr
 80012a4:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 80012a8:	bf1f      	itttt	ne
 80012aa:	6883      	ldrne	r3, [r0, #8]
 80012ac:	4033      	andne	r3, r6
 80012ae:	68cc      	ldrne	r4, [r1, #12]
 80012b0:	4094      	lslne	r4, r2
 80012b2:	bf18      	it	ne
 80012b4:	4323      	orrne	r3, r4
 80012b6:	bf18      	it	ne
 80012b8:	f840 3e08 	strtne	r3, [r0, #8]
 80012bc:	bf18      	it	ne
 80012be:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 80012c2:	bf18      	it	ne
 80012c4:	fa03 f30a 	lslne.w	r3, r3, sl
 80012c8:	bf1f      	itttt	ne
 80012ca:	6844      	ldrne	r4, [r0, #4]
 80012cc:	ea24 040b 	bicne.w	r4, r4, fp
 80012d0:	4323      	orrne	r3, r4
 80012d2:	f840 3e04 	strtne	r3, [r0, #4]
 80012d6:	f1bc 0f03 	cmp.w	ip, #3
 80012da:	d109      	bne.n	80012f0 <HAL_GPIO_Init+0x124>
 80012dc:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012e0:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012e2:	fa03 f30a 	lsl.w	r3, r3, sl
 80012e6:	ea24 040b 	bic.w	r4, r4, fp
 80012ea:	4323      	orrs	r3, r4
 80012ec:	f840 3e2c 	strt	r3, [r0, #44]
 80012f0:	68c3      	ldr	r3, [r0, #12]
 80012f2:	4033      	ands	r3, r6
 80012f4:	688e      	ldr	r6, [r1, #8]
 80012f6:	4096      	lsls	r6, r2
 80012f8:	4333      	orrs	r3, r6
 80012fa:	f840 3e0c 	strt	r3, [r0, #12]
 80012fe:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 8001302:	d560      	bpl.n	80013c6 <HAL_GPIO_Init+0x1fa>
 8001304:	f241 0360 	movw	r3, #4192	; 0x1060
 8001308:	f005 040c 	and.w	r4, r5, #12
 800130c:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001310:	461e      	mov	r6, r3
 8001312:	6833      	ldr	r3, [r6, #0]
 8001314:	f043 0301 	orr.w	r3, r3, #1
 8001318:	f846 3e00 	strt	r3, [r6]
 800131c:	6833      	ldr	r3, [r6, #0]
 800131e:	f240 4600 	movw	r6, #1024	; 0x400
 8001322:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001326:	46b6      	mov	lr, r6
 8001328:	f003 0301 	and.w	r3, r3, #1
 800132c:	f84d 3e04 	strt	r3, [sp, #4]
 8001330:	f02a 0303 	bic.w	r3, sl, #3
 8001334:	9e01      	ldr	r6, [sp, #4]
 8001336:	4473      	add	r3, lr
 8001338:	f64f 4608 	movw	r6, #64520	; 0xfc08
 800133c:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8001340:	46b2      	mov	sl, r6
 8001342:	260f      	movs	r6, #15
 8001344:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001348:	40a6      	lsls	r6, r4
 800134a:	ea2c 0c06 	bic.w	ip, ip, r6
 800134e:	9e00      	ldr	r6, [sp, #0]
 8001350:	fa06 f404 	lsl.w	r4, r6, r4
 8001354:	ea4c 0604 	orr.w	r6, ip, r4
 8001358:	eb03 030a 	add.w	r3, r3, sl
 800135c:	f843 6e00 	strt	r6, [r3]
 8001360:	eba3 030a 	sub.w	r3, r3, sl
 8001364:	f8de 3000 	ldr.w	r3, [lr]
 8001368:	684e      	ldr	r6, [r1, #4]
 800136a:	ea23 0309 	bic.w	r3, r3, r9
 800136e:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 8001372:	bf18      	it	ne
 8001374:	ea43 0309 	orrne.w	r3, r3, r9
 8001378:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 800137c:	f84e 3e00 	strt	r3, [lr]
 8001380:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001384:	ea23 0309 	bic.w	r3, r3, r9
 8001388:	bf18      	it	ne
 800138a:	ea43 0309 	orrne.w	r3, r3, r9
 800138e:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 8001392:	f84e 3e04 	strt	r3, [lr, #4]
 8001396:	f8de 3008 	ldr.w	r3, [lr, #8]
 800139a:	ea23 0309 	bic.w	r3, r3, r9
 800139e:	bf18      	it	ne
 80013a0:	ea43 0309 	orrne.w	r3, r3, r9
 80013a4:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 80013a8:	f84e 3e08 	strt	r3, [lr, #8]
 80013ac:	f240 430c 	movw	r3, #1036	; 0x40c
 80013b0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80013b4:	461c      	mov	r4, r3
 80013b6:	6823      	ldr	r3, [r4, #0]
 80013b8:	ea23 0309 	bic.w	r3, r3, r9
 80013bc:	bf18      	it	ne
 80013be:	ea43 0309 	orrne.w	r3, r3, r9
 80013c2:	f844 3e00 	strt	r3, [r4]
 80013c6:	680e      	ldr	r6, [r1, #0]
 80013c8:	3202      	adds	r2, #2
 80013ca:	3504      	adds	r5, #4
 80013cc:	fa36 f308 	lsrs.w	r3, r6, r8
 80013d0:	f108 0801 	add.w	r8, r8, #1
 80013d4:	f47f af2a 	bne.w	800122c <HAL_GPIO_Init+0x60>
 80013d8:	b002      	add	sp, #8
 80013da:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80013de:	bdf0      	pop	{r4, r5, r6, r7, pc}

080013e0 <HAL_MspInit>:
 80013e0:	4770      	bx	lr

080013e2 <HAL_RCC_GetSysClockFreq>:
 80013e2:	b082      	sub	sp, #8
 80013e4:	f84d 7e00 	strt	r7, [sp]
 80013e8:	f84d ee04 	strt	lr, [sp, #4]
 80013ec:	466f      	mov	r7, sp
 80013ee:	f241 010c 	movw	r1, #4108	; 0x100c
 80013f2:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013f6:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013fa:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013fe:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 8001402:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 8001406:	f851 2c04 	ldr.w	r2, [r1, #-4]
 800140a:	6808      	ldr	r0, [r1, #0]
 800140c:	f012 030c 	ands.w	r3, r2, #12
 8001410:	d005      	beq.n	800141e <HAL_RCC_GetSysClockFreq+0x3c>
 8001412:	2b0c      	cmp	r3, #12
 8001414:	bf04      	itt	eq
 8001416:	f000 0003 	andeq.w	r0, r0, #3
 800141a:	2801      	cmpeq	r0, #1
 800141c:	d118      	bne.n	8001450 <HAL_RCC_GetSysClockFreq+0x6e>
 800141e:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001422:	f010 0f08 	tst.w	r0, #8
 8001426:	d103      	bne.n	8001430 <HAL_RCC_GetSysClockFreq+0x4e>
 8001428:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 800142c:	0a00      	lsrs	r0, r0, #8
 800142e:	e002      	b.n	8001436 <HAL_RCC_GetSysClockFreq+0x54>
 8001430:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001434:	0900      	lsrs	r0, r0, #4
 8001436:	f247 4210 	movw	r2, #29712	; 0x7410
 800143a:	f000 000f 	and.w	r0, r0, #15
 800143e:	2b00      	cmp	r3, #0
 8001440:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001444:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001448:	4610      	mov	r0, r2
 800144a:	bf18      	it	ne
 800144c:	2000      	movne	r0, #0
 800144e:	e00b      	b.n	8001468 <HAL_RCC_GetSysClockFreq+0x86>
 8001450:	f003 000f 	and.w	r0, r3, #15
 8001454:	2804      	cmp	r0, #4
 8001456:	bf04      	itt	eq
 8001458:	4660      	moveq	r0, ip
 800145a:	bd80      	popeq	{r7, pc}
 800145c:	2808      	cmp	r0, #8
 800145e:	bf04      	itt	eq
 8001460:	4670      	moveq	r0, lr
 8001462:	bd80      	popeq	{r7, pc}
 8001464:	2000      	movs	r0, #0
 8001466:	2200      	movs	r2, #0
 8001468:	2b0c      	cmp	r3, #12
 800146a:	bf18      	it	ne
 800146c:	bd80      	popne	{r7, pc}
 800146e:	6808      	ldr	r0, [r1, #0]
 8001470:	f000 0303 	and.w	r3, r0, #3
 8001474:	6808      	ldr	r0, [r1, #0]
 8001476:	2b03      	cmp	r3, #3
 8001478:	f3c0 1002 	ubfx	r0, r0, #4, #3
 800147c:	f100 0001 	add.w	r0, r0, #1
 8001480:	d003      	beq.n	800148a <HAL_RCC_GetSysClockFreq+0xa8>
 8001482:	2b02      	cmp	r3, #2
 8001484:	46e6      	mov	lr, ip
 8001486:	bf18      	it	ne
 8001488:	4696      	movne	lr, r2
 800148a:	680a      	ldr	r2, [r1, #0]
 800148c:	fbbe f0f0 	udiv	r0, lr, r0
 8001490:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001494:	6809      	ldr	r1, [r1, #0]
 8001496:	4350      	muls	r0, r2
 8001498:	2202      	movs	r2, #2
 800149a:	f3c1 6141 	ubfx	r1, r1, #25, #2
 800149e:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 80014a2:	fbb0 f0f1 	udiv	r0, r0, r1
 80014a6:	bd80      	pop	{r7, pc}

080014a8 <HAL_RCC_GetPCLK1Freq>:
 80014a8:	f240 10a4 	movw	r0, #420	; 0x1a4
 80014ac:	f241 0108 	movw	r1, #4104	; 0x1008
 80014b0:	f247 4208 	movw	r2, #29704	; 0x7408
 80014b4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014b8:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014bc:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014c0:	6800      	ldr	r0, [r0, #0]
 80014c2:	6809      	ldr	r1, [r1, #0]
 80014c4:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80014c8:	5c51      	ldrb	r1, [r2, r1]
 80014ca:	f001 011f 	and.w	r1, r1, #31
 80014ce:	40c8      	lsrs	r0, r1
 80014d0:	4770      	bx	lr

080014d2 <HAL_RCC_GetPCLK2Freq>:
 80014d2:	f240 10a4 	movw	r0, #420	; 0x1a4
 80014d6:	f241 0108 	movw	r1, #4104	; 0x1008
 80014da:	f247 4208 	movw	r2, #29704	; 0x7408
 80014de:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014e2:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014e6:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014ea:	6800      	ldr	r0, [r0, #0]
 80014ec:	6809      	ldr	r1, [r1, #0]
 80014ee:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014f2:	5c51      	ldrb	r1, [r2, r1]
 80014f4:	f001 011f 	and.w	r1, r1, #31
 80014f8:	40c8      	lsrs	r0, r1
 80014fa:	4770      	bx	lr

080014fc <HAL_RCC_GetClockConfig>:
 80014fc:	220f      	movs	r2, #15
 80014fe:	6002      	str	r2, [r0, #0]
 8001500:	f241 0208 	movw	r2, #4104	; 0x1008
 8001504:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8001508:	6813      	ldr	r3, [r2, #0]
 800150a:	f003 0303 	and.w	r3, r3, #3
 800150e:	6043      	str	r3, [r0, #4]
 8001510:	6813      	ldr	r3, [r2, #0]
 8001512:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001516:	6083      	str	r3, [r0, #8]
 8001518:	6813      	ldr	r3, [r2, #0]
 800151a:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 800151e:	60c3      	str	r3, [r0, #12]
 8001520:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 8001524:	6812      	ldr	r2, [r2, #0]
 8001526:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 800152a:	6102      	str	r2, [r0, #16]
 800152c:	f242 0000 	movw	r0, #8192	; 0x2000
 8001530:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001534:	6800      	ldr	r0, [r0, #0]
 8001536:	f000 0007 	and.w	r0, r0, #7
 800153a:	6008      	str	r0, [r1, #0]
 800153c:	4770      	bx	lr

0800153e <HAL_TIM_Base_Init>:
 800153e:	b5d0      	push	{r4, r6, r7, lr}
 8001540:	af02      	add	r7, sp, #8
 8001542:	4604      	mov	r4, r0
 8001544:	2c00      	cmp	r4, #0
 8001546:	bf04      	itt	eq
 8001548:	2001      	moveq	r0, #1
 800154a:	bdd0      	popeq	{r4, r6, r7, pc}
 800154c:	6c20      	ldr	r0, [r4, #64]	; 0x40
 800154e:	b920      	cbnz	r0, 800155a <HAL_TIM_Base_Init+0x1c>
 8001550:	2000      	movs	r0, #0
 8001552:	63e0      	str	r0, [r4, #60]	; 0x3c
 8001554:	4620      	mov	r0, r4
 8001556:	f000 f892 	bl	800167e <HAL_TIM_Base_MspInit>
 800155a:	2002      	movs	r0, #2
 800155c:	f640 32ff 	movw	r2, #3071	; 0xbff
 8001560:	6420      	str	r0, [r4, #64]	; 0x40
 8001562:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001566:	6820      	ldr	r0, [r4, #0]
 8001568:	6801      	ldr	r1, [r0, #0]
 800156a:	4290      	cmp	r0, r2
 800156c:	dc0f      	bgt.n	800158e <HAL_TIM_Base_Init+0x50>
 800156e:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001572:	bf1e      	ittt	ne
 8001574:	f240 4200 	movwne	r2, #1024	; 0x400
 8001578:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 800157c:	4290      	cmpne	r0, r2
 800157e:	d018      	beq.n	80015b2 <HAL_TIM_Base_Init+0x74>
 8001580:	f640 0200 	movw	r2, #2048	; 0x800
 8001584:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001588:	4290      	cmp	r0, r2
 800158a:	d012      	beq.n	80015b2 <HAL_TIM_Base_Init+0x74>
 800158c:	e015      	b.n	80015ba <HAL_TIM_Base_Init+0x7c>
 800158e:	f640 4200 	movw	r2, #3072	; 0xc00
 8001592:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001596:	4290      	cmp	r0, r2
 8001598:	bf1e      	ittt	ne
 800159a:	f243 4200 	movwne	r2, #13312	; 0x3400
 800159e:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015a2:	4290      	cmpne	r0, r2
 80015a4:	d005      	beq.n	80015b2 <HAL_TIM_Base_Init+0x74>
 80015a6:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015aa:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015ae:	4290      	cmp	r0, r2
 80015b0:	d103      	bne.n	80015ba <HAL_TIM_Base_Init+0x7c>
 80015b2:	68a2      	ldr	r2, [r4, #8]
 80015b4:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 80015b8:	4311      	orrs	r1, r2
 80015ba:	f642 32ff 	movw	r2, #11263	; 0x2bff
 80015be:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015c2:	4290      	cmp	r0, r2
 80015c4:	dd14      	ble.n	80015f0 <HAL_TIM_Base_Init+0xb2>
 80015c6:	f643 72ff 	movw	r2, #16383	; 0x3fff
 80015ca:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015ce:	4290      	cmp	r0, r2
 80015d0:	dd1a      	ble.n	8001608 <HAL_TIM_Base_Init+0xca>
 80015d2:	f244 0200 	movw	r2, #16384	; 0x4000
 80015d6:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015da:	4290      	cmp	r0, r2
 80015dc:	bf1e      	ittt	ne
 80015de:	f644 0200 	movwne	r2, #18432	; 0x4800
 80015e2:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015e6:	4290      	cmpne	r0, r2
 80015e8:	d027      	beq.n	800163a <HAL_TIM_Base_Init+0xfc>
 80015ea:	f244 4200 	movw	r2, #17408	; 0x4400
 80015ee:	e013      	b.n	8001618 <HAL_TIM_Base_Init+0xda>
 80015f0:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015f4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015f8:	4290      	cmp	r0, r2
 80015fa:	dc12      	bgt.n	8001622 <HAL_TIM_Base_Init+0xe4>
 80015fc:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001600:	d01b      	beq.n	800163a <HAL_TIM_Base_Init+0xfc>
 8001602:	f240 4200 	movw	r2, #1024	; 0x400
 8001606:	e014      	b.n	8001632 <HAL_TIM_Base_Init+0xf4>
 8001608:	f642 4200 	movw	r2, #11264	; 0x2c00
 800160c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001610:	4290      	cmp	r0, r2
 8001612:	d012      	beq.n	800163a <HAL_TIM_Base_Init+0xfc>
 8001614:	f243 4200 	movw	r2, #13312	; 0x3400
 8001618:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800161c:	4290      	cmp	r0, r2
 800161e:	d00c      	beq.n	800163a <HAL_TIM_Base_Init+0xfc>
 8001620:	e00f      	b.n	8001642 <HAL_TIM_Base_Init+0x104>
 8001622:	f640 0200 	movw	r2, #2048	; 0x800
 8001626:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800162a:	4290      	cmp	r0, r2
 800162c:	d005      	beq.n	800163a <HAL_TIM_Base_Init+0xfc>
 800162e:	f640 4200 	movw	r2, #3072	; 0xc00
 8001632:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001636:	4290      	cmp	r0, r2
 8001638:	d103      	bne.n	8001642 <HAL_TIM_Base_Init+0x104>
 800163a:	6922      	ldr	r2, [r4, #16]
 800163c:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 8001640:	4311      	orrs	r1, r2
 8001642:	69a2      	ldr	r2, [r4, #24]
 8001644:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001648:	4311      	orrs	r1, r2
 800164a:	6001      	str	r1, [r0, #0]
 800164c:	68e1      	ldr	r1, [r4, #12]
 800164e:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001650:	6861      	ldr	r1, [r4, #4]
 8001652:	6281      	str	r1, [r0, #40]	; 0x28
 8001654:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001658:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 800165c:	ea4f 21b1 	mov.w	r1, r1, ror #10
 8001660:	2907      	cmp	r1, #7
 8001662:	d807      	bhi.n	8001674 <HAL_TIM_Base_Init+0x136>
 8001664:	2201      	movs	r2, #1
 8001666:	fa02 f101 	lsl.w	r1, r2, r1
 800166a:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 800166e:	bf1c      	itt	ne
 8001670:	6961      	ldrne	r1, [r4, #20]
 8001672:	6301      	strne	r1, [r0, #48]	; 0x30
 8001674:	2101      	movs	r1, #1
 8001676:	6141      	str	r1, [r0, #20]
 8001678:	2000      	movs	r0, #0
 800167a:	6421      	str	r1, [r4, #64]	; 0x40
 800167c:	bdd0      	pop	{r4, r6, r7, pc}

0800167e <HAL_TIM_Base_MspInit>:
 800167e:	4770      	bx	lr

08001680 <HAL_TIM_Base_Start_IT>:
 8001680:	6800      	ldr	r0, [r0, #0]
 8001682:	68c1      	ldr	r1, [r0, #12]
 8001684:	f041 0101 	orr.w	r1, r1, #1
 8001688:	60c1      	str	r1, [r0, #12]
 800168a:	2107      	movs	r1, #7
 800168c:	6882      	ldr	r2, [r0, #8]
 800168e:	f2c0 0101 	movt	r1, #1
 8001692:	400a      	ands	r2, r1
 8001694:	2a06      	cmp	r2, #6
 8001696:	d008      	beq.n	80016aa <HAL_TIM_Base_Start_IT+0x2a>
 8001698:	6882      	ldr	r2, [r0, #8]
 800169a:	4011      	ands	r1, r2
 800169c:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80016a0:	bf1e      	ittt	ne
 80016a2:	6801      	ldrne	r1, [r0, #0]
 80016a4:	f041 0101 	orrne.w	r1, r1, #1
 80016a8:	6001      	strne	r1, [r0, #0]
 80016aa:	2000      	movs	r0, #0
 80016ac:	4770      	bx	lr

080016ae <HAL_TIM_IRQHandler>:
 80016ae:	b084      	sub	sp, #16
 80016b0:	f84d 4e00 	strt	r4, [sp]
 80016b4:	f84d 6e04 	strt	r6, [sp, #4]
 80016b8:	f84d 7e08 	strt	r7, [sp, #8]
 80016bc:	f84d ee0c 	strt	lr, [sp, #12]
 80016c0:	af02      	add	r7, sp, #8
 80016c2:	4604      	mov	r4, r0
 80016c4:	6820      	ldr	r0, [r4, #0]
 80016c6:	6901      	ldr	r1, [r0, #16]
 80016c8:	f011 0f02 	tst.w	r1, #2
 80016cc:	bf1c      	itt	ne
 80016ce:	68c1      	ldrne	r1, [r0, #12]
 80016d0:	f011 0f02 	tstne.w	r1, #2
 80016d4:	d018      	beq.n	8001708 <HAL_TIM_IRQHandler+0x5a>
 80016d6:	f06f 0102 	mvn.w	r1, #2
 80016da:	f840 1e10 	strt	r1, [r0, #16]
 80016de:	2101      	movs	r1, #1
 80016e0:	f844 1e1c 	strt	r1, [r4, #28]
 80016e4:	6980      	ldr	r0, [r0, #24]
 80016e6:	f010 0f03 	tst.w	r0, #3
 80016ea:	d003      	beq.n	80016f4 <HAL_TIM_IRQHandler+0x46>
 80016ec:	4620      	mov	r0, r4
 80016ee:	f000 f8c0 	bl	8001872 <HAL_TIM_IC_CaptureCallback>
 80016f2:	e005      	b.n	8001700 <HAL_TIM_IRQHandler+0x52>
 80016f4:	4620      	mov	r0, r4
 80016f6:	f000 f8bd 	bl	8001874 <HAL_TIM_OC_DelayElapsedCallback>
 80016fa:	4620      	mov	r0, r4
 80016fc:	f000 f8bb 	bl	8001876 <HAL_TIM_PWM_PulseFinishedCallback>
 8001700:	2000      	movs	r0, #0
 8001702:	f844 0e1c 	strt	r0, [r4, #28]
 8001706:	6820      	ldr	r0, [r4, #0]
 8001708:	6901      	ldr	r1, [r0, #16]
 800170a:	f011 0f04 	tst.w	r1, #4
 800170e:	bf1c      	itt	ne
 8001710:	68c1      	ldrne	r1, [r0, #12]
 8001712:	f011 0f04 	tstne.w	r1, #4
 8001716:	d018      	beq.n	800174a <HAL_TIM_IRQHandler+0x9c>
 8001718:	f06f 0104 	mvn.w	r1, #4
 800171c:	f840 1e10 	strt	r1, [r0, #16]
 8001720:	2102      	movs	r1, #2
 8001722:	f844 1e1c 	strt	r1, [r4, #28]
 8001726:	6980      	ldr	r0, [r0, #24]
 8001728:	f410 7f40 	tst.w	r0, #768	; 0x300
 800172c:	d003      	beq.n	8001736 <HAL_TIM_IRQHandler+0x88>
 800172e:	4620      	mov	r0, r4
 8001730:	f000 f89f 	bl	8001872 <HAL_TIM_IC_CaptureCallback>
 8001734:	e005      	b.n	8001742 <HAL_TIM_IRQHandler+0x94>
 8001736:	4620      	mov	r0, r4
 8001738:	f000 f89c 	bl	8001874 <HAL_TIM_OC_DelayElapsedCallback>
 800173c:	4620      	mov	r0, r4
 800173e:	f000 f89a 	bl	8001876 <HAL_TIM_PWM_PulseFinishedCallback>
 8001742:	2000      	movs	r0, #0
 8001744:	f844 0e1c 	strt	r0, [r4, #28]
 8001748:	6820      	ldr	r0, [r4, #0]
 800174a:	6901      	ldr	r1, [r0, #16]
 800174c:	f011 0f08 	tst.w	r1, #8
 8001750:	bf1c      	itt	ne
 8001752:	68c1      	ldrne	r1, [r0, #12]
 8001754:	f011 0f08 	tstne.w	r1, #8
 8001758:	d018      	beq.n	800178c <HAL_TIM_IRQHandler+0xde>
 800175a:	f06f 0108 	mvn.w	r1, #8
 800175e:	f840 1e10 	strt	r1, [r0, #16]
 8001762:	2104      	movs	r1, #4
 8001764:	f844 1e1c 	strt	r1, [r4, #28]
 8001768:	69c0      	ldr	r0, [r0, #28]
 800176a:	f010 0f03 	tst.w	r0, #3
 800176e:	d003      	beq.n	8001778 <HAL_TIM_IRQHandler+0xca>
 8001770:	4620      	mov	r0, r4
 8001772:	f000 f87e 	bl	8001872 <HAL_TIM_IC_CaptureCallback>
 8001776:	e005      	b.n	8001784 <HAL_TIM_IRQHandler+0xd6>
 8001778:	4620      	mov	r0, r4
 800177a:	f000 f87b 	bl	8001874 <HAL_TIM_OC_DelayElapsedCallback>
 800177e:	4620      	mov	r0, r4
 8001780:	f000 f879 	bl	8001876 <HAL_TIM_PWM_PulseFinishedCallback>
 8001784:	2000      	movs	r0, #0
 8001786:	f844 0e1c 	strt	r0, [r4, #28]
 800178a:	6820      	ldr	r0, [r4, #0]
 800178c:	6901      	ldr	r1, [r0, #16]
 800178e:	f011 0f10 	tst.w	r1, #16
 8001792:	bf1c      	itt	ne
 8001794:	68c1      	ldrne	r1, [r0, #12]
 8001796:	f011 0f10 	tstne.w	r1, #16
 800179a:	d018      	beq.n	80017ce <HAL_TIM_IRQHandler+0x120>
 800179c:	f06f 0110 	mvn.w	r1, #16
 80017a0:	f840 1e10 	strt	r1, [r0, #16]
 80017a4:	2108      	movs	r1, #8
 80017a6:	f844 1e1c 	strt	r1, [r4, #28]
 80017aa:	69c0      	ldr	r0, [r0, #28]
 80017ac:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017b0:	d003      	beq.n	80017ba <HAL_TIM_IRQHandler+0x10c>
 80017b2:	4620      	mov	r0, r4
 80017b4:	f000 f85d 	bl	8001872 <HAL_TIM_IC_CaptureCallback>
 80017b8:	e005      	b.n	80017c6 <HAL_TIM_IRQHandler+0x118>
 80017ba:	4620      	mov	r0, r4
 80017bc:	f000 f85a 	bl	8001874 <HAL_TIM_OC_DelayElapsedCallback>
 80017c0:	4620      	mov	r0, r4
 80017c2:	f000 f858 	bl	8001876 <HAL_TIM_PWM_PulseFinishedCallback>
 80017c6:	2000      	movs	r0, #0
 80017c8:	f844 0e1c 	strt	r0, [r4, #28]
 80017cc:	6820      	ldr	r0, [r4, #0]
 80017ce:	6901      	ldr	r1, [r0, #16]
 80017d0:	f011 0f01 	tst.w	r1, #1
 80017d4:	bf1c      	itt	ne
 80017d6:	68c1      	ldrne	r1, [r0, #12]
 80017d8:	f011 0f01 	tstne.w	r1, #1
 80017dc:	d007      	beq.n	80017ee <HAL_TIM_IRQHandler+0x140>
 80017de:	f06f 0101 	mvn.w	r1, #1
 80017e2:	f840 1e10 	strt	r1, [r0, #16]
 80017e6:	4620      	mov	r0, r4
 80017e8:	f000 f898 	bl	800191c <HAL_TIM_PeriodElapsedCallback>
 80017ec:	6820      	ldr	r0, [r4, #0]
 80017ee:	6901      	ldr	r1, [r0, #16]
 80017f0:	f011 0f80 	tst.w	r1, #128	; 0x80
 80017f4:	bf1c      	itt	ne
 80017f6:	68c1      	ldrne	r1, [r0, #12]
 80017f8:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017fc:	d007      	beq.n	800180e <HAL_TIM_IRQHandler+0x160>
 80017fe:	f06f 0180 	mvn.w	r1, #128	; 0x80
 8001802:	f840 1e10 	strt	r1, [r0, #16]
 8001806:	4620      	mov	r0, r4
 8001808:	f000 f838 	bl	800187c <HAL_TIMEx_BreakCallback>
 800180c:	6820      	ldr	r0, [r4, #0]
 800180e:	6901      	ldr	r1, [r0, #16]
 8001810:	f411 7f80 	tst.w	r1, #256	; 0x100
 8001814:	bf1c      	itt	ne
 8001816:	68c1      	ldrne	r1, [r0, #12]
 8001818:	f011 0f80 	tstne.w	r1, #128	; 0x80
 800181c:	d007      	beq.n	800182e <HAL_TIM_IRQHandler+0x180>
 800181e:	f46f 7180 	mvn.w	r1, #256	; 0x100
 8001822:	f840 1e10 	strt	r1, [r0, #16]
 8001826:	4620      	mov	r0, r4
 8001828:	f000 f829 	bl	800187e <HAL_TIMEx_Break2Callback>
 800182c:	6820      	ldr	r0, [r4, #0]
 800182e:	6901      	ldr	r1, [r0, #16]
 8001830:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001834:	bf1c      	itt	ne
 8001836:	68c1      	ldrne	r1, [r0, #12]
 8001838:	f011 0f40 	tstne.w	r1, #64	; 0x40
 800183c:	d007      	beq.n	800184e <HAL_TIM_IRQHandler+0x1a0>
 800183e:	f06f 0140 	mvn.w	r1, #64	; 0x40
 8001842:	f840 1e10 	strt	r1, [r0, #16]
 8001846:	4620      	mov	r0, r4
 8001848:	f000 f816 	bl	8001878 <HAL_TIM_TriggerCallback>
 800184c:	6820      	ldr	r0, [r4, #0]
 800184e:	6901      	ldr	r1, [r0, #16]
 8001850:	f011 0f20 	tst.w	r1, #32
 8001854:	bf1c      	itt	ne
 8001856:	68c1      	ldrne	r1, [r0, #12]
 8001858:	f011 0f20 	tstne.w	r1, #32
 800185c:	d100      	bne.n	8001860 <HAL_TIM_IRQHandler+0x1b2>
 800185e:	bdd0      	pop	{r4, r6, r7, pc}
 8001860:	f06f 0120 	mvn.w	r1, #32
 8001864:	f840 1e10 	strt	r1, [r0, #16]
 8001868:	4620      	mov	r0, r4
 800186a:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 800186e:	f000 b804 	b.w	800187a <HAL_TIMEx_CommutationCallback>

08001872 <HAL_TIM_IC_CaptureCallback>:
 8001872:	4770      	bx	lr

08001874 <HAL_TIM_OC_DelayElapsedCallback>:
 8001874:	4770      	bx	lr

08001876 <HAL_TIM_PWM_PulseFinishedCallback>:
 8001876:	4770      	bx	lr

08001878 <HAL_TIM_TriggerCallback>:
 8001878:	4770      	bx	lr

0800187a <HAL_TIMEx_CommutationCallback>:
 800187a:	4770      	bx	lr

0800187c <HAL_TIMEx_BreakCallback>:
 800187c:	4770      	bx	lr

0800187e <HAL_TIMEx_Break2Callback>:
 800187e:	4770      	bx	lr

08001880 <HAL_InitTick>:
 8001880:	b5b0      	push	{r4, r5, r7, lr}
 8001882:	af02      	add	r7, sp, #8
 8001884:	b086      	sub	sp, #24
 8001886:	4601      	mov	r1, r0
 8001888:	2036      	movs	r0, #54	; 0x36
 800188a:	2200      	movs	r2, #0
 800188c:	2400      	movs	r4, #0
 800188e:	f7ff fc5a 	bl	8001146 <HAL_NVIC_SetPriority>
 8001892:	2036      	movs	r0, #54	; 0x36
 8001894:	f7ff fc8a 	bl	80011ac <HAL_NVIC_EnableIRQ>
 8001898:	f241 0058 	movw	r0, #4184	; 0x1058
 800189c:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80018a0:	6801      	ldr	r1, [r0, #0]
 80018a2:	f041 0110 	orr.w	r1, r1, #16
 80018a6:	6001      	str	r1, [r0, #0]
 80018a8:	4669      	mov	r1, sp
 80018aa:	6800      	ldr	r0, [r0, #0]
 80018ac:	f000 0010 	and.w	r0, r0, #16
 80018b0:	9001      	str	r0, [sp, #4]
 80018b2:	9801      	ldr	r0, [sp, #4]
 80018b4:	a801      	add	r0, sp, #4
 80018b6:	f7ff fe21 	bl	80014fc <HAL_RCC_GetClockConfig>
 80018ba:	9d04      	ldr	r5, [sp, #16]
 80018bc:	f7ff fdf4 	bl	80014a8 <HAL_RCC_GetPCLK1Freq>
 80018c0:	2d00      	cmp	r5, #0
 80018c2:	f640 4134 	movw	r1, #3124	; 0xc34
 80018c6:	f241 0200 	movw	r2, #4096	; 0x1000
 80018ca:	f240 33e7 	movw	r3, #999	; 0x3e7
 80018ce:	bf18      	it	ne
 80018d0:	2501      	movne	r5, #1
 80018d2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80018d6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80018da:	40a8      	lsls	r0, r5
 80018dc:	f64d 6583 	movw	r5, #56963	; 0xde83
 80018e0:	618c      	str	r4, [r1, #24]
 80018e2:	f2c4 351b 	movt	r5, #17179	; 0x431b
 80018e6:	fba0 0505 	umull	r0, r5, r0, r5
 80018ea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80018ee:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 80018f2:	e9c1 2000 	strd	r2, r0, [r1]
 80018f6:	4608      	mov	r0, r1
 80018f8:	e9c1 4302 	strd	r4, r3, [r1, #8]
 80018fc:	610c      	str	r4, [r1, #16]
 80018fe:	f7ff fe1e 	bl	800153e <HAL_TIM_Base_Init>
 8001902:	2800      	cmp	r0, #0
 8001904:	bf1e      	ittt	ne
 8001906:	2001      	movne	r0, #1
 8001908:	b006      	addne	sp, #24
 800190a:	bdb0      	popne	{r4, r5, r7, pc}
 800190c:	f640 4034 	movw	r0, #3124	; 0xc34
 8001910:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001914:	f7ff feb4 	bl	8001680 <HAL_TIM_Base_Start_IT>
 8001918:	b006      	add	sp, #24
 800191a:	bdb0      	pop	{r4, r5, r7, pc}

0800191c <HAL_TIM_PeriodElapsedCallback>:
 800191c:	f7ff bbf4 	b.w	8001108 <HAL_IncTick>

08001920 <TIM6_DAC_IRQHandler>:
 8001920:	f640 4034 	movw	r0, #3124	; 0xc34
 8001924:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001928:	f7ff bec1 	b.w	80016ae <HAL_TIM_IRQHandler>

0800192c <HAL_UART_Init>:
 800192c:	b084      	sub	sp, #16
 800192e:	f84d 4e00 	strt	r4, [sp]
 8001932:	f84d 6e04 	strt	r6, [sp, #4]
 8001936:	f84d 7e08 	strt	r7, [sp, #8]
 800193a:	f84d ee0c 	strt	lr, [sp, #12]
 800193e:	af02      	add	r7, sp, #8
 8001940:	4604      	mov	r4, r0
 8001942:	b1ac      	cbz	r4, 8001970 <HAL_UART_Init+0x44>
 8001944:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001946:	b928      	cbnz	r0, 8001954 <HAL_UART_Init+0x28>
 8001948:	2000      	movs	r0, #0
 800194a:	f844 0e70 	strt	r0, [r4, #112]
 800194e:	4620      	mov	r0, r4
 8001950:	f000 f82b 	bl	80019aa <HAL_UART_MspInit>
 8001954:	2024      	movs	r0, #36	; 0x24
 8001956:	f844 0e74 	strt	r0, [r4, #116]
 800195a:	6820      	ldr	r0, [r4, #0]
 800195c:	6801      	ldr	r1, [r0, #0]
 800195e:	f021 0101 	bic.w	r1, r1, #1
 8001962:	f840 1e00 	strt	r1, [r0]
 8001966:	4620      	mov	r0, r4
 8001968:	f000 f820 	bl	80019ac <UART_SetConfig>
 800196c:	2801      	cmp	r0, #1
 800196e:	d101      	bne.n	8001974 <HAL_UART_Init+0x48>
 8001970:	2001      	movs	r0, #1
 8001972:	bdd0      	pop	{r4, r6, r7, pc}
 8001974:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001976:	2800      	cmp	r0, #0
 8001978:	bf1c      	itt	ne
 800197a:	4620      	movne	r0, r4
 800197c:	f000 f955 	blne	8001c2a <UART_AdvFeatureConfig>
 8001980:	6820      	ldr	r0, [r4, #0]
 8001982:	6841      	ldr	r1, [r0, #4]
 8001984:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001988:	f840 1e04 	strt	r1, [r0, #4]
 800198c:	6881      	ldr	r1, [r0, #8]
 800198e:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001992:	f840 1e08 	strt	r1, [r0, #8]
 8001996:	6801      	ldr	r1, [r0, #0]
 8001998:	f041 0101 	orr.w	r1, r1, #1
 800199c:	f840 1e00 	strt	r1, [r0]
 80019a0:	4620      	mov	r0, r4
 80019a2:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80019a6:	f000 b9b6 	b.w	8001d16 <UART_CheckIdleState>

080019aa <HAL_UART_MspInit>:
 80019aa:	4770      	bx	lr

080019ac <UART_SetConfig>:
 80019ac:	b084      	sub	sp, #16
 80019ae:	f84d 4e00 	strt	r4, [sp]
 80019b2:	f84d 5e04 	strt	r5, [sp, #4]
 80019b6:	f84d 7e08 	strt	r7, [sp, #8]
 80019ba:	f84d ee0c 	strt	lr, [sp, #12]
 80019be:	af02      	add	r7, sp, #8
 80019c0:	4604      	mov	r4, r0
 80019c2:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019c6:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019ca:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019ce:	6821      	ldr	r1, [r4, #0]
 80019d0:	68a0      	ldr	r0, [r4, #8]
 80019d2:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019d6:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019da:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019de:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019e2:	4310      	orrs	r0, r2
 80019e4:	69e2      	ldr	r2, [r4, #28]
 80019e6:	4571      	cmp	r1, lr
 80019e8:	ea40 0003 	orr.w	r0, r0, r3
 80019ec:	680b      	ldr	r3, [r1, #0]
 80019ee:	ea40 0002 	orr.w	r0, r0, r2
 80019f2:	ea03 0305 	and.w	r3, r3, r5
 80019f6:	f04f 0510 	mov.w	r5, #16
 80019fa:	ea40 0003 	orr.w	r0, r0, r3
 80019fe:	f841 0e00 	strt	r0, [r1]
 8001a02:	6848      	ldr	r0, [r1, #4]
 8001a04:	68e3      	ldr	r3, [r4, #12]
 8001a06:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a0a:	ea40 0003 	orr.w	r0, r0, r3
 8001a0e:	f841 0e04 	strt	r0, [r1, #4]
 8001a12:	69a0      	ldr	r0, [r4, #24]
 8001a14:	bf1c      	itt	ne
 8001a16:	6a23      	ldrne	r3, [r4, #32]
 8001a18:	4318      	orrne	r0, r3
 8001a1a:	688b      	ldr	r3, [r1, #8]
 8001a1c:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a20:	4318      	orrs	r0, r3
 8001a22:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a26:	f841 0e08 	strt	r0, [r1, #8]
 8001a2a:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a2e:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a32:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a36:	4299      	cmp	r1, r3
 8001a38:	dc15      	bgt.n	8001a66 <UART_SetConfig+0xba>
 8001a3a:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a3e:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a42:	4299      	cmp	r1, r3
 8001a44:	d024      	beq.n	8001a90 <UART_SetConfig+0xe4>
 8001a46:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a4a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a4e:	4299      	cmp	r1, r3
 8001a50:	d022      	beq.n	8001a98 <UART_SetConfig+0xec>
 8001a52:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a56:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a5a:	4299      	cmp	r1, r3
 8001a5c:	d131      	bne.n	8001ac2 <UART_SetConfig+0x116>
 8001a5e:	f8dc 3000 	ldr.w	r3, [ip]
 8001a62:	099d      	lsrs	r5, r3, #6
 8001a64:	e023      	b.n	8001aae <UART_SetConfig+0x102>
 8001a66:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a6a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a6e:	4299      	cmp	r1, r3
 8001a70:	d016      	beq.n	8001aa0 <UART_SetConfig+0xf4>
 8001a72:	4571      	cmp	r1, lr
 8001a74:	d018      	beq.n	8001aa8 <UART_SetConfig+0xfc>
 8001a76:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a7a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a7e:	4299      	cmp	r1, r3
 8001a80:	d11f      	bne.n	8001ac2 <UART_SetConfig+0x116>
 8001a82:	f8dc 5000 	ldr.w	r5, [ip]
 8001a86:	f247 4340 	movw	r3, #29760	; 0x7440
 8001a8a:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a8e:	e012      	b.n	8001ab6 <UART_SetConfig+0x10a>
 8001a90:	f8dc 3000 	ldr.w	r3, [ip]
 8001a94:	089d      	lsrs	r5, r3, #2
 8001a96:	e00a      	b.n	8001aae <UART_SetConfig+0x102>
 8001a98:	f8dc 3000 	ldr.w	r3, [ip]
 8001a9c:	091d      	lsrs	r5, r3, #4
 8001a9e:	e006      	b.n	8001aae <UART_SetConfig+0x102>
 8001aa0:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa4:	0a1d      	lsrs	r5, r3, #8
 8001aa6:	e002      	b.n	8001aae <UART_SetConfig+0x102>
 8001aa8:	f8dc 3000 	ldr.w	r3, [ip]
 8001aac:	0a9d      	lsrs	r5, r3, #10
 8001aae:	f247 4350 	movw	r3, #29776	; 0x7450
 8001ab2:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001ab6:	f005 0503 	and.w	r5, r5, #3
 8001aba:	f085 0502 	eor.w	r5, r5, #2
 8001abe:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001ac2:	4571      	cmp	r1, lr
 8001ac4:	d012      	beq.n	8001aec <UART_SetConfig+0x140>
 8001ac6:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001aca:	d11d      	bne.n	8001b08 <UART_SetConfig+0x15c>
 8001acc:	f005 001f 	and.w	r0, r5, #31
 8001ad0:	2101      	movs	r1, #1
 8001ad2:	2808      	cmp	r0, #8
 8001ad4:	f200 80a0 	bhi.w	8001c18 <UART_SetConfig+0x26c>
 8001ad8:	e8df f000 	tbb	[pc, r0]
 8001adc:	9e434005 	.word	0x9e434005
 8001ae0:	9e9e9e49 	.word	0x9e9e9e49
 8001ae4:	004f      	.short	0x004f
 8001ae6:	f7ff fcdf 	bl	80014a8 <HAL_RCC_GetPCLK1Freq>
 8001aea:	e042      	b.n	8001b72 <UART_SetConfig+0x1c6>
 8001aec:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001af0:	2101      	movs	r1, #1
 8001af2:	2d04      	cmp	r5, #4
 8001af4:	f200 8090 	bhi.w	8001c18 <UART_SetConfig+0x26c>
 8001af8:	e8df f005 	tbb	[pc, r5]
 8001afc:	8e161c03 	.word	0x8e161c03
 8001b00:	001a      	.short	0x001a
 8001b02:	f7ff fcd1 	bl	80014a8 <HAL_RCC_GetPCLK1Freq>
 8001b06:	e011      	b.n	8001b2c <UART_SetConfig+0x180>
 8001b08:	f005 021f 	and.w	r2, r5, #31
 8001b0c:	2101      	movs	r1, #1
 8001b0e:	2a08      	cmp	r2, #8
 8001b10:	f200 8082 	bhi.w	8001c18 <UART_SetConfig+0x26c>
 8001b14:	e8df f002 	tbb	[pc, r2]
 8001b18:	80464305 	.word	0x80464305
 8001b1c:	80808048 	.word	0x80808048
 8001b20:	004e      	.short	0x004e
 8001b22:	f7ff fcc1 	bl	80014a8 <HAL_RCC_GetPCLK1Freq>
 8001b26:	e041      	b.n	8001bac <UART_SetConfig+0x200>
 8001b28:	f7ff fc5b 	bl	80013e2 <HAL_RCC_GetSysClockFreq>
 8001b2c:	b910      	cbnz	r0, 8001b34 <UART_SetConfig+0x188>
 8001b2e:	e072      	b.n	8001c16 <UART_SetConfig+0x26a>
 8001b30:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b34:	6862      	ldr	r2, [r4, #4]
 8001b36:	2101      	movs	r1, #1
 8001b38:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b3c:	4298      	cmp	r0, r3
 8001b3e:	d36b      	bcc.n	8001c18 <UART_SetConfig+0x26c>
 8001b40:	0313      	lsls	r3, r2, #12
 8001b42:	4298      	cmp	r0, r3
 8001b44:	bf9c      	itt	ls
 8001b46:	2101      	movls	r1, #1
 8001b48:	2d04      	cmpls	r5, #4
 8001b4a:	d865      	bhi.n	8001c18 <UART_SetConfig+0x26c>
 8001b4c:	e8df f005 	tbb	[pc, r5]
 8001b50:	64453e03 	.word	0x64453e03
 8001b54:	0052      	.short	0x0052
 8001b56:	f7ff fca7 	bl	80014a8 <HAL_RCC_GetPCLK1Freq>
 8001b5a:	e040      	b.n	8001bde <UART_SetConfig+0x232>
 8001b5c:	f7ff fcb9 	bl	80014d2 <HAL_RCC_GetPCLK2Freq>
 8001b60:	e007      	b.n	8001b72 <UART_SetConfig+0x1c6>
 8001b62:	6861      	ldr	r1, [r4, #4]
 8001b64:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b68:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b6c:	e008      	b.n	8001b80 <UART_SetConfig+0x1d4>
 8001b6e:	f7ff fc38 	bl	80013e2 <HAL_RCC_GetSysClockFreq>
 8001b72:	6861      	ldr	r1, [r4, #4]
 8001b74:	0040      	lsls	r0, r0, #1
 8001b76:	084a      	lsrs	r2, r1, #1
 8001b78:	e003      	b.n	8001b82 <UART_SetConfig+0x1d6>
 8001b7a:	6861      	ldr	r1, [r4, #4]
 8001b7c:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b80:	0848      	lsrs	r0, r1, #1
 8001b82:	4410      	add	r0, r2
 8001b84:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b88:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b8c:	4001      	ands	r1, r0
 8001b8e:	2910      	cmp	r1, #16
 8001b90:	d303      	bcc.n	8001b9a <UART_SetConfig+0x1ee>
 8001b92:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b96:	4308      	orrs	r0, r1
 8001b98:	e03a      	b.n	8001c10 <UART_SetConfig+0x264>
 8001b9a:	2101      	movs	r1, #1
 8001b9c:	e03c      	b.n	8001c18 <UART_SetConfig+0x26c>
 8001b9e:	f7ff fc98 	bl	80014d2 <HAL_RCC_GetPCLK2Freq>
 8001ba2:	e003      	b.n	8001bac <UART_SetConfig+0x200>
 8001ba4:	6862      	ldr	r2, [r4, #4]
 8001ba6:	e008      	b.n	8001bba <UART_SetConfig+0x20e>
 8001ba8:	f7ff fc1b 	bl	80013e2 <HAL_RCC_GetSysClockFreq>
 8001bac:	6862      	ldr	r2, [r4, #4]
 8001bae:	4601      	mov	r1, r0
 8001bb0:	0850      	lsrs	r0, r2, #1
 8001bb2:	e003      	b.n	8001bbc <UART_SetConfig+0x210>
 8001bb4:	6862      	ldr	r2, [r4, #4]
 8001bb6:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bba:	0851      	lsrs	r1, r2, #1
 8001bbc:	4408      	add	r0, r1
 8001bbe:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bc2:	b280      	uxth	r0, r0
 8001bc4:	2810      	cmp	r0, #16
 8001bc6:	d223      	bcs.n	8001c10 <UART_SetConfig+0x264>
 8001bc8:	2101      	movs	r1, #1
 8001bca:	e025      	b.n	8001c18 <UART_SetConfig+0x26c>
 8001bcc:	2000      	movs	r0, #0
 8001bce:	2100      	movs	r1, #0
 8001bd0:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001bd4:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001bd8:	e006      	b.n	8001be8 <UART_SetConfig+0x23c>
 8001bda:	f7ff fc02 	bl	80013e2 <HAL_RCC_GetSysClockFreq>
 8001bde:	6862      	ldr	r2, [r4, #4]
 8001be0:	0e01      	lsrs	r1, r0, #24
 8001be2:	0853      	lsrs	r3, r2, #1
 8001be4:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001be8:	f141 0100 	adc.w	r1, r1, #0
 8001bec:	2300      	movs	r3, #0
 8001bee:	f7fe fb07 	bl	8000200 <__aeabi_uldivmod>
 8001bf2:	e005      	b.n	8001c00 <UART_SetConfig+0x254>
 8001bf4:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001bf8:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001bfc:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c00:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c04:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c08:	f2c0 020f 	movt	r2, #15
 8001c0c:	4291      	cmp	r1, r2
 8001c0e:	d80a      	bhi.n	8001c26 <UART_SetConfig+0x27a>
 8001c10:	6821      	ldr	r1, [r4, #0]
 8001c12:	f841 0e0c 	strt	r0, [r1, #12]
 8001c16:	2100      	movs	r1, #0
 8001c18:	2000      	movs	r0, #0
 8001c1a:	f844 0e60 	strt	r0, [r4, #96]
 8001c1e:	f844 0e64 	strt	r0, [r4, #100]
 8001c22:	4608      	mov	r0, r1
 8001c24:	bdb0      	pop	{r4, r5, r7, pc}
 8001c26:	2101      	movs	r1, #1
 8001c28:	e7f6      	b.n	8001c18 <UART_SetConfig+0x26c>

08001c2a <UART_AdvFeatureConfig>:
 8001c2a:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c2c:	f011 0f01 	tst.w	r1, #1
 8001c30:	d009      	beq.n	8001c46 <UART_AdvFeatureConfig+0x1c>
 8001c32:	6802      	ldr	r2, [r0, #0]
 8001c34:	6853      	ldr	r3, [r2, #4]
 8001c36:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c3a:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c3e:	ea43 030c 	orr.w	r3, r3, ip
 8001c42:	f842 3e04 	strt	r3, [r2, #4]
 8001c46:	078a      	lsls	r2, r1, #30
 8001c48:	d509      	bpl.n	8001c5e <UART_AdvFeatureConfig+0x34>
 8001c4a:	6802      	ldr	r2, [r0, #0]
 8001c4c:	6853      	ldr	r3, [r2, #4]
 8001c4e:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c52:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c56:	ea43 030c 	orr.w	r3, r3, ip
 8001c5a:	f842 3e04 	strt	r3, [r2, #4]
 8001c5e:	074a      	lsls	r2, r1, #29
 8001c60:	d509      	bpl.n	8001c76 <UART_AdvFeatureConfig+0x4c>
 8001c62:	6802      	ldr	r2, [r0, #0]
 8001c64:	6853      	ldr	r3, [r2, #4]
 8001c66:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c6a:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c6e:	ea43 030c 	orr.w	r3, r3, ip
 8001c72:	f842 3e04 	strt	r3, [r2, #4]
 8001c76:	070a      	lsls	r2, r1, #28
 8001c78:	d509      	bpl.n	8001c8e <UART_AdvFeatureConfig+0x64>
 8001c7a:	6802      	ldr	r2, [r0, #0]
 8001c7c:	6853      	ldr	r3, [r2, #4]
 8001c7e:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c82:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c86:	ea43 030c 	orr.w	r3, r3, ip
 8001c8a:	f842 3e04 	strt	r3, [r2, #4]
 8001c8e:	06ca      	lsls	r2, r1, #27
 8001c90:	d509      	bpl.n	8001ca6 <UART_AdvFeatureConfig+0x7c>
 8001c92:	6802      	ldr	r2, [r0, #0]
 8001c94:	6893      	ldr	r3, [r2, #8]
 8001c96:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c9a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c9e:	ea43 030c 	orr.w	r3, r3, ip
 8001ca2:	f842 3e08 	strt	r3, [r2, #8]
 8001ca6:	068a      	lsls	r2, r1, #26
 8001ca8:	d509      	bpl.n	8001cbe <UART_AdvFeatureConfig+0x94>
 8001caa:	6802      	ldr	r2, [r0, #0]
 8001cac:	6893      	ldr	r3, [r2, #8]
 8001cae:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001cb2:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001cb6:	ea43 030c 	orr.w	r3, r3, ip
 8001cba:	f842 3e08 	strt	r3, [r2, #8]
 8001cbe:	b082      	sub	sp, #8
 8001cc0:	f84d 7e00 	strt	r7, [sp]
 8001cc4:	f84d ee04 	strt	lr, [sp, #4]
 8001cc8:	466f      	mov	r7, sp
 8001cca:	064a      	lsls	r2, r1, #25
 8001ccc:	d515      	bpl.n	8001cfa <UART_AdvFeatureConfig+0xd0>
 8001cce:	f8d0 e000 	ldr.w	lr, [r0]
 8001cd2:	f8de c004 	ldr.w	ip, [lr, #4]
 8001cd6:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001cd8:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001cdc:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001ce0:	ea42 0203 	orr.w	r2, r2, r3
 8001ce4:	f84e 2e04 	strt	r2, [lr, #4]
 8001ce8:	d107      	bne.n	8001cfa <UART_AdvFeatureConfig+0xd0>
 8001cea:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001cee:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001cf0:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001cf4:	431a      	orrs	r2, r3
 8001cf6:	f84e 2e04 	strt	r2, [lr, #4]
 8001cfa:	0609      	lsls	r1, r1, #24
 8001cfc:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001d00:	bf58      	it	pl
 8001d02:	4770      	bxpl	lr
 8001d04:	6801      	ldr	r1, [r0, #0]
 8001d06:	684a      	ldr	r2, [r1, #4]
 8001d08:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001d0a:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001d0e:	4310      	orrs	r0, r2
 8001d10:	f841 0e04 	strt	r0, [r1, #4]
 8001d14:	4770      	bx	lr

08001d16 <UART_CheckIdleState>:
 8001d16:	b085      	sub	sp, #20
 8001d18:	f84d 4e00 	strt	r4, [sp]
 8001d1c:	f84d 5e04 	strt	r5, [sp, #4]
 8001d20:	f84d 6e08 	strt	r6, [sp, #8]
 8001d24:	f84d 7e0c 	strt	r7, [sp, #12]
 8001d28:	f84d ee10 	strt	lr, [sp, #16]
 8001d2c:	af03      	add	r7, sp, #12
 8001d2e:	b081      	sub	sp, #4
 8001d30:	f84d be00 	strt	fp, [sp]
 8001d34:	4604      	mov	r4, r0
 8001d36:	2000      	movs	r0, #0
 8001d38:	f844 0e7c 	strt	r0, [r4, #124]
 8001d3c:	f7ff f9ed 	bl	800111a <HAL_GetTick>
 8001d40:	4605      	mov	r5, r0
 8001d42:	6820      	ldr	r0, [r4, #0]
 8001d44:	6801      	ldr	r1, [r0, #0]
 8001d46:	f011 0f08 	tst.w	r1, #8
 8001d4a:	d00f      	beq.n	8001d6c <UART_CheckIdleState+0x56>
 8001d4c:	69c1      	ldr	r1, [r0, #28]
 8001d4e:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d52:	d10b      	bne.n	8001d6c <UART_CheckIdleState+0x56>
 8001d54:	2600      	movs	r6, #0
 8001d56:	f7ff f9e0 	bl	800111a <HAL_GetTick>
 8001d5a:	1b41      	subs	r1, r0, r5
 8001d5c:	6820      	ldr	r0, [r4, #0]
 8001d5e:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d62:	d11b      	bne.n	8001d9c <UART_CheckIdleState+0x86>
 8001d64:	69c1      	ldr	r1, [r0, #28]
 8001d66:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d6a:	d0f4      	beq.n	8001d56 <UART_CheckIdleState+0x40>
 8001d6c:	6801      	ldr	r1, [r0, #0]
 8001d6e:	f011 0f04 	tst.w	r1, #4
 8001d72:	d101      	bne.n	8001d78 <UART_CheckIdleState+0x62>
 8001d74:	2600      	movs	r6, #0
 8001d76:	e01c      	b.n	8001db2 <UART_CheckIdleState+0x9c>
 8001d78:	69c0      	ldr	r0, [r0, #28]
 8001d7a:	2600      	movs	r6, #0
 8001d7c:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d80:	d117      	bne.n	8001db2 <UART_CheckIdleState+0x9c>
 8001d82:	f7ff f9ca 	bl	800111a <HAL_GetTick>
 8001d86:	1b41      	subs	r1, r0, r5
 8001d88:	6820      	ldr	r0, [r4, #0]
 8001d8a:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d8e:	d105      	bne.n	8001d9c <UART_CheckIdleState+0x86>
 8001d90:	69c0      	ldr	r0, [r0, #28]
 8001d92:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d96:	d0f4      	beq.n	8001d82 <UART_CheckIdleState+0x6c>
 8001d98:	2600      	movs	r6, #0
 8001d9a:	e00a      	b.n	8001db2 <UART_CheckIdleState+0x9c>
 8001d9c:	6801      	ldr	r1, [r0, #0]
 8001d9e:	2603      	movs	r6, #3
 8001da0:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001da4:	f840 1e00 	strt	r1, [r0]
 8001da8:	6881      	ldr	r1, [r0, #8]
 8001daa:	f021 0101 	bic.w	r1, r1, #1
 8001dae:	f840 1e08 	strt	r1, [r0, #8]
 8001db2:	2020      	movs	r0, #32
 8001db4:	f844 0e74 	strt	r0, [r4, #116]
 8001db8:	f844 0e78 	strt	r0, [r4, #120]
 8001dbc:	2000      	movs	r0, #0
 8001dbe:	f844 0e70 	strt	r0, [r4, #112]
 8001dc2:	4630      	mov	r0, r6
 8001dc4:	f85d bb04 	ldr.w	fp, [sp], #4
 8001dc8:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001dca <HAL_UART_Transmit>:
 8001dca:	b085      	sub	sp, #20
 8001dcc:	f84d 4e00 	strt	r4, [sp]
 8001dd0:	f84d 5e04 	strt	r5, [sp, #4]
 8001dd4:	f84d 6e08 	strt	r6, [sp, #8]
 8001dd8:	f84d 7e0c 	strt	r7, [sp, #12]
 8001ddc:	f84d ee10 	strt	lr, [sp, #16]
 8001de0:	af03      	add	r7, sp, #12
 8001de2:	b084      	sub	sp, #16
 8001de4:	f84d 8e00 	strt	r8, [sp]
 8001de8:	f84d 9e04 	strt	r9, [sp, #4]
 8001dec:	f84d ae08 	strt	sl, [sp, #8]
 8001df0:	f84d be0c 	strt	fp, [sp, #12]
 8001df4:	b081      	sub	sp, #4
 8001df6:	4604      	mov	r4, r0
 8001df8:	461d      	mov	r5, r3
 8001dfa:	4616      	mov	r6, r2
 8001dfc:	4689      	mov	r9, r1
 8001dfe:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001e00:	2820      	cmp	r0, #32
 8001e02:	d109      	bne.n	8001e18 <HAL_UART_Transmit+0x4e>
 8001e04:	f1b9 0f00 	cmp.w	r9, #0
 8001e08:	f04f 0001 	mov.w	r0, #1
 8001e0c:	bf18      	it	ne
 8001e0e:	2e00      	cmpne	r6, #0
 8001e10:	d003      	beq.n	8001e1a <HAL_UART_Transmit+0x50>
 8001e12:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001e14:	2801      	cmp	r0, #1
 8001e16:	d104      	bne.n	8001e22 <HAL_UART_Transmit+0x58>
 8001e18:	2002      	movs	r0, #2
 8001e1a:	b001      	add	sp, #4
 8001e1c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001e20:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001e22:	2001      	movs	r0, #1
 8001e24:	f844 0e70 	strt	r0, [r4, #112]
 8001e28:	2000      	movs	r0, #0
 8001e2a:	f844 0e7c 	strt	r0, [r4, #124]
 8001e2e:	2021      	movs	r0, #33	; 0x21
 8001e30:	f844 0e74 	strt	r0, [r4, #116]
 8001e34:	f7ff f971 	bl	800111a <HAL_GetTick>
 8001e38:	f824 6e50 	strht	r6, [r4, #80]
 8001e3c:	f824 6e52 	strht	r6, [r4, #82]
 8001e40:	4680      	mov	r8, r0
 8001e42:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e46:	f8d4 b000 	ldr.w	fp, [r4]
 8001e4a:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001e4e:	2900      	cmp	r1, #0
 8001e50:	d046      	beq.n	8001ee0 <HAL_UART_Transmit+0x116>
 8001e52:	f105 0a01 	add.w	sl, r5, #1
 8001e56:	0600      	lsls	r0, r0, #24
 8001e58:	d410      	bmi.n	8001e7c <HAL_UART_Transmit+0xb2>
 8001e5a:	465e      	mov	r6, fp
 8001e5c:	f1ba 0f00 	cmp.w	sl, #0
 8001e60:	d007      	beq.n	8001e72 <HAL_UART_Transmit+0xa8>
 8001e62:	b345      	cbz	r5, 8001eb6 <HAL_UART_Transmit+0xec>
 8001e64:	f7ff f959 	bl	800111a <HAL_GetTick>
 8001e68:	6826      	ldr	r6, [r4, #0]
 8001e6a:	eba0 0008 	sub.w	r0, r0, r8
 8001e6e:	42a8      	cmp	r0, r5
 8001e70:	d822      	bhi.n	8001eb8 <HAL_UART_Transmit+0xee>
 8001e72:	69f0      	ldr	r0, [r6, #28]
 8001e74:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001e78:	d0f0      	beq.n	8001e5c <HAL_UART_Transmit+0x92>
 8001e7a:	e000      	b.n	8001e7e <HAL_UART_Transmit+0xb4>
 8001e7c:	465e      	mov	r6, fp
 8001e7e:	68a0      	ldr	r0, [r4, #8]
 8001e80:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e84:	bf04      	itt	eq
 8001e86:	6920      	ldreq	r0, [r4, #16]
 8001e88:	2800      	cmpeq	r0, #0
 8001e8a:	d002      	beq.n	8001e92 <HAL_UART_Transmit+0xc8>
 8001e8c:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e90:	e003      	b.n	8001e9a <HAL_UART_Transmit+0xd0>
 8001e92:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e96:	f36f 205f 	bfc	r0, #9, #23
 8001e9a:	f826 0e28 	strht	r0, [r6, #40]
 8001e9e:	46b3      	mov	fp, r6
 8001ea0:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001ea4:	3801      	subs	r0, #1
 8001ea6:	f824 0e52 	strht	r0, [r4, #82]
 8001eaa:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001eae:	69f0      	ldr	r0, [r6, #28]
 8001eb0:	2900      	cmp	r1, #0
 8001eb2:	d1d0      	bne.n	8001e56 <HAL_UART_Transmit+0x8c>
 8001eb4:	e015      	b.n	8001ee2 <HAL_UART_Transmit+0x118>
 8001eb6:	465e      	mov	r6, fp
 8001eb8:	6830      	ldr	r0, [r6, #0]
 8001eba:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001ebe:	f846 0e00 	strt	r0, [r6]
 8001ec2:	68b0      	ldr	r0, [r6, #8]
 8001ec4:	f020 0001 	bic.w	r0, r0, #1
 8001ec8:	f846 0e08 	strt	r0, [r6, #8]
 8001ecc:	2020      	movs	r0, #32
 8001ece:	f844 0e74 	strt	r0, [r4, #116]
 8001ed2:	f844 0e78 	strt	r0, [r4, #120]
 8001ed6:	2000      	movs	r0, #0
 8001ed8:	f844 0e70 	strt	r0, [r4, #112]
 8001edc:	2003      	movs	r0, #3
 8001ede:	e79c      	b.n	8001e1a <HAL_UART_Transmit+0x50>
 8001ee0:	465e      	mov	r6, fp
 8001ee2:	0640      	lsls	r0, r0, #25
 8001ee4:	d411      	bmi.n	8001f0a <HAL_UART_Transmit+0x140>
 8001ee6:	f105 0901 	add.w	r9, r5, #1
 8001eea:	4630      	mov	r0, r6
 8001eec:	f1b9 0f00 	cmp.w	r9, #0
 8001ef0:	d007      	beq.n	8001f02 <HAL_UART_Transmit+0x138>
 8001ef2:	b18d      	cbz	r5, 8001f18 <HAL_UART_Transmit+0x14e>
 8001ef4:	f7ff f911 	bl	800111a <HAL_GetTick>
 8001ef8:	eba0 0108 	sub.w	r1, r0, r8
 8001efc:	6820      	ldr	r0, [r4, #0]
 8001efe:	42a9      	cmp	r1, r5
 8001f00:	d80b      	bhi.n	8001f1a <HAL_UART_Transmit+0x150>
 8001f02:	69c1      	ldr	r1, [r0, #28]
 8001f04:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001f08:	d0f0      	beq.n	8001eec <HAL_UART_Transmit+0x122>
 8001f0a:	2020      	movs	r0, #32
 8001f0c:	f844 0e74 	strt	r0, [r4, #116]
 8001f10:	2000      	movs	r0, #0
 8001f12:	f844 0e70 	strt	r0, [r4, #112]
 8001f16:	e780      	b.n	8001e1a <HAL_UART_Transmit+0x50>
 8001f18:	4630      	mov	r0, r6
 8001f1a:	6801      	ldr	r1, [r0, #0]
 8001f1c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001f20:	f840 1e00 	strt	r1, [r0]
 8001f24:	6881      	ldr	r1, [r0, #8]
 8001f26:	f021 0101 	bic.w	r1, r1, #1
 8001f2a:	f840 1e08 	strt	r1, [r0, #8]
 8001f2e:	e7cd      	b.n	8001ecc <HAL_UART_Transmit+0x102>

08001f30 <BSP_COM_Init>:
 8001f30:	b085      	sub	sp, #20
 8001f32:	f84d 4e00 	strt	r4, [sp]
 8001f36:	f84d 5e04 	strt	r5, [sp, #4]
 8001f3a:	f84d 6e08 	strt	r6, [sp, #8]
 8001f3e:	f84d 7e0c 	strt	r7, [sp, #12]
 8001f42:	f84d ee10 	strt	lr, [sp, #16]
 8001f46:	af03      	add	r7, sp, #12
 8001f48:	b083      	sub	sp, #12
 8001f4a:	f84d 8e00 	strt	r8, [sp]
 8001f4e:	f84d 9e04 	strt	r9, [sp, #4]
 8001f52:	f84d be08 	strt	fp, [sp, #8]
 8001f56:	b086      	sub	sp, #24
 8001f58:	4605      	mov	r5, r0
 8001f5a:	4688      	mov	r8, r1
 8001f5c:	bb25      	cbnz	r5, 8001fa8 <BSP_COM_Init+0x78>
 8001f5e:	f241 004c 	movw	r0, #4172	; 0x104c
 8001f62:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001f66:	6801      	ldr	r1, [r0, #0]
 8001f68:	f041 0102 	orr.w	r1, r1, #2
 8001f6c:	f840 1e00 	strt	r1, [r0]
 8001f70:	6801      	ldr	r1, [r0, #0]
 8001f72:	f001 0102 	and.w	r1, r1, #2
 8001f76:	f84d 1e04 	strt	r1, [sp, #4]
 8001f7a:	9901      	ldr	r1, [sp, #4]
 8001f7c:	6801      	ldr	r1, [r0, #0]
 8001f7e:	f041 0102 	orr.w	r1, r1, #2
 8001f82:	f840 1e00 	strt	r1, [r0]
 8001f86:	6801      	ldr	r1, [r0, #0]
 8001f88:	f001 0102 	and.w	r1, r1, #2
 8001f8c:	f84d 1e04 	strt	r1, [sp, #4]
 8001f90:	9901      	ldr	r1, [sp, #4]
 8001f92:	6941      	ldr	r1, [r0, #20]
 8001f94:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001f98:	f840 1e14 	strt	r1, [r0, #20]
 8001f9c:	6940      	ldr	r0, [r0, #20]
 8001f9e:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001fa2:	f84d 0e04 	strt	r0, [sp, #4]
 8001fa6:	9801      	ldr	r0, [sp, #4]
 8001fa8:	2040      	movs	r0, #64	; 0x40
 8001faa:	2402      	movs	r4, #2
 8001fac:	ae01      	add	r6, sp, #4
 8001fae:	f04f 0907 	mov.w	r9, #7
 8001fb2:	f84d 0e04 	strt	r0, [sp, #4]
 8001fb6:	2000      	movs	r0, #0
 8001fb8:	f84d 4e08 	strt	r4, [sp, #8]
 8001fbc:	f84d 4e10 	strt	r4, [sp, #16]
 8001fc0:	4631      	mov	r1, r6
 8001fc2:	f84d 0e0c 	strt	r0, [sp, #12]
 8001fc6:	f240 000c 	movw	r0, #12
 8001fca:	f84d 9e14 	strt	r9, [sp, #20]
 8001fce:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fd2:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001fd6:	f7ff f8f9 	bl	80011cc <HAL_GPIO_Init>
 8001fda:	2080      	movs	r0, #128	; 0x80
 8001fdc:	4631      	mov	r1, r6
 8001fde:	f84d 0e04 	strt	r0, [sp, #4]
 8001fe2:	f84d 4e08 	strt	r4, [sp, #8]
 8001fe6:	f240 0010 	movw	r0, #16
 8001fea:	f84d 9e14 	strt	r9, [sp, #20]
 8001fee:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ff2:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ff6:	f7ff f8e9 	bl	80011cc <HAL_GPIO_Init>
 8001ffa:	f240 0008 	movw	r0, #8
 8001ffe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002002:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002006:	f848 0e00 	strt	r0, [r8]
 800200a:	4640      	mov	r0, r8
 800200c:	f7ff fc8e 	bl	800192c <HAL_UART_Init>
 8002010:	b006      	add	sp, #24
 8002012:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002016:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002018 <__io_putchar>:
 8002018:	b082      	sub	sp, #8
 800201a:	f84d 7e00 	strt	r7, [sp]
 800201e:	f84d ee04 	strt	lr, [sp, #4]
 8002022:	466f      	mov	r7, sp
 8002024:	b082      	sub	sp, #8
 8002026:	f84d 0e04 	strt	r0, [sp, #4]
 800202a:	f640 3074 	movw	r0, #2932	; 0xb74
 800202e:	a901      	add	r1, sp, #4
 8002030:	2201      	movs	r2, #1
 8002032:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002036:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800203a:	f7ff fec6 	bl	8001dca <HAL_UART_Transmit>
 800203e:	9801      	ldr	r0, [sp, #4]
 8002040:	b002      	add	sp, #8
 8002042:	bd80      	pop	{r7, pc}

08002044 <main>:
 8002044:	b084      	sub	sp, #16
 8002046:	f84d 4e00 	strt	r4, [sp]
 800204a:	f84d 5e04 	strt	r5, [sp, #4]
 800204e:	f84d 7e08 	strt	r7, [sp, #8]
 8002052:	f84d ee0c 	strt	lr, [sp, #12]
 8002056:	af02      	add	r7, sp, #8
 8002058:	f640 3174 	movw	r1, #2932	; 0xb74
 800205c:	f643 0000 	movw	r0, #14336	; 0x3800
 8002060:	220c      	movs	r2, #12
 8002062:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002066:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800206a:	f841 0e00 	strt	r0, [r1]
 800206e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002072:	f841 0e04 	strt	r0, [r1, #4]
 8002076:	2000      	movs	r0, #0
 8002078:	f841 0e08 	strt	r0, [r1, #8]
 800207c:	f841 0e0c 	strt	r0, [r1, #12]
 8002080:	f841 0e10 	strt	r0, [r1, #16]
 8002084:	f841 0e24 	strt	r0, [r1, #36]
 8002088:	f841 0e1c 	strt	r0, [r1, #28]
 800208c:	f841 0e20 	strt	r0, [r1, #32]
 8002090:	f841 2e14 	strt	r2, [r1, #20]
 8002094:	f841 0e18 	strt	r0, [r1, #24]
 8002098:	2000      	movs	r0, #0
 800209a:	f7ff ff49 	bl	8001f30 <BSP_COM_Init>
 800209e:	f000 f96d 	bl	800237c <initialise_benchmark>
 80020a2:	f247 4060 	movw	r0, #29792	; 0x7460
 80020a6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020aa:	f000 fdfd 	bl	8002ca8 <printf>
 80020ae:	f247 500f 	movw	r0, #29967	; 0x750f
 80020b2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020b6:	f000 fe59 	bl	8002d6c <puts>
 80020ba:	f7ff f815 	bl	80010e8 <HAL_Init>
 80020be:	f7ff f82c 	bl	800111a <HAL_GetTick>
 80020c2:	4604      	mov	r4, r0
 80020c4:	f000 f95b 	bl	800237e <benchmark>
 80020c8:	4605      	mov	r5, r0
 80020ca:	f7ff f826 	bl	800111a <HAL_GetTick>
 80020ce:	1b04      	subs	r4, r0, r4
 80020d0:	4628      	mov	r0, r5
 80020d2:	f000 f9dc 	bl	800248e <verify_benchmark>
 80020d6:	1c41      	adds	r1, r0, #1
 80020d8:	d006      	beq.n	80020e8 <main+0xa4>
 80020da:	2801      	cmp	r0, #1
 80020dc:	d109      	bne.n	80020f2 <main+0xae>
 80020de:	f247 407b 	movw	r0, #29819	; 0x747b
 80020e2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020e6:	e008      	b.n	80020fa <main+0xb6>
 80020e8:	f247 409f 	movw	r0, #29855	; 0x749f
 80020ec:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020f0:	e003      	b.n	80020fa <main+0xb6>
 80020f2:	f247 40d4 	movw	r0, #29908	; 0x74d4
 80020f6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020fa:	4621      	mov	r1, r4
 80020fc:	f000 fdd4 	bl	8002ca8 <printf>
 8002100:	2000      	movs	r0, #0
 8002102:	bdb0      	pop	{r4, r5, r7, pc}

08002104 <sglib___rbtree_add_recursive>:
 8002104:	b084      	sub	sp, #16
 8002106:	f84d 4e00 	strt	r4, [sp]
 800210a:	f84d 5e04 	strt	r5, [sp, #4]
 800210e:	f84d 7e08 	strt	r7, [sp, #8]
 8002112:	f84d ee0c 	strt	lr, [sp, #12]
 8002116:	af02      	add	r7, sp, #8
 8002118:	4604      	mov	r4, r0
 800211a:	6825      	ldr	r5, [r4, #0]
 800211c:	b30d      	cbz	r5, 8002162 <sglib___rbtree_add_recursive+0x5e>
 800211e:	6828      	ldr	r0, [r5, #0]
 8002120:	680a      	ldr	r2, [r1, #0]
 8002122:	1a10      	subs	r0, r2, r0
 8002124:	2800      	cmp	r0, #0
 8002126:	db02      	blt.n	800212e <sglib___rbtree_add_recursive+0x2a>
 8002128:	428d      	cmp	r5, r1
 800212a:	d920      	bls.n	800216e <sglib___rbtree_add_recursive+0x6a>
 800212c:	b9f8      	cbnz	r0, 800216e <sglib___rbtree_add_recursive+0x6a>
 800212e:	f105 0008 	add.w	r0, r5, #8
 8002132:	f7ff ffe7 	bl	8002104 <sglib___rbtree_add_recursive>
 8002136:	7928      	ldrb	r0, [r5, #4]
 8002138:	2800      	cmp	r0, #0
 800213a:	f040 8089 	bne.w	8002250 <sglib___rbtree_add_recursive+0x14c>
 800213e:	6820      	ldr	r0, [r4, #0]
 8002140:	e9d0 1202 	ldrd	r1, r2, [r0, #8]
 8002144:	b3c2      	cbz	r2, 80021b8 <sglib___rbtree_add_recursive+0xb4>
 8002146:	7913      	ldrb	r3, [r2, #4]
 8002148:	2b01      	cmp	r3, #1
 800214a:	d135      	bne.n	80021b8 <sglib___rbtree_add_recursive+0xb4>
 800214c:	790b      	ldrb	r3, [r1, #4]
 800214e:	2b01      	cmp	r3, #1
 8002150:	d17e      	bne.n	8002250 <sglib___rbtree_add_recursive+0x14c>
 8002152:	688b      	ldr	r3, [r1, #8]
 8002154:	b113      	cbz	r3, 800215c <sglib___rbtree_add_recursive+0x58>
 8002156:	791b      	ldrb	r3, [r3, #4]
 8002158:	2b01      	cmp	r3, #1
 800215a:	d024      	beq.n	80021a6 <sglib___rbtree_add_recursive+0xa2>
 800215c:	68cb      	ldr	r3, [r1, #12]
 800215e:	b9fb      	cbnz	r3, 80021a0 <sglib___rbtree_add_recursive+0x9c>
 8002160:	e076      	b.n	8002250 <sglib___rbtree_add_recursive+0x14c>
 8002162:	2001      	movs	r0, #1
 8002164:	f801 0e04 	strbt	r0, [r1, #4]
 8002168:	f844 1e00 	strt	r1, [r4]
 800216c:	bdb0      	pop	{r4, r5, r7, pc}
 800216e:	f105 000c 	add.w	r0, r5, #12
 8002172:	f7ff ffc7 	bl	8002104 <sglib___rbtree_add_recursive>
 8002176:	7928      	ldrb	r0, [r5, #4]
 8002178:	2800      	cmp	r0, #0
 800217a:	d169      	bne.n	8002250 <sglib___rbtree_add_recursive+0x14c>
 800217c:	6820      	ldr	r0, [r4, #0]
 800217e:	e9d0 2102 	ldrd	r2, r1, [r0, #8]
 8002182:	b34a      	cbz	r2, 80021d8 <sglib___rbtree_add_recursive+0xd4>
 8002184:	7913      	ldrb	r3, [r2, #4]
 8002186:	2b01      	cmp	r3, #1
 8002188:	d126      	bne.n	80021d8 <sglib___rbtree_add_recursive+0xd4>
 800218a:	790b      	ldrb	r3, [r1, #4]
 800218c:	2b01      	cmp	r3, #1
 800218e:	d15f      	bne.n	8002250 <sglib___rbtree_add_recursive+0x14c>
 8002190:	68cb      	ldr	r3, [r1, #12]
 8002192:	b113      	cbz	r3, 800219a <sglib___rbtree_add_recursive+0x96>
 8002194:	791b      	ldrb	r3, [r3, #4]
 8002196:	2b01      	cmp	r3, #1
 8002198:	d005      	beq.n	80021a6 <sglib___rbtree_add_recursive+0xa2>
 800219a:	688b      	ldr	r3, [r1, #8]
 800219c:	2b00      	cmp	r3, #0
 800219e:	d057      	beq.n	8002250 <sglib___rbtree_add_recursive+0x14c>
 80021a0:	791b      	ldrb	r3, [r3, #4]
 80021a2:	2b01      	cmp	r3, #1
 80021a4:	d154      	bne.n	8002250 <sglib___rbtree_add_recursive+0x14c>
 80021a6:	2300      	movs	r3, #0
 80021a8:	f801 3e04 	strbt	r3, [r1, #4]
 80021ac:	2101      	movs	r1, #1
 80021ae:	f802 3e04 	strbt	r3, [r2, #4]
 80021b2:	f800 1e04 	strbt	r1, [r0, #4]
 80021b6:	bdb0      	pop	{r4, r5, r7, pc}
 80021b8:	790a      	ldrb	r2, [r1, #4]
 80021ba:	2a01      	cmp	r2, #1
 80021bc:	d148      	bne.n	8002250 <sglib___rbtree_add_recursive+0x14c>
 80021be:	688a      	ldr	r2, [r1, #8]
 80021c0:	b1f2      	cbz	r2, 8002200 <sglib___rbtree_add_recursive+0xfc>
 80021c2:	7913      	ldrb	r3, [r2, #4]
 80021c4:	2b01      	cmp	r3, #1
 80021c6:	d11b      	bne.n	8002200 <sglib___rbtree_add_recursive+0xfc>
 80021c8:	68cb      	ldr	r3, [r1, #12]
 80021ca:	f840 3e08 	strt	r3, [r0, #8]
 80021ce:	f841 2e08 	strt	r2, [r1, #8]
 80021d2:	f841 0e0c 	strt	r0, [r1, #12]
 80021d6:	e00e      	b.n	80021f6 <sglib___rbtree_add_recursive+0xf2>
 80021d8:	790a      	ldrb	r2, [r1, #4]
 80021da:	2a01      	cmp	r2, #1
 80021dc:	d138      	bne.n	8002250 <sglib___rbtree_add_recursive+0x14c>
 80021de:	68ca      	ldr	r2, [r1, #12]
 80021e0:	b1f2      	cbz	r2, 8002220 <sglib___rbtree_add_recursive+0x11c>
 80021e2:	7913      	ldrb	r3, [r2, #4]
 80021e4:	2b01      	cmp	r3, #1
 80021e6:	d11b      	bne.n	8002220 <sglib___rbtree_add_recursive+0x11c>
 80021e8:	688b      	ldr	r3, [r1, #8]
 80021ea:	f840 3e0c 	strt	r3, [r0, #12]
 80021ee:	f841 0e08 	strt	r0, [r1, #8]
 80021f2:	f841 2e0c 	strt	r2, [r1, #12]
 80021f6:	2201      	movs	r2, #1
 80021f8:	f800 2e04 	strbt	r2, [r0, #4]
 80021fc:	2000      	movs	r0, #0
 80021fe:	e7b1      	b.n	8002164 <sglib___rbtree_add_recursive+0x60>
 8002200:	68ca      	ldr	r2, [r1, #12]
 8002202:	b32a      	cbz	r2, 8002250 <sglib___rbtree_add_recursive+0x14c>
 8002204:	7913      	ldrb	r3, [r2, #4]
 8002206:	2b01      	cmp	r3, #1
 8002208:	d122      	bne.n	8002250 <sglib___rbtree_add_recursive+0x14c>
 800220a:	e9d2 3502 	ldrd	r3, r5, [r2, #8]
 800220e:	f841 3e0c 	strt	r3, [r1, #12]
 8002212:	f840 5e08 	strt	r5, [r0, #8]
 8002216:	f842 1e08 	strt	r1, [r2, #8]
 800221a:	f842 0e0c 	strt	r0, [r2, #12]
 800221e:	e00f      	b.n	8002240 <sglib___rbtree_add_recursive+0x13c>
 8002220:	688a      	ldr	r2, [r1, #8]
 8002222:	b1aa      	cbz	r2, 8002250 <sglib___rbtree_add_recursive+0x14c>
 8002224:	7913      	ldrb	r3, [r2, #4]
 8002226:	2b01      	cmp	r3, #1
 8002228:	bf18      	it	ne
 800222a:	bdb0      	popne	{r4, r5, r7, pc}
 800222c:	e9d2 3502 	ldrd	r3, r5, [r2, #8]
 8002230:	f841 5e08 	strt	r5, [r1, #8]
 8002234:	f840 3e0c 	strt	r3, [r0, #12]
 8002238:	f842 0e08 	strt	r0, [r2, #8]
 800223c:	f842 1e0c 	strt	r1, [r2, #12]
 8002240:	2100      	movs	r1, #0
 8002242:	f802 1e04 	strbt	r1, [r2, #4]
 8002246:	2101      	movs	r1, #1
 8002248:	f800 1e04 	strbt	r1, [r0, #4]
 800224c:	f844 2e00 	strt	r2, [r4]
 8002250:	bdb0      	pop	{r4, r5, r7, pc}

08002252 <sglib__rbtree_it_compute_current_elem>:
 8002252:	b085      	sub	sp, #20
 8002254:	f84d 4e00 	strt	r4, [sp]
 8002258:	f84d 5e04 	strt	r5, [sp, #4]
 800225c:	f84d 6e08 	strt	r6, [sp, #8]
 8002260:	f84d 7e0c 	strt	r7, [sp, #12]
 8002264:	f84d ee10 	strt	lr, [sp, #16]
 8002268:	af03      	add	r7, sp, #12
 800226a:	b084      	sub	sp, #16
 800226c:	f84d 8e00 	strt	r8, [sp]
 8002270:	f84d 9e04 	strt	r9, [sp, #4]
 8002274:	f84d ae08 	strt	sl, [sp, #8]
 8002278:	f84d be0c 	strt	fp, [sp, #12]
 800227c:	b081      	sub	sp, #4
 800227e:	4604      	mov	r4, r0
 8002280:	f04f 0900 	mov.w	r9, #0
 8002284:	e9d4 a8a2 	ldrd	sl, r8, [r4, #648]	; 0x288
 8002288:	f844 9e00 	strt	r9, [r4]
 800228c:	f9b4 0284 	ldrsh.w	r0, [r4, #644]	; 0x284
 8002290:	2801      	cmp	r0, #1
 8002292:	db6f      	blt.n	8002374 <sglib__rbtree_it_compute_current_elem+0x122>
 8002294:	4605      	mov	r5, r0
 8002296:	1e6a      	subs	r2, r5, #1
 8002298:	eb04 0b02 	add.w	fp, r4, r2
 800229c:	f81b 1f04 	ldrb.w	r1, [fp, #4]!
 80022a0:	2902      	cmp	r1, #2
 80022a2:	d307      	bcc.n	80022b4 <sglib__rbtree_it_compute_current_elem+0x62>
 80022a4:	3801      	subs	r0, #1
 80022a6:	f204 2484 	addw	r4, r4, #644	; 0x284
 80022aa:	f824 0e00 	strht	r0, [r4]
 80022ae:	f2a4 2484 	subw	r4, r4, #644	; 0x284
 80022b2:	e049      	b.n	8002348 <sglib__rbtree_it_compute_current_elem+0xf6>
 80022b4:	eb04 0082 	add.w	r0, r4, r2, lsl #2
 80022b8:	2900      	cmp	r1, #0
 80022ba:	f8d0 0084 	ldr.w	r0, [r0, #132]	; 0x84
 80022be:	f100 020c 	add.w	r2, r0, #12
 80022c2:	bf08      	it	eq
 80022c4:	f100 0208 	addeq.w	r2, r0, #8
 80022c8:	f1ba 0f00 	cmp.w	sl, #0
 80022cc:	6816      	ldr	r6, [r2, #0]
 80022ce:	d023      	beq.n	8002318 <sglib__rbtree_it_compute_current_elem+0xc6>
 80022d0:	f1b8 0f00 	cmp.w	r8, #0
 80022d4:	d112      	bne.n	80022fc <sglib__rbtree_it_compute_current_elem+0xaa>
 80022d6:	b386      	cbz	r6, 800233a <sglib__rbtree_it_compute_current_elem+0xe8>
 80022d8:	f8da 0000 	ldr.w	r0, [sl]
 80022dc:	6831      	ldr	r1, [r6, #0]
 80022de:	1a41      	subs	r1, r0, r1
 80022e0:	f1b1 3fff 	cmp.w	r1, #4294967295	; 0xffffffff
 80022e4:	dd03      	ble.n	80022ee <sglib__rbtree_it_compute_current_elem+0x9c>
 80022e6:	b1c1      	cbz	r1, 800231a <sglib__rbtree_it_compute_current_elem+0xc8>
 80022e8:	f106 010c 	add.w	r1, r6, #12
 80022ec:	e001      	b.n	80022f2 <sglib__rbtree_it_compute_current_elem+0xa0>
 80022ee:	f106 0108 	add.w	r1, r6, #8
 80022f2:	680e      	ldr	r6, [r1, #0]
 80022f4:	2e00      	cmp	r6, #0
 80022f6:	d1f1      	bne.n	80022dc <sglib__rbtree_it_compute_current_elem+0x8a>
 80022f8:	e01f      	b.n	800233a <sglib__rbtree_it_compute_current_elem+0xe8>
 80022fa:	6806      	ldr	r6, [r0, #0]
 80022fc:	b1ee      	cbz	r6, 800233a <sglib__rbtree_it_compute_current_elem+0xe8>
 80022fe:	4650      	mov	r0, sl
 8002300:	4631      	mov	r1, r6
 8002302:	47c0      	blx	r8
 8002304:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8002308:	dd03      	ble.n	8002312 <sglib__rbtree_it_compute_current_elem+0xc0>
 800230a:	b130      	cbz	r0, 800231a <sglib__rbtree_it_compute_current_elem+0xc8>
 800230c:	f106 000c 	add.w	r0, r6, #12
 8002310:	e7f3      	b.n	80022fa <sglib__rbtree_it_compute_current_elem+0xa8>
 8002312:	f106 0008 	add.w	r0, r6, #8
 8002316:	e7f0      	b.n	80022fa <sglib__rbtree_it_compute_current_elem+0xa8>
 8002318:	b17e      	cbz	r6, 800233a <sglib__rbtree_it_compute_current_elem+0xe8>
 800231a:	eb04 0085 	add.w	r0, r4, r5, lsl #2
 800231e:	f840 6e84 	strt	r6, [r0, #132]
 8002322:	1960      	adds	r0, r4, r5
 8002324:	f800 9e04 	strbt	r9, [r0, #4]
 8002328:	f8b4 0284 	ldrh.w	r0, [r4, #644]	; 0x284
 800232c:	3001      	adds	r0, #1
 800232e:	f204 2484 	addw	r4, r4, #644	; 0x284
 8002332:	f824 0e00 	strht	r0, [r4]
 8002336:	f2a4 2484 	subw	r4, r4, #644	; 0x284
 800233a:	f89b 0000 	ldrb.w	r0, [fp]
 800233e:	3001      	adds	r0, #1
 8002340:	f80b 0e00 	strbt	r0, [fp]
 8002344:	f8b4 0284 	ldrh.w	r0, [r4, #644]	; 0x284
 8002348:	b205      	sxth	r5, r0
 800234a:	2d01      	cmp	r5, #1
 800234c:	db12      	blt.n	8002374 <sglib__rbtree_it_compute_current_elem+0x122>
 800234e:	1e69      	subs	r1, r5, #1
 8002350:	f9b4 3286 	ldrsh.w	r3, [r4, #646]	; 0x286
 8002354:	1862      	adds	r2, r4, r1
 8002356:	7912      	ldrb	r2, [r2, #4]
 8002358:	4293      	cmp	r3, r2
 800235a:	bf08      	it	eq
 800235c:	eb04 0181 	addeq.w	r1, r4, r1, lsl #2
 8002360:	bf08      	it	eq
 8002362:	f8d1 1084 	ldreq.w	r1, [r1, #132]	; 0x84
 8002366:	bf08      	it	eq
 8002368:	f844 1e00 	strteq	r1, [r4]
 800236c:	6821      	ldr	r1, [r4, #0]
 800236e:	2900      	cmp	r1, #0
 8002370:	f43f af91 	beq.w	8002296 <sglib__rbtree_it_compute_current_elem+0x44>
 8002374:	b001      	add	sp, #4
 8002376:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800237a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800237c <initialise_benchmark>:
 800237c:	4770      	bx	lr

0800237e <benchmark>:
 800237e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002380:	af03      	add	r7, sp, #12
 8002382:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 8002386:	f5ad 7d26 	sub.w	sp, sp, #664	; 0x298
 800238a:	f240 0914 	movw	r9, #20
 800238e:	f04f 0a00 	mov.w	sl, #0
 8002392:	f50d 7825 	add.w	r8, sp, #660	; 0x294
 8002396:	2600      	movs	r6, #0
 8002398:	2400      	movs	r4, #0
 800239a:	f2c2 0900 	movt	r9, #8192	; 0x2000
 800239e:	f8cd a294 	str.w	sl, [sp, #660]	; 0x294
 80023a2:	f859 5024 	ldr.w	r5, [r9, r4, lsl #2]
 80023a6:	2e00      	cmp	r6, #0
 80023a8:	d00c      	beq.n	80023c4 <benchmark+0x46>
 80023aa:	4630      	mov	r0, r6
 80023ac:	6801      	ldr	r1, [r0, #0]
 80023ae:	1a69      	subs	r1, r5, r1
 80023b0:	f1b1 3fff 	cmp.w	r1, #4294967295	; 0xffffffff
 80023b4:	dd02      	ble.n	80023bc <benchmark+0x3e>
 80023b6:	b191      	cbz	r1, 80023de <benchmark+0x60>
 80023b8:	300c      	adds	r0, #12
 80023ba:	e000      	b.n	80023be <benchmark+0x40>
 80023bc:	3008      	adds	r0, #8
 80023be:	6800      	ldr	r0, [r0, #0]
 80023c0:	2800      	cmp	r0, #0
 80023c2:	d1f3      	bne.n	80023ac <benchmark+0x2e>
 80023c4:	2010      	movs	r0, #16
 80023c6:	f000 f965 	bl	8002694 <malloc>
 80023ca:	4601      	mov	r1, r0
 80023cc:	4640      	mov	r0, r8
 80023ce:	600d      	str	r5, [r1, #0]
 80023d0:	e9c1 aa02 	strd	sl, sl, [r1, #8]
 80023d4:	f7ff fe96 	bl	8002104 <sglib___rbtree_add_recursive>
 80023d8:	9ea5      	ldr	r6, [sp, #660]	; 0x294
 80023da:	f886 a004 	strb.w	sl, [r6, #4]
 80023de:	3401      	adds	r4, #1
 80023e0:	2c64      	cmp	r4, #100	; 0x64
 80023e2:	d1de      	bne.n	80023a2 <benchmark+0x24>
 80023e4:	2001      	movs	r0, #1
 80023e6:	2400      	movs	r4, #0
 80023e8:	2e00      	cmp	r6, #0
 80023ea:	f8ad 028a 	strh.w	r0, [sp, #650]	; 0x28a
 80023ee:	e9cd 44a3 	strd	r4, r4, [sp, #652]	; 0x28c
 80023f2:	d01e      	beq.n	8002432 <benchmark+0xb4>
 80023f4:	f8ad 0288 	strh.w	r0, [sp, #648]	; 0x288
 80023f8:	a801      	add	r0, sp, #4
 80023fa:	f88d 4008 	strb.w	r4, [sp, #8]
 80023fe:	9622      	str	r6, [sp, #136]	; 0x88
 8002400:	f7ff ff27 	bl	8002252 <sglib__rbtree_it_compute_current_elem>
 8002404:	9801      	ldr	r0, [sp, #4]
 8002406:	b308      	cbz	r0, 800244c <benchmark+0xce>
 8002408:	2400      	movs	r4, #0
 800240a:	f10d 0804 	add.w	r8, sp, #4
 800240e:	6805      	ldr	r5, [r0, #0]
 8002410:	4640      	mov	r0, r8
 8002412:	f7ff ff1e 	bl	8002252 <sglib__rbtree_it_compute_current_elem>
 8002416:	9801      	ldr	r0, [sp, #4]
 8002418:	442c      	add	r4, r5
 800241a:	2800      	cmp	r0, #0
 800241c:	d1f7      	bne.n	800240e <benchmark+0x90>
 800241e:	2002      	movs	r0, #2
 8002420:	2e00      	cmp	r6, #0
 8002422:	f8ad 028a 	strh.w	r0, [sp, #650]	; 0x28a
 8002426:	f04f 0000 	mov.w	r0, #0
 800242a:	e9cd 00a3 	strd	r0, r0, [sp, #652]	; 0x28c
 800242e:	d113      	bne.n	8002458 <benchmark+0xda>
 8002430:	e007      	b.n	8002442 <benchmark+0xc4>
 8002432:	2002      	movs	r0, #2
 8002434:	f8ad 4288 	strh.w	r4, [sp, #648]	; 0x288
 8002438:	9401      	str	r4, [sp, #4]
 800243a:	f8ad 028a 	strh.w	r0, [sp, #650]	; 0x28a
 800243e:	e9cd 44a3 	strd	r4, r4, [sp, #652]	; 0x28c
 8002442:	2000      	movs	r0, #0
 8002444:	f8ad 0288 	strh.w	r0, [sp, #648]	; 0x288
 8002448:	9001      	str	r0, [sp, #4]
 800244a:	e01a      	b.n	8002482 <benchmark+0x104>
 800244c:	2002      	movs	r0, #2
 800244e:	2400      	movs	r4, #0
 8002450:	f8ad 028a 	strh.w	r0, [sp, #650]	; 0x28a
 8002454:	e9cd 44a3 	strd	r4, r4, [sp, #652]	; 0x28c
 8002458:	2001      	movs	r0, #1
 800245a:	f8ad 0288 	strh.w	r0, [sp, #648]	; 0x288
 800245e:	2000      	movs	r0, #0
 8002460:	f88d 0008 	strb.w	r0, [sp, #8]
 8002464:	a801      	add	r0, sp, #4
 8002466:	9622      	str	r6, [sp, #136]	; 0x88
 8002468:	f7ff fef3 	bl	8002252 <sglib__rbtree_it_compute_current_elem>
 800246c:	9801      	ldr	r0, [sp, #4]
 800246e:	b140      	cbz	r0, 8002482 <benchmark+0x104>
 8002470:	ad01      	add	r5, sp, #4
 8002472:	f000 f917 	bl	80026a4 <free>
 8002476:	4628      	mov	r0, r5
 8002478:	f7ff feeb 	bl	8002252 <sglib__rbtree_it_compute_current_elem>
 800247c:	9801      	ldr	r0, [sp, #4]
 800247e:	2800      	cmp	r0, #0
 8002480:	d1f7      	bne.n	8002472 <benchmark+0xf4>
 8002482:	4620      	mov	r0, r4
 8002484:	f50d 7d26 	add.w	sp, sp, #664	; 0x298
 8002488:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 800248c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800248e <verify_benchmark>:
 800248e:	f241 3256 	movw	r2, #4950	; 0x1356
 8002492:	2100      	movs	r1, #0
 8002494:	4290      	cmp	r0, r2
 8002496:	bf08      	it	eq
 8002498:	2101      	moveq	r1, #1
 800249a:	4608      	mov	r0, r1
 800249c:	4770      	bx	lr

0800249e <SysTick_Handler>:
 800249e:	b082      	sub	sp, #8
 80024a0:	f84d 7e00 	strt	r7, [sp]
 80024a4:	f84d ee04 	strt	lr, [sp, #4]
 80024a8:	466f      	mov	r7, sp
 80024aa:	f7fe fe2d 	bl	8001108 <HAL_IncTick>
 80024ae:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80024b2:	f7fe be88 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

080024b6 <_read>:
 80024b6:	b085      	sub	sp, #20
 80024b8:	f84d 4e00 	strt	r4, [sp]
 80024bc:	f84d 5e04 	strt	r5, [sp, #4]
 80024c0:	f84d 6e08 	strt	r6, [sp, #8]
 80024c4:	f84d 7e0c 	strt	r7, [sp, #12]
 80024c8:	f84d ee10 	strt	lr, [sp, #16]
 80024cc:	af03      	add	r7, sp, #12
 80024ce:	b081      	sub	sp, #4
 80024d0:	f84d be00 	strt	fp, [sp]
 80024d4:	4614      	mov	r4, r2
 80024d6:	460d      	mov	r5, r1
 80024d8:	2c01      	cmp	r4, #1
 80024da:	db08      	blt.n	80024ee <_read+0x38>
 80024dc:	4626      	mov	r6, r4
 80024de:	f3af 8000 	nop.w
 80024e2:	f805 0e00 	strbt	r0, [r5]
 80024e6:	bfe8      	it	al
 80024e8:	3501      	addal	r5, #1
 80024ea:	3e01      	subs	r6, #1
 80024ec:	d1f7      	bne.n	80024de <_read+0x28>
 80024ee:	4620      	mov	r0, r4
 80024f0:	f85d bb04 	ldr.w	fp, [sp], #4
 80024f4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080024f6 <_write>:
 80024f6:	b085      	sub	sp, #20
 80024f8:	f84d 4e00 	strt	r4, [sp]
 80024fc:	f84d 5e04 	strt	r5, [sp, #4]
 8002500:	f84d 6e08 	strt	r6, [sp, #8]
 8002504:	f84d 7e0c 	strt	r7, [sp, #12]
 8002508:	f84d ee10 	strt	lr, [sp, #16]
 800250c:	af03      	add	r7, sp, #12
 800250e:	b081      	sub	sp, #4
 8002510:	f84d be00 	strt	fp, [sp]
 8002514:	4614      	mov	r4, r2
 8002516:	460d      	mov	r5, r1
 8002518:	2c01      	cmp	r4, #1
 800251a:	db06      	blt.n	800252a <_write+0x34>
 800251c:	4626      	mov	r6, r4
 800251e:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002522:	f7ff fd79 	bl	8002018 <__io_putchar>
 8002526:	3e01      	subs	r6, #1
 8002528:	d1f9      	bne.n	800251e <_write+0x28>
 800252a:	4620      	mov	r0, r4
 800252c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002530:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002532 <_sbrk>:
 8002532:	f640 32f8 	movw	r2, #3064	; 0xbf8
 8002536:	4601      	mov	r1, r0
 8002538:	466b      	mov	r3, sp
 800253a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800253e:	6810      	ldr	r0, [r2, #0]
 8002540:	2800      	cmp	r0, #0
 8002542:	bf08      	it	eq
 8002544:	f640 40a0 	movweq	r0, #3232	; 0xca0
 8002548:	bf08      	it	eq
 800254a:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800254e:	bf08      	it	eq
 8002550:	f842 0e00 	strteq	r0, [r2]
 8002554:	4401      	add	r1, r0
 8002556:	4299      	cmp	r1, r3
 8002558:	bf98      	it	ls
 800255a:	f842 1e00 	strtls	r1, [r2]
 800255e:	bf98      	it	ls
 8002560:	4770      	bxls	lr
 8002562:	b082      	sub	sp, #8
 8002564:	f84d 7e00 	strt	r7, [sp]
 8002568:	f84d ee04 	strt	lr, [sp, #4]
 800256c:	466f      	mov	r7, sp
 800256e:	f000 f867 	bl	8002640 <__errno>
 8002572:	210c      	movs	r1, #12
 8002574:	f840 1e00 	strt	r1, [r0]
 8002578:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800257c:	bd80      	pop	{r7, pc}

0800257e <_close>:
 800257e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002582:	4770      	bx	lr

08002584 <_fstat>:
 8002584:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002588:	f841 0e04 	strt	r0, [r1, #4]
 800258c:	2000      	movs	r0, #0
 800258e:	4770      	bx	lr

08002590 <_isatty>:
 8002590:	2001      	movs	r0, #1
 8002592:	4770      	bx	lr

08002594 <_lseek>:
 8002594:	2000      	movs	r0, #0
 8002596:	4770      	bx	lr

08002598 <SystemInit>:
 8002598:	f64e 5088 	movw	r0, #60808	; 0xed88
 800259c:	f04f 0c00 	mov.w	ip, #0
 80025a0:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80025a4:	6801      	ldr	r1, [r0, #0]
 80025a6:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80025aa:	6001      	str	r1, [r0, #0]
 80025ac:	f241 0100 	movw	r1, #4096	; 0x1000
 80025b0:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80025b4:	680a      	ldr	r2, [r1, #0]
 80025b6:	f042 0201 	orr.w	r2, r2, #1
 80025ba:	600a      	str	r2, [r1, #0]
 80025bc:	f8c1 c008 	str.w	ip, [r1, #8]
 80025c0:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80025c4:	680b      	ldr	r3, [r1, #0]
 80025c6:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80025ca:	401a      	ands	r2, r3
 80025cc:	600a      	str	r2, [r1, #0]
 80025ce:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80025d2:	60ca      	str	r2, [r1, #12]
 80025d4:	680a      	ldr	r2, [r1, #0]
 80025d6:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80025da:	600a      	str	r2, [r1, #0]
 80025dc:	f8c1 c018 	str.w	ip, [r1, #24]
 80025e0:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80025e4:	f840 1c80 	str.w	r1, [r0, #-128]
 80025e8:	4770      	bx	lr
	...

080025ec <Reset_Handler>:
 80025ec:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002624 <LoopForever+0x2>
 80025f0:	2100      	movs	r1, #0
 80025f2:	e003      	b.n	80025fc <LoopCopyDataInit>

080025f4 <CopyDataInit>:
 80025f4:	4b0c      	ldr	r3, [pc, #48]	; (8002628 <LoopForever+0x6>)
 80025f6:	585b      	ldr	r3, [r3, r1]
 80025f8:	5043      	str	r3, [r0, r1]
 80025fa:	3104      	adds	r1, #4

080025fc <LoopCopyDataInit>:
 80025fc:	480b      	ldr	r0, [pc, #44]	; (800262c <LoopForever+0xa>)
 80025fe:	4b0c      	ldr	r3, [pc, #48]	; (8002630 <LoopForever+0xe>)
 8002600:	1842      	adds	r2, r0, r1
 8002602:	429a      	cmp	r2, r3
 8002604:	d3f6      	bcc.n	80025f4 <CopyDataInit>
 8002606:	4a0b      	ldr	r2, [pc, #44]	; (8002634 <LoopForever+0x12>)
 8002608:	e002      	b.n	8002610 <LoopFillZerobss>

0800260a <FillZerobss>:
 800260a:	2300      	movs	r3, #0
 800260c:	f842 3b04 	str.w	r3, [r2], #4

08002610 <LoopFillZerobss>:
 8002610:	4b09      	ldr	r3, [pc, #36]	; (8002638 <LoopForever+0x16>)
 8002612:	429a      	cmp	r2, r3
 8002614:	d3f9      	bcc.n	800260a <FillZerobss>
 8002616:	f7ff ffbf 	bl	8002598 <SystemInit>
 800261a:	f000 f817 	bl	800264c <__libc_init_array>
 800261e:	f7ff fd11 	bl	8002044 <main>

08002622 <LoopForever>:
 8002622:	e7fe      	b.n	8002622 <LoopForever>
 8002624:	20018000 	.word	0x20018000
 8002628:	080077b8 	.word	0x080077b8
 800262c:	20000000 	.word	0x20000000
 8002630:	20000b58 	.word	0x20000b58
 8002634:	20000b58 	.word	0x20000b58
 8002638:	20000ca0 	.word	0x20000ca0

0800263c <ADC1_2_IRQHandler>:
 800263c:	e7fe      	b.n	800263c <ADC1_2_IRQHandler>
	...

08002640 <__errno>:
 8002640:	4b01      	ldr	r3, [pc, #4]	; (8002648 <__errno+0x8>)
 8002642:	6818      	ldr	r0, [r3, #0]
 8002644:	4770      	bx	lr
 8002646:	bf00      	nop
 8002648:	200001a8 	.word	0x200001a8

0800264c <__libc_init_array>:
 800264c:	b570      	push	{r4, r5, r6, lr}
 800264e:	4e0d      	ldr	r6, [pc, #52]	; (8002684 <__libc_init_array+0x38>)
 8002650:	4d0d      	ldr	r5, [pc, #52]	; (8002688 <__libc_init_array+0x3c>)
 8002652:	1b76      	subs	r6, r6, r5
 8002654:	10b6      	asrs	r6, r6, #2
 8002656:	d006      	beq.n	8002666 <__libc_init_array+0x1a>
 8002658:	2400      	movs	r4, #0
 800265a:	3401      	adds	r4, #1
 800265c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002660:	4798      	blx	r3
 8002662:	42a6      	cmp	r6, r4
 8002664:	d1f9      	bne.n	800265a <__libc_init_array+0xe>
 8002666:	4e09      	ldr	r6, [pc, #36]	; (800268c <__libc_init_array+0x40>)
 8002668:	4d09      	ldr	r5, [pc, #36]	; (8002690 <__libc_init_array+0x44>)
 800266a:	1b76      	subs	r6, r6, r5
 800266c:	f004 feb8 	bl	80073e0 <_init>
 8002670:	10b6      	asrs	r6, r6, #2
 8002672:	d006      	beq.n	8002682 <__libc_init_array+0x36>
 8002674:	2400      	movs	r4, #0
 8002676:	3401      	adds	r4, #1
 8002678:	f855 3b04 	ldr.w	r3, [r5], #4
 800267c:	4798      	blx	r3
 800267e:	42a6      	cmp	r6, r4
 8002680:	d1f9      	bne.n	8002676 <__libc_init_array+0x2a>
 8002682:	bd70      	pop	{r4, r5, r6, pc}
 8002684:	080077a8 	.word	0x080077a8
 8002688:	080077a8 	.word	0x080077a8
 800268c:	080077b0 	.word	0x080077b0
 8002690:	080077a8 	.word	0x080077a8

08002694 <malloc>:
 8002694:	4b02      	ldr	r3, [pc, #8]	; (80026a0 <malloc+0xc>)
 8002696:	4601      	mov	r1, r0
 8002698:	6818      	ldr	r0, [r3, #0]
 800269a:	f000 b80b 	b.w	80026b4 <_malloc_r>
 800269e:	bf00      	nop
 80026a0:	200001a8 	.word	0x200001a8

080026a4 <free>:
 80026a4:	4b02      	ldr	r3, [pc, #8]	; (80026b0 <free+0xc>)
 80026a6:	4601      	mov	r1, r0
 80026a8:	6818      	ldr	r0, [r3, #0]
 80026aa:	f003 bab9 	b.w	8005c20 <_free_r>
 80026ae:	bf00      	nop
 80026b0:	200001a8 	.word	0x200001a8

080026b4 <_malloc_r>:
 80026b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80026b8:	f101 050b 	add.w	r5, r1, #11
 80026bc:	2d16      	cmp	r5, #22
 80026be:	b083      	sub	sp, #12
 80026c0:	4606      	mov	r6, r0
 80026c2:	d823      	bhi.n	800270c <_malloc_r+0x58>
 80026c4:	2910      	cmp	r1, #16
 80026c6:	f200 80b9 	bhi.w	800283c <_malloc_r+0x188>
 80026ca:	f000 fae1 	bl	8002c90 <__malloc_lock>
 80026ce:	2510      	movs	r5, #16
 80026d0:	2318      	movs	r3, #24
 80026d2:	2002      	movs	r0, #2
 80026d4:	4fc5      	ldr	r7, [pc, #788]	; (80029ec <_malloc_r+0x338>)
 80026d6:	443b      	add	r3, r7
 80026d8:	f1a3 0208 	sub.w	r2, r3, #8
 80026dc:	685c      	ldr	r4, [r3, #4]
 80026de:	4294      	cmp	r4, r2
 80026e0:	f000 8166 	beq.w	80029b0 <_malloc_r+0x2fc>
 80026e4:	6863      	ldr	r3, [r4, #4]
 80026e6:	f023 0303 	bic.w	r3, r3, #3
 80026ea:	4423      	add	r3, r4
 80026ec:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80026f0:	685a      	ldr	r2, [r3, #4]
 80026f2:	60e9      	str	r1, [r5, #12]
 80026f4:	f042 0201 	orr.w	r2, r2, #1
 80026f8:	608d      	str	r5, [r1, #8]
 80026fa:	4630      	mov	r0, r6
 80026fc:	605a      	str	r2, [r3, #4]
 80026fe:	f000 facd 	bl	8002c9c <__malloc_unlock>
 8002702:	3408      	adds	r4, #8
 8002704:	4620      	mov	r0, r4
 8002706:	b003      	add	sp, #12
 8002708:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800270c:	f035 0507 	bics.w	r5, r5, #7
 8002710:	f100 8094 	bmi.w	800283c <_malloc_r+0x188>
 8002714:	42a9      	cmp	r1, r5
 8002716:	f200 8091 	bhi.w	800283c <_malloc_r+0x188>
 800271a:	f000 fab9 	bl	8002c90 <__malloc_lock>
 800271e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8002722:	f0c0 8183 	bcc.w	8002a2c <_malloc_r+0x378>
 8002726:	0a6b      	lsrs	r3, r5, #9
 8002728:	f000 808f 	beq.w	800284a <_malloc_r+0x196>
 800272c:	2b04      	cmp	r3, #4
 800272e:	f200 8146 	bhi.w	80029be <_malloc_r+0x30a>
 8002732:	09ab      	lsrs	r3, r5, #6
 8002734:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8002738:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800273c:	00c3      	lsls	r3, r0, #3
 800273e:	4fab      	ldr	r7, [pc, #684]	; (80029ec <_malloc_r+0x338>)
 8002740:	443b      	add	r3, r7
 8002742:	f1a3 0108 	sub.w	r1, r3, #8
 8002746:	685c      	ldr	r4, [r3, #4]
 8002748:	42a1      	cmp	r1, r4
 800274a:	d106      	bne.n	800275a <_malloc_r+0xa6>
 800274c:	e00c      	b.n	8002768 <_malloc_r+0xb4>
 800274e:	2a00      	cmp	r2, #0
 8002750:	f280 811d 	bge.w	800298e <_malloc_r+0x2da>
 8002754:	68e4      	ldr	r4, [r4, #12]
 8002756:	42a1      	cmp	r1, r4
 8002758:	d006      	beq.n	8002768 <_malloc_r+0xb4>
 800275a:	6863      	ldr	r3, [r4, #4]
 800275c:	f023 0303 	bic.w	r3, r3, #3
 8002760:	1b5a      	subs	r2, r3, r5
 8002762:	2a0f      	cmp	r2, #15
 8002764:	ddf3      	ble.n	800274e <_malloc_r+0x9a>
 8002766:	4660      	mov	r0, ip
 8002768:	693c      	ldr	r4, [r7, #16]
 800276a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8002a00 <_malloc_r+0x34c>
 800276e:	4564      	cmp	r4, ip
 8002770:	d071      	beq.n	8002856 <_malloc_r+0x1a2>
 8002772:	6863      	ldr	r3, [r4, #4]
 8002774:	f023 0303 	bic.w	r3, r3, #3
 8002778:	1b5a      	subs	r2, r3, r5
 800277a:	2a0f      	cmp	r2, #15
 800277c:	f300 8144 	bgt.w	8002a08 <_malloc_r+0x354>
 8002780:	2a00      	cmp	r2, #0
 8002782:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8002786:	f280 8126 	bge.w	80029d6 <_malloc_r+0x322>
 800278a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800278e:	f080 8169 	bcs.w	8002a64 <_malloc_r+0x3b0>
 8002792:	08db      	lsrs	r3, r3, #3
 8002794:	1c59      	adds	r1, r3, #1
 8002796:	687a      	ldr	r2, [r7, #4]
 8002798:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800279c:	f8c4 8008 	str.w	r8, [r4, #8]
 80027a0:	f04f 0e01 	mov.w	lr, #1
 80027a4:	109b      	asrs	r3, r3, #2
 80027a6:	fa0e f303 	lsl.w	r3, lr, r3
 80027aa:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80027ae:	4313      	orrs	r3, r2
 80027b0:	f1ae 0208 	sub.w	r2, lr, #8
 80027b4:	60e2      	str	r2, [r4, #12]
 80027b6:	607b      	str	r3, [r7, #4]
 80027b8:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80027bc:	f8c8 400c 	str.w	r4, [r8, #12]
 80027c0:	1082      	asrs	r2, r0, #2
 80027c2:	2401      	movs	r4, #1
 80027c4:	4094      	lsls	r4, r2
 80027c6:	429c      	cmp	r4, r3
 80027c8:	d84b      	bhi.n	8002862 <_malloc_r+0x1ae>
 80027ca:	421c      	tst	r4, r3
 80027cc:	d106      	bne.n	80027dc <_malloc_r+0x128>
 80027ce:	f020 0003 	bic.w	r0, r0, #3
 80027d2:	0064      	lsls	r4, r4, #1
 80027d4:	421c      	tst	r4, r3
 80027d6:	f100 0004 	add.w	r0, r0, #4
 80027da:	d0fa      	beq.n	80027d2 <_malloc_r+0x11e>
 80027dc:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80027e0:	46ce      	mov	lr, r9
 80027e2:	4680      	mov	r8, r0
 80027e4:	f8de 300c 	ldr.w	r3, [lr, #12]
 80027e8:	459e      	cmp	lr, r3
 80027ea:	d107      	bne.n	80027fc <_malloc_r+0x148>
 80027ec:	e122      	b.n	8002a34 <_malloc_r+0x380>
 80027ee:	2a00      	cmp	r2, #0
 80027f0:	f280 8129 	bge.w	8002a46 <_malloc_r+0x392>
 80027f4:	68db      	ldr	r3, [r3, #12]
 80027f6:	459e      	cmp	lr, r3
 80027f8:	f000 811c 	beq.w	8002a34 <_malloc_r+0x380>
 80027fc:	6859      	ldr	r1, [r3, #4]
 80027fe:	f021 0103 	bic.w	r1, r1, #3
 8002802:	1b4a      	subs	r2, r1, r5
 8002804:	2a0f      	cmp	r2, #15
 8002806:	ddf2      	ble.n	80027ee <_malloc_r+0x13a>
 8002808:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 800280c:	195c      	adds	r4, r3, r5
 800280e:	f045 0501 	orr.w	r5, r5, #1
 8002812:	605d      	str	r5, [r3, #4]
 8002814:	f042 0501 	orr.w	r5, r2, #1
 8002818:	f8c8 e00c 	str.w	lr, [r8, #12]
 800281c:	4630      	mov	r0, r6
 800281e:	f8ce 8008 	str.w	r8, [lr, #8]
 8002822:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8002826:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 800282a:	6065      	str	r5, [r4, #4]
 800282c:	505a      	str	r2, [r3, r1]
 800282e:	9301      	str	r3, [sp, #4]
 8002830:	f000 fa34 	bl	8002c9c <__malloc_unlock>
 8002834:	9b01      	ldr	r3, [sp, #4]
 8002836:	f103 0408 	add.w	r4, r3, #8
 800283a:	e763      	b.n	8002704 <_malloc_r+0x50>
 800283c:	2400      	movs	r4, #0
 800283e:	230c      	movs	r3, #12
 8002840:	4620      	mov	r0, r4
 8002842:	6033      	str	r3, [r6, #0]
 8002844:	b003      	add	sp, #12
 8002846:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800284a:	f44f 7300 	mov.w	r3, #512	; 0x200
 800284e:	2040      	movs	r0, #64	; 0x40
 8002850:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8002854:	e773      	b.n	800273e <_malloc_r+0x8a>
 8002856:	687b      	ldr	r3, [r7, #4]
 8002858:	1082      	asrs	r2, r0, #2
 800285a:	2401      	movs	r4, #1
 800285c:	4094      	lsls	r4, r2
 800285e:	429c      	cmp	r4, r3
 8002860:	d9b3      	bls.n	80027ca <_malloc_r+0x116>
 8002862:	68bc      	ldr	r4, [r7, #8]
 8002864:	6863      	ldr	r3, [r4, #4]
 8002866:	f023 0903 	bic.w	r9, r3, #3
 800286a:	45a9      	cmp	r9, r5
 800286c:	d303      	bcc.n	8002876 <_malloc_r+0x1c2>
 800286e:	eba9 0305 	sub.w	r3, r9, r5
 8002872:	2b0f      	cmp	r3, #15
 8002874:	dc7b      	bgt.n	800296e <_malloc_r+0x2ba>
 8002876:	4b5e      	ldr	r3, [pc, #376]	; (80029f0 <_malloc_r+0x33c>)
 8002878:	f8df a188 	ldr.w	sl, [pc, #392]	; 8002a04 <_malloc_r+0x350>
 800287c:	681a      	ldr	r2, [r3, #0]
 800287e:	f8da 3000 	ldr.w	r3, [sl]
 8002882:	3301      	adds	r3, #1
 8002884:	eb05 0802 	add.w	r8, r5, r2
 8002888:	f000 8148 	beq.w	8002b1c <_malloc_r+0x468>
 800288c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8002890:	f108 080f 	add.w	r8, r8, #15
 8002894:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8002898:	f028 080f 	bic.w	r8, r8, #15
 800289c:	4641      	mov	r1, r8
 800289e:	4630      	mov	r0, r6
 80028a0:	f000 fa6c 	bl	8002d7c <_sbrk_r>
 80028a4:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80028a8:	4683      	mov	fp, r0
 80028aa:	f000 8104 	beq.w	8002ab6 <_malloc_r+0x402>
 80028ae:	eb04 0009 	add.w	r0, r4, r9
 80028b2:	4558      	cmp	r0, fp
 80028b4:	f200 80fd 	bhi.w	8002ab2 <_malloc_r+0x3fe>
 80028b8:	4a4e      	ldr	r2, [pc, #312]	; (80029f4 <_malloc_r+0x340>)
 80028ba:	6813      	ldr	r3, [r2, #0]
 80028bc:	4443      	add	r3, r8
 80028be:	6013      	str	r3, [r2, #0]
 80028c0:	f000 814d 	beq.w	8002b5e <_malloc_r+0x4aa>
 80028c4:	f8da 1000 	ldr.w	r1, [sl]
 80028c8:	3101      	adds	r1, #1
 80028ca:	bf1b      	ittet	ne
 80028cc:	ebab 0000 	subne.w	r0, fp, r0
 80028d0:	181b      	addne	r3, r3, r0
 80028d2:	f8ca b000 	streq.w	fp, [sl]
 80028d6:	6013      	strne	r3, [r2, #0]
 80028d8:	f01b 0307 	ands.w	r3, fp, #7
 80028dc:	f000 8134 	beq.w	8002b48 <_malloc_r+0x494>
 80028e0:	f1c3 0108 	rsb	r1, r3, #8
 80028e4:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80028e8:	448b      	add	fp, r1
 80028ea:	3308      	adds	r3, #8
 80028ec:	44d8      	add	r8, fp
 80028ee:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80028f2:	eba3 0808 	sub.w	r8, r3, r8
 80028f6:	4641      	mov	r1, r8
 80028f8:	4630      	mov	r0, r6
 80028fa:	9201      	str	r2, [sp, #4]
 80028fc:	f000 fa3e 	bl	8002d7c <_sbrk_r>
 8002900:	1c43      	adds	r3, r0, #1
 8002902:	9a01      	ldr	r2, [sp, #4]
 8002904:	f000 8146 	beq.w	8002b94 <_malloc_r+0x4e0>
 8002908:	eba0 010b 	sub.w	r1, r0, fp
 800290c:	4441      	add	r1, r8
 800290e:	f041 0101 	orr.w	r1, r1, #1
 8002912:	6813      	ldr	r3, [r2, #0]
 8002914:	f8c7 b008 	str.w	fp, [r7, #8]
 8002918:	4443      	add	r3, r8
 800291a:	42bc      	cmp	r4, r7
 800291c:	f8cb 1004 	str.w	r1, [fp, #4]
 8002920:	6013      	str	r3, [r2, #0]
 8002922:	d015      	beq.n	8002950 <_malloc_r+0x29c>
 8002924:	f1b9 0f0f 	cmp.w	r9, #15
 8002928:	f240 8130 	bls.w	8002b8c <_malloc_r+0x4d8>
 800292c:	6860      	ldr	r0, [r4, #4]
 800292e:	f1a9 010c 	sub.w	r1, r9, #12
 8002932:	f021 0107 	bic.w	r1, r1, #7
 8002936:	f000 0001 	and.w	r0, r0, #1
 800293a:	eb04 0c01 	add.w	ip, r4, r1
 800293e:	4308      	orrs	r0, r1
 8002940:	f04f 0e05 	mov.w	lr, #5
 8002944:	290f      	cmp	r1, #15
 8002946:	6060      	str	r0, [r4, #4]
 8002948:	e9cc ee01 	strd	lr, lr, [ip, #4]
 800294c:	f200 813a 	bhi.w	8002bc4 <_malloc_r+0x510>
 8002950:	4a29      	ldr	r2, [pc, #164]	; (80029f8 <_malloc_r+0x344>)
 8002952:	482a      	ldr	r0, [pc, #168]	; (80029fc <_malloc_r+0x348>)
 8002954:	6811      	ldr	r1, [r2, #0]
 8002956:	68bc      	ldr	r4, [r7, #8]
 8002958:	428b      	cmp	r3, r1
 800295a:	6801      	ldr	r1, [r0, #0]
 800295c:	bf88      	it	hi
 800295e:	6013      	strhi	r3, [r2, #0]
 8002960:	6862      	ldr	r2, [r4, #4]
 8002962:	428b      	cmp	r3, r1
 8002964:	f022 0203 	bic.w	r2, r2, #3
 8002968:	bf88      	it	hi
 800296a:	6003      	strhi	r3, [r0, #0]
 800296c:	e0a7      	b.n	8002abe <_malloc_r+0x40a>
 800296e:	1962      	adds	r2, r4, r5
 8002970:	f043 0301 	orr.w	r3, r3, #1
 8002974:	f045 0501 	orr.w	r5, r5, #1
 8002978:	6065      	str	r5, [r4, #4]
 800297a:	4630      	mov	r0, r6
 800297c:	60ba      	str	r2, [r7, #8]
 800297e:	6053      	str	r3, [r2, #4]
 8002980:	f000 f98c 	bl	8002c9c <__malloc_unlock>
 8002984:	3408      	adds	r4, #8
 8002986:	4620      	mov	r0, r4
 8002988:	b003      	add	sp, #12
 800298a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800298e:	4423      	add	r3, r4
 8002990:	68e1      	ldr	r1, [r4, #12]
 8002992:	685a      	ldr	r2, [r3, #4]
 8002994:	68a5      	ldr	r5, [r4, #8]
 8002996:	f042 0201 	orr.w	r2, r2, #1
 800299a:	60e9      	str	r1, [r5, #12]
 800299c:	4630      	mov	r0, r6
 800299e:	608d      	str	r5, [r1, #8]
 80029a0:	605a      	str	r2, [r3, #4]
 80029a2:	f000 f97b 	bl	8002c9c <__malloc_unlock>
 80029a6:	3408      	adds	r4, #8
 80029a8:	4620      	mov	r0, r4
 80029aa:	b003      	add	sp, #12
 80029ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80029b0:	68dc      	ldr	r4, [r3, #12]
 80029b2:	42a3      	cmp	r3, r4
 80029b4:	bf08      	it	eq
 80029b6:	3002      	addeq	r0, #2
 80029b8:	f43f aed6 	beq.w	8002768 <_malloc_r+0xb4>
 80029bc:	e692      	b.n	80026e4 <_malloc_r+0x30>
 80029be:	2b14      	cmp	r3, #20
 80029c0:	d971      	bls.n	8002aa6 <_malloc_r+0x3f2>
 80029c2:	2b54      	cmp	r3, #84	; 0x54
 80029c4:	f200 80ad 	bhi.w	8002b22 <_malloc_r+0x46e>
 80029c8:	0b2b      	lsrs	r3, r5, #12
 80029ca:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80029ce:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80029d2:	00c3      	lsls	r3, r0, #3
 80029d4:	e6b3      	b.n	800273e <_malloc_r+0x8a>
 80029d6:	4423      	add	r3, r4
 80029d8:	4630      	mov	r0, r6
 80029da:	685a      	ldr	r2, [r3, #4]
 80029dc:	f042 0201 	orr.w	r2, r2, #1
 80029e0:	605a      	str	r2, [r3, #4]
 80029e2:	3408      	adds	r4, #8
 80029e4:	f000 f95a 	bl	8002c9c <__malloc_unlock>
 80029e8:	e68c      	b.n	8002704 <_malloc_r+0x50>
 80029ea:	bf00      	nop
 80029ec:	200005d8 	.word	0x200005d8
 80029f0:	20000c2c 	.word	0x20000c2c
 80029f4:	20000bfc 	.word	0x20000bfc
 80029f8:	20000c24 	.word	0x20000c24
 80029fc:	20000c28 	.word	0x20000c28
 8002a00:	200005e0 	.word	0x200005e0
 8002a04:	200009e0 	.word	0x200009e0
 8002a08:	1961      	adds	r1, r4, r5
 8002a0a:	f045 0e01 	orr.w	lr, r5, #1
 8002a0e:	f042 0501 	orr.w	r5, r2, #1
 8002a12:	f8c4 e004 	str.w	lr, [r4, #4]
 8002a16:	4630      	mov	r0, r6
 8002a18:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8002a1c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8002a20:	604d      	str	r5, [r1, #4]
 8002a22:	50e2      	str	r2, [r4, r3]
 8002a24:	f000 f93a 	bl	8002c9c <__malloc_unlock>
 8002a28:	3408      	adds	r4, #8
 8002a2a:	e66b      	b.n	8002704 <_malloc_r+0x50>
 8002a2c:	08e8      	lsrs	r0, r5, #3
 8002a2e:	f105 0308 	add.w	r3, r5, #8
 8002a32:	e64f      	b.n	80026d4 <_malloc_r+0x20>
 8002a34:	f108 0801 	add.w	r8, r8, #1
 8002a38:	f018 0f03 	tst.w	r8, #3
 8002a3c:	f10e 0e08 	add.w	lr, lr, #8
 8002a40:	f47f aed0 	bne.w	80027e4 <_malloc_r+0x130>
 8002a44:	e052      	b.n	8002aec <_malloc_r+0x438>
 8002a46:	4419      	add	r1, r3
 8002a48:	461c      	mov	r4, r3
 8002a4a:	684a      	ldr	r2, [r1, #4]
 8002a4c:	68db      	ldr	r3, [r3, #12]
 8002a4e:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8002a52:	f042 0201 	orr.w	r2, r2, #1
 8002a56:	604a      	str	r2, [r1, #4]
 8002a58:	4630      	mov	r0, r6
 8002a5a:	60eb      	str	r3, [r5, #12]
 8002a5c:	609d      	str	r5, [r3, #8]
 8002a5e:	f000 f91d 	bl	8002c9c <__malloc_unlock>
 8002a62:	e64f      	b.n	8002704 <_malloc_r+0x50>
 8002a64:	0a5a      	lsrs	r2, r3, #9
 8002a66:	2a04      	cmp	r2, #4
 8002a68:	d935      	bls.n	8002ad6 <_malloc_r+0x422>
 8002a6a:	2a14      	cmp	r2, #20
 8002a6c:	d86f      	bhi.n	8002b4e <_malloc_r+0x49a>
 8002a6e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8002a72:	00c9      	lsls	r1, r1, #3
 8002a74:	325b      	adds	r2, #91	; 0x5b
 8002a76:	eb07 0e01 	add.w	lr, r7, r1
 8002a7a:	5879      	ldr	r1, [r7, r1]
 8002a7c:	f1ae 0e08 	sub.w	lr, lr, #8
 8002a80:	458e      	cmp	lr, r1
 8002a82:	d058      	beq.n	8002b36 <_malloc_r+0x482>
 8002a84:	684a      	ldr	r2, [r1, #4]
 8002a86:	f022 0203 	bic.w	r2, r2, #3
 8002a8a:	429a      	cmp	r2, r3
 8002a8c:	d902      	bls.n	8002a94 <_malloc_r+0x3e0>
 8002a8e:	6889      	ldr	r1, [r1, #8]
 8002a90:	458e      	cmp	lr, r1
 8002a92:	d1f7      	bne.n	8002a84 <_malloc_r+0x3d0>
 8002a94:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8002a98:	687b      	ldr	r3, [r7, #4]
 8002a9a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8002a9e:	f8ce 4008 	str.w	r4, [lr, #8]
 8002aa2:	60cc      	str	r4, [r1, #12]
 8002aa4:	e68c      	b.n	80027c0 <_malloc_r+0x10c>
 8002aa6:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8002aaa:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8002aae:	00c3      	lsls	r3, r0, #3
 8002ab0:	e645      	b.n	800273e <_malloc_r+0x8a>
 8002ab2:	42bc      	cmp	r4, r7
 8002ab4:	d072      	beq.n	8002b9c <_malloc_r+0x4e8>
 8002ab6:	68bc      	ldr	r4, [r7, #8]
 8002ab8:	6862      	ldr	r2, [r4, #4]
 8002aba:	f022 0203 	bic.w	r2, r2, #3
 8002abe:	4295      	cmp	r5, r2
 8002ac0:	eba2 0305 	sub.w	r3, r2, r5
 8002ac4:	d802      	bhi.n	8002acc <_malloc_r+0x418>
 8002ac6:	2b0f      	cmp	r3, #15
 8002ac8:	f73f af51 	bgt.w	800296e <_malloc_r+0x2ba>
 8002acc:	4630      	mov	r0, r6
 8002ace:	f000 f8e5 	bl	8002c9c <__malloc_unlock>
 8002ad2:	2400      	movs	r4, #0
 8002ad4:	e616      	b.n	8002704 <_malloc_r+0x50>
 8002ad6:	099a      	lsrs	r2, r3, #6
 8002ad8:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8002adc:	00c9      	lsls	r1, r1, #3
 8002ade:	3238      	adds	r2, #56	; 0x38
 8002ae0:	e7c9      	b.n	8002a76 <_malloc_r+0x3c2>
 8002ae2:	f8d9 9000 	ldr.w	r9, [r9]
 8002ae6:	4599      	cmp	r9, r3
 8002ae8:	f040 8083 	bne.w	8002bf2 <_malloc_r+0x53e>
 8002aec:	f010 0f03 	tst.w	r0, #3
 8002af0:	f1a9 0308 	sub.w	r3, r9, #8
 8002af4:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8002af8:	d1f3      	bne.n	8002ae2 <_malloc_r+0x42e>
 8002afa:	687b      	ldr	r3, [r7, #4]
 8002afc:	ea23 0304 	bic.w	r3, r3, r4
 8002b00:	607b      	str	r3, [r7, #4]
 8002b02:	0064      	lsls	r4, r4, #1
 8002b04:	429c      	cmp	r4, r3
 8002b06:	f63f aeac 	bhi.w	8002862 <_malloc_r+0x1ae>
 8002b0a:	b91c      	cbnz	r4, 8002b14 <_malloc_r+0x460>
 8002b0c:	e6a9      	b.n	8002862 <_malloc_r+0x1ae>
 8002b0e:	0064      	lsls	r4, r4, #1
 8002b10:	f108 0804 	add.w	r8, r8, #4
 8002b14:	421c      	tst	r4, r3
 8002b16:	d0fa      	beq.n	8002b0e <_malloc_r+0x45a>
 8002b18:	4640      	mov	r0, r8
 8002b1a:	e65f      	b.n	80027dc <_malloc_r+0x128>
 8002b1c:	f108 0810 	add.w	r8, r8, #16
 8002b20:	e6bc      	b.n	800289c <_malloc_r+0x1e8>
 8002b22:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8002b26:	d826      	bhi.n	8002b76 <_malloc_r+0x4c2>
 8002b28:	0beb      	lsrs	r3, r5, #15
 8002b2a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8002b2e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8002b32:	00c3      	lsls	r3, r0, #3
 8002b34:	e603      	b.n	800273e <_malloc_r+0x8a>
 8002b36:	687b      	ldr	r3, [r7, #4]
 8002b38:	1092      	asrs	r2, r2, #2
 8002b3a:	f04f 0801 	mov.w	r8, #1
 8002b3e:	fa08 f202 	lsl.w	r2, r8, r2
 8002b42:	4313      	orrs	r3, r2
 8002b44:	607b      	str	r3, [r7, #4]
 8002b46:	e7a8      	b.n	8002a9a <_malloc_r+0x3e6>
 8002b48:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002b4c:	e6ce      	b.n	80028ec <_malloc_r+0x238>
 8002b4e:	2a54      	cmp	r2, #84	; 0x54
 8002b50:	d829      	bhi.n	8002ba6 <_malloc_r+0x4f2>
 8002b52:	0b1a      	lsrs	r2, r3, #12
 8002b54:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8002b58:	00c9      	lsls	r1, r1, #3
 8002b5a:	326e      	adds	r2, #110	; 0x6e
 8002b5c:	e78b      	b.n	8002a76 <_malloc_r+0x3c2>
 8002b5e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8002b62:	2900      	cmp	r1, #0
 8002b64:	f47f aeae 	bne.w	80028c4 <_malloc_r+0x210>
 8002b68:	eb09 0208 	add.w	r2, r9, r8
 8002b6c:	68b9      	ldr	r1, [r7, #8]
 8002b6e:	f042 0201 	orr.w	r2, r2, #1
 8002b72:	604a      	str	r2, [r1, #4]
 8002b74:	e6ec      	b.n	8002950 <_malloc_r+0x29c>
 8002b76:	f240 5254 	movw	r2, #1364	; 0x554
 8002b7a:	4293      	cmp	r3, r2
 8002b7c:	d81c      	bhi.n	8002bb8 <_malloc_r+0x504>
 8002b7e:	0cab      	lsrs	r3, r5, #18
 8002b80:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8002b84:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8002b88:	00c3      	lsls	r3, r0, #3
 8002b8a:	e5d8      	b.n	800273e <_malloc_r+0x8a>
 8002b8c:	2301      	movs	r3, #1
 8002b8e:	f8cb 3004 	str.w	r3, [fp, #4]
 8002b92:	e79b      	b.n	8002acc <_malloc_r+0x418>
 8002b94:	2101      	movs	r1, #1
 8002b96:	f04f 0800 	mov.w	r8, #0
 8002b9a:	e6ba      	b.n	8002912 <_malloc_r+0x25e>
 8002b9c:	4a16      	ldr	r2, [pc, #88]	; (8002bf8 <_malloc_r+0x544>)
 8002b9e:	6813      	ldr	r3, [r2, #0]
 8002ba0:	4443      	add	r3, r8
 8002ba2:	6013      	str	r3, [r2, #0]
 8002ba4:	e68e      	b.n	80028c4 <_malloc_r+0x210>
 8002ba6:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8002baa:	d814      	bhi.n	8002bd6 <_malloc_r+0x522>
 8002bac:	0bda      	lsrs	r2, r3, #15
 8002bae:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8002bb2:	00c9      	lsls	r1, r1, #3
 8002bb4:	3277      	adds	r2, #119	; 0x77
 8002bb6:	e75e      	b.n	8002a76 <_malloc_r+0x3c2>
 8002bb8:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8002bbc:	207f      	movs	r0, #127	; 0x7f
 8002bbe:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8002bc2:	e5bc      	b.n	800273e <_malloc_r+0x8a>
 8002bc4:	f104 0108 	add.w	r1, r4, #8
 8002bc8:	4630      	mov	r0, r6
 8002bca:	9201      	str	r2, [sp, #4]
 8002bcc:	f003 f828 	bl	8005c20 <_free_r>
 8002bd0:	9a01      	ldr	r2, [sp, #4]
 8002bd2:	6813      	ldr	r3, [r2, #0]
 8002bd4:	e6bc      	b.n	8002950 <_malloc_r+0x29c>
 8002bd6:	f240 5154 	movw	r1, #1364	; 0x554
 8002bda:	428a      	cmp	r2, r1
 8002bdc:	d805      	bhi.n	8002bea <_malloc_r+0x536>
 8002bde:	0c9a      	lsrs	r2, r3, #18
 8002be0:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8002be4:	00c9      	lsls	r1, r1, #3
 8002be6:	327c      	adds	r2, #124	; 0x7c
 8002be8:	e745      	b.n	8002a76 <_malloc_r+0x3c2>
 8002bea:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8002bee:	227e      	movs	r2, #126	; 0x7e
 8002bf0:	e741      	b.n	8002a76 <_malloc_r+0x3c2>
 8002bf2:	687b      	ldr	r3, [r7, #4]
 8002bf4:	e785      	b.n	8002b02 <_malloc_r+0x44e>
 8002bf6:	bf00      	nop
 8002bf8:	20000bfc 	.word	0x20000bfc

08002bfc <memset>:
 8002bfc:	b4f0      	push	{r4, r5, r6, r7}
 8002bfe:	0786      	lsls	r6, r0, #30
 8002c00:	d043      	beq.n	8002c8a <memset+0x8e>
 8002c02:	1e54      	subs	r4, r2, #1
 8002c04:	2a00      	cmp	r2, #0
 8002c06:	d03e      	beq.n	8002c86 <memset+0x8a>
 8002c08:	b2ca      	uxtb	r2, r1
 8002c0a:	4603      	mov	r3, r0
 8002c0c:	e002      	b.n	8002c14 <memset+0x18>
 8002c0e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002c12:	d338      	bcc.n	8002c86 <memset+0x8a>
 8002c14:	f803 2b01 	strb.w	r2, [r3], #1
 8002c18:	079d      	lsls	r5, r3, #30
 8002c1a:	d1f8      	bne.n	8002c0e <memset+0x12>
 8002c1c:	2c03      	cmp	r4, #3
 8002c1e:	d92b      	bls.n	8002c78 <memset+0x7c>
 8002c20:	b2cd      	uxtb	r5, r1
 8002c22:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002c26:	2c0f      	cmp	r4, #15
 8002c28:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002c2c:	d916      	bls.n	8002c5c <memset+0x60>
 8002c2e:	f1a4 0710 	sub.w	r7, r4, #16
 8002c32:	093f      	lsrs	r7, r7, #4
 8002c34:	f103 0620 	add.w	r6, r3, #32
 8002c38:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002c3c:	f103 0210 	add.w	r2, r3, #16
 8002c40:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002c44:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002c48:	3210      	adds	r2, #16
 8002c4a:	42b2      	cmp	r2, r6
 8002c4c:	d1f8      	bne.n	8002c40 <memset+0x44>
 8002c4e:	f004 040f 	and.w	r4, r4, #15
 8002c52:	3701      	adds	r7, #1
 8002c54:	2c03      	cmp	r4, #3
 8002c56:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002c5a:	d90d      	bls.n	8002c78 <memset+0x7c>
 8002c5c:	461e      	mov	r6, r3
 8002c5e:	4622      	mov	r2, r4
 8002c60:	3a04      	subs	r2, #4
 8002c62:	2a03      	cmp	r2, #3
 8002c64:	f846 5b04 	str.w	r5, [r6], #4
 8002c68:	d8fa      	bhi.n	8002c60 <memset+0x64>
 8002c6a:	1f22      	subs	r2, r4, #4
 8002c6c:	f022 0203 	bic.w	r2, r2, #3
 8002c70:	3204      	adds	r2, #4
 8002c72:	4413      	add	r3, r2
 8002c74:	f004 0403 	and.w	r4, r4, #3
 8002c78:	b12c      	cbz	r4, 8002c86 <memset+0x8a>
 8002c7a:	b2c9      	uxtb	r1, r1
 8002c7c:	441c      	add	r4, r3
 8002c7e:	f803 1b01 	strb.w	r1, [r3], #1
 8002c82:	429c      	cmp	r4, r3
 8002c84:	d1fb      	bne.n	8002c7e <memset+0x82>
 8002c86:	bcf0      	pop	{r4, r5, r6, r7}
 8002c88:	4770      	bx	lr
 8002c8a:	4614      	mov	r4, r2
 8002c8c:	4603      	mov	r3, r0
 8002c8e:	e7c5      	b.n	8002c1c <memset+0x20>

08002c90 <__malloc_lock>:
 8002c90:	4801      	ldr	r0, [pc, #4]	; (8002c98 <__malloc_lock+0x8>)
 8002c92:	f003 ba73 	b.w	800617c <__retarget_lock_acquire_recursive>
 8002c96:	bf00      	nop
 8002c98:	20000c88 	.word	0x20000c88

08002c9c <__malloc_unlock>:
 8002c9c:	4801      	ldr	r0, [pc, #4]	; (8002ca4 <__malloc_unlock+0x8>)
 8002c9e:	f003 ba6f 	b.w	8006180 <__retarget_lock_release_recursive>
 8002ca2:	bf00      	nop
 8002ca4:	20000c88 	.word	0x20000c88

08002ca8 <printf>:
 8002ca8:	b40f      	push	{r0, r1, r2, r3}
 8002caa:	b500      	push	{lr}
 8002cac:	4907      	ldr	r1, [pc, #28]	; (8002ccc <printf+0x24>)
 8002cae:	b083      	sub	sp, #12
 8002cb0:	ab04      	add	r3, sp, #16
 8002cb2:	6808      	ldr	r0, [r1, #0]
 8002cb4:	f853 2b04 	ldr.w	r2, [r3], #4
 8002cb8:	6881      	ldr	r1, [r0, #8]
 8002cba:	9301      	str	r3, [sp, #4]
 8002cbc:	f000 f870 	bl	8002da0 <_vfprintf_r>
 8002cc0:	b003      	add	sp, #12
 8002cc2:	f85d eb04 	ldr.w	lr, [sp], #4
 8002cc6:	b004      	add	sp, #16
 8002cc8:	4770      	bx	lr
 8002cca:	bf00      	nop
 8002ccc:	200001a8 	.word	0x200001a8

08002cd0 <_puts_r>:
 8002cd0:	b570      	push	{r4, r5, r6, lr}
 8002cd2:	4605      	mov	r5, r0
 8002cd4:	b088      	sub	sp, #32
 8002cd6:	4608      	mov	r0, r1
 8002cd8:	460c      	mov	r4, r1
 8002cda:	f7fd fcb1 	bl	8000640 <strlen>
 8002cde:	4a22      	ldr	r2, [pc, #136]	; (8002d68 <_puts_r+0x98>)
 8002ce0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002ce2:	9404      	str	r4, [sp, #16]
 8002ce4:	2601      	movs	r6, #1
 8002ce6:	1c44      	adds	r4, r0, #1
 8002ce8:	a904      	add	r1, sp, #16
 8002cea:	9206      	str	r2, [sp, #24]
 8002cec:	2202      	movs	r2, #2
 8002cee:	9403      	str	r4, [sp, #12]
 8002cf0:	9005      	str	r0, [sp, #20]
 8002cf2:	68ac      	ldr	r4, [r5, #8]
 8002cf4:	9607      	str	r6, [sp, #28]
 8002cf6:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002cfa:	b31b      	cbz	r3, 8002d44 <_puts_r+0x74>
 8002cfc:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002cfe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002d02:	07ce      	lsls	r6, r1, #31
 8002d04:	b29a      	uxth	r2, r3
 8002d06:	d401      	bmi.n	8002d0c <_puts_r+0x3c>
 8002d08:	0590      	lsls	r0, r2, #22
 8002d0a:	d525      	bpl.n	8002d58 <_puts_r+0x88>
 8002d0c:	0491      	lsls	r1, r2, #18
 8002d0e:	d406      	bmi.n	8002d1e <_puts_r+0x4e>
 8002d10:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002d12:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002d16:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002d1a:	81a3      	strh	r3, [r4, #12]
 8002d1c:	6662      	str	r2, [r4, #100]	; 0x64
 8002d1e:	4628      	mov	r0, r5
 8002d20:	aa01      	add	r2, sp, #4
 8002d22:	4621      	mov	r1, r4
 8002d24:	f003 f870 	bl	8005e08 <__sfvwrite_r>
 8002d28:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002d2a:	2800      	cmp	r0, #0
 8002d2c:	bf0c      	ite	eq
 8002d2e:	250a      	moveq	r5, #10
 8002d30:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002d34:	07da      	lsls	r2, r3, #31
 8002d36:	d402      	bmi.n	8002d3e <_puts_r+0x6e>
 8002d38:	89a3      	ldrh	r3, [r4, #12]
 8002d3a:	059b      	lsls	r3, r3, #22
 8002d3c:	d506      	bpl.n	8002d4c <_puts_r+0x7c>
 8002d3e:	4628      	mov	r0, r5
 8002d40:	b008      	add	sp, #32
 8002d42:	bd70      	pop	{r4, r5, r6, pc}
 8002d44:	4628      	mov	r0, r5
 8002d46:	f002 fec9 	bl	8005adc <__sinit>
 8002d4a:	e7d7      	b.n	8002cfc <_puts_r+0x2c>
 8002d4c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002d4e:	f003 fa17 	bl	8006180 <__retarget_lock_release_recursive>
 8002d52:	4628      	mov	r0, r5
 8002d54:	b008      	add	sp, #32
 8002d56:	bd70      	pop	{r4, r5, r6, pc}
 8002d58:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002d5a:	f003 fa0f 	bl	800617c <__retarget_lock_acquire_recursive>
 8002d5e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002d62:	b29a      	uxth	r2, r3
 8002d64:	e7d2      	b.n	8002d0c <_puts_r+0x3c>
 8002d66:	bf00      	nop
 8002d68:	08007518 	.word	0x08007518

08002d6c <puts>:
 8002d6c:	4b02      	ldr	r3, [pc, #8]	; (8002d78 <puts+0xc>)
 8002d6e:	4601      	mov	r1, r0
 8002d70:	6818      	ldr	r0, [r3, #0]
 8002d72:	f7ff bfad 	b.w	8002cd0 <_puts_r>
 8002d76:	bf00      	nop
 8002d78:	200001a8 	.word	0x200001a8

08002d7c <_sbrk_r>:
 8002d7c:	b538      	push	{r3, r4, r5, lr}
 8002d7e:	4c07      	ldr	r4, [pc, #28]	; (8002d9c <_sbrk_r+0x20>)
 8002d80:	2300      	movs	r3, #0
 8002d82:	4605      	mov	r5, r0
 8002d84:	4608      	mov	r0, r1
 8002d86:	6023      	str	r3, [r4, #0]
 8002d88:	f7ff fbd3 	bl	8002532 <_sbrk>
 8002d8c:	1c43      	adds	r3, r0, #1
 8002d8e:	d000      	beq.n	8002d92 <_sbrk_r+0x16>
 8002d90:	bd38      	pop	{r3, r4, r5, pc}
 8002d92:	6823      	ldr	r3, [r4, #0]
 8002d94:	2b00      	cmp	r3, #0
 8002d96:	d0fb      	beq.n	8002d90 <_sbrk_r+0x14>
 8002d98:	602b      	str	r3, [r5, #0]
 8002d9a:	bd38      	pop	{r3, r4, r5, pc}
 8002d9c:	20000c9c 	.word	0x20000c9c

08002da0 <_vfprintf_r>:
 8002da0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002da4:	b0d7      	sub	sp, #348	; 0x15c
 8002da6:	461c      	mov	r4, r3
 8002da8:	4689      	mov	r9, r1
 8002daa:	4617      	mov	r7, r2
 8002dac:	4605      	mov	r5, r0
 8002dae:	9003      	str	r0, [sp, #12]
 8002db0:	f003 f9d2 	bl	8006158 <_localeconv_r>
 8002db4:	6803      	ldr	r3, [r0, #0]
 8002db6:	9316      	str	r3, [sp, #88]	; 0x58
 8002db8:	4618      	mov	r0, r3
 8002dba:	f7fd fc41 	bl	8000640 <strlen>
 8002dbe:	9408      	str	r4, [sp, #32]
 8002dc0:	9015      	str	r0, [sp, #84]	; 0x54
 8002dc2:	b11d      	cbz	r5, 8002dcc <_vfprintf_r+0x2c>
 8002dc4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002dc6:	2b00      	cmp	r3, #0
 8002dc8:	f000 8107 	beq.w	8002fda <_vfprintf_r+0x23a>
 8002dcc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002dd0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002dd4:	07c8      	lsls	r0, r1, #31
 8002dd6:	b293      	uxth	r3, r2
 8002dd8:	d402      	bmi.n	8002de0 <_vfprintf_r+0x40>
 8002dda:	0599      	lsls	r1, r3, #22
 8002ddc:	f140 811f 	bpl.w	800301e <_vfprintf_r+0x27e>
 8002de0:	049e      	lsls	r6, r3, #18
 8002de2:	d40a      	bmi.n	8002dfa <_vfprintf_r+0x5a>
 8002de4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002de8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002dec:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002df0:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002df4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002df8:	b29b      	uxth	r3, r3
 8002dfa:	071d      	lsls	r5, r3, #28
 8002dfc:	f140 80b2 	bpl.w	8002f64 <_vfprintf_r+0x1c4>
 8002e00:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002e04:	2a00      	cmp	r2, #0
 8002e06:	f000 80ad 	beq.w	8002f64 <_vfprintf_r+0x1c4>
 8002e0a:	f003 021a 	and.w	r2, r3, #26
 8002e0e:	2a0a      	cmp	r2, #10
 8002e10:	f000 80c9 	beq.w	8002fa6 <_vfprintf_r+0x206>
 8002e14:	2300      	movs	r3, #0
 8002e16:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8003030 <_vfprintf_r+0x290>
 8002e1a:	9310      	str	r3, [sp, #64]	; 0x40
 8002e1c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002e20:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e22:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002e26:	931b      	str	r3, [sp, #108]	; 0x6c
 8002e28:	9318      	str	r3, [sp, #96]	; 0x60
 8002e2a:	9305      	str	r3, [sp, #20]
 8002e2c:	ab2d      	add	r3, sp, #180	; 0xb4
 8002e2e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002e30:	469b      	mov	fp, r3
 8002e32:	783b      	ldrb	r3, [r7, #0]
 8002e34:	f8cd 901c 	str.w	r9, [sp, #28]
 8002e38:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002e3c:	2b00      	cmp	r3, #0
 8002e3e:	f000 8259 	beq.w	80032f4 <_vfprintf_r+0x554>
 8002e42:	2b25      	cmp	r3, #37	; 0x25
 8002e44:	463c      	mov	r4, r7
 8002e46:	d102      	bne.n	8002e4e <_vfprintf_r+0xae>
 8002e48:	e01d      	b.n	8002e86 <_vfprintf_r+0xe6>
 8002e4a:	2b25      	cmp	r3, #37	; 0x25
 8002e4c:	d003      	beq.n	8002e56 <_vfprintf_r+0xb6>
 8002e4e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002e52:	2b00      	cmp	r3, #0
 8002e54:	d1f9      	bne.n	8002e4a <_vfprintf_r+0xaa>
 8002e56:	1be5      	subs	r5, r4, r7
 8002e58:	b18d      	cbz	r5, 8002e7e <_vfprintf_r+0xde>
 8002e5a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002e5e:	3301      	adds	r3, #1
 8002e60:	442a      	add	r2, r5
 8002e62:	2b07      	cmp	r3, #7
 8002e64:	f8cb 7000 	str.w	r7, [fp]
 8002e68:	f8cb 5004 	str.w	r5, [fp, #4]
 8002e6c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002e70:	f300 80ca 	bgt.w	8003008 <_vfprintf_r+0x268>
 8002e74:	f10b 0b08 	add.w	fp, fp, #8
 8002e78:	9b05      	ldr	r3, [sp, #20]
 8002e7a:	442b      	add	r3, r5
 8002e7c:	9305      	str	r3, [sp, #20]
 8002e7e:	7823      	ldrb	r3, [r4, #0]
 8002e80:	2b00      	cmp	r3, #0
 8002e82:	f000 8237 	beq.w	80032f4 <_vfprintf_r+0x554>
 8002e86:	2300      	movs	r3, #0
 8002e88:	7866      	ldrb	r6, [r4, #1]
 8002e8a:	9306      	str	r3, [sp, #24]
 8002e8c:	4698      	mov	r8, r3
 8002e8e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002e92:	f104 0a01 	add.w	sl, r4, #1
 8002e96:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002e9a:	252b      	movs	r5, #43	; 0x2b
 8002e9c:	f10a 0a01 	add.w	sl, sl, #1
 8002ea0:	f1a6 0320 	sub.w	r3, r6, #32
 8002ea4:	2b5a      	cmp	r3, #90	; 0x5a
 8002ea6:	f200 842a 	bhi.w	80036fe <_vfprintf_r+0x95e>
 8002eaa:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002eae:	03aa      	.short	0x03aa
 8002eb0:	04280428 	.word	0x04280428
 8002eb4:	0428029c 	.word	0x0428029c
 8002eb8:	04280428 	.word	0x04280428
 8002ebc:	042802a7 	.word	0x042802a7
 8002ec0:	02c60428 	.word	0x02c60428
 8002ec4:	042802d2 	.word	0x042802d2
 8002ec8:	02dc02d7 	.word	0x02dc02d7
 8002ecc:	02f60428 	.word	0x02f60428
 8002ed0:	026d026d 	.word	0x026d026d
 8002ed4:	026d026d 	.word	0x026d026d
 8002ed8:	026d026d 	.word	0x026d026d
 8002edc:	026d026d 	.word	0x026d026d
 8002ee0:	0428026d 	.word	0x0428026d
 8002ee4:	04280428 	.word	0x04280428
 8002ee8:	04280428 	.word	0x04280428
 8002eec:	04280428 	.word	0x04280428
 8002ef0:	042802fb 	.word	0x042802fb
 8002ef4:	03f3033c 	.word	0x03f3033c
 8002ef8:	02fb02fb 	.word	0x02fb02fb
 8002efc:	042802fb 	.word	0x042802fb
 8002f00:	04280428 	.word	0x04280428
 8002f04:	03ee0428 	.word	0x03ee0428
 8002f08:	04280428 	.word	0x04280428
 8002f0c:	0428009a 	.word	0x0428009a
 8002f10:	04280428 	.word	0x04280428
 8002f14:	04280350 	.word	0x04280350
 8002f18:	04280379 	.word	0x04280379
 8002f1c:	03900428 	.word	0x03900428
 8002f20:	04280428 	.word	0x04280428
 8002f24:	04280428 	.word	0x04280428
 8002f28:	04280428 	.word	0x04280428
 8002f2c:	04280428 	.word	0x04280428
 8002f30:	042802fb 	.word	0x042802fb
 8002f34:	00c5033c 	.word	0x00c5033c
 8002f38:	02fb02fb 	.word	0x02fb02fb
 8002f3c:	03d102fb 	.word	0x03d102fb
 8002f40:	007000c5 	.word	0x007000c5
 8002f44:	03b50428 	.word	0x03b50428
 8002f48:	03c20428 	.word	0x03c20428
 8002f4c:	03de009c 	.word	0x03de009c
 8002f50:	04280070 	.word	0x04280070
 8002f54:	00720350 	.word	0x00720350
 8002f58:	0428022c 	.word	0x0428022c
 8002f5c:	027c0428 	.word	0x027c0428
 8002f60:	00720428 	.word	0x00720428
 8002f64:	4649      	mov	r1, r9
 8002f66:	9803      	ldr	r0, [sp, #12]
 8002f68:	f001 fc9a 	bl	80048a0 <__swsetup_r>
 8002f6c:	b1a0      	cbz	r0, 8002f98 <_vfprintf_r+0x1f8>
 8002f6e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002f72:	07d8      	lsls	r0, r3, #31
 8002f74:	d404      	bmi.n	8002f80 <_vfprintf_r+0x1e0>
 8002f76:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f7a:	0599      	lsls	r1, r3, #22
 8002f7c:	f140 83b7 	bpl.w	80036ee <_vfprintf_r+0x94e>
 8002f80:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002f84:	9305      	str	r3, [sp, #20]
 8002f86:	9805      	ldr	r0, [sp, #20]
 8002f88:	b057      	add	sp, #348	; 0x15c
 8002f8a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002f8e:	f048 0820 	orr.w	r8, r8, #32
 8002f92:	f89a 6000 	ldrb.w	r6, [sl]
 8002f96:	e781      	b.n	8002e9c <_vfprintf_r+0xfc>
 8002f98:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f9c:	f003 021a 	and.w	r2, r3, #26
 8002fa0:	2a0a      	cmp	r2, #10
 8002fa2:	f47f af37 	bne.w	8002e14 <_vfprintf_r+0x74>
 8002fa6:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002faa:	2a00      	cmp	r2, #0
 8002fac:	f6ff af32 	blt.w	8002e14 <_vfprintf_r+0x74>
 8002fb0:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002fb4:	07d2      	lsls	r2, r2, #31
 8002fb6:	d405      	bmi.n	8002fc4 <_vfprintf_r+0x224>
 8002fb8:	059b      	lsls	r3, r3, #22
 8002fba:	d403      	bmi.n	8002fc4 <_vfprintf_r+0x224>
 8002fbc:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002fc0:	f003 f8de 	bl	8006180 <__retarget_lock_release_recursive>
 8002fc4:	4623      	mov	r3, r4
 8002fc6:	463a      	mov	r2, r7
 8002fc8:	4649      	mov	r1, r9
 8002fca:	9803      	ldr	r0, [sp, #12]
 8002fcc:	f001 fc26 	bl	800481c <__sbprintf>
 8002fd0:	9005      	str	r0, [sp, #20]
 8002fd2:	9805      	ldr	r0, [sp, #20]
 8002fd4:	b057      	add	sp, #348	; 0x15c
 8002fd6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002fda:	9803      	ldr	r0, [sp, #12]
 8002fdc:	f002 fd7e 	bl	8005adc <__sinit>
 8002fe0:	e6f4      	b.n	8002dcc <_vfprintf_r+0x2c>
 8002fe2:	f048 0810 	orr.w	r8, r8, #16
 8002fe6:	f018 0f20 	tst.w	r8, #32
 8002fea:	f000 836c 	beq.w	80036c6 <_vfprintf_r+0x926>
 8002fee:	9c08      	ldr	r4, [sp, #32]
 8002ff0:	3407      	adds	r4, #7
 8002ff2:	f024 0307 	bic.w	r3, r4, #7
 8002ff6:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002ffa:	f103 0208 	add.w	r2, r3, #8
 8002ffe:	9208      	str	r2, [sp, #32]
 8003000:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8003004:	2200      	movs	r2, #0
 8003006:	e18c      	b.n	8003322 <_vfprintf_r+0x582>
 8003008:	aa2a      	add	r2, sp, #168	; 0xa8
 800300a:	9907      	ldr	r1, [sp, #28]
 800300c:	9803      	ldr	r0, [sp, #12]
 800300e:	f003 ff33 	bl	8006e78 <__sprint_r>
 8003012:	2800      	cmp	r0, #0
 8003014:	f041 8376 	bne.w	8004704 <_vfprintf_r+0x1964>
 8003018:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800301c:	e72c      	b.n	8002e78 <_vfprintf_r+0xd8>
 800301e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003022:	f003 f8ab 	bl	800617c <__retarget_lock_acquire_recursive>
 8003026:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800302a:	b293      	uxth	r3, r2
 800302c:	e6d8      	b.n	8002de0 <_vfprintf_r+0x40>
 800302e:	bf00      	nop
	...
 8003038:	4643      	mov	r3, r8
 800303a:	069f      	lsls	r7, r3, #26
 800303c:	f140 832f 	bpl.w	800369e <_vfprintf_r+0x8fe>
 8003040:	9c08      	ldr	r4, [sp, #32]
 8003042:	3407      	adds	r4, #7
 8003044:	f024 0407 	bic.w	r4, r4, #7
 8003048:	e9d4 0100 	ldrd	r0, r1, [r4]
 800304c:	f104 0208 	add.w	r2, r4, #8
 8003050:	9208      	str	r2, [sp, #32]
 8003052:	4604      	mov	r4, r0
 8003054:	460d      	mov	r5, r1
 8003056:	2800      	cmp	r0, #0
 8003058:	f171 0200 	sbcs.w	r2, r1, #0
 800305c:	da05      	bge.n	800306a <_vfprintf_r+0x2ca>
 800305e:	222d      	movs	r2, #45	; 0x2d
 8003060:	4264      	negs	r4, r4
 8003062:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8003066:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800306a:	aa56      	add	r2, sp, #344	; 0x158
 800306c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003070:	9204      	str	r2, [sp, #16]
 8003072:	f000 84b2 	beq.w	80039da <_vfprintf_r+0xc3a>
 8003076:	2201      	movs	r2, #1
 8003078:	ea54 0105 	orrs.w	r1, r4, r5
 800307c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8003080:	f040 8159 	bne.w	8003336 <_vfprintf_r+0x596>
 8003084:	f1b9 0f00 	cmp.w	r9, #0
 8003088:	f040 8619 	bne.w	8003cbe <_vfprintf_r+0xf1e>
 800308c:	2a00      	cmp	r2, #0
 800308e:	f040 8508 	bne.w	8003aa2 <_vfprintf_r+0xd02>
 8003092:	f013 0301 	ands.w	r3, r3, #1
 8003096:	af56      	add	r7, sp, #344	; 0x158
 8003098:	9309      	str	r3, [sp, #36]	; 0x24
 800309a:	d002      	beq.n	80030a2 <_vfprintf_r+0x302>
 800309c:	2330      	movs	r3, #48	; 0x30
 800309e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80030a2:	2300      	movs	r3, #0
 80030a4:	930a      	str	r3, [sp, #40]	; 0x28
 80030a6:	930f      	str	r3, [sp, #60]	; 0x3c
 80030a8:	9314      	str	r3, [sp, #80]	; 0x50
 80030aa:	9311      	str	r3, [sp, #68]	; 0x44
 80030ac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80030ae:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80030b2:	454b      	cmp	r3, r9
 80030b4:	bfb8      	it	lt
 80030b6:	464b      	movlt	r3, r9
 80030b8:	9304      	str	r3, [sp, #16]
 80030ba:	b112      	cbz	r2, 80030c2 <_vfprintf_r+0x322>
 80030bc:	9b04      	ldr	r3, [sp, #16]
 80030be:	3301      	adds	r3, #1
 80030c0:	9304      	str	r3, [sp, #16]
 80030c2:	f018 0302 	ands.w	r3, r8, #2
 80030c6:	930b      	str	r3, [sp, #44]	; 0x2c
 80030c8:	d002      	beq.n	80030d0 <_vfprintf_r+0x330>
 80030ca:	9b04      	ldr	r3, [sp, #16]
 80030cc:	3302      	adds	r3, #2
 80030ce:	9304      	str	r3, [sp, #16]
 80030d0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80030d4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030d6:	930e      	str	r3, [sp, #56]	; 0x38
 80030d8:	d13f      	bne.n	800315a <_vfprintf_r+0x3ba>
 80030da:	9b06      	ldr	r3, [sp, #24]
 80030dc:	9904      	ldr	r1, [sp, #16]
 80030de:	1a5d      	subs	r5, r3, r1
 80030e0:	2d00      	cmp	r5, #0
 80030e2:	dd3a      	ble.n	800315a <_vfprintf_r+0x3ba>
 80030e4:	2d10      	cmp	r5, #16
 80030e6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030e8:	dd29      	ble.n	800313e <_vfprintf_r+0x39e>
 80030ea:	4659      	mov	r1, fp
 80030ec:	4620      	mov	r0, r4
 80030ee:	9620      	str	r6, [sp, #128]	; 0x80
 80030f0:	2310      	movs	r3, #16
 80030f2:	9c03      	ldr	r4, [sp, #12]
 80030f4:	9e07      	ldr	r6, [sp, #28]
 80030f6:	46bb      	mov	fp, r7
 80030f8:	e004      	b.n	8003104 <_vfprintf_r+0x364>
 80030fa:	3d10      	subs	r5, #16
 80030fc:	2d10      	cmp	r5, #16
 80030fe:	f101 0108 	add.w	r1, r1, #8
 8003102:	dd18      	ble.n	8003136 <_vfprintf_r+0x396>
 8003104:	3201      	adds	r2, #1
 8003106:	4fba      	ldr	r7, [pc, #744]	; (80033f0 <_vfprintf_r+0x650>)
 8003108:	3010      	adds	r0, #16
 800310a:	2a07      	cmp	r2, #7
 800310c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003110:	e9c1 7300 	strd	r7, r3, [r1]
 8003114:	ddf1      	ble.n	80030fa <_vfprintf_r+0x35a>
 8003116:	aa2a      	add	r2, sp, #168	; 0xa8
 8003118:	4631      	mov	r1, r6
 800311a:	4620      	mov	r0, r4
 800311c:	930c      	str	r3, [sp, #48]	; 0x30
 800311e:	f003 feab 	bl	8006e78 <__sprint_r>
 8003122:	2800      	cmp	r0, #0
 8003124:	f040 843d 	bne.w	80039a2 <_vfprintf_r+0xc02>
 8003128:	3d10      	subs	r5, #16
 800312a:	2d10      	cmp	r5, #16
 800312c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003130:	a92d      	add	r1, sp, #180	; 0xb4
 8003132:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8003134:	dce6      	bgt.n	8003104 <_vfprintf_r+0x364>
 8003136:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8003138:	465f      	mov	r7, fp
 800313a:	4604      	mov	r4, r0
 800313c:	468b      	mov	fp, r1
 800313e:	3201      	adds	r2, #1
 8003140:	4bab      	ldr	r3, [pc, #684]	; (80033f0 <_vfprintf_r+0x650>)
 8003142:	442c      	add	r4, r5
 8003144:	2a07      	cmp	r2, #7
 8003146:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800314a:	e9cb 3500 	strd	r3, r5, [fp]
 800314e:	f300 84ff 	bgt.w	8003b50 <_vfprintf_r+0xdb0>
 8003152:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003156:	f10b 0b08 	add.w	fp, fp, #8
 800315a:	b172      	cbz	r2, 800317a <_vfprintf_r+0x3da>
 800315c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800315e:	3201      	adds	r2, #1
 8003160:	3401      	adds	r4, #1
 8003162:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8003166:	2101      	movs	r1, #1
 8003168:	2a07      	cmp	r2, #7
 800316a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800316e:	e9cb 0100 	strd	r0, r1, [fp]
 8003172:	f300 8418 	bgt.w	80039a6 <_vfprintf_r+0xc06>
 8003176:	f10b 0b08 	add.w	fp, fp, #8
 800317a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800317c:	b16b      	cbz	r3, 800319a <_vfprintf_r+0x3fa>
 800317e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003180:	3301      	adds	r3, #1
 8003182:	3402      	adds	r4, #2
 8003184:	a923      	add	r1, sp, #140	; 0x8c
 8003186:	2202      	movs	r2, #2
 8003188:	2b07      	cmp	r3, #7
 800318a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800318e:	e9cb 1200 	strd	r1, r2, [fp]
 8003192:	f300 8415 	bgt.w	80039c0 <_vfprintf_r+0xc20>
 8003196:	f10b 0b08 	add.w	fp, fp, #8
 800319a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800319c:	2b80      	cmp	r3, #128	; 0x80
 800319e:	f000 8331 	beq.w	8003804 <_vfprintf_r+0xa64>
 80031a2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80031a4:	eba9 0503 	sub.w	r5, r9, r3
 80031a8:	2d00      	cmp	r5, #0
 80031aa:	dd37      	ble.n	800321c <_vfprintf_r+0x47c>
 80031ac:	2d10      	cmp	r5, #16
 80031ae:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031b0:	4b90      	ldr	r3, [pc, #576]	; (80033f4 <_vfprintf_r+0x654>)
 80031b2:	dd28      	ble.n	8003206 <_vfprintf_r+0x466>
 80031b4:	4659      	mov	r1, fp
 80031b6:	4620      	mov	r0, r4
 80031b8:	46bb      	mov	fp, r7
 80031ba:	f04f 0910 	mov.w	r9, #16
 80031be:	4637      	mov	r7, r6
 80031c0:	461c      	mov	r4, r3
 80031c2:	9e07      	ldr	r6, [sp, #28]
 80031c4:	e004      	b.n	80031d0 <_vfprintf_r+0x430>
 80031c6:	3d10      	subs	r5, #16
 80031c8:	2d10      	cmp	r5, #16
 80031ca:	f101 0108 	add.w	r1, r1, #8
 80031ce:	dd15      	ble.n	80031fc <_vfprintf_r+0x45c>
 80031d0:	3201      	adds	r2, #1
 80031d2:	3010      	adds	r0, #16
 80031d4:	2a07      	cmp	r2, #7
 80031d6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80031da:	e9c1 4900 	strd	r4, r9, [r1]
 80031de:	ddf2      	ble.n	80031c6 <_vfprintf_r+0x426>
 80031e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80031e2:	4631      	mov	r1, r6
 80031e4:	9803      	ldr	r0, [sp, #12]
 80031e6:	f003 fe47 	bl	8006e78 <__sprint_r>
 80031ea:	2800      	cmp	r0, #0
 80031ec:	f040 83d9 	bne.w	80039a2 <_vfprintf_r+0xc02>
 80031f0:	3d10      	subs	r5, #16
 80031f2:	2d10      	cmp	r5, #16
 80031f4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80031f8:	a92d      	add	r1, sp, #180	; 0xb4
 80031fa:	dce9      	bgt.n	80031d0 <_vfprintf_r+0x430>
 80031fc:	463e      	mov	r6, r7
 80031fe:	4623      	mov	r3, r4
 8003200:	465f      	mov	r7, fp
 8003202:	4604      	mov	r4, r0
 8003204:	468b      	mov	fp, r1
 8003206:	3201      	adds	r2, #1
 8003208:	442c      	add	r4, r5
 800320a:	2a07      	cmp	r2, #7
 800320c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003210:	e9cb 3500 	strd	r3, r5, [fp]
 8003214:	f300 83ef 	bgt.w	80039f6 <_vfprintf_r+0xc56>
 8003218:	f10b 0b08 	add.w	fp, fp, #8
 800321c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8003220:	f040 8280 	bne.w	8003724 <_vfprintf_r+0x984>
 8003224:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003226:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003228:	f8cb 7000 	str.w	r7, [fp]
 800322c:	3301      	adds	r3, #1
 800322e:	4414      	add	r4, r2
 8003230:	2b07      	cmp	r3, #7
 8003232:	942c      	str	r4, [sp, #176]	; 0xb0
 8003234:	f8cb 2004 	str.w	r2, [fp, #4]
 8003238:	932b      	str	r3, [sp, #172]	; 0xac
 800323a:	f300 8392 	bgt.w	8003962 <_vfprintf_r+0xbc2>
 800323e:	f10b 0b08 	add.w	fp, fp, #8
 8003242:	f018 0f04 	tst.w	r8, #4
 8003246:	d03b      	beq.n	80032c0 <_vfprintf_r+0x520>
 8003248:	9b06      	ldr	r3, [sp, #24]
 800324a:	9a04      	ldr	r2, [sp, #16]
 800324c:	1a9d      	subs	r5, r3, r2
 800324e:	2d00      	cmp	r5, #0
 8003250:	dd36      	ble.n	80032c0 <_vfprintf_r+0x520>
 8003252:	2d10      	cmp	r5, #16
 8003254:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003256:	dd21      	ble.n	800329c <_vfprintf_r+0x4fc>
 8003258:	2610      	movs	r6, #16
 800325a:	9f03      	ldr	r7, [sp, #12]
 800325c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8003260:	e004      	b.n	800326c <_vfprintf_r+0x4cc>
 8003262:	3d10      	subs	r5, #16
 8003264:	2d10      	cmp	r5, #16
 8003266:	f10b 0b08 	add.w	fp, fp, #8
 800326a:	dd17      	ble.n	800329c <_vfprintf_r+0x4fc>
 800326c:	3301      	adds	r3, #1
 800326e:	4a60      	ldr	r2, [pc, #384]	; (80033f0 <_vfprintf_r+0x650>)
 8003270:	3410      	adds	r4, #16
 8003272:	2b07      	cmp	r3, #7
 8003274:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003278:	e9cb 2600 	strd	r2, r6, [fp]
 800327c:	ddf1      	ble.n	8003262 <_vfprintf_r+0x4c2>
 800327e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003280:	4641      	mov	r1, r8
 8003282:	4638      	mov	r0, r7
 8003284:	f003 fdf8 	bl	8006e78 <__sprint_r>
 8003288:	2800      	cmp	r0, #0
 800328a:	f040 856c 	bne.w	8003d66 <_vfprintf_r+0xfc6>
 800328e:	3d10      	subs	r5, #16
 8003290:	2d10      	cmp	r5, #16
 8003292:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003296:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800329a:	dce7      	bgt.n	800326c <_vfprintf_r+0x4cc>
 800329c:	3301      	adds	r3, #1
 800329e:	4a54      	ldr	r2, [pc, #336]	; (80033f0 <_vfprintf_r+0x650>)
 80032a0:	442c      	add	r4, r5
 80032a2:	2b07      	cmp	r3, #7
 80032a4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80032a8:	e9cb 2500 	strd	r2, r5, [fp]
 80032ac:	dd08      	ble.n	80032c0 <_vfprintf_r+0x520>
 80032ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80032b0:	9907      	ldr	r1, [sp, #28]
 80032b2:	9803      	ldr	r0, [sp, #12]
 80032b4:	f003 fde0 	bl	8006e78 <__sprint_r>
 80032b8:	2800      	cmp	r0, #0
 80032ba:	f040 82e9 	bne.w	8003890 <_vfprintf_r+0xaf0>
 80032be:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032c0:	9904      	ldr	r1, [sp, #16]
 80032c2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80032c6:	428a      	cmp	r2, r1
 80032c8:	bfac      	ite	ge
 80032ca:	189b      	addge	r3, r3, r2
 80032cc:	185b      	addlt	r3, r3, r1
 80032ce:	9305      	str	r3, [sp, #20]
 80032d0:	2c00      	cmp	r4, #0
 80032d2:	f040 82d5 	bne.w	8003880 <_vfprintf_r+0xae0>
 80032d6:	2300      	movs	r3, #0
 80032d8:	932b      	str	r3, [sp, #172]	; 0xac
 80032da:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80032dc:	b11b      	cbz	r3, 80032e6 <_vfprintf_r+0x546>
 80032de:	990a      	ldr	r1, [sp, #40]	; 0x28
 80032e0:	9803      	ldr	r0, [sp, #12]
 80032e2:	f002 fc9d 	bl	8005c20 <_free_r>
 80032e6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032ea:	4657      	mov	r7, sl
 80032ec:	783b      	ldrb	r3, [r7, #0]
 80032ee:	2b00      	cmp	r3, #0
 80032f0:	f47f ada7 	bne.w	8002e42 <_vfprintf_r+0xa2>
 80032f4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80032f6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80032fa:	2b00      	cmp	r3, #0
 80032fc:	f041 80e7 	bne.w	80044ce <_vfprintf_r+0x172e>
 8003300:	2300      	movs	r3, #0
 8003302:	932b      	str	r3, [sp, #172]	; 0xac
 8003304:	e2cb      	b.n	800389e <_vfprintf_r+0xafe>
 8003306:	4643      	mov	r3, r8
 8003308:	069a      	lsls	r2, r3, #26
 800330a:	f140 814e 	bpl.w	80035aa <_vfprintf_r+0x80a>
 800330e:	9c08      	ldr	r4, [sp, #32]
 8003310:	3407      	adds	r4, #7
 8003312:	f024 0207 	bic.w	r2, r4, #7
 8003316:	f102 0108 	add.w	r1, r2, #8
 800331a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800331e:	9108      	str	r1, [sp, #32]
 8003320:	2201      	movs	r2, #1
 8003322:	2100      	movs	r1, #0
 8003324:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8003328:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800332c:	a956      	add	r1, sp, #344	; 0x158
 800332e:	9104      	str	r1, [sp, #16]
 8003330:	f47f aea2 	bne.w	8003078 <_vfprintf_r+0x2d8>
 8003334:	4698      	mov	r8, r3
 8003336:	2a01      	cmp	r2, #1
 8003338:	f000 8350 	beq.w	80039dc <_vfprintf_r+0xc3c>
 800333c:	2a02      	cmp	r2, #2
 800333e:	f000 831b 	beq.w	8003978 <_vfprintf_r+0xbd8>
 8003342:	a956      	add	r1, sp, #344	; 0x158
 8003344:	e000      	b.n	8003348 <_vfprintf_r+0x5a8>
 8003346:	4639      	mov	r1, r7
 8003348:	08e2      	lsrs	r2, r4, #3
 800334a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800334e:	08e8      	lsrs	r0, r5, #3
 8003350:	f004 0307 	and.w	r3, r4, #7
 8003354:	4605      	mov	r5, r0
 8003356:	4614      	mov	r4, r2
 8003358:	3330      	adds	r3, #48	; 0x30
 800335a:	ea54 0205 	orrs.w	r2, r4, r5
 800335e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8003362:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8003366:	d1ee      	bne.n	8003346 <_vfprintf_r+0x5a6>
 8003368:	f018 0f01 	tst.w	r8, #1
 800336c:	f000 8314 	beq.w	8003998 <_vfprintf_r+0xbf8>
 8003370:	2b30      	cmp	r3, #48	; 0x30
 8003372:	f000 8311 	beq.w	8003998 <_vfprintf_r+0xbf8>
 8003376:	9a04      	ldr	r2, [sp, #16]
 8003378:	3902      	subs	r1, #2
 800337a:	2330      	movs	r3, #48	; 0x30
 800337c:	1a52      	subs	r2, r2, r1
 800337e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8003382:	9209      	str	r2, [sp, #36]	; 0x24
 8003384:	460f      	mov	r7, r1
 8003386:	e68c      	b.n	80030a2 <_vfprintf_r+0x302>
 8003388:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800338c:	2200      	movs	r2, #0
 800338e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003392:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8003396:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800339a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800339e:	2b09      	cmp	r3, #9
 80033a0:	d9f5      	bls.n	800338e <_vfprintf_r+0x5ee>
 80033a2:	9206      	str	r2, [sp, #24]
 80033a4:	e57c      	b.n	8002ea0 <_vfprintf_r+0x100>
 80033a6:	4b14      	ldr	r3, [pc, #80]	; (80033f8 <_vfprintf_r+0x658>)
 80033a8:	9317      	str	r3, [sp, #92]	; 0x5c
 80033aa:	f018 0f20 	tst.w	r8, #32
 80033ae:	f000 8114 	beq.w	80035da <_vfprintf_r+0x83a>
 80033b2:	9c08      	ldr	r4, [sp, #32]
 80033b4:	3407      	adds	r4, #7
 80033b6:	f024 0307 	bic.w	r3, r4, #7
 80033ba:	e9d3 4500 	ldrd	r4, r5, [r3]
 80033be:	f103 0208 	add.w	r2, r3, #8
 80033c2:	9208      	str	r2, [sp, #32]
 80033c4:	f018 0f01 	tst.w	r8, #1
 80033c8:	d009      	beq.n	80033de <_vfprintf_r+0x63e>
 80033ca:	ea54 0305 	orrs.w	r3, r4, r5
 80033ce:	d006      	beq.n	80033de <_vfprintf_r+0x63e>
 80033d0:	2330      	movs	r3, #48	; 0x30
 80033d2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80033d6:	f048 0802 	orr.w	r8, r8, #2
 80033da:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80033de:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80033e2:	2202      	movs	r2, #2
 80033e4:	e79d      	b.n	8003322 <_vfprintf_r+0x582>
 80033e6:	f048 0801 	orr.w	r8, r8, #1
 80033ea:	f89a 6000 	ldrb.w	r6, [sl]
 80033ee:	e555      	b.n	8002e9c <_vfprintf_r+0xfc>
 80033f0:	08007560 	.word	0x08007560
 80033f4:	08007570 	.word	0x08007570
 80033f8:	0800752c 	.word	0x0800752c
 80033fc:	9e03      	ldr	r6, [sp, #12]
 80033fe:	4630      	mov	r0, r6
 8003400:	f002 feaa 	bl	8006158 <_localeconv_r>
 8003404:	6843      	ldr	r3, [r0, #4]
 8003406:	9318      	str	r3, [sp, #96]	; 0x60
 8003408:	4618      	mov	r0, r3
 800340a:	f7fd f919 	bl	8000640 <strlen>
 800340e:	901b      	str	r0, [sp, #108]	; 0x6c
 8003410:	4604      	mov	r4, r0
 8003412:	4630      	mov	r0, r6
 8003414:	f002 fea0 	bl	8006158 <_localeconv_r>
 8003418:	6883      	ldr	r3, [r0, #8]
 800341a:	931a      	str	r3, [sp, #104]	; 0x68
 800341c:	2c00      	cmp	r4, #0
 800341e:	f43f adb8 	beq.w	8002f92 <_vfprintf_r+0x1f2>
 8003422:	f89a 6000 	ldrb.w	r6, [sl]
 8003426:	2b00      	cmp	r3, #0
 8003428:	f43f ad38 	beq.w	8002e9c <_vfprintf_r+0xfc>
 800342c:	781b      	ldrb	r3, [r3, #0]
 800342e:	2b00      	cmp	r3, #0
 8003430:	f43f ad34 	beq.w	8002e9c <_vfprintf_r+0xfc>
 8003434:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8003438:	e530      	b.n	8002e9c <_vfprintf_r+0xfc>
 800343a:	9b08      	ldr	r3, [sp, #32]
 800343c:	f89a 6000 	ldrb.w	r6, [sl]
 8003440:	681a      	ldr	r2, [r3, #0]
 8003442:	9206      	str	r2, [sp, #24]
 8003444:	2a00      	cmp	r2, #0
 8003446:	f103 0304 	add.w	r3, r3, #4
 800344a:	f2c0 8697 	blt.w	800417c <_vfprintf_r+0x13dc>
 800344e:	9308      	str	r3, [sp, #32]
 8003450:	e524      	b.n	8002e9c <_vfprintf_r+0xfc>
 8003452:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003456:	f89a 6000 	ldrb.w	r6, [sl]
 800345a:	e51f      	b.n	8002e9c <_vfprintf_r+0xfc>
 800345c:	f89a 6000 	ldrb.w	r6, [sl]
 8003460:	f048 0804 	orr.w	r8, r8, #4
 8003464:	e51a      	b.n	8002e9c <_vfprintf_r+0xfc>
 8003466:	f89a 6000 	ldrb.w	r6, [sl]
 800346a:	2e2a      	cmp	r6, #42	; 0x2a
 800346c:	f10a 0201 	add.w	r2, sl, #1
 8003470:	f001 81b0 	beq.w	80047d4 <_vfprintf_r+0x1a34>
 8003474:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003478:	2b09      	cmp	r3, #9
 800347a:	4692      	mov	sl, r2
 800347c:	f04f 0900 	mov.w	r9, #0
 8003480:	f63f ad0e 	bhi.w	8002ea0 <_vfprintf_r+0x100>
 8003484:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003488:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 800348c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003490:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003494:	2b09      	cmp	r3, #9
 8003496:	d9f5      	bls.n	8003484 <_vfprintf_r+0x6e4>
 8003498:	e502      	b.n	8002ea0 <_vfprintf_r+0x100>
 800349a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 800349e:	f89a 6000 	ldrb.w	r6, [sl]
 80034a2:	e4fb      	b.n	8002e9c <_vfprintf_r+0xfc>
 80034a4:	9c08      	ldr	r4, [sp, #32]
 80034a6:	3407      	adds	r4, #7
 80034a8:	f024 0407 	bic.w	r4, r4, #7
 80034ac:	ed94 7b00 	vldr	d7, [r4]
 80034b0:	ec52 1b17 	vmov	r1, r2, d7
 80034b4:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80034b8:	931d      	str	r3, [sp, #116]	; 0x74
 80034ba:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80034be:	3408      	adds	r4, #8
 80034c0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80034c4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80034c8:	4bba      	ldr	r3, [pc, #744]	; (80037b4 <_vfprintf_r+0xa14>)
 80034ca:	9408      	str	r4, [sp, #32]
 80034cc:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80034d0:	f7fd fdcc 	bl	800106c <__aeabi_dcmpun>
 80034d4:	2800      	cmp	r0, #0
 80034d6:	f040 846f 	bne.w	8003db8 <_vfprintf_r+0x1018>
 80034da:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80034de:	4bb5      	ldr	r3, [pc, #724]	; (80037b4 <_vfprintf_r+0xa14>)
 80034e0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80034e4:	f7fd fda4 	bl	8001030 <__aeabi_dcmple>
 80034e8:	2800      	cmp	r0, #0
 80034ea:	f040 8465 	bne.w	8003db8 <_vfprintf_r+0x1018>
 80034ee:	2200      	movs	r2, #0
 80034f0:	2300      	movs	r3, #0
 80034f2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80034f6:	f7fd fd91 	bl	800101c <__aeabi_dcmplt>
 80034fa:	2800      	cmp	r0, #0
 80034fc:	f040 855b 	bne.w	8003fb6 <_vfprintf_r+0x1216>
 8003500:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003504:	4fac      	ldr	r7, [pc, #688]	; (80037b8 <_vfprintf_r+0xa18>)
 8003506:	4bad      	ldr	r3, [pc, #692]	; (80037bc <_vfprintf_r+0xa1c>)
 8003508:	2000      	movs	r0, #0
 800350a:	2103      	movs	r1, #3
 800350c:	9104      	str	r1, [sp, #16]
 800350e:	900a      	str	r0, [sp, #40]	; 0x28
 8003510:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8003514:	2e47      	cmp	r6, #71	; 0x47
 8003516:	bfd8      	it	le
 8003518:	461f      	movle	r7, r3
 800351a:	9109      	str	r1, [sp, #36]	; 0x24
 800351c:	4681      	mov	r9, r0
 800351e:	900f      	str	r0, [sp, #60]	; 0x3c
 8003520:	9014      	str	r0, [sp, #80]	; 0x50
 8003522:	9011      	str	r0, [sp, #68]	; 0x44
 8003524:	e5c9      	b.n	80030ba <_vfprintf_r+0x31a>
 8003526:	9808      	ldr	r0, [sp, #32]
 8003528:	2300      	movs	r3, #0
 800352a:	6801      	ldr	r1, [r0, #0]
 800352c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003530:	461a      	mov	r2, r3
 8003532:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8003536:	2301      	movs	r3, #1
 8003538:	1d01      	adds	r1, r0, #4
 800353a:	9304      	str	r3, [sp, #16]
 800353c:	920a      	str	r2, [sp, #40]	; 0x28
 800353e:	4691      	mov	r9, r2
 8003540:	920f      	str	r2, [sp, #60]	; 0x3c
 8003542:	9214      	str	r2, [sp, #80]	; 0x50
 8003544:	9211      	str	r2, [sp, #68]	; 0x44
 8003546:	e9cd 1308 	strd	r1, r3, [sp, #32]
 800354a:	af3d      	add	r7, sp, #244	; 0xf4
 800354c:	e5b9      	b.n	80030c2 <_vfprintf_r+0x322>
 800354e:	9b08      	ldr	r3, [sp, #32]
 8003550:	681f      	ldr	r7, [r3, #0]
 8003552:	2500      	movs	r5, #0
 8003554:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003558:	1d1c      	adds	r4, r3, #4
 800355a:	2f00      	cmp	r7, #0
 800355c:	f000 8639 	beq.w	80041d2 <_vfprintf_r+0x1432>
 8003560:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003564:	f000 8711 	beq.w	800438a <_vfprintf_r+0x15ea>
 8003568:	464a      	mov	r2, r9
 800356a:	4629      	mov	r1, r5
 800356c:	4638      	mov	r0, r7
 800356e:	f7fd f8d7 	bl	8000720 <memchr>
 8003572:	900a      	str	r0, [sp, #40]	; 0x28
 8003574:	2800      	cmp	r0, #0
 8003576:	f000 85e7 	beq.w	8004148 <_vfprintf_r+0x13a8>
 800357a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800357c:	1bdb      	subs	r3, r3, r7
 800357e:	9309      	str	r3, [sp, #36]	; 0x24
 8003580:	46a9      	mov	r9, r5
 8003582:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003586:	9408      	str	r4, [sp, #32]
 8003588:	9304      	str	r3, [sp, #16]
 800358a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800358e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8003592:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003596:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 800359a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800359e:	e58c      	b.n	80030ba <_vfprintf_r+0x31a>
 80035a0:	f048 0310 	orr.w	r3, r8, #16
 80035a4:	069a      	lsls	r2, r3, #26
 80035a6:	f53f aeb2 	bmi.w	800330e <_vfprintf_r+0x56e>
 80035aa:	9a08      	ldr	r2, [sp, #32]
 80035ac:	06df      	lsls	r7, r3, #27
 80035ae:	f102 0104 	add.w	r1, r2, #4
 80035b2:	f100 837e 	bmi.w	8003cb2 <_vfprintf_r+0xf12>
 80035b6:	065d      	lsls	r5, r3, #25
 80035b8:	9a08      	ldr	r2, [sp, #32]
 80035ba:	f100 84e4 	bmi.w	8003f86 <_vfprintf_r+0x11e6>
 80035be:	059c      	lsls	r4, r3, #22
 80035c0:	f140 8377 	bpl.w	8003cb2 <_vfprintf_r+0xf12>
 80035c4:	7814      	ldrb	r4, [r2, #0]
 80035c6:	9108      	str	r1, [sp, #32]
 80035c8:	2500      	movs	r5, #0
 80035ca:	2201      	movs	r2, #1
 80035cc:	e6a9      	b.n	8003322 <_vfprintf_r+0x582>
 80035ce:	4b7c      	ldr	r3, [pc, #496]	; (80037c0 <_vfprintf_r+0xa20>)
 80035d0:	9317      	str	r3, [sp, #92]	; 0x5c
 80035d2:	f018 0f20 	tst.w	r8, #32
 80035d6:	f47f aeec 	bne.w	80033b2 <_vfprintf_r+0x612>
 80035da:	9a08      	ldr	r2, [sp, #32]
 80035dc:	f018 0f10 	tst.w	r8, #16
 80035e0:	f102 0304 	add.w	r3, r2, #4
 80035e4:	f040 8354 	bne.w	8003c90 <_vfprintf_r+0xef0>
 80035e8:	f018 0f40 	tst.w	r8, #64	; 0x40
 80035ec:	9a08      	ldr	r2, [sp, #32]
 80035ee:	f040 84d0 	bne.w	8003f92 <_vfprintf_r+0x11f2>
 80035f2:	f418 7f00 	tst.w	r8, #512	; 0x200
 80035f6:	f000 834b 	beq.w	8003c90 <_vfprintf_r+0xef0>
 80035fa:	7814      	ldrb	r4, [r2, #0]
 80035fc:	9308      	str	r3, [sp, #32]
 80035fe:	2500      	movs	r5, #0
 8003600:	e6e0      	b.n	80033c4 <_vfprintf_r+0x624>
 8003602:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8003606:	f89a 6000 	ldrb.w	r6, [sl]
 800360a:	2b00      	cmp	r3, #0
 800360c:	f47f ac46 	bne.w	8002e9c <_vfprintf_r+0xfc>
 8003610:	2320      	movs	r3, #32
 8003612:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003616:	e441      	b.n	8002e9c <_vfprintf_r+0xfc>
 8003618:	f89a 6000 	ldrb.w	r6, [sl]
 800361c:	2e6c      	cmp	r6, #108	; 0x6c
 800361e:	bf03      	ittte	eq
 8003620:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003624:	f048 0820 	orreq.w	r8, r8, #32
 8003628:	f10a 0a01 	addeq.w	sl, sl, #1
 800362c:	f048 0810 	orrne.w	r8, r8, #16
 8003630:	e434      	b.n	8002e9c <_vfprintf_r+0xfc>
 8003632:	9a08      	ldr	r2, [sp, #32]
 8003634:	f018 0f20 	tst.w	r8, #32
 8003638:	f852 3b04 	ldr.w	r3, [r2], #4
 800363c:	9208      	str	r2, [sp, #32]
 800363e:	f000 83a1 	beq.w	8003d84 <_vfprintf_r+0xfe4>
 8003642:	9a05      	ldr	r2, [sp, #20]
 8003644:	4610      	mov	r0, r2
 8003646:	17d1      	asrs	r1, r2, #31
 8003648:	e9c3 0100 	strd	r0, r1, [r3]
 800364c:	4657      	mov	r7, sl
 800364e:	e64d      	b.n	80032ec <_vfprintf_r+0x54c>
 8003650:	f89a 6000 	ldrb.w	r6, [sl]
 8003654:	2e68      	cmp	r6, #104	; 0x68
 8003656:	bf03      	ittte	eq
 8003658:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800365c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003660:	f10a 0a01 	addeq.w	sl, sl, #1
 8003664:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003668:	e418      	b.n	8002e9c <_vfprintf_r+0xfc>
 800366a:	9908      	ldr	r1, [sp, #32]
 800366c:	4b55      	ldr	r3, [pc, #340]	; (80037c4 <_vfprintf_r+0xa24>)
 800366e:	680c      	ldr	r4, [r1, #0]
 8003670:	9317      	str	r3, [sp, #92]	; 0x5c
 8003672:	f647 0230 	movw	r2, #30768	; 0x7830
 8003676:	3104      	adds	r1, #4
 8003678:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 800367c:	f048 0302 	orr.w	r3, r8, #2
 8003680:	9108      	str	r1, [sp, #32]
 8003682:	2500      	movs	r5, #0
 8003684:	2202      	movs	r2, #2
 8003686:	2678      	movs	r6, #120	; 0x78
 8003688:	e64b      	b.n	8003322 <_vfprintf_r+0x582>
 800368a:	f048 0808 	orr.w	r8, r8, #8
 800368e:	f89a 6000 	ldrb.w	r6, [sl]
 8003692:	e403      	b.n	8002e9c <_vfprintf_r+0xfc>
 8003694:	f048 0310 	orr.w	r3, r8, #16
 8003698:	069f      	lsls	r7, r3, #26
 800369a:	f53f acd1 	bmi.w	8003040 <_vfprintf_r+0x2a0>
 800369e:	9908      	ldr	r1, [sp, #32]
 80036a0:	06dd      	lsls	r5, r3, #27
 80036a2:	f101 0204 	add.w	r2, r1, #4
 80036a6:	f100 82fd 	bmi.w	8003ca4 <_vfprintf_r+0xf04>
 80036aa:	065c      	lsls	r4, r3, #25
 80036ac:	9908      	ldr	r1, [sp, #32]
 80036ae:	f100 8475 	bmi.w	8003f9c <_vfprintf_r+0x11fc>
 80036b2:	0598      	lsls	r0, r3, #22
 80036b4:	f140 82f6 	bpl.w	8003ca4 <_vfprintf_r+0xf04>
 80036b8:	f991 4000 	ldrsb.w	r4, [r1]
 80036bc:	9208      	str	r2, [sp, #32]
 80036be:	17e5      	asrs	r5, r4, #31
 80036c0:	4620      	mov	r0, r4
 80036c2:	4629      	mov	r1, r5
 80036c4:	e4c7      	b.n	8003056 <_vfprintf_r+0x2b6>
 80036c6:	9a08      	ldr	r2, [sp, #32]
 80036c8:	f018 0f10 	tst.w	r8, #16
 80036cc:	f102 0304 	add.w	r3, r2, #4
 80036d0:	f040 82e3 	bne.w	8003c9a <_vfprintf_r+0xefa>
 80036d4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80036d8:	9a08      	ldr	r2, [sp, #32]
 80036da:	f040 8467 	bne.w	8003fac <_vfprintf_r+0x120c>
 80036de:	f418 7f00 	tst.w	r8, #512	; 0x200
 80036e2:	f000 82da 	beq.w	8003c9a <_vfprintf_r+0xefa>
 80036e6:	7814      	ldrb	r4, [r2, #0]
 80036e8:	9308      	str	r3, [sp, #32]
 80036ea:	2500      	movs	r5, #0
 80036ec:	e488      	b.n	8003000 <_vfprintf_r+0x260>
 80036ee:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80036f2:	f002 fd45 	bl	8006180 <__retarget_lock_release_recursive>
 80036f6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80036fa:	9305      	str	r3, [sp, #20]
 80036fc:	e443      	b.n	8002f86 <_vfprintf_r+0x1e6>
 80036fe:	2e00      	cmp	r6, #0
 8003700:	f43f adf8 	beq.w	80032f4 <_vfprintf_r+0x554>
 8003704:	2300      	movs	r3, #0
 8003706:	2101      	movs	r1, #1
 8003708:	461a      	mov	r2, r3
 800370a:	9104      	str	r1, [sp, #16]
 800370c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003710:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003714:	930a      	str	r3, [sp, #40]	; 0x28
 8003716:	4699      	mov	r9, r3
 8003718:	930f      	str	r3, [sp, #60]	; 0x3c
 800371a:	9314      	str	r3, [sp, #80]	; 0x50
 800371c:	9311      	str	r3, [sp, #68]	; 0x44
 800371e:	9109      	str	r1, [sp, #36]	; 0x24
 8003720:	af3d      	add	r7, sp, #244	; 0xf4
 8003722:	e4ce      	b.n	80030c2 <_vfprintf_r+0x322>
 8003724:	2e65      	cmp	r6, #101	; 0x65
 8003726:	f340 80ca 	ble.w	80038be <_vfprintf_r+0xb1e>
 800372a:	2200      	movs	r2, #0
 800372c:	2300      	movs	r3, #0
 800372e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003732:	f7fd fc69 	bl	8001008 <__aeabi_dcmpeq>
 8003736:	2800      	cmp	r0, #0
 8003738:	f000 8169 	beq.w	8003a0e <_vfprintf_r+0xc6e>
 800373c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800373e:	4a22      	ldr	r2, [pc, #136]	; (80037c8 <_vfprintf_r+0xa28>)
 8003740:	f8cb 2000 	str.w	r2, [fp]
 8003744:	3301      	adds	r3, #1
 8003746:	3401      	adds	r4, #1
 8003748:	2201      	movs	r2, #1
 800374a:	2b07      	cmp	r3, #7
 800374c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003750:	f8cb 2004 	str.w	r2, [fp, #4]
 8003754:	f300 8406 	bgt.w	8003f64 <_vfprintf_r+0x11c4>
 8003758:	f10b 0b08 	add.w	fp, fp, #8
 800375c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800375e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003760:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003762:	4293      	cmp	r3, r2
 8003764:	db03      	blt.n	800376e <_vfprintf_r+0x9ce>
 8003766:	f018 0f01 	tst.w	r8, #1
 800376a:	f43f ad6a 	beq.w	8003242 <_vfprintf_r+0x4a2>
 800376e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003770:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003772:	f8cb 2000 	str.w	r2, [fp]
 8003776:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003778:	f8cb 2004 	str.w	r2, [fp, #4]
 800377c:	3301      	adds	r3, #1
 800377e:	4414      	add	r4, r2
 8003780:	2b07      	cmp	r3, #7
 8003782:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003786:	f300 8517 	bgt.w	80041b8 <_vfprintf_r+0x1418>
 800378a:	f10b 0b08 	add.w	fp, fp, #8
 800378e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003790:	1e5d      	subs	r5, r3, #1
 8003792:	2d00      	cmp	r5, #0
 8003794:	f77f ad55 	ble.w	8003242 <_vfprintf_r+0x4a2>
 8003798:	2d10      	cmp	r5, #16
 800379a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800379c:	4b0b      	ldr	r3, [pc, #44]	; (80037cc <_vfprintf_r+0xa2c>)
 800379e:	f340 82e7 	ble.w	8003d70 <_vfprintf_r+0xfd0>
 80037a2:	4619      	mov	r1, r3
 80037a4:	2610      	movs	r6, #16
 80037a6:	4623      	mov	r3, r4
 80037a8:	9f03      	ldr	r7, [sp, #12]
 80037aa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80037ae:	460c      	mov	r4, r1
 80037b0:	e014      	b.n	80037dc <_vfprintf_r+0xa3c>
 80037b2:	bf00      	nop
 80037b4:	7fefffff 	.word	0x7fefffff
 80037b8:	08007520 	.word	0x08007520
 80037bc:	0800751c 	.word	0x0800751c
 80037c0:	08007540 	.word	0x08007540
 80037c4:	0800752c 	.word	0x0800752c
 80037c8:	0800755c 	.word	0x0800755c
 80037cc:	08007570 	.word	0x08007570
 80037d0:	f10b 0b08 	add.w	fp, fp, #8
 80037d4:	3d10      	subs	r5, #16
 80037d6:	2d10      	cmp	r5, #16
 80037d8:	f340 82c7 	ble.w	8003d6a <_vfprintf_r+0xfca>
 80037dc:	3201      	adds	r2, #1
 80037de:	3310      	adds	r3, #16
 80037e0:	2a07      	cmp	r2, #7
 80037e2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80037e6:	e9cb 4600 	strd	r4, r6, [fp]
 80037ea:	ddf1      	ble.n	80037d0 <_vfprintf_r+0xa30>
 80037ec:	aa2a      	add	r2, sp, #168	; 0xa8
 80037ee:	4649      	mov	r1, r9
 80037f0:	4638      	mov	r0, r7
 80037f2:	f003 fb41 	bl	8006e78 <__sprint_r>
 80037f6:	2800      	cmp	r0, #0
 80037f8:	d14c      	bne.n	8003894 <_vfprintf_r+0xaf4>
 80037fa:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80037fe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003802:	e7e7      	b.n	80037d4 <_vfprintf_r+0xa34>
 8003804:	9b06      	ldr	r3, [sp, #24]
 8003806:	9a04      	ldr	r2, [sp, #16]
 8003808:	1a9d      	subs	r5, r3, r2
 800380a:	2d00      	cmp	r5, #0
 800380c:	f77f acc9 	ble.w	80031a2 <_vfprintf_r+0x402>
 8003810:	2d10      	cmp	r5, #16
 8003812:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003814:	4bbc      	ldr	r3, [pc, #752]	; (8003b08 <_vfprintf_r+0xd68>)
 8003816:	dd27      	ble.n	8003868 <_vfprintf_r+0xac8>
 8003818:	4659      	mov	r1, fp
 800381a:	4620      	mov	r0, r4
 800381c:	46bb      	mov	fp, r7
 800381e:	461c      	mov	r4, r3
 8003820:	4637      	mov	r7, r6
 8003822:	9e07      	ldr	r6, [sp, #28]
 8003824:	e004      	b.n	8003830 <_vfprintf_r+0xa90>
 8003826:	3d10      	subs	r5, #16
 8003828:	2d10      	cmp	r5, #16
 800382a:	f101 0108 	add.w	r1, r1, #8
 800382e:	dd16      	ble.n	800385e <_vfprintf_r+0xabe>
 8003830:	3201      	adds	r2, #1
 8003832:	3010      	adds	r0, #16
 8003834:	2310      	movs	r3, #16
 8003836:	2a07      	cmp	r2, #7
 8003838:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800383c:	600c      	str	r4, [r1, #0]
 800383e:	604b      	str	r3, [r1, #4]
 8003840:	ddf1      	ble.n	8003826 <_vfprintf_r+0xa86>
 8003842:	aa2a      	add	r2, sp, #168	; 0xa8
 8003844:	4631      	mov	r1, r6
 8003846:	9803      	ldr	r0, [sp, #12]
 8003848:	f003 fb16 	bl	8006e78 <__sprint_r>
 800384c:	2800      	cmp	r0, #0
 800384e:	f040 80a8 	bne.w	80039a2 <_vfprintf_r+0xc02>
 8003852:	3d10      	subs	r5, #16
 8003854:	2d10      	cmp	r5, #16
 8003856:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800385a:	a92d      	add	r1, sp, #180	; 0xb4
 800385c:	dce8      	bgt.n	8003830 <_vfprintf_r+0xa90>
 800385e:	463e      	mov	r6, r7
 8003860:	4623      	mov	r3, r4
 8003862:	465f      	mov	r7, fp
 8003864:	4604      	mov	r4, r0
 8003866:	468b      	mov	fp, r1
 8003868:	3201      	adds	r2, #1
 800386a:	442c      	add	r4, r5
 800386c:	2a07      	cmp	r2, #7
 800386e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003872:	e9cb 3500 	strd	r3, r5, [fp]
 8003876:	f300 8292 	bgt.w	8003d9e <_vfprintf_r+0xffe>
 800387a:	f10b 0b08 	add.w	fp, fp, #8
 800387e:	e490      	b.n	80031a2 <_vfprintf_r+0x402>
 8003880:	aa2a      	add	r2, sp, #168	; 0xa8
 8003882:	9907      	ldr	r1, [sp, #28]
 8003884:	9803      	ldr	r0, [sp, #12]
 8003886:	f003 faf7 	bl	8006e78 <__sprint_r>
 800388a:	2800      	cmp	r0, #0
 800388c:	f43f ad23 	beq.w	80032d6 <_vfprintf_r+0x536>
 8003890:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003894:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003896:	b111      	cbz	r1, 800389e <_vfprintf_r+0xafe>
 8003898:	9803      	ldr	r0, [sp, #12]
 800389a:	f002 f9c1 	bl	8005c20 <_free_r>
 800389e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80038a2:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80038a6:	07d0      	lsls	r0, r2, #31
 80038a8:	d402      	bmi.n	80038b0 <_vfprintf_r+0xb10>
 80038aa:	0599      	lsls	r1, r3, #22
 80038ac:	f140 81d0 	bpl.w	8003c50 <_vfprintf_r+0xeb0>
 80038b0:	065a      	lsls	r2, r3, #25
 80038b2:	f53f ab65 	bmi.w	8002f80 <_vfprintf_r+0x1e0>
 80038b6:	9805      	ldr	r0, [sp, #20]
 80038b8:	b057      	add	sp, #348	; 0x15c
 80038ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80038be:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80038c0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80038c2:	2a01      	cmp	r2, #1
 80038c4:	f104 0401 	add.w	r4, r4, #1
 80038c8:	f103 0501 	add.w	r5, r3, #1
 80038cc:	f10b 0608 	add.w	r6, fp, #8
 80038d0:	f340 811c 	ble.w	8003b0c <_vfprintf_r+0xd6c>
 80038d4:	2301      	movs	r3, #1
 80038d6:	2d07      	cmp	r5, #7
 80038d8:	f8cb 7000 	str.w	r7, [fp]
 80038dc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80038e0:	f8cb 3004 	str.w	r3, [fp, #4]
 80038e4:	f300 81bb 	bgt.w	8003c5e <_vfprintf_r+0xebe>
 80038e8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80038ea:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80038ec:	1c69      	adds	r1, r5, #1
 80038ee:	441c      	add	r4, r3
 80038f0:	2907      	cmp	r1, #7
 80038f2:	910b      	str	r1, [sp, #44]	; 0x2c
 80038f4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80038f8:	e9c6 2300 	strd	r2, r3, [r6]
 80038fc:	f300 81bb 	bgt.w	8003c76 <_vfprintf_r+0xed6>
 8003900:	3608      	adds	r6, #8
 8003902:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003904:	1c53      	adds	r3, r2, #1
 8003906:	461d      	mov	r5, r3
 8003908:	9509      	str	r5, [sp, #36]	; 0x24
 800390a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 800390c:	930e      	str	r3, [sp, #56]	; 0x38
 800390e:	2200      	movs	r2, #0
 8003910:	2300      	movs	r3, #0
 8003912:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003916:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 800391a:	f106 0b08 	add.w	fp, r6, #8
 800391e:	f7fd fb73 	bl	8001008 <__aeabi_dcmpeq>
 8003922:	2800      	cmp	r0, #0
 8003924:	f040 80c2 	bne.w	8003aac <_vfprintf_r+0xd0c>
 8003928:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800392a:	f8c6 9004 	str.w	r9, [r6, #4]
 800392e:	3701      	adds	r7, #1
 8003930:	444c      	add	r4, r9
 8003932:	2d07      	cmp	r5, #7
 8003934:	6037      	str	r7, [r6, #0]
 8003936:	942c      	str	r4, [sp, #176]	; 0xb0
 8003938:	952b      	str	r5, [sp, #172]	; 0xac
 800393a:	f300 80f9 	bgt.w	8003b30 <_vfprintf_r+0xd90>
 800393e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003940:	f106 0310 	add.w	r3, r6, #16
 8003944:	3202      	adds	r2, #2
 8003946:	465e      	mov	r6, fp
 8003948:	9209      	str	r2, [sp, #36]	; 0x24
 800394a:	469b      	mov	fp, r3
 800394c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800394e:	6072      	str	r2, [r6, #4]
 8003950:	4414      	add	r4, r2
 8003952:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003954:	942c      	str	r4, [sp, #176]	; 0xb0
 8003956:	ab26      	add	r3, sp, #152	; 0x98
 8003958:	2a07      	cmp	r2, #7
 800395a:	922b      	str	r2, [sp, #172]	; 0xac
 800395c:	6033      	str	r3, [r6, #0]
 800395e:	f77f ac70 	ble.w	8003242 <_vfprintf_r+0x4a2>
 8003962:	aa2a      	add	r2, sp, #168	; 0xa8
 8003964:	9907      	ldr	r1, [sp, #28]
 8003966:	9803      	ldr	r0, [sp, #12]
 8003968:	f003 fa86 	bl	8006e78 <__sprint_r>
 800396c:	2800      	cmp	r0, #0
 800396e:	d18f      	bne.n	8003890 <_vfprintf_r+0xaf0>
 8003970:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003972:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003976:	e464      	b.n	8003242 <_vfprintf_r+0x4a2>
 8003978:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800397a:	af56      	add	r7, sp, #344	; 0x158
 800397c:	0923      	lsrs	r3, r4, #4
 800397e:	f004 010f 	and.w	r1, r4, #15
 8003982:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003986:	092a      	lsrs	r2, r5, #4
 8003988:	461c      	mov	r4, r3
 800398a:	4615      	mov	r5, r2
 800398c:	5c43      	ldrb	r3, [r0, r1]
 800398e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003992:	ea54 0305 	orrs.w	r3, r4, r5
 8003996:	d1f1      	bne.n	800397c <_vfprintf_r+0xbdc>
 8003998:	9b04      	ldr	r3, [sp, #16]
 800399a:	1bdb      	subs	r3, r3, r7
 800399c:	9309      	str	r3, [sp, #36]	; 0x24
 800399e:	f7ff bb80 	b.w	80030a2 <_vfprintf_r+0x302>
 80039a2:	46b1      	mov	r9, r6
 80039a4:	e776      	b.n	8003894 <_vfprintf_r+0xaf4>
 80039a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80039a8:	9907      	ldr	r1, [sp, #28]
 80039aa:	9803      	ldr	r0, [sp, #12]
 80039ac:	f003 fa64 	bl	8006e78 <__sprint_r>
 80039b0:	2800      	cmp	r0, #0
 80039b2:	f47f af6d 	bne.w	8003890 <_vfprintf_r+0xaf0>
 80039b6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039bc:	f7ff bbdd 	b.w	800317a <_vfprintf_r+0x3da>
 80039c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039c2:	9907      	ldr	r1, [sp, #28]
 80039c4:	9803      	ldr	r0, [sp, #12]
 80039c6:	f003 fa57 	bl	8006e78 <__sprint_r>
 80039ca:	2800      	cmp	r0, #0
 80039cc:	f47f af60 	bne.w	8003890 <_vfprintf_r+0xaf0>
 80039d0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039d2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039d6:	f7ff bbe0 	b.w	800319a <_vfprintf_r+0x3fa>
 80039da:	4698      	mov	r8, r3
 80039dc:	2d00      	cmp	r5, #0
 80039de:	bf08      	it	eq
 80039e0:	2c0a      	cmpeq	r4, #10
 80039e2:	f080 8170 	bcs.w	8003cc6 <_vfprintf_r+0xf26>
 80039e6:	af56      	add	r7, sp, #344	; 0x158
 80039e8:	3430      	adds	r4, #48	; 0x30
 80039ea:	2301      	movs	r3, #1
 80039ec:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80039f0:	9309      	str	r3, [sp, #36]	; 0x24
 80039f2:	f7ff bb56 	b.w	80030a2 <_vfprintf_r+0x302>
 80039f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80039f8:	9907      	ldr	r1, [sp, #28]
 80039fa:	9803      	ldr	r0, [sp, #12]
 80039fc:	f003 fa3c 	bl	8006e78 <__sprint_r>
 8003a00:	2800      	cmp	r0, #0
 8003a02:	f47f af45 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8003a06:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a08:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a0c:	e406      	b.n	800321c <_vfprintf_r+0x47c>
 8003a0e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a10:	2b00      	cmp	r3, #0
 8003a12:	f340 8273 	ble.w	8003efc <_vfprintf_r+0x115c>
 8003a16:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003a1a:	4293      	cmp	r3, r2
 8003a1c:	bfa8      	it	ge
 8003a1e:	4613      	movge	r3, r2
 8003a20:	2b00      	cmp	r3, #0
 8003a22:	461d      	mov	r5, r3
 8003a24:	dd0d      	ble.n	8003a42 <_vfprintf_r+0xca2>
 8003a26:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a28:	f8cb 7000 	str.w	r7, [fp]
 8003a2c:	3301      	adds	r3, #1
 8003a2e:	442c      	add	r4, r5
 8003a30:	2b07      	cmp	r3, #7
 8003a32:	942c      	str	r4, [sp, #176]	; 0xb0
 8003a34:	f8cb 5004 	str.w	r5, [fp, #4]
 8003a38:	932b      	str	r3, [sp, #172]	; 0xac
 8003a3a:	f300 82c1 	bgt.w	8003fc0 <_vfprintf_r+0x1220>
 8003a3e:	f10b 0b08 	add.w	fp, fp, #8
 8003a42:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a44:	2d00      	cmp	r5, #0
 8003a46:	bfa8      	it	ge
 8003a48:	1b5b      	subge	r3, r3, r5
 8003a4a:	2b00      	cmp	r3, #0
 8003a4c:	461d      	mov	r5, r3
 8003a4e:	f340 8099 	ble.w	8003b84 <_vfprintf_r+0xde4>
 8003a52:	2d10      	cmp	r5, #16
 8003a54:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003a56:	4b2c      	ldr	r3, [pc, #176]	; (8003b08 <_vfprintf_r+0xd68>)
 8003a58:	f340 83db 	ble.w	8004212 <_vfprintf_r+0x1472>
 8003a5c:	4618      	mov	r0, r3
 8003a5e:	4621      	mov	r1, r4
 8003a60:	465b      	mov	r3, fp
 8003a62:	2610      	movs	r6, #16
 8003a64:	46bb      	mov	fp, r7
 8003a66:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003a6a:	9c07      	ldr	r4, [sp, #28]
 8003a6c:	4607      	mov	r7, r0
 8003a6e:	e004      	b.n	8003a7a <_vfprintf_r+0xcda>
 8003a70:	3308      	adds	r3, #8
 8003a72:	3d10      	subs	r5, #16
 8003a74:	2d10      	cmp	r5, #16
 8003a76:	f340 83c7 	ble.w	8004208 <_vfprintf_r+0x1468>
 8003a7a:	3201      	adds	r2, #1
 8003a7c:	3110      	adds	r1, #16
 8003a7e:	2a07      	cmp	r2, #7
 8003a80:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003a84:	e9c3 7600 	strd	r7, r6, [r3]
 8003a88:	ddf2      	ble.n	8003a70 <_vfprintf_r+0xcd0>
 8003a8a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a8c:	4621      	mov	r1, r4
 8003a8e:	4648      	mov	r0, r9
 8003a90:	f003 f9f2 	bl	8006e78 <__sprint_r>
 8003a94:	2800      	cmp	r0, #0
 8003a96:	f040 84a5 	bne.w	80043e4 <_vfprintf_r+0x1644>
 8003a9a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003a9e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003aa0:	e7e7      	b.n	8003a72 <_vfprintf_r+0xcd2>
 8003aa2:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003aa6:	af56      	add	r7, sp, #344	; 0x158
 8003aa8:	f7ff bafb 	b.w	80030a2 <_vfprintf_r+0x302>
 8003aac:	f1b9 0f00 	cmp.w	r9, #0
 8003ab0:	f77f af4c 	ble.w	800394c <_vfprintf_r+0xbac>
 8003ab4:	f1b9 0f10 	cmp.w	r9, #16
 8003ab8:	4b13      	ldr	r3, [pc, #76]	; (8003b08 <_vfprintf_r+0xd68>)
 8003aba:	f340 8659 	ble.w	8004770 <_vfprintf_r+0x19d0>
 8003abe:	4619      	mov	r1, r3
 8003ac0:	4622      	mov	r2, r4
 8003ac2:	4633      	mov	r3, r6
 8003ac4:	2710      	movs	r7, #16
 8003ac6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003aca:	9c07      	ldr	r4, [sp, #28]
 8003acc:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003ace:	460e      	mov	r6, r1
 8003ad0:	e007      	b.n	8003ae2 <_vfprintf_r+0xd42>
 8003ad2:	3308      	adds	r3, #8
 8003ad4:	f1a9 0910 	sub.w	r9, r9, #16
 8003ad8:	f1b9 0f10 	cmp.w	r9, #16
 8003adc:	f340 8353 	ble.w	8004186 <_vfprintf_r+0x13e6>
 8003ae0:	3501      	adds	r5, #1
 8003ae2:	3210      	adds	r2, #16
 8003ae4:	2d07      	cmp	r5, #7
 8003ae6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003aea:	e9c3 6700 	strd	r6, r7, [r3]
 8003aee:	ddf0      	ble.n	8003ad2 <_vfprintf_r+0xd32>
 8003af0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003af2:	4621      	mov	r1, r4
 8003af4:	4658      	mov	r0, fp
 8003af6:	f003 f9bf 	bl	8006e78 <__sprint_r>
 8003afa:	2800      	cmp	r0, #0
 8003afc:	f040 8472 	bne.w	80043e4 <_vfprintf_r+0x1644>
 8003b00:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003b04:	ab2d      	add	r3, sp, #180	; 0xb4
 8003b06:	e7e5      	b.n	8003ad4 <_vfprintf_r+0xd34>
 8003b08:	08007570 	.word	0x08007570
 8003b0c:	f018 0f01 	tst.w	r8, #1
 8003b10:	f47f aee0 	bne.w	80038d4 <_vfprintf_r+0xb34>
 8003b14:	2201      	movs	r2, #1
 8003b16:	2d07      	cmp	r5, #7
 8003b18:	f8cb 7000 	str.w	r7, [fp]
 8003b1c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003b20:	f8cb 2004 	str.w	r2, [fp, #4]
 8003b24:	dc04      	bgt.n	8003b30 <_vfprintf_r+0xd90>
 8003b26:	3302      	adds	r3, #2
 8003b28:	9309      	str	r3, [sp, #36]	; 0x24
 8003b2a:	f10b 0b10 	add.w	fp, fp, #16
 8003b2e:	e70d      	b.n	800394c <_vfprintf_r+0xbac>
 8003b30:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b32:	9907      	ldr	r1, [sp, #28]
 8003b34:	9803      	ldr	r0, [sp, #12]
 8003b36:	f003 f99f 	bl	8006e78 <__sprint_r>
 8003b3a:	2800      	cmp	r0, #0
 8003b3c:	f47f aea8 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8003b40:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003b44:	3301      	adds	r3, #1
 8003b46:	9309      	str	r3, [sp, #36]	; 0x24
 8003b48:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003b4c:	ae2d      	add	r6, sp, #180	; 0xb4
 8003b4e:	e6fd      	b.n	800394c <_vfprintf_r+0xbac>
 8003b50:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b52:	9907      	ldr	r1, [sp, #28]
 8003b54:	9803      	ldr	r0, [sp, #12]
 8003b56:	f003 f98f 	bl	8006e78 <__sprint_r>
 8003b5a:	2800      	cmp	r0, #0
 8003b5c:	f47f ae98 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8003b60:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003b64:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b66:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b6a:	f7ff baf6 	b.w	800315a <_vfprintf_r+0x3ba>
 8003b6e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b70:	9907      	ldr	r1, [sp, #28]
 8003b72:	9803      	ldr	r0, [sp, #12]
 8003b74:	f003 f980 	bl	8006e78 <__sprint_r>
 8003b78:	2800      	cmp	r0, #0
 8003b7a:	f47f ae89 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8003b7e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b84:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b86:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003b8a:	443b      	add	r3, r7
 8003b8c:	4699      	mov	r9, r3
 8003b8e:	f040 8357 	bne.w	8004240 <_vfprintf_r+0x14a0>
 8003b92:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b94:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b96:	4293      	cmp	r3, r2
 8003b98:	db49      	blt.n	8003c2e <_vfprintf_r+0xe8e>
 8003b9a:	f018 0f01 	tst.w	r8, #1
 8003b9e:	d146      	bne.n	8003c2e <_vfprintf_r+0xe8e>
 8003ba0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003ba2:	18bd      	adds	r5, r7, r2
 8003ba4:	eba5 0509 	sub.w	r5, r5, r9
 8003ba8:	1ad3      	subs	r3, r2, r3
 8003baa:	429d      	cmp	r5, r3
 8003bac:	bfa8      	it	ge
 8003bae:	461d      	movge	r5, r3
 8003bb0:	2d00      	cmp	r5, #0
 8003bb2:	dd0d      	ble.n	8003bd0 <_vfprintf_r+0xe30>
 8003bb4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003bb6:	f8cb 9000 	str.w	r9, [fp]
 8003bba:	3201      	adds	r2, #1
 8003bbc:	442c      	add	r4, r5
 8003bbe:	2a07      	cmp	r2, #7
 8003bc0:	942c      	str	r4, [sp, #176]	; 0xb0
 8003bc2:	f8cb 5004 	str.w	r5, [fp, #4]
 8003bc6:	922b      	str	r2, [sp, #172]	; 0xac
 8003bc8:	f300 8462 	bgt.w	8004490 <_vfprintf_r+0x16f0>
 8003bcc:	f10b 0b08 	add.w	fp, fp, #8
 8003bd0:	2d00      	cmp	r5, #0
 8003bd2:	bfac      	ite	ge
 8003bd4:	1b5d      	subge	r5, r3, r5
 8003bd6:	461d      	movlt	r5, r3
 8003bd8:	2d00      	cmp	r5, #0
 8003bda:	f77f ab32 	ble.w	8003242 <_vfprintf_r+0x4a2>
 8003bde:	2d10      	cmp	r5, #16
 8003be0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003be2:	4bc5      	ldr	r3, [pc, #788]	; (8003ef8 <_vfprintf_r+0x1158>)
 8003be4:	f340 80c4 	ble.w	8003d70 <_vfprintf_r+0xfd0>
 8003be8:	4619      	mov	r1, r3
 8003bea:	2610      	movs	r6, #16
 8003bec:	4623      	mov	r3, r4
 8003bee:	9f03      	ldr	r7, [sp, #12]
 8003bf0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003bf4:	460c      	mov	r4, r1
 8003bf6:	e005      	b.n	8003c04 <_vfprintf_r+0xe64>
 8003bf8:	f10b 0b08 	add.w	fp, fp, #8
 8003bfc:	3d10      	subs	r5, #16
 8003bfe:	2d10      	cmp	r5, #16
 8003c00:	f340 80b3 	ble.w	8003d6a <_vfprintf_r+0xfca>
 8003c04:	3201      	adds	r2, #1
 8003c06:	3310      	adds	r3, #16
 8003c08:	2a07      	cmp	r2, #7
 8003c0a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003c0e:	e9cb 4600 	strd	r4, r6, [fp]
 8003c12:	ddf1      	ble.n	8003bf8 <_vfprintf_r+0xe58>
 8003c14:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c16:	4649      	mov	r1, r9
 8003c18:	4638      	mov	r0, r7
 8003c1a:	f003 f92d 	bl	8006e78 <__sprint_r>
 8003c1e:	2800      	cmp	r0, #0
 8003c20:	f47f ae38 	bne.w	8003894 <_vfprintf_r+0xaf4>
 8003c24:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003c28:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c2c:	e7e6      	b.n	8003bfc <_vfprintf_r+0xe5c>
 8003c2e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003c30:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003c32:	f8cb 1000 	str.w	r1, [fp]
 8003c36:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003c38:	f8cb 1004 	str.w	r1, [fp, #4]
 8003c3c:	3201      	adds	r2, #1
 8003c3e:	440c      	add	r4, r1
 8003c40:	2a07      	cmp	r2, #7
 8003c42:	942c      	str	r4, [sp, #176]	; 0xb0
 8003c44:	922b      	str	r2, [sp, #172]	; 0xac
 8003c46:	f300 828c 	bgt.w	8004162 <_vfprintf_r+0x13c2>
 8003c4a:	f10b 0b08 	add.w	fp, fp, #8
 8003c4e:	e7a7      	b.n	8003ba0 <_vfprintf_r+0xe00>
 8003c50:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003c54:	f002 fa94 	bl	8006180 <__retarget_lock_release_recursive>
 8003c58:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003c5c:	e628      	b.n	80038b0 <_vfprintf_r+0xb10>
 8003c5e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c60:	9907      	ldr	r1, [sp, #28]
 8003c62:	9803      	ldr	r0, [sp, #12]
 8003c64:	f003 f908 	bl	8006e78 <__sprint_r>
 8003c68:	2800      	cmp	r0, #0
 8003c6a:	f47f ae11 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8003c6e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003c72:	ae2d      	add	r6, sp, #180	; 0xb4
 8003c74:	e638      	b.n	80038e8 <_vfprintf_r+0xb48>
 8003c76:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c78:	9907      	ldr	r1, [sp, #28]
 8003c7a:	9803      	ldr	r0, [sp, #12]
 8003c7c:	f003 f8fc 	bl	8006e78 <__sprint_r>
 8003c80:	2800      	cmp	r0, #0
 8003c82:	f47f ae05 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8003c86:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003c8a:	ae2d      	add	r6, sp, #180	; 0xb4
 8003c8c:	930b      	str	r3, [sp, #44]	; 0x2c
 8003c8e:	e638      	b.n	8003902 <_vfprintf_r+0xb62>
 8003c90:	6814      	ldr	r4, [r2, #0]
 8003c92:	9308      	str	r3, [sp, #32]
 8003c94:	2500      	movs	r5, #0
 8003c96:	f7ff bb95 	b.w	80033c4 <_vfprintf_r+0x624>
 8003c9a:	6814      	ldr	r4, [r2, #0]
 8003c9c:	9308      	str	r3, [sp, #32]
 8003c9e:	2500      	movs	r5, #0
 8003ca0:	f7ff b9ae 	b.w	8003000 <_vfprintf_r+0x260>
 8003ca4:	680c      	ldr	r4, [r1, #0]
 8003ca6:	9208      	str	r2, [sp, #32]
 8003ca8:	17e5      	asrs	r5, r4, #31
 8003caa:	4620      	mov	r0, r4
 8003cac:	4629      	mov	r1, r5
 8003cae:	f7ff b9d2 	b.w	8003056 <_vfprintf_r+0x2b6>
 8003cb2:	6814      	ldr	r4, [r2, #0]
 8003cb4:	9108      	str	r1, [sp, #32]
 8003cb6:	2201      	movs	r2, #1
 8003cb8:	2500      	movs	r5, #0
 8003cba:	f7ff bb32 	b.w	8003322 <_vfprintf_r+0x582>
 8003cbe:	2a01      	cmp	r2, #1
 8003cc0:	f47f ab3c 	bne.w	800333c <_vfprintf_r+0x59c>
 8003cc4:	e68f      	b.n	80039e6 <_vfprintf_r+0xc46>
 8003cc6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003cca:	2200      	movs	r2, #0
 8003ccc:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003cd0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003cd4:	af56      	add	r7, sp, #344	; 0x158
 8003cd6:	4692      	mov	sl, r2
 8003cd8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003cdc:	461e      	mov	r6, r3
 8003cde:	e00a      	b.n	8003cf6 <_vfprintf_r+0xf56>
 8003ce0:	2300      	movs	r3, #0
 8003ce2:	4620      	mov	r0, r4
 8003ce4:	4629      	mov	r1, r5
 8003ce6:	220a      	movs	r2, #10
 8003ce8:	f7fc fa8a 	bl	8000200 <__aeabi_uldivmod>
 8003cec:	4604      	mov	r4, r0
 8003cee:	460d      	mov	r5, r1
 8003cf0:	ea54 0305 	orrs.w	r3, r4, r5
 8003cf4:	d029      	beq.n	8003d4a <_vfprintf_r+0xfaa>
 8003cf6:	220a      	movs	r2, #10
 8003cf8:	2300      	movs	r3, #0
 8003cfa:	4620      	mov	r0, r4
 8003cfc:	4629      	mov	r1, r5
 8003cfe:	f7fc fa7f 	bl	8000200 <__aeabi_uldivmod>
 8003d02:	3230      	adds	r2, #48	; 0x30
 8003d04:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003d08:	f10a 0a01 	add.w	sl, sl, #1
 8003d0c:	3f01      	subs	r7, #1
 8003d0e:	2e00      	cmp	r6, #0
 8003d10:	d0e6      	beq.n	8003ce0 <_vfprintf_r+0xf40>
 8003d12:	f898 3000 	ldrb.w	r3, [r8]
 8003d16:	459a      	cmp	sl, r3
 8003d18:	d1e2      	bne.n	8003ce0 <_vfprintf_r+0xf40>
 8003d1a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003d1e:	d0df      	beq.n	8003ce0 <_vfprintf_r+0xf40>
 8003d20:	2d00      	cmp	r5, #0
 8003d22:	bf08      	it	eq
 8003d24:	2c0a      	cmpeq	r4, #10
 8003d26:	d3db      	bcc.n	8003ce0 <_vfprintf_r+0xf40>
 8003d28:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003d2a:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003d2c:	1aff      	subs	r7, r7, r3
 8003d2e:	461a      	mov	r2, r3
 8003d30:	4638      	mov	r0, r7
 8003d32:	f003 f833 	bl	8006d9c <strncpy>
 8003d36:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003d3a:	2b00      	cmp	r3, #0
 8003d3c:	f000 8496 	beq.w	800466c <_vfprintf_r+0x18cc>
 8003d40:	f108 0801 	add.w	r8, r8, #1
 8003d44:	f04f 0a00 	mov.w	sl, #0
 8003d48:	e7ca      	b.n	8003ce0 <_vfprintf_r+0xf40>
 8003d4a:	9b04      	ldr	r3, [sp, #16]
 8003d4c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003d50:	1bdb      	subs	r3, r3, r7
 8003d52:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003d56:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003d58:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003d5c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003d60:	9309      	str	r3, [sp, #36]	; 0x24
 8003d62:	f7ff b99e 	b.w	80030a2 <_vfprintf_r+0x302>
 8003d66:	46c1      	mov	r9, r8
 8003d68:	e594      	b.n	8003894 <_vfprintf_r+0xaf4>
 8003d6a:	4621      	mov	r1, r4
 8003d6c:	461c      	mov	r4, r3
 8003d6e:	460b      	mov	r3, r1
 8003d70:	3201      	adds	r2, #1
 8003d72:	442c      	add	r4, r5
 8003d74:	2a07      	cmp	r2, #7
 8003d76:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d7a:	e9cb 3500 	strd	r3, r5, [fp]
 8003d7e:	f77f aa5e 	ble.w	800323e <_vfprintf_r+0x49e>
 8003d82:	e5ee      	b.n	8003962 <_vfprintf_r+0xbc2>
 8003d84:	f018 0f10 	tst.w	r8, #16
 8003d88:	f040 80f8 	bne.w	8003f7c <_vfprintf_r+0x11dc>
 8003d8c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003d90:	f000 8351 	beq.w	8004436 <_vfprintf_r+0x1696>
 8003d94:	9a05      	ldr	r2, [sp, #20]
 8003d96:	801a      	strh	r2, [r3, #0]
 8003d98:	4657      	mov	r7, sl
 8003d9a:	f7ff baa7 	b.w	80032ec <_vfprintf_r+0x54c>
 8003d9e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003da0:	9907      	ldr	r1, [sp, #28]
 8003da2:	9803      	ldr	r0, [sp, #12]
 8003da4:	f003 f868 	bl	8006e78 <__sprint_r>
 8003da8:	2800      	cmp	r0, #0
 8003daa:	f47f ad71 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8003dae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003db0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003db4:	f7ff b9f5 	b.w	80031a2 <_vfprintf_r+0x402>
 8003db8:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003dbc:	4602      	mov	r2, r0
 8003dbe:	460b      	mov	r3, r1
 8003dc0:	f7fd f954 	bl	800106c <__aeabi_dcmpun>
 8003dc4:	2800      	cmp	r0, #0
 8003dc6:	f040 8491 	bne.w	80046ec <_vfprintf_r+0x194c>
 8003dca:	2e61      	cmp	r6, #97	; 0x61
 8003dcc:	f000 8111 	beq.w	8003ff2 <_vfprintf_r+0x1252>
 8003dd0:	2e41      	cmp	r6, #65	; 0x41
 8003dd2:	f000 8377 	beq.w	80044c4 <_vfprintf_r+0x1724>
 8003dd6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003dda:	f026 0220 	bic.w	r2, r6, #32
 8003dde:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003de2:	930e      	str	r3, [sp, #56]	; 0x38
 8003de4:	9204      	str	r2, [sp, #16]
 8003de6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003de8:	f000 842d 	beq.w	8004646 <_vfprintf_r+0x18a6>
 8003dec:	2a47      	cmp	r2, #71	; 0x47
 8003dee:	f000 8424 	beq.w	800463a <_vfprintf_r+0x189a>
 8003df2:	2b00      	cmp	r3, #0
 8003df4:	f2c0 82f9 	blt.w	80043ea <_vfprintf_r+0x164a>
 8003df8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003dfc:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003e00:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003e04:	2e66      	cmp	r6, #102	; 0x66
 8003e06:	f000 83eb 	beq.w	80045e0 <_vfprintf_r+0x1840>
 8003e0a:	2e46      	cmp	r6, #70	; 0x46
 8003e0c:	f000 847e 	beq.w	800470c <_vfprintf_r+0x196c>
 8003e10:	9b04      	ldr	r3, [sp, #16]
 8003e12:	9803      	ldr	r0, [sp, #12]
 8003e14:	2b45      	cmp	r3, #69	; 0x45
 8003e16:	bf0c      	ite	eq
 8003e18:	f109 0501 	addeq.w	r5, r9, #1
 8003e1c:	464d      	movne	r5, r9
 8003e1e:	aa28      	add	r2, sp, #160	; 0xa0
 8003e20:	ab25      	add	r3, sp, #148	; 0x94
 8003e22:	e9cd 3200 	strd	r3, r2, [sp]
 8003e26:	2102      	movs	r1, #2
 8003e28:	ab24      	add	r3, sp, #144	; 0x90
 8003e2a:	462a      	mov	r2, r5
 8003e2c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e30:	f000 fe3e 	bl	8004ab0 <_dtoa_r>
 8003e34:	2e67      	cmp	r6, #103	; 0x67
 8003e36:	4607      	mov	r7, r0
 8003e38:	f040 849c 	bne.w	8004774 <_vfprintf_r+0x19d4>
 8003e3c:	f018 0f01 	tst.w	r8, #1
 8003e40:	f040 83f9 	bne.w	8004636 <_vfprintf_r+0x1896>
 8003e44:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003e46:	4640      	mov	r0, r8
 8003e48:	1bdb      	subs	r3, r3, r7
 8003e4a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003e4e:	9310      	str	r3, [sp, #64]	; 0x40
 8003e50:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e52:	9311      	str	r3, [sp, #68]	; 0x44
 8003e54:	9b04      	ldr	r3, [sp, #16]
 8003e56:	2b47      	cmp	r3, #71	; 0x47
 8003e58:	f000 81e7 	beq.w	800422a <_vfprintf_r+0x148a>
 8003e5c:	9b04      	ldr	r3, [sp, #16]
 8003e5e:	2b46      	cmp	r3, #70	; 0x46
 8003e60:	f000 8300 	beq.w	8004464 <_vfprintf_r+0x16c4>
 8003e64:	9904      	ldr	r1, [sp, #16]
 8003e66:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e68:	b2f2      	uxtb	r2, r6
 8003e6a:	2941      	cmp	r1, #65	; 0x41
 8003e6c:	bf08      	it	eq
 8003e6e:	320f      	addeq	r2, #15
 8003e70:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003e74:	bf06      	itte	eq
 8003e76:	b2d2      	uxtbeq	r2, r2
 8003e78:	2101      	moveq	r1, #1
 8003e7a:	2100      	movne	r1, #0
 8003e7c:	2b00      	cmp	r3, #0
 8003e7e:	9324      	str	r3, [sp, #144]	; 0x90
 8003e80:	bfb8      	it	lt
 8003e82:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003e84:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003e88:	bfba      	itte	lt
 8003e8a:	f1c3 0301 	rsblt	r3, r3, #1
 8003e8e:	222d      	movlt	r2, #45	; 0x2d
 8003e90:	222b      	movge	r2, #43	; 0x2b
 8003e92:	2b09      	cmp	r3, #9
 8003e94:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003e98:	f300 83f9 	bgt.w	800468e <_vfprintf_r+0x18ee>
 8003e9c:	2900      	cmp	r1, #0
 8003e9e:	f040 8487 	bne.w	80047b0 <_vfprintf_r+0x1a10>
 8003ea2:	2230      	movs	r2, #48	; 0x30
 8003ea4:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003ea8:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003eac:	3330      	adds	r3, #48	; 0x30
 8003eae:	7013      	strb	r3, [r2, #0]
 8003eb0:	1c53      	adds	r3, r2, #1
 8003eb2:	aa26      	add	r2, sp, #152	; 0x98
 8003eb4:	1a9b      	subs	r3, r3, r2
 8003eb6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003eb8:	9319      	str	r3, [sp, #100]	; 0x64
 8003eba:	2a01      	cmp	r2, #1
 8003ebc:	4413      	add	r3, r2
 8003ebe:	9309      	str	r3, [sp, #36]	; 0x24
 8003ec0:	f340 8442 	ble.w	8004748 <_vfprintf_r+0x19a8>
 8003ec4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ec6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ec8:	4413      	add	r3, r2
 8003eca:	9309      	str	r3, [sp, #36]	; 0x24
 8003ecc:	2300      	movs	r3, #0
 8003ece:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ed0:	9314      	str	r3, [sp, #80]	; 0x50
 8003ed2:	9311      	str	r3, [sp, #68]	; 0x44
 8003ed4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ed6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003eda:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003ede:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003ee2:	9304      	str	r3, [sp, #16]
 8003ee4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003ee6:	2b00      	cmp	r3, #0
 8003ee8:	f040 8275 	bne.w	80043d6 <_vfprintf_r+0x1636>
 8003eec:	4699      	mov	r9, r3
 8003eee:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003ef2:	f7ff b8e2 	b.w	80030ba <_vfprintf_r+0x31a>
 8003ef6:	bf00      	nop
 8003ef8:	08007570 	.word	0x08007570
 8003efc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003efe:	49bd      	ldr	r1, [pc, #756]	; (80041f4 <_vfprintf_r+0x1454>)
 8003f00:	f8cb 1000 	str.w	r1, [fp]
 8003f04:	3201      	adds	r2, #1
 8003f06:	3401      	adds	r4, #1
 8003f08:	2101      	movs	r1, #1
 8003f0a:	2a07      	cmp	r2, #7
 8003f0c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f10:	f8cb 1004 	str.w	r1, [fp, #4]
 8003f14:	dc60      	bgt.n	8003fd8 <_vfprintf_r+0x1238>
 8003f16:	f10b 0b08 	add.w	fp, fp, #8
 8003f1a:	b92b      	cbnz	r3, 8003f28 <_vfprintf_r+0x1188>
 8003f1c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003f1e:	b91a      	cbnz	r2, 8003f28 <_vfprintf_r+0x1188>
 8003f20:	f018 0f01 	tst.w	r8, #1
 8003f24:	f43f a98d 	beq.w	8003242 <_vfprintf_r+0x4a2>
 8003f28:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003f2a:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003f2c:	f8cb 1000 	str.w	r1, [fp]
 8003f30:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003f32:	f8cb 1004 	str.w	r1, [fp, #4]
 8003f36:	3201      	adds	r2, #1
 8003f38:	440c      	add	r4, r1
 8003f3a:	2a07      	cmp	r2, #7
 8003f3c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003f3e:	922b      	str	r2, [sp, #172]	; 0xac
 8003f40:	f300 8282 	bgt.w	8004448 <_vfprintf_r+0x16a8>
 8003f44:	f10b 0b08 	add.w	fp, fp, #8
 8003f48:	2b00      	cmp	r3, #0
 8003f4a:	f2c0 82e7 	blt.w	800451c <_vfprintf_r+0x177c>
 8003f4e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f50:	3201      	adds	r2, #1
 8003f52:	441c      	add	r4, r3
 8003f54:	2a07      	cmp	r2, #7
 8003f56:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f5a:	e9cb 7300 	strd	r7, r3, [fp]
 8003f5e:	f77f a96e 	ble.w	800323e <_vfprintf_r+0x49e>
 8003f62:	e4fe      	b.n	8003962 <_vfprintf_r+0xbc2>
 8003f64:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f66:	9907      	ldr	r1, [sp, #28]
 8003f68:	9803      	ldr	r0, [sp, #12]
 8003f6a:	f002 ff85 	bl	8006e78 <__sprint_r>
 8003f6e:	2800      	cmp	r0, #0
 8003f70:	f47f ac8e 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8003f74:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f78:	f7ff bbf0 	b.w	800375c <_vfprintf_r+0x9bc>
 8003f7c:	9a05      	ldr	r2, [sp, #20]
 8003f7e:	601a      	str	r2, [r3, #0]
 8003f80:	4657      	mov	r7, sl
 8003f82:	f7ff b9b3 	b.w	80032ec <_vfprintf_r+0x54c>
 8003f86:	8814      	ldrh	r4, [r2, #0]
 8003f88:	9108      	str	r1, [sp, #32]
 8003f8a:	2500      	movs	r5, #0
 8003f8c:	2201      	movs	r2, #1
 8003f8e:	f7ff b9c8 	b.w	8003322 <_vfprintf_r+0x582>
 8003f92:	8814      	ldrh	r4, [r2, #0]
 8003f94:	9308      	str	r3, [sp, #32]
 8003f96:	2500      	movs	r5, #0
 8003f98:	f7ff ba14 	b.w	80033c4 <_vfprintf_r+0x624>
 8003f9c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003fa0:	9208      	str	r2, [sp, #32]
 8003fa2:	17e5      	asrs	r5, r4, #31
 8003fa4:	4620      	mov	r0, r4
 8003fa6:	4629      	mov	r1, r5
 8003fa8:	f7ff b855 	b.w	8003056 <_vfprintf_r+0x2b6>
 8003fac:	8814      	ldrh	r4, [r2, #0]
 8003fae:	9308      	str	r3, [sp, #32]
 8003fb0:	2500      	movs	r5, #0
 8003fb2:	f7ff b825 	b.w	8003000 <_vfprintf_r+0x260>
 8003fb6:	222d      	movs	r2, #45	; 0x2d
 8003fb8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003fbc:	f7ff baa2 	b.w	8003504 <_vfprintf_r+0x764>
 8003fc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fc2:	9907      	ldr	r1, [sp, #28]
 8003fc4:	9803      	ldr	r0, [sp, #12]
 8003fc6:	f002 ff57 	bl	8006e78 <__sprint_r>
 8003fca:	2800      	cmp	r0, #0
 8003fcc:	f47f ac60 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8003fd0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003fd2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003fd6:	e534      	b.n	8003a42 <_vfprintf_r+0xca2>
 8003fd8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fda:	9907      	ldr	r1, [sp, #28]
 8003fdc:	9803      	ldr	r0, [sp, #12]
 8003fde:	f002 ff4b 	bl	8006e78 <__sprint_r>
 8003fe2:	2800      	cmp	r0, #0
 8003fe4:	f47f ac54 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8003fe8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003fea:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003fec:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ff0:	e793      	b.n	8003f1a <_vfprintf_r+0x117a>
 8003ff2:	2330      	movs	r3, #48	; 0x30
 8003ff4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003ff8:	2378      	movs	r3, #120	; 0x78
 8003ffa:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003ffe:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8004002:	f048 0402 	orr.w	r4, r8, #2
 8004006:	f300 82b0 	bgt.w	800456a <_vfprintf_r+0x17ca>
 800400a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800400e:	930e      	str	r3, [sp, #56]	; 0x38
 8004010:	f026 0320 	bic.w	r3, r6, #32
 8004014:	9304      	str	r3, [sp, #16]
 8004016:	2200      	movs	r2, #0
 8004018:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800401a:	920a      	str	r2, [sp, #40]	; 0x28
 800401c:	46a0      	mov	r8, r4
 800401e:	af3d      	add	r7, sp, #244	; 0xf4
 8004020:	2b00      	cmp	r3, #0
 8004022:	f2c0 81e3 	blt.w	80043ec <_vfprintf_r+0x164c>
 8004026:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800402a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800402e:	2300      	movs	r3, #0
 8004030:	930b      	str	r3, [sp, #44]	; 0x2c
 8004032:	2e61      	cmp	r6, #97	; 0x61
 8004034:	f000 8255 	beq.w	80044e2 <_vfprintf_r+0x1742>
 8004038:	2e41      	cmp	r6, #65	; 0x41
 800403a:	f47f aee3 	bne.w	8003e04 <_vfprintf_r+0x1064>
 800403e:	a824      	add	r0, sp, #144	; 0x90
 8004040:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004044:	f002 fe32 	bl	8006cac <frexp>
 8004048:	2200      	movs	r2, #0
 800404a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800404e:	ec51 0b10 	vmov	r0, r1, d0
 8004052:	f7fc fd71 	bl	8000b38 <__aeabi_dmul>
 8004056:	2200      	movs	r2, #0
 8004058:	2300      	movs	r3, #0
 800405a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800405e:	f7fc ffd3 	bl	8001008 <__aeabi_dcmpeq>
 8004062:	2800      	cmp	r0, #0
 8004064:	f040 8305 	bne.w	8004672 <_vfprintf_r+0x18d2>
 8004068:	4b63      	ldr	r3, [pc, #396]	; (80041f8 <_vfprintf_r+0x1458>)
 800406a:	9309      	str	r3, [sp, #36]	; 0x24
 800406c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8004070:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8004074:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8004078:	9721      	str	r7, [sp, #132]	; 0x84
 800407a:	46b9      	mov	r9, r7
 800407c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8004080:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8004084:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004088:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800408c:	e003      	b.n	8004096 <_vfprintf_r+0x12f6>
 800408e:	f7fc ffbb 	bl	8001008 <__aeabi_dcmpeq>
 8004092:	bb20      	cbnz	r0, 80040de <_vfprintf_r+0x133e>
 8004094:	46a9      	mov	r9, r5
 8004096:	2200      	movs	r2, #0
 8004098:	4b58      	ldr	r3, [pc, #352]	; (80041fc <_vfprintf_r+0x145c>)
 800409a:	4630      	mov	r0, r6
 800409c:	4639      	mov	r1, r7
 800409e:	f7fc fd4b 	bl	8000b38 <__aeabi_dmul>
 80040a2:	460f      	mov	r7, r1
 80040a4:	4606      	mov	r6, r0
 80040a6:	f7fc fff7 	bl	8001098 <__aeabi_d2iz>
 80040aa:	4680      	mov	r8, r0
 80040ac:	f7fc fcda 	bl	8000a64 <__aeabi_i2d>
 80040b0:	4602      	mov	r2, r0
 80040b2:	460b      	mov	r3, r1
 80040b4:	4630      	mov	r0, r6
 80040b6:	4639      	mov	r1, r7
 80040b8:	f7fc fb86 	bl	80007c8 <__aeabi_dsub>
 80040bc:	464d      	mov	r5, r9
 80040be:	f81a c008 	ldrb.w	ip, [sl, r8]
 80040c2:	f805 cb01 	strb.w	ip, [r5], #1
 80040c6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80040ca:	46a3      	mov	fp, r4
 80040cc:	4606      	mov	r6, r0
 80040ce:	460f      	mov	r7, r1
 80040d0:	f04f 0200 	mov.w	r2, #0
 80040d4:	f04f 0300 	mov.w	r3, #0
 80040d8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80040dc:	d1d7      	bne.n	800408e <_vfprintf_r+0x12ee>
 80040de:	4630      	mov	r0, r6
 80040e0:	4639      	mov	r1, r7
 80040e2:	2200      	movs	r2, #0
 80040e4:	4b46      	ldr	r3, [pc, #280]	; (8004200 <_vfprintf_r+0x1460>)
 80040e6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80040ea:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80040ec:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80040f0:	4644      	mov	r4, r8
 80040f2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80040f6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80040fa:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80040fe:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8004102:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8004104:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004108:	f7fc ffa6 	bl	8001058 <__aeabi_dcmpgt>
 800410c:	2800      	cmp	r0, #0
 800410e:	f040 8176 	bne.w	80043fe <_vfprintf_r+0x165e>
 8004112:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8004116:	2200      	movs	r2, #0
 8004118:	4b39      	ldr	r3, [pc, #228]	; (8004200 <_vfprintf_r+0x1460>)
 800411a:	f7fc ff75 	bl	8001008 <__aeabi_dcmpeq>
 800411e:	b110      	cbz	r0, 8004126 <_vfprintf_r+0x1386>
 8004120:	07e2      	lsls	r2, r4, #31
 8004122:	f100 816c 	bmi.w	80043fe <_vfprintf_r+0x165e>
 8004126:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004128:	2b00      	cmp	r3, #0
 800412a:	db07      	blt.n	800413c <_vfprintf_r+0x139c>
 800412c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800412e:	3301      	adds	r3, #1
 8004130:	442b      	add	r3, r5
 8004132:	2230      	movs	r2, #48	; 0x30
 8004134:	f805 2b01 	strb.w	r2, [r5], #1
 8004138:	42ab      	cmp	r3, r5
 800413a:	d1fb      	bne.n	8004134 <_vfprintf_r+0x1394>
 800413c:	1beb      	subs	r3, r5, r7
 800413e:	4640      	mov	r0, r8
 8004140:	9310      	str	r3, [sp, #64]	; 0x40
 8004142:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004146:	e683      	b.n	8003e50 <_vfprintf_r+0x10b0>
 8004148:	f8cd 9010 	str.w	r9, [sp, #16]
 800414c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8004150:	9408      	str	r4, [sp, #32]
 8004152:	4681      	mov	r9, r0
 8004154:	900f      	str	r0, [sp, #60]	; 0x3c
 8004156:	9014      	str	r0, [sp, #80]	; 0x50
 8004158:	9011      	str	r0, [sp, #68]	; 0x44
 800415a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800415e:	f7fe bfac 	b.w	80030ba <_vfprintf_r+0x31a>
 8004162:	aa2a      	add	r2, sp, #168	; 0xa8
 8004164:	9907      	ldr	r1, [sp, #28]
 8004166:	9803      	ldr	r0, [sp, #12]
 8004168:	f002 fe86 	bl	8006e78 <__sprint_r>
 800416c:	2800      	cmp	r0, #0
 800416e:	f47f ab8f 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8004172:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004174:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004176:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800417a:	e511      	b.n	8003ba0 <_vfprintf_r+0xe00>
 800417c:	4252      	negs	r2, r2
 800417e:	9206      	str	r2, [sp, #24]
 8004180:	9308      	str	r3, [sp, #32]
 8004182:	f7ff b96d 	b.w	8003460 <_vfprintf_r+0x6c0>
 8004186:	4614      	mov	r4, r2
 8004188:	4632      	mov	r2, r6
 800418a:	461e      	mov	r6, r3
 800418c:	4613      	mov	r3, r2
 800418e:	462a      	mov	r2, r5
 8004190:	3201      	adds	r2, #1
 8004192:	9209      	str	r2, [sp, #36]	; 0x24
 8004194:	f106 0208 	add.w	r2, r6, #8
 8004198:	e9c6 3900 	strd	r3, r9, [r6]
 800419c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800419e:	932b      	str	r3, [sp, #172]	; 0xac
 80041a0:	444c      	add	r4, r9
 80041a2:	2b07      	cmp	r3, #7
 80041a4:	942c      	str	r4, [sp, #176]	; 0xb0
 80041a6:	f73f acc3 	bgt.w	8003b30 <_vfprintf_r+0xd90>
 80041aa:	3301      	adds	r3, #1
 80041ac:	9309      	str	r3, [sp, #36]	; 0x24
 80041ae:	f102 0b08 	add.w	fp, r2, #8
 80041b2:	4616      	mov	r6, r2
 80041b4:	f7ff bbca 	b.w	800394c <_vfprintf_r+0xbac>
 80041b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80041ba:	9907      	ldr	r1, [sp, #28]
 80041bc:	9803      	ldr	r0, [sp, #12]
 80041be:	f002 fe5b 	bl	8006e78 <__sprint_r>
 80041c2:	2800      	cmp	r0, #0
 80041c4:	f47f ab64 	bne.w	8003890 <_vfprintf_r+0xaf0>
 80041c8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80041ca:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80041ce:	f7ff bade 	b.w	800378e <_vfprintf_r+0x9ee>
 80041d2:	464b      	mov	r3, r9
 80041d4:	2b06      	cmp	r3, #6
 80041d6:	bf28      	it	cs
 80041d8:	2306      	movcs	r3, #6
 80041da:	46b9      	mov	r9, r7
 80041dc:	970f      	str	r7, [sp, #60]	; 0x3c
 80041de:	9714      	str	r7, [sp, #80]	; 0x50
 80041e0:	9711      	str	r7, [sp, #68]	; 0x44
 80041e2:	970a      	str	r7, [sp, #40]	; 0x28
 80041e4:	463a      	mov	r2, r7
 80041e6:	9304      	str	r3, [sp, #16]
 80041e8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80041ec:	4f05      	ldr	r7, [pc, #20]	; (8004204 <_vfprintf_r+0x1464>)
 80041ee:	f7fe bf64 	b.w	80030ba <_vfprintf_r+0x31a>
 80041f2:	bf00      	nop
 80041f4:	0800755c 	.word	0x0800755c
 80041f8:	08007540 	.word	0x08007540
 80041fc:	40300000 	.word	0x40300000
 8004200:	3fe00000 	.word	0x3fe00000
 8004204:	08007554 	.word	0x08007554
 8004208:	460c      	mov	r4, r1
 800420a:	4639      	mov	r1, r7
 800420c:	465f      	mov	r7, fp
 800420e:	469b      	mov	fp, r3
 8004210:	460b      	mov	r3, r1
 8004212:	3201      	adds	r2, #1
 8004214:	442c      	add	r4, r5
 8004216:	2a07      	cmp	r2, #7
 8004218:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800421c:	e9cb 3500 	strd	r3, r5, [fp]
 8004220:	f73f aca5 	bgt.w	8003b6e <_vfprintf_r+0xdce>
 8004224:	f10b 0b08 	add.w	fp, fp, #8
 8004228:	e4ac      	b.n	8003b84 <_vfprintf_r+0xde4>
 800422a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800422c:	1cda      	adds	r2, r3, #3
 800422e:	db02      	blt.n	8004236 <_vfprintf_r+0x1496>
 8004230:	4599      	cmp	r9, r3
 8004232:	f280 80b5 	bge.w	80043a0 <_vfprintf_r+0x1600>
 8004236:	3e02      	subs	r6, #2
 8004238:	f026 0320 	bic.w	r3, r6, #32
 800423c:	9304      	str	r3, [sp, #16]
 800423e:	e611      	b.n	8003e64 <_vfprintf_r+0x10c4>
 8004240:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004242:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8004246:	465a      	mov	r2, fp
 8004248:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800424c:	18fb      	adds	r3, r7, r3
 800424e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8004252:	970c      	str	r7, [sp, #48]	; 0x30
 8004254:	4eaf      	ldr	r6, [pc, #700]	; (8004514 <_vfprintf_r+0x1774>)
 8004256:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800425a:	9309      	str	r3, [sp, #36]	; 0x24
 800425c:	464f      	mov	r7, r9
 800425e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004262:	4621      	mov	r1, r4
 8004264:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004266:	2b00      	cmp	r3, #0
 8004268:	d05b      	beq.n	8004322 <_vfprintf_r+0x1582>
 800426a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800426c:	2b00      	cmp	r3, #0
 800426e:	d154      	bne.n	800431a <_vfprintf_r+0x157a>
 8004270:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004272:	3b01      	subs	r3, #1
 8004274:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8004278:	9314      	str	r3, [sp, #80]	; 0x50
 800427a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800427c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800427e:	6010      	str	r0, [r2, #0]
 8004280:	3301      	adds	r3, #1
 8004282:	4459      	add	r1, fp
 8004284:	2b07      	cmp	r3, #7
 8004286:	912c      	str	r1, [sp, #176]	; 0xb0
 8004288:	f8c2 b004 	str.w	fp, [r2, #4]
 800428c:	932b      	str	r3, [sp, #172]	; 0xac
 800428e:	dc68      	bgt.n	8004362 <_vfprintf_r+0x15c2>
 8004290:	3208      	adds	r2, #8
 8004292:	9809      	ldr	r0, [sp, #36]	; 0x24
 8004294:	f898 3000 	ldrb.w	r3, [r8]
 8004298:	1bc5      	subs	r5, r0, r7
 800429a:	429d      	cmp	r5, r3
 800429c:	bfa8      	it	ge
 800429e:	461d      	movge	r5, r3
 80042a0:	2d00      	cmp	r5, #0
 80042a2:	dd0b      	ble.n	80042bc <_vfprintf_r+0x151c>
 80042a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80042a6:	6017      	str	r7, [r2, #0]
 80042a8:	3301      	adds	r3, #1
 80042aa:	4429      	add	r1, r5
 80042ac:	2b07      	cmp	r3, #7
 80042ae:	912c      	str	r1, [sp, #176]	; 0xb0
 80042b0:	6055      	str	r5, [r2, #4]
 80042b2:	932b      	str	r3, [sp, #172]	; 0xac
 80042b4:	dc5e      	bgt.n	8004374 <_vfprintf_r+0x15d4>
 80042b6:	f898 3000 	ldrb.w	r3, [r8]
 80042ba:	3208      	adds	r2, #8
 80042bc:	2d00      	cmp	r5, #0
 80042be:	bfac      	ite	ge
 80042c0:	1b5d      	subge	r5, r3, r5
 80042c2:	461d      	movlt	r5, r3
 80042c4:	2d00      	cmp	r5, #0
 80042c6:	dd26      	ble.n	8004316 <_vfprintf_r+0x1576>
 80042c8:	2d10      	cmp	r5, #16
 80042ca:	982b      	ldr	r0, [sp, #172]	; 0xac
 80042cc:	dd3c      	ble.n	8004348 <_vfprintf_r+0x15a8>
 80042ce:	2410      	movs	r4, #16
 80042d0:	e003      	b.n	80042da <_vfprintf_r+0x153a>
 80042d2:	3208      	adds	r2, #8
 80042d4:	3d10      	subs	r5, #16
 80042d6:	2d10      	cmp	r5, #16
 80042d8:	dd36      	ble.n	8004348 <_vfprintf_r+0x15a8>
 80042da:	3001      	adds	r0, #1
 80042dc:	3110      	adds	r1, #16
 80042de:	2807      	cmp	r0, #7
 80042e0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80042e4:	e9c2 6400 	strd	r6, r4, [r2]
 80042e8:	ddf3      	ble.n	80042d2 <_vfprintf_r+0x1532>
 80042ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80042ec:	4651      	mov	r1, sl
 80042ee:	4648      	mov	r0, r9
 80042f0:	f002 fdc2 	bl	8006e78 <__sprint_r>
 80042f4:	2800      	cmp	r0, #0
 80042f6:	d150      	bne.n	800439a <_vfprintf_r+0x15fa>
 80042f8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80042fc:	aa2d      	add	r2, sp, #180	; 0xb4
 80042fe:	e7e9      	b.n	80042d4 <_vfprintf_r+0x1534>
 8004300:	aa2a      	add	r2, sp, #168	; 0xa8
 8004302:	4651      	mov	r1, sl
 8004304:	4648      	mov	r0, r9
 8004306:	f002 fdb7 	bl	8006e78 <__sprint_r>
 800430a:	2800      	cmp	r0, #0
 800430c:	d145      	bne.n	800439a <_vfprintf_r+0x15fa>
 800430e:	f898 3000 	ldrb.w	r3, [r8]
 8004312:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004314:	aa2d      	add	r2, sp, #180	; 0xb4
 8004316:	441f      	add	r7, r3
 8004318:	e7a4      	b.n	8004264 <_vfprintf_r+0x14c4>
 800431a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800431c:	3b01      	subs	r3, #1
 800431e:	930f      	str	r3, [sp, #60]	; 0x3c
 8004320:	e7ab      	b.n	800427a <_vfprintf_r+0x14da>
 8004322:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004324:	2b00      	cmp	r3, #0
 8004326:	d1f8      	bne.n	800431a <_vfprintf_r+0x157a>
 8004328:	46b9      	mov	r9, r7
 800432a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800432c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800432e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8004332:	18fb      	adds	r3, r7, r3
 8004334:	4599      	cmp	r9, r3
 8004336:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800433a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800433e:	4693      	mov	fp, r2
 8004340:	460c      	mov	r4, r1
 8004342:	bf28      	it	cs
 8004344:	4699      	movcs	r9, r3
 8004346:	e424      	b.n	8003b92 <_vfprintf_r+0xdf2>
 8004348:	3001      	adds	r0, #1
 800434a:	4429      	add	r1, r5
 800434c:	2807      	cmp	r0, #7
 800434e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8004352:	e9c2 6500 	strd	r6, r5, [r2]
 8004356:	dcd3      	bgt.n	8004300 <_vfprintf_r+0x1560>
 8004358:	f898 3000 	ldrb.w	r3, [r8]
 800435c:	3208      	adds	r2, #8
 800435e:	441f      	add	r7, r3
 8004360:	e780      	b.n	8004264 <_vfprintf_r+0x14c4>
 8004362:	aa2a      	add	r2, sp, #168	; 0xa8
 8004364:	4651      	mov	r1, sl
 8004366:	4648      	mov	r0, r9
 8004368:	f002 fd86 	bl	8006e78 <__sprint_r>
 800436c:	b9a8      	cbnz	r0, 800439a <_vfprintf_r+0x15fa>
 800436e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004370:	aa2d      	add	r2, sp, #180	; 0xb4
 8004372:	e78e      	b.n	8004292 <_vfprintf_r+0x14f2>
 8004374:	aa2a      	add	r2, sp, #168	; 0xa8
 8004376:	4651      	mov	r1, sl
 8004378:	4648      	mov	r0, r9
 800437a:	f002 fd7d 	bl	8006e78 <__sprint_r>
 800437e:	b960      	cbnz	r0, 800439a <_vfprintf_r+0x15fa>
 8004380:	f898 3000 	ldrb.w	r3, [r8]
 8004384:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004386:	aa2d      	add	r2, sp, #180	; 0xb4
 8004388:	e798      	b.n	80042bc <_vfprintf_r+0x151c>
 800438a:	4638      	mov	r0, r7
 800438c:	f7fc f958 	bl	8000640 <strlen>
 8004390:	46a9      	mov	r9, r5
 8004392:	4603      	mov	r3, r0
 8004394:	9009      	str	r0, [sp, #36]	; 0x24
 8004396:	f7ff b8f4 	b.w	8003582 <_vfprintf_r+0x7e2>
 800439a:	46d1      	mov	r9, sl
 800439c:	f7ff ba7a 	b.w	8003894 <_vfprintf_r+0xaf4>
 80043a0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80043a2:	4619      	mov	r1, r3
 80043a4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80043a6:	4299      	cmp	r1, r3
 80043a8:	f300 8082 	bgt.w	80044b0 <_vfprintf_r+0x1710>
 80043ac:	07c4      	lsls	r4, r0, #31
 80043ae:	f140 816b 	bpl.w	8004688 <_vfprintf_r+0x18e8>
 80043b2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80043b4:	4413      	add	r3, r2
 80043b6:	9309      	str	r3, [sp, #36]	; 0x24
 80043b8:	0541      	lsls	r1, r0, #21
 80043ba:	d503      	bpl.n	80043c4 <_vfprintf_r+0x1624>
 80043bc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80043be:	2b00      	cmp	r3, #0
 80043c0:	f300 80e6 	bgt.w	8004590 <_vfprintf_r+0x17f0>
 80043c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80043c6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80043ca:	9304      	str	r3, [sp, #16]
 80043cc:	2667      	movs	r6, #103	; 0x67
 80043ce:	2300      	movs	r3, #0
 80043d0:	930f      	str	r3, [sp, #60]	; 0x3c
 80043d2:	9314      	str	r3, [sp, #80]	; 0x50
 80043d4:	e586      	b.n	8003ee4 <_vfprintf_r+0x1144>
 80043d6:	222d      	movs	r2, #45	; 0x2d
 80043d8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80043dc:	f04f 0900 	mov.w	r9, #0
 80043e0:	f7fe be6c 	b.w	80030bc <_vfprintf_r+0x31c>
 80043e4:	46a1      	mov	r9, r4
 80043e6:	f7ff ba55 	b.w	8003894 <_vfprintf_r+0xaf4>
 80043ea:	900a      	str	r0, [sp, #40]	; 0x28
 80043ec:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80043f0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80043f4:	931f      	str	r3, [sp, #124]	; 0x7c
 80043f6:	232d      	movs	r3, #45	; 0x2d
 80043f8:	911e      	str	r1, [sp, #120]	; 0x78
 80043fa:	930b      	str	r3, [sp, #44]	; 0x2c
 80043fc:	e619      	b.n	8004032 <_vfprintf_r+0x1292>
 80043fe:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004400:	9328      	str	r3, [sp, #160]	; 0xa0
 8004402:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004404:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8004408:	7bd9      	ldrb	r1, [r3, #15]
 800440a:	4291      	cmp	r1, r2
 800440c:	462b      	mov	r3, r5
 800440e:	d109      	bne.n	8004424 <_vfprintf_r+0x1684>
 8004410:	2030      	movs	r0, #48	; 0x30
 8004412:	f803 0c01 	strb.w	r0, [r3, #-1]
 8004416:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004418:	1e5a      	subs	r2, r3, #1
 800441a:	9228      	str	r2, [sp, #160]	; 0xa0
 800441c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004420:	4291      	cmp	r1, r2
 8004422:	d0f6      	beq.n	8004412 <_vfprintf_r+0x1672>
 8004424:	2a39      	cmp	r2, #57	; 0x39
 8004426:	bf0b      	itete	eq
 8004428:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 800442a:	3201      	addne	r2, #1
 800442c:	7a92      	ldrbeq	r2, [r2, #10]
 800442e:	b2d2      	uxtbne	r2, r2
 8004430:	f803 2c01 	strb.w	r2, [r3, #-1]
 8004434:	e682      	b.n	800413c <_vfprintf_r+0x139c>
 8004436:	f418 7f00 	tst.w	r8, #512	; 0x200
 800443a:	f43f ad9f 	beq.w	8003f7c <_vfprintf_r+0x11dc>
 800443e:	9a05      	ldr	r2, [sp, #20]
 8004440:	701a      	strb	r2, [r3, #0]
 8004442:	4657      	mov	r7, sl
 8004444:	f7fe bf52 	b.w	80032ec <_vfprintf_r+0x54c>
 8004448:	aa2a      	add	r2, sp, #168	; 0xa8
 800444a:	9907      	ldr	r1, [sp, #28]
 800444c:	9803      	ldr	r0, [sp, #12]
 800444e:	f002 fd13 	bl	8006e78 <__sprint_r>
 8004452:	2800      	cmp	r0, #0
 8004454:	f47f aa1c 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8004458:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800445a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800445e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004462:	e571      	b.n	8003f48 <_vfprintf_r+0x11a8>
 8004464:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004466:	2b00      	cmp	r3, #0
 8004468:	f340 8164 	ble.w	8004734 <_vfprintf_r+0x1994>
 800446c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800446e:	f1b9 0f00 	cmp.w	r9, #0
 8004472:	f040 8103 	bne.w	800467c <_vfprintf_r+0x18dc>
 8004476:	07c6      	lsls	r6, r0, #31
 8004478:	f100 8100 	bmi.w	800467c <_vfprintf_r+0x18dc>
 800447c:	9309      	str	r3, [sp, #36]	; 0x24
 800447e:	2666      	movs	r6, #102	; 0x66
 8004480:	0543      	lsls	r3, r0, #21
 8004482:	f100 8086 	bmi.w	8004592 <_vfprintf_r+0x17f2>
 8004486:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004488:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800448c:	9304      	str	r3, [sp, #16]
 800448e:	e79e      	b.n	80043ce <_vfprintf_r+0x162e>
 8004490:	aa2a      	add	r2, sp, #168	; 0xa8
 8004492:	9907      	ldr	r1, [sp, #28]
 8004494:	9803      	ldr	r0, [sp, #12]
 8004496:	f002 fcef 	bl	8006e78 <__sprint_r>
 800449a:	2800      	cmp	r0, #0
 800449c:	f47f a9f8 	bne.w	8003890 <_vfprintf_r+0xaf0>
 80044a0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80044a2:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80044a4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80044a6:	1ad3      	subs	r3, r2, r3
 80044a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80044ac:	f7ff bb90 	b.w	8003bd0 <_vfprintf_r+0xe30>
 80044b0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80044b2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80044b4:	4413      	add	r3, r2
 80044b6:	9309      	str	r3, [sp, #36]	; 0x24
 80044b8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80044ba:	2b00      	cmp	r3, #0
 80044bc:	f340 8149 	ble.w	8004752 <_vfprintf_r+0x19b2>
 80044c0:	2667      	movs	r6, #103	; 0x67
 80044c2:	e7dd      	b.n	8004480 <_vfprintf_r+0x16e0>
 80044c4:	2330      	movs	r3, #48	; 0x30
 80044c6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80044ca:	2358      	movs	r3, #88	; 0x58
 80044cc:	e595      	b.n	8003ffa <_vfprintf_r+0x125a>
 80044ce:	9803      	ldr	r0, [sp, #12]
 80044d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80044d2:	4649      	mov	r1, r9
 80044d4:	f002 fcd0 	bl	8006e78 <__sprint_r>
 80044d8:	2800      	cmp	r0, #0
 80044da:	f47f a9e0 	bne.w	800389e <_vfprintf_r+0xafe>
 80044de:	f7fe bf0f 	b.w	8003300 <_vfprintf_r+0x560>
 80044e2:	a824      	add	r0, sp, #144	; 0x90
 80044e4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80044e8:	f002 fbe0 	bl	8006cac <frexp>
 80044ec:	2200      	movs	r2, #0
 80044ee:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80044f2:	ec51 0b10 	vmov	r0, r1, d0
 80044f6:	f7fc fb1f 	bl	8000b38 <__aeabi_dmul>
 80044fa:	2200      	movs	r2, #0
 80044fc:	2300      	movs	r3, #0
 80044fe:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004502:	f7fc fd81 	bl	8001008 <__aeabi_dcmpeq>
 8004506:	b108      	cbz	r0, 800450c <_vfprintf_r+0x176c>
 8004508:	2301      	movs	r3, #1
 800450a:	9324      	str	r3, [sp, #144]	; 0x90
 800450c:	4b02      	ldr	r3, [pc, #8]	; (8004518 <_vfprintf_r+0x1778>)
 800450e:	9309      	str	r3, [sp, #36]	; 0x24
 8004510:	e5ac      	b.n	800406c <_vfprintf_r+0x12cc>
 8004512:	bf00      	nop
 8004514:	08007570 	.word	0x08007570
 8004518:	0800752c 	.word	0x0800752c
 800451c:	425d      	negs	r5, r3
 800451e:	3310      	adds	r3, #16
 8004520:	4bb9      	ldr	r3, [pc, #740]	; (8004808 <_vfprintf_r+0x1a68>)
 8004522:	f280 8097 	bge.w	8004654 <_vfprintf_r+0x18b4>
 8004526:	4619      	mov	r1, r3
 8004528:	2610      	movs	r6, #16
 800452a:	4623      	mov	r3, r4
 800452c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004530:	460c      	mov	r4, r1
 8004532:	e005      	b.n	8004540 <_vfprintf_r+0x17a0>
 8004534:	f10b 0b08 	add.w	fp, fp, #8
 8004538:	3d10      	subs	r5, #16
 800453a:	2d10      	cmp	r5, #16
 800453c:	f340 8087 	ble.w	800464e <_vfprintf_r+0x18ae>
 8004540:	3201      	adds	r2, #1
 8004542:	3310      	adds	r3, #16
 8004544:	2a07      	cmp	r2, #7
 8004546:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800454a:	e9cb 4600 	strd	r4, r6, [fp]
 800454e:	ddf1      	ble.n	8004534 <_vfprintf_r+0x1794>
 8004550:	aa2a      	add	r2, sp, #168	; 0xa8
 8004552:	9907      	ldr	r1, [sp, #28]
 8004554:	4648      	mov	r0, r9
 8004556:	f002 fc8f 	bl	8006e78 <__sprint_r>
 800455a:	2800      	cmp	r0, #0
 800455c:	f47f a998 	bne.w	8003890 <_vfprintf_r+0xaf0>
 8004560:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004564:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004568:	e7e6      	b.n	8004538 <_vfprintf_r+0x1798>
 800456a:	f109 0101 	add.w	r1, r9, #1
 800456e:	9803      	ldr	r0, [sp, #12]
 8004570:	f7fe f8a0 	bl	80026b4 <_malloc_r>
 8004574:	4607      	mov	r7, r0
 8004576:	2800      	cmp	r0, #0
 8004578:	f000 813b 	beq.w	80047f2 <_vfprintf_r+0x1a52>
 800457c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004580:	930e      	str	r3, [sp, #56]	; 0x38
 8004582:	f026 0320 	bic.w	r3, r6, #32
 8004586:	9304      	str	r3, [sp, #16]
 8004588:	46a0      	mov	r8, r4
 800458a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800458c:	900a      	str	r0, [sp, #40]	; 0x28
 800458e:	e547      	b.n	8004020 <_vfprintf_r+0x1280>
 8004590:	2667      	movs	r6, #103	; 0x67
 8004592:	981a      	ldr	r0, [sp, #104]	; 0x68
 8004594:	2200      	movs	r2, #0
 8004596:	920f      	str	r2, [sp, #60]	; 0x3c
 8004598:	9214      	str	r2, [sp, #80]	; 0x50
 800459a:	7803      	ldrb	r3, [r0, #0]
 800459c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800459e:	2bff      	cmp	r3, #255	; 0xff
 80045a0:	d00c      	beq.n	80045bc <_vfprintf_r+0x181c>
 80045a2:	4293      	cmp	r3, r2
 80045a4:	da0a      	bge.n	80045bc <_vfprintf_r+0x181c>
 80045a6:	7841      	ldrb	r1, [r0, #1]
 80045a8:	1ad2      	subs	r2, r2, r3
 80045aa:	b1a9      	cbz	r1, 80045d8 <_vfprintf_r+0x1838>
 80045ac:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80045ae:	3301      	adds	r3, #1
 80045b0:	9314      	str	r3, [sp, #80]	; 0x50
 80045b2:	460b      	mov	r3, r1
 80045b4:	2bff      	cmp	r3, #255	; 0xff
 80045b6:	f100 0001 	add.w	r0, r0, #1
 80045ba:	d1f2      	bne.n	80045a2 <_vfprintf_r+0x1802>
 80045bc:	9211      	str	r2, [sp, #68]	; 0x44
 80045be:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80045c0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80045c2:	9909      	ldr	r1, [sp, #36]	; 0x24
 80045c4:	901a      	str	r0, [sp, #104]	; 0x68
 80045c6:	4413      	add	r3, r2
 80045c8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 80045ca:	fb02 1303 	mla	r3, r2, r3, r1
 80045ce:	9309      	str	r3, [sp, #36]	; 0x24
 80045d0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80045d4:	9304      	str	r3, [sp, #16]
 80045d6:	e485      	b.n	8003ee4 <_vfprintf_r+0x1144>
 80045d8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80045da:	3101      	adds	r1, #1
 80045dc:	910f      	str	r1, [sp, #60]	; 0x3c
 80045de:	e7de      	b.n	800459e <_vfprintf_r+0x17fe>
 80045e0:	aa28      	add	r2, sp, #160	; 0xa0
 80045e2:	ab25      	add	r3, sp, #148	; 0x94
 80045e4:	e9cd 3200 	strd	r3, r2, [sp]
 80045e8:	2103      	movs	r1, #3
 80045ea:	ab24      	add	r3, sp, #144	; 0x90
 80045ec:	464a      	mov	r2, r9
 80045ee:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80045f2:	9803      	ldr	r0, [sp, #12]
 80045f4:	f000 fa5c 	bl	8004ab0 <_dtoa_r>
 80045f8:	464d      	mov	r5, r9
 80045fa:	4607      	mov	r7, r0
 80045fc:	eb00 0409 	add.w	r4, r0, r9
 8004600:	783b      	ldrb	r3, [r7, #0]
 8004602:	2b30      	cmp	r3, #48	; 0x30
 8004604:	f000 80be 	beq.w	8004784 <_vfprintf_r+0x19e4>
 8004608:	9d24      	ldr	r5, [sp, #144]	; 0x90
 800460a:	442c      	add	r4, r5
 800460c:	2200      	movs	r2, #0
 800460e:	2300      	movs	r3, #0
 8004610:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004614:	f7fc fcf8 	bl	8001008 <__aeabi_dcmpeq>
 8004618:	b108      	cbz	r0, 800461e <_vfprintf_r+0x187e>
 800461a:	4623      	mov	r3, r4
 800461c:	e413      	b.n	8003e46 <_vfprintf_r+0x10a6>
 800461e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004620:	42a3      	cmp	r3, r4
 8004622:	f4bf ac10 	bcs.w	8003e46 <_vfprintf_r+0x10a6>
 8004626:	2130      	movs	r1, #48	; 0x30
 8004628:	1c5a      	adds	r2, r3, #1
 800462a:	9228      	str	r2, [sp, #160]	; 0xa0
 800462c:	7019      	strb	r1, [r3, #0]
 800462e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004630:	429c      	cmp	r4, r3
 8004632:	d8f9      	bhi.n	8004628 <_vfprintf_r+0x1888>
 8004634:	e407      	b.n	8003e46 <_vfprintf_r+0x10a6>
 8004636:	197c      	adds	r4, r7, r5
 8004638:	e7e8      	b.n	800460c <_vfprintf_r+0x186c>
 800463a:	f1b9 0f00 	cmp.w	r9, #0
 800463e:	f000 8092 	beq.w	8004766 <_vfprintf_r+0x19c6>
 8004642:	900a      	str	r0, [sp, #40]	; 0x28
 8004644:	e4ec      	b.n	8004020 <_vfprintf_r+0x1280>
 8004646:	900a      	str	r0, [sp, #40]	; 0x28
 8004648:	f04f 0906 	mov.w	r9, #6
 800464c:	e4e8      	b.n	8004020 <_vfprintf_r+0x1280>
 800464e:	4621      	mov	r1, r4
 8004650:	461c      	mov	r4, r3
 8004652:	460b      	mov	r3, r1
 8004654:	3201      	adds	r2, #1
 8004656:	442c      	add	r4, r5
 8004658:	2a07      	cmp	r2, #7
 800465a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800465e:	e9cb 3500 	strd	r3, r5, [fp]
 8004662:	f300 80a9 	bgt.w	80047b8 <_vfprintf_r+0x1a18>
 8004666:	f10b 0b08 	add.w	fp, fp, #8
 800466a:	e470      	b.n	8003f4e <_vfprintf_r+0x11ae>
 800466c:	469a      	mov	sl, r3
 800466e:	f7ff bb37 	b.w	8003ce0 <_vfprintf_r+0xf40>
 8004672:	2301      	movs	r3, #1
 8004674:	9324      	str	r3, [sp, #144]	; 0x90
 8004676:	4b65      	ldr	r3, [pc, #404]	; (800480c <_vfprintf_r+0x1a6c>)
 8004678:	9309      	str	r3, [sp, #36]	; 0x24
 800467a:	e4f7      	b.n	800406c <_vfprintf_r+0x12cc>
 800467c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800467e:	4413      	add	r3, r2
 8004680:	444b      	add	r3, r9
 8004682:	9309      	str	r3, [sp, #36]	; 0x24
 8004684:	2666      	movs	r6, #102	; 0x66
 8004686:	e6fb      	b.n	8004480 <_vfprintf_r+0x16e0>
 8004688:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800468a:	9309      	str	r3, [sp, #36]	; 0x24
 800468c:	e694      	b.n	80043b8 <_vfprintf_r+0x1618>
 800468e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8004692:	4664      	mov	r4, ip
 8004694:	4d5e      	ldr	r5, [pc, #376]	; (8004810 <_vfprintf_r+0x1a70>)
 8004696:	e000      	b.n	800469a <_vfprintf_r+0x18fa>
 8004698:	4614      	mov	r4, r2
 800469a:	fba5 1203 	umull	r1, r2, r5, r3
 800469e:	08d2      	lsrs	r2, r2, #3
 80046a0:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 80046a4:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 80046a8:	f103 0130 	add.w	r1, r3, #48	; 0x30
 80046ac:	4613      	mov	r3, r2
 80046ae:	2b09      	cmp	r3, #9
 80046b0:	f804 1c01 	strb.w	r1, [r4, #-1]
 80046b4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80046b8:	dcee      	bgt.n	8004698 <_vfprintf_r+0x18f8>
 80046ba:	3330      	adds	r3, #48	; 0x30
 80046bc:	3c02      	subs	r4, #2
 80046be:	b2db      	uxtb	r3, r3
 80046c0:	45a4      	cmp	ip, r4
 80046c2:	f802 3c01 	strb.w	r3, [r2, #-1]
 80046c6:	f240 8090 	bls.w	80047ea <_vfprintf_r+0x1a4a>
 80046ca:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 80046ce:	4611      	mov	r1, r2
 80046d0:	e001      	b.n	80046d6 <_vfprintf_r+0x1936>
 80046d2:	f811 3b01 	ldrb.w	r3, [r1], #1
 80046d6:	f804 3b01 	strb.w	r3, [r4], #1
 80046da:	458c      	cmp	ip, r1
 80046dc:	d1f9      	bne.n	80046d2 <_vfprintf_r+0x1932>
 80046de:	ab2a      	add	r3, sp, #168	; 0xa8
 80046e0:	1a9b      	subs	r3, r3, r2
 80046e2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80046e6:	4413      	add	r3, r2
 80046e8:	f7ff bbe3 	b.w	8003eb2 <_vfprintf_r+0x1112>
 80046ec:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80046ee:	4f49      	ldr	r7, [pc, #292]	; (8004814 <_vfprintf_r+0x1a74>)
 80046f0:	2b00      	cmp	r3, #0
 80046f2:	bfb6      	itet	lt
 80046f4:	222d      	movlt	r2, #45	; 0x2d
 80046f6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80046fa:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80046fe:	4b46      	ldr	r3, [pc, #280]	; (8004818 <_vfprintf_r+0x1a78>)
 8004700:	f7fe bf02 	b.w	8003508 <_vfprintf_r+0x768>
 8004704:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004708:	f7ff b8c9 	b.w	800389e <_vfprintf_r+0xafe>
 800470c:	aa28      	add	r2, sp, #160	; 0xa0
 800470e:	ab25      	add	r3, sp, #148	; 0x94
 8004710:	e9cd 3200 	strd	r3, r2, [sp]
 8004714:	2103      	movs	r1, #3
 8004716:	ab24      	add	r3, sp, #144	; 0x90
 8004718:	464a      	mov	r2, r9
 800471a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800471e:	9803      	ldr	r0, [sp, #12]
 8004720:	f000 f9c6 	bl	8004ab0 <_dtoa_r>
 8004724:	464d      	mov	r5, r9
 8004726:	4607      	mov	r7, r0
 8004728:	2e46      	cmp	r6, #70	; 0x46
 800472a:	eb07 0405 	add.w	r4, r7, r5
 800472e:	f43f af67 	beq.w	8004600 <_vfprintf_r+0x1860>
 8004732:	e76b      	b.n	800460c <_vfprintf_r+0x186c>
 8004734:	f1b9 0f00 	cmp.w	r9, #0
 8004738:	d131      	bne.n	800479e <_vfprintf_r+0x19fe>
 800473a:	07c5      	lsls	r5, r0, #31
 800473c:	d42f      	bmi.n	800479e <_vfprintf_r+0x19fe>
 800473e:	2301      	movs	r3, #1
 8004740:	9304      	str	r3, [sp, #16]
 8004742:	9309      	str	r3, [sp, #36]	; 0x24
 8004744:	2666      	movs	r6, #102	; 0x66
 8004746:	e642      	b.n	80043ce <_vfprintf_r+0x162e>
 8004748:	07c3      	lsls	r3, r0, #31
 800474a:	f57f abbf 	bpl.w	8003ecc <_vfprintf_r+0x112c>
 800474e:	f7ff bbb9 	b.w	8003ec4 <_vfprintf_r+0x1124>
 8004752:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004754:	f1c3 0301 	rsb	r3, r3, #1
 8004758:	441a      	add	r2, r3
 800475a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800475e:	9209      	str	r2, [sp, #36]	; 0x24
 8004760:	9304      	str	r3, [sp, #16]
 8004762:	2667      	movs	r6, #103	; 0x67
 8004764:	e633      	b.n	80043ce <_vfprintf_r+0x162e>
 8004766:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800476a:	f04f 0901 	mov.w	r9, #1
 800476e:	e457      	b.n	8004020 <_vfprintf_r+0x1280>
 8004770:	465a      	mov	r2, fp
 8004772:	e511      	b.n	8004198 <_vfprintf_r+0x13f8>
 8004774:	2e47      	cmp	r6, #71	; 0x47
 8004776:	f47f af5e 	bne.w	8004636 <_vfprintf_r+0x1896>
 800477a:	f018 0f01 	tst.w	r8, #1
 800477e:	f43f ab61 	beq.w	8003e44 <_vfprintf_r+0x10a4>
 8004782:	e7d1      	b.n	8004728 <_vfprintf_r+0x1988>
 8004784:	2200      	movs	r2, #0
 8004786:	2300      	movs	r3, #0
 8004788:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800478c:	f7fc fc3c 	bl	8001008 <__aeabi_dcmpeq>
 8004790:	2800      	cmp	r0, #0
 8004792:	f47f af39 	bne.w	8004608 <_vfprintf_r+0x1868>
 8004796:	f1c5 0501 	rsb	r5, r5, #1
 800479a:	9524      	str	r5, [sp, #144]	; 0x90
 800479c:	e735      	b.n	800460a <_vfprintf_r+0x186a>
 800479e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80047a0:	3301      	adds	r3, #1
 80047a2:	444b      	add	r3, r9
 80047a4:	9309      	str	r3, [sp, #36]	; 0x24
 80047a6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80047aa:	9304      	str	r3, [sp, #16]
 80047ac:	2666      	movs	r6, #102	; 0x66
 80047ae:	e60e      	b.n	80043ce <_vfprintf_r+0x162e>
 80047b0:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80047b4:	f7ff bb7a 	b.w	8003eac <_vfprintf_r+0x110c>
 80047b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80047ba:	9907      	ldr	r1, [sp, #28]
 80047bc:	9803      	ldr	r0, [sp, #12]
 80047be:	f002 fb5b 	bl	8006e78 <__sprint_r>
 80047c2:	2800      	cmp	r0, #0
 80047c4:	f47f a864 	bne.w	8003890 <_vfprintf_r+0xaf0>
 80047c8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80047cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80047d0:	f7ff bbbd 	b.w	8003f4e <_vfprintf_r+0x11ae>
 80047d4:	9908      	ldr	r1, [sp, #32]
 80047d6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80047da:	680b      	ldr	r3, [r1, #0]
 80047dc:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80047e0:	1d0b      	adds	r3, r1, #4
 80047e2:	4692      	mov	sl, r2
 80047e4:	9308      	str	r3, [sp, #32]
 80047e6:	f7fe bb59 	b.w	8002e9c <_vfprintf_r+0xfc>
 80047ea:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80047ee:	f7ff bb60 	b.w	8003eb2 <_vfprintf_r+0x1112>
 80047f2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80047f6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80047fa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80047fe:	f8a9 300c 	strh.w	r3, [r9, #12]
 8004802:	f7ff b84c 	b.w	800389e <_vfprintf_r+0xafe>
 8004806:	bf00      	nop
 8004808:	08007570 	.word	0x08007570
 800480c:	08007540 	.word	0x08007540
 8004810:	cccccccd 	.word	0xcccccccd
 8004814:	08007528 	.word	0x08007528
 8004818:	08007524 	.word	0x08007524

0800481c <__sbprintf>:
 800481c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004820:	460c      	mov	r4, r1
 8004822:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8004826:	8989      	ldrh	r1, [r1, #12]
 8004828:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800482a:	89e5      	ldrh	r5, [r4, #14]
 800482c:	9619      	str	r6, [sp, #100]	; 0x64
 800482e:	f021 0102 	bic.w	r1, r1, #2
 8004832:	4606      	mov	r6, r0
 8004834:	69e0      	ldr	r0, [r4, #28]
 8004836:	f8ad 100c 	strh.w	r1, [sp, #12]
 800483a:	4617      	mov	r7, r2
 800483c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004840:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8004842:	f8ad 500e 	strh.w	r5, [sp, #14]
 8004846:	4698      	mov	r8, r3
 8004848:	ad1a      	add	r5, sp, #104	; 0x68
 800484a:	2300      	movs	r3, #0
 800484c:	9007      	str	r0, [sp, #28]
 800484e:	a816      	add	r0, sp, #88	; 0x58
 8004850:	9209      	str	r2, [sp, #36]	; 0x24
 8004852:	9306      	str	r3, [sp, #24]
 8004854:	9500      	str	r5, [sp, #0]
 8004856:	9504      	str	r5, [sp, #16]
 8004858:	9102      	str	r1, [sp, #8]
 800485a:	9105      	str	r1, [sp, #20]
 800485c:	f001 fc8a 	bl	8006174 <__retarget_lock_init_recursive>
 8004860:	4643      	mov	r3, r8
 8004862:	463a      	mov	r2, r7
 8004864:	4669      	mov	r1, sp
 8004866:	4630      	mov	r0, r6
 8004868:	f7fe fa9a 	bl	8002da0 <_vfprintf_r>
 800486c:	1e05      	subs	r5, r0, #0
 800486e:	db07      	blt.n	8004880 <__sbprintf+0x64>
 8004870:	4630      	mov	r0, r6
 8004872:	4669      	mov	r1, sp
 8004874:	f001 f8d6 	bl	8005a24 <_fflush_r>
 8004878:	2800      	cmp	r0, #0
 800487a:	bf18      	it	ne
 800487c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004880:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004884:	065b      	lsls	r3, r3, #25
 8004886:	d503      	bpl.n	8004890 <__sbprintf+0x74>
 8004888:	89a3      	ldrh	r3, [r4, #12]
 800488a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800488e:	81a3      	strh	r3, [r4, #12]
 8004890:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004892:	f001 fc71 	bl	8006178 <__retarget_lock_close_recursive>
 8004896:	4628      	mov	r0, r5
 8004898:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800489c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080048a0 <__swsetup_r>:
 80048a0:	b538      	push	{r3, r4, r5, lr}
 80048a2:	4b31      	ldr	r3, [pc, #196]	; (8004968 <__swsetup_r+0xc8>)
 80048a4:	681b      	ldr	r3, [r3, #0]
 80048a6:	4605      	mov	r5, r0
 80048a8:	460c      	mov	r4, r1
 80048aa:	b113      	cbz	r3, 80048b2 <__swsetup_r+0x12>
 80048ac:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80048ae:	2a00      	cmp	r2, #0
 80048b0:	d03a      	beq.n	8004928 <__swsetup_r+0x88>
 80048b2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80048b6:	b293      	uxth	r3, r2
 80048b8:	0718      	lsls	r0, r3, #28
 80048ba:	d50c      	bpl.n	80048d6 <__swsetup_r+0x36>
 80048bc:	6920      	ldr	r0, [r4, #16]
 80048be:	b1a8      	cbz	r0, 80048ec <__swsetup_r+0x4c>
 80048c0:	f013 0201 	ands.w	r2, r3, #1
 80048c4:	d020      	beq.n	8004908 <__swsetup_r+0x68>
 80048c6:	6963      	ldr	r3, [r4, #20]
 80048c8:	2200      	movs	r2, #0
 80048ca:	425b      	negs	r3, r3
 80048cc:	61a3      	str	r3, [r4, #24]
 80048ce:	60a2      	str	r2, [r4, #8]
 80048d0:	b300      	cbz	r0, 8004914 <__swsetup_r+0x74>
 80048d2:	2000      	movs	r0, #0
 80048d4:	bd38      	pop	{r3, r4, r5, pc}
 80048d6:	06d9      	lsls	r1, r3, #27
 80048d8:	d53e      	bpl.n	8004958 <__swsetup_r+0xb8>
 80048da:	0758      	lsls	r0, r3, #29
 80048dc:	d428      	bmi.n	8004930 <__swsetup_r+0x90>
 80048de:	6920      	ldr	r0, [r4, #16]
 80048e0:	f042 0308 	orr.w	r3, r2, #8
 80048e4:	81a3      	strh	r3, [r4, #12]
 80048e6:	b29b      	uxth	r3, r3
 80048e8:	2800      	cmp	r0, #0
 80048ea:	d1e9      	bne.n	80048c0 <__swsetup_r+0x20>
 80048ec:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80048f0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80048f4:	d0e4      	beq.n	80048c0 <__swsetup_r+0x20>
 80048f6:	4628      	mov	r0, r5
 80048f8:	4621      	mov	r1, r4
 80048fa:	f001 fc71 	bl	80061e0 <__smakebuf_r>
 80048fe:	89a3      	ldrh	r3, [r4, #12]
 8004900:	6920      	ldr	r0, [r4, #16]
 8004902:	f013 0201 	ands.w	r2, r3, #1
 8004906:	d1de      	bne.n	80048c6 <__swsetup_r+0x26>
 8004908:	0799      	lsls	r1, r3, #30
 800490a:	bf58      	it	pl
 800490c:	6962      	ldrpl	r2, [r4, #20]
 800490e:	60a2      	str	r2, [r4, #8]
 8004910:	2800      	cmp	r0, #0
 8004912:	d1de      	bne.n	80048d2 <__swsetup_r+0x32>
 8004914:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004918:	061a      	lsls	r2, r3, #24
 800491a:	d5db      	bpl.n	80048d4 <__swsetup_r+0x34>
 800491c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004920:	81a3      	strh	r3, [r4, #12]
 8004922:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004926:	bd38      	pop	{r3, r4, r5, pc}
 8004928:	4618      	mov	r0, r3
 800492a:	f001 f8d7 	bl	8005adc <__sinit>
 800492e:	e7c0      	b.n	80048b2 <__swsetup_r+0x12>
 8004930:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004932:	b151      	cbz	r1, 800494a <__swsetup_r+0xaa>
 8004934:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004938:	4299      	cmp	r1, r3
 800493a:	d004      	beq.n	8004946 <__swsetup_r+0xa6>
 800493c:	4628      	mov	r0, r5
 800493e:	f001 f96f 	bl	8005c20 <_free_r>
 8004942:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004946:	2300      	movs	r3, #0
 8004948:	6323      	str	r3, [r4, #48]	; 0x30
 800494a:	2300      	movs	r3, #0
 800494c:	6920      	ldr	r0, [r4, #16]
 800494e:	6063      	str	r3, [r4, #4]
 8004950:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004954:	6020      	str	r0, [r4, #0]
 8004956:	e7c3      	b.n	80048e0 <__swsetup_r+0x40>
 8004958:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800495c:	2309      	movs	r3, #9
 800495e:	602b      	str	r3, [r5, #0]
 8004960:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004964:	81a2      	strh	r2, [r4, #12]
 8004966:	bd38      	pop	{r3, r4, r5, pc}
 8004968:	200001a8 	.word	0x200001a8

0800496c <register_fini>:
 800496c:	4b02      	ldr	r3, [pc, #8]	; (8004978 <register_fini+0xc>)
 800496e:	b113      	cbz	r3, 8004976 <register_fini+0xa>
 8004970:	4802      	ldr	r0, [pc, #8]	; (800497c <register_fini+0x10>)
 8004972:	f000 b805 	b.w	8004980 <atexit>
 8004976:	4770      	bx	lr
 8004978:	00000000 	.word	0x00000000
 800497c:	08005b4d 	.word	0x08005b4d

08004980 <atexit>:
 8004980:	2300      	movs	r3, #0
 8004982:	4601      	mov	r1, r0
 8004984:	461a      	mov	r2, r3
 8004986:	4618      	mov	r0, r3
 8004988:	f002 ba96 	b.w	8006eb8 <__register_exitproc>

0800498c <quorem>:
 800498c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004990:	6903      	ldr	r3, [r0, #16]
 8004992:	690f      	ldr	r7, [r1, #16]
 8004994:	42bb      	cmp	r3, r7
 8004996:	b083      	sub	sp, #12
 8004998:	f2c0 8086 	blt.w	8004aa8 <quorem+0x11c>
 800499c:	3f01      	subs	r7, #1
 800499e:	f101 0914 	add.w	r9, r1, #20
 80049a2:	f100 0a14 	add.w	sl, r0, #20
 80049a6:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80049aa:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80049ae:	00bc      	lsls	r4, r7, #2
 80049b0:	3201      	adds	r2, #1
 80049b2:	fbb3 f8f2 	udiv	r8, r3, r2
 80049b6:	eb0a 0304 	add.w	r3, sl, r4
 80049ba:	9400      	str	r4, [sp, #0]
 80049bc:	eb09 0b04 	add.w	fp, r9, r4
 80049c0:	9301      	str	r3, [sp, #4]
 80049c2:	f1b8 0f00 	cmp.w	r8, #0
 80049c6:	d038      	beq.n	8004a3a <quorem+0xae>
 80049c8:	2500      	movs	r5, #0
 80049ca:	462e      	mov	r6, r5
 80049cc:	46ce      	mov	lr, r9
 80049ce:	46d4      	mov	ip, sl
 80049d0:	f85e 4b04 	ldr.w	r4, [lr], #4
 80049d4:	f8dc 3000 	ldr.w	r3, [ip]
 80049d8:	b2a2      	uxth	r2, r4
 80049da:	fb08 5502 	mla	r5, r8, r2, r5
 80049de:	0c22      	lsrs	r2, r4, #16
 80049e0:	0c2c      	lsrs	r4, r5, #16
 80049e2:	fb08 4202 	mla	r2, r8, r2, r4
 80049e6:	b2ad      	uxth	r5, r5
 80049e8:	1b75      	subs	r5, r6, r5
 80049ea:	b296      	uxth	r6, r2
 80049ec:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80049f0:	fa15 f383 	uxtah	r3, r5, r3
 80049f4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80049f8:	b29b      	uxth	r3, r3
 80049fa:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80049fe:	45f3      	cmp	fp, lr
 8004a00:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004a04:	f84c 3b04 	str.w	r3, [ip], #4
 8004a08:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004a0c:	d2e0      	bcs.n	80049d0 <quorem+0x44>
 8004a0e:	9b00      	ldr	r3, [sp, #0]
 8004a10:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004a14:	b98b      	cbnz	r3, 8004a3a <quorem+0xae>
 8004a16:	9a01      	ldr	r2, [sp, #4]
 8004a18:	1f13      	subs	r3, r2, #4
 8004a1a:	459a      	cmp	sl, r3
 8004a1c:	d20c      	bcs.n	8004a38 <quorem+0xac>
 8004a1e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004a22:	b94b      	cbnz	r3, 8004a38 <quorem+0xac>
 8004a24:	f1a2 0308 	sub.w	r3, r2, #8
 8004a28:	e002      	b.n	8004a30 <quorem+0xa4>
 8004a2a:	681a      	ldr	r2, [r3, #0]
 8004a2c:	3b04      	subs	r3, #4
 8004a2e:	b91a      	cbnz	r2, 8004a38 <quorem+0xac>
 8004a30:	459a      	cmp	sl, r3
 8004a32:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004a36:	d3f8      	bcc.n	8004a2a <quorem+0x9e>
 8004a38:	6107      	str	r7, [r0, #16]
 8004a3a:	4604      	mov	r4, r0
 8004a3c:	f001 fe94 	bl	8006768 <__mcmp>
 8004a40:	2800      	cmp	r0, #0
 8004a42:	db2d      	blt.n	8004aa0 <quorem+0x114>
 8004a44:	f108 0801 	add.w	r8, r8, #1
 8004a48:	4655      	mov	r5, sl
 8004a4a:	2300      	movs	r3, #0
 8004a4c:	f859 1b04 	ldr.w	r1, [r9], #4
 8004a50:	6828      	ldr	r0, [r5, #0]
 8004a52:	b28a      	uxth	r2, r1
 8004a54:	1a9a      	subs	r2, r3, r2
 8004a56:	0c0b      	lsrs	r3, r1, #16
 8004a58:	fa12 f280 	uxtah	r2, r2, r0
 8004a5c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004a60:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004a64:	b292      	uxth	r2, r2
 8004a66:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004a6a:	45cb      	cmp	fp, r9
 8004a6c:	f845 2b04 	str.w	r2, [r5], #4
 8004a70:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004a74:	d2ea      	bcs.n	8004a4c <quorem+0xc0>
 8004a76:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004a7a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004a7e:	b97a      	cbnz	r2, 8004aa0 <quorem+0x114>
 8004a80:	1f1a      	subs	r2, r3, #4
 8004a82:	4592      	cmp	sl, r2
 8004a84:	d20b      	bcs.n	8004a9e <quorem+0x112>
 8004a86:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004a8a:	b942      	cbnz	r2, 8004a9e <quorem+0x112>
 8004a8c:	3b08      	subs	r3, #8
 8004a8e:	e002      	b.n	8004a96 <quorem+0x10a>
 8004a90:	681a      	ldr	r2, [r3, #0]
 8004a92:	3b04      	subs	r3, #4
 8004a94:	b91a      	cbnz	r2, 8004a9e <quorem+0x112>
 8004a96:	459a      	cmp	sl, r3
 8004a98:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004a9c:	d3f8      	bcc.n	8004a90 <quorem+0x104>
 8004a9e:	6127      	str	r7, [r4, #16]
 8004aa0:	4640      	mov	r0, r8
 8004aa2:	b003      	add	sp, #12
 8004aa4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004aa8:	2000      	movs	r0, #0
 8004aaa:	b003      	add	sp, #12
 8004aac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004ab0 <_dtoa_r>:
 8004ab0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004ab4:	ec55 4b10 	vmov	r4, r5, d0
 8004ab8:	b09b      	sub	sp, #108	; 0x6c
 8004aba:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004abc:	9102      	str	r1, [sp, #8]
 8004abe:	4681      	mov	r9, r0
 8004ac0:	9207      	str	r2, [sp, #28]
 8004ac2:	9305      	str	r3, [sp, #20]
 8004ac4:	e9cd 4500 	strd	r4, r5, [sp]
 8004ac8:	b156      	cbz	r6, 8004ae0 <_dtoa_r+0x30>
 8004aca:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004acc:	6072      	str	r2, [r6, #4]
 8004ace:	2301      	movs	r3, #1
 8004ad0:	4093      	lsls	r3, r2
 8004ad2:	60b3      	str	r3, [r6, #8]
 8004ad4:	4631      	mov	r1, r6
 8004ad6:	f001 fc57 	bl	8006388 <_Bfree>
 8004ada:	2300      	movs	r3, #0
 8004adc:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004ae0:	f1b5 0800 	subs.w	r8, r5, #0
 8004ae4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004ae6:	bfb4      	ite	lt
 8004ae8:	2301      	movlt	r3, #1
 8004aea:	2300      	movge	r3, #0
 8004aec:	6013      	str	r3, [r2, #0]
 8004aee:	4b76      	ldr	r3, [pc, #472]	; (8004cc8 <_dtoa_r+0x218>)
 8004af0:	bfbc      	itt	lt
 8004af2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004af6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004afa:	ea33 0308 	bics.w	r3, r3, r8
 8004afe:	f000 80a6 	beq.w	8004c4e <_dtoa_r+0x19e>
 8004b02:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004b06:	2200      	movs	r2, #0
 8004b08:	2300      	movs	r3, #0
 8004b0a:	4630      	mov	r0, r6
 8004b0c:	4639      	mov	r1, r7
 8004b0e:	f7fc fa7b 	bl	8001008 <__aeabi_dcmpeq>
 8004b12:	4605      	mov	r5, r0
 8004b14:	b178      	cbz	r0, 8004b36 <_dtoa_r+0x86>
 8004b16:	9a05      	ldr	r2, [sp, #20]
 8004b18:	2301      	movs	r3, #1
 8004b1a:	6013      	str	r3, [r2, #0]
 8004b1c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004b1e:	2b00      	cmp	r3, #0
 8004b20:	f000 80c0 	beq.w	8004ca4 <_dtoa_r+0x1f4>
 8004b24:	4b69      	ldr	r3, [pc, #420]	; (8004ccc <_dtoa_r+0x21c>)
 8004b26:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004b28:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004b2c:	6013      	str	r3, [r2, #0]
 8004b2e:	4658      	mov	r0, fp
 8004b30:	b01b      	add	sp, #108	; 0x6c
 8004b32:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b36:	aa18      	add	r2, sp, #96	; 0x60
 8004b38:	a919      	add	r1, sp, #100	; 0x64
 8004b3a:	ec47 6b10 	vmov	d0, r6, r7
 8004b3e:	4648      	mov	r0, r9
 8004b40:	f001 fea4 	bl	800688c <__d2b>
 8004b44:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004b48:	4682      	mov	sl, r0
 8004b4a:	f040 80a0 	bne.w	8004c8e <_dtoa_r+0x1de>
 8004b4e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004b52:	442c      	add	r4, r5
 8004b54:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004b58:	2b20      	cmp	r3, #32
 8004b5a:	f340 842c 	ble.w	80053b6 <_dtoa_r+0x906>
 8004b5e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004b62:	fa08 f803 	lsl.w	r8, r8, r3
 8004b66:	9b00      	ldr	r3, [sp, #0]
 8004b68:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004b6c:	fa23 f000 	lsr.w	r0, r3, r0
 8004b70:	ea48 0000 	orr.w	r0, r8, r0
 8004b74:	f7fb ff66 	bl	8000a44 <__aeabi_ui2d>
 8004b78:	2301      	movs	r3, #1
 8004b7a:	4606      	mov	r6, r0
 8004b7c:	3c01      	subs	r4, #1
 8004b7e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004b82:	930f      	str	r3, [sp, #60]	; 0x3c
 8004b84:	4630      	mov	r0, r6
 8004b86:	4639      	mov	r1, r7
 8004b88:	2200      	movs	r2, #0
 8004b8a:	4b51      	ldr	r3, [pc, #324]	; (8004cd0 <_dtoa_r+0x220>)
 8004b8c:	f7fb fe1c 	bl	80007c8 <__aeabi_dsub>
 8004b90:	a347      	add	r3, pc, #284	; (adr r3, 8004cb0 <_dtoa_r+0x200>)
 8004b92:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b96:	f7fb ffcf 	bl	8000b38 <__aeabi_dmul>
 8004b9a:	a347      	add	r3, pc, #284	; (adr r3, 8004cb8 <_dtoa_r+0x208>)
 8004b9c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004ba0:	f7fb fe14 	bl	80007cc <__adddf3>
 8004ba4:	4606      	mov	r6, r0
 8004ba6:	4620      	mov	r0, r4
 8004ba8:	460f      	mov	r7, r1
 8004baa:	f7fb ff5b 	bl	8000a64 <__aeabi_i2d>
 8004bae:	a344      	add	r3, pc, #272	; (adr r3, 8004cc0 <_dtoa_r+0x210>)
 8004bb0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004bb4:	f7fb ffc0 	bl	8000b38 <__aeabi_dmul>
 8004bb8:	4602      	mov	r2, r0
 8004bba:	460b      	mov	r3, r1
 8004bbc:	4630      	mov	r0, r6
 8004bbe:	4639      	mov	r1, r7
 8004bc0:	f7fb fe04 	bl	80007cc <__adddf3>
 8004bc4:	4606      	mov	r6, r0
 8004bc6:	460f      	mov	r7, r1
 8004bc8:	f7fc fa66 	bl	8001098 <__aeabi_d2iz>
 8004bcc:	2200      	movs	r2, #0
 8004bce:	9006      	str	r0, [sp, #24]
 8004bd0:	2300      	movs	r3, #0
 8004bd2:	4630      	mov	r0, r6
 8004bd4:	4639      	mov	r1, r7
 8004bd6:	f7fc fa21 	bl	800101c <__aeabi_dcmplt>
 8004bda:	2800      	cmp	r0, #0
 8004bdc:	f040 8273 	bne.w	80050c6 <_dtoa_r+0x616>
 8004be0:	9e06      	ldr	r6, [sp, #24]
 8004be2:	2e16      	cmp	r6, #22
 8004be4:	f200 825d 	bhi.w	80050a2 <_dtoa_r+0x5f2>
 8004be8:	4b3a      	ldr	r3, [pc, #232]	; (8004cd4 <_dtoa_r+0x224>)
 8004bea:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004bee:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004bf2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004bf6:	f7fc fa2f 	bl	8001058 <__aeabi_dcmpgt>
 8004bfa:	2800      	cmp	r0, #0
 8004bfc:	f000 83d7 	beq.w	80053ae <_dtoa_r+0x8fe>
 8004c00:	1e73      	subs	r3, r6, #1
 8004c02:	9306      	str	r3, [sp, #24]
 8004c04:	2300      	movs	r3, #0
 8004c06:	930d      	str	r3, [sp, #52]	; 0x34
 8004c08:	1b2c      	subs	r4, r5, r4
 8004c0a:	f1b4 0801 	subs.w	r8, r4, #1
 8004c0e:	f100 8254 	bmi.w	80050ba <_dtoa_r+0x60a>
 8004c12:	2300      	movs	r3, #0
 8004c14:	9308      	str	r3, [sp, #32]
 8004c16:	9b06      	ldr	r3, [sp, #24]
 8004c18:	2b00      	cmp	r3, #0
 8004c1a:	f2c0 8245 	blt.w	80050a8 <_dtoa_r+0x5f8>
 8004c1e:	4498      	add	r8, r3
 8004c20:	930c      	str	r3, [sp, #48]	; 0x30
 8004c22:	2300      	movs	r3, #0
 8004c24:	930b      	str	r3, [sp, #44]	; 0x2c
 8004c26:	9b02      	ldr	r3, [sp, #8]
 8004c28:	2b09      	cmp	r3, #9
 8004c2a:	d85b      	bhi.n	8004ce4 <_dtoa_r+0x234>
 8004c2c:	2b05      	cmp	r3, #5
 8004c2e:	f340 83c0 	ble.w	80053b2 <_dtoa_r+0x902>
 8004c32:	3b04      	subs	r3, #4
 8004c34:	9302      	str	r3, [sp, #8]
 8004c36:	2500      	movs	r5, #0
 8004c38:	9b02      	ldr	r3, [sp, #8]
 8004c3a:	3b02      	subs	r3, #2
 8004c3c:	2b03      	cmp	r3, #3
 8004c3e:	f200 8498 	bhi.w	8005572 <_dtoa_r+0xac2>
 8004c42:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004c46:	03df      	.short	0x03df
 8004c48:	03e803bf 	.word	0x03e803bf
 8004c4c:	04f5      	.short	0x04f5
 8004c4e:	9a05      	ldr	r2, [sp, #20]
 8004c50:	f242 730f 	movw	r3, #9999	; 0x270f
 8004c54:	6013      	str	r3, [r2, #0]
 8004c56:	9b00      	ldr	r3, [sp, #0]
 8004c58:	b983      	cbnz	r3, 8004c7c <_dtoa_r+0x1cc>
 8004c5a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004c5e:	b96b      	cbnz	r3, 8004c7c <_dtoa_r+0x1cc>
 8004c60:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004c62:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004cd8 <_dtoa_r+0x228>
 8004c66:	2b00      	cmp	r3, #0
 8004c68:	f43f af61 	beq.w	8004b2e <_dtoa_r+0x7e>
 8004c6c:	f10b 0308 	add.w	r3, fp, #8
 8004c70:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004c72:	4658      	mov	r0, fp
 8004c74:	6013      	str	r3, [r2, #0]
 8004c76:	b01b      	add	sp, #108	; 0x6c
 8004c78:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c7c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004c7e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004cdc <_dtoa_r+0x22c>
 8004c82:	2b00      	cmp	r3, #0
 8004c84:	f43f af53 	beq.w	8004b2e <_dtoa_r+0x7e>
 8004c88:	f10b 0303 	add.w	r3, fp, #3
 8004c8c:	e7f0      	b.n	8004c70 <_dtoa_r+0x1c0>
 8004c8e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004c92:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004c96:	950f      	str	r5, [sp, #60]	; 0x3c
 8004c98:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004c9c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004ca0:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004ca2:	e76f      	b.n	8004b84 <_dtoa_r+0xd4>
 8004ca4:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004ce0 <_dtoa_r+0x230>
 8004ca8:	4658      	mov	r0, fp
 8004caa:	b01b      	add	sp, #108	; 0x6c
 8004cac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004cb0:	636f4361 	.word	0x636f4361
 8004cb4:	3fd287a7 	.word	0x3fd287a7
 8004cb8:	8b60c8b3 	.word	0x8b60c8b3
 8004cbc:	3fc68a28 	.word	0x3fc68a28
 8004cc0:	509f79fb 	.word	0x509f79fb
 8004cc4:	3fd34413 	.word	0x3fd34413
 8004cc8:	7ff00000 	.word	0x7ff00000
 8004ccc:	0800755d 	.word	0x0800755d
 8004cd0:	3ff80000 	.word	0x3ff80000
 8004cd4:	080075b8 	.word	0x080075b8
 8004cd8:	08007580 	.word	0x08007580
 8004cdc:	0800758c 	.word	0x0800758c
 8004ce0:	0800755c 	.word	0x0800755c
 8004ce4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004ce8:	2501      	movs	r5, #1
 8004cea:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004cee:	2300      	movs	r3, #0
 8004cf0:	9302      	str	r3, [sp, #8]
 8004cf2:	9307      	str	r3, [sp, #28]
 8004cf4:	2100      	movs	r1, #0
 8004cf6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004cfa:	940e      	str	r4, [sp, #56]	; 0x38
 8004cfc:	4648      	mov	r0, r9
 8004cfe:	f001 fb1d 	bl	800633c <_Balloc>
 8004d02:	2c0e      	cmp	r4, #14
 8004d04:	4683      	mov	fp, r0
 8004d06:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004d0a:	f200 80fb 	bhi.w	8004f04 <_dtoa_r+0x454>
 8004d0e:	2d00      	cmp	r5, #0
 8004d10:	f000 80f8 	beq.w	8004f04 <_dtoa_r+0x454>
 8004d14:	ed9d 7b00 	vldr	d7, [sp]
 8004d18:	9906      	ldr	r1, [sp, #24]
 8004d1a:	2900      	cmp	r1, #0
 8004d1c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004d20:	f340 83e5 	ble.w	80054ee <_dtoa_r+0xa3e>
 8004d24:	4b9d      	ldr	r3, [pc, #628]	; (8004f9c <_dtoa_r+0x4ec>)
 8004d26:	f001 020f 	and.w	r2, r1, #15
 8004d2a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004d2e:	ed93 7b00 	vldr	d7, [r3]
 8004d32:	110c      	asrs	r4, r1, #4
 8004d34:	06e2      	lsls	r2, r4, #27
 8004d36:	ed8d 7b00 	vstr	d7, [sp]
 8004d3a:	f140 849e 	bpl.w	800567a <_dtoa_r+0xbca>
 8004d3e:	4b98      	ldr	r3, [pc, #608]	; (8004fa0 <_dtoa_r+0x4f0>)
 8004d40:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004d44:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004d48:	f7fc f820 	bl	8000d8c <__aeabi_ddiv>
 8004d4c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004d50:	f004 040f 	and.w	r4, r4, #15
 8004d54:	2603      	movs	r6, #3
 8004d56:	b17c      	cbz	r4, 8004d78 <_dtoa_r+0x2c8>
 8004d58:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d5c:	4d90      	ldr	r5, [pc, #576]	; (8004fa0 <_dtoa_r+0x4f0>)
 8004d5e:	07e3      	lsls	r3, r4, #31
 8004d60:	d504      	bpl.n	8004d6c <_dtoa_r+0x2bc>
 8004d62:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004d66:	f7fb fee7 	bl	8000b38 <__aeabi_dmul>
 8004d6a:	3601      	adds	r6, #1
 8004d6c:	1064      	asrs	r4, r4, #1
 8004d6e:	f105 0508 	add.w	r5, r5, #8
 8004d72:	d1f4      	bne.n	8004d5e <_dtoa_r+0x2ae>
 8004d74:	e9cd 0100 	strd	r0, r1, [sp]
 8004d78:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d7c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004d80:	f7fc f804 	bl	8000d8c <__aeabi_ddiv>
 8004d84:	e9cd 0100 	strd	r0, r1, [sp]
 8004d88:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004d8a:	b143      	cbz	r3, 8004d9e <_dtoa_r+0x2ee>
 8004d8c:	2200      	movs	r2, #0
 8004d8e:	4b85      	ldr	r3, [pc, #532]	; (8004fa4 <_dtoa_r+0x4f4>)
 8004d90:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d94:	f7fc f942 	bl	800101c <__aeabi_dcmplt>
 8004d98:	2800      	cmp	r0, #0
 8004d9a:	f040 84ff 	bne.w	800579c <_dtoa_r+0xcec>
 8004d9e:	4630      	mov	r0, r6
 8004da0:	f7fb fe60 	bl	8000a64 <__aeabi_i2d>
 8004da4:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004da8:	f7fb fec6 	bl	8000b38 <__aeabi_dmul>
 8004dac:	4b7e      	ldr	r3, [pc, #504]	; (8004fa8 <_dtoa_r+0x4f8>)
 8004dae:	2200      	movs	r2, #0
 8004db0:	f7fb fd0c 	bl	80007cc <__adddf3>
 8004db4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004db6:	4606      	mov	r6, r0
 8004db8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004dbc:	2b00      	cmp	r3, #0
 8004dbe:	f000 841c 	beq.w	80055fa <_dtoa_r+0xb4a>
 8004dc2:	9b06      	ldr	r3, [sp, #24]
 8004dc4:	9316      	str	r3, [sp, #88]	; 0x58
 8004dc6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dc8:	9312      	str	r3, [sp, #72]	; 0x48
 8004dca:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dce:	f7fc f963 	bl	8001098 <__aeabi_d2iz>
 8004dd2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004dd4:	4b71      	ldr	r3, [pc, #452]	; (8004f9c <_dtoa_r+0x4ec>)
 8004dd6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004dda:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004dde:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004de2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004de6:	f7fb fe3d 	bl	8000a64 <__aeabi_i2d>
 8004dea:	460b      	mov	r3, r1
 8004dec:	4602      	mov	r2, r0
 8004dee:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004df2:	e9cd 6700 	strd	r6, r7, [sp]
 8004df6:	f7fb fce7 	bl	80007c8 <__aeabi_dsub>
 8004dfa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004dfc:	b2ed      	uxtb	r5, r5
 8004dfe:	4606      	mov	r6, r0
 8004e00:	460f      	mov	r7, r1
 8004e02:	f10b 0401 	add.w	r4, fp, #1
 8004e06:	2b00      	cmp	r3, #0
 8004e08:	f000 8458 	beq.w	80056bc <_dtoa_r+0xc0c>
 8004e0c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004e10:	2000      	movs	r0, #0
 8004e12:	4966      	ldr	r1, [pc, #408]	; (8004fac <_dtoa_r+0x4fc>)
 8004e14:	f7fb ffba 	bl	8000d8c <__aeabi_ddiv>
 8004e18:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e1c:	f7fb fcd4 	bl	80007c8 <__aeabi_dsub>
 8004e20:	f88b 5000 	strb.w	r5, [fp]
 8004e24:	4632      	mov	r2, r6
 8004e26:	463b      	mov	r3, r7
 8004e28:	e9cd 0100 	strd	r0, r1, [sp]
 8004e2c:	f7fc f914 	bl	8001058 <__aeabi_dcmpgt>
 8004e30:	2800      	cmp	r0, #0
 8004e32:	f040 8502 	bne.w	800583a <_dtoa_r+0xd8a>
 8004e36:	4632      	mov	r2, r6
 8004e38:	463b      	mov	r3, r7
 8004e3a:	2000      	movs	r0, #0
 8004e3c:	4959      	ldr	r1, [pc, #356]	; (8004fa4 <_dtoa_r+0x4f4>)
 8004e3e:	f7fb fcc3 	bl	80007c8 <__aeabi_dsub>
 8004e42:	4602      	mov	r2, r0
 8004e44:	460b      	mov	r3, r1
 8004e46:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e4a:	f7fc f905 	bl	8001058 <__aeabi_dcmpgt>
 8004e4e:	2800      	cmp	r0, #0
 8004e50:	f040 84fb 	bne.w	800584a <_dtoa_r+0xd9a>
 8004e54:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004e56:	2a01      	cmp	r2, #1
 8004e58:	d050      	beq.n	8004efc <_dtoa_r+0x44c>
 8004e5a:	445a      	add	r2, fp
 8004e5c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004e60:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004e64:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004e68:	4692      	mov	sl, r2
 8004e6a:	46cb      	mov	fp, r9
 8004e6c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004e70:	e00c      	b.n	8004e8c <_dtoa_r+0x3dc>
 8004e72:	2000      	movs	r0, #0
 8004e74:	494b      	ldr	r1, [pc, #300]	; (8004fa4 <_dtoa_r+0x4f4>)
 8004e76:	f7fb fca7 	bl	80007c8 <__aeabi_dsub>
 8004e7a:	4642      	mov	r2, r8
 8004e7c:	464b      	mov	r3, r9
 8004e7e:	f7fc f8cd 	bl	800101c <__aeabi_dcmplt>
 8004e82:	2800      	cmp	r0, #0
 8004e84:	f040 84dc 	bne.w	8005840 <_dtoa_r+0xd90>
 8004e88:	4554      	cmp	r4, sl
 8004e8a:	d030      	beq.n	8004eee <_dtoa_r+0x43e>
 8004e8c:	4640      	mov	r0, r8
 8004e8e:	4649      	mov	r1, r9
 8004e90:	2200      	movs	r2, #0
 8004e92:	4b47      	ldr	r3, [pc, #284]	; (8004fb0 <_dtoa_r+0x500>)
 8004e94:	f7fb fe50 	bl	8000b38 <__aeabi_dmul>
 8004e98:	2200      	movs	r2, #0
 8004e9a:	4b45      	ldr	r3, [pc, #276]	; (8004fb0 <_dtoa_r+0x500>)
 8004e9c:	4680      	mov	r8, r0
 8004e9e:	4689      	mov	r9, r1
 8004ea0:	4630      	mov	r0, r6
 8004ea2:	4639      	mov	r1, r7
 8004ea4:	f7fb fe48 	bl	8000b38 <__aeabi_dmul>
 8004ea8:	460f      	mov	r7, r1
 8004eaa:	4606      	mov	r6, r0
 8004eac:	f7fc f8f4 	bl	8001098 <__aeabi_d2iz>
 8004eb0:	4605      	mov	r5, r0
 8004eb2:	f7fb fdd7 	bl	8000a64 <__aeabi_i2d>
 8004eb6:	4602      	mov	r2, r0
 8004eb8:	460b      	mov	r3, r1
 8004eba:	4630      	mov	r0, r6
 8004ebc:	4639      	mov	r1, r7
 8004ebe:	f7fb fc83 	bl	80007c8 <__aeabi_dsub>
 8004ec2:	3530      	adds	r5, #48	; 0x30
 8004ec4:	b2ed      	uxtb	r5, r5
 8004ec6:	4642      	mov	r2, r8
 8004ec8:	464b      	mov	r3, r9
 8004eca:	f804 5b01 	strb.w	r5, [r4], #1
 8004ece:	4606      	mov	r6, r0
 8004ed0:	460f      	mov	r7, r1
 8004ed2:	f7fc f8a3 	bl	800101c <__aeabi_dcmplt>
 8004ed6:	4632      	mov	r2, r6
 8004ed8:	463b      	mov	r3, r7
 8004eda:	2800      	cmp	r0, #0
 8004edc:	d0c9      	beq.n	8004e72 <_dtoa_r+0x3c2>
 8004ede:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ee0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ee4:	9306      	str	r3, [sp, #24]
 8004ee6:	46d9      	mov	r9, fp
 8004ee8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004eec:	e236      	b.n	800535c <_dtoa_r+0x8ac>
 8004eee:	46d9      	mov	r9, fp
 8004ef0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004ef4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ef8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004efc:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004f00:	e9cd 3400 	strd	r3, r4, [sp]
 8004f04:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004f06:	2b00      	cmp	r3, #0
 8004f08:	f2c0 80ae 	blt.w	8005068 <_dtoa_r+0x5b8>
 8004f0c:	9a06      	ldr	r2, [sp, #24]
 8004f0e:	2a0e      	cmp	r2, #14
 8004f10:	f300 80aa 	bgt.w	8005068 <_dtoa_r+0x5b8>
 8004f14:	4b21      	ldr	r3, [pc, #132]	; (8004f9c <_dtoa_r+0x4ec>)
 8004f16:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004f1a:	ed93 7b00 	vldr	d7, [r3]
 8004f1e:	9b07      	ldr	r3, [sp, #28]
 8004f20:	2b00      	cmp	r3, #0
 8004f22:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004f26:	f2c0 82be 	blt.w	80054a6 <_dtoa_r+0x9f6>
 8004f2a:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004f2e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004f32:	4630      	mov	r0, r6
 8004f34:	4639      	mov	r1, r7
 8004f36:	f7fb ff29 	bl	8000d8c <__aeabi_ddiv>
 8004f3a:	f7fc f8ad 	bl	8001098 <__aeabi_d2iz>
 8004f3e:	4605      	mov	r5, r0
 8004f40:	f7fb fd90 	bl	8000a64 <__aeabi_i2d>
 8004f44:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004f48:	f7fb fdf6 	bl	8000b38 <__aeabi_dmul>
 8004f4c:	460b      	mov	r3, r1
 8004f4e:	4602      	mov	r2, r0
 8004f50:	4639      	mov	r1, r7
 8004f52:	4630      	mov	r0, r6
 8004f54:	f7fb fc38 	bl	80007c8 <__aeabi_dsub>
 8004f58:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004f5c:	f88b 3000 	strb.w	r3, [fp]
 8004f60:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f62:	2b01      	cmp	r3, #1
 8004f64:	4606      	mov	r6, r0
 8004f66:	460f      	mov	r7, r1
 8004f68:	f10b 0401 	add.w	r4, fp, #1
 8004f6c:	d053      	beq.n	8005016 <_dtoa_r+0x566>
 8004f6e:	2200      	movs	r2, #0
 8004f70:	4b0f      	ldr	r3, [pc, #60]	; (8004fb0 <_dtoa_r+0x500>)
 8004f72:	f7fb fde1 	bl	8000b38 <__aeabi_dmul>
 8004f76:	2200      	movs	r2, #0
 8004f78:	2300      	movs	r3, #0
 8004f7a:	4606      	mov	r6, r0
 8004f7c:	460f      	mov	r7, r1
 8004f7e:	f7fc f843 	bl	8001008 <__aeabi_dcmpeq>
 8004f82:	2800      	cmp	r0, #0
 8004f84:	f040 81ea 	bne.w	800535c <_dtoa_r+0x8ac>
 8004f88:	f8cd a000 	str.w	sl, [sp]
 8004f8c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004f90:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004f94:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004f98:	e017      	b.n	8004fca <_dtoa_r+0x51a>
 8004f9a:	bf00      	nop
 8004f9c:	080075b8 	.word	0x080075b8
 8004fa0:	08007590 	.word	0x08007590
 8004fa4:	3ff00000 	.word	0x3ff00000
 8004fa8:	401c0000 	.word	0x401c0000
 8004fac:	3fe00000 	.word	0x3fe00000
 8004fb0:	40240000 	.word	0x40240000
 8004fb4:	f7fb fdc0 	bl	8000b38 <__aeabi_dmul>
 8004fb8:	2200      	movs	r2, #0
 8004fba:	2300      	movs	r3, #0
 8004fbc:	4606      	mov	r6, r0
 8004fbe:	460f      	mov	r7, r1
 8004fc0:	f7fc f822 	bl	8001008 <__aeabi_dcmpeq>
 8004fc4:	2800      	cmp	r0, #0
 8004fc6:	f040 833d 	bne.w	8005644 <_dtoa_r+0xb94>
 8004fca:	464a      	mov	r2, r9
 8004fcc:	4653      	mov	r3, sl
 8004fce:	4630      	mov	r0, r6
 8004fd0:	4639      	mov	r1, r7
 8004fd2:	f7fb fedb 	bl	8000d8c <__aeabi_ddiv>
 8004fd6:	f7fc f85f 	bl	8001098 <__aeabi_d2iz>
 8004fda:	4605      	mov	r5, r0
 8004fdc:	f7fb fd42 	bl	8000a64 <__aeabi_i2d>
 8004fe0:	464a      	mov	r2, r9
 8004fe2:	4653      	mov	r3, sl
 8004fe4:	f7fb fda8 	bl	8000b38 <__aeabi_dmul>
 8004fe8:	4602      	mov	r2, r0
 8004fea:	460b      	mov	r3, r1
 8004fec:	4630      	mov	r0, r6
 8004fee:	4639      	mov	r1, r7
 8004ff0:	f7fb fbea 	bl	80007c8 <__aeabi_dsub>
 8004ff4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004ff8:	f804 cb01 	strb.w	ip, [r4], #1
 8004ffc:	eba4 0c0b 	sub.w	ip, r4, fp
 8005000:	45e0      	cmp	r8, ip
 8005002:	4606      	mov	r6, r0
 8005004:	460f      	mov	r7, r1
 8005006:	f04f 0200 	mov.w	r2, #0
 800500a:	4bc1      	ldr	r3, [pc, #772]	; (8005310 <_dtoa_r+0x860>)
 800500c:	d1d2      	bne.n	8004fb4 <_dtoa_r+0x504>
 800500e:	f8dd a000 	ldr.w	sl, [sp]
 8005012:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005016:	4632      	mov	r2, r6
 8005018:	463b      	mov	r3, r7
 800501a:	4630      	mov	r0, r6
 800501c:	4639      	mov	r1, r7
 800501e:	f7fb fbd5 	bl	80007cc <__adddf3>
 8005022:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005026:	4606      	mov	r6, r0
 8005028:	460f      	mov	r7, r1
 800502a:	f7fc f815 	bl	8001058 <__aeabi_dcmpgt>
 800502e:	b958      	cbnz	r0, 8005048 <_dtoa_r+0x598>
 8005030:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005034:	4630      	mov	r0, r6
 8005036:	4639      	mov	r1, r7
 8005038:	f7fb ffe6 	bl	8001008 <__aeabi_dcmpeq>
 800503c:	2800      	cmp	r0, #0
 800503e:	f000 818d 	beq.w	800535c <_dtoa_r+0x8ac>
 8005042:	07e9      	lsls	r1, r5, #31
 8005044:	f140 818a 	bpl.w	800535c <_dtoa_r+0x8ac>
 8005048:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800504c:	e005      	b.n	800505a <_dtoa_r+0x5aa>
 800504e:	459b      	cmp	fp, r3
 8005050:	f000 8373 	beq.w	800573a <_dtoa_r+0xc8a>
 8005054:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8005058:	461c      	mov	r4, r3
 800505a:	2d39      	cmp	r5, #57	; 0x39
 800505c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005060:	d0f5      	beq.n	800504e <_dtoa_r+0x59e>
 8005062:	3501      	adds	r5, #1
 8005064:	701d      	strb	r5, [r3, #0]
 8005066:	e179      	b.n	800535c <_dtoa_r+0x8ac>
 8005068:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800506a:	2a00      	cmp	r2, #0
 800506c:	d03b      	beq.n	80050e6 <_dtoa_r+0x636>
 800506e:	9a02      	ldr	r2, [sp, #8]
 8005070:	2a01      	cmp	r2, #1
 8005072:	f340 820b 	ble.w	800548c <_dtoa_r+0x9dc>
 8005076:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005078:	1e5f      	subs	r7, r3, #1
 800507a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800507c:	42bb      	cmp	r3, r7
 800507e:	f2c0 82e6 	blt.w	800564e <_dtoa_r+0xb9e>
 8005082:	1bdf      	subs	r7, r3, r7
 8005084:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005086:	2b00      	cmp	r3, #0
 8005088:	f2c0 830b 	blt.w	80056a2 <_dtoa_r+0xbf2>
 800508c:	9a08      	ldr	r2, [sp, #32]
 800508e:	4614      	mov	r4, r2
 8005090:	441a      	add	r2, r3
 8005092:	4498      	add	r8, r3
 8005094:	9208      	str	r2, [sp, #32]
 8005096:	2101      	movs	r1, #1
 8005098:	4648      	mov	r0, r9
 800509a:	f001 fa0f 	bl	80064bc <__i2b>
 800509e:	4605      	mov	r5, r0
 80050a0:	e024      	b.n	80050ec <_dtoa_r+0x63c>
 80050a2:	2301      	movs	r3, #1
 80050a4:	930d      	str	r3, [sp, #52]	; 0x34
 80050a6:	e5af      	b.n	8004c08 <_dtoa_r+0x158>
 80050a8:	9a08      	ldr	r2, [sp, #32]
 80050aa:	9b06      	ldr	r3, [sp, #24]
 80050ac:	1ad2      	subs	r2, r2, r3
 80050ae:	425b      	negs	r3, r3
 80050b0:	930b      	str	r3, [sp, #44]	; 0x2c
 80050b2:	2300      	movs	r3, #0
 80050b4:	9208      	str	r2, [sp, #32]
 80050b6:	930c      	str	r3, [sp, #48]	; 0x30
 80050b8:	e5b5      	b.n	8004c26 <_dtoa_r+0x176>
 80050ba:	f1c4 0301 	rsb	r3, r4, #1
 80050be:	9308      	str	r3, [sp, #32]
 80050c0:	f04f 0800 	mov.w	r8, #0
 80050c4:	e5a7      	b.n	8004c16 <_dtoa_r+0x166>
 80050c6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80050ca:	4640      	mov	r0, r8
 80050cc:	f7fb fcca 	bl	8000a64 <__aeabi_i2d>
 80050d0:	4632      	mov	r2, r6
 80050d2:	463b      	mov	r3, r7
 80050d4:	f7fb ff98 	bl	8001008 <__aeabi_dcmpeq>
 80050d8:	2800      	cmp	r0, #0
 80050da:	f47f ad81 	bne.w	8004be0 <_dtoa_r+0x130>
 80050de:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80050e2:	9306      	str	r3, [sp, #24]
 80050e4:	e57c      	b.n	8004be0 <_dtoa_r+0x130>
 80050e6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80050e8:	9c08      	ldr	r4, [sp, #32]
 80050ea:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80050ec:	2c00      	cmp	r4, #0
 80050ee:	dd0c      	ble.n	800510a <_dtoa_r+0x65a>
 80050f0:	f1b8 0f00 	cmp.w	r8, #0
 80050f4:	dd09      	ble.n	800510a <_dtoa_r+0x65a>
 80050f6:	4544      	cmp	r4, r8
 80050f8:	9a08      	ldr	r2, [sp, #32]
 80050fa:	4623      	mov	r3, r4
 80050fc:	bfa8      	it	ge
 80050fe:	4643      	movge	r3, r8
 8005100:	1ad2      	subs	r2, r2, r3
 8005102:	9208      	str	r2, [sp, #32]
 8005104:	1ae4      	subs	r4, r4, r3
 8005106:	eba8 0803 	sub.w	r8, r8, r3
 800510a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800510c:	b16b      	cbz	r3, 800512a <_dtoa_r+0x67a>
 800510e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005110:	2a00      	cmp	r2, #0
 8005112:	f000 8290 	beq.w	8005636 <_dtoa_r+0xb86>
 8005116:	1bde      	subs	r6, r3, r7
 8005118:	2f00      	cmp	r7, #0
 800511a:	f040 819b 	bne.w	8005454 <_dtoa_r+0x9a4>
 800511e:	4651      	mov	r1, sl
 8005120:	4632      	mov	r2, r6
 8005122:	4648      	mov	r0, r9
 8005124:	f001 fa7a 	bl	800661c <__pow5mult>
 8005128:	4682      	mov	sl, r0
 800512a:	2101      	movs	r1, #1
 800512c:	4648      	mov	r0, r9
 800512e:	f001 f9c5 	bl	80064bc <__i2b>
 8005132:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005134:	4606      	mov	r6, r0
 8005136:	2a00      	cmp	r2, #0
 8005138:	f040 8125 	bne.w	8005386 <_dtoa_r+0x8d6>
 800513c:	9b02      	ldr	r3, [sp, #8]
 800513e:	2b01      	cmp	r3, #1
 8005140:	f340 816c 	ble.w	800541c <_dtoa_r+0x96c>
 8005144:	2001      	movs	r0, #1
 8005146:	4440      	add	r0, r8
 8005148:	f010 001f 	ands.w	r0, r0, #31
 800514c:	f000 8119 	beq.w	8005382 <_dtoa_r+0x8d2>
 8005150:	f1c0 0320 	rsb	r3, r0, #32
 8005154:	2b04      	cmp	r3, #4
 8005156:	f340 83ac 	ble.w	80058b2 <_dtoa_r+0xe02>
 800515a:	f1c0 001c 	rsb	r0, r0, #28
 800515e:	9b08      	ldr	r3, [sp, #32]
 8005160:	4403      	add	r3, r0
 8005162:	9308      	str	r3, [sp, #32]
 8005164:	4404      	add	r4, r0
 8005166:	4480      	add	r8, r0
 8005168:	9b08      	ldr	r3, [sp, #32]
 800516a:	2b00      	cmp	r3, #0
 800516c:	dd05      	ble.n	800517a <_dtoa_r+0x6ca>
 800516e:	4651      	mov	r1, sl
 8005170:	461a      	mov	r2, r3
 8005172:	4648      	mov	r0, r9
 8005174:	f001 faa2 	bl	80066bc <__lshift>
 8005178:	4682      	mov	sl, r0
 800517a:	f1b8 0f00 	cmp.w	r8, #0
 800517e:	dd05      	ble.n	800518c <_dtoa_r+0x6dc>
 8005180:	4631      	mov	r1, r6
 8005182:	4642      	mov	r2, r8
 8005184:	4648      	mov	r0, r9
 8005186:	f001 fa99 	bl	80066bc <__lshift>
 800518a:	4606      	mov	r6, r0
 800518c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800518e:	2b00      	cmp	r3, #0
 8005190:	d177      	bne.n	8005282 <_dtoa_r+0x7d2>
 8005192:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005194:	2b00      	cmp	r3, #0
 8005196:	f340 8209 	ble.w	80055ac <_dtoa_r+0xafc>
 800519a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800519c:	2b00      	cmp	r3, #0
 800519e:	f000 8089 	beq.w	80052b4 <_dtoa_r+0x804>
 80051a2:	2c00      	cmp	r4, #0
 80051a4:	f300 816b 	bgt.w	800547e <_dtoa_r+0x9ce>
 80051a8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80051aa:	2b00      	cmp	r3, #0
 80051ac:	f040 81cd 	bne.w	800554a <_dtoa_r+0xa9a>
 80051b0:	46a8      	mov	r8, r5
 80051b2:	9a00      	ldr	r2, [sp, #0]
 80051b4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80051b8:	f002 0201 	and.w	r2, r2, #1
 80051bc:	920a      	str	r2, [sp, #40]	; 0x28
 80051be:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80051c0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80051c4:	441a      	add	r2, r3
 80051c6:	465f      	mov	r7, fp
 80051c8:	9209      	str	r2, [sp, #36]	; 0x24
 80051ca:	46b3      	mov	fp, r6
 80051cc:	4659      	mov	r1, fp
 80051ce:	4650      	mov	r0, sl
 80051d0:	f7ff fbdc 	bl	800498c <quorem>
 80051d4:	4629      	mov	r1, r5
 80051d6:	4604      	mov	r4, r0
 80051d8:	4650      	mov	r0, sl
 80051da:	f001 fac5 	bl	8006768 <__mcmp>
 80051de:	4659      	mov	r1, fp
 80051e0:	4606      	mov	r6, r0
 80051e2:	4642      	mov	r2, r8
 80051e4:	4648      	mov	r0, r9
 80051e6:	f001 fadb 	bl	80067a0 <__mdiff>
 80051ea:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80051ee:	9300      	str	r3, [sp, #0]
 80051f0:	68c3      	ldr	r3, [r0, #12]
 80051f2:	4601      	mov	r1, r0
 80051f4:	2b00      	cmp	r3, #0
 80051f6:	f040 81d4 	bne.w	80055a2 <_dtoa_r+0xaf2>
 80051fa:	9008      	str	r0, [sp, #32]
 80051fc:	4650      	mov	r0, sl
 80051fe:	f001 fab3 	bl	8006768 <__mcmp>
 8005202:	9a08      	ldr	r2, [sp, #32]
 8005204:	9007      	str	r0, [sp, #28]
 8005206:	4611      	mov	r1, r2
 8005208:	4648      	mov	r0, r9
 800520a:	f001 f8bd 	bl	8006388 <_Bfree>
 800520e:	9b07      	ldr	r3, [sp, #28]
 8005210:	b933      	cbnz	r3, 8005220 <_dtoa_r+0x770>
 8005212:	9a02      	ldr	r2, [sp, #8]
 8005214:	b922      	cbnz	r2, 8005220 <_dtoa_r+0x770>
 8005216:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005218:	2b00      	cmp	r3, #0
 800521a:	f000 8319 	beq.w	8005850 <_dtoa_r+0xda0>
 800521e:	9b02      	ldr	r3, [sp, #8]
 8005220:	2e00      	cmp	r6, #0
 8005222:	f2c0 821c 	blt.w	800565e <_dtoa_r+0xbae>
 8005226:	d105      	bne.n	8005234 <_dtoa_r+0x784>
 8005228:	9a02      	ldr	r2, [sp, #8]
 800522a:	b91a      	cbnz	r2, 8005234 <_dtoa_r+0x784>
 800522c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800522e:	2a00      	cmp	r2, #0
 8005230:	f000 8215 	beq.w	800565e <_dtoa_r+0xbae>
 8005234:	2b00      	cmp	r3, #0
 8005236:	f107 0401 	add.w	r4, r7, #1
 800523a:	f300 8225 	bgt.w	8005688 <_dtoa_r+0xbd8>
 800523e:	9b00      	ldr	r3, [sp, #0]
 8005240:	703b      	strb	r3, [r7, #0]
 8005242:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005244:	42bb      	cmp	r3, r7
 8005246:	f000 8230 	beq.w	80056aa <_dtoa_r+0xbfa>
 800524a:	4651      	mov	r1, sl
 800524c:	2300      	movs	r3, #0
 800524e:	220a      	movs	r2, #10
 8005250:	4648      	mov	r0, r9
 8005252:	f001 f8a3 	bl	800639c <__multadd>
 8005256:	4545      	cmp	r5, r8
 8005258:	4682      	mov	sl, r0
 800525a:	4629      	mov	r1, r5
 800525c:	f04f 0300 	mov.w	r3, #0
 8005260:	f04f 020a 	mov.w	r2, #10
 8005264:	4648      	mov	r0, r9
 8005266:	f000 8196 	beq.w	8005596 <_dtoa_r+0xae6>
 800526a:	f001 f897 	bl	800639c <__multadd>
 800526e:	4641      	mov	r1, r8
 8005270:	4605      	mov	r5, r0
 8005272:	2300      	movs	r3, #0
 8005274:	220a      	movs	r2, #10
 8005276:	4648      	mov	r0, r9
 8005278:	f001 f890 	bl	800639c <__multadd>
 800527c:	4627      	mov	r7, r4
 800527e:	4680      	mov	r8, r0
 8005280:	e7a4      	b.n	80051cc <_dtoa_r+0x71c>
 8005282:	4631      	mov	r1, r6
 8005284:	4650      	mov	r0, sl
 8005286:	f001 fa6f 	bl	8006768 <__mcmp>
 800528a:	2800      	cmp	r0, #0
 800528c:	da81      	bge.n	8005192 <_dtoa_r+0x6e2>
 800528e:	9f06      	ldr	r7, [sp, #24]
 8005290:	4651      	mov	r1, sl
 8005292:	2300      	movs	r3, #0
 8005294:	220a      	movs	r2, #10
 8005296:	4648      	mov	r0, r9
 8005298:	3f01      	subs	r7, #1
 800529a:	9706      	str	r7, [sp, #24]
 800529c:	f001 f87e 	bl	800639c <__multadd>
 80052a0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80052a2:	4682      	mov	sl, r0
 80052a4:	2b00      	cmp	r3, #0
 80052a6:	f040 82eb 	bne.w	8005880 <_dtoa_r+0xdd0>
 80052aa:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80052ac:	2b00      	cmp	r3, #0
 80052ae:	f340 82f3 	ble.w	8005898 <_dtoa_r+0xde8>
 80052b2:	9309      	str	r3, [sp, #36]	; 0x24
 80052b4:	465c      	mov	r4, fp
 80052b6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80052ba:	e002      	b.n	80052c2 <_dtoa_r+0x812>
 80052bc:	f001 f86e 	bl	800639c <__multadd>
 80052c0:	4682      	mov	sl, r0
 80052c2:	4631      	mov	r1, r6
 80052c4:	4650      	mov	r0, sl
 80052c6:	f7ff fb61 	bl	800498c <quorem>
 80052ca:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80052ce:	f804 7b01 	strb.w	r7, [r4], #1
 80052d2:	eba4 030b 	sub.w	r3, r4, fp
 80052d6:	4598      	cmp	r8, r3
 80052d8:	f04f 020a 	mov.w	r2, #10
 80052dc:	f04f 0300 	mov.w	r3, #0
 80052e0:	4651      	mov	r1, sl
 80052e2:	4648      	mov	r0, r9
 80052e4:	dcea      	bgt.n	80052bc <_dtoa_r+0x80c>
 80052e6:	2300      	movs	r3, #0
 80052e8:	9700      	str	r7, [sp, #0]
 80052ea:	9302      	str	r3, [sp, #8]
 80052ec:	4651      	mov	r1, sl
 80052ee:	2201      	movs	r2, #1
 80052f0:	4648      	mov	r0, r9
 80052f2:	f001 f9e3 	bl	80066bc <__lshift>
 80052f6:	4631      	mov	r1, r6
 80052f8:	4682      	mov	sl, r0
 80052fa:	f001 fa35 	bl	8006768 <__mcmp>
 80052fe:	2800      	cmp	r0, #0
 8005300:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8005304:	dc14      	bgt.n	8005330 <_dtoa_r+0x880>
 8005306:	d108      	bne.n	800531a <_dtoa_r+0x86a>
 8005308:	9b00      	ldr	r3, [sp, #0]
 800530a:	07db      	lsls	r3, r3, #31
 800530c:	d410      	bmi.n	8005330 <_dtoa_r+0x880>
 800530e:	e004      	b.n	800531a <_dtoa_r+0x86a>
 8005310:	40240000 	.word	0x40240000
 8005314:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8005318:	461c      	mov	r4, r3
 800531a:	2a30      	cmp	r2, #48	; 0x30
 800531c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005320:	d0f8      	beq.n	8005314 <_dtoa_r+0x864>
 8005322:	e00b      	b.n	800533c <_dtoa_r+0x88c>
 8005324:	459b      	cmp	fp, r3
 8005326:	f000 814e 	beq.w	80055c6 <_dtoa_r+0xb16>
 800532a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800532e:	461c      	mov	r4, r3
 8005330:	2a39      	cmp	r2, #57	; 0x39
 8005332:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005336:	d0f5      	beq.n	8005324 <_dtoa_r+0x874>
 8005338:	3201      	adds	r2, #1
 800533a:	701a      	strb	r2, [r3, #0]
 800533c:	4631      	mov	r1, r6
 800533e:	4648      	mov	r0, r9
 8005340:	f001 f822 	bl	8006388 <_Bfree>
 8005344:	b155      	cbz	r5, 800535c <_dtoa_r+0x8ac>
 8005346:	9902      	ldr	r1, [sp, #8]
 8005348:	b121      	cbz	r1, 8005354 <_dtoa_r+0x8a4>
 800534a:	42a9      	cmp	r1, r5
 800534c:	d002      	beq.n	8005354 <_dtoa_r+0x8a4>
 800534e:	4648      	mov	r0, r9
 8005350:	f001 f81a 	bl	8006388 <_Bfree>
 8005354:	4629      	mov	r1, r5
 8005356:	4648      	mov	r0, r9
 8005358:	f001 f816 	bl	8006388 <_Bfree>
 800535c:	4651      	mov	r1, sl
 800535e:	4648      	mov	r0, r9
 8005360:	f001 f812 	bl	8006388 <_Bfree>
 8005364:	2200      	movs	r2, #0
 8005366:	9b06      	ldr	r3, [sp, #24]
 8005368:	7022      	strb	r2, [r4, #0]
 800536a:	9a05      	ldr	r2, [sp, #20]
 800536c:	3301      	adds	r3, #1
 800536e:	6013      	str	r3, [r2, #0]
 8005370:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005372:	2b00      	cmp	r3, #0
 8005374:	f43f abdb 	beq.w	8004b2e <_dtoa_r+0x7e>
 8005378:	4658      	mov	r0, fp
 800537a:	601c      	str	r4, [r3, #0]
 800537c:	b01b      	add	sp, #108	; 0x6c
 800537e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005382:	201c      	movs	r0, #28
 8005384:	e6eb      	b.n	800515e <_dtoa_r+0x6ae>
 8005386:	4601      	mov	r1, r0
 8005388:	4648      	mov	r0, r9
 800538a:	f001 f947 	bl	800661c <__pow5mult>
 800538e:	9b02      	ldr	r3, [sp, #8]
 8005390:	2b01      	cmp	r3, #1
 8005392:	4606      	mov	r6, r0
 8005394:	f340 80d4 	ble.w	8005540 <_dtoa_r+0xa90>
 8005398:	2300      	movs	r3, #0
 800539a:	930c      	str	r3, [sp, #48]	; 0x30
 800539c:	6933      	ldr	r3, [r6, #16]
 800539e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80053a2:	6918      	ldr	r0, [r3, #16]
 80053a4:	f001 f83a 	bl	800641c <__hi0bits>
 80053a8:	f1c0 0020 	rsb	r0, r0, #32
 80053ac:	e6cb      	b.n	8005146 <_dtoa_r+0x696>
 80053ae:	900d      	str	r0, [sp, #52]	; 0x34
 80053b0:	e42a      	b.n	8004c08 <_dtoa_r+0x158>
 80053b2:	2501      	movs	r5, #1
 80053b4:	e440      	b.n	8004c38 <_dtoa_r+0x188>
 80053b6:	f1c3 0820 	rsb	r8, r3, #32
 80053ba:	9b00      	ldr	r3, [sp, #0]
 80053bc:	fa03 f008 	lsl.w	r0, r3, r8
 80053c0:	f7ff bbd8 	b.w	8004b74 <_dtoa_r+0xc4>
 80053c4:	2300      	movs	r3, #0
 80053c6:	930a      	str	r3, [sp, #40]	; 0x28
 80053c8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80053cc:	4413      	add	r3, r2
 80053ce:	930e      	str	r3, [sp, #56]	; 0x38
 80053d0:	3301      	adds	r3, #1
 80053d2:	2b01      	cmp	r3, #1
 80053d4:	461e      	mov	r6, r3
 80053d6:	9309      	str	r3, [sp, #36]	; 0x24
 80053d8:	bfb8      	it	lt
 80053da:	2601      	movlt	r6, #1
 80053dc:	2100      	movs	r1, #0
 80053de:	2e17      	cmp	r6, #23
 80053e0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80053e4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80053e6:	f77f ac89 	ble.w	8004cfc <_dtoa_r+0x24c>
 80053ea:	2201      	movs	r2, #1
 80053ec:	2304      	movs	r3, #4
 80053ee:	005b      	lsls	r3, r3, #1
 80053f0:	f103 0014 	add.w	r0, r3, #20
 80053f4:	42b0      	cmp	r0, r6
 80053f6:	4611      	mov	r1, r2
 80053f8:	f102 0201 	add.w	r2, r2, #1
 80053fc:	d9f7      	bls.n	80053ee <_dtoa_r+0x93e>
 80053fe:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8005402:	e47b      	b.n	8004cfc <_dtoa_r+0x24c>
 8005404:	2300      	movs	r3, #0
 8005406:	930a      	str	r3, [sp, #40]	; 0x28
 8005408:	9e07      	ldr	r6, [sp, #28]
 800540a:	2e00      	cmp	r6, #0
 800540c:	f340 80e2 	ble.w	80055d4 <_dtoa_r+0xb24>
 8005410:	960e      	str	r6, [sp, #56]	; 0x38
 8005412:	9609      	str	r6, [sp, #36]	; 0x24
 8005414:	e7e2      	b.n	80053dc <_dtoa_r+0x92c>
 8005416:	2301      	movs	r3, #1
 8005418:	930a      	str	r3, [sp, #40]	; 0x28
 800541a:	e7f5      	b.n	8005408 <_dtoa_r+0x958>
 800541c:	9b00      	ldr	r3, [sp, #0]
 800541e:	2b00      	cmp	r3, #0
 8005420:	f47f ae90 	bne.w	8005144 <_dtoa_r+0x694>
 8005424:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005428:	f3c2 0313 	ubfx	r3, r2, #0, #20
 800542c:	2b00      	cmp	r3, #0
 800542e:	f040 8192 	bne.w	8005756 <_dtoa_r+0xca6>
 8005432:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8005436:	0d1b      	lsrs	r3, r3, #20
 8005438:	051b      	lsls	r3, r3, #20
 800543a:	b12b      	cbz	r3, 8005448 <_dtoa_r+0x998>
 800543c:	9b08      	ldr	r3, [sp, #32]
 800543e:	3301      	adds	r3, #1
 8005440:	9308      	str	r3, [sp, #32]
 8005442:	f108 0801 	add.w	r8, r8, #1
 8005446:	2301      	movs	r3, #1
 8005448:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800544a:	930c      	str	r3, [sp, #48]	; 0x30
 800544c:	2a00      	cmp	r2, #0
 800544e:	f43f ae79 	beq.w	8005144 <_dtoa_r+0x694>
 8005452:	e7a3      	b.n	800539c <_dtoa_r+0x8ec>
 8005454:	463a      	mov	r2, r7
 8005456:	4629      	mov	r1, r5
 8005458:	4648      	mov	r0, r9
 800545a:	f001 f8df 	bl	800661c <__pow5mult>
 800545e:	4652      	mov	r2, sl
 8005460:	4601      	mov	r1, r0
 8005462:	4605      	mov	r5, r0
 8005464:	4648      	mov	r0, r9
 8005466:	f001 f833 	bl	80064d0 <__multiply>
 800546a:	4651      	mov	r1, sl
 800546c:	4607      	mov	r7, r0
 800546e:	4648      	mov	r0, r9
 8005470:	f000 ff8a 	bl	8006388 <_Bfree>
 8005474:	46ba      	mov	sl, r7
 8005476:	2e00      	cmp	r6, #0
 8005478:	f43f ae57 	beq.w	800512a <_dtoa_r+0x67a>
 800547c:	e64f      	b.n	800511e <_dtoa_r+0x66e>
 800547e:	4629      	mov	r1, r5
 8005480:	4622      	mov	r2, r4
 8005482:	4648      	mov	r0, r9
 8005484:	f001 f91a 	bl	80066bc <__lshift>
 8005488:	4605      	mov	r5, r0
 800548a:	e68d      	b.n	80051a8 <_dtoa_r+0x6f8>
 800548c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800548e:	2a00      	cmp	r2, #0
 8005490:	f000 815d 	beq.w	800574e <_dtoa_r+0xc9e>
 8005494:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005498:	9a08      	ldr	r2, [sp, #32]
 800549a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 800549c:	4614      	mov	r4, r2
 800549e:	441a      	add	r2, r3
 80054a0:	4498      	add	r8, r3
 80054a2:	9208      	str	r2, [sp, #32]
 80054a4:	e5f7      	b.n	8005096 <_dtoa_r+0x5e6>
 80054a6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80054a8:	2b00      	cmp	r3, #0
 80054aa:	f73f ad3e 	bgt.w	8004f2a <_dtoa_r+0x47a>
 80054ae:	f040 80bc 	bne.w	800562a <_dtoa_r+0xb7a>
 80054b2:	ec51 0b17 	vmov	r0, r1, d7
 80054b6:	2200      	movs	r2, #0
 80054b8:	4bb2      	ldr	r3, [pc, #712]	; (8005784 <_dtoa_r+0xcd4>)
 80054ba:	f7fb fb3d 	bl	8000b38 <__aeabi_dmul>
 80054be:	e9dd 2300 	ldrd	r2, r3, [sp]
 80054c2:	f7fb fdbf 	bl	8001044 <__aeabi_dcmpge>
 80054c6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80054c8:	4635      	mov	r5, r6
 80054ca:	2800      	cmp	r0, #0
 80054cc:	d176      	bne.n	80055bc <_dtoa_r+0xb0c>
 80054ce:	9a06      	ldr	r2, [sp, #24]
 80054d0:	2331      	movs	r3, #49	; 0x31
 80054d2:	3201      	adds	r2, #1
 80054d4:	9206      	str	r2, [sp, #24]
 80054d6:	f88b 3000 	strb.w	r3, [fp]
 80054da:	f10b 0401 	add.w	r4, fp, #1
 80054de:	4631      	mov	r1, r6
 80054e0:	4648      	mov	r0, r9
 80054e2:	f000 ff51 	bl	8006388 <_Bfree>
 80054e6:	2d00      	cmp	r5, #0
 80054e8:	f47f af34 	bne.w	8005354 <_dtoa_r+0x8a4>
 80054ec:	e736      	b.n	800535c <_dtoa_r+0x8ac>
 80054ee:	f000 8142 	beq.w	8005776 <_dtoa_r+0xcc6>
 80054f2:	9b06      	ldr	r3, [sp, #24]
 80054f4:	425c      	negs	r4, r3
 80054f6:	4ba4      	ldr	r3, [pc, #656]	; (8005788 <_dtoa_r+0xcd8>)
 80054f8:	f004 020f 	and.w	r2, r4, #15
 80054fc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005500:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005504:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005508:	f7fb fb16 	bl	8000b38 <__aeabi_dmul>
 800550c:	1124      	asrs	r4, r4, #4
 800550e:	e9cd 0100 	strd	r0, r1, [sp]
 8005512:	f000 81c6 	beq.w	80058a2 <_dtoa_r+0xdf2>
 8005516:	4d9d      	ldr	r5, [pc, #628]	; (800578c <_dtoa_r+0xcdc>)
 8005518:	2300      	movs	r3, #0
 800551a:	2602      	movs	r6, #2
 800551c:	07e7      	lsls	r7, r4, #31
 800551e:	d505      	bpl.n	800552c <_dtoa_r+0xa7c>
 8005520:	e9d5 2300 	ldrd	r2, r3, [r5]
 8005524:	f7fb fb08 	bl	8000b38 <__aeabi_dmul>
 8005528:	3601      	adds	r6, #1
 800552a:	2301      	movs	r3, #1
 800552c:	1064      	asrs	r4, r4, #1
 800552e:	f105 0508 	add.w	r5, r5, #8
 8005532:	d1f3      	bne.n	800551c <_dtoa_r+0xa6c>
 8005534:	2b00      	cmp	r3, #0
 8005536:	f43f ac27 	beq.w	8004d88 <_dtoa_r+0x2d8>
 800553a:	e9cd 0100 	strd	r0, r1, [sp]
 800553e:	e423      	b.n	8004d88 <_dtoa_r+0x2d8>
 8005540:	9b00      	ldr	r3, [sp, #0]
 8005542:	2b00      	cmp	r3, #0
 8005544:	f43f af6e 	beq.w	8005424 <_dtoa_r+0x974>
 8005548:	e726      	b.n	8005398 <_dtoa_r+0x8e8>
 800554a:	6869      	ldr	r1, [r5, #4]
 800554c:	4648      	mov	r0, r9
 800554e:	f000 fef5 	bl	800633c <_Balloc>
 8005552:	692b      	ldr	r3, [r5, #16]
 8005554:	3302      	adds	r3, #2
 8005556:	009a      	lsls	r2, r3, #2
 8005558:	4604      	mov	r4, r0
 800555a:	f105 010c 	add.w	r1, r5, #12
 800555e:	300c      	adds	r0, #12
 8005560:	f7fa ffce 	bl	8000500 <memcpy>
 8005564:	4621      	mov	r1, r4
 8005566:	2201      	movs	r2, #1
 8005568:	4648      	mov	r0, r9
 800556a:	f001 f8a7 	bl	80066bc <__lshift>
 800556e:	4680      	mov	r8, r0
 8005570:	e61f      	b.n	80051b2 <_dtoa_r+0x702>
 8005572:	2400      	movs	r4, #0
 8005574:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005578:	4621      	mov	r1, r4
 800557a:	4648      	mov	r0, r9
 800557c:	f000 fede 	bl	800633c <_Balloc>
 8005580:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005584:	930e      	str	r3, [sp, #56]	; 0x38
 8005586:	9309      	str	r3, [sp, #36]	; 0x24
 8005588:	2301      	movs	r3, #1
 800558a:	4683      	mov	fp, r0
 800558c:	9407      	str	r4, [sp, #28]
 800558e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005592:	930a      	str	r3, [sp, #40]	; 0x28
 8005594:	e4b6      	b.n	8004f04 <_dtoa_r+0x454>
 8005596:	f000 ff01 	bl	800639c <__multadd>
 800559a:	4627      	mov	r7, r4
 800559c:	4605      	mov	r5, r0
 800559e:	4680      	mov	r8, r0
 80055a0:	e614      	b.n	80051cc <_dtoa_r+0x71c>
 80055a2:	4648      	mov	r0, r9
 80055a4:	f000 fef0 	bl	8006388 <_Bfree>
 80055a8:	2301      	movs	r3, #1
 80055aa:	e639      	b.n	8005220 <_dtoa_r+0x770>
 80055ac:	9b02      	ldr	r3, [sp, #8]
 80055ae:	2b02      	cmp	r3, #2
 80055b0:	f77f adf3 	ble.w	800519a <_dtoa_r+0x6ea>
 80055b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80055b6:	2b00      	cmp	r3, #0
 80055b8:	f000 80cf 	beq.w	800575a <_dtoa_r+0xcaa>
 80055bc:	9b07      	ldr	r3, [sp, #28]
 80055be:	43db      	mvns	r3, r3
 80055c0:	9306      	str	r3, [sp, #24]
 80055c2:	465c      	mov	r4, fp
 80055c4:	e78b      	b.n	80054de <_dtoa_r+0xa2e>
 80055c6:	9a06      	ldr	r2, [sp, #24]
 80055c8:	2331      	movs	r3, #49	; 0x31
 80055ca:	3201      	adds	r2, #1
 80055cc:	9206      	str	r2, [sp, #24]
 80055ce:	f88b 3000 	strb.w	r3, [fp]
 80055d2:	e6b3      	b.n	800533c <_dtoa_r+0x88c>
 80055d4:	2401      	movs	r4, #1
 80055d6:	9409      	str	r4, [sp, #36]	; 0x24
 80055d8:	9407      	str	r4, [sp, #28]
 80055da:	f7ff bb8b 	b.w	8004cf4 <_dtoa_r+0x244>
 80055de:	4630      	mov	r0, r6
 80055e0:	f7fb fa40 	bl	8000a64 <__aeabi_i2d>
 80055e4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80055e8:	f7fb faa6 	bl	8000b38 <__aeabi_dmul>
 80055ec:	2200      	movs	r2, #0
 80055ee:	4b68      	ldr	r3, [pc, #416]	; (8005790 <_dtoa_r+0xce0>)
 80055f0:	f7fb f8ec 	bl	80007cc <__adddf3>
 80055f4:	4606      	mov	r6, r0
 80055f6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80055fa:	2200      	movs	r2, #0
 80055fc:	4b61      	ldr	r3, [pc, #388]	; (8005784 <_dtoa_r+0xcd4>)
 80055fe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005602:	f7fb f8e1 	bl	80007c8 <__aeabi_dsub>
 8005606:	4632      	mov	r2, r6
 8005608:	463b      	mov	r3, r7
 800560a:	4604      	mov	r4, r0
 800560c:	460d      	mov	r5, r1
 800560e:	f7fb fd23 	bl	8001058 <__aeabi_dcmpgt>
 8005612:	2800      	cmp	r0, #0
 8005614:	d14f      	bne.n	80056b6 <_dtoa_r+0xc06>
 8005616:	4632      	mov	r2, r6
 8005618:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 800561c:	4620      	mov	r0, r4
 800561e:	4629      	mov	r1, r5
 8005620:	f7fb fcfc 	bl	800101c <__aeabi_dcmplt>
 8005624:	2800      	cmp	r0, #0
 8005626:	f43f ac69 	beq.w	8004efc <_dtoa_r+0x44c>
 800562a:	2600      	movs	r6, #0
 800562c:	4635      	mov	r5, r6
 800562e:	e7c5      	b.n	80055bc <_dtoa_r+0xb0c>
 8005630:	2301      	movs	r3, #1
 8005632:	930a      	str	r3, [sp, #40]	; 0x28
 8005634:	e6c8      	b.n	80053c8 <_dtoa_r+0x918>
 8005636:	4651      	mov	r1, sl
 8005638:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800563a:	4648      	mov	r0, r9
 800563c:	f000 ffee 	bl	800661c <__pow5mult>
 8005640:	4682      	mov	sl, r0
 8005642:	e572      	b.n	800512a <_dtoa_r+0x67a>
 8005644:	f8dd a000 	ldr.w	sl, [sp]
 8005648:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800564c:	e686      	b.n	800535c <_dtoa_r+0x8ac>
 800564e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005650:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005652:	1afb      	subs	r3, r7, r3
 8005654:	441a      	add	r2, r3
 8005656:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800565a:	2700      	movs	r7, #0
 800565c:	e512      	b.n	8005084 <_dtoa_r+0x5d4>
 800565e:	2b00      	cmp	r3, #0
 8005660:	9402      	str	r4, [sp, #8]
 8005662:	465e      	mov	r6, fp
 8005664:	f107 0401 	add.w	r4, r7, #1
 8005668:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800566c:	f300 80ba 	bgt.w	80057e4 <_dtoa_r+0xd34>
 8005670:	9b00      	ldr	r3, [sp, #0]
 8005672:	9502      	str	r5, [sp, #8]
 8005674:	703b      	strb	r3, [r7, #0]
 8005676:	4645      	mov	r5, r8
 8005678:	e660      	b.n	800533c <_dtoa_r+0x88c>
 800567a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800567e:	2602      	movs	r6, #2
 8005680:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005684:	f7ff bb67 	b.w	8004d56 <_dtoa_r+0x2a6>
 8005688:	9b00      	ldr	r3, [sp, #0]
 800568a:	2b39      	cmp	r3, #57	; 0x39
 800568c:	465e      	mov	r6, fp
 800568e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005692:	f000 80b9 	beq.w	8005808 <_dtoa_r+0xd58>
 8005696:	9b00      	ldr	r3, [sp, #0]
 8005698:	9502      	str	r5, [sp, #8]
 800569a:	3301      	adds	r3, #1
 800569c:	703b      	strb	r3, [r7, #0]
 800569e:	4645      	mov	r5, r8
 80056a0:	e64c      	b.n	800533c <_dtoa_r+0x88c>
 80056a2:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 80056a6:	1a9c      	subs	r4, r3, r2
 80056a8:	e4f5      	b.n	8005096 <_dtoa_r+0x5e6>
 80056aa:	465e      	mov	r6, fp
 80056ac:	9502      	str	r5, [sp, #8]
 80056ae:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80056b2:	4645      	mov	r5, r8
 80056b4:	e61a      	b.n	80052ec <_dtoa_r+0x83c>
 80056b6:	2600      	movs	r6, #0
 80056b8:	4635      	mov	r5, r6
 80056ba:	e708      	b.n	80054ce <_dtoa_r+0xa1e>
 80056bc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80056c0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80056c4:	f7fb fa38 	bl	8000b38 <__aeabi_dmul>
 80056c8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80056ca:	f88b 5000 	strb.w	r5, [fp]
 80056ce:	2b01      	cmp	r3, #1
 80056d0:	e9cd 0100 	strd	r0, r1, [sp]
 80056d4:	d020      	beq.n	8005718 <_dtoa_r+0xc68>
 80056d6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80056d8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80056dc:	445b      	add	r3, fp
 80056de:	4698      	mov	r8, r3
 80056e0:	2200      	movs	r2, #0
 80056e2:	4b2c      	ldr	r3, [pc, #176]	; (8005794 <_dtoa_r+0xce4>)
 80056e4:	4630      	mov	r0, r6
 80056e6:	4639      	mov	r1, r7
 80056e8:	f7fb fa26 	bl	8000b38 <__aeabi_dmul>
 80056ec:	460f      	mov	r7, r1
 80056ee:	4606      	mov	r6, r0
 80056f0:	f7fb fcd2 	bl	8001098 <__aeabi_d2iz>
 80056f4:	4605      	mov	r5, r0
 80056f6:	f7fb f9b5 	bl	8000a64 <__aeabi_i2d>
 80056fa:	3530      	adds	r5, #48	; 0x30
 80056fc:	4602      	mov	r2, r0
 80056fe:	460b      	mov	r3, r1
 8005700:	4630      	mov	r0, r6
 8005702:	4639      	mov	r1, r7
 8005704:	f7fb f860 	bl	80007c8 <__aeabi_dsub>
 8005708:	f804 5b01 	strb.w	r5, [r4], #1
 800570c:	4544      	cmp	r4, r8
 800570e:	4606      	mov	r6, r0
 8005710:	460f      	mov	r7, r1
 8005712:	d1e5      	bne.n	80056e0 <_dtoa_r+0xc30>
 8005714:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005718:	4b1f      	ldr	r3, [pc, #124]	; (8005798 <_dtoa_r+0xce8>)
 800571a:	2200      	movs	r2, #0
 800571c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005720:	f7fb f854 	bl	80007cc <__adddf3>
 8005724:	4632      	mov	r2, r6
 8005726:	463b      	mov	r3, r7
 8005728:	f7fb fc78 	bl	800101c <__aeabi_dcmplt>
 800572c:	2800      	cmp	r0, #0
 800572e:	d070      	beq.n	8005812 <_dtoa_r+0xd62>
 8005730:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005732:	9306      	str	r3, [sp, #24]
 8005734:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005738:	e48f      	b.n	800505a <_dtoa_r+0x5aa>
 800573a:	2330      	movs	r3, #48	; 0x30
 800573c:	f88b 3000 	strb.w	r3, [fp]
 8005740:	9b06      	ldr	r3, [sp, #24]
 8005742:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005746:	3301      	adds	r3, #1
 8005748:	9306      	str	r3, [sp, #24]
 800574a:	465b      	mov	r3, fp
 800574c:	e489      	b.n	8005062 <_dtoa_r+0x5b2>
 800574e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005750:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005754:	e6a0      	b.n	8005498 <_dtoa_r+0x9e8>
 8005756:	2300      	movs	r3, #0
 8005758:	e676      	b.n	8005448 <_dtoa_r+0x998>
 800575a:	4631      	mov	r1, r6
 800575c:	2205      	movs	r2, #5
 800575e:	4648      	mov	r0, r9
 8005760:	f000 fe1c 	bl	800639c <__multadd>
 8005764:	4601      	mov	r1, r0
 8005766:	4606      	mov	r6, r0
 8005768:	4650      	mov	r0, sl
 800576a:	f000 fffd 	bl	8006768 <__mcmp>
 800576e:	2800      	cmp	r0, #0
 8005770:	f73f aead 	bgt.w	80054ce <_dtoa_r+0xa1e>
 8005774:	e722      	b.n	80055bc <_dtoa_r+0xb0c>
 8005776:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800577a:	2602      	movs	r6, #2
 800577c:	ed8d 7b00 	vstr	d7, [sp]
 8005780:	f7ff bb02 	b.w	8004d88 <_dtoa_r+0x2d8>
 8005784:	40140000 	.word	0x40140000
 8005788:	080075b8 	.word	0x080075b8
 800578c:	08007590 	.word	0x08007590
 8005790:	401c0000 	.word	0x401c0000
 8005794:	40240000 	.word	0x40240000
 8005798:	3fe00000 	.word	0x3fe00000
 800579c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800579e:	2b00      	cmp	r3, #0
 80057a0:	f43f af1d 	beq.w	80055de <_dtoa_r+0xb2e>
 80057a4:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 80057a6:	2c00      	cmp	r4, #0
 80057a8:	f77f aba8 	ble.w	8004efc <_dtoa_r+0x44c>
 80057ac:	2200      	movs	r2, #0
 80057ae:	4b45      	ldr	r3, [pc, #276]	; (80058c4 <_dtoa_r+0xe14>)
 80057b0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80057b4:	f7fb f9c0 	bl	8000b38 <__aeabi_dmul>
 80057b8:	e9cd 0100 	strd	r0, r1, [sp]
 80057bc:	1c70      	adds	r0, r6, #1
 80057be:	f7fb f951 	bl	8000a64 <__aeabi_i2d>
 80057c2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80057c6:	f7fb f9b7 	bl	8000b38 <__aeabi_dmul>
 80057ca:	4b3f      	ldr	r3, [pc, #252]	; (80058c8 <_dtoa_r+0xe18>)
 80057cc:	2200      	movs	r2, #0
 80057ce:	f7fa fffd 	bl	80007cc <__adddf3>
 80057d2:	9b06      	ldr	r3, [sp, #24]
 80057d4:	9412      	str	r4, [sp, #72]	; 0x48
 80057d6:	3b01      	subs	r3, #1
 80057d8:	4606      	mov	r6, r0
 80057da:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80057de:	9316      	str	r3, [sp, #88]	; 0x58
 80057e0:	f7ff baf3 	b.w	8004dca <_dtoa_r+0x31a>
 80057e4:	4651      	mov	r1, sl
 80057e6:	2201      	movs	r2, #1
 80057e8:	4648      	mov	r0, r9
 80057ea:	f000 ff67 	bl	80066bc <__lshift>
 80057ee:	4631      	mov	r1, r6
 80057f0:	4682      	mov	sl, r0
 80057f2:	f000 ffb9 	bl	8006768 <__mcmp>
 80057f6:	2800      	cmp	r0, #0
 80057f8:	dd3b      	ble.n	8005872 <_dtoa_r+0xdc2>
 80057fa:	9b00      	ldr	r3, [sp, #0]
 80057fc:	2b39      	cmp	r3, #57	; 0x39
 80057fe:	d003      	beq.n	8005808 <_dtoa_r+0xd58>
 8005800:	9b02      	ldr	r3, [sp, #8]
 8005802:	3331      	adds	r3, #49	; 0x31
 8005804:	9300      	str	r3, [sp, #0]
 8005806:	e733      	b.n	8005670 <_dtoa_r+0xbc0>
 8005808:	2239      	movs	r2, #57	; 0x39
 800580a:	9502      	str	r5, [sp, #8]
 800580c:	703a      	strb	r2, [r7, #0]
 800580e:	4645      	mov	r5, r8
 8005810:	e58e      	b.n	8005330 <_dtoa_r+0x880>
 8005812:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005816:	2000      	movs	r0, #0
 8005818:	492c      	ldr	r1, [pc, #176]	; (80058cc <_dtoa_r+0xe1c>)
 800581a:	f7fa ffd5 	bl	80007c8 <__aeabi_dsub>
 800581e:	4632      	mov	r2, r6
 8005820:	463b      	mov	r3, r7
 8005822:	f7fb fc19 	bl	8001058 <__aeabi_dcmpgt>
 8005826:	b910      	cbnz	r0, 800582e <_dtoa_r+0xd7e>
 8005828:	f7ff bb68 	b.w	8004efc <_dtoa_r+0x44c>
 800582c:	4614      	mov	r4, r2
 800582e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8005832:	2b30      	cmp	r3, #48	; 0x30
 8005834:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005838:	d0f8      	beq.n	800582c <_dtoa_r+0xd7c>
 800583a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800583c:	9306      	str	r3, [sp, #24]
 800583e:	e58d      	b.n	800535c <_dtoa_r+0x8ac>
 8005840:	46d9      	mov	r9, fp
 8005842:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005846:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800584a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800584c:	9306      	str	r3, [sp, #24]
 800584e:	e404      	b.n	800505a <_dtoa_r+0x5aa>
 8005850:	9b00      	ldr	r3, [sp, #0]
 8005852:	2b39      	cmp	r3, #57	; 0x39
 8005854:	4621      	mov	r1, r4
 8005856:	4632      	mov	r2, r6
 8005858:	f107 0401 	add.w	r4, r7, #1
 800585c:	465e      	mov	r6, fp
 800585e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005862:	d0d1      	beq.n	8005808 <_dtoa_r+0xd58>
 8005864:	2a00      	cmp	r2, #0
 8005866:	f77f af03 	ble.w	8005670 <_dtoa_r+0xbc0>
 800586a:	460b      	mov	r3, r1
 800586c:	3331      	adds	r3, #49	; 0x31
 800586e:	9300      	str	r3, [sp, #0]
 8005870:	e6fe      	b.n	8005670 <_dtoa_r+0xbc0>
 8005872:	f47f aefd 	bne.w	8005670 <_dtoa_r+0xbc0>
 8005876:	9b00      	ldr	r3, [sp, #0]
 8005878:	07da      	lsls	r2, r3, #31
 800587a:	f57f aef9 	bpl.w	8005670 <_dtoa_r+0xbc0>
 800587e:	e7bc      	b.n	80057fa <_dtoa_r+0xd4a>
 8005880:	4629      	mov	r1, r5
 8005882:	2300      	movs	r3, #0
 8005884:	220a      	movs	r2, #10
 8005886:	4648      	mov	r0, r9
 8005888:	f000 fd88 	bl	800639c <__multadd>
 800588c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800588e:	2b00      	cmp	r3, #0
 8005890:	4605      	mov	r5, r0
 8005892:	dd09      	ble.n	80058a8 <_dtoa_r+0xdf8>
 8005894:	9309      	str	r3, [sp, #36]	; 0x24
 8005896:	e484      	b.n	80051a2 <_dtoa_r+0x6f2>
 8005898:	9b02      	ldr	r3, [sp, #8]
 800589a:	2b02      	cmp	r3, #2
 800589c:	dc0e      	bgt.n	80058bc <_dtoa_r+0xe0c>
 800589e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80058a0:	e507      	b.n	80052b2 <_dtoa_r+0x802>
 80058a2:	2602      	movs	r6, #2
 80058a4:	f7ff ba70 	b.w	8004d88 <_dtoa_r+0x2d8>
 80058a8:	9b02      	ldr	r3, [sp, #8]
 80058aa:	2b02      	cmp	r3, #2
 80058ac:	dc06      	bgt.n	80058bc <_dtoa_r+0xe0c>
 80058ae:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80058b0:	e7f0      	b.n	8005894 <_dtoa_r+0xde4>
 80058b2:	f43f ac59 	beq.w	8005168 <_dtoa_r+0x6b8>
 80058b6:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80058ba:	e450      	b.n	800515e <_dtoa_r+0x6ae>
 80058bc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80058be:	9309      	str	r3, [sp, #36]	; 0x24
 80058c0:	e678      	b.n	80055b4 <_dtoa_r+0xb04>
 80058c2:	bf00      	nop
 80058c4:	40240000 	.word	0x40240000
 80058c8:	401c0000 	.word	0x401c0000
 80058cc:	3fe00000 	.word	0x3fe00000

080058d0 <__sflush_r>:
 80058d0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80058d4:	b29a      	uxth	r2, r3
 80058d6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80058da:	460c      	mov	r4, r1
 80058dc:	0711      	lsls	r1, r2, #28
 80058de:	4680      	mov	r8, r0
 80058e0:	d444      	bmi.n	800596c <__sflush_r+0x9c>
 80058e2:	6862      	ldr	r2, [r4, #4]
 80058e4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80058e8:	2a00      	cmp	r2, #0
 80058ea:	81a3      	strh	r3, [r4, #12]
 80058ec:	dd59      	ble.n	80059a2 <__sflush_r+0xd2>
 80058ee:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80058f0:	2d00      	cmp	r5, #0
 80058f2:	d053      	beq.n	800599c <__sflush_r+0xcc>
 80058f4:	2200      	movs	r2, #0
 80058f6:	b29b      	uxth	r3, r3
 80058f8:	f8d8 6000 	ldr.w	r6, [r8]
 80058fc:	69e1      	ldr	r1, [r4, #28]
 80058fe:	f8c8 2000 	str.w	r2, [r8]
 8005902:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8005906:	f040 8083 	bne.w	8005a10 <__sflush_r+0x140>
 800590a:	2301      	movs	r3, #1
 800590c:	4640      	mov	r0, r8
 800590e:	47a8      	blx	r5
 8005910:	1c42      	adds	r2, r0, #1
 8005912:	d04a      	beq.n	80059aa <__sflush_r+0xda>
 8005914:	89a3      	ldrh	r3, [r4, #12]
 8005916:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005918:	69e1      	ldr	r1, [r4, #28]
 800591a:	075b      	lsls	r3, r3, #29
 800591c:	d505      	bpl.n	800592a <__sflush_r+0x5a>
 800591e:	6862      	ldr	r2, [r4, #4]
 8005920:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8005922:	1a80      	subs	r0, r0, r2
 8005924:	b10b      	cbz	r3, 800592a <__sflush_r+0x5a>
 8005926:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005928:	1ac0      	subs	r0, r0, r3
 800592a:	4602      	mov	r2, r0
 800592c:	2300      	movs	r3, #0
 800592e:	4640      	mov	r0, r8
 8005930:	47a8      	blx	r5
 8005932:	1c47      	adds	r7, r0, #1
 8005934:	d045      	beq.n	80059c2 <__sflush_r+0xf2>
 8005936:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800593a:	6922      	ldr	r2, [r4, #16]
 800593c:	6022      	str	r2, [r4, #0]
 800593e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005942:	2200      	movs	r2, #0
 8005944:	81a3      	strh	r3, [r4, #12]
 8005946:	04db      	lsls	r3, r3, #19
 8005948:	6062      	str	r2, [r4, #4]
 800594a:	d500      	bpl.n	800594e <__sflush_r+0x7e>
 800594c:	6520      	str	r0, [r4, #80]	; 0x50
 800594e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005950:	f8c8 6000 	str.w	r6, [r8]
 8005954:	b311      	cbz	r1, 800599c <__sflush_r+0xcc>
 8005956:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800595a:	4299      	cmp	r1, r3
 800595c:	d002      	beq.n	8005964 <__sflush_r+0x94>
 800595e:	4640      	mov	r0, r8
 8005960:	f000 f95e 	bl	8005c20 <_free_r>
 8005964:	2000      	movs	r0, #0
 8005966:	6320      	str	r0, [r4, #48]	; 0x30
 8005968:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800596c:	6926      	ldr	r6, [r4, #16]
 800596e:	b1ae      	cbz	r6, 800599c <__sflush_r+0xcc>
 8005970:	6825      	ldr	r5, [r4, #0]
 8005972:	6026      	str	r6, [r4, #0]
 8005974:	0792      	lsls	r2, r2, #30
 8005976:	bf0c      	ite	eq
 8005978:	6963      	ldreq	r3, [r4, #20]
 800597a:	2300      	movne	r3, #0
 800597c:	1bad      	subs	r5, r5, r6
 800597e:	60a3      	str	r3, [r4, #8]
 8005980:	e00a      	b.n	8005998 <__sflush_r+0xc8>
 8005982:	462b      	mov	r3, r5
 8005984:	4632      	mov	r2, r6
 8005986:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005988:	69e1      	ldr	r1, [r4, #28]
 800598a:	4640      	mov	r0, r8
 800598c:	47b8      	blx	r7
 800598e:	2800      	cmp	r0, #0
 8005990:	eba5 0500 	sub.w	r5, r5, r0
 8005994:	4406      	add	r6, r0
 8005996:	dd2b      	ble.n	80059f0 <__sflush_r+0x120>
 8005998:	2d00      	cmp	r5, #0
 800599a:	dcf2      	bgt.n	8005982 <__sflush_r+0xb2>
 800599c:	2000      	movs	r0, #0
 800599e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80059a2:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80059a4:	2a00      	cmp	r2, #0
 80059a6:	dca2      	bgt.n	80058ee <__sflush_r+0x1e>
 80059a8:	e7f8      	b.n	800599c <__sflush_r+0xcc>
 80059aa:	f8d8 3000 	ldr.w	r3, [r8]
 80059ae:	2b00      	cmp	r3, #0
 80059b0:	d0b0      	beq.n	8005914 <__sflush_r+0x44>
 80059b2:	2b1d      	cmp	r3, #29
 80059b4:	d001      	beq.n	80059ba <__sflush_r+0xea>
 80059b6:	2b16      	cmp	r3, #22
 80059b8:	d12c      	bne.n	8005a14 <__sflush_r+0x144>
 80059ba:	f8c8 6000 	str.w	r6, [r8]
 80059be:	2000      	movs	r0, #0
 80059c0:	e7ed      	b.n	800599e <__sflush_r+0xce>
 80059c2:	f8d8 1000 	ldr.w	r1, [r8]
 80059c6:	291d      	cmp	r1, #29
 80059c8:	d81a      	bhi.n	8005a00 <__sflush_r+0x130>
 80059ca:	4b15      	ldr	r3, [pc, #84]	; (8005a20 <__sflush_r+0x150>)
 80059cc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80059d0:	40cb      	lsrs	r3, r1
 80059d2:	43db      	mvns	r3, r3
 80059d4:	f013 0301 	ands.w	r3, r3, #1
 80059d8:	d114      	bne.n	8005a04 <__sflush_r+0x134>
 80059da:	6925      	ldr	r5, [r4, #16]
 80059dc:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80059e0:	e9c4 5300 	strd	r5, r3, [r4]
 80059e4:	04d5      	lsls	r5, r2, #19
 80059e6:	81a2      	strh	r2, [r4, #12]
 80059e8:	d5b1      	bpl.n	800594e <__sflush_r+0x7e>
 80059ea:	2900      	cmp	r1, #0
 80059ec:	d1af      	bne.n	800594e <__sflush_r+0x7e>
 80059ee:	e7ad      	b.n	800594c <__sflush_r+0x7c>
 80059f0:	89a3      	ldrh	r3, [r4, #12]
 80059f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80059f6:	81a3      	strh	r3, [r4, #12]
 80059f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80059fc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005a00:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005a04:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005a08:	81a2      	strh	r2, [r4, #12]
 8005a0a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a0e:	e7c6      	b.n	800599e <__sflush_r+0xce>
 8005a10:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005a12:	e782      	b.n	800591a <__sflush_r+0x4a>
 8005a14:	89a3      	ldrh	r3, [r4, #12]
 8005a16:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005a1a:	81a3      	strh	r3, [r4, #12]
 8005a1c:	e7bf      	b.n	800599e <__sflush_r+0xce>
 8005a1e:	bf00      	nop
 8005a20:	20400001 	.word	0x20400001

08005a24 <_fflush_r>:
 8005a24:	b538      	push	{r3, r4, r5, lr}
 8005a26:	460d      	mov	r5, r1
 8005a28:	4604      	mov	r4, r0
 8005a2a:	b108      	cbz	r0, 8005a30 <_fflush_r+0xc>
 8005a2c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005a2e:	b1a3      	cbz	r3, 8005a5a <_fflush_r+0x36>
 8005a30:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005a34:	b1b8      	cbz	r0, 8005a66 <_fflush_r+0x42>
 8005a36:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005a38:	07db      	lsls	r3, r3, #31
 8005a3a:	d401      	bmi.n	8005a40 <_fflush_r+0x1c>
 8005a3c:	0581      	lsls	r1, r0, #22
 8005a3e:	d51a      	bpl.n	8005a76 <_fflush_r+0x52>
 8005a40:	4620      	mov	r0, r4
 8005a42:	4629      	mov	r1, r5
 8005a44:	f7ff ff44 	bl	80058d0 <__sflush_r>
 8005a48:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005a4a:	07da      	lsls	r2, r3, #31
 8005a4c:	4604      	mov	r4, r0
 8005a4e:	d402      	bmi.n	8005a56 <_fflush_r+0x32>
 8005a50:	89ab      	ldrh	r3, [r5, #12]
 8005a52:	059b      	lsls	r3, r3, #22
 8005a54:	d50a      	bpl.n	8005a6c <_fflush_r+0x48>
 8005a56:	4620      	mov	r0, r4
 8005a58:	bd38      	pop	{r3, r4, r5, pc}
 8005a5a:	f000 f83f 	bl	8005adc <__sinit>
 8005a5e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005a62:	2800      	cmp	r0, #0
 8005a64:	d1e7      	bne.n	8005a36 <_fflush_r+0x12>
 8005a66:	4604      	mov	r4, r0
 8005a68:	4620      	mov	r0, r4
 8005a6a:	bd38      	pop	{r3, r4, r5, pc}
 8005a6c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005a6e:	f000 fb87 	bl	8006180 <__retarget_lock_release_recursive>
 8005a72:	4620      	mov	r0, r4
 8005a74:	bd38      	pop	{r3, r4, r5, pc}
 8005a76:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005a78:	f000 fb80 	bl	800617c <__retarget_lock_acquire_recursive>
 8005a7c:	e7e0      	b.n	8005a40 <_fflush_r+0x1c>
 8005a7e:	bf00      	nop

08005a80 <std>:
 8005a80:	b510      	push	{r4, lr}
 8005a82:	2300      	movs	r3, #0
 8005a84:	4604      	mov	r4, r0
 8005a86:	8181      	strh	r1, [r0, #12]
 8005a88:	81c2      	strh	r2, [r0, #14]
 8005a8a:	e9c0 3300 	strd	r3, r3, [r0]
 8005a8e:	6083      	str	r3, [r0, #8]
 8005a90:	6643      	str	r3, [r0, #100]	; 0x64
 8005a92:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005a96:	6183      	str	r3, [r0, #24]
 8005a98:	4619      	mov	r1, r3
 8005a9a:	2208      	movs	r2, #8
 8005a9c:	305c      	adds	r0, #92	; 0x5c
 8005a9e:	f7fd f8ad 	bl	8002bfc <memset>
 8005aa2:	4807      	ldr	r0, [pc, #28]	; (8005ac0 <std+0x40>)
 8005aa4:	4907      	ldr	r1, [pc, #28]	; (8005ac4 <std+0x44>)
 8005aa6:	4a08      	ldr	r2, [pc, #32]	; (8005ac8 <std+0x48>)
 8005aa8:	4b08      	ldr	r3, [pc, #32]	; (8005acc <std+0x4c>)
 8005aaa:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005aac:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005ab0:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005ab4:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005ab8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005abc:	f000 bb5a 	b.w	8006174 <__retarget_lock_init_recursive>
 8005ac0:	08006d15 	.word	0x08006d15
 8005ac4:	08006d39 	.word	0x08006d39
 8005ac8:	08006d75 	.word	0x08006d75
 8005acc:	08006d95 	.word	0x08006d95

08005ad0 <_cleanup_r>:
 8005ad0:	4901      	ldr	r1, [pc, #4]	; (8005ad8 <_cleanup_r+0x8>)
 8005ad2:	f000 bb17 	b.w	8006104 <_fwalk_reent>
 8005ad6:	bf00      	nop
 8005ad8:	08007005 	.word	0x08007005

08005adc <__sinit>:
 8005adc:	b510      	push	{r4, lr}
 8005ade:	4604      	mov	r4, r0
 8005ae0:	4812      	ldr	r0, [pc, #72]	; (8005b2c <__sinit+0x50>)
 8005ae2:	f000 fb4b 	bl	800617c <__retarget_lock_acquire_recursive>
 8005ae6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005ae8:	b9d2      	cbnz	r2, 8005b20 <__sinit+0x44>
 8005aea:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005aee:	4810      	ldr	r0, [pc, #64]	; (8005b30 <__sinit+0x54>)
 8005af0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005af4:	2103      	movs	r1, #3
 8005af6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005afa:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005afc:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005b00:	6860      	ldr	r0, [r4, #4]
 8005b02:	2104      	movs	r1, #4
 8005b04:	f7ff ffbc 	bl	8005a80 <std>
 8005b08:	2201      	movs	r2, #1
 8005b0a:	2109      	movs	r1, #9
 8005b0c:	68a0      	ldr	r0, [r4, #8]
 8005b0e:	f7ff ffb7 	bl	8005a80 <std>
 8005b12:	2202      	movs	r2, #2
 8005b14:	2112      	movs	r1, #18
 8005b16:	68e0      	ldr	r0, [r4, #12]
 8005b18:	f7ff ffb2 	bl	8005a80 <std>
 8005b1c:	2301      	movs	r3, #1
 8005b1e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005b20:	4802      	ldr	r0, [pc, #8]	; (8005b2c <__sinit+0x50>)
 8005b22:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005b26:	f000 bb2b 	b.w	8006180 <__retarget_lock_release_recursive>
 8005b2a:	bf00      	nop
 8005b2c:	20000c84 	.word	0x20000c84
 8005b30:	08005ad1 	.word	0x08005ad1

08005b34 <__sfp_lock_acquire>:
 8005b34:	4801      	ldr	r0, [pc, #4]	; (8005b3c <__sfp_lock_acquire+0x8>)
 8005b36:	f000 bb21 	b.w	800617c <__retarget_lock_acquire_recursive>
 8005b3a:	bf00      	nop
 8005b3c:	20000c98 	.word	0x20000c98

08005b40 <__sfp_lock_release>:
 8005b40:	4801      	ldr	r0, [pc, #4]	; (8005b48 <__sfp_lock_release+0x8>)
 8005b42:	f000 bb1d 	b.w	8006180 <__retarget_lock_release_recursive>
 8005b46:	bf00      	nop
 8005b48:	20000c98 	.word	0x20000c98

08005b4c <__libc_fini_array>:
 8005b4c:	b538      	push	{r3, r4, r5, lr}
 8005b4e:	4c0a      	ldr	r4, [pc, #40]	; (8005b78 <__libc_fini_array+0x2c>)
 8005b50:	4d0a      	ldr	r5, [pc, #40]	; (8005b7c <__libc_fini_array+0x30>)
 8005b52:	1b64      	subs	r4, r4, r5
 8005b54:	10a4      	asrs	r4, r4, #2
 8005b56:	d00a      	beq.n	8005b6e <__libc_fini_array+0x22>
 8005b58:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005b5c:	3b01      	subs	r3, #1
 8005b5e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005b62:	3c01      	subs	r4, #1
 8005b64:	f855 3904 	ldr.w	r3, [r5], #-4
 8005b68:	4798      	blx	r3
 8005b6a:	2c00      	cmp	r4, #0
 8005b6c:	d1f9      	bne.n	8005b62 <__libc_fini_array+0x16>
 8005b6e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005b72:	f001 bc3b 	b.w	80073ec <_fini>
 8005b76:	bf00      	nop
 8005b78:	080077b4 	.word	0x080077b4
 8005b7c:	080077b0 	.word	0x080077b0

08005b80 <_malloc_trim_r>:
 8005b80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005b82:	4f24      	ldr	r7, [pc, #144]	; (8005c14 <_malloc_trim_r+0x94>)
 8005b84:	460c      	mov	r4, r1
 8005b86:	4606      	mov	r6, r0
 8005b88:	f7fd f882 	bl	8002c90 <__malloc_lock>
 8005b8c:	68bb      	ldr	r3, [r7, #8]
 8005b8e:	685d      	ldr	r5, [r3, #4]
 8005b90:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005b94:	310f      	adds	r1, #15
 8005b96:	f025 0503 	bic.w	r5, r5, #3
 8005b9a:	4429      	add	r1, r5
 8005b9c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005ba0:	f021 010f 	bic.w	r1, r1, #15
 8005ba4:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005ba8:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005bac:	db07      	blt.n	8005bbe <_malloc_trim_r+0x3e>
 8005bae:	2100      	movs	r1, #0
 8005bb0:	4630      	mov	r0, r6
 8005bb2:	f7fd f8e3 	bl	8002d7c <_sbrk_r>
 8005bb6:	68bb      	ldr	r3, [r7, #8]
 8005bb8:	442b      	add	r3, r5
 8005bba:	4298      	cmp	r0, r3
 8005bbc:	d004      	beq.n	8005bc8 <_malloc_trim_r+0x48>
 8005bbe:	4630      	mov	r0, r6
 8005bc0:	f7fd f86c 	bl	8002c9c <__malloc_unlock>
 8005bc4:	2000      	movs	r0, #0
 8005bc6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005bc8:	4261      	negs	r1, r4
 8005bca:	4630      	mov	r0, r6
 8005bcc:	f7fd f8d6 	bl	8002d7c <_sbrk_r>
 8005bd0:	3001      	adds	r0, #1
 8005bd2:	d00d      	beq.n	8005bf0 <_malloc_trim_r+0x70>
 8005bd4:	4b10      	ldr	r3, [pc, #64]	; (8005c18 <_malloc_trim_r+0x98>)
 8005bd6:	68ba      	ldr	r2, [r7, #8]
 8005bd8:	6819      	ldr	r1, [r3, #0]
 8005bda:	1b2d      	subs	r5, r5, r4
 8005bdc:	f045 0501 	orr.w	r5, r5, #1
 8005be0:	4630      	mov	r0, r6
 8005be2:	1b09      	subs	r1, r1, r4
 8005be4:	6055      	str	r5, [r2, #4]
 8005be6:	6019      	str	r1, [r3, #0]
 8005be8:	f7fd f858 	bl	8002c9c <__malloc_unlock>
 8005bec:	2001      	movs	r0, #1
 8005bee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005bf0:	2100      	movs	r1, #0
 8005bf2:	4630      	mov	r0, r6
 8005bf4:	f7fd f8c2 	bl	8002d7c <_sbrk_r>
 8005bf8:	68ba      	ldr	r2, [r7, #8]
 8005bfa:	1a83      	subs	r3, r0, r2
 8005bfc:	2b0f      	cmp	r3, #15
 8005bfe:	ddde      	ble.n	8005bbe <_malloc_trim_r+0x3e>
 8005c00:	4c06      	ldr	r4, [pc, #24]	; (8005c1c <_malloc_trim_r+0x9c>)
 8005c02:	4905      	ldr	r1, [pc, #20]	; (8005c18 <_malloc_trim_r+0x98>)
 8005c04:	6824      	ldr	r4, [r4, #0]
 8005c06:	f043 0301 	orr.w	r3, r3, #1
 8005c0a:	1b00      	subs	r0, r0, r4
 8005c0c:	6053      	str	r3, [r2, #4]
 8005c0e:	6008      	str	r0, [r1, #0]
 8005c10:	e7d5      	b.n	8005bbe <_malloc_trim_r+0x3e>
 8005c12:	bf00      	nop
 8005c14:	200005d8 	.word	0x200005d8
 8005c18:	20000bfc 	.word	0x20000bfc
 8005c1c:	200009e0 	.word	0x200009e0

08005c20 <_free_r>:
 8005c20:	2900      	cmp	r1, #0
 8005c22:	d053      	beq.n	8005ccc <_free_r+0xac>
 8005c24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005c26:	460c      	mov	r4, r1
 8005c28:	4606      	mov	r6, r0
 8005c2a:	f7fd f831 	bl	8002c90 <__malloc_lock>
 8005c2e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005c32:	4f71      	ldr	r7, [pc, #452]	; (8005df8 <_free_r+0x1d8>)
 8005c34:	f02c 0101 	bic.w	r1, ip, #1
 8005c38:	f1a4 0508 	sub.w	r5, r4, #8
 8005c3c:	186b      	adds	r3, r5, r1
 8005c3e:	68b8      	ldr	r0, [r7, #8]
 8005c40:	685a      	ldr	r2, [r3, #4]
 8005c42:	4298      	cmp	r0, r3
 8005c44:	f022 0203 	bic.w	r2, r2, #3
 8005c48:	d053      	beq.n	8005cf2 <_free_r+0xd2>
 8005c4a:	f01c 0f01 	tst.w	ip, #1
 8005c4e:	605a      	str	r2, [r3, #4]
 8005c50:	eb03 0002 	add.w	r0, r3, r2
 8005c54:	d13b      	bne.n	8005cce <_free_r+0xae>
 8005c56:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005c5a:	6840      	ldr	r0, [r0, #4]
 8005c5c:	eba5 050c 	sub.w	r5, r5, ip
 8005c60:	f107 0e08 	add.w	lr, r7, #8
 8005c64:	68ac      	ldr	r4, [r5, #8]
 8005c66:	4574      	cmp	r4, lr
 8005c68:	4461      	add	r1, ip
 8005c6a:	f000 0001 	and.w	r0, r0, #1
 8005c6e:	d075      	beq.n	8005d5c <_free_r+0x13c>
 8005c70:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005c74:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005c78:	f8cc 4008 	str.w	r4, [ip, #8]
 8005c7c:	b360      	cbz	r0, 8005cd8 <_free_r+0xb8>
 8005c7e:	f041 0301 	orr.w	r3, r1, #1
 8005c82:	606b      	str	r3, [r5, #4]
 8005c84:	5069      	str	r1, [r5, r1]
 8005c86:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005c8a:	d350      	bcc.n	8005d2e <_free_r+0x10e>
 8005c8c:	0a4b      	lsrs	r3, r1, #9
 8005c8e:	2b04      	cmp	r3, #4
 8005c90:	d870      	bhi.n	8005d74 <_free_r+0x154>
 8005c92:	098b      	lsrs	r3, r1, #6
 8005c94:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005c98:	00e4      	lsls	r4, r4, #3
 8005c9a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005c9e:	1938      	adds	r0, r7, r4
 8005ca0:	593b      	ldr	r3, [r7, r4]
 8005ca2:	3808      	subs	r0, #8
 8005ca4:	4298      	cmp	r0, r3
 8005ca6:	d078      	beq.n	8005d9a <_free_r+0x17a>
 8005ca8:	685a      	ldr	r2, [r3, #4]
 8005caa:	f022 0203 	bic.w	r2, r2, #3
 8005cae:	428a      	cmp	r2, r1
 8005cb0:	d971      	bls.n	8005d96 <_free_r+0x176>
 8005cb2:	689b      	ldr	r3, [r3, #8]
 8005cb4:	4298      	cmp	r0, r3
 8005cb6:	d1f7      	bne.n	8005ca8 <_free_r+0x88>
 8005cb8:	68c3      	ldr	r3, [r0, #12]
 8005cba:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005cbe:	609d      	str	r5, [r3, #8]
 8005cc0:	60c5      	str	r5, [r0, #12]
 8005cc2:	4630      	mov	r0, r6
 8005cc4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005cc8:	f7fc bfe8 	b.w	8002c9c <__malloc_unlock>
 8005ccc:	4770      	bx	lr
 8005cce:	6840      	ldr	r0, [r0, #4]
 8005cd0:	f000 0001 	and.w	r0, r0, #1
 8005cd4:	2800      	cmp	r0, #0
 8005cd6:	d1d2      	bne.n	8005c7e <_free_r+0x5e>
 8005cd8:	6898      	ldr	r0, [r3, #8]
 8005cda:	4c48      	ldr	r4, [pc, #288]	; (8005dfc <_free_r+0x1dc>)
 8005cdc:	4411      	add	r1, r2
 8005cde:	42a0      	cmp	r0, r4
 8005ce0:	f041 0201 	orr.w	r2, r1, #1
 8005ce4:	d062      	beq.n	8005dac <_free_r+0x18c>
 8005ce6:	68db      	ldr	r3, [r3, #12]
 8005ce8:	60c3      	str	r3, [r0, #12]
 8005cea:	6098      	str	r0, [r3, #8]
 8005cec:	606a      	str	r2, [r5, #4]
 8005cee:	5069      	str	r1, [r5, r1]
 8005cf0:	e7c9      	b.n	8005c86 <_free_r+0x66>
 8005cf2:	f01c 0f01 	tst.w	ip, #1
 8005cf6:	440a      	add	r2, r1
 8005cf8:	d107      	bne.n	8005d0a <_free_r+0xea>
 8005cfa:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005cfe:	1aed      	subs	r5, r5, r3
 8005d00:	441a      	add	r2, r3
 8005d02:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005d06:	60cb      	str	r3, [r1, #12]
 8005d08:	6099      	str	r1, [r3, #8]
 8005d0a:	4b3d      	ldr	r3, [pc, #244]	; (8005e00 <_free_r+0x1e0>)
 8005d0c:	681b      	ldr	r3, [r3, #0]
 8005d0e:	f042 0101 	orr.w	r1, r2, #1
 8005d12:	4293      	cmp	r3, r2
 8005d14:	6069      	str	r1, [r5, #4]
 8005d16:	60bd      	str	r5, [r7, #8]
 8005d18:	d804      	bhi.n	8005d24 <_free_r+0x104>
 8005d1a:	4b3a      	ldr	r3, [pc, #232]	; (8005e04 <_free_r+0x1e4>)
 8005d1c:	4630      	mov	r0, r6
 8005d1e:	6819      	ldr	r1, [r3, #0]
 8005d20:	f7ff ff2e 	bl	8005b80 <_malloc_trim_r>
 8005d24:	4630      	mov	r0, r6
 8005d26:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005d2a:	f7fc bfb7 	b.w	8002c9c <__malloc_unlock>
 8005d2e:	08c9      	lsrs	r1, r1, #3
 8005d30:	6878      	ldr	r0, [r7, #4]
 8005d32:	1c4a      	adds	r2, r1, #1
 8005d34:	2301      	movs	r3, #1
 8005d36:	1089      	asrs	r1, r1, #2
 8005d38:	408b      	lsls	r3, r1
 8005d3a:	4303      	orrs	r3, r0
 8005d3c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005d40:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005d44:	607b      	str	r3, [r7, #4]
 8005d46:	3908      	subs	r1, #8
 8005d48:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005d4c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005d50:	60c5      	str	r5, [r0, #12]
 8005d52:	4630      	mov	r0, r6
 8005d54:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005d58:	f7fc bfa0 	b.w	8002c9c <__malloc_unlock>
 8005d5c:	2800      	cmp	r0, #0
 8005d5e:	d145      	bne.n	8005dec <_free_r+0x1cc>
 8005d60:	440a      	add	r2, r1
 8005d62:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005d66:	f042 0001 	orr.w	r0, r2, #1
 8005d6a:	60cb      	str	r3, [r1, #12]
 8005d6c:	6099      	str	r1, [r3, #8]
 8005d6e:	6068      	str	r0, [r5, #4]
 8005d70:	50aa      	str	r2, [r5, r2]
 8005d72:	e7d7      	b.n	8005d24 <_free_r+0x104>
 8005d74:	2b14      	cmp	r3, #20
 8005d76:	d908      	bls.n	8005d8a <_free_r+0x16a>
 8005d78:	2b54      	cmp	r3, #84	; 0x54
 8005d7a:	d81e      	bhi.n	8005dba <_free_r+0x19a>
 8005d7c:	0b0b      	lsrs	r3, r1, #12
 8005d7e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005d82:	00e4      	lsls	r4, r4, #3
 8005d84:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005d88:	e789      	b.n	8005c9e <_free_r+0x7e>
 8005d8a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005d8e:	00e4      	lsls	r4, r4, #3
 8005d90:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005d94:	e783      	b.n	8005c9e <_free_r+0x7e>
 8005d96:	4618      	mov	r0, r3
 8005d98:	e78e      	b.n	8005cb8 <_free_r+0x98>
 8005d9a:	1093      	asrs	r3, r2, #2
 8005d9c:	6879      	ldr	r1, [r7, #4]
 8005d9e:	2201      	movs	r2, #1
 8005da0:	fa02 f303 	lsl.w	r3, r2, r3
 8005da4:	430b      	orrs	r3, r1
 8005da6:	607b      	str	r3, [r7, #4]
 8005da8:	4603      	mov	r3, r0
 8005daa:	e786      	b.n	8005cba <_free_r+0x9a>
 8005dac:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005db0:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005db4:	606a      	str	r2, [r5, #4]
 8005db6:	5069      	str	r1, [r5, r1]
 8005db8:	e7b4      	b.n	8005d24 <_free_r+0x104>
 8005dba:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005dbe:	d806      	bhi.n	8005dce <_free_r+0x1ae>
 8005dc0:	0bcb      	lsrs	r3, r1, #15
 8005dc2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005dc6:	00e4      	lsls	r4, r4, #3
 8005dc8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005dcc:	e767      	b.n	8005c9e <_free_r+0x7e>
 8005dce:	f240 5254 	movw	r2, #1364	; 0x554
 8005dd2:	4293      	cmp	r3, r2
 8005dd4:	d806      	bhi.n	8005de4 <_free_r+0x1c4>
 8005dd6:	0c8b      	lsrs	r3, r1, #18
 8005dd8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005ddc:	00e4      	lsls	r4, r4, #3
 8005dde:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005de2:	e75c      	b.n	8005c9e <_free_r+0x7e>
 8005de4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005de8:	227e      	movs	r2, #126	; 0x7e
 8005dea:	e758      	b.n	8005c9e <_free_r+0x7e>
 8005dec:	f041 0201 	orr.w	r2, r1, #1
 8005df0:	606a      	str	r2, [r5, #4]
 8005df2:	6019      	str	r1, [r3, #0]
 8005df4:	e796      	b.n	8005d24 <_free_r+0x104>
 8005df6:	bf00      	nop
 8005df8:	200005d8 	.word	0x200005d8
 8005dfc:	200005e0 	.word	0x200005e0
 8005e00:	200009e4 	.word	0x200009e4
 8005e04:	20000c2c 	.word	0x20000c2c

08005e08 <__sfvwrite_r>:
 8005e08:	6893      	ldr	r3, [r2, #8]
 8005e0a:	2b00      	cmp	r3, #0
 8005e0c:	f000 80e4 	beq.w	8005fd8 <__sfvwrite_r+0x1d0>
 8005e10:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005e14:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005e18:	b29b      	uxth	r3, r3
 8005e1a:	460c      	mov	r4, r1
 8005e1c:	0719      	lsls	r1, r3, #28
 8005e1e:	b083      	sub	sp, #12
 8005e20:	4682      	mov	sl, r0
 8005e22:	4690      	mov	r8, r2
 8005e24:	d535      	bpl.n	8005e92 <__sfvwrite_r+0x8a>
 8005e26:	6922      	ldr	r2, [r4, #16]
 8005e28:	b39a      	cbz	r2, 8005e92 <__sfvwrite_r+0x8a>
 8005e2a:	f013 0202 	ands.w	r2, r3, #2
 8005e2e:	f8d8 6000 	ldr.w	r6, [r8]
 8005e32:	d03d      	beq.n	8005eb0 <__sfvwrite_r+0xa8>
 8005e34:	2700      	movs	r7, #0
 8005e36:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005e3a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005e3e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8006100 <__sfvwrite_r+0x2f8>
 8005e42:	463d      	mov	r5, r7
 8005e44:	454d      	cmp	r5, r9
 8005e46:	462b      	mov	r3, r5
 8005e48:	463a      	mov	r2, r7
 8005e4a:	bf28      	it	cs
 8005e4c:	464b      	movcs	r3, r9
 8005e4e:	4661      	mov	r1, ip
 8005e50:	4650      	mov	r0, sl
 8005e52:	b1d5      	cbz	r5, 8005e8a <__sfvwrite_r+0x82>
 8005e54:	47d8      	blx	fp
 8005e56:	2800      	cmp	r0, #0
 8005e58:	f340 80c6 	ble.w	8005fe8 <__sfvwrite_r+0x1e0>
 8005e5c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005e60:	1a1b      	subs	r3, r3, r0
 8005e62:	4407      	add	r7, r0
 8005e64:	1a2d      	subs	r5, r5, r0
 8005e66:	f8c8 3008 	str.w	r3, [r8, #8]
 8005e6a:	2b00      	cmp	r3, #0
 8005e6c:	f000 80b0 	beq.w	8005fd0 <__sfvwrite_r+0x1c8>
 8005e70:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005e74:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005e78:	454d      	cmp	r5, r9
 8005e7a:	462b      	mov	r3, r5
 8005e7c:	463a      	mov	r2, r7
 8005e7e:	bf28      	it	cs
 8005e80:	464b      	movcs	r3, r9
 8005e82:	4661      	mov	r1, ip
 8005e84:	4650      	mov	r0, sl
 8005e86:	2d00      	cmp	r5, #0
 8005e88:	d1e4      	bne.n	8005e54 <__sfvwrite_r+0x4c>
 8005e8a:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005e8e:	3608      	adds	r6, #8
 8005e90:	e7d8      	b.n	8005e44 <__sfvwrite_r+0x3c>
 8005e92:	4621      	mov	r1, r4
 8005e94:	4650      	mov	r0, sl
 8005e96:	f7fe fd03 	bl	80048a0 <__swsetup_r>
 8005e9a:	2800      	cmp	r0, #0
 8005e9c:	f040 812a 	bne.w	80060f4 <__sfvwrite_r+0x2ec>
 8005ea0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ea4:	f8d8 6000 	ldr.w	r6, [r8]
 8005ea8:	b29b      	uxth	r3, r3
 8005eaa:	f013 0202 	ands.w	r2, r3, #2
 8005eae:	d1c1      	bne.n	8005e34 <__sfvwrite_r+0x2c>
 8005eb0:	f013 0901 	ands.w	r9, r3, #1
 8005eb4:	d15d      	bne.n	8005f72 <__sfvwrite_r+0x16a>
 8005eb6:	68a7      	ldr	r7, [r4, #8]
 8005eb8:	6820      	ldr	r0, [r4, #0]
 8005eba:	464d      	mov	r5, r9
 8005ebc:	2d00      	cmp	r5, #0
 8005ebe:	d054      	beq.n	8005f6a <__sfvwrite_r+0x162>
 8005ec0:	059a      	lsls	r2, r3, #22
 8005ec2:	f140 809b 	bpl.w	8005ffc <__sfvwrite_r+0x1f4>
 8005ec6:	42af      	cmp	r7, r5
 8005ec8:	46bb      	mov	fp, r7
 8005eca:	f200 80d8 	bhi.w	800607e <__sfvwrite_r+0x276>
 8005ece:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005ed2:	d02f      	beq.n	8005f34 <__sfvwrite_r+0x12c>
 8005ed4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005ed8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005edc:	eba0 0b01 	sub.w	fp, r0, r1
 8005ee0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005ee4:	1c68      	adds	r0, r5, #1
 8005ee6:	107f      	asrs	r7, r7, #1
 8005ee8:	4458      	add	r0, fp
 8005eea:	42b8      	cmp	r0, r7
 8005eec:	463a      	mov	r2, r7
 8005eee:	bf84      	itt	hi
 8005ef0:	4607      	movhi	r7, r0
 8005ef2:	463a      	movhi	r2, r7
 8005ef4:	055b      	lsls	r3, r3, #21
 8005ef6:	f140 80d3 	bpl.w	80060a0 <__sfvwrite_r+0x298>
 8005efa:	4611      	mov	r1, r2
 8005efc:	4650      	mov	r0, sl
 8005efe:	f7fc fbd9 	bl	80026b4 <_malloc_r>
 8005f02:	2800      	cmp	r0, #0
 8005f04:	f000 80f0 	beq.w	80060e8 <__sfvwrite_r+0x2e0>
 8005f08:	465a      	mov	r2, fp
 8005f0a:	6921      	ldr	r1, [r4, #16]
 8005f0c:	9001      	str	r0, [sp, #4]
 8005f0e:	f7fa faf7 	bl	8000500 <memcpy>
 8005f12:	89a2      	ldrh	r2, [r4, #12]
 8005f14:	9b01      	ldr	r3, [sp, #4]
 8005f16:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005f1a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005f1e:	81a2      	strh	r2, [r4, #12]
 8005f20:	eba7 020b 	sub.w	r2, r7, fp
 8005f24:	eb03 000b 	add.w	r0, r3, fp
 8005f28:	6167      	str	r7, [r4, #20]
 8005f2a:	6123      	str	r3, [r4, #16]
 8005f2c:	6020      	str	r0, [r4, #0]
 8005f2e:	60a2      	str	r2, [r4, #8]
 8005f30:	462f      	mov	r7, r5
 8005f32:	46ab      	mov	fp, r5
 8005f34:	465a      	mov	r2, fp
 8005f36:	4649      	mov	r1, r9
 8005f38:	f000 f99c 	bl	8006274 <memmove>
 8005f3c:	68a2      	ldr	r2, [r4, #8]
 8005f3e:	6823      	ldr	r3, [r4, #0]
 8005f40:	1bd2      	subs	r2, r2, r7
 8005f42:	445b      	add	r3, fp
 8005f44:	462f      	mov	r7, r5
 8005f46:	60a2      	str	r2, [r4, #8]
 8005f48:	6023      	str	r3, [r4, #0]
 8005f4a:	2500      	movs	r5, #0
 8005f4c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005f50:	1bdb      	subs	r3, r3, r7
 8005f52:	44b9      	add	r9, r7
 8005f54:	f8c8 3008 	str.w	r3, [r8, #8]
 8005f58:	2b00      	cmp	r3, #0
 8005f5a:	d039      	beq.n	8005fd0 <__sfvwrite_r+0x1c8>
 8005f5c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005f60:	68a7      	ldr	r7, [r4, #8]
 8005f62:	6820      	ldr	r0, [r4, #0]
 8005f64:	b29b      	uxth	r3, r3
 8005f66:	2d00      	cmp	r5, #0
 8005f68:	d1aa      	bne.n	8005ec0 <__sfvwrite_r+0xb8>
 8005f6a:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005f6e:	3608      	adds	r6, #8
 8005f70:	e7a4      	b.n	8005ebc <__sfvwrite_r+0xb4>
 8005f72:	4633      	mov	r3, r6
 8005f74:	4691      	mov	r9, r2
 8005f76:	4610      	mov	r0, r2
 8005f78:	4617      	mov	r7, r2
 8005f7a:	464e      	mov	r6, r9
 8005f7c:	469b      	mov	fp, r3
 8005f7e:	2f00      	cmp	r7, #0
 8005f80:	d06b      	beq.n	800605a <__sfvwrite_r+0x252>
 8005f82:	2800      	cmp	r0, #0
 8005f84:	d071      	beq.n	800606a <__sfvwrite_r+0x262>
 8005f86:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005f8a:	6820      	ldr	r0, [r4, #0]
 8005f8c:	45b9      	cmp	r9, r7
 8005f8e:	464b      	mov	r3, r9
 8005f90:	bf28      	it	cs
 8005f92:	463b      	movcs	r3, r7
 8005f94:	4288      	cmp	r0, r1
 8005f96:	d903      	bls.n	8005fa0 <__sfvwrite_r+0x198>
 8005f98:	68a5      	ldr	r5, [r4, #8]
 8005f9a:	4415      	add	r5, r2
 8005f9c:	42ab      	cmp	r3, r5
 8005f9e:	dc71      	bgt.n	8006084 <__sfvwrite_r+0x27c>
 8005fa0:	429a      	cmp	r2, r3
 8005fa2:	f300 8093 	bgt.w	80060cc <__sfvwrite_r+0x2c4>
 8005fa6:	4613      	mov	r3, r2
 8005fa8:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005faa:	69e1      	ldr	r1, [r4, #28]
 8005fac:	4632      	mov	r2, r6
 8005fae:	4650      	mov	r0, sl
 8005fb0:	47a8      	blx	r5
 8005fb2:	1e05      	subs	r5, r0, #0
 8005fb4:	dd18      	ble.n	8005fe8 <__sfvwrite_r+0x1e0>
 8005fb6:	ebb9 0905 	subs.w	r9, r9, r5
 8005fba:	d00f      	beq.n	8005fdc <__sfvwrite_r+0x1d4>
 8005fbc:	2001      	movs	r0, #1
 8005fbe:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005fc2:	1b5b      	subs	r3, r3, r5
 8005fc4:	442e      	add	r6, r5
 8005fc6:	1b7f      	subs	r7, r7, r5
 8005fc8:	f8c8 3008 	str.w	r3, [r8, #8]
 8005fcc:	2b00      	cmp	r3, #0
 8005fce:	d1d6      	bne.n	8005f7e <__sfvwrite_r+0x176>
 8005fd0:	2000      	movs	r0, #0
 8005fd2:	b003      	add	sp, #12
 8005fd4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005fd8:	2000      	movs	r0, #0
 8005fda:	4770      	bx	lr
 8005fdc:	4621      	mov	r1, r4
 8005fde:	4650      	mov	r0, sl
 8005fe0:	f7ff fd20 	bl	8005a24 <_fflush_r>
 8005fe4:	2800      	cmp	r0, #0
 8005fe6:	d0ea      	beq.n	8005fbe <__sfvwrite_r+0x1b6>
 8005fe8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005fec:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005ff0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005ff4:	81a3      	strh	r3, [r4, #12]
 8005ff6:	b003      	add	sp, #12
 8005ff8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ffc:	6923      	ldr	r3, [r4, #16]
 8005ffe:	4283      	cmp	r3, r0
 8006000:	d315      	bcc.n	800602e <__sfvwrite_r+0x226>
 8006002:	6961      	ldr	r1, [r4, #20]
 8006004:	42a9      	cmp	r1, r5
 8006006:	d812      	bhi.n	800602e <__sfvwrite_r+0x226>
 8006008:	4b3c      	ldr	r3, [pc, #240]	; (80060fc <__sfvwrite_r+0x2f4>)
 800600a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800600c:	429d      	cmp	r5, r3
 800600e:	bf94      	ite	ls
 8006010:	462b      	movls	r3, r5
 8006012:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8006016:	464a      	mov	r2, r9
 8006018:	fb93 f3f1 	sdiv	r3, r3, r1
 800601c:	4650      	mov	r0, sl
 800601e:	fb01 f303 	mul.w	r3, r1, r3
 8006022:	69e1      	ldr	r1, [r4, #28]
 8006024:	47b8      	blx	r7
 8006026:	1e07      	subs	r7, r0, #0
 8006028:	ddde      	ble.n	8005fe8 <__sfvwrite_r+0x1e0>
 800602a:	1bed      	subs	r5, r5, r7
 800602c:	e78e      	b.n	8005f4c <__sfvwrite_r+0x144>
 800602e:	42af      	cmp	r7, r5
 8006030:	bf28      	it	cs
 8006032:	462f      	movcs	r7, r5
 8006034:	463a      	mov	r2, r7
 8006036:	4649      	mov	r1, r9
 8006038:	f000 f91c 	bl	8006274 <memmove>
 800603c:	68a3      	ldr	r3, [r4, #8]
 800603e:	6822      	ldr	r2, [r4, #0]
 8006040:	1bdb      	subs	r3, r3, r7
 8006042:	443a      	add	r2, r7
 8006044:	60a3      	str	r3, [r4, #8]
 8006046:	6022      	str	r2, [r4, #0]
 8006048:	2b00      	cmp	r3, #0
 800604a:	d1ee      	bne.n	800602a <__sfvwrite_r+0x222>
 800604c:	4621      	mov	r1, r4
 800604e:	4650      	mov	r0, sl
 8006050:	f7ff fce8 	bl	8005a24 <_fflush_r>
 8006054:	2800      	cmp	r0, #0
 8006056:	d0e8      	beq.n	800602a <__sfvwrite_r+0x222>
 8006058:	e7c6      	b.n	8005fe8 <__sfvwrite_r+0x1e0>
 800605a:	f10b 0308 	add.w	r3, fp, #8
 800605e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8006062:	469b      	mov	fp, r3
 8006064:	3308      	adds	r3, #8
 8006066:	2f00      	cmp	r7, #0
 8006068:	d0f9      	beq.n	800605e <__sfvwrite_r+0x256>
 800606a:	463a      	mov	r2, r7
 800606c:	210a      	movs	r1, #10
 800606e:	4630      	mov	r0, r6
 8006070:	f7fa fb56 	bl	8000720 <memchr>
 8006074:	b338      	cbz	r0, 80060c6 <__sfvwrite_r+0x2be>
 8006076:	3001      	adds	r0, #1
 8006078:	eba0 0906 	sub.w	r9, r0, r6
 800607c:	e783      	b.n	8005f86 <__sfvwrite_r+0x17e>
 800607e:	462f      	mov	r7, r5
 8006080:	46ab      	mov	fp, r5
 8006082:	e757      	b.n	8005f34 <__sfvwrite_r+0x12c>
 8006084:	4631      	mov	r1, r6
 8006086:	462a      	mov	r2, r5
 8006088:	f000 f8f4 	bl	8006274 <memmove>
 800608c:	6823      	ldr	r3, [r4, #0]
 800608e:	442b      	add	r3, r5
 8006090:	6023      	str	r3, [r4, #0]
 8006092:	4621      	mov	r1, r4
 8006094:	4650      	mov	r0, sl
 8006096:	f7ff fcc5 	bl	8005a24 <_fflush_r>
 800609a:	2800      	cmp	r0, #0
 800609c:	d08b      	beq.n	8005fb6 <__sfvwrite_r+0x1ae>
 800609e:	e7a3      	b.n	8005fe8 <__sfvwrite_r+0x1e0>
 80060a0:	4650      	mov	r0, sl
 80060a2:	f000 fc55 	bl	8006950 <_realloc_r>
 80060a6:	4603      	mov	r3, r0
 80060a8:	2800      	cmp	r0, #0
 80060aa:	f47f af39 	bne.w	8005f20 <__sfvwrite_r+0x118>
 80060ae:	6921      	ldr	r1, [r4, #16]
 80060b0:	4650      	mov	r0, sl
 80060b2:	f7ff fdb5 	bl	8005c20 <_free_r>
 80060b6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80060ba:	220c      	movs	r2, #12
 80060bc:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80060c0:	f8ca 2000 	str.w	r2, [sl]
 80060c4:	e792      	b.n	8005fec <__sfvwrite_r+0x1e4>
 80060c6:	f107 0901 	add.w	r9, r7, #1
 80060ca:	e75c      	b.n	8005f86 <__sfvwrite_r+0x17e>
 80060cc:	461a      	mov	r2, r3
 80060ce:	4631      	mov	r1, r6
 80060d0:	9301      	str	r3, [sp, #4]
 80060d2:	f000 f8cf 	bl	8006274 <memmove>
 80060d6:	9b01      	ldr	r3, [sp, #4]
 80060d8:	68a1      	ldr	r1, [r4, #8]
 80060da:	6822      	ldr	r2, [r4, #0]
 80060dc:	1ac9      	subs	r1, r1, r3
 80060de:	441a      	add	r2, r3
 80060e0:	60a1      	str	r1, [r4, #8]
 80060e2:	6022      	str	r2, [r4, #0]
 80060e4:	461d      	mov	r5, r3
 80060e6:	e766      	b.n	8005fb6 <__sfvwrite_r+0x1ae>
 80060e8:	230c      	movs	r3, #12
 80060ea:	f8ca 3000 	str.w	r3, [sl]
 80060ee:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80060f2:	e77b      	b.n	8005fec <__sfvwrite_r+0x1e4>
 80060f4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80060f8:	e76b      	b.n	8005fd2 <__sfvwrite_r+0x1ca>
 80060fa:	bf00      	nop
 80060fc:	7ffffffe 	.word	0x7ffffffe
 8006100:	7ffffc00 	.word	0x7ffffc00

08006104 <_fwalk_reent>:
 8006104:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006108:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800610c:	d01f      	beq.n	800614e <_fwalk_reent+0x4a>
 800610e:	4688      	mov	r8, r1
 8006110:	4606      	mov	r6, r0
 8006112:	f04f 0900 	mov.w	r9, #0
 8006116:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800611a:	3d01      	subs	r5, #1
 800611c:	d411      	bmi.n	8006142 <_fwalk_reent+0x3e>
 800611e:	89a3      	ldrh	r3, [r4, #12]
 8006120:	2b01      	cmp	r3, #1
 8006122:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8006126:	4621      	mov	r1, r4
 8006128:	4630      	mov	r0, r6
 800612a:	d906      	bls.n	800613a <_fwalk_reent+0x36>
 800612c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8006130:	3301      	adds	r3, #1
 8006132:	d002      	beq.n	800613a <_fwalk_reent+0x36>
 8006134:	47c0      	blx	r8
 8006136:	ea49 0900 	orr.w	r9, r9, r0
 800613a:	1c6b      	adds	r3, r5, #1
 800613c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8006140:	d1ed      	bne.n	800611e <_fwalk_reent+0x1a>
 8006142:	683f      	ldr	r7, [r7, #0]
 8006144:	2f00      	cmp	r7, #0
 8006146:	d1e6      	bne.n	8006116 <_fwalk_reent+0x12>
 8006148:	4648      	mov	r0, r9
 800614a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800614e:	46b9      	mov	r9, r7
 8006150:	4648      	mov	r0, r9
 8006152:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006156:	bf00      	nop

08006158 <_localeconv_r>:
 8006158:	4a04      	ldr	r2, [pc, #16]	; (800616c <_localeconv_r+0x14>)
 800615a:	4b05      	ldr	r3, [pc, #20]	; (8006170 <_localeconv_r+0x18>)
 800615c:	6812      	ldr	r2, [r2, #0]
 800615e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8006160:	2800      	cmp	r0, #0
 8006162:	bf08      	it	eq
 8006164:	4618      	moveq	r0, r3
 8006166:	30f0      	adds	r0, #240	; 0xf0
 8006168:	4770      	bx	lr
 800616a:	bf00      	nop
 800616c:	200001a8 	.word	0x200001a8
 8006170:	200009ec 	.word	0x200009ec

08006174 <__retarget_lock_init_recursive>:
 8006174:	4770      	bx	lr
 8006176:	bf00      	nop

08006178 <__retarget_lock_close_recursive>:
 8006178:	4770      	bx	lr
 800617a:	bf00      	nop

0800617c <__retarget_lock_acquire_recursive>:
 800617c:	4770      	bx	lr
 800617e:	bf00      	nop

08006180 <__retarget_lock_release_recursive>:
 8006180:	4770      	bx	lr
 8006182:	bf00      	nop

08006184 <__swhatbuf_r>:
 8006184:	b570      	push	{r4, r5, r6, lr}
 8006186:	460c      	mov	r4, r1
 8006188:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800618c:	2900      	cmp	r1, #0
 800618e:	b096      	sub	sp, #88	; 0x58
 8006190:	4615      	mov	r5, r2
 8006192:	461e      	mov	r6, r3
 8006194:	da0f      	bge.n	80061b6 <__swhatbuf_r+0x32>
 8006196:	89a2      	ldrh	r2, [r4, #12]
 8006198:	2300      	movs	r3, #0
 800619a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800619e:	6033      	str	r3, [r6, #0]
 80061a0:	d104      	bne.n	80061ac <__swhatbuf_r+0x28>
 80061a2:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80061a6:	602b      	str	r3, [r5, #0]
 80061a8:	b016      	add	sp, #88	; 0x58
 80061aa:	bd70      	pop	{r4, r5, r6, pc}
 80061ac:	2240      	movs	r2, #64	; 0x40
 80061ae:	4618      	mov	r0, r3
 80061b0:	602a      	str	r2, [r5, #0]
 80061b2:	b016      	add	sp, #88	; 0x58
 80061b4:	bd70      	pop	{r4, r5, r6, pc}
 80061b6:	466a      	mov	r2, sp
 80061b8:	f001 f80e 	bl	80071d8 <_fstat_r>
 80061bc:	2800      	cmp	r0, #0
 80061be:	dbea      	blt.n	8006196 <__swhatbuf_r+0x12>
 80061c0:	9b01      	ldr	r3, [sp, #4]
 80061c2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80061c6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80061ca:	fab3 f383 	clz	r3, r3
 80061ce:	095b      	lsrs	r3, r3, #5
 80061d0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80061d4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80061d8:	6033      	str	r3, [r6, #0]
 80061da:	602a      	str	r2, [r5, #0]
 80061dc:	b016      	add	sp, #88	; 0x58
 80061de:	bd70      	pop	{r4, r5, r6, pc}

080061e0 <__smakebuf_r>:
 80061e0:	898a      	ldrh	r2, [r1, #12]
 80061e2:	0792      	lsls	r2, r2, #30
 80061e4:	460b      	mov	r3, r1
 80061e6:	d506      	bpl.n	80061f6 <__smakebuf_r+0x16>
 80061e8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80061ec:	2101      	movs	r1, #1
 80061ee:	601a      	str	r2, [r3, #0]
 80061f0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80061f4:	4770      	bx	lr
 80061f6:	b570      	push	{r4, r5, r6, lr}
 80061f8:	b082      	sub	sp, #8
 80061fa:	ab01      	add	r3, sp, #4
 80061fc:	466a      	mov	r2, sp
 80061fe:	460c      	mov	r4, r1
 8006200:	4605      	mov	r5, r0
 8006202:	f7ff ffbf 	bl	8006184 <__swhatbuf_r>
 8006206:	9900      	ldr	r1, [sp, #0]
 8006208:	4606      	mov	r6, r0
 800620a:	4628      	mov	r0, r5
 800620c:	f7fc fa52 	bl	80026b4 <_malloc_r>
 8006210:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006214:	b1d8      	cbz	r0, 800624e <__smakebuf_r+0x6e>
 8006216:	4916      	ldr	r1, [pc, #88]	; (8006270 <__smakebuf_r+0x90>)
 8006218:	63e9      	str	r1, [r5, #60]	; 0x3c
 800621a:	9a01      	ldr	r2, [sp, #4]
 800621c:	9900      	ldr	r1, [sp, #0]
 800621e:	6020      	str	r0, [r4, #0]
 8006220:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8006224:	81a3      	strh	r3, [r4, #12]
 8006226:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800622a:	b91a      	cbnz	r2, 8006234 <__smakebuf_r+0x54>
 800622c:	4333      	orrs	r3, r6
 800622e:	81a3      	strh	r3, [r4, #12]
 8006230:	b002      	add	sp, #8
 8006232:	bd70      	pop	{r4, r5, r6, pc}
 8006234:	4628      	mov	r0, r5
 8006236:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800623a:	f000 ffe1 	bl	8007200 <_isatty_r>
 800623e:	b1a0      	cbz	r0, 800626a <__smakebuf_r+0x8a>
 8006240:	89a3      	ldrh	r3, [r4, #12]
 8006242:	f023 0303 	bic.w	r3, r3, #3
 8006246:	f043 0301 	orr.w	r3, r3, #1
 800624a:	b21b      	sxth	r3, r3
 800624c:	e7ee      	b.n	800622c <__smakebuf_r+0x4c>
 800624e:	059a      	lsls	r2, r3, #22
 8006250:	d4ee      	bmi.n	8006230 <__smakebuf_r+0x50>
 8006252:	f023 0303 	bic.w	r3, r3, #3
 8006256:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800625a:	f043 0302 	orr.w	r3, r3, #2
 800625e:	2101      	movs	r1, #1
 8006260:	81a3      	strh	r3, [r4, #12]
 8006262:	6022      	str	r2, [r4, #0]
 8006264:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8006268:	e7e2      	b.n	8006230 <__smakebuf_r+0x50>
 800626a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800626e:	e7dd      	b.n	800622c <__smakebuf_r+0x4c>
 8006270:	08005ad1 	.word	0x08005ad1

08006274 <memmove>:
 8006274:	4288      	cmp	r0, r1
 8006276:	b4f0      	push	{r4, r5, r6, r7}
 8006278:	d90d      	bls.n	8006296 <memmove+0x22>
 800627a:	188b      	adds	r3, r1, r2
 800627c:	4283      	cmp	r3, r0
 800627e:	d90a      	bls.n	8006296 <memmove+0x22>
 8006280:	1884      	adds	r4, r0, r2
 8006282:	b132      	cbz	r2, 8006292 <memmove+0x1e>
 8006284:	4622      	mov	r2, r4
 8006286:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800628a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800628e:	4299      	cmp	r1, r3
 8006290:	d1f9      	bne.n	8006286 <memmove+0x12>
 8006292:	bcf0      	pop	{r4, r5, r6, r7}
 8006294:	4770      	bx	lr
 8006296:	2a0f      	cmp	r2, #15
 8006298:	d949      	bls.n	800632e <memmove+0xba>
 800629a:	ea40 0301 	orr.w	r3, r0, r1
 800629e:	079b      	lsls	r3, r3, #30
 80062a0:	d147      	bne.n	8006332 <memmove+0xbe>
 80062a2:	f1a2 0310 	sub.w	r3, r2, #16
 80062a6:	091b      	lsrs	r3, r3, #4
 80062a8:	f101 0720 	add.w	r7, r1, #32
 80062ac:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80062b0:	f101 0410 	add.w	r4, r1, #16
 80062b4:	f100 0510 	add.w	r5, r0, #16
 80062b8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80062bc:	f845 6c10 	str.w	r6, [r5, #-16]
 80062c0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80062c4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80062c8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80062cc:	f845 6c08 	str.w	r6, [r5, #-8]
 80062d0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80062d4:	f845 6c04 	str.w	r6, [r5, #-4]
 80062d8:	3410      	adds	r4, #16
 80062da:	42bc      	cmp	r4, r7
 80062dc:	f105 0510 	add.w	r5, r5, #16
 80062e0:	d1ea      	bne.n	80062b8 <memmove+0x44>
 80062e2:	3301      	adds	r3, #1
 80062e4:	f002 050f 	and.w	r5, r2, #15
 80062e8:	011b      	lsls	r3, r3, #4
 80062ea:	2d03      	cmp	r5, #3
 80062ec:	4419      	add	r1, r3
 80062ee:	4403      	add	r3, r0
 80062f0:	d921      	bls.n	8006336 <memmove+0xc2>
 80062f2:	1f1f      	subs	r7, r3, #4
 80062f4:	460e      	mov	r6, r1
 80062f6:	462c      	mov	r4, r5
 80062f8:	3c04      	subs	r4, #4
 80062fa:	f856 cb04 	ldr.w	ip, [r6], #4
 80062fe:	f847 cf04 	str.w	ip, [r7, #4]!
 8006302:	2c03      	cmp	r4, #3
 8006304:	d8f8      	bhi.n	80062f8 <memmove+0x84>
 8006306:	1f2c      	subs	r4, r5, #4
 8006308:	f024 0403 	bic.w	r4, r4, #3
 800630c:	3404      	adds	r4, #4
 800630e:	4423      	add	r3, r4
 8006310:	4421      	add	r1, r4
 8006312:	f002 0203 	and.w	r2, r2, #3
 8006316:	2a00      	cmp	r2, #0
 8006318:	d0bb      	beq.n	8006292 <memmove+0x1e>
 800631a:	3b01      	subs	r3, #1
 800631c:	440a      	add	r2, r1
 800631e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006322:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006326:	4291      	cmp	r1, r2
 8006328:	d1f9      	bne.n	800631e <memmove+0xaa>
 800632a:	bcf0      	pop	{r4, r5, r6, r7}
 800632c:	4770      	bx	lr
 800632e:	4603      	mov	r3, r0
 8006330:	e7f1      	b.n	8006316 <memmove+0xa2>
 8006332:	4603      	mov	r3, r0
 8006334:	e7f1      	b.n	800631a <memmove+0xa6>
 8006336:	462a      	mov	r2, r5
 8006338:	e7ed      	b.n	8006316 <memmove+0xa2>
 800633a:	bf00      	nop

0800633c <_Balloc>:
 800633c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800633e:	b570      	push	{r4, r5, r6, lr}
 8006340:	4605      	mov	r5, r0
 8006342:	460c      	mov	r4, r1
 8006344:	b14b      	cbz	r3, 800635a <_Balloc+0x1e>
 8006346:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800634a:	b180      	cbz	r0, 800636e <_Balloc+0x32>
 800634c:	6802      	ldr	r2, [r0, #0]
 800634e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006352:	2300      	movs	r3, #0
 8006354:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006358:	bd70      	pop	{r4, r5, r6, pc}
 800635a:	2221      	movs	r2, #33	; 0x21
 800635c:	2104      	movs	r1, #4
 800635e:	f000 fe0b 	bl	8006f78 <_calloc_r>
 8006362:	4603      	mov	r3, r0
 8006364:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006366:	2800      	cmp	r0, #0
 8006368:	d1ed      	bne.n	8006346 <_Balloc+0xa>
 800636a:	2000      	movs	r0, #0
 800636c:	bd70      	pop	{r4, r5, r6, pc}
 800636e:	2101      	movs	r1, #1
 8006370:	fa01 f604 	lsl.w	r6, r1, r4
 8006374:	1d72      	adds	r2, r6, #5
 8006376:	4628      	mov	r0, r5
 8006378:	0092      	lsls	r2, r2, #2
 800637a:	f000 fdfd 	bl	8006f78 <_calloc_r>
 800637e:	2800      	cmp	r0, #0
 8006380:	d0f3      	beq.n	800636a <_Balloc+0x2e>
 8006382:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8006386:	e7e4      	b.n	8006352 <_Balloc+0x16>

08006388 <_Bfree>:
 8006388:	b131      	cbz	r1, 8006398 <_Bfree+0x10>
 800638a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800638c:	684a      	ldr	r2, [r1, #4]
 800638e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8006392:	6008      	str	r0, [r1, #0]
 8006394:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006398:	4770      	bx	lr
 800639a:	bf00      	nop

0800639c <__multadd>:
 800639c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800639e:	690c      	ldr	r4, [r1, #16]
 80063a0:	b083      	sub	sp, #12
 80063a2:	460d      	mov	r5, r1
 80063a4:	4606      	mov	r6, r0
 80063a6:	f101 0c14 	add.w	ip, r1, #20
 80063aa:	2700      	movs	r7, #0
 80063ac:	f8dc 0000 	ldr.w	r0, [ip]
 80063b0:	b281      	uxth	r1, r0
 80063b2:	fb02 3301 	mla	r3, r2, r1, r3
 80063b6:	0c01      	lsrs	r1, r0, #16
 80063b8:	0c18      	lsrs	r0, r3, #16
 80063ba:	fb02 0101 	mla	r1, r2, r1, r0
 80063be:	b29b      	uxth	r3, r3
 80063c0:	3701      	adds	r7, #1
 80063c2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80063c6:	42bc      	cmp	r4, r7
 80063c8:	f84c 3b04 	str.w	r3, [ip], #4
 80063cc:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80063d0:	dcec      	bgt.n	80063ac <__multadd+0x10>
 80063d2:	b13b      	cbz	r3, 80063e4 <__multadd+0x48>
 80063d4:	68aa      	ldr	r2, [r5, #8]
 80063d6:	42a2      	cmp	r2, r4
 80063d8:	dd07      	ble.n	80063ea <__multadd+0x4e>
 80063da:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80063de:	3401      	adds	r4, #1
 80063e0:	6153      	str	r3, [r2, #20]
 80063e2:	612c      	str	r4, [r5, #16]
 80063e4:	4628      	mov	r0, r5
 80063e6:	b003      	add	sp, #12
 80063e8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80063ea:	6869      	ldr	r1, [r5, #4]
 80063ec:	9301      	str	r3, [sp, #4]
 80063ee:	3101      	adds	r1, #1
 80063f0:	4630      	mov	r0, r6
 80063f2:	f7ff ffa3 	bl	800633c <_Balloc>
 80063f6:	692a      	ldr	r2, [r5, #16]
 80063f8:	3202      	adds	r2, #2
 80063fa:	f105 010c 	add.w	r1, r5, #12
 80063fe:	4607      	mov	r7, r0
 8006400:	0092      	lsls	r2, r2, #2
 8006402:	300c      	adds	r0, #12
 8006404:	f7fa f87c 	bl	8000500 <memcpy>
 8006408:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800640a:	6869      	ldr	r1, [r5, #4]
 800640c:	9b01      	ldr	r3, [sp, #4]
 800640e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006412:	6028      	str	r0, [r5, #0]
 8006414:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006418:	463d      	mov	r5, r7
 800641a:	e7de      	b.n	80063da <__multadd+0x3e>

0800641c <__hi0bits>:
 800641c:	0c02      	lsrs	r2, r0, #16
 800641e:	0412      	lsls	r2, r2, #16
 8006420:	4603      	mov	r3, r0
 8006422:	b9c2      	cbnz	r2, 8006456 <__hi0bits+0x3a>
 8006424:	0403      	lsls	r3, r0, #16
 8006426:	2010      	movs	r0, #16
 8006428:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800642c:	bf04      	itt	eq
 800642e:	021b      	lsleq	r3, r3, #8
 8006430:	3008      	addeq	r0, #8
 8006432:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006436:	bf04      	itt	eq
 8006438:	011b      	lsleq	r3, r3, #4
 800643a:	3004      	addeq	r0, #4
 800643c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006440:	bf04      	itt	eq
 8006442:	009b      	lsleq	r3, r3, #2
 8006444:	3002      	addeq	r0, #2
 8006446:	2b00      	cmp	r3, #0
 8006448:	db04      	blt.n	8006454 <__hi0bits+0x38>
 800644a:	005b      	lsls	r3, r3, #1
 800644c:	d501      	bpl.n	8006452 <__hi0bits+0x36>
 800644e:	3001      	adds	r0, #1
 8006450:	4770      	bx	lr
 8006452:	2020      	movs	r0, #32
 8006454:	4770      	bx	lr
 8006456:	2000      	movs	r0, #0
 8006458:	e7e6      	b.n	8006428 <__hi0bits+0xc>
 800645a:	bf00      	nop

0800645c <__lo0bits>:
 800645c:	6803      	ldr	r3, [r0, #0]
 800645e:	f013 0207 	ands.w	r2, r3, #7
 8006462:	4601      	mov	r1, r0
 8006464:	d007      	beq.n	8006476 <__lo0bits+0x1a>
 8006466:	07da      	lsls	r2, r3, #31
 8006468:	d41f      	bmi.n	80064aa <__lo0bits+0x4e>
 800646a:	0798      	lsls	r0, r3, #30
 800646c:	d51f      	bpl.n	80064ae <__lo0bits+0x52>
 800646e:	085b      	lsrs	r3, r3, #1
 8006470:	600b      	str	r3, [r1, #0]
 8006472:	2001      	movs	r0, #1
 8006474:	4770      	bx	lr
 8006476:	b298      	uxth	r0, r3
 8006478:	b1a0      	cbz	r0, 80064a4 <__lo0bits+0x48>
 800647a:	4610      	mov	r0, r2
 800647c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006480:	bf04      	itt	eq
 8006482:	0a1b      	lsreq	r3, r3, #8
 8006484:	3008      	addeq	r0, #8
 8006486:	071a      	lsls	r2, r3, #28
 8006488:	bf04      	itt	eq
 800648a:	091b      	lsreq	r3, r3, #4
 800648c:	3004      	addeq	r0, #4
 800648e:	079a      	lsls	r2, r3, #30
 8006490:	bf04      	itt	eq
 8006492:	089b      	lsreq	r3, r3, #2
 8006494:	3002      	addeq	r0, #2
 8006496:	07da      	lsls	r2, r3, #31
 8006498:	d402      	bmi.n	80064a0 <__lo0bits+0x44>
 800649a:	085b      	lsrs	r3, r3, #1
 800649c:	d00b      	beq.n	80064b6 <__lo0bits+0x5a>
 800649e:	3001      	adds	r0, #1
 80064a0:	600b      	str	r3, [r1, #0]
 80064a2:	4770      	bx	lr
 80064a4:	0c1b      	lsrs	r3, r3, #16
 80064a6:	2010      	movs	r0, #16
 80064a8:	e7e8      	b.n	800647c <__lo0bits+0x20>
 80064aa:	2000      	movs	r0, #0
 80064ac:	4770      	bx	lr
 80064ae:	089b      	lsrs	r3, r3, #2
 80064b0:	600b      	str	r3, [r1, #0]
 80064b2:	2002      	movs	r0, #2
 80064b4:	4770      	bx	lr
 80064b6:	2020      	movs	r0, #32
 80064b8:	4770      	bx	lr
 80064ba:	bf00      	nop

080064bc <__i2b>:
 80064bc:	b510      	push	{r4, lr}
 80064be:	460c      	mov	r4, r1
 80064c0:	2101      	movs	r1, #1
 80064c2:	f7ff ff3b 	bl	800633c <_Balloc>
 80064c6:	2201      	movs	r2, #1
 80064c8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80064cc:	bd10      	pop	{r4, pc}
 80064ce:	bf00      	nop

080064d0 <__multiply>:
 80064d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80064d4:	690e      	ldr	r6, [r1, #16]
 80064d6:	6914      	ldr	r4, [r2, #16]
 80064d8:	42a6      	cmp	r6, r4
 80064da:	b083      	sub	sp, #12
 80064dc:	460f      	mov	r7, r1
 80064de:	4615      	mov	r5, r2
 80064e0:	da04      	bge.n	80064ec <__multiply+0x1c>
 80064e2:	4632      	mov	r2, r6
 80064e4:	462f      	mov	r7, r5
 80064e6:	4626      	mov	r6, r4
 80064e8:	460d      	mov	r5, r1
 80064ea:	4614      	mov	r4, r2
 80064ec:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80064f0:	eb06 0804 	add.w	r8, r6, r4
 80064f4:	4543      	cmp	r3, r8
 80064f6:	bfb8      	it	lt
 80064f8:	3101      	addlt	r1, #1
 80064fa:	f7ff ff1f 	bl	800633c <_Balloc>
 80064fe:	f100 0914 	add.w	r9, r0, #20
 8006502:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006506:	45f1      	cmp	r9, lr
 8006508:	9000      	str	r0, [sp, #0]
 800650a:	d205      	bcs.n	8006518 <__multiply+0x48>
 800650c:	464b      	mov	r3, r9
 800650e:	2200      	movs	r2, #0
 8006510:	f843 2b04 	str.w	r2, [r3], #4
 8006514:	459e      	cmp	lr, r3
 8006516:	d8fb      	bhi.n	8006510 <__multiply+0x40>
 8006518:	f105 0a14 	add.w	sl, r5, #20
 800651c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006520:	f107 0314 	add.w	r3, r7, #20
 8006524:	45a2      	cmp	sl, r4
 8006526:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800652a:	d261      	bcs.n	80065f0 <__multiply+0x120>
 800652c:	1b64      	subs	r4, r4, r5
 800652e:	3c15      	subs	r4, #21
 8006530:	f024 0403 	bic.w	r4, r4, #3
 8006534:	f8cd e004 	str.w	lr, [sp, #4]
 8006538:	44a2      	add	sl, r4
 800653a:	f105 0210 	add.w	r2, r5, #16
 800653e:	469e      	mov	lr, r3
 8006540:	e005      	b.n	800654e <__multiply+0x7e>
 8006542:	0c2d      	lsrs	r5, r5, #16
 8006544:	d12b      	bne.n	800659e <__multiply+0xce>
 8006546:	4592      	cmp	sl, r2
 8006548:	f109 0904 	add.w	r9, r9, #4
 800654c:	d04e      	beq.n	80065ec <__multiply+0x11c>
 800654e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006552:	fa1f fb85 	uxth.w	fp, r5
 8006556:	f1bb 0f00 	cmp.w	fp, #0
 800655a:	d0f2      	beq.n	8006542 <__multiply+0x72>
 800655c:	4677      	mov	r7, lr
 800655e:	464e      	mov	r6, r9
 8006560:	2000      	movs	r0, #0
 8006562:	e000      	b.n	8006566 <__multiply+0x96>
 8006564:	4626      	mov	r6, r4
 8006566:	f857 1b04 	ldr.w	r1, [r7], #4
 800656a:	6834      	ldr	r4, [r6, #0]
 800656c:	b28b      	uxth	r3, r1
 800656e:	b2a5      	uxth	r5, r4
 8006570:	0c09      	lsrs	r1, r1, #16
 8006572:	0c24      	lsrs	r4, r4, #16
 8006574:	fb0b 5303 	mla	r3, fp, r3, r5
 8006578:	4403      	add	r3, r0
 800657a:	fb0b 4001 	mla	r0, fp, r1, r4
 800657e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006582:	4634      	mov	r4, r6
 8006584:	b29b      	uxth	r3, r3
 8006586:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800658a:	45bc      	cmp	ip, r7
 800658c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006590:	f844 3b04 	str.w	r3, [r4], #4
 8006594:	d8e6      	bhi.n	8006564 <__multiply+0x94>
 8006596:	6070      	str	r0, [r6, #4]
 8006598:	6815      	ldr	r5, [r2, #0]
 800659a:	0c2d      	lsrs	r5, r5, #16
 800659c:	d0d3      	beq.n	8006546 <__multiply+0x76>
 800659e:	f8d9 3000 	ldr.w	r3, [r9]
 80065a2:	4676      	mov	r6, lr
 80065a4:	4618      	mov	r0, r3
 80065a6:	46cb      	mov	fp, r9
 80065a8:	2100      	movs	r1, #0
 80065aa:	e000      	b.n	80065ae <__multiply+0xde>
 80065ac:	46a3      	mov	fp, r4
 80065ae:	8834      	ldrh	r4, [r6, #0]
 80065b0:	0c00      	lsrs	r0, r0, #16
 80065b2:	fb05 0004 	mla	r0, r5, r4, r0
 80065b6:	4401      	add	r1, r0
 80065b8:	b29b      	uxth	r3, r3
 80065ba:	465c      	mov	r4, fp
 80065bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80065c0:	f844 3b04 	str.w	r3, [r4], #4
 80065c4:	f856 3b04 	ldr.w	r3, [r6], #4
 80065c8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80065cc:	0c1b      	lsrs	r3, r3, #16
 80065ce:	b287      	uxth	r7, r0
 80065d0:	fb05 7303 	mla	r3, r5, r3, r7
 80065d4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80065d8:	45b4      	cmp	ip, r6
 80065da:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80065de:	d8e5      	bhi.n	80065ac <__multiply+0xdc>
 80065e0:	4592      	cmp	sl, r2
 80065e2:	f8cb 3004 	str.w	r3, [fp, #4]
 80065e6:	f109 0904 	add.w	r9, r9, #4
 80065ea:	d1b0      	bne.n	800654e <__multiply+0x7e>
 80065ec:	f8dd e004 	ldr.w	lr, [sp, #4]
 80065f0:	f1b8 0f00 	cmp.w	r8, #0
 80065f4:	dd0b      	ble.n	800660e <__multiply+0x13e>
 80065f6:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80065fa:	f1ae 0e04 	sub.w	lr, lr, #4
 80065fe:	b11b      	cbz	r3, 8006608 <__multiply+0x138>
 8006600:	e005      	b.n	800660e <__multiply+0x13e>
 8006602:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006606:	b913      	cbnz	r3, 800660e <__multiply+0x13e>
 8006608:	f1b8 0801 	subs.w	r8, r8, #1
 800660c:	d1f9      	bne.n	8006602 <__multiply+0x132>
 800660e:	9800      	ldr	r0, [sp, #0]
 8006610:	f8c0 8010 	str.w	r8, [r0, #16]
 8006614:	b003      	add	sp, #12
 8006616:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800661a:	bf00      	nop

0800661c <__pow5mult>:
 800661c:	f012 0303 	ands.w	r3, r2, #3
 8006620:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006624:	4614      	mov	r4, r2
 8006626:	4607      	mov	r7, r0
 8006628:	d12e      	bne.n	8006688 <__pow5mult+0x6c>
 800662a:	460d      	mov	r5, r1
 800662c:	10a4      	asrs	r4, r4, #2
 800662e:	d01c      	beq.n	800666a <__pow5mult+0x4e>
 8006630:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006632:	b396      	cbz	r6, 800669a <__pow5mult+0x7e>
 8006634:	07e3      	lsls	r3, r4, #31
 8006636:	f04f 0800 	mov.w	r8, #0
 800663a:	d406      	bmi.n	800664a <__pow5mult+0x2e>
 800663c:	1064      	asrs	r4, r4, #1
 800663e:	d014      	beq.n	800666a <__pow5mult+0x4e>
 8006640:	6830      	ldr	r0, [r6, #0]
 8006642:	b1a8      	cbz	r0, 8006670 <__pow5mult+0x54>
 8006644:	4606      	mov	r6, r0
 8006646:	07e3      	lsls	r3, r4, #31
 8006648:	d5f8      	bpl.n	800663c <__pow5mult+0x20>
 800664a:	4632      	mov	r2, r6
 800664c:	4629      	mov	r1, r5
 800664e:	4638      	mov	r0, r7
 8006650:	f7ff ff3e 	bl	80064d0 <__multiply>
 8006654:	b1b5      	cbz	r5, 8006684 <__pow5mult+0x68>
 8006656:	686a      	ldr	r2, [r5, #4]
 8006658:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800665a:	1064      	asrs	r4, r4, #1
 800665c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006660:	6029      	str	r1, [r5, #0]
 8006662:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006666:	4605      	mov	r5, r0
 8006668:	d1ea      	bne.n	8006640 <__pow5mult+0x24>
 800666a:	4628      	mov	r0, r5
 800666c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006670:	4632      	mov	r2, r6
 8006672:	4631      	mov	r1, r6
 8006674:	4638      	mov	r0, r7
 8006676:	f7ff ff2b 	bl	80064d0 <__multiply>
 800667a:	6030      	str	r0, [r6, #0]
 800667c:	f8c0 8000 	str.w	r8, [r0]
 8006680:	4606      	mov	r6, r0
 8006682:	e7e0      	b.n	8006646 <__pow5mult+0x2a>
 8006684:	4605      	mov	r5, r0
 8006686:	e7d9      	b.n	800663c <__pow5mult+0x20>
 8006688:	3b01      	subs	r3, #1
 800668a:	4a0b      	ldr	r2, [pc, #44]	; (80066b8 <__pow5mult+0x9c>)
 800668c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006690:	2300      	movs	r3, #0
 8006692:	f7ff fe83 	bl	800639c <__multadd>
 8006696:	4605      	mov	r5, r0
 8006698:	e7c8      	b.n	800662c <__pow5mult+0x10>
 800669a:	2101      	movs	r1, #1
 800669c:	4638      	mov	r0, r7
 800669e:	f7ff fe4d 	bl	800633c <_Balloc>
 80066a2:	f240 2371 	movw	r3, #625	; 0x271
 80066a6:	6143      	str	r3, [r0, #20]
 80066a8:	2201      	movs	r2, #1
 80066aa:	2300      	movs	r3, #0
 80066ac:	6102      	str	r2, [r0, #16]
 80066ae:	4606      	mov	r6, r0
 80066b0:	64b8      	str	r0, [r7, #72]	; 0x48
 80066b2:	6003      	str	r3, [r0, #0]
 80066b4:	e7be      	b.n	8006634 <__pow5mult+0x18>
 80066b6:	bf00      	nop
 80066b8:	08007680 	.word	0x08007680

080066bc <__lshift>:
 80066bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80066c0:	4691      	mov	r9, r2
 80066c2:	690a      	ldr	r2, [r1, #16]
 80066c4:	460e      	mov	r6, r1
 80066c6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80066ca:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80066ce:	eb04 0802 	add.w	r8, r4, r2
 80066d2:	f108 0501 	add.w	r5, r8, #1
 80066d6:	429d      	cmp	r5, r3
 80066d8:	4607      	mov	r7, r0
 80066da:	dd04      	ble.n	80066e6 <__lshift+0x2a>
 80066dc:	005b      	lsls	r3, r3, #1
 80066de:	429d      	cmp	r5, r3
 80066e0:	f101 0101 	add.w	r1, r1, #1
 80066e4:	dcfa      	bgt.n	80066dc <__lshift+0x20>
 80066e6:	4638      	mov	r0, r7
 80066e8:	f7ff fe28 	bl	800633c <_Balloc>
 80066ec:	2c00      	cmp	r4, #0
 80066ee:	f100 0314 	add.w	r3, r0, #20
 80066f2:	dd37      	ble.n	8006764 <__lshift+0xa8>
 80066f4:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80066f8:	2200      	movs	r2, #0
 80066fa:	f843 2b04 	str.w	r2, [r3], #4
 80066fe:	428b      	cmp	r3, r1
 8006700:	d1fb      	bne.n	80066fa <__lshift+0x3e>
 8006702:	6934      	ldr	r4, [r6, #16]
 8006704:	f106 0314 	add.w	r3, r6, #20
 8006708:	f019 091f 	ands.w	r9, r9, #31
 800670c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006710:	d020      	beq.n	8006754 <__lshift+0x98>
 8006712:	f1c9 0e20 	rsb	lr, r9, #32
 8006716:	2200      	movs	r2, #0
 8006718:	e000      	b.n	800671c <__lshift+0x60>
 800671a:	4651      	mov	r1, sl
 800671c:	681c      	ldr	r4, [r3, #0]
 800671e:	468a      	mov	sl, r1
 8006720:	fa04 f409 	lsl.w	r4, r4, r9
 8006724:	4314      	orrs	r4, r2
 8006726:	f84a 4b04 	str.w	r4, [sl], #4
 800672a:	f853 2b04 	ldr.w	r2, [r3], #4
 800672e:	4563      	cmp	r3, ip
 8006730:	fa22 f20e 	lsr.w	r2, r2, lr
 8006734:	d3f1      	bcc.n	800671a <__lshift+0x5e>
 8006736:	604a      	str	r2, [r1, #4]
 8006738:	b10a      	cbz	r2, 800673e <__lshift+0x82>
 800673a:	f108 0502 	add.w	r5, r8, #2
 800673e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006740:	6872      	ldr	r2, [r6, #4]
 8006742:	3d01      	subs	r5, #1
 8006744:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006748:	6105      	str	r5, [r0, #16]
 800674a:	6031      	str	r1, [r6, #0]
 800674c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006750:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006754:	3904      	subs	r1, #4
 8006756:	f853 2b04 	ldr.w	r2, [r3], #4
 800675a:	f841 2f04 	str.w	r2, [r1, #4]!
 800675e:	459c      	cmp	ip, r3
 8006760:	d8f9      	bhi.n	8006756 <__lshift+0x9a>
 8006762:	e7ec      	b.n	800673e <__lshift+0x82>
 8006764:	4619      	mov	r1, r3
 8006766:	e7cc      	b.n	8006702 <__lshift+0x46>

08006768 <__mcmp>:
 8006768:	b430      	push	{r4, r5}
 800676a:	690b      	ldr	r3, [r1, #16]
 800676c:	4605      	mov	r5, r0
 800676e:	6900      	ldr	r0, [r0, #16]
 8006770:	1ac0      	subs	r0, r0, r3
 8006772:	d10f      	bne.n	8006794 <__mcmp+0x2c>
 8006774:	009b      	lsls	r3, r3, #2
 8006776:	3514      	adds	r5, #20
 8006778:	3114      	adds	r1, #20
 800677a:	4419      	add	r1, r3
 800677c:	442b      	add	r3, r5
 800677e:	e001      	b.n	8006784 <__mcmp+0x1c>
 8006780:	429d      	cmp	r5, r3
 8006782:	d207      	bcs.n	8006794 <__mcmp+0x2c>
 8006784:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006788:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800678c:	4294      	cmp	r4, r2
 800678e:	d0f7      	beq.n	8006780 <__mcmp+0x18>
 8006790:	d302      	bcc.n	8006798 <__mcmp+0x30>
 8006792:	2001      	movs	r0, #1
 8006794:	bc30      	pop	{r4, r5}
 8006796:	4770      	bx	lr
 8006798:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800679c:	e7fa      	b.n	8006794 <__mcmp+0x2c>
 800679e:	bf00      	nop

080067a0 <__mdiff>:
 80067a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80067a4:	6913      	ldr	r3, [r2, #16]
 80067a6:	690d      	ldr	r5, [r1, #16]
 80067a8:	1aed      	subs	r5, r5, r3
 80067aa:	2d00      	cmp	r5, #0
 80067ac:	460e      	mov	r6, r1
 80067ae:	4690      	mov	r8, r2
 80067b0:	f101 0414 	add.w	r4, r1, #20
 80067b4:	f102 0714 	add.w	r7, r2, #20
 80067b8:	d114      	bne.n	80067e4 <__mdiff+0x44>
 80067ba:	009b      	lsls	r3, r3, #2
 80067bc:	18e2      	adds	r2, r4, r3
 80067be:	443b      	add	r3, r7
 80067c0:	e001      	b.n	80067c6 <__mdiff+0x26>
 80067c2:	42a2      	cmp	r2, r4
 80067c4:	d959      	bls.n	800687a <__mdiff+0xda>
 80067c6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80067ca:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80067ce:	458c      	cmp	ip, r1
 80067d0:	d0f7      	beq.n	80067c2 <__mdiff+0x22>
 80067d2:	d209      	bcs.n	80067e8 <__mdiff+0x48>
 80067d4:	4622      	mov	r2, r4
 80067d6:	4633      	mov	r3, r6
 80067d8:	463c      	mov	r4, r7
 80067da:	4646      	mov	r6, r8
 80067dc:	4617      	mov	r7, r2
 80067de:	4698      	mov	r8, r3
 80067e0:	2501      	movs	r5, #1
 80067e2:	e001      	b.n	80067e8 <__mdiff+0x48>
 80067e4:	dbf6      	blt.n	80067d4 <__mdiff+0x34>
 80067e6:	2500      	movs	r5, #0
 80067e8:	6871      	ldr	r1, [r6, #4]
 80067ea:	f7ff fda7 	bl	800633c <_Balloc>
 80067ee:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80067f2:	6936      	ldr	r6, [r6, #16]
 80067f4:	60c5      	str	r5, [r0, #12]
 80067f6:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80067fa:	46bc      	mov	ip, r7
 80067fc:	f100 0514 	add.w	r5, r0, #20
 8006800:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006804:	2300      	movs	r3, #0
 8006806:	f85c 1b04 	ldr.w	r1, [ip], #4
 800680a:	f854 8b04 	ldr.w	r8, [r4], #4
 800680e:	b28a      	uxth	r2, r1
 8006810:	fa13 f388 	uxtah	r3, r3, r8
 8006814:	0c09      	lsrs	r1, r1, #16
 8006816:	1a9a      	subs	r2, r3, r2
 8006818:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800681c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006820:	b292      	uxth	r2, r2
 8006822:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006826:	45e6      	cmp	lr, ip
 8006828:	f845 2b04 	str.w	r2, [r5], #4
 800682c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006830:	d8e9      	bhi.n	8006806 <__mdiff+0x66>
 8006832:	42a7      	cmp	r7, r4
 8006834:	d917      	bls.n	8006866 <__mdiff+0xc6>
 8006836:	46ae      	mov	lr, r5
 8006838:	46a4      	mov	ip, r4
 800683a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800683e:	fa13 f382 	uxtah	r3, r3, r2
 8006842:	1419      	asrs	r1, r3, #16
 8006844:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006848:	b29b      	uxth	r3, r3
 800684a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800684e:	4567      	cmp	r7, ip
 8006850:	f84e 2b04 	str.w	r2, [lr], #4
 8006854:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006858:	d8ef      	bhi.n	800683a <__mdiff+0x9a>
 800685a:	43e4      	mvns	r4, r4
 800685c:	4427      	add	r7, r4
 800685e:	f027 0703 	bic.w	r7, r7, #3
 8006862:	3704      	adds	r7, #4
 8006864:	443d      	add	r5, r7
 8006866:	3d04      	subs	r5, #4
 8006868:	b922      	cbnz	r2, 8006874 <__mdiff+0xd4>
 800686a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800686e:	3e01      	subs	r6, #1
 8006870:	2b00      	cmp	r3, #0
 8006872:	d0fa      	beq.n	800686a <__mdiff+0xca>
 8006874:	6106      	str	r6, [r0, #16]
 8006876:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800687a:	2100      	movs	r1, #0
 800687c:	f7ff fd5e 	bl	800633c <_Balloc>
 8006880:	2201      	movs	r2, #1
 8006882:	2300      	movs	r3, #0
 8006884:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006888:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800688c <__d2b>:
 800688c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006890:	460f      	mov	r7, r1
 8006892:	b083      	sub	sp, #12
 8006894:	2101      	movs	r1, #1
 8006896:	ec55 4b10 	vmov	r4, r5, d0
 800689a:	4616      	mov	r6, r2
 800689c:	f7ff fd4e 	bl	800633c <_Balloc>
 80068a0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80068a4:	4681      	mov	r9, r0
 80068a6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80068aa:	f1b8 0f00 	cmp.w	r8, #0
 80068ae:	d001      	beq.n	80068b4 <__d2b+0x28>
 80068b0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80068b4:	2c00      	cmp	r4, #0
 80068b6:	9301      	str	r3, [sp, #4]
 80068b8:	d024      	beq.n	8006904 <__d2b+0x78>
 80068ba:	a802      	add	r0, sp, #8
 80068bc:	f840 4d08 	str.w	r4, [r0, #-8]!
 80068c0:	f7ff fdcc 	bl	800645c <__lo0bits>
 80068c4:	2800      	cmp	r0, #0
 80068c6:	d136      	bne.n	8006936 <__d2b+0xaa>
 80068c8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80068cc:	f8c9 2014 	str.w	r2, [r9, #20]
 80068d0:	2b00      	cmp	r3, #0
 80068d2:	bf0c      	ite	eq
 80068d4:	2101      	moveq	r1, #1
 80068d6:	2102      	movne	r1, #2
 80068d8:	f8c9 3018 	str.w	r3, [r9, #24]
 80068dc:	f8c9 1010 	str.w	r1, [r9, #16]
 80068e0:	f1b8 0f00 	cmp.w	r8, #0
 80068e4:	d11b      	bne.n	800691e <__d2b+0x92>
 80068e6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80068ea:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80068ee:	6038      	str	r0, [r7, #0]
 80068f0:	6918      	ldr	r0, [r3, #16]
 80068f2:	f7ff fd93 	bl	800641c <__hi0bits>
 80068f6:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80068fa:	6030      	str	r0, [r6, #0]
 80068fc:	4648      	mov	r0, r9
 80068fe:	b003      	add	sp, #12
 8006900:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006904:	a801      	add	r0, sp, #4
 8006906:	f7ff fda9 	bl	800645c <__lo0bits>
 800690a:	9b01      	ldr	r3, [sp, #4]
 800690c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006910:	2101      	movs	r1, #1
 8006912:	3020      	adds	r0, #32
 8006914:	f8c9 1010 	str.w	r1, [r9, #16]
 8006918:	f1b8 0f00 	cmp.w	r8, #0
 800691c:	d0e3      	beq.n	80068e6 <__d2b+0x5a>
 800691e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006922:	eb08 0300 	add.w	r3, r8, r0
 8006926:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800692a:	603b      	str	r3, [r7, #0]
 800692c:	6030      	str	r0, [r6, #0]
 800692e:	4648      	mov	r0, r9
 8006930:	b003      	add	sp, #12
 8006932:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006936:	e9dd 1300 	ldrd	r1, r3, [sp]
 800693a:	f1c0 0220 	rsb	r2, r0, #32
 800693e:	fa03 f202 	lsl.w	r2, r3, r2
 8006942:	430a      	orrs	r2, r1
 8006944:	40c3      	lsrs	r3, r0
 8006946:	9301      	str	r3, [sp, #4]
 8006948:	f8c9 2014 	str.w	r2, [r9, #20]
 800694c:	e7c0      	b.n	80068d0 <__d2b+0x44>
 800694e:	bf00      	nop

08006950 <_realloc_r>:
 8006950:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006954:	4692      	mov	sl, r2
 8006956:	b083      	sub	sp, #12
 8006958:	2900      	cmp	r1, #0
 800695a:	f000 80a1 	beq.w	8006aa0 <_realloc_r+0x150>
 800695e:	460d      	mov	r5, r1
 8006960:	4680      	mov	r8, r0
 8006962:	f10a 040b 	add.w	r4, sl, #11
 8006966:	f7fc f993 	bl	8002c90 <__malloc_lock>
 800696a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800696e:	2c16      	cmp	r4, #22
 8006970:	f022 0603 	bic.w	r6, r2, #3
 8006974:	f1a5 0708 	sub.w	r7, r5, #8
 8006978:	d83e      	bhi.n	80069f8 <_realloc_r+0xa8>
 800697a:	2410      	movs	r4, #16
 800697c:	4621      	mov	r1, r4
 800697e:	45a2      	cmp	sl, r4
 8006980:	d83f      	bhi.n	8006a02 <_realloc_r+0xb2>
 8006982:	428e      	cmp	r6, r1
 8006984:	eb07 0906 	add.w	r9, r7, r6
 8006988:	da74      	bge.n	8006a74 <_realloc_r+0x124>
 800698a:	4bc7      	ldr	r3, [pc, #796]	; (8006ca8 <_realloc_r+0x358>)
 800698c:	6898      	ldr	r0, [r3, #8]
 800698e:	4548      	cmp	r0, r9
 8006990:	f000 80aa 	beq.w	8006ae8 <_realloc_r+0x198>
 8006994:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006998:	f020 0301 	bic.w	r3, r0, #1
 800699c:	444b      	add	r3, r9
 800699e:	685b      	ldr	r3, [r3, #4]
 80069a0:	07db      	lsls	r3, r3, #31
 80069a2:	f140 8083 	bpl.w	8006aac <_realloc_r+0x15c>
 80069a6:	07d2      	lsls	r2, r2, #31
 80069a8:	d534      	bpl.n	8006a14 <_realloc_r+0xc4>
 80069aa:	4651      	mov	r1, sl
 80069ac:	4640      	mov	r0, r8
 80069ae:	f7fb fe81 	bl	80026b4 <_malloc_r>
 80069b2:	4682      	mov	sl, r0
 80069b4:	b1e0      	cbz	r0, 80069f0 <_realloc_r+0xa0>
 80069b6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80069ba:	f023 0301 	bic.w	r3, r3, #1
 80069be:	443b      	add	r3, r7
 80069c0:	f1a0 0208 	sub.w	r2, r0, #8
 80069c4:	4293      	cmp	r3, r2
 80069c6:	f000 80f9 	beq.w	8006bbc <_realloc_r+0x26c>
 80069ca:	1f32      	subs	r2, r6, #4
 80069cc:	2a24      	cmp	r2, #36	; 0x24
 80069ce:	f200 8107 	bhi.w	8006be0 <_realloc_r+0x290>
 80069d2:	2a13      	cmp	r2, #19
 80069d4:	6829      	ldr	r1, [r5, #0]
 80069d6:	f200 80e6 	bhi.w	8006ba6 <_realloc_r+0x256>
 80069da:	4603      	mov	r3, r0
 80069dc:	462a      	mov	r2, r5
 80069de:	6019      	str	r1, [r3, #0]
 80069e0:	6851      	ldr	r1, [r2, #4]
 80069e2:	6059      	str	r1, [r3, #4]
 80069e4:	6892      	ldr	r2, [r2, #8]
 80069e6:	609a      	str	r2, [r3, #8]
 80069e8:	4629      	mov	r1, r5
 80069ea:	4640      	mov	r0, r8
 80069ec:	f7ff f918 	bl	8005c20 <_free_r>
 80069f0:	4640      	mov	r0, r8
 80069f2:	f7fc f953 	bl	8002c9c <__malloc_unlock>
 80069f6:	e04f      	b.n	8006a98 <_realloc_r+0x148>
 80069f8:	f024 0407 	bic.w	r4, r4, #7
 80069fc:	2c00      	cmp	r4, #0
 80069fe:	4621      	mov	r1, r4
 8006a00:	dabd      	bge.n	800697e <_realloc_r+0x2e>
 8006a02:	f04f 0a00 	mov.w	sl, #0
 8006a06:	230c      	movs	r3, #12
 8006a08:	4650      	mov	r0, sl
 8006a0a:	f8c8 3000 	str.w	r3, [r8]
 8006a0e:	b003      	add	sp, #12
 8006a10:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a14:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006a18:	eba7 0b03 	sub.w	fp, r7, r3
 8006a1c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a20:	f022 0203 	bic.w	r2, r2, #3
 8006a24:	18b3      	adds	r3, r6, r2
 8006a26:	428b      	cmp	r3, r1
 8006a28:	dbbf      	blt.n	80069aa <_realloc_r+0x5a>
 8006a2a:	46da      	mov	sl, fp
 8006a2c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006a30:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006a34:	1f32      	subs	r2, r6, #4
 8006a36:	2a24      	cmp	r2, #36	; 0x24
 8006a38:	60c1      	str	r1, [r0, #12]
 8006a3a:	eb0b 0903 	add.w	r9, fp, r3
 8006a3e:	6088      	str	r0, [r1, #8]
 8006a40:	f200 80c6 	bhi.w	8006bd0 <_realloc_r+0x280>
 8006a44:	2a13      	cmp	r2, #19
 8006a46:	6829      	ldr	r1, [r5, #0]
 8006a48:	f240 80c0 	bls.w	8006bcc <_realloc_r+0x27c>
 8006a4c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006a50:	6869      	ldr	r1, [r5, #4]
 8006a52:	f8cb 100c 	str.w	r1, [fp, #12]
 8006a56:	2a1b      	cmp	r2, #27
 8006a58:	68a9      	ldr	r1, [r5, #8]
 8006a5a:	f200 80d8 	bhi.w	8006c0e <_realloc_r+0x2be>
 8006a5e:	f10b 0210 	add.w	r2, fp, #16
 8006a62:	3508      	adds	r5, #8
 8006a64:	6011      	str	r1, [r2, #0]
 8006a66:	6869      	ldr	r1, [r5, #4]
 8006a68:	6051      	str	r1, [r2, #4]
 8006a6a:	68a9      	ldr	r1, [r5, #8]
 8006a6c:	6091      	str	r1, [r2, #8]
 8006a6e:	461e      	mov	r6, r3
 8006a70:	465f      	mov	r7, fp
 8006a72:	4655      	mov	r5, sl
 8006a74:	687b      	ldr	r3, [r7, #4]
 8006a76:	1b32      	subs	r2, r6, r4
 8006a78:	2a0f      	cmp	r2, #15
 8006a7a:	f003 0301 	and.w	r3, r3, #1
 8006a7e:	d822      	bhi.n	8006ac6 <_realloc_r+0x176>
 8006a80:	4333      	orrs	r3, r6
 8006a82:	607b      	str	r3, [r7, #4]
 8006a84:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006a88:	f043 0301 	orr.w	r3, r3, #1
 8006a8c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006a90:	4640      	mov	r0, r8
 8006a92:	f7fc f903 	bl	8002c9c <__malloc_unlock>
 8006a96:	46aa      	mov	sl, r5
 8006a98:	4650      	mov	r0, sl
 8006a9a:	b003      	add	sp, #12
 8006a9c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006aa0:	4611      	mov	r1, r2
 8006aa2:	b003      	add	sp, #12
 8006aa4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006aa8:	f7fb be04 	b.w	80026b4 <_malloc_r>
 8006aac:	f020 0003 	bic.w	r0, r0, #3
 8006ab0:	1833      	adds	r3, r6, r0
 8006ab2:	428b      	cmp	r3, r1
 8006ab4:	db61      	blt.n	8006b7a <_realloc_r+0x22a>
 8006ab6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006aba:	461e      	mov	r6, r3
 8006abc:	60ca      	str	r2, [r1, #12]
 8006abe:	eb07 0903 	add.w	r9, r7, r3
 8006ac2:	6091      	str	r1, [r2, #8]
 8006ac4:	e7d6      	b.n	8006a74 <_realloc_r+0x124>
 8006ac6:	1939      	adds	r1, r7, r4
 8006ac8:	4323      	orrs	r3, r4
 8006aca:	f042 0201 	orr.w	r2, r2, #1
 8006ace:	607b      	str	r3, [r7, #4]
 8006ad0:	604a      	str	r2, [r1, #4]
 8006ad2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006ad6:	f043 0301 	orr.w	r3, r3, #1
 8006ada:	3108      	adds	r1, #8
 8006adc:	f8c9 3004 	str.w	r3, [r9, #4]
 8006ae0:	4640      	mov	r0, r8
 8006ae2:	f7ff f89d 	bl	8005c20 <_free_r>
 8006ae6:	e7d3      	b.n	8006a90 <_realloc_r+0x140>
 8006ae8:	6840      	ldr	r0, [r0, #4]
 8006aea:	f020 0903 	bic.w	r9, r0, #3
 8006aee:	44b1      	add	r9, r6
 8006af0:	f104 0010 	add.w	r0, r4, #16
 8006af4:	4581      	cmp	r9, r0
 8006af6:	da77      	bge.n	8006be8 <_realloc_r+0x298>
 8006af8:	07d2      	lsls	r2, r2, #31
 8006afa:	f53f af56 	bmi.w	80069aa <_realloc_r+0x5a>
 8006afe:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006b02:	eba7 0b02 	sub.w	fp, r7, r2
 8006b06:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006b0a:	f022 0203 	bic.w	r2, r2, #3
 8006b0e:	4491      	add	r9, r2
 8006b10:	4548      	cmp	r0, r9
 8006b12:	dc87      	bgt.n	8006a24 <_realloc_r+0xd4>
 8006b14:	46da      	mov	sl, fp
 8006b16:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006b1a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006b1e:	1f32      	subs	r2, r6, #4
 8006b20:	2a24      	cmp	r2, #36	; 0x24
 8006b22:	60c1      	str	r1, [r0, #12]
 8006b24:	6088      	str	r0, [r1, #8]
 8006b26:	f200 80a1 	bhi.w	8006c6c <_realloc_r+0x31c>
 8006b2a:	2a13      	cmp	r2, #19
 8006b2c:	6829      	ldr	r1, [r5, #0]
 8006b2e:	f240 809b 	bls.w	8006c68 <_realloc_r+0x318>
 8006b32:	f8cb 1008 	str.w	r1, [fp, #8]
 8006b36:	6869      	ldr	r1, [r5, #4]
 8006b38:	f8cb 100c 	str.w	r1, [fp, #12]
 8006b3c:	2a1b      	cmp	r2, #27
 8006b3e:	68a9      	ldr	r1, [r5, #8]
 8006b40:	f200 809b 	bhi.w	8006c7a <_realloc_r+0x32a>
 8006b44:	f10b 0210 	add.w	r2, fp, #16
 8006b48:	3508      	adds	r5, #8
 8006b4a:	6011      	str	r1, [r2, #0]
 8006b4c:	6869      	ldr	r1, [r5, #4]
 8006b4e:	6051      	str	r1, [r2, #4]
 8006b50:	68a9      	ldr	r1, [r5, #8]
 8006b52:	6091      	str	r1, [r2, #8]
 8006b54:	eb0b 0104 	add.w	r1, fp, r4
 8006b58:	eba9 0204 	sub.w	r2, r9, r4
 8006b5c:	f042 0201 	orr.w	r2, r2, #1
 8006b60:	6099      	str	r1, [r3, #8]
 8006b62:	604a      	str	r2, [r1, #4]
 8006b64:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006b68:	f003 0301 	and.w	r3, r3, #1
 8006b6c:	431c      	orrs	r4, r3
 8006b6e:	4640      	mov	r0, r8
 8006b70:	f8cb 4004 	str.w	r4, [fp, #4]
 8006b74:	f7fc f892 	bl	8002c9c <__malloc_unlock>
 8006b78:	e78e      	b.n	8006a98 <_realloc_r+0x148>
 8006b7a:	07d3      	lsls	r3, r2, #31
 8006b7c:	f53f af15 	bmi.w	80069aa <_realloc_r+0x5a>
 8006b80:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006b84:	eba7 0b03 	sub.w	fp, r7, r3
 8006b88:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006b8c:	f022 0203 	bic.w	r2, r2, #3
 8006b90:	4410      	add	r0, r2
 8006b92:	1983      	adds	r3, r0, r6
 8006b94:	428b      	cmp	r3, r1
 8006b96:	f6ff af45 	blt.w	8006a24 <_realloc_r+0xd4>
 8006b9a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006b9e:	46da      	mov	sl, fp
 8006ba0:	60ca      	str	r2, [r1, #12]
 8006ba2:	6091      	str	r1, [r2, #8]
 8006ba4:	e742      	b.n	8006a2c <_realloc_r+0xdc>
 8006ba6:	6001      	str	r1, [r0, #0]
 8006ba8:	686b      	ldr	r3, [r5, #4]
 8006baa:	6043      	str	r3, [r0, #4]
 8006bac:	2a1b      	cmp	r2, #27
 8006bae:	d83a      	bhi.n	8006c26 <_realloc_r+0x2d6>
 8006bb0:	f105 0208 	add.w	r2, r5, #8
 8006bb4:	f100 0308 	add.w	r3, r0, #8
 8006bb8:	68a9      	ldr	r1, [r5, #8]
 8006bba:	e710      	b.n	80069de <_realloc_r+0x8e>
 8006bbc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006bc0:	f023 0303 	bic.w	r3, r3, #3
 8006bc4:	441e      	add	r6, r3
 8006bc6:	eb07 0906 	add.w	r9, r7, r6
 8006bca:	e753      	b.n	8006a74 <_realloc_r+0x124>
 8006bcc:	4652      	mov	r2, sl
 8006bce:	e749      	b.n	8006a64 <_realloc_r+0x114>
 8006bd0:	4629      	mov	r1, r5
 8006bd2:	4650      	mov	r0, sl
 8006bd4:	461e      	mov	r6, r3
 8006bd6:	465f      	mov	r7, fp
 8006bd8:	f7ff fb4c 	bl	8006274 <memmove>
 8006bdc:	4655      	mov	r5, sl
 8006bde:	e749      	b.n	8006a74 <_realloc_r+0x124>
 8006be0:	4629      	mov	r1, r5
 8006be2:	f7ff fb47 	bl	8006274 <memmove>
 8006be6:	e6ff      	b.n	80069e8 <_realloc_r+0x98>
 8006be8:	4427      	add	r7, r4
 8006bea:	eba9 0904 	sub.w	r9, r9, r4
 8006bee:	f049 0201 	orr.w	r2, r9, #1
 8006bf2:	609f      	str	r7, [r3, #8]
 8006bf4:	607a      	str	r2, [r7, #4]
 8006bf6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006bfa:	f003 0301 	and.w	r3, r3, #1
 8006bfe:	431c      	orrs	r4, r3
 8006c00:	4640      	mov	r0, r8
 8006c02:	f845 4c04 	str.w	r4, [r5, #-4]
 8006c06:	f7fc f849 	bl	8002c9c <__malloc_unlock>
 8006c0a:	46aa      	mov	sl, r5
 8006c0c:	e744      	b.n	8006a98 <_realloc_r+0x148>
 8006c0e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006c12:	68e9      	ldr	r1, [r5, #12]
 8006c14:	f8cb 1014 	str.w	r1, [fp, #20]
 8006c18:	2a24      	cmp	r2, #36	; 0x24
 8006c1a:	d010      	beq.n	8006c3e <_realloc_r+0x2ee>
 8006c1c:	6929      	ldr	r1, [r5, #16]
 8006c1e:	f10b 0218 	add.w	r2, fp, #24
 8006c22:	3510      	adds	r5, #16
 8006c24:	e71e      	b.n	8006a64 <_realloc_r+0x114>
 8006c26:	68ab      	ldr	r3, [r5, #8]
 8006c28:	6083      	str	r3, [r0, #8]
 8006c2a:	68eb      	ldr	r3, [r5, #12]
 8006c2c:	60c3      	str	r3, [r0, #12]
 8006c2e:	2a24      	cmp	r2, #36	; 0x24
 8006c30:	d010      	beq.n	8006c54 <_realloc_r+0x304>
 8006c32:	f105 0210 	add.w	r2, r5, #16
 8006c36:	f100 0310 	add.w	r3, r0, #16
 8006c3a:	6929      	ldr	r1, [r5, #16]
 8006c3c:	e6cf      	b.n	80069de <_realloc_r+0x8e>
 8006c3e:	692a      	ldr	r2, [r5, #16]
 8006c40:	f8cb 2018 	str.w	r2, [fp, #24]
 8006c44:	696a      	ldr	r2, [r5, #20]
 8006c46:	f8cb 201c 	str.w	r2, [fp, #28]
 8006c4a:	69a9      	ldr	r1, [r5, #24]
 8006c4c:	f10b 0220 	add.w	r2, fp, #32
 8006c50:	3518      	adds	r5, #24
 8006c52:	e707      	b.n	8006a64 <_realloc_r+0x114>
 8006c54:	692b      	ldr	r3, [r5, #16]
 8006c56:	6103      	str	r3, [r0, #16]
 8006c58:	696b      	ldr	r3, [r5, #20]
 8006c5a:	6143      	str	r3, [r0, #20]
 8006c5c:	69a9      	ldr	r1, [r5, #24]
 8006c5e:	f105 0218 	add.w	r2, r5, #24
 8006c62:	f100 0318 	add.w	r3, r0, #24
 8006c66:	e6ba      	b.n	80069de <_realloc_r+0x8e>
 8006c68:	4652      	mov	r2, sl
 8006c6a:	e76e      	b.n	8006b4a <_realloc_r+0x1fa>
 8006c6c:	4629      	mov	r1, r5
 8006c6e:	4650      	mov	r0, sl
 8006c70:	9301      	str	r3, [sp, #4]
 8006c72:	f7ff faff 	bl	8006274 <memmove>
 8006c76:	9b01      	ldr	r3, [sp, #4]
 8006c78:	e76c      	b.n	8006b54 <_realloc_r+0x204>
 8006c7a:	f8cb 1010 	str.w	r1, [fp, #16]
 8006c7e:	68e9      	ldr	r1, [r5, #12]
 8006c80:	f8cb 1014 	str.w	r1, [fp, #20]
 8006c84:	2a24      	cmp	r2, #36	; 0x24
 8006c86:	d004      	beq.n	8006c92 <_realloc_r+0x342>
 8006c88:	6929      	ldr	r1, [r5, #16]
 8006c8a:	f10b 0218 	add.w	r2, fp, #24
 8006c8e:	3510      	adds	r5, #16
 8006c90:	e75b      	b.n	8006b4a <_realloc_r+0x1fa>
 8006c92:	692a      	ldr	r2, [r5, #16]
 8006c94:	f8cb 2018 	str.w	r2, [fp, #24]
 8006c98:	696a      	ldr	r2, [r5, #20]
 8006c9a:	f8cb 201c 	str.w	r2, [fp, #28]
 8006c9e:	69a9      	ldr	r1, [r5, #24]
 8006ca0:	f10b 0220 	add.w	r2, fp, #32
 8006ca4:	3518      	adds	r5, #24
 8006ca6:	e750      	b.n	8006b4a <_realloc_r+0x1fa>
 8006ca8:	200005d8 	.word	0x200005d8

08006cac <frexp>:
 8006cac:	ec53 2b10 	vmov	r2, r3, d0
 8006cb0:	b570      	push	{r4, r5, r6, lr}
 8006cb2:	4e16      	ldr	r6, [pc, #88]	; (8006d0c <frexp+0x60>)
 8006cb4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006cb8:	2500      	movs	r5, #0
 8006cba:	42b1      	cmp	r1, r6
 8006cbc:	4604      	mov	r4, r0
 8006cbe:	6005      	str	r5, [r0, #0]
 8006cc0:	dc21      	bgt.n	8006d06 <frexp+0x5a>
 8006cc2:	ee10 6a10 	vmov	r6, s0
 8006cc6:	430e      	orrs	r6, r1
 8006cc8:	d01d      	beq.n	8006d06 <frexp+0x5a>
 8006cca:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006cce:	4618      	mov	r0, r3
 8006cd0:	da0c      	bge.n	8006cec <frexp+0x40>
 8006cd2:	4619      	mov	r1, r3
 8006cd4:	2200      	movs	r2, #0
 8006cd6:	ee10 0a10 	vmov	r0, s0
 8006cda:	4b0d      	ldr	r3, [pc, #52]	; (8006d10 <frexp+0x64>)
 8006cdc:	f7f9 ff2c 	bl	8000b38 <__aeabi_dmul>
 8006ce0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006ce4:	4602      	mov	r2, r0
 8006ce6:	4608      	mov	r0, r1
 8006ce8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006cec:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006cf0:	1509      	asrs	r1, r1, #20
 8006cf2:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006cf6:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006cfa:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006cfe:	4429      	add	r1, r5
 8006d00:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006d04:	6021      	str	r1, [r4, #0]
 8006d06:	ec43 2b10 	vmov	d0, r2, r3
 8006d0a:	bd70      	pop	{r4, r5, r6, pc}
 8006d0c:	7fefffff 	.word	0x7fefffff
 8006d10:	43500000 	.word	0x43500000

08006d14 <__sread>:
 8006d14:	b510      	push	{r4, lr}
 8006d16:	460c      	mov	r4, r1
 8006d18:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d1c:	f000 fabc 	bl	8007298 <_read_r>
 8006d20:	2800      	cmp	r0, #0
 8006d22:	db03      	blt.n	8006d2c <__sread+0x18>
 8006d24:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006d26:	4403      	add	r3, r0
 8006d28:	6523      	str	r3, [r4, #80]	; 0x50
 8006d2a:	bd10      	pop	{r4, pc}
 8006d2c:	89a3      	ldrh	r3, [r4, #12]
 8006d2e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006d32:	81a3      	strh	r3, [r4, #12]
 8006d34:	bd10      	pop	{r4, pc}
 8006d36:	bf00      	nop

08006d38 <__swrite>:
 8006d38:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006d3c:	4616      	mov	r6, r2
 8006d3e:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006d42:	461f      	mov	r7, r3
 8006d44:	05d3      	lsls	r3, r2, #23
 8006d46:	460c      	mov	r4, r1
 8006d48:	4605      	mov	r5, r0
 8006d4a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d4e:	d507      	bpl.n	8006d60 <__swrite+0x28>
 8006d50:	2200      	movs	r2, #0
 8006d52:	2302      	movs	r3, #2
 8006d54:	f000 fa74 	bl	8007240 <_lseek_r>
 8006d58:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006d5c:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006d60:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006d64:	81a2      	strh	r2, [r4, #12]
 8006d66:	463b      	mov	r3, r7
 8006d68:	4632      	mov	r2, r6
 8006d6a:	4628      	mov	r0, r5
 8006d6c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006d70:	f000 b88c 	b.w	8006e8c <_write_r>

08006d74 <__sseek>:
 8006d74:	b510      	push	{r4, lr}
 8006d76:	460c      	mov	r4, r1
 8006d78:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d7c:	f000 fa60 	bl	8007240 <_lseek_r>
 8006d80:	89a3      	ldrh	r3, [r4, #12]
 8006d82:	1c42      	adds	r2, r0, #1
 8006d84:	bf0e      	itee	eq
 8006d86:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006d8a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006d8e:	6520      	strne	r0, [r4, #80]	; 0x50
 8006d90:	81a3      	strh	r3, [r4, #12]
 8006d92:	bd10      	pop	{r4, pc}

08006d94 <__sclose>:
 8006d94:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d98:	f000 b922 	b.w	8006fe0 <_close_r>

08006d9c <strncpy>:
 8006d9c:	ea40 0301 	orr.w	r3, r0, r1
 8006da0:	079b      	lsls	r3, r3, #30
 8006da2:	b470      	push	{r4, r5, r6}
 8006da4:	d12a      	bne.n	8006dfc <strncpy+0x60>
 8006da6:	2a03      	cmp	r2, #3
 8006da8:	d928      	bls.n	8006dfc <strncpy+0x60>
 8006daa:	460c      	mov	r4, r1
 8006dac:	4603      	mov	r3, r0
 8006dae:	4621      	mov	r1, r4
 8006db0:	f854 6b04 	ldr.w	r6, [r4], #4
 8006db4:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006db8:	ea25 0506 	bic.w	r5, r5, r6
 8006dbc:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006dc0:	d106      	bne.n	8006dd0 <strncpy+0x34>
 8006dc2:	3a04      	subs	r2, #4
 8006dc4:	2a03      	cmp	r2, #3
 8006dc6:	f843 6b04 	str.w	r6, [r3], #4
 8006dca:	4621      	mov	r1, r4
 8006dcc:	d8ef      	bhi.n	8006dae <strncpy+0x12>
 8006dce:	b19a      	cbz	r2, 8006df8 <strncpy+0x5c>
 8006dd0:	780c      	ldrb	r4, [r1, #0]
 8006dd2:	701c      	strb	r4, [r3, #0]
 8006dd4:	3a01      	subs	r2, #1
 8006dd6:	3301      	adds	r3, #1
 8006dd8:	b13c      	cbz	r4, 8006dea <strncpy+0x4e>
 8006dda:	b16a      	cbz	r2, 8006df8 <strncpy+0x5c>
 8006ddc:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006de0:	f803 4b01 	strb.w	r4, [r3], #1
 8006de4:	3a01      	subs	r2, #1
 8006de6:	2c00      	cmp	r4, #0
 8006de8:	d1f7      	bne.n	8006dda <strncpy+0x3e>
 8006dea:	b12a      	cbz	r2, 8006df8 <strncpy+0x5c>
 8006dec:	441a      	add	r2, r3
 8006dee:	2100      	movs	r1, #0
 8006df0:	f803 1b01 	strb.w	r1, [r3], #1
 8006df4:	4293      	cmp	r3, r2
 8006df6:	d1fb      	bne.n	8006df0 <strncpy+0x54>
 8006df8:	bc70      	pop	{r4, r5, r6}
 8006dfa:	4770      	bx	lr
 8006dfc:	4603      	mov	r3, r0
 8006dfe:	e7e6      	b.n	8006dce <strncpy+0x32>

08006e00 <__sprint_r.part.0>:
 8006e00:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006e04:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006e06:	049c      	lsls	r4, r3, #18
 8006e08:	4692      	mov	sl, r2
 8006e0a:	d52d      	bpl.n	8006e68 <__sprint_r.part.0+0x68>
 8006e0c:	6893      	ldr	r3, [r2, #8]
 8006e0e:	6812      	ldr	r2, [r2, #0]
 8006e10:	b343      	cbz	r3, 8006e64 <__sprint_r.part.0+0x64>
 8006e12:	460e      	mov	r6, r1
 8006e14:	4607      	mov	r7, r0
 8006e16:	f102 0908 	add.w	r9, r2, #8
 8006e1a:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006e1e:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006e22:	d015      	beq.n	8006e50 <__sprint_r.part.0+0x50>
 8006e24:	3d04      	subs	r5, #4
 8006e26:	2400      	movs	r4, #0
 8006e28:	e001      	b.n	8006e2e <__sprint_r.part.0+0x2e>
 8006e2a:	45a0      	cmp	r8, r4
 8006e2c:	d00e      	beq.n	8006e4c <__sprint_r.part.0+0x4c>
 8006e2e:	4632      	mov	r2, r6
 8006e30:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006e34:	4638      	mov	r0, r7
 8006e36:	f000 f99d 	bl	8007174 <_fputwc_r>
 8006e3a:	1c43      	adds	r3, r0, #1
 8006e3c:	f104 0401 	add.w	r4, r4, #1
 8006e40:	d1f3      	bne.n	8006e2a <__sprint_r.part.0+0x2a>
 8006e42:	2300      	movs	r3, #0
 8006e44:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006e48:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e4c:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006e50:	f02b 0b03 	bic.w	fp, fp, #3
 8006e54:	eba3 030b 	sub.w	r3, r3, fp
 8006e58:	f8ca 3008 	str.w	r3, [sl, #8]
 8006e5c:	f109 0908 	add.w	r9, r9, #8
 8006e60:	2b00      	cmp	r3, #0
 8006e62:	d1da      	bne.n	8006e1a <__sprint_r.part.0+0x1a>
 8006e64:	2000      	movs	r0, #0
 8006e66:	e7ec      	b.n	8006e42 <__sprint_r.part.0+0x42>
 8006e68:	f7fe ffce 	bl	8005e08 <__sfvwrite_r>
 8006e6c:	2300      	movs	r3, #0
 8006e6e:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006e72:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e76:	bf00      	nop

08006e78 <__sprint_r>:
 8006e78:	6893      	ldr	r3, [r2, #8]
 8006e7a:	b10b      	cbz	r3, 8006e80 <__sprint_r+0x8>
 8006e7c:	f7ff bfc0 	b.w	8006e00 <__sprint_r.part.0>
 8006e80:	b410      	push	{r4}
 8006e82:	4618      	mov	r0, r3
 8006e84:	6053      	str	r3, [r2, #4]
 8006e86:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006e8a:	4770      	bx	lr

08006e8c <_write_r>:
 8006e8c:	b570      	push	{r4, r5, r6, lr}
 8006e8e:	460d      	mov	r5, r1
 8006e90:	4c08      	ldr	r4, [pc, #32]	; (8006eb4 <_write_r+0x28>)
 8006e92:	4611      	mov	r1, r2
 8006e94:	4606      	mov	r6, r0
 8006e96:	461a      	mov	r2, r3
 8006e98:	4628      	mov	r0, r5
 8006e9a:	2300      	movs	r3, #0
 8006e9c:	6023      	str	r3, [r4, #0]
 8006e9e:	f7fb fb2a 	bl	80024f6 <_write>
 8006ea2:	1c43      	adds	r3, r0, #1
 8006ea4:	d000      	beq.n	8006ea8 <_write_r+0x1c>
 8006ea6:	bd70      	pop	{r4, r5, r6, pc}
 8006ea8:	6823      	ldr	r3, [r4, #0]
 8006eaa:	2b00      	cmp	r3, #0
 8006eac:	d0fb      	beq.n	8006ea6 <_write_r+0x1a>
 8006eae:	6033      	str	r3, [r6, #0]
 8006eb0:	bd70      	pop	{r4, r5, r6, pc}
 8006eb2:	bf00      	nop
 8006eb4:	20000c9c 	.word	0x20000c9c

08006eb8 <__register_exitproc>:
 8006eb8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006ebc:	4d2b      	ldr	r5, [pc, #172]	; (8006f6c <__register_exitproc+0xb4>)
 8006ebe:	4606      	mov	r6, r0
 8006ec0:	6828      	ldr	r0, [r5, #0]
 8006ec2:	4698      	mov	r8, r3
 8006ec4:	460f      	mov	r7, r1
 8006ec6:	4691      	mov	r9, r2
 8006ec8:	f7ff f958 	bl	800617c <__retarget_lock_acquire_recursive>
 8006ecc:	4b28      	ldr	r3, [pc, #160]	; (8006f70 <__register_exitproc+0xb8>)
 8006ece:	681c      	ldr	r4, [r3, #0]
 8006ed0:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006ed4:	2b00      	cmp	r3, #0
 8006ed6:	d03d      	beq.n	8006f54 <__register_exitproc+0x9c>
 8006ed8:	685a      	ldr	r2, [r3, #4]
 8006eda:	2a1f      	cmp	r2, #31
 8006edc:	dc0d      	bgt.n	8006efa <__register_exitproc+0x42>
 8006ede:	f102 0c01 	add.w	ip, r2, #1
 8006ee2:	bb16      	cbnz	r6, 8006f2a <__register_exitproc+0x72>
 8006ee4:	3202      	adds	r2, #2
 8006ee6:	f8c3 c004 	str.w	ip, [r3, #4]
 8006eea:	6828      	ldr	r0, [r5, #0]
 8006eec:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006ef0:	f7ff f946 	bl	8006180 <__retarget_lock_release_recursive>
 8006ef4:	2000      	movs	r0, #0
 8006ef6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006efa:	4b1e      	ldr	r3, [pc, #120]	; (8006f74 <__register_exitproc+0xbc>)
 8006efc:	b37b      	cbz	r3, 8006f5e <__register_exitproc+0xa6>
 8006efe:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006f02:	f7fb fbc7 	bl	8002694 <malloc>
 8006f06:	4603      	mov	r3, r0
 8006f08:	b348      	cbz	r0, 8006f5e <__register_exitproc+0xa6>
 8006f0a:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006f0e:	2100      	movs	r1, #0
 8006f10:	e9c0 2100 	strd	r2, r1, [r0]
 8006f14:	f04f 0c01 	mov.w	ip, #1
 8006f18:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006f1c:	460a      	mov	r2, r1
 8006f1e:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006f22:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006f26:	2e00      	cmp	r6, #0
 8006f28:	d0dc      	beq.n	8006ee4 <__register_exitproc+0x2c>
 8006f2a:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006f2e:	2401      	movs	r4, #1
 8006f30:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006f34:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006f38:	4094      	lsls	r4, r2
 8006f3a:	4320      	orrs	r0, r4
 8006f3c:	2e02      	cmp	r6, #2
 8006f3e:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006f42:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006f46:	d1cd      	bne.n	8006ee4 <__register_exitproc+0x2c>
 8006f48:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006f4c:	430c      	orrs	r4, r1
 8006f4e:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006f52:	e7c7      	b.n	8006ee4 <__register_exitproc+0x2c>
 8006f54:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006f58:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006f5c:	e7bc      	b.n	8006ed8 <__register_exitproc+0x20>
 8006f5e:	6828      	ldr	r0, [r5, #0]
 8006f60:	f7ff f90e 	bl	8006180 <__retarget_lock_release_recursive>
 8006f64:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006f68:	e7c5      	b.n	8006ef6 <__register_exitproc+0x3e>
 8006f6a:	bf00      	nop
 8006f6c:	200009e8 	.word	0x200009e8
 8006f70:	08007514 	.word	0x08007514
 8006f74:	08002695 	.word	0x08002695

08006f78 <_calloc_r>:
 8006f78:	b510      	push	{r4, lr}
 8006f7a:	fb02 f101 	mul.w	r1, r2, r1
 8006f7e:	f7fb fb99 	bl	80026b4 <_malloc_r>
 8006f82:	4604      	mov	r4, r0
 8006f84:	b1d8      	cbz	r0, 8006fbe <_calloc_r+0x46>
 8006f86:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006f8a:	f022 0203 	bic.w	r2, r2, #3
 8006f8e:	3a04      	subs	r2, #4
 8006f90:	2a24      	cmp	r2, #36	; 0x24
 8006f92:	d81d      	bhi.n	8006fd0 <_calloc_r+0x58>
 8006f94:	2a13      	cmp	r2, #19
 8006f96:	d914      	bls.n	8006fc2 <_calloc_r+0x4a>
 8006f98:	2300      	movs	r3, #0
 8006f9a:	2a1b      	cmp	r2, #27
 8006f9c:	e9c0 3300 	strd	r3, r3, [r0]
 8006fa0:	d91b      	bls.n	8006fda <_calloc_r+0x62>
 8006fa2:	2a24      	cmp	r2, #36	; 0x24
 8006fa4:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006fa8:	bf0a      	itet	eq
 8006faa:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006fae:	f100 0210 	addne.w	r2, r0, #16
 8006fb2:	f100 0218 	addeq.w	r2, r0, #24
 8006fb6:	2300      	movs	r3, #0
 8006fb8:	e9c2 3300 	strd	r3, r3, [r2]
 8006fbc:	6093      	str	r3, [r2, #8]
 8006fbe:	4620      	mov	r0, r4
 8006fc0:	bd10      	pop	{r4, pc}
 8006fc2:	4602      	mov	r2, r0
 8006fc4:	2300      	movs	r3, #0
 8006fc6:	e9c2 3300 	strd	r3, r3, [r2]
 8006fca:	6093      	str	r3, [r2, #8]
 8006fcc:	4620      	mov	r0, r4
 8006fce:	bd10      	pop	{r4, pc}
 8006fd0:	2100      	movs	r1, #0
 8006fd2:	f7fb fe13 	bl	8002bfc <memset>
 8006fd6:	4620      	mov	r0, r4
 8006fd8:	bd10      	pop	{r4, pc}
 8006fda:	f100 0208 	add.w	r2, r0, #8
 8006fde:	e7f1      	b.n	8006fc4 <_calloc_r+0x4c>

08006fe0 <_close_r>:
 8006fe0:	b538      	push	{r3, r4, r5, lr}
 8006fe2:	4c07      	ldr	r4, [pc, #28]	; (8007000 <_close_r+0x20>)
 8006fe4:	2300      	movs	r3, #0
 8006fe6:	4605      	mov	r5, r0
 8006fe8:	4608      	mov	r0, r1
 8006fea:	6023      	str	r3, [r4, #0]
 8006fec:	f7fb fac7 	bl	800257e <_close>
 8006ff0:	1c43      	adds	r3, r0, #1
 8006ff2:	d000      	beq.n	8006ff6 <_close_r+0x16>
 8006ff4:	bd38      	pop	{r3, r4, r5, pc}
 8006ff6:	6823      	ldr	r3, [r4, #0]
 8006ff8:	2b00      	cmp	r3, #0
 8006ffa:	d0fb      	beq.n	8006ff4 <_close_r+0x14>
 8006ffc:	602b      	str	r3, [r5, #0]
 8006ffe:	bd38      	pop	{r3, r4, r5, pc}
 8007000:	20000c9c 	.word	0x20000c9c

08007004 <_fclose_r>:
 8007004:	b570      	push	{r4, r5, r6, lr}
 8007006:	2900      	cmp	r1, #0
 8007008:	d048      	beq.n	800709c <_fclose_r+0x98>
 800700a:	4605      	mov	r5, r0
 800700c:	460c      	mov	r4, r1
 800700e:	b110      	cbz	r0, 8007016 <_fclose_r+0x12>
 8007010:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007012:	2b00      	cmp	r3, #0
 8007014:	d048      	beq.n	80070a8 <_fclose_r+0xa4>
 8007016:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007018:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800701c:	07d0      	lsls	r0, r2, #31
 800701e:	d440      	bmi.n	80070a2 <_fclose_r+0x9e>
 8007020:	0599      	lsls	r1, r3, #22
 8007022:	d530      	bpl.n	8007086 <_fclose_r+0x82>
 8007024:	4621      	mov	r1, r4
 8007026:	4628      	mov	r0, r5
 8007028:	f7fe fc52 	bl	80058d0 <__sflush_r>
 800702c:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800702e:	4606      	mov	r6, r0
 8007030:	b133      	cbz	r3, 8007040 <_fclose_r+0x3c>
 8007032:	69e1      	ldr	r1, [r4, #28]
 8007034:	4628      	mov	r0, r5
 8007036:	4798      	blx	r3
 8007038:	2800      	cmp	r0, #0
 800703a:	bfb8      	it	lt
 800703c:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8007040:	89a3      	ldrh	r3, [r4, #12]
 8007042:	061a      	lsls	r2, r3, #24
 8007044:	d43c      	bmi.n	80070c0 <_fclose_r+0xbc>
 8007046:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007048:	b141      	cbz	r1, 800705c <_fclose_r+0x58>
 800704a:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800704e:	4299      	cmp	r1, r3
 8007050:	d002      	beq.n	8007058 <_fclose_r+0x54>
 8007052:	4628      	mov	r0, r5
 8007054:	f7fe fde4 	bl	8005c20 <_free_r>
 8007058:	2300      	movs	r3, #0
 800705a:	6323      	str	r3, [r4, #48]	; 0x30
 800705c:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800705e:	b121      	cbz	r1, 800706a <_fclose_r+0x66>
 8007060:	4628      	mov	r0, r5
 8007062:	f7fe fddd 	bl	8005c20 <_free_r>
 8007066:	2300      	movs	r3, #0
 8007068:	6463      	str	r3, [r4, #68]	; 0x44
 800706a:	f7fe fd63 	bl	8005b34 <__sfp_lock_acquire>
 800706e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007070:	2200      	movs	r2, #0
 8007072:	07db      	lsls	r3, r3, #31
 8007074:	81a2      	strh	r2, [r4, #12]
 8007076:	d51f      	bpl.n	80070b8 <_fclose_r+0xb4>
 8007078:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800707a:	f7ff f87d 	bl	8006178 <__retarget_lock_close_recursive>
 800707e:	f7fe fd5f 	bl	8005b40 <__sfp_lock_release>
 8007082:	4630      	mov	r0, r6
 8007084:	bd70      	pop	{r4, r5, r6, pc}
 8007086:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007088:	f7ff f878 	bl	800617c <__retarget_lock_acquire_recursive>
 800708c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007090:	2b00      	cmp	r3, #0
 8007092:	d1c7      	bne.n	8007024 <_fclose_r+0x20>
 8007094:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007096:	f016 0601 	ands.w	r6, r6, #1
 800709a:	d016      	beq.n	80070ca <_fclose_r+0xc6>
 800709c:	2600      	movs	r6, #0
 800709e:	4630      	mov	r0, r6
 80070a0:	bd70      	pop	{r4, r5, r6, pc}
 80070a2:	2b00      	cmp	r3, #0
 80070a4:	d0fa      	beq.n	800709c <_fclose_r+0x98>
 80070a6:	e7bd      	b.n	8007024 <_fclose_r+0x20>
 80070a8:	f7fe fd18 	bl	8005adc <__sinit>
 80070ac:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80070ae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80070b2:	07d0      	lsls	r0, r2, #31
 80070b4:	d4f5      	bmi.n	80070a2 <_fclose_r+0x9e>
 80070b6:	e7b3      	b.n	8007020 <_fclose_r+0x1c>
 80070b8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070ba:	f7ff f861 	bl	8006180 <__retarget_lock_release_recursive>
 80070be:	e7db      	b.n	8007078 <_fclose_r+0x74>
 80070c0:	6921      	ldr	r1, [r4, #16]
 80070c2:	4628      	mov	r0, r5
 80070c4:	f7fe fdac 	bl	8005c20 <_free_r>
 80070c8:	e7bd      	b.n	8007046 <_fclose_r+0x42>
 80070ca:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070cc:	f7ff f858 	bl	8006180 <__retarget_lock_release_recursive>
 80070d0:	4630      	mov	r0, r6
 80070d2:	bd70      	pop	{r4, r5, r6, pc}

080070d4 <__fputwc>:
 80070d4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80070d8:	b082      	sub	sp, #8
 80070da:	4681      	mov	r9, r0
 80070dc:	4688      	mov	r8, r1
 80070de:	4614      	mov	r4, r2
 80070e0:	f000 f8a0 	bl	8007224 <__locale_mb_cur_max>
 80070e4:	2801      	cmp	r0, #1
 80070e6:	d103      	bne.n	80070f0 <__fputwc+0x1c>
 80070e8:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80070ec:	2bfe      	cmp	r3, #254	; 0xfe
 80070ee:	d933      	bls.n	8007158 <__fputwc+0x84>
 80070f0:	4642      	mov	r2, r8
 80070f2:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 80070f6:	a901      	add	r1, sp, #4
 80070f8:	4648      	mov	r0, r9
 80070fa:	f000 f93b 	bl	8007374 <_wcrtomb_r>
 80070fe:	1c42      	adds	r2, r0, #1
 8007100:	4606      	mov	r6, r0
 8007102:	d02f      	beq.n	8007164 <__fputwc+0x90>
 8007104:	b320      	cbz	r0, 8007150 <__fputwc+0x7c>
 8007106:	f89d c004 	ldrb.w	ip, [sp, #4]
 800710a:	2500      	movs	r5, #0
 800710c:	f10d 0a04 	add.w	sl, sp, #4
 8007110:	e009      	b.n	8007126 <__fputwc+0x52>
 8007112:	6823      	ldr	r3, [r4, #0]
 8007114:	1c5a      	adds	r2, r3, #1
 8007116:	6022      	str	r2, [r4, #0]
 8007118:	f883 c000 	strb.w	ip, [r3]
 800711c:	3501      	adds	r5, #1
 800711e:	42b5      	cmp	r5, r6
 8007120:	d216      	bcs.n	8007150 <__fputwc+0x7c>
 8007122:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007126:	68a3      	ldr	r3, [r4, #8]
 8007128:	3b01      	subs	r3, #1
 800712a:	2b00      	cmp	r3, #0
 800712c:	60a3      	str	r3, [r4, #8]
 800712e:	daf0      	bge.n	8007112 <__fputwc+0x3e>
 8007130:	69a7      	ldr	r7, [r4, #24]
 8007132:	42bb      	cmp	r3, r7
 8007134:	4661      	mov	r1, ip
 8007136:	4622      	mov	r2, r4
 8007138:	4648      	mov	r0, r9
 800713a:	db02      	blt.n	8007142 <__fputwc+0x6e>
 800713c:	f1bc 0f0a 	cmp.w	ip, #10
 8007140:	d1e7      	bne.n	8007112 <__fputwc+0x3e>
 8007142:	f000 f8bf 	bl	80072c4 <__swbuf_r>
 8007146:	1c43      	adds	r3, r0, #1
 8007148:	d1e8      	bne.n	800711c <__fputwc+0x48>
 800714a:	b002      	add	sp, #8
 800714c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007150:	4640      	mov	r0, r8
 8007152:	b002      	add	sp, #8
 8007154:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007158:	fa5f fc88 	uxtb.w	ip, r8
 800715c:	4606      	mov	r6, r0
 800715e:	f88d c004 	strb.w	ip, [sp, #4]
 8007162:	e7d2      	b.n	800710a <__fputwc+0x36>
 8007164:	89a3      	ldrh	r3, [r4, #12]
 8007166:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800716a:	81a3      	strh	r3, [r4, #12]
 800716c:	b002      	add	sp, #8
 800716e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007172:	bf00      	nop

08007174 <_fputwc_r>:
 8007174:	b530      	push	{r4, r5, lr}
 8007176:	4605      	mov	r5, r0
 8007178:	6e50      	ldr	r0, [r2, #100]	; 0x64
 800717a:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800717e:	07c0      	lsls	r0, r0, #31
 8007180:	4614      	mov	r4, r2
 8007182:	b083      	sub	sp, #12
 8007184:	b29a      	uxth	r2, r3
 8007186:	d401      	bmi.n	800718c <_fputwc_r+0x18>
 8007188:	0590      	lsls	r0, r2, #22
 800718a:	d51c      	bpl.n	80071c6 <_fputwc_r+0x52>
 800718c:	0490      	lsls	r0, r2, #18
 800718e:	d406      	bmi.n	800719e <_fputwc_r+0x2a>
 8007190:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007192:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007196:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800719a:	81a3      	strh	r3, [r4, #12]
 800719c:	6662      	str	r2, [r4, #100]	; 0x64
 800719e:	4628      	mov	r0, r5
 80071a0:	4622      	mov	r2, r4
 80071a2:	f7ff ff97 	bl	80070d4 <__fputwc>
 80071a6:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80071a8:	07da      	lsls	r2, r3, #31
 80071aa:	4605      	mov	r5, r0
 80071ac:	d402      	bmi.n	80071b4 <_fputwc_r+0x40>
 80071ae:	89a3      	ldrh	r3, [r4, #12]
 80071b0:	059b      	lsls	r3, r3, #22
 80071b2:	d502      	bpl.n	80071ba <_fputwc_r+0x46>
 80071b4:	4628      	mov	r0, r5
 80071b6:	b003      	add	sp, #12
 80071b8:	bd30      	pop	{r4, r5, pc}
 80071ba:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071bc:	f7fe ffe0 	bl	8006180 <__retarget_lock_release_recursive>
 80071c0:	4628      	mov	r0, r5
 80071c2:	b003      	add	sp, #12
 80071c4:	bd30      	pop	{r4, r5, pc}
 80071c6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071c8:	9101      	str	r1, [sp, #4]
 80071ca:	f7fe ffd7 	bl	800617c <__retarget_lock_acquire_recursive>
 80071ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80071d2:	9901      	ldr	r1, [sp, #4]
 80071d4:	b29a      	uxth	r2, r3
 80071d6:	e7d9      	b.n	800718c <_fputwc_r+0x18>

080071d8 <_fstat_r>:
 80071d8:	b538      	push	{r3, r4, r5, lr}
 80071da:	460b      	mov	r3, r1
 80071dc:	4c07      	ldr	r4, [pc, #28]	; (80071fc <_fstat_r+0x24>)
 80071de:	4605      	mov	r5, r0
 80071e0:	4611      	mov	r1, r2
 80071e2:	4618      	mov	r0, r3
 80071e4:	2300      	movs	r3, #0
 80071e6:	6023      	str	r3, [r4, #0]
 80071e8:	f7fb f9cc 	bl	8002584 <_fstat>
 80071ec:	1c43      	adds	r3, r0, #1
 80071ee:	d000      	beq.n	80071f2 <_fstat_r+0x1a>
 80071f0:	bd38      	pop	{r3, r4, r5, pc}
 80071f2:	6823      	ldr	r3, [r4, #0]
 80071f4:	2b00      	cmp	r3, #0
 80071f6:	d0fb      	beq.n	80071f0 <_fstat_r+0x18>
 80071f8:	602b      	str	r3, [r5, #0]
 80071fa:	bd38      	pop	{r3, r4, r5, pc}
 80071fc:	20000c9c 	.word	0x20000c9c

08007200 <_isatty_r>:
 8007200:	b538      	push	{r3, r4, r5, lr}
 8007202:	4c07      	ldr	r4, [pc, #28]	; (8007220 <_isatty_r+0x20>)
 8007204:	2300      	movs	r3, #0
 8007206:	4605      	mov	r5, r0
 8007208:	4608      	mov	r0, r1
 800720a:	6023      	str	r3, [r4, #0]
 800720c:	f7fb f9c0 	bl	8002590 <_isatty>
 8007210:	1c43      	adds	r3, r0, #1
 8007212:	d000      	beq.n	8007216 <_isatty_r+0x16>
 8007214:	bd38      	pop	{r3, r4, r5, pc}
 8007216:	6823      	ldr	r3, [r4, #0]
 8007218:	2b00      	cmp	r3, #0
 800721a:	d0fb      	beq.n	8007214 <_isatty_r+0x14>
 800721c:	602b      	str	r3, [r5, #0]
 800721e:	bd38      	pop	{r3, r4, r5, pc}
 8007220:	20000c9c 	.word	0x20000c9c

08007224 <__locale_mb_cur_max>:
 8007224:	4b04      	ldr	r3, [pc, #16]	; (8007238 <__locale_mb_cur_max+0x14>)
 8007226:	4a05      	ldr	r2, [pc, #20]	; (800723c <__locale_mb_cur_max+0x18>)
 8007228:	681b      	ldr	r3, [r3, #0]
 800722a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800722c:	2b00      	cmp	r3, #0
 800722e:	bf08      	it	eq
 8007230:	4613      	moveq	r3, r2
 8007232:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007236:	4770      	bx	lr
 8007238:	200001a8 	.word	0x200001a8
 800723c:	200009ec 	.word	0x200009ec

08007240 <_lseek_r>:
 8007240:	b570      	push	{r4, r5, r6, lr}
 8007242:	460d      	mov	r5, r1
 8007244:	4c08      	ldr	r4, [pc, #32]	; (8007268 <_lseek_r+0x28>)
 8007246:	4611      	mov	r1, r2
 8007248:	4606      	mov	r6, r0
 800724a:	461a      	mov	r2, r3
 800724c:	4628      	mov	r0, r5
 800724e:	2300      	movs	r3, #0
 8007250:	6023      	str	r3, [r4, #0]
 8007252:	f7fb f99f 	bl	8002594 <_lseek>
 8007256:	1c43      	adds	r3, r0, #1
 8007258:	d000      	beq.n	800725c <_lseek_r+0x1c>
 800725a:	bd70      	pop	{r4, r5, r6, pc}
 800725c:	6823      	ldr	r3, [r4, #0]
 800725e:	2b00      	cmp	r3, #0
 8007260:	d0fb      	beq.n	800725a <_lseek_r+0x1a>
 8007262:	6033      	str	r3, [r6, #0]
 8007264:	bd70      	pop	{r4, r5, r6, pc}
 8007266:	bf00      	nop
 8007268:	20000c9c 	.word	0x20000c9c

0800726c <__ascii_mbtowc>:
 800726c:	b082      	sub	sp, #8
 800726e:	b149      	cbz	r1, 8007284 <__ascii_mbtowc+0x18>
 8007270:	b15a      	cbz	r2, 800728a <__ascii_mbtowc+0x1e>
 8007272:	b16b      	cbz	r3, 8007290 <__ascii_mbtowc+0x24>
 8007274:	7813      	ldrb	r3, [r2, #0]
 8007276:	600b      	str	r3, [r1, #0]
 8007278:	7812      	ldrb	r2, [r2, #0]
 800727a:	1c10      	adds	r0, r2, #0
 800727c:	bf18      	it	ne
 800727e:	2001      	movne	r0, #1
 8007280:	b002      	add	sp, #8
 8007282:	4770      	bx	lr
 8007284:	a901      	add	r1, sp, #4
 8007286:	2a00      	cmp	r2, #0
 8007288:	d1f3      	bne.n	8007272 <__ascii_mbtowc+0x6>
 800728a:	4610      	mov	r0, r2
 800728c:	b002      	add	sp, #8
 800728e:	4770      	bx	lr
 8007290:	f06f 0001 	mvn.w	r0, #1
 8007294:	e7f4      	b.n	8007280 <__ascii_mbtowc+0x14>
 8007296:	bf00      	nop

08007298 <_read_r>:
 8007298:	b570      	push	{r4, r5, r6, lr}
 800729a:	460d      	mov	r5, r1
 800729c:	4c08      	ldr	r4, [pc, #32]	; (80072c0 <_read_r+0x28>)
 800729e:	4611      	mov	r1, r2
 80072a0:	4606      	mov	r6, r0
 80072a2:	461a      	mov	r2, r3
 80072a4:	4628      	mov	r0, r5
 80072a6:	2300      	movs	r3, #0
 80072a8:	6023      	str	r3, [r4, #0]
 80072aa:	f7fb f904 	bl	80024b6 <_read>
 80072ae:	1c43      	adds	r3, r0, #1
 80072b0:	d000      	beq.n	80072b4 <_read_r+0x1c>
 80072b2:	bd70      	pop	{r4, r5, r6, pc}
 80072b4:	6823      	ldr	r3, [r4, #0]
 80072b6:	2b00      	cmp	r3, #0
 80072b8:	d0fb      	beq.n	80072b2 <_read_r+0x1a>
 80072ba:	6033      	str	r3, [r6, #0]
 80072bc:	bd70      	pop	{r4, r5, r6, pc}
 80072be:	bf00      	nop
 80072c0:	20000c9c 	.word	0x20000c9c

080072c4 <__swbuf_r>:
 80072c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80072c6:	460d      	mov	r5, r1
 80072c8:	4614      	mov	r4, r2
 80072ca:	4606      	mov	r6, r0
 80072cc:	b110      	cbz	r0, 80072d4 <__swbuf_r+0x10>
 80072ce:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80072d0:	2b00      	cmp	r3, #0
 80072d2:	d043      	beq.n	800735c <__swbuf_r+0x98>
 80072d4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80072d8:	69a3      	ldr	r3, [r4, #24]
 80072da:	60a3      	str	r3, [r4, #8]
 80072dc:	b291      	uxth	r1, r2
 80072de:	0708      	lsls	r0, r1, #28
 80072e0:	d51b      	bpl.n	800731a <__swbuf_r+0x56>
 80072e2:	6923      	ldr	r3, [r4, #16]
 80072e4:	b1cb      	cbz	r3, 800731a <__swbuf_r+0x56>
 80072e6:	b2ed      	uxtb	r5, r5
 80072e8:	0489      	lsls	r1, r1, #18
 80072ea:	462f      	mov	r7, r5
 80072ec:	d522      	bpl.n	8007334 <__swbuf_r+0x70>
 80072ee:	6822      	ldr	r2, [r4, #0]
 80072f0:	6961      	ldr	r1, [r4, #20]
 80072f2:	1ad3      	subs	r3, r2, r3
 80072f4:	4299      	cmp	r1, r3
 80072f6:	dd29      	ble.n	800734c <__swbuf_r+0x88>
 80072f8:	3301      	adds	r3, #1
 80072fa:	68a1      	ldr	r1, [r4, #8]
 80072fc:	1c50      	adds	r0, r2, #1
 80072fe:	3901      	subs	r1, #1
 8007300:	60a1      	str	r1, [r4, #8]
 8007302:	6020      	str	r0, [r4, #0]
 8007304:	7015      	strb	r5, [r2, #0]
 8007306:	6962      	ldr	r2, [r4, #20]
 8007308:	429a      	cmp	r2, r3
 800730a:	d02a      	beq.n	8007362 <__swbuf_r+0x9e>
 800730c:	89a3      	ldrh	r3, [r4, #12]
 800730e:	07db      	lsls	r3, r3, #31
 8007310:	d501      	bpl.n	8007316 <__swbuf_r+0x52>
 8007312:	2d0a      	cmp	r5, #10
 8007314:	d025      	beq.n	8007362 <__swbuf_r+0x9e>
 8007316:	4638      	mov	r0, r7
 8007318:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800731a:	4621      	mov	r1, r4
 800731c:	4630      	mov	r0, r6
 800731e:	f7fd fabf 	bl	80048a0 <__swsetup_r>
 8007322:	bb20      	cbnz	r0, 800736e <__swbuf_r+0xaa>
 8007324:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007328:	6923      	ldr	r3, [r4, #16]
 800732a:	b291      	uxth	r1, r2
 800732c:	b2ed      	uxtb	r5, r5
 800732e:	0489      	lsls	r1, r1, #18
 8007330:	462f      	mov	r7, r5
 8007332:	d4dc      	bmi.n	80072ee <__swbuf_r+0x2a>
 8007334:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007336:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800733a:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800733e:	81a2      	strh	r2, [r4, #12]
 8007340:	6822      	ldr	r2, [r4, #0]
 8007342:	6661      	str	r1, [r4, #100]	; 0x64
 8007344:	6961      	ldr	r1, [r4, #20]
 8007346:	1ad3      	subs	r3, r2, r3
 8007348:	4299      	cmp	r1, r3
 800734a:	dcd5      	bgt.n	80072f8 <__swbuf_r+0x34>
 800734c:	4621      	mov	r1, r4
 800734e:	4630      	mov	r0, r6
 8007350:	f7fe fb68 	bl	8005a24 <_fflush_r>
 8007354:	b958      	cbnz	r0, 800736e <__swbuf_r+0xaa>
 8007356:	6822      	ldr	r2, [r4, #0]
 8007358:	2301      	movs	r3, #1
 800735a:	e7ce      	b.n	80072fa <__swbuf_r+0x36>
 800735c:	f7fe fbbe 	bl	8005adc <__sinit>
 8007360:	e7b8      	b.n	80072d4 <__swbuf_r+0x10>
 8007362:	4621      	mov	r1, r4
 8007364:	4630      	mov	r0, r6
 8007366:	f7fe fb5d 	bl	8005a24 <_fflush_r>
 800736a:	2800      	cmp	r0, #0
 800736c:	d0d3      	beq.n	8007316 <__swbuf_r+0x52>
 800736e:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8007372:	e7d0      	b.n	8007316 <__swbuf_r+0x52>

08007374 <_wcrtomb_r>:
 8007374:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007376:	4c11      	ldr	r4, [pc, #68]	; (80073bc <_wcrtomb_r+0x48>)
 8007378:	6824      	ldr	r4, [r4, #0]
 800737a:	b085      	sub	sp, #20
 800737c:	4606      	mov	r6, r0
 800737e:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8007380:	461f      	mov	r7, r3
 8007382:	b151      	cbz	r1, 800739a <_wcrtomb_r+0x26>
 8007384:	4d0e      	ldr	r5, [pc, #56]	; (80073c0 <_wcrtomb_r+0x4c>)
 8007386:	2c00      	cmp	r4, #0
 8007388:	bf08      	it	eq
 800738a:	462c      	moveq	r4, r5
 800738c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007390:	47a0      	blx	r4
 8007392:	1c43      	adds	r3, r0, #1
 8007394:	d00c      	beq.n	80073b0 <_wcrtomb_r+0x3c>
 8007396:	b005      	add	sp, #20
 8007398:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800739a:	4a09      	ldr	r2, [pc, #36]	; (80073c0 <_wcrtomb_r+0x4c>)
 800739c:	2c00      	cmp	r4, #0
 800739e:	bf08      	it	eq
 80073a0:	4614      	moveq	r4, r2
 80073a2:	460a      	mov	r2, r1
 80073a4:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80073a8:	a901      	add	r1, sp, #4
 80073aa:	47a0      	blx	r4
 80073ac:	1c43      	adds	r3, r0, #1
 80073ae:	d1f2      	bne.n	8007396 <_wcrtomb_r+0x22>
 80073b0:	2200      	movs	r2, #0
 80073b2:	238a      	movs	r3, #138	; 0x8a
 80073b4:	603a      	str	r2, [r7, #0]
 80073b6:	6033      	str	r3, [r6, #0]
 80073b8:	b005      	add	sp, #20
 80073ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80073bc:	200001a8 	.word	0x200001a8
 80073c0:	200009ec 	.word	0x200009ec

080073c4 <__ascii_wctomb>:
 80073c4:	b121      	cbz	r1, 80073d0 <__ascii_wctomb+0xc>
 80073c6:	2aff      	cmp	r2, #255	; 0xff
 80073c8:	d804      	bhi.n	80073d4 <__ascii_wctomb+0x10>
 80073ca:	700a      	strb	r2, [r1, #0]
 80073cc:	2001      	movs	r0, #1
 80073ce:	4770      	bx	lr
 80073d0:	4608      	mov	r0, r1
 80073d2:	4770      	bx	lr
 80073d4:	238a      	movs	r3, #138	; 0x8a
 80073d6:	6003      	str	r3, [r0, #0]
 80073d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80073dc:	4770      	bx	lr
 80073de:	bf00      	nop

080073e0 <_init>:
 80073e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80073e2:	bf00      	nop
 80073e4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80073e6:	bc08      	pop	{r3}
 80073e8:	469e      	mov	lr, r3
 80073ea:	4770      	bx	lr

080073ec <_fini>:
 80073ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80073ee:	bf00      	nop
 80073f0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80073f2:	bc08      	pop	{r3}
 80073f4:	469e      	mov	lr, r3
 80073f6:	4770      	bx	lr
