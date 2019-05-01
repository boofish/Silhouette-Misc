
tarai.elf:     file format elf32-littlearm


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
 80001e0:	08006f1c 	.word	0x08006f1c

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
 80001fc:	08006f1c 	.word	0x08006f1c

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
 80013e8:	f646 7250 	movw	r2, #28496	; 0x6f50
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
 8001462:	f646 7248 	movw	r2, #28488	; 0x6f48
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
 800148c:	f646 7248 	movw	r2, #28488	; 0x6f48
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
 80019d4:	f646 7380 	movw	r3, #28544	; 0x6f80
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
 80019fc:	f646 7390 	movw	r3, #28560	; 0x6f90
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

08001eb6 <tarai>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 8001ebe:	4688      	mov	r8, r1
 8001ec0:	4681      	mov	r9, r0
 8001ec2:	4692      	mov	sl, r2
 8001ec4:	45c1      	cmp	r9, r8
 8001ec6:	bfde      	ittt	le
 8001ec8:	4640      	movle	r0, r8
 8001eca:	e8bd 0700 	ldmiale.w	sp!, {r8, r9, sl}
 8001ece:	bdf0      	pople	{r4, r5, r6, r7, pc}
 8001ed0:	f1a9 0001 	sub.w	r0, r9, #1
 8001ed4:	4641      	mov	r1, r8
 8001ed6:	4652      	mov	r2, sl
 8001ed8:	f7ff ffed 	bl	8001eb6 <tarai>
 8001edc:	4605      	mov	r5, r0
 8001ede:	f1a8 0001 	sub.w	r0, r8, #1
 8001ee2:	4651      	mov	r1, sl
 8001ee4:	464a      	mov	r2, r9
 8001ee6:	f7ff ffe6 	bl	8001eb6 <tarai>
 8001eea:	4285      	cmp	r5, r0
 8001eec:	dd17      	ble.n	8001f1e <tarai+0x68>
 8001eee:	4606      	mov	r6, r0
 8001ef0:	f1aa 0001 	sub.w	r0, sl, #1
 8001ef4:	4649      	mov	r1, r9
 8001ef6:	4642      	mov	r2, r8
 8001ef8:	462c      	mov	r4, r5
 8001efa:	f7ff ffdc 	bl	8001eb6 <tarai>
 8001efe:	4682      	mov	sl, r0
 8001f00:	1e60      	subs	r0, r4, #1
 8001f02:	4631      	mov	r1, r6
 8001f04:	4652      	mov	r2, sl
 8001f06:	f7ff ffd6 	bl	8001eb6 <tarai>
 8001f0a:	4605      	mov	r5, r0
 8001f0c:	1e70      	subs	r0, r6, #1
 8001f0e:	4651      	mov	r1, sl
 8001f10:	4622      	mov	r2, r4
 8001f12:	f7ff ffd0 	bl	8001eb6 <tarai>
 8001f16:	4285      	cmp	r5, r0
 8001f18:	46a1      	mov	r9, r4
 8001f1a:	46b0      	mov	r8, r6
 8001f1c:	dce7      	bgt.n	8001eee <tarai+0x38>
 8001f1e:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 8001f22:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001f24 <benchmark>:
 8001f24:	b580      	push	{r7, lr}
 8001f26:	466f      	mov	r7, sp
 8001f28:	b082      	sub	sp, #8
 8001f2a:	2000      	movs	r0, #0
 8001f2c:	9001      	str	r0, [sp, #4]
 8001f2e:	f640 20ec 	movw	r0, #2796	; 0xaec
 8001f32:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f36:	6802      	ldr	r2, [r0, #0]
 8001f38:	f640 20f0 	movw	r0, #2800	; 0xaf0
 8001f3c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f40:	6801      	ldr	r1, [r0, #0]
 8001f42:	f640 20e8 	movw	r0, #2792	; 0xae8
 8001f46:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f4a:	6800      	ldr	r0, [r0, #0]
 8001f4c:	f7ff ffb3 	bl	8001eb6 <tarai>
 8001f50:	9001      	str	r0, [sp, #4]
 8001f52:	9801      	ldr	r0, [sp, #4]
 8001f54:	b002      	add	sp, #8
 8001f56:	bd80      	pop	{r7, pc}

08001f58 <initialise_benchmark>:
 8001f58:	f640 20e8 	movw	r0, #2792	; 0xae8
 8001f5c:	2109      	movs	r1, #9
 8001f5e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f62:	6001      	str	r1, [r0, #0]
 8001f64:	f640 20f0 	movw	r0, #2800	; 0xaf0
 8001f68:	2106      	movs	r1, #6
 8001f6a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f6e:	6001      	str	r1, [r0, #0]
 8001f70:	f640 20ec 	movw	r0, #2796	; 0xaec
 8001f74:	2103      	movs	r1, #3
 8001f76:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f7a:	6001      	str	r1, [r0, #0]
 8001f7c:	4770      	bx	lr

08001f7e <verify_benchmark>:
 8001f7e:	2100      	movs	r1, #0
 8001f80:	2809      	cmp	r0, #9
 8001f82:	bf08      	it	eq
 8001f84:	2101      	moveq	r1, #1
 8001f86:	4608      	mov	r0, r1
 8001f88:	4770      	bx	lr

08001f8a <__io_putchar>:
 8001f8a:	b580      	push	{r7, lr}
 8001f8c:	466f      	mov	r7, sp
 8001f8e:	b082      	sub	sp, #8
 8001f90:	9001      	str	r0, [sp, #4]
 8001f92:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001f96:	a901      	add	r1, sp, #4
 8001f98:	2201      	movs	r2, #1
 8001f9a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001f9e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fa2:	f7ff fe9a 	bl	8001cda <HAL_UART_Transmit>
 8001fa6:	9801      	ldr	r0, [sp, #4]
 8001fa8:	b002      	add	sp, #8
 8001faa:	bd80      	pop	{r7, pc}

08001fac <main>:
 8001fac:	b5b0      	push	{r4, r5, r7, lr}
 8001fae:	af02      	add	r7, sp, #8
 8001fb0:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8001fb4:	f643 0000 	movw	r0, #14336	; 0x3800
 8001fb8:	220c      	movs	r2, #12
 8001fba:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fbe:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001fc2:	6008      	str	r0, [r1, #0]
 8001fc4:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001fc8:	6048      	str	r0, [r1, #4]
 8001fca:	2000      	movs	r0, #0
 8001fcc:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001fd0:	6108      	str	r0, [r1, #16]
 8001fd2:	6248      	str	r0, [r1, #36]	; 0x24
 8001fd4:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001fd8:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001fdc:	2000      	movs	r0, #0
 8001fde:	f7ff ff11 	bl	8001e04 <BSP_COM_Init>
 8001fe2:	f7ff ffb9 	bl	8001f58 <initialise_benchmark>
 8001fe6:	f646 70a0 	movw	r0, #28576	; 0x6fa0
 8001fea:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fee:	f000 f949 	bl	8002284 <printf>
 8001ff2:	f247 0048 	movw	r0, #28744	; 0x7048
 8001ff6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001ffa:	f000 f9a5 	bl	8002348 <puts>
 8001ffe:	f7ff f873 	bl	80010e8 <HAL_Init>
 8002002:	f7ff f889 	bl	8001118 <HAL_GetTick>
 8002006:	4604      	mov	r4, r0
 8002008:	f7ff ff8c 	bl	8001f24 <benchmark>
 800200c:	4605      	mov	r5, r0
 800200e:	f7ff f883 	bl	8001118 <HAL_GetTick>
 8002012:	1b04      	subs	r4, r0, r4
 8002014:	4628      	mov	r0, r5
 8002016:	f7ff ffb2 	bl	8001f7e <verify_benchmark>
 800201a:	1c41      	adds	r1, r0, #1
 800201c:	d006      	beq.n	800202c <main+0x80>
 800201e:	2801      	cmp	r0, #1
 8002020:	d109      	bne.n	8002036 <main+0x8a>
 8002022:	f646 70b4 	movw	r0, #28596	; 0x6fb4
 8002026:	f6c0 0000 	movt	r0, #2048	; 0x800
 800202a:	e008      	b.n	800203e <main+0x92>
 800202c:	f646 70d8 	movw	r0, #28632	; 0x6fd8
 8002030:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002034:	e003      	b.n	800203e <main+0x92>
 8002036:	f247 000d 	movw	r0, #28685	; 0x700d
 800203a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800203e:	4621      	mov	r1, r4
 8002040:	f000 f920 	bl	8002284 <printf>
 8002044:	2000      	movs	r0, #0
 8002046:	bdb0      	pop	{r4, r5, r7, pc}

08002048 <SysTick_Handler>:
 8002048:	b580      	push	{r7, lr}
 800204a:	466f      	mov	r7, sp
 800204c:	f7ff f85c 	bl	8001108 <HAL_IncTick>
 8002050:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002054:	f7ff b8b6 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08002058 <_read>:
 8002058:	b5f0      	push	{r4, r5, r6, r7, lr}
 800205a:	af03      	add	r7, sp, #12
 800205c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002060:	4614      	mov	r4, r2
 8002062:	460d      	mov	r5, r1
 8002064:	2c01      	cmp	r4, #1
 8002066:	db06      	blt.n	8002076 <_read+0x1e>
 8002068:	4626      	mov	r6, r4
 800206a:	f3af 8000 	nop.w
 800206e:	f805 0b01 	strb.w	r0, [r5], #1
 8002072:	3e01      	subs	r6, #1
 8002074:	d1f9      	bne.n	800206a <_read+0x12>
 8002076:	4620      	mov	r0, r4
 8002078:	f85d bb04 	ldr.w	fp, [sp], #4
 800207c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800207e <_write>:
 800207e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002080:	af03      	add	r7, sp, #12
 8002082:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002086:	4614      	mov	r4, r2
 8002088:	460d      	mov	r5, r1
 800208a:	2c01      	cmp	r4, #1
 800208c:	db06      	blt.n	800209c <_write+0x1e>
 800208e:	4626      	mov	r6, r4
 8002090:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002094:	f7ff ff79 	bl	8001f8a <__io_putchar>
 8002098:	3e01      	subs	r6, #1
 800209a:	d1f9      	bne.n	8002090 <_write+0x12>
 800209c:	4620      	mov	r0, r4
 800209e:	f85d bb04 	ldr.w	fp, [sp], #4
 80020a2:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020a4 <_sbrk>:
 80020a4:	f640 2268 	movw	r2, #2664	; 0xa68
 80020a8:	4601      	mov	r1, r0
 80020aa:	466b      	mov	r3, sp
 80020ac:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80020b0:	6810      	ldr	r0, [r2, #0]
 80020b2:	2800      	cmp	r0, #0
 80020b4:	bf02      	ittt	eq
 80020b6:	f640 3020 	movweq	r0, #2848	; 0xb20
 80020ba:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80020be:	6010      	streq	r0, [r2, #0]
 80020c0:	4401      	add	r1, r0
 80020c2:	4299      	cmp	r1, r3
 80020c4:	bf9c      	itt	ls
 80020c6:	6011      	strls	r1, [r2, #0]
 80020c8:	4770      	bxls	lr
 80020ca:	b580      	push	{r7, lr}
 80020cc:	466f      	mov	r7, sp
 80020ce:	f000 f865 	bl	800219c <__errno>
 80020d2:	210c      	movs	r1, #12
 80020d4:	6001      	str	r1, [r0, #0]
 80020d6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80020da:	bd80      	pop	{r7, pc}

080020dc <_close>:
 80020dc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80020e0:	4770      	bx	lr

080020e2 <_fstat>:
 80020e2:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80020e6:	6048      	str	r0, [r1, #4]
 80020e8:	2000      	movs	r0, #0
 80020ea:	4770      	bx	lr

080020ec <_isatty>:
 80020ec:	2001      	movs	r0, #1
 80020ee:	4770      	bx	lr

080020f0 <_lseek>:
 80020f0:	2000      	movs	r0, #0
 80020f2:	4770      	bx	lr

080020f4 <SystemInit>:
 80020f4:	f64e 5088 	movw	r0, #60808	; 0xed88
 80020f8:	f04f 0c00 	mov.w	ip, #0
 80020fc:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002100:	6801      	ldr	r1, [r0, #0]
 8002102:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002106:	6001      	str	r1, [r0, #0]
 8002108:	f241 0100 	movw	r1, #4096	; 0x1000
 800210c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002110:	680a      	ldr	r2, [r1, #0]
 8002112:	f042 0201 	orr.w	r2, r2, #1
 8002116:	600a      	str	r2, [r1, #0]
 8002118:	f8c1 c008 	str.w	ip, [r1, #8]
 800211c:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002120:	680b      	ldr	r3, [r1, #0]
 8002122:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002126:	401a      	ands	r2, r3
 8002128:	600a      	str	r2, [r1, #0]
 800212a:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800212e:	60ca      	str	r2, [r1, #12]
 8002130:	680a      	ldr	r2, [r1, #0]
 8002132:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002136:	600a      	str	r2, [r1, #0]
 8002138:	f8c1 c018 	str.w	ip, [r1, #24]
 800213c:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002140:	f840 1c80 	str.w	r1, [r0, #-128]
 8002144:	4770      	bx	lr
	...

08002148 <Reset_Handler>:
 8002148:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002180 <LoopForever+0x2>
 800214c:	2100      	movs	r1, #0
 800214e:	e003      	b.n	8002158 <LoopCopyDataInit>

08002150 <CopyDataInit>:
 8002150:	4b0c      	ldr	r3, [pc, #48]	; (8002184 <LoopForever+0x6>)
 8002152:	585b      	ldr	r3, [r3, r1]
 8002154:	5043      	str	r3, [r0, r1]
 8002156:	3104      	adds	r1, #4

08002158 <LoopCopyDataInit>:
 8002158:	480b      	ldr	r0, [pc, #44]	; (8002188 <LoopForever+0xa>)
 800215a:	4b0c      	ldr	r3, [pc, #48]	; (800218c <LoopForever+0xe>)
 800215c:	1842      	adds	r2, r0, r1
 800215e:	429a      	cmp	r2, r3
 8002160:	d3f6      	bcc.n	8002150 <CopyDataInit>
 8002162:	4a0b      	ldr	r2, [pc, #44]	; (8002190 <LoopForever+0x12>)
 8002164:	e002      	b.n	800216c <LoopFillZerobss>

08002166 <FillZerobss>:
 8002166:	2300      	movs	r3, #0
 8002168:	f842 3b04 	str.w	r3, [r2], #4

0800216c <LoopFillZerobss>:
 800216c:	4b09      	ldr	r3, [pc, #36]	; (8002194 <LoopForever+0x16>)
 800216e:	429a      	cmp	r2, r3
 8002170:	d3f9      	bcc.n	8002166 <FillZerobss>
 8002172:	f7ff ffbf 	bl	80020f4 <SystemInit>
 8002176:	f000 f817 	bl	80021a8 <__libc_init_array>
 800217a:	f7ff ff17 	bl	8001fac <main>

0800217e <LoopForever>:
 800217e:	e7fe      	b.n	800217e <LoopForever>
 8002180:	20018000 	.word	0x20018000
 8002184:	080072f0 	.word	0x080072f0
 8002188:	20000000 	.word	0x20000000
 800218c:	200009c8 	.word	0x200009c8
 8002190:	200009c8 	.word	0x200009c8
 8002194:	20000b1c 	.word	0x20000b1c

08002198 <ADC1_2_IRQHandler>:
 8002198:	e7fe      	b.n	8002198 <ADC1_2_IRQHandler>
	...

0800219c <__errno>:
 800219c:	4b01      	ldr	r3, [pc, #4]	; (80021a4 <__errno+0x8>)
 800219e:	6818      	ldr	r0, [r3, #0]
 80021a0:	4770      	bx	lr
 80021a2:	bf00      	nop
 80021a4:	20000018 	.word	0x20000018

080021a8 <__libc_init_array>:
 80021a8:	b570      	push	{r4, r5, r6, lr}
 80021aa:	4e0d      	ldr	r6, [pc, #52]	; (80021e0 <__libc_init_array+0x38>)
 80021ac:	4d0d      	ldr	r5, [pc, #52]	; (80021e4 <__libc_init_array+0x3c>)
 80021ae:	1b76      	subs	r6, r6, r5
 80021b0:	10b6      	asrs	r6, r6, #2
 80021b2:	d006      	beq.n	80021c2 <__libc_init_array+0x1a>
 80021b4:	2400      	movs	r4, #0
 80021b6:	3401      	adds	r4, #1
 80021b8:	f855 3b04 	ldr.w	r3, [r5], #4
 80021bc:	4798      	blx	r3
 80021be:	42a6      	cmp	r6, r4
 80021c0:	d1f9      	bne.n	80021b6 <__libc_init_array+0xe>
 80021c2:	4e09      	ldr	r6, [pc, #36]	; (80021e8 <__libc_init_array+0x40>)
 80021c4:	4d09      	ldr	r5, [pc, #36]	; (80021ec <__libc_init_array+0x44>)
 80021c6:	1b76      	subs	r6, r6, r5
 80021c8:	f004 fea8 	bl	8006f1c <_init>
 80021cc:	10b6      	asrs	r6, r6, #2
 80021ce:	d006      	beq.n	80021de <__libc_init_array+0x36>
 80021d0:	2400      	movs	r4, #0
 80021d2:	3401      	adds	r4, #1
 80021d4:	f855 3b04 	ldr.w	r3, [r5], #4
 80021d8:	4798      	blx	r3
 80021da:	42a6      	cmp	r6, r4
 80021dc:	d1f9      	bne.n	80021d2 <__libc_init_array+0x2a>
 80021de:	bd70      	pop	{r4, r5, r6, pc}
 80021e0:	080072e0 	.word	0x080072e0
 80021e4:	080072e0 	.word	0x080072e0
 80021e8:	080072e8 	.word	0x080072e8
 80021ec:	080072e0 	.word	0x080072e0

080021f0 <memset>:
 80021f0:	b4f0      	push	{r4, r5, r6, r7}
 80021f2:	0786      	lsls	r6, r0, #30
 80021f4:	d043      	beq.n	800227e <memset+0x8e>
 80021f6:	1e54      	subs	r4, r2, #1
 80021f8:	2a00      	cmp	r2, #0
 80021fa:	d03e      	beq.n	800227a <memset+0x8a>
 80021fc:	b2ca      	uxtb	r2, r1
 80021fe:	4603      	mov	r3, r0
 8002200:	e002      	b.n	8002208 <memset+0x18>
 8002202:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002206:	d338      	bcc.n	800227a <memset+0x8a>
 8002208:	f803 2b01 	strb.w	r2, [r3], #1
 800220c:	079d      	lsls	r5, r3, #30
 800220e:	d1f8      	bne.n	8002202 <memset+0x12>
 8002210:	2c03      	cmp	r4, #3
 8002212:	d92b      	bls.n	800226c <memset+0x7c>
 8002214:	b2cd      	uxtb	r5, r1
 8002216:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800221a:	2c0f      	cmp	r4, #15
 800221c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002220:	d916      	bls.n	8002250 <memset+0x60>
 8002222:	f1a4 0710 	sub.w	r7, r4, #16
 8002226:	093f      	lsrs	r7, r7, #4
 8002228:	f103 0620 	add.w	r6, r3, #32
 800222c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002230:	f103 0210 	add.w	r2, r3, #16
 8002234:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002238:	e942 5502 	strd	r5, r5, [r2, #-8]
 800223c:	3210      	adds	r2, #16
 800223e:	42b2      	cmp	r2, r6
 8002240:	d1f8      	bne.n	8002234 <memset+0x44>
 8002242:	f004 040f 	and.w	r4, r4, #15
 8002246:	3701      	adds	r7, #1
 8002248:	2c03      	cmp	r4, #3
 800224a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800224e:	d90d      	bls.n	800226c <memset+0x7c>
 8002250:	461e      	mov	r6, r3
 8002252:	4622      	mov	r2, r4
 8002254:	3a04      	subs	r2, #4
 8002256:	2a03      	cmp	r2, #3
 8002258:	f846 5b04 	str.w	r5, [r6], #4
 800225c:	d8fa      	bhi.n	8002254 <memset+0x64>
 800225e:	1f22      	subs	r2, r4, #4
 8002260:	f022 0203 	bic.w	r2, r2, #3
 8002264:	3204      	adds	r2, #4
 8002266:	4413      	add	r3, r2
 8002268:	f004 0403 	and.w	r4, r4, #3
 800226c:	b12c      	cbz	r4, 800227a <memset+0x8a>
 800226e:	b2c9      	uxtb	r1, r1
 8002270:	441c      	add	r4, r3
 8002272:	f803 1b01 	strb.w	r1, [r3], #1
 8002276:	429c      	cmp	r4, r3
 8002278:	d1fb      	bne.n	8002272 <memset+0x82>
 800227a:	bcf0      	pop	{r4, r5, r6, r7}
 800227c:	4770      	bx	lr
 800227e:	4614      	mov	r4, r2
 8002280:	4603      	mov	r3, r0
 8002282:	e7c5      	b.n	8002210 <memset+0x20>

08002284 <printf>:
 8002284:	b40f      	push	{r0, r1, r2, r3}
 8002286:	b500      	push	{lr}
 8002288:	4907      	ldr	r1, [pc, #28]	; (80022a8 <printf+0x24>)
 800228a:	b083      	sub	sp, #12
 800228c:	ab04      	add	r3, sp, #16
 800228e:	6808      	ldr	r0, [r1, #0]
 8002290:	f853 2b04 	ldr.w	r2, [r3], #4
 8002294:	6881      	ldr	r1, [r0, #8]
 8002296:	9301      	str	r3, [sp, #4]
 8002298:	f000 f85e 	bl	8002358 <_vfprintf_r>
 800229c:	b003      	add	sp, #12
 800229e:	f85d eb04 	ldr.w	lr, [sp], #4
 80022a2:	b004      	add	sp, #16
 80022a4:	4770      	bx	lr
 80022a6:	bf00      	nop
 80022a8:	20000018 	.word	0x20000018

080022ac <_puts_r>:
 80022ac:	b570      	push	{r4, r5, r6, lr}
 80022ae:	4605      	mov	r5, r0
 80022b0:	b088      	sub	sp, #32
 80022b2:	4608      	mov	r0, r1
 80022b4:	460c      	mov	r4, r1
 80022b6:	f7fe f9c3 	bl	8000640 <strlen>
 80022ba:	4a22      	ldr	r2, [pc, #136]	; (8002344 <_puts_r+0x98>)
 80022bc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80022be:	9404      	str	r4, [sp, #16]
 80022c0:	2601      	movs	r6, #1
 80022c2:	1c44      	adds	r4, r0, #1
 80022c4:	a904      	add	r1, sp, #16
 80022c6:	9206      	str	r2, [sp, #24]
 80022c8:	2202      	movs	r2, #2
 80022ca:	9403      	str	r4, [sp, #12]
 80022cc:	9005      	str	r0, [sp, #20]
 80022ce:	68ac      	ldr	r4, [r5, #8]
 80022d0:	9607      	str	r6, [sp, #28]
 80022d2:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80022d6:	b31b      	cbz	r3, 8002320 <_puts_r+0x74>
 80022d8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80022da:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80022de:	07ce      	lsls	r6, r1, #31
 80022e0:	b29a      	uxth	r2, r3
 80022e2:	d401      	bmi.n	80022e8 <_puts_r+0x3c>
 80022e4:	0590      	lsls	r0, r2, #22
 80022e6:	d525      	bpl.n	8002334 <_puts_r+0x88>
 80022e8:	0491      	lsls	r1, r2, #18
 80022ea:	d406      	bmi.n	80022fa <_puts_r+0x4e>
 80022ec:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80022ee:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80022f2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80022f6:	81a3      	strh	r3, [r4, #12]
 80022f8:	6662      	str	r2, [r4, #100]	; 0x64
 80022fa:	4628      	mov	r0, r5
 80022fc:	aa01      	add	r2, sp, #4
 80022fe:	4621      	mov	r1, r4
 8002300:	f003 f85e 	bl	80053c0 <__sfvwrite_r>
 8002304:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002306:	2800      	cmp	r0, #0
 8002308:	bf0c      	ite	eq
 800230a:	250a      	moveq	r5, #10
 800230c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002310:	07da      	lsls	r2, r3, #31
 8002312:	d402      	bmi.n	800231a <_puts_r+0x6e>
 8002314:	89a3      	ldrh	r3, [r4, #12]
 8002316:	059b      	lsls	r3, r3, #22
 8002318:	d506      	bpl.n	8002328 <_puts_r+0x7c>
 800231a:	4628      	mov	r0, r5
 800231c:	b008      	add	sp, #32
 800231e:	bd70      	pop	{r4, r5, r6, pc}
 8002320:	4628      	mov	r0, r5
 8002322:	f002 feb7 	bl	8005094 <__sinit>
 8002326:	e7d7      	b.n	80022d8 <_puts_r+0x2c>
 8002328:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800232a:	f003 fa05 	bl	8005738 <__retarget_lock_release_recursive>
 800232e:	4628      	mov	r0, r5
 8002330:	b008      	add	sp, #32
 8002332:	bd70      	pop	{r4, r5, r6, pc}
 8002334:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002336:	f003 f9fd 	bl	8005734 <__retarget_lock_acquire_recursive>
 800233a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800233e:	b29a      	uxth	r2, r3
 8002340:	e7d2      	b.n	80022e8 <_puts_r+0x3c>
 8002342:	bf00      	nop
 8002344:	08007050 	.word	0x08007050

08002348 <puts>:
 8002348:	4b02      	ldr	r3, [pc, #8]	; (8002354 <puts+0xc>)
 800234a:	4601      	mov	r1, r0
 800234c:	6818      	ldr	r0, [r3, #0]
 800234e:	f7ff bfad 	b.w	80022ac <_puts_r>
 8002352:	bf00      	nop
 8002354:	20000018 	.word	0x20000018

08002358 <_vfprintf_r>:
 8002358:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800235c:	b0d7      	sub	sp, #348	; 0x15c
 800235e:	461c      	mov	r4, r3
 8002360:	4689      	mov	r9, r1
 8002362:	4617      	mov	r7, r2
 8002364:	4605      	mov	r5, r0
 8002366:	9003      	str	r0, [sp, #12]
 8002368:	f003 f9d2 	bl	8005710 <_localeconv_r>
 800236c:	6803      	ldr	r3, [r0, #0]
 800236e:	9316      	str	r3, [sp, #88]	; 0x58
 8002370:	4618      	mov	r0, r3
 8002372:	f7fe f965 	bl	8000640 <strlen>
 8002376:	9408      	str	r4, [sp, #32]
 8002378:	9015      	str	r0, [sp, #84]	; 0x54
 800237a:	b11d      	cbz	r5, 8002384 <_vfprintf_r+0x2c>
 800237c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800237e:	2b00      	cmp	r3, #0
 8002380:	f000 8107 	beq.w	8002592 <_vfprintf_r+0x23a>
 8002384:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002388:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800238c:	07c8      	lsls	r0, r1, #31
 800238e:	b293      	uxth	r3, r2
 8002390:	d402      	bmi.n	8002398 <_vfprintf_r+0x40>
 8002392:	0599      	lsls	r1, r3, #22
 8002394:	f140 811f 	bpl.w	80025d6 <_vfprintf_r+0x27e>
 8002398:	049e      	lsls	r6, r3, #18
 800239a:	d40a      	bmi.n	80023b2 <_vfprintf_r+0x5a>
 800239c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80023a0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80023a4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80023a8:	f8a9 300c 	strh.w	r3, [r9, #12]
 80023ac:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80023b0:	b29b      	uxth	r3, r3
 80023b2:	071d      	lsls	r5, r3, #28
 80023b4:	f140 80b2 	bpl.w	800251c <_vfprintf_r+0x1c4>
 80023b8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80023bc:	2a00      	cmp	r2, #0
 80023be:	f000 80ad 	beq.w	800251c <_vfprintf_r+0x1c4>
 80023c2:	f003 021a 	and.w	r2, r3, #26
 80023c6:	2a0a      	cmp	r2, #10
 80023c8:	f000 80c9 	beq.w	800255e <_vfprintf_r+0x206>
 80023cc:	2300      	movs	r3, #0
 80023ce:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80025e8 <_vfprintf_r+0x290>
 80023d2:	9310      	str	r3, [sp, #64]	; 0x40
 80023d4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80023d8:	9317      	str	r3, [sp, #92]	; 0x5c
 80023da:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80023de:	931b      	str	r3, [sp, #108]	; 0x6c
 80023e0:	9318      	str	r3, [sp, #96]	; 0x60
 80023e2:	9305      	str	r3, [sp, #20]
 80023e4:	ab2d      	add	r3, sp, #180	; 0xb4
 80023e6:	932a      	str	r3, [sp, #168]	; 0xa8
 80023e8:	469b      	mov	fp, r3
 80023ea:	783b      	ldrb	r3, [r7, #0]
 80023ec:	f8cd 901c 	str.w	r9, [sp, #28]
 80023f0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80023f4:	2b00      	cmp	r3, #0
 80023f6:	f000 8259 	beq.w	80028ac <_vfprintf_r+0x554>
 80023fa:	2b25      	cmp	r3, #37	; 0x25
 80023fc:	463c      	mov	r4, r7
 80023fe:	d102      	bne.n	8002406 <_vfprintf_r+0xae>
 8002400:	e01d      	b.n	800243e <_vfprintf_r+0xe6>
 8002402:	2b25      	cmp	r3, #37	; 0x25
 8002404:	d003      	beq.n	800240e <_vfprintf_r+0xb6>
 8002406:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800240a:	2b00      	cmp	r3, #0
 800240c:	d1f9      	bne.n	8002402 <_vfprintf_r+0xaa>
 800240e:	1be5      	subs	r5, r4, r7
 8002410:	b18d      	cbz	r5, 8002436 <_vfprintf_r+0xde>
 8002412:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002416:	3301      	adds	r3, #1
 8002418:	442a      	add	r2, r5
 800241a:	2b07      	cmp	r3, #7
 800241c:	f8cb 7000 	str.w	r7, [fp]
 8002420:	f8cb 5004 	str.w	r5, [fp, #4]
 8002424:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002428:	f300 80ca 	bgt.w	80025c0 <_vfprintf_r+0x268>
 800242c:	f10b 0b08 	add.w	fp, fp, #8
 8002430:	9b05      	ldr	r3, [sp, #20]
 8002432:	442b      	add	r3, r5
 8002434:	9305      	str	r3, [sp, #20]
 8002436:	7823      	ldrb	r3, [r4, #0]
 8002438:	2b00      	cmp	r3, #0
 800243a:	f000 8237 	beq.w	80028ac <_vfprintf_r+0x554>
 800243e:	2300      	movs	r3, #0
 8002440:	7866      	ldrb	r6, [r4, #1]
 8002442:	9306      	str	r3, [sp, #24]
 8002444:	4698      	mov	r8, r3
 8002446:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800244a:	f104 0a01 	add.w	sl, r4, #1
 800244e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002452:	252b      	movs	r5, #43	; 0x2b
 8002454:	f10a 0a01 	add.w	sl, sl, #1
 8002458:	f1a6 0320 	sub.w	r3, r6, #32
 800245c:	2b5a      	cmp	r3, #90	; 0x5a
 800245e:	f200 842a 	bhi.w	8002cb6 <_vfprintf_r+0x95e>
 8002462:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002466:	03aa      	.short	0x03aa
 8002468:	04280428 	.word	0x04280428
 800246c:	0428029c 	.word	0x0428029c
 8002470:	04280428 	.word	0x04280428
 8002474:	042802a7 	.word	0x042802a7
 8002478:	02c60428 	.word	0x02c60428
 800247c:	042802d2 	.word	0x042802d2
 8002480:	02dc02d7 	.word	0x02dc02d7
 8002484:	02f60428 	.word	0x02f60428
 8002488:	026d026d 	.word	0x026d026d
 800248c:	026d026d 	.word	0x026d026d
 8002490:	026d026d 	.word	0x026d026d
 8002494:	026d026d 	.word	0x026d026d
 8002498:	0428026d 	.word	0x0428026d
 800249c:	04280428 	.word	0x04280428
 80024a0:	04280428 	.word	0x04280428
 80024a4:	04280428 	.word	0x04280428
 80024a8:	042802fb 	.word	0x042802fb
 80024ac:	03f3033c 	.word	0x03f3033c
 80024b0:	02fb02fb 	.word	0x02fb02fb
 80024b4:	042802fb 	.word	0x042802fb
 80024b8:	04280428 	.word	0x04280428
 80024bc:	03ee0428 	.word	0x03ee0428
 80024c0:	04280428 	.word	0x04280428
 80024c4:	0428009a 	.word	0x0428009a
 80024c8:	04280428 	.word	0x04280428
 80024cc:	04280350 	.word	0x04280350
 80024d0:	04280379 	.word	0x04280379
 80024d4:	03900428 	.word	0x03900428
 80024d8:	04280428 	.word	0x04280428
 80024dc:	04280428 	.word	0x04280428
 80024e0:	04280428 	.word	0x04280428
 80024e4:	04280428 	.word	0x04280428
 80024e8:	042802fb 	.word	0x042802fb
 80024ec:	00c5033c 	.word	0x00c5033c
 80024f0:	02fb02fb 	.word	0x02fb02fb
 80024f4:	03d102fb 	.word	0x03d102fb
 80024f8:	007000c5 	.word	0x007000c5
 80024fc:	03b50428 	.word	0x03b50428
 8002500:	03c20428 	.word	0x03c20428
 8002504:	03de009c 	.word	0x03de009c
 8002508:	04280070 	.word	0x04280070
 800250c:	00720350 	.word	0x00720350
 8002510:	0428022c 	.word	0x0428022c
 8002514:	027c0428 	.word	0x027c0428
 8002518:	00720428 	.word	0x00720428
 800251c:	4649      	mov	r1, r9
 800251e:	9803      	ldr	r0, [sp, #12]
 8002520:	f001 fc9a 	bl	8003e58 <__swsetup_r>
 8002524:	b1a0      	cbz	r0, 8002550 <_vfprintf_r+0x1f8>
 8002526:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800252a:	07d8      	lsls	r0, r3, #31
 800252c:	d404      	bmi.n	8002538 <_vfprintf_r+0x1e0>
 800252e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002532:	0599      	lsls	r1, r3, #22
 8002534:	f140 83b7 	bpl.w	8002ca6 <_vfprintf_r+0x94e>
 8002538:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800253c:	9305      	str	r3, [sp, #20]
 800253e:	9805      	ldr	r0, [sp, #20]
 8002540:	b057      	add	sp, #348	; 0x15c
 8002542:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002546:	f048 0820 	orr.w	r8, r8, #32
 800254a:	f89a 6000 	ldrb.w	r6, [sl]
 800254e:	e781      	b.n	8002454 <_vfprintf_r+0xfc>
 8002550:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002554:	f003 021a 	and.w	r2, r3, #26
 8002558:	2a0a      	cmp	r2, #10
 800255a:	f47f af37 	bne.w	80023cc <_vfprintf_r+0x74>
 800255e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002562:	2a00      	cmp	r2, #0
 8002564:	f6ff af32 	blt.w	80023cc <_vfprintf_r+0x74>
 8002568:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800256c:	07d2      	lsls	r2, r2, #31
 800256e:	d405      	bmi.n	800257c <_vfprintf_r+0x224>
 8002570:	059b      	lsls	r3, r3, #22
 8002572:	d403      	bmi.n	800257c <_vfprintf_r+0x224>
 8002574:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002578:	f003 f8de 	bl	8005738 <__retarget_lock_release_recursive>
 800257c:	4623      	mov	r3, r4
 800257e:	463a      	mov	r2, r7
 8002580:	4649      	mov	r1, r9
 8002582:	9803      	ldr	r0, [sp, #12]
 8002584:	f001 fc26 	bl	8003dd4 <__sbprintf>
 8002588:	9005      	str	r0, [sp, #20]
 800258a:	9805      	ldr	r0, [sp, #20]
 800258c:	b057      	add	sp, #348	; 0x15c
 800258e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002592:	9803      	ldr	r0, [sp, #12]
 8002594:	f002 fd7e 	bl	8005094 <__sinit>
 8002598:	e6f4      	b.n	8002384 <_vfprintf_r+0x2c>
 800259a:	f048 0810 	orr.w	r8, r8, #16
 800259e:	f018 0f20 	tst.w	r8, #32
 80025a2:	f000 836c 	beq.w	8002c7e <_vfprintf_r+0x926>
 80025a6:	9c08      	ldr	r4, [sp, #32]
 80025a8:	3407      	adds	r4, #7
 80025aa:	f024 0307 	bic.w	r3, r4, #7
 80025ae:	e9d3 4500 	ldrd	r4, r5, [r3]
 80025b2:	f103 0208 	add.w	r2, r3, #8
 80025b6:	9208      	str	r2, [sp, #32]
 80025b8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80025bc:	2200      	movs	r2, #0
 80025be:	e18c      	b.n	80028da <_vfprintf_r+0x582>
 80025c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80025c2:	9907      	ldr	r1, [sp, #28]
 80025c4:	9803      	ldr	r0, [sp, #12]
 80025c6:	f004 f9f5 	bl	80069b4 <__sprint_r>
 80025ca:	2800      	cmp	r0, #0
 80025cc:	f041 8376 	bne.w	8003cbc <_vfprintf_r+0x1964>
 80025d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80025d4:	e72c      	b.n	8002430 <_vfprintf_r+0xd8>
 80025d6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80025da:	f003 f8ab 	bl	8005734 <__retarget_lock_acquire_recursive>
 80025de:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80025e2:	b293      	uxth	r3, r2
 80025e4:	e6d8      	b.n	8002398 <_vfprintf_r+0x40>
 80025e6:	bf00      	nop
	...
 80025f0:	4643      	mov	r3, r8
 80025f2:	069f      	lsls	r7, r3, #26
 80025f4:	f140 832f 	bpl.w	8002c56 <_vfprintf_r+0x8fe>
 80025f8:	9c08      	ldr	r4, [sp, #32]
 80025fa:	3407      	adds	r4, #7
 80025fc:	f024 0407 	bic.w	r4, r4, #7
 8002600:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002604:	f104 0208 	add.w	r2, r4, #8
 8002608:	9208      	str	r2, [sp, #32]
 800260a:	4604      	mov	r4, r0
 800260c:	460d      	mov	r5, r1
 800260e:	2800      	cmp	r0, #0
 8002610:	f171 0200 	sbcs.w	r2, r1, #0
 8002614:	da05      	bge.n	8002622 <_vfprintf_r+0x2ca>
 8002616:	222d      	movs	r2, #45	; 0x2d
 8002618:	4264      	negs	r4, r4
 800261a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800261e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002622:	aa56      	add	r2, sp, #344	; 0x158
 8002624:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002628:	9204      	str	r2, [sp, #16]
 800262a:	f000 84b2 	beq.w	8002f92 <_vfprintf_r+0xc3a>
 800262e:	2201      	movs	r2, #1
 8002630:	ea54 0105 	orrs.w	r1, r4, r5
 8002634:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002638:	f040 8159 	bne.w	80028ee <_vfprintf_r+0x596>
 800263c:	f1b9 0f00 	cmp.w	r9, #0
 8002640:	f040 8619 	bne.w	8003276 <_vfprintf_r+0xf1e>
 8002644:	2a00      	cmp	r2, #0
 8002646:	f040 8508 	bne.w	800305a <_vfprintf_r+0xd02>
 800264a:	f013 0301 	ands.w	r3, r3, #1
 800264e:	af56      	add	r7, sp, #344	; 0x158
 8002650:	9309      	str	r3, [sp, #36]	; 0x24
 8002652:	d002      	beq.n	800265a <_vfprintf_r+0x302>
 8002654:	2330      	movs	r3, #48	; 0x30
 8002656:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800265a:	2300      	movs	r3, #0
 800265c:	930a      	str	r3, [sp, #40]	; 0x28
 800265e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002660:	9314      	str	r3, [sp, #80]	; 0x50
 8002662:	9311      	str	r3, [sp, #68]	; 0x44
 8002664:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002666:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800266a:	454b      	cmp	r3, r9
 800266c:	bfb8      	it	lt
 800266e:	464b      	movlt	r3, r9
 8002670:	9304      	str	r3, [sp, #16]
 8002672:	b112      	cbz	r2, 800267a <_vfprintf_r+0x322>
 8002674:	9b04      	ldr	r3, [sp, #16]
 8002676:	3301      	adds	r3, #1
 8002678:	9304      	str	r3, [sp, #16]
 800267a:	f018 0302 	ands.w	r3, r8, #2
 800267e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002680:	d002      	beq.n	8002688 <_vfprintf_r+0x330>
 8002682:	9b04      	ldr	r3, [sp, #16]
 8002684:	3302      	adds	r3, #2
 8002686:	9304      	str	r3, [sp, #16]
 8002688:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800268c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800268e:	930e      	str	r3, [sp, #56]	; 0x38
 8002690:	d13f      	bne.n	8002712 <_vfprintf_r+0x3ba>
 8002692:	9b06      	ldr	r3, [sp, #24]
 8002694:	9904      	ldr	r1, [sp, #16]
 8002696:	1a5d      	subs	r5, r3, r1
 8002698:	2d00      	cmp	r5, #0
 800269a:	dd3a      	ble.n	8002712 <_vfprintf_r+0x3ba>
 800269c:	2d10      	cmp	r5, #16
 800269e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80026a0:	dd29      	ble.n	80026f6 <_vfprintf_r+0x39e>
 80026a2:	4659      	mov	r1, fp
 80026a4:	4620      	mov	r0, r4
 80026a6:	9620      	str	r6, [sp, #128]	; 0x80
 80026a8:	2310      	movs	r3, #16
 80026aa:	9c03      	ldr	r4, [sp, #12]
 80026ac:	9e07      	ldr	r6, [sp, #28]
 80026ae:	46bb      	mov	fp, r7
 80026b0:	e004      	b.n	80026bc <_vfprintf_r+0x364>
 80026b2:	3d10      	subs	r5, #16
 80026b4:	2d10      	cmp	r5, #16
 80026b6:	f101 0108 	add.w	r1, r1, #8
 80026ba:	dd18      	ble.n	80026ee <_vfprintf_r+0x396>
 80026bc:	3201      	adds	r2, #1
 80026be:	4fba      	ldr	r7, [pc, #744]	; (80029a8 <_vfprintf_r+0x650>)
 80026c0:	3010      	adds	r0, #16
 80026c2:	2a07      	cmp	r2, #7
 80026c4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80026c8:	e9c1 7300 	strd	r7, r3, [r1]
 80026cc:	ddf1      	ble.n	80026b2 <_vfprintf_r+0x35a>
 80026ce:	aa2a      	add	r2, sp, #168	; 0xa8
 80026d0:	4631      	mov	r1, r6
 80026d2:	4620      	mov	r0, r4
 80026d4:	930c      	str	r3, [sp, #48]	; 0x30
 80026d6:	f004 f96d 	bl	80069b4 <__sprint_r>
 80026da:	2800      	cmp	r0, #0
 80026dc:	f040 843d 	bne.w	8002f5a <_vfprintf_r+0xc02>
 80026e0:	3d10      	subs	r5, #16
 80026e2:	2d10      	cmp	r5, #16
 80026e4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80026e8:	a92d      	add	r1, sp, #180	; 0xb4
 80026ea:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80026ec:	dce6      	bgt.n	80026bc <_vfprintf_r+0x364>
 80026ee:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80026f0:	465f      	mov	r7, fp
 80026f2:	4604      	mov	r4, r0
 80026f4:	468b      	mov	fp, r1
 80026f6:	3201      	adds	r2, #1
 80026f8:	4bab      	ldr	r3, [pc, #684]	; (80029a8 <_vfprintf_r+0x650>)
 80026fa:	442c      	add	r4, r5
 80026fc:	2a07      	cmp	r2, #7
 80026fe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002702:	e9cb 3500 	strd	r3, r5, [fp]
 8002706:	f300 84ff 	bgt.w	8003108 <_vfprintf_r+0xdb0>
 800270a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800270e:	f10b 0b08 	add.w	fp, fp, #8
 8002712:	b172      	cbz	r2, 8002732 <_vfprintf_r+0x3da>
 8002714:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002716:	3201      	adds	r2, #1
 8002718:	3401      	adds	r4, #1
 800271a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800271e:	2101      	movs	r1, #1
 8002720:	2a07      	cmp	r2, #7
 8002722:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002726:	e9cb 0100 	strd	r0, r1, [fp]
 800272a:	f300 8418 	bgt.w	8002f5e <_vfprintf_r+0xc06>
 800272e:	f10b 0b08 	add.w	fp, fp, #8
 8002732:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002734:	b16b      	cbz	r3, 8002752 <_vfprintf_r+0x3fa>
 8002736:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002738:	3301      	adds	r3, #1
 800273a:	3402      	adds	r4, #2
 800273c:	a923      	add	r1, sp, #140	; 0x8c
 800273e:	2202      	movs	r2, #2
 8002740:	2b07      	cmp	r3, #7
 8002742:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002746:	e9cb 1200 	strd	r1, r2, [fp]
 800274a:	f300 8415 	bgt.w	8002f78 <_vfprintf_r+0xc20>
 800274e:	f10b 0b08 	add.w	fp, fp, #8
 8002752:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002754:	2b80      	cmp	r3, #128	; 0x80
 8002756:	f000 8331 	beq.w	8002dbc <_vfprintf_r+0xa64>
 800275a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800275c:	eba9 0503 	sub.w	r5, r9, r3
 8002760:	2d00      	cmp	r5, #0
 8002762:	dd37      	ble.n	80027d4 <_vfprintf_r+0x47c>
 8002764:	2d10      	cmp	r5, #16
 8002766:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002768:	4b90      	ldr	r3, [pc, #576]	; (80029ac <_vfprintf_r+0x654>)
 800276a:	dd28      	ble.n	80027be <_vfprintf_r+0x466>
 800276c:	4659      	mov	r1, fp
 800276e:	4620      	mov	r0, r4
 8002770:	46bb      	mov	fp, r7
 8002772:	f04f 0910 	mov.w	r9, #16
 8002776:	4637      	mov	r7, r6
 8002778:	461c      	mov	r4, r3
 800277a:	9e07      	ldr	r6, [sp, #28]
 800277c:	e004      	b.n	8002788 <_vfprintf_r+0x430>
 800277e:	3d10      	subs	r5, #16
 8002780:	2d10      	cmp	r5, #16
 8002782:	f101 0108 	add.w	r1, r1, #8
 8002786:	dd15      	ble.n	80027b4 <_vfprintf_r+0x45c>
 8002788:	3201      	adds	r2, #1
 800278a:	3010      	adds	r0, #16
 800278c:	2a07      	cmp	r2, #7
 800278e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002792:	e9c1 4900 	strd	r4, r9, [r1]
 8002796:	ddf2      	ble.n	800277e <_vfprintf_r+0x426>
 8002798:	aa2a      	add	r2, sp, #168	; 0xa8
 800279a:	4631      	mov	r1, r6
 800279c:	9803      	ldr	r0, [sp, #12]
 800279e:	f004 f909 	bl	80069b4 <__sprint_r>
 80027a2:	2800      	cmp	r0, #0
 80027a4:	f040 83d9 	bne.w	8002f5a <_vfprintf_r+0xc02>
 80027a8:	3d10      	subs	r5, #16
 80027aa:	2d10      	cmp	r5, #16
 80027ac:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80027b0:	a92d      	add	r1, sp, #180	; 0xb4
 80027b2:	dce9      	bgt.n	8002788 <_vfprintf_r+0x430>
 80027b4:	463e      	mov	r6, r7
 80027b6:	4623      	mov	r3, r4
 80027b8:	465f      	mov	r7, fp
 80027ba:	4604      	mov	r4, r0
 80027bc:	468b      	mov	fp, r1
 80027be:	3201      	adds	r2, #1
 80027c0:	442c      	add	r4, r5
 80027c2:	2a07      	cmp	r2, #7
 80027c4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80027c8:	e9cb 3500 	strd	r3, r5, [fp]
 80027cc:	f300 83ef 	bgt.w	8002fae <_vfprintf_r+0xc56>
 80027d0:	f10b 0b08 	add.w	fp, fp, #8
 80027d4:	f418 7f80 	tst.w	r8, #256	; 0x100
 80027d8:	f040 8280 	bne.w	8002cdc <_vfprintf_r+0x984>
 80027dc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80027de:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80027e0:	f8cb 7000 	str.w	r7, [fp]
 80027e4:	3301      	adds	r3, #1
 80027e6:	4414      	add	r4, r2
 80027e8:	2b07      	cmp	r3, #7
 80027ea:	942c      	str	r4, [sp, #176]	; 0xb0
 80027ec:	f8cb 2004 	str.w	r2, [fp, #4]
 80027f0:	932b      	str	r3, [sp, #172]	; 0xac
 80027f2:	f300 8392 	bgt.w	8002f1a <_vfprintf_r+0xbc2>
 80027f6:	f10b 0b08 	add.w	fp, fp, #8
 80027fa:	f018 0f04 	tst.w	r8, #4
 80027fe:	d03b      	beq.n	8002878 <_vfprintf_r+0x520>
 8002800:	9b06      	ldr	r3, [sp, #24]
 8002802:	9a04      	ldr	r2, [sp, #16]
 8002804:	1a9d      	subs	r5, r3, r2
 8002806:	2d00      	cmp	r5, #0
 8002808:	dd36      	ble.n	8002878 <_vfprintf_r+0x520>
 800280a:	2d10      	cmp	r5, #16
 800280c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800280e:	dd21      	ble.n	8002854 <_vfprintf_r+0x4fc>
 8002810:	2610      	movs	r6, #16
 8002812:	9f03      	ldr	r7, [sp, #12]
 8002814:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002818:	e004      	b.n	8002824 <_vfprintf_r+0x4cc>
 800281a:	3d10      	subs	r5, #16
 800281c:	2d10      	cmp	r5, #16
 800281e:	f10b 0b08 	add.w	fp, fp, #8
 8002822:	dd17      	ble.n	8002854 <_vfprintf_r+0x4fc>
 8002824:	3301      	adds	r3, #1
 8002826:	4a60      	ldr	r2, [pc, #384]	; (80029a8 <_vfprintf_r+0x650>)
 8002828:	3410      	adds	r4, #16
 800282a:	2b07      	cmp	r3, #7
 800282c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002830:	e9cb 2600 	strd	r2, r6, [fp]
 8002834:	ddf1      	ble.n	800281a <_vfprintf_r+0x4c2>
 8002836:	aa2a      	add	r2, sp, #168	; 0xa8
 8002838:	4641      	mov	r1, r8
 800283a:	4638      	mov	r0, r7
 800283c:	f004 f8ba 	bl	80069b4 <__sprint_r>
 8002840:	2800      	cmp	r0, #0
 8002842:	f040 856c 	bne.w	800331e <_vfprintf_r+0xfc6>
 8002846:	3d10      	subs	r5, #16
 8002848:	2d10      	cmp	r5, #16
 800284a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800284e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002852:	dce7      	bgt.n	8002824 <_vfprintf_r+0x4cc>
 8002854:	3301      	adds	r3, #1
 8002856:	4a54      	ldr	r2, [pc, #336]	; (80029a8 <_vfprintf_r+0x650>)
 8002858:	442c      	add	r4, r5
 800285a:	2b07      	cmp	r3, #7
 800285c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002860:	e9cb 2500 	strd	r2, r5, [fp]
 8002864:	dd08      	ble.n	8002878 <_vfprintf_r+0x520>
 8002866:	aa2a      	add	r2, sp, #168	; 0xa8
 8002868:	9907      	ldr	r1, [sp, #28]
 800286a:	9803      	ldr	r0, [sp, #12]
 800286c:	f004 f8a2 	bl	80069b4 <__sprint_r>
 8002870:	2800      	cmp	r0, #0
 8002872:	f040 82e9 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8002876:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002878:	9904      	ldr	r1, [sp, #16]
 800287a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800287e:	428a      	cmp	r2, r1
 8002880:	bfac      	ite	ge
 8002882:	189b      	addge	r3, r3, r2
 8002884:	185b      	addlt	r3, r3, r1
 8002886:	9305      	str	r3, [sp, #20]
 8002888:	2c00      	cmp	r4, #0
 800288a:	f040 82d5 	bne.w	8002e38 <_vfprintf_r+0xae0>
 800288e:	2300      	movs	r3, #0
 8002890:	932b      	str	r3, [sp, #172]	; 0xac
 8002892:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002894:	b11b      	cbz	r3, 800289e <_vfprintf_r+0x546>
 8002896:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002898:	9803      	ldr	r0, [sp, #12]
 800289a:	f002 fc9d 	bl	80051d8 <_free_r>
 800289e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80028a2:	4657      	mov	r7, sl
 80028a4:	783b      	ldrb	r3, [r7, #0]
 80028a6:	2b00      	cmp	r3, #0
 80028a8:	f47f ada7 	bne.w	80023fa <_vfprintf_r+0xa2>
 80028ac:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80028ae:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80028b2:	2b00      	cmp	r3, #0
 80028b4:	f041 80e7 	bne.w	8003a86 <_vfprintf_r+0x172e>
 80028b8:	2300      	movs	r3, #0
 80028ba:	932b      	str	r3, [sp, #172]	; 0xac
 80028bc:	e2cb      	b.n	8002e56 <_vfprintf_r+0xafe>
 80028be:	4643      	mov	r3, r8
 80028c0:	069a      	lsls	r2, r3, #26
 80028c2:	f140 814e 	bpl.w	8002b62 <_vfprintf_r+0x80a>
 80028c6:	9c08      	ldr	r4, [sp, #32]
 80028c8:	3407      	adds	r4, #7
 80028ca:	f024 0207 	bic.w	r2, r4, #7
 80028ce:	f102 0108 	add.w	r1, r2, #8
 80028d2:	e9d2 4500 	ldrd	r4, r5, [r2]
 80028d6:	9108      	str	r1, [sp, #32]
 80028d8:	2201      	movs	r2, #1
 80028da:	2100      	movs	r1, #0
 80028dc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80028e0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80028e4:	a956      	add	r1, sp, #344	; 0x158
 80028e6:	9104      	str	r1, [sp, #16]
 80028e8:	f47f aea2 	bne.w	8002630 <_vfprintf_r+0x2d8>
 80028ec:	4698      	mov	r8, r3
 80028ee:	2a01      	cmp	r2, #1
 80028f0:	f000 8350 	beq.w	8002f94 <_vfprintf_r+0xc3c>
 80028f4:	2a02      	cmp	r2, #2
 80028f6:	f000 831b 	beq.w	8002f30 <_vfprintf_r+0xbd8>
 80028fa:	a956      	add	r1, sp, #344	; 0x158
 80028fc:	e000      	b.n	8002900 <_vfprintf_r+0x5a8>
 80028fe:	4639      	mov	r1, r7
 8002900:	08e2      	lsrs	r2, r4, #3
 8002902:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002906:	08e8      	lsrs	r0, r5, #3
 8002908:	f004 0307 	and.w	r3, r4, #7
 800290c:	4605      	mov	r5, r0
 800290e:	4614      	mov	r4, r2
 8002910:	3330      	adds	r3, #48	; 0x30
 8002912:	ea54 0205 	orrs.w	r2, r4, r5
 8002916:	f801 3c01 	strb.w	r3, [r1, #-1]
 800291a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800291e:	d1ee      	bne.n	80028fe <_vfprintf_r+0x5a6>
 8002920:	f018 0f01 	tst.w	r8, #1
 8002924:	f000 8314 	beq.w	8002f50 <_vfprintf_r+0xbf8>
 8002928:	2b30      	cmp	r3, #48	; 0x30
 800292a:	f000 8311 	beq.w	8002f50 <_vfprintf_r+0xbf8>
 800292e:	9a04      	ldr	r2, [sp, #16]
 8002930:	3902      	subs	r1, #2
 8002932:	2330      	movs	r3, #48	; 0x30
 8002934:	1a52      	subs	r2, r2, r1
 8002936:	f807 3c01 	strb.w	r3, [r7, #-1]
 800293a:	9209      	str	r2, [sp, #36]	; 0x24
 800293c:	460f      	mov	r7, r1
 800293e:	e68c      	b.n	800265a <_vfprintf_r+0x302>
 8002940:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002944:	2200      	movs	r2, #0
 8002946:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800294a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800294e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002952:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002956:	2b09      	cmp	r3, #9
 8002958:	d9f5      	bls.n	8002946 <_vfprintf_r+0x5ee>
 800295a:	9206      	str	r2, [sp, #24]
 800295c:	e57c      	b.n	8002458 <_vfprintf_r+0x100>
 800295e:	4b14      	ldr	r3, [pc, #80]	; (80029b0 <_vfprintf_r+0x658>)
 8002960:	9317      	str	r3, [sp, #92]	; 0x5c
 8002962:	f018 0f20 	tst.w	r8, #32
 8002966:	f000 8114 	beq.w	8002b92 <_vfprintf_r+0x83a>
 800296a:	9c08      	ldr	r4, [sp, #32]
 800296c:	3407      	adds	r4, #7
 800296e:	f024 0307 	bic.w	r3, r4, #7
 8002972:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002976:	f103 0208 	add.w	r2, r3, #8
 800297a:	9208      	str	r2, [sp, #32]
 800297c:	f018 0f01 	tst.w	r8, #1
 8002980:	d009      	beq.n	8002996 <_vfprintf_r+0x63e>
 8002982:	ea54 0305 	orrs.w	r3, r4, r5
 8002986:	d006      	beq.n	8002996 <_vfprintf_r+0x63e>
 8002988:	2330      	movs	r3, #48	; 0x30
 800298a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800298e:	f048 0802 	orr.w	r8, r8, #2
 8002992:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002996:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800299a:	2202      	movs	r2, #2
 800299c:	e79d      	b.n	80028da <_vfprintf_r+0x582>
 800299e:	f048 0801 	orr.w	r8, r8, #1
 80029a2:	f89a 6000 	ldrb.w	r6, [sl]
 80029a6:	e555      	b.n	8002454 <_vfprintf_r+0xfc>
 80029a8:	08007098 	.word	0x08007098
 80029ac:	080070a8 	.word	0x080070a8
 80029b0:	08007064 	.word	0x08007064
 80029b4:	9e03      	ldr	r6, [sp, #12]
 80029b6:	4630      	mov	r0, r6
 80029b8:	f002 feaa 	bl	8005710 <_localeconv_r>
 80029bc:	6843      	ldr	r3, [r0, #4]
 80029be:	9318      	str	r3, [sp, #96]	; 0x60
 80029c0:	4618      	mov	r0, r3
 80029c2:	f7fd fe3d 	bl	8000640 <strlen>
 80029c6:	901b      	str	r0, [sp, #108]	; 0x6c
 80029c8:	4604      	mov	r4, r0
 80029ca:	4630      	mov	r0, r6
 80029cc:	f002 fea0 	bl	8005710 <_localeconv_r>
 80029d0:	6883      	ldr	r3, [r0, #8]
 80029d2:	931a      	str	r3, [sp, #104]	; 0x68
 80029d4:	2c00      	cmp	r4, #0
 80029d6:	f43f adb8 	beq.w	800254a <_vfprintf_r+0x1f2>
 80029da:	f89a 6000 	ldrb.w	r6, [sl]
 80029de:	2b00      	cmp	r3, #0
 80029e0:	f43f ad38 	beq.w	8002454 <_vfprintf_r+0xfc>
 80029e4:	781b      	ldrb	r3, [r3, #0]
 80029e6:	2b00      	cmp	r3, #0
 80029e8:	f43f ad34 	beq.w	8002454 <_vfprintf_r+0xfc>
 80029ec:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80029f0:	e530      	b.n	8002454 <_vfprintf_r+0xfc>
 80029f2:	9b08      	ldr	r3, [sp, #32]
 80029f4:	f89a 6000 	ldrb.w	r6, [sl]
 80029f8:	681a      	ldr	r2, [r3, #0]
 80029fa:	9206      	str	r2, [sp, #24]
 80029fc:	2a00      	cmp	r2, #0
 80029fe:	f103 0304 	add.w	r3, r3, #4
 8002a02:	f2c0 8697 	blt.w	8003734 <_vfprintf_r+0x13dc>
 8002a06:	9308      	str	r3, [sp, #32]
 8002a08:	e524      	b.n	8002454 <_vfprintf_r+0xfc>
 8002a0a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002a0e:	f89a 6000 	ldrb.w	r6, [sl]
 8002a12:	e51f      	b.n	8002454 <_vfprintf_r+0xfc>
 8002a14:	f89a 6000 	ldrb.w	r6, [sl]
 8002a18:	f048 0804 	orr.w	r8, r8, #4
 8002a1c:	e51a      	b.n	8002454 <_vfprintf_r+0xfc>
 8002a1e:	f89a 6000 	ldrb.w	r6, [sl]
 8002a22:	2e2a      	cmp	r6, #42	; 0x2a
 8002a24:	f10a 0201 	add.w	r2, sl, #1
 8002a28:	f001 81b0 	beq.w	8003d8c <_vfprintf_r+0x1a34>
 8002a2c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a30:	2b09      	cmp	r3, #9
 8002a32:	4692      	mov	sl, r2
 8002a34:	f04f 0900 	mov.w	r9, #0
 8002a38:	f63f ad0e 	bhi.w	8002458 <_vfprintf_r+0x100>
 8002a3c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a40:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002a44:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002a48:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a4c:	2b09      	cmp	r3, #9
 8002a4e:	d9f5      	bls.n	8002a3c <_vfprintf_r+0x6e4>
 8002a50:	e502      	b.n	8002458 <_vfprintf_r+0x100>
 8002a52:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002a56:	f89a 6000 	ldrb.w	r6, [sl]
 8002a5a:	e4fb      	b.n	8002454 <_vfprintf_r+0xfc>
 8002a5c:	9c08      	ldr	r4, [sp, #32]
 8002a5e:	3407      	adds	r4, #7
 8002a60:	f024 0407 	bic.w	r4, r4, #7
 8002a64:	ed94 7b00 	vldr	d7, [r4]
 8002a68:	ec52 1b17 	vmov	r1, r2, d7
 8002a6c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002a70:	931d      	str	r3, [sp, #116]	; 0x74
 8002a72:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002a76:	3408      	adds	r4, #8
 8002a78:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002a7c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002a80:	4bba      	ldr	r3, [pc, #744]	; (8002d6c <_vfprintf_r+0xa14>)
 8002a82:	9408      	str	r4, [sp, #32]
 8002a84:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002a88:	f7fe faf0 	bl	800106c <__aeabi_dcmpun>
 8002a8c:	2800      	cmp	r0, #0
 8002a8e:	f040 846f 	bne.w	8003370 <_vfprintf_r+0x1018>
 8002a92:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002a96:	4bb5      	ldr	r3, [pc, #724]	; (8002d6c <_vfprintf_r+0xa14>)
 8002a98:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002a9c:	f7fe fac8 	bl	8001030 <__aeabi_dcmple>
 8002aa0:	2800      	cmp	r0, #0
 8002aa2:	f040 8465 	bne.w	8003370 <_vfprintf_r+0x1018>
 8002aa6:	2200      	movs	r2, #0
 8002aa8:	2300      	movs	r3, #0
 8002aaa:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002aae:	f7fe fab5 	bl	800101c <__aeabi_dcmplt>
 8002ab2:	2800      	cmp	r0, #0
 8002ab4:	f040 855b 	bne.w	800356e <_vfprintf_r+0x1216>
 8002ab8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002abc:	4fac      	ldr	r7, [pc, #688]	; (8002d70 <_vfprintf_r+0xa18>)
 8002abe:	4bad      	ldr	r3, [pc, #692]	; (8002d74 <_vfprintf_r+0xa1c>)
 8002ac0:	2000      	movs	r0, #0
 8002ac2:	2103      	movs	r1, #3
 8002ac4:	9104      	str	r1, [sp, #16]
 8002ac6:	900a      	str	r0, [sp, #40]	; 0x28
 8002ac8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002acc:	2e47      	cmp	r6, #71	; 0x47
 8002ace:	bfd8      	it	le
 8002ad0:	461f      	movle	r7, r3
 8002ad2:	9109      	str	r1, [sp, #36]	; 0x24
 8002ad4:	4681      	mov	r9, r0
 8002ad6:	900f      	str	r0, [sp, #60]	; 0x3c
 8002ad8:	9014      	str	r0, [sp, #80]	; 0x50
 8002ada:	9011      	str	r0, [sp, #68]	; 0x44
 8002adc:	e5c9      	b.n	8002672 <_vfprintf_r+0x31a>
 8002ade:	9808      	ldr	r0, [sp, #32]
 8002ae0:	2300      	movs	r3, #0
 8002ae2:	6801      	ldr	r1, [r0, #0]
 8002ae4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ae8:	461a      	mov	r2, r3
 8002aea:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002aee:	2301      	movs	r3, #1
 8002af0:	1d01      	adds	r1, r0, #4
 8002af2:	9304      	str	r3, [sp, #16]
 8002af4:	920a      	str	r2, [sp, #40]	; 0x28
 8002af6:	4691      	mov	r9, r2
 8002af8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002afa:	9214      	str	r2, [sp, #80]	; 0x50
 8002afc:	9211      	str	r2, [sp, #68]	; 0x44
 8002afe:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002b02:	af3d      	add	r7, sp, #244	; 0xf4
 8002b04:	e5b9      	b.n	800267a <_vfprintf_r+0x322>
 8002b06:	9b08      	ldr	r3, [sp, #32]
 8002b08:	681f      	ldr	r7, [r3, #0]
 8002b0a:	2500      	movs	r5, #0
 8002b0c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002b10:	1d1c      	adds	r4, r3, #4
 8002b12:	2f00      	cmp	r7, #0
 8002b14:	f000 8639 	beq.w	800378a <_vfprintf_r+0x1432>
 8002b18:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002b1c:	f000 8711 	beq.w	8003942 <_vfprintf_r+0x15ea>
 8002b20:	464a      	mov	r2, r9
 8002b22:	4629      	mov	r1, r5
 8002b24:	4638      	mov	r0, r7
 8002b26:	f7fd fdfb 	bl	8000720 <memchr>
 8002b2a:	900a      	str	r0, [sp, #40]	; 0x28
 8002b2c:	2800      	cmp	r0, #0
 8002b2e:	f000 85e7 	beq.w	8003700 <_vfprintf_r+0x13a8>
 8002b32:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002b34:	1bdb      	subs	r3, r3, r7
 8002b36:	9309      	str	r3, [sp, #36]	; 0x24
 8002b38:	46a9      	mov	r9, r5
 8002b3a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002b3e:	9408      	str	r4, [sp, #32]
 8002b40:	9304      	str	r3, [sp, #16]
 8002b42:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002b46:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002b4a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002b4e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002b52:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b56:	e58c      	b.n	8002672 <_vfprintf_r+0x31a>
 8002b58:	f048 0310 	orr.w	r3, r8, #16
 8002b5c:	069a      	lsls	r2, r3, #26
 8002b5e:	f53f aeb2 	bmi.w	80028c6 <_vfprintf_r+0x56e>
 8002b62:	9a08      	ldr	r2, [sp, #32]
 8002b64:	06df      	lsls	r7, r3, #27
 8002b66:	f102 0104 	add.w	r1, r2, #4
 8002b6a:	f100 837e 	bmi.w	800326a <_vfprintf_r+0xf12>
 8002b6e:	065d      	lsls	r5, r3, #25
 8002b70:	9a08      	ldr	r2, [sp, #32]
 8002b72:	f100 84e4 	bmi.w	800353e <_vfprintf_r+0x11e6>
 8002b76:	059c      	lsls	r4, r3, #22
 8002b78:	f140 8377 	bpl.w	800326a <_vfprintf_r+0xf12>
 8002b7c:	7814      	ldrb	r4, [r2, #0]
 8002b7e:	9108      	str	r1, [sp, #32]
 8002b80:	2500      	movs	r5, #0
 8002b82:	2201      	movs	r2, #1
 8002b84:	e6a9      	b.n	80028da <_vfprintf_r+0x582>
 8002b86:	4b7c      	ldr	r3, [pc, #496]	; (8002d78 <_vfprintf_r+0xa20>)
 8002b88:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b8a:	f018 0f20 	tst.w	r8, #32
 8002b8e:	f47f aeec 	bne.w	800296a <_vfprintf_r+0x612>
 8002b92:	9a08      	ldr	r2, [sp, #32]
 8002b94:	f018 0f10 	tst.w	r8, #16
 8002b98:	f102 0304 	add.w	r3, r2, #4
 8002b9c:	f040 8354 	bne.w	8003248 <_vfprintf_r+0xef0>
 8002ba0:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002ba4:	9a08      	ldr	r2, [sp, #32]
 8002ba6:	f040 84d0 	bne.w	800354a <_vfprintf_r+0x11f2>
 8002baa:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002bae:	f000 834b 	beq.w	8003248 <_vfprintf_r+0xef0>
 8002bb2:	7814      	ldrb	r4, [r2, #0]
 8002bb4:	9308      	str	r3, [sp, #32]
 8002bb6:	2500      	movs	r5, #0
 8002bb8:	e6e0      	b.n	800297c <_vfprintf_r+0x624>
 8002bba:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002bbe:	f89a 6000 	ldrb.w	r6, [sl]
 8002bc2:	2b00      	cmp	r3, #0
 8002bc4:	f47f ac46 	bne.w	8002454 <_vfprintf_r+0xfc>
 8002bc8:	2320      	movs	r3, #32
 8002bca:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002bce:	e441      	b.n	8002454 <_vfprintf_r+0xfc>
 8002bd0:	f89a 6000 	ldrb.w	r6, [sl]
 8002bd4:	2e6c      	cmp	r6, #108	; 0x6c
 8002bd6:	bf03      	ittte	eq
 8002bd8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002bdc:	f048 0820 	orreq.w	r8, r8, #32
 8002be0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002be4:	f048 0810 	orrne.w	r8, r8, #16
 8002be8:	e434      	b.n	8002454 <_vfprintf_r+0xfc>
 8002bea:	9a08      	ldr	r2, [sp, #32]
 8002bec:	f018 0f20 	tst.w	r8, #32
 8002bf0:	f852 3b04 	ldr.w	r3, [r2], #4
 8002bf4:	9208      	str	r2, [sp, #32]
 8002bf6:	f000 83a1 	beq.w	800333c <_vfprintf_r+0xfe4>
 8002bfa:	9a05      	ldr	r2, [sp, #20]
 8002bfc:	4610      	mov	r0, r2
 8002bfe:	17d1      	asrs	r1, r2, #31
 8002c00:	e9c3 0100 	strd	r0, r1, [r3]
 8002c04:	4657      	mov	r7, sl
 8002c06:	e64d      	b.n	80028a4 <_vfprintf_r+0x54c>
 8002c08:	f89a 6000 	ldrb.w	r6, [sl]
 8002c0c:	2e68      	cmp	r6, #104	; 0x68
 8002c0e:	bf03      	ittte	eq
 8002c10:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002c14:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002c18:	f10a 0a01 	addeq.w	sl, sl, #1
 8002c1c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002c20:	e418      	b.n	8002454 <_vfprintf_r+0xfc>
 8002c22:	9908      	ldr	r1, [sp, #32]
 8002c24:	4b55      	ldr	r3, [pc, #340]	; (8002d7c <_vfprintf_r+0xa24>)
 8002c26:	680c      	ldr	r4, [r1, #0]
 8002c28:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c2a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002c2e:	3104      	adds	r1, #4
 8002c30:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002c34:	f048 0302 	orr.w	r3, r8, #2
 8002c38:	9108      	str	r1, [sp, #32]
 8002c3a:	2500      	movs	r5, #0
 8002c3c:	2202      	movs	r2, #2
 8002c3e:	2678      	movs	r6, #120	; 0x78
 8002c40:	e64b      	b.n	80028da <_vfprintf_r+0x582>
 8002c42:	f048 0808 	orr.w	r8, r8, #8
 8002c46:	f89a 6000 	ldrb.w	r6, [sl]
 8002c4a:	e403      	b.n	8002454 <_vfprintf_r+0xfc>
 8002c4c:	f048 0310 	orr.w	r3, r8, #16
 8002c50:	069f      	lsls	r7, r3, #26
 8002c52:	f53f acd1 	bmi.w	80025f8 <_vfprintf_r+0x2a0>
 8002c56:	9908      	ldr	r1, [sp, #32]
 8002c58:	06dd      	lsls	r5, r3, #27
 8002c5a:	f101 0204 	add.w	r2, r1, #4
 8002c5e:	f100 82fd 	bmi.w	800325c <_vfprintf_r+0xf04>
 8002c62:	065c      	lsls	r4, r3, #25
 8002c64:	9908      	ldr	r1, [sp, #32]
 8002c66:	f100 8475 	bmi.w	8003554 <_vfprintf_r+0x11fc>
 8002c6a:	0598      	lsls	r0, r3, #22
 8002c6c:	f140 82f6 	bpl.w	800325c <_vfprintf_r+0xf04>
 8002c70:	f991 4000 	ldrsb.w	r4, [r1]
 8002c74:	9208      	str	r2, [sp, #32]
 8002c76:	17e5      	asrs	r5, r4, #31
 8002c78:	4620      	mov	r0, r4
 8002c7a:	4629      	mov	r1, r5
 8002c7c:	e4c7      	b.n	800260e <_vfprintf_r+0x2b6>
 8002c7e:	9a08      	ldr	r2, [sp, #32]
 8002c80:	f018 0f10 	tst.w	r8, #16
 8002c84:	f102 0304 	add.w	r3, r2, #4
 8002c88:	f040 82e3 	bne.w	8003252 <_vfprintf_r+0xefa>
 8002c8c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c90:	9a08      	ldr	r2, [sp, #32]
 8002c92:	f040 8467 	bne.w	8003564 <_vfprintf_r+0x120c>
 8002c96:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c9a:	f000 82da 	beq.w	8003252 <_vfprintf_r+0xefa>
 8002c9e:	7814      	ldrb	r4, [r2, #0]
 8002ca0:	9308      	str	r3, [sp, #32]
 8002ca2:	2500      	movs	r5, #0
 8002ca4:	e488      	b.n	80025b8 <_vfprintf_r+0x260>
 8002ca6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002caa:	f002 fd45 	bl	8005738 <__retarget_lock_release_recursive>
 8002cae:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002cb2:	9305      	str	r3, [sp, #20]
 8002cb4:	e443      	b.n	800253e <_vfprintf_r+0x1e6>
 8002cb6:	2e00      	cmp	r6, #0
 8002cb8:	f43f adf8 	beq.w	80028ac <_vfprintf_r+0x554>
 8002cbc:	2300      	movs	r3, #0
 8002cbe:	2101      	movs	r1, #1
 8002cc0:	461a      	mov	r2, r3
 8002cc2:	9104      	str	r1, [sp, #16]
 8002cc4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002cc8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ccc:	930a      	str	r3, [sp, #40]	; 0x28
 8002cce:	4699      	mov	r9, r3
 8002cd0:	930f      	str	r3, [sp, #60]	; 0x3c
 8002cd2:	9314      	str	r3, [sp, #80]	; 0x50
 8002cd4:	9311      	str	r3, [sp, #68]	; 0x44
 8002cd6:	9109      	str	r1, [sp, #36]	; 0x24
 8002cd8:	af3d      	add	r7, sp, #244	; 0xf4
 8002cda:	e4ce      	b.n	800267a <_vfprintf_r+0x322>
 8002cdc:	2e65      	cmp	r6, #101	; 0x65
 8002cde:	f340 80ca 	ble.w	8002e76 <_vfprintf_r+0xb1e>
 8002ce2:	2200      	movs	r2, #0
 8002ce4:	2300      	movs	r3, #0
 8002ce6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002cea:	f7fe f98d 	bl	8001008 <__aeabi_dcmpeq>
 8002cee:	2800      	cmp	r0, #0
 8002cf0:	f000 8169 	beq.w	8002fc6 <_vfprintf_r+0xc6e>
 8002cf4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002cf6:	4a22      	ldr	r2, [pc, #136]	; (8002d80 <_vfprintf_r+0xa28>)
 8002cf8:	f8cb 2000 	str.w	r2, [fp]
 8002cfc:	3301      	adds	r3, #1
 8002cfe:	3401      	adds	r4, #1
 8002d00:	2201      	movs	r2, #1
 8002d02:	2b07      	cmp	r3, #7
 8002d04:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d08:	f8cb 2004 	str.w	r2, [fp, #4]
 8002d0c:	f300 8406 	bgt.w	800351c <_vfprintf_r+0x11c4>
 8002d10:	f10b 0b08 	add.w	fp, fp, #8
 8002d14:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002d16:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002d18:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002d1a:	4293      	cmp	r3, r2
 8002d1c:	db03      	blt.n	8002d26 <_vfprintf_r+0x9ce>
 8002d1e:	f018 0f01 	tst.w	r8, #1
 8002d22:	f43f ad6a 	beq.w	80027fa <_vfprintf_r+0x4a2>
 8002d26:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d28:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002d2a:	f8cb 2000 	str.w	r2, [fp]
 8002d2e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002d30:	f8cb 2004 	str.w	r2, [fp, #4]
 8002d34:	3301      	adds	r3, #1
 8002d36:	4414      	add	r4, r2
 8002d38:	2b07      	cmp	r3, #7
 8002d3a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d3e:	f300 8517 	bgt.w	8003770 <_vfprintf_r+0x1418>
 8002d42:	f10b 0b08 	add.w	fp, fp, #8
 8002d46:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002d48:	1e5d      	subs	r5, r3, #1
 8002d4a:	2d00      	cmp	r5, #0
 8002d4c:	f77f ad55 	ble.w	80027fa <_vfprintf_r+0x4a2>
 8002d50:	2d10      	cmp	r5, #16
 8002d52:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d54:	4b0b      	ldr	r3, [pc, #44]	; (8002d84 <_vfprintf_r+0xa2c>)
 8002d56:	f340 82e7 	ble.w	8003328 <_vfprintf_r+0xfd0>
 8002d5a:	4619      	mov	r1, r3
 8002d5c:	2610      	movs	r6, #16
 8002d5e:	4623      	mov	r3, r4
 8002d60:	9f03      	ldr	r7, [sp, #12]
 8002d62:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002d66:	460c      	mov	r4, r1
 8002d68:	e014      	b.n	8002d94 <_vfprintf_r+0xa3c>
 8002d6a:	bf00      	nop
 8002d6c:	7fefffff 	.word	0x7fefffff
 8002d70:	08007058 	.word	0x08007058
 8002d74:	08007054 	.word	0x08007054
 8002d78:	08007078 	.word	0x08007078
 8002d7c:	08007064 	.word	0x08007064
 8002d80:	08007094 	.word	0x08007094
 8002d84:	080070a8 	.word	0x080070a8
 8002d88:	f10b 0b08 	add.w	fp, fp, #8
 8002d8c:	3d10      	subs	r5, #16
 8002d8e:	2d10      	cmp	r5, #16
 8002d90:	f340 82c7 	ble.w	8003322 <_vfprintf_r+0xfca>
 8002d94:	3201      	adds	r2, #1
 8002d96:	3310      	adds	r3, #16
 8002d98:	2a07      	cmp	r2, #7
 8002d9a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002d9e:	e9cb 4600 	strd	r4, r6, [fp]
 8002da2:	ddf1      	ble.n	8002d88 <_vfprintf_r+0xa30>
 8002da4:	aa2a      	add	r2, sp, #168	; 0xa8
 8002da6:	4649      	mov	r1, r9
 8002da8:	4638      	mov	r0, r7
 8002daa:	f003 fe03 	bl	80069b4 <__sprint_r>
 8002dae:	2800      	cmp	r0, #0
 8002db0:	d14c      	bne.n	8002e4c <_vfprintf_r+0xaf4>
 8002db2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002db6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002dba:	e7e7      	b.n	8002d8c <_vfprintf_r+0xa34>
 8002dbc:	9b06      	ldr	r3, [sp, #24]
 8002dbe:	9a04      	ldr	r2, [sp, #16]
 8002dc0:	1a9d      	subs	r5, r3, r2
 8002dc2:	2d00      	cmp	r5, #0
 8002dc4:	f77f acc9 	ble.w	800275a <_vfprintf_r+0x402>
 8002dc8:	2d10      	cmp	r5, #16
 8002dca:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002dcc:	4bbc      	ldr	r3, [pc, #752]	; (80030c0 <_vfprintf_r+0xd68>)
 8002dce:	dd27      	ble.n	8002e20 <_vfprintf_r+0xac8>
 8002dd0:	4659      	mov	r1, fp
 8002dd2:	4620      	mov	r0, r4
 8002dd4:	46bb      	mov	fp, r7
 8002dd6:	461c      	mov	r4, r3
 8002dd8:	4637      	mov	r7, r6
 8002dda:	9e07      	ldr	r6, [sp, #28]
 8002ddc:	e004      	b.n	8002de8 <_vfprintf_r+0xa90>
 8002dde:	3d10      	subs	r5, #16
 8002de0:	2d10      	cmp	r5, #16
 8002de2:	f101 0108 	add.w	r1, r1, #8
 8002de6:	dd16      	ble.n	8002e16 <_vfprintf_r+0xabe>
 8002de8:	3201      	adds	r2, #1
 8002dea:	3010      	adds	r0, #16
 8002dec:	2310      	movs	r3, #16
 8002dee:	2a07      	cmp	r2, #7
 8002df0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002df4:	600c      	str	r4, [r1, #0]
 8002df6:	604b      	str	r3, [r1, #4]
 8002df8:	ddf1      	ble.n	8002dde <_vfprintf_r+0xa86>
 8002dfa:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dfc:	4631      	mov	r1, r6
 8002dfe:	9803      	ldr	r0, [sp, #12]
 8002e00:	f003 fdd8 	bl	80069b4 <__sprint_r>
 8002e04:	2800      	cmp	r0, #0
 8002e06:	f040 80a8 	bne.w	8002f5a <_vfprintf_r+0xc02>
 8002e0a:	3d10      	subs	r5, #16
 8002e0c:	2d10      	cmp	r5, #16
 8002e0e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002e12:	a92d      	add	r1, sp, #180	; 0xb4
 8002e14:	dce8      	bgt.n	8002de8 <_vfprintf_r+0xa90>
 8002e16:	463e      	mov	r6, r7
 8002e18:	4623      	mov	r3, r4
 8002e1a:	465f      	mov	r7, fp
 8002e1c:	4604      	mov	r4, r0
 8002e1e:	468b      	mov	fp, r1
 8002e20:	3201      	adds	r2, #1
 8002e22:	442c      	add	r4, r5
 8002e24:	2a07      	cmp	r2, #7
 8002e26:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e2a:	e9cb 3500 	strd	r3, r5, [fp]
 8002e2e:	f300 8292 	bgt.w	8003356 <_vfprintf_r+0xffe>
 8002e32:	f10b 0b08 	add.w	fp, fp, #8
 8002e36:	e490      	b.n	800275a <_vfprintf_r+0x402>
 8002e38:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e3a:	9907      	ldr	r1, [sp, #28]
 8002e3c:	9803      	ldr	r0, [sp, #12]
 8002e3e:	f003 fdb9 	bl	80069b4 <__sprint_r>
 8002e42:	2800      	cmp	r0, #0
 8002e44:	f43f ad23 	beq.w	800288e <_vfprintf_r+0x536>
 8002e48:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e4c:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002e4e:	b111      	cbz	r1, 8002e56 <_vfprintf_r+0xafe>
 8002e50:	9803      	ldr	r0, [sp, #12]
 8002e52:	f002 f9c1 	bl	80051d8 <_free_r>
 8002e56:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002e5a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002e5e:	07d0      	lsls	r0, r2, #31
 8002e60:	d402      	bmi.n	8002e68 <_vfprintf_r+0xb10>
 8002e62:	0599      	lsls	r1, r3, #22
 8002e64:	f140 81d0 	bpl.w	8003208 <_vfprintf_r+0xeb0>
 8002e68:	065a      	lsls	r2, r3, #25
 8002e6a:	f53f ab65 	bmi.w	8002538 <_vfprintf_r+0x1e0>
 8002e6e:	9805      	ldr	r0, [sp, #20]
 8002e70:	b057      	add	sp, #348	; 0x15c
 8002e72:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002e76:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e78:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e7a:	2a01      	cmp	r2, #1
 8002e7c:	f104 0401 	add.w	r4, r4, #1
 8002e80:	f103 0501 	add.w	r5, r3, #1
 8002e84:	f10b 0608 	add.w	r6, fp, #8
 8002e88:	f340 811c 	ble.w	80030c4 <_vfprintf_r+0xd6c>
 8002e8c:	2301      	movs	r3, #1
 8002e8e:	2d07      	cmp	r5, #7
 8002e90:	f8cb 7000 	str.w	r7, [fp]
 8002e94:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002e98:	f8cb 3004 	str.w	r3, [fp, #4]
 8002e9c:	f300 81bb 	bgt.w	8003216 <_vfprintf_r+0xebe>
 8002ea0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002ea2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002ea4:	1c69      	adds	r1, r5, #1
 8002ea6:	441c      	add	r4, r3
 8002ea8:	2907      	cmp	r1, #7
 8002eaa:	910b      	str	r1, [sp, #44]	; 0x2c
 8002eac:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002eb0:	e9c6 2300 	strd	r2, r3, [r6]
 8002eb4:	f300 81bb 	bgt.w	800322e <_vfprintf_r+0xed6>
 8002eb8:	3608      	adds	r6, #8
 8002eba:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002ebc:	1c53      	adds	r3, r2, #1
 8002ebe:	461d      	mov	r5, r3
 8002ec0:	9509      	str	r5, [sp, #36]	; 0x24
 8002ec2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002ec4:	930e      	str	r3, [sp, #56]	; 0x38
 8002ec6:	2200      	movs	r2, #0
 8002ec8:	2300      	movs	r3, #0
 8002eca:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ece:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002ed2:	f106 0b08 	add.w	fp, r6, #8
 8002ed6:	f7fe f897 	bl	8001008 <__aeabi_dcmpeq>
 8002eda:	2800      	cmp	r0, #0
 8002edc:	f040 80c2 	bne.w	8003064 <_vfprintf_r+0xd0c>
 8002ee0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002ee2:	f8c6 9004 	str.w	r9, [r6, #4]
 8002ee6:	3701      	adds	r7, #1
 8002ee8:	444c      	add	r4, r9
 8002eea:	2d07      	cmp	r5, #7
 8002eec:	6037      	str	r7, [r6, #0]
 8002eee:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ef0:	952b      	str	r5, [sp, #172]	; 0xac
 8002ef2:	f300 80f9 	bgt.w	80030e8 <_vfprintf_r+0xd90>
 8002ef6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002ef8:	f106 0310 	add.w	r3, r6, #16
 8002efc:	3202      	adds	r2, #2
 8002efe:	465e      	mov	r6, fp
 8002f00:	9209      	str	r2, [sp, #36]	; 0x24
 8002f02:	469b      	mov	fp, r3
 8002f04:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002f06:	6072      	str	r2, [r6, #4]
 8002f08:	4414      	add	r4, r2
 8002f0a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002f0c:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f0e:	ab26      	add	r3, sp, #152	; 0x98
 8002f10:	2a07      	cmp	r2, #7
 8002f12:	922b      	str	r2, [sp, #172]	; 0xac
 8002f14:	6033      	str	r3, [r6, #0]
 8002f16:	f77f ac70 	ble.w	80027fa <_vfprintf_r+0x4a2>
 8002f1a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f1c:	9907      	ldr	r1, [sp, #28]
 8002f1e:	9803      	ldr	r0, [sp, #12]
 8002f20:	f003 fd48 	bl	80069b4 <__sprint_r>
 8002f24:	2800      	cmp	r0, #0
 8002f26:	d18f      	bne.n	8002e48 <_vfprintf_r+0xaf0>
 8002f28:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f2a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f2e:	e464      	b.n	80027fa <_vfprintf_r+0x4a2>
 8002f30:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002f32:	af56      	add	r7, sp, #344	; 0x158
 8002f34:	0923      	lsrs	r3, r4, #4
 8002f36:	f004 010f 	and.w	r1, r4, #15
 8002f3a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002f3e:	092a      	lsrs	r2, r5, #4
 8002f40:	461c      	mov	r4, r3
 8002f42:	4615      	mov	r5, r2
 8002f44:	5c43      	ldrb	r3, [r0, r1]
 8002f46:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002f4a:	ea54 0305 	orrs.w	r3, r4, r5
 8002f4e:	d1f1      	bne.n	8002f34 <_vfprintf_r+0xbdc>
 8002f50:	9b04      	ldr	r3, [sp, #16]
 8002f52:	1bdb      	subs	r3, r3, r7
 8002f54:	9309      	str	r3, [sp, #36]	; 0x24
 8002f56:	f7ff bb80 	b.w	800265a <_vfprintf_r+0x302>
 8002f5a:	46b1      	mov	r9, r6
 8002f5c:	e776      	b.n	8002e4c <_vfprintf_r+0xaf4>
 8002f5e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f60:	9907      	ldr	r1, [sp, #28]
 8002f62:	9803      	ldr	r0, [sp, #12]
 8002f64:	f003 fd26 	bl	80069b4 <__sprint_r>
 8002f68:	2800      	cmp	r0, #0
 8002f6a:	f47f af6d 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8002f6e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f70:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f74:	f7ff bbdd 	b.w	8002732 <_vfprintf_r+0x3da>
 8002f78:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f7a:	9907      	ldr	r1, [sp, #28]
 8002f7c:	9803      	ldr	r0, [sp, #12]
 8002f7e:	f003 fd19 	bl	80069b4 <__sprint_r>
 8002f82:	2800      	cmp	r0, #0
 8002f84:	f47f af60 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8002f88:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f8a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f8e:	f7ff bbe0 	b.w	8002752 <_vfprintf_r+0x3fa>
 8002f92:	4698      	mov	r8, r3
 8002f94:	2d00      	cmp	r5, #0
 8002f96:	bf08      	it	eq
 8002f98:	2c0a      	cmpeq	r4, #10
 8002f9a:	f080 8170 	bcs.w	800327e <_vfprintf_r+0xf26>
 8002f9e:	af56      	add	r7, sp, #344	; 0x158
 8002fa0:	3430      	adds	r4, #48	; 0x30
 8002fa2:	2301      	movs	r3, #1
 8002fa4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8002fa8:	9309      	str	r3, [sp, #36]	; 0x24
 8002faa:	f7ff bb56 	b.w	800265a <_vfprintf_r+0x302>
 8002fae:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fb0:	9907      	ldr	r1, [sp, #28]
 8002fb2:	9803      	ldr	r0, [sp, #12]
 8002fb4:	f003 fcfe 	bl	80069b4 <__sprint_r>
 8002fb8:	2800      	cmp	r0, #0
 8002fba:	f47f af45 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8002fbe:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002fc0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002fc4:	e406      	b.n	80027d4 <_vfprintf_r+0x47c>
 8002fc6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002fc8:	2b00      	cmp	r3, #0
 8002fca:	f340 8273 	ble.w	80034b4 <_vfprintf_r+0x115c>
 8002fce:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8002fd2:	4293      	cmp	r3, r2
 8002fd4:	bfa8      	it	ge
 8002fd6:	4613      	movge	r3, r2
 8002fd8:	2b00      	cmp	r3, #0
 8002fda:	461d      	mov	r5, r3
 8002fdc:	dd0d      	ble.n	8002ffa <_vfprintf_r+0xca2>
 8002fde:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002fe0:	f8cb 7000 	str.w	r7, [fp]
 8002fe4:	3301      	adds	r3, #1
 8002fe6:	442c      	add	r4, r5
 8002fe8:	2b07      	cmp	r3, #7
 8002fea:	942c      	str	r4, [sp, #176]	; 0xb0
 8002fec:	f8cb 5004 	str.w	r5, [fp, #4]
 8002ff0:	932b      	str	r3, [sp, #172]	; 0xac
 8002ff2:	f300 82c1 	bgt.w	8003578 <_vfprintf_r+0x1220>
 8002ff6:	f10b 0b08 	add.w	fp, fp, #8
 8002ffa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002ffc:	2d00      	cmp	r5, #0
 8002ffe:	bfa8      	it	ge
 8003000:	1b5b      	subge	r3, r3, r5
 8003002:	2b00      	cmp	r3, #0
 8003004:	461d      	mov	r5, r3
 8003006:	f340 8099 	ble.w	800313c <_vfprintf_r+0xde4>
 800300a:	2d10      	cmp	r5, #16
 800300c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800300e:	4b2c      	ldr	r3, [pc, #176]	; (80030c0 <_vfprintf_r+0xd68>)
 8003010:	f340 83db 	ble.w	80037ca <_vfprintf_r+0x1472>
 8003014:	4618      	mov	r0, r3
 8003016:	4621      	mov	r1, r4
 8003018:	465b      	mov	r3, fp
 800301a:	2610      	movs	r6, #16
 800301c:	46bb      	mov	fp, r7
 800301e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003022:	9c07      	ldr	r4, [sp, #28]
 8003024:	4607      	mov	r7, r0
 8003026:	e004      	b.n	8003032 <_vfprintf_r+0xcda>
 8003028:	3308      	adds	r3, #8
 800302a:	3d10      	subs	r5, #16
 800302c:	2d10      	cmp	r5, #16
 800302e:	f340 83c7 	ble.w	80037c0 <_vfprintf_r+0x1468>
 8003032:	3201      	adds	r2, #1
 8003034:	3110      	adds	r1, #16
 8003036:	2a07      	cmp	r2, #7
 8003038:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800303c:	e9c3 7600 	strd	r7, r6, [r3]
 8003040:	ddf2      	ble.n	8003028 <_vfprintf_r+0xcd0>
 8003042:	aa2a      	add	r2, sp, #168	; 0xa8
 8003044:	4621      	mov	r1, r4
 8003046:	4648      	mov	r0, r9
 8003048:	f003 fcb4 	bl	80069b4 <__sprint_r>
 800304c:	2800      	cmp	r0, #0
 800304e:	f040 84a5 	bne.w	800399c <_vfprintf_r+0x1644>
 8003052:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003056:	ab2d      	add	r3, sp, #180	; 0xb4
 8003058:	e7e7      	b.n	800302a <_vfprintf_r+0xcd2>
 800305a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800305e:	af56      	add	r7, sp, #344	; 0x158
 8003060:	f7ff bafb 	b.w	800265a <_vfprintf_r+0x302>
 8003064:	f1b9 0f00 	cmp.w	r9, #0
 8003068:	f77f af4c 	ble.w	8002f04 <_vfprintf_r+0xbac>
 800306c:	f1b9 0f10 	cmp.w	r9, #16
 8003070:	4b13      	ldr	r3, [pc, #76]	; (80030c0 <_vfprintf_r+0xd68>)
 8003072:	f340 8659 	ble.w	8003d28 <_vfprintf_r+0x19d0>
 8003076:	4619      	mov	r1, r3
 8003078:	4622      	mov	r2, r4
 800307a:	4633      	mov	r3, r6
 800307c:	2710      	movs	r7, #16
 800307e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003082:	9c07      	ldr	r4, [sp, #28]
 8003084:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003086:	460e      	mov	r6, r1
 8003088:	e007      	b.n	800309a <_vfprintf_r+0xd42>
 800308a:	3308      	adds	r3, #8
 800308c:	f1a9 0910 	sub.w	r9, r9, #16
 8003090:	f1b9 0f10 	cmp.w	r9, #16
 8003094:	f340 8353 	ble.w	800373e <_vfprintf_r+0x13e6>
 8003098:	3501      	adds	r5, #1
 800309a:	3210      	adds	r2, #16
 800309c:	2d07      	cmp	r5, #7
 800309e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80030a2:	e9c3 6700 	strd	r6, r7, [r3]
 80030a6:	ddf0      	ble.n	800308a <_vfprintf_r+0xd32>
 80030a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80030aa:	4621      	mov	r1, r4
 80030ac:	4658      	mov	r0, fp
 80030ae:	f003 fc81 	bl	80069b4 <__sprint_r>
 80030b2:	2800      	cmp	r0, #0
 80030b4:	f040 8472 	bne.w	800399c <_vfprintf_r+0x1644>
 80030b8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80030bc:	ab2d      	add	r3, sp, #180	; 0xb4
 80030be:	e7e5      	b.n	800308c <_vfprintf_r+0xd34>
 80030c0:	080070a8 	.word	0x080070a8
 80030c4:	f018 0f01 	tst.w	r8, #1
 80030c8:	f47f aee0 	bne.w	8002e8c <_vfprintf_r+0xb34>
 80030cc:	2201      	movs	r2, #1
 80030ce:	2d07      	cmp	r5, #7
 80030d0:	f8cb 7000 	str.w	r7, [fp]
 80030d4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80030d8:	f8cb 2004 	str.w	r2, [fp, #4]
 80030dc:	dc04      	bgt.n	80030e8 <_vfprintf_r+0xd90>
 80030de:	3302      	adds	r3, #2
 80030e0:	9309      	str	r3, [sp, #36]	; 0x24
 80030e2:	f10b 0b10 	add.w	fp, fp, #16
 80030e6:	e70d      	b.n	8002f04 <_vfprintf_r+0xbac>
 80030e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80030ea:	9907      	ldr	r1, [sp, #28]
 80030ec:	9803      	ldr	r0, [sp, #12]
 80030ee:	f003 fc61 	bl	80069b4 <__sprint_r>
 80030f2:	2800      	cmp	r0, #0
 80030f4:	f47f aea8 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 80030f8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80030fc:	3301      	adds	r3, #1
 80030fe:	9309      	str	r3, [sp, #36]	; 0x24
 8003100:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003104:	ae2d      	add	r6, sp, #180	; 0xb4
 8003106:	e6fd      	b.n	8002f04 <_vfprintf_r+0xbac>
 8003108:	aa2a      	add	r2, sp, #168	; 0xa8
 800310a:	9907      	ldr	r1, [sp, #28]
 800310c:	9803      	ldr	r0, [sp, #12]
 800310e:	f003 fc51 	bl	80069b4 <__sprint_r>
 8003112:	2800      	cmp	r0, #0
 8003114:	f47f ae98 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8003118:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800311c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800311e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003122:	f7ff baf6 	b.w	8002712 <_vfprintf_r+0x3ba>
 8003126:	aa2a      	add	r2, sp, #168	; 0xa8
 8003128:	9907      	ldr	r1, [sp, #28]
 800312a:	9803      	ldr	r0, [sp, #12]
 800312c:	f003 fc42 	bl	80069b4 <__sprint_r>
 8003130:	2800      	cmp	r0, #0
 8003132:	f47f ae89 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8003136:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003138:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800313c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800313e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003142:	443b      	add	r3, r7
 8003144:	4699      	mov	r9, r3
 8003146:	f040 8357 	bne.w	80037f8 <_vfprintf_r+0x14a0>
 800314a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800314c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800314e:	4293      	cmp	r3, r2
 8003150:	db49      	blt.n	80031e6 <_vfprintf_r+0xe8e>
 8003152:	f018 0f01 	tst.w	r8, #1
 8003156:	d146      	bne.n	80031e6 <_vfprintf_r+0xe8e>
 8003158:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800315a:	18bd      	adds	r5, r7, r2
 800315c:	eba5 0509 	sub.w	r5, r5, r9
 8003160:	1ad3      	subs	r3, r2, r3
 8003162:	429d      	cmp	r5, r3
 8003164:	bfa8      	it	ge
 8003166:	461d      	movge	r5, r3
 8003168:	2d00      	cmp	r5, #0
 800316a:	dd0d      	ble.n	8003188 <_vfprintf_r+0xe30>
 800316c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800316e:	f8cb 9000 	str.w	r9, [fp]
 8003172:	3201      	adds	r2, #1
 8003174:	442c      	add	r4, r5
 8003176:	2a07      	cmp	r2, #7
 8003178:	942c      	str	r4, [sp, #176]	; 0xb0
 800317a:	f8cb 5004 	str.w	r5, [fp, #4]
 800317e:	922b      	str	r2, [sp, #172]	; 0xac
 8003180:	f300 8462 	bgt.w	8003a48 <_vfprintf_r+0x16f0>
 8003184:	f10b 0b08 	add.w	fp, fp, #8
 8003188:	2d00      	cmp	r5, #0
 800318a:	bfac      	ite	ge
 800318c:	1b5d      	subge	r5, r3, r5
 800318e:	461d      	movlt	r5, r3
 8003190:	2d00      	cmp	r5, #0
 8003192:	f77f ab32 	ble.w	80027fa <_vfprintf_r+0x4a2>
 8003196:	2d10      	cmp	r5, #16
 8003198:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800319a:	4bc5      	ldr	r3, [pc, #788]	; (80034b0 <_vfprintf_r+0x1158>)
 800319c:	f340 80c4 	ble.w	8003328 <_vfprintf_r+0xfd0>
 80031a0:	4619      	mov	r1, r3
 80031a2:	2610      	movs	r6, #16
 80031a4:	4623      	mov	r3, r4
 80031a6:	9f03      	ldr	r7, [sp, #12]
 80031a8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80031ac:	460c      	mov	r4, r1
 80031ae:	e005      	b.n	80031bc <_vfprintf_r+0xe64>
 80031b0:	f10b 0b08 	add.w	fp, fp, #8
 80031b4:	3d10      	subs	r5, #16
 80031b6:	2d10      	cmp	r5, #16
 80031b8:	f340 80b3 	ble.w	8003322 <_vfprintf_r+0xfca>
 80031bc:	3201      	adds	r2, #1
 80031be:	3310      	adds	r3, #16
 80031c0:	2a07      	cmp	r2, #7
 80031c2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80031c6:	e9cb 4600 	strd	r4, r6, [fp]
 80031ca:	ddf1      	ble.n	80031b0 <_vfprintf_r+0xe58>
 80031cc:	aa2a      	add	r2, sp, #168	; 0xa8
 80031ce:	4649      	mov	r1, r9
 80031d0:	4638      	mov	r0, r7
 80031d2:	f003 fbef 	bl	80069b4 <__sprint_r>
 80031d6:	2800      	cmp	r0, #0
 80031d8:	f47f ae38 	bne.w	8002e4c <_vfprintf_r+0xaf4>
 80031dc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80031e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031e4:	e7e6      	b.n	80031b4 <_vfprintf_r+0xe5c>
 80031e6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031e8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80031ea:	f8cb 1000 	str.w	r1, [fp]
 80031ee:	9915      	ldr	r1, [sp, #84]	; 0x54
 80031f0:	f8cb 1004 	str.w	r1, [fp, #4]
 80031f4:	3201      	adds	r2, #1
 80031f6:	440c      	add	r4, r1
 80031f8:	2a07      	cmp	r2, #7
 80031fa:	942c      	str	r4, [sp, #176]	; 0xb0
 80031fc:	922b      	str	r2, [sp, #172]	; 0xac
 80031fe:	f300 828c 	bgt.w	800371a <_vfprintf_r+0x13c2>
 8003202:	f10b 0b08 	add.w	fp, fp, #8
 8003206:	e7a7      	b.n	8003158 <_vfprintf_r+0xe00>
 8003208:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800320c:	f002 fa94 	bl	8005738 <__retarget_lock_release_recursive>
 8003210:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003214:	e628      	b.n	8002e68 <_vfprintf_r+0xb10>
 8003216:	aa2a      	add	r2, sp, #168	; 0xa8
 8003218:	9907      	ldr	r1, [sp, #28]
 800321a:	9803      	ldr	r0, [sp, #12]
 800321c:	f003 fbca 	bl	80069b4 <__sprint_r>
 8003220:	2800      	cmp	r0, #0
 8003222:	f47f ae11 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8003226:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800322a:	ae2d      	add	r6, sp, #180	; 0xb4
 800322c:	e638      	b.n	8002ea0 <_vfprintf_r+0xb48>
 800322e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003230:	9907      	ldr	r1, [sp, #28]
 8003232:	9803      	ldr	r0, [sp, #12]
 8003234:	f003 fbbe 	bl	80069b4 <__sprint_r>
 8003238:	2800      	cmp	r0, #0
 800323a:	f47f ae05 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 800323e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003242:	ae2d      	add	r6, sp, #180	; 0xb4
 8003244:	930b      	str	r3, [sp, #44]	; 0x2c
 8003246:	e638      	b.n	8002eba <_vfprintf_r+0xb62>
 8003248:	6814      	ldr	r4, [r2, #0]
 800324a:	9308      	str	r3, [sp, #32]
 800324c:	2500      	movs	r5, #0
 800324e:	f7ff bb95 	b.w	800297c <_vfprintf_r+0x624>
 8003252:	6814      	ldr	r4, [r2, #0]
 8003254:	9308      	str	r3, [sp, #32]
 8003256:	2500      	movs	r5, #0
 8003258:	f7ff b9ae 	b.w	80025b8 <_vfprintf_r+0x260>
 800325c:	680c      	ldr	r4, [r1, #0]
 800325e:	9208      	str	r2, [sp, #32]
 8003260:	17e5      	asrs	r5, r4, #31
 8003262:	4620      	mov	r0, r4
 8003264:	4629      	mov	r1, r5
 8003266:	f7ff b9d2 	b.w	800260e <_vfprintf_r+0x2b6>
 800326a:	6814      	ldr	r4, [r2, #0]
 800326c:	9108      	str	r1, [sp, #32]
 800326e:	2201      	movs	r2, #1
 8003270:	2500      	movs	r5, #0
 8003272:	f7ff bb32 	b.w	80028da <_vfprintf_r+0x582>
 8003276:	2a01      	cmp	r2, #1
 8003278:	f47f ab3c 	bne.w	80028f4 <_vfprintf_r+0x59c>
 800327c:	e68f      	b.n	8002f9e <_vfprintf_r+0xc46>
 800327e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003282:	2200      	movs	r2, #0
 8003284:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003288:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800328c:	af56      	add	r7, sp, #344	; 0x158
 800328e:	4692      	mov	sl, r2
 8003290:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003294:	461e      	mov	r6, r3
 8003296:	e00a      	b.n	80032ae <_vfprintf_r+0xf56>
 8003298:	2300      	movs	r3, #0
 800329a:	4620      	mov	r0, r4
 800329c:	4629      	mov	r1, r5
 800329e:	220a      	movs	r2, #10
 80032a0:	f7fc ffae 	bl	8000200 <__aeabi_uldivmod>
 80032a4:	4604      	mov	r4, r0
 80032a6:	460d      	mov	r5, r1
 80032a8:	ea54 0305 	orrs.w	r3, r4, r5
 80032ac:	d029      	beq.n	8003302 <_vfprintf_r+0xfaa>
 80032ae:	220a      	movs	r2, #10
 80032b0:	2300      	movs	r3, #0
 80032b2:	4620      	mov	r0, r4
 80032b4:	4629      	mov	r1, r5
 80032b6:	f7fc ffa3 	bl	8000200 <__aeabi_uldivmod>
 80032ba:	3230      	adds	r2, #48	; 0x30
 80032bc:	f807 2c01 	strb.w	r2, [r7, #-1]
 80032c0:	f10a 0a01 	add.w	sl, sl, #1
 80032c4:	3f01      	subs	r7, #1
 80032c6:	2e00      	cmp	r6, #0
 80032c8:	d0e6      	beq.n	8003298 <_vfprintf_r+0xf40>
 80032ca:	f898 3000 	ldrb.w	r3, [r8]
 80032ce:	459a      	cmp	sl, r3
 80032d0:	d1e2      	bne.n	8003298 <_vfprintf_r+0xf40>
 80032d2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80032d6:	d0df      	beq.n	8003298 <_vfprintf_r+0xf40>
 80032d8:	2d00      	cmp	r5, #0
 80032da:	bf08      	it	eq
 80032dc:	2c0a      	cmpeq	r4, #10
 80032de:	d3db      	bcc.n	8003298 <_vfprintf_r+0xf40>
 80032e0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80032e2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80032e4:	1aff      	subs	r7, r7, r3
 80032e6:	461a      	mov	r2, r3
 80032e8:	4638      	mov	r0, r7
 80032ea:	f003 faf5 	bl	80068d8 <strncpy>
 80032ee:	f898 3001 	ldrb.w	r3, [r8, #1]
 80032f2:	2b00      	cmp	r3, #0
 80032f4:	f000 8496 	beq.w	8003c24 <_vfprintf_r+0x18cc>
 80032f8:	f108 0801 	add.w	r8, r8, #1
 80032fc:	f04f 0a00 	mov.w	sl, #0
 8003300:	e7ca      	b.n	8003298 <_vfprintf_r+0xf40>
 8003302:	9b04      	ldr	r3, [sp, #16]
 8003304:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003308:	1bdb      	subs	r3, r3, r7
 800330a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800330e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003310:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003314:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003318:	9309      	str	r3, [sp, #36]	; 0x24
 800331a:	f7ff b99e 	b.w	800265a <_vfprintf_r+0x302>
 800331e:	46c1      	mov	r9, r8
 8003320:	e594      	b.n	8002e4c <_vfprintf_r+0xaf4>
 8003322:	4621      	mov	r1, r4
 8003324:	461c      	mov	r4, r3
 8003326:	460b      	mov	r3, r1
 8003328:	3201      	adds	r2, #1
 800332a:	442c      	add	r4, r5
 800332c:	2a07      	cmp	r2, #7
 800332e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003332:	e9cb 3500 	strd	r3, r5, [fp]
 8003336:	f77f aa5e 	ble.w	80027f6 <_vfprintf_r+0x49e>
 800333a:	e5ee      	b.n	8002f1a <_vfprintf_r+0xbc2>
 800333c:	f018 0f10 	tst.w	r8, #16
 8003340:	f040 80f8 	bne.w	8003534 <_vfprintf_r+0x11dc>
 8003344:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003348:	f000 8351 	beq.w	80039ee <_vfprintf_r+0x1696>
 800334c:	9a05      	ldr	r2, [sp, #20]
 800334e:	801a      	strh	r2, [r3, #0]
 8003350:	4657      	mov	r7, sl
 8003352:	f7ff baa7 	b.w	80028a4 <_vfprintf_r+0x54c>
 8003356:	aa2a      	add	r2, sp, #168	; 0xa8
 8003358:	9907      	ldr	r1, [sp, #28]
 800335a:	9803      	ldr	r0, [sp, #12]
 800335c:	f003 fb2a 	bl	80069b4 <__sprint_r>
 8003360:	2800      	cmp	r0, #0
 8003362:	f47f ad71 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8003366:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003368:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800336c:	f7ff b9f5 	b.w	800275a <_vfprintf_r+0x402>
 8003370:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003374:	4602      	mov	r2, r0
 8003376:	460b      	mov	r3, r1
 8003378:	f7fd fe78 	bl	800106c <__aeabi_dcmpun>
 800337c:	2800      	cmp	r0, #0
 800337e:	f040 8491 	bne.w	8003ca4 <_vfprintf_r+0x194c>
 8003382:	2e61      	cmp	r6, #97	; 0x61
 8003384:	f000 8111 	beq.w	80035aa <_vfprintf_r+0x1252>
 8003388:	2e41      	cmp	r6, #65	; 0x41
 800338a:	f000 8377 	beq.w	8003a7c <_vfprintf_r+0x1724>
 800338e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003392:	f026 0220 	bic.w	r2, r6, #32
 8003396:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800339a:	930e      	str	r3, [sp, #56]	; 0x38
 800339c:	9204      	str	r2, [sp, #16]
 800339e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80033a0:	f000 842d 	beq.w	8003bfe <_vfprintf_r+0x18a6>
 80033a4:	2a47      	cmp	r2, #71	; 0x47
 80033a6:	f000 8424 	beq.w	8003bf2 <_vfprintf_r+0x189a>
 80033aa:	2b00      	cmp	r3, #0
 80033ac:	f2c0 82f9 	blt.w	80039a2 <_vfprintf_r+0x164a>
 80033b0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80033b4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80033b8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80033bc:	2e66      	cmp	r6, #102	; 0x66
 80033be:	f000 83eb 	beq.w	8003b98 <_vfprintf_r+0x1840>
 80033c2:	2e46      	cmp	r6, #70	; 0x46
 80033c4:	f000 847e 	beq.w	8003cc4 <_vfprintf_r+0x196c>
 80033c8:	9b04      	ldr	r3, [sp, #16]
 80033ca:	9803      	ldr	r0, [sp, #12]
 80033cc:	2b45      	cmp	r3, #69	; 0x45
 80033ce:	bf0c      	ite	eq
 80033d0:	f109 0501 	addeq.w	r5, r9, #1
 80033d4:	464d      	movne	r5, r9
 80033d6:	aa28      	add	r2, sp, #160	; 0xa0
 80033d8:	ab25      	add	r3, sp, #148	; 0x94
 80033da:	e9cd 3200 	strd	r3, r2, [sp]
 80033de:	2102      	movs	r1, #2
 80033e0:	ab24      	add	r3, sp, #144	; 0x90
 80033e2:	462a      	mov	r2, r5
 80033e4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80033e8:	f000 fe3e 	bl	8004068 <_dtoa_r>
 80033ec:	2e67      	cmp	r6, #103	; 0x67
 80033ee:	4607      	mov	r7, r0
 80033f0:	f040 849c 	bne.w	8003d2c <_vfprintf_r+0x19d4>
 80033f4:	f018 0f01 	tst.w	r8, #1
 80033f8:	f040 83f9 	bne.w	8003bee <_vfprintf_r+0x1896>
 80033fc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80033fe:	4640      	mov	r0, r8
 8003400:	1bdb      	subs	r3, r3, r7
 8003402:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003406:	9310      	str	r3, [sp, #64]	; 0x40
 8003408:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800340a:	9311      	str	r3, [sp, #68]	; 0x44
 800340c:	9b04      	ldr	r3, [sp, #16]
 800340e:	2b47      	cmp	r3, #71	; 0x47
 8003410:	f000 81e7 	beq.w	80037e2 <_vfprintf_r+0x148a>
 8003414:	9b04      	ldr	r3, [sp, #16]
 8003416:	2b46      	cmp	r3, #70	; 0x46
 8003418:	f000 8300 	beq.w	8003a1c <_vfprintf_r+0x16c4>
 800341c:	9904      	ldr	r1, [sp, #16]
 800341e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003420:	b2f2      	uxtb	r2, r6
 8003422:	2941      	cmp	r1, #65	; 0x41
 8003424:	bf08      	it	eq
 8003426:	320f      	addeq	r2, #15
 8003428:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800342c:	bf06      	itte	eq
 800342e:	b2d2      	uxtbeq	r2, r2
 8003430:	2101      	moveq	r1, #1
 8003432:	2100      	movne	r1, #0
 8003434:	2b00      	cmp	r3, #0
 8003436:	9324      	str	r3, [sp, #144]	; 0x90
 8003438:	bfb8      	it	lt
 800343a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800343c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003440:	bfba      	itte	lt
 8003442:	f1c3 0301 	rsblt	r3, r3, #1
 8003446:	222d      	movlt	r2, #45	; 0x2d
 8003448:	222b      	movge	r2, #43	; 0x2b
 800344a:	2b09      	cmp	r3, #9
 800344c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003450:	f300 83f9 	bgt.w	8003c46 <_vfprintf_r+0x18ee>
 8003454:	2900      	cmp	r1, #0
 8003456:	f040 8487 	bne.w	8003d68 <_vfprintf_r+0x1a10>
 800345a:	2230      	movs	r2, #48	; 0x30
 800345c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003460:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003464:	3330      	adds	r3, #48	; 0x30
 8003466:	7013      	strb	r3, [r2, #0]
 8003468:	1c53      	adds	r3, r2, #1
 800346a:	aa26      	add	r2, sp, #152	; 0x98
 800346c:	1a9b      	subs	r3, r3, r2
 800346e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003470:	9319      	str	r3, [sp, #100]	; 0x64
 8003472:	2a01      	cmp	r2, #1
 8003474:	4413      	add	r3, r2
 8003476:	9309      	str	r3, [sp, #36]	; 0x24
 8003478:	f340 8442 	ble.w	8003d00 <_vfprintf_r+0x19a8>
 800347c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800347e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003480:	4413      	add	r3, r2
 8003482:	9309      	str	r3, [sp, #36]	; 0x24
 8003484:	2300      	movs	r3, #0
 8003486:	930f      	str	r3, [sp, #60]	; 0x3c
 8003488:	9314      	str	r3, [sp, #80]	; 0x50
 800348a:	9311      	str	r3, [sp, #68]	; 0x44
 800348c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800348e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003492:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003496:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800349a:	9304      	str	r3, [sp, #16]
 800349c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800349e:	2b00      	cmp	r3, #0
 80034a0:	f040 8275 	bne.w	800398e <_vfprintf_r+0x1636>
 80034a4:	4699      	mov	r9, r3
 80034a6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80034aa:	f7ff b8e2 	b.w	8002672 <_vfprintf_r+0x31a>
 80034ae:	bf00      	nop
 80034b0:	080070a8 	.word	0x080070a8
 80034b4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034b6:	49bd      	ldr	r1, [pc, #756]	; (80037ac <_vfprintf_r+0x1454>)
 80034b8:	f8cb 1000 	str.w	r1, [fp]
 80034bc:	3201      	adds	r2, #1
 80034be:	3401      	adds	r4, #1
 80034c0:	2101      	movs	r1, #1
 80034c2:	2a07      	cmp	r2, #7
 80034c4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80034c8:	f8cb 1004 	str.w	r1, [fp, #4]
 80034cc:	dc60      	bgt.n	8003590 <_vfprintf_r+0x1238>
 80034ce:	f10b 0b08 	add.w	fp, fp, #8
 80034d2:	b92b      	cbnz	r3, 80034e0 <_vfprintf_r+0x1188>
 80034d4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80034d6:	b91a      	cbnz	r2, 80034e0 <_vfprintf_r+0x1188>
 80034d8:	f018 0f01 	tst.w	r8, #1
 80034dc:	f43f a98d 	beq.w	80027fa <_vfprintf_r+0x4a2>
 80034e0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034e2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80034e4:	f8cb 1000 	str.w	r1, [fp]
 80034e8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80034ea:	f8cb 1004 	str.w	r1, [fp, #4]
 80034ee:	3201      	adds	r2, #1
 80034f0:	440c      	add	r4, r1
 80034f2:	2a07      	cmp	r2, #7
 80034f4:	942c      	str	r4, [sp, #176]	; 0xb0
 80034f6:	922b      	str	r2, [sp, #172]	; 0xac
 80034f8:	f300 8282 	bgt.w	8003a00 <_vfprintf_r+0x16a8>
 80034fc:	f10b 0b08 	add.w	fp, fp, #8
 8003500:	2b00      	cmp	r3, #0
 8003502:	f2c0 82e7 	blt.w	8003ad4 <_vfprintf_r+0x177c>
 8003506:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003508:	3201      	adds	r2, #1
 800350a:	441c      	add	r4, r3
 800350c:	2a07      	cmp	r2, #7
 800350e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003512:	e9cb 7300 	strd	r7, r3, [fp]
 8003516:	f77f a96e 	ble.w	80027f6 <_vfprintf_r+0x49e>
 800351a:	e4fe      	b.n	8002f1a <_vfprintf_r+0xbc2>
 800351c:	aa2a      	add	r2, sp, #168	; 0xa8
 800351e:	9907      	ldr	r1, [sp, #28]
 8003520:	9803      	ldr	r0, [sp, #12]
 8003522:	f003 fa47 	bl	80069b4 <__sprint_r>
 8003526:	2800      	cmp	r0, #0
 8003528:	f47f ac8e 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 800352c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003530:	f7ff bbf0 	b.w	8002d14 <_vfprintf_r+0x9bc>
 8003534:	9a05      	ldr	r2, [sp, #20]
 8003536:	601a      	str	r2, [r3, #0]
 8003538:	4657      	mov	r7, sl
 800353a:	f7ff b9b3 	b.w	80028a4 <_vfprintf_r+0x54c>
 800353e:	8814      	ldrh	r4, [r2, #0]
 8003540:	9108      	str	r1, [sp, #32]
 8003542:	2500      	movs	r5, #0
 8003544:	2201      	movs	r2, #1
 8003546:	f7ff b9c8 	b.w	80028da <_vfprintf_r+0x582>
 800354a:	8814      	ldrh	r4, [r2, #0]
 800354c:	9308      	str	r3, [sp, #32]
 800354e:	2500      	movs	r5, #0
 8003550:	f7ff ba14 	b.w	800297c <_vfprintf_r+0x624>
 8003554:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003558:	9208      	str	r2, [sp, #32]
 800355a:	17e5      	asrs	r5, r4, #31
 800355c:	4620      	mov	r0, r4
 800355e:	4629      	mov	r1, r5
 8003560:	f7ff b855 	b.w	800260e <_vfprintf_r+0x2b6>
 8003564:	8814      	ldrh	r4, [r2, #0]
 8003566:	9308      	str	r3, [sp, #32]
 8003568:	2500      	movs	r5, #0
 800356a:	f7ff b825 	b.w	80025b8 <_vfprintf_r+0x260>
 800356e:	222d      	movs	r2, #45	; 0x2d
 8003570:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003574:	f7ff baa2 	b.w	8002abc <_vfprintf_r+0x764>
 8003578:	aa2a      	add	r2, sp, #168	; 0xa8
 800357a:	9907      	ldr	r1, [sp, #28]
 800357c:	9803      	ldr	r0, [sp, #12]
 800357e:	f003 fa19 	bl	80069b4 <__sprint_r>
 8003582:	2800      	cmp	r0, #0
 8003584:	f47f ac60 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8003588:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800358a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800358e:	e534      	b.n	8002ffa <_vfprintf_r+0xca2>
 8003590:	aa2a      	add	r2, sp, #168	; 0xa8
 8003592:	9907      	ldr	r1, [sp, #28]
 8003594:	9803      	ldr	r0, [sp, #12]
 8003596:	f003 fa0d 	bl	80069b4 <__sprint_r>
 800359a:	2800      	cmp	r0, #0
 800359c:	f47f ac54 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 80035a0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80035a2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035a4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035a8:	e793      	b.n	80034d2 <_vfprintf_r+0x117a>
 80035aa:	2330      	movs	r3, #48	; 0x30
 80035ac:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80035b0:	2378      	movs	r3, #120	; 0x78
 80035b2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80035b6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80035ba:	f048 0402 	orr.w	r4, r8, #2
 80035be:	f300 82b0 	bgt.w	8003b22 <_vfprintf_r+0x17ca>
 80035c2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80035c6:	930e      	str	r3, [sp, #56]	; 0x38
 80035c8:	f026 0320 	bic.w	r3, r6, #32
 80035cc:	9304      	str	r3, [sp, #16]
 80035ce:	2200      	movs	r2, #0
 80035d0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80035d2:	920a      	str	r2, [sp, #40]	; 0x28
 80035d4:	46a0      	mov	r8, r4
 80035d6:	af3d      	add	r7, sp, #244	; 0xf4
 80035d8:	2b00      	cmp	r3, #0
 80035da:	f2c0 81e3 	blt.w	80039a4 <_vfprintf_r+0x164c>
 80035de:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80035e2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80035e6:	2300      	movs	r3, #0
 80035e8:	930b      	str	r3, [sp, #44]	; 0x2c
 80035ea:	2e61      	cmp	r6, #97	; 0x61
 80035ec:	f000 8255 	beq.w	8003a9a <_vfprintf_r+0x1742>
 80035f0:	2e41      	cmp	r6, #65	; 0x41
 80035f2:	f47f aee3 	bne.w	80033bc <_vfprintf_r+0x1064>
 80035f6:	a824      	add	r0, sp, #144	; 0x90
 80035f8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80035fc:	f003 f8e2 	bl	80067c4 <frexp>
 8003600:	2200      	movs	r2, #0
 8003602:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003606:	ec51 0b10 	vmov	r0, r1, d0
 800360a:	f7fd fa95 	bl	8000b38 <__aeabi_dmul>
 800360e:	2200      	movs	r2, #0
 8003610:	2300      	movs	r3, #0
 8003612:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003616:	f7fd fcf7 	bl	8001008 <__aeabi_dcmpeq>
 800361a:	2800      	cmp	r0, #0
 800361c:	f040 8305 	bne.w	8003c2a <_vfprintf_r+0x18d2>
 8003620:	4b63      	ldr	r3, [pc, #396]	; (80037b0 <_vfprintf_r+0x1458>)
 8003622:	9309      	str	r3, [sp, #36]	; 0x24
 8003624:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003628:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800362c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003630:	9721      	str	r7, [sp, #132]	; 0x84
 8003632:	46b9      	mov	r9, r7
 8003634:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003638:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800363c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003640:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003644:	e003      	b.n	800364e <_vfprintf_r+0x12f6>
 8003646:	f7fd fcdf 	bl	8001008 <__aeabi_dcmpeq>
 800364a:	bb20      	cbnz	r0, 8003696 <_vfprintf_r+0x133e>
 800364c:	46a9      	mov	r9, r5
 800364e:	2200      	movs	r2, #0
 8003650:	4b58      	ldr	r3, [pc, #352]	; (80037b4 <_vfprintf_r+0x145c>)
 8003652:	4630      	mov	r0, r6
 8003654:	4639      	mov	r1, r7
 8003656:	f7fd fa6f 	bl	8000b38 <__aeabi_dmul>
 800365a:	460f      	mov	r7, r1
 800365c:	4606      	mov	r6, r0
 800365e:	f7fd fd1b 	bl	8001098 <__aeabi_d2iz>
 8003662:	4680      	mov	r8, r0
 8003664:	f7fd f9fe 	bl	8000a64 <__aeabi_i2d>
 8003668:	4602      	mov	r2, r0
 800366a:	460b      	mov	r3, r1
 800366c:	4630      	mov	r0, r6
 800366e:	4639      	mov	r1, r7
 8003670:	f7fd f8aa 	bl	80007c8 <__aeabi_dsub>
 8003674:	464d      	mov	r5, r9
 8003676:	f81a c008 	ldrb.w	ip, [sl, r8]
 800367a:	f805 cb01 	strb.w	ip, [r5], #1
 800367e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003682:	46a3      	mov	fp, r4
 8003684:	4606      	mov	r6, r0
 8003686:	460f      	mov	r7, r1
 8003688:	f04f 0200 	mov.w	r2, #0
 800368c:	f04f 0300 	mov.w	r3, #0
 8003690:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003694:	d1d7      	bne.n	8003646 <_vfprintf_r+0x12ee>
 8003696:	4630      	mov	r0, r6
 8003698:	4639      	mov	r1, r7
 800369a:	2200      	movs	r2, #0
 800369c:	4b46      	ldr	r3, [pc, #280]	; (80037b8 <_vfprintf_r+0x1460>)
 800369e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80036a2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80036a4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80036a8:	4644      	mov	r4, r8
 80036aa:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80036ae:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80036b2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80036b6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80036ba:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80036bc:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80036c0:	f7fd fcca 	bl	8001058 <__aeabi_dcmpgt>
 80036c4:	2800      	cmp	r0, #0
 80036c6:	f040 8176 	bne.w	80039b6 <_vfprintf_r+0x165e>
 80036ca:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80036ce:	2200      	movs	r2, #0
 80036d0:	4b39      	ldr	r3, [pc, #228]	; (80037b8 <_vfprintf_r+0x1460>)
 80036d2:	f7fd fc99 	bl	8001008 <__aeabi_dcmpeq>
 80036d6:	b110      	cbz	r0, 80036de <_vfprintf_r+0x1386>
 80036d8:	07e2      	lsls	r2, r4, #31
 80036da:	f100 816c 	bmi.w	80039b6 <_vfprintf_r+0x165e>
 80036de:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80036e0:	2b00      	cmp	r3, #0
 80036e2:	db07      	blt.n	80036f4 <_vfprintf_r+0x139c>
 80036e4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80036e6:	3301      	adds	r3, #1
 80036e8:	442b      	add	r3, r5
 80036ea:	2230      	movs	r2, #48	; 0x30
 80036ec:	f805 2b01 	strb.w	r2, [r5], #1
 80036f0:	42ab      	cmp	r3, r5
 80036f2:	d1fb      	bne.n	80036ec <_vfprintf_r+0x1394>
 80036f4:	1beb      	subs	r3, r5, r7
 80036f6:	4640      	mov	r0, r8
 80036f8:	9310      	str	r3, [sp, #64]	; 0x40
 80036fa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80036fe:	e683      	b.n	8003408 <_vfprintf_r+0x10b0>
 8003700:	f8cd 9010 	str.w	r9, [sp, #16]
 8003704:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003708:	9408      	str	r4, [sp, #32]
 800370a:	4681      	mov	r9, r0
 800370c:	900f      	str	r0, [sp, #60]	; 0x3c
 800370e:	9014      	str	r0, [sp, #80]	; 0x50
 8003710:	9011      	str	r0, [sp, #68]	; 0x44
 8003712:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003716:	f7fe bfac 	b.w	8002672 <_vfprintf_r+0x31a>
 800371a:	aa2a      	add	r2, sp, #168	; 0xa8
 800371c:	9907      	ldr	r1, [sp, #28]
 800371e:	9803      	ldr	r0, [sp, #12]
 8003720:	f003 f948 	bl	80069b4 <__sprint_r>
 8003724:	2800      	cmp	r0, #0
 8003726:	f47f ab8f 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 800372a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800372c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800372e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003732:	e511      	b.n	8003158 <_vfprintf_r+0xe00>
 8003734:	4252      	negs	r2, r2
 8003736:	9206      	str	r2, [sp, #24]
 8003738:	9308      	str	r3, [sp, #32]
 800373a:	f7ff b96d 	b.w	8002a18 <_vfprintf_r+0x6c0>
 800373e:	4614      	mov	r4, r2
 8003740:	4632      	mov	r2, r6
 8003742:	461e      	mov	r6, r3
 8003744:	4613      	mov	r3, r2
 8003746:	462a      	mov	r2, r5
 8003748:	3201      	adds	r2, #1
 800374a:	9209      	str	r2, [sp, #36]	; 0x24
 800374c:	f106 0208 	add.w	r2, r6, #8
 8003750:	e9c6 3900 	strd	r3, r9, [r6]
 8003754:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003756:	932b      	str	r3, [sp, #172]	; 0xac
 8003758:	444c      	add	r4, r9
 800375a:	2b07      	cmp	r3, #7
 800375c:	942c      	str	r4, [sp, #176]	; 0xb0
 800375e:	f73f acc3 	bgt.w	80030e8 <_vfprintf_r+0xd90>
 8003762:	3301      	adds	r3, #1
 8003764:	9309      	str	r3, [sp, #36]	; 0x24
 8003766:	f102 0b08 	add.w	fp, r2, #8
 800376a:	4616      	mov	r6, r2
 800376c:	f7ff bbca 	b.w	8002f04 <_vfprintf_r+0xbac>
 8003770:	aa2a      	add	r2, sp, #168	; 0xa8
 8003772:	9907      	ldr	r1, [sp, #28]
 8003774:	9803      	ldr	r0, [sp, #12]
 8003776:	f003 f91d 	bl	80069b4 <__sprint_r>
 800377a:	2800      	cmp	r0, #0
 800377c:	f47f ab64 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8003780:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003782:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003786:	f7ff bade 	b.w	8002d46 <_vfprintf_r+0x9ee>
 800378a:	464b      	mov	r3, r9
 800378c:	2b06      	cmp	r3, #6
 800378e:	bf28      	it	cs
 8003790:	2306      	movcs	r3, #6
 8003792:	46b9      	mov	r9, r7
 8003794:	970f      	str	r7, [sp, #60]	; 0x3c
 8003796:	9714      	str	r7, [sp, #80]	; 0x50
 8003798:	9711      	str	r7, [sp, #68]	; 0x44
 800379a:	970a      	str	r7, [sp, #40]	; 0x28
 800379c:	463a      	mov	r2, r7
 800379e:	9304      	str	r3, [sp, #16]
 80037a0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80037a4:	4f05      	ldr	r7, [pc, #20]	; (80037bc <_vfprintf_r+0x1464>)
 80037a6:	f7fe bf64 	b.w	8002672 <_vfprintf_r+0x31a>
 80037aa:	bf00      	nop
 80037ac:	08007094 	.word	0x08007094
 80037b0:	08007078 	.word	0x08007078
 80037b4:	40300000 	.word	0x40300000
 80037b8:	3fe00000 	.word	0x3fe00000
 80037bc:	0800708c 	.word	0x0800708c
 80037c0:	460c      	mov	r4, r1
 80037c2:	4639      	mov	r1, r7
 80037c4:	465f      	mov	r7, fp
 80037c6:	469b      	mov	fp, r3
 80037c8:	460b      	mov	r3, r1
 80037ca:	3201      	adds	r2, #1
 80037cc:	442c      	add	r4, r5
 80037ce:	2a07      	cmp	r2, #7
 80037d0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80037d4:	e9cb 3500 	strd	r3, r5, [fp]
 80037d8:	f73f aca5 	bgt.w	8003126 <_vfprintf_r+0xdce>
 80037dc:	f10b 0b08 	add.w	fp, fp, #8
 80037e0:	e4ac      	b.n	800313c <_vfprintf_r+0xde4>
 80037e2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80037e4:	1cda      	adds	r2, r3, #3
 80037e6:	db02      	blt.n	80037ee <_vfprintf_r+0x1496>
 80037e8:	4599      	cmp	r9, r3
 80037ea:	f280 80b5 	bge.w	8003958 <_vfprintf_r+0x1600>
 80037ee:	3e02      	subs	r6, #2
 80037f0:	f026 0320 	bic.w	r3, r6, #32
 80037f4:	9304      	str	r3, [sp, #16]
 80037f6:	e611      	b.n	800341c <_vfprintf_r+0x10c4>
 80037f8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80037fa:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80037fe:	465a      	mov	r2, fp
 8003800:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003804:	18fb      	adds	r3, r7, r3
 8003806:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800380a:	970c      	str	r7, [sp, #48]	; 0x30
 800380c:	4eaf      	ldr	r6, [pc, #700]	; (8003acc <_vfprintf_r+0x1774>)
 800380e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003812:	9309      	str	r3, [sp, #36]	; 0x24
 8003814:	464f      	mov	r7, r9
 8003816:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800381a:	4621      	mov	r1, r4
 800381c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800381e:	2b00      	cmp	r3, #0
 8003820:	d05b      	beq.n	80038da <_vfprintf_r+0x1582>
 8003822:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003824:	2b00      	cmp	r3, #0
 8003826:	d154      	bne.n	80038d2 <_vfprintf_r+0x157a>
 8003828:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800382a:	3b01      	subs	r3, #1
 800382c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003830:	9314      	str	r3, [sp, #80]	; 0x50
 8003832:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003834:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003836:	6010      	str	r0, [r2, #0]
 8003838:	3301      	adds	r3, #1
 800383a:	4459      	add	r1, fp
 800383c:	2b07      	cmp	r3, #7
 800383e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003840:	f8c2 b004 	str.w	fp, [r2, #4]
 8003844:	932b      	str	r3, [sp, #172]	; 0xac
 8003846:	dc68      	bgt.n	800391a <_vfprintf_r+0x15c2>
 8003848:	3208      	adds	r2, #8
 800384a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800384c:	f898 3000 	ldrb.w	r3, [r8]
 8003850:	1bc5      	subs	r5, r0, r7
 8003852:	429d      	cmp	r5, r3
 8003854:	bfa8      	it	ge
 8003856:	461d      	movge	r5, r3
 8003858:	2d00      	cmp	r5, #0
 800385a:	dd0b      	ble.n	8003874 <_vfprintf_r+0x151c>
 800385c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800385e:	6017      	str	r7, [r2, #0]
 8003860:	3301      	adds	r3, #1
 8003862:	4429      	add	r1, r5
 8003864:	2b07      	cmp	r3, #7
 8003866:	912c      	str	r1, [sp, #176]	; 0xb0
 8003868:	6055      	str	r5, [r2, #4]
 800386a:	932b      	str	r3, [sp, #172]	; 0xac
 800386c:	dc5e      	bgt.n	800392c <_vfprintf_r+0x15d4>
 800386e:	f898 3000 	ldrb.w	r3, [r8]
 8003872:	3208      	adds	r2, #8
 8003874:	2d00      	cmp	r5, #0
 8003876:	bfac      	ite	ge
 8003878:	1b5d      	subge	r5, r3, r5
 800387a:	461d      	movlt	r5, r3
 800387c:	2d00      	cmp	r5, #0
 800387e:	dd26      	ble.n	80038ce <_vfprintf_r+0x1576>
 8003880:	2d10      	cmp	r5, #16
 8003882:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003884:	dd3c      	ble.n	8003900 <_vfprintf_r+0x15a8>
 8003886:	2410      	movs	r4, #16
 8003888:	e003      	b.n	8003892 <_vfprintf_r+0x153a>
 800388a:	3208      	adds	r2, #8
 800388c:	3d10      	subs	r5, #16
 800388e:	2d10      	cmp	r5, #16
 8003890:	dd36      	ble.n	8003900 <_vfprintf_r+0x15a8>
 8003892:	3001      	adds	r0, #1
 8003894:	3110      	adds	r1, #16
 8003896:	2807      	cmp	r0, #7
 8003898:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800389c:	e9c2 6400 	strd	r6, r4, [r2]
 80038a0:	ddf3      	ble.n	800388a <_vfprintf_r+0x1532>
 80038a2:	aa2a      	add	r2, sp, #168	; 0xa8
 80038a4:	4651      	mov	r1, sl
 80038a6:	4648      	mov	r0, r9
 80038a8:	f003 f884 	bl	80069b4 <__sprint_r>
 80038ac:	2800      	cmp	r0, #0
 80038ae:	d150      	bne.n	8003952 <_vfprintf_r+0x15fa>
 80038b0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80038b4:	aa2d      	add	r2, sp, #180	; 0xb4
 80038b6:	e7e9      	b.n	800388c <_vfprintf_r+0x1534>
 80038b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80038ba:	4651      	mov	r1, sl
 80038bc:	4648      	mov	r0, r9
 80038be:	f003 f879 	bl	80069b4 <__sprint_r>
 80038c2:	2800      	cmp	r0, #0
 80038c4:	d145      	bne.n	8003952 <_vfprintf_r+0x15fa>
 80038c6:	f898 3000 	ldrb.w	r3, [r8]
 80038ca:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80038cc:	aa2d      	add	r2, sp, #180	; 0xb4
 80038ce:	441f      	add	r7, r3
 80038d0:	e7a4      	b.n	800381c <_vfprintf_r+0x14c4>
 80038d2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038d4:	3b01      	subs	r3, #1
 80038d6:	930f      	str	r3, [sp, #60]	; 0x3c
 80038d8:	e7ab      	b.n	8003832 <_vfprintf_r+0x14da>
 80038da:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038dc:	2b00      	cmp	r3, #0
 80038de:	d1f8      	bne.n	80038d2 <_vfprintf_r+0x157a>
 80038e0:	46b9      	mov	r9, r7
 80038e2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038e4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80038e6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80038ea:	18fb      	adds	r3, r7, r3
 80038ec:	4599      	cmp	r9, r3
 80038ee:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80038f2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80038f6:	4693      	mov	fp, r2
 80038f8:	460c      	mov	r4, r1
 80038fa:	bf28      	it	cs
 80038fc:	4699      	movcs	r9, r3
 80038fe:	e424      	b.n	800314a <_vfprintf_r+0xdf2>
 8003900:	3001      	adds	r0, #1
 8003902:	4429      	add	r1, r5
 8003904:	2807      	cmp	r0, #7
 8003906:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800390a:	e9c2 6500 	strd	r6, r5, [r2]
 800390e:	dcd3      	bgt.n	80038b8 <_vfprintf_r+0x1560>
 8003910:	f898 3000 	ldrb.w	r3, [r8]
 8003914:	3208      	adds	r2, #8
 8003916:	441f      	add	r7, r3
 8003918:	e780      	b.n	800381c <_vfprintf_r+0x14c4>
 800391a:	aa2a      	add	r2, sp, #168	; 0xa8
 800391c:	4651      	mov	r1, sl
 800391e:	4648      	mov	r0, r9
 8003920:	f003 f848 	bl	80069b4 <__sprint_r>
 8003924:	b9a8      	cbnz	r0, 8003952 <_vfprintf_r+0x15fa>
 8003926:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003928:	aa2d      	add	r2, sp, #180	; 0xb4
 800392a:	e78e      	b.n	800384a <_vfprintf_r+0x14f2>
 800392c:	aa2a      	add	r2, sp, #168	; 0xa8
 800392e:	4651      	mov	r1, sl
 8003930:	4648      	mov	r0, r9
 8003932:	f003 f83f 	bl	80069b4 <__sprint_r>
 8003936:	b960      	cbnz	r0, 8003952 <_vfprintf_r+0x15fa>
 8003938:	f898 3000 	ldrb.w	r3, [r8]
 800393c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800393e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003940:	e798      	b.n	8003874 <_vfprintf_r+0x151c>
 8003942:	4638      	mov	r0, r7
 8003944:	f7fc fe7c 	bl	8000640 <strlen>
 8003948:	46a9      	mov	r9, r5
 800394a:	4603      	mov	r3, r0
 800394c:	9009      	str	r0, [sp, #36]	; 0x24
 800394e:	f7ff b8f4 	b.w	8002b3a <_vfprintf_r+0x7e2>
 8003952:	46d1      	mov	r9, sl
 8003954:	f7ff ba7a 	b.w	8002e4c <_vfprintf_r+0xaf4>
 8003958:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800395a:	4619      	mov	r1, r3
 800395c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800395e:	4299      	cmp	r1, r3
 8003960:	f300 8082 	bgt.w	8003a68 <_vfprintf_r+0x1710>
 8003964:	07c4      	lsls	r4, r0, #31
 8003966:	f140 816b 	bpl.w	8003c40 <_vfprintf_r+0x18e8>
 800396a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800396c:	4413      	add	r3, r2
 800396e:	9309      	str	r3, [sp, #36]	; 0x24
 8003970:	0541      	lsls	r1, r0, #21
 8003972:	d503      	bpl.n	800397c <_vfprintf_r+0x1624>
 8003974:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003976:	2b00      	cmp	r3, #0
 8003978:	f300 80e6 	bgt.w	8003b48 <_vfprintf_r+0x17f0>
 800397c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800397e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003982:	9304      	str	r3, [sp, #16]
 8003984:	2667      	movs	r6, #103	; 0x67
 8003986:	2300      	movs	r3, #0
 8003988:	930f      	str	r3, [sp, #60]	; 0x3c
 800398a:	9314      	str	r3, [sp, #80]	; 0x50
 800398c:	e586      	b.n	800349c <_vfprintf_r+0x1144>
 800398e:	222d      	movs	r2, #45	; 0x2d
 8003990:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003994:	f04f 0900 	mov.w	r9, #0
 8003998:	f7fe be6c 	b.w	8002674 <_vfprintf_r+0x31c>
 800399c:	46a1      	mov	r9, r4
 800399e:	f7ff ba55 	b.w	8002e4c <_vfprintf_r+0xaf4>
 80039a2:	900a      	str	r0, [sp, #40]	; 0x28
 80039a4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80039a8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80039ac:	931f      	str	r3, [sp, #124]	; 0x7c
 80039ae:	232d      	movs	r3, #45	; 0x2d
 80039b0:	911e      	str	r1, [sp, #120]	; 0x78
 80039b2:	930b      	str	r3, [sp, #44]	; 0x2c
 80039b4:	e619      	b.n	80035ea <_vfprintf_r+0x1292>
 80039b6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039b8:	9328      	str	r3, [sp, #160]	; 0xa0
 80039ba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039bc:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80039c0:	7bd9      	ldrb	r1, [r3, #15]
 80039c2:	4291      	cmp	r1, r2
 80039c4:	462b      	mov	r3, r5
 80039c6:	d109      	bne.n	80039dc <_vfprintf_r+0x1684>
 80039c8:	2030      	movs	r0, #48	; 0x30
 80039ca:	f803 0c01 	strb.w	r0, [r3, #-1]
 80039ce:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80039d0:	1e5a      	subs	r2, r3, #1
 80039d2:	9228      	str	r2, [sp, #160]	; 0xa0
 80039d4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80039d8:	4291      	cmp	r1, r2
 80039da:	d0f6      	beq.n	80039ca <_vfprintf_r+0x1672>
 80039dc:	2a39      	cmp	r2, #57	; 0x39
 80039de:	bf0b      	itete	eq
 80039e0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80039e2:	3201      	addne	r2, #1
 80039e4:	7a92      	ldrbeq	r2, [r2, #10]
 80039e6:	b2d2      	uxtbne	r2, r2
 80039e8:	f803 2c01 	strb.w	r2, [r3, #-1]
 80039ec:	e682      	b.n	80036f4 <_vfprintf_r+0x139c>
 80039ee:	f418 7f00 	tst.w	r8, #512	; 0x200
 80039f2:	f43f ad9f 	beq.w	8003534 <_vfprintf_r+0x11dc>
 80039f6:	9a05      	ldr	r2, [sp, #20]
 80039f8:	701a      	strb	r2, [r3, #0]
 80039fa:	4657      	mov	r7, sl
 80039fc:	f7fe bf52 	b.w	80028a4 <_vfprintf_r+0x54c>
 8003a00:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a02:	9907      	ldr	r1, [sp, #28]
 8003a04:	9803      	ldr	r0, [sp, #12]
 8003a06:	f002 ffd5 	bl	80069b4 <__sprint_r>
 8003a0a:	2800      	cmp	r0, #0
 8003a0c:	f47f aa1c 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8003a10:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a12:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003a16:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a1a:	e571      	b.n	8003500 <_vfprintf_r+0x11a8>
 8003a1c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a1e:	2b00      	cmp	r3, #0
 8003a20:	f340 8164 	ble.w	8003cec <_vfprintf_r+0x1994>
 8003a24:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a26:	f1b9 0f00 	cmp.w	r9, #0
 8003a2a:	f040 8103 	bne.w	8003c34 <_vfprintf_r+0x18dc>
 8003a2e:	07c6      	lsls	r6, r0, #31
 8003a30:	f100 8100 	bmi.w	8003c34 <_vfprintf_r+0x18dc>
 8003a34:	9309      	str	r3, [sp, #36]	; 0x24
 8003a36:	2666      	movs	r6, #102	; 0x66
 8003a38:	0543      	lsls	r3, r0, #21
 8003a3a:	f100 8086 	bmi.w	8003b4a <_vfprintf_r+0x17f2>
 8003a3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a40:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a44:	9304      	str	r3, [sp, #16]
 8003a46:	e79e      	b.n	8003986 <_vfprintf_r+0x162e>
 8003a48:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a4a:	9907      	ldr	r1, [sp, #28]
 8003a4c:	9803      	ldr	r0, [sp, #12]
 8003a4e:	f002 ffb1 	bl	80069b4 <__sprint_r>
 8003a52:	2800      	cmp	r0, #0
 8003a54:	f47f a9f8 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8003a58:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a5a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003a5c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a5e:	1ad3      	subs	r3, r2, r3
 8003a60:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a64:	f7ff bb90 	b.w	8003188 <_vfprintf_r+0xe30>
 8003a68:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a6a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a6c:	4413      	add	r3, r2
 8003a6e:	9309      	str	r3, [sp, #36]	; 0x24
 8003a70:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a72:	2b00      	cmp	r3, #0
 8003a74:	f340 8149 	ble.w	8003d0a <_vfprintf_r+0x19b2>
 8003a78:	2667      	movs	r6, #103	; 0x67
 8003a7a:	e7dd      	b.n	8003a38 <_vfprintf_r+0x16e0>
 8003a7c:	2330      	movs	r3, #48	; 0x30
 8003a7e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003a82:	2358      	movs	r3, #88	; 0x58
 8003a84:	e595      	b.n	80035b2 <_vfprintf_r+0x125a>
 8003a86:	9803      	ldr	r0, [sp, #12]
 8003a88:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a8a:	4649      	mov	r1, r9
 8003a8c:	f002 ff92 	bl	80069b4 <__sprint_r>
 8003a90:	2800      	cmp	r0, #0
 8003a92:	f47f a9e0 	bne.w	8002e56 <_vfprintf_r+0xafe>
 8003a96:	f7fe bf0f 	b.w	80028b8 <_vfprintf_r+0x560>
 8003a9a:	a824      	add	r0, sp, #144	; 0x90
 8003a9c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003aa0:	f002 fe90 	bl	80067c4 <frexp>
 8003aa4:	2200      	movs	r2, #0
 8003aa6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003aaa:	ec51 0b10 	vmov	r0, r1, d0
 8003aae:	f7fd f843 	bl	8000b38 <__aeabi_dmul>
 8003ab2:	2200      	movs	r2, #0
 8003ab4:	2300      	movs	r3, #0
 8003ab6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003aba:	f7fd faa5 	bl	8001008 <__aeabi_dcmpeq>
 8003abe:	b108      	cbz	r0, 8003ac4 <_vfprintf_r+0x176c>
 8003ac0:	2301      	movs	r3, #1
 8003ac2:	9324      	str	r3, [sp, #144]	; 0x90
 8003ac4:	4b02      	ldr	r3, [pc, #8]	; (8003ad0 <_vfprintf_r+0x1778>)
 8003ac6:	9309      	str	r3, [sp, #36]	; 0x24
 8003ac8:	e5ac      	b.n	8003624 <_vfprintf_r+0x12cc>
 8003aca:	bf00      	nop
 8003acc:	080070a8 	.word	0x080070a8
 8003ad0:	08007064 	.word	0x08007064
 8003ad4:	425d      	negs	r5, r3
 8003ad6:	3310      	adds	r3, #16
 8003ad8:	4bb9      	ldr	r3, [pc, #740]	; (8003dc0 <_vfprintf_r+0x1a68>)
 8003ada:	f280 8097 	bge.w	8003c0c <_vfprintf_r+0x18b4>
 8003ade:	4619      	mov	r1, r3
 8003ae0:	2610      	movs	r6, #16
 8003ae2:	4623      	mov	r3, r4
 8003ae4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003ae8:	460c      	mov	r4, r1
 8003aea:	e005      	b.n	8003af8 <_vfprintf_r+0x17a0>
 8003aec:	f10b 0b08 	add.w	fp, fp, #8
 8003af0:	3d10      	subs	r5, #16
 8003af2:	2d10      	cmp	r5, #16
 8003af4:	f340 8087 	ble.w	8003c06 <_vfprintf_r+0x18ae>
 8003af8:	3201      	adds	r2, #1
 8003afa:	3310      	adds	r3, #16
 8003afc:	2a07      	cmp	r2, #7
 8003afe:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003b02:	e9cb 4600 	strd	r4, r6, [fp]
 8003b06:	ddf1      	ble.n	8003aec <_vfprintf_r+0x1794>
 8003b08:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b0a:	9907      	ldr	r1, [sp, #28]
 8003b0c:	4648      	mov	r0, r9
 8003b0e:	f002 ff51 	bl	80069b4 <__sprint_r>
 8003b12:	2800      	cmp	r0, #0
 8003b14:	f47f a998 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8003b18:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003b1c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b20:	e7e6      	b.n	8003af0 <_vfprintf_r+0x1798>
 8003b22:	f109 0101 	add.w	r1, r9, #1
 8003b26:	9803      	ldr	r0, [sp, #12]
 8003b28:	f001 fe80 	bl	800582c <_malloc_r>
 8003b2c:	4607      	mov	r7, r0
 8003b2e:	2800      	cmp	r0, #0
 8003b30:	f000 813b 	beq.w	8003daa <_vfprintf_r+0x1a52>
 8003b34:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003b38:	930e      	str	r3, [sp, #56]	; 0x38
 8003b3a:	f026 0320 	bic.w	r3, r6, #32
 8003b3e:	9304      	str	r3, [sp, #16]
 8003b40:	46a0      	mov	r8, r4
 8003b42:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003b44:	900a      	str	r0, [sp, #40]	; 0x28
 8003b46:	e547      	b.n	80035d8 <_vfprintf_r+0x1280>
 8003b48:	2667      	movs	r6, #103	; 0x67
 8003b4a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003b4c:	2200      	movs	r2, #0
 8003b4e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003b50:	9214      	str	r2, [sp, #80]	; 0x50
 8003b52:	7803      	ldrb	r3, [r0, #0]
 8003b54:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003b56:	2bff      	cmp	r3, #255	; 0xff
 8003b58:	d00c      	beq.n	8003b74 <_vfprintf_r+0x181c>
 8003b5a:	4293      	cmp	r3, r2
 8003b5c:	da0a      	bge.n	8003b74 <_vfprintf_r+0x181c>
 8003b5e:	7841      	ldrb	r1, [r0, #1]
 8003b60:	1ad2      	subs	r2, r2, r3
 8003b62:	b1a9      	cbz	r1, 8003b90 <_vfprintf_r+0x1838>
 8003b64:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b66:	3301      	adds	r3, #1
 8003b68:	9314      	str	r3, [sp, #80]	; 0x50
 8003b6a:	460b      	mov	r3, r1
 8003b6c:	2bff      	cmp	r3, #255	; 0xff
 8003b6e:	f100 0001 	add.w	r0, r0, #1
 8003b72:	d1f2      	bne.n	8003b5a <_vfprintf_r+0x1802>
 8003b74:	9211      	str	r2, [sp, #68]	; 0x44
 8003b76:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b78:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003b7a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003b7c:	901a      	str	r0, [sp, #104]	; 0x68
 8003b7e:	4413      	add	r3, r2
 8003b80:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003b82:	fb02 1303 	mla	r3, r2, r3, r1
 8003b86:	9309      	str	r3, [sp, #36]	; 0x24
 8003b88:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b8c:	9304      	str	r3, [sp, #16]
 8003b8e:	e485      	b.n	800349c <_vfprintf_r+0x1144>
 8003b90:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003b92:	3101      	adds	r1, #1
 8003b94:	910f      	str	r1, [sp, #60]	; 0x3c
 8003b96:	e7de      	b.n	8003b56 <_vfprintf_r+0x17fe>
 8003b98:	aa28      	add	r2, sp, #160	; 0xa0
 8003b9a:	ab25      	add	r3, sp, #148	; 0x94
 8003b9c:	e9cd 3200 	strd	r3, r2, [sp]
 8003ba0:	2103      	movs	r1, #3
 8003ba2:	ab24      	add	r3, sp, #144	; 0x90
 8003ba4:	464a      	mov	r2, r9
 8003ba6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003baa:	9803      	ldr	r0, [sp, #12]
 8003bac:	f000 fa5c 	bl	8004068 <_dtoa_r>
 8003bb0:	464d      	mov	r5, r9
 8003bb2:	4607      	mov	r7, r0
 8003bb4:	eb00 0409 	add.w	r4, r0, r9
 8003bb8:	783b      	ldrb	r3, [r7, #0]
 8003bba:	2b30      	cmp	r3, #48	; 0x30
 8003bbc:	f000 80be 	beq.w	8003d3c <_vfprintf_r+0x19e4>
 8003bc0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003bc2:	442c      	add	r4, r5
 8003bc4:	2200      	movs	r2, #0
 8003bc6:	2300      	movs	r3, #0
 8003bc8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003bcc:	f7fd fa1c 	bl	8001008 <__aeabi_dcmpeq>
 8003bd0:	b108      	cbz	r0, 8003bd6 <_vfprintf_r+0x187e>
 8003bd2:	4623      	mov	r3, r4
 8003bd4:	e413      	b.n	80033fe <_vfprintf_r+0x10a6>
 8003bd6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003bd8:	42a3      	cmp	r3, r4
 8003bda:	f4bf ac10 	bcs.w	80033fe <_vfprintf_r+0x10a6>
 8003bde:	2130      	movs	r1, #48	; 0x30
 8003be0:	1c5a      	adds	r2, r3, #1
 8003be2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003be4:	7019      	strb	r1, [r3, #0]
 8003be6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003be8:	429c      	cmp	r4, r3
 8003bea:	d8f9      	bhi.n	8003be0 <_vfprintf_r+0x1888>
 8003bec:	e407      	b.n	80033fe <_vfprintf_r+0x10a6>
 8003bee:	197c      	adds	r4, r7, r5
 8003bf0:	e7e8      	b.n	8003bc4 <_vfprintf_r+0x186c>
 8003bf2:	f1b9 0f00 	cmp.w	r9, #0
 8003bf6:	f000 8092 	beq.w	8003d1e <_vfprintf_r+0x19c6>
 8003bfa:	900a      	str	r0, [sp, #40]	; 0x28
 8003bfc:	e4ec      	b.n	80035d8 <_vfprintf_r+0x1280>
 8003bfe:	900a      	str	r0, [sp, #40]	; 0x28
 8003c00:	f04f 0906 	mov.w	r9, #6
 8003c04:	e4e8      	b.n	80035d8 <_vfprintf_r+0x1280>
 8003c06:	4621      	mov	r1, r4
 8003c08:	461c      	mov	r4, r3
 8003c0a:	460b      	mov	r3, r1
 8003c0c:	3201      	adds	r2, #1
 8003c0e:	442c      	add	r4, r5
 8003c10:	2a07      	cmp	r2, #7
 8003c12:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003c16:	e9cb 3500 	strd	r3, r5, [fp]
 8003c1a:	f300 80a9 	bgt.w	8003d70 <_vfprintf_r+0x1a18>
 8003c1e:	f10b 0b08 	add.w	fp, fp, #8
 8003c22:	e470      	b.n	8003506 <_vfprintf_r+0x11ae>
 8003c24:	469a      	mov	sl, r3
 8003c26:	f7ff bb37 	b.w	8003298 <_vfprintf_r+0xf40>
 8003c2a:	2301      	movs	r3, #1
 8003c2c:	9324      	str	r3, [sp, #144]	; 0x90
 8003c2e:	4b65      	ldr	r3, [pc, #404]	; (8003dc4 <_vfprintf_r+0x1a6c>)
 8003c30:	9309      	str	r3, [sp, #36]	; 0x24
 8003c32:	e4f7      	b.n	8003624 <_vfprintf_r+0x12cc>
 8003c34:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c36:	4413      	add	r3, r2
 8003c38:	444b      	add	r3, r9
 8003c3a:	9309      	str	r3, [sp, #36]	; 0x24
 8003c3c:	2666      	movs	r6, #102	; 0x66
 8003c3e:	e6fb      	b.n	8003a38 <_vfprintf_r+0x16e0>
 8003c40:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c42:	9309      	str	r3, [sp, #36]	; 0x24
 8003c44:	e694      	b.n	8003970 <_vfprintf_r+0x1618>
 8003c46:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003c4a:	4664      	mov	r4, ip
 8003c4c:	4d5e      	ldr	r5, [pc, #376]	; (8003dc8 <_vfprintf_r+0x1a70>)
 8003c4e:	e000      	b.n	8003c52 <_vfprintf_r+0x18fa>
 8003c50:	4614      	mov	r4, r2
 8003c52:	fba5 1203 	umull	r1, r2, r5, r3
 8003c56:	08d2      	lsrs	r2, r2, #3
 8003c58:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003c5c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003c60:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003c64:	4613      	mov	r3, r2
 8003c66:	2b09      	cmp	r3, #9
 8003c68:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003c6c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003c70:	dcee      	bgt.n	8003c50 <_vfprintf_r+0x18f8>
 8003c72:	3330      	adds	r3, #48	; 0x30
 8003c74:	3c02      	subs	r4, #2
 8003c76:	b2db      	uxtb	r3, r3
 8003c78:	45a4      	cmp	ip, r4
 8003c7a:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003c7e:	f240 8090 	bls.w	8003da2 <_vfprintf_r+0x1a4a>
 8003c82:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003c86:	4611      	mov	r1, r2
 8003c88:	e001      	b.n	8003c8e <_vfprintf_r+0x1936>
 8003c8a:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003c8e:	f804 3b01 	strb.w	r3, [r4], #1
 8003c92:	458c      	cmp	ip, r1
 8003c94:	d1f9      	bne.n	8003c8a <_vfprintf_r+0x1932>
 8003c96:	ab2a      	add	r3, sp, #168	; 0xa8
 8003c98:	1a9b      	subs	r3, r3, r2
 8003c9a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003c9e:	4413      	add	r3, r2
 8003ca0:	f7ff bbe3 	b.w	800346a <_vfprintf_r+0x1112>
 8003ca4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003ca6:	4f49      	ldr	r7, [pc, #292]	; (8003dcc <_vfprintf_r+0x1a74>)
 8003ca8:	2b00      	cmp	r3, #0
 8003caa:	bfb6      	itet	lt
 8003cac:	222d      	movlt	r2, #45	; 0x2d
 8003cae:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003cb2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003cb6:	4b46      	ldr	r3, [pc, #280]	; (8003dd0 <_vfprintf_r+0x1a78>)
 8003cb8:	f7fe bf02 	b.w	8002ac0 <_vfprintf_r+0x768>
 8003cbc:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003cc0:	f7ff b8c9 	b.w	8002e56 <_vfprintf_r+0xafe>
 8003cc4:	aa28      	add	r2, sp, #160	; 0xa0
 8003cc6:	ab25      	add	r3, sp, #148	; 0x94
 8003cc8:	e9cd 3200 	strd	r3, r2, [sp]
 8003ccc:	2103      	movs	r1, #3
 8003cce:	ab24      	add	r3, sp, #144	; 0x90
 8003cd0:	464a      	mov	r2, r9
 8003cd2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003cd6:	9803      	ldr	r0, [sp, #12]
 8003cd8:	f000 f9c6 	bl	8004068 <_dtoa_r>
 8003cdc:	464d      	mov	r5, r9
 8003cde:	4607      	mov	r7, r0
 8003ce0:	2e46      	cmp	r6, #70	; 0x46
 8003ce2:	eb07 0405 	add.w	r4, r7, r5
 8003ce6:	f43f af67 	beq.w	8003bb8 <_vfprintf_r+0x1860>
 8003cea:	e76b      	b.n	8003bc4 <_vfprintf_r+0x186c>
 8003cec:	f1b9 0f00 	cmp.w	r9, #0
 8003cf0:	d131      	bne.n	8003d56 <_vfprintf_r+0x19fe>
 8003cf2:	07c5      	lsls	r5, r0, #31
 8003cf4:	d42f      	bmi.n	8003d56 <_vfprintf_r+0x19fe>
 8003cf6:	2301      	movs	r3, #1
 8003cf8:	9304      	str	r3, [sp, #16]
 8003cfa:	9309      	str	r3, [sp, #36]	; 0x24
 8003cfc:	2666      	movs	r6, #102	; 0x66
 8003cfe:	e642      	b.n	8003986 <_vfprintf_r+0x162e>
 8003d00:	07c3      	lsls	r3, r0, #31
 8003d02:	f57f abbf 	bpl.w	8003484 <_vfprintf_r+0x112c>
 8003d06:	f7ff bbb9 	b.w	800347c <_vfprintf_r+0x1124>
 8003d0a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003d0c:	f1c3 0301 	rsb	r3, r3, #1
 8003d10:	441a      	add	r2, r3
 8003d12:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003d16:	9209      	str	r2, [sp, #36]	; 0x24
 8003d18:	9304      	str	r3, [sp, #16]
 8003d1a:	2667      	movs	r6, #103	; 0x67
 8003d1c:	e633      	b.n	8003986 <_vfprintf_r+0x162e>
 8003d1e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003d22:	f04f 0901 	mov.w	r9, #1
 8003d26:	e457      	b.n	80035d8 <_vfprintf_r+0x1280>
 8003d28:	465a      	mov	r2, fp
 8003d2a:	e511      	b.n	8003750 <_vfprintf_r+0x13f8>
 8003d2c:	2e47      	cmp	r6, #71	; 0x47
 8003d2e:	f47f af5e 	bne.w	8003bee <_vfprintf_r+0x1896>
 8003d32:	f018 0f01 	tst.w	r8, #1
 8003d36:	f43f ab61 	beq.w	80033fc <_vfprintf_r+0x10a4>
 8003d3a:	e7d1      	b.n	8003ce0 <_vfprintf_r+0x1988>
 8003d3c:	2200      	movs	r2, #0
 8003d3e:	2300      	movs	r3, #0
 8003d40:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003d44:	f7fd f960 	bl	8001008 <__aeabi_dcmpeq>
 8003d48:	2800      	cmp	r0, #0
 8003d4a:	f47f af39 	bne.w	8003bc0 <_vfprintf_r+0x1868>
 8003d4e:	f1c5 0501 	rsb	r5, r5, #1
 8003d52:	9524      	str	r5, [sp, #144]	; 0x90
 8003d54:	e735      	b.n	8003bc2 <_vfprintf_r+0x186a>
 8003d56:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003d58:	3301      	adds	r3, #1
 8003d5a:	444b      	add	r3, r9
 8003d5c:	9309      	str	r3, [sp, #36]	; 0x24
 8003d5e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d62:	9304      	str	r3, [sp, #16]
 8003d64:	2666      	movs	r6, #102	; 0x66
 8003d66:	e60e      	b.n	8003986 <_vfprintf_r+0x162e>
 8003d68:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003d6c:	f7ff bb7a 	b.w	8003464 <_vfprintf_r+0x110c>
 8003d70:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d72:	9907      	ldr	r1, [sp, #28]
 8003d74:	9803      	ldr	r0, [sp, #12]
 8003d76:	f002 fe1d 	bl	80069b4 <__sprint_r>
 8003d7a:	2800      	cmp	r0, #0
 8003d7c:	f47f a864 	bne.w	8002e48 <_vfprintf_r+0xaf0>
 8003d80:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003d84:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d88:	f7ff bbbd 	b.w	8003506 <_vfprintf_r+0x11ae>
 8003d8c:	9908      	ldr	r1, [sp, #32]
 8003d8e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003d92:	680b      	ldr	r3, [r1, #0]
 8003d94:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003d98:	1d0b      	adds	r3, r1, #4
 8003d9a:	4692      	mov	sl, r2
 8003d9c:	9308      	str	r3, [sp, #32]
 8003d9e:	f7fe bb59 	b.w	8002454 <_vfprintf_r+0xfc>
 8003da2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003da6:	f7ff bb60 	b.w	800346a <_vfprintf_r+0x1112>
 8003daa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003dae:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003db2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003db6:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003dba:	f7ff b84c 	b.w	8002e56 <_vfprintf_r+0xafe>
 8003dbe:	bf00      	nop
 8003dc0:	080070a8 	.word	0x080070a8
 8003dc4:	08007078 	.word	0x08007078
 8003dc8:	cccccccd 	.word	0xcccccccd
 8003dcc:	08007060 	.word	0x08007060
 8003dd0:	0800705c 	.word	0x0800705c

08003dd4 <__sbprintf>:
 8003dd4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003dd8:	460c      	mov	r4, r1
 8003dda:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003dde:	8989      	ldrh	r1, [r1, #12]
 8003de0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003de2:	89e5      	ldrh	r5, [r4, #14]
 8003de4:	9619      	str	r6, [sp, #100]	; 0x64
 8003de6:	f021 0102 	bic.w	r1, r1, #2
 8003dea:	4606      	mov	r6, r0
 8003dec:	69e0      	ldr	r0, [r4, #28]
 8003dee:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003df2:	4617      	mov	r7, r2
 8003df4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003df8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003dfa:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003dfe:	4698      	mov	r8, r3
 8003e00:	ad1a      	add	r5, sp, #104	; 0x68
 8003e02:	2300      	movs	r3, #0
 8003e04:	9007      	str	r0, [sp, #28]
 8003e06:	a816      	add	r0, sp, #88	; 0x58
 8003e08:	9209      	str	r2, [sp, #36]	; 0x24
 8003e0a:	9306      	str	r3, [sp, #24]
 8003e0c:	9500      	str	r5, [sp, #0]
 8003e0e:	9504      	str	r5, [sp, #16]
 8003e10:	9102      	str	r1, [sp, #8]
 8003e12:	9105      	str	r1, [sp, #20]
 8003e14:	f001 fc8a 	bl	800572c <__retarget_lock_init_recursive>
 8003e18:	4643      	mov	r3, r8
 8003e1a:	463a      	mov	r2, r7
 8003e1c:	4669      	mov	r1, sp
 8003e1e:	4630      	mov	r0, r6
 8003e20:	f7fe fa9a 	bl	8002358 <_vfprintf_r>
 8003e24:	1e05      	subs	r5, r0, #0
 8003e26:	db07      	blt.n	8003e38 <__sbprintf+0x64>
 8003e28:	4630      	mov	r0, r6
 8003e2a:	4669      	mov	r1, sp
 8003e2c:	f001 f8d6 	bl	8004fdc <_fflush_r>
 8003e30:	2800      	cmp	r0, #0
 8003e32:	bf18      	it	ne
 8003e34:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003e38:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003e3c:	065b      	lsls	r3, r3, #25
 8003e3e:	d503      	bpl.n	8003e48 <__sbprintf+0x74>
 8003e40:	89a3      	ldrh	r3, [r4, #12]
 8003e42:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e46:	81a3      	strh	r3, [r4, #12]
 8003e48:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003e4a:	f001 fc71 	bl	8005730 <__retarget_lock_close_recursive>
 8003e4e:	4628      	mov	r0, r5
 8003e50:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003e54:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003e58 <__swsetup_r>:
 8003e58:	b538      	push	{r3, r4, r5, lr}
 8003e5a:	4b31      	ldr	r3, [pc, #196]	; (8003f20 <__swsetup_r+0xc8>)
 8003e5c:	681b      	ldr	r3, [r3, #0]
 8003e5e:	4605      	mov	r5, r0
 8003e60:	460c      	mov	r4, r1
 8003e62:	b113      	cbz	r3, 8003e6a <__swsetup_r+0x12>
 8003e64:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003e66:	2a00      	cmp	r2, #0
 8003e68:	d03a      	beq.n	8003ee0 <__swsetup_r+0x88>
 8003e6a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003e6e:	b293      	uxth	r3, r2
 8003e70:	0718      	lsls	r0, r3, #28
 8003e72:	d50c      	bpl.n	8003e8e <__swsetup_r+0x36>
 8003e74:	6920      	ldr	r0, [r4, #16]
 8003e76:	b1a8      	cbz	r0, 8003ea4 <__swsetup_r+0x4c>
 8003e78:	f013 0201 	ands.w	r2, r3, #1
 8003e7c:	d020      	beq.n	8003ec0 <__swsetup_r+0x68>
 8003e7e:	6963      	ldr	r3, [r4, #20]
 8003e80:	2200      	movs	r2, #0
 8003e82:	425b      	negs	r3, r3
 8003e84:	61a3      	str	r3, [r4, #24]
 8003e86:	60a2      	str	r2, [r4, #8]
 8003e88:	b300      	cbz	r0, 8003ecc <__swsetup_r+0x74>
 8003e8a:	2000      	movs	r0, #0
 8003e8c:	bd38      	pop	{r3, r4, r5, pc}
 8003e8e:	06d9      	lsls	r1, r3, #27
 8003e90:	d53e      	bpl.n	8003f10 <__swsetup_r+0xb8>
 8003e92:	0758      	lsls	r0, r3, #29
 8003e94:	d428      	bmi.n	8003ee8 <__swsetup_r+0x90>
 8003e96:	6920      	ldr	r0, [r4, #16]
 8003e98:	f042 0308 	orr.w	r3, r2, #8
 8003e9c:	81a3      	strh	r3, [r4, #12]
 8003e9e:	b29b      	uxth	r3, r3
 8003ea0:	2800      	cmp	r0, #0
 8003ea2:	d1e9      	bne.n	8003e78 <__swsetup_r+0x20>
 8003ea4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003ea8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003eac:	d0e4      	beq.n	8003e78 <__swsetup_r+0x20>
 8003eae:	4628      	mov	r0, r5
 8003eb0:	4621      	mov	r1, r4
 8003eb2:	f001 fc71 	bl	8005798 <__smakebuf_r>
 8003eb6:	89a3      	ldrh	r3, [r4, #12]
 8003eb8:	6920      	ldr	r0, [r4, #16]
 8003eba:	f013 0201 	ands.w	r2, r3, #1
 8003ebe:	d1de      	bne.n	8003e7e <__swsetup_r+0x26>
 8003ec0:	0799      	lsls	r1, r3, #30
 8003ec2:	bf58      	it	pl
 8003ec4:	6962      	ldrpl	r2, [r4, #20]
 8003ec6:	60a2      	str	r2, [r4, #8]
 8003ec8:	2800      	cmp	r0, #0
 8003eca:	d1de      	bne.n	8003e8a <__swsetup_r+0x32>
 8003ecc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003ed0:	061a      	lsls	r2, r3, #24
 8003ed2:	d5db      	bpl.n	8003e8c <__swsetup_r+0x34>
 8003ed4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003ed8:	81a3      	strh	r3, [r4, #12]
 8003eda:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003ede:	bd38      	pop	{r3, r4, r5, pc}
 8003ee0:	4618      	mov	r0, r3
 8003ee2:	f001 f8d7 	bl	8005094 <__sinit>
 8003ee6:	e7c0      	b.n	8003e6a <__swsetup_r+0x12>
 8003ee8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003eea:	b151      	cbz	r1, 8003f02 <__swsetup_r+0xaa>
 8003eec:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003ef0:	4299      	cmp	r1, r3
 8003ef2:	d004      	beq.n	8003efe <__swsetup_r+0xa6>
 8003ef4:	4628      	mov	r0, r5
 8003ef6:	f001 f96f 	bl	80051d8 <_free_r>
 8003efa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003efe:	2300      	movs	r3, #0
 8003f00:	6323      	str	r3, [r4, #48]	; 0x30
 8003f02:	2300      	movs	r3, #0
 8003f04:	6920      	ldr	r0, [r4, #16]
 8003f06:	6063      	str	r3, [r4, #4]
 8003f08:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003f0c:	6020      	str	r0, [r4, #0]
 8003f0e:	e7c3      	b.n	8003e98 <__swsetup_r+0x40>
 8003f10:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003f14:	2309      	movs	r3, #9
 8003f16:	602b      	str	r3, [r5, #0]
 8003f18:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003f1c:	81a2      	strh	r2, [r4, #12]
 8003f1e:	bd38      	pop	{r3, r4, r5, pc}
 8003f20:	20000018 	.word	0x20000018

08003f24 <register_fini>:
 8003f24:	4b02      	ldr	r3, [pc, #8]	; (8003f30 <register_fini+0xc>)
 8003f26:	b113      	cbz	r3, 8003f2e <register_fini+0xa>
 8003f28:	4802      	ldr	r0, [pc, #8]	; (8003f34 <register_fini+0x10>)
 8003f2a:	f000 b805 	b.w	8003f38 <atexit>
 8003f2e:	4770      	bx	lr
 8003f30:	00000000 	.word	0x00000000
 8003f34:	08005105 	.word	0x08005105

08003f38 <atexit>:
 8003f38:	2300      	movs	r3, #0
 8003f3a:	4601      	mov	r1, r0
 8003f3c:	461a      	mov	r2, r3
 8003f3e:	4618      	mov	r0, r3
 8003f40:	f002 bd58 	b.w	80069f4 <__register_exitproc>

08003f44 <quorem>:
 8003f44:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003f48:	6903      	ldr	r3, [r0, #16]
 8003f4a:	690f      	ldr	r7, [r1, #16]
 8003f4c:	42bb      	cmp	r3, r7
 8003f4e:	b083      	sub	sp, #12
 8003f50:	f2c0 8086 	blt.w	8004060 <quorem+0x11c>
 8003f54:	3f01      	subs	r7, #1
 8003f56:	f101 0914 	add.w	r9, r1, #20
 8003f5a:	f100 0a14 	add.w	sl, r0, #20
 8003f5e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003f62:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003f66:	00bc      	lsls	r4, r7, #2
 8003f68:	3201      	adds	r2, #1
 8003f6a:	fbb3 f8f2 	udiv	r8, r3, r2
 8003f6e:	eb0a 0304 	add.w	r3, sl, r4
 8003f72:	9400      	str	r4, [sp, #0]
 8003f74:	eb09 0b04 	add.w	fp, r9, r4
 8003f78:	9301      	str	r3, [sp, #4]
 8003f7a:	f1b8 0f00 	cmp.w	r8, #0
 8003f7e:	d038      	beq.n	8003ff2 <quorem+0xae>
 8003f80:	2500      	movs	r5, #0
 8003f82:	462e      	mov	r6, r5
 8003f84:	46ce      	mov	lr, r9
 8003f86:	46d4      	mov	ip, sl
 8003f88:	f85e 4b04 	ldr.w	r4, [lr], #4
 8003f8c:	f8dc 3000 	ldr.w	r3, [ip]
 8003f90:	b2a2      	uxth	r2, r4
 8003f92:	fb08 5502 	mla	r5, r8, r2, r5
 8003f96:	0c22      	lsrs	r2, r4, #16
 8003f98:	0c2c      	lsrs	r4, r5, #16
 8003f9a:	fb08 4202 	mla	r2, r8, r2, r4
 8003f9e:	b2ad      	uxth	r5, r5
 8003fa0:	1b75      	subs	r5, r6, r5
 8003fa2:	b296      	uxth	r6, r2
 8003fa4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8003fa8:	fa15 f383 	uxtah	r3, r5, r3
 8003fac:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8003fb0:	b29b      	uxth	r3, r3
 8003fb2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8003fb6:	45f3      	cmp	fp, lr
 8003fb8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8003fbc:	f84c 3b04 	str.w	r3, [ip], #4
 8003fc0:	ea4f 4626 	mov.w	r6, r6, asr #16
 8003fc4:	d2e0      	bcs.n	8003f88 <quorem+0x44>
 8003fc6:	9b00      	ldr	r3, [sp, #0]
 8003fc8:	f85a 3003 	ldr.w	r3, [sl, r3]
 8003fcc:	b98b      	cbnz	r3, 8003ff2 <quorem+0xae>
 8003fce:	9a01      	ldr	r2, [sp, #4]
 8003fd0:	1f13      	subs	r3, r2, #4
 8003fd2:	459a      	cmp	sl, r3
 8003fd4:	d20c      	bcs.n	8003ff0 <quorem+0xac>
 8003fd6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8003fda:	b94b      	cbnz	r3, 8003ff0 <quorem+0xac>
 8003fdc:	f1a2 0308 	sub.w	r3, r2, #8
 8003fe0:	e002      	b.n	8003fe8 <quorem+0xa4>
 8003fe2:	681a      	ldr	r2, [r3, #0]
 8003fe4:	3b04      	subs	r3, #4
 8003fe6:	b91a      	cbnz	r2, 8003ff0 <quorem+0xac>
 8003fe8:	459a      	cmp	sl, r3
 8003fea:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003fee:	d3f8      	bcc.n	8003fe2 <quorem+0x9e>
 8003ff0:	6107      	str	r7, [r0, #16]
 8003ff2:	4604      	mov	r4, r0
 8003ff4:	f002 f944 	bl	8006280 <__mcmp>
 8003ff8:	2800      	cmp	r0, #0
 8003ffa:	db2d      	blt.n	8004058 <quorem+0x114>
 8003ffc:	f108 0801 	add.w	r8, r8, #1
 8004000:	4655      	mov	r5, sl
 8004002:	2300      	movs	r3, #0
 8004004:	f859 1b04 	ldr.w	r1, [r9], #4
 8004008:	6828      	ldr	r0, [r5, #0]
 800400a:	b28a      	uxth	r2, r1
 800400c:	1a9a      	subs	r2, r3, r2
 800400e:	0c0b      	lsrs	r3, r1, #16
 8004010:	fa12 f280 	uxtah	r2, r2, r0
 8004014:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004018:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800401c:	b292      	uxth	r2, r2
 800401e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004022:	45cb      	cmp	fp, r9
 8004024:	f845 2b04 	str.w	r2, [r5], #4
 8004028:	ea4f 4323 	mov.w	r3, r3, asr #16
 800402c:	d2ea      	bcs.n	8004004 <quorem+0xc0>
 800402e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004032:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004036:	b97a      	cbnz	r2, 8004058 <quorem+0x114>
 8004038:	1f1a      	subs	r2, r3, #4
 800403a:	4592      	cmp	sl, r2
 800403c:	d20b      	bcs.n	8004056 <quorem+0x112>
 800403e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004042:	b942      	cbnz	r2, 8004056 <quorem+0x112>
 8004044:	3b08      	subs	r3, #8
 8004046:	e002      	b.n	800404e <quorem+0x10a>
 8004048:	681a      	ldr	r2, [r3, #0]
 800404a:	3b04      	subs	r3, #4
 800404c:	b91a      	cbnz	r2, 8004056 <quorem+0x112>
 800404e:	459a      	cmp	sl, r3
 8004050:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004054:	d3f8      	bcc.n	8004048 <quorem+0x104>
 8004056:	6127      	str	r7, [r4, #16]
 8004058:	4640      	mov	r0, r8
 800405a:	b003      	add	sp, #12
 800405c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004060:	2000      	movs	r0, #0
 8004062:	b003      	add	sp, #12
 8004064:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004068 <_dtoa_r>:
 8004068:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800406c:	ec55 4b10 	vmov	r4, r5, d0
 8004070:	b09b      	sub	sp, #108	; 0x6c
 8004072:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004074:	9102      	str	r1, [sp, #8]
 8004076:	4681      	mov	r9, r0
 8004078:	9207      	str	r2, [sp, #28]
 800407a:	9305      	str	r3, [sp, #20]
 800407c:	e9cd 4500 	strd	r4, r5, [sp]
 8004080:	b156      	cbz	r6, 8004098 <_dtoa_r+0x30>
 8004082:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004084:	6072      	str	r2, [r6, #4]
 8004086:	2301      	movs	r3, #1
 8004088:	4093      	lsls	r3, r2
 800408a:	60b3      	str	r3, [r6, #8]
 800408c:	4631      	mov	r1, r6
 800408e:	f001 ff07 	bl	8005ea0 <_Bfree>
 8004092:	2300      	movs	r3, #0
 8004094:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004098:	f1b5 0800 	subs.w	r8, r5, #0
 800409c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800409e:	bfb4      	ite	lt
 80040a0:	2301      	movlt	r3, #1
 80040a2:	2300      	movge	r3, #0
 80040a4:	6013      	str	r3, [r2, #0]
 80040a6:	4b76      	ldr	r3, [pc, #472]	; (8004280 <_dtoa_r+0x218>)
 80040a8:	bfbc      	itt	lt
 80040aa:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80040ae:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80040b2:	ea33 0308 	bics.w	r3, r3, r8
 80040b6:	f000 80a6 	beq.w	8004206 <_dtoa_r+0x19e>
 80040ba:	e9dd 6700 	ldrd	r6, r7, [sp]
 80040be:	2200      	movs	r2, #0
 80040c0:	2300      	movs	r3, #0
 80040c2:	4630      	mov	r0, r6
 80040c4:	4639      	mov	r1, r7
 80040c6:	f7fc ff9f 	bl	8001008 <__aeabi_dcmpeq>
 80040ca:	4605      	mov	r5, r0
 80040cc:	b178      	cbz	r0, 80040ee <_dtoa_r+0x86>
 80040ce:	9a05      	ldr	r2, [sp, #20]
 80040d0:	2301      	movs	r3, #1
 80040d2:	6013      	str	r3, [r2, #0]
 80040d4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80040d6:	2b00      	cmp	r3, #0
 80040d8:	f000 80c0 	beq.w	800425c <_dtoa_r+0x1f4>
 80040dc:	4b69      	ldr	r3, [pc, #420]	; (8004284 <_dtoa_r+0x21c>)
 80040de:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80040e0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80040e4:	6013      	str	r3, [r2, #0]
 80040e6:	4658      	mov	r0, fp
 80040e8:	b01b      	add	sp, #108	; 0x6c
 80040ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80040ee:	aa18      	add	r2, sp, #96	; 0x60
 80040f0:	a919      	add	r1, sp, #100	; 0x64
 80040f2:	ec47 6b10 	vmov	d0, r6, r7
 80040f6:	4648      	mov	r0, r9
 80040f8:	f002 f954 	bl	80063a4 <__d2b>
 80040fc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004100:	4682      	mov	sl, r0
 8004102:	f040 80a0 	bne.w	8004246 <_dtoa_r+0x1de>
 8004106:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800410a:	442c      	add	r4, r5
 800410c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004110:	2b20      	cmp	r3, #32
 8004112:	f340 842c 	ble.w	800496e <_dtoa_r+0x906>
 8004116:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800411a:	fa08 f803 	lsl.w	r8, r8, r3
 800411e:	9b00      	ldr	r3, [sp, #0]
 8004120:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004124:	fa23 f000 	lsr.w	r0, r3, r0
 8004128:	ea48 0000 	orr.w	r0, r8, r0
 800412c:	f7fc fc8a 	bl	8000a44 <__aeabi_ui2d>
 8004130:	2301      	movs	r3, #1
 8004132:	4606      	mov	r6, r0
 8004134:	3c01      	subs	r4, #1
 8004136:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800413a:	930f      	str	r3, [sp, #60]	; 0x3c
 800413c:	4630      	mov	r0, r6
 800413e:	4639      	mov	r1, r7
 8004140:	2200      	movs	r2, #0
 8004142:	4b51      	ldr	r3, [pc, #324]	; (8004288 <_dtoa_r+0x220>)
 8004144:	f7fc fb40 	bl	80007c8 <__aeabi_dsub>
 8004148:	a347      	add	r3, pc, #284	; (adr r3, 8004268 <_dtoa_r+0x200>)
 800414a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800414e:	f7fc fcf3 	bl	8000b38 <__aeabi_dmul>
 8004152:	a347      	add	r3, pc, #284	; (adr r3, 8004270 <_dtoa_r+0x208>)
 8004154:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004158:	f7fc fb38 	bl	80007cc <__adddf3>
 800415c:	4606      	mov	r6, r0
 800415e:	4620      	mov	r0, r4
 8004160:	460f      	mov	r7, r1
 8004162:	f7fc fc7f 	bl	8000a64 <__aeabi_i2d>
 8004166:	a344      	add	r3, pc, #272	; (adr r3, 8004278 <_dtoa_r+0x210>)
 8004168:	e9d3 2300 	ldrd	r2, r3, [r3]
 800416c:	f7fc fce4 	bl	8000b38 <__aeabi_dmul>
 8004170:	4602      	mov	r2, r0
 8004172:	460b      	mov	r3, r1
 8004174:	4630      	mov	r0, r6
 8004176:	4639      	mov	r1, r7
 8004178:	f7fc fb28 	bl	80007cc <__adddf3>
 800417c:	4606      	mov	r6, r0
 800417e:	460f      	mov	r7, r1
 8004180:	f7fc ff8a 	bl	8001098 <__aeabi_d2iz>
 8004184:	2200      	movs	r2, #0
 8004186:	9006      	str	r0, [sp, #24]
 8004188:	2300      	movs	r3, #0
 800418a:	4630      	mov	r0, r6
 800418c:	4639      	mov	r1, r7
 800418e:	f7fc ff45 	bl	800101c <__aeabi_dcmplt>
 8004192:	2800      	cmp	r0, #0
 8004194:	f040 8273 	bne.w	800467e <_dtoa_r+0x616>
 8004198:	9e06      	ldr	r6, [sp, #24]
 800419a:	2e16      	cmp	r6, #22
 800419c:	f200 825d 	bhi.w	800465a <_dtoa_r+0x5f2>
 80041a0:	4b3a      	ldr	r3, [pc, #232]	; (800428c <_dtoa_r+0x224>)
 80041a2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80041a6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80041aa:	e9dd 2300 	ldrd	r2, r3, [sp]
 80041ae:	f7fc ff53 	bl	8001058 <__aeabi_dcmpgt>
 80041b2:	2800      	cmp	r0, #0
 80041b4:	f000 83d7 	beq.w	8004966 <_dtoa_r+0x8fe>
 80041b8:	1e73      	subs	r3, r6, #1
 80041ba:	9306      	str	r3, [sp, #24]
 80041bc:	2300      	movs	r3, #0
 80041be:	930d      	str	r3, [sp, #52]	; 0x34
 80041c0:	1b2c      	subs	r4, r5, r4
 80041c2:	f1b4 0801 	subs.w	r8, r4, #1
 80041c6:	f100 8254 	bmi.w	8004672 <_dtoa_r+0x60a>
 80041ca:	2300      	movs	r3, #0
 80041cc:	9308      	str	r3, [sp, #32]
 80041ce:	9b06      	ldr	r3, [sp, #24]
 80041d0:	2b00      	cmp	r3, #0
 80041d2:	f2c0 8245 	blt.w	8004660 <_dtoa_r+0x5f8>
 80041d6:	4498      	add	r8, r3
 80041d8:	930c      	str	r3, [sp, #48]	; 0x30
 80041da:	2300      	movs	r3, #0
 80041dc:	930b      	str	r3, [sp, #44]	; 0x2c
 80041de:	9b02      	ldr	r3, [sp, #8]
 80041e0:	2b09      	cmp	r3, #9
 80041e2:	d85b      	bhi.n	800429c <_dtoa_r+0x234>
 80041e4:	2b05      	cmp	r3, #5
 80041e6:	f340 83c0 	ble.w	800496a <_dtoa_r+0x902>
 80041ea:	3b04      	subs	r3, #4
 80041ec:	9302      	str	r3, [sp, #8]
 80041ee:	2500      	movs	r5, #0
 80041f0:	9b02      	ldr	r3, [sp, #8]
 80041f2:	3b02      	subs	r3, #2
 80041f4:	2b03      	cmp	r3, #3
 80041f6:	f200 8498 	bhi.w	8004b2a <_dtoa_r+0xac2>
 80041fa:	e8df f013 	tbh	[pc, r3, lsl #1]
 80041fe:	03df      	.short	0x03df
 8004200:	03e803bf 	.word	0x03e803bf
 8004204:	04f5      	.short	0x04f5
 8004206:	9a05      	ldr	r2, [sp, #20]
 8004208:	f242 730f 	movw	r3, #9999	; 0x270f
 800420c:	6013      	str	r3, [r2, #0]
 800420e:	9b00      	ldr	r3, [sp, #0]
 8004210:	b983      	cbnz	r3, 8004234 <_dtoa_r+0x1cc>
 8004212:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004216:	b96b      	cbnz	r3, 8004234 <_dtoa_r+0x1cc>
 8004218:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800421a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004290 <_dtoa_r+0x228>
 800421e:	2b00      	cmp	r3, #0
 8004220:	f43f af61 	beq.w	80040e6 <_dtoa_r+0x7e>
 8004224:	f10b 0308 	add.w	r3, fp, #8
 8004228:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800422a:	4658      	mov	r0, fp
 800422c:	6013      	str	r3, [r2, #0]
 800422e:	b01b      	add	sp, #108	; 0x6c
 8004230:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004234:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004236:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004294 <_dtoa_r+0x22c>
 800423a:	2b00      	cmp	r3, #0
 800423c:	f43f af53 	beq.w	80040e6 <_dtoa_r+0x7e>
 8004240:	f10b 0303 	add.w	r3, fp, #3
 8004244:	e7f0      	b.n	8004228 <_dtoa_r+0x1c0>
 8004246:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800424a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800424e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004250:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004254:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004258:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800425a:	e76f      	b.n	800413c <_dtoa_r+0xd4>
 800425c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004298 <_dtoa_r+0x230>
 8004260:	4658      	mov	r0, fp
 8004262:	b01b      	add	sp, #108	; 0x6c
 8004264:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004268:	636f4361 	.word	0x636f4361
 800426c:	3fd287a7 	.word	0x3fd287a7
 8004270:	8b60c8b3 	.word	0x8b60c8b3
 8004274:	3fc68a28 	.word	0x3fc68a28
 8004278:	509f79fb 	.word	0x509f79fb
 800427c:	3fd34413 	.word	0x3fd34413
 8004280:	7ff00000 	.word	0x7ff00000
 8004284:	08007095 	.word	0x08007095
 8004288:	3ff80000 	.word	0x3ff80000
 800428c:	080070f0 	.word	0x080070f0
 8004290:	080070b8 	.word	0x080070b8
 8004294:	080070c4 	.word	0x080070c4
 8004298:	08007094 	.word	0x08007094
 800429c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80042a0:	2501      	movs	r5, #1
 80042a2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80042a6:	2300      	movs	r3, #0
 80042a8:	9302      	str	r3, [sp, #8]
 80042aa:	9307      	str	r3, [sp, #28]
 80042ac:	2100      	movs	r1, #0
 80042ae:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80042b2:	940e      	str	r4, [sp, #56]	; 0x38
 80042b4:	4648      	mov	r0, r9
 80042b6:	f001 fdcd 	bl	8005e54 <_Balloc>
 80042ba:	2c0e      	cmp	r4, #14
 80042bc:	4683      	mov	fp, r0
 80042be:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80042c2:	f200 80fb 	bhi.w	80044bc <_dtoa_r+0x454>
 80042c6:	2d00      	cmp	r5, #0
 80042c8:	f000 80f8 	beq.w	80044bc <_dtoa_r+0x454>
 80042cc:	ed9d 7b00 	vldr	d7, [sp]
 80042d0:	9906      	ldr	r1, [sp, #24]
 80042d2:	2900      	cmp	r1, #0
 80042d4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80042d8:	f340 83e5 	ble.w	8004aa6 <_dtoa_r+0xa3e>
 80042dc:	4b9d      	ldr	r3, [pc, #628]	; (8004554 <_dtoa_r+0x4ec>)
 80042de:	f001 020f 	and.w	r2, r1, #15
 80042e2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80042e6:	ed93 7b00 	vldr	d7, [r3]
 80042ea:	110c      	asrs	r4, r1, #4
 80042ec:	06e2      	lsls	r2, r4, #27
 80042ee:	ed8d 7b00 	vstr	d7, [sp]
 80042f2:	f140 849e 	bpl.w	8004c32 <_dtoa_r+0xbca>
 80042f6:	4b98      	ldr	r3, [pc, #608]	; (8004558 <_dtoa_r+0x4f0>)
 80042f8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80042fc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004300:	f7fc fd44 	bl	8000d8c <__aeabi_ddiv>
 8004304:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004308:	f004 040f 	and.w	r4, r4, #15
 800430c:	2603      	movs	r6, #3
 800430e:	b17c      	cbz	r4, 8004330 <_dtoa_r+0x2c8>
 8004310:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004314:	4d90      	ldr	r5, [pc, #576]	; (8004558 <_dtoa_r+0x4f0>)
 8004316:	07e3      	lsls	r3, r4, #31
 8004318:	d504      	bpl.n	8004324 <_dtoa_r+0x2bc>
 800431a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800431e:	f7fc fc0b 	bl	8000b38 <__aeabi_dmul>
 8004322:	3601      	adds	r6, #1
 8004324:	1064      	asrs	r4, r4, #1
 8004326:	f105 0508 	add.w	r5, r5, #8
 800432a:	d1f4      	bne.n	8004316 <_dtoa_r+0x2ae>
 800432c:	e9cd 0100 	strd	r0, r1, [sp]
 8004330:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004334:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004338:	f7fc fd28 	bl	8000d8c <__aeabi_ddiv>
 800433c:	e9cd 0100 	strd	r0, r1, [sp]
 8004340:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004342:	b143      	cbz	r3, 8004356 <_dtoa_r+0x2ee>
 8004344:	2200      	movs	r2, #0
 8004346:	4b85      	ldr	r3, [pc, #532]	; (800455c <_dtoa_r+0x4f4>)
 8004348:	e9dd 0100 	ldrd	r0, r1, [sp]
 800434c:	f7fc fe66 	bl	800101c <__aeabi_dcmplt>
 8004350:	2800      	cmp	r0, #0
 8004352:	f040 84ff 	bne.w	8004d54 <_dtoa_r+0xcec>
 8004356:	4630      	mov	r0, r6
 8004358:	f7fc fb84 	bl	8000a64 <__aeabi_i2d>
 800435c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004360:	f7fc fbea 	bl	8000b38 <__aeabi_dmul>
 8004364:	4b7e      	ldr	r3, [pc, #504]	; (8004560 <_dtoa_r+0x4f8>)
 8004366:	2200      	movs	r2, #0
 8004368:	f7fc fa30 	bl	80007cc <__adddf3>
 800436c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800436e:	4606      	mov	r6, r0
 8004370:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004374:	2b00      	cmp	r3, #0
 8004376:	f000 841c 	beq.w	8004bb2 <_dtoa_r+0xb4a>
 800437a:	9b06      	ldr	r3, [sp, #24]
 800437c:	9316      	str	r3, [sp, #88]	; 0x58
 800437e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004380:	9312      	str	r3, [sp, #72]	; 0x48
 8004382:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004386:	f7fc fe87 	bl	8001098 <__aeabi_d2iz>
 800438a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800438c:	4b71      	ldr	r3, [pc, #452]	; (8004554 <_dtoa_r+0x4ec>)
 800438e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004392:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004396:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800439a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800439e:	f7fc fb61 	bl	8000a64 <__aeabi_i2d>
 80043a2:	460b      	mov	r3, r1
 80043a4:	4602      	mov	r2, r0
 80043a6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043aa:	e9cd 6700 	strd	r6, r7, [sp]
 80043ae:	f7fc fa0b 	bl	80007c8 <__aeabi_dsub>
 80043b2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80043b4:	b2ed      	uxtb	r5, r5
 80043b6:	4606      	mov	r6, r0
 80043b8:	460f      	mov	r7, r1
 80043ba:	f10b 0401 	add.w	r4, fp, #1
 80043be:	2b00      	cmp	r3, #0
 80043c0:	f000 8458 	beq.w	8004c74 <_dtoa_r+0xc0c>
 80043c4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80043c8:	2000      	movs	r0, #0
 80043ca:	4966      	ldr	r1, [pc, #408]	; (8004564 <_dtoa_r+0x4fc>)
 80043cc:	f7fc fcde 	bl	8000d8c <__aeabi_ddiv>
 80043d0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80043d4:	f7fc f9f8 	bl	80007c8 <__aeabi_dsub>
 80043d8:	f88b 5000 	strb.w	r5, [fp]
 80043dc:	4632      	mov	r2, r6
 80043de:	463b      	mov	r3, r7
 80043e0:	e9cd 0100 	strd	r0, r1, [sp]
 80043e4:	f7fc fe38 	bl	8001058 <__aeabi_dcmpgt>
 80043e8:	2800      	cmp	r0, #0
 80043ea:	f040 8502 	bne.w	8004df2 <_dtoa_r+0xd8a>
 80043ee:	4632      	mov	r2, r6
 80043f0:	463b      	mov	r3, r7
 80043f2:	2000      	movs	r0, #0
 80043f4:	4959      	ldr	r1, [pc, #356]	; (800455c <_dtoa_r+0x4f4>)
 80043f6:	f7fc f9e7 	bl	80007c8 <__aeabi_dsub>
 80043fa:	4602      	mov	r2, r0
 80043fc:	460b      	mov	r3, r1
 80043fe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004402:	f7fc fe29 	bl	8001058 <__aeabi_dcmpgt>
 8004406:	2800      	cmp	r0, #0
 8004408:	f040 84fb 	bne.w	8004e02 <_dtoa_r+0xd9a>
 800440c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800440e:	2a01      	cmp	r2, #1
 8004410:	d050      	beq.n	80044b4 <_dtoa_r+0x44c>
 8004412:	445a      	add	r2, fp
 8004414:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004418:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800441c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004420:	4692      	mov	sl, r2
 8004422:	46cb      	mov	fp, r9
 8004424:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004428:	e00c      	b.n	8004444 <_dtoa_r+0x3dc>
 800442a:	2000      	movs	r0, #0
 800442c:	494b      	ldr	r1, [pc, #300]	; (800455c <_dtoa_r+0x4f4>)
 800442e:	f7fc f9cb 	bl	80007c8 <__aeabi_dsub>
 8004432:	4642      	mov	r2, r8
 8004434:	464b      	mov	r3, r9
 8004436:	f7fc fdf1 	bl	800101c <__aeabi_dcmplt>
 800443a:	2800      	cmp	r0, #0
 800443c:	f040 84dc 	bne.w	8004df8 <_dtoa_r+0xd90>
 8004440:	4554      	cmp	r4, sl
 8004442:	d030      	beq.n	80044a6 <_dtoa_r+0x43e>
 8004444:	4640      	mov	r0, r8
 8004446:	4649      	mov	r1, r9
 8004448:	2200      	movs	r2, #0
 800444a:	4b47      	ldr	r3, [pc, #284]	; (8004568 <_dtoa_r+0x500>)
 800444c:	f7fc fb74 	bl	8000b38 <__aeabi_dmul>
 8004450:	2200      	movs	r2, #0
 8004452:	4b45      	ldr	r3, [pc, #276]	; (8004568 <_dtoa_r+0x500>)
 8004454:	4680      	mov	r8, r0
 8004456:	4689      	mov	r9, r1
 8004458:	4630      	mov	r0, r6
 800445a:	4639      	mov	r1, r7
 800445c:	f7fc fb6c 	bl	8000b38 <__aeabi_dmul>
 8004460:	460f      	mov	r7, r1
 8004462:	4606      	mov	r6, r0
 8004464:	f7fc fe18 	bl	8001098 <__aeabi_d2iz>
 8004468:	4605      	mov	r5, r0
 800446a:	f7fc fafb 	bl	8000a64 <__aeabi_i2d>
 800446e:	4602      	mov	r2, r0
 8004470:	460b      	mov	r3, r1
 8004472:	4630      	mov	r0, r6
 8004474:	4639      	mov	r1, r7
 8004476:	f7fc f9a7 	bl	80007c8 <__aeabi_dsub>
 800447a:	3530      	adds	r5, #48	; 0x30
 800447c:	b2ed      	uxtb	r5, r5
 800447e:	4642      	mov	r2, r8
 8004480:	464b      	mov	r3, r9
 8004482:	f804 5b01 	strb.w	r5, [r4], #1
 8004486:	4606      	mov	r6, r0
 8004488:	460f      	mov	r7, r1
 800448a:	f7fc fdc7 	bl	800101c <__aeabi_dcmplt>
 800448e:	4632      	mov	r2, r6
 8004490:	463b      	mov	r3, r7
 8004492:	2800      	cmp	r0, #0
 8004494:	d0c9      	beq.n	800442a <_dtoa_r+0x3c2>
 8004496:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004498:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800449c:	9306      	str	r3, [sp, #24]
 800449e:	46d9      	mov	r9, fp
 80044a0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80044a4:	e236      	b.n	8004914 <_dtoa_r+0x8ac>
 80044a6:	46d9      	mov	r9, fp
 80044a8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80044ac:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80044b0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80044b4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80044b8:	e9cd 3400 	strd	r3, r4, [sp]
 80044bc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80044be:	2b00      	cmp	r3, #0
 80044c0:	f2c0 80ae 	blt.w	8004620 <_dtoa_r+0x5b8>
 80044c4:	9a06      	ldr	r2, [sp, #24]
 80044c6:	2a0e      	cmp	r2, #14
 80044c8:	f300 80aa 	bgt.w	8004620 <_dtoa_r+0x5b8>
 80044cc:	4b21      	ldr	r3, [pc, #132]	; (8004554 <_dtoa_r+0x4ec>)
 80044ce:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044d2:	ed93 7b00 	vldr	d7, [r3]
 80044d6:	9b07      	ldr	r3, [sp, #28]
 80044d8:	2b00      	cmp	r3, #0
 80044da:	ed8d 7b02 	vstr	d7, [sp, #8]
 80044de:	f2c0 82be 	blt.w	8004a5e <_dtoa_r+0x9f6>
 80044e2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80044e6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80044ea:	4630      	mov	r0, r6
 80044ec:	4639      	mov	r1, r7
 80044ee:	f7fc fc4d 	bl	8000d8c <__aeabi_ddiv>
 80044f2:	f7fc fdd1 	bl	8001098 <__aeabi_d2iz>
 80044f6:	4605      	mov	r5, r0
 80044f8:	f7fc fab4 	bl	8000a64 <__aeabi_i2d>
 80044fc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004500:	f7fc fb1a 	bl	8000b38 <__aeabi_dmul>
 8004504:	460b      	mov	r3, r1
 8004506:	4602      	mov	r2, r0
 8004508:	4639      	mov	r1, r7
 800450a:	4630      	mov	r0, r6
 800450c:	f7fc f95c 	bl	80007c8 <__aeabi_dsub>
 8004510:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004514:	f88b 3000 	strb.w	r3, [fp]
 8004518:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800451a:	2b01      	cmp	r3, #1
 800451c:	4606      	mov	r6, r0
 800451e:	460f      	mov	r7, r1
 8004520:	f10b 0401 	add.w	r4, fp, #1
 8004524:	d053      	beq.n	80045ce <_dtoa_r+0x566>
 8004526:	2200      	movs	r2, #0
 8004528:	4b0f      	ldr	r3, [pc, #60]	; (8004568 <_dtoa_r+0x500>)
 800452a:	f7fc fb05 	bl	8000b38 <__aeabi_dmul>
 800452e:	2200      	movs	r2, #0
 8004530:	2300      	movs	r3, #0
 8004532:	4606      	mov	r6, r0
 8004534:	460f      	mov	r7, r1
 8004536:	f7fc fd67 	bl	8001008 <__aeabi_dcmpeq>
 800453a:	2800      	cmp	r0, #0
 800453c:	f040 81ea 	bne.w	8004914 <_dtoa_r+0x8ac>
 8004540:	f8cd a000 	str.w	sl, [sp]
 8004544:	f8cd 901c 	str.w	r9, [sp, #28]
 8004548:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800454c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004550:	e017      	b.n	8004582 <_dtoa_r+0x51a>
 8004552:	bf00      	nop
 8004554:	080070f0 	.word	0x080070f0
 8004558:	080070c8 	.word	0x080070c8
 800455c:	3ff00000 	.word	0x3ff00000
 8004560:	401c0000 	.word	0x401c0000
 8004564:	3fe00000 	.word	0x3fe00000
 8004568:	40240000 	.word	0x40240000
 800456c:	f7fc fae4 	bl	8000b38 <__aeabi_dmul>
 8004570:	2200      	movs	r2, #0
 8004572:	2300      	movs	r3, #0
 8004574:	4606      	mov	r6, r0
 8004576:	460f      	mov	r7, r1
 8004578:	f7fc fd46 	bl	8001008 <__aeabi_dcmpeq>
 800457c:	2800      	cmp	r0, #0
 800457e:	f040 833d 	bne.w	8004bfc <_dtoa_r+0xb94>
 8004582:	464a      	mov	r2, r9
 8004584:	4653      	mov	r3, sl
 8004586:	4630      	mov	r0, r6
 8004588:	4639      	mov	r1, r7
 800458a:	f7fc fbff 	bl	8000d8c <__aeabi_ddiv>
 800458e:	f7fc fd83 	bl	8001098 <__aeabi_d2iz>
 8004592:	4605      	mov	r5, r0
 8004594:	f7fc fa66 	bl	8000a64 <__aeabi_i2d>
 8004598:	464a      	mov	r2, r9
 800459a:	4653      	mov	r3, sl
 800459c:	f7fc facc 	bl	8000b38 <__aeabi_dmul>
 80045a0:	4602      	mov	r2, r0
 80045a2:	460b      	mov	r3, r1
 80045a4:	4630      	mov	r0, r6
 80045a6:	4639      	mov	r1, r7
 80045a8:	f7fc f90e 	bl	80007c8 <__aeabi_dsub>
 80045ac:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80045b0:	f804 cb01 	strb.w	ip, [r4], #1
 80045b4:	eba4 0c0b 	sub.w	ip, r4, fp
 80045b8:	45e0      	cmp	r8, ip
 80045ba:	4606      	mov	r6, r0
 80045bc:	460f      	mov	r7, r1
 80045be:	f04f 0200 	mov.w	r2, #0
 80045c2:	4bc1      	ldr	r3, [pc, #772]	; (80048c8 <_dtoa_r+0x860>)
 80045c4:	d1d2      	bne.n	800456c <_dtoa_r+0x504>
 80045c6:	f8dd a000 	ldr.w	sl, [sp]
 80045ca:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80045ce:	4632      	mov	r2, r6
 80045d0:	463b      	mov	r3, r7
 80045d2:	4630      	mov	r0, r6
 80045d4:	4639      	mov	r1, r7
 80045d6:	f7fc f8f9 	bl	80007cc <__adddf3>
 80045da:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045de:	4606      	mov	r6, r0
 80045e0:	460f      	mov	r7, r1
 80045e2:	f7fc fd39 	bl	8001058 <__aeabi_dcmpgt>
 80045e6:	b958      	cbnz	r0, 8004600 <_dtoa_r+0x598>
 80045e8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045ec:	4630      	mov	r0, r6
 80045ee:	4639      	mov	r1, r7
 80045f0:	f7fc fd0a 	bl	8001008 <__aeabi_dcmpeq>
 80045f4:	2800      	cmp	r0, #0
 80045f6:	f000 818d 	beq.w	8004914 <_dtoa_r+0x8ac>
 80045fa:	07e9      	lsls	r1, r5, #31
 80045fc:	f140 818a 	bpl.w	8004914 <_dtoa_r+0x8ac>
 8004600:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004604:	e005      	b.n	8004612 <_dtoa_r+0x5aa>
 8004606:	459b      	cmp	fp, r3
 8004608:	f000 8373 	beq.w	8004cf2 <_dtoa_r+0xc8a>
 800460c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004610:	461c      	mov	r4, r3
 8004612:	2d39      	cmp	r5, #57	; 0x39
 8004614:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004618:	d0f5      	beq.n	8004606 <_dtoa_r+0x59e>
 800461a:	3501      	adds	r5, #1
 800461c:	701d      	strb	r5, [r3, #0]
 800461e:	e179      	b.n	8004914 <_dtoa_r+0x8ac>
 8004620:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004622:	2a00      	cmp	r2, #0
 8004624:	d03b      	beq.n	800469e <_dtoa_r+0x636>
 8004626:	9a02      	ldr	r2, [sp, #8]
 8004628:	2a01      	cmp	r2, #1
 800462a:	f340 820b 	ble.w	8004a44 <_dtoa_r+0x9dc>
 800462e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004630:	1e5f      	subs	r7, r3, #1
 8004632:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004634:	42bb      	cmp	r3, r7
 8004636:	f2c0 82e6 	blt.w	8004c06 <_dtoa_r+0xb9e>
 800463a:	1bdf      	subs	r7, r3, r7
 800463c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800463e:	2b00      	cmp	r3, #0
 8004640:	f2c0 830b 	blt.w	8004c5a <_dtoa_r+0xbf2>
 8004644:	9a08      	ldr	r2, [sp, #32]
 8004646:	4614      	mov	r4, r2
 8004648:	441a      	add	r2, r3
 800464a:	4498      	add	r8, r3
 800464c:	9208      	str	r2, [sp, #32]
 800464e:	2101      	movs	r1, #1
 8004650:	4648      	mov	r0, r9
 8004652:	f001 fcbf 	bl	8005fd4 <__i2b>
 8004656:	4605      	mov	r5, r0
 8004658:	e024      	b.n	80046a4 <_dtoa_r+0x63c>
 800465a:	2301      	movs	r3, #1
 800465c:	930d      	str	r3, [sp, #52]	; 0x34
 800465e:	e5af      	b.n	80041c0 <_dtoa_r+0x158>
 8004660:	9a08      	ldr	r2, [sp, #32]
 8004662:	9b06      	ldr	r3, [sp, #24]
 8004664:	1ad2      	subs	r2, r2, r3
 8004666:	425b      	negs	r3, r3
 8004668:	930b      	str	r3, [sp, #44]	; 0x2c
 800466a:	2300      	movs	r3, #0
 800466c:	9208      	str	r2, [sp, #32]
 800466e:	930c      	str	r3, [sp, #48]	; 0x30
 8004670:	e5b5      	b.n	80041de <_dtoa_r+0x176>
 8004672:	f1c4 0301 	rsb	r3, r4, #1
 8004676:	9308      	str	r3, [sp, #32]
 8004678:	f04f 0800 	mov.w	r8, #0
 800467c:	e5a7      	b.n	80041ce <_dtoa_r+0x166>
 800467e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004682:	4640      	mov	r0, r8
 8004684:	f7fc f9ee 	bl	8000a64 <__aeabi_i2d>
 8004688:	4632      	mov	r2, r6
 800468a:	463b      	mov	r3, r7
 800468c:	f7fc fcbc 	bl	8001008 <__aeabi_dcmpeq>
 8004690:	2800      	cmp	r0, #0
 8004692:	f47f ad81 	bne.w	8004198 <_dtoa_r+0x130>
 8004696:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800469a:	9306      	str	r3, [sp, #24]
 800469c:	e57c      	b.n	8004198 <_dtoa_r+0x130>
 800469e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80046a0:	9c08      	ldr	r4, [sp, #32]
 80046a2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80046a4:	2c00      	cmp	r4, #0
 80046a6:	dd0c      	ble.n	80046c2 <_dtoa_r+0x65a>
 80046a8:	f1b8 0f00 	cmp.w	r8, #0
 80046ac:	dd09      	ble.n	80046c2 <_dtoa_r+0x65a>
 80046ae:	4544      	cmp	r4, r8
 80046b0:	9a08      	ldr	r2, [sp, #32]
 80046b2:	4623      	mov	r3, r4
 80046b4:	bfa8      	it	ge
 80046b6:	4643      	movge	r3, r8
 80046b8:	1ad2      	subs	r2, r2, r3
 80046ba:	9208      	str	r2, [sp, #32]
 80046bc:	1ae4      	subs	r4, r4, r3
 80046be:	eba8 0803 	sub.w	r8, r8, r3
 80046c2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80046c4:	b16b      	cbz	r3, 80046e2 <_dtoa_r+0x67a>
 80046c6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80046c8:	2a00      	cmp	r2, #0
 80046ca:	f000 8290 	beq.w	8004bee <_dtoa_r+0xb86>
 80046ce:	1bde      	subs	r6, r3, r7
 80046d0:	2f00      	cmp	r7, #0
 80046d2:	f040 819b 	bne.w	8004a0c <_dtoa_r+0x9a4>
 80046d6:	4651      	mov	r1, sl
 80046d8:	4632      	mov	r2, r6
 80046da:	4648      	mov	r0, r9
 80046dc:	f001 fd2a 	bl	8006134 <__pow5mult>
 80046e0:	4682      	mov	sl, r0
 80046e2:	2101      	movs	r1, #1
 80046e4:	4648      	mov	r0, r9
 80046e6:	f001 fc75 	bl	8005fd4 <__i2b>
 80046ea:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80046ec:	4606      	mov	r6, r0
 80046ee:	2a00      	cmp	r2, #0
 80046f0:	f040 8125 	bne.w	800493e <_dtoa_r+0x8d6>
 80046f4:	9b02      	ldr	r3, [sp, #8]
 80046f6:	2b01      	cmp	r3, #1
 80046f8:	f340 816c 	ble.w	80049d4 <_dtoa_r+0x96c>
 80046fc:	2001      	movs	r0, #1
 80046fe:	4440      	add	r0, r8
 8004700:	f010 001f 	ands.w	r0, r0, #31
 8004704:	f000 8119 	beq.w	800493a <_dtoa_r+0x8d2>
 8004708:	f1c0 0320 	rsb	r3, r0, #32
 800470c:	2b04      	cmp	r3, #4
 800470e:	f340 83ac 	ble.w	8004e6a <_dtoa_r+0xe02>
 8004712:	f1c0 001c 	rsb	r0, r0, #28
 8004716:	9b08      	ldr	r3, [sp, #32]
 8004718:	4403      	add	r3, r0
 800471a:	9308      	str	r3, [sp, #32]
 800471c:	4404      	add	r4, r0
 800471e:	4480      	add	r8, r0
 8004720:	9b08      	ldr	r3, [sp, #32]
 8004722:	2b00      	cmp	r3, #0
 8004724:	dd05      	ble.n	8004732 <_dtoa_r+0x6ca>
 8004726:	4651      	mov	r1, sl
 8004728:	461a      	mov	r2, r3
 800472a:	4648      	mov	r0, r9
 800472c:	f001 fd52 	bl	80061d4 <__lshift>
 8004730:	4682      	mov	sl, r0
 8004732:	f1b8 0f00 	cmp.w	r8, #0
 8004736:	dd05      	ble.n	8004744 <_dtoa_r+0x6dc>
 8004738:	4631      	mov	r1, r6
 800473a:	4642      	mov	r2, r8
 800473c:	4648      	mov	r0, r9
 800473e:	f001 fd49 	bl	80061d4 <__lshift>
 8004742:	4606      	mov	r6, r0
 8004744:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004746:	2b00      	cmp	r3, #0
 8004748:	d177      	bne.n	800483a <_dtoa_r+0x7d2>
 800474a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800474c:	2b00      	cmp	r3, #0
 800474e:	f340 8209 	ble.w	8004b64 <_dtoa_r+0xafc>
 8004752:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004754:	2b00      	cmp	r3, #0
 8004756:	f000 8089 	beq.w	800486c <_dtoa_r+0x804>
 800475a:	2c00      	cmp	r4, #0
 800475c:	f300 816b 	bgt.w	8004a36 <_dtoa_r+0x9ce>
 8004760:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004762:	2b00      	cmp	r3, #0
 8004764:	f040 81cd 	bne.w	8004b02 <_dtoa_r+0xa9a>
 8004768:	46a8      	mov	r8, r5
 800476a:	9a00      	ldr	r2, [sp, #0]
 800476c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004770:	f002 0201 	and.w	r2, r2, #1
 8004774:	920a      	str	r2, [sp, #40]	; 0x28
 8004776:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004778:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800477c:	441a      	add	r2, r3
 800477e:	465f      	mov	r7, fp
 8004780:	9209      	str	r2, [sp, #36]	; 0x24
 8004782:	46b3      	mov	fp, r6
 8004784:	4659      	mov	r1, fp
 8004786:	4650      	mov	r0, sl
 8004788:	f7ff fbdc 	bl	8003f44 <quorem>
 800478c:	4629      	mov	r1, r5
 800478e:	4604      	mov	r4, r0
 8004790:	4650      	mov	r0, sl
 8004792:	f001 fd75 	bl	8006280 <__mcmp>
 8004796:	4659      	mov	r1, fp
 8004798:	4606      	mov	r6, r0
 800479a:	4642      	mov	r2, r8
 800479c:	4648      	mov	r0, r9
 800479e:	f001 fd8b 	bl	80062b8 <__mdiff>
 80047a2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80047a6:	9300      	str	r3, [sp, #0]
 80047a8:	68c3      	ldr	r3, [r0, #12]
 80047aa:	4601      	mov	r1, r0
 80047ac:	2b00      	cmp	r3, #0
 80047ae:	f040 81d4 	bne.w	8004b5a <_dtoa_r+0xaf2>
 80047b2:	9008      	str	r0, [sp, #32]
 80047b4:	4650      	mov	r0, sl
 80047b6:	f001 fd63 	bl	8006280 <__mcmp>
 80047ba:	9a08      	ldr	r2, [sp, #32]
 80047bc:	9007      	str	r0, [sp, #28]
 80047be:	4611      	mov	r1, r2
 80047c0:	4648      	mov	r0, r9
 80047c2:	f001 fb6d 	bl	8005ea0 <_Bfree>
 80047c6:	9b07      	ldr	r3, [sp, #28]
 80047c8:	b933      	cbnz	r3, 80047d8 <_dtoa_r+0x770>
 80047ca:	9a02      	ldr	r2, [sp, #8]
 80047cc:	b922      	cbnz	r2, 80047d8 <_dtoa_r+0x770>
 80047ce:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047d0:	2b00      	cmp	r3, #0
 80047d2:	f000 8319 	beq.w	8004e08 <_dtoa_r+0xda0>
 80047d6:	9b02      	ldr	r3, [sp, #8]
 80047d8:	2e00      	cmp	r6, #0
 80047da:	f2c0 821c 	blt.w	8004c16 <_dtoa_r+0xbae>
 80047de:	d105      	bne.n	80047ec <_dtoa_r+0x784>
 80047e0:	9a02      	ldr	r2, [sp, #8]
 80047e2:	b91a      	cbnz	r2, 80047ec <_dtoa_r+0x784>
 80047e4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047e6:	2a00      	cmp	r2, #0
 80047e8:	f000 8215 	beq.w	8004c16 <_dtoa_r+0xbae>
 80047ec:	2b00      	cmp	r3, #0
 80047ee:	f107 0401 	add.w	r4, r7, #1
 80047f2:	f300 8225 	bgt.w	8004c40 <_dtoa_r+0xbd8>
 80047f6:	9b00      	ldr	r3, [sp, #0]
 80047f8:	703b      	strb	r3, [r7, #0]
 80047fa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047fc:	42bb      	cmp	r3, r7
 80047fe:	f000 8230 	beq.w	8004c62 <_dtoa_r+0xbfa>
 8004802:	4651      	mov	r1, sl
 8004804:	2300      	movs	r3, #0
 8004806:	220a      	movs	r2, #10
 8004808:	4648      	mov	r0, r9
 800480a:	f001 fb53 	bl	8005eb4 <__multadd>
 800480e:	4545      	cmp	r5, r8
 8004810:	4682      	mov	sl, r0
 8004812:	4629      	mov	r1, r5
 8004814:	f04f 0300 	mov.w	r3, #0
 8004818:	f04f 020a 	mov.w	r2, #10
 800481c:	4648      	mov	r0, r9
 800481e:	f000 8196 	beq.w	8004b4e <_dtoa_r+0xae6>
 8004822:	f001 fb47 	bl	8005eb4 <__multadd>
 8004826:	4641      	mov	r1, r8
 8004828:	4605      	mov	r5, r0
 800482a:	2300      	movs	r3, #0
 800482c:	220a      	movs	r2, #10
 800482e:	4648      	mov	r0, r9
 8004830:	f001 fb40 	bl	8005eb4 <__multadd>
 8004834:	4627      	mov	r7, r4
 8004836:	4680      	mov	r8, r0
 8004838:	e7a4      	b.n	8004784 <_dtoa_r+0x71c>
 800483a:	4631      	mov	r1, r6
 800483c:	4650      	mov	r0, sl
 800483e:	f001 fd1f 	bl	8006280 <__mcmp>
 8004842:	2800      	cmp	r0, #0
 8004844:	da81      	bge.n	800474a <_dtoa_r+0x6e2>
 8004846:	9f06      	ldr	r7, [sp, #24]
 8004848:	4651      	mov	r1, sl
 800484a:	2300      	movs	r3, #0
 800484c:	220a      	movs	r2, #10
 800484e:	4648      	mov	r0, r9
 8004850:	3f01      	subs	r7, #1
 8004852:	9706      	str	r7, [sp, #24]
 8004854:	f001 fb2e 	bl	8005eb4 <__multadd>
 8004858:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800485a:	4682      	mov	sl, r0
 800485c:	2b00      	cmp	r3, #0
 800485e:	f040 82eb 	bne.w	8004e38 <_dtoa_r+0xdd0>
 8004862:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004864:	2b00      	cmp	r3, #0
 8004866:	f340 82f3 	ble.w	8004e50 <_dtoa_r+0xde8>
 800486a:	9309      	str	r3, [sp, #36]	; 0x24
 800486c:	465c      	mov	r4, fp
 800486e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004872:	e002      	b.n	800487a <_dtoa_r+0x812>
 8004874:	f001 fb1e 	bl	8005eb4 <__multadd>
 8004878:	4682      	mov	sl, r0
 800487a:	4631      	mov	r1, r6
 800487c:	4650      	mov	r0, sl
 800487e:	f7ff fb61 	bl	8003f44 <quorem>
 8004882:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004886:	f804 7b01 	strb.w	r7, [r4], #1
 800488a:	eba4 030b 	sub.w	r3, r4, fp
 800488e:	4598      	cmp	r8, r3
 8004890:	f04f 020a 	mov.w	r2, #10
 8004894:	f04f 0300 	mov.w	r3, #0
 8004898:	4651      	mov	r1, sl
 800489a:	4648      	mov	r0, r9
 800489c:	dcea      	bgt.n	8004874 <_dtoa_r+0x80c>
 800489e:	2300      	movs	r3, #0
 80048a0:	9700      	str	r7, [sp, #0]
 80048a2:	9302      	str	r3, [sp, #8]
 80048a4:	4651      	mov	r1, sl
 80048a6:	2201      	movs	r2, #1
 80048a8:	4648      	mov	r0, r9
 80048aa:	f001 fc93 	bl	80061d4 <__lshift>
 80048ae:	4631      	mov	r1, r6
 80048b0:	4682      	mov	sl, r0
 80048b2:	f001 fce5 	bl	8006280 <__mcmp>
 80048b6:	2800      	cmp	r0, #0
 80048b8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80048bc:	dc14      	bgt.n	80048e8 <_dtoa_r+0x880>
 80048be:	d108      	bne.n	80048d2 <_dtoa_r+0x86a>
 80048c0:	9b00      	ldr	r3, [sp, #0]
 80048c2:	07db      	lsls	r3, r3, #31
 80048c4:	d410      	bmi.n	80048e8 <_dtoa_r+0x880>
 80048c6:	e004      	b.n	80048d2 <_dtoa_r+0x86a>
 80048c8:	40240000 	.word	0x40240000
 80048cc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80048d0:	461c      	mov	r4, r3
 80048d2:	2a30      	cmp	r2, #48	; 0x30
 80048d4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80048d8:	d0f8      	beq.n	80048cc <_dtoa_r+0x864>
 80048da:	e00b      	b.n	80048f4 <_dtoa_r+0x88c>
 80048dc:	459b      	cmp	fp, r3
 80048de:	f000 814e 	beq.w	8004b7e <_dtoa_r+0xb16>
 80048e2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80048e6:	461c      	mov	r4, r3
 80048e8:	2a39      	cmp	r2, #57	; 0x39
 80048ea:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80048ee:	d0f5      	beq.n	80048dc <_dtoa_r+0x874>
 80048f0:	3201      	adds	r2, #1
 80048f2:	701a      	strb	r2, [r3, #0]
 80048f4:	4631      	mov	r1, r6
 80048f6:	4648      	mov	r0, r9
 80048f8:	f001 fad2 	bl	8005ea0 <_Bfree>
 80048fc:	b155      	cbz	r5, 8004914 <_dtoa_r+0x8ac>
 80048fe:	9902      	ldr	r1, [sp, #8]
 8004900:	b121      	cbz	r1, 800490c <_dtoa_r+0x8a4>
 8004902:	42a9      	cmp	r1, r5
 8004904:	d002      	beq.n	800490c <_dtoa_r+0x8a4>
 8004906:	4648      	mov	r0, r9
 8004908:	f001 faca 	bl	8005ea0 <_Bfree>
 800490c:	4629      	mov	r1, r5
 800490e:	4648      	mov	r0, r9
 8004910:	f001 fac6 	bl	8005ea0 <_Bfree>
 8004914:	4651      	mov	r1, sl
 8004916:	4648      	mov	r0, r9
 8004918:	f001 fac2 	bl	8005ea0 <_Bfree>
 800491c:	2200      	movs	r2, #0
 800491e:	9b06      	ldr	r3, [sp, #24]
 8004920:	7022      	strb	r2, [r4, #0]
 8004922:	9a05      	ldr	r2, [sp, #20]
 8004924:	3301      	adds	r3, #1
 8004926:	6013      	str	r3, [r2, #0]
 8004928:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800492a:	2b00      	cmp	r3, #0
 800492c:	f43f abdb 	beq.w	80040e6 <_dtoa_r+0x7e>
 8004930:	4658      	mov	r0, fp
 8004932:	601c      	str	r4, [r3, #0]
 8004934:	b01b      	add	sp, #108	; 0x6c
 8004936:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800493a:	201c      	movs	r0, #28
 800493c:	e6eb      	b.n	8004716 <_dtoa_r+0x6ae>
 800493e:	4601      	mov	r1, r0
 8004940:	4648      	mov	r0, r9
 8004942:	f001 fbf7 	bl	8006134 <__pow5mult>
 8004946:	9b02      	ldr	r3, [sp, #8]
 8004948:	2b01      	cmp	r3, #1
 800494a:	4606      	mov	r6, r0
 800494c:	f340 80d4 	ble.w	8004af8 <_dtoa_r+0xa90>
 8004950:	2300      	movs	r3, #0
 8004952:	930c      	str	r3, [sp, #48]	; 0x30
 8004954:	6933      	ldr	r3, [r6, #16]
 8004956:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800495a:	6918      	ldr	r0, [r3, #16]
 800495c:	f001 faea 	bl	8005f34 <__hi0bits>
 8004960:	f1c0 0020 	rsb	r0, r0, #32
 8004964:	e6cb      	b.n	80046fe <_dtoa_r+0x696>
 8004966:	900d      	str	r0, [sp, #52]	; 0x34
 8004968:	e42a      	b.n	80041c0 <_dtoa_r+0x158>
 800496a:	2501      	movs	r5, #1
 800496c:	e440      	b.n	80041f0 <_dtoa_r+0x188>
 800496e:	f1c3 0820 	rsb	r8, r3, #32
 8004972:	9b00      	ldr	r3, [sp, #0]
 8004974:	fa03 f008 	lsl.w	r0, r3, r8
 8004978:	f7ff bbd8 	b.w	800412c <_dtoa_r+0xc4>
 800497c:	2300      	movs	r3, #0
 800497e:	930a      	str	r3, [sp, #40]	; 0x28
 8004980:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004984:	4413      	add	r3, r2
 8004986:	930e      	str	r3, [sp, #56]	; 0x38
 8004988:	3301      	adds	r3, #1
 800498a:	2b01      	cmp	r3, #1
 800498c:	461e      	mov	r6, r3
 800498e:	9309      	str	r3, [sp, #36]	; 0x24
 8004990:	bfb8      	it	lt
 8004992:	2601      	movlt	r6, #1
 8004994:	2100      	movs	r1, #0
 8004996:	2e17      	cmp	r6, #23
 8004998:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800499c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800499e:	f77f ac89 	ble.w	80042b4 <_dtoa_r+0x24c>
 80049a2:	2201      	movs	r2, #1
 80049a4:	2304      	movs	r3, #4
 80049a6:	005b      	lsls	r3, r3, #1
 80049a8:	f103 0014 	add.w	r0, r3, #20
 80049ac:	42b0      	cmp	r0, r6
 80049ae:	4611      	mov	r1, r2
 80049b0:	f102 0201 	add.w	r2, r2, #1
 80049b4:	d9f7      	bls.n	80049a6 <_dtoa_r+0x93e>
 80049b6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80049ba:	e47b      	b.n	80042b4 <_dtoa_r+0x24c>
 80049bc:	2300      	movs	r3, #0
 80049be:	930a      	str	r3, [sp, #40]	; 0x28
 80049c0:	9e07      	ldr	r6, [sp, #28]
 80049c2:	2e00      	cmp	r6, #0
 80049c4:	f340 80e2 	ble.w	8004b8c <_dtoa_r+0xb24>
 80049c8:	960e      	str	r6, [sp, #56]	; 0x38
 80049ca:	9609      	str	r6, [sp, #36]	; 0x24
 80049cc:	e7e2      	b.n	8004994 <_dtoa_r+0x92c>
 80049ce:	2301      	movs	r3, #1
 80049d0:	930a      	str	r3, [sp, #40]	; 0x28
 80049d2:	e7f5      	b.n	80049c0 <_dtoa_r+0x958>
 80049d4:	9b00      	ldr	r3, [sp, #0]
 80049d6:	2b00      	cmp	r3, #0
 80049d8:	f47f ae90 	bne.w	80046fc <_dtoa_r+0x694>
 80049dc:	e9dd 1200 	ldrd	r1, r2, [sp]
 80049e0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80049e4:	2b00      	cmp	r3, #0
 80049e6:	f040 8192 	bne.w	8004d0e <_dtoa_r+0xca6>
 80049ea:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80049ee:	0d1b      	lsrs	r3, r3, #20
 80049f0:	051b      	lsls	r3, r3, #20
 80049f2:	b12b      	cbz	r3, 8004a00 <_dtoa_r+0x998>
 80049f4:	9b08      	ldr	r3, [sp, #32]
 80049f6:	3301      	adds	r3, #1
 80049f8:	9308      	str	r3, [sp, #32]
 80049fa:	f108 0801 	add.w	r8, r8, #1
 80049fe:	2301      	movs	r3, #1
 8004a00:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004a02:	930c      	str	r3, [sp, #48]	; 0x30
 8004a04:	2a00      	cmp	r2, #0
 8004a06:	f43f ae79 	beq.w	80046fc <_dtoa_r+0x694>
 8004a0a:	e7a3      	b.n	8004954 <_dtoa_r+0x8ec>
 8004a0c:	463a      	mov	r2, r7
 8004a0e:	4629      	mov	r1, r5
 8004a10:	4648      	mov	r0, r9
 8004a12:	f001 fb8f 	bl	8006134 <__pow5mult>
 8004a16:	4652      	mov	r2, sl
 8004a18:	4601      	mov	r1, r0
 8004a1a:	4605      	mov	r5, r0
 8004a1c:	4648      	mov	r0, r9
 8004a1e:	f001 fae3 	bl	8005fe8 <__multiply>
 8004a22:	4651      	mov	r1, sl
 8004a24:	4607      	mov	r7, r0
 8004a26:	4648      	mov	r0, r9
 8004a28:	f001 fa3a 	bl	8005ea0 <_Bfree>
 8004a2c:	46ba      	mov	sl, r7
 8004a2e:	2e00      	cmp	r6, #0
 8004a30:	f43f ae57 	beq.w	80046e2 <_dtoa_r+0x67a>
 8004a34:	e64f      	b.n	80046d6 <_dtoa_r+0x66e>
 8004a36:	4629      	mov	r1, r5
 8004a38:	4622      	mov	r2, r4
 8004a3a:	4648      	mov	r0, r9
 8004a3c:	f001 fbca 	bl	80061d4 <__lshift>
 8004a40:	4605      	mov	r5, r0
 8004a42:	e68d      	b.n	8004760 <_dtoa_r+0x6f8>
 8004a44:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004a46:	2a00      	cmp	r2, #0
 8004a48:	f000 815d 	beq.w	8004d06 <_dtoa_r+0xc9e>
 8004a4c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004a50:	9a08      	ldr	r2, [sp, #32]
 8004a52:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004a54:	4614      	mov	r4, r2
 8004a56:	441a      	add	r2, r3
 8004a58:	4498      	add	r8, r3
 8004a5a:	9208      	str	r2, [sp, #32]
 8004a5c:	e5f7      	b.n	800464e <_dtoa_r+0x5e6>
 8004a5e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a60:	2b00      	cmp	r3, #0
 8004a62:	f73f ad3e 	bgt.w	80044e2 <_dtoa_r+0x47a>
 8004a66:	f040 80bc 	bne.w	8004be2 <_dtoa_r+0xb7a>
 8004a6a:	ec51 0b17 	vmov	r0, r1, d7
 8004a6e:	2200      	movs	r2, #0
 8004a70:	4bb2      	ldr	r3, [pc, #712]	; (8004d3c <_dtoa_r+0xcd4>)
 8004a72:	f7fc f861 	bl	8000b38 <__aeabi_dmul>
 8004a76:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a7a:	f7fc fae3 	bl	8001044 <__aeabi_dcmpge>
 8004a7e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004a80:	4635      	mov	r5, r6
 8004a82:	2800      	cmp	r0, #0
 8004a84:	d176      	bne.n	8004b74 <_dtoa_r+0xb0c>
 8004a86:	9a06      	ldr	r2, [sp, #24]
 8004a88:	2331      	movs	r3, #49	; 0x31
 8004a8a:	3201      	adds	r2, #1
 8004a8c:	9206      	str	r2, [sp, #24]
 8004a8e:	f88b 3000 	strb.w	r3, [fp]
 8004a92:	f10b 0401 	add.w	r4, fp, #1
 8004a96:	4631      	mov	r1, r6
 8004a98:	4648      	mov	r0, r9
 8004a9a:	f001 fa01 	bl	8005ea0 <_Bfree>
 8004a9e:	2d00      	cmp	r5, #0
 8004aa0:	f47f af34 	bne.w	800490c <_dtoa_r+0x8a4>
 8004aa4:	e736      	b.n	8004914 <_dtoa_r+0x8ac>
 8004aa6:	f000 8142 	beq.w	8004d2e <_dtoa_r+0xcc6>
 8004aaa:	9b06      	ldr	r3, [sp, #24]
 8004aac:	425c      	negs	r4, r3
 8004aae:	4ba4      	ldr	r3, [pc, #656]	; (8004d40 <_dtoa_r+0xcd8>)
 8004ab0:	f004 020f 	and.w	r2, r4, #15
 8004ab4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ab8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004abc:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004ac0:	f7fc f83a 	bl	8000b38 <__aeabi_dmul>
 8004ac4:	1124      	asrs	r4, r4, #4
 8004ac6:	e9cd 0100 	strd	r0, r1, [sp]
 8004aca:	f000 81c6 	beq.w	8004e5a <_dtoa_r+0xdf2>
 8004ace:	4d9d      	ldr	r5, [pc, #628]	; (8004d44 <_dtoa_r+0xcdc>)
 8004ad0:	2300      	movs	r3, #0
 8004ad2:	2602      	movs	r6, #2
 8004ad4:	07e7      	lsls	r7, r4, #31
 8004ad6:	d505      	bpl.n	8004ae4 <_dtoa_r+0xa7c>
 8004ad8:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004adc:	f7fc f82c 	bl	8000b38 <__aeabi_dmul>
 8004ae0:	3601      	adds	r6, #1
 8004ae2:	2301      	movs	r3, #1
 8004ae4:	1064      	asrs	r4, r4, #1
 8004ae6:	f105 0508 	add.w	r5, r5, #8
 8004aea:	d1f3      	bne.n	8004ad4 <_dtoa_r+0xa6c>
 8004aec:	2b00      	cmp	r3, #0
 8004aee:	f43f ac27 	beq.w	8004340 <_dtoa_r+0x2d8>
 8004af2:	e9cd 0100 	strd	r0, r1, [sp]
 8004af6:	e423      	b.n	8004340 <_dtoa_r+0x2d8>
 8004af8:	9b00      	ldr	r3, [sp, #0]
 8004afa:	2b00      	cmp	r3, #0
 8004afc:	f43f af6e 	beq.w	80049dc <_dtoa_r+0x974>
 8004b00:	e726      	b.n	8004950 <_dtoa_r+0x8e8>
 8004b02:	6869      	ldr	r1, [r5, #4]
 8004b04:	4648      	mov	r0, r9
 8004b06:	f001 f9a5 	bl	8005e54 <_Balloc>
 8004b0a:	692b      	ldr	r3, [r5, #16]
 8004b0c:	3302      	adds	r3, #2
 8004b0e:	009a      	lsls	r2, r3, #2
 8004b10:	4604      	mov	r4, r0
 8004b12:	f105 010c 	add.w	r1, r5, #12
 8004b16:	300c      	adds	r0, #12
 8004b18:	f7fb fcf2 	bl	8000500 <memcpy>
 8004b1c:	4621      	mov	r1, r4
 8004b1e:	2201      	movs	r2, #1
 8004b20:	4648      	mov	r0, r9
 8004b22:	f001 fb57 	bl	80061d4 <__lshift>
 8004b26:	4680      	mov	r8, r0
 8004b28:	e61f      	b.n	800476a <_dtoa_r+0x702>
 8004b2a:	2400      	movs	r4, #0
 8004b2c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004b30:	4621      	mov	r1, r4
 8004b32:	4648      	mov	r0, r9
 8004b34:	f001 f98e 	bl	8005e54 <_Balloc>
 8004b38:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004b3c:	930e      	str	r3, [sp, #56]	; 0x38
 8004b3e:	9309      	str	r3, [sp, #36]	; 0x24
 8004b40:	2301      	movs	r3, #1
 8004b42:	4683      	mov	fp, r0
 8004b44:	9407      	str	r4, [sp, #28]
 8004b46:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004b4a:	930a      	str	r3, [sp, #40]	; 0x28
 8004b4c:	e4b6      	b.n	80044bc <_dtoa_r+0x454>
 8004b4e:	f001 f9b1 	bl	8005eb4 <__multadd>
 8004b52:	4627      	mov	r7, r4
 8004b54:	4605      	mov	r5, r0
 8004b56:	4680      	mov	r8, r0
 8004b58:	e614      	b.n	8004784 <_dtoa_r+0x71c>
 8004b5a:	4648      	mov	r0, r9
 8004b5c:	f001 f9a0 	bl	8005ea0 <_Bfree>
 8004b60:	2301      	movs	r3, #1
 8004b62:	e639      	b.n	80047d8 <_dtoa_r+0x770>
 8004b64:	9b02      	ldr	r3, [sp, #8]
 8004b66:	2b02      	cmp	r3, #2
 8004b68:	f77f adf3 	ble.w	8004752 <_dtoa_r+0x6ea>
 8004b6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b6e:	2b00      	cmp	r3, #0
 8004b70:	f000 80cf 	beq.w	8004d12 <_dtoa_r+0xcaa>
 8004b74:	9b07      	ldr	r3, [sp, #28]
 8004b76:	43db      	mvns	r3, r3
 8004b78:	9306      	str	r3, [sp, #24]
 8004b7a:	465c      	mov	r4, fp
 8004b7c:	e78b      	b.n	8004a96 <_dtoa_r+0xa2e>
 8004b7e:	9a06      	ldr	r2, [sp, #24]
 8004b80:	2331      	movs	r3, #49	; 0x31
 8004b82:	3201      	adds	r2, #1
 8004b84:	9206      	str	r2, [sp, #24]
 8004b86:	f88b 3000 	strb.w	r3, [fp]
 8004b8a:	e6b3      	b.n	80048f4 <_dtoa_r+0x88c>
 8004b8c:	2401      	movs	r4, #1
 8004b8e:	9409      	str	r4, [sp, #36]	; 0x24
 8004b90:	9407      	str	r4, [sp, #28]
 8004b92:	f7ff bb8b 	b.w	80042ac <_dtoa_r+0x244>
 8004b96:	4630      	mov	r0, r6
 8004b98:	f7fb ff64 	bl	8000a64 <__aeabi_i2d>
 8004b9c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ba0:	f7fb ffca 	bl	8000b38 <__aeabi_dmul>
 8004ba4:	2200      	movs	r2, #0
 8004ba6:	4b68      	ldr	r3, [pc, #416]	; (8004d48 <_dtoa_r+0xce0>)
 8004ba8:	f7fb fe10 	bl	80007cc <__adddf3>
 8004bac:	4606      	mov	r6, r0
 8004bae:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004bb2:	2200      	movs	r2, #0
 8004bb4:	4b61      	ldr	r3, [pc, #388]	; (8004d3c <_dtoa_r+0xcd4>)
 8004bb6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004bba:	f7fb fe05 	bl	80007c8 <__aeabi_dsub>
 8004bbe:	4632      	mov	r2, r6
 8004bc0:	463b      	mov	r3, r7
 8004bc2:	4604      	mov	r4, r0
 8004bc4:	460d      	mov	r5, r1
 8004bc6:	f7fc fa47 	bl	8001058 <__aeabi_dcmpgt>
 8004bca:	2800      	cmp	r0, #0
 8004bcc:	d14f      	bne.n	8004c6e <_dtoa_r+0xc06>
 8004bce:	4632      	mov	r2, r6
 8004bd0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004bd4:	4620      	mov	r0, r4
 8004bd6:	4629      	mov	r1, r5
 8004bd8:	f7fc fa20 	bl	800101c <__aeabi_dcmplt>
 8004bdc:	2800      	cmp	r0, #0
 8004bde:	f43f ac69 	beq.w	80044b4 <_dtoa_r+0x44c>
 8004be2:	2600      	movs	r6, #0
 8004be4:	4635      	mov	r5, r6
 8004be6:	e7c5      	b.n	8004b74 <_dtoa_r+0xb0c>
 8004be8:	2301      	movs	r3, #1
 8004bea:	930a      	str	r3, [sp, #40]	; 0x28
 8004bec:	e6c8      	b.n	8004980 <_dtoa_r+0x918>
 8004bee:	4651      	mov	r1, sl
 8004bf0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004bf2:	4648      	mov	r0, r9
 8004bf4:	f001 fa9e 	bl	8006134 <__pow5mult>
 8004bf8:	4682      	mov	sl, r0
 8004bfa:	e572      	b.n	80046e2 <_dtoa_r+0x67a>
 8004bfc:	f8dd a000 	ldr.w	sl, [sp]
 8004c00:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004c04:	e686      	b.n	8004914 <_dtoa_r+0x8ac>
 8004c06:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004c08:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004c0a:	1afb      	subs	r3, r7, r3
 8004c0c:	441a      	add	r2, r3
 8004c0e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004c12:	2700      	movs	r7, #0
 8004c14:	e512      	b.n	800463c <_dtoa_r+0x5d4>
 8004c16:	2b00      	cmp	r3, #0
 8004c18:	9402      	str	r4, [sp, #8]
 8004c1a:	465e      	mov	r6, fp
 8004c1c:	f107 0401 	add.w	r4, r7, #1
 8004c20:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004c24:	f300 80ba 	bgt.w	8004d9c <_dtoa_r+0xd34>
 8004c28:	9b00      	ldr	r3, [sp, #0]
 8004c2a:	9502      	str	r5, [sp, #8]
 8004c2c:	703b      	strb	r3, [r7, #0]
 8004c2e:	4645      	mov	r5, r8
 8004c30:	e660      	b.n	80048f4 <_dtoa_r+0x88c>
 8004c32:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004c36:	2602      	movs	r6, #2
 8004c38:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004c3c:	f7ff bb67 	b.w	800430e <_dtoa_r+0x2a6>
 8004c40:	9b00      	ldr	r3, [sp, #0]
 8004c42:	2b39      	cmp	r3, #57	; 0x39
 8004c44:	465e      	mov	r6, fp
 8004c46:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004c4a:	f000 80b9 	beq.w	8004dc0 <_dtoa_r+0xd58>
 8004c4e:	9b00      	ldr	r3, [sp, #0]
 8004c50:	9502      	str	r5, [sp, #8]
 8004c52:	3301      	adds	r3, #1
 8004c54:	703b      	strb	r3, [r7, #0]
 8004c56:	4645      	mov	r5, r8
 8004c58:	e64c      	b.n	80048f4 <_dtoa_r+0x88c>
 8004c5a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004c5e:	1a9c      	subs	r4, r3, r2
 8004c60:	e4f5      	b.n	800464e <_dtoa_r+0x5e6>
 8004c62:	465e      	mov	r6, fp
 8004c64:	9502      	str	r5, [sp, #8]
 8004c66:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004c6a:	4645      	mov	r5, r8
 8004c6c:	e61a      	b.n	80048a4 <_dtoa_r+0x83c>
 8004c6e:	2600      	movs	r6, #0
 8004c70:	4635      	mov	r5, r6
 8004c72:	e708      	b.n	8004a86 <_dtoa_r+0xa1e>
 8004c74:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004c78:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c7c:	f7fb ff5c 	bl	8000b38 <__aeabi_dmul>
 8004c80:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004c82:	f88b 5000 	strb.w	r5, [fp]
 8004c86:	2b01      	cmp	r3, #1
 8004c88:	e9cd 0100 	strd	r0, r1, [sp]
 8004c8c:	d020      	beq.n	8004cd0 <_dtoa_r+0xc68>
 8004c8e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004c90:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004c94:	445b      	add	r3, fp
 8004c96:	4698      	mov	r8, r3
 8004c98:	2200      	movs	r2, #0
 8004c9a:	4b2c      	ldr	r3, [pc, #176]	; (8004d4c <_dtoa_r+0xce4>)
 8004c9c:	4630      	mov	r0, r6
 8004c9e:	4639      	mov	r1, r7
 8004ca0:	f7fb ff4a 	bl	8000b38 <__aeabi_dmul>
 8004ca4:	460f      	mov	r7, r1
 8004ca6:	4606      	mov	r6, r0
 8004ca8:	f7fc f9f6 	bl	8001098 <__aeabi_d2iz>
 8004cac:	4605      	mov	r5, r0
 8004cae:	f7fb fed9 	bl	8000a64 <__aeabi_i2d>
 8004cb2:	3530      	adds	r5, #48	; 0x30
 8004cb4:	4602      	mov	r2, r0
 8004cb6:	460b      	mov	r3, r1
 8004cb8:	4630      	mov	r0, r6
 8004cba:	4639      	mov	r1, r7
 8004cbc:	f7fb fd84 	bl	80007c8 <__aeabi_dsub>
 8004cc0:	f804 5b01 	strb.w	r5, [r4], #1
 8004cc4:	4544      	cmp	r4, r8
 8004cc6:	4606      	mov	r6, r0
 8004cc8:	460f      	mov	r7, r1
 8004cca:	d1e5      	bne.n	8004c98 <_dtoa_r+0xc30>
 8004ccc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004cd0:	4b1f      	ldr	r3, [pc, #124]	; (8004d50 <_dtoa_r+0xce8>)
 8004cd2:	2200      	movs	r2, #0
 8004cd4:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cd8:	f7fb fd78 	bl	80007cc <__adddf3>
 8004cdc:	4632      	mov	r2, r6
 8004cde:	463b      	mov	r3, r7
 8004ce0:	f7fc f99c 	bl	800101c <__aeabi_dcmplt>
 8004ce4:	2800      	cmp	r0, #0
 8004ce6:	d070      	beq.n	8004dca <_dtoa_r+0xd62>
 8004ce8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004cea:	9306      	str	r3, [sp, #24]
 8004cec:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004cf0:	e48f      	b.n	8004612 <_dtoa_r+0x5aa>
 8004cf2:	2330      	movs	r3, #48	; 0x30
 8004cf4:	f88b 3000 	strb.w	r3, [fp]
 8004cf8:	9b06      	ldr	r3, [sp, #24]
 8004cfa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004cfe:	3301      	adds	r3, #1
 8004d00:	9306      	str	r3, [sp, #24]
 8004d02:	465b      	mov	r3, fp
 8004d04:	e489      	b.n	800461a <_dtoa_r+0x5b2>
 8004d06:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004d08:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004d0c:	e6a0      	b.n	8004a50 <_dtoa_r+0x9e8>
 8004d0e:	2300      	movs	r3, #0
 8004d10:	e676      	b.n	8004a00 <_dtoa_r+0x998>
 8004d12:	4631      	mov	r1, r6
 8004d14:	2205      	movs	r2, #5
 8004d16:	4648      	mov	r0, r9
 8004d18:	f001 f8cc 	bl	8005eb4 <__multadd>
 8004d1c:	4601      	mov	r1, r0
 8004d1e:	4606      	mov	r6, r0
 8004d20:	4650      	mov	r0, sl
 8004d22:	f001 faad 	bl	8006280 <__mcmp>
 8004d26:	2800      	cmp	r0, #0
 8004d28:	f73f aead 	bgt.w	8004a86 <_dtoa_r+0xa1e>
 8004d2c:	e722      	b.n	8004b74 <_dtoa_r+0xb0c>
 8004d2e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d32:	2602      	movs	r6, #2
 8004d34:	ed8d 7b00 	vstr	d7, [sp]
 8004d38:	f7ff bb02 	b.w	8004340 <_dtoa_r+0x2d8>
 8004d3c:	40140000 	.word	0x40140000
 8004d40:	080070f0 	.word	0x080070f0
 8004d44:	080070c8 	.word	0x080070c8
 8004d48:	401c0000 	.word	0x401c0000
 8004d4c:	40240000 	.word	0x40240000
 8004d50:	3fe00000 	.word	0x3fe00000
 8004d54:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d56:	2b00      	cmp	r3, #0
 8004d58:	f43f af1d 	beq.w	8004b96 <_dtoa_r+0xb2e>
 8004d5c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004d5e:	2c00      	cmp	r4, #0
 8004d60:	f77f aba8 	ble.w	80044b4 <_dtoa_r+0x44c>
 8004d64:	2200      	movs	r2, #0
 8004d66:	4b45      	ldr	r3, [pc, #276]	; (8004e7c <_dtoa_r+0xe14>)
 8004d68:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d6c:	f7fb fee4 	bl	8000b38 <__aeabi_dmul>
 8004d70:	e9cd 0100 	strd	r0, r1, [sp]
 8004d74:	1c70      	adds	r0, r6, #1
 8004d76:	f7fb fe75 	bl	8000a64 <__aeabi_i2d>
 8004d7a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d7e:	f7fb fedb 	bl	8000b38 <__aeabi_dmul>
 8004d82:	4b3f      	ldr	r3, [pc, #252]	; (8004e80 <_dtoa_r+0xe18>)
 8004d84:	2200      	movs	r2, #0
 8004d86:	f7fb fd21 	bl	80007cc <__adddf3>
 8004d8a:	9b06      	ldr	r3, [sp, #24]
 8004d8c:	9412      	str	r4, [sp, #72]	; 0x48
 8004d8e:	3b01      	subs	r3, #1
 8004d90:	4606      	mov	r6, r0
 8004d92:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d96:	9316      	str	r3, [sp, #88]	; 0x58
 8004d98:	f7ff baf3 	b.w	8004382 <_dtoa_r+0x31a>
 8004d9c:	4651      	mov	r1, sl
 8004d9e:	2201      	movs	r2, #1
 8004da0:	4648      	mov	r0, r9
 8004da2:	f001 fa17 	bl	80061d4 <__lshift>
 8004da6:	4631      	mov	r1, r6
 8004da8:	4682      	mov	sl, r0
 8004daa:	f001 fa69 	bl	8006280 <__mcmp>
 8004dae:	2800      	cmp	r0, #0
 8004db0:	dd3b      	ble.n	8004e2a <_dtoa_r+0xdc2>
 8004db2:	9b00      	ldr	r3, [sp, #0]
 8004db4:	2b39      	cmp	r3, #57	; 0x39
 8004db6:	d003      	beq.n	8004dc0 <_dtoa_r+0xd58>
 8004db8:	9b02      	ldr	r3, [sp, #8]
 8004dba:	3331      	adds	r3, #49	; 0x31
 8004dbc:	9300      	str	r3, [sp, #0]
 8004dbe:	e733      	b.n	8004c28 <_dtoa_r+0xbc0>
 8004dc0:	2239      	movs	r2, #57	; 0x39
 8004dc2:	9502      	str	r5, [sp, #8]
 8004dc4:	703a      	strb	r2, [r7, #0]
 8004dc6:	4645      	mov	r5, r8
 8004dc8:	e58e      	b.n	80048e8 <_dtoa_r+0x880>
 8004dca:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004dce:	2000      	movs	r0, #0
 8004dd0:	492c      	ldr	r1, [pc, #176]	; (8004e84 <_dtoa_r+0xe1c>)
 8004dd2:	f7fb fcf9 	bl	80007c8 <__aeabi_dsub>
 8004dd6:	4632      	mov	r2, r6
 8004dd8:	463b      	mov	r3, r7
 8004dda:	f7fc f93d 	bl	8001058 <__aeabi_dcmpgt>
 8004dde:	b910      	cbnz	r0, 8004de6 <_dtoa_r+0xd7e>
 8004de0:	f7ff bb68 	b.w	80044b4 <_dtoa_r+0x44c>
 8004de4:	4614      	mov	r4, r2
 8004de6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004dea:	2b30      	cmp	r3, #48	; 0x30
 8004dec:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004df0:	d0f8      	beq.n	8004de4 <_dtoa_r+0xd7c>
 8004df2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004df4:	9306      	str	r3, [sp, #24]
 8004df6:	e58d      	b.n	8004914 <_dtoa_r+0x8ac>
 8004df8:	46d9      	mov	r9, fp
 8004dfa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004dfe:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004e02:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e04:	9306      	str	r3, [sp, #24]
 8004e06:	e404      	b.n	8004612 <_dtoa_r+0x5aa>
 8004e08:	9b00      	ldr	r3, [sp, #0]
 8004e0a:	2b39      	cmp	r3, #57	; 0x39
 8004e0c:	4621      	mov	r1, r4
 8004e0e:	4632      	mov	r2, r6
 8004e10:	f107 0401 	add.w	r4, r7, #1
 8004e14:	465e      	mov	r6, fp
 8004e16:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e1a:	d0d1      	beq.n	8004dc0 <_dtoa_r+0xd58>
 8004e1c:	2a00      	cmp	r2, #0
 8004e1e:	f77f af03 	ble.w	8004c28 <_dtoa_r+0xbc0>
 8004e22:	460b      	mov	r3, r1
 8004e24:	3331      	adds	r3, #49	; 0x31
 8004e26:	9300      	str	r3, [sp, #0]
 8004e28:	e6fe      	b.n	8004c28 <_dtoa_r+0xbc0>
 8004e2a:	f47f aefd 	bne.w	8004c28 <_dtoa_r+0xbc0>
 8004e2e:	9b00      	ldr	r3, [sp, #0]
 8004e30:	07da      	lsls	r2, r3, #31
 8004e32:	f57f aef9 	bpl.w	8004c28 <_dtoa_r+0xbc0>
 8004e36:	e7bc      	b.n	8004db2 <_dtoa_r+0xd4a>
 8004e38:	4629      	mov	r1, r5
 8004e3a:	2300      	movs	r3, #0
 8004e3c:	220a      	movs	r2, #10
 8004e3e:	4648      	mov	r0, r9
 8004e40:	f001 f838 	bl	8005eb4 <__multadd>
 8004e44:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e46:	2b00      	cmp	r3, #0
 8004e48:	4605      	mov	r5, r0
 8004e4a:	dd09      	ble.n	8004e60 <_dtoa_r+0xdf8>
 8004e4c:	9309      	str	r3, [sp, #36]	; 0x24
 8004e4e:	e484      	b.n	800475a <_dtoa_r+0x6f2>
 8004e50:	9b02      	ldr	r3, [sp, #8]
 8004e52:	2b02      	cmp	r3, #2
 8004e54:	dc0e      	bgt.n	8004e74 <_dtoa_r+0xe0c>
 8004e56:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e58:	e507      	b.n	800486a <_dtoa_r+0x802>
 8004e5a:	2602      	movs	r6, #2
 8004e5c:	f7ff ba70 	b.w	8004340 <_dtoa_r+0x2d8>
 8004e60:	9b02      	ldr	r3, [sp, #8]
 8004e62:	2b02      	cmp	r3, #2
 8004e64:	dc06      	bgt.n	8004e74 <_dtoa_r+0xe0c>
 8004e66:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e68:	e7f0      	b.n	8004e4c <_dtoa_r+0xde4>
 8004e6a:	f43f ac59 	beq.w	8004720 <_dtoa_r+0x6b8>
 8004e6e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004e72:	e450      	b.n	8004716 <_dtoa_r+0x6ae>
 8004e74:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e76:	9309      	str	r3, [sp, #36]	; 0x24
 8004e78:	e678      	b.n	8004b6c <_dtoa_r+0xb04>
 8004e7a:	bf00      	nop
 8004e7c:	40240000 	.word	0x40240000
 8004e80:	401c0000 	.word	0x401c0000
 8004e84:	3fe00000 	.word	0x3fe00000

08004e88 <__sflush_r>:
 8004e88:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004e8c:	b29a      	uxth	r2, r3
 8004e8e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004e92:	460c      	mov	r4, r1
 8004e94:	0711      	lsls	r1, r2, #28
 8004e96:	4680      	mov	r8, r0
 8004e98:	d444      	bmi.n	8004f24 <__sflush_r+0x9c>
 8004e9a:	6862      	ldr	r2, [r4, #4]
 8004e9c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004ea0:	2a00      	cmp	r2, #0
 8004ea2:	81a3      	strh	r3, [r4, #12]
 8004ea4:	dd59      	ble.n	8004f5a <__sflush_r+0xd2>
 8004ea6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004ea8:	2d00      	cmp	r5, #0
 8004eaa:	d053      	beq.n	8004f54 <__sflush_r+0xcc>
 8004eac:	2200      	movs	r2, #0
 8004eae:	b29b      	uxth	r3, r3
 8004eb0:	f8d8 6000 	ldr.w	r6, [r8]
 8004eb4:	69e1      	ldr	r1, [r4, #28]
 8004eb6:	f8c8 2000 	str.w	r2, [r8]
 8004eba:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004ebe:	f040 8083 	bne.w	8004fc8 <__sflush_r+0x140>
 8004ec2:	2301      	movs	r3, #1
 8004ec4:	4640      	mov	r0, r8
 8004ec6:	47a8      	blx	r5
 8004ec8:	1c42      	adds	r2, r0, #1
 8004eca:	d04a      	beq.n	8004f62 <__sflush_r+0xda>
 8004ecc:	89a3      	ldrh	r3, [r4, #12]
 8004ece:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004ed0:	69e1      	ldr	r1, [r4, #28]
 8004ed2:	075b      	lsls	r3, r3, #29
 8004ed4:	d505      	bpl.n	8004ee2 <__sflush_r+0x5a>
 8004ed6:	6862      	ldr	r2, [r4, #4]
 8004ed8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004eda:	1a80      	subs	r0, r0, r2
 8004edc:	b10b      	cbz	r3, 8004ee2 <__sflush_r+0x5a>
 8004ede:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004ee0:	1ac0      	subs	r0, r0, r3
 8004ee2:	4602      	mov	r2, r0
 8004ee4:	2300      	movs	r3, #0
 8004ee6:	4640      	mov	r0, r8
 8004ee8:	47a8      	blx	r5
 8004eea:	1c47      	adds	r7, r0, #1
 8004eec:	d045      	beq.n	8004f7a <__sflush_r+0xf2>
 8004eee:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004ef2:	6922      	ldr	r2, [r4, #16]
 8004ef4:	6022      	str	r2, [r4, #0]
 8004ef6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004efa:	2200      	movs	r2, #0
 8004efc:	81a3      	strh	r3, [r4, #12]
 8004efe:	04db      	lsls	r3, r3, #19
 8004f00:	6062      	str	r2, [r4, #4]
 8004f02:	d500      	bpl.n	8004f06 <__sflush_r+0x7e>
 8004f04:	6520      	str	r0, [r4, #80]	; 0x50
 8004f06:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004f08:	f8c8 6000 	str.w	r6, [r8]
 8004f0c:	b311      	cbz	r1, 8004f54 <__sflush_r+0xcc>
 8004f0e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004f12:	4299      	cmp	r1, r3
 8004f14:	d002      	beq.n	8004f1c <__sflush_r+0x94>
 8004f16:	4640      	mov	r0, r8
 8004f18:	f000 f95e 	bl	80051d8 <_free_r>
 8004f1c:	2000      	movs	r0, #0
 8004f1e:	6320      	str	r0, [r4, #48]	; 0x30
 8004f20:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f24:	6926      	ldr	r6, [r4, #16]
 8004f26:	b1ae      	cbz	r6, 8004f54 <__sflush_r+0xcc>
 8004f28:	6825      	ldr	r5, [r4, #0]
 8004f2a:	6026      	str	r6, [r4, #0]
 8004f2c:	0792      	lsls	r2, r2, #30
 8004f2e:	bf0c      	ite	eq
 8004f30:	6963      	ldreq	r3, [r4, #20]
 8004f32:	2300      	movne	r3, #0
 8004f34:	1bad      	subs	r5, r5, r6
 8004f36:	60a3      	str	r3, [r4, #8]
 8004f38:	e00a      	b.n	8004f50 <__sflush_r+0xc8>
 8004f3a:	462b      	mov	r3, r5
 8004f3c:	4632      	mov	r2, r6
 8004f3e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004f40:	69e1      	ldr	r1, [r4, #28]
 8004f42:	4640      	mov	r0, r8
 8004f44:	47b8      	blx	r7
 8004f46:	2800      	cmp	r0, #0
 8004f48:	eba5 0500 	sub.w	r5, r5, r0
 8004f4c:	4406      	add	r6, r0
 8004f4e:	dd2b      	ble.n	8004fa8 <__sflush_r+0x120>
 8004f50:	2d00      	cmp	r5, #0
 8004f52:	dcf2      	bgt.n	8004f3a <__sflush_r+0xb2>
 8004f54:	2000      	movs	r0, #0
 8004f56:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f5a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004f5c:	2a00      	cmp	r2, #0
 8004f5e:	dca2      	bgt.n	8004ea6 <__sflush_r+0x1e>
 8004f60:	e7f8      	b.n	8004f54 <__sflush_r+0xcc>
 8004f62:	f8d8 3000 	ldr.w	r3, [r8]
 8004f66:	2b00      	cmp	r3, #0
 8004f68:	d0b0      	beq.n	8004ecc <__sflush_r+0x44>
 8004f6a:	2b1d      	cmp	r3, #29
 8004f6c:	d001      	beq.n	8004f72 <__sflush_r+0xea>
 8004f6e:	2b16      	cmp	r3, #22
 8004f70:	d12c      	bne.n	8004fcc <__sflush_r+0x144>
 8004f72:	f8c8 6000 	str.w	r6, [r8]
 8004f76:	2000      	movs	r0, #0
 8004f78:	e7ed      	b.n	8004f56 <__sflush_r+0xce>
 8004f7a:	f8d8 1000 	ldr.w	r1, [r8]
 8004f7e:	291d      	cmp	r1, #29
 8004f80:	d81a      	bhi.n	8004fb8 <__sflush_r+0x130>
 8004f82:	4b15      	ldr	r3, [pc, #84]	; (8004fd8 <__sflush_r+0x150>)
 8004f84:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f88:	40cb      	lsrs	r3, r1
 8004f8a:	43db      	mvns	r3, r3
 8004f8c:	f013 0301 	ands.w	r3, r3, #1
 8004f90:	d114      	bne.n	8004fbc <__sflush_r+0x134>
 8004f92:	6925      	ldr	r5, [r4, #16]
 8004f94:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8004f98:	e9c4 5300 	strd	r5, r3, [r4]
 8004f9c:	04d5      	lsls	r5, r2, #19
 8004f9e:	81a2      	strh	r2, [r4, #12]
 8004fa0:	d5b1      	bpl.n	8004f06 <__sflush_r+0x7e>
 8004fa2:	2900      	cmp	r1, #0
 8004fa4:	d1af      	bne.n	8004f06 <__sflush_r+0x7e>
 8004fa6:	e7ad      	b.n	8004f04 <__sflush_r+0x7c>
 8004fa8:	89a3      	ldrh	r3, [r4, #12]
 8004faa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004fae:	81a3      	strh	r3, [r4, #12]
 8004fb0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004fb4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004fb8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004fbc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004fc0:	81a2      	strh	r2, [r4, #12]
 8004fc2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004fc6:	e7c6      	b.n	8004f56 <__sflush_r+0xce>
 8004fc8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8004fca:	e782      	b.n	8004ed2 <__sflush_r+0x4a>
 8004fcc:	89a3      	ldrh	r3, [r4, #12]
 8004fce:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004fd2:	81a3      	strh	r3, [r4, #12]
 8004fd4:	e7bf      	b.n	8004f56 <__sflush_r+0xce>
 8004fd6:	bf00      	nop
 8004fd8:	20400001 	.word	0x20400001

08004fdc <_fflush_r>:
 8004fdc:	b538      	push	{r3, r4, r5, lr}
 8004fde:	460d      	mov	r5, r1
 8004fe0:	4604      	mov	r4, r0
 8004fe2:	b108      	cbz	r0, 8004fe8 <_fflush_r+0xc>
 8004fe4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8004fe6:	b1a3      	cbz	r3, 8005012 <_fflush_r+0x36>
 8004fe8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004fec:	b1b8      	cbz	r0, 800501e <_fflush_r+0x42>
 8004fee:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004ff0:	07db      	lsls	r3, r3, #31
 8004ff2:	d401      	bmi.n	8004ff8 <_fflush_r+0x1c>
 8004ff4:	0581      	lsls	r1, r0, #22
 8004ff6:	d51a      	bpl.n	800502e <_fflush_r+0x52>
 8004ff8:	4620      	mov	r0, r4
 8004ffa:	4629      	mov	r1, r5
 8004ffc:	f7ff ff44 	bl	8004e88 <__sflush_r>
 8005000:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005002:	07da      	lsls	r2, r3, #31
 8005004:	4604      	mov	r4, r0
 8005006:	d402      	bmi.n	800500e <_fflush_r+0x32>
 8005008:	89ab      	ldrh	r3, [r5, #12]
 800500a:	059b      	lsls	r3, r3, #22
 800500c:	d50a      	bpl.n	8005024 <_fflush_r+0x48>
 800500e:	4620      	mov	r0, r4
 8005010:	bd38      	pop	{r3, r4, r5, pc}
 8005012:	f000 f83f 	bl	8005094 <__sinit>
 8005016:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800501a:	2800      	cmp	r0, #0
 800501c:	d1e7      	bne.n	8004fee <_fflush_r+0x12>
 800501e:	4604      	mov	r4, r0
 8005020:	4620      	mov	r0, r4
 8005022:	bd38      	pop	{r3, r4, r5, pc}
 8005024:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005026:	f000 fb87 	bl	8005738 <__retarget_lock_release_recursive>
 800502a:	4620      	mov	r0, r4
 800502c:	bd38      	pop	{r3, r4, r5, pc}
 800502e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005030:	f000 fb80 	bl	8005734 <__retarget_lock_acquire_recursive>
 8005034:	e7e0      	b.n	8004ff8 <_fflush_r+0x1c>
 8005036:	bf00      	nop

08005038 <std>:
 8005038:	b510      	push	{r4, lr}
 800503a:	2300      	movs	r3, #0
 800503c:	4604      	mov	r4, r0
 800503e:	8181      	strh	r1, [r0, #12]
 8005040:	81c2      	strh	r2, [r0, #14]
 8005042:	e9c0 3300 	strd	r3, r3, [r0]
 8005046:	6083      	str	r3, [r0, #8]
 8005048:	6643      	str	r3, [r0, #100]	; 0x64
 800504a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800504e:	6183      	str	r3, [r0, #24]
 8005050:	4619      	mov	r1, r3
 8005052:	2208      	movs	r2, #8
 8005054:	305c      	adds	r0, #92	; 0x5c
 8005056:	f7fd f8cb 	bl	80021f0 <memset>
 800505a:	4807      	ldr	r0, [pc, #28]	; (8005078 <std+0x40>)
 800505c:	4907      	ldr	r1, [pc, #28]	; (800507c <std+0x44>)
 800505e:	4a08      	ldr	r2, [pc, #32]	; (8005080 <std+0x48>)
 8005060:	4b08      	ldr	r3, [pc, #32]	; (8005084 <std+0x4c>)
 8005062:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005064:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005068:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800506c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005070:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005074:	f000 bb5a 	b.w	800572c <__retarget_lock_init_recursive>
 8005078:	08006851 	.word	0x08006851
 800507c:	08006875 	.word	0x08006875
 8005080:	080068b1 	.word	0x080068b1
 8005084:	080068d1 	.word	0x080068d1

08005088 <_cleanup_r>:
 8005088:	4901      	ldr	r1, [pc, #4]	; (8005090 <_cleanup_r+0x8>)
 800508a:	f000 bb17 	b.w	80056bc <_fwalk_reent>
 800508e:	bf00      	nop
 8005090:	08006b41 	.word	0x08006b41

08005094 <__sinit>:
 8005094:	b510      	push	{r4, lr}
 8005096:	4604      	mov	r4, r0
 8005098:	4812      	ldr	r0, [pc, #72]	; (80050e4 <__sinit+0x50>)
 800509a:	f000 fb4b 	bl	8005734 <__retarget_lock_acquire_recursive>
 800509e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80050a0:	b9d2      	cbnz	r2, 80050d8 <__sinit+0x44>
 80050a2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80050a6:	4810      	ldr	r0, [pc, #64]	; (80050e8 <__sinit+0x54>)
 80050a8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80050ac:	2103      	movs	r1, #3
 80050ae:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80050b2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80050b4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80050b8:	6860      	ldr	r0, [r4, #4]
 80050ba:	2104      	movs	r1, #4
 80050bc:	f7ff ffbc 	bl	8005038 <std>
 80050c0:	2201      	movs	r2, #1
 80050c2:	2109      	movs	r1, #9
 80050c4:	68a0      	ldr	r0, [r4, #8]
 80050c6:	f7ff ffb7 	bl	8005038 <std>
 80050ca:	2202      	movs	r2, #2
 80050cc:	2112      	movs	r1, #18
 80050ce:	68e0      	ldr	r0, [r4, #12]
 80050d0:	f7ff ffb2 	bl	8005038 <std>
 80050d4:	2301      	movs	r3, #1
 80050d6:	63a3      	str	r3, [r4, #56]	; 0x38
 80050d8:	4802      	ldr	r0, [pc, #8]	; (80050e4 <__sinit+0x50>)
 80050da:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80050de:	f000 bb2b 	b.w	8005738 <__retarget_lock_release_recursive>
 80050e2:	bf00      	nop
 80050e4:	20000b00 	.word	0x20000b00
 80050e8:	08005089 	.word	0x08005089

080050ec <__sfp_lock_acquire>:
 80050ec:	4801      	ldr	r0, [pc, #4]	; (80050f4 <__sfp_lock_acquire+0x8>)
 80050ee:	f000 bb21 	b.w	8005734 <__retarget_lock_acquire_recursive>
 80050f2:	bf00      	nop
 80050f4:	20000b14 	.word	0x20000b14

080050f8 <__sfp_lock_release>:
 80050f8:	4801      	ldr	r0, [pc, #4]	; (8005100 <__sfp_lock_release+0x8>)
 80050fa:	f000 bb1d 	b.w	8005738 <__retarget_lock_release_recursive>
 80050fe:	bf00      	nop
 8005100:	20000b14 	.word	0x20000b14

08005104 <__libc_fini_array>:
 8005104:	b538      	push	{r3, r4, r5, lr}
 8005106:	4c0a      	ldr	r4, [pc, #40]	; (8005130 <__libc_fini_array+0x2c>)
 8005108:	4d0a      	ldr	r5, [pc, #40]	; (8005134 <__libc_fini_array+0x30>)
 800510a:	1b64      	subs	r4, r4, r5
 800510c:	10a4      	asrs	r4, r4, #2
 800510e:	d00a      	beq.n	8005126 <__libc_fini_array+0x22>
 8005110:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005114:	3b01      	subs	r3, #1
 8005116:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800511a:	3c01      	subs	r4, #1
 800511c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005120:	4798      	blx	r3
 8005122:	2c00      	cmp	r4, #0
 8005124:	d1f9      	bne.n	800511a <__libc_fini_array+0x16>
 8005126:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800512a:	f001 befd 	b.w	8006f28 <_fini>
 800512e:	bf00      	nop
 8005130:	080072ec 	.word	0x080072ec
 8005134:	080072e8 	.word	0x080072e8

08005138 <_malloc_trim_r>:
 8005138:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800513a:	4f24      	ldr	r7, [pc, #144]	; (80051cc <_malloc_trim_r+0x94>)
 800513c:	460c      	mov	r4, r1
 800513e:	4606      	mov	r6, r0
 8005140:	f000 fe7c 	bl	8005e3c <__malloc_lock>
 8005144:	68bb      	ldr	r3, [r7, #8]
 8005146:	685d      	ldr	r5, [r3, #4]
 8005148:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800514c:	310f      	adds	r1, #15
 800514e:	f025 0503 	bic.w	r5, r5, #3
 8005152:	4429      	add	r1, r5
 8005154:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005158:	f021 010f 	bic.w	r1, r1, #15
 800515c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005160:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005164:	db07      	blt.n	8005176 <_malloc_trim_r+0x3e>
 8005166:	2100      	movs	r1, #0
 8005168:	4630      	mov	r0, r6
 800516a:	f001 fb5f 	bl	800682c <_sbrk_r>
 800516e:	68bb      	ldr	r3, [r7, #8]
 8005170:	442b      	add	r3, r5
 8005172:	4298      	cmp	r0, r3
 8005174:	d004      	beq.n	8005180 <_malloc_trim_r+0x48>
 8005176:	4630      	mov	r0, r6
 8005178:	f000 fe66 	bl	8005e48 <__malloc_unlock>
 800517c:	2000      	movs	r0, #0
 800517e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005180:	4261      	negs	r1, r4
 8005182:	4630      	mov	r0, r6
 8005184:	f001 fb52 	bl	800682c <_sbrk_r>
 8005188:	3001      	adds	r0, #1
 800518a:	d00d      	beq.n	80051a8 <_malloc_trim_r+0x70>
 800518c:	4b10      	ldr	r3, [pc, #64]	; (80051d0 <_malloc_trim_r+0x98>)
 800518e:	68ba      	ldr	r2, [r7, #8]
 8005190:	6819      	ldr	r1, [r3, #0]
 8005192:	1b2d      	subs	r5, r5, r4
 8005194:	f045 0501 	orr.w	r5, r5, #1
 8005198:	4630      	mov	r0, r6
 800519a:	1b09      	subs	r1, r1, r4
 800519c:	6055      	str	r5, [r2, #4]
 800519e:	6019      	str	r1, [r3, #0]
 80051a0:	f000 fe52 	bl	8005e48 <__malloc_unlock>
 80051a4:	2001      	movs	r0, #1
 80051a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80051a8:	2100      	movs	r1, #0
 80051aa:	4630      	mov	r0, r6
 80051ac:	f001 fb3e 	bl	800682c <_sbrk_r>
 80051b0:	68ba      	ldr	r2, [r7, #8]
 80051b2:	1a83      	subs	r3, r0, r2
 80051b4:	2b0f      	cmp	r3, #15
 80051b6:	ddde      	ble.n	8005176 <_malloc_trim_r+0x3e>
 80051b8:	4c06      	ldr	r4, [pc, #24]	; (80051d4 <_malloc_trim_r+0x9c>)
 80051ba:	4905      	ldr	r1, [pc, #20]	; (80051d0 <_malloc_trim_r+0x98>)
 80051bc:	6824      	ldr	r4, [r4, #0]
 80051be:	f043 0301 	orr.w	r3, r3, #1
 80051c2:	1b00      	subs	r0, r0, r4
 80051c4:	6053      	str	r3, [r2, #4]
 80051c6:	6008      	str	r0, [r1, #0]
 80051c8:	e7d5      	b.n	8005176 <_malloc_trim_r+0x3e>
 80051ca:	bf00      	nop
 80051cc:	2000044c 	.word	0x2000044c
 80051d0:	20000a6c 	.word	0x20000a6c
 80051d4:	20000854 	.word	0x20000854

080051d8 <_free_r>:
 80051d8:	2900      	cmp	r1, #0
 80051da:	d053      	beq.n	8005284 <_free_r+0xac>
 80051dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80051de:	460c      	mov	r4, r1
 80051e0:	4606      	mov	r6, r0
 80051e2:	f000 fe2b 	bl	8005e3c <__malloc_lock>
 80051e6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80051ea:	4f71      	ldr	r7, [pc, #452]	; (80053b0 <_free_r+0x1d8>)
 80051ec:	f02c 0101 	bic.w	r1, ip, #1
 80051f0:	f1a4 0508 	sub.w	r5, r4, #8
 80051f4:	186b      	adds	r3, r5, r1
 80051f6:	68b8      	ldr	r0, [r7, #8]
 80051f8:	685a      	ldr	r2, [r3, #4]
 80051fa:	4298      	cmp	r0, r3
 80051fc:	f022 0203 	bic.w	r2, r2, #3
 8005200:	d053      	beq.n	80052aa <_free_r+0xd2>
 8005202:	f01c 0f01 	tst.w	ip, #1
 8005206:	605a      	str	r2, [r3, #4]
 8005208:	eb03 0002 	add.w	r0, r3, r2
 800520c:	d13b      	bne.n	8005286 <_free_r+0xae>
 800520e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005212:	6840      	ldr	r0, [r0, #4]
 8005214:	eba5 050c 	sub.w	r5, r5, ip
 8005218:	f107 0e08 	add.w	lr, r7, #8
 800521c:	68ac      	ldr	r4, [r5, #8]
 800521e:	4574      	cmp	r4, lr
 8005220:	4461      	add	r1, ip
 8005222:	f000 0001 	and.w	r0, r0, #1
 8005226:	d075      	beq.n	8005314 <_free_r+0x13c>
 8005228:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800522c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005230:	f8cc 4008 	str.w	r4, [ip, #8]
 8005234:	b360      	cbz	r0, 8005290 <_free_r+0xb8>
 8005236:	f041 0301 	orr.w	r3, r1, #1
 800523a:	606b      	str	r3, [r5, #4]
 800523c:	5069      	str	r1, [r5, r1]
 800523e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005242:	d350      	bcc.n	80052e6 <_free_r+0x10e>
 8005244:	0a4b      	lsrs	r3, r1, #9
 8005246:	2b04      	cmp	r3, #4
 8005248:	d870      	bhi.n	800532c <_free_r+0x154>
 800524a:	098b      	lsrs	r3, r1, #6
 800524c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005250:	00e4      	lsls	r4, r4, #3
 8005252:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005256:	1938      	adds	r0, r7, r4
 8005258:	593b      	ldr	r3, [r7, r4]
 800525a:	3808      	subs	r0, #8
 800525c:	4298      	cmp	r0, r3
 800525e:	d078      	beq.n	8005352 <_free_r+0x17a>
 8005260:	685a      	ldr	r2, [r3, #4]
 8005262:	f022 0203 	bic.w	r2, r2, #3
 8005266:	428a      	cmp	r2, r1
 8005268:	d971      	bls.n	800534e <_free_r+0x176>
 800526a:	689b      	ldr	r3, [r3, #8]
 800526c:	4298      	cmp	r0, r3
 800526e:	d1f7      	bne.n	8005260 <_free_r+0x88>
 8005270:	68c3      	ldr	r3, [r0, #12]
 8005272:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005276:	609d      	str	r5, [r3, #8]
 8005278:	60c5      	str	r5, [r0, #12]
 800527a:	4630      	mov	r0, r6
 800527c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005280:	f000 bde2 	b.w	8005e48 <__malloc_unlock>
 8005284:	4770      	bx	lr
 8005286:	6840      	ldr	r0, [r0, #4]
 8005288:	f000 0001 	and.w	r0, r0, #1
 800528c:	2800      	cmp	r0, #0
 800528e:	d1d2      	bne.n	8005236 <_free_r+0x5e>
 8005290:	6898      	ldr	r0, [r3, #8]
 8005292:	4c48      	ldr	r4, [pc, #288]	; (80053b4 <_free_r+0x1dc>)
 8005294:	4411      	add	r1, r2
 8005296:	42a0      	cmp	r0, r4
 8005298:	f041 0201 	orr.w	r2, r1, #1
 800529c:	d062      	beq.n	8005364 <_free_r+0x18c>
 800529e:	68db      	ldr	r3, [r3, #12]
 80052a0:	60c3      	str	r3, [r0, #12]
 80052a2:	6098      	str	r0, [r3, #8]
 80052a4:	606a      	str	r2, [r5, #4]
 80052a6:	5069      	str	r1, [r5, r1]
 80052a8:	e7c9      	b.n	800523e <_free_r+0x66>
 80052aa:	f01c 0f01 	tst.w	ip, #1
 80052ae:	440a      	add	r2, r1
 80052b0:	d107      	bne.n	80052c2 <_free_r+0xea>
 80052b2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80052b6:	1aed      	subs	r5, r5, r3
 80052b8:	441a      	add	r2, r3
 80052ba:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80052be:	60cb      	str	r3, [r1, #12]
 80052c0:	6099      	str	r1, [r3, #8]
 80052c2:	4b3d      	ldr	r3, [pc, #244]	; (80053b8 <_free_r+0x1e0>)
 80052c4:	681b      	ldr	r3, [r3, #0]
 80052c6:	f042 0101 	orr.w	r1, r2, #1
 80052ca:	4293      	cmp	r3, r2
 80052cc:	6069      	str	r1, [r5, #4]
 80052ce:	60bd      	str	r5, [r7, #8]
 80052d0:	d804      	bhi.n	80052dc <_free_r+0x104>
 80052d2:	4b3a      	ldr	r3, [pc, #232]	; (80053bc <_free_r+0x1e4>)
 80052d4:	4630      	mov	r0, r6
 80052d6:	6819      	ldr	r1, [r3, #0]
 80052d8:	f7ff ff2e 	bl	8005138 <_malloc_trim_r>
 80052dc:	4630      	mov	r0, r6
 80052de:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80052e2:	f000 bdb1 	b.w	8005e48 <__malloc_unlock>
 80052e6:	08c9      	lsrs	r1, r1, #3
 80052e8:	6878      	ldr	r0, [r7, #4]
 80052ea:	1c4a      	adds	r2, r1, #1
 80052ec:	2301      	movs	r3, #1
 80052ee:	1089      	asrs	r1, r1, #2
 80052f0:	408b      	lsls	r3, r1
 80052f2:	4303      	orrs	r3, r0
 80052f4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80052f8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80052fc:	607b      	str	r3, [r7, #4]
 80052fe:	3908      	subs	r1, #8
 8005300:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005304:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005308:	60c5      	str	r5, [r0, #12]
 800530a:	4630      	mov	r0, r6
 800530c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005310:	f000 bd9a 	b.w	8005e48 <__malloc_unlock>
 8005314:	2800      	cmp	r0, #0
 8005316:	d145      	bne.n	80053a4 <_free_r+0x1cc>
 8005318:	440a      	add	r2, r1
 800531a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800531e:	f042 0001 	orr.w	r0, r2, #1
 8005322:	60cb      	str	r3, [r1, #12]
 8005324:	6099      	str	r1, [r3, #8]
 8005326:	6068      	str	r0, [r5, #4]
 8005328:	50aa      	str	r2, [r5, r2]
 800532a:	e7d7      	b.n	80052dc <_free_r+0x104>
 800532c:	2b14      	cmp	r3, #20
 800532e:	d908      	bls.n	8005342 <_free_r+0x16a>
 8005330:	2b54      	cmp	r3, #84	; 0x54
 8005332:	d81e      	bhi.n	8005372 <_free_r+0x19a>
 8005334:	0b0b      	lsrs	r3, r1, #12
 8005336:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800533a:	00e4      	lsls	r4, r4, #3
 800533c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005340:	e789      	b.n	8005256 <_free_r+0x7e>
 8005342:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005346:	00e4      	lsls	r4, r4, #3
 8005348:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800534c:	e783      	b.n	8005256 <_free_r+0x7e>
 800534e:	4618      	mov	r0, r3
 8005350:	e78e      	b.n	8005270 <_free_r+0x98>
 8005352:	1093      	asrs	r3, r2, #2
 8005354:	6879      	ldr	r1, [r7, #4]
 8005356:	2201      	movs	r2, #1
 8005358:	fa02 f303 	lsl.w	r3, r2, r3
 800535c:	430b      	orrs	r3, r1
 800535e:	607b      	str	r3, [r7, #4]
 8005360:	4603      	mov	r3, r0
 8005362:	e786      	b.n	8005272 <_free_r+0x9a>
 8005364:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005368:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800536c:	606a      	str	r2, [r5, #4]
 800536e:	5069      	str	r1, [r5, r1]
 8005370:	e7b4      	b.n	80052dc <_free_r+0x104>
 8005372:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005376:	d806      	bhi.n	8005386 <_free_r+0x1ae>
 8005378:	0bcb      	lsrs	r3, r1, #15
 800537a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800537e:	00e4      	lsls	r4, r4, #3
 8005380:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005384:	e767      	b.n	8005256 <_free_r+0x7e>
 8005386:	f240 5254 	movw	r2, #1364	; 0x554
 800538a:	4293      	cmp	r3, r2
 800538c:	d806      	bhi.n	800539c <_free_r+0x1c4>
 800538e:	0c8b      	lsrs	r3, r1, #18
 8005390:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005394:	00e4      	lsls	r4, r4, #3
 8005396:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800539a:	e75c      	b.n	8005256 <_free_r+0x7e>
 800539c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80053a0:	227e      	movs	r2, #126	; 0x7e
 80053a2:	e758      	b.n	8005256 <_free_r+0x7e>
 80053a4:	f041 0201 	orr.w	r2, r1, #1
 80053a8:	606a      	str	r2, [r5, #4]
 80053aa:	6019      	str	r1, [r3, #0]
 80053ac:	e796      	b.n	80052dc <_free_r+0x104>
 80053ae:	bf00      	nop
 80053b0:	2000044c 	.word	0x2000044c
 80053b4:	20000454 	.word	0x20000454
 80053b8:	20000858 	.word	0x20000858
 80053bc:	20000a9c 	.word	0x20000a9c

080053c0 <__sfvwrite_r>:
 80053c0:	6893      	ldr	r3, [r2, #8]
 80053c2:	2b00      	cmp	r3, #0
 80053c4:	f000 80e4 	beq.w	8005590 <__sfvwrite_r+0x1d0>
 80053c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80053cc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80053d0:	b29b      	uxth	r3, r3
 80053d2:	460c      	mov	r4, r1
 80053d4:	0719      	lsls	r1, r3, #28
 80053d6:	b083      	sub	sp, #12
 80053d8:	4682      	mov	sl, r0
 80053da:	4690      	mov	r8, r2
 80053dc:	d535      	bpl.n	800544a <__sfvwrite_r+0x8a>
 80053de:	6922      	ldr	r2, [r4, #16]
 80053e0:	b39a      	cbz	r2, 800544a <__sfvwrite_r+0x8a>
 80053e2:	f013 0202 	ands.w	r2, r3, #2
 80053e6:	f8d8 6000 	ldr.w	r6, [r8]
 80053ea:	d03d      	beq.n	8005468 <__sfvwrite_r+0xa8>
 80053ec:	2700      	movs	r7, #0
 80053ee:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80053f2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80053f6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80056b8 <__sfvwrite_r+0x2f8>
 80053fa:	463d      	mov	r5, r7
 80053fc:	454d      	cmp	r5, r9
 80053fe:	462b      	mov	r3, r5
 8005400:	463a      	mov	r2, r7
 8005402:	bf28      	it	cs
 8005404:	464b      	movcs	r3, r9
 8005406:	4661      	mov	r1, ip
 8005408:	4650      	mov	r0, sl
 800540a:	b1d5      	cbz	r5, 8005442 <__sfvwrite_r+0x82>
 800540c:	47d8      	blx	fp
 800540e:	2800      	cmp	r0, #0
 8005410:	f340 80c6 	ble.w	80055a0 <__sfvwrite_r+0x1e0>
 8005414:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005418:	1a1b      	subs	r3, r3, r0
 800541a:	4407      	add	r7, r0
 800541c:	1a2d      	subs	r5, r5, r0
 800541e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005422:	2b00      	cmp	r3, #0
 8005424:	f000 80b0 	beq.w	8005588 <__sfvwrite_r+0x1c8>
 8005428:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800542c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005430:	454d      	cmp	r5, r9
 8005432:	462b      	mov	r3, r5
 8005434:	463a      	mov	r2, r7
 8005436:	bf28      	it	cs
 8005438:	464b      	movcs	r3, r9
 800543a:	4661      	mov	r1, ip
 800543c:	4650      	mov	r0, sl
 800543e:	2d00      	cmp	r5, #0
 8005440:	d1e4      	bne.n	800540c <__sfvwrite_r+0x4c>
 8005442:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005446:	3608      	adds	r6, #8
 8005448:	e7d8      	b.n	80053fc <__sfvwrite_r+0x3c>
 800544a:	4621      	mov	r1, r4
 800544c:	4650      	mov	r0, sl
 800544e:	f7fe fd03 	bl	8003e58 <__swsetup_r>
 8005452:	2800      	cmp	r0, #0
 8005454:	f040 812a 	bne.w	80056ac <__sfvwrite_r+0x2ec>
 8005458:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800545c:	f8d8 6000 	ldr.w	r6, [r8]
 8005460:	b29b      	uxth	r3, r3
 8005462:	f013 0202 	ands.w	r2, r3, #2
 8005466:	d1c1      	bne.n	80053ec <__sfvwrite_r+0x2c>
 8005468:	f013 0901 	ands.w	r9, r3, #1
 800546c:	d15d      	bne.n	800552a <__sfvwrite_r+0x16a>
 800546e:	68a7      	ldr	r7, [r4, #8]
 8005470:	6820      	ldr	r0, [r4, #0]
 8005472:	464d      	mov	r5, r9
 8005474:	2d00      	cmp	r5, #0
 8005476:	d054      	beq.n	8005522 <__sfvwrite_r+0x162>
 8005478:	059a      	lsls	r2, r3, #22
 800547a:	f140 809b 	bpl.w	80055b4 <__sfvwrite_r+0x1f4>
 800547e:	42af      	cmp	r7, r5
 8005480:	46bb      	mov	fp, r7
 8005482:	f200 80d8 	bhi.w	8005636 <__sfvwrite_r+0x276>
 8005486:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800548a:	d02f      	beq.n	80054ec <__sfvwrite_r+0x12c>
 800548c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005490:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005494:	eba0 0b01 	sub.w	fp, r0, r1
 8005498:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800549c:	1c68      	adds	r0, r5, #1
 800549e:	107f      	asrs	r7, r7, #1
 80054a0:	4458      	add	r0, fp
 80054a2:	42b8      	cmp	r0, r7
 80054a4:	463a      	mov	r2, r7
 80054a6:	bf84      	itt	hi
 80054a8:	4607      	movhi	r7, r0
 80054aa:	463a      	movhi	r2, r7
 80054ac:	055b      	lsls	r3, r3, #21
 80054ae:	f140 80d3 	bpl.w	8005658 <__sfvwrite_r+0x298>
 80054b2:	4611      	mov	r1, r2
 80054b4:	4650      	mov	r0, sl
 80054b6:	f000 f9b9 	bl	800582c <_malloc_r>
 80054ba:	2800      	cmp	r0, #0
 80054bc:	f000 80f0 	beq.w	80056a0 <__sfvwrite_r+0x2e0>
 80054c0:	465a      	mov	r2, fp
 80054c2:	6921      	ldr	r1, [r4, #16]
 80054c4:	9001      	str	r0, [sp, #4]
 80054c6:	f7fb f81b 	bl	8000500 <memcpy>
 80054ca:	89a2      	ldrh	r2, [r4, #12]
 80054cc:	9b01      	ldr	r3, [sp, #4]
 80054ce:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80054d2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80054d6:	81a2      	strh	r2, [r4, #12]
 80054d8:	eba7 020b 	sub.w	r2, r7, fp
 80054dc:	eb03 000b 	add.w	r0, r3, fp
 80054e0:	6167      	str	r7, [r4, #20]
 80054e2:	6123      	str	r3, [r4, #16]
 80054e4:	6020      	str	r0, [r4, #0]
 80054e6:	60a2      	str	r2, [r4, #8]
 80054e8:	462f      	mov	r7, r5
 80054ea:	46ab      	mov	fp, r5
 80054ec:	465a      	mov	r2, fp
 80054ee:	4649      	mov	r1, r9
 80054f0:	f000 fc40 	bl	8005d74 <memmove>
 80054f4:	68a2      	ldr	r2, [r4, #8]
 80054f6:	6823      	ldr	r3, [r4, #0]
 80054f8:	1bd2      	subs	r2, r2, r7
 80054fa:	445b      	add	r3, fp
 80054fc:	462f      	mov	r7, r5
 80054fe:	60a2      	str	r2, [r4, #8]
 8005500:	6023      	str	r3, [r4, #0]
 8005502:	2500      	movs	r5, #0
 8005504:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005508:	1bdb      	subs	r3, r3, r7
 800550a:	44b9      	add	r9, r7
 800550c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005510:	2b00      	cmp	r3, #0
 8005512:	d039      	beq.n	8005588 <__sfvwrite_r+0x1c8>
 8005514:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005518:	68a7      	ldr	r7, [r4, #8]
 800551a:	6820      	ldr	r0, [r4, #0]
 800551c:	b29b      	uxth	r3, r3
 800551e:	2d00      	cmp	r5, #0
 8005520:	d1aa      	bne.n	8005478 <__sfvwrite_r+0xb8>
 8005522:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005526:	3608      	adds	r6, #8
 8005528:	e7a4      	b.n	8005474 <__sfvwrite_r+0xb4>
 800552a:	4633      	mov	r3, r6
 800552c:	4691      	mov	r9, r2
 800552e:	4610      	mov	r0, r2
 8005530:	4617      	mov	r7, r2
 8005532:	464e      	mov	r6, r9
 8005534:	469b      	mov	fp, r3
 8005536:	2f00      	cmp	r7, #0
 8005538:	d06b      	beq.n	8005612 <__sfvwrite_r+0x252>
 800553a:	2800      	cmp	r0, #0
 800553c:	d071      	beq.n	8005622 <__sfvwrite_r+0x262>
 800553e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005542:	6820      	ldr	r0, [r4, #0]
 8005544:	45b9      	cmp	r9, r7
 8005546:	464b      	mov	r3, r9
 8005548:	bf28      	it	cs
 800554a:	463b      	movcs	r3, r7
 800554c:	4288      	cmp	r0, r1
 800554e:	d903      	bls.n	8005558 <__sfvwrite_r+0x198>
 8005550:	68a5      	ldr	r5, [r4, #8]
 8005552:	4415      	add	r5, r2
 8005554:	42ab      	cmp	r3, r5
 8005556:	dc71      	bgt.n	800563c <__sfvwrite_r+0x27c>
 8005558:	429a      	cmp	r2, r3
 800555a:	f300 8093 	bgt.w	8005684 <__sfvwrite_r+0x2c4>
 800555e:	4613      	mov	r3, r2
 8005560:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005562:	69e1      	ldr	r1, [r4, #28]
 8005564:	4632      	mov	r2, r6
 8005566:	4650      	mov	r0, sl
 8005568:	47a8      	blx	r5
 800556a:	1e05      	subs	r5, r0, #0
 800556c:	dd18      	ble.n	80055a0 <__sfvwrite_r+0x1e0>
 800556e:	ebb9 0905 	subs.w	r9, r9, r5
 8005572:	d00f      	beq.n	8005594 <__sfvwrite_r+0x1d4>
 8005574:	2001      	movs	r0, #1
 8005576:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800557a:	1b5b      	subs	r3, r3, r5
 800557c:	442e      	add	r6, r5
 800557e:	1b7f      	subs	r7, r7, r5
 8005580:	f8c8 3008 	str.w	r3, [r8, #8]
 8005584:	2b00      	cmp	r3, #0
 8005586:	d1d6      	bne.n	8005536 <__sfvwrite_r+0x176>
 8005588:	2000      	movs	r0, #0
 800558a:	b003      	add	sp, #12
 800558c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005590:	2000      	movs	r0, #0
 8005592:	4770      	bx	lr
 8005594:	4621      	mov	r1, r4
 8005596:	4650      	mov	r0, sl
 8005598:	f7ff fd20 	bl	8004fdc <_fflush_r>
 800559c:	2800      	cmp	r0, #0
 800559e:	d0ea      	beq.n	8005576 <__sfvwrite_r+0x1b6>
 80055a0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055a4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80055a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80055ac:	81a3      	strh	r3, [r4, #12]
 80055ae:	b003      	add	sp, #12
 80055b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80055b4:	6923      	ldr	r3, [r4, #16]
 80055b6:	4283      	cmp	r3, r0
 80055b8:	d315      	bcc.n	80055e6 <__sfvwrite_r+0x226>
 80055ba:	6961      	ldr	r1, [r4, #20]
 80055bc:	42a9      	cmp	r1, r5
 80055be:	d812      	bhi.n	80055e6 <__sfvwrite_r+0x226>
 80055c0:	4b3c      	ldr	r3, [pc, #240]	; (80056b4 <__sfvwrite_r+0x2f4>)
 80055c2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80055c4:	429d      	cmp	r5, r3
 80055c6:	bf94      	ite	ls
 80055c8:	462b      	movls	r3, r5
 80055ca:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80055ce:	464a      	mov	r2, r9
 80055d0:	fb93 f3f1 	sdiv	r3, r3, r1
 80055d4:	4650      	mov	r0, sl
 80055d6:	fb01 f303 	mul.w	r3, r1, r3
 80055da:	69e1      	ldr	r1, [r4, #28]
 80055dc:	47b8      	blx	r7
 80055de:	1e07      	subs	r7, r0, #0
 80055e0:	ddde      	ble.n	80055a0 <__sfvwrite_r+0x1e0>
 80055e2:	1bed      	subs	r5, r5, r7
 80055e4:	e78e      	b.n	8005504 <__sfvwrite_r+0x144>
 80055e6:	42af      	cmp	r7, r5
 80055e8:	bf28      	it	cs
 80055ea:	462f      	movcs	r7, r5
 80055ec:	463a      	mov	r2, r7
 80055ee:	4649      	mov	r1, r9
 80055f0:	f000 fbc0 	bl	8005d74 <memmove>
 80055f4:	68a3      	ldr	r3, [r4, #8]
 80055f6:	6822      	ldr	r2, [r4, #0]
 80055f8:	1bdb      	subs	r3, r3, r7
 80055fa:	443a      	add	r2, r7
 80055fc:	60a3      	str	r3, [r4, #8]
 80055fe:	6022      	str	r2, [r4, #0]
 8005600:	2b00      	cmp	r3, #0
 8005602:	d1ee      	bne.n	80055e2 <__sfvwrite_r+0x222>
 8005604:	4621      	mov	r1, r4
 8005606:	4650      	mov	r0, sl
 8005608:	f7ff fce8 	bl	8004fdc <_fflush_r>
 800560c:	2800      	cmp	r0, #0
 800560e:	d0e8      	beq.n	80055e2 <__sfvwrite_r+0x222>
 8005610:	e7c6      	b.n	80055a0 <__sfvwrite_r+0x1e0>
 8005612:	f10b 0308 	add.w	r3, fp, #8
 8005616:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800561a:	469b      	mov	fp, r3
 800561c:	3308      	adds	r3, #8
 800561e:	2f00      	cmp	r7, #0
 8005620:	d0f9      	beq.n	8005616 <__sfvwrite_r+0x256>
 8005622:	463a      	mov	r2, r7
 8005624:	210a      	movs	r1, #10
 8005626:	4630      	mov	r0, r6
 8005628:	f7fb f87a 	bl	8000720 <memchr>
 800562c:	b338      	cbz	r0, 800567e <__sfvwrite_r+0x2be>
 800562e:	3001      	adds	r0, #1
 8005630:	eba0 0906 	sub.w	r9, r0, r6
 8005634:	e783      	b.n	800553e <__sfvwrite_r+0x17e>
 8005636:	462f      	mov	r7, r5
 8005638:	46ab      	mov	fp, r5
 800563a:	e757      	b.n	80054ec <__sfvwrite_r+0x12c>
 800563c:	4631      	mov	r1, r6
 800563e:	462a      	mov	r2, r5
 8005640:	f000 fb98 	bl	8005d74 <memmove>
 8005644:	6823      	ldr	r3, [r4, #0]
 8005646:	442b      	add	r3, r5
 8005648:	6023      	str	r3, [r4, #0]
 800564a:	4621      	mov	r1, r4
 800564c:	4650      	mov	r0, sl
 800564e:	f7ff fcc5 	bl	8004fdc <_fflush_r>
 8005652:	2800      	cmp	r0, #0
 8005654:	d08b      	beq.n	800556e <__sfvwrite_r+0x1ae>
 8005656:	e7a3      	b.n	80055a0 <__sfvwrite_r+0x1e0>
 8005658:	4650      	mov	r0, sl
 800565a:	f000 ff05 	bl	8006468 <_realloc_r>
 800565e:	4603      	mov	r3, r0
 8005660:	2800      	cmp	r0, #0
 8005662:	f47f af39 	bne.w	80054d8 <__sfvwrite_r+0x118>
 8005666:	6921      	ldr	r1, [r4, #16]
 8005668:	4650      	mov	r0, sl
 800566a:	f7ff fdb5 	bl	80051d8 <_free_r>
 800566e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005672:	220c      	movs	r2, #12
 8005674:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005678:	f8ca 2000 	str.w	r2, [sl]
 800567c:	e792      	b.n	80055a4 <__sfvwrite_r+0x1e4>
 800567e:	f107 0901 	add.w	r9, r7, #1
 8005682:	e75c      	b.n	800553e <__sfvwrite_r+0x17e>
 8005684:	461a      	mov	r2, r3
 8005686:	4631      	mov	r1, r6
 8005688:	9301      	str	r3, [sp, #4]
 800568a:	f000 fb73 	bl	8005d74 <memmove>
 800568e:	9b01      	ldr	r3, [sp, #4]
 8005690:	68a1      	ldr	r1, [r4, #8]
 8005692:	6822      	ldr	r2, [r4, #0]
 8005694:	1ac9      	subs	r1, r1, r3
 8005696:	441a      	add	r2, r3
 8005698:	60a1      	str	r1, [r4, #8]
 800569a:	6022      	str	r2, [r4, #0]
 800569c:	461d      	mov	r5, r3
 800569e:	e766      	b.n	800556e <__sfvwrite_r+0x1ae>
 80056a0:	230c      	movs	r3, #12
 80056a2:	f8ca 3000 	str.w	r3, [sl]
 80056a6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056aa:	e77b      	b.n	80055a4 <__sfvwrite_r+0x1e4>
 80056ac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056b0:	e76b      	b.n	800558a <__sfvwrite_r+0x1ca>
 80056b2:	bf00      	nop
 80056b4:	7ffffffe 	.word	0x7ffffffe
 80056b8:	7ffffc00 	.word	0x7ffffc00

080056bc <_fwalk_reent>:
 80056bc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80056c0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80056c4:	d01f      	beq.n	8005706 <_fwalk_reent+0x4a>
 80056c6:	4688      	mov	r8, r1
 80056c8:	4606      	mov	r6, r0
 80056ca:	f04f 0900 	mov.w	r9, #0
 80056ce:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80056d2:	3d01      	subs	r5, #1
 80056d4:	d411      	bmi.n	80056fa <_fwalk_reent+0x3e>
 80056d6:	89a3      	ldrh	r3, [r4, #12]
 80056d8:	2b01      	cmp	r3, #1
 80056da:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80056de:	4621      	mov	r1, r4
 80056e0:	4630      	mov	r0, r6
 80056e2:	d906      	bls.n	80056f2 <_fwalk_reent+0x36>
 80056e4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80056e8:	3301      	adds	r3, #1
 80056ea:	d002      	beq.n	80056f2 <_fwalk_reent+0x36>
 80056ec:	47c0      	blx	r8
 80056ee:	ea49 0900 	orr.w	r9, r9, r0
 80056f2:	1c6b      	adds	r3, r5, #1
 80056f4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80056f8:	d1ed      	bne.n	80056d6 <_fwalk_reent+0x1a>
 80056fa:	683f      	ldr	r7, [r7, #0]
 80056fc:	2f00      	cmp	r7, #0
 80056fe:	d1e6      	bne.n	80056ce <_fwalk_reent+0x12>
 8005700:	4648      	mov	r0, r9
 8005702:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005706:	46b9      	mov	r9, r7
 8005708:	4648      	mov	r0, r9
 800570a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800570e:	bf00      	nop

08005710 <_localeconv_r>:
 8005710:	4a04      	ldr	r2, [pc, #16]	; (8005724 <_localeconv_r+0x14>)
 8005712:	4b05      	ldr	r3, [pc, #20]	; (8005728 <_localeconv_r+0x18>)
 8005714:	6812      	ldr	r2, [r2, #0]
 8005716:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005718:	2800      	cmp	r0, #0
 800571a:	bf08      	it	eq
 800571c:	4618      	moveq	r0, r3
 800571e:	30f0      	adds	r0, #240	; 0xf0
 8005720:	4770      	bx	lr
 8005722:	bf00      	nop
 8005724:	20000018 	.word	0x20000018
 8005728:	2000085c 	.word	0x2000085c

0800572c <__retarget_lock_init_recursive>:
 800572c:	4770      	bx	lr
 800572e:	bf00      	nop

08005730 <__retarget_lock_close_recursive>:
 8005730:	4770      	bx	lr
 8005732:	bf00      	nop

08005734 <__retarget_lock_acquire_recursive>:
 8005734:	4770      	bx	lr
 8005736:	bf00      	nop

08005738 <__retarget_lock_release_recursive>:
 8005738:	4770      	bx	lr
 800573a:	bf00      	nop

0800573c <__swhatbuf_r>:
 800573c:	b570      	push	{r4, r5, r6, lr}
 800573e:	460c      	mov	r4, r1
 8005740:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005744:	2900      	cmp	r1, #0
 8005746:	b096      	sub	sp, #88	; 0x58
 8005748:	4615      	mov	r5, r2
 800574a:	461e      	mov	r6, r3
 800574c:	da0f      	bge.n	800576e <__swhatbuf_r+0x32>
 800574e:	89a2      	ldrh	r2, [r4, #12]
 8005750:	2300      	movs	r3, #0
 8005752:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005756:	6033      	str	r3, [r6, #0]
 8005758:	d104      	bne.n	8005764 <__swhatbuf_r+0x28>
 800575a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800575e:	602b      	str	r3, [r5, #0]
 8005760:	b016      	add	sp, #88	; 0x58
 8005762:	bd70      	pop	{r4, r5, r6, pc}
 8005764:	2240      	movs	r2, #64	; 0x40
 8005766:	4618      	mov	r0, r3
 8005768:	602a      	str	r2, [r5, #0]
 800576a:	b016      	add	sp, #88	; 0x58
 800576c:	bd70      	pop	{r4, r5, r6, pc}
 800576e:	466a      	mov	r2, sp
 8005770:	f001 fad0 	bl	8006d14 <_fstat_r>
 8005774:	2800      	cmp	r0, #0
 8005776:	dbea      	blt.n	800574e <__swhatbuf_r+0x12>
 8005778:	9b01      	ldr	r3, [sp, #4]
 800577a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800577e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005782:	fab3 f383 	clz	r3, r3
 8005786:	095b      	lsrs	r3, r3, #5
 8005788:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800578c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005790:	6033      	str	r3, [r6, #0]
 8005792:	602a      	str	r2, [r5, #0]
 8005794:	b016      	add	sp, #88	; 0x58
 8005796:	bd70      	pop	{r4, r5, r6, pc}

08005798 <__smakebuf_r>:
 8005798:	898a      	ldrh	r2, [r1, #12]
 800579a:	0792      	lsls	r2, r2, #30
 800579c:	460b      	mov	r3, r1
 800579e:	d506      	bpl.n	80057ae <__smakebuf_r+0x16>
 80057a0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80057a4:	2101      	movs	r1, #1
 80057a6:	601a      	str	r2, [r3, #0]
 80057a8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80057ac:	4770      	bx	lr
 80057ae:	b570      	push	{r4, r5, r6, lr}
 80057b0:	b082      	sub	sp, #8
 80057b2:	ab01      	add	r3, sp, #4
 80057b4:	466a      	mov	r2, sp
 80057b6:	460c      	mov	r4, r1
 80057b8:	4605      	mov	r5, r0
 80057ba:	f7ff ffbf 	bl	800573c <__swhatbuf_r>
 80057be:	9900      	ldr	r1, [sp, #0]
 80057c0:	4606      	mov	r6, r0
 80057c2:	4628      	mov	r0, r5
 80057c4:	f000 f832 	bl	800582c <_malloc_r>
 80057c8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057cc:	b1d8      	cbz	r0, 8005806 <__smakebuf_r+0x6e>
 80057ce:	4916      	ldr	r1, [pc, #88]	; (8005828 <__smakebuf_r+0x90>)
 80057d0:	63e9      	str	r1, [r5, #60]	; 0x3c
 80057d2:	9a01      	ldr	r2, [sp, #4]
 80057d4:	9900      	ldr	r1, [sp, #0]
 80057d6:	6020      	str	r0, [r4, #0]
 80057d8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80057dc:	81a3      	strh	r3, [r4, #12]
 80057de:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80057e2:	b91a      	cbnz	r2, 80057ec <__smakebuf_r+0x54>
 80057e4:	4333      	orrs	r3, r6
 80057e6:	81a3      	strh	r3, [r4, #12]
 80057e8:	b002      	add	sp, #8
 80057ea:	bd70      	pop	{r4, r5, r6, pc}
 80057ec:	4628      	mov	r0, r5
 80057ee:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80057f2:	f001 faa3 	bl	8006d3c <_isatty_r>
 80057f6:	b1a0      	cbz	r0, 8005822 <__smakebuf_r+0x8a>
 80057f8:	89a3      	ldrh	r3, [r4, #12]
 80057fa:	f023 0303 	bic.w	r3, r3, #3
 80057fe:	f043 0301 	orr.w	r3, r3, #1
 8005802:	b21b      	sxth	r3, r3
 8005804:	e7ee      	b.n	80057e4 <__smakebuf_r+0x4c>
 8005806:	059a      	lsls	r2, r3, #22
 8005808:	d4ee      	bmi.n	80057e8 <__smakebuf_r+0x50>
 800580a:	f023 0303 	bic.w	r3, r3, #3
 800580e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005812:	f043 0302 	orr.w	r3, r3, #2
 8005816:	2101      	movs	r1, #1
 8005818:	81a3      	strh	r3, [r4, #12]
 800581a:	6022      	str	r2, [r4, #0]
 800581c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005820:	e7e2      	b.n	80057e8 <__smakebuf_r+0x50>
 8005822:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005826:	e7dd      	b.n	80057e4 <__smakebuf_r+0x4c>
 8005828:	08005089 	.word	0x08005089

0800582c <_malloc_r>:
 800582c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005830:	f101 050b 	add.w	r5, r1, #11
 8005834:	2d16      	cmp	r5, #22
 8005836:	b083      	sub	sp, #12
 8005838:	4606      	mov	r6, r0
 800583a:	d823      	bhi.n	8005884 <_malloc_r+0x58>
 800583c:	2910      	cmp	r1, #16
 800583e:	f200 80b9 	bhi.w	80059b4 <_malloc_r+0x188>
 8005842:	f000 fafb 	bl	8005e3c <__malloc_lock>
 8005846:	2510      	movs	r5, #16
 8005848:	2318      	movs	r3, #24
 800584a:	2002      	movs	r0, #2
 800584c:	4fc5      	ldr	r7, [pc, #788]	; (8005b64 <_malloc_r+0x338>)
 800584e:	443b      	add	r3, r7
 8005850:	f1a3 0208 	sub.w	r2, r3, #8
 8005854:	685c      	ldr	r4, [r3, #4]
 8005856:	4294      	cmp	r4, r2
 8005858:	f000 8166 	beq.w	8005b28 <_malloc_r+0x2fc>
 800585c:	6863      	ldr	r3, [r4, #4]
 800585e:	f023 0303 	bic.w	r3, r3, #3
 8005862:	4423      	add	r3, r4
 8005864:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005868:	685a      	ldr	r2, [r3, #4]
 800586a:	60e9      	str	r1, [r5, #12]
 800586c:	f042 0201 	orr.w	r2, r2, #1
 8005870:	608d      	str	r5, [r1, #8]
 8005872:	4630      	mov	r0, r6
 8005874:	605a      	str	r2, [r3, #4]
 8005876:	f000 fae7 	bl	8005e48 <__malloc_unlock>
 800587a:	3408      	adds	r4, #8
 800587c:	4620      	mov	r0, r4
 800587e:	b003      	add	sp, #12
 8005880:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005884:	f035 0507 	bics.w	r5, r5, #7
 8005888:	f100 8094 	bmi.w	80059b4 <_malloc_r+0x188>
 800588c:	42a9      	cmp	r1, r5
 800588e:	f200 8091 	bhi.w	80059b4 <_malloc_r+0x188>
 8005892:	f000 fad3 	bl	8005e3c <__malloc_lock>
 8005896:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800589a:	f0c0 8183 	bcc.w	8005ba4 <_malloc_r+0x378>
 800589e:	0a6b      	lsrs	r3, r5, #9
 80058a0:	f000 808f 	beq.w	80059c2 <_malloc_r+0x196>
 80058a4:	2b04      	cmp	r3, #4
 80058a6:	f200 8146 	bhi.w	8005b36 <_malloc_r+0x30a>
 80058aa:	09ab      	lsrs	r3, r5, #6
 80058ac:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80058b0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80058b4:	00c3      	lsls	r3, r0, #3
 80058b6:	4fab      	ldr	r7, [pc, #684]	; (8005b64 <_malloc_r+0x338>)
 80058b8:	443b      	add	r3, r7
 80058ba:	f1a3 0108 	sub.w	r1, r3, #8
 80058be:	685c      	ldr	r4, [r3, #4]
 80058c0:	42a1      	cmp	r1, r4
 80058c2:	d106      	bne.n	80058d2 <_malloc_r+0xa6>
 80058c4:	e00c      	b.n	80058e0 <_malloc_r+0xb4>
 80058c6:	2a00      	cmp	r2, #0
 80058c8:	f280 811d 	bge.w	8005b06 <_malloc_r+0x2da>
 80058cc:	68e4      	ldr	r4, [r4, #12]
 80058ce:	42a1      	cmp	r1, r4
 80058d0:	d006      	beq.n	80058e0 <_malloc_r+0xb4>
 80058d2:	6863      	ldr	r3, [r4, #4]
 80058d4:	f023 0303 	bic.w	r3, r3, #3
 80058d8:	1b5a      	subs	r2, r3, r5
 80058da:	2a0f      	cmp	r2, #15
 80058dc:	ddf3      	ble.n	80058c6 <_malloc_r+0x9a>
 80058de:	4660      	mov	r0, ip
 80058e0:	693c      	ldr	r4, [r7, #16]
 80058e2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005b78 <_malloc_r+0x34c>
 80058e6:	4564      	cmp	r4, ip
 80058e8:	d071      	beq.n	80059ce <_malloc_r+0x1a2>
 80058ea:	6863      	ldr	r3, [r4, #4]
 80058ec:	f023 0303 	bic.w	r3, r3, #3
 80058f0:	1b5a      	subs	r2, r3, r5
 80058f2:	2a0f      	cmp	r2, #15
 80058f4:	f300 8144 	bgt.w	8005b80 <_malloc_r+0x354>
 80058f8:	2a00      	cmp	r2, #0
 80058fa:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80058fe:	f280 8126 	bge.w	8005b4e <_malloc_r+0x322>
 8005902:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005906:	f080 8169 	bcs.w	8005bdc <_malloc_r+0x3b0>
 800590a:	08db      	lsrs	r3, r3, #3
 800590c:	1c59      	adds	r1, r3, #1
 800590e:	687a      	ldr	r2, [r7, #4]
 8005910:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005914:	f8c4 8008 	str.w	r8, [r4, #8]
 8005918:	f04f 0e01 	mov.w	lr, #1
 800591c:	109b      	asrs	r3, r3, #2
 800591e:	fa0e f303 	lsl.w	r3, lr, r3
 8005922:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005926:	4313      	orrs	r3, r2
 8005928:	f1ae 0208 	sub.w	r2, lr, #8
 800592c:	60e2      	str	r2, [r4, #12]
 800592e:	607b      	str	r3, [r7, #4]
 8005930:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005934:	f8c8 400c 	str.w	r4, [r8, #12]
 8005938:	1082      	asrs	r2, r0, #2
 800593a:	2401      	movs	r4, #1
 800593c:	4094      	lsls	r4, r2
 800593e:	429c      	cmp	r4, r3
 8005940:	d84b      	bhi.n	80059da <_malloc_r+0x1ae>
 8005942:	421c      	tst	r4, r3
 8005944:	d106      	bne.n	8005954 <_malloc_r+0x128>
 8005946:	f020 0003 	bic.w	r0, r0, #3
 800594a:	0064      	lsls	r4, r4, #1
 800594c:	421c      	tst	r4, r3
 800594e:	f100 0004 	add.w	r0, r0, #4
 8005952:	d0fa      	beq.n	800594a <_malloc_r+0x11e>
 8005954:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005958:	46ce      	mov	lr, r9
 800595a:	4680      	mov	r8, r0
 800595c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005960:	459e      	cmp	lr, r3
 8005962:	d107      	bne.n	8005974 <_malloc_r+0x148>
 8005964:	e122      	b.n	8005bac <_malloc_r+0x380>
 8005966:	2a00      	cmp	r2, #0
 8005968:	f280 8129 	bge.w	8005bbe <_malloc_r+0x392>
 800596c:	68db      	ldr	r3, [r3, #12]
 800596e:	459e      	cmp	lr, r3
 8005970:	f000 811c 	beq.w	8005bac <_malloc_r+0x380>
 8005974:	6859      	ldr	r1, [r3, #4]
 8005976:	f021 0103 	bic.w	r1, r1, #3
 800597a:	1b4a      	subs	r2, r1, r5
 800597c:	2a0f      	cmp	r2, #15
 800597e:	ddf2      	ble.n	8005966 <_malloc_r+0x13a>
 8005980:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005984:	195c      	adds	r4, r3, r5
 8005986:	f045 0501 	orr.w	r5, r5, #1
 800598a:	605d      	str	r5, [r3, #4]
 800598c:	f042 0501 	orr.w	r5, r2, #1
 8005990:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005994:	4630      	mov	r0, r6
 8005996:	f8ce 8008 	str.w	r8, [lr, #8]
 800599a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800599e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80059a2:	6065      	str	r5, [r4, #4]
 80059a4:	505a      	str	r2, [r3, r1]
 80059a6:	9301      	str	r3, [sp, #4]
 80059a8:	f000 fa4e 	bl	8005e48 <__malloc_unlock>
 80059ac:	9b01      	ldr	r3, [sp, #4]
 80059ae:	f103 0408 	add.w	r4, r3, #8
 80059b2:	e763      	b.n	800587c <_malloc_r+0x50>
 80059b4:	2400      	movs	r4, #0
 80059b6:	230c      	movs	r3, #12
 80059b8:	4620      	mov	r0, r4
 80059ba:	6033      	str	r3, [r6, #0]
 80059bc:	b003      	add	sp, #12
 80059be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059c2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80059c6:	2040      	movs	r0, #64	; 0x40
 80059c8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80059cc:	e773      	b.n	80058b6 <_malloc_r+0x8a>
 80059ce:	687b      	ldr	r3, [r7, #4]
 80059d0:	1082      	asrs	r2, r0, #2
 80059d2:	2401      	movs	r4, #1
 80059d4:	4094      	lsls	r4, r2
 80059d6:	429c      	cmp	r4, r3
 80059d8:	d9b3      	bls.n	8005942 <_malloc_r+0x116>
 80059da:	68bc      	ldr	r4, [r7, #8]
 80059dc:	6863      	ldr	r3, [r4, #4]
 80059de:	f023 0903 	bic.w	r9, r3, #3
 80059e2:	45a9      	cmp	r9, r5
 80059e4:	d303      	bcc.n	80059ee <_malloc_r+0x1c2>
 80059e6:	eba9 0305 	sub.w	r3, r9, r5
 80059ea:	2b0f      	cmp	r3, #15
 80059ec:	dc7b      	bgt.n	8005ae6 <_malloc_r+0x2ba>
 80059ee:	4b5e      	ldr	r3, [pc, #376]	; (8005b68 <_malloc_r+0x33c>)
 80059f0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005b7c <_malloc_r+0x350>
 80059f4:	681a      	ldr	r2, [r3, #0]
 80059f6:	f8da 3000 	ldr.w	r3, [sl]
 80059fa:	3301      	adds	r3, #1
 80059fc:	eb05 0802 	add.w	r8, r5, r2
 8005a00:	f000 8148 	beq.w	8005c94 <_malloc_r+0x468>
 8005a04:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005a08:	f108 080f 	add.w	r8, r8, #15
 8005a0c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005a10:	f028 080f 	bic.w	r8, r8, #15
 8005a14:	4641      	mov	r1, r8
 8005a16:	4630      	mov	r0, r6
 8005a18:	f000 ff08 	bl	800682c <_sbrk_r>
 8005a1c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005a20:	4683      	mov	fp, r0
 8005a22:	f000 8104 	beq.w	8005c2e <_malloc_r+0x402>
 8005a26:	eb04 0009 	add.w	r0, r4, r9
 8005a2a:	4558      	cmp	r0, fp
 8005a2c:	f200 80fd 	bhi.w	8005c2a <_malloc_r+0x3fe>
 8005a30:	4a4e      	ldr	r2, [pc, #312]	; (8005b6c <_malloc_r+0x340>)
 8005a32:	6813      	ldr	r3, [r2, #0]
 8005a34:	4443      	add	r3, r8
 8005a36:	6013      	str	r3, [r2, #0]
 8005a38:	f000 814d 	beq.w	8005cd6 <_malloc_r+0x4aa>
 8005a3c:	f8da 1000 	ldr.w	r1, [sl]
 8005a40:	3101      	adds	r1, #1
 8005a42:	bf1b      	ittet	ne
 8005a44:	ebab 0000 	subne.w	r0, fp, r0
 8005a48:	181b      	addne	r3, r3, r0
 8005a4a:	f8ca b000 	streq.w	fp, [sl]
 8005a4e:	6013      	strne	r3, [r2, #0]
 8005a50:	f01b 0307 	ands.w	r3, fp, #7
 8005a54:	f000 8134 	beq.w	8005cc0 <_malloc_r+0x494>
 8005a58:	f1c3 0108 	rsb	r1, r3, #8
 8005a5c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005a60:	448b      	add	fp, r1
 8005a62:	3308      	adds	r3, #8
 8005a64:	44d8      	add	r8, fp
 8005a66:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005a6a:	eba3 0808 	sub.w	r8, r3, r8
 8005a6e:	4641      	mov	r1, r8
 8005a70:	4630      	mov	r0, r6
 8005a72:	9201      	str	r2, [sp, #4]
 8005a74:	f000 feda 	bl	800682c <_sbrk_r>
 8005a78:	1c43      	adds	r3, r0, #1
 8005a7a:	9a01      	ldr	r2, [sp, #4]
 8005a7c:	f000 8146 	beq.w	8005d0c <_malloc_r+0x4e0>
 8005a80:	eba0 010b 	sub.w	r1, r0, fp
 8005a84:	4441      	add	r1, r8
 8005a86:	f041 0101 	orr.w	r1, r1, #1
 8005a8a:	6813      	ldr	r3, [r2, #0]
 8005a8c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005a90:	4443      	add	r3, r8
 8005a92:	42bc      	cmp	r4, r7
 8005a94:	f8cb 1004 	str.w	r1, [fp, #4]
 8005a98:	6013      	str	r3, [r2, #0]
 8005a9a:	d015      	beq.n	8005ac8 <_malloc_r+0x29c>
 8005a9c:	f1b9 0f0f 	cmp.w	r9, #15
 8005aa0:	f240 8130 	bls.w	8005d04 <_malloc_r+0x4d8>
 8005aa4:	6860      	ldr	r0, [r4, #4]
 8005aa6:	f1a9 010c 	sub.w	r1, r9, #12
 8005aaa:	f021 0107 	bic.w	r1, r1, #7
 8005aae:	f000 0001 	and.w	r0, r0, #1
 8005ab2:	eb04 0c01 	add.w	ip, r4, r1
 8005ab6:	4308      	orrs	r0, r1
 8005ab8:	f04f 0e05 	mov.w	lr, #5
 8005abc:	290f      	cmp	r1, #15
 8005abe:	6060      	str	r0, [r4, #4]
 8005ac0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005ac4:	f200 813a 	bhi.w	8005d3c <_malloc_r+0x510>
 8005ac8:	4a29      	ldr	r2, [pc, #164]	; (8005b70 <_malloc_r+0x344>)
 8005aca:	482a      	ldr	r0, [pc, #168]	; (8005b74 <_malloc_r+0x348>)
 8005acc:	6811      	ldr	r1, [r2, #0]
 8005ace:	68bc      	ldr	r4, [r7, #8]
 8005ad0:	428b      	cmp	r3, r1
 8005ad2:	6801      	ldr	r1, [r0, #0]
 8005ad4:	bf88      	it	hi
 8005ad6:	6013      	strhi	r3, [r2, #0]
 8005ad8:	6862      	ldr	r2, [r4, #4]
 8005ada:	428b      	cmp	r3, r1
 8005adc:	f022 0203 	bic.w	r2, r2, #3
 8005ae0:	bf88      	it	hi
 8005ae2:	6003      	strhi	r3, [r0, #0]
 8005ae4:	e0a7      	b.n	8005c36 <_malloc_r+0x40a>
 8005ae6:	1962      	adds	r2, r4, r5
 8005ae8:	f043 0301 	orr.w	r3, r3, #1
 8005aec:	f045 0501 	orr.w	r5, r5, #1
 8005af0:	6065      	str	r5, [r4, #4]
 8005af2:	4630      	mov	r0, r6
 8005af4:	60ba      	str	r2, [r7, #8]
 8005af6:	6053      	str	r3, [r2, #4]
 8005af8:	f000 f9a6 	bl	8005e48 <__malloc_unlock>
 8005afc:	3408      	adds	r4, #8
 8005afe:	4620      	mov	r0, r4
 8005b00:	b003      	add	sp, #12
 8005b02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b06:	4423      	add	r3, r4
 8005b08:	68e1      	ldr	r1, [r4, #12]
 8005b0a:	685a      	ldr	r2, [r3, #4]
 8005b0c:	68a5      	ldr	r5, [r4, #8]
 8005b0e:	f042 0201 	orr.w	r2, r2, #1
 8005b12:	60e9      	str	r1, [r5, #12]
 8005b14:	4630      	mov	r0, r6
 8005b16:	608d      	str	r5, [r1, #8]
 8005b18:	605a      	str	r2, [r3, #4]
 8005b1a:	f000 f995 	bl	8005e48 <__malloc_unlock>
 8005b1e:	3408      	adds	r4, #8
 8005b20:	4620      	mov	r0, r4
 8005b22:	b003      	add	sp, #12
 8005b24:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b28:	68dc      	ldr	r4, [r3, #12]
 8005b2a:	42a3      	cmp	r3, r4
 8005b2c:	bf08      	it	eq
 8005b2e:	3002      	addeq	r0, #2
 8005b30:	f43f aed6 	beq.w	80058e0 <_malloc_r+0xb4>
 8005b34:	e692      	b.n	800585c <_malloc_r+0x30>
 8005b36:	2b14      	cmp	r3, #20
 8005b38:	d971      	bls.n	8005c1e <_malloc_r+0x3f2>
 8005b3a:	2b54      	cmp	r3, #84	; 0x54
 8005b3c:	f200 80ad 	bhi.w	8005c9a <_malloc_r+0x46e>
 8005b40:	0b2b      	lsrs	r3, r5, #12
 8005b42:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005b46:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005b4a:	00c3      	lsls	r3, r0, #3
 8005b4c:	e6b3      	b.n	80058b6 <_malloc_r+0x8a>
 8005b4e:	4423      	add	r3, r4
 8005b50:	4630      	mov	r0, r6
 8005b52:	685a      	ldr	r2, [r3, #4]
 8005b54:	f042 0201 	orr.w	r2, r2, #1
 8005b58:	605a      	str	r2, [r3, #4]
 8005b5a:	3408      	adds	r4, #8
 8005b5c:	f000 f974 	bl	8005e48 <__malloc_unlock>
 8005b60:	e68c      	b.n	800587c <_malloc_r+0x50>
 8005b62:	bf00      	nop
 8005b64:	2000044c 	.word	0x2000044c
 8005b68:	20000a9c 	.word	0x20000a9c
 8005b6c:	20000a6c 	.word	0x20000a6c
 8005b70:	20000a94 	.word	0x20000a94
 8005b74:	20000a98 	.word	0x20000a98
 8005b78:	20000454 	.word	0x20000454
 8005b7c:	20000854 	.word	0x20000854
 8005b80:	1961      	adds	r1, r4, r5
 8005b82:	f045 0e01 	orr.w	lr, r5, #1
 8005b86:	f042 0501 	orr.w	r5, r2, #1
 8005b8a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005b8e:	4630      	mov	r0, r6
 8005b90:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005b94:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005b98:	604d      	str	r5, [r1, #4]
 8005b9a:	50e2      	str	r2, [r4, r3]
 8005b9c:	f000 f954 	bl	8005e48 <__malloc_unlock>
 8005ba0:	3408      	adds	r4, #8
 8005ba2:	e66b      	b.n	800587c <_malloc_r+0x50>
 8005ba4:	08e8      	lsrs	r0, r5, #3
 8005ba6:	f105 0308 	add.w	r3, r5, #8
 8005baa:	e64f      	b.n	800584c <_malloc_r+0x20>
 8005bac:	f108 0801 	add.w	r8, r8, #1
 8005bb0:	f018 0f03 	tst.w	r8, #3
 8005bb4:	f10e 0e08 	add.w	lr, lr, #8
 8005bb8:	f47f aed0 	bne.w	800595c <_malloc_r+0x130>
 8005bbc:	e052      	b.n	8005c64 <_malloc_r+0x438>
 8005bbe:	4419      	add	r1, r3
 8005bc0:	461c      	mov	r4, r3
 8005bc2:	684a      	ldr	r2, [r1, #4]
 8005bc4:	68db      	ldr	r3, [r3, #12]
 8005bc6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005bca:	f042 0201 	orr.w	r2, r2, #1
 8005bce:	604a      	str	r2, [r1, #4]
 8005bd0:	4630      	mov	r0, r6
 8005bd2:	60eb      	str	r3, [r5, #12]
 8005bd4:	609d      	str	r5, [r3, #8]
 8005bd6:	f000 f937 	bl	8005e48 <__malloc_unlock>
 8005bda:	e64f      	b.n	800587c <_malloc_r+0x50>
 8005bdc:	0a5a      	lsrs	r2, r3, #9
 8005bde:	2a04      	cmp	r2, #4
 8005be0:	d935      	bls.n	8005c4e <_malloc_r+0x422>
 8005be2:	2a14      	cmp	r2, #20
 8005be4:	d86f      	bhi.n	8005cc6 <_malloc_r+0x49a>
 8005be6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005bea:	00c9      	lsls	r1, r1, #3
 8005bec:	325b      	adds	r2, #91	; 0x5b
 8005bee:	eb07 0e01 	add.w	lr, r7, r1
 8005bf2:	5879      	ldr	r1, [r7, r1]
 8005bf4:	f1ae 0e08 	sub.w	lr, lr, #8
 8005bf8:	458e      	cmp	lr, r1
 8005bfa:	d058      	beq.n	8005cae <_malloc_r+0x482>
 8005bfc:	684a      	ldr	r2, [r1, #4]
 8005bfe:	f022 0203 	bic.w	r2, r2, #3
 8005c02:	429a      	cmp	r2, r3
 8005c04:	d902      	bls.n	8005c0c <_malloc_r+0x3e0>
 8005c06:	6889      	ldr	r1, [r1, #8]
 8005c08:	458e      	cmp	lr, r1
 8005c0a:	d1f7      	bne.n	8005bfc <_malloc_r+0x3d0>
 8005c0c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005c10:	687b      	ldr	r3, [r7, #4]
 8005c12:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005c16:	f8ce 4008 	str.w	r4, [lr, #8]
 8005c1a:	60cc      	str	r4, [r1, #12]
 8005c1c:	e68c      	b.n	8005938 <_malloc_r+0x10c>
 8005c1e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005c22:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005c26:	00c3      	lsls	r3, r0, #3
 8005c28:	e645      	b.n	80058b6 <_malloc_r+0x8a>
 8005c2a:	42bc      	cmp	r4, r7
 8005c2c:	d072      	beq.n	8005d14 <_malloc_r+0x4e8>
 8005c2e:	68bc      	ldr	r4, [r7, #8]
 8005c30:	6862      	ldr	r2, [r4, #4]
 8005c32:	f022 0203 	bic.w	r2, r2, #3
 8005c36:	4295      	cmp	r5, r2
 8005c38:	eba2 0305 	sub.w	r3, r2, r5
 8005c3c:	d802      	bhi.n	8005c44 <_malloc_r+0x418>
 8005c3e:	2b0f      	cmp	r3, #15
 8005c40:	f73f af51 	bgt.w	8005ae6 <_malloc_r+0x2ba>
 8005c44:	4630      	mov	r0, r6
 8005c46:	f000 f8ff 	bl	8005e48 <__malloc_unlock>
 8005c4a:	2400      	movs	r4, #0
 8005c4c:	e616      	b.n	800587c <_malloc_r+0x50>
 8005c4e:	099a      	lsrs	r2, r3, #6
 8005c50:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005c54:	00c9      	lsls	r1, r1, #3
 8005c56:	3238      	adds	r2, #56	; 0x38
 8005c58:	e7c9      	b.n	8005bee <_malloc_r+0x3c2>
 8005c5a:	f8d9 9000 	ldr.w	r9, [r9]
 8005c5e:	4599      	cmp	r9, r3
 8005c60:	f040 8083 	bne.w	8005d6a <_malloc_r+0x53e>
 8005c64:	f010 0f03 	tst.w	r0, #3
 8005c68:	f1a9 0308 	sub.w	r3, r9, #8
 8005c6c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005c70:	d1f3      	bne.n	8005c5a <_malloc_r+0x42e>
 8005c72:	687b      	ldr	r3, [r7, #4]
 8005c74:	ea23 0304 	bic.w	r3, r3, r4
 8005c78:	607b      	str	r3, [r7, #4]
 8005c7a:	0064      	lsls	r4, r4, #1
 8005c7c:	429c      	cmp	r4, r3
 8005c7e:	f63f aeac 	bhi.w	80059da <_malloc_r+0x1ae>
 8005c82:	b91c      	cbnz	r4, 8005c8c <_malloc_r+0x460>
 8005c84:	e6a9      	b.n	80059da <_malloc_r+0x1ae>
 8005c86:	0064      	lsls	r4, r4, #1
 8005c88:	f108 0804 	add.w	r8, r8, #4
 8005c8c:	421c      	tst	r4, r3
 8005c8e:	d0fa      	beq.n	8005c86 <_malloc_r+0x45a>
 8005c90:	4640      	mov	r0, r8
 8005c92:	e65f      	b.n	8005954 <_malloc_r+0x128>
 8005c94:	f108 0810 	add.w	r8, r8, #16
 8005c98:	e6bc      	b.n	8005a14 <_malloc_r+0x1e8>
 8005c9a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005c9e:	d826      	bhi.n	8005cee <_malloc_r+0x4c2>
 8005ca0:	0beb      	lsrs	r3, r5, #15
 8005ca2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005ca6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005caa:	00c3      	lsls	r3, r0, #3
 8005cac:	e603      	b.n	80058b6 <_malloc_r+0x8a>
 8005cae:	687b      	ldr	r3, [r7, #4]
 8005cb0:	1092      	asrs	r2, r2, #2
 8005cb2:	f04f 0801 	mov.w	r8, #1
 8005cb6:	fa08 f202 	lsl.w	r2, r8, r2
 8005cba:	4313      	orrs	r3, r2
 8005cbc:	607b      	str	r3, [r7, #4]
 8005cbe:	e7a8      	b.n	8005c12 <_malloc_r+0x3e6>
 8005cc0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005cc4:	e6ce      	b.n	8005a64 <_malloc_r+0x238>
 8005cc6:	2a54      	cmp	r2, #84	; 0x54
 8005cc8:	d829      	bhi.n	8005d1e <_malloc_r+0x4f2>
 8005cca:	0b1a      	lsrs	r2, r3, #12
 8005ccc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005cd0:	00c9      	lsls	r1, r1, #3
 8005cd2:	326e      	adds	r2, #110	; 0x6e
 8005cd4:	e78b      	b.n	8005bee <_malloc_r+0x3c2>
 8005cd6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005cda:	2900      	cmp	r1, #0
 8005cdc:	f47f aeae 	bne.w	8005a3c <_malloc_r+0x210>
 8005ce0:	eb09 0208 	add.w	r2, r9, r8
 8005ce4:	68b9      	ldr	r1, [r7, #8]
 8005ce6:	f042 0201 	orr.w	r2, r2, #1
 8005cea:	604a      	str	r2, [r1, #4]
 8005cec:	e6ec      	b.n	8005ac8 <_malloc_r+0x29c>
 8005cee:	f240 5254 	movw	r2, #1364	; 0x554
 8005cf2:	4293      	cmp	r3, r2
 8005cf4:	d81c      	bhi.n	8005d30 <_malloc_r+0x504>
 8005cf6:	0cab      	lsrs	r3, r5, #18
 8005cf8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005cfc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005d00:	00c3      	lsls	r3, r0, #3
 8005d02:	e5d8      	b.n	80058b6 <_malloc_r+0x8a>
 8005d04:	2301      	movs	r3, #1
 8005d06:	f8cb 3004 	str.w	r3, [fp, #4]
 8005d0a:	e79b      	b.n	8005c44 <_malloc_r+0x418>
 8005d0c:	2101      	movs	r1, #1
 8005d0e:	f04f 0800 	mov.w	r8, #0
 8005d12:	e6ba      	b.n	8005a8a <_malloc_r+0x25e>
 8005d14:	4a16      	ldr	r2, [pc, #88]	; (8005d70 <_malloc_r+0x544>)
 8005d16:	6813      	ldr	r3, [r2, #0]
 8005d18:	4443      	add	r3, r8
 8005d1a:	6013      	str	r3, [r2, #0]
 8005d1c:	e68e      	b.n	8005a3c <_malloc_r+0x210>
 8005d1e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005d22:	d814      	bhi.n	8005d4e <_malloc_r+0x522>
 8005d24:	0bda      	lsrs	r2, r3, #15
 8005d26:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005d2a:	00c9      	lsls	r1, r1, #3
 8005d2c:	3277      	adds	r2, #119	; 0x77
 8005d2e:	e75e      	b.n	8005bee <_malloc_r+0x3c2>
 8005d30:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005d34:	207f      	movs	r0, #127	; 0x7f
 8005d36:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005d3a:	e5bc      	b.n	80058b6 <_malloc_r+0x8a>
 8005d3c:	f104 0108 	add.w	r1, r4, #8
 8005d40:	4630      	mov	r0, r6
 8005d42:	9201      	str	r2, [sp, #4]
 8005d44:	f7ff fa48 	bl	80051d8 <_free_r>
 8005d48:	9a01      	ldr	r2, [sp, #4]
 8005d4a:	6813      	ldr	r3, [r2, #0]
 8005d4c:	e6bc      	b.n	8005ac8 <_malloc_r+0x29c>
 8005d4e:	f240 5154 	movw	r1, #1364	; 0x554
 8005d52:	428a      	cmp	r2, r1
 8005d54:	d805      	bhi.n	8005d62 <_malloc_r+0x536>
 8005d56:	0c9a      	lsrs	r2, r3, #18
 8005d58:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005d5c:	00c9      	lsls	r1, r1, #3
 8005d5e:	327c      	adds	r2, #124	; 0x7c
 8005d60:	e745      	b.n	8005bee <_malloc_r+0x3c2>
 8005d62:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005d66:	227e      	movs	r2, #126	; 0x7e
 8005d68:	e741      	b.n	8005bee <_malloc_r+0x3c2>
 8005d6a:	687b      	ldr	r3, [r7, #4]
 8005d6c:	e785      	b.n	8005c7a <_malloc_r+0x44e>
 8005d6e:	bf00      	nop
 8005d70:	20000a6c 	.word	0x20000a6c

08005d74 <memmove>:
 8005d74:	4288      	cmp	r0, r1
 8005d76:	b4f0      	push	{r4, r5, r6, r7}
 8005d78:	d90d      	bls.n	8005d96 <memmove+0x22>
 8005d7a:	188b      	adds	r3, r1, r2
 8005d7c:	4283      	cmp	r3, r0
 8005d7e:	d90a      	bls.n	8005d96 <memmove+0x22>
 8005d80:	1884      	adds	r4, r0, r2
 8005d82:	b132      	cbz	r2, 8005d92 <memmove+0x1e>
 8005d84:	4622      	mov	r2, r4
 8005d86:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005d8a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005d8e:	4299      	cmp	r1, r3
 8005d90:	d1f9      	bne.n	8005d86 <memmove+0x12>
 8005d92:	bcf0      	pop	{r4, r5, r6, r7}
 8005d94:	4770      	bx	lr
 8005d96:	2a0f      	cmp	r2, #15
 8005d98:	d949      	bls.n	8005e2e <memmove+0xba>
 8005d9a:	ea40 0301 	orr.w	r3, r0, r1
 8005d9e:	079b      	lsls	r3, r3, #30
 8005da0:	d147      	bne.n	8005e32 <memmove+0xbe>
 8005da2:	f1a2 0310 	sub.w	r3, r2, #16
 8005da6:	091b      	lsrs	r3, r3, #4
 8005da8:	f101 0720 	add.w	r7, r1, #32
 8005dac:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005db0:	f101 0410 	add.w	r4, r1, #16
 8005db4:	f100 0510 	add.w	r5, r0, #16
 8005db8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005dbc:	f845 6c10 	str.w	r6, [r5, #-16]
 8005dc0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005dc4:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005dc8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005dcc:	f845 6c08 	str.w	r6, [r5, #-8]
 8005dd0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005dd4:	f845 6c04 	str.w	r6, [r5, #-4]
 8005dd8:	3410      	adds	r4, #16
 8005dda:	42bc      	cmp	r4, r7
 8005ddc:	f105 0510 	add.w	r5, r5, #16
 8005de0:	d1ea      	bne.n	8005db8 <memmove+0x44>
 8005de2:	3301      	adds	r3, #1
 8005de4:	f002 050f 	and.w	r5, r2, #15
 8005de8:	011b      	lsls	r3, r3, #4
 8005dea:	2d03      	cmp	r5, #3
 8005dec:	4419      	add	r1, r3
 8005dee:	4403      	add	r3, r0
 8005df0:	d921      	bls.n	8005e36 <memmove+0xc2>
 8005df2:	1f1f      	subs	r7, r3, #4
 8005df4:	460e      	mov	r6, r1
 8005df6:	462c      	mov	r4, r5
 8005df8:	3c04      	subs	r4, #4
 8005dfa:	f856 cb04 	ldr.w	ip, [r6], #4
 8005dfe:	f847 cf04 	str.w	ip, [r7, #4]!
 8005e02:	2c03      	cmp	r4, #3
 8005e04:	d8f8      	bhi.n	8005df8 <memmove+0x84>
 8005e06:	1f2c      	subs	r4, r5, #4
 8005e08:	f024 0403 	bic.w	r4, r4, #3
 8005e0c:	3404      	adds	r4, #4
 8005e0e:	4423      	add	r3, r4
 8005e10:	4421      	add	r1, r4
 8005e12:	f002 0203 	and.w	r2, r2, #3
 8005e16:	2a00      	cmp	r2, #0
 8005e18:	d0bb      	beq.n	8005d92 <memmove+0x1e>
 8005e1a:	3b01      	subs	r3, #1
 8005e1c:	440a      	add	r2, r1
 8005e1e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005e22:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005e26:	4291      	cmp	r1, r2
 8005e28:	d1f9      	bne.n	8005e1e <memmove+0xaa>
 8005e2a:	bcf0      	pop	{r4, r5, r6, r7}
 8005e2c:	4770      	bx	lr
 8005e2e:	4603      	mov	r3, r0
 8005e30:	e7f1      	b.n	8005e16 <memmove+0xa2>
 8005e32:	4603      	mov	r3, r0
 8005e34:	e7f1      	b.n	8005e1a <memmove+0xa6>
 8005e36:	462a      	mov	r2, r5
 8005e38:	e7ed      	b.n	8005e16 <memmove+0xa2>
 8005e3a:	bf00      	nop

08005e3c <__malloc_lock>:
 8005e3c:	4801      	ldr	r0, [pc, #4]	; (8005e44 <__malloc_lock+0x8>)
 8005e3e:	f7ff bc79 	b.w	8005734 <__retarget_lock_acquire_recursive>
 8005e42:	bf00      	nop
 8005e44:	20000b04 	.word	0x20000b04

08005e48 <__malloc_unlock>:
 8005e48:	4801      	ldr	r0, [pc, #4]	; (8005e50 <__malloc_unlock+0x8>)
 8005e4a:	f7ff bc75 	b.w	8005738 <__retarget_lock_release_recursive>
 8005e4e:	bf00      	nop
 8005e50:	20000b04 	.word	0x20000b04

08005e54 <_Balloc>:
 8005e54:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005e56:	b570      	push	{r4, r5, r6, lr}
 8005e58:	4605      	mov	r5, r0
 8005e5a:	460c      	mov	r4, r1
 8005e5c:	b14b      	cbz	r3, 8005e72 <_Balloc+0x1e>
 8005e5e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005e62:	b180      	cbz	r0, 8005e86 <_Balloc+0x32>
 8005e64:	6802      	ldr	r2, [r0, #0]
 8005e66:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005e6a:	2300      	movs	r3, #0
 8005e6c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005e70:	bd70      	pop	{r4, r5, r6, pc}
 8005e72:	2221      	movs	r2, #33	; 0x21
 8005e74:	2104      	movs	r1, #4
 8005e76:	f000 fe1d 	bl	8006ab4 <_calloc_r>
 8005e7a:	4603      	mov	r3, r0
 8005e7c:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005e7e:	2800      	cmp	r0, #0
 8005e80:	d1ed      	bne.n	8005e5e <_Balloc+0xa>
 8005e82:	2000      	movs	r0, #0
 8005e84:	bd70      	pop	{r4, r5, r6, pc}
 8005e86:	2101      	movs	r1, #1
 8005e88:	fa01 f604 	lsl.w	r6, r1, r4
 8005e8c:	1d72      	adds	r2, r6, #5
 8005e8e:	4628      	mov	r0, r5
 8005e90:	0092      	lsls	r2, r2, #2
 8005e92:	f000 fe0f 	bl	8006ab4 <_calloc_r>
 8005e96:	2800      	cmp	r0, #0
 8005e98:	d0f3      	beq.n	8005e82 <_Balloc+0x2e>
 8005e9a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005e9e:	e7e4      	b.n	8005e6a <_Balloc+0x16>

08005ea0 <_Bfree>:
 8005ea0:	b131      	cbz	r1, 8005eb0 <_Bfree+0x10>
 8005ea2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005ea4:	684a      	ldr	r2, [r1, #4]
 8005ea6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005eaa:	6008      	str	r0, [r1, #0]
 8005eac:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005eb0:	4770      	bx	lr
 8005eb2:	bf00      	nop

08005eb4 <__multadd>:
 8005eb4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005eb6:	690c      	ldr	r4, [r1, #16]
 8005eb8:	b083      	sub	sp, #12
 8005eba:	460d      	mov	r5, r1
 8005ebc:	4606      	mov	r6, r0
 8005ebe:	f101 0c14 	add.w	ip, r1, #20
 8005ec2:	2700      	movs	r7, #0
 8005ec4:	f8dc 0000 	ldr.w	r0, [ip]
 8005ec8:	b281      	uxth	r1, r0
 8005eca:	fb02 3301 	mla	r3, r2, r1, r3
 8005ece:	0c01      	lsrs	r1, r0, #16
 8005ed0:	0c18      	lsrs	r0, r3, #16
 8005ed2:	fb02 0101 	mla	r1, r2, r1, r0
 8005ed6:	b29b      	uxth	r3, r3
 8005ed8:	3701      	adds	r7, #1
 8005eda:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005ede:	42bc      	cmp	r4, r7
 8005ee0:	f84c 3b04 	str.w	r3, [ip], #4
 8005ee4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005ee8:	dcec      	bgt.n	8005ec4 <__multadd+0x10>
 8005eea:	b13b      	cbz	r3, 8005efc <__multadd+0x48>
 8005eec:	68aa      	ldr	r2, [r5, #8]
 8005eee:	42a2      	cmp	r2, r4
 8005ef0:	dd07      	ble.n	8005f02 <__multadd+0x4e>
 8005ef2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005ef6:	3401      	adds	r4, #1
 8005ef8:	6153      	str	r3, [r2, #20]
 8005efa:	612c      	str	r4, [r5, #16]
 8005efc:	4628      	mov	r0, r5
 8005efe:	b003      	add	sp, #12
 8005f00:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005f02:	6869      	ldr	r1, [r5, #4]
 8005f04:	9301      	str	r3, [sp, #4]
 8005f06:	3101      	adds	r1, #1
 8005f08:	4630      	mov	r0, r6
 8005f0a:	f7ff ffa3 	bl	8005e54 <_Balloc>
 8005f0e:	692a      	ldr	r2, [r5, #16]
 8005f10:	3202      	adds	r2, #2
 8005f12:	f105 010c 	add.w	r1, r5, #12
 8005f16:	4607      	mov	r7, r0
 8005f18:	0092      	lsls	r2, r2, #2
 8005f1a:	300c      	adds	r0, #12
 8005f1c:	f7fa faf0 	bl	8000500 <memcpy>
 8005f20:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005f22:	6869      	ldr	r1, [r5, #4]
 8005f24:	9b01      	ldr	r3, [sp, #4]
 8005f26:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005f2a:	6028      	str	r0, [r5, #0]
 8005f2c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005f30:	463d      	mov	r5, r7
 8005f32:	e7de      	b.n	8005ef2 <__multadd+0x3e>

08005f34 <__hi0bits>:
 8005f34:	0c02      	lsrs	r2, r0, #16
 8005f36:	0412      	lsls	r2, r2, #16
 8005f38:	4603      	mov	r3, r0
 8005f3a:	b9c2      	cbnz	r2, 8005f6e <__hi0bits+0x3a>
 8005f3c:	0403      	lsls	r3, r0, #16
 8005f3e:	2010      	movs	r0, #16
 8005f40:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005f44:	bf04      	itt	eq
 8005f46:	021b      	lsleq	r3, r3, #8
 8005f48:	3008      	addeq	r0, #8
 8005f4a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005f4e:	bf04      	itt	eq
 8005f50:	011b      	lsleq	r3, r3, #4
 8005f52:	3004      	addeq	r0, #4
 8005f54:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005f58:	bf04      	itt	eq
 8005f5a:	009b      	lsleq	r3, r3, #2
 8005f5c:	3002      	addeq	r0, #2
 8005f5e:	2b00      	cmp	r3, #0
 8005f60:	db04      	blt.n	8005f6c <__hi0bits+0x38>
 8005f62:	005b      	lsls	r3, r3, #1
 8005f64:	d501      	bpl.n	8005f6a <__hi0bits+0x36>
 8005f66:	3001      	adds	r0, #1
 8005f68:	4770      	bx	lr
 8005f6a:	2020      	movs	r0, #32
 8005f6c:	4770      	bx	lr
 8005f6e:	2000      	movs	r0, #0
 8005f70:	e7e6      	b.n	8005f40 <__hi0bits+0xc>
 8005f72:	bf00      	nop

08005f74 <__lo0bits>:
 8005f74:	6803      	ldr	r3, [r0, #0]
 8005f76:	f013 0207 	ands.w	r2, r3, #7
 8005f7a:	4601      	mov	r1, r0
 8005f7c:	d007      	beq.n	8005f8e <__lo0bits+0x1a>
 8005f7e:	07da      	lsls	r2, r3, #31
 8005f80:	d41f      	bmi.n	8005fc2 <__lo0bits+0x4e>
 8005f82:	0798      	lsls	r0, r3, #30
 8005f84:	d51f      	bpl.n	8005fc6 <__lo0bits+0x52>
 8005f86:	085b      	lsrs	r3, r3, #1
 8005f88:	600b      	str	r3, [r1, #0]
 8005f8a:	2001      	movs	r0, #1
 8005f8c:	4770      	bx	lr
 8005f8e:	b298      	uxth	r0, r3
 8005f90:	b1a0      	cbz	r0, 8005fbc <__lo0bits+0x48>
 8005f92:	4610      	mov	r0, r2
 8005f94:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005f98:	bf04      	itt	eq
 8005f9a:	0a1b      	lsreq	r3, r3, #8
 8005f9c:	3008      	addeq	r0, #8
 8005f9e:	071a      	lsls	r2, r3, #28
 8005fa0:	bf04      	itt	eq
 8005fa2:	091b      	lsreq	r3, r3, #4
 8005fa4:	3004      	addeq	r0, #4
 8005fa6:	079a      	lsls	r2, r3, #30
 8005fa8:	bf04      	itt	eq
 8005faa:	089b      	lsreq	r3, r3, #2
 8005fac:	3002      	addeq	r0, #2
 8005fae:	07da      	lsls	r2, r3, #31
 8005fb0:	d402      	bmi.n	8005fb8 <__lo0bits+0x44>
 8005fb2:	085b      	lsrs	r3, r3, #1
 8005fb4:	d00b      	beq.n	8005fce <__lo0bits+0x5a>
 8005fb6:	3001      	adds	r0, #1
 8005fb8:	600b      	str	r3, [r1, #0]
 8005fba:	4770      	bx	lr
 8005fbc:	0c1b      	lsrs	r3, r3, #16
 8005fbe:	2010      	movs	r0, #16
 8005fc0:	e7e8      	b.n	8005f94 <__lo0bits+0x20>
 8005fc2:	2000      	movs	r0, #0
 8005fc4:	4770      	bx	lr
 8005fc6:	089b      	lsrs	r3, r3, #2
 8005fc8:	600b      	str	r3, [r1, #0]
 8005fca:	2002      	movs	r0, #2
 8005fcc:	4770      	bx	lr
 8005fce:	2020      	movs	r0, #32
 8005fd0:	4770      	bx	lr
 8005fd2:	bf00      	nop

08005fd4 <__i2b>:
 8005fd4:	b510      	push	{r4, lr}
 8005fd6:	460c      	mov	r4, r1
 8005fd8:	2101      	movs	r1, #1
 8005fda:	f7ff ff3b 	bl	8005e54 <_Balloc>
 8005fde:	2201      	movs	r2, #1
 8005fe0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8005fe4:	bd10      	pop	{r4, pc}
 8005fe6:	bf00      	nop

08005fe8 <__multiply>:
 8005fe8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005fec:	690e      	ldr	r6, [r1, #16]
 8005fee:	6914      	ldr	r4, [r2, #16]
 8005ff0:	42a6      	cmp	r6, r4
 8005ff2:	b083      	sub	sp, #12
 8005ff4:	460f      	mov	r7, r1
 8005ff6:	4615      	mov	r5, r2
 8005ff8:	da04      	bge.n	8006004 <__multiply+0x1c>
 8005ffa:	4632      	mov	r2, r6
 8005ffc:	462f      	mov	r7, r5
 8005ffe:	4626      	mov	r6, r4
 8006000:	460d      	mov	r5, r1
 8006002:	4614      	mov	r4, r2
 8006004:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006008:	eb06 0804 	add.w	r8, r6, r4
 800600c:	4543      	cmp	r3, r8
 800600e:	bfb8      	it	lt
 8006010:	3101      	addlt	r1, #1
 8006012:	f7ff ff1f 	bl	8005e54 <_Balloc>
 8006016:	f100 0914 	add.w	r9, r0, #20
 800601a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800601e:	45f1      	cmp	r9, lr
 8006020:	9000      	str	r0, [sp, #0]
 8006022:	d205      	bcs.n	8006030 <__multiply+0x48>
 8006024:	464b      	mov	r3, r9
 8006026:	2200      	movs	r2, #0
 8006028:	f843 2b04 	str.w	r2, [r3], #4
 800602c:	459e      	cmp	lr, r3
 800602e:	d8fb      	bhi.n	8006028 <__multiply+0x40>
 8006030:	f105 0a14 	add.w	sl, r5, #20
 8006034:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006038:	f107 0314 	add.w	r3, r7, #20
 800603c:	45a2      	cmp	sl, r4
 800603e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006042:	d261      	bcs.n	8006108 <__multiply+0x120>
 8006044:	1b64      	subs	r4, r4, r5
 8006046:	3c15      	subs	r4, #21
 8006048:	f024 0403 	bic.w	r4, r4, #3
 800604c:	f8cd e004 	str.w	lr, [sp, #4]
 8006050:	44a2      	add	sl, r4
 8006052:	f105 0210 	add.w	r2, r5, #16
 8006056:	469e      	mov	lr, r3
 8006058:	e005      	b.n	8006066 <__multiply+0x7e>
 800605a:	0c2d      	lsrs	r5, r5, #16
 800605c:	d12b      	bne.n	80060b6 <__multiply+0xce>
 800605e:	4592      	cmp	sl, r2
 8006060:	f109 0904 	add.w	r9, r9, #4
 8006064:	d04e      	beq.n	8006104 <__multiply+0x11c>
 8006066:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800606a:	fa1f fb85 	uxth.w	fp, r5
 800606e:	f1bb 0f00 	cmp.w	fp, #0
 8006072:	d0f2      	beq.n	800605a <__multiply+0x72>
 8006074:	4677      	mov	r7, lr
 8006076:	464e      	mov	r6, r9
 8006078:	2000      	movs	r0, #0
 800607a:	e000      	b.n	800607e <__multiply+0x96>
 800607c:	4626      	mov	r6, r4
 800607e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006082:	6834      	ldr	r4, [r6, #0]
 8006084:	b28b      	uxth	r3, r1
 8006086:	b2a5      	uxth	r5, r4
 8006088:	0c09      	lsrs	r1, r1, #16
 800608a:	0c24      	lsrs	r4, r4, #16
 800608c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006090:	4403      	add	r3, r0
 8006092:	fb0b 4001 	mla	r0, fp, r1, r4
 8006096:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800609a:	4634      	mov	r4, r6
 800609c:	b29b      	uxth	r3, r3
 800609e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80060a2:	45bc      	cmp	ip, r7
 80060a4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80060a8:	f844 3b04 	str.w	r3, [r4], #4
 80060ac:	d8e6      	bhi.n	800607c <__multiply+0x94>
 80060ae:	6070      	str	r0, [r6, #4]
 80060b0:	6815      	ldr	r5, [r2, #0]
 80060b2:	0c2d      	lsrs	r5, r5, #16
 80060b4:	d0d3      	beq.n	800605e <__multiply+0x76>
 80060b6:	f8d9 3000 	ldr.w	r3, [r9]
 80060ba:	4676      	mov	r6, lr
 80060bc:	4618      	mov	r0, r3
 80060be:	46cb      	mov	fp, r9
 80060c0:	2100      	movs	r1, #0
 80060c2:	e000      	b.n	80060c6 <__multiply+0xde>
 80060c4:	46a3      	mov	fp, r4
 80060c6:	8834      	ldrh	r4, [r6, #0]
 80060c8:	0c00      	lsrs	r0, r0, #16
 80060ca:	fb05 0004 	mla	r0, r5, r4, r0
 80060ce:	4401      	add	r1, r0
 80060d0:	b29b      	uxth	r3, r3
 80060d2:	465c      	mov	r4, fp
 80060d4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80060d8:	f844 3b04 	str.w	r3, [r4], #4
 80060dc:	f856 3b04 	ldr.w	r3, [r6], #4
 80060e0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80060e4:	0c1b      	lsrs	r3, r3, #16
 80060e6:	b287      	uxth	r7, r0
 80060e8:	fb05 7303 	mla	r3, r5, r3, r7
 80060ec:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80060f0:	45b4      	cmp	ip, r6
 80060f2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80060f6:	d8e5      	bhi.n	80060c4 <__multiply+0xdc>
 80060f8:	4592      	cmp	sl, r2
 80060fa:	f8cb 3004 	str.w	r3, [fp, #4]
 80060fe:	f109 0904 	add.w	r9, r9, #4
 8006102:	d1b0      	bne.n	8006066 <__multiply+0x7e>
 8006104:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006108:	f1b8 0f00 	cmp.w	r8, #0
 800610c:	dd0b      	ble.n	8006126 <__multiply+0x13e>
 800610e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006112:	f1ae 0e04 	sub.w	lr, lr, #4
 8006116:	b11b      	cbz	r3, 8006120 <__multiply+0x138>
 8006118:	e005      	b.n	8006126 <__multiply+0x13e>
 800611a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800611e:	b913      	cbnz	r3, 8006126 <__multiply+0x13e>
 8006120:	f1b8 0801 	subs.w	r8, r8, #1
 8006124:	d1f9      	bne.n	800611a <__multiply+0x132>
 8006126:	9800      	ldr	r0, [sp, #0]
 8006128:	f8c0 8010 	str.w	r8, [r0, #16]
 800612c:	b003      	add	sp, #12
 800612e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006132:	bf00      	nop

08006134 <__pow5mult>:
 8006134:	f012 0303 	ands.w	r3, r2, #3
 8006138:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800613c:	4614      	mov	r4, r2
 800613e:	4607      	mov	r7, r0
 8006140:	d12e      	bne.n	80061a0 <__pow5mult+0x6c>
 8006142:	460d      	mov	r5, r1
 8006144:	10a4      	asrs	r4, r4, #2
 8006146:	d01c      	beq.n	8006182 <__pow5mult+0x4e>
 8006148:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800614a:	b396      	cbz	r6, 80061b2 <__pow5mult+0x7e>
 800614c:	07e3      	lsls	r3, r4, #31
 800614e:	f04f 0800 	mov.w	r8, #0
 8006152:	d406      	bmi.n	8006162 <__pow5mult+0x2e>
 8006154:	1064      	asrs	r4, r4, #1
 8006156:	d014      	beq.n	8006182 <__pow5mult+0x4e>
 8006158:	6830      	ldr	r0, [r6, #0]
 800615a:	b1a8      	cbz	r0, 8006188 <__pow5mult+0x54>
 800615c:	4606      	mov	r6, r0
 800615e:	07e3      	lsls	r3, r4, #31
 8006160:	d5f8      	bpl.n	8006154 <__pow5mult+0x20>
 8006162:	4632      	mov	r2, r6
 8006164:	4629      	mov	r1, r5
 8006166:	4638      	mov	r0, r7
 8006168:	f7ff ff3e 	bl	8005fe8 <__multiply>
 800616c:	b1b5      	cbz	r5, 800619c <__pow5mult+0x68>
 800616e:	686a      	ldr	r2, [r5, #4]
 8006170:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006172:	1064      	asrs	r4, r4, #1
 8006174:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006178:	6029      	str	r1, [r5, #0]
 800617a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800617e:	4605      	mov	r5, r0
 8006180:	d1ea      	bne.n	8006158 <__pow5mult+0x24>
 8006182:	4628      	mov	r0, r5
 8006184:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006188:	4632      	mov	r2, r6
 800618a:	4631      	mov	r1, r6
 800618c:	4638      	mov	r0, r7
 800618e:	f7ff ff2b 	bl	8005fe8 <__multiply>
 8006192:	6030      	str	r0, [r6, #0]
 8006194:	f8c0 8000 	str.w	r8, [r0]
 8006198:	4606      	mov	r6, r0
 800619a:	e7e0      	b.n	800615e <__pow5mult+0x2a>
 800619c:	4605      	mov	r5, r0
 800619e:	e7d9      	b.n	8006154 <__pow5mult+0x20>
 80061a0:	3b01      	subs	r3, #1
 80061a2:	4a0b      	ldr	r2, [pc, #44]	; (80061d0 <__pow5mult+0x9c>)
 80061a4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80061a8:	2300      	movs	r3, #0
 80061aa:	f7ff fe83 	bl	8005eb4 <__multadd>
 80061ae:	4605      	mov	r5, r0
 80061b0:	e7c8      	b.n	8006144 <__pow5mult+0x10>
 80061b2:	2101      	movs	r1, #1
 80061b4:	4638      	mov	r0, r7
 80061b6:	f7ff fe4d 	bl	8005e54 <_Balloc>
 80061ba:	f240 2371 	movw	r3, #625	; 0x271
 80061be:	6143      	str	r3, [r0, #20]
 80061c0:	2201      	movs	r2, #1
 80061c2:	2300      	movs	r3, #0
 80061c4:	6102      	str	r2, [r0, #16]
 80061c6:	4606      	mov	r6, r0
 80061c8:	64b8      	str	r0, [r7, #72]	; 0x48
 80061ca:	6003      	str	r3, [r0, #0]
 80061cc:	e7be      	b.n	800614c <__pow5mult+0x18>
 80061ce:	bf00      	nop
 80061d0:	080071b8 	.word	0x080071b8

080061d4 <__lshift>:
 80061d4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80061d8:	4691      	mov	r9, r2
 80061da:	690a      	ldr	r2, [r1, #16]
 80061dc:	460e      	mov	r6, r1
 80061de:	ea4f 1469 	mov.w	r4, r9, asr #5
 80061e2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80061e6:	eb04 0802 	add.w	r8, r4, r2
 80061ea:	f108 0501 	add.w	r5, r8, #1
 80061ee:	429d      	cmp	r5, r3
 80061f0:	4607      	mov	r7, r0
 80061f2:	dd04      	ble.n	80061fe <__lshift+0x2a>
 80061f4:	005b      	lsls	r3, r3, #1
 80061f6:	429d      	cmp	r5, r3
 80061f8:	f101 0101 	add.w	r1, r1, #1
 80061fc:	dcfa      	bgt.n	80061f4 <__lshift+0x20>
 80061fe:	4638      	mov	r0, r7
 8006200:	f7ff fe28 	bl	8005e54 <_Balloc>
 8006204:	2c00      	cmp	r4, #0
 8006206:	f100 0314 	add.w	r3, r0, #20
 800620a:	dd37      	ble.n	800627c <__lshift+0xa8>
 800620c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006210:	2200      	movs	r2, #0
 8006212:	f843 2b04 	str.w	r2, [r3], #4
 8006216:	428b      	cmp	r3, r1
 8006218:	d1fb      	bne.n	8006212 <__lshift+0x3e>
 800621a:	6934      	ldr	r4, [r6, #16]
 800621c:	f106 0314 	add.w	r3, r6, #20
 8006220:	f019 091f 	ands.w	r9, r9, #31
 8006224:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006228:	d020      	beq.n	800626c <__lshift+0x98>
 800622a:	f1c9 0e20 	rsb	lr, r9, #32
 800622e:	2200      	movs	r2, #0
 8006230:	e000      	b.n	8006234 <__lshift+0x60>
 8006232:	4651      	mov	r1, sl
 8006234:	681c      	ldr	r4, [r3, #0]
 8006236:	468a      	mov	sl, r1
 8006238:	fa04 f409 	lsl.w	r4, r4, r9
 800623c:	4314      	orrs	r4, r2
 800623e:	f84a 4b04 	str.w	r4, [sl], #4
 8006242:	f853 2b04 	ldr.w	r2, [r3], #4
 8006246:	4563      	cmp	r3, ip
 8006248:	fa22 f20e 	lsr.w	r2, r2, lr
 800624c:	d3f1      	bcc.n	8006232 <__lshift+0x5e>
 800624e:	604a      	str	r2, [r1, #4]
 8006250:	b10a      	cbz	r2, 8006256 <__lshift+0x82>
 8006252:	f108 0502 	add.w	r5, r8, #2
 8006256:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006258:	6872      	ldr	r2, [r6, #4]
 800625a:	3d01      	subs	r5, #1
 800625c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006260:	6105      	str	r5, [r0, #16]
 8006262:	6031      	str	r1, [r6, #0]
 8006264:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006268:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800626c:	3904      	subs	r1, #4
 800626e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006272:	f841 2f04 	str.w	r2, [r1, #4]!
 8006276:	459c      	cmp	ip, r3
 8006278:	d8f9      	bhi.n	800626e <__lshift+0x9a>
 800627a:	e7ec      	b.n	8006256 <__lshift+0x82>
 800627c:	4619      	mov	r1, r3
 800627e:	e7cc      	b.n	800621a <__lshift+0x46>

08006280 <__mcmp>:
 8006280:	b430      	push	{r4, r5}
 8006282:	690b      	ldr	r3, [r1, #16]
 8006284:	4605      	mov	r5, r0
 8006286:	6900      	ldr	r0, [r0, #16]
 8006288:	1ac0      	subs	r0, r0, r3
 800628a:	d10f      	bne.n	80062ac <__mcmp+0x2c>
 800628c:	009b      	lsls	r3, r3, #2
 800628e:	3514      	adds	r5, #20
 8006290:	3114      	adds	r1, #20
 8006292:	4419      	add	r1, r3
 8006294:	442b      	add	r3, r5
 8006296:	e001      	b.n	800629c <__mcmp+0x1c>
 8006298:	429d      	cmp	r5, r3
 800629a:	d207      	bcs.n	80062ac <__mcmp+0x2c>
 800629c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80062a0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80062a4:	4294      	cmp	r4, r2
 80062a6:	d0f7      	beq.n	8006298 <__mcmp+0x18>
 80062a8:	d302      	bcc.n	80062b0 <__mcmp+0x30>
 80062aa:	2001      	movs	r0, #1
 80062ac:	bc30      	pop	{r4, r5}
 80062ae:	4770      	bx	lr
 80062b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80062b4:	e7fa      	b.n	80062ac <__mcmp+0x2c>
 80062b6:	bf00      	nop

080062b8 <__mdiff>:
 80062b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80062bc:	6913      	ldr	r3, [r2, #16]
 80062be:	690d      	ldr	r5, [r1, #16]
 80062c0:	1aed      	subs	r5, r5, r3
 80062c2:	2d00      	cmp	r5, #0
 80062c4:	460e      	mov	r6, r1
 80062c6:	4690      	mov	r8, r2
 80062c8:	f101 0414 	add.w	r4, r1, #20
 80062cc:	f102 0714 	add.w	r7, r2, #20
 80062d0:	d114      	bne.n	80062fc <__mdiff+0x44>
 80062d2:	009b      	lsls	r3, r3, #2
 80062d4:	18e2      	adds	r2, r4, r3
 80062d6:	443b      	add	r3, r7
 80062d8:	e001      	b.n	80062de <__mdiff+0x26>
 80062da:	42a2      	cmp	r2, r4
 80062dc:	d959      	bls.n	8006392 <__mdiff+0xda>
 80062de:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80062e2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80062e6:	458c      	cmp	ip, r1
 80062e8:	d0f7      	beq.n	80062da <__mdiff+0x22>
 80062ea:	d209      	bcs.n	8006300 <__mdiff+0x48>
 80062ec:	4622      	mov	r2, r4
 80062ee:	4633      	mov	r3, r6
 80062f0:	463c      	mov	r4, r7
 80062f2:	4646      	mov	r6, r8
 80062f4:	4617      	mov	r7, r2
 80062f6:	4698      	mov	r8, r3
 80062f8:	2501      	movs	r5, #1
 80062fa:	e001      	b.n	8006300 <__mdiff+0x48>
 80062fc:	dbf6      	blt.n	80062ec <__mdiff+0x34>
 80062fe:	2500      	movs	r5, #0
 8006300:	6871      	ldr	r1, [r6, #4]
 8006302:	f7ff fda7 	bl	8005e54 <_Balloc>
 8006306:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800630a:	6936      	ldr	r6, [r6, #16]
 800630c:	60c5      	str	r5, [r0, #12]
 800630e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006312:	46bc      	mov	ip, r7
 8006314:	f100 0514 	add.w	r5, r0, #20
 8006318:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800631c:	2300      	movs	r3, #0
 800631e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006322:	f854 8b04 	ldr.w	r8, [r4], #4
 8006326:	b28a      	uxth	r2, r1
 8006328:	fa13 f388 	uxtah	r3, r3, r8
 800632c:	0c09      	lsrs	r1, r1, #16
 800632e:	1a9a      	subs	r2, r3, r2
 8006330:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006334:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006338:	b292      	uxth	r2, r2
 800633a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800633e:	45e6      	cmp	lr, ip
 8006340:	f845 2b04 	str.w	r2, [r5], #4
 8006344:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006348:	d8e9      	bhi.n	800631e <__mdiff+0x66>
 800634a:	42a7      	cmp	r7, r4
 800634c:	d917      	bls.n	800637e <__mdiff+0xc6>
 800634e:	46ae      	mov	lr, r5
 8006350:	46a4      	mov	ip, r4
 8006352:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006356:	fa13 f382 	uxtah	r3, r3, r2
 800635a:	1419      	asrs	r1, r3, #16
 800635c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006360:	b29b      	uxth	r3, r3
 8006362:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006366:	4567      	cmp	r7, ip
 8006368:	f84e 2b04 	str.w	r2, [lr], #4
 800636c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006370:	d8ef      	bhi.n	8006352 <__mdiff+0x9a>
 8006372:	43e4      	mvns	r4, r4
 8006374:	4427      	add	r7, r4
 8006376:	f027 0703 	bic.w	r7, r7, #3
 800637a:	3704      	adds	r7, #4
 800637c:	443d      	add	r5, r7
 800637e:	3d04      	subs	r5, #4
 8006380:	b922      	cbnz	r2, 800638c <__mdiff+0xd4>
 8006382:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006386:	3e01      	subs	r6, #1
 8006388:	2b00      	cmp	r3, #0
 800638a:	d0fa      	beq.n	8006382 <__mdiff+0xca>
 800638c:	6106      	str	r6, [r0, #16]
 800638e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006392:	2100      	movs	r1, #0
 8006394:	f7ff fd5e 	bl	8005e54 <_Balloc>
 8006398:	2201      	movs	r2, #1
 800639a:	2300      	movs	r3, #0
 800639c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80063a0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080063a4 <__d2b>:
 80063a4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80063a8:	460f      	mov	r7, r1
 80063aa:	b083      	sub	sp, #12
 80063ac:	2101      	movs	r1, #1
 80063ae:	ec55 4b10 	vmov	r4, r5, d0
 80063b2:	4616      	mov	r6, r2
 80063b4:	f7ff fd4e 	bl	8005e54 <_Balloc>
 80063b8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80063bc:	4681      	mov	r9, r0
 80063be:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80063c2:	f1b8 0f00 	cmp.w	r8, #0
 80063c6:	d001      	beq.n	80063cc <__d2b+0x28>
 80063c8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80063cc:	2c00      	cmp	r4, #0
 80063ce:	9301      	str	r3, [sp, #4]
 80063d0:	d024      	beq.n	800641c <__d2b+0x78>
 80063d2:	a802      	add	r0, sp, #8
 80063d4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80063d8:	f7ff fdcc 	bl	8005f74 <__lo0bits>
 80063dc:	2800      	cmp	r0, #0
 80063de:	d136      	bne.n	800644e <__d2b+0xaa>
 80063e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80063e4:	f8c9 2014 	str.w	r2, [r9, #20]
 80063e8:	2b00      	cmp	r3, #0
 80063ea:	bf0c      	ite	eq
 80063ec:	2101      	moveq	r1, #1
 80063ee:	2102      	movne	r1, #2
 80063f0:	f8c9 3018 	str.w	r3, [r9, #24]
 80063f4:	f8c9 1010 	str.w	r1, [r9, #16]
 80063f8:	f1b8 0f00 	cmp.w	r8, #0
 80063fc:	d11b      	bne.n	8006436 <__d2b+0x92>
 80063fe:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006402:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006406:	6038      	str	r0, [r7, #0]
 8006408:	6918      	ldr	r0, [r3, #16]
 800640a:	f7ff fd93 	bl	8005f34 <__hi0bits>
 800640e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006412:	6030      	str	r0, [r6, #0]
 8006414:	4648      	mov	r0, r9
 8006416:	b003      	add	sp, #12
 8006418:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800641c:	a801      	add	r0, sp, #4
 800641e:	f7ff fda9 	bl	8005f74 <__lo0bits>
 8006422:	9b01      	ldr	r3, [sp, #4]
 8006424:	f8c9 3014 	str.w	r3, [r9, #20]
 8006428:	2101      	movs	r1, #1
 800642a:	3020      	adds	r0, #32
 800642c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006430:	f1b8 0f00 	cmp.w	r8, #0
 8006434:	d0e3      	beq.n	80063fe <__d2b+0x5a>
 8006436:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800643a:	eb08 0300 	add.w	r3, r8, r0
 800643e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006442:	603b      	str	r3, [r7, #0]
 8006444:	6030      	str	r0, [r6, #0]
 8006446:	4648      	mov	r0, r9
 8006448:	b003      	add	sp, #12
 800644a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800644e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006452:	f1c0 0220 	rsb	r2, r0, #32
 8006456:	fa03 f202 	lsl.w	r2, r3, r2
 800645a:	430a      	orrs	r2, r1
 800645c:	40c3      	lsrs	r3, r0
 800645e:	9301      	str	r3, [sp, #4]
 8006460:	f8c9 2014 	str.w	r2, [r9, #20]
 8006464:	e7c0      	b.n	80063e8 <__d2b+0x44>
 8006466:	bf00      	nop

08006468 <_realloc_r>:
 8006468:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800646c:	4692      	mov	sl, r2
 800646e:	b083      	sub	sp, #12
 8006470:	2900      	cmp	r1, #0
 8006472:	f000 80a1 	beq.w	80065b8 <_realloc_r+0x150>
 8006476:	460d      	mov	r5, r1
 8006478:	4680      	mov	r8, r0
 800647a:	f10a 040b 	add.w	r4, sl, #11
 800647e:	f7ff fcdd 	bl	8005e3c <__malloc_lock>
 8006482:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006486:	2c16      	cmp	r4, #22
 8006488:	f022 0603 	bic.w	r6, r2, #3
 800648c:	f1a5 0708 	sub.w	r7, r5, #8
 8006490:	d83e      	bhi.n	8006510 <_realloc_r+0xa8>
 8006492:	2410      	movs	r4, #16
 8006494:	4621      	mov	r1, r4
 8006496:	45a2      	cmp	sl, r4
 8006498:	d83f      	bhi.n	800651a <_realloc_r+0xb2>
 800649a:	428e      	cmp	r6, r1
 800649c:	eb07 0906 	add.w	r9, r7, r6
 80064a0:	da74      	bge.n	800658c <_realloc_r+0x124>
 80064a2:	4bc7      	ldr	r3, [pc, #796]	; (80067c0 <_realloc_r+0x358>)
 80064a4:	6898      	ldr	r0, [r3, #8]
 80064a6:	4548      	cmp	r0, r9
 80064a8:	f000 80aa 	beq.w	8006600 <_realloc_r+0x198>
 80064ac:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80064b0:	f020 0301 	bic.w	r3, r0, #1
 80064b4:	444b      	add	r3, r9
 80064b6:	685b      	ldr	r3, [r3, #4]
 80064b8:	07db      	lsls	r3, r3, #31
 80064ba:	f140 8083 	bpl.w	80065c4 <_realloc_r+0x15c>
 80064be:	07d2      	lsls	r2, r2, #31
 80064c0:	d534      	bpl.n	800652c <_realloc_r+0xc4>
 80064c2:	4651      	mov	r1, sl
 80064c4:	4640      	mov	r0, r8
 80064c6:	f7ff f9b1 	bl	800582c <_malloc_r>
 80064ca:	4682      	mov	sl, r0
 80064cc:	b1e0      	cbz	r0, 8006508 <_realloc_r+0xa0>
 80064ce:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80064d2:	f023 0301 	bic.w	r3, r3, #1
 80064d6:	443b      	add	r3, r7
 80064d8:	f1a0 0208 	sub.w	r2, r0, #8
 80064dc:	4293      	cmp	r3, r2
 80064de:	f000 80f9 	beq.w	80066d4 <_realloc_r+0x26c>
 80064e2:	1f32      	subs	r2, r6, #4
 80064e4:	2a24      	cmp	r2, #36	; 0x24
 80064e6:	f200 8107 	bhi.w	80066f8 <_realloc_r+0x290>
 80064ea:	2a13      	cmp	r2, #19
 80064ec:	6829      	ldr	r1, [r5, #0]
 80064ee:	f200 80e6 	bhi.w	80066be <_realloc_r+0x256>
 80064f2:	4603      	mov	r3, r0
 80064f4:	462a      	mov	r2, r5
 80064f6:	6019      	str	r1, [r3, #0]
 80064f8:	6851      	ldr	r1, [r2, #4]
 80064fa:	6059      	str	r1, [r3, #4]
 80064fc:	6892      	ldr	r2, [r2, #8]
 80064fe:	609a      	str	r2, [r3, #8]
 8006500:	4629      	mov	r1, r5
 8006502:	4640      	mov	r0, r8
 8006504:	f7fe fe68 	bl	80051d8 <_free_r>
 8006508:	4640      	mov	r0, r8
 800650a:	f7ff fc9d 	bl	8005e48 <__malloc_unlock>
 800650e:	e04f      	b.n	80065b0 <_realloc_r+0x148>
 8006510:	f024 0407 	bic.w	r4, r4, #7
 8006514:	2c00      	cmp	r4, #0
 8006516:	4621      	mov	r1, r4
 8006518:	dabd      	bge.n	8006496 <_realloc_r+0x2e>
 800651a:	f04f 0a00 	mov.w	sl, #0
 800651e:	230c      	movs	r3, #12
 8006520:	4650      	mov	r0, sl
 8006522:	f8c8 3000 	str.w	r3, [r8]
 8006526:	b003      	add	sp, #12
 8006528:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800652c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006530:	eba7 0b03 	sub.w	fp, r7, r3
 8006534:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006538:	f022 0203 	bic.w	r2, r2, #3
 800653c:	18b3      	adds	r3, r6, r2
 800653e:	428b      	cmp	r3, r1
 8006540:	dbbf      	blt.n	80064c2 <_realloc_r+0x5a>
 8006542:	46da      	mov	sl, fp
 8006544:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006548:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800654c:	1f32      	subs	r2, r6, #4
 800654e:	2a24      	cmp	r2, #36	; 0x24
 8006550:	60c1      	str	r1, [r0, #12]
 8006552:	eb0b 0903 	add.w	r9, fp, r3
 8006556:	6088      	str	r0, [r1, #8]
 8006558:	f200 80c6 	bhi.w	80066e8 <_realloc_r+0x280>
 800655c:	2a13      	cmp	r2, #19
 800655e:	6829      	ldr	r1, [r5, #0]
 8006560:	f240 80c0 	bls.w	80066e4 <_realloc_r+0x27c>
 8006564:	f8cb 1008 	str.w	r1, [fp, #8]
 8006568:	6869      	ldr	r1, [r5, #4]
 800656a:	f8cb 100c 	str.w	r1, [fp, #12]
 800656e:	2a1b      	cmp	r2, #27
 8006570:	68a9      	ldr	r1, [r5, #8]
 8006572:	f200 80d8 	bhi.w	8006726 <_realloc_r+0x2be>
 8006576:	f10b 0210 	add.w	r2, fp, #16
 800657a:	3508      	adds	r5, #8
 800657c:	6011      	str	r1, [r2, #0]
 800657e:	6869      	ldr	r1, [r5, #4]
 8006580:	6051      	str	r1, [r2, #4]
 8006582:	68a9      	ldr	r1, [r5, #8]
 8006584:	6091      	str	r1, [r2, #8]
 8006586:	461e      	mov	r6, r3
 8006588:	465f      	mov	r7, fp
 800658a:	4655      	mov	r5, sl
 800658c:	687b      	ldr	r3, [r7, #4]
 800658e:	1b32      	subs	r2, r6, r4
 8006590:	2a0f      	cmp	r2, #15
 8006592:	f003 0301 	and.w	r3, r3, #1
 8006596:	d822      	bhi.n	80065de <_realloc_r+0x176>
 8006598:	4333      	orrs	r3, r6
 800659a:	607b      	str	r3, [r7, #4]
 800659c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80065a0:	f043 0301 	orr.w	r3, r3, #1
 80065a4:	f8c9 3004 	str.w	r3, [r9, #4]
 80065a8:	4640      	mov	r0, r8
 80065aa:	f7ff fc4d 	bl	8005e48 <__malloc_unlock>
 80065ae:	46aa      	mov	sl, r5
 80065b0:	4650      	mov	r0, sl
 80065b2:	b003      	add	sp, #12
 80065b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80065b8:	4611      	mov	r1, r2
 80065ba:	b003      	add	sp, #12
 80065bc:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80065c0:	f7ff b934 	b.w	800582c <_malloc_r>
 80065c4:	f020 0003 	bic.w	r0, r0, #3
 80065c8:	1833      	adds	r3, r6, r0
 80065ca:	428b      	cmp	r3, r1
 80065cc:	db61      	blt.n	8006692 <_realloc_r+0x22a>
 80065ce:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80065d2:	461e      	mov	r6, r3
 80065d4:	60ca      	str	r2, [r1, #12]
 80065d6:	eb07 0903 	add.w	r9, r7, r3
 80065da:	6091      	str	r1, [r2, #8]
 80065dc:	e7d6      	b.n	800658c <_realloc_r+0x124>
 80065de:	1939      	adds	r1, r7, r4
 80065e0:	4323      	orrs	r3, r4
 80065e2:	f042 0201 	orr.w	r2, r2, #1
 80065e6:	607b      	str	r3, [r7, #4]
 80065e8:	604a      	str	r2, [r1, #4]
 80065ea:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80065ee:	f043 0301 	orr.w	r3, r3, #1
 80065f2:	3108      	adds	r1, #8
 80065f4:	f8c9 3004 	str.w	r3, [r9, #4]
 80065f8:	4640      	mov	r0, r8
 80065fa:	f7fe fded 	bl	80051d8 <_free_r>
 80065fe:	e7d3      	b.n	80065a8 <_realloc_r+0x140>
 8006600:	6840      	ldr	r0, [r0, #4]
 8006602:	f020 0903 	bic.w	r9, r0, #3
 8006606:	44b1      	add	r9, r6
 8006608:	f104 0010 	add.w	r0, r4, #16
 800660c:	4581      	cmp	r9, r0
 800660e:	da77      	bge.n	8006700 <_realloc_r+0x298>
 8006610:	07d2      	lsls	r2, r2, #31
 8006612:	f53f af56 	bmi.w	80064c2 <_realloc_r+0x5a>
 8006616:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800661a:	eba7 0b02 	sub.w	fp, r7, r2
 800661e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006622:	f022 0203 	bic.w	r2, r2, #3
 8006626:	4491      	add	r9, r2
 8006628:	4548      	cmp	r0, r9
 800662a:	dc87      	bgt.n	800653c <_realloc_r+0xd4>
 800662c:	46da      	mov	sl, fp
 800662e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006632:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006636:	1f32      	subs	r2, r6, #4
 8006638:	2a24      	cmp	r2, #36	; 0x24
 800663a:	60c1      	str	r1, [r0, #12]
 800663c:	6088      	str	r0, [r1, #8]
 800663e:	f200 80a1 	bhi.w	8006784 <_realloc_r+0x31c>
 8006642:	2a13      	cmp	r2, #19
 8006644:	6829      	ldr	r1, [r5, #0]
 8006646:	f240 809b 	bls.w	8006780 <_realloc_r+0x318>
 800664a:	f8cb 1008 	str.w	r1, [fp, #8]
 800664e:	6869      	ldr	r1, [r5, #4]
 8006650:	f8cb 100c 	str.w	r1, [fp, #12]
 8006654:	2a1b      	cmp	r2, #27
 8006656:	68a9      	ldr	r1, [r5, #8]
 8006658:	f200 809b 	bhi.w	8006792 <_realloc_r+0x32a>
 800665c:	f10b 0210 	add.w	r2, fp, #16
 8006660:	3508      	adds	r5, #8
 8006662:	6011      	str	r1, [r2, #0]
 8006664:	6869      	ldr	r1, [r5, #4]
 8006666:	6051      	str	r1, [r2, #4]
 8006668:	68a9      	ldr	r1, [r5, #8]
 800666a:	6091      	str	r1, [r2, #8]
 800666c:	eb0b 0104 	add.w	r1, fp, r4
 8006670:	eba9 0204 	sub.w	r2, r9, r4
 8006674:	f042 0201 	orr.w	r2, r2, #1
 8006678:	6099      	str	r1, [r3, #8]
 800667a:	604a      	str	r2, [r1, #4]
 800667c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006680:	f003 0301 	and.w	r3, r3, #1
 8006684:	431c      	orrs	r4, r3
 8006686:	4640      	mov	r0, r8
 8006688:	f8cb 4004 	str.w	r4, [fp, #4]
 800668c:	f7ff fbdc 	bl	8005e48 <__malloc_unlock>
 8006690:	e78e      	b.n	80065b0 <_realloc_r+0x148>
 8006692:	07d3      	lsls	r3, r2, #31
 8006694:	f53f af15 	bmi.w	80064c2 <_realloc_r+0x5a>
 8006698:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800669c:	eba7 0b03 	sub.w	fp, r7, r3
 80066a0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80066a4:	f022 0203 	bic.w	r2, r2, #3
 80066a8:	4410      	add	r0, r2
 80066aa:	1983      	adds	r3, r0, r6
 80066ac:	428b      	cmp	r3, r1
 80066ae:	f6ff af45 	blt.w	800653c <_realloc_r+0xd4>
 80066b2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80066b6:	46da      	mov	sl, fp
 80066b8:	60ca      	str	r2, [r1, #12]
 80066ba:	6091      	str	r1, [r2, #8]
 80066bc:	e742      	b.n	8006544 <_realloc_r+0xdc>
 80066be:	6001      	str	r1, [r0, #0]
 80066c0:	686b      	ldr	r3, [r5, #4]
 80066c2:	6043      	str	r3, [r0, #4]
 80066c4:	2a1b      	cmp	r2, #27
 80066c6:	d83a      	bhi.n	800673e <_realloc_r+0x2d6>
 80066c8:	f105 0208 	add.w	r2, r5, #8
 80066cc:	f100 0308 	add.w	r3, r0, #8
 80066d0:	68a9      	ldr	r1, [r5, #8]
 80066d2:	e710      	b.n	80064f6 <_realloc_r+0x8e>
 80066d4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80066d8:	f023 0303 	bic.w	r3, r3, #3
 80066dc:	441e      	add	r6, r3
 80066de:	eb07 0906 	add.w	r9, r7, r6
 80066e2:	e753      	b.n	800658c <_realloc_r+0x124>
 80066e4:	4652      	mov	r2, sl
 80066e6:	e749      	b.n	800657c <_realloc_r+0x114>
 80066e8:	4629      	mov	r1, r5
 80066ea:	4650      	mov	r0, sl
 80066ec:	461e      	mov	r6, r3
 80066ee:	465f      	mov	r7, fp
 80066f0:	f7ff fb40 	bl	8005d74 <memmove>
 80066f4:	4655      	mov	r5, sl
 80066f6:	e749      	b.n	800658c <_realloc_r+0x124>
 80066f8:	4629      	mov	r1, r5
 80066fa:	f7ff fb3b 	bl	8005d74 <memmove>
 80066fe:	e6ff      	b.n	8006500 <_realloc_r+0x98>
 8006700:	4427      	add	r7, r4
 8006702:	eba9 0904 	sub.w	r9, r9, r4
 8006706:	f049 0201 	orr.w	r2, r9, #1
 800670a:	609f      	str	r7, [r3, #8]
 800670c:	607a      	str	r2, [r7, #4]
 800670e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006712:	f003 0301 	and.w	r3, r3, #1
 8006716:	431c      	orrs	r4, r3
 8006718:	4640      	mov	r0, r8
 800671a:	f845 4c04 	str.w	r4, [r5, #-4]
 800671e:	f7ff fb93 	bl	8005e48 <__malloc_unlock>
 8006722:	46aa      	mov	sl, r5
 8006724:	e744      	b.n	80065b0 <_realloc_r+0x148>
 8006726:	f8cb 1010 	str.w	r1, [fp, #16]
 800672a:	68e9      	ldr	r1, [r5, #12]
 800672c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006730:	2a24      	cmp	r2, #36	; 0x24
 8006732:	d010      	beq.n	8006756 <_realloc_r+0x2ee>
 8006734:	6929      	ldr	r1, [r5, #16]
 8006736:	f10b 0218 	add.w	r2, fp, #24
 800673a:	3510      	adds	r5, #16
 800673c:	e71e      	b.n	800657c <_realloc_r+0x114>
 800673e:	68ab      	ldr	r3, [r5, #8]
 8006740:	6083      	str	r3, [r0, #8]
 8006742:	68eb      	ldr	r3, [r5, #12]
 8006744:	60c3      	str	r3, [r0, #12]
 8006746:	2a24      	cmp	r2, #36	; 0x24
 8006748:	d010      	beq.n	800676c <_realloc_r+0x304>
 800674a:	f105 0210 	add.w	r2, r5, #16
 800674e:	f100 0310 	add.w	r3, r0, #16
 8006752:	6929      	ldr	r1, [r5, #16]
 8006754:	e6cf      	b.n	80064f6 <_realloc_r+0x8e>
 8006756:	692a      	ldr	r2, [r5, #16]
 8006758:	f8cb 2018 	str.w	r2, [fp, #24]
 800675c:	696a      	ldr	r2, [r5, #20]
 800675e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006762:	69a9      	ldr	r1, [r5, #24]
 8006764:	f10b 0220 	add.w	r2, fp, #32
 8006768:	3518      	adds	r5, #24
 800676a:	e707      	b.n	800657c <_realloc_r+0x114>
 800676c:	692b      	ldr	r3, [r5, #16]
 800676e:	6103      	str	r3, [r0, #16]
 8006770:	696b      	ldr	r3, [r5, #20]
 8006772:	6143      	str	r3, [r0, #20]
 8006774:	69a9      	ldr	r1, [r5, #24]
 8006776:	f105 0218 	add.w	r2, r5, #24
 800677a:	f100 0318 	add.w	r3, r0, #24
 800677e:	e6ba      	b.n	80064f6 <_realloc_r+0x8e>
 8006780:	4652      	mov	r2, sl
 8006782:	e76e      	b.n	8006662 <_realloc_r+0x1fa>
 8006784:	4629      	mov	r1, r5
 8006786:	4650      	mov	r0, sl
 8006788:	9301      	str	r3, [sp, #4]
 800678a:	f7ff faf3 	bl	8005d74 <memmove>
 800678e:	9b01      	ldr	r3, [sp, #4]
 8006790:	e76c      	b.n	800666c <_realloc_r+0x204>
 8006792:	f8cb 1010 	str.w	r1, [fp, #16]
 8006796:	68e9      	ldr	r1, [r5, #12]
 8006798:	f8cb 1014 	str.w	r1, [fp, #20]
 800679c:	2a24      	cmp	r2, #36	; 0x24
 800679e:	d004      	beq.n	80067aa <_realloc_r+0x342>
 80067a0:	6929      	ldr	r1, [r5, #16]
 80067a2:	f10b 0218 	add.w	r2, fp, #24
 80067a6:	3510      	adds	r5, #16
 80067a8:	e75b      	b.n	8006662 <_realloc_r+0x1fa>
 80067aa:	692a      	ldr	r2, [r5, #16]
 80067ac:	f8cb 2018 	str.w	r2, [fp, #24]
 80067b0:	696a      	ldr	r2, [r5, #20]
 80067b2:	f8cb 201c 	str.w	r2, [fp, #28]
 80067b6:	69a9      	ldr	r1, [r5, #24]
 80067b8:	f10b 0220 	add.w	r2, fp, #32
 80067bc:	3518      	adds	r5, #24
 80067be:	e750      	b.n	8006662 <_realloc_r+0x1fa>
 80067c0:	2000044c 	.word	0x2000044c

080067c4 <frexp>:
 80067c4:	ec53 2b10 	vmov	r2, r3, d0
 80067c8:	b570      	push	{r4, r5, r6, lr}
 80067ca:	4e16      	ldr	r6, [pc, #88]	; (8006824 <frexp+0x60>)
 80067cc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80067d0:	2500      	movs	r5, #0
 80067d2:	42b1      	cmp	r1, r6
 80067d4:	4604      	mov	r4, r0
 80067d6:	6005      	str	r5, [r0, #0]
 80067d8:	dc21      	bgt.n	800681e <frexp+0x5a>
 80067da:	ee10 6a10 	vmov	r6, s0
 80067de:	430e      	orrs	r6, r1
 80067e0:	d01d      	beq.n	800681e <frexp+0x5a>
 80067e2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80067e6:	4618      	mov	r0, r3
 80067e8:	da0c      	bge.n	8006804 <frexp+0x40>
 80067ea:	4619      	mov	r1, r3
 80067ec:	2200      	movs	r2, #0
 80067ee:	ee10 0a10 	vmov	r0, s0
 80067f2:	4b0d      	ldr	r3, [pc, #52]	; (8006828 <frexp+0x64>)
 80067f4:	f7fa f9a0 	bl	8000b38 <__aeabi_dmul>
 80067f8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80067fc:	4602      	mov	r2, r0
 80067fe:	4608      	mov	r0, r1
 8006800:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006804:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006808:	1509      	asrs	r1, r1, #20
 800680a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800680e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006812:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006816:	4429      	add	r1, r5
 8006818:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800681c:	6021      	str	r1, [r4, #0]
 800681e:	ec43 2b10 	vmov	d0, r2, r3
 8006822:	bd70      	pop	{r4, r5, r6, pc}
 8006824:	7fefffff 	.word	0x7fefffff
 8006828:	43500000 	.word	0x43500000

0800682c <_sbrk_r>:
 800682c:	b538      	push	{r3, r4, r5, lr}
 800682e:	4c07      	ldr	r4, [pc, #28]	; (800684c <_sbrk_r+0x20>)
 8006830:	2300      	movs	r3, #0
 8006832:	4605      	mov	r5, r0
 8006834:	4608      	mov	r0, r1
 8006836:	6023      	str	r3, [r4, #0]
 8006838:	f7fb fc34 	bl	80020a4 <_sbrk>
 800683c:	1c43      	adds	r3, r0, #1
 800683e:	d000      	beq.n	8006842 <_sbrk_r+0x16>
 8006840:	bd38      	pop	{r3, r4, r5, pc}
 8006842:	6823      	ldr	r3, [r4, #0]
 8006844:	2b00      	cmp	r3, #0
 8006846:	d0fb      	beq.n	8006840 <_sbrk_r+0x14>
 8006848:	602b      	str	r3, [r5, #0]
 800684a:	bd38      	pop	{r3, r4, r5, pc}
 800684c:	20000b18 	.word	0x20000b18

08006850 <__sread>:
 8006850:	b510      	push	{r4, lr}
 8006852:	460c      	mov	r4, r1
 8006854:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006858:	f000 fabc 	bl	8006dd4 <_read_r>
 800685c:	2800      	cmp	r0, #0
 800685e:	db03      	blt.n	8006868 <__sread+0x18>
 8006860:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006862:	4403      	add	r3, r0
 8006864:	6523      	str	r3, [r4, #80]	; 0x50
 8006866:	bd10      	pop	{r4, pc}
 8006868:	89a3      	ldrh	r3, [r4, #12]
 800686a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800686e:	81a3      	strh	r3, [r4, #12]
 8006870:	bd10      	pop	{r4, pc}
 8006872:	bf00      	nop

08006874 <__swrite>:
 8006874:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006878:	4616      	mov	r6, r2
 800687a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800687e:	461f      	mov	r7, r3
 8006880:	05d3      	lsls	r3, r2, #23
 8006882:	460c      	mov	r4, r1
 8006884:	4605      	mov	r5, r0
 8006886:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800688a:	d507      	bpl.n	800689c <__swrite+0x28>
 800688c:	2200      	movs	r2, #0
 800688e:	2302      	movs	r3, #2
 8006890:	f000 fa74 	bl	8006d7c <_lseek_r>
 8006894:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006898:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800689c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80068a0:	81a2      	strh	r2, [r4, #12]
 80068a2:	463b      	mov	r3, r7
 80068a4:	4632      	mov	r2, r6
 80068a6:	4628      	mov	r0, r5
 80068a8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80068ac:	f000 b88c 	b.w	80069c8 <_write_r>

080068b0 <__sseek>:
 80068b0:	b510      	push	{r4, lr}
 80068b2:	460c      	mov	r4, r1
 80068b4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80068b8:	f000 fa60 	bl	8006d7c <_lseek_r>
 80068bc:	89a3      	ldrh	r3, [r4, #12]
 80068be:	1c42      	adds	r2, r0, #1
 80068c0:	bf0e      	itee	eq
 80068c2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80068c6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80068ca:	6520      	strne	r0, [r4, #80]	; 0x50
 80068cc:	81a3      	strh	r3, [r4, #12]
 80068ce:	bd10      	pop	{r4, pc}

080068d0 <__sclose>:
 80068d0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80068d4:	f000 b922 	b.w	8006b1c <_close_r>

080068d8 <strncpy>:
 80068d8:	ea40 0301 	orr.w	r3, r0, r1
 80068dc:	079b      	lsls	r3, r3, #30
 80068de:	b470      	push	{r4, r5, r6}
 80068e0:	d12a      	bne.n	8006938 <strncpy+0x60>
 80068e2:	2a03      	cmp	r2, #3
 80068e4:	d928      	bls.n	8006938 <strncpy+0x60>
 80068e6:	460c      	mov	r4, r1
 80068e8:	4603      	mov	r3, r0
 80068ea:	4621      	mov	r1, r4
 80068ec:	f854 6b04 	ldr.w	r6, [r4], #4
 80068f0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80068f4:	ea25 0506 	bic.w	r5, r5, r6
 80068f8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80068fc:	d106      	bne.n	800690c <strncpy+0x34>
 80068fe:	3a04      	subs	r2, #4
 8006900:	2a03      	cmp	r2, #3
 8006902:	f843 6b04 	str.w	r6, [r3], #4
 8006906:	4621      	mov	r1, r4
 8006908:	d8ef      	bhi.n	80068ea <strncpy+0x12>
 800690a:	b19a      	cbz	r2, 8006934 <strncpy+0x5c>
 800690c:	780c      	ldrb	r4, [r1, #0]
 800690e:	701c      	strb	r4, [r3, #0]
 8006910:	3a01      	subs	r2, #1
 8006912:	3301      	adds	r3, #1
 8006914:	b13c      	cbz	r4, 8006926 <strncpy+0x4e>
 8006916:	b16a      	cbz	r2, 8006934 <strncpy+0x5c>
 8006918:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 800691c:	f803 4b01 	strb.w	r4, [r3], #1
 8006920:	3a01      	subs	r2, #1
 8006922:	2c00      	cmp	r4, #0
 8006924:	d1f7      	bne.n	8006916 <strncpy+0x3e>
 8006926:	b12a      	cbz	r2, 8006934 <strncpy+0x5c>
 8006928:	441a      	add	r2, r3
 800692a:	2100      	movs	r1, #0
 800692c:	f803 1b01 	strb.w	r1, [r3], #1
 8006930:	4293      	cmp	r3, r2
 8006932:	d1fb      	bne.n	800692c <strncpy+0x54>
 8006934:	bc70      	pop	{r4, r5, r6}
 8006936:	4770      	bx	lr
 8006938:	4603      	mov	r3, r0
 800693a:	e7e6      	b.n	800690a <strncpy+0x32>

0800693c <__sprint_r.part.0>:
 800693c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006940:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006942:	049c      	lsls	r4, r3, #18
 8006944:	4692      	mov	sl, r2
 8006946:	d52d      	bpl.n	80069a4 <__sprint_r.part.0+0x68>
 8006948:	6893      	ldr	r3, [r2, #8]
 800694a:	6812      	ldr	r2, [r2, #0]
 800694c:	b343      	cbz	r3, 80069a0 <__sprint_r.part.0+0x64>
 800694e:	460e      	mov	r6, r1
 8006950:	4607      	mov	r7, r0
 8006952:	f102 0908 	add.w	r9, r2, #8
 8006956:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800695a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800695e:	d015      	beq.n	800698c <__sprint_r.part.0+0x50>
 8006960:	3d04      	subs	r5, #4
 8006962:	2400      	movs	r4, #0
 8006964:	e001      	b.n	800696a <__sprint_r.part.0+0x2e>
 8006966:	45a0      	cmp	r8, r4
 8006968:	d00e      	beq.n	8006988 <__sprint_r.part.0+0x4c>
 800696a:	4632      	mov	r2, r6
 800696c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006970:	4638      	mov	r0, r7
 8006972:	f000 f99d 	bl	8006cb0 <_fputwc_r>
 8006976:	1c43      	adds	r3, r0, #1
 8006978:	f104 0401 	add.w	r4, r4, #1
 800697c:	d1f3      	bne.n	8006966 <__sprint_r.part.0+0x2a>
 800697e:	2300      	movs	r3, #0
 8006980:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006984:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006988:	f8da 3008 	ldr.w	r3, [sl, #8]
 800698c:	f02b 0b03 	bic.w	fp, fp, #3
 8006990:	eba3 030b 	sub.w	r3, r3, fp
 8006994:	f8ca 3008 	str.w	r3, [sl, #8]
 8006998:	f109 0908 	add.w	r9, r9, #8
 800699c:	2b00      	cmp	r3, #0
 800699e:	d1da      	bne.n	8006956 <__sprint_r.part.0+0x1a>
 80069a0:	2000      	movs	r0, #0
 80069a2:	e7ec      	b.n	800697e <__sprint_r.part.0+0x42>
 80069a4:	f7fe fd0c 	bl	80053c0 <__sfvwrite_r>
 80069a8:	2300      	movs	r3, #0
 80069aa:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80069ae:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80069b2:	bf00      	nop

080069b4 <__sprint_r>:
 80069b4:	6893      	ldr	r3, [r2, #8]
 80069b6:	b10b      	cbz	r3, 80069bc <__sprint_r+0x8>
 80069b8:	f7ff bfc0 	b.w	800693c <__sprint_r.part.0>
 80069bc:	b410      	push	{r4}
 80069be:	4618      	mov	r0, r3
 80069c0:	6053      	str	r3, [r2, #4]
 80069c2:	f85d 4b04 	ldr.w	r4, [sp], #4
 80069c6:	4770      	bx	lr

080069c8 <_write_r>:
 80069c8:	b570      	push	{r4, r5, r6, lr}
 80069ca:	460d      	mov	r5, r1
 80069cc:	4c08      	ldr	r4, [pc, #32]	; (80069f0 <_write_r+0x28>)
 80069ce:	4611      	mov	r1, r2
 80069d0:	4606      	mov	r6, r0
 80069d2:	461a      	mov	r2, r3
 80069d4:	4628      	mov	r0, r5
 80069d6:	2300      	movs	r3, #0
 80069d8:	6023      	str	r3, [r4, #0]
 80069da:	f7fb fb50 	bl	800207e <_write>
 80069de:	1c43      	adds	r3, r0, #1
 80069e0:	d000      	beq.n	80069e4 <_write_r+0x1c>
 80069e2:	bd70      	pop	{r4, r5, r6, pc}
 80069e4:	6823      	ldr	r3, [r4, #0]
 80069e6:	2b00      	cmp	r3, #0
 80069e8:	d0fb      	beq.n	80069e2 <_write_r+0x1a>
 80069ea:	6033      	str	r3, [r6, #0]
 80069ec:	bd70      	pop	{r4, r5, r6, pc}
 80069ee:	bf00      	nop
 80069f0:	20000b18 	.word	0x20000b18

080069f4 <__register_exitproc>:
 80069f4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80069f8:	4d2b      	ldr	r5, [pc, #172]	; (8006aa8 <__register_exitproc+0xb4>)
 80069fa:	4606      	mov	r6, r0
 80069fc:	6828      	ldr	r0, [r5, #0]
 80069fe:	4698      	mov	r8, r3
 8006a00:	460f      	mov	r7, r1
 8006a02:	4691      	mov	r9, r2
 8006a04:	f7fe fe96 	bl	8005734 <__retarget_lock_acquire_recursive>
 8006a08:	4b28      	ldr	r3, [pc, #160]	; (8006aac <__register_exitproc+0xb8>)
 8006a0a:	681c      	ldr	r4, [r3, #0]
 8006a0c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006a10:	2b00      	cmp	r3, #0
 8006a12:	d03d      	beq.n	8006a90 <__register_exitproc+0x9c>
 8006a14:	685a      	ldr	r2, [r3, #4]
 8006a16:	2a1f      	cmp	r2, #31
 8006a18:	dc0d      	bgt.n	8006a36 <__register_exitproc+0x42>
 8006a1a:	f102 0c01 	add.w	ip, r2, #1
 8006a1e:	bb16      	cbnz	r6, 8006a66 <__register_exitproc+0x72>
 8006a20:	3202      	adds	r2, #2
 8006a22:	f8c3 c004 	str.w	ip, [r3, #4]
 8006a26:	6828      	ldr	r0, [r5, #0]
 8006a28:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006a2c:	f7fe fe84 	bl	8005738 <__retarget_lock_release_recursive>
 8006a30:	2000      	movs	r0, #0
 8006a32:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006a36:	4b1e      	ldr	r3, [pc, #120]	; (8006ab0 <__register_exitproc+0xbc>)
 8006a38:	b37b      	cbz	r3, 8006a9a <__register_exitproc+0xa6>
 8006a3a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006a3e:	f3af 8000 	nop.w
 8006a42:	4603      	mov	r3, r0
 8006a44:	b348      	cbz	r0, 8006a9a <__register_exitproc+0xa6>
 8006a46:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006a4a:	2100      	movs	r1, #0
 8006a4c:	e9c0 2100 	strd	r2, r1, [r0]
 8006a50:	f04f 0c01 	mov.w	ip, #1
 8006a54:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006a58:	460a      	mov	r2, r1
 8006a5a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006a5e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006a62:	2e00      	cmp	r6, #0
 8006a64:	d0dc      	beq.n	8006a20 <__register_exitproc+0x2c>
 8006a66:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006a6a:	2401      	movs	r4, #1
 8006a6c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006a70:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006a74:	4094      	lsls	r4, r2
 8006a76:	4320      	orrs	r0, r4
 8006a78:	2e02      	cmp	r6, #2
 8006a7a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006a7e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006a82:	d1cd      	bne.n	8006a20 <__register_exitproc+0x2c>
 8006a84:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006a88:	430c      	orrs	r4, r1
 8006a8a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006a8e:	e7c7      	b.n	8006a20 <__register_exitproc+0x2c>
 8006a90:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006a94:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006a98:	e7bc      	b.n	8006a14 <__register_exitproc+0x20>
 8006a9a:	6828      	ldr	r0, [r5, #0]
 8006a9c:	f7fe fe4c 	bl	8005738 <__retarget_lock_release_recursive>
 8006aa0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006aa4:	e7c5      	b.n	8006a32 <__register_exitproc+0x3e>
 8006aa6:	bf00      	nop
 8006aa8:	20000448 	.word	0x20000448
 8006aac:	0800704c 	.word	0x0800704c
 8006ab0:	00000000 	.word	0x00000000

08006ab4 <_calloc_r>:
 8006ab4:	b510      	push	{r4, lr}
 8006ab6:	fb02 f101 	mul.w	r1, r2, r1
 8006aba:	f7fe feb7 	bl	800582c <_malloc_r>
 8006abe:	4604      	mov	r4, r0
 8006ac0:	b1d8      	cbz	r0, 8006afa <_calloc_r+0x46>
 8006ac2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006ac6:	f022 0203 	bic.w	r2, r2, #3
 8006aca:	3a04      	subs	r2, #4
 8006acc:	2a24      	cmp	r2, #36	; 0x24
 8006ace:	d81d      	bhi.n	8006b0c <_calloc_r+0x58>
 8006ad0:	2a13      	cmp	r2, #19
 8006ad2:	d914      	bls.n	8006afe <_calloc_r+0x4a>
 8006ad4:	2300      	movs	r3, #0
 8006ad6:	2a1b      	cmp	r2, #27
 8006ad8:	e9c0 3300 	strd	r3, r3, [r0]
 8006adc:	d91b      	bls.n	8006b16 <_calloc_r+0x62>
 8006ade:	2a24      	cmp	r2, #36	; 0x24
 8006ae0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006ae4:	bf0a      	itet	eq
 8006ae6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006aea:	f100 0210 	addne.w	r2, r0, #16
 8006aee:	f100 0218 	addeq.w	r2, r0, #24
 8006af2:	2300      	movs	r3, #0
 8006af4:	e9c2 3300 	strd	r3, r3, [r2]
 8006af8:	6093      	str	r3, [r2, #8]
 8006afa:	4620      	mov	r0, r4
 8006afc:	bd10      	pop	{r4, pc}
 8006afe:	4602      	mov	r2, r0
 8006b00:	2300      	movs	r3, #0
 8006b02:	e9c2 3300 	strd	r3, r3, [r2]
 8006b06:	6093      	str	r3, [r2, #8]
 8006b08:	4620      	mov	r0, r4
 8006b0a:	bd10      	pop	{r4, pc}
 8006b0c:	2100      	movs	r1, #0
 8006b0e:	f7fb fb6f 	bl	80021f0 <memset>
 8006b12:	4620      	mov	r0, r4
 8006b14:	bd10      	pop	{r4, pc}
 8006b16:	f100 0208 	add.w	r2, r0, #8
 8006b1a:	e7f1      	b.n	8006b00 <_calloc_r+0x4c>

08006b1c <_close_r>:
 8006b1c:	b538      	push	{r3, r4, r5, lr}
 8006b1e:	4c07      	ldr	r4, [pc, #28]	; (8006b3c <_close_r+0x20>)
 8006b20:	2300      	movs	r3, #0
 8006b22:	4605      	mov	r5, r0
 8006b24:	4608      	mov	r0, r1
 8006b26:	6023      	str	r3, [r4, #0]
 8006b28:	f7fb fad8 	bl	80020dc <_close>
 8006b2c:	1c43      	adds	r3, r0, #1
 8006b2e:	d000      	beq.n	8006b32 <_close_r+0x16>
 8006b30:	bd38      	pop	{r3, r4, r5, pc}
 8006b32:	6823      	ldr	r3, [r4, #0]
 8006b34:	2b00      	cmp	r3, #0
 8006b36:	d0fb      	beq.n	8006b30 <_close_r+0x14>
 8006b38:	602b      	str	r3, [r5, #0]
 8006b3a:	bd38      	pop	{r3, r4, r5, pc}
 8006b3c:	20000b18 	.word	0x20000b18

08006b40 <_fclose_r>:
 8006b40:	b570      	push	{r4, r5, r6, lr}
 8006b42:	2900      	cmp	r1, #0
 8006b44:	d048      	beq.n	8006bd8 <_fclose_r+0x98>
 8006b46:	4605      	mov	r5, r0
 8006b48:	460c      	mov	r4, r1
 8006b4a:	b110      	cbz	r0, 8006b52 <_fclose_r+0x12>
 8006b4c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006b4e:	2b00      	cmp	r3, #0
 8006b50:	d048      	beq.n	8006be4 <_fclose_r+0xa4>
 8006b52:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006b54:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b58:	07d0      	lsls	r0, r2, #31
 8006b5a:	d440      	bmi.n	8006bde <_fclose_r+0x9e>
 8006b5c:	0599      	lsls	r1, r3, #22
 8006b5e:	d530      	bpl.n	8006bc2 <_fclose_r+0x82>
 8006b60:	4621      	mov	r1, r4
 8006b62:	4628      	mov	r0, r5
 8006b64:	f7fe f990 	bl	8004e88 <__sflush_r>
 8006b68:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006b6a:	4606      	mov	r6, r0
 8006b6c:	b133      	cbz	r3, 8006b7c <_fclose_r+0x3c>
 8006b6e:	69e1      	ldr	r1, [r4, #28]
 8006b70:	4628      	mov	r0, r5
 8006b72:	4798      	blx	r3
 8006b74:	2800      	cmp	r0, #0
 8006b76:	bfb8      	it	lt
 8006b78:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006b7c:	89a3      	ldrh	r3, [r4, #12]
 8006b7e:	061a      	lsls	r2, r3, #24
 8006b80:	d43c      	bmi.n	8006bfc <_fclose_r+0xbc>
 8006b82:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006b84:	b141      	cbz	r1, 8006b98 <_fclose_r+0x58>
 8006b86:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006b8a:	4299      	cmp	r1, r3
 8006b8c:	d002      	beq.n	8006b94 <_fclose_r+0x54>
 8006b8e:	4628      	mov	r0, r5
 8006b90:	f7fe fb22 	bl	80051d8 <_free_r>
 8006b94:	2300      	movs	r3, #0
 8006b96:	6323      	str	r3, [r4, #48]	; 0x30
 8006b98:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006b9a:	b121      	cbz	r1, 8006ba6 <_fclose_r+0x66>
 8006b9c:	4628      	mov	r0, r5
 8006b9e:	f7fe fb1b 	bl	80051d8 <_free_r>
 8006ba2:	2300      	movs	r3, #0
 8006ba4:	6463      	str	r3, [r4, #68]	; 0x44
 8006ba6:	f7fe faa1 	bl	80050ec <__sfp_lock_acquire>
 8006baa:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006bac:	2200      	movs	r2, #0
 8006bae:	07db      	lsls	r3, r3, #31
 8006bb0:	81a2      	strh	r2, [r4, #12]
 8006bb2:	d51f      	bpl.n	8006bf4 <_fclose_r+0xb4>
 8006bb4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006bb6:	f7fe fdbb 	bl	8005730 <__retarget_lock_close_recursive>
 8006bba:	f7fe fa9d 	bl	80050f8 <__sfp_lock_release>
 8006bbe:	4630      	mov	r0, r6
 8006bc0:	bd70      	pop	{r4, r5, r6, pc}
 8006bc2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006bc4:	f7fe fdb6 	bl	8005734 <__retarget_lock_acquire_recursive>
 8006bc8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006bcc:	2b00      	cmp	r3, #0
 8006bce:	d1c7      	bne.n	8006b60 <_fclose_r+0x20>
 8006bd0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006bd2:	f016 0601 	ands.w	r6, r6, #1
 8006bd6:	d016      	beq.n	8006c06 <_fclose_r+0xc6>
 8006bd8:	2600      	movs	r6, #0
 8006bda:	4630      	mov	r0, r6
 8006bdc:	bd70      	pop	{r4, r5, r6, pc}
 8006bde:	2b00      	cmp	r3, #0
 8006be0:	d0fa      	beq.n	8006bd8 <_fclose_r+0x98>
 8006be2:	e7bd      	b.n	8006b60 <_fclose_r+0x20>
 8006be4:	f7fe fa56 	bl	8005094 <__sinit>
 8006be8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006bea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006bee:	07d0      	lsls	r0, r2, #31
 8006bf0:	d4f5      	bmi.n	8006bde <_fclose_r+0x9e>
 8006bf2:	e7b3      	b.n	8006b5c <_fclose_r+0x1c>
 8006bf4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006bf6:	f7fe fd9f 	bl	8005738 <__retarget_lock_release_recursive>
 8006bfa:	e7db      	b.n	8006bb4 <_fclose_r+0x74>
 8006bfc:	6921      	ldr	r1, [r4, #16]
 8006bfe:	4628      	mov	r0, r5
 8006c00:	f7fe faea 	bl	80051d8 <_free_r>
 8006c04:	e7bd      	b.n	8006b82 <_fclose_r+0x42>
 8006c06:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c08:	f7fe fd96 	bl	8005738 <__retarget_lock_release_recursive>
 8006c0c:	4630      	mov	r0, r6
 8006c0e:	bd70      	pop	{r4, r5, r6, pc}

08006c10 <__fputwc>:
 8006c10:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006c14:	b082      	sub	sp, #8
 8006c16:	4681      	mov	r9, r0
 8006c18:	4688      	mov	r8, r1
 8006c1a:	4614      	mov	r4, r2
 8006c1c:	f000 f8a0 	bl	8006d60 <__locale_mb_cur_max>
 8006c20:	2801      	cmp	r0, #1
 8006c22:	d103      	bne.n	8006c2c <__fputwc+0x1c>
 8006c24:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006c28:	2bfe      	cmp	r3, #254	; 0xfe
 8006c2a:	d933      	bls.n	8006c94 <__fputwc+0x84>
 8006c2c:	4642      	mov	r2, r8
 8006c2e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006c32:	a901      	add	r1, sp, #4
 8006c34:	4648      	mov	r0, r9
 8006c36:	f000 f93b 	bl	8006eb0 <_wcrtomb_r>
 8006c3a:	1c42      	adds	r2, r0, #1
 8006c3c:	4606      	mov	r6, r0
 8006c3e:	d02f      	beq.n	8006ca0 <__fputwc+0x90>
 8006c40:	b320      	cbz	r0, 8006c8c <__fputwc+0x7c>
 8006c42:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006c46:	2500      	movs	r5, #0
 8006c48:	f10d 0a04 	add.w	sl, sp, #4
 8006c4c:	e009      	b.n	8006c62 <__fputwc+0x52>
 8006c4e:	6823      	ldr	r3, [r4, #0]
 8006c50:	1c5a      	adds	r2, r3, #1
 8006c52:	6022      	str	r2, [r4, #0]
 8006c54:	f883 c000 	strb.w	ip, [r3]
 8006c58:	3501      	adds	r5, #1
 8006c5a:	42b5      	cmp	r5, r6
 8006c5c:	d216      	bcs.n	8006c8c <__fputwc+0x7c>
 8006c5e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006c62:	68a3      	ldr	r3, [r4, #8]
 8006c64:	3b01      	subs	r3, #1
 8006c66:	2b00      	cmp	r3, #0
 8006c68:	60a3      	str	r3, [r4, #8]
 8006c6a:	daf0      	bge.n	8006c4e <__fputwc+0x3e>
 8006c6c:	69a7      	ldr	r7, [r4, #24]
 8006c6e:	42bb      	cmp	r3, r7
 8006c70:	4661      	mov	r1, ip
 8006c72:	4622      	mov	r2, r4
 8006c74:	4648      	mov	r0, r9
 8006c76:	db02      	blt.n	8006c7e <__fputwc+0x6e>
 8006c78:	f1bc 0f0a 	cmp.w	ip, #10
 8006c7c:	d1e7      	bne.n	8006c4e <__fputwc+0x3e>
 8006c7e:	f000 f8bf 	bl	8006e00 <__swbuf_r>
 8006c82:	1c43      	adds	r3, r0, #1
 8006c84:	d1e8      	bne.n	8006c58 <__fputwc+0x48>
 8006c86:	b002      	add	sp, #8
 8006c88:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c8c:	4640      	mov	r0, r8
 8006c8e:	b002      	add	sp, #8
 8006c90:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c94:	fa5f fc88 	uxtb.w	ip, r8
 8006c98:	4606      	mov	r6, r0
 8006c9a:	f88d c004 	strb.w	ip, [sp, #4]
 8006c9e:	e7d2      	b.n	8006c46 <__fputwc+0x36>
 8006ca0:	89a3      	ldrh	r3, [r4, #12]
 8006ca2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006ca6:	81a3      	strh	r3, [r4, #12]
 8006ca8:	b002      	add	sp, #8
 8006caa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006cae:	bf00      	nop

08006cb0 <_fputwc_r>:
 8006cb0:	b530      	push	{r4, r5, lr}
 8006cb2:	4605      	mov	r5, r0
 8006cb4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006cb6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006cba:	07c0      	lsls	r0, r0, #31
 8006cbc:	4614      	mov	r4, r2
 8006cbe:	b083      	sub	sp, #12
 8006cc0:	b29a      	uxth	r2, r3
 8006cc2:	d401      	bmi.n	8006cc8 <_fputwc_r+0x18>
 8006cc4:	0590      	lsls	r0, r2, #22
 8006cc6:	d51c      	bpl.n	8006d02 <_fputwc_r+0x52>
 8006cc8:	0490      	lsls	r0, r2, #18
 8006cca:	d406      	bmi.n	8006cda <_fputwc_r+0x2a>
 8006ccc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006cce:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006cd2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006cd6:	81a3      	strh	r3, [r4, #12]
 8006cd8:	6662      	str	r2, [r4, #100]	; 0x64
 8006cda:	4628      	mov	r0, r5
 8006cdc:	4622      	mov	r2, r4
 8006cde:	f7ff ff97 	bl	8006c10 <__fputwc>
 8006ce2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ce4:	07da      	lsls	r2, r3, #31
 8006ce6:	4605      	mov	r5, r0
 8006ce8:	d402      	bmi.n	8006cf0 <_fputwc_r+0x40>
 8006cea:	89a3      	ldrh	r3, [r4, #12]
 8006cec:	059b      	lsls	r3, r3, #22
 8006cee:	d502      	bpl.n	8006cf6 <_fputwc_r+0x46>
 8006cf0:	4628      	mov	r0, r5
 8006cf2:	b003      	add	sp, #12
 8006cf4:	bd30      	pop	{r4, r5, pc}
 8006cf6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cf8:	f7fe fd1e 	bl	8005738 <__retarget_lock_release_recursive>
 8006cfc:	4628      	mov	r0, r5
 8006cfe:	b003      	add	sp, #12
 8006d00:	bd30      	pop	{r4, r5, pc}
 8006d02:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d04:	9101      	str	r1, [sp, #4]
 8006d06:	f7fe fd15 	bl	8005734 <__retarget_lock_acquire_recursive>
 8006d0a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d0e:	9901      	ldr	r1, [sp, #4]
 8006d10:	b29a      	uxth	r2, r3
 8006d12:	e7d9      	b.n	8006cc8 <_fputwc_r+0x18>

08006d14 <_fstat_r>:
 8006d14:	b538      	push	{r3, r4, r5, lr}
 8006d16:	460b      	mov	r3, r1
 8006d18:	4c07      	ldr	r4, [pc, #28]	; (8006d38 <_fstat_r+0x24>)
 8006d1a:	4605      	mov	r5, r0
 8006d1c:	4611      	mov	r1, r2
 8006d1e:	4618      	mov	r0, r3
 8006d20:	2300      	movs	r3, #0
 8006d22:	6023      	str	r3, [r4, #0]
 8006d24:	f7fb f9dd 	bl	80020e2 <_fstat>
 8006d28:	1c43      	adds	r3, r0, #1
 8006d2a:	d000      	beq.n	8006d2e <_fstat_r+0x1a>
 8006d2c:	bd38      	pop	{r3, r4, r5, pc}
 8006d2e:	6823      	ldr	r3, [r4, #0]
 8006d30:	2b00      	cmp	r3, #0
 8006d32:	d0fb      	beq.n	8006d2c <_fstat_r+0x18>
 8006d34:	602b      	str	r3, [r5, #0]
 8006d36:	bd38      	pop	{r3, r4, r5, pc}
 8006d38:	20000b18 	.word	0x20000b18

08006d3c <_isatty_r>:
 8006d3c:	b538      	push	{r3, r4, r5, lr}
 8006d3e:	4c07      	ldr	r4, [pc, #28]	; (8006d5c <_isatty_r+0x20>)
 8006d40:	2300      	movs	r3, #0
 8006d42:	4605      	mov	r5, r0
 8006d44:	4608      	mov	r0, r1
 8006d46:	6023      	str	r3, [r4, #0]
 8006d48:	f7fb f9d0 	bl	80020ec <_isatty>
 8006d4c:	1c43      	adds	r3, r0, #1
 8006d4e:	d000      	beq.n	8006d52 <_isatty_r+0x16>
 8006d50:	bd38      	pop	{r3, r4, r5, pc}
 8006d52:	6823      	ldr	r3, [r4, #0]
 8006d54:	2b00      	cmp	r3, #0
 8006d56:	d0fb      	beq.n	8006d50 <_isatty_r+0x14>
 8006d58:	602b      	str	r3, [r5, #0]
 8006d5a:	bd38      	pop	{r3, r4, r5, pc}
 8006d5c:	20000b18 	.word	0x20000b18

08006d60 <__locale_mb_cur_max>:
 8006d60:	4b04      	ldr	r3, [pc, #16]	; (8006d74 <__locale_mb_cur_max+0x14>)
 8006d62:	4a05      	ldr	r2, [pc, #20]	; (8006d78 <__locale_mb_cur_max+0x18>)
 8006d64:	681b      	ldr	r3, [r3, #0]
 8006d66:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006d68:	2b00      	cmp	r3, #0
 8006d6a:	bf08      	it	eq
 8006d6c:	4613      	moveq	r3, r2
 8006d6e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006d72:	4770      	bx	lr
 8006d74:	20000018 	.word	0x20000018
 8006d78:	2000085c 	.word	0x2000085c

08006d7c <_lseek_r>:
 8006d7c:	b570      	push	{r4, r5, r6, lr}
 8006d7e:	460d      	mov	r5, r1
 8006d80:	4c08      	ldr	r4, [pc, #32]	; (8006da4 <_lseek_r+0x28>)
 8006d82:	4611      	mov	r1, r2
 8006d84:	4606      	mov	r6, r0
 8006d86:	461a      	mov	r2, r3
 8006d88:	4628      	mov	r0, r5
 8006d8a:	2300      	movs	r3, #0
 8006d8c:	6023      	str	r3, [r4, #0]
 8006d8e:	f7fb f9af 	bl	80020f0 <_lseek>
 8006d92:	1c43      	adds	r3, r0, #1
 8006d94:	d000      	beq.n	8006d98 <_lseek_r+0x1c>
 8006d96:	bd70      	pop	{r4, r5, r6, pc}
 8006d98:	6823      	ldr	r3, [r4, #0]
 8006d9a:	2b00      	cmp	r3, #0
 8006d9c:	d0fb      	beq.n	8006d96 <_lseek_r+0x1a>
 8006d9e:	6033      	str	r3, [r6, #0]
 8006da0:	bd70      	pop	{r4, r5, r6, pc}
 8006da2:	bf00      	nop
 8006da4:	20000b18 	.word	0x20000b18

08006da8 <__ascii_mbtowc>:
 8006da8:	b082      	sub	sp, #8
 8006daa:	b149      	cbz	r1, 8006dc0 <__ascii_mbtowc+0x18>
 8006dac:	b15a      	cbz	r2, 8006dc6 <__ascii_mbtowc+0x1e>
 8006dae:	b16b      	cbz	r3, 8006dcc <__ascii_mbtowc+0x24>
 8006db0:	7813      	ldrb	r3, [r2, #0]
 8006db2:	600b      	str	r3, [r1, #0]
 8006db4:	7812      	ldrb	r2, [r2, #0]
 8006db6:	1c10      	adds	r0, r2, #0
 8006db8:	bf18      	it	ne
 8006dba:	2001      	movne	r0, #1
 8006dbc:	b002      	add	sp, #8
 8006dbe:	4770      	bx	lr
 8006dc0:	a901      	add	r1, sp, #4
 8006dc2:	2a00      	cmp	r2, #0
 8006dc4:	d1f3      	bne.n	8006dae <__ascii_mbtowc+0x6>
 8006dc6:	4610      	mov	r0, r2
 8006dc8:	b002      	add	sp, #8
 8006dca:	4770      	bx	lr
 8006dcc:	f06f 0001 	mvn.w	r0, #1
 8006dd0:	e7f4      	b.n	8006dbc <__ascii_mbtowc+0x14>
 8006dd2:	bf00      	nop

08006dd4 <_read_r>:
 8006dd4:	b570      	push	{r4, r5, r6, lr}
 8006dd6:	460d      	mov	r5, r1
 8006dd8:	4c08      	ldr	r4, [pc, #32]	; (8006dfc <_read_r+0x28>)
 8006dda:	4611      	mov	r1, r2
 8006ddc:	4606      	mov	r6, r0
 8006dde:	461a      	mov	r2, r3
 8006de0:	4628      	mov	r0, r5
 8006de2:	2300      	movs	r3, #0
 8006de4:	6023      	str	r3, [r4, #0]
 8006de6:	f7fb f937 	bl	8002058 <_read>
 8006dea:	1c43      	adds	r3, r0, #1
 8006dec:	d000      	beq.n	8006df0 <_read_r+0x1c>
 8006dee:	bd70      	pop	{r4, r5, r6, pc}
 8006df0:	6823      	ldr	r3, [r4, #0]
 8006df2:	2b00      	cmp	r3, #0
 8006df4:	d0fb      	beq.n	8006dee <_read_r+0x1a>
 8006df6:	6033      	str	r3, [r6, #0]
 8006df8:	bd70      	pop	{r4, r5, r6, pc}
 8006dfa:	bf00      	nop
 8006dfc:	20000b18 	.word	0x20000b18

08006e00 <__swbuf_r>:
 8006e00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e02:	460d      	mov	r5, r1
 8006e04:	4614      	mov	r4, r2
 8006e06:	4606      	mov	r6, r0
 8006e08:	b110      	cbz	r0, 8006e10 <__swbuf_r+0x10>
 8006e0a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006e0c:	2b00      	cmp	r3, #0
 8006e0e:	d043      	beq.n	8006e98 <__swbuf_r+0x98>
 8006e10:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e14:	69a3      	ldr	r3, [r4, #24]
 8006e16:	60a3      	str	r3, [r4, #8]
 8006e18:	b291      	uxth	r1, r2
 8006e1a:	0708      	lsls	r0, r1, #28
 8006e1c:	d51b      	bpl.n	8006e56 <__swbuf_r+0x56>
 8006e1e:	6923      	ldr	r3, [r4, #16]
 8006e20:	b1cb      	cbz	r3, 8006e56 <__swbuf_r+0x56>
 8006e22:	b2ed      	uxtb	r5, r5
 8006e24:	0489      	lsls	r1, r1, #18
 8006e26:	462f      	mov	r7, r5
 8006e28:	d522      	bpl.n	8006e70 <__swbuf_r+0x70>
 8006e2a:	6822      	ldr	r2, [r4, #0]
 8006e2c:	6961      	ldr	r1, [r4, #20]
 8006e2e:	1ad3      	subs	r3, r2, r3
 8006e30:	4299      	cmp	r1, r3
 8006e32:	dd29      	ble.n	8006e88 <__swbuf_r+0x88>
 8006e34:	3301      	adds	r3, #1
 8006e36:	68a1      	ldr	r1, [r4, #8]
 8006e38:	1c50      	adds	r0, r2, #1
 8006e3a:	3901      	subs	r1, #1
 8006e3c:	60a1      	str	r1, [r4, #8]
 8006e3e:	6020      	str	r0, [r4, #0]
 8006e40:	7015      	strb	r5, [r2, #0]
 8006e42:	6962      	ldr	r2, [r4, #20]
 8006e44:	429a      	cmp	r2, r3
 8006e46:	d02a      	beq.n	8006e9e <__swbuf_r+0x9e>
 8006e48:	89a3      	ldrh	r3, [r4, #12]
 8006e4a:	07db      	lsls	r3, r3, #31
 8006e4c:	d501      	bpl.n	8006e52 <__swbuf_r+0x52>
 8006e4e:	2d0a      	cmp	r5, #10
 8006e50:	d025      	beq.n	8006e9e <__swbuf_r+0x9e>
 8006e52:	4638      	mov	r0, r7
 8006e54:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006e56:	4621      	mov	r1, r4
 8006e58:	4630      	mov	r0, r6
 8006e5a:	f7fc fffd 	bl	8003e58 <__swsetup_r>
 8006e5e:	bb20      	cbnz	r0, 8006eaa <__swbuf_r+0xaa>
 8006e60:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e64:	6923      	ldr	r3, [r4, #16]
 8006e66:	b291      	uxth	r1, r2
 8006e68:	b2ed      	uxtb	r5, r5
 8006e6a:	0489      	lsls	r1, r1, #18
 8006e6c:	462f      	mov	r7, r5
 8006e6e:	d4dc      	bmi.n	8006e2a <__swbuf_r+0x2a>
 8006e70:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006e72:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e76:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006e7a:	81a2      	strh	r2, [r4, #12]
 8006e7c:	6822      	ldr	r2, [r4, #0]
 8006e7e:	6661      	str	r1, [r4, #100]	; 0x64
 8006e80:	6961      	ldr	r1, [r4, #20]
 8006e82:	1ad3      	subs	r3, r2, r3
 8006e84:	4299      	cmp	r1, r3
 8006e86:	dcd5      	bgt.n	8006e34 <__swbuf_r+0x34>
 8006e88:	4621      	mov	r1, r4
 8006e8a:	4630      	mov	r0, r6
 8006e8c:	f7fe f8a6 	bl	8004fdc <_fflush_r>
 8006e90:	b958      	cbnz	r0, 8006eaa <__swbuf_r+0xaa>
 8006e92:	6822      	ldr	r2, [r4, #0]
 8006e94:	2301      	movs	r3, #1
 8006e96:	e7ce      	b.n	8006e36 <__swbuf_r+0x36>
 8006e98:	f7fe f8fc 	bl	8005094 <__sinit>
 8006e9c:	e7b8      	b.n	8006e10 <__swbuf_r+0x10>
 8006e9e:	4621      	mov	r1, r4
 8006ea0:	4630      	mov	r0, r6
 8006ea2:	f7fe f89b 	bl	8004fdc <_fflush_r>
 8006ea6:	2800      	cmp	r0, #0
 8006ea8:	d0d3      	beq.n	8006e52 <__swbuf_r+0x52>
 8006eaa:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006eae:	e7d0      	b.n	8006e52 <__swbuf_r+0x52>

08006eb0 <_wcrtomb_r>:
 8006eb0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006eb2:	4c11      	ldr	r4, [pc, #68]	; (8006ef8 <_wcrtomb_r+0x48>)
 8006eb4:	6824      	ldr	r4, [r4, #0]
 8006eb6:	b085      	sub	sp, #20
 8006eb8:	4606      	mov	r6, r0
 8006eba:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006ebc:	461f      	mov	r7, r3
 8006ebe:	b151      	cbz	r1, 8006ed6 <_wcrtomb_r+0x26>
 8006ec0:	4d0e      	ldr	r5, [pc, #56]	; (8006efc <_wcrtomb_r+0x4c>)
 8006ec2:	2c00      	cmp	r4, #0
 8006ec4:	bf08      	it	eq
 8006ec6:	462c      	moveq	r4, r5
 8006ec8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006ecc:	47a0      	blx	r4
 8006ece:	1c43      	adds	r3, r0, #1
 8006ed0:	d00c      	beq.n	8006eec <_wcrtomb_r+0x3c>
 8006ed2:	b005      	add	sp, #20
 8006ed4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006ed6:	4a09      	ldr	r2, [pc, #36]	; (8006efc <_wcrtomb_r+0x4c>)
 8006ed8:	2c00      	cmp	r4, #0
 8006eda:	bf08      	it	eq
 8006edc:	4614      	moveq	r4, r2
 8006ede:	460a      	mov	r2, r1
 8006ee0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006ee4:	a901      	add	r1, sp, #4
 8006ee6:	47a0      	blx	r4
 8006ee8:	1c43      	adds	r3, r0, #1
 8006eea:	d1f2      	bne.n	8006ed2 <_wcrtomb_r+0x22>
 8006eec:	2200      	movs	r2, #0
 8006eee:	238a      	movs	r3, #138	; 0x8a
 8006ef0:	603a      	str	r2, [r7, #0]
 8006ef2:	6033      	str	r3, [r6, #0]
 8006ef4:	b005      	add	sp, #20
 8006ef6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006ef8:	20000018 	.word	0x20000018
 8006efc:	2000085c 	.word	0x2000085c

08006f00 <__ascii_wctomb>:
 8006f00:	b121      	cbz	r1, 8006f0c <__ascii_wctomb+0xc>
 8006f02:	2aff      	cmp	r2, #255	; 0xff
 8006f04:	d804      	bhi.n	8006f10 <__ascii_wctomb+0x10>
 8006f06:	700a      	strb	r2, [r1, #0]
 8006f08:	2001      	movs	r0, #1
 8006f0a:	4770      	bx	lr
 8006f0c:	4608      	mov	r0, r1
 8006f0e:	4770      	bx	lr
 8006f10:	238a      	movs	r3, #138	; 0x8a
 8006f12:	6003      	str	r3, [r0, #0]
 8006f14:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006f18:	4770      	bx	lr
 8006f1a:	bf00      	nop

08006f1c <_init>:
 8006f1c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f1e:	bf00      	nop
 8006f20:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006f22:	bc08      	pop	{r3}
 8006f24:	469e      	mov	lr, r3
 8006f26:	4770      	bx	lr

08006f28 <_fini>:
 8006f28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f2a:	bf00      	nop
 8006f2c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006f2e:	bc08      	pop	{r3}
 8006f30:	469e      	mov	lr, r3
 8006f32:	4770      	bx	lr
 8006f34:	0000      	movs	r0, r0
	...
