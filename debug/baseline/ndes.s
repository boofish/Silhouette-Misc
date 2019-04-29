
ndes.elf:     file format elf32-littlearm


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
 80001e0:	08007634 	.word	0x08007634

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
 80001fc:	08007634 	.word	0x08007634

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
 8001108:	f640 3090 	movw	r0, #2960	; 0xb90
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 3090 	movw	r0, #2960	; 0xb90
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
 80013e8:	f647 22dc 	movw	r2, #31452	; 0x7adc
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
 800145a:	f240 0018 	movw	r0, #24
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f647 22d4 	movw	r2, #31444	; 0x7ad4
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
 8001484:	f240 0018 	movw	r0, #24
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f647 22d4 	movw	r2, #31444	; 0x7ad4
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
 8001842:	f640 3194 	movw	r1, #2964	; 0xb94
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
 800188c:	f640 3094 	movw	r0, #2964	; 0xb94
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 3094 	movw	r0, #2964	; 0xb94
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
 80019d4:	f647 330c 	movw	r3, #31500	; 0x7b0c
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
 80019fc:	f647 331c 	movw	r3, #31516	; 0x7b1c
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

08001eb6 <des>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	b087      	sub	sp, #28
 8001ec0:	e9cd 0101 	strd	r0, r1, [sp, #4]
 8001ec4:	f640 21b0 	movw	r1, #2736	; 0xab0
 8001ec8:	469b      	mov	fp, r3
 8001eca:	68bb      	ldr	r3, [r7, #8]
 8001ecc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001ed0:	780e      	ldrb	r6, [r1, #0]
 8001ed2:	2e00      	cmp	r6, #0
 8001ed4:	d15c      	bne.n	8001f90 <des+0xda>
 8001ed6:	2601      	movs	r6, #1
 8001ed8:	f04f 7500 	mov.w	r5, #33554432	; 0x2000000
 8001edc:	f04f 6480 	mov.w	r4, #67108864	; 0x4000000
 8001ee0:	f04f 6000 	mov.w	r0, #134217728	; 0x8000000
 8001ee4:	f04f 5e80 	mov.w	lr, #268435456	; 0x10000000
 8001ee8:	f04f 5800 	mov.w	r8, #536870912	; 0x20000000
 8001eec:	f04f 4980 	mov.w	r9, #1073741824	; 0x40000000
 8001ef0:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8001ef4:	700e      	strb	r6, [r1, #0]
 8001ef6:	f640 31d8 	movw	r1, #3032	; 0xbd8
 8001efa:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001efe:	604e      	str	r6, [r1, #4]
 8001f00:	2602      	movs	r6, #2
 8001f02:	608e      	str	r6, [r1, #8]
 8001f04:	2604      	movs	r6, #4
 8001f06:	60ce      	str	r6, [r1, #12]
 8001f08:	2608      	movs	r6, #8
 8001f0a:	610e      	str	r6, [r1, #16]
 8001f0c:	2610      	movs	r6, #16
 8001f0e:	614e      	str	r6, [r1, #20]
 8001f10:	2620      	movs	r6, #32
 8001f12:	618e      	str	r6, [r1, #24]
 8001f14:	2640      	movs	r6, #64	; 0x40
 8001f16:	61ce      	str	r6, [r1, #28]
 8001f18:	2680      	movs	r6, #128	; 0x80
 8001f1a:	620e      	str	r6, [r1, #32]
 8001f1c:	f44f 7680 	mov.w	r6, #256	; 0x100
 8001f20:	624e      	str	r6, [r1, #36]	; 0x24
 8001f22:	f44f 7600 	mov.w	r6, #512	; 0x200
 8001f26:	628e      	str	r6, [r1, #40]	; 0x28
 8001f28:	f44f 6680 	mov.w	r6, #1024	; 0x400
 8001f2c:	62ce      	str	r6, [r1, #44]	; 0x2c
 8001f2e:	f44f 6600 	mov.w	r6, #2048	; 0x800
 8001f32:	630e      	str	r6, [r1, #48]	; 0x30
 8001f34:	f44f 5680 	mov.w	r6, #4096	; 0x1000
 8001f38:	634e      	str	r6, [r1, #52]	; 0x34
 8001f3a:	f44f 5600 	mov.w	r6, #8192	; 0x2000
 8001f3e:	638e      	str	r6, [r1, #56]	; 0x38
 8001f40:	f44f 4680 	mov.w	r6, #16384	; 0x4000
 8001f44:	63ce      	str	r6, [r1, #60]	; 0x3c
 8001f46:	f44f 4600 	mov.w	r6, #32768	; 0x8000
 8001f4a:	640e      	str	r6, [r1, #64]	; 0x40
 8001f4c:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 8001f50:	644e      	str	r6, [r1, #68]	; 0x44
 8001f52:	f44f 3600 	mov.w	r6, #131072	; 0x20000
 8001f56:	648e      	str	r6, [r1, #72]	; 0x48
 8001f58:	f44f 2680 	mov.w	r6, #262144	; 0x40000
 8001f5c:	64ce      	str	r6, [r1, #76]	; 0x4c
 8001f5e:	f44f 2600 	mov.w	r6, #524288	; 0x80000
 8001f62:	650e      	str	r6, [r1, #80]	; 0x50
 8001f64:	f44f 1680 	mov.w	r6, #1048576	; 0x100000
 8001f68:	654e      	str	r6, [r1, #84]	; 0x54
 8001f6a:	f44f 1600 	mov.w	r6, #2097152	; 0x200000
 8001f6e:	658e      	str	r6, [r1, #88]	; 0x58
 8001f70:	f44f 0680 	mov.w	r6, #4194304	; 0x400000
 8001f74:	65ce      	str	r6, [r1, #92]	; 0x5c
 8001f76:	f44f 0600 	mov.w	r6, #8388608	; 0x800000
 8001f7a:	660e      	str	r6, [r1, #96]	; 0x60
 8001f7c:	f04f 7680 	mov.w	r6, #16777216	; 0x1000000
 8001f80:	e9c1 6519 	strd	r6, r5, [r1, #100]	; 0x64
 8001f84:	e9c1 401b 	strd	r4, r0, [r1, #108]	; 0x6c
 8001f88:	e9c1 e81d 	strd	lr, r8, [r1, #116]	; 0x74
 8001f8c:	e9c1 9c1f 	strd	r9, ip, [r1, #124]	; 0x7c
 8001f90:	6818      	ldr	r0, [r3, #0]
 8001f92:	2800      	cmp	r0, #0
 8001f94:	f000 8127 	beq.w	80021e6 <des+0x330>
 8001f98:	f640 20b4 	movw	r0, #2740	; 0xab4
 8001f9c:	f247 6ed2 	movw	lr, #30418	; 0x76d2
 8001fa0:	f640 38d8 	movw	r8, #3032	; 0xbd8
 8001fa4:	2100      	movs	r1, #0
 8001fa6:	f04f 0901 	mov.w	r9, #1
 8001faa:	2400      	movs	r4, #0
 8001fac:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fb0:	6019      	str	r1, [r3, #0]
 8001fb2:	f6c0 0e00 	movt	lr, #2048	; 0x800
 8001fb6:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8001fba:	6001      	str	r1, [r0, #0]
 8001fbc:	4682      	mov	sl, r0
 8001fbe:	6041      	str	r1, [r0, #4]
 8001fc0:	2000      	movs	r0, #0
 8001fc2:	eb0e 0501 	add.w	r5, lr, r1
 8001fc6:	465b      	mov	r3, fp
 8001fc8:	f895 c01c 	ldrb.w	ip, [r5, #28]
 8001fcc:	f895 5038 	ldrb.w	r5, [r5, #56]	; 0x38
 8001fd0:	f1b5 0620 	subs.w	r6, r5, #32
 8001fd4:	bf98      	it	ls
 8001fd6:	462e      	movls	r6, r5
 8001fd8:	f858 5026 	ldr.w	r5, [r8, r6, lsl #2]
 8001fdc:	bf88      	it	hi
 8001fde:	4613      	movhi	r3, r2
 8001fe0:	0066      	lsls	r6, r4, #1
 8001fe2:	422b      	tst	r3, r5
 8001fe4:	ea4f 0540 	mov.w	r5, r0, lsl #1
 8001fe8:	bf18      	it	ne
 8001fea:	ea49 0644 	orrne.w	r6, r9, r4, lsl #1
 8001fee:	f1bc 0320 	subs.w	r3, ip, #32
 8001ff2:	465c      	mov	r4, fp
 8001ff4:	bf98      	it	ls
 8001ff6:	4663      	movls	r3, ip
 8001ff8:	f858 3023 	ldr.w	r3, [r8, r3, lsl #2]
 8001ffc:	bf88      	it	hi
 8001ffe:	4614      	movhi	r4, r2
 8002000:	421c      	tst	r4, r3
 8002002:	4634      	mov	r4, r6
 8002004:	bf18      	it	ne
 8002006:	ea49 0540 	orrne.w	r5, r9, r0, lsl #1
 800200a:	1e48      	subs	r0, r1, #1
 800200c:	311c      	adds	r1, #28
 800200e:	2901      	cmp	r1, #1
 8002010:	4601      	mov	r1, r0
 8002012:	4628      	mov	r0, r5
 8002014:	dcd5      	bgt.n	8001fc2 <des+0x10c>
 8002016:	e9ca 6500 	strd	r6, r5, [sl]
 800201a:	f640 16e4 	movw	r6, #2532	; 0x9e4
 800201e:	ab03      	add	r3, sp, #12
 8002020:	f10d 080c 	add.w	r8, sp, #12
 8002024:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002028:	f106 020c 	add.w	r2, r6, #12
 800202c:	ca07      	ldmia	r2, {r0, r1, r2}
 800202e:	c307      	stmia	r3!, {r0, r1, r2}
 8002030:	2001      	movs	r0, #1
 8002032:	4641      	mov	r1, r8
 8002034:	f000 f97a 	bl	800232c <ks>
 8002038:	aa03      	add	r2, sp, #12
 800203a:	f106 030c 	add.w	r3, r6, #12
 800203e:	ca07      	ldmia	r2, {r0, r1, r2}
 8002040:	c307      	stmia	r3!, {r0, r1, r2}
 8002042:	f106 0218 	add.w	r2, r6, #24
 8002046:	ab03      	add	r3, sp, #12
 8002048:	ca07      	ldmia	r2, {r0, r1, r2}
 800204a:	c307      	stmia	r3!, {r0, r1, r2}
 800204c:	2002      	movs	r0, #2
 800204e:	4641      	mov	r1, r8
 8002050:	f000 f96c 	bl	800232c <ks>
 8002054:	aa03      	add	r2, sp, #12
 8002056:	f106 0318 	add.w	r3, r6, #24
 800205a:	ca07      	ldmia	r2, {r0, r1, r2}
 800205c:	c307      	stmia	r3!, {r0, r1, r2}
 800205e:	f106 0224 	add.w	r2, r6, #36	; 0x24
 8002062:	ab03      	add	r3, sp, #12
 8002064:	ca07      	ldmia	r2, {r0, r1, r2}
 8002066:	c307      	stmia	r3!, {r0, r1, r2}
 8002068:	2003      	movs	r0, #3
 800206a:	4641      	mov	r1, r8
 800206c:	f000 f95e 	bl	800232c <ks>
 8002070:	aa03      	add	r2, sp, #12
 8002072:	f106 0324 	add.w	r3, r6, #36	; 0x24
 8002076:	ca07      	ldmia	r2, {r0, r1, r2}
 8002078:	c307      	stmia	r3!, {r0, r1, r2}
 800207a:	f106 0230 	add.w	r2, r6, #48	; 0x30
 800207e:	ab03      	add	r3, sp, #12
 8002080:	ca07      	ldmia	r2, {r0, r1, r2}
 8002082:	c307      	stmia	r3!, {r0, r1, r2}
 8002084:	2004      	movs	r0, #4
 8002086:	4641      	mov	r1, r8
 8002088:	f000 f950 	bl	800232c <ks>
 800208c:	aa03      	add	r2, sp, #12
 800208e:	f106 0330 	add.w	r3, r6, #48	; 0x30
 8002092:	ca07      	ldmia	r2, {r0, r1, r2}
 8002094:	c307      	stmia	r3!, {r0, r1, r2}
 8002096:	f106 023c 	add.w	r2, r6, #60	; 0x3c
 800209a:	ab03      	add	r3, sp, #12
 800209c:	ca07      	ldmia	r2, {r0, r1, r2}
 800209e:	c307      	stmia	r3!, {r0, r1, r2}
 80020a0:	2005      	movs	r0, #5
 80020a2:	4641      	mov	r1, r8
 80020a4:	f000 f942 	bl	800232c <ks>
 80020a8:	aa03      	add	r2, sp, #12
 80020aa:	f106 033c 	add.w	r3, r6, #60	; 0x3c
 80020ae:	ca07      	ldmia	r2, {r0, r1, r2}
 80020b0:	c307      	stmia	r3!, {r0, r1, r2}
 80020b2:	f106 0248 	add.w	r2, r6, #72	; 0x48
 80020b6:	ab03      	add	r3, sp, #12
 80020b8:	ca07      	ldmia	r2, {r0, r1, r2}
 80020ba:	c307      	stmia	r3!, {r0, r1, r2}
 80020bc:	2006      	movs	r0, #6
 80020be:	4641      	mov	r1, r8
 80020c0:	f000 f934 	bl	800232c <ks>
 80020c4:	aa03      	add	r2, sp, #12
 80020c6:	f106 0348 	add.w	r3, r6, #72	; 0x48
 80020ca:	ca07      	ldmia	r2, {r0, r1, r2}
 80020cc:	c307      	stmia	r3!, {r0, r1, r2}
 80020ce:	f106 0254 	add.w	r2, r6, #84	; 0x54
 80020d2:	ab03      	add	r3, sp, #12
 80020d4:	ca07      	ldmia	r2, {r0, r1, r2}
 80020d6:	c307      	stmia	r3!, {r0, r1, r2}
 80020d8:	2007      	movs	r0, #7
 80020da:	4641      	mov	r1, r8
 80020dc:	f000 f926 	bl	800232c <ks>
 80020e0:	aa03      	add	r2, sp, #12
 80020e2:	f106 0354 	add.w	r3, r6, #84	; 0x54
 80020e6:	ca07      	ldmia	r2, {r0, r1, r2}
 80020e8:	c307      	stmia	r3!, {r0, r1, r2}
 80020ea:	f106 0260 	add.w	r2, r6, #96	; 0x60
 80020ee:	ab03      	add	r3, sp, #12
 80020f0:	ca07      	ldmia	r2, {r0, r1, r2}
 80020f2:	c307      	stmia	r3!, {r0, r1, r2}
 80020f4:	2008      	movs	r0, #8
 80020f6:	4641      	mov	r1, r8
 80020f8:	f000 f918 	bl	800232c <ks>
 80020fc:	aa03      	add	r2, sp, #12
 80020fe:	f106 0360 	add.w	r3, r6, #96	; 0x60
 8002102:	ca07      	ldmia	r2, {r0, r1, r2}
 8002104:	c307      	stmia	r3!, {r0, r1, r2}
 8002106:	f106 026c 	add.w	r2, r6, #108	; 0x6c
 800210a:	ab03      	add	r3, sp, #12
 800210c:	ca07      	ldmia	r2, {r0, r1, r2}
 800210e:	c307      	stmia	r3!, {r0, r1, r2}
 8002110:	2009      	movs	r0, #9
 8002112:	4641      	mov	r1, r8
 8002114:	f000 f90a 	bl	800232c <ks>
 8002118:	aa03      	add	r2, sp, #12
 800211a:	f106 036c 	add.w	r3, r6, #108	; 0x6c
 800211e:	ca07      	ldmia	r2, {r0, r1, r2}
 8002120:	c307      	stmia	r3!, {r0, r1, r2}
 8002122:	f106 0278 	add.w	r2, r6, #120	; 0x78
 8002126:	ab03      	add	r3, sp, #12
 8002128:	ca07      	ldmia	r2, {r0, r1, r2}
 800212a:	c307      	stmia	r3!, {r0, r1, r2}
 800212c:	200a      	movs	r0, #10
 800212e:	4641      	mov	r1, r8
 8002130:	f000 f8fc 	bl	800232c <ks>
 8002134:	aa03      	add	r2, sp, #12
 8002136:	f106 0378 	add.w	r3, r6, #120	; 0x78
 800213a:	ca07      	ldmia	r2, {r0, r1, r2}
 800213c:	c307      	stmia	r3!, {r0, r1, r2}
 800213e:	f106 0284 	add.w	r2, r6, #132	; 0x84
 8002142:	ab03      	add	r3, sp, #12
 8002144:	ca07      	ldmia	r2, {r0, r1, r2}
 8002146:	c307      	stmia	r3!, {r0, r1, r2}
 8002148:	200b      	movs	r0, #11
 800214a:	4641      	mov	r1, r8
 800214c:	f000 f8ee 	bl	800232c <ks>
 8002150:	aa03      	add	r2, sp, #12
 8002152:	f106 0384 	add.w	r3, r6, #132	; 0x84
 8002156:	ca07      	ldmia	r2, {r0, r1, r2}
 8002158:	c307      	stmia	r3!, {r0, r1, r2}
 800215a:	f106 0290 	add.w	r2, r6, #144	; 0x90
 800215e:	ab03      	add	r3, sp, #12
 8002160:	ca07      	ldmia	r2, {r0, r1, r2}
 8002162:	c307      	stmia	r3!, {r0, r1, r2}
 8002164:	200c      	movs	r0, #12
 8002166:	4641      	mov	r1, r8
 8002168:	f000 f8e0 	bl	800232c <ks>
 800216c:	aa03      	add	r2, sp, #12
 800216e:	f106 0390 	add.w	r3, r6, #144	; 0x90
 8002172:	ca07      	ldmia	r2, {r0, r1, r2}
 8002174:	c307      	stmia	r3!, {r0, r1, r2}
 8002176:	f106 029c 	add.w	r2, r6, #156	; 0x9c
 800217a:	ab03      	add	r3, sp, #12
 800217c:	ca07      	ldmia	r2, {r0, r1, r2}
 800217e:	c307      	stmia	r3!, {r0, r1, r2}
 8002180:	200d      	movs	r0, #13
 8002182:	4641      	mov	r1, r8
 8002184:	f000 f8d2 	bl	800232c <ks>
 8002188:	aa03      	add	r2, sp, #12
 800218a:	f106 039c 	add.w	r3, r6, #156	; 0x9c
 800218e:	ca07      	ldmia	r2, {r0, r1, r2}
 8002190:	c307      	stmia	r3!, {r0, r1, r2}
 8002192:	f106 02a8 	add.w	r2, r6, #168	; 0xa8
 8002196:	ab03      	add	r3, sp, #12
 8002198:	ca07      	ldmia	r2, {r0, r1, r2}
 800219a:	c307      	stmia	r3!, {r0, r1, r2}
 800219c:	200e      	movs	r0, #14
 800219e:	4641      	mov	r1, r8
 80021a0:	f000 f8c4 	bl	800232c <ks>
 80021a4:	aa03      	add	r2, sp, #12
 80021a6:	f106 03a8 	add.w	r3, r6, #168	; 0xa8
 80021aa:	ca07      	ldmia	r2, {r0, r1, r2}
 80021ac:	c307      	stmia	r3!, {r0, r1, r2}
 80021ae:	f106 02b4 	add.w	r2, r6, #180	; 0xb4
 80021b2:	ab03      	add	r3, sp, #12
 80021b4:	ca07      	ldmia	r2, {r0, r1, r2}
 80021b6:	c307      	stmia	r3!, {r0, r1, r2}
 80021b8:	200f      	movs	r0, #15
 80021ba:	4641      	mov	r1, r8
 80021bc:	f000 f8b6 	bl	800232c <ks>
 80021c0:	aa03      	add	r2, sp, #12
 80021c2:	f106 03b4 	add.w	r3, r6, #180	; 0xb4
 80021c6:	ca07      	ldmia	r2, {r0, r1, r2}
 80021c8:	c307      	stmia	r3!, {r0, r1, r2}
 80021ca:	f106 02c0 	add.w	r2, r6, #192	; 0xc0
 80021ce:	ab03      	add	r3, sp, #12
 80021d0:	ca07      	ldmia	r2, {r0, r1, r2}
 80021d2:	c307      	stmia	r3!, {r0, r1, r2}
 80021d4:	2010      	movs	r0, #16
 80021d6:	4641      	mov	r1, r8
 80021d8:	f000 f8a8 	bl	800232c <ks>
 80021dc:	aa03      	add	r2, sp, #12
 80021de:	f106 03c0 	add.w	r3, r6, #192	; 0xc0
 80021e2:	ca07      	ldmia	r2, {r0, r1, r2}
 80021e4:	c307      	stmia	r3!, {r0, r1, r2}
 80021e6:	e9dd b801 	ldrd	fp, r8, [sp, #4]
 80021ea:	f247 6c50 	movw	ip, #30288	; 0x7650
 80021ee:	f640 39d8 	movw	r9, #3032	; 0xbd8
 80021f2:	2300      	movs	r3, #0
 80021f4:	f04f 0e01 	mov.w	lr, #1
 80021f8:	2500      	movs	r5, #0
 80021fa:	2600      	movs	r6, #0
 80021fc:	f6c0 0c00 	movt	ip, #2048	; 0x800
 8002200:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8002204:	eb0c 0003 	add.w	r0, ip, r3
 8002208:	4642      	mov	r2, r8
 800220a:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 800220e:	f890 4020 	ldrb.w	r4, [r0, #32]
 8002212:	f890 0040 	ldrb.w	r0, [r0, #64]	; 0x40
 8002216:	f1b0 0120 	subs.w	r1, r0, #32
 800221a:	bf98      	it	ls
 800221c:	4601      	movls	r1, r0
 800221e:	f859 1021 	ldr.w	r1, [r9, r1, lsl #2]
 8002222:	bf88      	it	hi
 8002224:	465a      	movhi	r2, fp
 8002226:	420a      	tst	r2, r1
 8002228:	4642      	mov	r2, r8
 800222a:	bf18      	it	ne
 800222c:	ea4e 0a45 	orrne.w	sl, lr, r5, lsl #1
 8002230:	f1b4 0120 	subs.w	r1, r4, #32
 8002234:	bf98      	it	ls
 8002236:	4621      	movls	r1, r4
 8002238:	ea4f 0446 	mov.w	r4, r6, lsl #1
 800223c:	4655      	mov	r5, sl
 800223e:	f859 1021 	ldr.w	r1, [r9, r1, lsl #2]
 8002242:	bf88      	it	hi
 8002244:	465a      	movhi	r2, fp
 8002246:	420a      	tst	r2, r1
 8002248:	f1a3 0101 	sub.w	r1, r3, #1
 800224c:	f103 0220 	add.w	r2, r3, #32
 8002250:	bf18      	it	ne
 8002252:	ea4e 0446 	orrne.w	r4, lr, r6, lsl #1
 8002256:	2a01      	cmp	r2, #1
 8002258:	460b      	mov	r3, r1
 800225a:	4626      	mov	r6, r4
 800225c:	dcd2      	bgt.n	8002204 <des+0x34e>
 800225e:	f640 18e4 	movw	r8, #2532	; 0x9e4
 8002262:	2501      	movs	r5, #1
 8002264:	2610      	movs	r6, #16
 8002266:	f2c2 0800 	movt	r8, #8192	; 0x2000
 800226a:	68f8      	ldr	r0, [r7, #12]
 800226c:	46d3      	mov	fp, sl
 800226e:	2801      	cmp	r0, #1
 8002270:	4628      	mov	r0, r5
 8002272:	bf08      	it	eq
 8002274:	4630      	moveq	r0, r6
 8002276:	eb00 0040 	add.w	r0, r0, r0, lsl #1
 800227a:	f858 1020 	ldr.w	r1, [r8, r0, lsl #2]
 800227e:	eb08 0080 	add.w	r0, r8, r0, lsl #2
 8002282:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
 8002286:	a806      	add	r0, sp, #24
 8002288:	9000      	str	r0, [sp, #0]
 800228a:	4658      	mov	r0, fp
 800228c:	f000 f8e9 	bl	8002462 <cyfun>
 8002290:	9806      	ldr	r0, [sp, #24]
 8002292:	3e01      	subs	r6, #1
 8002294:	f105 0501 	add.w	r5, r5, #1
 8002298:	ea80 0a04 	eor.w	sl, r0, r4
 800229c:	465c      	mov	r4, fp
 800229e:	f8cd a018 	str.w	sl, [sp, #24]
 80022a2:	d1e2      	bne.n	800226a <des+0x3b4>
 80022a4:	6938      	ldr	r0, [r7, #16]
 80022a6:	f247 6c91 	movw	ip, #30353	; 0x7691
 80022aa:	2300      	movs	r3, #0
 80022ac:	f04f 0e01 	mov.w	lr, #1
 80022b0:	f04f 0800 	mov.w	r8, #0
 80022b4:	2500      	movs	r5, #0
 80022b6:	f8cd b018 	str.w	fp, [sp, #24]
 80022ba:	f6c0 0c00 	movt	ip, #2048	; 0x800
 80022be:	e9c0 3300 	strd	r3, r3, [r0]
 80022c2:	eb0c 0403 	add.w	r4, ip, r3
 80022c6:	4650      	mov	r0, sl
 80022c8:	f894 1020 	ldrb.w	r1, [r4, #32]
 80022cc:	f894 4040 	ldrb.w	r4, [r4, #64]	; 0x40
 80022d0:	f1b4 0220 	subs.w	r2, r4, #32
 80022d4:	bf98      	it	ls
 80022d6:	4622      	movls	r2, r4
 80022d8:	f1b1 0620 	subs.w	r6, r1, #32
 80022dc:	bf98      	it	ls
 80022de:	460e      	movls	r6, r1
 80022e0:	f859 1026 	ldr.w	r1, [r9, r6, lsl #2]
 80022e4:	bf88      	it	hi
 80022e6:	4658      	movhi	r0, fp
 80022e8:	006e      	lsls	r6, r5, #1
 80022ea:	4208      	tst	r0, r1
 80022ec:	6938      	ldr	r0, [r7, #16]
 80022ee:	4651      	mov	r1, sl
 80022f0:	bf18      	it	ne
 80022f2:	ea4e 0645 	orrne.w	r6, lr, r5, lsl #1
 80022f6:	2c20      	cmp	r4, #32
 80022f8:	4635      	mov	r5, r6
 80022fa:	6046      	str	r6, [r0, #4]
 80022fc:	f859 0022 	ldr.w	r0, [r9, r2, lsl #2]
 8002300:	bf88      	it	hi
 8002302:	4659      	movhi	r1, fp
 8002304:	ea4f 0248 	mov.w	r2, r8, lsl #1
 8002308:	4201      	tst	r1, r0
 800230a:	6938      	ldr	r0, [r7, #16]
 800230c:	f103 0120 	add.w	r1, r3, #32
 8002310:	bf18      	it	ne
 8002312:	ea4e 0248 	orrne.w	r2, lr, r8, lsl #1
 8002316:	2901      	cmp	r1, #1
 8002318:	4690      	mov	r8, r2
 800231a:	6002      	str	r2, [r0, #0]
 800231c:	f1a3 0001 	sub.w	r0, r3, #1
 8002320:	4603      	mov	r3, r0
 8002322:	dcce      	bgt.n	80022c2 <des+0x40c>
 8002324:	b007      	add	sp, #28
 8002326:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800232a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800232c <ks>:
 800232c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800232e:	af03      	add	r7, sp, #12
 8002330:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002334:	b082      	sub	sp, #8
 8002336:	468c      	mov	ip, r1
 8002338:	2810      	cmp	r0, #16
 800233a:	d877      	bhi.n	800242c <ks+0x100>
 800233c:	2201      	movs	r2, #1
 800233e:	fa02 f000 	lsl.w	r0, r2, r0
 8002342:	f240 2206 	movw	r2, #518	; 0x206
 8002346:	f2c0 0201 	movt	r2, #1
 800234a:	4210      	tst	r0, r2
 800234c:	d06e      	beq.n	800242c <ks+0x100>
 800234e:	f640 20b4 	movw	r0, #2740	; 0xab4
 8002352:	f04f 5380 	mov.w	r3, #268435456	; 0x10000000
 8002356:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800235a:	6842      	ldr	r2, [r0, #4]
 800235c:	ea03 7602 	and.w	r6, r3, r2, lsl #28
 8002360:	4332      	orrs	r2, r6
 8002362:	ea4f 0952 	mov.w	r9, r2, lsr #1
 8002366:	f8c0 9004 	str.w	r9, [r0, #4]
 800236a:	6800      	ldr	r0, [r0, #0]
 800236c:	ea03 7200 	and.w	r2, r3, r0, lsl #28
 8002370:	4310      	orrs	r0, r2
 8002372:	0842      	lsrs	r2, r0, #1
 8002374:	f640 20b4 	movw	r0, #2740	; 0xab4
 8002378:	f640 3ad8 	movw	sl, #3032	; 0xbd8
 800237c:	f04f 0e00 	mov.w	lr, #0
 8002380:	f04f 0800 	mov.w	r8, #0
 8002384:	2300      	movs	r3, #0
 8002386:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800238a:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 800238e:	9200      	str	r2, [sp, #0]
 8002390:	6002      	str	r2, [r0, #0]
 8002392:	2000      	movs	r0, #0
 8002394:	e9cc 0000 	strd	r0, r0, [ip]
 8002398:	f8cc 0008 	str.w	r0, [ip, #8]
 800239c:	f247 720b 	movw	r2, #30475	; 0x770b
 80023a0:	464d      	mov	r5, r9
 80023a2:	005e      	lsls	r6, r3, #1
 80023a4:	f6c0 0200 	movt	r2, #2048	; 0x800
 80023a8:	1814      	adds	r4, r2, r0
 80023aa:	f894 1030 	ldrb.w	r1, [r4, #48]	; 0x30
 80023ae:	f894 b010 	ldrb.w	fp, [r4, #16]
 80023b2:	f894 2020 	ldrb.w	r2, [r4, #32]
 80023b6:	4664      	mov	r4, ip
 80023b8:	f100 0c07 	add.w	ip, r0, #7
 80023bc:	f1bc 0f18 	cmp.w	ip, #24
 80023c0:	9101      	str	r1, [sp, #4]
 80023c2:	9900      	ldr	r1, [sp, #0]
 80023c4:	bf3c      	itt	cc
 80023c6:	460d      	movcc	r5, r1
 80023c8:	3a1c      	subcc	r2, #28
 80023ca:	f85a c02b 	ldr.w	ip, [sl, fp, lsl #2]
 80023ce:	ea1c 0f09 	tst.w	ip, r9
 80023d2:	46a4      	mov	ip, r4
 80023d4:	f04f 0401 	mov.w	r4, #1
 80023d8:	bf18      	it	ne
 80023da:	ea44 0643 	orrne.w	r6, r4, r3, lsl #1
 80023de:	ea4f 0348 	mov.w	r3, r8, lsl #1
 80023e2:	f8cc 6008 	str.w	r6, [ip, #8]
 80023e6:	f85a 2022 	ldr.w	r2, [sl, r2, lsl #2]
 80023ea:	422a      	tst	r2, r5
 80023ec:	ea4f 054e 	mov.w	r5, lr, lsl #1
 80023f0:	bf18      	it	ne
 80023f2:	ea44 0348 	orrne.w	r3, r4, r8, lsl #1
 80023f6:	9a01      	ldr	r2, [sp, #4]
 80023f8:	f8cc 3004 	str.w	r3, [ip, #4]
 80023fc:	4698      	mov	r8, r3
 80023fe:	4633      	mov	r3, r6
 8002400:	eb0a 0282 	add.w	r2, sl, r2, lsl #2
 8002404:	f852 2c70 	ldr.w	r2, [r2, #-112]
 8002408:	420a      	tst	r2, r1
 800240a:	f1a0 0201 	sub.w	r2, r0, #1
 800240e:	f100 0010 	add.w	r0, r0, #16
 8002412:	bf18      	it	ne
 8002414:	ea44 054e 	orrne.w	r5, r4, lr, lsl #1
 8002418:	2801      	cmp	r0, #1
 800241a:	4610      	mov	r0, r2
 800241c:	46ae      	mov	lr, r5
 800241e:	f8cc 5000 	str.w	r5, [ip]
 8002422:	dcbb      	bgt.n	800239c <ks+0x70>
 8002424:	b002      	add	sp, #8
 8002426:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800242a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800242c:	f640 20b4 	movw	r0, #2740	; 0xab4
 8002430:	f04f 5680 	mov.w	r6, #268435456	; 0x10000000
 8002434:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002438:	e9d0 2300 	ldrd	r2, r3, [r0]
 800243c:	ea06 7503 	and.w	r5, r6, r3, lsl #28
 8002440:	432b      	orrs	r3, r5
 8002442:	ea06 65c3 	and.w	r5, r6, r3, lsl #27
 8002446:	ea45 0353 	orr.w	r3, r5, r3, lsr #1
 800244a:	ea4f 0953 	mov.w	r9, r3, lsr #1
 800244e:	f8c0 9004 	str.w	r9, [r0, #4]
 8002452:	ea06 7002 	and.w	r0, r6, r2, lsl #28
 8002456:	4310      	orrs	r0, r2
 8002458:	ea06 62c0 	and.w	r2, r6, r0, lsl #27
 800245c:	ea42 0050 	orr.w	r0, r2, r0, lsr #1
 8002460:	e787      	b.n	8002372 <ks+0x46>

08002462 <cyfun>:
 8002462:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002464:	af03      	add	r7, sp, #12
 8002466:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800246a:	b086      	sub	sp, #24
 800246c:	e9cd 2300 	strd	r2, r3, [sp]
 8002470:	f247 723c 	movw	r2, #30524	; 0x773c
 8002474:	f640 3ed8 	movw	lr, #3032	; 0xbd8
 8002478:	f04f 0b00 	mov.w	fp, #0
 800247c:	f04f 0901 	mov.w	r9, #1
 8002480:	f04f 0c00 	mov.w	ip, #0
 8002484:	2600      	movs	r6, #0
 8002486:	f04f 0800 	mov.w	r8, #0
 800248a:	9102      	str	r1, [sp, #8]
 800248c:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002490:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002494:	eb02 048b 	add.w	r4, r2, fp, lsl #2
 8002498:	ea4f 0a4c 	mov.w	sl, ip, lsl #1
 800249c:	6c21      	ldr	r1, [r4, #64]	; 0x40
 800249e:	f8d4 5080 	ldr.w	r5, [r4, #128]	; 0x80
 80024a2:	f8d4 40c0 	ldr.w	r4, [r4, #192]	; 0xc0
 80024a6:	f85e 3024 	ldr.w	r3, [lr, r4, lsl #2]
 80024aa:	ea4f 0448 	mov.w	r4, r8, lsl #1
 80024ae:	4203      	tst	r3, r0
 80024b0:	bf18      	it	ne
 80024b2:	ea49 0448 	orrne.w	r4, r9, r8, lsl #1
 80024b6:	f85e 3025 	ldr.w	r3, [lr, r5, lsl #2]
 80024ba:	0075      	lsls	r5, r6, #1
 80024bc:	46a0      	mov	r8, r4
 80024be:	4203      	tst	r3, r0
 80024c0:	f10b 0310 	add.w	r3, fp, #16
 80024c4:	bf18      	it	ne
 80024c6:	ea49 0546 	orrne.w	r5, r9, r6, lsl #1
 80024ca:	f85e 1021 	ldr.w	r1, [lr, r1, lsl #2]
 80024ce:	462e      	mov	r6, r5
 80024d0:	4201      	tst	r1, r0
 80024d2:	f1ab 0101 	sub.w	r1, fp, #1
 80024d6:	bf18      	it	ne
 80024d8:	ea49 0a4c 	orrne.w	sl, r9, ip, lsl #1
 80024dc:	2b01      	cmp	r3, #1
 80024de:	468b      	mov	fp, r1
 80024e0:	46d4      	mov	ip, sl
 80024e2:	dcd7      	bgt.n	8002494 <cyfun+0x32>
 80024e4:	9800      	ldr	r0, [sp, #0]
 80024e6:	9901      	ldr	r1, [sp, #4]
 80024e8:	f647 0984 	movw	r9, #30852	; 0x7884
 80024ec:	f04f 0802 	mov.w	r8, #2
 80024f0:	f04f 0c08 	mov.w	ip, #8
 80024f4:	f6c0 0900 	movt	r9, #2048	; 0x800
 80024f8:	ea81 010a 	eor.w	r1, r1, sl
 80024fc:	4068      	eors	r0, r5
 80024fe:	f647 3a2c 	movw	sl, #31532	; 0x7b2c
 8002502:	eb01 4100 	add.w	r1, r1, r0, lsl #16
 8002506:	0a00      	lsrs	r0, r0, #8
 8002508:	f6c0 0a00 	movt	sl, #2048	; 0x800
 800250c:	f001 023f 	and.w	r2, r1, #63	; 0x3f
 8002510:	f807 2c24 	strb.w	r2, [r7, #-36]
 8002514:	9a02      	ldr	r2, [sp, #8]
 8002516:	4062      	eors	r2, r4
 8002518:	eb00 2002 	add.w	r0, r0, r2, lsl #8
 800251c:	f000 023f 	and.w	r2, r0, #63	; 0x3f
 8002520:	f807 2c20 	strb.w	r2, [r7, #-32]
 8002524:	f3c1 1285 	ubfx	r2, r1, #6, #6
 8002528:	f807 2c23 	strb.w	r2, [r7, #-35]
 800252c:	f3c0 1285 	ubfx	r2, r0, #6, #6
 8002530:	f807 2c1f 	strb.w	r2, [r7, #-31]
 8002534:	f3c1 3205 	ubfx	r2, r1, #12, #6
 8002538:	f807 2c22 	strb.w	r2, [r7, #-34]
 800253c:	f3c0 3205 	ubfx	r2, r0, #12, #6
 8002540:	f807 2c1e 	strb.w	r2, [r7, #-30]
 8002544:	f3c1 4185 	ubfx	r1, r1, #18, #6
 8002548:	2200      	movs	r2, #0
 800254a:	f807 1c21 	strb.w	r1, [r7, #-33]
 800254e:	f3c0 4385 	ubfx	r3, r0, #18, #6
 8002552:	f1a7 0025 	sub.w	r0, r7, #37	; 0x25
 8002556:	f100 0b07 	add.w	fp, r0, #7
 800255a:	2000      	movs	r0, #0
 800255c:	f807 3c1d 	strb.w	r3, [r7, #-29]
 8002560:	e002      	b.n	8002568 <cyfun+0x106>
 8002562:	f81b 3002 	ldrb.w	r3, [fp, r2]
 8002566:	3a01      	subs	r2, #1
 8002568:	b2dc      	uxtb	r4, r3
 800256a:	f003 0104 	and.w	r1, r3, #4
 800256e:	ea0c 0684 	and.w	r6, ip, r4, lsl #2
 8002572:	ea08 0594 	and.w	r5, r8, r4, lsr #2
 8002576:	4331      	orrs	r1, r6
 8002578:	4329      	orrs	r1, r5
 800257a:	f3c4 1500 	ubfx	r5, r4, #4, #1
 800257e:	f3c4 1440 	ubfx	r4, r4, #5, #1
 8002582:	4329      	orrs	r1, r5
 8002584:	f363 0441 	bfi	r4, r3, #1, #1
 8002588:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
 800258c:	eb04 03c4 	add.w	r3, r4, r4, lsl #3
 8002590:	eb03 0181 	add.w	r1, r3, r1, lsl #2
 8002594:	4411      	add	r1, r2
 8002596:	4449      	add	r1, r9
 8002598:	7a09      	ldrb	r1, [r1, #8]
 800259a:	f81a 1001 	ldrb.w	r1, [sl, r1]
 800259e:	ea41 1000 	orr.w	r0, r1, r0, lsl #4
 80025a2:	f102 0108 	add.w	r1, r2, #8
 80025a6:	2902      	cmp	r1, #2
 80025a8:	dadb      	bge.n	8002562 <cyfun+0x100>
 80025aa:	f8d7 c008 	ldr.w	ip, [r7, #8]
 80025ae:	f647 0200 	movw	r2, #30720	; 0x7800
 80025b2:	2500      	movs	r5, #0
 80025b4:	2120      	movs	r1, #32
 80025b6:	2401      	movs	r4, #1
 80025b8:	f6c0 0200 	movt	r2, #2048	; 0x800
 80025bc:	f8cc 5000 	str.w	r5, [ip]
 80025c0:	f852 6021 	ldr.w	r6, [r2, r1, lsl #2]
 80025c4:	006b      	lsls	r3, r5, #1
 80025c6:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 80025ca:	4206      	tst	r6, r0
 80025cc:	bf18      	it	ne
 80025ce:	ea44 0345 	orrne.w	r3, r4, r5, lsl #1
 80025d2:	3901      	subs	r1, #1
 80025d4:	461d      	mov	r5, r3
 80025d6:	f8cc 3000 	str.w	r3, [ip]
 80025da:	dcf1      	bgt.n	80025c0 <cyfun+0x15e>
 80025dc:	b006      	add	sp, #24
 80025de:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80025e2:	bdf0      	pop	{r4, r5, r6, r7, pc}

080025e4 <benchmark>:
 80025e4:	b5d0      	push	{r4, r6, r7, lr}
 80025e6:	af02      	add	r7, sp, #8
 80025e8:	b084      	sub	sp, #16
 80025ea:	f640 20c4 	movw	r0, #2756	; 0xac4
 80025ee:	f640 21bc 	movw	r1, #2748	; 0xabc
 80025f2:	f640 2cd0 	movw	ip, #2768	; 0xad0
 80025f6:	f640 4e5c 	movw	lr, #3164	; 0xc5c
 80025fa:	f640 24cc 	movw	r4, #2764	; 0xacc
 80025fe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002602:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002606:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800260a:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 800260e:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8002612:	e9d0 2300 	ldrd	r2, r3, [r0]
 8002616:	e9d1 0100 	ldrd	r0, r1, [r1]
 800261a:	f8dc c000 	ldr.w	ip, [ip]
 800261e:	e88d 5010 	stmia.w	sp, {r4, ip, lr}
 8002622:	f7ff fc48 	bl	8001eb6 <des>
 8002626:	2000      	movs	r0, #0
 8002628:	b004      	add	sp, #16
 800262a:	bdd0      	pop	{r4, r6, r7, pc}

0800262c <initialise_benchmark>:
 800262c:	f640 20bc 	movw	r0, #2748	; 0xabc
 8002630:	2123      	movs	r1, #35	; 0x23
 8002632:	221a      	movs	r2, #26
 8002634:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002638:	e9c0 1200 	strd	r1, r2, [r0]
 800263c:	f640 20c4 	movw	r0, #2756	; 0xac4
 8002640:	2102      	movs	r1, #2
 8002642:	2210      	movs	r2, #16
 8002644:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002648:	e9c0 1200 	strd	r1, r2, [r0]
 800264c:	f240 0014 	movw	r0, #20
 8002650:	f640 21cc 	movw	r1, #2764	; 0xacc
 8002654:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002658:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800265c:	6800      	ldr	r0, [r0, #0]
 800265e:	6008      	str	r0, [r1, #0]
 8002660:	f640 21d0 	movw	r1, #2768	; 0xad0
 8002664:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002668:	6008      	str	r0, [r1, #0]
 800266a:	4770      	bx	lr

0800266c <verify_benchmark>:
 800266c:	f640 405c 	movw	r0, #3164	; 0xc5c
 8002670:	f640 7244 	movw	r2, #3908	; 0xf44
 8002674:	2300      	movs	r3, #0
 8002676:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800267a:	f6c6 32ad 	movt	r2, #27565	; 0x6bad
 800267e:	e9d0 1000 	ldrd	r1, r0, [r0]
 8002682:	4290      	cmp	r0, r2
 8002684:	f641 02b5 	movw	r2, #6325	; 0x18b5
 8002688:	f04f 0000 	mov.w	r0, #0
 800268c:	f2c9 4264 	movt	r2, #37988	; 0x9464
 8002690:	bf08      	it	eq
 8002692:	2001      	moveq	r0, #1
 8002694:	4291      	cmp	r1, r2
 8002696:	bf08      	it	eq
 8002698:	2301      	moveq	r3, #1
 800269a:	4018      	ands	r0, r3
 800269c:	4770      	bx	lr

0800269e <__io_putchar>:
 800269e:	b580      	push	{r7, lr}
 80026a0:	466f      	mov	r7, sp
 80026a2:	b082      	sub	sp, #8
 80026a4:	9001      	str	r0, [sp, #4]
 80026a6:	f640 20d4 	movw	r0, #2772	; 0xad4
 80026aa:	a901      	add	r1, sp, #4
 80026ac:	2201      	movs	r2, #1
 80026ae:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80026b2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026b6:	f7ff fb10 	bl	8001cda <HAL_UART_Transmit>
 80026ba:	9801      	ldr	r0, [sp, #4]
 80026bc:	b002      	add	sp, #8
 80026be:	bd80      	pop	{r7, pc}

080026c0 <main>:
 80026c0:	b5b0      	push	{r4, r5, r7, lr}
 80026c2:	af02      	add	r7, sp, #8
 80026c4:	f640 21d4 	movw	r1, #2772	; 0xad4
 80026c8:	f643 0000 	movw	r0, #14336	; 0x3800
 80026cc:	220c      	movs	r2, #12
 80026ce:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80026d2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80026d6:	6008      	str	r0, [r1, #0]
 80026d8:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80026dc:	6048      	str	r0, [r1, #4]
 80026de:	2000      	movs	r0, #0
 80026e0:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80026e4:	6108      	str	r0, [r1, #16]
 80026e6:	6248      	str	r0, [r1, #36]	; 0x24
 80026e8:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80026ec:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80026f0:	2000      	movs	r0, #0
 80026f2:	f7ff fb87 	bl	8001e04 <BSP_COM_Init>
 80026f6:	f7ff ff99 	bl	800262c <initialise_benchmark>
 80026fa:	f647 303c 	movw	r0, #31548	; 0x7b3c
 80026fe:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002702:	f000 f949 	bl	8002998 <printf>
 8002706:	f647 30e3 	movw	r0, #31715	; 0x7be3
 800270a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800270e:	f000 f9a5 	bl	8002a5c <puts>
 8002712:	f7fe fce9 	bl	80010e8 <HAL_Init>
 8002716:	f7fe fcff 	bl	8001118 <HAL_GetTick>
 800271a:	4604      	mov	r4, r0
 800271c:	f7ff ff62 	bl	80025e4 <benchmark>
 8002720:	4605      	mov	r5, r0
 8002722:	f7fe fcf9 	bl	8001118 <HAL_GetTick>
 8002726:	1b04      	subs	r4, r0, r4
 8002728:	4628      	mov	r0, r5
 800272a:	f7ff ff9f 	bl	800266c <verify_benchmark>
 800272e:	1c41      	adds	r1, r0, #1
 8002730:	d006      	beq.n	8002740 <main+0x80>
 8002732:	2801      	cmp	r0, #1
 8002734:	d109      	bne.n	800274a <main+0x8a>
 8002736:	f647 304f 	movw	r0, #31567	; 0x7b4f
 800273a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800273e:	e008      	b.n	8002752 <main+0x92>
 8002740:	f647 3073 	movw	r0, #31603	; 0x7b73
 8002744:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002748:	e003      	b.n	8002752 <main+0x92>
 800274a:	f647 30a8 	movw	r0, #31656	; 0x7ba8
 800274e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002752:	4621      	mov	r1, r4
 8002754:	f000 f920 	bl	8002998 <printf>
 8002758:	2000      	movs	r0, #0
 800275a:	bdb0      	pop	{r4, r5, r7, pc}

0800275c <SysTick_Handler>:
 800275c:	b580      	push	{r7, lr}
 800275e:	466f      	mov	r7, sp
 8002760:	f7fe fcd2 	bl	8001108 <HAL_IncTick>
 8002764:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002768:	f7fe bd2c 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

0800276c <_read>:
 800276c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800276e:	af03      	add	r7, sp, #12
 8002770:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002774:	4614      	mov	r4, r2
 8002776:	460d      	mov	r5, r1
 8002778:	2c01      	cmp	r4, #1
 800277a:	db06      	blt.n	800278a <_read+0x1e>
 800277c:	4626      	mov	r6, r4
 800277e:	f3af 8000 	nop.w
 8002782:	f805 0b01 	strb.w	r0, [r5], #1
 8002786:	3e01      	subs	r6, #1
 8002788:	d1f9      	bne.n	800277e <_read+0x12>
 800278a:	4620      	mov	r0, r4
 800278c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002790:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002792 <_write>:
 8002792:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002794:	af03      	add	r7, sp, #12
 8002796:	f84d bd04 	str.w	fp, [sp, #-4]!
 800279a:	4614      	mov	r4, r2
 800279c:	460d      	mov	r5, r1
 800279e:	2c01      	cmp	r4, #1
 80027a0:	db06      	blt.n	80027b0 <_write+0x1e>
 80027a2:	4626      	mov	r6, r4
 80027a4:	f815 0b01 	ldrb.w	r0, [r5], #1
 80027a8:	f7ff ff79 	bl	800269e <__io_putchar>
 80027ac:	3e01      	subs	r6, #1
 80027ae:	d1f9      	bne.n	80027a4 <_write+0x12>
 80027b0:	4620      	mov	r0, r4
 80027b2:	f85d bb04 	ldr.w	fp, [sp], #4
 80027b6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080027b8 <_sbrk>:
 80027b8:	f640 3258 	movw	r2, #2904	; 0xb58
 80027bc:	4601      	mov	r1, r0
 80027be:	466b      	mov	r3, sp
 80027c0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80027c4:	6810      	ldr	r0, [r2, #0]
 80027c6:	2800      	cmp	r0, #0
 80027c8:	bf02      	ittt	eq
 80027ca:	f640 4090 	movweq	r0, #3216	; 0xc90
 80027ce:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80027d2:	6010      	streq	r0, [r2, #0]
 80027d4:	4401      	add	r1, r0
 80027d6:	4299      	cmp	r1, r3
 80027d8:	bf9c      	itt	ls
 80027da:	6011      	strls	r1, [r2, #0]
 80027dc:	4770      	bxls	lr
 80027de:	b580      	push	{r7, lr}
 80027e0:	466f      	mov	r7, sp
 80027e2:	f000 f865 	bl	80028b0 <__errno>
 80027e6:	210c      	movs	r1, #12
 80027e8:	6001      	str	r1, [r0, #0]
 80027ea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80027ee:	bd80      	pop	{r7, pc}

080027f0 <_close>:
 80027f0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80027f4:	4770      	bx	lr

080027f6 <_fstat>:
 80027f6:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80027fa:	6048      	str	r0, [r1, #4]
 80027fc:	2000      	movs	r0, #0
 80027fe:	4770      	bx	lr

08002800 <_isatty>:
 8002800:	2001      	movs	r0, #1
 8002802:	4770      	bx	lr

08002804 <_lseek>:
 8002804:	2000      	movs	r0, #0
 8002806:	4770      	bx	lr

08002808 <SystemInit>:
 8002808:	f64e 5088 	movw	r0, #60808	; 0xed88
 800280c:	f04f 0c00 	mov.w	ip, #0
 8002810:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002814:	6801      	ldr	r1, [r0, #0]
 8002816:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800281a:	6001      	str	r1, [r0, #0]
 800281c:	f241 0100 	movw	r1, #4096	; 0x1000
 8002820:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002824:	680a      	ldr	r2, [r1, #0]
 8002826:	f042 0201 	orr.w	r2, r2, #1
 800282a:	600a      	str	r2, [r1, #0]
 800282c:	f8c1 c008 	str.w	ip, [r1, #8]
 8002830:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002834:	680b      	ldr	r3, [r1, #0]
 8002836:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800283a:	401a      	ands	r2, r3
 800283c:	600a      	str	r2, [r1, #0]
 800283e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002842:	60ca      	str	r2, [r1, #12]
 8002844:	680a      	ldr	r2, [r1, #0]
 8002846:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800284a:	600a      	str	r2, [r1, #0]
 800284c:	f8c1 c018 	str.w	ip, [r1, #24]
 8002850:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002854:	f840 1c80 	str.w	r1, [r0, #-128]
 8002858:	4770      	bx	lr
	...

0800285c <Reset_Handler>:
 800285c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002894 <LoopForever+0x2>
 8002860:	2100      	movs	r1, #0
 8002862:	e003      	b.n	800286c <LoopCopyDataInit>

08002864 <CopyDataInit>:
 8002864:	4b0c      	ldr	r3, [pc, #48]	; (8002898 <LoopForever+0x6>)
 8002866:	585b      	ldr	r3, [r3, r1]
 8002868:	5043      	str	r3, [r0, r1]
 800286a:	3104      	adds	r1, #4

0800286c <LoopCopyDataInit>:
 800286c:	480b      	ldr	r0, [pc, #44]	; (800289c <LoopForever+0xa>)
 800286e:	4b0c      	ldr	r3, [pc, #48]	; (80028a0 <LoopForever+0xe>)
 8002870:	1842      	adds	r2, r0, r1
 8002872:	429a      	cmp	r2, r3
 8002874:	d3f6      	bcc.n	8002864 <CopyDataInit>
 8002876:	4a0b      	ldr	r2, [pc, #44]	; (80028a4 <LoopForever+0x12>)
 8002878:	e002      	b.n	8002880 <LoopFillZerobss>

0800287a <FillZerobss>:
 800287a:	2300      	movs	r3, #0
 800287c:	f842 3b04 	str.w	r3, [r2], #4

08002880 <LoopFillZerobss>:
 8002880:	4b09      	ldr	r3, [pc, #36]	; (80028a8 <LoopForever+0x16>)
 8002882:	429a      	cmp	r2, r3
 8002884:	d3f9      	bcc.n	800287a <FillZerobss>
 8002886:	f7ff ffbf 	bl	8002808 <SystemInit>
 800288a:	f000 f817 	bl	80028bc <__libc_init_array>
 800288e:	f7ff ff17 	bl	80026c0 <main>

08002892 <LoopForever>:
 8002892:	e7fe      	b.n	8002892 <LoopForever>
 8002894:	20018000 	.word	0x20018000
 8002898:	08007e90 	.word	0x08007e90
 800289c:	20000000 	.word	0x20000000
 80028a0:	200009c8 	.word	0x200009c8
 80028a4:	200009c8 	.word	0x200009c8
 80028a8:	20000c8c 	.word	0x20000c8c

080028ac <ADC1_2_IRQHandler>:
 80028ac:	e7fe      	b.n	80028ac <ADC1_2_IRQHandler>
	...

080028b0 <__errno>:
 80028b0:	4b01      	ldr	r3, [pc, #4]	; (80028b8 <__errno+0x8>)
 80028b2:	6818      	ldr	r0, [r3, #0]
 80028b4:	4770      	bx	lr
 80028b6:	bf00      	nop
 80028b8:	2000001c 	.word	0x2000001c

080028bc <__libc_init_array>:
 80028bc:	b570      	push	{r4, r5, r6, lr}
 80028be:	4e0d      	ldr	r6, [pc, #52]	; (80028f4 <__libc_init_array+0x38>)
 80028c0:	4d0d      	ldr	r5, [pc, #52]	; (80028f8 <__libc_init_array+0x3c>)
 80028c2:	1b76      	subs	r6, r6, r5
 80028c4:	10b6      	asrs	r6, r6, #2
 80028c6:	d006      	beq.n	80028d6 <__libc_init_array+0x1a>
 80028c8:	2400      	movs	r4, #0
 80028ca:	3401      	adds	r4, #1
 80028cc:	f855 3b04 	ldr.w	r3, [r5], #4
 80028d0:	4798      	blx	r3
 80028d2:	42a6      	cmp	r6, r4
 80028d4:	d1f9      	bne.n	80028ca <__libc_init_array+0xe>
 80028d6:	4e09      	ldr	r6, [pc, #36]	; (80028fc <__libc_init_array+0x40>)
 80028d8:	4d09      	ldr	r5, [pc, #36]	; (8002900 <__libc_init_array+0x44>)
 80028da:	1b76      	subs	r6, r6, r5
 80028dc:	f004 feaa 	bl	8007634 <_init>
 80028e0:	10b6      	asrs	r6, r6, #2
 80028e2:	d006      	beq.n	80028f2 <__libc_init_array+0x36>
 80028e4:	2400      	movs	r4, #0
 80028e6:	3401      	adds	r4, #1
 80028e8:	f855 3b04 	ldr.w	r3, [r5], #4
 80028ec:	4798      	blx	r3
 80028ee:	42a6      	cmp	r6, r4
 80028f0:	d1f9      	bne.n	80028e6 <__libc_init_array+0x2a>
 80028f2:	bd70      	pop	{r4, r5, r6, pc}
 80028f4:	08007e80 	.word	0x08007e80
 80028f8:	08007e80 	.word	0x08007e80
 80028fc:	08007e88 	.word	0x08007e88
 8002900:	08007e80 	.word	0x08007e80

08002904 <memset>:
 8002904:	b4f0      	push	{r4, r5, r6, r7}
 8002906:	0786      	lsls	r6, r0, #30
 8002908:	d043      	beq.n	8002992 <memset+0x8e>
 800290a:	1e54      	subs	r4, r2, #1
 800290c:	2a00      	cmp	r2, #0
 800290e:	d03e      	beq.n	800298e <memset+0x8a>
 8002910:	b2ca      	uxtb	r2, r1
 8002912:	4603      	mov	r3, r0
 8002914:	e002      	b.n	800291c <memset+0x18>
 8002916:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800291a:	d338      	bcc.n	800298e <memset+0x8a>
 800291c:	f803 2b01 	strb.w	r2, [r3], #1
 8002920:	079d      	lsls	r5, r3, #30
 8002922:	d1f8      	bne.n	8002916 <memset+0x12>
 8002924:	2c03      	cmp	r4, #3
 8002926:	d92b      	bls.n	8002980 <memset+0x7c>
 8002928:	b2cd      	uxtb	r5, r1
 800292a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800292e:	2c0f      	cmp	r4, #15
 8002930:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002934:	d916      	bls.n	8002964 <memset+0x60>
 8002936:	f1a4 0710 	sub.w	r7, r4, #16
 800293a:	093f      	lsrs	r7, r7, #4
 800293c:	f103 0620 	add.w	r6, r3, #32
 8002940:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002944:	f103 0210 	add.w	r2, r3, #16
 8002948:	e942 5504 	strd	r5, r5, [r2, #-16]
 800294c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002950:	3210      	adds	r2, #16
 8002952:	42b2      	cmp	r2, r6
 8002954:	d1f8      	bne.n	8002948 <memset+0x44>
 8002956:	f004 040f 	and.w	r4, r4, #15
 800295a:	3701      	adds	r7, #1
 800295c:	2c03      	cmp	r4, #3
 800295e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002962:	d90d      	bls.n	8002980 <memset+0x7c>
 8002964:	461e      	mov	r6, r3
 8002966:	4622      	mov	r2, r4
 8002968:	3a04      	subs	r2, #4
 800296a:	2a03      	cmp	r2, #3
 800296c:	f846 5b04 	str.w	r5, [r6], #4
 8002970:	d8fa      	bhi.n	8002968 <memset+0x64>
 8002972:	1f22      	subs	r2, r4, #4
 8002974:	f022 0203 	bic.w	r2, r2, #3
 8002978:	3204      	adds	r2, #4
 800297a:	4413      	add	r3, r2
 800297c:	f004 0403 	and.w	r4, r4, #3
 8002980:	b12c      	cbz	r4, 800298e <memset+0x8a>
 8002982:	b2c9      	uxtb	r1, r1
 8002984:	441c      	add	r4, r3
 8002986:	f803 1b01 	strb.w	r1, [r3], #1
 800298a:	429c      	cmp	r4, r3
 800298c:	d1fb      	bne.n	8002986 <memset+0x82>
 800298e:	bcf0      	pop	{r4, r5, r6, r7}
 8002990:	4770      	bx	lr
 8002992:	4614      	mov	r4, r2
 8002994:	4603      	mov	r3, r0
 8002996:	e7c5      	b.n	8002924 <memset+0x20>

08002998 <printf>:
 8002998:	b40f      	push	{r0, r1, r2, r3}
 800299a:	b500      	push	{lr}
 800299c:	4907      	ldr	r1, [pc, #28]	; (80029bc <printf+0x24>)
 800299e:	b083      	sub	sp, #12
 80029a0:	ab04      	add	r3, sp, #16
 80029a2:	6808      	ldr	r0, [r1, #0]
 80029a4:	f853 2b04 	ldr.w	r2, [r3], #4
 80029a8:	6881      	ldr	r1, [r0, #8]
 80029aa:	9301      	str	r3, [sp, #4]
 80029ac:	f000 f860 	bl	8002a70 <_vfprintf_r>
 80029b0:	b003      	add	sp, #12
 80029b2:	f85d eb04 	ldr.w	lr, [sp], #4
 80029b6:	b004      	add	sp, #16
 80029b8:	4770      	bx	lr
 80029ba:	bf00      	nop
 80029bc:	2000001c 	.word	0x2000001c

080029c0 <_puts_r>:
 80029c0:	b570      	push	{r4, r5, r6, lr}
 80029c2:	4605      	mov	r5, r0
 80029c4:	b088      	sub	sp, #32
 80029c6:	4608      	mov	r0, r1
 80029c8:	460c      	mov	r4, r1
 80029ca:	f7fd fe39 	bl	8000640 <strlen>
 80029ce:	4a22      	ldr	r2, [pc, #136]	; (8002a58 <_puts_r+0x98>)
 80029d0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80029d2:	9404      	str	r4, [sp, #16]
 80029d4:	2601      	movs	r6, #1
 80029d6:	1c44      	adds	r4, r0, #1
 80029d8:	a904      	add	r1, sp, #16
 80029da:	9206      	str	r2, [sp, #24]
 80029dc:	2202      	movs	r2, #2
 80029de:	9403      	str	r4, [sp, #12]
 80029e0:	9005      	str	r0, [sp, #20]
 80029e2:	68ac      	ldr	r4, [r5, #8]
 80029e4:	9607      	str	r6, [sp, #28]
 80029e6:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80029ea:	b31b      	cbz	r3, 8002a34 <_puts_r+0x74>
 80029ec:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80029ee:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80029f2:	07ce      	lsls	r6, r1, #31
 80029f4:	b29a      	uxth	r2, r3
 80029f6:	d401      	bmi.n	80029fc <_puts_r+0x3c>
 80029f8:	0590      	lsls	r0, r2, #22
 80029fa:	d525      	bpl.n	8002a48 <_puts_r+0x88>
 80029fc:	0491      	lsls	r1, r2, #18
 80029fe:	d406      	bmi.n	8002a0e <_puts_r+0x4e>
 8002a00:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002a02:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002a06:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002a0a:	81a3      	strh	r3, [r4, #12]
 8002a0c:	6662      	str	r2, [r4, #100]	; 0x64
 8002a0e:	4628      	mov	r0, r5
 8002a10:	aa01      	add	r2, sp, #4
 8002a12:	4621      	mov	r1, r4
 8002a14:	f003 f860 	bl	8005ad8 <__sfvwrite_r>
 8002a18:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002a1a:	2800      	cmp	r0, #0
 8002a1c:	bf0c      	ite	eq
 8002a1e:	250a      	moveq	r5, #10
 8002a20:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002a24:	07da      	lsls	r2, r3, #31
 8002a26:	d402      	bmi.n	8002a2e <_puts_r+0x6e>
 8002a28:	89a3      	ldrh	r3, [r4, #12]
 8002a2a:	059b      	lsls	r3, r3, #22
 8002a2c:	d506      	bpl.n	8002a3c <_puts_r+0x7c>
 8002a2e:	4628      	mov	r0, r5
 8002a30:	b008      	add	sp, #32
 8002a32:	bd70      	pop	{r4, r5, r6, pc}
 8002a34:	4628      	mov	r0, r5
 8002a36:	f002 feb9 	bl	80057ac <__sinit>
 8002a3a:	e7d7      	b.n	80029ec <_puts_r+0x2c>
 8002a3c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002a3e:	f003 fa07 	bl	8005e50 <__retarget_lock_release_recursive>
 8002a42:	4628      	mov	r0, r5
 8002a44:	b008      	add	sp, #32
 8002a46:	bd70      	pop	{r4, r5, r6, pc}
 8002a48:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002a4a:	f003 f9ff 	bl	8005e4c <__retarget_lock_acquire_recursive>
 8002a4e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002a52:	b29a      	uxth	r2, r3
 8002a54:	e7d2      	b.n	80029fc <_puts_r+0x3c>
 8002a56:	bf00      	nop
 8002a58:	08007bec 	.word	0x08007bec

08002a5c <puts>:
 8002a5c:	4b02      	ldr	r3, [pc, #8]	; (8002a68 <puts+0xc>)
 8002a5e:	4601      	mov	r1, r0
 8002a60:	6818      	ldr	r0, [r3, #0]
 8002a62:	f7ff bfad 	b.w	80029c0 <_puts_r>
 8002a66:	bf00      	nop
 8002a68:	2000001c 	.word	0x2000001c
 8002a6c:	00000000 	.word	0x00000000

08002a70 <_vfprintf_r>:
 8002a70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002a74:	b0d7      	sub	sp, #348	; 0x15c
 8002a76:	461c      	mov	r4, r3
 8002a78:	4689      	mov	r9, r1
 8002a7a:	4617      	mov	r7, r2
 8002a7c:	4605      	mov	r5, r0
 8002a7e:	9003      	str	r0, [sp, #12]
 8002a80:	f003 f9d2 	bl	8005e28 <_localeconv_r>
 8002a84:	6803      	ldr	r3, [r0, #0]
 8002a86:	9316      	str	r3, [sp, #88]	; 0x58
 8002a88:	4618      	mov	r0, r3
 8002a8a:	f7fd fdd9 	bl	8000640 <strlen>
 8002a8e:	9408      	str	r4, [sp, #32]
 8002a90:	9015      	str	r0, [sp, #84]	; 0x54
 8002a92:	b11d      	cbz	r5, 8002a9c <_vfprintf_r+0x2c>
 8002a94:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002a96:	2b00      	cmp	r3, #0
 8002a98:	f000 8107 	beq.w	8002caa <_vfprintf_r+0x23a>
 8002a9c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002aa0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002aa4:	07c8      	lsls	r0, r1, #31
 8002aa6:	b293      	uxth	r3, r2
 8002aa8:	d402      	bmi.n	8002ab0 <_vfprintf_r+0x40>
 8002aaa:	0599      	lsls	r1, r3, #22
 8002aac:	f140 811f 	bpl.w	8002cee <_vfprintf_r+0x27e>
 8002ab0:	049e      	lsls	r6, r3, #18
 8002ab2:	d40a      	bmi.n	8002aca <_vfprintf_r+0x5a>
 8002ab4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002ab8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002abc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002ac0:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002ac4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002ac8:	b29b      	uxth	r3, r3
 8002aca:	071d      	lsls	r5, r3, #28
 8002acc:	f140 80b2 	bpl.w	8002c34 <_vfprintf_r+0x1c4>
 8002ad0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002ad4:	2a00      	cmp	r2, #0
 8002ad6:	f000 80ad 	beq.w	8002c34 <_vfprintf_r+0x1c4>
 8002ada:	f003 021a 	and.w	r2, r3, #26
 8002ade:	2a0a      	cmp	r2, #10
 8002ae0:	f000 80c9 	beq.w	8002c76 <_vfprintf_r+0x206>
 8002ae4:	2300      	movs	r3, #0
 8002ae6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002d00 <_vfprintf_r+0x290>
 8002aea:	9310      	str	r3, [sp, #64]	; 0x40
 8002aec:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002af0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002af2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002af6:	931b      	str	r3, [sp, #108]	; 0x6c
 8002af8:	9318      	str	r3, [sp, #96]	; 0x60
 8002afa:	9305      	str	r3, [sp, #20]
 8002afc:	ab2d      	add	r3, sp, #180	; 0xb4
 8002afe:	932a      	str	r3, [sp, #168]	; 0xa8
 8002b00:	469b      	mov	fp, r3
 8002b02:	783b      	ldrb	r3, [r7, #0]
 8002b04:	f8cd 901c 	str.w	r9, [sp, #28]
 8002b08:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002b0c:	2b00      	cmp	r3, #0
 8002b0e:	f000 8259 	beq.w	8002fc4 <_vfprintf_r+0x554>
 8002b12:	2b25      	cmp	r3, #37	; 0x25
 8002b14:	463c      	mov	r4, r7
 8002b16:	d102      	bne.n	8002b1e <_vfprintf_r+0xae>
 8002b18:	e01d      	b.n	8002b56 <_vfprintf_r+0xe6>
 8002b1a:	2b25      	cmp	r3, #37	; 0x25
 8002b1c:	d003      	beq.n	8002b26 <_vfprintf_r+0xb6>
 8002b1e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002b22:	2b00      	cmp	r3, #0
 8002b24:	d1f9      	bne.n	8002b1a <_vfprintf_r+0xaa>
 8002b26:	1be5      	subs	r5, r4, r7
 8002b28:	b18d      	cbz	r5, 8002b4e <_vfprintf_r+0xde>
 8002b2a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002b2e:	3301      	adds	r3, #1
 8002b30:	442a      	add	r2, r5
 8002b32:	2b07      	cmp	r3, #7
 8002b34:	f8cb 7000 	str.w	r7, [fp]
 8002b38:	f8cb 5004 	str.w	r5, [fp, #4]
 8002b3c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002b40:	f300 80ca 	bgt.w	8002cd8 <_vfprintf_r+0x268>
 8002b44:	f10b 0b08 	add.w	fp, fp, #8
 8002b48:	9b05      	ldr	r3, [sp, #20]
 8002b4a:	442b      	add	r3, r5
 8002b4c:	9305      	str	r3, [sp, #20]
 8002b4e:	7823      	ldrb	r3, [r4, #0]
 8002b50:	2b00      	cmp	r3, #0
 8002b52:	f000 8237 	beq.w	8002fc4 <_vfprintf_r+0x554>
 8002b56:	2300      	movs	r3, #0
 8002b58:	7866      	ldrb	r6, [r4, #1]
 8002b5a:	9306      	str	r3, [sp, #24]
 8002b5c:	4698      	mov	r8, r3
 8002b5e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b62:	f104 0a01 	add.w	sl, r4, #1
 8002b66:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002b6a:	252b      	movs	r5, #43	; 0x2b
 8002b6c:	f10a 0a01 	add.w	sl, sl, #1
 8002b70:	f1a6 0320 	sub.w	r3, r6, #32
 8002b74:	2b5a      	cmp	r3, #90	; 0x5a
 8002b76:	f200 842a 	bhi.w	80033ce <_vfprintf_r+0x95e>
 8002b7a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002b7e:	03aa      	.short	0x03aa
 8002b80:	04280428 	.word	0x04280428
 8002b84:	0428029c 	.word	0x0428029c
 8002b88:	04280428 	.word	0x04280428
 8002b8c:	042802a7 	.word	0x042802a7
 8002b90:	02c60428 	.word	0x02c60428
 8002b94:	042802d2 	.word	0x042802d2
 8002b98:	02dc02d7 	.word	0x02dc02d7
 8002b9c:	02f60428 	.word	0x02f60428
 8002ba0:	026d026d 	.word	0x026d026d
 8002ba4:	026d026d 	.word	0x026d026d
 8002ba8:	026d026d 	.word	0x026d026d
 8002bac:	026d026d 	.word	0x026d026d
 8002bb0:	0428026d 	.word	0x0428026d
 8002bb4:	04280428 	.word	0x04280428
 8002bb8:	04280428 	.word	0x04280428
 8002bbc:	04280428 	.word	0x04280428
 8002bc0:	042802fb 	.word	0x042802fb
 8002bc4:	03f3033c 	.word	0x03f3033c
 8002bc8:	02fb02fb 	.word	0x02fb02fb
 8002bcc:	042802fb 	.word	0x042802fb
 8002bd0:	04280428 	.word	0x04280428
 8002bd4:	03ee0428 	.word	0x03ee0428
 8002bd8:	04280428 	.word	0x04280428
 8002bdc:	0428009a 	.word	0x0428009a
 8002be0:	04280428 	.word	0x04280428
 8002be4:	04280350 	.word	0x04280350
 8002be8:	04280379 	.word	0x04280379
 8002bec:	03900428 	.word	0x03900428
 8002bf0:	04280428 	.word	0x04280428
 8002bf4:	04280428 	.word	0x04280428
 8002bf8:	04280428 	.word	0x04280428
 8002bfc:	04280428 	.word	0x04280428
 8002c00:	042802fb 	.word	0x042802fb
 8002c04:	00c5033c 	.word	0x00c5033c
 8002c08:	02fb02fb 	.word	0x02fb02fb
 8002c0c:	03d102fb 	.word	0x03d102fb
 8002c10:	007000c5 	.word	0x007000c5
 8002c14:	03b50428 	.word	0x03b50428
 8002c18:	03c20428 	.word	0x03c20428
 8002c1c:	03de009c 	.word	0x03de009c
 8002c20:	04280070 	.word	0x04280070
 8002c24:	00720350 	.word	0x00720350
 8002c28:	0428022c 	.word	0x0428022c
 8002c2c:	027c0428 	.word	0x027c0428
 8002c30:	00720428 	.word	0x00720428
 8002c34:	4649      	mov	r1, r9
 8002c36:	9803      	ldr	r0, [sp, #12]
 8002c38:	f001 fc9a 	bl	8004570 <__swsetup_r>
 8002c3c:	b1a0      	cbz	r0, 8002c68 <_vfprintf_r+0x1f8>
 8002c3e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002c42:	07d8      	lsls	r0, r3, #31
 8002c44:	d404      	bmi.n	8002c50 <_vfprintf_r+0x1e0>
 8002c46:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002c4a:	0599      	lsls	r1, r3, #22
 8002c4c:	f140 83b7 	bpl.w	80033be <_vfprintf_r+0x94e>
 8002c50:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002c54:	9305      	str	r3, [sp, #20]
 8002c56:	9805      	ldr	r0, [sp, #20]
 8002c58:	b057      	add	sp, #348	; 0x15c
 8002c5a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002c5e:	f048 0820 	orr.w	r8, r8, #32
 8002c62:	f89a 6000 	ldrb.w	r6, [sl]
 8002c66:	e781      	b.n	8002b6c <_vfprintf_r+0xfc>
 8002c68:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002c6c:	f003 021a 	and.w	r2, r3, #26
 8002c70:	2a0a      	cmp	r2, #10
 8002c72:	f47f af37 	bne.w	8002ae4 <_vfprintf_r+0x74>
 8002c76:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002c7a:	2a00      	cmp	r2, #0
 8002c7c:	f6ff af32 	blt.w	8002ae4 <_vfprintf_r+0x74>
 8002c80:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002c84:	07d2      	lsls	r2, r2, #31
 8002c86:	d405      	bmi.n	8002c94 <_vfprintf_r+0x224>
 8002c88:	059b      	lsls	r3, r3, #22
 8002c8a:	d403      	bmi.n	8002c94 <_vfprintf_r+0x224>
 8002c8c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c90:	f003 f8de 	bl	8005e50 <__retarget_lock_release_recursive>
 8002c94:	4623      	mov	r3, r4
 8002c96:	463a      	mov	r2, r7
 8002c98:	4649      	mov	r1, r9
 8002c9a:	9803      	ldr	r0, [sp, #12]
 8002c9c:	f001 fc26 	bl	80044ec <__sbprintf>
 8002ca0:	9005      	str	r0, [sp, #20]
 8002ca2:	9805      	ldr	r0, [sp, #20]
 8002ca4:	b057      	add	sp, #348	; 0x15c
 8002ca6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002caa:	9803      	ldr	r0, [sp, #12]
 8002cac:	f002 fd7e 	bl	80057ac <__sinit>
 8002cb0:	e6f4      	b.n	8002a9c <_vfprintf_r+0x2c>
 8002cb2:	f048 0810 	orr.w	r8, r8, #16
 8002cb6:	f018 0f20 	tst.w	r8, #32
 8002cba:	f000 836c 	beq.w	8003396 <_vfprintf_r+0x926>
 8002cbe:	9c08      	ldr	r4, [sp, #32]
 8002cc0:	3407      	adds	r4, #7
 8002cc2:	f024 0307 	bic.w	r3, r4, #7
 8002cc6:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002cca:	f103 0208 	add.w	r2, r3, #8
 8002cce:	9208      	str	r2, [sp, #32]
 8002cd0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002cd4:	2200      	movs	r2, #0
 8002cd6:	e18c      	b.n	8002ff2 <_vfprintf_r+0x582>
 8002cd8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002cda:	9907      	ldr	r1, [sp, #28]
 8002cdc:	9803      	ldr	r0, [sp, #12]
 8002cde:	f004 f9f5 	bl	80070cc <__sprint_r>
 8002ce2:	2800      	cmp	r0, #0
 8002ce4:	f041 8376 	bne.w	80043d4 <_vfprintf_r+0x1964>
 8002ce8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002cec:	e72c      	b.n	8002b48 <_vfprintf_r+0xd8>
 8002cee:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002cf2:	f003 f8ab 	bl	8005e4c <__retarget_lock_acquire_recursive>
 8002cf6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002cfa:	b293      	uxth	r3, r2
 8002cfc:	e6d8      	b.n	8002ab0 <_vfprintf_r+0x40>
 8002cfe:	bf00      	nop
	...
 8002d08:	4643      	mov	r3, r8
 8002d0a:	069f      	lsls	r7, r3, #26
 8002d0c:	f140 832f 	bpl.w	800336e <_vfprintf_r+0x8fe>
 8002d10:	9c08      	ldr	r4, [sp, #32]
 8002d12:	3407      	adds	r4, #7
 8002d14:	f024 0407 	bic.w	r4, r4, #7
 8002d18:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002d1c:	f104 0208 	add.w	r2, r4, #8
 8002d20:	9208      	str	r2, [sp, #32]
 8002d22:	4604      	mov	r4, r0
 8002d24:	460d      	mov	r5, r1
 8002d26:	2800      	cmp	r0, #0
 8002d28:	f171 0200 	sbcs.w	r2, r1, #0
 8002d2c:	da05      	bge.n	8002d3a <_vfprintf_r+0x2ca>
 8002d2e:	222d      	movs	r2, #45	; 0x2d
 8002d30:	4264      	negs	r4, r4
 8002d32:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002d36:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002d3a:	aa56      	add	r2, sp, #344	; 0x158
 8002d3c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002d40:	9204      	str	r2, [sp, #16]
 8002d42:	f000 84b2 	beq.w	80036aa <_vfprintf_r+0xc3a>
 8002d46:	2201      	movs	r2, #1
 8002d48:	ea54 0105 	orrs.w	r1, r4, r5
 8002d4c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002d50:	f040 8159 	bne.w	8003006 <_vfprintf_r+0x596>
 8002d54:	f1b9 0f00 	cmp.w	r9, #0
 8002d58:	f040 8619 	bne.w	800398e <_vfprintf_r+0xf1e>
 8002d5c:	2a00      	cmp	r2, #0
 8002d5e:	f040 8508 	bne.w	8003772 <_vfprintf_r+0xd02>
 8002d62:	f013 0301 	ands.w	r3, r3, #1
 8002d66:	af56      	add	r7, sp, #344	; 0x158
 8002d68:	9309      	str	r3, [sp, #36]	; 0x24
 8002d6a:	d002      	beq.n	8002d72 <_vfprintf_r+0x302>
 8002d6c:	2330      	movs	r3, #48	; 0x30
 8002d6e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002d72:	2300      	movs	r3, #0
 8002d74:	930a      	str	r3, [sp, #40]	; 0x28
 8002d76:	930f      	str	r3, [sp, #60]	; 0x3c
 8002d78:	9314      	str	r3, [sp, #80]	; 0x50
 8002d7a:	9311      	str	r3, [sp, #68]	; 0x44
 8002d7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002d7e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d82:	454b      	cmp	r3, r9
 8002d84:	bfb8      	it	lt
 8002d86:	464b      	movlt	r3, r9
 8002d88:	9304      	str	r3, [sp, #16]
 8002d8a:	b112      	cbz	r2, 8002d92 <_vfprintf_r+0x322>
 8002d8c:	9b04      	ldr	r3, [sp, #16]
 8002d8e:	3301      	adds	r3, #1
 8002d90:	9304      	str	r3, [sp, #16]
 8002d92:	f018 0302 	ands.w	r3, r8, #2
 8002d96:	930b      	str	r3, [sp, #44]	; 0x2c
 8002d98:	d002      	beq.n	8002da0 <_vfprintf_r+0x330>
 8002d9a:	9b04      	ldr	r3, [sp, #16]
 8002d9c:	3302      	adds	r3, #2
 8002d9e:	9304      	str	r3, [sp, #16]
 8002da0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002da4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002da6:	930e      	str	r3, [sp, #56]	; 0x38
 8002da8:	d13f      	bne.n	8002e2a <_vfprintf_r+0x3ba>
 8002daa:	9b06      	ldr	r3, [sp, #24]
 8002dac:	9904      	ldr	r1, [sp, #16]
 8002dae:	1a5d      	subs	r5, r3, r1
 8002db0:	2d00      	cmp	r5, #0
 8002db2:	dd3a      	ble.n	8002e2a <_vfprintf_r+0x3ba>
 8002db4:	2d10      	cmp	r5, #16
 8002db6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002db8:	dd29      	ble.n	8002e0e <_vfprintf_r+0x39e>
 8002dba:	4659      	mov	r1, fp
 8002dbc:	4620      	mov	r0, r4
 8002dbe:	9620      	str	r6, [sp, #128]	; 0x80
 8002dc0:	2310      	movs	r3, #16
 8002dc2:	9c03      	ldr	r4, [sp, #12]
 8002dc4:	9e07      	ldr	r6, [sp, #28]
 8002dc6:	46bb      	mov	fp, r7
 8002dc8:	e004      	b.n	8002dd4 <_vfprintf_r+0x364>
 8002dca:	3d10      	subs	r5, #16
 8002dcc:	2d10      	cmp	r5, #16
 8002dce:	f101 0108 	add.w	r1, r1, #8
 8002dd2:	dd18      	ble.n	8002e06 <_vfprintf_r+0x396>
 8002dd4:	3201      	adds	r2, #1
 8002dd6:	4fba      	ldr	r7, [pc, #744]	; (80030c0 <_vfprintf_r+0x650>)
 8002dd8:	3010      	adds	r0, #16
 8002dda:	2a07      	cmp	r2, #7
 8002ddc:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002de0:	e9c1 7300 	strd	r7, r3, [r1]
 8002de4:	ddf1      	ble.n	8002dca <_vfprintf_r+0x35a>
 8002de6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002de8:	4631      	mov	r1, r6
 8002dea:	4620      	mov	r0, r4
 8002dec:	930c      	str	r3, [sp, #48]	; 0x30
 8002dee:	f004 f96d 	bl	80070cc <__sprint_r>
 8002df2:	2800      	cmp	r0, #0
 8002df4:	f040 843d 	bne.w	8003672 <_vfprintf_r+0xc02>
 8002df8:	3d10      	subs	r5, #16
 8002dfa:	2d10      	cmp	r5, #16
 8002dfc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002e00:	a92d      	add	r1, sp, #180	; 0xb4
 8002e02:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002e04:	dce6      	bgt.n	8002dd4 <_vfprintf_r+0x364>
 8002e06:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002e08:	465f      	mov	r7, fp
 8002e0a:	4604      	mov	r4, r0
 8002e0c:	468b      	mov	fp, r1
 8002e0e:	3201      	adds	r2, #1
 8002e10:	4bab      	ldr	r3, [pc, #684]	; (80030c0 <_vfprintf_r+0x650>)
 8002e12:	442c      	add	r4, r5
 8002e14:	2a07      	cmp	r2, #7
 8002e16:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e1a:	e9cb 3500 	strd	r3, r5, [fp]
 8002e1e:	f300 84ff 	bgt.w	8003820 <_vfprintf_r+0xdb0>
 8002e22:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002e26:	f10b 0b08 	add.w	fp, fp, #8
 8002e2a:	b172      	cbz	r2, 8002e4a <_vfprintf_r+0x3da>
 8002e2c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e2e:	3201      	adds	r2, #1
 8002e30:	3401      	adds	r4, #1
 8002e32:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002e36:	2101      	movs	r1, #1
 8002e38:	2a07      	cmp	r2, #7
 8002e3a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e3e:	e9cb 0100 	strd	r0, r1, [fp]
 8002e42:	f300 8418 	bgt.w	8003676 <_vfprintf_r+0xc06>
 8002e46:	f10b 0b08 	add.w	fp, fp, #8
 8002e4a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002e4c:	b16b      	cbz	r3, 8002e6a <_vfprintf_r+0x3fa>
 8002e4e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e50:	3301      	adds	r3, #1
 8002e52:	3402      	adds	r4, #2
 8002e54:	a923      	add	r1, sp, #140	; 0x8c
 8002e56:	2202      	movs	r2, #2
 8002e58:	2b07      	cmp	r3, #7
 8002e5a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e5e:	e9cb 1200 	strd	r1, r2, [fp]
 8002e62:	f300 8415 	bgt.w	8003690 <_vfprintf_r+0xc20>
 8002e66:	f10b 0b08 	add.w	fp, fp, #8
 8002e6a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002e6c:	2b80      	cmp	r3, #128	; 0x80
 8002e6e:	f000 8331 	beq.w	80034d4 <_vfprintf_r+0xa64>
 8002e72:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002e74:	eba9 0503 	sub.w	r5, r9, r3
 8002e78:	2d00      	cmp	r5, #0
 8002e7a:	dd37      	ble.n	8002eec <_vfprintf_r+0x47c>
 8002e7c:	2d10      	cmp	r5, #16
 8002e7e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e80:	4b90      	ldr	r3, [pc, #576]	; (80030c4 <_vfprintf_r+0x654>)
 8002e82:	dd28      	ble.n	8002ed6 <_vfprintf_r+0x466>
 8002e84:	4659      	mov	r1, fp
 8002e86:	4620      	mov	r0, r4
 8002e88:	46bb      	mov	fp, r7
 8002e8a:	f04f 0910 	mov.w	r9, #16
 8002e8e:	4637      	mov	r7, r6
 8002e90:	461c      	mov	r4, r3
 8002e92:	9e07      	ldr	r6, [sp, #28]
 8002e94:	e004      	b.n	8002ea0 <_vfprintf_r+0x430>
 8002e96:	3d10      	subs	r5, #16
 8002e98:	2d10      	cmp	r5, #16
 8002e9a:	f101 0108 	add.w	r1, r1, #8
 8002e9e:	dd15      	ble.n	8002ecc <_vfprintf_r+0x45c>
 8002ea0:	3201      	adds	r2, #1
 8002ea2:	3010      	adds	r0, #16
 8002ea4:	2a07      	cmp	r2, #7
 8002ea6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002eaa:	e9c1 4900 	strd	r4, r9, [r1]
 8002eae:	ddf2      	ble.n	8002e96 <_vfprintf_r+0x426>
 8002eb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002eb2:	4631      	mov	r1, r6
 8002eb4:	9803      	ldr	r0, [sp, #12]
 8002eb6:	f004 f909 	bl	80070cc <__sprint_r>
 8002eba:	2800      	cmp	r0, #0
 8002ebc:	f040 83d9 	bne.w	8003672 <_vfprintf_r+0xc02>
 8002ec0:	3d10      	subs	r5, #16
 8002ec2:	2d10      	cmp	r5, #16
 8002ec4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ec8:	a92d      	add	r1, sp, #180	; 0xb4
 8002eca:	dce9      	bgt.n	8002ea0 <_vfprintf_r+0x430>
 8002ecc:	463e      	mov	r6, r7
 8002ece:	4623      	mov	r3, r4
 8002ed0:	465f      	mov	r7, fp
 8002ed2:	4604      	mov	r4, r0
 8002ed4:	468b      	mov	fp, r1
 8002ed6:	3201      	adds	r2, #1
 8002ed8:	442c      	add	r4, r5
 8002eda:	2a07      	cmp	r2, #7
 8002edc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ee0:	e9cb 3500 	strd	r3, r5, [fp]
 8002ee4:	f300 83ef 	bgt.w	80036c6 <_vfprintf_r+0xc56>
 8002ee8:	f10b 0b08 	add.w	fp, fp, #8
 8002eec:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002ef0:	f040 8280 	bne.w	80033f4 <_vfprintf_r+0x984>
 8002ef4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ef6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ef8:	f8cb 7000 	str.w	r7, [fp]
 8002efc:	3301      	adds	r3, #1
 8002efe:	4414      	add	r4, r2
 8002f00:	2b07      	cmp	r3, #7
 8002f02:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f04:	f8cb 2004 	str.w	r2, [fp, #4]
 8002f08:	932b      	str	r3, [sp, #172]	; 0xac
 8002f0a:	f300 8392 	bgt.w	8003632 <_vfprintf_r+0xbc2>
 8002f0e:	f10b 0b08 	add.w	fp, fp, #8
 8002f12:	f018 0f04 	tst.w	r8, #4
 8002f16:	d03b      	beq.n	8002f90 <_vfprintf_r+0x520>
 8002f18:	9b06      	ldr	r3, [sp, #24]
 8002f1a:	9a04      	ldr	r2, [sp, #16]
 8002f1c:	1a9d      	subs	r5, r3, r2
 8002f1e:	2d00      	cmp	r5, #0
 8002f20:	dd36      	ble.n	8002f90 <_vfprintf_r+0x520>
 8002f22:	2d10      	cmp	r5, #16
 8002f24:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f26:	dd21      	ble.n	8002f6c <_vfprintf_r+0x4fc>
 8002f28:	2610      	movs	r6, #16
 8002f2a:	9f03      	ldr	r7, [sp, #12]
 8002f2c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002f30:	e004      	b.n	8002f3c <_vfprintf_r+0x4cc>
 8002f32:	3d10      	subs	r5, #16
 8002f34:	2d10      	cmp	r5, #16
 8002f36:	f10b 0b08 	add.w	fp, fp, #8
 8002f3a:	dd17      	ble.n	8002f6c <_vfprintf_r+0x4fc>
 8002f3c:	3301      	adds	r3, #1
 8002f3e:	4a60      	ldr	r2, [pc, #384]	; (80030c0 <_vfprintf_r+0x650>)
 8002f40:	3410      	adds	r4, #16
 8002f42:	2b07      	cmp	r3, #7
 8002f44:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f48:	e9cb 2600 	strd	r2, r6, [fp]
 8002f4c:	ddf1      	ble.n	8002f32 <_vfprintf_r+0x4c2>
 8002f4e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f50:	4641      	mov	r1, r8
 8002f52:	4638      	mov	r0, r7
 8002f54:	f004 f8ba 	bl	80070cc <__sprint_r>
 8002f58:	2800      	cmp	r0, #0
 8002f5a:	f040 856c 	bne.w	8003a36 <_vfprintf_r+0xfc6>
 8002f5e:	3d10      	subs	r5, #16
 8002f60:	2d10      	cmp	r5, #16
 8002f62:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002f66:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f6a:	dce7      	bgt.n	8002f3c <_vfprintf_r+0x4cc>
 8002f6c:	3301      	adds	r3, #1
 8002f6e:	4a54      	ldr	r2, [pc, #336]	; (80030c0 <_vfprintf_r+0x650>)
 8002f70:	442c      	add	r4, r5
 8002f72:	2b07      	cmp	r3, #7
 8002f74:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f78:	e9cb 2500 	strd	r2, r5, [fp]
 8002f7c:	dd08      	ble.n	8002f90 <_vfprintf_r+0x520>
 8002f7e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f80:	9907      	ldr	r1, [sp, #28]
 8002f82:	9803      	ldr	r0, [sp, #12]
 8002f84:	f004 f8a2 	bl	80070cc <__sprint_r>
 8002f88:	2800      	cmp	r0, #0
 8002f8a:	f040 82e9 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8002f8e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f90:	9904      	ldr	r1, [sp, #16]
 8002f92:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002f96:	428a      	cmp	r2, r1
 8002f98:	bfac      	ite	ge
 8002f9a:	189b      	addge	r3, r3, r2
 8002f9c:	185b      	addlt	r3, r3, r1
 8002f9e:	9305      	str	r3, [sp, #20]
 8002fa0:	2c00      	cmp	r4, #0
 8002fa2:	f040 82d5 	bne.w	8003550 <_vfprintf_r+0xae0>
 8002fa6:	2300      	movs	r3, #0
 8002fa8:	932b      	str	r3, [sp, #172]	; 0xac
 8002faa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002fac:	b11b      	cbz	r3, 8002fb6 <_vfprintf_r+0x546>
 8002fae:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002fb0:	9803      	ldr	r0, [sp, #12]
 8002fb2:	f002 fc9d 	bl	80058f0 <_free_r>
 8002fb6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002fba:	4657      	mov	r7, sl
 8002fbc:	783b      	ldrb	r3, [r7, #0]
 8002fbe:	2b00      	cmp	r3, #0
 8002fc0:	f47f ada7 	bne.w	8002b12 <_vfprintf_r+0xa2>
 8002fc4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002fc6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002fca:	2b00      	cmp	r3, #0
 8002fcc:	f041 80e7 	bne.w	800419e <_vfprintf_r+0x172e>
 8002fd0:	2300      	movs	r3, #0
 8002fd2:	932b      	str	r3, [sp, #172]	; 0xac
 8002fd4:	e2cb      	b.n	800356e <_vfprintf_r+0xafe>
 8002fd6:	4643      	mov	r3, r8
 8002fd8:	069a      	lsls	r2, r3, #26
 8002fda:	f140 814e 	bpl.w	800327a <_vfprintf_r+0x80a>
 8002fde:	9c08      	ldr	r4, [sp, #32]
 8002fe0:	3407      	adds	r4, #7
 8002fe2:	f024 0207 	bic.w	r2, r4, #7
 8002fe6:	f102 0108 	add.w	r1, r2, #8
 8002fea:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002fee:	9108      	str	r1, [sp, #32]
 8002ff0:	2201      	movs	r2, #1
 8002ff2:	2100      	movs	r1, #0
 8002ff4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002ff8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002ffc:	a956      	add	r1, sp, #344	; 0x158
 8002ffe:	9104      	str	r1, [sp, #16]
 8003000:	f47f aea2 	bne.w	8002d48 <_vfprintf_r+0x2d8>
 8003004:	4698      	mov	r8, r3
 8003006:	2a01      	cmp	r2, #1
 8003008:	f000 8350 	beq.w	80036ac <_vfprintf_r+0xc3c>
 800300c:	2a02      	cmp	r2, #2
 800300e:	f000 831b 	beq.w	8003648 <_vfprintf_r+0xbd8>
 8003012:	a956      	add	r1, sp, #344	; 0x158
 8003014:	e000      	b.n	8003018 <_vfprintf_r+0x5a8>
 8003016:	4639      	mov	r1, r7
 8003018:	08e2      	lsrs	r2, r4, #3
 800301a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800301e:	08e8      	lsrs	r0, r5, #3
 8003020:	f004 0307 	and.w	r3, r4, #7
 8003024:	4605      	mov	r5, r0
 8003026:	4614      	mov	r4, r2
 8003028:	3330      	adds	r3, #48	; 0x30
 800302a:	ea54 0205 	orrs.w	r2, r4, r5
 800302e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8003032:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8003036:	d1ee      	bne.n	8003016 <_vfprintf_r+0x5a6>
 8003038:	f018 0f01 	tst.w	r8, #1
 800303c:	f000 8314 	beq.w	8003668 <_vfprintf_r+0xbf8>
 8003040:	2b30      	cmp	r3, #48	; 0x30
 8003042:	f000 8311 	beq.w	8003668 <_vfprintf_r+0xbf8>
 8003046:	9a04      	ldr	r2, [sp, #16]
 8003048:	3902      	subs	r1, #2
 800304a:	2330      	movs	r3, #48	; 0x30
 800304c:	1a52      	subs	r2, r2, r1
 800304e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8003052:	9209      	str	r2, [sp, #36]	; 0x24
 8003054:	460f      	mov	r7, r1
 8003056:	e68c      	b.n	8002d72 <_vfprintf_r+0x302>
 8003058:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800305c:	2200      	movs	r2, #0
 800305e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003062:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8003066:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800306a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800306e:	2b09      	cmp	r3, #9
 8003070:	d9f5      	bls.n	800305e <_vfprintf_r+0x5ee>
 8003072:	9206      	str	r2, [sp, #24]
 8003074:	e57c      	b.n	8002b70 <_vfprintf_r+0x100>
 8003076:	4b14      	ldr	r3, [pc, #80]	; (80030c8 <_vfprintf_r+0x658>)
 8003078:	9317      	str	r3, [sp, #92]	; 0x5c
 800307a:	f018 0f20 	tst.w	r8, #32
 800307e:	f000 8114 	beq.w	80032aa <_vfprintf_r+0x83a>
 8003082:	9c08      	ldr	r4, [sp, #32]
 8003084:	3407      	adds	r4, #7
 8003086:	f024 0307 	bic.w	r3, r4, #7
 800308a:	e9d3 4500 	ldrd	r4, r5, [r3]
 800308e:	f103 0208 	add.w	r2, r3, #8
 8003092:	9208      	str	r2, [sp, #32]
 8003094:	f018 0f01 	tst.w	r8, #1
 8003098:	d009      	beq.n	80030ae <_vfprintf_r+0x63e>
 800309a:	ea54 0305 	orrs.w	r3, r4, r5
 800309e:	d006      	beq.n	80030ae <_vfprintf_r+0x63e>
 80030a0:	2330      	movs	r3, #48	; 0x30
 80030a2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80030a6:	f048 0802 	orr.w	r8, r8, #2
 80030aa:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80030ae:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80030b2:	2202      	movs	r2, #2
 80030b4:	e79d      	b.n	8002ff2 <_vfprintf_r+0x582>
 80030b6:	f048 0801 	orr.w	r8, r8, #1
 80030ba:	f89a 6000 	ldrb.w	r6, [sl]
 80030be:	e555      	b.n	8002b6c <_vfprintf_r+0xfc>
 80030c0:	08007c34 	.word	0x08007c34
 80030c4:	08007c44 	.word	0x08007c44
 80030c8:	08007c00 	.word	0x08007c00
 80030cc:	9e03      	ldr	r6, [sp, #12]
 80030ce:	4630      	mov	r0, r6
 80030d0:	f002 feaa 	bl	8005e28 <_localeconv_r>
 80030d4:	6843      	ldr	r3, [r0, #4]
 80030d6:	9318      	str	r3, [sp, #96]	; 0x60
 80030d8:	4618      	mov	r0, r3
 80030da:	f7fd fab1 	bl	8000640 <strlen>
 80030de:	901b      	str	r0, [sp, #108]	; 0x6c
 80030e0:	4604      	mov	r4, r0
 80030e2:	4630      	mov	r0, r6
 80030e4:	f002 fea0 	bl	8005e28 <_localeconv_r>
 80030e8:	6883      	ldr	r3, [r0, #8]
 80030ea:	931a      	str	r3, [sp, #104]	; 0x68
 80030ec:	2c00      	cmp	r4, #0
 80030ee:	f43f adb8 	beq.w	8002c62 <_vfprintf_r+0x1f2>
 80030f2:	f89a 6000 	ldrb.w	r6, [sl]
 80030f6:	2b00      	cmp	r3, #0
 80030f8:	f43f ad38 	beq.w	8002b6c <_vfprintf_r+0xfc>
 80030fc:	781b      	ldrb	r3, [r3, #0]
 80030fe:	2b00      	cmp	r3, #0
 8003100:	f43f ad34 	beq.w	8002b6c <_vfprintf_r+0xfc>
 8003104:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8003108:	e530      	b.n	8002b6c <_vfprintf_r+0xfc>
 800310a:	9b08      	ldr	r3, [sp, #32]
 800310c:	f89a 6000 	ldrb.w	r6, [sl]
 8003110:	681a      	ldr	r2, [r3, #0]
 8003112:	9206      	str	r2, [sp, #24]
 8003114:	2a00      	cmp	r2, #0
 8003116:	f103 0304 	add.w	r3, r3, #4
 800311a:	f2c0 8697 	blt.w	8003e4c <_vfprintf_r+0x13dc>
 800311e:	9308      	str	r3, [sp, #32]
 8003120:	e524      	b.n	8002b6c <_vfprintf_r+0xfc>
 8003122:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003126:	f89a 6000 	ldrb.w	r6, [sl]
 800312a:	e51f      	b.n	8002b6c <_vfprintf_r+0xfc>
 800312c:	f89a 6000 	ldrb.w	r6, [sl]
 8003130:	f048 0804 	orr.w	r8, r8, #4
 8003134:	e51a      	b.n	8002b6c <_vfprintf_r+0xfc>
 8003136:	f89a 6000 	ldrb.w	r6, [sl]
 800313a:	2e2a      	cmp	r6, #42	; 0x2a
 800313c:	f10a 0201 	add.w	r2, sl, #1
 8003140:	f001 81b0 	beq.w	80044a4 <_vfprintf_r+0x1a34>
 8003144:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003148:	2b09      	cmp	r3, #9
 800314a:	4692      	mov	sl, r2
 800314c:	f04f 0900 	mov.w	r9, #0
 8003150:	f63f ad0e 	bhi.w	8002b70 <_vfprintf_r+0x100>
 8003154:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003158:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 800315c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003160:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003164:	2b09      	cmp	r3, #9
 8003166:	d9f5      	bls.n	8003154 <_vfprintf_r+0x6e4>
 8003168:	e502      	b.n	8002b70 <_vfprintf_r+0x100>
 800316a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 800316e:	f89a 6000 	ldrb.w	r6, [sl]
 8003172:	e4fb      	b.n	8002b6c <_vfprintf_r+0xfc>
 8003174:	9c08      	ldr	r4, [sp, #32]
 8003176:	3407      	adds	r4, #7
 8003178:	f024 0407 	bic.w	r4, r4, #7
 800317c:	ed94 7b00 	vldr	d7, [r4]
 8003180:	ec52 1b17 	vmov	r1, r2, d7
 8003184:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003188:	931d      	str	r3, [sp, #116]	; 0x74
 800318a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 800318e:	3408      	adds	r4, #8
 8003190:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8003194:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003198:	4bba      	ldr	r3, [pc, #744]	; (8003484 <_vfprintf_r+0xa14>)
 800319a:	9408      	str	r4, [sp, #32]
 800319c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80031a0:	f7fd ff64 	bl	800106c <__aeabi_dcmpun>
 80031a4:	2800      	cmp	r0, #0
 80031a6:	f040 846f 	bne.w	8003a88 <_vfprintf_r+0x1018>
 80031aa:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80031ae:	4bb5      	ldr	r3, [pc, #724]	; (8003484 <_vfprintf_r+0xa14>)
 80031b0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80031b4:	f7fd ff3c 	bl	8001030 <__aeabi_dcmple>
 80031b8:	2800      	cmp	r0, #0
 80031ba:	f040 8465 	bne.w	8003a88 <_vfprintf_r+0x1018>
 80031be:	2200      	movs	r2, #0
 80031c0:	2300      	movs	r3, #0
 80031c2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80031c6:	f7fd ff29 	bl	800101c <__aeabi_dcmplt>
 80031ca:	2800      	cmp	r0, #0
 80031cc:	f040 855b 	bne.w	8003c86 <_vfprintf_r+0x1216>
 80031d0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031d4:	4fac      	ldr	r7, [pc, #688]	; (8003488 <_vfprintf_r+0xa18>)
 80031d6:	4bad      	ldr	r3, [pc, #692]	; (800348c <_vfprintf_r+0xa1c>)
 80031d8:	2000      	movs	r0, #0
 80031da:	2103      	movs	r1, #3
 80031dc:	9104      	str	r1, [sp, #16]
 80031de:	900a      	str	r0, [sp, #40]	; 0x28
 80031e0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80031e4:	2e47      	cmp	r6, #71	; 0x47
 80031e6:	bfd8      	it	le
 80031e8:	461f      	movle	r7, r3
 80031ea:	9109      	str	r1, [sp, #36]	; 0x24
 80031ec:	4681      	mov	r9, r0
 80031ee:	900f      	str	r0, [sp, #60]	; 0x3c
 80031f0:	9014      	str	r0, [sp, #80]	; 0x50
 80031f2:	9011      	str	r0, [sp, #68]	; 0x44
 80031f4:	e5c9      	b.n	8002d8a <_vfprintf_r+0x31a>
 80031f6:	9808      	ldr	r0, [sp, #32]
 80031f8:	2300      	movs	r3, #0
 80031fa:	6801      	ldr	r1, [r0, #0]
 80031fc:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003200:	461a      	mov	r2, r3
 8003202:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8003206:	2301      	movs	r3, #1
 8003208:	1d01      	adds	r1, r0, #4
 800320a:	9304      	str	r3, [sp, #16]
 800320c:	920a      	str	r2, [sp, #40]	; 0x28
 800320e:	4691      	mov	r9, r2
 8003210:	920f      	str	r2, [sp, #60]	; 0x3c
 8003212:	9214      	str	r2, [sp, #80]	; 0x50
 8003214:	9211      	str	r2, [sp, #68]	; 0x44
 8003216:	e9cd 1308 	strd	r1, r3, [sp, #32]
 800321a:	af3d      	add	r7, sp, #244	; 0xf4
 800321c:	e5b9      	b.n	8002d92 <_vfprintf_r+0x322>
 800321e:	9b08      	ldr	r3, [sp, #32]
 8003220:	681f      	ldr	r7, [r3, #0]
 8003222:	2500      	movs	r5, #0
 8003224:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003228:	1d1c      	adds	r4, r3, #4
 800322a:	2f00      	cmp	r7, #0
 800322c:	f000 8639 	beq.w	8003ea2 <_vfprintf_r+0x1432>
 8003230:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003234:	f000 8711 	beq.w	800405a <_vfprintf_r+0x15ea>
 8003238:	464a      	mov	r2, r9
 800323a:	4629      	mov	r1, r5
 800323c:	4638      	mov	r0, r7
 800323e:	f7fd fa6f 	bl	8000720 <memchr>
 8003242:	900a      	str	r0, [sp, #40]	; 0x28
 8003244:	2800      	cmp	r0, #0
 8003246:	f000 85e7 	beq.w	8003e18 <_vfprintf_r+0x13a8>
 800324a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800324c:	1bdb      	subs	r3, r3, r7
 800324e:	9309      	str	r3, [sp, #36]	; 0x24
 8003250:	46a9      	mov	r9, r5
 8003252:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003256:	9408      	str	r4, [sp, #32]
 8003258:	9304      	str	r3, [sp, #16]
 800325a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800325e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8003262:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003266:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 800326a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800326e:	e58c      	b.n	8002d8a <_vfprintf_r+0x31a>
 8003270:	f048 0310 	orr.w	r3, r8, #16
 8003274:	069a      	lsls	r2, r3, #26
 8003276:	f53f aeb2 	bmi.w	8002fde <_vfprintf_r+0x56e>
 800327a:	9a08      	ldr	r2, [sp, #32]
 800327c:	06df      	lsls	r7, r3, #27
 800327e:	f102 0104 	add.w	r1, r2, #4
 8003282:	f100 837e 	bmi.w	8003982 <_vfprintf_r+0xf12>
 8003286:	065d      	lsls	r5, r3, #25
 8003288:	9a08      	ldr	r2, [sp, #32]
 800328a:	f100 84e4 	bmi.w	8003c56 <_vfprintf_r+0x11e6>
 800328e:	059c      	lsls	r4, r3, #22
 8003290:	f140 8377 	bpl.w	8003982 <_vfprintf_r+0xf12>
 8003294:	7814      	ldrb	r4, [r2, #0]
 8003296:	9108      	str	r1, [sp, #32]
 8003298:	2500      	movs	r5, #0
 800329a:	2201      	movs	r2, #1
 800329c:	e6a9      	b.n	8002ff2 <_vfprintf_r+0x582>
 800329e:	4b7c      	ldr	r3, [pc, #496]	; (8003490 <_vfprintf_r+0xa20>)
 80032a0:	9317      	str	r3, [sp, #92]	; 0x5c
 80032a2:	f018 0f20 	tst.w	r8, #32
 80032a6:	f47f aeec 	bne.w	8003082 <_vfprintf_r+0x612>
 80032aa:	9a08      	ldr	r2, [sp, #32]
 80032ac:	f018 0f10 	tst.w	r8, #16
 80032b0:	f102 0304 	add.w	r3, r2, #4
 80032b4:	f040 8354 	bne.w	8003960 <_vfprintf_r+0xef0>
 80032b8:	f018 0f40 	tst.w	r8, #64	; 0x40
 80032bc:	9a08      	ldr	r2, [sp, #32]
 80032be:	f040 84d0 	bne.w	8003c62 <_vfprintf_r+0x11f2>
 80032c2:	f418 7f00 	tst.w	r8, #512	; 0x200
 80032c6:	f000 834b 	beq.w	8003960 <_vfprintf_r+0xef0>
 80032ca:	7814      	ldrb	r4, [r2, #0]
 80032cc:	9308      	str	r3, [sp, #32]
 80032ce:	2500      	movs	r5, #0
 80032d0:	e6e0      	b.n	8003094 <_vfprintf_r+0x624>
 80032d2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80032d6:	f89a 6000 	ldrb.w	r6, [sl]
 80032da:	2b00      	cmp	r3, #0
 80032dc:	f47f ac46 	bne.w	8002b6c <_vfprintf_r+0xfc>
 80032e0:	2320      	movs	r3, #32
 80032e2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80032e6:	e441      	b.n	8002b6c <_vfprintf_r+0xfc>
 80032e8:	f89a 6000 	ldrb.w	r6, [sl]
 80032ec:	2e6c      	cmp	r6, #108	; 0x6c
 80032ee:	bf03      	ittte	eq
 80032f0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80032f4:	f048 0820 	orreq.w	r8, r8, #32
 80032f8:	f10a 0a01 	addeq.w	sl, sl, #1
 80032fc:	f048 0810 	orrne.w	r8, r8, #16
 8003300:	e434      	b.n	8002b6c <_vfprintf_r+0xfc>
 8003302:	9a08      	ldr	r2, [sp, #32]
 8003304:	f018 0f20 	tst.w	r8, #32
 8003308:	f852 3b04 	ldr.w	r3, [r2], #4
 800330c:	9208      	str	r2, [sp, #32]
 800330e:	f000 83a1 	beq.w	8003a54 <_vfprintf_r+0xfe4>
 8003312:	9a05      	ldr	r2, [sp, #20]
 8003314:	4610      	mov	r0, r2
 8003316:	17d1      	asrs	r1, r2, #31
 8003318:	e9c3 0100 	strd	r0, r1, [r3]
 800331c:	4657      	mov	r7, sl
 800331e:	e64d      	b.n	8002fbc <_vfprintf_r+0x54c>
 8003320:	f89a 6000 	ldrb.w	r6, [sl]
 8003324:	2e68      	cmp	r6, #104	; 0x68
 8003326:	bf03      	ittte	eq
 8003328:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800332c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003330:	f10a 0a01 	addeq.w	sl, sl, #1
 8003334:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003338:	e418      	b.n	8002b6c <_vfprintf_r+0xfc>
 800333a:	9908      	ldr	r1, [sp, #32]
 800333c:	4b55      	ldr	r3, [pc, #340]	; (8003494 <_vfprintf_r+0xa24>)
 800333e:	680c      	ldr	r4, [r1, #0]
 8003340:	9317      	str	r3, [sp, #92]	; 0x5c
 8003342:	f647 0230 	movw	r2, #30768	; 0x7830
 8003346:	3104      	adds	r1, #4
 8003348:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 800334c:	f048 0302 	orr.w	r3, r8, #2
 8003350:	9108      	str	r1, [sp, #32]
 8003352:	2500      	movs	r5, #0
 8003354:	2202      	movs	r2, #2
 8003356:	2678      	movs	r6, #120	; 0x78
 8003358:	e64b      	b.n	8002ff2 <_vfprintf_r+0x582>
 800335a:	f048 0808 	orr.w	r8, r8, #8
 800335e:	f89a 6000 	ldrb.w	r6, [sl]
 8003362:	e403      	b.n	8002b6c <_vfprintf_r+0xfc>
 8003364:	f048 0310 	orr.w	r3, r8, #16
 8003368:	069f      	lsls	r7, r3, #26
 800336a:	f53f acd1 	bmi.w	8002d10 <_vfprintf_r+0x2a0>
 800336e:	9908      	ldr	r1, [sp, #32]
 8003370:	06dd      	lsls	r5, r3, #27
 8003372:	f101 0204 	add.w	r2, r1, #4
 8003376:	f100 82fd 	bmi.w	8003974 <_vfprintf_r+0xf04>
 800337a:	065c      	lsls	r4, r3, #25
 800337c:	9908      	ldr	r1, [sp, #32]
 800337e:	f100 8475 	bmi.w	8003c6c <_vfprintf_r+0x11fc>
 8003382:	0598      	lsls	r0, r3, #22
 8003384:	f140 82f6 	bpl.w	8003974 <_vfprintf_r+0xf04>
 8003388:	f991 4000 	ldrsb.w	r4, [r1]
 800338c:	9208      	str	r2, [sp, #32]
 800338e:	17e5      	asrs	r5, r4, #31
 8003390:	4620      	mov	r0, r4
 8003392:	4629      	mov	r1, r5
 8003394:	e4c7      	b.n	8002d26 <_vfprintf_r+0x2b6>
 8003396:	9a08      	ldr	r2, [sp, #32]
 8003398:	f018 0f10 	tst.w	r8, #16
 800339c:	f102 0304 	add.w	r3, r2, #4
 80033a0:	f040 82e3 	bne.w	800396a <_vfprintf_r+0xefa>
 80033a4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80033a8:	9a08      	ldr	r2, [sp, #32]
 80033aa:	f040 8467 	bne.w	8003c7c <_vfprintf_r+0x120c>
 80033ae:	f418 7f00 	tst.w	r8, #512	; 0x200
 80033b2:	f000 82da 	beq.w	800396a <_vfprintf_r+0xefa>
 80033b6:	7814      	ldrb	r4, [r2, #0]
 80033b8:	9308      	str	r3, [sp, #32]
 80033ba:	2500      	movs	r5, #0
 80033bc:	e488      	b.n	8002cd0 <_vfprintf_r+0x260>
 80033be:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80033c2:	f002 fd45 	bl	8005e50 <__retarget_lock_release_recursive>
 80033c6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80033ca:	9305      	str	r3, [sp, #20]
 80033cc:	e443      	b.n	8002c56 <_vfprintf_r+0x1e6>
 80033ce:	2e00      	cmp	r6, #0
 80033d0:	f43f adf8 	beq.w	8002fc4 <_vfprintf_r+0x554>
 80033d4:	2300      	movs	r3, #0
 80033d6:	2101      	movs	r1, #1
 80033d8:	461a      	mov	r2, r3
 80033da:	9104      	str	r1, [sp, #16]
 80033dc:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80033e0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80033e4:	930a      	str	r3, [sp, #40]	; 0x28
 80033e6:	4699      	mov	r9, r3
 80033e8:	930f      	str	r3, [sp, #60]	; 0x3c
 80033ea:	9314      	str	r3, [sp, #80]	; 0x50
 80033ec:	9311      	str	r3, [sp, #68]	; 0x44
 80033ee:	9109      	str	r1, [sp, #36]	; 0x24
 80033f0:	af3d      	add	r7, sp, #244	; 0xf4
 80033f2:	e4ce      	b.n	8002d92 <_vfprintf_r+0x322>
 80033f4:	2e65      	cmp	r6, #101	; 0x65
 80033f6:	f340 80ca 	ble.w	800358e <_vfprintf_r+0xb1e>
 80033fa:	2200      	movs	r2, #0
 80033fc:	2300      	movs	r3, #0
 80033fe:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003402:	f7fd fe01 	bl	8001008 <__aeabi_dcmpeq>
 8003406:	2800      	cmp	r0, #0
 8003408:	f000 8169 	beq.w	80036de <_vfprintf_r+0xc6e>
 800340c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800340e:	4a22      	ldr	r2, [pc, #136]	; (8003498 <_vfprintf_r+0xa28>)
 8003410:	f8cb 2000 	str.w	r2, [fp]
 8003414:	3301      	adds	r3, #1
 8003416:	3401      	adds	r4, #1
 8003418:	2201      	movs	r2, #1
 800341a:	2b07      	cmp	r3, #7
 800341c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003420:	f8cb 2004 	str.w	r2, [fp, #4]
 8003424:	f300 8406 	bgt.w	8003c34 <_vfprintf_r+0x11c4>
 8003428:	f10b 0b08 	add.w	fp, fp, #8
 800342c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800342e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003430:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003432:	4293      	cmp	r3, r2
 8003434:	db03      	blt.n	800343e <_vfprintf_r+0x9ce>
 8003436:	f018 0f01 	tst.w	r8, #1
 800343a:	f43f ad6a 	beq.w	8002f12 <_vfprintf_r+0x4a2>
 800343e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003440:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003442:	f8cb 2000 	str.w	r2, [fp]
 8003446:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003448:	f8cb 2004 	str.w	r2, [fp, #4]
 800344c:	3301      	adds	r3, #1
 800344e:	4414      	add	r4, r2
 8003450:	2b07      	cmp	r3, #7
 8003452:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003456:	f300 8517 	bgt.w	8003e88 <_vfprintf_r+0x1418>
 800345a:	f10b 0b08 	add.w	fp, fp, #8
 800345e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003460:	1e5d      	subs	r5, r3, #1
 8003462:	2d00      	cmp	r5, #0
 8003464:	f77f ad55 	ble.w	8002f12 <_vfprintf_r+0x4a2>
 8003468:	2d10      	cmp	r5, #16
 800346a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800346c:	4b0b      	ldr	r3, [pc, #44]	; (800349c <_vfprintf_r+0xa2c>)
 800346e:	f340 82e7 	ble.w	8003a40 <_vfprintf_r+0xfd0>
 8003472:	4619      	mov	r1, r3
 8003474:	2610      	movs	r6, #16
 8003476:	4623      	mov	r3, r4
 8003478:	9f03      	ldr	r7, [sp, #12]
 800347a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800347e:	460c      	mov	r4, r1
 8003480:	e014      	b.n	80034ac <_vfprintf_r+0xa3c>
 8003482:	bf00      	nop
 8003484:	7fefffff 	.word	0x7fefffff
 8003488:	08007bf4 	.word	0x08007bf4
 800348c:	08007bf0 	.word	0x08007bf0
 8003490:	08007c14 	.word	0x08007c14
 8003494:	08007c00 	.word	0x08007c00
 8003498:	08007c30 	.word	0x08007c30
 800349c:	08007c44 	.word	0x08007c44
 80034a0:	f10b 0b08 	add.w	fp, fp, #8
 80034a4:	3d10      	subs	r5, #16
 80034a6:	2d10      	cmp	r5, #16
 80034a8:	f340 82c7 	ble.w	8003a3a <_vfprintf_r+0xfca>
 80034ac:	3201      	adds	r2, #1
 80034ae:	3310      	adds	r3, #16
 80034b0:	2a07      	cmp	r2, #7
 80034b2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80034b6:	e9cb 4600 	strd	r4, r6, [fp]
 80034ba:	ddf1      	ble.n	80034a0 <_vfprintf_r+0xa30>
 80034bc:	aa2a      	add	r2, sp, #168	; 0xa8
 80034be:	4649      	mov	r1, r9
 80034c0:	4638      	mov	r0, r7
 80034c2:	f003 fe03 	bl	80070cc <__sprint_r>
 80034c6:	2800      	cmp	r0, #0
 80034c8:	d14c      	bne.n	8003564 <_vfprintf_r+0xaf4>
 80034ca:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80034ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034d2:	e7e7      	b.n	80034a4 <_vfprintf_r+0xa34>
 80034d4:	9b06      	ldr	r3, [sp, #24]
 80034d6:	9a04      	ldr	r2, [sp, #16]
 80034d8:	1a9d      	subs	r5, r3, r2
 80034da:	2d00      	cmp	r5, #0
 80034dc:	f77f acc9 	ble.w	8002e72 <_vfprintf_r+0x402>
 80034e0:	2d10      	cmp	r5, #16
 80034e2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034e4:	4bbc      	ldr	r3, [pc, #752]	; (80037d8 <_vfprintf_r+0xd68>)
 80034e6:	dd27      	ble.n	8003538 <_vfprintf_r+0xac8>
 80034e8:	4659      	mov	r1, fp
 80034ea:	4620      	mov	r0, r4
 80034ec:	46bb      	mov	fp, r7
 80034ee:	461c      	mov	r4, r3
 80034f0:	4637      	mov	r7, r6
 80034f2:	9e07      	ldr	r6, [sp, #28]
 80034f4:	e004      	b.n	8003500 <_vfprintf_r+0xa90>
 80034f6:	3d10      	subs	r5, #16
 80034f8:	2d10      	cmp	r5, #16
 80034fa:	f101 0108 	add.w	r1, r1, #8
 80034fe:	dd16      	ble.n	800352e <_vfprintf_r+0xabe>
 8003500:	3201      	adds	r2, #1
 8003502:	3010      	adds	r0, #16
 8003504:	2310      	movs	r3, #16
 8003506:	2a07      	cmp	r2, #7
 8003508:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800350c:	600c      	str	r4, [r1, #0]
 800350e:	604b      	str	r3, [r1, #4]
 8003510:	ddf1      	ble.n	80034f6 <_vfprintf_r+0xa86>
 8003512:	aa2a      	add	r2, sp, #168	; 0xa8
 8003514:	4631      	mov	r1, r6
 8003516:	9803      	ldr	r0, [sp, #12]
 8003518:	f003 fdd8 	bl	80070cc <__sprint_r>
 800351c:	2800      	cmp	r0, #0
 800351e:	f040 80a8 	bne.w	8003672 <_vfprintf_r+0xc02>
 8003522:	3d10      	subs	r5, #16
 8003524:	2d10      	cmp	r5, #16
 8003526:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800352a:	a92d      	add	r1, sp, #180	; 0xb4
 800352c:	dce8      	bgt.n	8003500 <_vfprintf_r+0xa90>
 800352e:	463e      	mov	r6, r7
 8003530:	4623      	mov	r3, r4
 8003532:	465f      	mov	r7, fp
 8003534:	4604      	mov	r4, r0
 8003536:	468b      	mov	fp, r1
 8003538:	3201      	adds	r2, #1
 800353a:	442c      	add	r4, r5
 800353c:	2a07      	cmp	r2, #7
 800353e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003542:	e9cb 3500 	strd	r3, r5, [fp]
 8003546:	f300 8292 	bgt.w	8003a6e <_vfprintf_r+0xffe>
 800354a:	f10b 0b08 	add.w	fp, fp, #8
 800354e:	e490      	b.n	8002e72 <_vfprintf_r+0x402>
 8003550:	aa2a      	add	r2, sp, #168	; 0xa8
 8003552:	9907      	ldr	r1, [sp, #28]
 8003554:	9803      	ldr	r0, [sp, #12]
 8003556:	f003 fdb9 	bl	80070cc <__sprint_r>
 800355a:	2800      	cmp	r0, #0
 800355c:	f43f ad23 	beq.w	8002fa6 <_vfprintf_r+0x536>
 8003560:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003564:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003566:	b111      	cbz	r1, 800356e <_vfprintf_r+0xafe>
 8003568:	9803      	ldr	r0, [sp, #12]
 800356a:	f002 f9c1 	bl	80058f0 <_free_r>
 800356e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003572:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003576:	07d0      	lsls	r0, r2, #31
 8003578:	d402      	bmi.n	8003580 <_vfprintf_r+0xb10>
 800357a:	0599      	lsls	r1, r3, #22
 800357c:	f140 81d0 	bpl.w	8003920 <_vfprintf_r+0xeb0>
 8003580:	065a      	lsls	r2, r3, #25
 8003582:	f53f ab65 	bmi.w	8002c50 <_vfprintf_r+0x1e0>
 8003586:	9805      	ldr	r0, [sp, #20]
 8003588:	b057      	add	sp, #348	; 0x15c
 800358a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800358e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003590:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003592:	2a01      	cmp	r2, #1
 8003594:	f104 0401 	add.w	r4, r4, #1
 8003598:	f103 0501 	add.w	r5, r3, #1
 800359c:	f10b 0608 	add.w	r6, fp, #8
 80035a0:	f340 811c 	ble.w	80037dc <_vfprintf_r+0xd6c>
 80035a4:	2301      	movs	r3, #1
 80035a6:	2d07      	cmp	r5, #7
 80035a8:	f8cb 7000 	str.w	r7, [fp]
 80035ac:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80035b0:	f8cb 3004 	str.w	r3, [fp, #4]
 80035b4:	f300 81bb 	bgt.w	800392e <_vfprintf_r+0xebe>
 80035b8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80035ba:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80035bc:	1c69      	adds	r1, r5, #1
 80035be:	441c      	add	r4, r3
 80035c0:	2907      	cmp	r1, #7
 80035c2:	910b      	str	r1, [sp, #44]	; 0x2c
 80035c4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80035c8:	e9c6 2300 	strd	r2, r3, [r6]
 80035cc:	f300 81bb 	bgt.w	8003946 <_vfprintf_r+0xed6>
 80035d0:	3608      	adds	r6, #8
 80035d2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80035d4:	1c53      	adds	r3, r2, #1
 80035d6:	461d      	mov	r5, r3
 80035d8:	9509      	str	r5, [sp, #36]	; 0x24
 80035da:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80035dc:	930e      	str	r3, [sp, #56]	; 0x38
 80035de:	2200      	movs	r2, #0
 80035e0:	2300      	movs	r3, #0
 80035e2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80035e6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80035ea:	f106 0b08 	add.w	fp, r6, #8
 80035ee:	f7fd fd0b 	bl	8001008 <__aeabi_dcmpeq>
 80035f2:	2800      	cmp	r0, #0
 80035f4:	f040 80c2 	bne.w	800377c <_vfprintf_r+0xd0c>
 80035f8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80035fa:	f8c6 9004 	str.w	r9, [r6, #4]
 80035fe:	3701      	adds	r7, #1
 8003600:	444c      	add	r4, r9
 8003602:	2d07      	cmp	r5, #7
 8003604:	6037      	str	r7, [r6, #0]
 8003606:	942c      	str	r4, [sp, #176]	; 0xb0
 8003608:	952b      	str	r5, [sp, #172]	; 0xac
 800360a:	f300 80f9 	bgt.w	8003800 <_vfprintf_r+0xd90>
 800360e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003610:	f106 0310 	add.w	r3, r6, #16
 8003614:	3202      	adds	r2, #2
 8003616:	465e      	mov	r6, fp
 8003618:	9209      	str	r2, [sp, #36]	; 0x24
 800361a:	469b      	mov	fp, r3
 800361c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800361e:	6072      	str	r2, [r6, #4]
 8003620:	4414      	add	r4, r2
 8003622:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003624:	942c      	str	r4, [sp, #176]	; 0xb0
 8003626:	ab26      	add	r3, sp, #152	; 0x98
 8003628:	2a07      	cmp	r2, #7
 800362a:	922b      	str	r2, [sp, #172]	; 0xac
 800362c:	6033      	str	r3, [r6, #0]
 800362e:	f77f ac70 	ble.w	8002f12 <_vfprintf_r+0x4a2>
 8003632:	aa2a      	add	r2, sp, #168	; 0xa8
 8003634:	9907      	ldr	r1, [sp, #28]
 8003636:	9803      	ldr	r0, [sp, #12]
 8003638:	f003 fd48 	bl	80070cc <__sprint_r>
 800363c:	2800      	cmp	r0, #0
 800363e:	d18f      	bne.n	8003560 <_vfprintf_r+0xaf0>
 8003640:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003642:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003646:	e464      	b.n	8002f12 <_vfprintf_r+0x4a2>
 8003648:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800364a:	af56      	add	r7, sp, #344	; 0x158
 800364c:	0923      	lsrs	r3, r4, #4
 800364e:	f004 010f 	and.w	r1, r4, #15
 8003652:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003656:	092a      	lsrs	r2, r5, #4
 8003658:	461c      	mov	r4, r3
 800365a:	4615      	mov	r5, r2
 800365c:	5c43      	ldrb	r3, [r0, r1]
 800365e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003662:	ea54 0305 	orrs.w	r3, r4, r5
 8003666:	d1f1      	bne.n	800364c <_vfprintf_r+0xbdc>
 8003668:	9b04      	ldr	r3, [sp, #16]
 800366a:	1bdb      	subs	r3, r3, r7
 800366c:	9309      	str	r3, [sp, #36]	; 0x24
 800366e:	f7ff bb80 	b.w	8002d72 <_vfprintf_r+0x302>
 8003672:	46b1      	mov	r9, r6
 8003674:	e776      	b.n	8003564 <_vfprintf_r+0xaf4>
 8003676:	aa2a      	add	r2, sp, #168	; 0xa8
 8003678:	9907      	ldr	r1, [sp, #28]
 800367a:	9803      	ldr	r0, [sp, #12]
 800367c:	f003 fd26 	bl	80070cc <__sprint_r>
 8003680:	2800      	cmp	r0, #0
 8003682:	f47f af6d 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8003686:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003688:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800368c:	f7ff bbdd 	b.w	8002e4a <_vfprintf_r+0x3da>
 8003690:	aa2a      	add	r2, sp, #168	; 0xa8
 8003692:	9907      	ldr	r1, [sp, #28]
 8003694:	9803      	ldr	r0, [sp, #12]
 8003696:	f003 fd19 	bl	80070cc <__sprint_r>
 800369a:	2800      	cmp	r0, #0
 800369c:	f47f af60 	bne.w	8003560 <_vfprintf_r+0xaf0>
 80036a0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036a2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036a6:	f7ff bbe0 	b.w	8002e6a <_vfprintf_r+0x3fa>
 80036aa:	4698      	mov	r8, r3
 80036ac:	2d00      	cmp	r5, #0
 80036ae:	bf08      	it	eq
 80036b0:	2c0a      	cmpeq	r4, #10
 80036b2:	f080 8170 	bcs.w	8003996 <_vfprintf_r+0xf26>
 80036b6:	af56      	add	r7, sp, #344	; 0x158
 80036b8:	3430      	adds	r4, #48	; 0x30
 80036ba:	2301      	movs	r3, #1
 80036bc:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80036c0:	9309      	str	r3, [sp, #36]	; 0x24
 80036c2:	f7ff bb56 	b.w	8002d72 <_vfprintf_r+0x302>
 80036c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80036c8:	9907      	ldr	r1, [sp, #28]
 80036ca:	9803      	ldr	r0, [sp, #12]
 80036cc:	f003 fcfe 	bl	80070cc <__sprint_r>
 80036d0:	2800      	cmp	r0, #0
 80036d2:	f47f af45 	bne.w	8003560 <_vfprintf_r+0xaf0>
 80036d6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036dc:	e406      	b.n	8002eec <_vfprintf_r+0x47c>
 80036de:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036e0:	2b00      	cmp	r3, #0
 80036e2:	f340 8273 	ble.w	8003bcc <_vfprintf_r+0x115c>
 80036e6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80036ea:	4293      	cmp	r3, r2
 80036ec:	bfa8      	it	ge
 80036ee:	4613      	movge	r3, r2
 80036f0:	2b00      	cmp	r3, #0
 80036f2:	461d      	mov	r5, r3
 80036f4:	dd0d      	ble.n	8003712 <_vfprintf_r+0xca2>
 80036f6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80036f8:	f8cb 7000 	str.w	r7, [fp]
 80036fc:	3301      	adds	r3, #1
 80036fe:	442c      	add	r4, r5
 8003700:	2b07      	cmp	r3, #7
 8003702:	942c      	str	r4, [sp, #176]	; 0xb0
 8003704:	f8cb 5004 	str.w	r5, [fp, #4]
 8003708:	932b      	str	r3, [sp, #172]	; 0xac
 800370a:	f300 82c1 	bgt.w	8003c90 <_vfprintf_r+0x1220>
 800370e:	f10b 0b08 	add.w	fp, fp, #8
 8003712:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003714:	2d00      	cmp	r5, #0
 8003716:	bfa8      	it	ge
 8003718:	1b5b      	subge	r3, r3, r5
 800371a:	2b00      	cmp	r3, #0
 800371c:	461d      	mov	r5, r3
 800371e:	f340 8099 	ble.w	8003854 <_vfprintf_r+0xde4>
 8003722:	2d10      	cmp	r5, #16
 8003724:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003726:	4b2c      	ldr	r3, [pc, #176]	; (80037d8 <_vfprintf_r+0xd68>)
 8003728:	f340 83db 	ble.w	8003ee2 <_vfprintf_r+0x1472>
 800372c:	4618      	mov	r0, r3
 800372e:	4621      	mov	r1, r4
 8003730:	465b      	mov	r3, fp
 8003732:	2610      	movs	r6, #16
 8003734:	46bb      	mov	fp, r7
 8003736:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800373a:	9c07      	ldr	r4, [sp, #28]
 800373c:	4607      	mov	r7, r0
 800373e:	e004      	b.n	800374a <_vfprintf_r+0xcda>
 8003740:	3308      	adds	r3, #8
 8003742:	3d10      	subs	r5, #16
 8003744:	2d10      	cmp	r5, #16
 8003746:	f340 83c7 	ble.w	8003ed8 <_vfprintf_r+0x1468>
 800374a:	3201      	adds	r2, #1
 800374c:	3110      	adds	r1, #16
 800374e:	2a07      	cmp	r2, #7
 8003750:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003754:	e9c3 7600 	strd	r7, r6, [r3]
 8003758:	ddf2      	ble.n	8003740 <_vfprintf_r+0xcd0>
 800375a:	aa2a      	add	r2, sp, #168	; 0xa8
 800375c:	4621      	mov	r1, r4
 800375e:	4648      	mov	r0, r9
 8003760:	f003 fcb4 	bl	80070cc <__sprint_r>
 8003764:	2800      	cmp	r0, #0
 8003766:	f040 84a5 	bne.w	80040b4 <_vfprintf_r+0x1644>
 800376a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800376e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003770:	e7e7      	b.n	8003742 <_vfprintf_r+0xcd2>
 8003772:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003776:	af56      	add	r7, sp, #344	; 0x158
 8003778:	f7ff bafb 	b.w	8002d72 <_vfprintf_r+0x302>
 800377c:	f1b9 0f00 	cmp.w	r9, #0
 8003780:	f77f af4c 	ble.w	800361c <_vfprintf_r+0xbac>
 8003784:	f1b9 0f10 	cmp.w	r9, #16
 8003788:	4b13      	ldr	r3, [pc, #76]	; (80037d8 <_vfprintf_r+0xd68>)
 800378a:	f340 8659 	ble.w	8004440 <_vfprintf_r+0x19d0>
 800378e:	4619      	mov	r1, r3
 8003790:	4622      	mov	r2, r4
 8003792:	4633      	mov	r3, r6
 8003794:	2710      	movs	r7, #16
 8003796:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800379a:	9c07      	ldr	r4, [sp, #28]
 800379c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800379e:	460e      	mov	r6, r1
 80037a0:	e007      	b.n	80037b2 <_vfprintf_r+0xd42>
 80037a2:	3308      	adds	r3, #8
 80037a4:	f1a9 0910 	sub.w	r9, r9, #16
 80037a8:	f1b9 0f10 	cmp.w	r9, #16
 80037ac:	f340 8353 	ble.w	8003e56 <_vfprintf_r+0x13e6>
 80037b0:	3501      	adds	r5, #1
 80037b2:	3210      	adds	r2, #16
 80037b4:	2d07      	cmp	r5, #7
 80037b6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80037ba:	e9c3 6700 	strd	r6, r7, [r3]
 80037be:	ddf0      	ble.n	80037a2 <_vfprintf_r+0xd32>
 80037c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80037c2:	4621      	mov	r1, r4
 80037c4:	4658      	mov	r0, fp
 80037c6:	f003 fc81 	bl	80070cc <__sprint_r>
 80037ca:	2800      	cmp	r0, #0
 80037cc:	f040 8472 	bne.w	80040b4 <_vfprintf_r+0x1644>
 80037d0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80037d4:	ab2d      	add	r3, sp, #180	; 0xb4
 80037d6:	e7e5      	b.n	80037a4 <_vfprintf_r+0xd34>
 80037d8:	08007c44 	.word	0x08007c44
 80037dc:	f018 0f01 	tst.w	r8, #1
 80037e0:	f47f aee0 	bne.w	80035a4 <_vfprintf_r+0xb34>
 80037e4:	2201      	movs	r2, #1
 80037e6:	2d07      	cmp	r5, #7
 80037e8:	f8cb 7000 	str.w	r7, [fp]
 80037ec:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80037f0:	f8cb 2004 	str.w	r2, [fp, #4]
 80037f4:	dc04      	bgt.n	8003800 <_vfprintf_r+0xd90>
 80037f6:	3302      	adds	r3, #2
 80037f8:	9309      	str	r3, [sp, #36]	; 0x24
 80037fa:	f10b 0b10 	add.w	fp, fp, #16
 80037fe:	e70d      	b.n	800361c <_vfprintf_r+0xbac>
 8003800:	aa2a      	add	r2, sp, #168	; 0xa8
 8003802:	9907      	ldr	r1, [sp, #28]
 8003804:	9803      	ldr	r0, [sp, #12]
 8003806:	f003 fc61 	bl	80070cc <__sprint_r>
 800380a:	2800      	cmp	r0, #0
 800380c:	f47f aea8 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8003810:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003814:	3301      	adds	r3, #1
 8003816:	9309      	str	r3, [sp, #36]	; 0x24
 8003818:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800381c:	ae2d      	add	r6, sp, #180	; 0xb4
 800381e:	e6fd      	b.n	800361c <_vfprintf_r+0xbac>
 8003820:	aa2a      	add	r2, sp, #168	; 0xa8
 8003822:	9907      	ldr	r1, [sp, #28]
 8003824:	9803      	ldr	r0, [sp, #12]
 8003826:	f003 fc51 	bl	80070cc <__sprint_r>
 800382a:	2800      	cmp	r0, #0
 800382c:	f47f ae98 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8003830:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003834:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003836:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800383a:	f7ff baf6 	b.w	8002e2a <_vfprintf_r+0x3ba>
 800383e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003840:	9907      	ldr	r1, [sp, #28]
 8003842:	9803      	ldr	r0, [sp, #12]
 8003844:	f003 fc42 	bl	80070cc <__sprint_r>
 8003848:	2800      	cmp	r0, #0
 800384a:	f47f ae89 	bne.w	8003560 <_vfprintf_r+0xaf0>
 800384e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003850:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003854:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003856:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800385a:	443b      	add	r3, r7
 800385c:	4699      	mov	r9, r3
 800385e:	f040 8357 	bne.w	8003f10 <_vfprintf_r+0x14a0>
 8003862:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003864:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003866:	4293      	cmp	r3, r2
 8003868:	db49      	blt.n	80038fe <_vfprintf_r+0xe8e>
 800386a:	f018 0f01 	tst.w	r8, #1
 800386e:	d146      	bne.n	80038fe <_vfprintf_r+0xe8e>
 8003870:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003872:	18bd      	adds	r5, r7, r2
 8003874:	eba5 0509 	sub.w	r5, r5, r9
 8003878:	1ad3      	subs	r3, r2, r3
 800387a:	429d      	cmp	r5, r3
 800387c:	bfa8      	it	ge
 800387e:	461d      	movge	r5, r3
 8003880:	2d00      	cmp	r5, #0
 8003882:	dd0d      	ble.n	80038a0 <_vfprintf_r+0xe30>
 8003884:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003886:	f8cb 9000 	str.w	r9, [fp]
 800388a:	3201      	adds	r2, #1
 800388c:	442c      	add	r4, r5
 800388e:	2a07      	cmp	r2, #7
 8003890:	942c      	str	r4, [sp, #176]	; 0xb0
 8003892:	f8cb 5004 	str.w	r5, [fp, #4]
 8003896:	922b      	str	r2, [sp, #172]	; 0xac
 8003898:	f300 8462 	bgt.w	8004160 <_vfprintf_r+0x16f0>
 800389c:	f10b 0b08 	add.w	fp, fp, #8
 80038a0:	2d00      	cmp	r5, #0
 80038a2:	bfac      	ite	ge
 80038a4:	1b5d      	subge	r5, r3, r5
 80038a6:	461d      	movlt	r5, r3
 80038a8:	2d00      	cmp	r5, #0
 80038aa:	f77f ab32 	ble.w	8002f12 <_vfprintf_r+0x4a2>
 80038ae:	2d10      	cmp	r5, #16
 80038b0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038b2:	4bc5      	ldr	r3, [pc, #788]	; (8003bc8 <_vfprintf_r+0x1158>)
 80038b4:	f340 80c4 	ble.w	8003a40 <_vfprintf_r+0xfd0>
 80038b8:	4619      	mov	r1, r3
 80038ba:	2610      	movs	r6, #16
 80038bc:	4623      	mov	r3, r4
 80038be:	9f03      	ldr	r7, [sp, #12]
 80038c0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80038c4:	460c      	mov	r4, r1
 80038c6:	e005      	b.n	80038d4 <_vfprintf_r+0xe64>
 80038c8:	f10b 0b08 	add.w	fp, fp, #8
 80038cc:	3d10      	subs	r5, #16
 80038ce:	2d10      	cmp	r5, #16
 80038d0:	f340 80b3 	ble.w	8003a3a <_vfprintf_r+0xfca>
 80038d4:	3201      	adds	r2, #1
 80038d6:	3310      	adds	r3, #16
 80038d8:	2a07      	cmp	r2, #7
 80038da:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80038de:	e9cb 4600 	strd	r4, r6, [fp]
 80038e2:	ddf1      	ble.n	80038c8 <_vfprintf_r+0xe58>
 80038e4:	aa2a      	add	r2, sp, #168	; 0xa8
 80038e6:	4649      	mov	r1, r9
 80038e8:	4638      	mov	r0, r7
 80038ea:	f003 fbef 	bl	80070cc <__sprint_r>
 80038ee:	2800      	cmp	r0, #0
 80038f0:	f47f ae38 	bne.w	8003564 <_vfprintf_r+0xaf4>
 80038f4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80038f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038fc:	e7e6      	b.n	80038cc <_vfprintf_r+0xe5c>
 80038fe:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003900:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003902:	f8cb 1000 	str.w	r1, [fp]
 8003906:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003908:	f8cb 1004 	str.w	r1, [fp, #4]
 800390c:	3201      	adds	r2, #1
 800390e:	440c      	add	r4, r1
 8003910:	2a07      	cmp	r2, #7
 8003912:	942c      	str	r4, [sp, #176]	; 0xb0
 8003914:	922b      	str	r2, [sp, #172]	; 0xac
 8003916:	f300 828c 	bgt.w	8003e32 <_vfprintf_r+0x13c2>
 800391a:	f10b 0b08 	add.w	fp, fp, #8
 800391e:	e7a7      	b.n	8003870 <_vfprintf_r+0xe00>
 8003920:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003924:	f002 fa94 	bl	8005e50 <__retarget_lock_release_recursive>
 8003928:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800392c:	e628      	b.n	8003580 <_vfprintf_r+0xb10>
 800392e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003930:	9907      	ldr	r1, [sp, #28]
 8003932:	9803      	ldr	r0, [sp, #12]
 8003934:	f003 fbca 	bl	80070cc <__sprint_r>
 8003938:	2800      	cmp	r0, #0
 800393a:	f47f ae11 	bne.w	8003560 <_vfprintf_r+0xaf0>
 800393e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003942:	ae2d      	add	r6, sp, #180	; 0xb4
 8003944:	e638      	b.n	80035b8 <_vfprintf_r+0xb48>
 8003946:	aa2a      	add	r2, sp, #168	; 0xa8
 8003948:	9907      	ldr	r1, [sp, #28]
 800394a:	9803      	ldr	r0, [sp, #12]
 800394c:	f003 fbbe 	bl	80070cc <__sprint_r>
 8003950:	2800      	cmp	r0, #0
 8003952:	f47f ae05 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8003956:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800395a:	ae2d      	add	r6, sp, #180	; 0xb4
 800395c:	930b      	str	r3, [sp, #44]	; 0x2c
 800395e:	e638      	b.n	80035d2 <_vfprintf_r+0xb62>
 8003960:	6814      	ldr	r4, [r2, #0]
 8003962:	9308      	str	r3, [sp, #32]
 8003964:	2500      	movs	r5, #0
 8003966:	f7ff bb95 	b.w	8003094 <_vfprintf_r+0x624>
 800396a:	6814      	ldr	r4, [r2, #0]
 800396c:	9308      	str	r3, [sp, #32]
 800396e:	2500      	movs	r5, #0
 8003970:	f7ff b9ae 	b.w	8002cd0 <_vfprintf_r+0x260>
 8003974:	680c      	ldr	r4, [r1, #0]
 8003976:	9208      	str	r2, [sp, #32]
 8003978:	17e5      	asrs	r5, r4, #31
 800397a:	4620      	mov	r0, r4
 800397c:	4629      	mov	r1, r5
 800397e:	f7ff b9d2 	b.w	8002d26 <_vfprintf_r+0x2b6>
 8003982:	6814      	ldr	r4, [r2, #0]
 8003984:	9108      	str	r1, [sp, #32]
 8003986:	2201      	movs	r2, #1
 8003988:	2500      	movs	r5, #0
 800398a:	f7ff bb32 	b.w	8002ff2 <_vfprintf_r+0x582>
 800398e:	2a01      	cmp	r2, #1
 8003990:	f47f ab3c 	bne.w	800300c <_vfprintf_r+0x59c>
 8003994:	e68f      	b.n	80036b6 <_vfprintf_r+0xc46>
 8003996:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800399a:	2200      	movs	r2, #0
 800399c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80039a0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80039a4:	af56      	add	r7, sp, #344	; 0x158
 80039a6:	4692      	mov	sl, r2
 80039a8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80039ac:	461e      	mov	r6, r3
 80039ae:	e00a      	b.n	80039c6 <_vfprintf_r+0xf56>
 80039b0:	2300      	movs	r3, #0
 80039b2:	4620      	mov	r0, r4
 80039b4:	4629      	mov	r1, r5
 80039b6:	220a      	movs	r2, #10
 80039b8:	f7fc fc22 	bl	8000200 <__aeabi_uldivmod>
 80039bc:	4604      	mov	r4, r0
 80039be:	460d      	mov	r5, r1
 80039c0:	ea54 0305 	orrs.w	r3, r4, r5
 80039c4:	d029      	beq.n	8003a1a <_vfprintf_r+0xfaa>
 80039c6:	220a      	movs	r2, #10
 80039c8:	2300      	movs	r3, #0
 80039ca:	4620      	mov	r0, r4
 80039cc:	4629      	mov	r1, r5
 80039ce:	f7fc fc17 	bl	8000200 <__aeabi_uldivmod>
 80039d2:	3230      	adds	r2, #48	; 0x30
 80039d4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80039d8:	f10a 0a01 	add.w	sl, sl, #1
 80039dc:	3f01      	subs	r7, #1
 80039de:	2e00      	cmp	r6, #0
 80039e0:	d0e6      	beq.n	80039b0 <_vfprintf_r+0xf40>
 80039e2:	f898 3000 	ldrb.w	r3, [r8]
 80039e6:	459a      	cmp	sl, r3
 80039e8:	d1e2      	bne.n	80039b0 <_vfprintf_r+0xf40>
 80039ea:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80039ee:	d0df      	beq.n	80039b0 <_vfprintf_r+0xf40>
 80039f0:	2d00      	cmp	r5, #0
 80039f2:	bf08      	it	eq
 80039f4:	2c0a      	cmpeq	r4, #10
 80039f6:	d3db      	bcc.n	80039b0 <_vfprintf_r+0xf40>
 80039f8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80039fa:	9918      	ldr	r1, [sp, #96]	; 0x60
 80039fc:	1aff      	subs	r7, r7, r3
 80039fe:	461a      	mov	r2, r3
 8003a00:	4638      	mov	r0, r7
 8003a02:	f003 faf5 	bl	8006ff0 <strncpy>
 8003a06:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003a0a:	2b00      	cmp	r3, #0
 8003a0c:	f000 8496 	beq.w	800433c <_vfprintf_r+0x18cc>
 8003a10:	f108 0801 	add.w	r8, r8, #1
 8003a14:	f04f 0a00 	mov.w	sl, #0
 8003a18:	e7ca      	b.n	80039b0 <_vfprintf_r+0xf40>
 8003a1a:	9b04      	ldr	r3, [sp, #16]
 8003a1c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003a20:	1bdb      	subs	r3, r3, r7
 8003a22:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003a26:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003a28:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003a2c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003a30:	9309      	str	r3, [sp, #36]	; 0x24
 8003a32:	f7ff b99e 	b.w	8002d72 <_vfprintf_r+0x302>
 8003a36:	46c1      	mov	r9, r8
 8003a38:	e594      	b.n	8003564 <_vfprintf_r+0xaf4>
 8003a3a:	4621      	mov	r1, r4
 8003a3c:	461c      	mov	r4, r3
 8003a3e:	460b      	mov	r3, r1
 8003a40:	3201      	adds	r2, #1
 8003a42:	442c      	add	r4, r5
 8003a44:	2a07      	cmp	r2, #7
 8003a46:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a4a:	e9cb 3500 	strd	r3, r5, [fp]
 8003a4e:	f77f aa5e 	ble.w	8002f0e <_vfprintf_r+0x49e>
 8003a52:	e5ee      	b.n	8003632 <_vfprintf_r+0xbc2>
 8003a54:	f018 0f10 	tst.w	r8, #16
 8003a58:	f040 80f8 	bne.w	8003c4c <_vfprintf_r+0x11dc>
 8003a5c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003a60:	f000 8351 	beq.w	8004106 <_vfprintf_r+0x1696>
 8003a64:	9a05      	ldr	r2, [sp, #20]
 8003a66:	801a      	strh	r2, [r3, #0]
 8003a68:	4657      	mov	r7, sl
 8003a6a:	f7ff baa7 	b.w	8002fbc <_vfprintf_r+0x54c>
 8003a6e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a70:	9907      	ldr	r1, [sp, #28]
 8003a72:	9803      	ldr	r0, [sp, #12]
 8003a74:	f003 fb2a 	bl	80070cc <__sprint_r>
 8003a78:	2800      	cmp	r0, #0
 8003a7a:	f47f ad71 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8003a7e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a84:	f7ff b9f5 	b.w	8002e72 <_vfprintf_r+0x402>
 8003a88:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003a8c:	4602      	mov	r2, r0
 8003a8e:	460b      	mov	r3, r1
 8003a90:	f7fd faec 	bl	800106c <__aeabi_dcmpun>
 8003a94:	2800      	cmp	r0, #0
 8003a96:	f040 8491 	bne.w	80043bc <_vfprintf_r+0x194c>
 8003a9a:	2e61      	cmp	r6, #97	; 0x61
 8003a9c:	f000 8111 	beq.w	8003cc2 <_vfprintf_r+0x1252>
 8003aa0:	2e41      	cmp	r6, #65	; 0x41
 8003aa2:	f000 8377 	beq.w	8004194 <_vfprintf_r+0x1724>
 8003aa6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003aaa:	f026 0220 	bic.w	r2, r6, #32
 8003aae:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003ab2:	930e      	str	r3, [sp, #56]	; 0x38
 8003ab4:	9204      	str	r2, [sp, #16]
 8003ab6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003ab8:	f000 842d 	beq.w	8004316 <_vfprintf_r+0x18a6>
 8003abc:	2a47      	cmp	r2, #71	; 0x47
 8003abe:	f000 8424 	beq.w	800430a <_vfprintf_r+0x189a>
 8003ac2:	2b00      	cmp	r3, #0
 8003ac4:	f2c0 82f9 	blt.w	80040ba <_vfprintf_r+0x164a>
 8003ac8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003acc:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003ad0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003ad4:	2e66      	cmp	r6, #102	; 0x66
 8003ad6:	f000 83eb 	beq.w	80042b0 <_vfprintf_r+0x1840>
 8003ada:	2e46      	cmp	r6, #70	; 0x46
 8003adc:	f000 847e 	beq.w	80043dc <_vfprintf_r+0x196c>
 8003ae0:	9b04      	ldr	r3, [sp, #16]
 8003ae2:	9803      	ldr	r0, [sp, #12]
 8003ae4:	2b45      	cmp	r3, #69	; 0x45
 8003ae6:	bf0c      	ite	eq
 8003ae8:	f109 0501 	addeq.w	r5, r9, #1
 8003aec:	464d      	movne	r5, r9
 8003aee:	aa28      	add	r2, sp, #160	; 0xa0
 8003af0:	ab25      	add	r3, sp, #148	; 0x94
 8003af2:	e9cd 3200 	strd	r3, r2, [sp]
 8003af6:	2102      	movs	r1, #2
 8003af8:	ab24      	add	r3, sp, #144	; 0x90
 8003afa:	462a      	mov	r2, r5
 8003afc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b00:	f000 fe3e 	bl	8004780 <_dtoa_r>
 8003b04:	2e67      	cmp	r6, #103	; 0x67
 8003b06:	4607      	mov	r7, r0
 8003b08:	f040 849c 	bne.w	8004444 <_vfprintf_r+0x19d4>
 8003b0c:	f018 0f01 	tst.w	r8, #1
 8003b10:	f040 83f9 	bne.w	8004306 <_vfprintf_r+0x1896>
 8003b14:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b16:	4640      	mov	r0, r8
 8003b18:	1bdb      	subs	r3, r3, r7
 8003b1a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003b1e:	9310      	str	r3, [sp, #64]	; 0x40
 8003b20:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b22:	9311      	str	r3, [sp, #68]	; 0x44
 8003b24:	9b04      	ldr	r3, [sp, #16]
 8003b26:	2b47      	cmp	r3, #71	; 0x47
 8003b28:	f000 81e7 	beq.w	8003efa <_vfprintf_r+0x148a>
 8003b2c:	9b04      	ldr	r3, [sp, #16]
 8003b2e:	2b46      	cmp	r3, #70	; 0x46
 8003b30:	f000 8300 	beq.w	8004134 <_vfprintf_r+0x16c4>
 8003b34:	9904      	ldr	r1, [sp, #16]
 8003b36:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b38:	b2f2      	uxtb	r2, r6
 8003b3a:	2941      	cmp	r1, #65	; 0x41
 8003b3c:	bf08      	it	eq
 8003b3e:	320f      	addeq	r2, #15
 8003b40:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003b44:	bf06      	itte	eq
 8003b46:	b2d2      	uxtbeq	r2, r2
 8003b48:	2101      	moveq	r1, #1
 8003b4a:	2100      	movne	r1, #0
 8003b4c:	2b00      	cmp	r3, #0
 8003b4e:	9324      	str	r3, [sp, #144]	; 0x90
 8003b50:	bfb8      	it	lt
 8003b52:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003b54:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003b58:	bfba      	itte	lt
 8003b5a:	f1c3 0301 	rsblt	r3, r3, #1
 8003b5e:	222d      	movlt	r2, #45	; 0x2d
 8003b60:	222b      	movge	r2, #43	; 0x2b
 8003b62:	2b09      	cmp	r3, #9
 8003b64:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003b68:	f300 83f9 	bgt.w	800435e <_vfprintf_r+0x18ee>
 8003b6c:	2900      	cmp	r1, #0
 8003b6e:	f040 8487 	bne.w	8004480 <_vfprintf_r+0x1a10>
 8003b72:	2230      	movs	r2, #48	; 0x30
 8003b74:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003b78:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003b7c:	3330      	adds	r3, #48	; 0x30
 8003b7e:	7013      	strb	r3, [r2, #0]
 8003b80:	1c53      	adds	r3, r2, #1
 8003b82:	aa26      	add	r2, sp, #152	; 0x98
 8003b84:	1a9b      	subs	r3, r3, r2
 8003b86:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b88:	9319      	str	r3, [sp, #100]	; 0x64
 8003b8a:	2a01      	cmp	r2, #1
 8003b8c:	4413      	add	r3, r2
 8003b8e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b90:	f340 8442 	ble.w	8004418 <_vfprintf_r+0x19a8>
 8003b94:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b96:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b98:	4413      	add	r3, r2
 8003b9a:	9309      	str	r3, [sp, #36]	; 0x24
 8003b9c:	2300      	movs	r3, #0
 8003b9e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ba0:	9314      	str	r3, [sp, #80]	; 0x50
 8003ba2:	9311      	str	r3, [sp, #68]	; 0x44
 8003ba4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ba6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003baa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003bae:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003bb2:	9304      	str	r3, [sp, #16]
 8003bb4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003bb6:	2b00      	cmp	r3, #0
 8003bb8:	f040 8275 	bne.w	80040a6 <_vfprintf_r+0x1636>
 8003bbc:	4699      	mov	r9, r3
 8003bbe:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003bc2:	f7ff b8e2 	b.w	8002d8a <_vfprintf_r+0x31a>
 8003bc6:	bf00      	nop
 8003bc8:	08007c44 	.word	0x08007c44
 8003bcc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003bce:	49bd      	ldr	r1, [pc, #756]	; (8003ec4 <_vfprintf_r+0x1454>)
 8003bd0:	f8cb 1000 	str.w	r1, [fp]
 8003bd4:	3201      	adds	r2, #1
 8003bd6:	3401      	adds	r4, #1
 8003bd8:	2101      	movs	r1, #1
 8003bda:	2a07      	cmp	r2, #7
 8003bdc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003be0:	f8cb 1004 	str.w	r1, [fp, #4]
 8003be4:	dc60      	bgt.n	8003ca8 <_vfprintf_r+0x1238>
 8003be6:	f10b 0b08 	add.w	fp, fp, #8
 8003bea:	b92b      	cbnz	r3, 8003bf8 <_vfprintf_r+0x1188>
 8003bec:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003bee:	b91a      	cbnz	r2, 8003bf8 <_vfprintf_r+0x1188>
 8003bf0:	f018 0f01 	tst.w	r8, #1
 8003bf4:	f43f a98d 	beq.w	8002f12 <_vfprintf_r+0x4a2>
 8003bf8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003bfa:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003bfc:	f8cb 1000 	str.w	r1, [fp]
 8003c00:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003c02:	f8cb 1004 	str.w	r1, [fp, #4]
 8003c06:	3201      	adds	r2, #1
 8003c08:	440c      	add	r4, r1
 8003c0a:	2a07      	cmp	r2, #7
 8003c0c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003c0e:	922b      	str	r2, [sp, #172]	; 0xac
 8003c10:	f300 8282 	bgt.w	8004118 <_vfprintf_r+0x16a8>
 8003c14:	f10b 0b08 	add.w	fp, fp, #8
 8003c18:	2b00      	cmp	r3, #0
 8003c1a:	f2c0 82e7 	blt.w	80041ec <_vfprintf_r+0x177c>
 8003c1e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c20:	3201      	adds	r2, #1
 8003c22:	441c      	add	r4, r3
 8003c24:	2a07      	cmp	r2, #7
 8003c26:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003c2a:	e9cb 7300 	strd	r7, r3, [fp]
 8003c2e:	f77f a96e 	ble.w	8002f0e <_vfprintf_r+0x49e>
 8003c32:	e4fe      	b.n	8003632 <_vfprintf_r+0xbc2>
 8003c34:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c36:	9907      	ldr	r1, [sp, #28]
 8003c38:	9803      	ldr	r0, [sp, #12]
 8003c3a:	f003 fa47 	bl	80070cc <__sprint_r>
 8003c3e:	2800      	cmp	r0, #0
 8003c40:	f47f ac8e 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8003c44:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c48:	f7ff bbf0 	b.w	800342c <_vfprintf_r+0x9bc>
 8003c4c:	9a05      	ldr	r2, [sp, #20]
 8003c4e:	601a      	str	r2, [r3, #0]
 8003c50:	4657      	mov	r7, sl
 8003c52:	f7ff b9b3 	b.w	8002fbc <_vfprintf_r+0x54c>
 8003c56:	8814      	ldrh	r4, [r2, #0]
 8003c58:	9108      	str	r1, [sp, #32]
 8003c5a:	2500      	movs	r5, #0
 8003c5c:	2201      	movs	r2, #1
 8003c5e:	f7ff b9c8 	b.w	8002ff2 <_vfprintf_r+0x582>
 8003c62:	8814      	ldrh	r4, [r2, #0]
 8003c64:	9308      	str	r3, [sp, #32]
 8003c66:	2500      	movs	r5, #0
 8003c68:	f7ff ba14 	b.w	8003094 <_vfprintf_r+0x624>
 8003c6c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003c70:	9208      	str	r2, [sp, #32]
 8003c72:	17e5      	asrs	r5, r4, #31
 8003c74:	4620      	mov	r0, r4
 8003c76:	4629      	mov	r1, r5
 8003c78:	f7ff b855 	b.w	8002d26 <_vfprintf_r+0x2b6>
 8003c7c:	8814      	ldrh	r4, [r2, #0]
 8003c7e:	9308      	str	r3, [sp, #32]
 8003c80:	2500      	movs	r5, #0
 8003c82:	f7ff b825 	b.w	8002cd0 <_vfprintf_r+0x260>
 8003c86:	222d      	movs	r2, #45	; 0x2d
 8003c88:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003c8c:	f7ff baa2 	b.w	80031d4 <_vfprintf_r+0x764>
 8003c90:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c92:	9907      	ldr	r1, [sp, #28]
 8003c94:	9803      	ldr	r0, [sp, #12]
 8003c96:	f003 fa19 	bl	80070cc <__sprint_r>
 8003c9a:	2800      	cmp	r0, #0
 8003c9c:	f47f ac60 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8003ca0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ca2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ca6:	e534      	b.n	8003712 <_vfprintf_r+0xca2>
 8003ca8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003caa:	9907      	ldr	r1, [sp, #28]
 8003cac:	9803      	ldr	r0, [sp, #12]
 8003cae:	f003 fa0d 	bl	80070cc <__sprint_r>
 8003cb2:	2800      	cmp	r0, #0
 8003cb4:	f47f ac54 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8003cb8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003cba:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003cbc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cc0:	e793      	b.n	8003bea <_vfprintf_r+0x117a>
 8003cc2:	2330      	movs	r3, #48	; 0x30
 8003cc4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003cc8:	2378      	movs	r3, #120	; 0x78
 8003cca:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003cce:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003cd2:	f048 0402 	orr.w	r4, r8, #2
 8003cd6:	f300 82b0 	bgt.w	800423a <_vfprintf_r+0x17ca>
 8003cda:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003cde:	930e      	str	r3, [sp, #56]	; 0x38
 8003ce0:	f026 0320 	bic.w	r3, r6, #32
 8003ce4:	9304      	str	r3, [sp, #16]
 8003ce6:	2200      	movs	r2, #0
 8003ce8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003cea:	920a      	str	r2, [sp, #40]	; 0x28
 8003cec:	46a0      	mov	r8, r4
 8003cee:	af3d      	add	r7, sp, #244	; 0xf4
 8003cf0:	2b00      	cmp	r3, #0
 8003cf2:	f2c0 81e3 	blt.w	80040bc <_vfprintf_r+0x164c>
 8003cf6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003cfa:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003cfe:	2300      	movs	r3, #0
 8003d00:	930b      	str	r3, [sp, #44]	; 0x2c
 8003d02:	2e61      	cmp	r6, #97	; 0x61
 8003d04:	f000 8255 	beq.w	80041b2 <_vfprintf_r+0x1742>
 8003d08:	2e41      	cmp	r6, #65	; 0x41
 8003d0a:	f47f aee3 	bne.w	8003ad4 <_vfprintf_r+0x1064>
 8003d0e:	a824      	add	r0, sp, #144	; 0x90
 8003d10:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d14:	f003 f8e2 	bl	8006edc <frexp>
 8003d18:	2200      	movs	r2, #0
 8003d1a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003d1e:	ec51 0b10 	vmov	r0, r1, d0
 8003d22:	f7fc ff09 	bl	8000b38 <__aeabi_dmul>
 8003d26:	2200      	movs	r2, #0
 8003d28:	2300      	movs	r3, #0
 8003d2a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003d2e:	f7fd f96b 	bl	8001008 <__aeabi_dcmpeq>
 8003d32:	2800      	cmp	r0, #0
 8003d34:	f040 8305 	bne.w	8004342 <_vfprintf_r+0x18d2>
 8003d38:	4b63      	ldr	r3, [pc, #396]	; (8003ec8 <_vfprintf_r+0x1458>)
 8003d3a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d3c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003d40:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003d44:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003d48:	9721      	str	r7, [sp, #132]	; 0x84
 8003d4a:	46b9      	mov	r9, r7
 8003d4c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003d50:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003d54:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003d58:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003d5c:	e003      	b.n	8003d66 <_vfprintf_r+0x12f6>
 8003d5e:	f7fd f953 	bl	8001008 <__aeabi_dcmpeq>
 8003d62:	bb20      	cbnz	r0, 8003dae <_vfprintf_r+0x133e>
 8003d64:	46a9      	mov	r9, r5
 8003d66:	2200      	movs	r2, #0
 8003d68:	4b58      	ldr	r3, [pc, #352]	; (8003ecc <_vfprintf_r+0x145c>)
 8003d6a:	4630      	mov	r0, r6
 8003d6c:	4639      	mov	r1, r7
 8003d6e:	f7fc fee3 	bl	8000b38 <__aeabi_dmul>
 8003d72:	460f      	mov	r7, r1
 8003d74:	4606      	mov	r6, r0
 8003d76:	f7fd f98f 	bl	8001098 <__aeabi_d2iz>
 8003d7a:	4680      	mov	r8, r0
 8003d7c:	f7fc fe72 	bl	8000a64 <__aeabi_i2d>
 8003d80:	4602      	mov	r2, r0
 8003d82:	460b      	mov	r3, r1
 8003d84:	4630      	mov	r0, r6
 8003d86:	4639      	mov	r1, r7
 8003d88:	f7fc fd1e 	bl	80007c8 <__aeabi_dsub>
 8003d8c:	464d      	mov	r5, r9
 8003d8e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003d92:	f805 cb01 	strb.w	ip, [r5], #1
 8003d96:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003d9a:	46a3      	mov	fp, r4
 8003d9c:	4606      	mov	r6, r0
 8003d9e:	460f      	mov	r7, r1
 8003da0:	f04f 0200 	mov.w	r2, #0
 8003da4:	f04f 0300 	mov.w	r3, #0
 8003da8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003dac:	d1d7      	bne.n	8003d5e <_vfprintf_r+0x12ee>
 8003dae:	4630      	mov	r0, r6
 8003db0:	4639      	mov	r1, r7
 8003db2:	2200      	movs	r2, #0
 8003db4:	4b46      	ldr	r3, [pc, #280]	; (8003ed0 <_vfprintf_r+0x1460>)
 8003db6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003dba:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003dbc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003dc0:	4644      	mov	r4, r8
 8003dc2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003dc6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003dca:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003dce:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003dd2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003dd4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003dd8:	f7fd f93e 	bl	8001058 <__aeabi_dcmpgt>
 8003ddc:	2800      	cmp	r0, #0
 8003dde:	f040 8176 	bne.w	80040ce <_vfprintf_r+0x165e>
 8003de2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003de6:	2200      	movs	r2, #0
 8003de8:	4b39      	ldr	r3, [pc, #228]	; (8003ed0 <_vfprintf_r+0x1460>)
 8003dea:	f7fd f90d 	bl	8001008 <__aeabi_dcmpeq>
 8003dee:	b110      	cbz	r0, 8003df6 <_vfprintf_r+0x1386>
 8003df0:	07e2      	lsls	r2, r4, #31
 8003df2:	f100 816c 	bmi.w	80040ce <_vfprintf_r+0x165e>
 8003df6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003df8:	2b00      	cmp	r3, #0
 8003dfa:	db07      	blt.n	8003e0c <_vfprintf_r+0x139c>
 8003dfc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003dfe:	3301      	adds	r3, #1
 8003e00:	442b      	add	r3, r5
 8003e02:	2230      	movs	r2, #48	; 0x30
 8003e04:	f805 2b01 	strb.w	r2, [r5], #1
 8003e08:	42ab      	cmp	r3, r5
 8003e0a:	d1fb      	bne.n	8003e04 <_vfprintf_r+0x1394>
 8003e0c:	1beb      	subs	r3, r5, r7
 8003e0e:	4640      	mov	r0, r8
 8003e10:	9310      	str	r3, [sp, #64]	; 0x40
 8003e12:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003e16:	e683      	b.n	8003b20 <_vfprintf_r+0x10b0>
 8003e18:	f8cd 9010 	str.w	r9, [sp, #16]
 8003e1c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003e20:	9408      	str	r4, [sp, #32]
 8003e22:	4681      	mov	r9, r0
 8003e24:	900f      	str	r0, [sp, #60]	; 0x3c
 8003e26:	9014      	str	r0, [sp, #80]	; 0x50
 8003e28:	9011      	str	r0, [sp, #68]	; 0x44
 8003e2a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003e2e:	f7fe bfac 	b.w	8002d8a <_vfprintf_r+0x31a>
 8003e32:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e34:	9907      	ldr	r1, [sp, #28]
 8003e36:	9803      	ldr	r0, [sp, #12]
 8003e38:	f003 f948 	bl	80070cc <__sprint_r>
 8003e3c:	2800      	cmp	r0, #0
 8003e3e:	f47f ab8f 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8003e42:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e44:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e46:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e4a:	e511      	b.n	8003870 <_vfprintf_r+0xe00>
 8003e4c:	4252      	negs	r2, r2
 8003e4e:	9206      	str	r2, [sp, #24]
 8003e50:	9308      	str	r3, [sp, #32]
 8003e52:	f7ff b96d 	b.w	8003130 <_vfprintf_r+0x6c0>
 8003e56:	4614      	mov	r4, r2
 8003e58:	4632      	mov	r2, r6
 8003e5a:	461e      	mov	r6, r3
 8003e5c:	4613      	mov	r3, r2
 8003e5e:	462a      	mov	r2, r5
 8003e60:	3201      	adds	r2, #1
 8003e62:	9209      	str	r2, [sp, #36]	; 0x24
 8003e64:	f106 0208 	add.w	r2, r6, #8
 8003e68:	e9c6 3900 	strd	r3, r9, [r6]
 8003e6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e6e:	932b      	str	r3, [sp, #172]	; 0xac
 8003e70:	444c      	add	r4, r9
 8003e72:	2b07      	cmp	r3, #7
 8003e74:	942c      	str	r4, [sp, #176]	; 0xb0
 8003e76:	f73f acc3 	bgt.w	8003800 <_vfprintf_r+0xd90>
 8003e7a:	3301      	adds	r3, #1
 8003e7c:	9309      	str	r3, [sp, #36]	; 0x24
 8003e7e:	f102 0b08 	add.w	fp, r2, #8
 8003e82:	4616      	mov	r6, r2
 8003e84:	f7ff bbca 	b.w	800361c <_vfprintf_r+0xbac>
 8003e88:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e8a:	9907      	ldr	r1, [sp, #28]
 8003e8c:	9803      	ldr	r0, [sp, #12]
 8003e8e:	f003 f91d 	bl	80070cc <__sprint_r>
 8003e92:	2800      	cmp	r0, #0
 8003e94:	f47f ab64 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8003e98:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e9a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e9e:	f7ff bade 	b.w	800345e <_vfprintf_r+0x9ee>
 8003ea2:	464b      	mov	r3, r9
 8003ea4:	2b06      	cmp	r3, #6
 8003ea6:	bf28      	it	cs
 8003ea8:	2306      	movcs	r3, #6
 8003eaa:	46b9      	mov	r9, r7
 8003eac:	970f      	str	r7, [sp, #60]	; 0x3c
 8003eae:	9714      	str	r7, [sp, #80]	; 0x50
 8003eb0:	9711      	str	r7, [sp, #68]	; 0x44
 8003eb2:	970a      	str	r7, [sp, #40]	; 0x28
 8003eb4:	463a      	mov	r2, r7
 8003eb6:	9304      	str	r3, [sp, #16]
 8003eb8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003ebc:	4f05      	ldr	r7, [pc, #20]	; (8003ed4 <_vfprintf_r+0x1464>)
 8003ebe:	f7fe bf64 	b.w	8002d8a <_vfprintf_r+0x31a>
 8003ec2:	bf00      	nop
 8003ec4:	08007c30 	.word	0x08007c30
 8003ec8:	08007c14 	.word	0x08007c14
 8003ecc:	40300000 	.word	0x40300000
 8003ed0:	3fe00000 	.word	0x3fe00000
 8003ed4:	08007c28 	.word	0x08007c28
 8003ed8:	460c      	mov	r4, r1
 8003eda:	4639      	mov	r1, r7
 8003edc:	465f      	mov	r7, fp
 8003ede:	469b      	mov	fp, r3
 8003ee0:	460b      	mov	r3, r1
 8003ee2:	3201      	adds	r2, #1
 8003ee4:	442c      	add	r4, r5
 8003ee6:	2a07      	cmp	r2, #7
 8003ee8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003eec:	e9cb 3500 	strd	r3, r5, [fp]
 8003ef0:	f73f aca5 	bgt.w	800383e <_vfprintf_r+0xdce>
 8003ef4:	f10b 0b08 	add.w	fp, fp, #8
 8003ef8:	e4ac      	b.n	8003854 <_vfprintf_r+0xde4>
 8003efa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003efc:	1cda      	adds	r2, r3, #3
 8003efe:	db02      	blt.n	8003f06 <_vfprintf_r+0x1496>
 8003f00:	4599      	cmp	r9, r3
 8003f02:	f280 80b5 	bge.w	8004070 <_vfprintf_r+0x1600>
 8003f06:	3e02      	subs	r6, #2
 8003f08:	f026 0320 	bic.w	r3, r6, #32
 8003f0c:	9304      	str	r3, [sp, #16]
 8003f0e:	e611      	b.n	8003b34 <_vfprintf_r+0x10c4>
 8003f10:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f12:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003f16:	465a      	mov	r2, fp
 8003f18:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003f1c:	18fb      	adds	r3, r7, r3
 8003f1e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003f22:	970c      	str	r7, [sp, #48]	; 0x30
 8003f24:	4eaf      	ldr	r6, [pc, #700]	; (80041e4 <_vfprintf_r+0x1774>)
 8003f26:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003f2a:	9309      	str	r3, [sp, #36]	; 0x24
 8003f2c:	464f      	mov	r7, r9
 8003f2e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003f32:	4621      	mov	r1, r4
 8003f34:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f36:	2b00      	cmp	r3, #0
 8003f38:	d05b      	beq.n	8003ff2 <_vfprintf_r+0x1582>
 8003f3a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f3c:	2b00      	cmp	r3, #0
 8003f3e:	d154      	bne.n	8003fea <_vfprintf_r+0x157a>
 8003f40:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f42:	3b01      	subs	r3, #1
 8003f44:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003f48:	9314      	str	r3, [sp, #80]	; 0x50
 8003f4a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003f4c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003f4e:	6010      	str	r0, [r2, #0]
 8003f50:	3301      	adds	r3, #1
 8003f52:	4459      	add	r1, fp
 8003f54:	2b07      	cmp	r3, #7
 8003f56:	912c      	str	r1, [sp, #176]	; 0xb0
 8003f58:	f8c2 b004 	str.w	fp, [r2, #4]
 8003f5c:	932b      	str	r3, [sp, #172]	; 0xac
 8003f5e:	dc68      	bgt.n	8004032 <_vfprintf_r+0x15c2>
 8003f60:	3208      	adds	r2, #8
 8003f62:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003f64:	f898 3000 	ldrb.w	r3, [r8]
 8003f68:	1bc5      	subs	r5, r0, r7
 8003f6a:	429d      	cmp	r5, r3
 8003f6c:	bfa8      	it	ge
 8003f6e:	461d      	movge	r5, r3
 8003f70:	2d00      	cmp	r5, #0
 8003f72:	dd0b      	ble.n	8003f8c <_vfprintf_r+0x151c>
 8003f74:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003f76:	6017      	str	r7, [r2, #0]
 8003f78:	3301      	adds	r3, #1
 8003f7a:	4429      	add	r1, r5
 8003f7c:	2b07      	cmp	r3, #7
 8003f7e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003f80:	6055      	str	r5, [r2, #4]
 8003f82:	932b      	str	r3, [sp, #172]	; 0xac
 8003f84:	dc5e      	bgt.n	8004044 <_vfprintf_r+0x15d4>
 8003f86:	f898 3000 	ldrb.w	r3, [r8]
 8003f8a:	3208      	adds	r2, #8
 8003f8c:	2d00      	cmp	r5, #0
 8003f8e:	bfac      	ite	ge
 8003f90:	1b5d      	subge	r5, r3, r5
 8003f92:	461d      	movlt	r5, r3
 8003f94:	2d00      	cmp	r5, #0
 8003f96:	dd26      	ble.n	8003fe6 <_vfprintf_r+0x1576>
 8003f98:	2d10      	cmp	r5, #16
 8003f9a:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003f9c:	dd3c      	ble.n	8004018 <_vfprintf_r+0x15a8>
 8003f9e:	2410      	movs	r4, #16
 8003fa0:	e003      	b.n	8003faa <_vfprintf_r+0x153a>
 8003fa2:	3208      	adds	r2, #8
 8003fa4:	3d10      	subs	r5, #16
 8003fa6:	2d10      	cmp	r5, #16
 8003fa8:	dd36      	ble.n	8004018 <_vfprintf_r+0x15a8>
 8003faa:	3001      	adds	r0, #1
 8003fac:	3110      	adds	r1, #16
 8003fae:	2807      	cmp	r0, #7
 8003fb0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003fb4:	e9c2 6400 	strd	r6, r4, [r2]
 8003fb8:	ddf3      	ble.n	8003fa2 <_vfprintf_r+0x1532>
 8003fba:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fbc:	4651      	mov	r1, sl
 8003fbe:	4648      	mov	r0, r9
 8003fc0:	f003 f884 	bl	80070cc <__sprint_r>
 8003fc4:	2800      	cmp	r0, #0
 8003fc6:	d150      	bne.n	800406a <_vfprintf_r+0x15fa>
 8003fc8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003fcc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003fce:	e7e9      	b.n	8003fa4 <_vfprintf_r+0x1534>
 8003fd0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fd2:	4651      	mov	r1, sl
 8003fd4:	4648      	mov	r0, r9
 8003fd6:	f003 f879 	bl	80070cc <__sprint_r>
 8003fda:	2800      	cmp	r0, #0
 8003fdc:	d145      	bne.n	800406a <_vfprintf_r+0x15fa>
 8003fde:	f898 3000 	ldrb.w	r3, [r8]
 8003fe2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003fe4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003fe6:	441f      	add	r7, r3
 8003fe8:	e7a4      	b.n	8003f34 <_vfprintf_r+0x14c4>
 8003fea:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003fec:	3b01      	subs	r3, #1
 8003fee:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ff0:	e7ab      	b.n	8003f4a <_vfprintf_r+0x14da>
 8003ff2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ff4:	2b00      	cmp	r3, #0
 8003ff6:	d1f8      	bne.n	8003fea <_vfprintf_r+0x157a>
 8003ff8:	46b9      	mov	r9, r7
 8003ffa:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ffc:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003ffe:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8004002:	18fb      	adds	r3, r7, r3
 8004004:	4599      	cmp	r9, r3
 8004006:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800400a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800400e:	4693      	mov	fp, r2
 8004010:	460c      	mov	r4, r1
 8004012:	bf28      	it	cs
 8004014:	4699      	movcs	r9, r3
 8004016:	e424      	b.n	8003862 <_vfprintf_r+0xdf2>
 8004018:	3001      	adds	r0, #1
 800401a:	4429      	add	r1, r5
 800401c:	2807      	cmp	r0, #7
 800401e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8004022:	e9c2 6500 	strd	r6, r5, [r2]
 8004026:	dcd3      	bgt.n	8003fd0 <_vfprintf_r+0x1560>
 8004028:	f898 3000 	ldrb.w	r3, [r8]
 800402c:	3208      	adds	r2, #8
 800402e:	441f      	add	r7, r3
 8004030:	e780      	b.n	8003f34 <_vfprintf_r+0x14c4>
 8004032:	aa2a      	add	r2, sp, #168	; 0xa8
 8004034:	4651      	mov	r1, sl
 8004036:	4648      	mov	r0, r9
 8004038:	f003 f848 	bl	80070cc <__sprint_r>
 800403c:	b9a8      	cbnz	r0, 800406a <_vfprintf_r+0x15fa>
 800403e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004040:	aa2d      	add	r2, sp, #180	; 0xb4
 8004042:	e78e      	b.n	8003f62 <_vfprintf_r+0x14f2>
 8004044:	aa2a      	add	r2, sp, #168	; 0xa8
 8004046:	4651      	mov	r1, sl
 8004048:	4648      	mov	r0, r9
 800404a:	f003 f83f 	bl	80070cc <__sprint_r>
 800404e:	b960      	cbnz	r0, 800406a <_vfprintf_r+0x15fa>
 8004050:	f898 3000 	ldrb.w	r3, [r8]
 8004054:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004056:	aa2d      	add	r2, sp, #180	; 0xb4
 8004058:	e798      	b.n	8003f8c <_vfprintf_r+0x151c>
 800405a:	4638      	mov	r0, r7
 800405c:	f7fc faf0 	bl	8000640 <strlen>
 8004060:	46a9      	mov	r9, r5
 8004062:	4603      	mov	r3, r0
 8004064:	9009      	str	r0, [sp, #36]	; 0x24
 8004066:	f7ff b8f4 	b.w	8003252 <_vfprintf_r+0x7e2>
 800406a:	46d1      	mov	r9, sl
 800406c:	f7ff ba7a 	b.w	8003564 <_vfprintf_r+0xaf4>
 8004070:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004072:	4619      	mov	r1, r3
 8004074:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004076:	4299      	cmp	r1, r3
 8004078:	f300 8082 	bgt.w	8004180 <_vfprintf_r+0x1710>
 800407c:	07c4      	lsls	r4, r0, #31
 800407e:	f140 816b 	bpl.w	8004358 <_vfprintf_r+0x18e8>
 8004082:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004084:	4413      	add	r3, r2
 8004086:	9309      	str	r3, [sp, #36]	; 0x24
 8004088:	0541      	lsls	r1, r0, #21
 800408a:	d503      	bpl.n	8004094 <_vfprintf_r+0x1624>
 800408c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800408e:	2b00      	cmp	r3, #0
 8004090:	f300 80e6 	bgt.w	8004260 <_vfprintf_r+0x17f0>
 8004094:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004096:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800409a:	9304      	str	r3, [sp, #16]
 800409c:	2667      	movs	r6, #103	; 0x67
 800409e:	2300      	movs	r3, #0
 80040a0:	930f      	str	r3, [sp, #60]	; 0x3c
 80040a2:	9314      	str	r3, [sp, #80]	; 0x50
 80040a4:	e586      	b.n	8003bb4 <_vfprintf_r+0x1144>
 80040a6:	222d      	movs	r2, #45	; 0x2d
 80040a8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80040ac:	f04f 0900 	mov.w	r9, #0
 80040b0:	f7fe be6c 	b.w	8002d8c <_vfprintf_r+0x31c>
 80040b4:	46a1      	mov	r9, r4
 80040b6:	f7ff ba55 	b.w	8003564 <_vfprintf_r+0xaf4>
 80040ba:	900a      	str	r0, [sp, #40]	; 0x28
 80040bc:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80040c0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80040c4:	931f      	str	r3, [sp, #124]	; 0x7c
 80040c6:	232d      	movs	r3, #45	; 0x2d
 80040c8:	911e      	str	r1, [sp, #120]	; 0x78
 80040ca:	930b      	str	r3, [sp, #44]	; 0x2c
 80040cc:	e619      	b.n	8003d02 <_vfprintf_r+0x1292>
 80040ce:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80040d0:	9328      	str	r3, [sp, #160]	; 0xa0
 80040d2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80040d4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80040d8:	7bd9      	ldrb	r1, [r3, #15]
 80040da:	4291      	cmp	r1, r2
 80040dc:	462b      	mov	r3, r5
 80040de:	d109      	bne.n	80040f4 <_vfprintf_r+0x1684>
 80040e0:	2030      	movs	r0, #48	; 0x30
 80040e2:	f803 0c01 	strb.w	r0, [r3, #-1]
 80040e6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80040e8:	1e5a      	subs	r2, r3, #1
 80040ea:	9228      	str	r2, [sp, #160]	; 0xa0
 80040ec:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80040f0:	4291      	cmp	r1, r2
 80040f2:	d0f6      	beq.n	80040e2 <_vfprintf_r+0x1672>
 80040f4:	2a39      	cmp	r2, #57	; 0x39
 80040f6:	bf0b      	itete	eq
 80040f8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80040fa:	3201      	addne	r2, #1
 80040fc:	7a92      	ldrbeq	r2, [r2, #10]
 80040fe:	b2d2      	uxtbne	r2, r2
 8004100:	f803 2c01 	strb.w	r2, [r3, #-1]
 8004104:	e682      	b.n	8003e0c <_vfprintf_r+0x139c>
 8004106:	f418 7f00 	tst.w	r8, #512	; 0x200
 800410a:	f43f ad9f 	beq.w	8003c4c <_vfprintf_r+0x11dc>
 800410e:	9a05      	ldr	r2, [sp, #20]
 8004110:	701a      	strb	r2, [r3, #0]
 8004112:	4657      	mov	r7, sl
 8004114:	f7fe bf52 	b.w	8002fbc <_vfprintf_r+0x54c>
 8004118:	aa2a      	add	r2, sp, #168	; 0xa8
 800411a:	9907      	ldr	r1, [sp, #28]
 800411c:	9803      	ldr	r0, [sp, #12]
 800411e:	f002 ffd5 	bl	80070cc <__sprint_r>
 8004122:	2800      	cmp	r0, #0
 8004124:	f47f aa1c 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8004128:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800412a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800412e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004132:	e571      	b.n	8003c18 <_vfprintf_r+0x11a8>
 8004134:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004136:	2b00      	cmp	r3, #0
 8004138:	f340 8164 	ble.w	8004404 <_vfprintf_r+0x1994>
 800413c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800413e:	f1b9 0f00 	cmp.w	r9, #0
 8004142:	f040 8103 	bne.w	800434c <_vfprintf_r+0x18dc>
 8004146:	07c6      	lsls	r6, r0, #31
 8004148:	f100 8100 	bmi.w	800434c <_vfprintf_r+0x18dc>
 800414c:	9309      	str	r3, [sp, #36]	; 0x24
 800414e:	2666      	movs	r6, #102	; 0x66
 8004150:	0543      	lsls	r3, r0, #21
 8004152:	f100 8086 	bmi.w	8004262 <_vfprintf_r+0x17f2>
 8004156:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004158:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800415c:	9304      	str	r3, [sp, #16]
 800415e:	e79e      	b.n	800409e <_vfprintf_r+0x162e>
 8004160:	aa2a      	add	r2, sp, #168	; 0xa8
 8004162:	9907      	ldr	r1, [sp, #28]
 8004164:	9803      	ldr	r0, [sp, #12]
 8004166:	f002 ffb1 	bl	80070cc <__sprint_r>
 800416a:	2800      	cmp	r0, #0
 800416c:	f47f a9f8 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8004170:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004172:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004174:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004176:	1ad3      	subs	r3, r2, r3
 8004178:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800417c:	f7ff bb90 	b.w	80038a0 <_vfprintf_r+0xe30>
 8004180:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004182:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004184:	4413      	add	r3, r2
 8004186:	9309      	str	r3, [sp, #36]	; 0x24
 8004188:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800418a:	2b00      	cmp	r3, #0
 800418c:	f340 8149 	ble.w	8004422 <_vfprintf_r+0x19b2>
 8004190:	2667      	movs	r6, #103	; 0x67
 8004192:	e7dd      	b.n	8004150 <_vfprintf_r+0x16e0>
 8004194:	2330      	movs	r3, #48	; 0x30
 8004196:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800419a:	2358      	movs	r3, #88	; 0x58
 800419c:	e595      	b.n	8003cca <_vfprintf_r+0x125a>
 800419e:	9803      	ldr	r0, [sp, #12]
 80041a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80041a2:	4649      	mov	r1, r9
 80041a4:	f002 ff92 	bl	80070cc <__sprint_r>
 80041a8:	2800      	cmp	r0, #0
 80041aa:	f47f a9e0 	bne.w	800356e <_vfprintf_r+0xafe>
 80041ae:	f7fe bf0f 	b.w	8002fd0 <_vfprintf_r+0x560>
 80041b2:	a824      	add	r0, sp, #144	; 0x90
 80041b4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80041b8:	f002 fe90 	bl	8006edc <frexp>
 80041bc:	2200      	movs	r2, #0
 80041be:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80041c2:	ec51 0b10 	vmov	r0, r1, d0
 80041c6:	f7fc fcb7 	bl	8000b38 <__aeabi_dmul>
 80041ca:	2200      	movs	r2, #0
 80041cc:	2300      	movs	r3, #0
 80041ce:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80041d2:	f7fc ff19 	bl	8001008 <__aeabi_dcmpeq>
 80041d6:	b108      	cbz	r0, 80041dc <_vfprintf_r+0x176c>
 80041d8:	2301      	movs	r3, #1
 80041da:	9324      	str	r3, [sp, #144]	; 0x90
 80041dc:	4b02      	ldr	r3, [pc, #8]	; (80041e8 <_vfprintf_r+0x1778>)
 80041de:	9309      	str	r3, [sp, #36]	; 0x24
 80041e0:	e5ac      	b.n	8003d3c <_vfprintf_r+0x12cc>
 80041e2:	bf00      	nop
 80041e4:	08007c44 	.word	0x08007c44
 80041e8:	08007c00 	.word	0x08007c00
 80041ec:	425d      	negs	r5, r3
 80041ee:	3310      	adds	r3, #16
 80041f0:	4bb9      	ldr	r3, [pc, #740]	; (80044d8 <_vfprintf_r+0x1a68>)
 80041f2:	f280 8097 	bge.w	8004324 <_vfprintf_r+0x18b4>
 80041f6:	4619      	mov	r1, r3
 80041f8:	2610      	movs	r6, #16
 80041fa:	4623      	mov	r3, r4
 80041fc:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004200:	460c      	mov	r4, r1
 8004202:	e005      	b.n	8004210 <_vfprintf_r+0x17a0>
 8004204:	f10b 0b08 	add.w	fp, fp, #8
 8004208:	3d10      	subs	r5, #16
 800420a:	2d10      	cmp	r5, #16
 800420c:	f340 8087 	ble.w	800431e <_vfprintf_r+0x18ae>
 8004210:	3201      	adds	r2, #1
 8004212:	3310      	adds	r3, #16
 8004214:	2a07      	cmp	r2, #7
 8004216:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800421a:	e9cb 4600 	strd	r4, r6, [fp]
 800421e:	ddf1      	ble.n	8004204 <_vfprintf_r+0x1794>
 8004220:	aa2a      	add	r2, sp, #168	; 0xa8
 8004222:	9907      	ldr	r1, [sp, #28]
 8004224:	4648      	mov	r0, r9
 8004226:	f002 ff51 	bl	80070cc <__sprint_r>
 800422a:	2800      	cmp	r0, #0
 800422c:	f47f a998 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8004230:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004234:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004238:	e7e6      	b.n	8004208 <_vfprintf_r+0x1798>
 800423a:	f109 0101 	add.w	r1, r9, #1
 800423e:	9803      	ldr	r0, [sp, #12]
 8004240:	f001 fe80 	bl	8005f44 <_malloc_r>
 8004244:	4607      	mov	r7, r0
 8004246:	2800      	cmp	r0, #0
 8004248:	f000 813b 	beq.w	80044c2 <_vfprintf_r+0x1a52>
 800424c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004250:	930e      	str	r3, [sp, #56]	; 0x38
 8004252:	f026 0320 	bic.w	r3, r6, #32
 8004256:	9304      	str	r3, [sp, #16]
 8004258:	46a0      	mov	r8, r4
 800425a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800425c:	900a      	str	r0, [sp, #40]	; 0x28
 800425e:	e547      	b.n	8003cf0 <_vfprintf_r+0x1280>
 8004260:	2667      	movs	r6, #103	; 0x67
 8004262:	981a      	ldr	r0, [sp, #104]	; 0x68
 8004264:	2200      	movs	r2, #0
 8004266:	920f      	str	r2, [sp, #60]	; 0x3c
 8004268:	9214      	str	r2, [sp, #80]	; 0x50
 800426a:	7803      	ldrb	r3, [r0, #0]
 800426c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800426e:	2bff      	cmp	r3, #255	; 0xff
 8004270:	d00c      	beq.n	800428c <_vfprintf_r+0x181c>
 8004272:	4293      	cmp	r3, r2
 8004274:	da0a      	bge.n	800428c <_vfprintf_r+0x181c>
 8004276:	7841      	ldrb	r1, [r0, #1]
 8004278:	1ad2      	subs	r2, r2, r3
 800427a:	b1a9      	cbz	r1, 80042a8 <_vfprintf_r+0x1838>
 800427c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800427e:	3301      	adds	r3, #1
 8004280:	9314      	str	r3, [sp, #80]	; 0x50
 8004282:	460b      	mov	r3, r1
 8004284:	2bff      	cmp	r3, #255	; 0xff
 8004286:	f100 0001 	add.w	r0, r0, #1
 800428a:	d1f2      	bne.n	8004272 <_vfprintf_r+0x1802>
 800428c:	9211      	str	r2, [sp, #68]	; 0x44
 800428e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004290:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004292:	9909      	ldr	r1, [sp, #36]	; 0x24
 8004294:	901a      	str	r0, [sp, #104]	; 0x68
 8004296:	4413      	add	r3, r2
 8004298:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 800429a:	fb02 1303 	mla	r3, r2, r3, r1
 800429e:	9309      	str	r3, [sp, #36]	; 0x24
 80042a0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80042a4:	9304      	str	r3, [sp, #16]
 80042a6:	e485      	b.n	8003bb4 <_vfprintf_r+0x1144>
 80042a8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80042aa:	3101      	adds	r1, #1
 80042ac:	910f      	str	r1, [sp, #60]	; 0x3c
 80042ae:	e7de      	b.n	800426e <_vfprintf_r+0x17fe>
 80042b0:	aa28      	add	r2, sp, #160	; 0xa0
 80042b2:	ab25      	add	r3, sp, #148	; 0x94
 80042b4:	e9cd 3200 	strd	r3, r2, [sp]
 80042b8:	2103      	movs	r1, #3
 80042ba:	ab24      	add	r3, sp, #144	; 0x90
 80042bc:	464a      	mov	r2, r9
 80042be:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80042c2:	9803      	ldr	r0, [sp, #12]
 80042c4:	f000 fa5c 	bl	8004780 <_dtoa_r>
 80042c8:	464d      	mov	r5, r9
 80042ca:	4607      	mov	r7, r0
 80042cc:	eb00 0409 	add.w	r4, r0, r9
 80042d0:	783b      	ldrb	r3, [r7, #0]
 80042d2:	2b30      	cmp	r3, #48	; 0x30
 80042d4:	f000 80be 	beq.w	8004454 <_vfprintf_r+0x19e4>
 80042d8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80042da:	442c      	add	r4, r5
 80042dc:	2200      	movs	r2, #0
 80042de:	2300      	movs	r3, #0
 80042e0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80042e4:	f7fc fe90 	bl	8001008 <__aeabi_dcmpeq>
 80042e8:	b108      	cbz	r0, 80042ee <_vfprintf_r+0x187e>
 80042ea:	4623      	mov	r3, r4
 80042ec:	e413      	b.n	8003b16 <_vfprintf_r+0x10a6>
 80042ee:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80042f0:	42a3      	cmp	r3, r4
 80042f2:	f4bf ac10 	bcs.w	8003b16 <_vfprintf_r+0x10a6>
 80042f6:	2130      	movs	r1, #48	; 0x30
 80042f8:	1c5a      	adds	r2, r3, #1
 80042fa:	9228      	str	r2, [sp, #160]	; 0xa0
 80042fc:	7019      	strb	r1, [r3, #0]
 80042fe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004300:	429c      	cmp	r4, r3
 8004302:	d8f9      	bhi.n	80042f8 <_vfprintf_r+0x1888>
 8004304:	e407      	b.n	8003b16 <_vfprintf_r+0x10a6>
 8004306:	197c      	adds	r4, r7, r5
 8004308:	e7e8      	b.n	80042dc <_vfprintf_r+0x186c>
 800430a:	f1b9 0f00 	cmp.w	r9, #0
 800430e:	f000 8092 	beq.w	8004436 <_vfprintf_r+0x19c6>
 8004312:	900a      	str	r0, [sp, #40]	; 0x28
 8004314:	e4ec      	b.n	8003cf0 <_vfprintf_r+0x1280>
 8004316:	900a      	str	r0, [sp, #40]	; 0x28
 8004318:	f04f 0906 	mov.w	r9, #6
 800431c:	e4e8      	b.n	8003cf0 <_vfprintf_r+0x1280>
 800431e:	4621      	mov	r1, r4
 8004320:	461c      	mov	r4, r3
 8004322:	460b      	mov	r3, r1
 8004324:	3201      	adds	r2, #1
 8004326:	442c      	add	r4, r5
 8004328:	2a07      	cmp	r2, #7
 800432a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800432e:	e9cb 3500 	strd	r3, r5, [fp]
 8004332:	f300 80a9 	bgt.w	8004488 <_vfprintf_r+0x1a18>
 8004336:	f10b 0b08 	add.w	fp, fp, #8
 800433a:	e470      	b.n	8003c1e <_vfprintf_r+0x11ae>
 800433c:	469a      	mov	sl, r3
 800433e:	f7ff bb37 	b.w	80039b0 <_vfprintf_r+0xf40>
 8004342:	2301      	movs	r3, #1
 8004344:	9324      	str	r3, [sp, #144]	; 0x90
 8004346:	4b65      	ldr	r3, [pc, #404]	; (80044dc <_vfprintf_r+0x1a6c>)
 8004348:	9309      	str	r3, [sp, #36]	; 0x24
 800434a:	e4f7      	b.n	8003d3c <_vfprintf_r+0x12cc>
 800434c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800434e:	4413      	add	r3, r2
 8004350:	444b      	add	r3, r9
 8004352:	9309      	str	r3, [sp, #36]	; 0x24
 8004354:	2666      	movs	r6, #102	; 0x66
 8004356:	e6fb      	b.n	8004150 <_vfprintf_r+0x16e0>
 8004358:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800435a:	9309      	str	r3, [sp, #36]	; 0x24
 800435c:	e694      	b.n	8004088 <_vfprintf_r+0x1618>
 800435e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8004362:	4664      	mov	r4, ip
 8004364:	4d5e      	ldr	r5, [pc, #376]	; (80044e0 <_vfprintf_r+0x1a70>)
 8004366:	e000      	b.n	800436a <_vfprintf_r+0x18fa>
 8004368:	4614      	mov	r4, r2
 800436a:	fba5 1203 	umull	r1, r2, r5, r3
 800436e:	08d2      	lsrs	r2, r2, #3
 8004370:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8004374:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004378:	f103 0130 	add.w	r1, r3, #48	; 0x30
 800437c:	4613      	mov	r3, r2
 800437e:	2b09      	cmp	r3, #9
 8004380:	f804 1c01 	strb.w	r1, [r4, #-1]
 8004384:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004388:	dcee      	bgt.n	8004368 <_vfprintf_r+0x18f8>
 800438a:	3330      	adds	r3, #48	; 0x30
 800438c:	3c02      	subs	r4, #2
 800438e:	b2db      	uxtb	r3, r3
 8004390:	45a4      	cmp	ip, r4
 8004392:	f802 3c01 	strb.w	r3, [r2, #-1]
 8004396:	f240 8090 	bls.w	80044ba <_vfprintf_r+0x1a4a>
 800439a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 800439e:	4611      	mov	r1, r2
 80043a0:	e001      	b.n	80043a6 <_vfprintf_r+0x1936>
 80043a2:	f811 3b01 	ldrb.w	r3, [r1], #1
 80043a6:	f804 3b01 	strb.w	r3, [r4], #1
 80043aa:	458c      	cmp	ip, r1
 80043ac:	d1f9      	bne.n	80043a2 <_vfprintf_r+0x1932>
 80043ae:	ab2a      	add	r3, sp, #168	; 0xa8
 80043b0:	1a9b      	subs	r3, r3, r2
 80043b2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80043b6:	4413      	add	r3, r2
 80043b8:	f7ff bbe3 	b.w	8003b82 <_vfprintf_r+0x1112>
 80043bc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80043be:	4f49      	ldr	r7, [pc, #292]	; (80044e4 <_vfprintf_r+0x1a74>)
 80043c0:	2b00      	cmp	r3, #0
 80043c2:	bfb6      	itet	lt
 80043c4:	222d      	movlt	r2, #45	; 0x2d
 80043c6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80043ca:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80043ce:	4b46      	ldr	r3, [pc, #280]	; (80044e8 <_vfprintf_r+0x1a78>)
 80043d0:	f7fe bf02 	b.w	80031d8 <_vfprintf_r+0x768>
 80043d4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80043d8:	f7ff b8c9 	b.w	800356e <_vfprintf_r+0xafe>
 80043dc:	aa28      	add	r2, sp, #160	; 0xa0
 80043de:	ab25      	add	r3, sp, #148	; 0x94
 80043e0:	e9cd 3200 	strd	r3, r2, [sp]
 80043e4:	2103      	movs	r1, #3
 80043e6:	ab24      	add	r3, sp, #144	; 0x90
 80043e8:	464a      	mov	r2, r9
 80043ea:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80043ee:	9803      	ldr	r0, [sp, #12]
 80043f0:	f000 f9c6 	bl	8004780 <_dtoa_r>
 80043f4:	464d      	mov	r5, r9
 80043f6:	4607      	mov	r7, r0
 80043f8:	2e46      	cmp	r6, #70	; 0x46
 80043fa:	eb07 0405 	add.w	r4, r7, r5
 80043fe:	f43f af67 	beq.w	80042d0 <_vfprintf_r+0x1860>
 8004402:	e76b      	b.n	80042dc <_vfprintf_r+0x186c>
 8004404:	f1b9 0f00 	cmp.w	r9, #0
 8004408:	d131      	bne.n	800446e <_vfprintf_r+0x19fe>
 800440a:	07c5      	lsls	r5, r0, #31
 800440c:	d42f      	bmi.n	800446e <_vfprintf_r+0x19fe>
 800440e:	2301      	movs	r3, #1
 8004410:	9304      	str	r3, [sp, #16]
 8004412:	9309      	str	r3, [sp, #36]	; 0x24
 8004414:	2666      	movs	r6, #102	; 0x66
 8004416:	e642      	b.n	800409e <_vfprintf_r+0x162e>
 8004418:	07c3      	lsls	r3, r0, #31
 800441a:	f57f abbf 	bpl.w	8003b9c <_vfprintf_r+0x112c>
 800441e:	f7ff bbb9 	b.w	8003b94 <_vfprintf_r+0x1124>
 8004422:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004424:	f1c3 0301 	rsb	r3, r3, #1
 8004428:	441a      	add	r2, r3
 800442a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800442e:	9209      	str	r2, [sp, #36]	; 0x24
 8004430:	9304      	str	r3, [sp, #16]
 8004432:	2667      	movs	r6, #103	; 0x67
 8004434:	e633      	b.n	800409e <_vfprintf_r+0x162e>
 8004436:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800443a:	f04f 0901 	mov.w	r9, #1
 800443e:	e457      	b.n	8003cf0 <_vfprintf_r+0x1280>
 8004440:	465a      	mov	r2, fp
 8004442:	e511      	b.n	8003e68 <_vfprintf_r+0x13f8>
 8004444:	2e47      	cmp	r6, #71	; 0x47
 8004446:	f47f af5e 	bne.w	8004306 <_vfprintf_r+0x1896>
 800444a:	f018 0f01 	tst.w	r8, #1
 800444e:	f43f ab61 	beq.w	8003b14 <_vfprintf_r+0x10a4>
 8004452:	e7d1      	b.n	80043f8 <_vfprintf_r+0x1988>
 8004454:	2200      	movs	r2, #0
 8004456:	2300      	movs	r3, #0
 8004458:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800445c:	f7fc fdd4 	bl	8001008 <__aeabi_dcmpeq>
 8004460:	2800      	cmp	r0, #0
 8004462:	f47f af39 	bne.w	80042d8 <_vfprintf_r+0x1868>
 8004466:	f1c5 0501 	rsb	r5, r5, #1
 800446a:	9524      	str	r5, [sp, #144]	; 0x90
 800446c:	e735      	b.n	80042da <_vfprintf_r+0x186a>
 800446e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004470:	3301      	adds	r3, #1
 8004472:	444b      	add	r3, r9
 8004474:	9309      	str	r3, [sp, #36]	; 0x24
 8004476:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800447a:	9304      	str	r3, [sp, #16]
 800447c:	2666      	movs	r6, #102	; 0x66
 800447e:	e60e      	b.n	800409e <_vfprintf_r+0x162e>
 8004480:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004484:	f7ff bb7a 	b.w	8003b7c <_vfprintf_r+0x110c>
 8004488:	aa2a      	add	r2, sp, #168	; 0xa8
 800448a:	9907      	ldr	r1, [sp, #28]
 800448c:	9803      	ldr	r0, [sp, #12]
 800448e:	f002 fe1d 	bl	80070cc <__sprint_r>
 8004492:	2800      	cmp	r0, #0
 8004494:	f47f a864 	bne.w	8003560 <_vfprintf_r+0xaf0>
 8004498:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800449c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80044a0:	f7ff bbbd 	b.w	8003c1e <_vfprintf_r+0x11ae>
 80044a4:	9908      	ldr	r1, [sp, #32]
 80044a6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80044aa:	680b      	ldr	r3, [r1, #0]
 80044ac:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80044b0:	1d0b      	adds	r3, r1, #4
 80044b2:	4692      	mov	sl, r2
 80044b4:	9308      	str	r3, [sp, #32]
 80044b6:	f7fe bb59 	b.w	8002b6c <_vfprintf_r+0xfc>
 80044ba:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80044be:	f7ff bb60 	b.w	8003b82 <_vfprintf_r+0x1112>
 80044c2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80044c6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80044ca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80044ce:	f8a9 300c 	strh.w	r3, [r9, #12]
 80044d2:	f7ff b84c 	b.w	800356e <_vfprintf_r+0xafe>
 80044d6:	bf00      	nop
 80044d8:	08007c44 	.word	0x08007c44
 80044dc:	08007c14 	.word	0x08007c14
 80044e0:	cccccccd 	.word	0xcccccccd
 80044e4:	08007bfc 	.word	0x08007bfc
 80044e8:	08007bf8 	.word	0x08007bf8

080044ec <__sbprintf>:
 80044ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80044f0:	460c      	mov	r4, r1
 80044f2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80044f6:	8989      	ldrh	r1, [r1, #12]
 80044f8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80044fa:	89e5      	ldrh	r5, [r4, #14]
 80044fc:	9619      	str	r6, [sp, #100]	; 0x64
 80044fe:	f021 0102 	bic.w	r1, r1, #2
 8004502:	4606      	mov	r6, r0
 8004504:	69e0      	ldr	r0, [r4, #28]
 8004506:	f8ad 100c 	strh.w	r1, [sp, #12]
 800450a:	4617      	mov	r7, r2
 800450c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004510:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8004512:	f8ad 500e 	strh.w	r5, [sp, #14]
 8004516:	4698      	mov	r8, r3
 8004518:	ad1a      	add	r5, sp, #104	; 0x68
 800451a:	2300      	movs	r3, #0
 800451c:	9007      	str	r0, [sp, #28]
 800451e:	a816      	add	r0, sp, #88	; 0x58
 8004520:	9209      	str	r2, [sp, #36]	; 0x24
 8004522:	9306      	str	r3, [sp, #24]
 8004524:	9500      	str	r5, [sp, #0]
 8004526:	9504      	str	r5, [sp, #16]
 8004528:	9102      	str	r1, [sp, #8]
 800452a:	9105      	str	r1, [sp, #20]
 800452c:	f001 fc8a 	bl	8005e44 <__retarget_lock_init_recursive>
 8004530:	4643      	mov	r3, r8
 8004532:	463a      	mov	r2, r7
 8004534:	4669      	mov	r1, sp
 8004536:	4630      	mov	r0, r6
 8004538:	f7fe fa9a 	bl	8002a70 <_vfprintf_r>
 800453c:	1e05      	subs	r5, r0, #0
 800453e:	db07      	blt.n	8004550 <__sbprintf+0x64>
 8004540:	4630      	mov	r0, r6
 8004542:	4669      	mov	r1, sp
 8004544:	f001 f8d6 	bl	80056f4 <_fflush_r>
 8004548:	2800      	cmp	r0, #0
 800454a:	bf18      	it	ne
 800454c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004550:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004554:	065b      	lsls	r3, r3, #25
 8004556:	d503      	bpl.n	8004560 <__sbprintf+0x74>
 8004558:	89a3      	ldrh	r3, [r4, #12]
 800455a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800455e:	81a3      	strh	r3, [r4, #12]
 8004560:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004562:	f001 fc71 	bl	8005e48 <__retarget_lock_close_recursive>
 8004566:	4628      	mov	r0, r5
 8004568:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800456c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004570 <__swsetup_r>:
 8004570:	b538      	push	{r3, r4, r5, lr}
 8004572:	4b31      	ldr	r3, [pc, #196]	; (8004638 <__swsetup_r+0xc8>)
 8004574:	681b      	ldr	r3, [r3, #0]
 8004576:	4605      	mov	r5, r0
 8004578:	460c      	mov	r4, r1
 800457a:	b113      	cbz	r3, 8004582 <__swsetup_r+0x12>
 800457c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800457e:	2a00      	cmp	r2, #0
 8004580:	d03a      	beq.n	80045f8 <__swsetup_r+0x88>
 8004582:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004586:	b293      	uxth	r3, r2
 8004588:	0718      	lsls	r0, r3, #28
 800458a:	d50c      	bpl.n	80045a6 <__swsetup_r+0x36>
 800458c:	6920      	ldr	r0, [r4, #16]
 800458e:	b1a8      	cbz	r0, 80045bc <__swsetup_r+0x4c>
 8004590:	f013 0201 	ands.w	r2, r3, #1
 8004594:	d020      	beq.n	80045d8 <__swsetup_r+0x68>
 8004596:	6963      	ldr	r3, [r4, #20]
 8004598:	2200      	movs	r2, #0
 800459a:	425b      	negs	r3, r3
 800459c:	61a3      	str	r3, [r4, #24]
 800459e:	60a2      	str	r2, [r4, #8]
 80045a0:	b300      	cbz	r0, 80045e4 <__swsetup_r+0x74>
 80045a2:	2000      	movs	r0, #0
 80045a4:	bd38      	pop	{r3, r4, r5, pc}
 80045a6:	06d9      	lsls	r1, r3, #27
 80045a8:	d53e      	bpl.n	8004628 <__swsetup_r+0xb8>
 80045aa:	0758      	lsls	r0, r3, #29
 80045ac:	d428      	bmi.n	8004600 <__swsetup_r+0x90>
 80045ae:	6920      	ldr	r0, [r4, #16]
 80045b0:	f042 0308 	orr.w	r3, r2, #8
 80045b4:	81a3      	strh	r3, [r4, #12]
 80045b6:	b29b      	uxth	r3, r3
 80045b8:	2800      	cmp	r0, #0
 80045ba:	d1e9      	bne.n	8004590 <__swsetup_r+0x20>
 80045bc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80045c0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80045c4:	d0e4      	beq.n	8004590 <__swsetup_r+0x20>
 80045c6:	4628      	mov	r0, r5
 80045c8:	4621      	mov	r1, r4
 80045ca:	f001 fc71 	bl	8005eb0 <__smakebuf_r>
 80045ce:	89a3      	ldrh	r3, [r4, #12]
 80045d0:	6920      	ldr	r0, [r4, #16]
 80045d2:	f013 0201 	ands.w	r2, r3, #1
 80045d6:	d1de      	bne.n	8004596 <__swsetup_r+0x26>
 80045d8:	0799      	lsls	r1, r3, #30
 80045da:	bf58      	it	pl
 80045dc:	6962      	ldrpl	r2, [r4, #20]
 80045de:	60a2      	str	r2, [r4, #8]
 80045e0:	2800      	cmp	r0, #0
 80045e2:	d1de      	bne.n	80045a2 <__swsetup_r+0x32>
 80045e4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80045e8:	061a      	lsls	r2, r3, #24
 80045ea:	d5db      	bpl.n	80045a4 <__swsetup_r+0x34>
 80045ec:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80045f0:	81a3      	strh	r3, [r4, #12]
 80045f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80045f6:	bd38      	pop	{r3, r4, r5, pc}
 80045f8:	4618      	mov	r0, r3
 80045fa:	f001 f8d7 	bl	80057ac <__sinit>
 80045fe:	e7c0      	b.n	8004582 <__swsetup_r+0x12>
 8004600:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004602:	b151      	cbz	r1, 800461a <__swsetup_r+0xaa>
 8004604:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004608:	4299      	cmp	r1, r3
 800460a:	d004      	beq.n	8004616 <__swsetup_r+0xa6>
 800460c:	4628      	mov	r0, r5
 800460e:	f001 f96f 	bl	80058f0 <_free_r>
 8004612:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004616:	2300      	movs	r3, #0
 8004618:	6323      	str	r3, [r4, #48]	; 0x30
 800461a:	2300      	movs	r3, #0
 800461c:	6920      	ldr	r0, [r4, #16]
 800461e:	6063      	str	r3, [r4, #4]
 8004620:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004624:	6020      	str	r0, [r4, #0]
 8004626:	e7c3      	b.n	80045b0 <__swsetup_r+0x40>
 8004628:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800462c:	2309      	movs	r3, #9
 800462e:	602b      	str	r3, [r5, #0]
 8004630:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004634:	81a2      	strh	r2, [r4, #12]
 8004636:	bd38      	pop	{r3, r4, r5, pc}
 8004638:	2000001c 	.word	0x2000001c

0800463c <register_fini>:
 800463c:	4b02      	ldr	r3, [pc, #8]	; (8004648 <register_fini+0xc>)
 800463e:	b113      	cbz	r3, 8004646 <register_fini+0xa>
 8004640:	4802      	ldr	r0, [pc, #8]	; (800464c <register_fini+0x10>)
 8004642:	f000 b805 	b.w	8004650 <atexit>
 8004646:	4770      	bx	lr
 8004648:	00000000 	.word	0x00000000
 800464c:	0800581d 	.word	0x0800581d

08004650 <atexit>:
 8004650:	2300      	movs	r3, #0
 8004652:	4601      	mov	r1, r0
 8004654:	461a      	mov	r2, r3
 8004656:	4618      	mov	r0, r3
 8004658:	f002 bd58 	b.w	800710c <__register_exitproc>

0800465c <quorem>:
 800465c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004660:	6903      	ldr	r3, [r0, #16]
 8004662:	690f      	ldr	r7, [r1, #16]
 8004664:	42bb      	cmp	r3, r7
 8004666:	b083      	sub	sp, #12
 8004668:	f2c0 8086 	blt.w	8004778 <quorem+0x11c>
 800466c:	3f01      	subs	r7, #1
 800466e:	f101 0914 	add.w	r9, r1, #20
 8004672:	f100 0a14 	add.w	sl, r0, #20
 8004676:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800467a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800467e:	00bc      	lsls	r4, r7, #2
 8004680:	3201      	adds	r2, #1
 8004682:	fbb3 f8f2 	udiv	r8, r3, r2
 8004686:	eb0a 0304 	add.w	r3, sl, r4
 800468a:	9400      	str	r4, [sp, #0]
 800468c:	eb09 0b04 	add.w	fp, r9, r4
 8004690:	9301      	str	r3, [sp, #4]
 8004692:	f1b8 0f00 	cmp.w	r8, #0
 8004696:	d038      	beq.n	800470a <quorem+0xae>
 8004698:	2500      	movs	r5, #0
 800469a:	462e      	mov	r6, r5
 800469c:	46ce      	mov	lr, r9
 800469e:	46d4      	mov	ip, sl
 80046a0:	f85e 4b04 	ldr.w	r4, [lr], #4
 80046a4:	f8dc 3000 	ldr.w	r3, [ip]
 80046a8:	b2a2      	uxth	r2, r4
 80046aa:	fb08 5502 	mla	r5, r8, r2, r5
 80046ae:	0c22      	lsrs	r2, r4, #16
 80046b0:	0c2c      	lsrs	r4, r5, #16
 80046b2:	fb08 4202 	mla	r2, r8, r2, r4
 80046b6:	b2ad      	uxth	r5, r5
 80046b8:	1b75      	subs	r5, r6, r5
 80046ba:	b296      	uxth	r6, r2
 80046bc:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80046c0:	fa15 f383 	uxtah	r3, r5, r3
 80046c4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80046c8:	b29b      	uxth	r3, r3
 80046ca:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80046ce:	45f3      	cmp	fp, lr
 80046d0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80046d4:	f84c 3b04 	str.w	r3, [ip], #4
 80046d8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80046dc:	d2e0      	bcs.n	80046a0 <quorem+0x44>
 80046de:	9b00      	ldr	r3, [sp, #0]
 80046e0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80046e4:	b98b      	cbnz	r3, 800470a <quorem+0xae>
 80046e6:	9a01      	ldr	r2, [sp, #4]
 80046e8:	1f13      	subs	r3, r2, #4
 80046ea:	459a      	cmp	sl, r3
 80046ec:	d20c      	bcs.n	8004708 <quorem+0xac>
 80046ee:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80046f2:	b94b      	cbnz	r3, 8004708 <quorem+0xac>
 80046f4:	f1a2 0308 	sub.w	r3, r2, #8
 80046f8:	e002      	b.n	8004700 <quorem+0xa4>
 80046fa:	681a      	ldr	r2, [r3, #0]
 80046fc:	3b04      	subs	r3, #4
 80046fe:	b91a      	cbnz	r2, 8004708 <quorem+0xac>
 8004700:	459a      	cmp	sl, r3
 8004702:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004706:	d3f8      	bcc.n	80046fa <quorem+0x9e>
 8004708:	6107      	str	r7, [r0, #16]
 800470a:	4604      	mov	r4, r0
 800470c:	f002 f944 	bl	8006998 <__mcmp>
 8004710:	2800      	cmp	r0, #0
 8004712:	db2d      	blt.n	8004770 <quorem+0x114>
 8004714:	f108 0801 	add.w	r8, r8, #1
 8004718:	4655      	mov	r5, sl
 800471a:	2300      	movs	r3, #0
 800471c:	f859 1b04 	ldr.w	r1, [r9], #4
 8004720:	6828      	ldr	r0, [r5, #0]
 8004722:	b28a      	uxth	r2, r1
 8004724:	1a9a      	subs	r2, r3, r2
 8004726:	0c0b      	lsrs	r3, r1, #16
 8004728:	fa12 f280 	uxtah	r2, r2, r0
 800472c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004730:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004734:	b292      	uxth	r2, r2
 8004736:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800473a:	45cb      	cmp	fp, r9
 800473c:	f845 2b04 	str.w	r2, [r5], #4
 8004740:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004744:	d2ea      	bcs.n	800471c <quorem+0xc0>
 8004746:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800474a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800474e:	b97a      	cbnz	r2, 8004770 <quorem+0x114>
 8004750:	1f1a      	subs	r2, r3, #4
 8004752:	4592      	cmp	sl, r2
 8004754:	d20b      	bcs.n	800476e <quorem+0x112>
 8004756:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800475a:	b942      	cbnz	r2, 800476e <quorem+0x112>
 800475c:	3b08      	subs	r3, #8
 800475e:	e002      	b.n	8004766 <quorem+0x10a>
 8004760:	681a      	ldr	r2, [r3, #0]
 8004762:	3b04      	subs	r3, #4
 8004764:	b91a      	cbnz	r2, 800476e <quorem+0x112>
 8004766:	459a      	cmp	sl, r3
 8004768:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800476c:	d3f8      	bcc.n	8004760 <quorem+0x104>
 800476e:	6127      	str	r7, [r4, #16]
 8004770:	4640      	mov	r0, r8
 8004772:	b003      	add	sp, #12
 8004774:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004778:	2000      	movs	r0, #0
 800477a:	b003      	add	sp, #12
 800477c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004780 <_dtoa_r>:
 8004780:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004784:	ec55 4b10 	vmov	r4, r5, d0
 8004788:	b09b      	sub	sp, #108	; 0x6c
 800478a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800478c:	9102      	str	r1, [sp, #8]
 800478e:	4681      	mov	r9, r0
 8004790:	9207      	str	r2, [sp, #28]
 8004792:	9305      	str	r3, [sp, #20]
 8004794:	e9cd 4500 	strd	r4, r5, [sp]
 8004798:	b156      	cbz	r6, 80047b0 <_dtoa_r+0x30>
 800479a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800479c:	6072      	str	r2, [r6, #4]
 800479e:	2301      	movs	r3, #1
 80047a0:	4093      	lsls	r3, r2
 80047a2:	60b3      	str	r3, [r6, #8]
 80047a4:	4631      	mov	r1, r6
 80047a6:	f001 ff07 	bl	80065b8 <_Bfree>
 80047aa:	2300      	movs	r3, #0
 80047ac:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80047b0:	f1b5 0800 	subs.w	r8, r5, #0
 80047b4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80047b6:	bfb4      	ite	lt
 80047b8:	2301      	movlt	r3, #1
 80047ba:	2300      	movge	r3, #0
 80047bc:	6013      	str	r3, [r2, #0]
 80047be:	4b76      	ldr	r3, [pc, #472]	; (8004998 <_dtoa_r+0x218>)
 80047c0:	bfbc      	itt	lt
 80047c2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80047c6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80047ca:	ea33 0308 	bics.w	r3, r3, r8
 80047ce:	f000 80a6 	beq.w	800491e <_dtoa_r+0x19e>
 80047d2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80047d6:	2200      	movs	r2, #0
 80047d8:	2300      	movs	r3, #0
 80047da:	4630      	mov	r0, r6
 80047dc:	4639      	mov	r1, r7
 80047de:	f7fc fc13 	bl	8001008 <__aeabi_dcmpeq>
 80047e2:	4605      	mov	r5, r0
 80047e4:	b178      	cbz	r0, 8004806 <_dtoa_r+0x86>
 80047e6:	9a05      	ldr	r2, [sp, #20]
 80047e8:	2301      	movs	r3, #1
 80047ea:	6013      	str	r3, [r2, #0]
 80047ec:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80047ee:	2b00      	cmp	r3, #0
 80047f0:	f000 80c0 	beq.w	8004974 <_dtoa_r+0x1f4>
 80047f4:	4b69      	ldr	r3, [pc, #420]	; (800499c <_dtoa_r+0x21c>)
 80047f6:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80047f8:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80047fc:	6013      	str	r3, [r2, #0]
 80047fe:	4658      	mov	r0, fp
 8004800:	b01b      	add	sp, #108	; 0x6c
 8004802:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004806:	aa18      	add	r2, sp, #96	; 0x60
 8004808:	a919      	add	r1, sp, #100	; 0x64
 800480a:	ec47 6b10 	vmov	d0, r6, r7
 800480e:	4648      	mov	r0, r9
 8004810:	f002 f954 	bl	8006abc <__d2b>
 8004814:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004818:	4682      	mov	sl, r0
 800481a:	f040 80a0 	bne.w	800495e <_dtoa_r+0x1de>
 800481e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004822:	442c      	add	r4, r5
 8004824:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004828:	2b20      	cmp	r3, #32
 800482a:	f340 842c 	ble.w	8005086 <_dtoa_r+0x906>
 800482e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004832:	fa08 f803 	lsl.w	r8, r8, r3
 8004836:	9b00      	ldr	r3, [sp, #0]
 8004838:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800483c:	fa23 f000 	lsr.w	r0, r3, r0
 8004840:	ea48 0000 	orr.w	r0, r8, r0
 8004844:	f7fc f8fe 	bl	8000a44 <__aeabi_ui2d>
 8004848:	2301      	movs	r3, #1
 800484a:	4606      	mov	r6, r0
 800484c:	3c01      	subs	r4, #1
 800484e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004852:	930f      	str	r3, [sp, #60]	; 0x3c
 8004854:	4630      	mov	r0, r6
 8004856:	4639      	mov	r1, r7
 8004858:	2200      	movs	r2, #0
 800485a:	4b51      	ldr	r3, [pc, #324]	; (80049a0 <_dtoa_r+0x220>)
 800485c:	f7fb ffb4 	bl	80007c8 <__aeabi_dsub>
 8004860:	a347      	add	r3, pc, #284	; (adr r3, 8004980 <_dtoa_r+0x200>)
 8004862:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004866:	f7fc f967 	bl	8000b38 <__aeabi_dmul>
 800486a:	a347      	add	r3, pc, #284	; (adr r3, 8004988 <_dtoa_r+0x208>)
 800486c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004870:	f7fb ffac 	bl	80007cc <__adddf3>
 8004874:	4606      	mov	r6, r0
 8004876:	4620      	mov	r0, r4
 8004878:	460f      	mov	r7, r1
 800487a:	f7fc f8f3 	bl	8000a64 <__aeabi_i2d>
 800487e:	a344      	add	r3, pc, #272	; (adr r3, 8004990 <_dtoa_r+0x210>)
 8004880:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004884:	f7fc f958 	bl	8000b38 <__aeabi_dmul>
 8004888:	4602      	mov	r2, r0
 800488a:	460b      	mov	r3, r1
 800488c:	4630      	mov	r0, r6
 800488e:	4639      	mov	r1, r7
 8004890:	f7fb ff9c 	bl	80007cc <__adddf3>
 8004894:	4606      	mov	r6, r0
 8004896:	460f      	mov	r7, r1
 8004898:	f7fc fbfe 	bl	8001098 <__aeabi_d2iz>
 800489c:	2200      	movs	r2, #0
 800489e:	9006      	str	r0, [sp, #24]
 80048a0:	2300      	movs	r3, #0
 80048a2:	4630      	mov	r0, r6
 80048a4:	4639      	mov	r1, r7
 80048a6:	f7fc fbb9 	bl	800101c <__aeabi_dcmplt>
 80048aa:	2800      	cmp	r0, #0
 80048ac:	f040 8273 	bne.w	8004d96 <_dtoa_r+0x616>
 80048b0:	9e06      	ldr	r6, [sp, #24]
 80048b2:	2e16      	cmp	r6, #22
 80048b4:	f200 825d 	bhi.w	8004d72 <_dtoa_r+0x5f2>
 80048b8:	4b3a      	ldr	r3, [pc, #232]	; (80049a4 <_dtoa_r+0x224>)
 80048ba:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80048be:	e9d3 0100 	ldrd	r0, r1, [r3]
 80048c2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80048c6:	f7fc fbc7 	bl	8001058 <__aeabi_dcmpgt>
 80048ca:	2800      	cmp	r0, #0
 80048cc:	f000 83d7 	beq.w	800507e <_dtoa_r+0x8fe>
 80048d0:	1e73      	subs	r3, r6, #1
 80048d2:	9306      	str	r3, [sp, #24]
 80048d4:	2300      	movs	r3, #0
 80048d6:	930d      	str	r3, [sp, #52]	; 0x34
 80048d8:	1b2c      	subs	r4, r5, r4
 80048da:	f1b4 0801 	subs.w	r8, r4, #1
 80048de:	f100 8254 	bmi.w	8004d8a <_dtoa_r+0x60a>
 80048e2:	2300      	movs	r3, #0
 80048e4:	9308      	str	r3, [sp, #32]
 80048e6:	9b06      	ldr	r3, [sp, #24]
 80048e8:	2b00      	cmp	r3, #0
 80048ea:	f2c0 8245 	blt.w	8004d78 <_dtoa_r+0x5f8>
 80048ee:	4498      	add	r8, r3
 80048f0:	930c      	str	r3, [sp, #48]	; 0x30
 80048f2:	2300      	movs	r3, #0
 80048f4:	930b      	str	r3, [sp, #44]	; 0x2c
 80048f6:	9b02      	ldr	r3, [sp, #8]
 80048f8:	2b09      	cmp	r3, #9
 80048fa:	d85b      	bhi.n	80049b4 <_dtoa_r+0x234>
 80048fc:	2b05      	cmp	r3, #5
 80048fe:	f340 83c0 	ble.w	8005082 <_dtoa_r+0x902>
 8004902:	3b04      	subs	r3, #4
 8004904:	9302      	str	r3, [sp, #8]
 8004906:	2500      	movs	r5, #0
 8004908:	9b02      	ldr	r3, [sp, #8]
 800490a:	3b02      	subs	r3, #2
 800490c:	2b03      	cmp	r3, #3
 800490e:	f200 8498 	bhi.w	8005242 <_dtoa_r+0xac2>
 8004912:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004916:	03df      	.short	0x03df
 8004918:	03e803bf 	.word	0x03e803bf
 800491c:	04f5      	.short	0x04f5
 800491e:	9a05      	ldr	r2, [sp, #20]
 8004920:	f242 730f 	movw	r3, #9999	; 0x270f
 8004924:	6013      	str	r3, [r2, #0]
 8004926:	9b00      	ldr	r3, [sp, #0]
 8004928:	b983      	cbnz	r3, 800494c <_dtoa_r+0x1cc>
 800492a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800492e:	b96b      	cbnz	r3, 800494c <_dtoa_r+0x1cc>
 8004930:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004932:	f8df b074 	ldr.w	fp, [pc, #116]	; 80049a8 <_dtoa_r+0x228>
 8004936:	2b00      	cmp	r3, #0
 8004938:	f43f af61 	beq.w	80047fe <_dtoa_r+0x7e>
 800493c:	f10b 0308 	add.w	r3, fp, #8
 8004940:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004942:	4658      	mov	r0, fp
 8004944:	6013      	str	r3, [r2, #0]
 8004946:	b01b      	add	sp, #108	; 0x6c
 8004948:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800494c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800494e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80049ac <_dtoa_r+0x22c>
 8004952:	2b00      	cmp	r3, #0
 8004954:	f43f af53 	beq.w	80047fe <_dtoa_r+0x7e>
 8004958:	f10b 0303 	add.w	r3, fp, #3
 800495c:	e7f0      	b.n	8004940 <_dtoa_r+0x1c0>
 800495e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004962:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004966:	950f      	str	r5, [sp, #60]	; 0x3c
 8004968:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800496c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004970:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004972:	e76f      	b.n	8004854 <_dtoa_r+0xd4>
 8004974:	f8df b038 	ldr.w	fp, [pc, #56]	; 80049b0 <_dtoa_r+0x230>
 8004978:	4658      	mov	r0, fp
 800497a:	b01b      	add	sp, #108	; 0x6c
 800497c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004980:	636f4361 	.word	0x636f4361
 8004984:	3fd287a7 	.word	0x3fd287a7
 8004988:	8b60c8b3 	.word	0x8b60c8b3
 800498c:	3fc68a28 	.word	0x3fc68a28
 8004990:	509f79fb 	.word	0x509f79fb
 8004994:	3fd34413 	.word	0x3fd34413
 8004998:	7ff00000 	.word	0x7ff00000
 800499c:	08007c31 	.word	0x08007c31
 80049a0:	3ff80000 	.word	0x3ff80000
 80049a4:	08007c90 	.word	0x08007c90
 80049a8:	08007c54 	.word	0x08007c54
 80049ac:	08007c60 	.word	0x08007c60
 80049b0:	08007c30 	.word	0x08007c30
 80049b4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80049b8:	2501      	movs	r5, #1
 80049ba:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80049be:	2300      	movs	r3, #0
 80049c0:	9302      	str	r3, [sp, #8]
 80049c2:	9307      	str	r3, [sp, #28]
 80049c4:	2100      	movs	r1, #0
 80049c6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80049ca:	940e      	str	r4, [sp, #56]	; 0x38
 80049cc:	4648      	mov	r0, r9
 80049ce:	f001 fdcd 	bl	800656c <_Balloc>
 80049d2:	2c0e      	cmp	r4, #14
 80049d4:	4683      	mov	fp, r0
 80049d6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80049da:	f200 80fb 	bhi.w	8004bd4 <_dtoa_r+0x454>
 80049de:	2d00      	cmp	r5, #0
 80049e0:	f000 80f8 	beq.w	8004bd4 <_dtoa_r+0x454>
 80049e4:	ed9d 7b00 	vldr	d7, [sp]
 80049e8:	9906      	ldr	r1, [sp, #24]
 80049ea:	2900      	cmp	r1, #0
 80049ec:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80049f0:	f340 83e5 	ble.w	80051be <_dtoa_r+0xa3e>
 80049f4:	4b9d      	ldr	r3, [pc, #628]	; (8004c6c <_dtoa_r+0x4ec>)
 80049f6:	f001 020f 	and.w	r2, r1, #15
 80049fa:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80049fe:	ed93 7b00 	vldr	d7, [r3]
 8004a02:	110c      	asrs	r4, r1, #4
 8004a04:	06e2      	lsls	r2, r4, #27
 8004a06:	ed8d 7b00 	vstr	d7, [sp]
 8004a0a:	f140 849e 	bpl.w	800534a <_dtoa_r+0xbca>
 8004a0e:	4b98      	ldr	r3, [pc, #608]	; (8004c70 <_dtoa_r+0x4f0>)
 8004a10:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004a14:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004a18:	f7fc f9b8 	bl	8000d8c <__aeabi_ddiv>
 8004a1c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004a20:	f004 040f 	and.w	r4, r4, #15
 8004a24:	2603      	movs	r6, #3
 8004a26:	b17c      	cbz	r4, 8004a48 <_dtoa_r+0x2c8>
 8004a28:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a2c:	4d90      	ldr	r5, [pc, #576]	; (8004c70 <_dtoa_r+0x4f0>)
 8004a2e:	07e3      	lsls	r3, r4, #31
 8004a30:	d504      	bpl.n	8004a3c <_dtoa_r+0x2bc>
 8004a32:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004a36:	f7fc f87f 	bl	8000b38 <__aeabi_dmul>
 8004a3a:	3601      	adds	r6, #1
 8004a3c:	1064      	asrs	r4, r4, #1
 8004a3e:	f105 0508 	add.w	r5, r5, #8
 8004a42:	d1f4      	bne.n	8004a2e <_dtoa_r+0x2ae>
 8004a44:	e9cd 0100 	strd	r0, r1, [sp]
 8004a48:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a4c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004a50:	f7fc f99c 	bl	8000d8c <__aeabi_ddiv>
 8004a54:	e9cd 0100 	strd	r0, r1, [sp]
 8004a58:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004a5a:	b143      	cbz	r3, 8004a6e <_dtoa_r+0x2ee>
 8004a5c:	2200      	movs	r2, #0
 8004a5e:	4b85      	ldr	r3, [pc, #532]	; (8004c74 <_dtoa_r+0x4f4>)
 8004a60:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a64:	f7fc fada 	bl	800101c <__aeabi_dcmplt>
 8004a68:	2800      	cmp	r0, #0
 8004a6a:	f040 84ff 	bne.w	800546c <_dtoa_r+0xcec>
 8004a6e:	4630      	mov	r0, r6
 8004a70:	f7fb fff8 	bl	8000a64 <__aeabi_i2d>
 8004a74:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a78:	f7fc f85e 	bl	8000b38 <__aeabi_dmul>
 8004a7c:	4b7e      	ldr	r3, [pc, #504]	; (8004c78 <_dtoa_r+0x4f8>)
 8004a7e:	2200      	movs	r2, #0
 8004a80:	f7fb fea4 	bl	80007cc <__adddf3>
 8004a84:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a86:	4606      	mov	r6, r0
 8004a88:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004a8c:	2b00      	cmp	r3, #0
 8004a8e:	f000 841c 	beq.w	80052ca <_dtoa_r+0xb4a>
 8004a92:	9b06      	ldr	r3, [sp, #24]
 8004a94:	9316      	str	r3, [sp, #88]	; 0x58
 8004a96:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a98:	9312      	str	r3, [sp, #72]	; 0x48
 8004a9a:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a9e:	f7fc fafb 	bl	8001098 <__aeabi_d2iz>
 8004aa2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004aa4:	4b71      	ldr	r3, [pc, #452]	; (8004c6c <_dtoa_r+0x4ec>)
 8004aa6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004aaa:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004aae:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004ab2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004ab6:	f7fb ffd5 	bl	8000a64 <__aeabi_i2d>
 8004aba:	460b      	mov	r3, r1
 8004abc:	4602      	mov	r2, r0
 8004abe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ac2:	e9cd 6700 	strd	r6, r7, [sp]
 8004ac6:	f7fb fe7f 	bl	80007c8 <__aeabi_dsub>
 8004aca:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004acc:	b2ed      	uxtb	r5, r5
 8004ace:	4606      	mov	r6, r0
 8004ad0:	460f      	mov	r7, r1
 8004ad2:	f10b 0401 	add.w	r4, fp, #1
 8004ad6:	2b00      	cmp	r3, #0
 8004ad8:	f000 8458 	beq.w	800538c <_dtoa_r+0xc0c>
 8004adc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004ae0:	2000      	movs	r0, #0
 8004ae2:	4966      	ldr	r1, [pc, #408]	; (8004c7c <_dtoa_r+0x4fc>)
 8004ae4:	f7fc f952 	bl	8000d8c <__aeabi_ddiv>
 8004ae8:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004aec:	f7fb fe6c 	bl	80007c8 <__aeabi_dsub>
 8004af0:	f88b 5000 	strb.w	r5, [fp]
 8004af4:	4632      	mov	r2, r6
 8004af6:	463b      	mov	r3, r7
 8004af8:	e9cd 0100 	strd	r0, r1, [sp]
 8004afc:	f7fc faac 	bl	8001058 <__aeabi_dcmpgt>
 8004b00:	2800      	cmp	r0, #0
 8004b02:	f040 8502 	bne.w	800550a <_dtoa_r+0xd8a>
 8004b06:	4632      	mov	r2, r6
 8004b08:	463b      	mov	r3, r7
 8004b0a:	2000      	movs	r0, #0
 8004b0c:	4959      	ldr	r1, [pc, #356]	; (8004c74 <_dtoa_r+0x4f4>)
 8004b0e:	f7fb fe5b 	bl	80007c8 <__aeabi_dsub>
 8004b12:	4602      	mov	r2, r0
 8004b14:	460b      	mov	r3, r1
 8004b16:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b1a:	f7fc fa9d 	bl	8001058 <__aeabi_dcmpgt>
 8004b1e:	2800      	cmp	r0, #0
 8004b20:	f040 84fb 	bne.w	800551a <_dtoa_r+0xd9a>
 8004b24:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004b26:	2a01      	cmp	r2, #1
 8004b28:	d050      	beq.n	8004bcc <_dtoa_r+0x44c>
 8004b2a:	445a      	add	r2, fp
 8004b2c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004b30:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004b34:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004b38:	4692      	mov	sl, r2
 8004b3a:	46cb      	mov	fp, r9
 8004b3c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004b40:	e00c      	b.n	8004b5c <_dtoa_r+0x3dc>
 8004b42:	2000      	movs	r0, #0
 8004b44:	494b      	ldr	r1, [pc, #300]	; (8004c74 <_dtoa_r+0x4f4>)
 8004b46:	f7fb fe3f 	bl	80007c8 <__aeabi_dsub>
 8004b4a:	4642      	mov	r2, r8
 8004b4c:	464b      	mov	r3, r9
 8004b4e:	f7fc fa65 	bl	800101c <__aeabi_dcmplt>
 8004b52:	2800      	cmp	r0, #0
 8004b54:	f040 84dc 	bne.w	8005510 <_dtoa_r+0xd90>
 8004b58:	4554      	cmp	r4, sl
 8004b5a:	d030      	beq.n	8004bbe <_dtoa_r+0x43e>
 8004b5c:	4640      	mov	r0, r8
 8004b5e:	4649      	mov	r1, r9
 8004b60:	2200      	movs	r2, #0
 8004b62:	4b47      	ldr	r3, [pc, #284]	; (8004c80 <_dtoa_r+0x500>)
 8004b64:	f7fb ffe8 	bl	8000b38 <__aeabi_dmul>
 8004b68:	2200      	movs	r2, #0
 8004b6a:	4b45      	ldr	r3, [pc, #276]	; (8004c80 <_dtoa_r+0x500>)
 8004b6c:	4680      	mov	r8, r0
 8004b6e:	4689      	mov	r9, r1
 8004b70:	4630      	mov	r0, r6
 8004b72:	4639      	mov	r1, r7
 8004b74:	f7fb ffe0 	bl	8000b38 <__aeabi_dmul>
 8004b78:	460f      	mov	r7, r1
 8004b7a:	4606      	mov	r6, r0
 8004b7c:	f7fc fa8c 	bl	8001098 <__aeabi_d2iz>
 8004b80:	4605      	mov	r5, r0
 8004b82:	f7fb ff6f 	bl	8000a64 <__aeabi_i2d>
 8004b86:	4602      	mov	r2, r0
 8004b88:	460b      	mov	r3, r1
 8004b8a:	4630      	mov	r0, r6
 8004b8c:	4639      	mov	r1, r7
 8004b8e:	f7fb fe1b 	bl	80007c8 <__aeabi_dsub>
 8004b92:	3530      	adds	r5, #48	; 0x30
 8004b94:	b2ed      	uxtb	r5, r5
 8004b96:	4642      	mov	r2, r8
 8004b98:	464b      	mov	r3, r9
 8004b9a:	f804 5b01 	strb.w	r5, [r4], #1
 8004b9e:	4606      	mov	r6, r0
 8004ba0:	460f      	mov	r7, r1
 8004ba2:	f7fc fa3b 	bl	800101c <__aeabi_dcmplt>
 8004ba6:	4632      	mov	r2, r6
 8004ba8:	463b      	mov	r3, r7
 8004baa:	2800      	cmp	r0, #0
 8004bac:	d0c9      	beq.n	8004b42 <_dtoa_r+0x3c2>
 8004bae:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004bb0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004bb4:	9306      	str	r3, [sp, #24]
 8004bb6:	46d9      	mov	r9, fp
 8004bb8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004bbc:	e236      	b.n	800502c <_dtoa_r+0x8ac>
 8004bbe:	46d9      	mov	r9, fp
 8004bc0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004bc4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004bc8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004bcc:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004bd0:	e9cd 3400 	strd	r3, r4, [sp]
 8004bd4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004bd6:	2b00      	cmp	r3, #0
 8004bd8:	f2c0 80ae 	blt.w	8004d38 <_dtoa_r+0x5b8>
 8004bdc:	9a06      	ldr	r2, [sp, #24]
 8004bde:	2a0e      	cmp	r2, #14
 8004be0:	f300 80aa 	bgt.w	8004d38 <_dtoa_r+0x5b8>
 8004be4:	4b21      	ldr	r3, [pc, #132]	; (8004c6c <_dtoa_r+0x4ec>)
 8004be6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004bea:	ed93 7b00 	vldr	d7, [r3]
 8004bee:	9b07      	ldr	r3, [sp, #28]
 8004bf0:	2b00      	cmp	r3, #0
 8004bf2:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004bf6:	f2c0 82be 	blt.w	8005176 <_dtoa_r+0x9f6>
 8004bfa:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004bfe:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004c02:	4630      	mov	r0, r6
 8004c04:	4639      	mov	r1, r7
 8004c06:	f7fc f8c1 	bl	8000d8c <__aeabi_ddiv>
 8004c0a:	f7fc fa45 	bl	8001098 <__aeabi_d2iz>
 8004c0e:	4605      	mov	r5, r0
 8004c10:	f7fb ff28 	bl	8000a64 <__aeabi_i2d>
 8004c14:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004c18:	f7fb ff8e 	bl	8000b38 <__aeabi_dmul>
 8004c1c:	460b      	mov	r3, r1
 8004c1e:	4602      	mov	r2, r0
 8004c20:	4639      	mov	r1, r7
 8004c22:	4630      	mov	r0, r6
 8004c24:	f7fb fdd0 	bl	80007c8 <__aeabi_dsub>
 8004c28:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004c2c:	f88b 3000 	strb.w	r3, [fp]
 8004c30:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c32:	2b01      	cmp	r3, #1
 8004c34:	4606      	mov	r6, r0
 8004c36:	460f      	mov	r7, r1
 8004c38:	f10b 0401 	add.w	r4, fp, #1
 8004c3c:	d053      	beq.n	8004ce6 <_dtoa_r+0x566>
 8004c3e:	2200      	movs	r2, #0
 8004c40:	4b0f      	ldr	r3, [pc, #60]	; (8004c80 <_dtoa_r+0x500>)
 8004c42:	f7fb ff79 	bl	8000b38 <__aeabi_dmul>
 8004c46:	2200      	movs	r2, #0
 8004c48:	2300      	movs	r3, #0
 8004c4a:	4606      	mov	r6, r0
 8004c4c:	460f      	mov	r7, r1
 8004c4e:	f7fc f9db 	bl	8001008 <__aeabi_dcmpeq>
 8004c52:	2800      	cmp	r0, #0
 8004c54:	f040 81ea 	bne.w	800502c <_dtoa_r+0x8ac>
 8004c58:	f8cd a000 	str.w	sl, [sp]
 8004c5c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004c60:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004c64:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004c68:	e017      	b.n	8004c9a <_dtoa_r+0x51a>
 8004c6a:	bf00      	nop
 8004c6c:	08007c90 	.word	0x08007c90
 8004c70:	08007c68 	.word	0x08007c68
 8004c74:	3ff00000 	.word	0x3ff00000
 8004c78:	401c0000 	.word	0x401c0000
 8004c7c:	3fe00000 	.word	0x3fe00000
 8004c80:	40240000 	.word	0x40240000
 8004c84:	f7fb ff58 	bl	8000b38 <__aeabi_dmul>
 8004c88:	2200      	movs	r2, #0
 8004c8a:	2300      	movs	r3, #0
 8004c8c:	4606      	mov	r6, r0
 8004c8e:	460f      	mov	r7, r1
 8004c90:	f7fc f9ba 	bl	8001008 <__aeabi_dcmpeq>
 8004c94:	2800      	cmp	r0, #0
 8004c96:	f040 833d 	bne.w	8005314 <_dtoa_r+0xb94>
 8004c9a:	464a      	mov	r2, r9
 8004c9c:	4653      	mov	r3, sl
 8004c9e:	4630      	mov	r0, r6
 8004ca0:	4639      	mov	r1, r7
 8004ca2:	f7fc f873 	bl	8000d8c <__aeabi_ddiv>
 8004ca6:	f7fc f9f7 	bl	8001098 <__aeabi_d2iz>
 8004caa:	4605      	mov	r5, r0
 8004cac:	f7fb feda 	bl	8000a64 <__aeabi_i2d>
 8004cb0:	464a      	mov	r2, r9
 8004cb2:	4653      	mov	r3, sl
 8004cb4:	f7fb ff40 	bl	8000b38 <__aeabi_dmul>
 8004cb8:	4602      	mov	r2, r0
 8004cba:	460b      	mov	r3, r1
 8004cbc:	4630      	mov	r0, r6
 8004cbe:	4639      	mov	r1, r7
 8004cc0:	f7fb fd82 	bl	80007c8 <__aeabi_dsub>
 8004cc4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004cc8:	f804 cb01 	strb.w	ip, [r4], #1
 8004ccc:	eba4 0c0b 	sub.w	ip, r4, fp
 8004cd0:	45e0      	cmp	r8, ip
 8004cd2:	4606      	mov	r6, r0
 8004cd4:	460f      	mov	r7, r1
 8004cd6:	f04f 0200 	mov.w	r2, #0
 8004cda:	4bc1      	ldr	r3, [pc, #772]	; (8004fe0 <_dtoa_r+0x860>)
 8004cdc:	d1d2      	bne.n	8004c84 <_dtoa_r+0x504>
 8004cde:	f8dd a000 	ldr.w	sl, [sp]
 8004ce2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004ce6:	4632      	mov	r2, r6
 8004ce8:	463b      	mov	r3, r7
 8004cea:	4630      	mov	r0, r6
 8004cec:	4639      	mov	r1, r7
 8004cee:	f7fb fd6d 	bl	80007cc <__adddf3>
 8004cf2:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004cf6:	4606      	mov	r6, r0
 8004cf8:	460f      	mov	r7, r1
 8004cfa:	f7fc f9ad 	bl	8001058 <__aeabi_dcmpgt>
 8004cfe:	b958      	cbnz	r0, 8004d18 <_dtoa_r+0x598>
 8004d00:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004d04:	4630      	mov	r0, r6
 8004d06:	4639      	mov	r1, r7
 8004d08:	f7fc f97e 	bl	8001008 <__aeabi_dcmpeq>
 8004d0c:	2800      	cmp	r0, #0
 8004d0e:	f000 818d 	beq.w	800502c <_dtoa_r+0x8ac>
 8004d12:	07e9      	lsls	r1, r5, #31
 8004d14:	f140 818a 	bpl.w	800502c <_dtoa_r+0x8ac>
 8004d18:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004d1c:	e005      	b.n	8004d2a <_dtoa_r+0x5aa>
 8004d1e:	459b      	cmp	fp, r3
 8004d20:	f000 8373 	beq.w	800540a <_dtoa_r+0xc8a>
 8004d24:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004d28:	461c      	mov	r4, r3
 8004d2a:	2d39      	cmp	r5, #57	; 0x39
 8004d2c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004d30:	d0f5      	beq.n	8004d1e <_dtoa_r+0x59e>
 8004d32:	3501      	adds	r5, #1
 8004d34:	701d      	strb	r5, [r3, #0]
 8004d36:	e179      	b.n	800502c <_dtoa_r+0x8ac>
 8004d38:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004d3a:	2a00      	cmp	r2, #0
 8004d3c:	d03b      	beq.n	8004db6 <_dtoa_r+0x636>
 8004d3e:	9a02      	ldr	r2, [sp, #8]
 8004d40:	2a01      	cmp	r2, #1
 8004d42:	f340 820b 	ble.w	800515c <_dtoa_r+0x9dc>
 8004d46:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d48:	1e5f      	subs	r7, r3, #1
 8004d4a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d4c:	42bb      	cmp	r3, r7
 8004d4e:	f2c0 82e6 	blt.w	800531e <_dtoa_r+0xb9e>
 8004d52:	1bdf      	subs	r7, r3, r7
 8004d54:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d56:	2b00      	cmp	r3, #0
 8004d58:	f2c0 830b 	blt.w	8005372 <_dtoa_r+0xbf2>
 8004d5c:	9a08      	ldr	r2, [sp, #32]
 8004d5e:	4614      	mov	r4, r2
 8004d60:	441a      	add	r2, r3
 8004d62:	4498      	add	r8, r3
 8004d64:	9208      	str	r2, [sp, #32]
 8004d66:	2101      	movs	r1, #1
 8004d68:	4648      	mov	r0, r9
 8004d6a:	f001 fcbf 	bl	80066ec <__i2b>
 8004d6e:	4605      	mov	r5, r0
 8004d70:	e024      	b.n	8004dbc <_dtoa_r+0x63c>
 8004d72:	2301      	movs	r3, #1
 8004d74:	930d      	str	r3, [sp, #52]	; 0x34
 8004d76:	e5af      	b.n	80048d8 <_dtoa_r+0x158>
 8004d78:	9a08      	ldr	r2, [sp, #32]
 8004d7a:	9b06      	ldr	r3, [sp, #24]
 8004d7c:	1ad2      	subs	r2, r2, r3
 8004d7e:	425b      	negs	r3, r3
 8004d80:	930b      	str	r3, [sp, #44]	; 0x2c
 8004d82:	2300      	movs	r3, #0
 8004d84:	9208      	str	r2, [sp, #32]
 8004d86:	930c      	str	r3, [sp, #48]	; 0x30
 8004d88:	e5b5      	b.n	80048f6 <_dtoa_r+0x176>
 8004d8a:	f1c4 0301 	rsb	r3, r4, #1
 8004d8e:	9308      	str	r3, [sp, #32]
 8004d90:	f04f 0800 	mov.w	r8, #0
 8004d94:	e5a7      	b.n	80048e6 <_dtoa_r+0x166>
 8004d96:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004d9a:	4640      	mov	r0, r8
 8004d9c:	f7fb fe62 	bl	8000a64 <__aeabi_i2d>
 8004da0:	4632      	mov	r2, r6
 8004da2:	463b      	mov	r3, r7
 8004da4:	f7fc f930 	bl	8001008 <__aeabi_dcmpeq>
 8004da8:	2800      	cmp	r0, #0
 8004daa:	f47f ad81 	bne.w	80048b0 <_dtoa_r+0x130>
 8004dae:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004db2:	9306      	str	r3, [sp, #24]
 8004db4:	e57c      	b.n	80048b0 <_dtoa_r+0x130>
 8004db6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004db8:	9c08      	ldr	r4, [sp, #32]
 8004dba:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004dbc:	2c00      	cmp	r4, #0
 8004dbe:	dd0c      	ble.n	8004dda <_dtoa_r+0x65a>
 8004dc0:	f1b8 0f00 	cmp.w	r8, #0
 8004dc4:	dd09      	ble.n	8004dda <_dtoa_r+0x65a>
 8004dc6:	4544      	cmp	r4, r8
 8004dc8:	9a08      	ldr	r2, [sp, #32]
 8004dca:	4623      	mov	r3, r4
 8004dcc:	bfa8      	it	ge
 8004dce:	4643      	movge	r3, r8
 8004dd0:	1ad2      	subs	r2, r2, r3
 8004dd2:	9208      	str	r2, [sp, #32]
 8004dd4:	1ae4      	subs	r4, r4, r3
 8004dd6:	eba8 0803 	sub.w	r8, r8, r3
 8004dda:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004ddc:	b16b      	cbz	r3, 8004dfa <_dtoa_r+0x67a>
 8004dde:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004de0:	2a00      	cmp	r2, #0
 8004de2:	f000 8290 	beq.w	8005306 <_dtoa_r+0xb86>
 8004de6:	1bde      	subs	r6, r3, r7
 8004de8:	2f00      	cmp	r7, #0
 8004dea:	f040 819b 	bne.w	8005124 <_dtoa_r+0x9a4>
 8004dee:	4651      	mov	r1, sl
 8004df0:	4632      	mov	r2, r6
 8004df2:	4648      	mov	r0, r9
 8004df4:	f001 fd2a 	bl	800684c <__pow5mult>
 8004df8:	4682      	mov	sl, r0
 8004dfa:	2101      	movs	r1, #1
 8004dfc:	4648      	mov	r0, r9
 8004dfe:	f001 fc75 	bl	80066ec <__i2b>
 8004e02:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004e04:	4606      	mov	r6, r0
 8004e06:	2a00      	cmp	r2, #0
 8004e08:	f040 8125 	bne.w	8005056 <_dtoa_r+0x8d6>
 8004e0c:	9b02      	ldr	r3, [sp, #8]
 8004e0e:	2b01      	cmp	r3, #1
 8004e10:	f340 816c 	ble.w	80050ec <_dtoa_r+0x96c>
 8004e14:	2001      	movs	r0, #1
 8004e16:	4440      	add	r0, r8
 8004e18:	f010 001f 	ands.w	r0, r0, #31
 8004e1c:	f000 8119 	beq.w	8005052 <_dtoa_r+0x8d2>
 8004e20:	f1c0 0320 	rsb	r3, r0, #32
 8004e24:	2b04      	cmp	r3, #4
 8004e26:	f340 83ac 	ble.w	8005582 <_dtoa_r+0xe02>
 8004e2a:	f1c0 001c 	rsb	r0, r0, #28
 8004e2e:	9b08      	ldr	r3, [sp, #32]
 8004e30:	4403      	add	r3, r0
 8004e32:	9308      	str	r3, [sp, #32]
 8004e34:	4404      	add	r4, r0
 8004e36:	4480      	add	r8, r0
 8004e38:	9b08      	ldr	r3, [sp, #32]
 8004e3a:	2b00      	cmp	r3, #0
 8004e3c:	dd05      	ble.n	8004e4a <_dtoa_r+0x6ca>
 8004e3e:	4651      	mov	r1, sl
 8004e40:	461a      	mov	r2, r3
 8004e42:	4648      	mov	r0, r9
 8004e44:	f001 fd52 	bl	80068ec <__lshift>
 8004e48:	4682      	mov	sl, r0
 8004e4a:	f1b8 0f00 	cmp.w	r8, #0
 8004e4e:	dd05      	ble.n	8004e5c <_dtoa_r+0x6dc>
 8004e50:	4631      	mov	r1, r6
 8004e52:	4642      	mov	r2, r8
 8004e54:	4648      	mov	r0, r9
 8004e56:	f001 fd49 	bl	80068ec <__lshift>
 8004e5a:	4606      	mov	r6, r0
 8004e5c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004e5e:	2b00      	cmp	r3, #0
 8004e60:	d177      	bne.n	8004f52 <_dtoa_r+0x7d2>
 8004e62:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e64:	2b00      	cmp	r3, #0
 8004e66:	f340 8209 	ble.w	800527c <_dtoa_r+0xafc>
 8004e6a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e6c:	2b00      	cmp	r3, #0
 8004e6e:	f000 8089 	beq.w	8004f84 <_dtoa_r+0x804>
 8004e72:	2c00      	cmp	r4, #0
 8004e74:	f300 816b 	bgt.w	800514e <_dtoa_r+0x9ce>
 8004e78:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004e7a:	2b00      	cmp	r3, #0
 8004e7c:	f040 81cd 	bne.w	800521a <_dtoa_r+0xa9a>
 8004e80:	46a8      	mov	r8, r5
 8004e82:	9a00      	ldr	r2, [sp, #0]
 8004e84:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004e88:	f002 0201 	and.w	r2, r2, #1
 8004e8c:	920a      	str	r2, [sp, #40]	; 0x28
 8004e8e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004e90:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004e94:	441a      	add	r2, r3
 8004e96:	465f      	mov	r7, fp
 8004e98:	9209      	str	r2, [sp, #36]	; 0x24
 8004e9a:	46b3      	mov	fp, r6
 8004e9c:	4659      	mov	r1, fp
 8004e9e:	4650      	mov	r0, sl
 8004ea0:	f7ff fbdc 	bl	800465c <quorem>
 8004ea4:	4629      	mov	r1, r5
 8004ea6:	4604      	mov	r4, r0
 8004ea8:	4650      	mov	r0, sl
 8004eaa:	f001 fd75 	bl	8006998 <__mcmp>
 8004eae:	4659      	mov	r1, fp
 8004eb0:	4606      	mov	r6, r0
 8004eb2:	4642      	mov	r2, r8
 8004eb4:	4648      	mov	r0, r9
 8004eb6:	f001 fd8b 	bl	80069d0 <__mdiff>
 8004eba:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004ebe:	9300      	str	r3, [sp, #0]
 8004ec0:	68c3      	ldr	r3, [r0, #12]
 8004ec2:	4601      	mov	r1, r0
 8004ec4:	2b00      	cmp	r3, #0
 8004ec6:	f040 81d4 	bne.w	8005272 <_dtoa_r+0xaf2>
 8004eca:	9008      	str	r0, [sp, #32]
 8004ecc:	4650      	mov	r0, sl
 8004ece:	f001 fd63 	bl	8006998 <__mcmp>
 8004ed2:	9a08      	ldr	r2, [sp, #32]
 8004ed4:	9007      	str	r0, [sp, #28]
 8004ed6:	4611      	mov	r1, r2
 8004ed8:	4648      	mov	r0, r9
 8004eda:	f001 fb6d 	bl	80065b8 <_Bfree>
 8004ede:	9b07      	ldr	r3, [sp, #28]
 8004ee0:	b933      	cbnz	r3, 8004ef0 <_dtoa_r+0x770>
 8004ee2:	9a02      	ldr	r2, [sp, #8]
 8004ee4:	b922      	cbnz	r2, 8004ef0 <_dtoa_r+0x770>
 8004ee6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004ee8:	2b00      	cmp	r3, #0
 8004eea:	f000 8319 	beq.w	8005520 <_dtoa_r+0xda0>
 8004eee:	9b02      	ldr	r3, [sp, #8]
 8004ef0:	2e00      	cmp	r6, #0
 8004ef2:	f2c0 821c 	blt.w	800532e <_dtoa_r+0xbae>
 8004ef6:	d105      	bne.n	8004f04 <_dtoa_r+0x784>
 8004ef8:	9a02      	ldr	r2, [sp, #8]
 8004efa:	b91a      	cbnz	r2, 8004f04 <_dtoa_r+0x784>
 8004efc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004efe:	2a00      	cmp	r2, #0
 8004f00:	f000 8215 	beq.w	800532e <_dtoa_r+0xbae>
 8004f04:	2b00      	cmp	r3, #0
 8004f06:	f107 0401 	add.w	r4, r7, #1
 8004f0a:	f300 8225 	bgt.w	8005358 <_dtoa_r+0xbd8>
 8004f0e:	9b00      	ldr	r3, [sp, #0]
 8004f10:	703b      	strb	r3, [r7, #0]
 8004f12:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f14:	42bb      	cmp	r3, r7
 8004f16:	f000 8230 	beq.w	800537a <_dtoa_r+0xbfa>
 8004f1a:	4651      	mov	r1, sl
 8004f1c:	2300      	movs	r3, #0
 8004f1e:	220a      	movs	r2, #10
 8004f20:	4648      	mov	r0, r9
 8004f22:	f001 fb53 	bl	80065cc <__multadd>
 8004f26:	4545      	cmp	r5, r8
 8004f28:	4682      	mov	sl, r0
 8004f2a:	4629      	mov	r1, r5
 8004f2c:	f04f 0300 	mov.w	r3, #0
 8004f30:	f04f 020a 	mov.w	r2, #10
 8004f34:	4648      	mov	r0, r9
 8004f36:	f000 8196 	beq.w	8005266 <_dtoa_r+0xae6>
 8004f3a:	f001 fb47 	bl	80065cc <__multadd>
 8004f3e:	4641      	mov	r1, r8
 8004f40:	4605      	mov	r5, r0
 8004f42:	2300      	movs	r3, #0
 8004f44:	220a      	movs	r2, #10
 8004f46:	4648      	mov	r0, r9
 8004f48:	f001 fb40 	bl	80065cc <__multadd>
 8004f4c:	4627      	mov	r7, r4
 8004f4e:	4680      	mov	r8, r0
 8004f50:	e7a4      	b.n	8004e9c <_dtoa_r+0x71c>
 8004f52:	4631      	mov	r1, r6
 8004f54:	4650      	mov	r0, sl
 8004f56:	f001 fd1f 	bl	8006998 <__mcmp>
 8004f5a:	2800      	cmp	r0, #0
 8004f5c:	da81      	bge.n	8004e62 <_dtoa_r+0x6e2>
 8004f5e:	9f06      	ldr	r7, [sp, #24]
 8004f60:	4651      	mov	r1, sl
 8004f62:	2300      	movs	r3, #0
 8004f64:	220a      	movs	r2, #10
 8004f66:	4648      	mov	r0, r9
 8004f68:	3f01      	subs	r7, #1
 8004f6a:	9706      	str	r7, [sp, #24]
 8004f6c:	f001 fb2e 	bl	80065cc <__multadd>
 8004f70:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004f72:	4682      	mov	sl, r0
 8004f74:	2b00      	cmp	r3, #0
 8004f76:	f040 82eb 	bne.w	8005550 <_dtoa_r+0xdd0>
 8004f7a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f7c:	2b00      	cmp	r3, #0
 8004f7e:	f340 82f3 	ble.w	8005568 <_dtoa_r+0xde8>
 8004f82:	9309      	str	r3, [sp, #36]	; 0x24
 8004f84:	465c      	mov	r4, fp
 8004f86:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004f8a:	e002      	b.n	8004f92 <_dtoa_r+0x812>
 8004f8c:	f001 fb1e 	bl	80065cc <__multadd>
 8004f90:	4682      	mov	sl, r0
 8004f92:	4631      	mov	r1, r6
 8004f94:	4650      	mov	r0, sl
 8004f96:	f7ff fb61 	bl	800465c <quorem>
 8004f9a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004f9e:	f804 7b01 	strb.w	r7, [r4], #1
 8004fa2:	eba4 030b 	sub.w	r3, r4, fp
 8004fa6:	4598      	cmp	r8, r3
 8004fa8:	f04f 020a 	mov.w	r2, #10
 8004fac:	f04f 0300 	mov.w	r3, #0
 8004fb0:	4651      	mov	r1, sl
 8004fb2:	4648      	mov	r0, r9
 8004fb4:	dcea      	bgt.n	8004f8c <_dtoa_r+0x80c>
 8004fb6:	2300      	movs	r3, #0
 8004fb8:	9700      	str	r7, [sp, #0]
 8004fba:	9302      	str	r3, [sp, #8]
 8004fbc:	4651      	mov	r1, sl
 8004fbe:	2201      	movs	r2, #1
 8004fc0:	4648      	mov	r0, r9
 8004fc2:	f001 fc93 	bl	80068ec <__lshift>
 8004fc6:	4631      	mov	r1, r6
 8004fc8:	4682      	mov	sl, r0
 8004fca:	f001 fce5 	bl	8006998 <__mcmp>
 8004fce:	2800      	cmp	r0, #0
 8004fd0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004fd4:	dc14      	bgt.n	8005000 <_dtoa_r+0x880>
 8004fd6:	d108      	bne.n	8004fea <_dtoa_r+0x86a>
 8004fd8:	9b00      	ldr	r3, [sp, #0]
 8004fda:	07db      	lsls	r3, r3, #31
 8004fdc:	d410      	bmi.n	8005000 <_dtoa_r+0x880>
 8004fde:	e004      	b.n	8004fea <_dtoa_r+0x86a>
 8004fe0:	40240000 	.word	0x40240000
 8004fe4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004fe8:	461c      	mov	r4, r3
 8004fea:	2a30      	cmp	r2, #48	; 0x30
 8004fec:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ff0:	d0f8      	beq.n	8004fe4 <_dtoa_r+0x864>
 8004ff2:	e00b      	b.n	800500c <_dtoa_r+0x88c>
 8004ff4:	459b      	cmp	fp, r3
 8004ff6:	f000 814e 	beq.w	8005296 <_dtoa_r+0xb16>
 8004ffa:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004ffe:	461c      	mov	r4, r3
 8005000:	2a39      	cmp	r2, #57	; 0x39
 8005002:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005006:	d0f5      	beq.n	8004ff4 <_dtoa_r+0x874>
 8005008:	3201      	adds	r2, #1
 800500a:	701a      	strb	r2, [r3, #0]
 800500c:	4631      	mov	r1, r6
 800500e:	4648      	mov	r0, r9
 8005010:	f001 fad2 	bl	80065b8 <_Bfree>
 8005014:	b155      	cbz	r5, 800502c <_dtoa_r+0x8ac>
 8005016:	9902      	ldr	r1, [sp, #8]
 8005018:	b121      	cbz	r1, 8005024 <_dtoa_r+0x8a4>
 800501a:	42a9      	cmp	r1, r5
 800501c:	d002      	beq.n	8005024 <_dtoa_r+0x8a4>
 800501e:	4648      	mov	r0, r9
 8005020:	f001 faca 	bl	80065b8 <_Bfree>
 8005024:	4629      	mov	r1, r5
 8005026:	4648      	mov	r0, r9
 8005028:	f001 fac6 	bl	80065b8 <_Bfree>
 800502c:	4651      	mov	r1, sl
 800502e:	4648      	mov	r0, r9
 8005030:	f001 fac2 	bl	80065b8 <_Bfree>
 8005034:	2200      	movs	r2, #0
 8005036:	9b06      	ldr	r3, [sp, #24]
 8005038:	7022      	strb	r2, [r4, #0]
 800503a:	9a05      	ldr	r2, [sp, #20]
 800503c:	3301      	adds	r3, #1
 800503e:	6013      	str	r3, [r2, #0]
 8005040:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005042:	2b00      	cmp	r3, #0
 8005044:	f43f abdb 	beq.w	80047fe <_dtoa_r+0x7e>
 8005048:	4658      	mov	r0, fp
 800504a:	601c      	str	r4, [r3, #0]
 800504c:	b01b      	add	sp, #108	; 0x6c
 800504e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005052:	201c      	movs	r0, #28
 8005054:	e6eb      	b.n	8004e2e <_dtoa_r+0x6ae>
 8005056:	4601      	mov	r1, r0
 8005058:	4648      	mov	r0, r9
 800505a:	f001 fbf7 	bl	800684c <__pow5mult>
 800505e:	9b02      	ldr	r3, [sp, #8]
 8005060:	2b01      	cmp	r3, #1
 8005062:	4606      	mov	r6, r0
 8005064:	f340 80d4 	ble.w	8005210 <_dtoa_r+0xa90>
 8005068:	2300      	movs	r3, #0
 800506a:	930c      	str	r3, [sp, #48]	; 0x30
 800506c:	6933      	ldr	r3, [r6, #16]
 800506e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8005072:	6918      	ldr	r0, [r3, #16]
 8005074:	f001 faea 	bl	800664c <__hi0bits>
 8005078:	f1c0 0020 	rsb	r0, r0, #32
 800507c:	e6cb      	b.n	8004e16 <_dtoa_r+0x696>
 800507e:	900d      	str	r0, [sp, #52]	; 0x34
 8005080:	e42a      	b.n	80048d8 <_dtoa_r+0x158>
 8005082:	2501      	movs	r5, #1
 8005084:	e440      	b.n	8004908 <_dtoa_r+0x188>
 8005086:	f1c3 0820 	rsb	r8, r3, #32
 800508a:	9b00      	ldr	r3, [sp, #0]
 800508c:	fa03 f008 	lsl.w	r0, r3, r8
 8005090:	f7ff bbd8 	b.w	8004844 <_dtoa_r+0xc4>
 8005094:	2300      	movs	r3, #0
 8005096:	930a      	str	r3, [sp, #40]	; 0x28
 8005098:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 800509c:	4413      	add	r3, r2
 800509e:	930e      	str	r3, [sp, #56]	; 0x38
 80050a0:	3301      	adds	r3, #1
 80050a2:	2b01      	cmp	r3, #1
 80050a4:	461e      	mov	r6, r3
 80050a6:	9309      	str	r3, [sp, #36]	; 0x24
 80050a8:	bfb8      	it	lt
 80050aa:	2601      	movlt	r6, #1
 80050ac:	2100      	movs	r1, #0
 80050ae:	2e17      	cmp	r6, #23
 80050b0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80050b4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80050b6:	f77f ac89 	ble.w	80049cc <_dtoa_r+0x24c>
 80050ba:	2201      	movs	r2, #1
 80050bc:	2304      	movs	r3, #4
 80050be:	005b      	lsls	r3, r3, #1
 80050c0:	f103 0014 	add.w	r0, r3, #20
 80050c4:	42b0      	cmp	r0, r6
 80050c6:	4611      	mov	r1, r2
 80050c8:	f102 0201 	add.w	r2, r2, #1
 80050cc:	d9f7      	bls.n	80050be <_dtoa_r+0x93e>
 80050ce:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80050d2:	e47b      	b.n	80049cc <_dtoa_r+0x24c>
 80050d4:	2300      	movs	r3, #0
 80050d6:	930a      	str	r3, [sp, #40]	; 0x28
 80050d8:	9e07      	ldr	r6, [sp, #28]
 80050da:	2e00      	cmp	r6, #0
 80050dc:	f340 80e2 	ble.w	80052a4 <_dtoa_r+0xb24>
 80050e0:	960e      	str	r6, [sp, #56]	; 0x38
 80050e2:	9609      	str	r6, [sp, #36]	; 0x24
 80050e4:	e7e2      	b.n	80050ac <_dtoa_r+0x92c>
 80050e6:	2301      	movs	r3, #1
 80050e8:	930a      	str	r3, [sp, #40]	; 0x28
 80050ea:	e7f5      	b.n	80050d8 <_dtoa_r+0x958>
 80050ec:	9b00      	ldr	r3, [sp, #0]
 80050ee:	2b00      	cmp	r3, #0
 80050f0:	f47f ae90 	bne.w	8004e14 <_dtoa_r+0x694>
 80050f4:	e9dd 1200 	ldrd	r1, r2, [sp]
 80050f8:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80050fc:	2b00      	cmp	r3, #0
 80050fe:	f040 8192 	bne.w	8005426 <_dtoa_r+0xca6>
 8005102:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8005106:	0d1b      	lsrs	r3, r3, #20
 8005108:	051b      	lsls	r3, r3, #20
 800510a:	b12b      	cbz	r3, 8005118 <_dtoa_r+0x998>
 800510c:	9b08      	ldr	r3, [sp, #32]
 800510e:	3301      	adds	r3, #1
 8005110:	9308      	str	r3, [sp, #32]
 8005112:	f108 0801 	add.w	r8, r8, #1
 8005116:	2301      	movs	r3, #1
 8005118:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800511a:	930c      	str	r3, [sp, #48]	; 0x30
 800511c:	2a00      	cmp	r2, #0
 800511e:	f43f ae79 	beq.w	8004e14 <_dtoa_r+0x694>
 8005122:	e7a3      	b.n	800506c <_dtoa_r+0x8ec>
 8005124:	463a      	mov	r2, r7
 8005126:	4629      	mov	r1, r5
 8005128:	4648      	mov	r0, r9
 800512a:	f001 fb8f 	bl	800684c <__pow5mult>
 800512e:	4652      	mov	r2, sl
 8005130:	4601      	mov	r1, r0
 8005132:	4605      	mov	r5, r0
 8005134:	4648      	mov	r0, r9
 8005136:	f001 fae3 	bl	8006700 <__multiply>
 800513a:	4651      	mov	r1, sl
 800513c:	4607      	mov	r7, r0
 800513e:	4648      	mov	r0, r9
 8005140:	f001 fa3a 	bl	80065b8 <_Bfree>
 8005144:	46ba      	mov	sl, r7
 8005146:	2e00      	cmp	r6, #0
 8005148:	f43f ae57 	beq.w	8004dfa <_dtoa_r+0x67a>
 800514c:	e64f      	b.n	8004dee <_dtoa_r+0x66e>
 800514e:	4629      	mov	r1, r5
 8005150:	4622      	mov	r2, r4
 8005152:	4648      	mov	r0, r9
 8005154:	f001 fbca 	bl	80068ec <__lshift>
 8005158:	4605      	mov	r5, r0
 800515a:	e68d      	b.n	8004e78 <_dtoa_r+0x6f8>
 800515c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800515e:	2a00      	cmp	r2, #0
 8005160:	f000 815d 	beq.w	800541e <_dtoa_r+0xc9e>
 8005164:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005168:	9a08      	ldr	r2, [sp, #32]
 800516a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 800516c:	4614      	mov	r4, r2
 800516e:	441a      	add	r2, r3
 8005170:	4498      	add	r8, r3
 8005172:	9208      	str	r2, [sp, #32]
 8005174:	e5f7      	b.n	8004d66 <_dtoa_r+0x5e6>
 8005176:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005178:	2b00      	cmp	r3, #0
 800517a:	f73f ad3e 	bgt.w	8004bfa <_dtoa_r+0x47a>
 800517e:	f040 80bc 	bne.w	80052fa <_dtoa_r+0xb7a>
 8005182:	ec51 0b17 	vmov	r0, r1, d7
 8005186:	2200      	movs	r2, #0
 8005188:	4bb2      	ldr	r3, [pc, #712]	; (8005454 <_dtoa_r+0xcd4>)
 800518a:	f7fb fcd5 	bl	8000b38 <__aeabi_dmul>
 800518e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005192:	f7fb ff57 	bl	8001044 <__aeabi_dcmpge>
 8005196:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005198:	4635      	mov	r5, r6
 800519a:	2800      	cmp	r0, #0
 800519c:	d176      	bne.n	800528c <_dtoa_r+0xb0c>
 800519e:	9a06      	ldr	r2, [sp, #24]
 80051a0:	2331      	movs	r3, #49	; 0x31
 80051a2:	3201      	adds	r2, #1
 80051a4:	9206      	str	r2, [sp, #24]
 80051a6:	f88b 3000 	strb.w	r3, [fp]
 80051aa:	f10b 0401 	add.w	r4, fp, #1
 80051ae:	4631      	mov	r1, r6
 80051b0:	4648      	mov	r0, r9
 80051b2:	f001 fa01 	bl	80065b8 <_Bfree>
 80051b6:	2d00      	cmp	r5, #0
 80051b8:	f47f af34 	bne.w	8005024 <_dtoa_r+0x8a4>
 80051bc:	e736      	b.n	800502c <_dtoa_r+0x8ac>
 80051be:	f000 8142 	beq.w	8005446 <_dtoa_r+0xcc6>
 80051c2:	9b06      	ldr	r3, [sp, #24]
 80051c4:	425c      	negs	r4, r3
 80051c6:	4ba4      	ldr	r3, [pc, #656]	; (8005458 <_dtoa_r+0xcd8>)
 80051c8:	f004 020f 	and.w	r2, r4, #15
 80051cc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80051d0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80051d4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80051d8:	f7fb fcae 	bl	8000b38 <__aeabi_dmul>
 80051dc:	1124      	asrs	r4, r4, #4
 80051de:	e9cd 0100 	strd	r0, r1, [sp]
 80051e2:	f000 81c6 	beq.w	8005572 <_dtoa_r+0xdf2>
 80051e6:	4d9d      	ldr	r5, [pc, #628]	; (800545c <_dtoa_r+0xcdc>)
 80051e8:	2300      	movs	r3, #0
 80051ea:	2602      	movs	r6, #2
 80051ec:	07e7      	lsls	r7, r4, #31
 80051ee:	d505      	bpl.n	80051fc <_dtoa_r+0xa7c>
 80051f0:	e9d5 2300 	ldrd	r2, r3, [r5]
 80051f4:	f7fb fca0 	bl	8000b38 <__aeabi_dmul>
 80051f8:	3601      	adds	r6, #1
 80051fa:	2301      	movs	r3, #1
 80051fc:	1064      	asrs	r4, r4, #1
 80051fe:	f105 0508 	add.w	r5, r5, #8
 8005202:	d1f3      	bne.n	80051ec <_dtoa_r+0xa6c>
 8005204:	2b00      	cmp	r3, #0
 8005206:	f43f ac27 	beq.w	8004a58 <_dtoa_r+0x2d8>
 800520a:	e9cd 0100 	strd	r0, r1, [sp]
 800520e:	e423      	b.n	8004a58 <_dtoa_r+0x2d8>
 8005210:	9b00      	ldr	r3, [sp, #0]
 8005212:	2b00      	cmp	r3, #0
 8005214:	f43f af6e 	beq.w	80050f4 <_dtoa_r+0x974>
 8005218:	e726      	b.n	8005068 <_dtoa_r+0x8e8>
 800521a:	6869      	ldr	r1, [r5, #4]
 800521c:	4648      	mov	r0, r9
 800521e:	f001 f9a5 	bl	800656c <_Balloc>
 8005222:	692b      	ldr	r3, [r5, #16]
 8005224:	3302      	adds	r3, #2
 8005226:	009a      	lsls	r2, r3, #2
 8005228:	4604      	mov	r4, r0
 800522a:	f105 010c 	add.w	r1, r5, #12
 800522e:	300c      	adds	r0, #12
 8005230:	f7fb f966 	bl	8000500 <memcpy>
 8005234:	4621      	mov	r1, r4
 8005236:	2201      	movs	r2, #1
 8005238:	4648      	mov	r0, r9
 800523a:	f001 fb57 	bl	80068ec <__lshift>
 800523e:	4680      	mov	r8, r0
 8005240:	e61f      	b.n	8004e82 <_dtoa_r+0x702>
 8005242:	2400      	movs	r4, #0
 8005244:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005248:	4621      	mov	r1, r4
 800524a:	4648      	mov	r0, r9
 800524c:	f001 f98e 	bl	800656c <_Balloc>
 8005250:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005254:	930e      	str	r3, [sp, #56]	; 0x38
 8005256:	9309      	str	r3, [sp, #36]	; 0x24
 8005258:	2301      	movs	r3, #1
 800525a:	4683      	mov	fp, r0
 800525c:	9407      	str	r4, [sp, #28]
 800525e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005262:	930a      	str	r3, [sp, #40]	; 0x28
 8005264:	e4b6      	b.n	8004bd4 <_dtoa_r+0x454>
 8005266:	f001 f9b1 	bl	80065cc <__multadd>
 800526a:	4627      	mov	r7, r4
 800526c:	4605      	mov	r5, r0
 800526e:	4680      	mov	r8, r0
 8005270:	e614      	b.n	8004e9c <_dtoa_r+0x71c>
 8005272:	4648      	mov	r0, r9
 8005274:	f001 f9a0 	bl	80065b8 <_Bfree>
 8005278:	2301      	movs	r3, #1
 800527a:	e639      	b.n	8004ef0 <_dtoa_r+0x770>
 800527c:	9b02      	ldr	r3, [sp, #8]
 800527e:	2b02      	cmp	r3, #2
 8005280:	f77f adf3 	ble.w	8004e6a <_dtoa_r+0x6ea>
 8005284:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005286:	2b00      	cmp	r3, #0
 8005288:	f000 80cf 	beq.w	800542a <_dtoa_r+0xcaa>
 800528c:	9b07      	ldr	r3, [sp, #28]
 800528e:	43db      	mvns	r3, r3
 8005290:	9306      	str	r3, [sp, #24]
 8005292:	465c      	mov	r4, fp
 8005294:	e78b      	b.n	80051ae <_dtoa_r+0xa2e>
 8005296:	9a06      	ldr	r2, [sp, #24]
 8005298:	2331      	movs	r3, #49	; 0x31
 800529a:	3201      	adds	r2, #1
 800529c:	9206      	str	r2, [sp, #24]
 800529e:	f88b 3000 	strb.w	r3, [fp]
 80052a2:	e6b3      	b.n	800500c <_dtoa_r+0x88c>
 80052a4:	2401      	movs	r4, #1
 80052a6:	9409      	str	r4, [sp, #36]	; 0x24
 80052a8:	9407      	str	r4, [sp, #28]
 80052aa:	f7ff bb8b 	b.w	80049c4 <_dtoa_r+0x244>
 80052ae:	4630      	mov	r0, r6
 80052b0:	f7fb fbd8 	bl	8000a64 <__aeabi_i2d>
 80052b4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80052b8:	f7fb fc3e 	bl	8000b38 <__aeabi_dmul>
 80052bc:	2200      	movs	r2, #0
 80052be:	4b68      	ldr	r3, [pc, #416]	; (8005460 <_dtoa_r+0xce0>)
 80052c0:	f7fb fa84 	bl	80007cc <__adddf3>
 80052c4:	4606      	mov	r6, r0
 80052c6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80052ca:	2200      	movs	r2, #0
 80052cc:	4b61      	ldr	r3, [pc, #388]	; (8005454 <_dtoa_r+0xcd4>)
 80052ce:	e9dd 0100 	ldrd	r0, r1, [sp]
 80052d2:	f7fb fa79 	bl	80007c8 <__aeabi_dsub>
 80052d6:	4632      	mov	r2, r6
 80052d8:	463b      	mov	r3, r7
 80052da:	4604      	mov	r4, r0
 80052dc:	460d      	mov	r5, r1
 80052de:	f7fb febb 	bl	8001058 <__aeabi_dcmpgt>
 80052e2:	2800      	cmp	r0, #0
 80052e4:	d14f      	bne.n	8005386 <_dtoa_r+0xc06>
 80052e6:	4632      	mov	r2, r6
 80052e8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80052ec:	4620      	mov	r0, r4
 80052ee:	4629      	mov	r1, r5
 80052f0:	f7fb fe94 	bl	800101c <__aeabi_dcmplt>
 80052f4:	2800      	cmp	r0, #0
 80052f6:	f43f ac69 	beq.w	8004bcc <_dtoa_r+0x44c>
 80052fa:	2600      	movs	r6, #0
 80052fc:	4635      	mov	r5, r6
 80052fe:	e7c5      	b.n	800528c <_dtoa_r+0xb0c>
 8005300:	2301      	movs	r3, #1
 8005302:	930a      	str	r3, [sp, #40]	; 0x28
 8005304:	e6c8      	b.n	8005098 <_dtoa_r+0x918>
 8005306:	4651      	mov	r1, sl
 8005308:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800530a:	4648      	mov	r0, r9
 800530c:	f001 fa9e 	bl	800684c <__pow5mult>
 8005310:	4682      	mov	sl, r0
 8005312:	e572      	b.n	8004dfa <_dtoa_r+0x67a>
 8005314:	f8dd a000 	ldr.w	sl, [sp]
 8005318:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800531c:	e686      	b.n	800502c <_dtoa_r+0x8ac>
 800531e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005320:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005322:	1afb      	subs	r3, r7, r3
 8005324:	441a      	add	r2, r3
 8005326:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800532a:	2700      	movs	r7, #0
 800532c:	e512      	b.n	8004d54 <_dtoa_r+0x5d4>
 800532e:	2b00      	cmp	r3, #0
 8005330:	9402      	str	r4, [sp, #8]
 8005332:	465e      	mov	r6, fp
 8005334:	f107 0401 	add.w	r4, r7, #1
 8005338:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800533c:	f300 80ba 	bgt.w	80054b4 <_dtoa_r+0xd34>
 8005340:	9b00      	ldr	r3, [sp, #0]
 8005342:	9502      	str	r5, [sp, #8]
 8005344:	703b      	strb	r3, [r7, #0]
 8005346:	4645      	mov	r5, r8
 8005348:	e660      	b.n	800500c <_dtoa_r+0x88c>
 800534a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800534e:	2602      	movs	r6, #2
 8005350:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005354:	f7ff bb67 	b.w	8004a26 <_dtoa_r+0x2a6>
 8005358:	9b00      	ldr	r3, [sp, #0]
 800535a:	2b39      	cmp	r3, #57	; 0x39
 800535c:	465e      	mov	r6, fp
 800535e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005362:	f000 80b9 	beq.w	80054d8 <_dtoa_r+0xd58>
 8005366:	9b00      	ldr	r3, [sp, #0]
 8005368:	9502      	str	r5, [sp, #8]
 800536a:	3301      	adds	r3, #1
 800536c:	703b      	strb	r3, [r7, #0]
 800536e:	4645      	mov	r5, r8
 8005370:	e64c      	b.n	800500c <_dtoa_r+0x88c>
 8005372:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8005376:	1a9c      	subs	r4, r3, r2
 8005378:	e4f5      	b.n	8004d66 <_dtoa_r+0x5e6>
 800537a:	465e      	mov	r6, fp
 800537c:	9502      	str	r5, [sp, #8]
 800537e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005382:	4645      	mov	r5, r8
 8005384:	e61a      	b.n	8004fbc <_dtoa_r+0x83c>
 8005386:	2600      	movs	r6, #0
 8005388:	4635      	mov	r5, r6
 800538a:	e708      	b.n	800519e <_dtoa_r+0xa1e>
 800538c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005390:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005394:	f7fb fbd0 	bl	8000b38 <__aeabi_dmul>
 8005398:	9b12      	ldr	r3, [sp, #72]	; 0x48
 800539a:	f88b 5000 	strb.w	r5, [fp]
 800539e:	2b01      	cmp	r3, #1
 80053a0:	e9cd 0100 	strd	r0, r1, [sp]
 80053a4:	d020      	beq.n	80053e8 <_dtoa_r+0xc68>
 80053a6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80053a8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80053ac:	445b      	add	r3, fp
 80053ae:	4698      	mov	r8, r3
 80053b0:	2200      	movs	r2, #0
 80053b2:	4b2c      	ldr	r3, [pc, #176]	; (8005464 <_dtoa_r+0xce4>)
 80053b4:	4630      	mov	r0, r6
 80053b6:	4639      	mov	r1, r7
 80053b8:	f7fb fbbe 	bl	8000b38 <__aeabi_dmul>
 80053bc:	460f      	mov	r7, r1
 80053be:	4606      	mov	r6, r0
 80053c0:	f7fb fe6a 	bl	8001098 <__aeabi_d2iz>
 80053c4:	4605      	mov	r5, r0
 80053c6:	f7fb fb4d 	bl	8000a64 <__aeabi_i2d>
 80053ca:	3530      	adds	r5, #48	; 0x30
 80053cc:	4602      	mov	r2, r0
 80053ce:	460b      	mov	r3, r1
 80053d0:	4630      	mov	r0, r6
 80053d2:	4639      	mov	r1, r7
 80053d4:	f7fb f9f8 	bl	80007c8 <__aeabi_dsub>
 80053d8:	f804 5b01 	strb.w	r5, [r4], #1
 80053dc:	4544      	cmp	r4, r8
 80053de:	4606      	mov	r6, r0
 80053e0:	460f      	mov	r7, r1
 80053e2:	d1e5      	bne.n	80053b0 <_dtoa_r+0xc30>
 80053e4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80053e8:	4b1f      	ldr	r3, [pc, #124]	; (8005468 <_dtoa_r+0xce8>)
 80053ea:	2200      	movs	r2, #0
 80053ec:	e9dd 0100 	ldrd	r0, r1, [sp]
 80053f0:	f7fb f9ec 	bl	80007cc <__adddf3>
 80053f4:	4632      	mov	r2, r6
 80053f6:	463b      	mov	r3, r7
 80053f8:	f7fb fe10 	bl	800101c <__aeabi_dcmplt>
 80053fc:	2800      	cmp	r0, #0
 80053fe:	d070      	beq.n	80054e2 <_dtoa_r+0xd62>
 8005400:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005402:	9306      	str	r3, [sp, #24]
 8005404:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005408:	e48f      	b.n	8004d2a <_dtoa_r+0x5aa>
 800540a:	2330      	movs	r3, #48	; 0x30
 800540c:	f88b 3000 	strb.w	r3, [fp]
 8005410:	9b06      	ldr	r3, [sp, #24]
 8005412:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005416:	3301      	adds	r3, #1
 8005418:	9306      	str	r3, [sp, #24]
 800541a:	465b      	mov	r3, fp
 800541c:	e489      	b.n	8004d32 <_dtoa_r+0x5b2>
 800541e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005420:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005424:	e6a0      	b.n	8005168 <_dtoa_r+0x9e8>
 8005426:	2300      	movs	r3, #0
 8005428:	e676      	b.n	8005118 <_dtoa_r+0x998>
 800542a:	4631      	mov	r1, r6
 800542c:	2205      	movs	r2, #5
 800542e:	4648      	mov	r0, r9
 8005430:	f001 f8cc 	bl	80065cc <__multadd>
 8005434:	4601      	mov	r1, r0
 8005436:	4606      	mov	r6, r0
 8005438:	4650      	mov	r0, sl
 800543a:	f001 faad 	bl	8006998 <__mcmp>
 800543e:	2800      	cmp	r0, #0
 8005440:	f73f aead 	bgt.w	800519e <_dtoa_r+0xa1e>
 8005444:	e722      	b.n	800528c <_dtoa_r+0xb0c>
 8005446:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800544a:	2602      	movs	r6, #2
 800544c:	ed8d 7b00 	vstr	d7, [sp]
 8005450:	f7ff bb02 	b.w	8004a58 <_dtoa_r+0x2d8>
 8005454:	40140000 	.word	0x40140000
 8005458:	08007c90 	.word	0x08007c90
 800545c:	08007c68 	.word	0x08007c68
 8005460:	401c0000 	.word	0x401c0000
 8005464:	40240000 	.word	0x40240000
 8005468:	3fe00000 	.word	0x3fe00000
 800546c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800546e:	2b00      	cmp	r3, #0
 8005470:	f43f af1d 	beq.w	80052ae <_dtoa_r+0xb2e>
 8005474:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8005476:	2c00      	cmp	r4, #0
 8005478:	f77f aba8 	ble.w	8004bcc <_dtoa_r+0x44c>
 800547c:	2200      	movs	r2, #0
 800547e:	4b45      	ldr	r3, [pc, #276]	; (8005594 <_dtoa_r+0xe14>)
 8005480:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005484:	f7fb fb58 	bl	8000b38 <__aeabi_dmul>
 8005488:	e9cd 0100 	strd	r0, r1, [sp]
 800548c:	1c70      	adds	r0, r6, #1
 800548e:	f7fb fae9 	bl	8000a64 <__aeabi_i2d>
 8005492:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005496:	f7fb fb4f 	bl	8000b38 <__aeabi_dmul>
 800549a:	4b3f      	ldr	r3, [pc, #252]	; (8005598 <_dtoa_r+0xe18>)
 800549c:	2200      	movs	r2, #0
 800549e:	f7fb f995 	bl	80007cc <__adddf3>
 80054a2:	9b06      	ldr	r3, [sp, #24]
 80054a4:	9412      	str	r4, [sp, #72]	; 0x48
 80054a6:	3b01      	subs	r3, #1
 80054a8:	4606      	mov	r6, r0
 80054aa:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80054ae:	9316      	str	r3, [sp, #88]	; 0x58
 80054b0:	f7ff baf3 	b.w	8004a9a <_dtoa_r+0x31a>
 80054b4:	4651      	mov	r1, sl
 80054b6:	2201      	movs	r2, #1
 80054b8:	4648      	mov	r0, r9
 80054ba:	f001 fa17 	bl	80068ec <__lshift>
 80054be:	4631      	mov	r1, r6
 80054c0:	4682      	mov	sl, r0
 80054c2:	f001 fa69 	bl	8006998 <__mcmp>
 80054c6:	2800      	cmp	r0, #0
 80054c8:	dd3b      	ble.n	8005542 <_dtoa_r+0xdc2>
 80054ca:	9b00      	ldr	r3, [sp, #0]
 80054cc:	2b39      	cmp	r3, #57	; 0x39
 80054ce:	d003      	beq.n	80054d8 <_dtoa_r+0xd58>
 80054d0:	9b02      	ldr	r3, [sp, #8]
 80054d2:	3331      	adds	r3, #49	; 0x31
 80054d4:	9300      	str	r3, [sp, #0]
 80054d6:	e733      	b.n	8005340 <_dtoa_r+0xbc0>
 80054d8:	2239      	movs	r2, #57	; 0x39
 80054da:	9502      	str	r5, [sp, #8]
 80054dc:	703a      	strb	r2, [r7, #0]
 80054de:	4645      	mov	r5, r8
 80054e0:	e58e      	b.n	8005000 <_dtoa_r+0x880>
 80054e2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80054e6:	2000      	movs	r0, #0
 80054e8:	492c      	ldr	r1, [pc, #176]	; (800559c <_dtoa_r+0xe1c>)
 80054ea:	f7fb f96d 	bl	80007c8 <__aeabi_dsub>
 80054ee:	4632      	mov	r2, r6
 80054f0:	463b      	mov	r3, r7
 80054f2:	f7fb fdb1 	bl	8001058 <__aeabi_dcmpgt>
 80054f6:	b910      	cbnz	r0, 80054fe <_dtoa_r+0xd7e>
 80054f8:	f7ff bb68 	b.w	8004bcc <_dtoa_r+0x44c>
 80054fc:	4614      	mov	r4, r2
 80054fe:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8005502:	2b30      	cmp	r3, #48	; 0x30
 8005504:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005508:	d0f8      	beq.n	80054fc <_dtoa_r+0xd7c>
 800550a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800550c:	9306      	str	r3, [sp, #24]
 800550e:	e58d      	b.n	800502c <_dtoa_r+0x8ac>
 8005510:	46d9      	mov	r9, fp
 8005512:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005516:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800551a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800551c:	9306      	str	r3, [sp, #24]
 800551e:	e404      	b.n	8004d2a <_dtoa_r+0x5aa>
 8005520:	9b00      	ldr	r3, [sp, #0]
 8005522:	2b39      	cmp	r3, #57	; 0x39
 8005524:	4621      	mov	r1, r4
 8005526:	4632      	mov	r2, r6
 8005528:	f107 0401 	add.w	r4, r7, #1
 800552c:	465e      	mov	r6, fp
 800552e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005532:	d0d1      	beq.n	80054d8 <_dtoa_r+0xd58>
 8005534:	2a00      	cmp	r2, #0
 8005536:	f77f af03 	ble.w	8005340 <_dtoa_r+0xbc0>
 800553a:	460b      	mov	r3, r1
 800553c:	3331      	adds	r3, #49	; 0x31
 800553e:	9300      	str	r3, [sp, #0]
 8005540:	e6fe      	b.n	8005340 <_dtoa_r+0xbc0>
 8005542:	f47f aefd 	bne.w	8005340 <_dtoa_r+0xbc0>
 8005546:	9b00      	ldr	r3, [sp, #0]
 8005548:	07da      	lsls	r2, r3, #31
 800554a:	f57f aef9 	bpl.w	8005340 <_dtoa_r+0xbc0>
 800554e:	e7bc      	b.n	80054ca <_dtoa_r+0xd4a>
 8005550:	4629      	mov	r1, r5
 8005552:	2300      	movs	r3, #0
 8005554:	220a      	movs	r2, #10
 8005556:	4648      	mov	r0, r9
 8005558:	f001 f838 	bl	80065cc <__multadd>
 800555c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800555e:	2b00      	cmp	r3, #0
 8005560:	4605      	mov	r5, r0
 8005562:	dd09      	ble.n	8005578 <_dtoa_r+0xdf8>
 8005564:	9309      	str	r3, [sp, #36]	; 0x24
 8005566:	e484      	b.n	8004e72 <_dtoa_r+0x6f2>
 8005568:	9b02      	ldr	r3, [sp, #8]
 800556a:	2b02      	cmp	r3, #2
 800556c:	dc0e      	bgt.n	800558c <_dtoa_r+0xe0c>
 800556e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005570:	e507      	b.n	8004f82 <_dtoa_r+0x802>
 8005572:	2602      	movs	r6, #2
 8005574:	f7ff ba70 	b.w	8004a58 <_dtoa_r+0x2d8>
 8005578:	9b02      	ldr	r3, [sp, #8]
 800557a:	2b02      	cmp	r3, #2
 800557c:	dc06      	bgt.n	800558c <_dtoa_r+0xe0c>
 800557e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005580:	e7f0      	b.n	8005564 <_dtoa_r+0xde4>
 8005582:	f43f ac59 	beq.w	8004e38 <_dtoa_r+0x6b8>
 8005586:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800558a:	e450      	b.n	8004e2e <_dtoa_r+0x6ae>
 800558c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800558e:	9309      	str	r3, [sp, #36]	; 0x24
 8005590:	e678      	b.n	8005284 <_dtoa_r+0xb04>
 8005592:	bf00      	nop
 8005594:	40240000 	.word	0x40240000
 8005598:	401c0000 	.word	0x401c0000
 800559c:	3fe00000 	.word	0x3fe00000

080055a0 <__sflush_r>:
 80055a0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80055a4:	b29a      	uxth	r2, r3
 80055a6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80055aa:	460c      	mov	r4, r1
 80055ac:	0711      	lsls	r1, r2, #28
 80055ae:	4680      	mov	r8, r0
 80055b0:	d444      	bmi.n	800563c <__sflush_r+0x9c>
 80055b2:	6862      	ldr	r2, [r4, #4]
 80055b4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80055b8:	2a00      	cmp	r2, #0
 80055ba:	81a3      	strh	r3, [r4, #12]
 80055bc:	dd59      	ble.n	8005672 <__sflush_r+0xd2>
 80055be:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80055c0:	2d00      	cmp	r5, #0
 80055c2:	d053      	beq.n	800566c <__sflush_r+0xcc>
 80055c4:	2200      	movs	r2, #0
 80055c6:	b29b      	uxth	r3, r3
 80055c8:	f8d8 6000 	ldr.w	r6, [r8]
 80055cc:	69e1      	ldr	r1, [r4, #28]
 80055ce:	f8c8 2000 	str.w	r2, [r8]
 80055d2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80055d6:	f040 8083 	bne.w	80056e0 <__sflush_r+0x140>
 80055da:	2301      	movs	r3, #1
 80055dc:	4640      	mov	r0, r8
 80055de:	47a8      	blx	r5
 80055e0:	1c42      	adds	r2, r0, #1
 80055e2:	d04a      	beq.n	800567a <__sflush_r+0xda>
 80055e4:	89a3      	ldrh	r3, [r4, #12]
 80055e6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80055e8:	69e1      	ldr	r1, [r4, #28]
 80055ea:	075b      	lsls	r3, r3, #29
 80055ec:	d505      	bpl.n	80055fa <__sflush_r+0x5a>
 80055ee:	6862      	ldr	r2, [r4, #4]
 80055f0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80055f2:	1a80      	subs	r0, r0, r2
 80055f4:	b10b      	cbz	r3, 80055fa <__sflush_r+0x5a>
 80055f6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80055f8:	1ac0      	subs	r0, r0, r3
 80055fa:	4602      	mov	r2, r0
 80055fc:	2300      	movs	r3, #0
 80055fe:	4640      	mov	r0, r8
 8005600:	47a8      	blx	r5
 8005602:	1c47      	adds	r7, r0, #1
 8005604:	d045      	beq.n	8005692 <__sflush_r+0xf2>
 8005606:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800560a:	6922      	ldr	r2, [r4, #16]
 800560c:	6022      	str	r2, [r4, #0]
 800560e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005612:	2200      	movs	r2, #0
 8005614:	81a3      	strh	r3, [r4, #12]
 8005616:	04db      	lsls	r3, r3, #19
 8005618:	6062      	str	r2, [r4, #4]
 800561a:	d500      	bpl.n	800561e <__sflush_r+0x7e>
 800561c:	6520      	str	r0, [r4, #80]	; 0x50
 800561e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005620:	f8c8 6000 	str.w	r6, [r8]
 8005624:	b311      	cbz	r1, 800566c <__sflush_r+0xcc>
 8005626:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800562a:	4299      	cmp	r1, r3
 800562c:	d002      	beq.n	8005634 <__sflush_r+0x94>
 800562e:	4640      	mov	r0, r8
 8005630:	f000 f95e 	bl	80058f0 <_free_r>
 8005634:	2000      	movs	r0, #0
 8005636:	6320      	str	r0, [r4, #48]	; 0x30
 8005638:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800563c:	6926      	ldr	r6, [r4, #16]
 800563e:	b1ae      	cbz	r6, 800566c <__sflush_r+0xcc>
 8005640:	6825      	ldr	r5, [r4, #0]
 8005642:	6026      	str	r6, [r4, #0]
 8005644:	0792      	lsls	r2, r2, #30
 8005646:	bf0c      	ite	eq
 8005648:	6963      	ldreq	r3, [r4, #20]
 800564a:	2300      	movne	r3, #0
 800564c:	1bad      	subs	r5, r5, r6
 800564e:	60a3      	str	r3, [r4, #8]
 8005650:	e00a      	b.n	8005668 <__sflush_r+0xc8>
 8005652:	462b      	mov	r3, r5
 8005654:	4632      	mov	r2, r6
 8005656:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005658:	69e1      	ldr	r1, [r4, #28]
 800565a:	4640      	mov	r0, r8
 800565c:	47b8      	blx	r7
 800565e:	2800      	cmp	r0, #0
 8005660:	eba5 0500 	sub.w	r5, r5, r0
 8005664:	4406      	add	r6, r0
 8005666:	dd2b      	ble.n	80056c0 <__sflush_r+0x120>
 8005668:	2d00      	cmp	r5, #0
 800566a:	dcf2      	bgt.n	8005652 <__sflush_r+0xb2>
 800566c:	2000      	movs	r0, #0
 800566e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005672:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005674:	2a00      	cmp	r2, #0
 8005676:	dca2      	bgt.n	80055be <__sflush_r+0x1e>
 8005678:	e7f8      	b.n	800566c <__sflush_r+0xcc>
 800567a:	f8d8 3000 	ldr.w	r3, [r8]
 800567e:	2b00      	cmp	r3, #0
 8005680:	d0b0      	beq.n	80055e4 <__sflush_r+0x44>
 8005682:	2b1d      	cmp	r3, #29
 8005684:	d001      	beq.n	800568a <__sflush_r+0xea>
 8005686:	2b16      	cmp	r3, #22
 8005688:	d12c      	bne.n	80056e4 <__sflush_r+0x144>
 800568a:	f8c8 6000 	str.w	r6, [r8]
 800568e:	2000      	movs	r0, #0
 8005690:	e7ed      	b.n	800566e <__sflush_r+0xce>
 8005692:	f8d8 1000 	ldr.w	r1, [r8]
 8005696:	291d      	cmp	r1, #29
 8005698:	d81a      	bhi.n	80056d0 <__sflush_r+0x130>
 800569a:	4b15      	ldr	r3, [pc, #84]	; (80056f0 <__sflush_r+0x150>)
 800569c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80056a0:	40cb      	lsrs	r3, r1
 80056a2:	43db      	mvns	r3, r3
 80056a4:	f013 0301 	ands.w	r3, r3, #1
 80056a8:	d114      	bne.n	80056d4 <__sflush_r+0x134>
 80056aa:	6925      	ldr	r5, [r4, #16]
 80056ac:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80056b0:	e9c4 5300 	strd	r5, r3, [r4]
 80056b4:	04d5      	lsls	r5, r2, #19
 80056b6:	81a2      	strh	r2, [r4, #12]
 80056b8:	d5b1      	bpl.n	800561e <__sflush_r+0x7e>
 80056ba:	2900      	cmp	r1, #0
 80056bc:	d1af      	bne.n	800561e <__sflush_r+0x7e>
 80056be:	e7ad      	b.n	800561c <__sflush_r+0x7c>
 80056c0:	89a3      	ldrh	r3, [r4, #12]
 80056c2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056c6:	81a3      	strh	r3, [r4, #12]
 80056c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056cc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80056d0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80056d4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80056d8:	81a2      	strh	r2, [r4, #12]
 80056da:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056de:	e7c6      	b.n	800566e <__sflush_r+0xce>
 80056e0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80056e2:	e782      	b.n	80055ea <__sflush_r+0x4a>
 80056e4:	89a3      	ldrh	r3, [r4, #12]
 80056e6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056ea:	81a3      	strh	r3, [r4, #12]
 80056ec:	e7bf      	b.n	800566e <__sflush_r+0xce>
 80056ee:	bf00      	nop
 80056f0:	20400001 	.word	0x20400001

080056f4 <_fflush_r>:
 80056f4:	b538      	push	{r3, r4, r5, lr}
 80056f6:	460d      	mov	r5, r1
 80056f8:	4604      	mov	r4, r0
 80056fa:	b108      	cbz	r0, 8005700 <_fflush_r+0xc>
 80056fc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80056fe:	b1a3      	cbz	r3, 800572a <_fflush_r+0x36>
 8005700:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005704:	b1b8      	cbz	r0, 8005736 <_fflush_r+0x42>
 8005706:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005708:	07db      	lsls	r3, r3, #31
 800570a:	d401      	bmi.n	8005710 <_fflush_r+0x1c>
 800570c:	0581      	lsls	r1, r0, #22
 800570e:	d51a      	bpl.n	8005746 <_fflush_r+0x52>
 8005710:	4620      	mov	r0, r4
 8005712:	4629      	mov	r1, r5
 8005714:	f7ff ff44 	bl	80055a0 <__sflush_r>
 8005718:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800571a:	07da      	lsls	r2, r3, #31
 800571c:	4604      	mov	r4, r0
 800571e:	d402      	bmi.n	8005726 <_fflush_r+0x32>
 8005720:	89ab      	ldrh	r3, [r5, #12]
 8005722:	059b      	lsls	r3, r3, #22
 8005724:	d50a      	bpl.n	800573c <_fflush_r+0x48>
 8005726:	4620      	mov	r0, r4
 8005728:	bd38      	pop	{r3, r4, r5, pc}
 800572a:	f000 f83f 	bl	80057ac <__sinit>
 800572e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005732:	2800      	cmp	r0, #0
 8005734:	d1e7      	bne.n	8005706 <_fflush_r+0x12>
 8005736:	4604      	mov	r4, r0
 8005738:	4620      	mov	r0, r4
 800573a:	bd38      	pop	{r3, r4, r5, pc}
 800573c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800573e:	f000 fb87 	bl	8005e50 <__retarget_lock_release_recursive>
 8005742:	4620      	mov	r0, r4
 8005744:	bd38      	pop	{r3, r4, r5, pc}
 8005746:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005748:	f000 fb80 	bl	8005e4c <__retarget_lock_acquire_recursive>
 800574c:	e7e0      	b.n	8005710 <_fflush_r+0x1c>
 800574e:	bf00      	nop

08005750 <std>:
 8005750:	b510      	push	{r4, lr}
 8005752:	2300      	movs	r3, #0
 8005754:	4604      	mov	r4, r0
 8005756:	8181      	strh	r1, [r0, #12]
 8005758:	81c2      	strh	r2, [r0, #14]
 800575a:	e9c0 3300 	strd	r3, r3, [r0]
 800575e:	6083      	str	r3, [r0, #8]
 8005760:	6643      	str	r3, [r0, #100]	; 0x64
 8005762:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005766:	6183      	str	r3, [r0, #24]
 8005768:	4619      	mov	r1, r3
 800576a:	2208      	movs	r2, #8
 800576c:	305c      	adds	r0, #92	; 0x5c
 800576e:	f7fd f8c9 	bl	8002904 <memset>
 8005772:	4807      	ldr	r0, [pc, #28]	; (8005790 <std+0x40>)
 8005774:	4907      	ldr	r1, [pc, #28]	; (8005794 <std+0x44>)
 8005776:	4a08      	ldr	r2, [pc, #32]	; (8005798 <std+0x48>)
 8005778:	4b08      	ldr	r3, [pc, #32]	; (800579c <std+0x4c>)
 800577a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800577c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005780:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005784:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005788:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800578c:	f000 bb5a 	b.w	8005e44 <__retarget_lock_init_recursive>
 8005790:	08006f69 	.word	0x08006f69
 8005794:	08006f8d 	.word	0x08006f8d
 8005798:	08006fc9 	.word	0x08006fc9
 800579c:	08006fe9 	.word	0x08006fe9

080057a0 <_cleanup_r>:
 80057a0:	4901      	ldr	r1, [pc, #4]	; (80057a8 <_cleanup_r+0x8>)
 80057a2:	f000 bb17 	b.w	8005dd4 <_fwalk_reent>
 80057a6:	bf00      	nop
 80057a8:	08007259 	.word	0x08007259

080057ac <__sinit>:
 80057ac:	b510      	push	{r4, lr}
 80057ae:	4604      	mov	r4, r0
 80057b0:	4812      	ldr	r0, [pc, #72]	; (80057fc <__sinit+0x50>)
 80057b2:	f000 fb4b 	bl	8005e4c <__retarget_lock_acquire_recursive>
 80057b6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80057b8:	b9d2      	cbnz	r2, 80057f0 <__sinit+0x44>
 80057ba:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80057be:	4810      	ldr	r0, [pc, #64]	; (8005800 <__sinit+0x54>)
 80057c0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80057c4:	2103      	movs	r1, #3
 80057c6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80057ca:	63e0      	str	r0, [r4, #60]	; 0x3c
 80057cc:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80057d0:	6860      	ldr	r0, [r4, #4]
 80057d2:	2104      	movs	r1, #4
 80057d4:	f7ff ffbc 	bl	8005750 <std>
 80057d8:	2201      	movs	r2, #1
 80057da:	2109      	movs	r1, #9
 80057dc:	68a0      	ldr	r0, [r4, #8]
 80057de:	f7ff ffb7 	bl	8005750 <std>
 80057e2:	2202      	movs	r2, #2
 80057e4:	2112      	movs	r1, #18
 80057e6:	68e0      	ldr	r0, [r4, #12]
 80057e8:	f7ff ffb2 	bl	8005750 <std>
 80057ec:	2301      	movs	r3, #1
 80057ee:	63a3      	str	r3, [r4, #56]	; 0x38
 80057f0:	4802      	ldr	r0, [pc, #8]	; (80057fc <__sinit+0x50>)
 80057f2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80057f6:	f000 bb2b 	b.w	8005e50 <__retarget_lock_release_recursive>
 80057fa:	bf00      	nop
 80057fc:	20000c70 	.word	0x20000c70
 8005800:	080057a1 	.word	0x080057a1

08005804 <__sfp_lock_acquire>:
 8005804:	4801      	ldr	r0, [pc, #4]	; (800580c <__sfp_lock_acquire+0x8>)
 8005806:	f000 bb21 	b.w	8005e4c <__retarget_lock_acquire_recursive>
 800580a:	bf00      	nop
 800580c:	20000c84 	.word	0x20000c84

08005810 <__sfp_lock_release>:
 8005810:	4801      	ldr	r0, [pc, #4]	; (8005818 <__sfp_lock_release+0x8>)
 8005812:	f000 bb1d 	b.w	8005e50 <__retarget_lock_release_recursive>
 8005816:	bf00      	nop
 8005818:	20000c84 	.word	0x20000c84

0800581c <__libc_fini_array>:
 800581c:	b538      	push	{r3, r4, r5, lr}
 800581e:	4c0a      	ldr	r4, [pc, #40]	; (8005848 <__libc_fini_array+0x2c>)
 8005820:	4d0a      	ldr	r5, [pc, #40]	; (800584c <__libc_fini_array+0x30>)
 8005822:	1b64      	subs	r4, r4, r5
 8005824:	10a4      	asrs	r4, r4, #2
 8005826:	d00a      	beq.n	800583e <__libc_fini_array+0x22>
 8005828:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800582c:	3b01      	subs	r3, #1
 800582e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005832:	3c01      	subs	r4, #1
 8005834:	f855 3904 	ldr.w	r3, [r5], #-4
 8005838:	4798      	blx	r3
 800583a:	2c00      	cmp	r4, #0
 800583c:	d1f9      	bne.n	8005832 <__libc_fini_array+0x16>
 800583e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005842:	f001 befd 	b.w	8007640 <_fini>
 8005846:	bf00      	nop
 8005848:	08007e8c 	.word	0x08007e8c
 800584c:	08007e88 	.word	0x08007e88

08005850 <_malloc_trim_r>:
 8005850:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005852:	4f24      	ldr	r7, [pc, #144]	; (80058e4 <_malloc_trim_r+0x94>)
 8005854:	460c      	mov	r4, r1
 8005856:	4606      	mov	r6, r0
 8005858:	f000 fe7c 	bl	8006554 <__malloc_lock>
 800585c:	68bb      	ldr	r3, [r7, #8]
 800585e:	685d      	ldr	r5, [r3, #4]
 8005860:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005864:	310f      	adds	r1, #15
 8005866:	f025 0503 	bic.w	r5, r5, #3
 800586a:	4429      	add	r1, r5
 800586c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005870:	f021 010f 	bic.w	r1, r1, #15
 8005874:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005878:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800587c:	db07      	blt.n	800588e <_malloc_trim_r+0x3e>
 800587e:	2100      	movs	r1, #0
 8005880:	4630      	mov	r0, r6
 8005882:	f001 fb5f 	bl	8006f44 <_sbrk_r>
 8005886:	68bb      	ldr	r3, [r7, #8]
 8005888:	442b      	add	r3, r5
 800588a:	4298      	cmp	r0, r3
 800588c:	d004      	beq.n	8005898 <_malloc_trim_r+0x48>
 800588e:	4630      	mov	r0, r6
 8005890:	f000 fe66 	bl	8006560 <__malloc_unlock>
 8005894:	2000      	movs	r0, #0
 8005896:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005898:	4261      	negs	r1, r4
 800589a:	4630      	mov	r0, r6
 800589c:	f001 fb52 	bl	8006f44 <_sbrk_r>
 80058a0:	3001      	adds	r0, #1
 80058a2:	d00d      	beq.n	80058c0 <_malloc_trim_r+0x70>
 80058a4:	4b10      	ldr	r3, [pc, #64]	; (80058e8 <_malloc_trim_r+0x98>)
 80058a6:	68ba      	ldr	r2, [r7, #8]
 80058a8:	6819      	ldr	r1, [r3, #0]
 80058aa:	1b2d      	subs	r5, r5, r4
 80058ac:	f045 0501 	orr.w	r5, r5, #1
 80058b0:	4630      	mov	r0, r6
 80058b2:	1b09      	subs	r1, r1, r4
 80058b4:	6055      	str	r5, [r2, #4]
 80058b6:	6019      	str	r1, [r3, #0]
 80058b8:	f000 fe52 	bl	8006560 <__malloc_unlock>
 80058bc:	2001      	movs	r0, #1
 80058be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80058c0:	2100      	movs	r1, #0
 80058c2:	4630      	mov	r0, r6
 80058c4:	f001 fb3e 	bl	8006f44 <_sbrk_r>
 80058c8:	68ba      	ldr	r2, [r7, #8]
 80058ca:	1a83      	subs	r3, r0, r2
 80058cc:	2b0f      	cmp	r3, #15
 80058ce:	ddde      	ble.n	800588e <_malloc_trim_r+0x3e>
 80058d0:	4c06      	ldr	r4, [pc, #24]	; (80058ec <_malloc_trim_r+0x9c>)
 80058d2:	4905      	ldr	r1, [pc, #20]	; (80058e8 <_malloc_trim_r+0x98>)
 80058d4:	6824      	ldr	r4, [r4, #0]
 80058d6:	f043 0301 	orr.w	r3, r3, #1
 80058da:	1b00      	subs	r0, r0, r4
 80058dc:	6053      	str	r3, [r2, #4]
 80058de:	6008      	str	r0, [r1, #0]
 80058e0:	e7d5      	b.n	800588e <_malloc_trim_r+0x3e>
 80058e2:	bf00      	nop
 80058e4:	2000044c 	.word	0x2000044c
 80058e8:	20000b5c 	.word	0x20000b5c
 80058ec:	20000854 	.word	0x20000854

080058f0 <_free_r>:
 80058f0:	2900      	cmp	r1, #0
 80058f2:	d053      	beq.n	800599c <_free_r+0xac>
 80058f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80058f6:	460c      	mov	r4, r1
 80058f8:	4606      	mov	r6, r0
 80058fa:	f000 fe2b 	bl	8006554 <__malloc_lock>
 80058fe:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005902:	4f71      	ldr	r7, [pc, #452]	; (8005ac8 <_free_r+0x1d8>)
 8005904:	f02c 0101 	bic.w	r1, ip, #1
 8005908:	f1a4 0508 	sub.w	r5, r4, #8
 800590c:	186b      	adds	r3, r5, r1
 800590e:	68b8      	ldr	r0, [r7, #8]
 8005910:	685a      	ldr	r2, [r3, #4]
 8005912:	4298      	cmp	r0, r3
 8005914:	f022 0203 	bic.w	r2, r2, #3
 8005918:	d053      	beq.n	80059c2 <_free_r+0xd2>
 800591a:	f01c 0f01 	tst.w	ip, #1
 800591e:	605a      	str	r2, [r3, #4]
 8005920:	eb03 0002 	add.w	r0, r3, r2
 8005924:	d13b      	bne.n	800599e <_free_r+0xae>
 8005926:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800592a:	6840      	ldr	r0, [r0, #4]
 800592c:	eba5 050c 	sub.w	r5, r5, ip
 8005930:	f107 0e08 	add.w	lr, r7, #8
 8005934:	68ac      	ldr	r4, [r5, #8]
 8005936:	4574      	cmp	r4, lr
 8005938:	4461      	add	r1, ip
 800593a:	f000 0001 	and.w	r0, r0, #1
 800593e:	d075      	beq.n	8005a2c <_free_r+0x13c>
 8005940:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005944:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005948:	f8cc 4008 	str.w	r4, [ip, #8]
 800594c:	b360      	cbz	r0, 80059a8 <_free_r+0xb8>
 800594e:	f041 0301 	orr.w	r3, r1, #1
 8005952:	606b      	str	r3, [r5, #4]
 8005954:	5069      	str	r1, [r5, r1]
 8005956:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800595a:	d350      	bcc.n	80059fe <_free_r+0x10e>
 800595c:	0a4b      	lsrs	r3, r1, #9
 800595e:	2b04      	cmp	r3, #4
 8005960:	d870      	bhi.n	8005a44 <_free_r+0x154>
 8005962:	098b      	lsrs	r3, r1, #6
 8005964:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005968:	00e4      	lsls	r4, r4, #3
 800596a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800596e:	1938      	adds	r0, r7, r4
 8005970:	593b      	ldr	r3, [r7, r4]
 8005972:	3808      	subs	r0, #8
 8005974:	4298      	cmp	r0, r3
 8005976:	d078      	beq.n	8005a6a <_free_r+0x17a>
 8005978:	685a      	ldr	r2, [r3, #4]
 800597a:	f022 0203 	bic.w	r2, r2, #3
 800597e:	428a      	cmp	r2, r1
 8005980:	d971      	bls.n	8005a66 <_free_r+0x176>
 8005982:	689b      	ldr	r3, [r3, #8]
 8005984:	4298      	cmp	r0, r3
 8005986:	d1f7      	bne.n	8005978 <_free_r+0x88>
 8005988:	68c3      	ldr	r3, [r0, #12]
 800598a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800598e:	609d      	str	r5, [r3, #8]
 8005990:	60c5      	str	r5, [r0, #12]
 8005992:	4630      	mov	r0, r6
 8005994:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005998:	f000 bde2 	b.w	8006560 <__malloc_unlock>
 800599c:	4770      	bx	lr
 800599e:	6840      	ldr	r0, [r0, #4]
 80059a0:	f000 0001 	and.w	r0, r0, #1
 80059a4:	2800      	cmp	r0, #0
 80059a6:	d1d2      	bne.n	800594e <_free_r+0x5e>
 80059a8:	6898      	ldr	r0, [r3, #8]
 80059aa:	4c48      	ldr	r4, [pc, #288]	; (8005acc <_free_r+0x1dc>)
 80059ac:	4411      	add	r1, r2
 80059ae:	42a0      	cmp	r0, r4
 80059b0:	f041 0201 	orr.w	r2, r1, #1
 80059b4:	d062      	beq.n	8005a7c <_free_r+0x18c>
 80059b6:	68db      	ldr	r3, [r3, #12]
 80059b8:	60c3      	str	r3, [r0, #12]
 80059ba:	6098      	str	r0, [r3, #8]
 80059bc:	606a      	str	r2, [r5, #4]
 80059be:	5069      	str	r1, [r5, r1]
 80059c0:	e7c9      	b.n	8005956 <_free_r+0x66>
 80059c2:	f01c 0f01 	tst.w	ip, #1
 80059c6:	440a      	add	r2, r1
 80059c8:	d107      	bne.n	80059da <_free_r+0xea>
 80059ca:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80059ce:	1aed      	subs	r5, r5, r3
 80059d0:	441a      	add	r2, r3
 80059d2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80059d6:	60cb      	str	r3, [r1, #12]
 80059d8:	6099      	str	r1, [r3, #8]
 80059da:	4b3d      	ldr	r3, [pc, #244]	; (8005ad0 <_free_r+0x1e0>)
 80059dc:	681b      	ldr	r3, [r3, #0]
 80059de:	f042 0101 	orr.w	r1, r2, #1
 80059e2:	4293      	cmp	r3, r2
 80059e4:	6069      	str	r1, [r5, #4]
 80059e6:	60bd      	str	r5, [r7, #8]
 80059e8:	d804      	bhi.n	80059f4 <_free_r+0x104>
 80059ea:	4b3a      	ldr	r3, [pc, #232]	; (8005ad4 <_free_r+0x1e4>)
 80059ec:	4630      	mov	r0, r6
 80059ee:	6819      	ldr	r1, [r3, #0]
 80059f0:	f7ff ff2e 	bl	8005850 <_malloc_trim_r>
 80059f4:	4630      	mov	r0, r6
 80059f6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80059fa:	f000 bdb1 	b.w	8006560 <__malloc_unlock>
 80059fe:	08c9      	lsrs	r1, r1, #3
 8005a00:	6878      	ldr	r0, [r7, #4]
 8005a02:	1c4a      	adds	r2, r1, #1
 8005a04:	2301      	movs	r3, #1
 8005a06:	1089      	asrs	r1, r1, #2
 8005a08:	408b      	lsls	r3, r1
 8005a0a:	4303      	orrs	r3, r0
 8005a0c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005a10:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005a14:	607b      	str	r3, [r7, #4]
 8005a16:	3908      	subs	r1, #8
 8005a18:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005a1c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005a20:	60c5      	str	r5, [r0, #12]
 8005a22:	4630      	mov	r0, r6
 8005a24:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005a28:	f000 bd9a 	b.w	8006560 <__malloc_unlock>
 8005a2c:	2800      	cmp	r0, #0
 8005a2e:	d145      	bne.n	8005abc <_free_r+0x1cc>
 8005a30:	440a      	add	r2, r1
 8005a32:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005a36:	f042 0001 	orr.w	r0, r2, #1
 8005a3a:	60cb      	str	r3, [r1, #12]
 8005a3c:	6099      	str	r1, [r3, #8]
 8005a3e:	6068      	str	r0, [r5, #4]
 8005a40:	50aa      	str	r2, [r5, r2]
 8005a42:	e7d7      	b.n	80059f4 <_free_r+0x104>
 8005a44:	2b14      	cmp	r3, #20
 8005a46:	d908      	bls.n	8005a5a <_free_r+0x16a>
 8005a48:	2b54      	cmp	r3, #84	; 0x54
 8005a4a:	d81e      	bhi.n	8005a8a <_free_r+0x19a>
 8005a4c:	0b0b      	lsrs	r3, r1, #12
 8005a4e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005a52:	00e4      	lsls	r4, r4, #3
 8005a54:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005a58:	e789      	b.n	800596e <_free_r+0x7e>
 8005a5a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005a5e:	00e4      	lsls	r4, r4, #3
 8005a60:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005a64:	e783      	b.n	800596e <_free_r+0x7e>
 8005a66:	4618      	mov	r0, r3
 8005a68:	e78e      	b.n	8005988 <_free_r+0x98>
 8005a6a:	1093      	asrs	r3, r2, #2
 8005a6c:	6879      	ldr	r1, [r7, #4]
 8005a6e:	2201      	movs	r2, #1
 8005a70:	fa02 f303 	lsl.w	r3, r2, r3
 8005a74:	430b      	orrs	r3, r1
 8005a76:	607b      	str	r3, [r7, #4]
 8005a78:	4603      	mov	r3, r0
 8005a7a:	e786      	b.n	800598a <_free_r+0x9a>
 8005a7c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005a80:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005a84:	606a      	str	r2, [r5, #4]
 8005a86:	5069      	str	r1, [r5, r1]
 8005a88:	e7b4      	b.n	80059f4 <_free_r+0x104>
 8005a8a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005a8e:	d806      	bhi.n	8005a9e <_free_r+0x1ae>
 8005a90:	0bcb      	lsrs	r3, r1, #15
 8005a92:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005a96:	00e4      	lsls	r4, r4, #3
 8005a98:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005a9c:	e767      	b.n	800596e <_free_r+0x7e>
 8005a9e:	f240 5254 	movw	r2, #1364	; 0x554
 8005aa2:	4293      	cmp	r3, r2
 8005aa4:	d806      	bhi.n	8005ab4 <_free_r+0x1c4>
 8005aa6:	0c8b      	lsrs	r3, r1, #18
 8005aa8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005aac:	00e4      	lsls	r4, r4, #3
 8005aae:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005ab2:	e75c      	b.n	800596e <_free_r+0x7e>
 8005ab4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005ab8:	227e      	movs	r2, #126	; 0x7e
 8005aba:	e758      	b.n	800596e <_free_r+0x7e>
 8005abc:	f041 0201 	orr.w	r2, r1, #1
 8005ac0:	606a      	str	r2, [r5, #4]
 8005ac2:	6019      	str	r1, [r3, #0]
 8005ac4:	e796      	b.n	80059f4 <_free_r+0x104>
 8005ac6:	bf00      	nop
 8005ac8:	2000044c 	.word	0x2000044c
 8005acc:	20000454 	.word	0x20000454
 8005ad0:	20000858 	.word	0x20000858
 8005ad4:	20000b8c 	.word	0x20000b8c

08005ad8 <__sfvwrite_r>:
 8005ad8:	6893      	ldr	r3, [r2, #8]
 8005ada:	2b00      	cmp	r3, #0
 8005adc:	f000 80e4 	beq.w	8005ca8 <__sfvwrite_r+0x1d0>
 8005ae0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005ae4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005ae8:	b29b      	uxth	r3, r3
 8005aea:	460c      	mov	r4, r1
 8005aec:	0719      	lsls	r1, r3, #28
 8005aee:	b083      	sub	sp, #12
 8005af0:	4682      	mov	sl, r0
 8005af2:	4690      	mov	r8, r2
 8005af4:	d535      	bpl.n	8005b62 <__sfvwrite_r+0x8a>
 8005af6:	6922      	ldr	r2, [r4, #16]
 8005af8:	b39a      	cbz	r2, 8005b62 <__sfvwrite_r+0x8a>
 8005afa:	f013 0202 	ands.w	r2, r3, #2
 8005afe:	f8d8 6000 	ldr.w	r6, [r8]
 8005b02:	d03d      	beq.n	8005b80 <__sfvwrite_r+0xa8>
 8005b04:	2700      	movs	r7, #0
 8005b06:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005b0a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005b0e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005dd0 <__sfvwrite_r+0x2f8>
 8005b12:	463d      	mov	r5, r7
 8005b14:	454d      	cmp	r5, r9
 8005b16:	462b      	mov	r3, r5
 8005b18:	463a      	mov	r2, r7
 8005b1a:	bf28      	it	cs
 8005b1c:	464b      	movcs	r3, r9
 8005b1e:	4661      	mov	r1, ip
 8005b20:	4650      	mov	r0, sl
 8005b22:	b1d5      	cbz	r5, 8005b5a <__sfvwrite_r+0x82>
 8005b24:	47d8      	blx	fp
 8005b26:	2800      	cmp	r0, #0
 8005b28:	f340 80c6 	ble.w	8005cb8 <__sfvwrite_r+0x1e0>
 8005b2c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005b30:	1a1b      	subs	r3, r3, r0
 8005b32:	4407      	add	r7, r0
 8005b34:	1a2d      	subs	r5, r5, r0
 8005b36:	f8c8 3008 	str.w	r3, [r8, #8]
 8005b3a:	2b00      	cmp	r3, #0
 8005b3c:	f000 80b0 	beq.w	8005ca0 <__sfvwrite_r+0x1c8>
 8005b40:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005b44:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005b48:	454d      	cmp	r5, r9
 8005b4a:	462b      	mov	r3, r5
 8005b4c:	463a      	mov	r2, r7
 8005b4e:	bf28      	it	cs
 8005b50:	464b      	movcs	r3, r9
 8005b52:	4661      	mov	r1, ip
 8005b54:	4650      	mov	r0, sl
 8005b56:	2d00      	cmp	r5, #0
 8005b58:	d1e4      	bne.n	8005b24 <__sfvwrite_r+0x4c>
 8005b5a:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005b5e:	3608      	adds	r6, #8
 8005b60:	e7d8      	b.n	8005b14 <__sfvwrite_r+0x3c>
 8005b62:	4621      	mov	r1, r4
 8005b64:	4650      	mov	r0, sl
 8005b66:	f7fe fd03 	bl	8004570 <__swsetup_r>
 8005b6a:	2800      	cmp	r0, #0
 8005b6c:	f040 812a 	bne.w	8005dc4 <__sfvwrite_r+0x2ec>
 8005b70:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b74:	f8d8 6000 	ldr.w	r6, [r8]
 8005b78:	b29b      	uxth	r3, r3
 8005b7a:	f013 0202 	ands.w	r2, r3, #2
 8005b7e:	d1c1      	bne.n	8005b04 <__sfvwrite_r+0x2c>
 8005b80:	f013 0901 	ands.w	r9, r3, #1
 8005b84:	d15d      	bne.n	8005c42 <__sfvwrite_r+0x16a>
 8005b86:	68a7      	ldr	r7, [r4, #8]
 8005b88:	6820      	ldr	r0, [r4, #0]
 8005b8a:	464d      	mov	r5, r9
 8005b8c:	2d00      	cmp	r5, #0
 8005b8e:	d054      	beq.n	8005c3a <__sfvwrite_r+0x162>
 8005b90:	059a      	lsls	r2, r3, #22
 8005b92:	f140 809b 	bpl.w	8005ccc <__sfvwrite_r+0x1f4>
 8005b96:	42af      	cmp	r7, r5
 8005b98:	46bb      	mov	fp, r7
 8005b9a:	f200 80d8 	bhi.w	8005d4e <__sfvwrite_r+0x276>
 8005b9e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005ba2:	d02f      	beq.n	8005c04 <__sfvwrite_r+0x12c>
 8005ba4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005ba8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005bac:	eba0 0b01 	sub.w	fp, r0, r1
 8005bb0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005bb4:	1c68      	adds	r0, r5, #1
 8005bb6:	107f      	asrs	r7, r7, #1
 8005bb8:	4458      	add	r0, fp
 8005bba:	42b8      	cmp	r0, r7
 8005bbc:	463a      	mov	r2, r7
 8005bbe:	bf84      	itt	hi
 8005bc0:	4607      	movhi	r7, r0
 8005bc2:	463a      	movhi	r2, r7
 8005bc4:	055b      	lsls	r3, r3, #21
 8005bc6:	f140 80d3 	bpl.w	8005d70 <__sfvwrite_r+0x298>
 8005bca:	4611      	mov	r1, r2
 8005bcc:	4650      	mov	r0, sl
 8005bce:	f000 f9b9 	bl	8005f44 <_malloc_r>
 8005bd2:	2800      	cmp	r0, #0
 8005bd4:	f000 80f0 	beq.w	8005db8 <__sfvwrite_r+0x2e0>
 8005bd8:	465a      	mov	r2, fp
 8005bda:	6921      	ldr	r1, [r4, #16]
 8005bdc:	9001      	str	r0, [sp, #4]
 8005bde:	f7fa fc8f 	bl	8000500 <memcpy>
 8005be2:	89a2      	ldrh	r2, [r4, #12]
 8005be4:	9b01      	ldr	r3, [sp, #4]
 8005be6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005bea:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005bee:	81a2      	strh	r2, [r4, #12]
 8005bf0:	eba7 020b 	sub.w	r2, r7, fp
 8005bf4:	eb03 000b 	add.w	r0, r3, fp
 8005bf8:	6167      	str	r7, [r4, #20]
 8005bfa:	6123      	str	r3, [r4, #16]
 8005bfc:	6020      	str	r0, [r4, #0]
 8005bfe:	60a2      	str	r2, [r4, #8]
 8005c00:	462f      	mov	r7, r5
 8005c02:	46ab      	mov	fp, r5
 8005c04:	465a      	mov	r2, fp
 8005c06:	4649      	mov	r1, r9
 8005c08:	f000 fc40 	bl	800648c <memmove>
 8005c0c:	68a2      	ldr	r2, [r4, #8]
 8005c0e:	6823      	ldr	r3, [r4, #0]
 8005c10:	1bd2      	subs	r2, r2, r7
 8005c12:	445b      	add	r3, fp
 8005c14:	462f      	mov	r7, r5
 8005c16:	60a2      	str	r2, [r4, #8]
 8005c18:	6023      	str	r3, [r4, #0]
 8005c1a:	2500      	movs	r5, #0
 8005c1c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c20:	1bdb      	subs	r3, r3, r7
 8005c22:	44b9      	add	r9, r7
 8005c24:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c28:	2b00      	cmp	r3, #0
 8005c2a:	d039      	beq.n	8005ca0 <__sfvwrite_r+0x1c8>
 8005c2c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c30:	68a7      	ldr	r7, [r4, #8]
 8005c32:	6820      	ldr	r0, [r4, #0]
 8005c34:	b29b      	uxth	r3, r3
 8005c36:	2d00      	cmp	r5, #0
 8005c38:	d1aa      	bne.n	8005b90 <__sfvwrite_r+0xb8>
 8005c3a:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005c3e:	3608      	adds	r6, #8
 8005c40:	e7a4      	b.n	8005b8c <__sfvwrite_r+0xb4>
 8005c42:	4633      	mov	r3, r6
 8005c44:	4691      	mov	r9, r2
 8005c46:	4610      	mov	r0, r2
 8005c48:	4617      	mov	r7, r2
 8005c4a:	464e      	mov	r6, r9
 8005c4c:	469b      	mov	fp, r3
 8005c4e:	2f00      	cmp	r7, #0
 8005c50:	d06b      	beq.n	8005d2a <__sfvwrite_r+0x252>
 8005c52:	2800      	cmp	r0, #0
 8005c54:	d071      	beq.n	8005d3a <__sfvwrite_r+0x262>
 8005c56:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005c5a:	6820      	ldr	r0, [r4, #0]
 8005c5c:	45b9      	cmp	r9, r7
 8005c5e:	464b      	mov	r3, r9
 8005c60:	bf28      	it	cs
 8005c62:	463b      	movcs	r3, r7
 8005c64:	4288      	cmp	r0, r1
 8005c66:	d903      	bls.n	8005c70 <__sfvwrite_r+0x198>
 8005c68:	68a5      	ldr	r5, [r4, #8]
 8005c6a:	4415      	add	r5, r2
 8005c6c:	42ab      	cmp	r3, r5
 8005c6e:	dc71      	bgt.n	8005d54 <__sfvwrite_r+0x27c>
 8005c70:	429a      	cmp	r2, r3
 8005c72:	f300 8093 	bgt.w	8005d9c <__sfvwrite_r+0x2c4>
 8005c76:	4613      	mov	r3, r2
 8005c78:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005c7a:	69e1      	ldr	r1, [r4, #28]
 8005c7c:	4632      	mov	r2, r6
 8005c7e:	4650      	mov	r0, sl
 8005c80:	47a8      	blx	r5
 8005c82:	1e05      	subs	r5, r0, #0
 8005c84:	dd18      	ble.n	8005cb8 <__sfvwrite_r+0x1e0>
 8005c86:	ebb9 0905 	subs.w	r9, r9, r5
 8005c8a:	d00f      	beq.n	8005cac <__sfvwrite_r+0x1d4>
 8005c8c:	2001      	movs	r0, #1
 8005c8e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c92:	1b5b      	subs	r3, r3, r5
 8005c94:	442e      	add	r6, r5
 8005c96:	1b7f      	subs	r7, r7, r5
 8005c98:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c9c:	2b00      	cmp	r3, #0
 8005c9e:	d1d6      	bne.n	8005c4e <__sfvwrite_r+0x176>
 8005ca0:	2000      	movs	r0, #0
 8005ca2:	b003      	add	sp, #12
 8005ca4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ca8:	2000      	movs	r0, #0
 8005caa:	4770      	bx	lr
 8005cac:	4621      	mov	r1, r4
 8005cae:	4650      	mov	r0, sl
 8005cb0:	f7ff fd20 	bl	80056f4 <_fflush_r>
 8005cb4:	2800      	cmp	r0, #0
 8005cb6:	d0ea      	beq.n	8005c8e <__sfvwrite_r+0x1b6>
 8005cb8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005cbc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005cc0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005cc4:	81a3      	strh	r3, [r4, #12]
 8005cc6:	b003      	add	sp, #12
 8005cc8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ccc:	6923      	ldr	r3, [r4, #16]
 8005cce:	4283      	cmp	r3, r0
 8005cd0:	d315      	bcc.n	8005cfe <__sfvwrite_r+0x226>
 8005cd2:	6961      	ldr	r1, [r4, #20]
 8005cd4:	42a9      	cmp	r1, r5
 8005cd6:	d812      	bhi.n	8005cfe <__sfvwrite_r+0x226>
 8005cd8:	4b3c      	ldr	r3, [pc, #240]	; (8005dcc <__sfvwrite_r+0x2f4>)
 8005cda:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005cdc:	429d      	cmp	r5, r3
 8005cde:	bf94      	ite	ls
 8005ce0:	462b      	movls	r3, r5
 8005ce2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005ce6:	464a      	mov	r2, r9
 8005ce8:	fb93 f3f1 	sdiv	r3, r3, r1
 8005cec:	4650      	mov	r0, sl
 8005cee:	fb01 f303 	mul.w	r3, r1, r3
 8005cf2:	69e1      	ldr	r1, [r4, #28]
 8005cf4:	47b8      	blx	r7
 8005cf6:	1e07      	subs	r7, r0, #0
 8005cf8:	ddde      	ble.n	8005cb8 <__sfvwrite_r+0x1e0>
 8005cfa:	1bed      	subs	r5, r5, r7
 8005cfc:	e78e      	b.n	8005c1c <__sfvwrite_r+0x144>
 8005cfe:	42af      	cmp	r7, r5
 8005d00:	bf28      	it	cs
 8005d02:	462f      	movcs	r7, r5
 8005d04:	463a      	mov	r2, r7
 8005d06:	4649      	mov	r1, r9
 8005d08:	f000 fbc0 	bl	800648c <memmove>
 8005d0c:	68a3      	ldr	r3, [r4, #8]
 8005d0e:	6822      	ldr	r2, [r4, #0]
 8005d10:	1bdb      	subs	r3, r3, r7
 8005d12:	443a      	add	r2, r7
 8005d14:	60a3      	str	r3, [r4, #8]
 8005d16:	6022      	str	r2, [r4, #0]
 8005d18:	2b00      	cmp	r3, #0
 8005d1a:	d1ee      	bne.n	8005cfa <__sfvwrite_r+0x222>
 8005d1c:	4621      	mov	r1, r4
 8005d1e:	4650      	mov	r0, sl
 8005d20:	f7ff fce8 	bl	80056f4 <_fflush_r>
 8005d24:	2800      	cmp	r0, #0
 8005d26:	d0e8      	beq.n	8005cfa <__sfvwrite_r+0x222>
 8005d28:	e7c6      	b.n	8005cb8 <__sfvwrite_r+0x1e0>
 8005d2a:	f10b 0308 	add.w	r3, fp, #8
 8005d2e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005d32:	469b      	mov	fp, r3
 8005d34:	3308      	adds	r3, #8
 8005d36:	2f00      	cmp	r7, #0
 8005d38:	d0f9      	beq.n	8005d2e <__sfvwrite_r+0x256>
 8005d3a:	463a      	mov	r2, r7
 8005d3c:	210a      	movs	r1, #10
 8005d3e:	4630      	mov	r0, r6
 8005d40:	f7fa fcee 	bl	8000720 <memchr>
 8005d44:	b338      	cbz	r0, 8005d96 <__sfvwrite_r+0x2be>
 8005d46:	3001      	adds	r0, #1
 8005d48:	eba0 0906 	sub.w	r9, r0, r6
 8005d4c:	e783      	b.n	8005c56 <__sfvwrite_r+0x17e>
 8005d4e:	462f      	mov	r7, r5
 8005d50:	46ab      	mov	fp, r5
 8005d52:	e757      	b.n	8005c04 <__sfvwrite_r+0x12c>
 8005d54:	4631      	mov	r1, r6
 8005d56:	462a      	mov	r2, r5
 8005d58:	f000 fb98 	bl	800648c <memmove>
 8005d5c:	6823      	ldr	r3, [r4, #0]
 8005d5e:	442b      	add	r3, r5
 8005d60:	6023      	str	r3, [r4, #0]
 8005d62:	4621      	mov	r1, r4
 8005d64:	4650      	mov	r0, sl
 8005d66:	f7ff fcc5 	bl	80056f4 <_fflush_r>
 8005d6a:	2800      	cmp	r0, #0
 8005d6c:	d08b      	beq.n	8005c86 <__sfvwrite_r+0x1ae>
 8005d6e:	e7a3      	b.n	8005cb8 <__sfvwrite_r+0x1e0>
 8005d70:	4650      	mov	r0, sl
 8005d72:	f000 ff05 	bl	8006b80 <_realloc_r>
 8005d76:	4603      	mov	r3, r0
 8005d78:	2800      	cmp	r0, #0
 8005d7a:	f47f af39 	bne.w	8005bf0 <__sfvwrite_r+0x118>
 8005d7e:	6921      	ldr	r1, [r4, #16]
 8005d80:	4650      	mov	r0, sl
 8005d82:	f7ff fdb5 	bl	80058f0 <_free_r>
 8005d86:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d8a:	220c      	movs	r2, #12
 8005d8c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005d90:	f8ca 2000 	str.w	r2, [sl]
 8005d94:	e792      	b.n	8005cbc <__sfvwrite_r+0x1e4>
 8005d96:	f107 0901 	add.w	r9, r7, #1
 8005d9a:	e75c      	b.n	8005c56 <__sfvwrite_r+0x17e>
 8005d9c:	461a      	mov	r2, r3
 8005d9e:	4631      	mov	r1, r6
 8005da0:	9301      	str	r3, [sp, #4]
 8005da2:	f000 fb73 	bl	800648c <memmove>
 8005da6:	9b01      	ldr	r3, [sp, #4]
 8005da8:	68a1      	ldr	r1, [r4, #8]
 8005daa:	6822      	ldr	r2, [r4, #0]
 8005dac:	1ac9      	subs	r1, r1, r3
 8005dae:	441a      	add	r2, r3
 8005db0:	60a1      	str	r1, [r4, #8]
 8005db2:	6022      	str	r2, [r4, #0]
 8005db4:	461d      	mov	r5, r3
 8005db6:	e766      	b.n	8005c86 <__sfvwrite_r+0x1ae>
 8005db8:	230c      	movs	r3, #12
 8005dba:	f8ca 3000 	str.w	r3, [sl]
 8005dbe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005dc2:	e77b      	b.n	8005cbc <__sfvwrite_r+0x1e4>
 8005dc4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005dc8:	e76b      	b.n	8005ca2 <__sfvwrite_r+0x1ca>
 8005dca:	bf00      	nop
 8005dcc:	7ffffffe 	.word	0x7ffffffe
 8005dd0:	7ffffc00 	.word	0x7ffffc00

08005dd4 <_fwalk_reent>:
 8005dd4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005dd8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005ddc:	d01f      	beq.n	8005e1e <_fwalk_reent+0x4a>
 8005dde:	4688      	mov	r8, r1
 8005de0:	4606      	mov	r6, r0
 8005de2:	f04f 0900 	mov.w	r9, #0
 8005de6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005dea:	3d01      	subs	r5, #1
 8005dec:	d411      	bmi.n	8005e12 <_fwalk_reent+0x3e>
 8005dee:	89a3      	ldrh	r3, [r4, #12]
 8005df0:	2b01      	cmp	r3, #1
 8005df2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005df6:	4621      	mov	r1, r4
 8005df8:	4630      	mov	r0, r6
 8005dfa:	d906      	bls.n	8005e0a <_fwalk_reent+0x36>
 8005dfc:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005e00:	3301      	adds	r3, #1
 8005e02:	d002      	beq.n	8005e0a <_fwalk_reent+0x36>
 8005e04:	47c0      	blx	r8
 8005e06:	ea49 0900 	orr.w	r9, r9, r0
 8005e0a:	1c6b      	adds	r3, r5, #1
 8005e0c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005e10:	d1ed      	bne.n	8005dee <_fwalk_reent+0x1a>
 8005e12:	683f      	ldr	r7, [r7, #0]
 8005e14:	2f00      	cmp	r7, #0
 8005e16:	d1e6      	bne.n	8005de6 <_fwalk_reent+0x12>
 8005e18:	4648      	mov	r0, r9
 8005e1a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005e1e:	46b9      	mov	r9, r7
 8005e20:	4648      	mov	r0, r9
 8005e22:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005e26:	bf00      	nop

08005e28 <_localeconv_r>:
 8005e28:	4a04      	ldr	r2, [pc, #16]	; (8005e3c <_localeconv_r+0x14>)
 8005e2a:	4b05      	ldr	r3, [pc, #20]	; (8005e40 <_localeconv_r+0x18>)
 8005e2c:	6812      	ldr	r2, [r2, #0]
 8005e2e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005e30:	2800      	cmp	r0, #0
 8005e32:	bf08      	it	eq
 8005e34:	4618      	moveq	r0, r3
 8005e36:	30f0      	adds	r0, #240	; 0xf0
 8005e38:	4770      	bx	lr
 8005e3a:	bf00      	nop
 8005e3c:	2000001c 	.word	0x2000001c
 8005e40:	2000085c 	.word	0x2000085c

08005e44 <__retarget_lock_init_recursive>:
 8005e44:	4770      	bx	lr
 8005e46:	bf00      	nop

08005e48 <__retarget_lock_close_recursive>:
 8005e48:	4770      	bx	lr
 8005e4a:	bf00      	nop

08005e4c <__retarget_lock_acquire_recursive>:
 8005e4c:	4770      	bx	lr
 8005e4e:	bf00      	nop

08005e50 <__retarget_lock_release_recursive>:
 8005e50:	4770      	bx	lr
 8005e52:	bf00      	nop

08005e54 <__swhatbuf_r>:
 8005e54:	b570      	push	{r4, r5, r6, lr}
 8005e56:	460c      	mov	r4, r1
 8005e58:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005e5c:	2900      	cmp	r1, #0
 8005e5e:	b096      	sub	sp, #88	; 0x58
 8005e60:	4615      	mov	r5, r2
 8005e62:	461e      	mov	r6, r3
 8005e64:	da0f      	bge.n	8005e86 <__swhatbuf_r+0x32>
 8005e66:	89a2      	ldrh	r2, [r4, #12]
 8005e68:	2300      	movs	r3, #0
 8005e6a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005e6e:	6033      	str	r3, [r6, #0]
 8005e70:	d104      	bne.n	8005e7c <__swhatbuf_r+0x28>
 8005e72:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005e76:	602b      	str	r3, [r5, #0]
 8005e78:	b016      	add	sp, #88	; 0x58
 8005e7a:	bd70      	pop	{r4, r5, r6, pc}
 8005e7c:	2240      	movs	r2, #64	; 0x40
 8005e7e:	4618      	mov	r0, r3
 8005e80:	602a      	str	r2, [r5, #0]
 8005e82:	b016      	add	sp, #88	; 0x58
 8005e84:	bd70      	pop	{r4, r5, r6, pc}
 8005e86:	466a      	mov	r2, sp
 8005e88:	f001 fad0 	bl	800742c <_fstat_r>
 8005e8c:	2800      	cmp	r0, #0
 8005e8e:	dbea      	blt.n	8005e66 <__swhatbuf_r+0x12>
 8005e90:	9b01      	ldr	r3, [sp, #4]
 8005e92:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005e96:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005e9a:	fab3 f383 	clz	r3, r3
 8005e9e:	095b      	lsrs	r3, r3, #5
 8005ea0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005ea4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005ea8:	6033      	str	r3, [r6, #0]
 8005eaa:	602a      	str	r2, [r5, #0]
 8005eac:	b016      	add	sp, #88	; 0x58
 8005eae:	bd70      	pop	{r4, r5, r6, pc}

08005eb0 <__smakebuf_r>:
 8005eb0:	898a      	ldrh	r2, [r1, #12]
 8005eb2:	0792      	lsls	r2, r2, #30
 8005eb4:	460b      	mov	r3, r1
 8005eb6:	d506      	bpl.n	8005ec6 <__smakebuf_r+0x16>
 8005eb8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005ebc:	2101      	movs	r1, #1
 8005ebe:	601a      	str	r2, [r3, #0]
 8005ec0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005ec4:	4770      	bx	lr
 8005ec6:	b570      	push	{r4, r5, r6, lr}
 8005ec8:	b082      	sub	sp, #8
 8005eca:	ab01      	add	r3, sp, #4
 8005ecc:	466a      	mov	r2, sp
 8005ece:	460c      	mov	r4, r1
 8005ed0:	4605      	mov	r5, r0
 8005ed2:	f7ff ffbf 	bl	8005e54 <__swhatbuf_r>
 8005ed6:	9900      	ldr	r1, [sp, #0]
 8005ed8:	4606      	mov	r6, r0
 8005eda:	4628      	mov	r0, r5
 8005edc:	f000 f832 	bl	8005f44 <_malloc_r>
 8005ee0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ee4:	b1d8      	cbz	r0, 8005f1e <__smakebuf_r+0x6e>
 8005ee6:	4916      	ldr	r1, [pc, #88]	; (8005f40 <__smakebuf_r+0x90>)
 8005ee8:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005eea:	9a01      	ldr	r2, [sp, #4]
 8005eec:	9900      	ldr	r1, [sp, #0]
 8005eee:	6020      	str	r0, [r4, #0]
 8005ef0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005ef4:	81a3      	strh	r3, [r4, #12]
 8005ef6:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005efa:	b91a      	cbnz	r2, 8005f04 <__smakebuf_r+0x54>
 8005efc:	4333      	orrs	r3, r6
 8005efe:	81a3      	strh	r3, [r4, #12]
 8005f00:	b002      	add	sp, #8
 8005f02:	bd70      	pop	{r4, r5, r6, pc}
 8005f04:	4628      	mov	r0, r5
 8005f06:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005f0a:	f001 faa3 	bl	8007454 <_isatty_r>
 8005f0e:	b1a0      	cbz	r0, 8005f3a <__smakebuf_r+0x8a>
 8005f10:	89a3      	ldrh	r3, [r4, #12]
 8005f12:	f023 0303 	bic.w	r3, r3, #3
 8005f16:	f043 0301 	orr.w	r3, r3, #1
 8005f1a:	b21b      	sxth	r3, r3
 8005f1c:	e7ee      	b.n	8005efc <__smakebuf_r+0x4c>
 8005f1e:	059a      	lsls	r2, r3, #22
 8005f20:	d4ee      	bmi.n	8005f00 <__smakebuf_r+0x50>
 8005f22:	f023 0303 	bic.w	r3, r3, #3
 8005f26:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005f2a:	f043 0302 	orr.w	r3, r3, #2
 8005f2e:	2101      	movs	r1, #1
 8005f30:	81a3      	strh	r3, [r4, #12]
 8005f32:	6022      	str	r2, [r4, #0]
 8005f34:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005f38:	e7e2      	b.n	8005f00 <__smakebuf_r+0x50>
 8005f3a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005f3e:	e7dd      	b.n	8005efc <__smakebuf_r+0x4c>
 8005f40:	080057a1 	.word	0x080057a1

08005f44 <_malloc_r>:
 8005f44:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f48:	f101 050b 	add.w	r5, r1, #11
 8005f4c:	2d16      	cmp	r5, #22
 8005f4e:	b083      	sub	sp, #12
 8005f50:	4606      	mov	r6, r0
 8005f52:	d823      	bhi.n	8005f9c <_malloc_r+0x58>
 8005f54:	2910      	cmp	r1, #16
 8005f56:	f200 80b9 	bhi.w	80060cc <_malloc_r+0x188>
 8005f5a:	f000 fafb 	bl	8006554 <__malloc_lock>
 8005f5e:	2510      	movs	r5, #16
 8005f60:	2318      	movs	r3, #24
 8005f62:	2002      	movs	r0, #2
 8005f64:	4fc5      	ldr	r7, [pc, #788]	; (800627c <_malloc_r+0x338>)
 8005f66:	443b      	add	r3, r7
 8005f68:	f1a3 0208 	sub.w	r2, r3, #8
 8005f6c:	685c      	ldr	r4, [r3, #4]
 8005f6e:	4294      	cmp	r4, r2
 8005f70:	f000 8166 	beq.w	8006240 <_malloc_r+0x2fc>
 8005f74:	6863      	ldr	r3, [r4, #4]
 8005f76:	f023 0303 	bic.w	r3, r3, #3
 8005f7a:	4423      	add	r3, r4
 8005f7c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005f80:	685a      	ldr	r2, [r3, #4]
 8005f82:	60e9      	str	r1, [r5, #12]
 8005f84:	f042 0201 	orr.w	r2, r2, #1
 8005f88:	608d      	str	r5, [r1, #8]
 8005f8a:	4630      	mov	r0, r6
 8005f8c:	605a      	str	r2, [r3, #4]
 8005f8e:	f000 fae7 	bl	8006560 <__malloc_unlock>
 8005f92:	3408      	adds	r4, #8
 8005f94:	4620      	mov	r0, r4
 8005f96:	b003      	add	sp, #12
 8005f98:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f9c:	f035 0507 	bics.w	r5, r5, #7
 8005fa0:	f100 8094 	bmi.w	80060cc <_malloc_r+0x188>
 8005fa4:	42a9      	cmp	r1, r5
 8005fa6:	f200 8091 	bhi.w	80060cc <_malloc_r+0x188>
 8005faa:	f000 fad3 	bl	8006554 <__malloc_lock>
 8005fae:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005fb2:	f0c0 8183 	bcc.w	80062bc <_malloc_r+0x378>
 8005fb6:	0a6b      	lsrs	r3, r5, #9
 8005fb8:	f000 808f 	beq.w	80060da <_malloc_r+0x196>
 8005fbc:	2b04      	cmp	r3, #4
 8005fbe:	f200 8146 	bhi.w	800624e <_malloc_r+0x30a>
 8005fc2:	09ab      	lsrs	r3, r5, #6
 8005fc4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005fc8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005fcc:	00c3      	lsls	r3, r0, #3
 8005fce:	4fab      	ldr	r7, [pc, #684]	; (800627c <_malloc_r+0x338>)
 8005fd0:	443b      	add	r3, r7
 8005fd2:	f1a3 0108 	sub.w	r1, r3, #8
 8005fd6:	685c      	ldr	r4, [r3, #4]
 8005fd8:	42a1      	cmp	r1, r4
 8005fda:	d106      	bne.n	8005fea <_malloc_r+0xa6>
 8005fdc:	e00c      	b.n	8005ff8 <_malloc_r+0xb4>
 8005fde:	2a00      	cmp	r2, #0
 8005fe0:	f280 811d 	bge.w	800621e <_malloc_r+0x2da>
 8005fe4:	68e4      	ldr	r4, [r4, #12]
 8005fe6:	42a1      	cmp	r1, r4
 8005fe8:	d006      	beq.n	8005ff8 <_malloc_r+0xb4>
 8005fea:	6863      	ldr	r3, [r4, #4]
 8005fec:	f023 0303 	bic.w	r3, r3, #3
 8005ff0:	1b5a      	subs	r2, r3, r5
 8005ff2:	2a0f      	cmp	r2, #15
 8005ff4:	ddf3      	ble.n	8005fde <_malloc_r+0x9a>
 8005ff6:	4660      	mov	r0, ip
 8005ff8:	693c      	ldr	r4, [r7, #16]
 8005ffa:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006290 <_malloc_r+0x34c>
 8005ffe:	4564      	cmp	r4, ip
 8006000:	d071      	beq.n	80060e6 <_malloc_r+0x1a2>
 8006002:	6863      	ldr	r3, [r4, #4]
 8006004:	f023 0303 	bic.w	r3, r3, #3
 8006008:	1b5a      	subs	r2, r3, r5
 800600a:	2a0f      	cmp	r2, #15
 800600c:	f300 8144 	bgt.w	8006298 <_malloc_r+0x354>
 8006010:	2a00      	cmp	r2, #0
 8006012:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8006016:	f280 8126 	bge.w	8006266 <_malloc_r+0x322>
 800601a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800601e:	f080 8169 	bcs.w	80062f4 <_malloc_r+0x3b0>
 8006022:	08db      	lsrs	r3, r3, #3
 8006024:	1c59      	adds	r1, r3, #1
 8006026:	687a      	ldr	r2, [r7, #4]
 8006028:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800602c:	f8c4 8008 	str.w	r8, [r4, #8]
 8006030:	f04f 0e01 	mov.w	lr, #1
 8006034:	109b      	asrs	r3, r3, #2
 8006036:	fa0e f303 	lsl.w	r3, lr, r3
 800603a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800603e:	4313      	orrs	r3, r2
 8006040:	f1ae 0208 	sub.w	r2, lr, #8
 8006044:	60e2      	str	r2, [r4, #12]
 8006046:	607b      	str	r3, [r7, #4]
 8006048:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 800604c:	f8c8 400c 	str.w	r4, [r8, #12]
 8006050:	1082      	asrs	r2, r0, #2
 8006052:	2401      	movs	r4, #1
 8006054:	4094      	lsls	r4, r2
 8006056:	429c      	cmp	r4, r3
 8006058:	d84b      	bhi.n	80060f2 <_malloc_r+0x1ae>
 800605a:	421c      	tst	r4, r3
 800605c:	d106      	bne.n	800606c <_malloc_r+0x128>
 800605e:	f020 0003 	bic.w	r0, r0, #3
 8006062:	0064      	lsls	r4, r4, #1
 8006064:	421c      	tst	r4, r3
 8006066:	f100 0004 	add.w	r0, r0, #4
 800606a:	d0fa      	beq.n	8006062 <_malloc_r+0x11e>
 800606c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006070:	46ce      	mov	lr, r9
 8006072:	4680      	mov	r8, r0
 8006074:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006078:	459e      	cmp	lr, r3
 800607a:	d107      	bne.n	800608c <_malloc_r+0x148>
 800607c:	e122      	b.n	80062c4 <_malloc_r+0x380>
 800607e:	2a00      	cmp	r2, #0
 8006080:	f280 8129 	bge.w	80062d6 <_malloc_r+0x392>
 8006084:	68db      	ldr	r3, [r3, #12]
 8006086:	459e      	cmp	lr, r3
 8006088:	f000 811c 	beq.w	80062c4 <_malloc_r+0x380>
 800608c:	6859      	ldr	r1, [r3, #4]
 800608e:	f021 0103 	bic.w	r1, r1, #3
 8006092:	1b4a      	subs	r2, r1, r5
 8006094:	2a0f      	cmp	r2, #15
 8006096:	ddf2      	ble.n	800607e <_malloc_r+0x13a>
 8006098:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 800609c:	195c      	adds	r4, r3, r5
 800609e:	f045 0501 	orr.w	r5, r5, #1
 80060a2:	605d      	str	r5, [r3, #4]
 80060a4:	f042 0501 	orr.w	r5, r2, #1
 80060a8:	f8c8 e00c 	str.w	lr, [r8, #12]
 80060ac:	4630      	mov	r0, r6
 80060ae:	f8ce 8008 	str.w	r8, [lr, #8]
 80060b2:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80060b6:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80060ba:	6065      	str	r5, [r4, #4]
 80060bc:	505a      	str	r2, [r3, r1]
 80060be:	9301      	str	r3, [sp, #4]
 80060c0:	f000 fa4e 	bl	8006560 <__malloc_unlock>
 80060c4:	9b01      	ldr	r3, [sp, #4]
 80060c6:	f103 0408 	add.w	r4, r3, #8
 80060ca:	e763      	b.n	8005f94 <_malloc_r+0x50>
 80060cc:	2400      	movs	r4, #0
 80060ce:	230c      	movs	r3, #12
 80060d0:	4620      	mov	r0, r4
 80060d2:	6033      	str	r3, [r6, #0]
 80060d4:	b003      	add	sp, #12
 80060d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060da:	f44f 7300 	mov.w	r3, #512	; 0x200
 80060de:	2040      	movs	r0, #64	; 0x40
 80060e0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80060e4:	e773      	b.n	8005fce <_malloc_r+0x8a>
 80060e6:	687b      	ldr	r3, [r7, #4]
 80060e8:	1082      	asrs	r2, r0, #2
 80060ea:	2401      	movs	r4, #1
 80060ec:	4094      	lsls	r4, r2
 80060ee:	429c      	cmp	r4, r3
 80060f0:	d9b3      	bls.n	800605a <_malloc_r+0x116>
 80060f2:	68bc      	ldr	r4, [r7, #8]
 80060f4:	6863      	ldr	r3, [r4, #4]
 80060f6:	f023 0903 	bic.w	r9, r3, #3
 80060fa:	45a9      	cmp	r9, r5
 80060fc:	d303      	bcc.n	8006106 <_malloc_r+0x1c2>
 80060fe:	eba9 0305 	sub.w	r3, r9, r5
 8006102:	2b0f      	cmp	r3, #15
 8006104:	dc7b      	bgt.n	80061fe <_malloc_r+0x2ba>
 8006106:	4b5e      	ldr	r3, [pc, #376]	; (8006280 <_malloc_r+0x33c>)
 8006108:	f8df a188 	ldr.w	sl, [pc, #392]	; 8006294 <_malloc_r+0x350>
 800610c:	681a      	ldr	r2, [r3, #0]
 800610e:	f8da 3000 	ldr.w	r3, [sl]
 8006112:	3301      	adds	r3, #1
 8006114:	eb05 0802 	add.w	r8, r5, r2
 8006118:	f000 8148 	beq.w	80063ac <_malloc_r+0x468>
 800611c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8006120:	f108 080f 	add.w	r8, r8, #15
 8006124:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8006128:	f028 080f 	bic.w	r8, r8, #15
 800612c:	4641      	mov	r1, r8
 800612e:	4630      	mov	r0, r6
 8006130:	f000 ff08 	bl	8006f44 <_sbrk_r>
 8006134:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8006138:	4683      	mov	fp, r0
 800613a:	f000 8104 	beq.w	8006346 <_malloc_r+0x402>
 800613e:	eb04 0009 	add.w	r0, r4, r9
 8006142:	4558      	cmp	r0, fp
 8006144:	f200 80fd 	bhi.w	8006342 <_malloc_r+0x3fe>
 8006148:	4a4e      	ldr	r2, [pc, #312]	; (8006284 <_malloc_r+0x340>)
 800614a:	6813      	ldr	r3, [r2, #0]
 800614c:	4443      	add	r3, r8
 800614e:	6013      	str	r3, [r2, #0]
 8006150:	f000 814d 	beq.w	80063ee <_malloc_r+0x4aa>
 8006154:	f8da 1000 	ldr.w	r1, [sl]
 8006158:	3101      	adds	r1, #1
 800615a:	bf1b      	ittet	ne
 800615c:	ebab 0000 	subne.w	r0, fp, r0
 8006160:	181b      	addne	r3, r3, r0
 8006162:	f8ca b000 	streq.w	fp, [sl]
 8006166:	6013      	strne	r3, [r2, #0]
 8006168:	f01b 0307 	ands.w	r3, fp, #7
 800616c:	f000 8134 	beq.w	80063d8 <_malloc_r+0x494>
 8006170:	f1c3 0108 	rsb	r1, r3, #8
 8006174:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006178:	448b      	add	fp, r1
 800617a:	3308      	adds	r3, #8
 800617c:	44d8      	add	r8, fp
 800617e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8006182:	eba3 0808 	sub.w	r8, r3, r8
 8006186:	4641      	mov	r1, r8
 8006188:	4630      	mov	r0, r6
 800618a:	9201      	str	r2, [sp, #4]
 800618c:	f000 feda 	bl	8006f44 <_sbrk_r>
 8006190:	1c43      	adds	r3, r0, #1
 8006192:	9a01      	ldr	r2, [sp, #4]
 8006194:	f000 8146 	beq.w	8006424 <_malloc_r+0x4e0>
 8006198:	eba0 010b 	sub.w	r1, r0, fp
 800619c:	4441      	add	r1, r8
 800619e:	f041 0101 	orr.w	r1, r1, #1
 80061a2:	6813      	ldr	r3, [r2, #0]
 80061a4:	f8c7 b008 	str.w	fp, [r7, #8]
 80061a8:	4443      	add	r3, r8
 80061aa:	42bc      	cmp	r4, r7
 80061ac:	f8cb 1004 	str.w	r1, [fp, #4]
 80061b0:	6013      	str	r3, [r2, #0]
 80061b2:	d015      	beq.n	80061e0 <_malloc_r+0x29c>
 80061b4:	f1b9 0f0f 	cmp.w	r9, #15
 80061b8:	f240 8130 	bls.w	800641c <_malloc_r+0x4d8>
 80061bc:	6860      	ldr	r0, [r4, #4]
 80061be:	f1a9 010c 	sub.w	r1, r9, #12
 80061c2:	f021 0107 	bic.w	r1, r1, #7
 80061c6:	f000 0001 	and.w	r0, r0, #1
 80061ca:	eb04 0c01 	add.w	ip, r4, r1
 80061ce:	4308      	orrs	r0, r1
 80061d0:	f04f 0e05 	mov.w	lr, #5
 80061d4:	290f      	cmp	r1, #15
 80061d6:	6060      	str	r0, [r4, #4]
 80061d8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80061dc:	f200 813a 	bhi.w	8006454 <_malloc_r+0x510>
 80061e0:	4a29      	ldr	r2, [pc, #164]	; (8006288 <_malloc_r+0x344>)
 80061e2:	482a      	ldr	r0, [pc, #168]	; (800628c <_malloc_r+0x348>)
 80061e4:	6811      	ldr	r1, [r2, #0]
 80061e6:	68bc      	ldr	r4, [r7, #8]
 80061e8:	428b      	cmp	r3, r1
 80061ea:	6801      	ldr	r1, [r0, #0]
 80061ec:	bf88      	it	hi
 80061ee:	6013      	strhi	r3, [r2, #0]
 80061f0:	6862      	ldr	r2, [r4, #4]
 80061f2:	428b      	cmp	r3, r1
 80061f4:	f022 0203 	bic.w	r2, r2, #3
 80061f8:	bf88      	it	hi
 80061fa:	6003      	strhi	r3, [r0, #0]
 80061fc:	e0a7      	b.n	800634e <_malloc_r+0x40a>
 80061fe:	1962      	adds	r2, r4, r5
 8006200:	f043 0301 	orr.w	r3, r3, #1
 8006204:	f045 0501 	orr.w	r5, r5, #1
 8006208:	6065      	str	r5, [r4, #4]
 800620a:	4630      	mov	r0, r6
 800620c:	60ba      	str	r2, [r7, #8]
 800620e:	6053      	str	r3, [r2, #4]
 8006210:	f000 f9a6 	bl	8006560 <__malloc_unlock>
 8006214:	3408      	adds	r4, #8
 8006216:	4620      	mov	r0, r4
 8006218:	b003      	add	sp, #12
 800621a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800621e:	4423      	add	r3, r4
 8006220:	68e1      	ldr	r1, [r4, #12]
 8006222:	685a      	ldr	r2, [r3, #4]
 8006224:	68a5      	ldr	r5, [r4, #8]
 8006226:	f042 0201 	orr.w	r2, r2, #1
 800622a:	60e9      	str	r1, [r5, #12]
 800622c:	4630      	mov	r0, r6
 800622e:	608d      	str	r5, [r1, #8]
 8006230:	605a      	str	r2, [r3, #4]
 8006232:	f000 f995 	bl	8006560 <__malloc_unlock>
 8006236:	3408      	adds	r4, #8
 8006238:	4620      	mov	r0, r4
 800623a:	b003      	add	sp, #12
 800623c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006240:	68dc      	ldr	r4, [r3, #12]
 8006242:	42a3      	cmp	r3, r4
 8006244:	bf08      	it	eq
 8006246:	3002      	addeq	r0, #2
 8006248:	f43f aed6 	beq.w	8005ff8 <_malloc_r+0xb4>
 800624c:	e692      	b.n	8005f74 <_malloc_r+0x30>
 800624e:	2b14      	cmp	r3, #20
 8006250:	d971      	bls.n	8006336 <_malloc_r+0x3f2>
 8006252:	2b54      	cmp	r3, #84	; 0x54
 8006254:	f200 80ad 	bhi.w	80063b2 <_malloc_r+0x46e>
 8006258:	0b2b      	lsrs	r3, r5, #12
 800625a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 800625e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8006262:	00c3      	lsls	r3, r0, #3
 8006264:	e6b3      	b.n	8005fce <_malloc_r+0x8a>
 8006266:	4423      	add	r3, r4
 8006268:	4630      	mov	r0, r6
 800626a:	685a      	ldr	r2, [r3, #4]
 800626c:	f042 0201 	orr.w	r2, r2, #1
 8006270:	605a      	str	r2, [r3, #4]
 8006272:	3408      	adds	r4, #8
 8006274:	f000 f974 	bl	8006560 <__malloc_unlock>
 8006278:	e68c      	b.n	8005f94 <_malloc_r+0x50>
 800627a:	bf00      	nop
 800627c:	2000044c 	.word	0x2000044c
 8006280:	20000b8c 	.word	0x20000b8c
 8006284:	20000b5c 	.word	0x20000b5c
 8006288:	20000b84 	.word	0x20000b84
 800628c:	20000b88 	.word	0x20000b88
 8006290:	20000454 	.word	0x20000454
 8006294:	20000854 	.word	0x20000854
 8006298:	1961      	adds	r1, r4, r5
 800629a:	f045 0e01 	orr.w	lr, r5, #1
 800629e:	f042 0501 	orr.w	r5, r2, #1
 80062a2:	f8c4 e004 	str.w	lr, [r4, #4]
 80062a6:	4630      	mov	r0, r6
 80062a8:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80062ac:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 80062b0:	604d      	str	r5, [r1, #4]
 80062b2:	50e2      	str	r2, [r4, r3]
 80062b4:	f000 f954 	bl	8006560 <__malloc_unlock>
 80062b8:	3408      	adds	r4, #8
 80062ba:	e66b      	b.n	8005f94 <_malloc_r+0x50>
 80062bc:	08e8      	lsrs	r0, r5, #3
 80062be:	f105 0308 	add.w	r3, r5, #8
 80062c2:	e64f      	b.n	8005f64 <_malloc_r+0x20>
 80062c4:	f108 0801 	add.w	r8, r8, #1
 80062c8:	f018 0f03 	tst.w	r8, #3
 80062cc:	f10e 0e08 	add.w	lr, lr, #8
 80062d0:	f47f aed0 	bne.w	8006074 <_malloc_r+0x130>
 80062d4:	e052      	b.n	800637c <_malloc_r+0x438>
 80062d6:	4419      	add	r1, r3
 80062d8:	461c      	mov	r4, r3
 80062da:	684a      	ldr	r2, [r1, #4]
 80062dc:	68db      	ldr	r3, [r3, #12]
 80062de:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80062e2:	f042 0201 	orr.w	r2, r2, #1
 80062e6:	604a      	str	r2, [r1, #4]
 80062e8:	4630      	mov	r0, r6
 80062ea:	60eb      	str	r3, [r5, #12]
 80062ec:	609d      	str	r5, [r3, #8]
 80062ee:	f000 f937 	bl	8006560 <__malloc_unlock>
 80062f2:	e64f      	b.n	8005f94 <_malloc_r+0x50>
 80062f4:	0a5a      	lsrs	r2, r3, #9
 80062f6:	2a04      	cmp	r2, #4
 80062f8:	d935      	bls.n	8006366 <_malloc_r+0x422>
 80062fa:	2a14      	cmp	r2, #20
 80062fc:	d86f      	bhi.n	80063de <_malloc_r+0x49a>
 80062fe:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8006302:	00c9      	lsls	r1, r1, #3
 8006304:	325b      	adds	r2, #91	; 0x5b
 8006306:	eb07 0e01 	add.w	lr, r7, r1
 800630a:	5879      	ldr	r1, [r7, r1]
 800630c:	f1ae 0e08 	sub.w	lr, lr, #8
 8006310:	458e      	cmp	lr, r1
 8006312:	d058      	beq.n	80063c6 <_malloc_r+0x482>
 8006314:	684a      	ldr	r2, [r1, #4]
 8006316:	f022 0203 	bic.w	r2, r2, #3
 800631a:	429a      	cmp	r2, r3
 800631c:	d902      	bls.n	8006324 <_malloc_r+0x3e0>
 800631e:	6889      	ldr	r1, [r1, #8]
 8006320:	458e      	cmp	lr, r1
 8006322:	d1f7      	bne.n	8006314 <_malloc_r+0x3d0>
 8006324:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006328:	687b      	ldr	r3, [r7, #4]
 800632a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 800632e:	f8ce 4008 	str.w	r4, [lr, #8]
 8006332:	60cc      	str	r4, [r1, #12]
 8006334:	e68c      	b.n	8006050 <_malloc_r+0x10c>
 8006336:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 800633a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 800633e:	00c3      	lsls	r3, r0, #3
 8006340:	e645      	b.n	8005fce <_malloc_r+0x8a>
 8006342:	42bc      	cmp	r4, r7
 8006344:	d072      	beq.n	800642c <_malloc_r+0x4e8>
 8006346:	68bc      	ldr	r4, [r7, #8]
 8006348:	6862      	ldr	r2, [r4, #4]
 800634a:	f022 0203 	bic.w	r2, r2, #3
 800634e:	4295      	cmp	r5, r2
 8006350:	eba2 0305 	sub.w	r3, r2, r5
 8006354:	d802      	bhi.n	800635c <_malloc_r+0x418>
 8006356:	2b0f      	cmp	r3, #15
 8006358:	f73f af51 	bgt.w	80061fe <_malloc_r+0x2ba>
 800635c:	4630      	mov	r0, r6
 800635e:	f000 f8ff 	bl	8006560 <__malloc_unlock>
 8006362:	2400      	movs	r4, #0
 8006364:	e616      	b.n	8005f94 <_malloc_r+0x50>
 8006366:	099a      	lsrs	r2, r3, #6
 8006368:	f102 0139 	add.w	r1, r2, #57	; 0x39
 800636c:	00c9      	lsls	r1, r1, #3
 800636e:	3238      	adds	r2, #56	; 0x38
 8006370:	e7c9      	b.n	8006306 <_malloc_r+0x3c2>
 8006372:	f8d9 9000 	ldr.w	r9, [r9]
 8006376:	4599      	cmp	r9, r3
 8006378:	f040 8083 	bne.w	8006482 <_malloc_r+0x53e>
 800637c:	f010 0f03 	tst.w	r0, #3
 8006380:	f1a9 0308 	sub.w	r3, r9, #8
 8006384:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006388:	d1f3      	bne.n	8006372 <_malloc_r+0x42e>
 800638a:	687b      	ldr	r3, [r7, #4]
 800638c:	ea23 0304 	bic.w	r3, r3, r4
 8006390:	607b      	str	r3, [r7, #4]
 8006392:	0064      	lsls	r4, r4, #1
 8006394:	429c      	cmp	r4, r3
 8006396:	f63f aeac 	bhi.w	80060f2 <_malloc_r+0x1ae>
 800639a:	b91c      	cbnz	r4, 80063a4 <_malloc_r+0x460>
 800639c:	e6a9      	b.n	80060f2 <_malloc_r+0x1ae>
 800639e:	0064      	lsls	r4, r4, #1
 80063a0:	f108 0804 	add.w	r8, r8, #4
 80063a4:	421c      	tst	r4, r3
 80063a6:	d0fa      	beq.n	800639e <_malloc_r+0x45a>
 80063a8:	4640      	mov	r0, r8
 80063aa:	e65f      	b.n	800606c <_malloc_r+0x128>
 80063ac:	f108 0810 	add.w	r8, r8, #16
 80063b0:	e6bc      	b.n	800612c <_malloc_r+0x1e8>
 80063b2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80063b6:	d826      	bhi.n	8006406 <_malloc_r+0x4c2>
 80063b8:	0beb      	lsrs	r3, r5, #15
 80063ba:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80063be:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80063c2:	00c3      	lsls	r3, r0, #3
 80063c4:	e603      	b.n	8005fce <_malloc_r+0x8a>
 80063c6:	687b      	ldr	r3, [r7, #4]
 80063c8:	1092      	asrs	r2, r2, #2
 80063ca:	f04f 0801 	mov.w	r8, #1
 80063ce:	fa08 f202 	lsl.w	r2, r8, r2
 80063d2:	4313      	orrs	r3, r2
 80063d4:	607b      	str	r3, [r7, #4]
 80063d6:	e7a8      	b.n	800632a <_malloc_r+0x3e6>
 80063d8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80063dc:	e6ce      	b.n	800617c <_malloc_r+0x238>
 80063de:	2a54      	cmp	r2, #84	; 0x54
 80063e0:	d829      	bhi.n	8006436 <_malloc_r+0x4f2>
 80063e2:	0b1a      	lsrs	r2, r3, #12
 80063e4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80063e8:	00c9      	lsls	r1, r1, #3
 80063ea:	326e      	adds	r2, #110	; 0x6e
 80063ec:	e78b      	b.n	8006306 <_malloc_r+0x3c2>
 80063ee:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80063f2:	2900      	cmp	r1, #0
 80063f4:	f47f aeae 	bne.w	8006154 <_malloc_r+0x210>
 80063f8:	eb09 0208 	add.w	r2, r9, r8
 80063fc:	68b9      	ldr	r1, [r7, #8]
 80063fe:	f042 0201 	orr.w	r2, r2, #1
 8006402:	604a      	str	r2, [r1, #4]
 8006404:	e6ec      	b.n	80061e0 <_malloc_r+0x29c>
 8006406:	f240 5254 	movw	r2, #1364	; 0x554
 800640a:	4293      	cmp	r3, r2
 800640c:	d81c      	bhi.n	8006448 <_malloc_r+0x504>
 800640e:	0cab      	lsrs	r3, r5, #18
 8006410:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8006414:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006418:	00c3      	lsls	r3, r0, #3
 800641a:	e5d8      	b.n	8005fce <_malloc_r+0x8a>
 800641c:	2301      	movs	r3, #1
 800641e:	f8cb 3004 	str.w	r3, [fp, #4]
 8006422:	e79b      	b.n	800635c <_malloc_r+0x418>
 8006424:	2101      	movs	r1, #1
 8006426:	f04f 0800 	mov.w	r8, #0
 800642a:	e6ba      	b.n	80061a2 <_malloc_r+0x25e>
 800642c:	4a16      	ldr	r2, [pc, #88]	; (8006488 <_malloc_r+0x544>)
 800642e:	6813      	ldr	r3, [r2, #0]
 8006430:	4443      	add	r3, r8
 8006432:	6013      	str	r3, [r2, #0]
 8006434:	e68e      	b.n	8006154 <_malloc_r+0x210>
 8006436:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800643a:	d814      	bhi.n	8006466 <_malloc_r+0x522>
 800643c:	0bda      	lsrs	r2, r3, #15
 800643e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8006442:	00c9      	lsls	r1, r1, #3
 8006444:	3277      	adds	r2, #119	; 0x77
 8006446:	e75e      	b.n	8006306 <_malloc_r+0x3c2>
 8006448:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 800644c:	207f      	movs	r0, #127	; 0x7f
 800644e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8006452:	e5bc      	b.n	8005fce <_malloc_r+0x8a>
 8006454:	f104 0108 	add.w	r1, r4, #8
 8006458:	4630      	mov	r0, r6
 800645a:	9201      	str	r2, [sp, #4]
 800645c:	f7ff fa48 	bl	80058f0 <_free_r>
 8006460:	9a01      	ldr	r2, [sp, #4]
 8006462:	6813      	ldr	r3, [r2, #0]
 8006464:	e6bc      	b.n	80061e0 <_malloc_r+0x29c>
 8006466:	f240 5154 	movw	r1, #1364	; 0x554
 800646a:	428a      	cmp	r2, r1
 800646c:	d805      	bhi.n	800647a <_malloc_r+0x536>
 800646e:	0c9a      	lsrs	r2, r3, #18
 8006470:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8006474:	00c9      	lsls	r1, r1, #3
 8006476:	327c      	adds	r2, #124	; 0x7c
 8006478:	e745      	b.n	8006306 <_malloc_r+0x3c2>
 800647a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 800647e:	227e      	movs	r2, #126	; 0x7e
 8006480:	e741      	b.n	8006306 <_malloc_r+0x3c2>
 8006482:	687b      	ldr	r3, [r7, #4]
 8006484:	e785      	b.n	8006392 <_malloc_r+0x44e>
 8006486:	bf00      	nop
 8006488:	20000b5c 	.word	0x20000b5c

0800648c <memmove>:
 800648c:	4288      	cmp	r0, r1
 800648e:	b4f0      	push	{r4, r5, r6, r7}
 8006490:	d90d      	bls.n	80064ae <memmove+0x22>
 8006492:	188b      	adds	r3, r1, r2
 8006494:	4283      	cmp	r3, r0
 8006496:	d90a      	bls.n	80064ae <memmove+0x22>
 8006498:	1884      	adds	r4, r0, r2
 800649a:	b132      	cbz	r2, 80064aa <memmove+0x1e>
 800649c:	4622      	mov	r2, r4
 800649e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80064a2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80064a6:	4299      	cmp	r1, r3
 80064a8:	d1f9      	bne.n	800649e <memmove+0x12>
 80064aa:	bcf0      	pop	{r4, r5, r6, r7}
 80064ac:	4770      	bx	lr
 80064ae:	2a0f      	cmp	r2, #15
 80064b0:	d949      	bls.n	8006546 <memmove+0xba>
 80064b2:	ea40 0301 	orr.w	r3, r0, r1
 80064b6:	079b      	lsls	r3, r3, #30
 80064b8:	d147      	bne.n	800654a <memmove+0xbe>
 80064ba:	f1a2 0310 	sub.w	r3, r2, #16
 80064be:	091b      	lsrs	r3, r3, #4
 80064c0:	f101 0720 	add.w	r7, r1, #32
 80064c4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80064c8:	f101 0410 	add.w	r4, r1, #16
 80064cc:	f100 0510 	add.w	r5, r0, #16
 80064d0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80064d4:	f845 6c10 	str.w	r6, [r5, #-16]
 80064d8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80064dc:	f845 6c0c 	str.w	r6, [r5, #-12]
 80064e0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80064e4:	f845 6c08 	str.w	r6, [r5, #-8]
 80064e8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80064ec:	f845 6c04 	str.w	r6, [r5, #-4]
 80064f0:	3410      	adds	r4, #16
 80064f2:	42bc      	cmp	r4, r7
 80064f4:	f105 0510 	add.w	r5, r5, #16
 80064f8:	d1ea      	bne.n	80064d0 <memmove+0x44>
 80064fa:	3301      	adds	r3, #1
 80064fc:	f002 050f 	and.w	r5, r2, #15
 8006500:	011b      	lsls	r3, r3, #4
 8006502:	2d03      	cmp	r5, #3
 8006504:	4419      	add	r1, r3
 8006506:	4403      	add	r3, r0
 8006508:	d921      	bls.n	800654e <memmove+0xc2>
 800650a:	1f1f      	subs	r7, r3, #4
 800650c:	460e      	mov	r6, r1
 800650e:	462c      	mov	r4, r5
 8006510:	3c04      	subs	r4, #4
 8006512:	f856 cb04 	ldr.w	ip, [r6], #4
 8006516:	f847 cf04 	str.w	ip, [r7, #4]!
 800651a:	2c03      	cmp	r4, #3
 800651c:	d8f8      	bhi.n	8006510 <memmove+0x84>
 800651e:	1f2c      	subs	r4, r5, #4
 8006520:	f024 0403 	bic.w	r4, r4, #3
 8006524:	3404      	adds	r4, #4
 8006526:	4423      	add	r3, r4
 8006528:	4421      	add	r1, r4
 800652a:	f002 0203 	and.w	r2, r2, #3
 800652e:	2a00      	cmp	r2, #0
 8006530:	d0bb      	beq.n	80064aa <memmove+0x1e>
 8006532:	3b01      	subs	r3, #1
 8006534:	440a      	add	r2, r1
 8006536:	f811 4b01 	ldrb.w	r4, [r1], #1
 800653a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800653e:	4291      	cmp	r1, r2
 8006540:	d1f9      	bne.n	8006536 <memmove+0xaa>
 8006542:	bcf0      	pop	{r4, r5, r6, r7}
 8006544:	4770      	bx	lr
 8006546:	4603      	mov	r3, r0
 8006548:	e7f1      	b.n	800652e <memmove+0xa2>
 800654a:	4603      	mov	r3, r0
 800654c:	e7f1      	b.n	8006532 <memmove+0xa6>
 800654e:	462a      	mov	r2, r5
 8006550:	e7ed      	b.n	800652e <memmove+0xa2>
 8006552:	bf00      	nop

08006554 <__malloc_lock>:
 8006554:	4801      	ldr	r0, [pc, #4]	; (800655c <__malloc_lock+0x8>)
 8006556:	f7ff bc79 	b.w	8005e4c <__retarget_lock_acquire_recursive>
 800655a:	bf00      	nop
 800655c:	20000c74 	.word	0x20000c74

08006560 <__malloc_unlock>:
 8006560:	4801      	ldr	r0, [pc, #4]	; (8006568 <__malloc_unlock+0x8>)
 8006562:	f7ff bc75 	b.w	8005e50 <__retarget_lock_release_recursive>
 8006566:	bf00      	nop
 8006568:	20000c74 	.word	0x20000c74

0800656c <_Balloc>:
 800656c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800656e:	b570      	push	{r4, r5, r6, lr}
 8006570:	4605      	mov	r5, r0
 8006572:	460c      	mov	r4, r1
 8006574:	b14b      	cbz	r3, 800658a <_Balloc+0x1e>
 8006576:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800657a:	b180      	cbz	r0, 800659e <_Balloc+0x32>
 800657c:	6802      	ldr	r2, [r0, #0]
 800657e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006582:	2300      	movs	r3, #0
 8006584:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006588:	bd70      	pop	{r4, r5, r6, pc}
 800658a:	2221      	movs	r2, #33	; 0x21
 800658c:	2104      	movs	r1, #4
 800658e:	f000 fe1d 	bl	80071cc <_calloc_r>
 8006592:	4603      	mov	r3, r0
 8006594:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006596:	2800      	cmp	r0, #0
 8006598:	d1ed      	bne.n	8006576 <_Balloc+0xa>
 800659a:	2000      	movs	r0, #0
 800659c:	bd70      	pop	{r4, r5, r6, pc}
 800659e:	2101      	movs	r1, #1
 80065a0:	fa01 f604 	lsl.w	r6, r1, r4
 80065a4:	1d72      	adds	r2, r6, #5
 80065a6:	4628      	mov	r0, r5
 80065a8:	0092      	lsls	r2, r2, #2
 80065aa:	f000 fe0f 	bl	80071cc <_calloc_r>
 80065ae:	2800      	cmp	r0, #0
 80065b0:	d0f3      	beq.n	800659a <_Balloc+0x2e>
 80065b2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80065b6:	e7e4      	b.n	8006582 <_Balloc+0x16>

080065b8 <_Bfree>:
 80065b8:	b131      	cbz	r1, 80065c8 <_Bfree+0x10>
 80065ba:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80065bc:	684a      	ldr	r2, [r1, #4]
 80065be:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80065c2:	6008      	str	r0, [r1, #0]
 80065c4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80065c8:	4770      	bx	lr
 80065ca:	bf00      	nop

080065cc <__multadd>:
 80065cc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80065ce:	690c      	ldr	r4, [r1, #16]
 80065d0:	b083      	sub	sp, #12
 80065d2:	460d      	mov	r5, r1
 80065d4:	4606      	mov	r6, r0
 80065d6:	f101 0c14 	add.w	ip, r1, #20
 80065da:	2700      	movs	r7, #0
 80065dc:	f8dc 0000 	ldr.w	r0, [ip]
 80065e0:	b281      	uxth	r1, r0
 80065e2:	fb02 3301 	mla	r3, r2, r1, r3
 80065e6:	0c01      	lsrs	r1, r0, #16
 80065e8:	0c18      	lsrs	r0, r3, #16
 80065ea:	fb02 0101 	mla	r1, r2, r1, r0
 80065ee:	b29b      	uxth	r3, r3
 80065f0:	3701      	adds	r7, #1
 80065f2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80065f6:	42bc      	cmp	r4, r7
 80065f8:	f84c 3b04 	str.w	r3, [ip], #4
 80065fc:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006600:	dcec      	bgt.n	80065dc <__multadd+0x10>
 8006602:	b13b      	cbz	r3, 8006614 <__multadd+0x48>
 8006604:	68aa      	ldr	r2, [r5, #8]
 8006606:	42a2      	cmp	r2, r4
 8006608:	dd07      	ble.n	800661a <__multadd+0x4e>
 800660a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800660e:	3401      	adds	r4, #1
 8006610:	6153      	str	r3, [r2, #20]
 8006612:	612c      	str	r4, [r5, #16]
 8006614:	4628      	mov	r0, r5
 8006616:	b003      	add	sp, #12
 8006618:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800661a:	6869      	ldr	r1, [r5, #4]
 800661c:	9301      	str	r3, [sp, #4]
 800661e:	3101      	adds	r1, #1
 8006620:	4630      	mov	r0, r6
 8006622:	f7ff ffa3 	bl	800656c <_Balloc>
 8006626:	692a      	ldr	r2, [r5, #16]
 8006628:	3202      	adds	r2, #2
 800662a:	f105 010c 	add.w	r1, r5, #12
 800662e:	4607      	mov	r7, r0
 8006630:	0092      	lsls	r2, r2, #2
 8006632:	300c      	adds	r0, #12
 8006634:	f7f9 ff64 	bl	8000500 <memcpy>
 8006638:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800663a:	6869      	ldr	r1, [r5, #4]
 800663c:	9b01      	ldr	r3, [sp, #4]
 800663e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006642:	6028      	str	r0, [r5, #0]
 8006644:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006648:	463d      	mov	r5, r7
 800664a:	e7de      	b.n	800660a <__multadd+0x3e>

0800664c <__hi0bits>:
 800664c:	0c02      	lsrs	r2, r0, #16
 800664e:	0412      	lsls	r2, r2, #16
 8006650:	4603      	mov	r3, r0
 8006652:	b9c2      	cbnz	r2, 8006686 <__hi0bits+0x3a>
 8006654:	0403      	lsls	r3, r0, #16
 8006656:	2010      	movs	r0, #16
 8006658:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800665c:	bf04      	itt	eq
 800665e:	021b      	lsleq	r3, r3, #8
 8006660:	3008      	addeq	r0, #8
 8006662:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006666:	bf04      	itt	eq
 8006668:	011b      	lsleq	r3, r3, #4
 800666a:	3004      	addeq	r0, #4
 800666c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006670:	bf04      	itt	eq
 8006672:	009b      	lsleq	r3, r3, #2
 8006674:	3002      	addeq	r0, #2
 8006676:	2b00      	cmp	r3, #0
 8006678:	db04      	blt.n	8006684 <__hi0bits+0x38>
 800667a:	005b      	lsls	r3, r3, #1
 800667c:	d501      	bpl.n	8006682 <__hi0bits+0x36>
 800667e:	3001      	adds	r0, #1
 8006680:	4770      	bx	lr
 8006682:	2020      	movs	r0, #32
 8006684:	4770      	bx	lr
 8006686:	2000      	movs	r0, #0
 8006688:	e7e6      	b.n	8006658 <__hi0bits+0xc>
 800668a:	bf00      	nop

0800668c <__lo0bits>:
 800668c:	6803      	ldr	r3, [r0, #0]
 800668e:	f013 0207 	ands.w	r2, r3, #7
 8006692:	4601      	mov	r1, r0
 8006694:	d007      	beq.n	80066a6 <__lo0bits+0x1a>
 8006696:	07da      	lsls	r2, r3, #31
 8006698:	d41f      	bmi.n	80066da <__lo0bits+0x4e>
 800669a:	0798      	lsls	r0, r3, #30
 800669c:	d51f      	bpl.n	80066de <__lo0bits+0x52>
 800669e:	085b      	lsrs	r3, r3, #1
 80066a0:	600b      	str	r3, [r1, #0]
 80066a2:	2001      	movs	r0, #1
 80066a4:	4770      	bx	lr
 80066a6:	b298      	uxth	r0, r3
 80066a8:	b1a0      	cbz	r0, 80066d4 <__lo0bits+0x48>
 80066aa:	4610      	mov	r0, r2
 80066ac:	f013 0fff 	tst.w	r3, #255	; 0xff
 80066b0:	bf04      	itt	eq
 80066b2:	0a1b      	lsreq	r3, r3, #8
 80066b4:	3008      	addeq	r0, #8
 80066b6:	071a      	lsls	r2, r3, #28
 80066b8:	bf04      	itt	eq
 80066ba:	091b      	lsreq	r3, r3, #4
 80066bc:	3004      	addeq	r0, #4
 80066be:	079a      	lsls	r2, r3, #30
 80066c0:	bf04      	itt	eq
 80066c2:	089b      	lsreq	r3, r3, #2
 80066c4:	3002      	addeq	r0, #2
 80066c6:	07da      	lsls	r2, r3, #31
 80066c8:	d402      	bmi.n	80066d0 <__lo0bits+0x44>
 80066ca:	085b      	lsrs	r3, r3, #1
 80066cc:	d00b      	beq.n	80066e6 <__lo0bits+0x5a>
 80066ce:	3001      	adds	r0, #1
 80066d0:	600b      	str	r3, [r1, #0]
 80066d2:	4770      	bx	lr
 80066d4:	0c1b      	lsrs	r3, r3, #16
 80066d6:	2010      	movs	r0, #16
 80066d8:	e7e8      	b.n	80066ac <__lo0bits+0x20>
 80066da:	2000      	movs	r0, #0
 80066dc:	4770      	bx	lr
 80066de:	089b      	lsrs	r3, r3, #2
 80066e0:	600b      	str	r3, [r1, #0]
 80066e2:	2002      	movs	r0, #2
 80066e4:	4770      	bx	lr
 80066e6:	2020      	movs	r0, #32
 80066e8:	4770      	bx	lr
 80066ea:	bf00      	nop

080066ec <__i2b>:
 80066ec:	b510      	push	{r4, lr}
 80066ee:	460c      	mov	r4, r1
 80066f0:	2101      	movs	r1, #1
 80066f2:	f7ff ff3b 	bl	800656c <_Balloc>
 80066f6:	2201      	movs	r2, #1
 80066f8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80066fc:	bd10      	pop	{r4, pc}
 80066fe:	bf00      	nop

08006700 <__multiply>:
 8006700:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006704:	690e      	ldr	r6, [r1, #16]
 8006706:	6914      	ldr	r4, [r2, #16]
 8006708:	42a6      	cmp	r6, r4
 800670a:	b083      	sub	sp, #12
 800670c:	460f      	mov	r7, r1
 800670e:	4615      	mov	r5, r2
 8006710:	da04      	bge.n	800671c <__multiply+0x1c>
 8006712:	4632      	mov	r2, r6
 8006714:	462f      	mov	r7, r5
 8006716:	4626      	mov	r6, r4
 8006718:	460d      	mov	r5, r1
 800671a:	4614      	mov	r4, r2
 800671c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006720:	eb06 0804 	add.w	r8, r6, r4
 8006724:	4543      	cmp	r3, r8
 8006726:	bfb8      	it	lt
 8006728:	3101      	addlt	r1, #1
 800672a:	f7ff ff1f 	bl	800656c <_Balloc>
 800672e:	f100 0914 	add.w	r9, r0, #20
 8006732:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006736:	45f1      	cmp	r9, lr
 8006738:	9000      	str	r0, [sp, #0]
 800673a:	d205      	bcs.n	8006748 <__multiply+0x48>
 800673c:	464b      	mov	r3, r9
 800673e:	2200      	movs	r2, #0
 8006740:	f843 2b04 	str.w	r2, [r3], #4
 8006744:	459e      	cmp	lr, r3
 8006746:	d8fb      	bhi.n	8006740 <__multiply+0x40>
 8006748:	f105 0a14 	add.w	sl, r5, #20
 800674c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006750:	f107 0314 	add.w	r3, r7, #20
 8006754:	45a2      	cmp	sl, r4
 8006756:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800675a:	d261      	bcs.n	8006820 <__multiply+0x120>
 800675c:	1b64      	subs	r4, r4, r5
 800675e:	3c15      	subs	r4, #21
 8006760:	f024 0403 	bic.w	r4, r4, #3
 8006764:	f8cd e004 	str.w	lr, [sp, #4]
 8006768:	44a2      	add	sl, r4
 800676a:	f105 0210 	add.w	r2, r5, #16
 800676e:	469e      	mov	lr, r3
 8006770:	e005      	b.n	800677e <__multiply+0x7e>
 8006772:	0c2d      	lsrs	r5, r5, #16
 8006774:	d12b      	bne.n	80067ce <__multiply+0xce>
 8006776:	4592      	cmp	sl, r2
 8006778:	f109 0904 	add.w	r9, r9, #4
 800677c:	d04e      	beq.n	800681c <__multiply+0x11c>
 800677e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006782:	fa1f fb85 	uxth.w	fp, r5
 8006786:	f1bb 0f00 	cmp.w	fp, #0
 800678a:	d0f2      	beq.n	8006772 <__multiply+0x72>
 800678c:	4677      	mov	r7, lr
 800678e:	464e      	mov	r6, r9
 8006790:	2000      	movs	r0, #0
 8006792:	e000      	b.n	8006796 <__multiply+0x96>
 8006794:	4626      	mov	r6, r4
 8006796:	f857 1b04 	ldr.w	r1, [r7], #4
 800679a:	6834      	ldr	r4, [r6, #0]
 800679c:	b28b      	uxth	r3, r1
 800679e:	b2a5      	uxth	r5, r4
 80067a0:	0c09      	lsrs	r1, r1, #16
 80067a2:	0c24      	lsrs	r4, r4, #16
 80067a4:	fb0b 5303 	mla	r3, fp, r3, r5
 80067a8:	4403      	add	r3, r0
 80067aa:	fb0b 4001 	mla	r0, fp, r1, r4
 80067ae:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80067b2:	4634      	mov	r4, r6
 80067b4:	b29b      	uxth	r3, r3
 80067b6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80067ba:	45bc      	cmp	ip, r7
 80067bc:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80067c0:	f844 3b04 	str.w	r3, [r4], #4
 80067c4:	d8e6      	bhi.n	8006794 <__multiply+0x94>
 80067c6:	6070      	str	r0, [r6, #4]
 80067c8:	6815      	ldr	r5, [r2, #0]
 80067ca:	0c2d      	lsrs	r5, r5, #16
 80067cc:	d0d3      	beq.n	8006776 <__multiply+0x76>
 80067ce:	f8d9 3000 	ldr.w	r3, [r9]
 80067d2:	4676      	mov	r6, lr
 80067d4:	4618      	mov	r0, r3
 80067d6:	46cb      	mov	fp, r9
 80067d8:	2100      	movs	r1, #0
 80067da:	e000      	b.n	80067de <__multiply+0xde>
 80067dc:	46a3      	mov	fp, r4
 80067de:	8834      	ldrh	r4, [r6, #0]
 80067e0:	0c00      	lsrs	r0, r0, #16
 80067e2:	fb05 0004 	mla	r0, r5, r4, r0
 80067e6:	4401      	add	r1, r0
 80067e8:	b29b      	uxth	r3, r3
 80067ea:	465c      	mov	r4, fp
 80067ec:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80067f0:	f844 3b04 	str.w	r3, [r4], #4
 80067f4:	f856 3b04 	ldr.w	r3, [r6], #4
 80067f8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80067fc:	0c1b      	lsrs	r3, r3, #16
 80067fe:	b287      	uxth	r7, r0
 8006800:	fb05 7303 	mla	r3, r5, r3, r7
 8006804:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006808:	45b4      	cmp	ip, r6
 800680a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800680e:	d8e5      	bhi.n	80067dc <__multiply+0xdc>
 8006810:	4592      	cmp	sl, r2
 8006812:	f8cb 3004 	str.w	r3, [fp, #4]
 8006816:	f109 0904 	add.w	r9, r9, #4
 800681a:	d1b0      	bne.n	800677e <__multiply+0x7e>
 800681c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006820:	f1b8 0f00 	cmp.w	r8, #0
 8006824:	dd0b      	ble.n	800683e <__multiply+0x13e>
 8006826:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800682a:	f1ae 0e04 	sub.w	lr, lr, #4
 800682e:	b11b      	cbz	r3, 8006838 <__multiply+0x138>
 8006830:	e005      	b.n	800683e <__multiply+0x13e>
 8006832:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006836:	b913      	cbnz	r3, 800683e <__multiply+0x13e>
 8006838:	f1b8 0801 	subs.w	r8, r8, #1
 800683c:	d1f9      	bne.n	8006832 <__multiply+0x132>
 800683e:	9800      	ldr	r0, [sp, #0]
 8006840:	f8c0 8010 	str.w	r8, [r0, #16]
 8006844:	b003      	add	sp, #12
 8006846:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800684a:	bf00      	nop

0800684c <__pow5mult>:
 800684c:	f012 0303 	ands.w	r3, r2, #3
 8006850:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006854:	4614      	mov	r4, r2
 8006856:	4607      	mov	r7, r0
 8006858:	d12e      	bne.n	80068b8 <__pow5mult+0x6c>
 800685a:	460d      	mov	r5, r1
 800685c:	10a4      	asrs	r4, r4, #2
 800685e:	d01c      	beq.n	800689a <__pow5mult+0x4e>
 8006860:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006862:	b396      	cbz	r6, 80068ca <__pow5mult+0x7e>
 8006864:	07e3      	lsls	r3, r4, #31
 8006866:	f04f 0800 	mov.w	r8, #0
 800686a:	d406      	bmi.n	800687a <__pow5mult+0x2e>
 800686c:	1064      	asrs	r4, r4, #1
 800686e:	d014      	beq.n	800689a <__pow5mult+0x4e>
 8006870:	6830      	ldr	r0, [r6, #0]
 8006872:	b1a8      	cbz	r0, 80068a0 <__pow5mult+0x54>
 8006874:	4606      	mov	r6, r0
 8006876:	07e3      	lsls	r3, r4, #31
 8006878:	d5f8      	bpl.n	800686c <__pow5mult+0x20>
 800687a:	4632      	mov	r2, r6
 800687c:	4629      	mov	r1, r5
 800687e:	4638      	mov	r0, r7
 8006880:	f7ff ff3e 	bl	8006700 <__multiply>
 8006884:	b1b5      	cbz	r5, 80068b4 <__pow5mult+0x68>
 8006886:	686a      	ldr	r2, [r5, #4]
 8006888:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800688a:	1064      	asrs	r4, r4, #1
 800688c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006890:	6029      	str	r1, [r5, #0]
 8006892:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006896:	4605      	mov	r5, r0
 8006898:	d1ea      	bne.n	8006870 <__pow5mult+0x24>
 800689a:	4628      	mov	r0, r5
 800689c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80068a0:	4632      	mov	r2, r6
 80068a2:	4631      	mov	r1, r6
 80068a4:	4638      	mov	r0, r7
 80068a6:	f7ff ff2b 	bl	8006700 <__multiply>
 80068aa:	6030      	str	r0, [r6, #0]
 80068ac:	f8c0 8000 	str.w	r8, [r0]
 80068b0:	4606      	mov	r6, r0
 80068b2:	e7e0      	b.n	8006876 <__pow5mult+0x2a>
 80068b4:	4605      	mov	r5, r0
 80068b6:	e7d9      	b.n	800686c <__pow5mult+0x20>
 80068b8:	3b01      	subs	r3, #1
 80068ba:	4a0b      	ldr	r2, [pc, #44]	; (80068e8 <__pow5mult+0x9c>)
 80068bc:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80068c0:	2300      	movs	r3, #0
 80068c2:	f7ff fe83 	bl	80065cc <__multadd>
 80068c6:	4605      	mov	r5, r0
 80068c8:	e7c8      	b.n	800685c <__pow5mult+0x10>
 80068ca:	2101      	movs	r1, #1
 80068cc:	4638      	mov	r0, r7
 80068ce:	f7ff fe4d 	bl	800656c <_Balloc>
 80068d2:	f240 2371 	movw	r3, #625	; 0x271
 80068d6:	6143      	str	r3, [r0, #20]
 80068d8:	2201      	movs	r2, #1
 80068da:	2300      	movs	r3, #0
 80068dc:	6102      	str	r2, [r0, #16]
 80068de:	4606      	mov	r6, r0
 80068e0:	64b8      	str	r0, [r7, #72]	; 0x48
 80068e2:	6003      	str	r3, [r0, #0]
 80068e4:	e7be      	b.n	8006864 <__pow5mult+0x18>
 80068e6:	bf00      	nop
 80068e8:	08007d58 	.word	0x08007d58

080068ec <__lshift>:
 80068ec:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80068f0:	4691      	mov	r9, r2
 80068f2:	690a      	ldr	r2, [r1, #16]
 80068f4:	460e      	mov	r6, r1
 80068f6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80068fa:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80068fe:	eb04 0802 	add.w	r8, r4, r2
 8006902:	f108 0501 	add.w	r5, r8, #1
 8006906:	429d      	cmp	r5, r3
 8006908:	4607      	mov	r7, r0
 800690a:	dd04      	ble.n	8006916 <__lshift+0x2a>
 800690c:	005b      	lsls	r3, r3, #1
 800690e:	429d      	cmp	r5, r3
 8006910:	f101 0101 	add.w	r1, r1, #1
 8006914:	dcfa      	bgt.n	800690c <__lshift+0x20>
 8006916:	4638      	mov	r0, r7
 8006918:	f7ff fe28 	bl	800656c <_Balloc>
 800691c:	2c00      	cmp	r4, #0
 800691e:	f100 0314 	add.w	r3, r0, #20
 8006922:	dd37      	ble.n	8006994 <__lshift+0xa8>
 8006924:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006928:	2200      	movs	r2, #0
 800692a:	f843 2b04 	str.w	r2, [r3], #4
 800692e:	428b      	cmp	r3, r1
 8006930:	d1fb      	bne.n	800692a <__lshift+0x3e>
 8006932:	6934      	ldr	r4, [r6, #16]
 8006934:	f106 0314 	add.w	r3, r6, #20
 8006938:	f019 091f 	ands.w	r9, r9, #31
 800693c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006940:	d020      	beq.n	8006984 <__lshift+0x98>
 8006942:	f1c9 0e20 	rsb	lr, r9, #32
 8006946:	2200      	movs	r2, #0
 8006948:	e000      	b.n	800694c <__lshift+0x60>
 800694a:	4651      	mov	r1, sl
 800694c:	681c      	ldr	r4, [r3, #0]
 800694e:	468a      	mov	sl, r1
 8006950:	fa04 f409 	lsl.w	r4, r4, r9
 8006954:	4314      	orrs	r4, r2
 8006956:	f84a 4b04 	str.w	r4, [sl], #4
 800695a:	f853 2b04 	ldr.w	r2, [r3], #4
 800695e:	4563      	cmp	r3, ip
 8006960:	fa22 f20e 	lsr.w	r2, r2, lr
 8006964:	d3f1      	bcc.n	800694a <__lshift+0x5e>
 8006966:	604a      	str	r2, [r1, #4]
 8006968:	b10a      	cbz	r2, 800696e <__lshift+0x82>
 800696a:	f108 0502 	add.w	r5, r8, #2
 800696e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006970:	6872      	ldr	r2, [r6, #4]
 8006972:	3d01      	subs	r5, #1
 8006974:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006978:	6105      	str	r5, [r0, #16]
 800697a:	6031      	str	r1, [r6, #0]
 800697c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006980:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006984:	3904      	subs	r1, #4
 8006986:	f853 2b04 	ldr.w	r2, [r3], #4
 800698a:	f841 2f04 	str.w	r2, [r1, #4]!
 800698e:	459c      	cmp	ip, r3
 8006990:	d8f9      	bhi.n	8006986 <__lshift+0x9a>
 8006992:	e7ec      	b.n	800696e <__lshift+0x82>
 8006994:	4619      	mov	r1, r3
 8006996:	e7cc      	b.n	8006932 <__lshift+0x46>

08006998 <__mcmp>:
 8006998:	b430      	push	{r4, r5}
 800699a:	690b      	ldr	r3, [r1, #16]
 800699c:	4605      	mov	r5, r0
 800699e:	6900      	ldr	r0, [r0, #16]
 80069a0:	1ac0      	subs	r0, r0, r3
 80069a2:	d10f      	bne.n	80069c4 <__mcmp+0x2c>
 80069a4:	009b      	lsls	r3, r3, #2
 80069a6:	3514      	adds	r5, #20
 80069a8:	3114      	adds	r1, #20
 80069aa:	4419      	add	r1, r3
 80069ac:	442b      	add	r3, r5
 80069ae:	e001      	b.n	80069b4 <__mcmp+0x1c>
 80069b0:	429d      	cmp	r5, r3
 80069b2:	d207      	bcs.n	80069c4 <__mcmp+0x2c>
 80069b4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80069b8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80069bc:	4294      	cmp	r4, r2
 80069be:	d0f7      	beq.n	80069b0 <__mcmp+0x18>
 80069c0:	d302      	bcc.n	80069c8 <__mcmp+0x30>
 80069c2:	2001      	movs	r0, #1
 80069c4:	bc30      	pop	{r4, r5}
 80069c6:	4770      	bx	lr
 80069c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80069cc:	e7fa      	b.n	80069c4 <__mcmp+0x2c>
 80069ce:	bf00      	nop

080069d0 <__mdiff>:
 80069d0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80069d4:	6913      	ldr	r3, [r2, #16]
 80069d6:	690d      	ldr	r5, [r1, #16]
 80069d8:	1aed      	subs	r5, r5, r3
 80069da:	2d00      	cmp	r5, #0
 80069dc:	460e      	mov	r6, r1
 80069de:	4690      	mov	r8, r2
 80069e0:	f101 0414 	add.w	r4, r1, #20
 80069e4:	f102 0714 	add.w	r7, r2, #20
 80069e8:	d114      	bne.n	8006a14 <__mdiff+0x44>
 80069ea:	009b      	lsls	r3, r3, #2
 80069ec:	18e2      	adds	r2, r4, r3
 80069ee:	443b      	add	r3, r7
 80069f0:	e001      	b.n	80069f6 <__mdiff+0x26>
 80069f2:	42a2      	cmp	r2, r4
 80069f4:	d959      	bls.n	8006aaa <__mdiff+0xda>
 80069f6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80069fa:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80069fe:	458c      	cmp	ip, r1
 8006a00:	d0f7      	beq.n	80069f2 <__mdiff+0x22>
 8006a02:	d209      	bcs.n	8006a18 <__mdiff+0x48>
 8006a04:	4622      	mov	r2, r4
 8006a06:	4633      	mov	r3, r6
 8006a08:	463c      	mov	r4, r7
 8006a0a:	4646      	mov	r6, r8
 8006a0c:	4617      	mov	r7, r2
 8006a0e:	4698      	mov	r8, r3
 8006a10:	2501      	movs	r5, #1
 8006a12:	e001      	b.n	8006a18 <__mdiff+0x48>
 8006a14:	dbf6      	blt.n	8006a04 <__mdiff+0x34>
 8006a16:	2500      	movs	r5, #0
 8006a18:	6871      	ldr	r1, [r6, #4]
 8006a1a:	f7ff fda7 	bl	800656c <_Balloc>
 8006a1e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006a22:	6936      	ldr	r6, [r6, #16]
 8006a24:	60c5      	str	r5, [r0, #12]
 8006a26:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006a2a:	46bc      	mov	ip, r7
 8006a2c:	f100 0514 	add.w	r5, r0, #20
 8006a30:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006a34:	2300      	movs	r3, #0
 8006a36:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006a3a:	f854 8b04 	ldr.w	r8, [r4], #4
 8006a3e:	b28a      	uxth	r2, r1
 8006a40:	fa13 f388 	uxtah	r3, r3, r8
 8006a44:	0c09      	lsrs	r1, r1, #16
 8006a46:	1a9a      	subs	r2, r3, r2
 8006a48:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006a4c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006a50:	b292      	uxth	r2, r2
 8006a52:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006a56:	45e6      	cmp	lr, ip
 8006a58:	f845 2b04 	str.w	r2, [r5], #4
 8006a5c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006a60:	d8e9      	bhi.n	8006a36 <__mdiff+0x66>
 8006a62:	42a7      	cmp	r7, r4
 8006a64:	d917      	bls.n	8006a96 <__mdiff+0xc6>
 8006a66:	46ae      	mov	lr, r5
 8006a68:	46a4      	mov	ip, r4
 8006a6a:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006a6e:	fa13 f382 	uxtah	r3, r3, r2
 8006a72:	1419      	asrs	r1, r3, #16
 8006a74:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006a78:	b29b      	uxth	r3, r3
 8006a7a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006a7e:	4567      	cmp	r7, ip
 8006a80:	f84e 2b04 	str.w	r2, [lr], #4
 8006a84:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006a88:	d8ef      	bhi.n	8006a6a <__mdiff+0x9a>
 8006a8a:	43e4      	mvns	r4, r4
 8006a8c:	4427      	add	r7, r4
 8006a8e:	f027 0703 	bic.w	r7, r7, #3
 8006a92:	3704      	adds	r7, #4
 8006a94:	443d      	add	r5, r7
 8006a96:	3d04      	subs	r5, #4
 8006a98:	b922      	cbnz	r2, 8006aa4 <__mdiff+0xd4>
 8006a9a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006a9e:	3e01      	subs	r6, #1
 8006aa0:	2b00      	cmp	r3, #0
 8006aa2:	d0fa      	beq.n	8006a9a <__mdiff+0xca>
 8006aa4:	6106      	str	r6, [r0, #16]
 8006aa6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006aaa:	2100      	movs	r1, #0
 8006aac:	f7ff fd5e 	bl	800656c <_Balloc>
 8006ab0:	2201      	movs	r2, #1
 8006ab2:	2300      	movs	r3, #0
 8006ab4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006ab8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006abc <__d2b>:
 8006abc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006ac0:	460f      	mov	r7, r1
 8006ac2:	b083      	sub	sp, #12
 8006ac4:	2101      	movs	r1, #1
 8006ac6:	ec55 4b10 	vmov	r4, r5, d0
 8006aca:	4616      	mov	r6, r2
 8006acc:	f7ff fd4e 	bl	800656c <_Balloc>
 8006ad0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006ad4:	4681      	mov	r9, r0
 8006ad6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006ada:	f1b8 0f00 	cmp.w	r8, #0
 8006ade:	d001      	beq.n	8006ae4 <__d2b+0x28>
 8006ae0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006ae4:	2c00      	cmp	r4, #0
 8006ae6:	9301      	str	r3, [sp, #4]
 8006ae8:	d024      	beq.n	8006b34 <__d2b+0x78>
 8006aea:	a802      	add	r0, sp, #8
 8006aec:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006af0:	f7ff fdcc 	bl	800668c <__lo0bits>
 8006af4:	2800      	cmp	r0, #0
 8006af6:	d136      	bne.n	8006b66 <__d2b+0xaa>
 8006af8:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006afc:	f8c9 2014 	str.w	r2, [r9, #20]
 8006b00:	2b00      	cmp	r3, #0
 8006b02:	bf0c      	ite	eq
 8006b04:	2101      	moveq	r1, #1
 8006b06:	2102      	movne	r1, #2
 8006b08:	f8c9 3018 	str.w	r3, [r9, #24]
 8006b0c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006b10:	f1b8 0f00 	cmp.w	r8, #0
 8006b14:	d11b      	bne.n	8006b4e <__d2b+0x92>
 8006b16:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006b1a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006b1e:	6038      	str	r0, [r7, #0]
 8006b20:	6918      	ldr	r0, [r3, #16]
 8006b22:	f7ff fd93 	bl	800664c <__hi0bits>
 8006b26:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006b2a:	6030      	str	r0, [r6, #0]
 8006b2c:	4648      	mov	r0, r9
 8006b2e:	b003      	add	sp, #12
 8006b30:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006b34:	a801      	add	r0, sp, #4
 8006b36:	f7ff fda9 	bl	800668c <__lo0bits>
 8006b3a:	9b01      	ldr	r3, [sp, #4]
 8006b3c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006b40:	2101      	movs	r1, #1
 8006b42:	3020      	adds	r0, #32
 8006b44:	f8c9 1010 	str.w	r1, [r9, #16]
 8006b48:	f1b8 0f00 	cmp.w	r8, #0
 8006b4c:	d0e3      	beq.n	8006b16 <__d2b+0x5a>
 8006b4e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006b52:	eb08 0300 	add.w	r3, r8, r0
 8006b56:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006b5a:	603b      	str	r3, [r7, #0]
 8006b5c:	6030      	str	r0, [r6, #0]
 8006b5e:	4648      	mov	r0, r9
 8006b60:	b003      	add	sp, #12
 8006b62:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006b66:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006b6a:	f1c0 0220 	rsb	r2, r0, #32
 8006b6e:	fa03 f202 	lsl.w	r2, r3, r2
 8006b72:	430a      	orrs	r2, r1
 8006b74:	40c3      	lsrs	r3, r0
 8006b76:	9301      	str	r3, [sp, #4]
 8006b78:	f8c9 2014 	str.w	r2, [r9, #20]
 8006b7c:	e7c0      	b.n	8006b00 <__d2b+0x44>
 8006b7e:	bf00      	nop

08006b80 <_realloc_r>:
 8006b80:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b84:	4692      	mov	sl, r2
 8006b86:	b083      	sub	sp, #12
 8006b88:	2900      	cmp	r1, #0
 8006b8a:	f000 80a1 	beq.w	8006cd0 <_realloc_r+0x150>
 8006b8e:	460d      	mov	r5, r1
 8006b90:	4680      	mov	r8, r0
 8006b92:	f10a 040b 	add.w	r4, sl, #11
 8006b96:	f7ff fcdd 	bl	8006554 <__malloc_lock>
 8006b9a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006b9e:	2c16      	cmp	r4, #22
 8006ba0:	f022 0603 	bic.w	r6, r2, #3
 8006ba4:	f1a5 0708 	sub.w	r7, r5, #8
 8006ba8:	d83e      	bhi.n	8006c28 <_realloc_r+0xa8>
 8006baa:	2410      	movs	r4, #16
 8006bac:	4621      	mov	r1, r4
 8006bae:	45a2      	cmp	sl, r4
 8006bb0:	d83f      	bhi.n	8006c32 <_realloc_r+0xb2>
 8006bb2:	428e      	cmp	r6, r1
 8006bb4:	eb07 0906 	add.w	r9, r7, r6
 8006bb8:	da74      	bge.n	8006ca4 <_realloc_r+0x124>
 8006bba:	4bc7      	ldr	r3, [pc, #796]	; (8006ed8 <_realloc_r+0x358>)
 8006bbc:	6898      	ldr	r0, [r3, #8]
 8006bbe:	4548      	cmp	r0, r9
 8006bc0:	f000 80aa 	beq.w	8006d18 <_realloc_r+0x198>
 8006bc4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006bc8:	f020 0301 	bic.w	r3, r0, #1
 8006bcc:	444b      	add	r3, r9
 8006bce:	685b      	ldr	r3, [r3, #4]
 8006bd0:	07db      	lsls	r3, r3, #31
 8006bd2:	f140 8083 	bpl.w	8006cdc <_realloc_r+0x15c>
 8006bd6:	07d2      	lsls	r2, r2, #31
 8006bd8:	d534      	bpl.n	8006c44 <_realloc_r+0xc4>
 8006bda:	4651      	mov	r1, sl
 8006bdc:	4640      	mov	r0, r8
 8006bde:	f7ff f9b1 	bl	8005f44 <_malloc_r>
 8006be2:	4682      	mov	sl, r0
 8006be4:	b1e0      	cbz	r0, 8006c20 <_realloc_r+0xa0>
 8006be6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006bea:	f023 0301 	bic.w	r3, r3, #1
 8006bee:	443b      	add	r3, r7
 8006bf0:	f1a0 0208 	sub.w	r2, r0, #8
 8006bf4:	4293      	cmp	r3, r2
 8006bf6:	f000 80f9 	beq.w	8006dec <_realloc_r+0x26c>
 8006bfa:	1f32      	subs	r2, r6, #4
 8006bfc:	2a24      	cmp	r2, #36	; 0x24
 8006bfe:	f200 8107 	bhi.w	8006e10 <_realloc_r+0x290>
 8006c02:	2a13      	cmp	r2, #19
 8006c04:	6829      	ldr	r1, [r5, #0]
 8006c06:	f200 80e6 	bhi.w	8006dd6 <_realloc_r+0x256>
 8006c0a:	4603      	mov	r3, r0
 8006c0c:	462a      	mov	r2, r5
 8006c0e:	6019      	str	r1, [r3, #0]
 8006c10:	6851      	ldr	r1, [r2, #4]
 8006c12:	6059      	str	r1, [r3, #4]
 8006c14:	6892      	ldr	r2, [r2, #8]
 8006c16:	609a      	str	r2, [r3, #8]
 8006c18:	4629      	mov	r1, r5
 8006c1a:	4640      	mov	r0, r8
 8006c1c:	f7fe fe68 	bl	80058f0 <_free_r>
 8006c20:	4640      	mov	r0, r8
 8006c22:	f7ff fc9d 	bl	8006560 <__malloc_unlock>
 8006c26:	e04f      	b.n	8006cc8 <_realloc_r+0x148>
 8006c28:	f024 0407 	bic.w	r4, r4, #7
 8006c2c:	2c00      	cmp	r4, #0
 8006c2e:	4621      	mov	r1, r4
 8006c30:	dabd      	bge.n	8006bae <_realloc_r+0x2e>
 8006c32:	f04f 0a00 	mov.w	sl, #0
 8006c36:	230c      	movs	r3, #12
 8006c38:	4650      	mov	r0, sl
 8006c3a:	f8c8 3000 	str.w	r3, [r8]
 8006c3e:	b003      	add	sp, #12
 8006c40:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c44:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006c48:	eba7 0b03 	sub.w	fp, r7, r3
 8006c4c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006c50:	f022 0203 	bic.w	r2, r2, #3
 8006c54:	18b3      	adds	r3, r6, r2
 8006c56:	428b      	cmp	r3, r1
 8006c58:	dbbf      	blt.n	8006bda <_realloc_r+0x5a>
 8006c5a:	46da      	mov	sl, fp
 8006c5c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006c60:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006c64:	1f32      	subs	r2, r6, #4
 8006c66:	2a24      	cmp	r2, #36	; 0x24
 8006c68:	60c1      	str	r1, [r0, #12]
 8006c6a:	eb0b 0903 	add.w	r9, fp, r3
 8006c6e:	6088      	str	r0, [r1, #8]
 8006c70:	f200 80c6 	bhi.w	8006e00 <_realloc_r+0x280>
 8006c74:	2a13      	cmp	r2, #19
 8006c76:	6829      	ldr	r1, [r5, #0]
 8006c78:	f240 80c0 	bls.w	8006dfc <_realloc_r+0x27c>
 8006c7c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006c80:	6869      	ldr	r1, [r5, #4]
 8006c82:	f8cb 100c 	str.w	r1, [fp, #12]
 8006c86:	2a1b      	cmp	r2, #27
 8006c88:	68a9      	ldr	r1, [r5, #8]
 8006c8a:	f200 80d8 	bhi.w	8006e3e <_realloc_r+0x2be>
 8006c8e:	f10b 0210 	add.w	r2, fp, #16
 8006c92:	3508      	adds	r5, #8
 8006c94:	6011      	str	r1, [r2, #0]
 8006c96:	6869      	ldr	r1, [r5, #4]
 8006c98:	6051      	str	r1, [r2, #4]
 8006c9a:	68a9      	ldr	r1, [r5, #8]
 8006c9c:	6091      	str	r1, [r2, #8]
 8006c9e:	461e      	mov	r6, r3
 8006ca0:	465f      	mov	r7, fp
 8006ca2:	4655      	mov	r5, sl
 8006ca4:	687b      	ldr	r3, [r7, #4]
 8006ca6:	1b32      	subs	r2, r6, r4
 8006ca8:	2a0f      	cmp	r2, #15
 8006caa:	f003 0301 	and.w	r3, r3, #1
 8006cae:	d822      	bhi.n	8006cf6 <_realloc_r+0x176>
 8006cb0:	4333      	orrs	r3, r6
 8006cb2:	607b      	str	r3, [r7, #4]
 8006cb4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006cb8:	f043 0301 	orr.w	r3, r3, #1
 8006cbc:	f8c9 3004 	str.w	r3, [r9, #4]
 8006cc0:	4640      	mov	r0, r8
 8006cc2:	f7ff fc4d 	bl	8006560 <__malloc_unlock>
 8006cc6:	46aa      	mov	sl, r5
 8006cc8:	4650      	mov	r0, sl
 8006cca:	b003      	add	sp, #12
 8006ccc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006cd0:	4611      	mov	r1, r2
 8006cd2:	b003      	add	sp, #12
 8006cd4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006cd8:	f7ff b934 	b.w	8005f44 <_malloc_r>
 8006cdc:	f020 0003 	bic.w	r0, r0, #3
 8006ce0:	1833      	adds	r3, r6, r0
 8006ce2:	428b      	cmp	r3, r1
 8006ce4:	db61      	blt.n	8006daa <_realloc_r+0x22a>
 8006ce6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006cea:	461e      	mov	r6, r3
 8006cec:	60ca      	str	r2, [r1, #12]
 8006cee:	eb07 0903 	add.w	r9, r7, r3
 8006cf2:	6091      	str	r1, [r2, #8]
 8006cf4:	e7d6      	b.n	8006ca4 <_realloc_r+0x124>
 8006cf6:	1939      	adds	r1, r7, r4
 8006cf8:	4323      	orrs	r3, r4
 8006cfa:	f042 0201 	orr.w	r2, r2, #1
 8006cfe:	607b      	str	r3, [r7, #4]
 8006d00:	604a      	str	r2, [r1, #4]
 8006d02:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006d06:	f043 0301 	orr.w	r3, r3, #1
 8006d0a:	3108      	adds	r1, #8
 8006d0c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006d10:	4640      	mov	r0, r8
 8006d12:	f7fe fded 	bl	80058f0 <_free_r>
 8006d16:	e7d3      	b.n	8006cc0 <_realloc_r+0x140>
 8006d18:	6840      	ldr	r0, [r0, #4]
 8006d1a:	f020 0903 	bic.w	r9, r0, #3
 8006d1e:	44b1      	add	r9, r6
 8006d20:	f104 0010 	add.w	r0, r4, #16
 8006d24:	4581      	cmp	r9, r0
 8006d26:	da77      	bge.n	8006e18 <_realloc_r+0x298>
 8006d28:	07d2      	lsls	r2, r2, #31
 8006d2a:	f53f af56 	bmi.w	8006bda <_realloc_r+0x5a>
 8006d2e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006d32:	eba7 0b02 	sub.w	fp, r7, r2
 8006d36:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006d3a:	f022 0203 	bic.w	r2, r2, #3
 8006d3e:	4491      	add	r9, r2
 8006d40:	4548      	cmp	r0, r9
 8006d42:	dc87      	bgt.n	8006c54 <_realloc_r+0xd4>
 8006d44:	46da      	mov	sl, fp
 8006d46:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006d4a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006d4e:	1f32      	subs	r2, r6, #4
 8006d50:	2a24      	cmp	r2, #36	; 0x24
 8006d52:	60c1      	str	r1, [r0, #12]
 8006d54:	6088      	str	r0, [r1, #8]
 8006d56:	f200 80a1 	bhi.w	8006e9c <_realloc_r+0x31c>
 8006d5a:	2a13      	cmp	r2, #19
 8006d5c:	6829      	ldr	r1, [r5, #0]
 8006d5e:	f240 809b 	bls.w	8006e98 <_realloc_r+0x318>
 8006d62:	f8cb 1008 	str.w	r1, [fp, #8]
 8006d66:	6869      	ldr	r1, [r5, #4]
 8006d68:	f8cb 100c 	str.w	r1, [fp, #12]
 8006d6c:	2a1b      	cmp	r2, #27
 8006d6e:	68a9      	ldr	r1, [r5, #8]
 8006d70:	f200 809b 	bhi.w	8006eaa <_realloc_r+0x32a>
 8006d74:	f10b 0210 	add.w	r2, fp, #16
 8006d78:	3508      	adds	r5, #8
 8006d7a:	6011      	str	r1, [r2, #0]
 8006d7c:	6869      	ldr	r1, [r5, #4]
 8006d7e:	6051      	str	r1, [r2, #4]
 8006d80:	68a9      	ldr	r1, [r5, #8]
 8006d82:	6091      	str	r1, [r2, #8]
 8006d84:	eb0b 0104 	add.w	r1, fp, r4
 8006d88:	eba9 0204 	sub.w	r2, r9, r4
 8006d8c:	f042 0201 	orr.w	r2, r2, #1
 8006d90:	6099      	str	r1, [r3, #8]
 8006d92:	604a      	str	r2, [r1, #4]
 8006d94:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006d98:	f003 0301 	and.w	r3, r3, #1
 8006d9c:	431c      	orrs	r4, r3
 8006d9e:	4640      	mov	r0, r8
 8006da0:	f8cb 4004 	str.w	r4, [fp, #4]
 8006da4:	f7ff fbdc 	bl	8006560 <__malloc_unlock>
 8006da8:	e78e      	b.n	8006cc8 <_realloc_r+0x148>
 8006daa:	07d3      	lsls	r3, r2, #31
 8006dac:	f53f af15 	bmi.w	8006bda <_realloc_r+0x5a>
 8006db0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006db4:	eba7 0b03 	sub.w	fp, r7, r3
 8006db8:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006dbc:	f022 0203 	bic.w	r2, r2, #3
 8006dc0:	4410      	add	r0, r2
 8006dc2:	1983      	adds	r3, r0, r6
 8006dc4:	428b      	cmp	r3, r1
 8006dc6:	f6ff af45 	blt.w	8006c54 <_realloc_r+0xd4>
 8006dca:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006dce:	46da      	mov	sl, fp
 8006dd0:	60ca      	str	r2, [r1, #12]
 8006dd2:	6091      	str	r1, [r2, #8]
 8006dd4:	e742      	b.n	8006c5c <_realloc_r+0xdc>
 8006dd6:	6001      	str	r1, [r0, #0]
 8006dd8:	686b      	ldr	r3, [r5, #4]
 8006dda:	6043      	str	r3, [r0, #4]
 8006ddc:	2a1b      	cmp	r2, #27
 8006dde:	d83a      	bhi.n	8006e56 <_realloc_r+0x2d6>
 8006de0:	f105 0208 	add.w	r2, r5, #8
 8006de4:	f100 0308 	add.w	r3, r0, #8
 8006de8:	68a9      	ldr	r1, [r5, #8]
 8006dea:	e710      	b.n	8006c0e <_realloc_r+0x8e>
 8006dec:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006df0:	f023 0303 	bic.w	r3, r3, #3
 8006df4:	441e      	add	r6, r3
 8006df6:	eb07 0906 	add.w	r9, r7, r6
 8006dfa:	e753      	b.n	8006ca4 <_realloc_r+0x124>
 8006dfc:	4652      	mov	r2, sl
 8006dfe:	e749      	b.n	8006c94 <_realloc_r+0x114>
 8006e00:	4629      	mov	r1, r5
 8006e02:	4650      	mov	r0, sl
 8006e04:	461e      	mov	r6, r3
 8006e06:	465f      	mov	r7, fp
 8006e08:	f7ff fb40 	bl	800648c <memmove>
 8006e0c:	4655      	mov	r5, sl
 8006e0e:	e749      	b.n	8006ca4 <_realloc_r+0x124>
 8006e10:	4629      	mov	r1, r5
 8006e12:	f7ff fb3b 	bl	800648c <memmove>
 8006e16:	e6ff      	b.n	8006c18 <_realloc_r+0x98>
 8006e18:	4427      	add	r7, r4
 8006e1a:	eba9 0904 	sub.w	r9, r9, r4
 8006e1e:	f049 0201 	orr.w	r2, r9, #1
 8006e22:	609f      	str	r7, [r3, #8]
 8006e24:	607a      	str	r2, [r7, #4]
 8006e26:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006e2a:	f003 0301 	and.w	r3, r3, #1
 8006e2e:	431c      	orrs	r4, r3
 8006e30:	4640      	mov	r0, r8
 8006e32:	f845 4c04 	str.w	r4, [r5, #-4]
 8006e36:	f7ff fb93 	bl	8006560 <__malloc_unlock>
 8006e3a:	46aa      	mov	sl, r5
 8006e3c:	e744      	b.n	8006cc8 <_realloc_r+0x148>
 8006e3e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006e42:	68e9      	ldr	r1, [r5, #12]
 8006e44:	f8cb 1014 	str.w	r1, [fp, #20]
 8006e48:	2a24      	cmp	r2, #36	; 0x24
 8006e4a:	d010      	beq.n	8006e6e <_realloc_r+0x2ee>
 8006e4c:	6929      	ldr	r1, [r5, #16]
 8006e4e:	f10b 0218 	add.w	r2, fp, #24
 8006e52:	3510      	adds	r5, #16
 8006e54:	e71e      	b.n	8006c94 <_realloc_r+0x114>
 8006e56:	68ab      	ldr	r3, [r5, #8]
 8006e58:	6083      	str	r3, [r0, #8]
 8006e5a:	68eb      	ldr	r3, [r5, #12]
 8006e5c:	60c3      	str	r3, [r0, #12]
 8006e5e:	2a24      	cmp	r2, #36	; 0x24
 8006e60:	d010      	beq.n	8006e84 <_realloc_r+0x304>
 8006e62:	f105 0210 	add.w	r2, r5, #16
 8006e66:	f100 0310 	add.w	r3, r0, #16
 8006e6a:	6929      	ldr	r1, [r5, #16]
 8006e6c:	e6cf      	b.n	8006c0e <_realloc_r+0x8e>
 8006e6e:	692a      	ldr	r2, [r5, #16]
 8006e70:	f8cb 2018 	str.w	r2, [fp, #24]
 8006e74:	696a      	ldr	r2, [r5, #20]
 8006e76:	f8cb 201c 	str.w	r2, [fp, #28]
 8006e7a:	69a9      	ldr	r1, [r5, #24]
 8006e7c:	f10b 0220 	add.w	r2, fp, #32
 8006e80:	3518      	adds	r5, #24
 8006e82:	e707      	b.n	8006c94 <_realloc_r+0x114>
 8006e84:	692b      	ldr	r3, [r5, #16]
 8006e86:	6103      	str	r3, [r0, #16]
 8006e88:	696b      	ldr	r3, [r5, #20]
 8006e8a:	6143      	str	r3, [r0, #20]
 8006e8c:	69a9      	ldr	r1, [r5, #24]
 8006e8e:	f105 0218 	add.w	r2, r5, #24
 8006e92:	f100 0318 	add.w	r3, r0, #24
 8006e96:	e6ba      	b.n	8006c0e <_realloc_r+0x8e>
 8006e98:	4652      	mov	r2, sl
 8006e9a:	e76e      	b.n	8006d7a <_realloc_r+0x1fa>
 8006e9c:	4629      	mov	r1, r5
 8006e9e:	4650      	mov	r0, sl
 8006ea0:	9301      	str	r3, [sp, #4]
 8006ea2:	f7ff faf3 	bl	800648c <memmove>
 8006ea6:	9b01      	ldr	r3, [sp, #4]
 8006ea8:	e76c      	b.n	8006d84 <_realloc_r+0x204>
 8006eaa:	f8cb 1010 	str.w	r1, [fp, #16]
 8006eae:	68e9      	ldr	r1, [r5, #12]
 8006eb0:	f8cb 1014 	str.w	r1, [fp, #20]
 8006eb4:	2a24      	cmp	r2, #36	; 0x24
 8006eb6:	d004      	beq.n	8006ec2 <_realloc_r+0x342>
 8006eb8:	6929      	ldr	r1, [r5, #16]
 8006eba:	f10b 0218 	add.w	r2, fp, #24
 8006ebe:	3510      	adds	r5, #16
 8006ec0:	e75b      	b.n	8006d7a <_realloc_r+0x1fa>
 8006ec2:	692a      	ldr	r2, [r5, #16]
 8006ec4:	f8cb 2018 	str.w	r2, [fp, #24]
 8006ec8:	696a      	ldr	r2, [r5, #20]
 8006eca:	f8cb 201c 	str.w	r2, [fp, #28]
 8006ece:	69a9      	ldr	r1, [r5, #24]
 8006ed0:	f10b 0220 	add.w	r2, fp, #32
 8006ed4:	3518      	adds	r5, #24
 8006ed6:	e750      	b.n	8006d7a <_realloc_r+0x1fa>
 8006ed8:	2000044c 	.word	0x2000044c

08006edc <frexp>:
 8006edc:	ec53 2b10 	vmov	r2, r3, d0
 8006ee0:	b570      	push	{r4, r5, r6, lr}
 8006ee2:	4e16      	ldr	r6, [pc, #88]	; (8006f3c <frexp+0x60>)
 8006ee4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006ee8:	2500      	movs	r5, #0
 8006eea:	42b1      	cmp	r1, r6
 8006eec:	4604      	mov	r4, r0
 8006eee:	6005      	str	r5, [r0, #0]
 8006ef0:	dc21      	bgt.n	8006f36 <frexp+0x5a>
 8006ef2:	ee10 6a10 	vmov	r6, s0
 8006ef6:	430e      	orrs	r6, r1
 8006ef8:	d01d      	beq.n	8006f36 <frexp+0x5a>
 8006efa:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006efe:	4618      	mov	r0, r3
 8006f00:	da0c      	bge.n	8006f1c <frexp+0x40>
 8006f02:	4619      	mov	r1, r3
 8006f04:	2200      	movs	r2, #0
 8006f06:	ee10 0a10 	vmov	r0, s0
 8006f0a:	4b0d      	ldr	r3, [pc, #52]	; (8006f40 <frexp+0x64>)
 8006f0c:	f7f9 fe14 	bl	8000b38 <__aeabi_dmul>
 8006f10:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006f14:	4602      	mov	r2, r0
 8006f16:	4608      	mov	r0, r1
 8006f18:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006f1c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006f20:	1509      	asrs	r1, r1, #20
 8006f22:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006f26:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006f2a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006f2e:	4429      	add	r1, r5
 8006f30:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006f34:	6021      	str	r1, [r4, #0]
 8006f36:	ec43 2b10 	vmov	d0, r2, r3
 8006f3a:	bd70      	pop	{r4, r5, r6, pc}
 8006f3c:	7fefffff 	.word	0x7fefffff
 8006f40:	43500000 	.word	0x43500000

08006f44 <_sbrk_r>:
 8006f44:	b538      	push	{r3, r4, r5, lr}
 8006f46:	4c07      	ldr	r4, [pc, #28]	; (8006f64 <_sbrk_r+0x20>)
 8006f48:	2300      	movs	r3, #0
 8006f4a:	4605      	mov	r5, r0
 8006f4c:	4608      	mov	r0, r1
 8006f4e:	6023      	str	r3, [r4, #0]
 8006f50:	f7fb fc32 	bl	80027b8 <_sbrk>
 8006f54:	1c43      	adds	r3, r0, #1
 8006f56:	d000      	beq.n	8006f5a <_sbrk_r+0x16>
 8006f58:	bd38      	pop	{r3, r4, r5, pc}
 8006f5a:	6823      	ldr	r3, [r4, #0]
 8006f5c:	2b00      	cmp	r3, #0
 8006f5e:	d0fb      	beq.n	8006f58 <_sbrk_r+0x14>
 8006f60:	602b      	str	r3, [r5, #0]
 8006f62:	bd38      	pop	{r3, r4, r5, pc}
 8006f64:	20000c88 	.word	0x20000c88

08006f68 <__sread>:
 8006f68:	b510      	push	{r4, lr}
 8006f6a:	460c      	mov	r4, r1
 8006f6c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006f70:	f000 fabc 	bl	80074ec <_read_r>
 8006f74:	2800      	cmp	r0, #0
 8006f76:	db03      	blt.n	8006f80 <__sread+0x18>
 8006f78:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006f7a:	4403      	add	r3, r0
 8006f7c:	6523      	str	r3, [r4, #80]	; 0x50
 8006f7e:	bd10      	pop	{r4, pc}
 8006f80:	89a3      	ldrh	r3, [r4, #12]
 8006f82:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006f86:	81a3      	strh	r3, [r4, #12]
 8006f88:	bd10      	pop	{r4, pc}
 8006f8a:	bf00      	nop

08006f8c <__swrite>:
 8006f8c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006f90:	4616      	mov	r6, r2
 8006f92:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006f96:	461f      	mov	r7, r3
 8006f98:	05d3      	lsls	r3, r2, #23
 8006f9a:	460c      	mov	r4, r1
 8006f9c:	4605      	mov	r5, r0
 8006f9e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006fa2:	d507      	bpl.n	8006fb4 <__swrite+0x28>
 8006fa4:	2200      	movs	r2, #0
 8006fa6:	2302      	movs	r3, #2
 8006fa8:	f000 fa74 	bl	8007494 <_lseek_r>
 8006fac:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006fb0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006fb4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006fb8:	81a2      	strh	r2, [r4, #12]
 8006fba:	463b      	mov	r3, r7
 8006fbc:	4632      	mov	r2, r6
 8006fbe:	4628      	mov	r0, r5
 8006fc0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006fc4:	f000 b88c 	b.w	80070e0 <_write_r>

08006fc8 <__sseek>:
 8006fc8:	b510      	push	{r4, lr}
 8006fca:	460c      	mov	r4, r1
 8006fcc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006fd0:	f000 fa60 	bl	8007494 <_lseek_r>
 8006fd4:	89a3      	ldrh	r3, [r4, #12]
 8006fd6:	1c42      	adds	r2, r0, #1
 8006fd8:	bf0e      	itee	eq
 8006fda:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006fde:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006fe2:	6520      	strne	r0, [r4, #80]	; 0x50
 8006fe4:	81a3      	strh	r3, [r4, #12]
 8006fe6:	bd10      	pop	{r4, pc}

08006fe8 <__sclose>:
 8006fe8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006fec:	f000 b922 	b.w	8007234 <_close_r>

08006ff0 <strncpy>:
 8006ff0:	ea40 0301 	orr.w	r3, r0, r1
 8006ff4:	079b      	lsls	r3, r3, #30
 8006ff6:	b470      	push	{r4, r5, r6}
 8006ff8:	d12a      	bne.n	8007050 <strncpy+0x60>
 8006ffa:	2a03      	cmp	r2, #3
 8006ffc:	d928      	bls.n	8007050 <strncpy+0x60>
 8006ffe:	460c      	mov	r4, r1
 8007000:	4603      	mov	r3, r0
 8007002:	4621      	mov	r1, r4
 8007004:	f854 6b04 	ldr.w	r6, [r4], #4
 8007008:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800700c:	ea25 0506 	bic.w	r5, r5, r6
 8007010:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8007014:	d106      	bne.n	8007024 <strncpy+0x34>
 8007016:	3a04      	subs	r2, #4
 8007018:	2a03      	cmp	r2, #3
 800701a:	f843 6b04 	str.w	r6, [r3], #4
 800701e:	4621      	mov	r1, r4
 8007020:	d8ef      	bhi.n	8007002 <strncpy+0x12>
 8007022:	b19a      	cbz	r2, 800704c <strncpy+0x5c>
 8007024:	780c      	ldrb	r4, [r1, #0]
 8007026:	701c      	strb	r4, [r3, #0]
 8007028:	3a01      	subs	r2, #1
 800702a:	3301      	adds	r3, #1
 800702c:	b13c      	cbz	r4, 800703e <strncpy+0x4e>
 800702e:	b16a      	cbz	r2, 800704c <strncpy+0x5c>
 8007030:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8007034:	f803 4b01 	strb.w	r4, [r3], #1
 8007038:	3a01      	subs	r2, #1
 800703a:	2c00      	cmp	r4, #0
 800703c:	d1f7      	bne.n	800702e <strncpy+0x3e>
 800703e:	b12a      	cbz	r2, 800704c <strncpy+0x5c>
 8007040:	441a      	add	r2, r3
 8007042:	2100      	movs	r1, #0
 8007044:	f803 1b01 	strb.w	r1, [r3], #1
 8007048:	4293      	cmp	r3, r2
 800704a:	d1fb      	bne.n	8007044 <strncpy+0x54>
 800704c:	bc70      	pop	{r4, r5, r6}
 800704e:	4770      	bx	lr
 8007050:	4603      	mov	r3, r0
 8007052:	e7e6      	b.n	8007022 <strncpy+0x32>

08007054 <__sprint_r.part.0>:
 8007054:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007058:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800705a:	049c      	lsls	r4, r3, #18
 800705c:	4692      	mov	sl, r2
 800705e:	d52d      	bpl.n	80070bc <__sprint_r.part.0+0x68>
 8007060:	6893      	ldr	r3, [r2, #8]
 8007062:	6812      	ldr	r2, [r2, #0]
 8007064:	b343      	cbz	r3, 80070b8 <__sprint_r.part.0+0x64>
 8007066:	460e      	mov	r6, r1
 8007068:	4607      	mov	r7, r0
 800706a:	f102 0908 	add.w	r9, r2, #8
 800706e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8007072:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8007076:	d015      	beq.n	80070a4 <__sprint_r.part.0+0x50>
 8007078:	3d04      	subs	r5, #4
 800707a:	2400      	movs	r4, #0
 800707c:	e001      	b.n	8007082 <__sprint_r.part.0+0x2e>
 800707e:	45a0      	cmp	r8, r4
 8007080:	d00e      	beq.n	80070a0 <__sprint_r.part.0+0x4c>
 8007082:	4632      	mov	r2, r6
 8007084:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007088:	4638      	mov	r0, r7
 800708a:	f000 f99d 	bl	80073c8 <_fputwc_r>
 800708e:	1c43      	adds	r3, r0, #1
 8007090:	f104 0401 	add.w	r4, r4, #1
 8007094:	d1f3      	bne.n	800707e <__sprint_r.part.0+0x2a>
 8007096:	2300      	movs	r3, #0
 8007098:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800709c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80070a0:	f8da 3008 	ldr.w	r3, [sl, #8]
 80070a4:	f02b 0b03 	bic.w	fp, fp, #3
 80070a8:	eba3 030b 	sub.w	r3, r3, fp
 80070ac:	f8ca 3008 	str.w	r3, [sl, #8]
 80070b0:	f109 0908 	add.w	r9, r9, #8
 80070b4:	2b00      	cmp	r3, #0
 80070b6:	d1da      	bne.n	800706e <__sprint_r.part.0+0x1a>
 80070b8:	2000      	movs	r0, #0
 80070ba:	e7ec      	b.n	8007096 <__sprint_r.part.0+0x42>
 80070bc:	f7fe fd0c 	bl	8005ad8 <__sfvwrite_r>
 80070c0:	2300      	movs	r3, #0
 80070c2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80070c6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80070ca:	bf00      	nop

080070cc <__sprint_r>:
 80070cc:	6893      	ldr	r3, [r2, #8]
 80070ce:	b10b      	cbz	r3, 80070d4 <__sprint_r+0x8>
 80070d0:	f7ff bfc0 	b.w	8007054 <__sprint_r.part.0>
 80070d4:	b410      	push	{r4}
 80070d6:	4618      	mov	r0, r3
 80070d8:	6053      	str	r3, [r2, #4]
 80070da:	f85d 4b04 	ldr.w	r4, [sp], #4
 80070de:	4770      	bx	lr

080070e0 <_write_r>:
 80070e0:	b570      	push	{r4, r5, r6, lr}
 80070e2:	460d      	mov	r5, r1
 80070e4:	4c08      	ldr	r4, [pc, #32]	; (8007108 <_write_r+0x28>)
 80070e6:	4611      	mov	r1, r2
 80070e8:	4606      	mov	r6, r0
 80070ea:	461a      	mov	r2, r3
 80070ec:	4628      	mov	r0, r5
 80070ee:	2300      	movs	r3, #0
 80070f0:	6023      	str	r3, [r4, #0]
 80070f2:	f7fb fb4e 	bl	8002792 <_write>
 80070f6:	1c43      	adds	r3, r0, #1
 80070f8:	d000      	beq.n	80070fc <_write_r+0x1c>
 80070fa:	bd70      	pop	{r4, r5, r6, pc}
 80070fc:	6823      	ldr	r3, [r4, #0]
 80070fe:	2b00      	cmp	r3, #0
 8007100:	d0fb      	beq.n	80070fa <_write_r+0x1a>
 8007102:	6033      	str	r3, [r6, #0]
 8007104:	bd70      	pop	{r4, r5, r6, pc}
 8007106:	bf00      	nop
 8007108:	20000c88 	.word	0x20000c88

0800710c <__register_exitproc>:
 800710c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007110:	4d2b      	ldr	r5, [pc, #172]	; (80071c0 <__register_exitproc+0xb4>)
 8007112:	4606      	mov	r6, r0
 8007114:	6828      	ldr	r0, [r5, #0]
 8007116:	4698      	mov	r8, r3
 8007118:	460f      	mov	r7, r1
 800711a:	4691      	mov	r9, r2
 800711c:	f7fe fe96 	bl	8005e4c <__retarget_lock_acquire_recursive>
 8007120:	4b28      	ldr	r3, [pc, #160]	; (80071c4 <__register_exitproc+0xb8>)
 8007122:	681c      	ldr	r4, [r3, #0]
 8007124:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007128:	2b00      	cmp	r3, #0
 800712a:	d03d      	beq.n	80071a8 <__register_exitproc+0x9c>
 800712c:	685a      	ldr	r2, [r3, #4]
 800712e:	2a1f      	cmp	r2, #31
 8007130:	dc0d      	bgt.n	800714e <__register_exitproc+0x42>
 8007132:	f102 0c01 	add.w	ip, r2, #1
 8007136:	bb16      	cbnz	r6, 800717e <__register_exitproc+0x72>
 8007138:	3202      	adds	r2, #2
 800713a:	f8c3 c004 	str.w	ip, [r3, #4]
 800713e:	6828      	ldr	r0, [r5, #0]
 8007140:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8007144:	f7fe fe84 	bl	8005e50 <__retarget_lock_release_recursive>
 8007148:	2000      	movs	r0, #0
 800714a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800714e:	4b1e      	ldr	r3, [pc, #120]	; (80071c8 <__register_exitproc+0xbc>)
 8007150:	b37b      	cbz	r3, 80071b2 <__register_exitproc+0xa6>
 8007152:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8007156:	f3af 8000 	nop.w
 800715a:	4603      	mov	r3, r0
 800715c:	b348      	cbz	r0, 80071b2 <__register_exitproc+0xa6>
 800715e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8007162:	2100      	movs	r1, #0
 8007164:	e9c0 2100 	strd	r2, r1, [r0]
 8007168:	f04f 0c01 	mov.w	ip, #1
 800716c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007170:	460a      	mov	r2, r1
 8007172:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8007176:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 800717a:	2e00      	cmp	r6, #0
 800717c:	d0dc      	beq.n	8007138 <__register_exitproc+0x2c>
 800717e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8007182:	2401      	movs	r4, #1
 8007184:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007188:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 800718c:	4094      	lsls	r4, r2
 800718e:	4320      	orrs	r0, r4
 8007190:	2e02      	cmp	r6, #2
 8007192:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8007196:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 800719a:	d1cd      	bne.n	8007138 <__register_exitproc+0x2c>
 800719c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 80071a0:	430c      	orrs	r4, r1
 80071a2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 80071a6:	e7c7      	b.n	8007138 <__register_exitproc+0x2c>
 80071a8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80071ac:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 80071b0:	e7bc      	b.n	800712c <__register_exitproc+0x20>
 80071b2:	6828      	ldr	r0, [r5, #0]
 80071b4:	f7fe fe4c 	bl	8005e50 <__retarget_lock_release_recursive>
 80071b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80071bc:	e7c5      	b.n	800714a <__register_exitproc+0x3e>
 80071be:	bf00      	nop
 80071c0:	20000448 	.word	0x20000448
 80071c4:	08007be8 	.word	0x08007be8
 80071c8:	00000000 	.word	0x00000000

080071cc <_calloc_r>:
 80071cc:	b510      	push	{r4, lr}
 80071ce:	fb02 f101 	mul.w	r1, r2, r1
 80071d2:	f7fe feb7 	bl	8005f44 <_malloc_r>
 80071d6:	4604      	mov	r4, r0
 80071d8:	b1d8      	cbz	r0, 8007212 <_calloc_r+0x46>
 80071da:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80071de:	f022 0203 	bic.w	r2, r2, #3
 80071e2:	3a04      	subs	r2, #4
 80071e4:	2a24      	cmp	r2, #36	; 0x24
 80071e6:	d81d      	bhi.n	8007224 <_calloc_r+0x58>
 80071e8:	2a13      	cmp	r2, #19
 80071ea:	d914      	bls.n	8007216 <_calloc_r+0x4a>
 80071ec:	2300      	movs	r3, #0
 80071ee:	2a1b      	cmp	r2, #27
 80071f0:	e9c0 3300 	strd	r3, r3, [r0]
 80071f4:	d91b      	bls.n	800722e <_calloc_r+0x62>
 80071f6:	2a24      	cmp	r2, #36	; 0x24
 80071f8:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80071fc:	bf0a      	itet	eq
 80071fe:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8007202:	f100 0210 	addne.w	r2, r0, #16
 8007206:	f100 0218 	addeq.w	r2, r0, #24
 800720a:	2300      	movs	r3, #0
 800720c:	e9c2 3300 	strd	r3, r3, [r2]
 8007210:	6093      	str	r3, [r2, #8]
 8007212:	4620      	mov	r0, r4
 8007214:	bd10      	pop	{r4, pc}
 8007216:	4602      	mov	r2, r0
 8007218:	2300      	movs	r3, #0
 800721a:	e9c2 3300 	strd	r3, r3, [r2]
 800721e:	6093      	str	r3, [r2, #8]
 8007220:	4620      	mov	r0, r4
 8007222:	bd10      	pop	{r4, pc}
 8007224:	2100      	movs	r1, #0
 8007226:	f7fb fb6d 	bl	8002904 <memset>
 800722a:	4620      	mov	r0, r4
 800722c:	bd10      	pop	{r4, pc}
 800722e:	f100 0208 	add.w	r2, r0, #8
 8007232:	e7f1      	b.n	8007218 <_calloc_r+0x4c>

08007234 <_close_r>:
 8007234:	b538      	push	{r3, r4, r5, lr}
 8007236:	4c07      	ldr	r4, [pc, #28]	; (8007254 <_close_r+0x20>)
 8007238:	2300      	movs	r3, #0
 800723a:	4605      	mov	r5, r0
 800723c:	4608      	mov	r0, r1
 800723e:	6023      	str	r3, [r4, #0]
 8007240:	f7fb fad6 	bl	80027f0 <_close>
 8007244:	1c43      	adds	r3, r0, #1
 8007246:	d000      	beq.n	800724a <_close_r+0x16>
 8007248:	bd38      	pop	{r3, r4, r5, pc}
 800724a:	6823      	ldr	r3, [r4, #0]
 800724c:	2b00      	cmp	r3, #0
 800724e:	d0fb      	beq.n	8007248 <_close_r+0x14>
 8007250:	602b      	str	r3, [r5, #0]
 8007252:	bd38      	pop	{r3, r4, r5, pc}
 8007254:	20000c88 	.word	0x20000c88

08007258 <_fclose_r>:
 8007258:	b570      	push	{r4, r5, r6, lr}
 800725a:	2900      	cmp	r1, #0
 800725c:	d048      	beq.n	80072f0 <_fclose_r+0x98>
 800725e:	4605      	mov	r5, r0
 8007260:	460c      	mov	r4, r1
 8007262:	b110      	cbz	r0, 800726a <_fclose_r+0x12>
 8007264:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007266:	2b00      	cmp	r3, #0
 8007268:	d048      	beq.n	80072fc <_fclose_r+0xa4>
 800726a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800726c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007270:	07d0      	lsls	r0, r2, #31
 8007272:	d440      	bmi.n	80072f6 <_fclose_r+0x9e>
 8007274:	0599      	lsls	r1, r3, #22
 8007276:	d530      	bpl.n	80072da <_fclose_r+0x82>
 8007278:	4621      	mov	r1, r4
 800727a:	4628      	mov	r0, r5
 800727c:	f7fe f990 	bl	80055a0 <__sflush_r>
 8007280:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8007282:	4606      	mov	r6, r0
 8007284:	b133      	cbz	r3, 8007294 <_fclose_r+0x3c>
 8007286:	69e1      	ldr	r1, [r4, #28]
 8007288:	4628      	mov	r0, r5
 800728a:	4798      	blx	r3
 800728c:	2800      	cmp	r0, #0
 800728e:	bfb8      	it	lt
 8007290:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8007294:	89a3      	ldrh	r3, [r4, #12]
 8007296:	061a      	lsls	r2, r3, #24
 8007298:	d43c      	bmi.n	8007314 <_fclose_r+0xbc>
 800729a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800729c:	b141      	cbz	r1, 80072b0 <_fclose_r+0x58>
 800729e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80072a2:	4299      	cmp	r1, r3
 80072a4:	d002      	beq.n	80072ac <_fclose_r+0x54>
 80072a6:	4628      	mov	r0, r5
 80072a8:	f7fe fb22 	bl	80058f0 <_free_r>
 80072ac:	2300      	movs	r3, #0
 80072ae:	6323      	str	r3, [r4, #48]	; 0x30
 80072b0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80072b2:	b121      	cbz	r1, 80072be <_fclose_r+0x66>
 80072b4:	4628      	mov	r0, r5
 80072b6:	f7fe fb1b 	bl	80058f0 <_free_r>
 80072ba:	2300      	movs	r3, #0
 80072bc:	6463      	str	r3, [r4, #68]	; 0x44
 80072be:	f7fe faa1 	bl	8005804 <__sfp_lock_acquire>
 80072c2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80072c4:	2200      	movs	r2, #0
 80072c6:	07db      	lsls	r3, r3, #31
 80072c8:	81a2      	strh	r2, [r4, #12]
 80072ca:	d51f      	bpl.n	800730c <_fclose_r+0xb4>
 80072cc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072ce:	f7fe fdbb 	bl	8005e48 <__retarget_lock_close_recursive>
 80072d2:	f7fe fa9d 	bl	8005810 <__sfp_lock_release>
 80072d6:	4630      	mov	r0, r6
 80072d8:	bd70      	pop	{r4, r5, r6, pc}
 80072da:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072dc:	f7fe fdb6 	bl	8005e4c <__retarget_lock_acquire_recursive>
 80072e0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80072e4:	2b00      	cmp	r3, #0
 80072e6:	d1c7      	bne.n	8007278 <_fclose_r+0x20>
 80072e8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80072ea:	f016 0601 	ands.w	r6, r6, #1
 80072ee:	d016      	beq.n	800731e <_fclose_r+0xc6>
 80072f0:	2600      	movs	r6, #0
 80072f2:	4630      	mov	r0, r6
 80072f4:	bd70      	pop	{r4, r5, r6, pc}
 80072f6:	2b00      	cmp	r3, #0
 80072f8:	d0fa      	beq.n	80072f0 <_fclose_r+0x98>
 80072fa:	e7bd      	b.n	8007278 <_fclose_r+0x20>
 80072fc:	f7fe fa56 	bl	80057ac <__sinit>
 8007300:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007302:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007306:	07d0      	lsls	r0, r2, #31
 8007308:	d4f5      	bmi.n	80072f6 <_fclose_r+0x9e>
 800730a:	e7b3      	b.n	8007274 <_fclose_r+0x1c>
 800730c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800730e:	f7fe fd9f 	bl	8005e50 <__retarget_lock_release_recursive>
 8007312:	e7db      	b.n	80072cc <_fclose_r+0x74>
 8007314:	6921      	ldr	r1, [r4, #16]
 8007316:	4628      	mov	r0, r5
 8007318:	f7fe faea 	bl	80058f0 <_free_r>
 800731c:	e7bd      	b.n	800729a <_fclose_r+0x42>
 800731e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007320:	f7fe fd96 	bl	8005e50 <__retarget_lock_release_recursive>
 8007324:	4630      	mov	r0, r6
 8007326:	bd70      	pop	{r4, r5, r6, pc}

08007328 <__fputwc>:
 8007328:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800732c:	b082      	sub	sp, #8
 800732e:	4681      	mov	r9, r0
 8007330:	4688      	mov	r8, r1
 8007332:	4614      	mov	r4, r2
 8007334:	f000 f8a0 	bl	8007478 <__locale_mb_cur_max>
 8007338:	2801      	cmp	r0, #1
 800733a:	d103      	bne.n	8007344 <__fputwc+0x1c>
 800733c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007340:	2bfe      	cmp	r3, #254	; 0xfe
 8007342:	d933      	bls.n	80073ac <__fputwc+0x84>
 8007344:	4642      	mov	r2, r8
 8007346:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800734a:	a901      	add	r1, sp, #4
 800734c:	4648      	mov	r0, r9
 800734e:	f000 f93b 	bl	80075c8 <_wcrtomb_r>
 8007352:	1c42      	adds	r2, r0, #1
 8007354:	4606      	mov	r6, r0
 8007356:	d02f      	beq.n	80073b8 <__fputwc+0x90>
 8007358:	b320      	cbz	r0, 80073a4 <__fputwc+0x7c>
 800735a:	f89d c004 	ldrb.w	ip, [sp, #4]
 800735e:	2500      	movs	r5, #0
 8007360:	f10d 0a04 	add.w	sl, sp, #4
 8007364:	e009      	b.n	800737a <__fputwc+0x52>
 8007366:	6823      	ldr	r3, [r4, #0]
 8007368:	1c5a      	adds	r2, r3, #1
 800736a:	6022      	str	r2, [r4, #0]
 800736c:	f883 c000 	strb.w	ip, [r3]
 8007370:	3501      	adds	r5, #1
 8007372:	42b5      	cmp	r5, r6
 8007374:	d216      	bcs.n	80073a4 <__fputwc+0x7c>
 8007376:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800737a:	68a3      	ldr	r3, [r4, #8]
 800737c:	3b01      	subs	r3, #1
 800737e:	2b00      	cmp	r3, #0
 8007380:	60a3      	str	r3, [r4, #8]
 8007382:	daf0      	bge.n	8007366 <__fputwc+0x3e>
 8007384:	69a7      	ldr	r7, [r4, #24]
 8007386:	42bb      	cmp	r3, r7
 8007388:	4661      	mov	r1, ip
 800738a:	4622      	mov	r2, r4
 800738c:	4648      	mov	r0, r9
 800738e:	db02      	blt.n	8007396 <__fputwc+0x6e>
 8007390:	f1bc 0f0a 	cmp.w	ip, #10
 8007394:	d1e7      	bne.n	8007366 <__fputwc+0x3e>
 8007396:	f000 f8bf 	bl	8007518 <__swbuf_r>
 800739a:	1c43      	adds	r3, r0, #1
 800739c:	d1e8      	bne.n	8007370 <__fputwc+0x48>
 800739e:	b002      	add	sp, #8
 80073a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80073a4:	4640      	mov	r0, r8
 80073a6:	b002      	add	sp, #8
 80073a8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80073ac:	fa5f fc88 	uxtb.w	ip, r8
 80073b0:	4606      	mov	r6, r0
 80073b2:	f88d c004 	strb.w	ip, [sp, #4]
 80073b6:	e7d2      	b.n	800735e <__fputwc+0x36>
 80073b8:	89a3      	ldrh	r3, [r4, #12]
 80073ba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80073be:	81a3      	strh	r3, [r4, #12]
 80073c0:	b002      	add	sp, #8
 80073c2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80073c6:	bf00      	nop

080073c8 <_fputwc_r>:
 80073c8:	b530      	push	{r4, r5, lr}
 80073ca:	4605      	mov	r5, r0
 80073cc:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80073ce:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80073d2:	07c0      	lsls	r0, r0, #31
 80073d4:	4614      	mov	r4, r2
 80073d6:	b083      	sub	sp, #12
 80073d8:	b29a      	uxth	r2, r3
 80073da:	d401      	bmi.n	80073e0 <_fputwc_r+0x18>
 80073dc:	0590      	lsls	r0, r2, #22
 80073de:	d51c      	bpl.n	800741a <_fputwc_r+0x52>
 80073e0:	0490      	lsls	r0, r2, #18
 80073e2:	d406      	bmi.n	80073f2 <_fputwc_r+0x2a>
 80073e4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80073e6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80073ea:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80073ee:	81a3      	strh	r3, [r4, #12]
 80073f0:	6662      	str	r2, [r4, #100]	; 0x64
 80073f2:	4628      	mov	r0, r5
 80073f4:	4622      	mov	r2, r4
 80073f6:	f7ff ff97 	bl	8007328 <__fputwc>
 80073fa:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80073fc:	07da      	lsls	r2, r3, #31
 80073fe:	4605      	mov	r5, r0
 8007400:	d402      	bmi.n	8007408 <_fputwc_r+0x40>
 8007402:	89a3      	ldrh	r3, [r4, #12]
 8007404:	059b      	lsls	r3, r3, #22
 8007406:	d502      	bpl.n	800740e <_fputwc_r+0x46>
 8007408:	4628      	mov	r0, r5
 800740a:	b003      	add	sp, #12
 800740c:	bd30      	pop	{r4, r5, pc}
 800740e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007410:	f7fe fd1e 	bl	8005e50 <__retarget_lock_release_recursive>
 8007414:	4628      	mov	r0, r5
 8007416:	b003      	add	sp, #12
 8007418:	bd30      	pop	{r4, r5, pc}
 800741a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800741c:	9101      	str	r1, [sp, #4]
 800741e:	f7fe fd15 	bl	8005e4c <__retarget_lock_acquire_recursive>
 8007422:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007426:	9901      	ldr	r1, [sp, #4]
 8007428:	b29a      	uxth	r2, r3
 800742a:	e7d9      	b.n	80073e0 <_fputwc_r+0x18>

0800742c <_fstat_r>:
 800742c:	b538      	push	{r3, r4, r5, lr}
 800742e:	460b      	mov	r3, r1
 8007430:	4c07      	ldr	r4, [pc, #28]	; (8007450 <_fstat_r+0x24>)
 8007432:	4605      	mov	r5, r0
 8007434:	4611      	mov	r1, r2
 8007436:	4618      	mov	r0, r3
 8007438:	2300      	movs	r3, #0
 800743a:	6023      	str	r3, [r4, #0]
 800743c:	f7fb f9db 	bl	80027f6 <_fstat>
 8007440:	1c43      	adds	r3, r0, #1
 8007442:	d000      	beq.n	8007446 <_fstat_r+0x1a>
 8007444:	bd38      	pop	{r3, r4, r5, pc}
 8007446:	6823      	ldr	r3, [r4, #0]
 8007448:	2b00      	cmp	r3, #0
 800744a:	d0fb      	beq.n	8007444 <_fstat_r+0x18>
 800744c:	602b      	str	r3, [r5, #0]
 800744e:	bd38      	pop	{r3, r4, r5, pc}
 8007450:	20000c88 	.word	0x20000c88

08007454 <_isatty_r>:
 8007454:	b538      	push	{r3, r4, r5, lr}
 8007456:	4c07      	ldr	r4, [pc, #28]	; (8007474 <_isatty_r+0x20>)
 8007458:	2300      	movs	r3, #0
 800745a:	4605      	mov	r5, r0
 800745c:	4608      	mov	r0, r1
 800745e:	6023      	str	r3, [r4, #0]
 8007460:	f7fb f9ce 	bl	8002800 <_isatty>
 8007464:	1c43      	adds	r3, r0, #1
 8007466:	d000      	beq.n	800746a <_isatty_r+0x16>
 8007468:	bd38      	pop	{r3, r4, r5, pc}
 800746a:	6823      	ldr	r3, [r4, #0]
 800746c:	2b00      	cmp	r3, #0
 800746e:	d0fb      	beq.n	8007468 <_isatty_r+0x14>
 8007470:	602b      	str	r3, [r5, #0]
 8007472:	bd38      	pop	{r3, r4, r5, pc}
 8007474:	20000c88 	.word	0x20000c88

08007478 <__locale_mb_cur_max>:
 8007478:	4b04      	ldr	r3, [pc, #16]	; (800748c <__locale_mb_cur_max+0x14>)
 800747a:	4a05      	ldr	r2, [pc, #20]	; (8007490 <__locale_mb_cur_max+0x18>)
 800747c:	681b      	ldr	r3, [r3, #0]
 800747e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007480:	2b00      	cmp	r3, #0
 8007482:	bf08      	it	eq
 8007484:	4613      	moveq	r3, r2
 8007486:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800748a:	4770      	bx	lr
 800748c:	2000001c 	.word	0x2000001c
 8007490:	2000085c 	.word	0x2000085c

08007494 <_lseek_r>:
 8007494:	b570      	push	{r4, r5, r6, lr}
 8007496:	460d      	mov	r5, r1
 8007498:	4c08      	ldr	r4, [pc, #32]	; (80074bc <_lseek_r+0x28>)
 800749a:	4611      	mov	r1, r2
 800749c:	4606      	mov	r6, r0
 800749e:	461a      	mov	r2, r3
 80074a0:	4628      	mov	r0, r5
 80074a2:	2300      	movs	r3, #0
 80074a4:	6023      	str	r3, [r4, #0]
 80074a6:	f7fb f9ad 	bl	8002804 <_lseek>
 80074aa:	1c43      	adds	r3, r0, #1
 80074ac:	d000      	beq.n	80074b0 <_lseek_r+0x1c>
 80074ae:	bd70      	pop	{r4, r5, r6, pc}
 80074b0:	6823      	ldr	r3, [r4, #0]
 80074b2:	2b00      	cmp	r3, #0
 80074b4:	d0fb      	beq.n	80074ae <_lseek_r+0x1a>
 80074b6:	6033      	str	r3, [r6, #0]
 80074b8:	bd70      	pop	{r4, r5, r6, pc}
 80074ba:	bf00      	nop
 80074bc:	20000c88 	.word	0x20000c88

080074c0 <__ascii_mbtowc>:
 80074c0:	b082      	sub	sp, #8
 80074c2:	b149      	cbz	r1, 80074d8 <__ascii_mbtowc+0x18>
 80074c4:	b15a      	cbz	r2, 80074de <__ascii_mbtowc+0x1e>
 80074c6:	b16b      	cbz	r3, 80074e4 <__ascii_mbtowc+0x24>
 80074c8:	7813      	ldrb	r3, [r2, #0]
 80074ca:	600b      	str	r3, [r1, #0]
 80074cc:	7812      	ldrb	r2, [r2, #0]
 80074ce:	1c10      	adds	r0, r2, #0
 80074d0:	bf18      	it	ne
 80074d2:	2001      	movne	r0, #1
 80074d4:	b002      	add	sp, #8
 80074d6:	4770      	bx	lr
 80074d8:	a901      	add	r1, sp, #4
 80074da:	2a00      	cmp	r2, #0
 80074dc:	d1f3      	bne.n	80074c6 <__ascii_mbtowc+0x6>
 80074de:	4610      	mov	r0, r2
 80074e0:	b002      	add	sp, #8
 80074e2:	4770      	bx	lr
 80074e4:	f06f 0001 	mvn.w	r0, #1
 80074e8:	e7f4      	b.n	80074d4 <__ascii_mbtowc+0x14>
 80074ea:	bf00      	nop

080074ec <_read_r>:
 80074ec:	b570      	push	{r4, r5, r6, lr}
 80074ee:	460d      	mov	r5, r1
 80074f0:	4c08      	ldr	r4, [pc, #32]	; (8007514 <_read_r+0x28>)
 80074f2:	4611      	mov	r1, r2
 80074f4:	4606      	mov	r6, r0
 80074f6:	461a      	mov	r2, r3
 80074f8:	4628      	mov	r0, r5
 80074fa:	2300      	movs	r3, #0
 80074fc:	6023      	str	r3, [r4, #0]
 80074fe:	f7fb f935 	bl	800276c <_read>
 8007502:	1c43      	adds	r3, r0, #1
 8007504:	d000      	beq.n	8007508 <_read_r+0x1c>
 8007506:	bd70      	pop	{r4, r5, r6, pc}
 8007508:	6823      	ldr	r3, [r4, #0]
 800750a:	2b00      	cmp	r3, #0
 800750c:	d0fb      	beq.n	8007506 <_read_r+0x1a>
 800750e:	6033      	str	r3, [r6, #0]
 8007510:	bd70      	pop	{r4, r5, r6, pc}
 8007512:	bf00      	nop
 8007514:	20000c88 	.word	0x20000c88

08007518 <__swbuf_r>:
 8007518:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800751a:	460d      	mov	r5, r1
 800751c:	4614      	mov	r4, r2
 800751e:	4606      	mov	r6, r0
 8007520:	b110      	cbz	r0, 8007528 <__swbuf_r+0x10>
 8007522:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007524:	2b00      	cmp	r3, #0
 8007526:	d043      	beq.n	80075b0 <__swbuf_r+0x98>
 8007528:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800752c:	69a3      	ldr	r3, [r4, #24]
 800752e:	60a3      	str	r3, [r4, #8]
 8007530:	b291      	uxth	r1, r2
 8007532:	0708      	lsls	r0, r1, #28
 8007534:	d51b      	bpl.n	800756e <__swbuf_r+0x56>
 8007536:	6923      	ldr	r3, [r4, #16]
 8007538:	b1cb      	cbz	r3, 800756e <__swbuf_r+0x56>
 800753a:	b2ed      	uxtb	r5, r5
 800753c:	0489      	lsls	r1, r1, #18
 800753e:	462f      	mov	r7, r5
 8007540:	d522      	bpl.n	8007588 <__swbuf_r+0x70>
 8007542:	6822      	ldr	r2, [r4, #0]
 8007544:	6961      	ldr	r1, [r4, #20]
 8007546:	1ad3      	subs	r3, r2, r3
 8007548:	4299      	cmp	r1, r3
 800754a:	dd29      	ble.n	80075a0 <__swbuf_r+0x88>
 800754c:	3301      	adds	r3, #1
 800754e:	68a1      	ldr	r1, [r4, #8]
 8007550:	1c50      	adds	r0, r2, #1
 8007552:	3901      	subs	r1, #1
 8007554:	60a1      	str	r1, [r4, #8]
 8007556:	6020      	str	r0, [r4, #0]
 8007558:	7015      	strb	r5, [r2, #0]
 800755a:	6962      	ldr	r2, [r4, #20]
 800755c:	429a      	cmp	r2, r3
 800755e:	d02a      	beq.n	80075b6 <__swbuf_r+0x9e>
 8007560:	89a3      	ldrh	r3, [r4, #12]
 8007562:	07db      	lsls	r3, r3, #31
 8007564:	d501      	bpl.n	800756a <__swbuf_r+0x52>
 8007566:	2d0a      	cmp	r5, #10
 8007568:	d025      	beq.n	80075b6 <__swbuf_r+0x9e>
 800756a:	4638      	mov	r0, r7
 800756c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800756e:	4621      	mov	r1, r4
 8007570:	4630      	mov	r0, r6
 8007572:	f7fc fffd 	bl	8004570 <__swsetup_r>
 8007576:	bb20      	cbnz	r0, 80075c2 <__swbuf_r+0xaa>
 8007578:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800757c:	6923      	ldr	r3, [r4, #16]
 800757e:	b291      	uxth	r1, r2
 8007580:	b2ed      	uxtb	r5, r5
 8007582:	0489      	lsls	r1, r1, #18
 8007584:	462f      	mov	r7, r5
 8007586:	d4dc      	bmi.n	8007542 <__swbuf_r+0x2a>
 8007588:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800758a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800758e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007592:	81a2      	strh	r2, [r4, #12]
 8007594:	6822      	ldr	r2, [r4, #0]
 8007596:	6661      	str	r1, [r4, #100]	; 0x64
 8007598:	6961      	ldr	r1, [r4, #20]
 800759a:	1ad3      	subs	r3, r2, r3
 800759c:	4299      	cmp	r1, r3
 800759e:	dcd5      	bgt.n	800754c <__swbuf_r+0x34>
 80075a0:	4621      	mov	r1, r4
 80075a2:	4630      	mov	r0, r6
 80075a4:	f7fe f8a6 	bl	80056f4 <_fflush_r>
 80075a8:	b958      	cbnz	r0, 80075c2 <__swbuf_r+0xaa>
 80075aa:	6822      	ldr	r2, [r4, #0]
 80075ac:	2301      	movs	r3, #1
 80075ae:	e7ce      	b.n	800754e <__swbuf_r+0x36>
 80075b0:	f7fe f8fc 	bl	80057ac <__sinit>
 80075b4:	e7b8      	b.n	8007528 <__swbuf_r+0x10>
 80075b6:	4621      	mov	r1, r4
 80075b8:	4630      	mov	r0, r6
 80075ba:	f7fe f89b 	bl	80056f4 <_fflush_r>
 80075be:	2800      	cmp	r0, #0
 80075c0:	d0d3      	beq.n	800756a <__swbuf_r+0x52>
 80075c2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80075c6:	e7d0      	b.n	800756a <__swbuf_r+0x52>

080075c8 <_wcrtomb_r>:
 80075c8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80075ca:	4c11      	ldr	r4, [pc, #68]	; (8007610 <_wcrtomb_r+0x48>)
 80075cc:	6824      	ldr	r4, [r4, #0]
 80075ce:	b085      	sub	sp, #20
 80075d0:	4606      	mov	r6, r0
 80075d2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80075d4:	461f      	mov	r7, r3
 80075d6:	b151      	cbz	r1, 80075ee <_wcrtomb_r+0x26>
 80075d8:	4d0e      	ldr	r5, [pc, #56]	; (8007614 <_wcrtomb_r+0x4c>)
 80075da:	2c00      	cmp	r4, #0
 80075dc:	bf08      	it	eq
 80075de:	462c      	moveq	r4, r5
 80075e0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80075e4:	47a0      	blx	r4
 80075e6:	1c43      	adds	r3, r0, #1
 80075e8:	d00c      	beq.n	8007604 <_wcrtomb_r+0x3c>
 80075ea:	b005      	add	sp, #20
 80075ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80075ee:	4a09      	ldr	r2, [pc, #36]	; (8007614 <_wcrtomb_r+0x4c>)
 80075f0:	2c00      	cmp	r4, #0
 80075f2:	bf08      	it	eq
 80075f4:	4614      	moveq	r4, r2
 80075f6:	460a      	mov	r2, r1
 80075f8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80075fc:	a901      	add	r1, sp, #4
 80075fe:	47a0      	blx	r4
 8007600:	1c43      	adds	r3, r0, #1
 8007602:	d1f2      	bne.n	80075ea <_wcrtomb_r+0x22>
 8007604:	2200      	movs	r2, #0
 8007606:	238a      	movs	r3, #138	; 0x8a
 8007608:	603a      	str	r2, [r7, #0]
 800760a:	6033      	str	r3, [r6, #0]
 800760c:	b005      	add	sp, #20
 800760e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007610:	2000001c 	.word	0x2000001c
 8007614:	2000085c 	.word	0x2000085c

08007618 <__ascii_wctomb>:
 8007618:	b121      	cbz	r1, 8007624 <__ascii_wctomb+0xc>
 800761a:	2aff      	cmp	r2, #255	; 0xff
 800761c:	d804      	bhi.n	8007628 <__ascii_wctomb+0x10>
 800761e:	700a      	strb	r2, [r1, #0]
 8007620:	2001      	movs	r0, #1
 8007622:	4770      	bx	lr
 8007624:	4608      	mov	r0, r1
 8007626:	4770      	bx	lr
 8007628:	238a      	movs	r3, #138	; 0x8a
 800762a:	6003      	str	r3, [r0, #0]
 800762c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007630:	4770      	bx	lr
 8007632:	bf00      	nop

08007634 <_init>:
 8007634:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007636:	bf00      	nop
 8007638:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800763a:	bc08      	pop	{r3}
 800763c:	469e      	mov	lr, r3
 800763e:	4770      	bx	lr

08007640 <_fini>:
 8007640:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007642:	bf00      	nop
 8007644:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007646:	bc08      	pop	{r3}
 8007648:	469e      	mov	lr, r3
 800764a:	4770      	bx	lr
 800764c:	0000      	movs	r0, r0
	...
