
aha-mont64.elf:     file format elf32-littlearm


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
 80001e0:	0800750c 	.word	0x0800750c

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
 80001fc:	0800750c 	.word	0x0800750c

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
 8001108:	f640 20b8 	movw	r0, #2744	; 0xab8
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20b8 	movw	r0, #2744	; 0xab8
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
 80013e8:	f247 5240 	movw	r2, #30016	; 0x7540
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
 8001462:	f247 5238 	movw	r2, #30008	; 0x7538
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
 800148c:	f247 5238 	movw	r2, #30008	; 0x7538
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
 8001842:	f640 21bc 	movw	r1, #2748	; 0xabc
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
 800188c:	f640 20bc 	movw	r0, #2748	; 0xabc
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20bc 	movw	r0, #2748	; 0xabc
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
 80019d4:	f247 5370 	movw	r3, #30064	; 0x7570
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
 80019fc:	f247 5380 	movw	r3, #30080	; 0x7580
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

08001eb6 <__io_putchar>:
 8001eb6:	b580      	push	{r7, lr}
 8001eb8:	466f      	mov	r7, sp
 8001eba:	b082      	sub	sp, #8
 8001ebc:	9001      	str	r0, [sp, #4]
 8001ebe:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001ec2:	a901      	add	r1, sp, #4
 8001ec4:	2201      	movs	r2, #1
 8001ec6:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001eca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ece:	f7ff ff04 	bl	8001cda <HAL_UART_Transmit>
 8001ed2:	9801      	ldr	r0, [sp, #4]
 8001ed4:	b002      	add	sp, #8
 8001ed6:	bd80      	pop	{r7, pc}

08001ed8 <main>:
 8001ed8:	b5b0      	push	{r4, r5, r7, lr}
 8001eda:	af02      	add	r7, sp, #8
 8001edc:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8001ee0:	f643 0000 	movw	r0, #14336	; 0x3800
 8001ee4:	220c      	movs	r2, #12
 8001ee6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001eea:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001eee:	6008      	str	r0, [r1, #0]
 8001ef0:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001ef4:	6048      	str	r0, [r1, #4]
 8001ef6:	2000      	movs	r0, #0
 8001ef8:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001efc:	6108      	str	r0, [r1, #16]
 8001efe:	6248      	str	r0, [r1, #36]	; 0x24
 8001f00:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f04:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f08:	2000      	movs	r0, #0
 8001f0a:	f7ff ff7b 	bl	8001e04 <BSP_COM_Init>
 8001f0e:	f000 fb7b 	bl	8002608 <initialise_benchmark>
 8001f12:	f247 5090 	movw	r0, #30096	; 0x7590
 8001f16:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f1a:	f000 fca9 	bl	8002870 <printf>
 8001f1e:	f247 603d 	movw	r0, #30269	; 0x763d
 8001f22:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f26:	f000 fd05 	bl	8002934 <puts>
 8001f2a:	f7ff f8dd 	bl	80010e8 <HAL_Init>
 8001f2e:	f7ff f8f3 	bl	8001118 <HAL_GetTick>
 8001f32:	4604      	mov	r4, r0
 8001f34:	f000 f81e 	bl	8001f74 <benchmark>
 8001f38:	4605      	mov	r5, r0
 8001f3a:	f7ff f8ed 	bl	8001118 <HAL_GetTick>
 8001f3e:	1b04      	subs	r4, r0, r4
 8001f40:	4628      	mov	r0, r5
 8001f42:	f000 fb72 	bl	800262a <verify_benchmark>
 8001f46:	1c41      	adds	r1, r0, #1
 8001f48:	d006      	beq.n	8001f58 <main+0x80>
 8001f4a:	2801      	cmp	r0, #1
 8001f4c:	d109      	bne.n	8001f62 <main+0x8a>
 8001f4e:	f247 50a9 	movw	r0, #30121	; 0x75a9
 8001f52:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f56:	e008      	b.n	8001f6a <main+0x92>
 8001f58:	f247 50cd 	movw	r0, #30157	; 0x75cd
 8001f5c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f60:	e003      	b.n	8001f6a <main+0x92>
 8001f62:	f247 6002 	movw	r0, #30210	; 0x7602
 8001f66:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f6a:	4621      	mov	r1, r4
 8001f6c:	f000 fc80 	bl	8002870 <printf>
 8001f70:	2000      	movs	r0, #0
 8001f72:	bdb0      	pop	{r4, r5, r7, pc}

08001f74 <benchmark>:
 8001f74:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f76:	af03      	add	r7, sp, #12
 8001f78:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f7c:	b08f      	sub	sp, #60	; 0x3c
 8001f7e:	f640 2070 	movw	r0, #2672	; 0xa70
 8001f82:	2200      	movs	r2, #0
 8001f84:	f04f 0a00 	mov.w	sl, #0
 8001f88:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f8c:	7806      	ldrb	r6, [r0, #0]
 8001f8e:	f640 2078 	movw	r0, #2680	; 0xa78
 8001f92:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f96:	2e00      	cmp	r6, #0
 8001f98:	4631      	mov	r1, r6
 8001f9a:	bf1c      	itt	ne
 8001f9c:	f240 5173 	movwne	r1, #1395	; 0x573
 8001fa0:	f6cb 1133 	movtne	r1, #47411	; 0xb933
 8001fa4:	7805      	ldrb	r5, [r0, #0]
 8001fa6:	2d00      	cmp	r5, #0
 8001fa8:	462b      	mov	r3, r5
 8001faa:	bf1c      	itt	ne
 8001fac:	f647 73ef 	movwne	r3, #32751	; 0x7fef
 8001fb0:	f2c8 7323 	movtne	r3, #34595	; 0x8723
 8001fb4:	bf1c      	itt	ne
 8001fb6:	f243 7521 	movwne	r5, #14113	; 0x3721
 8001fba:	f2c0 5549 	movtne	r5, #1353	; 0x549
 8001fbe:	2e00      	cmp	r6, #0
 8001fc0:	9108      	str	r1, [sp, #32]
 8001fc2:	bf1c      	itt	ne
 8001fc4:	f646 56ef 	movwne	r6, #28143	; 0x6def
 8001fc8:	f2c1 4673 	movtne	r6, #5235	; 0x1473
 8001fcc:	fba3 8001 	umull	r8, r0, r3, r1
 8001fd0:	9306      	str	r3, [sp, #24]
 8001fd2:	9507      	str	r5, [sp, #28]
 8001fd4:	fbe5 0201 	umlal	r0, r2, r5, r1
 8001fd8:	fba3 1306 	umull	r1, r3, r3, r6
 8001fdc:	9603      	str	r6, [sp, #12]
 8001fde:	eb10 0e01 	adds.w	lr, r0, r1
 8001fe2:	f640 2068 	movw	r0, #2664	; 0xa68
 8001fe6:	f04f 0101 	mov.w	r1, #1
 8001fea:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fee:	f143 0300 	adc.w	r3, r3, #0
 8001ff2:	f890 c000 	ldrb.w	ip, [r0]
 8001ff6:	fbe5 2366 	umaal	r2, r3, r5, r6
 8001ffa:	f1bc 0f00 	cmp.w	ip, #0
 8001ffe:	46e3      	mov	fp, ip
 8002000:	bf1f      	itttt	ne
 8002002:	f644 1b27 	movwne	fp, #18727	; 0x4927
 8002006:	f6cf 2be8 	movtne	fp, #64232	; 0xfae8
 800200a:	f64f 0c9f 	movwne	ip, #63647	; 0xf89f
 800200e:	f6c3 1c28 	movtne	ip, #14632	; 0x3928
 8002012:	0058      	lsls	r0, r3, #1
 8002014:	ea40 74d2 	orr.w	r4, r0, r2, lsr #31
 8002018:	ea4f 70de 	mov.w	r0, lr, lsr #31
 800201c:	ea40 0642 	orr.w	r6, r0, r2, lsl #1
 8002020:	ea44 75e3 	orr.w	r5, r4, r3, asr #31
 8002024:	ebb6 020c 	subs.w	r2, r6, ip
 8002028:	ea46 73e3 	orr.w	r3, r6, r3, asr #31
 800202c:	eb64 000b 	sbc.w	r0, r4, fp
 8002030:	ebb3 030c 	subs.w	r3, r3, ip
 8002034:	eb75 030b 	sbcs.w	r3, r5, fp
 8002038:	f04f 0500 	mov.w	r5, #0
 800203c:	f04f 0300 	mov.w	r3, #0
 8002040:	bf28      	it	cs
 8002042:	2301      	movcs	r3, #1
 8002044:	bf38      	it	cc
 8002046:	2501      	movcc	r5, #1
 8002048:	2d00      	cmp	r5, #0
 800204a:	bf1c      	itt	ne
 800204c:	4620      	movne	r0, r4
 800204e:	4632      	movne	r2, r6
 8002050:	ea43 0448 	orr.w	r4, r3, r8, lsl #1
 8002054:	ea4f 034e 	mov.w	r3, lr, lsl #1
 8002058:	3101      	adds	r1, #1
 800205a:	ea43 7ed8 	orr.w	lr, r3, r8, lsr #31
 800205e:	f14a 0a00 	adc.w	sl, sl, #0
 8002062:	f1b1 0341 	subs.w	r3, r1, #65	; 0x41
 8002066:	46a0      	mov	r8, r4
 8002068:	f17a 0300 	sbcs.w	r3, sl, #0
 800206c:	4603      	mov	r3, r0
 800206e:	dbd0      	blt.n	8002012 <benchmark+0x9e>
 8002070:	fba2 8102 	umull	r8, r1, r2, r2
 8002074:	2500      	movs	r5, #0
 8002076:	4664      	mov	r4, ip
 8002078:	46d9      	mov	r9, fp
 800207a:	f04f 0c00 	mov.w	ip, #0
 800207e:	fbe2 1500 	umlal	r1, r5, r2, r0
 8002082:	fba2 2300 	umull	r2, r3, r2, r0
 8002086:	46a3      	mov	fp, r4
 8002088:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800208c:	eb11 0e02 	adds.w	lr, r1, r2
 8002090:	f04f 0201 	mov.w	r2, #1
 8002094:	f143 0300 	adc.w	r3, r3, #0
 8002098:	fbe0 5360 	umaal	r5, r3, r0, r0
 800209c:	0058      	lsls	r0, r3, #1
 800209e:	2600      	movs	r6, #0
 80020a0:	ea40 71d5 	orr.w	r1, r0, r5, lsr #31
 80020a4:	ea4f 70de 	mov.w	r0, lr, lsr #31
 80020a8:	ea40 0445 	orr.w	r4, r0, r5, lsl #1
 80020ac:	ea41 7ae3 	orr.w	sl, r1, r3, asr #31
 80020b0:	ebb4 050b 	subs.w	r5, r4, fp
 80020b4:	ea44 73e3 	orr.w	r3, r4, r3, asr #31
 80020b8:	eb61 0009 	sbc.w	r0, r1, r9
 80020bc:	ebb3 030b 	subs.w	r3, r3, fp
 80020c0:	f8dd 9024 	ldr.w	r9, [sp, #36]	; 0x24
 80020c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80020c6:	eb7a 0303 	sbcs.w	r3, sl, r3
 80020ca:	f04f 0300 	mov.w	r3, #0
 80020ce:	bf28      	it	cs
 80020d0:	2301      	movcs	r3, #1
 80020d2:	bf38      	it	cc
 80020d4:	2601      	movcc	r6, #1
 80020d6:	2e00      	cmp	r6, #0
 80020d8:	bf1c      	itt	ne
 80020da:	4608      	movne	r0, r1
 80020dc:	4625      	movne	r5, r4
 80020de:	ea43 0148 	orr.w	r1, r3, r8, lsl #1
 80020e2:	ea4f 034e 	mov.w	r3, lr, lsl #1
 80020e6:	3201      	adds	r2, #1
 80020e8:	ea43 7ed8 	orr.w	lr, r3, r8, lsr #31
 80020ec:	f14c 0c00 	adc.w	ip, ip, #0
 80020f0:	f1b2 0341 	subs.w	r3, r2, #65	; 0x41
 80020f4:	4688      	mov	r8, r1
 80020f6:	f17c 0300 	sbcs.w	r3, ip, #0
 80020fa:	4603      	mov	r3, r0
 80020fc:	dbce      	blt.n	800209c <benchmark+0x128>
 80020fe:	fba5 8105 	umull	r8, r1, r5, r5
 8002102:	2600      	movs	r6, #0
 8002104:	fba5 2300 	umull	r2, r3, r5, r0
 8002108:	2400      	movs	r4, #0
 800210a:	fbe5 1600 	umlal	r1, r6, r5, r0
 800210e:	2501      	movs	r5, #1
 8002110:	eb11 0c02 	adds.w	ip, r1, r2
 8002114:	f143 0300 	adc.w	r3, r3, #0
 8002118:	fbe0 6360 	umaal	r6, r3, r0, r0
 800211c:	0058      	lsls	r0, r3, #1
 800211e:	ea4f 72dc 	mov.w	r2, ip, lsr #31
 8002122:	ea40 70d6 	orr.w	r0, r0, r6, lsr #31
 8002126:	ea42 0246 	orr.w	r2, r2, r6, lsl #1
 800212a:	ebb2 060b 	subs.w	r6, r2, fp
 800212e:	ea40 71e3 	orr.w	r1, r0, r3, asr #31
 8002132:	ea42 73e3 	orr.w	r3, r2, r3, asr #31
 8002136:	eb60 0e09 	sbc.w	lr, r0, r9
 800213a:	ebb3 030b 	subs.w	r3, r3, fp
 800213e:	eb71 0109 	sbcs.w	r1, r1, r9
 8002142:	f04f 0300 	mov.w	r3, #0
 8002146:	f04f 0100 	mov.w	r1, #0
 800214a:	bf28      	it	cs
 800214c:	2101      	movcs	r1, #1
 800214e:	bf38      	it	cc
 8002150:	2301      	movcc	r3, #1
 8002152:	2b00      	cmp	r3, #0
 8002154:	bf1c      	itt	ne
 8002156:	4686      	movne	lr, r0
 8002158:	4616      	movne	r6, r2
 800215a:	ea41 0048 	orr.w	r0, r1, r8, lsl #1
 800215e:	ea4f 014c 	mov.w	r1, ip, lsl #1
 8002162:	3501      	adds	r5, #1
 8002164:	ea41 7cd8 	orr.w	ip, r1, r8, lsr #31
 8002168:	f144 0400 	adc.w	r4, r4, #0
 800216c:	f1b5 0141 	subs.w	r1, r5, #65	; 0x41
 8002170:	4673      	mov	r3, lr
 8002172:	4680      	mov	r8, r0
 8002174:	f174 0100 	sbcs.w	r1, r4, #0
 8002178:	dbd0      	blt.n	800211c <benchmark+0x1a8>
 800217a:	e9cd e604 	strd	lr, r6, [sp, #16]
 800217e:	2500      	movs	r5, #0
 8002180:	2401      	movs	r4, #1
 8002182:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8002186:	2600      	movs	r6, #0
 8002188:	2100      	movs	r1, #0
 800218a:	f04f 0800 	mov.w	r8, #0
 800218e:	f04f 4a00 	mov.w	sl, #2147483648	; 0x80000000
 8002192:	ea5f 0a5a 	movs.w	sl, sl, lsr #1
 8002196:	ea4f 0838 	mov.w	r8, r8, rrx
 800219a:	07e0      	lsls	r0, r4, #31
 800219c:	d10b      	bne.n	80021b6 <benchmark+0x242>
 800219e:	ea5f 0656 	movs.w	r6, r6, lsr #1
 80021a2:	ea4f 0535 	mov.w	r5, r5, rrx
 80021a6:	ea5f 0151 	movs.w	r1, r1, lsr #1
 80021aa:	ea4f 0434 	mov.w	r4, r4, rrx
 80021ae:	ea58 000a 	orrs.w	r0, r8, sl
 80021b2:	d1ee      	bne.n	8002192 <benchmark+0x21e>
 80021b4:	e016      	b.n	80021e4 <benchmark+0x270>
 80021b6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80021b8:	ea84 000b 	eor.w	r0, r4, fp
 80021bc:	ea81 0203 	eor.w	r2, r1, r3
 80021c0:	4019      	ands	r1, r3
 80021c2:	ea04 030b 	and.w	r3, r4, fp
 80021c6:	ea5f 0252 	movs.w	r2, r2, lsr #1
 80021ca:	ea4f 0030 	mov.w	r0, r0, rrx
 80021ce:	18c4      	adds	r4, r0, r3
 80021d0:	4151      	adcs	r1, r2
 80021d2:	ea5f 0056 	movs.w	r0, r6, lsr #1
 80021d6:	ea4f 0535 	mov.w	r5, r5, rrx
 80021da:	ea40 060c 	orr.w	r6, r0, ip
 80021de:	ea58 000a 	orrs.w	r0, r8, sl
 80021e2:	d1d6      	bne.n	8002192 <benchmark+0x21e>
 80021e4:	940c      	str	r4, [sp, #48]	; 0x30
 80021e6:	910d      	str	r1, [sp, #52]	; 0x34
 80021e8:	960b      	str	r6, [sp, #44]	; 0x2c
 80021ea:	950a      	str	r5, [sp, #40]	; 0x28
 80021ec:	46d9      	mov	r9, fp
 80021ee:	2601      	movs	r6, #1
 80021f0:	f04f 0c00 	mov.w	ip, #0
 80021f4:	980c      	ldr	r0, [sp, #48]	; 0x30
 80021f6:	980d      	ldr	r0, [sp, #52]	; 0x34
 80021f8:	980a      	ldr	r0, [sp, #40]	; 0x28
 80021fa:	990b      	ldr	r1, [sp, #44]	; 0x2c
 80021fc:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8002200:	fba0 320b 	umull	r3, r2, r0, fp
 8002204:	fb00 2008 	mla	r0, r0, r8, r2
 8002208:	9302      	str	r3, [sp, #8]
 800220a:	fb01 000b 	mla	r0, r1, fp, r0
 800220e:	f04f 0b00 	mov.w	fp, #0
 8002212:	2100      	movs	r1, #0
 8002214:	9001      	str	r0, [sp, #4]
 8002216:	e9dd 4506 	ldrd	r4, r5, [sp, #24]
 800221a:	ea4f 73dc 	mov.w	r3, ip, lsr #31
 800221e:	006a      	lsls	r2, r5, #1
 8002220:	ea43 0344 	orr.w	r3, r3, r4, lsl #1
 8002224:	ea42 72d4 	orr.w	r2, r2, r4, lsr #31
 8002228:	ebb3 0409 	subs.w	r4, r3, r9
 800222c:	ea42 7ae5 	orr.w	sl, r2, r5, asr #31
 8002230:	eb62 0e08 	sbc.w	lr, r2, r8
 8002234:	ea43 78e5 	orr.w	r8, r3, r5, asr #31
 8002238:	2500      	movs	r5, #0
 800223a:	ebb8 0009 	subs.w	r0, r8, r9
 800223e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8002242:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002244:	eb7a 0000 	sbcs.w	r0, sl, r0
 8002248:	f04f 0000 	mov.w	r0, #0
 800224c:	bf28      	it	cs
 800224e:	2001      	movcs	r0, #1
 8002250:	bf38      	it	cc
 8002252:	2501      	movcc	r5, #1
 8002254:	2d00      	cmp	r5, #0
 8002256:	ea40 0041 	orr.w	r0, r0, r1, lsl #1
 800225a:	bf1c      	itt	ne
 800225c:	4696      	movne	lr, r2
 800225e:	461c      	movne	r4, r3
 8002260:	ea4f 024c 	mov.w	r2, ip, lsl #1
 8002264:	3601      	adds	r6, #1
 8002266:	ea42 7cd1 	orr.w	ip, r2, r1, lsr #31
 800226a:	f14b 0b00 	adc.w	fp, fp, #0
 800226e:	f1b6 0141 	subs.w	r1, r6, #65	; 0x41
 8002272:	4675      	mov	r5, lr
 8002274:	f17b 0100 	sbcs.w	r1, fp, #0
 8002278:	4601      	mov	r1, r0
 800227a:	dbce      	blt.n	800221a <benchmark+0x2a6>
 800227c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002280:	9406      	str	r4, [sp, #24]
 8002282:	9908      	ldr	r1, [sp, #32]
 8002284:	9c03      	ldr	r4, [sp, #12]
 8002286:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 800228a:	f04f 0a00 	mov.w	sl, #0
 800228e:	f04f 0b01 	mov.w	fp, #1
 8002292:	2200      	movs	r2, #0
 8002294:	2000      	movs	r0, #0
 8002296:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800229a:	0fc6      	lsrs	r6, r0, #31
 800229c:	0063      	lsls	r3, r4, #1
 800229e:	9008      	str	r0, [sp, #32]
 80022a0:	ea46 0541 	orr.w	r5, r6, r1, lsl #1
 80022a4:	ea43 73d1 	orr.w	r3, r3, r1, lsr #31
 80022a8:	ebb5 0109 	subs.w	r1, r5, r9
 80022ac:	ea45 70e4 	orr.w	r0, r5, r4, asr #31
 80022b0:	ea43 78e4 	orr.w	r8, r3, r4, asr #31
 80022b4:	f04f 0400 	mov.w	r4, #0
 80022b8:	eb63 060c 	sbc.w	r6, r3, ip
 80022bc:	ebb0 0009 	subs.w	r0, r0, r9
 80022c0:	eb78 000c 	sbcs.w	r0, r8, ip
 80022c4:	f04f 0000 	mov.w	r0, #0
 80022c8:	bf28      	it	cs
 80022ca:	2001      	movcs	r0, #1
 80022cc:	bf38      	it	cc
 80022ce:	2401      	movcc	r4, #1
 80022d0:	2c00      	cmp	r4, #0
 80022d2:	bf1c      	itt	ne
 80022d4:	461e      	movne	r6, r3
 80022d6:	4629      	movne	r1, r5
 80022d8:	ea40 0542 	orr.w	r5, r0, r2, lsl #1
 80022dc:	9808      	ldr	r0, [sp, #32]
 80022de:	f11b 0b01 	adds.w	fp, fp, #1
 80022e2:	f14a 0a00 	adc.w	sl, sl, #0
 80022e6:	4634      	mov	r4, r6
 80022e8:	0043      	lsls	r3, r0, #1
 80022ea:	ea43 70d2 	orr.w	r0, r3, r2, lsr #31
 80022ee:	f1bb 0241 	subs.w	r2, fp, #65	; 0x41
 80022f2:	f17a 0200 	sbcs.w	r2, sl, #0
 80022f6:	462a      	mov	r2, r5
 80022f8:	dbcf      	blt.n	800229a <benchmark+0x326>
 80022fa:	9b06      	ldr	r3, [sp, #24]
 80022fc:	2400      	movs	r4, #0
 80022fe:	f04f 0c00 	mov.w	ip, #0
 8002302:	fba1 8003 	umull	r8, r0, r1, r3
 8002306:	fba6 3503 	umull	r3, r5, r6, r3
 800230a:	fbe1 040e 	umlal	r0, r4, r1, lr
 800230e:	18c1      	adds	r1, r0, r3
 8002310:	9106      	str	r1, [sp, #24]
 8002312:	f145 0300 	adc.w	r3, r5, #0
 8002316:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8002318:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 800231c:	fbe6 436e 	umaal	r4, r3, r6, lr
 8002320:	461e      	mov	r6, r3
 8002322:	fba5 2008 	umull	r2, r0, r5, r8
 8002326:	fb05 0001 	mla	r0, r5, r1, r0
 800232a:	f64f 059f 	movw	r5, #63647	; 0xf89f
 800232e:	4621      	mov	r1, r4
 8002330:	fb09 0b08 	mla	fp, r9, r8, r0
 8002334:	9807      	ldr	r0, [sp, #28]
 8002336:	f6c3 1528 	movt	r5, #14632	; 0x3928
 800233a:	4691      	mov	r9, r2
 800233c:	4028      	ands	r0, r5
 800233e:	fba2 a500 	umull	sl, r5, r2, r0
 8002342:	2200      	movs	r2, #0
 8002344:	9008      	str	r0, [sp, #32]
 8002346:	fbeb 5200 	umlal	r5, r2, fp, r0
 800234a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800234c:	fbeb 1600 	umlal	r1, r6, fp, r0
 8002350:	eb11 0e02 	adds.w	lr, r1, r2
 8002354:	f146 0b00 	adc.w	fp, r6, #0
 8002358:	fba9 6100 	umull	r6, r1, r9, r0
 800235c:	4681      	mov	r9, r0
 800235e:	19ad      	adds	r5, r5, r6
 8002360:	f141 0000 	adc.w	r0, r1, #0
 8002364:	9906      	ldr	r1, [sp, #24]
 8002366:	eb1a 0608 	adds.w	r6, sl, r8
 800236a:	4169      	adcs	r1, r5
 800236c:	ebb6 060a 	subs.w	r6, r6, sl
 8002370:	41a9      	sbcs	r1, r5
 8002372:	f04f 0100 	mov.w	r1, #0
 8002376:	bf38      	it	cc
 8002378:	2101      	movcc	r1, #1
 800237a:	eb1e 0200 	adds.w	r2, lr, r0
 800237e:	f14b 0600 	adc.w	r6, fp, #0
 8002382:	1c55      	adds	r5, r2, #1
 8002384:	f146 0000 	adc.w	r0, r6, #0
 8002388:	2900      	cmp	r1, #0
 800238a:	bf08      	it	eq
 800238c:	4630      	moveq	r0, r6
 800238e:	bf08      	it	eq
 8002390:	4615      	moveq	r5, r2
 8002392:	1b2a      	subs	r2, r5, r4
 8002394:	ea80 0e03 	eor.w	lr, r0, r3
 8002398:	ea85 0604 	eor.w	r6, r5, r4
 800239c:	eb70 0203 	sbcs.w	r2, r0, r3
 80023a0:	f04f 0200 	mov.w	r2, #0
 80023a4:	bf38      	it	cc
 80023a6:	2201      	movcc	r2, #1
 80023a8:	ea56 030e 	orrs.w	r3, r6, lr
 80023ac:	f04f 0300 	mov.w	r3, #0
 80023b0:	bf08      	it	eq
 80023b2:	2301      	moveq	r3, #1
 80023b4:	4019      	ands	r1, r3
 80023b6:	4311      	orrs	r1, r2
 80023b8:	9a07      	ldr	r2, [sp, #28]
 80023ba:	1aab      	subs	r3, r5, r2
 80023bc:	f04f 0200 	mov.w	r2, #0
 80023c0:	eb70 0609 	sbcs.w	r6, r0, r9
 80023c4:	bf28      	it	cs
 80023c6:	2201      	movcs	r2, #1
 80023c8:	4311      	orrs	r1, r2
 80023ca:	bf04      	itt	eq
 80023cc:	4606      	moveq	r6, r0
 80023ce:	462b      	moveq	r3, r5
 80023d0:	2500      	movs	r5, #0
 80023d2:	fba3 8003 	umull	r8, r0, r3, r3
 80023d6:	fbe3 0506 	umlal	r0, r5, r3, r6
 80023da:	fba3 3106 	umull	r3, r1, r3, r6
 80023de:	18c0      	adds	r0, r0, r3
 80023e0:	f141 0b00 	adc.w	fp, r1, #0
 80023e4:	9006      	str	r0, [sp, #24]
 80023e6:	fbe6 5b66 	umaal	r5, fp, r6, r6
 80023ea:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80023ec:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80023ee:	4629      	mov	r1, r5
 80023f0:	fba8 a206 	umull	sl, r2, r8, r6
 80023f4:	fb08 2203 	mla	r2, r8, r3, r2
 80023f8:	465b      	mov	r3, fp
 80023fa:	fb00 2406 	mla	r4, r0, r6, r2
 80023fe:	9a08      	ldr	r2, [sp, #32]
 8002400:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8002402:	2000      	movs	r0, #0
 8002404:	fbaa 9e02 	umull	r9, lr, sl, r2
 8002408:	fbe4 1306 	umlal	r1, r3, r4, r6
 800240c:	fbe4 e002 	umlal	lr, r0, r4, r2
 8002410:	1840      	adds	r0, r0, r1
 8002412:	f143 0100 	adc.w	r1, r3, #0
 8002416:	fbaa 2306 	umull	r2, r3, sl, r6
 800241a:	eb1e 0602 	adds.w	r6, lr, r2
 800241e:	f143 0200 	adc.w	r2, r3, #0
 8002422:	eb10 0a02 	adds.w	sl, r0, r2
 8002426:	9806      	ldr	r0, [sp, #24]
 8002428:	f141 0100 	adc.w	r1, r1, #0
 800242c:	eb19 0e08 	adds.w	lr, r9, r8
 8002430:	f04f 0800 	mov.w	r8, #0
 8002434:	eb46 0400 	adc.w	r4, r6, r0
 8002438:	f11a 0201 	adds.w	r2, sl, #1
 800243c:	f141 0300 	adc.w	r3, r1, #0
 8002440:	ebbe 0009 	subs.w	r0, lr, r9
 8002444:	eb74 0006 	sbcs.w	r0, r4, r6
 8002448:	f04f 0000 	mov.w	r0, #0
 800244c:	bf38      	it	cc
 800244e:	2001      	movcc	r0, #1
 8002450:	2800      	cmp	r0, #0
 8002452:	bf04      	itt	eq
 8002454:	460b      	moveq	r3, r1
 8002456:	4652      	moveq	r2, sl
 8002458:	ea82 0105 	eor.w	r1, r2, r5
 800245c:	ea83 060b 	eor.w	r6, r3, fp
 8002460:	4331      	orrs	r1, r6
 8002462:	f04f 0100 	mov.w	r1, #0
 8002466:	bf08      	it	eq
 8002468:	2101      	moveq	r1, #1
 800246a:	1b56      	subs	r6, r2, r5
 800246c:	eb73 060b 	sbcs.w	r6, r3, fp
 8002470:	ea00 0001 	and.w	r0, r0, r1
 8002474:	f04f 0600 	mov.w	r6, #0
 8002478:	bf38      	it	cc
 800247a:	2601      	movcc	r6, #1
 800247c:	9907      	ldr	r1, [sp, #28]
 800247e:	4330      	orrs	r0, r6
 8002480:	1a56      	subs	r6, r2, r1
 8002482:	9909      	ldr	r1, [sp, #36]	; 0x24
 8002484:	eb73 0501 	sbcs.w	r5, r3, r1
 8002488:	f04f 0100 	mov.w	r1, #0
 800248c:	bf28      	it	cs
 800248e:	2101      	movcs	r1, #1
 8002490:	4308      	orrs	r0, r1
 8002492:	bf04      	itt	eq
 8002494:	461d      	moveq	r5, r3
 8002496:	4616      	moveq	r6, r2
 8002498:	fba6 9006 	umull	r9, r0, r6, r6
 800249c:	fbe6 0805 	umlal	r0, r8, r6, r5
 80024a0:	fba6 3605 	umull	r3, r6, r6, r5
 80024a4:	18c0      	adds	r0, r0, r3
 80024a6:	9006      	str	r0, [sp, #24]
 80024a8:	f146 0a00 	adc.w	sl, r6, #0
 80024ac:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80024ae:	fbe5 8a65 	umaal	r8, sl, r5, r5
 80024b2:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 80024b4:	4641      	mov	r1, r8
 80024b6:	4653      	mov	r3, sl
 80024b8:	fba9 4206 	umull	r4, r2, r9, r6
 80024bc:	fb09 2205 	mla	r2, r9, r5, r2
 80024c0:	2500      	movs	r5, #0
 80024c2:	fb00 2e06 	mla	lr, r0, r6, r2
 80024c6:	9808      	ldr	r0, [sp, #32]
 80024c8:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80024ca:	fba4 b600 	umull	fp, r6, r4, r0
 80024ce:	fbee 1302 	umlal	r1, r3, lr, r2
 80024d2:	fbee 6500 	umlal	r6, r5, lr, r0
 80024d6:	1949      	adds	r1, r1, r5
 80024d8:	f143 0e00 	adc.w	lr, r3, #0
 80024dc:	fba4 0302 	umull	r0, r3, r4, r2
 80024e0:	1835      	adds	r5, r6, r0
 80024e2:	f143 0000 	adc.w	r0, r3, #0
 80024e6:	1809      	adds	r1, r1, r0
 80024e8:	9806      	ldr	r0, [sp, #24]
 80024ea:	f14e 0200 	adc.w	r2, lr, #0
 80024ee:	eb1b 0e09 	adds.w	lr, fp, r9
 80024f2:	eb45 0400 	adc.w	r4, r5, r0
 80024f6:	1c48      	adds	r0, r1, #1
 80024f8:	f142 0300 	adc.w	r3, r2, #0
 80024fc:	ebbe 060b 	subs.w	r6, lr, fp
 8002500:	eb74 0605 	sbcs.w	r6, r4, r5
 8002504:	f04f 0500 	mov.w	r5, #0
 8002508:	f04f 0600 	mov.w	r6, #0
 800250c:	bf38      	it	cc
 800250e:	2601      	movcc	r6, #1
 8002510:	2e00      	cmp	r6, #0
 8002512:	bf04      	itt	eq
 8002514:	4613      	moveq	r3, r2
 8002516:	4608      	moveq	r0, r1
 8002518:	ea80 0108 	eor.w	r1, r0, r8
 800251c:	ea83 020a 	eor.w	r2, r3, sl
 8002520:	4311      	orrs	r1, r2
 8002522:	f04f 0100 	mov.w	r1, #0
 8002526:	bf08      	it	eq
 8002528:	2101      	moveq	r1, #1
 800252a:	ebb0 0208 	subs.w	r2, r0, r8
 800252e:	eb73 020a 	sbcs.w	r2, r3, sl
 8002532:	ea01 0106 	and.w	r1, r1, r6
 8002536:	f04f 0200 	mov.w	r2, #0
 800253a:	bf38      	it	cc
 800253c:	2201      	movcc	r2, #1
 800253e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8002542:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8002546:	4311      	orrs	r1, r2
 8002548:	ebb0 020a 	subs.w	r2, r0, sl
 800254c:	eb73 060b 	sbcs.w	r6, r3, fp
 8002550:	bf28      	it	cs
 8002552:	2501      	movcs	r5, #1
 8002554:	4329      	orrs	r1, r5
 8002556:	bf04      	itt	eq
 8002558:	461e      	moveq	r6, r3
 800255a:	4602      	moveq	r2, r0
 800255c:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800255e:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8002560:	2000      	movs	r0, #0
 8002562:	fba2 9503 	umull	r9, r5, r2, r3
 8002566:	fba2 2e04 	umull	r2, lr, r2, r4
 800256a:	fbe6 5003 	umlal	r5, r0, r6, r3
 800256e:	eb15 0802 	adds.w	r8, r5, r2
 8002572:	f04f 0501 	mov.w	r5, #1
 8002576:	f14e 0200 	adc.w	r2, lr, #0
 800257a:	46d6      	mov	lr, sl
 800257c:	46da      	mov	sl, fp
 800257e:	fbe6 0264 	umaal	r0, r2, r6, r4
 8002582:	0056      	lsls	r6, r2, #1
 8002584:	ea46 74d0 	orr.w	r4, r6, r0, lsr #31
 8002588:	ea4f 76d8 	mov.w	r6, r8, lsr #31
 800258c:	ea46 0340 	orr.w	r3, r6, r0, lsl #1
 8002590:	ea44 71e2 	orr.w	r1, r4, r2, asr #31
 8002594:	ebb3 000e 	subs.w	r0, r3, lr
 8002598:	ea43 72e2 	orr.w	r2, r3, r2, asr #31
 800259c:	eb64 060a 	sbc.w	r6, r4, sl
 80025a0:	ebb2 020e 	subs.w	r2, r2, lr
 80025a4:	eb71 010a 	sbcs.w	r1, r1, sl
 80025a8:	f04f 0200 	mov.w	r2, #0
 80025ac:	f04f 0100 	mov.w	r1, #0
 80025b0:	bf28      	it	cs
 80025b2:	2101      	movcs	r1, #1
 80025b4:	bf38      	it	cc
 80025b6:	2201      	movcc	r2, #1
 80025b8:	2a00      	cmp	r2, #0
 80025ba:	ea4f 0248 	mov.w	r2, r8, lsl #1
 80025be:	ea41 0149 	orr.w	r1, r1, r9, lsl #1
 80025c2:	bf1c      	itt	ne
 80025c4:	4626      	movne	r6, r4
 80025c6:	4618      	movne	r0, r3
 80025c8:	3501      	adds	r5, #1
 80025ca:	ea42 78d9 	orr.w	r8, r2, r9, lsr #31
 80025ce:	4689      	mov	r9, r1
 80025d0:	f14c 0c00 	adc.w	ip, ip, #0
 80025d4:	f1b5 0241 	subs.w	r2, r5, #65	; 0x41
 80025d8:	f17c 0200 	sbcs.w	r2, ip, #0
 80025dc:	4632      	mov	r2, r6
 80025de:	dbd0      	blt.n	8002582 <benchmark+0x60e>
 80025e0:	9905      	ldr	r1, [sp, #20]
 80025e2:	4048      	eors	r0, r1
 80025e4:	9904      	ldr	r1, [sp, #16]
 80025e6:	4071      	eors	r1, r6
 80025e8:	4308      	orrs	r0, r1
 80025ea:	bf18      	it	ne
 80025ec:	2001      	movne	r0, #1
 80025ee:	e9dd 2101 	ldrd	r2, r1, [sp, #4]
 80025f2:	4011      	ands	r1, r2
 80025f4:	3101      	adds	r1, #1
 80025f6:	f04f 0100 	mov.w	r1, #0
 80025fa:	bf18      	it	ne
 80025fc:	2101      	movne	r1, #1
 80025fe:	4308      	orrs	r0, r1
 8002600:	b00f      	add	sp, #60	; 0x3c
 8002602:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002606:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002608 <initialise_benchmark>:
 8002608:	f640 2068 	movw	r0, #2664	; 0xa68
 800260c:	2101      	movs	r1, #1
 800260e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002612:	7001      	strb	r1, [r0, #0]
 8002614:	f640 2070 	movw	r0, #2672	; 0xa70
 8002618:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800261c:	7001      	strb	r1, [r0, #0]
 800261e:	f640 2078 	movw	r0, #2680	; 0xa78
 8002622:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002626:	7001      	strb	r1, [r0, #0]
 8002628:	4770      	bx	lr

0800262a <verify_benchmark>:
 800262a:	2100      	movs	r1, #0
 800262c:	2800      	cmp	r0, #0
 800262e:	bf08      	it	eq
 8002630:	2101      	moveq	r1, #1
 8002632:	4608      	mov	r0, r1
 8002634:	4770      	bx	lr

08002636 <SysTick_Handler>:
 8002636:	b580      	push	{r7, lr}
 8002638:	466f      	mov	r7, sp
 800263a:	f7fe fd65 	bl	8001108 <HAL_IncTick>
 800263e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002642:	f7fe bdbf 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08002646 <_read>:
 8002646:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002648:	af03      	add	r7, sp, #12
 800264a:	f84d bd04 	str.w	fp, [sp, #-4]!
 800264e:	4614      	mov	r4, r2
 8002650:	460d      	mov	r5, r1
 8002652:	2c01      	cmp	r4, #1
 8002654:	db06      	blt.n	8002664 <_read+0x1e>
 8002656:	4626      	mov	r6, r4
 8002658:	f3af 8000 	nop.w
 800265c:	f805 0b01 	strb.w	r0, [r5], #1
 8002660:	3e01      	subs	r6, #1
 8002662:	d1f9      	bne.n	8002658 <_read+0x12>
 8002664:	4620      	mov	r0, r4
 8002666:	f85d bb04 	ldr.w	fp, [sp], #4
 800266a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800266c <_write>:
 800266c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800266e:	af03      	add	r7, sp, #12
 8002670:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002674:	4614      	mov	r4, r2
 8002676:	460d      	mov	r5, r1
 8002678:	2c01      	cmp	r4, #1
 800267a:	db06      	blt.n	800268a <_write+0x1e>
 800267c:	4626      	mov	r6, r4
 800267e:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002682:	f7ff fc18 	bl	8001eb6 <__io_putchar>
 8002686:	3e01      	subs	r6, #1
 8002688:	d1f9      	bne.n	800267e <_write+0x12>
 800268a:	4620      	mov	r0, r4
 800268c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002690:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002692 <_sbrk>:
 8002692:	f640 2280 	movw	r2, #2688	; 0xa80
 8002696:	4601      	mov	r1, r0
 8002698:	466b      	mov	r3, sp
 800269a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800269e:	6810      	ldr	r0, [r2, #0]
 80026a0:	2800      	cmp	r0, #0
 80026a2:	bf02      	ittt	eq
 80026a4:	f640 3028 	movweq	r0, #2856	; 0xb28
 80026a8:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80026ac:	6010      	streq	r0, [r2, #0]
 80026ae:	4401      	add	r1, r0
 80026b0:	4299      	cmp	r1, r3
 80026b2:	bf9c      	itt	ls
 80026b4:	6011      	strls	r1, [r2, #0]
 80026b6:	4770      	bxls	lr
 80026b8:	b580      	push	{r7, lr}
 80026ba:	466f      	mov	r7, sp
 80026bc:	f000 f864 	bl	8002788 <__errno>
 80026c0:	210c      	movs	r1, #12
 80026c2:	6001      	str	r1, [r0, #0]
 80026c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80026c8:	bd80      	pop	{r7, pc}

080026ca <_close>:
 80026ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80026ce:	4770      	bx	lr

080026d0 <_fstat>:
 80026d0:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80026d4:	6048      	str	r0, [r1, #4]
 80026d6:	2000      	movs	r0, #0
 80026d8:	4770      	bx	lr

080026da <_isatty>:
 80026da:	2001      	movs	r0, #1
 80026dc:	4770      	bx	lr

080026de <_lseek>:
 80026de:	2000      	movs	r0, #0
 80026e0:	4770      	bx	lr

080026e2 <SystemInit>:
 80026e2:	f64e 5088 	movw	r0, #60808	; 0xed88
 80026e6:	f04f 0c00 	mov.w	ip, #0
 80026ea:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80026ee:	6801      	ldr	r1, [r0, #0]
 80026f0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80026f4:	6001      	str	r1, [r0, #0]
 80026f6:	f241 0100 	movw	r1, #4096	; 0x1000
 80026fa:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80026fe:	680a      	ldr	r2, [r1, #0]
 8002700:	f042 0201 	orr.w	r2, r2, #1
 8002704:	600a      	str	r2, [r1, #0]
 8002706:	f8c1 c008 	str.w	ip, [r1, #8]
 800270a:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800270e:	680b      	ldr	r3, [r1, #0]
 8002710:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002714:	401a      	ands	r2, r3
 8002716:	600a      	str	r2, [r1, #0]
 8002718:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800271c:	60ca      	str	r2, [r1, #12]
 800271e:	680a      	ldr	r2, [r1, #0]
 8002720:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002724:	600a      	str	r2, [r1, #0]
 8002726:	f8c1 c018 	str.w	ip, [r1, #24]
 800272a:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800272e:	f840 1c80 	str.w	r1, [r0, #-128]
 8002732:	4770      	bx	lr

08002734 <Reset_Handler>:
 8002734:	f8df d034 	ldr.w	sp, [pc, #52]	; 800276c <LoopForever+0x2>
 8002738:	2100      	movs	r1, #0
 800273a:	e003      	b.n	8002744 <LoopCopyDataInit>

0800273c <CopyDataInit>:
 800273c:	4b0c      	ldr	r3, [pc, #48]	; (8002770 <LoopForever+0x6>)
 800273e:	585b      	ldr	r3, [r3, r1]
 8002740:	5043      	str	r3, [r0, r1]
 8002742:	3104      	adds	r1, #4

08002744 <LoopCopyDataInit>:
 8002744:	480b      	ldr	r0, [pc, #44]	; (8002774 <LoopForever+0xa>)
 8002746:	4b0c      	ldr	r3, [pc, #48]	; (8002778 <LoopForever+0xe>)
 8002748:	1842      	adds	r2, r0, r1
 800274a:	429a      	cmp	r2, r3
 800274c:	d3f6      	bcc.n	800273c <CopyDataInit>
 800274e:	4a0b      	ldr	r2, [pc, #44]	; (800277c <LoopForever+0x12>)
 8002750:	e002      	b.n	8002758 <LoopFillZerobss>

08002752 <FillZerobss>:
 8002752:	2300      	movs	r3, #0
 8002754:	f842 3b04 	str.w	r3, [r2], #4

08002758 <LoopFillZerobss>:
 8002758:	4b09      	ldr	r3, [pc, #36]	; (8002780 <LoopForever+0x16>)
 800275a:	429a      	cmp	r2, r3
 800275c:	d3f9      	bcc.n	8002752 <FillZerobss>
 800275e:	f7ff ffc0 	bl	80026e2 <SystemInit>
 8002762:	f000 f817 	bl	8002794 <__libc_init_array>
 8002766:	f7ff fbb7 	bl	8001ed8 <main>

0800276a <LoopForever>:
 800276a:	e7fe      	b.n	800276a <LoopForever>
 800276c:	20018000 	.word	0x20018000
 8002770:	080078e8 	.word	0x080078e8
 8002774:	20000000 	.word	0x20000000
 8002778:	200009c8 	.word	0x200009c8
 800277c:	200009c8 	.word	0x200009c8
 8002780:	20000b28 	.word	0x20000b28

08002784 <ADC1_2_IRQHandler>:
 8002784:	e7fe      	b.n	8002784 <ADC1_2_IRQHandler>
	...

08002788 <__errno>:
 8002788:	4b01      	ldr	r3, [pc, #4]	; (8002790 <__errno+0x8>)
 800278a:	6818      	ldr	r0, [r3, #0]
 800278c:	4770      	bx	lr
 800278e:	bf00      	nop
 8002790:	20000018 	.word	0x20000018

08002794 <__libc_init_array>:
 8002794:	b570      	push	{r4, r5, r6, lr}
 8002796:	4e0d      	ldr	r6, [pc, #52]	; (80027cc <__libc_init_array+0x38>)
 8002798:	4d0d      	ldr	r5, [pc, #52]	; (80027d0 <__libc_init_array+0x3c>)
 800279a:	1b76      	subs	r6, r6, r5
 800279c:	10b6      	asrs	r6, r6, #2
 800279e:	d006      	beq.n	80027ae <__libc_init_array+0x1a>
 80027a0:	2400      	movs	r4, #0
 80027a2:	3401      	adds	r4, #1
 80027a4:	f855 3b04 	ldr.w	r3, [r5], #4
 80027a8:	4798      	blx	r3
 80027aa:	42a6      	cmp	r6, r4
 80027ac:	d1f9      	bne.n	80027a2 <__libc_init_array+0xe>
 80027ae:	4e09      	ldr	r6, [pc, #36]	; (80027d4 <__libc_init_array+0x40>)
 80027b0:	4d09      	ldr	r5, [pc, #36]	; (80027d8 <__libc_init_array+0x44>)
 80027b2:	1b76      	subs	r6, r6, r5
 80027b4:	f004 feaa 	bl	800750c <_init>
 80027b8:	10b6      	asrs	r6, r6, #2
 80027ba:	d006      	beq.n	80027ca <__libc_init_array+0x36>
 80027bc:	2400      	movs	r4, #0
 80027be:	3401      	adds	r4, #1
 80027c0:	f855 3b04 	ldr.w	r3, [r5], #4
 80027c4:	4798      	blx	r3
 80027c6:	42a6      	cmp	r6, r4
 80027c8:	d1f9      	bne.n	80027be <__libc_init_array+0x2a>
 80027ca:	bd70      	pop	{r4, r5, r6, pc}
 80027cc:	080078d8 	.word	0x080078d8
 80027d0:	080078d8 	.word	0x080078d8
 80027d4:	080078e0 	.word	0x080078e0
 80027d8:	080078d8 	.word	0x080078d8

080027dc <memset>:
 80027dc:	b4f0      	push	{r4, r5, r6, r7}
 80027de:	0786      	lsls	r6, r0, #30
 80027e0:	d043      	beq.n	800286a <memset+0x8e>
 80027e2:	1e54      	subs	r4, r2, #1
 80027e4:	2a00      	cmp	r2, #0
 80027e6:	d03e      	beq.n	8002866 <memset+0x8a>
 80027e8:	b2ca      	uxtb	r2, r1
 80027ea:	4603      	mov	r3, r0
 80027ec:	e002      	b.n	80027f4 <memset+0x18>
 80027ee:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80027f2:	d338      	bcc.n	8002866 <memset+0x8a>
 80027f4:	f803 2b01 	strb.w	r2, [r3], #1
 80027f8:	079d      	lsls	r5, r3, #30
 80027fa:	d1f8      	bne.n	80027ee <memset+0x12>
 80027fc:	2c03      	cmp	r4, #3
 80027fe:	d92b      	bls.n	8002858 <memset+0x7c>
 8002800:	b2cd      	uxtb	r5, r1
 8002802:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002806:	2c0f      	cmp	r4, #15
 8002808:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800280c:	d916      	bls.n	800283c <memset+0x60>
 800280e:	f1a4 0710 	sub.w	r7, r4, #16
 8002812:	093f      	lsrs	r7, r7, #4
 8002814:	f103 0620 	add.w	r6, r3, #32
 8002818:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 800281c:	f103 0210 	add.w	r2, r3, #16
 8002820:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002824:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002828:	3210      	adds	r2, #16
 800282a:	42b2      	cmp	r2, r6
 800282c:	d1f8      	bne.n	8002820 <memset+0x44>
 800282e:	f004 040f 	and.w	r4, r4, #15
 8002832:	3701      	adds	r7, #1
 8002834:	2c03      	cmp	r4, #3
 8002836:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800283a:	d90d      	bls.n	8002858 <memset+0x7c>
 800283c:	461e      	mov	r6, r3
 800283e:	4622      	mov	r2, r4
 8002840:	3a04      	subs	r2, #4
 8002842:	2a03      	cmp	r2, #3
 8002844:	f846 5b04 	str.w	r5, [r6], #4
 8002848:	d8fa      	bhi.n	8002840 <memset+0x64>
 800284a:	1f22      	subs	r2, r4, #4
 800284c:	f022 0203 	bic.w	r2, r2, #3
 8002850:	3204      	adds	r2, #4
 8002852:	4413      	add	r3, r2
 8002854:	f004 0403 	and.w	r4, r4, #3
 8002858:	b12c      	cbz	r4, 8002866 <memset+0x8a>
 800285a:	b2c9      	uxtb	r1, r1
 800285c:	441c      	add	r4, r3
 800285e:	f803 1b01 	strb.w	r1, [r3], #1
 8002862:	429c      	cmp	r4, r3
 8002864:	d1fb      	bne.n	800285e <memset+0x82>
 8002866:	bcf0      	pop	{r4, r5, r6, r7}
 8002868:	4770      	bx	lr
 800286a:	4614      	mov	r4, r2
 800286c:	4603      	mov	r3, r0
 800286e:	e7c5      	b.n	80027fc <memset+0x20>

08002870 <printf>:
 8002870:	b40f      	push	{r0, r1, r2, r3}
 8002872:	b500      	push	{lr}
 8002874:	4907      	ldr	r1, [pc, #28]	; (8002894 <printf+0x24>)
 8002876:	b083      	sub	sp, #12
 8002878:	ab04      	add	r3, sp, #16
 800287a:	6808      	ldr	r0, [r1, #0]
 800287c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002880:	6881      	ldr	r1, [r0, #8]
 8002882:	9301      	str	r3, [sp, #4]
 8002884:	f000 f860 	bl	8002948 <_vfprintf_r>
 8002888:	b003      	add	sp, #12
 800288a:	f85d eb04 	ldr.w	lr, [sp], #4
 800288e:	b004      	add	sp, #16
 8002890:	4770      	bx	lr
 8002892:	bf00      	nop
 8002894:	20000018 	.word	0x20000018

08002898 <_puts_r>:
 8002898:	b570      	push	{r4, r5, r6, lr}
 800289a:	4605      	mov	r5, r0
 800289c:	b088      	sub	sp, #32
 800289e:	4608      	mov	r0, r1
 80028a0:	460c      	mov	r4, r1
 80028a2:	f7fd fecd 	bl	8000640 <strlen>
 80028a6:	4a22      	ldr	r2, [pc, #136]	; (8002930 <_puts_r+0x98>)
 80028a8:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80028aa:	9404      	str	r4, [sp, #16]
 80028ac:	2601      	movs	r6, #1
 80028ae:	1c44      	adds	r4, r0, #1
 80028b0:	a904      	add	r1, sp, #16
 80028b2:	9206      	str	r2, [sp, #24]
 80028b4:	2202      	movs	r2, #2
 80028b6:	9403      	str	r4, [sp, #12]
 80028b8:	9005      	str	r0, [sp, #20]
 80028ba:	68ac      	ldr	r4, [r5, #8]
 80028bc:	9607      	str	r6, [sp, #28]
 80028be:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80028c2:	b31b      	cbz	r3, 800290c <_puts_r+0x74>
 80028c4:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80028c6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80028ca:	07ce      	lsls	r6, r1, #31
 80028cc:	b29a      	uxth	r2, r3
 80028ce:	d401      	bmi.n	80028d4 <_puts_r+0x3c>
 80028d0:	0590      	lsls	r0, r2, #22
 80028d2:	d525      	bpl.n	8002920 <_puts_r+0x88>
 80028d4:	0491      	lsls	r1, r2, #18
 80028d6:	d406      	bmi.n	80028e6 <_puts_r+0x4e>
 80028d8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80028da:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80028de:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80028e2:	81a3      	strh	r3, [r4, #12]
 80028e4:	6662      	str	r2, [r4, #100]	; 0x64
 80028e6:	4628      	mov	r0, r5
 80028e8:	aa01      	add	r2, sp, #4
 80028ea:	4621      	mov	r1, r4
 80028ec:	f003 f860 	bl	80059b0 <__sfvwrite_r>
 80028f0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80028f2:	2800      	cmp	r0, #0
 80028f4:	bf0c      	ite	eq
 80028f6:	250a      	moveq	r5, #10
 80028f8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80028fc:	07da      	lsls	r2, r3, #31
 80028fe:	d402      	bmi.n	8002906 <_puts_r+0x6e>
 8002900:	89a3      	ldrh	r3, [r4, #12]
 8002902:	059b      	lsls	r3, r3, #22
 8002904:	d506      	bpl.n	8002914 <_puts_r+0x7c>
 8002906:	4628      	mov	r0, r5
 8002908:	b008      	add	sp, #32
 800290a:	bd70      	pop	{r4, r5, r6, pc}
 800290c:	4628      	mov	r0, r5
 800290e:	f002 feb9 	bl	8005684 <__sinit>
 8002912:	e7d7      	b.n	80028c4 <_puts_r+0x2c>
 8002914:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002916:	f003 fa07 	bl	8005d28 <__retarget_lock_release_recursive>
 800291a:	4628      	mov	r0, r5
 800291c:	b008      	add	sp, #32
 800291e:	bd70      	pop	{r4, r5, r6, pc}
 8002920:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002922:	f003 f9ff 	bl	8005d24 <__retarget_lock_acquire_recursive>
 8002926:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800292a:	b29a      	uxth	r2, r3
 800292c:	e7d2      	b.n	80028d4 <_puts_r+0x3c>
 800292e:	bf00      	nop
 8002930:	08007644 	.word	0x08007644

08002934 <puts>:
 8002934:	4b02      	ldr	r3, [pc, #8]	; (8002940 <puts+0xc>)
 8002936:	4601      	mov	r1, r0
 8002938:	6818      	ldr	r0, [r3, #0]
 800293a:	f7ff bfad 	b.w	8002898 <_puts_r>
 800293e:	bf00      	nop
 8002940:	20000018 	.word	0x20000018
 8002944:	00000000 	.word	0x00000000

08002948 <_vfprintf_r>:
 8002948:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800294c:	b0d7      	sub	sp, #348	; 0x15c
 800294e:	461c      	mov	r4, r3
 8002950:	4689      	mov	r9, r1
 8002952:	4617      	mov	r7, r2
 8002954:	4605      	mov	r5, r0
 8002956:	9003      	str	r0, [sp, #12]
 8002958:	f003 f9d2 	bl	8005d00 <_localeconv_r>
 800295c:	6803      	ldr	r3, [r0, #0]
 800295e:	9316      	str	r3, [sp, #88]	; 0x58
 8002960:	4618      	mov	r0, r3
 8002962:	f7fd fe6d 	bl	8000640 <strlen>
 8002966:	9408      	str	r4, [sp, #32]
 8002968:	9015      	str	r0, [sp, #84]	; 0x54
 800296a:	b11d      	cbz	r5, 8002974 <_vfprintf_r+0x2c>
 800296c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800296e:	2b00      	cmp	r3, #0
 8002970:	f000 8107 	beq.w	8002b82 <_vfprintf_r+0x23a>
 8002974:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002978:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800297c:	07c8      	lsls	r0, r1, #31
 800297e:	b293      	uxth	r3, r2
 8002980:	d402      	bmi.n	8002988 <_vfprintf_r+0x40>
 8002982:	0599      	lsls	r1, r3, #22
 8002984:	f140 811f 	bpl.w	8002bc6 <_vfprintf_r+0x27e>
 8002988:	049e      	lsls	r6, r3, #18
 800298a:	d40a      	bmi.n	80029a2 <_vfprintf_r+0x5a>
 800298c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002990:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002994:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002998:	f8a9 300c 	strh.w	r3, [r9, #12]
 800299c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80029a0:	b29b      	uxth	r3, r3
 80029a2:	071d      	lsls	r5, r3, #28
 80029a4:	f140 80b2 	bpl.w	8002b0c <_vfprintf_r+0x1c4>
 80029a8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80029ac:	2a00      	cmp	r2, #0
 80029ae:	f000 80ad 	beq.w	8002b0c <_vfprintf_r+0x1c4>
 80029b2:	f003 021a 	and.w	r2, r3, #26
 80029b6:	2a0a      	cmp	r2, #10
 80029b8:	f000 80c9 	beq.w	8002b4e <_vfprintf_r+0x206>
 80029bc:	2300      	movs	r3, #0
 80029be:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002bd8 <_vfprintf_r+0x290>
 80029c2:	9310      	str	r3, [sp, #64]	; 0x40
 80029c4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80029c8:	9317      	str	r3, [sp, #92]	; 0x5c
 80029ca:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80029ce:	931b      	str	r3, [sp, #108]	; 0x6c
 80029d0:	9318      	str	r3, [sp, #96]	; 0x60
 80029d2:	9305      	str	r3, [sp, #20]
 80029d4:	ab2d      	add	r3, sp, #180	; 0xb4
 80029d6:	932a      	str	r3, [sp, #168]	; 0xa8
 80029d8:	469b      	mov	fp, r3
 80029da:	783b      	ldrb	r3, [r7, #0]
 80029dc:	f8cd 901c 	str.w	r9, [sp, #28]
 80029e0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80029e4:	2b00      	cmp	r3, #0
 80029e6:	f000 8259 	beq.w	8002e9c <_vfprintf_r+0x554>
 80029ea:	2b25      	cmp	r3, #37	; 0x25
 80029ec:	463c      	mov	r4, r7
 80029ee:	d102      	bne.n	80029f6 <_vfprintf_r+0xae>
 80029f0:	e01d      	b.n	8002a2e <_vfprintf_r+0xe6>
 80029f2:	2b25      	cmp	r3, #37	; 0x25
 80029f4:	d003      	beq.n	80029fe <_vfprintf_r+0xb6>
 80029f6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80029fa:	2b00      	cmp	r3, #0
 80029fc:	d1f9      	bne.n	80029f2 <_vfprintf_r+0xaa>
 80029fe:	1be5      	subs	r5, r4, r7
 8002a00:	b18d      	cbz	r5, 8002a26 <_vfprintf_r+0xde>
 8002a02:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002a06:	3301      	adds	r3, #1
 8002a08:	442a      	add	r2, r5
 8002a0a:	2b07      	cmp	r3, #7
 8002a0c:	f8cb 7000 	str.w	r7, [fp]
 8002a10:	f8cb 5004 	str.w	r5, [fp, #4]
 8002a14:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002a18:	f300 80ca 	bgt.w	8002bb0 <_vfprintf_r+0x268>
 8002a1c:	f10b 0b08 	add.w	fp, fp, #8
 8002a20:	9b05      	ldr	r3, [sp, #20]
 8002a22:	442b      	add	r3, r5
 8002a24:	9305      	str	r3, [sp, #20]
 8002a26:	7823      	ldrb	r3, [r4, #0]
 8002a28:	2b00      	cmp	r3, #0
 8002a2a:	f000 8237 	beq.w	8002e9c <_vfprintf_r+0x554>
 8002a2e:	2300      	movs	r3, #0
 8002a30:	7866      	ldrb	r6, [r4, #1]
 8002a32:	9306      	str	r3, [sp, #24]
 8002a34:	4698      	mov	r8, r3
 8002a36:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002a3a:	f104 0a01 	add.w	sl, r4, #1
 8002a3e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002a42:	252b      	movs	r5, #43	; 0x2b
 8002a44:	f10a 0a01 	add.w	sl, sl, #1
 8002a48:	f1a6 0320 	sub.w	r3, r6, #32
 8002a4c:	2b5a      	cmp	r3, #90	; 0x5a
 8002a4e:	f200 842a 	bhi.w	80032a6 <_vfprintf_r+0x95e>
 8002a52:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002a56:	03aa      	.short	0x03aa
 8002a58:	04280428 	.word	0x04280428
 8002a5c:	0428029c 	.word	0x0428029c
 8002a60:	04280428 	.word	0x04280428
 8002a64:	042802a7 	.word	0x042802a7
 8002a68:	02c60428 	.word	0x02c60428
 8002a6c:	042802d2 	.word	0x042802d2
 8002a70:	02dc02d7 	.word	0x02dc02d7
 8002a74:	02f60428 	.word	0x02f60428
 8002a78:	026d026d 	.word	0x026d026d
 8002a7c:	026d026d 	.word	0x026d026d
 8002a80:	026d026d 	.word	0x026d026d
 8002a84:	026d026d 	.word	0x026d026d
 8002a88:	0428026d 	.word	0x0428026d
 8002a8c:	04280428 	.word	0x04280428
 8002a90:	04280428 	.word	0x04280428
 8002a94:	04280428 	.word	0x04280428
 8002a98:	042802fb 	.word	0x042802fb
 8002a9c:	03f3033c 	.word	0x03f3033c
 8002aa0:	02fb02fb 	.word	0x02fb02fb
 8002aa4:	042802fb 	.word	0x042802fb
 8002aa8:	04280428 	.word	0x04280428
 8002aac:	03ee0428 	.word	0x03ee0428
 8002ab0:	04280428 	.word	0x04280428
 8002ab4:	0428009a 	.word	0x0428009a
 8002ab8:	04280428 	.word	0x04280428
 8002abc:	04280350 	.word	0x04280350
 8002ac0:	04280379 	.word	0x04280379
 8002ac4:	03900428 	.word	0x03900428
 8002ac8:	04280428 	.word	0x04280428
 8002acc:	04280428 	.word	0x04280428
 8002ad0:	04280428 	.word	0x04280428
 8002ad4:	04280428 	.word	0x04280428
 8002ad8:	042802fb 	.word	0x042802fb
 8002adc:	00c5033c 	.word	0x00c5033c
 8002ae0:	02fb02fb 	.word	0x02fb02fb
 8002ae4:	03d102fb 	.word	0x03d102fb
 8002ae8:	007000c5 	.word	0x007000c5
 8002aec:	03b50428 	.word	0x03b50428
 8002af0:	03c20428 	.word	0x03c20428
 8002af4:	03de009c 	.word	0x03de009c
 8002af8:	04280070 	.word	0x04280070
 8002afc:	00720350 	.word	0x00720350
 8002b00:	0428022c 	.word	0x0428022c
 8002b04:	027c0428 	.word	0x027c0428
 8002b08:	00720428 	.word	0x00720428
 8002b0c:	4649      	mov	r1, r9
 8002b0e:	9803      	ldr	r0, [sp, #12]
 8002b10:	f001 fc9a 	bl	8004448 <__swsetup_r>
 8002b14:	b1a0      	cbz	r0, 8002b40 <_vfprintf_r+0x1f8>
 8002b16:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002b1a:	07d8      	lsls	r0, r3, #31
 8002b1c:	d404      	bmi.n	8002b28 <_vfprintf_r+0x1e0>
 8002b1e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002b22:	0599      	lsls	r1, r3, #22
 8002b24:	f140 83b7 	bpl.w	8003296 <_vfprintf_r+0x94e>
 8002b28:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002b2c:	9305      	str	r3, [sp, #20]
 8002b2e:	9805      	ldr	r0, [sp, #20]
 8002b30:	b057      	add	sp, #348	; 0x15c
 8002b32:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002b36:	f048 0820 	orr.w	r8, r8, #32
 8002b3a:	f89a 6000 	ldrb.w	r6, [sl]
 8002b3e:	e781      	b.n	8002a44 <_vfprintf_r+0xfc>
 8002b40:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002b44:	f003 021a 	and.w	r2, r3, #26
 8002b48:	2a0a      	cmp	r2, #10
 8002b4a:	f47f af37 	bne.w	80029bc <_vfprintf_r+0x74>
 8002b4e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002b52:	2a00      	cmp	r2, #0
 8002b54:	f6ff af32 	blt.w	80029bc <_vfprintf_r+0x74>
 8002b58:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002b5c:	07d2      	lsls	r2, r2, #31
 8002b5e:	d405      	bmi.n	8002b6c <_vfprintf_r+0x224>
 8002b60:	059b      	lsls	r3, r3, #22
 8002b62:	d403      	bmi.n	8002b6c <_vfprintf_r+0x224>
 8002b64:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002b68:	f003 f8de 	bl	8005d28 <__retarget_lock_release_recursive>
 8002b6c:	4623      	mov	r3, r4
 8002b6e:	463a      	mov	r2, r7
 8002b70:	4649      	mov	r1, r9
 8002b72:	9803      	ldr	r0, [sp, #12]
 8002b74:	f001 fc26 	bl	80043c4 <__sbprintf>
 8002b78:	9005      	str	r0, [sp, #20]
 8002b7a:	9805      	ldr	r0, [sp, #20]
 8002b7c:	b057      	add	sp, #348	; 0x15c
 8002b7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002b82:	9803      	ldr	r0, [sp, #12]
 8002b84:	f002 fd7e 	bl	8005684 <__sinit>
 8002b88:	e6f4      	b.n	8002974 <_vfprintf_r+0x2c>
 8002b8a:	f048 0810 	orr.w	r8, r8, #16
 8002b8e:	f018 0f20 	tst.w	r8, #32
 8002b92:	f000 836c 	beq.w	800326e <_vfprintf_r+0x926>
 8002b96:	9c08      	ldr	r4, [sp, #32]
 8002b98:	3407      	adds	r4, #7
 8002b9a:	f024 0307 	bic.w	r3, r4, #7
 8002b9e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002ba2:	f103 0208 	add.w	r2, r3, #8
 8002ba6:	9208      	str	r2, [sp, #32]
 8002ba8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002bac:	2200      	movs	r2, #0
 8002bae:	e18c      	b.n	8002eca <_vfprintf_r+0x582>
 8002bb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002bb2:	9907      	ldr	r1, [sp, #28]
 8002bb4:	9803      	ldr	r0, [sp, #12]
 8002bb6:	f004 f9f5 	bl	8006fa4 <__sprint_r>
 8002bba:	2800      	cmp	r0, #0
 8002bbc:	f041 8376 	bne.w	80042ac <_vfprintf_r+0x1964>
 8002bc0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002bc4:	e72c      	b.n	8002a20 <_vfprintf_r+0xd8>
 8002bc6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002bca:	f003 f8ab 	bl	8005d24 <__retarget_lock_acquire_recursive>
 8002bce:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002bd2:	b293      	uxth	r3, r2
 8002bd4:	e6d8      	b.n	8002988 <_vfprintf_r+0x40>
 8002bd6:	bf00      	nop
	...
 8002be0:	4643      	mov	r3, r8
 8002be2:	069f      	lsls	r7, r3, #26
 8002be4:	f140 832f 	bpl.w	8003246 <_vfprintf_r+0x8fe>
 8002be8:	9c08      	ldr	r4, [sp, #32]
 8002bea:	3407      	adds	r4, #7
 8002bec:	f024 0407 	bic.w	r4, r4, #7
 8002bf0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002bf4:	f104 0208 	add.w	r2, r4, #8
 8002bf8:	9208      	str	r2, [sp, #32]
 8002bfa:	4604      	mov	r4, r0
 8002bfc:	460d      	mov	r5, r1
 8002bfe:	2800      	cmp	r0, #0
 8002c00:	f171 0200 	sbcs.w	r2, r1, #0
 8002c04:	da05      	bge.n	8002c12 <_vfprintf_r+0x2ca>
 8002c06:	222d      	movs	r2, #45	; 0x2d
 8002c08:	4264      	negs	r4, r4
 8002c0a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002c0e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002c12:	aa56      	add	r2, sp, #344	; 0x158
 8002c14:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c18:	9204      	str	r2, [sp, #16]
 8002c1a:	f000 84b2 	beq.w	8003582 <_vfprintf_r+0xc3a>
 8002c1e:	2201      	movs	r2, #1
 8002c20:	ea54 0105 	orrs.w	r1, r4, r5
 8002c24:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002c28:	f040 8159 	bne.w	8002ede <_vfprintf_r+0x596>
 8002c2c:	f1b9 0f00 	cmp.w	r9, #0
 8002c30:	f040 8619 	bne.w	8003866 <_vfprintf_r+0xf1e>
 8002c34:	2a00      	cmp	r2, #0
 8002c36:	f040 8508 	bne.w	800364a <_vfprintf_r+0xd02>
 8002c3a:	f013 0301 	ands.w	r3, r3, #1
 8002c3e:	af56      	add	r7, sp, #344	; 0x158
 8002c40:	9309      	str	r3, [sp, #36]	; 0x24
 8002c42:	d002      	beq.n	8002c4a <_vfprintf_r+0x302>
 8002c44:	2330      	movs	r3, #48	; 0x30
 8002c46:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002c4a:	2300      	movs	r3, #0
 8002c4c:	930a      	str	r3, [sp, #40]	; 0x28
 8002c4e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002c50:	9314      	str	r3, [sp, #80]	; 0x50
 8002c52:	9311      	str	r3, [sp, #68]	; 0x44
 8002c54:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002c56:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c5a:	454b      	cmp	r3, r9
 8002c5c:	bfb8      	it	lt
 8002c5e:	464b      	movlt	r3, r9
 8002c60:	9304      	str	r3, [sp, #16]
 8002c62:	b112      	cbz	r2, 8002c6a <_vfprintf_r+0x322>
 8002c64:	9b04      	ldr	r3, [sp, #16]
 8002c66:	3301      	adds	r3, #1
 8002c68:	9304      	str	r3, [sp, #16]
 8002c6a:	f018 0302 	ands.w	r3, r8, #2
 8002c6e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002c70:	d002      	beq.n	8002c78 <_vfprintf_r+0x330>
 8002c72:	9b04      	ldr	r3, [sp, #16]
 8002c74:	3302      	adds	r3, #2
 8002c76:	9304      	str	r3, [sp, #16]
 8002c78:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002c7c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c7e:	930e      	str	r3, [sp, #56]	; 0x38
 8002c80:	d13f      	bne.n	8002d02 <_vfprintf_r+0x3ba>
 8002c82:	9b06      	ldr	r3, [sp, #24]
 8002c84:	9904      	ldr	r1, [sp, #16]
 8002c86:	1a5d      	subs	r5, r3, r1
 8002c88:	2d00      	cmp	r5, #0
 8002c8a:	dd3a      	ble.n	8002d02 <_vfprintf_r+0x3ba>
 8002c8c:	2d10      	cmp	r5, #16
 8002c8e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002c90:	dd29      	ble.n	8002ce6 <_vfprintf_r+0x39e>
 8002c92:	4659      	mov	r1, fp
 8002c94:	4620      	mov	r0, r4
 8002c96:	9620      	str	r6, [sp, #128]	; 0x80
 8002c98:	2310      	movs	r3, #16
 8002c9a:	9c03      	ldr	r4, [sp, #12]
 8002c9c:	9e07      	ldr	r6, [sp, #28]
 8002c9e:	46bb      	mov	fp, r7
 8002ca0:	e004      	b.n	8002cac <_vfprintf_r+0x364>
 8002ca2:	3d10      	subs	r5, #16
 8002ca4:	2d10      	cmp	r5, #16
 8002ca6:	f101 0108 	add.w	r1, r1, #8
 8002caa:	dd18      	ble.n	8002cde <_vfprintf_r+0x396>
 8002cac:	3201      	adds	r2, #1
 8002cae:	4fba      	ldr	r7, [pc, #744]	; (8002f98 <_vfprintf_r+0x650>)
 8002cb0:	3010      	adds	r0, #16
 8002cb2:	2a07      	cmp	r2, #7
 8002cb4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002cb8:	e9c1 7300 	strd	r7, r3, [r1]
 8002cbc:	ddf1      	ble.n	8002ca2 <_vfprintf_r+0x35a>
 8002cbe:	aa2a      	add	r2, sp, #168	; 0xa8
 8002cc0:	4631      	mov	r1, r6
 8002cc2:	4620      	mov	r0, r4
 8002cc4:	930c      	str	r3, [sp, #48]	; 0x30
 8002cc6:	f004 f96d 	bl	8006fa4 <__sprint_r>
 8002cca:	2800      	cmp	r0, #0
 8002ccc:	f040 843d 	bne.w	800354a <_vfprintf_r+0xc02>
 8002cd0:	3d10      	subs	r5, #16
 8002cd2:	2d10      	cmp	r5, #16
 8002cd4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002cd8:	a92d      	add	r1, sp, #180	; 0xb4
 8002cda:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002cdc:	dce6      	bgt.n	8002cac <_vfprintf_r+0x364>
 8002cde:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002ce0:	465f      	mov	r7, fp
 8002ce2:	4604      	mov	r4, r0
 8002ce4:	468b      	mov	fp, r1
 8002ce6:	3201      	adds	r2, #1
 8002ce8:	4bab      	ldr	r3, [pc, #684]	; (8002f98 <_vfprintf_r+0x650>)
 8002cea:	442c      	add	r4, r5
 8002cec:	2a07      	cmp	r2, #7
 8002cee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002cf2:	e9cb 3500 	strd	r3, r5, [fp]
 8002cf6:	f300 84ff 	bgt.w	80036f8 <_vfprintf_r+0xdb0>
 8002cfa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002cfe:	f10b 0b08 	add.w	fp, fp, #8
 8002d02:	b172      	cbz	r2, 8002d22 <_vfprintf_r+0x3da>
 8002d04:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d06:	3201      	adds	r2, #1
 8002d08:	3401      	adds	r4, #1
 8002d0a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002d0e:	2101      	movs	r1, #1
 8002d10:	2a07      	cmp	r2, #7
 8002d12:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002d16:	e9cb 0100 	strd	r0, r1, [fp]
 8002d1a:	f300 8418 	bgt.w	800354e <_vfprintf_r+0xc06>
 8002d1e:	f10b 0b08 	add.w	fp, fp, #8
 8002d22:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002d24:	b16b      	cbz	r3, 8002d42 <_vfprintf_r+0x3fa>
 8002d26:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d28:	3301      	adds	r3, #1
 8002d2a:	3402      	adds	r4, #2
 8002d2c:	a923      	add	r1, sp, #140	; 0x8c
 8002d2e:	2202      	movs	r2, #2
 8002d30:	2b07      	cmp	r3, #7
 8002d32:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d36:	e9cb 1200 	strd	r1, r2, [fp]
 8002d3a:	f300 8415 	bgt.w	8003568 <_vfprintf_r+0xc20>
 8002d3e:	f10b 0b08 	add.w	fp, fp, #8
 8002d42:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002d44:	2b80      	cmp	r3, #128	; 0x80
 8002d46:	f000 8331 	beq.w	80033ac <_vfprintf_r+0xa64>
 8002d4a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002d4c:	eba9 0503 	sub.w	r5, r9, r3
 8002d50:	2d00      	cmp	r5, #0
 8002d52:	dd37      	ble.n	8002dc4 <_vfprintf_r+0x47c>
 8002d54:	2d10      	cmp	r5, #16
 8002d56:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d58:	4b90      	ldr	r3, [pc, #576]	; (8002f9c <_vfprintf_r+0x654>)
 8002d5a:	dd28      	ble.n	8002dae <_vfprintf_r+0x466>
 8002d5c:	4659      	mov	r1, fp
 8002d5e:	4620      	mov	r0, r4
 8002d60:	46bb      	mov	fp, r7
 8002d62:	f04f 0910 	mov.w	r9, #16
 8002d66:	4637      	mov	r7, r6
 8002d68:	461c      	mov	r4, r3
 8002d6a:	9e07      	ldr	r6, [sp, #28]
 8002d6c:	e004      	b.n	8002d78 <_vfprintf_r+0x430>
 8002d6e:	3d10      	subs	r5, #16
 8002d70:	2d10      	cmp	r5, #16
 8002d72:	f101 0108 	add.w	r1, r1, #8
 8002d76:	dd15      	ble.n	8002da4 <_vfprintf_r+0x45c>
 8002d78:	3201      	adds	r2, #1
 8002d7a:	3010      	adds	r0, #16
 8002d7c:	2a07      	cmp	r2, #7
 8002d7e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002d82:	e9c1 4900 	strd	r4, r9, [r1]
 8002d86:	ddf2      	ble.n	8002d6e <_vfprintf_r+0x426>
 8002d88:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d8a:	4631      	mov	r1, r6
 8002d8c:	9803      	ldr	r0, [sp, #12]
 8002d8e:	f004 f909 	bl	8006fa4 <__sprint_r>
 8002d92:	2800      	cmp	r0, #0
 8002d94:	f040 83d9 	bne.w	800354a <_vfprintf_r+0xc02>
 8002d98:	3d10      	subs	r5, #16
 8002d9a:	2d10      	cmp	r5, #16
 8002d9c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002da0:	a92d      	add	r1, sp, #180	; 0xb4
 8002da2:	dce9      	bgt.n	8002d78 <_vfprintf_r+0x430>
 8002da4:	463e      	mov	r6, r7
 8002da6:	4623      	mov	r3, r4
 8002da8:	465f      	mov	r7, fp
 8002daa:	4604      	mov	r4, r0
 8002dac:	468b      	mov	fp, r1
 8002dae:	3201      	adds	r2, #1
 8002db0:	442c      	add	r4, r5
 8002db2:	2a07      	cmp	r2, #7
 8002db4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002db8:	e9cb 3500 	strd	r3, r5, [fp]
 8002dbc:	f300 83ef 	bgt.w	800359e <_vfprintf_r+0xc56>
 8002dc0:	f10b 0b08 	add.w	fp, fp, #8
 8002dc4:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002dc8:	f040 8280 	bne.w	80032cc <_vfprintf_r+0x984>
 8002dcc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002dce:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002dd0:	f8cb 7000 	str.w	r7, [fp]
 8002dd4:	3301      	adds	r3, #1
 8002dd6:	4414      	add	r4, r2
 8002dd8:	2b07      	cmp	r3, #7
 8002dda:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ddc:	f8cb 2004 	str.w	r2, [fp, #4]
 8002de0:	932b      	str	r3, [sp, #172]	; 0xac
 8002de2:	f300 8392 	bgt.w	800350a <_vfprintf_r+0xbc2>
 8002de6:	f10b 0b08 	add.w	fp, fp, #8
 8002dea:	f018 0f04 	tst.w	r8, #4
 8002dee:	d03b      	beq.n	8002e68 <_vfprintf_r+0x520>
 8002df0:	9b06      	ldr	r3, [sp, #24]
 8002df2:	9a04      	ldr	r2, [sp, #16]
 8002df4:	1a9d      	subs	r5, r3, r2
 8002df6:	2d00      	cmp	r5, #0
 8002df8:	dd36      	ble.n	8002e68 <_vfprintf_r+0x520>
 8002dfa:	2d10      	cmp	r5, #16
 8002dfc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002dfe:	dd21      	ble.n	8002e44 <_vfprintf_r+0x4fc>
 8002e00:	2610      	movs	r6, #16
 8002e02:	9f03      	ldr	r7, [sp, #12]
 8002e04:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002e08:	e004      	b.n	8002e14 <_vfprintf_r+0x4cc>
 8002e0a:	3d10      	subs	r5, #16
 8002e0c:	2d10      	cmp	r5, #16
 8002e0e:	f10b 0b08 	add.w	fp, fp, #8
 8002e12:	dd17      	ble.n	8002e44 <_vfprintf_r+0x4fc>
 8002e14:	3301      	adds	r3, #1
 8002e16:	4a60      	ldr	r2, [pc, #384]	; (8002f98 <_vfprintf_r+0x650>)
 8002e18:	3410      	adds	r4, #16
 8002e1a:	2b07      	cmp	r3, #7
 8002e1c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e20:	e9cb 2600 	strd	r2, r6, [fp]
 8002e24:	ddf1      	ble.n	8002e0a <_vfprintf_r+0x4c2>
 8002e26:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e28:	4641      	mov	r1, r8
 8002e2a:	4638      	mov	r0, r7
 8002e2c:	f004 f8ba 	bl	8006fa4 <__sprint_r>
 8002e30:	2800      	cmp	r0, #0
 8002e32:	f040 856c 	bne.w	800390e <_vfprintf_r+0xfc6>
 8002e36:	3d10      	subs	r5, #16
 8002e38:	2d10      	cmp	r5, #16
 8002e3a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002e3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e42:	dce7      	bgt.n	8002e14 <_vfprintf_r+0x4cc>
 8002e44:	3301      	adds	r3, #1
 8002e46:	4a54      	ldr	r2, [pc, #336]	; (8002f98 <_vfprintf_r+0x650>)
 8002e48:	442c      	add	r4, r5
 8002e4a:	2b07      	cmp	r3, #7
 8002e4c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e50:	e9cb 2500 	strd	r2, r5, [fp]
 8002e54:	dd08      	ble.n	8002e68 <_vfprintf_r+0x520>
 8002e56:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e58:	9907      	ldr	r1, [sp, #28]
 8002e5a:	9803      	ldr	r0, [sp, #12]
 8002e5c:	f004 f8a2 	bl	8006fa4 <__sprint_r>
 8002e60:	2800      	cmp	r0, #0
 8002e62:	f040 82e9 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8002e66:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e68:	9904      	ldr	r1, [sp, #16]
 8002e6a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002e6e:	428a      	cmp	r2, r1
 8002e70:	bfac      	ite	ge
 8002e72:	189b      	addge	r3, r3, r2
 8002e74:	185b      	addlt	r3, r3, r1
 8002e76:	9305      	str	r3, [sp, #20]
 8002e78:	2c00      	cmp	r4, #0
 8002e7a:	f040 82d5 	bne.w	8003428 <_vfprintf_r+0xae0>
 8002e7e:	2300      	movs	r3, #0
 8002e80:	932b      	str	r3, [sp, #172]	; 0xac
 8002e82:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002e84:	b11b      	cbz	r3, 8002e8e <_vfprintf_r+0x546>
 8002e86:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002e88:	9803      	ldr	r0, [sp, #12]
 8002e8a:	f002 fc9d 	bl	80057c8 <_free_r>
 8002e8e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e92:	4657      	mov	r7, sl
 8002e94:	783b      	ldrb	r3, [r7, #0]
 8002e96:	2b00      	cmp	r3, #0
 8002e98:	f47f ada7 	bne.w	80029ea <_vfprintf_r+0xa2>
 8002e9c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002e9e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002ea2:	2b00      	cmp	r3, #0
 8002ea4:	f041 80e7 	bne.w	8004076 <_vfprintf_r+0x172e>
 8002ea8:	2300      	movs	r3, #0
 8002eaa:	932b      	str	r3, [sp, #172]	; 0xac
 8002eac:	e2cb      	b.n	8003446 <_vfprintf_r+0xafe>
 8002eae:	4643      	mov	r3, r8
 8002eb0:	069a      	lsls	r2, r3, #26
 8002eb2:	f140 814e 	bpl.w	8003152 <_vfprintf_r+0x80a>
 8002eb6:	9c08      	ldr	r4, [sp, #32]
 8002eb8:	3407      	adds	r4, #7
 8002eba:	f024 0207 	bic.w	r2, r4, #7
 8002ebe:	f102 0108 	add.w	r1, r2, #8
 8002ec2:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002ec6:	9108      	str	r1, [sp, #32]
 8002ec8:	2201      	movs	r2, #1
 8002eca:	2100      	movs	r1, #0
 8002ecc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002ed0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002ed4:	a956      	add	r1, sp, #344	; 0x158
 8002ed6:	9104      	str	r1, [sp, #16]
 8002ed8:	f47f aea2 	bne.w	8002c20 <_vfprintf_r+0x2d8>
 8002edc:	4698      	mov	r8, r3
 8002ede:	2a01      	cmp	r2, #1
 8002ee0:	f000 8350 	beq.w	8003584 <_vfprintf_r+0xc3c>
 8002ee4:	2a02      	cmp	r2, #2
 8002ee6:	f000 831b 	beq.w	8003520 <_vfprintf_r+0xbd8>
 8002eea:	a956      	add	r1, sp, #344	; 0x158
 8002eec:	e000      	b.n	8002ef0 <_vfprintf_r+0x5a8>
 8002eee:	4639      	mov	r1, r7
 8002ef0:	08e2      	lsrs	r2, r4, #3
 8002ef2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002ef6:	08e8      	lsrs	r0, r5, #3
 8002ef8:	f004 0307 	and.w	r3, r4, #7
 8002efc:	4605      	mov	r5, r0
 8002efe:	4614      	mov	r4, r2
 8002f00:	3330      	adds	r3, #48	; 0x30
 8002f02:	ea54 0205 	orrs.w	r2, r4, r5
 8002f06:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002f0a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002f0e:	d1ee      	bne.n	8002eee <_vfprintf_r+0x5a6>
 8002f10:	f018 0f01 	tst.w	r8, #1
 8002f14:	f000 8314 	beq.w	8003540 <_vfprintf_r+0xbf8>
 8002f18:	2b30      	cmp	r3, #48	; 0x30
 8002f1a:	f000 8311 	beq.w	8003540 <_vfprintf_r+0xbf8>
 8002f1e:	9a04      	ldr	r2, [sp, #16]
 8002f20:	3902      	subs	r1, #2
 8002f22:	2330      	movs	r3, #48	; 0x30
 8002f24:	1a52      	subs	r2, r2, r1
 8002f26:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002f2a:	9209      	str	r2, [sp, #36]	; 0x24
 8002f2c:	460f      	mov	r7, r1
 8002f2e:	e68c      	b.n	8002c4a <_vfprintf_r+0x302>
 8002f30:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002f34:	2200      	movs	r2, #0
 8002f36:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002f3a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002f3e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002f42:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002f46:	2b09      	cmp	r3, #9
 8002f48:	d9f5      	bls.n	8002f36 <_vfprintf_r+0x5ee>
 8002f4a:	9206      	str	r2, [sp, #24]
 8002f4c:	e57c      	b.n	8002a48 <_vfprintf_r+0x100>
 8002f4e:	4b14      	ldr	r3, [pc, #80]	; (8002fa0 <_vfprintf_r+0x658>)
 8002f50:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f52:	f018 0f20 	tst.w	r8, #32
 8002f56:	f000 8114 	beq.w	8003182 <_vfprintf_r+0x83a>
 8002f5a:	9c08      	ldr	r4, [sp, #32]
 8002f5c:	3407      	adds	r4, #7
 8002f5e:	f024 0307 	bic.w	r3, r4, #7
 8002f62:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002f66:	f103 0208 	add.w	r2, r3, #8
 8002f6a:	9208      	str	r2, [sp, #32]
 8002f6c:	f018 0f01 	tst.w	r8, #1
 8002f70:	d009      	beq.n	8002f86 <_vfprintf_r+0x63e>
 8002f72:	ea54 0305 	orrs.w	r3, r4, r5
 8002f76:	d006      	beq.n	8002f86 <_vfprintf_r+0x63e>
 8002f78:	2330      	movs	r3, #48	; 0x30
 8002f7a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002f7e:	f048 0802 	orr.w	r8, r8, #2
 8002f82:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002f86:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002f8a:	2202      	movs	r2, #2
 8002f8c:	e79d      	b.n	8002eca <_vfprintf_r+0x582>
 8002f8e:	f048 0801 	orr.w	r8, r8, #1
 8002f92:	f89a 6000 	ldrb.w	r6, [sl]
 8002f96:	e555      	b.n	8002a44 <_vfprintf_r+0xfc>
 8002f98:	0800768c 	.word	0x0800768c
 8002f9c:	0800769c 	.word	0x0800769c
 8002fa0:	08007658 	.word	0x08007658
 8002fa4:	9e03      	ldr	r6, [sp, #12]
 8002fa6:	4630      	mov	r0, r6
 8002fa8:	f002 feaa 	bl	8005d00 <_localeconv_r>
 8002fac:	6843      	ldr	r3, [r0, #4]
 8002fae:	9318      	str	r3, [sp, #96]	; 0x60
 8002fb0:	4618      	mov	r0, r3
 8002fb2:	f7fd fb45 	bl	8000640 <strlen>
 8002fb6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002fb8:	4604      	mov	r4, r0
 8002fba:	4630      	mov	r0, r6
 8002fbc:	f002 fea0 	bl	8005d00 <_localeconv_r>
 8002fc0:	6883      	ldr	r3, [r0, #8]
 8002fc2:	931a      	str	r3, [sp, #104]	; 0x68
 8002fc4:	2c00      	cmp	r4, #0
 8002fc6:	f43f adb8 	beq.w	8002b3a <_vfprintf_r+0x1f2>
 8002fca:	f89a 6000 	ldrb.w	r6, [sl]
 8002fce:	2b00      	cmp	r3, #0
 8002fd0:	f43f ad38 	beq.w	8002a44 <_vfprintf_r+0xfc>
 8002fd4:	781b      	ldrb	r3, [r3, #0]
 8002fd6:	2b00      	cmp	r3, #0
 8002fd8:	f43f ad34 	beq.w	8002a44 <_vfprintf_r+0xfc>
 8002fdc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002fe0:	e530      	b.n	8002a44 <_vfprintf_r+0xfc>
 8002fe2:	9b08      	ldr	r3, [sp, #32]
 8002fe4:	f89a 6000 	ldrb.w	r6, [sl]
 8002fe8:	681a      	ldr	r2, [r3, #0]
 8002fea:	9206      	str	r2, [sp, #24]
 8002fec:	2a00      	cmp	r2, #0
 8002fee:	f103 0304 	add.w	r3, r3, #4
 8002ff2:	f2c0 8697 	blt.w	8003d24 <_vfprintf_r+0x13dc>
 8002ff6:	9308      	str	r3, [sp, #32]
 8002ff8:	e524      	b.n	8002a44 <_vfprintf_r+0xfc>
 8002ffa:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002ffe:	f89a 6000 	ldrb.w	r6, [sl]
 8003002:	e51f      	b.n	8002a44 <_vfprintf_r+0xfc>
 8003004:	f89a 6000 	ldrb.w	r6, [sl]
 8003008:	f048 0804 	orr.w	r8, r8, #4
 800300c:	e51a      	b.n	8002a44 <_vfprintf_r+0xfc>
 800300e:	f89a 6000 	ldrb.w	r6, [sl]
 8003012:	2e2a      	cmp	r6, #42	; 0x2a
 8003014:	f10a 0201 	add.w	r2, sl, #1
 8003018:	f001 81b0 	beq.w	800437c <_vfprintf_r+0x1a34>
 800301c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003020:	2b09      	cmp	r3, #9
 8003022:	4692      	mov	sl, r2
 8003024:	f04f 0900 	mov.w	r9, #0
 8003028:	f63f ad0e 	bhi.w	8002a48 <_vfprintf_r+0x100>
 800302c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003030:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8003034:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003038:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800303c:	2b09      	cmp	r3, #9
 800303e:	d9f5      	bls.n	800302c <_vfprintf_r+0x6e4>
 8003040:	e502      	b.n	8002a48 <_vfprintf_r+0x100>
 8003042:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003046:	f89a 6000 	ldrb.w	r6, [sl]
 800304a:	e4fb      	b.n	8002a44 <_vfprintf_r+0xfc>
 800304c:	9c08      	ldr	r4, [sp, #32]
 800304e:	3407      	adds	r4, #7
 8003050:	f024 0407 	bic.w	r4, r4, #7
 8003054:	ed94 7b00 	vldr	d7, [r4]
 8003058:	ec52 1b17 	vmov	r1, r2, d7
 800305c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003060:	931d      	str	r3, [sp, #116]	; 0x74
 8003062:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003066:	3408      	adds	r4, #8
 8003068:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800306c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003070:	4bba      	ldr	r3, [pc, #744]	; (800335c <_vfprintf_r+0xa14>)
 8003072:	9408      	str	r4, [sp, #32]
 8003074:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003078:	f7fd fff8 	bl	800106c <__aeabi_dcmpun>
 800307c:	2800      	cmp	r0, #0
 800307e:	f040 846f 	bne.w	8003960 <_vfprintf_r+0x1018>
 8003082:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003086:	4bb5      	ldr	r3, [pc, #724]	; (800335c <_vfprintf_r+0xa14>)
 8003088:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800308c:	f7fd ffd0 	bl	8001030 <__aeabi_dcmple>
 8003090:	2800      	cmp	r0, #0
 8003092:	f040 8465 	bne.w	8003960 <_vfprintf_r+0x1018>
 8003096:	2200      	movs	r2, #0
 8003098:	2300      	movs	r3, #0
 800309a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800309e:	f7fd ffbd 	bl	800101c <__aeabi_dcmplt>
 80030a2:	2800      	cmp	r0, #0
 80030a4:	f040 855b 	bne.w	8003b5e <_vfprintf_r+0x1216>
 80030a8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80030ac:	4fac      	ldr	r7, [pc, #688]	; (8003360 <_vfprintf_r+0xa18>)
 80030ae:	4bad      	ldr	r3, [pc, #692]	; (8003364 <_vfprintf_r+0xa1c>)
 80030b0:	2000      	movs	r0, #0
 80030b2:	2103      	movs	r1, #3
 80030b4:	9104      	str	r1, [sp, #16]
 80030b6:	900a      	str	r0, [sp, #40]	; 0x28
 80030b8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80030bc:	2e47      	cmp	r6, #71	; 0x47
 80030be:	bfd8      	it	le
 80030c0:	461f      	movle	r7, r3
 80030c2:	9109      	str	r1, [sp, #36]	; 0x24
 80030c4:	4681      	mov	r9, r0
 80030c6:	900f      	str	r0, [sp, #60]	; 0x3c
 80030c8:	9014      	str	r0, [sp, #80]	; 0x50
 80030ca:	9011      	str	r0, [sp, #68]	; 0x44
 80030cc:	e5c9      	b.n	8002c62 <_vfprintf_r+0x31a>
 80030ce:	9808      	ldr	r0, [sp, #32]
 80030d0:	2300      	movs	r3, #0
 80030d2:	6801      	ldr	r1, [r0, #0]
 80030d4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80030d8:	461a      	mov	r2, r3
 80030da:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80030de:	2301      	movs	r3, #1
 80030e0:	1d01      	adds	r1, r0, #4
 80030e2:	9304      	str	r3, [sp, #16]
 80030e4:	920a      	str	r2, [sp, #40]	; 0x28
 80030e6:	4691      	mov	r9, r2
 80030e8:	920f      	str	r2, [sp, #60]	; 0x3c
 80030ea:	9214      	str	r2, [sp, #80]	; 0x50
 80030ec:	9211      	str	r2, [sp, #68]	; 0x44
 80030ee:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80030f2:	af3d      	add	r7, sp, #244	; 0xf4
 80030f4:	e5b9      	b.n	8002c6a <_vfprintf_r+0x322>
 80030f6:	9b08      	ldr	r3, [sp, #32]
 80030f8:	681f      	ldr	r7, [r3, #0]
 80030fa:	2500      	movs	r5, #0
 80030fc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003100:	1d1c      	adds	r4, r3, #4
 8003102:	2f00      	cmp	r7, #0
 8003104:	f000 8639 	beq.w	8003d7a <_vfprintf_r+0x1432>
 8003108:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800310c:	f000 8711 	beq.w	8003f32 <_vfprintf_r+0x15ea>
 8003110:	464a      	mov	r2, r9
 8003112:	4629      	mov	r1, r5
 8003114:	4638      	mov	r0, r7
 8003116:	f7fd fb03 	bl	8000720 <memchr>
 800311a:	900a      	str	r0, [sp, #40]	; 0x28
 800311c:	2800      	cmp	r0, #0
 800311e:	f000 85e7 	beq.w	8003cf0 <_vfprintf_r+0x13a8>
 8003122:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003124:	1bdb      	subs	r3, r3, r7
 8003126:	9309      	str	r3, [sp, #36]	; 0x24
 8003128:	46a9      	mov	r9, r5
 800312a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800312e:	9408      	str	r4, [sp, #32]
 8003130:	9304      	str	r3, [sp, #16]
 8003132:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003136:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800313a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800313e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003142:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003146:	e58c      	b.n	8002c62 <_vfprintf_r+0x31a>
 8003148:	f048 0310 	orr.w	r3, r8, #16
 800314c:	069a      	lsls	r2, r3, #26
 800314e:	f53f aeb2 	bmi.w	8002eb6 <_vfprintf_r+0x56e>
 8003152:	9a08      	ldr	r2, [sp, #32]
 8003154:	06df      	lsls	r7, r3, #27
 8003156:	f102 0104 	add.w	r1, r2, #4
 800315a:	f100 837e 	bmi.w	800385a <_vfprintf_r+0xf12>
 800315e:	065d      	lsls	r5, r3, #25
 8003160:	9a08      	ldr	r2, [sp, #32]
 8003162:	f100 84e4 	bmi.w	8003b2e <_vfprintf_r+0x11e6>
 8003166:	059c      	lsls	r4, r3, #22
 8003168:	f140 8377 	bpl.w	800385a <_vfprintf_r+0xf12>
 800316c:	7814      	ldrb	r4, [r2, #0]
 800316e:	9108      	str	r1, [sp, #32]
 8003170:	2500      	movs	r5, #0
 8003172:	2201      	movs	r2, #1
 8003174:	e6a9      	b.n	8002eca <_vfprintf_r+0x582>
 8003176:	4b7c      	ldr	r3, [pc, #496]	; (8003368 <_vfprintf_r+0xa20>)
 8003178:	9317      	str	r3, [sp, #92]	; 0x5c
 800317a:	f018 0f20 	tst.w	r8, #32
 800317e:	f47f aeec 	bne.w	8002f5a <_vfprintf_r+0x612>
 8003182:	9a08      	ldr	r2, [sp, #32]
 8003184:	f018 0f10 	tst.w	r8, #16
 8003188:	f102 0304 	add.w	r3, r2, #4
 800318c:	f040 8354 	bne.w	8003838 <_vfprintf_r+0xef0>
 8003190:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003194:	9a08      	ldr	r2, [sp, #32]
 8003196:	f040 84d0 	bne.w	8003b3a <_vfprintf_r+0x11f2>
 800319a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800319e:	f000 834b 	beq.w	8003838 <_vfprintf_r+0xef0>
 80031a2:	7814      	ldrb	r4, [r2, #0]
 80031a4:	9308      	str	r3, [sp, #32]
 80031a6:	2500      	movs	r5, #0
 80031a8:	e6e0      	b.n	8002f6c <_vfprintf_r+0x624>
 80031aa:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80031ae:	f89a 6000 	ldrb.w	r6, [sl]
 80031b2:	2b00      	cmp	r3, #0
 80031b4:	f47f ac46 	bne.w	8002a44 <_vfprintf_r+0xfc>
 80031b8:	2320      	movs	r3, #32
 80031ba:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80031be:	e441      	b.n	8002a44 <_vfprintf_r+0xfc>
 80031c0:	f89a 6000 	ldrb.w	r6, [sl]
 80031c4:	2e6c      	cmp	r6, #108	; 0x6c
 80031c6:	bf03      	ittte	eq
 80031c8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80031cc:	f048 0820 	orreq.w	r8, r8, #32
 80031d0:	f10a 0a01 	addeq.w	sl, sl, #1
 80031d4:	f048 0810 	orrne.w	r8, r8, #16
 80031d8:	e434      	b.n	8002a44 <_vfprintf_r+0xfc>
 80031da:	9a08      	ldr	r2, [sp, #32]
 80031dc:	f018 0f20 	tst.w	r8, #32
 80031e0:	f852 3b04 	ldr.w	r3, [r2], #4
 80031e4:	9208      	str	r2, [sp, #32]
 80031e6:	f000 83a1 	beq.w	800392c <_vfprintf_r+0xfe4>
 80031ea:	9a05      	ldr	r2, [sp, #20]
 80031ec:	4610      	mov	r0, r2
 80031ee:	17d1      	asrs	r1, r2, #31
 80031f0:	e9c3 0100 	strd	r0, r1, [r3]
 80031f4:	4657      	mov	r7, sl
 80031f6:	e64d      	b.n	8002e94 <_vfprintf_r+0x54c>
 80031f8:	f89a 6000 	ldrb.w	r6, [sl]
 80031fc:	2e68      	cmp	r6, #104	; 0x68
 80031fe:	bf03      	ittte	eq
 8003200:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003204:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003208:	f10a 0a01 	addeq.w	sl, sl, #1
 800320c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003210:	e418      	b.n	8002a44 <_vfprintf_r+0xfc>
 8003212:	9908      	ldr	r1, [sp, #32]
 8003214:	4b55      	ldr	r3, [pc, #340]	; (800336c <_vfprintf_r+0xa24>)
 8003216:	680c      	ldr	r4, [r1, #0]
 8003218:	9317      	str	r3, [sp, #92]	; 0x5c
 800321a:	f647 0230 	movw	r2, #30768	; 0x7830
 800321e:	3104      	adds	r1, #4
 8003220:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003224:	f048 0302 	orr.w	r3, r8, #2
 8003228:	9108      	str	r1, [sp, #32]
 800322a:	2500      	movs	r5, #0
 800322c:	2202      	movs	r2, #2
 800322e:	2678      	movs	r6, #120	; 0x78
 8003230:	e64b      	b.n	8002eca <_vfprintf_r+0x582>
 8003232:	f048 0808 	orr.w	r8, r8, #8
 8003236:	f89a 6000 	ldrb.w	r6, [sl]
 800323a:	e403      	b.n	8002a44 <_vfprintf_r+0xfc>
 800323c:	f048 0310 	orr.w	r3, r8, #16
 8003240:	069f      	lsls	r7, r3, #26
 8003242:	f53f acd1 	bmi.w	8002be8 <_vfprintf_r+0x2a0>
 8003246:	9908      	ldr	r1, [sp, #32]
 8003248:	06dd      	lsls	r5, r3, #27
 800324a:	f101 0204 	add.w	r2, r1, #4
 800324e:	f100 82fd 	bmi.w	800384c <_vfprintf_r+0xf04>
 8003252:	065c      	lsls	r4, r3, #25
 8003254:	9908      	ldr	r1, [sp, #32]
 8003256:	f100 8475 	bmi.w	8003b44 <_vfprintf_r+0x11fc>
 800325a:	0598      	lsls	r0, r3, #22
 800325c:	f140 82f6 	bpl.w	800384c <_vfprintf_r+0xf04>
 8003260:	f991 4000 	ldrsb.w	r4, [r1]
 8003264:	9208      	str	r2, [sp, #32]
 8003266:	17e5      	asrs	r5, r4, #31
 8003268:	4620      	mov	r0, r4
 800326a:	4629      	mov	r1, r5
 800326c:	e4c7      	b.n	8002bfe <_vfprintf_r+0x2b6>
 800326e:	9a08      	ldr	r2, [sp, #32]
 8003270:	f018 0f10 	tst.w	r8, #16
 8003274:	f102 0304 	add.w	r3, r2, #4
 8003278:	f040 82e3 	bne.w	8003842 <_vfprintf_r+0xefa>
 800327c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003280:	9a08      	ldr	r2, [sp, #32]
 8003282:	f040 8467 	bne.w	8003b54 <_vfprintf_r+0x120c>
 8003286:	f418 7f00 	tst.w	r8, #512	; 0x200
 800328a:	f000 82da 	beq.w	8003842 <_vfprintf_r+0xefa>
 800328e:	7814      	ldrb	r4, [r2, #0]
 8003290:	9308      	str	r3, [sp, #32]
 8003292:	2500      	movs	r5, #0
 8003294:	e488      	b.n	8002ba8 <_vfprintf_r+0x260>
 8003296:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800329a:	f002 fd45 	bl	8005d28 <__retarget_lock_release_recursive>
 800329e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80032a2:	9305      	str	r3, [sp, #20]
 80032a4:	e443      	b.n	8002b2e <_vfprintf_r+0x1e6>
 80032a6:	2e00      	cmp	r6, #0
 80032a8:	f43f adf8 	beq.w	8002e9c <_vfprintf_r+0x554>
 80032ac:	2300      	movs	r3, #0
 80032ae:	2101      	movs	r1, #1
 80032b0:	461a      	mov	r2, r3
 80032b2:	9104      	str	r1, [sp, #16]
 80032b4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80032b8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80032bc:	930a      	str	r3, [sp, #40]	; 0x28
 80032be:	4699      	mov	r9, r3
 80032c0:	930f      	str	r3, [sp, #60]	; 0x3c
 80032c2:	9314      	str	r3, [sp, #80]	; 0x50
 80032c4:	9311      	str	r3, [sp, #68]	; 0x44
 80032c6:	9109      	str	r1, [sp, #36]	; 0x24
 80032c8:	af3d      	add	r7, sp, #244	; 0xf4
 80032ca:	e4ce      	b.n	8002c6a <_vfprintf_r+0x322>
 80032cc:	2e65      	cmp	r6, #101	; 0x65
 80032ce:	f340 80ca 	ble.w	8003466 <_vfprintf_r+0xb1e>
 80032d2:	2200      	movs	r2, #0
 80032d4:	2300      	movs	r3, #0
 80032d6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032da:	f7fd fe95 	bl	8001008 <__aeabi_dcmpeq>
 80032de:	2800      	cmp	r0, #0
 80032e0:	f000 8169 	beq.w	80035b6 <_vfprintf_r+0xc6e>
 80032e4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032e6:	4a22      	ldr	r2, [pc, #136]	; (8003370 <_vfprintf_r+0xa28>)
 80032e8:	f8cb 2000 	str.w	r2, [fp]
 80032ec:	3301      	adds	r3, #1
 80032ee:	3401      	adds	r4, #1
 80032f0:	2201      	movs	r2, #1
 80032f2:	2b07      	cmp	r3, #7
 80032f4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80032f8:	f8cb 2004 	str.w	r2, [fp, #4]
 80032fc:	f300 8406 	bgt.w	8003b0c <_vfprintf_r+0x11c4>
 8003300:	f10b 0b08 	add.w	fp, fp, #8
 8003304:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003306:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003308:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800330a:	4293      	cmp	r3, r2
 800330c:	db03      	blt.n	8003316 <_vfprintf_r+0x9ce>
 800330e:	f018 0f01 	tst.w	r8, #1
 8003312:	f43f ad6a 	beq.w	8002dea <_vfprintf_r+0x4a2>
 8003316:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003318:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800331a:	f8cb 2000 	str.w	r2, [fp]
 800331e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003320:	f8cb 2004 	str.w	r2, [fp, #4]
 8003324:	3301      	adds	r3, #1
 8003326:	4414      	add	r4, r2
 8003328:	2b07      	cmp	r3, #7
 800332a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800332e:	f300 8517 	bgt.w	8003d60 <_vfprintf_r+0x1418>
 8003332:	f10b 0b08 	add.w	fp, fp, #8
 8003336:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003338:	1e5d      	subs	r5, r3, #1
 800333a:	2d00      	cmp	r5, #0
 800333c:	f77f ad55 	ble.w	8002dea <_vfprintf_r+0x4a2>
 8003340:	2d10      	cmp	r5, #16
 8003342:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003344:	4b0b      	ldr	r3, [pc, #44]	; (8003374 <_vfprintf_r+0xa2c>)
 8003346:	f340 82e7 	ble.w	8003918 <_vfprintf_r+0xfd0>
 800334a:	4619      	mov	r1, r3
 800334c:	2610      	movs	r6, #16
 800334e:	4623      	mov	r3, r4
 8003350:	9f03      	ldr	r7, [sp, #12]
 8003352:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003356:	460c      	mov	r4, r1
 8003358:	e014      	b.n	8003384 <_vfprintf_r+0xa3c>
 800335a:	bf00      	nop
 800335c:	7fefffff 	.word	0x7fefffff
 8003360:	0800764c 	.word	0x0800764c
 8003364:	08007648 	.word	0x08007648
 8003368:	0800766c 	.word	0x0800766c
 800336c:	08007658 	.word	0x08007658
 8003370:	08007688 	.word	0x08007688
 8003374:	0800769c 	.word	0x0800769c
 8003378:	f10b 0b08 	add.w	fp, fp, #8
 800337c:	3d10      	subs	r5, #16
 800337e:	2d10      	cmp	r5, #16
 8003380:	f340 82c7 	ble.w	8003912 <_vfprintf_r+0xfca>
 8003384:	3201      	adds	r2, #1
 8003386:	3310      	adds	r3, #16
 8003388:	2a07      	cmp	r2, #7
 800338a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800338e:	e9cb 4600 	strd	r4, r6, [fp]
 8003392:	ddf1      	ble.n	8003378 <_vfprintf_r+0xa30>
 8003394:	aa2a      	add	r2, sp, #168	; 0xa8
 8003396:	4649      	mov	r1, r9
 8003398:	4638      	mov	r0, r7
 800339a:	f003 fe03 	bl	8006fa4 <__sprint_r>
 800339e:	2800      	cmp	r0, #0
 80033a0:	d14c      	bne.n	800343c <_vfprintf_r+0xaf4>
 80033a2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80033a6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033aa:	e7e7      	b.n	800337c <_vfprintf_r+0xa34>
 80033ac:	9b06      	ldr	r3, [sp, #24]
 80033ae:	9a04      	ldr	r2, [sp, #16]
 80033b0:	1a9d      	subs	r5, r3, r2
 80033b2:	2d00      	cmp	r5, #0
 80033b4:	f77f acc9 	ble.w	8002d4a <_vfprintf_r+0x402>
 80033b8:	2d10      	cmp	r5, #16
 80033ba:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033bc:	4bbc      	ldr	r3, [pc, #752]	; (80036b0 <_vfprintf_r+0xd68>)
 80033be:	dd27      	ble.n	8003410 <_vfprintf_r+0xac8>
 80033c0:	4659      	mov	r1, fp
 80033c2:	4620      	mov	r0, r4
 80033c4:	46bb      	mov	fp, r7
 80033c6:	461c      	mov	r4, r3
 80033c8:	4637      	mov	r7, r6
 80033ca:	9e07      	ldr	r6, [sp, #28]
 80033cc:	e004      	b.n	80033d8 <_vfprintf_r+0xa90>
 80033ce:	3d10      	subs	r5, #16
 80033d0:	2d10      	cmp	r5, #16
 80033d2:	f101 0108 	add.w	r1, r1, #8
 80033d6:	dd16      	ble.n	8003406 <_vfprintf_r+0xabe>
 80033d8:	3201      	adds	r2, #1
 80033da:	3010      	adds	r0, #16
 80033dc:	2310      	movs	r3, #16
 80033de:	2a07      	cmp	r2, #7
 80033e0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80033e4:	600c      	str	r4, [r1, #0]
 80033e6:	604b      	str	r3, [r1, #4]
 80033e8:	ddf1      	ble.n	80033ce <_vfprintf_r+0xa86>
 80033ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80033ec:	4631      	mov	r1, r6
 80033ee:	9803      	ldr	r0, [sp, #12]
 80033f0:	f003 fdd8 	bl	8006fa4 <__sprint_r>
 80033f4:	2800      	cmp	r0, #0
 80033f6:	f040 80a8 	bne.w	800354a <_vfprintf_r+0xc02>
 80033fa:	3d10      	subs	r5, #16
 80033fc:	2d10      	cmp	r5, #16
 80033fe:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003402:	a92d      	add	r1, sp, #180	; 0xb4
 8003404:	dce8      	bgt.n	80033d8 <_vfprintf_r+0xa90>
 8003406:	463e      	mov	r6, r7
 8003408:	4623      	mov	r3, r4
 800340a:	465f      	mov	r7, fp
 800340c:	4604      	mov	r4, r0
 800340e:	468b      	mov	fp, r1
 8003410:	3201      	adds	r2, #1
 8003412:	442c      	add	r4, r5
 8003414:	2a07      	cmp	r2, #7
 8003416:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800341a:	e9cb 3500 	strd	r3, r5, [fp]
 800341e:	f300 8292 	bgt.w	8003946 <_vfprintf_r+0xffe>
 8003422:	f10b 0b08 	add.w	fp, fp, #8
 8003426:	e490      	b.n	8002d4a <_vfprintf_r+0x402>
 8003428:	aa2a      	add	r2, sp, #168	; 0xa8
 800342a:	9907      	ldr	r1, [sp, #28]
 800342c:	9803      	ldr	r0, [sp, #12]
 800342e:	f003 fdb9 	bl	8006fa4 <__sprint_r>
 8003432:	2800      	cmp	r0, #0
 8003434:	f43f ad23 	beq.w	8002e7e <_vfprintf_r+0x536>
 8003438:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800343c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800343e:	b111      	cbz	r1, 8003446 <_vfprintf_r+0xafe>
 8003440:	9803      	ldr	r0, [sp, #12]
 8003442:	f002 f9c1 	bl	80057c8 <_free_r>
 8003446:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800344a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800344e:	07d0      	lsls	r0, r2, #31
 8003450:	d402      	bmi.n	8003458 <_vfprintf_r+0xb10>
 8003452:	0599      	lsls	r1, r3, #22
 8003454:	f140 81d0 	bpl.w	80037f8 <_vfprintf_r+0xeb0>
 8003458:	065a      	lsls	r2, r3, #25
 800345a:	f53f ab65 	bmi.w	8002b28 <_vfprintf_r+0x1e0>
 800345e:	9805      	ldr	r0, [sp, #20]
 8003460:	b057      	add	sp, #348	; 0x15c
 8003462:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003466:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003468:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800346a:	2a01      	cmp	r2, #1
 800346c:	f104 0401 	add.w	r4, r4, #1
 8003470:	f103 0501 	add.w	r5, r3, #1
 8003474:	f10b 0608 	add.w	r6, fp, #8
 8003478:	f340 811c 	ble.w	80036b4 <_vfprintf_r+0xd6c>
 800347c:	2301      	movs	r3, #1
 800347e:	2d07      	cmp	r5, #7
 8003480:	f8cb 7000 	str.w	r7, [fp]
 8003484:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003488:	f8cb 3004 	str.w	r3, [fp, #4]
 800348c:	f300 81bb 	bgt.w	8003806 <_vfprintf_r+0xebe>
 8003490:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003492:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003494:	1c69      	adds	r1, r5, #1
 8003496:	441c      	add	r4, r3
 8003498:	2907      	cmp	r1, #7
 800349a:	910b      	str	r1, [sp, #44]	; 0x2c
 800349c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80034a0:	e9c6 2300 	strd	r2, r3, [r6]
 80034a4:	f300 81bb 	bgt.w	800381e <_vfprintf_r+0xed6>
 80034a8:	3608      	adds	r6, #8
 80034aa:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80034ac:	1c53      	adds	r3, r2, #1
 80034ae:	461d      	mov	r5, r3
 80034b0:	9509      	str	r5, [sp, #36]	; 0x24
 80034b2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80034b4:	930e      	str	r3, [sp, #56]	; 0x38
 80034b6:	2200      	movs	r2, #0
 80034b8:	2300      	movs	r3, #0
 80034ba:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80034be:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80034c2:	f106 0b08 	add.w	fp, r6, #8
 80034c6:	f7fd fd9f 	bl	8001008 <__aeabi_dcmpeq>
 80034ca:	2800      	cmp	r0, #0
 80034cc:	f040 80c2 	bne.w	8003654 <_vfprintf_r+0xd0c>
 80034d0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80034d2:	f8c6 9004 	str.w	r9, [r6, #4]
 80034d6:	3701      	adds	r7, #1
 80034d8:	444c      	add	r4, r9
 80034da:	2d07      	cmp	r5, #7
 80034dc:	6037      	str	r7, [r6, #0]
 80034de:	942c      	str	r4, [sp, #176]	; 0xb0
 80034e0:	952b      	str	r5, [sp, #172]	; 0xac
 80034e2:	f300 80f9 	bgt.w	80036d8 <_vfprintf_r+0xd90>
 80034e6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80034e8:	f106 0310 	add.w	r3, r6, #16
 80034ec:	3202      	adds	r2, #2
 80034ee:	465e      	mov	r6, fp
 80034f0:	9209      	str	r2, [sp, #36]	; 0x24
 80034f2:	469b      	mov	fp, r3
 80034f4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80034f6:	6072      	str	r2, [r6, #4]
 80034f8:	4414      	add	r4, r2
 80034fa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80034fc:	942c      	str	r4, [sp, #176]	; 0xb0
 80034fe:	ab26      	add	r3, sp, #152	; 0x98
 8003500:	2a07      	cmp	r2, #7
 8003502:	922b      	str	r2, [sp, #172]	; 0xac
 8003504:	6033      	str	r3, [r6, #0]
 8003506:	f77f ac70 	ble.w	8002dea <_vfprintf_r+0x4a2>
 800350a:	aa2a      	add	r2, sp, #168	; 0xa8
 800350c:	9907      	ldr	r1, [sp, #28]
 800350e:	9803      	ldr	r0, [sp, #12]
 8003510:	f003 fd48 	bl	8006fa4 <__sprint_r>
 8003514:	2800      	cmp	r0, #0
 8003516:	d18f      	bne.n	8003438 <_vfprintf_r+0xaf0>
 8003518:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800351a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800351e:	e464      	b.n	8002dea <_vfprintf_r+0x4a2>
 8003520:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003522:	af56      	add	r7, sp, #344	; 0x158
 8003524:	0923      	lsrs	r3, r4, #4
 8003526:	f004 010f 	and.w	r1, r4, #15
 800352a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800352e:	092a      	lsrs	r2, r5, #4
 8003530:	461c      	mov	r4, r3
 8003532:	4615      	mov	r5, r2
 8003534:	5c43      	ldrb	r3, [r0, r1]
 8003536:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800353a:	ea54 0305 	orrs.w	r3, r4, r5
 800353e:	d1f1      	bne.n	8003524 <_vfprintf_r+0xbdc>
 8003540:	9b04      	ldr	r3, [sp, #16]
 8003542:	1bdb      	subs	r3, r3, r7
 8003544:	9309      	str	r3, [sp, #36]	; 0x24
 8003546:	f7ff bb80 	b.w	8002c4a <_vfprintf_r+0x302>
 800354a:	46b1      	mov	r9, r6
 800354c:	e776      	b.n	800343c <_vfprintf_r+0xaf4>
 800354e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003550:	9907      	ldr	r1, [sp, #28]
 8003552:	9803      	ldr	r0, [sp, #12]
 8003554:	f003 fd26 	bl	8006fa4 <__sprint_r>
 8003558:	2800      	cmp	r0, #0
 800355a:	f47f af6d 	bne.w	8003438 <_vfprintf_r+0xaf0>
 800355e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003560:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003564:	f7ff bbdd 	b.w	8002d22 <_vfprintf_r+0x3da>
 8003568:	aa2a      	add	r2, sp, #168	; 0xa8
 800356a:	9907      	ldr	r1, [sp, #28]
 800356c:	9803      	ldr	r0, [sp, #12]
 800356e:	f003 fd19 	bl	8006fa4 <__sprint_r>
 8003572:	2800      	cmp	r0, #0
 8003574:	f47f af60 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8003578:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800357a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800357e:	f7ff bbe0 	b.w	8002d42 <_vfprintf_r+0x3fa>
 8003582:	4698      	mov	r8, r3
 8003584:	2d00      	cmp	r5, #0
 8003586:	bf08      	it	eq
 8003588:	2c0a      	cmpeq	r4, #10
 800358a:	f080 8170 	bcs.w	800386e <_vfprintf_r+0xf26>
 800358e:	af56      	add	r7, sp, #344	; 0x158
 8003590:	3430      	adds	r4, #48	; 0x30
 8003592:	2301      	movs	r3, #1
 8003594:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003598:	9309      	str	r3, [sp, #36]	; 0x24
 800359a:	f7ff bb56 	b.w	8002c4a <_vfprintf_r+0x302>
 800359e:	aa2a      	add	r2, sp, #168	; 0xa8
 80035a0:	9907      	ldr	r1, [sp, #28]
 80035a2:	9803      	ldr	r0, [sp, #12]
 80035a4:	f003 fcfe 	bl	8006fa4 <__sprint_r>
 80035a8:	2800      	cmp	r0, #0
 80035aa:	f47f af45 	bne.w	8003438 <_vfprintf_r+0xaf0>
 80035ae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035b0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035b4:	e406      	b.n	8002dc4 <_vfprintf_r+0x47c>
 80035b6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80035b8:	2b00      	cmp	r3, #0
 80035ba:	f340 8273 	ble.w	8003aa4 <_vfprintf_r+0x115c>
 80035be:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80035c2:	4293      	cmp	r3, r2
 80035c4:	bfa8      	it	ge
 80035c6:	4613      	movge	r3, r2
 80035c8:	2b00      	cmp	r3, #0
 80035ca:	461d      	mov	r5, r3
 80035cc:	dd0d      	ble.n	80035ea <_vfprintf_r+0xca2>
 80035ce:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80035d0:	f8cb 7000 	str.w	r7, [fp]
 80035d4:	3301      	adds	r3, #1
 80035d6:	442c      	add	r4, r5
 80035d8:	2b07      	cmp	r3, #7
 80035da:	942c      	str	r4, [sp, #176]	; 0xb0
 80035dc:	f8cb 5004 	str.w	r5, [fp, #4]
 80035e0:	932b      	str	r3, [sp, #172]	; 0xac
 80035e2:	f300 82c1 	bgt.w	8003b68 <_vfprintf_r+0x1220>
 80035e6:	f10b 0b08 	add.w	fp, fp, #8
 80035ea:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80035ec:	2d00      	cmp	r5, #0
 80035ee:	bfa8      	it	ge
 80035f0:	1b5b      	subge	r3, r3, r5
 80035f2:	2b00      	cmp	r3, #0
 80035f4:	461d      	mov	r5, r3
 80035f6:	f340 8099 	ble.w	800372c <_vfprintf_r+0xde4>
 80035fa:	2d10      	cmp	r5, #16
 80035fc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035fe:	4b2c      	ldr	r3, [pc, #176]	; (80036b0 <_vfprintf_r+0xd68>)
 8003600:	f340 83db 	ble.w	8003dba <_vfprintf_r+0x1472>
 8003604:	4618      	mov	r0, r3
 8003606:	4621      	mov	r1, r4
 8003608:	465b      	mov	r3, fp
 800360a:	2610      	movs	r6, #16
 800360c:	46bb      	mov	fp, r7
 800360e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003612:	9c07      	ldr	r4, [sp, #28]
 8003614:	4607      	mov	r7, r0
 8003616:	e004      	b.n	8003622 <_vfprintf_r+0xcda>
 8003618:	3308      	adds	r3, #8
 800361a:	3d10      	subs	r5, #16
 800361c:	2d10      	cmp	r5, #16
 800361e:	f340 83c7 	ble.w	8003db0 <_vfprintf_r+0x1468>
 8003622:	3201      	adds	r2, #1
 8003624:	3110      	adds	r1, #16
 8003626:	2a07      	cmp	r2, #7
 8003628:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800362c:	e9c3 7600 	strd	r7, r6, [r3]
 8003630:	ddf2      	ble.n	8003618 <_vfprintf_r+0xcd0>
 8003632:	aa2a      	add	r2, sp, #168	; 0xa8
 8003634:	4621      	mov	r1, r4
 8003636:	4648      	mov	r0, r9
 8003638:	f003 fcb4 	bl	8006fa4 <__sprint_r>
 800363c:	2800      	cmp	r0, #0
 800363e:	f040 84a5 	bne.w	8003f8c <_vfprintf_r+0x1644>
 8003642:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003646:	ab2d      	add	r3, sp, #180	; 0xb4
 8003648:	e7e7      	b.n	800361a <_vfprintf_r+0xcd2>
 800364a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800364e:	af56      	add	r7, sp, #344	; 0x158
 8003650:	f7ff bafb 	b.w	8002c4a <_vfprintf_r+0x302>
 8003654:	f1b9 0f00 	cmp.w	r9, #0
 8003658:	f77f af4c 	ble.w	80034f4 <_vfprintf_r+0xbac>
 800365c:	f1b9 0f10 	cmp.w	r9, #16
 8003660:	4b13      	ldr	r3, [pc, #76]	; (80036b0 <_vfprintf_r+0xd68>)
 8003662:	f340 8659 	ble.w	8004318 <_vfprintf_r+0x19d0>
 8003666:	4619      	mov	r1, r3
 8003668:	4622      	mov	r2, r4
 800366a:	4633      	mov	r3, r6
 800366c:	2710      	movs	r7, #16
 800366e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003672:	9c07      	ldr	r4, [sp, #28]
 8003674:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003676:	460e      	mov	r6, r1
 8003678:	e007      	b.n	800368a <_vfprintf_r+0xd42>
 800367a:	3308      	adds	r3, #8
 800367c:	f1a9 0910 	sub.w	r9, r9, #16
 8003680:	f1b9 0f10 	cmp.w	r9, #16
 8003684:	f340 8353 	ble.w	8003d2e <_vfprintf_r+0x13e6>
 8003688:	3501      	adds	r5, #1
 800368a:	3210      	adds	r2, #16
 800368c:	2d07      	cmp	r5, #7
 800368e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003692:	e9c3 6700 	strd	r6, r7, [r3]
 8003696:	ddf0      	ble.n	800367a <_vfprintf_r+0xd32>
 8003698:	aa2a      	add	r2, sp, #168	; 0xa8
 800369a:	4621      	mov	r1, r4
 800369c:	4658      	mov	r0, fp
 800369e:	f003 fc81 	bl	8006fa4 <__sprint_r>
 80036a2:	2800      	cmp	r0, #0
 80036a4:	f040 8472 	bne.w	8003f8c <_vfprintf_r+0x1644>
 80036a8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80036ac:	ab2d      	add	r3, sp, #180	; 0xb4
 80036ae:	e7e5      	b.n	800367c <_vfprintf_r+0xd34>
 80036b0:	0800769c 	.word	0x0800769c
 80036b4:	f018 0f01 	tst.w	r8, #1
 80036b8:	f47f aee0 	bne.w	800347c <_vfprintf_r+0xb34>
 80036bc:	2201      	movs	r2, #1
 80036be:	2d07      	cmp	r5, #7
 80036c0:	f8cb 7000 	str.w	r7, [fp]
 80036c4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80036c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80036cc:	dc04      	bgt.n	80036d8 <_vfprintf_r+0xd90>
 80036ce:	3302      	adds	r3, #2
 80036d0:	9309      	str	r3, [sp, #36]	; 0x24
 80036d2:	f10b 0b10 	add.w	fp, fp, #16
 80036d6:	e70d      	b.n	80034f4 <_vfprintf_r+0xbac>
 80036d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80036da:	9907      	ldr	r1, [sp, #28]
 80036dc:	9803      	ldr	r0, [sp, #12]
 80036de:	f003 fc61 	bl	8006fa4 <__sprint_r>
 80036e2:	2800      	cmp	r0, #0
 80036e4:	f47f aea8 	bne.w	8003438 <_vfprintf_r+0xaf0>
 80036e8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80036ec:	3301      	adds	r3, #1
 80036ee:	9309      	str	r3, [sp, #36]	; 0x24
 80036f0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80036f4:	ae2d      	add	r6, sp, #180	; 0xb4
 80036f6:	e6fd      	b.n	80034f4 <_vfprintf_r+0xbac>
 80036f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80036fa:	9907      	ldr	r1, [sp, #28]
 80036fc:	9803      	ldr	r0, [sp, #12]
 80036fe:	f003 fc51 	bl	8006fa4 <__sprint_r>
 8003702:	2800      	cmp	r0, #0
 8003704:	f47f ae98 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8003708:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800370c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800370e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003712:	f7ff baf6 	b.w	8002d02 <_vfprintf_r+0x3ba>
 8003716:	aa2a      	add	r2, sp, #168	; 0xa8
 8003718:	9907      	ldr	r1, [sp, #28]
 800371a:	9803      	ldr	r0, [sp, #12]
 800371c:	f003 fc42 	bl	8006fa4 <__sprint_r>
 8003720:	2800      	cmp	r0, #0
 8003722:	f47f ae89 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8003726:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003728:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800372c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800372e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003732:	443b      	add	r3, r7
 8003734:	4699      	mov	r9, r3
 8003736:	f040 8357 	bne.w	8003de8 <_vfprintf_r+0x14a0>
 800373a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800373c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800373e:	4293      	cmp	r3, r2
 8003740:	db49      	blt.n	80037d6 <_vfprintf_r+0xe8e>
 8003742:	f018 0f01 	tst.w	r8, #1
 8003746:	d146      	bne.n	80037d6 <_vfprintf_r+0xe8e>
 8003748:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800374a:	18bd      	adds	r5, r7, r2
 800374c:	eba5 0509 	sub.w	r5, r5, r9
 8003750:	1ad3      	subs	r3, r2, r3
 8003752:	429d      	cmp	r5, r3
 8003754:	bfa8      	it	ge
 8003756:	461d      	movge	r5, r3
 8003758:	2d00      	cmp	r5, #0
 800375a:	dd0d      	ble.n	8003778 <_vfprintf_r+0xe30>
 800375c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800375e:	f8cb 9000 	str.w	r9, [fp]
 8003762:	3201      	adds	r2, #1
 8003764:	442c      	add	r4, r5
 8003766:	2a07      	cmp	r2, #7
 8003768:	942c      	str	r4, [sp, #176]	; 0xb0
 800376a:	f8cb 5004 	str.w	r5, [fp, #4]
 800376e:	922b      	str	r2, [sp, #172]	; 0xac
 8003770:	f300 8462 	bgt.w	8004038 <_vfprintf_r+0x16f0>
 8003774:	f10b 0b08 	add.w	fp, fp, #8
 8003778:	2d00      	cmp	r5, #0
 800377a:	bfac      	ite	ge
 800377c:	1b5d      	subge	r5, r3, r5
 800377e:	461d      	movlt	r5, r3
 8003780:	2d00      	cmp	r5, #0
 8003782:	f77f ab32 	ble.w	8002dea <_vfprintf_r+0x4a2>
 8003786:	2d10      	cmp	r5, #16
 8003788:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800378a:	4bc5      	ldr	r3, [pc, #788]	; (8003aa0 <_vfprintf_r+0x1158>)
 800378c:	f340 80c4 	ble.w	8003918 <_vfprintf_r+0xfd0>
 8003790:	4619      	mov	r1, r3
 8003792:	2610      	movs	r6, #16
 8003794:	4623      	mov	r3, r4
 8003796:	9f03      	ldr	r7, [sp, #12]
 8003798:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800379c:	460c      	mov	r4, r1
 800379e:	e005      	b.n	80037ac <_vfprintf_r+0xe64>
 80037a0:	f10b 0b08 	add.w	fp, fp, #8
 80037a4:	3d10      	subs	r5, #16
 80037a6:	2d10      	cmp	r5, #16
 80037a8:	f340 80b3 	ble.w	8003912 <_vfprintf_r+0xfca>
 80037ac:	3201      	adds	r2, #1
 80037ae:	3310      	adds	r3, #16
 80037b0:	2a07      	cmp	r2, #7
 80037b2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80037b6:	e9cb 4600 	strd	r4, r6, [fp]
 80037ba:	ddf1      	ble.n	80037a0 <_vfprintf_r+0xe58>
 80037bc:	aa2a      	add	r2, sp, #168	; 0xa8
 80037be:	4649      	mov	r1, r9
 80037c0:	4638      	mov	r0, r7
 80037c2:	f003 fbef 	bl	8006fa4 <__sprint_r>
 80037c6:	2800      	cmp	r0, #0
 80037c8:	f47f ae38 	bne.w	800343c <_vfprintf_r+0xaf4>
 80037cc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80037d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037d4:	e7e6      	b.n	80037a4 <_vfprintf_r+0xe5c>
 80037d6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80037d8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80037da:	f8cb 1000 	str.w	r1, [fp]
 80037de:	9915      	ldr	r1, [sp, #84]	; 0x54
 80037e0:	f8cb 1004 	str.w	r1, [fp, #4]
 80037e4:	3201      	adds	r2, #1
 80037e6:	440c      	add	r4, r1
 80037e8:	2a07      	cmp	r2, #7
 80037ea:	942c      	str	r4, [sp, #176]	; 0xb0
 80037ec:	922b      	str	r2, [sp, #172]	; 0xac
 80037ee:	f300 828c 	bgt.w	8003d0a <_vfprintf_r+0x13c2>
 80037f2:	f10b 0b08 	add.w	fp, fp, #8
 80037f6:	e7a7      	b.n	8003748 <_vfprintf_r+0xe00>
 80037f8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80037fc:	f002 fa94 	bl	8005d28 <__retarget_lock_release_recursive>
 8003800:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003804:	e628      	b.n	8003458 <_vfprintf_r+0xb10>
 8003806:	aa2a      	add	r2, sp, #168	; 0xa8
 8003808:	9907      	ldr	r1, [sp, #28]
 800380a:	9803      	ldr	r0, [sp, #12]
 800380c:	f003 fbca 	bl	8006fa4 <__sprint_r>
 8003810:	2800      	cmp	r0, #0
 8003812:	f47f ae11 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8003816:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800381a:	ae2d      	add	r6, sp, #180	; 0xb4
 800381c:	e638      	b.n	8003490 <_vfprintf_r+0xb48>
 800381e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003820:	9907      	ldr	r1, [sp, #28]
 8003822:	9803      	ldr	r0, [sp, #12]
 8003824:	f003 fbbe 	bl	8006fa4 <__sprint_r>
 8003828:	2800      	cmp	r0, #0
 800382a:	f47f ae05 	bne.w	8003438 <_vfprintf_r+0xaf0>
 800382e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003832:	ae2d      	add	r6, sp, #180	; 0xb4
 8003834:	930b      	str	r3, [sp, #44]	; 0x2c
 8003836:	e638      	b.n	80034aa <_vfprintf_r+0xb62>
 8003838:	6814      	ldr	r4, [r2, #0]
 800383a:	9308      	str	r3, [sp, #32]
 800383c:	2500      	movs	r5, #0
 800383e:	f7ff bb95 	b.w	8002f6c <_vfprintf_r+0x624>
 8003842:	6814      	ldr	r4, [r2, #0]
 8003844:	9308      	str	r3, [sp, #32]
 8003846:	2500      	movs	r5, #0
 8003848:	f7ff b9ae 	b.w	8002ba8 <_vfprintf_r+0x260>
 800384c:	680c      	ldr	r4, [r1, #0]
 800384e:	9208      	str	r2, [sp, #32]
 8003850:	17e5      	asrs	r5, r4, #31
 8003852:	4620      	mov	r0, r4
 8003854:	4629      	mov	r1, r5
 8003856:	f7ff b9d2 	b.w	8002bfe <_vfprintf_r+0x2b6>
 800385a:	6814      	ldr	r4, [r2, #0]
 800385c:	9108      	str	r1, [sp, #32]
 800385e:	2201      	movs	r2, #1
 8003860:	2500      	movs	r5, #0
 8003862:	f7ff bb32 	b.w	8002eca <_vfprintf_r+0x582>
 8003866:	2a01      	cmp	r2, #1
 8003868:	f47f ab3c 	bne.w	8002ee4 <_vfprintf_r+0x59c>
 800386c:	e68f      	b.n	800358e <_vfprintf_r+0xc46>
 800386e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003872:	2200      	movs	r2, #0
 8003874:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003878:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800387c:	af56      	add	r7, sp, #344	; 0x158
 800387e:	4692      	mov	sl, r2
 8003880:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003884:	461e      	mov	r6, r3
 8003886:	e00a      	b.n	800389e <_vfprintf_r+0xf56>
 8003888:	2300      	movs	r3, #0
 800388a:	4620      	mov	r0, r4
 800388c:	4629      	mov	r1, r5
 800388e:	220a      	movs	r2, #10
 8003890:	f7fc fcb6 	bl	8000200 <__aeabi_uldivmod>
 8003894:	4604      	mov	r4, r0
 8003896:	460d      	mov	r5, r1
 8003898:	ea54 0305 	orrs.w	r3, r4, r5
 800389c:	d029      	beq.n	80038f2 <_vfprintf_r+0xfaa>
 800389e:	220a      	movs	r2, #10
 80038a0:	2300      	movs	r3, #0
 80038a2:	4620      	mov	r0, r4
 80038a4:	4629      	mov	r1, r5
 80038a6:	f7fc fcab 	bl	8000200 <__aeabi_uldivmod>
 80038aa:	3230      	adds	r2, #48	; 0x30
 80038ac:	f807 2c01 	strb.w	r2, [r7, #-1]
 80038b0:	f10a 0a01 	add.w	sl, sl, #1
 80038b4:	3f01      	subs	r7, #1
 80038b6:	2e00      	cmp	r6, #0
 80038b8:	d0e6      	beq.n	8003888 <_vfprintf_r+0xf40>
 80038ba:	f898 3000 	ldrb.w	r3, [r8]
 80038be:	459a      	cmp	sl, r3
 80038c0:	d1e2      	bne.n	8003888 <_vfprintf_r+0xf40>
 80038c2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80038c6:	d0df      	beq.n	8003888 <_vfprintf_r+0xf40>
 80038c8:	2d00      	cmp	r5, #0
 80038ca:	bf08      	it	eq
 80038cc:	2c0a      	cmpeq	r4, #10
 80038ce:	d3db      	bcc.n	8003888 <_vfprintf_r+0xf40>
 80038d0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80038d2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80038d4:	1aff      	subs	r7, r7, r3
 80038d6:	461a      	mov	r2, r3
 80038d8:	4638      	mov	r0, r7
 80038da:	f003 faf5 	bl	8006ec8 <strncpy>
 80038de:	f898 3001 	ldrb.w	r3, [r8, #1]
 80038e2:	2b00      	cmp	r3, #0
 80038e4:	f000 8496 	beq.w	8004214 <_vfprintf_r+0x18cc>
 80038e8:	f108 0801 	add.w	r8, r8, #1
 80038ec:	f04f 0a00 	mov.w	sl, #0
 80038f0:	e7ca      	b.n	8003888 <_vfprintf_r+0xf40>
 80038f2:	9b04      	ldr	r3, [sp, #16]
 80038f4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80038f8:	1bdb      	subs	r3, r3, r7
 80038fa:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80038fe:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003900:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003904:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003908:	9309      	str	r3, [sp, #36]	; 0x24
 800390a:	f7ff b99e 	b.w	8002c4a <_vfprintf_r+0x302>
 800390e:	46c1      	mov	r9, r8
 8003910:	e594      	b.n	800343c <_vfprintf_r+0xaf4>
 8003912:	4621      	mov	r1, r4
 8003914:	461c      	mov	r4, r3
 8003916:	460b      	mov	r3, r1
 8003918:	3201      	adds	r2, #1
 800391a:	442c      	add	r4, r5
 800391c:	2a07      	cmp	r2, #7
 800391e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003922:	e9cb 3500 	strd	r3, r5, [fp]
 8003926:	f77f aa5e 	ble.w	8002de6 <_vfprintf_r+0x49e>
 800392a:	e5ee      	b.n	800350a <_vfprintf_r+0xbc2>
 800392c:	f018 0f10 	tst.w	r8, #16
 8003930:	f040 80f8 	bne.w	8003b24 <_vfprintf_r+0x11dc>
 8003934:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003938:	f000 8351 	beq.w	8003fde <_vfprintf_r+0x1696>
 800393c:	9a05      	ldr	r2, [sp, #20]
 800393e:	801a      	strh	r2, [r3, #0]
 8003940:	4657      	mov	r7, sl
 8003942:	f7ff baa7 	b.w	8002e94 <_vfprintf_r+0x54c>
 8003946:	aa2a      	add	r2, sp, #168	; 0xa8
 8003948:	9907      	ldr	r1, [sp, #28]
 800394a:	9803      	ldr	r0, [sp, #12]
 800394c:	f003 fb2a 	bl	8006fa4 <__sprint_r>
 8003950:	2800      	cmp	r0, #0
 8003952:	f47f ad71 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8003956:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003958:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800395c:	f7ff b9f5 	b.w	8002d4a <_vfprintf_r+0x402>
 8003960:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003964:	4602      	mov	r2, r0
 8003966:	460b      	mov	r3, r1
 8003968:	f7fd fb80 	bl	800106c <__aeabi_dcmpun>
 800396c:	2800      	cmp	r0, #0
 800396e:	f040 8491 	bne.w	8004294 <_vfprintf_r+0x194c>
 8003972:	2e61      	cmp	r6, #97	; 0x61
 8003974:	f000 8111 	beq.w	8003b9a <_vfprintf_r+0x1252>
 8003978:	2e41      	cmp	r6, #65	; 0x41
 800397a:	f000 8377 	beq.w	800406c <_vfprintf_r+0x1724>
 800397e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003982:	f026 0220 	bic.w	r2, r6, #32
 8003986:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800398a:	930e      	str	r3, [sp, #56]	; 0x38
 800398c:	9204      	str	r2, [sp, #16]
 800398e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003990:	f000 842d 	beq.w	80041ee <_vfprintf_r+0x18a6>
 8003994:	2a47      	cmp	r2, #71	; 0x47
 8003996:	f000 8424 	beq.w	80041e2 <_vfprintf_r+0x189a>
 800399a:	2b00      	cmp	r3, #0
 800399c:	f2c0 82f9 	blt.w	8003f92 <_vfprintf_r+0x164a>
 80039a0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80039a4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80039a8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80039ac:	2e66      	cmp	r6, #102	; 0x66
 80039ae:	f000 83eb 	beq.w	8004188 <_vfprintf_r+0x1840>
 80039b2:	2e46      	cmp	r6, #70	; 0x46
 80039b4:	f000 847e 	beq.w	80042b4 <_vfprintf_r+0x196c>
 80039b8:	9b04      	ldr	r3, [sp, #16]
 80039ba:	9803      	ldr	r0, [sp, #12]
 80039bc:	2b45      	cmp	r3, #69	; 0x45
 80039be:	bf0c      	ite	eq
 80039c0:	f109 0501 	addeq.w	r5, r9, #1
 80039c4:	464d      	movne	r5, r9
 80039c6:	aa28      	add	r2, sp, #160	; 0xa0
 80039c8:	ab25      	add	r3, sp, #148	; 0x94
 80039ca:	e9cd 3200 	strd	r3, r2, [sp]
 80039ce:	2102      	movs	r1, #2
 80039d0:	ab24      	add	r3, sp, #144	; 0x90
 80039d2:	462a      	mov	r2, r5
 80039d4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80039d8:	f000 fe3e 	bl	8004658 <_dtoa_r>
 80039dc:	2e67      	cmp	r6, #103	; 0x67
 80039de:	4607      	mov	r7, r0
 80039e0:	f040 849c 	bne.w	800431c <_vfprintf_r+0x19d4>
 80039e4:	f018 0f01 	tst.w	r8, #1
 80039e8:	f040 83f9 	bne.w	80041de <_vfprintf_r+0x1896>
 80039ec:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80039ee:	4640      	mov	r0, r8
 80039f0:	1bdb      	subs	r3, r3, r7
 80039f2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80039f6:	9310      	str	r3, [sp, #64]	; 0x40
 80039f8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039fa:	9311      	str	r3, [sp, #68]	; 0x44
 80039fc:	9b04      	ldr	r3, [sp, #16]
 80039fe:	2b47      	cmp	r3, #71	; 0x47
 8003a00:	f000 81e7 	beq.w	8003dd2 <_vfprintf_r+0x148a>
 8003a04:	9b04      	ldr	r3, [sp, #16]
 8003a06:	2b46      	cmp	r3, #70	; 0x46
 8003a08:	f000 8300 	beq.w	800400c <_vfprintf_r+0x16c4>
 8003a0c:	9904      	ldr	r1, [sp, #16]
 8003a0e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a10:	b2f2      	uxtb	r2, r6
 8003a12:	2941      	cmp	r1, #65	; 0x41
 8003a14:	bf08      	it	eq
 8003a16:	320f      	addeq	r2, #15
 8003a18:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003a1c:	bf06      	itte	eq
 8003a1e:	b2d2      	uxtbeq	r2, r2
 8003a20:	2101      	moveq	r1, #1
 8003a22:	2100      	movne	r1, #0
 8003a24:	2b00      	cmp	r3, #0
 8003a26:	9324      	str	r3, [sp, #144]	; 0x90
 8003a28:	bfb8      	it	lt
 8003a2a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003a2c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003a30:	bfba      	itte	lt
 8003a32:	f1c3 0301 	rsblt	r3, r3, #1
 8003a36:	222d      	movlt	r2, #45	; 0x2d
 8003a38:	222b      	movge	r2, #43	; 0x2b
 8003a3a:	2b09      	cmp	r3, #9
 8003a3c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003a40:	f300 83f9 	bgt.w	8004236 <_vfprintf_r+0x18ee>
 8003a44:	2900      	cmp	r1, #0
 8003a46:	f040 8487 	bne.w	8004358 <_vfprintf_r+0x1a10>
 8003a4a:	2230      	movs	r2, #48	; 0x30
 8003a4c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003a50:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003a54:	3330      	adds	r3, #48	; 0x30
 8003a56:	7013      	strb	r3, [r2, #0]
 8003a58:	1c53      	adds	r3, r2, #1
 8003a5a:	aa26      	add	r2, sp, #152	; 0x98
 8003a5c:	1a9b      	subs	r3, r3, r2
 8003a5e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003a60:	9319      	str	r3, [sp, #100]	; 0x64
 8003a62:	2a01      	cmp	r2, #1
 8003a64:	4413      	add	r3, r2
 8003a66:	9309      	str	r3, [sp, #36]	; 0x24
 8003a68:	f340 8442 	ble.w	80042f0 <_vfprintf_r+0x19a8>
 8003a6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a6e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a70:	4413      	add	r3, r2
 8003a72:	9309      	str	r3, [sp, #36]	; 0x24
 8003a74:	2300      	movs	r3, #0
 8003a76:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a78:	9314      	str	r3, [sp, #80]	; 0x50
 8003a7a:	9311      	str	r3, [sp, #68]	; 0x44
 8003a7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a7e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003a82:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a86:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003a8a:	9304      	str	r3, [sp, #16]
 8003a8c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003a8e:	2b00      	cmp	r3, #0
 8003a90:	f040 8275 	bne.w	8003f7e <_vfprintf_r+0x1636>
 8003a94:	4699      	mov	r9, r3
 8003a96:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003a9a:	f7ff b8e2 	b.w	8002c62 <_vfprintf_r+0x31a>
 8003a9e:	bf00      	nop
 8003aa0:	0800769c 	.word	0x0800769c
 8003aa4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003aa6:	49bd      	ldr	r1, [pc, #756]	; (8003d9c <_vfprintf_r+0x1454>)
 8003aa8:	f8cb 1000 	str.w	r1, [fp]
 8003aac:	3201      	adds	r2, #1
 8003aae:	3401      	adds	r4, #1
 8003ab0:	2101      	movs	r1, #1
 8003ab2:	2a07      	cmp	r2, #7
 8003ab4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ab8:	f8cb 1004 	str.w	r1, [fp, #4]
 8003abc:	dc60      	bgt.n	8003b80 <_vfprintf_r+0x1238>
 8003abe:	f10b 0b08 	add.w	fp, fp, #8
 8003ac2:	b92b      	cbnz	r3, 8003ad0 <_vfprintf_r+0x1188>
 8003ac4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003ac6:	b91a      	cbnz	r2, 8003ad0 <_vfprintf_r+0x1188>
 8003ac8:	f018 0f01 	tst.w	r8, #1
 8003acc:	f43f a98d 	beq.w	8002dea <_vfprintf_r+0x4a2>
 8003ad0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003ad2:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003ad4:	f8cb 1000 	str.w	r1, [fp]
 8003ad8:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003ada:	f8cb 1004 	str.w	r1, [fp, #4]
 8003ade:	3201      	adds	r2, #1
 8003ae0:	440c      	add	r4, r1
 8003ae2:	2a07      	cmp	r2, #7
 8003ae4:	942c      	str	r4, [sp, #176]	; 0xb0
 8003ae6:	922b      	str	r2, [sp, #172]	; 0xac
 8003ae8:	f300 8282 	bgt.w	8003ff0 <_vfprintf_r+0x16a8>
 8003aec:	f10b 0b08 	add.w	fp, fp, #8
 8003af0:	2b00      	cmp	r3, #0
 8003af2:	f2c0 82e7 	blt.w	80040c4 <_vfprintf_r+0x177c>
 8003af6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003af8:	3201      	adds	r2, #1
 8003afa:	441c      	add	r4, r3
 8003afc:	2a07      	cmp	r2, #7
 8003afe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b02:	e9cb 7300 	strd	r7, r3, [fp]
 8003b06:	f77f a96e 	ble.w	8002de6 <_vfprintf_r+0x49e>
 8003b0a:	e4fe      	b.n	800350a <_vfprintf_r+0xbc2>
 8003b0c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b0e:	9907      	ldr	r1, [sp, #28]
 8003b10:	9803      	ldr	r0, [sp, #12]
 8003b12:	f003 fa47 	bl	8006fa4 <__sprint_r>
 8003b16:	2800      	cmp	r0, #0
 8003b18:	f47f ac8e 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8003b1c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b20:	f7ff bbf0 	b.w	8003304 <_vfprintf_r+0x9bc>
 8003b24:	9a05      	ldr	r2, [sp, #20]
 8003b26:	601a      	str	r2, [r3, #0]
 8003b28:	4657      	mov	r7, sl
 8003b2a:	f7ff b9b3 	b.w	8002e94 <_vfprintf_r+0x54c>
 8003b2e:	8814      	ldrh	r4, [r2, #0]
 8003b30:	9108      	str	r1, [sp, #32]
 8003b32:	2500      	movs	r5, #0
 8003b34:	2201      	movs	r2, #1
 8003b36:	f7ff b9c8 	b.w	8002eca <_vfprintf_r+0x582>
 8003b3a:	8814      	ldrh	r4, [r2, #0]
 8003b3c:	9308      	str	r3, [sp, #32]
 8003b3e:	2500      	movs	r5, #0
 8003b40:	f7ff ba14 	b.w	8002f6c <_vfprintf_r+0x624>
 8003b44:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003b48:	9208      	str	r2, [sp, #32]
 8003b4a:	17e5      	asrs	r5, r4, #31
 8003b4c:	4620      	mov	r0, r4
 8003b4e:	4629      	mov	r1, r5
 8003b50:	f7ff b855 	b.w	8002bfe <_vfprintf_r+0x2b6>
 8003b54:	8814      	ldrh	r4, [r2, #0]
 8003b56:	9308      	str	r3, [sp, #32]
 8003b58:	2500      	movs	r5, #0
 8003b5a:	f7ff b825 	b.w	8002ba8 <_vfprintf_r+0x260>
 8003b5e:	222d      	movs	r2, #45	; 0x2d
 8003b60:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003b64:	f7ff baa2 	b.w	80030ac <_vfprintf_r+0x764>
 8003b68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b6a:	9907      	ldr	r1, [sp, #28]
 8003b6c:	9803      	ldr	r0, [sp, #12]
 8003b6e:	f003 fa19 	bl	8006fa4 <__sprint_r>
 8003b72:	2800      	cmp	r0, #0
 8003b74:	f47f ac60 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8003b78:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b7a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b7e:	e534      	b.n	80035ea <_vfprintf_r+0xca2>
 8003b80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b82:	9907      	ldr	r1, [sp, #28]
 8003b84:	9803      	ldr	r0, [sp, #12]
 8003b86:	f003 fa0d 	bl	8006fa4 <__sprint_r>
 8003b8a:	2800      	cmp	r0, #0
 8003b8c:	f47f ac54 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8003b90:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b92:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b94:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b98:	e793      	b.n	8003ac2 <_vfprintf_r+0x117a>
 8003b9a:	2330      	movs	r3, #48	; 0x30
 8003b9c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003ba0:	2378      	movs	r3, #120	; 0x78
 8003ba2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003ba6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003baa:	f048 0402 	orr.w	r4, r8, #2
 8003bae:	f300 82b0 	bgt.w	8004112 <_vfprintf_r+0x17ca>
 8003bb2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003bb6:	930e      	str	r3, [sp, #56]	; 0x38
 8003bb8:	f026 0320 	bic.w	r3, r6, #32
 8003bbc:	9304      	str	r3, [sp, #16]
 8003bbe:	2200      	movs	r2, #0
 8003bc0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003bc2:	920a      	str	r2, [sp, #40]	; 0x28
 8003bc4:	46a0      	mov	r8, r4
 8003bc6:	af3d      	add	r7, sp, #244	; 0xf4
 8003bc8:	2b00      	cmp	r3, #0
 8003bca:	f2c0 81e3 	blt.w	8003f94 <_vfprintf_r+0x164c>
 8003bce:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003bd2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003bd6:	2300      	movs	r3, #0
 8003bd8:	930b      	str	r3, [sp, #44]	; 0x2c
 8003bda:	2e61      	cmp	r6, #97	; 0x61
 8003bdc:	f000 8255 	beq.w	800408a <_vfprintf_r+0x1742>
 8003be0:	2e41      	cmp	r6, #65	; 0x41
 8003be2:	f47f aee3 	bne.w	80039ac <_vfprintf_r+0x1064>
 8003be6:	a824      	add	r0, sp, #144	; 0x90
 8003be8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003bec:	f003 f8e2 	bl	8006db4 <frexp>
 8003bf0:	2200      	movs	r2, #0
 8003bf2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003bf6:	ec51 0b10 	vmov	r0, r1, d0
 8003bfa:	f7fc ff9d 	bl	8000b38 <__aeabi_dmul>
 8003bfe:	2200      	movs	r2, #0
 8003c00:	2300      	movs	r3, #0
 8003c02:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003c06:	f7fd f9ff 	bl	8001008 <__aeabi_dcmpeq>
 8003c0a:	2800      	cmp	r0, #0
 8003c0c:	f040 8305 	bne.w	800421a <_vfprintf_r+0x18d2>
 8003c10:	4b63      	ldr	r3, [pc, #396]	; (8003da0 <_vfprintf_r+0x1458>)
 8003c12:	9309      	str	r3, [sp, #36]	; 0x24
 8003c14:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003c18:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003c1c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003c20:	9721      	str	r7, [sp, #132]	; 0x84
 8003c22:	46b9      	mov	r9, r7
 8003c24:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003c28:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003c2c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003c30:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003c34:	e003      	b.n	8003c3e <_vfprintf_r+0x12f6>
 8003c36:	f7fd f9e7 	bl	8001008 <__aeabi_dcmpeq>
 8003c3a:	bb20      	cbnz	r0, 8003c86 <_vfprintf_r+0x133e>
 8003c3c:	46a9      	mov	r9, r5
 8003c3e:	2200      	movs	r2, #0
 8003c40:	4b58      	ldr	r3, [pc, #352]	; (8003da4 <_vfprintf_r+0x145c>)
 8003c42:	4630      	mov	r0, r6
 8003c44:	4639      	mov	r1, r7
 8003c46:	f7fc ff77 	bl	8000b38 <__aeabi_dmul>
 8003c4a:	460f      	mov	r7, r1
 8003c4c:	4606      	mov	r6, r0
 8003c4e:	f7fd fa23 	bl	8001098 <__aeabi_d2iz>
 8003c52:	4680      	mov	r8, r0
 8003c54:	f7fc ff06 	bl	8000a64 <__aeabi_i2d>
 8003c58:	4602      	mov	r2, r0
 8003c5a:	460b      	mov	r3, r1
 8003c5c:	4630      	mov	r0, r6
 8003c5e:	4639      	mov	r1, r7
 8003c60:	f7fc fdb2 	bl	80007c8 <__aeabi_dsub>
 8003c64:	464d      	mov	r5, r9
 8003c66:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003c6a:	f805 cb01 	strb.w	ip, [r5], #1
 8003c6e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003c72:	46a3      	mov	fp, r4
 8003c74:	4606      	mov	r6, r0
 8003c76:	460f      	mov	r7, r1
 8003c78:	f04f 0200 	mov.w	r2, #0
 8003c7c:	f04f 0300 	mov.w	r3, #0
 8003c80:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003c84:	d1d7      	bne.n	8003c36 <_vfprintf_r+0x12ee>
 8003c86:	4630      	mov	r0, r6
 8003c88:	4639      	mov	r1, r7
 8003c8a:	2200      	movs	r2, #0
 8003c8c:	4b46      	ldr	r3, [pc, #280]	; (8003da8 <_vfprintf_r+0x1460>)
 8003c8e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003c92:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003c94:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003c98:	4644      	mov	r4, r8
 8003c9a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003c9e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003ca2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003ca6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003caa:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003cac:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003cb0:	f7fd f9d2 	bl	8001058 <__aeabi_dcmpgt>
 8003cb4:	2800      	cmp	r0, #0
 8003cb6:	f040 8176 	bne.w	8003fa6 <_vfprintf_r+0x165e>
 8003cba:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003cbe:	2200      	movs	r2, #0
 8003cc0:	4b39      	ldr	r3, [pc, #228]	; (8003da8 <_vfprintf_r+0x1460>)
 8003cc2:	f7fd f9a1 	bl	8001008 <__aeabi_dcmpeq>
 8003cc6:	b110      	cbz	r0, 8003cce <_vfprintf_r+0x1386>
 8003cc8:	07e2      	lsls	r2, r4, #31
 8003cca:	f100 816c 	bmi.w	8003fa6 <_vfprintf_r+0x165e>
 8003cce:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003cd0:	2b00      	cmp	r3, #0
 8003cd2:	db07      	blt.n	8003ce4 <_vfprintf_r+0x139c>
 8003cd4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003cd6:	3301      	adds	r3, #1
 8003cd8:	442b      	add	r3, r5
 8003cda:	2230      	movs	r2, #48	; 0x30
 8003cdc:	f805 2b01 	strb.w	r2, [r5], #1
 8003ce0:	42ab      	cmp	r3, r5
 8003ce2:	d1fb      	bne.n	8003cdc <_vfprintf_r+0x1394>
 8003ce4:	1beb      	subs	r3, r5, r7
 8003ce6:	4640      	mov	r0, r8
 8003ce8:	9310      	str	r3, [sp, #64]	; 0x40
 8003cea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003cee:	e683      	b.n	80039f8 <_vfprintf_r+0x10b0>
 8003cf0:	f8cd 9010 	str.w	r9, [sp, #16]
 8003cf4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003cf8:	9408      	str	r4, [sp, #32]
 8003cfa:	4681      	mov	r9, r0
 8003cfc:	900f      	str	r0, [sp, #60]	; 0x3c
 8003cfe:	9014      	str	r0, [sp, #80]	; 0x50
 8003d00:	9011      	str	r0, [sp, #68]	; 0x44
 8003d02:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003d06:	f7fe bfac 	b.w	8002c62 <_vfprintf_r+0x31a>
 8003d0a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d0c:	9907      	ldr	r1, [sp, #28]
 8003d0e:	9803      	ldr	r0, [sp, #12]
 8003d10:	f003 f948 	bl	8006fa4 <__sprint_r>
 8003d14:	2800      	cmp	r0, #0
 8003d16:	f47f ab8f 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8003d1a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003d1c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d1e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d22:	e511      	b.n	8003748 <_vfprintf_r+0xe00>
 8003d24:	4252      	negs	r2, r2
 8003d26:	9206      	str	r2, [sp, #24]
 8003d28:	9308      	str	r3, [sp, #32]
 8003d2a:	f7ff b96d 	b.w	8003008 <_vfprintf_r+0x6c0>
 8003d2e:	4614      	mov	r4, r2
 8003d30:	4632      	mov	r2, r6
 8003d32:	461e      	mov	r6, r3
 8003d34:	4613      	mov	r3, r2
 8003d36:	462a      	mov	r2, r5
 8003d38:	3201      	adds	r2, #1
 8003d3a:	9209      	str	r2, [sp, #36]	; 0x24
 8003d3c:	f106 0208 	add.w	r2, r6, #8
 8003d40:	e9c6 3900 	strd	r3, r9, [r6]
 8003d44:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d46:	932b      	str	r3, [sp, #172]	; 0xac
 8003d48:	444c      	add	r4, r9
 8003d4a:	2b07      	cmp	r3, #7
 8003d4c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003d4e:	f73f acc3 	bgt.w	80036d8 <_vfprintf_r+0xd90>
 8003d52:	3301      	adds	r3, #1
 8003d54:	9309      	str	r3, [sp, #36]	; 0x24
 8003d56:	f102 0b08 	add.w	fp, r2, #8
 8003d5a:	4616      	mov	r6, r2
 8003d5c:	f7ff bbca 	b.w	80034f4 <_vfprintf_r+0xbac>
 8003d60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d62:	9907      	ldr	r1, [sp, #28]
 8003d64:	9803      	ldr	r0, [sp, #12]
 8003d66:	f003 f91d 	bl	8006fa4 <__sprint_r>
 8003d6a:	2800      	cmp	r0, #0
 8003d6c:	f47f ab64 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8003d70:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d72:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d76:	f7ff bade 	b.w	8003336 <_vfprintf_r+0x9ee>
 8003d7a:	464b      	mov	r3, r9
 8003d7c:	2b06      	cmp	r3, #6
 8003d7e:	bf28      	it	cs
 8003d80:	2306      	movcs	r3, #6
 8003d82:	46b9      	mov	r9, r7
 8003d84:	970f      	str	r7, [sp, #60]	; 0x3c
 8003d86:	9714      	str	r7, [sp, #80]	; 0x50
 8003d88:	9711      	str	r7, [sp, #68]	; 0x44
 8003d8a:	970a      	str	r7, [sp, #40]	; 0x28
 8003d8c:	463a      	mov	r2, r7
 8003d8e:	9304      	str	r3, [sp, #16]
 8003d90:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003d94:	4f05      	ldr	r7, [pc, #20]	; (8003dac <_vfprintf_r+0x1464>)
 8003d96:	f7fe bf64 	b.w	8002c62 <_vfprintf_r+0x31a>
 8003d9a:	bf00      	nop
 8003d9c:	08007688 	.word	0x08007688
 8003da0:	0800766c 	.word	0x0800766c
 8003da4:	40300000 	.word	0x40300000
 8003da8:	3fe00000 	.word	0x3fe00000
 8003dac:	08007680 	.word	0x08007680
 8003db0:	460c      	mov	r4, r1
 8003db2:	4639      	mov	r1, r7
 8003db4:	465f      	mov	r7, fp
 8003db6:	469b      	mov	fp, r3
 8003db8:	460b      	mov	r3, r1
 8003dba:	3201      	adds	r2, #1
 8003dbc:	442c      	add	r4, r5
 8003dbe:	2a07      	cmp	r2, #7
 8003dc0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003dc4:	e9cb 3500 	strd	r3, r5, [fp]
 8003dc8:	f73f aca5 	bgt.w	8003716 <_vfprintf_r+0xdce>
 8003dcc:	f10b 0b08 	add.w	fp, fp, #8
 8003dd0:	e4ac      	b.n	800372c <_vfprintf_r+0xde4>
 8003dd2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003dd4:	1cda      	adds	r2, r3, #3
 8003dd6:	db02      	blt.n	8003dde <_vfprintf_r+0x1496>
 8003dd8:	4599      	cmp	r9, r3
 8003dda:	f280 80b5 	bge.w	8003f48 <_vfprintf_r+0x1600>
 8003dde:	3e02      	subs	r6, #2
 8003de0:	f026 0320 	bic.w	r3, r6, #32
 8003de4:	9304      	str	r3, [sp, #16]
 8003de6:	e611      	b.n	8003a0c <_vfprintf_r+0x10c4>
 8003de8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003dea:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003dee:	465a      	mov	r2, fp
 8003df0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003df4:	18fb      	adds	r3, r7, r3
 8003df6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003dfa:	970c      	str	r7, [sp, #48]	; 0x30
 8003dfc:	4eaf      	ldr	r6, [pc, #700]	; (80040bc <_vfprintf_r+0x1774>)
 8003dfe:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003e02:	9309      	str	r3, [sp, #36]	; 0x24
 8003e04:	464f      	mov	r7, r9
 8003e06:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003e0a:	4621      	mov	r1, r4
 8003e0c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003e0e:	2b00      	cmp	r3, #0
 8003e10:	d05b      	beq.n	8003eca <_vfprintf_r+0x1582>
 8003e12:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003e14:	2b00      	cmp	r3, #0
 8003e16:	d154      	bne.n	8003ec2 <_vfprintf_r+0x157a>
 8003e18:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003e1a:	3b01      	subs	r3, #1
 8003e1c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003e20:	9314      	str	r3, [sp, #80]	; 0x50
 8003e22:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003e24:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003e26:	6010      	str	r0, [r2, #0]
 8003e28:	3301      	adds	r3, #1
 8003e2a:	4459      	add	r1, fp
 8003e2c:	2b07      	cmp	r3, #7
 8003e2e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003e30:	f8c2 b004 	str.w	fp, [r2, #4]
 8003e34:	932b      	str	r3, [sp, #172]	; 0xac
 8003e36:	dc68      	bgt.n	8003f0a <_vfprintf_r+0x15c2>
 8003e38:	3208      	adds	r2, #8
 8003e3a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003e3c:	f898 3000 	ldrb.w	r3, [r8]
 8003e40:	1bc5      	subs	r5, r0, r7
 8003e42:	429d      	cmp	r5, r3
 8003e44:	bfa8      	it	ge
 8003e46:	461d      	movge	r5, r3
 8003e48:	2d00      	cmp	r5, #0
 8003e4a:	dd0b      	ble.n	8003e64 <_vfprintf_r+0x151c>
 8003e4c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003e4e:	6017      	str	r7, [r2, #0]
 8003e50:	3301      	adds	r3, #1
 8003e52:	4429      	add	r1, r5
 8003e54:	2b07      	cmp	r3, #7
 8003e56:	912c      	str	r1, [sp, #176]	; 0xb0
 8003e58:	6055      	str	r5, [r2, #4]
 8003e5a:	932b      	str	r3, [sp, #172]	; 0xac
 8003e5c:	dc5e      	bgt.n	8003f1c <_vfprintf_r+0x15d4>
 8003e5e:	f898 3000 	ldrb.w	r3, [r8]
 8003e62:	3208      	adds	r2, #8
 8003e64:	2d00      	cmp	r5, #0
 8003e66:	bfac      	ite	ge
 8003e68:	1b5d      	subge	r5, r3, r5
 8003e6a:	461d      	movlt	r5, r3
 8003e6c:	2d00      	cmp	r5, #0
 8003e6e:	dd26      	ble.n	8003ebe <_vfprintf_r+0x1576>
 8003e70:	2d10      	cmp	r5, #16
 8003e72:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003e74:	dd3c      	ble.n	8003ef0 <_vfprintf_r+0x15a8>
 8003e76:	2410      	movs	r4, #16
 8003e78:	e003      	b.n	8003e82 <_vfprintf_r+0x153a>
 8003e7a:	3208      	adds	r2, #8
 8003e7c:	3d10      	subs	r5, #16
 8003e7e:	2d10      	cmp	r5, #16
 8003e80:	dd36      	ble.n	8003ef0 <_vfprintf_r+0x15a8>
 8003e82:	3001      	adds	r0, #1
 8003e84:	3110      	adds	r1, #16
 8003e86:	2807      	cmp	r0, #7
 8003e88:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003e8c:	e9c2 6400 	strd	r6, r4, [r2]
 8003e90:	ddf3      	ble.n	8003e7a <_vfprintf_r+0x1532>
 8003e92:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e94:	4651      	mov	r1, sl
 8003e96:	4648      	mov	r0, r9
 8003e98:	f003 f884 	bl	8006fa4 <__sprint_r>
 8003e9c:	2800      	cmp	r0, #0
 8003e9e:	d150      	bne.n	8003f42 <_vfprintf_r+0x15fa>
 8003ea0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003ea4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ea6:	e7e9      	b.n	8003e7c <_vfprintf_r+0x1534>
 8003ea8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003eaa:	4651      	mov	r1, sl
 8003eac:	4648      	mov	r0, r9
 8003eae:	f003 f879 	bl	8006fa4 <__sprint_r>
 8003eb2:	2800      	cmp	r0, #0
 8003eb4:	d145      	bne.n	8003f42 <_vfprintf_r+0x15fa>
 8003eb6:	f898 3000 	ldrb.w	r3, [r8]
 8003eba:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003ebc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ebe:	441f      	add	r7, r3
 8003ec0:	e7a4      	b.n	8003e0c <_vfprintf_r+0x14c4>
 8003ec2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ec4:	3b01      	subs	r3, #1
 8003ec6:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ec8:	e7ab      	b.n	8003e22 <_vfprintf_r+0x14da>
 8003eca:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ecc:	2b00      	cmp	r3, #0
 8003ece:	d1f8      	bne.n	8003ec2 <_vfprintf_r+0x157a>
 8003ed0:	46b9      	mov	r9, r7
 8003ed2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ed4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003ed6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003eda:	18fb      	adds	r3, r7, r3
 8003edc:	4599      	cmp	r9, r3
 8003ede:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003ee2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ee6:	4693      	mov	fp, r2
 8003ee8:	460c      	mov	r4, r1
 8003eea:	bf28      	it	cs
 8003eec:	4699      	movcs	r9, r3
 8003eee:	e424      	b.n	800373a <_vfprintf_r+0xdf2>
 8003ef0:	3001      	adds	r0, #1
 8003ef2:	4429      	add	r1, r5
 8003ef4:	2807      	cmp	r0, #7
 8003ef6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003efa:	e9c2 6500 	strd	r6, r5, [r2]
 8003efe:	dcd3      	bgt.n	8003ea8 <_vfprintf_r+0x1560>
 8003f00:	f898 3000 	ldrb.w	r3, [r8]
 8003f04:	3208      	adds	r2, #8
 8003f06:	441f      	add	r7, r3
 8003f08:	e780      	b.n	8003e0c <_vfprintf_r+0x14c4>
 8003f0a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f0c:	4651      	mov	r1, sl
 8003f0e:	4648      	mov	r0, r9
 8003f10:	f003 f848 	bl	8006fa4 <__sprint_r>
 8003f14:	b9a8      	cbnz	r0, 8003f42 <_vfprintf_r+0x15fa>
 8003f16:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003f18:	aa2d      	add	r2, sp, #180	; 0xb4
 8003f1a:	e78e      	b.n	8003e3a <_vfprintf_r+0x14f2>
 8003f1c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f1e:	4651      	mov	r1, sl
 8003f20:	4648      	mov	r0, r9
 8003f22:	f003 f83f 	bl	8006fa4 <__sprint_r>
 8003f26:	b960      	cbnz	r0, 8003f42 <_vfprintf_r+0x15fa>
 8003f28:	f898 3000 	ldrb.w	r3, [r8]
 8003f2c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003f2e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003f30:	e798      	b.n	8003e64 <_vfprintf_r+0x151c>
 8003f32:	4638      	mov	r0, r7
 8003f34:	f7fc fb84 	bl	8000640 <strlen>
 8003f38:	46a9      	mov	r9, r5
 8003f3a:	4603      	mov	r3, r0
 8003f3c:	9009      	str	r0, [sp, #36]	; 0x24
 8003f3e:	f7ff b8f4 	b.w	800312a <_vfprintf_r+0x7e2>
 8003f42:	46d1      	mov	r9, sl
 8003f44:	f7ff ba7a 	b.w	800343c <_vfprintf_r+0xaf4>
 8003f48:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f4a:	4619      	mov	r1, r3
 8003f4c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f4e:	4299      	cmp	r1, r3
 8003f50:	f300 8082 	bgt.w	8004058 <_vfprintf_r+0x1710>
 8003f54:	07c4      	lsls	r4, r0, #31
 8003f56:	f140 816b 	bpl.w	8004230 <_vfprintf_r+0x18e8>
 8003f5a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f5c:	4413      	add	r3, r2
 8003f5e:	9309      	str	r3, [sp, #36]	; 0x24
 8003f60:	0541      	lsls	r1, r0, #21
 8003f62:	d503      	bpl.n	8003f6c <_vfprintf_r+0x1624>
 8003f64:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f66:	2b00      	cmp	r3, #0
 8003f68:	f300 80e6 	bgt.w	8004138 <_vfprintf_r+0x17f0>
 8003f6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f6e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f72:	9304      	str	r3, [sp, #16]
 8003f74:	2667      	movs	r6, #103	; 0x67
 8003f76:	2300      	movs	r3, #0
 8003f78:	930f      	str	r3, [sp, #60]	; 0x3c
 8003f7a:	9314      	str	r3, [sp, #80]	; 0x50
 8003f7c:	e586      	b.n	8003a8c <_vfprintf_r+0x1144>
 8003f7e:	222d      	movs	r2, #45	; 0x2d
 8003f80:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003f84:	f04f 0900 	mov.w	r9, #0
 8003f88:	f7fe be6c 	b.w	8002c64 <_vfprintf_r+0x31c>
 8003f8c:	46a1      	mov	r9, r4
 8003f8e:	f7ff ba55 	b.w	800343c <_vfprintf_r+0xaf4>
 8003f92:	900a      	str	r0, [sp, #40]	; 0x28
 8003f94:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003f98:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003f9c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003f9e:	232d      	movs	r3, #45	; 0x2d
 8003fa0:	911e      	str	r1, [sp, #120]	; 0x78
 8003fa2:	930b      	str	r3, [sp, #44]	; 0x2c
 8003fa4:	e619      	b.n	8003bda <_vfprintf_r+0x1292>
 8003fa6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fa8:	9328      	str	r3, [sp, #160]	; 0xa0
 8003faa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003fac:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003fb0:	7bd9      	ldrb	r1, [r3, #15]
 8003fb2:	4291      	cmp	r1, r2
 8003fb4:	462b      	mov	r3, r5
 8003fb6:	d109      	bne.n	8003fcc <_vfprintf_r+0x1684>
 8003fb8:	2030      	movs	r0, #48	; 0x30
 8003fba:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003fbe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003fc0:	1e5a      	subs	r2, r3, #1
 8003fc2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003fc4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003fc8:	4291      	cmp	r1, r2
 8003fca:	d0f6      	beq.n	8003fba <_vfprintf_r+0x1672>
 8003fcc:	2a39      	cmp	r2, #57	; 0x39
 8003fce:	bf0b      	itete	eq
 8003fd0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003fd2:	3201      	addne	r2, #1
 8003fd4:	7a92      	ldrbeq	r2, [r2, #10]
 8003fd6:	b2d2      	uxtbne	r2, r2
 8003fd8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003fdc:	e682      	b.n	8003ce4 <_vfprintf_r+0x139c>
 8003fde:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003fe2:	f43f ad9f 	beq.w	8003b24 <_vfprintf_r+0x11dc>
 8003fe6:	9a05      	ldr	r2, [sp, #20]
 8003fe8:	701a      	strb	r2, [r3, #0]
 8003fea:	4657      	mov	r7, sl
 8003fec:	f7fe bf52 	b.w	8002e94 <_vfprintf_r+0x54c>
 8003ff0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ff2:	9907      	ldr	r1, [sp, #28]
 8003ff4:	9803      	ldr	r0, [sp, #12]
 8003ff6:	f002 ffd5 	bl	8006fa4 <__sprint_r>
 8003ffa:	2800      	cmp	r0, #0
 8003ffc:	f47f aa1c 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8004000:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004002:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004006:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800400a:	e571      	b.n	8003af0 <_vfprintf_r+0x11a8>
 800400c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800400e:	2b00      	cmp	r3, #0
 8004010:	f340 8164 	ble.w	80042dc <_vfprintf_r+0x1994>
 8004014:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004016:	f1b9 0f00 	cmp.w	r9, #0
 800401a:	f040 8103 	bne.w	8004224 <_vfprintf_r+0x18dc>
 800401e:	07c6      	lsls	r6, r0, #31
 8004020:	f100 8100 	bmi.w	8004224 <_vfprintf_r+0x18dc>
 8004024:	9309      	str	r3, [sp, #36]	; 0x24
 8004026:	2666      	movs	r6, #102	; 0x66
 8004028:	0543      	lsls	r3, r0, #21
 800402a:	f100 8086 	bmi.w	800413a <_vfprintf_r+0x17f2>
 800402e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004030:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004034:	9304      	str	r3, [sp, #16]
 8004036:	e79e      	b.n	8003f76 <_vfprintf_r+0x162e>
 8004038:	aa2a      	add	r2, sp, #168	; 0xa8
 800403a:	9907      	ldr	r1, [sp, #28]
 800403c:	9803      	ldr	r0, [sp, #12]
 800403e:	f002 ffb1 	bl	8006fa4 <__sprint_r>
 8004042:	2800      	cmp	r0, #0
 8004044:	f47f a9f8 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8004048:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800404a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800404c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800404e:	1ad3      	subs	r3, r2, r3
 8004050:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004054:	f7ff bb90 	b.w	8003778 <_vfprintf_r+0xe30>
 8004058:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800405a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800405c:	4413      	add	r3, r2
 800405e:	9309      	str	r3, [sp, #36]	; 0x24
 8004060:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004062:	2b00      	cmp	r3, #0
 8004064:	f340 8149 	ble.w	80042fa <_vfprintf_r+0x19b2>
 8004068:	2667      	movs	r6, #103	; 0x67
 800406a:	e7dd      	b.n	8004028 <_vfprintf_r+0x16e0>
 800406c:	2330      	movs	r3, #48	; 0x30
 800406e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004072:	2358      	movs	r3, #88	; 0x58
 8004074:	e595      	b.n	8003ba2 <_vfprintf_r+0x125a>
 8004076:	9803      	ldr	r0, [sp, #12]
 8004078:	aa2a      	add	r2, sp, #168	; 0xa8
 800407a:	4649      	mov	r1, r9
 800407c:	f002 ff92 	bl	8006fa4 <__sprint_r>
 8004080:	2800      	cmp	r0, #0
 8004082:	f47f a9e0 	bne.w	8003446 <_vfprintf_r+0xafe>
 8004086:	f7fe bf0f 	b.w	8002ea8 <_vfprintf_r+0x560>
 800408a:	a824      	add	r0, sp, #144	; 0x90
 800408c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004090:	f002 fe90 	bl	8006db4 <frexp>
 8004094:	2200      	movs	r2, #0
 8004096:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800409a:	ec51 0b10 	vmov	r0, r1, d0
 800409e:	f7fc fd4b 	bl	8000b38 <__aeabi_dmul>
 80040a2:	2200      	movs	r2, #0
 80040a4:	2300      	movs	r3, #0
 80040a6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80040aa:	f7fc ffad 	bl	8001008 <__aeabi_dcmpeq>
 80040ae:	b108      	cbz	r0, 80040b4 <_vfprintf_r+0x176c>
 80040b0:	2301      	movs	r3, #1
 80040b2:	9324      	str	r3, [sp, #144]	; 0x90
 80040b4:	4b02      	ldr	r3, [pc, #8]	; (80040c0 <_vfprintf_r+0x1778>)
 80040b6:	9309      	str	r3, [sp, #36]	; 0x24
 80040b8:	e5ac      	b.n	8003c14 <_vfprintf_r+0x12cc>
 80040ba:	bf00      	nop
 80040bc:	0800769c 	.word	0x0800769c
 80040c0:	08007658 	.word	0x08007658
 80040c4:	425d      	negs	r5, r3
 80040c6:	3310      	adds	r3, #16
 80040c8:	4bb9      	ldr	r3, [pc, #740]	; (80043b0 <_vfprintf_r+0x1a68>)
 80040ca:	f280 8097 	bge.w	80041fc <_vfprintf_r+0x18b4>
 80040ce:	4619      	mov	r1, r3
 80040d0:	2610      	movs	r6, #16
 80040d2:	4623      	mov	r3, r4
 80040d4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80040d8:	460c      	mov	r4, r1
 80040da:	e005      	b.n	80040e8 <_vfprintf_r+0x17a0>
 80040dc:	f10b 0b08 	add.w	fp, fp, #8
 80040e0:	3d10      	subs	r5, #16
 80040e2:	2d10      	cmp	r5, #16
 80040e4:	f340 8087 	ble.w	80041f6 <_vfprintf_r+0x18ae>
 80040e8:	3201      	adds	r2, #1
 80040ea:	3310      	adds	r3, #16
 80040ec:	2a07      	cmp	r2, #7
 80040ee:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80040f2:	e9cb 4600 	strd	r4, r6, [fp]
 80040f6:	ddf1      	ble.n	80040dc <_vfprintf_r+0x1794>
 80040f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80040fa:	9907      	ldr	r1, [sp, #28]
 80040fc:	4648      	mov	r0, r9
 80040fe:	f002 ff51 	bl	8006fa4 <__sprint_r>
 8004102:	2800      	cmp	r0, #0
 8004104:	f47f a998 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8004108:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800410c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004110:	e7e6      	b.n	80040e0 <_vfprintf_r+0x1798>
 8004112:	f109 0101 	add.w	r1, r9, #1
 8004116:	9803      	ldr	r0, [sp, #12]
 8004118:	f001 fe80 	bl	8005e1c <_malloc_r>
 800411c:	4607      	mov	r7, r0
 800411e:	2800      	cmp	r0, #0
 8004120:	f000 813b 	beq.w	800439a <_vfprintf_r+0x1a52>
 8004124:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004128:	930e      	str	r3, [sp, #56]	; 0x38
 800412a:	f026 0320 	bic.w	r3, r6, #32
 800412e:	9304      	str	r3, [sp, #16]
 8004130:	46a0      	mov	r8, r4
 8004132:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004134:	900a      	str	r0, [sp, #40]	; 0x28
 8004136:	e547      	b.n	8003bc8 <_vfprintf_r+0x1280>
 8004138:	2667      	movs	r6, #103	; 0x67
 800413a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800413c:	2200      	movs	r2, #0
 800413e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004140:	9214      	str	r2, [sp, #80]	; 0x50
 8004142:	7803      	ldrb	r3, [r0, #0]
 8004144:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004146:	2bff      	cmp	r3, #255	; 0xff
 8004148:	d00c      	beq.n	8004164 <_vfprintf_r+0x181c>
 800414a:	4293      	cmp	r3, r2
 800414c:	da0a      	bge.n	8004164 <_vfprintf_r+0x181c>
 800414e:	7841      	ldrb	r1, [r0, #1]
 8004150:	1ad2      	subs	r2, r2, r3
 8004152:	b1a9      	cbz	r1, 8004180 <_vfprintf_r+0x1838>
 8004154:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004156:	3301      	adds	r3, #1
 8004158:	9314      	str	r3, [sp, #80]	; 0x50
 800415a:	460b      	mov	r3, r1
 800415c:	2bff      	cmp	r3, #255	; 0xff
 800415e:	f100 0001 	add.w	r0, r0, #1
 8004162:	d1f2      	bne.n	800414a <_vfprintf_r+0x1802>
 8004164:	9211      	str	r2, [sp, #68]	; 0x44
 8004166:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004168:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800416a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800416c:	901a      	str	r0, [sp, #104]	; 0x68
 800416e:	4413      	add	r3, r2
 8004170:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004172:	fb02 1303 	mla	r3, r2, r3, r1
 8004176:	9309      	str	r3, [sp, #36]	; 0x24
 8004178:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800417c:	9304      	str	r3, [sp, #16]
 800417e:	e485      	b.n	8003a8c <_vfprintf_r+0x1144>
 8004180:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004182:	3101      	adds	r1, #1
 8004184:	910f      	str	r1, [sp, #60]	; 0x3c
 8004186:	e7de      	b.n	8004146 <_vfprintf_r+0x17fe>
 8004188:	aa28      	add	r2, sp, #160	; 0xa0
 800418a:	ab25      	add	r3, sp, #148	; 0x94
 800418c:	e9cd 3200 	strd	r3, r2, [sp]
 8004190:	2103      	movs	r1, #3
 8004192:	ab24      	add	r3, sp, #144	; 0x90
 8004194:	464a      	mov	r2, r9
 8004196:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800419a:	9803      	ldr	r0, [sp, #12]
 800419c:	f000 fa5c 	bl	8004658 <_dtoa_r>
 80041a0:	464d      	mov	r5, r9
 80041a2:	4607      	mov	r7, r0
 80041a4:	eb00 0409 	add.w	r4, r0, r9
 80041a8:	783b      	ldrb	r3, [r7, #0]
 80041aa:	2b30      	cmp	r3, #48	; 0x30
 80041ac:	f000 80be 	beq.w	800432c <_vfprintf_r+0x19e4>
 80041b0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80041b2:	442c      	add	r4, r5
 80041b4:	2200      	movs	r2, #0
 80041b6:	2300      	movs	r3, #0
 80041b8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80041bc:	f7fc ff24 	bl	8001008 <__aeabi_dcmpeq>
 80041c0:	b108      	cbz	r0, 80041c6 <_vfprintf_r+0x187e>
 80041c2:	4623      	mov	r3, r4
 80041c4:	e413      	b.n	80039ee <_vfprintf_r+0x10a6>
 80041c6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80041c8:	42a3      	cmp	r3, r4
 80041ca:	f4bf ac10 	bcs.w	80039ee <_vfprintf_r+0x10a6>
 80041ce:	2130      	movs	r1, #48	; 0x30
 80041d0:	1c5a      	adds	r2, r3, #1
 80041d2:	9228      	str	r2, [sp, #160]	; 0xa0
 80041d4:	7019      	strb	r1, [r3, #0]
 80041d6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80041d8:	429c      	cmp	r4, r3
 80041da:	d8f9      	bhi.n	80041d0 <_vfprintf_r+0x1888>
 80041dc:	e407      	b.n	80039ee <_vfprintf_r+0x10a6>
 80041de:	197c      	adds	r4, r7, r5
 80041e0:	e7e8      	b.n	80041b4 <_vfprintf_r+0x186c>
 80041e2:	f1b9 0f00 	cmp.w	r9, #0
 80041e6:	f000 8092 	beq.w	800430e <_vfprintf_r+0x19c6>
 80041ea:	900a      	str	r0, [sp, #40]	; 0x28
 80041ec:	e4ec      	b.n	8003bc8 <_vfprintf_r+0x1280>
 80041ee:	900a      	str	r0, [sp, #40]	; 0x28
 80041f0:	f04f 0906 	mov.w	r9, #6
 80041f4:	e4e8      	b.n	8003bc8 <_vfprintf_r+0x1280>
 80041f6:	4621      	mov	r1, r4
 80041f8:	461c      	mov	r4, r3
 80041fa:	460b      	mov	r3, r1
 80041fc:	3201      	adds	r2, #1
 80041fe:	442c      	add	r4, r5
 8004200:	2a07      	cmp	r2, #7
 8004202:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004206:	e9cb 3500 	strd	r3, r5, [fp]
 800420a:	f300 80a9 	bgt.w	8004360 <_vfprintf_r+0x1a18>
 800420e:	f10b 0b08 	add.w	fp, fp, #8
 8004212:	e470      	b.n	8003af6 <_vfprintf_r+0x11ae>
 8004214:	469a      	mov	sl, r3
 8004216:	f7ff bb37 	b.w	8003888 <_vfprintf_r+0xf40>
 800421a:	2301      	movs	r3, #1
 800421c:	9324      	str	r3, [sp, #144]	; 0x90
 800421e:	4b65      	ldr	r3, [pc, #404]	; (80043b4 <_vfprintf_r+0x1a6c>)
 8004220:	9309      	str	r3, [sp, #36]	; 0x24
 8004222:	e4f7      	b.n	8003c14 <_vfprintf_r+0x12cc>
 8004224:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004226:	4413      	add	r3, r2
 8004228:	444b      	add	r3, r9
 800422a:	9309      	str	r3, [sp, #36]	; 0x24
 800422c:	2666      	movs	r6, #102	; 0x66
 800422e:	e6fb      	b.n	8004028 <_vfprintf_r+0x16e0>
 8004230:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004232:	9309      	str	r3, [sp, #36]	; 0x24
 8004234:	e694      	b.n	8003f60 <_vfprintf_r+0x1618>
 8004236:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800423a:	4664      	mov	r4, ip
 800423c:	4d5e      	ldr	r5, [pc, #376]	; (80043b8 <_vfprintf_r+0x1a70>)
 800423e:	e000      	b.n	8004242 <_vfprintf_r+0x18fa>
 8004240:	4614      	mov	r4, r2
 8004242:	fba5 1203 	umull	r1, r2, r5, r3
 8004246:	08d2      	lsrs	r2, r2, #3
 8004248:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800424c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004250:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004254:	4613      	mov	r3, r2
 8004256:	2b09      	cmp	r3, #9
 8004258:	f804 1c01 	strb.w	r1, [r4, #-1]
 800425c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004260:	dcee      	bgt.n	8004240 <_vfprintf_r+0x18f8>
 8004262:	3330      	adds	r3, #48	; 0x30
 8004264:	3c02      	subs	r4, #2
 8004266:	b2db      	uxtb	r3, r3
 8004268:	45a4      	cmp	ip, r4
 800426a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800426e:	f240 8090 	bls.w	8004392 <_vfprintf_r+0x1a4a>
 8004272:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004276:	4611      	mov	r1, r2
 8004278:	e001      	b.n	800427e <_vfprintf_r+0x1936>
 800427a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800427e:	f804 3b01 	strb.w	r3, [r4], #1
 8004282:	458c      	cmp	ip, r1
 8004284:	d1f9      	bne.n	800427a <_vfprintf_r+0x1932>
 8004286:	ab2a      	add	r3, sp, #168	; 0xa8
 8004288:	1a9b      	subs	r3, r3, r2
 800428a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800428e:	4413      	add	r3, r2
 8004290:	f7ff bbe3 	b.w	8003a5a <_vfprintf_r+0x1112>
 8004294:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004296:	4f49      	ldr	r7, [pc, #292]	; (80043bc <_vfprintf_r+0x1a74>)
 8004298:	2b00      	cmp	r3, #0
 800429a:	bfb6      	itet	lt
 800429c:	222d      	movlt	r2, #45	; 0x2d
 800429e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80042a2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80042a6:	4b46      	ldr	r3, [pc, #280]	; (80043c0 <_vfprintf_r+0x1a78>)
 80042a8:	f7fe bf02 	b.w	80030b0 <_vfprintf_r+0x768>
 80042ac:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80042b0:	f7ff b8c9 	b.w	8003446 <_vfprintf_r+0xafe>
 80042b4:	aa28      	add	r2, sp, #160	; 0xa0
 80042b6:	ab25      	add	r3, sp, #148	; 0x94
 80042b8:	e9cd 3200 	strd	r3, r2, [sp]
 80042bc:	2103      	movs	r1, #3
 80042be:	ab24      	add	r3, sp, #144	; 0x90
 80042c0:	464a      	mov	r2, r9
 80042c2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80042c6:	9803      	ldr	r0, [sp, #12]
 80042c8:	f000 f9c6 	bl	8004658 <_dtoa_r>
 80042cc:	464d      	mov	r5, r9
 80042ce:	4607      	mov	r7, r0
 80042d0:	2e46      	cmp	r6, #70	; 0x46
 80042d2:	eb07 0405 	add.w	r4, r7, r5
 80042d6:	f43f af67 	beq.w	80041a8 <_vfprintf_r+0x1860>
 80042da:	e76b      	b.n	80041b4 <_vfprintf_r+0x186c>
 80042dc:	f1b9 0f00 	cmp.w	r9, #0
 80042e0:	d131      	bne.n	8004346 <_vfprintf_r+0x19fe>
 80042e2:	07c5      	lsls	r5, r0, #31
 80042e4:	d42f      	bmi.n	8004346 <_vfprintf_r+0x19fe>
 80042e6:	2301      	movs	r3, #1
 80042e8:	9304      	str	r3, [sp, #16]
 80042ea:	9309      	str	r3, [sp, #36]	; 0x24
 80042ec:	2666      	movs	r6, #102	; 0x66
 80042ee:	e642      	b.n	8003f76 <_vfprintf_r+0x162e>
 80042f0:	07c3      	lsls	r3, r0, #31
 80042f2:	f57f abbf 	bpl.w	8003a74 <_vfprintf_r+0x112c>
 80042f6:	f7ff bbb9 	b.w	8003a6c <_vfprintf_r+0x1124>
 80042fa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80042fc:	f1c3 0301 	rsb	r3, r3, #1
 8004300:	441a      	add	r2, r3
 8004302:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004306:	9209      	str	r2, [sp, #36]	; 0x24
 8004308:	9304      	str	r3, [sp, #16]
 800430a:	2667      	movs	r6, #103	; 0x67
 800430c:	e633      	b.n	8003f76 <_vfprintf_r+0x162e>
 800430e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004312:	f04f 0901 	mov.w	r9, #1
 8004316:	e457      	b.n	8003bc8 <_vfprintf_r+0x1280>
 8004318:	465a      	mov	r2, fp
 800431a:	e511      	b.n	8003d40 <_vfprintf_r+0x13f8>
 800431c:	2e47      	cmp	r6, #71	; 0x47
 800431e:	f47f af5e 	bne.w	80041de <_vfprintf_r+0x1896>
 8004322:	f018 0f01 	tst.w	r8, #1
 8004326:	f43f ab61 	beq.w	80039ec <_vfprintf_r+0x10a4>
 800432a:	e7d1      	b.n	80042d0 <_vfprintf_r+0x1988>
 800432c:	2200      	movs	r2, #0
 800432e:	2300      	movs	r3, #0
 8004330:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004334:	f7fc fe68 	bl	8001008 <__aeabi_dcmpeq>
 8004338:	2800      	cmp	r0, #0
 800433a:	f47f af39 	bne.w	80041b0 <_vfprintf_r+0x1868>
 800433e:	f1c5 0501 	rsb	r5, r5, #1
 8004342:	9524      	str	r5, [sp, #144]	; 0x90
 8004344:	e735      	b.n	80041b2 <_vfprintf_r+0x186a>
 8004346:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004348:	3301      	adds	r3, #1
 800434a:	444b      	add	r3, r9
 800434c:	9309      	str	r3, [sp, #36]	; 0x24
 800434e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004352:	9304      	str	r3, [sp, #16]
 8004354:	2666      	movs	r6, #102	; 0x66
 8004356:	e60e      	b.n	8003f76 <_vfprintf_r+0x162e>
 8004358:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800435c:	f7ff bb7a 	b.w	8003a54 <_vfprintf_r+0x110c>
 8004360:	aa2a      	add	r2, sp, #168	; 0xa8
 8004362:	9907      	ldr	r1, [sp, #28]
 8004364:	9803      	ldr	r0, [sp, #12]
 8004366:	f002 fe1d 	bl	8006fa4 <__sprint_r>
 800436a:	2800      	cmp	r0, #0
 800436c:	f47f a864 	bne.w	8003438 <_vfprintf_r+0xaf0>
 8004370:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004374:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004378:	f7ff bbbd 	b.w	8003af6 <_vfprintf_r+0x11ae>
 800437c:	9908      	ldr	r1, [sp, #32]
 800437e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004382:	680b      	ldr	r3, [r1, #0]
 8004384:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004388:	1d0b      	adds	r3, r1, #4
 800438a:	4692      	mov	sl, r2
 800438c:	9308      	str	r3, [sp, #32]
 800438e:	f7fe bb59 	b.w	8002a44 <_vfprintf_r+0xfc>
 8004392:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004396:	f7ff bb60 	b.w	8003a5a <_vfprintf_r+0x1112>
 800439a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800439e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80043a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80043a6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80043aa:	f7ff b84c 	b.w	8003446 <_vfprintf_r+0xafe>
 80043ae:	bf00      	nop
 80043b0:	0800769c 	.word	0x0800769c
 80043b4:	0800766c 	.word	0x0800766c
 80043b8:	cccccccd 	.word	0xcccccccd
 80043bc:	08007654 	.word	0x08007654
 80043c0:	08007650 	.word	0x08007650

080043c4 <__sbprintf>:
 80043c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80043c8:	460c      	mov	r4, r1
 80043ca:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80043ce:	8989      	ldrh	r1, [r1, #12]
 80043d0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80043d2:	89e5      	ldrh	r5, [r4, #14]
 80043d4:	9619      	str	r6, [sp, #100]	; 0x64
 80043d6:	f021 0102 	bic.w	r1, r1, #2
 80043da:	4606      	mov	r6, r0
 80043dc:	69e0      	ldr	r0, [r4, #28]
 80043de:	f8ad 100c 	strh.w	r1, [sp, #12]
 80043e2:	4617      	mov	r7, r2
 80043e4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80043e8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80043ea:	f8ad 500e 	strh.w	r5, [sp, #14]
 80043ee:	4698      	mov	r8, r3
 80043f0:	ad1a      	add	r5, sp, #104	; 0x68
 80043f2:	2300      	movs	r3, #0
 80043f4:	9007      	str	r0, [sp, #28]
 80043f6:	a816      	add	r0, sp, #88	; 0x58
 80043f8:	9209      	str	r2, [sp, #36]	; 0x24
 80043fa:	9306      	str	r3, [sp, #24]
 80043fc:	9500      	str	r5, [sp, #0]
 80043fe:	9504      	str	r5, [sp, #16]
 8004400:	9102      	str	r1, [sp, #8]
 8004402:	9105      	str	r1, [sp, #20]
 8004404:	f001 fc8a 	bl	8005d1c <__retarget_lock_init_recursive>
 8004408:	4643      	mov	r3, r8
 800440a:	463a      	mov	r2, r7
 800440c:	4669      	mov	r1, sp
 800440e:	4630      	mov	r0, r6
 8004410:	f7fe fa9a 	bl	8002948 <_vfprintf_r>
 8004414:	1e05      	subs	r5, r0, #0
 8004416:	db07      	blt.n	8004428 <__sbprintf+0x64>
 8004418:	4630      	mov	r0, r6
 800441a:	4669      	mov	r1, sp
 800441c:	f001 f8d6 	bl	80055cc <_fflush_r>
 8004420:	2800      	cmp	r0, #0
 8004422:	bf18      	it	ne
 8004424:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004428:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800442c:	065b      	lsls	r3, r3, #25
 800442e:	d503      	bpl.n	8004438 <__sbprintf+0x74>
 8004430:	89a3      	ldrh	r3, [r4, #12]
 8004432:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004436:	81a3      	strh	r3, [r4, #12]
 8004438:	9816      	ldr	r0, [sp, #88]	; 0x58
 800443a:	f001 fc71 	bl	8005d20 <__retarget_lock_close_recursive>
 800443e:	4628      	mov	r0, r5
 8004440:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004444:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004448 <__swsetup_r>:
 8004448:	b538      	push	{r3, r4, r5, lr}
 800444a:	4b31      	ldr	r3, [pc, #196]	; (8004510 <__swsetup_r+0xc8>)
 800444c:	681b      	ldr	r3, [r3, #0]
 800444e:	4605      	mov	r5, r0
 8004450:	460c      	mov	r4, r1
 8004452:	b113      	cbz	r3, 800445a <__swsetup_r+0x12>
 8004454:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004456:	2a00      	cmp	r2, #0
 8004458:	d03a      	beq.n	80044d0 <__swsetup_r+0x88>
 800445a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800445e:	b293      	uxth	r3, r2
 8004460:	0718      	lsls	r0, r3, #28
 8004462:	d50c      	bpl.n	800447e <__swsetup_r+0x36>
 8004464:	6920      	ldr	r0, [r4, #16]
 8004466:	b1a8      	cbz	r0, 8004494 <__swsetup_r+0x4c>
 8004468:	f013 0201 	ands.w	r2, r3, #1
 800446c:	d020      	beq.n	80044b0 <__swsetup_r+0x68>
 800446e:	6963      	ldr	r3, [r4, #20]
 8004470:	2200      	movs	r2, #0
 8004472:	425b      	negs	r3, r3
 8004474:	61a3      	str	r3, [r4, #24]
 8004476:	60a2      	str	r2, [r4, #8]
 8004478:	b300      	cbz	r0, 80044bc <__swsetup_r+0x74>
 800447a:	2000      	movs	r0, #0
 800447c:	bd38      	pop	{r3, r4, r5, pc}
 800447e:	06d9      	lsls	r1, r3, #27
 8004480:	d53e      	bpl.n	8004500 <__swsetup_r+0xb8>
 8004482:	0758      	lsls	r0, r3, #29
 8004484:	d428      	bmi.n	80044d8 <__swsetup_r+0x90>
 8004486:	6920      	ldr	r0, [r4, #16]
 8004488:	f042 0308 	orr.w	r3, r2, #8
 800448c:	81a3      	strh	r3, [r4, #12]
 800448e:	b29b      	uxth	r3, r3
 8004490:	2800      	cmp	r0, #0
 8004492:	d1e9      	bne.n	8004468 <__swsetup_r+0x20>
 8004494:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004498:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800449c:	d0e4      	beq.n	8004468 <__swsetup_r+0x20>
 800449e:	4628      	mov	r0, r5
 80044a0:	4621      	mov	r1, r4
 80044a2:	f001 fc71 	bl	8005d88 <__smakebuf_r>
 80044a6:	89a3      	ldrh	r3, [r4, #12]
 80044a8:	6920      	ldr	r0, [r4, #16]
 80044aa:	f013 0201 	ands.w	r2, r3, #1
 80044ae:	d1de      	bne.n	800446e <__swsetup_r+0x26>
 80044b0:	0799      	lsls	r1, r3, #30
 80044b2:	bf58      	it	pl
 80044b4:	6962      	ldrpl	r2, [r4, #20]
 80044b6:	60a2      	str	r2, [r4, #8]
 80044b8:	2800      	cmp	r0, #0
 80044ba:	d1de      	bne.n	800447a <__swsetup_r+0x32>
 80044bc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80044c0:	061a      	lsls	r2, r3, #24
 80044c2:	d5db      	bpl.n	800447c <__swsetup_r+0x34>
 80044c4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80044c8:	81a3      	strh	r3, [r4, #12]
 80044ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80044ce:	bd38      	pop	{r3, r4, r5, pc}
 80044d0:	4618      	mov	r0, r3
 80044d2:	f001 f8d7 	bl	8005684 <__sinit>
 80044d6:	e7c0      	b.n	800445a <__swsetup_r+0x12>
 80044d8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80044da:	b151      	cbz	r1, 80044f2 <__swsetup_r+0xaa>
 80044dc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80044e0:	4299      	cmp	r1, r3
 80044e2:	d004      	beq.n	80044ee <__swsetup_r+0xa6>
 80044e4:	4628      	mov	r0, r5
 80044e6:	f001 f96f 	bl	80057c8 <_free_r>
 80044ea:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80044ee:	2300      	movs	r3, #0
 80044f0:	6323      	str	r3, [r4, #48]	; 0x30
 80044f2:	2300      	movs	r3, #0
 80044f4:	6920      	ldr	r0, [r4, #16]
 80044f6:	6063      	str	r3, [r4, #4]
 80044f8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80044fc:	6020      	str	r0, [r4, #0]
 80044fe:	e7c3      	b.n	8004488 <__swsetup_r+0x40>
 8004500:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004504:	2309      	movs	r3, #9
 8004506:	602b      	str	r3, [r5, #0]
 8004508:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800450c:	81a2      	strh	r2, [r4, #12]
 800450e:	bd38      	pop	{r3, r4, r5, pc}
 8004510:	20000018 	.word	0x20000018

08004514 <register_fini>:
 8004514:	4b02      	ldr	r3, [pc, #8]	; (8004520 <register_fini+0xc>)
 8004516:	b113      	cbz	r3, 800451e <register_fini+0xa>
 8004518:	4802      	ldr	r0, [pc, #8]	; (8004524 <register_fini+0x10>)
 800451a:	f000 b805 	b.w	8004528 <atexit>
 800451e:	4770      	bx	lr
 8004520:	00000000 	.word	0x00000000
 8004524:	080056f5 	.word	0x080056f5

08004528 <atexit>:
 8004528:	2300      	movs	r3, #0
 800452a:	4601      	mov	r1, r0
 800452c:	461a      	mov	r2, r3
 800452e:	4618      	mov	r0, r3
 8004530:	f002 bd58 	b.w	8006fe4 <__register_exitproc>

08004534 <quorem>:
 8004534:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004538:	6903      	ldr	r3, [r0, #16]
 800453a:	690f      	ldr	r7, [r1, #16]
 800453c:	42bb      	cmp	r3, r7
 800453e:	b083      	sub	sp, #12
 8004540:	f2c0 8086 	blt.w	8004650 <quorem+0x11c>
 8004544:	3f01      	subs	r7, #1
 8004546:	f101 0914 	add.w	r9, r1, #20
 800454a:	f100 0a14 	add.w	sl, r0, #20
 800454e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004552:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004556:	00bc      	lsls	r4, r7, #2
 8004558:	3201      	adds	r2, #1
 800455a:	fbb3 f8f2 	udiv	r8, r3, r2
 800455e:	eb0a 0304 	add.w	r3, sl, r4
 8004562:	9400      	str	r4, [sp, #0]
 8004564:	eb09 0b04 	add.w	fp, r9, r4
 8004568:	9301      	str	r3, [sp, #4]
 800456a:	f1b8 0f00 	cmp.w	r8, #0
 800456e:	d038      	beq.n	80045e2 <quorem+0xae>
 8004570:	2500      	movs	r5, #0
 8004572:	462e      	mov	r6, r5
 8004574:	46ce      	mov	lr, r9
 8004576:	46d4      	mov	ip, sl
 8004578:	f85e 4b04 	ldr.w	r4, [lr], #4
 800457c:	f8dc 3000 	ldr.w	r3, [ip]
 8004580:	b2a2      	uxth	r2, r4
 8004582:	fb08 5502 	mla	r5, r8, r2, r5
 8004586:	0c22      	lsrs	r2, r4, #16
 8004588:	0c2c      	lsrs	r4, r5, #16
 800458a:	fb08 4202 	mla	r2, r8, r2, r4
 800458e:	b2ad      	uxth	r5, r5
 8004590:	1b75      	subs	r5, r6, r5
 8004592:	b296      	uxth	r6, r2
 8004594:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004598:	fa15 f383 	uxtah	r3, r5, r3
 800459c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80045a0:	b29b      	uxth	r3, r3
 80045a2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80045a6:	45f3      	cmp	fp, lr
 80045a8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80045ac:	f84c 3b04 	str.w	r3, [ip], #4
 80045b0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80045b4:	d2e0      	bcs.n	8004578 <quorem+0x44>
 80045b6:	9b00      	ldr	r3, [sp, #0]
 80045b8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80045bc:	b98b      	cbnz	r3, 80045e2 <quorem+0xae>
 80045be:	9a01      	ldr	r2, [sp, #4]
 80045c0:	1f13      	subs	r3, r2, #4
 80045c2:	459a      	cmp	sl, r3
 80045c4:	d20c      	bcs.n	80045e0 <quorem+0xac>
 80045c6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80045ca:	b94b      	cbnz	r3, 80045e0 <quorem+0xac>
 80045cc:	f1a2 0308 	sub.w	r3, r2, #8
 80045d0:	e002      	b.n	80045d8 <quorem+0xa4>
 80045d2:	681a      	ldr	r2, [r3, #0]
 80045d4:	3b04      	subs	r3, #4
 80045d6:	b91a      	cbnz	r2, 80045e0 <quorem+0xac>
 80045d8:	459a      	cmp	sl, r3
 80045da:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80045de:	d3f8      	bcc.n	80045d2 <quorem+0x9e>
 80045e0:	6107      	str	r7, [r0, #16]
 80045e2:	4604      	mov	r4, r0
 80045e4:	f002 f944 	bl	8006870 <__mcmp>
 80045e8:	2800      	cmp	r0, #0
 80045ea:	db2d      	blt.n	8004648 <quorem+0x114>
 80045ec:	f108 0801 	add.w	r8, r8, #1
 80045f0:	4655      	mov	r5, sl
 80045f2:	2300      	movs	r3, #0
 80045f4:	f859 1b04 	ldr.w	r1, [r9], #4
 80045f8:	6828      	ldr	r0, [r5, #0]
 80045fa:	b28a      	uxth	r2, r1
 80045fc:	1a9a      	subs	r2, r3, r2
 80045fe:	0c0b      	lsrs	r3, r1, #16
 8004600:	fa12 f280 	uxtah	r2, r2, r0
 8004604:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004608:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800460c:	b292      	uxth	r2, r2
 800460e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004612:	45cb      	cmp	fp, r9
 8004614:	f845 2b04 	str.w	r2, [r5], #4
 8004618:	ea4f 4323 	mov.w	r3, r3, asr #16
 800461c:	d2ea      	bcs.n	80045f4 <quorem+0xc0>
 800461e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004622:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004626:	b97a      	cbnz	r2, 8004648 <quorem+0x114>
 8004628:	1f1a      	subs	r2, r3, #4
 800462a:	4592      	cmp	sl, r2
 800462c:	d20b      	bcs.n	8004646 <quorem+0x112>
 800462e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004632:	b942      	cbnz	r2, 8004646 <quorem+0x112>
 8004634:	3b08      	subs	r3, #8
 8004636:	e002      	b.n	800463e <quorem+0x10a>
 8004638:	681a      	ldr	r2, [r3, #0]
 800463a:	3b04      	subs	r3, #4
 800463c:	b91a      	cbnz	r2, 8004646 <quorem+0x112>
 800463e:	459a      	cmp	sl, r3
 8004640:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004644:	d3f8      	bcc.n	8004638 <quorem+0x104>
 8004646:	6127      	str	r7, [r4, #16]
 8004648:	4640      	mov	r0, r8
 800464a:	b003      	add	sp, #12
 800464c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004650:	2000      	movs	r0, #0
 8004652:	b003      	add	sp, #12
 8004654:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004658 <_dtoa_r>:
 8004658:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800465c:	ec55 4b10 	vmov	r4, r5, d0
 8004660:	b09b      	sub	sp, #108	; 0x6c
 8004662:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004664:	9102      	str	r1, [sp, #8]
 8004666:	4681      	mov	r9, r0
 8004668:	9207      	str	r2, [sp, #28]
 800466a:	9305      	str	r3, [sp, #20]
 800466c:	e9cd 4500 	strd	r4, r5, [sp]
 8004670:	b156      	cbz	r6, 8004688 <_dtoa_r+0x30>
 8004672:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004674:	6072      	str	r2, [r6, #4]
 8004676:	2301      	movs	r3, #1
 8004678:	4093      	lsls	r3, r2
 800467a:	60b3      	str	r3, [r6, #8]
 800467c:	4631      	mov	r1, r6
 800467e:	f001 ff07 	bl	8006490 <_Bfree>
 8004682:	2300      	movs	r3, #0
 8004684:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004688:	f1b5 0800 	subs.w	r8, r5, #0
 800468c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800468e:	bfb4      	ite	lt
 8004690:	2301      	movlt	r3, #1
 8004692:	2300      	movge	r3, #0
 8004694:	6013      	str	r3, [r2, #0]
 8004696:	4b76      	ldr	r3, [pc, #472]	; (8004870 <_dtoa_r+0x218>)
 8004698:	bfbc      	itt	lt
 800469a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800469e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80046a2:	ea33 0308 	bics.w	r3, r3, r8
 80046a6:	f000 80a6 	beq.w	80047f6 <_dtoa_r+0x19e>
 80046aa:	e9dd 6700 	ldrd	r6, r7, [sp]
 80046ae:	2200      	movs	r2, #0
 80046b0:	2300      	movs	r3, #0
 80046b2:	4630      	mov	r0, r6
 80046b4:	4639      	mov	r1, r7
 80046b6:	f7fc fca7 	bl	8001008 <__aeabi_dcmpeq>
 80046ba:	4605      	mov	r5, r0
 80046bc:	b178      	cbz	r0, 80046de <_dtoa_r+0x86>
 80046be:	9a05      	ldr	r2, [sp, #20]
 80046c0:	2301      	movs	r3, #1
 80046c2:	6013      	str	r3, [r2, #0]
 80046c4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80046c6:	2b00      	cmp	r3, #0
 80046c8:	f000 80c0 	beq.w	800484c <_dtoa_r+0x1f4>
 80046cc:	4b69      	ldr	r3, [pc, #420]	; (8004874 <_dtoa_r+0x21c>)
 80046ce:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80046d0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80046d4:	6013      	str	r3, [r2, #0]
 80046d6:	4658      	mov	r0, fp
 80046d8:	b01b      	add	sp, #108	; 0x6c
 80046da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80046de:	aa18      	add	r2, sp, #96	; 0x60
 80046e0:	a919      	add	r1, sp, #100	; 0x64
 80046e2:	ec47 6b10 	vmov	d0, r6, r7
 80046e6:	4648      	mov	r0, r9
 80046e8:	f002 f954 	bl	8006994 <__d2b>
 80046ec:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80046f0:	4682      	mov	sl, r0
 80046f2:	f040 80a0 	bne.w	8004836 <_dtoa_r+0x1de>
 80046f6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80046fa:	442c      	add	r4, r5
 80046fc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004700:	2b20      	cmp	r3, #32
 8004702:	f340 842c 	ble.w	8004f5e <_dtoa_r+0x906>
 8004706:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800470a:	fa08 f803 	lsl.w	r8, r8, r3
 800470e:	9b00      	ldr	r3, [sp, #0]
 8004710:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004714:	fa23 f000 	lsr.w	r0, r3, r0
 8004718:	ea48 0000 	orr.w	r0, r8, r0
 800471c:	f7fc f992 	bl	8000a44 <__aeabi_ui2d>
 8004720:	2301      	movs	r3, #1
 8004722:	4606      	mov	r6, r0
 8004724:	3c01      	subs	r4, #1
 8004726:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800472a:	930f      	str	r3, [sp, #60]	; 0x3c
 800472c:	4630      	mov	r0, r6
 800472e:	4639      	mov	r1, r7
 8004730:	2200      	movs	r2, #0
 8004732:	4b51      	ldr	r3, [pc, #324]	; (8004878 <_dtoa_r+0x220>)
 8004734:	f7fc f848 	bl	80007c8 <__aeabi_dsub>
 8004738:	a347      	add	r3, pc, #284	; (adr r3, 8004858 <_dtoa_r+0x200>)
 800473a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800473e:	f7fc f9fb 	bl	8000b38 <__aeabi_dmul>
 8004742:	a347      	add	r3, pc, #284	; (adr r3, 8004860 <_dtoa_r+0x208>)
 8004744:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004748:	f7fc f840 	bl	80007cc <__adddf3>
 800474c:	4606      	mov	r6, r0
 800474e:	4620      	mov	r0, r4
 8004750:	460f      	mov	r7, r1
 8004752:	f7fc f987 	bl	8000a64 <__aeabi_i2d>
 8004756:	a344      	add	r3, pc, #272	; (adr r3, 8004868 <_dtoa_r+0x210>)
 8004758:	e9d3 2300 	ldrd	r2, r3, [r3]
 800475c:	f7fc f9ec 	bl	8000b38 <__aeabi_dmul>
 8004760:	4602      	mov	r2, r0
 8004762:	460b      	mov	r3, r1
 8004764:	4630      	mov	r0, r6
 8004766:	4639      	mov	r1, r7
 8004768:	f7fc f830 	bl	80007cc <__adddf3>
 800476c:	4606      	mov	r6, r0
 800476e:	460f      	mov	r7, r1
 8004770:	f7fc fc92 	bl	8001098 <__aeabi_d2iz>
 8004774:	2200      	movs	r2, #0
 8004776:	9006      	str	r0, [sp, #24]
 8004778:	2300      	movs	r3, #0
 800477a:	4630      	mov	r0, r6
 800477c:	4639      	mov	r1, r7
 800477e:	f7fc fc4d 	bl	800101c <__aeabi_dcmplt>
 8004782:	2800      	cmp	r0, #0
 8004784:	f040 8273 	bne.w	8004c6e <_dtoa_r+0x616>
 8004788:	9e06      	ldr	r6, [sp, #24]
 800478a:	2e16      	cmp	r6, #22
 800478c:	f200 825d 	bhi.w	8004c4a <_dtoa_r+0x5f2>
 8004790:	4b3a      	ldr	r3, [pc, #232]	; (800487c <_dtoa_r+0x224>)
 8004792:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004796:	e9d3 0100 	ldrd	r0, r1, [r3]
 800479a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800479e:	f7fc fc5b 	bl	8001058 <__aeabi_dcmpgt>
 80047a2:	2800      	cmp	r0, #0
 80047a4:	f000 83d7 	beq.w	8004f56 <_dtoa_r+0x8fe>
 80047a8:	1e73      	subs	r3, r6, #1
 80047aa:	9306      	str	r3, [sp, #24]
 80047ac:	2300      	movs	r3, #0
 80047ae:	930d      	str	r3, [sp, #52]	; 0x34
 80047b0:	1b2c      	subs	r4, r5, r4
 80047b2:	f1b4 0801 	subs.w	r8, r4, #1
 80047b6:	f100 8254 	bmi.w	8004c62 <_dtoa_r+0x60a>
 80047ba:	2300      	movs	r3, #0
 80047bc:	9308      	str	r3, [sp, #32]
 80047be:	9b06      	ldr	r3, [sp, #24]
 80047c0:	2b00      	cmp	r3, #0
 80047c2:	f2c0 8245 	blt.w	8004c50 <_dtoa_r+0x5f8>
 80047c6:	4498      	add	r8, r3
 80047c8:	930c      	str	r3, [sp, #48]	; 0x30
 80047ca:	2300      	movs	r3, #0
 80047cc:	930b      	str	r3, [sp, #44]	; 0x2c
 80047ce:	9b02      	ldr	r3, [sp, #8]
 80047d0:	2b09      	cmp	r3, #9
 80047d2:	d85b      	bhi.n	800488c <_dtoa_r+0x234>
 80047d4:	2b05      	cmp	r3, #5
 80047d6:	f340 83c0 	ble.w	8004f5a <_dtoa_r+0x902>
 80047da:	3b04      	subs	r3, #4
 80047dc:	9302      	str	r3, [sp, #8]
 80047de:	2500      	movs	r5, #0
 80047e0:	9b02      	ldr	r3, [sp, #8]
 80047e2:	3b02      	subs	r3, #2
 80047e4:	2b03      	cmp	r3, #3
 80047e6:	f200 8498 	bhi.w	800511a <_dtoa_r+0xac2>
 80047ea:	e8df f013 	tbh	[pc, r3, lsl #1]
 80047ee:	03df      	.short	0x03df
 80047f0:	03e803bf 	.word	0x03e803bf
 80047f4:	04f5      	.short	0x04f5
 80047f6:	9a05      	ldr	r2, [sp, #20]
 80047f8:	f242 730f 	movw	r3, #9999	; 0x270f
 80047fc:	6013      	str	r3, [r2, #0]
 80047fe:	9b00      	ldr	r3, [sp, #0]
 8004800:	b983      	cbnz	r3, 8004824 <_dtoa_r+0x1cc>
 8004802:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004806:	b96b      	cbnz	r3, 8004824 <_dtoa_r+0x1cc>
 8004808:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800480a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004880 <_dtoa_r+0x228>
 800480e:	2b00      	cmp	r3, #0
 8004810:	f43f af61 	beq.w	80046d6 <_dtoa_r+0x7e>
 8004814:	f10b 0308 	add.w	r3, fp, #8
 8004818:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800481a:	4658      	mov	r0, fp
 800481c:	6013      	str	r3, [r2, #0]
 800481e:	b01b      	add	sp, #108	; 0x6c
 8004820:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004824:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004826:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004884 <_dtoa_r+0x22c>
 800482a:	2b00      	cmp	r3, #0
 800482c:	f43f af53 	beq.w	80046d6 <_dtoa_r+0x7e>
 8004830:	f10b 0303 	add.w	r3, fp, #3
 8004834:	e7f0      	b.n	8004818 <_dtoa_r+0x1c0>
 8004836:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800483a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800483e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004840:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004844:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004848:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800484a:	e76f      	b.n	800472c <_dtoa_r+0xd4>
 800484c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004888 <_dtoa_r+0x230>
 8004850:	4658      	mov	r0, fp
 8004852:	b01b      	add	sp, #108	; 0x6c
 8004854:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004858:	636f4361 	.word	0x636f4361
 800485c:	3fd287a7 	.word	0x3fd287a7
 8004860:	8b60c8b3 	.word	0x8b60c8b3
 8004864:	3fc68a28 	.word	0x3fc68a28
 8004868:	509f79fb 	.word	0x509f79fb
 800486c:	3fd34413 	.word	0x3fd34413
 8004870:	7ff00000 	.word	0x7ff00000
 8004874:	08007689 	.word	0x08007689
 8004878:	3ff80000 	.word	0x3ff80000
 800487c:	080076e8 	.word	0x080076e8
 8004880:	080076ac 	.word	0x080076ac
 8004884:	080076b8 	.word	0x080076b8
 8004888:	08007688 	.word	0x08007688
 800488c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004890:	2501      	movs	r5, #1
 8004892:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004896:	2300      	movs	r3, #0
 8004898:	9302      	str	r3, [sp, #8]
 800489a:	9307      	str	r3, [sp, #28]
 800489c:	2100      	movs	r1, #0
 800489e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80048a2:	940e      	str	r4, [sp, #56]	; 0x38
 80048a4:	4648      	mov	r0, r9
 80048a6:	f001 fdcd 	bl	8006444 <_Balloc>
 80048aa:	2c0e      	cmp	r4, #14
 80048ac:	4683      	mov	fp, r0
 80048ae:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80048b2:	f200 80fb 	bhi.w	8004aac <_dtoa_r+0x454>
 80048b6:	2d00      	cmp	r5, #0
 80048b8:	f000 80f8 	beq.w	8004aac <_dtoa_r+0x454>
 80048bc:	ed9d 7b00 	vldr	d7, [sp]
 80048c0:	9906      	ldr	r1, [sp, #24]
 80048c2:	2900      	cmp	r1, #0
 80048c4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80048c8:	f340 83e5 	ble.w	8005096 <_dtoa_r+0xa3e>
 80048cc:	4b9d      	ldr	r3, [pc, #628]	; (8004b44 <_dtoa_r+0x4ec>)
 80048ce:	f001 020f 	and.w	r2, r1, #15
 80048d2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80048d6:	ed93 7b00 	vldr	d7, [r3]
 80048da:	110c      	asrs	r4, r1, #4
 80048dc:	06e2      	lsls	r2, r4, #27
 80048de:	ed8d 7b00 	vstr	d7, [sp]
 80048e2:	f140 849e 	bpl.w	8005222 <_dtoa_r+0xbca>
 80048e6:	4b98      	ldr	r3, [pc, #608]	; (8004b48 <_dtoa_r+0x4f0>)
 80048e8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80048ec:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80048f0:	f7fc fa4c 	bl	8000d8c <__aeabi_ddiv>
 80048f4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80048f8:	f004 040f 	and.w	r4, r4, #15
 80048fc:	2603      	movs	r6, #3
 80048fe:	b17c      	cbz	r4, 8004920 <_dtoa_r+0x2c8>
 8004900:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004904:	4d90      	ldr	r5, [pc, #576]	; (8004b48 <_dtoa_r+0x4f0>)
 8004906:	07e3      	lsls	r3, r4, #31
 8004908:	d504      	bpl.n	8004914 <_dtoa_r+0x2bc>
 800490a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800490e:	f7fc f913 	bl	8000b38 <__aeabi_dmul>
 8004912:	3601      	adds	r6, #1
 8004914:	1064      	asrs	r4, r4, #1
 8004916:	f105 0508 	add.w	r5, r5, #8
 800491a:	d1f4      	bne.n	8004906 <_dtoa_r+0x2ae>
 800491c:	e9cd 0100 	strd	r0, r1, [sp]
 8004920:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004924:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004928:	f7fc fa30 	bl	8000d8c <__aeabi_ddiv>
 800492c:	e9cd 0100 	strd	r0, r1, [sp]
 8004930:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004932:	b143      	cbz	r3, 8004946 <_dtoa_r+0x2ee>
 8004934:	2200      	movs	r2, #0
 8004936:	4b85      	ldr	r3, [pc, #532]	; (8004b4c <_dtoa_r+0x4f4>)
 8004938:	e9dd 0100 	ldrd	r0, r1, [sp]
 800493c:	f7fc fb6e 	bl	800101c <__aeabi_dcmplt>
 8004940:	2800      	cmp	r0, #0
 8004942:	f040 84ff 	bne.w	8005344 <_dtoa_r+0xcec>
 8004946:	4630      	mov	r0, r6
 8004948:	f7fc f88c 	bl	8000a64 <__aeabi_i2d>
 800494c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004950:	f7fc f8f2 	bl	8000b38 <__aeabi_dmul>
 8004954:	4b7e      	ldr	r3, [pc, #504]	; (8004b50 <_dtoa_r+0x4f8>)
 8004956:	2200      	movs	r2, #0
 8004958:	f7fb ff38 	bl	80007cc <__adddf3>
 800495c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800495e:	4606      	mov	r6, r0
 8004960:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004964:	2b00      	cmp	r3, #0
 8004966:	f000 841c 	beq.w	80051a2 <_dtoa_r+0xb4a>
 800496a:	9b06      	ldr	r3, [sp, #24]
 800496c:	9316      	str	r3, [sp, #88]	; 0x58
 800496e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004970:	9312      	str	r3, [sp, #72]	; 0x48
 8004972:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004976:	f7fc fb8f 	bl	8001098 <__aeabi_d2iz>
 800497a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800497c:	4b71      	ldr	r3, [pc, #452]	; (8004b44 <_dtoa_r+0x4ec>)
 800497e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004982:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004986:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800498a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800498e:	f7fc f869 	bl	8000a64 <__aeabi_i2d>
 8004992:	460b      	mov	r3, r1
 8004994:	4602      	mov	r2, r0
 8004996:	e9dd 0100 	ldrd	r0, r1, [sp]
 800499a:	e9cd 6700 	strd	r6, r7, [sp]
 800499e:	f7fb ff13 	bl	80007c8 <__aeabi_dsub>
 80049a2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80049a4:	b2ed      	uxtb	r5, r5
 80049a6:	4606      	mov	r6, r0
 80049a8:	460f      	mov	r7, r1
 80049aa:	f10b 0401 	add.w	r4, fp, #1
 80049ae:	2b00      	cmp	r3, #0
 80049b0:	f000 8458 	beq.w	8005264 <_dtoa_r+0xc0c>
 80049b4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80049b8:	2000      	movs	r0, #0
 80049ba:	4966      	ldr	r1, [pc, #408]	; (8004b54 <_dtoa_r+0x4fc>)
 80049bc:	f7fc f9e6 	bl	8000d8c <__aeabi_ddiv>
 80049c0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80049c4:	f7fb ff00 	bl	80007c8 <__aeabi_dsub>
 80049c8:	f88b 5000 	strb.w	r5, [fp]
 80049cc:	4632      	mov	r2, r6
 80049ce:	463b      	mov	r3, r7
 80049d0:	e9cd 0100 	strd	r0, r1, [sp]
 80049d4:	f7fc fb40 	bl	8001058 <__aeabi_dcmpgt>
 80049d8:	2800      	cmp	r0, #0
 80049da:	f040 8502 	bne.w	80053e2 <_dtoa_r+0xd8a>
 80049de:	4632      	mov	r2, r6
 80049e0:	463b      	mov	r3, r7
 80049e2:	2000      	movs	r0, #0
 80049e4:	4959      	ldr	r1, [pc, #356]	; (8004b4c <_dtoa_r+0x4f4>)
 80049e6:	f7fb feef 	bl	80007c8 <__aeabi_dsub>
 80049ea:	4602      	mov	r2, r0
 80049ec:	460b      	mov	r3, r1
 80049ee:	e9dd 0100 	ldrd	r0, r1, [sp]
 80049f2:	f7fc fb31 	bl	8001058 <__aeabi_dcmpgt>
 80049f6:	2800      	cmp	r0, #0
 80049f8:	f040 84fb 	bne.w	80053f2 <_dtoa_r+0xd9a>
 80049fc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80049fe:	2a01      	cmp	r2, #1
 8004a00:	d050      	beq.n	8004aa4 <_dtoa_r+0x44c>
 8004a02:	445a      	add	r2, fp
 8004a04:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004a08:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004a0c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004a10:	4692      	mov	sl, r2
 8004a12:	46cb      	mov	fp, r9
 8004a14:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004a18:	e00c      	b.n	8004a34 <_dtoa_r+0x3dc>
 8004a1a:	2000      	movs	r0, #0
 8004a1c:	494b      	ldr	r1, [pc, #300]	; (8004b4c <_dtoa_r+0x4f4>)
 8004a1e:	f7fb fed3 	bl	80007c8 <__aeabi_dsub>
 8004a22:	4642      	mov	r2, r8
 8004a24:	464b      	mov	r3, r9
 8004a26:	f7fc faf9 	bl	800101c <__aeabi_dcmplt>
 8004a2a:	2800      	cmp	r0, #0
 8004a2c:	f040 84dc 	bne.w	80053e8 <_dtoa_r+0xd90>
 8004a30:	4554      	cmp	r4, sl
 8004a32:	d030      	beq.n	8004a96 <_dtoa_r+0x43e>
 8004a34:	4640      	mov	r0, r8
 8004a36:	4649      	mov	r1, r9
 8004a38:	2200      	movs	r2, #0
 8004a3a:	4b47      	ldr	r3, [pc, #284]	; (8004b58 <_dtoa_r+0x500>)
 8004a3c:	f7fc f87c 	bl	8000b38 <__aeabi_dmul>
 8004a40:	2200      	movs	r2, #0
 8004a42:	4b45      	ldr	r3, [pc, #276]	; (8004b58 <_dtoa_r+0x500>)
 8004a44:	4680      	mov	r8, r0
 8004a46:	4689      	mov	r9, r1
 8004a48:	4630      	mov	r0, r6
 8004a4a:	4639      	mov	r1, r7
 8004a4c:	f7fc f874 	bl	8000b38 <__aeabi_dmul>
 8004a50:	460f      	mov	r7, r1
 8004a52:	4606      	mov	r6, r0
 8004a54:	f7fc fb20 	bl	8001098 <__aeabi_d2iz>
 8004a58:	4605      	mov	r5, r0
 8004a5a:	f7fc f803 	bl	8000a64 <__aeabi_i2d>
 8004a5e:	4602      	mov	r2, r0
 8004a60:	460b      	mov	r3, r1
 8004a62:	4630      	mov	r0, r6
 8004a64:	4639      	mov	r1, r7
 8004a66:	f7fb feaf 	bl	80007c8 <__aeabi_dsub>
 8004a6a:	3530      	adds	r5, #48	; 0x30
 8004a6c:	b2ed      	uxtb	r5, r5
 8004a6e:	4642      	mov	r2, r8
 8004a70:	464b      	mov	r3, r9
 8004a72:	f804 5b01 	strb.w	r5, [r4], #1
 8004a76:	4606      	mov	r6, r0
 8004a78:	460f      	mov	r7, r1
 8004a7a:	f7fc facf 	bl	800101c <__aeabi_dcmplt>
 8004a7e:	4632      	mov	r2, r6
 8004a80:	463b      	mov	r3, r7
 8004a82:	2800      	cmp	r0, #0
 8004a84:	d0c9      	beq.n	8004a1a <_dtoa_r+0x3c2>
 8004a86:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004a88:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004a8c:	9306      	str	r3, [sp, #24]
 8004a8e:	46d9      	mov	r9, fp
 8004a90:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004a94:	e236      	b.n	8004f04 <_dtoa_r+0x8ac>
 8004a96:	46d9      	mov	r9, fp
 8004a98:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004a9c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004aa0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004aa4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004aa8:	e9cd 3400 	strd	r3, r4, [sp]
 8004aac:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004aae:	2b00      	cmp	r3, #0
 8004ab0:	f2c0 80ae 	blt.w	8004c10 <_dtoa_r+0x5b8>
 8004ab4:	9a06      	ldr	r2, [sp, #24]
 8004ab6:	2a0e      	cmp	r2, #14
 8004ab8:	f300 80aa 	bgt.w	8004c10 <_dtoa_r+0x5b8>
 8004abc:	4b21      	ldr	r3, [pc, #132]	; (8004b44 <_dtoa_r+0x4ec>)
 8004abe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ac2:	ed93 7b00 	vldr	d7, [r3]
 8004ac6:	9b07      	ldr	r3, [sp, #28]
 8004ac8:	2b00      	cmp	r3, #0
 8004aca:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004ace:	f2c0 82be 	blt.w	800504e <_dtoa_r+0x9f6>
 8004ad2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004ad6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004ada:	4630      	mov	r0, r6
 8004adc:	4639      	mov	r1, r7
 8004ade:	f7fc f955 	bl	8000d8c <__aeabi_ddiv>
 8004ae2:	f7fc fad9 	bl	8001098 <__aeabi_d2iz>
 8004ae6:	4605      	mov	r5, r0
 8004ae8:	f7fb ffbc 	bl	8000a64 <__aeabi_i2d>
 8004aec:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004af0:	f7fc f822 	bl	8000b38 <__aeabi_dmul>
 8004af4:	460b      	mov	r3, r1
 8004af6:	4602      	mov	r2, r0
 8004af8:	4639      	mov	r1, r7
 8004afa:	4630      	mov	r0, r6
 8004afc:	f7fb fe64 	bl	80007c8 <__aeabi_dsub>
 8004b00:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004b04:	f88b 3000 	strb.w	r3, [fp]
 8004b08:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b0a:	2b01      	cmp	r3, #1
 8004b0c:	4606      	mov	r6, r0
 8004b0e:	460f      	mov	r7, r1
 8004b10:	f10b 0401 	add.w	r4, fp, #1
 8004b14:	d053      	beq.n	8004bbe <_dtoa_r+0x566>
 8004b16:	2200      	movs	r2, #0
 8004b18:	4b0f      	ldr	r3, [pc, #60]	; (8004b58 <_dtoa_r+0x500>)
 8004b1a:	f7fc f80d 	bl	8000b38 <__aeabi_dmul>
 8004b1e:	2200      	movs	r2, #0
 8004b20:	2300      	movs	r3, #0
 8004b22:	4606      	mov	r6, r0
 8004b24:	460f      	mov	r7, r1
 8004b26:	f7fc fa6f 	bl	8001008 <__aeabi_dcmpeq>
 8004b2a:	2800      	cmp	r0, #0
 8004b2c:	f040 81ea 	bne.w	8004f04 <_dtoa_r+0x8ac>
 8004b30:	f8cd a000 	str.w	sl, [sp]
 8004b34:	f8cd 901c 	str.w	r9, [sp, #28]
 8004b38:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004b3c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004b40:	e017      	b.n	8004b72 <_dtoa_r+0x51a>
 8004b42:	bf00      	nop
 8004b44:	080076e8 	.word	0x080076e8
 8004b48:	080076c0 	.word	0x080076c0
 8004b4c:	3ff00000 	.word	0x3ff00000
 8004b50:	401c0000 	.word	0x401c0000
 8004b54:	3fe00000 	.word	0x3fe00000
 8004b58:	40240000 	.word	0x40240000
 8004b5c:	f7fb ffec 	bl	8000b38 <__aeabi_dmul>
 8004b60:	2200      	movs	r2, #0
 8004b62:	2300      	movs	r3, #0
 8004b64:	4606      	mov	r6, r0
 8004b66:	460f      	mov	r7, r1
 8004b68:	f7fc fa4e 	bl	8001008 <__aeabi_dcmpeq>
 8004b6c:	2800      	cmp	r0, #0
 8004b6e:	f040 833d 	bne.w	80051ec <_dtoa_r+0xb94>
 8004b72:	464a      	mov	r2, r9
 8004b74:	4653      	mov	r3, sl
 8004b76:	4630      	mov	r0, r6
 8004b78:	4639      	mov	r1, r7
 8004b7a:	f7fc f907 	bl	8000d8c <__aeabi_ddiv>
 8004b7e:	f7fc fa8b 	bl	8001098 <__aeabi_d2iz>
 8004b82:	4605      	mov	r5, r0
 8004b84:	f7fb ff6e 	bl	8000a64 <__aeabi_i2d>
 8004b88:	464a      	mov	r2, r9
 8004b8a:	4653      	mov	r3, sl
 8004b8c:	f7fb ffd4 	bl	8000b38 <__aeabi_dmul>
 8004b90:	4602      	mov	r2, r0
 8004b92:	460b      	mov	r3, r1
 8004b94:	4630      	mov	r0, r6
 8004b96:	4639      	mov	r1, r7
 8004b98:	f7fb fe16 	bl	80007c8 <__aeabi_dsub>
 8004b9c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004ba0:	f804 cb01 	strb.w	ip, [r4], #1
 8004ba4:	eba4 0c0b 	sub.w	ip, r4, fp
 8004ba8:	45e0      	cmp	r8, ip
 8004baa:	4606      	mov	r6, r0
 8004bac:	460f      	mov	r7, r1
 8004bae:	f04f 0200 	mov.w	r2, #0
 8004bb2:	4bc1      	ldr	r3, [pc, #772]	; (8004eb8 <_dtoa_r+0x860>)
 8004bb4:	d1d2      	bne.n	8004b5c <_dtoa_r+0x504>
 8004bb6:	f8dd a000 	ldr.w	sl, [sp]
 8004bba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004bbe:	4632      	mov	r2, r6
 8004bc0:	463b      	mov	r3, r7
 8004bc2:	4630      	mov	r0, r6
 8004bc4:	4639      	mov	r1, r7
 8004bc6:	f7fb fe01 	bl	80007cc <__adddf3>
 8004bca:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004bce:	4606      	mov	r6, r0
 8004bd0:	460f      	mov	r7, r1
 8004bd2:	f7fc fa41 	bl	8001058 <__aeabi_dcmpgt>
 8004bd6:	b958      	cbnz	r0, 8004bf0 <_dtoa_r+0x598>
 8004bd8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004bdc:	4630      	mov	r0, r6
 8004bde:	4639      	mov	r1, r7
 8004be0:	f7fc fa12 	bl	8001008 <__aeabi_dcmpeq>
 8004be4:	2800      	cmp	r0, #0
 8004be6:	f000 818d 	beq.w	8004f04 <_dtoa_r+0x8ac>
 8004bea:	07e9      	lsls	r1, r5, #31
 8004bec:	f140 818a 	bpl.w	8004f04 <_dtoa_r+0x8ac>
 8004bf0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004bf4:	e005      	b.n	8004c02 <_dtoa_r+0x5aa>
 8004bf6:	459b      	cmp	fp, r3
 8004bf8:	f000 8373 	beq.w	80052e2 <_dtoa_r+0xc8a>
 8004bfc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004c00:	461c      	mov	r4, r3
 8004c02:	2d39      	cmp	r5, #57	; 0x39
 8004c04:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004c08:	d0f5      	beq.n	8004bf6 <_dtoa_r+0x59e>
 8004c0a:	3501      	adds	r5, #1
 8004c0c:	701d      	strb	r5, [r3, #0]
 8004c0e:	e179      	b.n	8004f04 <_dtoa_r+0x8ac>
 8004c10:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004c12:	2a00      	cmp	r2, #0
 8004c14:	d03b      	beq.n	8004c8e <_dtoa_r+0x636>
 8004c16:	9a02      	ldr	r2, [sp, #8]
 8004c18:	2a01      	cmp	r2, #1
 8004c1a:	f340 820b 	ble.w	8005034 <_dtoa_r+0x9dc>
 8004c1e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c20:	1e5f      	subs	r7, r3, #1
 8004c22:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004c24:	42bb      	cmp	r3, r7
 8004c26:	f2c0 82e6 	blt.w	80051f6 <_dtoa_r+0xb9e>
 8004c2a:	1bdf      	subs	r7, r3, r7
 8004c2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c2e:	2b00      	cmp	r3, #0
 8004c30:	f2c0 830b 	blt.w	800524a <_dtoa_r+0xbf2>
 8004c34:	9a08      	ldr	r2, [sp, #32]
 8004c36:	4614      	mov	r4, r2
 8004c38:	441a      	add	r2, r3
 8004c3a:	4498      	add	r8, r3
 8004c3c:	9208      	str	r2, [sp, #32]
 8004c3e:	2101      	movs	r1, #1
 8004c40:	4648      	mov	r0, r9
 8004c42:	f001 fcbf 	bl	80065c4 <__i2b>
 8004c46:	4605      	mov	r5, r0
 8004c48:	e024      	b.n	8004c94 <_dtoa_r+0x63c>
 8004c4a:	2301      	movs	r3, #1
 8004c4c:	930d      	str	r3, [sp, #52]	; 0x34
 8004c4e:	e5af      	b.n	80047b0 <_dtoa_r+0x158>
 8004c50:	9a08      	ldr	r2, [sp, #32]
 8004c52:	9b06      	ldr	r3, [sp, #24]
 8004c54:	1ad2      	subs	r2, r2, r3
 8004c56:	425b      	negs	r3, r3
 8004c58:	930b      	str	r3, [sp, #44]	; 0x2c
 8004c5a:	2300      	movs	r3, #0
 8004c5c:	9208      	str	r2, [sp, #32]
 8004c5e:	930c      	str	r3, [sp, #48]	; 0x30
 8004c60:	e5b5      	b.n	80047ce <_dtoa_r+0x176>
 8004c62:	f1c4 0301 	rsb	r3, r4, #1
 8004c66:	9308      	str	r3, [sp, #32]
 8004c68:	f04f 0800 	mov.w	r8, #0
 8004c6c:	e5a7      	b.n	80047be <_dtoa_r+0x166>
 8004c6e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004c72:	4640      	mov	r0, r8
 8004c74:	f7fb fef6 	bl	8000a64 <__aeabi_i2d>
 8004c78:	4632      	mov	r2, r6
 8004c7a:	463b      	mov	r3, r7
 8004c7c:	f7fc f9c4 	bl	8001008 <__aeabi_dcmpeq>
 8004c80:	2800      	cmp	r0, #0
 8004c82:	f47f ad81 	bne.w	8004788 <_dtoa_r+0x130>
 8004c86:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004c8a:	9306      	str	r3, [sp, #24]
 8004c8c:	e57c      	b.n	8004788 <_dtoa_r+0x130>
 8004c8e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004c90:	9c08      	ldr	r4, [sp, #32]
 8004c92:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004c94:	2c00      	cmp	r4, #0
 8004c96:	dd0c      	ble.n	8004cb2 <_dtoa_r+0x65a>
 8004c98:	f1b8 0f00 	cmp.w	r8, #0
 8004c9c:	dd09      	ble.n	8004cb2 <_dtoa_r+0x65a>
 8004c9e:	4544      	cmp	r4, r8
 8004ca0:	9a08      	ldr	r2, [sp, #32]
 8004ca2:	4623      	mov	r3, r4
 8004ca4:	bfa8      	it	ge
 8004ca6:	4643      	movge	r3, r8
 8004ca8:	1ad2      	subs	r2, r2, r3
 8004caa:	9208      	str	r2, [sp, #32]
 8004cac:	1ae4      	subs	r4, r4, r3
 8004cae:	eba8 0803 	sub.w	r8, r8, r3
 8004cb2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004cb4:	b16b      	cbz	r3, 8004cd2 <_dtoa_r+0x67a>
 8004cb6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004cb8:	2a00      	cmp	r2, #0
 8004cba:	f000 8290 	beq.w	80051de <_dtoa_r+0xb86>
 8004cbe:	1bde      	subs	r6, r3, r7
 8004cc0:	2f00      	cmp	r7, #0
 8004cc2:	f040 819b 	bne.w	8004ffc <_dtoa_r+0x9a4>
 8004cc6:	4651      	mov	r1, sl
 8004cc8:	4632      	mov	r2, r6
 8004cca:	4648      	mov	r0, r9
 8004ccc:	f001 fd2a 	bl	8006724 <__pow5mult>
 8004cd0:	4682      	mov	sl, r0
 8004cd2:	2101      	movs	r1, #1
 8004cd4:	4648      	mov	r0, r9
 8004cd6:	f001 fc75 	bl	80065c4 <__i2b>
 8004cda:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004cdc:	4606      	mov	r6, r0
 8004cde:	2a00      	cmp	r2, #0
 8004ce0:	f040 8125 	bne.w	8004f2e <_dtoa_r+0x8d6>
 8004ce4:	9b02      	ldr	r3, [sp, #8]
 8004ce6:	2b01      	cmp	r3, #1
 8004ce8:	f340 816c 	ble.w	8004fc4 <_dtoa_r+0x96c>
 8004cec:	2001      	movs	r0, #1
 8004cee:	4440      	add	r0, r8
 8004cf0:	f010 001f 	ands.w	r0, r0, #31
 8004cf4:	f000 8119 	beq.w	8004f2a <_dtoa_r+0x8d2>
 8004cf8:	f1c0 0320 	rsb	r3, r0, #32
 8004cfc:	2b04      	cmp	r3, #4
 8004cfe:	f340 83ac 	ble.w	800545a <_dtoa_r+0xe02>
 8004d02:	f1c0 001c 	rsb	r0, r0, #28
 8004d06:	9b08      	ldr	r3, [sp, #32]
 8004d08:	4403      	add	r3, r0
 8004d0a:	9308      	str	r3, [sp, #32]
 8004d0c:	4404      	add	r4, r0
 8004d0e:	4480      	add	r8, r0
 8004d10:	9b08      	ldr	r3, [sp, #32]
 8004d12:	2b00      	cmp	r3, #0
 8004d14:	dd05      	ble.n	8004d22 <_dtoa_r+0x6ca>
 8004d16:	4651      	mov	r1, sl
 8004d18:	461a      	mov	r2, r3
 8004d1a:	4648      	mov	r0, r9
 8004d1c:	f001 fd52 	bl	80067c4 <__lshift>
 8004d20:	4682      	mov	sl, r0
 8004d22:	f1b8 0f00 	cmp.w	r8, #0
 8004d26:	dd05      	ble.n	8004d34 <_dtoa_r+0x6dc>
 8004d28:	4631      	mov	r1, r6
 8004d2a:	4642      	mov	r2, r8
 8004d2c:	4648      	mov	r0, r9
 8004d2e:	f001 fd49 	bl	80067c4 <__lshift>
 8004d32:	4606      	mov	r6, r0
 8004d34:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004d36:	2b00      	cmp	r3, #0
 8004d38:	d177      	bne.n	8004e2a <_dtoa_r+0x7d2>
 8004d3a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d3c:	2b00      	cmp	r3, #0
 8004d3e:	f340 8209 	ble.w	8005154 <_dtoa_r+0xafc>
 8004d42:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004d44:	2b00      	cmp	r3, #0
 8004d46:	f000 8089 	beq.w	8004e5c <_dtoa_r+0x804>
 8004d4a:	2c00      	cmp	r4, #0
 8004d4c:	f300 816b 	bgt.w	8005026 <_dtoa_r+0x9ce>
 8004d50:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004d52:	2b00      	cmp	r3, #0
 8004d54:	f040 81cd 	bne.w	80050f2 <_dtoa_r+0xa9a>
 8004d58:	46a8      	mov	r8, r5
 8004d5a:	9a00      	ldr	r2, [sp, #0]
 8004d5c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004d60:	f002 0201 	and.w	r2, r2, #1
 8004d64:	920a      	str	r2, [sp, #40]	; 0x28
 8004d66:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004d68:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004d6c:	441a      	add	r2, r3
 8004d6e:	465f      	mov	r7, fp
 8004d70:	9209      	str	r2, [sp, #36]	; 0x24
 8004d72:	46b3      	mov	fp, r6
 8004d74:	4659      	mov	r1, fp
 8004d76:	4650      	mov	r0, sl
 8004d78:	f7ff fbdc 	bl	8004534 <quorem>
 8004d7c:	4629      	mov	r1, r5
 8004d7e:	4604      	mov	r4, r0
 8004d80:	4650      	mov	r0, sl
 8004d82:	f001 fd75 	bl	8006870 <__mcmp>
 8004d86:	4659      	mov	r1, fp
 8004d88:	4606      	mov	r6, r0
 8004d8a:	4642      	mov	r2, r8
 8004d8c:	4648      	mov	r0, r9
 8004d8e:	f001 fd8b 	bl	80068a8 <__mdiff>
 8004d92:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004d96:	9300      	str	r3, [sp, #0]
 8004d98:	68c3      	ldr	r3, [r0, #12]
 8004d9a:	4601      	mov	r1, r0
 8004d9c:	2b00      	cmp	r3, #0
 8004d9e:	f040 81d4 	bne.w	800514a <_dtoa_r+0xaf2>
 8004da2:	9008      	str	r0, [sp, #32]
 8004da4:	4650      	mov	r0, sl
 8004da6:	f001 fd63 	bl	8006870 <__mcmp>
 8004daa:	9a08      	ldr	r2, [sp, #32]
 8004dac:	9007      	str	r0, [sp, #28]
 8004dae:	4611      	mov	r1, r2
 8004db0:	4648      	mov	r0, r9
 8004db2:	f001 fb6d 	bl	8006490 <_Bfree>
 8004db6:	9b07      	ldr	r3, [sp, #28]
 8004db8:	b933      	cbnz	r3, 8004dc8 <_dtoa_r+0x770>
 8004dba:	9a02      	ldr	r2, [sp, #8]
 8004dbc:	b922      	cbnz	r2, 8004dc8 <_dtoa_r+0x770>
 8004dbe:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004dc0:	2b00      	cmp	r3, #0
 8004dc2:	f000 8319 	beq.w	80053f8 <_dtoa_r+0xda0>
 8004dc6:	9b02      	ldr	r3, [sp, #8]
 8004dc8:	2e00      	cmp	r6, #0
 8004dca:	f2c0 821c 	blt.w	8005206 <_dtoa_r+0xbae>
 8004dce:	d105      	bne.n	8004ddc <_dtoa_r+0x784>
 8004dd0:	9a02      	ldr	r2, [sp, #8]
 8004dd2:	b91a      	cbnz	r2, 8004ddc <_dtoa_r+0x784>
 8004dd4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004dd6:	2a00      	cmp	r2, #0
 8004dd8:	f000 8215 	beq.w	8005206 <_dtoa_r+0xbae>
 8004ddc:	2b00      	cmp	r3, #0
 8004dde:	f107 0401 	add.w	r4, r7, #1
 8004de2:	f300 8225 	bgt.w	8005230 <_dtoa_r+0xbd8>
 8004de6:	9b00      	ldr	r3, [sp, #0]
 8004de8:	703b      	strb	r3, [r7, #0]
 8004dea:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dec:	42bb      	cmp	r3, r7
 8004dee:	f000 8230 	beq.w	8005252 <_dtoa_r+0xbfa>
 8004df2:	4651      	mov	r1, sl
 8004df4:	2300      	movs	r3, #0
 8004df6:	220a      	movs	r2, #10
 8004df8:	4648      	mov	r0, r9
 8004dfa:	f001 fb53 	bl	80064a4 <__multadd>
 8004dfe:	4545      	cmp	r5, r8
 8004e00:	4682      	mov	sl, r0
 8004e02:	4629      	mov	r1, r5
 8004e04:	f04f 0300 	mov.w	r3, #0
 8004e08:	f04f 020a 	mov.w	r2, #10
 8004e0c:	4648      	mov	r0, r9
 8004e0e:	f000 8196 	beq.w	800513e <_dtoa_r+0xae6>
 8004e12:	f001 fb47 	bl	80064a4 <__multadd>
 8004e16:	4641      	mov	r1, r8
 8004e18:	4605      	mov	r5, r0
 8004e1a:	2300      	movs	r3, #0
 8004e1c:	220a      	movs	r2, #10
 8004e1e:	4648      	mov	r0, r9
 8004e20:	f001 fb40 	bl	80064a4 <__multadd>
 8004e24:	4627      	mov	r7, r4
 8004e26:	4680      	mov	r8, r0
 8004e28:	e7a4      	b.n	8004d74 <_dtoa_r+0x71c>
 8004e2a:	4631      	mov	r1, r6
 8004e2c:	4650      	mov	r0, sl
 8004e2e:	f001 fd1f 	bl	8006870 <__mcmp>
 8004e32:	2800      	cmp	r0, #0
 8004e34:	da81      	bge.n	8004d3a <_dtoa_r+0x6e2>
 8004e36:	9f06      	ldr	r7, [sp, #24]
 8004e38:	4651      	mov	r1, sl
 8004e3a:	2300      	movs	r3, #0
 8004e3c:	220a      	movs	r2, #10
 8004e3e:	4648      	mov	r0, r9
 8004e40:	3f01      	subs	r7, #1
 8004e42:	9706      	str	r7, [sp, #24]
 8004e44:	f001 fb2e 	bl	80064a4 <__multadd>
 8004e48:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e4a:	4682      	mov	sl, r0
 8004e4c:	2b00      	cmp	r3, #0
 8004e4e:	f040 82eb 	bne.w	8005428 <_dtoa_r+0xdd0>
 8004e52:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e54:	2b00      	cmp	r3, #0
 8004e56:	f340 82f3 	ble.w	8005440 <_dtoa_r+0xde8>
 8004e5a:	9309      	str	r3, [sp, #36]	; 0x24
 8004e5c:	465c      	mov	r4, fp
 8004e5e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004e62:	e002      	b.n	8004e6a <_dtoa_r+0x812>
 8004e64:	f001 fb1e 	bl	80064a4 <__multadd>
 8004e68:	4682      	mov	sl, r0
 8004e6a:	4631      	mov	r1, r6
 8004e6c:	4650      	mov	r0, sl
 8004e6e:	f7ff fb61 	bl	8004534 <quorem>
 8004e72:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004e76:	f804 7b01 	strb.w	r7, [r4], #1
 8004e7a:	eba4 030b 	sub.w	r3, r4, fp
 8004e7e:	4598      	cmp	r8, r3
 8004e80:	f04f 020a 	mov.w	r2, #10
 8004e84:	f04f 0300 	mov.w	r3, #0
 8004e88:	4651      	mov	r1, sl
 8004e8a:	4648      	mov	r0, r9
 8004e8c:	dcea      	bgt.n	8004e64 <_dtoa_r+0x80c>
 8004e8e:	2300      	movs	r3, #0
 8004e90:	9700      	str	r7, [sp, #0]
 8004e92:	9302      	str	r3, [sp, #8]
 8004e94:	4651      	mov	r1, sl
 8004e96:	2201      	movs	r2, #1
 8004e98:	4648      	mov	r0, r9
 8004e9a:	f001 fc93 	bl	80067c4 <__lshift>
 8004e9e:	4631      	mov	r1, r6
 8004ea0:	4682      	mov	sl, r0
 8004ea2:	f001 fce5 	bl	8006870 <__mcmp>
 8004ea6:	2800      	cmp	r0, #0
 8004ea8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004eac:	dc14      	bgt.n	8004ed8 <_dtoa_r+0x880>
 8004eae:	d108      	bne.n	8004ec2 <_dtoa_r+0x86a>
 8004eb0:	9b00      	ldr	r3, [sp, #0]
 8004eb2:	07db      	lsls	r3, r3, #31
 8004eb4:	d410      	bmi.n	8004ed8 <_dtoa_r+0x880>
 8004eb6:	e004      	b.n	8004ec2 <_dtoa_r+0x86a>
 8004eb8:	40240000 	.word	0x40240000
 8004ebc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004ec0:	461c      	mov	r4, r3
 8004ec2:	2a30      	cmp	r2, #48	; 0x30
 8004ec4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ec8:	d0f8      	beq.n	8004ebc <_dtoa_r+0x864>
 8004eca:	e00b      	b.n	8004ee4 <_dtoa_r+0x88c>
 8004ecc:	459b      	cmp	fp, r3
 8004ece:	f000 814e 	beq.w	800516e <_dtoa_r+0xb16>
 8004ed2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004ed6:	461c      	mov	r4, r3
 8004ed8:	2a39      	cmp	r2, #57	; 0x39
 8004eda:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ede:	d0f5      	beq.n	8004ecc <_dtoa_r+0x874>
 8004ee0:	3201      	adds	r2, #1
 8004ee2:	701a      	strb	r2, [r3, #0]
 8004ee4:	4631      	mov	r1, r6
 8004ee6:	4648      	mov	r0, r9
 8004ee8:	f001 fad2 	bl	8006490 <_Bfree>
 8004eec:	b155      	cbz	r5, 8004f04 <_dtoa_r+0x8ac>
 8004eee:	9902      	ldr	r1, [sp, #8]
 8004ef0:	b121      	cbz	r1, 8004efc <_dtoa_r+0x8a4>
 8004ef2:	42a9      	cmp	r1, r5
 8004ef4:	d002      	beq.n	8004efc <_dtoa_r+0x8a4>
 8004ef6:	4648      	mov	r0, r9
 8004ef8:	f001 faca 	bl	8006490 <_Bfree>
 8004efc:	4629      	mov	r1, r5
 8004efe:	4648      	mov	r0, r9
 8004f00:	f001 fac6 	bl	8006490 <_Bfree>
 8004f04:	4651      	mov	r1, sl
 8004f06:	4648      	mov	r0, r9
 8004f08:	f001 fac2 	bl	8006490 <_Bfree>
 8004f0c:	2200      	movs	r2, #0
 8004f0e:	9b06      	ldr	r3, [sp, #24]
 8004f10:	7022      	strb	r2, [r4, #0]
 8004f12:	9a05      	ldr	r2, [sp, #20]
 8004f14:	3301      	adds	r3, #1
 8004f16:	6013      	str	r3, [r2, #0]
 8004f18:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004f1a:	2b00      	cmp	r3, #0
 8004f1c:	f43f abdb 	beq.w	80046d6 <_dtoa_r+0x7e>
 8004f20:	4658      	mov	r0, fp
 8004f22:	601c      	str	r4, [r3, #0]
 8004f24:	b01b      	add	sp, #108	; 0x6c
 8004f26:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004f2a:	201c      	movs	r0, #28
 8004f2c:	e6eb      	b.n	8004d06 <_dtoa_r+0x6ae>
 8004f2e:	4601      	mov	r1, r0
 8004f30:	4648      	mov	r0, r9
 8004f32:	f001 fbf7 	bl	8006724 <__pow5mult>
 8004f36:	9b02      	ldr	r3, [sp, #8]
 8004f38:	2b01      	cmp	r3, #1
 8004f3a:	4606      	mov	r6, r0
 8004f3c:	f340 80d4 	ble.w	80050e8 <_dtoa_r+0xa90>
 8004f40:	2300      	movs	r3, #0
 8004f42:	930c      	str	r3, [sp, #48]	; 0x30
 8004f44:	6933      	ldr	r3, [r6, #16]
 8004f46:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004f4a:	6918      	ldr	r0, [r3, #16]
 8004f4c:	f001 faea 	bl	8006524 <__hi0bits>
 8004f50:	f1c0 0020 	rsb	r0, r0, #32
 8004f54:	e6cb      	b.n	8004cee <_dtoa_r+0x696>
 8004f56:	900d      	str	r0, [sp, #52]	; 0x34
 8004f58:	e42a      	b.n	80047b0 <_dtoa_r+0x158>
 8004f5a:	2501      	movs	r5, #1
 8004f5c:	e440      	b.n	80047e0 <_dtoa_r+0x188>
 8004f5e:	f1c3 0820 	rsb	r8, r3, #32
 8004f62:	9b00      	ldr	r3, [sp, #0]
 8004f64:	fa03 f008 	lsl.w	r0, r3, r8
 8004f68:	f7ff bbd8 	b.w	800471c <_dtoa_r+0xc4>
 8004f6c:	2300      	movs	r3, #0
 8004f6e:	930a      	str	r3, [sp, #40]	; 0x28
 8004f70:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004f74:	4413      	add	r3, r2
 8004f76:	930e      	str	r3, [sp, #56]	; 0x38
 8004f78:	3301      	adds	r3, #1
 8004f7a:	2b01      	cmp	r3, #1
 8004f7c:	461e      	mov	r6, r3
 8004f7e:	9309      	str	r3, [sp, #36]	; 0x24
 8004f80:	bfb8      	it	lt
 8004f82:	2601      	movlt	r6, #1
 8004f84:	2100      	movs	r1, #0
 8004f86:	2e17      	cmp	r6, #23
 8004f88:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004f8c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004f8e:	f77f ac89 	ble.w	80048a4 <_dtoa_r+0x24c>
 8004f92:	2201      	movs	r2, #1
 8004f94:	2304      	movs	r3, #4
 8004f96:	005b      	lsls	r3, r3, #1
 8004f98:	f103 0014 	add.w	r0, r3, #20
 8004f9c:	42b0      	cmp	r0, r6
 8004f9e:	4611      	mov	r1, r2
 8004fa0:	f102 0201 	add.w	r2, r2, #1
 8004fa4:	d9f7      	bls.n	8004f96 <_dtoa_r+0x93e>
 8004fa6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004faa:	e47b      	b.n	80048a4 <_dtoa_r+0x24c>
 8004fac:	2300      	movs	r3, #0
 8004fae:	930a      	str	r3, [sp, #40]	; 0x28
 8004fb0:	9e07      	ldr	r6, [sp, #28]
 8004fb2:	2e00      	cmp	r6, #0
 8004fb4:	f340 80e2 	ble.w	800517c <_dtoa_r+0xb24>
 8004fb8:	960e      	str	r6, [sp, #56]	; 0x38
 8004fba:	9609      	str	r6, [sp, #36]	; 0x24
 8004fbc:	e7e2      	b.n	8004f84 <_dtoa_r+0x92c>
 8004fbe:	2301      	movs	r3, #1
 8004fc0:	930a      	str	r3, [sp, #40]	; 0x28
 8004fc2:	e7f5      	b.n	8004fb0 <_dtoa_r+0x958>
 8004fc4:	9b00      	ldr	r3, [sp, #0]
 8004fc6:	2b00      	cmp	r3, #0
 8004fc8:	f47f ae90 	bne.w	8004cec <_dtoa_r+0x694>
 8004fcc:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004fd0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004fd4:	2b00      	cmp	r3, #0
 8004fd6:	f040 8192 	bne.w	80052fe <_dtoa_r+0xca6>
 8004fda:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004fde:	0d1b      	lsrs	r3, r3, #20
 8004fe0:	051b      	lsls	r3, r3, #20
 8004fe2:	b12b      	cbz	r3, 8004ff0 <_dtoa_r+0x998>
 8004fe4:	9b08      	ldr	r3, [sp, #32]
 8004fe6:	3301      	adds	r3, #1
 8004fe8:	9308      	str	r3, [sp, #32]
 8004fea:	f108 0801 	add.w	r8, r8, #1
 8004fee:	2301      	movs	r3, #1
 8004ff0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004ff2:	930c      	str	r3, [sp, #48]	; 0x30
 8004ff4:	2a00      	cmp	r2, #0
 8004ff6:	f43f ae79 	beq.w	8004cec <_dtoa_r+0x694>
 8004ffa:	e7a3      	b.n	8004f44 <_dtoa_r+0x8ec>
 8004ffc:	463a      	mov	r2, r7
 8004ffe:	4629      	mov	r1, r5
 8005000:	4648      	mov	r0, r9
 8005002:	f001 fb8f 	bl	8006724 <__pow5mult>
 8005006:	4652      	mov	r2, sl
 8005008:	4601      	mov	r1, r0
 800500a:	4605      	mov	r5, r0
 800500c:	4648      	mov	r0, r9
 800500e:	f001 fae3 	bl	80065d8 <__multiply>
 8005012:	4651      	mov	r1, sl
 8005014:	4607      	mov	r7, r0
 8005016:	4648      	mov	r0, r9
 8005018:	f001 fa3a 	bl	8006490 <_Bfree>
 800501c:	46ba      	mov	sl, r7
 800501e:	2e00      	cmp	r6, #0
 8005020:	f43f ae57 	beq.w	8004cd2 <_dtoa_r+0x67a>
 8005024:	e64f      	b.n	8004cc6 <_dtoa_r+0x66e>
 8005026:	4629      	mov	r1, r5
 8005028:	4622      	mov	r2, r4
 800502a:	4648      	mov	r0, r9
 800502c:	f001 fbca 	bl	80067c4 <__lshift>
 8005030:	4605      	mov	r5, r0
 8005032:	e68d      	b.n	8004d50 <_dtoa_r+0x6f8>
 8005034:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005036:	2a00      	cmp	r2, #0
 8005038:	f000 815d 	beq.w	80052f6 <_dtoa_r+0xc9e>
 800503c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005040:	9a08      	ldr	r2, [sp, #32]
 8005042:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005044:	4614      	mov	r4, r2
 8005046:	441a      	add	r2, r3
 8005048:	4498      	add	r8, r3
 800504a:	9208      	str	r2, [sp, #32]
 800504c:	e5f7      	b.n	8004c3e <_dtoa_r+0x5e6>
 800504e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005050:	2b00      	cmp	r3, #0
 8005052:	f73f ad3e 	bgt.w	8004ad2 <_dtoa_r+0x47a>
 8005056:	f040 80bc 	bne.w	80051d2 <_dtoa_r+0xb7a>
 800505a:	ec51 0b17 	vmov	r0, r1, d7
 800505e:	2200      	movs	r2, #0
 8005060:	4bb2      	ldr	r3, [pc, #712]	; (800532c <_dtoa_r+0xcd4>)
 8005062:	f7fb fd69 	bl	8000b38 <__aeabi_dmul>
 8005066:	e9dd 2300 	ldrd	r2, r3, [sp]
 800506a:	f7fb ffeb 	bl	8001044 <__aeabi_dcmpge>
 800506e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005070:	4635      	mov	r5, r6
 8005072:	2800      	cmp	r0, #0
 8005074:	d176      	bne.n	8005164 <_dtoa_r+0xb0c>
 8005076:	9a06      	ldr	r2, [sp, #24]
 8005078:	2331      	movs	r3, #49	; 0x31
 800507a:	3201      	adds	r2, #1
 800507c:	9206      	str	r2, [sp, #24]
 800507e:	f88b 3000 	strb.w	r3, [fp]
 8005082:	f10b 0401 	add.w	r4, fp, #1
 8005086:	4631      	mov	r1, r6
 8005088:	4648      	mov	r0, r9
 800508a:	f001 fa01 	bl	8006490 <_Bfree>
 800508e:	2d00      	cmp	r5, #0
 8005090:	f47f af34 	bne.w	8004efc <_dtoa_r+0x8a4>
 8005094:	e736      	b.n	8004f04 <_dtoa_r+0x8ac>
 8005096:	f000 8142 	beq.w	800531e <_dtoa_r+0xcc6>
 800509a:	9b06      	ldr	r3, [sp, #24]
 800509c:	425c      	negs	r4, r3
 800509e:	4ba4      	ldr	r3, [pc, #656]	; (8005330 <_dtoa_r+0xcd8>)
 80050a0:	f004 020f 	and.w	r2, r4, #15
 80050a4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80050a8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80050ac:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80050b0:	f7fb fd42 	bl	8000b38 <__aeabi_dmul>
 80050b4:	1124      	asrs	r4, r4, #4
 80050b6:	e9cd 0100 	strd	r0, r1, [sp]
 80050ba:	f000 81c6 	beq.w	800544a <_dtoa_r+0xdf2>
 80050be:	4d9d      	ldr	r5, [pc, #628]	; (8005334 <_dtoa_r+0xcdc>)
 80050c0:	2300      	movs	r3, #0
 80050c2:	2602      	movs	r6, #2
 80050c4:	07e7      	lsls	r7, r4, #31
 80050c6:	d505      	bpl.n	80050d4 <_dtoa_r+0xa7c>
 80050c8:	e9d5 2300 	ldrd	r2, r3, [r5]
 80050cc:	f7fb fd34 	bl	8000b38 <__aeabi_dmul>
 80050d0:	3601      	adds	r6, #1
 80050d2:	2301      	movs	r3, #1
 80050d4:	1064      	asrs	r4, r4, #1
 80050d6:	f105 0508 	add.w	r5, r5, #8
 80050da:	d1f3      	bne.n	80050c4 <_dtoa_r+0xa6c>
 80050dc:	2b00      	cmp	r3, #0
 80050de:	f43f ac27 	beq.w	8004930 <_dtoa_r+0x2d8>
 80050e2:	e9cd 0100 	strd	r0, r1, [sp]
 80050e6:	e423      	b.n	8004930 <_dtoa_r+0x2d8>
 80050e8:	9b00      	ldr	r3, [sp, #0]
 80050ea:	2b00      	cmp	r3, #0
 80050ec:	f43f af6e 	beq.w	8004fcc <_dtoa_r+0x974>
 80050f0:	e726      	b.n	8004f40 <_dtoa_r+0x8e8>
 80050f2:	6869      	ldr	r1, [r5, #4]
 80050f4:	4648      	mov	r0, r9
 80050f6:	f001 f9a5 	bl	8006444 <_Balloc>
 80050fa:	692b      	ldr	r3, [r5, #16]
 80050fc:	3302      	adds	r3, #2
 80050fe:	009a      	lsls	r2, r3, #2
 8005100:	4604      	mov	r4, r0
 8005102:	f105 010c 	add.w	r1, r5, #12
 8005106:	300c      	adds	r0, #12
 8005108:	f7fb f9fa 	bl	8000500 <memcpy>
 800510c:	4621      	mov	r1, r4
 800510e:	2201      	movs	r2, #1
 8005110:	4648      	mov	r0, r9
 8005112:	f001 fb57 	bl	80067c4 <__lshift>
 8005116:	4680      	mov	r8, r0
 8005118:	e61f      	b.n	8004d5a <_dtoa_r+0x702>
 800511a:	2400      	movs	r4, #0
 800511c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005120:	4621      	mov	r1, r4
 8005122:	4648      	mov	r0, r9
 8005124:	f001 f98e 	bl	8006444 <_Balloc>
 8005128:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800512c:	930e      	str	r3, [sp, #56]	; 0x38
 800512e:	9309      	str	r3, [sp, #36]	; 0x24
 8005130:	2301      	movs	r3, #1
 8005132:	4683      	mov	fp, r0
 8005134:	9407      	str	r4, [sp, #28]
 8005136:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800513a:	930a      	str	r3, [sp, #40]	; 0x28
 800513c:	e4b6      	b.n	8004aac <_dtoa_r+0x454>
 800513e:	f001 f9b1 	bl	80064a4 <__multadd>
 8005142:	4627      	mov	r7, r4
 8005144:	4605      	mov	r5, r0
 8005146:	4680      	mov	r8, r0
 8005148:	e614      	b.n	8004d74 <_dtoa_r+0x71c>
 800514a:	4648      	mov	r0, r9
 800514c:	f001 f9a0 	bl	8006490 <_Bfree>
 8005150:	2301      	movs	r3, #1
 8005152:	e639      	b.n	8004dc8 <_dtoa_r+0x770>
 8005154:	9b02      	ldr	r3, [sp, #8]
 8005156:	2b02      	cmp	r3, #2
 8005158:	f77f adf3 	ble.w	8004d42 <_dtoa_r+0x6ea>
 800515c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800515e:	2b00      	cmp	r3, #0
 8005160:	f000 80cf 	beq.w	8005302 <_dtoa_r+0xcaa>
 8005164:	9b07      	ldr	r3, [sp, #28]
 8005166:	43db      	mvns	r3, r3
 8005168:	9306      	str	r3, [sp, #24]
 800516a:	465c      	mov	r4, fp
 800516c:	e78b      	b.n	8005086 <_dtoa_r+0xa2e>
 800516e:	9a06      	ldr	r2, [sp, #24]
 8005170:	2331      	movs	r3, #49	; 0x31
 8005172:	3201      	adds	r2, #1
 8005174:	9206      	str	r2, [sp, #24]
 8005176:	f88b 3000 	strb.w	r3, [fp]
 800517a:	e6b3      	b.n	8004ee4 <_dtoa_r+0x88c>
 800517c:	2401      	movs	r4, #1
 800517e:	9409      	str	r4, [sp, #36]	; 0x24
 8005180:	9407      	str	r4, [sp, #28]
 8005182:	f7ff bb8b 	b.w	800489c <_dtoa_r+0x244>
 8005186:	4630      	mov	r0, r6
 8005188:	f7fb fc6c 	bl	8000a64 <__aeabi_i2d>
 800518c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005190:	f7fb fcd2 	bl	8000b38 <__aeabi_dmul>
 8005194:	2200      	movs	r2, #0
 8005196:	4b68      	ldr	r3, [pc, #416]	; (8005338 <_dtoa_r+0xce0>)
 8005198:	f7fb fb18 	bl	80007cc <__adddf3>
 800519c:	4606      	mov	r6, r0
 800519e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80051a2:	2200      	movs	r2, #0
 80051a4:	4b61      	ldr	r3, [pc, #388]	; (800532c <_dtoa_r+0xcd4>)
 80051a6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80051aa:	f7fb fb0d 	bl	80007c8 <__aeabi_dsub>
 80051ae:	4632      	mov	r2, r6
 80051b0:	463b      	mov	r3, r7
 80051b2:	4604      	mov	r4, r0
 80051b4:	460d      	mov	r5, r1
 80051b6:	f7fb ff4f 	bl	8001058 <__aeabi_dcmpgt>
 80051ba:	2800      	cmp	r0, #0
 80051bc:	d14f      	bne.n	800525e <_dtoa_r+0xc06>
 80051be:	4632      	mov	r2, r6
 80051c0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80051c4:	4620      	mov	r0, r4
 80051c6:	4629      	mov	r1, r5
 80051c8:	f7fb ff28 	bl	800101c <__aeabi_dcmplt>
 80051cc:	2800      	cmp	r0, #0
 80051ce:	f43f ac69 	beq.w	8004aa4 <_dtoa_r+0x44c>
 80051d2:	2600      	movs	r6, #0
 80051d4:	4635      	mov	r5, r6
 80051d6:	e7c5      	b.n	8005164 <_dtoa_r+0xb0c>
 80051d8:	2301      	movs	r3, #1
 80051da:	930a      	str	r3, [sp, #40]	; 0x28
 80051dc:	e6c8      	b.n	8004f70 <_dtoa_r+0x918>
 80051de:	4651      	mov	r1, sl
 80051e0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80051e2:	4648      	mov	r0, r9
 80051e4:	f001 fa9e 	bl	8006724 <__pow5mult>
 80051e8:	4682      	mov	sl, r0
 80051ea:	e572      	b.n	8004cd2 <_dtoa_r+0x67a>
 80051ec:	f8dd a000 	ldr.w	sl, [sp]
 80051f0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80051f4:	e686      	b.n	8004f04 <_dtoa_r+0x8ac>
 80051f6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80051f8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80051fa:	1afb      	subs	r3, r7, r3
 80051fc:	441a      	add	r2, r3
 80051fe:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005202:	2700      	movs	r7, #0
 8005204:	e512      	b.n	8004c2c <_dtoa_r+0x5d4>
 8005206:	2b00      	cmp	r3, #0
 8005208:	9402      	str	r4, [sp, #8]
 800520a:	465e      	mov	r6, fp
 800520c:	f107 0401 	add.w	r4, r7, #1
 8005210:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005214:	f300 80ba 	bgt.w	800538c <_dtoa_r+0xd34>
 8005218:	9b00      	ldr	r3, [sp, #0]
 800521a:	9502      	str	r5, [sp, #8]
 800521c:	703b      	strb	r3, [r7, #0]
 800521e:	4645      	mov	r5, r8
 8005220:	e660      	b.n	8004ee4 <_dtoa_r+0x88c>
 8005222:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005226:	2602      	movs	r6, #2
 8005228:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800522c:	f7ff bb67 	b.w	80048fe <_dtoa_r+0x2a6>
 8005230:	9b00      	ldr	r3, [sp, #0]
 8005232:	2b39      	cmp	r3, #57	; 0x39
 8005234:	465e      	mov	r6, fp
 8005236:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800523a:	f000 80b9 	beq.w	80053b0 <_dtoa_r+0xd58>
 800523e:	9b00      	ldr	r3, [sp, #0]
 8005240:	9502      	str	r5, [sp, #8]
 8005242:	3301      	adds	r3, #1
 8005244:	703b      	strb	r3, [r7, #0]
 8005246:	4645      	mov	r5, r8
 8005248:	e64c      	b.n	8004ee4 <_dtoa_r+0x88c>
 800524a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800524e:	1a9c      	subs	r4, r3, r2
 8005250:	e4f5      	b.n	8004c3e <_dtoa_r+0x5e6>
 8005252:	465e      	mov	r6, fp
 8005254:	9502      	str	r5, [sp, #8]
 8005256:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800525a:	4645      	mov	r5, r8
 800525c:	e61a      	b.n	8004e94 <_dtoa_r+0x83c>
 800525e:	2600      	movs	r6, #0
 8005260:	4635      	mov	r5, r6
 8005262:	e708      	b.n	8005076 <_dtoa_r+0xa1e>
 8005264:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005268:	e9dd 0100 	ldrd	r0, r1, [sp]
 800526c:	f7fb fc64 	bl	8000b38 <__aeabi_dmul>
 8005270:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005272:	f88b 5000 	strb.w	r5, [fp]
 8005276:	2b01      	cmp	r3, #1
 8005278:	e9cd 0100 	strd	r0, r1, [sp]
 800527c:	d020      	beq.n	80052c0 <_dtoa_r+0xc68>
 800527e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005280:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005284:	445b      	add	r3, fp
 8005286:	4698      	mov	r8, r3
 8005288:	2200      	movs	r2, #0
 800528a:	4b2c      	ldr	r3, [pc, #176]	; (800533c <_dtoa_r+0xce4>)
 800528c:	4630      	mov	r0, r6
 800528e:	4639      	mov	r1, r7
 8005290:	f7fb fc52 	bl	8000b38 <__aeabi_dmul>
 8005294:	460f      	mov	r7, r1
 8005296:	4606      	mov	r6, r0
 8005298:	f7fb fefe 	bl	8001098 <__aeabi_d2iz>
 800529c:	4605      	mov	r5, r0
 800529e:	f7fb fbe1 	bl	8000a64 <__aeabi_i2d>
 80052a2:	3530      	adds	r5, #48	; 0x30
 80052a4:	4602      	mov	r2, r0
 80052a6:	460b      	mov	r3, r1
 80052a8:	4630      	mov	r0, r6
 80052aa:	4639      	mov	r1, r7
 80052ac:	f7fb fa8c 	bl	80007c8 <__aeabi_dsub>
 80052b0:	f804 5b01 	strb.w	r5, [r4], #1
 80052b4:	4544      	cmp	r4, r8
 80052b6:	4606      	mov	r6, r0
 80052b8:	460f      	mov	r7, r1
 80052ba:	d1e5      	bne.n	8005288 <_dtoa_r+0xc30>
 80052bc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80052c0:	4b1f      	ldr	r3, [pc, #124]	; (8005340 <_dtoa_r+0xce8>)
 80052c2:	2200      	movs	r2, #0
 80052c4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80052c8:	f7fb fa80 	bl	80007cc <__adddf3>
 80052cc:	4632      	mov	r2, r6
 80052ce:	463b      	mov	r3, r7
 80052d0:	f7fb fea4 	bl	800101c <__aeabi_dcmplt>
 80052d4:	2800      	cmp	r0, #0
 80052d6:	d070      	beq.n	80053ba <_dtoa_r+0xd62>
 80052d8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80052da:	9306      	str	r3, [sp, #24]
 80052dc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80052e0:	e48f      	b.n	8004c02 <_dtoa_r+0x5aa>
 80052e2:	2330      	movs	r3, #48	; 0x30
 80052e4:	f88b 3000 	strb.w	r3, [fp]
 80052e8:	9b06      	ldr	r3, [sp, #24]
 80052ea:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80052ee:	3301      	adds	r3, #1
 80052f0:	9306      	str	r3, [sp, #24]
 80052f2:	465b      	mov	r3, fp
 80052f4:	e489      	b.n	8004c0a <_dtoa_r+0x5b2>
 80052f6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80052f8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80052fc:	e6a0      	b.n	8005040 <_dtoa_r+0x9e8>
 80052fe:	2300      	movs	r3, #0
 8005300:	e676      	b.n	8004ff0 <_dtoa_r+0x998>
 8005302:	4631      	mov	r1, r6
 8005304:	2205      	movs	r2, #5
 8005306:	4648      	mov	r0, r9
 8005308:	f001 f8cc 	bl	80064a4 <__multadd>
 800530c:	4601      	mov	r1, r0
 800530e:	4606      	mov	r6, r0
 8005310:	4650      	mov	r0, sl
 8005312:	f001 faad 	bl	8006870 <__mcmp>
 8005316:	2800      	cmp	r0, #0
 8005318:	f73f aead 	bgt.w	8005076 <_dtoa_r+0xa1e>
 800531c:	e722      	b.n	8005164 <_dtoa_r+0xb0c>
 800531e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005322:	2602      	movs	r6, #2
 8005324:	ed8d 7b00 	vstr	d7, [sp]
 8005328:	f7ff bb02 	b.w	8004930 <_dtoa_r+0x2d8>
 800532c:	40140000 	.word	0x40140000
 8005330:	080076e8 	.word	0x080076e8
 8005334:	080076c0 	.word	0x080076c0
 8005338:	401c0000 	.word	0x401c0000
 800533c:	40240000 	.word	0x40240000
 8005340:	3fe00000 	.word	0x3fe00000
 8005344:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005346:	2b00      	cmp	r3, #0
 8005348:	f43f af1d 	beq.w	8005186 <_dtoa_r+0xb2e>
 800534c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800534e:	2c00      	cmp	r4, #0
 8005350:	f77f aba8 	ble.w	8004aa4 <_dtoa_r+0x44c>
 8005354:	2200      	movs	r2, #0
 8005356:	4b45      	ldr	r3, [pc, #276]	; (800546c <_dtoa_r+0xe14>)
 8005358:	e9dd 0100 	ldrd	r0, r1, [sp]
 800535c:	f7fb fbec 	bl	8000b38 <__aeabi_dmul>
 8005360:	e9cd 0100 	strd	r0, r1, [sp]
 8005364:	1c70      	adds	r0, r6, #1
 8005366:	f7fb fb7d 	bl	8000a64 <__aeabi_i2d>
 800536a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800536e:	f7fb fbe3 	bl	8000b38 <__aeabi_dmul>
 8005372:	4b3f      	ldr	r3, [pc, #252]	; (8005470 <_dtoa_r+0xe18>)
 8005374:	2200      	movs	r2, #0
 8005376:	f7fb fa29 	bl	80007cc <__adddf3>
 800537a:	9b06      	ldr	r3, [sp, #24]
 800537c:	9412      	str	r4, [sp, #72]	; 0x48
 800537e:	3b01      	subs	r3, #1
 8005380:	4606      	mov	r6, r0
 8005382:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005386:	9316      	str	r3, [sp, #88]	; 0x58
 8005388:	f7ff baf3 	b.w	8004972 <_dtoa_r+0x31a>
 800538c:	4651      	mov	r1, sl
 800538e:	2201      	movs	r2, #1
 8005390:	4648      	mov	r0, r9
 8005392:	f001 fa17 	bl	80067c4 <__lshift>
 8005396:	4631      	mov	r1, r6
 8005398:	4682      	mov	sl, r0
 800539a:	f001 fa69 	bl	8006870 <__mcmp>
 800539e:	2800      	cmp	r0, #0
 80053a0:	dd3b      	ble.n	800541a <_dtoa_r+0xdc2>
 80053a2:	9b00      	ldr	r3, [sp, #0]
 80053a4:	2b39      	cmp	r3, #57	; 0x39
 80053a6:	d003      	beq.n	80053b0 <_dtoa_r+0xd58>
 80053a8:	9b02      	ldr	r3, [sp, #8]
 80053aa:	3331      	adds	r3, #49	; 0x31
 80053ac:	9300      	str	r3, [sp, #0]
 80053ae:	e733      	b.n	8005218 <_dtoa_r+0xbc0>
 80053b0:	2239      	movs	r2, #57	; 0x39
 80053b2:	9502      	str	r5, [sp, #8]
 80053b4:	703a      	strb	r2, [r7, #0]
 80053b6:	4645      	mov	r5, r8
 80053b8:	e58e      	b.n	8004ed8 <_dtoa_r+0x880>
 80053ba:	e9dd 2300 	ldrd	r2, r3, [sp]
 80053be:	2000      	movs	r0, #0
 80053c0:	492c      	ldr	r1, [pc, #176]	; (8005474 <_dtoa_r+0xe1c>)
 80053c2:	f7fb fa01 	bl	80007c8 <__aeabi_dsub>
 80053c6:	4632      	mov	r2, r6
 80053c8:	463b      	mov	r3, r7
 80053ca:	f7fb fe45 	bl	8001058 <__aeabi_dcmpgt>
 80053ce:	b910      	cbnz	r0, 80053d6 <_dtoa_r+0xd7e>
 80053d0:	f7ff bb68 	b.w	8004aa4 <_dtoa_r+0x44c>
 80053d4:	4614      	mov	r4, r2
 80053d6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80053da:	2b30      	cmp	r3, #48	; 0x30
 80053dc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80053e0:	d0f8      	beq.n	80053d4 <_dtoa_r+0xd7c>
 80053e2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80053e4:	9306      	str	r3, [sp, #24]
 80053e6:	e58d      	b.n	8004f04 <_dtoa_r+0x8ac>
 80053e8:	46d9      	mov	r9, fp
 80053ea:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80053ee:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80053f2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80053f4:	9306      	str	r3, [sp, #24]
 80053f6:	e404      	b.n	8004c02 <_dtoa_r+0x5aa>
 80053f8:	9b00      	ldr	r3, [sp, #0]
 80053fa:	2b39      	cmp	r3, #57	; 0x39
 80053fc:	4621      	mov	r1, r4
 80053fe:	4632      	mov	r2, r6
 8005400:	f107 0401 	add.w	r4, r7, #1
 8005404:	465e      	mov	r6, fp
 8005406:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800540a:	d0d1      	beq.n	80053b0 <_dtoa_r+0xd58>
 800540c:	2a00      	cmp	r2, #0
 800540e:	f77f af03 	ble.w	8005218 <_dtoa_r+0xbc0>
 8005412:	460b      	mov	r3, r1
 8005414:	3331      	adds	r3, #49	; 0x31
 8005416:	9300      	str	r3, [sp, #0]
 8005418:	e6fe      	b.n	8005218 <_dtoa_r+0xbc0>
 800541a:	f47f aefd 	bne.w	8005218 <_dtoa_r+0xbc0>
 800541e:	9b00      	ldr	r3, [sp, #0]
 8005420:	07da      	lsls	r2, r3, #31
 8005422:	f57f aef9 	bpl.w	8005218 <_dtoa_r+0xbc0>
 8005426:	e7bc      	b.n	80053a2 <_dtoa_r+0xd4a>
 8005428:	4629      	mov	r1, r5
 800542a:	2300      	movs	r3, #0
 800542c:	220a      	movs	r2, #10
 800542e:	4648      	mov	r0, r9
 8005430:	f001 f838 	bl	80064a4 <__multadd>
 8005434:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005436:	2b00      	cmp	r3, #0
 8005438:	4605      	mov	r5, r0
 800543a:	dd09      	ble.n	8005450 <_dtoa_r+0xdf8>
 800543c:	9309      	str	r3, [sp, #36]	; 0x24
 800543e:	e484      	b.n	8004d4a <_dtoa_r+0x6f2>
 8005440:	9b02      	ldr	r3, [sp, #8]
 8005442:	2b02      	cmp	r3, #2
 8005444:	dc0e      	bgt.n	8005464 <_dtoa_r+0xe0c>
 8005446:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005448:	e507      	b.n	8004e5a <_dtoa_r+0x802>
 800544a:	2602      	movs	r6, #2
 800544c:	f7ff ba70 	b.w	8004930 <_dtoa_r+0x2d8>
 8005450:	9b02      	ldr	r3, [sp, #8]
 8005452:	2b02      	cmp	r3, #2
 8005454:	dc06      	bgt.n	8005464 <_dtoa_r+0xe0c>
 8005456:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005458:	e7f0      	b.n	800543c <_dtoa_r+0xde4>
 800545a:	f43f ac59 	beq.w	8004d10 <_dtoa_r+0x6b8>
 800545e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005462:	e450      	b.n	8004d06 <_dtoa_r+0x6ae>
 8005464:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005466:	9309      	str	r3, [sp, #36]	; 0x24
 8005468:	e678      	b.n	800515c <_dtoa_r+0xb04>
 800546a:	bf00      	nop
 800546c:	40240000 	.word	0x40240000
 8005470:	401c0000 	.word	0x401c0000
 8005474:	3fe00000 	.word	0x3fe00000

08005478 <__sflush_r>:
 8005478:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800547c:	b29a      	uxth	r2, r3
 800547e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005482:	460c      	mov	r4, r1
 8005484:	0711      	lsls	r1, r2, #28
 8005486:	4680      	mov	r8, r0
 8005488:	d444      	bmi.n	8005514 <__sflush_r+0x9c>
 800548a:	6862      	ldr	r2, [r4, #4]
 800548c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005490:	2a00      	cmp	r2, #0
 8005492:	81a3      	strh	r3, [r4, #12]
 8005494:	dd59      	ble.n	800554a <__sflush_r+0xd2>
 8005496:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005498:	2d00      	cmp	r5, #0
 800549a:	d053      	beq.n	8005544 <__sflush_r+0xcc>
 800549c:	2200      	movs	r2, #0
 800549e:	b29b      	uxth	r3, r3
 80054a0:	f8d8 6000 	ldr.w	r6, [r8]
 80054a4:	69e1      	ldr	r1, [r4, #28]
 80054a6:	f8c8 2000 	str.w	r2, [r8]
 80054aa:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80054ae:	f040 8083 	bne.w	80055b8 <__sflush_r+0x140>
 80054b2:	2301      	movs	r3, #1
 80054b4:	4640      	mov	r0, r8
 80054b6:	47a8      	blx	r5
 80054b8:	1c42      	adds	r2, r0, #1
 80054ba:	d04a      	beq.n	8005552 <__sflush_r+0xda>
 80054bc:	89a3      	ldrh	r3, [r4, #12]
 80054be:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80054c0:	69e1      	ldr	r1, [r4, #28]
 80054c2:	075b      	lsls	r3, r3, #29
 80054c4:	d505      	bpl.n	80054d2 <__sflush_r+0x5a>
 80054c6:	6862      	ldr	r2, [r4, #4]
 80054c8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80054ca:	1a80      	subs	r0, r0, r2
 80054cc:	b10b      	cbz	r3, 80054d2 <__sflush_r+0x5a>
 80054ce:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80054d0:	1ac0      	subs	r0, r0, r3
 80054d2:	4602      	mov	r2, r0
 80054d4:	2300      	movs	r3, #0
 80054d6:	4640      	mov	r0, r8
 80054d8:	47a8      	blx	r5
 80054da:	1c47      	adds	r7, r0, #1
 80054dc:	d045      	beq.n	800556a <__sflush_r+0xf2>
 80054de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80054e2:	6922      	ldr	r2, [r4, #16]
 80054e4:	6022      	str	r2, [r4, #0]
 80054e6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80054ea:	2200      	movs	r2, #0
 80054ec:	81a3      	strh	r3, [r4, #12]
 80054ee:	04db      	lsls	r3, r3, #19
 80054f0:	6062      	str	r2, [r4, #4]
 80054f2:	d500      	bpl.n	80054f6 <__sflush_r+0x7e>
 80054f4:	6520      	str	r0, [r4, #80]	; 0x50
 80054f6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80054f8:	f8c8 6000 	str.w	r6, [r8]
 80054fc:	b311      	cbz	r1, 8005544 <__sflush_r+0xcc>
 80054fe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005502:	4299      	cmp	r1, r3
 8005504:	d002      	beq.n	800550c <__sflush_r+0x94>
 8005506:	4640      	mov	r0, r8
 8005508:	f000 f95e 	bl	80057c8 <_free_r>
 800550c:	2000      	movs	r0, #0
 800550e:	6320      	str	r0, [r4, #48]	; 0x30
 8005510:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005514:	6926      	ldr	r6, [r4, #16]
 8005516:	b1ae      	cbz	r6, 8005544 <__sflush_r+0xcc>
 8005518:	6825      	ldr	r5, [r4, #0]
 800551a:	6026      	str	r6, [r4, #0]
 800551c:	0792      	lsls	r2, r2, #30
 800551e:	bf0c      	ite	eq
 8005520:	6963      	ldreq	r3, [r4, #20]
 8005522:	2300      	movne	r3, #0
 8005524:	1bad      	subs	r5, r5, r6
 8005526:	60a3      	str	r3, [r4, #8]
 8005528:	e00a      	b.n	8005540 <__sflush_r+0xc8>
 800552a:	462b      	mov	r3, r5
 800552c:	4632      	mov	r2, r6
 800552e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005530:	69e1      	ldr	r1, [r4, #28]
 8005532:	4640      	mov	r0, r8
 8005534:	47b8      	blx	r7
 8005536:	2800      	cmp	r0, #0
 8005538:	eba5 0500 	sub.w	r5, r5, r0
 800553c:	4406      	add	r6, r0
 800553e:	dd2b      	ble.n	8005598 <__sflush_r+0x120>
 8005540:	2d00      	cmp	r5, #0
 8005542:	dcf2      	bgt.n	800552a <__sflush_r+0xb2>
 8005544:	2000      	movs	r0, #0
 8005546:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800554a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800554c:	2a00      	cmp	r2, #0
 800554e:	dca2      	bgt.n	8005496 <__sflush_r+0x1e>
 8005550:	e7f8      	b.n	8005544 <__sflush_r+0xcc>
 8005552:	f8d8 3000 	ldr.w	r3, [r8]
 8005556:	2b00      	cmp	r3, #0
 8005558:	d0b0      	beq.n	80054bc <__sflush_r+0x44>
 800555a:	2b1d      	cmp	r3, #29
 800555c:	d001      	beq.n	8005562 <__sflush_r+0xea>
 800555e:	2b16      	cmp	r3, #22
 8005560:	d12c      	bne.n	80055bc <__sflush_r+0x144>
 8005562:	f8c8 6000 	str.w	r6, [r8]
 8005566:	2000      	movs	r0, #0
 8005568:	e7ed      	b.n	8005546 <__sflush_r+0xce>
 800556a:	f8d8 1000 	ldr.w	r1, [r8]
 800556e:	291d      	cmp	r1, #29
 8005570:	d81a      	bhi.n	80055a8 <__sflush_r+0x130>
 8005572:	4b15      	ldr	r3, [pc, #84]	; (80055c8 <__sflush_r+0x150>)
 8005574:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005578:	40cb      	lsrs	r3, r1
 800557a:	43db      	mvns	r3, r3
 800557c:	f013 0301 	ands.w	r3, r3, #1
 8005580:	d114      	bne.n	80055ac <__sflush_r+0x134>
 8005582:	6925      	ldr	r5, [r4, #16]
 8005584:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005588:	e9c4 5300 	strd	r5, r3, [r4]
 800558c:	04d5      	lsls	r5, r2, #19
 800558e:	81a2      	strh	r2, [r4, #12]
 8005590:	d5b1      	bpl.n	80054f6 <__sflush_r+0x7e>
 8005592:	2900      	cmp	r1, #0
 8005594:	d1af      	bne.n	80054f6 <__sflush_r+0x7e>
 8005596:	e7ad      	b.n	80054f4 <__sflush_r+0x7c>
 8005598:	89a3      	ldrh	r3, [r4, #12]
 800559a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800559e:	81a3      	strh	r3, [r4, #12]
 80055a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80055a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80055a8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80055ac:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80055b0:	81a2      	strh	r2, [r4, #12]
 80055b2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80055b6:	e7c6      	b.n	8005546 <__sflush_r+0xce>
 80055b8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80055ba:	e782      	b.n	80054c2 <__sflush_r+0x4a>
 80055bc:	89a3      	ldrh	r3, [r4, #12]
 80055be:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80055c2:	81a3      	strh	r3, [r4, #12]
 80055c4:	e7bf      	b.n	8005546 <__sflush_r+0xce>
 80055c6:	bf00      	nop
 80055c8:	20400001 	.word	0x20400001

080055cc <_fflush_r>:
 80055cc:	b538      	push	{r3, r4, r5, lr}
 80055ce:	460d      	mov	r5, r1
 80055d0:	4604      	mov	r4, r0
 80055d2:	b108      	cbz	r0, 80055d8 <_fflush_r+0xc>
 80055d4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80055d6:	b1a3      	cbz	r3, 8005602 <_fflush_r+0x36>
 80055d8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80055dc:	b1b8      	cbz	r0, 800560e <_fflush_r+0x42>
 80055de:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80055e0:	07db      	lsls	r3, r3, #31
 80055e2:	d401      	bmi.n	80055e8 <_fflush_r+0x1c>
 80055e4:	0581      	lsls	r1, r0, #22
 80055e6:	d51a      	bpl.n	800561e <_fflush_r+0x52>
 80055e8:	4620      	mov	r0, r4
 80055ea:	4629      	mov	r1, r5
 80055ec:	f7ff ff44 	bl	8005478 <__sflush_r>
 80055f0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80055f2:	07da      	lsls	r2, r3, #31
 80055f4:	4604      	mov	r4, r0
 80055f6:	d402      	bmi.n	80055fe <_fflush_r+0x32>
 80055f8:	89ab      	ldrh	r3, [r5, #12]
 80055fa:	059b      	lsls	r3, r3, #22
 80055fc:	d50a      	bpl.n	8005614 <_fflush_r+0x48>
 80055fe:	4620      	mov	r0, r4
 8005600:	bd38      	pop	{r3, r4, r5, pc}
 8005602:	f000 f83f 	bl	8005684 <__sinit>
 8005606:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800560a:	2800      	cmp	r0, #0
 800560c:	d1e7      	bne.n	80055de <_fflush_r+0x12>
 800560e:	4604      	mov	r4, r0
 8005610:	4620      	mov	r0, r4
 8005612:	bd38      	pop	{r3, r4, r5, pc}
 8005614:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005616:	f000 fb87 	bl	8005d28 <__retarget_lock_release_recursive>
 800561a:	4620      	mov	r0, r4
 800561c:	bd38      	pop	{r3, r4, r5, pc}
 800561e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005620:	f000 fb80 	bl	8005d24 <__retarget_lock_acquire_recursive>
 8005624:	e7e0      	b.n	80055e8 <_fflush_r+0x1c>
 8005626:	bf00      	nop

08005628 <std>:
 8005628:	b510      	push	{r4, lr}
 800562a:	2300      	movs	r3, #0
 800562c:	4604      	mov	r4, r0
 800562e:	8181      	strh	r1, [r0, #12]
 8005630:	81c2      	strh	r2, [r0, #14]
 8005632:	e9c0 3300 	strd	r3, r3, [r0]
 8005636:	6083      	str	r3, [r0, #8]
 8005638:	6643      	str	r3, [r0, #100]	; 0x64
 800563a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800563e:	6183      	str	r3, [r0, #24]
 8005640:	4619      	mov	r1, r3
 8005642:	2208      	movs	r2, #8
 8005644:	305c      	adds	r0, #92	; 0x5c
 8005646:	f7fd f8c9 	bl	80027dc <memset>
 800564a:	4807      	ldr	r0, [pc, #28]	; (8005668 <std+0x40>)
 800564c:	4907      	ldr	r1, [pc, #28]	; (800566c <std+0x44>)
 800564e:	4a08      	ldr	r2, [pc, #32]	; (8005670 <std+0x48>)
 8005650:	4b08      	ldr	r3, [pc, #32]	; (8005674 <std+0x4c>)
 8005652:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005654:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005658:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800565c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005660:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005664:	f000 bb5a 	b.w	8005d1c <__retarget_lock_init_recursive>
 8005668:	08006e41 	.word	0x08006e41
 800566c:	08006e65 	.word	0x08006e65
 8005670:	08006ea1 	.word	0x08006ea1
 8005674:	08006ec1 	.word	0x08006ec1

08005678 <_cleanup_r>:
 8005678:	4901      	ldr	r1, [pc, #4]	; (8005680 <_cleanup_r+0x8>)
 800567a:	f000 bb17 	b.w	8005cac <_fwalk_reent>
 800567e:	bf00      	nop
 8005680:	08007131 	.word	0x08007131

08005684 <__sinit>:
 8005684:	b510      	push	{r4, lr}
 8005686:	4604      	mov	r4, r0
 8005688:	4812      	ldr	r0, [pc, #72]	; (80056d4 <__sinit+0x50>)
 800568a:	f000 fb4b 	bl	8005d24 <__retarget_lock_acquire_recursive>
 800568e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005690:	b9d2      	cbnz	r2, 80056c8 <__sinit+0x44>
 8005692:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005696:	4810      	ldr	r0, [pc, #64]	; (80056d8 <__sinit+0x54>)
 8005698:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800569c:	2103      	movs	r1, #3
 800569e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80056a2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80056a4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80056a8:	6860      	ldr	r0, [r4, #4]
 80056aa:	2104      	movs	r1, #4
 80056ac:	f7ff ffbc 	bl	8005628 <std>
 80056b0:	2201      	movs	r2, #1
 80056b2:	2109      	movs	r1, #9
 80056b4:	68a0      	ldr	r0, [r4, #8]
 80056b6:	f7ff ffb7 	bl	8005628 <std>
 80056ba:	2202      	movs	r2, #2
 80056bc:	2112      	movs	r1, #18
 80056be:	68e0      	ldr	r0, [r4, #12]
 80056c0:	f7ff ffb2 	bl	8005628 <std>
 80056c4:	2301      	movs	r3, #1
 80056c6:	63a3      	str	r3, [r4, #56]	; 0x38
 80056c8:	4802      	ldr	r0, [pc, #8]	; (80056d4 <__sinit+0x50>)
 80056ca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80056ce:	f000 bb2b 	b.w	8005d28 <__retarget_lock_release_recursive>
 80056d2:	bf00      	nop
 80056d4:	20000b0c 	.word	0x20000b0c
 80056d8:	08005679 	.word	0x08005679

080056dc <__sfp_lock_acquire>:
 80056dc:	4801      	ldr	r0, [pc, #4]	; (80056e4 <__sfp_lock_acquire+0x8>)
 80056de:	f000 bb21 	b.w	8005d24 <__retarget_lock_acquire_recursive>
 80056e2:	bf00      	nop
 80056e4:	20000b20 	.word	0x20000b20

080056e8 <__sfp_lock_release>:
 80056e8:	4801      	ldr	r0, [pc, #4]	; (80056f0 <__sfp_lock_release+0x8>)
 80056ea:	f000 bb1d 	b.w	8005d28 <__retarget_lock_release_recursive>
 80056ee:	bf00      	nop
 80056f0:	20000b20 	.word	0x20000b20

080056f4 <__libc_fini_array>:
 80056f4:	b538      	push	{r3, r4, r5, lr}
 80056f6:	4c0a      	ldr	r4, [pc, #40]	; (8005720 <__libc_fini_array+0x2c>)
 80056f8:	4d0a      	ldr	r5, [pc, #40]	; (8005724 <__libc_fini_array+0x30>)
 80056fa:	1b64      	subs	r4, r4, r5
 80056fc:	10a4      	asrs	r4, r4, #2
 80056fe:	d00a      	beq.n	8005716 <__libc_fini_array+0x22>
 8005700:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005704:	3b01      	subs	r3, #1
 8005706:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800570a:	3c01      	subs	r4, #1
 800570c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005710:	4798      	blx	r3
 8005712:	2c00      	cmp	r4, #0
 8005714:	d1f9      	bne.n	800570a <__libc_fini_array+0x16>
 8005716:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800571a:	f001 befd 	b.w	8007518 <_fini>
 800571e:	bf00      	nop
 8005720:	080078e4 	.word	0x080078e4
 8005724:	080078e0 	.word	0x080078e0

08005728 <_malloc_trim_r>:
 8005728:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800572a:	4f24      	ldr	r7, [pc, #144]	; (80057bc <_malloc_trim_r+0x94>)
 800572c:	460c      	mov	r4, r1
 800572e:	4606      	mov	r6, r0
 8005730:	f000 fe7c 	bl	800642c <__malloc_lock>
 8005734:	68bb      	ldr	r3, [r7, #8]
 8005736:	685d      	ldr	r5, [r3, #4]
 8005738:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800573c:	310f      	adds	r1, #15
 800573e:	f025 0503 	bic.w	r5, r5, #3
 8005742:	4429      	add	r1, r5
 8005744:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005748:	f021 010f 	bic.w	r1, r1, #15
 800574c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005750:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005754:	db07      	blt.n	8005766 <_malloc_trim_r+0x3e>
 8005756:	2100      	movs	r1, #0
 8005758:	4630      	mov	r0, r6
 800575a:	f001 fb5f 	bl	8006e1c <_sbrk_r>
 800575e:	68bb      	ldr	r3, [r7, #8]
 8005760:	442b      	add	r3, r5
 8005762:	4298      	cmp	r0, r3
 8005764:	d004      	beq.n	8005770 <_malloc_trim_r+0x48>
 8005766:	4630      	mov	r0, r6
 8005768:	f000 fe66 	bl	8006438 <__malloc_unlock>
 800576c:	2000      	movs	r0, #0
 800576e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005770:	4261      	negs	r1, r4
 8005772:	4630      	mov	r0, r6
 8005774:	f001 fb52 	bl	8006e1c <_sbrk_r>
 8005778:	3001      	adds	r0, #1
 800577a:	d00d      	beq.n	8005798 <_malloc_trim_r+0x70>
 800577c:	4b10      	ldr	r3, [pc, #64]	; (80057c0 <_malloc_trim_r+0x98>)
 800577e:	68ba      	ldr	r2, [r7, #8]
 8005780:	6819      	ldr	r1, [r3, #0]
 8005782:	1b2d      	subs	r5, r5, r4
 8005784:	f045 0501 	orr.w	r5, r5, #1
 8005788:	4630      	mov	r0, r6
 800578a:	1b09      	subs	r1, r1, r4
 800578c:	6055      	str	r5, [r2, #4]
 800578e:	6019      	str	r1, [r3, #0]
 8005790:	f000 fe52 	bl	8006438 <__malloc_unlock>
 8005794:	2001      	movs	r0, #1
 8005796:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005798:	2100      	movs	r1, #0
 800579a:	4630      	mov	r0, r6
 800579c:	f001 fb3e 	bl	8006e1c <_sbrk_r>
 80057a0:	68ba      	ldr	r2, [r7, #8]
 80057a2:	1a83      	subs	r3, r0, r2
 80057a4:	2b0f      	cmp	r3, #15
 80057a6:	ddde      	ble.n	8005766 <_malloc_trim_r+0x3e>
 80057a8:	4c06      	ldr	r4, [pc, #24]	; (80057c4 <_malloc_trim_r+0x9c>)
 80057aa:	4905      	ldr	r1, [pc, #20]	; (80057c0 <_malloc_trim_r+0x98>)
 80057ac:	6824      	ldr	r4, [r4, #0]
 80057ae:	f043 0301 	orr.w	r3, r3, #1
 80057b2:	1b00      	subs	r0, r0, r4
 80057b4:	6053      	str	r3, [r2, #4]
 80057b6:	6008      	str	r0, [r1, #0]
 80057b8:	e7d5      	b.n	8005766 <_malloc_trim_r+0x3e>
 80057ba:	bf00      	nop
 80057bc:	2000044c 	.word	0x2000044c
 80057c0:	20000a84 	.word	0x20000a84
 80057c4:	20000854 	.word	0x20000854

080057c8 <_free_r>:
 80057c8:	2900      	cmp	r1, #0
 80057ca:	d053      	beq.n	8005874 <_free_r+0xac>
 80057cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80057ce:	460c      	mov	r4, r1
 80057d0:	4606      	mov	r6, r0
 80057d2:	f000 fe2b 	bl	800642c <__malloc_lock>
 80057d6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80057da:	4f71      	ldr	r7, [pc, #452]	; (80059a0 <_free_r+0x1d8>)
 80057dc:	f02c 0101 	bic.w	r1, ip, #1
 80057e0:	f1a4 0508 	sub.w	r5, r4, #8
 80057e4:	186b      	adds	r3, r5, r1
 80057e6:	68b8      	ldr	r0, [r7, #8]
 80057e8:	685a      	ldr	r2, [r3, #4]
 80057ea:	4298      	cmp	r0, r3
 80057ec:	f022 0203 	bic.w	r2, r2, #3
 80057f0:	d053      	beq.n	800589a <_free_r+0xd2>
 80057f2:	f01c 0f01 	tst.w	ip, #1
 80057f6:	605a      	str	r2, [r3, #4]
 80057f8:	eb03 0002 	add.w	r0, r3, r2
 80057fc:	d13b      	bne.n	8005876 <_free_r+0xae>
 80057fe:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005802:	6840      	ldr	r0, [r0, #4]
 8005804:	eba5 050c 	sub.w	r5, r5, ip
 8005808:	f107 0e08 	add.w	lr, r7, #8
 800580c:	68ac      	ldr	r4, [r5, #8]
 800580e:	4574      	cmp	r4, lr
 8005810:	4461      	add	r1, ip
 8005812:	f000 0001 	and.w	r0, r0, #1
 8005816:	d075      	beq.n	8005904 <_free_r+0x13c>
 8005818:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800581c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005820:	f8cc 4008 	str.w	r4, [ip, #8]
 8005824:	b360      	cbz	r0, 8005880 <_free_r+0xb8>
 8005826:	f041 0301 	orr.w	r3, r1, #1
 800582a:	606b      	str	r3, [r5, #4]
 800582c:	5069      	str	r1, [r5, r1]
 800582e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005832:	d350      	bcc.n	80058d6 <_free_r+0x10e>
 8005834:	0a4b      	lsrs	r3, r1, #9
 8005836:	2b04      	cmp	r3, #4
 8005838:	d870      	bhi.n	800591c <_free_r+0x154>
 800583a:	098b      	lsrs	r3, r1, #6
 800583c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005840:	00e4      	lsls	r4, r4, #3
 8005842:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005846:	1938      	adds	r0, r7, r4
 8005848:	593b      	ldr	r3, [r7, r4]
 800584a:	3808      	subs	r0, #8
 800584c:	4298      	cmp	r0, r3
 800584e:	d078      	beq.n	8005942 <_free_r+0x17a>
 8005850:	685a      	ldr	r2, [r3, #4]
 8005852:	f022 0203 	bic.w	r2, r2, #3
 8005856:	428a      	cmp	r2, r1
 8005858:	d971      	bls.n	800593e <_free_r+0x176>
 800585a:	689b      	ldr	r3, [r3, #8]
 800585c:	4298      	cmp	r0, r3
 800585e:	d1f7      	bne.n	8005850 <_free_r+0x88>
 8005860:	68c3      	ldr	r3, [r0, #12]
 8005862:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005866:	609d      	str	r5, [r3, #8]
 8005868:	60c5      	str	r5, [r0, #12]
 800586a:	4630      	mov	r0, r6
 800586c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005870:	f000 bde2 	b.w	8006438 <__malloc_unlock>
 8005874:	4770      	bx	lr
 8005876:	6840      	ldr	r0, [r0, #4]
 8005878:	f000 0001 	and.w	r0, r0, #1
 800587c:	2800      	cmp	r0, #0
 800587e:	d1d2      	bne.n	8005826 <_free_r+0x5e>
 8005880:	6898      	ldr	r0, [r3, #8]
 8005882:	4c48      	ldr	r4, [pc, #288]	; (80059a4 <_free_r+0x1dc>)
 8005884:	4411      	add	r1, r2
 8005886:	42a0      	cmp	r0, r4
 8005888:	f041 0201 	orr.w	r2, r1, #1
 800588c:	d062      	beq.n	8005954 <_free_r+0x18c>
 800588e:	68db      	ldr	r3, [r3, #12]
 8005890:	60c3      	str	r3, [r0, #12]
 8005892:	6098      	str	r0, [r3, #8]
 8005894:	606a      	str	r2, [r5, #4]
 8005896:	5069      	str	r1, [r5, r1]
 8005898:	e7c9      	b.n	800582e <_free_r+0x66>
 800589a:	f01c 0f01 	tst.w	ip, #1
 800589e:	440a      	add	r2, r1
 80058a0:	d107      	bne.n	80058b2 <_free_r+0xea>
 80058a2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80058a6:	1aed      	subs	r5, r5, r3
 80058a8:	441a      	add	r2, r3
 80058aa:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80058ae:	60cb      	str	r3, [r1, #12]
 80058b0:	6099      	str	r1, [r3, #8]
 80058b2:	4b3d      	ldr	r3, [pc, #244]	; (80059a8 <_free_r+0x1e0>)
 80058b4:	681b      	ldr	r3, [r3, #0]
 80058b6:	f042 0101 	orr.w	r1, r2, #1
 80058ba:	4293      	cmp	r3, r2
 80058bc:	6069      	str	r1, [r5, #4]
 80058be:	60bd      	str	r5, [r7, #8]
 80058c0:	d804      	bhi.n	80058cc <_free_r+0x104>
 80058c2:	4b3a      	ldr	r3, [pc, #232]	; (80059ac <_free_r+0x1e4>)
 80058c4:	4630      	mov	r0, r6
 80058c6:	6819      	ldr	r1, [r3, #0]
 80058c8:	f7ff ff2e 	bl	8005728 <_malloc_trim_r>
 80058cc:	4630      	mov	r0, r6
 80058ce:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80058d2:	f000 bdb1 	b.w	8006438 <__malloc_unlock>
 80058d6:	08c9      	lsrs	r1, r1, #3
 80058d8:	6878      	ldr	r0, [r7, #4]
 80058da:	1c4a      	adds	r2, r1, #1
 80058dc:	2301      	movs	r3, #1
 80058de:	1089      	asrs	r1, r1, #2
 80058e0:	408b      	lsls	r3, r1
 80058e2:	4303      	orrs	r3, r0
 80058e4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80058e8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80058ec:	607b      	str	r3, [r7, #4]
 80058ee:	3908      	subs	r1, #8
 80058f0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80058f4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80058f8:	60c5      	str	r5, [r0, #12]
 80058fa:	4630      	mov	r0, r6
 80058fc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005900:	f000 bd9a 	b.w	8006438 <__malloc_unlock>
 8005904:	2800      	cmp	r0, #0
 8005906:	d145      	bne.n	8005994 <_free_r+0x1cc>
 8005908:	440a      	add	r2, r1
 800590a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800590e:	f042 0001 	orr.w	r0, r2, #1
 8005912:	60cb      	str	r3, [r1, #12]
 8005914:	6099      	str	r1, [r3, #8]
 8005916:	6068      	str	r0, [r5, #4]
 8005918:	50aa      	str	r2, [r5, r2]
 800591a:	e7d7      	b.n	80058cc <_free_r+0x104>
 800591c:	2b14      	cmp	r3, #20
 800591e:	d908      	bls.n	8005932 <_free_r+0x16a>
 8005920:	2b54      	cmp	r3, #84	; 0x54
 8005922:	d81e      	bhi.n	8005962 <_free_r+0x19a>
 8005924:	0b0b      	lsrs	r3, r1, #12
 8005926:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800592a:	00e4      	lsls	r4, r4, #3
 800592c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005930:	e789      	b.n	8005846 <_free_r+0x7e>
 8005932:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005936:	00e4      	lsls	r4, r4, #3
 8005938:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800593c:	e783      	b.n	8005846 <_free_r+0x7e>
 800593e:	4618      	mov	r0, r3
 8005940:	e78e      	b.n	8005860 <_free_r+0x98>
 8005942:	1093      	asrs	r3, r2, #2
 8005944:	6879      	ldr	r1, [r7, #4]
 8005946:	2201      	movs	r2, #1
 8005948:	fa02 f303 	lsl.w	r3, r2, r3
 800594c:	430b      	orrs	r3, r1
 800594e:	607b      	str	r3, [r7, #4]
 8005950:	4603      	mov	r3, r0
 8005952:	e786      	b.n	8005862 <_free_r+0x9a>
 8005954:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005958:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800595c:	606a      	str	r2, [r5, #4]
 800595e:	5069      	str	r1, [r5, r1]
 8005960:	e7b4      	b.n	80058cc <_free_r+0x104>
 8005962:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005966:	d806      	bhi.n	8005976 <_free_r+0x1ae>
 8005968:	0bcb      	lsrs	r3, r1, #15
 800596a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800596e:	00e4      	lsls	r4, r4, #3
 8005970:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005974:	e767      	b.n	8005846 <_free_r+0x7e>
 8005976:	f240 5254 	movw	r2, #1364	; 0x554
 800597a:	4293      	cmp	r3, r2
 800597c:	d806      	bhi.n	800598c <_free_r+0x1c4>
 800597e:	0c8b      	lsrs	r3, r1, #18
 8005980:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005984:	00e4      	lsls	r4, r4, #3
 8005986:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800598a:	e75c      	b.n	8005846 <_free_r+0x7e>
 800598c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005990:	227e      	movs	r2, #126	; 0x7e
 8005992:	e758      	b.n	8005846 <_free_r+0x7e>
 8005994:	f041 0201 	orr.w	r2, r1, #1
 8005998:	606a      	str	r2, [r5, #4]
 800599a:	6019      	str	r1, [r3, #0]
 800599c:	e796      	b.n	80058cc <_free_r+0x104>
 800599e:	bf00      	nop
 80059a0:	2000044c 	.word	0x2000044c
 80059a4:	20000454 	.word	0x20000454
 80059a8:	20000858 	.word	0x20000858
 80059ac:	20000ab4 	.word	0x20000ab4

080059b0 <__sfvwrite_r>:
 80059b0:	6893      	ldr	r3, [r2, #8]
 80059b2:	2b00      	cmp	r3, #0
 80059b4:	f000 80e4 	beq.w	8005b80 <__sfvwrite_r+0x1d0>
 80059b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80059bc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80059c0:	b29b      	uxth	r3, r3
 80059c2:	460c      	mov	r4, r1
 80059c4:	0719      	lsls	r1, r3, #28
 80059c6:	b083      	sub	sp, #12
 80059c8:	4682      	mov	sl, r0
 80059ca:	4690      	mov	r8, r2
 80059cc:	d535      	bpl.n	8005a3a <__sfvwrite_r+0x8a>
 80059ce:	6922      	ldr	r2, [r4, #16]
 80059d0:	b39a      	cbz	r2, 8005a3a <__sfvwrite_r+0x8a>
 80059d2:	f013 0202 	ands.w	r2, r3, #2
 80059d6:	f8d8 6000 	ldr.w	r6, [r8]
 80059da:	d03d      	beq.n	8005a58 <__sfvwrite_r+0xa8>
 80059dc:	2700      	movs	r7, #0
 80059de:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80059e2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80059e6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005ca8 <__sfvwrite_r+0x2f8>
 80059ea:	463d      	mov	r5, r7
 80059ec:	454d      	cmp	r5, r9
 80059ee:	462b      	mov	r3, r5
 80059f0:	463a      	mov	r2, r7
 80059f2:	bf28      	it	cs
 80059f4:	464b      	movcs	r3, r9
 80059f6:	4661      	mov	r1, ip
 80059f8:	4650      	mov	r0, sl
 80059fa:	b1d5      	cbz	r5, 8005a32 <__sfvwrite_r+0x82>
 80059fc:	47d8      	blx	fp
 80059fe:	2800      	cmp	r0, #0
 8005a00:	f340 80c6 	ble.w	8005b90 <__sfvwrite_r+0x1e0>
 8005a04:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005a08:	1a1b      	subs	r3, r3, r0
 8005a0a:	4407      	add	r7, r0
 8005a0c:	1a2d      	subs	r5, r5, r0
 8005a0e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005a12:	2b00      	cmp	r3, #0
 8005a14:	f000 80b0 	beq.w	8005b78 <__sfvwrite_r+0x1c8>
 8005a18:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005a1c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005a20:	454d      	cmp	r5, r9
 8005a22:	462b      	mov	r3, r5
 8005a24:	463a      	mov	r2, r7
 8005a26:	bf28      	it	cs
 8005a28:	464b      	movcs	r3, r9
 8005a2a:	4661      	mov	r1, ip
 8005a2c:	4650      	mov	r0, sl
 8005a2e:	2d00      	cmp	r5, #0
 8005a30:	d1e4      	bne.n	80059fc <__sfvwrite_r+0x4c>
 8005a32:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005a36:	3608      	adds	r6, #8
 8005a38:	e7d8      	b.n	80059ec <__sfvwrite_r+0x3c>
 8005a3a:	4621      	mov	r1, r4
 8005a3c:	4650      	mov	r0, sl
 8005a3e:	f7fe fd03 	bl	8004448 <__swsetup_r>
 8005a42:	2800      	cmp	r0, #0
 8005a44:	f040 812a 	bne.w	8005c9c <__sfvwrite_r+0x2ec>
 8005a48:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a4c:	f8d8 6000 	ldr.w	r6, [r8]
 8005a50:	b29b      	uxth	r3, r3
 8005a52:	f013 0202 	ands.w	r2, r3, #2
 8005a56:	d1c1      	bne.n	80059dc <__sfvwrite_r+0x2c>
 8005a58:	f013 0901 	ands.w	r9, r3, #1
 8005a5c:	d15d      	bne.n	8005b1a <__sfvwrite_r+0x16a>
 8005a5e:	68a7      	ldr	r7, [r4, #8]
 8005a60:	6820      	ldr	r0, [r4, #0]
 8005a62:	464d      	mov	r5, r9
 8005a64:	2d00      	cmp	r5, #0
 8005a66:	d054      	beq.n	8005b12 <__sfvwrite_r+0x162>
 8005a68:	059a      	lsls	r2, r3, #22
 8005a6a:	f140 809b 	bpl.w	8005ba4 <__sfvwrite_r+0x1f4>
 8005a6e:	42af      	cmp	r7, r5
 8005a70:	46bb      	mov	fp, r7
 8005a72:	f200 80d8 	bhi.w	8005c26 <__sfvwrite_r+0x276>
 8005a76:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005a7a:	d02f      	beq.n	8005adc <__sfvwrite_r+0x12c>
 8005a7c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005a80:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005a84:	eba0 0b01 	sub.w	fp, r0, r1
 8005a88:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005a8c:	1c68      	adds	r0, r5, #1
 8005a8e:	107f      	asrs	r7, r7, #1
 8005a90:	4458      	add	r0, fp
 8005a92:	42b8      	cmp	r0, r7
 8005a94:	463a      	mov	r2, r7
 8005a96:	bf84      	itt	hi
 8005a98:	4607      	movhi	r7, r0
 8005a9a:	463a      	movhi	r2, r7
 8005a9c:	055b      	lsls	r3, r3, #21
 8005a9e:	f140 80d3 	bpl.w	8005c48 <__sfvwrite_r+0x298>
 8005aa2:	4611      	mov	r1, r2
 8005aa4:	4650      	mov	r0, sl
 8005aa6:	f000 f9b9 	bl	8005e1c <_malloc_r>
 8005aaa:	2800      	cmp	r0, #0
 8005aac:	f000 80f0 	beq.w	8005c90 <__sfvwrite_r+0x2e0>
 8005ab0:	465a      	mov	r2, fp
 8005ab2:	6921      	ldr	r1, [r4, #16]
 8005ab4:	9001      	str	r0, [sp, #4]
 8005ab6:	f7fa fd23 	bl	8000500 <memcpy>
 8005aba:	89a2      	ldrh	r2, [r4, #12]
 8005abc:	9b01      	ldr	r3, [sp, #4]
 8005abe:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005ac2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005ac6:	81a2      	strh	r2, [r4, #12]
 8005ac8:	eba7 020b 	sub.w	r2, r7, fp
 8005acc:	eb03 000b 	add.w	r0, r3, fp
 8005ad0:	6167      	str	r7, [r4, #20]
 8005ad2:	6123      	str	r3, [r4, #16]
 8005ad4:	6020      	str	r0, [r4, #0]
 8005ad6:	60a2      	str	r2, [r4, #8]
 8005ad8:	462f      	mov	r7, r5
 8005ada:	46ab      	mov	fp, r5
 8005adc:	465a      	mov	r2, fp
 8005ade:	4649      	mov	r1, r9
 8005ae0:	f000 fc40 	bl	8006364 <memmove>
 8005ae4:	68a2      	ldr	r2, [r4, #8]
 8005ae6:	6823      	ldr	r3, [r4, #0]
 8005ae8:	1bd2      	subs	r2, r2, r7
 8005aea:	445b      	add	r3, fp
 8005aec:	462f      	mov	r7, r5
 8005aee:	60a2      	str	r2, [r4, #8]
 8005af0:	6023      	str	r3, [r4, #0]
 8005af2:	2500      	movs	r5, #0
 8005af4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005af8:	1bdb      	subs	r3, r3, r7
 8005afa:	44b9      	add	r9, r7
 8005afc:	f8c8 3008 	str.w	r3, [r8, #8]
 8005b00:	2b00      	cmp	r3, #0
 8005b02:	d039      	beq.n	8005b78 <__sfvwrite_r+0x1c8>
 8005b04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b08:	68a7      	ldr	r7, [r4, #8]
 8005b0a:	6820      	ldr	r0, [r4, #0]
 8005b0c:	b29b      	uxth	r3, r3
 8005b0e:	2d00      	cmp	r5, #0
 8005b10:	d1aa      	bne.n	8005a68 <__sfvwrite_r+0xb8>
 8005b12:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005b16:	3608      	adds	r6, #8
 8005b18:	e7a4      	b.n	8005a64 <__sfvwrite_r+0xb4>
 8005b1a:	4633      	mov	r3, r6
 8005b1c:	4691      	mov	r9, r2
 8005b1e:	4610      	mov	r0, r2
 8005b20:	4617      	mov	r7, r2
 8005b22:	464e      	mov	r6, r9
 8005b24:	469b      	mov	fp, r3
 8005b26:	2f00      	cmp	r7, #0
 8005b28:	d06b      	beq.n	8005c02 <__sfvwrite_r+0x252>
 8005b2a:	2800      	cmp	r0, #0
 8005b2c:	d071      	beq.n	8005c12 <__sfvwrite_r+0x262>
 8005b2e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005b32:	6820      	ldr	r0, [r4, #0]
 8005b34:	45b9      	cmp	r9, r7
 8005b36:	464b      	mov	r3, r9
 8005b38:	bf28      	it	cs
 8005b3a:	463b      	movcs	r3, r7
 8005b3c:	4288      	cmp	r0, r1
 8005b3e:	d903      	bls.n	8005b48 <__sfvwrite_r+0x198>
 8005b40:	68a5      	ldr	r5, [r4, #8]
 8005b42:	4415      	add	r5, r2
 8005b44:	42ab      	cmp	r3, r5
 8005b46:	dc71      	bgt.n	8005c2c <__sfvwrite_r+0x27c>
 8005b48:	429a      	cmp	r2, r3
 8005b4a:	f300 8093 	bgt.w	8005c74 <__sfvwrite_r+0x2c4>
 8005b4e:	4613      	mov	r3, r2
 8005b50:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005b52:	69e1      	ldr	r1, [r4, #28]
 8005b54:	4632      	mov	r2, r6
 8005b56:	4650      	mov	r0, sl
 8005b58:	47a8      	blx	r5
 8005b5a:	1e05      	subs	r5, r0, #0
 8005b5c:	dd18      	ble.n	8005b90 <__sfvwrite_r+0x1e0>
 8005b5e:	ebb9 0905 	subs.w	r9, r9, r5
 8005b62:	d00f      	beq.n	8005b84 <__sfvwrite_r+0x1d4>
 8005b64:	2001      	movs	r0, #1
 8005b66:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005b6a:	1b5b      	subs	r3, r3, r5
 8005b6c:	442e      	add	r6, r5
 8005b6e:	1b7f      	subs	r7, r7, r5
 8005b70:	f8c8 3008 	str.w	r3, [r8, #8]
 8005b74:	2b00      	cmp	r3, #0
 8005b76:	d1d6      	bne.n	8005b26 <__sfvwrite_r+0x176>
 8005b78:	2000      	movs	r0, #0
 8005b7a:	b003      	add	sp, #12
 8005b7c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b80:	2000      	movs	r0, #0
 8005b82:	4770      	bx	lr
 8005b84:	4621      	mov	r1, r4
 8005b86:	4650      	mov	r0, sl
 8005b88:	f7ff fd20 	bl	80055cc <_fflush_r>
 8005b8c:	2800      	cmp	r0, #0
 8005b8e:	d0ea      	beq.n	8005b66 <__sfvwrite_r+0x1b6>
 8005b90:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b94:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005b98:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005b9c:	81a3      	strh	r3, [r4, #12]
 8005b9e:	b003      	add	sp, #12
 8005ba0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ba4:	6923      	ldr	r3, [r4, #16]
 8005ba6:	4283      	cmp	r3, r0
 8005ba8:	d315      	bcc.n	8005bd6 <__sfvwrite_r+0x226>
 8005baa:	6961      	ldr	r1, [r4, #20]
 8005bac:	42a9      	cmp	r1, r5
 8005bae:	d812      	bhi.n	8005bd6 <__sfvwrite_r+0x226>
 8005bb0:	4b3c      	ldr	r3, [pc, #240]	; (8005ca4 <__sfvwrite_r+0x2f4>)
 8005bb2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005bb4:	429d      	cmp	r5, r3
 8005bb6:	bf94      	ite	ls
 8005bb8:	462b      	movls	r3, r5
 8005bba:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005bbe:	464a      	mov	r2, r9
 8005bc0:	fb93 f3f1 	sdiv	r3, r3, r1
 8005bc4:	4650      	mov	r0, sl
 8005bc6:	fb01 f303 	mul.w	r3, r1, r3
 8005bca:	69e1      	ldr	r1, [r4, #28]
 8005bcc:	47b8      	blx	r7
 8005bce:	1e07      	subs	r7, r0, #0
 8005bd0:	ddde      	ble.n	8005b90 <__sfvwrite_r+0x1e0>
 8005bd2:	1bed      	subs	r5, r5, r7
 8005bd4:	e78e      	b.n	8005af4 <__sfvwrite_r+0x144>
 8005bd6:	42af      	cmp	r7, r5
 8005bd8:	bf28      	it	cs
 8005bda:	462f      	movcs	r7, r5
 8005bdc:	463a      	mov	r2, r7
 8005bde:	4649      	mov	r1, r9
 8005be0:	f000 fbc0 	bl	8006364 <memmove>
 8005be4:	68a3      	ldr	r3, [r4, #8]
 8005be6:	6822      	ldr	r2, [r4, #0]
 8005be8:	1bdb      	subs	r3, r3, r7
 8005bea:	443a      	add	r2, r7
 8005bec:	60a3      	str	r3, [r4, #8]
 8005bee:	6022      	str	r2, [r4, #0]
 8005bf0:	2b00      	cmp	r3, #0
 8005bf2:	d1ee      	bne.n	8005bd2 <__sfvwrite_r+0x222>
 8005bf4:	4621      	mov	r1, r4
 8005bf6:	4650      	mov	r0, sl
 8005bf8:	f7ff fce8 	bl	80055cc <_fflush_r>
 8005bfc:	2800      	cmp	r0, #0
 8005bfe:	d0e8      	beq.n	8005bd2 <__sfvwrite_r+0x222>
 8005c00:	e7c6      	b.n	8005b90 <__sfvwrite_r+0x1e0>
 8005c02:	f10b 0308 	add.w	r3, fp, #8
 8005c06:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005c0a:	469b      	mov	fp, r3
 8005c0c:	3308      	adds	r3, #8
 8005c0e:	2f00      	cmp	r7, #0
 8005c10:	d0f9      	beq.n	8005c06 <__sfvwrite_r+0x256>
 8005c12:	463a      	mov	r2, r7
 8005c14:	210a      	movs	r1, #10
 8005c16:	4630      	mov	r0, r6
 8005c18:	f7fa fd82 	bl	8000720 <memchr>
 8005c1c:	b338      	cbz	r0, 8005c6e <__sfvwrite_r+0x2be>
 8005c1e:	3001      	adds	r0, #1
 8005c20:	eba0 0906 	sub.w	r9, r0, r6
 8005c24:	e783      	b.n	8005b2e <__sfvwrite_r+0x17e>
 8005c26:	462f      	mov	r7, r5
 8005c28:	46ab      	mov	fp, r5
 8005c2a:	e757      	b.n	8005adc <__sfvwrite_r+0x12c>
 8005c2c:	4631      	mov	r1, r6
 8005c2e:	462a      	mov	r2, r5
 8005c30:	f000 fb98 	bl	8006364 <memmove>
 8005c34:	6823      	ldr	r3, [r4, #0]
 8005c36:	442b      	add	r3, r5
 8005c38:	6023      	str	r3, [r4, #0]
 8005c3a:	4621      	mov	r1, r4
 8005c3c:	4650      	mov	r0, sl
 8005c3e:	f7ff fcc5 	bl	80055cc <_fflush_r>
 8005c42:	2800      	cmp	r0, #0
 8005c44:	d08b      	beq.n	8005b5e <__sfvwrite_r+0x1ae>
 8005c46:	e7a3      	b.n	8005b90 <__sfvwrite_r+0x1e0>
 8005c48:	4650      	mov	r0, sl
 8005c4a:	f000 ff05 	bl	8006a58 <_realloc_r>
 8005c4e:	4603      	mov	r3, r0
 8005c50:	2800      	cmp	r0, #0
 8005c52:	f47f af39 	bne.w	8005ac8 <__sfvwrite_r+0x118>
 8005c56:	6921      	ldr	r1, [r4, #16]
 8005c58:	4650      	mov	r0, sl
 8005c5a:	f7ff fdb5 	bl	80057c8 <_free_r>
 8005c5e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c62:	220c      	movs	r2, #12
 8005c64:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005c68:	f8ca 2000 	str.w	r2, [sl]
 8005c6c:	e792      	b.n	8005b94 <__sfvwrite_r+0x1e4>
 8005c6e:	f107 0901 	add.w	r9, r7, #1
 8005c72:	e75c      	b.n	8005b2e <__sfvwrite_r+0x17e>
 8005c74:	461a      	mov	r2, r3
 8005c76:	4631      	mov	r1, r6
 8005c78:	9301      	str	r3, [sp, #4]
 8005c7a:	f000 fb73 	bl	8006364 <memmove>
 8005c7e:	9b01      	ldr	r3, [sp, #4]
 8005c80:	68a1      	ldr	r1, [r4, #8]
 8005c82:	6822      	ldr	r2, [r4, #0]
 8005c84:	1ac9      	subs	r1, r1, r3
 8005c86:	441a      	add	r2, r3
 8005c88:	60a1      	str	r1, [r4, #8]
 8005c8a:	6022      	str	r2, [r4, #0]
 8005c8c:	461d      	mov	r5, r3
 8005c8e:	e766      	b.n	8005b5e <__sfvwrite_r+0x1ae>
 8005c90:	230c      	movs	r3, #12
 8005c92:	f8ca 3000 	str.w	r3, [sl]
 8005c96:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c9a:	e77b      	b.n	8005b94 <__sfvwrite_r+0x1e4>
 8005c9c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005ca0:	e76b      	b.n	8005b7a <__sfvwrite_r+0x1ca>
 8005ca2:	bf00      	nop
 8005ca4:	7ffffffe 	.word	0x7ffffffe
 8005ca8:	7ffffc00 	.word	0x7ffffc00

08005cac <_fwalk_reent>:
 8005cac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005cb0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005cb4:	d01f      	beq.n	8005cf6 <_fwalk_reent+0x4a>
 8005cb6:	4688      	mov	r8, r1
 8005cb8:	4606      	mov	r6, r0
 8005cba:	f04f 0900 	mov.w	r9, #0
 8005cbe:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005cc2:	3d01      	subs	r5, #1
 8005cc4:	d411      	bmi.n	8005cea <_fwalk_reent+0x3e>
 8005cc6:	89a3      	ldrh	r3, [r4, #12]
 8005cc8:	2b01      	cmp	r3, #1
 8005cca:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005cce:	4621      	mov	r1, r4
 8005cd0:	4630      	mov	r0, r6
 8005cd2:	d906      	bls.n	8005ce2 <_fwalk_reent+0x36>
 8005cd4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005cd8:	3301      	adds	r3, #1
 8005cda:	d002      	beq.n	8005ce2 <_fwalk_reent+0x36>
 8005cdc:	47c0      	blx	r8
 8005cde:	ea49 0900 	orr.w	r9, r9, r0
 8005ce2:	1c6b      	adds	r3, r5, #1
 8005ce4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005ce8:	d1ed      	bne.n	8005cc6 <_fwalk_reent+0x1a>
 8005cea:	683f      	ldr	r7, [r7, #0]
 8005cec:	2f00      	cmp	r7, #0
 8005cee:	d1e6      	bne.n	8005cbe <_fwalk_reent+0x12>
 8005cf0:	4648      	mov	r0, r9
 8005cf2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005cf6:	46b9      	mov	r9, r7
 8005cf8:	4648      	mov	r0, r9
 8005cfa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005cfe:	bf00      	nop

08005d00 <_localeconv_r>:
 8005d00:	4a04      	ldr	r2, [pc, #16]	; (8005d14 <_localeconv_r+0x14>)
 8005d02:	4b05      	ldr	r3, [pc, #20]	; (8005d18 <_localeconv_r+0x18>)
 8005d04:	6812      	ldr	r2, [r2, #0]
 8005d06:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005d08:	2800      	cmp	r0, #0
 8005d0a:	bf08      	it	eq
 8005d0c:	4618      	moveq	r0, r3
 8005d0e:	30f0      	adds	r0, #240	; 0xf0
 8005d10:	4770      	bx	lr
 8005d12:	bf00      	nop
 8005d14:	20000018 	.word	0x20000018
 8005d18:	2000085c 	.word	0x2000085c

08005d1c <__retarget_lock_init_recursive>:
 8005d1c:	4770      	bx	lr
 8005d1e:	bf00      	nop

08005d20 <__retarget_lock_close_recursive>:
 8005d20:	4770      	bx	lr
 8005d22:	bf00      	nop

08005d24 <__retarget_lock_acquire_recursive>:
 8005d24:	4770      	bx	lr
 8005d26:	bf00      	nop

08005d28 <__retarget_lock_release_recursive>:
 8005d28:	4770      	bx	lr
 8005d2a:	bf00      	nop

08005d2c <__swhatbuf_r>:
 8005d2c:	b570      	push	{r4, r5, r6, lr}
 8005d2e:	460c      	mov	r4, r1
 8005d30:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005d34:	2900      	cmp	r1, #0
 8005d36:	b096      	sub	sp, #88	; 0x58
 8005d38:	4615      	mov	r5, r2
 8005d3a:	461e      	mov	r6, r3
 8005d3c:	da0f      	bge.n	8005d5e <__swhatbuf_r+0x32>
 8005d3e:	89a2      	ldrh	r2, [r4, #12]
 8005d40:	2300      	movs	r3, #0
 8005d42:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005d46:	6033      	str	r3, [r6, #0]
 8005d48:	d104      	bne.n	8005d54 <__swhatbuf_r+0x28>
 8005d4a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005d4e:	602b      	str	r3, [r5, #0]
 8005d50:	b016      	add	sp, #88	; 0x58
 8005d52:	bd70      	pop	{r4, r5, r6, pc}
 8005d54:	2240      	movs	r2, #64	; 0x40
 8005d56:	4618      	mov	r0, r3
 8005d58:	602a      	str	r2, [r5, #0]
 8005d5a:	b016      	add	sp, #88	; 0x58
 8005d5c:	bd70      	pop	{r4, r5, r6, pc}
 8005d5e:	466a      	mov	r2, sp
 8005d60:	f001 fad0 	bl	8007304 <_fstat_r>
 8005d64:	2800      	cmp	r0, #0
 8005d66:	dbea      	blt.n	8005d3e <__swhatbuf_r+0x12>
 8005d68:	9b01      	ldr	r3, [sp, #4]
 8005d6a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005d6e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005d72:	fab3 f383 	clz	r3, r3
 8005d76:	095b      	lsrs	r3, r3, #5
 8005d78:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005d7c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005d80:	6033      	str	r3, [r6, #0]
 8005d82:	602a      	str	r2, [r5, #0]
 8005d84:	b016      	add	sp, #88	; 0x58
 8005d86:	bd70      	pop	{r4, r5, r6, pc}

08005d88 <__smakebuf_r>:
 8005d88:	898a      	ldrh	r2, [r1, #12]
 8005d8a:	0792      	lsls	r2, r2, #30
 8005d8c:	460b      	mov	r3, r1
 8005d8e:	d506      	bpl.n	8005d9e <__smakebuf_r+0x16>
 8005d90:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005d94:	2101      	movs	r1, #1
 8005d96:	601a      	str	r2, [r3, #0]
 8005d98:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005d9c:	4770      	bx	lr
 8005d9e:	b570      	push	{r4, r5, r6, lr}
 8005da0:	b082      	sub	sp, #8
 8005da2:	ab01      	add	r3, sp, #4
 8005da4:	466a      	mov	r2, sp
 8005da6:	460c      	mov	r4, r1
 8005da8:	4605      	mov	r5, r0
 8005daa:	f7ff ffbf 	bl	8005d2c <__swhatbuf_r>
 8005dae:	9900      	ldr	r1, [sp, #0]
 8005db0:	4606      	mov	r6, r0
 8005db2:	4628      	mov	r0, r5
 8005db4:	f000 f832 	bl	8005e1c <_malloc_r>
 8005db8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005dbc:	b1d8      	cbz	r0, 8005df6 <__smakebuf_r+0x6e>
 8005dbe:	4916      	ldr	r1, [pc, #88]	; (8005e18 <__smakebuf_r+0x90>)
 8005dc0:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005dc2:	9a01      	ldr	r2, [sp, #4]
 8005dc4:	9900      	ldr	r1, [sp, #0]
 8005dc6:	6020      	str	r0, [r4, #0]
 8005dc8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005dcc:	81a3      	strh	r3, [r4, #12]
 8005dce:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005dd2:	b91a      	cbnz	r2, 8005ddc <__smakebuf_r+0x54>
 8005dd4:	4333      	orrs	r3, r6
 8005dd6:	81a3      	strh	r3, [r4, #12]
 8005dd8:	b002      	add	sp, #8
 8005dda:	bd70      	pop	{r4, r5, r6, pc}
 8005ddc:	4628      	mov	r0, r5
 8005dde:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005de2:	f001 faa3 	bl	800732c <_isatty_r>
 8005de6:	b1a0      	cbz	r0, 8005e12 <__smakebuf_r+0x8a>
 8005de8:	89a3      	ldrh	r3, [r4, #12]
 8005dea:	f023 0303 	bic.w	r3, r3, #3
 8005dee:	f043 0301 	orr.w	r3, r3, #1
 8005df2:	b21b      	sxth	r3, r3
 8005df4:	e7ee      	b.n	8005dd4 <__smakebuf_r+0x4c>
 8005df6:	059a      	lsls	r2, r3, #22
 8005df8:	d4ee      	bmi.n	8005dd8 <__smakebuf_r+0x50>
 8005dfa:	f023 0303 	bic.w	r3, r3, #3
 8005dfe:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005e02:	f043 0302 	orr.w	r3, r3, #2
 8005e06:	2101      	movs	r1, #1
 8005e08:	81a3      	strh	r3, [r4, #12]
 8005e0a:	6022      	str	r2, [r4, #0]
 8005e0c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005e10:	e7e2      	b.n	8005dd8 <__smakebuf_r+0x50>
 8005e12:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005e16:	e7dd      	b.n	8005dd4 <__smakebuf_r+0x4c>
 8005e18:	08005679 	.word	0x08005679

08005e1c <_malloc_r>:
 8005e1c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005e20:	f101 050b 	add.w	r5, r1, #11
 8005e24:	2d16      	cmp	r5, #22
 8005e26:	b083      	sub	sp, #12
 8005e28:	4606      	mov	r6, r0
 8005e2a:	d823      	bhi.n	8005e74 <_malloc_r+0x58>
 8005e2c:	2910      	cmp	r1, #16
 8005e2e:	f200 80b9 	bhi.w	8005fa4 <_malloc_r+0x188>
 8005e32:	f000 fafb 	bl	800642c <__malloc_lock>
 8005e36:	2510      	movs	r5, #16
 8005e38:	2318      	movs	r3, #24
 8005e3a:	2002      	movs	r0, #2
 8005e3c:	4fc5      	ldr	r7, [pc, #788]	; (8006154 <_malloc_r+0x338>)
 8005e3e:	443b      	add	r3, r7
 8005e40:	f1a3 0208 	sub.w	r2, r3, #8
 8005e44:	685c      	ldr	r4, [r3, #4]
 8005e46:	4294      	cmp	r4, r2
 8005e48:	f000 8166 	beq.w	8006118 <_malloc_r+0x2fc>
 8005e4c:	6863      	ldr	r3, [r4, #4]
 8005e4e:	f023 0303 	bic.w	r3, r3, #3
 8005e52:	4423      	add	r3, r4
 8005e54:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005e58:	685a      	ldr	r2, [r3, #4]
 8005e5a:	60e9      	str	r1, [r5, #12]
 8005e5c:	f042 0201 	orr.w	r2, r2, #1
 8005e60:	608d      	str	r5, [r1, #8]
 8005e62:	4630      	mov	r0, r6
 8005e64:	605a      	str	r2, [r3, #4]
 8005e66:	f000 fae7 	bl	8006438 <__malloc_unlock>
 8005e6a:	3408      	adds	r4, #8
 8005e6c:	4620      	mov	r0, r4
 8005e6e:	b003      	add	sp, #12
 8005e70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e74:	f035 0507 	bics.w	r5, r5, #7
 8005e78:	f100 8094 	bmi.w	8005fa4 <_malloc_r+0x188>
 8005e7c:	42a9      	cmp	r1, r5
 8005e7e:	f200 8091 	bhi.w	8005fa4 <_malloc_r+0x188>
 8005e82:	f000 fad3 	bl	800642c <__malloc_lock>
 8005e86:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005e8a:	f0c0 8183 	bcc.w	8006194 <_malloc_r+0x378>
 8005e8e:	0a6b      	lsrs	r3, r5, #9
 8005e90:	f000 808f 	beq.w	8005fb2 <_malloc_r+0x196>
 8005e94:	2b04      	cmp	r3, #4
 8005e96:	f200 8146 	bhi.w	8006126 <_malloc_r+0x30a>
 8005e9a:	09ab      	lsrs	r3, r5, #6
 8005e9c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005ea0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005ea4:	00c3      	lsls	r3, r0, #3
 8005ea6:	4fab      	ldr	r7, [pc, #684]	; (8006154 <_malloc_r+0x338>)
 8005ea8:	443b      	add	r3, r7
 8005eaa:	f1a3 0108 	sub.w	r1, r3, #8
 8005eae:	685c      	ldr	r4, [r3, #4]
 8005eb0:	42a1      	cmp	r1, r4
 8005eb2:	d106      	bne.n	8005ec2 <_malloc_r+0xa6>
 8005eb4:	e00c      	b.n	8005ed0 <_malloc_r+0xb4>
 8005eb6:	2a00      	cmp	r2, #0
 8005eb8:	f280 811d 	bge.w	80060f6 <_malloc_r+0x2da>
 8005ebc:	68e4      	ldr	r4, [r4, #12]
 8005ebe:	42a1      	cmp	r1, r4
 8005ec0:	d006      	beq.n	8005ed0 <_malloc_r+0xb4>
 8005ec2:	6863      	ldr	r3, [r4, #4]
 8005ec4:	f023 0303 	bic.w	r3, r3, #3
 8005ec8:	1b5a      	subs	r2, r3, r5
 8005eca:	2a0f      	cmp	r2, #15
 8005ecc:	ddf3      	ble.n	8005eb6 <_malloc_r+0x9a>
 8005ece:	4660      	mov	r0, ip
 8005ed0:	693c      	ldr	r4, [r7, #16]
 8005ed2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006168 <_malloc_r+0x34c>
 8005ed6:	4564      	cmp	r4, ip
 8005ed8:	d071      	beq.n	8005fbe <_malloc_r+0x1a2>
 8005eda:	6863      	ldr	r3, [r4, #4]
 8005edc:	f023 0303 	bic.w	r3, r3, #3
 8005ee0:	1b5a      	subs	r2, r3, r5
 8005ee2:	2a0f      	cmp	r2, #15
 8005ee4:	f300 8144 	bgt.w	8006170 <_malloc_r+0x354>
 8005ee8:	2a00      	cmp	r2, #0
 8005eea:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005eee:	f280 8126 	bge.w	800613e <_malloc_r+0x322>
 8005ef2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005ef6:	f080 8169 	bcs.w	80061cc <_malloc_r+0x3b0>
 8005efa:	08db      	lsrs	r3, r3, #3
 8005efc:	1c59      	adds	r1, r3, #1
 8005efe:	687a      	ldr	r2, [r7, #4]
 8005f00:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005f04:	f8c4 8008 	str.w	r8, [r4, #8]
 8005f08:	f04f 0e01 	mov.w	lr, #1
 8005f0c:	109b      	asrs	r3, r3, #2
 8005f0e:	fa0e f303 	lsl.w	r3, lr, r3
 8005f12:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005f16:	4313      	orrs	r3, r2
 8005f18:	f1ae 0208 	sub.w	r2, lr, #8
 8005f1c:	60e2      	str	r2, [r4, #12]
 8005f1e:	607b      	str	r3, [r7, #4]
 8005f20:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005f24:	f8c8 400c 	str.w	r4, [r8, #12]
 8005f28:	1082      	asrs	r2, r0, #2
 8005f2a:	2401      	movs	r4, #1
 8005f2c:	4094      	lsls	r4, r2
 8005f2e:	429c      	cmp	r4, r3
 8005f30:	d84b      	bhi.n	8005fca <_malloc_r+0x1ae>
 8005f32:	421c      	tst	r4, r3
 8005f34:	d106      	bne.n	8005f44 <_malloc_r+0x128>
 8005f36:	f020 0003 	bic.w	r0, r0, #3
 8005f3a:	0064      	lsls	r4, r4, #1
 8005f3c:	421c      	tst	r4, r3
 8005f3e:	f100 0004 	add.w	r0, r0, #4
 8005f42:	d0fa      	beq.n	8005f3a <_malloc_r+0x11e>
 8005f44:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005f48:	46ce      	mov	lr, r9
 8005f4a:	4680      	mov	r8, r0
 8005f4c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005f50:	459e      	cmp	lr, r3
 8005f52:	d107      	bne.n	8005f64 <_malloc_r+0x148>
 8005f54:	e122      	b.n	800619c <_malloc_r+0x380>
 8005f56:	2a00      	cmp	r2, #0
 8005f58:	f280 8129 	bge.w	80061ae <_malloc_r+0x392>
 8005f5c:	68db      	ldr	r3, [r3, #12]
 8005f5e:	459e      	cmp	lr, r3
 8005f60:	f000 811c 	beq.w	800619c <_malloc_r+0x380>
 8005f64:	6859      	ldr	r1, [r3, #4]
 8005f66:	f021 0103 	bic.w	r1, r1, #3
 8005f6a:	1b4a      	subs	r2, r1, r5
 8005f6c:	2a0f      	cmp	r2, #15
 8005f6e:	ddf2      	ble.n	8005f56 <_malloc_r+0x13a>
 8005f70:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005f74:	195c      	adds	r4, r3, r5
 8005f76:	f045 0501 	orr.w	r5, r5, #1
 8005f7a:	605d      	str	r5, [r3, #4]
 8005f7c:	f042 0501 	orr.w	r5, r2, #1
 8005f80:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005f84:	4630      	mov	r0, r6
 8005f86:	f8ce 8008 	str.w	r8, [lr, #8]
 8005f8a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005f8e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005f92:	6065      	str	r5, [r4, #4]
 8005f94:	505a      	str	r2, [r3, r1]
 8005f96:	9301      	str	r3, [sp, #4]
 8005f98:	f000 fa4e 	bl	8006438 <__malloc_unlock>
 8005f9c:	9b01      	ldr	r3, [sp, #4]
 8005f9e:	f103 0408 	add.w	r4, r3, #8
 8005fa2:	e763      	b.n	8005e6c <_malloc_r+0x50>
 8005fa4:	2400      	movs	r4, #0
 8005fa6:	230c      	movs	r3, #12
 8005fa8:	4620      	mov	r0, r4
 8005faa:	6033      	str	r3, [r6, #0]
 8005fac:	b003      	add	sp, #12
 8005fae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005fb2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005fb6:	2040      	movs	r0, #64	; 0x40
 8005fb8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005fbc:	e773      	b.n	8005ea6 <_malloc_r+0x8a>
 8005fbe:	687b      	ldr	r3, [r7, #4]
 8005fc0:	1082      	asrs	r2, r0, #2
 8005fc2:	2401      	movs	r4, #1
 8005fc4:	4094      	lsls	r4, r2
 8005fc6:	429c      	cmp	r4, r3
 8005fc8:	d9b3      	bls.n	8005f32 <_malloc_r+0x116>
 8005fca:	68bc      	ldr	r4, [r7, #8]
 8005fcc:	6863      	ldr	r3, [r4, #4]
 8005fce:	f023 0903 	bic.w	r9, r3, #3
 8005fd2:	45a9      	cmp	r9, r5
 8005fd4:	d303      	bcc.n	8005fde <_malloc_r+0x1c2>
 8005fd6:	eba9 0305 	sub.w	r3, r9, r5
 8005fda:	2b0f      	cmp	r3, #15
 8005fdc:	dc7b      	bgt.n	80060d6 <_malloc_r+0x2ba>
 8005fde:	4b5e      	ldr	r3, [pc, #376]	; (8006158 <_malloc_r+0x33c>)
 8005fe0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800616c <_malloc_r+0x350>
 8005fe4:	681a      	ldr	r2, [r3, #0]
 8005fe6:	f8da 3000 	ldr.w	r3, [sl]
 8005fea:	3301      	adds	r3, #1
 8005fec:	eb05 0802 	add.w	r8, r5, r2
 8005ff0:	f000 8148 	beq.w	8006284 <_malloc_r+0x468>
 8005ff4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005ff8:	f108 080f 	add.w	r8, r8, #15
 8005ffc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8006000:	f028 080f 	bic.w	r8, r8, #15
 8006004:	4641      	mov	r1, r8
 8006006:	4630      	mov	r0, r6
 8006008:	f000 ff08 	bl	8006e1c <_sbrk_r>
 800600c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8006010:	4683      	mov	fp, r0
 8006012:	f000 8104 	beq.w	800621e <_malloc_r+0x402>
 8006016:	eb04 0009 	add.w	r0, r4, r9
 800601a:	4558      	cmp	r0, fp
 800601c:	f200 80fd 	bhi.w	800621a <_malloc_r+0x3fe>
 8006020:	4a4e      	ldr	r2, [pc, #312]	; (800615c <_malloc_r+0x340>)
 8006022:	6813      	ldr	r3, [r2, #0]
 8006024:	4443      	add	r3, r8
 8006026:	6013      	str	r3, [r2, #0]
 8006028:	f000 814d 	beq.w	80062c6 <_malloc_r+0x4aa>
 800602c:	f8da 1000 	ldr.w	r1, [sl]
 8006030:	3101      	adds	r1, #1
 8006032:	bf1b      	ittet	ne
 8006034:	ebab 0000 	subne.w	r0, fp, r0
 8006038:	181b      	addne	r3, r3, r0
 800603a:	f8ca b000 	streq.w	fp, [sl]
 800603e:	6013      	strne	r3, [r2, #0]
 8006040:	f01b 0307 	ands.w	r3, fp, #7
 8006044:	f000 8134 	beq.w	80062b0 <_malloc_r+0x494>
 8006048:	f1c3 0108 	rsb	r1, r3, #8
 800604c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006050:	448b      	add	fp, r1
 8006052:	3308      	adds	r3, #8
 8006054:	44d8      	add	r8, fp
 8006056:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800605a:	eba3 0808 	sub.w	r8, r3, r8
 800605e:	4641      	mov	r1, r8
 8006060:	4630      	mov	r0, r6
 8006062:	9201      	str	r2, [sp, #4]
 8006064:	f000 feda 	bl	8006e1c <_sbrk_r>
 8006068:	1c43      	adds	r3, r0, #1
 800606a:	9a01      	ldr	r2, [sp, #4]
 800606c:	f000 8146 	beq.w	80062fc <_malloc_r+0x4e0>
 8006070:	eba0 010b 	sub.w	r1, r0, fp
 8006074:	4441      	add	r1, r8
 8006076:	f041 0101 	orr.w	r1, r1, #1
 800607a:	6813      	ldr	r3, [r2, #0]
 800607c:	f8c7 b008 	str.w	fp, [r7, #8]
 8006080:	4443      	add	r3, r8
 8006082:	42bc      	cmp	r4, r7
 8006084:	f8cb 1004 	str.w	r1, [fp, #4]
 8006088:	6013      	str	r3, [r2, #0]
 800608a:	d015      	beq.n	80060b8 <_malloc_r+0x29c>
 800608c:	f1b9 0f0f 	cmp.w	r9, #15
 8006090:	f240 8130 	bls.w	80062f4 <_malloc_r+0x4d8>
 8006094:	6860      	ldr	r0, [r4, #4]
 8006096:	f1a9 010c 	sub.w	r1, r9, #12
 800609a:	f021 0107 	bic.w	r1, r1, #7
 800609e:	f000 0001 	and.w	r0, r0, #1
 80060a2:	eb04 0c01 	add.w	ip, r4, r1
 80060a6:	4308      	orrs	r0, r1
 80060a8:	f04f 0e05 	mov.w	lr, #5
 80060ac:	290f      	cmp	r1, #15
 80060ae:	6060      	str	r0, [r4, #4]
 80060b0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80060b4:	f200 813a 	bhi.w	800632c <_malloc_r+0x510>
 80060b8:	4a29      	ldr	r2, [pc, #164]	; (8006160 <_malloc_r+0x344>)
 80060ba:	482a      	ldr	r0, [pc, #168]	; (8006164 <_malloc_r+0x348>)
 80060bc:	6811      	ldr	r1, [r2, #0]
 80060be:	68bc      	ldr	r4, [r7, #8]
 80060c0:	428b      	cmp	r3, r1
 80060c2:	6801      	ldr	r1, [r0, #0]
 80060c4:	bf88      	it	hi
 80060c6:	6013      	strhi	r3, [r2, #0]
 80060c8:	6862      	ldr	r2, [r4, #4]
 80060ca:	428b      	cmp	r3, r1
 80060cc:	f022 0203 	bic.w	r2, r2, #3
 80060d0:	bf88      	it	hi
 80060d2:	6003      	strhi	r3, [r0, #0]
 80060d4:	e0a7      	b.n	8006226 <_malloc_r+0x40a>
 80060d6:	1962      	adds	r2, r4, r5
 80060d8:	f043 0301 	orr.w	r3, r3, #1
 80060dc:	f045 0501 	orr.w	r5, r5, #1
 80060e0:	6065      	str	r5, [r4, #4]
 80060e2:	4630      	mov	r0, r6
 80060e4:	60ba      	str	r2, [r7, #8]
 80060e6:	6053      	str	r3, [r2, #4]
 80060e8:	f000 f9a6 	bl	8006438 <__malloc_unlock>
 80060ec:	3408      	adds	r4, #8
 80060ee:	4620      	mov	r0, r4
 80060f0:	b003      	add	sp, #12
 80060f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060f6:	4423      	add	r3, r4
 80060f8:	68e1      	ldr	r1, [r4, #12]
 80060fa:	685a      	ldr	r2, [r3, #4]
 80060fc:	68a5      	ldr	r5, [r4, #8]
 80060fe:	f042 0201 	orr.w	r2, r2, #1
 8006102:	60e9      	str	r1, [r5, #12]
 8006104:	4630      	mov	r0, r6
 8006106:	608d      	str	r5, [r1, #8]
 8006108:	605a      	str	r2, [r3, #4]
 800610a:	f000 f995 	bl	8006438 <__malloc_unlock>
 800610e:	3408      	adds	r4, #8
 8006110:	4620      	mov	r0, r4
 8006112:	b003      	add	sp, #12
 8006114:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006118:	68dc      	ldr	r4, [r3, #12]
 800611a:	42a3      	cmp	r3, r4
 800611c:	bf08      	it	eq
 800611e:	3002      	addeq	r0, #2
 8006120:	f43f aed6 	beq.w	8005ed0 <_malloc_r+0xb4>
 8006124:	e692      	b.n	8005e4c <_malloc_r+0x30>
 8006126:	2b14      	cmp	r3, #20
 8006128:	d971      	bls.n	800620e <_malloc_r+0x3f2>
 800612a:	2b54      	cmp	r3, #84	; 0x54
 800612c:	f200 80ad 	bhi.w	800628a <_malloc_r+0x46e>
 8006130:	0b2b      	lsrs	r3, r5, #12
 8006132:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8006136:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800613a:	00c3      	lsls	r3, r0, #3
 800613c:	e6b3      	b.n	8005ea6 <_malloc_r+0x8a>
 800613e:	4423      	add	r3, r4
 8006140:	4630      	mov	r0, r6
 8006142:	685a      	ldr	r2, [r3, #4]
 8006144:	f042 0201 	orr.w	r2, r2, #1
 8006148:	605a      	str	r2, [r3, #4]
 800614a:	3408      	adds	r4, #8
 800614c:	f000 f974 	bl	8006438 <__malloc_unlock>
 8006150:	e68c      	b.n	8005e6c <_malloc_r+0x50>
 8006152:	bf00      	nop
 8006154:	2000044c 	.word	0x2000044c
 8006158:	20000ab4 	.word	0x20000ab4
 800615c:	20000a84 	.word	0x20000a84
 8006160:	20000aac 	.word	0x20000aac
 8006164:	20000ab0 	.word	0x20000ab0
 8006168:	20000454 	.word	0x20000454
 800616c:	20000854 	.word	0x20000854
 8006170:	1961      	adds	r1, r4, r5
 8006172:	f045 0e01 	orr.w	lr, r5, #1
 8006176:	f042 0501 	orr.w	r5, r2, #1
 800617a:	f8c4 e004 	str.w	lr, [r4, #4]
 800617e:	4630      	mov	r0, r6
 8006180:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006184:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006188:	604d      	str	r5, [r1, #4]
 800618a:	50e2      	str	r2, [r4, r3]
 800618c:	f000 f954 	bl	8006438 <__malloc_unlock>
 8006190:	3408      	adds	r4, #8
 8006192:	e66b      	b.n	8005e6c <_malloc_r+0x50>
 8006194:	08e8      	lsrs	r0, r5, #3
 8006196:	f105 0308 	add.w	r3, r5, #8
 800619a:	e64f      	b.n	8005e3c <_malloc_r+0x20>
 800619c:	f108 0801 	add.w	r8, r8, #1
 80061a0:	f018 0f03 	tst.w	r8, #3
 80061a4:	f10e 0e08 	add.w	lr, lr, #8
 80061a8:	f47f aed0 	bne.w	8005f4c <_malloc_r+0x130>
 80061ac:	e052      	b.n	8006254 <_malloc_r+0x438>
 80061ae:	4419      	add	r1, r3
 80061b0:	461c      	mov	r4, r3
 80061b2:	684a      	ldr	r2, [r1, #4]
 80061b4:	68db      	ldr	r3, [r3, #12]
 80061b6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80061ba:	f042 0201 	orr.w	r2, r2, #1
 80061be:	604a      	str	r2, [r1, #4]
 80061c0:	4630      	mov	r0, r6
 80061c2:	60eb      	str	r3, [r5, #12]
 80061c4:	609d      	str	r5, [r3, #8]
 80061c6:	f000 f937 	bl	8006438 <__malloc_unlock>
 80061ca:	e64f      	b.n	8005e6c <_malloc_r+0x50>
 80061cc:	0a5a      	lsrs	r2, r3, #9
 80061ce:	2a04      	cmp	r2, #4
 80061d0:	d935      	bls.n	800623e <_malloc_r+0x422>
 80061d2:	2a14      	cmp	r2, #20
 80061d4:	d86f      	bhi.n	80062b6 <_malloc_r+0x49a>
 80061d6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80061da:	00c9      	lsls	r1, r1, #3
 80061dc:	325b      	adds	r2, #91	; 0x5b
 80061de:	eb07 0e01 	add.w	lr, r7, r1
 80061e2:	5879      	ldr	r1, [r7, r1]
 80061e4:	f1ae 0e08 	sub.w	lr, lr, #8
 80061e8:	458e      	cmp	lr, r1
 80061ea:	d058      	beq.n	800629e <_malloc_r+0x482>
 80061ec:	684a      	ldr	r2, [r1, #4]
 80061ee:	f022 0203 	bic.w	r2, r2, #3
 80061f2:	429a      	cmp	r2, r3
 80061f4:	d902      	bls.n	80061fc <_malloc_r+0x3e0>
 80061f6:	6889      	ldr	r1, [r1, #8]
 80061f8:	458e      	cmp	lr, r1
 80061fa:	d1f7      	bne.n	80061ec <_malloc_r+0x3d0>
 80061fc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006200:	687b      	ldr	r3, [r7, #4]
 8006202:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006206:	f8ce 4008 	str.w	r4, [lr, #8]
 800620a:	60cc      	str	r4, [r1, #12]
 800620c:	e68c      	b.n	8005f28 <_malloc_r+0x10c>
 800620e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006212:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006216:	00c3      	lsls	r3, r0, #3
 8006218:	e645      	b.n	8005ea6 <_malloc_r+0x8a>
 800621a:	42bc      	cmp	r4, r7
 800621c:	d072      	beq.n	8006304 <_malloc_r+0x4e8>
 800621e:	68bc      	ldr	r4, [r7, #8]
 8006220:	6862      	ldr	r2, [r4, #4]
 8006222:	f022 0203 	bic.w	r2, r2, #3
 8006226:	4295      	cmp	r5, r2
 8006228:	eba2 0305 	sub.w	r3, r2, r5
 800622c:	d802      	bhi.n	8006234 <_malloc_r+0x418>
 800622e:	2b0f      	cmp	r3, #15
 8006230:	f73f af51 	bgt.w	80060d6 <_malloc_r+0x2ba>
 8006234:	4630      	mov	r0, r6
 8006236:	f000 f8ff 	bl	8006438 <__malloc_unlock>
 800623a:	2400      	movs	r4, #0
 800623c:	e616      	b.n	8005e6c <_malloc_r+0x50>
 800623e:	099a      	lsrs	r2, r3, #6
 8006240:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006244:	00c9      	lsls	r1, r1, #3
 8006246:	3238      	adds	r2, #56	; 0x38
 8006248:	e7c9      	b.n	80061de <_malloc_r+0x3c2>
 800624a:	f8d9 9000 	ldr.w	r9, [r9]
 800624e:	4599      	cmp	r9, r3
 8006250:	f040 8083 	bne.w	800635a <_malloc_r+0x53e>
 8006254:	f010 0f03 	tst.w	r0, #3
 8006258:	f1a9 0308 	sub.w	r3, r9, #8
 800625c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006260:	d1f3      	bne.n	800624a <_malloc_r+0x42e>
 8006262:	687b      	ldr	r3, [r7, #4]
 8006264:	ea23 0304 	bic.w	r3, r3, r4
 8006268:	607b      	str	r3, [r7, #4]
 800626a:	0064      	lsls	r4, r4, #1
 800626c:	429c      	cmp	r4, r3
 800626e:	f63f aeac 	bhi.w	8005fca <_malloc_r+0x1ae>
 8006272:	b91c      	cbnz	r4, 800627c <_malloc_r+0x460>
 8006274:	e6a9      	b.n	8005fca <_malloc_r+0x1ae>
 8006276:	0064      	lsls	r4, r4, #1
 8006278:	f108 0804 	add.w	r8, r8, #4
 800627c:	421c      	tst	r4, r3
 800627e:	d0fa      	beq.n	8006276 <_malloc_r+0x45a>
 8006280:	4640      	mov	r0, r8
 8006282:	e65f      	b.n	8005f44 <_malloc_r+0x128>
 8006284:	f108 0810 	add.w	r8, r8, #16
 8006288:	e6bc      	b.n	8006004 <_malloc_r+0x1e8>
 800628a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800628e:	d826      	bhi.n	80062de <_malloc_r+0x4c2>
 8006290:	0beb      	lsrs	r3, r5, #15
 8006292:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006296:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800629a:	00c3      	lsls	r3, r0, #3
 800629c:	e603      	b.n	8005ea6 <_malloc_r+0x8a>
 800629e:	687b      	ldr	r3, [r7, #4]
 80062a0:	1092      	asrs	r2, r2, #2
 80062a2:	f04f 0801 	mov.w	r8, #1
 80062a6:	fa08 f202 	lsl.w	r2, r8, r2
 80062aa:	4313      	orrs	r3, r2
 80062ac:	607b      	str	r3, [r7, #4]
 80062ae:	e7a8      	b.n	8006202 <_malloc_r+0x3e6>
 80062b0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80062b4:	e6ce      	b.n	8006054 <_malloc_r+0x238>
 80062b6:	2a54      	cmp	r2, #84	; 0x54
 80062b8:	d829      	bhi.n	800630e <_malloc_r+0x4f2>
 80062ba:	0b1a      	lsrs	r2, r3, #12
 80062bc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80062c0:	00c9      	lsls	r1, r1, #3
 80062c2:	326e      	adds	r2, #110	; 0x6e
 80062c4:	e78b      	b.n	80061de <_malloc_r+0x3c2>
 80062c6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80062ca:	2900      	cmp	r1, #0
 80062cc:	f47f aeae 	bne.w	800602c <_malloc_r+0x210>
 80062d0:	eb09 0208 	add.w	r2, r9, r8
 80062d4:	68b9      	ldr	r1, [r7, #8]
 80062d6:	f042 0201 	orr.w	r2, r2, #1
 80062da:	604a      	str	r2, [r1, #4]
 80062dc:	e6ec      	b.n	80060b8 <_malloc_r+0x29c>
 80062de:	f240 5254 	movw	r2, #1364	; 0x554
 80062e2:	4293      	cmp	r3, r2
 80062e4:	d81c      	bhi.n	8006320 <_malloc_r+0x504>
 80062e6:	0cab      	lsrs	r3, r5, #18
 80062e8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80062ec:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80062f0:	00c3      	lsls	r3, r0, #3
 80062f2:	e5d8      	b.n	8005ea6 <_malloc_r+0x8a>
 80062f4:	2301      	movs	r3, #1
 80062f6:	f8cb 3004 	str.w	r3, [fp, #4]
 80062fa:	e79b      	b.n	8006234 <_malloc_r+0x418>
 80062fc:	2101      	movs	r1, #1
 80062fe:	f04f 0800 	mov.w	r8, #0
 8006302:	e6ba      	b.n	800607a <_malloc_r+0x25e>
 8006304:	4a16      	ldr	r2, [pc, #88]	; (8006360 <_malloc_r+0x544>)
 8006306:	6813      	ldr	r3, [r2, #0]
 8006308:	4443      	add	r3, r8
 800630a:	6013      	str	r3, [r2, #0]
 800630c:	e68e      	b.n	800602c <_malloc_r+0x210>
 800630e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006312:	d814      	bhi.n	800633e <_malloc_r+0x522>
 8006314:	0bda      	lsrs	r2, r3, #15
 8006316:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800631a:	00c9      	lsls	r1, r1, #3
 800631c:	3277      	adds	r2, #119	; 0x77
 800631e:	e75e      	b.n	80061de <_malloc_r+0x3c2>
 8006320:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006324:	207f      	movs	r0, #127	; 0x7f
 8006326:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800632a:	e5bc      	b.n	8005ea6 <_malloc_r+0x8a>
 800632c:	f104 0108 	add.w	r1, r4, #8
 8006330:	4630      	mov	r0, r6
 8006332:	9201      	str	r2, [sp, #4]
 8006334:	f7ff fa48 	bl	80057c8 <_free_r>
 8006338:	9a01      	ldr	r2, [sp, #4]
 800633a:	6813      	ldr	r3, [r2, #0]
 800633c:	e6bc      	b.n	80060b8 <_malloc_r+0x29c>
 800633e:	f240 5154 	movw	r1, #1364	; 0x554
 8006342:	428a      	cmp	r2, r1
 8006344:	d805      	bhi.n	8006352 <_malloc_r+0x536>
 8006346:	0c9a      	lsrs	r2, r3, #18
 8006348:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800634c:	00c9      	lsls	r1, r1, #3
 800634e:	327c      	adds	r2, #124	; 0x7c
 8006350:	e745      	b.n	80061de <_malloc_r+0x3c2>
 8006352:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006356:	227e      	movs	r2, #126	; 0x7e
 8006358:	e741      	b.n	80061de <_malloc_r+0x3c2>
 800635a:	687b      	ldr	r3, [r7, #4]
 800635c:	e785      	b.n	800626a <_malloc_r+0x44e>
 800635e:	bf00      	nop
 8006360:	20000a84 	.word	0x20000a84

08006364 <memmove>:
 8006364:	4288      	cmp	r0, r1
 8006366:	b4f0      	push	{r4, r5, r6, r7}
 8006368:	d90d      	bls.n	8006386 <memmove+0x22>
 800636a:	188b      	adds	r3, r1, r2
 800636c:	4283      	cmp	r3, r0
 800636e:	d90a      	bls.n	8006386 <memmove+0x22>
 8006370:	1884      	adds	r4, r0, r2
 8006372:	b132      	cbz	r2, 8006382 <memmove+0x1e>
 8006374:	4622      	mov	r2, r4
 8006376:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800637a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800637e:	4299      	cmp	r1, r3
 8006380:	d1f9      	bne.n	8006376 <memmove+0x12>
 8006382:	bcf0      	pop	{r4, r5, r6, r7}
 8006384:	4770      	bx	lr
 8006386:	2a0f      	cmp	r2, #15
 8006388:	d949      	bls.n	800641e <memmove+0xba>
 800638a:	ea40 0301 	orr.w	r3, r0, r1
 800638e:	079b      	lsls	r3, r3, #30
 8006390:	d147      	bne.n	8006422 <memmove+0xbe>
 8006392:	f1a2 0310 	sub.w	r3, r2, #16
 8006396:	091b      	lsrs	r3, r3, #4
 8006398:	f101 0720 	add.w	r7, r1, #32
 800639c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80063a0:	f101 0410 	add.w	r4, r1, #16
 80063a4:	f100 0510 	add.w	r5, r0, #16
 80063a8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80063ac:	f845 6c10 	str.w	r6, [r5, #-16]
 80063b0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80063b4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80063b8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80063bc:	f845 6c08 	str.w	r6, [r5, #-8]
 80063c0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80063c4:	f845 6c04 	str.w	r6, [r5, #-4]
 80063c8:	3410      	adds	r4, #16
 80063ca:	42bc      	cmp	r4, r7
 80063cc:	f105 0510 	add.w	r5, r5, #16
 80063d0:	d1ea      	bne.n	80063a8 <memmove+0x44>
 80063d2:	3301      	adds	r3, #1
 80063d4:	f002 050f 	and.w	r5, r2, #15
 80063d8:	011b      	lsls	r3, r3, #4
 80063da:	2d03      	cmp	r5, #3
 80063dc:	4419      	add	r1, r3
 80063de:	4403      	add	r3, r0
 80063e0:	d921      	bls.n	8006426 <memmove+0xc2>
 80063e2:	1f1f      	subs	r7, r3, #4
 80063e4:	460e      	mov	r6, r1
 80063e6:	462c      	mov	r4, r5
 80063e8:	3c04      	subs	r4, #4
 80063ea:	f856 cb04 	ldr.w	ip, [r6], #4
 80063ee:	f847 cf04 	str.w	ip, [r7, #4]!
 80063f2:	2c03      	cmp	r4, #3
 80063f4:	d8f8      	bhi.n	80063e8 <memmove+0x84>
 80063f6:	1f2c      	subs	r4, r5, #4
 80063f8:	f024 0403 	bic.w	r4, r4, #3
 80063fc:	3404      	adds	r4, #4
 80063fe:	4423      	add	r3, r4
 8006400:	4421      	add	r1, r4
 8006402:	f002 0203 	and.w	r2, r2, #3
 8006406:	2a00      	cmp	r2, #0
 8006408:	d0bb      	beq.n	8006382 <memmove+0x1e>
 800640a:	3b01      	subs	r3, #1
 800640c:	440a      	add	r2, r1
 800640e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006412:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006416:	4291      	cmp	r1, r2
 8006418:	d1f9      	bne.n	800640e <memmove+0xaa>
 800641a:	bcf0      	pop	{r4, r5, r6, r7}
 800641c:	4770      	bx	lr
 800641e:	4603      	mov	r3, r0
 8006420:	e7f1      	b.n	8006406 <memmove+0xa2>
 8006422:	4603      	mov	r3, r0
 8006424:	e7f1      	b.n	800640a <memmove+0xa6>
 8006426:	462a      	mov	r2, r5
 8006428:	e7ed      	b.n	8006406 <memmove+0xa2>
 800642a:	bf00      	nop

0800642c <__malloc_lock>:
 800642c:	4801      	ldr	r0, [pc, #4]	; (8006434 <__malloc_lock+0x8>)
 800642e:	f7ff bc79 	b.w	8005d24 <__retarget_lock_acquire_recursive>
 8006432:	bf00      	nop
 8006434:	20000b10 	.word	0x20000b10

08006438 <__malloc_unlock>:
 8006438:	4801      	ldr	r0, [pc, #4]	; (8006440 <__malloc_unlock+0x8>)
 800643a:	f7ff bc75 	b.w	8005d28 <__retarget_lock_release_recursive>
 800643e:	bf00      	nop
 8006440:	20000b10 	.word	0x20000b10

08006444 <_Balloc>:
 8006444:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006446:	b570      	push	{r4, r5, r6, lr}
 8006448:	4605      	mov	r5, r0
 800644a:	460c      	mov	r4, r1
 800644c:	b14b      	cbz	r3, 8006462 <_Balloc+0x1e>
 800644e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006452:	b180      	cbz	r0, 8006476 <_Balloc+0x32>
 8006454:	6802      	ldr	r2, [r0, #0]
 8006456:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800645a:	2300      	movs	r3, #0
 800645c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006460:	bd70      	pop	{r4, r5, r6, pc}
 8006462:	2221      	movs	r2, #33	; 0x21
 8006464:	2104      	movs	r1, #4
 8006466:	f000 fe1d 	bl	80070a4 <_calloc_r>
 800646a:	4603      	mov	r3, r0
 800646c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800646e:	2800      	cmp	r0, #0
 8006470:	d1ed      	bne.n	800644e <_Balloc+0xa>
 8006472:	2000      	movs	r0, #0
 8006474:	bd70      	pop	{r4, r5, r6, pc}
 8006476:	2101      	movs	r1, #1
 8006478:	fa01 f604 	lsl.w	r6, r1, r4
 800647c:	1d72      	adds	r2, r6, #5
 800647e:	4628      	mov	r0, r5
 8006480:	0092      	lsls	r2, r2, #2
 8006482:	f000 fe0f 	bl	80070a4 <_calloc_r>
 8006486:	2800      	cmp	r0, #0
 8006488:	d0f3      	beq.n	8006472 <_Balloc+0x2e>
 800648a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800648e:	e7e4      	b.n	800645a <_Balloc+0x16>

08006490 <_Bfree>:
 8006490:	b131      	cbz	r1, 80064a0 <_Bfree+0x10>
 8006492:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006494:	684a      	ldr	r2, [r1, #4]
 8006496:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800649a:	6008      	str	r0, [r1, #0]
 800649c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80064a0:	4770      	bx	lr
 80064a2:	bf00      	nop

080064a4 <__multadd>:
 80064a4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80064a6:	690c      	ldr	r4, [r1, #16]
 80064a8:	b083      	sub	sp, #12
 80064aa:	460d      	mov	r5, r1
 80064ac:	4606      	mov	r6, r0
 80064ae:	f101 0c14 	add.w	ip, r1, #20
 80064b2:	2700      	movs	r7, #0
 80064b4:	f8dc 0000 	ldr.w	r0, [ip]
 80064b8:	b281      	uxth	r1, r0
 80064ba:	fb02 3301 	mla	r3, r2, r1, r3
 80064be:	0c01      	lsrs	r1, r0, #16
 80064c0:	0c18      	lsrs	r0, r3, #16
 80064c2:	fb02 0101 	mla	r1, r2, r1, r0
 80064c6:	b29b      	uxth	r3, r3
 80064c8:	3701      	adds	r7, #1
 80064ca:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80064ce:	42bc      	cmp	r4, r7
 80064d0:	f84c 3b04 	str.w	r3, [ip], #4
 80064d4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80064d8:	dcec      	bgt.n	80064b4 <__multadd+0x10>
 80064da:	b13b      	cbz	r3, 80064ec <__multadd+0x48>
 80064dc:	68aa      	ldr	r2, [r5, #8]
 80064de:	42a2      	cmp	r2, r4
 80064e0:	dd07      	ble.n	80064f2 <__multadd+0x4e>
 80064e2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80064e6:	3401      	adds	r4, #1
 80064e8:	6153      	str	r3, [r2, #20]
 80064ea:	612c      	str	r4, [r5, #16]
 80064ec:	4628      	mov	r0, r5
 80064ee:	b003      	add	sp, #12
 80064f0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80064f2:	6869      	ldr	r1, [r5, #4]
 80064f4:	9301      	str	r3, [sp, #4]
 80064f6:	3101      	adds	r1, #1
 80064f8:	4630      	mov	r0, r6
 80064fa:	f7ff ffa3 	bl	8006444 <_Balloc>
 80064fe:	692a      	ldr	r2, [r5, #16]
 8006500:	3202      	adds	r2, #2
 8006502:	f105 010c 	add.w	r1, r5, #12
 8006506:	4607      	mov	r7, r0
 8006508:	0092      	lsls	r2, r2, #2
 800650a:	300c      	adds	r0, #12
 800650c:	f7f9 fff8 	bl	8000500 <memcpy>
 8006510:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006512:	6869      	ldr	r1, [r5, #4]
 8006514:	9b01      	ldr	r3, [sp, #4]
 8006516:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800651a:	6028      	str	r0, [r5, #0]
 800651c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006520:	463d      	mov	r5, r7
 8006522:	e7de      	b.n	80064e2 <__multadd+0x3e>

08006524 <__hi0bits>:
 8006524:	0c02      	lsrs	r2, r0, #16
 8006526:	0412      	lsls	r2, r2, #16
 8006528:	4603      	mov	r3, r0
 800652a:	b9c2      	cbnz	r2, 800655e <__hi0bits+0x3a>
 800652c:	0403      	lsls	r3, r0, #16
 800652e:	2010      	movs	r0, #16
 8006530:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006534:	bf04      	itt	eq
 8006536:	021b      	lsleq	r3, r3, #8
 8006538:	3008      	addeq	r0, #8
 800653a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800653e:	bf04      	itt	eq
 8006540:	011b      	lsleq	r3, r3, #4
 8006542:	3004      	addeq	r0, #4
 8006544:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006548:	bf04      	itt	eq
 800654a:	009b      	lsleq	r3, r3, #2
 800654c:	3002      	addeq	r0, #2
 800654e:	2b00      	cmp	r3, #0
 8006550:	db04      	blt.n	800655c <__hi0bits+0x38>
 8006552:	005b      	lsls	r3, r3, #1
 8006554:	d501      	bpl.n	800655a <__hi0bits+0x36>
 8006556:	3001      	adds	r0, #1
 8006558:	4770      	bx	lr
 800655a:	2020      	movs	r0, #32
 800655c:	4770      	bx	lr
 800655e:	2000      	movs	r0, #0
 8006560:	e7e6      	b.n	8006530 <__hi0bits+0xc>
 8006562:	bf00      	nop

08006564 <__lo0bits>:
 8006564:	6803      	ldr	r3, [r0, #0]
 8006566:	f013 0207 	ands.w	r2, r3, #7
 800656a:	4601      	mov	r1, r0
 800656c:	d007      	beq.n	800657e <__lo0bits+0x1a>
 800656e:	07da      	lsls	r2, r3, #31
 8006570:	d41f      	bmi.n	80065b2 <__lo0bits+0x4e>
 8006572:	0798      	lsls	r0, r3, #30
 8006574:	d51f      	bpl.n	80065b6 <__lo0bits+0x52>
 8006576:	085b      	lsrs	r3, r3, #1
 8006578:	600b      	str	r3, [r1, #0]
 800657a:	2001      	movs	r0, #1
 800657c:	4770      	bx	lr
 800657e:	b298      	uxth	r0, r3
 8006580:	b1a0      	cbz	r0, 80065ac <__lo0bits+0x48>
 8006582:	4610      	mov	r0, r2
 8006584:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006588:	bf04      	itt	eq
 800658a:	0a1b      	lsreq	r3, r3, #8
 800658c:	3008      	addeq	r0, #8
 800658e:	071a      	lsls	r2, r3, #28
 8006590:	bf04      	itt	eq
 8006592:	091b      	lsreq	r3, r3, #4
 8006594:	3004      	addeq	r0, #4
 8006596:	079a      	lsls	r2, r3, #30
 8006598:	bf04      	itt	eq
 800659a:	089b      	lsreq	r3, r3, #2
 800659c:	3002      	addeq	r0, #2
 800659e:	07da      	lsls	r2, r3, #31
 80065a0:	d402      	bmi.n	80065a8 <__lo0bits+0x44>
 80065a2:	085b      	lsrs	r3, r3, #1
 80065a4:	d00b      	beq.n	80065be <__lo0bits+0x5a>
 80065a6:	3001      	adds	r0, #1
 80065a8:	600b      	str	r3, [r1, #0]
 80065aa:	4770      	bx	lr
 80065ac:	0c1b      	lsrs	r3, r3, #16
 80065ae:	2010      	movs	r0, #16
 80065b0:	e7e8      	b.n	8006584 <__lo0bits+0x20>
 80065b2:	2000      	movs	r0, #0
 80065b4:	4770      	bx	lr
 80065b6:	089b      	lsrs	r3, r3, #2
 80065b8:	600b      	str	r3, [r1, #0]
 80065ba:	2002      	movs	r0, #2
 80065bc:	4770      	bx	lr
 80065be:	2020      	movs	r0, #32
 80065c0:	4770      	bx	lr
 80065c2:	bf00      	nop

080065c4 <__i2b>:
 80065c4:	b510      	push	{r4, lr}
 80065c6:	460c      	mov	r4, r1
 80065c8:	2101      	movs	r1, #1
 80065ca:	f7ff ff3b 	bl	8006444 <_Balloc>
 80065ce:	2201      	movs	r2, #1
 80065d0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80065d4:	bd10      	pop	{r4, pc}
 80065d6:	bf00      	nop

080065d8 <__multiply>:
 80065d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80065dc:	690e      	ldr	r6, [r1, #16]
 80065de:	6914      	ldr	r4, [r2, #16]
 80065e0:	42a6      	cmp	r6, r4
 80065e2:	b083      	sub	sp, #12
 80065e4:	460f      	mov	r7, r1
 80065e6:	4615      	mov	r5, r2
 80065e8:	da04      	bge.n	80065f4 <__multiply+0x1c>
 80065ea:	4632      	mov	r2, r6
 80065ec:	462f      	mov	r7, r5
 80065ee:	4626      	mov	r6, r4
 80065f0:	460d      	mov	r5, r1
 80065f2:	4614      	mov	r4, r2
 80065f4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80065f8:	eb06 0804 	add.w	r8, r6, r4
 80065fc:	4543      	cmp	r3, r8
 80065fe:	bfb8      	it	lt
 8006600:	3101      	addlt	r1, #1
 8006602:	f7ff ff1f 	bl	8006444 <_Balloc>
 8006606:	f100 0914 	add.w	r9, r0, #20
 800660a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800660e:	45f1      	cmp	r9, lr
 8006610:	9000      	str	r0, [sp, #0]
 8006612:	d205      	bcs.n	8006620 <__multiply+0x48>
 8006614:	464b      	mov	r3, r9
 8006616:	2200      	movs	r2, #0
 8006618:	f843 2b04 	str.w	r2, [r3], #4
 800661c:	459e      	cmp	lr, r3
 800661e:	d8fb      	bhi.n	8006618 <__multiply+0x40>
 8006620:	f105 0a14 	add.w	sl, r5, #20
 8006624:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006628:	f107 0314 	add.w	r3, r7, #20
 800662c:	45a2      	cmp	sl, r4
 800662e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006632:	d261      	bcs.n	80066f8 <__multiply+0x120>
 8006634:	1b64      	subs	r4, r4, r5
 8006636:	3c15      	subs	r4, #21
 8006638:	f024 0403 	bic.w	r4, r4, #3
 800663c:	f8cd e004 	str.w	lr, [sp, #4]
 8006640:	44a2      	add	sl, r4
 8006642:	f105 0210 	add.w	r2, r5, #16
 8006646:	469e      	mov	lr, r3
 8006648:	e005      	b.n	8006656 <__multiply+0x7e>
 800664a:	0c2d      	lsrs	r5, r5, #16
 800664c:	d12b      	bne.n	80066a6 <__multiply+0xce>
 800664e:	4592      	cmp	sl, r2
 8006650:	f109 0904 	add.w	r9, r9, #4
 8006654:	d04e      	beq.n	80066f4 <__multiply+0x11c>
 8006656:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800665a:	fa1f fb85 	uxth.w	fp, r5
 800665e:	f1bb 0f00 	cmp.w	fp, #0
 8006662:	d0f2      	beq.n	800664a <__multiply+0x72>
 8006664:	4677      	mov	r7, lr
 8006666:	464e      	mov	r6, r9
 8006668:	2000      	movs	r0, #0
 800666a:	e000      	b.n	800666e <__multiply+0x96>
 800666c:	4626      	mov	r6, r4
 800666e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006672:	6834      	ldr	r4, [r6, #0]
 8006674:	b28b      	uxth	r3, r1
 8006676:	b2a5      	uxth	r5, r4
 8006678:	0c09      	lsrs	r1, r1, #16
 800667a:	0c24      	lsrs	r4, r4, #16
 800667c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006680:	4403      	add	r3, r0
 8006682:	fb0b 4001 	mla	r0, fp, r1, r4
 8006686:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800668a:	4634      	mov	r4, r6
 800668c:	b29b      	uxth	r3, r3
 800668e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006692:	45bc      	cmp	ip, r7
 8006694:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006698:	f844 3b04 	str.w	r3, [r4], #4
 800669c:	d8e6      	bhi.n	800666c <__multiply+0x94>
 800669e:	6070      	str	r0, [r6, #4]
 80066a0:	6815      	ldr	r5, [r2, #0]
 80066a2:	0c2d      	lsrs	r5, r5, #16
 80066a4:	d0d3      	beq.n	800664e <__multiply+0x76>
 80066a6:	f8d9 3000 	ldr.w	r3, [r9]
 80066aa:	4676      	mov	r6, lr
 80066ac:	4618      	mov	r0, r3
 80066ae:	46cb      	mov	fp, r9
 80066b0:	2100      	movs	r1, #0
 80066b2:	e000      	b.n	80066b6 <__multiply+0xde>
 80066b4:	46a3      	mov	fp, r4
 80066b6:	8834      	ldrh	r4, [r6, #0]
 80066b8:	0c00      	lsrs	r0, r0, #16
 80066ba:	fb05 0004 	mla	r0, r5, r4, r0
 80066be:	4401      	add	r1, r0
 80066c0:	b29b      	uxth	r3, r3
 80066c2:	465c      	mov	r4, fp
 80066c4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80066c8:	f844 3b04 	str.w	r3, [r4], #4
 80066cc:	f856 3b04 	ldr.w	r3, [r6], #4
 80066d0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80066d4:	0c1b      	lsrs	r3, r3, #16
 80066d6:	b287      	uxth	r7, r0
 80066d8:	fb05 7303 	mla	r3, r5, r3, r7
 80066dc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80066e0:	45b4      	cmp	ip, r6
 80066e2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80066e6:	d8e5      	bhi.n	80066b4 <__multiply+0xdc>
 80066e8:	4592      	cmp	sl, r2
 80066ea:	f8cb 3004 	str.w	r3, [fp, #4]
 80066ee:	f109 0904 	add.w	r9, r9, #4
 80066f2:	d1b0      	bne.n	8006656 <__multiply+0x7e>
 80066f4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80066f8:	f1b8 0f00 	cmp.w	r8, #0
 80066fc:	dd0b      	ble.n	8006716 <__multiply+0x13e>
 80066fe:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006702:	f1ae 0e04 	sub.w	lr, lr, #4
 8006706:	b11b      	cbz	r3, 8006710 <__multiply+0x138>
 8006708:	e005      	b.n	8006716 <__multiply+0x13e>
 800670a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800670e:	b913      	cbnz	r3, 8006716 <__multiply+0x13e>
 8006710:	f1b8 0801 	subs.w	r8, r8, #1
 8006714:	d1f9      	bne.n	800670a <__multiply+0x132>
 8006716:	9800      	ldr	r0, [sp, #0]
 8006718:	f8c0 8010 	str.w	r8, [r0, #16]
 800671c:	b003      	add	sp, #12
 800671e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006722:	bf00      	nop

08006724 <__pow5mult>:
 8006724:	f012 0303 	ands.w	r3, r2, #3
 8006728:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800672c:	4614      	mov	r4, r2
 800672e:	4607      	mov	r7, r0
 8006730:	d12e      	bne.n	8006790 <__pow5mult+0x6c>
 8006732:	460d      	mov	r5, r1
 8006734:	10a4      	asrs	r4, r4, #2
 8006736:	d01c      	beq.n	8006772 <__pow5mult+0x4e>
 8006738:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800673a:	b396      	cbz	r6, 80067a2 <__pow5mult+0x7e>
 800673c:	07e3      	lsls	r3, r4, #31
 800673e:	f04f 0800 	mov.w	r8, #0
 8006742:	d406      	bmi.n	8006752 <__pow5mult+0x2e>
 8006744:	1064      	asrs	r4, r4, #1
 8006746:	d014      	beq.n	8006772 <__pow5mult+0x4e>
 8006748:	6830      	ldr	r0, [r6, #0]
 800674a:	b1a8      	cbz	r0, 8006778 <__pow5mult+0x54>
 800674c:	4606      	mov	r6, r0
 800674e:	07e3      	lsls	r3, r4, #31
 8006750:	d5f8      	bpl.n	8006744 <__pow5mult+0x20>
 8006752:	4632      	mov	r2, r6
 8006754:	4629      	mov	r1, r5
 8006756:	4638      	mov	r0, r7
 8006758:	f7ff ff3e 	bl	80065d8 <__multiply>
 800675c:	b1b5      	cbz	r5, 800678c <__pow5mult+0x68>
 800675e:	686a      	ldr	r2, [r5, #4]
 8006760:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006762:	1064      	asrs	r4, r4, #1
 8006764:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006768:	6029      	str	r1, [r5, #0]
 800676a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800676e:	4605      	mov	r5, r0
 8006770:	d1ea      	bne.n	8006748 <__pow5mult+0x24>
 8006772:	4628      	mov	r0, r5
 8006774:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006778:	4632      	mov	r2, r6
 800677a:	4631      	mov	r1, r6
 800677c:	4638      	mov	r0, r7
 800677e:	f7ff ff2b 	bl	80065d8 <__multiply>
 8006782:	6030      	str	r0, [r6, #0]
 8006784:	f8c0 8000 	str.w	r8, [r0]
 8006788:	4606      	mov	r6, r0
 800678a:	e7e0      	b.n	800674e <__pow5mult+0x2a>
 800678c:	4605      	mov	r5, r0
 800678e:	e7d9      	b.n	8006744 <__pow5mult+0x20>
 8006790:	3b01      	subs	r3, #1
 8006792:	4a0b      	ldr	r2, [pc, #44]	; (80067c0 <__pow5mult+0x9c>)
 8006794:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006798:	2300      	movs	r3, #0
 800679a:	f7ff fe83 	bl	80064a4 <__multadd>
 800679e:	4605      	mov	r5, r0
 80067a0:	e7c8      	b.n	8006734 <__pow5mult+0x10>
 80067a2:	2101      	movs	r1, #1
 80067a4:	4638      	mov	r0, r7
 80067a6:	f7ff fe4d 	bl	8006444 <_Balloc>
 80067aa:	f240 2371 	movw	r3, #625	; 0x271
 80067ae:	6143      	str	r3, [r0, #20]
 80067b0:	2201      	movs	r2, #1
 80067b2:	2300      	movs	r3, #0
 80067b4:	6102      	str	r2, [r0, #16]
 80067b6:	4606      	mov	r6, r0
 80067b8:	64b8      	str	r0, [r7, #72]	; 0x48
 80067ba:	6003      	str	r3, [r0, #0]
 80067bc:	e7be      	b.n	800673c <__pow5mult+0x18>
 80067be:	bf00      	nop
 80067c0:	080077b0 	.word	0x080077b0

080067c4 <__lshift>:
 80067c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80067c8:	4691      	mov	r9, r2
 80067ca:	690a      	ldr	r2, [r1, #16]
 80067cc:	460e      	mov	r6, r1
 80067ce:	ea4f 1469 	mov.w	r4, r9, asr #5
 80067d2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80067d6:	eb04 0802 	add.w	r8, r4, r2
 80067da:	f108 0501 	add.w	r5, r8, #1
 80067de:	429d      	cmp	r5, r3
 80067e0:	4607      	mov	r7, r0
 80067e2:	dd04      	ble.n	80067ee <__lshift+0x2a>
 80067e4:	005b      	lsls	r3, r3, #1
 80067e6:	429d      	cmp	r5, r3
 80067e8:	f101 0101 	add.w	r1, r1, #1
 80067ec:	dcfa      	bgt.n	80067e4 <__lshift+0x20>
 80067ee:	4638      	mov	r0, r7
 80067f0:	f7ff fe28 	bl	8006444 <_Balloc>
 80067f4:	2c00      	cmp	r4, #0
 80067f6:	f100 0314 	add.w	r3, r0, #20
 80067fa:	dd37      	ble.n	800686c <__lshift+0xa8>
 80067fc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006800:	2200      	movs	r2, #0
 8006802:	f843 2b04 	str.w	r2, [r3], #4
 8006806:	428b      	cmp	r3, r1
 8006808:	d1fb      	bne.n	8006802 <__lshift+0x3e>
 800680a:	6934      	ldr	r4, [r6, #16]
 800680c:	f106 0314 	add.w	r3, r6, #20
 8006810:	f019 091f 	ands.w	r9, r9, #31
 8006814:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006818:	d020      	beq.n	800685c <__lshift+0x98>
 800681a:	f1c9 0e20 	rsb	lr, r9, #32
 800681e:	2200      	movs	r2, #0
 8006820:	e000      	b.n	8006824 <__lshift+0x60>
 8006822:	4651      	mov	r1, sl
 8006824:	681c      	ldr	r4, [r3, #0]
 8006826:	468a      	mov	sl, r1
 8006828:	fa04 f409 	lsl.w	r4, r4, r9
 800682c:	4314      	orrs	r4, r2
 800682e:	f84a 4b04 	str.w	r4, [sl], #4
 8006832:	f853 2b04 	ldr.w	r2, [r3], #4
 8006836:	4563      	cmp	r3, ip
 8006838:	fa22 f20e 	lsr.w	r2, r2, lr
 800683c:	d3f1      	bcc.n	8006822 <__lshift+0x5e>
 800683e:	604a      	str	r2, [r1, #4]
 8006840:	b10a      	cbz	r2, 8006846 <__lshift+0x82>
 8006842:	f108 0502 	add.w	r5, r8, #2
 8006846:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006848:	6872      	ldr	r2, [r6, #4]
 800684a:	3d01      	subs	r5, #1
 800684c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006850:	6105      	str	r5, [r0, #16]
 8006852:	6031      	str	r1, [r6, #0]
 8006854:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006858:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800685c:	3904      	subs	r1, #4
 800685e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006862:	f841 2f04 	str.w	r2, [r1, #4]!
 8006866:	459c      	cmp	ip, r3
 8006868:	d8f9      	bhi.n	800685e <__lshift+0x9a>
 800686a:	e7ec      	b.n	8006846 <__lshift+0x82>
 800686c:	4619      	mov	r1, r3
 800686e:	e7cc      	b.n	800680a <__lshift+0x46>

08006870 <__mcmp>:
 8006870:	b430      	push	{r4, r5}
 8006872:	690b      	ldr	r3, [r1, #16]
 8006874:	4605      	mov	r5, r0
 8006876:	6900      	ldr	r0, [r0, #16]
 8006878:	1ac0      	subs	r0, r0, r3
 800687a:	d10f      	bne.n	800689c <__mcmp+0x2c>
 800687c:	009b      	lsls	r3, r3, #2
 800687e:	3514      	adds	r5, #20
 8006880:	3114      	adds	r1, #20
 8006882:	4419      	add	r1, r3
 8006884:	442b      	add	r3, r5
 8006886:	e001      	b.n	800688c <__mcmp+0x1c>
 8006888:	429d      	cmp	r5, r3
 800688a:	d207      	bcs.n	800689c <__mcmp+0x2c>
 800688c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006890:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006894:	4294      	cmp	r4, r2
 8006896:	d0f7      	beq.n	8006888 <__mcmp+0x18>
 8006898:	d302      	bcc.n	80068a0 <__mcmp+0x30>
 800689a:	2001      	movs	r0, #1
 800689c:	bc30      	pop	{r4, r5}
 800689e:	4770      	bx	lr
 80068a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80068a4:	e7fa      	b.n	800689c <__mcmp+0x2c>
 80068a6:	bf00      	nop

080068a8 <__mdiff>:
 80068a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80068ac:	6913      	ldr	r3, [r2, #16]
 80068ae:	690d      	ldr	r5, [r1, #16]
 80068b0:	1aed      	subs	r5, r5, r3
 80068b2:	2d00      	cmp	r5, #0
 80068b4:	460e      	mov	r6, r1
 80068b6:	4690      	mov	r8, r2
 80068b8:	f101 0414 	add.w	r4, r1, #20
 80068bc:	f102 0714 	add.w	r7, r2, #20
 80068c0:	d114      	bne.n	80068ec <__mdiff+0x44>
 80068c2:	009b      	lsls	r3, r3, #2
 80068c4:	18e2      	adds	r2, r4, r3
 80068c6:	443b      	add	r3, r7
 80068c8:	e001      	b.n	80068ce <__mdiff+0x26>
 80068ca:	42a2      	cmp	r2, r4
 80068cc:	d959      	bls.n	8006982 <__mdiff+0xda>
 80068ce:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80068d2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80068d6:	458c      	cmp	ip, r1
 80068d8:	d0f7      	beq.n	80068ca <__mdiff+0x22>
 80068da:	d209      	bcs.n	80068f0 <__mdiff+0x48>
 80068dc:	4622      	mov	r2, r4
 80068de:	4633      	mov	r3, r6
 80068e0:	463c      	mov	r4, r7
 80068e2:	4646      	mov	r6, r8
 80068e4:	4617      	mov	r7, r2
 80068e6:	4698      	mov	r8, r3
 80068e8:	2501      	movs	r5, #1
 80068ea:	e001      	b.n	80068f0 <__mdiff+0x48>
 80068ec:	dbf6      	blt.n	80068dc <__mdiff+0x34>
 80068ee:	2500      	movs	r5, #0
 80068f0:	6871      	ldr	r1, [r6, #4]
 80068f2:	f7ff fda7 	bl	8006444 <_Balloc>
 80068f6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80068fa:	6936      	ldr	r6, [r6, #16]
 80068fc:	60c5      	str	r5, [r0, #12]
 80068fe:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006902:	46bc      	mov	ip, r7
 8006904:	f100 0514 	add.w	r5, r0, #20
 8006908:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800690c:	2300      	movs	r3, #0
 800690e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006912:	f854 8b04 	ldr.w	r8, [r4], #4
 8006916:	b28a      	uxth	r2, r1
 8006918:	fa13 f388 	uxtah	r3, r3, r8
 800691c:	0c09      	lsrs	r1, r1, #16
 800691e:	1a9a      	subs	r2, r3, r2
 8006920:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006924:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006928:	b292      	uxth	r2, r2
 800692a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800692e:	45e6      	cmp	lr, ip
 8006930:	f845 2b04 	str.w	r2, [r5], #4
 8006934:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006938:	d8e9      	bhi.n	800690e <__mdiff+0x66>
 800693a:	42a7      	cmp	r7, r4
 800693c:	d917      	bls.n	800696e <__mdiff+0xc6>
 800693e:	46ae      	mov	lr, r5
 8006940:	46a4      	mov	ip, r4
 8006942:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006946:	fa13 f382 	uxtah	r3, r3, r2
 800694a:	1419      	asrs	r1, r3, #16
 800694c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006950:	b29b      	uxth	r3, r3
 8006952:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006956:	4567      	cmp	r7, ip
 8006958:	f84e 2b04 	str.w	r2, [lr], #4
 800695c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006960:	d8ef      	bhi.n	8006942 <__mdiff+0x9a>
 8006962:	43e4      	mvns	r4, r4
 8006964:	4427      	add	r7, r4
 8006966:	f027 0703 	bic.w	r7, r7, #3
 800696a:	3704      	adds	r7, #4
 800696c:	443d      	add	r5, r7
 800696e:	3d04      	subs	r5, #4
 8006970:	b922      	cbnz	r2, 800697c <__mdiff+0xd4>
 8006972:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006976:	3e01      	subs	r6, #1
 8006978:	2b00      	cmp	r3, #0
 800697a:	d0fa      	beq.n	8006972 <__mdiff+0xca>
 800697c:	6106      	str	r6, [r0, #16]
 800697e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006982:	2100      	movs	r1, #0
 8006984:	f7ff fd5e 	bl	8006444 <_Balloc>
 8006988:	2201      	movs	r2, #1
 800698a:	2300      	movs	r3, #0
 800698c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006990:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006994 <__d2b>:
 8006994:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006998:	460f      	mov	r7, r1
 800699a:	b083      	sub	sp, #12
 800699c:	2101      	movs	r1, #1
 800699e:	ec55 4b10 	vmov	r4, r5, d0
 80069a2:	4616      	mov	r6, r2
 80069a4:	f7ff fd4e 	bl	8006444 <_Balloc>
 80069a8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80069ac:	4681      	mov	r9, r0
 80069ae:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80069b2:	f1b8 0f00 	cmp.w	r8, #0
 80069b6:	d001      	beq.n	80069bc <__d2b+0x28>
 80069b8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80069bc:	2c00      	cmp	r4, #0
 80069be:	9301      	str	r3, [sp, #4]
 80069c0:	d024      	beq.n	8006a0c <__d2b+0x78>
 80069c2:	a802      	add	r0, sp, #8
 80069c4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80069c8:	f7ff fdcc 	bl	8006564 <__lo0bits>
 80069cc:	2800      	cmp	r0, #0
 80069ce:	d136      	bne.n	8006a3e <__d2b+0xaa>
 80069d0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80069d4:	f8c9 2014 	str.w	r2, [r9, #20]
 80069d8:	2b00      	cmp	r3, #0
 80069da:	bf0c      	ite	eq
 80069dc:	2101      	moveq	r1, #1
 80069de:	2102      	movne	r1, #2
 80069e0:	f8c9 3018 	str.w	r3, [r9, #24]
 80069e4:	f8c9 1010 	str.w	r1, [r9, #16]
 80069e8:	f1b8 0f00 	cmp.w	r8, #0
 80069ec:	d11b      	bne.n	8006a26 <__d2b+0x92>
 80069ee:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80069f2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80069f6:	6038      	str	r0, [r7, #0]
 80069f8:	6918      	ldr	r0, [r3, #16]
 80069fa:	f7ff fd93 	bl	8006524 <__hi0bits>
 80069fe:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006a02:	6030      	str	r0, [r6, #0]
 8006a04:	4648      	mov	r0, r9
 8006a06:	b003      	add	sp, #12
 8006a08:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006a0c:	a801      	add	r0, sp, #4
 8006a0e:	f7ff fda9 	bl	8006564 <__lo0bits>
 8006a12:	9b01      	ldr	r3, [sp, #4]
 8006a14:	f8c9 3014 	str.w	r3, [r9, #20]
 8006a18:	2101      	movs	r1, #1
 8006a1a:	3020      	adds	r0, #32
 8006a1c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006a20:	f1b8 0f00 	cmp.w	r8, #0
 8006a24:	d0e3      	beq.n	80069ee <__d2b+0x5a>
 8006a26:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006a2a:	eb08 0300 	add.w	r3, r8, r0
 8006a2e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006a32:	603b      	str	r3, [r7, #0]
 8006a34:	6030      	str	r0, [r6, #0]
 8006a36:	4648      	mov	r0, r9
 8006a38:	b003      	add	sp, #12
 8006a3a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006a3e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006a42:	f1c0 0220 	rsb	r2, r0, #32
 8006a46:	fa03 f202 	lsl.w	r2, r3, r2
 8006a4a:	430a      	orrs	r2, r1
 8006a4c:	40c3      	lsrs	r3, r0
 8006a4e:	9301      	str	r3, [sp, #4]
 8006a50:	f8c9 2014 	str.w	r2, [r9, #20]
 8006a54:	e7c0      	b.n	80069d8 <__d2b+0x44>
 8006a56:	bf00      	nop

08006a58 <_realloc_r>:
 8006a58:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a5c:	4692      	mov	sl, r2
 8006a5e:	b083      	sub	sp, #12
 8006a60:	2900      	cmp	r1, #0
 8006a62:	f000 80a1 	beq.w	8006ba8 <_realloc_r+0x150>
 8006a66:	460d      	mov	r5, r1
 8006a68:	4680      	mov	r8, r0
 8006a6a:	f10a 040b 	add.w	r4, sl, #11
 8006a6e:	f7ff fcdd 	bl	800642c <__malloc_lock>
 8006a72:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006a76:	2c16      	cmp	r4, #22
 8006a78:	f022 0603 	bic.w	r6, r2, #3
 8006a7c:	f1a5 0708 	sub.w	r7, r5, #8
 8006a80:	d83e      	bhi.n	8006b00 <_realloc_r+0xa8>
 8006a82:	2410      	movs	r4, #16
 8006a84:	4621      	mov	r1, r4
 8006a86:	45a2      	cmp	sl, r4
 8006a88:	d83f      	bhi.n	8006b0a <_realloc_r+0xb2>
 8006a8a:	428e      	cmp	r6, r1
 8006a8c:	eb07 0906 	add.w	r9, r7, r6
 8006a90:	da74      	bge.n	8006b7c <_realloc_r+0x124>
 8006a92:	4bc7      	ldr	r3, [pc, #796]	; (8006db0 <_realloc_r+0x358>)
 8006a94:	6898      	ldr	r0, [r3, #8]
 8006a96:	4548      	cmp	r0, r9
 8006a98:	f000 80aa 	beq.w	8006bf0 <_realloc_r+0x198>
 8006a9c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006aa0:	f020 0301 	bic.w	r3, r0, #1
 8006aa4:	444b      	add	r3, r9
 8006aa6:	685b      	ldr	r3, [r3, #4]
 8006aa8:	07db      	lsls	r3, r3, #31
 8006aaa:	f140 8083 	bpl.w	8006bb4 <_realloc_r+0x15c>
 8006aae:	07d2      	lsls	r2, r2, #31
 8006ab0:	d534      	bpl.n	8006b1c <_realloc_r+0xc4>
 8006ab2:	4651      	mov	r1, sl
 8006ab4:	4640      	mov	r0, r8
 8006ab6:	f7ff f9b1 	bl	8005e1c <_malloc_r>
 8006aba:	4682      	mov	sl, r0
 8006abc:	b1e0      	cbz	r0, 8006af8 <_realloc_r+0xa0>
 8006abe:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006ac2:	f023 0301 	bic.w	r3, r3, #1
 8006ac6:	443b      	add	r3, r7
 8006ac8:	f1a0 0208 	sub.w	r2, r0, #8
 8006acc:	4293      	cmp	r3, r2
 8006ace:	f000 80f9 	beq.w	8006cc4 <_realloc_r+0x26c>
 8006ad2:	1f32      	subs	r2, r6, #4
 8006ad4:	2a24      	cmp	r2, #36	; 0x24
 8006ad6:	f200 8107 	bhi.w	8006ce8 <_realloc_r+0x290>
 8006ada:	2a13      	cmp	r2, #19
 8006adc:	6829      	ldr	r1, [r5, #0]
 8006ade:	f200 80e6 	bhi.w	8006cae <_realloc_r+0x256>
 8006ae2:	4603      	mov	r3, r0
 8006ae4:	462a      	mov	r2, r5
 8006ae6:	6019      	str	r1, [r3, #0]
 8006ae8:	6851      	ldr	r1, [r2, #4]
 8006aea:	6059      	str	r1, [r3, #4]
 8006aec:	6892      	ldr	r2, [r2, #8]
 8006aee:	609a      	str	r2, [r3, #8]
 8006af0:	4629      	mov	r1, r5
 8006af2:	4640      	mov	r0, r8
 8006af4:	f7fe fe68 	bl	80057c8 <_free_r>
 8006af8:	4640      	mov	r0, r8
 8006afa:	f7ff fc9d 	bl	8006438 <__malloc_unlock>
 8006afe:	e04f      	b.n	8006ba0 <_realloc_r+0x148>
 8006b00:	f024 0407 	bic.w	r4, r4, #7
 8006b04:	2c00      	cmp	r4, #0
 8006b06:	4621      	mov	r1, r4
 8006b08:	dabd      	bge.n	8006a86 <_realloc_r+0x2e>
 8006b0a:	f04f 0a00 	mov.w	sl, #0
 8006b0e:	230c      	movs	r3, #12
 8006b10:	4650      	mov	r0, sl
 8006b12:	f8c8 3000 	str.w	r3, [r8]
 8006b16:	b003      	add	sp, #12
 8006b18:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b1c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006b20:	eba7 0b03 	sub.w	fp, r7, r3
 8006b24:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006b28:	f022 0203 	bic.w	r2, r2, #3
 8006b2c:	18b3      	adds	r3, r6, r2
 8006b2e:	428b      	cmp	r3, r1
 8006b30:	dbbf      	blt.n	8006ab2 <_realloc_r+0x5a>
 8006b32:	46da      	mov	sl, fp
 8006b34:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006b38:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006b3c:	1f32      	subs	r2, r6, #4
 8006b3e:	2a24      	cmp	r2, #36	; 0x24
 8006b40:	60c1      	str	r1, [r0, #12]
 8006b42:	eb0b 0903 	add.w	r9, fp, r3
 8006b46:	6088      	str	r0, [r1, #8]
 8006b48:	f200 80c6 	bhi.w	8006cd8 <_realloc_r+0x280>
 8006b4c:	2a13      	cmp	r2, #19
 8006b4e:	6829      	ldr	r1, [r5, #0]
 8006b50:	f240 80c0 	bls.w	8006cd4 <_realloc_r+0x27c>
 8006b54:	f8cb 1008 	str.w	r1, [fp, #8]
 8006b58:	6869      	ldr	r1, [r5, #4]
 8006b5a:	f8cb 100c 	str.w	r1, [fp, #12]
 8006b5e:	2a1b      	cmp	r2, #27
 8006b60:	68a9      	ldr	r1, [r5, #8]
 8006b62:	f200 80d8 	bhi.w	8006d16 <_realloc_r+0x2be>
 8006b66:	f10b 0210 	add.w	r2, fp, #16
 8006b6a:	3508      	adds	r5, #8
 8006b6c:	6011      	str	r1, [r2, #0]
 8006b6e:	6869      	ldr	r1, [r5, #4]
 8006b70:	6051      	str	r1, [r2, #4]
 8006b72:	68a9      	ldr	r1, [r5, #8]
 8006b74:	6091      	str	r1, [r2, #8]
 8006b76:	461e      	mov	r6, r3
 8006b78:	465f      	mov	r7, fp
 8006b7a:	4655      	mov	r5, sl
 8006b7c:	687b      	ldr	r3, [r7, #4]
 8006b7e:	1b32      	subs	r2, r6, r4
 8006b80:	2a0f      	cmp	r2, #15
 8006b82:	f003 0301 	and.w	r3, r3, #1
 8006b86:	d822      	bhi.n	8006bce <_realloc_r+0x176>
 8006b88:	4333      	orrs	r3, r6
 8006b8a:	607b      	str	r3, [r7, #4]
 8006b8c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006b90:	f043 0301 	orr.w	r3, r3, #1
 8006b94:	f8c9 3004 	str.w	r3, [r9, #4]
 8006b98:	4640      	mov	r0, r8
 8006b9a:	f7ff fc4d 	bl	8006438 <__malloc_unlock>
 8006b9e:	46aa      	mov	sl, r5
 8006ba0:	4650      	mov	r0, sl
 8006ba2:	b003      	add	sp, #12
 8006ba4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ba8:	4611      	mov	r1, r2
 8006baa:	b003      	add	sp, #12
 8006bac:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006bb0:	f7ff b934 	b.w	8005e1c <_malloc_r>
 8006bb4:	f020 0003 	bic.w	r0, r0, #3
 8006bb8:	1833      	adds	r3, r6, r0
 8006bba:	428b      	cmp	r3, r1
 8006bbc:	db61      	blt.n	8006c82 <_realloc_r+0x22a>
 8006bbe:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006bc2:	461e      	mov	r6, r3
 8006bc4:	60ca      	str	r2, [r1, #12]
 8006bc6:	eb07 0903 	add.w	r9, r7, r3
 8006bca:	6091      	str	r1, [r2, #8]
 8006bcc:	e7d6      	b.n	8006b7c <_realloc_r+0x124>
 8006bce:	1939      	adds	r1, r7, r4
 8006bd0:	4323      	orrs	r3, r4
 8006bd2:	f042 0201 	orr.w	r2, r2, #1
 8006bd6:	607b      	str	r3, [r7, #4]
 8006bd8:	604a      	str	r2, [r1, #4]
 8006bda:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006bde:	f043 0301 	orr.w	r3, r3, #1
 8006be2:	3108      	adds	r1, #8
 8006be4:	f8c9 3004 	str.w	r3, [r9, #4]
 8006be8:	4640      	mov	r0, r8
 8006bea:	f7fe fded 	bl	80057c8 <_free_r>
 8006bee:	e7d3      	b.n	8006b98 <_realloc_r+0x140>
 8006bf0:	6840      	ldr	r0, [r0, #4]
 8006bf2:	f020 0903 	bic.w	r9, r0, #3
 8006bf6:	44b1      	add	r9, r6
 8006bf8:	f104 0010 	add.w	r0, r4, #16
 8006bfc:	4581      	cmp	r9, r0
 8006bfe:	da77      	bge.n	8006cf0 <_realloc_r+0x298>
 8006c00:	07d2      	lsls	r2, r2, #31
 8006c02:	f53f af56 	bmi.w	8006ab2 <_realloc_r+0x5a>
 8006c06:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006c0a:	eba7 0b02 	sub.w	fp, r7, r2
 8006c0e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006c12:	f022 0203 	bic.w	r2, r2, #3
 8006c16:	4491      	add	r9, r2
 8006c18:	4548      	cmp	r0, r9
 8006c1a:	dc87      	bgt.n	8006b2c <_realloc_r+0xd4>
 8006c1c:	46da      	mov	sl, fp
 8006c1e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006c22:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006c26:	1f32      	subs	r2, r6, #4
 8006c28:	2a24      	cmp	r2, #36	; 0x24
 8006c2a:	60c1      	str	r1, [r0, #12]
 8006c2c:	6088      	str	r0, [r1, #8]
 8006c2e:	f200 80a1 	bhi.w	8006d74 <_realloc_r+0x31c>
 8006c32:	2a13      	cmp	r2, #19
 8006c34:	6829      	ldr	r1, [r5, #0]
 8006c36:	f240 809b 	bls.w	8006d70 <_realloc_r+0x318>
 8006c3a:	f8cb 1008 	str.w	r1, [fp, #8]
 8006c3e:	6869      	ldr	r1, [r5, #4]
 8006c40:	f8cb 100c 	str.w	r1, [fp, #12]
 8006c44:	2a1b      	cmp	r2, #27
 8006c46:	68a9      	ldr	r1, [r5, #8]
 8006c48:	f200 809b 	bhi.w	8006d82 <_realloc_r+0x32a>
 8006c4c:	f10b 0210 	add.w	r2, fp, #16
 8006c50:	3508      	adds	r5, #8
 8006c52:	6011      	str	r1, [r2, #0]
 8006c54:	6869      	ldr	r1, [r5, #4]
 8006c56:	6051      	str	r1, [r2, #4]
 8006c58:	68a9      	ldr	r1, [r5, #8]
 8006c5a:	6091      	str	r1, [r2, #8]
 8006c5c:	eb0b 0104 	add.w	r1, fp, r4
 8006c60:	eba9 0204 	sub.w	r2, r9, r4
 8006c64:	f042 0201 	orr.w	r2, r2, #1
 8006c68:	6099      	str	r1, [r3, #8]
 8006c6a:	604a      	str	r2, [r1, #4]
 8006c6c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006c70:	f003 0301 	and.w	r3, r3, #1
 8006c74:	431c      	orrs	r4, r3
 8006c76:	4640      	mov	r0, r8
 8006c78:	f8cb 4004 	str.w	r4, [fp, #4]
 8006c7c:	f7ff fbdc 	bl	8006438 <__malloc_unlock>
 8006c80:	e78e      	b.n	8006ba0 <_realloc_r+0x148>
 8006c82:	07d3      	lsls	r3, r2, #31
 8006c84:	f53f af15 	bmi.w	8006ab2 <_realloc_r+0x5a>
 8006c88:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006c8c:	eba7 0b03 	sub.w	fp, r7, r3
 8006c90:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006c94:	f022 0203 	bic.w	r2, r2, #3
 8006c98:	4410      	add	r0, r2
 8006c9a:	1983      	adds	r3, r0, r6
 8006c9c:	428b      	cmp	r3, r1
 8006c9e:	f6ff af45 	blt.w	8006b2c <_realloc_r+0xd4>
 8006ca2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006ca6:	46da      	mov	sl, fp
 8006ca8:	60ca      	str	r2, [r1, #12]
 8006caa:	6091      	str	r1, [r2, #8]
 8006cac:	e742      	b.n	8006b34 <_realloc_r+0xdc>
 8006cae:	6001      	str	r1, [r0, #0]
 8006cb0:	686b      	ldr	r3, [r5, #4]
 8006cb2:	6043      	str	r3, [r0, #4]
 8006cb4:	2a1b      	cmp	r2, #27
 8006cb6:	d83a      	bhi.n	8006d2e <_realloc_r+0x2d6>
 8006cb8:	f105 0208 	add.w	r2, r5, #8
 8006cbc:	f100 0308 	add.w	r3, r0, #8
 8006cc0:	68a9      	ldr	r1, [r5, #8]
 8006cc2:	e710      	b.n	8006ae6 <_realloc_r+0x8e>
 8006cc4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006cc8:	f023 0303 	bic.w	r3, r3, #3
 8006ccc:	441e      	add	r6, r3
 8006cce:	eb07 0906 	add.w	r9, r7, r6
 8006cd2:	e753      	b.n	8006b7c <_realloc_r+0x124>
 8006cd4:	4652      	mov	r2, sl
 8006cd6:	e749      	b.n	8006b6c <_realloc_r+0x114>
 8006cd8:	4629      	mov	r1, r5
 8006cda:	4650      	mov	r0, sl
 8006cdc:	461e      	mov	r6, r3
 8006cde:	465f      	mov	r7, fp
 8006ce0:	f7ff fb40 	bl	8006364 <memmove>
 8006ce4:	4655      	mov	r5, sl
 8006ce6:	e749      	b.n	8006b7c <_realloc_r+0x124>
 8006ce8:	4629      	mov	r1, r5
 8006cea:	f7ff fb3b 	bl	8006364 <memmove>
 8006cee:	e6ff      	b.n	8006af0 <_realloc_r+0x98>
 8006cf0:	4427      	add	r7, r4
 8006cf2:	eba9 0904 	sub.w	r9, r9, r4
 8006cf6:	f049 0201 	orr.w	r2, r9, #1
 8006cfa:	609f      	str	r7, [r3, #8]
 8006cfc:	607a      	str	r2, [r7, #4]
 8006cfe:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006d02:	f003 0301 	and.w	r3, r3, #1
 8006d06:	431c      	orrs	r4, r3
 8006d08:	4640      	mov	r0, r8
 8006d0a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006d0e:	f7ff fb93 	bl	8006438 <__malloc_unlock>
 8006d12:	46aa      	mov	sl, r5
 8006d14:	e744      	b.n	8006ba0 <_realloc_r+0x148>
 8006d16:	f8cb 1010 	str.w	r1, [fp, #16]
 8006d1a:	68e9      	ldr	r1, [r5, #12]
 8006d1c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006d20:	2a24      	cmp	r2, #36	; 0x24
 8006d22:	d010      	beq.n	8006d46 <_realloc_r+0x2ee>
 8006d24:	6929      	ldr	r1, [r5, #16]
 8006d26:	f10b 0218 	add.w	r2, fp, #24
 8006d2a:	3510      	adds	r5, #16
 8006d2c:	e71e      	b.n	8006b6c <_realloc_r+0x114>
 8006d2e:	68ab      	ldr	r3, [r5, #8]
 8006d30:	6083      	str	r3, [r0, #8]
 8006d32:	68eb      	ldr	r3, [r5, #12]
 8006d34:	60c3      	str	r3, [r0, #12]
 8006d36:	2a24      	cmp	r2, #36	; 0x24
 8006d38:	d010      	beq.n	8006d5c <_realloc_r+0x304>
 8006d3a:	f105 0210 	add.w	r2, r5, #16
 8006d3e:	f100 0310 	add.w	r3, r0, #16
 8006d42:	6929      	ldr	r1, [r5, #16]
 8006d44:	e6cf      	b.n	8006ae6 <_realloc_r+0x8e>
 8006d46:	692a      	ldr	r2, [r5, #16]
 8006d48:	f8cb 2018 	str.w	r2, [fp, #24]
 8006d4c:	696a      	ldr	r2, [r5, #20]
 8006d4e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006d52:	69a9      	ldr	r1, [r5, #24]
 8006d54:	f10b 0220 	add.w	r2, fp, #32
 8006d58:	3518      	adds	r5, #24
 8006d5a:	e707      	b.n	8006b6c <_realloc_r+0x114>
 8006d5c:	692b      	ldr	r3, [r5, #16]
 8006d5e:	6103      	str	r3, [r0, #16]
 8006d60:	696b      	ldr	r3, [r5, #20]
 8006d62:	6143      	str	r3, [r0, #20]
 8006d64:	69a9      	ldr	r1, [r5, #24]
 8006d66:	f105 0218 	add.w	r2, r5, #24
 8006d6a:	f100 0318 	add.w	r3, r0, #24
 8006d6e:	e6ba      	b.n	8006ae6 <_realloc_r+0x8e>
 8006d70:	4652      	mov	r2, sl
 8006d72:	e76e      	b.n	8006c52 <_realloc_r+0x1fa>
 8006d74:	4629      	mov	r1, r5
 8006d76:	4650      	mov	r0, sl
 8006d78:	9301      	str	r3, [sp, #4]
 8006d7a:	f7ff faf3 	bl	8006364 <memmove>
 8006d7e:	9b01      	ldr	r3, [sp, #4]
 8006d80:	e76c      	b.n	8006c5c <_realloc_r+0x204>
 8006d82:	f8cb 1010 	str.w	r1, [fp, #16]
 8006d86:	68e9      	ldr	r1, [r5, #12]
 8006d88:	f8cb 1014 	str.w	r1, [fp, #20]
 8006d8c:	2a24      	cmp	r2, #36	; 0x24
 8006d8e:	d004      	beq.n	8006d9a <_realloc_r+0x342>
 8006d90:	6929      	ldr	r1, [r5, #16]
 8006d92:	f10b 0218 	add.w	r2, fp, #24
 8006d96:	3510      	adds	r5, #16
 8006d98:	e75b      	b.n	8006c52 <_realloc_r+0x1fa>
 8006d9a:	692a      	ldr	r2, [r5, #16]
 8006d9c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006da0:	696a      	ldr	r2, [r5, #20]
 8006da2:	f8cb 201c 	str.w	r2, [fp, #28]
 8006da6:	69a9      	ldr	r1, [r5, #24]
 8006da8:	f10b 0220 	add.w	r2, fp, #32
 8006dac:	3518      	adds	r5, #24
 8006dae:	e750      	b.n	8006c52 <_realloc_r+0x1fa>
 8006db0:	2000044c 	.word	0x2000044c

08006db4 <frexp>:
 8006db4:	ec53 2b10 	vmov	r2, r3, d0
 8006db8:	b570      	push	{r4, r5, r6, lr}
 8006dba:	4e16      	ldr	r6, [pc, #88]	; (8006e14 <frexp+0x60>)
 8006dbc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006dc0:	2500      	movs	r5, #0
 8006dc2:	42b1      	cmp	r1, r6
 8006dc4:	4604      	mov	r4, r0
 8006dc6:	6005      	str	r5, [r0, #0]
 8006dc8:	dc21      	bgt.n	8006e0e <frexp+0x5a>
 8006dca:	ee10 6a10 	vmov	r6, s0
 8006dce:	430e      	orrs	r6, r1
 8006dd0:	d01d      	beq.n	8006e0e <frexp+0x5a>
 8006dd2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006dd6:	4618      	mov	r0, r3
 8006dd8:	da0c      	bge.n	8006df4 <frexp+0x40>
 8006dda:	4619      	mov	r1, r3
 8006ddc:	2200      	movs	r2, #0
 8006dde:	ee10 0a10 	vmov	r0, s0
 8006de2:	4b0d      	ldr	r3, [pc, #52]	; (8006e18 <frexp+0x64>)
 8006de4:	f7f9 fea8 	bl	8000b38 <__aeabi_dmul>
 8006de8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006dec:	4602      	mov	r2, r0
 8006dee:	4608      	mov	r0, r1
 8006df0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006df4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006df8:	1509      	asrs	r1, r1, #20
 8006dfa:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006dfe:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006e02:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006e06:	4429      	add	r1, r5
 8006e08:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006e0c:	6021      	str	r1, [r4, #0]
 8006e0e:	ec43 2b10 	vmov	d0, r2, r3
 8006e12:	bd70      	pop	{r4, r5, r6, pc}
 8006e14:	7fefffff 	.word	0x7fefffff
 8006e18:	43500000 	.word	0x43500000

08006e1c <_sbrk_r>:
 8006e1c:	b538      	push	{r3, r4, r5, lr}
 8006e1e:	4c07      	ldr	r4, [pc, #28]	; (8006e3c <_sbrk_r+0x20>)
 8006e20:	2300      	movs	r3, #0
 8006e22:	4605      	mov	r5, r0
 8006e24:	4608      	mov	r0, r1
 8006e26:	6023      	str	r3, [r4, #0]
 8006e28:	f7fb fc33 	bl	8002692 <_sbrk>
 8006e2c:	1c43      	adds	r3, r0, #1
 8006e2e:	d000      	beq.n	8006e32 <_sbrk_r+0x16>
 8006e30:	bd38      	pop	{r3, r4, r5, pc}
 8006e32:	6823      	ldr	r3, [r4, #0]
 8006e34:	2b00      	cmp	r3, #0
 8006e36:	d0fb      	beq.n	8006e30 <_sbrk_r+0x14>
 8006e38:	602b      	str	r3, [r5, #0]
 8006e3a:	bd38      	pop	{r3, r4, r5, pc}
 8006e3c:	20000b24 	.word	0x20000b24

08006e40 <__sread>:
 8006e40:	b510      	push	{r4, lr}
 8006e42:	460c      	mov	r4, r1
 8006e44:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006e48:	f000 fabc 	bl	80073c4 <_read_r>
 8006e4c:	2800      	cmp	r0, #0
 8006e4e:	db03      	blt.n	8006e58 <__sread+0x18>
 8006e50:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006e52:	4403      	add	r3, r0
 8006e54:	6523      	str	r3, [r4, #80]	; 0x50
 8006e56:	bd10      	pop	{r4, pc}
 8006e58:	89a3      	ldrh	r3, [r4, #12]
 8006e5a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006e5e:	81a3      	strh	r3, [r4, #12]
 8006e60:	bd10      	pop	{r4, pc}
 8006e62:	bf00      	nop

08006e64 <__swrite>:
 8006e64:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006e68:	4616      	mov	r6, r2
 8006e6a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006e6e:	461f      	mov	r7, r3
 8006e70:	05d3      	lsls	r3, r2, #23
 8006e72:	460c      	mov	r4, r1
 8006e74:	4605      	mov	r5, r0
 8006e76:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006e7a:	d507      	bpl.n	8006e8c <__swrite+0x28>
 8006e7c:	2200      	movs	r2, #0
 8006e7e:	2302      	movs	r3, #2
 8006e80:	f000 fa74 	bl	800736c <_lseek_r>
 8006e84:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e88:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006e8c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006e90:	81a2      	strh	r2, [r4, #12]
 8006e92:	463b      	mov	r3, r7
 8006e94:	4632      	mov	r2, r6
 8006e96:	4628      	mov	r0, r5
 8006e98:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006e9c:	f000 b88c 	b.w	8006fb8 <_write_r>

08006ea0 <__sseek>:
 8006ea0:	b510      	push	{r4, lr}
 8006ea2:	460c      	mov	r4, r1
 8006ea4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ea8:	f000 fa60 	bl	800736c <_lseek_r>
 8006eac:	89a3      	ldrh	r3, [r4, #12]
 8006eae:	1c42      	adds	r2, r0, #1
 8006eb0:	bf0e      	itee	eq
 8006eb2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006eb6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006eba:	6520      	strne	r0, [r4, #80]	; 0x50
 8006ebc:	81a3      	strh	r3, [r4, #12]
 8006ebe:	bd10      	pop	{r4, pc}

08006ec0 <__sclose>:
 8006ec0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ec4:	f000 b922 	b.w	800710c <_close_r>

08006ec8 <strncpy>:
 8006ec8:	ea40 0301 	orr.w	r3, r0, r1
 8006ecc:	079b      	lsls	r3, r3, #30
 8006ece:	b470      	push	{r4, r5, r6}
 8006ed0:	d12a      	bne.n	8006f28 <strncpy+0x60>
 8006ed2:	2a03      	cmp	r2, #3
 8006ed4:	d928      	bls.n	8006f28 <strncpy+0x60>
 8006ed6:	460c      	mov	r4, r1
 8006ed8:	4603      	mov	r3, r0
 8006eda:	4621      	mov	r1, r4
 8006edc:	f854 6b04 	ldr.w	r6, [r4], #4
 8006ee0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006ee4:	ea25 0506 	bic.w	r5, r5, r6
 8006ee8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006eec:	d106      	bne.n	8006efc <strncpy+0x34>
 8006eee:	3a04      	subs	r2, #4
 8006ef0:	2a03      	cmp	r2, #3
 8006ef2:	f843 6b04 	str.w	r6, [r3], #4
 8006ef6:	4621      	mov	r1, r4
 8006ef8:	d8ef      	bhi.n	8006eda <strncpy+0x12>
 8006efa:	b19a      	cbz	r2, 8006f24 <strncpy+0x5c>
 8006efc:	780c      	ldrb	r4, [r1, #0]
 8006efe:	701c      	strb	r4, [r3, #0]
 8006f00:	3a01      	subs	r2, #1
 8006f02:	3301      	adds	r3, #1
 8006f04:	b13c      	cbz	r4, 8006f16 <strncpy+0x4e>
 8006f06:	b16a      	cbz	r2, 8006f24 <strncpy+0x5c>
 8006f08:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006f0c:	f803 4b01 	strb.w	r4, [r3], #1
 8006f10:	3a01      	subs	r2, #1
 8006f12:	2c00      	cmp	r4, #0
 8006f14:	d1f7      	bne.n	8006f06 <strncpy+0x3e>
 8006f16:	b12a      	cbz	r2, 8006f24 <strncpy+0x5c>
 8006f18:	441a      	add	r2, r3
 8006f1a:	2100      	movs	r1, #0
 8006f1c:	f803 1b01 	strb.w	r1, [r3], #1
 8006f20:	4293      	cmp	r3, r2
 8006f22:	d1fb      	bne.n	8006f1c <strncpy+0x54>
 8006f24:	bc70      	pop	{r4, r5, r6}
 8006f26:	4770      	bx	lr
 8006f28:	4603      	mov	r3, r0
 8006f2a:	e7e6      	b.n	8006efa <strncpy+0x32>

08006f2c <__sprint_r.part.0>:
 8006f2c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006f30:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006f32:	049c      	lsls	r4, r3, #18
 8006f34:	4692      	mov	sl, r2
 8006f36:	d52d      	bpl.n	8006f94 <__sprint_r.part.0+0x68>
 8006f38:	6893      	ldr	r3, [r2, #8]
 8006f3a:	6812      	ldr	r2, [r2, #0]
 8006f3c:	b343      	cbz	r3, 8006f90 <__sprint_r.part.0+0x64>
 8006f3e:	460e      	mov	r6, r1
 8006f40:	4607      	mov	r7, r0
 8006f42:	f102 0908 	add.w	r9, r2, #8
 8006f46:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006f4a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006f4e:	d015      	beq.n	8006f7c <__sprint_r.part.0+0x50>
 8006f50:	3d04      	subs	r5, #4
 8006f52:	2400      	movs	r4, #0
 8006f54:	e001      	b.n	8006f5a <__sprint_r.part.0+0x2e>
 8006f56:	45a0      	cmp	r8, r4
 8006f58:	d00e      	beq.n	8006f78 <__sprint_r.part.0+0x4c>
 8006f5a:	4632      	mov	r2, r6
 8006f5c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006f60:	4638      	mov	r0, r7
 8006f62:	f000 f99d 	bl	80072a0 <_fputwc_r>
 8006f66:	1c43      	adds	r3, r0, #1
 8006f68:	f104 0401 	add.w	r4, r4, #1
 8006f6c:	d1f3      	bne.n	8006f56 <__sprint_r.part.0+0x2a>
 8006f6e:	2300      	movs	r3, #0
 8006f70:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006f74:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006f78:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006f7c:	f02b 0b03 	bic.w	fp, fp, #3
 8006f80:	eba3 030b 	sub.w	r3, r3, fp
 8006f84:	f8ca 3008 	str.w	r3, [sl, #8]
 8006f88:	f109 0908 	add.w	r9, r9, #8
 8006f8c:	2b00      	cmp	r3, #0
 8006f8e:	d1da      	bne.n	8006f46 <__sprint_r.part.0+0x1a>
 8006f90:	2000      	movs	r0, #0
 8006f92:	e7ec      	b.n	8006f6e <__sprint_r.part.0+0x42>
 8006f94:	f7fe fd0c 	bl	80059b0 <__sfvwrite_r>
 8006f98:	2300      	movs	r3, #0
 8006f9a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006f9e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006fa2:	bf00      	nop

08006fa4 <__sprint_r>:
 8006fa4:	6893      	ldr	r3, [r2, #8]
 8006fa6:	b10b      	cbz	r3, 8006fac <__sprint_r+0x8>
 8006fa8:	f7ff bfc0 	b.w	8006f2c <__sprint_r.part.0>
 8006fac:	b410      	push	{r4}
 8006fae:	4618      	mov	r0, r3
 8006fb0:	6053      	str	r3, [r2, #4]
 8006fb2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006fb6:	4770      	bx	lr

08006fb8 <_write_r>:
 8006fb8:	b570      	push	{r4, r5, r6, lr}
 8006fba:	460d      	mov	r5, r1
 8006fbc:	4c08      	ldr	r4, [pc, #32]	; (8006fe0 <_write_r+0x28>)
 8006fbe:	4611      	mov	r1, r2
 8006fc0:	4606      	mov	r6, r0
 8006fc2:	461a      	mov	r2, r3
 8006fc4:	4628      	mov	r0, r5
 8006fc6:	2300      	movs	r3, #0
 8006fc8:	6023      	str	r3, [r4, #0]
 8006fca:	f7fb fb4f 	bl	800266c <_write>
 8006fce:	1c43      	adds	r3, r0, #1
 8006fd0:	d000      	beq.n	8006fd4 <_write_r+0x1c>
 8006fd2:	bd70      	pop	{r4, r5, r6, pc}
 8006fd4:	6823      	ldr	r3, [r4, #0]
 8006fd6:	2b00      	cmp	r3, #0
 8006fd8:	d0fb      	beq.n	8006fd2 <_write_r+0x1a>
 8006fda:	6033      	str	r3, [r6, #0]
 8006fdc:	bd70      	pop	{r4, r5, r6, pc}
 8006fde:	bf00      	nop
 8006fe0:	20000b24 	.word	0x20000b24

08006fe4 <__register_exitproc>:
 8006fe4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006fe8:	4d2b      	ldr	r5, [pc, #172]	; (8007098 <__register_exitproc+0xb4>)
 8006fea:	4606      	mov	r6, r0
 8006fec:	6828      	ldr	r0, [r5, #0]
 8006fee:	4698      	mov	r8, r3
 8006ff0:	460f      	mov	r7, r1
 8006ff2:	4691      	mov	r9, r2
 8006ff4:	f7fe fe96 	bl	8005d24 <__retarget_lock_acquire_recursive>
 8006ff8:	4b28      	ldr	r3, [pc, #160]	; (800709c <__register_exitproc+0xb8>)
 8006ffa:	681c      	ldr	r4, [r3, #0]
 8006ffc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007000:	2b00      	cmp	r3, #0
 8007002:	d03d      	beq.n	8007080 <__register_exitproc+0x9c>
 8007004:	685a      	ldr	r2, [r3, #4]
 8007006:	2a1f      	cmp	r2, #31
 8007008:	dc0d      	bgt.n	8007026 <__register_exitproc+0x42>
 800700a:	f102 0c01 	add.w	ip, r2, #1
 800700e:	bb16      	cbnz	r6, 8007056 <__register_exitproc+0x72>
 8007010:	3202      	adds	r2, #2
 8007012:	f8c3 c004 	str.w	ip, [r3, #4]
 8007016:	6828      	ldr	r0, [r5, #0]
 8007018:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800701c:	f7fe fe84 	bl	8005d28 <__retarget_lock_release_recursive>
 8007020:	2000      	movs	r0, #0
 8007022:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007026:	4b1e      	ldr	r3, [pc, #120]	; (80070a0 <__register_exitproc+0xbc>)
 8007028:	b37b      	cbz	r3, 800708a <__register_exitproc+0xa6>
 800702a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800702e:	f3af 8000 	nop.w
 8007032:	4603      	mov	r3, r0
 8007034:	b348      	cbz	r0, 800708a <__register_exitproc+0xa6>
 8007036:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800703a:	2100      	movs	r1, #0
 800703c:	e9c0 2100 	strd	r2, r1, [r0]
 8007040:	f04f 0c01 	mov.w	ip, #1
 8007044:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007048:	460a      	mov	r2, r1
 800704a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800704e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8007052:	2e00      	cmp	r6, #0
 8007054:	d0dc      	beq.n	8007010 <__register_exitproc+0x2c>
 8007056:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800705a:	2401      	movs	r4, #1
 800705c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007060:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8007064:	4094      	lsls	r4, r2
 8007066:	4320      	orrs	r0, r4
 8007068:	2e02      	cmp	r6, #2
 800706a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800706e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8007072:	d1cd      	bne.n	8007010 <__register_exitproc+0x2c>
 8007074:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007078:	430c      	orrs	r4, r1
 800707a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800707e:	e7c7      	b.n	8007010 <__register_exitproc+0x2c>
 8007080:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8007084:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8007088:	e7bc      	b.n	8007004 <__register_exitproc+0x20>
 800708a:	6828      	ldr	r0, [r5, #0]
 800708c:	f7fe fe4c 	bl	8005d28 <__retarget_lock_release_recursive>
 8007090:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007094:	e7c5      	b.n	8007022 <__register_exitproc+0x3e>
 8007096:	bf00      	nop
 8007098:	20000448 	.word	0x20000448
 800709c:	08007640 	.word	0x08007640
 80070a0:	00000000 	.word	0x00000000

080070a4 <_calloc_r>:
 80070a4:	b510      	push	{r4, lr}
 80070a6:	fb02 f101 	mul.w	r1, r2, r1
 80070aa:	f7fe feb7 	bl	8005e1c <_malloc_r>
 80070ae:	4604      	mov	r4, r0
 80070b0:	b1d8      	cbz	r0, 80070ea <_calloc_r+0x46>
 80070b2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80070b6:	f022 0203 	bic.w	r2, r2, #3
 80070ba:	3a04      	subs	r2, #4
 80070bc:	2a24      	cmp	r2, #36	; 0x24
 80070be:	d81d      	bhi.n	80070fc <_calloc_r+0x58>
 80070c0:	2a13      	cmp	r2, #19
 80070c2:	d914      	bls.n	80070ee <_calloc_r+0x4a>
 80070c4:	2300      	movs	r3, #0
 80070c6:	2a1b      	cmp	r2, #27
 80070c8:	e9c0 3300 	strd	r3, r3, [r0]
 80070cc:	d91b      	bls.n	8007106 <_calloc_r+0x62>
 80070ce:	2a24      	cmp	r2, #36	; 0x24
 80070d0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80070d4:	bf0a      	itet	eq
 80070d6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 80070da:	f100 0210 	addne.w	r2, r0, #16
 80070de:	f100 0218 	addeq.w	r2, r0, #24
 80070e2:	2300      	movs	r3, #0
 80070e4:	e9c2 3300 	strd	r3, r3, [r2]
 80070e8:	6093      	str	r3, [r2, #8]
 80070ea:	4620      	mov	r0, r4
 80070ec:	bd10      	pop	{r4, pc}
 80070ee:	4602      	mov	r2, r0
 80070f0:	2300      	movs	r3, #0
 80070f2:	e9c2 3300 	strd	r3, r3, [r2]
 80070f6:	6093      	str	r3, [r2, #8]
 80070f8:	4620      	mov	r0, r4
 80070fa:	bd10      	pop	{r4, pc}
 80070fc:	2100      	movs	r1, #0
 80070fe:	f7fb fb6d 	bl	80027dc <memset>
 8007102:	4620      	mov	r0, r4
 8007104:	bd10      	pop	{r4, pc}
 8007106:	f100 0208 	add.w	r2, r0, #8
 800710a:	e7f1      	b.n	80070f0 <_calloc_r+0x4c>

0800710c <_close_r>:
 800710c:	b538      	push	{r3, r4, r5, lr}
 800710e:	4c07      	ldr	r4, [pc, #28]	; (800712c <_close_r+0x20>)
 8007110:	2300      	movs	r3, #0
 8007112:	4605      	mov	r5, r0
 8007114:	4608      	mov	r0, r1
 8007116:	6023      	str	r3, [r4, #0]
 8007118:	f7fb fad7 	bl	80026ca <_close>
 800711c:	1c43      	adds	r3, r0, #1
 800711e:	d000      	beq.n	8007122 <_close_r+0x16>
 8007120:	bd38      	pop	{r3, r4, r5, pc}
 8007122:	6823      	ldr	r3, [r4, #0]
 8007124:	2b00      	cmp	r3, #0
 8007126:	d0fb      	beq.n	8007120 <_close_r+0x14>
 8007128:	602b      	str	r3, [r5, #0]
 800712a:	bd38      	pop	{r3, r4, r5, pc}
 800712c:	20000b24 	.word	0x20000b24

08007130 <_fclose_r>:
 8007130:	b570      	push	{r4, r5, r6, lr}
 8007132:	2900      	cmp	r1, #0
 8007134:	d048      	beq.n	80071c8 <_fclose_r+0x98>
 8007136:	4605      	mov	r5, r0
 8007138:	460c      	mov	r4, r1
 800713a:	b110      	cbz	r0, 8007142 <_fclose_r+0x12>
 800713c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800713e:	2b00      	cmp	r3, #0
 8007140:	d048      	beq.n	80071d4 <_fclose_r+0xa4>
 8007142:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007144:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007148:	07d0      	lsls	r0, r2, #31
 800714a:	d440      	bmi.n	80071ce <_fclose_r+0x9e>
 800714c:	0599      	lsls	r1, r3, #22
 800714e:	d530      	bpl.n	80071b2 <_fclose_r+0x82>
 8007150:	4621      	mov	r1, r4
 8007152:	4628      	mov	r0, r5
 8007154:	f7fe f990 	bl	8005478 <__sflush_r>
 8007158:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800715a:	4606      	mov	r6, r0
 800715c:	b133      	cbz	r3, 800716c <_fclose_r+0x3c>
 800715e:	69e1      	ldr	r1, [r4, #28]
 8007160:	4628      	mov	r0, r5
 8007162:	4798      	blx	r3
 8007164:	2800      	cmp	r0, #0
 8007166:	bfb8      	it	lt
 8007168:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800716c:	89a3      	ldrh	r3, [r4, #12]
 800716e:	061a      	lsls	r2, r3, #24
 8007170:	d43c      	bmi.n	80071ec <_fclose_r+0xbc>
 8007172:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007174:	b141      	cbz	r1, 8007188 <_fclose_r+0x58>
 8007176:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800717a:	4299      	cmp	r1, r3
 800717c:	d002      	beq.n	8007184 <_fclose_r+0x54>
 800717e:	4628      	mov	r0, r5
 8007180:	f7fe fb22 	bl	80057c8 <_free_r>
 8007184:	2300      	movs	r3, #0
 8007186:	6323      	str	r3, [r4, #48]	; 0x30
 8007188:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800718a:	b121      	cbz	r1, 8007196 <_fclose_r+0x66>
 800718c:	4628      	mov	r0, r5
 800718e:	f7fe fb1b 	bl	80057c8 <_free_r>
 8007192:	2300      	movs	r3, #0
 8007194:	6463      	str	r3, [r4, #68]	; 0x44
 8007196:	f7fe faa1 	bl	80056dc <__sfp_lock_acquire>
 800719a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800719c:	2200      	movs	r2, #0
 800719e:	07db      	lsls	r3, r3, #31
 80071a0:	81a2      	strh	r2, [r4, #12]
 80071a2:	d51f      	bpl.n	80071e4 <_fclose_r+0xb4>
 80071a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071a6:	f7fe fdbb 	bl	8005d20 <__retarget_lock_close_recursive>
 80071aa:	f7fe fa9d 	bl	80056e8 <__sfp_lock_release>
 80071ae:	4630      	mov	r0, r6
 80071b0:	bd70      	pop	{r4, r5, r6, pc}
 80071b2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071b4:	f7fe fdb6 	bl	8005d24 <__retarget_lock_acquire_recursive>
 80071b8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80071bc:	2b00      	cmp	r3, #0
 80071be:	d1c7      	bne.n	8007150 <_fclose_r+0x20>
 80071c0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80071c2:	f016 0601 	ands.w	r6, r6, #1
 80071c6:	d016      	beq.n	80071f6 <_fclose_r+0xc6>
 80071c8:	2600      	movs	r6, #0
 80071ca:	4630      	mov	r0, r6
 80071cc:	bd70      	pop	{r4, r5, r6, pc}
 80071ce:	2b00      	cmp	r3, #0
 80071d0:	d0fa      	beq.n	80071c8 <_fclose_r+0x98>
 80071d2:	e7bd      	b.n	8007150 <_fclose_r+0x20>
 80071d4:	f7fe fa56 	bl	8005684 <__sinit>
 80071d8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80071da:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80071de:	07d0      	lsls	r0, r2, #31
 80071e0:	d4f5      	bmi.n	80071ce <_fclose_r+0x9e>
 80071e2:	e7b3      	b.n	800714c <_fclose_r+0x1c>
 80071e4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071e6:	f7fe fd9f 	bl	8005d28 <__retarget_lock_release_recursive>
 80071ea:	e7db      	b.n	80071a4 <_fclose_r+0x74>
 80071ec:	6921      	ldr	r1, [r4, #16]
 80071ee:	4628      	mov	r0, r5
 80071f0:	f7fe faea 	bl	80057c8 <_free_r>
 80071f4:	e7bd      	b.n	8007172 <_fclose_r+0x42>
 80071f6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071f8:	f7fe fd96 	bl	8005d28 <__retarget_lock_release_recursive>
 80071fc:	4630      	mov	r0, r6
 80071fe:	bd70      	pop	{r4, r5, r6, pc}

08007200 <__fputwc>:
 8007200:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007204:	b082      	sub	sp, #8
 8007206:	4681      	mov	r9, r0
 8007208:	4688      	mov	r8, r1
 800720a:	4614      	mov	r4, r2
 800720c:	f000 f8a0 	bl	8007350 <__locale_mb_cur_max>
 8007210:	2801      	cmp	r0, #1
 8007212:	d103      	bne.n	800721c <__fputwc+0x1c>
 8007214:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007218:	2bfe      	cmp	r3, #254	; 0xfe
 800721a:	d933      	bls.n	8007284 <__fputwc+0x84>
 800721c:	4642      	mov	r2, r8
 800721e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007222:	a901      	add	r1, sp, #4
 8007224:	4648      	mov	r0, r9
 8007226:	f000 f93b 	bl	80074a0 <_wcrtomb_r>
 800722a:	1c42      	adds	r2, r0, #1
 800722c:	4606      	mov	r6, r0
 800722e:	d02f      	beq.n	8007290 <__fputwc+0x90>
 8007230:	b320      	cbz	r0, 800727c <__fputwc+0x7c>
 8007232:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007236:	2500      	movs	r5, #0
 8007238:	f10d 0a04 	add.w	sl, sp, #4
 800723c:	e009      	b.n	8007252 <__fputwc+0x52>
 800723e:	6823      	ldr	r3, [r4, #0]
 8007240:	1c5a      	adds	r2, r3, #1
 8007242:	6022      	str	r2, [r4, #0]
 8007244:	f883 c000 	strb.w	ip, [r3]
 8007248:	3501      	adds	r5, #1
 800724a:	42b5      	cmp	r5, r6
 800724c:	d216      	bcs.n	800727c <__fputwc+0x7c>
 800724e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007252:	68a3      	ldr	r3, [r4, #8]
 8007254:	3b01      	subs	r3, #1
 8007256:	2b00      	cmp	r3, #0
 8007258:	60a3      	str	r3, [r4, #8]
 800725a:	daf0      	bge.n	800723e <__fputwc+0x3e>
 800725c:	69a7      	ldr	r7, [r4, #24]
 800725e:	42bb      	cmp	r3, r7
 8007260:	4661      	mov	r1, ip
 8007262:	4622      	mov	r2, r4
 8007264:	4648      	mov	r0, r9
 8007266:	db02      	blt.n	800726e <__fputwc+0x6e>
 8007268:	f1bc 0f0a 	cmp.w	ip, #10
 800726c:	d1e7      	bne.n	800723e <__fputwc+0x3e>
 800726e:	f000 f8bf 	bl	80073f0 <__swbuf_r>
 8007272:	1c43      	adds	r3, r0, #1
 8007274:	d1e8      	bne.n	8007248 <__fputwc+0x48>
 8007276:	b002      	add	sp, #8
 8007278:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800727c:	4640      	mov	r0, r8
 800727e:	b002      	add	sp, #8
 8007280:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007284:	fa5f fc88 	uxtb.w	ip, r8
 8007288:	4606      	mov	r6, r0
 800728a:	f88d c004 	strb.w	ip, [sp, #4]
 800728e:	e7d2      	b.n	8007236 <__fputwc+0x36>
 8007290:	89a3      	ldrh	r3, [r4, #12]
 8007292:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007296:	81a3      	strh	r3, [r4, #12]
 8007298:	b002      	add	sp, #8
 800729a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800729e:	bf00      	nop

080072a0 <_fputwc_r>:
 80072a0:	b530      	push	{r4, r5, lr}
 80072a2:	4605      	mov	r5, r0
 80072a4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80072a6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80072aa:	07c0      	lsls	r0, r0, #31
 80072ac:	4614      	mov	r4, r2
 80072ae:	b083      	sub	sp, #12
 80072b0:	b29a      	uxth	r2, r3
 80072b2:	d401      	bmi.n	80072b8 <_fputwc_r+0x18>
 80072b4:	0590      	lsls	r0, r2, #22
 80072b6:	d51c      	bpl.n	80072f2 <_fputwc_r+0x52>
 80072b8:	0490      	lsls	r0, r2, #18
 80072ba:	d406      	bmi.n	80072ca <_fputwc_r+0x2a>
 80072bc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80072be:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80072c2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80072c6:	81a3      	strh	r3, [r4, #12]
 80072c8:	6662      	str	r2, [r4, #100]	; 0x64
 80072ca:	4628      	mov	r0, r5
 80072cc:	4622      	mov	r2, r4
 80072ce:	f7ff ff97 	bl	8007200 <__fputwc>
 80072d2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80072d4:	07da      	lsls	r2, r3, #31
 80072d6:	4605      	mov	r5, r0
 80072d8:	d402      	bmi.n	80072e0 <_fputwc_r+0x40>
 80072da:	89a3      	ldrh	r3, [r4, #12]
 80072dc:	059b      	lsls	r3, r3, #22
 80072de:	d502      	bpl.n	80072e6 <_fputwc_r+0x46>
 80072e0:	4628      	mov	r0, r5
 80072e2:	b003      	add	sp, #12
 80072e4:	bd30      	pop	{r4, r5, pc}
 80072e6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072e8:	f7fe fd1e 	bl	8005d28 <__retarget_lock_release_recursive>
 80072ec:	4628      	mov	r0, r5
 80072ee:	b003      	add	sp, #12
 80072f0:	bd30      	pop	{r4, r5, pc}
 80072f2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072f4:	9101      	str	r1, [sp, #4]
 80072f6:	f7fe fd15 	bl	8005d24 <__retarget_lock_acquire_recursive>
 80072fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80072fe:	9901      	ldr	r1, [sp, #4]
 8007300:	b29a      	uxth	r2, r3
 8007302:	e7d9      	b.n	80072b8 <_fputwc_r+0x18>

08007304 <_fstat_r>:
 8007304:	b538      	push	{r3, r4, r5, lr}
 8007306:	460b      	mov	r3, r1
 8007308:	4c07      	ldr	r4, [pc, #28]	; (8007328 <_fstat_r+0x24>)
 800730a:	4605      	mov	r5, r0
 800730c:	4611      	mov	r1, r2
 800730e:	4618      	mov	r0, r3
 8007310:	2300      	movs	r3, #0
 8007312:	6023      	str	r3, [r4, #0]
 8007314:	f7fb f9dc 	bl	80026d0 <_fstat>
 8007318:	1c43      	adds	r3, r0, #1
 800731a:	d000      	beq.n	800731e <_fstat_r+0x1a>
 800731c:	bd38      	pop	{r3, r4, r5, pc}
 800731e:	6823      	ldr	r3, [r4, #0]
 8007320:	2b00      	cmp	r3, #0
 8007322:	d0fb      	beq.n	800731c <_fstat_r+0x18>
 8007324:	602b      	str	r3, [r5, #0]
 8007326:	bd38      	pop	{r3, r4, r5, pc}
 8007328:	20000b24 	.word	0x20000b24

0800732c <_isatty_r>:
 800732c:	b538      	push	{r3, r4, r5, lr}
 800732e:	4c07      	ldr	r4, [pc, #28]	; (800734c <_isatty_r+0x20>)
 8007330:	2300      	movs	r3, #0
 8007332:	4605      	mov	r5, r0
 8007334:	4608      	mov	r0, r1
 8007336:	6023      	str	r3, [r4, #0]
 8007338:	f7fb f9cf 	bl	80026da <_isatty>
 800733c:	1c43      	adds	r3, r0, #1
 800733e:	d000      	beq.n	8007342 <_isatty_r+0x16>
 8007340:	bd38      	pop	{r3, r4, r5, pc}
 8007342:	6823      	ldr	r3, [r4, #0]
 8007344:	2b00      	cmp	r3, #0
 8007346:	d0fb      	beq.n	8007340 <_isatty_r+0x14>
 8007348:	602b      	str	r3, [r5, #0]
 800734a:	bd38      	pop	{r3, r4, r5, pc}
 800734c:	20000b24 	.word	0x20000b24

08007350 <__locale_mb_cur_max>:
 8007350:	4b04      	ldr	r3, [pc, #16]	; (8007364 <__locale_mb_cur_max+0x14>)
 8007352:	4a05      	ldr	r2, [pc, #20]	; (8007368 <__locale_mb_cur_max+0x18>)
 8007354:	681b      	ldr	r3, [r3, #0]
 8007356:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007358:	2b00      	cmp	r3, #0
 800735a:	bf08      	it	eq
 800735c:	4613      	moveq	r3, r2
 800735e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007362:	4770      	bx	lr
 8007364:	20000018 	.word	0x20000018
 8007368:	2000085c 	.word	0x2000085c

0800736c <_lseek_r>:
 800736c:	b570      	push	{r4, r5, r6, lr}
 800736e:	460d      	mov	r5, r1
 8007370:	4c08      	ldr	r4, [pc, #32]	; (8007394 <_lseek_r+0x28>)
 8007372:	4611      	mov	r1, r2
 8007374:	4606      	mov	r6, r0
 8007376:	461a      	mov	r2, r3
 8007378:	4628      	mov	r0, r5
 800737a:	2300      	movs	r3, #0
 800737c:	6023      	str	r3, [r4, #0]
 800737e:	f7fb f9ae 	bl	80026de <_lseek>
 8007382:	1c43      	adds	r3, r0, #1
 8007384:	d000      	beq.n	8007388 <_lseek_r+0x1c>
 8007386:	bd70      	pop	{r4, r5, r6, pc}
 8007388:	6823      	ldr	r3, [r4, #0]
 800738a:	2b00      	cmp	r3, #0
 800738c:	d0fb      	beq.n	8007386 <_lseek_r+0x1a>
 800738e:	6033      	str	r3, [r6, #0]
 8007390:	bd70      	pop	{r4, r5, r6, pc}
 8007392:	bf00      	nop
 8007394:	20000b24 	.word	0x20000b24

08007398 <__ascii_mbtowc>:
 8007398:	b082      	sub	sp, #8
 800739a:	b149      	cbz	r1, 80073b0 <__ascii_mbtowc+0x18>
 800739c:	b15a      	cbz	r2, 80073b6 <__ascii_mbtowc+0x1e>
 800739e:	b16b      	cbz	r3, 80073bc <__ascii_mbtowc+0x24>
 80073a0:	7813      	ldrb	r3, [r2, #0]
 80073a2:	600b      	str	r3, [r1, #0]
 80073a4:	7812      	ldrb	r2, [r2, #0]
 80073a6:	1c10      	adds	r0, r2, #0
 80073a8:	bf18      	it	ne
 80073aa:	2001      	movne	r0, #1
 80073ac:	b002      	add	sp, #8
 80073ae:	4770      	bx	lr
 80073b0:	a901      	add	r1, sp, #4
 80073b2:	2a00      	cmp	r2, #0
 80073b4:	d1f3      	bne.n	800739e <__ascii_mbtowc+0x6>
 80073b6:	4610      	mov	r0, r2
 80073b8:	b002      	add	sp, #8
 80073ba:	4770      	bx	lr
 80073bc:	f06f 0001 	mvn.w	r0, #1
 80073c0:	e7f4      	b.n	80073ac <__ascii_mbtowc+0x14>
 80073c2:	bf00      	nop

080073c4 <_read_r>:
 80073c4:	b570      	push	{r4, r5, r6, lr}
 80073c6:	460d      	mov	r5, r1
 80073c8:	4c08      	ldr	r4, [pc, #32]	; (80073ec <_read_r+0x28>)
 80073ca:	4611      	mov	r1, r2
 80073cc:	4606      	mov	r6, r0
 80073ce:	461a      	mov	r2, r3
 80073d0:	4628      	mov	r0, r5
 80073d2:	2300      	movs	r3, #0
 80073d4:	6023      	str	r3, [r4, #0]
 80073d6:	f7fb f936 	bl	8002646 <_read>
 80073da:	1c43      	adds	r3, r0, #1
 80073dc:	d000      	beq.n	80073e0 <_read_r+0x1c>
 80073de:	bd70      	pop	{r4, r5, r6, pc}
 80073e0:	6823      	ldr	r3, [r4, #0]
 80073e2:	2b00      	cmp	r3, #0
 80073e4:	d0fb      	beq.n	80073de <_read_r+0x1a>
 80073e6:	6033      	str	r3, [r6, #0]
 80073e8:	bd70      	pop	{r4, r5, r6, pc}
 80073ea:	bf00      	nop
 80073ec:	20000b24 	.word	0x20000b24

080073f0 <__swbuf_r>:
 80073f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80073f2:	460d      	mov	r5, r1
 80073f4:	4614      	mov	r4, r2
 80073f6:	4606      	mov	r6, r0
 80073f8:	b110      	cbz	r0, 8007400 <__swbuf_r+0x10>
 80073fa:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80073fc:	2b00      	cmp	r3, #0
 80073fe:	d043      	beq.n	8007488 <__swbuf_r+0x98>
 8007400:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007404:	69a3      	ldr	r3, [r4, #24]
 8007406:	60a3      	str	r3, [r4, #8]
 8007408:	b291      	uxth	r1, r2
 800740a:	0708      	lsls	r0, r1, #28
 800740c:	d51b      	bpl.n	8007446 <__swbuf_r+0x56>
 800740e:	6923      	ldr	r3, [r4, #16]
 8007410:	b1cb      	cbz	r3, 8007446 <__swbuf_r+0x56>
 8007412:	b2ed      	uxtb	r5, r5
 8007414:	0489      	lsls	r1, r1, #18
 8007416:	462f      	mov	r7, r5
 8007418:	d522      	bpl.n	8007460 <__swbuf_r+0x70>
 800741a:	6822      	ldr	r2, [r4, #0]
 800741c:	6961      	ldr	r1, [r4, #20]
 800741e:	1ad3      	subs	r3, r2, r3
 8007420:	4299      	cmp	r1, r3
 8007422:	dd29      	ble.n	8007478 <__swbuf_r+0x88>
 8007424:	3301      	adds	r3, #1
 8007426:	68a1      	ldr	r1, [r4, #8]
 8007428:	1c50      	adds	r0, r2, #1
 800742a:	3901      	subs	r1, #1
 800742c:	60a1      	str	r1, [r4, #8]
 800742e:	6020      	str	r0, [r4, #0]
 8007430:	7015      	strb	r5, [r2, #0]
 8007432:	6962      	ldr	r2, [r4, #20]
 8007434:	429a      	cmp	r2, r3
 8007436:	d02a      	beq.n	800748e <__swbuf_r+0x9e>
 8007438:	89a3      	ldrh	r3, [r4, #12]
 800743a:	07db      	lsls	r3, r3, #31
 800743c:	d501      	bpl.n	8007442 <__swbuf_r+0x52>
 800743e:	2d0a      	cmp	r5, #10
 8007440:	d025      	beq.n	800748e <__swbuf_r+0x9e>
 8007442:	4638      	mov	r0, r7
 8007444:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007446:	4621      	mov	r1, r4
 8007448:	4630      	mov	r0, r6
 800744a:	f7fc fffd 	bl	8004448 <__swsetup_r>
 800744e:	bb20      	cbnz	r0, 800749a <__swbuf_r+0xaa>
 8007450:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007454:	6923      	ldr	r3, [r4, #16]
 8007456:	b291      	uxth	r1, r2
 8007458:	b2ed      	uxtb	r5, r5
 800745a:	0489      	lsls	r1, r1, #18
 800745c:	462f      	mov	r7, r5
 800745e:	d4dc      	bmi.n	800741a <__swbuf_r+0x2a>
 8007460:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007462:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007466:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800746a:	81a2      	strh	r2, [r4, #12]
 800746c:	6822      	ldr	r2, [r4, #0]
 800746e:	6661      	str	r1, [r4, #100]	; 0x64
 8007470:	6961      	ldr	r1, [r4, #20]
 8007472:	1ad3      	subs	r3, r2, r3
 8007474:	4299      	cmp	r1, r3
 8007476:	dcd5      	bgt.n	8007424 <__swbuf_r+0x34>
 8007478:	4621      	mov	r1, r4
 800747a:	4630      	mov	r0, r6
 800747c:	f7fe f8a6 	bl	80055cc <_fflush_r>
 8007480:	b958      	cbnz	r0, 800749a <__swbuf_r+0xaa>
 8007482:	6822      	ldr	r2, [r4, #0]
 8007484:	2301      	movs	r3, #1
 8007486:	e7ce      	b.n	8007426 <__swbuf_r+0x36>
 8007488:	f7fe f8fc 	bl	8005684 <__sinit>
 800748c:	e7b8      	b.n	8007400 <__swbuf_r+0x10>
 800748e:	4621      	mov	r1, r4
 8007490:	4630      	mov	r0, r6
 8007492:	f7fe f89b 	bl	80055cc <_fflush_r>
 8007496:	2800      	cmp	r0, #0
 8007498:	d0d3      	beq.n	8007442 <__swbuf_r+0x52>
 800749a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800749e:	e7d0      	b.n	8007442 <__swbuf_r+0x52>

080074a0 <_wcrtomb_r>:
 80074a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80074a2:	4c11      	ldr	r4, [pc, #68]	; (80074e8 <_wcrtomb_r+0x48>)
 80074a4:	6824      	ldr	r4, [r4, #0]
 80074a6:	b085      	sub	sp, #20
 80074a8:	4606      	mov	r6, r0
 80074aa:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80074ac:	461f      	mov	r7, r3
 80074ae:	b151      	cbz	r1, 80074c6 <_wcrtomb_r+0x26>
 80074b0:	4d0e      	ldr	r5, [pc, #56]	; (80074ec <_wcrtomb_r+0x4c>)
 80074b2:	2c00      	cmp	r4, #0
 80074b4:	bf08      	it	eq
 80074b6:	462c      	moveq	r4, r5
 80074b8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80074bc:	47a0      	blx	r4
 80074be:	1c43      	adds	r3, r0, #1
 80074c0:	d00c      	beq.n	80074dc <_wcrtomb_r+0x3c>
 80074c2:	b005      	add	sp, #20
 80074c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80074c6:	4a09      	ldr	r2, [pc, #36]	; (80074ec <_wcrtomb_r+0x4c>)
 80074c8:	2c00      	cmp	r4, #0
 80074ca:	bf08      	it	eq
 80074cc:	4614      	moveq	r4, r2
 80074ce:	460a      	mov	r2, r1
 80074d0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80074d4:	a901      	add	r1, sp, #4
 80074d6:	47a0      	blx	r4
 80074d8:	1c43      	adds	r3, r0, #1
 80074da:	d1f2      	bne.n	80074c2 <_wcrtomb_r+0x22>
 80074dc:	2200      	movs	r2, #0
 80074de:	238a      	movs	r3, #138	; 0x8a
 80074e0:	603a      	str	r2, [r7, #0]
 80074e2:	6033      	str	r3, [r6, #0]
 80074e4:	b005      	add	sp, #20
 80074e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80074e8:	20000018 	.word	0x20000018
 80074ec:	2000085c 	.word	0x2000085c

080074f0 <__ascii_wctomb>:
 80074f0:	b121      	cbz	r1, 80074fc <__ascii_wctomb+0xc>
 80074f2:	2aff      	cmp	r2, #255	; 0xff
 80074f4:	d804      	bhi.n	8007500 <__ascii_wctomb+0x10>
 80074f6:	700a      	strb	r2, [r1, #0]
 80074f8:	2001      	movs	r0, #1
 80074fa:	4770      	bx	lr
 80074fc:	4608      	mov	r0, r1
 80074fe:	4770      	bx	lr
 8007500:	238a      	movs	r3, #138	; 0x8a
 8007502:	6003      	str	r3, [r0, #0]
 8007504:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007508:	4770      	bx	lr
 800750a:	bf00      	nop

0800750c <_init>:
 800750c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800750e:	bf00      	nop
 8007510:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007512:	bc08      	pop	{r3}
 8007514:	469e      	mov	lr, r3
 8007516:	4770      	bx	lr

08007518 <_fini>:
 8007518:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800751a:	bf00      	nop
 800751c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800751e:	bc08      	pop	{r3}
 8007520:	469e      	mov	lr, r3
 8007522:	4770      	bx	lr
 8007524:	0000      	movs	r0, r0
	...
