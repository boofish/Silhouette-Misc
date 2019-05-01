
nettle-des.elf:     file format elf32-littlearm


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
 80001e0:	08007f44 	.word	0x08007f44

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
 80001fc:	08007f44 	.word	0x08007f44

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
 8001108:	f640 20b0 	movw	r0, #2736	; 0xab0
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20b0 	movw	r0, #2736	; 0xab0
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
 80013e8:	f648 3274 	movw	r2, #35700	; 0x8b74
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
 8001462:	f648 326c 	movw	r2, #35692	; 0x8b6c
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
 800148c:	f648 326c 	movw	r2, #35692	; 0x8b6c
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
 8001842:	f640 21b4 	movw	r1, #2740	; 0xab4
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
 800188c:	f640 20b4 	movw	r0, #2740	; 0xab4
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20b4 	movw	r0, #2740	; 0xab4
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
 80019d4:	f648 33a4 	movw	r3, #35748	; 0x8ba4
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
 80019fc:	f648 33b4 	movw	r3, #35764	; 0x8bb4
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

08001eb6 <des_encrypt>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	b08d      	sub	sp, #52	; 0x34
 8001ec0:	4686      	mov	lr, r0
 8001ec2:	2900      	cmp	r1, #0
 8001ec4:	9304      	str	r3, [sp, #16]
 8001ec6:	f000 83de 	beq.w	8002686 <des_encrypt+0x7d0>
 8001eca:	f248 335c 	movw	r3, #33628	; 0x835c
 8001ece:	2400      	movs	r4, #0
 8001ed0:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001ed4:	f503 7640 	add.w	r6, r3, #768	; 0x300
 8001ed8:	9609      	str	r6, [sp, #36]	; 0x24
 8001eda:	f503 7600 	add.w	r6, r3, #512	; 0x200
 8001ede:	960b      	str	r6, [sp, #44]	; 0x2c
 8001ee0:	f503 7680 	add.w	r6, r3, #256	; 0x100
 8001ee4:	9608      	str	r6, [sp, #32]
 8001ee6:	f503 66e0 	add.w	r6, r3, #1792	; 0x700
 8001eea:	9601      	str	r6, [sp, #4]
 8001eec:	f503 66c0 	add.w	r6, r3, #1536	; 0x600
 8001ef0:	9600      	str	r6, [sp, #0]
 8001ef2:	f503 66a0 	add.w	r6, r3, #1280	; 0x500
 8001ef6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001efa:	9607      	str	r6, [sp, #28]
 8001efc:	930a      	str	r3, [sp, #40]	; 0x28
 8001efe:	e9cd 2102 	strd	r2, r1, [sp, #8]
 8001f02:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8001f06:	9e04      	ldr	r6, [sp, #16]
 8001f08:	940c      	str	r4, [sp, #48]	; 0x30
 8001f0a:	1931      	adds	r1, r6, r4
 8001f0c:	79ca      	ldrb	r2, [r1, #7]
 8001f0e:	798b      	ldrb	r3, [r1, #6]
 8001f10:	788c      	ldrb	r4, [r1, #2]
 8001f12:	78cd      	ldrb	r5, [r1, #3]
 8001f14:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
 8001f18:	794b      	ldrb	r3, [r1, #5]
 8001f1a:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
 8001f1e:	784b      	ldrb	r3, [r1, #1]
 8001f20:	7909      	ldrb	r1, [r1, #4]
 8001f22:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
 8001f26:	ea44 2205 	orr.w	r2, r4, r5, lsl #8
 8001f2a:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
 8001f2e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8001f30:	5cf3      	ldrb	r3, [r6, r3]
 8001f32:	e9de 4c00 	ldrd	r4, ip, [lr]
 8001f36:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8001f3a:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
 8001f3e:	ea82 1311 	eor.w	r3, r2, r1, lsr #4
 8001f42:	f023 33f0 	bic.w	r3, r3, #4042322160	; 0xf0f0f0f0
 8001f46:	ea81 1103 	eor.w	r1, r1, r3, lsl #4
 8001f4a:	405a      	eors	r2, r3
 8001f4c:	b28b      	uxth	r3, r1
 8001f4e:	ea83 4312 	eor.w	r3, r3, r2, lsr #16
 8001f52:	4059      	eors	r1, r3
 8001f54:	ea82 4203 	eor.w	r2, r2, r3, lsl #16
 8001f58:	ea82 0391 	eor.w	r3, r2, r1, lsr #2
 8001f5c:	f023 33cc 	bic.w	r3, r3, #3435973836	; 0xcccccccc
 8001f60:	ea83 0502 	eor.w	r5, r3, r2
 8001f64:	ea81 0183 	eor.w	r1, r1, r3, lsl #2
 8001f68:	ea81 2215 	eor.w	r2, r1, r5, lsr #8
 8001f6c:	fa3f f382 	uxtb16	r3, r2
 8001f70:	ea83 0201 	eor.w	r2, r3, r1
 8001f74:	ea85 2103 	eor.w	r1, r5, r3, lsl #8
 8001f78:	ea81 0352 	eor.w	r3, r1, r2, lsr #1
 8001f7c:	f023 30aa 	bic.w	r0, r3, #2863311530	; 0xaaaaaaaa
 8001f80:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001f84:	4041      	eors	r1, r0
 8001f86:	ea84 0471 	eor.w	r4, r4, r1, ror #1
 8001f8a:	f004 0bfc 	and.w	fp, r4, #252	; 0xfc
 8001f8e:	9305      	str	r3, [sp, #20]
 8001f90:	f858 600b 	ldr.w	r6, [r8, fp]
 8001f94:	f248 3b5c 	movw	fp, #33628	; 0x835c
 8001f98:	f8de 300c 	ldr.w	r3, [lr, #12]
 8001f9c:	f6c0 0b00 	movt	fp, #2048	; 0x800
 8001fa0:	9306      	str	r3, [sp, #24]
 8001fa2:	f3c4 2385 	ubfx	r3, r4, #10, #6
 8001fa6:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8001fa8:	f855 3023 	ldr.w	r3, [r5, r3, lsl #2]
 8001fac:	25fc      	movs	r5, #252	; 0xfc
 8001fae:	4073      	eors	r3, r6
 8001fb0:	f3c4 4685 	ubfx	r6, r4, #18, #6
 8001fb4:	f8dd a020 	ldr.w	sl, [sp, #32]
 8001fb8:	0ea4      	lsrs	r4, r4, #26
 8001fba:	f85b 4024 	ldr.w	r4, [fp, r4, lsl #2]
 8001fbe:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 8001fc2:	4073      	eors	r3, r6
 8001fc4:	4063      	eors	r3, r4
 8001fc6:	ea8c 0471 	eor.w	r4, ip, r1, ror #1
 8001fca:	ea05 7534 	and.w	r5, r5, r4, ror #28
 8001fce:	f859 5005 	ldr.w	r5, [r9, r5]
 8001fd2:	406b      	eors	r3, r5
 8001fd4:	f3c4 1585 	ubfx	r5, r4, #6, #6
 8001fd8:	f8dd b000 	ldr.w	fp, [sp]
 8001fdc:	f85b 5025 	ldr.w	r5, [fp, r5, lsl #2]
 8001fe0:	406b      	eors	r3, r5
 8001fe2:	f3c4 3585 	ubfx	r5, r4, #14, #6
 8001fe6:	f8dd c01c 	ldr.w	ip, [sp, #28]
 8001fea:	f3c4 5485 	ubfx	r4, r4, #22, #6
 8001fee:	f85c 5025 	ldr.w	r5, [ip, r5, lsl #2]
 8001ff2:	406b      	eors	r3, r5
 8001ff4:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8001ff6:	f855 4024 	ldr.w	r4, [r5, r4, lsl #2]
 8001ffa:	4063      	eors	r3, r4
 8001ffc:	f248 345c 	movw	r4, #33628	; 0x835c
 8002000:	ea83 0272 	eor.w	r2, r3, r2, ror #1
 8002004:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002008:	4042      	eors	r2, r0
 800200a:	9805      	ldr	r0, [sp, #20]
 800200c:	ea82 0300 	eor.w	r3, r2, r0
 8002010:	f3c3 2585 	ubfx	r5, r3, #10, #6
 8002014:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8002016:	f003 06fc 	and.w	r6, r3, #252	; 0xfc
 800201a:	f858 6006 	ldr.w	r6, [r8, r6]
 800201e:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 8002022:	406e      	eors	r6, r5
 8002024:	f3c3 4585 	ubfx	r5, r3, #18, #6
 8002028:	0e9b      	lsrs	r3, r3, #26
 800202a:	f85a 5025 	ldr.w	r5, [sl, r5, lsl #2]
 800202e:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002032:	9c06      	ldr	r4, [sp, #24]
 8002034:	406e      	eors	r6, r5
 8002036:	4073      	eors	r3, r6
 8002038:	ea82 0604 	eor.w	r6, r2, r4
 800203c:	24fc      	movs	r4, #252	; 0xfc
 800203e:	ea04 7536 	and.w	r5, r4, r6, ror #28
 8002042:	f859 5005 	ldr.w	r5, [r9, r5]
 8002046:	406b      	eors	r3, r5
 8002048:	f3c6 1585 	ubfx	r5, r6, #6, #6
 800204c:	f85b 5025 	ldr.w	r5, [fp, r5, lsl #2]
 8002050:	406b      	eors	r3, r5
 8002052:	f3c6 3585 	ubfx	r5, r6, #14, #6
 8002056:	f3c6 5685 	ubfx	r6, r6, #22, #6
 800205a:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 800205c:	f85c 5025 	ldr.w	r5, [ip, r5, lsl #2]
 8002060:	f854 6026 	ldr.w	r6, [r4, r6, lsl #2]
 8002064:	406b      	eors	r3, r5
 8002066:	4073      	eors	r3, r6
 8002068:	ea83 0171 	eor.w	r1, r3, r1, ror #1
 800206c:	f8de 3010 	ldr.w	r3, [lr, #16]
 8002070:	404b      	eors	r3, r1
 8002072:	f003 06fc 	and.w	r6, r3, #252	; 0xfc
 8002076:	f3c3 2585 	ubfx	r5, r3, #10, #6
 800207a:	f858 6006 	ldr.w	r6, [r8, r6]
 800207e:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 8002082:	406e      	eors	r6, r5
 8002084:	f248 355c 	movw	r5, #33628	; 0x835c
 8002088:	4072      	eors	r2, r6
 800208a:	f3c3 4685 	ubfx	r6, r3, #18, #6
 800208e:	0e9b      	lsrs	r3, r3, #26
 8002090:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002094:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 8002098:	f855 3023 	ldr.w	r3, [r5, r3, lsl #2]
 800209c:	25fc      	movs	r5, #252	; 0xfc
 800209e:	4072      	eors	r2, r6
 80020a0:	405a      	eors	r2, r3
 80020a2:	f8de 3014 	ldr.w	r3, [lr, #20]
 80020a6:	404b      	eors	r3, r1
 80020a8:	ea05 7633 	and.w	r6, r5, r3, ror #28
 80020ac:	f859 6006 	ldr.w	r6, [r9, r6]
 80020b0:	4072      	eors	r2, r6
 80020b2:	f3c3 1685 	ubfx	r6, r3, #6, #6
 80020b6:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 80020ba:	4072      	eors	r2, r6
 80020bc:	f3c3 3685 	ubfx	r6, r3, #14, #6
 80020c0:	f3c3 5385 	ubfx	r3, r3, #22, #6
 80020c4:	f85c 6026 	ldr.w	r6, [ip, r6, lsl #2]
 80020c8:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 80020cc:	4072      	eors	r2, r6
 80020ce:	4053      	eors	r3, r2
 80020d0:	f8de 2018 	ldr.w	r2, [lr, #24]
 80020d4:	405a      	eors	r2, r3
 80020d6:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 80020da:	f3c2 2685 	ubfx	r6, r2, #10, #6
 80020de:	f858 5005 	ldr.w	r5, [r8, r5]
 80020e2:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 80020e6:	4069      	eors	r1, r5
 80020e8:	f248 355c 	movw	r5, #33628	; 0x835c
 80020ec:	4071      	eors	r1, r6
 80020ee:	f3c2 4685 	ubfx	r6, r2, #18, #6
 80020f2:	0e92      	lsrs	r2, r2, #26
 80020f4:	f6c0 0500 	movt	r5, #2048	; 0x800
 80020f8:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 80020fc:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 8002100:	25fc      	movs	r5, #252	; 0xfc
 8002102:	4071      	eors	r1, r6
 8002104:	4051      	eors	r1, r2
 8002106:	f8de 201c 	ldr.w	r2, [lr, #28]
 800210a:	405a      	eors	r2, r3
 800210c:	ea05 7632 	and.w	r6, r5, r2, ror #28
 8002110:	f859 6006 	ldr.w	r6, [r9, r6]
 8002114:	4071      	eors	r1, r6
 8002116:	f3c2 1685 	ubfx	r6, r2, #6, #6
 800211a:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 800211e:	4071      	eors	r1, r6
 8002120:	f3c2 3685 	ubfx	r6, r2, #14, #6
 8002124:	f3c2 5285 	ubfx	r2, r2, #22, #6
 8002128:	f85c 6026 	ldr.w	r6, [ip, r6, lsl #2]
 800212c:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 8002130:	4071      	eors	r1, r6
 8002132:	4051      	eors	r1, r2
 8002134:	f8de 2020 	ldr.w	r2, [lr, #32]
 8002138:	404a      	eors	r2, r1
 800213a:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 800213e:	f3c2 2685 	ubfx	r6, r2, #10, #6
 8002142:	f858 5005 	ldr.w	r5, [r8, r5]
 8002146:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 800214a:	406b      	eors	r3, r5
 800214c:	f248 355c 	movw	r5, #33628	; 0x835c
 8002150:	4073      	eors	r3, r6
 8002152:	f3c2 4685 	ubfx	r6, r2, #18, #6
 8002156:	0e92      	lsrs	r2, r2, #26
 8002158:	f6c0 0500 	movt	r5, #2048	; 0x800
 800215c:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 8002160:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 8002164:	25fc      	movs	r5, #252	; 0xfc
 8002166:	4073      	eors	r3, r6
 8002168:	405a      	eors	r2, r3
 800216a:	f8de 3024 	ldr.w	r3, [lr, #36]	; 0x24
 800216e:	404b      	eors	r3, r1
 8002170:	ea05 7633 	and.w	r6, r5, r3, ror #28
 8002174:	f859 6006 	ldr.w	r6, [r9, r6]
 8002178:	4072      	eors	r2, r6
 800217a:	f3c3 1685 	ubfx	r6, r3, #6, #6
 800217e:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 8002182:	4072      	eors	r2, r6
 8002184:	f3c3 3685 	ubfx	r6, r3, #14, #6
 8002188:	f3c3 5385 	ubfx	r3, r3, #22, #6
 800218c:	f85c 6026 	ldr.w	r6, [ip, r6, lsl #2]
 8002190:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002194:	4072      	eors	r2, r6
 8002196:	4053      	eors	r3, r2
 8002198:	f8de 2028 	ldr.w	r2, [lr, #40]	; 0x28
 800219c:	405a      	eors	r2, r3
 800219e:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 80021a2:	f3c2 2685 	ubfx	r6, r2, #10, #6
 80021a6:	f858 5005 	ldr.w	r5, [r8, r5]
 80021aa:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 80021ae:	4069      	eors	r1, r5
 80021b0:	f248 355c 	movw	r5, #33628	; 0x835c
 80021b4:	4071      	eors	r1, r6
 80021b6:	f3c2 4685 	ubfx	r6, r2, #18, #6
 80021ba:	0e92      	lsrs	r2, r2, #26
 80021bc:	f6c0 0500 	movt	r5, #2048	; 0x800
 80021c0:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 80021c4:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 80021c8:	25fc      	movs	r5, #252	; 0xfc
 80021ca:	4071      	eors	r1, r6
 80021cc:	4051      	eors	r1, r2
 80021ce:	f8de 202c 	ldr.w	r2, [lr, #44]	; 0x2c
 80021d2:	405a      	eors	r2, r3
 80021d4:	ea05 7632 	and.w	r6, r5, r2, ror #28
 80021d8:	f859 6006 	ldr.w	r6, [r9, r6]
 80021dc:	4071      	eors	r1, r6
 80021de:	f3c2 1685 	ubfx	r6, r2, #6, #6
 80021e2:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 80021e6:	4071      	eors	r1, r6
 80021e8:	f3c2 3685 	ubfx	r6, r2, #14, #6
 80021ec:	f3c2 5285 	ubfx	r2, r2, #22, #6
 80021f0:	f85c 6026 	ldr.w	r6, [ip, r6, lsl #2]
 80021f4:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 80021f8:	4071      	eors	r1, r6
 80021fa:	4051      	eors	r1, r2
 80021fc:	f8de 2030 	ldr.w	r2, [lr, #48]	; 0x30
 8002200:	404a      	eors	r2, r1
 8002202:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 8002206:	f3c2 2685 	ubfx	r6, r2, #10, #6
 800220a:	f858 5005 	ldr.w	r5, [r8, r5]
 800220e:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002212:	406b      	eors	r3, r5
 8002214:	f248 355c 	movw	r5, #33628	; 0x835c
 8002218:	4073      	eors	r3, r6
 800221a:	f3c2 4685 	ubfx	r6, r2, #18, #6
 800221e:	0e92      	lsrs	r2, r2, #26
 8002220:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002224:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 8002228:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 800222c:	25fc      	movs	r5, #252	; 0xfc
 800222e:	4073      	eors	r3, r6
 8002230:	405a      	eors	r2, r3
 8002232:	f8de 3034 	ldr.w	r3, [lr, #52]	; 0x34
 8002236:	404b      	eors	r3, r1
 8002238:	ea05 7633 	and.w	r6, r5, r3, ror #28
 800223c:	f859 6006 	ldr.w	r6, [r9, r6]
 8002240:	4072      	eors	r2, r6
 8002242:	f3c3 1685 	ubfx	r6, r3, #6, #6
 8002246:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 800224a:	4072      	eors	r2, r6
 800224c:	f3c3 3685 	ubfx	r6, r3, #14, #6
 8002250:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002254:	f85c 6026 	ldr.w	r6, [ip, r6, lsl #2]
 8002258:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 800225c:	4072      	eors	r2, r6
 800225e:	4053      	eors	r3, r2
 8002260:	f8de 2038 	ldr.w	r2, [lr, #56]	; 0x38
 8002264:	405a      	eors	r2, r3
 8002266:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 800226a:	f3c2 2685 	ubfx	r6, r2, #10, #6
 800226e:	f858 5005 	ldr.w	r5, [r8, r5]
 8002272:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002276:	f248 305c 	movw	r0, #33628	; 0x835c
 800227a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800227e:	4069      	eors	r1, r5
 8002280:	4071      	eors	r1, r6
 8002282:	f3c2 4685 	ubfx	r6, r2, #18, #6
 8002286:	0e92      	lsrs	r2, r2, #26
 8002288:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 800228c:	f850 2022 	ldr.w	r2, [r0, r2, lsl #2]
 8002290:	20fc      	movs	r0, #252	; 0xfc
 8002292:	4071      	eors	r1, r6
 8002294:	4051      	eors	r1, r2
 8002296:	f8de 203c 	ldr.w	r2, [lr, #60]	; 0x3c
 800229a:	405a      	eors	r2, r3
 800229c:	ea00 7632 	and.w	r6, r0, r2, ror #28
 80022a0:	4660      	mov	r0, ip
 80022a2:	f859 6006 	ldr.w	r6, [r9, r6]
 80022a6:	4071      	eors	r1, r6
 80022a8:	f3c2 1685 	ubfx	r6, r2, #6, #6
 80022ac:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 80022b0:	4071      	eors	r1, r6
 80022b2:	f3c2 3685 	ubfx	r6, r2, #14, #6
 80022b6:	f3c2 5285 	ubfx	r2, r2, #22, #6
 80022ba:	f85c 6026 	ldr.w	r6, [ip, r6, lsl #2]
 80022be:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 80022c2:	46f4      	mov	ip, lr
 80022c4:	4071      	eors	r1, r6
 80022c6:	4051      	eors	r1, r2
 80022c8:	f8de 2040 	ldr.w	r2, [lr, #64]	; 0x40
 80022cc:	404a      	eors	r2, r1
 80022ce:	f3c2 2685 	ubfx	r6, r2, #10, #6
 80022d2:	f8dd e02c 	ldr.w	lr, [sp, #44]	; 0x2c
 80022d6:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 80022da:	f858 5005 	ldr.w	r5, [r8, r5]
 80022de:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 80022e2:	406b      	eors	r3, r5
 80022e4:	f248 355c 	movw	r5, #33628	; 0x835c
 80022e8:	f6c0 0500 	movt	r5, #2048	; 0x800
 80022ec:	4073      	eors	r3, r6
 80022ee:	f3c2 4685 	ubfx	r6, r2, #18, #6
 80022f2:	0e92      	lsrs	r2, r2, #26
 80022f4:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 80022f8:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 80022fc:	25fc      	movs	r5, #252	; 0xfc
 80022fe:	4073      	eors	r3, r6
 8002300:	405a      	eors	r2, r3
 8002302:	f8dc 3044 	ldr.w	r3, [ip, #68]	; 0x44
 8002306:	404b      	eors	r3, r1
 8002308:	ea05 7633 	and.w	r6, r5, r3, ror #28
 800230c:	f859 6006 	ldr.w	r6, [r9, r6]
 8002310:	4072      	eors	r2, r6
 8002312:	f3c3 1685 	ubfx	r6, r3, #6, #6
 8002316:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 800231a:	4072      	eors	r2, r6
 800231c:	f3c3 3685 	ubfx	r6, r3, #14, #6
 8002320:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002324:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002328:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 800232c:	f248 345c 	movw	r4, #33628	; 0x835c
 8002330:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002334:	4072      	eors	r2, r6
 8002336:	4053      	eors	r3, r2
 8002338:	f8dc 2048 	ldr.w	r2, [ip, #72]	; 0x48
 800233c:	405a      	eors	r2, r3
 800233e:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 8002342:	f3c2 2685 	ubfx	r6, r2, #10, #6
 8002346:	f858 5005 	ldr.w	r5, [r8, r5]
 800234a:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 800234e:	4069      	eors	r1, r5
 8002350:	4071      	eors	r1, r6
 8002352:	f3c2 4685 	ubfx	r6, r2, #18, #6
 8002356:	0e92      	lsrs	r2, r2, #26
 8002358:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 800235c:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 8002360:	24fc      	movs	r4, #252	; 0xfc
 8002362:	4071      	eors	r1, r6
 8002364:	4051      	eors	r1, r2
 8002366:	f8dc 204c 	ldr.w	r2, [ip, #76]	; 0x4c
 800236a:	405a      	eors	r2, r3
 800236c:	ea04 7632 	and.w	r6, r4, r2, ror #28
 8002370:	4604      	mov	r4, r0
 8002372:	4670      	mov	r0, lr
 8002374:	46e6      	mov	lr, ip
 8002376:	f859 6006 	ldr.w	r6, [r9, r6]
 800237a:	4071      	eors	r1, r6
 800237c:	f3c2 1685 	ubfx	r6, r2, #6, #6
 8002380:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 8002384:	4071      	eors	r1, r6
 8002386:	f3c2 3685 	ubfx	r6, r2, #14, #6
 800238a:	f3c2 5285 	ubfx	r2, r2, #22, #6
 800238e:	f8dd a028 	ldr.w	sl, [sp, #40]	; 0x28
 8002392:	f854 6026 	ldr.w	r6, [r4, r6, lsl #2]
 8002396:	f85a 2022 	ldr.w	r2, [sl, r2, lsl #2]
 800239a:	4071      	eors	r1, r6
 800239c:	4051      	eors	r1, r2
 800239e:	f8dc 2050 	ldr.w	r2, [ip, #80]	; 0x50
 80023a2:	404a      	eors	r2, r1
 80023a4:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 80023a8:	f3c2 2685 	ubfx	r6, r2, #10, #6
 80023ac:	f858 5005 	ldr.w	r5, [r8, r5]
 80023b0:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 80023b4:	406b      	eors	r3, r5
 80023b6:	f248 355c 	movw	r5, #33628	; 0x835c
 80023ba:	4073      	eors	r3, r6
 80023bc:	f3c2 4685 	ubfx	r6, r2, #18, #6
 80023c0:	f8dd c020 	ldr.w	ip, [sp, #32]
 80023c4:	0e92      	lsrs	r2, r2, #26
 80023c6:	f6c0 0500 	movt	r5, #2048	; 0x800
 80023ca:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 80023ce:	f85c 6026 	ldr.w	r6, [ip, r6, lsl #2]
 80023d2:	4073      	eors	r3, r6
 80023d4:	26fc      	movs	r6, #252	; 0xfc
 80023d6:	405a      	eors	r2, r3
 80023d8:	f8de 3054 	ldr.w	r3, [lr, #84]	; 0x54
 80023dc:	404b      	eors	r3, r1
 80023de:	ea06 7633 	and.w	r6, r6, r3, ror #28
 80023e2:	f859 6006 	ldr.w	r6, [r9, r6]
 80023e6:	4072      	eors	r2, r6
 80023e8:	f3c3 1685 	ubfx	r6, r3, #6, #6
 80023ec:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 80023f0:	4072      	eors	r2, r6
 80023f2:	f3c3 3685 	ubfx	r6, r3, #14, #6
 80023f6:	f3c3 5385 	ubfx	r3, r3, #22, #6
 80023fa:	f854 6026 	ldr.w	r6, [r4, r6, lsl #2]
 80023fe:	4654      	mov	r4, sl
 8002400:	46e2      	mov	sl, ip
 8002402:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002406:	4072      	eors	r2, r6
 8002408:	4053      	eors	r3, r2
 800240a:	f8de 2058 	ldr.w	r2, [lr, #88]	; 0x58
 800240e:	405a      	eors	r2, r3
 8002410:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 8002414:	f3c2 2685 	ubfx	r6, r2, #10, #6
 8002418:	f858 5005 	ldr.w	r5, [r8, r5]
 800241c:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002420:	4069      	eors	r1, r5
 8002422:	25fc      	movs	r5, #252	; 0xfc
 8002424:	4071      	eors	r1, r6
 8002426:	f3c2 4685 	ubfx	r6, r2, #18, #6
 800242a:	0e92      	lsrs	r2, r2, #26
 800242c:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 8002430:	4071      	eors	r1, r6
 8002432:	f248 365c 	movw	r6, #33628	; 0x835c
 8002436:	f6c0 0600 	movt	r6, #2048	; 0x800
 800243a:	f856 2022 	ldr.w	r2, [r6, r2, lsl #2]
 800243e:	4051      	eors	r1, r2
 8002440:	f8de 205c 	ldr.w	r2, [lr, #92]	; 0x5c
 8002444:	405a      	eors	r2, r3
 8002446:	ea05 7632 	and.w	r6, r5, r2, ror #28
 800244a:	f859 6006 	ldr.w	r6, [r9, r6]
 800244e:	4071      	eors	r1, r6
 8002450:	f3c2 1685 	ubfx	r6, r2, #6, #6
 8002454:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 8002458:	4071      	eors	r1, r6
 800245a:	f3c2 3685 	ubfx	r6, r2, #14, #6
 800245e:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002462:	f3c2 5285 	ubfx	r2, r2, #22, #6
 8002466:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 800246a:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 800246e:	4071      	eors	r1, r6
 8002470:	4051      	eors	r1, r2
 8002472:	f8de 2060 	ldr.w	r2, [lr, #96]	; 0x60
 8002476:	404a      	eors	r2, r1
 8002478:	f3c2 2685 	ubfx	r6, r2, #10, #6
 800247c:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8002480:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 8002484:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002488:	f85c 5005 	ldr.w	r5, [ip, r5]
 800248c:	406b      	eors	r3, r5
 800248e:	f248 355c 	movw	r5, #33628	; 0x835c
 8002492:	4073      	eors	r3, r6
 8002494:	f3c2 4685 	ubfx	r6, r2, #18, #6
 8002498:	0e92      	lsrs	r2, r2, #26
 800249a:	f6c0 0500 	movt	r5, #2048	; 0x800
 800249e:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 80024a2:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 80024a6:	25fc      	movs	r5, #252	; 0xfc
 80024a8:	4073      	eors	r3, r6
 80024aa:	405a      	eors	r2, r3
 80024ac:	f8de 3064 	ldr.w	r3, [lr, #100]	; 0x64
 80024b0:	404b      	eors	r3, r1
 80024b2:	ea05 7633 	and.w	r6, r5, r3, ror #28
 80024b6:	f859 6006 	ldr.w	r6, [r9, r6]
 80024ba:	4072      	eors	r2, r6
 80024bc:	f3c3 1685 	ubfx	r6, r3, #6, #6
 80024c0:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 80024c4:	4072      	eors	r2, r6
 80024c6:	f3c3 3685 	ubfx	r6, r3, #14, #6
 80024ca:	f3c3 5385 	ubfx	r3, r3, #22, #6
 80024ce:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 80024d2:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 80024d6:	4072      	eors	r2, r6
 80024d8:	4053      	eors	r3, r2
 80024da:	f8de 2068 	ldr.w	r2, [lr, #104]	; 0x68
 80024de:	405a      	eors	r2, r3
 80024e0:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 80024e4:	f3c2 2685 	ubfx	r6, r2, #10, #6
 80024e8:	f85c 5005 	ldr.w	r5, [ip, r5]
 80024ec:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 80024f0:	4069      	eors	r1, r5
 80024f2:	f248 355c 	movw	r5, #33628	; 0x835c
 80024f6:	4071      	eors	r1, r6
 80024f8:	f3c2 4685 	ubfx	r6, r2, #18, #6
 80024fc:	0e92      	lsrs	r2, r2, #26
 80024fe:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002502:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 8002506:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 800250a:	25fc      	movs	r5, #252	; 0xfc
 800250c:	4071      	eors	r1, r6
 800250e:	4051      	eors	r1, r2
 8002510:	f8de 206c 	ldr.w	r2, [lr, #108]	; 0x6c
 8002514:	405a      	eors	r2, r3
 8002516:	ea05 7632 	and.w	r6, r5, r2, ror #28
 800251a:	f859 6006 	ldr.w	r6, [r9, r6]
 800251e:	4071      	eors	r1, r6
 8002520:	f3c2 1685 	ubfx	r6, r2, #6, #6
 8002524:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 8002528:	4071      	eors	r1, r6
 800252a:	f3c2 3685 	ubfx	r6, r2, #14, #6
 800252e:	f3c2 5285 	ubfx	r2, r2, #22, #6
 8002532:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 8002536:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 800253a:	4071      	eors	r1, r6
 800253c:	4051      	eors	r1, r2
 800253e:	f8de 2070 	ldr.w	r2, [lr, #112]	; 0x70
 8002542:	404a      	eors	r2, r1
 8002544:	f002 05fc 	and.w	r5, r2, #252	; 0xfc
 8002548:	f3c2 2685 	ubfx	r6, r2, #10, #6
 800254c:	f85c 5005 	ldr.w	r5, [ip, r5]
 8002550:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002554:	406b      	eors	r3, r5
 8002556:	f248 355c 	movw	r5, #33628	; 0x835c
 800255a:	4073      	eors	r3, r6
 800255c:	f3c2 4685 	ubfx	r6, r2, #18, #6
 8002560:	0e92      	lsrs	r2, r2, #26
 8002562:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002566:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 800256a:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 800256e:	25fc      	movs	r5, #252	; 0xfc
 8002570:	4073      	eors	r3, r6
 8002572:	405a      	eors	r2, r3
 8002574:	f8de 3074 	ldr.w	r3, [lr, #116]	; 0x74
 8002578:	404b      	eors	r3, r1
 800257a:	ea05 7633 	and.w	r6, r5, r3, ror #28
 800257e:	f859 6006 	ldr.w	r6, [r9, r6]
 8002582:	4072      	eors	r2, r6
 8002584:	f3c3 1685 	ubfx	r6, r3, #6, #6
 8002588:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 800258c:	4072      	eors	r2, r6
 800258e:	f3c3 3685 	ubfx	r6, r3, #14, #6
 8002592:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002596:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 800259a:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 800259e:	4072      	eors	r2, r6
 80025a0:	405a      	eors	r2, r3
 80025a2:	f8de 3078 	ldr.w	r3, [lr, #120]	; 0x78
 80025a6:	4053      	eors	r3, r2
 80025a8:	f003 05fc 	and.w	r5, r3, #252	; 0xfc
 80025ac:	f3c3 2685 	ubfx	r6, r3, #10, #6
 80025b0:	f85c 5005 	ldr.w	r5, [ip, r5]
 80025b4:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 80025b8:	f248 305c 	movw	r0, #33628	; 0x835c
 80025bc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80025c0:	4069      	eors	r1, r5
 80025c2:	4071      	eors	r1, r6
 80025c4:	f3c3 4685 	ubfx	r6, r3, #18, #6
 80025c8:	0e9b      	lsrs	r3, r3, #26
 80025ca:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 80025ce:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 80025d2:	20fc      	movs	r0, #252	; 0xfc
 80025d4:	4071      	eors	r1, r6
 80025d6:	4059      	eors	r1, r3
 80025d8:	f8de 307c 	ldr.w	r3, [lr, #124]	; 0x7c
 80025dc:	4053      	eors	r3, r2
 80025de:	ea00 7633 	and.w	r6, r0, r3, ror #28
 80025e2:	f859 6006 	ldr.w	r6, [r9, r6]
 80025e6:	4071      	eors	r1, r6
 80025e8:	f3c3 1685 	ubfx	r6, r3, #6, #6
 80025ec:	f85b 6026 	ldr.w	r6, [fp, r6, lsl #2]
 80025f0:	4071      	eors	r1, r6
 80025f2:	f3c3 3685 	ubfx	r6, r3, #14, #6
 80025f6:	f3c3 5385 	ubfx	r3, r3, #22, #6
 80025fa:	9d02      	ldr	r5, [sp, #8]
 80025fc:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 8002600:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002604:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8002606:	4071      	eors	r1, r6
 8002608:	4059      	eors	r1, r3
 800260a:	ea81 73f2 	eor.w	r3, r1, r2, ror #31
 800260e:	f023 33aa 	bic.w	r3, r3, #2863311530	; 0xaaaaaaaa
 8002612:	ea83 0601 	eor.w	r6, r3, r1
 8002616:	ea83 72f2 	eor.w	r2, r3, r2, ror #31
 800261a:	0076      	lsls	r6, r6, #1
 800261c:	ea46 71d1 	orr.w	r1, r6, r1, lsr #31
 8002620:	ea81 2312 	eor.w	r3, r1, r2, lsr #8
 8002624:	fa3f f383 	uxtb16	r3, r3
 8002628:	4059      	eors	r1, r3
 800262a:	ea82 2203 	eor.w	r2, r2, r3, lsl #8
 800262e:	ea82 0391 	eor.w	r3, r2, r1, lsr #2
 8002632:	f023 33cc 	bic.w	r3, r3, #3435973836	; 0xcccccccc
 8002636:	ea81 0183 	eor.w	r1, r1, r3, lsl #2
 800263a:	405a      	eors	r2, r3
 800263c:	b28e      	uxth	r6, r1
 800263e:	ea86 4312 	eor.w	r3, r6, r2, lsr #16
 8002642:	ea83 0c01 	eor.w	ip, r3, r1
 8002646:	ea82 4203 	eor.w	r2, r2, r3, lsl #16
 800264a:	ea82 131c 	eor.w	r3, r2, ip, lsr #4
 800264e:	f023 33f0 	bic.w	r3, r3, #4042322160	; 0xf0f0f0f0
 8002652:	ea83 0102 	eor.w	r1, r3, r2
 8002656:	5529      	strb	r1, [r5, r4]
 8002658:	0a0e      	lsrs	r6, r1, #8
 800265a:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 800265c:	4425      	add	r5, r4
 800265e:	706e      	strb	r6, [r5, #1]
 8002660:	0c0e      	lsrs	r6, r1, #16
 8002662:	0e09      	lsrs	r1, r1, #24
 8002664:	70ae      	strb	r6, [r5, #2]
 8002666:	70e9      	strb	r1, [r5, #3]
 8002668:	ea8c 1103 	eor.w	r1, ip, r3, lsl #4
 800266c:	0a0b      	lsrs	r3, r1, #8
 800266e:	7129      	strb	r1, [r5, #4]
 8002670:	716b      	strb	r3, [r5, #5]
 8002672:	0c0b      	lsrs	r3, r1, #16
 8002674:	0e09      	lsrs	r1, r1, #24
 8002676:	71ab      	strb	r3, [r5, #6]
 8002678:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 800267a:	71e9      	strb	r1, [r5, #7]
 800267c:	9903      	ldr	r1, [sp, #12]
 800267e:	3408      	adds	r4, #8
 8002680:	42a1      	cmp	r1, r4
 8002682:	f47f ac40 	bne.w	8001f06 <des_encrypt+0x50>
 8002686:	b00d      	add	sp, #52	; 0x34
 8002688:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800268c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800268e <des_decrypt>:
 800268e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002690:	af03      	add	r7, sp, #12
 8002692:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002696:	b08e      	sub	sp, #56	; 0x38
 8002698:	469c      	mov	ip, r3
 800269a:	4614      	mov	r4, r2
 800269c:	4682      	mov	sl, r0
 800269e:	2900      	cmp	r1, #0
 80026a0:	f000 83eb 	beq.w	8002e7a <des_decrypt+0x7ec>
 80026a4:	f248 335c 	movw	r3, #33628	; 0x835c
 80026a8:	2200      	movs	r2, #0
 80026aa:	9404      	str	r4, [sp, #16]
 80026ac:	f6c0 0300 	movt	r3, #2048	; 0x800
 80026b0:	f503 66e0 	add.w	r6, r3, #1792	; 0x700
 80026b4:	960c      	str	r6, [sp, #48]	; 0x30
 80026b6:	f503 66c0 	add.w	r6, r3, #1536	; 0x600
 80026ba:	9609      	str	r6, [sp, #36]	; 0x24
 80026bc:	f503 66a0 	add.w	r6, r3, #1280	; 0x500
 80026c0:	9608      	str	r6, [sp, #32]
 80026c2:	f503 6680 	add.w	r6, r3, #1024	; 0x400
 80026c6:	960b      	str	r6, [sp, #44]	; 0x2c
 80026c8:	f503 7640 	add.w	r6, r3, #768	; 0x300
 80026cc:	9607      	str	r6, [sp, #28]
 80026ce:	f503 7600 	add.w	r6, r3, #512	; 0x200
 80026d2:	f503 7380 	add.w	r3, r3, #256	; 0x100
 80026d6:	9601      	str	r6, [sp, #4]
 80026d8:	930a      	str	r3, [sp, #40]	; 0x28
 80026da:	e9cd c102 	strd	ip, r1, [sp, #8]
 80026de:	f8cd a000 	str.w	sl, [sp]
 80026e2:	920d      	str	r2, [sp, #52]	; 0x34
 80026e4:	eb0c 0102 	add.w	r1, ip, r2
 80026e8:	f8dd 8030 	ldr.w	r8, [sp, #48]	; 0x30
 80026ec:	79ca      	ldrb	r2, [r1, #7]
 80026ee:	798b      	ldrb	r3, [r1, #6]
 80026f0:	788d      	ldrb	r5, [r1, #2]
 80026f2:	78ce      	ldrb	r6, [r1, #3]
 80026f4:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
 80026f8:	794b      	ldrb	r3, [r1, #5]
 80026fa:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
 80026fe:	784b      	ldrb	r3, [r1, #1]
 8002700:	7909      	ldrb	r1, [r1, #4]
 8002702:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
 8002706:	ea45 2206 	orr.w	r2, r5, r6, lsl #8
 800270a:	26fc      	movs	r6, #252	; 0xfc
 800270c:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
 8002710:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8002712:	f81c 3003 	ldrb.w	r3, [ip, r3]
 8002716:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
 800271a:	ea82 1311 	eor.w	r3, r2, r1, lsr #4
 800271e:	f023 33f0 	bic.w	r3, r3, #4042322160	; 0xf0f0f0f0
 8002722:	ea81 1103 	eor.w	r1, r1, r3, lsl #4
 8002726:	405a      	eors	r2, r3
 8002728:	b28b      	uxth	r3, r1
 800272a:	ea83 4312 	eor.w	r3, r3, r2, lsr #16
 800272e:	4059      	eors	r1, r3
 8002730:	ea82 4203 	eor.w	r2, r2, r3, lsl #16
 8002734:	ea82 0391 	eor.w	r3, r2, r1, lsr #2
 8002738:	f023 33cc 	bic.w	r3, r3, #3435973836	; 0xcccccccc
 800273c:	ea83 0502 	eor.w	r5, r3, r2
 8002740:	ea81 0183 	eor.w	r1, r1, r3, lsl #2
 8002744:	ea81 2215 	eor.w	r2, r1, r5, lsr #8
 8002748:	fa3f f382 	uxtb16	r3, r2
 800274c:	ea83 0b01 	eor.w	fp, r3, r1
 8002750:	ea85 2103 	eor.w	r1, r5, r3, lsl #8
 8002754:	f8da 507c 	ldr.w	r5, [sl, #124]	; 0x7c
 8002758:	ea81 035b 	eor.w	r3, r1, fp, lsr #1
 800275c:	f023 33aa 	bic.w	r3, r3, #2863311530	; 0xaaaaaaaa
 8002760:	ea83 0001 	eor.w	r0, r3, r1
 8002764:	ea85 0570 	eor.w	r5, r5, r0, ror #1
 8002768:	4601      	mov	r1, r0
 800276a:	9106      	str	r1, [sp, #24]
 800276c:	f3c5 1485 	ubfx	r4, r5, #6, #6
 8002770:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002772:	ea06 7635 	and.w	r6, r6, r5, ror #28
 8002776:	f858 6006 	ldr.w	r6, [r8, r6]
 800277a:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 800277e:	4681      	mov	r9, r0
 8002780:	ea84 0c06 	eor.w	ip, r4, r6
 8002784:	f3c5 3685 	ubfx	r6, r5, #14, #6
 8002788:	f8dd e020 	ldr.w	lr, [sp, #32]
 800278c:	f3c5 5585 	ubfx	r5, r5, #22, #6
 8002790:	9807      	ldr	r0, [sp, #28]
 8002792:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 8002796:	ea8c 0406 	eor.w	r4, ip, r6
 800279a:	f8dd c02c 	ldr.w	ip, [sp, #44]	; 0x2c
 800279e:	f85c 5025 	ldr.w	r5, [ip, r5, lsl #2]
 80027a2:	406c      	eors	r4, r5
 80027a4:	f8da 5078 	ldr.w	r5, [sl, #120]	; 0x78
 80027a8:	ea85 0571 	eor.w	r5, r5, r1, ror #1
 80027ac:	4601      	mov	r1, r0
 80027ae:	f005 06fc 	and.w	r6, r5, #252	; 0xfc
 80027b2:	5986      	ldr	r6, [r0, r6]
 80027b4:	4074      	eors	r4, r6
 80027b6:	f3c5 2685 	ubfx	r6, r5, #10, #6
 80027ba:	9801      	ldr	r0, [sp, #4]
 80027bc:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 80027c0:	4074      	eors	r4, r6
 80027c2:	f3c5 4685 	ubfx	r6, r5, #18, #6
 80027c6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80027c8:	0ead      	lsrs	r5, r5, #26
 80027ca:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80027ce:	4074      	eors	r4, r6
 80027d0:	f248 365c 	movw	r6, #33628	; 0x835c
 80027d4:	f6c0 0600 	movt	r6, #2048	; 0x800
 80027d8:	f856 5025 	ldr.w	r5, [r6, r5, lsl #2]
 80027dc:	406c      	eors	r4, r5
 80027de:	ea84 027b 	eor.w	r2, r4, fp, ror #1
 80027e2:	24fc      	movs	r4, #252	; 0xfc
 80027e4:	46f3      	mov	fp, lr
 80027e6:	4053      	eors	r3, r2
 80027e8:	f8da 2074 	ldr.w	r2, [sl, #116]	; 0x74
 80027ec:	405a      	eors	r2, r3
 80027ee:	ea04 7432 	and.w	r4, r4, r2, ror #28
 80027f2:	f3c2 1585 	ubfx	r5, r2, #6, #6
 80027f6:	f858 4004 	ldr.w	r4, [r8, r4]
 80027fa:	f859 5025 	ldr.w	r5, [r9, r5, lsl #2]
 80027fe:	406c      	eors	r4, r5
 8002800:	f3c2 3585 	ubfx	r5, r2, #14, #6
 8002804:	f3c2 5285 	ubfx	r2, r2, #22, #6
 8002808:	f85e 5025 	ldr.w	r5, [lr, r5, lsl #2]
 800280c:	f85c 2022 	ldr.w	r2, [ip, r2, lsl #2]
 8002810:	468e      	mov	lr, r1
 8002812:	46c4      	mov	ip, r8
 8002814:	46d8      	mov	r8, fp
 8002816:	406c      	eors	r4, r5
 8002818:	4062      	eors	r2, r4
 800281a:	f8da 4070 	ldr.w	r4, [sl, #112]	; 0x70
 800281e:	405c      	eors	r4, r3
 8002820:	f004 05fc 	and.w	r5, r4, #252	; 0xfc
 8002824:	594d      	ldr	r5, [r1, r5]
 8002826:	f248 315c 	movw	r1, #33628	; 0x835c
 800282a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800282e:	406a      	eors	r2, r5
 8002830:	f3c4 2585 	ubfx	r5, r4, #10, #6
 8002834:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 8002838:	406a      	eors	r2, r5
 800283a:	f3c4 4585 	ubfx	r5, r4, #18, #6
 800283e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8002840:	0ea4      	lsrs	r4, r4, #26
 8002842:	f851 4024 	ldr.w	r4, [r1, r4, lsl #2]
 8002846:	9906      	ldr	r1, [sp, #24]
 8002848:	f856 5025 	ldr.w	r5, [r6, r5, lsl #2]
 800284c:	406a      	eors	r2, r5
 800284e:	25fc      	movs	r5, #252	; 0xfc
 8002850:	4062      	eors	r2, r4
 8002852:	ea82 0171 	eor.w	r1, r2, r1, ror #1
 8002856:	f8da 206c 	ldr.w	r2, [sl, #108]	; 0x6c
 800285a:	404a      	eors	r2, r1
 800285c:	ea05 7432 	and.w	r4, r5, r2, ror #28
 8002860:	f3c2 1585 	ubfx	r5, r2, #6, #6
 8002864:	f85c 4004 	ldr.w	r4, [ip, r4]
 8002868:	f859 5025 	ldr.w	r5, [r9, r5, lsl #2]
 800286c:	406c      	eors	r4, r5
 800286e:	25fc      	movs	r5, #252	; 0xfc
 8002870:	4063      	eors	r3, r4
 8002872:	f3c2 3485 	ubfx	r4, r2, #14, #6
 8002876:	f3c2 5285 	ubfx	r2, r2, #22, #6
 800287a:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800287e:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002882:	f85b 2022 	ldr.w	r2, [fp, r2, lsl #2]
 8002886:	4063      	eors	r3, r4
 8002888:	405a      	eors	r2, r3
 800288a:	f8da 3068 	ldr.w	r3, [sl, #104]	; 0x68
 800288e:	404b      	eors	r3, r1
 8002890:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 8002894:	f85e 4004 	ldr.w	r4, [lr, r4]
 8002898:	4062      	eors	r2, r4
 800289a:	f3c3 2485 	ubfx	r4, r3, #10, #6
 800289e:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 80028a2:	4062      	eors	r2, r4
 80028a4:	f3c3 4485 	ubfx	r4, r3, #18, #6
 80028a8:	0e9b      	lsrs	r3, r3, #26
 80028aa:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 80028ae:	4062      	eors	r2, r4
 80028b0:	f248 345c 	movw	r4, #33628	; 0x835c
 80028b4:	f6c0 0400 	movt	r4, #2048	; 0x800
 80028b8:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 80028bc:	405a      	eors	r2, r3
 80028be:	f8da 3064 	ldr.w	r3, [sl, #100]	; 0x64
 80028c2:	4053      	eors	r3, r2
 80028c4:	ea05 7533 	and.w	r5, r5, r3, ror #28
 80028c8:	f3c3 1485 	ubfx	r4, r3, #6, #6
 80028cc:	f85c 5005 	ldr.w	r5, [ip, r5]
 80028d0:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 80028d4:	4069      	eors	r1, r5
 80028d6:	25fc      	movs	r5, #252	; 0xfc
 80028d8:	4061      	eors	r1, r4
 80028da:	f3c3 3485 	ubfx	r4, r3, #14, #6
 80028de:	f3c3 5385 	ubfx	r3, r3, #22, #6
 80028e2:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 80028e6:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 80028ea:	4061      	eors	r1, r4
 80028ec:	4059      	eors	r1, r3
 80028ee:	f8da 3060 	ldr.w	r3, [sl, #96]	; 0x60
 80028f2:	4053      	eors	r3, r2
 80028f4:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 80028f8:	f85e 4004 	ldr.w	r4, [lr, r4]
 80028fc:	4061      	eors	r1, r4
 80028fe:	f3c3 2485 	ubfx	r4, r3, #10, #6
 8002902:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002906:	4061      	eors	r1, r4
 8002908:	f3c3 4485 	ubfx	r4, r3, #18, #6
 800290c:	0e9b      	lsrs	r3, r3, #26
 800290e:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 8002912:	4061      	eors	r1, r4
 8002914:	f248 345c 	movw	r4, #33628	; 0x835c
 8002918:	f6c0 0400 	movt	r4, #2048	; 0x800
 800291c:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002920:	4059      	eors	r1, r3
 8002922:	f8da 305c 	ldr.w	r3, [sl, #92]	; 0x5c
 8002926:	404b      	eors	r3, r1
 8002928:	ea05 7533 	and.w	r5, r5, r3, ror #28
 800292c:	f3c3 1485 	ubfx	r4, r3, #6, #6
 8002930:	f85c 5005 	ldr.w	r5, [ip, r5]
 8002934:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 8002938:	406a      	eors	r2, r5
 800293a:	25fc      	movs	r5, #252	; 0xfc
 800293c:	4062      	eors	r2, r4
 800293e:	f3c3 3485 	ubfx	r4, r3, #14, #6
 8002942:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002946:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 800294a:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 800294e:	4062      	eors	r2, r4
 8002950:	405a      	eors	r2, r3
 8002952:	f8da 3058 	ldr.w	r3, [sl, #88]	; 0x58
 8002956:	404b      	eors	r3, r1
 8002958:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 800295c:	f85e 4004 	ldr.w	r4, [lr, r4]
 8002960:	4062      	eors	r2, r4
 8002962:	f3c3 2485 	ubfx	r4, r3, #10, #6
 8002966:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 800296a:	4062      	eors	r2, r4
 800296c:	f3c3 4485 	ubfx	r4, r3, #18, #6
 8002970:	0e9b      	lsrs	r3, r3, #26
 8002972:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 8002976:	4062      	eors	r2, r4
 8002978:	f248 345c 	movw	r4, #33628	; 0x835c
 800297c:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002980:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002984:	405a      	eors	r2, r3
 8002986:	f8da 3054 	ldr.w	r3, [sl, #84]	; 0x54
 800298a:	4053      	eors	r3, r2
 800298c:	ea05 7533 	and.w	r5, r5, r3, ror #28
 8002990:	f3c3 1485 	ubfx	r4, r3, #6, #6
 8002994:	f85c 5005 	ldr.w	r5, [ip, r5]
 8002998:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 800299c:	4069      	eors	r1, r5
 800299e:	f248 355c 	movw	r5, #33628	; 0x835c
 80029a2:	4061      	eors	r1, r4
 80029a4:	f3c3 3485 	ubfx	r4, r3, #14, #6
 80029a8:	f3c3 5385 	ubfx	r3, r3, #22, #6
 80029ac:	f6c0 0500 	movt	r5, #2048	; 0x800
 80029b0:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 80029b4:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 80029b8:	4061      	eors	r1, r4
 80029ba:	4059      	eors	r1, r3
 80029bc:	f8da 3050 	ldr.w	r3, [sl, #80]	; 0x50
 80029c0:	4053      	eors	r3, r2
 80029c2:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 80029c6:	f85e 4004 	ldr.w	r4, [lr, r4]
 80029ca:	4061      	eors	r1, r4
 80029cc:	f3c3 2485 	ubfx	r4, r3, #10, #6
 80029d0:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 80029d4:	4061      	eors	r1, r4
 80029d6:	f3c3 4485 	ubfx	r4, r3, #18, #6
 80029da:	0e9b      	lsrs	r3, r3, #26
 80029dc:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 80029e0:	f855 3023 	ldr.w	r3, [r5, r3, lsl #2]
 80029e4:	25fc      	movs	r5, #252	; 0xfc
 80029e6:	4061      	eors	r1, r4
 80029e8:	4059      	eors	r1, r3
 80029ea:	f8da 304c 	ldr.w	r3, [sl, #76]	; 0x4c
 80029ee:	404b      	eors	r3, r1
 80029f0:	ea05 7533 	and.w	r5, r5, r3, ror #28
 80029f4:	f3c3 1485 	ubfx	r4, r3, #6, #6
 80029f8:	f85c 5005 	ldr.w	r5, [ip, r5]
 80029fc:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 8002a00:	46f4      	mov	ip, lr
 8002a02:	406a      	eors	r2, r5
 8002a04:	f248 355c 	movw	r5, #33628	; 0x835c
 8002a08:	4062      	eors	r2, r4
 8002a0a:	f3c3 3485 	ubfx	r4, r3, #14, #6
 8002a0e:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002a12:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002a16:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002a1a:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 8002a1e:	4062      	eors	r2, r4
 8002a20:	405a      	eors	r2, r3
 8002a22:	f8da 3048 	ldr.w	r3, [sl, #72]	; 0x48
 8002a26:	404b      	eors	r3, r1
 8002a28:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 8002a2c:	f85e 4004 	ldr.w	r4, [lr, r4]
 8002a30:	4062      	eors	r2, r4
 8002a32:	f3c3 2485 	ubfx	r4, r3, #10, #6
 8002a36:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002a3a:	4062      	eors	r2, r4
 8002a3c:	f3c3 4485 	ubfx	r4, r3, #18, #6
 8002a40:	0e9b      	lsrs	r3, r3, #26
 8002a42:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 8002a46:	f855 3023 	ldr.w	r3, [r5, r3, lsl #2]
 8002a4a:	25fc      	movs	r5, #252	; 0xfc
 8002a4c:	4062      	eors	r2, r4
 8002a4e:	405a      	eors	r2, r3
 8002a50:	f8da 3044 	ldr.w	r3, [sl, #68]	; 0x44
 8002a54:	4053      	eors	r3, r2
 8002a56:	f3c3 1485 	ubfx	r4, r3, #6, #6
 8002a5a:	ea05 7533 	and.w	r5, r5, r3, ror #28
 8002a5e:	f859 e024 	ldr.w	lr, [r9, r4, lsl #2]
 8002a62:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8002a64:	5965      	ldr	r5, [r4, r5]
 8002a66:	f3c3 3485 	ubfx	r4, r3, #14, #6
 8002a6a:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002a6e:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002a72:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 8002a76:	4069      	eors	r1, r5
 8002a78:	25fc      	movs	r5, #252	; 0xfc
 8002a7a:	ea81 010e 	eor.w	r1, r1, lr
 8002a7e:	46b6      	mov	lr, r6
 8002a80:	4061      	eors	r1, r4
 8002a82:	4059      	eors	r1, r3
 8002a84:	f8da 3040 	ldr.w	r3, [sl, #64]	; 0x40
 8002a88:	4053      	eors	r3, r2
 8002a8a:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 8002a8e:	f85c 4004 	ldr.w	r4, [ip, r4]
 8002a92:	4061      	eors	r1, r4
 8002a94:	f3c3 2485 	ubfx	r4, r3, #10, #6
 8002a98:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002a9c:	4061      	eors	r1, r4
 8002a9e:	f3c3 4485 	ubfx	r4, r3, #18, #6
 8002aa2:	0e9b      	lsrs	r3, r3, #26
 8002aa4:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 8002aa8:	4061      	eors	r1, r4
 8002aaa:	f248 345c 	movw	r4, #33628	; 0x835c
 8002aae:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002ab2:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002ab6:	4059      	eors	r1, r3
 8002ab8:	f8da 303c 	ldr.w	r3, [sl, #60]	; 0x3c
 8002abc:	404b      	eors	r3, r1
 8002abe:	f3c3 1485 	ubfx	r4, r3, #6, #6
 8002ac2:	9e0c      	ldr	r6, [sp, #48]	; 0x30
 8002ac4:	ea05 7533 	and.w	r5, r5, r3, ror #28
 8002ac8:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 8002acc:	5975      	ldr	r5, [r6, r5]
 8002ace:	406a      	eors	r2, r5
 8002ad0:	25fc      	movs	r5, #252	; 0xfc
 8002ad2:	4062      	eors	r2, r4
 8002ad4:	f3c3 3485 	ubfx	r4, r3, #14, #6
 8002ad8:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002adc:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002ae0:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 8002ae4:	4062      	eors	r2, r4
 8002ae6:	405a      	eors	r2, r3
 8002ae8:	f8da 3038 	ldr.w	r3, [sl, #56]	; 0x38
 8002aec:	404b      	eors	r3, r1
 8002aee:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 8002af2:	f85c 4004 	ldr.w	r4, [ip, r4]
 8002af6:	4062      	eors	r2, r4
 8002af8:	f3c3 2485 	ubfx	r4, r3, #10, #6
 8002afc:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002b00:	4062      	eors	r2, r4
 8002b02:	f3c3 4485 	ubfx	r4, r3, #18, #6
 8002b06:	0e9b      	lsrs	r3, r3, #26
 8002b08:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 8002b0c:	4062      	eors	r2, r4
 8002b0e:	f248 345c 	movw	r4, #33628	; 0x835c
 8002b12:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002b16:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002b1a:	405a      	eors	r2, r3
 8002b1c:	f8da 3034 	ldr.w	r3, [sl, #52]	; 0x34
 8002b20:	4053      	eors	r3, r2
 8002b22:	ea05 7533 	and.w	r5, r5, r3, ror #28
 8002b26:	f3c3 1485 	ubfx	r4, r3, #6, #6
 8002b2a:	5975      	ldr	r5, [r6, r5]
 8002b2c:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 8002b30:	4069      	eors	r1, r5
 8002b32:	f248 355c 	movw	r5, #33628	; 0x835c
 8002b36:	4061      	eors	r1, r4
 8002b38:	f3c3 3485 	ubfx	r4, r3, #14, #6
 8002b3c:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002b40:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002b44:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002b48:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 8002b4c:	4061      	eors	r1, r4
 8002b4e:	4059      	eors	r1, r3
 8002b50:	f8da 3030 	ldr.w	r3, [sl, #48]	; 0x30
 8002b54:	4053      	eors	r3, r2
 8002b56:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 8002b5a:	f85c 4004 	ldr.w	r4, [ip, r4]
 8002b5e:	4061      	eors	r1, r4
 8002b60:	f3c3 2485 	ubfx	r4, r3, #10, #6
 8002b64:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002b68:	4061      	eors	r1, r4
 8002b6a:	f3c3 4485 	ubfx	r4, r3, #18, #6
 8002b6e:	0e9b      	lsrs	r3, r3, #26
 8002b70:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 8002b74:	f855 3023 	ldr.w	r3, [r5, r3, lsl #2]
 8002b78:	25fc      	movs	r5, #252	; 0xfc
 8002b7a:	46e6      	mov	lr, ip
 8002b7c:	4061      	eors	r1, r4
 8002b7e:	4059      	eors	r1, r3
 8002b80:	f8da 302c 	ldr.w	r3, [sl, #44]	; 0x2c
 8002b84:	404b      	eors	r3, r1
 8002b86:	ea05 7533 	and.w	r5, r5, r3, ror #28
 8002b8a:	f3c3 1485 	ubfx	r4, r3, #6, #6
 8002b8e:	5975      	ldr	r5, [r6, r5]
 8002b90:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 8002b94:	4646      	mov	r6, r8
 8002b96:	406a      	eors	r2, r5
 8002b98:	25fc      	movs	r5, #252	; 0xfc
 8002b9a:	4062      	eors	r2, r4
 8002b9c:	f3c3 3485 	ubfx	r4, r3, #14, #6
 8002ba0:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002ba4:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002ba8:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 8002bac:	4062      	eors	r2, r4
 8002bae:	405a      	eors	r2, r3
 8002bb0:	f8da 3028 	ldr.w	r3, [sl, #40]	; 0x28
 8002bb4:	404b      	eors	r3, r1
 8002bb6:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 8002bba:	f85e 4004 	ldr.w	r4, [lr, r4]
 8002bbe:	4062      	eors	r2, r4
 8002bc0:	f3c3 2485 	ubfx	r4, r3, #10, #6
 8002bc4:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002bc8:	4062      	eors	r2, r4
 8002bca:	f3c3 4485 	ubfx	r4, r3, #18, #6
 8002bce:	f8dd 8028 	ldr.w	r8, [sp, #40]	; 0x28
 8002bd2:	0e9b      	lsrs	r3, r3, #26
 8002bd4:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002bd8:	4062      	eors	r2, r4
 8002bda:	f248 345c 	movw	r4, #33628	; 0x835c
 8002bde:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002be2:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002be6:	405a      	eors	r2, r3
 8002be8:	f8da 3024 	ldr.w	r3, [sl, #36]	; 0x24
 8002bec:	4053      	eors	r3, r2
 8002bee:	f3c3 1485 	ubfx	r4, r3, #6, #6
 8002bf2:	f8dd c030 	ldr.w	ip, [sp, #48]	; 0x30
 8002bf6:	ea05 7533 	and.w	r5, r5, r3, ror #28
 8002bfa:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 8002bfe:	f85c 5005 	ldr.w	r5, [ip, r5]
 8002c02:	4069      	eors	r1, r5
 8002c04:	25fc      	movs	r5, #252	; 0xfc
 8002c06:	4061      	eors	r1, r4
 8002c08:	f3c3 3485 	ubfx	r4, r3, #14, #6
 8002c0c:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002c10:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 8002c14:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 8002c18:	4683      	mov	fp, r0
 8002c1a:	4061      	eors	r1, r4
 8002c1c:	4059      	eors	r1, r3
 8002c1e:	f8da 3020 	ldr.w	r3, [sl, #32]
 8002c22:	4053      	eors	r3, r2
 8002c24:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 8002c28:	f85e 4004 	ldr.w	r4, [lr, r4]
 8002c2c:	4061      	eors	r1, r4
 8002c2e:	f3c3 2485 	ubfx	r4, r3, #10, #6
 8002c32:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002c36:	4640      	mov	r0, r8
 8002c38:	4061      	eors	r1, r4
 8002c3a:	f3c3 4485 	ubfx	r4, r3, #18, #6
 8002c3e:	0e9b      	lsrs	r3, r3, #26
 8002c40:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002c44:	4061      	eors	r1, r4
 8002c46:	f248 345c 	movw	r4, #33628	; 0x835c
 8002c4a:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002c4e:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002c52:	4059      	eors	r1, r3
 8002c54:	f8da 301c 	ldr.w	r3, [sl, #28]
 8002c58:	404b      	eors	r3, r1
 8002c5a:	ea05 7533 	and.w	r5, r5, r3, ror #28
 8002c5e:	f3c3 1485 	ubfx	r4, r3, #6, #6
 8002c62:	f85c 5005 	ldr.w	r5, [ip, r5]
 8002c66:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 8002c6a:	406a      	eors	r2, r5
 8002c6c:	4062      	eors	r2, r4
 8002c6e:	f3c3 3485 	ubfx	r4, r3, #14, #6
 8002c72:	f3c3 5385 	ubfx	r3, r3, #22, #6
 8002c76:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8002c7a:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 8002c7e:	f858 3023 	ldr.w	r3, [r8, r3, lsl #2]
 8002c82:	4062      	eors	r2, r4
 8002c84:	405a      	eors	r2, r3
 8002c86:	f8da 3018 	ldr.w	r3, [sl, #24]
 8002c8a:	404b      	eors	r3, r1
 8002c8c:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 8002c90:	f85e 4004 	ldr.w	r4, [lr, r4]
 8002c94:	4686      	mov	lr, r0
 8002c96:	4062      	eors	r2, r4
 8002c98:	f3c3 2485 	ubfx	r4, r3, #10, #6
 8002c9c:	f85b 4024 	ldr.w	r4, [fp, r4, lsl #2]
 8002ca0:	4062      	eors	r2, r4
 8002ca2:	f3c3 4485 	ubfx	r4, r3, #18, #6
 8002ca6:	0e9b      	lsrs	r3, r3, #26
 8002ca8:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002cac:	f248 305c 	movw	r0, #33628	; 0x835c
 8002cb0:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002cb4:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8002cb8:	20fc      	movs	r0, #252	; 0xfc
 8002cba:	4062      	eors	r2, r4
 8002cbc:	4053      	eors	r3, r2
 8002cbe:	f8da 2014 	ldr.w	r2, [sl, #20]
 8002cc2:	405a      	eors	r2, r3
 8002cc4:	ea00 7532 	and.w	r5, r0, r2, ror #28
 8002cc8:	f3c2 1485 	ubfx	r4, r2, #6, #6
 8002ccc:	4640      	mov	r0, r8
 8002cce:	46d8      	mov	r8, fp
 8002cd0:	f85c 5005 	ldr.w	r5, [ip, r5]
 8002cd4:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 8002cd8:	4069      	eors	r1, r5
 8002cda:	4061      	eors	r1, r4
 8002cdc:	f3c2 3485 	ubfx	r4, r2, #14, #6
 8002ce0:	f3c2 5285 	ubfx	r2, r2, #22, #6
 8002ce4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002ce8:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 8002cec:	f850 2022 	ldr.w	r2, [r0, r2, lsl #2]
 8002cf0:	4061      	eors	r1, r4
 8002cf2:	4051      	eors	r1, r2
 8002cf4:	f8da 2010 	ldr.w	r2, [sl, #16]
 8002cf8:	405a      	eors	r2, r3
 8002cfa:	f002 04fc 	and.w	r4, r2, #252	; 0xfc
 8002cfe:	f859 4004 	ldr.w	r4, [r9, r4]
 8002d02:	4061      	eors	r1, r4
 8002d04:	f3c2 2485 	ubfx	r4, r2, #10, #6
 8002d08:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002d0c:	4061      	eors	r1, r4
 8002d0e:	f3c2 4485 	ubfx	r4, r2, #18, #6
 8002d12:	0e92      	lsrs	r2, r2, #26
 8002d14:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 8002d18:	4061      	eors	r1, r4
 8002d1a:	f248 345c 	movw	r4, #33628	; 0x835c
 8002d1e:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002d22:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 8002d26:	404a      	eors	r2, r1
 8002d28:	f8da 1000 	ldr.w	r1, [sl]
 8002d2c:	9106      	str	r1, [sp, #24]
 8002d2e:	f8da 1004 	ldr.w	r1, [sl, #4]
 8002d32:	9105      	str	r1, [sp, #20]
 8002d34:	21fc      	movs	r1, #252	; 0xfc
 8002d36:	e9da 4502 	ldrd	r4, r5, [sl, #8]
 8002d3a:	4055      	eors	r5, r2
 8002d3c:	f3c5 1685 	ubfx	r6, r5, #6, #6
 8002d40:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8002d44:	ea01 7b35 	and.w	fp, r1, r5, ror #28
 8002d48:	f85c 100b 	ldr.w	r1, [ip, fp]
 8002d4c:	f248 3b5c 	movw	fp, #33628	; 0x835c
 8002d50:	f6c0 0b00 	movt	fp, #2048	; 0x800
 8002d54:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 8002d58:	4059      	eors	r1, r3
 8002d5a:	f3c5 3385 	ubfx	r3, r5, #14, #6
 8002d5e:	4071      	eors	r1, r6
 8002d60:	9e08      	ldr	r6, [sp, #32]
 8002d62:	f856 3023 	ldr.w	r3, [r6, r3, lsl #2]
 8002d66:	4059      	eors	r1, r3
 8002d68:	f3c5 5385 	ubfx	r3, r5, #22, #6
 8002d6c:	25fc      	movs	r5, #252	; 0xfc
 8002d6e:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8002d72:	4059      	eors	r1, r3
 8002d74:	ea84 0302 	eor.w	r3, r4, r2
 8002d78:	f003 04fc 	and.w	r4, r3, #252	; 0xfc
 8002d7c:	f859 4004 	ldr.w	r4, [r9, r4]
 8002d80:	4061      	eors	r1, r4
 8002d82:	f3c3 2485 	ubfx	r4, r3, #10, #6
 8002d86:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002d8a:	4061      	eors	r1, r4
 8002d8c:	f3c3 4485 	ubfx	r4, r3, #18, #6
 8002d90:	0e9b      	lsrs	r3, r3, #26
 8002d92:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 8002d96:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 8002d9a:	4061      	eors	r1, r4
 8002d9c:	404b      	eors	r3, r1
 8002d9e:	9905      	ldr	r1, [sp, #20]
 8002da0:	4059      	eors	r1, r3
 8002da2:	ea05 7531 	and.w	r5, r5, r1, ror #28
 8002da6:	f3c1 1485 	ubfx	r4, r1, #6, #6
 8002daa:	f85c 5005 	ldr.w	r5, [ip, r5]
 8002dae:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 8002db2:	f8dd a000 	ldr.w	sl, [sp]
 8002db6:	406a      	eors	r2, r5
 8002db8:	4062      	eors	r2, r4
 8002dba:	f3c1 3485 	ubfx	r4, r1, #14, #6
 8002dbe:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 8002dc2:	4062      	eors	r2, r4
 8002dc4:	9c04      	ldr	r4, [sp, #16]
 8002dc6:	f3c1 5185 	ubfx	r1, r1, #22, #6
 8002dca:	f8dd c008 	ldr.w	ip, [sp, #8]
 8002dce:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 8002dd2:	9806      	ldr	r0, [sp, #24]
 8002dd4:	4051      	eors	r1, r2
 8002dd6:	ea80 0203 	eor.w	r2, r0, r3
 8002dda:	f002 06fc 	and.w	r6, r2, #252	; 0xfc
 8002dde:	f859 6006 	ldr.w	r6, [r9, r6]
 8002de2:	4071      	eors	r1, r6
 8002de4:	f3c2 2685 	ubfx	r6, r2, #10, #6
 8002de8:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 8002dec:	4071      	eors	r1, r6
 8002dee:	f3c2 4685 	ubfx	r6, r2, #18, #6
 8002df2:	0e92      	lsrs	r2, r2, #26
 8002df4:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 8002df6:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 8002dfa:	f85b 2022 	ldr.w	r2, [fp, r2, lsl #2]
 8002dfe:	4071      	eors	r1, r6
 8002e00:	4051      	eors	r1, r2
 8002e02:	ea81 72f3 	eor.w	r2, r1, r3, ror #31
 8002e06:	f022 32aa 	bic.w	r2, r2, #2863311530	; 0xaaaaaaaa
 8002e0a:	ea82 0601 	eor.w	r6, r2, r1
 8002e0e:	ea82 72f3 	eor.w	r2, r2, r3, ror #31
 8002e12:	0076      	lsls	r6, r6, #1
 8002e14:	ea46 71d1 	orr.w	r1, r6, r1, lsr #31
 8002e18:	ea81 2312 	eor.w	r3, r1, r2, lsr #8
 8002e1c:	fa3f f383 	uxtb16	r3, r3
 8002e20:	4059      	eors	r1, r3
 8002e22:	ea82 2203 	eor.w	r2, r2, r3, lsl #8
 8002e26:	ea82 0391 	eor.w	r3, r2, r1, lsr #2
 8002e2a:	f023 33cc 	bic.w	r3, r3, #3435973836	; 0xcccccccc
 8002e2e:	ea81 0183 	eor.w	r1, r1, r3, lsl #2
 8002e32:	405a      	eors	r2, r3
 8002e34:	b28e      	uxth	r6, r1
 8002e36:	ea86 4312 	eor.w	r3, r6, r2, lsr #16
 8002e3a:	4059      	eors	r1, r3
 8002e3c:	ea82 4203 	eor.w	r2, r2, r3, lsl #16
 8002e40:	ea82 1311 	eor.w	r3, r2, r1, lsr #4
 8002e44:	f023 33f0 	bic.w	r3, r3, #4042322160	; 0xf0f0f0f0
 8002e48:	405a      	eors	r2, r3
 8002e4a:	ea81 1103 	eor.w	r1, r1, r3, lsl #4
 8002e4e:	5562      	strb	r2, [r4, r5]
 8002e50:	0a16      	lsrs	r6, r2, #8
 8002e52:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 8002e54:	4425      	add	r5, r4
 8002e56:	706e      	strb	r6, [r5, #1]
 8002e58:	0c16      	lsrs	r6, r2, #16
 8002e5a:	0e12      	lsrs	r2, r2, #24
 8002e5c:	70ae      	strb	r6, [r5, #2]
 8002e5e:	70ea      	strb	r2, [r5, #3]
 8002e60:	0a0a      	lsrs	r2, r1, #8
 8002e62:	7129      	strb	r1, [r5, #4]
 8002e64:	716a      	strb	r2, [r5, #5]
 8002e66:	0c0a      	lsrs	r2, r1, #16
 8002e68:	0e09      	lsrs	r1, r1, #24
 8002e6a:	71aa      	strb	r2, [r5, #6]
 8002e6c:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8002e6e:	71e9      	strb	r1, [r5, #7]
 8002e70:	9903      	ldr	r1, [sp, #12]
 8002e72:	3208      	adds	r2, #8
 8002e74:	4291      	cmp	r1, r2
 8002e76:	f47f ac34 	bne.w	80026e2 <des_decrypt+0x54>
 8002e7a:	b00e      	add	sp, #56	; 0x38
 8002e7c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002e80:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002e82 <initialise_benchmark>:
 8002e82:	4770      	bx	lr

08002e84 <benchmark>:
 8002e84:	b5b0      	push	{r4, r5, r7, lr}
 8002e86:	af02      	add	r7, sp, #8
 8002e88:	f640 24f8 	movw	r4, #2808	; 0xaf8
 8002e8c:	f640 15e4 	movw	r5, #2532	; 0x9e4
 8002e90:	f248 2360 	movw	r3, #33376	; 0x8260
 8002e94:	2110      	movs	r1, #16
 8002e96:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8002e9a:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002e9e:	f6c0 0300 	movt	r3, #2048	; 0x800
 8002ea2:	4620      	mov	r0, r4
 8002ea4:	462a      	mov	r2, r5
 8002ea6:	f7ff f806 	bl	8001eb6 <des_encrypt>
 8002eaa:	4620      	mov	r0, r4
 8002eac:	2110      	movs	r1, #16
 8002eae:	462a      	mov	r2, r5
 8002eb0:	462b      	mov	r3, r5
 8002eb2:	f7ff fbec 	bl	800268e <des_decrypt>
 8002eb6:	2000      	movs	r0, #0
 8002eb8:	bdb0      	pop	{r4, r5, r7, pc}

08002eba <verify_benchmark>:
 8002eba:	b580      	push	{r7, lr}
 8002ebc:	466f      	mov	r7, sp
 8002ebe:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002ec2:	f04f 0c00 	mov.w	ip, #0
 8002ec6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002eca:	7881      	ldrb	r1, [r0, #2]
 8002ecc:	7802      	ldrb	r2, [r0, #0]
 8002ece:	7843      	ldrb	r3, [r0, #1]
 8002ed0:	f890 e003 	ldrb.w	lr, [r0, #3]
 8002ed4:	2902      	cmp	r1, #2
 8002ed6:	f04f 0100 	mov.w	r1, #0
 8002eda:	bf08      	it	eq
 8002edc:	2101      	moveq	r1, #1
 8002ede:	2a00      	cmp	r2, #0
 8002ee0:	f04f 0200 	mov.w	r2, #0
 8002ee4:	bf08      	it	eq
 8002ee6:	2201      	moveq	r2, #1
 8002ee8:	2b01      	cmp	r3, #1
 8002eea:	bf18      	it	ne
 8002eec:	2300      	movne	r3, #0
 8002eee:	f1be 0f03 	cmp.w	lr, #3
 8002ef2:	ea02 0203 	and.w	r2, r2, r3
 8002ef6:	ea01 0102 	and.w	r1, r1, r2
 8002efa:	f04f 0200 	mov.w	r2, #0
 8002efe:	bf08      	it	eq
 8002f00:	2201      	moveq	r2, #1
 8002f02:	4011      	ands	r1, r2
 8002f04:	7902      	ldrb	r2, [r0, #4]
 8002f06:	2a04      	cmp	r2, #4
 8002f08:	f04f 0200 	mov.w	r2, #0
 8002f0c:	bf08      	it	eq
 8002f0e:	2201      	moveq	r2, #1
 8002f10:	4011      	ands	r1, r2
 8002f12:	7942      	ldrb	r2, [r0, #5]
 8002f14:	2a05      	cmp	r2, #5
 8002f16:	f04f 0200 	mov.w	r2, #0
 8002f1a:	bf08      	it	eq
 8002f1c:	2201      	moveq	r2, #1
 8002f1e:	4011      	ands	r1, r2
 8002f20:	7982      	ldrb	r2, [r0, #6]
 8002f22:	2a06      	cmp	r2, #6
 8002f24:	f04f 0200 	mov.w	r2, #0
 8002f28:	bf08      	it	eq
 8002f2a:	2201      	moveq	r2, #1
 8002f2c:	4011      	ands	r1, r2
 8002f2e:	79c2      	ldrb	r2, [r0, #7]
 8002f30:	2a07      	cmp	r2, #7
 8002f32:	f04f 0200 	mov.w	r2, #0
 8002f36:	bf08      	it	eq
 8002f38:	2201      	moveq	r2, #1
 8002f3a:	4011      	ands	r1, r2
 8002f3c:	7a02      	ldrb	r2, [r0, #8]
 8002f3e:	2a08      	cmp	r2, #8
 8002f40:	f04f 0200 	mov.w	r2, #0
 8002f44:	bf08      	it	eq
 8002f46:	2201      	moveq	r2, #1
 8002f48:	4011      	ands	r1, r2
 8002f4a:	7a42      	ldrb	r2, [r0, #9]
 8002f4c:	2a09      	cmp	r2, #9
 8002f4e:	f04f 0200 	mov.w	r2, #0
 8002f52:	bf08      	it	eq
 8002f54:	2201      	moveq	r2, #1
 8002f56:	4011      	ands	r1, r2
 8002f58:	7a82      	ldrb	r2, [r0, #10]
 8002f5a:	2a0a      	cmp	r2, #10
 8002f5c:	f04f 0200 	mov.w	r2, #0
 8002f60:	bf08      	it	eq
 8002f62:	2201      	moveq	r2, #1
 8002f64:	4011      	ands	r1, r2
 8002f66:	7ac2      	ldrb	r2, [r0, #11]
 8002f68:	2a0b      	cmp	r2, #11
 8002f6a:	f04f 0200 	mov.w	r2, #0
 8002f6e:	bf08      	it	eq
 8002f70:	2201      	moveq	r2, #1
 8002f72:	4011      	ands	r1, r2
 8002f74:	7b02      	ldrb	r2, [r0, #12]
 8002f76:	2a0c      	cmp	r2, #12
 8002f78:	f04f 0200 	mov.w	r2, #0
 8002f7c:	bf08      	it	eq
 8002f7e:	2201      	moveq	r2, #1
 8002f80:	4011      	ands	r1, r2
 8002f82:	7b42      	ldrb	r2, [r0, #13]
 8002f84:	2a0d      	cmp	r2, #13
 8002f86:	f04f 0200 	mov.w	r2, #0
 8002f8a:	bf08      	it	eq
 8002f8c:	2201      	moveq	r2, #1
 8002f8e:	4011      	ands	r1, r2
 8002f90:	7b82      	ldrb	r2, [r0, #14]
 8002f92:	2a0e      	cmp	r2, #14
 8002f94:	f04f 0200 	mov.w	r2, #0
 8002f98:	bf08      	it	eq
 8002f9a:	2201      	moveq	r2, #1
 8002f9c:	7bc0      	ldrb	r0, [r0, #15]
 8002f9e:	4011      	ands	r1, r2
 8002fa0:	280f      	cmp	r0, #15
 8002fa2:	bf08      	it	eq
 8002fa4:	f04f 0c01 	moveq.w	ip, #1
 8002fa8:	ea01 000c 	and.w	r0, r1, ip
 8002fac:	bd80      	pop	{r7, pc}

08002fae <__io_putchar>:
 8002fae:	b580      	push	{r7, lr}
 8002fb0:	466f      	mov	r7, sp
 8002fb2:	b082      	sub	sp, #8
 8002fb4:	9001      	str	r0, [sp, #4]
 8002fb6:	f640 10f4 	movw	r0, #2548	; 0x9f4
 8002fba:	a901      	add	r1, sp, #4
 8002fbc:	2201      	movs	r2, #1
 8002fbe:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002fc2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002fc6:	f7fe fe88 	bl	8001cda <HAL_UART_Transmit>
 8002fca:	9801      	ldr	r0, [sp, #4]
 8002fcc:	b002      	add	sp, #8
 8002fce:	bd80      	pop	{r7, pc}

08002fd0 <main>:
 8002fd0:	b5b0      	push	{r4, r5, r7, lr}
 8002fd2:	af02      	add	r7, sp, #8
 8002fd4:	f640 11f4 	movw	r1, #2548	; 0x9f4
 8002fd8:	f643 0000 	movw	r0, #14336	; 0x3800
 8002fdc:	220c      	movs	r2, #12
 8002fde:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002fe2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002fe6:	6008      	str	r0, [r1, #0]
 8002fe8:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002fec:	6048      	str	r0, [r1, #4]
 8002fee:	2000      	movs	r0, #0
 8002ff0:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002ff4:	6108      	str	r0, [r1, #16]
 8002ff6:	6248      	str	r0, [r1, #36]	; 0x24
 8002ff8:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002ffc:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8003000:	2000      	movs	r0, #0
 8003002:	f7fe feff 	bl	8001e04 <BSP_COM_Init>
 8003006:	f7ff ff3c 	bl	8002e82 <initialise_benchmark>
 800300a:	f648 30c4 	movw	r0, #35780	; 0x8bc4
 800300e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003012:	f000 f949 	bl	80032a8 <printf>
 8003016:	f648 4071 	movw	r0, #35953	; 0x8c71
 800301a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800301e:	f000 f9a5 	bl	800336c <puts>
 8003022:	f7fe f861 	bl	80010e8 <HAL_Init>
 8003026:	f7fe f877 	bl	8001118 <HAL_GetTick>
 800302a:	4604      	mov	r4, r0
 800302c:	f7ff ff2a 	bl	8002e84 <benchmark>
 8003030:	4605      	mov	r5, r0
 8003032:	f7fe f871 	bl	8001118 <HAL_GetTick>
 8003036:	1b04      	subs	r4, r0, r4
 8003038:	4628      	mov	r0, r5
 800303a:	f7ff ff3e 	bl	8002eba <verify_benchmark>
 800303e:	1c41      	adds	r1, r0, #1
 8003040:	d006      	beq.n	8003050 <main+0x80>
 8003042:	2801      	cmp	r0, #1
 8003044:	d109      	bne.n	800305a <main+0x8a>
 8003046:	f648 30dd 	movw	r0, #35805	; 0x8bdd
 800304a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800304e:	e008      	b.n	8003062 <main+0x92>
 8003050:	f648 4001 	movw	r0, #35841	; 0x8c01
 8003054:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003058:	e003      	b.n	8003062 <main+0x92>
 800305a:	f648 4036 	movw	r0, #35894	; 0x8c36
 800305e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003062:	4621      	mov	r1, r4
 8003064:	f000 f920 	bl	80032a8 <printf>
 8003068:	2000      	movs	r0, #0
 800306a:	bdb0      	pop	{r4, r5, r7, pc}

0800306c <SysTick_Handler>:
 800306c:	b580      	push	{r7, lr}
 800306e:	466f      	mov	r7, sp
 8003070:	f7fe f84a 	bl	8001108 <HAL_IncTick>
 8003074:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8003078:	f7fe b8a4 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

0800307c <_read>:
 800307c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800307e:	af03      	add	r7, sp, #12
 8003080:	f84d bd04 	str.w	fp, [sp, #-4]!
 8003084:	4614      	mov	r4, r2
 8003086:	460d      	mov	r5, r1
 8003088:	2c01      	cmp	r4, #1
 800308a:	db06      	blt.n	800309a <_read+0x1e>
 800308c:	4626      	mov	r6, r4
 800308e:	f3af 8000 	nop.w
 8003092:	f805 0b01 	strb.w	r0, [r5], #1
 8003096:	3e01      	subs	r6, #1
 8003098:	d1f9      	bne.n	800308e <_read+0x12>
 800309a:	4620      	mov	r0, r4
 800309c:	f85d bb04 	ldr.w	fp, [sp], #4
 80030a0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080030a2 <_write>:
 80030a2:	b5f0      	push	{r4, r5, r6, r7, lr}
 80030a4:	af03      	add	r7, sp, #12
 80030a6:	f84d bd04 	str.w	fp, [sp, #-4]!
 80030aa:	4614      	mov	r4, r2
 80030ac:	460d      	mov	r5, r1
 80030ae:	2c01      	cmp	r4, #1
 80030b0:	db06      	blt.n	80030c0 <_write+0x1e>
 80030b2:	4626      	mov	r6, r4
 80030b4:	f815 0b01 	ldrb.w	r0, [r5], #1
 80030b8:	f7ff ff79 	bl	8002fae <__io_putchar>
 80030bc:	3e01      	subs	r6, #1
 80030be:	d1f9      	bne.n	80030b4 <_write+0x12>
 80030c0:	4620      	mov	r0, r4
 80030c2:	f85d bb04 	ldr.w	fp, [sp], #4
 80030c6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080030c8 <_sbrk>:
 80030c8:	f640 2278 	movw	r2, #2680	; 0xa78
 80030cc:	4601      	mov	r1, r0
 80030ce:	466b      	mov	r3, sp
 80030d0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80030d4:	6810      	ldr	r0, [r2, #0]
 80030d6:	2800      	cmp	r0, #0
 80030d8:	bf02      	ittt	eq
 80030da:	f640 30a0 	movweq	r0, #2976	; 0xba0
 80030de:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80030e2:	6010      	streq	r0, [r2, #0]
 80030e4:	4401      	add	r1, r0
 80030e6:	4299      	cmp	r1, r3
 80030e8:	bf9c      	itt	ls
 80030ea:	6011      	strls	r1, [r2, #0]
 80030ec:	4770      	bxls	lr
 80030ee:	b580      	push	{r7, lr}
 80030f0:	466f      	mov	r7, sp
 80030f2:	f000 f865 	bl	80031c0 <__errno>
 80030f6:	210c      	movs	r1, #12
 80030f8:	6001      	str	r1, [r0, #0]
 80030fa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80030fe:	bd80      	pop	{r7, pc}

08003100 <_close>:
 8003100:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003104:	4770      	bx	lr

08003106 <_fstat>:
 8003106:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800310a:	6048      	str	r0, [r1, #4]
 800310c:	2000      	movs	r0, #0
 800310e:	4770      	bx	lr

08003110 <_isatty>:
 8003110:	2001      	movs	r0, #1
 8003112:	4770      	bx	lr

08003114 <_lseek>:
 8003114:	2000      	movs	r0, #0
 8003116:	4770      	bx	lr

08003118 <SystemInit>:
 8003118:	f64e 5088 	movw	r0, #60808	; 0xed88
 800311c:	f04f 0c00 	mov.w	ip, #0
 8003120:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8003124:	6801      	ldr	r1, [r0, #0]
 8003126:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800312a:	6001      	str	r1, [r0, #0]
 800312c:	f241 0100 	movw	r1, #4096	; 0x1000
 8003130:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8003134:	680a      	ldr	r2, [r1, #0]
 8003136:	f042 0201 	orr.w	r2, r2, #1
 800313a:	600a      	str	r2, [r1, #0]
 800313c:	f8c1 c008 	str.w	ip, [r1, #8]
 8003140:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8003144:	680b      	ldr	r3, [r1, #0]
 8003146:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800314a:	401a      	ands	r2, r3
 800314c:	600a      	str	r2, [r1, #0]
 800314e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8003152:	60ca      	str	r2, [r1, #12]
 8003154:	680a      	ldr	r2, [r1, #0]
 8003156:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800315a:	600a      	str	r2, [r1, #0]
 800315c:	f8c1 c018 	str.w	ip, [r1, #24]
 8003160:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8003164:	f840 1c80 	str.w	r1, [r0, #-128]
 8003168:	4770      	bx	lr
	...

0800316c <Reset_Handler>:
 800316c:	f8df d034 	ldr.w	sp, [pc, #52]	; 80031a4 <LoopForever+0x2>
 8003170:	2100      	movs	r1, #0
 8003172:	e003      	b.n	800317c <LoopCopyDataInit>

08003174 <CopyDataInit>:
 8003174:	4b0c      	ldr	r3, [pc, #48]	; (80031a8 <LoopForever+0x6>)
 8003176:	585b      	ldr	r3, [r3, r1]
 8003178:	5043      	str	r3, [r0, r1]
 800317a:	3104      	adds	r1, #4

0800317c <LoopCopyDataInit>:
 800317c:	480b      	ldr	r0, [pc, #44]	; (80031ac <LoopForever+0xa>)
 800317e:	4b0c      	ldr	r3, [pc, #48]	; (80031b0 <LoopForever+0xe>)
 8003180:	1842      	adds	r2, r0, r1
 8003182:	429a      	cmp	r2, r3
 8003184:	d3f6      	bcc.n	8003174 <CopyDataInit>
 8003186:	4a0b      	ldr	r2, [pc, #44]	; (80031b4 <LoopForever+0x12>)
 8003188:	e002      	b.n	8003190 <LoopFillZerobss>

0800318a <FillZerobss>:
 800318a:	2300      	movs	r3, #0
 800318c:	f842 3b04 	str.w	r3, [r2], #4

08003190 <LoopFillZerobss>:
 8003190:	4b09      	ldr	r3, [pc, #36]	; (80031b8 <LoopForever+0x16>)
 8003192:	429a      	cmp	r2, r3
 8003194:	d3f9      	bcc.n	800318a <FillZerobss>
 8003196:	f7ff ffbf 	bl	8003118 <SystemInit>
 800319a:	f000 f817 	bl	80031cc <__libc_init_array>
 800319e:	f7ff ff17 	bl	8002fd0 <main>

080031a2 <LoopForever>:
 80031a2:	e7fe      	b.n	80031a2 <LoopForever>
 80031a4:	20018000 	.word	0x20018000
 80031a8:	08008f18 	.word	0x08008f18
 80031ac:	20000000 	.word	0x20000000
 80031b0:	200009c8 	.word	0x200009c8
 80031b4:	200009c8 	.word	0x200009c8
 80031b8:	20000ba0 	.word	0x20000ba0

080031bc <ADC1_2_IRQHandler>:
 80031bc:	e7fe      	b.n	80031bc <ADC1_2_IRQHandler>
	...

080031c0 <__errno>:
 80031c0:	4b01      	ldr	r3, [pc, #4]	; (80031c8 <__errno+0x8>)
 80031c2:	6818      	ldr	r0, [r3, #0]
 80031c4:	4770      	bx	lr
 80031c6:	bf00      	nop
 80031c8:	20000018 	.word	0x20000018

080031cc <__libc_init_array>:
 80031cc:	b570      	push	{r4, r5, r6, lr}
 80031ce:	4e0d      	ldr	r6, [pc, #52]	; (8003204 <__libc_init_array+0x38>)
 80031d0:	4d0d      	ldr	r5, [pc, #52]	; (8003208 <__libc_init_array+0x3c>)
 80031d2:	1b76      	subs	r6, r6, r5
 80031d4:	10b6      	asrs	r6, r6, #2
 80031d6:	d006      	beq.n	80031e6 <__libc_init_array+0x1a>
 80031d8:	2400      	movs	r4, #0
 80031da:	3401      	adds	r4, #1
 80031dc:	f855 3b04 	ldr.w	r3, [r5], #4
 80031e0:	4798      	blx	r3
 80031e2:	42a6      	cmp	r6, r4
 80031e4:	d1f9      	bne.n	80031da <__libc_init_array+0xe>
 80031e6:	4e09      	ldr	r6, [pc, #36]	; (800320c <__libc_init_array+0x40>)
 80031e8:	4d09      	ldr	r5, [pc, #36]	; (8003210 <__libc_init_array+0x44>)
 80031ea:	1b76      	subs	r6, r6, r5
 80031ec:	f004 feaa 	bl	8007f44 <_init>
 80031f0:	10b6      	asrs	r6, r6, #2
 80031f2:	d006      	beq.n	8003202 <__libc_init_array+0x36>
 80031f4:	2400      	movs	r4, #0
 80031f6:	3401      	adds	r4, #1
 80031f8:	f855 3b04 	ldr.w	r3, [r5], #4
 80031fc:	4798      	blx	r3
 80031fe:	42a6      	cmp	r6, r4
 8003200:	d1f9      	bne.n	80031f6 <__libc_init_array+0x2a>
 8003202:	bd70      	pop	{r4, r5, r6, pc}
 8003204:	08008f08 	.word	0x08008f08
 8003208:	08008f08 	.word	0x08008f08
 800320c:	08008f10 	.word	0x08008f10
 8003210:	08008f08 	.word	0x08008f08

08003214 <memset>:
 8003214:	b4f0      	push	{r4, r5, r6, r7}
 8003216:	0786      	lsls	r6, r0, #30
 8003218:	d043      	beq.n	80032a2 <memset+0x8e>
 800321a:	1e54      	subs	r4, r2, #1
 800321c:	2a00      	cmp	r2, #0
 800321e:	d03e      	beq.n	800329e <memset+0x8a>
 8003220:	b2ca      	uxtb	r2, r1
 8003222:	4603      	mov	r3, r0
 8003224:	e002      	b.n	800322c <memset+0x18>
 8003226:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800322a:	d338      	bcc.n	800329e <memset+0x8a>
 800322c:	f803 2b01 	strb.w	r2, [r3], #1
 8003230:	079d      	lsls	r5, r3, #30
 8003232:	d1f8      	bne.n	8003226 <memset+0x12>
 8003234:	2c03      	cmp	r4, #3
 8003236:	d92b      	bls.n	8003290 <memset+0x7c>
 8003238:	b2cd      	uxtb	r5, r1
 800323a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800323e:	2c0f      	cmp	r4, #15
 8003240:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8003244:	d916      	bls.n	8003274 <memset+0x60>
 8003246:	f1a4 0710 	sub.w	r7, r4, #16
 800324a:	093f      	lsrs	r7, r7, #4
 800324c:	f103 0620 	add.w	r6, r3, #32
 8003250:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8003254:	f103 0210 	add.w	r2, r3, #16
 8003258:	e942 5504 	strd	r5, r5, [r2, #-16]
 800325c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8003260:	3210      	adds	r2, #16
 8003262:	42b2      	cmp	r2, r6
 8003264:	d1f8      	bne.n	8003258 <memset+0x44>
 8003266:	f004 040f 	and.w	r4, r4, #15
 800326a:	3701      	adds	r7, #1
 800326c:	2c03      	cmp	r4, #3
 800326e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8003272:	d90d      	bls.n	8003290 <memset+0x7c>
 8003274:	461e      	mov	r6, r3
 8003276:	4622      	mov	r2, r4
 8003278:	3a04      	subs	r2, #4
 800327a:	2a03      	cmp	r2, #3
 800327c:	f846 5b04 	str.w	r5, [r6], #4
 8003280:	d8fa      	bhi.n	8003278 <memset+0x64>
 8003282:	1f22      	subs	r2, r4, #4
 8003284:	f022 0203 	bic.w	r2, r2, #3
 8003288:	3204      	adds	r2, #4
 800328a:	4413      	add	r3, r2
 800328c:	f004 0403 	and.w	r4, r4, #3
 8003290:	b12c      	cbz	r4, 800329e <memset+0x8a>
 8003292:	b2c9      	uxtb	r1, r1
 8003294:	441c      	add	r4, r3
 8003296:	f803 1b01 	strb.w	r1, [r3], #1
 800329a:	429c      	cmp	r4, r3
 800329c:	d1fb      	bne.n	8003296 <memset+0x82>
 800329e:	bcf0      	pop	{r4, r5, r6, r7}
 80032a0:	4770      	bx	lr
 80032a2:	4614      	mov	r4, r2
 80032a4:	4603      	mov	r3, r0
 80032a6:	e7c5      	b.n	8003234 <memset+0x20>

080032a8 <printf>:
 80032a8:	b40f      	push	{r0, r1, r2, r3}
 80032aa:	b500      	push	{lr}
 80032ac:	4907      	ldr	r1, [pc, #28]	; (80032cc <printf+0x24>)
 80032ae:	b083      	sub	sp, #12
 80032b0:	ab04      	add	r3, sp, #16
 80032b2:	6808      	ldr	r0, [r1, #0]
 80032b4:	f853 2b04 	ldr.w	r2, [r3], #4
 80032b8:	6881      	ldr	r1, [r0, #8]
 80032ba:	9301      	str	r3, [sp, #4]
 80032bc:	f000 f860 	bl	8003380 <_vfprintf_r>
 80032c0:	b003      	add	sp, #12
 80032c2:	f85d eb04 	ldr.w	lr, [sp], #4
 80032c6:	b004      	add	sp, #16
 80032c8:	4770      	bx	lr
 80032ca:	bf00      	nop
 80032cc:	20000018 	.word	0x20000018

080032d0 <_puts_r>:
 80032d0:	b570      	push	{r4, r5, r6, lr}
 80032d2:	4605      	mov	r5, r0
 80032d4:	b088      	sub	sp, #32
 80032d6:	4608      	mov	r0, r1
 80032d8:	460c      	mov	r4, r1
 80032da:	f7fd f9b1 	bl	8000640 <strlen>
 80032de:	4a22      	ldr	r2, [pc, #136]	; (8003368 <_puts_r+0x98>)
 80032e0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80032e2:	9404      	str	r4, [sp, #16]
 80032e4:	2601      	movs	r6, #1
 80032e6:	1c44      	adds	r4, r0, #1
 80032e8:	a904      	add	r1, sp, #16
 80032ea:	9206      	str	r2, [sp, #24]
 80032ec:	2202      	movs	r2, #2
 80032ee:	9403      	str	r4, [sp, #12]
 80032f0:	9005      	str	r0, [sp, #20]
 80032f2:	68ac      	ldr	r4, [r5, #8]
 80032f4:	9607      	str	r6, [sp, #28]
 80032f6:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80032fa:	b31b      	cbz	r3, 8003344 <_puts_r+0x74>
 80032fc:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80032fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003302:	07ce      	lsls	r6, r1, #31
 8003304:	b29a      	uxth	r2, r3
 8003306:	d401      	bmi.n	800330c <_puts_r+0x3c>
 8003308:	0590      	lsls	r0, r2, #22
 800330a:	d525      	bpl.n	8003358 <_puts_r+0x88>
 800330c:	0491      	lsls	r1, r2, #18
 800330e:	d406      	bmi.n	800331e <_puts_r+0x4e>
 8003310:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8003312:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8003316:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800331a:	81a3      	strh	r3, [r4, #12]
 800331c:	6662      	str	r2, [r4, #100]	; 0x64
 800331e:	4628      	mov	r0, r5
 8003320:	aa01      	add	r2, sp, #4
 8003322:	4621      	mov	r1, r4
 8003324:	f003 f860 	bl	80063e8 <__sfvwrite_r>
 8003328:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800332a:	2800      	cmp	r0, #0
 800332c:	bf0c      	ite	eq
 800332e:	250a      	moveq	r5, #10
 8003330:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003334:	07da      	lsls	r2, r3, #31
 8003336:	d402      	bmi.n	800333e <_puts_r+0x6e>
 8003338:	89a3      	ldrh	r3, [r4, #12]
 800333a:	059b      	lsls	r3, r3, #22
 800333c:	d506      	bpl.n	800334c <_puts_r+0x7c>
 800333e:	4628      	mov	r0, r5
 8003340:	b008      	add	sp, #32
 8003342:	bd70      	pop	{r4, r5, r6, pc}
 8003344:	4628      	mov	r0, r5
 8003346:	f002 feb9 	bl	80060bc <__sinit>
 800334a:	e7d7      	b.n	80032fc <_puts_r+0x2c>
 800334c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800334e:	f003 fa07 	bl	8006760 <__retarget_lock_release_recursive>
 8003352:	4628      	mov	r0, r5
 8003354:	b008      	add	sp, #32
 8003356:	bd70      	pop	{r4, r5, r6, pc}
 8003358:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800335a:	f003 f9ff 	bl	800675c <__retarget_lock_acquire_recursive>
 800335e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003362:	b29a      	uxth	r2, r3
 8003364:	e7d2      	b.n	800330c <_puts_r+0x3c>
 8003366:	bf00      	nop
 8003368:	08008c78 	.word	0x08008c78

0800336c <puts>:
 800336c:	4b02      	ldr	r3, [pc, #8]	; (8003378 <puts+0xc>)
 800336e:	4601      	mov	r1, r0
 8003370:	6818      	ldr	r0, [r3, #0]
 8003372:	f7ff bfad 	b.w	80032d0 <_puts_r>
 8003376:	bf00      	nop
 8003378:	20000018 	.word	0x20000018
 800337c:	00000000 	.word	0x00000000

08003380 <_vfprintf_r>:
 8003380:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003384:	b0d7      	sub	sp, #348	; 0x15c
 8003386:	461c      	mov	r4, r3
 8003388:	4689      	mov	r9, r1
 800338a:	4617      	mov	r7, r2
 800338c:	4605      	mov	r5, r0
 800338e:	9003      	str	r0, [sp, #12]
 8003390:	f003 f9d2 	bl	8006738 <_localeconv_r>
 8003394:	6803      	ldr	r3, [r0, #0]
 8003396:	9316      	str	r3, [sp, #88]	; 0x58
 8003398:	4618      	mov	r0, r3
 800339a:	f7fd f951 	bl	8000640 <strlen>
 800339e:	9408      	str	r4, [sp, #32]
 80033a0:	9015      	str	r0, [sp, #84]	; 0x54
 80033a2:	b11d      	cbz	r5, 80033ac <_vfprintf_r+0x2c>
 80033a4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80033a6:	2b00      	cmp	r3, #0
 80033a8:	f000 8107 	beq.w	80035ba <_vfprintf_r+0x23a>
 80033ac:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80033b0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80033b4:	07c8      	lsls	r0, r1, #31
 80033b6:	b293      	uxth	r3, r2
 80033b8:	d402      	bmi.n	80033c0 <_vfprintf_r+0x40>
 80033ba:	0599      	lsls	r1, r3, #22
 80033bc:	f140 811f 	bpl.w	80035fe <_vfprintf_r+0x27e>
 80033c0:	049e      	lsls	r6, r3, #18
 80033c2:	d40a      	bmi.n	80033da <_vfprintf_r+0x5a>
 80033c4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80033c8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80033cc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80033d0:	f8a9 300c 	strh.w	r3, [r9, #12]
 80033d4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80033d8:	b29b      	uxth	r3, r3
 80033da:	071d      	lsls	r5, r3, #28
 80033dc:	f140 80b2 	bpl.w	8003544 <_vfprintf_r+0x1c4>
 80033e0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80033e4:	2a00      	cmp	r2, #0
 80033e6:	f000 80ad 	beq.w	8003544 <_vfprintf_r+0x1c4>
 80033ea:	f003 021a 	and.w	r2, r3, #26
 80033ee:	2a0a      	cmp	r2, #10
 80033f0:	f000 80c9 	beq.w	8003586 <_vfprintf_r+0x206>
 80033f4:	2300      	movs	r3, #0
 80033f6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8003610 <_vfprintf_r+0x290>
 80033fa:	9310      	str	r3, [sp, #64]	; 0x40
 80033fc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8003400:	9317      	str	r3, [sp, #92]	; 0x5c
 8003402:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8003406:	931b      	str	r3, [sp, #108]	; 0x6c
 8003408:	9318      	str	r3, [sp, #96]	; 0x60
 800340a:	9305      	str	r3, [sp, #20]
 800340c:	ab2d      	add	r3, sp, #180	; 0xb4
 800340e:	932a      	str	r3, [sp, #168]	; 0xa8
 8003410:	469b      	mov	fp, r3
 8003412:	783b      	ldrb	r3, [r7, #0]
 8003414:	f8cd 901c 	str.w	r9, [sp, #28]
 8003418:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800341c:	2b00      	cmp	r3, #0
 800341e:	f000 8259 	beq.w	80038d4 <_vfprintf_r+0x554>
 8003422:	2b25      	cmp	r3, #37	; 0x25
 8003424:	463c      	mov	r4, r7
 8003426:	d102      	bne.n	800342e <_vfprintf_r+0xae>
 8003428:	e01d      	b.n	8003466 <_vfprintf_r+0xe6>
 800342a:	2b25      	cmp	r3, #37	; 0x25
 800342c:	d003      	beq.n	8003436 <_vfprintf_r+0xb6>
 800342e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8003432:	2b00      	cmp	r3, #0
 8003434:	d1f9      	bne.n	800342a <_vfprintf_r+0xaa>
 8003436:	1be5      	subs	r5, r4, r7
 8003438:	b18d      	cbz	r5, 800345e <_vfprintf_r+0xde>
 800343a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800343e:	3301      	adds	r3, #1
 8003440:	442a      	add	r2, r5
 8003442:	2b07      	cmp	r3, #7
 8003444:	f8cb 7000 	str.w	r7, [fp]
 8003448:	f8cb 5004 	str.w	r5, [fp, #4]
 800344c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8003450:	f300 80ca 	bgt.w	80035e8 <_vfprintf_r+0x268>
 8003454:	f10b 0b08 	add.w	fp, fp, #8
 8003458:	9b05      	ldr	r3, [sp, #20]
 800345a:	442b      	add	r3, r5
 800345c:	9305      	str	r3, [sp, #20]
 800345e:	7823      	ldrb	r3, [r4, #0]
 8003460:	2b00      	cmp	r3, #0
 8003462:	f000 8237 	beq.w	80038d4 <_vfprintf_r+0x554>
 8003466:	2300      	movs	r3, #0
 8003468:	7866      	ldrb	r6, [r4, #1]
 800346a:	9306      	str	r3, [sp, #24]
 800346c:	4698      	mov	r8, r3
 800346e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003472:	f104 0a01 	add.w	sl, r4, #1
 8003476:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800347a:	252b      	movs	r5, #43	; 0x2b
 800347c:	f10a 0a01 	add.w	sl, sl, #1
 8003480:	f1a6 0320 	sub.w	r3, r6, #32
 8003484:	2b5a      	cmp	r3, #90	; 0x5a
 8003486:	f200 842a 	bhi.w	8003cde <_vfprintf_r+0x95e>
 800348a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800348e:	03aa      	.short	0x03aa
 8003490:	04280428 	.word	0x04280428
 8003494:	0428029c 	.word	0x0428029c
 8003498:	04280428 	.word	0x04280428
 800349c:	042802a7 	.word	0x042802a7
 80034a0:	02c60428 	.word	0x02c60428
 80034a4:	042802d2 	.word	0x042802d2
 80034a8:	02dc02d7 	.word	0x02dc02d7
 80034ac:	02f60428 	.word	0x02f60428
 80034b0:	026d026d 	.word	0x026d026d
 80034b4:	026d026d 	.word	0x026d026d
 80034b8:	026d026d 	.word	0x026d026d
 80034bc:	026d026d 	.word	0x026d026d
 80034c0:	0428026d 	.word	0x0428026d
 80034c4:	04280428 	.word	0x04280428
 80034c8:	04280428 	.word	0x04280428
 80034cc:	04280428 	.word	0x04280428
 80034d0:	042802fb 	.word	0x042802fb
 80034d4:	03f3033c 	.word	0x03f3033c
 80034d8:	02fb02fb 	.word	0x02fb02fb
 80034dc:	042802fb 	.word	0x042802fb
 80034e0:	04280428 	.word	0x04280428
 80034e4:	03ee0428 	.word	0x03ee0428
 80034e8:	04280428 	.word	0x04280428
 80034ec:	0428009a 	.word	0x0428009a
 80034f0:	04280428 	.word	0x04280428
 80034f4:	04280350 	.word	0x04280350
 80034f8:	04280379 	.word	0x04280379
 80034fc:	03900428 	.word	0x03900428
 8003500:	04280428 	.word	0x04280428
 8003504:	04280428 	.word	0x04280428
 8003508:	04280428 	.word	0x04280428
 800350c:	04280428 	.word	0x04280428
 8003510:	042802fb 	.word	0x042802fb
 8003514:	00c5033c 	.word	0x00c5033c
 8003518:	02fb02fb 	.word	0x02fb02fb
 800351c:	03d102fb 	.word	0x03d102fb
 8003520:	007000c5 	.word	0x007000c5
 8003524:	03b50428 	.word	0x03b50428
 8003528:	03c20428 	.word	0x03c20428
 800352c:	03de009c 	.word	0x03de009c
 8003530:	04280070 	.word	0x04280070
 8003534:	00720350 	.word	0x00720350
 8003538:	0428022c 	.word	0x0428022c
 800353c:	027c0428 	.word	0x027c0428
 8003540:	00720428 	.word	0x00720428
 8003544:	4649      	mov	r1, r9
 8003546:	9803      	ldr	r0, [sp, #12]
 8003548:	f001 fc9a 	bl	8004e80 <__swsetup_r>
 800354c:	b1a0      	cbz	r0, 8003578 <_vfprintf_r+0x1f8>
 800354e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8003552:	07d8      	lsls	r0, r3, #31
 8003554:	d404      	bmi.n	8003560 <_vfprintf_r+0x1e0>
 8003556:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800355a:	0599      	lsls	r1, r3, #22
 800355c:	f140 83b7 	bpl.w	8003cce <_vfprintf_r+0x94e>
 8003560:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003564:	9305      	str	r3, [sp, #20]
 8003566:	9805      	ldr	r0, [sp, #20]
 8003568:	b057      	add	sp, #348	; 0x15c
 800356a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800356e:	f048 0820 	orr.w	r8, r8, #32
 8003572:	f89a 6000 	ldrb.w	r6, [sl]
 8003576:	e781      	b.n	800347c <_vfprintf_r+0xfc>
 8003578:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800357c:	f003 021a 	and.w	r2, r3, #26
 8003580:	2a0a      	cmp	r2, #10
 8003582:	f47f af37 	bne.w	80033f4 <_vfprintf_r+0x74>
 8003586:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800358a:	2a00      	cmp	r2, #0
 800358c:	f6ff af32 	blt.w	80033f4 <_vfprintf_r+0x74>
 8003590:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003594:	07d2      	lsls	r2, r2, #31
 8003596:	d405      	bmi.n	80035a4 <_vfprintf_r+0x224>
 8003598:	059b      	lsls	r3, r3, #22
 800359a:	d403      	bmi.n	80035a4 <_vfprintf_r+0x224>
 800359c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80035a0:	f003 f8de 	bl	8006760 <__retarget_lock_release_recursive>
 80035a4:	4623      	mov	r3, r4
 80035a6:	463a      	mov	r2, r7
 80035a8:	4649      	mov	r1, r9
 80035aa:	9803      	ldr	r0, [sp, #12]
 80035ac:	f001 fc26 	bl	8004dfc <__sbprintf>
 80035b0:	9005      	str	r0, [sp, #20]
 80035b2:	9805      	ldr	r0, [sp, #20]
 80035b4:	b057      	add	sp, #348	; 0x15c
 80035b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80035ba:	9803      	ldr	r0, [sp, #12]
 80035bc:	f002 fd7e 	bl	80060bc <__sinit>
 80035c0:	e6f4      	b.n	80033ac <_vfprintf_r+0x2c>
 80035c2:	f048 0810 	orr.w	r8, r8, #16
 80035c6:	f018 0f20 	tst.w	r8, #32
 80035ca:	f000 836c 	beq.w	8003ca6 <_vfprintf_r+0x926>
 80035ce:	9c08      	ldr	r4, [sp, #32]
 80035d0:	3407      	adds	r4, #7
 80035d2:	f024 0307 	bic.w	r3, r4, #7
 80035d6:	e9d3 4500 	ldrd	r4, r5, [r3]
 80035da:	f103 0208 	add.w	r2, r3, #8
 80035de:	9208      	str	r2, [sp, #32]
 80035e0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80035e4:	2200      	movs	r2, #0
 80035e6:	e18c      	b.n	8003902 <_vfprintf_r+0x582>
 80035e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80035ea:	9907      	ldr	r1, [sp, #28]
 80035ec:	9803      	ldr	r0, [sp, #12]
 80035ee:	f004 f9f5 	bl	80079dc <__sprint_r>
 80035f2:	2800      	cmp	r0, #0
 80035f4:	f041 8376 	bne.w	8004ce4 <_vfprintf_r+0x1964>
 80035f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035fc:	e72c      	b.n	8003458 <_vfprintf_r+0xd8>
 80035fe:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003602:	f003 f8ab 	bl	800675c <__retarget_lock_acquire_recursive>
 8003606:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800360a:	b293      	uxth	r3, r2
 800360c:	e6d8      	b.n	80033c0 <_vfprintf_r+0x40>
 800360e:	bf00      	nop
	...
 8003618:	4643      	mov	r3, r8
 800361a:	069f      	lsls	r7, r3, #26
 800361c:	f140 832f 	bpl.w	8003c7e <_vfprintf_r+0x8fe>
 8003620:	9c08      	ldr	r4, [sp, #32]
 8003622:	3407      	adds	r4, #7
 8003624:	f024 0407 	bic.w	r4, r4, #7
 8003628:	e9d4 0100 	ldrd	r0, r1, [r4]
 800362c:	f104 0208 	add.w	r2, r4, #8
 8003630:	9208      	str	r2, [sp, #32]
 8003632:	4604      	mov	r4, r0
 8003634:	460d      	mov	r5, r1
 8003636:	2800      	cmp	r0, #0
 8003638:	f171 0200 	sbcs.w	r2, r1, #0
 800363c:	da05      	bge.n	800364a <_vfprintf_r+0x2ca>
 800363e:	222d      	movs	r2, #45	; 0x2d
 8003640:	4264      	negs	r4, r4
 8003642:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8003646:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800364a:	aa56      	add	r2, sp, #344	; 0x158
 800364c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003650:	9204      	str	r2, [sp, #16]
 8003652:	f000 84b2 	beq.w	8003fba <_vfprintf_r+0xc3a>
 8003656:	2201      	movs	r2, #1
 8003658:	ea54 0105 	orrs.w	r1, r4, r5
 800365c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8003660:	f040 8159 	bne.w	8003916 <_vfprintf_r+0x596>
 8003664:	f1b9 0f00 	cmp.w	r9, #0
 8003668:	f040 8619 	bne.w	800429e <_vfprintf_r+0xf1e>
 800366c:	2a00      	cmp	r2, #0
 800366e:	f040 8508 	bne.w	8004082 <_vfprintf_r+0xd02>
 8003672:	f013 0301 	ands.w	r3, r3, #1
 8003676:	af56      	add	r7, sp, #344	; 0x158
 8003678:	9309      	str	r3, [sp, #36]	; 0x24
 800367a:	d002      	beq.n	8003682 <_vfprintf_r+0x302>
 800367c:	2330      	movs	r3, #48	; 0x30
 800367e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003682:	2300      	movs	r3, #0
 8003684:	930a      	str	r3, [sp, #40]	; 0x28
 8003686:	930f      	str	r3, [sp, #60]	; 0x3c
 8003688:	9314      	str	r3, [sp, #80]	; 0x50
 800368a:	9311      	str	r3, [sp, #68]	; 0x44
 800368c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800368e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003692:	454b      	cmp	r3, r9
 8003694:	bfb8      	it	lt
 8003696:	464b      	movlt	r3, r9
 8003698:	9304      	str	r3, [sp, #16]
 800369a:	b112      	cbz	r2, 80036a2 <_vfprintf_r+0x322>
 800369c:	9b04      	ldr	r3, [sp, #16]
 800369e:	3301      	adds	r3, #1
 80036a0:	9304      	str	r3, [sp, #16]
 80036a2:	f018 0302 	ands.w	r3, r8, #2
 80036a6:	930b      	str	r3, [sp, #44]	; 0x2c
 80036a8:	d002      	beq.n	80036b0 <_vfprintf_r+0x330>
 80036aa:	9b04      	ldr	r3, [sp, #16]
 80036ac:	3302      	adds	r3, #2
 80036ae:	9304      	str	r3, [sp, #16]
 80036b0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80036b4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036b6:	930e      	str	r3, [sp, #56]	; 0x38
 80036b8:	d13f      	bne.n	800373a <_vfprintf_r+0x3ba>
 80036ba:	9b06      	ldr	r3, [sp, #24]
 80036bc:	9904      	ldr	r1, [sp, #16]
 80036be:	1a5d      	subs	r5, r3, r1
 80036c0:	2d00      	cmp	r5, #0
 80036c2:	dd3a      	ble.n	800373a <_vfprintf_r+0x3ba>
 80036c4:	2d10      	cmp	r5, #16
 80036c6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036c8:	dd29      	ble.n	800371e <_vfprintf_r+0x39e>
 80036ca:	4659      	mov	r1, fp
 80036cc:	4620      	mov	r0, r4
 80036ce:	9620      	str	r6, [sp, #128]	; 0x80
 80036d0:	2310      	movs	r3, #16
 80036d2:	9c03      	ldr	r4, [sp, #12]
 80036d4:	9e07      	ldr	r6, [sp, #28]
 80036d6:	46bb      	mov	fp, r7
 80036d8:	e004      	b.n	80036e4 <_vfprintf_r+0x364>
 80036da:	3d10      	subs	r5, #16
 80036dc:	2d10      	cmp	r5, #16
 80036de:	f101 0108 	add.w	r1, r1, #8
 80036e2:	dd18      	ble.n	8003716 <_vfprintf_r+0x396>
 80036e4:	3201      	adds	r2, #1
 80036e6:	4fba      	ldr	r7, [pc, #744]	; (80039d0 <_vfprintf_r+0x650>)
 80036e8:	3010      	adds	r0, #16
 80036ea:	2a07      	cmp	r2, #7
 80036ec:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80036f0:	e9c1 7300 	strd	r7, r3, [r1]
 80036f4:	ddf1      	ble.n	80036da <_vfprintf_r+0x35a>
 80036f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80036f8:	4631      	mov	r1, r6
 80036fa:	4620      	mov	r0, r4
 80036fc:	930c      	str	r3, [sp, #48]	; 0x30
 80036fe:	f004 f96d 	bl	80079dc <__sprint_r>
 8003702:	2800      	cmp	r0, #0
 8003704:	f040 843d 	bne.w	8003f82 <_vfprintf_r+0xc02>
 8003708:	3d10      	subs	r5, #16
 800370a:	2d10      	cmp	r5, #16
 800370c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003710:	a92d      	add	r1, sp, #180	; 0xb4
 8003712:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8003714:	dce6      	bgt.n	80036e4 <_vfprintf_r+0x364>
 8003716:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8003718:	465f      	mov	r7, fp
 800371a:	4604      	mov	r4, r0
 800371c:	468b      	mov	fp, r1
 800371e:	3201      	adds	r2, #1
 8003720:	4bab      	ldr	r3, [pc, #684]	; (80039d0 <_vfprintf_r+0x650>)
 8003722:	442c      	add	r4, r5
 8003724:	2a07      	cmp	r2, #7
 8003726:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800372a:	e9cb 3500 	strd	r3, r5, [fp]
 800372e:	f300 84ff 	bgt.w	8004130 <_vfprintf_r+0xdb0>
 8003732:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003736:	f10b 0b08 	add.w	fp, fp, #8
 800373a:	b172      	cbz	r2, 800375a <_vfprintf_r+0x3da>
 800373c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800373e:	3201      	adds	r2, #1
 8003740:	3401      	adds	r4, #1
 8003742:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8003746:	2101      	movs	r1, #1
 8003748:	2a07      	cmp	r2, #7
 800374a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800374e:	e9cb 0100 	strd	r0, r1, [fp]
 8003752:	f300 8418 	bgt.w	8003f86 <_vfprintf_r+0xc06>
 8003756:	f10b 0b08 	add.w	fp, fp, #8
 800375a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800375c:	b16b      	cbz	r3, 800377a <_vfprintf_r+0x3fa>
 800375e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003760:	3301      	adds	r3, #1
 8003762:	3402      	adds	r4, #2
 8003764:	a923      	add	r1, sp, #140	; 0x8c
 8003766:	2202      	movs	r2, #2
 8003768:	2b07      	cmp	r3, #7
 800376a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800376e:	e9cb 1200 	strd	r1, r2, [fp]
 8003772:	f300 8415 	bgt.w	8003fa0 <_vfprintf_r+0xc20>
 8003776:	f10b 0b08 	add.w	fp, fp, #8
 800377a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800377c:	2b80      	cmp	r3, #128	; 0x80
 800377e:	f000 8331 	beq.w	8003de4 <_vfprintf_r+0xa64>
 8003782:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003784:	eba9 0503 	sub.w	r5, r9, r3
 8003788:	2d00      	cmp	r5, #0
 800378a:	dd37      	ble.n	80037fc <_vfprintf_r+0x47c>
 800378c:	2d10      	cmp	r5, #16
 800378e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003790:	4b90      	ldr	r3, [pc, #576]	; (80039d4 <_vfprintf_r+0x654>)
 8003792:	dd28      	ble.n	80037e6 <_vfprintf_r+0x466>
 8003794:	4659      	mov	r1, fp
 8003796:	4620      	mov	r0, r4
 8003798:	46bb      	mov	fp, r7
 800379a:	f04f 0910 	mov.w	r9, #16
 800379e:	4637      	mov	r7, r6
 80037a0:	461c      	mov	r4, r3
 80037a2:	9e07      	ldr	r6, [sp, #28]
 80037a4:	e004      	b.n	80037b0 <_vfprintf_r+0x430>
 80037a6:	3d10      	subs	r5, #16
 80037a8:	2d10      	cmp	r5, #16
 80037aa:	f101 0108 	add.w	r1, r1, #8
 80037ae:	dd15      	ble.n	80037dc <_vfprintf_r+0x45c>
 80037b0:	3201      	adds	r2, #1
 80037b2:	3010      	adds	r0, #16
 80037b4:	2a07      	cmp	r2, #7
 80037b6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80037ba:	e9c1 4900 	strd	r4, r9, [r1]
 80037be:	ddf2      	ble.n	80037a6 <_vfprintf_r+0x426>
 80037c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80037c2:	4631      	mov	r1, r6
 80037c4:	9803      	ldr	r0, [sp, #12]
 80037c6:	f004 f909 	bl	80079dc <__sprint_r>
 80037ca:	2800      	cmp	r0, #0
 80037cc:	f040 83d9 	bne.w	8003f82 <_vfprintf_r+0xc02>
 80037d0:	3d10      	subs	r5, #16
 80037d2:	2d10      	cmp	r5, #16
 80037d4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80037d8:	a92d      	add	r1, sp, #180	; 0xb4
 80037da:	dce9      	bgt.n	80037b0 <_vfprintf_r+0x430>
 80037dc:	463e      	mov	r6, r7
 80037de:	4623      	mov	r3, r4
 80037e0:	465f      	mov	r7, fp
 80037e2:	4604      	mov	r4, r0
 80037e4:	468b      	mov	fp, r1
 80037e6:	3201      	adds	r2, #1
 80037e8:	442c      	add	r4, r5
 80037ea:	2a07      	cmp	r2, #7
 80037ec:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80037f0:	e9cb 3500 	strd	r3, r5, [fp]
 80037f4:	f300 83ef 	bgt.w	8003fd6 <_vfprintf_r+0xc56>
 80037f8:	f10b 0b08 	add.w	fp, fp, #8
 80037fc:	f418 7f80 	tst.w	r8, #256	; 0x100
 8003800:	f040 8280 	bne.w	8003d04 <_vfprintf_r+0x984>
 8003804:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003806:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003808:	f8cb 7000 	str.w	r7, [fp]
 800380c:	3301      	adds	r3, #1
 800380e:	4414      	add	r4, r2
 8003810:	2b07      	cmp	r3, #7
 8003812:	942c      	str	r4, [sp, #176]	; 0xb0
 8003814:	f8cb 2004 	str.w	r2, [fp, #4]
 8003818:	932b      	str	r3, [sp, #172]	; 0xac
 800381a:	f300 8392 	bgt.w	8003f42 <_vfprintf_r+0xbc2>
 800381e:	f10b 0b08 	add.w	fp, fp, #8
 8003822:	f018 0f04 	tst.w	r8, #4
 8003826:	d03b      	beq.n	80038a0 <_vfprintf_r+0x520>
 8003828:	9b06      	ldr	r3, [sp, #24]
 800382a:	9a04      	ldr	r2, [sp, #16]
 800382c:	1a9d      	subs	r5, r3, r2
 800382e:	2d00      	cmp	r5, #0
 8003830:	dd36      	ble.n	80038a0 <_vfprintf_r+0x520>
 8003832:	2d10      	cmp	r5, #16
 8003834:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003836:	dd21      	ble.n	800387c <_vfprintf_r+0x4fc>
 8003838:	2610      	movs	r6, #16
 800383a:	9f03      	ldr	r7, [sp, #12]
 800383c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8003840:	e004      	b.n	800384c <_vfprintf_r+0x4cc>
 8003842:	3d10      	subs	r5, #16
 8003844:	2d10      	cmp	r5, #16
 8003846:	f10b 0b08 	add.w	fp, fp, #8
 800384a:	dd17      	ble.n	800387c <_vfprintf_r+0x4fc>
 800384c:	3301      	adds	r3, #1
 800384e:	4a60      	ldr	r2, [pc, #384]	; (80039d0 <_vfprintf_r+0x650>)
 8003850:	3410      	adds	r4, #16
 8003852:	2b07      	cmp	r3, #7
 8003854:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003858:	e9cb 2600 	strd	r2, r6, [fp]
 800385c:	ddf1      	ble.n	8003842 <_vfprintf_r+0x4c2>
 800385e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003860:	4641      	mov	r1, r8
 8003862:	4638      	mov	r0, r7
 8003864:	f004 f8ba 	bl	80079dc <__sprint_r>
 8003868:	2800      	cmp	r0, #0
 800386a:	f040 856c 	bne.w	8004346 <_vfprintf_r+0xfc6>
 800386e:	3d10      	subs	r5, #16
 8003870:	2d10      	cmp	r5, #16
 8003872:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003876:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800387a:	dce7      	bgt.n	800384c <_vfprintf_r+0x4cc>
 800387c:	3301      	adds	r3, #1
 800387e:	4a54      	ldr	r2, [pc, #336]	; (80039d0 <_vfprintf_r+0x650>)
 8003880:	442c      	add	r4, r5
 8003882:	2b07      	cmp	r3, #7
 8003884:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003888:	e9cb 2500 	strd	r2, r5, [fp]
 800388c:	dd08      	ble.n	80038a0 <_vfprintf_r+0x520>
 800388e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003890:	9907      	ldr	r1, [sp, #28]
 8003892:	9803      	ldr	r0, [sp, #12]
 8003894:	f004 f8a2 	bl	80079dc <__sprint_r>
 8003898:	2800      	cmp	r0, #0
 800389a:	f040 82e9 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 800389e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038a0:	9904      	ldr	r1, [sp, #16]
 80038a2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80038a6:	428a      	cmp	r2, r1
 80038a8:	bfac      	ite	ge
 80038aa:	189b      	addge	r3, r3, r2
 80038ac:	185b      	addlt	r3, r3, r1
 80038ae:	9305      	str	r3, [sp, #20]
 80038b0:	2c00      	cmp	r4, #0
 80038b2:	f040 82d5 	bne.w	8003e60 <_vfprintf_r+0xae0>
 80038b6:	2300      	movs	r3, #0
 80038b8:	932b      	str	r3, [sp, #172]	; 0xac
 80038ba:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80038bc:	b11b      	cbz	r3, 80038c6 <_vfprintf_r+0x546>
 80038be:	990a      	ldr	r1, [sp, #40]	; 0x28
 80038c0:	9803      	ldr	r0, [sp, #12]
 80038c2:	f002 fc9d 	bl	8006200 <_free_r>
 80038c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038ca:	4657      	mov	r7, sl
 80038cc:	783b      	ldrb	r3, [r7, #0]
 80038ce:	2b00      	cmp	r3, #0
 80038d0:	f47f ada7 	bne.w	8003422 <_vfprintf_r+0xa2>
 80038d4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80038d6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80038da:	2b00      	cmp	r3, #0
 80038dc:	f041 80e7 	bne.w	8004aae <_vfprintf_r+0x172e>
 80038e0:	2300      	movs	r3, #0
 80038e2:	932b      	str	r3, [sp, #172]	; 0xac
 80038e4:	e2cb      	b.n	8003e7e <_vfprintf_r+0xafe>
 80038e6:	4643      	mov	r3, r8
 80038e8:	069a      	lsls	r2, r3, #26
 80038ea:	f140 814e 	bpl.w	8003b8a <_vfprintf_r+0x80a>
 80038ee:	9c08      	ldr	r4, [sp, #32]
 80038f0:	3407      	adds	r4, #7
 80038f2:	f024 0207 	bic.w	r2, r4, #7
 80038f6:	f102 0108 	add.w	r1, r2, #8
 80038fa:	e9d2 4500 	ldrd	r4, r5, [r2]
 80038fe:	9108      	str	r1, [sp, #32]
 8003900:	2201      	movs	r2, #1
 8003902:	2100      	movs	r1, #0
 8003904:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8003908:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800390c:	a956      	add	r1, sp, #344	; 0x158
 800390e:	9104      	str	r1, [sp, #16]
 8003910:	f47f aea2 	bne.w	8003658 <_vfprintf_r+0x2d8>
 8003914:	4698      	mov	r8, r3
 8003916:	2a01      	cmp	r2, #1
 8003918:	f000 8350 	beq.w	8003fbc <_vfprintf_r+0xc3c>
 800391c:	2a02      	cmp	r2, #2
 800391e:	f000 831b 	beq.w	8003f58 <_vfprintf_r+0xbd8>
 8003922:	a956      	add	r1, sp, #344	; 0x158
 8003924:	e000      	b.n	8003928 <_vfprintf_r+0x5a8>
 8003926:	4639      	mov	r1, r7
 8003928:	08e2      	lsrs	r2, r4, #3
 800392a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800392e:	08e8      	lsrs	r0, r5, #3
 8003930:	f004 0307 	and.w	r3, r4, #7
 8003934:	4605      	mov	r5, r0
 8003936:	4614      	mov	r4, r2
 8003938:	3330      	adds	r3, #48	; 0x30
 800393a:	ea54 0205 	orrs.w	r2, r4, r5
 800393e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8003942:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8003946:	d1ee      	bne.n	8003926 <_vfprintf_r+0x5a6>
 8003948:	f018 0f01 	tst.w	r8, #1
 800394c:	f000 8314 	beq.w	8003f78 <_vfprintf_r+0xbf8>
 8003950:	2b30      	cmp	r3, #48	; 0x30
 8003952:	f000 8311 	beq.w	8003f78 <_vfprintf_r+0xbf8>
 8003956:	9a04      	ldr	r2, [sp, #16]
 8003958:	3902      	subs	r1, #2
 800395a:	2330      	movs	r3, #48	; 0x30
 800395c:	1a52      	subs	r2, r2, r1
 800395e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8003962:	9209      	str	r2, [sp, #36]	; 0x24
 8003964:	460f      	mov	r7, r1
 8003966:	e68c      	b.n	8003682 <_vfprintf_r+0x302>
 8003968:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800396c:	2200      	movs	r2, #0
 800396e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003972:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8003976:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800397a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800397e:	2b09      	cmp	r3, #9
 8003980:	d9f5      	bls.n	800396e <_vfprintf_r+0x5ee>
 8003982:	9206      	str	r2, [sp, #24]
 8003984:	e57c      	b.n	8003480 <_vfprintf_r+0x100>
 8003986:	4b14      	ldr	r3, [pc, #80]	; (80039d8 <_vfprintf_r+0x658>)
 8003988:	9317      	str	r3, [sp, #92]	; 0x5c
 800398a:	f018 0f20 	tst.w	r8, #32
 800398e:	f000 8114 	beq.w	8003bba <_vfprintf_r+0x83a>
 8003992:	9c08      	ldr	r4, [sp, #32]
 8003994:	3407      	adds	r4, #7
 8003996:	f024 0307 	bic.w	r3, r4, #7
 800399a:	e9d3 4500 	ldrd	r4, r5, [r3]
 800399e:	f103 0208 	add.w	r2, r3, #8
 80039a2:	9208      	str	r2, [sp, #32]
 80039a4:	f018 0f01 	tst.w	r8, #1
 80039a8:	d009      	beq.n	80039be <_vfprintf_r+0x63e>
 80039aa:	ea54 0305 	orrs.w	r3, r4, r5
 80039ae:	d006      	beq.n	80039be <_vfprintf_r+0x63e>
 80039b0:	2330      	movs	r3, #48	; 0x30
 80039b2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80039b6:	f048 0802 	orr.w	r8, r8, #2
 80039ba:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80039be:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80039c2:	2202      	movs	r2, #2
 80039c4:	e79d      	b.n	8003902 <_vfprintf_r+0x582>
 80039c6:	f048 0801 	orr.w	r8, r8, #1
 80039ca:	f89a 6000 	ldrb.w	r6, [sl]
 80039ce:	e555      	b.n	800347c <_vfprintf_r+0xfc>
 80039d0:	08008cc0 	.word	0x08008cc0
 80039d4:	08008cd0 	.word	0x08008cd0
 80039d8:	08008c8c 	.word	0x08008c8c
 80039dc:	9e03      	ldr	r6, [sp, #12]
 80039de:	4630      	mov	r0, r6
 80039e0:	f002 feaa 	bl	8006738 <_localeconv_r>
 80039e4:	6843      	ldr	r3, [r0, #4]
 80039e6:	9318      	str	r3, [sp, #96]	; 0x60
 80039e8:	4618      	mov	r0, r3
 80039ea:	f7fc fe29 	bl	8000640 <strlen>
 80039ee:	901b      	str	r0, [sp, #108]	; 0x6c
 80039f0:	4604      	mov	r4, r0
 80039f2:	4630      	mov	r0, r6
 80039f4:	f002 fea0 	bl	8006738 <_localeconv_r>
 80039f8:	6883      	ldr	r3, [r0, #8]
 80039fa:	931a      	str	r3, [sp, #104]	; 0x68
 80039fc:	2c00      	cmp	r4, #0
 80039fe:	f43f adb8 	beq.w	8003572 <_vfprintf_r+0x1f2>
 8003a02:	f89a 6000 	ldrb.w	r6, [sl]
 8003a06:	2b00      	cmp	r3, #0
 8003a08:	f43f ad38 	beq.w	800347c <_vfprintf_r+0xfc>
 8003a0c:	781b      	ldrb	r3, [r3, #0]
 8003a0e:	2b00      	cmp	r3, #0
 8003a10:	f43f ad34 	beq.w	800347c <_vfprintf_r+0xfc>
 8003a14:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8003a18:	e530      	b.n	800347c <_vfprintf_r+0xfc>
 8003a1a:	9b08      	ldr	r3, [sp, #32]
 8003a1c:	f89a 6000 	ldrb.w	r6, [sl]
 8003a20:	681a      	ldr	r2, [r3, #0]
 8003a22:	9206      	str	r2, [sp, #24]
 8003a24:	2a00      	cmp	r2, #0
 8003a26:	f103 0304 	add.w	r3, r3, #4
 8003a2a:	f2c0 8697 	blt.w	800475c <_vfprintf_r+0x13dc>
 8003a2e:	9308      	str	r3, [sp, #32]
 8003a30:	e524      	b.n	800347c <_vfprintf_r+0xfc>
 8003a32:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003a36:	f89a 6000 	ldrb.w	r6, [sl]
 8003a3a:	e51f      	b.n	800347c <_vfprintf_r+0xfc>
 8003a3c:	f89a 6000 	ldrb.w	r6, [sl]
 8003a40:	f048 0804 	orr.w	r8, r8, #4
 8003a44:	e51a      	b.n	800347c <_vfprintf_r+0xfc>
 8003a46:	f89a 6000 	ldrb.w	r6, [sl]
 8003a4a:	2e2a      	cmp	r6, #42	; 0x2a
 8003a4c:	f10a 0201 	add.w	r2, sl, #1
 8003a50:	f001 81b0 	beq.w	8004db4 <_vfprintf_r+0x1a34>
 8003a54:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003a58:	2b09      	cmp	r3, #9
 8003a5a:	4692      	mov	sl, r2
 8003a5c:	f04f 0900 	mov.w	r9, #0
 8003a60:	f63f ad0e 	bhi.w	8003480 <_vfprintf_r+0x100>
 8003a64:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003a68:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8003a6c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003a70:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003a74:	2b09      	cmp	r3, #9
 8003a76:	d9f5      	bls.n	8003a64 <_vfprintf_r+0x6e4>
 8003a78:	e502      	b.n	8003480 <_vfprintf_r+0x100>
 8003a7a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003a7e:	f89a 6000 	ldrb.w	r6, [sl]
 8003a82:	e4fb      	b.n	800347c <_vfprintf_r+0xfc>
 8003a84:	9c08      	ldr	r4, [sp, #32]
 8003a86:	3407      	adds	r4, #7
 8003a88:	f024 0407 	bic.w	r4, r4, #7
 8003a8c:	ed94 7b00 	vldr	d7, [r4]
 8003a90:	ec52 1b17 	vmov	r1, r2, d7
 8003a94:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003a98:	931d      	str	r3, [sp, #116]	; 0x74
 8003a9a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003a9e:	3408      	adds	r4, #8
 8003aa0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8003aa4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003aa8:	4bba      	ldr	r3, [pc, #744]	; (8003d94 <_vfprintf_r+0xa14>)
 8003aaa:	9408      	str	r4, [sp, #32]
 8003aac:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003ab0:	f7fd fadc 	bl	800106c <__aeabi_dcmpun>
 8003ab4:	2800      	cmp	r0, #0
 8003ab6:	f040 846f 	bne.w	8004398 <_vfprintf_r+0x1018>
 8003aba:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003abe:	4bb5      	ldr	r3, [pc, #724]	; (8003d94 <_vfprintf_r+0xa14>)
 8003ac0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8003ac4:	f7fd fab4 	bl	8001030 <__aeabi_dcmple>
 8003ac8:	2800      	cmp	r0, #0
 8003aca:	f040 8465 	bne.w	8004398 <_vfprintf_r+0x1018>
 8003ace:	2200      	movs	r2, #0
 8003ad0:	2300      	movs	r3, #0
 8003ad2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003ad6:	f7fd faa1 	bl	800101c <__aeabi_dcmplt>
 8003ada:	2800      	cmp	r0, #0
 8003adc:	f040 855b 	bne.w	8004596 <_vfprintf_r+0x1216>
 8003ae0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003ae4:	4fac      	ldr	r7, [pc, #688]	; (8003d98 <_vfprintf_r+0xa18>)
 8003ae6:	4bad      	ldr	r3, [pc, #692]	; (8003d9c <_vfprintf_r+0xa1c>)
 8003ae8:	2000      	movs	r0, #0
 8003aea:	2103      	movs	r1, #3
 8003aec:	9104      	str	r1, [sp, #16]
 8003aee:	900a      	str	r0, [sp, #40]	; 0x28
 8003af0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8003af4:	2e47      	cmp	r6, #71	; 0x47
 8003af6:	bfd8      	it	le
 8003af8:	461f      	movle	r7, r3
 8003afa:	9109      	str	r1, [sp, #36]	; 0x24
 8003afc:	4681      	mov	r9, r0
 8003afe:	900f      	str	r0, [sp, #60]	; 0x3c
 8003b00:	9014      	str	r0, [sp, #80]	; 0x50
 8003b02:	9011      	str	r0, [sp, #68]	; 0x44
 8003b04:	e5c9      	b.n	800369a <_vfprintf_r+0x31a>
 8003b06:	9808      	ldr	r0, [sp, #32]
 8003b08:	2300      	movs	r3, #0
 8003b0a:	6801      	ldr	r1, [r0, #0]
 8003b0c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003b10:	461a      	mov	r2, r3
 8003b12:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8003b16:	2301      	movs	r3, #1
 8003b18:	1d01      	adds	r1, r0, #4
 8003b1a:	9304      	str	r3, [sp, #16]
 8003b1c:	920a      	str	r2, [sp, #40]	; 0x28
 8003b1e:	4691      	mov	r9, r2
 8003b20:	920f      	str	r2, [sp, #60]	; 0x3c
 8003b22:	9214      	str	r2, [sp, #80]	; 0x50
 8003b24:	9211      	str	r2, [sp, #68]	; 0x44
 8003b26:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8003b2a:	af3d      	add	r7, sp, #244	; 0xf4
 8003b2c:	e5b9      	b.n	80036a2 <_vfprintf_r+0x322>
 8003b2e:	9b08      	ldr	r3, [sp, #32]
 8003b30:	681f      	ldr	r7, [r3, #0]
 8003b32:	2500      	movs	r5, #0
 8003b34:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003b38:	1d1c      	adds	r4, r3, #4
 8003b3a:	2f00      	cmp	r7, #0
 8003b3c:	f000 8639 	beq.w	80047b2 <_vfprintf_r+0x1432>
 8003b40:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003b44:	f000 8711 	beq.w	800496a <_vfprintf_r+0x15ea>
 8003b48:	464a      	mov	r2, r9
 8003b4a:	4629      	mov	r1, r5
 8003b4c:	4638      	mov	r0, r7
 8003b4e:	f7fc fde7 	bl	8000720 <memchr>
 8003b52:	900a      	str	r0, [sp, #40]	; 0x28
 8003b54:	2800      	cmp	r0, #0
 8003b56:	f000 85e7 	beq.w	8004728 <_vfprintf_r+0x13a8>
 8003b5a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003b5c:	1bdb      	subs	r3, r3, r7
 8003b5e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b60:	46a9      	mov	r9, r5
 8003b62:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b66:	9408      	str	r4, [sp, #32]
 8003b68:	9304      	str	r3, [sp, #16]
 8003b6a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003b6e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8003b72:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003b76:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003b7a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003b7e:	e58c      	b.n	800369a <_vfprintf_r+0x31a>
 8003b80:	f048 0310 	orr.w	r3, r8, #16
 8003b84:	069a      	lsls	r2, r3, #26
 8003b86:	f53f aeb2 	bmi.w	80038ee <_vfprintf_r+0x56e>
 8003b8a:	9a08      	ldr	r2, [sp, #32]
 8003b8c:	06df      	lsls	r7, r3, #27
 8003b8e:	f102 0104 	add.w	r1, r2, #4
 8003b92:	f100 837e 	bmi.w	8004292 <_vfprintf_r+0xf12>
 8003b96:	065d      	lsls	r5, r3, #25
 8003b98:	9a08      	ldr	r2, [sp, #32]
 8003b9a:	f100 84e4 	bmi.w	8004566 <_vfprintf_r+0x11e6>
 8003b9e:	059c      	lsls	r4, r3, #22
 8003ba0:	f140 8377 	bpl.w	8004292 <_vfprintf_r+0xf12>
 8003ba4:	7814      	ldrb	r4, [r2, #0]
 8003ba6:	9108      	str	r1, [sp, #32]
 8003ba8:	2500      	movs	r5, #0
 8003baa:	2201      	movs	r2, #1
 8003bac:	e6a9      	b.n	8003902 <_vfprintf_r+0x582>
 8003bae:	4b7c      	ldr	r3, [pc, #496]	; (8003da0 <_vfprintf_r+0xa20>)
 8003bb0:	9317      	str	r3, [sp, #92]	; 0x5c
 8003bb2:	f018 0f20 	tst.w	r8, #32
 8003bb6:	f47f aeec 	bne.w	8003992 <_vfprintf_r+0x612>
 8003bba:	9a08      	ldr	r2, [sp, #32]
 8003bbc:	f018 0f10 	tst.w	r8, #16
 8003bc0:	f102 0304 	add.w	r3, r2, #4
 8003bc4:	f040 8354 	bne.w	8004270 <_vfprintf_r+0xef0>
 8003bc8:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003bcc:	9a08      	ldr	r2, [sp, #32]
 8003bce:	f040 84d0 	bne.w	8004572 <_vfprintf_r+0x11f2>
 8003bd2:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003bd6:	f000 834b 	beq.w	8004270 <_vfprintf_r+0xef0>
 8003bda:	7814      	ldrb	r4, [r2, #0]
 8003bdc:	9308      	str	r3, [sp, #32]
 8003bde:	2500      	movs	r5, #0
 8003be0:	e6e0      	b.n	80039a4 <_vfprintf_r+0x624>
 8003be2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8003be6:	f89a 6000 	ldrb.w	r6, [sl]
 8003bea:	2b00      	cmp	r3, #0
 8003bec:	f47f ac46 	bne.w	800347c <_vfprintf_r+0xfc>
 8003bf0:	2320      	movs	r3, #32
 8003bf2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003bf6:	e441      	b.n	800347c <_vfprintf_r+0xfc>
 8003bf8:	f89a 6000 	ldrb.w	r6, [sl]
 8003bfc:	2e6c      	cmp	r6, #108	; 0x6c
 8003bfe:	bf03      	ittte	eq
 8003c00:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003c04:	f048 0820 	orreq.w	r8, r8, #32
 8003c08:	f10a 0a01 	addeq.w	sl, sl, #1
 8003c0c:	f048 0810 	orrne.w	r8, r8, #16
 8003c10:	e434      	b.n	800347c <_vfprintf_r+0xfc>
 8003c12:	9a08      	ldr	r2, [sp, #32]
 8003c14:	f018 0f20 	tst.w	r8, #32
 8003c18:	f852 3b04 	ldr.w	r3, [r2], #4
 8003c1c:	9208      	str	r2, [sp, #32]
 8003c1e:	f000 83a1 	beq.w	8004364 <_vfprintf_r+0xfe4>
 8003c22:	9a05      	ldr	r2, [sp, #20]
 8003c24:	4610      	mov	r0, r2
 8003c26:	17d1      	asrs	r1, r2, #31
 8003c28:	e9c3 0100 	strd	r0, r1, [r3]
 8003c2c:	4657      	mov	r7, sl
 8003c2e:	e64d      	b.n	80038cc <_vfprintf_r+0x54c>
 8003c30:	f89a 6000 	ldrb.w	r6, [sl]
 8003c34:	2e68      	cmp	r6, #104	; 0x68
 8003c36:	bf03      	ittte	eq
 8003c38:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003c3c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003c40:	f10a 0a01 	addeq.w	sl, sl, #1
 8003c44:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003c48:	e418      	b.n	800347c <_vfprintf_r+0xfc>
 8003c4a:	9908      	ldr	r1, [sp, #32]
 8003c4c:	4b55      	ldr	r3, [pc, #340]	; (8003da4 <_vfprintf_r+0xa24>)
 8003c4e:	680c      	ldr	r4, [r1, #0]
 8003c50:	9317      	str	r3, [sp, #92]	; 0x5c
 8003c52:	f647 0230 	movw	r2, #30768	; 0x7830
 8003c56:	3104      	adds	r1, #4
 8003c58:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003c5c:	f048 0302 	orr.w	r3, r8, #2
 8003c60:	9108      	str	r1, [sp, #32]
 8003c62:	2500      	movs	r5, #0
 8003c64:	2202      	movs	r2, #2
 8003c66:	2678      	movs	r6, #120	; 0x78
 8003c68:	e64b      	b.n	8003902 <_vfprintf_r+0x582>
 8003c6a:	f048 0808 	orr.w	r8, r8, #8
 8003c6e:	f89a 6000 	ldrb.w	r6, [sl]
 8003c72:	e403      	b.n	800347c <_vfprintf_r+0xfc>
 8003c74:	f048 0310 	orr.w	r3, r8, #16
 8003c78:	069f      	lsls	r7, r3, #26
 8003c7a:	f53f acd1 	bmi.w	8003620 <_vfprintf_r+0x2a0>
 8003c7e:	9908      	ldr	r1, [sp, #32]
 8003c80:	06dd      	lsls	r5, r3, #27
 8003c82:	f101 0204 	add.w	r2, r1, #4
 8003c86:	f100 82fd 	bmi.w	8004284 <_vfprintf_r+0xf04>
 8003c8a:	065c      	lsls	r4, r3, #25
 8003c8c:	9908      	ldr	r1, [sp, #32]
 8003c8e:	f100 8475 	bmi.w	800457c <_vfprintf_r+0x11fc>
 8003c92:	0598      	lsls	r0, r3, #22
 8003c94:	f140 82f6 	bpl.w	8004284 <_vfprintf_r+0xf04>
 8003c98:	f991 4000 	ldrsb.w	r4, [r1]
 8003c9c:	9208      	str	r2, [sp, #32]
 8003c9e:	17e5      	asrs	r5, r4, #31
 8003ca0:	4620      	mov	r0, r4
 8003ca2:	4629      	mov	r1, r5
 8003ca4:	e4c7      	b.n	8003636 <_vfprintf_r+0x2b6>
 8003ca6:	9a08      	ldr	r2, [sp, #32]
 8003ca8:	f018 0f10 	tst.w	r8, #16
 8003cac:	f102 0304 	add.w	r3, r2, #4
 8003cb0:	f040 82e3 	bne.w	800427a <_vfprintf_r+0xefa>
 8003cb4:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003cb8:	9a08      	ldr	r2, [sp, #32]
 8003cba:	f040 8467 	bne.w	800458c <_vfprintf_r+0x120c>
 8003cbe:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003cc2:	f000 82da 	beq.w	800427a <_vfprintf_r+0xefa>
 8003cc6:	7814      	ldrb	r4, [r2, #0]
 8003cc8:	9308      	str	r3, [sp, #32]
 8003cca:	2500      	movs	r5, #0
 8003ccc:	e488      	b.n	80035e0 <_vfprintf_r+0x260>
 8003cce:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003cd2:	f002 fd45 	bl	8006760 <__retarget_lock_release_recursive>
 8003cd6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003cda:	9305      	str	r3, [sp, #20]
 8003cdc:	e443      	b.n	8003566 <_vfprintf_r+0x1e6>
 8003cde:	2e00      	cmp	r6, #0
 8003ce0:	f43f adf8 	beq.w	80038d4 <_vfprintf_r+0x554>
 8003ce4:	2300      	movs	r3, #0
 8003ce6:	2101      	movs	r1, #1
 8003ce8:	461a      	mov	r2, r3
 8003cea:	9104      	str	r1, [sp, #16]
 8003cec:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003cf0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003cf4:	930a      	str	r3, [sp, #40]	; 0x28
 8003cf6:	4699      	mov	r9, r3
 8003cf8:	930f      	str	r3, [sp, #60]	; 0x3c
 8003cfa:	9314      	str	r3, [sp, #80]	; 0x50
 8003cfc:	9311      	str	r3, [sp, #68]	; 0x44
 8003cfe:	9109      	str	r1, [sp, #36]	; 0x24
 8003d00:	af3d      	add	r7, sp, #244	; 0xf4
 8003d02:	e4ce      	b.n	80036a2 <_vfprintf_r+0x322>
 8003d04:	2e65      	cmp	r6, #101	; 0x65
 8003d06:	f340 80ca 	ble.w	8003e9e <_vfprintf_r+0xb1e>
 8003d0a:	2200      	movs	r2, #0
 8003d0c:	2300      	movs	r3, #0
 8003d0e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003d12:	f7fd f979 	bl	8001008 <__aeabi_dcmpeq>
 8003d16:	2800      	cmp	r0, #0
 8003d18:	f000 8169 	beq.w	8003fee <_vfprintf_r+0xc6e>
 8003d1c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003d1e:	4a22      	ldr	r2, [pc, #136]	; (8003da8 <_vfprintf_r+0xa28>)
 8003d20:	f8cb 2000 	str.w	r2, [fp]
 8003d24:	3301      	adds	r3, #1
 8003d26:	3401      	adds	r4, #1
 8003d28:	2201      	movs	r2, #1
 8003d2a:	2b07      	cmp	r3, #7
 8003d2c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003d30:	f8cb 2004 	str.w	r2, [fp, #4]
 8003d34:	f300 8406 	bgt.w	8004544 <_vfprintf_r+0x11c4>
 8003d38:	f10b 0b08 	add.w	fp, fp, #8
 8003d3c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003d3e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003d40:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d42:	4293      	cmp	r3, r2
 8003d44:	db03      	blt.n	8003d4e <_vfprintf_r+0x9ce>
 8003d46:	f018 0f01 	tst.w	r8, #1
 8003d4a:	f43f ad6a 	beq.w	8003822 <_vfprintf_r+0x4a2>
 8003d4e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003d50:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003d52:	f8cb 2000 	str.w	r2, [fp]
 8003d56:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d58:	f8cb 2004 	str.w	r2, [fp, #4]
 8003d5c:	3301      	adds	r3, #1
 8003d5e:	4414      	add	r4, r2
 8003d60:	2b07      	cmp	r3, #7
 8003d62:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003d66:	f300 8517 	bgt.w	8004798 <_vfprintf_r+0x1418>
 8003d6a:	f10b 0b08 	add.w	fp, fp, #8
 8003d6e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d70:	1e5d      	subs	r5, r3, #1
 8003d72:	2d00      	cmp	r5, #0
 8003d74:	f77f ad55 	ble.w	8003822 <_vfprintf_r+0x4a2>
 8003d78:	2d10      	cmp	r5, #16
 8003d7a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003d7c:	4b0b      	ldr	r3, [pc, #44]	; (8003dac <_vfprintf_r+0xa2c>)
 8003d7e:	f340 82e7 	ble.w	8004350 <_vfprintf_r+0xfd0>
 8003d82:	4619      	mov	r1, r3
 8003d84:	2610      	movs	r6, #16
 8003d86:	4623      	mov	r3, r4
 8003d88:	9f03      	ldr	r7, [sp, #12]
 8003d8a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d8e:	460c      	mov	r4, r1
 8003d90:	e014      	b.n	8003dbc <_vfprintf_r+0xa3c>
 8003d92:	bf00      	nop
 8003d94:	7fefffff 	.word	0x7fefffff
 8003d98:	08008c80 	.word	0x08008c80
 8003d9c:	08008c7c 	.word	0x08008c7c
 8003da0:	08008ca0 	.word	0x08008ca0
 8003da4:	08008c8c 	.word	0x08008c8c
 8003da8:	08008cbc 	.word	0x08008cbc
 8003dac:	08008cd0 	.word	0x08008cd0
 8003db0:	f10b 0b08 	add.w	fp, fp, #8
 8003db4:	3d10      	subs	r5, #16
 8003db6:	2d10      	cmp	r5, #16
 8003db8:	f340 82c7 	ble.w	800434a <_vfprintf_r+0xfca>
 8003dbc:	3201      	adds	r2, #1
 8003dbe:	3310      	adds	r3, #16
 8003dc0:	2a07      	cmp	r2, #7
 8003dc2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003dc6:	e9cb 4600 	strd	r4, r6, [fp]
 8003dca:	ddf1      	ble.n	8003db0 <_vfprintf_r+0xa30>
 8003dcc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dce:	4649      	mov	r1, r9
 8003dd0:	4638      	mov	r0, r7
 8003dd2:	f003 fe03 	bl	80079dc <__sprint_r>
 8003dd6:	2800      	cmp	r0, #0
 8003dd8:	d14c      	bne.n	8003e74 <_vfprintf_r+0xaf4>
 8003dda:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003dde:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003de2:	e7e7      	b.n	8003db4 <_vfprintf_r+0xa34>
 8003de4:	9b06      	ldr	r3, [sp, #24]
 8003de6:	9a04      	ldr	r2, [sp, #16]
 8003de8:	1a9d      	subs	r5, r3, r2
 8003dea:	2d00      	cmp	r5, #0
 8003dec:	f77f acc9 	ble.w	8003782 <_vfprintf_r+0x402>
 8003df0:	2d10      	cmp	r5, #16
 8003df2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003df4:	4bbc      	ldr	r3, [pc, #752]	; (80040e8 <_vfprintf_r+0xd68>)
 8003df6:	dd27      	ble.n	8003e48 <_vfprintf_r+0xac8>
 8003df8:	4659      	mov	r1, fp
 8003dfa:	4620      	mov	r0, r4
 8003dfc:	46bb      	mov	fp, r7
 8003dfe:	461c      	mov	r4, r3
 8003e00:	4637      	mov	r7, r6
 8003e02:	9e07      	ldr	r6, [sp, #28]
 8003e04:	e004      	b.n	8003e10 <_vfprintf_r+0xa90>
 8003e06:	3d10      	subs	r5, #16
 8003e08:	2d10      	cmp	r5, #16
 8003e0a:	f101 0108 	add.w	r1, r1, #8
 8003e0e:	dd16      	ble.n	8003e3e <_vfprintf_r+0xabe>
 8003e10:	3201      	adds	r2, #1
 8003e12:	3010      	adds	r0, #16
 8003e14:	2310      	movs	r3, #16
 8003e16:	2a07      	cmp	r2, #7
 8003e18:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003e1c:	600c      	str	r4, [r1, #0]
 8003e1e:	604b      	str	r3, [r1, #4]
 8003e20:	ddf1      	ble.n	8003e06 <_vfprintf_r+0xa86>
 8003e22:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e24:	4631      	mov	r1, r6
 8003e26:	9803      	ldr	r0, [sp, #12]
 8003e28:	f003 fdd8 	bl	80079dc <__sprint_r>
 8003e2c:	2800      	cmp	r0, #0
 8003e2e:	f040 80a8 	bne.w	8003f82 <_vfprintf_r+0xc02>
 8003e32:	3d10      	subs	r5, #16
 8003e34:	2d10      	cmp	r5, #16
 8003e36:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003e3a:	a92d      	add	r1, sp, #180	; 0xb4
 8003e3c:	dce8      	bgt.n	8003e10 <_vfprintf_r+0xa90>
 8003e3e:	463e      	mov	r6, r7
 8003e40:	4623      	mov	r3, r4
 8003e42:	465f      	mov	r7, fp
 8003e44:	4604      	mov	r4, r0
 8003e46:	468b      	mov	fp, r1
 8003e48:	3201      	adds	r2, #1
 8003e4a:	442c      	add	r4, r5
 8003e4c:	2a07      	cmp	r2, #7
 8003e4e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003e52:	e9cb 3500 	strd	r3, r5, [fp]
 8003e56:	f300 8292 	bgt.w	800437e <_vfprintf_r+0xffe>
 8003e5a:	f10b 0b08 	add.w	fp, fp, #8
 8003e5e:	e490      	b.n	8003782 <_vfprintf_r+0x402>
 8003e60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e62:	9907      	ldr	r1, [sp, #28]
 8003e64:	9803      	ldr	r0, [sp, #12]
 8003e66:	f003 fdb9 	bl	80079dc <__sprint_r>
 8003e6a:	2800      	cmp	r0, #0
 8003e6c:	f43f ad23 	beq.w	80038b6 <_vfprintf_r+0x536>
 8003e70:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e74:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003e76:	b111      	cbz	r1, 8003e7e <_vfprintf_r+0xafe>
 8003e78:	9803      	ldr	r0, [sp, #12]
 8003e7a:	f002 f9c1 	bl	8006200 <_free_r>
 8003e7e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003e82:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003e86:	07d0      	lsls	r0, r2, #31
 8003e88:	d402      	bmi.n	8003e90 <_vfprintf_r+0xb10>
 8003e8a:	0599      	lsls	r1, r3, #22
 8003e8c:	f140 81d0 	bpl.w	8004230 <_vfprintf_r+0xeb0>
 8003e90:	065a      	lsls	r2, r3, #25
 8003e92:	f53f ab65 	bmi.w	8003560 <_vfprintf_r+0x1e0>
 8003e96:	9805      	ldr	r0, [sp, #20]
 8003e98:	b057      	add	sp, #348	; 0x15c
 8003e9a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003e9e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003ea0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003ea2:	2a01      	cmp	r2, #1
 8003ea4:	f104 0401 	add.w	r4, r4, #1
 8003ea8:	f103 0501 	add.w	r5, r3, #1
 8003eac:	f10b 0608 	add.w	r6, fp, #8
 8003eb0:	f340 811c 	ble.w	80040ec <_vfprintf_r+0xd6c>
 8003eb4:	2301      	movs	r3, #1
 8003eb6:	2d07      	cmp	r5, #7
 8003eb8:	f8cb 7000 	str.w	r7, [fp]
 8003ebc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003ec0:	f8cb 3004 	str.w	r3, [fp, #4]
 8003ec4:	f300 81bb 	bgt.w	800423e <_vfprintf_r+0xebe>
 8003ec8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003eca:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003ecc:	1c69      	adds	r1, r5, #1
 8003ece:	441c      	add	r4, r3
 8003ed0:	2907      	cmp	r1, #7
 8003ed2:	910b      	str	r1, [sp, #44]	; 0x2c
 8003ed4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003ed8:	e9c6 2300 	strd	r2, r3, [r6]
 8003edc:	f300 81bb 	bgt.w	8004256 <_vfprintf_r+0xed6>
 8003ee0:	3608      	adds	r6, #8
 8003ee2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003ee4:	1c53      	adds	r3, r2, #1
 8003ee6:	461d      	mov	r5, r3
 8003ee8:	9509      	str	r5, [sp, #36]	; 0x24
 8003eea:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003eec:	930e      	str	r3, [sp, #56]	; 0x38
 8003eee:	2200      	movs	r2, #0
 8003ef0:	2300      	movs	r3, #0
 8003ef2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003ef6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003efa:	f106 0b08 	add.w	fp, r6, #8
 8003efe:	f7fd f883 	bl	8001008 <__aeabi_dcmpeq>
 8003f02:	2800      	cmp	r0, #0
 8003f04:	f040 80c2 	bne.w	800408c <_vfprintf_r+0xd0c>
 8003f08:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003f0a:	f8c6 9004 	str.w	r9, [r6, #4]
 8003f0e:	3701      	adds	r7, #1
 8003f10:	444c      	add	r4, r9
 8003f12:	2d07      	cmp	r5, #7
 8003f14:	6037      	str	r7, [r6, #0]
 8003f16:	942c      	str	r4, [sp, #176]	; 0xb0
 8003f18:	952b      	str	r5, [sp, #172]	; 0xac
 8003f1a:	f300 80f9 	bgt.w	8004110 <_vfprintf_r+0xd90>
 8003f1e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003f20:	f106 0310 	add.w	r3, r6, #16
 8003f24:	3202      	adds	r2, #2
 8003f26:	465e      	mov	r6, fp
 8003f28:	9209      	str	r2, [sp, #36]	; 0x24
 8003f2a:	469b      	mov	fp, r3
 8003f2c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003f2e:	6072      	str	r2, [r6, #4]
 8003f30:	4414      	add	r4, r2
 8003f32:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003f34:	942c      	str	r4, [sp, #176]	; 0xb0
 8003f36:	ab26      	add	r3, sp, #152	; 0x98
 8003f38:	2a07      	cmp	r2, #7
 8003f3a:	922b      	str	r2, [sp, #172]	; 0xac
 8003f3c:	6033      	str	r3, [r6, #0]
 8003f3e:	f77f ac70 	ble.w	8003822 <_vfprintf_r+0x4a2>
 8003f42:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f44:	9907      	ldr	r1, [sp, #28]
 8003f46:	9803      	ldr	r0, [sp, #12]
 8003f48:	f003 fd48 	bl	80079dc <__sprint_r>
 8003f4c:	2800      	cmp	r0, #0
 8003f4e:	d18f      	bne.n	8003e70 <_vfprintf_r+0xaf0>
 8003f50:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f52:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f56:	e464      	b.n	8003822 <_vfprintf_r+0x4a2>
 8003f58:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003f5a:	af56      	add	r7, sp, #344	; 0x158
 8003f5c:	0923      	lsrs	r3, r4, #4
 8003f5e:	f004 010f 	and.w	r1, r4, #15
 8003f62:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003f66:	092a      	lsrs	r2, r5, #4
 8003f68:	461c      	mov	r4, r3
 8003f6a:	4615      	mov	r5, r2
 8003f6c:	5c43      	ldrb	r3, [r0, r1]
 8003f6e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003f72:	ea54 0305 	orrs.w	r3, r4, r5
 8003f76:	d1f1      	bne.n	8003f5c <_vfprintf_r+0xbdc>
 8003f78:	9b04      	ldr	r3, [sp, #16]
 8003f7a:	1bdb      	subs	r3, r3, r7
 8003f7c:	9309      	str	r3, [sp, #36]	; 0x24
 8003f7e:	f7ff bb80 	b.w	8003682 <_vfprintf_r+0x302>
 8003f82:	46b1      	mov	r9, r6
 8003f84:	e776      	b.n	8003e74 <_vfprintf_r+0xaf4>
 8003f86:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f88:	9907      	ldr	r1, [sp, #28]
 8003f8a:	9803      	ldr	r0, [sp, #12]
 8003f8c:	f003 fd26 	bl	80079dc <__sprint_r>
 8003f90:	2800      	cmp	r0, #0
 8003f92:	f47f af6d 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8003f96:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f98:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f9c:	f7ff bbdd 	b.w	800375a <_vfprintf_r+0x3da>
 8003fa0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fa2:	9907      	ldr	r1, [sp, #28]
 8003fa4:	9803      	ldr	r0, [sp, #12]
 8003fa6:	f003 fd19 	bl	80079dc <__sprint_r>
 8003faa:	2800      	cmp	r0, #0
 8003fac:	f47f af60 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8003fb0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003fb2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003fb6:	f7ff bbe0 	b.w	800377a <_vfprintf_r+0x3fa>
 8003fba:	4698      	mov	r8, r3
 8003fbc:	2d00      	cmp	r5, #0
 8003fbe:	bf08      	it	eq
 8003fc0:	2c0a      	cmpeq	r4, #10
 8003fc2:	f080 8170 	bcs.w	80042a6 <_vfprintf_r+0xf26>
 8003fc6:	af56      	add	r7, sp, #344	; 0x158
 8003fc8:	3430      	adds	r4, #48	; 0x30
 8003fca:	2301      	movs	r3, #1
 8003fcc:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003fd0:	9309      	str	r3, [sp, #36]	; 0x24
 8003fd2:	f7ff bb56 	b.w	8003682 <_vfprintf_r+0x302>
 8003fd6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fd8:	9907      	ldr	r1, [sp, #28]
 8003fda:	9803      	ldr	r0, [sp, #12]
 8003fdc:	f003 fcfe 	bl	80079dc <__sprint_r>
 8003fe0:	2800      	cmp	r0, #0
 8003fe2:	f47f af45 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8003fe6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003fe8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003fec:	e406      	b.n	80037fc <_vfprintf_r+0x47c>
 8003fee:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003ff0:	2b00      	cmp	r3, #0
 8003ff2:	f340 8273 	ble.w	80044dc <_vfprintf_r+0x115c>
 8003ff6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003ffa:	4293      	cmp	r3, r2
 8003ffc:	bfa8      	it	ge
 8003ffe:	4613      	movge	r3, r2
 8004000:	2b00      	cmp	r3, #0
 8004002:	461d      	mov	r5, r3
 8004004:	dd0d      	ble.n	8004022 <_vfprintf_r+0xca2>
 8004006:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004008:	f8cb 7000 	str.w	r7, [fp]
 800400c:	3301      	adds	r3, #1
 800400e:	442c      	add	r4, r5
 8004010:	2b07      	cmp	r3, #7
 8004012:	942c      	str	r4, [sp, #176]	; 0xb0
 8004014:	f8cb 5004 	str.w	r5, [fp, #4]
 8004018:	932b      	str	r3, [sp, #172]	; 0xac
 800401a:	f300 82c1 	bgt.w	80045a0 <_vfprintf_r+0x1220>
 800401e:	f10b 0b08 	add.w	fp, fp, #8
 8004022:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004024:	2d00      	cmp	r5, #0
 8004026:	bfa8      	it	ge
 8004028:	1b5b      	subge	r3, r3, r5
 800402a:	2b00      	cmp	r3, #0
 800402c:	461d      	mov	r5, r3
 800402e:	f340 8099 	ble.w	8004164 <_vfprintf_r+0xde4>
 8004032:	2d10      	cmp	r5, #16
 8004034:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004036:	4b2c      	ldr	r3, [pc, #176]	; (80040e8 <_vfprintf_r+0xd68>)
 8004038:	f340 83db 	ble.w	80047f2 <_vfprintf_r+0x1472>
 800403c:	4618      	mov	r0, r3
 800403e:	4621      	mov	r1, r4
 8004040:	465b      	mov	r3, fp
 8004042:	2610      	movs	r6, #16
 8004044:	46bb      	mov	fp, r7
 8004046:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800404a:	9c07      	ldr	r4, [sp, #28]
 800404c:	4607      	mov	r7, r0
 800404e:	e004      	b.n	800405a <_vfprintf_r+0xcda>
 8004050:	3308      	adds	r3, #8
 8004052:	3d10      	subs	r5, #16
 8004054:	2d10      	cmp	r5, #16
 8004056:	f340 83c7 	ble.w	80047e8 <_vfprintf_r+0x1468>
 800405a:	3201      	adds	r2, #1
 800405c:	3110      	adds	r1, #16
 800405e:	2a07      	cmp	r2, #7
 8004060:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8004064:	e9c3 7600 	strd	r7, r6, [r3]
 8004068:	ddf2      	ble.n	8004050 <_vfprintf_r+0xcd0>
 800406a:	aa2a      	add	r2, sp, #168	; 0xa8
 800406c:	4621      	mov	r1, r4
 800406e:	4648      	mov	r0, r9
 8004070:	f003 fcb4 	bl	80079dc <__sprint_r>
 8004074:	2800      	cmp	r0, #0
 8004076:	f040 84a5 	bne.w	80049c4 <_vfprintf_r+0x1644>
 800407a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800407e:	ab2d      	add	r3, sp, #180	; 0xb4
 8004080:	e7e7      	b.n	8004052 <_vfprintf_r+0xcd2>
 8004082:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8004086:	af56      	add	r7, sp, #344	; 0x158
 8004088:	f7ff bafb 	b.w	8003682 <_vfprintf_r+0x302>
 800408c:	f1b9 0f00 	cmp.w	r9, #0
 8004090:	f77f af4c 	ble.w	8003f2c <_vfprintf_r+0xbac>
 8004094:	f1b9 0f10 	cmp.w	r9, #16
 8004098:	4b13      	ldr	r3, [pc, #76]	; (80040e8 <_vfprintf_r+0xd68>)
 800409a:	f340 8659 	ble.w	8004d50 <_vfprintf_r+0x19d0>
 800409e:	4619      	mov	r1, r3
 80040a0:	4622      	mov	r2, r4
 80040a2:	4633      	mov	r3, r6
 80040a4:	2710      	movs	r7, #16
 80040a6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80040aa:	9c07      	ldr	r4, [sp, #28]
 80040ac:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80040ae:	460e      	mov	r6, r1
 80040b0:	e007      	b.n	80040c2 <_vfprintf_r+0xd42>
 80040b2:	3308      	adds	r3, #8
 80040b4:	f1a9 0910 	sub.w	r9, r9, #16
 80040b8:	f1b9 0f10 	cmp.w	r9, #16
 80040bc:	f340 8353 	ble.w	8004766 <_vfprintf_r+0x13e6>
 80040c0:	3501      	adds	r5, #1
 80040c2:	3210      	adds	r2, #16
 80040c4:	2d07      	cmp	r5, #7
 80040c6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80040ca:	e9c3 6700 	strd	r6, r7, [r3]
 80040ce:	ddf0      	ble.n	80040b2 <_vfprintf_r+0xd32>
 80040d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80040d2:	4621      	mov	r1, r4
 80040d4:	4658      	mov	r0, fp
 80040d6:	f003 fc81 	bl	80079dc <__sprint_r>
 80040da:	2800      	cmp	r0, #0
 80040dc:	f040 8472 	bne.w	80049c4 <_vfprintf_r+0x1644>
 80040e0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80040e4:	ab2d      	add	r3, sp, #180	; 0xb4
 80040e6:	e7e5      	b.n	80040b4 <_vfprintf_r+0xd34>
 80040e8:	08008cd0 	.word	0x08008cd0
 80040ec:	f018 0f01 	tst.w	r8, #1
 80040f0:	f47f aee0 	bne.w	8003eb4 <_vfprintf_r+0xb34>
 80040f4:	2201      	movs	r2, #1
 80040f6:	2d07      	cmp	r5, #7
 80040f8:	f8cb 7000 	str.w	r7, [fp]
 80040fc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8004100:	f8cb 2004 	str.w	r2, [fp, #4]
 8004104:	dc04      	bgt.n	8004110 <_vfprintf_r+0xd90>
 8004106:	3302      	adds	r3, #2
 8004108:	9309      	str	r3, [sp, #36]	; 0x24
 800410a:	f10b 0b10 	add.w	fp, fp, #16
 800410e:	e70d      	b.n	8003f2c <_vfprintf_r+0xbac>
 8004110:	aa2a      	add	r2, sp, #168	; 0xa8
 8004112:	9907      	ldr	r1, [sp, #28]
 8004114:	9803      	ldr	r0, [sp, #12]
 8004116:	f003 fc61 	bl	80079dc <__sprint_r>
 800411a:	2800      	cmp	r0, #0
 800411c:	f47f aea8 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8004120:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8004124:	3301      	adds	r3, #1
 8004126:	9309      	str	r3, [sp, #36]	; 0x24
 8004128:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800412c:	ae2d      	add	r6, sp, #180	; 0xb4
 800412e:	e6fd      	b.n	8003f2c <_vfprintf_r+0xbac>
 8004130:	aa2a      	add	r2, sp, #168	; 0xa8
 8004132:	9907      	ldr	r1, [sp, #28]
 8004134:	9803      	ldr	r0, [sp, #12]
 8004136:	f003 fc51 	bl	80079dc <__sprint_r>
 800413a:	2800      	cmp	r0, #0
 800413c:	f47f ae98 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8004140:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004144:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004146:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800414a:	f7ff baf6 	b.w	800373a <_vfprintf_r+0x3ba>
 800414e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004150:	9907      	ldr	r1, [sp, #28]
 8004152:	9803      	ldr	r0, [sp, #12]
 8004154:	f003 fc42 	bl	80079dc <__sprint_r>
 8004158:	2800      	cmp	r0, #0
 800415a:	f47f ae89 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 800415e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004160:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004164:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004166:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800416a:	443b      	add	r3, r7
 800416c:	4699      	mov	r9, r3
 800416e:	f040 8357 	bne.w	8004820 <_vfprintf_r+0x14a0>
 8004172:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004174:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004176:	4293      	cmp	r3, r2
 8004178:	db49      	blt.n	800420e <_vfprintf_r+0xe8e>
 800417a:	f018 0f01 	tst.w	r8, #1
 800417e:	d146      	bne.n	800420e <_vfprintf_r+0xe8e>
 8004180:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004182:	18bd      	adds	r5, r7, r2
 8004184:	eba5 0509 	sub.w	r5, r5, r9
 8004188:	1ad3      	subs	r3, r2, r3
 800418a:	429d      	cmp	r5, r3
 800418c:	bfa8      	it	ge
 800418e:	461d      	movge	r5, r3
 8004190:	2d00      	cmp	r5, #0
 8004192:	dd0d      	ble.n	80041b0 <_vfprintf_r+0xe30>
 8004194:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004196:	f8cb 9000 	str.w	r9, [fp]
 800419a:	3201      	adds	r2, #1
 800419c:	442c      	add	r4, r5
 800419e:	2a07      	cmp	r2, #7
 80041a0:	942c      	str	r4, [sp, #176]	; 0xb0
 80041a2:	f8cb 5004 	str.w	r5, [fp, #4]
 80041a6:	922b      	str	r2, [sp, #172]	; 0xac
 80041a8:	f300 8462 	bgt.w	8004a70 <_vfprintf_r+0x16f0>
 80041ac:	f10b 0b08 	add.w	fp, fp, #8
 80041b0:	2d00      	cmp	r5, #0
 80041b2:	bfac      	ite	ge
 80041b4:	1b5d      	subge	r5, r3, r5
 80041b6:	461d      	movlt	r5, r3
 80041b8:	2d00      	cmp	r5, #0
 80041ba:	f77f ab32 	ble.w	8003822 <_vfprintf_r+0x4a2>
 80041be:	2d10      	cmp	r5, #16
 80041c0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80041c2:	4bc5      	ldr	r3, [pc, #788]	; (80044d8 <_vfprintf_r+0x1158>)
 80041c4:	f340 80c4 	ble.w	8004350 <_vfprintf_r+0xfd0>
 80041c8:	4619      	mov	r1, r3
 80041ca:	2610      	movs	r6, #16
 80041cc:	4623      	mov	r3, r4
 80041ce:	9f03      	ldr	r7, [sp, #12]
 80041d0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80041d4:	460c      	mov	r4, r1
 80041d6:	e005      	b.n	80041e4 <_vfprintf_r+0xe64>
 80041d8:	f10b 0b08 	add.w	fp, fp, #8
 80041dc:	3d10      	subs	r5, #16
 80041de:	2d10      	cmp	r5, #16
 80041e0:	f340 80b3 	ble.w	800434a <_vfprintf_r+0xfca>
 80041e4:	3201      	adds	r2, #1
 80041e6:	3310      	adds	r3, #16
 80041e8:	2a07      	cmp	r2, #7
 80041ea:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80041ee:	e9cb 4600 	strd	r4, r6, [fp]
 80041f2:	ddf1      	ble.n	80041d8 <_vfprintf_r+0xe58>
 80041f4:	aa2a      	add	r2, sp, #168	; 0xa8
 80041f6:	4649      	mov	r1, r9
 80041f8:	4638      	mov	r0, r7
 80041fa:	f003 fbef 	bl	80079dc <__sprint_r>
 80041fe:	2800      	cmp	r0, #0
 8004200:	f47f ae38 	bne.w	8003e74 <_vfprintf_r+0xaf4>
 8004204:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004208:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800420c:	e7e6      	b.n	80041dc <_vfprintf_r+0xe5c>
 800420e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004210:	9916      	ldr	r1, [sp, #88]	; 0x58
 8004212:	f8cb 1000 	str.w	r1, [fp]
 8004216:	9915      	ldr	r1, [sp, #84]	; 0x54
 8004218:	f8cb 1004 	str.w	r1, [fp, #4]
 800421c:	3201      	adds	r2, #1
 800421e:	440c      	add	r4, r1
 8004220:	2a07      	cmp	r2, #7
 8004222:	942c      	str	r4, [sp, #176]	; 0xb0
 8004224:	922b      	str	r2, [sp, #172]	; 0xac
 8004226:	f300 828c 	bgt.w	8004742 <_vfprintf_r+0x13c2>
 800422a:	f10b 0b08 	add.w	fp, fp, #8
 800422e:	e7a7      	b.n	8004180 <_vfprintf_r+0xe00>
 8004230:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004234:	f002 fa94 	bl	8006760 <__retarget_lock_release_recursive>
 8004238:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800423c:	e628      	b.n	8003e90 <_vfprintf_r+0xb10>
 800423e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004240:	9907      	ldr	r1, [sp, #28]
 8004242:	9803      	ldr	r0, [sp, #12]
 8004244:	f003 fbca 	bl	80079dc <__sprint_r>
 8004248:	2800      	cmp	r0, #0
 800424a:	f47f ae11 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 800424e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8004252:	ae2d      	add	r6, sp, #180	; 0xb4
 8004254:	e638      	b.n	8003ec8 <_vfprintf_r+0xb48>
 8004256:	aa2a      	add	r2, sp, #168	; 0xa8
 8004258:	9907      	ldr	r1, [sp, #28]
 800425a:	9803      	ldr	r0, [sp, #12]
 800425c:	f003 fbbe 	bl	80079dc <__sprint_r>
 8004260:	2800      	cmp	r0, #0
 8004262:	f47f ae05 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8004266:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800426a:	ae2d      	add	r6, sp, #180	; 0xb4
 800426c:	930b      	str	r3, [sp, #44]	; 0x2c
 800426e:	e638      	b.n	8003ee2 <_vfprintf_r+0xb62>
 8004270:	6814      	ldr	r4, [r2, #0]
 8004272:	9308      	str	r3, [sp, #32]
 8004274:	2500      	movs	r5, #0
 8004276:	f7ff bb95 	b.w	80039a4 <_vfprintf_r+0x624>
 800427a:	6814      	ldr	r4, [r2, #0]
 800427c:	9308      	str	r3, [sp, #32]
 800427e:	2500      	movs	r5, #0
 8004280:	f7ff b9ae 	b.w	80035e0 <_vfprintf_r+0x260>
 8004284:	680c      	ldr	r4, [r1, #0]
 8004286:	9208      	str	r2, [sp, #32]
 8004288:	17e5      	asrs	r5, r4, #31
 800428a:	4620      	mov	r0, r4
 800428c:	4629      	mov	r1, r5
 800428e:	f7ff b9d2 	b.w	8003636 <_vfprintf_r+0x2b6>
 8004292:	6814      	ldr	r4, [r2, #0]
 8004294:	9108      	str	r1, [sp, #32]
 8004296:	2201      	movs	r2, #1
 8004298:	2500      	movs	r5, #0
 800429a:	f7ff bb32 	b.w	8003902 <_vfprintf_r+0x582>
 800429e:	2a01      	cmp	r2, #1
 80042a0:	f47f ab3c 	bne.w	800391c <_vfprintf_r+0x59c>
 80042a4:	e68f      	b.n	8003fc6 <_vfprintf_r+0xc46>
 80042a6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80042aa:	2200      	movs	r2, #0
 80042ac:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80042b0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80042b4:	af56      	add	r7, sp, #344	; 0x158
 80042b6:	4692      	mov	sl, r2
 80042b8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80042bc:	461e      	mov	r6, r3
 80042be:	e00a      	b.n	80042d6 <_vfprintf_r+0xf56>
 80042c0:	2300      	movs	r3, #0
 80042c2:	4620      	mov	r0, r4
 80042c4:	4629      	mov	r1, r5
 80042c6:	220a      	movs	r2, #10
 80042c8:	f7fb ff9a 	bl	8000200 <__aeabi_uldivmod>
 80042cc:	4604      	mov	r4, r0
 80042ce:	460d      	mov	r5, r1
 80042d0:	ea54 0305 	orrs.w	r3, r4, r5
 80042d4:	d029      	beq.n	800432a <_vfprintf_r+0xfaa>
 80042d6:	220a      	movs	r2, #10
 80042d8:	2300      	movs	r3, #0
 80042da:	4620      	mov	r0, r4
 80042dc:	4629      	mov	r1, r5
 80042de:	f7fb ff8f 	bl	8000200 <__aeabi_uldivmod>
 80042e2:	3230      	adds	r2, #48	; 0x30
 80042e4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80042e8:	f10a 0a01 	add.w	sl, sl, #1
 80042ec:	3f01      	subs	r7, #1
 80042ee:	2e00      	cmp	r6, #0
 80042f0:	d0e6      	beq.n	80042c0 <_vfprintf_r+0xf40>
 80042f2:	f898 3000 	ldrb.w	r3, [r8]
 80042f6:	459a      	cmp	sl, r3
 80042f8:	d1e2      	bne.n	80042c0 <_vfprintf_r+0xf40>
 80042fa:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80042fe:	d0df      	beq.n	80042c0 <_vfprintf_r+0xf40>
 8004300:	2d00      	cmp	r5, #0
 8004302:	bf08      	it	eq
 8004304:	2c0a      	cmpeq	r4, #10
 8004306:	d3db      	bcc.n	80042c0 <_vfprintf_r+0xf40>
 8004308:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800430a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800430c:	1aff      	subs	r7, r7, r3
 800430e:	461a      	mov	r2, r3
 8004310:	4638      	mov	r0, r7
 8004312:	f003 faf5 	bl	8007900 <strncpy>
 8004316:	f898 3001 	ldrb.w	r3, [r8, #1]
 800431a:	2b00      	cmp	r3, #0
 800431c:	f000 8496 	beq.w	8004c4c <_vfprintf_r+0x18cc>
 8004320:	f108 0801 	add.w	r8, r8, #1
 8004324:	f04f 0a00 	mov.w	sl, #0
 8004328:	e7ca      	b.n	80042c0 <_vfprintf_r+0xf40>
 800432a:	9b04      	ldr	r3, [sp, #16]
 800432c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8004330:	1bdb      	subs	r3, r3, r7
 8004332:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8004336:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8004338:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800433c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8004340:	9309      	str	r3, [sp, #36]	; 0x24
 8004342:	f7ff b99e 	b.w	8003682 <_vfprintf_r+0x302>
 8004346:	46c1      	mov	r9, r8
 8004348:	e594      	b.n	8003e74 <_vfprintf_r+0xaf4>
 800434a:	4621      	mov	r1, r4
 800434c:	461c      	mov	r4, r3
 800434e:	460b      	mov	r3, r1
 8004350:	3201      	adds	r2, #1
 8004352:	442c      	add	r4, r5
 8004354:	2a07      	cmp	r2, #7
 8004356:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800435a:	e9cb 3500 	strd	r3, r5, [fp]
 800435e:	f77f aa5e 	ble.w	800381e <_vfprintf_r+0x49e>
 8004362:	e5ee      	b.n	8003f42 <_vfprintf_r+0xbc2>
 8004364:	f018 0f10 	tst.w	r8, #16
 8004368:	f040 80f8 	bne.w	800455c <_vfprintf_r+0x11dc>
 800436c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8004370:	f000 8351 	beq.w	8004a16 <_vfprintf_r+0x1696>
 8004374:	9a05      	ldr	r2, [sp, #20]
 8004376:	801a      	strh	r2, [r3, #0]
 8004378:	4657      	mov	r7, sl
 800437a:	f7ff baa7 	b.w	80038cc <_vfprintf_r+0x54c>
 800437e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004380:	9907      	ldr	r1, [sp, #28]
 8004382:	9803      	ldr	r0, [sp, #12]
 8004384:	f003 fb2a 	bl	80079dc <__sprint_r>
 8004388:	2800      	cmp	r0, #0
 800438a:	f47f ad71 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 800438e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004390:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004394:	f7ff b9f5 	b.w	8003782 <_vfprintf_r+0x402>
 8004398:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800439c:	4602      	mov	r2, r0
 800439e:	460b      	mov	r3, r1
 80043a0:	f7fc fe64 	bl	800106c <__aeabi_dcmpun>
 80043a4:	2800      	cmp	r0, #0
 80043a6:	f040 8491 	bne.w	8004ccc <_vfprintf_r+0x194c>
 80043aa:	2e61      	cmp	r6, #97	; 0x61
 80043ac:	f000 8111 	beq.w	80045d2 <_vfprintf_r+0x1252>
 80043b0:	2e41      	cmp	r6, #65	; 0x41
 80043b2:	f000 8377 	beq.w	8004aa4 <_vfprintf_r+0x1724>
 80043b6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80043ba:	f026 0220 	bic.w	r2, r6, #32
 80043be:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80043c2:	930e      	str	r3, [sp, #56]	; 0x38
 80043c4:	9204      	str	r2, [sp, #16]
 80043c6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80043c8:	f000 842d 	beq.w	8004c26 <_vfprintf_r+0x18a6>
 80043cc:	2a47      	cmp	r2, #71	; 0x47
 80043ce:	f000 8424 	beq.w	8004c1a <_vfprintf_r+0x189a>
 80043d2:	2b00      	cmp	r3, #0
 80043d4:	f2c0 82f9 	blt.w	80049ca <_vfprintf_r+0x164a>
 80043d8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80043dc:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80043e0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80043e4:	2e66      	cmp	r6, #102	; 0x66
 80043e6:	f000 83eb 	beq.w	8004bc0 <_vfprintf_r+0x1840>
 80043ea:	2e46      	cmp	r6, #70	; 0x46
 80043ec:	f000 847e 	beq.w	8004cec <_vfprintf_r+0x196c>
 80043f0:	9b04      	ldr	r3, [sp, #16]
 80043f2:	9803      	ldr	r0, [sp, #12]
 80043f4:	2b45      	cmp	r3, #69	; 0x45
 80043f6:	bf0c      	ite	eq
 80043f8:	f109 0501 	addeq.w	r5, r9, #1
 80043fc:	464d      	movne	r5, r9
 80043fe:	aa28      	add	r2, sp, #160	; 0xa0
 8004400:	ab25      	add	r3, sp, #148	; 0x94
 8004402:	e9cd 3200 	strd	r3, r2, [sp]
 8004406:	2102      	movs	r1, #2
 8004408:	ab24      	add	r3, sp, #144	; 0x90
 800440a:	462a      	mov	r2, r5
 800440c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004410:	f000 fe3e 	bl	8005090 <_dtoa_r>
 8004414:	2e67      	cmp	r6, #103	; 0x67
 8004416:	4607      	mov	r7, r0
 8004418:	f040 849c 	bne.w	8004d54 <_vfprintf_r+0x19d4>
 800441c:	f018 0f01 	tst.w	r8, #1
 8004420:	f040 83f9 	bne.w	8004c16 <_vfprintf_r+0x1896>
 8004424:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004426:	4640      	mov	r0, r8
 8004428:	1bdb      	subs	r3, r3, r7
 800442a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800442e:	9310      	str	r3, [sp, #64]	; 0x40
 8004430:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004432:	9311      	str	r3, [sp, #68]	; 0x44
 8004434:	9b04      	ldr	r3, [sp, #16]
 8004436:	2b47      	cmp	r3, #71	; 0x47
 8004438:	f000 81e7 	beq.w	800480a <_vfprintf_r+0x148a>
 800443c:	9b04      	ldr	r3, [sp, #16]
 800443e:	2b46      	cmp	r3, #70	; 0x46
 8004440:	f000 8300 	beq.w	8004a44 <_vfprintf_r+0x16c4>
 8004444:	9904      	ldr	r1, [sp, #16]
 8004446:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004448:	b2f2      	uxtb	r2, r6
 800444a:	2941      	cmp	r1, #65	; 0x41
 800444c:	bf08      	it	eq
 800444e:	320f      	addeq	r2, #15
 8004450:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8004454:	bf06      	itte	eq
 8004456:	b2d2      	uxtbeq	r2, r2
 8004458:	2101      	moveq	r1, #1
 800445a:	2100      	movne	r1, #0
 800445c:	2b00      	cmp	r3, #0
 800445e:	9324      	str	r3, [sp, #144]	; 0x90
 8004460:	bfb8      	it	lt
 8004462:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8004464:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8004468:	bfba      	itte	lt
 800446a:	f1c3 0301 	rsblt	r3, r3, #1
 800446e:	222d      	movlt	r2, #45	; 0x2d
 8004470:	222b      	movge	r2, #43	; 0x2b
 8004472:	2b09      	cmp	r3, #9
 8004474:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8004478:	f300 83f9 	bgt.w	8004c6e <_vfprintf_r+0x18ee>
 800447c:	2900      	cmp	r1, #0
 800447e:	f040 8487 	bne.w	8004d90 <_vfprintf_r+0x1a10>
 8004482:	2230      	movs	r2, #48	; 0x30
 8004484:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8004488:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800448c:	3330      	adds	r3, #48	; 0x30
 800448e:	7013      	strb	r3, [r2, #0]
 8004490:	1c53      	adds	r3, r2, #1
 8004492:	aa26      	add	r2, sp, #152	; 0x98
 8004494:	1a9b      	subs	r3, r3, r2
 8004496:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004498:	9319      	str	r3, [sp, #100]	; 0x64
 800449a:	2a01      	cmp	r2, #1
 800449c:	4413      	add	r3, r2
 800449e:	9309      	str	r3, [sp, #36]	; 0x24
 80044a0:	f340 8442 	ble.w	8004d28 <_vfprintf_r+0x19a8>
 80044a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044a6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80044a8:	4413      	add	r3, r2
 80044aa:	9309      	str	r3, [sp, #36]	; 0x24
 80044ac:	2300      	movs	r3, #0
 80044ae:	930f      	str	r3, [sp, #60]	; 0x3c
 80044b0:	9314      	str	r3, [sp, #80]	; 0x50
 80044b2:	9311      	str	r3, [sp, #68]	; 0x44
 80044b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044b6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80044ba:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80044be:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80044c2:	9304      	str	r3, [sp, #16]
 80044c4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80044c6:	2b00      	cmp	r3, #0
 80044c8:	f040 8275 	bne.w	80049b6 <_vfprintf_r+0x1636>
 80044cc:	4699      	mov	r9, r3
 80044ce:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80044d2:	f7ff b8e2 	b.w	800369a <_vfprintf_r+0x31a>
 80044d6:	bf00      	nop
 80044d8:	08008cd0 	.word	0x08008cd0
 80044dc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80044de:	49bd      	ldr	r1, [pc, #756]	; (80047d4 <_vfprintf_r+0x1454>)
 80044e0:	f8cb 1000 	str.w	r1, [fp]
 80044e4:	3201      	adds	r2, #1
 80044e6:	3401      	adds	r4, #1
 80044e8:	2101      	movs	r1, #1
 80044ea:	2a07      	cmp	r2, #7
 80044ec:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80044f0:	f8cb 1004 	str.w	r1, [fp, #4]
 80044f4:	dc60      	bgt.n	80045b8 <_vfprintf_r+0x1238>
 80044f6:	f10b 0b08 	add.w	fp, fp, #8
 80044fa:	b92b      	cbnz	r3, 8004508 <_vfprintf_r+0x1188>
 80044fc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80044fe:	b91a      	cbnz	r2, 8004508 <_vfprintf_r+0x1188>
 8004500:	f018 0f01 	tst.w	r8, #1
 8004504:	f43f a98d 	beq.w	8003822 <_vfprintf_r+0x4a2>
 8004508:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800450a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800450c:	f8cb 1000 	str.w	r1, [fp]
 8004510:	9915      	ldr	r1, [sp, #84]	; 0x54
 8004512:	f8cb 1004 	str.w	r1, [fp, #4]
 8004516:	3201      	adds	r2, #1
 8004518:	440c      	add	r4, r1
 800451a:	2a07      	cmp	r2, #7
 800451c:	942c      	str	r4, [sp, #176]	; 0xb0
 800451e:	922b      	str	r2, [sp, #172]	; 0xac
 8004520:	f300 8282 	bgt.w	8004a28 <_vfprintf_r+0x16a8>
 8004524:	f10b 0b08 	add.w	fp, fp, #8
 8004528:	2b00      	cmp	r3, #0
 800452a:	f2c0 82e7 	blt.w	8004afc <_vfprintf_r+0x177c>
 800452e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004530:	3201      	adds	r2, #1
 8004532:	441c      	add	r4, r3
 8004534:	2a07      	cmp	r2, #7
 8004536:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800453a:	e9cb 7300 	strd	r7, r3, [fp]
 800453e:	f77f a96e 	ble.w	800381e <_vfprintf_r+0x49e>
 8004542:	e4fe      	b.n	8003f42 <_vfprintf_r+0xbc2>
 8004544:	aa2a      	add	r2, sp, #168	; 0xa8
 8004546:	9907      	ldr	r1, [sp, #28]
 8004548:	9803      	ldr	r0, [sp, #12]
 800454a:	f003 fa47 	bl	80079dc <__sprint_r>
 800454e:	2800      	cmp	r0, #0
 8004550:	f47f ac8e 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8004554:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004558:	f7ff bbf0 	b.w	8003d3c <_vfprintf_r+0x9bc>
 800455c:	9a05      	ldr	r2, [sp, #20]
 800455e:	601a      	str	r2, [r3, #0]
 8004560:	4657      	mov	r7, sl
 8004562:	f7ff b9b3 	b.w	80038cc <_vfprintf_r+0x54c>
 8004566:	8814      	ldrh	r4, [r2, #0]
 8004568:	9108      	str	r1, [sp, #32]
 800456a:	2500      	movs	r5, #0
 800456c:	2201      	movs	r2, #1
 800456e:	f7ff b9c8 	b.w	8003902 <_vfprintf_r+0x582>
 8004572:	8814      	ldrh	r4, [r2, #0]
 8004574:	9308      	str	r3, [sp, #32]
 8004576:	2500      	movs	r5, #0
 8004578:	f7ff ba14 	b.w	80039a4 <_vfprintf_r+0x624>
 800457c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8004580:	9208      	str	r2, [sp, #32]
 8004582:	17e5      	asrs	r5, r4, #31
 8004584:	4620      	mov	r0, r4
 8004586:	4629      	mov	r1, r5
 8004588:	f7ff b855 	b.w	8003636 <_vfprintf_r+0x2b6>
 800458c:	8814      	ldrh	r4, [r2, #0]
 800458e:	9308      	str	r3, [sp, #32]
 8004590:	2500      	movs	r5, #0
 8004592:	f7ff b825 	b.w	80035e0 <_vfprintf_r+0x260>
 8004596:	222d      	movs	r2, #45	; 0x2d
 8004598:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800459c:	f7ff baa2 	b.w	8003ae4 <_vfprintf_r+0x764>
 80045a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80045a2:	9907      	ldr	r1, [sp, #28]
 80045a4:	9803      	ldr	r0, [sp, #12]
 80045a6:	f003 fa19 	bl	80079dc <__sprint_r>
 80045aa:	2800      	cmp	r0, #0
 80045ac:	f47f ac60 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 80045b0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80045b2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80045b6:	e534      	b.n	8004022 <_vfprintf_r+0xca2>
 80045b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80045ba:	9907      	ldr	r1, [sp, #28]
 80045bc:	9803      	ldr	r0, [sp, #12]
 80045be:	f003 fa0d 	bl	80079dc <__sprint_r>
 80045c2:	2800      	cmp	r0, #0
 80045c4:	f47f ac54 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 80045c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80045ca:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80045cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80045d0:	e793      	b.n	80044fa <_vfprintf_r+0x117a>
 80045d2:	2330      	movs	r3, #48	; 0x30
 80045d4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80045d8:	2378      	movs	r3, #120	; 0x78
 80045da:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80045de:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80045e2:	f048 0402 	orr.w	r4, r8, #2
 80045e6:	f300 82b0 	bgt.w	8004b4a <_vfprintf_r+0x17ca>
 80045ea:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80045ee:	930e      	str	r3, [sp, #56]	; 0x38
 80045f0:	f026 0320 	bic.w	r3, r6, #32
 80045f4:	9304      	str	r3, [sp, #16]
 80045f6:	2200      	movs	r2, #0
 80045f8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80045fa:	920a      	str	r2, [sp, #40]	; 0x28
 80045fc:	46a0      	mov	r8, r4
 80045fe:	af3d      	add	r7, sp, #244	; 0xf4
 8004600:	2b00      	cmp	r3, #0
 8004602:	f2c0 81e3 	blt.w	80049cc <_vfprintf_r+0x164c>
 8004606:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800460a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800460e:	2300      	movs	r3, #0
 8004610:	930b      	str	r3, [sp, #44]	; 0x2c
 8004612:	2e61      	cmp	r6, #97	; 0x61
 8004614:	f000 8255 	beq.w	8004ac2 <_vfprintf_r+0x1742>
 8004618:	2e41      	cmp	r6, #65	; 0x41
 800461a:	f47f aee3 	bne.w	80043e4 <_vfprintf_r+0x1064>
 800461e:	a824      	add	r0, sp, #144	; 0x90
 8004620:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004624:	f003 f8e2 	bl	80077ec <frexp>
 8004628:	2200      	movs	r2, #0
 800462a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800462e:	ec51 0b10 	vmov	r0, r1, d0
 8004632:	f7fc fa81 	bl	8000b38 <__aeabi_dmul>
 8004636:	2200      	movs	r2, #0
 8004638:	2300      	movs	r3, #0
 800463a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800463e:	f7fc fce3 	bl	8001008 <__aeabi_dcmpeq>
 8004642:	2800      	cmp	r0, #0
 8004644:	f040 8305 	bne.w	8004c52 <_vfprintf_r+0x18d2>
 8004648:	4b63      	ldr	r3, [pc, #396]	; (80047d8 <_vfprintf_r+0x1458>)
 800464a:	9309      	str	r3, [sp, #36]	; 0x24
 800464c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8004650:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8004654:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8004658:	9721      	str	r7, [sp, #132]	; 0x84
 800465a:	46b9      	mov	r9, r7
 800465c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8004660:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8004664:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004668:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800466c:	e003      	b.n	8004676 <_vfprintf_r+0x12f6>
 800466e:	f7fc fccb 	bl	8001008 <__aeabi_dcmpeq>
 8004672:	bb20      	cbnz	r0, 80046be <_vfprintf_r+0x133e>
 8004674:	46a9      	mov	r9, r5
 8004676:	2200      	movs	r2, #0
 8004678:	4b58      	ldr	r3, [pc, #352]	; (80047dc <_vfprintf_r+0x145c>)
 800467a:	4630      	mov	r0, r6
 800467c:	4639      	mov	r1, r7
 800467e:	f7fc fa5b 	bl	8000b38 <__aeabi_dmul>
 8004682:	460f      	mov	r7, r1
 8004684:	4606      	mov	r6, r0
 8004686:	f7fc fd07 	bl	8001098 <__aeabi_d2iz>
 800468a:	4680      	mov	r8, r0
 800468c:	f7fc f9ea 	bl	8000a64 <__aeabi_i2d>
 8004690:	4602      	mov	r2, r0
 8004692:	460b      	mov	r3, r1
 8004694:	4630      	mov	r0, r6
 8004696:	4639      	mov	r1, r7
 8004698:	f7fc f896 	bl	80007c8 <__aeabi_dsub>
 800469c:	464d      	mov	r5, r9
 800469e:	f81a c008 	ldrb.w	ip, [sl, r8]
 80046a2:	f805 cb01 	strb.w	ip, [r5], #1
 80046a6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80046aa:	46a3      	mov	fp, r4
 80046ac:	4606      	mov	r6, r0
 80046ae:	460f      	mov	r7, r1
 80046b0:	f04f 0200 	mov.w	r2, #0
 80046b4:	f04f 0300 	mov.w	r3, #0
 80046b8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80046bc:	d1d7      	bne.n	800466e <_vfprintf_r+0x12ee>
 80046be:	4630      	mov	r0, r6
 80046c0:	4639      	mov	r1, r7
 80046c2:	2200      	movs	r2, #0
 80046c4:	4b46      	ldr	r3, [pc, #280]	; (80047e0 <_vfprintf_r+0x1460>)
 80046c6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80046ca:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80046cc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80046d0:	4644      	mov	r4, r8
 80046d2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80046d6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80046da:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80046de:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80046e2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80046e4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80046e8:	f7fc fcb6 	bl	8001058 <__aeabi_dcmpgt>
 80046ec:	2800      	cmp	r0, #0
 80046ee:	f040 8176 	bne.w	80049de <_vfprintf_r+0x165e>
 80046f2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80046f6:	2200      	movs	r2, #0
 80046f8:	4b39      	ldr	r3, [pc, #228]	; (80047e0 <_vfprintf_r+0x1460>)
 80046fa:	f7fc fc85 	bl	8001008 <__aeabi_dcmpeq>
 80046fe:	b110      	cbz	r0, 8004706 <_vfprintf_r+0x1386>
 8004700:	07e2      	lsls	r2, r4, #31
 8004702:	f100 816c 	bmi.w	80049de <_vfprintf_r+0x165e>
 8004706:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004708:	2b00      	cmp	r3, #0
 800470a:	db07      	blt.n	800471c <_vfprintf_r+0x139c>
 800470c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800470e:	3301      	adds	r3, #1
 8004710:	442b      	add	r3, r5
 8004712:	2230      	movs	r2, #48	; 0x30
 8004714:	f805 2b01 	strb.w	r2, [r5], #1
 8004718:	42ab      	cmp	r3, r5
 800471a:	d1fb      	bne.n	8004714 <_vfprintf_r+0x1394>
 800471c:	1beb      	subs	r3, r5, r7
 800471e:	4640      	mov	r0, r8
 8004720:	9310      	str	r3, [sp, #64]	; 0x40
 8004722:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004726:	e683      	b.n	8004430 <_vfprintf_r+0x10b0>
 8004728:	f8cd 9010 	str.w	r9, [sp, #16]
 800472c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8004730:	9408      	str	r4, [sp, #32]
 8004732:	4681      	mov	r9, r0
 8004734:	900f      	str	r0, [sp, #60]	; 0x3c
 8004736:	9014      	str	r0, [sp, #80]	; 0x50
 8004738:	9011      	str	r0, [sp, #68]	; 0x44
 800473a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800473e:	f7fe bfac 	b.w	800369a <_vfprintf_r+0x31a>
 8004742:	aa2a      	add	r2, sp, #168	; 0xa8
 8004744:	9907      	ldr	r1, [sp, #28]
 8004746:	9803      	ldr	r0, [sp, #12]
 8004748:	f003 f948 	bl	80079dc <__sprint_r>
 800474c:	2800      	cmp	r0, #0
 800474e:	f47f ab8f 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8004752:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004754:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004756:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800475a:	e511      	b.n	8004180 <_vfprintf_r+0xe00>
 800475c:	4252      	negs	r2, r2
 800475e:	9206      	str	r2, [sp, #24]
 8004760:	9308      	str	r3, [sp, #32]
 8004762:	f7ff b96d 	b.w	8003a40 <_vfprintf_r+0x6c0>
 8004766:	4614      	mov	r4, r2
 8004768:	4632      	mov	r2, r6
 800476a:	461e      	mov	r6, r3
 800476c:	4613      	mov	r3, r2
 800476e:	462a      	mov	r2, r5
 8004770:	3201      	adds	r2, #1
 8004772:	9209      	str	r2, [sp, #36]	; 0x24
 8004774:	f106 0208 	add.w	r2, r6, #8
 8004778:	e9c6 3900 	strd	r3, r9, [r6]
 800477c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800477e:	932b      	str	r3, [sp, #172]	; 0xac
 8004780:	444c      	add	r4, r9
 8004782:	2b07      	cmp	r3, #7
 8004784:	942c      	str	r4, [sp, #176]	; 0xb0
 8004786:	f73f acc3 	bgt.w	8004110 <_vfprintf_r+0xd90>
 800478a:	3301      	adds	r3, #1
 800478c:	9309      	str	r3, [sp, #36]	; 0x24
 800478e:	f102 0b08 	add.w	fp, r2, #8
 8004792:	4616      	mov	r6, r2
 8004794:	f7ff bbca 	b.w	8003f2c <_vfprintf_r+0xbac>
 8004798:	aa2a      	add	r2, sp, #168	; 0xa8
 800479a:	9907      	ldr	r1, [sp, #28]
 800479c:	9803      	ldr	r0, [sp, #12]
 800479e:	f003 f91d 	bl	80079dc <__sprint_r>
 80047a2:	2800      	cmp	r0, #0
 80047a4:	f47f ab64 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 80047a8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80047aa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80047ae:	f7ff bade 	b.w	8003d6e <_vfprintf_r+0x9ee>
 80047b2:	464b      	mov	r3, r9
 80047b4:	2b06      	cmp	r3, #6
 80047b6:	bf28      	it	cs
 80047b8:	2306      	movcs	r3, #6
 80047ba:	46b9      	mov	r9, r7
 80047bc:	970f      	str	r7, [sp, #60]	; 0x3c
 80047be:	9714      	str	r7, [sp, #80]	; 0x50
 80047c0:	9711      	str	r7, [sp, #68]	; 0x44
 80047c2:	970a      	str	r7, [sp, #40]	; 0x28
 80047c4:	463a      	mov	r2, r7
 80047c6:	9304      	str	r3, [sp, #16]
 80047c8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80047cc:	4f05      	ldr	r7, [pc, #20]	; (80047e4 <_vfprintf_r+0x1464>)
 80047ce:	f7fe bf64 	b.w	800369a <_vfprintf_r+0x31a>
 80047d2:	bf00      	nop
 80047d4:	08008cbc 	.word	0x08008cbc
 80047d8:	08008ca0 	.word	0x08008ca0
 80047dc:	40300000 	.word	0x40300000
 80047e0:	3fe00000 	.word	0x3fe00000
 80047e4:	08008cb4 	.word	0x08008cb4
 80047e8:	460c      	mov	r4, r1
 80047ea:	4639      	mov	r1, r7
 80047ec:	465f      	mov	r7, fp
 80047ee:	469b      	mov	fp, r3
 80047f0:	460b      	mov	r3, r1
 80047f2:	3201      	adds	r2, #1
 80047f4:	442c      	add	r4, r5
 80047f6:	2a07      	cmp	r2, #7
 80047f8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80047fc:	e9cb 3500 	strd	r3, r5, [fp]
 8004800:	f73f aca5 	bgt.w	800414e <_vfprintf_r+0xdce>
 8004804:	f10b 0b08 	add.w	fp, fp, #8
 8004808:	e4ac      	b.n	8004164 <_vfprintf_r+0xde4>
 800480a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800480c:	1cda      	adds	r2, r3, #3
 800480e:	db02      	blt.n	8004816 <_vfprintf_r+0x1496>
 8004810:	4599      	cmp	r9, r3
 8004812:	f280 80b5 	bge.w	8004980 <_vfprintf_r+0x1600>
 8004816:	3e02      	subs	r6, #2
 8004818:	f026 0320 	bic.w	r3, r6, #32
 800481c:	9304      	str	r3, [sp, #16]
 800481e:	e611      	b.n	8004444 <_vfprintf_r+0x10c4>
 8004820:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004822:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8004826:	465a      	mov	r2, fp
 8004828:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800482c:	18fb      	adds	r3, r7, r3
 800482e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8004832:	970c      	str	r7, [sp, #48]	; 0x30
 8004834:	4eaf      	ldr	r6, [pc, #700]	; (8004af4 <_vfprintf_r+0x1774>)
 8004836:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800483a:	9309      	str	r3, [sp, #36]	; 0x24
 800483c:	464f      	mov	r7, r9
 800483e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004842:	4621      	mov	r1, r4
 8004844:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004846:	2b00      	cmp	r3, #0
 8004848:	d05b      	beq.n	8004902 <_vfprintf_r+0x1582>
 800484a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800484c:	2b00      	cmp	r3, #0
 800484e:	d154      	bne.n	80048fa <_vfprintf_r+0x157a>
 8004850:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004852:	3b01      	subs	r3, #1
 8004854:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8004858:	9314      	str	r3, [sp, #80]	; 0x50
 800485a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800485c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800485e:	6010      	str	r0, [r2, #0]
 8004860:	3301      	adds	r3, #1
 8004862:	4459      	add	r1, fp
 8004864:	2b07      	cmp	r3, #7
 8004866:	912c      	str	r1, [sp, #176]	; 0xb0
 8004868:	f8c2 b004 	str.w	fp, [r2, #4]
 800486c:	932b      	str	r3, [sp, #172]	; 0xac
 800486e:	dc68      	bgt.n	8004942 <_vfprintf_r+0x15c2>
 8004870:	3208      	adds	r2, #8
 8004872:	9809      	ldr	r0, [sp, #36]	; 0x24
 8004874:	f898 3000 	ldrb.w	r3, [r8]
 8004878:	1bc5      	subs	r5, r0, r7
 800487a:	429d      	cmp	r5, r3
 800487c:	bfa8      	it	ge
 800487e:	461d      	movge	r5, r3
 8004880:	2d00      	cmp	r5, #0
 8004882:	dd0b      	ble.n	800489c <_vfprintf_r+0x151c>
 8004884:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004886:	6017      	str	r7, [r2, #0]
 8004888:	3301      	adds	r3, #1
 800488a:	4429      	add	r1, r5
 800488c:	2b07      	cmp	r3, #7
 800488e:	912c      	str	r1, [sp, #176]	; 0xb0
 8004890:	6055      	str	r5, [r2, #4]
 8004892:	932b      	str	r3, [sp, #172]	; 0xac
 8004894:	dc5e      	bgt.n	8004954 <_vfprintf_r+0x15d4>
 8004896:	f898 3000 	ldrb.w	r3, [r8]
 800489a:	3208      	adds	r2, #8
 800489c:	2d00      	cmp	r5, #0
 800489e:	bfac      	ite	ge
 80048a0:	1b5d      	subge	r5, r3, r5
 80048a2:	461d      	movlt	r5, r3
 80048a4:	2d00      	cmp	r5, #0
 80048a6:	dd26      	ble.n	80048f6 <_vfprintf_r+0x1576>
 80048a8:	2d10      	cmp	r5, #16
 80048aa:	982b      	ldr	r0, [sp, #172]	; 0xac
 80048ac:	dd3c      	ble.n	8004928 <_vfprintf_r+0x15a8>
 80048ae:	2410      	movs	r4, #16
 80048b0:	e003      	b.n	80048ba <_vfprintf_r+0x153a>
 80048b2:	3208      	adds	r2, #8
 80048b4:	3d10      	subs	r5, #16
 80048b6:	2d10      	cmp	r5, #16
 80048b8:	dd36      	ble.n	8004928 <_vfprintf_r+0x15a8>
 80048ba:	3001      	adds	r0, #1
 80048bc:	3110      	adds	r1, #16
 80048be:	2807      	cmp	r0, #7
 80048c0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80048c4:	e9c2 6400 	strd	r6, r4, [r2]
 80048c8:	ddf3      	ble.n	80048b2 <_vfprintf_r+0x1532>
 80048ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80048cc:	4651      	mov	r1, sl
 80048ce:	4648      	mov	r0, r9
 80048d0:	f003 f884 	bl	80079dc <__sprint_r>
 80048d4:	2800      	cmp	r0, #0
 80048d6:	d150      	bne.n	800497a <_vfprintf_r+0x15fa>
 80048d8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80048dc:	aa2d      	add	r2, sp, #180	; 0xb4
 80048de:	e7e9      	b.n	80048b4 <_vfprintf_r+0x1534>
 80048e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80048e2:	4651      	mov	r1, sl
 80048e4:	4648      	mov	r0, r9
 80048e6:	f003 f879 	bl	80079dc <__sprint_r>
 80048ea:	2800      	cmp	r0, #0
 80048ec:	d145      	bne.n	800497a <_vfprintf_r+0x15fa>
 80048ee:	f898 3000 	ldrb.w	r3, [r8]
 80048f2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80048f4:	aa2d      	add	r2, sp, #180	; 0xb4
 80048f6:	441f      	add	r7, r3
 80048f8:	e7a4      	b.n	8004844 <_vfprintf_r+0x14c4>
 80048fa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80048fc:	3b01      	subs	r3, #1
 80048fe:	930f      	str	r3, [sp, #60]	; 0x3c
 8004900:	e7ab      	b.n	800485a <_vfprintf_r+0x14da>
 8004902:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004904:	2b00      	cmp	r3, #0
 8004906:	d1f8      	bne.n	80048fa <_vfprintf_r+0x157a>
 8004908:	46b9      	mov	r9, r7
 800490a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800490c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800490e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8004912:	18fb      	adds	r3, r7, r3
 8004914:	4599      	cmp	r9, r3
 8004916:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800491a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800491e:	4693      	mov	fp, r2
 8004920:	460c      	mov	r4, r1
 8004922:	bf28      	it	cs
 8004924:	4699      	movcs	r9, r3
 8004926:	e424      	b.n	8004172 <_vfprintf_r+0xdf2>
 8004928:	3001      	adds	r0, #1
 800492a:	4429      	add	r1, r5
 800492c:	2807      	cmp	r0, #7
 800492e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8004932:	e9c2 6500 	strd	r6, r5, [r2]
 8004936:	dcd3      	bgt.n	80048e0 <_vfprintf_r+0x1560>
 8004938:	f898 3000 	ldrb.w	r3, [r8]
 800493c:	3208      	adds	r2, #8
 800493e:	441f      	add	r7, r3
 8004940:	e780      	b.n	8004844 <_vfprintf_r+0x14c4>
 8004942:	aa2a      	add	r2, sp, #168	; 0xa8
 8004944:	4651      	mov	r1, sl
 8004946:	4648      	mov	r0, r9
 8004948:	f003 f848 	bl	80079dc <__sprint_r>
 800494c:	b9a8      	cbnz	r0, 800497a <_vfprintf_r+0x15fa>
 800494e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004950:	aa2d      	add	r2, sp, #180	; 0xb4
 8004952:	e78e      	b.n	8004872 <_vfprintf_r+0x14f2>
 8004954:	aa2a      	add	r2, sp, #168	; 0xa8
 8004956:	4651      	mov	r1, sl
 8004958:	4648      	mov	r0, r9
 800495a:	f003 f83f 	bl	80079dc <__sprint_r>
 800495e:	b960      	cbnz	r0, 800497a <_vfprintf_r+0x15fa>
 8004960:	f898 3000 	ldrb.w	r3, [r8]
 8004964:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004966:	aa2d      	add	r2, sp, #180	; 0xb4
 8004968:	e798      	b.n	800489c <_vfprintf_r+0x151c>
 800496a:	4638      	mov	r0, r7
 800496c:	f7fb fe68 	bl	8000640 <strlen>
 8004970:	46a9      	mov	r9, r5
 8004972:	4603      	mov	r3, r0
 8004974:	9009      	str	r0, [sp, #36]	; 0x24
 8004976:	f7ff b8f4 	b.w	8003b62 <_vfprintf_r+0x7e2>
 800497a:	46d1      	mov	r9, sl
 800497c:	f7ff ba7a 	b.w	8003e74 <_vfprintf_r+0xaf4>
 8004980:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004982:	4619      	mov	r1, r3
 8004984:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004986:	4299      	cmp	r1, r3
 8004988:	f300 8082 	bgt.w	8004a90 <_vfprintf_r+0x1710>
 800498c:	07c4      	lsls	r4, r0, #31
 800498e:	f140 816b 	bpl.w	8004c68 <_vfprintf_r+0x18e8>
 8004992:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004994:	4413      	add	r3, r2
 8004996:	9309      	str	r3, [sp, #36]	; 0x24
 8004998:	0541      	lsls	r1, r0, #21
 800499a:	d503      	bpl.n	80049a4 <_vfprintf_r+0x1624>
 800499c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800499e:	2b00      	cmp	r3, #0
 80049a0:	f300 80e6 	bgt.w	8004b70 <_vfprintf_r+0x17f0>
 80049a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049a6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80049aa:	9304      	str	r3, [sp, #16]
 80049ac:	2667      	movs	r6, #103	; 0x67
 80049ae:	2300      	movs	r3, #0
 80049b0:	930f      	str	r3, [sp, #60]	; 0x3c
 80049b2:	9314      	str	r3, [sp, #80]	; 0x50
 80049b4:	e586      	b.n	80044c4 <_vfprintf_r+0x1144>
 80049b6:	222d      	movs	r2, #45	; 0x2d
 80049b8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80049bc:	f04f 0900 	mov.w	r9, #0
 80049c0:	f7fe be6c 	b.w	800369c <_vfprintf_r+0x31c>
 80049c4:	46a1      	mov	r9, r4
 80049c6:	f7ff ba55 	b.w	8003e74 <_vfprintf_r+0xaf4>
 80049ca:	900a      	str	r0, [sp, #40]	; 0x28
 80049cc:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80049d0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80049d4:	931f      	str	r3, [sp, #124]	; 0x7c
 80049d6:	232d      	movs	r3, #45	; 0x2d
 80049d8:	911e      	str	r1, [sp, #120]	; 0x78
 80049da:	930b      	str	r3, [sp, #44]	; 0x2c
 80049dc:	e619      	b.n	8004612 <_vfprintf_r+0x1292>
 80049de:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80049e0:	9328      	str	r3, [sp, #160]	; 0xa0
 80049e2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049e4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80049e8:	7bd9      	ldrb	r1, [r3, #15]
 80049ea:	4291      	cmp	r1, r2
 80049ec:	462b      	mov	r3, r5
 80049ee:	d109      	bne.n	8004a04 <_vfprintf_r+0x1684>
 80049f0:	2030      	movs	r0, #48	; 0x30
 80049f2:	f803 0c01 	strb.w	r0, [r3, #-1]
 80049f6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80049f8:	1e5a      	subs	r2, r3, #1
 80049fa:	9228      	str	r2, [sp, #160]	; 0xa0
 80049fc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004a00:	4291      	cmp	r1, r2
 8004a02:	d0f6      	beq.n	80049f2 <_vfprintf_r+0x1672>
 8004a04:	2a39      	cmp	r2, #57	; 0x39
 8004a06:	bf0b      	itete	eq
 8004a08:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8004a0a:	3201      	addne	r2, #1
 8004a0c:	7a92      	ldrbeq	r2, [r2, #10]
 8004a0e:	b2d2      	uxtbne	r2, r2
 8004a10:	f803 2c01 	strb.w	r2, [r3, #-1]
 8004a14:	e682      	b.n	800471c <_vfprintf_r+0x139c>
 8004a16:	f418 7f00 	tst.w	r8, #512	; 0x200
 8004a1a:	f43f ad9f 	beq.w	800455c <_vfprintf_r+0x11dc>
 8004a1e:	9a05      	ldr	r2, [sp, #20]
 8004a20:	701a      	strb	r2, [r3, #0]
 8004a22:	4657      	mov	r7, sl
 8004a24:	f7fe bf52 	b.w	80038cc <_vfprintf_r+0x54c>
 8004a28:	aa2a      	add	r2, sp, #168	; 0xa8
 8004a2a:	9907      	ldr	r1, [sp, #28]
 8004a2c:	9803      	ldr	r0, [sp, #12]
 8004a2e:	f002 ffd5 	bl	80079dc <__sprint_r>
 8004a32:	2800      	cmp	r0, #0
 8004a34:	f47f aa1c 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8004a38:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004a3a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004a3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004a42:	e571      	b.n	8004528 <_vfprintf_r+0x11a8>
 8004a44:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004a46:	2b00      	cmp	r3, #0
 8004a48:	f340 8164 	ble.w	8004d14 <_vfprintf_r+0x1994>
 8004a4c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004a4e:	f1b9 0f00 	cmp.w	r9, #0
 8004a52:	f040 8103 	bne.w	8004c5c <_vfprintf_r+0x18dc>
 8004a56:	07c6      	lsls	r6, r0, #31
 8004a58:	f100 8100 	bmi.w	8004c5c <_vfprintf_r+0x18dc>
 8004a5c:	9309      	str	r3, [sp, #36]	; 0x24
 8004a5e:	2666      	movs	r6, #102	; 0x66
 8004a60:	0543      	lsls	r3, r0, #21
 8004a62:	f100 8086 	bmi.w	8004b72 <_vfprintf_r+0x17f2>
 8004a66:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a68:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004a6c:	9304      	str	r3, [sp, #16]
 8004a6e:	e79e      	b.n	80049ae <_vfprintf_r+0x162e>
 8004a70:	aa2a      	add	r2, sp, #168	; 0xa8
 8004a72:	9907      	ldr	r1, [sp, #28]
 8004a74:	9803      	ldr	r0, [sp, #12]
 8004a76:	f002 ffb1 	bl	80079dc <__sprint_r>
 8004a7a:	2800      	cmp	r0, #0
 8004a7c:	f47f a9f8 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8004a80:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004a82:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004a84:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004a86:	1ad3      	subs	r3, r2, r3
 8004a88:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004a8c:	f7ff bb90 	b.w	80041b0 <_vfprintf_r+0xe30>
 8004a90:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004a92:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004a94:	4413      	add	r3, r2
 8004a96:	9309      	str	r3, [sp, #36]	; 0x24
 8004a98:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004a9a:	2b00      	cmp	r3, #0
 8004a9c:	f340 8149 	ble.w	8004d32 <_vfprintf_r+0x19b2>
 8004aa0:	2667      	movs	r6, #103	; 0x67
 8004aa2:	e7dd      	b.n	8004a60 <_vfprintf_r+0x16e0>
 8004aa4:	2330      	movs	r3, #48	; 0x30
 8004aa6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004aaa:	2358      	movs	r3, #88	; 0x58
 8004aac:	e595      	b.n	80045da <_vfprintf_r+0x125a>
 8004aae:	9803      	ldr	r0, [sp, #12]
 8004ab0:	aa2a      	add	r2, sp, #168	; 0xa8
 8004ab2:	4649      	mov	r1, r9
 8004ab4:	f002 ff92 	bl	80079dc <__sprint_r>
 8004ab8:	2800      	cmp	r0, #0
 8004aba:	f47f a9e0 	bne.w	8003e7e <_vfprintf_r+0xafe>
 8004abe:	f7fe bf0f 	b.w	80038e0 <_vfprintf_r+0x560>
 8004ac2:	a824      	add	r0, sp, #144	; 0x90
 8004ac4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004ac8:	f002 fe90 	bl	80077ec <frexp>
 8004acc:	2200      	movs	r2, #0
 8004ace:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8004ad2:	ec51 0b10 	vmov	r0, r1, d0
 8004ad6:	f7fc f82f 	bl	8000b38 <__aeabi_dmul>
 8004ada:	2200      	movs	r2, #0
 8004adc:	2300      	movs	r3, #0
 8004ade:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004ae2:	f7fc fa91 	bl	8001008 <__aeabi_dcmpeq>
 8004ae6:	b108      	cbz	r0, 8004aec <_vfprintf_r+0x176c>
 8004ae8:	2301      	movs	r3, #1
 8004aea:	9324      	str	r3, [sp, #144]	; 0x90
 8004aec:	4b02      	ldr	r3, [pc, #8]	; (8004af8 <_vfprintf_r+0x1778>)
 8004aee:	9309      	str	r3, [sp, #36]	; 0x24
 8004af0:	e5ac      	b.n	800464c <_vfprintf_r+0x12cc>
 8004af2:	bf00      	nop
 8004af4:	08008cd0 	.word	0x08008cd0
 8004af8:	08008c8c 	.word	0x08008c8c
 8004afc:	425d      	negs	r5, r3
 8004afe:	3310      	adds	r3, #16
 8004b00:	4bb9      	ldr	r3, [pc, #740]	; (8004de8 <_vfprintf_r+0x1a68>)
 8004b02:	f280 8097 	bge.w	8004c34 <_vfprintf_r+0x18b4>
 8004b06:	4619      	mov	r1, r3
 8004b08:	2610      	movs	r6, #16
 8004b0a:	4623      	mov	r3, r4
 8004b0c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004b10:	460c      	mov	r4, r1
 8004b12:	e005      	b.n	8004b20 <_vfprintf_r+0x17a0>
 8004b14:	f10b 0b08 	add.w	fp, fp, #8
 8004b18:	3d10      	subs	r5, #16
 8004b1a:	2d10      	cmp	r5, #16
 8004b1c:	f340 8087 	ble.w	8004c2e <_vfprintf_r+0x18ae>
 8004b20:	3201      	adds	r2, #1
 8004b22:	3310      	adds	r3, #16
 8004b24:	2a07      	cmp	r2, #7
 8004b26:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8004b2a:	e9cb 4600 	strd	r4, r6, [fp]
 8004b2e:	ddf1      	ble.n	8004b14 <_vfprintf_r+0x1794>
 8004b30:	aa2a      	add	r2, sp, #168	; 0xa8
 8004b32:	9907      	ldr	r1, [sp, #28]
 8004b34:	4648      	mov	r0, r9
 8004b36:	f002 ff51 	bl	80079dc <__sprint_r>
 8004b3a:	2800      	cmp	r0, #0
 8004b3c:	f47f a998 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8004b40:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004b44:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004b48:	e7e6      	b.n	8004b18 <_vfprintf_r+0x1798>
 8004b4a:	f109 0101 	add.w	r1, r9, #1
 8004b4e:	9803      	ldr	r0, [sp, #12]
 8004b50:	f001 fe80 	bl	8006854 <_malloc_r>
 8004b54:	4607      	mov	r7, r0
 8004b56:	2800      	cmp	r0, #0
 8004b58:	f000 813b 	beq.w	8004dd2 <_vfprintf_r+0x1a52>
 8004b5c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004b60:	930e      	str	r3, [sp, #56]	; 0x38
 8004b62:	f026 0320 	bic.w	r3, r6, #32
 8004b66:	9304      	str	r3, [sp, #16]
 8004b68:	46a0      	mov	r8, r4
 8004b6a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004b6c:	900a      	str	r0, [sp, #40]	; 0x28
 8004b6e:	e547      	b.n	8004600 <_vfprintf_r+0x1280>
 8004b70:	2667      	movs	r6, #103	; 0x67
 8004b72:	981a      	ldr	r0, [sp, #104]	; 0x68
 8004b74:	2200      	movs	r2, #0
 8004b76:	920f      	str	r2, [sp, #60]	; 0x3c
 8004b78:	9214      	str	r2, [sp, #80]	; 0x50
 8004b7a:	7803      	ldrb	r3, [r0, #0]
 8004b7c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004b7e:	2bff      	cmp	r3, #255	; 0xff
 8004b80:	d00c      	beq.n	8004b9c <_vfprintf_r+0x181c>
 8004b82:	4293      	cmp	r3, r2
 8004b84:	da0a      	bge.n	8004b9c <_vfprintf_r+0x181c>
 8004b86:	7841      	ldrb	r1, [r0, #1]
 8004b88:	1ad2      	subs	r2, r2, r3
 8004b8a:	b1a9      	cbz	r1, 8004bb8 <_vfprintf_r+0x1838>
 8004b8c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004b8e:	3301      	adds	r3, #1
 8004b90:	9314      	str	r3, [sp, #80]	; 0x50
 8004b92:	460b      	mov	r3, r1
 8004b94:	2bff      	cmp	r3, #255	; 0xff
 8004b96:	f100 0001 	add.w	r0, r0, #1
 8004b9a:	d1f2      	bne.n	8004b82 <_vfprintf_r+0x1802>
 8004b9c:	9211      	str	r2, [sp, #68]	; 0x44
 8004b9e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004ba0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004ba2:	9909      	ldr	r1, [sp, #36]	; 0x24
 8004ba4:	901a      	str	r0, [sp, #104]	; 0x68
 8004ba6:	4413      	add	r3, r2
 8004ba8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004baa:	fb02 1303 	mla	r3, r2, r3, r1
 8004bae:	9309      	str	r3, [sp, #36]	; 0x24
 8004bb0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004bb4:	9304      	str	r3, [sp, #16]
 8004bb6:	e485      	b.n	80044c4 <_vfprintf_r+0x1144>
 8004bb8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004bba:	3101      	adds	r1, #1
 8004bbc:	910f      	str	r1, [sp, #60]	; 0x3c
 8004bbe:	e7de      	b.n	8004b7e <_vfprintf_r+0x17fe>
 8004bc0:	aa28      	add	r2, sp, #160	; 0xa0
 8004bc2:	ab25      	add	r3, sp, #148	; 0x94
 8004bc4:	e9cd 3200 	strd	r3, r2, [sp]
 8004bc8:	2103      	movs	r1, #3
 8004bca:	ab24      	add	r3, sp, #144	; 0x90
 8004bcc:	464a      	mov	r2, r9
 8004bce:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004bd2:	9803      	ldr	r0, [sp, #12]
 8004bd4:	f000 fa5c 	bl	8005090 <_dtoa_r>
 8004bd8:	464d      	mov	r5, r9
 8004bda:	4607      	mov	r7, r0
 8004bdc:	eb00 0409 	add.w	r4, r0, r9
 8004be0:	783b      	ldrb	r3, [r7, #0]
 8004be2:	2b30      	cmp	r3, #48	; 0x30
 8004be4:	f000 80be 	beq.w	8004d64 <_vfprintf_r+0x19e4>
 8004be8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8004bea:	442c      	add	r4, r5
 8004bec:	2200      	movs	r2, #0
 8004bee:	2300      	movs	r3, #0
 8004bf0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004bf4:	f7fc fa08 	bl	8001008 <__aeabi_dcmpeq>
 8004bf8:	b108      	cbz	r0, 8004bfe <_vfprintf_r+0x187e>
 8004bfa:	4623      	mov	r3, r4
 8004bfc:	e413      	b.n	8004426 <_vfprintf_r+0x10a6>
 8004bfe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004c00:	42a3      	cmp	r3, r4
 8004c02:	f4bf ac10 	bcs.w	8004426 <_vfprintf_r+0x10a6>
 8004c06:	2130      	movs	r1, #48	; 0x30
 8004c08:	1c5a      	adds	r2, r3, #1
 8004c0a:	9228      	str	r2, [sp, #160]	; 0xa0
 8004c0c:	7019      	strb	r1, [r3, #0]
 8004c0e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004c10:	429c      	cmp	r4, r3
 8004c12:	d8f9      	bhi.n	8004c08 <_vfprintf_r+0x1888>
 8004c14:	e407      	b.n	8004426 <_vfprintf_r+0x10a6>
 8004c16:	197c      	adds	r4, r7, r5
 8004c18:	e7e8      	b.n	8004bec <_vfprintf_r+0x186c>
 8004c1a:	f1b9 0f00 	cmp.w	r9, #0
 8004c1e:	f000 8092 	beq.w	8004d46 <_vfprintf_r+0x19c6>
 8004c22:	900a      	str	r0, [sp, #40]	; 0x28
 8004c24:	e4ec      	b.n	8004600 <_vfprintf_r+0x1280>
 8004c26:	900a      	str	r0, [sp, #40]	; 0x28
 8004c28:	f04f 0906 	mov.w	r9, #6
 8004c2c:	e4e8      	b.n	8004600 <_vfprintf_r+0x1280>
 8004c2e:	4621      	mov	r1, r4
 8004c30:	461c      	mov	r4, r3
 8004c32:	460b      	mov	r3, r1
 8004c34:	3201      	adds	r2, #1
 8004c36:	442c      	add	r4, r5
 8004c38:	2a07      	cmp	r2, #7
 8004c3a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004c3e:	e9cb 3500 	strd	r3, r5, [fp]
 8004c42:	f300 80a9 	bgt.w	8004d98 <_vfprintf_r+0x1a18>
 8004c46:	f10b 0b08 	add.w	fp, fp, #8
 8004c4a:	e470      	b.n	800452e <_vfprintf_r+0x11ae>
 8004c4c:	469a      	mov	sl, r3
 8004c4e:	f7ff bb37 	b.w	80042c0 <_vfprintf_r+0xf40>
 8004c52:	2301      	movs	r3, #1
 8004c54:	9324      	str	r3, [sp, #144]	; 0x90
 8004c56:	4b65      	ldr	r3, [pc, #404]	; (8004dec <_vfprintf_r+0x1a6c>)
 8004c58:	9309      	str	r3, [sp, #36]	; 0x24
 8004c5a:	e4f7      	b.n	800464c <_vfprintf_r+0x12cc>
 8004c5c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004c5e:	4413      	add	r3, r2
 8004c60:	444b      	add	r3, r9
 8004c62:	9309      	str	r3, [sp, #36]	; 0x24
 8004c64:	2666      	movs	r6, #102	; 0x66
 8004c66:	e6fb      	b.n	8004a60 <_vfprintf_r+0x16e0>
 8004c68:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004c6a:	9309      	str	r3, [sp, #36]	; 0x24
 8004c6c:	e694      	b.n	8004998 <_vfprintf_r+0x1618>
 8004c6e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8004c72:	4664      	mov	r4, ip
 8004c74:	4d5e      	ldr	r5, [pc, #376]	; (8004df0 <_vfprintf_r+0x1a70>)
 8004c76:	e000      	b.n	8004c7a <_vfprintf_r+0x18fa>
 8004c78:	4614      	mov	r4, r2
 8004c7a:	fba5 1203 	umull	r1, r2, r5, r3
 8004c7e:	08d2      	lsrs	r2, r2, #3
 8004c80:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8004c84:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004c88:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004c8c:	4613      	mov	r3, r2
 8004c8e:	2b09      	cmp	r3, #9
 8004c90:	f804 1c01 	strb.w	r1, [r4, #-1]
 8004c94:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004c98:	dcee      	bgt.n	8004c78 <_vfprintf_r+0x18f8>
 8004c9a:	3330      	adds	r3, #48	; 0x30
 8004c9c:	3c02      	subs	r4, #2
 8004c9e:	b2db      	uxtb	r3, r3
 8004ca0:	45a4      	cmp	ip, r4
 8004ca2:	f802 3c01 	strb.w	r3, [r2, #-1]
 8004ca6:	f240 8090 	bls.w	8004dca <_vfprintf_r+0x1a4a>
 8004caa:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004cae:	4611      	mov	r1, r2
 8004cb0:	e001      	b.n	8004cb6 <_vfprintf_r+0x1936>
 8004cb2:	f811 3b01 	ldrb.w	r3, [r1], #1
 8004cb6:	f804 3b01 	strb.w	r3, [r4], #1
 8004cba:	458c      	cmp	ip, r1
 8004cbc:	d1f9      	bne.n	8004cb2 <_vfprintf_r+0x1932>
 8004cbe:	ab2a      	add	r3, sp, #168	; 0xa8
 8004cc0:	1a9b      	subs	r3, r3, r2
 8004cc2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004cc6:	4413      	add	r3, r2
 8004cc8:	f7ff bbe3 	b.w	8004492 <_vfprintf_r+0x1112>
 8004ccc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004cce:	4f49      	ldr	r7, [pc, #292]	; (8004df4 <_vfprintf_r+0x1a74>)
 8004cd0:	2b00      	cmp	r3, #0
 8004cd2:	bfb6      	itet	lt
 8004cd4:	222d      	movlt	r2, #45	; 0x2d
 8004cd6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004cda:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004cde:	4b46      	ldr	r3, [pc, #280]	; (8004df8 <_vfprintf_r+0x1a78>)
 8004ce0:	f7fe bf02 	b.w	8003ae8 <_vfprintf_r+0x768>
 8004ce4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004ce8:	f7ff b8c9 	b.w	8003e7e <_vfprintf_r+0xafe>
 8004cec:	aa28      	add	r2, sp, #160	; 0xa0
 8004cee:	ab25      	add	r3, sp, #148	; 0x94
 8004cf0:	e9cd 3200 	strd	r3, r2, [sp]
 8004cf4:	2103      	movs	r1, #3
 8004cf6:	ab24      	add	r3, sp, #144	; 0x90
 8004cf8:	464a      	mov	r2, r9
 8004cfa:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004cfe:	9803      	ldr	r0, [sp, #12]
 8004d00:	f000 f9c6 	bl	8005090 <_dtoa_r>
 8004d04:	464d      	mov	r5, r9
 8004d06:	4607      	mov	r7, r0
 8004d08:	2e46      	cmp	r6, #70	; 0x46
 8004d0a:	eb07 0405 	add.w	r4, r7, r5
 8004d0e:	f43f af67 	beq.w	8004be0 <_vfprintf_r+0x1860>
 8004d12:	e76b      	b.n	8004bec <_vfprintf_r+0x186c>
 8004d14:	f1b9 0f00 	cmp.w	r9, #0
 8004d18:	d131      	bne.n	8004d7e <_vfprintf_r+0x19fe>
 8004d1a:	07c5      	lsls	r5, r0, #31
 8004d1c:	d42f      	bmi.n	8004d7e <_vfprintf_r+0x19fe>
 8004d1e:	2301      	movs	r3, #1
 8004d20:	9304      	str	r3, [sp, #16]
 8004d22:	9309      	str	r3, [sp, #36]	; 0x24
 8004d24:	2666      	movs	r6, #102	; 0x66
 8004d26:	e642      	b.n	80049ae <_vfprintf_r+0x162e>
 8004d28:	07c3      	lsls	r3, r0, #31
 8004d2a:	f57f abbf 	bpl.w	80044ac <_vfprintf_r+0x112c>
 8004d2e:	f7ff bbb9 	b.w	80044a4 <_vfprintf_r+0x1124>
 8004d32:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004d34:	f1c3 0301 	rsb	r3, r3, #1
 8004d38:	441a      	add	r2, r3
 8004d3a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004d3e:	9209      	str	r2, [sp, #36]	; 0x24
 8004d40:	9304      	str	r3, [sp, #16]
 8004d42:	2667      	movs	r6, #103	; 0x67
 8004d44:	e633      	b.n	80049ae <_vfprintf_r+0x162e>
 8004d46:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004d4a:	f04f 0901 	mov.w	r9, #1
 8004d4e:	e457      	b.n	8004600 <_vfprintf_r+0x1280>
 8004d50:	465a      	mov	r2, fp
 8004d52:	e511      	b.n	8004778 <_vfprintf_r+0x13f8>
 8004d54:	2e47      	cmp	r6, #71	; 0x47
 8004d56:	f47f af5e 	bne.w	8004c16 <_vfprintf_r+0x1896>
 8004d5a:	f018 0f01 	tst.w	r8, #1
 8004d5e:	f43f ab61 	beq.w	8004424 <_vfprintf_r+0x10a4>
 8004d62:	e7d1      	b.n	8004d08 <_vfprintf_r+0x1988>
 8004d64:	2200      	movs	r2, #0
 8004d66:	2300      	movs	r3, #0
 8004d68:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004d6c:	f7fc f94c 	bl	8001008 <__aeabi_dcmpeq>
 8004d70:	2800      	cmp	r0, #0
 8004d72:	f47f af39 	bne.w	8004be8 <_vfprintf_r+0x1868>
 8004d76:	f1c5 0501 	rsb	r5, r5, #1
 8004d7a:	9524      	str	r5, [sp, #144]	; 0x90
 8004d7c:	e735      	b.n	8004bea <_vfprintf_r+0x186a>
 8004d7e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004d80:	3301      	adds	r3, #1
 8004d82:	444b      	add	r3, r9
 8004d84:	9309      	str	r3, [sp, #36]	; 0x24
 8004d86:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004d8a:	9304      	str	r3, [sp, #16]
 8004d8c:	2666      	movs	r6, #102	; 0x66
 8004d8e:	e60e      	b.n	80049ae <_vfprintf_r+0x162e>
 8004d90:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004d94:	f7ff bb7a 	b.w	800448c <_vfprintf_r+0x110c>
 8004d98:	aa2a      	add	r2, sp, #168	; 0xa8
 8004d9a:	9907      	ldr	r1, [sp, #28]
 8004d9c:	9803      	ldr	r0, [sp, #12]
 8004d9e:	f002 fe1d 	bl	80079dc <__sprint_r>
 8004da2:	2800      	cmp	r0, #0
 8004da4:	f47f a864 	bne.w	8003e70 <_vfprintf_r+0xaf0>
 8004da8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004dac:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004db0:	f7ff bbbd 	b.w	800452e <_vfprintf_r+0x11ae>
 8004db4:	9908      	ldr	r1, [sp, #32]
 8004db6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004dba:	680b      	ldr	r3, [r1, #0]
 8004dbc:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004dc0:	1d0b      	adds	r3, r1, #4
 8004dc2:	4692      	mov	sl, r2
 8004dc4:	9308      	str	r3, [sp, #32]
 8004dc6:	f7fe bb59 	b.w	800347c <_vfprintf_r+0xfc>
 8004dca:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004dce:	f7ff bb60 	b.w	8004492 <_vfprintf_r+0x1112>
 8004dd2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004dd6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004dda:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004dde:	f8a9 300c 	strh.w	r3, [r9, #12]
 8004de2:	f7ff b84c 	b.w	8003e7e <_vfprintf_r+0xafe>
 8004de6:	bf00      	nop
 8004de8:	08008cd0 	.word	0x08008cd0
 8004dec:	08008ca0 	.word	0x08008ca0
 8004df0:	cccccccd 	.word	0xcccccccd
 8004df4:	08008c88 	.word	0x08008c88
 8004df8:	08008c84 	.word	0x08008c84

08004dfc <__sbprintf>:
 8004dfc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004e00:	460c      	mov	r4, r1
 8004e02:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8004e06:	8989      	ldrh	r1, [r1, #12]
 8004e08:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004e0a:	89e5      	ldrh	r5, [r4, #14]
 8004e0c:	9619      	str	r6, [sp, #100]	; 0x64
 8004e0e:	f021 0102 	bic.w	r1, r1, #2
 8004e12:	4606      	mov	r6, r0
 8004e14:	69e0      	ldr	r0, [r4, #28]
 8004e16:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004e1a:	4617      	mov	r7, r2
 8004e1c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004e20:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8004e22:	f8ad 500e 	strh.w	r5, [sp, #14]
 8004e26:	4698      	mov	r8, r3
 8004e28:	ad1a      	add	r5, sp, #104	; 0x68
 8004e2a:	2300      	movs	r3, #0
 8004e2c:	9007      	str	r0, [sp, #28]
 8004e2e:	a816      	add	r0, sp, #88	; 0x58
 8004e30:	9209      	str	r2, [sp, #36]	; 0x24
 8004e32:	9306      	str	r3, [sp, #24]
 8004e34:	9500      	str	r5, [sp, #0]
 8004e36:	9504      	str	r5, [sp, #16]
 8004e38:	9102      	str	r1, [sp, #8]
 8004e3a:	9105      	str	r1, [sp, #20]
 8004e3c:	f001 fc8a 	bl	8006754 <__retarget_lock_init_recursive>
 8004e40:	4643      	mov	r3, r8
 8004e42:	463a      	mov	r2, r7
 8004e44:	4669      	mov	r1, sp
 8004e46:	4630      	mov	r0, r6
 8004e48:	f7fe fa9a 	bl	8003380 <_vfprintf_r>
 8004e4c:	1e05      	subs	r5, r0, #0
 8004e4e:	db07      	blt.n	8004e60 <__sbprintf+0x64>
 8004e50:	4630      	mov	r0, r6
 8004e52:	4669      	mov	r1, sp
 8004e54:	f001 f8d6 	bl	8006004 <_fflush_r>
 8004e58:	2800      	cmp	r0, #0
 8004e5a:	bf18      	it	ne
 8004e5c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004e60:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004e64:	065b      	lsls	r3, r3, #25
 8004e66:	d503      	bpl.n	8004e70 <__sbprintf+0x74>
 8004e68:	89a3      	ldrh	r3, [r4, #12]
 8004e6a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004e6e:	81a3      	strh	r3, [r4, #12]
 8004e70:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004e72:	f001 fc71 	bl	8006758 <__retarget_lock_close_recursive>
 8004e76:	4628      	mov	r0, r5
 8004e78:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004e7c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004e80 <__swsetup_r>:
 8004e80:	b538      	push	{r3, r4, r5, lr}
 8004e82:	4b31      	ldr	r3, [pc, #196]	; (8004f48 <__swsetup_r+0xc8>)
 8004e84:	681b      	ldr	r3, [r3, #0]
 8004e86:	4605      	mov	r5, r0
 8004e88:	460c      	mov	r4, r1
 8004e8a:	b113      	cbz	r3, 8004e92 <__swsetup_r+0x12>
 8004e8c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004e8e:	2a00      	cmp	r2, #0
 8004e90:	d03a      	beq.n	8004f08 <__swsetup_r+0x88>
 8004e92:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004e96:	b293      	uxth	r3, r2
 8004e98:	0718      	lsls	r0, r3, #28
 8004e9a:	d50c      	bpl.n	8004eb6 <__swsetup_r+0x36>
 8004e9c:	6920      	ldr	r0, [r4, #16]
 8004e9e:	b1a8      	cbz	r0, 8004ecc <__swsetup_r+0x4c>
 8004ea0:	f013 0201 	ands.w	r2, r3, #1
 8004ea4:	d020      	beq.n	8004ee8 <__swsetup_r+0x68>
 8004ea6:	6963      	ldr	r3, [r4, #20]
 8004ea8:	2200      	movs	r2, #0
 8004eaa:	425b      	negs	r3, r3
 8004eac:	61a3      	str	r3, [r4, #24]
 8004eae:	60a2      	str	r2, [r4, #8]
 8004eb0:	b300      	cbz	r0, 8004ef4 <__swsetup_r+0x74>
 8004eb2:	2000      	movs	r0, #0
 8004eb4:	bd38      	pop	{r3, r4, r5, pc}
 8004eb6:	06d9      	lsls	r1, r3, #27
 8004eb8:	d53e      	bpl.n	8004f38 <__swsetup_r+0xb8>
 8004eba:	0758      	lsls	r0, r3, #29
 8004ebc:	d428      	bmi.n	8004f10 <__swsetup_r+0x90>
 8004ebe:	6920      	ldr	r0, [r4, #16]
 8004ec0:	f042 0308 	orr.w	r3, r2, #8
 8004ec4:	81a3      	strh	r3, [r4, #12]
 8004ec6:	b29b      	uxth	r3, r3
 8004ec8:	2800      	cmp	r0, #0
 8004eca:	d1e9      	bne.n	8004ea0 <__swsetup_r+0x20>
 8004ecc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004ed0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8004ed4:	d0e4      	beq.n	8004ea0 <__swsetup_r+0x20>
 8004ed6:	4628      	mov	r0, r5
 8004ed8:	4621      	mov	r1, r4
 8004eda:	f001 fc71 	bl	80067c0 <__smakebuf_r>
 8004ede:	89a3      	ldrh	r3, [r4, #12]
 8004ee0:	6920      	ldr	r0, [r4, #16]
 8004ee2:	f013 0201 	ands.w	r2, r3, #1
 8004ee6:	d1de      	bne.n	8004ea6 <__swsetup_r+0x26>
 8004ee8:	0799      	lsls	r1, r3, #30
 8004eea:	bf58      	it	pl
 8004eec:	6962      	ldrpl	r2, [r4, #20]
 8004eee:	60a2      	str	r2, [r4, #8]
 8004ef0:	2800      	cmp	r0, #0
 8004ef2:	d1de      	bne.n	8004eb2 <__swsetup_r+0x32>
 8004ef4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004ef8:	061a      	lsls	r2, r3, #24
 8004efa:	d5db      	bpl.n	8004eb4 <__swsetup_r+0x34>
 8004efc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f00:	81a3      	strh	r3, [r4, #12]
 8004f02:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f06:	bd38      	pop	{r3, r4, r5, pc}
 8004f08:	4618      	mov	r0, r3
 8004f0a:	f001 f8d7 	bl	80060bc <__sinit>
 8004f0e:	e7c0      	b.n	8004e92 <__swsetup_r+0x12>
 8004f10:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004f12:	b151      	cbz	r1, 8004f2a <__swsetup_r+0xaa>
 8004f14:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004f18:	4299      	cmp	r1, r3
 8004f1a:	d004      	beq.n	8004f26 <__swsetup_r+0xa6>
 8004f1c:	4628      	mov	r0, r5
 8004f1e:	f001 f96f 	bl	8006200 <_free_r>
 8004f22:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f26:	2300      	movs	r3, #0
 8004f28:	6323      	str	r3, [r4, #48]	; 0x30
 8004f2a:	2300      	movs	r3, #0
 8004f2c:	6920      	ldr	r0, [r4, #16]
 8004f2e:	6063      	str	r3, [r4, #4]
 8004f30:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004f34:	6020      	str	r0, [r4, #0]
 8004f36:	e7c3      	b.n	8004ec0 <__swsetup_r+0x40>
 8004f38:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004f3c:	2309      	movs	r3, #9
 8004f3e:	602b      	str	r3, [r5, #0]
 8004f40:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f44:	81a2      	strh	r2, [r4, #12]
 8004f46:	bd38      	pop	{r3, r4, r5, pc}
 8004f48:	20000018 	.word	0x20000018

08004f4c <register_fini>:
 8004f4c:	4b02      	ldr	r3, [pc, #8]	; (8004f58 <register_fini+0xc>)
 8004f4e:	b113      	cbz	r3, 8004f56 <register_fini+0xa>
 8004f50:	4802      	ldr	r0, [pc, #8]	; (8004f5c <register_fini+0x10>)
 8004f52:	f000 b805 	b.w	8004f60 <atexit>
 8004f56:	4770      	bx	lr
 8004f58:	00000000 	.word	0x00000000
 8004f5c:	0800612d 	.word	0x0800612d

08004f60 <atexit>:
 8004f60:	2300      	movs	r3, #0
 8004f62:	4601      	mov	r1, r0
 8004f64:	461a      	mov	r2, r3
 8004f66:	4618      	mov	r0, r3
 8004f68:	f002 bd58 	b.w	8007a1c <__register_exitproc>

08004f6c <quorem>:
 8004f6c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004f70:	6903      	ldr	r3, [r0, #16]
 8004f72:	690f      	ldr	r7, [r1, #16]
 8004f74:	42bb      	cmp	r3, r7
 8004f76:	b083      	sub	sp, #12
 8004f78:	f2c0 8086 	blt.w	8005088 <quorem+0x11c>
 8004f7c:	3f01      	subs	r7, #1
 8004f7e:	f101 0914 	add.w	r9, r1, #20
 8004f82:	f100 0a14 	add.w	sl, r0, #20
 8004f86:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004f8a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004f8e:	00bc      	lsls	r4, r7, #2
 8004f90:	3201      	adds	r2, #1
 8004f92:	fbb3 f8f2 	udiv	r8, r3, r2
 8004f96:	eb0a 0304 	add.w	r3, sl, r4
 8004f9a:	9400      	str	r4, [sp, #0]
 8004f9c:	eb09 0b04 	add.w	fp, r9, r4
 8004fa0:	9301      	str	r3, [sp, #4]
 8004fa2:	f1b8 0f00 	cmp.w	r8, #0
 8004fa6:	d038      	beq.n	800501a <quorem+0xae>
 8004fa8:	2500      	movs	r5, #0
 8004faa:	462e      	mov	r6, r5
 8004fac:	46ce      	mov	lr, r9
 8004fae:	46d4      	mov	ip, sl
 8004fb0:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004fb4:	f8dc 3000 	ldr.w	r3, [ip]
 8004fb8:	b2a2      	uxth	r2, r4
 8004fba:	fb08 5502 	mla	r5, r8, r2, r5
 8004fbe:	0c22      	lsrs	r2, r4, #16
 8004fc0:	0c2c      	lsrs	r4, r5, #16
 8004fc2:	fb08 4202 	mla	r2, r8, r2, r4
 8004fc6:	b2ad      	uxth	r5, r5
 8004fc8:	1b75      	subs	r5, r6, r5
 8004fca:	b296      	uxth	r6, r2
 8004fcc:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004fd0:	fa15 f383 	uxtah	r3, r5, r3
 8004fd4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004fd8:	b29b      	uxth	r3, r3
 8004fda:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004fde:	45f3      	cmp	fp, lr
 8004fe0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004fe4:	f84c 3b04 	str.w	r3, [ip], #4
 8004fe8:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004fec:	d2e0      	bcs.n	8004fb0 <quorem+0x44>
 8004fee:	9b00      	ldr	r3, [sp, #0]
 8004ff0:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004ff4:	b98b      	cbnz	r3, 800501a <quorem+0xae>
 8004ff6:	9a01      	ldr	r2, [sp, #4]
 8004ff8:	1f13      	subs	r3, r2, #4
 8004ffa:	459a      	cmp	sl, r3
 8004ffc:	d20c      	bcs.n	8005018 <quorem+0xac>
 8004ffe:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8005002:	b94b      	cbnz	r3, 8005018 <quorem+0xac>
 8005004:	f1a2 0308 	sub.w	r3, r2, #8
 8005008:	e002      	b.n	8005010 <quorem+0xa4>
 800500a:	681a      	ldr	r2, [r3, #0]
 800500c:	3b04      	subs	r3, #4
 800500e:	b91a      	cbnz	r2, 8005018 <quorem+0xac>
 8005010:	459a      	cmp	sl, r3
 8005012:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8005016:	d3f8      	bcc.n	800500a <quorem+0x9e>
 8005018:	6107      	str	r7, [r0, #16]
 800501a:	4604      	mov	r4, r0
 800501c:	f002 f944 	bl	80072a8 <__mcmp>
 8005020:	2800      	cmp	r0, #0
 8005022:	db2d      	blt.n	8005080 <quorem+0x114>
 8005024:	f108 0801 	add.w	r8, r8, #1
 8005028:	4655      	mov	r5, sl
 800502a:	2300      	movs	r3, #0
 800502c:	f859 1b04 	ldr.w	r1, [r9], #4
 8005030:	6828      	ldr	r0, [r5, #0]
 8005032:	b28a      	uxth	r2, r1
 8005034:	1a9a      	subs	r2, r3, r2
 8005036:	0c0b      	lsrs	r3, r1, #16
 8005038:	fa12 f280 	uxtah	r2, r2, r0
 800503c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8005040:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8005044:	b292      	uxth	r2, r2
 8005046:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800504a:	45cb      	cmp	fp, r9
 800504c:	f845 2b04 	str.w	r2, [r5], #4
 8005050:	ea4f 4323 	mov.w	r3, r3, asr #16
 8005054:	d2ea      	bcs.n	800502c <quorem+0xc0>
 8005056:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800505a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800505e:	b97a      	cbnz	r2, 8005080 <quorem+0x114>
 8005060:	1f1a      	subs	r2, r3, #4
 8005062:	4592      	cmp	sl, r2
 8005064:	d20b      	bcs.n	800507e <quorem+0x112>
 8005066:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800506a:	b942      	cbnz	r2, 800507e <quorem+0x112>
 800506c:	3b08      	subs	r3, #8
 800506e:	e002      	b.n	8005076 <quorem+0x10a>
 8005070:	681a      	ldr	r2, [r3, #0]
 8005072:	3b04      	subs	r3, #4
 8005074:	b91a      	cbnz	r2, 800507e <quorem+0x112>
 8005076:	459a      	cmp	sl, r3
 8005078:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800507c:	d3f8      	bcc.n	8005070 <quorem+0x104>
 800507e:	6127      	str	r7, [r4, #16]
 8005080:	4640      	mov	r0, r8
 8005082:	b003      	add	sp, #12
 8005084:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005088:	2000      	movs	r0, #0
 800508a:	b003      	add	sp, #12
 800508c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08005090 <_dtoa_r>:
 8005090:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005094:	ec55 4b10 	vmov	r4, r5, d0
 8005098:	b09b      	sub	sp, #108	; 0x6c
 800509a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800509c:	9102      	str	r1, [sp, #8]
 800509e:	4681      	mov	r9, r0
 80050a0:	9207      	str	r2, [sp, #28]
 80050a2:	9305      	str	r3, [sp, #20]
 80050a4:	e9cd 4500 	strd	r4, r5, [sp]
 80050a8:	b156      	cbz	r6, 80050c0 <_dtoa_r+0x30>
 80050aa:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80050ac:	6072      	str	r2, [r6, #4]
 80050ae:	2301      	movs	r3, #1
 80050b0:	4093      	lsls	r3, r2
 80050b2:	60b3      	str	r3, [r6, #8]
 80050b4:	4631      	mov	r1, r6
 80050b6:	f001 ff07 	bl	8006ec8 <_Bfree>
 80050ba:	2300      	movs	r3, #0
 80050bc:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80050c0:	f1b5 0800 	subs.w	r8, r5, #0
 80050c4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80050c6:	bfb4      	ite	lt
 80050c8:	2301      	movlt	r3, #1
 80050ca:	2300      	movge	r3, #0
 80050cc:	6013      	str	r3, [r2, #0]
 80050ce:	4b76      	ldr	r3, [pc, #472]	; (80052a8 <_dtoa_r+0x218>)
 80050d0:	bfbc      	itt	lt
 80050d2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80050d6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80050da:	ea33 0308 	bics.w	r3, r3, r8
 80050de:	f000 80a6 	beq.w	800522e <_dtoa_r+0x19e>
 80050e2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80050e6:	2200      	movs	r2, #0
 80050e8:	2300      	movs	r3, #0
 80050ea:	4630      	mov	r0, r6
 80050ec:	4639      	mov	r1, r7
 80050ee:	f7fb ff8b 	bl	8001008 <__aeabi_dcmpeq>
 80050f2:	4605      	mov	r5, r0
 80050f4:	b178      	cbz	r0, 8005116 <_dtoa_r+0x86>
 80050f6:	9a05      	ldr	r2, [sp, #20]
 80050f8:	2301      	movs	r3, #1
 80050fa:	6013      	str	r3, [r2, #0]
 80050fc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80050fe:	2b00      	cmp	r3, #0
 8005100:	f000 80c0 	beq.w	8005284 <_dtoa_r+0x1f4>
 8005104:	4b69      	ldr	r3, [pc, #420]	; (80052ac <_dtoa_r+0x21c>)
 8005106:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8005108:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800510c:	6013      	str	r3, [r2, #0]
 800510e:	4658      	mov	r0, fp
 8005110:	b01b      	add	sp, #108	; 0x6c
 8005112:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005116:	aa18      	add	r2, sp, #96	; 0x60
 8005118:	a919      	add	r1, sp, #100	; 0x64
 800511a:	ec47 6b10 	vmov	d0, r6, r7
 800511e:	4648      	mov	r0, r9
 8005120:	f002 f954 	bl	80073cc <__d2b>
 8005124:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8005128:	4682      	mov	sl, r0
 800512a:	f040 80a0 	bne.w	800526e <_dtoa_r+0x1de>
 800512e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8005132:	442c      	add	r4, r5
 8005134:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8005138:	2b20      	cmp	r3, #32
 800513a:	f340 842c 	ble.w	8005996 <_dtoa_r+0x906>
 800513e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8005142:	fa08 f803 	lsl.w	r8, r8, r3
 8005146:	9b00      	ldr	r3, [sp, #0]
 8005148:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800514c:	fa23 f000 	lsr.w	r0, r3, r0
 8005150:	ea48 0000 	orr.w	r0, r8, r0
 8005154:	f7fb fc76 	bl	8000a44 <__aeabi_ui2d>
 8005158:	2301      	movs	r3, #1
 800515a:	4606      	mov	r6, r0
 800515c:	3c01      	subs	r4, #1
 800515e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8005162:	930f      	str	r3, [sp, #60]	; 0x3c
 8005164:	4630      	mov	r0, r6
 8005166:	4639      	mov	r1, r7
 8005168:	2200      	movs	r2, #0
 800516a:	4b51      	ldr	r3, [pc, #324]	; (80052b0 <_dtoa_r+0x220>)
 800516c:	f7fb fb2c 	bl	80007c8 <__aeabi_dsub>
 8005170:	a347      	add	r3, pc, #284	; (adr r3, 8005290 <_dtoa_r+0x200>)
 8005172:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005176:	f7fb fcdf 	bl	8000b38 <__aeabi_dmul>
 800517a:	a347      	add	r3, pc, #284	; (adr r3, 8005298 <_dtoa_r+0x208>)
 800517c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005180:	f7fb fb24 	bl	80007cc <__adddf3>
 8005184:	4606      	mov	r6, r0
 8005186:	4620      	mov	r0, r4
 8005188:	460f      	mov	r7, r1
 800518a:	f7fb fc6b 	bl	8000a64 <__aeabi_i2d>
 800518e:	a344      	add	r3, pc, #272	; (adr r3, 80052a0 <_dtoa_r+0x210>)
 8005190:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005194:	f7fb fcd0 	bl	8000b38 <__aeabi_dmul>
 8005198:	4602      	mov	r2, r0
 800519a:	460b      	mov	r3, r1
 800519c:	4630      	mov	r0, r6
 800519e:	4639      	mov	r1, r7
 80051a0:	f7fb fb14 	bl	80007cc <__adddf3>
 80051a4:	4606      	mov	r6, r0
 80051a6:	460f      	mov	r7, r1
 80051a8:	f7fb ff76 	bl	8001098 <__aeabi_d2iz>
 80051ac:	2200      	movs	r2, #0
 80051ae:	9006      	str	r0, [sp, #24]
 80051b0:	2300      	movs	r3, #0
 80051b2:	4630      	mov	r0, r6
 80051b4:	4639      	mov	r1, r7
 80051b6:	f7fb ff31 	bl	800101c <__aeabi_dcmplt>
 80051ba:	2800      	cmp	r0, #0
 80051bc:	f040 8273 	bne.w	80056a6 <_dtoa_r+0x616>
 80051c0:	9e06      	ldr	r6, [sp, #24]
 80051c2:	2e16      	cmp	r6, #22
 80051c4:	f200 825d 	bhi.w	8005682 <_dtoa_r+0x5f2>
 80051c8:	4b3a      	ldr	r3, [pc, #232]	; (80052b4 <_dtoa_r+0x224>)
 80051ca:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80051ce:	e9d3 0100 	ldrd	r0, r1, [r3]
 80051d2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80051d6:	f7fb ff3f 	bl	8001058 <__aeabi_dcmpgt>
 80051da:	2800      	cmp	r0, #0
 80051dc:	f000 83d7 	beq.w	800598e <_dtoa_r+0x8fe>
 80051e0:	1e73      	subs	r3, r6, #1
 80051e2:	9306      	str	r3, [sp, #24]
 80051e4:	2300      	movs	r3, #0
 80051e6:	930d      	str	r3, [sp, #52]	; 0x34
 80051e8:	1b2c      	subs	r4, r5, r4
 80051ea:	f1b4 0801 	subs.w	r8, r4, #1
 80051ee:	f100 8254 	bmi.w	800569a <_dtoa_r+0x60a>
 80051f2:	2300      	movs	r3, #0
 80051f4:	9308      	str	r3, [sp, #32]
 80051f6:	9b06      	ldr	r3, [sp, #24]
 80051f8:	2b00      	cmp	r3, #0
 80051fa:	f2c0 8245 	blt.w	8005688 <_dtoa_r+0x5f8>
 80051fe:	4498      	add	r8, r3
 8005200:	930c      	str	r3, [sp, #48]	; 0x30
 8005202:	2300      	movs	r3, #0
 8005204:	930b      	str	r3, [sp, #44]	; 0x2c
 8005206:	9b02      	ldr	r3, [sp, #8]
 8005208:	2b09      	cmp	r3, #9
 800520a:	d85b      	bhi.n	80052c4 <_dtoa_r+0x234>
 800520c:	2b05      	cmp	r3, #5
 800520e:	f340 83c0 	ble.w	8005992 <_dtoa_r+0x902>
 8005212:	3b04      	subs	r3, #4
 8005214:	9302      	str	r3, [sp, #8]
 8005216:	2500      	movs	r5, #0
 8005218:	9b02      	ldr	r3, [sp, #8]
 800521a:	3b02      	subs	r3, #2
 800521c:	2b03      	cmp	r3, #3
 800521e:	f200 8498 	bhi.w	8005b52 <_dtoa_r+0xac2>
 8005222:	e8df f013 	tbh	[pc, r3, lsl #1]
 8005226:	03df      	.short	0x03df
 8005228:	03e803bf 	.word	0x03e803bf
 800522c:	04f5      	.short	0x04f5
 800522e:	9a05      	ldr	r2, [sp, #20]
 8005230:	f242 730f 	movw	r3, #9999	; 0x270f
 8005234:	6013      	str	r3, [r2, #0]
 8005236:	9b00      	ldr	r3, [sp, #0]
 8005238:	b983      	cbnz	r3, 800525c <_dtoa_r+0x1cc>
 800523a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800523e:	b96b      	cbnz	r3, 800525c <_dtoa_r+0x1cc>
 8005240:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005242:	f8df b074 	ldr.w	fp, [pc, #116]	; 80052b8 <_dtoa_r+0x228>
 8005246:	2b00      	cmp	r3, #0
 8005248:	f43f af61 	beq.w	800510e <_dtoa_r+0x7e>
 800524c:	f10b 0308 	add.w	r3, fp, #8
 8005250:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8005252:	4658      	mov	r0, fp
 8005254:	6013      	str	r3, [r2, #0]
 8005256:	b01b      	add	sp, #108	; 0x6c
 8005258:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800525c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800525e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80052bc <_dtoa_r+0x22c>
 8005262:	2b00      	cmp	r3, #0
 8005264:	f43f af53 	beq.w	800510e <_dtoa_r+0x7e>
 8005268:	f10b 0303 	add.w	r3, fp, #3
 800526c:	e7f0      	b.n	8005250 <_dtoa_r+0x1c0>
 800526e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8005272:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8005276:	950f      	str	r5, [sp, #60]	; 0x3c
 8005278:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800527c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8005280:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8005282:	e76f      	b.n	8005164 <_dtoa_r+0xd4>
 8005284:	f8df b038 	ldr.w	fp, [pc, #56]	; 80052c0 <_dtoa_r+0x230>
 8005288:	4658      	mov	r0, fp
 800528a:	b01b      	add	sp, #108	; 0x6c
 800528c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005290:	636f4361 	.word	0x636f4361
 8005294:	3fd287a7 	.word	0x3fd287a7
 8005298:	8b60c8b3 	.word	0x8b60c8b3
 800529c:	3fc68a28 	.word	0x3fc68a28
 80052a0:	509f79fb 	.word	0x509f79fb
 80052a4:	3fd34413 	.word	0x3fd34413
 80052a8:	7ff00000 	.word	0x7ff00000
 80052ac:	08008cbd 	.word	0x08008cbd
 80052b0:	3ff80000 	.word	0x3ff80000
 80052b4:	08008d18 	.word	0x08008d18
 80052b8:	08008ce0 	.word	0x08008ce0
 80052bc:	08008cec 	.word	0x08008cec
 80052c0:	08008cbc 	.word	0x08008cbc
 80052c4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80052c8:	2501      	movs	r5, #1
 80052ca:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80052ce:	2300      	movs	r3, #0
 80052d0:	9302      	str	r3, [sp, #8]
 80052d2:	9307      	str	r3, [sp, #28]
 80052d4:	2100      	movs	r1, #0
 80052d6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80052da:	940e      	str	r4, [sp, #56]	; 0x38
 80052dc:	4648      	mov	r0, r9
 80052de:	f001 fdcd 	bl	8006e7c <_Balloc>
 80052e2:	2c0e      	cmp	r4, #14
 80052e4:	4683      	mov	fp, r0
 80052e6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80052ea:	f200 80fb 	bhi.w	80054e4 <_dtoa_r+0x454>
 80052ee:	2d00      	cmp	r5, #0
 80052f0:	f000 80f8 	beq.w	80054e4 <_dtoa_r+0x454>
 80052f4:	ed9d 7b00 	vldr	d7, [sp]
 80052f8:	9906      	ldr	r1, [sp, #24]
 80052fa:	2900      	cmp	r1, #0
 80052fc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8005300:	f340 83e5 	ble.w	8005ace <_dtoa_r+0xa3e>
 8005304:	4b9d      	ldr	r3, [pc, #628]	; (800557c <_dtoa_r+0x4ec>)
 8005306:	f001 020f 	and.w	r2, r1, #15
 800530a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800530e:	ed93 7b00 	vldr	d7, [r3]
 8005312:	110c      	asrs	r4, r1, #4
 8005314:	06e2      	lsls	r2, r4, #27
 8005316:	ed8d 7b00 	vstr	d7, [sp]
 800531a:	f140 849e 	bpl.w	8005c5a <_dtoa_r+0xbca>
 800531e:	4b98      	ldr	r3, [pc, #608]	; (8005580 <_dtoa_r+0x4f0>)
 8005320:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005324:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8005328:	f7fb fd30 	bl	8000d8c <__aeabi_ddiv>
 800532c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8005330:	f004 040f 	and.w	r4, r4, #15
 8005334:	2603      	movs	r6, #3
 8005336:	b17c      	cbz	r4, 8005358 <_dtoa_r+0x2c8>
 8005338:	e9dd 0100 	ldrd	r0, r1, [sp]
 800533c:	4d90      	ldr	r5, [pc, #576]	; (8005580 <_dtoa_r+0x4f0>)
 800533e:	07e3      	lsls	r3, r4, #31
 8005340:	d504      	bpl.n	800534c <_dtoa_r+0x2bc>
 8005342:	e9d5 2300 	ldrd	r2, r3, [r5]
 8005346:	f7fb fbf7 	bl	8000b38 <__aeabi_dmul>
 800534a:	3601      	adds	r6, #1
 800534c:	1064      	asrs	r4, r4, #1
 800534e:	f105 0508 	add.w	r5, r5, #8
 8005352:	d1f4      	bne.n	800533e <_dtoa_r+0x2ae>
 8005354:	e9cd 0100 	strd	r0, r1, [sp]
 8005358:	e9dd 2300 	ldrd	r2, r3, [sp]
 800535c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005360:	f7fb fd14 	bl	8000d8c <__aeabi_ddiv>
 8005364:	e9cd 0100 	strd	r0, r1, [sp]
 8005368:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800536a:	b143      	cbz	r3, 800537e <_dtoa_r+0x2ee>
 800536c:	2200      	movs	r2, #0
 800536e:	4b85      	ldr	r3, [pc, #532]	; (8005584 <_dtoa_r+0x4f4>)
 8005370:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005374:	f7fb fe52 	bl	800101c <__aeabi_dcmplt>
 8005378:	2800      	cmp	r0, #0
 800537a:	f040 84ff 	bne.w	8005d7c <_dtoa_r+0xcec>
 800537e:	4630      	mov	r0, r6
 8005380:	f7fb fb70 	bl	8000a64 <__aeabi_i2d>
 8005384:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005388:	f7fb fbd6 	bl	8000b38 <__aeabi_dmul>
 800538c:	4b7e      	ldr	r3, [pc, #504]	; (8005588 <_dtoa_r+0x4f8>)
 800538e:	2200      	movs	r2, #0
 8005390:	f7fb fa1c 	bl	80007cc <__adddf3>
 8005394:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005396:	4606      	mov	r6, r0
 8005398:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800539c:	2b00      	cmp	r3, #0
 800539e:	f000 841c 	beq.w	8005bda <_dtoa_r+0xb4a>
 80053a2:	9b06      	ldr	r3, [sp, #24]
 80053a4:	9316      	str	r3, [sp, #88]	; 0x58
 80053a6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80053a8:	9312      	str	r3, [sp, #72]	; 0x48
 80053aa:	e9dd 0100 	ldrd	r0, r1, [sp]
 80053ae:	f7fb fe73 	bl	8001098 <__aeabi_d2iz>
 80053b2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80053b4:	4b71      	ldr	r3, [pc, #452]	; (800557c <_dtoa_r+0x4ec>)
 80053b6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80053ba:	ed13 7b02 	vldr	d7, [r3, #-8]
 80053be:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80053c2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80053c6:	f7fb fb4d 	bl	8000a64 <__aeabi_i2d>
 80053ca:	460b      	mov	r3, r1
 80053cc:	4602      	mov	r2, r0
 80053ce:	e9dd 0100 	ldrd	r0, r1, [sp]
 80053d2:	e9cd 6700 	strd	r6, r7, [sp]
 80053d6:	f7fb f9f7 	bl	80007c8 <__aeabi_dsub>
 80053da:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80053dc:	b2ed      	uxtb	r5, r5
 80053de:	4606      	mov	r6, r0
 80053e0:	460f      	mov	r7, r1
 80053e2:	f10b 0401 	add.w	r4, fp, #1
 80053e6:	2b00      	cmp	r3, #0
 80053e8:	f000 8458 	beq.w	8005c9c <_dtoa_r+0xc0c>
 80053ec:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80053f0:	2000      	movs	r0, #0
 80053f2:	4966      	ldr	r1, [pc, #408]	; (800558c <_dtoa_r+0x4fc>)
 80053f4:	f7fb fcca 	bl	8000d8c <__aeabi_ddiv>
 80053f8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80053fc:	f7fb f9e4 	bl	80007c8 <__aeabi_dsub>
 8005400:	f88b 5000 	strb.w	r5, [fp]
 8005404:	4632      	mov	r2, r6
 8005406:	463b      	mov	r3, r7
 8005408:	e9cd 0100 	strd	r0, r1, [sp]
 800540c:	f7fb fe24 	bl	8001058 <__aeabi_dcmpgt>
 8005410:	2800      	cmp	r0, #0
 8005412:	f040 8502 	bne.w	8005e1a <_dtoa_r+0xd8a>
 8005416:	4632      	mov	r2, r6
 8005418:	463b      	mov	r3, r7
 800541a:	2000      	movs	r0, #0
 800541c:	4959      	ldr	r1, [pc, #356]	; (8005584 <_dtoa_r+0x4f4>)
 800541e:	f7fb f9d3 	bl	80007c8 <__aeabi_dsub>
 8005422:	4602      	mov	r2, r0
 8005424:	460b      	mov	r3, r1
 8005426:	e9dd 0100 	ldrd	r0, r1, [sp]
 800542a:	f7fb fe15 	bl	8001058 <__aeabi_dcmpgt>
 800542e:	2800      	cmp	r0, #0
 8005430:	f040 84fb 	bne.w	8005e2a <_dtoa_r+0xd9a>
 8005434:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005436:	2a01      	cmp	r2, #1
 8005438:	d050      	beq.n	80054dc <_dtoa_r+0x44c>
 800543a:	445a      	add	r2, fp
 800543c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8005440:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8005444:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8005448:	4692      	mov	sl, r2
 800544a:	46cb      	mov	fp, r9
 800544c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8005450:	e00c      	b.n	800546c <_dtoa_r+0x3dc>
 8005452:	2000      	movs	r0, #0
 8005454:	494b      	ldr	r1, [pc, #300]	; (8005584 <_dtoa_r+0x4f4>)
 8005456:	f7fb f9b7 	bl	80007c8 <__aeabi_dsub>
 800545a:	4642      	mov	r2, r8
 800545c:	464b      	mov	r3, r9
 800545e:	f7fb fddd 	bl	800101c <__aeabi_dcmplt>
 8005462:	2800      	cmp	r0, #0
 8005464:	f040 84dc 	bne.w	8005e20 <_dtoa_r+0xd90>
 8005468:	4554      	cmp	r4, sl
 800546a:	d030      	beq.n	80054ce <_dtoa_r+0x43e>
 800546c:	4640      	mov	r0, r8
 800546e:	4649      	mov	r1, r9
 8005470:	2200      	movs	r2, #0
 8005472:	4b47      	ldr	r3, [pc, #284]	; (8005590 <_dtoa_r+0x500>)
 8005474:	f7fb fb60 	bl	8000b38 <__aeabi_dmul>
 8005478:	2200      	movs	r2, #0
 800547a:	4b45      	ldr	r3, [pc, #276]	; (8005590 <_dtoa_r+0x500>)
 800547c:	4680      	mov	r8, r0
 800547e:	4689      	mov	r9, r1
 8005480:	4630      	mov	r0, r6
 8005482:	4639      	mov	r1, r7
 8005484:	f7fb fb58 	bl	8000b38 <__aeabi_dmul>
 8005488:	460f      	mov	r7, r1
 800548a:	4606      	mov	r6, r0
 800548c:	f7fb fe04 	bl	8001098 <__aeabi_d2iz>
 8005490:	4605      	mov	r5, r0
 8005492:	f7fb fae7 	bl	8000a64 <__aeabi_i2d>
 8005496:	4602      	mov	r2, r0
 8005498:	460b      	mov	r3, r1
 800549a:	4630      	mov	r0, r6
 800549c:	4639      	mov	r1, r7
 800549e:	f7fb f993 	bl	80007c8 <__aeabi_dsub>
 80054a2:	3530      	adds	r5, #48	; 0x30
 80054a4:	b2ed      	uxtb	r5, r5
 80054a6:	4642      	mov	r2, r8
 80054a8:	464b      	mov	r3, r9
 80054aa:	f804 5b01 	strb.w	r5, [r4], #1
 80054ae:	4606      	mov	r6, r0
 80054b0:	460f      	mov	r7, r1
 80054b2:	f7fb fdb3 	bl	800101c <__aeabi_dcmplt>
 80054b6:	4632      	mov	r2, r6
 80054b8:	463b      	mov	r3, r7
 80054ba:	2800      	cmp	r0, #0
 80054bc:	d0c9      	beq.n	8005452 <_dtoa_r+0x3c2>
 80054be:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80054c0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80054c4:	9306      	str	r3, [sp, #24]
 80054c6:	46d9      	mov	r9, fp
 80054c8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80054cc:	e236      	b.n	800593c <_dtoa_r+0x8ac>
 80054ce:	46d9      	mov	r9, fp
 80054d0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80054d4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80054d8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80054dc:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80054e0:	e9cd 3400 	strd	r3, r4, [sp]
 80054e4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80054e6:	2b00      	cmp	r3, #0
 80054e8:	f2c0 80ae 	blt.w	8005648 <_dtoa_r+0x5b8>
 80054ec:	9a06      	ldr	r2, [sp, #24]
 80054ee:	2a0e      	cmp	r2, #14
 80054f0:	f300 80aa 	bgt.w	8005648 <_dtoa_r+0x5b8>
 80054f4:	4b21      	ldr	r3, [pc, #132]	; (800557c <_dtoa_r+0x4ec>)
 80054f6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80054fa:	ed93 7b00 	vldr	d7, [r3]
 80054fe:	9b07      	ldr	r3, [sp, #28]
 8005500:	2b00      	cmp	r3, #0
 8005502:	ed8d 7b02 	vstr	d7, [sp, #8]
 8005506:	f2c0 82be 	blt.w	8005a86 <_dtoa_r+0x9f6>
 800550a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800550e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005512:	4630      	mov	r0, r6
 8005514:	4639      	mov	r1, r7
 8005516:	f7fb fc39 	bl	8000d8c <__aeabi_ddiv>
 800551a:	f7fb fdbd 	bl	8001098 <__aeabi_d2iz>
 800551e:	4605      	mov	r5, r0
 8005520:	f7fb faa0 	bl	8000a64 <__aeabi_i2d>
 8005524:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005528:	f7fb fb06 	bl	8000b38 <__aeabi_dmul>
 800552c:	460b      	mov	r3, r1
 800552e:	4602      	mov	r2, r0
 8005530:	4639      	mov	r1, r7
 8005532:	4630      	mov	r0, r6
 8005534:	f7fb f948 	bl	80007c8 <__aeabi_dsub>
 8005538:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800553c:	f88b 3000 	strb.w	r3, [fp]
 8005540:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005542:	2b01      	cmp	r3, #1
 8005544:	4606      	mov	r6, r0
 8005546:	460f      	mov	r7, r1
 8005548:	f10b 0401 	add.w	r4, fp, #1
 800554c:	d053      	beq.n	80055f6 <_dtoa_r+0x566>
 800554e:	2200      	movs	r2, #0
 8005550:	4b0f      	ldr	r3, [pc, #60]	; (8005590 <_dtoa_r+0x500>)
 8005552:	f7fb faf1 	bl	8000b38 <__aeabi_dmul>
 8005556:	2200      	movs	r2, #0
 8005558:	2300      	movs	r3, #0
 800555a:	4606      	mov	r6, r0
 800555c:	460f      	mov	r7, r1
 800555e:	f7fb fd53 	bl	8001008 <__aeabi_dcmpeq>
 8005562:	2800      	cmp	r0, #0
 8005564:	f040 81ea 	bne.w	800593c <_dtoa_r+0x8ac>
 8005568:	f8cd a000 	str.w	sl, [sp]
 800556c:	f8cd 901c 	str.w	r9, [sp, #28]
 8005570:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005574:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005578:	e017      	b.n	80055aa <_dtoa_r+0x51a>
 800557a:	bf00      	nop
 800557c:	08008d18 	.word	0x08008d18
 8005580:	08008cf0 	.word	0x08008cf0
 8005584:	3ff00000 	.word	0x3ff00000
 8005588:	401c0000 	.word	0x401c0000
 800558c:	3fe00000 	.word	0x3fe00000
 8005590:	40240000 	.word	0x40240000
 8005594:	f7fb fad0 	bl	8000b38 <__aeabi_dmul>
 8005598:	2200      	movs	r2, #0
 800559a:	2300      	movs	r3, #0
 800559c:	4606      	mov	r6, r0
 800559e:	460f      	mov	r7, r1
 80055a0:	f7fb fd32 	bl	8001008 <__aeabi_dcmpeq>
 80055a4:	2800      	cmp	r0, #0
 80055a6:	f040 833d 	bne.w	8005c24 <_dtoa_r+0xb94>
 80055aa:	464a      	mov	r2, r9
 80055ac:	4653      	mov	r3, sl
 80055ae:	4630      	mov	r0, r6
 80055b0:	4639      	mov	r1, r7
 80055b2:	f7fb fbeb 	bl	8000d8c <__aeabi_ddiv>
 80055b6:	f7fb fd6f 	bl	8001098 <__aeabi_d2iz>
 80055ba:	4605      	mov	r5, r0
 80055bc:	f7fb fa52 	bl	8000a64 <__aeabi_i2d>
 80055c0:	464a      	mov	r2, r9
 80055c2:	4653      	mov	r3, sl
 80055c4:	f7fb fab8 	bl	8000b38 <__aeabi_dmul>
 80055c8:	4602      	mov	r2, r0
 80055ca:	460b      	mov	r3, r1
 80055cc:	4630      	mov	r0, r6
 80055ce:	4639      	mov	r1, r7
 80055d0:	f7fb f8fa 	bl	80007c8 <__aeabi_dsub>
 80055d4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80055d8:	f804 cb01 	strb.w	ip, [r4], #1
 80055dc:	eba4 0c0b 	sub.w	ip, r4, fp
 80055e0:	45e0      	cmp	r8, ip
 80055e2:	4606      	mov	r6, r0
 80055e4:	460f      	mov	r7, r1
 80055e6:	f04f 0200 	mov.w	r2, #0
 80055ea:	4bc1      	ldr	r3, [pc, #772]	; (80058f0 <_dtoa_r+0x860>)
 80055ec:	d1d2      	bne.n	8005594 <_dtoa_r+0x504>
 80055ee:	f8dd a000 	ldr.w	sl, [sp]
 80055f2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80055f6:	4632      	mov	r2, r6
 80055f8:	463b      	mov	r3, r7
 80055fa:	4630      	mov	r0, r6
 80055fc:	4639      	mov	r1, r7
 80055fe:	f7fb f8e5 	bl	80007cc <__adddf3>
 8005602:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005606:	4606      	mov	r6, r0
 8005608:	460f      	mov	r7, r1
 800560a:	f7fb fd25 	bl	8001058 <__aeabi_dcmpgt>
 800560e:	b958      	cbnz	r0, 8005628 <_dtoa_r+0x598>
 8005610:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005614:	4630      	mov	r0, r6
 8005616:	4639      	mov	r1, r7
 8005618:	f7fb fcf6 	bl	8001008 <__aeabi_dcmpeq>
 800561c:	2800      	cmp	r0, #0
 800561e:	f000 818d 	beq.w	800593c <_dtoa_r+0x8ac>
 8005622:	07e9      	lsls	r1, r5, #31
 8005624:	f140 818a 	bpl.w	800593c <_dtoa_r+0x8ac>
 8005628:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800562c:	e005      	b.n	800563a <_dtoa_r+0x5aa>
 800562e:	459b      	cmp	fp, r3
 8005630:	f000 8373 	beq.w	8005d1a <_dtoa_r+0xc8a>
 8005634:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8005638:	461c      	mov	r4, r3
 800563a:	2d39      	cmp	r5, #57	; 0x39
 800563c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005640:	d0f5      	beq.n	800562e <_dtoa_r+0x59e>
 8005642:	3501      	adds	r5, #1
 8005644:	701d      	strb	r5, [r3, #0]
 8005646:	e179      	b.n	800593c <_dtoa_r+0x8ac>
 8005648:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800564a:	2a00      	cmp	r2, #0
 800564c:	d03b      	beq.n	80056c6 <_dtoa_r+0x636>
 800564e:	9a02      	ldr	r2, [sp, #8]
 8005650:	2a01      	cmp	r2, #1
 8005652:	f340 820b 	ble.w	8005a6c <_dtoa_r+0x9dc>
 8005656:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005658:	1e5f      	subs	r7, r3, #1
 800565a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800565c:	42bb      	cmp	r3, r7
 800565e:	f2c0 82e6 	blt.w	8005c2e <_dtoa_r+0xb9e>
 8005662:	1bdf      	subs	r7, r3, r7
 8005664:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005666:	2b00      	cmp	r3, #0
 8005668:	f2c0 830b 	blt.w	8005c82 <_dtoa_r+0xbf2>
 800566c:	9a08      	ldr	r2, [sp, #32]
 800566e:	4614      	mov	r4, r2
 8005670:	441a      	add	r2, r3
 8005672:	4498      	add	r8, r3
 8005674:	9208      	str	r2, [sp, #32]
 8005676:	2101      	movs	r1, #1
 8005678:	4648      	mov	r0, r9
 800567a:	f001 fcbf 	bl	8006ffc <__i2b>
 800567e:	4605      	mov	r5, r0
 8005680:	e024      	b.n	80056cc <_dtoa_r+0x63c>
 8005682:	2301      	movs	r3, #1
 8005684:	930d      	str	r3, [sp, #52]	; 0x34
 8005686:	e5af      	b.n	80051e8 <_dtoa_r+0x158>
 8005688:	9a08      	ldr	r2, [sp, #32]
 800568a:	9b06      	ldr	r3, [sp, #24]
 800568c:	1ad2      	subs	r2, r2, r3
 800568e:	425b      	negs	r3, r3
 8005690:	930b      	str	r3, [sp, #44]	; 0x2c
 8005692:	2300      	movs	r3, #0
 8005694:	9208      	str	r2, [sp, #32]
 8005696:	930c      	str	r3, [sp, #48]	; 0x30
 8005698:	e5b5      	b.n	8005206 <_dtoa_r+0x176>
 800569a:	f1c4 0301 	rsb	r3, r4, #1
 800569e:	9308      	str	r3, [sp, #32]
 80056a0:	f04f 0800 	mov.w	r8, #0
 80056a4:	e5a7      	b.n	80051f6 <_dtoa_r+0x166>
 80056a6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80056aa:	4640      	mov	r0, r8
 80056ac:	f7fb f9da 	bl	8000a64 <__aeabi_i2d>
 80056b0:	4632      	mov	r2, r6
 80056b2:	463b      	mov	r3, r7
 80056b4:	f7fb fca8 	bl	8001008 <__aeabi_dcmpeq>
 80056b8:	2800      	cmp	r0, #0
 80056ba:	f47f ad81 	bne.w	80051c0 <_dtoa_r+0x130>
 80056be:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80056c2:	9306      	str	r3, [sp, #24]
 80056c4:	e57c      	b.n	80051c0 <_dtoa_r+0x130>
 80056c6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80056c8:	9c08      	ldr	r4, [sp, #32]
 80056ca:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80056cc:	2c00      	cmp	r4, #0
 80056ce:	dd0c      	ble.n	80056ea <_dtoa_r+0x65a>
 80056d0:	f1b8 0f00 	cmp.w	r8, #0
 80056d4:	dd09      	ble.n	80056ea <_dtoa_r+0x65a>
 80056d6:	4544      	cmp	r4, r8
 80056d8:	9a08      	ldr	r2, [sp, #32]
 80056da:	4623      	mov	r3, r4
 80056dc:	bfa8      	it	ge
 80056de:	4643      	movge	r3, r8
 80056e0:	1ad2      	subs	r2, r2, r3
 80056e2:	9208      	str	r2, [sp, #32]
 80056e4:	1ae4      	subs	r4, r4, r3
 80056e6:	eba8 0803 	sub.w	r8, r8, r3
 80056ea:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80056ec:	b16b      	cbz	r3, 800570a <_dtoa_r+0x67a>
 80056ee:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80056f0:	2a00      	cmp	r2, #0
 80056f2:	f000 8290 	beq.w	8005c16 <_dtoa_r+0xb86>
 80056f6:	1bde      	subs	r6, r3, r7
 80056f8:	2f00      	cmp	r7, #0
 80056fa:	f040 819b 	bne.w	8005a34 <_dtoa_r+0x9a4>
 80056fe:	4651      	mov	r1, sl
 8005700:	4632      	mov	r2, r6
 8005702:	4648      	mov	r0, r9
 8005704:	f001 fd2a 	bl	800715c <__pow5mult>
 8005708:	4682      	mov	sl, r0
 800570a:	2101      	movs	r1, #1
 800570c:	4648      	mov	r0, r9
 800570e:	f001 fc75 	bl	8006ffc <__i2b>
 8005712:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005714:	4606      	mov	r6, r0
 8005716:	2a00      	cmp	r2, #0
 8005718:	f040 8125 	bne.w	8005966 <_dtoa_r+0x8d6>
 800571c:	9b02      	ldr	r3, [sp, #8]
 800571e:	2b01      	cmp	r3, #1
 8005720:	f340 816c 	ble.w	80059fc <_dtoa_r+0x96c>
 8005724:	2001      	movs	r0, #1
 8005726:	4440      	add	r0, r8
 8005728:	f010 001f 	ands.w	r0, r0, #31
 800572c:	f000 8119 	beq.w	8005962 <_dtoa_r+0x8d2>
 8005730:	f1c0 0320 	rsb	r3, r0, #32
 8005734:	2b04      	cmp	r3, #4
 8005736:	f340 83ac 	ble.w	8005e92 <_dtoa_r+0xe02>
 800573a:	f1c0 001c 	rsb	r0, r0, #28
 800573e:	9b08      	ldr	r3, [sp, #32]
 8005740:	4403      	add	r3, r0
 8005742:	9308      	str	r3, [sp, #32]
 8005744:	4404      	add	r4, r0
 8005746:	4480      	add	r8, r0
 8005748:	9b08      	ldr	r3, [sp, #32]
 800574a:	2b00      	cmp	r3, #0
 800574c:	dd05      	ble.n	800575a <_dtoa_r+0x6ca>
 800574e:	4651      	mov	r1, sl
 8005750:	461a      	mov	r2, r3
 8005752:	4648      	mov	r0, r9
 8005754:	f001 fd52 	bl	80071fc <__lshift>
 8005758:	4682      	mov	sl, r0
 800575a:	f1b8 0f00 	cmp.w	r8, #0
 800575e:	dd05      	ble.n	800576c <_dtoa_r+0x6dc>
 8005760:	4631      	mov	r1, r6
 8005762:	4642      	mov	r2, r8
 8005764:	4648      	mov	r0, r9
 8005766:	f001 fd49 	bl	80071fc <__lshift>
 800576a:	4606      	mov	r6, r0
 800576c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800576e:	2b00      	cmp	r3, #0
 8005770:	d177      	bne.n	8005862 <_dtoa_r+0x7d2>
 8005772:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005774:	2b00      	cmp	r3, #0
 8005776:	f340 8209 	ble.w	8005b8c <_dtoa_r+0xafc>
 800577a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800577c:	2b00      	cmp	r3, #0
 800577e:	f000 8089 	beq.w	8005894 <_dtoa_r+0x804>
 8005782:	2c00      	cmp	r4, #0
 8005784:	f300 816b 	bgt.w	8005a5e <_dtoa_r+0x9ce>
 8005788:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800578a:	2b00      	cmp	r3, #0
 800578c:	f040 81cd 	bne.w	8005b2a <_dtoa_r+0xa9a>
 8005790:	46a8      	mov	r8, r5
 8005792:	9a00      	ldr	r2, [sp, #0]
 8005794:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005798:	f002 0201 	and.w	r2, r2, #1
 800579c:	920a      	str	r2, [sp, #40]	; 0x28
 800579e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80057a0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80057a4:	441a      	add	r2, r3
 80057a6:	465f      	mov	r7, fp
 80057a8:	9209      	str	r2, [sp, #36]	; 0x24
 80057aa:	46b3      	mov	fp, r6
 80057ac:	4659      	mov	r1, fp
 80057ae:	4650      	mov	r0, sl
 80057b0:	f7ff fbdc 	bl	8004f6c <quorem>
 80057b4:	4629      	mov	r1, r5
 80057b6:	4604      	mov	r4, r0
 80057b8:	4650      	mov	r0, sl
 80057ba:	f001 fd75 	bl	80072a8 <__mcmp>
 80057be:	4659      	mov	r1, fp
 80057c0:	4606      	mov	r6, r0
 80057c2:	4642      	mov	r2, r8
 80057c4:	4648      	mov	r0, r9
 80057c6:	f001 fd8b 	bl	80072e0 <__mdiff>
 80057ca:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80057ce:	9300      	str	r3, [sp, #0]
 80057d0:	68c3      	ldr	r3, [r0, #12]
 80057d2:	4601      	mov	r1, r0
 80057d4:	2b00      	cmp	r3, #0
 80057d6:	f040 81d4 	bne.w	8005b82 <_dtoa_r+0xaf2>
 80057da:	9008      	str	r0, [sp, #32]
 80057dc:	4650      	mov	r0, sl
 80057de:	f001 fd63 	bl	80072a8 <__mcmp>
 80057e2:	9a08      	ldr	r2, [sp, #32]
 80057e4:	9007      	str	r0, [sp, #28]
 80057e6:	4611      	mov	r1, r2
 80057e8:	4648      	mov	r0, r9
 80057ea:	f001 fb6d 	bl	8006ec8 <_Bfree>
 80057ee:	9b07      	ldr	r3, [sp, #28]
 80057f0:	b933      	cbnz	r3, 8005800 <_dtoa_r+0x770>
 80057f2:	9a02      	ldr	r2, [sp, #8]
 80057f4:	b922      	cbnz	r2, 8005800 <_dtoa_r+0x770>
 80057f6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80057f8:	2b00      	cmp	r3, #0
 80057fa:	f000 8319 	beq.w	8005e30 <_dtoa_r+0xda0>
 80057fe:	9b02      	ldr	r3, [sp, #8]
 8005800:	2e00      	cmp	r6, #0
 8005802:	f2c0 821c 	blt.w	8005c3e <_dtoa_r+0xbae>
 8005806:	d105      	bne.n	8005814 <_dtoa_r+0x784>
 8005808:	9a02      	ldr	r2, [sp, #8]
 800580a:	b91a      	cbnz	r2, 8005814 <_dtoa_r+0x784>
 800580c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800580e:	2a00      	cmp	r2, #0
 8005810:	f000 8215 	beq.w	8005c3e <_dtoa_r+0xbae>
 8005814:	2b00      	cmp	r3, #0
 8005816:	f107 0401 	add.w	r4, r7, #1
 800581a:	f300 8225 	bgt.w	8005c68 <_dtoa_r+0xbd8>
 800581e:	9b00      	ldr	r3, [sp, #0]
 8005820:	703b      	strb	r3, [r7, #0]
 8005822:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005824:	42bb      	cmp	r3, r7
 8005826:	f000 8230 	beq.w	8005c8a <_dtoa_r+0xbfa>
 800582a:	4651      	mov	r1, sl
 800582c:	2300      	movs	r3, #0
 800582e:	220a      	movs	r2, #10
 8005830:	4648      	mov	r0, r9
 8005832:	f001 fb53 	bl	8006edc <__multadd>
 8005836:	4545      	cmp	r5, r8
 8005838:	4682      	mov	sl, r0
 800583a:	4629      	mov	r1, r5
 800583c:	f04f 0300 	mov.w	r3, #0
 8005840:	f04f 020a 	mov.w	r2, #10
 8005844:	4648      	mov	r0, r9
 8005846:	f000 8196 	beq.w	8005b76 <_dtoa_r+0xae6>
 800584a:	f001 fb47 	bl	8006edc <__multadd>
 800584e:	4641      	mov	r1, r8
 8005850:	4605      	mov	r5, r0
 8005852:	2300      	movs	r3, #0
 8005854:	220a      	movs	r2, #10
 8005856:	4648      	mov	r0, r9
 8005858:	f001 fb40 	bl	8006edc <__multadd>
 800585c:	4627      	mov	r7, r4
 800585e:	4680      	mov	r8, r0
 8005860:	e7a4      	b.n	80057ac <_dtoa_r+0x71c>
 8005862:	4631      	mov	r1, r6
 8005864:	4650      	mov	r0, sl
 8005866:	f001 fd1f 	bl	80072a8 <__mcmp>
 800586a:	2800      	cmp	r0, #0
 800586c:	da81      	bge.n	8005772 <_dtoa_r+0x6e2>
 800586e:	9f06      	ldr	r7, [sp, #24]
 8005870:	4651      	mov	r1, sl
 8005872:	2300      	movs	r3, #0
 8005874:	220a      	movs	r2, #10
 8005876:	4648      	mov	r0, r9
 8005878:	3f01      	subs	r7, #1
 800587a:	9706      	str	r7, [sp, #24]
 800587c:	f001 fb2e 	bl	8006edc <__multadd>
 8005880:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005882:	4682      	mov	sl, r0
 8005884:	2b00      	cmp	r3, #0
 8005886:	f040 82eb 	bne.w	8005e60 <_dtoa_r+0xdd0>
 800588a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800588c:	2b00      	cmp	r3, #0
 800588e:	f340 82f3 	ble.w	8005e78 <_dtoa_r+0xde8>
 8005892:	9309      	str	r3, [sp, #36]	; 0x24
 8005894:	465c      	mov	r4, fp
 8005896:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800589a:	e002      	b.n	80058a2 <_dtoa_r+0x812>
 800589c:	f001 fb1e 	bl	8006edc <__multadd>
 80058a0:	4682      	mov	sl, r0
 80058a2:	4631      	mov	r1, r6
 80058a4:	4650      	mov	r0, sl
 80058a6:	f7ff fb61 	bl	8004f6c <quorem>
 80058aa:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80058ae:	f804 7b01 	strb.w	r7, [r4], #1
 80058b2:	eba4 030b 	sub.w	r3, r4, fp
 80058b6:	4598      	cmp	r8, r3
 80058b8:	f04f 020a 	mov.w	r2, #10
 80058bc:	f04f 0300 	mov.w	r3, #0
 80058c0:	4651      	mov	r1, sl
 80058c2:	4648      	mov	r0, r9
 80058c4:	dcea      	bgt.n	800589c <_dtoa_r+0x80c>
 80058c6:	2300      	movs	r3, #0
 80058c8:	9700      	str	r7, [sp, #0]
 80058ca:	9302      	str	r3, [sp, #8]
 80058cc:	4651      	mov	r1, sl
 80058ce:	2201      	movs	r2, #1
 80058d0:	4648      	mov	r0, r9
 80058d2:	f001 fc93 	bl	80071fc <__lshift>
 80058d6:	4631      	mov	r1, r6
 80058d8:	4682      	mov	sl, r0
 80058da:	f001 fce5 	bl	80072a8 <__mcmp>
 80058de:	2800      	cmp	r0, #0
 80058e0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80058e4:	dc14      	bgt.n	8005910 <_dtoa_r+0x880>
 80058e6:	d108      	bne.n	80058fa <_dtoa_r+0x86a>
 80058e8:	9b00      	ldr	r3, [sp, #0]
 80058ea:	07db      	lsls	r3, r3, #31
 80058ec:	d410      	bmi.n	8005910 <_dtoa_r+0x880>
 80058ee:	e004      	b.n	80058fa <_dtoa_r+0x86a>
 80058f0:	40240000 	.word	0x40240000
 80058f4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80058f8:	461c      	mov	r4, r3
 80058fa:	2a30      	cmp	r2, #48	; 0x30
 80058fc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005900:	d0f8      	beq.n	80058f4 <_dtoa_r+0x864>
 8005902:	e00b      	b.n	800591c <_dtoa_r+0x88c>
 8005904:	459b      	cmp	fp, r3
 8005906:	f000 814e 	beq.w	8005ba6 <_dtoa_r+0xb16>
 800590a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800590e:	461c      	mov	r4, r3
 8005910:	2a39      	cmp	r2, #57	; 0x39
 8005912:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005916:	d0f5      	beq.n	8005904 <_dtoa_r+0x874>
 8005918:	3201      	adds	r2, #1
 800591a:	701a      	strb	r2, [r3, #0]
 800591c:	4631      	mov	r1, r6
 800591e:	4648      	mov	r0, r9
 8005920:	f001 fad2 	bl	8006ec8 <_Bfree>
 8005924:	b155      	cbz	r5, 800593c <_dtoa_r+0x8ac>
 8005926:	9902      	ldr	r1, [sp, #8]
 8005928:	b121      	cbz	r1, 8005934 <_dtoa_r+0x8a4>
 800592a:	42a9      	cmp	r1, r5
 800592c:	d002      	beq.n	8005934 <_dtoa_r+0x8a4>
 800592e:	4648      	mov	r0, r9
 8005930:	f001 faca 	bl	8006ec8 <_Bfree>
 8005934:	4629      	mov	r1, r5
 8005936:	4648      	mov	r0, r9
 8005938:	f001 fac6 	bl	8006ec8 <_Bfree>
 800593c:	4651      	mov	r1, sl
 800593e:	4648      	mov	r0, r9
 8005940:	f001 fac2 	bl	8006ec8 <_Bfree>
 8005944:	2200      	movs	r2, #0
 8005946:	9b06      	ldr	r3, [sp, #24]
 8005948:	7022      	strb	r2, [r4, #0]
 800594a:	9a05      	ldr	r2, [sp, #20]
 800594c:	3301      	adds	r3, #1
 800594e:	6013      	str	r3, [r2, #0]
 8005950:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005952:	2b00      	cmp	r3, #0
 8005954:	f43f abdb 	beq.w	800510e <_dtoa_r+0x7e>
 8005958:	4658      	mov	r0, fp
 800595a:	601c      	str	r4, [r3, #0]
 800595c:	b01b      	add	sp, #108	; 0x6c
 800595e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005962:	201c      	movs	r0, #28
 8005964:	e6eb      	b.n	800573e <_dtoa_r+0x6ae>
 8005966:	4601      	mov	r1, r0
 8005968:	4648      	mov	r0, r9
 800596a:	f001 fbf7 	bl	800715c <__pow5mult>
 800596e:	9b02      	ldr	r3, [sp, #8]
 8005970:	2b01      	cmp	r3, #1
 8005972:	4606      	mov	r6, r0
 8005974:	f340 80d4 	ble.w	8005b20 <_dtoa_r+0xa90>
 8005978:	2300      	movs	r3, #0
 800597a:	930c      	str	r3, [sp, #48]	; 0x30
 800597c:	6933      	ldr	r3, [r6, #16]
 800597e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8005982:	6918      	ldr	r0, [r3, #16]
 8005984:	f001 faea 	bl	8006f5c <__hi0bits>
 8005988:	f1c0 0020 	rsb	r0, r0, #32
 800598c:	e6cb      	b.n	8005726 <_dtoa_r+0x696>
 800598e:	900d      	str	r0, [sp, #52]	; 0x34
 8005990:	e42a      	b.n	80051e8 <_dtoa_r+0x158>
 8005992:	2501      	movs	r5, #1
 8005994:	e440      	b.n	8005218 <_dtoa_r+0x188>
 8005996:	f1c3 0820 	rsb	r8, r3, #32
 800599a:	9b00      	ldr	r3, [sp, #0]
 800599c:	fa03 f008 	lsl.w	r0, r3, r8
 80059a0:	f7ff bbd8 	b.w	8005154 <_dtoa_r+0xc4>
 80059a4:	2300      	movs	r3, #0
 80059a6:	930a      	str	r3, [sp, #40]	; 0x28
 80059a8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80059ac:	4413      	add	r3, r2
 80059ae:	930e      	str	r3, [sp, #56]	; 0x38
 80059b0:	3301      	adds	r3, #1
 80059b2:	2b01      	cmp	r3, #1
 80059b4:	461e      	mov	r6, r3
 80059b6:	9309      	str	r3, [sp, #36]	; 0x24
 80059b8:	bfb8      	it	lt
 80059ba:	2601      	movlt	r6, #1
 80059bc:	2100      	movs	r1, #0
 80059be:	2e17      	cmp	r6, #23
 80059c0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80059c4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80059c6:	f77f ac89 	ble.w	80052dc <_dtoa_r+0x24c>
 80059ca:	2201      	movs	r2, #1
 80059cc:	2304      	movs	r3, #4
 80059ce:	005b      	lsls	r3, r3, #1
 80059d0:	f103 0014 	add.w	r0, r3, #20
 80059d4:	42b0      	cmp	r0, r6
 80059d6:	4611      	mov	r1, r2
 80059d8:	f102 0201 	add.w	r2, r2, #1
 80059dc:	d9f7      	bls.n	80059ce <_dtoa_r+0x93e>
 80059de:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80059e2:	e47b      	b.n	80052dc <_dtoa_r+0x24c>
 80059e4:	2300      	movs	r3, #0
 80059e6:	930a      	str	r3, [sp, #40]	; 0x28
 80059e8:	9e07      	ldr	r6, [sp, #28]
 80059ea:	2e00      	cmp	r6, #0
 80059ec:	f340 80e2 	ble.w	8005bb4 <_dtoa_r+0xb24>
 80059f0:	960e      	str	r6, [sp, #56]	; 0x38
 80059f2:	9609      	str	r6, [sp, #36]	; 0x24
 80059f4:	e7e2      	b.n	80059bc <_dtoa_r+0x92c>
 80059f6:	2301      	movs	r3, #1
 80059f8:	930a      	str	r3, [sp, #40]	; 0x28
 80059fa:	e7f5      	b.n	80059e8 <_dtoa_r+0x958>
 80059fc:	9b00      	ldr	r3, [sp, #0]
 80059fe:	2b00      	cmp	r3, #0
 8005a00:	f47f ae90 	bne.w	8005724 <_dtoa_r+0x694>
 8005a04:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005a08:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8005a0c:	2b00      	cmp	r3, #0
 8005a0e:	f040 8192 	bne.w	8005d36 <_dtoa_r+0xca6>
 8005a12:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8005a16:	0d1b      	lsrs	r3, r3, #20
 8005a18:	051b      	lsls	r3, r3, #20
 8005a1a:	b12b      	cbz	r3, 8005a28 <_dtoa_r+0x998>
 8005a1c:	9b08      	ldr	r3, [sp, #32]
 8005a1e:	3301      	adds	r3, #1
 8005a20:	9308      	str	r3, [sp, #32]
 8005a22:	f108 0801 	add.w	r8, r8, #1
 8005a26:	2301      	movs	r3, #1
 8005a28:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005a2a:	930c      	str	r3, [sp, #48]	; 0x30
 8005a2c:	2a00      	cmp	r2, #0
 8005a2e:	f43f ae79 	beq.w	8005724 <_dtoa_r+0x694>
 8005a32:	e7a3      	b.n	800597c <_dtoa_r+0x8ec>
 8005a34:	463a      	mov	r2, r7
 8005a36:	4629      	mov	r1, r5
 8005a38:	4648      	mov	r0, r9
 8005a3a:	f001 fb8f 	bl	800715c <__pow5mult>
 8005a3e:	4652      	mov	r2, sl
 8005a40:	4601      	mov	r1, r0
 8005a42:	4605      	mov	r5, r0
 8005a44:	4648      	mov	r0, r9
 8005a46:	f001 fae3 	bl	8007010 <__multiply>
 8005a4a:	4651      	mov	r1, sl
 8005a4c:	4607      	mov	r7, r0
 8005a4e:	4648      	mov	r0, r9
 8005a50:	f001 fa3a 	bl	8006ec8 <_Bfree>
 8005a54:	46ba      	mov	sl, r7
 8005a56:	2e00      	cmp	r6, #0
 8005a58:	f43f ae57 	beq.w	800570a <_dtoa_r+0x67a>
 8005a5c:	e64f      	b.n	80056fe <_dtoa_r+0x66e>
 8005a5e:	4629      	mov	r1, r5
 8005a60:	4622      	mov	r2, r4
 8005a62:	4648      	mov	r0, r9
 8005a64:	f001 fbca 	bl	80071fc <__lshift>
 8005a68:	4605      	mov	r5, r0
 8005a6a:	e68d      	b.n	8005788 <_dtoa_r+0x6f8>
 8005a6c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005a6e:	2a00      	cmp	r2, #0
 8005a70:	f000 815d 	beq.w	8005d2e <_dtoa_r+0xc9e>
 8005a74:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005a78:	9a08      	ldr	r2, [sp, #32]
 8005a7a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005a7c:	4614      	mov	r4, r2
 8005a7e:	441a      	add	r2, r3
 8005a80:	4498      	add	r8, r3
 8005a82:	9208      	str	r2, [sp, #32]
 8005a84:	e5f7      	b.n	8005676 <_dtoa_r+0x5e6>
 8005a86:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005a88:	2b00      	cmp	r3, #0
 8005a8a:	f73f ad3e 	bgt.w	800550a <_dtoa_r+0x47a>
 8005a8e:	f040 80bc 	bne.w	8005c0a <_dtoa_r+0xb7a>
 8005a92:	ec51 0b17 	vmov	r0, r1, d7
 8005a96:	2200      	movs	r2, #0
 8005a98:	4bb2      	ldr	r3, [pc, #712]	; (8005d64 <_dtoa_r+0xcd4>)
 8005a9a:	f7fb f84d 	bl	8000b38 <__aeabi_dmul>
 8005a9e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005aa2:	f7fb facf 	bl	8001044 <__aeabi_dcmpge>
 8005aa6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005aa8:	4635      	mov	r5, r6
 8005aaa:	2800      	cmp	r0, #0
 8005aac:	d176      	bne.n	8005b9c <_dtoa_r+0xb0c>
 8005aae:	9a06      	ldr	r2, [sp, #24]
 8005ab0:	2331      	movs	r3, #49	; 0x31
 8005ab2:	3201      	adds	r2, #1
 8005ab4:	9206      	str	r2, [sp, #24]
 8005ab6:	f88b 3000 	strb.w	r3, [fp]
 8005aba:	f10b 0401 	add.w	r4, fp, #1
 8005abe:	4631      	mov	r1, r6
 8005ac0:	4648      	mov	r0, r9
 8005ac2:	f001 fa01 	bl	8006ec8 <_Bfree>
 8005ac6:	2d00      	cmp	r5, #0
 8005ac8:	f47f af34 	bne.w	8005934 <_dtoa_r+0x8a4>
 8005acc:	e736      	b.n	800593c <_dtoa_r+0x8ac>
 8005ace:	f000 8142 	beq.w	8005d56 <_dtoa_r+0xcc6>
 8005ad2:	9b06      	ldr	r3, [sp, #24]
 8005ad4:	425c      	negs	r4, r3
 8005ad6:	4ba4      	ldr	r3, [pc, #656]	; (8005d68 <_dtoa_r+0xcd8>)
 8005ad8:	f004 020f 	and.w	r2, r4, #15
 8005adc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005ae0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005ae4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005ae8:	f7fb f826 	bl	8000b38 <__aeabi_dmul>
 8005aec:	1124      	asrs	r4, r4, #4
 8005aee:	e9cd 0100 	strd	r0, r1, [sp]
 8005af2:	f000 81c6 	beq.w	8005e82 <_dtoa_r+0xdf2>
 8005af6:	4d9d      	ldr	r5, [pc, #628]	; (8005d6c <_dtoa_r+0xcdc>)
 8005af8:	2300      	movs	r3, #0
 8005afa:	2602      	movs	r6, #2
 8005afc:	07e7      	lsls	r7, r4, #31
 8005afe:	d505      	bpl.n	8005b0c <_dtoa_r+0xa7c>
 8005b00:	e9d5 2300 	ldrd	r2, r3, [r5]
 8005b04:	f7fb f818 	bl	8000b38 <__aeabi_dmul>
 8005b08:	3601      	adds	r6, #1
 8005b0a:	2301      	movs	r3, #1
 8005b0c:	1064      	asrs	r4, r4, #1
 8005b0e:	f105 0508 	add.w	r5, r5, #8
 8005b12:	d1f3      	bne.n	8005afc <_dtoa_r+0xa6c>
 8005b14:	2b00      	cmp	r3, #0
 8005b16:	f43f ac27 	beq.w	8005368 <_dtoa_r+0x2d8>
 8005b1a:	e9cd 0100 	strd	r0, r1, [sp]
 8005b1e:	e423      	b.n	8005368 <_dtoa_r+0x2d8>
 8005b20:	9b00      	ldr	r3, [sp, #0]
 8005b22:	2b00      	cmp	r3, #0
 8005b24:	f43f af6e 	beq.w	8005a04 <_dtoa_r+0x974>
 8005b28:	e726      	b.n	8005978 <_dtoa_r+0x8e8>
 8005b2a:	6869      	ldr	r1, [r5, #4]
 8005b2c:	4648      	mov	r0, r9
 8005b2e:	f001 f9a5 	bl	8006e7c <_Balloc>
 8005b32:	692b      	ldr	r3, [r5, #16]
 8005b34:	3302      	adds	r3, #2
 8005b36:	009a      	lsls	r2, r3, #2
 8005b38:	4604      	mov	r4, r0
 8005b3a:	f105 010c 	add.w	r1, r5, #12
 8005b3e:	300c      	adds	r0, #12
 8005b40:	f7fa fcde 	bl	8000500 <memcpy>
 8005b44:	4621      	mov	r1, r4
 8005b46:	2201      	movs	r2, #1
 8005b48:	4648      	mov	r0, r9
 8005b4a:	f001 fb57 	bl	80071fc <__lshift>
 8005b4e:	4680      	mov	r8, r0
 8005b50:	e61f      	b.n	8005792 <_dtoa_r+0x702>
 8005b52:	2400      	movs	r4, #0
 8005b54:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005b58:	4621      	mov	r1, r4
 8005b5a:	4648      	mov	r0, r9
 8005b5c:	f001 f98e 	bl	8006e7c <_Balloc>
 8005b60:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005b64:	930e      	str	r3, [sp, #56]	; 0x38
 8005b66:	9309      	str	r3, [sp, #36]	; 0x24
 8005b68:	2301      	movs	r3, #1
 8005b6a:	4683      	mov	fp, r0
 8005b6c:	9407      	str	r4, [sp, #28]
 8005b6e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005b72:	930a      	str	r3, [sp, #40]	; 0x28
 8005b74:	e4b6      	b.n	80054e4 <_dtoa_r+0x454>
 8005b76:	f001 f9b1 	bl	8006edc <__multadd>
 8005b7a:	4627      	mov	r7, r4
 8005b7c:	4605      	mov	r5, r0
 8005b7e:	4680      	mov	r8, r0
 8005b80:	e614      	b.n	80057ac <_dtoa_r+0x71c>
 8005b82:	4648      	mov	r0, r9
 8005b84:	f001 f9a0 	bl	8006ec8 <_Bfree>
 8005b88:	2301      	movs	r3, #1
 8005b8a:	e639      	b.n	8005800 <_dtoa_r+0x770>
 8005b8c:	9b02      	ldr	r3, [sp, #8]
 8005b8e:	2b02      	cmp	r3, #2
 8005b90:	f77f adf3 	ble.w	800577a <_dtoa_r+0x6ea>
 8005b94:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005b96:	2b00      	cmp	r3, #0
 8005b98:	f000 80cf 	beq.w	8005d3a <_dtoa_r+0xcaa>
 8005b9c:	9b07      	ldr	r3, [sp, #28]
 8005b9e:	43db      	mvns	r3, r3
 8005ba0:	9306      	str	r3, [sp, #24]
 8005ba2:	465c      	mov	r4, fp
 8005ba4:	e78b      	b.n	8005abe <_dtoa_r+0xa2e>
 8005ba6:	9a06      	ldr	r2, [sp, #24]
 8005ba8:	2331      	movs	r3, #49	; 0x31
 8005baa:	3201      	adds	r2, #1
 8005bac:	9206      	str	r2, [sp, #24]
 8005bae:	f88b 3000 	strb.w	r3, [fp]
 8005bb2:	e6b3      	b.n	800591c <_dtoa_r+0x88c>
 8005bb4:	2401      	movs	r4, #1
 8005bb6:	9409      	str	r4, [sp, #36]	; 0x24
 8005bb8:	9407      	str	r4, [sp, #28]
 8005bba:	f7ff bb8b 	b.w	80052d4 <_dtoa_r+0x244>
 8005bbe:	4630      	mov	r0, r6
 8005bc0:	f7fa ff50 	bl	8000a64 <__aeabi_i2d>
 8005bc4:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005bc8:	f7fa ffb6 	bl	8000b38 <__aeabi_dmul>
 8005bcc:	2200      	movs	r2, #0
 8005bce:	4b68      	ldr	r3, [pc, #416]	; (8005d70 <_dtoa_r+0xce0>)
 8005bd0:	f7fa fdfc 	bl	80007cc <__adddf3>
 8005bd4:	4606      	mov	r6, r0
 8005bd6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005bda:	2200      	movs	r2, #0
 8005bdc:	4b61      	ldr	r3, [pc, #388]	; (8005d64 <_dtoa_r+0xcd4>)
 8005bde:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005be2:	f7fa fdf1 	bl	80007c8 <__aeabi_dsub>
 8005be6:	4632      	mov	r2, r6
 8005be8:	463b      	mov	r3, r7
 8005bea:	4604      	mov	r4, r0
 8005bec:	460d      	mov	r5, r1
 8005bee:	f7fb fa33 	bl	8001058 <__aeabi_dcmpgt>
 8005bf2:	2800      	cmp	r0, #0
 8005bf4:	d14f      	bne.n	8005c96 <_dtoa_r+0xc06>
 8005bf6:	4632      	mov	r2, r6
 8005bf8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005bfc:	4620      	mov	r0, r4
 8005bfe:	4629      	mov	r1, r5
 8005c00:	f7fb fa0c 	bl	800101c <__aeabi_dcmplt>
 8005c04:	2800      	cmp	r0, #0
 8005c06:	f43f ac69 	beq.w	80054dc <_dtoa_r+0x44c>
 8005c0a:	2600      	movs	r6, #0
 8005c0c:	4635      	mov	r5, r6
 8005c0e:	e7c5      	b.n	8005b9c <_dtoa_r+0xb0c>
 8005c10:	2301      	movs	r3, #1
 8005c12:	930a      	str	r3, [sp, #40]	; 0x28
 8005c14:	e6c8      	b.n	80059a8 <_dtoa_r+0x918>
 8005c16:	4651      	mov	r1, sl
 8005c18:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005c1a:	4648      	mov	r0, r9
 8005c1c:	f001 fa9e 	bl	800715c <__pow5mult>
 8005c20:	4682      	mov	sl, r0
 8005c22:	e572      	b.n	800570a <_dtoa_r+0x67a>
 8005c24:	f8dd a000 	ldr.w	sl, [sp]
 8005c28:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005c2c:	e686      	b.n	800593c <_dtoa_r+0x8ac>
 8005c2e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005c30:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005c32:	1afb      	subs	r3, r7, r3
 8005c34:	441a      	add	r2, r3
 8005c36:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005c3a:	2700      	movs	r7, #0
 8005c3c:	e512      	b.n	8005664 <_dtoa_r+0x5d4>
 8005c3e:	2b00      	cmp	r3, #0
 8005c40:	9402      	str	r4, [sp, #8]
 8005c42:	465e      	mov	r6, fp
 8005c44:	f107 0401 	add.w	r4, r7, #1
 8005c48:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005c4c:	f300 80ba 	bgt.w	8005dc4 <_dtoa_r+0xd34>
 8005c50:	9b00      	ldr	r3, [sp, #0]
 8005c52:	9502      	str	r5, [sp, #8]
 8005c54:	703b      	strb	r3, [r7, #0]
 8005c56:	4645      	mov	r5, r8
 8005c58:	e660      	b.n	800591c <_dtoa_r+0x88c>
 8005c5a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005c5e:	2602      	movs	r6, #2
 8005c60:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005c64:	f7ff bb67 	b.w	8005336 <_dtoa_r+0x2a6>
 8005c68:	9b00      	ldr	r3, [sp, #0]
 8005c6a:	2b39      	cmp	r3, #57	; 0x39
 8005c6c:	465e      	mov	r6, fp
 8005c6e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005c72:	f000 80b9 	beq.w	8005de8 <_dtoa_r+0xd58>
 8005c76:	9b00      	ldr	r3, [sp, #0]
 8005c78:	9502      	str	r5, [sp, #8]
 8005c7a:	3301      	adds	r3, #1
 8005c7c:	703b      	strb	r3, [r7, #0]
 8005c7e:	4645      	mov	r5, r8
 8005c80:	e64c      	b.n	800591c <_dtoa_r+0x88c>
 8005c82:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8005c86:	1a9c      	subs	r4, r3, r2
 8005c88:	e4f5      	b.n	8005676 <_dtoa_r+0x5e6>
 8005c8a:	465e      	mov	r6, fp
 8005c8c:	9502      	str	r5, [sp, #8]
 8005c8e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005c92:	4645      	mov	r5, r8
 8005c94:	e61a      	b.n	80058cc <_dtoa_r+0x83c>
 8005c96:	2600      	movs	r6, #0
 8005c98:	4635      	mov	r5, r6
 8005c9a:	e708      	b.n	8005aae <_dtoa_r+0xa1e>
 8005c9c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005ca0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005ca4:	f7fa ff48 	bl	8000b38 <__aeabi_dmul>
 8005ca8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005caa:	f88b 5000 	strb.w	r5, [fp]
 8005cae:	2b01      	cmp	r3, #1
 8005cb0:	e9cd 0100 	strd	r0, r1, [sp]
 8005cb4:	d020      	beq.n	8005cf8 <_dtoa_r+0xc68>
 8005cb6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005cb8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005cbc:	445b      	add	r3, fp
 8005cbe:	4698      	mov	r8, r3
 8005cc0:	2200      	movs	r2, #0
 8005cc2:	4b2c      	ldr	r3, [pc, #176]	; (8005d74 <_dtoa_r+0xce4>)
 8005cc4:	4630      	mov	r0, r6
 8005cc6:	4639      	mov	r1, r7
 8005cc8:	f7fa ff36 	bl	8000b38 <__aeabi_dmul>
 8005ccc:	460f      	mov	r7, r1
 8005cce:	4606      	mov	r6, r0
 8005cd0:	f7fb f9e2 	bl	8001098 <__aeabi_d2iz>
 8005cd4:	4605      	mov	r5, r0
 8005cd6:	f7fa fec5 	bl	8000a64 <__aeabi_i2d>
 8005cda:	3530      	adds	r5, #48	; 0x30
 8005cdc:	4602      	mov	r2, r0
 8005cde:	460b      	mov	r3, r1
 8005ce0:	4630      	mov	r0, r6
 8005ce2:	4639      	mov	r1, r7
 8005ce4:	f7fa fd70 	bl	80007c8 <__aeabi_dsub>
 8005ce8:	f804 5b01 	strb.w	r5, [r4], #1
 8005cec:	4544      	cmp	r4, r8
 8005cee:	4606      	mov	r6, r0
 8005cf0:	460f      	mov	r7, r1
 8005cf2:	d1e5      	bne.n	8005cc0 <_dtoa_r+0xc30>
 8005cf4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005cf8:	4b1f      	ldr	r3, [pc, #124]	; (8005d78 <_dtoa_r+0xce8>)
 8005cfa:	2200      	movs	r2, #0
 8005cfc:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005d00:	f7fa fd64 	bl	80007cc <__adddf3>
 8005d04:	4632      	mov	r2, r6
 8005d06:	463b      	mov	r3, r7
 8005d08:	f7fb f988 	bl	800101c <__aeabi_dcmplt>
 8005d0c:	2800      	cmp	r0, #0
 8005d0e:	d070      	beq.n	8005df2 <_dtoa_r+0xd62>
 8005d10:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005d12:	9306      	str	r3, [sp, #24]
 8005d14:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005d18:	e48f      	b.n	800563a <_dtoa_r+0x5aa>
 8005d1a:	2330      	movs	r3, #48	; 0x30
 8005d1c:	f88b 3000 	strb.w	r3, [fp]
 8005d20:	9b06      	ldr	r3, [sp, #24]
 8005d22:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005d26:	3301      	adds	r3, #1
 8005d28:	9306      	str	r3, [sp, #24]
 8005d2a:	465b      	mov	r3, fp
 8005d2c:	e489      	b.n	8005642 <_dtoa_r+0x5b2>
 8005d2e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005d30:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005d34:	e6a0      	b.n	8005a78 <_dtoa_r+0x9e8>
 8005d36:	2300      	movs	r3, #0
 8005d38:	e676      	b.n	8005a28 <_dtoa_r+0x998>
 8005d3a:	4631      	mov	r1, r6
 8005d3c:	2205      	movs	r2, #5
 8005d3e:	4648      	mov	r0, r9
 8005d40:	f001 f8cc 	bl	8006edc <__multadd>
 8005d44:	4601      	mov	r1, r0
 8005d46:	4606      	mov	r6, r0
 8005d48:	4650      	mov	r0, sl
 8005d4a:	f001 faad 	bl	80072a8 <__mcmp>
 8005d4e:	2800      	cmp	r0, #0
 8005d50:	f73f aead 	bgt.w	8005aae <_dtoa_r+0xa1e>
 8005d54:	e722      	b.n	8005b9c <_dtoa_r+0xb0c>
 8005d56:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005d5a:	2602      	movs	r6, #2
 8005d5c:	ed8d 7b00 	vstr	d7, [sp]
 8005d60:	f7ff bb02 	b.w	8005368 <_dtoa_r+0x2d8>
 8005d64:	40140000 	.word	0x40140000
 8005d68:	08008d18 	.word	0x08008d18
 8005d6c:	08008cf0 	.word	0x08008cf0
 8005d70:	401c0000 	.word	0x401c0000
 8005d74:	40240000 	.word	0x40240000
 8005d78:	3fe00000 	.word	0x3fe00000
 8005d7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005d7e:	2b00      	cmp	r3, #0
 8005d80:	f43f af1d 	beq.w	8005bbe <_dtoa_r+0xb2e>
 8005d84:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8005d86:	2c00      	cmp	r4, #0
 8005d88:	f77f aba8 	ble.w	80054dc <_dtoa_r+0x44c>
 8005d8c:	2200      	movs	r2, #0
 8005d8e:	4b45      	ldr	r3, [pc, #276]	; (8005ea4 <_dtoa_r+0xe14>)
 8005d90:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005d94:	f7fa fed0 	bl	8000b38 <__aeabi_dmul>
 8005d98:	e9cd 0100 	strd	r0, r1, [sp]
 8005d9c:	1c70      	adds	r0, r6, #1
 8005d9e:	f7fa fe61 	bl	8000a64 <__aeabi_i2d>
 8005da2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005da6:	f7fa fec7 	bl	8000b38 <__aeabi_dmul>
 8005daa:	4b3f      	ldr	r3, [pc, #252]	; (8005ea8 <_dtoa_r+0xe18>)
 8005dac:	2200      	movs	r2, #0
 8005dae:	f7fa fd0d 	bl	80007cc <__adddf3>
 8005db2:	9b06      	ldr	r3, [sp, #24]
 8005db4:	9412      	str	r4, [sp, #72]	; 0x48
 8005db6:	3b01      	subs	r3, #1
 8005db8:	4606      	mov	r6, r0
 8005dba:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005dbe:	9316      	str	r3, [sp, #88]	; 0x58
 8005dc0:	f7ff baf3 	b.w	80053aa <_dtoa_r+0x31a>
 8005dc4:	4651      	mov	r1, sl
 8005dc6:	2201      	movs	r2, #1
 8005dc8:	4648      	mov	r0, r9
 8005dca:	f001 fa17 	bl	80071fc <__lshift>
 8005dce:	4631      	mov	r1, r6
 8005dd0:	4682      	mov	sl, r0
 8005dd2:	f001 fa69 	bl	80072a8 <__mcmp>
 8005dd6:	2800      	cmp	r0, #0
 8005dd8:	dd3b      	ble.n	8005e52 <_dtoa_r+0xdc2>
 8005dda:	9b00      	ldr	r3, [sp, #0]
 8005ddc:	2b39      	cmp	r3, #57	; 0x39
 8005dde:	d003      	beq.n	8005de8 <_dtoa_r+0xd58>
 8005de0:	9b02      	ldr	r3, [sp, #8]
 8005de2:	3331      	adds	r3, #49	; 0x31
 8005de4:	9300      	str	r3, [sp, #0]
 8005de6:	e733      	b.n	8005c50 <_dtoa_r+0xbc0>
 8005de8:	2239      	movs	r2, #57	; 0x39
 8005dea:	9502      	str	r5, [sp, #8]
 8005dec:	703a      	strb	r2, [r7, #0]
 8005dee:	4645      	mov	r5, r8
 8005df0:	e58e      	b.n	8005910 <_dtoa_r+0x880>
 8005df2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005df6:	2000      	movs	r0, #0
 8005df8:	492c      	ldr	r1, [pc, #176]	; (8005eac <_dtoa_r+0xe1c>)
 8005dfa:	f7fa fce5 	bl	80007c8 <__aeabi_dsub>
 8005dfe:	4632      	mov	r2, r6
 8005e00:	463b      	mov	r3, r7
 8005e02:	f7fb f929 	bl	8001058 <__aeabi_dcmpgt>
 8005e06:	b910      	cbnz	r0, 8005e0e <_dtoa_r+0xd7e>
 8005e08:	f7ff bb68 	b.w	80054dc <_dtoa_r+0x44c>
 8005e0c:	4614      	mov	r4, r2
 8005e0e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8005e12:	2b30      	cmp	r3, #48	; 0x30
 8005e14:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005e18:	d0f8      	beq.n	8005e0c <_dtoa_r+0xd7c>
 8005e1a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005e1c:	9306      	str	r3, [sp, #24]
 8005e1e:	e58d      	b.n	800593c <_dtoa_r+0x8ac>
 8005e20:	46d9      	mov	r9, fp
 8005e22:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005e26:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005e2a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005e2c:	9306      	str	r3, [sp, #24]
 8005e2e:	e404      	b.n	800563a <_dtoa_r+0x5aa>
 8005e30:	9b00      	ldr	r3, [sp, #0]
 8005e32:	2b39      	cmp	r3, #57	; 0x39
 8005e34:	4621      	mov	r1, r4
 8005e36:	4632      	mov	r2, r6
 8005e38:	f107 0401 	add.w	r4, r7, #1
 8005e3c:	465e      	mov	r6, fp
 8005e3e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005e42:	d0d1      	beq.n	8005de8 <_dtoa_r+0xd58>
 8005e44:	2a00      	cmp	r2, #0
 8005e46:	f77f af03 	ble.w	8005c50 <_dtoa_r+0xbc0>
 8005e4a:	460b      	mov	r3, r1
 8005e4c:	3331      	adds	r3, #49	; 0x31
 8005e4e:	9300      	str	r3, [sp, #0]
 8005e50:	e6fe      	b.n	8005c50 <_dtoa_r+0xbc0>
 8005e52:	f47f aefd 	bne.w	8005c50 <_dtoa_r+0xbc0>
 8005e56:	9b00      	ldr	r3, [sp, #0]
 8005e58:	07da      	lsls	r2, r3, #31
 8005e5a:	f57f aef9 	bpl.w	8005c50 <_dtoa_r+0xbc0>
 8005e5e:	e7bc      	b.n	8005dda <_dtoa_r+0xd4a>
 8005e60:	4629      	mov	r1, r5
 8005e62:	2300      	movs	r3, #0
 8005e64:	220a      	movs	r2, #10
 8005e66:	4648      	mov	r0, r9
 8005e68:	f001 f838 	bl	8006edc <__multadd>
 8005e6c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005e6e:	2b00      	cmp	r3, #0
 8005e70:	4605      	mov	r5, r0
 8005e72:	dd09      	ble.n	8005e88 <_dtoa_r+0xdf8>
 8005e74:	9309      	str	r3, [sp, #36]	; 0x24
 8005e76:	e484      	b.n	8005782 <_dtoa_r+0x6f2>
 8005e78:	9b02      	ldr	r3, [sp, #8]
 8005e7a:	2b02      	cmp	r3, #2
 8005e7c:	dc0e      	bgt.n	8005e9c <_dtoa_r+0xe0c>
 8005e7e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005e80:	e507      	b.n	8005892 <_dtoa_r+0x802>
 8005e82:	2602      	movs	r6, #2
 8005e84:	f7ff ba70 	b.w	8005368 <_dtoa_r+0x2d8>
 8005e88:	9b02      	ldr	r3, [sp, #8]
 8005e8a:	2b02      	cmp	r3, #2
 8005e8c:	dc06      	bgt.n	8005e9c <_dtoa_r+0xe0c>
 8005e8e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005e90:	e7f0      	b.n	8005e74 <_dtoa_r+0xde4>
 8005e92:	f43f ac59 	beq.w	8005748 <_dtoa_r+0x6b8>
 8005e96:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005e9a:	e450      	b.n	800573e <_dtoa_r+0x6ae>
 8005e9c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005e9e:	9309      	str	r3, [sp, #36]	; 0x24
 8005ea0:	e678      	b.n	8005b94 <_dtoa_r+0xb04>
 8005ea2:	bf00      	nop
 8005ea4:	40240000 	.word	0x40240000
 8005ea8:	401c0000 	.word	0x401c0000
 8005eac:	3fe00000 	.word	0x3fe00000

08005eb0 <__sflush_r>:
 8005eb0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005eb4:	b29a      	uxth	r2, r3
 8005eb6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005eba:	460c      	mov	r4, r1
 8005ebc:	0711      	lsls	r1, r2, #28
 8005ebe:	4680      	mov	r8, r0
 8005ec0:	d444      	bmi.n	8005f4c <__sflush_r+0x9c>
 8005ec2:	6862      	ldr	r2, [r4, #4]
 8005ec4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005ec8:	2a00      	cmp	r2, #0
 8005eca:	81a3      	strh	r3, [r4, #12]
 8005ecc:	dd59      	ble.n	8005f82 <__sflush_r+0xd2>
 8005ece:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005ed0:	2d00      	cmp	r5, #0
 8005ed2:	d053      	beq.n	8005f7c <__sflush_r+0xcc>
 8005ed4:	2200      	movs	r2, #0
 8005ed6:	b29b      	uxth	r3, r3
 8005ed8:	f8d8 6000 	ldr.w	r6, [r8]
 8005edc:	69e1      	ldr	r1, [r4, #28]
 8005ede:	f8c8 2000 	str.w	r2, [r8]
 8005ee2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8005ee6:	f040 8083 	bne.w	8005ff0 <__sflush_r+0x140>
 8005eea:	2301      	movs	r3, #1
 8005eec:	4640      	mov	r0, r8
 8005eee:	47a8      	blx	r5
 8005ef0:	1c42      	adds	r2, r0, #1
 8005ef2:	d04a      	beq.n	8005f8a <__sflush_r+0xda>
 8005ef4:	89a3      	ldrh	r3, [r4, #12]
 8005ef6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005ef8:	69e1      	ldr	r1, [r4, #28]
 8005efa:	075b      	lsls	r3, r3, #29
 8005efc:	d505      	bpl.n	8005f0a <__sflush_r+0x5a>
 8005efe:	6862      	ldr	r2, [r4, #4]
 8005f00:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8005f02:	1a80      	subs	r0, r0, r2
 8005f04:	b10b      	cbz	r3, 8005f0a <__sflush_r+0x5a>
 8005f06:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005f08:	1ac0      	subs	r0, r0, r3
 8005f0a:	4602      	mov	r2, r0
 8005f0c:	2300      	movs	r3, #0
 8005f0e:	4640      	mov	r0, r8
 8005f10:	47a8      	blx	r5
 8005f12:	1c47      	adds	r7, r0, #1
 8005f14:	d045      	beq.n	8005fa2 <__sflush_r+0xf2>
 8005f16:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005f1a:	6922      	ldr	r2, [r4, #16]
 8005f1c:	6022      	str	r2, [r4, #0]
 8005f1e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005f22:	2200      	movs	r2, #0
 8005f24:	81a3      	strh	r3, [r4, #12]
 8005f26:	04db      	lsls	r3, r3, #19
 8005f28:	6062      	str	r2, [r4, #4]
 8005f2a:	d500      	bpl.n	8005f2e <__sflush_r+0x7e>
 8005f2c:	6520      	str	r0, [r4, #80]	; 0x50
 8005f2e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005f30:	f8c8 6000 	str.w	r6, [r8]
 8005f34:	b311      	cbz	r1, 8005f7c <__sflush_r+0xcc>
 8005f36:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005f3a:	4299      	cmp	r1, r3
 8005f3c:	d002      	beq.n	8005f44 <__sflush_r+0x94>
 8005f3e:	4640      	mov	r0, r8
 8005f40:	f000 f95e 	bl	8006200 <_free_r>
 8005f44:	2000      	movs	r0, #0
 8005f46:	6320      	str	r0, [r4, #48]	; 0x30
 8005f48:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005f4c:	6926      	ldr	r6, [r4, #16]
 8005f4e:	b1ae      	cbz	r6, 8005f7c <__sflush_r+0xcc>
 8005f50:	6825      	ldr	r5, [r4, #0]
 8005f52:	6026      	str	r6, [r4, #0]
 8005f54:	0792      	lsls	r2, r2, #30
 8005f56:	bf0c      	ite	eq
 8005f58:	6963      	ldreq	r3, [r4, #20]
 8005f5a:	2300      	movne	r3, #0
 8005f5c:	1bad      	subs	r5, r5, r6
 8005f5e:	60a3      	str	r3, [r4, #8]
 8005f60:	e00a      	b.n	8005f78 <__sflush_r+0xc8>
 8005f62:	462b      	mov	r3, r5
 8005f64:	4632      	mov	r2, r6
 8005f66:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005f68:	69e1      	ldr	r1, [r4, #28]
 8005f6a:	4640      	mov	r0, r8
 8005f6c:	47b8      	blx	r7
 8005f6e:	2800      	cmp	r0, #0
 8005f70:	eba5 0500 	sub.w	r5, r5, r0
 8005f74:	4406      	add	r6, r0
 8005f76:	dd2b      	ble.n	8005fd0 <__sflush_r+0x120>
 8005f78:	2d00      	cmp	r5, #0
 8005f7a:	dcf2      	bgt.n	8005f62 <__sflush_r+0xb2>
 8005f7c:	2000      	movs	r0, #0
 8005f7e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005f82:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005f84:	2a00      	cmp	r2, #0
 8005f86:	dca2      	bgt.n	8005ece <__sflush_r+0x1e>
 8005f88:	e7f8      	b.n	8005f7c <__sflush_r+0xcc>
 8005f8a:	f8d8 3000 	ldr.w	r3, [r8]
 8005f8e:	2b00      	cmp	r3, #0
 8005f90:	d0b0      	beq.n	8005ef4 <__sflush_r+0x44>
 8005f92:	2b1d      	cmp	r3, #29
 8005f94:	d001      	beq.n	8005f9a <__sflush_r+0xea>
 8005f96:	2b16      	cmp	r3, #22
 8005f98:	d12c      	bne.n	8005ff4 <__sflush_r+0x144>
 8005f9a:	f8c8 6000 	str.w	r6, [r8]
 8005f9e:	2000      	movs	r0, #0
 8005fa0:	e7ed      	b.n	8005f7e <__sflush_r+0xce>
 8005fa2:	f8d8 1000 	ldr.w	r1, [r8]
 8005fa6:	291d      	cmp	r1, #29
 8005fa8:	d81a      	bhi.n	8005fe0 <__sflush_r+0x130>
 8005faa:	4b15      	ldr	r3, [pc, #84]	; (8006000 <__sflush_r+0x150>)
 8005fac:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005fb0:	40cb      	lsrs	r3, r1
 8005fb2:	43db      	mvns	r3, r3
 8005fb4:	f013 0301 	ands.w	r3, r3, #1
 8005fb8:	d114      	bne.n	8005fe4 <__sflush_r+0x134>
 8005fba:	6925      	ldr	r5, [r4, #16]
 8005fbc:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005fc0:	e9c4 5300 	strd	r5, r3, [r4]
 8005fc4:	04d5      	lsls	r5, r2, #19
 8005fc6:	81a2      	strh	r2, [r4, #12]
 8005fc8:	d5b1      	bpl.n	8005f2e <__sflush_r+0x7e>
 8005fca:	2900      	cmp	r1, #0
 8005fcc:	d1af      	bne.n	8005f2e <__sflush_r+0x7e>
 8005fce:	e7ad      	b.n	8005f2c <__sflush_r+0x7c>
 8005fd0:	89a3      	ldrh	r3, [r4, #12]
 8005fd2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005fd6:	81a3      	strh	r3, [r4, #12]
 8005fd8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005fdc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005fe0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005fe4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005fe8:	81a2      	strh	r2, [r4, #12]
 8005fea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005fee:	e7c6      	b.n	8005f7e <__sflush_r+0xce>
 8005ff0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005ff2:	e782      	b.n	8005efa <__sflush_r+0x4a>
 8005ff4:	89a3      	ldrh	r3, [r4, #12]
 8005ff6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005ffa:	81a3      	strh	r3, [r4, #12]
 8005ffc:	e7bf      	b.n	8005f7e <__sflush_r+0xce>
 8005ffe:	bf00      	nop
 8006000:	20400001 	.word	0x20400001

08006004 <_fflush_r>:
 8006004:	b538      	push	{r3, r4, r5, lr}
 8006006:	460d      	mov	r5, r1
 8006008:	4604      	mov	r4, r0
 800600a:	b108      	cbz	r0, 8006010 <_fflush_r+0xc>
 800600c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800600e:	b1a3      	cbz	r3, 800603a <_fflush_r+0x36>
 8006010:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8006014:	b1b8      	cbz	r0, 8006046 <_fflush_r+0x42>
 8006016:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8006018:	07db      	lsls	r3, r3, #31
 800601a:	d401      	bmi.n	8006020 <_fflush_r+0x1c>
 800601c:	0581      	lsls	r1, r0, #22
 800601e:	d51a      	bpl.n	8006056 <_fflush_r+0x52>
 8006020:	4620      	mov	r0, r4
 8006022:	4629      	mov	r1, r5
 8006024:	f7ff ff44 	bl	8005eb0 <__sflush_r>
 8006028:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800602a:	07da      	lsls	r2, r3, #31
 800602c:	4604      	mov	r4, r0
 800602e:	d402      	bmi.n	8006036 <_fflush_r+0x32>
 8006030:	89ab      	ldrh	r3, [r5, #12]
 8006032:	059b      	lsls	r3, r3, #22
 8006034:	d50a      	bpl.n	800604c <_fflush_r+0x48>
 8006036:	4620      	mov	r0, r4
 8006038:	bd38      	pop	{r3, r4, r5, pc}
 800603a:	f000 f83f 	bl	80060bc <__sinit>
 800603e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8006042:	2800      	cmp	r0, #0
 8006044:	d1e7      	bne.n	8006016 <_fflush_r+0x12>
 8006046:	4604      	mov	r4, r0
 8006048:	4620      	mov	r0, r4
 800604a:	bd38      	pop	{r3, r4, r5, pc}
 800604c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800604e:	f000 fb87 	bl	8006760 <__retarget_lock_release_recursive>
 8006052:	4620      	mov	r0, r4
 8006054:	bd38      	pop	{r3, r4, r5, pc}
 8006056:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8006058:	f000 fb80 	bl	800675c <__retarget_lock_acquire_recursive>
 800605c:	e7e0      	b.n	8006020 <_fflush_r+0x1c>
 800605e:	bf00      	nop

08006060 <std>:
 8006060:	b510      	push	{r4, lr}
 8006062:	2300      	movs	r3, #0
 8006064:	4604      	mov	r4, r0
 8006066:	8181      	strh	r1, [r0, #12]
 8006068:	81c2      	strh	r2, [r0, #14]
 800606a:	e9c0 3300 	strd	r3, r3, [r0]
 800606e:	6083      	str	r3, [r0, #8]
 8006070:	6643      	str	r3, [r0, #100]	; 0x64
 8006072:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8006076:	6183      	str	r3, [r0, #24]
 8006078:	4619      	mov	r1, r3
 800607a:	2208      	movs	r2, #8
 800607c:	305c      	adds	r0, #92	; 0x5c
 800607e:	f7fd f8c9 	bl	8003214 <memset>
 8006082:	4807      	ldr	r0, [pc, #28]	; (80060a0 <std+0x40>)
 8006084:	4907      	ldr	r1, [pc, #28]	; (80060a4 <std+0x44>)
 8006086:	4a08      	ldr	r2, [pc, #32]	; (80060a8 <std+0x48>)
 8006088:	4b08      	ldr	r3, [pc, #32]	; (80060ac <std+0x4c>)
 800608a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800608c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8006090:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8006094:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8006098:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800609c:	f000 bb5a 	b.w	8006754 <__retarget_lock_init_recursive>
 80060a0:	08007879 	.word	0x08007879
 80060a4:	0800789d 	.word	0x0800789d
 80060a8:	080078d9 	.word	0x080078d9
 80060ac:	080078f9 	.word	0x080078f9

080060b0 <_cleanup_r>:
 80060b0:	4901      	ldr	r1, [pc, #4]	; (80060b8 <_cleanup_r+0x8>)
 80060b2:	f000 bb17 	b.w	80066e4 <_fwalk_reent>
 80060b6:	bf00      	nop
 80060b8:	08007b69 	.word	0x08007b69

080060bc <__sinit>:
 80060bc:	b510      	push	{r4, lr}
 80060be:	4604      	mov	r4, r0
 80060c0:	4812      	ldr	r0, [pc, #72]	; (800610c <__sinit+0x50>)
 80060c2:	f000 fb4b 	bl	800675c <__retarget_lock_acquire_recursive>
 80060c6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80060c8:	b9d2      	cbnz	r2, 8006100 <__sinit+0x44>
 80060ca:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80060ce:	4810      	ldr	r0, [pc, #64]	; (8006110 <__sinit+0x54>)
 80060d0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80060d4:	2103      	movs	r1, #3
 80060d6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80060da:	63e0      	str	r0, [r4, #60]	; 0x3c
 80060dc:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80060e0:	6860      	ldr	r0, [r4, #4]
 80060e2:	2104      	movs	r1, #4
 80060e4:	f7ff ffbc 	bl	8006060 <std>
 80060e8:	2201      	movs	r2, #1
 80060ea:	2109      	movs	r1, #9
 80060ec:	68a0      	ldr	r0, [r4, #8]
 80060ee:	f7ff ffb7 	bl	8006060 <std>
 80060f2:	2202      	movs	r2, #2
 80060f4:	2112      	movs	r1, #18
 80060f6:	68e0      	ldr	r0, [r4, #12]
 80060f8:	f7ff ffb2 	bl	8006060 <std>
 80060fc:	2301      	movs	r3, #1
 80060fe:	63a3      	str	r3, [r4, #56]	; 0x38
 8006100:	4802      	ldr	r0, [pc, #8]	; (800610c <__sinit+0x50>)
 8006102:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8006106:	f000 bb2b 	b.w	8006760 <__retarget_lock_release_recursive>
 800610a:	bf00      	nop
 800610c:	20000b84 	.word	0x20000b84
 8006110:	080060b1 	.word	0x080060b1

08006114 <__sfp_lock_acquire>:
 8006114:	4801      	ldr	r0, [pc, #4]	; (800611c <__sfp_lock_acquire+0x8>)
 8006116:	f000 bb21 	b.w	800675c <__retarget_lock_acquire_recursive>
 800611a:	bf00      	nop
 800611c:	20000b98 	.word	0x20000b98

08006120 <__sfp_lock_release>:
 8006120:	4801      	ldr	r0, [pc, #4]	; (8006128 <__sfp_lock_release+0x8>)
 8006122:	f000 bb1d 	b.w	8006760 <__retarget_lock_release_recursive>
 8006126:	bf00      	nop
 8006128:	20000b98 	.word	0x20000b98

0800612c <__libc_fini_array>:
 800612c:	b538      	push	{r3, r4, r5, lr}
 800612e:	4c0a      	ldr	r4, [pc, #40]	; (8006158 <__libc_fini_array+0x2c>)
 8006130:	4d0a      	ldr	r5, [pc, #40]	; (800615c <__libc_fini_array+0x30>)
 8006132:	1b64      	subs	r4, r4, r5
 8006134:	10a4      	asrs	r4, r4, #2
 8006136:	d00a      	beq.n	800614e <__libc_fini_array+0x22>
 8006138:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800613c:	3b01      	subs	r3, #1
 800613e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8006142:	3c01      	subs	r4, #1
 8006144:	f855 3904 	ldr.w	r3, [r5], #-4
 8006148:	4798      	blx	r3
 800614a:	2c00      	cmp	r4, #0
 800614c:	d1f9      	bne.n	8006142 <__libc_fini_array+0x16>
 800614e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8006152:	f001 befd 	b.w	8007f50 <_fini>
 8006156:	bf00      	nop
 8006158:	08008f14 	.word	0x08008f14
 800615c:	08008f10 	.word	0x08008f10

08006160 <_malloc_trim_r>:
 8006160:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006162:	4f24      	ldr	r7, [pc, #144]	; (80061f4 <_malloc_trim_r+0x94>)
 8006164:	460c      	mov	r4, r1
 8006166:	4606      	mov	r6, r0
 8006168:	f000 fe7c 	bl	8006e64 <__malloc_lock>
 800616c:	68bb      	ldr	r3, [r7, #8]
 800616e:	685d      	ldr	r5, [r3, #4]
 8006170:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8006174:	310f      	adds	r1, #15
 8006176:	f025 0503 	bic.w	r5, r5, #3
 800617a:	4429      	add	r1, r5
 800617c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8006180:	f021 010f 	bic.w	r1, r1, #15
 8006184:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8006188:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800618c:	db07      	blt.n	800619e <_malloc_trim_r+0x3e>
 800618e:	2100      	movs	r1, #0
 8006190:	4630      	mov	r0, r6
 8006192:	f001 fb5f 	bl	8007854 <_sbrk_r>
 8006196:	68bb      	ldr	r3, [r7, #8]
 8006198:	442b      	add	r3, r5
 800619a:	4298      	cmp	r0, r3
 800619c:	d004      	beq.n	80061a8 <_malloc_trim_r+0x48>
 800619e:	4630      	mov	r0, r6
 80061a0:	f000 fe66 	bl	8006e70 <__malloc_unlock>
 80061a4:	2000      	movs	r0, #0
 80061a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80061a8:	4261      	negs	r1, r4
 80061aa:	4630      	mov	r0, r6
 80061ac:	f001 fb52 	bl	8007854 <_sbrk_r>
 80061b0:	3001      	adds	r0, #1
 80061b2:	d00d      	beq.n	80061d0 <_malloc_trim_r+0x70>
 80061b4:	4b10      	ldr	r3, [pc, #64]	; (80061f8 <_malloc_trim_r+0x98>)
 80061b6:	68ba      	ldr	r2, [r7, #8]
 80061b8:	6819      	ldr	r1, [r3, #0]
 80061ba:	1b2d      	subs	r5, r5, r4
 80061bc:	f045 0501 	orr.w	r5, r5, #1
 80061c0:	4630      	mov	r0, r6
 80061c2:	1b09      	subs	r1, r1, r4
 80061c4:	6055      	str	r5, [r2, #4]
 80061c6:	6019      	str	r1, [r3, #0]
 80061c8:	f000 fe52 	bl	8006e70 <__malloc_unlock>
 80061cc:	2001      	movs	r0, #1
 80061ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80061d0:	2100      	movs	r1, #0
 80061d2:	4630      	mov	r0, r6
 80061d4:	f001 fb3e 	bl	8007854 <_sbrk_r>
 80061d8:	68ba      	ldr	r2, [r7, #8]
 80061da:	1a83      	subs	r3, r0, r2
 80061dc:	2b0f      	cmp	r3, #15
 80061de:	ddde      	ble.n	800619e <_malloc_trim_r+0x3e>
 80061e0:	4c06      	ldr	r4, [pc, #24]	; (80061fc <_malloc_trim_r+0x9c>)
 80061e2:	4905      	ldr	r1, [pc, #20]	; (80061f8 <_malloc_trim_r+0x98>)
 80061e4:	6824      	ldr	r4, [r4, #0]
 80061e6:	f043 0301 	orr.w	r3, r3, #1
 80061ea:	1b00      	subs	r0, r0, r4
 80061ec:	6053      	str	r3, [r2, #4]
 80061ee:	6008      	str	r0, [r1, #0]
 80061f0:	e7d5      	b.n	800619e <_malloc_trim_r+0x3e>
 80061f2:	bf00      	nop
 80061f4:	2000044c 	.word	0x2000044c
 80061f8:	20000a7c 	.word	0x20000a7c
 80061fc:	20000854 	.word	0x20000854

08006200 <_free_r>:
 8006200:	2900      	cmp	r1, #0
 8006202:	d053      	beq.n	80062ac <_free_r+0xac>
 8006204:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006206:	460c      	mov	r4, r1
 8006208:	4606      	mov	r6, r0
 800620a:	f000 fe2b 	bl	8006e64 <__malloc_lock>
 800620e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8006212:	4f71      	ldr	r7, [pc, #452]	; (80063d8 <_free_r+0x1d8>)
 8006214:	f02c 0101 	bic.w	r1, ip, #1
 8006218:	f1a4 0508 	sub.w	r5, r4, #8
 800621c:	186b      	adds	r3, r5, r1
 800621e:	68b8      	ldr	r0, [r7, #8]
 8006220:	685a      	ldr	r2, [r3, #4]
 8006222:	4298      	cmp	r0, r3
 8006224:	f022 0203 	bic.w	r2, r2, #3
 8006228:	d053      	beq.n	80062d2 <_free_r+0xd2>
 800622a:	f01c 0f01 	tst.w	ip, #1
 800622e:	605a      	str	r2, [r3, #4]
 8006230:	eb03 0002 	add.w	r0, r3, r2
 8006234:	d13b      	bne.n	80062ae <_free_r+0xae>
 8006236:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800623a:	6840      	ldr	r0, [r0, #4]
 800623c:	eba5 050c 	sub.w	r5, r5, ip
 8006240:	f107 0e08 	add.w	lr, r7, #8
 8006244:	68ac      	ldr	r4, [r5, #8]
 8006246:	4574      	cmp	r4, lr
 8006248:	4461      	add	r1, ip
 800624a:	f000 0001 	and.w	r0, r0, #1
 800624e:	d075      	beq.n	800633c <_free_r+0x13c>
 8006250:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8006254:	f8c4 c00c 	str.w	ip, [r4, #12]
 8006258:	f8cc 4008 	str.w	r4, [ip, #8]
 800625c:	b360      	cbz	r0, 80062b8 <_free_r+0xb8>
 800625e:	f041 0301 	orr.w	r3, r1, #1
 8006262:	606b      	str	r3, [r5, #4]
 8006264:	5069      	str	r1, [r5, r1]
 8006266:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800626a:	d350      	bcc.n	800630e <_free_r+0x10e>
 800626c:	0a4b      	lsrs	r3, r1, #9
 800626e:	2b04      	cmp	r3, #4
 8006270:	d870      	bhi.n	8006354 <_free_r+0x154>
 8006272:	098b      	lsrs	r3, r1, #6
 8006274:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8006278:	00e4      	lsls	r4, r4, #3
 800627a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800627e:	1938      	adds	r0, r7, r4
 8006280:	593b      	ldr	r3, [r7, r4]
 8006282:	3808      	subs	r0, #8
 8006284:	4298      	cmp	r0, r3
 8006286:	d078      	beq.n	800637a <_free_r+0x17a>
 8006288:	685a      	ldr	r2, [r3, #4]
 800628a:	f022 0203 	bic.w	r2, r2, #3
 800628e:	428a      	cmp	r2, r1
 8006290:	d971      	bls.n	8006376 <_free_r+0x176>
 8006292:	689b      	ldr	r3, [r3, #8]
 8006294:	4298      	cmp	r0, r3
 8006296:	d1f7      	bne.n	8006288 <_free_r+0x88>
 8006298:	68c3      	ldr	r3, [r0, #12]
 800629a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800629e:	609d      	str	r5, [r3, #8]
 80062a0:	60c5      	str	r5, [r0, #12]
 80062a2:	4630      	mov	r0, r6
 80062a4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80062a8:	f000 bde2 	b.w	8006e70 <__malloc_unlock>
 80062ac:	4770      	bx	lr
 80062ae:	6840      	ldr	r0, [r0, #4]
 80062b0:	f000 0001 	and.w	r0, r0, #1
 80062b4:	2800      	cmp	r0, #0
 80062b6:	d1d2      	bne.n	800625e <_free_r+0x5e>
 80062b8:	6898      	ldr	r0, [r3, #8]
 80062ba:	4c48      	ldr	r4, [pc, #288]	; (80063dc <_free_r+0x1dc>)
 80062bc:	4411      	add	r1, r2
 80062be:	42a0      	cmp	r0, r4
 80062c0:	f041 0201 	orr.w	r2, r1, #1
 80062c4:	d062      	beq.n	800638c <_free_r+0x18c>
 80062c6:	68db      	ldr	r3, [r3, #12]
 80062c8:	60c3      	str	r3, [r0, #12]
 80062ca:	6098      	str	r0, [r3, #8]
 80062cc:	606a      	str	r2, [r5, #4]
 80062ce:	5069      	str	r1, [r5, r1]
 80062d0:	e7c9      	b.n	8006266 <_free_r+0x66>
 80062d2:	f01c 0f01 	tst.w	ip, #1
 80062d6:	440a      	add	r2, r1
 80062d8:	d107      	bne.n	80062ea <_free_r+0xea>
 80062da:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80062de:	1aed      	subs	r5, r5, r3
 80062e0:	441a      	add	r2, r3
 80062e2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80062e6:	60cb      	str	r3, [r1, #12]
 80062e8:	6099      	str	r1, [r3, #8]
 80062ea:	4b3d      	ldr	r3, [pc, #244]	; (80063e0 <_free_r+0x1e0>)
 80062ec:	681b      	ldr	r3, [r3, #0]
 80062ee:	f042 0101 	orr.w	r1, r2, #1
 80062f2:	4293      	cmp	r3, r2
 80062f4:	6069      	str	r1, [r5, #4]
 80062f6:	60bd      	str	r5, [r7, #8]
 80062f8:	d804      	bhi.n	8006304 <_free_r+0x104>
 80062fa:	4b3a      	ldr	r3, [pc, #232]	; (80063e4 <_free_r+0x1e4>)
 80062fc:	4630      	mov	r0, r6
 80062fe:	6819      	ldr	r1, [r3, #0]
 8006300:	f7ff ff2e 	bl	8006160 <_malloc_trim_r>
 8006304:	4630      	mov	r0, r6
 8006306:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800630a:	f000 bdb1 	b.w	8006e70 <__malloc_unlock>
 800630e:	08c9      	lsrs	r1, r1, #3
 8006310:	6878      	ldr	r0, [r7, #4]
 8006312:	1c4a      	adds	r2, r1, #1
 8006314:	2301      	movs	r3, #1
 8006316:	1089      	asrs	r1, r1, #2
 8006318:	408b      	lsls	r3, r1
 800631a:	4303      	orrs	r3, r0
 800631c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8006320:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8006324:	607b      	str	r3, [r7, #4]
 8006326:	3908      	subs	r1, #8
 8006328:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800632c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8006330:	60c5      	str	r5, [r0, #12]
 8006332:	4630      	mov	r0, r6
 8006334:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006338:	f000 bd9a 	b.w	8006e70 <__malloc_unlock>
 800633c:	2800      	cmp	r0, #0
 800633e:	d145      	bne.n	80063cc <_free_r+0x1cc>
 8006340:	440a      	add	r2, r1
 8006342:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8006346:	f042 0001 	orr.w	r0, r2, #1
 800634a:	60cb      	str	r3, [r1, #12]
 800634c:	6099      	str	r1, [r3, #8]
 800634e:	6068      	str	r0, [r5, #4]
 8006350:	50aa      	str	r2, [r5, r2]
 8006352:	e7d7      	b.n	8006304 <_free_r+0x104>
 8006354:	2b14      	cmp	r3, #20
 8006356:	d908      	bls.n	800636a <_free_r+0x16a>
 8006358:	2b54      	cmp	r3, #84	; 0x54
 800635a:	d81e      	bhi.n	800639a <_free_r+0x19a>
 800635c:	0b0b      	lsrs	r3, r1, #12
 800635e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8006362:	00e4      	lsls	r4, r4, #3
 8006364:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8006368:	e789      	b.n	800627e <_free_r+0x7e>
 800636a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800636e:	00e4      	lsls	r4, r4, #3
 8006370:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8006374:	e783      	b.n	800627e <_free_r+0x7e>
 8006376:	4618      	mov	r0, r3
 8006378:	e78e      	b.n	8006298 <_free_r+0x98>
 800637a:	1093      	asrs	r3, r2, #2
 800637c:	6879      	ldr	r1, [r7, #4]
 800637e:	2201      	movs	r2, #1
 8006380:	fa02 f303 	lsl.w	r3, r2, r3
 8006384:	430b      	orrs	r3, r1
 8006386:	607b      	str	r3, [r7, #4]
 8006388:	4603      	mov	r3, r0
 800638a:	e786      	b.n	800629a <_free_r+0x9a>
 800638c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8006390:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8006394:	606a      	str	r2, [r5, #4]
 8006396:	5069      	str	r1, [r5, r1]
 8006398:	e7b4      	b.n	8006304 <_free_r+0x104>
 800639a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800639e:	d806      	bhi.n	80063ae <_free_r+0x1ae>
 80063a0:	0bcb      	lsrs	r3, r1, #15
 80063a2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80063a6:	00e4      	lsls	r4, r4, #3
 80063a8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80063ac:	e767      	b.n	800627e <_free_r+0x7e>
 80063ae:	f240 5254 	movw	r2, #1364	; 0x554
 80063b2:	4293      	cmp	r3, r2
 80063b4:	d806      	bhi.n	80063c4 <_free_r+0x1c4>
 80063b6:	0c8b      	lsrs	r3, r1, #18
 80063b8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80063bc:	00e4      	lsls	r4, r4, #3
 80063be:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80063c2:	e75c      	b.n	800627e <_free_r+0x7e>
 80063c4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80063c8:	227e      	movs	r2, #126	; 0x7e
 80063ca:	e758      	b.n	800627e <_free_r+0x7e>
 80063cc:	f041 0201 	orr.w	r2, r1, #1
 80063d0:	606a      	str	r2, [r5, #4]
 80063d2:	6019      	str	r1, [r3, #0]
 80063d4:	e796      	b.n	8006304 <_free_r+0x104>
 80063d6:	bf00      	nop
 80063d8:	2000044c 	.word	0x2000044c
 80063dc:	20000454 	.word	0x20000454
 80063e0:	20000858 	.word	0x20000858
 80063e4:	20000aac 	.word	0x20000aac

080063e8 <__sfvwrite_r>:
 80063e8:	6893      	ldr	r3, [r2, #8]
 80063ea:	2b00      	cmp	r3, #0
 80063ec:	f000 80e4 	beq.w	80065b8 <__sfvwrite_r+0x1d0>
 80063f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80063f4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80063f8:	b29b      	uxth	r3, r3
 80063fa:	460c      	mov	r4, r1
 80063fc:	0719      	lsls	r1, r3, #28
 80063fe:	b083      	sub	sp, #12
 8006400:	4682      	mov	sl, r0
 8006402:	4690      	mov	r8, r2
 8006404:	d535      	bpl.n	8006472 <__sfvwrite_r+0x8a>
 8006406:	6922      	ldr	r2, [r4, #16]
 8006408:	b39a      	cbz	r2, 8006472 <__sfvwrite_r+0x8a>
 800640a:	f013 0202 	ands.w	r2, r3, #2
 800640e:	f8d8 6000 	ldr.w	r6, [r8]
 8006412:	d03d      	beq.n	8006490 <__sfvwrite_r+0xa8>
 8006414:	2700      	movs	r7, #0
 8006416:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800641a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800641e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80066e0 <__sfvwrite_r+0x2f8>
 8006422:	463d      	mov	r5, r7
 8006424:	454d      	cmp	r5, r9
 8006426:	462b      	mov	r3, r5
 8006428:	463a      	mov	r2, r7
 800642a:	bf28      	it	cs
 800642c:	464b      	movcs	r3, r9
 800642e:	4661      	mov	r1, ip
 8006430:	4650      	mov	r0, sl
 8006432:	b1d5      	cbz	r5, 800646a <__sfvwrite_r+0x82>
 8006434:	47d8      	blx	fp
 8006436:	2800      	cmp	r0, #0
 8006438:	f340 80c6 	ble.w	80065c8 <__sfvwrite_r+0x1e0>
 800643c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006440:	1a1b      	subs	r3, r3, r0
 8006442:	4407      	add	r7, r0
 8006444:	1a2d      	subs	r5, r5, r0
 8006446:	f8c8 3008 	str.w	r3, [r8, #8]
 800644a:	2b00      	cmp	r3, #0
 800644c:	f000 80b0 	beq.w	80065b0 <__sfvwrite_r+0x1c8>
 8006450:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8006454:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8006458:	454d      	cmp	r5, r9
 800645a:	462b      	mov	r3, r5
 800645c:	463a      	mov	r2, r7
 800645e:	bf28      	it	cs
 8006460:	464b      	movcs	r3, r9
 8006462:	4661      	mov	r1, ip
 8006464:	4650      	mov	r0, sl
 8006466:	2d00      	cmp	r5, #0
 8006468:	d1e4      	bne.n	8006434 <__sfvwrite_r+0x4c>
 800646a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800646e:	3608      	adds	r6, #8
 8006470:	e7d8      	b.n	8006424 <__sfvwrite_r+0x3c>
 8006472:	4621      	mov	r1, r4
 8006474:	4650      	mov	r0, sl
 8006476:	f7fe fd03 	bl	8004e80 <__swsetup_r>
 800647a:	2800      	cmp	r0, #0
 800647c:	f040 812a 	bne.w	80066d4 <__sfvwrite_r+0x2ec>
 8006480:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006484:	f8d8 6000 	ldr.w	r6, [r8]
 8006488:	b29b      	uxth	r3, r3
 800648a:	f013 0202 	ands.w	r2, r3, #2
 800648e:	d1c1      	bne.n	8006414 <__sfvwrite_r+0x2c>
 8006490:	f013 0901 	ands.w	r9, r3, #1
 8006494:	d15d      	bne.n	8006552 <__sfvwrite_r+0x16a>
 8006496:	68a7      	ldr	r7, [r4, #8]
 8006498:	6820      	ldr	r0, [r4, #0]
 800649a:	464d      	mov	r5, r9
 800649c:	2d00      	cmp	r5, #0
 800649e:	d054      	beq.n	800654a <__sfvwrite_r+0x162>
 80064a0:	059a      	lsls	r2, r3, #22
 80064a2:	f140 809b 	bpl.w	80065dc <__sfvwrite_r+0x1f4>
 80064a6:	42af      	cmp	r7, r5
 80064a8:	46bb      	mov	fp, r7
 80064aa:	f200 80d8 	bhi.w	800665e <__sfvwrite_r+0x276>
 80064ae:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80064b2:	d02f      	beq.n	8006514 <__sfvwrite_r+0x12c>
 80064b4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80064b8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80064bc:	eba0 0b01 	sub.w	fp, r0, r1
 80064c0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80064c4:	1c68      	adds	r0, r5, #1
 80064c6:	107f      	asrs	r7, r7, #1
 80064c8:	4458      	add	r0, fp
 80064ca:	42b8      	cmp	r0, r7
 80064cc:	463a      	mov	r2, r7
 80064ce:	bf84      	itt	hi
 80064d0:	4607      	movhi	r7, r0
 80064d2:	463a      	movhi	r2, r7
 80064d4:	055b      	lsls	r3, r3, #21
 80064d6:	f140 80d3 	bpl.w	8006680 <__sfvwrite_r+0x298>
 80064da:	4611      	mov	r1, r2
 80064dc:	4650      	mov	r0, sl
 80064de:	f000 f9b9 	bl	8006854 <_malloc_r>
 80064e2:	2800      	cmp	r0, #0
 80064e4:	f000 80f0 	beq.w	80066c8 <__sfvwrite_r+0x2e0>
 80064e8:	465a      	mov	r2, fp
 80064ea:	6921      	ldr	r1, [r4, #16]
 80064ec:	9001      	str	r0, [sp, #4]
 80064ee:	f7fa f807 	bl	8000500 <memcpy>
 80064f2:	89a2      	ldrh	r2, [r4, #12]
 80064f4:	9b01      	ldr	r3, [sp, #4]
 80064f6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80064fa:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80064fe:	81a2      	strh	r2, [r4, #12]
 8006500:	eba7 020b 	sub.w	r2, r7, fp
 8006504:	eb03 000b 	add.w	r0, r3, fp
 8006508:	6167      	str	r7, [r4, #20]
 800650a:	6123      	str	r3, [r4, #16]
 800650c:	6020      	str	r0, [r4, #0]
 800650e:	60a2      	str	r2, [r4, #8]
 8006510:	462f      	mov	r7, r5
 8006512:	46ab      	mov	fp, r5
 8006514:	465a      	mov	r2, fp
 8006516:	4649      	mov	r1, r9
 8006518:	f000 fc40 	bl	8006d9c <memmove>
 800651c:	68a2      	ldr	r2, [r4, #8]
 800651e:	6823      	ldr	r3, [r4, #0]
 8006520:	1bd2      	subs	r2, r2, r7
 8006522:	445b      	add	r3, fp
 8006524:	462f      	mov	r7, r5
 8006526:	60a2      	str	r2, [r4, #8]
 8006528:	6023      	str	r3, [r4, #0]
 800652a:	2500      	movs	r5, #0
 800652c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006530:	1bdb      	subs	r3, r3, r7
 8006532:	44b9      	add	r9, r7
 8006534:	f8c8 3008 	str.w	r3, [r8, #8]
 8006538:	2b00      	cmp	r3, #0
 800653a:	d039      	beq.n	80065b0 <__sfvwrite_r+0x1c8>
 800653c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006540:	68a7      	ldr	r7, [r4, #8]
 8006542:	6820      	ldr	r0, [r4, #0]
 8006544:	b29b      	uxth	r3, r3
 8006546:	2d00      	cmp	r5, #0
 8006548:	d1aa      	bne.n	80064a0 <__sfvwrite_r+0xb8>
 800654a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800654e:	3608      	adds	r6, #8
 8006550:	e7a4      	b.n	800649c <__sfvwrite_r+0xb4>
 8006552:	4633      	mov	r3, r6
 8006554:	4691      	mov	r9, r2
 8006556:	4610      	mov	r0, r2
 8006558:	4617      	mov	r7, r2
 800655a:	464e      	mov	r6, r9
 800655c:	469b      	mov	fp, r3
 800655e:	2f00      	cmp	r7, #0
 8006560:	d06b      	beq.n	800663a <__sfvwrite_r+0x252>
 8006562:	2800      	cmp	r0, #0
 8006564:	d071      	beq.n	800664a <__sfvwrite_r+0x262>
 8006566:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800656a:	6820      	ldr	r0, [r4, #0]
 800656c:	45b9      	cmp	r9, r7
 800656e:	464b      	mov	r3, r9
 8006570:	bf28      	it	cs
 8006572:	463b      	movcs	r3, r7
 8006574:	4288      	cmp	r0, r1
 8006576:	d903      	bls.n	8006580 <__sfvwrite_r+0x198>
 8006578:	68a5      	ldr	r5, [r4, #8]
 800657a:	4415      	add	r5, r2
 800657c:	42ab      	cmp	r3, r5
 800657e:	dc71      	bgt.n	8006664 <__sfvwrite_r+0x27c>
 8006580:	429a      	cmp	r2, r3
 8006582:	f300 8093 	bgt.w	80066ac <__sfvwrite_r+0x2c4>
 8006586:	4613      	mov	r3, r2
 8006588:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800658a:	69e1      	ldr	r1, [r4, #28]
 800658c:	4632      	mov	r2, r6
 800658e:	4650      	mov	r0, sl
 8006590:	47a8      	blx	r5
 8006592:	1e05      	subs	r5, r0, #0
 8006594:	dd18      	ble.n	80065c8 <__sfvwrite_r+0x1e0>
 8006596:	ebb9 0905 	subs.w	r9, r9, r5
 800659a:	d00f      	beq.n	80065bc <__sfvwrite_r+0x1d4>
 800659c:	2001      	movs	r0, #1
 800659e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80065a2:	1b5b      	subs	r3, r3, r5
 80065a4:	442e      	add	r6, r5
 80065a6:	1b7f      	subs	r7, r7, r5
 80065a8:	f8c8 3008 	str.w	r3, [r8, #8]
 80065ac:	2b00      	cmp	r3, #0
 80065ae:	d1d6      	bne.n	800655e <__sfvwrite_r+0x176>
 80065b0:	2000      	movs	r0, #0
 80065b2:	b003      	add	sp, #12
 80065b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80065b8:	2000      	movs	r0, #0
 80065ba:	4770      	bx	lr
 80065bc:	4621      	mov	r1, r4
 80065be:	4650      	mov	r0, sl
 80065c0:	f7ff fd20 	bl	8006004 <_fflush_r>
 80065c4:	2800      	cmp	r0, #0
 80065c6:	d0ea      	beq.n	800659e <__sfvwrite_r+0x1b6>
 80065c8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80065cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80065d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80065d4:	81a3      	strh	r3, [r4, #12]
 80065d6:	b003      	add	sp, #12
 80065d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80065dc:	6923      	ldr	r3, [r4, #16]
 80065de:	4283      	cmp	r3, r0
 80065e0:	d315      	bcc.n	800660e <__sfvwrite_r+0x226>
 80065e2:	6961      	ldr	r1, [r4, #20]
 80065e4:	42a9      	cmp	r1, r5
 80065e6:	d812      	bhi.n	800660e <__sfvwrite_r+0x226>
 80065e8:	4b3c      	ldr	r3, [pc, #240]	; (80066dc <__sfvwrite_r+0x2f4>)
 80065ea:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80065ec:	429d      	cmp	r5, r3
 80065ee:	bf94      	ite	ls
 80065f0:	462b      	movls	r3, r5
 80065f2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80065f6:	464a      	mov	r2, r9
 80065f8:	fb93 f3f1 	sdiv	r3, r3, r1
 80065fc:	4650      	mov	r0, sl
 80065fe:	fb01 f303 	mul.w	r3, r1, r3
 8006602:	69e1      	ldr	r1, [r4, #28]
 8006604:	47b8      	blx	r7
 8006606:	1e07      	subs	r7, r0, #0
 8006608:	ddde      	ble.n	80065c8 <__sfvwrite_r+0x1e0>
 800660a:	1bed      	subs	r5, r5, r7
 800660c:	e78e      	b.n	800652c <__sfvwrite_r+0x144>
 800660e:	42af      	cmp	r7, r5
 8006610:	bf28      	it	cs
 8006612:	462f      	movcs	r7, r5
 8006614:	463a      	mov	r2, r7
 8006616:	4649      	mov	r1, r9
 8006618:	f000 fbc0 	bl	8006d9c <memmove>
 800661c:	68a3      	ldr	r3, [r4, #8]
 800661e:	6822      	ldr	r2, [r4, #0]
 8006620:	1bdb      	subs	r3, r3, r7
 8006622:	443a      	add	r2, r7
 8006624:	60a3      	str	r3, [r4, #8]
 8006626:	6022      	str	r2, [r4, #0]
 8006628:	2b00      	cmp	r3, #0
 800662a:	d1ee      	bne.n	800660a <__sfvwrite_r+0x222>
 800662c:	4621      	mov	r1, r4
 800662e:	4650      	mov	r0, sl
 8006630:	f7ff fce8 	bl	8006004 <_fflush_r>
 8006634:	2800      	cmp	r0, #0
 8006636:	d0e8      	beq.n	800660a <__sfvwrite_r+0x222>
 8006638:	e7c6      	b.n	80065c8 <__sfvwrite_r+0x1e0>
 800663a:	f10b 0308 	add.w	r3, fp, #8
 800663e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8006642:	469b      	mov	fp, r3
 8006644:	3308      	adds	r3, #8
 8006646:	2f00      	cmp	r7, #0
 8006648:	d0f9      	beq.n	800663e <__sfvwrite_r+0x256>
 800664a:	463a      	mov	r2, r7
 800664c:	210a      	movs	r1, #10
 800664e:	4630      	mov	r0, r6
 8006650:	f7fa f866 	bl	8000720 <memchr>
 8006654:	b338      	cbz	r0, 80066a6 <__sfvwrite_r+0x2be>
 8006656:	3001      	adds	r0, #1
 8006658:	eba0 0906 	sub.w	r9, r0, r6
 800665c:	e783      	b.n	8006566 <__sfvwrite_r+0x17e>
 800665e:	462f      	mov	r7, r5
 8006660:	46ab      	mov	fp, r5
 8006662:	e757      	b.n	8006514 <__sfvwrite_r+0x12c>
 8006664:	4631      	mov	r1, r6
 8006666:	462a      	mov	r2, r5
 8006668:	f000 fb98 	bl	8006d9c <memmove>
 800666c:	6823      	ldr	r3, [r4, #0]
 800666e:	442b      	add	r3, r5
 8006670:	6023      	str	r3, [r4, #0]
 8006672:	4621      	mov	r1, r4
 8006674:	4650      	mov	r0, sl
 8006676:	f7ff fcc5 	bl	8006004 <_fflush_r>
 800667a:	2800      	cmp	r0, #0
 800667c:	d08b      	beq.n	8006596 <__sfvwrite_r+0x1ae>
 800667e:	e7a3      	b.n	80065c8 <__sfvwrite_r+0x1e0>
 8006680:	4650      	mov	r0, sl
 8006682:	f000 ff05 	bl	8007490 <_realloc_r>
 8006686:	4603      	mov	r3, r0
 8006688:	2800      	cmp	r0, #0
 800668a:	f47f af39 	bne.w	8006500 <__sfvwrite_r+0x118>
 800668e:	6921      	ldr	r1, [r4, #16]
 8006690:	4650      	mov	r0, sl
 8006692:	f7ff fdb5 	bl	8006200 <_free_r>
 8006696:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800669a:	220c      	movs	r2, #12
 800669c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80066a0:	f8ca 2000 	str.w	r2, [sl]
 80066a4:	e792      	b.n	80065cc <__sfvwrite_r+0x1e4>
 80066a6:	f107 0901 	add.w	r9, r7, #1
 80066aa:	e75c      	b.n	8006566 <__sfvwrite_r+0x17e>
 80066ac:	461a      	mov	r2, r3
 80066ae:	4631      	mov	r1, r6
 80066b0:	9301      	str	r3, [sp, #4]
 80066b2:	f000 fb73 	bl	8006d9c <memmove>
 80066b6:	9b01      	ldr	r3, [sp, #4]
 80066b8:	68a1      	ldr	r1, [r4, #8]
 80066ba:	6822      	ldr	r2, [r4, #0]
 80066bc:	1ac9      	subs	r1, r1, r3
 80066be:	441a      	add	r2, r3
 80066c0:	60a1      	str	r1, [r4, #8]
 80066c2:	6022      	str	r2, [r4, #0]
 80066c4:	461d      	mov	r5, r3
 80066c6:	e766      	b.n	8006596 <__sfvwrite_r+0x1ae>
 80066c8:	230c      	movs	r3, #12
 80066ca:	f8ca 3000 	str.w	r3, [sl]
 80066ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80066d2:	e77b      	b.n	80065cc <__sfvwrite_r+0x1e4>
 80066d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80066d8:	e76b      	b.n	80065b2 <__sfvwrite_r+0x1ca>
 80066da:	bf00      	nop
 80066dc:	7ffffffe 	.word	0x7ffffffe
 80066e0:	7ffffc00 	.word	0x7ffffc00

080066e4 <_fwalk_reent>:
 80066e4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80066e8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80066ec:	d01f      	beq.n	800672e <_fwalk_reent+0x4a>
 80066ee:	4688      	mov	r8, r1
 80066f0:	4606      	mov	r6, r0
 80066f2:	f04f 0900 	mov.w	r9, #0
 80066f6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80066fa:	3d01      	subs	r5, #1
 80066fc:	d411      	bmi.n	8006722 <_fwalk_reent+0x3e>
 80066fe:	89a3      	ldrh	r3, [r4, #12]
 8006700:	2b01      	cmp	r3, #1
 8006702:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8006706:	4621      	mov	r1, r4
 8006708:	4630      	mov	r0, r6
 800670a:	d906      	bls.n	800671a <_fwalk_reent+0x36>
 800670c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8006710:	3301      	adds	r3, #1
 8006712:	d002      	beq.n	800671a <_fwalk_reent+0x36>
 8006714:	47c0      	blx	r8
 8006716:	ea49 0900 	orr.w	r9, r9, r0
 800671a:	1c6b      	adds	r3, r5, #1
 800671c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8006720:	d1ed      	bne.n	80066fe <_fwalk_reent+0x1a>
 8006722:	683f      	ldr	r7, [r7, #0]
 8006724:	2f00      	cmp	r7, #0
 8006726:	d1e6      	bne.n	80066f6 <_fwalk_reent+0x12>
 8006728:	4648      	mov	r0, r9
 800672a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800672e:	46b9      	mov	r9, r7
 8006730:	4648      	mov	r0, r9
 8006732:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006736:	bf00      	nop

08006738 <_localeconv_r>:
 8006738:	4a04      	ldr	r2, [pc, #16]	; (800674c <_localeconv_r+0x14>)
 800673a:	4b05      	ldr	r3, [pc, #20]	; (8006750 <_localeconv_r+0x18>)
 800673c:	6812      	ldr	r2, [r2, #0]
 800673e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8006740:	2800      	cmp	r0, #0
 8006742:	bf08      	it	eq
 8006744:	4618      	moveq	r0, r3
 8006746:	30f0      	adds	r0, #240	; 0xf0
 8006748:	4770      	bx	lr
 800674a:	bf00      	nop
 800674c:	20000018 	.word	0x20000018
 8006750:	2000085c 	.word	0x2000085c

08006754 <__retarget_lock_init_recursive>:
 8006754:	4770      	bx	lr
 8006756:	bf00      	nop

08006758 <__retarget_lock_close_recursive>:
 8006758:	4770      	bx	lr
 800675a:	bf00      	nop

0800675c <__retarget_lock_acquire_recursive>:
 800675c:	4770      	bx	lr
 800675e:	bf00      	nop

08006760 <__retarget_lock_release_recursive>:
 8006760:	4770      	bx	lr
 8006762:	bf00      	nop

08006764 <__swhatbuf_r>:
 8006764:	b570      	push	{r4, r5, r6, lr}
 8006766:	460c      	mov	r4, r1
 8006768:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800676c:	2900      	cmp	r1, #0
 800676e:	b096      	sub	sp, #88	; 0x58
 8006770:	4615      	mov	r5, r2
 8006772:	461e      	mov	r6, r3
 8006774:	da0f      	bge.n	8006796 <__swhatbuf_r+0x32>
 8006776:	89a2      	ldrh	r2, [r4, #12]
 8006778:	2300      	movs	r3, #0
 800677a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800677e:	6033      	str	r3, [r6, #0]
 8006780:	d104      	bne.n	800678c <__swhatbuf_r+0x28>
 8006782:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8006786:	602b      	str	r3, [r5, #0]
 8006788:	b016      	add	sp, #88	; 0x58
 800678a:	bd70      	pop	{r4, r5, r6, pc}
 800678c:	2240      	movs	r2, #64	; 0x40
 800678e:	4618      	mov	r0, r3
 8006790:	602a      	str	r2, [r5, #0]
 8006792:	b016      	add	sp, #88	; 0x58
 8006794:	bd70      	pop	{r4, r5, r6, pc}
 8006796:	466a      	mov	r2, sp
 8006798:	f001 fad0 	bl	8007d3c <_fstat_r>
 800679c:	2800      	cmp	r0, #0
 800679e:	dbea      	blt.n	8006776 <__swhatbuf_r+0x12>
 80067a0:	9b01      	ldr	r3, [sp, #4]
 80067a2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80067a6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80067aa:	fab3 f383 	clz	r3, r3
 80067ae:	095b      	lsrs	r3, r3, #5
 80067b0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80067b4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80067b8:	6033      	str	r3, [r6, #0]
 80067ba:	602a      	str	r2, [r5, #0]
 80067bc:	b016      	add	sp, #88	; 0x58
 80067be:	bd70      	pop	{r4, r5, r6, pc}

080067c0 <__smakebuf_r>:
 80067c0:	898a      	ldrh	r2, [r1, #12]
 80067c2:	0792      	lsls	r2, r2, #30
 80067c4:	460b      	mov	r3, r1
 80067c6:	d506      	bpl.n	80067d6 <__smakebuf_r+0x16>
 80067c8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80067cc:	2101      	movs	r1, #1
 80067ce:	601a      	str	r2, [r3, #0]
 80067d0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80067d4:	4770      	bx	lr
 80067d6:	b570      	push	{r4, r5, r6, lr}
 80067d8:	b082      	sub	sp, #8
 80067da:	ab01      	add	r3, sp, #4
 80067dc:	466a      	mov	r2, sp
 80067de:	460c      	mov	r4, r1
 80067e0:	4605      	mov	r5, r0
 80067e2:	f7ff ffbf 	bl	8006764 <__swhatbuf_r>
 80067e6:	9900      	ldr	r1, [sp, #0]
 80067e8:	4606      	mov	r6, r0
 80067ea:	4628      	mov	r0, r5
 80067ec:	f000 f832 	bl	8006854 <_malloc_r>
 80067f0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80067f4:	b1d8      	cbz	r0, 800682e <__smakebuf_r+0x6e>
 80067f6:	4916      	ldr	r1, [pc, #88]	; (8006850 <__smakebuf_r+0x90>)
 80067f8:	63e9      	str	r1, [r5, #60]	; 0x3c
 80067fa:	9a01      	ldr	r2, [sp, #4]
 80067fc:	9900      	ldr	r1, [sp, #0]
 80067fe:	6020      	str	r0, [r4, #0]
 8006800:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8006804:	81a3      	strh	r3, [r4, #12]
 8006806:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800680a:	b91a      	cbnz	r2, 8006814 <__smakebuf_r+0x54>
 800680c:	4333      	orrs	r3, r6
 800680e:	81a3      	strh	r3, [r4, #12]
 8006810:	b002      	add	sp, #8
 8006812:	bd70      	pop	{r4, r5, r6, pc}
 8006814:	4628      	mov	r0, r5
 8006816:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800681a:	f001 faa3 	bl	8007d64 <_isatty_r>
 800681e:	b1a0      	cbz	r0, 800684a <__smakebuf_r+0x8a>
 8006820:	89a3      	ldrh	r3, [r4, #12]
 8006822:	f023 0303 	bic.w	r3, r3, #3
 8006826:	f043 0301 	orr.w	r3, r3, #1
 800682a:	b21b      	sxth	r3, r3
 800682c:	e7ee      	b.n	800680c <__smakebuf_r+0x4c>
 800682e:	059a      	lsls	r2, r3, #22
 8006830:	d4ee      	bmi.n	8006810 <__smakebuf_r+0x50>
 8006832:	f023 0303 	bic.w	r3, r3, #3
 8006836:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800683a:	f043 0302 	orr.w	r3, r3, #2
 800683e:	2101      	movs	r1, #1
 8006840:	81a3      	strh	r3, [r4, #12]
 8006842:	6022      	str	r2, [r4, #0]
 8006844:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8006848:	e7e2      	b.n	8006810 <__smakebuf_r+0x50>
 800684a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800684e:	e7dd      	b.n	800680c <__smakebuf_r+0x4c>
 8006850:	080060b1 	.word	0x080060b1

08006854 <_malloc_r>:
 8006854:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006858:	f101 050b 	add.w	r5, r1, #11
 800685c:	2d16      	cmp	r5, #22
 800685e:	b083      	sub	sp, #12
 8006860:	4606      	mov	r6, r0
 8006862:	d823      	bhi.n	80068ac <_malloc_r+0x58>
 8006864:	2910      	cmp	r1, #16
 8006866:	f200 80b9 	bhi.w	80069dc <_malloc_r+0x188>
 800686a:	f000 fafb 	bl	8006e64 <__malloc_lock>
 800686e:	2510      	movs	r5, #16
 8006870:	2318      	movs	r3, #24
 8006872:	2002      	movs	r0, #2
 8006874:	4fc5      	ldr	r7, [pc, #788]	; (8006b8c <_malloc_r+0x338>)
 8006876:	443b      	add	r3, r7
 8006878:	f1a3 0208 	sub.w	r2, r3, #8
 800687c:	685c      	ldr	r4, [r3, #4]
 800687e:	4294      	cmp	r4, r2
 8006880:	f000 8166 	beq.w	8006b50 <_malloc_r+0x2fc>
 8006884:	6863      	ldr	r3, [r4, #4]
 8006886:	f023 0303 	bic.w	r3, r3, #3
 800688a:	4423      	add	r3, r4
 800688c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8006890:	685a      	ldr	r2, [r3, #4]
 8006892:	60e9      	str	r1, [r5, #12]
 8006894:	f042 0201 	orr.w	r2, r2, #1
 8006898:	608d      	str	r5, [r1, #8]
 800689a:	4630      	mov	r0, r6
 800689c:	605a      	str	r2, [r3, #4]
 800689e:	f000 fae7 	bl	8006e70 <__malloc_unlock>
 80068a2:	3408      	adds	r4, #8
 80068a4:	4620      	mov	r0, r4
 80068a6:	b003      	add	sp, #12
 80068a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068ac:	f035 0507 	bics.w	r5, r5, #7
 80068b0:	f100 8094 	bmi.w	80069dc <_malloc_r+0x188>
 80068b4:	42a9      	cmp	r1, r5
 80068b6:	f200 8091 	bhi.w	80069dc <_malloc_r+0x188>
 80068ba:	f000 fad3 	bl	8006e64 <__malloc_lock>
 80068be:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80068c2:	f0c0 8183 	bcc.w	8006bcc <_malloc_r+0x378>
 80068c6:	0a6b      	lsrs	r3, r5, #9
 80068c8:	f000 808f 	beq.w	80069ea <_malloc_r+0x196>
 80068cc:	2b04      	cmp	r3, #4
 80068ce:	f200 8146 	bhi.w	8006b5e <_malloc_r+0x30a>
 80068d2:	09ab      	lsrs	r3, r5, #6
 80068d4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80068d8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80068dc:	00c3      	lsls	r3, r0, #3
 80068de:	4fab      	ldr	r7, [pc, #684]	; (8006b8c <_malloc_r+0x338>)
 80068e0:	443b      	add	r3, r7
 80068e2:	f1a3 0108 	sub.w	r1, r3, #8
 80068e6:	685c      	ldr	r4, [r3, #4]
 80068e8:	42a1      	cmp	r1, r4
 80068ea:	d106      	bne.n	80068fa <_malloc_r+0xa6>
 80068ec:	e00c      	b.n	8006908 <_malloc_r+0xb4>
 80068ee:	2a00      	cmp	r2, #0
 80068f0:	f280 811d 	bge.w	8006b2e <_malloc_r+0x2da>
 80068f4:	68e4      	ldr	r4, [r4, #12]
 80068f6:	42a1      	cmp	r1, r4
 80068f8:	d006      	beq.n	8006908 <_malloc_r+0xb4>
 80068fa:	6863      	ldr	r3, [r4, #4]
 80068fc:	f023 0303 	bic.w	r3, r3, #3
 8006900:	1b5a      	subs	r2, r3, r5
 8006902:	2a0f      	cmp	r2, #15
 8006904:	ddf3      	ble.n	80068ee <_malloc_r+0x9a>
 8006906:	4660      	mov	r0, ip
 8006908:	693c      	ldr	r4, [r7, #16]
 800690a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006ba0 <_malloc_r+0x34c>
 800690e:	4564      	cmp	r4, ip
 8006910:	d071      	beq.n	80069f6 <_malloc_r+0x1a2>
 8006912:	6863      	ldr	r3, [r4, #4]
 8006914:	f023 0303 	bic.w	r3, r3, #3
 8006918:	1b5a      	subs	r2, r3, r5
 800691a:	2a0f      	cmp	r2, #15
 800691c:	f300 8144 	bgt.w	8006ba8 <_malloc_r+0x354>
 8006920:	2a00      	cmp	r2, #0
 8006922:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8006926:	f280 8126 	bge.w	8006b76 <_malloc_r+0x322>
 800692a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800692e:	f080 8169 	bcs.w	8006c04 <_malloc_r+0x3b0>
 8006932:	08db      	lsrs	r3, r3, #3
 8006934:	1c59      	adds	r1, r3, #1
 8006936:	687a      	ldr	r2, [r7, #4]
 8006938:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800693c:	f8c4 8008 	str.w	r8, [r4, #8]
 8006940:	f04f 0e01 	mov.w	lr, #1
 8006944:	109b      	asrs	r3, r3, #2
 8006946:	fa0e f303 	lsl.w	r3, lr, r3
 800694a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800694e:	4313      	orrs	r3, r2
 8006950:	f1ae 0208 	sub.w	r2, lr, #8
 8006954:	60e2      	str	r2, [r4, #12]
 8006956:	607b      	str	r3, [r7, #4]
 8006958:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 800695c:	f8c8 400c 	str.w	r4, [r8, #12]
 8006960:	1082      	asrs	r2, r0, #2
 8006962:	2401      	movs	r4, #1
 8006964:	4094      	lsls	r4, r2
 8006966:	429c      	cmp	r4, r3
 8006968:	d84b      	bhi.n	8006a02 <_malloc_r+0x1ae>
 800696a:	421c      	tst	r4, r3
 800696c:	d106      	bne.n	800697c <_malloc_r+0x128>
 800696e:	f020 0003 	bic.w	r0, r0, #3
 8006972:	0064      	lsls	r4, r4, #1
 8006974:	421c      	tst	r4, r3
 8006976:	f100 0004 	add.w	r0, r0, #4
 800697a:	d0fa      	beq.n	8006972 <_malloc_r+0x11e>
 800697c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006980:	46ce      	mov	lr, r9
 8006982:	4680      	mov	r8, r0
 8006984:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006988:	459e      	cmp	lr, r3
 800698a:	d107      	bne.n	800699c <_malloc_r+0x148>
 800698c:	e122      	b.n	8006bd4 <_malloc_r+0x380>
 800698e:	2a00      	cmp	r2, #0
 8006990:	f280 8129 	bge.w	8006be6 <_malloc_r+0x392>
 8006994:	68db      	ldr	r3, [r3, #12]
 8006996:	459e      	cmp	lr, r3
 8006998:	f000 811c 	beq.w	8006bd4 <_malloc_r+0x380>
 800699c:	6859      	ldr	r1, [r3, #4]
 800699e:	f021 0103 	bic.w	r1, r1, #3
 80069a2:	1b4a      	subs	r2, r1, r5
 80069a4:	2a0f      	cmp	r2, #15
 80069a6:	ddf2      	ble.n	800698e <_malloc_r+0x13a>
 80069a8:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80069ac:	195c      	adds	r4, r3, r5
 80069ae:	f045 0501 	orr.w	r5, r5, #1
 80069b2:	605d      	str	r5, [r3, #4]
 80069b4:	f042 0501 	orr.w	r5, r2, #1
 80069b8:	f8c8 e00c 	str.w	lr, [r8, #12]
 80069bc:	4630      	mov	r0, r6
 80069be:	f8ce 8008 	str.w	r8, [lr, #8]
 80069c2:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80069c6:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80069ca:	6065      	str	r5, [r4, #4]
 80069cc:	505a      	str	r2, [r3, r1]
 80069ce:	9301      	str	r3, [sp, #4]
 80069d0:	f000 fa4e 	bl	8006e70 <__malloc_unlock>
 80069d4:	9b01      	ldr	r3, [sp, #4]
 80069d6:	f103 0408 	add.w	r4, r3, #8
 80069da:	e763      	b.n	80068a4 <_malloc_r+0x50>
 80069dc:	2400      	movs	r4, #0
 80069de:	230c      	movs	r3, #12
 80069e0:	4620      	mov	r0, r4
 80069e2:	6033      	str	r3, [r6, #0]
 80069e4:	b003      	add	sp, #12
 80069e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80069ea:	f44f 7300 	mov.w	r3, #512	; 0x200
 80069ee:	2040      	movs	r0, #64	; 0x40
 80069f0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80069f4:	e773      	b.n	80068de <_malloc_r+0x8a>
 80069f6:	687b      	ldr	r3, [r7, #4]
 80069f8:	1082      	asrs	r2, r0, #2
 80069fa:	2401      	movs	r4, #1
 80069fc:	4094      	lsls	r4, r2
 80069fe:	429c      	cmp	r4, r3
 8006a00:	d9b3      	bls.n	800696a <_malloc_r+0x116>
 8006a02:	68bc      	ldr	r4, [r7, #8]
 8006a04:	6863      	ldr	r3, [r4, #4]
 8006a06:	f023 0903 	bic.w	r9, r3, #3
 8006a0a:	45a9      	cmp	r9, r5
 8006a0c:	d303      	bcc.n	8006a16 <_malloc_r+0x1c2>
 8006a0e:	eba9 0305 	sub.w	r3, r9, r5
 8006a12:	2b0f      	cmp	r3, #15
 8006a14:	dc7b      	bgt.n	8006b0e <_malloc_r+0x2ba>
 8006a16:	4b5e      	ldr	r3, [pc, #376]	; (8006b90 <_malloc_r+0x33c>)
 8006a18:	f8df a188 	ldr.w	sl, [pc, #392]	; 8006ba4 <_malloc_r+0x350>
 8006a1c:	681a      	ldr	r2, [r3, #0]
 8006a1e:	f8da 3000 	ldr.w	r3, [sl]
 8006a22:	3301      	adds	r3, #1
 8006a24:	eb05 0802 	add.w	r8, r5, r2
 8006a28:	f000 8148 	beq.w	8006cbc <_malloc_r+0x468>
 8006a2c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8006a30:	f108 080f 	add.w	r8, r8, #15
 8006a34:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8006a38:	f028 080f 	bic.w	r8, r8, #15
 8006a3c:	4641      	mov	r1, r8
 8006a3e:	4630      	mov	r0, r6
 8006a40:	f000 ff08 	bl	8007854 <_sbrk_r>
 8006a44:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8006a48:	4683      	mov	fp, r0
 8006a4a:	f000 8104 	beq.w	8006c56 <_malloc_r+0x402>
 8006a4e:	eb04 0009 	add.w	r0, r4, r9
 8006a52:	4558      	cmp	r0, fp
 8006a54:	f200 80fd 	bhi.w	8006c52 <_malloc_r+0x3fe>
 8006a58:	4a4e      	ldr	r2, [pc, #312]	; (8006b94 <_malloc_r+0x340>)
 8006a5a:	6813      	ldr	r3, [r2, #0]
 8006a5c:	4443      	add	r3, r8
 8006a5e:	6013      	str	r3, [r2, #0]
 8006a60:	f000 814d 	beq.w	8006cfe <_malloc_r+0x4aa>
 8006a64:	f8da 1000 	ldr.w	r1, [sl]
 8006a68:	3101      	adds	r1, #1
 8006a6a:	bf1b      	ittet	ne
 8006a6c:	ebab 0000 	subne.w	r0, fp, r0
 8006a70:	181b      	addne	r3, r3, r0
 8006a72:	f8ca b000 	streq.w	fp, [sl]
 8006a76:	6013      	strne	r3, [r2, #0]
 8006a78:	f01b 0307 	ands.w	r3, fp, #7
 8006a7c:	f000 8134 	beq.w	8006ce8 <_malloc_r+0x494>
 8006a80:	f1c3 0108 	rsb	r1, r3, #8
 8006a84:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006a88:	448b      	add	fp, r1
 8006a8a:	3308      	adds	r3, #8
 8006a8c:	44d8      	add	r8, fp
 8006a8e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8006a92:	eba3 0808 	sub.w	r8, r3, r8
 8006a96:	4641      	mov	r1, r8
 8006a98:	4630      	mov	r0, r6
 8006a9a:	9201      	str	r2, [sp, #4]
 8006a9c:	f000 feda 	bl	8007854 <_sbrk_r>
 8006aa0:	1c43      	adds	r3, r0, #1
 8006aa2:	9a01      	ldr	r2, [sp, #4]
 8006aa4:	f000 8146 	beq.w	8006d34 <_malloc_r+0x4e0>
 8006aa8:	eba0 010b 	sub.w	r1, r0, fp
 8006aac:	4441      	add	r1, r8
 8006aae:	f041 0101 	orr.w	r1, r1, #1
 8006ab2:	6813      	ldr	r3, [r2, #0]
 8006ab4:	f8c7 b008 	str.w	fp, [r7, #8]
 8006ab8:	4443      	add	r3, r8
 8006aba:	42bc      	cmp	r4, r7
 8006abc:	f8cb 1004 	str.w	r1, [fp, #4]
 8006ac0:	6013      	str	r3, [r2, #0]
 8006ac2:	d015      	beq.n	8006af0 <_malloc_r+0x29c>
 8006ac4:	f1b9 0f0f 	cmp.w	r9, #15
 8006ac8:	f240 8130 	bls.w	8006d2c <_malloc_r+0x4d8>
 8006acc:	6860      	ldr	r0, [r4, #4]
 8006ace:	f1a9 010c 	sub.w	r1, r9, #12
 8006ad2:	f021 0107 	bic.w	r1, r1, #7
 8006ad6:	f000 0001 	and.w	r0, r0, #1
 8006ada:	eb04 0c01 	add.w	ip, r4, r1
 8006ade:	4308      	orrs	r0, r1
 8006ae0:	f04f 0e05 	mov.w	lr, #5
 8006ae4:	290f      	cmp	r1, #15
 8006ae6:	6060      	str	r0, [r4, #4]
 8006ae8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8006aec:	f200 813a 	bhi.w	8006d64 <_malloc_r+0x510>
 8006af0:	4a29      	ldr	r2, [pc, #164]	; (8006b98 <_malloc_r+0x344>)
 8006af2:	482a      	ldr	r0, [pc, #168]	; (8006b9c <_malloc_r+0x348>)
 8006af4:	6811      	ldr	r1, [r2, #0]
 8006af6:	68bc      	ldr	r4, [r7, #8]
 8006af8:	428b      	cmp	r3, r1
 8006afa:	6801      	ldr	r1, [r0, #0]
 8006afc:	bf88      	it	hi
 8006afe:	6013      	strhi	r3, [r2, #0]
 8006b00:	6862      	ldr	r2, [r4, #4]
 8006b02:	428b      	cmp	r3, r1
 8006b04:	f022 0203 	bic.w	r2, r2, #3
 8006b08:	bf88      	it	hi
 8006b0a:	6003      	strhi	r3, [r0, #0]
 8006b0c:	e0a7      	b.n	8006c5e <_malloc_r+0x40a>
 8006b0e:	1962      	adds	r2, r4, r5
 8006b10:	f043 0301 	orr.w	r3, r3, #1
 8006b14:	f045 0501 	orr.w	r5, r5, #1
 8006b18:	6065      	str	r5, [r4, #4]
 8006b1a:	4630      	mov	r0, r6
 8006b1c:	60ba      	str	r2, [r7, #8]
 8006b1e:	6053      	str	r3, [r2, #4]
 8006b20:	f000 f9a6 	bl	8006e70 <__malloc_unlock>
 8006b24:	3408      	adds	r4, #8
 8006b26:	4620      	mov	r0, r4
 8006b28:	b003      	add	sp, #12
 8006b2a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b2e:	4423      	add	r3, r4
 8006b30:	68e1      	ldr	r1, [r4, #12]
 8006b32:	685a      	ldr	r2, [r3, #4]
 8006b34:	68a5      	ldr	r5, [r4, #8]
 8006b36:	f042 0201 	orr.w	r2, r2, #1
 8006b3a:	60e9      	str	r1, [r5, #12]
 8006b3c:	4630      	mov	r0, r6
 8006b3e:	608d      	str	r5, [r1, #8]
 8006b40:	605a      	str	r2, [r3, #4]
 8006b42:	f000 f995 	bl	8006e70 <__malloc_unlock>
 8006b46:	3408      	adds	r4, #8
 8006b48:	4620      	mov	r0, r4
 8006b4a:	b003      	add	sp, #12
 8006b4c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b50:	68dc      	ldr	r4, [r3, #12]
 8006b52:	42a3      	cmp	r3, r4
 8006b54:	bf08      	it	eq
 8006b56:	3002      	addeq	r0, #2
 8006b58:	f43f aed6 	beq.w	8006908 <_malloc_r+0xb4>
 8006b5c:	e692      	b.n	8006884 <_malloc_r+0x30>
 8006b5e:	2b14      	cmp	r3, #20
 8006b60:	d971      	bls.n	8006c46 <_malloc_r+0x3f2>
 8006b62:	2b54      	cmp	r3, #84	; 0x54
 8006b64:	f200 80ad 	bhi.w	8006cc2 <_malloc_r+0x46e>
 8006b68:	0b2b      	lsrs	r3, r5, #12
 8006b6a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8006b6e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8006b72:	00c3      	lsls	r3, r0, #3
 8006b74:	e6b3      	b.n	80068de <_malloc_r+0x8a>
 8006b76:	4423      	add	r3, r4
 8006b78:	4630      	mov	r0, r6
 8006b7a:	685a      	ldr	r2, [r3, #4]
 8006b7c:	f042 0201 	orr.w	r2, r2, #1
 8006b80:	605a      	str	r2, [r3, #4]
 8006b82:	3408      	adds	r4, #8
 8006b84:	f000 f974 	bl	8006e70 <__malloc_unlock>
 8006b88:	e68c      	b.n	80068a4 <_malloc_r+0x50>
 8006b8a:	bf00      	nop
 8006b8c:	2000044c 	.word	0x2000044c
 8006b90:	20000aac 	.word	0x20000aac
 8006b94:	20000a7c 	.word	0x20000a7c
 8006b98:	20000aa4 	.word	0x20000aa4
 8006b9c:	20000aa8 	.word	0x20000aa8
 8006ba0:	20000454 	.word	0x20000454
 8006ba4:	20000854 	.word	0x20000854
 8006ba8:	1961      	adds	r1, r4, r5
 8006baa:	f045 0e01 	orr.w	lr, r5, #1
 8006bae:	f042 0501 	orr.w	r5, r2, #1
 8006bb2:	f8c4 e004 	str.w	lr, [r4, #4]
 8006bb6:	4630      	mov	r0, r6
 8006bb8:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006bbc:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006bc0:	604d      	str	r5, [r1, #4]
 8006bc2:	50e2      	str	r2, [r4, r3]
 8006bc4:	f000 f954 	bl	8006e70 <__malloc_unlock>
 8006bc8:	3408      	adds	r4, #8
 8006bca:	e66b      	b.n	80068a4 <_malloc_r+0x50>
 8006bcc:	08e8      	lsrs	r0, r5, #3
 8006bce:	f105 0308 	add.w	r3, r5, #8
 8006bd2:	e64f      	b.n	8006874 <_malloc_r+0x20>
 8006bd4:	f108 0801 	add.w	r8, r8, #1
 8006bd8:	f018 0f03 	tst.w	r8, #3
 8006bdc:	f10e 0e08 	add.w	lr, lr, #8
 8006be0:	f47f aed0 	bne.w	8006984 <_malloc_r+0x130>
 8006be4:	e052      	b.n	8006c8c <_malloc_r+0x438>
 8006be6:	4419      	add	r1, r3
 8006be8:	461c      	mov	r4, r3
 8006bea:	684a      	ldr	r2, [r1, #4]
 8006bec:	68db      	ldr	r3, [r3, #12]
 8006bee:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8006bf2:	f042 0201 	orr.w	r2, r2, #1
 8006bf6:	604a      	str	r2, [r1, #4]
 8006bf8:	4630      	mov	r0, r6
 8006bfa:	60eb      	str	r3, [r5, #12]
 8006bfc:	609d      	str	r5, [r3, #8]
 8006bfe:	f000 f937 	bl	8006e70 <__malloc_unlock>
 8006c02:	e64f      	b.n	80068a4 <_malloc_r+0x50>
 8006c04:	0a5a      	lsrs	r2, r3, #9
 8006c06:	2a04      	cmp	r2, #4
 8006c08:	d935      	bls.n	8006c76 <_malloc_r+0x422>
 8006c0a:	2a14      	cmp	r2, #20
 8006c0c:	d86f      	bhi.n	8006cee <_malloc_r+0x49a>
 8006c0e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8006c12:	00c9      	lsls	r1, r1, #3
 8006c14:	325b      	adds	r2, #91	; 0x5b
 8006c16:	eb07 0e01 	add.w	lr, r7, r1
 8006c1a:	5879      	ldr	r1, [r7, r1]
 8006c1c:	f1ae 0e08 	sub.w	lr, lr, #8
 8006c20:	458e      	cmp	lr, r1
 8006c22:	d058      	beq.n	8006cd6 <_malloc_r+0x482>
 8006c24:	684a      	ldr	r2, [r1, #4]
 8006c26:	f022 0203 	bic.w	r2, r2, #3
 8006c2a:	429a      	cmp	r2, r3
 8006c2c:	d902      	bls.n	8006c34 <_malloc_r+0x3e0>
 8006c2e:	6889      	ldr	r1, [r1, #8]
 8006c30:	458e      	cmp	lr, r1
 8006c32:	d1f7      	bne.n	8006c24 <_malloc_r+0x3d0>
 8006c34:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006c38:	687b      	ldr	r3, [r7, #4]
 8006c3a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006c3e:	f8ce 4008 	str.w	r4, [lr, #8]
 8006c42:	60cc      	str	r4, [r1, #12]
 8006c44:	e68c      	b.n	8006960 <_malloc_r+0x10c>
 8006c46:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006c4a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006c4e:	00c3      	lsls	r3, r0, #3
 8006c50:	e645      	b.n	80068de <_malloc_r+0x8a>
 8006c52:	42bc      	cmp	r4, r7
 8006c54:	d072      	beq.n	8006d3c <_malloc_r+0x4e8>
 8006c56:	68bc      	ldr	r4, [r7, #8]
 8006c58:	6862      	ldr	r2, [r4, #4]
 8006c5a:	f022 0203 	bic.w	r2, r2, #3
 8006c5e:	4295      	cmp	r5, r2
 8006c60:	eba2 0305 	sub.w	r3, r2, r5
 8006c64:	d802      	bhi.n	8006c6c <_malloc_r+0x418>
 8006c66:	2b0f      	cmp	r3, #15
 8006c68:	f73f af51 	bgt.w	8006b0e <_malloc_r+0x2ba>
 8006c6c:	4630      	mov	r0, r6
 8006c6e:	f000 f8ff 	bl	8006e70 <__malloc_unlock>
 8006c72:	2400      	movs	r4, #0
 8006c74:	e616      	b.n	80068a4 <_malloc_r+0x50>
 8006c76:	099a      	lsrs	r2, r3, #6
 8006c78:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006c7c:	00c9      	lsls	r1, r1, #3
 8006c7e:	3238      	adds	r2, #56	; 0x38
 8006c80:	e7c9      	b.n	8006c16 <_malloc_r+0x3c2>
 8006c82:	f8d9 9000 	ldr.w	r9, [r9]
 8006c86:	4599      	cmp	r9, r3
 8006c88:	f040 8083 	bne.w	8006d92 <_malloc_r+0x53e>
 8006c8c:	f010 0f03 	tst.w	r0, #3
 8006c90:	f1a9 0308 	sub.w	r3, r9, #8
 8006c94:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006c98:	d1f3      	bne.n	8006c82 <_malloc_r+0x42e>
 8006c9a:	687b      	ldr	r3, [r7, #4]
 8006c9c:	ea23 0304 	bic.w	r3, r3, r4
 8006ca0:	607b      	str	r3, [r7, #4]
 8006ca2:	0064      	lsls	r4, r4, #1
 8006ca4:	429c      	cmp	r4, r3
 8006ca6:	f63f aeac 	bhi.w	8006a02 <_malloc_r+0x1ae>
 8006caa:	b91c      	cbnz	r4, 8006cb4 <_malloc_r+0x460>
 8006cac:	e6a9      	b.n	8006a02 <_malloc_r+0x1ae>
 8006cae:	0064      	lsls	r4, r4, #1
 8006cb0:	f108 0804 	add.w	r8, r8, #4
 8006cb4:	421c      	tst	r4, r3
 8006cb6:	d0fa      	beq.n	8006cae <_malloc_r+0x45a>
 8006cb8:	4640      	mov	r0, r8
 8006cba:	e65f      	b.n	800697c <_malloc_r+0x128>
 8006cbc:	f108 0810 	add.w	r8, r8, #16
 8006cc0:	e6bc      	b.n	8006a3c <_malloc_r+0x1e8>
 8006cc2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8006cc6:	d826      	bhi.n	8006d16 <_malloc_r+0x4c2>
 8006cc8:	0beb      	lsrs	r3, r5, #15
 8006cca:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006cce:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8006cd2:	00c3      	lsls	r3, r0, #3
 8006cd4:	e603      	b.n	80068de <_malloc_r+0x8a>
 8006cd6:	687b      	ldr	r3, [r7, #4]
 8006cd8:	1092      	asrs	r2, r2, #2
 8006cda:	f04f 0801 	mov.w	r8, #1
 8006cde:	fa08 f202 	lsl.w	r2, r8, r2
 8006ce2:	4313      	orrs	r3, r2
 8006ce4:	607b      	str	r3, [r7, #4]
 8006ce6:	e7a8      	b.n	8006c3a <_malloc_r+0x3e6>
 8006ce8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006cec:	e6ce      	b.n	8006a8c <_malloc_r+0x238>
 8006cee:	2a54      	cmp	r2, #84	; 0x54
 8006cf0:	d829      	bhi.n	8006d46 <_malloc_r+0x4f2>
 8006cf2:	0b1a      	lsrs	r2, r3, #12
 8006cf4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006cf8:	00c9      	lsls	r1, r1, #3
 8006cfa:	326e      	adds	r2, #110	; 0x6e
 8006cfc:	e78b      	b.n	8006c16 <_malloc_r+0x3c2>
 8006cfe:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8006d02:	2900      	cmp	r1, #0
 8006d04:	f47f aeae 	bne.w	8006a64 <_malloc_r+0x210>
 8006d08:	eb09 0208 	add.w	r2, r9, r8
 8006d0c:	68b9      	ldr	r1, [r7, #8]
 8006d0e:	f042 0201 	orr.w	r2, r2, #1
 8006d12:	604a      	str	r2, [r1, #4]
 8006d14:	e6ec      	b.n	8006af0 <_malloc_r+0x29c>
 8006d16:	f240 5254 	movw	r2, #1364	; 0x554
 8006d1a:	4293      	cmp	r3, r2
 8006d1c:	d81c      	bhi.n	8006d58 <_malloc_r+0x504>
 8006d1e:	0cab      	lsrs	r3, r5, #18
 8006d20:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8006d24:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006d28:	00c3      	lsls	r3, r0, #3
 8006d2a:	e5d8      	b.n	80068de <_malloc_r+0x8a>
 8006d2c:	2301      	movs	r3, #1
 8006d2e:	f8cb 3004 	str.w	r3, [fp, #4]
 8006d32:	e79b      	b.n	8006c6c <_malloc_r+0x418>
 8006d34:	2101      	movs	r1, #1
 8006d36:	f04f 0800 	mov.w	r8, #0
 8006d3a:	e6ba      	b.n	8006ab2 <_malloc_r+0x25e>
 8006d3c:	4a16      	ldr	r2, [pc, #88]	; (8006d98 <_malloc_r+0x544>)
 8006d3e:	6813      	ldr	r3, [r2, #0]
 8006d40:	4443      	add	r3, r8
 8006d42:	6013      	str	r3, [r2, #0]
 8006d44:	e68e      	b.n	8006a64 <_malloc_r+0x210>
 8006d46:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006d4a:	d814      	bhi.n	8006d76 <_malloc_r+0x522>
 8006d4c:	0bda      	lsrs	r2, r3, #15
 8006d4e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8006d52:	00c9      	lsls	r1, r1, #3
 8006d54:	3277      	adds	r2, #119	; 0x77
 8006d56:	e75e      	b.n	8006c16 <_malloc_r+0x3c2>
 8006d58:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006d5c:	207f      	movs	r0, #127	; 0x7f
 8006d5e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8006d62:	e5bc      	b.n	80068de <_malloc_r+0x8a>
 8006d64:	f104 0108 	add.w	r1, r4, #8
 8006d68:	4630      	mov	r0, r6
 8006d6a:	9201      	str	r2, [sp, #4]
 8006d6c:	f7ff fa48 	bl	8006200 <_free_r>
 8006d70:	9a01      	ldr	r2, [sp, #4]
 8006d72:	6813      	ldr	r3, [r2, #0]
 8006d74:	e6bc      	b.n	8006af0 <_malloc_r+0x29c>
 8006d76:	f240 5154 	movw	r1, #1364	; 0x554
 8006d7a:	428a      	cmp	r2, r1
 8006d7c:	d805      	bhi.n	8006d8a <_malloc_r+0x536>
 8006d7e:	0c9a      	lsrs	r2, r3, #18
 8006d80:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8006d84:	00c9      	lsls	r1, r1, #3
 8006d86:	327c      	adds	r2, #124	; 0x7c
 8006d88:	e745      	b.n	8006c16 <_malloc_r+0x3c2>
 8006d8a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006d8e:	227e      	movs	r2, #126	; 0x7e
 8006d90:	e741      	b.n	8006c16 <_malloc_r+0x3c2>
 8006d92:	687b      	ldr	r3, [r7, #4]
 8006d94:	e785      	b.n	8006ca2 <_malloc_r+0x44e>
 8006d96:	bf00      	nop
 8006d98:	20000a7c 	.word	0x20000a7c

08006d9c <memmove>:
 8006d9c:	4288      	cmp	r0, r1
 8006d9e:	b4f0      	push	{r4, r5, r6, r7}
 8006da0:	d90d      	bls.n	8006dbe <memmove+0x22>
 8006da2:	188b      	adds	r3, r1, r2
 8006da4:	4283      	cmp	r3, r0
 8006da6:	d90a      	bls.n	8006dbe <memmove+0x22>
 8006da8:	1884      	adds	r4, r0, r2
 8006daa:	b132      	cbz	r2, 8006dba <memmove+0x1e>
 8006dac:	4622      	mov	r2, r4
 8006dae:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8006db2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8006db6:	4299      	cmp	r1, r3
 8006db8:	d1f9      	bne.n	8006dae <memmove+0x12>
 8006dba:	bcf0      	pop	{r4, r5, r6, r7}
 8006dbc:	4770      	bx	lr
 8006dbe:	2a0f      	cmp	r2, #15
 8006dc0:	d949      	bls.n	8006e56 <memmove+0xba>
 8006dc2:	ea40 0301 	orr.w	r3, r0, r1
 8006dc6:	079b      	lsls	r3, r3, #30
 8006dc8:	d147      	bne.n	8006e5a <memmove+0xbe>
 8006dca:	f1a2 0310 	sub.w	r3, r2, #16
 8006dce:	091b      	lsrs	r3, r3, #4
 8006dd0:	f101 0720 	add.w	r7, r1, #32
 8006dd4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006dd8:	f101 0410 	add.w	r4, r1, #16
 8006ddc:	f100 0510 	add.w	r5, r0, #16
 8006de0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8006de4:	f845 6c10 	str.w	r6, [r5, #-16]
 8006de8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006dec:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006df0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8006df4:	f845 6c08 	str.w	r6, [r5, #-8]
 8006df8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006dfc:	f845 6c04 	str.w	r6, [r5, #-4]
 8006e00:	3410      	adds	r4, #16
 8006e02:	42bc      	cmp	r4, r7
 8006e04:	f105 0510 	add.w	r5, r5, #16
 8006e08:	d1ea      	bne.n	8006de0 <memmove+0x44>
 8006e0a:	3301      	adds	r3, #1
 8006e0c:	f002 050f 	and.w	r5, r2, #15
 8006e10:	011b      	lsls	r3, r3, #4
 8006e12:	2d03      	cmp	r5, #3
 8006e14:	4419      	add	r1, r3
 8006e16:	4403      	add	r3, r0
 8006e18:	d921      	bls.n	8006e5e <memmove+0xc2>
 8006e1a:	1f1f      	subs	r7, r3, #4
 8006e1c:	460e      	mov	r6, r1
 8006e1e:	462c      	mov	r4, r5
 8006e20:	3c04      	subs	r4, #4
 8006e22:	f856 cb04 	ldr.w	ip, [r6], #4
 8006e26:	f847 cf04 	str.w	ip, [r7, #4]!
 8006e2a:	2c03      	cmp	r4, #3
 8006e2c:	d8f8      	bhi.n	8006e20 <memmove+0x84>
 8006e2e:	1f2c      	subs	r4, r5, #4
 8006e30:	f024 0403 	bic.w	r4, r4, #3
 8006e34:	3404      	adds	r4, #4
 8006e36:	4423      	add	r3, r4
 8006e38:	4421      	add	r1, r4
 8006e3a:	f002 0203 	and.w	r2, r2, #3
 8006e3e:	2a00      	cmp	r2, #0
 8006e40:	d0bb      	beq.n	8006dba <memmove+0x1e>
 8006e42:	3b01      	subs	r3, #1
 8006e44:	440a      	add	r2, r1
 8006e46:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006e4a:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006e4e:	4291      	cmp	r1, r2
 8006e50:	d1f9      	bne.n	8006e46 <memmove+0xaa>
 8006e52:	bcf0      	pop	{r4, r5, r6, r7}
 8006e54:	4770      	bx	lr
 8006e56:	4603      	mov	r3, r0
 8006e58:	e7f1      	b.n	8006e3e <memmove+0xa2>
 8006e5a:	4603      	mov	r3, r0
 8006e5c:	e7f1      	b.n	8006e42 <memmove+0xa6>
 8006e5e:	462a      	mov	r2, r5
 8006e60:	e7ed      	b.n	8006e3e <memmove+0xa2>
 8006e62:	bf00      	nop

08006e64 <__malloc_lock>:
 8006e64:	4801      	ldr	r0, [pc, #4]	; (8006e6c <__malloc_lock+0x8>)
 8006e66:	f7ff bc79 	b.w	800675c <__retarget_lock_acquire_recursive>
 8006e6a:	bf00      	nop
 8006e6c:	20000b88 	.word	0x20000b88

08006e70 <__malloc_unlock>:
 8006e70:	4801      	ldr	r0, [pc, #4]	; (8006e78 <__malloc_unlock+0x8>)
 8006e72:	f7ff bc75 	b.w	8006760 <__retarget_lock_release_recursive>
 8006e76:	bf00      	nop
 8006e78:	20000b88 	.word	0x20000b88

08006e7c <_Balloc>:
 8006e7c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006e7e:	b570      	push	{r4, r5, r6, lr}
 8006e80:	4605      	mov	r5, r0
 8006e82:	460c      	mov	r4, r1
 8006e84:	b14b      	cbz	r3, 8006e9a <_Balloc+0x1e>
 8006e86:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006e8a:	b180      	cbz	r0, 8006eae <_Balloc+0x32>
 8006e8c:	6802      	ldr	r2, [r0, #0]
 8006e8e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006e92:	2300      	movs	r3, #0
 8006e94:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006e98:	bd70      	pop	{r4, r5, r6, pc}
 8006e9a:	2221      	movs	r2, #33	; 0x21
 8006e9c:	2104      	movs	r1, #4
 8006e9e:	f000 fe1d 	bl	8007adc <_calloc_r>
 8006ea2:	4603      	mov	r3, r0
 8006ea4:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006ea6:	2800      	cmp	r0, #0
 8006ea8:	d1ed      	bne.n	8006e86 <_Balloc+0xa>
 8006eaa:	2000      	movs	r0, #0
 8006eac:	bd70      	pop	{r4, r5, r6, pc}
 8006eae:	2101      	movs	r1, #1
 8006eb0:	fa01 f604 	lsl.w	r6, r1, r4
 8006eb4:	1d72      	adds	r2, r6, #5
 8006eb6:	4628      	mov	r0, r5
 8006eb8:	0092      	lsls	r2, r2, #2
 8006eba:	f000 fe0f 	bl	8007adc <_calloc_r>
 8006ebe:	2800      	cmp	r0, #0
 8006ec0:	d0f3      	beq.n	8006eaa <_Balloc+0x2e>
 8006ec2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8006ec6:	e7e4      	b.n	8006e92 <_Balloc+0x16>

08006ec8 <_Bfree>:
 8006ec8:	b131      	cbz	r1, 8006ed8 <_Bfree+0x10>
 8006eca:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006ecc:	684a      	ldr	r2, [r1, #4]
 8006ece:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8006ed2:	6008      	str	r0, [r1, #0]
 8006ed4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006ed8:	4770      	bx	lr
 8006eda:	bf00      	nop

08006edc <__multadd>:
 8006edc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006ede:	690c      	ldr	r4, [r1, #16]
 8006ee0:	b083      	sub	sp, #12
 8006ee2:	460d      	mov	r5, r1
 8006ee4:	4606      	mov	r6, r0
 8006ee6:	f101 0c14 	add.w	ip, r1, #20
 8006eea:	2700      	movs	r7, #0
 8006eec:	f8dc 0000 	ldr.w	r0, [ip]
 8006ef0:	b281      	uxth	r1, r0
 8006ef2:	fb02 3301 	mla	r3, r2, r1, r3
 8006ef6:	0c01      	lsrs	r1, r0, #16
 8006ef8:	0c18      	lsrs	r0, r3, #16
 8006efa:	fb02 0101 	mla	r1, r2, r1, r0
 8006efe:	b29b      	uxth	r3, r3
 8006f00:	3701      	adds	r7, #1
 8006f02:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8006f06:	42bc      	cmp	r4, r7
 8006f08:	f84c 3b04 	str.w	r3, [ip], #4
 8006f0c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006f10:	dcec      	bgt.n	8006eec <__multadd+0x10>
 8006f12:	b13b      	cbz	r3, 8006f24 <__multadd+0x48>
 8006f14:	68aa      	ldr	r2, [r5, #8]
 8006f16:	42a2      	cmp	r2, r4
 8006f18:	dd07      	ble.n	8006f2a <__multadd+0x4e>
 8006f1a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006f1e:	3401      	adds	r4, #1
 8006f20:	6153      	str	r3, [r2, #20]
 8006f22:	612c      	str	r4, [r5, #16]
 8006f24:	4628      	mov	r0, r5
 8006f26:	b003      	add	sp, #12
 8006f28:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006f2a:	6869      	ldr	r1, [r5, #4]
 8006f2c:	9301      	str	r3, [sp, #4]
 8006f2e:	3101      	adds	r1, #1
 8006f30:	4630      	mov	r0, r6
 8006f32:	f7ff ffa3 	bl	8006e7c <_Balloc>
 8006f36:	692a      	ldr	r2, [r5, #16]
 8006f38:	3202      	adds	r2, #2
 8006f3a:	f105 010c 	add.w	r1, r5, #12
 8006f3e:	4607      	mov	r7, r0
 8006f40:	0092      	lsls	r2, r2, #2
 8006f42:	300c      	adds	r0, #12
 8006f44:	f7f9 fadc 	bl	8000500 <memcpy>
 8006f48:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006f4a:	6869      	ldr	r1, [r5, #4]
 8006f4c:	9b01      	ldr	r3, [sp, #4]
 8006f4e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006f52:	6028      	str	r0, [r5, #0]
 8006f54:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006f58:	463d      	mov	r5, r7
 8006f5a:	e7de      	b.n	8006f1a <__multadd+0x3e>

08006f5c <__hi0bits>:
 8006f5c:	0c02      	lsrs	r2, r0, #16
 8006f5e:	0412      	lsls	r2, r2, #16
 8006f60:	4603      	mov	r3, r0
 8006f62:	b9c2      	cbnz	r2, 8006f96 <__hi0bits+0x3a>
 8006f64:	0403      	lsls	r3, r0, #16
 8006f66:	2010      	movs	r0, #16
 8006f68:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006f6c:	bf04      	itt	eq
 8006f6e:	021b      	lsleq	r3, r3, #8
 8006f70:	3008      	addeq	r0, #8
 8006f72:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006f76:	bf04      	itt	eq
 8006f78:	011b      	lsleq	r3, r3, #4
 8006f7a:	3004      	addeq	r0, #4
 8006f7c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006f80:	bf04      	itt	eq
 8006f82:	009b      	lsleq	r3, r3, #2
 8006f84:	3002      	addeq	r0, #2
 8006f86:	2b00      	cmp	r3, #0
 8006f88:	db04      	blt.n	8006f94 <__hi0bits+0x38>
 8006f8a:	005b      	lsls	r3, r3, #1
 8006f8c:	d501      	bpl.n	8006f92 <__hi0bits+0x36>
 8006f8e:	3001      	adds	r0, #1
 8006f90:	4770      	bx	lr
 8006f92:	2020      	movs	r0, #32
 8006f94:	4770      	bx	lr
 8006f96:	2000      	movs	r0, #0
 8006f98:	e7e6      	b.n	8006f68 <__hi0bits+0xc>
 8006f9a:	bf00      	nop

08006f9c <__lo0bits>:
 8006f9c:	6803      	ldr	r3, [r0, #0]
 8006f9e:	f013 0207 	ands.w	r2, r3, #7
 8006fa2:	4601      	mov	r1, r0
 8006fa4:	d007      	beq.n	8006fb6 <__lo0bits+0x1a>
 8006fa6:	07da      	lsls	r2, r3, #31
 8006fa8:	d41f      	bmi.n	8006fea <__lo0bits+0x4e>
 8006faa:	0798      	lsls	r0, r3, #30
 8006fac:	d51f      	bpl.n	8006fee <__lo0bits+0x52>
 8006fae:	085b      	lsrs	r3, r3, #1
 8006fb0:	600b      	str	r3, [r1, #0]
 8006fb2:	2001      	movs	r0, #1
 8006fb4:	4770      	bx	lr
 8006fb6:	b298      	uxth	r0, r3
 8006fb8:	b1a0      	cbz	r0, 8006fe4 <__lo0bits+0x48>
 8006fba:	4610      	mov	r0, r2
 8006fbc:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006fc0:	bf04      	itt	eq
 8006fc2:	0a1b      	lsreq	r3, r3, #8
 8006fc4:	3008      	addeq	r0, #8
 8006fc6:	071a      	lsls	r2, r3, #28
 8006fc8:	bf04      	itt	eq
 8006fca:	091b      	lsreq	r3, r3, #4
 8006fcc:	3004      	addeq	r0, #4
 8006fce:	079a      	lsls	r2, r3, #30
 8006fd0:	bf04      	itt	eq
 8006fd2:	089b      	lsreq	r3, r3, #2
 8006fd4:	3002      	addeq	r0, #2
 8006fd6:	07da      	lsls	r2, r3, #31
 8006fd8:	d402      	bmi.n	8006fe0 <__lo0bits+0x44>
 8006fda:	085b      	lsrs	r3, r3, #1
 8006fdc:	d00b      	beq.n	8006ff6 <__lo0bits+0x5a>
 8006fde:	3001      	adds	r0, #1
 8006fe0:	600b      	str	r3, [r1, #0]
 8006fe2:	4770      	bx	lr
 8006fe4:	0c1b      	lsrs	r3, r3, #16
 8006fe6:	2010      	movs	r0, #16
 8006fe8:	e7e8      	b.n	8006fbc <__lo0bits+0x20>
 8006fea:	2000      	movs	r0, #0
 8006fec:	4770      	bx	lr
 8006fee:	089b      	lsrs	r3, r3, #2
 8006ff0:	600b      	str	r3, [r1, #0]
 8006ff2:	2002      	movs	r0, #2
 8006ff4:	4770      	bx	lr
 8006ff6:	2020      	movs	r0, #32
 8006ff8:	4770      	bx	lr
 8006ffa:	bf00      	nop

08006ffc <__i2b>:
 8006ffc:	b510      	push	{r4, lr}
 8006ffe:	460c      	mov	r4, r1
 8007000:	2101      	movs	r1, #1
 8007002:	f7ff ff3b 	bl	8006e7c <_Balloc>
 8007006:	2201      	movs	r2, #1
 8007008:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800700c:	bd10      	pop	{r4, pc}
 800700e:	bf00      	nop

08007010 <__multiply>:
 8007010:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007014:	690e      	ldr	r6, [r1, #16]
 8007016:	6914      	ldr	r4, [r2, #16]
 8007018:	42a6      	cmp	r6, r4
 800701a:	b083      	sub	sp, #12
 800701c:	460f      	mov	r7, r1
 800701e:	4615      	mov	r5, r2
 8007020:	da04      	bge.n	800702c <__multiply+0x1c>
 8007022:	4632      	mov	r2, r6
 8007024:	462f      	mov	r7, r5
 8007026:	4626      	mov	r6, r4
 8007028:	460d      	mov	r5, r1
 800702a:	4614      	mov	r4, r2
 800702c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8007030:	eb06 0804 	add.w	r8, r6, r4
 8007034:	4543      	cmp	r3, r8
 8007036:	bfb8      	it	lt
 8007038:	3101      	addlt	r1, #1
 800703a:	f7ff ff1f 	bl	8006e7c <_Balloc>
 800703e:	f100 0914 	add.w	r9, r0, #20
 8007042:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8007046:	45f1      	cmp	r9, lr
 8007048:	9000      	str	r0, [sp, #0]
 800704a:	d205      	bcs.n	8007058 <__multiply+0x48>
 800704c:	464b      	mov	r3, r9
 800704e:	2200      	movs	r2, #0
 8007050:	f843 2b04 	str.w	r2, [r3], #4
 8007054:	459e      	cmp	lr, r3
 8007056:	d8fb      	bhi.n	8007050 <__multiply+0x40>
 8007058:	f105 0a14 	add.w	sl, r5, #20
 800705c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8007060:	f107 0314 	add.w	r3, r7, #20
 8007064:	45a2      	cmp	sl, r4
 8007066:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800706a:	d261      	bcs.n	8007130 <__multiply+0x120>
 800706c:	1b64      	subs	r4, r4, r5
 800706e:	3c15      	subs	r4, #21
 8007070:	f024 0403 	bic.w	r4, r4, #3
 8007074:	f8cd e004 	str.w	lr, [sp, #4]
 8007078:	44a2      	add	sl, r4
 800707a:	f105 0210 	add.w	r2, r5, #16
 800707e:	469e      	mov	lr, r3
 8007080:	e005      	b.n	800708e <__multiply+0x7e>
 8007082:	0c2d      	lsrs	r5, r5, #16
 8007084:	d12b      	bne.n	80070de <__multiply+0xce>
 8007086:	4592      	cmp	sl, r2
 8007088:	f109 0904 	add.w	r9, r9, #4
 800708c:	d04e      	beq.n	800712c <__multiply+0x11c>
 800708e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8007092:	fa1f fb85 	uxth.w	fp, r5
 8007096:	f1bb 0f00 	cmp.w	fp, #0
 800709a:	d0f2      	beq.n	8007082 <__multiply+0x72>
 800709c:	4677      	mov	r7, lr
 800709e:	464e      	mov	r6, r9
 80070a0:	2000      	movs	r0, #0
 80070a2:	e000      	b.n	80070a6 <__multiply+0x96>
 80070a4:	4626      	mov	r6, r4
 80070a6:	f857 1b04 	ldr.w	r1, [r7], #4
 80070aa:	6834      	ldr	r4, [r6, #0]
 80070ac:	b28b      	uxth	r3, r1
 80070ae:	b2a5      	uxth	r5, r4
 80070b0:	0c09      	lsrs	r1, r1, #16
 80070b2:	0c24      	lsrs	r4, r4, #16
 80070b4:	fb0b 5303 	mla	r3, fp, r3, r5
 80070b8:	4403      	add	r3, r0
 80070ba:	fb0b 4001 	mla	r0, fp, r1, r4
 80070be:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80070c2:	4634      	mov	r4, r6
 80070c4:	b29b      	uxth	r3, r3
 80070c6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80070ca:	45bc      	cmp	ip, r7
 80070cc:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80070d0:	f844 3b04 	str.w	r3, [r4], #4
 80070d4:	d8e6      	bhi.n	80070a4 <__multiply+0x94>
 80070d6:	6070      	str	r0, [r6, #4]
 80070d8:	6815      	ldr	r5, [r2, #0]
 80070da:	0c2d      	lsrs	r5, r5, #16
 80070dc:	d0d3      	beq.n	8007086 <__multiply+0x76>
 80070de:	f8d9 3000 	ldr.w	r3, [r9]
 80070e2:	4676      	mov	r6, lr
 80070e4:	4618      	mov	r0, r3
 80070e6:	46cb      	mov	fp, r9
 80070e8:	2100      	movs	r1, #0
 80070ea:	e000      	b.n	80070ee <__multiply+0xde>
 80070ec:	46a3      	mov	fp, r4
 80070ee:	8834      	ldrh	r4, [r6, #0]
 80070f0:	0c00      	lsrs	r0, r0, #16
 80070f2:	fb05 0004 	mla	r0, r5, r4, r0
 80070f6:	4401      	add	r1, r0
 80070f8:	b29b      	uxth	r3, r3
 80070fa:	465c      	mov	r4, fp
 80070fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8007100:	f844 3b04 	str.w	r3, [r4], #4
 8007104:	f856 3b04 	ldr.w	r3, [r6], #4
 8007108:	f8db 0004 	ldr.w	r0, [fp, #4]
 800710c:	0c1b      	lsrs	r3, r3, #16
 800710e:	b287      	uxth	r7, r0
 8007110:	fb05 7303 	mla	r3, r5, r3, r7
 8007114:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8007118:	45b4      	cmp	ip, r6
 800711a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800711e:	d8e5      	bhi.n	80070ec <__multiply+0xdc>
 8007120:	4592      	cmp	sl, r2
 8007122:	f8cb 3004 	str.w	r3, [fp, #4]
 8007126:	f109 0904 	add.w	r9, r9, #4
 800712a:	d1b0      	bne.n	800708e <__multiply+0x7e>
 800712c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8007130:	f1b8 0f00 	cmp.w	r8, #0
 8007134:	dd0b      	ble.n	800714e <__multiply+0x13e>
 8007136:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800713a:	f1ae 0e04 	sub.w	lr, lr, #4
 800713e:	b11b      	cbz	r3, 8007148 <__multiply+0x138>
 8007140:	e005      	b.n	800714e <__multiply+0x13e>
 8007142:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8007146:	b913      	cbnz	r3, 800714e <__multiply+0x13e>
 8007148:	f1b8 0801 	subs.w	r8, r8, #1
 800714c:	d1f9      	bne.n	8007142 <__multiply+0x132>
 800714e:	9800      	ldr	r0, [sp, #0]
 8007150:	f8c0 8010 	str.w	r8, [r0, #16]
 8007154:	b003      	add	sp, #12
 8007156:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800715a:	bf00      	nop

0800715c <__pow5mult>:
 800715c:	f012 0303 	ands.w	r3, r2, #3
 8007160:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007164:	4614      	mov	r4, r2
 8007166:	4607      	mov	r7, r0
 8007168:	d12e      	bne.n	80071c8 <__pow5mult+0x6c>
 800716a:	460d      	mov	r5, r1
 800716c:	10a4      	asrs	r4, r4, #2
 800716e:	d01c      	beq.n	80071aa <__pow5mult+0x4e>
 8007170:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8007172:	b396      	cbz	r6, 80071da <__pow5mult+0x7e>
 8007174:	07e3      	lsls	r3, r4, #31
 8007176:	f04f 0800 	mov.w	r8, #0
 800717a:	d406      	bmi.n	800718a <__pow5mult+0x2e>
 800717c:	1064      	asrs	r4, r4, #1
 800717e:	d014      	beq.n	80071aa <__pow5mult+0x4e>
 8007180:	6830      	ldr	r0, [r6, #0]
 8007182:	b1a8      	cbz	r0, 80071b0 <__pow5mult+0x54>
 8007184:	4606      	mov	r6, r0
 8007186:	07e3      	lsls	r3, r4, #31
 8007188:	d5f8      	bpl.n	800717c <__pow5mult+0x20>
 800718a:	4632      	mov	r2, r6
 800718c:	4629      	mov	r1, r5
 800718e:	4638      	mov	r0, r7
 8007190:	f7ff ff3e 	bl	8007010 <__multiply>
 8007194:	b1b5      	cbz	r5, 80071c4 <__pow5mult+0x68>
 8007196:	686a      	ldr	r2, [r5, #4]
 8007198:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800719a:	1064      	asrs	r4, r4, #1
 800719c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80071a0:	6029      	str	r1, [r5, #0]
 80071a2:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80071a6:	4605      	mov	r5, r0
 80071a8:	d1ea      	bne.n	8007180 <__pow5mult+0x24>
 80071aa:	4628      	mov	r0, r5
 80071ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80071b0:	4632      	mov	r2, r6
 80071b2:	4631      	mov	r1, r6
 80071b4:	4638      	mov	r0, r7
 80071b6:	f7ff ff2b 	bl	8007010 <__multiply>
 80071ba:	6030      	str	r0, [r6, #0]
 80071bc:	f8c0 8000 	str.w	r8, [r0]
 80071c0:	4606      	mov	r6, r0
 80071c2:	e7e0      	b.n	8007186 <__pow5mult+0x2a>
 80071c4:	4605      	mov	r5, r0
 80071c6:	e7d9      	b.n	800717c <__pow5mult+0x20>
 80071c8:	3b01      	subs	r3, #1
 80071ca:	4a0b      	ldr	r2, [pc, #44]	; (80071f8 <__pow5mult+0x9c>)
 80071cc:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80071d0:	2300      	movs	r3, #0
 80071d2:	f7ff fe83 	bl	8006edc <__multadd>
 80071d6:	4605      	mov	r5, r0
 80071d8:	e7c8      	b.n	800716c <__pow5mult+0x10>
 80071da:	2101      	movs	r1, #1
 80071dc:	4638      	mov	r0, r7
 80071de:	f7ff fe4d 	bl	8006e7c <_Balloc>
 80071e2:	f240 2371 	movw	r3, #625	; 0x271
 80071e6:	6143      	str	r3, [r0, #20]
 80071e8:	2201      	movs	r2, #1
 80071ea:	2300      	movs	r3, #0
 80071ec:	6102      	str	r2, [r0, #16]
 80071ee:	4606      	mov	r6, r0
 80071f0:	64b8      	str	r0, [r7, #72]	; 0x48
 80071f2:	6003      	str	r3, [r0, #0]
 80071f4:	e7be      	b.n	8007174 <__pow5mult+0x18>
 80071f6:	bf00      	nop
 80071f8:	08008de0 	.word	0x08008de0

080071fc <__lshift>:
 80071fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007200:	4691      	mov	r9, r2
 8007202:	690a      	ldr	r2, [r1, #16]
 8007204:	460e      	mov	r6, r1
 8007206:	ea4f 1469 	mov.w	r4, r9, asr #5
 800720a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800720e:	eb04 0802 	add.w	r8, r4, r2
 8007212:	f108 0501 	add.w	r5, r8, #1
 8007216:	429d      	cmp	r5, r3
 8007218:	4607      	mov	r7, r0
 800721a:	dd04      	ble.n	8007226 <__lshift+0x2a>
 800721c:	005b      	lsls	r3, r3, #1
 800721e:	429d      	cmp	r5, r3
 8007220:	f101 0101 	add.w	r1, r1, #1
 8007224:	dcfa      	bgt.n	800721c <__lshift+0x20>
 8007226:	4638      	mov	r0, r7
 8007228:	f7ff fe28 	bl	8006e7c <_Balloc>
 800722c:	2c00      	cmp	r4, #0
 800722e:	f100 0314 	add.w	r3, r0, #20
 8007232:	dd37      	ble.n	80072a4 <__lshift+0xa8>
 8007234:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8007238:	2200      	movs	r2, #0
 800723a:	f843 2b04 	str.w	r2, [r3], #4
 800723e:	428b      	cmp	r3, r1
 8007240:	d1fb      	bne.n	800723a <__lshift+0x3e>
 8007242:	6934      	ldr	r4, [r6, #16]
 8007244:	f106 0314 	add.w	r3, r6, #20
 8007248:	f019 091f 	ands.w	r9, r9, #31
 800724c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8007250:	d020      	beq.n	8007294 <__lshift+0x98>
 8007252:	f1c9 0e20 	rsb	lr, r9, #32
 8007256:	2200      	movs	r2, #0
 8007258:	e000      	b.n	800725c <__lshift+0x60>
 800725a:	4651      	mov	r1, sl
 800725c:	681c      	ldr	r4, [r3, #0]
 800725e:	468a      	mov	sl, r1
 8007260:	fa04 f409 	lsl.w	r4, r4, r9
 8007264:	4314      	orrs	r4, r2
 8007266:	f84a 4b04 	str.w	r4, [sl], #4
 800726a:	f853 2b04 	ldr.w	r2, [r3], #4
 800726e:	4563      	cmp	r3, ip
 8007270:	fa22 f20e 	lsr.w	r2, r2, lr
 8007274:	d3f1      	bcc.n	800725a <__lshift+0x5e>
 8007276:	604a      	str	r2, [r1, #4]
 8007278:	b10a      	cbz	r2, 800727e <__lshift+0x82>
 800727a:	f108 0502 	add.w	r5, r8, #2
 800727e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8007280:	6872      	ldr	r2, [r6, #4]
 8007282:	3d01      	subs	r5, #1
 8007284:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8007288:	6105      	str	r5, [r0, #16]
 800728a:	6031      	str	r1, [r6, #0]
 800728c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8007290:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007294:	3904      	subs	r1, #4
 8007296:	f853 2b04 	ldr.w	r2, [r3], #4
 800729a:	f841 2f04 	str.w	r2, [r1, #4]!
 800729e:	459c      	cmp	ip, r3
 80072a0:	d8f9      	bhi.n	8007296 <__lshift+0x9a>
 80072a2:	e7ec      	b.n	800727e <__lshift+0x82>
 80072a4:	4619      	mov	r1, r3
 80072a6:	e7cc      	b.n	8007242 <__lshift+0x46>

080072a8 <__mcmp>:
 80072a8:	b430      	push	{r4, r5}
 80072aa:	690b      	ldr	r3, [r1, #16]
 80072ac:	4605      	mov	r5, r0
 80072ae:	6900      	ldr	r0, [r0, #16]
 80072b0:	1ac0      	subs	r0, r0, r3
 80072b2:	d10f      	bne.n	80072d4 <__mcmp+0x2c>
 80072b4:	009b      	lsls	r3, r3, #2
 80072b6:	3514      	adds	r5, #20
 80072b8:	3114      	adds	r1, #20
 80072ba:	4419      	add	r1, r3
 80072bc:	442b      	add	r3, r5
 80072be:	e001      	b.n	80072c4 <__mcmp+0x1c>
 80072c0:	429d      	cmp	r5, r3
 80072c2:	d207      	bcs.n	80072d4 <__mcmp+0x2c>
 80072c4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80072c8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80072cc:	4294      	cmp	r4, r2
 80072ce:	d0f7      	beq.n	80072c0 <__mcmp+0x18>
 80072d0:	d302      	bcc.n	80072d8 <__mcmp+0x30>
 80072d2:	2001      	movs	r0, #1
 80072d4:	bc30      	pop	{r4, r5}
 80072d6:	4770      	bx	lr
 80072d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80072dc:	e7fa      	b.n	80072d4 <__mcmp+0x2c>
 80072de:	bf00      	nop

080072e0 <__mdiff>:
 80072e0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80072e4:	6913      	ldr	r3, [r2, #16]
 80072e6:	690d      	ldr	r5, [r1, #16]
 80072e8:	1aed      	subs	r5, r5, r3
 80072ea:	2d00      	cmp	r5, #0
 80072ec:	460e      	mov	r6, r1
 80072ee:	4690      	mov	r8, r2
 80072f0:	f101 0414 	add.w	r4, r1, #20
 80072f4:	f102 0714 	add.w	r7, r2, #20
 80072f8:	d114      	bne.n	8007324 <__mdiff+0x44>
 80072fa:	009b      	lsls	r3, r3, #2
 80072fc:	18e2      	adds	r2, r4, r3
 80072fe:	443b      	add	r3, r7
 8007300:	e001      	b.n	8007306 <__mdiff+0x26>
 8007302:	42a2      	cmp	r2, r4
 8007304:	d959      	bls.n	80073ba <__mdiff+0xda>
 8007306:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800730a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800730e:	458c      	cmp	ip, r1
 8007310:	d0f7      	beq.n	8007302 <__mdiff+0x22>
 8007312:	d209      	bcs.n	8007328 <__mdiff+0x48>
 8007314:	4622      	mov	r2, r4
 8007316:	4633      	mov	r3, r6
 8007318:	463c      	mov	r4, r7
 800731a:	4646      	mov	r6, r8
 800731c:	4617      	mov	r7, r2
 800731e:	4698      	mov	r8, r3
 8007320:	2501      	movs	r5, #1
 8007322:	e001      	b.n	8007328 <__mdiff+0x48>
 8007324:	dbf6      	blt.n	8007314 <__mdiff+0x34>
 8007326:	2500      	movs	r5, #0
 8007328:	6871      	ldr	r1, [r6, #4]
 800732a:	f7ff fda7 	bl	8006e7c <_Balloc>
 800732e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8007332:	6936      	ldr	r6, [r6, #16]
 8007334:	60c5      	str	r5, [r0, #12]
 8007336:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800733a:	46bc      	mov	ip, r7
 800733c:	f100 0514 	add.w	r5, r0, #20
 8007340:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8007344:	2300      	movs	r3, #0
 8007346:	f85c 1b04 	ldr.w	r1, [ip], #4
 800734a:	f854 8b04 	ldr.w	r8, [r4], #4
 800734e:	b28a      	uxth	r2, r1
 8007350:	fa13 f388 	uxtah	r3, r3, r8
 8007354:	0c09      	lsrs	r1, r1, #16
 8007356:	1a9a      	subs	r2, r3, r2
 8007358:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800735c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8007360:	b292      	uxth	r2, r2
 8007362:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8007366:	45e6      	cmp	lr, ip
 8007368:	f845 2b04 	str.w	r2, [r5], #4
 800736c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8007370:	d8e9      	bhi.n	8007346 <__mdiff+0x66>
 8007372:	42a7      	cmp	r7, r4
 8007374:	d917      	bls.n	80073a6 <__mdiff+0xc6>
 8007376:	46ae      	mov	lr, r5
 8007378:	46a4      	mov	ip, r4
 800737a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800737e:	fa13 f382 	uxtah	r3, r3, r2
 8007382:	1419      	asrs	r1, r3, #16
 8007384:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8007388:	b29b      	uxth	r3, r3
 800738a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800738e:	4567      	cmp	r7, ip
 8007390:	f84e 2b04 	str.w	r2, [lr], #4
 8007394:	ea4f 4321 	mov.w	r3, r1, asr #16
 8007398:	d8ef      	bhi.n	800737a <__mdiff+0x9a>
 800739a:	43e4      	mvns	r4, r4
 800739c:	4427      	add	r7, r4
 800739e:	f027 0703 	bic.w	r7, r7, #3
 80073a2:	3704      	adds	r7, #4
 80073a4:	443d      	add	r5, r7
 80073a6:	3d04      	subs	r5, #4
 80073a8:	b922      	cbnz	r2, 80073b4 <__mdiff+0xd4>
 80073aa:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80073ae:	3e01      	subs	r6, #1
 80073b0:	2b00      	cmp	r3, #0
 80073b2:	d0fa      	beq.n	80073aa <__mdiff+0xca>
 80073b4:	6106      	str	r6, [r0, #16]
 80073b6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80073ba:	2100      	movs	r1, #0
 80073bc:	f7ff fd5e 	bl	8006e7c <_Balloc>
 80073c0:	2201      	movs	r2, #1
 80073c2:	2300      	movs	r3, #0
 80073c4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80073c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080073cc <__d2b>:
 80073cc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80073d0:	460f      	mov	r7, r1
 80073d2:	b083      	sub	sp, #12
 80073d4:	2101      	movs	r1, #1
 80073d6:	ec55 4b10 	vmov	r4, r5, d0
 80073da:	4616      	mov	r6, r2
 80073dc:	f7ff fd4e 	bl	8006e7c <_Balloc>
 80073e0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80073e4:	4681      	mov	r9, r0
 80073e6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80073ea:	f1b8 0f00 	cmp.w	r8, #0
 80073ee:	d001      	beq.n	80073f4 <__d2b+0x28>
 80073f0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80073f4:	2c00      	cmp	r4, #0
 80073f6:	9301      	str	r3, [sp, #4]
 80073f8:	d024      	beq.n	8007444 <__d2b+0x78>
 80073fa:	a802      	add	r0, sp, #8
 80073fc:	f840 4d08 	str.w	r4, [r0, #-8]!
 8007400:	f7ff fdcc 	bl	8006f9c <__lo0bits>
 8007404:	2800      	cmp	r0, #0
 8007406:	d136      	bne.n	8007476 <__d2b+0xaa>
 8007408:	e9dd 2300 	ldrd	r2, r3, [sp]
 800740c:	f8c9 2014 	str.w	r2, [r9, #20]
 8007410:	2b00      	cmp	r3, #0
 8007412:	bf0c      	ite	eq
 8007414:	2101      	moveq	r1, #1
 8007416:	2102      	movne	r1, #2
 8007418:	f8c9 3018 	str.w	r3, [r9, #24]
 800741c:	f8c9 1010 	str.w	r1, [r9, #16]
 8007420:	f1b8 0f00 	cmp.w	r8, #0
 8007424:	d11b      	bne.n	800745e <__d2b+0x92>
 8007426:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800742a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800742e:	6038      	str	r0, [r7, #0]
 8007430:	6918      	ldr	r0, [r3, #16]
 8007432:	f7ff fd93 	bl	8006f5c <__hi0bits>
 8007436:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800743a:	6030      	str	r0, [r6, #0]
 800743c:	4648      	mov	r0, r9
 800743e:	b003      	add	sp, #12
 8007440:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007444:	a801      	add	r0, sp, #4
 8007446:	f7ff fda9 	bl	8006f9c <__lo0bits>
 800744a:	9b01      	ldr	r3, [sp, #4]
 800744c:	f8c9 3014 	str.w	r3, [r9, #20]
 8007450:	2101      	movs	r1, #1
 8007452:	3020      	adds	r0, #32
 8007454:	f8c9 1010 	str.w	r1, [r9, #16]
 8007458:	f1b8 0f00 	cmp.w	r8, #0
 800745c:	d0e3      	beq.n	8007426 <__d2b+0x5a>
 800745e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8007462:	eb08 0300 	add.w	r3, r8, r0
 8007466:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800746a:	603b      	str	r3, [r7, #0]
 800746c:	6030      	str	r0, [r6, #0]
 800746e:	4648      	mov	r0, r9
 8007470:	b003      	add	sp, #12
 8007472:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007476:	e9dd 1300 	ldrd	r1, r3, [sp]
 800747a:	f1c0 0220 	rsb	r2, r0, #32
 800747e:	fa03 f202 	lsl.w	r2, r3, r2
 8007482:	430a      	orrs	r2, r1
 8007484:	40c3      	lsrs	r3, r0
 8007486:	9301      	str	r3, [sp, #4]
 8007488:	f8c9 2014 	str.w	r2, [r9, #20]
 800748c:	e7c0      	b.n	8007410 <__d2b+0x44>
 800748e:	bf00      	nop

08007490 <_realloc_r>:
 8007490:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007494:	4692      	mov	sl, r2
 8007496:	b083      	sub	sp, #12
 8007498:	2900      	cmp	r1, #0
 800749a:	f000 80a1 	beq.w	80075e0 <_realloc_r+0x150>
 800749e:	460d      	mov	r5, r1
 80074a0:	4680      	mov	r8, r0
 80074a2:	f10a 040b 	add.w	r4, sl, #11
 80074a6:	f7ff fcdd 	bl	8006e64 <__malloc_lock>
 80074aa:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80074ae:	2c16      	cmp	r4, #22
 80074b0:	f022 0603 	bic.w	r6, r2, #3
 80074b4:	f1a5 0708 	sub.w	r7, r5, #8
 80074b8:	d83e      	bhi.n	8007538 <_realloc_r+0xa8>
 80074ba:	2410      	movs	r4, #16
 80074bc:	4621      	mov	r1, r4
 80074be:	45a2      	cmp	sl, r4
 80074c0:	d83f      	bhi.n	8007542 <_realloc_r+0xb2>
 80074c2:	428e      	cmp	r6, r1
 80074c4:	eb07 0906 	add.w	r9, r7, r6
 80074c8:	da74      	bge.n	80075b4 <_realloc_r+0x124>
 80074ca:	4bc7      	ldr	r3, [pc, #796]	; (80077e8 <_realloc_r+0x358>)
 80074cc:	6898      	ldr	r0, [r3, #8]
 80074ce:	4548      	cmp	r0, r9
 80074d0:	f000 80aa 	beq.w	8007628 <_realloc_r+0x198>
 80074d4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80074d8:	f020 0301 	bic.w	r3, r0, #1
 80074dc:	444b      	add	r3, r9
 80074de:	685b      	ldr	r3, [r3, #4]
 80074e0:	07db      	lsls	r3, r3, #31
 80074e2:	f140 8083 	bpl.w	80075ec <_realloc_r+0x15c>
 80074e6:	07d2      	lsls	r2, r2, #31
 80074e8:	d534      	bpl.n	8007554 <_realloc_r+0xc4>
 80074ea:	4651      	mov	r1, sl
 80074ec:	4640      	mov	r0, r8
 80074ee:	f7ff f9b1 	bl	8006854 <_malloc_r>
 80074f2:	4682      	mov	sl, r0
 80074f4:	b1e0      	cbz	r0, 8007530 <_realloc_r+0xa0>
 80074f6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80074fa:	f023 0301 	bic.w	r3, r3, #1
 80074fe:	443b      	add	r3, r7
 8007500:	f1a0 0208 	sub.w	r2, r0, #8
 8007504:	4293      	cmp	r3, r2
 8007506:	f000 80f9 	beq.w	80076fc <_realloc_r+0x26c>
 800750a:	1f32      	subs	r2, r6, #4
 800750c:	2a24      	cmp	r2, #36	; 0x24
 800750e:	f200 8107 	bhi.w	8007720 <_realloc_r+0x290>
 8007512:	2a13      	cmp	r2, #19
 8007514:	6829      	ldr	r1, [r5, #0]
 8007516:	f200 80e6 	bhi.w	80076e6 <_realloc_r+0x256>
 800751a:	4603      	mov	r3, r0
 800751c:	462a      	mov	r2, r5
 800751e:	6019      	str	r1, [r3, #0]
 8007520:	6851      	ldr	r1, [r2, #4]
 8007522:	6059      	str	r1, [r3, #4]
 8007524:	6892      	ldr	r2, [r2, #8]
 8007526:	609a      	str	r2, [r3, #8]
 8007528:	4629      	mov	r1, r5
 800752a:	4640      	mov	r0, r8
 800752c:	f7fe fe68 	bl	8006200 <_free_r>
 8007530:	4640      	mov	r0, r8
 8007532:	f7ff fc9d 	bl	8006e70 <__malloc_unlock>
 8007536:	e04f      	b.n	80075d8 <_realloc_r+0x148>
 8007538:	f024 0407 	bic.w	r4, r4, #7
 800753c:	2c00      	cmp	r4, #0
 800753e:	4621      	mov	r1, r4
 8007540:	dabd      	bge.n	80074be <_realloc_r+0x2e>
 8007542:	f04f 0a00 	mov.w	sl, #0
 8007546:	230c      	movs	r3, #12
 8007548:	4650      	mov	r0, sl
 800754a:	f8c8 3000 	str.w	r3, [r8]
 800754e:	b003      	add	sp, #12
 8007550:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007554:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8007558:	eba7 0b03 	sub.w	fp, r7, r3
 800755c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007560:	f022 0203 	bic.w	r2, r2, #3
 8007564:	18b3      	adds	r3, r6, r2
 8007566:	428b      	cmp	r3, r1
 8007568:	dbbf      	blt.n	80074ea <_realloc_r+0x5a>
 800756a:	46da      	mov	sl, fp
 800756c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8007570:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8007574:	1f32      	subs	r2, r6, #4
 8007576:	2a24      	cmp	r2, #36	; 0x24
 8007578:	60c1      	str	r1, [r0, #12]
 800757a:	eb0b 0903 	add.w	r9, fp, r3
 800757e:	6088      	str	r0, [r1, #8]
 8007580:	f200 80c6 	bhi.w	8007710 <_realloc_r+0x280>
 8007584:	2a13      	cmp	r2, #19
 8007586:	6829      	ldr	r1, [r5, #0]
 8007588:	f240 80c0 	bls.w	800770c <_realloc_r+0x27c>
 800758c:	f8cb 1008 	str.w	r1, [fp, #8]
 8007590:	6869      	ldr	r1, [r5, #4]
 8007592:	f8cb 100c 	str.w	r1, [fp, #12]
 8007596:	2a1b      	cmp	r2, #27
 8007598:	68a9      	ldr	r1, [r5, #8]
 800759a:	f200 80d8 	bhi.w	800774e <_realloc_r+0x2be>
 800759e:	f10b 0210 	add.w	r2, fp, #16
 80075a2:	3508      	adds	r5, #8
 80075a4:	6011      	str	r1, [r2, #0]
 80075a6:	6869      	ldr	r1, [r5, #4]
 80075a8:	6051      	str	r1, [r2, #4]
 80075aa:	68a9      	ldr	r1, [r5, #8]
 80075ac:	6091      	str	r1, [r2, #8]
 80075ae:	461e      	mov	r6, r3
 80075b0:	465f      	mov	r7, fp
 80075b2:	4655      	mov	r5, sl
 80075b4:	687b      	ldr	r3, [r7, #4]
 80075b6:	1b32      	subs	r2, r6, r4
 80075b8:	2a0f      	cmp	r2, #15
 80075ba:	f003 0301 	and.w	r3, r3, #1
 80075be:	d822      	bhi.n	8007606 <_realloc_r+0x176>
 80075c0:	4333      	orrs	r3, r6
 80075c2:	607b      	str	r3, [r7, #4]
 80075c4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80075c8:	f043 0301 	orr.w	r3, r3, #1
 80075cc:	f8c9 3004 	str.w	r3, [r9, #4]
 80075d0:	4640      	mov	r0, r8
 80075d2:	f7ff fc4d 	bl	8006e70 <__malloc_unlock>
 80075d6:	46aa      	mov	sl, r5
 80075d8:	4650      	mov	r0, sl
 80075da:	b003      	add	sp, #12
 80075dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80075e0:	4611      	mov	r1, r2
 80075e2:	b003      	add	sp, #12
 80075e4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80075e8:	f7ff b934 	b.w	8006854 <_malloc_r>
 80075ec:	f020 0003 	bic.w	r0, r0, #3
 80075f0:	1833      	adds	r3, r6, r0
 80075f2:	428b      	cmp	r3, r1
 80075f4:	db61      	blt.n	80076ba <_realloc_r+0x22a>
 80075f6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80075fa:	461e      	mov	r6, r3
 80075fc:	60ca      	str	r2, [r1, #12]
 80075fe:	eb07 0903 	add.w	r9, r7, r3
 8007602:	6091      	str	r1, [r2, #8]
 8007604:	e7d6      	b.n	80075b4 <_realloc_r+0x124>
 8007606:	1939      	adds	r1, r7, r4
 8007608:	4323      	orrs	r3, r4
 800760a:	f042 0201 	orr.w	r2, r2, #1
 800760e:	607b      	str	r3, [r7, #4]
 8007610:	604a      	str	r2, [r1, #4]
 8007612:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8007616:	f043 0301 	orr.w	r3, r3, #1
 800761a:	3108      	adds	r1, #8
 800761c:	f8c9 3004 	str.w	r3, [r9, #4]
 8007620:	4640      	mov	r0, r8
 8007622:	f7fe fded 	bl	8006200 <_free_r>
 8007626:	e7d3      	b.n	80075d0 <_realloc_r+0x140>
 8007628:	6840      	ldr	r0, [r0, #4]
 800762a:	f020 0903 	bic.w	r9, r0, #3
 800762e:	44b1      	add	r9, r6
 8007630:	f104 0010 	add.w	r0, r4, #16
 8007634:	4581      	cmp	r9, r0
 8007636:	da77      	bge.n	8007728 <_realloc_r+0x298>
 8007638:	07d2      	lsls	r2, r2, #31
 800763a:	f53f af56 	bmi.w	80074ea <_realloc_r+0x5a>
 800763e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8007642:	eba7 0b02 	sub.w	fp, r7, r2
 8007646:	f8db 2004 	ldr.w	r2, [fp, #4]
 800764a:	f022 0203 	bic.w	r2, r2, #3
 800764e:	4491      	add	r9, r2
 8007650:	4548      	cmp	r0, r9
 8007652:	dc87      	bgt.n	8007564 <_realloc_r+0xd4>
 8007654:	46da      	mov	sl, fp
 8007656:	f8db 100c 	ldr.w	r1, [fp, #12]
 800765a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800765e:	1f32      	subs	r2, r6, #4
 8007660:	2a24      	cmp	r2, #36	; 0x24
 8007662:	60c1      	str	r1, [r0, #12]
 8007664:	6088      	str	r0, [r1, #8]
 8007666:	f200 80a1 	bhi.w	80077ac <_realloc_r+0x31c>
 800766a:	2a13      	cmp	r2, #19
 800766c:	6829      	ldr	r1, [r5, #0]
 800766e:	f240 809b 	bls.w	80077a8 <_realloc_r+0x318>
 8007672:	f8cb 1008 	str.w	r1, [fp, #8]
 8007676:	6869      	ldr	r1, [r5, #4]
 8007678:	f8cb 100c 	str.w	r1, [fp, #12]
 800767c:	2a1b      	cmp	r2, #27
 800767e:	68a9      	ldr	r1, [r5, #8]
 8007680:	f200 809b 	bhi.w	80077ba <_realloc_r+0x32a>
 8007684:	f10b 0210 	add.w	r2, fp, #16
 8007688:	3508      	adds	r5, #8
 800768a:	6011      	str	r1, [r2, #0]
 800768c:	6869      	ldr	r1, [r5, #4]
 800768e:	6051      	str	r1, [r2, #4]
 8007690:	68a9      	ldr	r1, [r5, #8]
 8007692:	6091      	str	r1, [r2, #8]
 8007694:	eb0b 0104 	add.w	r1, fp, r4
 8007698:	eba9 0204 	sub.w	r2, r9, r4
 800769c:	f042 0201 	orr.w	r2, r2, #1
 80076a0:	6099      	str	r1, [r3, #8]
 80076a2:	604a      	str	r2, [r1, #4]
 80076a4:	f8db 3004 	ldr.w	r3, [fp, #4]
 80076a8:	f003 0301 	and.w	r3, r3, #1
 80076ac:	431c      	orrs	r4, r3
 80076ae:	4640      	mov	r0, r8
 80076b0:	f8cb 4004 	str.w	r4, [fp, #4]
 80076b4:	f7ff fbdc 	bl	8006e70 <__malloc_unlock>
 80076b8:	e78e      	b.n	80075d8 <_realloc_r+0x148>
 80076ba:	07d3      	lsls	r3, r2, #31
 80076bc:	f53f af15 	bmi.w	80074ea <_realloc_r+0x5a>
 80076c0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80076c4:	eba7 0b03 	sub.w	fp, r7, r3
 80076c8:	f8db 2004 	ldr.w	r2, [fp, #4]
 80076cc:	f022 0203 	bic.w	r2, r2, #3
 80076d0:	4410      	add	r0, r2
 80076d2:	1983      	adds	r3, r0, r6
 80076d4:	428b      	cmp	r3, r1
 80076d6:	f6ff af45 	blt.w	8007564 <_realloc_r+0xd4>
 80076da:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80076de:	46da      	mov	sl, fp
 80076e0:	60ca      	str	r2, [r1, #12]
 80076e2:	6091      	str	r1, [r2, #8]
 80076e4:	e742      	b.n	800756c <_realloc_r+0xdc>
 80076e6:	6001      	str	r1, [r0, #0]
 80076e8:	686b      	ldr	r3, [r5, #4]
 80076ea:	6043      	str	r3, [r0, #4]
 80076ec:	2a1b      	cmp	r2, #27
 80076ee:	d83a      	bhi.n	8007766 <_realloc_r+0x2d6>
 80076f0:	f105 0208 	add.w	r2, r5, #8
 80076f4:	f100 0308 	add.w	r3, r0, #8
 80076f8:	68a9      	ldr	r1, [r5, #8]
 80076fa:	e710      	b.n	800751e <_realloc_r+0x8e>
 80076fc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8007700:	f023 0303 	bic.w	r3, r3, #3
 8007704:	441e      	add	r6, r3
 8007706:	eb07 0906 	add.w	r9, r7, r6
 800770a:	e753      	b.n	80075b4 <_realloc_r+0x124>
 800770c:	4652      	mov	r2, sl
 800770e:	e749      	b.n	80075a4 <_realloc_r+0x114>
 8007710:	4629      	mov	r1, r5
 8007712:	4650      	mov	r0, sl
 8007714:	461e      	mov	r6, r3
 8007716:	465f      	mov	r7, fp
 8007718:	f7ff fb40 	bl	8006d9c <memmove>
 800771c:	4655      	mov	r5, sl
 800771e:	e749      	b.n	80075b4 <_realloc_r+0x124>
 8007720:	4629      	mov	r1, r5
 8007722:	f7ff fb3b 	bl	8006d9c <memmove>
 8007726:	e6ff      	b.n	8007528 <_realloc_r+0x98>
 8007728:	4427      	add	r7, r4
 800772a:	eba9 0904 	sub.w	r9, r9, r4
 800772e:	f049 0201 	orr.w	r2, r9, #1
 8007732:	609f      	str	r7, [r3, #8]
 8007734:	607a      	str	r2, [r7, #4]
 8007736:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800773a:	f003 0301 	and.w	r3, r3, #1
 800773e:	431c      	orrs	r4, r3
 8007740:	4640      	mov	r0, r8
 8007742:	f845 4c04 	str.w	r4, [r5, #-4]
 8007746:	f7ff fb93 	bl	8006e70 <__malloc_unlock>
 800774a:	46aa      	mov	sl, r5
 800774c:	e744      	b.n	80075d8 <_realloc_r+0x148>
 800774e:	f8cb 1010 	str.w	r1, [fp, #16]
 8007752:	68e9      	ldr	r1, [r5, #12]
 8007754:	f8cb 1014 	str.w	r1, [fp, #20]
 8007758:	2a24      	cmp	r2, #36	; 0x24
 800775a:	d010      	beq.n	800777e <_realloc_r+0x2ee>
 800775c:	6929      	ldr	r1, [r5, #16]
 800775e:	f10b 0218 	add.w	r2, fp, #24
 8007762:	3510      	adds	r5, #16
 8007764:	e71e      	b.n	80075a4 <_realloc_r+0x114>
 8007766:	68ab      	ldr	r3, [r5, #8]
 8007768:	6083      	str	r3, [r0, #8]
 800776a:	68eb      	ldr	r3, [r5, #12]
 800776c:	60c3      	str	r3, [r0, #12]
 800776e:	2a24      	cmp	r2, #36	; 0x24
 8007770:	d010      	beq.n	8007794 <_realloc_r+0x304>
 8007772:	f105 0210 	add.w	r2, r5, #16
 8007776:	f100 0310 	add.w	r3, r0, #16
 800777a:	6929      	ldr	r1, [r5, #16]
 800777c:	e6cf      	b.n	800751e <_realloc_r+0x8e>
 800777e:	692a      	ldr	r2, [r5, #16]
 8007780:	f8cb 2018 	str.w	r2, [fp, #24]
 8007784:	696a      	ldr	r2, [r5, #20]
 8007786:	f8cb 201c 	str.w	r2, [fp, #28]
 800778a:	69a9      	ldr	r1, [r5, #24]
 800778c:	f10b 0220 	add.w	r2, fp, #32
 8007790:	3518      	adds	r5, #24
 8007792:	e707      	b.n	80075a4 <_realloc_r+0x114>
 8007794:	692b      	ldr	r3, [r5, #16]
 8007796:	6103      	str	r3, [r0, #16]
 8007798:	696b      	ldr	r3, [r5, #20]
 800779a:	6143      	str	r3, [r0, #20]
 800779c:	69a9      	ldr	r1, [r5, #24]
 800779e:	f105 0218 	add.w	r2, r5, #24
 80077a2:	f100 0318 	add.w	r3, r0, #24
 80077a6:	e6ba      	b.n	800751e <_realloc_r+0x8e>
 80077a8:	4652      	mov	r2, sl
 80077aa:	e76e      	b.n	800768a <_realloc_r+0x1fa>
 80077ac:	4629      	mov	r1, r5
 80077ae:	4650      	mov	r0, sl
 80077b0:	9301      	str	r3, [sp, #4]
 80077b2:	f7ff faf3 	bl	8006d9c <memmove>
 80077b6:	9b01      	ldr	r3, [sp, #4]
 80077b8:	e76c      	b.n	8007694 <_realloc_r+0x204>
 80077ba:	f8cb 1010 	str.w	r1, [fp, #16]
 80077be:	68e9      	ldr	r1, [r5, #12]
 80077c0:	f8cb 1014 	str.w	r1, [fp, #20]
 80077c4:	2a24      	cmp	r2, #36	; 0x24
 80077c6:	d004      	beq.n	80077d2 <_realloc_r+0x342>
 80077c8:	6929      	ldr	r1, [r5, #16]
 80077ca:	f10b 0218 	add.w	r2, fp, #24
 80077ce:	3510      	adds	r5, #16
 80077d0:	e75b      	b.n	800768a <_realloc_r+0x1fa>
 80077d2:	692a      	ldr	r2, [r5, #16]
 80077d4:	f8cb 2018 	str.w	r2, [fp, #24]
 80077d8:	696a      	ldr	r2, [r5, #20]
 80077da:	f8cb 201c 	str.w	r2, [fp, #28]
 80077de:	69a9      	ldr	r1, [r5, #24]
 80077e0:	f10b 0220 	add.w	r2, fp, #32
 80077e4:	3518      	adds	r5, #24
 80077e6:	e750      	b.n	800768a <_realloc_r+0x1fa>
 80077e8:	2000044c 	.word	0x2000044c

080077ec <frexp>:
 80077ec:	ec53 2b10 	vmov	r2, r3, d0
 80077f0:	b570      	push	{r4, r5, r6, lr}
 80077f2:	4e16      	ldr	r6, [pc, #88]	; (800784c <frexp+0x60>)
 80077f4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80077f8:	2500      	movs	r5, #0
 80077fa:	42b1      	cmp	r1, r6
 80077fc:	4604      	mov	r4, r0
 80077fe:	6005      	str	r5, [r0, #0]
 8007800:	dc21      	bgt.n	8007846 <frexp+0x5a>
 8007802:	ee10 6a10 	vmov	r6, s0
 8007806:	430e      	orrs	r6, r1
 8007808:	d01d      	beq.n	8007846 <frexp+0x5a>
 800780a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800780e:	4618      	mov	r0, r3
 8007810:	da0c      	bge.n	800782c <frexp+0x40>
 8007812:	4619      	mov	r1, r3
 8007814:	2200      	movs	r2, #0
 8007816:	ee10 0a10 	vmov	r0, s0
 800781a:	4b0d      	ldr	r3, [pc, #52]	; (8007850 <frexp+0x64>)
 800781c:	f7f9 f98c 	bl	8000b38 <__aeabi_dmul>
 8007820:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8007824:	4602      	mov	r2, r0
 8007826:	4608      	mov	r0, r1
 8007828:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800782c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8007830:	1509      	asrs	r1, r1, #20
 8007832:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8007836:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800783a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800783e:	4429      	add	r1, r5
 8007840:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8007844:	6021      	str	r1, [r4, #0]
 8007846:	ec43 2b10 	vmov	d0, r2, r3
 800784a:	bd70      	pop	{r4, r5, r6, pc}
 800784c:	7fefffff 	.word	0x7fefffff
 8007850:	43500000 	.word	0x43500000

08007854 <_sbrk_r>:
 8007854:	b538      	push	{r3, r4, r5, lr}
 8007856:	4c07      	ldr	r4, [pc, #28]	; (8007874 <_sbrk_r+0x20>)
 8007858:	2300      	movs	r3, #0
 800785a:	4605      	mov	r5, r0
 800785c:	4608      	mov	r0, r1
 800785e:	6023      	str	r3, [r4, #0]
 8007860:	f7fb fc32 	bl	80030c8 <_sbrk>
 8007864:	1c43      	adds	r3, r0, #1
 8007866:	d000      	beq.n	800786a <_sbrk_r+0x16>
 8007868:	bd38      	pop	{r3, r4, r5, pc}
 800786a:	6823      	ldr	r3, [r4, #0]
 800786c:	2b00      	cmp	r3, #0
 800786e:	d0fb      	beq.n	8007868 <_sbrk_r+0x14>
 8007870:	602b      	str	r3, [r5, #0]
 8007872:	bd38      	pop	{r3, r4, r5, pc}
 8007874:	20000b9c 	.word	0x20000b9c

08007878 <__sread>:
 8007878:	b510      	push	{r4, lr}
 800787a:	460c      	mov	r4, r1
 800787c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007880:	f000 fabc 	bl	8007dfc <_read_r>
 8007884:	2800      	cmp	r0, #0
 8007886:	db03      	blt.n	8007890 <__sread+0x18>
 8007888:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800788a:	4403      	add	r3, r0
 800788c:	6523      	str	r3, [r4, #80]	; 0x50
 800788e:	bd10      	pop	{r4, pc}
 8007890:	89a3      	ldrh	r3, [r4, #12]
 8007892:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8007896:	81a3      	strh	r3, [r4, #12]
 8007898:	bd10      	pop	{r4, pc}
 800789a:	bf00      	nop

0800789c <__swrite>:
 800789c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80078a0:	4616      	mov	r6, r2
 80078a2:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80078a6:	461f      	mov	r7, r3
 80078a8:	05d3      	lsls	r3, r2, #23
 80078aa:	460c      	mov	r4, r1
 80078ac:	4605      	mov	r5, r0
 80078ae:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80078b2:	d507      	bpl.n	80078c4 <__swrite+0x28>
 80078b4:	2200      	movs	r2, #0
 80078b6:	2302      	movs	r3, #2
 80078b8:	f000 fa74 	bl	8007da4 <_lseek_r>
 80078bc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80078c0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80078c4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80078c8:	81a2      	strh	r2, [r4, #12]
 80078ca:	463b      	mov	r3, r7
 80078cc:	4632      	mov	r2, r6
 80078ce:	4628      	mov	r0, r5
 80078d0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80078d4:	f000 b88c 	b.w	80079f0 <_write_r>

080078d8 <__sseek>:
 80078d8:	b510      	push	{r4, lr}
 80078da:	460c      	mov	r4, r1
 80078dc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80078e0:	f000 fa60 	bl	8007da4 <_lseek_r>
 80078e4:	89a3      	ldrh	r3, [r4, #12]
 80078e6:	1c42      	adds	r2, r0, #1
 80078e8:	bf0e      	itee	eq
 80078ea:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80078ee:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80078f2:	6520      	strne	r0, [r4, #80]	; 0x50
 80078f4:	81a3      	strh	r3, [r4, #12]
 80078f6:	bd10      	pop	{r4, pc}

080078f8 <__sclose>:
 80078f8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80078fc:	f000 b922 	b.w	8007b44 <_close_r>

08007900 <strncpy>:
 8007900:	ea40 0301 	orr.w	r3, r0, r1
 8007904:	079b      	lsls	r3, r3, #30
 8007906:	b470      	push	{r4, r5, r6}
 8007908:	d12a      	bne.n	8007960 <strncpy+0x60>
 800790a:	2a03      	cmp	r2, #3
 800790c:	d928      	bls.n	8007960 <strncpy+0x60>
 800790e:	460c      	mov	r4, r1
 8007910:	4603      	mov	r3, r0
 8007912:	4621      	mov	r1, r4
 8007914:	f854 6b04 	ldr.w	r6, [r4], #4
 8007918:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800791c:	ea25 0506 	bic.w	r5, r5, r6
 8007920:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8007924:	d106      	bne.n	8007934 <strncpy+0x34>
 8007926:	3a04      	subs	r2, #4
 8007928:	2a03      	cmp	r2, #3
 800792a:	f843 6b04 	str.w	r6, [r3], #4
 800792e:	4621      	mov	r1, r4
 8007930:	d8ef      	bhi.n	8007912 <strncpy+0x12>
 8007932:	b19a      	cbz	r2, 800795c <strncpy+0x5c>
 8007934:	780c      	ldrb	r4, [r1, #0]
 8007936:	701c      	strb	r4, [r3, #0]
 8007938:	3a01      	subs	r2, #1
 800793a:	3301      	adds	r3, #1
 800793c:	b13c      	cbz	r4, 800794e <strncpy+0x4e>
 800793e:	b16a      	cbz	r2, 800795c <strncpy+0x5c>
 8007940:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8007944:	f803 4b01 	strb.w	r4, [r3], #1
 8007948:	3a01      	subs	r2, #1
 800794a:	2c00      	cmp	r4, #0
 800794c:	d1f7      	bne.n	800793e <strncpy+0x3e>
 800794e:	b12a      	cbz	r2, 800795c <strncpy+0x5c>
 8007950:	441a      	add	r2, r3
 8007952:	2100      	movs	r1, #0
 8007954:	f803 1b01 	strb.w	r1, [r3], #1
 8007958:	4293      	cmp	r3, r2
 800795a:	d1fb      	bne.n	8007954 <strncpy+0x54>
 800795c:	bc70      	pop	{r4, r5, r6}
 800795e:	4770      	bx	lr
 8007960:	4603      	mov	r3, r0
 8007962:	e7e6      	b.n	8007932 <strncpy+0x32>

08007964 <__sprint_r.part.0>:
 8007964:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007968:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800796a:	049c      	lsls	r4, r3, #18
 800796c:	4692      	mov	sl, r2
 800796e:	d52d      	bpl.n	80079cc <__sprint_r.part.0+0x68>
 8007970:	6893      	ldr	r3, [r2, #8]
 8007972:	6812      	ldr	r2, [r2, #0]
 8007974:	b343      	cbz	r3, 80079c8 <__sprint_r.part.0+0x64>
 8007976:	460e      	mov	r6, r1
 8007978:	4607      	mov	r7, r0
 800797a:	f102 0908 	add.w	r9, r2, #8
 800797e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8007982:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8007986:	d015      	beq.n	80079b4 <__sprint_r.part.0+0x50>
 8007988:	3d04      	subs	r5, #4
 800798a:	2400      	movs	r4, #0
 800798c:	e001      	b.n	8007992 <__sprint_r.part.0+0x2e>
 800798e:	45a0      	cmp	r8, r4
 8007990:	d00e      	beq.n	80079b0 <__sprint_r.part.0+0x4c>
 8007992:	4632      	mov	r2, r6
 8007994:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007998:	4638      	mov	r0, r7
 800799a:	f000 f99d 	bl	8007cd8 <_fputwc_r>
 800799e:	1c43      	adds	r3, r0, #1
 80079a0:	f104 0401 	add.w	r4, r4, #1
 80079a4:	d1f3      	bne.n	800798e <__sprint_r.part.0+0x2a>
 80079a6:	2300      	movs	r3, #0
 80079a8:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80079ac:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80079b0:	f8da 3008 	ldr.w	r3, [sl, #8]
 80079b4:	f02b 0b03 	bic.w	fp, fp, #3
 80079b8:	eba3 030b 	sub.w	r3, r3, fp
 80079bc:	f8ca 3008 	str.w	r3, [sl, #8]
 80079c0:	f109 0908 	add.w	r9, r9, #8
 80079c4:	2b00      	cmp	r3, #0
 80079c6:	d1da      	bne.n	800797e <__sprint_r.part.0+0x1a>
 80079c8:	2000      	movs	r0, #0
 80079ca:	e7ec      	b.n	80079a6 <__sprint_r.part.0+0x42>
 80079cc:	f7fe fd0c 	bl	80063e8 <__sfvwrite_r>
 80079d0:	2300      	movs	r3, #0
 80079d2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80079d6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80079da:	bf00      	nop

080079dc <__sprint_r>:
 80079dc:	6893      	ldr	r3, [r2, #8]
 80079de:	b10b      	cbz	r3, 80079e4 <__sprint_r+0x8>
 80079e0:	f7ff bfc0 	b.w	8007964 <__sprint_r.part.0>
 80079e4:	b410      	push	{r4}
 80079e6:	4618      	mov	r0, r3
 80079e8:	6053      	str	r3, [r2, #4]
 80079ea:	f85d 4b04 	ldr.w	r4, [sp], #4
 80079ee:	4770      	bx	lr

080079f0 <_write_r>:
 80079f0:	b570      	push	{r4, r5, r6, lr}
 80079f2:	460d      	mov	r5, r1
 80079f4:	4c08      	ldr	r4, [pc, #32]	; (8007a18 <_write_r+0x28>)
 80079f6:	4611      	mov	r1, r2
 80079f8:	4606      	mov	r6, r0
 80079fa:	461a      	mov	r2, r3
 80079fc:	4628      	mov	r0, r5
 80079fe:	2300      	movs	r3, #0
 8007a00:	6023      	str	r3, [r4, #0]
 8007a02:	f7fb fb4e 	bl	80030a2 <_write>
 8007a06:	1c43      	adds	r3, r0, #1
 8007a08:	d000      	beq.n	8007a0c <_write_r+0x1c>
 8007a0a:	bd70      	pop	{r4, r5, r6, pc}
 8007a0c:	6823      	ldr	r3, [r4, #0]
 8007a0e:	2b00      	cmp	r3, #0
 8007a10:	d0fb      	beq.n	8007a0a <_write_r+0x1a>
 8007a12:	6033      	str	r3, [r6, #0]
 8007a14:	bd70      	pop	{r4, r5, r6, pc}
 8007a16:	bf00      	nop
 8007a18:	20000b9c 	.word	0x20000b9c

08007a1c <__register_exitproc>:
 8007a1c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007a20:	4d2b      	ldr	r5, [pc, #172]	; (8007ad0 <__register_exitproc+0xb4>)
 8007a22:	4606      	mov	r6, r0
 8007a24:	6828      	ldr	r0, [r5, #0]
 8007a26:	4698      	mov	r8, r3
 8007a28:	460f      	mov	r7, r1
 8007a2a:	4691      	mov	r9, r2
 8007a2c:	f7fe fe96 	bl	800675c <__retarget_lock_acquire_recursive>
 8007a30:	4b28      	ldr	r3, [pc, #160]	; (8007ad4 <__register_exitproc+0xb8>)
 8007a32:	681c      	ldr	r4, [r3, #0]
 8007a34:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007a38:	2b00      	cmp	r3, #0
 8007a3a:	d03d      	beq.n	8007ab8 <__register_exitproc+0x9c>
 8007a3c:	685a      	ldr	r2, [r3, #4]
 8007a3e:	2a1f      	cmp	r2, #31
 8007a40:	dc0d      	bgt.n	8007a5e <__register_exitproc+0x42>
 8007a42:	f102 0c01 	add.w	ip, r2, #1
 8007a46:	bb16      	cbnz	r6, 8007a8e <__register_exitproc+0x72>
 8007a48:	3202      	adds	r2, #2
 8007a4a:	f8c3 c004 	str.w	ip, [r3, #4]
 8007a4e:	6828      	ldr	r0, [r5, #0]
 8007a50:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8007a54:	f7fe fe84 	bl	8006760 <__retarget_lock_release_recursive>
 8007a58:	2000      	movs	r0, #0
 8007a5a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007a5e:	4b1e      	ldr	r3, [pc, #120]	; (8007ad8 <__register_exitproc+0xbc>)
 8007a60:	b37b      	cbz	r3, 8007ac2 <__register_exitproc+0xa6>
 8007a62:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8007a66:	f3af 8000 	nop.w
 8007a6a:	4603      	mov	r3, r0
 8007a6c:	b348      	cbz	r0, 8007ac2 <__register_exitproc+0xa6>
 8007a6e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8007a72:	2100      	movs	r1, #0
 8007a74:	e9c0 2100 	strd	r2, r1, [r0]
 8007a78:	f04f 0c01 	mov.w	ip, #1
 8007a7c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007a80:	460a      	mov	r2, r1
 8007a82:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8007a86:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8007a8a:	2e00      	cmp	r6, #0
 8007a8c:	d0dc      	beq.n	8007a48 <__register_exitproc+0x2c>
 8007a8e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8007a92:	2401      	movs	r4, #1
 8007a94:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007a98:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8007a9c:	4094      	lsls	r4, r2
 8007a9e:	4320      	orrs	r0, r4
 8007aa0:	2e02      	cmp	r6, #2
 8007aa2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8007aa6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8007aaa:	d1cd      	bne.n	8007a48 <__register_exitproc+0x2c>
 8007aac:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007ab0:	430c      	orrs	r4, r1
 8007ab2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8007ab6:	e7c7      	b.n	8007a48 <__register_exitproc+0x2c>
 8007ab8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8007abc:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8007ac0:	e7bc      	b.n	8007a3c <__register_exitproc+0x20>
 8007ac2:	6828      	ldr	r0, [r5, #0]
 8007ac4:	f7fe fe4c 	bl	8006760 <__retarget_lock_release_recursive>
 8007ac8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007acc:	e7c5      	b.n	8007a5a <__register_exitproc+0x3e>
 8007ace:	bf00      	nop
 8007ad0:	20000448 	.word	0x20000448
 8007ad4:	08008c74 	.word	0x08008c74
 8007ad8:	00000000 	.word	0x00000000

08007adc <_calloc_r>:
 8007adc:	b510      	push	{r4, lr}
 8007ade:	fb02 f101 	mul.w	r1, r2, r1
 8007ae2:	f7fe feb7 	bl	8006854 <_malloc_r>
 8007ae6:	4604      	mov	r4, r0
 8007ae8:	b1d8      	cbz	r0, 8007b22 <_calloc_r+0x46>
 8007aea:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8007aee:	f022 0203 	bic.w	r2, r2, #3
 8007af2:	3a04      	subs	r2, #4
 8007af4:	2a24      	cmp	r2, #36	; 0x24
 8007af6:	d81d      	bhi.n	8007b34 <_calloc_r+0x58>
 8007af8:	2a13      	cmp	r2, #19
 8007afa:	d914      	bls.n	8007b26 <_calloc_r+0x4a>
 8007afc:	2300      	movs	r3, #0
 8007afe:	2a1b      	cmp	r2, #27
 8007b00:	e9c0 3300 	strd	r3, r3, [r0]
 8007b04:	d91b      	bls.n	8007b3e <_calloc_r+0x62>
 8007b06:	2a24      	cmp	r2, #36	; 0x24
 8007b08:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8007b0c:	bf0a      	itet	eq
 8007b0e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8007b12:	f100 0210 	addne.w	r2, r0, #16
 8007b16:	f100 0218 	addeq.w	r2, r0, #24
 8007b1a:	2300      	movs	r3, #0
 8007b1c:	e9c2 3300 	strd	r3, r3, [r2]
 8007b20:	6093      	str	r3, [r2, #8]
 8007b22:	4620      	mov	r0, r4
 8007b24:	bd10      	pop	{r4, pc}
 8007b26:	4602      	mov	r2, r0
 8007b28:	2300      	movs	r3, #0
 8007b2a:	e9c2 3300 	strd	r3, r3, [r2]
 8007b2e:	6093      	str	r3, [r2, #8]
 8007b30:	4620      	mov	r0, r4
 8007b32:	bd10      	pop	{r4, pc}
 8007b34:	2100      	movs	r1, #0
 8007b36:	f7fb fb6d 	bl	8003214 <memset>
 8007b3a:	4620      	mov	r0, r4
 8007b3c:	bd10      	pop	{r4, pc}
 8007b3e:	f100 0208 	add.w	r2, r0, #8
 8007b42:	e7f1      	b.n	8007b28 <_calloc_r+0x4c>

08007b44 <_close_r>:
 8007b44:	b538      	push	{r3, r4, r5, lr}
 8007b46:	4c07      	ldr	r4, [pc, #28]	; (8007b64 <_close_r+0x20>)
 8007b48:	2300      	movs	r3, #0
 8007b4a:	4605      	mov	r5, r0
 8007b4c:	4608      	mov	r0, r1
 8007b4e:	6023      	str	r3, [r4, #0]
 8007b50:	f7fb fad6 	bl	8003100 <_close>
 8007b54:	1c43      	adds	r3, r0, #1
 8007b56:	d000      	beq.n	8007b5a <_close_r+0x16>
 8007b58:	bd38      	pop	{r3, r4, r5, pc}
 8007b5a:	6823      	ldr	r3, [r4, #0]
 8007b5c:	2b00      	cmp	r3, #0
 8007b5e:	d0fb      	beq.n	8007b58 <_close_r+0x14>
 8007b60:	602b      	str	r3, [r5, #0]
 8007b62:	bd38      	pop	{r3, r4, r5, pc}
 8007b64:	20000b9c 	.word	0x20000b9c

08007b68 <_fclose_r>:
 8007b68:	b570      	push	{r4, r5, r6, lr}
 8007b6a:	2900      	cmp	r1, #0
 8007b6c:	d048      	beq.n	8007c00 <_fclose_r+0x98>
 8007b6e:	4605      	mov	r5, r0
 8007b70:	460c      	mov	r4, r1
 8007b72:	b110      	cbz	r0, 8007b7a <_fclose_r+0x12>
 8007b74:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007b76:	2b00      	cmp	r3, #0
 8007b78:	d048      	beq.n	8007c0c <_fclose_r+0xa4>
 8007b7a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007b7c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007b80:	07d0      	lsls	r0, r2, #31
 8007b82:	d440      	bmi.n	8007c06 <_fclose_r+0x9e>
 8007b84:	0599      	lsls	r1, r3, #22
 8007b86:	d530      	bpl.n	8007bea <_fclose_r+0x82>
 8007b88:	4621      	mov	r1, r4
 8007b8a:	4628      	mov	r0, r5
 8007b8c:	f7fe f990 	bl	8005eb0 <__sflush_r>
 8007b90:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8007b92:	4606      	mov	r6, r0
 8007b94:	b133      	cbz	r3, 8007ba4 <_fclose_r+0x3c>
 8007b96:	69e1      	ldr	r1, [r4, #28]
 8007b98:	4628      	mov	r0, r5
 8007b9a:	4798      	blx	r3
 8007b9c:	2800      	cmp	r0, #0
 8007b9e:	bfb8      	it	lt
 8007ba0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8007ba4:	89a3      	ldrh	r3, [r4, #12]
 8007ba6:	061a      	lsls	r2, r3, #24
 8007ba8:	d43c      	bmi.n	8007c24 <_fclose_r+0xbc>
 8007baa:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007bac:	b141      	cbz	r1, 8007bc0 <_fclose_r+0x58>
 8007bae:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8007bb2:	4299      	cmp	r1, r3
 8007bb4:	d002      	beq.n	8007bbc <_fclose_r+0x54>
 8007bb6:	4628      	mov	r0, r5
 8007bb8:	f7fe fb22 	bl	8006200 <_free_r>
 8007bbc:	2300      	movs	r3, #0
 8007bbe:	6323      	str	r3, [r4, #48]	; 0x30
 8007bc0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8007bc2:	b121      	cbz	r1, 8007bce <_fclose_r+0x66>
 8007bc4:	4628      	mov	r0, r5
 8007bc6:	f7fe fb1b 	bl	8006200 <_free_r>
 8007bca:	2300      	movs	r3, #0
 8007bcc:	6463      	str	r3, [r4, #68]	; 0x44
 8007bce:	f7fe faa1 	bl	8006114 <__sfp_lock_acquire>
 8007bd2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007bd4:	2200      	movs	r2, #0
 8007bd6:	07db      	lsls	r3, r3, #31
 8007bd8:	81a2      	strh	r2, [r4, #12]
 8007bda:	d51f      	bpl.n	8007c1c <_fclose_r+0xb4>
 8007bdc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007bde:	f7fe fdbb 	bl	8006758 <__retarget_lock_close_recursive>
 8007be2:	f7fe fa9d 	bl	8006120 <__sfp_lock_release>
 8007be6:	4630      	mov	r0, r6
 8007be8:	bd70      	pop	{r4, r5, r6, pc}
 8007bea:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007bec:	f7fe fdb6 	bl	800675c <__retarget_lock_acquire_recursive>
 8007bf0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007bf4:	2b00      	cmp	r3, #0
 8007bf6:	d1c7      	bne.n	8007b88 <_fclose_r+0x20>
 8007bf8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007bfa:	f016 0601 	ands.w	r6, r6, #1
 8007bfe:	d016      	beq.n	8007c2e <_fclose_r+0xc6>
 8007c00:	2600      	movs	r6, #0
 8007c02:	4630      	mov	r0, r6
 8007c04:	bd70      	pop	{r4, r5, r6, pc}
 8007c06:	2b00      	cmp	r3, #0
 8007c08:	d0fa      	beq.n	8007c00 <_fclose_r+0x98>
 8007c0a:	e7bd      	b.n	8007b88 <_fclose_r+0x20>
 8007c0c:	f7fe fa56 	bl	80060bc <__sinit>
 8007c10:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007c12:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007c16:	07d0      	lsls	r0, r2, #31
 8007c18:	d4f5      	bmi.n	8007c06 <_fclose_r+0x9e>
 8007c1a:	e7b3      	b.n	8007b84 <_fclose_r+0x1c>
 8007c1c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007c1e:	f7fe fd9f 	bl	8006760 <__retarget_lock_release_recursive>
 8007c22:	e7db      	b.n	8007bdc <_fclose_r+0x74>
 8007c24:	6921      	ldr	r1, [r4, #16]
 8007c26:	4628      	mov	r0, r5
 8007c28:	f7fe faea 	bl	8006200 <_free_r>
 8007c2c:	e7bd      	b.n	8007baa <_fclose_r+0x42>
 8007c2e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007c30:	f7fe fd96 	bl	8006760 <__retarget_lock_release_recursive>
 8007c34:	4630      	mov	r0, r6
 8007c36:	bd70      	pop	{r4, r5, r6, pc}

08007c38 <__fputwc>:
 8007c38:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007c3c:	b082      	sub	sp, #8
 8007c3e:	4681      	mov	r9, r0
 8007c40:	4688      	mov	r8, r1
 8007c42:	4614      	mov	r4, r2
 8007c44:	f000 f8a0 	bl	8007d88 <__locale_mb_cur_max>
 8007c48:	2801      	cmp	r0, #1
 8007c4a:	d103      	bne.n	8007c54 <__fputwc+0x1c>
 8007c4c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007c50:	2bfe      	cmp	r3, #254	; 0xfe
 8007c52:	d933      	bls.n	8007cbc <__fputwc+0x84>
 8007c54:	4642      	mov	r2, r8
 8007c56:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007c5a:	a901      	add	r1, sp, #4
 8007c5c:	4648      	mov	r0, r9
 8007c5e:	f000 f93b 	bl	8007ed8 <_wcrtomb_r>
 8007c62:	1c42      	adds	r2, r0, #1
 8007c64:	4606      	mov	r6, r0
 8007c66:	d02f      	beq.n	8007cc8 <__fputwc+0x90>
 8007c68:	b320      	cbz	r0, 8007cb4 <__fputwc+0x7c>
 8007c6a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007c6e:	2500      	movs	r5, #0
 8007c70:	f10d 0a04 	add.w	sl, sp, #4
 8007c74:	e009      	b.n	8007c8a <__fputwc+0x52>
 8007c76:	6823      	ldr	r3, [r4, #0]
 8007c78:	1c5a      	adds	r2, r3, #1
 8007c7a:	6022      	str	r2, [r4, #0]
 8007c7c:	f883 c000 	strb.w	ip, [r3]
 8007c80:	3501      	adds	r5, #1
 8007c82:	42b5      	cmp	r5, r6
 8007c84:	d216      	bcs.n	8007cb4 <__fputwc+0x7c>
 8007c86:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007c8a:	68a3      	ldr	r3, [r4, #8]
 8007c8c:	3b01      	subs	r3, #1
 8007c8e:	2b00      	cmp	r3, #0
 8007c90:	60a3      	str	r3, [r4, #8]
 8007c92:	daf0      	bge.n	8007c76 <__fputwc+0x3e>
 8007c94:	69a7      	ldr	r7, [r4, #24]
 8007c96:	42bb      	cmp	r3, r7
 8007c98:	4661      	mov	r1, ip
 8007c9a:	4622      	mov	r2, r4
 8007c9c:	4648      	mov	r0, r9
 8007c9e:	db02      	blt.n	8007ca6 <__fputwc+0x6e>
 8007ca0:	f1bc 0f0a 	cmp.w	ip, #10
 8007ca4:	d1e7      	bne.n	8007c76 <__fputwc+0x3e>
 8007ca6:	f000 f8bf 	bl	8007e28 <__swbuf_r>
 8007caa:	1c43      	adds	r3, r0, #1
 8007cac:	d1e8      	bne.n	8007c80 <__fputwc+0x48>
 8007cae:	b002      	add	sp, #8
 8007cb0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007cb4:	4640      	mov	r0, r8
 8007cb6:	b002      	add	sp, #8
 8007cb8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007cbc:	fa5f fc88 	uxtb.w	ip, r8
 8007cc0:	4606      	mov	r6, r0
 8007cc2:	f88d c004 	strb.w	ip, [sp, #4]
 8007cc6:	e7d2      	b.n	8007c6e <__fputwc+0x36>
 8007cc8:	89a3      	ldrh	r3, [r4, #12]
 8007cca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007cce:	81a3      	strh	r3, [r4, #12]
 8007cd0:	b002      	add	sp, #8
 8007cd2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007cd6:	bf00      	nop

08007cd8 <_fputwc_r>:
 8007cd8:	b530      	push	{r4, r5, lr}
 8007cda:	4605      	mov	r5, r0
 8007cdc:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007cde:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8007ce2:	07c0      	lsls	r0, r0, #31
 8007ce4:	4614      	mov	r4, r2
 8007ce6:	b083      	sub	sp, #12
 8007ce8:	b29a      	uxth	r2, r3
 8007cea:	d401      	bmi.n	8007cf0 <_fputwc_r+0x18>
 8007cec:	0590      	lsls	r0, r2, #22
 8007cee:	d51c      	bpl.n	8007d2a <_fputwc_r+0x52>
 8007cf0:	0490      	lsls	r0, r2, #18
 8007cf2:	d406      	bmi.n	8007d02 <_fputwc_r+0x2a>
 8007cf4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007cf6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007cfa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007cfe:	81a3      	strh	r3, [r4, #12]
 8007d00:	6662      	str	r2, [r4, #100]	; 0x64
 8007d02:	4628      	mov	r0, r5
 8007d04:	4622      	mov	r2, r4
 8007d06:	f7ff ff97 	bl	8007c38 <__fputwc>
 8007d0a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007d0c:	07da      	lsls	r2, r3, #31
 8007d0e:	4605      	mov	r5, r0
 8007d10:	d402      	bmi.n	8007d18 <_fputwc_r+0x40>
 8007d12:	89a3      	ldrh	r3, [r4, #12]
 8007d14:	059b      	lsls	r3, r3, #22
 8007d16:	d502      	bpl.n	8007d1e <_fputwc_r+0x46>
 8007d18:	4628      	mov	r0, r5
 8007d1a:	b003      	add	sp, #12
 8007d1c:	bd30      	pop	{r4, r5, pc}
 8007d1e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007d20:	f7fe fd1e 	bl	8006760 <__retarget_lock_release_recursive>
 8007d24:	4628      	mov	r0, r5
 8007d26:	b003      	add	sp, #12
 8007d28:	bd30      	pop	{r4, r5, pc}
 8007d2a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007d2c:	9101      	str	r1, [sp, #4]
 8007d2e:	f7fe fd15 	bl	800675c <__retarget_lock_acquire_recursive>
 8007d32:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007d36:	9901      	ldr	r1, [sp, #4]
 8007d38:	b29a      	uxth	r2, r3
 8007d3a:	e7d9      	b.n	8007cf0 <_fputwc_r+0x18>

08007d3c <_fstat_r>:
 8007d3c:	b538      	push	{r3, r4, r5, lr}
 8007d3e:	460b      	mov	r3, r1
 8007d40:	4c07      	ldr	r4, [pc, #28]	; (8007d60 <_fstat_r+0x24>)
 8007d42:	4605      	mov	r5, r0
 8007d44:	4611      	mov	r1, r2
 8007d46:	4618      	mov	r0, r3
 8007d48:	2300      	movs	r3, #0
 8007d4a:	6023      	str	r3, [r4, #0]
 8007d4c:	f7fb f9db 	bl	8003106 <_fstat>
 8007d50:	1c43      	adds	r3, r0, #1
 8007d52:	d000      	beq.n	8007d56 <_fstat_r+0x1a>
 8007d54:	bd38      	pop	{r3, r4, r5, pc}
 8007d56:	6823      	ldr	r3, [r4, #0]
 8007d58:	2b00      	cmp	r3, #0
 8007d5a:	d0fb      	beq.n	8007d54 <_fstat_r+0x18>
 8007d5c:	602b      	str	r3, [r5, #0]
 8007d5e:	bd38      	pop	{r3, r4, r5, pc}
 8007d60:	20000b9c 	.word	0x20000b9c

08007d64 <_isatty_r>:
 8007d64:	b538      	push	{r3, r4, r5, lr}
 8007d66:	4c07      	ldr	r4, [pc, #28]	; (8007d84 <_isatty_r+0x20>)
 8007d68:	2300      	movs	r3, #0
 8007d6a:	4605      	mov	r5, r0
 8007d6c:	4608      	mov	r0, r1
 8007d6e:	6023      	str	r3, [r4, #0]
 8007d70:	f7fb f9ce 	bl	8003110 <_isatty>
 8007d74:	1c43      	adds	r3, r0, #1
 8007d76:	d000      	beq.n	8007d7a <_isatty_r+0x16>
 8007d78:	bd38      	pop	{r3, r4, r5, pc}
 8007d7a:	6823      	ldr	r3, [r4, #0]
 8007d7c:	2b00      	cmp	r3, #0
 8007d7e:	d0fb      	beq.n	8007d78 <_isatty_r+0x14>
 8007d80:	602b      	str	r3, [r5, #0]
 8007d82:	bd38      	pop	{r3, r4, r5, pc}
 8007d84:	20000b9c 	.word	0x20000b9c

08007d88 <__locale_mb_cur_max>:
 8007d88:	4b04      	ldr	r3, [pc, #16]	; (8007d9c <__locale_mb_cur_max+0x14>)
 8007d8a:	4a05      	ldr	r2, [pc, #20]	; (8007da0 <__locale_mb_cur_max+0x18>)
 8007d8c:	681b      	ldr	r3, [r3, #0]
 8007d8e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007d90:	2b00      	cmp	r3, #0
 8007d92:	bf08      	it	eq
 8007d94:	4613      	moveq	r3, r2
 8007d96:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007d9a:	4770      	bx	lr
 8007d9c:	20000018 	.word	0x20000018
 8007da0:	2000085c 	.word	0x2000085c

08007da4 <_lseek_r>:
 8007da4:	b570      	push	{r4, r5, r6, lr}
 8007da6:	460d      	mov	r5, r1
 8007da8:	4c08      	ldr	r4, [pc, #32]	; (8007dcc <_lseek_r+0x28>)
 8007daa:	4611      	mov	r1, r2
 8007dac:	4606      	mov	r6, r0
 8007dae:	461a      	mov	r2, r3
 8007db0:	4628      	mov	r0, r5
 8007db2:	2300      	movs	r3, #0
 8007db4:	6023      	str	r3, [r4, #0]
 8007db6:	f7fb f9ad 	bl	8003114 <_lseek>
 8007dba:	1c43      	adds	r3, r0, #1
 8007dbc:	d000      	beq.n	8007dc0 <_lseek_r+0x1c>
 8007dbe:	bd70      	pop	{r4, r5, r6, pc}
 8007dc0:	6823      	ldr	r3, [r4, #0]
 8007dc2:	2b00      	cmp	r3, #0
 8007dc4:	d0fb      	beq.n	8007dbe <_lseek_r+0x1a>
 8007dc6:	6033      	str	r3, [r6, #0]
 8007dc8:	bd70      	pop	{r4, r5, r6, pc}
 8007dca:	bf00      	nop
 8007dcc:	20000b9c 	.word	0x20000b9c

08007dd0 <__ascii_mbtowc>:
 8007dd0:	b082      	sub	sp, #8
 8007dd2:	b149      	cbz	r1, 8007de8 <__ascii_mbtowc+0x18>
 8007dd4:	b15a      	cbz	r2, 8007dee <__ascii_mbtowc+0x1e>
 8007dd6:	b16b      	cbz	r3, 8007df4 <__ascii_mbtowc+0x24>
 8007dd8:	7813      	ldrb	r3, [r2, #0]
 8007dda:	600b      	str	r3, [r1, #0]
 8007ddc:	7812      	ldrb	r2, [r2, #0]
 8007dde:	1c10      	adds	r0, r2, #0
 8007de0:	bf18      	it	ne
 8007de2:	2001      	movne	r0, #1
 8007de4:	b002      	add	sp, #8
 8007de6:	4770      	bx	lr
 8007de8:	a901      	add	r1, sp, #4
 8007dea:	2a00      	cmp	r2, #0
 8007dec:	d1f3      	bne.n	8007dd6 <__ascii_mbtowc+0x6>
 8007dee:	4610      	mov	r0, r2
 8007df0:	b002      	add	sp, #8
 8007df2:	4770      	bx	lr
 8007df4:	f06f 0001 	mvn.w	r0, #1
 8007df8:	e7f4      	b.n	8007de4 <__ascii_mbtowc+0x14>
 8007dfa:	bf00      	nop

08007dfc <_read_r>:
 8007dfc:	b570      	push	{r4, r5, r6, lr}
 8007dfe:	460d      	mov	r5, r1
 8007e00:	4c08      	ldr	r4, [pc, #32]	; (8007e24 <_read_r+0x28>)
 8007e02:	4611      	mov	r1, r2
 8007e04:	4606      	mov	r6, r0
 8007e06:	461a      	mov	r2, r3
 8007e08:	4628      	mov	r0, r5
 8007e0a:	2300      	movs	r3, #0
 8007e0c:	6023      	str	r3, [r4, #0]
 8007e0e:	f7fb f935 	bl	800307c <_read>
 8007e12:	1c43      	adds	r3, r0, #1
 8007e14:	d000      	beq.n	8007e18 <_read_r+0x1c>
 8007e16:	bd70      	pop	{r4, r5, r6, pc}
 8007e18:	6823      	ldr	r3, [r4, #0]
 8007e1a:	2b00      	cmp	r3, #0
 8007e1c:	d0fb      	beq.n	8007e16 <_read_r+0x1a>
 8007e1e:	6033      	str	r3, [r6, #0]
 8007e20:	bd70      	pop	{r4, r5, r6, pc}
 8007e22:	bf00      	nop
 8007e24:	20000b9c 	.word	0x20000b9c

08007e28 <__swbuf_r>:
 8007e28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007e2a:	460d      	mov	r5, r1
 8007e2c:	4614      	mov	r4, r2
 8007e2e:	4606      	mov	r6, r0
 8007e30:	b110      	cbz	r0, 8007e38 <__swbuf_r+0x10>
 8007e32:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007e34:	2b00      	cmp	r3, #0
 8007e36:	d043      	beq.n	8007ec0 <__swbuf_r+0x98>
 8007e38:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007e3c:	69a3      	ldr	r3, [r4, #24]
 8007e3e:	60a3      	str	r3, [r4, #8]
 8007e40:	b291      	uxth	r1, r2
 8007e42:	0708      	lsls	r0, r1, #28
 8007e44:	d51b      	bpl.n	8007e7e <__swbuf_r+0x56>
 8007e46:	6923      	ldr	r3, [r4, #16]
 8007e48:	b1cb      	cbz	r3, 8007e7e <__swbuf_r+0x56>
 8007e4a:	b2ed      	uxtb	r5, r5
 8007e4c:	0489      	lsls	r1, r1, #18
 8007e4e:	462f      	mov	r7, r5
 8007e50:	d522      	bpl.n	8007e98 <__swbuf_r+0x70>
 8007e52:	6822      	ldr	r2, [r4, #0]
 8007e54:	6961      	ldr	r1, [r4, #20]
 8007e56:	1ad3      	subs	r3, r2, r3
 8007e58:	4299      	cmp	r1, r3
 8007e5a:	dd29      	ble.n	8007eb0 <__swbuf_r+0x88>
 8007e5c:	3301      	adds	r3, #1
 8007e5e:	68a1      	ldr	r1, [r4, #8]
 8007e60:	1c50      	adds	r0, r2, #1
 8007e62:	3901      	subs	r1, #1
 8007e64:	60a1      	str	r1, [r4, #8]
 8007e66:	6020      	str	r0, [r4, #0]
 8007e68:	7015      	strb	r5, [r2, #0]
 8007e6a:	6962      	ldr	r2, [r4, #20]
 8007e6c:	429a      	cmp	r2, r3
 8007e6e:	d02a      	beq.n	8007ec6 <__swbuf_r+0x9e>
 8007e70:	89a3      	ldrh	r3, [r4, #12]
 8007e72:	07db      	lsls	r3, r3, #31
 8007e74:	d501      	bpl.n	8007e7a <__swbuf_r+0x52>
 8007e76:	2d0a      	cmp	r5, #10
 8007e78:	d025      	beq.n	8007ec6 <__swbuf_r+0x9e>
 8007e7a:	4638      	mov	r0, r7
 8007e7c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007e7e:	4621      	mov	r1, r4
 8007e80:	4630      	mov	r0, r6
 8007e82:	f7fc fffd 	bl	8004e80 <__swsetup_r>
 8007e86:	bb20      	cbnz	r0, 8007ed2 <__swbuf_r+0xaa>
 8007e88:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007e8c:	6923      	ldr	r3, [r4, #16]
 8007e8e:	b291      	uxth	r1, r2
 8007e90:	b2ed      	uxtb	r5, r5
 8007e92:	0489      	lsls	r1, r1, #18
 8007e94:	462f      	mov	r7, r5
 8007e96:	d4dc      	bmi.n	8007e52 <__swbuf_r+0x2a>
 8007e98:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007e9a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007e9e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007ea2:	81a2      	strh	r2, [r4, #12]
 8007ea4:	6822      	ldr	r2, [r4, #0]
 8007ea6:	6661      	str	r1, [r4, #100]	; 0x64
 8007ea8:	6961      	ldr	r1, [r4, #20]
 8007eaa:	1ad3      	subs	r3, r2, r3
 8007eac:	4299      	cmp	r1, r3
 8007eae:	dcd5      	bgt.n	8007e5c <__swbuf_r+0x34>
 8007eb0:	4621      	mov	r1, r4
 8007eb2:	4630      	mov	r0, r6
 8007eb4:	f7fe f8a6 	bl	8006004 <_fflush_r>
 8007eb8:	b958      	cbnz	r0, 8007ed2 <__swbuf_r+0xaa>
 8007eba:	6822      	ldr	r2, [r4, #0]
 8007ebc:	2301      	movs	r3, #1
 8007ebe:	e7ce      	b.n	8007e5e <__swbuf_r+0x36>
 8007ec0:	f7fe f8fc 	bl	80060bc <__sinit>
 8007ec4:	e7b8      	b.n	8007e38 <__swbuf_r+0x10>
 8007ec6:	4621      	mov	r1, r4
 8007ec8:	4630      	mov	r0, r6
 8007eca:	f7fe f89b 	bl	8006004 <_fflush_r>
 8007ece:	2800      	cmp	r0, #0
 8007ed0:	d0d3      	beq.n	8007e7a <__swbuf_r+0x52>
 8007ed2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8007ed6:	e7d0      	b.n	8007e7a <__swbuf_r+0x52>

08007ed8 <_wcrtomb_r>:
 8007ed8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007eda:	4c11      	ldr	r4, [pc, #68]	; (8007f20 <_wcrtomb_r+0x48>)
 8007edc:	6824      	ldr	r4, [r4, #0]
 8007ede:	b085      	sub	sp, #20
 8007ee0:	4606      	mov	r6, r0
 8007ee2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8007ee4:	461f      	mov	r7, r3
 8007ee6:	b151      	cbz	r1, 8007efe <_wcrtomb_r+0x26>
 8007ee8:	4d0e      	ldr	r5, [pc, #56]	; (8007f24 <_wcrtomb_r+0x4c>)
 8007eea:	2c00      	cmp	r4, #0
 8007eec:	bf08      	it	eq
 8007eee:	462c      	moveq	r4, r5
 8007ef0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007ef4:	47a0      	blx	r4
 8007ef6:	1c43      	adds	r3, r0, #1
 8007ef8:	d00c      	beq.n	8007f14 <_wcrtomb_r+0x3c>
 8007efa:	b005      	add	sp, #20
 8007efc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007efe:	4a09      	ldr	r2, [pc, #36]	; (8007f24 <_wcrtomb_r+0x4c>)
 8007f00:	2c00      	cmp	r4, #0
 8007f02:	bf08      	it	eq
 8007f04:	4614      	moveq	r4, r2
 8007f06:	460a      	mov	r2, r1
 8007f08:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007f0c:	a901      	add	r1, sp, #4
 8007f0e:	47a0      	blx	r4
 8007f10:	1c43      	adds	r3, r0, #1
 8007f12:	d1f2      	bne.n	8007efa <_wcrtomb_r+0x22>
 8007f14:	2200      	movs	r2, #0
 8007f16:	238a      	movs	r3, #138	; 0x8a
 8007f18:	603a      	str	r2, [r7, #0]
 8007f1a:	6033      	str	r3, [r6, #0]
 8007f1c:	b005      	add	sp, #20
 8007f1e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007f20:	20000018 	.word	0x20000018
 8007f24:	2000085c 	.word	0x2000085c

08007f28 <__ascii_wctomb>:
 8007f28:	b121      	cbz	r1, 8007f34 <__ascii_wctomb+0xc>
 8007f2a:	2aff      	cmp	r2, #255	; 0xff
 8007f2c:	d804      	bhi.n	8007f38 <__ascii_wctomb+0x10>
 8007f2e:	700a      	strb	r2, [r1, #0]
 8007f30:	2001      	movs	r0, #1
 8007f32:	4770      	bx	lr
 8007f34:	4608      	mov	r0, r1
 8007f36:	4770      	bx	lr
 8007f38:	238a      	movs	r3, #138	; 0x8a
 8007f3a:	6003      	str	r3, [r0, #0]
 8007f3c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007f40:	4770      	bx	lr
 8007f42:	bf00      	nop

08007f44 <_init>:
 8007f44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007f46:	bf00      	nop
 8007f48:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007f4a:	bc08      	pop	{r3}
 8007f4c:	469e      	mov	lr, r3
 8007f4e:	4770      	bx	lr

08007f50 <_fini>:
 8007f50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007f52:	bf00      	nop
 8007f54:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007f56:	bc08      	pop	{r3}
 8007f58:	469e      	mov	lr, r3
 8007f5a:	4770      	bx	lr
 8007f5c:	0000      	movs	r0, r0
	...
