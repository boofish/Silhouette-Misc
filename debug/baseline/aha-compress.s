
aha-compress.elf:     file format elf32-littlearm


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
 80001e0:	0800732c 	.word	0x0800732c

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
 80001fc:	0800732c 	.word	0x0800732c

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
 8001430:	f247 4238 	movw	r2, #29752	; 0x7438
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
 80014aa:	f247 4230 	movw	r2, #29744	; 0x7430
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
 80014d4:	f247 4230 	movw	r2, #29744	; 0x7430
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
 8001a82:	f247 4368 	movw	r3, #29800	; 0x7468
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
 8001aaa:	f247 4378 	movw	r3, #29816	; 0x7478
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

08002014 <compress3>:
 8002014:	b084      	sub	sp, #16
 8002016:	f84d 4e00 	strt	r4, [sp]
 800201a:	f84d 6e04 	strt	r6, [sp, #4]
 800201e:	f84d 7e08 	strt	r7, [sp, #8]
 8002022:	f84d ee0c 	strt	lr, [sp, #12]
 8002026:	af02      	add	r7, sp, #8
 8002028:	ea6f 0c01 	mvn.w	ip, r1
 800202c:	4008      	ands	r0, r1
 800202e:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8002032:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8002036:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 800203a:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 800203e:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8002042:	ea00 0243 	and.w	r2, r0, r3, lsl #1
 8002046:	ea2c 0c03 	bic.w	ip, ip, r3
 800204a:	4050      	eors	r0, r2
 800204c:	ea80 0e52 	eor.w	lr, r0, r2, lsr #1
 8002050:	ea01 0243 	and.w	r2, r1, r3, lsl #1
 8002054:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8002058:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 800205c:	4051      	eors	r1, r2
 800205e:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 8002062:	ea81 0452 	eor.w	r4, r1, r2, lsr #1
 8002066:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 800206a:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 800206e:	ea2c 0c03 	bic.w	ip, ip, r3
 8002072:	ea04 0043 	and.w	r0, r4, r3, lsl #1
 8002076:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 800207a:	ea0e 0200 	and.w	r2, lr, r0
 800207e:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8002082:	ea82 010e 	eor.w	r1, r2, lr
 8002086:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 800208a:	ea81 0192 	eor.w	r1, r1, r2, lsr #2
 800208e:	ea80 0204 	eor.w	r2, r0, r4
 8002092:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 8002096:	ea82 0090 	eor.w	r0, r2, r0, lsr #2
 800209a:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 800209e:	ea2c 0c03 	bic.w	ip, ip, r3
 80020a2:	ea00 0443 	and.w	r4, r0, r3, lsl #1
 80020a6:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 80020aa:	ea01 0204 	and.w	r2, r1, r4
 80020ae:	4060      	eors	r0, r4
 80020b0:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 80020b4:	4051      	eors	r1, r2
 80020b6:	ea80 1014 	eor.w	r0, r0, r4, lsr #4
 80020ba:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 80020be:	ea81 1112 	eor.w	r1, r1, r2, lsr #4
 80020c2:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 80020c6:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 80020ca:	ea00 0443 	and.w	r4, r0, r3, lsl #1
 80020ce:	ea01 0204 	and.w	r2, r1, r4
 80020d2:	4060      	eors	r0, r4
 80020d4:	4051      	eors	r1, r2
 80020d6:	ea80 2014 	eor.w	r0, r0, r4, lsr #8
 80020da:	ea81 2112 	eor.w	r1, r1, r2, lsr #8
 80020de:	ea2c 0203 	bic.w	r2, ip, r3
 80020e2:	ea82 0242 	eor.w	r2, r2, r2, lsl #1
 80020e6:	ea82 0282 	eor.w	r2, r2, r2, lsl #2
 80020ea:	ea82 1202 	eor.w	r2, r2, r2, lsl #4
 80020ee:	ea82 2202 	eor.w	r2, r2, r2, lsl #8
 80020f2:	ea82 4202 	eor.w	r2, r2, r2, lsl #16
 80020f6:	ea00 0042 	and.w	r0, r0, r2, lsl #1
 80020fa:	4008      	ands	r0, r1
 80020fc:	4041      	eors	r1, r0
 80020fe:	ea81 4010 	eor.w	r0, r1, r0, lsr #16
 8002102:	bdd0      	pop	{r4, r6, r7, pc}

08002104 <compress4>:
 8002104:	b084      	sub	sp, #16
 8002106:	f84d 4e00 	strt	r4, [sp]
 800210a:	f84d 6e04 	strt	r6, [sp, #4]
 800210e:	f84d 7e08 	strt	r7, [sp, #8]
 8002112:	f84d ee0c 	strt	lr, [sp, #12]
 8002116:	af02      	add	r7, sp, #8
 8002118:	f06f 0201 	mvn.w	r2, #1
 800211c:	4008      	ands	r0, r1
 800211e:	ea82 0c41 	eor.w	ip, r2, r1, lsl #1
 8002122:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 8002126:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 800212a:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 800212e:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 8002132:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8002136:	ea03 0200 	and.w	r2, r3, r0
 800213a:	ea2c 0c03 	bic.w	ip, ip, r3
 800213e:	4050      	eors	r0, r2
 8002140:	ea40 0e52 	orr.w	lr, r0, r2, lsr #1
 8002144:	ea03 0201 	and.w	r2, r3, r1
 8002148:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 800214c:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8002150:	4051      	eors	r1, r2
 8002152:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 8002156:	ea41 0452 	orr.w	r4, r1, r2, lsr #1
 800215a:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 800215e:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8002162:	ea2c 0c03 	bic.w	ip, ip, r3
 8002166:	ea03 0004 	and.w	r0, r3, r4
 800216a:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 800216e:	ea00 020e 	and.w	r2, r0, lr
 8002172:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 8002176:	ea82 010e 	eor.w	r1, r2, lr
 800217a:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 800217e:	ea41 0192 	orr.w	r1, r1, r2, lsr #2
 8002182:	ea80 0204 	eor.w	r2, r0, r4
 8002186:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 800218a:	ea42 0090 	orr.w	r0, r2, r0, lsr #2
 800218e:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 8002192:	ea2c 0c03 	bic.w	ip, ip, r3
 8002196:	ea03 0400 	and.w	r4, r3, r0
 800219a:	ea8c 034c 	eor.w	r3, ip, ip, lsl #1
 800219e:	ea04 0201 	and.w	r2, r4, r1
 80021a2:	4060      	eors	r0, r4
 80021a4:	ea83 0383 	eor.w	r3, r3, r3, lsl #2
 80021a8:	4051      	eors	r1, r2
 80021aa:	ea40 1014 	orr.w	r0, r0, r4, lsr #4
 80021ae:	ea83 1303 	eor.w	r3, r3, r3, lsl #4
 80021b2:	ea41 1112 	orr.w	r1, r1, r2, lsr #4
 80021b6:	ea83 2303 	eor.w	r3, r3, r3, lsl #8
 80021ba:	ea83 4303 	eor.w	r3, r3, r3, lsl #16
 80021be:	ea03 0400 	and.w	r4, r3, r0
 80021c2:	ea04 0201 	and.w	r2, r4, r1
 80021c6:	4060      	eors	r0, r4
 80021c8:	4051      	eors	r1, r2
 80021ca:	ea40 2014 	orr.w	r0, r0, r4, lsr #8
 80021ce:	ea41 2112 	orr.w	r1, r1, r2, lsr #8
 80021d2:	ea2c 0203 	bic.w	r2, ip, r3
 80021d6:	ea82 0242 	eor.w	r2, r2, r2, lsl #1
 80021da:	ea82 0282 	eor.w	r2, r2, r2, lsl #2
 80021de:	ea82 1202 	eor.w	r2, r2, r2, lsl #4
 80021e2:	ea82 2202 	eor.w	r2, r2, r2, lsl #8
 80021e6:	ea82 4202 	eor.w	r2, r2, r2, lsl #16
 80021ea:	4010      	ands	r0, r2
 80021ec:	4008      	ands	r0, r1
 80021ee:	4041      	eors	r1, r0
 80021f0:	ea41 4010 	orr.w	r0, r1, r0, lsr #16
 80021f4:	bdd0      	pop	{r4, r6, r7, pc}

080021f6 <initialise_benchmark>:
 80021f6:	4770      	bx	lr

080021f8 <benchmark>:
 80021f8:	b085      	sub	sp, #20
 80021fa:	f84d 4e00 	strt	r4, [sp]
 80021fe:	f84d 5e04 	strt	r5, [sp, #4]
 8002202:	f84d 6e08 	strt	r6, [sp, #8]
 8002206:	f84d 7e0c 	strt	r7, [sp, #12]
 800220a:	f84d ee10 	strt	lr, [sp, #16]
 800220e:	af03      	add	r7, sp, #12
 8002210:	b083      	sub	sp, #12
 8002212:	f84d 8e00 	strt	r8, [sp]
 8002216:	f84d 9e04 	strt	r9, [sp, #4]
 800221a:	f84d be08 	strt	fp, [sp, #8]
 800221e:	f247 3848 	movw	r8, #29512	; 0x7348
 8002222:	2000      	movs	r0, #0
 8002224:	f04f 0e00 	mov.w	lr, #0
 8002228:	f04f 0900 	mov.w	r9, #0
 800222c:	f6c0 0800 	movt	r8, #2048	; 0x800
 8002230:	eb08 0c8e 	add.w	ip, r8, lr, lsl #2
 8002234:	f8dc 5004 	ldr.w	r5, [ip, #4]
 8002238:	b18d      	cbz	r5, 800225e <benchmark+0x66>
 800223a:	f858 602e 	ldr.w	r6, [r8, lr, lsl #2]
 800223e:	2300      	movs	r3, #0
 8002240:	2201      	movs	r2, #1
 8002242:	07e9      	lsls	r1, r5, #31
 8002244:	d003      	beq.n	800224e <benchmark+0x56>
 8002246:	07f1      	lsls	r1, r6, #31
 8002248:	bf18      	it	ne
 800224a:	4313      	orrne	r3, r2
 800224c:	0052      	lsls	r2, r2, #1
 800224e:	0869      	lsrs	r1, r5, #1
 8002250:	ebb0 0f55 	cmp.w	r0, r5, lsr #1
 8002254:	ea4f 0656 	mov.w	r6, r6, lsr #1
 8002258:	460d      	mov	r5, r1
 800225a:	d1f2      	bne.n	8002242 <benchmark+0x4a>
 800225c:	e000      	b.n	8002260 <benchmark+0x68>
 800225e:	2300      	movs	r3, #0
 8002260:	f8dc 1008 	ldr.w	r1, [ip, #8]
 8002264:	f10e 0e03 	add.w	lr, lr, #3
 8002268:	428b      	cmp	r3, r1
 800226a:	bf18      	it	ne
 800226c:	f04f 0901 	movne.w	r9, #1
 8002270:	f1be 0f36 	cmp.w	lr, #54	; 0x36
 8002274:	dbdc      	blt.n	8002230 <benchmark+0x38>
 8002276:	2000      	movs	r0, #0
 8002278:	f04f 0e00 	mov.w	lr, #0
 800227c:	eb08 0c8e 	add.w	ip, r8, lr, lsl #2
 8002280:	f858 302e 	ldr.w	r3, [r8, lr, lsl #2]
 8002284:	2600      	movs	r6, #0
 8002286:	2200      	movs	r2, #0
 8002288:	f8dc 5004 	ldr.w	r5, [ip, #4]
 800228c:	f005 0401 	and.w	r4, r5, #1
 8002290:	ebb0 0f55 	cmp.w	r0, r5, lsr #1
 8002294:	eb02 0104 	add.w	r1, r2, r4
 8002298:	ea04 0403 	and.w	r4, r4, r3
 800229c:	ea4f 0353 	mov.w	r3, r3, lsr #1
 80022a0:	fa04 f202 	lsl.w	r2, r4, r2
 80022a4:	ea46 0602 	orr.w	r6, r6, r2
 80022a8:	ea4f 0255 	mov.w	r2, r5, lsr #1
 80022ac:	4615      	mov	r5, r2
 80022ae:	460a      	mov	r2, r1
 80022b0:	d1ec      	bne.n	800228c <benchmark+0x94>
 80022b2:	f8dc 1008 	ldr.w	r1, [ip, #8]
 80022b6:	f10e 0e03 	add.w	lr, lr, #3
 80022ba:	428e      	cmp	r6, r1
 80022bc:	bf18      	it	ne
 80022be:	f04f 0901 	movne.w	r9, #1
 80022c2:	f1be 0f36 	cmp.w	lr, #54	; 0x36
 80022c6:	dbd9      	blt.n	800227c <benchmark+0x84>
 80022c8:	2500      	movs	r5, #0
 80022ca:	eb08 0285 	add.w	r2, r8, r5, lsl #2
 80022ce:	f858 0025 	ldr.w	r0, [r8, r5, lsl #2]
 80022d2:	e9d2 1401 	ldrd	r1, r4, [r2, #4]
 80022d6:	f7ff fe9d 	bl	8002014 <compress3>
 80022da:	42a0      	cmp	r0, r4
 80022dc:	f105 0503 	add.w	r5, r5, #3
 80022e0:	bf18      	it	ne
 80022e2:	f04f 0901 	movne.w	r9, #1
 80022e6:	2d36      	cmp	r5, #54	; 0x36
 80022e8:	dbef      	blt.n	80022ca <benchmark+0xd2>
 80022ea:	2500      	movs	r5, #0
 80022ec:	eb08 0285 	add.w	r2, r8, r5, lsl #2
 80022f0:	f858 0025 	ldr.w	r0, [r8, r5, lsl #2]
 80022f4:	e9d2 1401 	ldrd	r1, r4, [r2, #4]
 80022f8:	f7ff ff04 	bl	8002104 <compress4>
 80022fc:	42a0      	cmp	r0, r4
 80022fe:	f105 0503 	add.w	r5, r5, #3
 8002302:	bf18      	it	ne
 8002304:	f04f 0901 	movne.w	r9, #1
 8002308:	2d36      	cmp	r5, #54	; 0x36
 800230a:	dbef      	blt.n	80022ec <benchmark+0xf4>
 800230c:	4648      	mov	r0, r9
 800230e:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002312:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002314 <verify_benchmark>:
 8002314:	2100      	movs	r1, #0
 8002316:	2800      	cmp	r0, #0
 8002318:	bf08      	it	eq
 800231a:	2101      	moveq	r1, #1
 800231c:	4608      	mov	r0, r1
 800231e:	4770      	bx	lr

08002320 <__io_putchar>:
 8002320:	b082      	sub	sp, #8
 8002322:	f84d 7e00 	strt	r7, [sp]
 8002326:	f84d ee04 	strt	lr, [sp, #4]
 800232a:	466f      	mov	r7, sp
 800232c:	b082      	sub	sp, #8
 800232e:	f84d 0e04 	strt	r0, [sp, #4]
 8002332:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002336:	a901      	add	r1, sp, #4
 8002338:	2201      	movs	r2, #1
 800233a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800233e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002342:	f7ff fd40 	bl	8001dc6 <HAL_UART_Transmit>
 8002346:	9801      	ldr	r0, [sp, #4]
 8002348:	b002      	add	sp, #8
 800234a:	bd80      	pop	{r7, pc}

0800234c <main>:
 800234c:	b084      	sub	sp, #16
 800234e:	f84d 4e00 	strt	r4, [sp]
 8002352:	f84d 5e04 	strt	r5, [sp, #4]
 8002356:	f84d 7e08 	strt	r7, [sp, #8]
 800235a:	f84d ee0c 	strt	lr, [sp, #12]
 800235e:	af02      	add	r7, sp, #8
 8002360:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002364:	f643 0000 	movw	r0, #14336	; 0x3800
 8002368:	220c      	movs	r2, #12
 800236a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800236e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002372:	f841 0e00 	strt	r0, [r1]
 8002376:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 800237a:	f841 0e04 	strt	r0, [r1, #4]
 800237e:	2000      	movs	r0, #0
 8002380:	f841 0e08 	strt	r0, [r1, #8]
 8002384:	f841 0e0c 	strt	r0, [r1, #12]
 8002388:	f841 0e10 	strt	r0, [r1, #16]
 800238c:	f841 0e24 	strt	r0, [r1, #36]
 8002390:	f841 0e1c 	strt	r0, [r1, #28]
 8002394:	f841 0e20 	strt	r0, [r1, #32]
 8002398:	f841 2e14 	strt	r2, [r1, #20]
 800239c:	f841 0e18 	strt	r0, [r1, #24]
 80023a0:	2000      	movs	r0, #0
 80023a2:	f7ff fdc3 	bl	8001f2c <BSP_COM_Init>
 80023a6:	f7ff ff26 	bl	80021f6 <initialise_benchmark>
 80023aa:	f247 4088 	movw	r0, #29832	; 0x7488
 80023ae:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023b2:	f000 f96d 	bl	8002690 <printf>
 80023b6:	f247 5037 	movw	r0, #30007	; 0x7537
 80023ba:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023be:	f000 f9c9 	bl	8002754 <puts>
 80023c2:	f7fe fe91 	bl	80010e8 <HAL_Init>
 80023c6:	f7fe fea8 	bl	800111a <HAL_GetTick>
 80023ca:	4604      	mov	r4, r0
 80023cc:	f7ff ff14 	bl	80021f8 <benchmark>
 80023d0:	4605      	mov	r5, r0
 80023d2:	f7fe fea2 	bl	800111a <HAL_GetTick>
 80023d6:	1b04      	subs	r4, r0, r4
 80023d8:	4628      	mov	r0, r5
 80023da:	f7ff ff9b 	bl	8002314 <verify_benchmark>
 80023de:	1c41      	adds	r1, r0, #1
 80023e0:	d006      	beq.n	80023f0 <main+0xa4>
 80023e2:	2801      	cmp	r0, #1
 80023e4:	d109      	bne.n	80023fa <main+0xae>
 80023e6:	f247 40a3 	movw	r0, #29859	; 0x74a3
 80023ea:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023ee:	e008      	b.n	8002402 <main+0xb6>
 80023f0:	f247 40c7 	movw	r0, #29895	; 0x74c7
 80023f4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023f8:	e003      	b.n	8002402 <main+0xb6>
 80023fa:	f247 40fc 	movw	r0, #29948	; 0x74fc
 80023fe:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002402:	4621      	mov	r1, r4
 8002404:	f000 f944 	bl	8002690 <printf>
 8002408:	2000      	movs	r0, #0
 800240a:	bdb0      	pop	{r4, r5, r7, pc}

0800240c <SysTick_Handler>:
 800240c:	b082      	sub	sp, #8
 800240e:	f84d 7e00 	strt	r7, [sp]
 8002412:	f84d ee04 	strt	lr, [sp, #4]
 8002416:	466f      	mov	r7, sp
 8002418:	f7fe fe76 	bl	8001108 <HAL_IncTick>
 800241c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002420:	f7fe bed1 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

08002424 <_read>:
 8002424:	b085      	sub	sp, #20
 8002426:	f84d 4e00 	strt	r4, [sp]
 800242a:	f84d 5e04 	strt	r5, [sp, #4]
 800242e:	f84d 6e08 	strt	r6, [sp, #8]
 8002432:	f84d 7e0c 	strt	r7, [sp, #12]
 8002436:	f84d ee10 	strt	lr, [sp, #16]
 800243a:	af03      	add	r7, sp, #12
 800243c:	b081      	sub	sp, #4
 800243e:	f84d be00 	strt	fp, [sp]
 8002442:	4614      	mov	r4, r2
 8002444:	460d      	mov	r5, r1
 8002446:	2c01      	cmp	r4, #1
 8002448:	db08      	blt.n	800245c <_read+0x38>
 800244a:	4626      	mov	r6, r4
 800244c:	f3af 8000 	nop.w
 8002450:	f805 0e00 	strbt	r0, [r5]
 8002454:	bfe8      	it	al
 8002456:	3501      	addal	r5, #1
 8002458:	3e01      	subs	r6, #1
 800245a:	d1f7      	bne.n	800244c <_read+0x28>
 800245c:	4620      	mov	r0, r4
 800245e:	f85d bb04 	ldr.w	fp, [sp], #4
 8002462:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002464 <_write>:
 8002464:	b085      	sub	sp, #20
 8002466:	f84d 4e00 	strt	r4, [sp]
 800246a:	f84d 5e04 	strt	r5, [sp, #4]
 800246e:	f84d 6e08 	strt	r6, [sp, #8]
 8002472:	f84d 7e0c 	strt	r7, [sp, #12]
 8002476:	f84d ee10 	strt	lr, [sp, #16]
 800247a:	af03      	add	r7, sp, #12
 800247c:	b081      	sub	sp, #4
 800247e:	f84d be00 	strt	fp, [sp]
 8002482:	4614      	mov	r4, r2
 8002484:	460d      	mov	r5, r1
 8002486:	2c01      	cmp	r4, #1
 8002488:	db06      	blt.n	8002498 <_write+0x34>
 800248a:	4626      	mov	r6, r4
 800248c:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002490:	f7ff ff46 	bl	8002320 <__io_putchar>
 8002494:	3e01      	subs	r6, #1
 8002496:	d1f9      	bne.n	800248c <_write+0x28>
 8002498:	4620      	mov	r0, r4
 800249a:	f85d bb04 	ldr.w	fp, [sp], #4
 800249e:	bdf0      	pop	{r4, r5, r6, r7, pc}

080024a0 <_sbrk>:
 80024a0:	f640 2268 	movw	r2, #2664	; 0xa68
 80024a4:	4601      	mov	r1, r0
 80024a6:	466b      	mov	r3, sp
 80024a8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80024ac:	6810      	ldr	r0, [r2, #0]
 80024ae:	2800      	cmp	r0, #0
 80024b0:	bf02      	ittt	eq
 80024b2:	f640 3010 	movweq	r0, #2832	; 0xb10
 80024b6:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80024ba:	f842 0e00 	strteq	r0, [r2]
 80024be:	4401      	add	r1, r0
 80024c0:	4299      	cmp	r1, r3
 80024c2:	bf9c      	itt	ls
 80024c4:	f842 1e00 	strtls	r1, [r2]
 80024c8:	4770      	bxls	lr
 80024ca:	b082      	sub	sp, #8
 80024cc:	f84d 7e00 	strt	r7, [sp]
 80024d0:	f84d ee04 	strt	lr, [sp, #4]
 80024d4:	466f      	mov	r7, sp
 80024d6:	f000 f867 	bl	80025a8 <__errno>
 80024da:	210c      	movs	r1, #12
 80024dc:	f840 1e00 	strt	r1, [r0]
 80024e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80024e4:	bd80      	pop	{r7, pc}

080024e6 <_close>:
 80024e6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80024ea:	4770      	bx	lr

080024ec <_fstat>:
 80024ec:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80024f0:	f841 0e04 	strt	r0, [r1, #4]
 80024f4:	2000      	movs	r0, #0
 80024f6:	4770      	bx	lr

080024f8 <_isatty>:
 80024f8:	2001      	movs	r0, #1
 80024fa:	4770      	bx	lr

080024fc <_lseek>:
 80024fc:	2000      	movs	r0, #0
 80024fe:	4770      	bx	lr

08002500 <SystemInit>:
 8002500:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002504:	f04f 0c00 	mov.w	ip, #0
 8002508:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800250c:	6801      	ldr	r1, [r0, #0]
 800250e:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002512:	6001      	str	r1, [r0, #0]
 8002514:	f241 0100 	movw	r1, #4096	; 0x1000
 8002518:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800251c:	680a      	ldr	r2, [r1, #0]
 800251e:	f042 0201 	orr.w	r2, r2, #1
 8002522:	600a      	str	r2, [r1, #0]
 8002524:	f8c1 c008 	str.w	ip, [r1, #8]
 8002528:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800252c:	680b      	ldr	r3, [r1, #0]
 800252e:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002532:	401a      	ands	r2, r3
 8002534:	600a      	str	r2, [r1, #0]
 8002536:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800253a:	60ca      	str	r2, [r1, #12]
 800253c:	680a      	ldr	r2, [r1, #0]
 800253e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002542:	600a      	str	r2, [r1, #0]
 8002544:	f8c1 c018 	str.w	ip, [r1, #24]
 8002548:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800254c:	f840 1c80 	str.w	r1, [r0, #-128]
 8002550:	4770      	bx	lr
	...

08002554 <Reset_Handler>:
 8002554:	f8df d034 	ldr.w	sp, [pc, #52]	; 800258c <LoopForever+0x2>
 8002558:	2100      	movs	r1, #0
 800255a:	e003      	b.n	8002564 <LoopCopyDataInit>

0800255c <CopyDataInit>:
 800255c:	4b0c      	ldr	r3, [pc, #48]	; (8002590 <LoopForever+0x6>)
 800255e:	585b      	ldr	r3, [r3, r1]
 8002560:	5043      	str	r3, [r0, r1]
 8002562:	3104      	adds	r1, #4

08002564 <LoopCopyDataInit>:
 8002564:	480b      	ldr	r0, [pc, #44]	; (8002594 <LoopForever+0xa>)
 8002566:	4b0c      	ldr	r3, [pc, #48]	; (8002598 <LoopForever+0xe>)
 8002568:	1842      	adds	r2, r0, r1
 800256a:	429a      	cmp	r2, r3
 800256c:	d3f6      	bcc.n	800255c <CopyDataInit>
 800256e:	4a0b      	ldr	r2, [pc, #44]	; (800259c <LoopForever+0x12>)
 8002570:	e002      	b.n	8002578 <LoopFillZerobss>

08002572 <FillZerobss>:
 8002572:	2300      	movs	r3, #0
 8002574:	f842 3b04 	str.w	r3, [r2], #4

08002578 <LoopFillZerobss>:
 8002578:	4b09      	ldr	r3, [pc, #36]	; (80025a0 <LoopForever+0x16>)
 800257a:	429a      	cmp	r2, r3
 800257c:	d3f9      	bcc.n	8002572 <FillZerobss>
 800257e:	f7ff ffbf 	bl	8002500 <SystemInit>
 8002582:	f000 f817 	bl	80025b4 <__libc_init_array>
 8002586:	f7ff fee1 	bl	800234c <main>

0800258a <LoopForever>:
 800258a:	e7fe      	b.n	800258a <LoopForever>
 800258c:	20018000 	.word	0x20018000
 8002590:	080077e0 	.word	0x080077e0
 8002594:	20000000 	.word	0x20000000
 8002598:	200009c8 	.word	0x200009c8
 800259c:	200009c8 	.word	0x200009c8
 80025a0:	20000b10 	.word	0x20000b10

080025a4 <ADC1_2_IRQHandler>:
 80025a4:	e7fe      	b.n	80025a4 <ADC1_2_IRQHandler>
	...

080025a8 <__errno>:
 80025a8:	4b01      	ldr	r3, [pc, #4]	; (80025b0 <__errno+0x8>)
 80025aa:	6818      	ldr	r0, [r3, #0]
 80025ac:	4770      	bx	lr
 80025ae:	bf00      	nop
 80025b0:	20000018 	.word	0x20000018

080025b4 <__libc_init_array>:
 80025b4:	b570      	push	{r4, r5, r6, lr}
 80025b6:	4e0d      	ldr	r6, [pc, #52]	; (80025ec <__libc_init_array+0x38>)
 80025b8:	4d0d      	ldr	r5, [pc, #52]	; (80025f0 <__libc_init_array+0x3c>)
 80025ba:	1b76      	subs	r6, r6, r5
 80025bc:	10b6      	asrs	r6, r6, #2
 80025be:	d006      	beq.n	80025ce <__libc_init_array+0x1a>
 80025c0:	2400      	movs	r4, #0
 80025c2:	3401      	adds	r4, #1
 80025c4:	f855 3b04 	ldr.w	r3, [r5], #4
 80025c8:	4798      	blx	r3
 80025ca:	42a6      	cmp	r6, r4
 80025cc:	d1f9      	bne.n	80025c2 <__libc_init_array+0xe>
 80025ce:	4e09      	ldr	r6, [pc, #36]	; (80025f4 <__libc_init_array+0x40>)
 80025d0:	4d09      	ldr	r5, [pc, #36]	; (80025f8 <__libc_init_array+0x44>)
 80025d2:	1b76      	subs	r6, r6, r5
 80025d4:	f004 feaa 	bl	800732c <_init>
 80025d8:	10b6      	asrs	r6, r6, #2
 80025da:	d006      	beq.n	80025ea <__libc_init_array+0x36>
 80025dc:	2400      	movs	r4, #0
 80025de:	3401      	adds	r4, #1
 80025e0:	f855 3b04 	ldr.w	r3, [r5], #4
 80025e4:	4798      	blx	r3
 80025e6:	42a6      	cmp	r6, r4
 80025e8:	d1f9      	bne.n	80025de <__libc_init_array+0x2a>
 80025ea:	bd70      	pop	{r4, r5, r6, pc}
 80025ec:	080077d0 	.word	0x080077d0
 80025f0:	080077d0 	.word	0x080077d0
 80025f4:	080077d8 	.word	0x080077d8
 80025f8:	080077d0 	.word	0x080077d0

080025fc <memset>:
 80025fc:	b4f0      	push	{r4, r5, r6, r7}
 80025fe:	0786      	lsls	r6, r0, #30
 8002600:	d043      	beq.n	800268a <memset+0x8e>
 8002602:	1e54      	subs	r4, r2, #1
 8002604:	2a00      	cmp	r2, #0
 8002606:	d03e      	beq.n	8002686 <memset+0x8a>
 8002608:	b2ca      	uxtb	r2, r1
 800260a:	4603      	mov	r3, r0
 800260c:	e002      	b.n	8002614 <memset+0x18>
 800260e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002612:	d338      	bcc.n	8002686 <memset+0x8a>
 8002614:	f803 2b01 	strb.w	r2, [r3], #1
 8002618:	079d      	lsls	r5, r3, #30
 800261a:	d1f8      	bne.n	800260e <memset+0x12>
 800261c:	2c03      	cmp	r4, #3
 800261e:	d92b      	bls.n	8002678 <memset+0x7c>
 8002620:	b2cd      	uxtb	r5, r1
 8002622:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002626:	2c0f      	cmp	r4, #15
 8002628:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800262c:	d916      	bls.n	800265c <memset+0x60>
 800262e:	f1a4 0710 	sub.w	r7, r4, #16
 8002632:	093f      	lsrs	r7, r7, #4
 8002634:	f103 0620 	add.w	r6, r3, #32
 8002638:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 800263c:	f103 0210 	add.w	r2, r3, #16
 8002640:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002644:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002648:	3210      	adds	r2, #16
 800264a:	42b2      	cmp	r2, r6
 800264c:	d1f8      	bne.n	8002640 <memset+0x44>
 800264e:	f004 040f 	and.w	r4, r4, #15
 8002652:	3701      	adds	r7, #1
 8002654:	2c03      	cmp	r4, #3
 8002656:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800265a:	d90d      	bls.n	8002678 <memset+0x7c>
 800265c:	461e      	mov	r6, r3
 800265e:	4622      	mov	r2, r4
 8002660:	3a04      	subs	r2, #4
 8002662:	2a03      	cmp	r2, #3
 8002664:	f846 5b04 	str.w	r5, [r6], #4
 8002668:	d8fa      	bhi.n	8002660 <memset+0x64>
 800266a:	1f22      	subs	r2, r4, #4
 800266c:	f022 0203 	bic.w	r2, r2, #3
 8002670:	3204      	adds	r2, #4
 8002672:	4413      	add	r3, r2
 8002674:	f004 0403 	and.w	r4, r4, #3
 8002678:	b12c      	cbz	r4, 8002686 <memset+0x8a>
 800267a:	b2c9      	uxtb	r1, r1
 800267c:	441c      	add	r4, r3
 800267e:	f803 1b01 	strb.w	r1, [r3], #1
 8002682:	429c      	cmp	r4, r3
 8002684:	d1fb      	bne.n	800267e <memset+0x82>
 8002686:	bcf0      	pop	{r4, r5, r6, r7}
 8002688:	4770      	bx	lr
 800268a:	4614      	mov	r4, r2
 800268c:	4603      	mov	r3, r0
 800268e:	e7c5      	b.n	800261c <memset+0x20>

08002690 <printf>:
 8002690:	b40f      	push	{r0, r1, r2, r3}
 8002692:	b500      	push	{lr}
 8002694:	4907      	ldr	r1, [pc, #28]	; (80026b4 <printf+0x24>)
 8002696:	b083      	sub	sp, #12
 8002698:	ab04      	add	r3, sp, #16
 800269a:	6808      	ldr	r0, [r1, #0]
 800269c:	f853 2b04 	ldr.w	r2, [r3], #4
 80026a0:	6881      	ldr	r1, [r0, #8]
 80026a2:	9301      	str	r3, [sp, #4]
 80026a4:	f000 f860 	bl	8002768 <_vfprintf_r>
 80026a8:	b003      	add	sp, #12
 80026aa:	f85d eb04 	ldr.w	lr, [sp], #4
 80026ae:	b004      	add	sp, #16
 80026b0:	4770      	bx	lr
 80026b2:	bf00      	nop
 80026b4:	20000018 	.word	0x20000018

080026b8 <_puts_r>:
 80026b8:	b570      	push	{r4, r5, r6, lr}
 80026ba:	4605      	mov	r5, r0
 80026bc:	b088      	sub	sp, #32
 80026be:	4608      	mov	r0, r1
 80026c0:	460c      	mov	r4, r1
 80026c2:	f7fd ffbd 	bl	8000640 <strlen>
 80026c6:	4a22      	ldr	r2, [pc, #136]	; (8002750 <_puts_r+0x98>)
 80026c8:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80026ca:	9404      	str	r4, [sp, #16]
 80026cc:	2601      	movs	r6, #1
 80026ce:	1c44      	adds	r4, r0, #1
 80026d0:	a904      	add	r1, sp, #16
 80026d2:	9206      	str	r2, [sp, #24]
 80026d4:	2202      	movs	r2, #2
 80026d6:	9403      	str	r4, [sp, #12]
 80026d8:	9005      	str	r0, [sp, #20]
 80026da:	68ac      	ldr	r4, [r5, #8]
 80026dc:	9607      	str	r6, [sp, #28]
 80026de:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80026e2:	b31b      	cbz	r3, 800272c <_puts_r+0x74>
 80026e4:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80026e6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80026ea:	07ce      	lsls	r6, r1, #31
 80026ec:	b29a      	uxth	r2, r3
 80026ee:	d401      	bmi.n	80026f4 <_puts_r+0x3c>
 80026f0:	0590      	lsls	r0, r2, #22
 80026f2:	d525      	bpl.n	8002740 <_puts_r+0x88>
 80026f4:	0491      	lsls	r1, r2, #18
 80026f6:	d406      	bmi.n	8002706 <_puts_r+0x4e>
 80026f8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80026fa:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80026fe:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002702:	81a3      	strh	r3, [r4, #12]
 8002704:	6662      	str	r2, [r4, #100]	; 0x64
 8002706:	4628      	mov	r0, r5
 8002708:	aa01      	add	r2, sp, #4
 800270a:	4621      	mov	r1, r4
 800270c:	f003 f860 	bl	80057d0 <__sfvwrite_r>
 8002710:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002712:	2800      	cmp	r0, #0
 8002714:	bf0c      	ite	eq
 8002716:	250a      	moveq	r5, #10
 8002718:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 800271c:	07da      	lsls	r2, r3, #31
 800271e:	d402      	bmi.n	8002726 <_puts_r+0x6e>
 8002720:	89a3      	ldrh	r3, [r4, #12]
 8002722:	059b      	lsls	r3, r3, #22
 8002724:	d506      	bpl.n	8002734 <_puts_r+0x7c>
 8002726:	4628      	mov	r0, r5
 8002728:	b008      	add	sp, #32
 800272a:	bd70      	pop	{r4, r5, r6, pc}
 800272c:	4628      	mov	r0, r5
 800272e:	f002 feb9 	bl	80054a4 <__sinit>
 8002732:	e7d7      	b.n	80026e4 <_puts_r+0x2c>
 8002734:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002736:	f003 fa07 	bl	8005b48 <__retarget_lock_release_recursive>
 800273a:	4628      	mov	r0, r5
 800273c:	b008      	add	sp, #32
 800273e:	bd70      	pop	{r4, r5, r6, pc}
 8002740:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002742:	f003 f9ff 	bl	8005b44 <__retarget_lock_acquire_recursive>
 8002746:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800274a:	b29a      	uxth	r2, r3
 800274c:	e7d2      	b.n	80026f4 <_puts_r+0x3c>
 800274e:	bf00      	nop
 8002750:	08007540 	.word	0x08007540

08002754 <puts>:
 8002754:	4b02      	ldr	r3, [pc, #8]	; (8002760 <puts+0xc>)
 8002756:	4601      	mov	r1, r0
 8002758:	6818      	ldr	r0, [r3, #0]
 800275a:	f7ff bfad 	b.w	80026b8 <_puts_r>
 800275e:	bf00      	nop
 8002760:	20000018 	.word	0x20000018
 8002764:	00000000 	.word	0x00000000

08002768 <_vfprintf_r>:
 8002768:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800276c:	b0d7      	sub	sp, #348	; 0x15c
 800276e:	461c      	mov	r4, r3
 8002770:	4689      	mov	r9, r1
 8002772:	4617      	mov	r7, r2
 8002774:	4605      	mov	r5, r0
 8002776:	9003      	str	r0, [sp, #12]
 8002778:	f003 f9d2 	bl	8005b20 <_localeconv_r>
 800277c:	6803      	ldr	r3, [r0, #0]
 800277e:	9316      	str	r3, [sp, #88]	; 0x58
 8002780:	4618      	mov	r0, r3
 8002782:	f7fd ff5d 	bl	8000640 <strlen>
 8002786:	9408      	str	r4, [sp, #32]
 8002788:	9015      	str	r0, [sp, #84]	; 0x54
 800278a:	b11d      	cbz	r5, 8002794 <_vfprintf_r+0x2c>
 800278c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800278e:	2b00      	cmp	r3, #0
 8002790:	f000 8107 	beq.w	80029a2 <_vfprintf_r+0x23a>
 8002794:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002798:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800279c:	07c8      	lsls	r0, r1, #31
 800279e:	b293      	uxth	r3, r2
 80027a0:	d402      	bmi.n	80027a8 <_vfprintf_r+0x40>
 80027a2:	0599      	lsls	r1, r3, #22
 80027a4:	f140 811f 	bpl.w	80029e6 <_vfprintf_r+0x27e>
 80027a8:	049e      	lsls	r6, r3, #18
 80027aa:	d40a      	bmi.n	80027c2 <_vfprintf_r+0x5a>
 80027ac:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80027b0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80027b4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80027b8:	f8a9 300c 	strh.w	r3, [r9, #12]
 80027bc:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80027c0:	b29b      	uxth	r3, r3
 80027c2:	071d      	lsls	r5, r3, #28
 80027c4:	f140 80b2 	bpl.w	800292c <_vfprintf_r+0x1c4>
 80027c8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80027cc:	2a00      	cmp	r2, #0
 80027ce:	f000 80ad 	beq.w	800292c <_vfprintf_r+0x1c4>
 80027d2:	f003 021a 	and.w	r2, r3, #26
 80027d6:	2a0a      	cmp	r2, #10
 80027d8:	f000 80c9 	beq.w	800296e <_vfprintf_r+0x206>
 80027dc:	2300      	movs	r3, #0
 80027de:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80029f8 <_vfprintf_r+0x290>
 80027e2:	9310      	str	r3, [sp, #64]	; 0x40
 80027e4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80027e8:	9317      	str	r3, [sp, #92]	; 0x5c
 80027ea:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80027ee:	931b      	str	r3, [sp, #108]	; 0x6c
 80027f0:	9318      	str	r3, [sp, #96]	; 0x60
 80027f2:	9305      	str	r3, [sp, #20]
 80027f4:	ab2d      	add	r3, sp, #180	; 0xb4
 80027f6:	932a      	str	r3, [sp, #168]	; 0xa8
 80027f8:	469b      	mov	fp, r3
 80027fa:	783b      	ldrb	r3, [r7, #0]
 80027fc:	f8cd 901c 	str.w	r9, [sp, #28]
 8002800:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002804:	2b00      	cmp	r3, #0
 8002806:	f000 8259 	beq.w	8002cbc <_vfprintf_r+0x554>
 800280a:	2b25      	cmp	r3, #37	; 0x25
 800280c:	463c      	mov	r4, r7
 800280e:	d102      	bne.n	8002816 <_vfprintf_r+0xae>
 8002810:	e01d      	b.n	800284e <_vfprintf_r+0xe6>
 8002812:	2b25      	cmp	r3, #37	; 0x25
 8002814:	d003      	beq.n	800281e <_vfprintf_r+0xb6>
 8002816:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800281a:	2b00      	cmp	r3, #0
 800281c:	d1f9      	bne.n	8002812 <_vfprintf_r+0xaa>
 800281e:	1be5      	subs	r5, r4, r7
 8002820:	b18d      	cbz	r5, 8002846 <_vfprintf_r+0xde>
 8002822:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002826:	3301      	adds	r3, #1
 8002828:	442a      	add	r2, r5
 800282a:	2b07      	cmp	r3, #7
 800282c:	f8cb 7000 	str.w	r7, [fp]
 8002830:	f8cb 5004 	str.w	r5, [fp, #4]
 8002834:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002838:	f300 80ca 	bgt.w	80029d0 <_vfprintf_r+0x268>
 800283c:	f10b 0b08 	add.w	fp, fp, #8
 8002840:	9b05      	ldr	r3, [sp, #20]
 8002842:	442b      	add	r3, r5
 8002844:	9305      	str	r3, [sp, #20]
 8002846:	7823      	ldrb	r3, [r4, #0]
 8002848:	2b00      	cmp	r3, #0
 800284a:	f000 8237 	beq.w	8002cbc <_vfprintf_r+0x554>
 800284e:	2300      	movs	r3, #0
 8002850:	7866      	ldrb	r6, [r4, #1]
 8002852:	9306      	str	r3, [sp, #24]
 8002854:	4698      	mov	r8, r3
 8002856:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800285a:	f104 0a01 	add.w	sl, r4, #1
 800285e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002862:	252b      	movs	r5, #43	; 0x2b
 8002864:	f10a 0a01 	add.w	sl, sl, #1
 8002868:	f1a6 0320 	sub.w	r3, r6, #32
 800286c:	2b5a      	cmp	r3, #90	; 0x5a
 800286e:	f200 842a 	bhi.w	80030c6 <_vfprintf_r+0x95e>
 8002872:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002876:	03aa      	.short	0x03aa
 8002878:	04280428 	.word	0x04280428
 800287c:	0428029c 	.word	0x0428029c
 8002880:	04280428 	.word	0x04280428
 8002884:	042802a7 	.word	0x042802a7
 8002888:	02c60428 	.word	0x02c60428
 800288c:	042802d2 	.word	0x042802d2
 8002890:	02dc02d7 	.word	0x02dc02d7
 8002894:	02f60428 	.word	0x02f60428
 8002898:	026d026d 	.word	0x026d026d
 800289c:	026d026d 	.word	0x026d026d
 80028a0:	026d026d 	.word	0x026d026d
 80028a4:	026d026d 	.word	0x026d026d
 80028a8:	0428026d 	.word	0x0428026d
 80028ac:	04280428 	.word	0x04280428
 80028b0:	04280428 	.word	0x04280428
 80028b4:	04280428 	.word	0x04280428
 80028b8:	042802fb 	.word	0x042802fb
 80028bc:	03f3033c 	.word	0x03f3033c
 80028c0:	02fb02fb 	.word	0x02fb02fb
 80028c4:	042802fb 	.word	0x042802fb
 80028c8:	04280428 	.word	0x04280428
 80028cc:	03ee0428 	.word	0x03ee0428
 80028d0:	04280428 	.word	0x04280428
 80028d4:	0428009a 	.word	0x0428009a
 80028d8:	04280428 	.word	0x04280428
 80028dc:	04280350 	.word	0x04280350
 80028e0:	04280379 	.word	0x04280379
 80028e4:	03900428 	.word	0x03900428
 80028e8:	04280428 	.word	0x04280428
 80028ec:	04280428 	.word	0x04280428
 80028f0:	04280428 	.word	0x04280428
 80028f4:	04280428 	.word	0x04280428
 80028f8:	042802fb 	.word	0x042802fb
 80028fc:	00c5033c 	.word	0x00c5033c
 8002900:	02fb02fb 	.word	0x02fb02fb
 8002904:	03d102fb 	.word	0x03d102fb
 8002908:	007000c5 	.word	0x007000c5
 800290c:	03b50428 	.word	0x03b50428
 8002910:	03c20428 	.word	0x03c20428
 8002914:	03de009c 	.word	0x03de009c
 8002918:	04280070 	.word	0x04280070
 800291c:	00720350 	.word	0x00720350
 8002920:	0428022c 	.word	0x0428022c
 8002924:	027c0428 	.word	0x027c0428
 8002928:	00720428 	.word	0x00720428
 800292c:	4649      	mov	r1, r9
 800292e:	9803      	ldr	r0, [sp, #12]
 8002930:	f001 fc9a 	bl	8004268 <__swsetup_r>
 8002934:	b1a0      	cbz	r0, 8002960 <_vfprintf_r+0x1f8>
 8002936:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800293a:	07d8      	lsls	r0, r3, #31
 800293c:	d404      	bmi.n	8002948 <_vfprintf_r+0x1e0>
 800293e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002942:	0599      	lsls	r1, r3, #22
 8002944:	f140 83b7 	bpl.w	80030b6 <_vfprintf_r+0x94e>
 8002948:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800294c:	9305      	str	r3, [sp, #20]
 800294e:	9805      	ldr	r0, [sp, #20]
 8002950:	b057      	add	sp, #348	; 0x15c
 8002952:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002956:	f048 0820 	orr.w	r8, r8, #32
 800295a:	f89a 6000 	ldrb.w	r6, [sl]
 800295e:	e781      	b.n	8002864 <_vfprintf_r+0xfc>
 8002960:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002964:	f003 021a 	and.w	r2, r3, #26
 8002968:	2a0a      	cmp	r2, #10
 800296a:	f47f af37 	bne.w	80027dc <_vfprintf_r+0x74>
 800296e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002972:	2a00      	cmp	r2, #0
 8002974:	f6ff af32 	blt.w	80027dc <_vfprintf_r+0x74>
 8002978:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800297c:	07d2      	lsls	r2, r2, #31
 800297e:	d405      	bmi.n	800298c <_vfprintf_r+0x224>
 8002980:	059b      	lsls	r3, r3, #22
 8002982:	d403      	bmi.n	800298c <_vfprintf_r+0x224>
 8002984:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002988:	f003 f8de 	bl	8005b48 <__retarget_lock_release_recursive>
 800298c:	4623      	mov	r3, r4
 800298e:	463a      	mov	r2, r7
 8002990:	4649      	mov	r1, r9
 8002992:	9803      	ldr	r0, [sp, #12]
 8002994:	f001 fc26 	bl	80041e4 <__sbprintf>
 8002998:	9005      	str	r0, [sp, #20]
 800299a:	9805      	ldr	r0, [sp, #20]
 800299c:	b057      	add	sp, #348	; 0x15c
 800299e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80029a2:	9803      	ldr	r0, [sp, #12]
 80029a4:	f002 fd7e 	bl	80054a4 <__sinit>
 80029a8:	e6f4      	b.n	8002794 <_vfprintf_r+0x2c>
 80029aa:	f048 0810 	orr.w	r8, r8, #16
 80029ae:	f018 0f20 	tst.w	r8, #32
 80029b2:	f000 836c 	beq.w	800308e <_vfprintf_r+0x926>
 80029b6:	9c08      	ldr	r4, [sp, #32]
 80029b8:	3407      	adds	r4, #7
 80029ba:	f024 0307 	bic.w	r3, r4, #7
 80029be:	e9d3 4500 	ldrd	r4, r5, [r3]
 80029c2:	f103 0208 	add.w	r2, r3, #8
 80029c6:	9208      	str	r2, [sp, #32]
 80029c8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80029cc:	2200      	movs	r2, #0
 80029ce:	e18c      	b.n	8002cea <_vfprintf_r+0x582>
 80029d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80029d2:	9907      	ldr	r1, [sp, #28]
 80029d4:	9803      	ldr	r0, [sp, #12]
 80029d6:	f004 f9f5 	bl	8006dc4 <__sprint_r>
 80029da:	2800      	cmp	r0, #0
 80029dc:	f041 8376 	bne.w	80040cc <_vfprintf_r+0x1964>
 80029e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80029e4:	e72c      	b.n	8002840 <_vfprintf_r+0xd8>
 80029e6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80029ea:	f003 f8ab 	bl	8005b44 <__retarget_lock_acquire_recursive>
 80029ee:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80029f2:	b293      	uxth	r3, r2
 80029f4:	e6d8      	b.n	80027a8 <_vfprintf_r+0x40>
 80029f6:	bf00      	nop
	...
 8002a00:	4643      	mov	r3, r8
 8002a02:	069f      	lsls	r7, r3, #26
 8002a04:	f140 832f 	bpl.w	8003066 <_vfprintf_r+0x8fe>
 8002a08:	9c08      	ldr	r4, [sp, #32]
 8002a0a:	3407      	adds	r4, #7
 8002a0c:	f024 0407 	bic.w	r4, r4, #7
 8002a10:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002a14:	f104 0208 	add.w	r2, r4, #8
 8002a18:	9208      	str	r2, [sp, #32]
 8002a1a:	4604      	mov	r4, r0
 8002a1c:	460d      	mov	r5, r1
 8002a1e:	2800      	cmp	r0, #0
 8002a20:	f171 0200 	sbcs.w	r2, r1, #0
 8002a24:	da05      	bge.n	8002a32 <_vfprintf_r+0x2ca>
 8002a26:	222d      	movs	r2, #45	; 0x2d
 8002a28:	4264      	negs	r4, r4
 8002a2a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002a2e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002a32:	aa56      	add	r2, sp, #344	; 0x158
 8002a34:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a38:	9204      	str	r2, [sp, #16]
 8002a3a:	f000 84b2 	beq.w	80033a2 <_vfprintf_r+0xc3a>
 8002a3e:	2201      	movs	r2, #1
 8002a40:	ea54 0105 	orrs.w	r1, r4, r5
 8002a44:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002a48:	f040 8159 	bne.w	8002cfe <_vfprintf_r+0x596>
 8002a4c:	f1b9 0f00 	cmp.w	r9, #0
 8002a50:	f040 8619 	bne.w	8003686 <_vfprintf_r+0xf1e>
 8002a54:	2a00      	cmp	r2, #0
 8002a56:	f040 8508 	bne.w	800346a <_vfprintf_r+0xd02>
 8002a5a:	f013 0301 	ands.w	r3, r3, #1
 8002a5e:	af56      	add	r7, sp, #344	; 0x158
 8002a60:	9309      	str	r3, [sp, #36]	; 0x24
 8002a62:	d002      	beq.n	8002a6a <_vfprintf_r+0x302>
 8002a64:	2330      	movs	r3, #48	; 0x30
 8002a66:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002a6a:	2300      	movs	r3, #0
 8002a6c:	930a      	str	r3, [sp, #40]	; 0x28
 8002a6e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002a70:	9314      	str	r3, [sp, #80]	; 0x50
 8002a72:	9311      	str	r3, [sp, #68]	; 0x44
 8002a74:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002a76:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a7a:	454b      	cmp	r3, r9
 8002a7c:	bfb8      	it	lt
 8002a7e:	464b      	movlt	r3, r9
 8002a80:	9304      	str	r3, [sp, #16]
 8002a82:	b112      	cbz	r2, 8002a8a <_vfprintf_r+0x322>
 8002a84:	9b04      	ldr	r3, [sp, #16]
 8002a86:	3301      	adds	r3, #1
 8002a88:	9304      	str	r3, [sp, #16]
 8002a8a:	f018 0302 	ands.w	r3, r8, #2
 8002a8e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002a90:	d002      	beq.n	8002a98 <_vfprintf_r+0x330>
 8002a92:	9b04      	ldr	r3, [sp, #16]
 8002a94:	3302      	adds	r3, #2
 8002a96:	9304      	str	r3, [sp, #16]
 8002a98:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002a9c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002a9e:	930e      	str	r3, [sp, #56]	; 0x38
 8002aa0:	d13f      	bne.n	8002b22 <_vfprintf_r+0x3ba>
 8002aa2:	9b06      	ldr	r3, [sp, #24]
 8002aa4:	9904      	ldr	r1, [sp, #16]
 8002aa6:	1a5d      	subs	r5, r3, r1
 8002aa8:	2d00      	cmp	r5, #0
 8002aaa:	dd3a      	ble.n	8002b22 <_vfprintf_r+0x3ba>
 8002aac:	2d10      	cmp	r5, #16
 8002aae:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ab0:	dd29      	ble.n	8002b06 <_vfprintf_r+0x39e>
 8002ab2:	4659      	mov	r1, fp
 8002ab4:	4620      	mov	r0, r4
 8002ab6:	9620      	str	r6, [sp, #128]	; 0x80
 8002ab8:	2310      	movs	r3, #16
 8002aba:	9c03      	ldr	r4, [sp, #12]
 8002abc:	9e07      	ldr	r6, [sp, #28]
 8002abe:	46bb      	mov	fp, r7
 8002ac0:	e004      	b.n	8002acc <_vfprintf_r+0x364>
 8002ac2:	3d10      	subs	r5, #16
 8002ac4:	2d10      	cmp	r5, #16
 8002ac6:	f101 0108 	add.w	r1, r1, #8
 8002aca:	dd18      	ble.n	8002afe <_vfprintf_r+0x396>
 8002acc:	3201      	adds	r2, #1
 8002ace:	4fba      	ldr	r7, [pc, #744]	; (8002db8 <_vfprintf_r+0x650>)
 8002ad0:	3010      	adds	r0, #16
 8002ad2:	2a07      	cmp	r2, #7
 8002ad4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002ad8:	e9c1 7300 	strd	r7, r3, [r1]
 8002adc:	ddf1      	ble.n	8002ac2 <_vfprintf_r+0x35a>
 8002ade:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ae0:	4631      	mov	r1, r6
 8002ae2:	4620      	mov	r0, r4
 8002ae4:	930c      	str	r3, [sp, #48]	; 0x30
 8002ae6:	f004 f96d 	bl	8006dc4 <__sprint_r>
 8002aea:	2800      	cmp	r0, #0
 8002aec:	f040 843d 	bne.w	800336a <_vfprintf_r+0xc02>
 8002af0:	3d10      	subs	r5, #16
 8002af2:	2d10      	cmp	r5, #16
 8002af4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002af8:	a92d      	add	r1, sp, #180	; 0xb4
 8002afa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002afc:	dce6      	bgt.n	8002acc <_vfprintf_r+0x364>
 8002afe:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002b00:	465f      	mov	r7, fp
 8002b02:	4604      	mov	r4, r0
 8002b04:	468b      	mov	fp, r1
 8002b06:	3201      	adds	r2, #1
 8002b08:	4bab      	ldr	r3, [pc, #684]	; (8002db8 <_vfprintf_r+0x650>)
 8002b0a:	442c      	add	r4, r5
 8002b0c:	2a07      	cmp	r2, #7
 8002b0e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b12:	e9cb 3500 	strd	r3, r5, [fp]
 8002b16:	f300 84ff 	bgt.w	8003518 <_vfprintf_r+0xdb0>
 8002b1a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b1e:	f10b 0b08 	add.w	fp, fp, #8
 8002b22:	b172      	cbz	r2, 8002b42 <_vfprintf_r+0x3da>
 8002b24:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b26:	3201      	adds	r2, #1
 8002b28:	3401      	adds	r4, #1
 8002b2a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002b2e:	2101      	movs	r1, #1
 8002b30:	2a07      	cmp	r2, #7
 8002b32:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b36:	e9cb 0100 	strd	r0, r1, [fp]
 8002b3a:	f300 8418 	bgt.w	800336e <_vfprintf_r+0xc06>
 8002b3e:	f10b 0b08 	add.w	fp, fp, #8
 8002b42:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002b44:	b16b      	cbz	r3, 8002b62 <_vfprintf_r+0x3fa>
 8002b46:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b48:	3301      	adds	r3, #1
 8002b4a:	3402      	adds	r4, #2
 8002b4c:	a923      	add	r1, sp, #140	; 0x8c
 8002b4e:	2202      	movs	r2, #2
 8002b50:	2b07      	cmp	r3, #7
 8002b52:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002b56:	e9cb 1200 	strd	r1, r2, [fp]
 8002b5a:	f300 8415 	bgt.w	8003388 <_vfprintf_r+0xc20>
 8002b5e:	f10b 0b08 	add.w	fp, fp, #8
 8002b62:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002b64:	2b80      	cmp	r3, #128	; 0x80
 8002b66:	f000 8331 	beq.w	80031cc <_vfprintf_r+0xa64>
 8002b6a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002b6c:	eba9 0503 	sub.w	r5, r9, r3
 8002b70:	2d00      	cmp	r5, #0
 8002b72:	dd37      	ble.n	8002be4 <_vfprintf_r+0x47c>
 8002b74:	2d10      	cmp	r5, #16
 8002b76:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b78:	4b90      	ldr	r3, [pc, #576]	; (8002dbc <_vfprintf_r+0x654>)
 8002b7a:	dd28      	ble.n	8002bce <_vfprintf_r+0x466>
 8002b7c:	4659      	mov	r1, fp
 8002b7e:	4620      	mov	r0, r4
 8002b80:	46bb      	mov	fp, r7
 8002b82:	f04f 0910 	mov.w	r9, #16
 8002b86:	4637      	mov	r7, r6
 8002b88:	461c      	mov	r4, r3
 8002b8a:	9e07      	ldr	r6, [sp, #28]
 8002b8c:	e004      	b.n	8002b98 <_vfprintf_r+0x430>
 8002b8e:	3d10      	subs	r5, #16
 8002b90:	2d10      	cmp	r5, #16
 8002b92:	f101 0108 	add.w	r1, r1, #8
 8002b96:	dd15      	ble.n	8002bc4 <_vfprintf_r+0x45c>
 8002b98:	3201      	adds	r2, #1
 8002b9a:	3010      	adds	r0, #16
 8002b9c:	2a07      	cmp	r2, #7
 8002b9e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002ba2:	e9c1 4900 	strd	r4, r9, [r1]
 8002ba6:	ddf2      	ble.n	8002b8e <_vfprintf_r+0x426>
 8002ba8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002baa:	4631      	mov	r1, r6
 8002bac:	9803      	ldr	r0, [sp, #12]
 8002bae:	f004 f909 	bl	8006dc4 <__sprint_r>
 8002bb2:	2800      	cmp	r0, #0
 8002bb4:	f040 83d9 	bne.w	800336a <_vfprintf_r+0xc02>
 8002bb8:	3d10      	subs	r5, #16
 8002bba:	2d10      	cmp	r5, #16
 8002bbc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002bc0:	a92d      	add	r1, sp, #180	; 0xb4
 8002bc2:	dce9      	bgt.n	8002b98 <_vfprintf_r+0x430>
 8002bc4:	463e      	mov	r6, r7
 8002bc6:	4623      	mov	r3, r4
 8002bc8:	465f      	mov	r7, fp
 8002bca:	4604      	mov	r4, r0
 8002bcc:	468b      	mov	fp, r1
 8002bce:	3201      	adds	r2, #1
 8002bd0:	442c      	add	r4, r5
 8002bd2:	2a07      	cmp	r2, #7
 8002bd4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002bd8:	e9cb 3500 	strd	r3, r5, [fp]
 8002bdc:	f300 83ef 	bgt.w	80033be <_vfprintf_r+0xc56>
 8002be0:	f10b 0b08 	add.w	fp, fp, #8
 8002be4:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002be8:	f040 8280 	bne.w	80030ec <_vfprintf_r+0x984>
 8002bec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002bee:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002bf0:	f8cb 7000 	str.w	r7, [fp]
 8002bf4:	3301      	adds	r3, #1
 8002bf6:	4414      	add	r4, r2
 8002bf8:	2b07      	cmp	r3, #7
 8002bfa:	942c      	str	r4, [sp, #176]	; 0xb0
 8002bfc:	f8cb 2004 	str.w	r2, [fp, #4]
 8002c00:	932b      	str	r3, [sp, #172]	; 0xac
 8002c02:	f300 8392 	bgt.w	800332a <_vfprintf_r+0xbc2>
 8002c06:	f10b 0b08 	add.w	fp, fp, #8
 8002c0a:	f018 0f04 	tst.w	r8, #4
 8002c0e:	d03b      	beq.n	8002c88 <_vfprintf_r+0x520>
 8002c10:	9b06      	ldr	r3, [sp, #24]
 8002c12:	9a04      	ldr	r2, [sp, #16]
 8002c14:	1a9d      	subs	r5, r3, r2
 8002c16:	2d00      	cmp	r5, #0
 8002c18:	dd36      	ble.n	8002c88 <_vfprintf_r+0x520>
 8002c1a:	2d10      	cmp	r5, #16
 8002c1c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c1e:	dd21      	ble.n	8002c64 <_vfprintf_r+0x4fc>
 8002c20:	2610      	movs	r6, #16
 8002c22:	9f03      	ldr	r7, [sp, #12]
 8002c24:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002c28:	e004      	b.n	8002c34 <_vfprintf_r+0x4cc>
 8002c2a:	3d10      	subs	r5, #16
 8002c2c:	2d10      	cmp	r5, #16
 8002c2e:	f10b 0b08 	add.w	fp, fp, #8
 8002c32:	dd17      	ble.n	8002c64 <_vfprintf_r+0x4fc>
 8002c34:	3301      	adds	r3, #1
 8002c36:	4a60      	ldr	r2, [pc, #384]	; (8002db8 <_vfprintf_r+0x650>)
 8002c38:	3410      	adds	r4, #16
 8002c3a:	2b07      	cmp	r3, #7
 8002c3c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c40:	e9cb 2600 	strd	r2, r6, [fp]
 8002c44:	ddf1      	ble.n	8002c2a <_vfprintf_r+0x4c2>
 8002c46:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c48:	4641      	mov	r1, r8
 8002c4a:	4638      	mov	r0, r7
 8002c4c:	f004 f8ba 	bl	8006dc4 <__sprint_r>
 8002c50:	2800      	cmp	r0, #0
 8002c52:	f040 856c 	bne.w	800372e <_vfprintf_r+0xfc6>
 8002c56:	3d10      	subs	r5, #16
 8002c58:	2d10      	cmp	r5, #16
 8002c5a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002c5e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c62:	dce7      	bgt.n	8002c34 <_vfprintf_r+0x4cc>
 8002c64:	3301      	adds	r3, #1
 8002c66:	4a54      	ldr	r2, [pc, #336]	; (8002db8 <_vfprintf_r+0x650>)
 8002c68:	442c      	add	r4, r5
 8002c6a:	2b07      	cmp	r3, #7
 8002c6c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c70:	e9cb 2500 	strd	r2, r5, [fp]
 8002c74:	dd08      	ble.n	8002c88 <_vfprintf_r+0x520>
 8002c76:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c78:	9907      	ldr	r1, [sp, #28]
 8002c7a:	9803      	ldr	r0, [sp, #12]
 8002c7c:	f004 f8a2 	bl	8006dc4 <__sprint_r>
 8002c80:	2800      	cmp	r0, #0
 8002c82:	f040 82e9 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8002c86:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c88:	9904      	ldr	r1, [sp, #16]
 8002c8a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002c8e:	428a      	cmp	r2, r1
 8002c90:	bfac      	ite	ge
 8002c92:	189b      	addge	r3, r3, r2
 8002c94:	185b      	addlt	r3, r3, r1
 8002c96:	9305      	str	r3, [sp, #20]
 8002c98:	2c00      	cmp	r4, #0
 8002c9a:	f040 82d5 	bne.w	8003248 <_vfprintf_r+0xae0>
 8002c9e:	2300      	movs	r3, #0
 8002ca0:	932b      	str	r3, [sp, #172]	; 0xac
 8002ca2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002ca4:	b11b      	cbz	r3, 8002cae <_vfprintf_r+0x546>
 8002ca6:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002ca8:	9803      	ldr	r0, [sp, #12]
 8002caa:	f002 fc9d 	bl	80055e8 <_free_r>
 8002cae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002cb2:	4657      	mov	r7, sl
 8002cb4:	783b      	ldrb	r3, [r7, #0]
 8002cb6:	2b00      	cmp	r3, #0
 8002cb8:	f47f ada7 	bne.w	800280a <_vfprintf_r+0xa2>
 8002cbc:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002cbe:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002cc2:	2b00      	cmp	r3, #0
 8002cc4:	f041 80e7 	bne.w	8003e96 <_vfprintf_r+0x172e>
 8002cc8:	2300      	movs	r3, #0
 8002cca:	932b      	str	r3, [sp, #172]	; 0xac
 8002ccc:	e2cb      	b.n	8003266 <_vfprintf_r+0xafe>
 8002cce:	4643      	mov	r3, r8
 8002cd0:	069a      	lsls	r2, r3, #26
 8002cd2:	f140 814e 	bpl.w	8002f72 <_vfprintf_r+0x80a>
 8002cd6:	9c08      	ldr	r4, [sp, #32]
 8002cd8:	3407      	adds	r4, #7
 8002cda:	f024 0207 	bic.w	r2, r4, #7
 8002cde:	f102 0108 	add.w	r1, r2, #8
 8002ce2:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002ce6:	9108      	str	r1, [sp, #32]
 8002ce8:	2201      	movs	r2, #1
 8002cea:	2100      	movs	r1, #0
 8002cec:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002cf0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002cf4:	a956      	add	r1, sp, #344	; 0x158
 8002cf6:	9104      	str	r1, [sp, #16]
 8002cf8:	f47f aea2 	bne.w	8002a40 <_vfprintf_r+0x2d8>
 8002cfc:	4698      	mov	r8, r3
 8002cfe:	2a01      	cmp	r2, #1
 8002d00:	f000 8350 	beq.w	80033a4 <_vfprintf_r+0xc3c>
 8002d04:	2a02      	cmp	r2, #2
 8002d06:	f000 831b 	beq.w	8003340 <_vfprintf_r+0xbd8>
 8002d0a:	a956      	add	r1, sp, #344	; 0x158
 8002d0c:	e000      	b.n	8002d10 <_vfprintf_r+0x5a8>
 8002d0e:	4639      	mov	r1, r7
 8002d10:	08e2      	lsrs	r2, r4, #3
 8002d12:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002d16:	08e8      	lsrs	r0, r5, #3
 8002d18:	f004 0307 	and.w	r3, r4, #7
 8002d1c:	4605      	mov	r5, r0
 8002d1e:	4614      	mov	r4, r2
 8002d20:	3330      	adds	r3, #48	; 0x30
 8002d22:	ea54 0205 	orrs.w	r2, r4, r5
 8002d26:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002d2a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002d2e:	d1ee      	bne.n	8002d0e <_vfprintf_r+0x5a6>
 8002d30:	f018 0f01 	tst.w	r8, #1
 8002d34:	f000 8314 	beq.w	8003360 <_vfprintf_r+0xbf8>
 8002d38:	2b30      	cmp	r3, #48	; 0x30
 8002d3a:	f000 8311 	beq.w	8003360 <_vfprintf_r+0xbf8>
 8002d3e:	9a04      	ldr	r2, [sp, #16]
 8002d40:	3902      	subs	r1, #2
 8002d42:	2330      	movs	r3, #48	; 0x30
 8002d44:	1a52      	subs	r2, r2, r1
 8002d46:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002d4a:	9209      	str	r2, [sp, #36]	; 0x24
 8002d4c:	460f      	mov	r7, r1
 8002d4e:	e68c      	b.n	8002a6a <_vfprintf_r+0x302>
 8002d50:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d54:	2200      	movs	r2, #0
 8002d56:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002d5a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002d5e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002d62:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d66:	2b09      	cmp	r3, #9
 8002d68:	d9f5      	bls.n	8002d56 <_vfprintf_r+0x5ee>
 8002d6a:	9206      	str	r2, [sp, #24]
 8002d6c:	e57c      	b.n	8002868 <_vfprintf_r+0x100>
 8002d6e:	4b14      	ldr	r3, [pc, #80]	; (8002dc0 <_vfprintf_r+0x658>)
 8002d70:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d72:	f018 0f20 	tst.w	r8, #32
 8002d76:	f000 8114 	beq.w	8002fa2 <_vfprintf_r+0x83a>
 8002d7a:	9c08      	ldr	r4, [sp, #32]
 8002d7c:	3407      	adds	r4, #7
 8002d7e:	f024 0307 	bic.w	r3, r4, #7
 8002d82:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002d86:	f103 0208 	add.w	r2, r3, #8
 8002d8a:	9208      	str	r2, [sp, #32]
 8002d8c:	f018 0f01 	tst.w	r8, #1
 8002d90:	d009      	beq.n	8002da6 <_vfprintf_r+0x63e>
 8002d92:	ea54 0305 	orrs.w	r3, r4, r5
 8002d96:	d006      	beq.n	8002da6 <_vfprintf_r+0x63e>
 8002d98:	2330      	movs	r3, #48	; 0x30
 8002d9a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002d9e:	f048 0802 	orr.w	r8, r8, #2
 8002da2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002da6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002daa:	2202      	movs	r2, #2
 8002dac:	e79d      	b.n	8002cea <_vfprintf_r+0x582>
 8002dae:	f048 0801 	orr.w	r8, r8, #1
 8002db2:	f89a 6000 	ldrb.w	r6, [sl]
 8002db6:	e555      	b.n	8002864 <_vfprintf_r+0xfc>
 8002db8:	08007588 	.word	0x08007588
 8002dbc:	08007598 	.word	0x08007598
 8002dc0:	08007554 	.word	0x08007554
 8002dc4:	9e03      	ldr	r6, [sp, #12]
 8002dc6:	4630      	mov	r0, r6
 8002dc8:	f002 feaa 	bl	8005b20 <_localeconv_r>
 8002dcc:	6843      	ldr	r3, [r0, #4]
 8002dce:	9318      	str	r3, [sp, #96]	; 0x60
 8002dd0:	4618      	mov	r0, r3
 8002dd2:	f7fd fc35 	bl	8000640 <strlen>
 8002dd6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002dd8:	4604      	mov	r4, r0
 8002dda:	4630      	mov	r0, r6
 8002ddc:	f002 fea0 	bl	8005b20 <_localeconv_r>
 8002de0:	6883      	ldr	r3, [r0, #8]
 8002de2:	931a      	str	r3, [sp, #104]	; 0x68
 8002de4:	2c00      	cmp	r4, #0
 8002de6:	f43f adb8 	beq.w	800295a <_vfprintf_r+0x1f2>
 8002dea:	f89a 6000 	ldrb.w	r6, [sl]
 8002dee:	2b00      	cmp	r3, #0
 8002df0:	f43f ad38 	beq.w	8002864 <_vfprintf_r+0xfc>
 8002df4:	781b      	ldrb	r3, [r3, #0]
 8002df6:	2b00      	cmp	r3, #0
 8002df8:	f43f ad34 	beq.w	8002864 <_vfprintf_r+0xfc>
 8002dfc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002e00:	e530      	b.n	8002864 <_vfprintf_r+0xfc>
 8002e02:	9b08      	ldr	r3, [sp, #32]
 8002e04:	f89a 6000 	ldrb.w	r6, [sl]
 8002e08:	681a      	ldr	r2, [r3, #0]
 8002e0a:	9206      	str	r2, [sp, #24]
 8002e0c:	2a00      	cmp	r2, #0
 8002e0e:	f103 0304 	add.w	r3, r3, #4
 8002e12:	f2c0 8697 	blt.w	8003b44 <_vfprintf_r+0x13dc>
 8002e16:	9308      	str	r3, [sp, #32]
 8002e18:	e524      	b.n	8002864 <_vfprintf_r+0xfc>
 8002e1a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002e1e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e22:	e51f      	b.n	8002864 <_vfprintf_r+0xfc>
 8002e24:	f89a 6000 	ldrb.w	r6, [sl]
 8002e28:	f048 0804 	orr.w	r8, r8, #4
 8002e2c:	e51a      	b.n	8002864 <_vfprintf_r+0xfc>
 8002e2e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e32:	2e2a      	cmp	r6, #42	; 0x2a
 8002e34:	f10a 0201 	add.w	r2, sl, #1
 8002e38:	f001 81b0 	beq.w	800419c <_vfprintf_r+0x1a34>
 8002e3c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e40:	2b09      	cmp	r3, #9
 8002e42:	4692      	mov	sl, r2
 8002e44:	f04f 0900 	mov.w	r9, #0
 8002e48:	f63f ad0e 	bhi.w	8002868 <_vfprintf_r+0x100>
 8002e4c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002e50:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002e54:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002e58:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e5c:	2b09      	cmp	r3, #9
 8002e5e:	d9f5      	bls.n	8002e4c <_vfprintf_r+0x6e4>
 8002e60:	e502      	b.n	8002868 <_vfprintf_r+0x100>
 8002e62:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002e66:	f89a 6000 	ldrb.w	r6, [sl]
 8002e6a:	e4fb      	b.n	8002864 <_vfprintf_r+0xfc>
 8002e6c:	9c08      	ldr	r4, [sp, #32]
 8002e6e:	3407      	adds	r4, #7
 8002e70:	f024 0407 	bic.w	r4, r4, #7
 8002e74:	ed94 7b00 	vldr	d7, [r4]
 8002e78:	ec52 1b17 	vmov	r1, r2, d7
 8002e7c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002e80:	931d      	str	r3, [sp, #116]	; 0x74
 8002e82:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002e86:	3408      	adds	r4, #8
 8002e88:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002e8c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002e90:	4bba      	ldr	r3, [pc, #744]	; (800317c <_vfprintf_r+0xa14>)
 8002e92:	9408      	str	r4, [sp, #32]
 8002e94:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002e98:	f7fe f8e8 	bl	800106c <__aeabi_dcmpun>
 8002e9c:	2800      	cmp	r0, #0
 8002e9e:	f040 846f 	bne.w	8003780 <_vfprintf_r+0x1018>
 8002ea2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002ea6:	4bb5      	ldr	r3, [pc, #724]	; (800317c <_vfprintf_r+0xa14>)
 8002ea8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002eac:	f7fe f8c0 	bl	8001030 <__aeabi_dcmple>
 8002eb0:	2800      	cmp	r0, #0
 8002eb2:	f040 8465 	bne.w	8003780 <_vfprintf_r+0x1018>
 8002eb6:	2200      	movs	r2, #0
 8002eb8:	2300      	movs	r3, #0
 8002eba:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ebe:	f7fe f8ad 	bl	800101c <__aeabi_dcmplt>
 8002ec2:	2800      	cmp	r0, #0
 8002ec4:	f040 855b 	bne.w	800397e <_vfprintf_r+0x1216>
 8002ec8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002ecc:	4fac      	ldr	r7, [pc, #688]	; (8003180 <_vfprintf_r+0xa18>)
 8002ece:	4bad      	ldr	r3, [pc, #692]	; (8003184 <_vfprintf_r+0xa1c>)
 8002ed0:	2000      	movs	r0, #0
 8002ed2:	2103      	movs	r1, #3
 8002ed4:	9104      	str	r1, [sp, #16]
 8002ed6:	900a      	str	r0, [sp, #40]	; 0x28
 8002ed8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002edc:	2e47      	cmp	r6, #71	; 0x47
 8002ede:	bfd8      	it	le
 8002ee0:	461f      	movle	r7, r3
 8002ee2:	9109      	str	r1, [sp, #36]	; 0x24
 8002ee4:	4681      	mov	r9, r0
 8002ee6:	900f      	str	r0, [sp, #60]	; 0x3c
 8002ee8:	9014      	str	r0, [sp, #80]	; 0x50
 8002eea:	9011      	str	r0, [sp, #68]	; 0x44
 8002eec:	e5c9      	b.n	8002a82 <_vfprintf_r+0x31a>
 8002eee:	9808      	ldr	r0, [sp, #32]
 8002ef0:	2300      	movs	r3, #0
 8002ef2:	6801      	ldr	r1, [r0, #0]
 8002ef4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ef8:	461a      	mov	r2, r3
 8002efa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002efe:	2301      	movs	r3, #1
 8002f00:	1d01      	adds	r1, r0, #4
 8002f02:	9304      	str	r3, [sp, #16]
 8002f04:	920a      	str	r2, [sp, #40]	; 0x28
 8002f06:	4691      	mov	r9, r2
 8002f08:	920f      	str	r2, [sp, #60]	; 0x3c
 8002f0a:	9214      	str	r2, [sp, #80]	; 0x50
 8002f0c:	9211      	str	r2, [sp, #68]	; 0x44
 8002f0e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002f12:	af3d      	add	r7, sp, #244	; 0xf4
 8002f14:	e5b9      	b.n	8002a8a <_vfprintf_r+0x322>
 8002f16:	9b08      	ldr	r3, [sp, #32]
 8002f18:	681f      	ldr	r7, [r3, #0]
 8002f1a:	2500      	movs	r5, #0
 8002f1c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002f20:	1d1c      	adds	r4, r3, #4
 8002f22:	2f00      	cmp	r7, #0
 8002f24:	f000 8639 	beq.w	8003b9a <_vfprintf_r+0x1432>
 8002f28:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002f2c:	f000 8711 	beq.w	8003d52 <_vfprintf_r+0x15ea>
 8002f30:	464a      	mov	r2, r9
 8002f32:	4629      	mov	r1, r5
 8002f34:	4638      	mov	r0, r7
 8002f36:	f7fd fbf3 	bl	8000720 <memchr>
 8002f3a:	900a      	str	r0, [sp, #40]	; 0x28
 8002f3c:	2800      	cmp	r0, #0
 8002f3e:	f000 85e7 	beq.w	8003b10 <_vfprintf_r+0x13a8>
 8002f42:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002f44:	1bdb      	subs	r3, r3, r7
 8002f46:	9309      	str	r3, [sp, #36]	; 0x24
 8002f48:	46a9      	mov	r9, r5
 8002f4a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002f4e:	9408      	str	r4, [sp, #32]
 8002f50:	9304      	str	r3, [sp, #16]
 8002f52:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002f56:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002f5a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002f5e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002f62:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002f66:	e58c      	b.n	8002a82 <_vfprintf_r+0x31a>
 8002f68:	f048 0310 	orr.w	r3, r8, #16
 8002f6c:	069a      	lsls	r2, r3, #26
 8002f6e:	f53f aeb2 	bmi.w	8002cd6 <_vfprintf_r+0x56e>
 8002f72:	9a08      	ldr	r2, [sp, #32]
 8002f74:	06df      	lsls	r7, r3, #27
 8002f76:	f102 0104 	add.w	r1, r2, #4
 8002f7a:	f100 837e 	bmi.w	800367a <_vfprintf_r+0xf12>
 8002f7e:	065d      	lsls	r5, r3, #25
 8002f80:	9a08      	ldr	r2, [sp, #32]
 8002f82:	f100 84e4 	bmi.w	800394e <_vfprintf_r+0x11e6>
 8002f86:	059c      	lsls	r4, r3, #22
 8002f88:	f140 8377 	bpl.w	800367a <_vfprintf_r+0xf12>
 8002f8c:	7814      	ldrb	r4, [r2, #0]
 8002f8e:	9108      	str	r1, [sp, #32]
 8002f90:	2500      	movs	r5, #0
 8002f92:	2201      	movs	r2, #1
 8002f94:	e6a9      	b.n	8002cea <_vfprintf_r+0x582>
 8002f96:	4b7c      	ldr	r3, [pc, #496]	; (8003188 <_vfprintf_r+0xa20>)
 8002f98:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f9a:	f018 0f20 	tst.w	r8, #32
 8002f9e:	f47f aeec 	bne.w	8002d7a <_vfprintf_r+0x612>
 8002fa2:	9a08      	ldr	r2, [sp, #32]
 8002fa4:	f018 0f10 	tst.w	r8, #16
 8002fa8:	f102 0304 	add.w	r3, r2, #4
 8002fac:	f040 8354 	bne.w	8003658 <_vfprintf_r+0xef0>
 8002fb0:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002fb4:	9a08      	ldr	r2, [sp, #32]
 8002fb6:	f040 84d0 	bne.w	800395a <_vfprintf_r+0x11f2>
 8002fba:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002fbe:	f000 834b 	beq.w	8003658 <_vfprintf_r+0xef0>
 8002fc2:	7814      	ldrb	r4, [r2, #0]
 8002fc4:	9308      	str	r3, [sp, #32]
 8002fc6:	2500      	movs	r5, #0
 8002fc8:	e6e0      	b.n	8002d8c <_vfprintf_r+0x624>
 8002fca:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002fce:	f89a 6000 	ldrb.w	r6, [sl]
 8002fd2:	2b00      	cmp	r3, #0
 8002fd4:	f47f ac46 	bne.w	8002864 <_vfprintf_r+0xfc>
 8002fd8:	2320      	movs	r3, #32
 8002fda:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002fde:	e441      	b.n	8002864 <_vfprintf_r+0xfc>
 8002fe0:	f89a 6000 	ldrb.w	r6, [sl]
 8002fe4:	2e6c      	cmp	r6, #108	; 0x6c
 8002fe6:	bf03      	ittte	eq
 8002fe8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002fec:	f048 0820 	orreq.w	r8, r8, #32
 8002ff0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002ff4:	f048 0810 	orrne.w	r8, r8, #16
 8002ff8:	e434      	b.n	8002864 <_vfprintf_r+0xfc>
 8002ffa:	9a08      	ldr	r2, [sp, #32]
 8002ffc:	f018 0f20 	tst.w	r8, #32
 8003000:	f852 3b04 	ldr.w	r3, [r2], #4
 8003004:	9208      	str	r2, [sp, #32]
 8003006:	f000 83a1 	beq.w	800374c <_vfprintf_r+0xfe4>
 800300a:	9a05      	ldr	r2, [sp, #20]
 800300c:	4610      	mov	r0, r2
 800300e:	17d1      	asrs	r1, r2, #31
 8003010:	e9c3 0100 	strd	r0, r1, [r3]
 8003014:	4657      	mov	r7, sl
 8003016:	e64d      	b.n	8002cb4 <_vfprintf_r+0x54c>
 8003018:	f89a 6000 	ldrb.w	r6, [sl]
 800301c:	2e68      	cmp	r6, #104	; 0x68
 800301e:	bf03      	ittte	eq
 8003020:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003024:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003028:	f10a 0a01 	addeq.w	sl, sl, #1
 800302c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003030:	e418      	b.n	8002864 <_vfprintf_r+0xfc>
 8003032:	9908      	ldr	r1, [sp, #32]
 8003034:	4b55      	ldr	r3, [pc, #340]	; (800318c <_vfprintf_r+0xa24>)
 8003036:	680c      	ldr	r4, [r1, #0]
 8003038:	9317      	str	r3, [sp, #92]	; 0x5c
 800303a:	f647 0230 	movw	r2, #30768	; 0x7830
 800303e:	3104      	adds	r1, #4
 8003040:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003044:	f048 0302 	orr.w	r3, r8, #2
 8003048:	9108      	str	r1, [sp, #32]
 800304a:	2500      	movs	r5, #0
 800304c:	2202      	movs	r2, #2
 800304e:	2678      	movs	r6, #120	; 0x78
 8003050:	e64b      	b.n	8002cea <_vfprintf_r+0x582>
 8003052:	f048 0808 	orr.w	r8, r8, #8
 8003056:	f89a 6000 	ldrb.w	r6, [sl]
 800305a:	e403      	b.n	8002864 <_vfprintf_r+0xfc>
 800305c:	f048 0310 	orr.w	r3, r8, #16
 8003060:	069f      	lsls	r7, r3, #26
 8003062:	f53f acd1 	bmi.w	8002a08 <_vfprintf_r+0x2a0>
 8003066:	9908      	ldr	r1, [sp, #32]
 8003068:	06dd      	lsls	r5, r3, #27
 800306a:	f101 0204 	add.w	r2, r1, #4
 800306e:	f100 82fd 	bmi.w	800366c <_vfprintf_r+0xf04>
 8003072:	065c      	lsls	r4, r3, #25
 8003074:	9908      	ldr	r1, [sp, #32]
 8003076:	f100 8475 	bmi.w	8003964 <_vfprintf_r+0x11fc>
 800307a:	0598      	lsls	r0, r3, #22
 800307c:	f140 82f6 	bpl.w	800366c <_vfprintf_r+0xf04>
 8003080:	f991 4000 	ldrsb.w	r4, [r1]
 8003084:	9208      	str	r2, [sp, #32]
 8003086:	17e5      	asrs	r5, r4, #31
 8003088:	4620      	mov	r0, r4
 800308a:	4629      	mov	r1, r5
 800308c:	e4c7      	b.n	8002a1e <_vfprintf_r+0x2b6>
 800308e:	9a08      	ldr	r2, [sp, #32]
 8003090:	f018 0f10 	tst.w	r8, #16
 8003094:	f102 0304 	add.w	r3, r2, #4
 8003098:	f040 82e3 	bne.w	8003662 <_vfprintf_r+0xefa>
 800309c:	f018 0f40 	tst.w	r8, #64	; 0x40
 80030a0:	9a08      	ldr	r2, [sp, #32]
 80030a2:	f040 8467 	bne.w	8003974 <_vfprintf_r+0x120c>
 80030a6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80030aa:	f000 82da 	beq.w	8003662 <_vfprintf_r+0xefa>
 80030ae:	7814      	ldrb	r4, [r2, #0]
 80030b0:	9308      	str	r3, [sp, #32]
 80030b2:	2500      	movs	r5, #0
 80030b4:	e488      	b.n	80029c8 <_vfprintf_r+0x260>
 80030b6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80030ba:	f002 fd45 	bl	8005b48 <__retarget_lock_release_recursive>
 80030be:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80030c2:	9305      	str	r3, [sp, #20]
 80030c4:	e443      	b.n	800294e <_vfprintf_r+0x1e6>
 80030c6:	2e00      	cmp	r6, #0
 80030c8:	f43f adf8 	beq.w	8002cbc <_vfprintf_r+0x554>
 80030cc:	2300      	movs	r3, #0
 80030ce:	2101      	movs	r1, #1
 80030d0:	461a      	mov	r2, r3
 80030d2:	9104      	str	r1, [sp, #16]
 80030d4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80030d8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80030dc:	930a      	str	r3, [sp, #40]	; 0x28
 80030de:	4699      	mov	r9, r3
 80030e0:	930f      	str	r3, [sp, #60]	; 0x3c
 80030e2:	9314      	str	r3, [sp, #80]	; 0x50
 80030e4:	9311      	str	r3, [sp, #68]	; 0x44
 80030e6:	9109      	str	r1, [sp, #36]	; 0x24
 80030e8:	af3d      	add	r7, sp, #244	; 0xf4
 80030ea:	e4ce      	b.n	8002a8a <_vfprintf_r+0x322>
 80030ec:	2e65      	cmp	r6, #101	; 0x65
 80030ee:	f340 80ca 	ble.w	8003286 <_vfprintf_r+0xb1e>
 80030f2:	2200      	movs	r2, #0
 80030f4:	2300      	movs	r3, #0
 80030f6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80030fa:	f7fd ff85 	bl	8001008 <__aeabi_dcmpeq>
 80030fe:	2800      	cmp	r0, #0
 8003100:	f000 8169 	beq.w	80033d6 <_vfprintf_r+0xc6e>
 8003104:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003106:	4a22      	ldr	r2, [pc, #136]	; (8003190 <_vfprintf_r+0xa28>)
 8003108:	f8cb 2000 	str.w	r2, [fp]
 800310c:	3301      	adds	r3, #1
 800310e:	3401      	adds	r4, #1
 8003110:	2201      	movs	r2, #1
 8003112:	2b07      	cmp	r3, #7
 8003114:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003118:	f8cb 2004 	str.w	r2, [fp, #4]
 800311c:	f300 8406 	bgt.w	800392c <_vfprintf_r+0x11c4>
 8003120:	f10b 0b08 	add.w	fp, fp, #8
 8003124:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003126:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003128:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800312a:	4293      	cmp	r3, r2
 800312c:	db03      	blt.n	8003136 <_vfprintf_r+0x9ce>
 800312e:	f018 0f01 	tst.w	r8, #1
 8003132:	f43f ad6a 	beq.w	8002c0a <_vfprintf_r+0x4a2>
 8003136:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003138:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800313a:	f8cb 2000 	str.w	r2, [fp]
 800313e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003140:	f8cb 2004 	str.w	r2, [fp, #4]
 8003144:	3301      	adds	r3, #1
 8003146:	4414      	add	r4, r2
 8003148:	2b07      	cmp	r3, #7
 800314a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800314e:	f300 8517 	bgt.w	8003b80 <_vfprintf_r+0x1418>
 8003152:	f10b 0b08 	add.w	fp, fp, #8
 8003156:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003158:	1e5d      	subs	r5, r3, #1
 800315a:	2d00      	cmp	r5, #0
 800315c:	f77f ad55 	ble.w	8002c0a <_vfprintf_r+0x4a2>
 8003160:	2d10      	cmp	r5, #16
 8003162:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003164:	4b0b      	ldr	r3, [pc, #44]	; (8003194 <_vfprintf_r+0xa2c>)
 8003166:	f340 82e7 	ble.w	8003738 <_vfprintf_r+0xfd0>
 800316a:	4619      	mov	r1, r3
 800316c:	2610      	movs	r6, #16
 800316e:	4623      	mov	r3, r4
 8003170:	9f03      	ldr	r7, [sp, #12]
 8003172:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003176:	460c      	mov	r4, r1
 8003178:	e014      	b.n	80031a4 <_vfprintf_r+0xa3c>
 800317a:	bf00      	nop
 800317c:	7fefffff 	.word	0x7fefffff
 8003180:	08007548 	.word	0x08007548
 8003184:	08007544 	.word	0x08007544
 8003188:	08007568 	.word	0x08007568
 800318c:	08007554 	.word	0x08007554
 8003190:	08007584 	.word	0x08007584
 8003194:	08007598 	.word	0x08007598
 8003198:	f10b 0b08 	add.w	fp, fp, #8
 800319c:	3d10      	subs	r5, #16
 800319e:	2d10      	cmp	r5, #16
 80031a0:	f340 82c7 	ble.w	8003732 <_vfprintf_r+0xfca>
 80031a4:	3201      	adds	r2, #1
 80031a6:	3310      	adds	r3, #16
 80031a8:	2a07      	cmp	r2, #7
 80031aa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80031ae:	e9cb 4600 	strd	r4, r6, [fp]
 80031b2:	ddf1      	ble.n	8003198 <_vfprintf_r+0xa30>
 80031b4:	aa2a      	add	r2, sp, #168	; 0xa8
 80031b6:	4649      	mov	r1, r9
 80031b8:	4638      	mov	r0, r7
 80031ba:	f003 fe03 	bl	8006dc4 <__sprint_r>
 80031be:	2800      	cmp	r0, #0
 80031c0:	d14c      	bne.n	800325c <_vfprintf_r+0xaf4>
 80031c2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80031c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031ca:	e7e7      	b.n	800319c <_vfprintf_r+0xa34>
 80031cc:	9b06      	ldr	r3, [sp, #24]
 80031ce:	9a04      	ldr	r2, [sp, #16]
 80031d0:	1a9d      	subs	r5, r3, r2
 80031d2:	2d00      	cmp	r5, #0
 80031d4:	f77f acc9 	ble.w	8002b6a <_vfprintf_r+0x402>
 80031d8:	2d10      	cmp	r5, #16
 80031da:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031dc:	4bbc      	ldr	r3, [pc, #752]	; (80034d0 <_vfprintf_r+0xd68>)
 80031de:	dd27      	ble.n	8003230 <_vfprintf_r+0xac8>
 80031e0:	4659      	mov	r1, fp
 80031e2:	4620      	mov	r0, r4
 80031e4:	46bb      	mov	fp, r7
 80031e6:	461c      	mov	r4, r3
 80031e8:	4637      	mov	r7, r6
 80031ea:	9e07      	ldr	r6, [sp, #28]
 80031ec:	e004      	b.n	80031f8 <_vfprintf_r+0xa90>
 80031ee:	3d10      	subs	r5, #16
 80031f0:	2d10      	cmp	r5, #16
 80031f2:	f101 0108 	add.w	r1, r1, #8
 80031f6:	dd16      	ble.n	8003226 <_vfprintf_r+0xabe>
 80031f8:	3201      	adds	r2, #1
 80031fa:	3010      	adds	r0, #16
 80031fc:	2310      	movs	r3, #16
 80031fe:	2a07      	cmp	r2, #7
 8003200:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003204:	600c      	str	r4, [r1, #0]
 8003206:	604b      	str	r3, [r1, #4]
 8003208:	ddf1      	ble.n	80031ee <_vfprintf_r+0xa86>
 800320a:	aa2a      	add	r2, sp, #168	; 0xa8
 800320c:	4631      	mov	r1, r6
 800320e:	9803      	ldr	r0, [sp, #12]
 8003210:	f003 fdd8 	bl	8006dc4 <__sprint_r>
 8003214:	2800      	cmp	r0, #0
 8003216:	f040 80a8 	bne.w	800336a <_vfprintf_r+0xc02>
 800321a:	3d10      	subs	r5, #16
 800321c:	2d10      	cmp	r5, #16
 800321e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003222:	a92d      	add	r1, sp, #180	; 0xb4
 8003224:	dce8      	bgt.n	80031f8 <_vfprintf_r+0xa90>
 8003226:	463e      	mov	r6, r7
 8003228:	4623      	mov	r3, r4
 800322a:	465f      	mov	r7, fp
 800322c:	4604      	mov	r4, r0
 800322e:	468b      	mov	fp, r1
 8003230:	3201      	adds	r2, #1
 8003232:	442c      	add	r4, r5
 8003234:	2a07      	cmp	r2, #7
 8003236:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800323a:	e9cb 3500 	strd	r3, r5, [fp]
 800323e:	f300 8292 	bgt.w	8003766 <_vfprintf_r+0xffe>
 8003242:	f10b 0b08 	add.w	fp, fp, #8
 8003246:	e490      	b.n	8002b6a <_vfprintf_r+0x402>
 8003248:	aa2a      	add	r2, sp, #168	; 0xa8
 800324a:	9907      	ldr	r1, [sp, #28]
 800324c:	9803      	ldr	r0, [sp, #12]
 800324e:	f003 fdb9 	bl	8006dc4 <__sprint_r>
 8003252:	2800      	cmp	r0, #0
 8003254:	f43f ad23 	beq.w	8002c9e <_vfprintf_r+0x536>
 8003258:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800325c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800325e:	b111      	cbz	r1, 8003266 <_vfprintf_r+0xafe>
 8003260:	9803      	ldr	r0, [sp, #12]
 8003262:	f002 f9c1 	bl	80055e8 <_free_r>
 8003266:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800326a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800326e:	07d0      	lsls	r0, r2, #31
 8003270:	d402      	bmi.n	8003278 <_vfprintf_r+0xb10>
 8003272:	0599      	lsls	r1, r3, #22
 8003274:	f140 81d0 	bpl.w	8003618 <_vfprintf_r+0xeb0>
 8003278:	065a      	lsls	r2, r3, #25
 800327a:	f53f ab65 	bmi.w	8002948 <_vfprintf_r+0x1e0>
 800327e:	9805      	ldr	r0, [sp, #20]
 8003280:	b057      	add	sp, #348	; 0x15c
 8003282:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003286:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003288:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800328a:	2a01      	cmp	r2, #1
 800328c:	f104 0401 	add.w	r4, r4, #1
 8003290:	f103 0501 	add.w	r5, r3, #1
 8003294:	f10b 0608 	add.w	r6, fp, #8
 8003298:	f340 811c 	ble.w	80034d4 <_vfprintf_r+0xd6c>
 800329c:	2301      	movs	r3, #1
 800329e:	2d07      	cmp	r5, #7
 80032a0:	f8cb 7000 	str.w	r7, [fp]
 80032a4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80032a8:	f8cb 3004 	str.w	r3, [fp, #4]
 80032ac:	f300 81bb 	bgt.w	8003626 <_vfprintf_r+0xebe>
 80032b0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80032b2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80032b4:	1c69      	adds	r1, r5, #1
 80032b6:	441c      	add	r4, r3
 80032b8:	2907      	cmp	r1, #7
 80032ba:	910b      	str	r1, [sp, #44]	; 0x2c
 80032bc:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80032c0:	e9c6 2300 	strd	r2, r3, [r6]
 80032c4:	f300 81bb 	bgt.w	800363e <_vfprintf_r+0xed6>
 80032c8:	3608      	adds	r6, #8
 80032ca:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80032cc:	1c53      	adds	r3, r2, #1
 80032ce:	461d      	mov	r5, r3
 80032d0:	9509      	str	r5, [sp, #36]	; 0x24
 80032d2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80032d4:	930e      	str	r3, [sp, #56]	; 0x38
 80032d6:	2200      	movs	r2, #0
 80032d8:	2300      	movs	r3, #0
 80032da:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032de:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80032e2:	f106 0b08 	add.w	fp, r6, #8
 80032e6:	f7fd fe8f 	bl	8001008 <__aeabi_dcmpeq>
 80032ea:	2800      	cmp	r0, #0
 80032ec:	f040 80c2 	bne.w	8003474 <_vfprintf_r+0xd0c>
 80032f0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80032f2:	f8c6 9004 	str.w	r9, [r6, #4]
 80032f6:	3701      	adds	r7, #1
 80032f8:	444c      	add	r4, r9
 80032fa:	2d07      	cmp	r5, #7
 80032fc:	6037      	str	r7, [r6, #0]
 80032fe:	942c      	str	r4, [sp, #176]	; 0xb0
 8003300:	952b      	str	r5, [sp, #172]	; 0xac
 8003302:	f300 80f9 	bgt.w	80034f8 <_vfprintf_r+0xd90>
 8003306:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003308:	f106 0310 	add.w	r3, r6, #16
 800330c:	3202      	adds	r2, #2
 800330e:	465e      	mov	r6, fp
 8003310:	9209      	str	r2, [sp, #36]	; 0x24
 8003312:	469b      	mov	fp, r3
 8003314:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003316:	6072      	str	r2, [r6, #4]
 8003318:	4414      	add	r4, r2
 800331a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800331c:	942c      	str	r4, [sp, #176]	; 0xb0
 800331e:	ab26      	add	r3, sp, #152	; 0x98
 8003320:	2a07      	cmp	r2, #7
 8003322:	922b      	str	r2, [sp, #172]	; 0xac
 8003324:	6033      	str	r3, [r6, #0]
 8003326:	f77f ac70 	ble.w	8002c0a <_vfprintf_r+0x4a2>
 800332a:	aa2a      	add	r2, sp, #168	; 0xa8
 800332c:	9907      	ldr	r1, [sp, #28]
 800332e:	9803      	ldr	r0, [sp, #12]
 8003330:	f003 fd48 	bl	8006dc4 <__sprint_r>
 8003334:	2800      	cmp	r0, #0
 8003336:	d18f      	bne.n	8003258 <_vfprintf_r+0xaf0>
 8003338:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800333a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800333e:	e464      	b.n	8002c0a <_vfprintf_r+0x4a2>
 8003340:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003342:	af56      	add	r7, sp, #344	; 0x158
 8003344:	0923      	lsrs	r3, r4, #4
 8003346:	f004 010f 	and.w	r1, r4, #15
 800334a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800334e:	092a      	lsrs	r2, r5, #4
 8003350:	461c      	mov	r4, r3
 8003352:	4615      	mov	r5, r2
 8003354:	5c43      	ldrb	r3, [r0, r1]
 8003356:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800335a:	ea54 0305 	orrs.w	r3, r4, r5
 800335e:	d1f1      	bne.n	8003344 <_vfprintf_r+0xbdc>
 8003360:	9b04      	ldr	r3, [sp, #16]
 8003362:	1bdb      	subs	r3, r3, r7
 8003364:	9309      	str	r3, [sp, #36]	; 0x24
 8003366:	f7ff bb80 	b.w	8002a6a <_vfprintf_r+0x302>
 800336a:	46b1      	mov	r9, r6
 800336c:	e776      	b.n	800325c <_vfprintf_r+0xaf4>
 800336e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003370:	9907      	ldr	r1, [sp, #28]
 8003372:	9803      	ldr	r0, [sp, #12]
 8003374:	f003 fd26 	bl	8006dc4 <__sprint_r>
 8003378:	2800      	cmp	r0, #0
 800337a:	f47f af6d 	bne.w	8003258 <_vfprintf_r+0xaf0>
 800337e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003380:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003384:	f7ff bbdd 	b.w	8002b42 <_vfprintf_r+0x3da>
 8003388:	aa2a      	add	r2, sp, #168	; 0xa8
 800338a:	9907      	ldr	r1, [sp, #28]
 800338c:	9803      	ldr	r0, [sp, #12]
 800338e:	f003 fd19 	bl	8006dc4 <__sprint_r>
 8003392:	2800      	cmp	r0, #0
 8003394:	f47f af60 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003398:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800339a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800339e:	f7ff bbe0 	b.w	8002b62 <_vfprintf_r+0x3fa>
 80033a2:	4698      	mov	r8, r3
 80033a4:	2d00      	cmp	r5, #0
 80033a6:	bf08      	it	eq
 80033a8:	2c0a      	cmpeq	r4, #10
 80033aa:	f080 8170 	bcs.w	800368e <_vfprintf_r+0xf26>
 80033ae:	af56      	add	r7, sp, #344	; 0x158
 80033b0:	3430      	adds	r4, #48	; 0x30
 80033b2:	2301      	movs	r3, #1
 80033b4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80033b8:	9309      	str	r3, [sp, #36]	; 0x24
 80033ba:	f7ff bb56 	b.w	8002a6a <_vfprintf_r+0x302>
 80033be:	aa2a      	add	r2, sp, #168	; 0xa8
 80033c0:	9907      	ldr	r1, [sp, #28]
 80033c2:	9803      	ldr	r0, [sp, #12]
 80033c4:	f003 fcfe 	bl	8006dc4 <__sprint_r>
 80033c8:	2800      	cmp	r0, #0
 80033ca:	f47f af45 	bne.w	8003258 <_vfprintf_r+0xaf0>
 80033ce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033d4:	e406      	b.n	8002be4 <_vfprintf_r+0x47c>
 80033d6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80033d8:	2b00      	cmp	r3, #0
 80033da:	f340 8273 	ble.w	80038c4 <_vfprintf_r+0x115c>
 80033de:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80033e2:	4293      	cmp	r3, r2
 80033e4:	bfa8      	it	ge
 80033e6:	4613      	movge	r3, r2
 80033e8:	2b00      	cmp	r3, #0
 80033ea:	461d      	mov	r5, r3
 80033ec:	dd0d      	ble.n	800340a <_vfprintf_r+0xca2>
 80033ee:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033f0:	f8cb 7000 	str.w	r7, [fp]
 80033f4:	3301      	adds	r3, #1
 80033f6:	442c      	add	r4, r5
 80033f8:	2b07      	cmp	r3, #7
 80033fa:	942c      	str	r4, [sp, #176]	; 0xb0
 80033fc:	f8cb 5004 	str.w	r5, [fp, #4]
 8003400:	932b      	str	r3, [sp, #172]	; 0xac
 8003402:	f300 82c1 	bgt.w	8003988 <_vfprintf_r+0x1220>
 8003406:	f10b 0b08 	add.w	fp, fp, #8
 800340a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800340c:	2d00      	cmp	r5, #0
 800340e:	bfa8      	it	ge
 8003410:	1b5b      	subge	r3, r3, r5
 8003412:	2b00      	cmp	r3, #0
 8003414:	461d      	mov	r5, r3
 8003416:	f340 8099 	ble.w	800354c <_vfprintf_r+0xde4>
 800341a:	2d10      	cmp	r5, #16
 800341c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800341e:	4b2c      	ldr	r3, [pc, #176]	; (80034d0 <_vfprintf_r+0xd68>)
 8003420:	f340 83db 	ble.w	8003bda <_vfprintf_r+0x1472>
 8003424:	4618      	mov	r0, r3
 8003426:	4621      	mov	r1, r4
 8003428:	465b      	mov	r3, fp
 800342a:	2610      	movs	r6, #16
 800342c:	46bb      	mov	fp, r7
 800342e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003432:	9c07      	ldr	r4, [sp, #28]
 8003434:	4607      	mov	r7, r0
 8003436:	e004      	b.n	8003442 <_vfprintf_r+0xcda>
 8003438:	3308      	adds	r3, #8
 800343a:	3d10      	subs	r5, #16
 800343c:	2d10      	cmp	r5, #16
 800343e:	f340 83c7 	ble.w	8003bd0 <_vfprintf_r+0x1468>
 8003442:	3201      	adds	r2, #1
 8003444:	3110      	adds	r1, #16
 8003446:	2a07      	cmp	r2, #7
 8003448:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800344c:	e9c3 7600 	strd	r7, r6, [r3]
 8003450:	ddf2      	ble.n	8003438 <_vfprintf_r+0xcd0>
 8003452:	aa2a      	add	r2, sp, #168	; 0xa8
 8003454:	4621      	mov	r1, r4
 8003456:	4648      	mov	r0, r9
 8003458:	f003 fcb4 	bl	8006dc4 <__sprint_r>
 800345c:	2800      	cmp	r0, #0
 800345e:	f040 84a5 	bne.w	8003dac <_vfprintf_r+0x1644>
 8003462:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003466:	ab2d      	add	r3, sp, #180	; 0xb4
 8003468:	e7e7      	b.n	800343a <_vfprintf_r+0xcd2>
 800346a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800346e:	af56      	add	r7, sp, #344	; 0x158
 8003470:	f7ff bafb 	b.w	8002a6a <_vfprintf_r+0x302>
 8003474:	f1b9 0f00 	cmp.w	r9, #0
 8003478:	f77f af4c 	ble.w	8003314 <_vfprintf_r+0xbac>
 800347c:	f1b9 0f10 	cmp.w	r9, #16
 8003480:	4b13      	ldr	r3, [pc, #76]	; (80034d0 <_vfprintf_r+0xd68>)
 8003482:	f340 8659 	ble.w	8004138 <_vfprintf_r+0x19d0>
 8003486:	4619      	mov	r1, r3
 8003488:	4622      	mov	r2, r4
 800348a:	4633      	mov	r3, r6
 800348c:	2710      	movs	r7, #16
 800348e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003492:	9c07      	ldr	r4, [sp, #28]
 8003494:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003496:	460e      	mov	r6, r1
 8003498:	e007      	b.n	80034aa <_vfprintf_r+0xd42>
 800349a:	3308      	adds	r3, #8
 800349c:	f1a9 0910 	sub.w	r9, r9, #16
 80034a0:	f1b9 0f10 	cmp.w	r9, #16
 80034a4:	f340 8353 	ble.w	8003b4e <_vfprintf_r+0x13e6>
 80034a8:	3501      	adds	r5, #1
 80034aa:	3210      	adds	r2, #16
 80034ac:	2d07      	cmp	r5, #7
 80034ae:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80034b2:	e9c3 6700 	strd	r6, r7, [r3]
 80034b6:	ddf0      	ble.n	800349a <_vfprintf_r+0xd32>
 80034b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ba:	4621      	mov	r1, r4
 80034bc:	4658      	mov	r0, fp
 80034be:	f003 fc81 	bl	8006dc4 <__sprint_r>
 80034c2:	2800      	cmp	r0, #0
 80034c4:	f040 8472 	bne.w	8003dac <_vfprintf_r+0x1644>
 80034c8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80034cc:	ab2d      	add	r3, sp, #180	; 0xb4
 80034ce:	e7e5      	b.n	800349c <_vfprintf_r+0xd34>
 80034d0:	08007598 	.word	0x08007598
 80034d4:	f018 0f01 	tst.w	r8, #1
 80034d8:	f47f aee0 	bne.w	800329c <_vfprintf_r+0xb34>
 80034dc:	2201      	movs	r2, #1
 80034de:	2d07      	cmp	r5, #7
 80034e0:	f8cb 7000 	str.w	r7, [fp]
 80034e4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80034e8:	f8cb 2004 	str.w	r2, [fp, #4]
 80034ec:	dc04      	bgt.n	80034f8 <_vfprintf_r+0xd90>
 80034ee:	3302      	adds	r3, #2
 80034f0:	9309      	str	r3, [sp, #36]	; 0x24
 80034f2:	f10b 0b10 	add.w	fp, fp, #16
 80034f6:	e70d      	b.n	8003314 <_vfprintf_r+0xbac>
 80034f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034fa:	9907      	ldr	r1, [sp, #28]
 80034fc:	9803      	ldr	r0, [sp, #12]
 80034fe:	f003 fc61 	bl	8006dc4 <__sprint_r>
 8003502:	2800      	cmp	r0, #0
 8003504:	f47f aea8 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003508:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800350c:	3301      	adds	r3, #1
 800350e:	9309      	str	r3, [sp, #36]	; 0x24
 8003510:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003514:	ae2d      	add	r6, sp, #180	; 0xb4
 8003516:	e6fd      	b.n	8003314 <_vfprintf_r+0xbac>
 8003518:	aa2a      	add	r2, sp, #168	; 0xa8
 800351a:	9907      	ldr	r1, [sp, #28]
 800351c:	9803      	ldr	r0, [sp, #12]
 800351e:	f003 fc51 	bl	8006dc4 <__sprint_r>
 8003522:	2800      	cmp	r0, #0
 8003524:	f47f ae98 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003528:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800352c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800352e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003532:	f7ff baf6 	b.w	8002b22 <_vfprintf_r+0x3ba>
 8003536:	aa2a      	add	r2, sp, #168	; 0xa8
 8003538:	9907      	ldr	r1, [sp, #28]
 800353a:	9803      	ldr	r0, [sp, #12]
 800353c:	f003 fc42 	bl	8006dc4 <__sprint_r>
 8003540:	2800      	cmp	r0, #0
 8003542:	f47f ae89 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003546:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003548:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800354c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800354e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003552:	443b      	add	r3, r7
 8003554:	4699      	mov	r9, r3
 8003556:	f040 8357 	bne.w	8003c08 <_vfprintf_r+0x14a0>
 800355a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800355c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800355e:	4293      	cmp	r3, r2
 8003560:	db49      	blt.n	80035f6 <_vfprintf_r+0xe8e>
 8003562:	f018 0f01 	tst.w	r8, #1
 8003566:	d146      	bne.n	80035f6 <_vfprintf_r+0xe8e>
 8003568:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800356a:	18bd      	adds	r5, r7, r2
 800356c:	eba5 0509 	sub.w	r5, r5, r9
 8003570:	1ad3      	subs	r3, r2, r3
 8003572:	429d      	cmp	r5, r3
 8003574:	bfa8      	it	ge
 8003576:	461d      	movge	r5, r3
 8003578:	2d00      	cmp	r5, #0
 800357a:	dd0d      	ble.n	8003598 <_vfprintf_r+0xe30>
 800357c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800357e:	f8cb 9000 	str.w	r9, [fp]
 8003582:	3201      	adds	r2, #1
 8003584:	442c      	add	r4, r5
 8003586:	2a07      	cmp	r2, #7
 8003588:	942c      	str	r4, [sp, #176]	; 0xb0
 800358a:	f8cb 5004 	str.w	r5, [fp, #4]
 800358e:	922b      	str	r2, [sp, #172]	; 0xac
 8003590:	f300 8462 	bgt.w	8003e58 <_vfprintf_r+0x16f0>
 8003594:	f10b 0b08 	add.w	fp, fp, #8
 8003598:	2d00      	cmp	r5, #0
 800359a:	bfac      	ite	ge
 800359c:	1b5d      	subge	r5, r3, r5
 800359e:	461d      	movlt	r5, r3
 80035a0:	2d00      	cmp	r5, #0
 80035a2:	f77f ab32 	ble.w	8002c0a <_vfprintf_r+0x4a2>
 80035a6:	2d10      	cmp	r5, #16
 80035a8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035aa:	4bc5      	ldr	r3, [pc, #788]	; (80038c0 <_vfprintf_r+0x1158>)
 80035ac:	f340 80c4 	ble.w	8003738 <_vfprintf_r+0xfd0>
 80035b0:	4619      	mov	r1, r3
 80035b2:	2610      	movs	r6, #16
 80035b4:	4623      	mov	r3, r4
 80035b6:	9f03      	ldr	r7, [sp, #12]
 80035b8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80035bc:	460c      	mov	r4, r1
 80035be:	e005      	b.n	80035cc <_vfprintf_r+0xe64>
 80035c0:	f10b 0b08 	add.w	fp, fp, #8
 80035c4:	3d10      	subs	r5, #16
 80035c6:	2d10      	cmp	r5, #16
 80035c8:	f340 80b3 	ble.w	8003732 <_vfprintf_r+0xfca>
 80035cc:	3201      	adds	r2, #1
 80035ce:	3310      	adds	r3, #16
 80035d0:	2a07      	cmp	r2, #7
 80035d2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80035d6:	e9cb 4600 	strd	r4, r6, [fp]
 80035da:	ddf1      	ble.n	80035c0 <_vfprintf_r+0xe58>
 80035dc:	aa2a      	add	r2, sp, #168	; 0xa8
 80035de:	4649      	mov	r1, r9
 80035e0:	4638      	mov	r0, r7
 80035e2:	f003 fbef 	bl	8006dc4 <__sprint_r>
 80035e6:	2800      	cmp	r0, #0
 80035e8:	f47f ae38 	bne.w	800325c <_vfprintf_r+0xaf4>
 80035ec:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80035f0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035f4:	e7e6      	b.n	80035c4 <_vfprintf_r+0xe5c>
 80035f6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035f8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80035fa:	f8cb 1000 	str.w	r1, [fp]
 80035fe:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003600:	f8cb 1004 	str.w	r1, [fp, #4]
 8003604:	3201      	adds	r2, #1
 8003606:	440c      	add	r4, r1
 8003608:	2a07      	cmp	r2, #7
 800360a:	942c      	str	r4, [sp, #176]	; 0xb0
 800360c:	922b      	str	r2, [sp, #172]	; 0xac
 800360e:	f300 828c 	bgt.w	8003b2a <_vfprintf_r+0x13c2>
 8003612:	f10b 0b08 	add.w	fp, fp, #8
 8003616:	e7a7      	b.n	8003568 <_vfprintf_r+0xe00>
 8003618:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800361c:	f002 fa94 	bl	8005b48 <__retarget_lock_release_recursive>
 8003620:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003624:	e628      	b.n	8003278 <_vfprintf_r+0xb10>
 8003626:	aa2a      	add	r2, sp, #168	; 0xa8
 8003628:	9907      	ldr	r1, [sp, #28]
 800362a:	9803      	ldr	r0, [sp, #12]
 800362c:	f003 fbca 	bl	8006dc4 <__sprint_r>
 8003630:	2800      	cmp	r0, #0
 8003632:	f47f ae11 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003636:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800363a:	ae2d      	add	r6, sp, #180	; 0xb4
 800363c:	e638      	b.n	80032b0 <_vfprintf_r+0xb48>
 800363e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003640:	9907      	ldr	r1, [sp, #28]
 8003642:	9803      	ldr	r0, [sp, #12]
 8003644:	f003 fbbe 	bl	8006dc4 <__sprint_r>
 8003648:	2800      	cmp	r0, #0
 800364a:	f47f ae05 	bne.w	8003258 <_vfprintf_r+0xaf0>
 800364e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003652:	ae2d      	add	r6, sp, #180	; 0xb4
 8003654:	930b      	str	r3, [sp, #44]	; 0x2c
 8003656:	e638      	b.n	80032ca <_vfprintf_r+0xb62>
 8003658:	6814      	ldr	r4, [r2, #0]
 800365a:	9308      	str	r3, [sp, #32]
 800365c:	2500      	movs	r5, #0
 800365e:	f7ff bb95 	b.w	8002d8c <_vfprintf_r+0x624>
 8003662:	6814      	ldr	r4, [r2, #0]
 8003664:	9308      	str	r3, [sp, #32]
 8003666:	2500      	movs	r5, #0
 8003668:	f7ff b9ae 	b.w	80029c8 <_vfprintf_r+0x260>
 800366c:	680c      	ldr	r4, [r1, #0]
 800366e:	9208      	str	r2, [sp, #32]
 8003670:	17e5      	asrs	r5, r4, #31
 8003672:	4620      	mov	r0, r4
 8003674:	4629      	mov	r1, r5
 8003676:	f7ff b9d2 	b.w	8002a1e <_vfprintf_r+0x2b6>
 800367a:	6814      	ldr	r4, [r2, #0]
 800367c:	9108      	str	r1, [sp, #32]
 800367e:	2201      	movs	r2, #1
 8003680:	2500      	movs	r5, #0
 8003682:	f7ff bb32 	b.w	8002cea <_vfprintf_r+0x582>
 8003686:	2a01      	cmp	r2, #1
 8003688:	f47f ab3c 	bne.w	8002d04 <_vfprintf_r+0x59c>
 800368c:	e68f      	b.n	80033ae <_vfprintf_r+0xc46>
 800368e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003692:	2200      	movs	r2, #0
 8003694:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003698:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800369c:	af56      	add	r7, sp, #344	; 0x158
 800369e:	4692      	mov	sl, r2
 80036a0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80036a4:	461e      	mov	r6, r3
 80036a6:	e00a      	b.n	80036be <_vfprintf_r+0xf56>
 80036a8:	2300      	movs	r3, #0
 80036aa:	4620      	mov	r0, r4
 80036ac:	4629      	mov	r1, r5
 80036ae:	220a      	movs	r2, #10
 80036b0:	f7fc fda6 	bl	8000200 <__aeabi_uldivmod>
 80036b4:	4604      	mov	r4, r0
 80036b6:	460d      	mov	r5, r1
 80036b8:	ea54 0305 	orrs.w	r3, r4, r5
 80036bc:	d029      	beq.n	8003712 <_vfprintf_r+0xfaa>
 80036be:	220a      	movs	r2, #10
 80036c0:	2300      	movs	r3, #0
 80036c2:	4620      	mov	r0, r4
 80036c4:	4629      	mov	r1, r5
 80036c6:	f7fc fd9b 	bl	8000200 <__aeabi_uldivmod>
 80036ca:	3230      	adds	r2, #48	; 0x30
 80036cc:	f807 2c01 	strb.w	r2, [r7, #-1]
 80036d0:	f10a 0a01 	add.w	sl, sl, #1
 80036d4:	3f01      	subs	r7, #1
 80036d6:	2e00      	cmp	r6, #0
 80036d8:	d0e6      	beq.n	80036a8 <_vfprintf_r+0xf40>
 80036da:	f898 3000 	ldrb.w	r3, [r8]
 80036de:	459a      	cmp	sl, r3
 80036e0:	d1e2      	bne.n	80036a8 <_vfprintf_r+0xf40>
 80036e2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80036e6:	d0df      	beq.n	80036a8 <_vfprintf_r+0xf40>
 80036e8:	2d00      	cmp	r5, #0
 80036ea:	bf08      	it	eq
 80036ec:	2c0a      	cmpeq	r4, #10
 80036ee:	d3db      	bcc.n	80036a8 <_vfprintf_r+0xf40>
 80036f0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80036f2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80036f4:	1aff      	subs	r7, r7, r3
 80036f6:	461a      	mov	r2, r3
 80036f8:	4638      	mov	r0, r7
 80036fa:	f003 faf5 	bl	8006ce8 <strncpy>
 80036fe:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003702:	2b00      	cmp	r3, #0
 8003704:	f000 8496 	beq.w	8004034 <_vfprintf_r+0x18cc>
 8003708:	f108 0801 	add.w	r8, r8, #1
 800370c:	f04f 0a00 	mov.w	sl, #0
 8003710:	e7ca      	b.n	80036a8 <_vfprintf_r+0xf40>
 8003712:	9b04      	ldr	r3, [sp, #16]
 8003714:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003718:	1bdb      	subs	r3, r3, r7
 800371a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800371e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003720:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003724:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003728:	9309      	str	r3, [sp, #36]	; 0x24
 800372a:	f7ff b99e 	b.w	8002a6a <_vfprintf_r+0x302>
 800372e:	46c1      	mov	r9, r8
 8003730:	e594      	b.n	800325c <_vfprintf_r+0xaf4>
 8003732:	4621      	mov	r1, r4
 8003734:	461c      	mov	r4, r3
 8003736:	460b      	mov	r3, r1
 8003738:	3201      	adds	r2, #1
 800373a:	442c      	add	r4, r5
 800373c:	2a07      	cmp	r2, #7
 800373e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003742:	e9cb 3500 	strd	r3, r5, [fp]
 8003746:	f77f aa5e 	ble.w	8002c06 <_vfprintf_r+0x49e>
 800374a:	e5ee      	b.n	800332a <_vfprintf_r+0xbc2>
 800374c:	f018 0f10 	tst.w	r8, #16
 8003750:	f040 80f8 	bne.w	8003944 <_vfprintf_r+0x11dc>
 8003754:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003758:	f000 8351 	beq.w	8003dfe <_vfprintf_r+0x1696>
 800375c:	9a05      	ldr	r2, [sp, #20]
 800375e:	801a      	strh	r2, [r3, #0]
 8003760:	4657      	mov	r7, sl
 8003762:	f7ff baa7 	b.w	8002cb4 <_vfprintf_r+0x54c>
 8003766:	aa2a      	add	r2, sp, #168	; 0xa8
 8003768:	9907      	ldr	r1, [sp, #28]
 800376a:	9803      	ldr	r0, [sp, #12]
 800376c:	f003 fb2a 	bl	8006dc4 <__sprint_r>
 8003770:	2800      	cmp	r0, #0
 8003772:	f47f ad71 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003776:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003778:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800377c:	f7ff b9f5 	b.w	8002b6a <_vfprintf_r+0x402>
 8003780:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003784:	4602      	mov	r2, r0
 8003786:	460b      	mov	r3, r1
 8003788:	f7fd fc70 	bl	800106c <__aeabi_dcmpun>
 800378c:	2800      	cmp	r0, #0
 800378e:	f040 8491 	bne.w	80040b4 <_vfprintf_r+0x194c>
 8003792:	2e61      	cmp	r6, #97	; 0x61
 8003794:	f000 8111 	beq.w	80039ba <_vfprintf_r+0x1252>
 8003798:	2e41      	cmp	r6, #65	; 0x41
 800379a:	f000 8377 	beq.w	8003e8c <_vfprintf_r+0x1724>
 800379e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80037a2:	f026 0220 	bic.w	r2, r6, #32
 80037a6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80037aa:	930e      	str	r3, [sp, #56]	; 0x38
 80037ac:	9204      	str	r2, [sp, #16]
 80037ae:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80037b0:	f000 842d 	beq.w	800400e <_vfprintf_r+0x18a6>
 80037b4:	2a47      	cmp	r2, #71	; 0x47
 80037b6:	f000 8424 	beq.w	8004002 <_vfprintf_r+0x189a>
 80037ba:	2b00      	cmp	r3, #0
 80037bc:	f2c0 82f9 	blt.w	8003db2 <_vfprintf_r+0x164a>
 80037c0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80037c4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80037c8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80037cc:	2e66      	cmp	r6, #102	; 0x66
 80037ce:	f000 83eb 	beq.w	8003fa8 <_vfprintf_r+0x1840>
 80037d2:	2e46      	cmp	r6, #70	; 0x46
 80037d4:	f000 847e 	beq.w	80040d4 <_vfprintf_r+0x196c>
 80037d8:	9b04      	ldr	r3, [sp, #16]
 80037da:	9803      	ldr	r0, [sp, #12]
 80037dc:	2b45      	cmp	r3, #69	; 0x45
 80037de:	bf0c      	ite	eq
 80037e0:	f109 0501 	addeq.w	r5, r9, #1
 80037e4:	464d      	movne	r5, r9
 80037e6:	aa28      	add	r2, sp, #160	; 0xa0
 80037e8:	ab25      	add	r3, sp, #148	; 0x94
 80037ea:	e9cd 3200 	strd	r3, r2, [sp]
 80037ee:	2102      	movs	r1, #2
 80037f0:	ab24      	add	r3, sp, #144	; 0x90
 80037f2:	462a      	mov	r2, r5
 80037f4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80037f8:	f000 fe3e 	bl	8004478 <_dtoa_r>
 80037fc:	2e67      	cmp	r6, #103	; 0x67
 80037fe:	4607      	mov	r7, r0
 8003800:	f040 849c 	bne.w	800413c <_vfprintf_r+0x19d4>
 8003804:	f018 0f01 	tst.w	r8, #1
 8003808:	f040 83f9 	bne.w	8003ffe <_vfprintf_r+0x1896>
 800380c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800380e:	4640      	mov	r0, r8
 8003810:	1bdb      	subs	r3, r3, r7
 8003812:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003816:	9310      	str	r3, [sp, #64]	; 0x40
 8003818:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800381a:	9311      	str	r3, [sp, #68]	; 0x44
 800381c:	9b04      	ldr	r3, [sp, #16]
 800381e:	2b47      	cmp	r3, #71	; 0x47
 8003820:	f000 81e7 	beq.w	8003bf2 <_vfprintf_r+0x148a>
 8003824:	9b04      	ldr	r3, [sp, #16]
 8003826:	2b46      	cmp	r3, #70	; 0x46
 8003828:	f000 8300 	beq.w	8003e2c <_vfprintf_r+0x16c4>
 800382c:	9904      	ldr	r1, [sp, #16]
 800382e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003830:	b2f2      	uxtb	r2, r6
 8003832:	2941      	cmp	r1, #65	; 0x41
 8003834:	bf08      	it	eq
 8003836:	320f      	addeq	r2, #15
 8003838:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800383c:	bf06      	itte	eq
 800383e:	b2d2      	uxtbeq	r2, r2
 8003840:	2101      	moveq	r1, #1
 8003842:	2100      	movne	r1, #0
 8003844:	2b00      	cmp	r3, #0
 8003846:	9324      	str	r3, [sp, #144]	; 0x90
 8003848:	bfb8      	it	lt
 800384a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800384c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003850:	bfba      	itte	lt
 8003852:	f1c3 0301 	rsblt	r3, r3, #1
 8003856:	222d      	movlt	r2, #45	; 0x2d
 8003858:	222b      	movge	r2, #43	; 0x2b
 800385a:	2b09      	cmp	r3, #9
 800385c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003860:	f300 83f9 	bgt.w	8004056 <_vfprintf_r+0x18ee>
 8003864:	2900      	cmp	r1, #0
 8003866:	f040 8487 	bne.w	8004178 <_vfprintf_r+0x1a10>
 800386a:	2230      	movs	r2, #48	; 0x30
 800386c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003870:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003874:	3330      	adds	r3, #48	; 0x30
 8003876:	7013      	strb	r3, [r2, #0]
 8003878:	1c53      	adds	r3, r2, #1
 800387a:	aa26      	add	r2, sp, #152	; 0x98
 800387c:	1a9b      	subs	r3, r3, r2
 800387e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003880:	9319      	str	r3, [sp, #100]	; 0x64
 8003882:	2a01      	cmp	r2, #1
 8003884:	4413      	add	r3, r2
 8003886:	9309      	str	r3, [sp, #36]	; 0x24
 8003888:	f340 8442 	ble.w	8004110 <_vfprintf_r+0x19a8>
 800388c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800388e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003890:	4413      	add	r3, r2
 8003892:	9309      	str	r3, [sp, #36]	; 0x24
 8003894:	2300      	movs	r3, #0
 8003896:	930f      	str	r3, [sp, #60]	; 0x3c
 8003898:	9314      	str	r3, [sp, #80]	; 0x50
 800389a:	9311      	str	r3, [sp, #68]	; 0x44
 800389c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800389e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80038a2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80038a6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80038aa:	9304      	str	r3, [sp, #16]
 80038ac:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80038ae:	2b00      	cmp	r3, #0
 80038b0:	f040 8275 	bne.w	8003d9e <_vfprintf_r+0x1636>
 80038b4:	4699      	mov	r9, r3
 80038b6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80038ba:	f7ff b8e2 	b.w	8002a82 <_vfprintf_r+0x31a>
 80038be:	bf00      	nop
 80038c0:	08007598 	.word	0x08007598
 80038c4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038c6:	49bd      	ldr	r1, [pc, #756]	; (8003bbc <_vfprintf_r+0x1454>)
 80038c8:	f8cb 1000 	str.w	r1, [fp]
 80038cc:	3201      	adds	r2, #1
 80038ce:	3401      	adds	r4, #1
 80038d0:	2101      	movs	r1, #1
 80038d2:	2a07      	cmp	r2, #7
 80038d4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038d8:	f8cb 1004 	str.w	r1, [fp, #4]
 80038dc:	dc60      	bgt.n	80039a0 <_vfprintf_r+0x1238>
 80038de:	f10b 0b08 	add.w	fp, fp, #8
 80038e2:	b92b      	cbnz	r3, 80038f0 <_vfprintf_r+0x1188>
 80038e4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80038e6:	b91a      	cbnz	r2, 80038f0 <_vfprintf_r+0x1188>
 80038e8:	f018 0f01 	tst.w	r8, #1
 80038ec:	f43f a98d 	beq.w	8002c0a <_vfprintf_r+0x4a2>
 80038f0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038f2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80038f4:	f8cb 1000 	str.w	r1, [fp]
 80038f8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80038fa:	f8cb 1004 	str.w	r1, [fp, #4]
 80038fe:	3201      	adds	r2, #1
 8003900:	440c      	add	r4, r1
 8003902:	2a07      	cmp	r2, #7
 8003904:	942c      	str	r4, [sp, #176]	; 0xb0
 8003906:	922b      	str	r2, [sp, #172]	; 0xac
 8003908:	f300 8282 	bgt.w	8003e10 <_vfprintf_r+0x16a8>
 800390c:	f10b 0b08 	add.w	fp, fp, #8
 8003910:	2b00      	cmp	r3, #0
 8003912:	f2c0 82e7 	blt.w	8003ee4 <_vfprintf_r+0x177c>
 8003916:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003918:	3201      	adds	r2, #1
 800391a:	441c      	add	r4, r3
 800391c:	2a07      	cmp	r2, #7
 800391e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003922:	e9cb 7300 	strd	r7, r3, [fp]
 8003926:	f77f a96e 	ble.w	8002c06 <_vfprintf_r+0x49e>
 800392a:	e4fe      	b.n	800332a <_vfprintf_r+0xbc2>
 800392c:	aa2a      	add	r2, sp, #168	; 0xa8
 800392e:	9907      	ldr	r1, [sp, #28]
 8003930:	9803      	ldr	r0, [sp, #12]
 8003932:	f003 fa47 	bl	8006dc4 <__sprint_r>
 8003936:	2800      	cmp	r0, #0
 8003938:	f47f ac8e 	bne.w	8003258 <_vfprintf_r+0xaf0>
 800393c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003940:	f7ff bbf0 	b.w	8003124 <_vfprintf_r+0x9bc>
 8003944:	9a05      	ldr	r2, [sp, #20]
 8003946:	601a      	str	r2, [r3, #0]
 8003948:	4657      	mov	r7, sl
 800394a:	f7ff b9b3 	b.w	8002cb4 <_vfprintf_r+0x54c>
 800394e:	8814      	ldrh	r4, [r2, #0]
 8003950:	9108      	str	r1, [sp, #32]
 8003952:	2500      	movs	r5, #0
 8003954:	2201      	movs	r2, #1
 8003956:	f7ff b9c8 	b.w	8002cea <_vfprintf_r+0x582>
 800395a:	8814      	ldrh	r4, [r2, #0]
 800395c:	9308      	str	r3, [sp, #32]
 800395e:	2500      	movs	r5, #0
 8003960:	f7ff ba14 	b.w	8002d8c <_vfprintf_r+0x624>
 8003964:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003968:	9208      	str	r2, [sp, #32]
 800396a:	17e5      	asrs	r5, r4, #31
 800396c:	4620      	mov	r0, r4
 800396e:	4629      	mov	r1, r5
 8003970:	f7ff b855 	b.w	8002a1e <_vfprintf_r+0x2b6>
 8003974:	8814      	ldrh	r4, [r2, #0]
 8003976:	9308      	str	r3, [sp, #32]
 8003978:	2500      	movs	r5, #0
 800397a:	f7ff b825 	b.w	80029c8 <_vfprintf_r+0x260>
 800397e:	222d      	movs	r2, #45	; 0x2d
 8003980:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003984:	f7ff baa2 	b.w	8002ecc <_vfprintf_r+0x764>
 8003988:	aa2a      	add	r2, sp, #168	; 0xa8
 800398a:	9907      	ldr	r1, [sp, #28]
 800398c:	9803      	ldr	r0, [sp, #12]
 800398e:	f003 fa19 	bl	8006dc4 <__sprint_r>
 8003992:	2800      	cmp	r0, #0
 8003994:	f47f ac60 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003998:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800399a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800399e:	e534      	b.n	800340a <_vfprintf_r+0xca2>
 80039a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039a2:	9907      	ldr	r1, [sp, #28]
 80039a4:	9803      	ldr	r0, [sp, #12]
 80039a6:	f003 fa0d 	bl	8006dc4 <__sprint_r>
 80039aa:	2800      	cmp	r0, #0
 80039ac:	f47f ac54 	bne.w	8003258 <_vfprintf_r+0xaf0>
 80039b0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039b2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039b4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039b8:	e793      	b.n	80038e2 <_vfprintf_r+0x117a>
 80039ba:	2330      	movs	r3, #48	; 0x30
 80039bc:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80039c0:	2378      	movs	r3, #120	; 0x78
 80039c2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80039c6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80039ca:	f048 0402 	orr.w	r4, r8, #2
 80039ce:	f300 82b0 	bgt.w	8003f32 <_vfprintf_r+0x17ca>
 80039d2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80039d6:	930e      	str	r3, [sp, #56]	; 0x38
 80039d8:	f026 0320 	bic.w	r3, r6, #32
 80039dc:	9304      	str	r3, [sp, #16]
 80039de:	2200      	movs	r2, #0
 80039e0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80039e2:	920a      	str	r2, [sp, #40]	; 0x28
 80039e4:	46a0      	mov	r8, r4
 80039e6:	af3d      	add	r7, sp, #244	; 0xf4
 80039e8:	2b00      	cmp	r3, #0
 80039ea:	f2c0 81e3 	blt.w	8003db4 <_vfprintf_r+0x164c>
 80039ee:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80039f2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80039f6:	2300      	movs	r3, #0
 80039f8:	930b      	str	r3, [sp, #44]	; 0x2c
 80039fa:	2e61      	cmp	r6, #97	; 0x61
 80039fc:	f000 8255 	beq.w	8003eaa <_vfprintf_r+0x1742>
 8003a00:	2e41      	cmp	r6, #65	; 0x41
 8003a02:	f47f aee3 	bne.w	80037cc <_vfprintf_r+0x1064>
 8003a06:	a824      	add	r0, sp, #144	; 0x90
 8003a08:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a0c:	f003 f8e2 	bl	8006bd4 <frexp>
 8003a10:	2200      	movs	r2, #0
 8003a12:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003a16:	ec51 0b10 	vmov	r0, r1, d0
 8003a1a:	f7fd f88d 	bl	8000b38 <__aeabi_dmul>
 8003a1e:	2200      	movs	r2, #0
 8003a20:	2300      	movs	r3, #0
 8003a22:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a26:	f7fd faef 	bl	8001008 <__aeabi_dcmpeq>
 8003a2a:	2800      	cmp	r0, #0
 8003a2c:	f040 8305 	bne.w	800403a <_vfprintf_r+0x18d2>
 8003a30:	4b63      	ldr	r3, [pc, #396]	; (8003bc0 <_vfprintf_r+0x1458>)
 8003a32:	9309      	str	r3, [sp, #36]	; 0x24
 8003a34:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003a38:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003a3c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003a40:	9721      	str	r7, [sp, #132]	; 0x84
 8003a42:	46b9      	mov	r9, r7
 8003a44:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003a48:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003a4c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003a50:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003a54:	e003      	b.n	8003a5e <_vfprintf_r+0x12f6>
 8003a56:	f7fd fad7 	bl	8001008 <__aeabi_dcmpeq>
 8003a5a:	bb20      	cbnz	r0, 8003aa6 <_vfprintf_r+0x133e>
 8003a5c:	46a9      	mov	r9, r5
 8003a5e:	2200      	movs	r2, #0
 8003a60:	4b58      	ldr	r3, [pc, #352]	; (8003bc4 <_vfprintf_r+0x145c>)
 8003a62:	4630      	mov	r0, r6
 8003a64:	4639      	mov	r1, r7
 8003a66:	f7fd f867 	bl	8000b38 <__aeabi_dmul>
 8003a6a:	460f      	mov	r7, r1
 8003a6c:	4606      	mov	r6, r0
 8003a6e:	f7fd fb13 	bl	8001098 <__aeabi_d2iz>
 8003a72:	4680      	mov	r8, r0
 8003a74:	f7fc fff6 	bl	8000a64 <__aeabi_i2d>
 8003a78:	4602      	mov	r2, r0
 8003a7a:	460b      	mov	r3, r1
 8003a7c:	4630      	mov	r0, r6
 8003a7e:	4639      	mov	r1, r7
 8003a80:	f7fc fea2 	bl	80007c8 <__aeabi_dsub>
 8003a84:	464d      	mov	r5, r9
 8003a86:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003a8a:	f805 cb01 	strb.w	ip, [r5], #1
 8003a8e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003a92:	46a3      	mov	fp, r4
 8003a94:	4606      	mov	r6, r0
 8003a96:	460f      	mov	r7, r1
 8003a98:	f04f 0200 	mov.w	r2, #0
 8003a9c:	f04f 0300 	mov.w	r3, #0
 8003aa0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003aa4:	d1d7      	bne.n	8003a56 <_vfprintf_r+0x12ee>
 8003aa6:	4630      	mov	r0, r6
 8003aa8:	4639      	mov	r1, r7
 8003aaa:	2200      	movs	r2, #0
 8003aac:	4b46      	ldr	r3, [pc, #280]	; (8003bc8 <_vfprintf_r+0x1460>)
 8003aae:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003ab2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003ab4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003ab8:	4644      	mov	r4, r8
 8003aba:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003abe:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003ac2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003ac6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003aca:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003acc:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003ad0:	f7fd fac2 	bl	8001058 <__aeabi_dcmpgt>
 8003ad4:	2800      	cmp	r0, #0
 8003ad6:	f040 8176 	bne.w	8003dc6 <_vfprintf_r+0x165e>
 8003ada:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003ade:	2200      	movs	r2, #0
 8003ae0:	4b39      	ldr	r3, [pc, #228]	; (8003bc8 <_vfprintf_r+0x1460>)
 8003ae2:	f7fd fa91 	bl	8001008 <__aeabi_dcmpeq>
 8003ae6:	b110      	cbz	r0, 8003aee <_vfprintf_r+0x1386>
 8003ae8:	07e2      	lsls	r2, r4, #31
 8003aea:	f100 816c 	bmi.w	8003dc6 <_vfprintf_r+0x165e>
 8003aee:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003af0:	2b00      	cmp	r3, #0
 8003af2:	db07      	blt.n	8003b04 <_vfprintf_r+0x139c>
 8003af4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003af6:	3301      	adds	r3, #1
 8003af8:	442b      	add	r3, r5
 8003afa:	2230      	movs	r2, #48	; 0x30
 8003afc:	f805 2b01 	strb.w	r2, [r5], #1
 8003b00:	42ab      	cmp	r3, r5
 8003b02:	d1fb      	bne.n	8003afc <_vfprintf_r+0x1394>
 8003b04:	1beb      	subs	r3, r5, r7
 8003b06:	4640      	mov	r0, r8
 8003b08:	9310      	str	r3, [sp, #64]	; 0x40
 8003b0a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003b0e:	e683      	b.n	8003818 <_vfprintf_r+0x10b0>
 8003b10:	f8cd 9010 	str.w	r9, [sp, #16]
 8003b14:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003b18:	9408      	str	r4, [sp, #32]
 8003b1a:	4681      	mov	r9, r0
 8003b1c:	900f      	str	r0, [sp, #60]	; 0x3c
 8003b1e:	9014      	str	r0, [sp, #80]	; 0x50
 8003b20:	9011      	str	r0, [sp, #68]	; 0x44
 8003b22:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003b26:	f7fe bfac 	b.w	8002a82 <_vfprintf_r+0x31a>
 8003b2a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b2c:	9907      	ldr	r1, [sp, #28]
 8003b2e:	9803      	ldr	r0, [sp, #12]
 8003b30:	f003 f948 	bl	8006dc4 <__sprint_r>
 8003b34:	2800      	cmp	r0, #0
 8003b36:	f47f ab8f 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003b3a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b42:	e511      	b.n	8003568 <_vfprintf_r+0xe00>
 8003b44:	4252      	negs	r2, r2
 8003b46:	9206      	str	r2, [sp, #24]
 8003b48:	9308      	str	r3, [sp, #32]
 8003b4a:	f7ff b96d 	b.w	8002e28 <_vfprintf_r+0x6c0>
 8003b4e:	4614      	mov	r4, r2
 8003b50:	4632      	mov	r2, r6
 8003b52:	461e      	mov	r6, r3
 8003b54:	4613      	mov	r3, r2
 8003b56:	462a      	mov	r2, r5
 8003b58:	3201      	adds	r2, #1
 8003b5a:	9209      	str	r2, [sp, #36]	; 0x24
 8003b5c:	f106 0208 	add.w	r2, r6, #8
 8003b60:	e9c6 3900 	strd	r3, r9, [r6]
 8003b64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b66:	932b      	str	r3, [sp, #172]	; 0xac
 8003b68:	444c      	add	r4, r9
 8003b6a:	2b07      	cmp	r3, #7
 8003b6c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003b6e:	f73f acc3 	bgt.w	80034f8 <_vfprintf_r+0xd90>
 8003b72:	3301      	adds	r3, #1
 8003b74:	9309      	str	r3, [sp, #36]	; 0x24
 8003b76:	f102 0b08 	add.w	fp, r2, #8
 8003b7a:	4616      	mov	r6, r2
 8003b7c:	f7ff bbca 	b.w	8003314 <_vfprintf_r+0xbac>
 8003b80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b82:	9907      	ldr	r1, [sp, #28]
 8003b84:	9803      	ldr	r0, [sp, #12]
 8003b86:	f003 f91d 	bl	8006dc4 <__sprint_r>
 8003b8a:	2800      	cmp	r0, #0
 8003b8c:	f47f ab64 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003b90:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b92:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b96:	f7ff bade 	b.w	8003156 <_vfprintf_r+0x9ee>
 8003b9a:	464b      	mov	r3, r9
 8003b9c:	2b06      	cmp	r3, #6
 8003b9e:	bf28      	it	cs
 8003ba0:	2306      	movcs	r3, #6
 8003ba2:	46b9      	mov	r9, r7
 8003ba4:	970f      	str	r7, [sp, #60]	; 0x3c
 8003ba6:	9714      	str	r7, [sp, #80]	; 0x50
 8003ba8:	9711      	str	r7, [sp, #68]	; 0x44
 8003baa:	970a      	str	r7, [sp, #40]	; 0x28
 8003bac:	463a      	mov	r2, r7
 8003bae:	9304      	str	r3, [sp, #16]
 8003bb0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003bb4:	4f05      	ldr	r7, [pc, #20]	; (8003bcc <_vfprintf_r+0x1464>)
 8003bb6:	f7fe bf64 	b.w	8002a82 <_vfprintf_r+0x31a>
 8003bba:	bf00      	nop
 8003bbc:	08007584 	.word	0x08007584
 8003bc0:	08007568 	.word	0x08007568
 8003bc4:	40300000 	.word	0x40300000
 8003bc8:	3fe00000 	.word	0x3fe00000
 8003bcc:	0800757c 	.word	0x0800757c
 8003bd0:	460c      	mov	r4, r1
 8003bd2:	4639      	mov	r1, r7
 8003bd4:	465f      	mov	r7, fp
 8003bd6:	469b      	mov	fp, r3
 8003bd8:	460b      	mov	r3, r1
 8003bda:	3201      	adds	r2, #1
 8003bdc:	442c      	add	r4, r5
 8003bde:	2a07      	cmp	r2, #7
 8003be0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003be4:	e9cb 3500 	strd	r3, r5, [fp]
 8003be8:	f73f aca5 	bgt.w	8003536 <_vfprintf_r+0xdce>
 8003bec:	f10b 0b08 	add.w	fp, fp, #8
 8003bf0:	e4ac      	b.n	800354c <_vfprintf_r+0xde4>
 8003bf2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bf4:	1cda      	adds	r2, r3, #3
 8003bf6:	db02      	blt.n	8003bfe <_vfprintf_r+0x1496>
 8003bf8:	4599      	cmp	r9, r3
 8003bfa:	f280 80b5 	bge.w	8003d68 <_vfprintf_r+0x1600>
 8003bfe:	3e02      	subs	r6, #2
 8003c00:	f026 0320 	bic.w	r3, r6, #32
 8003c04:	9304      	str	r3, [sp, #16]
 8003c06:	e611      	b.n	800382c <_vfprintf_r+0x10c4>
 8003c08:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c0a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003c0e:	465a      	mov	r2, fp
 8003c10:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003c14:	18fb      	adds	r3, r7, r3
 8003c16:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003c1a:	970c      	str	r7, [sp, #48]	; 0x30
 8003c1c:	4eaf      	ldr	r6, [pc, #700]	; (8003edc <_vfprintf_r+0x1774>)
 8003c1e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003c22:	9309      	str	r3, [sp, #36]	; 0x24
 8003c24:	464f      	mov	r7, r9
 8003c26:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c2a:	4621      	mov	r1, r4
 8003c2c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c2e:	2b00      	cmp	r3, #0
 8003c30:	d05b      	beq.n	8003cea <_vfprintf_r+0x1582>
 8003c32:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c34:	2b00      	cmp	r3, #0
 8003c36:	d154      	bne.n	8003ce2 <_vfprintf_r+0x157a>
 8003c38:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c3a:	3b01      	subs	r3, #1
 8003c3c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003c40:	9314      	str	r3, [sp, #80]	; 0x50
 8003c42:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c44:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003c46:	6010      	str	r0, [r2, #0]
 8003c48:	3301      	adds	r3, #1
 8003c4a:	4459      	add	r1, fp
 8003c4c:	2b07      	cmp	r3, #7
 8003c4e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c50:	f8c2 b004 	str.w	fp, [r2, #4]
 8003c54:	932b      	str	r3, [sp, #172]	; 0xac
 8003c56:	dc68      	bgt.n	8003d2a <_vfprintf_r+0x15c2>
 8003c58:	3208      	adds	r2, #8
 8003c5a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003c5c:	f898 3000 	ldrb.w	r3, [r8]
 8003c60:	1bc5      	subs	r5, r0, r7
 8003c62:	429d      	cmp	r5, r3
 8003c64:	bfa8      	it	ge
 8003c66:	461d      	movge	r5, r3
 8003c68:	2d00      	cmp	r5, #0
 8003c6a:	dd0b      	ble.n	8003c84 <_vfprintf_r+0x151c>
 8003c6c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c6e:	6017      	str	r7, [r2, #0]
 8003c70:	3301      	adds	r3, #1
 8003c72:	4429      	add	r1, r5
 8003c74:	2b07      	cmp	r3, #7
 8003c76:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c78:	6055      	str	r5, [r2, #4]
 8003c7a:	932b      	str	r3, [sp, #172]	; 0xac
 8003c7c:	dc5e      	bgt.n	8003d3c <_vfprintf_r+0x15d4>
 8003c7e:	f898 3000 	ldrb.w	r3, [r8]
 8003c82:	3208      	adds	r2, #8
 8003c84:	2d00      	cmp	r5, #0
 8003c86:	bfac      	ite	ge
 8003c88:	1b5d      	subge	r5, r3, r5
 8003c8a:	461d      	movlt	r5, r3
 8003c8c:	2d00      	cmp	r5, #0
 8003c8e:	dd26      	ble.n	8003cde <_vfprintf_r+0x1576>
 8003c90:	2d10      	cmp	r5, #16
 8003c92:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003c94:	dd3c      	ble.n	8003d10 <_vfprintf_r+0x15a8>
 8003c96:	2410      	movs	r4, #16
 8003c98:	e003      	b.n	8003ca2 <_vfprintf_r+0x153a>
 8003c9a:	3208      	adds	r2, #8
 8003c9c:	3d10      	subs	r5, #16
 8003c9e:	2d10      	cmp	r5, #16
 8003ca0:	dd36      	ble.n	8003d10 <_vfprintf_r+0x15a8>
 8003ca2:	3001      	adds	r0, #1
 8003ca4:	3110      	adds	r1, #16
 8003ca6:	2807      	cmp	r0, #7
 8003ca8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003cac:	e9c2 6400 	strd	r6, r4, [r2]
 8003cb0:	ddf3      	ble.n	8003c9a <_vfprintf_r+0x1532>
 8003cb2:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cb4:	4651      	mov	r1, sl
 8003cb6:	4648      	mov	r0, r9
 8003cb8:	f003 f884 	bl	8006dc4 <__sprint_r>
 8003cbc:	2800      	cmp	r0, #0
 8003cbe:	d150      	bne.n	8003d62 <_vfprintf_r+0x15fa>
 8003cc0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003cc4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003cc6:	e7e9      	b.n	8003c9c <_vfprintf_r+0x1534>
 8003cc8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cca:	4651      	mov	r1, sl
 8003ccc:	4648      	mov	r0, r9
 8003cce:	f003 f879 	bl	8006dc4 <__sprint_r>
 8003cd2:	2800      	cmp	r0, #0
 8003cd4:	d145      	bne.n	8003d62 <_vfprintf_r+0x15fa>
 8003cd6:	f898 3000 	ldrb.w	r3, [r8]
 8003cda:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003cdc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003cde:	441f      	add	r7, r3
 8003ce0:	e7a4      	b.n	8003c2c <_vfprintf_r+0x14c4>
 8003ce2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ce4:	3b01      	subs	r3, #1
 8003ce6:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ce8:	e7ab      	b.n	8003c42 <_vfprintf_r+0x14da>
 8003cea:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003cec:	2b00      	cmp	r3, #0
 8003cee:	d1f8      	bne.n	8003ce2 <_vfprintf_r+0x157a>
 8003cf0:	46b9      	mov	r9, r7
 8003cf2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cf4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003cf6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003cfa:	18fb      	adds	r3, r7, r3
 8003cfc:	4599      	cmp	r9, r3
 8003cfe:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003d02:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003d06:	4693      	mov	fp, r2
 8003d08:	460c      	mov	r4, r1
 8003d0a:	bf28      	it	cs
 8003d0c:	4699      	movcs	r9, r3
 8003d0e:	e424      	b.n	800355a <_vfprintf_r+0xdf2>
 8003d10:	3001      	adds	r0, #1
 8003d12:	4429      	add	r1, r5
 8003d14:	2807      	cmp	r0, #7
 8003d16:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003d1a:	e9c2 6500 	strd	r6, r5, [r2]
 8003d1e:	dcd3      	bgt.n	8003cc8 <_vfprintf_r+0x1560>
 8003d20:	f898 3000 	ldrb.w	r3, [r8]
 8003d24:	3208      	adds	r2, #8
 8003d26:	441f      	add	r7, r3
 8003d28:	e780      	b.n	8003c2c <_vfprintf_r+0x14c4>
 8003d2a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d2c:	4651      	mov	r1, sl
 8003d2e:	4648      	mov	r0, r9
 8003d30:	f003 f848 	bl	8006dc4 <__sprint_r>
 8003d34:	b9a8      	cbnz	r0, 8003d62 <_vfprintf_r+0x15fa>
 8003d36:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d38:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d3a:	e78e      	b.n	8003c5a <_vfprintf_r+0x14f2>
 8003d3c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d3e:	4651      	mov	r1, sl
 8003d40:	4648      	mov	r0, r9
 8003d42:	f003 f83f 	bl	8006dc4 <__sprint_r>
 8003d46:	b960      	cbnz	r0, 8003d62 <_vfprintf_r+0x15fa>
 8003d48:	f898 3000 	ldrb.w	r3, [r8]
 8003d4c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d4e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d50:	e798      	b.n	8003c84 <_vfprintf_r+0x151c>
 8003d52:	4638      	mov	r0, r7
 8003d54:	f7fc fc74 	bl	8000640 <strlen>
 8003d58:	46a9      	mov	r9, r5
 8003d5a:	4603      	mov	r3, r0
 8003d5c:	9009      	str	r0, [sp, #36]	; 0x24
 8003d5e:	f7ff b8f4 	b.w	8002f4a <_vfprintf_r+0x7e2>
 8003d62:	46d1      	mov	r9, sl
 8003d64:	f7ff ba7a 	b.w	800325c <_vfprintf_r+0xaf4>
 8003d68:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d6a:	4619      	mov	r1, r3
 8003d6c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d6e:	4299      	cmp	r1, r3
 8003d70:	f300 8082 	bgt.w	8003e78 <_vfprintf_r+0x1710>
 8003d74:	07c4      	lsls	r4, r0, #31
 8003d76:	f140 816b 	bpl.w	8004050 <_vfprintf_r+0x18e8>
 8003d7a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d7c:	4413      	add	r3, r2
 8003d7e:	9309      	str	r3, [sp, #36]	; 0x24
 8003d80:	0541      	lsls	r1, r0, #21
 8003d82:	d503      	bpl.n	8003d8c <_vfprintf_r+0x1624>
 8003d84:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d86:	2b00      	cmp	r3, #0
 8003d88:	f300 80e6 	bgt.w	8003f58 <_vfprintf_r+0x17f0>
 8003d8c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d8e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d92:	9304      	str	r3, [sp, #16]
 8003d94:	2667      	movs	r6, #103	; 0x67
 8003d96:	2300      	movs	r3, #0
 8003d98:	930f      	str	r3, [sp, #60]	; 0x3c
 8003d9a:	9314      	str	r3, [sp, #80]	; 0x50
 8003d9c:	e586      	b.n	80038ac <_vfprintf_r+0x1144>
 8003d9e:	222d      	movs	r2, #45	; 0x2d
 8003da0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003da4:	f04f 0900 	mov.w	r9, #0
 8003da8:	f7fe be6c 	b.w	8002a84 <_vfprintf_r+0x31c>
 8003dac:	46a1      	mov	r9, r4
 8003dae:	f7ff ba55 	b.w	800325c <_vfprintf_r+0xaf4>
 8003db2:	900a      	str	r0, [sp, #40]	; 0x28
 8003db4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003db8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003dbc:	931f      	str	r3, [sp, #124]	; 0x7c
 8003dbe:	232d      	movs	r3, #45	; 0x2d
 8003dc0:	911e      	str	r1, [sp, #120]	; 0x78
 8003dc2:	930b      	str	r3, [sp, #44]	; 0x2c
 8003dc4:	e619      	b.n	80039fa <_vfprintf_r+0x1292>
 8003dc6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003dc8:	9328      	str	r3, [sp, #160]	; 0xa0
 8003dca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003dcc:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003dd0:	7bd9      	ldrb	r1, [r3, #15]
 8003dd2:	4291      	cmp	r1, r2
 8003dd4:	462b      	mov	r3, r5
 8003dd6:	d109      	bne.n	8003dec <_vfprintf_r+0x1684>
 8003dd8:	2030      	movs	r0, #48	; 0x30
 8003dda:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003dde:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003de0:	1e5a      	subs	r2, r3, #1
 8003de2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003de4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003de8:	4291      	cmp	r1, r2
 8003dea:	d0f6      	beq.n	8003dda <_vfprintf_r+0x1672>
 8003dec:	2a39      	cmp	r2, #57	; 0x39
 8003dee:	bf0b      	itete	eq
 8003df0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003df2:	3201      	addne	r2, #1
 8003df4:	7a92      	ldrbeq	r2, [r2, #10]
 8003df6:	b2d2      	uxtbne	r2, r2
 8003df8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003dfc:	e682      	b.n	8003b04 <_vfprintf_r+0x139c>
 8003dfe:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003e02:	f43f ad9f 	beq.w	8003944 <_vfprintf_r+0x11dc>
 8003e06:	9a05      	ldr	r2, [sp, #20]
 8003e08:	701a      	strb	r2, [r3, #0]
 8003e0a:	4657      	mov	r7, sl
 8003e0c:	f7fe bf52 	b.w	8002cb4 <_vfprintf_r+0x54c>
 8003e10:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e12:	9907      	ldr	r1, [sp, #28]
 8003e14:	9803      	ldr	r0, [sp, #12]
 8003e16:	f002 ffd5 	bl	8006dc4 <__sprint_r>
 8003e1a:	2800      	cmp	r0, #0
 8003e1c:	f47f aa1c 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003e20:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e22:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e26:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e2a:	e571      	b.n	8003910 <_vfprintf_r+0x11a8>
 8003e2c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e2e:	2b00      	cmp	r3, #0
 8003e30:	f340 8164 	ble.w	80040fc <_vfprintf_r+0x1994>
 8003e34:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e36:	f1b9 0f00 	cmp.w	r9, #0
 8003e3a:	f040 8103 	bne.w	8004044 <_vfprintf_r+0x18dc>
 8003e3e:	07c6      	lsls	r6, r0, #31
 8003e40:	f100 8100 	bmi.w	8004044 <_vfprintf_r+0x18dc>
 8003e44:	9309      	str	r3, [sp, #36]	; 0x24
 8003e46:	2666      	movs	r6, #102	; 0x66
 8003e48:	0543      	lsls	r3, r0, #21
 8003e4a:	f100 8086 	bmi.w	8003f5a <_vfprintf_r+0x17f2>
 8003e4e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e50:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e54:	9304      	str	r3, [sp, #16]
 8003e56:	e79e      	b.n	8003d96 <_vfprintf_r+0x162e>
 8003e58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e5a:	9907      	ldr	r1, [sp, #28]
 8003e5c:	9803      	ldr	r0, [sp, #12]
 8003e5e:	f002 ffb1 	bl	8006dc4 <__sprint_r>
 8003e62:	2800      	cmp	r0, #0
 8003e64:	f47f a9f8 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003e68:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e6a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003e6c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e6e:	1ad3      	subs	r3, r2, r3
 8003e70:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e74:	f7ff bb90 	b.w	8003598 <_vfprintf_r+0xe30>
 8003e78:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e7a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e7c:	4413      	add	r3, r2
 8003e7e:	9309      	str	r3, [sp, #36]	; 0x24
 8003e80:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e82:	2b00      	cmp	r3, #0
 8003e84:	f340 8149 	ble.w	800411a <_vfprintf_r+0x19b2>
 8003e88:	2667      	movs	r6, #103	; 0x67
 8003e8a:	e7dd      	b.n	8003e48 <_vfprintf_r+0x16e0>
 8003e8c:	2330      	movs	r3, #48	; 0x30
 8003e8e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003e92:	2358      	movs	r3, #88	; 0x58
 8003e94:	e595      	b.n	80039c2 <_vfprintf_r+0x125a>
 8003e96:	9803      	ldr	r0, [sp, #12]
 8003e98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e9a:	4649      	mov	r1, r9
 8003e9c:	f002 ff92 	bl	8006dc4 <__sprint_r>
 8003ea0:	2800      	cmp	r0, #0
 8003ea2:	f47f a9e0 	bne.w	8003266 <_vfprintf_r+0xafe>
 8003ea6:	f7fe bf0f 	b.w	8002cc8 <_vfprintf_r+0x560>
 8003eaa:	a824      	add	r0, sp, #144	; 0x90
 8003eac:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003eb0:	f002 fe90 	bl	8006bd4 <frexp>
 8003eb4:	2200      	movs	r2, #0
 8003eb6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003eba:	ec51 0b10 	vmov	r0, r1, d0
 8003ebe:	f7fc fe3b 	bl	8000b38 <__aeabi_dmul>
 8003ec2:	2200      	movs	r2, #0
 8003ec4:	2300      	movs	r3, #0
 8003ec6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003eca:	f7fd f89d 	bl	8001008 <__aeabi_dcmpeq>
 8003ece:	b108      	cbz	r0, 8003ed4 <_vfprintf_r+0x176c>
 8003ed0:	2301      	movs	r3, #1
 8003ed2:	9324      	str	r3, [sp, #144]	; 0x90
 8003ed4:	4b02      	ldr	r3, [pc, #8]	; (8003ee0 <_vfprintf_r+0x1778>)
 8003ed6:	9309      	str	r3, [sp, #36]	; 0x24
 8003ed8:	e5ac      	b.n	8003a34 <_vfprintf_r+0x12cc>
 8003eda:	bf00      	nop
 8003edc:	08007598 	.word	0x08007598
 8003ee0:	08007554 	.word	0x08007554
 8003ee4:	425d      	negs	r5, r3
 8003ee6:	3310      	adds	r3, #16
 8003ee8:	4bb9      	ldr	r3, [pc, #740]	; (80041d0 <_vfprintf_r+0x1a68>)
 8003eea:	f280 8097 	bge.w	800401c <_vfprintf_r+0x18b4>
 8003eee:	4619      	mov	r1, r3
 8003ef0:	2610      	movs	r6, #16
 8003ef2:	4623      	mov	r3, r4
 8003ef4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003ef8:	460c      	mov	r4, r1
 8003efa:	e005      	b.n	8003f08 <_vfprintf_r+0x17a0>
 8003efc:	f10b 0b08 	add.w	fp, fp, #8
 8003f00:	3d10      	subs	r5, #16
 8003f02:	2d10      	cmp	r5, #16
 8003f04:	f340 8087 	ble.w	8004016 <_vfprintf_r+0x18ae>
 8003f08:	3201      	adds	r2, #1
 8003f0a:	3310      	adds	r3, #16
 8003f0c:	2a07      	cmp	r2, #7
 8003f0e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003f12:	e9cb 4600 	strd	r4, r6, [fp]
 8003f16:	ddf1      	ble.n	8003efc <_vfprintf_r+0x1794>
 8003f18:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f1a:	9907      	ldr	r1, [sp, #28]
 8003f1c:	4648      	mov	r0, r9
 8003f1e:	f002 ff51 	bl	8006dc4 <__sprint_r>
 8003f22:	2800      	cmp	r0, #0
 8003f24:	f47f a998 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8003f28:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003f2c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f30:	e7e6      	b.n	8003f00 <_vfprintf_r+0x1798>
 8003f32:	f109 0101 	add.w	r1, r9, #1
 8003f36:	9803      	ldr	r0, [sp, #12]
 8003f38:	f001 fe80 	bl	8005c3c <_malloc_r>
 8003f3c:	4607      	mov	r7, r0
 8003f3e:	2800      	cmp	r0, #0
 8003f40:	f000 813b 	beq.w	80041ba <_vfprintf_r+0x1a52>
 8003f44:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003f48:	930e      	str	r3, [sp, #56]	; 0x38
 8003f4a:	f026 0320 	bic.w	r3, r6, #32
 8003f4e:	9304      	str	r3, [sp, #16]
 8003f50:	46a0      	mov	r8, r4
 8003f52:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003f54:	900a      	str	r0, [sp, #40]	; 0x28
 8003f56:	e547      	b.n	80039e8 <_vfprintf_r+0x1280>
 8003f58:	2667      	movs	r6, #103	; 0x67
 8003f5a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003f5c:	2200      	movs	r2, #0
 8003f5e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003f60:	9214      	str	r2, [sp, #80]	; 0x50
 8003f62:	7803      	ldrb	r3, [r0, #0]
 8003f64:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003f66:	2bff      	cmp	r3, #255	; 0xff
 8003f68:	d00c      	beq.n	8003f84 <_vfprintf_r+0x181c>
 8003f6a:	4293      	cmp	r3, r2
 8003f6c:	da0a      	bge.n	8003f84 <_vfprintf_r+0x181c>
 8003f6e:	7841      	ldrb	r1, [r0, #1]
 8003f70:	1ad2      	subs	r2, r2, r3
 8003f72:	b1a9      	cbz	r1, 8003fa0 <_vfprintf_r+0x1838>
 8003f74:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f76:	3301      	adds	r3, #1
 8003f78:	9314      	str	r3, [sp, #80]	; 0x50
 8003f7a:	460b      	mov	r3, r1
 8003f7c:	2bff      	cmp	r3, #255	; 0xff
 8003f7e:	f100 0001 	add.w	r0, r0, #1
 8003f82:	d1f2      	bne.n	8003f6a <_vfprintf_r+0x1802>
 8003f84:	9211      	str	r2, [sp, #68]	; 0x44
 8003f86:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f88:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003f8a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003f8c:	901a      	str	r0, [sp, #104]	; 0x68
 8003f8e:	4413      	add	r3, r2
 8003f90:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003f92:	fb02 1303 	mla	r3, r2, r3, r1
 8003f96:	9309      	str	r3, [sp, #36]	; 0x24
 8003f98:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f9c:	9304      	str	r3, [sp, #16]
 8003f9e:	e485      	b.n	80038ac <_vfprintf_r+0x1144>
 8003fa0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003fa2:	3101      	adds	r1, #1
 8003fa4:	910f      	str	r1, [sp, #60]	; 0x3c
 8003fa6:	e7de      	b.n	8003f66 <_vfprintf_r+0x17fe>
 8003fa8:	aa28      	add	r2, sp, #160	; 0xa0
 8003faa:	ab25      	add	r3, sp, #148	; 0x94
 8003fac:	e9cd 3200 	strd	r3, r2, [sp]
 8003fb0:	2103      	movs	r1, #3
 8003fb2:	ab24      	add	r3, sp, #144	; 0x90
 8003fb4:	464a      	mov	r2, r9
 8003fb6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003fba:	9803      	ldr	r0, [sp, #12]
 8003fbc:	f000 fa5c 	bl	8004478 <_dtoa_r>
 8003fc0:	464d      	mov	r5, r9
 8003fc2:	4607      	mov	r7, r0
 8003fc4:	eb00 0409 	add.w	r4, r0, r9
 8003fc8:	783b      	ldrb	r3, [r7, #0]
 8003fca:	2b30      	cmp	r3, #48	; 0x30
 8003fcc:	f000 80be 	beq.w	800414c <_vfprintf_r+0x19e4>
 8003fd0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003fd2:	442c      	add	r4, r5
 8003fd4:	2200      	movs	r2, #0
 8003fd6:	2300      	movs	r3, #0
 8003fd8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003fdc:	f7fd f814 	bl	8001008 <__aeabi_dcmpeq>
 8003fe0:	b108      	cbz	r0, 8003fe6 <_vfprintf_r+0x187e>
 8003fe2:	4623      	mov	r3, r4
 8003fe4:	e413      	b.n	800380e <_vfprintf_r+0x10a6>
 8003fe6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003fe8:	42a3      	cmp	r3, r4
 8003fea:	f4bf ac10 	bcs.w	800380e <_vfprintf_r+0x10a6>
 8003fee:	2130      	movs	r1, #48	; 0x30
 8003ff0:	1c5a      	adds	r2, r3, #1
 8003ff2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003ff4:	7019      	strb	r1, [r3, #0]
 8003ff6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ff8:	429c      	cmp	r4, r3
 8003ffa:	d8f9      	bhi.n	8003ff0 <_vfprintf_r+0x1888>
 8003ffc:	e407      	b.n	800380e <_vfprintf_r+0x10a6>
 8003ffe:	197c      	adds	r4, r7, r5
 8004000:	e7e8      	b.n	8003fd4 <_vfprintf_r+0x186c>
 8004002:	f1b9 0f00 	cmp.w	r9, #0
 8004006:	f000 8092 	beq.w	800412e <_vfprintf_r+0x19c6>
 800400a:	900a      	str	r0, [sp, #40]	; 0x28
 800400c:	e4ec      	b.n	80039e8 <_vfprintf_r+0x1280>
 800400e:	900a      	str	r0, [sp, #40]	; 0x28
 8004010:	f04f 0906 	mov.w	r9, #6
 8004014:	e4e8      	b.n	80039e8 <_vfprintf_r+0x1280>
 8004016:	4621      	mov	r1, r4
 8004018:	461c      	mov	r4, r3
 800401a:	460b      	mov	r3, r1
 800401c:	3201      	adds	r2, #1
 800401e:	442c      	add	r4, r5
 8004020:	2a07      	cmp	r2, #7
 8004022:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004026:	e9cb 3500 	strd	r3, r5, [fp]
 800402a:	f300 80a9 	bgt.w	8004180 <_vfprintf_r+0x1a18>
 800402e:	f10b 0b08 	add.w	fp, fp, #8
 8004032:	e470      	b.n	8003916 <_vfprintf_r+0x11ae>
 8004034:	469a      	mov	sl, r3
 8004036:	f7ff bb37 	b.w	80036a8 <_vfprintf_r+0xf40>
 800403a:	2301      	movs	r3, #1
 800403c:	9324      	str	r3, [sp, #144]	; 0x90
 800403e:	4b65      	ldr	r3, [pc, #404]	; (80041d4 <_vfprintf_r+0x1a6c>)
 8004040:	9309      	str	r3, [sp, #36]	; 0x24
 8004042:	e4f7      	b.n	8003a34 <_vfprintf_r+0x12cc>
 8004044:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004046:	4413      	add	r3, r2
 8004048:	444b      	add	r3, r9
 800404a:	9309      	str	r3, [sp, #36]	; 0x24
 800404c:	2666      	movs	r6, #102	; 0x66
 800404e:	e6fb      	b.n	8003e48 <_vfprintf_r+0x16e0>
 8004050:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004052:	9309      	str	r3, [sp, #36]	; 0x24
 8004054:	e694      	b.n	8003d80 <_vfprintf_r+0x1618>
 8004056:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800405a:	4664      	mov	r4, ip
 800405c:	4d5e      	ldr	r5, [pc, #376]	; (80041d8 <_vfprintf_r+0x1a70>)
 800405e:	e000      	b.n	8004062 <_vfprintf_r+0x18fa>
 8004060:	4614      	mov	r4, r2
 8004062:	fba5 1203 	umull	r1, r2, r5, r3
 8004066:	08d2      	lsrs	r2, r2, #3
 8004068:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800406c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004070:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004074:	4613      	mov	r3, r2
 8004076:	2b09      	cmp	r3, #9
 8004078:	f804 1c01 	strb.w	r1, [r4, #-1]
 800407c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004080:	dcee      	bgt.n	8004060 <_vfprintf_r+0x18f8>
 8004082:	3330      	adds	r3, #48	; 0x30
 8004084:	3c02      	subs	r4, #2
 8004086:	b2db      	uxtb	r3, r3
 8004088:	45a4      	cmp	ip, r4
 800408a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800408e:	f240 8090 	bls.w	80041b2 <_vfprintf_r+0x1a4a>
 8004092:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004096:	4611      	mov	r1, r2
 8004098:	e001      	b.n	800409e <_vfprintf_r+0x1936>
 800409a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800409e:	f804 3b01 	strb.w	r3, [r4], #1
 80040a2:	458c      	cmp	ip, r1
 80040a4:	d1f9      	bne.n	800409a <_vfprintf_r+0x1932>
 80040a6:	ab2a      	add	r3, sp, #168	; 0xa8
 80040a8:	1a9b      	subs	r3, r3, r2
 80040aa:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80040ae:	4413      	add	r3, r2
 80040b0:	f7ff bbe3 	b.w	800387a <_vfprintf_r+0x1112>
 80040b4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80040b6:	4f49      	ldr	r7, [pc, #292]	; (80041dc <_vfprintf_r+0x1a74>)
 80040b8:	2b00      	cmp	r3, #0
 80040ba:	bfb6      	itet	lt
 80040bc:	222d      	movlt	r2, #45	; 0x2d
 80040be:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80040c2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80040c6:	4b46      	ldr	r3, [pc, #280]	; (80041e0 <_vfprintf_r+0x1a78>)
 80040c8:	f7fe bf02 	b.w	8002ed0 <_vfprintf_r+0x768>
 80040cc:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80040d0:	f7ff b8c9 	b.w	8003266 <_vfprintf_r+0xafe>
 80040d4:	aa28      	add	r2, sp, #160	; 0xa0
 80040d6:	ab25      	add	r3, sp, #148	; 0x94
 80040d8:	e9cd 3200 	strd	r3, r2, [sp]
 80040dc:	2103      	movs	r1, #3
 80040de:	ab24      	add	r3, sp, #144	; 0x90
 80040e0:	464a      	mov	r2, r9
 80040e2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80040e6:	9803      	ldr	r0, [sp, #12]
 80040e8:	f000 f9c6 	bl	8004478 <_dtoa_r>
 80040ec:	464d      	mov	r5, r9
 80040ee:	4607      	mov	r7, r0
 80040f0:	2e46      	cmp	r6, #70	; 0x46
 80040f2:	eb07 0405 	add.w	r4, r7, r5
 80040f6:	f43f af67 	beq.w	8003fc8 <_vfprintf_r+0x1860>
 80040fa:	e76b      	b.n	8003fd4 <_vfprintf_r+0x186c>
 80040fc:	f1b9 0f00 	cmp.w	r9, #0
 8004100:	d131      	bne.n	8004166 <_vfprintf_r+0x19fe>
 8004102:	07c5      	lsls	r5, r0, #31
 8004104:	d42f      	bmi.n	8004166 <_vfprintf_r+0x19fe>
 8004106:	2301      	movs	r3, #1
 8004108:	9304      	str	r3, [sp, #16]
 800410a:	9309      	str	r3, [sp, #36]	; 0x24
 800410c:	2666      	movs	r6, #102	; 0x66
 800410e:	e642      	b.n	8003d96 <_vfprintf_r+0x162e>
 8004110:	07c3      	lsls	r3, r0, #31
 8004112:	f57f abbf 	bpl.w	8003894 <_vfprintf_r+0x112c>
 8004116:	f7ff bbb9 	b.w	800388c <_vfprintf_r+0x1124>
 800411a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800411c:	f1c3 0301 	rsb	r3, r3, #1
 8004120:	441a      	add	r2, r3
 8004122:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004126:	9209      	str	r2, [sp, #36]	; 0x24
 8004128:	9304      	str	r3, [sp, #16]
 800412a:	2667      	movs	r6, #103	; 0x67
 800412c:	e633      	b.n	8003d96 <_vfprintf_r+0x162e>
 800412e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004132:	f04f 0901 	mov.w	r9, #1
 8004136:	e457      	b.n	80039e8 <_vfprintf_r+0x1280>
 8004138:	465a      	mov	r2, fp
 800413a:	e511      	b.n	8003b60 <_vfprintf_r+0x13f8>
 800413c:	2e47      	cmp	r6, #71	; 0x47
 800413e:	f47f af5e 	bne.w	8003ffe <_vfprintf_r+0x1896>
 8004142:	f018 0f01 	tst.w	r8, #1
 8004146:	f43f ab61 	beq.w	800380c <_vfprintf_r+0x10a4>
 800414a:	e7d1      	b.n	80040f0 <_vfprintf_r+0x1988>
 800414c:	2200      	movs	r2, #0
 800414e:	2300      	movs	r3, #0
 8004150:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004154:	f7fc ff58 	bl	8001008 <__aeabi_dcmpeq>
 8004158:	2800      	cmp	r0, #0
 800415a:	f47f af39 	bne.w	8003fd0 <_vfprintf_r+0x1868>
 800415e:	f1c5 0501 	rsb	r5, r5, #1
 8004162:	9524      	str	r5, [sp, #144]	; 0x90
 8004164:	e735      	b.n	8003fd2 <_vfprintf_r+0x186a>
 8004166:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004168:	3301      	adds	r3, #1
 800416a:	444b      	add	r3, r9
 800416c:	9309      	str	r3, [sp, #36]	; 0x24
 800416e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004172:	9304      	str	r3, [sp, #16]
 8004174:	2666      	movs	r6, #102	; 0x66
 8004176:	e60e      	b.n	8003d96 <_vfprintf_r+0x162e>
 8004178:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800417c:	f7ff bb7a 	b.w	8003874 <_vfprintf_r+0x110c>
 8004180:	aa2a      	add	r2, sp, #168	; 0xa8
 8004182:	9907      	ldr	r1, [sp, #28]
 8004184:	9803      	ldr	r0, [sp, #12]
 8004186:	f002 fe1d 	bl	8006dc4 <__sprint_r>
 800418a:	2800      	cmp	r0, #0
 800418c:	f47f a864 	bne.w	8003258 <_vfprintf_r+0xaf0>
 8004190:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004194:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004198:	f7ff bbbd 	b.w	8003916 <_vfprintf_r+0x11ae>
 800419c:	9908      	ldr	r1, [sp, #32]
 800419e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80041a2:	680b      	ldr	r3, [r1, #0]
 80041a4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80041a8:	1d0b      	adds	r3, r1, #4
 80041aa:	4692      	mov	sl, r2
 80041ac:	9308      	str	r3, [sp, #32]
 80041ae:	f7fe bb59 	b.w	8002864 <_vfprintf_r+0xfc>
 80041b2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80041b6:	f7ff bb60 	b.w	800387a <_vfprintf_r+0x1112>
 80041ba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80041be:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80041c2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80041c6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80041ca:	f7ff b84c 	b.w	8003266 <_vfprintf_r+0xafe>
 80041ce:	bf00      	nop
 80041d0:	08007598 	.word	0x08007598
 80041d4:	08007568 	.word	0x08007568
 80041d8:	cccccccd 	.word	0xcccccccd
 80041dc:	08007550 	.word	0x08007550
 80041e0:	0800754c 	.word	0x0800754c

080041e4 <__sbprintf>:
 80041e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80041e8:	460c      	mov	r4, r1
 80041ea:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80041ee:	8989      	ldrh	r1, [r1, #12]
 80041f0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80041f2:	89e5      	ldrh	r5, [r4, #14]
 80041f4:	9619      	str	r6, [sp, #100]	; 0x64
 80041f6:	f021 0102 	bic.w	r1, r1, #2
 80041fa:	4606      	mov	r6, r0
 80041fc:	69e0      	ldr	r0, [r4, #28]
 80041fe:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004202:	4617      	mov	r7, r2
 8004204:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004208:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800420a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800420e:	4698      	mov	r8, r3
 8004210:	ad1a      	add	r5, sp, #104	; 0x68
 8004212:	2300      	movs	r3, #0
 8004214:	9007      	str	r0, [sp, #28]
 8004216:	a816      	add	r0, sp, #88	; 0x58
 8004218:	9209      	str	r2, [sp, #36]	; 0x24
 800421a:	9306      	str	r3, [sp, #24]
 800421c:	9500      	str	r5, [sp, #0]
 800421e:	9504      	str	r5, [sp, #16]
 8004220:	9102      	str	r1, [sp, #8]
 8004222:	9105      	str	r1, [sp, #20]
 8004224:	f001 fc8a 	bl	8005b3c <__retarget_lock_init_recursive>
 8004228:	4643      	mov	r3, r8
 800422a:	463a      	mov	r2, r7
 800422c:	4669      	mov	r1, sp
 800422e:	4630      	mov	r0, r6
 8004230:	f7fe fa9a 	bl	8002768 <_vfprintf_r>
 8004234:	1e05      	subs	r5, r0, #0
 8004236:	db07      	blt.n	8004248 <__sbprintf+0x64>
 8004238:	4630      	mov	r0, r6
 800423a:	4669      	mov	r1, sp
 800423c:	f001 f8d6 	bl	80053ec <_fflush_r>
 8004240:	2800      	cmp	r0, #0
 8004242:	bf18      	it	ne
 8004244:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004248:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800424c:	065b      	lsls	r3, r3, #25
 800424e:	d503      	bpl.n	8004258 <__sbprintf+0x74>
 8004250:	89a3      	ldrh	r3, [r4, #12]
 8004252:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004256:	81a3      	strh	r3, [r4, #12]
 8004258:	9816      	ldr	r0, [sp, #88]	; 0x58
 800425a:	f001 fc71 	bl	8005b40 <__retarget_lock_close_recursive>
 800425e:	4628      	mov	r0, r5
 8004260:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004264:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004268 <__swsetup_r>:
 8004268:	b538      	push	{r3, r4, r5, lr}
 800426a:	4b31      	ldr	r3, [pc, #196]	; (8004330 <__swsetup_r+0xc8>)
 800426c:	681b      	ldr	r3, [r3, #0]
 800426e:	4605      	mov	r5, r0
 8004270:	460c      	mov	r4, r1
 8004272:	b113      	cbz	r3, 800427a <__swsetup_r+0x12>
 8004274:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004276:	2a00      	cmp	r2, #0
 8004278:	d03a      	beq.n	80042f0 <__swsetup_r+0x88>
 800427a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800427e:	b293      	uxth	r3, r2
 8004280:	0718      	lsls	r0, r3, #28
 8004282:	d50c      	bpl.n	800429e <__swsetup_r+0x36>
 8004284:	6920      	ldr	r0, [r4, #16]
 8004286:	b1a8      	cbz	r0, 80042b4 <__swsetup_r+0x4c>
 8004288:	f013 0201 	ands.w	r2, r3, #1
 800428c:	d020      	beq.n	80042d0 <__swsetup_r+0x68>
 800428e:	6963      	ldr	r3, [r4, #20]
 8004290:	2200      	movs	r2, #0
 8004292:	425b      	negs	r3, r3
 8004294:	61a3      	str	r3, [r4, #24]
 8004296:	60a2      	str	r2, [r4, #8]
 8004298:	b300      	cbz	r0, 80042dc <__swsetup_r+0x74>
 800429a:	2000      	movs	r0, #0
 800429c:	bd38      	pop	{r3, r4, r5, pc}
 800429e:	06d9      	lsls	r1, r3, #27
 80042a0:	d53e      	bpl.n	8004320 <__swsetup_r+0xb8>
 80042a2:	0758      	lsls	r0, r3, #29
 80042a4:	d428      	bmi.n	80042f8 <__swsetup_r+0x90>
 80042a6:	6920      	ldr	r0, [r4, #16]
 80042a8:	f042 0308 	orr.w	r3, r2, #8
 80042ac:	81a3      	strh	r3, [r4, #12]
 80042ae:	b29b      	uxth	r3, r3
 80042b0:	2800      	cmp	r0, #0
 80042b2:	d1e9      	bne.n	8004288 <__swsetup_r+0x20>
 80042b4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80042b8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80042bc:	d0e4      	beq.n	8004288 <__swsetup_r+0x20>
 80042be:	4628      	mov	r0, r5
 80042c0:	4621      	mov	r1, r4
 80042c2:	f001 fc71 	bl	8005ba8 <__smakebuf_r>
 80042c6:	89a3      	ldrh	r3, [r4, #12]
 80042c8:	6920      	ldr	r0, [r4, #16]
 80042ca:	f013 0201 	ands.w	r2, r3, #1
 80042ce:	d1de      	bne.n	800428e <__swsetup_r+0x26>
 80042d0:	0799      	lsls	r1, r3, #30
 80042d2:	bf58      	it	pl
 80042d4:	6962      	ldrpl	r2, [r4, #20]
 80042d6:	60a2      	str	r2, [r4, #8]
 80042d8:	2800      	cmp	r0, #0
 80042da:	d1de      	bne.n	800429a <__swsetup_r+0x32>
 80042dc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80042e0:	061a      	lsls	r2, r3, #24
 80042e2:	d5db      	bpl.n	800429c <__swsetup_r+0x34>
 80042e4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80042e8:	81a3      	strh	r3, [r4, #12]
 80042ea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80042ee:	bd38      	pop	{r3, r4, r5, pc}
 80042f0:	4618      	mov	r0, r3
 80042f2:	f001 f8d7 	bl	80054a4 <__sinit>
 80042f6:	e7c0      	b.n	800427a <__swsetup_r+0x12>
 80042f8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80042fa:	b151      	cbz	r1, 8004312 <__swsetup_r+0xaa>
 80042fc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004300:	4299      	cmp	r1, r3
 8004302:	d004      	beq.n	800430e <__swsetup_r+0xa6>
 8004304:	4628      	mov	r0, r5
 8004306:	f001 f96f 	bl	80055e8 <_free_r>
 800430a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800430e:	2300      	movs	r3, #0
 8004310:	6323      	str	r3, [r4, #48]	; 0x30
 8004312:	2300      	movs	r3, #0
 8004314:	6920      	ldr	r0, [r4, #16]
 8004316:	6063      	str	r3, [r4, #4]
 8004318:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800431c:	6020      	str	r0, [r4, #0]
 800431e:	e7c3      	b.n	80042a8 <__swsetup_r+0x40>
 8004320:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004324:	2309      	movs	r3, #9
 8004326:	602b      	str	r3, [r5, #0]
 8004328:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800432c:	81a2      	strh	r2, [r4, #12]
 800432e:	bd38      	pop	{r3, r4, r5, pc}
 8004330:	20000018 	.word	0x20000018

08004334 <register_fini>:
 8004334:	4b02      	ldr	r3, [pc, #8]	; (8004340 <register_fini+0xc>)
 8004336:	b113      	cbz	r3, 800433e <register_fini+0xa>
 8004338:	4802      	ldr	r0, [pc, #8]	; (8004344 <register_fini+0x10>)
 800433a:	f000 b805 	b.w	8004348 <atexit>
 800433e:	4770      	bx	lr
 8004340:	00000000 	.word	0x00000000
 8004344:	08005515 	.word	0x08005515

08004348 <atexit>:
 8004348:	2300      	movs	r3, #0
 800434a:	4601      	mov	r1, r0
 800434c:	461a      	mov	r2, r3
 800434e:	4618      	mov	r0, r3
 8004350:	f002 bd58 	b.w	8006e04 <__register_exitproc>

08004354 <quorem>:
 8004354:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004358:	6903      	ldr	r3, [r0, #16]
 800435a:	690f      	ldr	r7, [r1, #16]
 800435c:	42bb      	cmp	r3, r7
 800435e:	b083      	sub	sp, #12
 8004360:	f2c0 8086 	blt.w	8004470 <quorem+0x11c>
 8004364:	3f01      	subs	r7, #1
 8004366:	f101 0914 	add.w	r9, r1, #20
 800436a:	f100 0a14 	add.w	sl, r0, #20
 800436e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004372:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004376:	00bc      	lsls	r4, r7, #2
 8004378:	3201      	adds	r2, #1
 800437a:	fbb3 f8f2 	udiv	r8, r3, r2
 800437e:	eb0a 0304 	add.w	r3, sl, r4
 8004382:	9400      	str	r4, [sp, #0]
 8004384:	eb09 0b04 	add.w	fp, r9, r4
 8004388:	9301      	str	r3, [sp, #4]
 800438a:	f1b8 0f00 	cmp.w	r8, #0
 800438e:	d038      	beq.n	8004402 <quorem+0xae>
 8004390:	2500      	movs	r5, #0
 8004392:	462e      	mov	r6, r5
 8004394:	46ce      	mov	lr, r9
 8004396:	46d4      	mov	ip, sl
 8004398:	f85e 4b04 	ldr.w	r4, [lr], #4
 800439c:	f8dc 3000 	ldr.w	r3, [ip]
 80043a0:	b2a2      	uxth	r2, r4
 80043a2:	fb08 5502 	mla	r5, r8, r2, r5
 80043a6:	0c22      	lsrs	r2, r4, #16
 80043a8:	0c2c      	lsrs	r4, r5, #16
 80043aa:	fb08 4202 	mla	r2, r8, r2, r4
 80043ae:	b2ad      	uxth	r5, r5
 80043b0:	1b75      	subs	r5, r6, r5
 80043b2:	b296      	uxth	r6, r2
 80043b4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80043b8:	fa15 f383 	uxtah	r3, r5, r3
 80043bc:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80043c0:	b29b      	uxth	r3, r3
 80043c2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80043c6:	45f3      	cmp	fp, lr
 80043c8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80043cc:	f84c 3b04 	str.w	r3, [ip], #4
 80043d0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80043d4:	d2e0      	bcs.n	8004398 <quorem+0x44>
 80043d6:	9b00      	ldr	r3, [sp, #0]
 80043d8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80043dc:	b98b      	cbnz	r3, 8004402 <quorem+0xae>
 80043de:	9a01      	ldr	r2, [sp, #4]
 80043e0:	1f13      	subs	r3, r2, #4
 80043e2:	459a      	cmp	sl, r3
 80043e4:	d20c      	bcs.n	8004400 <quorem+0xac>
 80043e6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80043ea:	b94b      	cbnz	r3, 8004400 <quorem+0xac>
 80043ec:	f1a2 0308 	sub.w	r3, r2, #8
 80043f0:	e002      	b.n	80043f8 <quorem+0xa4>
 80043f2:	681a      	ldr	r2, [r3, #0]
 80043f4:	3b04      	subs	r3, #4
 80043f6:	b91a      	cbnz	r2, 8004400 <quorem+0xac>
 80043f8:	459a      	cmp	sl, r3
 80043fa:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80043fe:	d3f8      	bcc.n	80043f2 <quorem+0x9e>
 8004400:	6107      	str	r7, [r0, #16]
 8004402:	4604      	mov	r4, r0
 8004404:	f002 f944 	bl	8006690 <__mcmp>
 8004408:	2800      	cmp	r0, #0
 800440a:	db2d      	blt.n	8004468 <quorem+0x114>
 800440c:	f108 0801 	add.w	r8, r8, #1
 8004410:	4655      	mov	r5, sl
 8004412:	2300      	movs	r3, #0
 8004414:	f859 1b04 	ldr.w	r1, [r9], #4
 8004418:	6828      	ldr	r0, [r5, #0]
 800441a:	b28a      	uxth	r2, r1
 800441c:	1a9a      	subs	r2, r3, r2
 800441e:	0c0b      	lsrs	r3, r1, #16
 8004420:	fa12 f280 	uxtah	r2, r2, r0
 8004424:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004428:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800442c:	b292      	uxth	r2, r2
 800442e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004432:	45cb      	cmp	fp, r9
 8004434:	f845 2b04 	str.w	r2, [r5], #4
 8004438:	ea4f 4323 	mov.w	r3, r3, asr #16
 800443c:	d2ea      	bcs.n	8004414 <quorem+0xc0>
 800443e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004442:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004446:	b97a      	cbnz	r2, 8004468 <quorem+0x114>
 8004448:	1f1a      	subs	r2, r3, #4
 800444a:	4592      	cmp	sl, r2
 800444c:	d20b      	bcs.n	8004466 <quorem+0x112>
 800444e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004452:	b942      	cbnz	r2, 8004466 <quorem+0x112>
 8004454:	3b08      	subs	r3, #8
 8004456:	e002      	b.n	800445e <quorem+0x10a>
 8004458:	681a      	ldr	r2, [r3, #0]
 800445a:	3b04      	subs	r3, #4
 800445c:	b91a      	cbnz	r2, 8004466 <quorem+0x112>
 800445e:	459a      	cmp	sl, r3
 8004460:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004464:	d3f8      	bcc.n	8004458 <quorem+0x104>
 8004466:	6127      	str	r7, [r4, #16]
 8004468:	4640      	mov	r0, r8
 800446a:	b003      	add	sp, #12
 800446c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004470:	2000      	movs	r0, #0
 8004472:	b003      	add	sp, #12
 8004474:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004478 <_dtoa_r>:
 8004478:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800447c:	ec55 4b10 	vmov	r4, r5, d0
 8004480:	b09b      	sub	sp, #108	; 0x6c
 8004482:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004484:	9102      	str	r1, [sp, #8]
 8004486:	4681      	mov	r9, r0
 8004488:	9207      	str	r2, [sp, #28]
 800448a:	9305      	str	r3, [sp, #20]
 800448c:	e9cd 4500 	strd	r4, r5, [sp]
 8004490:	b156      	cbz	r6, 80044a8 <_dtoa_r+0x30>
 8004492:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004494:	6072      	str	r2, [r6, #4]
 8004496:	2301      	movs	r3, #1
 8004498:	4093      	lsls	r3, r2
 800449a:	60b3      	str	r3, [r6, #8]
 800449c:	4631      	mov	r1, r6
 800449e:	f001 ff07 	bl	80062b0 <_Bfree>
 80044a2:	2300      	movs	r3, #0
 80044a4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80044a8:	f1b5 0800 	subs.w	r8, r5, #0
 80044ac:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80044ae:	bfb4      	ite	lt
 80044b0:	2301      	movlt	r3, #1
 80044b2:	2300      	movge	r3, #0
 80044b4:	6013      	str	r3, [r2, #0]
 80044b6:	4b76      	ldr	r3, [pc, #472]	; (8004690 <_dtoa_r+0x218>)
 80044b8:	bfbc      	itt	lt
 80044ba:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80044be:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80044c2:	ea33 0308 	bics.w	r3, r3, r8
 80044c6:	f000 80a6 	beq.w	8004616 <_dtoa_r+0x19e>
 80044ca:	e9dd 6700 	ldrd	r6, r7, [sp]
 80044ce:	2200      	movs	r2, #0
 80044d0:	2300      	movs	r3, #0
 80044d2:	4630      	mov	r0, r6
 80044d4:	4639      	mov	r1, r7
 80044d6:	f7fc fd97 	bl	8001008 <__aeabi_dcmpeq>
 80044da:	4605      	mov	r5, r0
 80044dc:	b178      	cbz	r0, 80044fe <_dtoa_r+0x86>
 80044de:	9a05      	ldr	r2, [sp, #20]
 80044e0:	2301      	movs	r3, #1
 80044e2:	6013      	str	r3, [r2, #0]
 80044e4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80044e6:	2b00      	cmp	r3, #0
 80044e8:	f000 80c0 	beq.w	800466c <_dtoa_r+0x1f4>
 80044ec:	4b69      	ldr	r3, [pc, #420]	; (8004694 <_dtoa_r+0x21c>)
 80044ee:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80044f0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80044f4:	6013      	str	r3, [r2, #0]
 80044f6:	4658      	mov	r0, fp
 80044f8:	b01b      	add	sp, #108	; 0x6c
 80044fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80044fe:	aa18      	add	r2, sp, #96	; 0x60
 8004500:	a919      	add	r1, sp, #100	; 0x64
 8004502:	ec47 6b10 	vmov	d0, r6, r7
 8004506:	4648      	mov	r0, r9
 8004508:	f002 f954 	bl	80067b4 <__d2b>
 800450c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004510:	4682      	mov	sl, r0
 8004512:	f040 80a0 	bne.w	8004656 <_dtoa_r+0x1de>
 8004516:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800451a:	442c      	add	r4, r5
 800451c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004520:	2b20      	cmp	r3, #32
 8004522:	f340 842c 	ble.w	8004d7e <_dtoa_r+0x906>
 8004526:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800452a:	fa08 f803 	lsl.w	r8, r8, r3
 800452e:	9b00      	ldr	r3, [sp, #0]
 8004530:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004534:	fa23 f000 	lsr.w	r0, r3, r0
 8004538:	ea48 0000 	orr.w	r0, r8, r0
 800453c:	f7fc fa82 	bl	8000a44 <__aeabi_ui2d>
 8004540:	2301      	movs	r3, #1
 8004542:	4606      	mov	r6, r0
 8004544:	3c01      	subs	r4, #1
 8004546:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800454a:	930f      	str	r3, [sp, #60]	; 0x3c
 800454c:	4630      	mov	r0, r6
 800454e:	4639      	mov	r1, r7
 8004550:	2200      	movs	r2, #0
 8004552:	4b51      	ldr	r3, [pc, #324]	; (8004698 <_dtoa_r+0x220>)
 8004554:	f7fc f938 	bl	80007c8 <__aeabi_dsub>
 8004558:	a347      	add	r3, pc, #284	; (adr r3, 8004678 <_dtoa_r+0x200>)
 800455a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800455e:	f7fc faeb 	bl	8000b38 <__aeabi_dmul>
 8004562:	a347      	add	r3, pc, #284	; (adr r3, 8004680 <_dtoa_r+0x208>)
 8004564:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004568:	f7fc f930 	bl	80007cc <__adddf3>
 800456c:	4606      	mov	r6, r0
 800456e:	4620      	mov	r0, r4
 8004570:	460f      	mov	r7, r1
 8004572:	f7fc fa77 	bl	8000a64 <__aeabi_i2d>
 8004576:	a344      	add	r3, pc, #272	; (adr r3, 8004688 <_dtoa_r+0x210>)
 8004578:	e9d3 2300 	ldrd	r2, r3, [r3]
 800457c:	f7fc fadc 	bl	8000b38 <__aeabi_dmul>
 8004580:	4602      	mov	r2, r0
 8004582:	460b      	mov	r3, r1
 8004584:	4630      	mov	r0, r6
 8004586:	4639      	mov	r1, r7
 8004588:	f7fc f920 	bl	80007cc <__adddf3>
 800458c:	4606      	mov	r6, r0
 800458e:	460f      	mov	r7, r1
 8004590:	f7fc fd82 	bl	8001098 <__aeabi_d2iz>
 8004594:	2200      	movs	r2, #0
 8004596:	9006      	str	r0, [sp, #24]
 8004598:	2300      	movs	r3, #0
 800459a:	4630      	mov	r0, r6
 800459c:	4639      	mov	r1, r7
 800459e:	f7fc fd3d 	bl	800101c <__aeabi_dcmplt>
 80045a2:	2800      	cmp	r0, #0
 80045a4:	f040 8273 	bne.w	8004a8e <_dtoa_r+0x616>
 80045a8:	9e06      	ldr	r6, [sp, #24]
 80045aa:	2e16      	cmp	r6, #22
 80045ac:	f200 825d 	bhi.w	8004a6a <_dtoa_r+0x5f2>
 80045b0:	4b3a      	ldr	r3, [pc, #232]	; (800469c <_dtoa_r+0x224>)
 80045b2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80045b6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80045ba:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045be:	f7fc fd4b 	bl	8001058 <__aeabi_dcmpgt>
 80045c2:	2800      	cmp	r0, #0
 80045c4:	f000 83d7 	beq.w	8004d76 <_dtoa_r+0x8fe>
 80045c8:	1e73      	subs	r3, r6, #1
 80045ca:	9306      	str	r3, [sp, #24]
 80045cc:	2300      	movs	r3, #0
 80045ce:	930d      	str	r3, [sp, #52]	; 0x34
 80045d0:	1b2c      	subs	r4, r5, r4
 80045d2:	f1b4 0801 	subs.w	r8, r4, #1
 80045d6:	f100 8254 	bmi.w	8004a82 <_dtoa_r+0x60a>
 80045da:	2300      	movs	r3, #0
 80045dc:	9308      	str	r3, [sp, #32]
 80045de:	9b06      	ldr	r3, [sp, #24]
 80045e0:	2b00      	cmp	r3, #0
 80045e2:	f2c0 8245 	blt.w	8004a70 <_dtoa_r+0x5f8>
 80045e6:	4498      	add	r8, r3
 80045e8:	930c      	str	r3, [sp, #48]	; 0x30
 80045ea:	2300      	movs	r3, #0
 80045ec:	930b      	str	r3, [sp, #44]	; 0x2c
 80045ee:	9b02      	ldr	r3, [sp, #8]
 80045f0:	2b09      	cmp	r3, #9
 80045f2:	d85b      	bhi.n	80046ac <_dtoa_r+0x234>
 80045f4:	2b05      	cmp	r3, #5
 80045f6:	f340 83c0 	ble.w	8004d7a <_dtoa_r+0x902>
 80045fa:	3b04      	subs	r3, #4
 80045fc:	9302      	str	r3, [sp, #8]
 80045fe:	2500      	movs	r5, #0
 8004600:	9b02      	ldr	r3, [sp, #8]
 8004602:	3b02      	subs	r3, #2
 8004604:	2b03      	cmp	r3, #3
 8004606:	f200 8498 	bhi.w	8004f3a <_dtoa_r+0xac2>
 800460a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800460e:	03df      	.short	0x03df
 8004610:	03e803bf 	.word	0x03e803bf
 8004614:	04f5      	.short	0x04f5
 8004616:	9a05      	ldr	r2, [sp, #20]
 8004618:	f242 730f 	movw	r3, #9999	; 0x270f
 800461c:	6013      	str	r3, [r2, #0]
 800461e:	9b00      	ldr	r3, [sp, #0]
 8004620:	b983      	cbnz	r3, 8004644 <_dtoa_r+0x1cc>
 8004622:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004626:	b96b      	cbnz	r3, 8004644 <_dtoa_r+0x1cc>
 8004628:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800462a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80046a0 <_dtoa_r+0x228>
 800462e:	2b00      	cmp	r3, #0
 8004630:	f43f af61 	beq.w	80044f6 <_dtoa_r+0x7e>
 8004634:	f10b 0308 	add.w	r3, fp, #8
 8004638:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800463a:	4658      	mov	r0, fp
 800463c:	6013      	str	r3, [r2, #0]
 800463e:	b01b      	add	sp, #108	; 0x6c
 8004640:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004644:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004646:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80046a4 <_dtoa_r+0x22c>
 800464a:	2b00      	cmp	r3, #0
 800464c:	f43f af53 	beq.w	80044f6 <_dtoa_r+0x7e>
 8004650:	f10b 0303 	add.w	r3, fp, #3
 8004654:	e7f0      	b.n	8004638 <_dtoa_r+0x1c0>
 8004656:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800465a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800465e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004660:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004664:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004668:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800466a:	e76f      	b.n	800454c <_dtoa_r+0xd4>
 800466c:	f8df b038 	ldr.w	fp, [pc, #56]	; 80046a8 <_dtoa_r+0x230>
 8004670:	4658      	mov	r0, fp
 8004672:	b01b      	add	sp, #108	; 0x6c
 8004674:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004678:	636f4361 	.word	0x636f4361
 800467c:	3fd287a7 	.word	0x3fd287a7
 8004680:	8b60c8b3 	.word	0x8b60c8b3
 8004684:	3fc68a28 	.word	0x3fc68a28
 8004688:	509f79fb 	.word	0x509f79fb
 800468c:	3fd34413 	.word	0x3fd34413
 8004690:	7ff00000 	.word	0x7ff00000
 8004694:	08007585 	.word	0x08007585
 8004698:	3ff80000 	.word	0x3ff80000
 800469c:	080075e0 	.word	0x080075e0
 80046a0:	080075a8 	.word	0x080075a8
 80046a4:	080075b4 	.word	0x080075b4
 80046a8:	08007584 	.word	0x08007584
 80046ac:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80046b0:	2501      	movs	r5, #1
 80046b2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80046b6:	2300      	movs	r3, #0
 80046b8:	9302      	str	r3, [sp, #8]
 80046ba:	9307      	str	r3, [sp, #28]
 80046bc:	2100      	movs	r1, #0
 80046be:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80046c2:	940e      	str	r4, [sp, #56]	; 0x38
 80046c4:	4648      	mov	r0, r9
 80046c6:	f001 fdcd 	bl	8006264 <_Balloc>
 80046ca:	2c0e      	cmp	r4, #14
 80046cc:	4683      	mov	fp, r0
 80046ce:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80046d2:	f200 80fb 	bhi.w	80048cc <_dtoa_r+0x454>
 80046d6:	2d00      	cmp	r5, #0
 80046d8:	f000 80f8 	beq.w	80048cc <_dtoa_r+0x454>
 80046dc:	ed9d 7b00 	vldr	d7, [sp]
 80046e0:	9906      	ldr	r1, [sp, #24]
 80046e2:	2900      	cmp	r1, #0
 80046e4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80046e8:	f340 83e5 	ble.w	8004eb6 <_dtoa_r+0xa3e>
 80046ec:	4b9d      	ldr	r3, [pc, #628]	; (8004964 <_dtoa_r+0x4ec>)
 80046ee:	f001 020f 	and.w	r2, r1, #15
 80046f2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80046f6:	ed93 7b00 	vldr	d7, [r3]
 80046fa:	110c      	asrs	r4, r1, #4
 80046fc:	06e2      	lsls	r2, r4, #27
 80046fe:	ed8d 7b00 	vstr	d7, [sp]
 8004702:	f140 849e 	bpl.w	8005042 <_dtoa_r+0xbca>
 8004706:	4b98      	ldr	r3, [pc, #608]	; (8004968 <_dtoa_r+0x4f0>)
 8004708:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800470c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004710:	f7fc fb3c 	bl	8000d8c <__aeabi_ddiv>
 8004714:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004718:	f004 040f 	and.w	r4, r4, #15
 800471c:	2603      	movs	r6, #3
 800471e:	b17c      	cbz	r4, 8004740 <_dtoa_r+0x2c8>
 8004720:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004724:	4d90      	ldr	r5, [pc, #576]	; (8004968 <_dtoa_r+0x4f0>)
 8004726:	07e3      	lsls	r3, r4, #31
 8004728:	d504      	bpl.n	8004734 <_dtoa_r+0x2bc>
 800472a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800472e:	f7fc fa03 	bl	8000b38 <__aeabi_dmul>
 8004732:	3601      	adds	r6, #1
 8004734:	1064      	asrs	r4, r4, #1
 8004736:	f105 0508 	add.w	r5, r5, #8
 800473a:	d1f4      	bne.n	8004726 <_dtoa_r+0x2ae>
 800473c:	e9cd 0100 	strd	r0, r1, [sp]
 8004740:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004744:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004748:	f7fc fb20 	bl	8000d8c <__aeabi_ddiv>
 800474c:	e9cd 0100 	strd	r0, r1, [sp]
 8004750:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004752:	b143      	cbz	r3, 8004766 <_dtoa_r+0x2ee>
 8004754:	2200      	movs	r2, #0
 8004756:	4b85      	ldr	r3, [pc, #532]	; (800496c <_dtoa_r+0x4f4>)
 8004758:	e9dd 0100 	ldrd	r0, r1, [sp]
 800475c:	f7fc fc5e 	bl	800101c <__aeabi_dcmplt>
 8004760:	2800      	cmp	r0, #0
 8004762:	f040 84ff 	bne.w	8005164 <_dtoa_r+0xcec>
 8004766:	4630      	mov	r0, r6
 8004768:	f7fc f97c 	bl	8000a64 <__aeabi_i2d>
 800476c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004770:	f7fc f9e2 	bl	8000b38 <__aeabi_dmul>
 8004774:	4b7e      	ldr	r3, [pc, #504]	; (8004970 <_dtoa_r+0x4f8>)
 8004776:	2200      	movs	r2, #0
 8004778:	f7fc f828 	bl	80007cc <__adddf3>
 800477c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800477e:	4606      	mov	r6, r0
 8004780:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004784:	2b00      	cmp	r3, #0
 8004786:	f000 841c 	beq.w	8004fc2 <_dtoa_r+0xb4a>
 800478a:	9b06      	ldr	r3, [sp, #24]
 800478c:	9316      	str	r3, [sp, #88]	; 0x58
 800478e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004790:	9312      	str	r3, [sp, #72]	; 0x48
 8004792:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004796:	f7fc fc7f 	bl	8001098 <__aeabi_d2iz>
 800479a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800479c:	4b71      	ldr	r3, [pc, #452]	; (8004964 <_dtoa_r+0x4ec>)
 800479e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80047a2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80047a6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80047aa:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80047ae:	f7fc f959 	bl	8000a64 <__aeabi_i2d>
 80047b2:	460b      	mov	r3, r1
 80047b4:	4602      	mov	r2, r0
 80047b6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047ba:	e9cd 6700 	strd	r6, r7, [sp]
 80047be:	f7fc f803 	bl	80007c8 <__aeabi_dsub>
 80047c2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047c4:	b2ed      	uxtb	r5, r5
 80047c6:	4606      	mov	r6, r0
 80047c8:	460f      	mov	r7, r1
 80047ca:	f10b 0401 	add.w	r4, fp, #1
 80047ce:	2b00      	cmp	r3, #0
 80047d0:	f000 8458 	beq.w	8005084 <_dtoa_r+0xc0c>
 80047d4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80047d8:	2000      	movs	r0, #0
 80047da:	4966      	ldr	r1, [pc, #408]	; (8004974 <_dtoa_r+0x4fc>)
 80047dc:	f7fc fad6 	bl	8000d8c <__aeabi_ddiv>
 80047e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80047e4:	f7fb fff0 	bl	80007c8 <__aeabi_dsub>
 80047e8:	f88b 5000 	strb.w	r5, [fp]
 80047ec:	4632      	mov	r2, r6
 80047ee:	463b      	mov	r3, r7
 80047f0:	e9cd 0100 	strd	r0, r1, [sp]
 80047f4:	f7fc fc30 	bl	8001058 <__aeabi_dcmpgt>
 80047f8:	2800      	cmp	r0, #0
 80047fa:	f040 8502 	bne.w	8005202 <_dtoa_r+0xd8a>
 80047fe:	4632      	mov	r2, r6
 8004800:	463b      	mov	r3, r7
 8004802:	2000      	movs	r0, #0
 8004804:	4959      	ldr	r1, [pc, #356]	; (800496c <_dtoa_r+0x4f4>)
 8004806:	f7fb ffdf 	bl	80007c8 <__aeabi_dsub>
 800480a:	4602      	mov	r2, r0
 800480c:	460b      	mov	r3, r1
 800480e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004812:	f7fc fc21 	bl	8001058 <__aeabi_dcmpgt>
 8004816:	2800      	cmp	r0, #0
 8004818:	f040 84fb 	bne.w	8005212 <_dtoa_r+0xd9a>
 800481c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800481e:	2a01      	cmp	r2, #1
 8004820:	d050      	beq.n	80048c4 <_dtoa_r+0x44c>
 8004822:	445a      	add	r2, fp
 8004824:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004828:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800482c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004830:	4692      	mov	sl, r2
 8004832:	46cb      	mov	fp, r9
 8004834:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004838:	e00c      	b.n	8004854 <_dtoa_r+0x3dc>
 800483a:	2000      	movs	r0, #0
 800483c:	494b      	ldr	r1, [pc, #300]	; (800496c <_dtoa_r+0x4f4>)
 800483e:	f7fb ffc3 	bl	80007c8 <__aeabi_dsub>
 8004842:	4642      	mov	r2, r8
 8004844:	464b      	mov	r3, r9
 8004846:	f7fc fbe9 	bl	800101c <__aeabi_dcmplt>
 800484a:	2800      	cmp	r0, #0
 800484c:	f040 84dc 	bne.w	8005208 <_dtoa_r+0xd90>
 8004850:	4554      	cmp	r4, sl
 8004852:	d030      	beq.n	80048b6 <_dtoa_r+0x43e>
 8004854:	4640      	mov	r0, r8
 8004856:	4649      	mov	r1, r9
 8004858:	2200      	movs	r2, #0
 800485a:	4b47      	ldr	r3, [pc, #284]	; (8004978 <_dtoa_r+0x500>)
 800485c:	f7fc f96c 	bl	8000b38 <__aeabi_dmul>
 8004860:	2200      	movs	r2, #0
 8004862:	4b45      	ldr	r3, [pc, #276]	; (8004978 <_dtoa_r+0x500>)
 8004864:	4680      	mov	r8, r0
 8004866:	4689      	mov	r9, r1
 8004868:	4630      	mov	r0, r6
 800486a:	4639      	mov	r1, r7
 800486c:	f7fc f964 	bl	8000b38 <__aeabi_dmul>
 8004870:	460f      	mov	r7, r1
 8004872:	4606      	mov	r6, r0
 8004874:	f7fc fc10 	bl	8001098 <__aeabi_d2iz>
 8004878:	4605      	mov	r5, r0
 800487a:	f7fc f8f3 	bl	8000a64 <__aeabi_i2d>
 800487e:	4602      	mov	r2, r0
 8004880:	460b      	mov	r3, r1
 8004882:	4630      	mov	r0, r6
 8004884:	4639      	mov	r1, r7
 8004886:	f7fb ff9f 	bl	80007c8 <__aeabi_dsub>
 800488a:	3530      	adds	r5, #48	; 0x30
 800488c:	b2ed      	uxtb	r5, r5
 800488e:	4642      	mov	r2, r8
 8004890:	464b      	mov	r3, r9
 8004892:	f804 5b01 	strb.w	r5, [r4], #1
 8004896:	4606      	mov	r6, r0
 8004898:	460f      	mov	r7, r1
 800489a:	f7fc fbbf 	bl	800101c <__aeabi_dcmplt>
 800489e:	4632      	mov	r2, r6
 80048a0:	463b      	mov	r3, r7
 80048a2:	2800      	cmp	r0, #0
 80048a4:	d0c9      	beq.n	800483a <_dtoa_r+0x3c2>
 80048a6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80048a8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80048ac:	9306      	str	r3, [sp, #24]
 80048ae:	46d9      	mov	r9, fp
 80048b0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80048b4:	e236      	b.n	8004d24 <_dtoa_r+0x8ac>
 80048b6:	46d9      	mov	r9, fp
 80048b8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80048bc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80048c0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80048c4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80048c8:	e9cd 3400 	strd	r3, r4, [sp]
 80048cc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80048ce:	2b00      	cmp	r3, #0
 80048d0:	f2c0 80ae 	blt.w	8004a30 <_dtoa_r+0x5b8>
 80048d4:	9a06      	ldr	r2, [sp, #24]
 80048d6:	2a0e      	cmp	r2, #14
 80048d8:	f300 80aa 	bgt.w	8004a30 <_dtoa_r+0x5b8>
 80048dc:	4b21      	ldr	r3, [pc, #132]	; (8004964 <_dtoa_r+0x4ec>)
 80048de:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80048e2:	ed93 7b00 	vldr	d7, [r3]
 80048e6:	9b07      	ldr	r3, [sp, #28]
 80048e8:	2b00      	cmp	r3, #0
 80048ea:	ed8d 7b02 	vstr	d7, [sp, #8]
 80048ee:	f2c0 82be 	blt.w	8004e6e <_dtoa_r+0x9f6>
 80048f2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80048f6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048fa:	4630      	mov	r0, r6
 80048fc:	4639      	mov	r1, r7
 80048fe:	f7fc fa45 	bl	8000d8c <__aeabi_ddiv>
 8004902:	f7fc fbc9 	bl	8001098 <__aeabi_d2iz>
 8004906:	4605      	mov	r5, r0
 8004908:	f7fc f8ac 	bl	8000a64 <__aeabi_i2d>
 800490c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004910:	f7fc f912 	bl	8000b38 <__aeabi_dmul>
 8004914:	460b      	mov	r3, r1
 8004916:	4602      	mov	r2, r0
 8004918:	4639      	mov	r1, r7
 800491a:	4630      	mov	r0, r6
 800491c:	f7fb ff54 	bl	80007c8 <__aeabi_dsub>
 8004920:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004924:	f88b 3000 	strb.w	r3, [fp]
 8004928:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800492a:	2b01      	cmp	r3, #1
 800492c:	4606      	mov	r6, r0
 800492e:	460f      	mov	r7, r1
 8004930:	f10b 0401 	add.w	r4, fp, #1
 8004934:	d053      	beq.n	80049de <_dtoa_r+0x566>
 8004936:	2200      	movs	r2, #0
 8004938:	4b0f      	ldr	r3, [pc, #60]	; (8004978 <_dtoa_r+0x500>)
 800493a:	f7fc f8fd 	bl	8000b38 <__aeabi_dmul>
 800493e:	2200      	movs	r2, #0
 8004940:	2300      	movs	r3, #0
 8004942:	4606      	mov	r6, r0
 8004944:	460f      	mov	r7, r1
 8004946:	f7fc fb5f 	bl	8001008 <__aeabi_dcmpeq>
 800494a:	2800      	cmp	r0, #0
 800494c:	f040 81ea 	bne.w	8004d24 <_dtoa_r+0x8ac>
 8004950:	f8cd a000 	str.w	sl, [sp]
 8004954:	f8cd 901c 	str.w	r9, [sp, #28]
 8004958:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800495c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004960:	e017      	b.n	8004992 <_dtoa_r+0x51a>
 8004962:	bf00      	nop
 8004964:	080075e0 	.word	0x080075e0
 8004968:	080075b8 	.word	0x080075b8
 800496c:	3ff00000 	.word	0x3ff00000
 8004970:	401c0000 	.word	0x401c0000
 8004974:	3fe00000 	.word	0x3fe00000
 8004978:	40240000 	.word	0x40240000
 800497c:	f7fc f8dc 	bl	8000b38 <__aeabi_dmul>
 8004980:	2200      	movs	r2, #0
 8004982:	2300      	movs	r3, #0
 8004984:	4606      	mov	r6, r0
 8004986:	460f      	mov	r7, r1
 8004988:	f7fc fb3e 	bl	8001008 <__aeabi_dcmpeq>
 800498c:	2800      	cmp	r0, #0
 800498e:	f040 833d 	bne.w	800500c <_dtoa_r+0xb94>
 8004992:	464a      	mov	r2, r9
 8004994:	4653      	mov	r3, sl
 8004996:	4630      	mov	r0, r6
 8004998:	4639      	mov	r1, r7
 800499a:	f7fc f9f7 	bl	8000d8c <__aeabi_ddiv>
 800499e:	f7fc fb7b 	bl	8001098 <__aeabi_d2iz>
 80049a2:	4605      	mov	r5, r0
 80049a4:	f7fc f85e 	bl	8000a64 <__aeabi_i2d>
 80049a8:	464a      	mov	r2, r9
 80049aa:	4653      	mov	r3, sl
 80049ac:	f7fc f8c4 	bl	8000b38 <__aeabi_dmul>
 80049b0:	4602      	mov	r2, r0
 80049b2:	460b      	mov	r3, r1
 80049b4:	4630      	mov	r0, r6
 80049b6:	4639      	mov	r1, r7
 80049b8:	f7fb ff06 	bl	80007c8 <__aeabi_dsub>
 80049bc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80049c0:	f804 cb01 	strb.w	ip, [r4], #1
 80049c4:	eba4 0c0b 	sub.w	ip, r4, fp
 80049c8:	45e0      	cmp	r8, ip
 80049ca:	4606      	mov	r6, r0
 80049cc:	460f      	mov	r7, r1
 80049ce:	f04f 0200 	mov.w	r2, #0
 80049d2:	4bc1      	ldr	r3, [pc, #772]	; (8004cd8 <_dtoa_r+0x860>)
 80049d4:	d1d2      	bne.n	800497c <_dtoa_r+0x504>
 80049d6:	f8dd a000 	ldr.w	sl, [sp]
 80049da:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80049de:	4632      	mov	r2, r6
 80049e0:	463b      	mov	r3, r7
 80049e2:	4630      	mov	r0, r6
 80049e4:	4639      	mov	r1, r7
 80049e6:	f7fb fef1 	bl	80007cc <__adddf3>
 80049ea:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80049ee:	4606      	mov	r6, r0
 80049f0:	460f      	mov	r7, r1
 80049f2:	f7fc fb31 	bl	8001058 <__aeabi_dcmpgt>
 80049f6:	b958      	cbnz	r0, 8004a10 <_dtoa_r+0x598>
 80049f8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80049fc:	4630      	mov	r0, r6
 80049fe:	4639      	mov	r1, r7
 8004a00:	f7fc fb02 	bl	8001008 <__aeabi_dcmpeq>
 8004a04:	2800      	cmp	r0, #0
 8004a06:	f000 818d 	beq.w	8004d24 <_dtoa_r+0x8ac>
 8004a0a:	07e9      	lsls	r1, r5, #31
 8004a0c:	f140 818a 	bpl.w	8004d24 <_dtoa_r+0x8ac>
 8004a10:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004a14:	e005      	b.n	8004a22 <_dtoa_r+0x5aa>
 8004a16:	459b      	cmp	fp, r3
 8004a18:	f000 8373 	beq.w	8005102 <_dtoa_r+0xc8a>
 8004a1c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004a20:	461c      	mov	r4, r3
 8004a22:	2d39      	cmp	r5, #57	; 0x39
 8004a24:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a28:	d0f5      	beq.n	8004a16 <_dtoa_r+0x59e>
 8004a2a:	3501      	adds	r5, #1
 8004a2c:	701d      	strb	r5, [r3, #0]
 8004a2e:	e179      	b.n	8004d24 <_dtoa_r+0x8ac>
 8004a30:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004a32:	2a00      	cmp	r2, #0
 8004a34:	d03b      	beq.n	8004aae <_dtoa_r+0x636>
 8004a36:	9a02      	ldr	r2, [sp, #8]
 8004a38:	2a01      	cmp	r2, #1
 8004a3a:	f340 820b 	ble.w	8004e54 <_dtoa_r+0x9dc>
 8004a3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a40:	1e5f      	subs	r7, r3, #1
 8004a42:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004a44:	42bb      	cmp	r3, r7
 8004a46:	f2c0 82e6 	blt.w	8005016 <_dtoa_r+0xb9e>
 8004a4a:	1bdf      	subs	r7, r3, r7
 8004a4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a4e:	2b00      	cmp	r3, #0
 8004a50:	f2c0 830b 	blt.w	800506a <_dtoa_r+0xbf2>
 8004a54:	9a08      	ldr	r2, [sp, #32]
 8004a56:	4614      	mov	r4, r2
 8004a58:	441a      	add	r2, r3
 8004a5a:	4498      	add	r8, r3
 8004a5c:	9208      	str	r2, [sp, #32]
 8004a5e:	2101      	movs	r1, #1
 8004a60:	4648      	mov	r0, r9
 8004a62:	f001 fcbf 	bl	80063e4 <__i2b>
 8004a66:	4605      	mov	r5, r0
 8004a68:	e024      	b.n	8004ab4 <_dtoa_r+0x63c>
 8004a6a:	2301      	movs	r3, #1
 8004a6c:	930d      	str	r3, [sp, #52]	; 0x34
 8004a6e:	e5af      	b.n	80045d0 <_dtoa_r+0x158>
 8004a70:	9a08      	ldr	r2, [sp, #32]
 8004a72:	9b06      	ldr	r3, [sp, #24]
 8004a74:	1ad2      	subs	r2, r2, r3
 8004a76:	425b      	negs	r3, r3
 8004a78:	930b      	str	r3, [sp, #44]	; 0x2c
 8004a7a:	2300      	movs	r3, #0
 8004a7c:	9208      	str	r2, [sp, #32]
 8004a7e:	930c      	str	r3, [sp, #48]	; 0x30
 8004a80:	e5b5      	b.n	80045ee <_dtoa_r+0x176>
 8004a82:	f1c4 0301 	rsb	r3, r4, #1
 8004a86:	9308      	str	r3, [sp, #32]
 8004a88:	f04f 0800 	mov.w	r8, #0
 8004a8c:	e5a7      	b.n	80045de <_dtoa_r+0x166>
 8004a8e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004a92:	4640      	mov	r0, r8
 8004a94:	f7fb ffe6 	bl	8000a64 <__aeabi_i2d>
 8004a98:	4632      	mov	r2, r6
 8004a9a:	463b      	mov	r3, r7
 8004a9c:	f7fc fab4 	bl	8001008 <__aeabi_dcmpeq>
 8004aa0:	2800      	cmp	r0, #0
 8004aa2:	f47f ad81 	bne.w	80045a8 <_dtoa_r+0x130>
 8004aa6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004aaa:	9306      	str	r3, [sp, #24]
 8004aac:	e57c      	b.n	80045a8 <_dtoa_r+0x130>
 8004aae:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004ab0:	9c08      	ldr	r4, [sp, #32]
 8004ab2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004ab4:	2c00      	cmp	r4, #0
 8004ab6:	dd0c      	ble.n	8004ad2 <_dtoa_r+0x65a>
 8004ab8:	f1b8 0f00 	cmp.w	r8, #0
 8004abc:	dd09      	ble.n	8004ad2 <_dtoa_r+0x65a>
 8004abe:	4544      	cmp	r4, r8
 8004ac0:	9a08      	ldr	r2, [sp, #32]
 8004ac2:	4623      	mov	r3, r4
 8004ac4:	bfa8      	it	ge
 8004ac6:	4643      	movge	r3, r8
 8004ac8:	1ad2      	subs	r2, r2, r3
 8004aca:	9208      	str	r2, [sp, #32]
 8004acc:	1ae4      	subs	r4, r4, r3
 8004ace:	eba8 0803 	sub.w	r8, r8, r3
 8004ad2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004ad4:	b16b      	cbz	r3, 8004af2 <_dtoa_r+0x67a>
 8004ad6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ad8:	2a00      	cmp	r2, #0
 8004ada:	f000 8290 	beq.w	8004ffe <_dtoa_r+0xb86>
 8004ade:	1bde      	subs	r6, r3, r7
 8004ae0:	2f00      	cmp	r7, #0
 8004ae2:	f040 819b 	bne.w	8004e1c <_dtoa_r+0x9a4>
 8004ae6:	4651      	mov	r1, sl
 8004ae8:	4632      	mov	r2, r6
 8004aea:	4648      	mov	r0, r9
 8004aec:	f001 fd2a 	bl	8006544 <__pow5mult>
 8004af0:	4682      	mov	sl, r0
 8004af2:	2101      	movs	r1, #1
 8004af4:	4648      	mov	r0, r9
 8004af6:	f001 fc75 	bl	80063e4 <__i2b>
 8004afa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004afc:	4606      	mov	r6, r0
 8004afe:	2a00      	cmp	r2, #0
 8004b00:	f040 8125 	bne.w	8004d4e <_dtoa_r+0x8d6>
 8004b04:	9b02      	ldr	r3, [sp, #8]
 8004b06:	2b01      	cmp	r3, #1
 8004b08:	f340 816c 	ble.w	8004de4 <_dtoa_r+0x96c>
 8004b0c:	2001      	movs	r0, #1
 8004b0e:	4440      	add	r0, r8
 8004b10:	f010 001f 	ands.w	r0, r0, #31
 8004b14:	f000 8119 	beq.w	8004d4a <_dtoa_r+0x8d2>
 8004b18:	f1c0 0320 	rsb	r3, r0, #32
 8004b1c:	2b04      	cmp	r3, #4
 8004b1e:	f340 83ac 	ble.w	800527a <_dtoa_r+0xe02>
 8004b22:	f1c0 001c 	rsb	r0, r0, #28
 8004b26:	9b08      	ldr	r3, [sp, #32]
 8004b28:	4403      	add	r3, r0
 8004b2a:	9308      	str	r3, [sp, #32]
 8004b2c:	4404      	add	r4, r0
 8004b2e:	4480      	add	r8, r0
 8004b30:	9b08      	ldr	r3, [sp, #32]
 8004b32:	2b00      	cmp	r3, #0
 8004b34:	dd05      	ble.n	8004b42 <_dtoa_r+0x6ca>
 8004b36:	4651      	mov	r1, sl
 8004b38:	461a      	mov	r2, r3
 8004b3a:	4648      	mov	r0, r9
 8004b3c:	f001 fd52 	bl	80065e4 <__lshift>
 8004b40:	4682      	mov	sl, r0
 8004b42:	f1b8 0f00 	cmp.w	r8, #0
 8004b46:	dd05      	ble.n	8004b54 <_dtoa_r+0x6dc>
 8004b48:	4631      	mov	r1, r6
 8004b4a:	4642      	mov	r2, r8
 8004b4c:	4648      	mov	r0, r9
 8004b4e:	f001 fd49 	bl	80065e4 <__lshift>
 8004b52:	4606      	mov	r6, r0
 8004b54:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004b56:	2b00      	cmp	r3, #0
 8004b58:	d177      	bne.n	8004c4a <_dtoa_r+0x7d2>
 8004b5a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b5c:	2b00      	cmp	r3, #0
 8004b5e:	f340 8209 	ble.w	8004f74 <_dtoa_r+0xafc>
 8004b62:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b64:	2b00      	cmp	r3, #0
 8004b66:	f000 8089 	beq.w	8004c7c <_dtoa_r+0x804>
 8004b6a:	2c00      	cmp	r4, #0
 8004b6c:	f300 816b 	bgt.w	8004e46 <_dtoa_r+0x9ce>
 8004b70:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004b72:	2b00      	cmp	r3, #0
 8004b74:	f040 81cd 	bne.w	8004f12 <_dtoa_r+0xa9a>
 8004b78:	46a8      	mov	r8, r5
 8004b7a:	9a00      	ldr	r2, [sp, #0]
 8004b7c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004b80:	f002 0201 	and.w	r2, r2, #1
 8004b84:	920a      	str	r2, [sp, #40]	; 0x28
 8004b86:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004b88:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004b8c:	441a      	add	r2, r3
 8004b8e:	465f      	mov	r7, fp
 8004b90:	9209      	str	r2, [sp, #36]	; 0x24
 8004b92:	46b3      	mov	fp, r6
 8004b94:	4659      	mov	r1, fp
 8004b96:	4650      	mov	r0, sl
 8004b98:	f7ff fbdc 	bl	8004354 <quorem>
 8004b9c:	4629      	mov	r1, r5
 8004b9e:	4604      	mov	r4, r0
 8004ba0:	4650      	mov	r0, sl
 8004ba2:	f001 fd75 	bl	8006690 <__mcmp>
 8004ba6:	4659      	mov	r1, fp
 8004ba8:	4606      	mov	r6, r0
 8004baa:	4642      	mov	r2, r8
 8004bac:	4648      	mov	r0, r9
 8004bae:	f001 fd8b 	bl	80066c8 <__mdiff>
 8004bb2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004bb6:	9300      	str	r3, [sp, #0]
 8004bb8:	68c3      	ldr	r3, [r0, #12]
 8004bba:	4601      	mov	r1, r0
 8004bbc:	2b00      	cmp	r3, #0
 8004bbe:	f040 81d4 	bne.w	8004f6a <_dtoa_r+0xaf2>
 8004bc2:	9008      	str	r0, [sp, #32]
 8004bc4:	4650      	mov	r0, sl
 8004bc6:	f001 fd63 	bl	8006690 <__mcmp>
 8004bca:	9a08      	ldr	r2, [sp, #32]
 8004bcc:	9007      	str	r0, [sp, #28]
 8004bce:	4611      	mov	r1, r2
 8004bd0:	4648      	mov	r0, r9
 8004bd2:	f001 fb6d 	bl	80062b0 <_Bfree>
 8004bd6:	9b07      	ldr	r3, [sp, #28]
 8004bd8:	b933      	cbnz	r3, 8004be8 <_dtoa_r+0x770>
 8004bda:	9a02      	ldr	r2, [sp, #8]
 8004bdc:	b922      	cbnz	r2, 8004be8 <_dtoa_r+0x770>
 8004bde:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004be0:	2b00      	cmp	r3, #0
 8004be2:	f000 8319 	beq.w	8005218 <_dtoa_r+0xda0>
 8004be6:	9b02      	ldr	r3, [sp, #8]
 8004be8:	2e00      	cmp	r6, #0
 8004bea:	f2c0 821c 	blt.w	8005026 <_dtoa_r+0xbae>
 8004bee:	d105      	bne.n	8004bfc <_dtoa_r+0x784>
 8004bf0:	9a02      	ldr	r2, [sp, #8]
 8004bf2:	b91a      	cbnz	r2, 8004bfc <_dtoa_r+0x784>
 8004bf4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004bf6:	2a00      	cmp	r2, #0
 8004bf8:	f000 8215 	beq.w	8005026 <_dtoa_r+0xbae>
 8004bfc:	2b00      	cmp	r3, #0
 8004bfe:	f107 0401 	add.w	r4, r7, #1
 8004c02:	f300 8225 	bgt.w	8005050 <_dtoa_r+0xbd8>
 8004c06:	9b00      	ldr	r3, [sp, #0]
 8004c08:	703b      	strb	r3, [r7, #0]
 8004c0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c0c:	42bb      	cmp	r3, r7
 8004c0e:	f000 8230 	beq.w	8005072 <_dtoa_r+0xbfa>
 8004c12:	4651      	mov	r1, sl
 8004c14:	2300      	movs	r3, #0
 8004c16:	220a      	movs	r2, #10
 8004c18:	4648      	mov	r0, r9
 8004c1a:	f001 fb53 	bl	80062c4 <__multadd>
 8004c1e:	4545      	cmp	r5, r8
 8004c20:	4682      	mov	sl, r0
 8004c22:	4629      	mov	r1, r5
 8004c24:	f04f 0300 	mov.w	r3, #0
 8004c28:	f04f 020a 	mov.w	r2, #10
 8004c2c:	4648      	mov	r0, r9
 8004c2e:	f000 8196 	beq.w	8004f5e <_dtoa_r+0xae6>
 8004c32:	f001 fb47 	bl	80062c4 <__multadd>
 8004c36:	4641      	mov	r1, r8
 8004c38:	4605      	mov	r5, r0
 8004c3a:	2300      	movs	r3, #0
 8004c3c:	220a      	movs	r2, #10
 8004c3e:	4648      	mov	r0, r9
 8004c40:	f001 fb40 	bl	80062c4 <__multadd>
 8004c44:	4627      	mov	r7, r4
 8004c46:	4680      	mov	r8, r0
 8004c48:	e7a4      	b.n	8004b94 <_dtoa_r+0x71c>
 8004c4a:	4631      	mov	r1, r6
 8004c4c:	4650      	mov	r0, sl
 8004c4e:	f001 fd1f 	bl	8006690 <__mcmp>
 8004c52:	2800      	cmp	r0, #0
 8004c54:	da81      	bge.n	8004b5a <_dtoa_r+0x6e2>
 8004c56:	9f06      	ldr	r7, [sp, #24]
 8004c58:	4651      	mov	r1, sl
 8004c5a:	2300      	movs	r3, #0
 8004c5c:	220a      	movs	r2, #10
 8004c5e:	4648      	mov	r0, r9
 8004c60:	3f01      	subs	r7, #1
 8004c62:	9706      	str	r7, [sp, #24]
 8004c64:	f001 fb2e 	bl	80062c4 <__multadd>
 8004c68:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004c6a:	4682      	mov	sl, r0
 8004c6c:	2b00      	cmp	r3, #0
 8004c6e:	f040 82eb 	bne.w	8005248 <_dtoa_r+0xdd0>
 8004c72:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004c74:	2b00      	cmp	r3, #0
 8004c76:	f340 82f3 	ble.w	8005260 <_dtoa_r+0xde8>
 8004c7a:	9309      	str	r3, [sp, #36]	; 0x24
 8004c7c:	465c      	mov	r4, fp
 8004c7e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004c82:	e002      	b.n	8004c8a <_dtoa_r+0x812>
 8004c84:	f001 fb1e 	bl	80062c4 <__multadd>
 8004c88:	4682      	mov	sl, r0
 8004c8a:	4631      	mov	r1, r6
 8004c8c:	4650      	mov	r0, sl
 8004c8e:	f7ff fb61 	bl	8004354 <quorem>
 8004c92:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004c96:	f804 7b01 	strb.w	r7, [r4], #1
 8004c9a:	eba4 030b 	sub.w	r3, r4, fp
 8004c9e:	4598      	cmp	r8, r3
 8004ca0:	f04f 020a 	mov.w	r2, #10
 8004ca4:	f04f 0300 	mov.w	r3, #0
 8004ca8:	4651      	mov	r1, sl
 8004caa:	4648      	mov	r0, r9
 8004cac:	dcea      	bgt.n	8004c84 <_dtoa_r+0x80c>
 8004cae:	2300      	movs	r3, #0
 8004cb0:	9700      	str	r7, [sp, #0]
 8004cb2:	9302      	str	r3, [sp, #8]
 8004cb4:	4651      	mov	r1, sl
 8004cb6:	2201      	movs	r2, #1
 8004cb8:	4648      	mov	r0, r9
 8004cba:	f001 fc93 	bl	80065e4 <__lshift>
 8004cbe:	4631      	mov	r1, r6
 8004cc0:	4682      	mov	sl, r0
 8004cc2:	f001 fce5 	bl	8006690 <__mcmp>
 8004cc6:	2800      	cmp	r0, #0
 8004cc8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004ccc:	dc14      	bgt.n	8004cf8 <_dtoa_r+0x880>
 8004cce:	d108      	bne.n	8004ce2 <_dtoa_r+0x86a>
 8004cd0:	9b00      	ldr	r3, [sp, #0]
 8004cd2:	07db      	lsls	r3, r3, #31
 8004cd4:	d410      	bmi.n	8004cf8 <_dtoa_r+0x880>
 8004cd6:	e004      	b.n	8004ce2 <_dtoa_r+0x86a>
 8004cd8:	40240000 	.word	0x40240000
 8004cdc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004ce0:	461c      	mov	r4, r3
 8004ce2:	2a30      	cmp	r2, #48	; 0x30
 8004ce4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ce8:	d0f8      	beq.n	8004cdc <_dtoa_r+0x864>
 8004cea:	e00b      	b.n	8004d04 <_dtoa_r+0x88c>
 8004cec:	459b      	cmp	fp, r3
 8004cee:	f000 814e 	beq.w	8004f8e <_dtoa_r+0xb16>
 8004cf2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004cf6:	461c      	mov	r4, r3
 8004cf8:	2a39      	cmp	r2, #57	; 0x39
 8004cfa:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004cfe:	d0f5      	beq.n	8004cec <_dtoa_r+0x874>
 8004d00:	3201      	adds	r2, #1
 8004d02:	701a      	strb	r2, [r3, #0]
 8004d04:	4631      	mov	r1, r6
 8004d06:	4648      	mov	r0, r9
 8004d08:	f001 fad2 	bl	80062b0 <_Bfree>
 8004d0c:	b155      	cbz	r5, 8004d24 <_dtoa_r+0x8ac>
 8004d0e:	9902      	ldr	r1, [sp, #8]
 8004d10:	b121      	cbz	r1, 8004d1c <_dtoa_r+0x8a4>
 8004d12:	42a9      	cmp	r1, r5
 8004d14:	d002      	beq.n	8004d1c <_dtoa_r+0x8a4>
 8004d16:	4648      	mov	r0, r9
 8004d18:	f001 faca 	bl	80062b0 <_Bfree>
 8004d1c:	4629      	mov	r1, r5
 8004d1e:	4648      	mov	r0, r9
 8004d20:	f001 fac6 	bl	80062b0 <_Bfree>
 8004d24:	4651      	mov	r1, sl
 8004d26:	4648      	mov	r0, r9
 8004d28:	f001 fac2 	bl	80062b0 <_Bfree>
 8004d2c:	2200      	movs	r2, #0
 8004d2e:	9b06      	ldr	r3, [sp, #24]
 8004d30:	7022      	strb	r2, [r4, #0]
 8004d32:	9a05      	ldr	r2, [sp, #20]
 8004d34:	3301      	adds	r3, #1
 8004d36:	6013      	str	r3, [r2, #0]
 8004d38:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004d3a:	2b00      	cmp	r3, #0
 8004d3c:	f43f abdb 	beq.w	80044f6 <_dtoa_r+0x7e>
 8004d40:	4658      	mov	r0, fp
 8004d42:	601c      	str	r4, [r3, #0]
 8004d44:	b01b      	add	sp, #108	; 0x6c
 8004d46:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d4a:	201c      	movs	r0, #28
 8004d4c:	e6eb      	b.n	8004b26 <_dtoa_r+0x6ae>
 8004d4e:	4601      	mov	r1, r0
 8004d50:	4648      	mov	r0, r9
 8004d52:	f001 fbf7 	bl	8006544 <__pow5mult>
 8004d56:	9b02      	ldr	r3, [sp, #8]
 8004d58:	2b01      	cmp	r3, #1
 8004d5a:	4606      	mov	r6, r0
 8004d5c:	f340 80d4 	ble.w	8004f08 <_dtoa_r+0xa90>
 8004d60:	2300      	movs	r3, #0
 8004d62:	930c      	str	r3, [sp, #48]	; 0x30
 8004d64:	6933      	ldr	r3, [r6, #16]
 8004d66:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004d6a:	6918      	ldr	r0, [r3, #16]
 8004d6c:	f001 faea 	bl	8006344 <__hi0bits>
 8004d70:	f1c0 0020 	rsb	r0, r0, #32
 8004d74:	e6cb      	b.n	8004b0e <_dtoa_r+0x696>
 8004d76:	900d      	str	r0, [sp, #52]	; 0x34
 8004d78:	e42a      	b.n	80045d0 <_dtoa_r+0x158>
 8004d7a:	2501      	movs	r5, #1
 8004d7c:	e440      	b.n	8004600 <_dtoa_r+0x188>
 8004d7e:	f1c3 0820 	rsb	r8, r3, #32
 8004d82:	9b00      	ldr	r3, [sp, #0]
 8004d84:	fa03 f008 	lsl.w	r0, r3, r8
 8004d88:	f7ff bbd8 	b.w	800453c <_dtoa_r+0xc4>
 8004d8c:	2300      	movs	r3, #0
 8004d8e:	930a      	str	r3, [sp, #40]	; 0x28
 8004d90:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004d94:	4413      	add	r3, r2
 8004d96:	930e      	str	r3, [sp, #56]	; 0x38
 8004d98:	3301      	adds	r3, #1
 8004d9a:	2b01      	cmp	r3, #1
 8004d9c:	461e      	mov	r6, r3
 8004d9e:	9309      	str	r3, [sp, #36]	; 0x24
 8004da0:	bfb8      	it	lt
 8004da2:	2601      	movlt	r6, #1
 8004da4:	2100      	movs	r1, #0
 8004da6:	2e17      	cmp	r6, #23
 8004da8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004dac:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004dae:	f77f ac89 	ble.w	80046c4 <_dtoa_r+0x24c>
 8004db2:	2201      	movs	r2, #1
 8004db4:	2304      	movs	r3, #4
 8004db6:	005b      	lsls	r3, r3, #1
 8004db8:	f103 0014 	add.w	r0, r3, #20
 8004dbc:	42b0      	cmp	r0, r6
 8004dbe:	4611      	mov	r1, r2
 8004dc0:	f102 0201 	add.w	r2, r2, #1
 8004dc4:	d9f7      	bls.n	8004db6 <_dtoa_r+0x93e>
 8004dc6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004dca:	e47b      	b.n	80046c4 <_dtoa_r+0x24c>
 8004dcc:	2300      	movs	r3, #0
 8004dce:	930a      	str	r3, [sp, #40]	; 0x28
 8004dd0:	9e07      	ldr	r6, [sp, #28]
 8004dd2:	2e00      	cmp	r6, #0
 8004dd4:	f340 80e2 	ble.w	8004f9c <_dtoa_r+0xb24>
 8004dd8:	960e      	str	r6, [sp, #56]	; 0x38
 8004dda:	9609      	str	r6, [sp, #36]	; 0x24
 8004ddc:	e7e2      	b.n	8004da4 <_dtoa_r+0x92c>
 8004dde:	2301      	movs	r3, #1
 8004de0:	930a      	str	r3, [sp, #40]	; 0x28
 8004de2:	e7f5      	b.n	8004dd0 <_dtoa_r+0x958>
 8004de4:	9b00      	ldr	r3, [sp, #0]
 8004de6:	2b00      	cmp	r3, #0
 8004de8:	f47f ae90 	bne.w	8004b0c <_dtoa_r+0x694>
 8004dec:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004df0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004df4:	2b00      	cmp	r3, #0
 8004df6:	f040 8192 	bne.w	800511e <_dtoa_r+0xca6>
 8004dfa:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004dfe:	0d1b      	lsrs	r3, r3, #20
 8004e00:	051b      	lsls	r3, r3, #20
 8004e02:	b12b      	cbz	r3, 8004e10 <_dtoa_r+0x998>
 8004e04:	9b08      	ldr	r3, [sp, #32]
 8004e06:	3301      	adds	r3, #1
 8004e08:	9308      	str	r3, [sp, #32]
 8004e0a:	f108 0801 	add.w	r8, r8, #1
 8004e0e:	2301      	movs	r3, #1
 8004e10:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004e12:	930c      	str	r3, [sp, #48]	; 0x30
 8004e14:	2a00      	cmp	r2, #0
 8004e16:	f43f ae79 	beq.w	8004b0c <_dtoa_r+0x694>
 8004e1a:	e7a3      	b.n	8004d64 <_dtoa_r+0x8ec>
 8004e1c:	463a      	mov	r2, r7
 8004e1e:	4629      	mov	r1, r5
 8004e20:	4648      	mov	r0, r9
 8004e22:	f001 fb8f 	bl	8006544 <__pow5mult>
 8004e26:	4652      	mov	r2, sl
 8004e28:	4601      	mov	r1, r0
 8004e2a:	4605      	mov	r5, r0
 8004e2c:	4648      	mov	r0, r9
 8004e2e:	f001 fae3 	bl	80063f8 <__multiply>
 8004e32:	4651      	mov	r1, sl
 8004e34:	4607      	mov	r7, r0
 8004e36:	4648      	mov	r0, r9
 8004e38:	f001 fa3a 	bl	80062b0 <_Bfree>
 8004e3c:	46ba      	mov	sl, r7
 8004e3e:	2e00      	cmp	r6, #0
 8004e40:	f43f ae57 	beq.w	8004af2 <_dtoa_r+0x67a>
 8004e44:	e64f      	b.n	8004ae6 <_dtoa_r+0x66e>
 8004e46:	4629      	mov	r1, r5
 8004e48:	4622      	mov	r2, r4
 8004e4a:	4648      	mov	r0, r9
 8004e4c:	f001 fbca 	bl	80065e4 <__lshift>
 8004e50:	4605      	mov	r5, r0
 8004e52:	e68d      	b.n	8004b70 <_dtoa_r+0x6f8>
 8004e54:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004e56:	2a00      	cmp	r2, #0
 8004e58:	f000 815d 	beq.w	8005116 <_dtoa_r+0xc9e>
 8004e5c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004e60:	9a08      	ldr	r2, [sp, #32]
 8004e62:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004e64:	4614      	mov	r4, r2
 8004e66:	441a      	add	r2, r3
 8004e68:	4498      	add	r8, r3
 8004e6a:	9208      	str	r2, [sp, #32]
 8004e6c:	e5f7      	b.n	8004a5e <_dtoa_r+0x5e6>
 8004e6e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e70:	2b00      	cmp	r3, #0
 8004e72:	f73f ad3e 	bgt.w	80048f2 <_dtoa_r+0x47a>
 8004e76:	f040 80bc 	bne.w	8004ff2 <_dtoa_r+0xb7a>
 8004e7a:	ec51 0b17 	vmov	r0, r1, d7
 8004e7e:	2200      	movs	r2, #0
 8004e80:	4bb2      	ldr	r3, [pc, #712]	; (800514c <_dtoa_r+0xcd4>)
 8004e82:	f7fb fe59 	bl	8000b38 <__aeabi_dmul>
 8004e86:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e8a:	f7fc f8db 	bl	8001044 <__aeabi_dcmpge>
 8004e8e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004e90:	4635      	mov	r5, r6
 8004e92:	2800      	cmp	r0, #0
 8004e94:	d176      	bne.n	8004f84 <_dtoa_r+0xb0c>
 8004e96:	9a06      	ldr	r2, [sp, #24]
 8004e98:	2331      	movs	r3, #49	; 0x31
 8004e9a:	3201      	adds	r2, #1
 8004e9c:	9206      	str	r2, [sp, #24]
 8004e9e:	f88b 3000 	strb.w	r3, [fp]
 8004ea2:	f10b 0401 	add.w	r4, fp, #1
 8004ea6:	4631      	mov	r1, r6
 8004ea8:	4648      	mov	r0, r9
 8004eaa:	f001 fa01 	bl	80062b0 <_Bfree>
 8004eae:	2d00      	cmp	r5, #0
 8004eb0:	f47f af34 	bne.w	8004d1c <_dtoa_r+0x8a4>
 8004eb4:	e736      	b.n	8004d24 <_dtoa_r+0x8ac>
 8004eb6:	f000 8142 	beq.w	800513e <_dtoa_r+0xcc6>
 8004eba:	9b06      	ldr	r3, [sp, #24]
 8004ebc:	425c      	negs	r4, r3
 8004ebe:	4ba4      	ldr	r3, [pc, #656]	; (8005150 <_dtoa_r+0xcd8>)
 8004ec0:	f004 020f 	and.w	r2, r4, #15
 8004ec4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ec8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004ecc:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004ed0:	f7fb fe32 	bl	8000b38 <__aeabi_dmul>
 8004ed4:	1124      	asrs	r4, r4, #4
 8004ed6:	e9cd 0100 	strd	r0, r1, [sp]
 8004eda:	f000 81c6 	beq.w	800526a <_dtoa_r+0xdf2>
 8004ede:	4d9d      	ldr	r5, [pc, #628]	; (8005154 <_dtoa_r+0xcdc>)
 8004ee0:	2300      	movs	r3, #0
 8004ee2:	2602      	movs	r6, #2
 8004ee4:	07e7      	lsls	r7, r4, #31
 8004ee6:	d505      	bpl.n	8004ef4 <_dtoa_r+0xa7c>
 8004ee8:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004eec:	f7fb fe24 	bl	8000b38 <__aeabi_dmul>
 8004ef0:	3601      	adds	r6, #1
 8004ef2:	2301      	movs	r3, #1
 8004ef4:	1064      	asrs	r4, r4, #1
 8004ef6:	f105 0508 	add.w	r5, r5, #8
 8004efa:	d1f3      	bne.n	8004ee4 <_dtoa_r+0xa6c>
 8004efc:	2b00      	cmp	r3, #0
 8004efe:	f43f ac27 	beq.w	8004750 <_dtoa_r+0x2d8>
 8004f02:	e9cd 0100 	strd	r0, r1, [sp]
 8004f06:	e423      	b.n	8004750 <_dtoa_r+0x2d8>
 8004f08:	9b00      	ldr	r3, [sp, #0]
 8004f0a:	2b00      	cmp	r3, #0
 8004f0c:	f43f af6e 	beq.w	8004dec <_dtoa_r+0x974>
 8004f10:	e726      	b.n	8004d60 <_dtoa_r+0x8e8>
 8004f12:	6869      	ldr	r1, [r5, #4]
 8004f14:	4648      	mov	r0, r9
 8004f16:	f001 f9a5 	bl	8006264 <_Balloc>
 8004f1a:	692b      	ldr	r3, [r5, #16]
 8004f1c:	3302      	adds	r3, #2
 8004f1e:	009a      	lsls	r2, r3, #2
 8004f20:	4604      	mov	r4, r0
 8004f22:	f105 010c 	add.w	r1, r5, #12
 8004f26:	300c      	adds	r0, #12
 8004f28:	f7fb faea 	bl	8000500 <memcpy>
 8004f2c:	4621      	mov	r1, r4
 8004f2e:	2201      	movs	r2, #1
 8004f30:	4648      	mov	r0, r9
 8004f32:	f001 fb57 	bl	80065e4 <__lshift>
 8004f36:	4680      	mov	r8, r0
 8004f38:	e61f      	b.n	8004b7a <_dtoa_r+0x702>
 8004f3a:	2400      	movs	r4, #0
 8004f3c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004f40:	4621      	mov	r1, r4
 8004f42:	4648      	mov	r0, r9
 8004f44:	f001 f98e 	bl	8006264 <_Balloc>
 8004f48:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004f4c:	930e      	str	r3, [sp, #56]	; 0x38
 8004f4e:	9309      	str	r3, [sp, #36]	; 0x24
 8004f50:	2301      	movs	r3, #1
 8004f52:	4683      	mov	fp, r0
 8004f54:	9407      	str	r4, [sp, #28]
 8004f56:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004f5a:	930a      	str	r3, [sp, #40]	; 0x28
 8004f5c:	e4b6      	b.n	80048cc <_dtoa_r+0x454>
 8004f5e:	f001 f9b1 	bl	80062c4 <__multadd>
 8004f62:	4627      	mov	r7, r4
 8004f64:	4605      	mov	r5, r0
 8004f66:	4680      	mov	r8, r0
 8004f68:	e614      	b.n	8004b94 <_dtoa_r+0x71c>
 8004f6a:	4648      	mov	r0, r9
 8004f6c:	f001 f9a0 	bl	80062b0 <_Bfree>
 8004f70:	2301      	movs	r3, #1
 8004f72:	e639      	b.n	8004be8 <_dtoa_r+0x770>
 8004f74:	9b02      	ldr	r3, [sp, #8]
 8004f76:	2b02      	cmp	r3, #2
 8004f78:	f77f adf3 	ble.w	8004b62 <_dtoa_r+0x6ea>
 8004f7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f7e:	2b00      	cmp	r3, #0
 8004f80:	f000 80cf 	beq.w	8005122 <_dtoa_r+0xcaa>
 8004f84:	9b07      	ldr	r3, [sp, #28]
 8004f86:	43db      	mvns	r3, r3
 8004f88:	9306      	str	r3, [sp, #24]
 8004f8a:	465c      	mov	r4, fp
 8004f8c:	e78b      	b.n	8004ea6 <_dtoa_r+0xa2e>
 8004f8e:	9a06      	ldr	r2, [sp, #24]
 8004f90:	2331      	movs	r3, #49	; 0x31
 8004f92:	3201      	adds	r2, #1
 8004f94:	9206      	str	r2, [sp, #24]
 8004f96:	f88b 3000 	strb.w	r3, [fp]
 8004f9a:	e6b3      	b.n	8004d04 <_dtoa_r+0x88c>
 8004f9c:	2401      	movs	r4, #1
 8004f9e:	9409      	str	r4, [sp, #36]	; 0x24
 8004fa0:	9407      	str	r4, [sp, #28]
 8004fa2:	f7ff bb8b 	b.w	80046bc <_dtoa_r+0x244>
 8004fa6:	4630      	mov	r0, r6
 8004fa8:	f7fb fd5c 	bl	8000a64 <__aeabi_i2d>
 8004fac:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004fb0:	f7fb fdc2 	bl	8000b38 <__aeabi_dmul>
 8004fb4:	2200      	movs	r2, #0
 8004fb6:	4b68      	ldr	r3, [pc, #416]	; (8005158 <_dtoa_r+0xce0>)
 8004fb8:	f7fb fc08 	bl	80007cc <__adddf3>
 8004fbc:	4606      	mov	r6, r0
 8004fbe:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004fc2:	2200      	movs	r2, #0
 8004fc4:	4b61      	ldr	r3, [pc, #388]	; (800514c <_dtoa_r+0xcd4>)
 8004fc6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004fca:	f7fb fbfd 	bl	80007c8 <__aeabi_dsub>
 8004fce:	4632      	mov	r2, r6
 8004fd0:	463b      	mov	r3, r7
 8004fd2:	4604      	mov	r4, r0
 8004fd4:	460d      	mov	r5, r1
 8004fd6:	f7fc f83f 	bl	8001058 <__aeabi_dcmpgt>
 8004fda:	2800      	cmp	r0, #0
 8004fdc:	d14f      	bne.n	800507e <_dtoa_r+0xc06>
 8004fde:	4632      	mov	r2, r6
 8004fe0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004fe4:	4620      	mov	r0, r4
 8004fe6:	4629      	mov	r1, r5
 8004fe8:	f7fc f818 	bl	800101c <__aeabi_dcmplt>
 8004fec:	2800      	cmp	r0, #0
 8004fee:	f43f ac69 	beq.w	80048c4 <_dtoa_r+0x44c>
 8004ff2:	2600      	movs	r6, #0
 8004ff4:	4635      	mov	r5, r6
 8004ff6:	e7c5      	b.n	8004f84 <_dtoa_r+0xb0c>
 8004ff8:	2301      	movs	r3, #1
 8004ffa:	930a      	str	r3, [sp, #40]	; 0x28
 8004ffc:	e6c8      	b.n	8004d90 <_dtoa_r+0x918>
 8004ffe:	4651      	mov	r1, sl
 8005000:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005002:	4648      	mov	r0, r9
 8005004:	f001 fa9e 	bl	8006544 <__pow5mult>
 8005008:	4682      	mov	sl, r0
 800500a:	e572      	b.n	8004af2 <_dtoa_r+0x67a>
 800500c:	f8dd a000 	ldr.w	sl, [sp]
 8005010:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005014:	e686      	b.n	8004d24 <_dtoa_r+0x8ac>
 8005016:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005018:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800501a:	1afb      	subs	r3, r7, r3
 800501c:	441a      	add	r2, r3
 800501e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005022:	2700      	movs	r7, #0
 8005024:	e512      	b.n	8004a4c <_dtoa_r+0x5d4>
 8005026:	2b00      	cmp	r3, #0
 8005028:	9402      	str	r4, [sp, #8]
 800502a:	465e      	mov	r6, fp
 800502c:	f107 0401 	add.w	r4, r7, #1
 8005030:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005034:	f300 80ba 	bgt.w	80051ac <_dtoa_r+0xd34>
 8005038:	9b00      	ldr	r3, [sp, #0]
 800503a:	9502      	str	r5, [sp, #8]
 800503c:	703b      	strb	r3, [r7, #0]
 800503e:	4645      	mov	r5, r8
 8005040:	e660      	b.n	8004d04 <_dtoa_r+0x88c>
 8005042:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005046:	2602      	movs	r6, #2
 8005048:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800504c:	f7ff bb67 	b.w	800471e <_dtoa_r+0x2a6>
 8005050:	9b00      	ldr	r3, [sp, #0]
 8005052:	2b39      	cmp	r3, #57	; 0x39
 8005054:	465e      	mov	r6, fp
 8005056:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800505a:	f000 80b9 	beq.w	80051d0 <_dtoa_r+0xd58>
 800505e:	9b00      	ldr	r3, [sp, #0]
 8005060:	9502      	str	r5, [sp, #8]
 8005062:	3301      	adds	r3, #1
 8005064:	703b      	strb	r3, [r7, #0]
 8005066:	4645      	mov	r5, r8
 8005068:	e64c      	b.n	8004d04 <_dtoa_r+0x88c>
 800506a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800506e:	1a9c      	subs	r4, r3, r2
 8005070:	e4f5      	b.n	8004a5e <_dtoa_r+0x5e6>
 8005072:	465e      	mov	r6, fp
 8005074:	9502      	str	r5, [sp, #8]
 8005076:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800507a:	4645      	mov	r5, r8
 800507c:	e61a      	b.n	8004cb4 <_dtoa_r+0x83c>
 800507e:	2600      	movs	r6, #0
 8005080:	4635      	mov	r5, r6
 8005082:	e708      	b.n	8004e96 <_dtoa_r+0xa1e>
 8005084:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005088:	e9dd 0100 	ldrd	r0, r1, [sp]
 800508c:	f7fb fd54 	bl	8000b38 <__aeabi_dmul>
 8005090:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005092:	f88b 5000 	strb.w	r5, [fp]
 8005096:	2b01      	cmp	r3, #1
 8005098:	e9cd 0100 	strd	r0, r1, [sp]
 800509c:	d020      	beq.n	80050e0 <_dtoa_r+0xc68>
 800509e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80050a0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80050a4:	445b      	add	r3, fp
 80050a6:	4698      	mov	r8, r3
 80050a8:	2200      	movs	r2, #0
 80050aa:	4b2c      	ldr	r3, [pc, #176]	; (800515c <_dtoa_r+0xce4>)
 80050ac:	4630      	mov	r0, r6
 80050ae:	4639      	mov	r1, r7
 80050b0:	f7fb fd42 	bl	8000b38 <__aeabi_dmul>
 80050b4:	460f      	mov	r7, r1
 80050b6:	4606      	mov	r6, r0
 80050b8:	f7fb ffee 	bl	8001098 <__aeabi_d2iz>
 80050bc:	4605      	mov	r5, r0
 80050be:	f7fb fcd1 	bl	8000a64 <__aeabi_i2d>
 80050c2:	3530      	adds	r5, #48	; 0x30
 80050c4:	4602      	mov	r2, r0
 80050c6:	460b      	mov	r3, r1
 80050c8:	4630      	mov	r0, r6
 80050ca:	4639      	mov	r1, r7
 80050cc:	f7fb fb7c 	bl	80007c8 <__aeabi_dsub>
 80050d0:	f804 5b01 	strb.w	r5, [r4], #1
 80050d4:	4544      	cmp	r4, r8
 80050d6:	4606      	mov	r6, r0
 80050d8:	460f      	mov	r7, r1
 80050da:	d1e5      	bne.n	80050a8 <_dtoa_r+0xc30>
 80050dc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80050e0:	4b1f      	ldr	r3, [pc, #124]	; (8005160 <_dtoa_r+0xce8>)
 80050e2:	2200      	movs	r2, #0
 80050e4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80050e8:	f7fb fb70 	bl	80007cc <__adddf3>
 80050ec:	4632      	mov	r2, r6
 80050ee:	463b      	mov	r3, r7
 80050f0:	f7fb ff94 	bl	800101c <__aeabi_dcmplt>
 80050f4:	2800      	cmp	r0, #0
 80050f6:	d070      	beq.n	80051da <_dtoa_r+0xd62>
 80050f8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80050fa:	9306      	str	r3, [sp, #24]
 80050fc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005100:	e48f      	b.n	8004a22 <_dtoa_r+0x5aa>
 8005102:	2330      	movs	r3, #48	; 0x30
 8005104:	f88b 3000 	strb.w	r3, [fp]
 8005108:	9b06      	ldr	r3, [sp, #24]
 800510a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800510e:	3301      	adds	r3, #1
 8005110:	9306      	str	r3, [sp, #24]
 8005112:	465b      	mov	r3, fp
 8005114:	e489      	b.n	8004a2a <_dtoa_r+0x5b2>
 8005116:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005118:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800511c:	e6a0      	b.n	8004e60 <_dtoa_r+0x9e8>
 800511e:	2300      	movs	r3, #0
 8005120:	e676      	b.n	8004e10 <_dtoa_r+0x998>
 8005122:	4631      	mov	r1, r6
 8005124:	2205      	movs	r2, #5
 8005126:	4648      	mov	r0, r9
 8005128:	f001 f8cc 	bl	80062c4 <__multadd>
 800512c:	4601      	mov	r1, r0
 800512e:	4606      	mov	r6, r0
 8005130:	4650      	mov	r0, sl
 8005132:	f001 faad 	bl	8006690 <__mcmp>
 8005136:	2800      	cmp	r0, #0
 8005138:	f73f aead 	bgt.w	8004e96 <_dtoa_r+0xa1e>
 800513c:	e722      	b.n	8004f84 <_dtoa_r+0xb0c>
 800513e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005142:	2602      	movs	r6, #2
 8005144:	ed8d 7b00 	vstr	d7, [sp]
 8005148:	f7ff bb02 	b.w	8004750 <_dtoa_r+0x2d8>
 800514c:	40140000 	.word	0x40140000
 8005150:	080075e0 	.word	0x080075e0
 8005154:	080075b8 	.word	0x080075b8
 8005158:	401c0000 	.word	0x401c0000
 800515c:	40240000 	.word	0x40240000
 8005160:	3fe00000 	.word	0x3fe00000
 8005164:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005166:	2b00      	cmp	r3, #0
 8005168:	f43f af1d 	beq.w	8004fa6 <_dtoa_r+0xb2e>
 800516c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800516e:	2c00      	cmp	r4, #0
 8005170:	f77f aba8 	ble.w	80048c4 <_dtoa_r+0x44c>
 8005174:	2200      	movs	r2, #0
 8005176:	4b45      	ldr	r3, [pc, #276]	; (800528c <_dtoa_r+0xe14>)
 8005178:	e9dd 0100 	ldrd	r0, r1, [sp]
 800517c:	f7fb fcdc 	bl	8000b38 <__aeabi_dmul>
 8005180:	e9cd 0100 	strd	r0, r1, [sp]
 8005184:	1c70      	adds	r0, r6, #1
 8005186:	f7fb fc6d 	bl	8000a64 <__aeabi_i2d>
 800518a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800518e:	f7fb fcd3 	bl	8000b38 <__aeabi_dmul>
 8005192:	4b3f      	ldr	r3, [pc, #252]	; (8005290 <_dtoa_r+0xe18>)
 8005194:	2200      	movs	r2, #0
 8005196:	f7fb fb19 	bl	80007cc <__adddf3>
 800519a:	9b06      	ldr	r3, [sp, #24]
 800519c:	9412      	str	r4, [sp, #72]	; 0x48
 800519e:	3b01      	subs	r3, #1
 80051a0:	4606      	mov	r6, r0
 80051a2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80051a6:	9316      	str	r3, [sp, #88]	; 0x58
 80051a8:	f7ff baf3 	b.w	8004792 <_dtoa_r+0x31a>
 80051ac:	4651      	mov	r1, sl
 80051ae:	2201      	movs	r2, #1
 80051b0:	4648      	mov	r0, r9
 80051b2:	f001 fa17 	bl	80065e4 <__lshift>
 80051b6:	4631      	mov	r1, r6
 80051b8:	4682      	mov	sl, r0
 80051ba:	f001 fa69 	bl	8006690 <__mcmp>
 80051be:	2800      	cmp	r0, #0
 80051c0:	dd3b      	ble.n	800523a <_dtoa_r+0xdc2>
 80051c2:	9b00      	ldr	r3, [sp, #0]
 80051c4:	2b39      	cmp	r3, #57	; 0x39
 80051c6:	d003      	beq.n	80051d0 <_dtoa_r+0xd58>
 80051c8:	9b02      	ldr	r3, [sp, #8]
 80051ca:	3331      	adds	r3, #49	; 0x31
 80051cc:	9300      	str	r3, [sp, #0]
 80051ce:	e733      	b.n	8005038 <_dtoa_r+0xbc0>
 80051d0:	2239      	movs	r2, #57	; 0x39
 80051d2:	9502      	str	r5, [sp, #8]
 80051d4:	703a      	strb	r2, [r7, #0]
 80051d6:	4645      	mov	r5, r8
 80051d8:	e58e      	b.n	8004cf8 <_dtoa_r+0x880>
 80051da:	e9dd 2300 	ldrd	r2, r3, [sp]
 80051de:	2000      	movs	r0, #0
 80051e0:	492c      	ldr	r1, [pc, #176]	; (8005294 <_dtoa_r+0xe1c>)
 80051e2:	f7fb faf1 	bl	80007c8 <__aeabi_dsub>
 80051e6:	4632      	mov	r2, r6
 80051e8:	463b      	mov	r3, r7
 80051ea:	f7fb ff35 	bl	8001058 <__aeabi_dcmpgt>
 80051ee:	b910      	cbnz	r0, 80051f6 <_dtoa_r+0xd7e>
 80051f0:	f7ff bb68 	b.w	80048c4 <_dtoa_r+0x44c>
 80051f4:	4614      	mov	r4, r2
 80051f6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80051fa:	2b30      	cmp	r3, #48	; 0x30
 80051fc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005200:	d0f8      	beq.n	80051f4 <_dtoa_r+0xd7c>
 8005202:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005204:	9306      	str	r3, [sp, #24]
 8005206:	e58d      	b.n	8004d24 <_dtoa_r+0x8ac>
 8005208:	46d9      	mov	r9, fp
 800520a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800520e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005212:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005214:	9306      	str	r3, [sp, #24]
 8005216:	e404      	b.n	8004a22 <_dtoa_r+0x5aa>
 8005218:	9b00      	ldr	r3, [sp, #0]
 800521a:	2b39      	cmp	r3, #57	; 0x39
 800521c:	4621      	mov	r1, r4
 800521e:	4632      	mov	r2, r6
 8005220:	f107 0401 	add.w	r4, r7, #1
 8005224:	465e      	mov	r6, fp
 8005226:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800522a:	d0d1      	beq.n	80051d0 <_dtoa_r+0xd58>
 800522c:	2a00      	cmp	r2, #0
 800522e:	f77f af03 	ble.w	8005038 <_dtoa_r+0xbc0>
 8005232:	460b      	mov	r3, r1
 8005234:	3331      	adds	r3, #49	; 0x31
 8005236:	9300      	str	r3, [sp, #0]
 8005238:	e6fe      	b.n	8005038 <_dtoa_r+0xbc0>
 800523a:	f47f aefd 	bne.w	8005038 <_dtoa_r+0xbc0>
 800523e:	9b00      	ldr	r3, [sp, #0]
 8005240:	07da      	lsls	r2, r3, #31
 8005242:	f57f aef9 	bpl.w	8005038 <_dtoa_r+0xbc0>
 8005246:	e7bc      	b.n	80051c2 <_dtoa_r+0xd4a>
 8005248:	4629      	mov	r1, r5
 800524a:	2300      	movs	r3, #0
 800524c:	220a      	movs	r2, #10
 800524e:	4648      	mov	r0, r9
 8005250:	f001 f838 	bl	80062c4 <__multadd>
 8005254:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005256:	2b00      	cmp	r3, #0
 8005258:	4605      	mov	r5, r0
 800525a:	dd09      	ble.n	8005270 <_dtoa_r+0xdf8>
 800525c:	9309      	str	r3, [sp, #36]	; 0x24
 800525e:	e484      	b.n	8004b6a <_dtoa_r+0x6f2>
 8005260:	9b02      	ldr	r3, [sp, #8]
 8005262:	2b02      	cmp	r3, #2
 8005264:	dc0e      	bgt.n	8005284 <_dtoa_r+0xe0c>
 8005266:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005268:	e507      	b.n	8004c7a <_dtoa_r+0x802>
 800526a:	2602      	movs	r6, #2
 800526c:	f7ff ba70 	b.w	8004750 <_dtoa_r+0x2d8>
 8005270:	9b02      	ldr	r3, [sp, #8]
 8005272:	2b02      	cmp	r3, #2
 8005274:	dc06      	bgt.n	8005284 <_dtoa_r+0xe0c>
 8005276:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005278:	e7f0      	b.n	800525c <_dtoa_r+0xde4>
 800527a:	f43f ac59 	beq.w	8004b30 <_dtoa_r+0x6b8>
 800527e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005282:	e450      	b.n	8004b26 <_dtoa_r+0x6ae>
 8005284:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005286:	9309      	str	r3, [sp, #36]	; 0x24
 8005288:	e678      	b.n	8004f7c <_dtoa_r+0xb04>
 800528a:	bf00      	nop
 800528c:	40240000 	.word	0x40240000
 8005290:	401c0000 	.word	0x401c0000
 8005294:	3fe00000 	.word	0x3fe00000

08005298 <__sflush_r>:
 8005298:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800529c:	b29a      	uxth	r2, r3
 800529e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80052a2:	460c      	mov	r4, r1
 80052a4:	0711      	lsls	r1, r2, #28
 80052a6:	4680      	mov	r8, r0
 80052a8:	d444      	bmi.n	8005334 <__sflush_r+0x9c>
 80052aa:	6862      	ldr	r2, [r4, #4]
 80052ac:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80052b0:	2a00      	cmp	r2, #0
 80052b2:	81a3      	strh	r3, [r4, #12]
 80052b4:	dd59      	ble.n	800536a <__sflush_r+0xd2>
 80052b6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80052b8:	2d00      	cmp	r5, #0
 80052ba:	d053      	beq.n	8005364 <__sflush_r+0xcc>
 80052bc:	2200      	movs	r2, #0
 80052be:	b29b      	uxth	r3, r3
 80052c0:	f8d8 6000 	ldr.w	r6, [r8]
 80052c4:	69e1      	ldr	r1, [r4, #28]
 80052c6:	f8c8 2000 	str.w	r2, [r8]
 80052ca:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80052ce:	f040 8083 	bne.w	80053d8 <__sflush_r+0x140>
 80052d2:	2301      	movs	r3, #1
 80052d4:	4640      	mov	r0, r8
 80052d6:	47a8      	blx	r5
 80052d8:	1c42      	adds	r2, r0, #1
 80052da:	d04a      	beq.n	8005372 <__sflush_r+0xda>
 80052dc:	89a3      	ldrh	r3, [r4, #12]
 80052de:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80052e0:	69e1      	ldr	r1, [r4, #28]
 80052e2:	075b      	lsls	r3, r3, #29
 80052e4:	d505      	bpl.n	80052f2 <__sflush_r+0x5a>
 80052e6:	6862      	ldr	r2, [r4, #4]
 80052e8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80052ea:	1a80      	subs	r0, r0, r2
 80052ec:	b10b      	cbz	r3, 80052f2 <__sflush_r+0x5a>
 80052ee:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80052f0:	1ac0      	subs	r0, r0, r3
 80052f2:	4602      	mov	r2, r0
 80052f4:	2300      	movs	r3, #0
 80052f6:	4640      	mov	r0, r8
 80052f8:	47a8      	blx	r5
 80052fa:	1c47      	adds	r7, r0, #1
 80052fc:	d045      	beq.n	800538a <__sflush_r+0xf2>
 80052fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005302:	6922      	ldr	r2, [r4, #16]
 8005304:	6022      	str	r2, [r4, #0]
 8005306:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800530a:	2200      	movs	r2, #0
 800530c:	81a3      	strh	r3, [r4, #12]
 800530e:	04db      	lsls	r3, r3, #19
 8005310:	6062      	str	r2, [r4, #4]
 8005312:	d500      	bpl.n	8005316 <__sflush_r+0x7e>
 8005314:	6520      	str	r0, [r4, #80]	; 0x50
 8005316:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005318:	f8c8 6000 	str.w	r6, [r8]
 800531c:	b311      	cbz	r1, 8005364 <__sflush_r+0xcc>
 800531e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005322:	4299      	cmp	r1, r3
 8005324:	d002      	beq.n	800532c <__sflush_r+0x94>
 8005326:	4640      	mov	r0, r8
 8005328:	f000 f95e 	bl	80055e8 <_free_r>
 800532c:	2000      	movs	r0, #0
 800532e:	6320      	str	r0, [r4, #48]	; 0x30
 8005330:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005334:	6926      	ldr	r6, [r4, #16]
 8005336:	b1ae      	cbz	r6, 8005364 <__sflush_r+0xcc>
 8005338:	6825      	ldr	r5, [r4, #0]
 800533a:	6026      	str	r6, [r4, #0]
 800533c:	0792      	lsls	r2, r2, #30
 800533e:	bf0c      	ite	eq
 8005340:	6963      	ldreq	r3, [r4, #20]
 8005342:	2300      	movne	r3, #0
 8005344:	1bad      	subs	r5, r5, r6
 8005346:	60a3      	str	r3, [r4, #8]
 8005348:	e00a      	b.n	8005360 <__sflush_r+0xc8>
 800534a:	462b      	mov	r3, r5
 800534c:	4632      	mov	r2, r6
 800534e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005350:	69e1      	ldr	r1, [r4, #28]
 8005352:	4640      	mov	r0, r8
 8005354:	47b8      	blx	r7
 8005356:	2800      	cmp	r0, #0
 8005358:	eba5 0500 	sub.w	r5, r5, r0
 800535c:	4406      	add	r6, r0
 800535e:	dd2b      	ble.n	80053b8 <__sflush_r+0x120>
 8005360:	2d00      	cmp	r5, #0
 8005362:	dcf2      	bgt.n	800534a <__sflush_r+0xb2>
 8005364:	2000      	movs	r0, #0
 8005366:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800536a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800536c:	2a00      	cmp	r2, #0
 800536e:	dca2      	bgt.n	80052b6 <__sflush_r+0x1e>
 8005370:	e7f8      	b.n	8005364 <__sflush_r+0xcc>
 8005372:	f8d8 3000 	ldr.w	r3, [r8]
 8005376:	2b00      	cmp	r3, #0
 8005378:	d0b0      	beq.n	80052dc <__sflush_r+0x44>
 800537a:	2b1d      	cmp	r3, #29
 800537c:	d001      	beq.n	8005382 <__sflush_r+0xea>
 800537e:	2b16      	cmp	r3, #22
 8005380:	d12c      	bne.n	80053dc <__sflush_r+0x144>
 8005382:	f8c8 6000 	str.w	r6, [r8]
 8005386:	2000      	movs	r0, #0
 8005388:	e7ed      	b.n	8005366 <__sflush_r+0xce>
 800538a:	f8d8 1000 	ldr.w	r1, [r8]
 800538e:	291d      	cmp	r1, #29
 8005390:	d81a      	bhi.n	80053c8 <__sflush_r+0x130>
 8005392:	4b15      	ldr	r3, [pc, #84]	; (80053e8 <__sflush_r+0x150>)
 8005394:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005398:	40cb      	lsrs	r3, r1
 800539a:	43db      	mvns	r3, r3
 800539c:	f013 0301 	ands.w	r3, r3, #1
 80053a0:	d114      	bne.n	80053cc <__sflush_r+0x134>
 80053a2:	6925      	ldr	r5, [r4, #16]
 80053a4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80053a8:	e9c4 5300 	strd	r5, r3, [r4]
 80053ac:	04d5      	lsls	r5, r2, #19
 80053ae:	81a2      	strh	r2, [r4, #12]
 80053b0:	d5b1      	bpl.n	8005316 <__sflush_r+0x7e>
 80053b2:	2900      	cmp	r1, #0
 80053b4:	d1af      	bne.n	8005316 <__sflush_r+0x7e>
 80053b6:	e7ad      	b.n	8005314 <__sflush_r+0x7c>
 80053b8:	89a3      	ldrh	r3, [r4, #12]
 80053ba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80053be:	81a3      	strh	r3, [r4, #12]
 80053c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80053c4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80053c8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80053cc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80053d0:	81a2      	strh	r2, [r4, #12]
 80053d2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80053d6:	e7c6      	b.n	8005366 <__sflush_r+0xce>
 80053d8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80053da:	e782      	b.n	80052e2 <__sflush_r+0x4a>
 80053dc:	89a3      	ldrh	r3, [r4, #12]
 80053de:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80053e2:	81a3      	strh	r3, [r4, #12]
 80053e4:	e7bf      	b.n	8005366 <__sflush_r+0xce>
 80053e6:	bf00      	nop
 80053e8:	20400001 	.word	0x20400001

080053ec <_fflush_r>:
 80053ec:	b538      	push	{r3, r4, r5, lr}
 80053ee:	460d      	mov	r5, r1
 80053f0:	4604      	mov	r4, r0
 80053f2:	b108      	cbz	r0, 80053f8 <_fflush_r+0xc>
 80053f4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80053f6:	b1a3      	cbz	r3, 8005422 <_fflush_r+0x36>
 80053f8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80053fc:	b1b8      	cbz	r0, 800542e <_fflush_r+0x42>
 80053fe:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005400:	07db      	lsls	r3, r3, #31
 8005402:	d401      	bmi.n	8005408 <_fflush_r+0x1c>
 8005404:	0581      	lsls	r1, r0, #22
 8005406:	d51a      	bpl.n	800543e <_fflush_r+0x52>
 8005408:	4620      	mov	r0, r4
 800540a:	4629      	mov	r1, r5
 800540c:	f7ff ff44 	bl	8005298 <__sflush_r>
 8005410:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005412:	07da      	lsls	r2, r3, #31
 8005414:	4604      	mov	r4, r0
 8005416:	d402      	bmi.n	800541e <_fflush_r+0x32>
 8005418:	89ab      	ldrh	r3, [r5, #12]
 800541a:	059b      	lsls	r3, r3, #22
 800541c:	d50a      	bpl.n	8005434 <_fflush_r+0x48>
 800541e:	4620      	mov	r0, r4
 8005420:	bd38      	pop	{r3, r4, r5, pc}
 8005422:	f000 f83f 	bl	80054a4 <__sinit>
 8005426:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800542a:	2800      	cmp	r0, #0
 800542c:	d1e7      	bne.n	80053fe <_fflush_r+0x12>
 800542e:	4604      	mov	r4, r0
 8005430:	4620      	mov	r0, r4
 8005432:	bd38      	pop	{r3, r4, r5, pc}
 8005434:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005436:	f000 fb87 	bl	8005b48 <__retarget_lock_release_recursive>
 800543a:	4620      	mov	r0, r4
 800543c:	bd38      	pop	{r3, r4, r5, pc}
 800543e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005440:	f000 fb80 	bl	8005b44 <__retarget_lock_acquire_recursive>
 8005444:	e7e0      	b.n	8005408 <_fflush_r+0x1c>
 8005446:	bf00      	nop

08005448 <std>:
 8005448:	b510      	push	{r4, lr}
 800544a:	2300      	movs	r3, #0
 800544c:	4604      	mov	r4, r0
 800544e:	8181      	strh	r1, [r0, #12]
 8005450:	81c2      	strh	r2, [r0, #14]
 8005452:	e9c0 3300 	strd	r3, r3, [r0]
 8005456:	6083      	str	r3, [r0, #8]
 8005458:	6643      	str	r3, [r0, #100]	; 0x64
 800545a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800545e:	6183      	str	r3, [r0, #24]
 8005460:	4619      	mov	r1, r3
 8005462:	2208      	movs	r2, #8
 8005464:	305c      	adds	r0, #92	; 0x5c
 8005466:	f7fd f8c9 	bl	80025fc <memset>
 800546a:	4807      	ldr	r0, [pc, #28]	; (8005488 <std+0x40>)
 800546c:	4907      	ldr	r1, [pc, #28]	; (800548c <std+0x44>)
 800546e:	4a08      	ldr	r2, [pc, #32]	; (8005490 <std+0x48>)
 8005470:	4b08      	ldr	r3, [pc, #32]	; (8005494 <std+0x4c>)
 8005472:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005474:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005478:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800547c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005480:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005484:	f000 bb5a 	b.w	8005b3c <__retarget_lock_init_recursive>
 8005488:	08006c61 	.word	0x08006c61
 800548c:	08006c85 	.word	0x08006c85
 8005490:	08006cc1 	.word	0x08006cc1
 8005494:	08006ce1 	.word	0x08006ce1

08005498 <_cleanup_r>:
 8005498:	4901      	ldr	r1, [pc, #4]	; (80054a0 <_cleanup_r+0x8>)
 800549a:	f000 bb17 	b.w	8005acc <_fwalk_reent>
 800549e:	bf00      	nop
 80054a0:	08006f51 	.word	0x08006f51

080054a4 <__sinit>:
 80054a4:	b510      	push	{r4, lr}
 80054a6:	4604      	mov	r4, r0
 80054a8:	4812      	ldr	r0, [pc, #72]	; (80054f4 <__sinit+0x50>)
 80054aa:	f000 fb4b 	bl	8005b44 <__retarget_lock_acquire_recursive>
 80054ae:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80054b0:	b9d2      	cbnz	r2, 80054e8 <__sinit+0x44>
 80054b2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80054b6:	4810      	ldr	r0, [pc, #64]	; (80054f8 <__sinit+0x54>)
 80054b8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80054bc:	2103      	movs	r1, #3
 80054be:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80054c2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80054c4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80054c8:	6860      	ldr	r0, [r4, #4]
 80054ca:	2104      	movs	r1, #4
 80054cc:	f7ff ffbc 	bl	8005448 <std>
 80054d0:	2201      	movs	r2, #1
 80054d2:	2109      	movs	r1, #9
 80054d4:	68a0      	ldr	r0, [r4, #8]
 80054d6:	f7ff ffb7 	bl	8005448 <std>
 80054da:	2202      	movs	r2, #2
 80054dc:	2112      	movs	r1, #18
 80054de:	68e0      	ldr	r0, [r4, #12]
 80054e0:	f7ff ffb2 	bl	8005448 <std>
 80054e4:	2301      	movs	r3, #1
 80054e6:	63a3      	str	r3, [r4, #56]	; 0x38
 80054e8:	4802      	ldr	r0, [pc, #8]	; (80054f4 <__sinit+0x50>)
 80054ea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80054ee:	f000 bb2b 	b.w	8005b48 <__retarget_lock_release_recursive>
 80054f2:	bf00      	nop
 80054f4:	20000af4 	.word	0x20000af4
 80054f8:	08005499 	.word	0x08005499

080054fc <__sfp_lock_acquire>:
 80054fc:	4801      	ldr	r0, [pc, #4]	; (8005504 <__sfp_lock_acquire+0x8>)
 80054fe:	f000 bb21 	b.w	8005b44 <__retarget_lock_acquire_recursive>
 8005502:	bf00      	nop
 8005504:	20000b08 	.word	0x20000b08

08005508 <__sfp_lock_release>:
 8005508:	4801      	ldr	r0, [pc, #4]	; (8005510 <__sfp_lock_release+0x8>)
 800550a:	f000 bb1d 	b.w	8005b48 <__retarget_lock_release_recursive>
 800550e:	bf00      	nop
 8005510:	20000b08 	.word	0x20000b08

08005514 <__libc_fini_array>:
 8005514:	b538      	push	{r3, r4, r5, lr}
 8005516:	4c0a      	ldr	r4, [pc, #40]	; (8005540 <__libc_fini_array+0x2c>)
 8005518:	4d0a      	ldr	r5, [pc, #40]	; (8005544 <__libc_fini_array+0x30>)
 800551a:	1b64      	subs	r4, r4, r5
 800551c:	10a4      	asrs	r4, r4, #2
 800551e:	d00a      	beq.n	8005536 <__libc_fini_array+0x22>
 8005520:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005524:	3b01      	subs	r3, #1
 8005526:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800552a:	3c01      	subs	r4, #1
 800552c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005530:	4798      	blx	r3
 8005532:	2c00      	cmp	r4, #0
 8005534:	d1f9      	bne.n	800552a <__libc_fini_array+0x16>
 8005536:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800553a:	f001 befd 	b.w	8007338 <_fini>
 800553e:	bf00      	nop
 8005540:	080077dc 	.word	0x080077dc
 8005544:	080077d8 	.word	0x080077d8

08005548 <_malloc_trim_r>:
 8005548:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800554a:	4f24      	ldr	r7, [pc, #144]	; (80055dc <_malloc_trim_r+0x94>)
 800554c:	460c      	mov	r4, r1
 800554e:	4606      	mov	r6, r0
 8005550:	f000 fe7c 	bl	800624c <__malloc_lock>
 8005554:	68bb      	ldr	r3, [r7, #8]
 8005556:	685d      	ldr	r5, [r3, #4]
 8005558:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800555c:	310f      	adds	r1, #15
 800555e:	f025 0503 	bic.w	r5, r5, #3
 8005562:	4429      	add	r1, r5
 8005564:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005568:	f021 010f 	bic.w	r1, r1, #15
 800556c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005570:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005574:	db07      	blt.n	8005586 <_malloc_trim_r+0x3e>
 8005576:	2100      	movs	r1, #0
 8005578:	4630      	mov	r0, r6
 800557a:	f001 fb5f 	bl	8006c3c <_sbrk_r>
 800557e:	68bb      	ldr	r3, [r7, #8]
 8005580:	442b      	add	r3, r5
 8005582:	4298      	cmp	r0, r3
 8005584:	d004      	beq.n	8005590 <_malloc_trim_r+0x48>
 8005586:	4630      	mov	r0, r6
 8005588:	f000 fe66 	bl	8006258 <__malloc_unlock>
 800558c:	2000      	movs	r0, #0
 800558e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005590:	4261      	negs	r1, r4
 8005592:	4630      	mov	r0, r6
 8005594:	f001 fb52 	bl	8006c3c <_sbrk_r>
 8005598:	3001      	adds	r0, #1
 800559a:	d00d      	beq.n	80055b8 <_malloc_trim_r+0x70>
 800559c:	4b10      	ldr	r3, [pc, #64]	; (80055e0 <_malloc_trim_r+0x98>)
 800559e:	68ba      	ldr	r2, [r7, #8]
 80055a0:	6819      	ldr	r1, [r3, #0]
 80055a2:	1b2d      	subs	r5, r5, r4
 80055a4:	f045 0501 	orr.w	r5, r5, #1
 80055a8:	4630      	mov	r0, r6
 80055aa:	1b09      	subs	r1, r1, r4
 80055ac:	6055      	str	r5, [r2, #4]
 80055ae:	6019      	str	r1, [r3, #0]
 80055b0:	f000 fe52 	bl	8006258 <__malloc_unlock>
 80055b4:	2001      	movs	r0, #1
 80055b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80055b8:	2100      	movs	r1, #0
 80055ba:	4630      	mov	r0, r6
 80055bc:	f001 fb3e 	bl	8006c3c <_sbrk_r>
 80055c0:	68ba      	ldr	r2, [r7, #8]
 80055c2:	1a83      	subs	r3, r0, r2
 80055c4:	2b0f      	cmp	r3, #15
 80055c6:	ddde      	ble.n	8005586 <_malloc_trim_r+0x3e>
 80055c8:	4c06      	ldr	r4, [pc, #24]	; (80055e4 <_malloc_trim_r+0x9c>)
 80055ca:	4905      	ldr	r1, [pc, #20]	; (80055e0 <_malloc_trim_r+0x98>)
 80055cc:	6824      	ldr	r4, [r4, #0]
 80055ce:	f043 0301 	orr.w	r3, r3, #1
 80055d2:	1b00      	subs	r0, r0, r4
 80055d4:	6053      	str	r3, [r2, #4]
 80055d6:	6008      	str	r0, [r1, #0]
 80055d8:	e7d5      	b.n	8005586 <_malloc_trim_r+0x3e>
 80055da:	bf00      	nop
 80055dc:	2000044c 	.word	0x2000044c
 80055e0:	20000a6c 	.word	0x20000a6c
 80055e4:	20000854 	.word	0x20000854

080055e8 <_free_r>:
 80055e8:	2900      	cmp	r1, #0
 80055ea:	d053      	beq.n	8005694 <_free_r+0xac>
 80055ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80055ee:	460c      	mov	r4, r1
 80055f0:	4606      	mov	r6, r0
 80055f2:	f000 fe2b 	bl	800624c <__malloc_lock>
 80055f6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80055fa:	4f71      	ldr	r7, [pc, #452]	; (80057c0 <_free_r+0x1d8>)
 80055fc:	f02c 0101 	bic.w	r1, ip, #1
 8005600:	f1a4 0508 	sub.w	r5, r4, #8
 8005604:	186b      	adds	r3, r5, r1
 8005606:	68b8      	ldr	r0, [r7, #8]
 8005608:	685a      	ldr	r2, [r3, #4]
 800560a:	4298      	cmp	r0, r3
 800560c:	f022 0203 	bic.w	r2, r2, #3
 8005610:	d053      	beq.n	80056ba <_free_r+0xd2>
 8005612:	f01c 0f01 	tst.w	ip, #1
 8005616:	605a      	str	r2, [r3, #4]
 8005618:	eb03 0002 	add.w	r0, r3, r2
 800561c:	d13b      	bne.n	8005696 <_free_r+0xae>
 800561e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005622:	6840      	ldr	r0, [r0, #4]
 8005624:	eba5 050c 	sub.w	r5, r5, ip
 8005628:	f107 0e08 	add.w	lr, r7, #8
 800562c:	68ac      	ldr	r4, [r5, #8]
 800562e:	4574      	cmp	r4, lr
 8005630:	4461      	add	r1, ip
 8005632:	f000 0001 	and.w	r0, r0, #1
 8005636:	d075      	beq.n	8005724 <_free_r+0x13c>
 8005638:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800563c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005640:	f8cc 4008 	str.w	r4, [ip, #8]
 8005644:	b360      	cbz	r0, 80056a0 <_free_r+0xb8>
 8005646:	f041 0301 	orr.w	r3, r1, #1
 800564a:	606b      	str	r3, [r5, #4]
 800564c:	5069      	str	r1, [r5, r1]
 800564e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005652:	d350      	bcc.n	80056f6 <_free_r+0x10e>
 8005654:	0a4b      	lsrs	r3, r1, #9
 8005656:	2b04      	cmp	r3, #4
 8005658:	d870      	bhi.n	800573c <_free_r+0x154>
 800565a:	098b      	lsrs	r3, r1, #6
 800565c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005660:	00e4      	lsls	r4, r4, #3
 8005662:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005666:	1938      	adds	r0, r7, r4
 8005668:	593b      	ldr	r3, [r7, r4]
 800566a:	3808      	subs	r0, #8
 800566c:	4298      	cmp	r0, r3
 800566e:	d078      	beq.n	8005762 <_free_r+0x17a>
 8005670:	685a      	ldr	r2, [r3, #4]
 8005672:	f022 0203 	bic.w	r2, r2, #3
 8005676:	428a      	cmp	r2, r1
 8005678:	d971      	bls.n	800575e <_free_r+0x176>
 800567a:	689b      	ldr	r3, [r3, #8]
 800567c:	4298      	cmp	r0, r3
 800567e:	d1f7      	bne.n	8005670 <_free_r+0x88>
 8005680:	68c3      	ldr	r3, [r0, #12]
 8005682:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005686:	609d      	str	r5, [r3, #8]
 8005688:	60c5      	str	r5, [r0, #12]
 800568a:	4630      	mov	r0, r6
 800568c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005690:	f000 bde2 	b.w	8006258 <__malloc_unlock>
 8005694:	4770      	bx	lr
 8005696:	6840      	ldr	r0, [r0, #4]
 8005698:	f000 0001 	and.w	r0, r0, #1
 800569c:	2800      	cmp	r0, #0
 800569e:	d1d2      	bne.n	8005646 <_free_r+0x5e>
 80056a0:	6898      	ldr	r0, [r3, #8]
 80056a2:	4c48      	ldr	r4, [pc, #288]	; (80057c4 <_free_r+0x1dc>)
 80056a4:	4411      	add	r1, r2
 80056a6:	42a0      	cmp	r0, r4
 80056a8:	f041 0201 	orr.w	r2, r1, #1
 80056ac:	d062      	beq.n	8005774 <_free_r+0x18c>
 80056ae:	68db      	ldr	r3, [r3, #12]
 80056b0:	60c3      	str	r3, [r0, #12]
 80056b2:	6098      	str	r0, [r3, #8]
 80056b4:	606a      	str	r2, [r5, #4]
 80056b6:	5069      	str	r1, [r5, r1]
 80056b8:	e7c9      	b.n	800564e <_free_r+0x66>
 80056ba:	f01c 0f01 	tst.w	ip, #1
 80056be:	440a      	add	r2, r1
 80056c0:	d107      	bne.n	80056d2 <_free_r+0xea>
 80056c2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80056c6:	1aed      	subs	r5, r5, r3
 80056c8:	441a      	add	r2, r3
 80056ca:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80056ce:	60cb      	str	r3, [r1, #12]
 80056d0:	6099      	str	r1, [r3, #8]
 80056d2:	4b3d      	ldr	r3, [pc, #244]	; (80057c8 <_free_r+0x1e0>)
 80056d4:	681b      	ldr	r3, [r3, #0]
 80056d6:	f042 0101 	orr.w	r1, r2, #1
 80056da:	4293      	cmp	r3, r2
 80056dc:	6069      	str	r1, [r5, #4]
 80056de:	60bd      	str	r5, [r7, #8]
 80056e0:	d804      	bhi.n	80056ec <_free_r+0x104>
 80056e2:	4b3a      	ldr	r3, [pc, #232]	; (80057cc <_free_r+0x1e4>)
 80056e4:	4630      	mov	r0, r6
 80056e6:	6819      	ldr	r1, [r3, #0]
 80056e8:	f7ff ff2e 	bl	8005548 <_malloc_trim_r>
 80056ec:	4630      	mov	r0, r6
 80056ee:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80056f2:	f000 bdb1 	b.w	8006258 <__malloc_unlock>
 80056f6:	08c9      	lsrs	r1, r1, #3
 80056f8:	6878      	ldr	r0, [r7, #4]
 80056fa:	1c4a      	adds	r2, r1, #1
 80056fc:	2301      	movs	r3, #1
 80056fe:	1089      	asrs	r1, r1, #2
 8005700:	408b      	lsls	r3, r1
 8005702:	4303      	orrs	r3, r0
 8005704:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005708:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800570c:	607b      	str	r3, [r7, #4]
 800570e:	3908      	subs	r1, #8
 8005710:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005714:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005718:	60c5      	str	r5, [r0, #12]
 800571a:	4630      	mov	r0, r6
 800571c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005720:	f000 bd9a 	b.w	8006258 <__malloc_unlock>
 8005724:	2800      	cmp	r0, #0
 8005726:	d145      	bne.n	80057b4 <_free_r+0x1cc>
 8005728:	440a      	add	r2, r1
 800572a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800572e:	f042 0001 	orr.w	r0, r2, #1
 8005732:	60cb      	str	r3, [r1, #12]
 8005734:	6099      	str	r1, [r3, #8]
 8005736:	6068      	str	r0, [r5, #4]
 8005738:	50aa      	str	r2, [r5, r2]
 800573a:	e7d7      	b.n	80056ec <_free_r+0x104>
 800573c:	2b14      	cmp	r3, #20
 800573e:	d908      	bls.n	8005752 <_free_r+0x16a>
 8005740:	2b54      	cmp	r3, #84	; 0x54
 8005742:	d81e      	bhi.n	8005782 <_free_r+0x19a>
 8005744:	0b0b      	lsrs	r3, r1, #12
 8005746:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800574a:	00e4      	lsls	r4, r4, #3
 800574c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005750:	e789      	b.n	8005666 <_free_r+0x7e>
 8005752:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005756:	00e4      	lsls	r4, r4, #3
 8005758:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800575c:	e783      	b.n	8005666 <_free_r+0x7e>
 800575e:	4618      	mov	r0, r3
 8005760:	e78e      	b.n	8005680 <_free_r+0x98>
 8005762:	1093      	asrs	r3, r2, #2
 8005764:	6879      	ldr	r1, [r7, #4]
 8005766:	2201      	movs	r2, #1
 8005768:	fa02 f303 	lsl.w	r3, r2, r3
 800576c:	430b      	orrs	r3, r1
 800576e:	607b      	str	r3, [r7, #4]
 8005770:	4603      	mov	r3, r0
 8005772:	e786      	b.n	8005682 <_free_r+0x9a>
 8005774:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005778:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800577c:	606a      	str	r2, [r5, #4]
 800577e:	5069      	str	r1, [r5, r1]
 8005780:	e7b4      	b.n	80056ec <_free_r+0x104>
 8005782:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005786:	d806      	bhi.n	8005796 <_free_r+0x1ae>
 8005788:	0bcb      	lsrs	r3, r1, #15
 800578a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800578e:	00e4      	lsls	r4, r4, #3
 8005790:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005794:	e767      	b.n	8005666 <_free_r+0x7e>
 8005796:	f240 5254 	movw	r2, #1364	; 0x554
 800579a:	4293      	cmp	r3, r2
 800579c:	d806      	bhi.n	80057ac <_free_r+0x1c4>
 800579e:	0c8b      	lsrs	r3, r1, #18
 80057a0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80057a4:	00e4      	lsls	r4, r4, #3
 80057a6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80057aa:	e75c      	b.n	8005666 <_free_r+0x7e>
 80057ac:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80057b0:	227e      	movs	r2, #126	; 0x7e
 80057b2:	e758      	b.n	8005666 <_free_r+0x7e>
 80057b4:	f041 0201 	orr.w	r2, r1, #1
 80057b8:	606a      	str	r2, [r5, #4]
 80057ba:	6019      	str	r1, [r3, #0]
 80057bc:	e796      	b.n	80056ec <_free_r+0x104>
 80057be:	bf00      	nop
 80057c0:	2000044c 	.word	0x2000044c
 80057c4:	20000454 	.word	0x20000454
 80057c8:	20000858 	.word	0x20000858
 80057cc:	20000a9c 	.word	0x20000a9c

080057d0 <__sfvwrite_r>:
 80057d0:	6893      	ldr	r3, [r2, #8]
 80057d2:	2b00      	cmp	r3, #0
 80057d4:	f000 80e4 	beq.w	80059a0 <__sfvwrite_r+0x1d0>
 80057d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80057dc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80057e0:	b29b      	uxth	r3, r3
 80057e2:	460c      	mov	r4, r1
 80057e4:	0719      	lsls	r1, r3, #28
 80057e6:	b083      	sub	sp, #12
 80057e8:	4682      	mov	sl, r0
 80057ea:	4690      	mov	r8, r2
 80057ec:	d535      	bpl.n	800585a <__sfvwrite_r+0x8a>
 80057ee:	6922      	ldr	r2, [r4, #16]
 80057f0:	b39a      	cbz	r2, 800585a <__sfvwrite_r+0x8a>
 80057f2:	f013 0202 	ands.w	r2, r3, #2
 80057f6:	f8d8 6000 	ldr.w	r6, [r8]
 80057fa:	d03d      	beq.n	8005878 <__sfvwrite_r+0xa8>
 80057fc:	2700      	movs	r7, #0
 80057fe:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005802:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005806:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005ac8 <__sfvwrite_r+0x2f8>
 800580a:	463d      	mov	r5, r7
 800580c:	454d      	cmp	r5, r9
 800580e:	462b      	mov	r3, r5
 8005810:	463a      	mov	r2, r7
 8005812:	bf28      	it	cs
 8005814:	464b      	movcs	r3, r9
 8005816:	4661      	mov	r1, ip
 8005818:	4650      	mov	r0, sl
 800581a:	b1d5      	cbz	r5, 8005852 <__sfvwrite_r+0x82>
 800581c:	47d8      	blx	fp
 800581e:	2800      	cmp	r0, #0
 8005820:	f340 80c6 	ble.w	80059b0 <__sfvwrite_r+0x1e0>
 8005824:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005828:	1a1b      	subs	r3, r3, r0
 800582a:	4407      	add	r7, r0
 800582c:	1a2d      	subs	r5, r5, r0
 800582e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005832:	2b00      	cmp	r3, #0
 8005834:	f000 80b0 	beq.w	8005998 <__sfvwrite_r+0x1c8>
 8005838:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800583c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005840:	454d      	cmp	r5, r9
 8005842:	462b      	mov	r3, r5
 8005844:	463a      	mov	r2, r7
 8005846:	bf28      	it	cs
 8005848:	464b      	movcs	r3, r9
 800584a:	4661      	mov	r1, ip
 800584c:	4650      	mov	r0, sl
 800584e:	2d00      	cmp	r5, #0
 8005850:	d1e4      	bne.n	800581c <__sfvwrite_r+0x4c>
 8005852:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005856:	3608      	adds	r6, #8
 8005858:	e7d8      	b.n	800580c <__sfvwrite_r+0x3c>
 800585a:	4621      	mov	r1, r4
 800585c:	4650      	mov	r0, sl
 800585e:	f7fe fd03 	bl	8004268 <__swsetup_r>
 8005862:	2800      	cmp	r0, #0
 8005864:	f040 812a 	bne.w	8005abc <__sfvwrite_r+0x2ec>
 8005868:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800586c:	f8d8 6000 	ldr.w	r6, [r8]
 8005870:	b29b      	uxth	r3, r3
 8005872:	f013 0202 	ands.w	r2, r3, #2
 8005876:	d1c1      	bne.n	80057fc <__sfvwrite_r+0x2c>
 8005878:	f013 0901 	ands.w	r9, r3, #1
 800587c:	d15d      	bne.n	800593a <__sfvwrite_r+0x16a>
 800587e:	68a7      	ldr	r7, [r4, #8]
 8005880:	6820      	ldr	r0, [r4, #0]
 8005882:	464d      	mov	r5, r9
 8005884:	2d00      	cmp	r5, #0
 8005886:	d054      	beq.n	8005932 <__sfvwrite_r+0x162>
 8005888:	059a      	lsls	r2, r3, #22
 800588a:	f140 809b 	bpl.w	80059c4 <__sfvwrite_r+0x1f4>
 800588e:	42af      	cmp	r7, r5
 8005890:	46bb      	mov	fp, r7
 8005892:	f200 80d8 	bhi.w	8005a46 <__sfvwrite_r+0x276>
 8005896:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800589a:	d02f      	beq.n	80058fc <__sfvwrite_r+0x12c>
 800589c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80058a0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80058a4:	eba0 0b01 	sub.w	fp, r0, r1
 80058a8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80058ac:	1c68      	adds	r0, r5, #1
 80058ae:	107f      	asrs	r7, r7, #1
 80058b0:	4458      	add	r0, fp
 80058b2:	42b8      	cmp	r0, r7
 80058b4:	463a      	mov	r2, r7
 80058b6:	bf84      	itt	hi
 80058b8:	4607      	movhi	r7, r0
 80058ba:	463a      	movhi	r2, r7
 80058bc:	055b      	lsls	r3, r3, #21
 80058be:	f140 80d3 	bpl.w	8005a68 <__sfvwrite_r+0x298>
 80058c2:	4611      	mov	r1, r2
 80058c4:	4650      	mov	r0, sl
 80058c6:	f000 f9b9 	bl	8005c3c <_malloc_r>
 80058ca:	2800      	cmp	r0, #0
 80058cc:	f000 80f0 	beq.w	8005ab0 <__sfvwrite_r+0x2e0>
 80058d0:	465a      	mov	r2, fp
 80058d2:	6921      	ldr	r1, [r4, #16]
 80058d4:	9001      	str	r0, [sp, #4]
 80058d6:	f7fa fe13 	bl	8000500 <memcpy>
 80058da:	89a2      	ldrh	r2, [r4, #12]
 80058dc:	9b01      	ldr	r3, [sp, #4]
 80058de:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80058e2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80058e6:	81a2      	strh	r2, [r4, #12]
 80058e8:	eba7 020b 	sub.w	r2, r7, fp
 80058ec:	eb03 000b 	add.w	r0, r3, fp
 80058f0:	6167      	str	r7, [r4, #20]
 80058f2:	6123      	str	r3, [r4, #16]
 80058f4:	6020      	str	r0, [r4, #0]
 80058f6:	60a2      	str	r2, [r4, #8]
 80058f8:	462f      	mov	r7, r5
 80058fa:	46ab      	mov	fp, r5
 80058fc:	465a      	mov	r2, fp
 80058fe:	4649      	mov	r1, r9
 8005900:	f000 fc40 	bl	8006184 <memmove>
 8005904:	68a2      	ldr	r2, [r4, #8]
 8005906:	6823      	ldr	r3, [r4, #0]
 8005908:	1bd2      	subs	r2, r2, r7
 800590a:	445b      	add	r3, fp
 800590c:	462f      	mov	r7, r5
 800590e:	60a2      	str	r2, [r4, #8]
 8005910:	6023      	str	r3, [r4, #0]
 8005912:	2500      	movs	r5, #0
 8005914:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005918:	1bdb      	subs	r3, r3, r7
 800591a:	44b9      	add	r9, r7
 800591c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005920:	2b00      	cmp	r3, #0
 8005922:	d039      	beq.n	8005998 <__sfvwrite_r+0x1c8>
 8005924:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005928:	68a7      	ldr	r7, [r4, #8]
 800592a:	6820      	ldr	r0, [r4, #0]
 800592c:	b29b      	uxth	r3, r3
 800592e:	2d00      	cmp	r5, #0
 8005930:	d1aa      	bne.n	8005888 <__sfvwrite_r+0xb8>
 8005932:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005936:	3608      	adds	r6, #8
 8005938:	e7a4      	b.n	8005884 <__sfvwrite_r+0xb4>
 800593a:	4633      	mov	r3, r6
 800593c:	4691      	mov	r9, r2
 800593e:	4610      	mov	r0, r2
 8005940:	4617      	mov	r7, r2
 8005942:	464e      	mov	r6, r9
 8005944:	469b      	mov	fp, r3
 8005946:	2f00      	cmp	r7, #0
 8005948:	d06b      	beq.n	8005a22 <__sfvwrite_r+0x252>
 800594a:	2800      	cmp	r0, #0
 800594c:	d071      	beq.n	8005a32 <__sfvwrite_r+0x262>
 800594e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005952:	6820      	ldr	r0, [r4, #0]
 8005954:	45b9      	cmp	r9, r7
 8005956:	464b      	mov	r3, r9
 8005958:	bf28      	it	cs
 800595a:	463b      	movcs	r3, r7
 800595c:	4288      	cmp	r0, r1
 800595e:	d903      	bls.n	8005968 <__sfvwrite_r+0x198>
 8005960:	68a5      	ldr	r5, [r4, #8]
 8005962:	4415      	add	r5, r2
 8005964:	42ab      	cmp	r3, r5
 8005966:	dc71      	bgt.n	8005a4c <__sfvwrite_r+0x27c>
 8005968:	429a      	cmp	r2, r3
 800596a:	f300 8093 	bgt.w	8005a94 <__sfvwrite_r+0x2c4>
 800596e:	4613      	mov	r3, r2
 8005970:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005972:	69e1      	ldr	r1, [r4, #28]
 8005974:	4632      	mov	r2, r6
 8005976:	4650      	mov	r0, sl
 8005978:	47a8      	blx	r5
 800597a:	1e05      	subs	r5, r0, #0
 800597c:	dd18      	ble.n	80059b0 <__sfvwrite_r+0x1e0>
 800597e:	ebb9 0905 	subs.w	r9, r9, r5
 8005982:	d00f      	beq.n	80059a4 <__sfvwrite_r+0x1d4>
 8005984:	2001      	movs	r0, #1
 8005986:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800598a:	1b5b      	subs	r3, r3, r5
 800598c:	442e      	add	r6, r5
 800598e:	1b7f      	subs	r7, r7, r5
 8005990:	f8c8 3008 	str.w	r3, [r8, #8]
 8005994:	2b00      	cmp	r3, #0
 8005996:	d1d6      	bne.n	8005946 <__sfvwrite_r+0x176>
 8005998:	2000      	movs	r0, #0
 800599a:	b003      	add	sp, #12
 800599c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059a0:	2000      	movs	r0, #0
 80059a2:	4770      	bx	lr
 80059a4:	4621      	mov	r1, r4
 80059a6:	4650      	mov	r0, sl
 80059a8:	f7ff fd20 	bl	80053ec <_fflush_r>
 80059ac:	2800      	cmp	r0, #0
 80059ae:	d0ea      	beq.n	8005986 <__sfvwrite_r+0x1b6>
 80059b0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059b4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80059b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80059bc:	81a3      	strh	r3, [r4, #12]
 80059be:	b003      	add	sp, #12
 80059c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059c4:	6923      	ldr	r3, [r4, #16]
 80059c6:	4283      	cmp	r3, r0
 80059c8:	d315      	bcc.n	80059f6 <__sfvwrite_r+0x226>
 80059ca:	6961      	ldr	r1, [r4, #20]
 80059cc:	42a9      	cmp	r1, r5
 80059ce:	d812      	bhi.n	80059f6 <__sfvwrite_r+0x226>
 80059d0:	4b3c      	ldr	r3, [pc, #240]	; (8005ac4 <__sfvwrite_r+0x2f4>)
 80059d2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80059d4:	429d      	cmp	r5, r3
 80059d6:	bf94      	ite	ls
 80059d8:	462b      	movls	r3, r5
 80059da:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80059de:	464a      	mov	r2, r9
 80059e0:	fb93 f3f1 	sdiv	r3, r3, r1
 80059e4:	4650      	mov	r0, sl
 80059e6:	fb01 f303 	mul.w	r3, r1, r3
 80059ea:	69e1      	ldr	r1, [r4, #28]
 80059ec:	47b8      	blx	r7
 80059ee:	1e07      	subs	r7, r0, #0
 80059f0:	ddde      	ble.n	80059b0 <__sfvwrite_r+0x1e0>
 80059f2:	1bed      	subs	r5, r5, r7
 80059f4:	e78e      	b.n	8005914 <__sfvwrite_r+0x144>
 80059f6:	42af      	cmp	r7, r5
 80059f8:	bf28      	it	cs
 80059fa:	462f      	movcs	r7, r5
 80059fc:	463a      	mov	r2, r7
 80059fe:	4649      	mov	r1, r9
 8005a00:	f000 fbc0 	bl	8006184 <memmove>
 8005a04:	68a3      	ldr	r3, [r4, #8]
 8005a06:	6822      	ldr	r2, [r4, #0]
 8005a08:	1bdb      	subs	r3, r3, r7
 8005a0a:	443a      	add	r2, r7
 8005a0c:	60a3      	str	r3, [r4, #8]
 8005a0e:	6022      	str	r2, [r4, #0]
 8005a10:	2b00      	cmp	r3, #0
 8005a12:	d1ee      	bne.n	80059f2 <__sfvwrite_r+0x222>
 8005a14:	4621      	mov	r1, r4
 8005a16:	4650      	mov	r0, sl
 8005a18:	f7ff fce8 	bl	80053ec <_fflush_r>
 8005a1c:	2800      	cmp	r0, #0
 8005a1e:	d0e8      	beq.n	80059f2 <__sfvwrite_r+0x222>
 8005a20:	e7c6      	b.n	80059b0 <__sfvwrite_r+0x1e0>
 8005a22:	f10b 0308 	add.w	r3, fp, #8
 8005a26:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005a2a:	469b      	mov	fp, r3
 8005a2c:	3308      	adds	r3, #8
 8005a2e:	2f00      	cmp	r7, #0
 8005a30:	d0f9      	beq.n	8005a26 <__sfvwrite_r+0x256>
 8005a32:	463a      	mov	r2, r7
 8005a34:	210a      	movs	r1, #10
 8005a36:	4630      	mov	r0, r6
 8005a38:	f7fa fe72 	bl	8000720 <memchr>
 8005a3c:	b338      	cbz	r0, 8005a8e <__sfvwrite_r+0x2be>
 8005a3e:	3001      	adds	r0, #1
 8005a40:	eba0 0906 	sub.w	r9, r0, r6
 8005a44:	e783      	b.n	800594e <__sfvwrite_r+0x17e>
 8005a46:	462f      	mov	r7, r5
 8005a48:	46ab      	mov	fp, r5
 8005a4a:	e757      	b.n	80058fc <__sfvwrite_r+0x12c>
 8005a4c:	4631      	mov	r1, r6
 8005a4e:	462a      	mov	r2, r5
 8005a50:	f000 fb98 	bl	8006184 <memmove>
 8005a54:	6823      	ldr	r3, [r4, #0]
 8005a56:	442b      	add	r3, r5
 8005a58:	6023      	str	r3, [r4, #0]
 8005a5a:	4621      	mov	r1, r4
 8005a5c:	4650      	mov	r0, sl
 8005a5e:	f7ff fcc5 	bl	80053ec <_fflush_r>
 8005a62:	2800      	cmp	r0, #0
 8005a64:	d08b      	beq.n	800597e <__sfvwrite_r+0x1ae>
 8005a66:	e7a3      	b.n	80059b0 <__sfvwrite_r+0x1e0>
 8005a68:	4650      	mov	r0, sl
 8005a6a:	f000 ff05 	bl	8006878 <_realloc_r>
 8005a6e:	4603      	mov	r3, r0
 8005a70:	2800      	cmp	r0, #0
 8005a72:	f47f af39 	bne.w	80058e8 <__sfvwrite_r+0x118>
 8005a76:	6921      	ldr	r1, [r4, #16]
 8005a78:	4650      	mov	r0, sl
 8005a7a:	f7ff fdb5 	bl	80055e8 <_free_r>
 8005a7e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a82:	220c      	movs	r2, #12
 8005a84:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005a88:	f8ca 2000 	str.w	r2, [sl]
 8005a8c:	e792      	b.n	80059b4 <__sfvwrite_r+0x1e4>
 8005a8e:	f107 0901 	add.w	r9, r7, #1
 8005a92:	e75c      	b.n	800594e <__sfvwrite_r+0x17e>
 8005a94:	461a      	mov	r2, r3
 8005a96:	4631      	mov	r1, r6
 8005a98:	9301      	str	r3, [sp, #4]
 8005a9a:	f000 fb73 	bl	8006184 <memmove>
 8005a9e:	9b01      	ldr	r3, [sp, #4]
 8005aa0:	68a1      	ldr	r1, [r4, #8]
 8005aa2:	6822      	ldr	r2, [r4, #0]
 8005aa4:	1ac9      	subs	r1, r1, r3
 8005aa6:	441a      	add	r2, r3
 8005aa8:	60a1      	str	r1, [r4, #8]
 8005aaa:	6022      	str	r2, [r4, #0]
 8005aac:	461d      	mov	r5, r3
 8005aae:	e766      	b.n	800597e <__sfvwrite_r+0x1ae>
 8005ab0:	230c      	movs	r3, #12
 8005ab2:	f8ca 3000 	str.w	r3, [sl]
 8005ab6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005aba:	e77b      	b.n	80059b4 <__sfvwrite_r+0x1e4>
 8005abc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005ac0:	e76b      	b.n	800599a <__sfvwrite_r+0x1ca>
 8005ac2:	bf00      	nop
 8005ac4:	7ffffffe 	.word	0x7ffffffe
 8005ac8:	7ffffc00 	.word	0x7ffffc00

08005acc <_fwalk_reent>:
 8005acc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005ad0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005ad4:	d01f      	beq.n	8005b16 <_fwalk_reent+0x4a>
 8005ad6:	4688      	mov	r8, r1
 8005ad8:	4606      	mov	r6, r0
 8005ada:	f04f 0900 	mov.w	r9, #0
 8005ade:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005ae2:	3d01      	subs	r5, #1
 8005ae4:	d411      	bmi.n	8005b0a <_fwalk_reent+0x3e>
 8005ae6:	89a3      	ldrh	r3, [r4, #12]
 8005ae8:	2b01      	cmp	r3, #1
 8005aea:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005aee:	4621      	mov	r1, r4
 8005af0:	4630      	mov	r0, r6
 8005af2:	d906      	bls.n	8005b02 <_fwalk_reent+0x36>
 8005af4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005af8:	3301      	adds	r3, #1
 8005afa:	d002      	beq.n	8005b02 <_fwalk_reent+0x36>
 8005afc:	47c0      	blx	r8
 8005afe:	ea49 0900 	orr.w	r9, r9, r0
 8005b02:	1c6b      	adds	r3, r5, #1
 8005b04:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005b08:	d1ed      	bne.n	8005ae6 <_fwalk_reent+0x1a>
 8005b0a:	683f      	ldr	r7, [r7, #0]
 8005b0c:	2f00      	cmp	r7, #0
 8005b0e:	d1e6      	bne.n	8005ade <_fwalk_reent+0x12>
 8005b10:	4648      	mov	r0, r9
 8005b12:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005b16:	46b9      	mov	r9, r7
 8005b18:	4648      	mov	r0, r9
 8005b1a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005b1e:	bf00      	nop

08005b20 <_localeconv_r>:
 8005b20:	4a04      	ldr	r2, [pc, #16]	; (8005b34 <_localeconv_r+0x14>)
 8005b22:	4b05      	ldr	r3, [pc, #20]	; (8005b38 <_localeconv_r+0x18>)
 8005b24:	6812      	ldr	r2, [r2, #0]
 8005b26:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005b28:	2800      	cmp	r0, #0
 8005b2a:	bf08      	it	eq
 8005b2c:	4618      	moveq	r0, r3
 8005b2e:	30f0      	adds	r0, #240	; 0xf0
 8005b30:	4770      	bx	lr
 8005b32:	bf00      	nop
 8005b34:	20000018 	.word	0x20000018
 8005b38:	2000085c 	.word	0x2000085c

08005b3c <__retarget_lock_init_recursive>:
 8005b3c:	4770      	bx	lr
 8005b3e:	bf00      	nop

08005b40 <__retarget_lock_close_recursive>:
 8005b40:	4770      	bx	lr
 8005b42:	bf00      	nop

08005b44 <__retarget_lock_acquire_recursive>:
 8005b44:	4770      	bx	lr
 8005b46:	bf00      	nop

08005b48 <__retarget_lock_release_recursive>:
 8005b48:	4770      	bx	lr
 8005b4a:	bf00      	nop

08005b4c <__swhatbuf_r>:
 8005b4c:	b570      	push	{r4, r5, r6, lr}
 8005b4e:	460c      	mov	r4, r1
 8005b50:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005b54:	2900      	cmp	r1, #0
 8005b56:	b096      	sub	sp, #88	; 0x58
 8005b58:	4615      	mov	r5, r2
 8005b5a:	461e      	mov	r6, r3
 8005b5c:	da0f      	bge.n	8005b7e <__swhatbuf_r+0x32>
 8005b5e:	89a2      	ldrh	r2, [r4, #12]
 8005b60:	2300      	movs	r3, #0
 8005b62:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005b66:	6033      	str	r3, [r6, #0]
 8005b68:	d104      	bne.n	8005b74 <__swhatbuf_r+0x28>
 8005b6a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005b6e:	602b      	str	r3, [r5, #0]
 8005b70:	b016      	add	sp, #88	; 0x58
 8005b72:	bd70      	pop	{r4, r5, r6, pc}
 8005b74:	2240      	movs	r2, #64	; 0x40
 8005b76:	4618      	mov	r0, r3
 8005b78:	602a      	str	r2, [r5, #0]
 8005b7a:	b016      	add	sp, #88	; 0x58
 8005b7c:	bd70      	pop	{r4, r5, r6, pc}
 8005b7e:	466a      	mov	r2, sp
 8005b80:	f001 fad0 	bl	8007124 <_fstat_r>
 8005b84:	2800      	cmp	r0, #0
 8005b86:	dbea      	blt.n	8005b5e <__swhatbuf_r+0x12>
 8005b88:	9b01      	ldr	r3, [sp, #4]
 8005b8a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005b8e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005b92:	fab3 f383 	clz	r3, r3
 8005b96:	095b      	lsrs	r3, r3, #5
 8005b98:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005b9c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005ba0:	6033      	str	r3, [r6, #0]
 8005ba2:	602a      	str	r2, [r5, #0]
 8005ba4:	b016      	add	sp, #88	; 0x58
 8005ba6:	bd70      	pop	{r4, r5, r6, pc}

08005ba8 <__smakebuf_r>:
 8005ba8:	898a      	ldrh	r2, [r1, #12]
 8005baa:	0792      	lsls	r2, r2, #30
 8005bac:	460b      	mov	r3, r1
 8005bae:	d506      	bpl.n	8005bbe <__smakebuf_r+0x16>
 8005bb0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005bb4:	2101      	movs	r1, #1
 8005bb6:	601a      	str	r2, [r3, #0]
 8005bb8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005bbc:	4770      	bx	lr
 8005bbe:	b570      	push	{r4, r5, r6, lr}
 8005bc0:	b082      	sub	sp, #8
 8005bc2:	ab01      	add	r3, sp, #4
 8005bc4:	466a      	mov	r2, sp
 8005bc6:	460c      	mov	r4, r1
 8005bc8:	4605      	mov	r5, r0
 8005bca:	f7ff ffbf 	bl	8005b4c <__swhatbuf_r>
 8005bce:	9900      	ldr	r1, [sp, #0]
 8005bd0:	4606      	mov	r6, r0
 8005bd2:	4628      	mov	r0, r5
 8005bd4:	f000 f832 	bl	8005c3c <_malloc_r>
 8005bd8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005bdc:	b1d8      	cbz	r0, 8005c16 <__smakebuf_r+0x6e>
 8005bde:	4916      	ldr	r1, [pc, #88]	; (8005c38 <__smakebuf_r+0x90>)
 8005be0:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005be2:	9a01      	ldr	r2, [sp, #4]
 8005be4:	9900      	ldr	r1, [sp, #0]
 8005be6:	6020      	str	r0, [r4, #0]
 8005be8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005bec:	81a3      	strh	r3, [r4, #12]
 8005bee:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005bf2:	b91a      	cbnz	r2, 8005bfc <__smakebuf_r+0x54>
 8005bf4:	4333      	orrs	r3, r6
 8005bf6:	81a3      	strh	r3, [r4, #12]
 8005bf8:	b002      	add	sp, #8
 8005bfa:	bd70      	pop	{r4, r5, r6, pc}
 8005bfc:	4628      	mov	r0, r5
 8005bfe:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005c02:	f001 faa3 	bl	800714c <_isatty_r>
 8005c06:	b1a0      	cbz	r0, 8005c32 <__smakebuf_r+0x8a>
 8005c08:	89a3      	ldrh	r3, [r4, #12]
 8005c0a:	f023 0303 	bic.w	r3, r3, #3
 8005c0e:	f043 0301 	orr.w	r3, r3, #1
 8005c12:	b21b      	sxth	r3, r3
 8005c14:	e7ee      	b.n	8005bf4 <__smakebuf_r+0x4c>
 8005c16:	059a      	lsls	r2, r3, #22
 8005c18:	d4ee      	bmi.n	8005bf8 <__smakebuf_r+0x50>
 8005c1a:	f023 0303 	bic.w	r3, r3, #3
 8005c1e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005c22:	f043 0302 	orr.w	r3, r3, #2
 8005c26:	2101      	movs	r1, #1
 8005c28:	81a3      	strh	r3, [r4, #12]
 8005c2a:	6022      	str	r2, [r4, #0]
 8005c2c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005c30:	e7e2      	b.n	8005bf8 <__smakebuf_r+0x50>
 8005c32:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c36:	e7dd      	b.n	8005bf4 <__smakebuf_r+0x4c>
 8005c38:	08005499 	.word	0x08005499

08005c3c <_malloc_r>:
 8005c3c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005c40:	f101 050b 	add.w	r5, r1, #11
 8005c44:	2d16      	cmp	r5, #22
 8005c46:	b083      	sub	sp, #12
 8005c48:	4606      	mov	r6, r0
 8005c4a:	d823      	bhi.n	8005c94 <_malloc_r+0x58>
 8005c4c:	2910      	cmp	r1, #16
 8005c4e:	f200 80b9 	bhi.w	8005dc4 <_malloc_r+0x188>
 8005c52:	f000 fafb 	bl	800624c <__malloc_lock>
 8005c56:	2510      	movs	r5, #16
 8005c58:	2318      	movs	r3, #24
 8005c5a:	2002      	movs	r0, #2
 8005c5c:	4fc5      	ldr	r7, [pc, #788]	; (8005f74 <_malloc_r+0x338>)
 8005c5e:	443b      	add	r3, r7
 8005c60:	f1a3 0208 	sub.w	r2, r3, #8
 8005c64:	685c      	ldr	r4, [r3, #4]
 8005c66:	4294      	cmp	r4, r2
 8005c68:	f000 8166 	beq.w	8005f38 <_malloc_r+0x2fc>
 8005c6c:	6863      	ldr	r3, [r4, #4]
 8005c6e:	f023 0303 	bic.w	r3, r3, #3
 8005c72:	4423      	add	r3, r4
 8005c74:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005c78:	685a      	ldr	r2, [r3, #4]
 8005c7a:	60e9      	str	r1, [r5, #12]
 8005c7c:	f042 0201 	orr.w	r2, r2, #1
 8005c80:	608d      	str	r5, [r1, #8]
 8005c82:	4630      	mov	r0, r6
 8005c84:	605a      	str	r2, [r3, #4]
 8005c86:	f000 fae7 	bl	8006258 <__malloc_unlock>
 8005c8a:	3408      	adds	r4, #8
 8005c8c:	4620      	mov	r0, r4
 8005c8e:	b003      	add	sp, #12
 8005c90:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c94:	f035 0507 	bics.w	r5, r5, #7
 8005c98:	f100 8094 	bmi.w	8005dc4 <_malloc_r+0x188>
 8005c9c:	42a9      	cmp	r1, r5
 8005c9e:	f200 8091 	bhi.w	8005dc4 <_malloc_r+0x188>
 8005ca2:	f000 fad3 	bl	800624c <__malloc_lock>
 8005ca6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005caa:	f0c0 8183 	bcc.w	8005fb4 <_malloc_r+0x378>
 8005cae:	0a6b      	lsrs	r3, r5, #9
 8005cb0:	f000 808f 	beq.w	8005dd2 <_malloc_r+0x196>
 8005cb4:	2b04      	cmp	r3, #4
 8005cb6:	f200 8146 	bhi.w	8005f46 <_malloc_r+0x30a>
 8005cba:	09ab      	lsrs	r3, r5, #6
 8005cbc:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005cc0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005cc4:	00c3      	lsls	r3, r0, #3
 8005cc6:	4fab      	ldr	r7, [pc, #684]	; (8005f74 <_malloc_r+0x338>)
 8005cc8:	443b      	add	r3, r7
 8005cca:	f1a3 0108 	sub.w	r1, r3, #8
 8005cce:	685c      	ldr	r4, [r3, #4]
 8005cd0:	42a1      	cmp	r1, r4
 8005cd2:	d106      	bne.n	8005ce2 <_malloc_r+0xa6>
 8005cd4:	e00c      	b.n	8005cf0 <_malloc_r+0xb4>
 8005cd6:	2a00      	cmp	r2, #0
 8005cd8:	f280 811d 	bge.w	8005f16 <_malloc_r+0x2da>
 8005cdc:	68e4      	ldr	r4, [r4, #12]
 8005cde:	42a1      	cmp	r1, r4
 8005ce0:	d006      	beq.n	8005cf0 <_malloc_r+0xb4>
 8005ce2:	6863      	ldr	r3, [r4, #4]
 8005ce4:	f023 0303 	bic.w	r3, r3, #3
 8005ce8:	1b5a      	subs	r2, r3, r5
 8005cea:	2a0f      	cmp	r2, #15
 8005cec:	ddf3      	ble.n	8005cd6 <_malloc_r+0x9a>
 8005cee:	4660      	mov	r0, ip
 8005cf0:	693c      	ldr	r4, [r7, #16]
 8005cf2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005f88 <_malloc_r+0x34c>
 8005cf6:	4564      	cmp	r4, ip
 8005cf8:	d071      	beq.n	8005dde <_malloc_r+0x1a2>
 8005cfa:	6863      	ldr	r3, [r4, #4]
 8005cfc:	f023 0303 	bic.w	r3, r3, #3
 8005d00:	1b5a      	subs	r2, r3, r5
 8005d02:	2a0f      	cmp	r2, #15
 8005d04:	f300 8144 	bgt.w	8005f90 <_malloc_r+0x354>
 8005d08:	2a00      	cmp	r2, #0
 8005d0a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005d0e:	f280 8126 	bge.w	8005f5e <_malloc_r+0x322>
 8005d12:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005d16:	f080 8169 	bcs.w	8005fec <_malloc_r+0x3b0>
 8005d1a:	08db      	lsrs	r3, r3, #3
 8005d1c:	1c59      	adds	r1, r3, #1
 8005d1e:	687a      	ldr	r2, [r7, #4]
 8005d20:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005d24:	f8c4 8008 	str.w	r8, [r4, #8]
 8005d28:	f04f 0e01 	mov.w	lr, #1
 8005d2c:	109b      	asrs	r3, r3, #2
 8005d2e:	fa0e f303 	lsl.w	r3, lr, r3
 8005d32:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005d36:	4313      	orrs	r3, r2
 8005d38:	f1ae 0208 	sub.w	r2, lr, #8
 8005d3c:	60e2      	str	r2, [r4, #12]
 8005d3e:	607b      	str	r3, [r7, #4]
 8005d40:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005d44:	f8c8 400c 	str.w	r4, [r8, #12]
 8005d48:	1082      	asrs	r2, r0, #2
 8005d4a:	2401      	movs	r4, #1
 8005d4c:	4094      	lsls	r4, r2
 8005d4e:	429c      	cmp	r4, r3
 8005d50:	d84b      	bhi.n	8005dea <_malloc_r+0x1ae>
 8005d52:	421c      	tst	r4, r3
 8005d54:	d106      	bne.n	8005d64 <_malloc_r+0x128>
 8005d56:	f020 0003 	bic.w	r0, r0, #3
 8005d5a:	0064      	lsls	r4, r4, #1
 8005d5c:	421c      	tst	r4, r3
 8005d5e:	f100 0004 	add.w	r0, r0, #4
 8005d62:	d0fa      	beq.n	8005d5a <_malloc_r+0x11e>
 8005d64:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005d68:	46ce      	mov	lr, r9
 8005d6a:	4680      	mov	r8, r0
 8005d6c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005d70:	459e      	cmp	lr, r3
 8005d72:	d107      	bne.n	8005d84 <_malloc_r+0x148>
 8005d74:	e122      	b.n	8005fbc <_malloc_r+0x380>
 8005d76:	2a00      	cmp	r2, #0
 8005d78:	f280 8129 	bge.w	8005fce <_malloc_r+0x392>
 8005d7c:	68db      	ldr	r3, [r3, #12]
 8005d7e:	459e      	cmp	lr, r3
 8005d80:	f000 811c 	beq.w	8005fbc <_malloc_r+0x380>
 8005d84:	6859      	ldr	r1, [r3, #4]
 8005d86:	f021 0103 	bic.w	r1, r1, #3
 8005d8a:	1b4a      	subs	r2, r1, r5
 8005d8c:	2a0f      	cmp	r2, #15
 8005d8e:	ddf2      	ble.n	8005d76 <_malloc_r+0x13a>
 8005d90:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005d94:	195c      	adds	r4, r3, r5
 8005d96:	f045 0501 	orr.w	r5, r5, #1
 8005d9a:	605d      	str	r5, [r3, #4]
 8005d9c:	f042 0501 	orr.w	r5, r2, #1
 8005da0:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005da4:	4630      	mov	r0, r6
 8005da6:	f8ce 8008 	str.w	r8, [lr, #8]
 8005daa:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005dae:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005db2:	6065      	str	r5, [r4, #4]
 8005db4:	505a      	str	r2, [r3, r1]
 8005db6:	9301      	str	r3, [sp, #4]
 8005db8:	f000 fa4e 	bl	8006258 <__malloc_unlock>
 8005dbc:	9b01      	ldr	r3, [sp, #4]
 8005dbe:	f103 0408 	add.w	r4, r3, #8
 8005dc2:	e763      	b.n	8005c8c <_malloc_r+0x50>
 8005dc4:	2400      	movs	r4, #0
 8005dc6:	230c      	movs	r3, #12
 8005dc8:	4620      	mov	r0, r4
 8005dca:	6033      	str	r3, [r6, #0]
 8005dcc:	b003      	add	sp, #12
 8005dce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005dd2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005dd6:	2040      	movs	r0, #64	; 0x40
 8005dd8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005ddc:	e773      	b.n	8005cc6 <_malloc_r+0x8a>
 8005dde:	687b      	ldr	r3, [r7, #4]
 8005de0:	1082      	asrs	r2, r0, #2
 8005de2:	2401      	movs	r4, #1
 8005de4:	4094      	lsls	r4, r2
 8005de6:	429c      	cmp	r4, r3
 8005de8:	d9b3      	bls.n	8005d52 <_malloc_r+0x116>
 8005dea:	68bc      	ldr	r4, [r7, #8]
 8005dec:	6863      	ldr	r3, [r4, #4]
 8005dee:	f023 0903 	bic.w	r9, r3, #3
 8005df2:	45a9      	cmp	r9, r5
 8005df4:	d303      	bcc.n	8005dfe <_malloc_r+0x1c2>
 8005df6:	eba9 0305 	sub.w	r3, r9, r5
 8005dfa:	2b0f      	cmp	r3, #15
 8005dfc:	dc7b      	bgt.n	8005ef6 <_malloc_r+0x2ba>
 8005dfe:	4b5e      	ldr	r3, [pc, #376]	; (8005f78 <_malloc_r+0x33c>)
 8005e00:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005f8c <_malloc_r+0x350>
 8005e04:	681a      	ldr	r2, [r3, #0]
 8005e06:	f8da 3000 	ldr.w	r3, [sl]
 8005e0a:	3301      	adds	r3, #1
 8005e0c:	eb05 0802 	add.w	r8, r5, r2
 8005e10:	f000 8148 	beq.w	80060a4 <_malloc_r+0x468>
 8005e14:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005e18:	f108 080f 	add.w	r8, r8, #15
 8005e1c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005e20:	f028 080f 	bic.w	r8, r8, #15
 8005e24:	4641      	mov	r1, r8
 8005e26:	4630      	mov	r0, r6
 8005e28:	f000 ff08 	bl	8006c3c <_sbrk_r>
 8005e2c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005e30:	4683      	mov	fp, r0
 8005e32:	f000 8104 	beq.w	800603e <_malloc_r+0x402>
 8005e36:	eb04 0009 	add.w	r0, r4, r9
 8005e3a:	4558      	cmp	r0, fp
 8005e3c:	f200 80fd 	bhi.w	800603a <_malloc_r+0x3fe>
 8005e40:	4a4e      	ldr	r2, [pc, #312]	; (8005f7c <_malloc_r+0x340>)
 8005e42:	6813      	ldr	r3, [r2, #0]
 8005e44:	4443      	add	r3, r8
 8005e46:	6013      	str	r3, [r2, #0]
 8005e48:	f000 814d 	beq.w	80060e6 <_malloc_r+0x4aa>
 8005e4c:	f8da 1000 	ldr.w	r1, [sl]
 8005e50:	3101      	adds	r1, #1
 8005e52:	bf1b      	ittet	ne
 8005e54:	ebab 0000 	subne.w	r0, fp, r0
 8005e58:	181b      	addne	r3, r3, r0
 8005e5a:	f8ca b000 	streq.w	fp, [sl]
 8005e5e:	6013      	strne	r3, [r2, #0]
 8005e60:	f01b 0307 	ands.w	r3, fp, #7
 8005e64:	f000 8134 	beq.w	80060d0 <_malloc_r+0x494>
 8005e68:	f1c3 0108 	rsb	r1, r3, #8
 8005e6c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005e70:	448b      	add	fp, r1
 8005e72:	3308      	adds	r3, #8
 8005e74:	44d8      	add	r8, fp
 8005e76:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005e7a:	eba3 0808 	sub.w	r8, r3, r8
 8005e7e:	4641      	mov	r1, r8
 8005e80:	4630      	mov	r0, r6
 8005e82:	9201      	str	r2, [sp, #4]
 8005e84:	f000 feda 	bl	8006c3c <_sbrk_r>
 8005e88:	1c43      	adds	r3, r0, #1
 8005e8a:	9a01      	ldr	r2, [sp, #4]
 8005e8c:	f000 8146 	beq.w	800611c <_malloc_r+0x4e0>
 8005e90:	eba0 010b 	sub.w	r1, r0, fp
 8005e94:	4441      	add	r1, r8
 8005e96:	f041 0101 	orr.w	r1, r1, #1
 8005e9a:	6813      	ldr	r3, [r2, #0]
 8005e9c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005ea0:	4443      	add	r3, r8
 8005ea2:	42bc      	cmp	r4, r7
 8005ea4:	f8cb 1004 	str.w	r1, [fp, #4]
 8005ea8:	6013      	str	r3, [r2, #0]
 8005eaa:	d015      	beq.n	8005ed8 <_malloc_r+0x29c>
 8005eac:	f1b9 0f0f 	cmp.w	r9, #15
 8005eb0:	f240 8130 	bls.w	8006114 <_malloc_r+0x4d8>
 8005eb4:	6860      	ldr	r0, [r4, #4]
 8005eb6:	f1a9 010c 	sub.w	r1, r9, #12
 8005eba:	f021 0107 	bic.w	r1, r1, #7
 8005ebe:	f000 0001 	and.w	r0, r0, #1
 8005ec2:	eb04 0c01 	add.w	ip, r4, r1
 8005ec6:	4308      	orrs	r0, r1
 8005ec8:	f04f 0e05 	mov.w	lr, #5
 8005ecc:	290f      	cmp	r1, #15
 8005ece:	6060      	str	r0, [r4, #4]
 8005ed0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005ed4:	f200 813a 	bhi.w	800614c <_malloc_r+0x510>
 8005ed8:	4a29      	ldr	r2, [pc, #164]	; (8005f80 <_malloc_r+0x344>)
 8005eda:	482a      	ldr	r0, [pc, #168]	; (8005f84 <_malloc_r+0x348>)
 8005edc:	6811      	ldr	r1, [r2, #0]
 8005ede:	68bc      	ldr	r4, [r7, #8]
 8005ee0:	428b      	cmp	r3, r1
 8005ee2:	6801      	ldr	r1, [r0, #0]
 8005ee4:	bf88      	it	hi
 8005ee6:	6013      	strhi	r3, [r2, #0]
 8005ee8:	6862      	ldr	r2, [r4, #4]
 8005eea:	428b      	cmp	r3, r1
 8005eec:	f022 0203 	bic.w	r2, r2, #3
 8005ef0:	bf88      	it	hi
 8005ef2:	6003      	strhi	r3, [r0, #0]
 8005ef4:	e0a7      	b.n	8006046 <_malloc_r+0x40a>
 8005ef6:	1962      	adds	r2, r4, r5
 8005ef8:	f043 0301 	orr.w	r3, r3, #1
 8005efc:	f045 0501 	orr.w	r5, r5, #1
 8005f00:	6065      	str	r5, [r4, #4]
 8005f02:	4630      	mov	r0, r6
 8005f04:	60ba      	str	r2, [r7, #8]
 8005f06:	6053      	str	r3, [r2, #4]
 8005f08:	f000 f9a6 	bl	8006258 <__malloc_unlock>
 8005f0c:	3408      	adds	r4, #8
 8005f0e:	4620      	mov	r0, r4
 8005f10:	b003      	add	sp, #12
 8005f12:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f16:	4423      	add	r3, r4
 8005f18:	68e1      	ldr	r1, [r4, #12]
 8005f1a:	685a      	ldr	r2, [r3, #4]
 8005f1c:	68a5      	ldr	r5, [r4, #8]
 8005f1e:	f042 0201 	orr.w	r2, r2, #1
 8005f22:	60e9      	str	r1, [r5, #12]
 8005f24:	4630      	mov	r0, r6
 8005f26:	608d      	str	r5, [r1, #8]
 8005f28:	605a      	str	r2, [r3, #4]
 8005f2a:	f000 f995 	bl	8006258 <__malloc_unlock>
 8005f2e:	3408      	adds	r4, #8
 8005f30:	4620      	mov	r0, r4
 8005f32:	b003      	add	sp, #12
 8005f34:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f38:	68dc      	ldr	r4, [r3, #12]
 8005f3a:	42a3      	cmp	r3, r4
 8005f3c:	bf08      	it	eq
 8005f3e:	3002      	addeq	r0, #2
 8005f40:	f43f aed6 	beq.w	8005cf0 <_malloc_r+0xb4>
 8005f44:	e692      	b.n	8005c6c <_malloc_r+0x30>
 8005f46:	2b14      	cmp	r3, #20
 8005f48:	d971      	bls.n	800602e <_malloc_r+0x3f2>
 8005f4a:	2b54      	cmp	r3, #84	; 0x54
 8005f4c:	f200 80ad 	bhi.w	80060aa <_malloc_r+0x46e>
 8005f50:	0b2b      	lsrs	r3, r5, #12
 8005f52:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005f56:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005f5a:	00c3      	lsls	r3, r0, #3
 8005f5c:	e6b3      	b.n	8005cc6 <_malloc_r+0x8a>
 8005f5e:	4423      	add	r3, r4
 8005f60:	4630      	mov	r0, r6
 8005f62:	685a      	ldr	r2, [r3, #4]
 8005f64:	f042 0201 	orr.w	r2, r2, #1
 8005f68:	605a      	str	r2, [r3, #4]
 8005f6a:	3408      	adds	r4, #8
 8005f6c:	f000 f974 	bl	8006258 <__malloc_unlock>
 8005f70:	e68c      	b.n	8005c8c <_malloc_r+0x50>
 8005f72:	bf00      	nop
 8005f74:	2000044c 	.word	0x2000044c
 8005f78:	20000a9c 	.word	0x20000a9c
 8005f7c:	20000a6c 	.word	0x20000a6c
 8005f80:	20000a94 	.word	0x20000a94
 8005f84:	20000a98 	.word	0x20000a98
 8005f88:	20000454 	.word	0x20000454
 8005f8c:	20000854 	.word	0x20000854
 8005f90:	1961      	adds	r1, r4, r5
 8005f92:	f045 0e01 	orr.w	lr, r5, #1
 8005f96:	f042 0501 	orr.w	r5, r2, #1
 8005f9a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005f9e:	4630      	mov	r0, r6
 8005fa0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005fa4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005fa8:	604d      	str	r5, [r1, #4]
 8005faa:	50e2      	str	r2, [r4, r3]
 8005fac:	f000 f954 	bl	8006258 <__malloc_unlock>
 8005fb0:	3408      	adds	r4, #8
 8005fb2:	e66b      	b.n	8005c8c <_malloc_r+0x50>
 8005fb4:	08e8      	lsrs	r0, r5, #3
 8005fb6:	f105 0308 	add.w	r3, r5, #8
 8005fba:	e64f      	b.n	8005c5c <_malloc_r+0x20>
 8005fbc:	f108 0801 	add.w	r8, r8, #1
 8005fc0:	f018 0f03 	tst.w	r8, #3
 8005fc4:	f10e 0e08 	add.w	lr, lr, #8
 8005fc8:	f47f aed0 	bne.w	8005d6c <_malloc_r+0x130>
 8005fcc:	e052      	b.n	8006074 <_malloc_r+0x438>
 8005fce:	4419      	add	r1, r3
 8005fd0:	461c      	mov	r4, r3
 8005fd2:	684a      	ldr	r2, [r1, #4]
 8005fd4:	68db      	ldr	r3, [r3, #12]
 8005fd6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005fda:	f042 0201 	orr.w	r2, r2, #1
 8005fde:	604a      	str	r2, [r1, #4]
 8005fe0:	4630      	mov	r0, r6
 8005fe2:	60eb      	str	r3, [r5, #12]
 8005fe4:	609d      	str	r5, [r3, #8]
 8005fe6:	f000 f937 	bl	8006258 <__malloc_unlock>
 8005fea:	e64f      	b.n	8005c8c <_malloc_r+0x50>
 8005fec:	0a5a      	lsrs	r2, r3, #9
 8005fee:	2a04      	cmp	r2, #4
 8005ff0:	d935      	bls.n	800605e <_malloc_r+0x422>
 8005ff2:	2a14      	cmp	r2, #20
 8005ff4:	d86f      	bhi.n	80060d6 <_malloc_r+0x49a>
 8005ff6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005ffa:	00c9      	lsls	r1, r1, #3
 8005ffc:	325b      	adds	r2, #91	; 0x5b
 8005ffe:	eb07 0e01 	add.w	lr, r7, r1
 8006002:	5879      	ldr	r1, [r7, r1]
 8006004:	f1ae 0e08 	sub.w	lr, lr, #8
 8006008:	458e      	cmp	lr, r1
 800600a:	d058      	beq.n	80060be <_malloc_r+0x482>
 800600c:	684a      	ldr	r2, [r1, #4]
 800600e:	f022 0203 	bic.w	r2, r2, #3
 8006012:	429a      	cmp	r2, r3
 8006014:	d902      	bls.n	800601c <_malloc_r+0x3e0>
 8006016:	6889      	ldr	r1, [r1, #8]
 8006018:	458e      	cmp	lr, r1
 800601a:	d1f7      	bne.n	800600c <_malloc_r+0x3d0>
 800601c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006020:	687b      	ldr	r3, [r7, #4]
 8006022:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006026:	f8ce 4008 	str.w	r4, [lr, #8]
 800602a:	60cc      	str	r4, [r1, #12]
 800602c:	e68c      	b.n	8005d48 <_malloc_r+0x10c>
 800602e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006032:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006036:	00c3      	lsls	r3, r0, #3
 8006038:	e645      	b.n	8005cc6 <_malloc_r+0x8a>
 800603a:	42bc      	cmp	r4, r7
 800603c:	d072      	beq.n	8006124 <_malloc_r+0x4e8>
 800603e:	68bc      	ldr	r4, [r7, #8]
 8006040:	6862      	ldr	r2, [r4, #4]
 8006042:	f022 0203 	bic.w	r2, r2, #3
 8006046:	4295      	cmp	r5, r2
 8006048:	eba2 0305 	sub.w	r3, r2, r5
 800604c:	d802      	bhi.n	8006054 <_malloc_r+0x418>
 800604e:	2b0f      	cmp	r3, #15
 8006050:	f73f af51 	bgt.w	8005ef6 <_malloc_r+0x2ba>
 8006054:	4630      	mov	r0, r6
 8006056:	f000 f8ff 	bl	8006258 <__malloc_unlock>
 800605a:	2400      	movs	r4, #0
 800605c:	e616      	b.n	8005c8c <_malloc_r+0x50>
 800605e:	099a      	lsrs	r2, r3, #6
 8006060:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006064:	00c9      	lsls	r1, r1, #3
 8006066:	3238      	adds	r2, #56	; 0x38
 8006068:	e7c9      	b.n	8005ffe <_malloc_r+0x3c2>
 800606a:	f8d9 9000 	ldr.w	r9, [r9]
 800606e:	4599      	cmp	r9, r3
 8006070:	f040 8083 	bne.w	800617a <_malloc_r+0x53e>
 8006074:	f010 0f03 	tst.w	r0, #3
 8006078:	f1a9 0308 	sub.w	r3, r9, #8
 800607c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006080:	d1f3      	bne.n	800606a <_malloc_r+0x42e>
 8006082:	687b      	ldr	r3, [r7, #4]
 8006084:	ea23 0304 	bic.w	r3, r3, r4
 8006088:	607b      	str	r3, [r7, #4]
 800608a:	0064      	lsls	r4, r4, #1
 800608c:	429c      	cmp	r4, r3
 800608e:	f63f aeac 	bhi.w	8005dea <_malloc_r+0x1ae>
 8006092:	b91c      	cbnz	r4, 800609c <_malloc_r+0x460>
 8006094:	e6a9      	b.n	8005dea <_malloc_r+0x1ae>
 8006096:	0064      	lsls	r4, r4, #1
 8006098:	f108 0804 	add.w	r8, r8, #4
 800609c:	421c      	tst	r4, r3
 800609e:	d0fa      	beq.n	8006096 <_malloc_r+0x45a>
 80060a0:	4640      	mov	r0, r8
 80060a2:	e65f      	b.n	8005d64 <_malloc_r+0x128>
 80060a4:	f108 0810 	add.w	r8, r8, #16
 80060a8:	e6bc      	b.n	8005e24 <_malloc_r+0x1e8>
 80060aa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80060ae:	d826      	bhi.n	80060fe <_malloc_r+0x4c2>
 80060b0:	0beb      	lsrs	r3, r5, #15
 80060b2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80060b6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80060ba:	00c3      	lsls	r3, r0, #3
 80060bc:	e603      	b.n	8005cc6 <_malloc_r+0x8a>
 80060be:	687b      	ldr	r3, [r7, #4]
 80060c0:	1092      	asrs	r2, r2, #2
 80060c2:	f04f 0801 	mov.w	r8, #1
 80060c6:	fa08 f202 	lsl.w	r2, r8, r2
 80060ca:	4313      	orrs	r3, r2
 80060cc:	607b      	str	r3, [r7, #4]
 80060ce:	e7a8      	b.n	8006022 <_malloc_r+0x3e6>
 80060d0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80060d4:	e6ce      	b.n	8005e74 <_malloc_r+0x238>
 80060d6:	2a54      	cmp	r2, #84	; 0x54
 80060d8:	d829      	bhi.n	800612e <_malloc_r+0x4f2>
 80060da:	0b1a      	lsrs	r2, r3, #12
 80060dc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80060e0:	00c9      	lsls	r1, r1, #3
 80060e2:	326e      	adds	r2, #110	; 0x6e
 80060e4:	e78b      	b.n	8005ffe <_malloc_r+0x3c2>
 80060e6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80060ea:	2900      	cmp	r1, #0
 80060ec:	f47f aeae 	bne.w	8005e4c <_malloc_r+0x210>
 80060f0:	eb09 0208 	add.w	r2, r9, r8
 80060f4:	68b9      	ldr	r1, [r7, #8]
 80060f6:	f042 0201 	orr.w	r2, r2, #1
 80060fa:	604a      	str	r2, [r1, #4]
 80060fc:	e6ec      	b.n	8005ed8 <_malloc_r+0x29c>
 80060fe:	f240 5254 	movw	r2, #1364	; 0x554
 8006102:	4293      	cmp	r3, r2
 8006104:	d81c      	bhi.n	8006140 <_malloc_r+0x504>
 8006106:	0cab      	lsrs	r3, r5, #18
 8006108:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800610c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006110:	00c3      	lsls	r3, r0, #3
 8006112:	e5d8      	b.n	8005cc6 <_malloc_r+0x8a>
 8006114:	2301      	movs	r3, #1
 8006116:	f8cb 3004 	str.w	r3, [fp, #4]
 800611a:	e79b      	b.n	8006054 <_malloc_r+0x418>
 800611c:	2101      	movs	r1, #1
 800611e:	f04f 0800 	mov.w	r8, #0
 8006122:	e6ba      	b.n	8005e9a <_malloc_r+0x25e>
 8006124:	4a16      	ldr	r2, [pc, #88]	; (8006180 <_malloc_r+0x544>)
 8006126:	6813      	ldr	r3, [r2, #0]
 8006128:	4443      	add	r3, r8
 800612a:	6013      	str	r3, [r2, #0]
 800612c:	e68e      	b.n	8005e4c <_malloc_r+0x210>
 800612e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006132:	d814      	bhi.n	800615e <_malloc_r+0x522>
 8006134:	0bda      	lsrs	r2, r3, #15
 8006136:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800613a:	00c9      	lsls	r1, r1, #3
 800613c:	3277      	adds	r2, #119	; 0x77
 800613e:	e75e      	b.n	8005ffe <_malloc_r+0x3c2>
 8006140:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006144:	207f      	movs	r0, #127	; 0x7f
 8006146:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800614a:	e5bc      	b.n	8005cc6 <_malloc_r+0x8a>
 800614c:	f104 0108 	add.w	r1, r4, #8
 8006150:	4630      	mov	r0, r6
 8006152:	9201      	str	r2, [sp, #4]
 8006154:	f7ff fa48 	bl	80055e8 <_free_r>
 8006158:	9a01      	ldr	r2, [sp, #4]
 800615a:	6813      	ldr	r3, [r2, #0]
 800615c:	e6bc      	b.n	8005ed8 <_malloc_r+0x29c>
 800615e:	f240 5154 	movw	r1, #1364	; 0x554
 8006162:	428a      	cmp	r2, r1
 8006164:	d805      	bhi.n	8006172 <_malloc_r+0x536>
 8006166:	0c9a      	lsrs	r2, r3, #18
 8006168:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800616c:	00c9      	lsls	r1, r1, #3
 800616e:	327c      	adds	r2, #124	; 0x7c
 8006170:	e745      	b.n	8005ffe <_malloc_r+0x3c2>
 8006172:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006176:	227e      	movs	r2, #126	; 0x7e
 8006178:	e741      	b.n	8005ffe <_malloc_r+0x3c2>
 800617a:	687b      	ldr	r3, [r7, #4]
 800617c:	e785      	b.n	800608a <_malloc_r+0x44e>
 800617e:	bf00      	nop
 8006180:	20000a6c 	.word	0x20000a6c

08006184 <memmove>:
 8006184:	4288      	cmp	r0, r1
 8006186:	b4f0      	push	{r4, r5, r6, r7}
 8006188:	d90d      	bls.n	80061a6 <memmove+0x22>
 800618a:	188b      	adds	r3, r1, r2
 800618c:	4283      	cmp	r3, r0
 800618e:	d90a      	bls.n	80061a6 <memmove+0x22>
 8006190:	1884      	adds	r4, r0, r2
 8006192:	b132      	cbz	r2, 80061a2 <memmove+0x1e>
 8006194:	4622      	mov	r2, r4
 8006196:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800619a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800619e:	4299      	cmp	r1, r3
 80061a0:	d1f9      	bne.n	8006196 <memmove+0x12>
 80061a2:	bcf0      	pop	{r4, r5, r6, r7}
 80061a4:	4770      	bx	lr
 80061a6:	2a0f      	cmp	r2, #15
 80061a8:	d949      	bls.n	800623e <memmove+0xba>
 80061aa:	ea40 0301 	orr.w	r3, r0, r1
 80061ae:	079b      	lsls	r3, r3, #30
 80061b0:	d147      	bne.n	8006242 <memmove+0xbe>
 80061b2:	f1a2 0310 	sub.w	r3, r2, #16
 80061b6:	091b      	lsrs	r3, r3, #4
 80061b8:	f101 0720 	add.w	r7, r1, #32
 80061bc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80061c0:	f101 0410 	add.w	r4, r1, #16
 80061c4:	f100 0510 	add.w	r5, r0, #16
 80061c8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80061cc:	f845 6c10 	str.w	r6, [r5, #-16]
 80061d0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80061d4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80061d8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80061dc:	f845 6c08 	str.w	r6, [r5, #-8]
 80061e0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80061e4:	f845 6c04 	str.w	r6, [r5, #-4]
 80061e8:	3410      	adds	r4, #16
 80061ea:	42bc      	cmp	r4, r7
 80061ec:	f105 0510 	add.w	r5, r5, #16
 80061f0:	d1ea      	bne.n	80061c8 <memmove+0x44>
 80061f2:	3301      	adds	r3, #1
 80061f4:	f002 050f 	and.w	r5, r2, #15
 80061f8:	011b      	lsls	r3, r3, #4
 80061fa:	2d03      	cmp	r5, #3
 80061fc:	4419      	add	r1, r3
 80061fe:	4403      	add	r3, r0
 8006200:	d921      	bls.n	8006246 <memmove+0xc2>
 8006202:	1f1f      	subs	r7, r3, #4
 8006204:	460e      	mov	r6, r1
 8006206:	462c      	mov	r4, r5
 8006208:	3c04      	subs	r4, #4
 800620a:	f856 cb04 	ldr.w	ip, [r6], #4
 800620e:	f847 cf04 	str.w	ip, [r7, #4]!
 8006212:	2c03      	cmp	r4, #3
 8006214:	d8f8      	bhi.n	8006208 <memmove+0x84>
 8006216:	1f2c      	subs	r4, r5, #4
 8006218:	f024 0403 	bic.w	r4, r4, #3
 800621c:	3404      	adds	r4, #4
 800621e:	4423      	add	r3, r4
 8006220:	4421      	add	r1, r4
 8006222:	f002 0203 	and.w	r2, r2, #3
 8006226:	2a00      	cmp	r2, #0
 8006228:	d0bb      	beq.n	80061a2 <memmove+0x1e>
 800622a:	3b01      	subs	r3, #1
 800622c:	440a      	add	r2, r1
 800622e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006232:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006236:	4291      	cmp	r1, r2
 8006238:	d1f9      	bne.n	800622e <memmove+0xaa>
 800623a:	bcf0      	pop	{r4, r5, r6, r7}
 800623c:	4770      	bx	lr
 800623e:	4603      	mov	r3, r0
 8006240:	e7f1      	b.n	8006226 <memmove+0xa2>
 8006242:	4603      	mov	r3, r0
 8006244:	e7f1      	b.n	800622a <memmove+0xa6>
 8006246:	462a      	mov	r2, r5
 8006248:	e7ed      	b.n	8006226 <memmove+0xa2>
 800624a:	bf00      	nop

0800624c <__malloc_lock>:
 800624c:	4801      	ldr	r0, [pc, #4]	; (8006254 <__malloc_lock+0x8>)
 800624e:	f7ff bc79 	b.w	8005b44 <__retarget_lock_acquire_recursive>
 8006252:	bf00      	nop
 8006254:	20000af8 	.word	0x20000af8

08006258 <__malloc_unlock>:
 8006258:	4801      	ldr	r0, [pc, #4]	; (8006260 <__malloc_unlock+0x8>)
 800625a:	f7ff bc75 	b.w	8005b48 <__retarget_lock_release_recursive>
 800625e:	bf00      	nop
 8006260:	20000af8 	.word	0x20000af8

08006264 <_Balloc>:
 8006264:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006266:	b570      	push	{r4, r5, r6, lr}
 8006268:	4605      	mov	r5, r0
 800626a:	460c      	mov	r4, r1
 800626c:	b14b      	cbz	r3, 8006282 <_Balloc+0x1e>
 800626e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006272:	b180      	cbz	r0, 8006296 <_Balloc+0x32>
 8006274:	6802      	ldr	r2, [r0, #0]
 8006276:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800627a:	2300      	movs	r3, #0
 800627c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006280:	bd70      	pop	{r4, r5, r6, pc}
 8006282:	2221      	movs	r2, #33	; 0x21
 8006284:	2104      	movs	r1, #4
 8006286:	f000 fe1d 	bl	8006ec4 <_calloc_r>
 800628a:	4603      	mov	r3, r0
 800628c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800628e:	2800      	cmp	r0, #0
 8006290:	d1ed      	bne.n	800626e <_Balloc+0xa>
 8006292:	2000      	movs	r0, #0
 8006294:	bd70      	pop	{r4, r5, r6, pc}
 8006296:	2101      	movs	r1, #1
 8006298:	fa01 f604 	lsl.w	r6, r1, r4
 800629c:	1d72      	adds	r2, r6, #5
 800629e:	4628      	mov	r0, r5
 80062a0:	0092      	lsls	r2, r2, #2
 80062a2:	f000 fe0f 	bl	8006ec4 <_calloc_r>
 80062a6:	2800      	cmp	r0, #0
 80062a8:	d0f3      	beq.n	8006292 <_Balloc+0x2e>
 80062aa:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80062ae:	e7e4      	b.n	800627a <_Balloc+0x16>

080062b0 <_Bfree>:
 80062b0:	b131      	cbz	r1, 80062c0 <_Bfree+0x10>
 80062b2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80062b4:	684a      	ldr	r2, [r1, #4]
 80062b6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80062ba:	6008      	str	r0, [r1, #0]
 80062bc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80062c0:	4770      	bx	lr
 80062c2:	bf00      	nop

080062c4 <__multadd>:
 80062c4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80062c6:	690c      	ldr	r4, [r1, #16]
 80062c8:	b083      	sub	sp, #12
 80062ca:	460d      	mov	r5, r1
 80062cc:	4606      	mov	r6, r0
 80062ce:	f101 0c14 	add.w	ip, r1, #20
 80062d2:	2700      	movs	r7, #0
 80062d4:	f8dc 0000 	ldr.w	r0, [ip]
 80062d8:	b281      	uxth	r1, r0
 80062da:	fb02 3301 	mla	r3, r2, r1, r3
 80062de:	0c01      	lsrs	r1, r0, #16
 80062e0:	0c18      	lsrs	r0, r3, #16
 80062e2:	fb02 0101 	mla	r1, r2, r1, r0
 80062e6:	b29b      	uxth	r3, r3
 80062e8:	3701      	adds	r7, #1
 80062ea:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80062ee:	42bc      	cmp	r4, r7
 80062f0:	f84c 3b04 	str.w	r3, [ip], #4
 80062f4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80062f8:	dcec      	bgt.n	80062d4 <__multadd+0x10>
 80062fa:	b13b      	cbz	r3, 800630c <__multadd+0x48>
 80062fc:	68aa      	ldr	r2, [r5, #8]
 80062fe:	42a2      	cmp	r2, r4
 8006300:	dd07      	ble.n	8006312 <__multadd+0x4e>
 8006302:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006306:	3401      	adds	r4, #1
 8006308:	6153      	str	r3, [r2, #20]
 800630a:	612c      	str	r4, [r5, #16]
 800630c:	4628      	mov	r0, r5
 800630e:	b003      	add	sp, #12
 8006310:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006312:	6869      	ldr	r1, [r5, #4]
 8006314:	9301      	str	r3, [sp, #4]
 8006316:	3101      	adds	r1, #1
 8006318:	4630      	mov	r0, r6
 800631a:	f7ff ffa3 	bl	8006264 <_Balloc>
 800631e:	692a      	ldr	r2, [r5, #16]
 8006320:	3202      	adds	r2, #2
 8006322:	f105 010c 	add.w	r1, r5, #12
 8006326:	4607      	mov	r7, r0
 8006328:	0092      	lsls	r2, r2, #2
 800632a:	300c      	adds	r0, #12
 800632c:	f7fa f8e8 	bl	8000500 <memcpy>
 8006330:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006332:	6869      	ldr	r1, [r5, #4]
 8006334:	9b01      	ldr	r3, [sp, #4]
 8006336:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800633a:	6028      	str	r0, [r5, #0]
 800633c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006340:	463d      	mov	r5, r7
 8006342:	e7de      	b.n	8006302 <__multadd+0x3e>

08006344 <__hi0bits>:
 8006344:	0c02      	lsrs	r2, r0, #16
 8006346:	0412      	lsls	r2, r2, #16
 8006348:	4603      	mov	r3, r0
 800634a:	b9c2      	cbnz	r2, 800637e <__hi0bits+0x3a>
 800634c:	0403      	lsls	r3, r0, #16
 800634e:	2010      	movs	r0, #16
 8006350:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006354:	bf04      	itt	eq
 8006356:	021b      	lsleq	r3, r3, #8
 8006358:	3008      	addeq	r0, #8
 800635a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800635e:	bf04      	itt	eq
 8006360:	011b      	lsleq	r3, r3, #4
 8006362:	3004      	addeq	r0, #4
 8006364:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006368:	bf04      	itt	eq
 800636a:	009b      	lsleq	r3, r3, #2
 800636c:	3002      	addeq	r0, #2
 800636e:	2b00      	cmp	r3, #0
 8006370:	db04      	blt.n	800637c <__hi0bits+0x38>
 8006372:	005b      	lsls	r3, r3, #1
 8006374:	d501      	bpl.n	800637a <__hi0bits+0x36>
 8006376:	3001      	adds	r0, #1
 8006378:	4770      	bx	lr
 800637a:	2020      	movs	r0, #32
 800637c:	4770      	bx	lr
 800637e:	2000      	movs	r0, #0
 8006380:	e7e6      	b.n	8006350 <__hi0bits+0xc>
 8006382:	bf00      	nop

08006384 <__lo0bits>:
 8006384:	6803      	ldr	r3, [r0, #0]
 8006386:	f013 0207 	ands.w	r2, r3, #7
 800638a:	4601      	mov	r1, r0
 800638c:	d007      	beq.n	800639e <__lo0bits+0x1a>
 800638e:	07da      	lsls	r2, r3, #31
 8006390:	d41f      	bmi.n	80063d2 <__lo0bits+0x4e>
 8006392:	0798      	lsls	r0, r3, #30
 8006394:	d51f      	bpl.n	80063d6 <__lo0bits+0x52>
 8006396:	085b      	lsrs	r3, r3, #1
 8006398:	600b      	str	r3, [r1, #0]
 800639a:	2001      	movs	r0, #1
 800639c:	4770      	bx	lr
 800639e:	b298      	uxth	r0, r3
 80063a0:	b1a0      	cbz	r0, 80063cc <__lo0bits+0x48>
 80063a2:	4610      	mov	r0, r2
 80063a4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80063a8:	bf04      	itt	eq
 80063aa:	0a1b      	lsreq	r3, r3, #8
 80063ac:	3008      	addeq	r0, #8
 80063ae:	071a      	lsls	r2, r3, #28
 80063b0:	bf04      	itt	eq
 80063b2:	091b      	lsreq	r3, r3, #4
 80063b4:	3004      	addeq	r0, #4
 80063b6:	079a      	lsls	r2, r3, #30
 80063b8:	bf04      	itt	eq
 80063ba:	089b      	lsreq	r3, r3, #2
 80063bc:	3002      	addeq	r0, #2
 80063be:	07da      	lsls	r2, r3, #31
 80063c0:	d402      	bmi.n	80063c8 <__lo0bits+0x44>
 80063c2:	085b      	lsrs	r3, r3, #1
 80063c4:	d00b      	beq.n	80063de <__lo0bits+0x5a>
 80063c6:	3001      	adds	r0, #1
 80063c8:	600b      	str	r3, [r1, #0]
 80063ca:	4770      	bx	lr
 80063cc:	0c1b      	lsrs	r3, r3, #16
 80063ce:	2010      	movs	r0, #16
 80063d0:	e7e8      	b.n	80063a4 <__lo0bits+0x20>
 80063d2:	2000      	movs	r0, #0
 80063d4:	4770      	bx	lr
 80063d6:	089b      	lsrs	r3, r3, #2
 80063d8:	600b      	str	r3, [r1, #0]
 80063da:	2002      	movs	r0, #2
 80063dc:	4770      	bx	lr
 80063de:	2020      	movs	r0, #32
 80063e0:	4770      	bx	lr
 80063e2:	bf00      	nop

080063e4 <__i2b>:
 80063e4:	b510      	push	{r4, lr}
 80063e6:	460c      	mov	r4, r1
 80063e8:	2101      	movs	r1, #1
 80063ea:	f7ff ff3b 	bl	8006264 <_Balloc>
 80063ee:	2201      	movs	r2, #1
 80063f0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80063f4:	bd10      	pop	{r4, pc}
 80063f6:	bf00      	nop

080063f8 <__multiply>:
 80063f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80063fc:	690e      	ldr	r6, [r1, #16]
 80063fe:	6914      	ldr	r4, [r2, #16]
 8006400:	42a6      	cmp	r6, r4
 8006402:	b083      	sub	sp, #12
 8006404:	460f      	mov	r7, r1
 8006406:	4615      	mov	r5, r2
 8006408:	da04      	bge.n	8006414 <__multiply+0x1c>
 800640a:	4632      	mov	r2, r6
 800640c:	462f      	mov	r7, r5
 800640e:	4626      	mov	r6, r4
 8006410:	460d      	mov	r5, r1
 8006412:	4614      	mov	r4, r2
 8006414:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006418:	eb06 0804 	add.w	r8, r6, r4
 800641c:	4543      	cmp	r3, r8
 800641e:	bfb8      	it	lt
 8006420:	3101      	addlt	r1, #1
 8006422:	f7ff ff1f 	bl	8006264 <_Balloc>
 8006426:	f100 0914 	add.w	r9, r0, #20
 800642a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800642e:	45f1      	cmp	r9, lr
 8006430:	9000      	str	r0, [sp, #0]
 8006432:	d205      	bcs.n	8006440 <__multiply+0x48>
 8006434:	464b      	mov	r3, r9
 8006436:	2200      	movs	r2, #0
 8006438:	f843 2b04 	str.w	r2, [r3], #4
 800643c:	459e      	cmp	lr, r3
 800643e:	d8fb      	bhi.n	8006438 <__multiply+0x40>
 8006440:	f105 0a14 	add.w	sl, r5, #20
 8006444:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006448:	f107 0314 	add.w	r3, r7, #20
 800644c:	45a2      	cmp	sl, r4
 800644e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006452:	d261      	bcs.n	8006518 <__multiply+0x120>
 8006454:	1b64      	subs	r4, r4, r5
 8006456:	3c15      	subs	r4, #21
 8006458:	f024 0403 	bic.w	r4, r4, #3
 800645c:	f8cd e004 	str.w	lr, [sp, #4]
 8006460:	44a2      	add	sl, r4
 8006462:	f105 0210 	add.w	r2, r5, #16
 8006466:	469e      	mov	lr, r3
 8006468:	e005      	b.n	8006476 <__multiply+0x7e>
 800646a:	0c2d      	lsrs	r5, r5, #16
 800646c:	d12b      	bne.n	80064c6 <__multiply+0xce>
 800646e:	4592      	cmp	sl, r2
 8006470:	f109 0904 	add.w	r9, r9, #4
 8006474:	d04e      	beq.n	8006514 <__multiply+0x11c>
 8006476:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800647a:	fa1f fb85 	uxth.w	fp, r5
 800647e:	f1bb 0f00 	cmp.w	fp, #0
 8006482:	d0f2      	beq.n	800646a <__multiply+0x72>
 8006484:	4677      	mov	r7, lr
 8006486:	464e      	mov	r6, r9
 8006488:	2000      	movs	r0, #0
 800648a:	e000      	b.n	800648e <__multiply+0x96>
 800648c:	4626      	mov	r6, r4
 800648e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006492:	6834      	ldr	r4, [r6, #0]
 8006494:	b28b      	uxth	r3, r1
 8006496:	b2a5      	uxth	r5, r4
 8006498:	0c09      	lsrs	r1, r1, #16
 800649a:	0c24      	lsrs	r4, r4, #16
 800649c:	fb0b 5303 	mla	r3, fp, r3, r5
 80064a0:	4403      	add	r3, r0
 80064a2:	fb0b 4001 	mla	r0, fp, r1, r4
 80064a6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80064aa:	4634      	mov	r4, r6
 80064ac:	b29b      	uxth	r3, r3
 80064ae:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80064b2:	45bc      	cmp	ip, r7
 80064b4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80064b8:	f844 3b04 	str.w	r3, [r4], #4
 80064bc:	d8e6      	bhi.n	800648c <__multiply+0x94>
 80064be:	6070      	str	r0, [r6, #4]
 80064c0:	6815      	ldr	r5, [r2, #0]
 80064c2:	0c2d      	lsrs	r5, r5, #16
 80064c4:	d0d3      	beq.n	800646e <__multiply+0x76>
 80064c6:	f8d9 3000 	ldr.w	r3, [r9]
 80064ca:	4676      	mov	r6, lr
 80064cc:	4618      	mov	r0, r3
 80064ce:	46cb      	mov	fp, r9
 80064d0:	2100      	movs	r1, #0
 80064d2:	e000      	b.n	80064d6 <__multiply+0xde>
 80064d4:	46a3      	mov	fp, r4
 80064d6:	8834      	ldrh	r4, [r6, #0]
 80064d8:	0c00      	lsrs	r0, r0, #16
 80064da:	fb05 0004 	mla	r0, r5, r4, r0
 80064de:	4401      	add	r1, r0
 80064e0:	b29b      	uxth	r3, r3
 80064e2:	465c      	mov	r4, fp
 80064e4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80064e8:	f844 3b04 	str.w	r3, [r4], #4
 80064ec:	f856 3b04 	ldr.w	r3, [r6], #4
 80064f0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80064f4:	0c1b      	lsrs	r3, r3, #16
 80064f6:	b287      	uxth	r7, r0
 80064f8:	fb05 7303 	mla	r3, r5, r3, r7
 80064fc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006500:	45b4      	cmp	ip, r6
 8006502:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006506:	d8e5      	bhi.n	80064d4 <__multiply+0xdc>
 8006508:	4592      	cmp	sl, r2
 800650a:	f8cb 3004 	str.w	r3, [fp, #4]
 800650e:	f109 0904 	add.w	r9, r9, #4
 8006512:	d1b0      	bne.n	8006476 <__multiply+0x7e>
 8006514:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006518:	f1b8 0f00 	cmp.w	r8, #0
 800651c:	dd0b      	ble.n	8006536 <__multiply+0x13e>
 800651e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006522:	f1ae 0e04 	sub.w	lr, lr, #4
 8006526:	b11b      	cbz	r3, 8006530 <__multiply+0x138>
 8006528:	e005      	b.n	8006536 <__multiply+0x13e>
 800652a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800652e:	b913      	cbnz	r3, 8006536 <__multiply+0x13e>
 8006530:	f1b8 0801 	subs.w	r8, r8, #1
 8006534:	d1f9      	bne.n	800652a <__multiply+0x132>
 8006536:	9800      	ldr	r0, [sp, #0]
 8006538:	f8c0 8010 	str.w	r8, [r0, #16]
 800653c:	b003      	add	sp, #12
 800653e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006542:	bf00      	nop

08006544 <__pow5mult>:
 8006544:	f012 0303 	ands.w	r3, r2, #3
 8006548:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800654c:	4614      	mov	r4, r2
 800654e:	4607      	mov	r7, r0
 8006550:	d12e      	bne.n	80065b0 <__pow5mult+0x6c>
 8006552:	460d      	mov	r5, r1
 8006554:	10a4      	asrs	r4, r4, #2
 8006556:	d01c      	beq.n	8006592 <__pow5mult+0x4e>
 8006558:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800655a:	b396      	cbz	r6, 80065c2 <__pow5mult+0x7e>
 800655c:	07e3      	lsls	r3, r4, #31
 800655e:	f04f 0800 	mov.w	r8, #0
 8006562:	d406      	bmi.n	8006572 <__pow5mult+0x2e>
 8006564:	1064      	asrs	r4, r4, #1
 8006566:	d014      	beq.n	8006592 <__pow5mult+0x4e>
 8006568:	6830      	ldr	r0, [r6, #0]
 800656a:	b1a8      	cbz	r0, 8006598 <__pow5mult+0x54>
 800656c:	4606      	mov	r6, r0
 800656e:	07e3      	lsls	r3, r4, #31
 8006570:	d5f8      	bpl.n	8006564 <__pow5mult+0x20>
 8006572:	4632      	mov	r2, r6
 8006574:	4629      	mov	r1, r5
 8006576:	4638      	mov	r0, r7
 8006578:	f7ff ff3e 	bl	80063f8 <__multiply>
 800657c:	b1b5      	cbz	r5, 80065ac <__pow5mult+0x68>
 800657e:	686a      	ldr	r2, [r5, #4]
 8006580:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006582:	1064      	asrs	r4, r4, #1
 8006584:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006588:	6029      	str	r1, [r5, #0]
 800658a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800658e:	4605      	mov	r5, r0
 8006590:	d1ea      	bne.n	8006568 <__pow5mult+0x24>
 8006592:	4628      	mov	r0, r5
 8006594:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006598:	4632      	mov	r2, r6
 800659a:	4631      	mov	r1, r6
 800659c:	4638      	mov	r0, r7
 800659e:	f7ff ff2b 	bl	80063f8 <__multiply>
 80065a2:	6030      	str	r0, [r6, #0]
 80065a4:	f8c0 8000 	str.w	r8, [r0]
 80065a8:	4606      	mov	r6, r0
 80065aa:	e7e0      	b.n	800656e <__pow5mult+0x2a>
 80065ac:	4605      	mov	r5, r0
 80065ae:	e7d9      	b.n	8006564 <__pow5mult+0x20>
 80065b0:	3b01      	subs	r3, #1
 80065b2:	4a0b      	ldr	r2, [pc, #44]	; (80065e0 <__pow5mult+0x9c>)
 80065b4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80065b8:	2300      	movs	r3, #0
 80065ba:	f7ff fe83 	bl	80062c4 <__multadd>
 80065be:	4605      	mov	r5, r0
 80065c0:	e7c8      	b.n	8006554 <__pow5mult+0x10>
 80065c2:	2101      	movs	r1, #1
 80065c4:	4638      	mov	r0, r7
 80065c6:	f7ff fe4d 	bl	8006264 <_Balloc>
 80065ca:	f240 2371 	movw	r3, #625	; 0x271
 80065ce:	6143      	str	r3, [r0, #20]
 80065d0:	2201      	movs	r2, #1
 80065d2:	2300      	movs	r3, #0
 80065d4:	6102      	str	r2, [r0, #16]
 80065d6:	4606      	mov	r6, r0
 80065d8:	64b8      	str	r0, [r7, #72]	; 0x48
 80065da:	6003      	str	r3, [r0, #0]
 80065dc:	e7be      	b.n	800655c <__pow5mult+0x18>
 80065de:	bf00      	nop
 80065e0:	080076a8 	.word	0x080076a8

080065e4 <__lshift>:
 80065e4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80065e8:	4691      	mov	r9, r2
 80065ea:	690a      	ldr	r2, [r1, #16]
 80065ec:	460e      	mov	r6, r1
 80065ee:	ea4f 1469 	mov.w	r4, r9, asr #5
 80065f2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80065f6:	eb04 0802 	add.w	r8, r4, r2
 80065fa:	f108 0501 	add.w	r5, r8, #1
 80065fe:	429d      	cmp	r5, r3
 8006600:	4607      	mov	r7, r0
 8006602:	dd04      	ble.n	800660e <__lshift+0x2a>
 8006604:	005b      	lsls	r3, r3, #1
 8006606:	429d      	cmp	r5, r3
 8006608:	f101 0101 	add.w	r1, r1, #1
 800660c:	dcfa      	bgt.n	8006604 <__lshift+0x20>
 800660e:	4638      	mov	r0, r7
 8006610:	f7ff fe28 	bl	8006264 <_Balloc>
 8006614:	2c00      	cmp	r4, #0
 8006616:	f100 0314 	add.w	r3, r0, #20
 800661a:	dd37      	ble.n	800668c <__lshift+0xa8>
 800661c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006620:	2200      	movs	r2, #0
 8006622:	f843 2b04 	str.w	r2, [r3], #4
 8006626:	428b      	cmp	r3, r1
 8006628:	d1fb      	bne.n	8006622 <__lshift+0x3e>
 800662a:	6934      	ldr	r4, [r6, #16]
 800662c:	f106 0314 	add.w	r3, r6, #20
 8006630:	f019 091f 	ands.w	r9, r9, #31
 8006634:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006638:	d020      	beq.n	800667c <__lshift+0x98>
 800663a:	f1c9 0e20 	rsb	lr, r9, #32
 800663e:	2200      	movs	r2, #0
 8006640:	e000      	b.n	8006644 <__lshift+0x60>
 8006642:	4651      	mov	r1, sl
 8006644:	681c      	ldr	r4, [r3, #0]
 8006646:	468a      	mov	sl, r1
 8006648:	fa04 f409 	lsl.w	r4, r4, r9
 800664c:	4314      	orrs	r4, r2
 800664e:	f84a 4b04 	str.w	r4, [sl], #4
 8006652:	f853 2b04 	ldr.w	r2, [r3], #4
 8006656:	4563      	cmp	r3, ip
 8006658:	fa22 f20e 	lsr.w	r2, r2, lr
 800665c:	d3f1      	bcc.n	8006642 <__lshift+0x5e>
 800665e:	604a      	str	r2, [r1, #4]
 8006660:	b10a      	cbz	r2, 8006666 <__lshift+0x82>
 8006662:	f108 0502 	add.w	r5, r8, #2
 8006666:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006668:	6872      	ldr	r2, [r6, #4]
 800666a:	3d01      	subs	r5, #1
 800666c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006670:	6105      	str	r5, [r0, #16]
 8006672:	6031      	str	r1, [r6, #0]
 8006674:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006678:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800667c:	3904      	subs	r1, #4
 800667e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006682:	f841 2f04 	str.w	r2, [r1, #4]!
 8006686:	459c      	cmp	ip, r3
 8006688:	d8f9      	bhi.n	800667e <__lshift+0x9a>
 800668a:	e7ec      	b.n	8006666 <__lshift+0x82>
 800668c:	4619      	mov	r1, r3
 800668e:	e7cc      	b.n	800662a <__lshift+0x46>

08006690 <__mcmp>:
 8006690:	b430      	push	{r4, r5}
 8006692:	690b      	ldr	r3, [r1, #16]
 8006694:	4605      	mov	r5, r0
 8006696:	6900      	ldr	r0, [r0, #16]
 8006698:	1ac0      	subs	r0, r0, r3
 800669a:	d10f      	bne.n	80066bc <__mcmp+0x2c>
 800669c:	009b      	lsls	r3, r3, #2
 800669e:	3514      	adds	r5, #20
 80066a0:	3114      	adds	r1, #20
 80066a2:	4419      	add	r1, r3
 80066a4:	442b      	add	r3, r5
 80066a6:	e001      	b.n	80066ac <__mcmp+0x1c>
 80066a8:	429d      	cmp	r5, r3
 80066aa:	d207      	bcs.n	80066bc <__mcmp+0x2c>
 80066ac:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80066b0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80066b4:	4294      	cmp	r4, r2
 80066b6:	d0f7      	beq.n	80066a8 <__mcmp+0x18>
 80066b8:	d302      	bcc.n	80066c0 <__mcmp+0x30>
 80066ba:	2001      	movs	r0, #1
 80066bc:	bc30      	pop	{r4, r5}
 80066be:	4770      	bx	lr
 80066c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80066c4:	e7fa      	b.n	80066bc <__mcmp+0x2c>
 80066c6:	bf00      	nop

080066c8 <__mdiff>:
 80066c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80066cc:	6913      	ldr	r3, [r2, #16]
 80066ce:	690d      	ldr	r5, [r1, #16]
 80066d0:	1aed      	subs	r5, r5, r3
 80066d2:	2d00      	cmp	r5, #0
 80066d4:	460e      	mov	r6, r1
 80066d6:	4690      	mov	r8, r2
 80066d8:	f101 0414 	add.w	r4, r1, #20
 80066dc:	f102 0714 	add.w	r7, r2, #20
 80066e0:	d114      	bne.n	800670c <__mdiff+0x44>
 80066e2:	009b      	lsls	r3, r3, #2
 80066e4:	18e2      	adds	r2, r4, r3
 80066e6:	443b      	add	r3, r7
 80066e8:	e001      	b.n	80066ee <__mdiff+0x26>
 80066ea:	42a2      	cmp	r2, r4
 80066ec:	d959      	bls.n	80067a2 <__mdiff+0xda>
 80066ee:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80066f2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80066f6:	458c      	cmp	ip, r1
 80066f8:	d0f7      	beq.n	80066ea <__mdiff+0x22>
 80066fa:	d209      	bcs.n	8006710 <__mdiff+0x48>
 80066fc:	4622      	mov	r2, r4
 80066fe:	4633      	mov	r3, r6
 8006700:	463c      	mov	r4, r7
 8006702:	4646      	mov	r6, r8
 8006704:	4617      	mov	r7, r2
 8006706:	4698      	mov	r8, r3
 8006708:	2501      	movs	r5, #1
 800670a:	e001      	b.n	8006710 <__mdiff+0x48>
 800670c:	dbf6      	blt.n	80066fc <__mdiff+0x34>
 800670e:	2500      	movs	r5, #0
 8006710:	6871      	ldr	r1, [r6, #4]
 8006712:	f7ff fda7 	bl	8006264 <_Balloc>
 8006716:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800671a:	6936      	ldr	r6, [r6, #16]
 800671c:	60c5      	str	r5, [r0, #12]
 800671e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006722:	46bc      	mov	ip, r7
 8006724:	f100 0514 	add.w	r5, r0, #20
 8006728:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800672c:	2300      	movs	r3, #0
 800672e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006732:	f854 8b04 	ldr.w	r8, [r4], #4
 8006736:	b28a      	uxth	r2, r1
 8006738:	fa13 f388 	uxtah	r3, r3, r8
 800673c:	0c09      	lsrs	r1, r1, #16
 800673e:	1a9a      	subs	r2, r3, r2
 8006740:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006744:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006748:	b292      	uxth	r2, r2
 800674a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800674e:	45e6      	cmp	lr, ip
 8006750:	f845 2b04 	str.w	r2, [r5], #4
 8006754:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006758:	d8e9      	bhi.n	800672e <__mdiff+0x66>
 800675a:	42a7      	cmp	r7, r4
 800675c:	d917      	bls.n	800678e <__mdiff+0xc6>
 800675e:	46ae      	mov	lr, r5
 8006760:	46a4      	mov	ip, r4
 8006762:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006766:	fa13 f382 	uxtah	r3, r3, r2
 800676a:	1419      	asrs	r1, r3, #16
 800676c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006770:	b29b      	uxth	r3, r3
 8006772:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006776:	4567      	cmp	r7, ip
 8006778:	f84e 2b04 	str.w	r2, [lr], #4
 800677c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006780:	d8ef      	bhi.n	8006762 <__mdiff+0x9a>
 8006782:	43e4      	mvns	r4, r4
 8006784:	4427      	add	r7, r4
 8006786:	f027 0703 	bic.w	r7, r7, #3
 800678a:	3704      	adds	r7, #4
 800678c:	443d      	add	r5, r7
 800678e:	3d04      	subs	r5, #4
 8006790:	b922      	cbnz	r2, 800679c <__mdiff+0xd4>
 8006792:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006796:	3e01      	subs	r6, #1
 8006798:	2b00      	cmp	r3, #0
 800679a:	d0fa      	beq.n	8006792 <__mdiff+0xca>
 800679c:	6106      	str	r6, [r0, #16]
 800679e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80067a2:	2100      	movs	r1, #0
 80067a4:	f7ff fd5e 	bl	8006264 <_Balloc>
 80067a8:	2201      	movs	r2, #1
 80067aa:	2300      	movs	r3, #0
 80067ac:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80067b0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080067b4 <__d2b>:
 80067b4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80067b8:	460f      	mov	r7, r1
 80067ba:	b083      	sub	sp, #12
 80067bc:	2101      	movs	r1, #1
 80067be:	ec55 4b10 	vmov	r4, r5, d0
 80067c2:	4616      	mov	r6, r2
 80067c4:	f7ff fd4e 	bl	8006264 <_Balloc>
 80067c8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80067cc:	4681      	mov	r9, r0
 80067ce:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80067d2:	f1b8 0f00 	cmp.w	r8, #0
 80067d6:	d001      	beq.n	80067dc <__d2b+0x28>
 80067d8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80067dc:	2c00      	cmp	r4, #0
 80067de:	9301      	str	r3, [sp, #4]
 80067e0:	d024      	beq.n	800682c <__d2b+0x78>
 80067e2:	a802      	add	r0, sp, #8
 80067e4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80067e8:	f7ff fdcc 	bl	8006384 <__lo0bits>
 80067ec:	2800      	cmp	r0, #0
 80067ee:	d136      	bne.n	800685e <__d2b+0xaa>
 80067f0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80067f4:	f8c9 2014 	str.w	r2, [r9, #20]
 80067f8:	2b00      	cmp	r3, #0
 80067fa:	bf0c      	ite	eq
 80067fc:	2101      	moveq	r1, #1
 80067fe:	2102      	movne	r1, #2
 8006800:	f8c9 3018 	str.w	r3, [r9, #24]
 8006804:	f8c9 1010 	str.w	r1, [r9, #16]
 8006808:	f1b8 0f00 	cmp.w	r8, #0
 800680c:	d11b      	bne.n	8006846 <__d2b+0x92>
 800680e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006812:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006816:	6038      	str	r0, [r7, #0]
 8006818:	6918      	ldr	r0, [r3, #16]
 800681a:	f7ff fd93 	bl	8006344 <__hi0bits>
 800681e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006822:	6030      	str	r0, [r6, #0]
 8006824:	4648      	mov	r0, r9
 8006826:	b003      	add	sp, #12
 8006828:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800682c:	a801      	add	r0, sp, #4
 800682e:	f7ff fda9 	bl	8006384 <__lo0bits>
 8006832:	9b01      	ldr	r3, [sp, #4]
 8006834:	f8c9 3014 	str.w	r3, [r9, #20]
 8006838:	2101      	movs	r1, #1
 800683a:	3020      	adds	r0, #32
 800683c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006840:	f1b8 0f00 	cmp.w	r8, #0
 8006844:	d0e3      	beq.n	800680e <__d2b+0x5a>
 8006846:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800684a:	eb08 0300 	add.w	r3, r8, r0
 800684e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006852:	603b      	str	r3, [r7, #0]
 8006854:	6030      	str	r0, [r6, #0]
 8006856:	4648      	mov	r0, r9
 8006858:	b003      	add	sp, #12
 800685a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800685e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006862:	f1c0 0220 	rsb	r2, r0, #32
 8006866:	fa03 f202 	lsl.w	r2, r3, r2
 800686a:	430a      	orrs	r2, r1
 800686c:	40c3      	lsrs	r3, r0
 800686e:	9301      	str	r3, [sp, #4]
 8006870:	f8c9 2014 	str.w	r2, [r9, #20]
 8006874:	e7c0      	b.n	80067f8 <__d2b+0x44>
 8006876:	bf00      	nop

08006878 <_realloc_r>:
 8006878:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800687c:	4692      	mov	sl, r2
 800687e:	b083      	sub	sp, #12
 8006880:	2900      	cmp	r1, #0
 8006882:	f000 80a1 	beq.w	80069c8 <_realloc_r+0x150>
 8006886:	460d      	mov	r5, r1
 8006888:	4680      	mov	r8, r0
 800688a:	f10a 040b 	add.w	r4, sl, #11
 800688e:	f7ff fcdd 	bl	800624c <__malloc_lock>
 8006892:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006896:	2c16      	cmp	r4, #22
 8006898:	f022 0603 	bic.w	r6, r2, #3
 800689c:	f1a5 0708 	sub.w	r7, r5, #8
 80068a0:	d83e      	bhi.n	8006920 <_realloc_r+0xa8>
 80068a2:	2410      	movs	r4, #16
 80068a4:	4621      	mov	r1, r4
 80068a6:	45a2      	cmp	sl, r4
 80068a8:	d83f      	bhi.n	800692a <_realloc_r+0xb2>
 80068aa:	428e      	cmp	r6, r1
 80068ac:	eb07 0906 	add.w	r9, r7, r6
 80068b0:	da74      	bge.n	800699c <_realloc_r+0x124>
 80068b2:	4bc7      	ldr	r3, [pc, #796]	; (8006bd0 <_realloc_r+0x358>)
 80068b4:	6898      	ldr	r0, [r3, #8]
 80068b6:	4548      	cmp	r0, r9
 80068b8:	f000 80aa 	beq.w	8006a10 <_realloc_r+0x198>
 80068bc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80068c0:	f020 0301 	bic.w	r3, r0, #1
 80068c4:	444b      	add	r3, r9
 80068c6:	685b      	ldr	r3, [r3, #4]
 80068c8:	07db      	lsls	r3, r3, #31
 80068ca:	f140 8083 	bpl.w	80069d4 <_realloc_r+0x15c>
 80068ce:	07d2      	lsls	r2, r2, #31
 80068d0:	d534      	bpl.n	800693c <_realloc_r+0xc4>
 80068d2:	4651      	mov	r1, sl
 80068d4:	4640      	mov	r0, r8
 80068d6:	f7ff f9b1 	bl	8005c3c <_malloc_r>
 80068da:	4682      	mov	sl, r0
 80068dc:	b1e0      	cbz	r0, 8006918 <_realloc_r+0xa0>
 80068de:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80068e2:	f023 0301 	bic.w	r3, r3, #1
 80068e6:	443b      	add	r3, r7
 80068e8:	f1a0 0208 	sub.w	r2, r0, #8
 80068ec:	4293      	cmp	r3, r2
 80068ee:	f000 80f9 	beq.w	8006ae4 <_realloc_r+0x26c>
 80068f2:	1f32      	subs	r2, r6, #4
 80068f4:	2a24      	cmp	r2, #36	; 0x24
 80068f6:	f200 8107 	bhi.w	8006b08 <_realloc_r+0x290>
 80068fa:	2a13      	cmp	r2, #19
 80068fc:	6829      	ldr	r1, [r5, #0]
 80068fe:	f200 80e6 	bhi.w	8006ace <_realloc_r+0x256>
 8006902:	4603      	mov	r3, r0
 8006904:	462a      	mov	r2, r5
 8006906:	6019      	str	r1, [r3, #0]
 8006908:	6851      	ldr	r1, [r2, #4]
 800690a:	6059      	str	r1, [r3, #4]
 800690c:	6892      	ldr	r2, [r2, #8]
 800690e:	609a      	str	r2, [r3, #8]
 8006910:	4629      	mov	r1, r5
 8006912:	4640      	mov	r0, r8
 8006914:	f7fe fe68 	bl	80055e8 <_free_r>
 8006918:	4640      	mov	r0, r8
 800691a:	f7ff fc9d 	bl	8006258 <__malloc_unlock>
 800691e:	e04f      	b.n	80069c0 <_realloc_r+0x148>
 8006920:	f024 0407 	bic.w	r4, r4, #7
 8006924:	2c00      	cmp	r4, #0
 8006926:	4621      	mov	r1, r4
 8006928:	dabd      	bge.n	80068a6 <_realloc_r+0x2e>
 800692a:	f04f 0a00 	mov.w	sl, #0
 800692e:	230c      	movs	r3, #12
 8006930:	4650      	mov	r0, sl
 8006932:	f8c8 3000 	str.w	r3, [r8]
 8006936:	b003      	add	sp, #12
 8006938:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800693c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006940:	eba7 0b03 	sub.w	fp, r7, r3
 8006944:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006948:	f022 0203 	bic.w	r2, r2, #3
 800694c:	18b3      	adds	r3, r6, r2
 800694e:	428b      	cmp	r3, r1
 8006950:	dbbf      	blt.n	80068d2 <_realloc_r+0x5a>
 8006952:	46da      	mov	sl, fp
 8006954:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006958:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800695c:	1f32      	subs	r2, r6, #4
 800695e:	2a24      	cmp	r2, #36	; 0x24
 8006960:	60c1      	str	r1, [r0, #12]
 8006962:	eb0b 0903 	add.w	r9, fp, r3
 8006966:	6088      	str	r0, [r1, #8]
 8006968:	f200 80c6 	bhi.w	8006af8 <_realloc_r+0x280>
 800696c:	2a13      	cmp	r2, #19
 800696e:	6829      	ldr	r1, [r5, #0]
 8006970:	f240 80c0 	bls.w	8006af4 <_realloc_r+0x27c>
 8006974:	f8cb 1008 	str.w	r1, [fp, #8]
 8006978:	6869      	ldr	r1, [r5, #4]
 800697a:	f8cb 100c 	str.w	r1, [fp, #12]
 800697e:	2a1b      	cmp	r2, #27
 8006980:	68a9      	ldr	r1, [r5, #8]
 8006982:	f200 80d8 	bhi.w	8006b36 <_realloc_r+0x2be>
 8006986:	f10b 0210 	add.w	r2, fp, #16
 800698a:	3508      	adds	r5, #8
 800698c:	6011      	str	r1, [r2, #0]
 800698e:	6869      	ldr	r1, [r5, #4]
 8006990:	6051      	str	r1, [r2, #4]
 8006992:	68a9      	ldr	r1, [r5, #8]
 8006994:	6091      	str	r1, [r2, #8]
 8006996:	461e      	mov	r6, r3
 8006998:	465f      	mov	r7, fp
 800699a:	4655      	mov	r5, sl
 800699c:	687b      	ldr	r3, [r7, #4]
 800699e:	1b32      	subs	r2, r6, r4
 80069a0:	2a0f      	cmp	r2, #15
 80069a2:	f003 0301 	and.w	r3, r3, #1
 80069a6:	d822      	bhi.n	80069ee <_realloc_r+0x176>
 80069a8:	4333      	orrs	r3, r6
 80069aa:	607b      	str	r3, [r7, #4]
 80069ac:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80069b0:	f043 0301 	orr.w	r3, r3, #1
 80069b4:	f8c9 3004 	str.w	r3, [r9, #4]
 80069b8:	4640      	mov	r0, r8
 80069ba:	f7ff fc4d 	bl	8006258 <__malloc_unlock>
 80069be:	46aa      	mov	sl, r5
 80069c0:	4650      	mov	r0, sl
 80069c2:	b003      	add	sp, #12
 80069c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80069c8:	4611      	mov	r1, r2
 80069ca:	b003      	add	sp, #12
 80069cc:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069d0:	f7ff b934 	b.w	8005c3c <_malloc_r>
 80069d4:	f020 0003 	bic.w	r0, r0, #3
 80069d8:	1833      	adds	r3, r6, r0
 80069da:	428b      	cmp	r3, r1
 80069dc:	db61      	blt.n	8006aa2 <_realloc_r+0x22a>
 80069de:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80069e2:	461e      	mov	r6, r3
 80069e4:	60ca      	str	r2, [r1, #12]
 80069e6:	eb07 0903 	add.w	r9, r7, r3
 80069ea:	6091      	str	r1, [r2, #8]
 80069ec:	e7d6      	b.n	800699c <_realloc_r+0x124>
 80069ee:	1939      	adds	r1, r7, r4
 80069f0:	4323      	orrs	r3, r4
 80069f2:	f042 0201 	orr.w	r2, r2, #1
 80069f6:	607b      	str	r3, [r7, #4]
 80069f8:	604a      	str	r2, [r1, #4]
 80069fa:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80069fe:	f043 0301 	orr.w	r3, r3, #1
 8006a02:	3108      	adds	r1, #8
 8006a04:	f8c9 3004 	str.w	r3, [r9, #4]
 8006a08:	4640      	mov	r0, r8
 8006a0a:	f7fe fded 	bl	80055e8 <_free_r>
 8006a0e:	e7d3      	b.n	80069b8 <_realloc_r+0x140>
 8006a10:	6840      	ldr	r0, [r0, #4]
 8006a12:	f020 0903 	bic.w	r9, r0, #3
 8006a16:	44b1      	add	r9, r6
 8006a18:	f104 0010 	add.w	r0, r4, #16
 8006a1c:	4581      	cmp	r9, r0
 8006a1e:	da77      	bge.n	8006b10 <_realloc_r+0x298>
 8006a20:	07d2      	lsls	r2, r2, #31
 8006a22:	f53f af56 	bmi.w	80068d2 <_realloc_r+0x5a>
 8006a26:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006a2a:	eba7 0b02 	sub.w	fp, r7, r2
 8006a2e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a32:	f022 0203 	bic.w	r2, r2, #3
 8006a36:	4491      	add	r9, r2
 8006a38:	4548      	cmp	r0, r9
 8006a3a:	dc87      	bgt.n	800694c <_realloc_r+0xd4>
 8006a3c:	46da      	mov	sl, fp
 8006a3e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006a42:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006a46:	1f32      	subs	r2, r6, #4
 8006a48:	2a24      	cmp	r2, #36	; 0x24
 8006a4a:	60c1      	str	r1, [r0, #12]
 8006a4c:	6088      	str	r0, [r1, #8]
 8006a4e:	f200 80a1 	bhi.w	8006b94 <_realloc_r+0x31c>
 8006a52:	2a13      	cmp	r2, #19
 8006a54:	6829      	ldr	r1, [r5, #0]
 8006a56:	f240 809b 	bls.w	8006b90 <_realloc_r+0x318>
 8006a5a:	f8cb 1008 	str.w	r1, [fp, #8]
 8006a5e:	6869      	ldr	r1, [r5, #4]
 8006a60:	f8cb 100c 	str.w	r1, [fp, #12]
 8006a64:	2a1b      	cmp	r2, #27
 8006a66:	68a9      	ldr	r1, [r5, #8]
 8006a68:	f200 809b 	bhi.w	8006ba2 <_realloc_r+0x32a>
 8006a6c:	f10b 0210 	add.w	r2, fp, #16
 8006a70:	3508      	adds	r5, #8
 8006a72:	6011      	str	r1, [r2, #0]
 8006a74:	6869      	ldr	r1, [r5, #4]
 8006a76:	6051      	str	r1, [r2, #4]
 8006a78:	68a9      	ldr	r1, [r5, #8]
 8006a7a:	6091      	str	r1, [r2, #8]
 8006a7c:	eb0b 0104 	add.w	r1, fp, r4
 8006a80:	eba9 0204 	sub.w	r2, r9, r4
 8006a84:	f042 0201 	orr.w	r2, r2, #1
 8006a88:	6099      	str	r1, [r3, #8]
 8006a8a:	604a      	str	r2, [r1, #4]
 8006a8c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006a90:	f003 0301 	and.w	r3, r3, #1
 8006a94:	431c      	orrs	r4, r3
 8006a96:	4640      	mov	r0, r8
 8006a98:	f8cb 4004 	str.w	r4, [fp, #4]
 8006a9c:	f7ff fbdc 	bl	8006258 <__malloc_unlock>
 8006aa0:	e78e      	b.n	80069c0 <_realloc_r+0x148>
 8006aa2:	07d3      	lsls	r3, r2, #31
 8006aa4:	f53f af15 	bmi.w	80068d2 <_realloc_r+0x5a>
 8006aa8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006aac:	eba7 0b03 	sub.w	fp, r7, r3
 8006ab0:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006ab4:	f022 0203 	bic.w	r2, r2, #3
 8006ab8:	4410      	add	r0, r2
 8006aba:	1983      	adds	r3, r0, r6
 8006abc:	428b      	cmp	r3, r1
 8006abe:	f6ff af45 	blt.w	800694c <_realloc_r+0xd4>
 8006ac2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006ac6:	46da      	mov	sl, fp
 8006ac8:	60ca      	str	r2, [r1, #12]
 8006aca:	6091      	str	r1, [r2, #8]
 8006acc:	e742      	b.n	8006954 <_realloc_r+0xdc>
 8006ace:	6001      	str	r1, [r0, #0]
 8006ad0:	686b      	ldr	r3, [r5, #4]
 8006ad2:	6043      	str	r3, [r0, #4]
 8006ad4:	2a1b      	cmp	r2, #27
 8006ad6:	d83a      	bhi.n	8006b4e <_realloc_r+0x2d6>
 8006ad8:	f105 0208 	add.w	r2, r5, #8
 8006adc:	f100 0308 	add.w	r3, r0, #8
 8006ae0:	68a9      	ldr	r1, [r5, #8]
 8006ae2:	e710      	b.n	8006906 <_realloc_r+0x8e>
 8006ae4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006ae8:	f023 0303 	bic.w	r3, r3, #3
 8006aec:	441e      	add	r6, r3
 8006aee:	eb07 0906 	add.w	r9, r7, r6
 8006af2:	e753      	b.n	800699c <_realloc_r+0x124>
 8006af4:	4652      	mov	r2, sl
 8006af6:	e749      	b.n	800698c <_realloc_r+0x114>
 8006af8:	4629      	mov	r1, r5
 8006afa:	4650      	mov	r0, sl
 8006afc:	461e      	mov	r6, r3
 8006afe:	465f      	mov	r7, fp
 8006b00:	f7ff fb40 	bl	8006184 <memmove>
 8006b04:	4655      	mov	r5, sl
 8006b06:	e749      	b.n	800699c <_realloc_r+0x124>
 8006b08:	4629      	mov	r1, r5
 8006b0a:	f7ff fb3b 	bl	8006184 <memmove>
 8006b0e:	e6ff      	b.n	8006910 <_realloc_r+0x98>
 8006b10:	4427      	add	r7, r4
 8006b12:	eba9 0904 	sub.w	r9, r9, r4
 8006b16:	f049 0201 	orr.w	r2, r9, #1
 8006b1a:	609f      	str	r7, [r3, #8]
 8006b1c:	607a      	str	r2, [r7, #4]
 8006b1e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006b22:	f003 0301 	and.w	r3, r3, #1
 8006b26:	431c      	orrs	r4, r3
 8006b28:	4640      	mov	r0, r8
 8006b2a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006b2e:	f7ff fb93 	bl	8006258 <__malloc_unlock>
 8006b32:	46aa      	mov	sl, r5
 8006b34:	e744      	b.n	80069c0 <_realloc_r+0x148>
 8006b36:	f8cb 1010 	str.w	r1, [fp, #16]
 8006b3a:	68e9      	ldr	r1, [r5, #12]
 8006b3c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006b40:	2a24      	cmp	r2, #36	; 0x24
 8006b42:	d010      	beq.n	8006b66 <_realloc_r+0x2ee>
 8006b44:	6929      	ldr	r1, [r5, #16]
 8006b46:	f10b 0218 	add.w	r2, fp, #24
 8006b4a:	3510      	adds	r5, #16
 8006b4c:	e71e      	b.n	800698c <_realloc_r+0x114>
 8006b4e:	68ab      	ldr	r3, [r5, #8]
 8006b50:	6083      	str	r3, [r0, #8]
 8006b52:	68eb      	ldr	r3, [r5, #12]
 8006b54:	60c3      	str	r3, [r0, #12]
 8006b56:	2a24      	cmp	r2, #36	; 0x24
 8006b58:	d010      	beq.n	8006b7c <_realloc_r+0x304>
 8006b5a:	f105 0210 	add.w	r2, r5, #16
 8006b5e:	f100 0310 	add.w	r3, r0, #16
 8006b62:	6929      	ldr	r1, [r5, #16]
 8006b64:	e6cf      	b.n	8006906 <_realloc_r+0x8e>
 8006b66:	692a      	ldr	r2, [r5, #16]
 8006b68:	f8cb 2018 	str.w	r2, [fp, #24]
 8006b6c:	696a      	ldr	r2, [r5, #20]
 8006b6e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006b72:	69a9      	ldr	r1, [r5, #24]
 8006b74:	f10b 0220 	add.w	r2, fp, #32
 8006b78:	3518      	adds	r5, #24
 8006b7a:	e707      	b.n	800698c <_realloc_r+0x114>
 8006b7c:	692b      	ldr	r3, [r5, #16]
 8006b7e:	6103      	str	r3, [r0, #16]
 8006b80:	696b      	ldr	r3, [r5, #20]
 8006b82:	6143      	str	r3, [r0, #20]
 8006b84:	69a9      	ldr	r1, [r5, #24]
 8006b86:	f105 0218 	add.w	r2, r5, #24
 8006b8a:	f100 0318 	add.w	r3, r0, #24
 8006b8e:	e6ba      	b.n	8006906 <_realloc_r+0x8e>
 8006b90:	4652      	mov	r2, sl
 8006b92:	e76e      	b.n	8006a72 <_realloc_r+0x1fa>
 8006b94:	4629      	mov	r1, r5
 8006b96:	4650      	mov	r0, sl
 8006b98:	9301      	str	r3, [sp, #4]
 8006b9a:	f7ff faf3 	bl	8006184 <memmove>
 8006b9e:	9b01      	ldr	r3, [sp, #4]
 8006ba0:	e76c      	b.n	8006a7c <_realloc_r+0x204>
 8006ba2:	f8cb 1010 	str.w	r1, [fp, #16]
 8006ba6:	68e9      	ldr	r1, [r5, #12]
 8006ba8:	f8cb 1014 	str.w	r1, [fp, #20]
 8006bac:	2a24      	cmp	r2, #36	; 0x24
 8006bae:	d004      	beq.n	8006bba <_realloc_r+0x342>
 8006bb0:	6929      	ldr	r1, [r5, #16]
 8006bb2:	f10b 0218 	add.w	r2, fp, #24
 8006bb6:	3510      	adds	r5, #16
 8006bb8:	e75b      	b.n	8006a72 <_realloc_r+0x1fa>
 8006bba:	692a      	ldr	r2, [r5, #16]
 8006bbc:	f8cb 2018 	str.w	r2, [fp, #24]
 8006bc0:	696a      	ldr	r2, [r5, #20]
 8006bc2:	f8cb 201c 	str.w	r2, [fp, #28]
 8006bc6:	69a9      	ldr	r1, [r5, #24]
 8006bc8:	f10b 0220 	add.w	r2, fp, #32
 8006bcc:	3518      	adds	r5, #24
 8006bce:	e750      	b.n	8006a72 <_realloc_r+0x1fa>
 8006bd0:	2000044c 	.word	0x2000044c

08006bd4 <frexp>:
 8006bd4:	ec53 2b10 	vmov	r2, r3, d0
 8006bd8:	b570      	push	{r4, r5, r6, lr}
 8006bda:	4e16      	ldr	r6, [pc, #88]	; (8006c34 <frexp+0x60>)
 8006bdc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006be0:	2500      	movs	r5, #0
 8006be2:	42b1      	cmp	r1, r6
 8006be4:	4604      	mov	r4, r0
 8006be6:	6005      	str	r5, [r0, #0]
 8006be8:	dc21      	bgt.n	8006c2e <frexp+0x5a>
 8006bea:	ee10 6a10 	vmov	r6, s0
 8006bee:	430e      	orrs	r6, r1
 8006bf0:	d01d      	beq.n	8006c2e <frexp+0x5a>
 8006bf2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006bf6:	4618      	mov	r0, r3
 8006bf8:	da0c      	bge.n	8006c14 <frexp+0x40>
 8006bfa:	4619      	mov	r1, r3
 8006bfc:	2200      	movs	r2, #0
 8006bfe:	ee10 0a10 	vmov	r0, s0
 8006c02:	4b0d      	ldr	r3, [pc, #52]	; (8006c38 <frexp+0x64>)
 8006c04:	f7f9 ff98 	bl	8000b38 <__aeabi_dmul>
 8006c08:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006c0c:	4602      	mov	r2, r0
 8006c0e:	4608      	mov	r0, r1
 8006c10:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006c14:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006c18:	1509      	asrs	r1, r1, #20
 8006c1a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006c1e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006c22:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006c26:	4429      	add	r1, r5
 8006c28:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006c2c:	6021      	str	r1, [r4, #0]
 8006c2e:	ec43 2b10 	vmov	d0, r2, r3
 8006c32:	bd70      	pop	{r4, r5, r6, pc}
 8006c34:	7fefffff 	.word	0x7fefffff
 8006c38:	43500000 	.word	0x43500000

08006c3c <_sbrk_r>:
 8006c3c:	b538      	push	{r3, r4, r5, lr}
 8006c3e:	4c07      	ldr	r4, [pc, #28]	; (8006c5c <_sbrk_r+0x20>)
 8006c40:	2300      	movs	r3, #0
 8006c42:	4605      	mov	r5, r0
 8006c44:	4608      	mov	r0, r1
 8006c46:	6023      	str	r3, [r4, #0]
 8006c48:	f7fb fc2a 	bl	80024a0 <_sbrk>
 8006c4c:	1c43      	adds	r3, r0, #1
 8006c4e:	d000      	beq.n	8006c52 <_sbrk_r+0x16>
 8006c50:	bd38      	pop	{r3, r4, r5, pc}
 8006c52:	6823      	ldr	r3, [r4, #0]
 8006c54:	2b00      	cmp	r3, #0
 8006c56:	d0fb      	beq.n	8006c50 <_sbrk_r+0x14>
 8006c58:	602b      	str	r3, [r5, #0]
 8006c5a:	bd38      	pop	{r3, r4, r5, pc}
 8006c5c:	20000b0c 	.word	0x20000b0c

08006c60 <__sread>:
 8006c60:	b510      	push	{r4, lr}
 8006c62:	460c      	mov	r4, r1
 8006c64:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c68:	f000 fabc 	bl	80071e4 <_read_r>
 8006c6c:	2800      	cmp	r0, #0
 8006c6e:	db03      	blt.n	8006c78 <__sread+0x18>
 8006c70:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006c72:	4403      	add	r3, r0
 8006c74:	6523      	str	r3, [r4, #80]	; 0x50
 8006c76:	bd10      	pop	{r4, pc}
 8006c78:	89a3      	ldrh	r3, [r4, #12]
 8006c7a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006c7e:	81a3      	strh	r3, [r4, #12]
 8006c80:	bd10      	pop	{r4, pc}
 8006c82:	bf00      	nop

08006c84 <__swrite>:
 8006c84:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006c88:	4616      	mov	r6, r2
 8006c8a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006c8e:	461f      	mov	r7, r3
 8006c90:	05d3      	lsls	r3, r2, #23
 8006c92:	460c      	mov	r4, r1
 8006c94:	4605      	mov	r5, r0
 8006c96:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c9a:	d507      	bpl.n	8006cac <__swrite+0x28>
 8006c9c:	2200      	movs	r2, #0
 8006c9e:	2302      	movs	r3, #2
 8006ca0:	f000 fa74 	bl	800718c <_lseek_r>
 8006ca4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ca8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006cac:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006cb0:	81a2      	strh	r2, [r4, #12]
 8006cb2:	463b      	mov	r3, r7
 8006cb4:	4632      	mov	r2, r6
 8006cb6:	4628      	mov	r0, r5
 8006cb8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006cbc:	f000 b88c 	b.w	8006dd8 <_write_r>

08006cc0 <__sseek>:
 8006cc0:	b510      	push	{r4, lr}
 8006cc2:	460c      	mov	r4, r1
 8006cc4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006cc8:	f000 fa60 	bl	800718c <_lseek_r>
 8006ccc:	89a3      	ldrh	r3, [r4, #12]
 8006cce:	1c42      	adds	r2, r0, #1
 8006cd0:	bf0e      	itee	eq
 8006cd2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006cd6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006cda:	6520      	strne	r0, [r4, #80]	; 0x50
 8006cdc:	81a3      	strh	r3, [r4, #12]
 8006cde:	bd10      	pop	{r4, pc}

08006ce0 <__sclose>:
 8006ce0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ce4:	f000 b922 	b.w	8006f2c <_close_r>

08006ce8 <strncpy>:
 8006ce8:	ea40 0301 	orr.w	r3, r0, r1
 8006cec:	079b      	lsls	r3, r3, #30
 8006cee:	b470      	push	{r4, r5, r6}
 8006cf0:	d12a      	bne.n	8006d48 <strncpy+0x60>
 8006cf2:	2a03      	cmp	r2, #3
 8006cf4:	d928      	bls.n	8006d48 <strncpy+0x60>
 8006cf6:	460c      	mov	r4, r1
 8006cf8:	4603      	mov	r3, r0
 8006cfa:	4621      	mov	r1, r4
 8006cfc:	f854 6b04 	ldr.w	r6, [r4], #4
 8006d00:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006d04:	ea25 0506 	bic.w	r5, r5, r6
 8006d08:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006d0c:	d106      	bne.n	8006d1c <strncpy+0x34>
 8006d0e:	3a04      	subs	r2, #4
 8006d10:	2a03      	cmp	r2, #3
 8006d12:	f843 6b04 	str.w	r6, [r3], #4
 8006d16:	4621      	mov	r1, r4
 8006d18:	d8ef      	bhi.n	8006cfa <strncpy+0x12>
 8006d1a:	b19a      	cbz	r2, 8006d44 <strncpy+0x5c>
 8006d1c:	780c      	ldrb	r4, [r1, #0]
 8006d1e:	701c      	strb	r4, [r3, #0]
 8006d20:	3a01      	subs	r2, #1
 8006d22:	3301      	adds	r3, #1
 8006d24:	b13c      	cbz	r4, 8006d36 <strncpy+0x4e>
 8006d26:	b16a      	cbz	r2, 8006d44 <strncpy+0x5c>
 8006d28:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006d2c:	f803 4b01 	strb.w	r4, [r3], #1
 8006d30:	3a01      	subs	r2, #1
 8006d32:	2c00      	cmp	r4, #0
 8006d34:	d1f7      	bne.n	8006d26 <strncpy+0x3e>
 8006d36:	b12a      	cbz	r2, 8006d44 <strncpy+0x5c>
 8006d38:	441a      	add	r2, r3
 8006d3a:	2100      	movs	r1, #0
 8006d3c:	f803 1b01 	strb.w	r1, [r3], #1
 8006d40:	4293      	cmp	r3, r2
 8006d42:	d1fb      	bne.n	8006d3c <strncpy+0x54>
 8006d44:	bc70      	pop	{r4, r5, r6}
 8006d46:	4770      	bx	lr
 8006d48:	4603      	mov	r3, r0
 8006d4a:	e7e6      	b.n	8006d1a <strncpy+0x32>

08006d4c <__sprint_r.part.0>:
 8006d4c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006d50:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006d52:	049c      	lsls	r4, r3, #18
 8006d54:	4692      	mov	sl, r2
 8006d56:	d52d      	bpl.n	8006db4 <__sprint_r.part.0+0x68>
 8006d58:	6893      	ldr	r3, [r2, #8]
 8006d5a:	6812      	ldr	r2, [r2, #0]
 8006d5c:	b343      	cbz	r3, 8006db0 <__sprint_r.part.0+0x64>
 8006d5e:	460e      	mov	r6, r1
 8006d60:	4607      	mov	r7, r0
 8006d62:	f102 0908 	add.w	r9, r2, #8
 8006d66:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006d6a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006d6e:	d015      	beq.n	8006d9c <__sprint_r.part.0+0x50>
 8006d70:	3d04      	subs	r5, #4
 8006d72:	2400      	movs	r4, #0
 8006d74:	e001      	b.n	8006d7a <__sprint_r.part.0+0x2e>
 8006d76:	45a0      	cmp	r8, r4
 8006d78:	d00e      	beq.n	8006d98 <__sprint_r.part.0+0x4c>
 8006d7a:	4632      	mov	r2, r6
 8006d7c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006d80:	4638      	mov	r0, r7
 8006d82:	f000 f99d 	bl	80070c0 <_fputwc_r>
 8006d86:	1c43      	adds	r3, r0, #1
 8006d88:	f104 0401 	add.w	r4, r4, #1
 8006d8c:	d1f3      	bne.n	8006d76 <__sprint_r.part.0+0x2a>
 8006d8e:	2300      	movs	r3, #0
 8006d90:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006d94:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d98:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006d9c:	f02b 0b03 	bic.w	fp, fp, #3
 8006da0:	eba3 030b 	sub.w	r3, r3, fp
 8006da4:	f8ca 3008 	str.w	r3, [sl, #8]
 8006da8:	f109 0908 	add.w	r9, r9, #8
 8006dac:	2b00      	cmp	r3, #0
 8006dae:	d1da      	bne.n	8006d66 <__sprint_r.part.0+0x1a>
 8006db0:	2000      	movs	r0, #0
 8006db2:	e7ec      	b.n	8006d8e <__sprint_r.part.0+0x42>
 8006db4:	f7fe fd0c 	bl	80057d0 <__sfvwrite_r>
 8006db8:	2300      	movs	r3, #0
 8006dba:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006dbe:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006dc2:	bf00      	nop

08006dc4 <__sprint_r>:
 8006dc4:	6893      	ldr	r3, [r2, #8]
 8006dc6:	b10b      	cbz	r3, 8006dcc <__sprint_r+0x8>
 8006dc8:	f7ff bfc0 	b.w	8006d4c <__sprint_r.part.0>
 8006dcc:	b410      	push	{r4}
 8006dce:	4618      	mov	r0, r3
 8006dd0:	6053      	str	r3, [r2, #4]
 8006dd2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006dd6:	4770      	bx	lr

08006dd8 <_write_r>:
 8006dd8:	b570      	push	{r4, r5, r6, lr}
 8006dda:	460d      	mov	r5, r1
 8006ddc:	4c08      	ldr	r4, [pc, #32]	; (8006e00 <_write_r+0x28>)
 8006dde:	4611      	mov	r1, r2
 8006de0:	4606      	mov	r6, r0
 8006de2:	461a      	mov	r2, r3
 8006de4:	4628      	mov	r0, r5
 8006de6:	2300      	movs	r3, #0
 8006de8:	6023      	str	r3, [r4, #0]
 8006dea:	f7fb fb3b 	bl	8002464 <_write>
 8006dee:	1c43      	adds	r3, r0, #1
 8006df0:	d000      	beq.n	8006df4 <_write_r+0x1c>
 8006df2:	bd70      	pop	{r4, r5, r6, pc}
 8006df4:	6823      	ldr	r3, [r4, #0]
 8006df6:	2b00      	cmp	r3, #0
 8006df8:	d0fb      	beq.n	8006df2 <_write_r+0x1a>
 8006dfa:	6033      	str	r3, [r6, #0]
 8006dfc:	bd70      	pop	{r4, r5, r6, pc}
 8006dfe:	bf00      	nop
 8006e00:	20000b0c 	.word	0x20000b0c

08006e04 <__register_exitproc>:
 8006e04:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006e08:	4d2b      	ldr	r5, [pc, #172]	; (8006eb8 <__register_exitproc+0xb4>)
 8006e0a:	4606      	mov	r6, r0
 8006e0c:	6828      	ldr	r0, [r5, #0]
 8006e0e:	4698      	mov	r8, r3
 8006e10:	460f      	mov	r7, r1
 8006e12:	4691      	mov	r9, r2
 8006e14:	f7fe fe96 	bl	8005b44 <__retarget_lock_acquire_recursive>
 8006e18:	4b28      	ldr	r3, [pc, #160]	; (8006ebc <__register_exitproc+0xb8>)
 8006e1a:	681c      	ldr	r4, [r3, #0]
 8006e1c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006e20:	2b00      	cmp	r3, #0
 8006e22:	d03d      	beq.n	8006ea0 <__register_exitproc+0x9c>
 8006e24:	685a      	ldr	r2, [r3, #4]
 8006e26:	2a1f      	cmp	r2, #31
 8006e28:	dc0d      	bgt.n	8006e46 <__register_exitproc+0x42>
 8006e2a:	f102 0c01 	add.w	ip, r2, #1
 8006e2e:	bb16      	cbnz	r6, 8006e76 <__register_exitproc+0x72>
 8006e30:	3202      	adds	r2, #2
 8006e32:	f8c3 c004 	str.w	ip, [r3, #4]
 8006e36:	6828      	ldr	r0, [r5, #0]
 8006e38:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006e3c:	f7fe fe84 	bl	8005b48 <__retarget_lock_release_recursive>
 8006e40:	2000      	movs	r0, #0
 8006e42:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006e46:	4b1e      	ldr	r3, [pc, #120]	; (8006ec0 <__register_exitproc+0xbc>)
 8006e48:	b37b      	cbz	r3, 8006eaa <__register_exitproc+0xa6>
 8006e4a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006e4e:	f3af 8000 	nop.w
 8006e52:	4603      	mov	r3, r0
 8006e54:	b348      	cbz	r0, 8006eaa <__register_exitproc+0xa6>
 8006e56:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006e5a:	2100      	movs	r1, #0
 8006e5c:	e9c0 2100 	strd	r2, r1, [r0]
 8006e60:	f04f 0c01 	mov.w	ip, #1
 8006e64:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006e68:	460a      	mov	r2, r1
 8006e6a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006e6e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006e72:	2e00      	cmp	r6, #0
 8006e74:	d0dc      	beq.n	8006e30 <__register_exitproc+0x2c>
 8006e76:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006e7a:	2401      	movs	r4, #1
 8006e7c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006e80:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006e84:	4094      	lsls	r4, r2
 8006e86:	4320      	orrs	r0, r4
 8006e88:	2e02      	cmp	r6, #2
 8006e8a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006e8e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006e92:	d1cd      	bne.n	8006e30 <__register_exitproc+0x2c>
 8006e94:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006e98:	430c      	orrs	r4, r1
 8006e9a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006e9e:	e7c7      	b.n	8006e30 <__register_exitproc+0x2c>
 8006ea0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006ea4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006ea8:	e7bc      	b.n	8006e24 <__register_exitproc+0x20>
 8006eaa:	6828      	ldr	r0, [r5, #0]
 8006eac:	f7fe fe4c 	bl	8005b48 <__retarget_lock_release_recursive>
 8006eb0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006eb4:	e7c5      	b.n	8006e42 <__register_exitproc+0x3e>
 8006eb6:	bf00      	nop
 8006eb8:	20000448 	.word	0x20000448
 8006ebc:	0800753c 	.word	0x0800753c
 8006ec0:	00000000 	.word	0x00000000

08006ec4 <_calloc_r>:
 8006ec4:	b510      	push	{r4, lr}
 8006ec6:	fb02 f101 	mul.w	r1, r2, r1
 8006eca:	f7fe feb7 	bl	8005c3c <_malloc_r>
 8006ece:	4604      	mov	r4, r0
 8006ed0:	b1d8      	cbz	r0, 8006f0a <_calloc_r+0x46>
 8006ed2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006ed6:	f022 0203 	bic.w	r2, r2, #3
 8006eda:	3a04      	subs	r2, #4
 8006edc:	2a24      	cmp	r2, #36	; 0x24
 8006ede:	d81d      	bhi.n	8006f1c <_calloc_r+0x58>
 8006ee0:	2a13      	cmp	r2, #19
 8006ee2:	d914      	bls.n	8006f0e <_calloc_r+0x4a>
 8006ee4:	2300      	movs	r3, #0
 8006ee6:	2a1b      	cmp	r2, #27
 8006ee8:	e9c0 3300 	strd	r3, r3, [r0]
 8006eec:	d91b      	bls.n	8006f26 <_calloc_r+0x62>
 8006eee:	2a24      	cmp	r2, #36	; 0x24
 8006ef0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006ef4:	bf0a      	itet	eq
 8006ef6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006efa:	f100 0210 	addne.w	r2, r0, #16
 8006efe:	f100 0218 	addeq.w	r2, r0, #24
 8006f02:	2300      	movs	r3, #0
 8006f04:	e9c2 3300 	strd	r3, r3, [r2]
 8006f08:	6093      	str	r3, [r2, #8]
 8006f0a:	4620      	mov	r0, r4
 8006f0c:	bd10      	pop	{r4, pc}
 8006f0e:	4602      	mov	r2, r0
 8006f10:	2300      	movs	r3, #0
 8006f12:	e9c2 3300 	strd	r3, r3, [r2]
 8006f16:	6093      	str	r3, [r2, #8]
 8006f18:	4620      	mov	r0, r4
 8006f1a:	bd10      	pop	{r4, pc}
 8006f1c:	2100      	movs	r1, #0
 8006f1e:	f7fb fb6d 	bl	80025fc <memset>
 8006f22:	4620      	mov	r0, r4
 8006f24:	bd10      	pop	{r4, pc}
 8006f26:	f100 0208 	add.w	r2, r0, #8
 8006f2a:	e7f1      	b.n	8006f10 <_calloc_r+0x4c>

08006f2c <_close_r>:
 8006f2c:	b538      	push	{r3, r4, r5, lr}
 8006f2e:	4c07      	ldr	r4, [pc, #28]	; (8006f4c <_close_r+0x20>)
 8006f30:	2300      	movs	r3, #0
 8006f32:	4605      	mov	r5, r0
 8006f34:	4608      	mov	r0, r1
 8006f36:	6023      	str	r3, [r4, #0]
 8006f38:	f7fb fad5 	bl	80024e6 <_close>
 8006f3c:	1c43      	adds	r3, r0, #1
 8006f3e:	d000      	beq.n	8006f42 <_close_r+0x16>
 8006f40:	bd38      	pop	{r3, r4, r5, pc}
 8006f42:	6823      	ldr	r3, [r4, #0]
 8006f44:	2b00      	cmp	r3, #0
 8006f46:	d0fb      	beq.n	8006f40 <_close_r+0x14>
 8006f48:	602b      	str	r3, [r5, #0]
 8006f4a:	bd38      	pop	{r3, r4, r5, pc}
 8006f4c:	20000b0c 	.word	0x20000b0c

08006f50 <_fclose_r>:
 8006f50:	b570      	push	{r4, r5, r6, lr}
 8006f52:	2900      	cmp	r1, #0
 8006f54:	d048      	beq.n	8006fe8 <_fclose_r+0x98>
 8006f56:	4605      	mov	r5, r0
 8006f58:	460c      	mov	r4, r1
 8006f5a:	b110      	cbz	r0, 8006f62 <_fclose_r+0x12>
 8006f5c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f5e:	2b00      	cmp	r3, #0
 8006f60:	d048      	beq.n	8006ff4 <_fclose_r+0xa4>
 8006f62:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f64:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f68:	07d0      	lsls	r0, r2, #31
 8006f6a:	d440      	bmi.n	8006fee <_fclose_r+0x9e>
 8006f6c:	0599      	lsls	r1, r3, #22
 8006f6e:	d530      	bpl.n	8006fd2 <_fclose_r+0x82>
 8006f70:	4621      	mov	r1, r4
 8006f72:	4628      	mov	r0, r5
 8006f74:	f7fe f990 	bl	8005298 <__sflush_r>
 8006f78:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006f7a:	4606      	mov	r6, r0
 8006f7c:	b133      	cbz	r3, 8006f8c <_fclose_r+0x3c>
 8006f7e:	69e1      	ldr	r1, [r4, #28]
 8006f80:	4628      	mov	r0, r5
 8006f82:	4798      	blx	r3
 8006f84:	2800      	cmp	r0, #0
 8006f86:	bfb8      	it	lt
 8006f88:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006f8c:	89a3      	ldrh	r3, [r4, #12]
 8006f8e:	061a      	lsls	r2, r3, #24
 8006f90:	d43c      	bmi.n	800700c <_fclose_r+0xbc>
 8006f92:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006f94:	b141      	cbz	r1, 8006fa8 <_fclose_r+0x58>
 8006f96:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006f9a:	4299      	cmp	r1, r3
 8006f9c:	d002      	beq.n	8006fa4 <_fclose_r+0x54>
 8006f9e:	4628      	mov	r0, r5
 8006fa0:	f7fe fb22 	bl	80055e8 <_free_r>
 8006fa4:	2300      	movs	r3, #0
 8006fa6:	6323      	str	r3, [r4, #48]	; 0x30
 8006fa8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006faa:	b121      	cbz	r1, 8006fb6 <_fclose_r+0x66>
 8006fac:	4628      	mov	r0, r5
 8006fae:	f7fe fb1b 	bl	80055e8 <_free_r>
 8006fb2:	2300      	movs	r3, #0
 8006fb4:	6463      	str	r3, [r4, #68]	; 0x44
 8006fb6:	f7fe faa1 	bl	80054fc <__sfp_lock_acquire>
 8006fba:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006fbc:	2200      	movs	r2, #0
 8006fbe:	07db      	lsls	r3, r3, #31
 8006fc0:	81a2      	strh	r2, [r4, #12]
 8006fc2:	d51f      	bpl.n	8007004 <_fclose_r+0xb4>
 8006fc4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fc6:	f7fe fdbb 	bl	8005b40 <__retarget_lock_close_recursive>
 8006fca:	f7fe fa9d 	bl	8005508 <__sfp_lock_release>
 8006fce:	4630      	mov	r0, r6
 8006fd0:	bd70      	pop	{r4, r5, r6, pc}
 8006fd2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fd4:	f7fe fdb6 	bl	8005b44 <__retarget_lock_acquire_recursive>
 8006fd8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006fdc:	2b00      	cmp	r3, #0
 8006fde:	d1c7      	bne.n	8006f70 <_fclose_r+0x20>
 8006fe0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006fe2:	f016 0601 	ands.w	r6, r6, #1
 8006fe6:	d016      	beq.n	8007016 <_fclose_r+0xc6>
 8006fe8:	2600      	movs	r6, #0
 8006fea:	4630      	mov	r0, r6
 8006fec:	bd70      	pop	{r4, r5, r6, pc}
 8006fee:	2b00      	cmp	r3, #0
 8006ff0:	d0fa      	beq.n	8006fe8 <_fclose_r+0x98>
 8006ff2:	e7bd      	b.n	8006f70 <_fclose_r+0x20>
 8006ff4:	f7fe fa56 	bl	80054a4 <__sinit>
 8006ff8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006ffa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ffe:	07d0      	lsls	r0, r2, #31
 8007000:	d4f5      	bmi.n	8006fee <_fclose_r+0x9e>
 8007002:	e7b3      	b.n	8006f6c <_fclose_r+0x1c>
 8007004:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007006:	f7fe fd9f 	bl	8005b48 <__retarget_lock_release_recursive>
 800700a:	e7db      	b.n	8006fc4 <_fclose_r+0x74>
 800700c:	6921      	ldr	r1, [r4, #16]
 800700e:	4628      	mov	r0, r5
 8007010:	f7fe faea 	bl	80055e8 <_free_r>
 8007014:	e7bd      	b.n	8006f92 <_fclose_r+0x42>
 8007016:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007018:	f7fe fd96 	bl	8005b48 <__retarget_lock_release_recursive>
 800701c:	4630      	mov	r0, r6
 800701e:	bd70      	pop	{r4, r5, r6, pc}

08007020 <__fputwc>:
 8007020:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007024:	b082      	sub	sp, #8
 8007026:	4681      	mov	r9, r0
 8007028:	4688      	mov	r8, r1
 800702a:	4614      	mov	r4, r2
 800702c:	f000 f8a0 	bl	8007170 <__locale_mb_cur_max>
 8007030:	2801      	cmp	r0, #1
 8007032:	d103      	bne.n	800703c <__fputwc+0x1c>
 8007034:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007038:	2bfe      	cmp	r3, #254	; 0xfe
 800703a:	d933      	bls.n	80070a4 <__fputwc+0x84>
 800703c:	4642      	mov	r2, r8
 800703e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007042:	a901      	add	r1, sp, #4
 8007044:	4648      	mov	r0, r9
 8007046:	f000 f93b 	bl	80072c0 <_wcrtomb_r>
 800704a:	1c42      	adds	r2, r0, #1
 800704c:	4606      	mov	r6, r0
 800704e:	d02f      	beq.n	80070b0 <__fputwc+0x90>
 8007050:	b320      	cbz	r0, 800709c <__fputwc+0x7c>
 8007052:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007056:	2500      	movs	r5, #0
 8007058:	f10d 0a04 	add.w	sl, sp, #4
 800705c:	e009      	b.n	8007072 <__fputwc+0x52>
 800705e:	6823      	ldr	r3, [r4, #0]
 8007060:	1c5a      	adds	r2, r3, #1
 8007062:	6022      	str	r2, [r4, #0]
 8007064:	f883 c000 	strb.w	ip, [r3]
 8007068:	3501      	adds	r5, #1
 800706a:	42b5      	cmp	r5, r6
 800706c:	d216      	bcs.n	800709c <__fputwc+0x7c>
 800706e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007072:	68a3      	ldr	r3, [r4, #8]
 8007074:	3b01      	subs	r3, #1
 8007076:	2b00      	cmp	r3, #0
 8007078:	60a3      	str	r3, [r4, #8]
 800707a:	daf0      	bge.n	800705e <__fputwc+0x3e>
 800707c:	69a7      	ldr	r7, [r4, #24]
 800707e:	42bb      	cmp	r3, r7
 8007080:	4661      	mov	r1, ip
 8007082:	4622      	mov	r2, r4
 8007084:	4648      	mov	r0, r9
 8007086:	db02      	blt.n	800708e <__fputwc+0x6e>
 8007088:	f1bc 0f0a 	cmp.w	ip, #10
 800708c:	d1e7      	bne.n	800705e <__fputwc+0x3e>
 800708e:	f000 f8bf 	bl	8007210 <__swbuf_r>
 8007092:	1c43      	adds	r3, r0, #1
 8007094:	d1e8      	bne.n	8007068 <__fputwc+0x48>
 8007096:	b002      	add	sp, #8
 8007098:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800709c:	4640      	mov	r0, r8
 800709e:	b002      	add	sp, #8
 80070a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80070a4:	fa5f fc88 	uxtb.w	ip, r8
 80070a8:	4606      	mov	r6, r0
 80070aa:	f88d c004 	strb.w	ip, [sp, #4]
 80070ae:	e7d2      	b.n	8007056 <__fputwc+0x36>
 80070b0:	89a3      	ldrh	r3, [r4, #12]
 80070b2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80070b6:	81a3      	strh	r3, [r4, #12]
 80070b8:	b002      	add	sp, #8
 80070ba:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80070be:	bf00      	nop

080070c0 <_fputwc_r>:
 80070c0:	b530      	push	{r4, r5, lr}
 80070c2:	4605      	mov	r5, r0
 80070c4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80070c6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80070ca:	07c0      	lsls	r0, r0, #31
 80070cc:	4614      	mov	r4, r2
 80070ce:	b083      	sub	sp, #12
 80070d0:	b29a      	uxth	r2, r3
 80070d2:	d401      	bmi.n	80070d8 <_fputwc_r+0x18>
 80070d4:	0590      	lsls	r0, r2, #22
 80070d6:	d51c      	bpl.n	8007112 <_fputwc_r+0x52>
 80070d8:	0490      	lsls	r0, r2, #18
 80070da:	d406      	bmi.n	80070ea <_fputwc_r+0x2a>
 80070dc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80070de:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80070e2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80070e6:	81a3      	strh	r3, [r4, #12]
 80070e8:	6662      	str	r2, [r4, #100]	; 0x64
 80070ea:	4628      	mov	r0, r5
 80070ec:	4622      	mov	r2, r4
 80070ee:	f7ff ff97 	bl	8007020 <__fputwc>
 80070f2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80070f4:	07da      	lsls	r2, r3, #31
 80070f6:	4605      	mov	r5, r0
 80070f8:	d402      	bmi.n	8007100 <_fputwc_r+0x40>
 80070fa:	89a3      	ldrh	r3, [r4, #12]
 80070fc:	059b      	lsls	r3, r3, #22
 80070fe:	d502      	bpl.n	8007106 <_fputwc_r+0x46>
 8007100:	4628      	mov	r0, r5
 8007102:	b003      	add	sp, #12
 8007104:	bd30      	pop	{r4, r5, pc}
 8007106:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007108:	f7fe fd1e 	bl	8005b48 <__retarget_lock_release_recursive>
 800710c:	4628      	mov	r0, r5
 800710e:	b003      	add	sp, #12
 8007110:	bd30      	pop	{r4, r5, pc}
 8007112:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007114:	9101      	str	r1, [sp, #4]
 8007116:	f7fe fd15 	bl	8005b44 <__retarget_lock_acquire_recursive>
 800711a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800711e:	9901      	ldr	r1, [sp, #4]
 8007120:	b29a      	uxth	r2, r3
 8007122:	e7d9      	b.n	80070d8 <_fputwc_r+0x18>

08007124 <_fstat_r>:
 8007124:	b538      	push	{r3, r4, r5, lr}
 8007126:	460b      	mov	r3, r1
 8007128:	4c07      	ldr	r4, [pc, #28]	; (8007148 <_fstat_r+0x24>)
 800712a:	4605      	mov	r5, r0
 800712c:	4611      	mov	r1, r2
 800712e:	4618      	mov	r0, r3
 8007130:	2300      	movs	r3, #0
 8007132:	6023      	str	r3, [r4, #0]
 8007134:	f7fb f9da 	bl	80024ec <_fstat>
 8007138:	1c43      	adds	r3, r0, #1
 800713a:	d000      	beq.n	800713e <_fstat_r+0x1a>
 800713c:	bd38      	pop	{r3, r4, r5, pc}
 800713e:	6823      	ldr	r3, [r4, #0]
 8007140:	2b00      	cmp	r3, #0
 8007142:	d0fb      	beq.n	800713c <_fstat_r+0x18>
 8007144:	602b      	str	r3, [r5, #0]
 8007146:	bd38      	pop	{r3, r4, r5, pc}
 8007148:	20000b0c 	.word	0x20000b0c

0800714c <_isatty_r>:
 800714c:	b538      	push	{r3, r4, r5, lr}
 800714e:	4c07      	ldr	r4, [pc, #28]	; (800716c <_isatty_r+0x20>)
 8007150:	2300      	movs	r3, #0
 8007152:	4605      	mov	r5, r0
 8007154:	4608      	mov	r0, r1
 8007156:	6023      	str	r3, [r4, #0]
 8007158:	f7fb f9ce 	bl	80024f8 <_isatty>
 800715c:	1c43      	adds	r3, r0, #1
 800715e:	d000      	beq.n	8007162 <_isatty_r+0x16>
 8007160:	bd38      	pop	{r3, r4, r5, pc}
 8007162:	6823      	ldr	r3, [r4, #0]
 8007164:	2b00      	cmp	r3, #0
 8007166:	d0fb      	beq.n	8007160 <_isatty_r+0x14>
 8007168:	602b      	str	r3, [r5, #0]
 800716a:	bd38      	pop	{r3, r4, r5, pc}
 800716c:	20000b0c 	.word	0x20000b0c

08007170 <__locale_mb_cur_max>:
 8007170:	4b04      	ldr	r3, [pc, #16]	; (8007184 <__locale_mb_cur_max+0x14>)
 8007172:	4a05      	ldr	r2, [pc, #20]	; (8007188 <__locale_mb_cur_max+0x18>)
 8007174:	681b      	ldr	r3, [r3, #0]
 8007176:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007178:	2b00      	cmp	r3, #0
 800717a:	bf08      	it	eq
 800717c:	4613      	moveq	r3, r2
 800717e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007182:	4770      	bx	lr
 8007184:	20000018 	.word	0x20000018
 8007188:	2000085c 	.word	0x2000085c

0800718c <_lseek_r>:
 800718c:	b570      	push	{r4, r5, r6, lr}
 800718e:	460d      	mov	r5, r1
 8007190:	4c08      	ldr	r4, [pc, #32]	; (80071b4 <_lseek_r+0x28>)
 8007192:	4611      	mov	r1, r2
 8007194:	4606      	mov	r6, r0
 8007196:	461a      	mov	r2, r3
 8007198:	4628      	mov	r0, r5
 800719a:	2300      	movs	r3, #0
 800719c:	6023      	str	r3, [r4, #0]
 800719e:	f7fb f9ad 	bl	80024fc <_lseek>
 80071a2:	1c43      	adds	r3, r0, #1
 80071a4:	d000      	beq.n	80071a8 <_lseek_r+0x1c>
 80071a6:	bd70      	pop	{r4, r5, r6, pc}
 80071a8:	6823      	ldr	r3, [r4, #0]
 80071aa:	2b00      	cmp	r3, #0
 80071ac:	d0fb      	beq.n	80071a6 <_lseek_r+0x1a>
 80071ae:	6033      	str	r3, [r6, #0]
 80071b0:	bd70      	pop	{r4, r5, r6, pc}
 80071b2:	bf00      	nop
 80071b4:	20000b0c 	.word	0x20000b0c

080071b8 <__ascii_mbtowc>:
 80071b8:	b082      	sub	sp, #8
 80071ba:	b149      	cbz	r1, 80071d0 <__ascii_mbtowc+0x18>
 80071bc:	b15a      	cbz	r2, 80071d6 <__ascii_mbtowc+0x1e>
 80071be:	b16b      	cbz	r3, 80071dc <__ascii_mbtowc+0x24>
 80071c0:	7813      	ldrb	r3, [r2, #0]
 80071c2:	600b      	str	r3, [r1, #0]
 80071c4:	7812      	ldrb	r2, [r2, #0]
 80071c6:	1c10      	adds	r0, r2, #0
 80071c8:	bf18      	it	ne
 80071ca:	2001      	movne	r0, #1
 80071cc:	b002      	add	sp, #8
 80071ce:	4770      	bx	lr
 80071d0:	a901      	add	r1, sp, #4
 80071d2:	2a00      	cmp	r2, #0
 80071d4:	d1f3      	bne.n	80071be <__ascii_mbtowc+0x6>
 80071d6:	4610      	mov	r0, r2
 80071d8:	b002      	add	sp, #8
 80071da:	4770      	bx	lr
 80071dc:	f06f 0001 	mvn.w	r0, #1
 80071e0:	e7f4      	b.n	80071cc <__ascii_mbtowc+0x14>
 80071e2:	bf00      	nop

080071e4 <_read_r>:
 80071e4:	b570      	push	{r4, r5, r6, lr}
 80071e6:	460d      	mov	r5, r1
 80071e8:	4c08      	ldr	r4, [pc, #32]	; (800720c <_read_r+0x28>)
 80071ea:	4611      	mov	r1, r2
 80071ec:	4606      	mov	r6, r0
 80071ee:	461a      	mov	r2, r3
 80071f0:	4628      	mov	r0, r5
 80071f2:	2300      	movs	r3, #0
 80071f4:	6023      	str	r3, [r4, #0]
 80071f6:	f7fb f915 	bl	8002424 <_read>
 80071fa:	1c43      	adds	r3, r0, #1
 80071fc:	d000      	beq.n	8007200 <_read_r+0x1c>
 80071fe:	bd70      	pop	{r4, r5, r6, pc}
 8007200:	6823      	ldr	r3, [r4, #0]
 8007202:	2b00      	cmp	r3, #0
 8007204:	d0fb      	beq.n	80071fe <_read_r+0x1a>
 8007206:	6033      	str	r3, [r6, #0]
 8007208:	bd70      	pop	{r4, r5, r6, pc}
 800720a:	bf00      	nop
 800720c:	20000b0c 	.word	0x20000b0c

08007210 <__swbuf_r>:
 8007210:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007212:	460d      	mov	r5, r1
 8007214:	4614      	mov	r4, r2
 8007216:	4606      	mov	r6, r0
 8007218:	b110      	cbz	r0, 8007220 <__swbuf_r+0x10>
 800721a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800721c:	2b00      	cmp	r3, #0
 800721e:	d043      	beq.n	80072a8 <__swbuf_r+0x98>
 8007220:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007224:	69a3      	ldr	r3, [r4, #24]
 8007226:	60a3      	str	r3, [r4, #8]
 8007228:	b291      	uxth	r1, r2
 800722a:	0708      	lsls	r0, r1, #28
 800722c:	d51b      	bpl.n	8007266 <__swbuf_r+0x56>
 800722e:	6923      	ldr	r3, [r4, #16]
 8007230:	b1cb      	cbz	r3, 8007266 <__swbuf_r+0x56>
 8007232:	b2ed      	uxtb	r5, r5
 8007234:	0489      	lsls	r1, r1, #18
 8007236:	462f      	mov	r7, r5
 8007238:	d522      	bpl.n	8007280 <__swbuf_r+0x70>
 800723a:	6822      	ldr	r2, [r4, #0]
 800723c:	6961      	ldr	r1, [r4, #20]
 800723e:	1ad3      	subs	r3, r2, r3
 8007240:	4299      	cmp	r1, r3
 8007242:	dd29      	ble.n	8007298 <__swbuf_r+0x88>
 8007244:	3301      	adds	r3, #1
 8007246:	68a1      	ldr	r1, [r4, #8]
 8007248:	1c50      	adds	r0, r2, #1
 800724a:	3901      	subs	r1, #1
 800724c:	60a1      	str	r1, [r4, #8]
 800724e:	6020      	str	r0, [r4, #0]
 8007250:	7015      	strb	r5, [r2, #0]
 8007252:	6962      	ldr	r2, [r4, #20]
 8007254:	429a      	cmp	r2, r3
 8007256:	d02a      	beq.n	80072ae <__swbuf_r+0x9e>
 8007258:	89a3      	ldrh	r3, [r4, #12]
 800725a:	07db      	lsls	r3, r3, #31
 800725c:	d501      	bpl.n	8007262 <__swbuf_r+0x52>
 800725e:	2d0a      	cmp	r5, #10
 8007260:	d025      	beq.n	80072ae <__swbuf_r+0x9e>
 8007262:	4638      	mov	r0, r7
 8007264:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007266:	4621      	mov	r1, r4
 8007268:	4630      	mov	r0, r6
 800726a:	f7fc fffd 	bl	8004268 <__swsetup_r>
 800726e:	bb20      	cbnz	r0, 80072ba <__swbuf_r+0xaa>
 8007270:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007274:	6923      	ldr	r3, [r4, #16]
 8007276:	b291      	uxth	r1, r2
 8007278:	b2ed      	uxtb	r5, r5
 800727a:	0489      	lsls	r1, r1, #18
 800727c:	462f      	mov	r7, r5
 800727e:	d4dc      	bmi.n	800723a <__swbuf_r+0x2a>
 8007280:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007282:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007286:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800728a:	81a2      	strh	r2, [r4, #12]
 800728c:	6822      	ldr	r2, [r4, #0]
 800728e:	6661      	str	r1, [r4, #100]	; 0x64
 8007290:	6961      	ldr	r1, [r4, #20]
 8007292:	1ad3      	subs	r3, r2, r3
 8007294:	4299      	cmp	r1, r3
 8007296:	dcd5      	bgt.n	8007244 <__swbuf_r+0x34>
 8007298:	4621      	mov	r1, r4
 800729a:	4630      	mov	r0, r6
 800729c:	f7fe f8a6 	bl	80053ec <_fflush_r>
 80072a0:	b958      	cbnz	r0, 80072ba <__swbuf_r+0xaa>
 80072a2:	6822      	ldr	r2, [r4, #0]
 80072a4:	2301      	movs	r3, #1
 80072a6:	e7ce      	b.n	8007246 <__swbuf_r+0x36>
 80072a8:	f7fe f8fc 	bl	80054a4 <__sinit>
 80072ac:	e7b8      	b.n	8007220 <__swbuf_r+0x10>
 80072ae:	4621      	mov	r1, r4
 80072b0:	4630      	mov	r0, r6
 80072b2:	f7fe f89b 	bl	80053ec <_fflush_r>
 80072b6:	2800      	cmp	r0, #0
 80072b8:	d0d3      	beq.n	8007262 <__swbuf_r+0x52>
 80072ba:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80072be:	e7d0      	b.n	8007262 <__swbuf_r+0x52>

080072c0 <_wcrtomb_r>:
 80072c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80072c2:	4c11      	ldr	r4, [pc, #68]	; (8007308 <_wcrtomb_r+0x48>)
 80072c4:	6824      	ldr	r4, [r4, #0]
 80072c6:	b085      	sub	sp, #20
 80072c8:	4606      	mov	r6, r0
 80072ca:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80072cc:	461f      	mov	r7, r3
 80072ce:	b151      	cbz	r1, 80072e6 <_wcrtomb_r+0x26>
 80072d0:	4d0e      	ldr	r5, [pc, #56]	; (800730c <_wcrtomb_r+0x4c>)
 80072d2:	2c00      	cmp	r4, #0
 80072d4:	bf08      	it	eq
 80072d6:	462c      	moveq	r4, r5
 80072d8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80072dc:	47a0      	blx	r4
 80072de:	1c43      	adds	r3, r0, #1
 80072e0:	d00c      	beq.n	80072fc <_wcrtomb_r+0x3c>
 80072e2:	b005      	add	sp, #20
 80072e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80072e6:	4a09      	ldr	r2, [pc, #36]	; (800730c <_wcrtomb_r+0x4c>)
 80072e8:	2c00      	cmp	r4, #0
 80072ea:	bf08      	it	eq
 80072ec:	4614      	moveq	r4, r2
 80072ee:	460a      	mov	r2, r1
 80072f0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80072f4:	a901      	add	r1, sp, #4
 80072f6:	47a0      	blx	r4
 80072f8:	1c43      	adds	r3, r0, #1
 80072fa:	d1f2      	bne.n	80072e2 <_wcrtomb_r+0x22>
 80072fc:	2200      	movs	r2, #0
 80072fe:	238a      	movs	r3, #138	; 0x8a
 8007300:	603a      	str	r2, [r7, #0]
 8007302:	6033      	str	r3, [r6, #0]
 8007304:	b005      	add	sp, #20
 8007306:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007308:	20000018 	.word	0x20000018
 800730c:	2000085c 	.word	0x2000085c

08007310 <__ascii_wctomb>:
 8007310:	b121      	cbz	r1, 800731c <__ascii_wctomb+0xc>
 8007312:	2aff      	cmp	r2, #255	; 0xff
 8007314:	d804      	bhi.n	8007320 <__ascii_wctomb+0x10>
 8007316:	700a      	strb	r2, [r1, #0]
 8007318:	2001      	movs	r0, #1
 800731a:	4770      	bx	lr
 800731c:	4608      	mov	r0, r1
 800731e:	4770      	bx	lr
 8007320:	238a      	movs	r3, #138	; 0x8a
 8007322:	6003      	str	r3, [r0, #0]
 8007324:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007328:	4770      	bx	lr
 800732a:	bf00      	nop

0800732c <_init>:
 800732c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800732e:	bf00      	nop
 8007330:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007332:	bc08      	pop	{r3}
 8007334:	469e      	mov	lr, r3
 8007336:	4770      	bx	lr

08007338 <_fini>:
 8007338:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800733a:	bf00      	nop
 800733c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800733e:	bc08      	pop	{r3}
 8007340:	469e      	mov	lr, r3
 8007342:	4770      	bx	lr
 8007344:	0000      	movs	r0, r0
	...
