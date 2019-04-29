
duff.elf:     file format elf32-littlearm


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
 80001e0:	0800718c 	.word	0x0800718c

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
 80001fc:	0800718c 	.word	0x0800718c

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
 8001430:	f247 12c0 	movw	r2, #29120	; 0x71c0
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
 80014aa:	f247 12b8 	movw	r2, #29112	; 0x71b8
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
 80014d4:	f247 12b8 	movw	r2, #29112	; 0x71b8
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
 8001a82:	f247 13f0 	movw	r3, #29168	; 0x71f0
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
 8001aaa:	f247 2300 	movw	r3, #29184	; 0x7200
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

08002014 <benchmark>:
 8002014:	f640 304c 	movw	r0, #2892	; 0xb4c
 8002018:	f640 21e8 	movw	r1, #2792	; 0xae8
 800201c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002020:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002024:	7802      	ldrb	r2, [r0, #0]
 8002026:	f801 2e00 	strbt	r2, [r1]
 800202a:	7842      	ldrb	r2, [r0, #1]
 800202c:	f801 2e01 	strbt	r2, [r1, #1]
 8002030:	7882      	ldrb	r2, [r0, #2]
 8002032:	f801 2e02 	strbt	r2, [r1, #2]
 8002036:	78c2      	ldrb	r2, [r0, #3]
 8002038:	f801 2e03 	strbt	r2, [r1, #3]
 800203c:	7902      	ldrb	r2, [r0, #4]
 800203e:	f801 2e04 	strbt	r2, [r1, #4]
 8002042:	7942      	ldrb	r2, [r0, #5]
 8002044:	f801 2e05 	strbt	r2, [r1, #5]
 8002048:	7982      	ldrb	r2, [r0, #6]
 800204a:	f801 2e06 	strbt	r2, [r1, #6]
 800204e:	79c2      	ldrb	r2, [r0, #7]
 8002050:	f801 2e07 	strbt	r2, [r1, #7]
 8002054:	7a02      	ldrb	r2, [r0, #8]
 8002056:	f801 2e08 	strbt	r2, [r1, #8]
 800205a:	7a42      	ldrb	r2, [r0, #9]
 800205c:	f801 2e09 	strbt	r2, [r1, #9]
 8002060:	7a82      	ldrb	r2, [r0, #10]
 8002062:	f801 2e0a 	strbt	r2, [r1, #10]
 8002066:	7ac2      	ldrb	r2, [r0, #11]
 8002068:	f801 2e0b 	strbt	r2, [r1, #11]
 800206c:	7b02      	ldrb	r2, [r0, #12]
 800206e:	f801 2e0c 	strbt	r2, [r1, #12]
 8002072:	7b42      	ldrb	r2, [r0, #13]
 8002074:	f801 2e0d 	strbt	r2, [r1, #13]
 8002078:	7b82      	ldrb	r2, [r0, #14]
 800207a:	f801 2e0e 	strbt	r2, [r1, #14]
 800207e:	7bc2      	ldrb	r2, [r0, #15]
 8002080:	f801 2e0f 	strbt	r2, [r1, #15]
 8002084:	7c02      	ldrb	r2, [r0, #16]
 8002086:	f801 2e10 	strbt	r2, [r1, #16]
 800208a:	7c42      	ldrb	r2, [r0, #17]
 800208c:	f801 2e11 	strbt	r2, [r1, #17]
 8002090:	7c82      	ldrb	r2, [r0, #18]
 8002092:	f801 2e12 	strbt	r2, [r1, #18]
 8002096:	7cc2      	ldrb	r2, [r0, #19]
 8002098:	f801 2e13 	strbt	r2, [r1, #19]
 800209c:	7d02      	ldrb	r2, [r0, #20]
 800209e:	f801 2e14 	strbt	r2, [r1, #20]
 80020a2:	7d42      	ldrb	r2, [r0, #21]
 80020a4:	f801 2e15 	strbt	r2, [r1, #21]
 80020a8:	7d82      	ldrb	r2, [r0, #22]
 80020aa:	f801 2e16 	strbt	r2, [r1, #22]
 80020ae:	7dc2      	ldrb	r2, [r0, #23]
 80020b0:	f801 2e17 	strbt	r2, [r1, #23]
 80020b4:	7e02      	ldrb	r2, [r0, #24]
 80020b6:	f801 2e18 	strbt	r2, [r1, #24]
 80020ba:	7e42      	ldrb	r2, [r0, #25]
 80020bc:	f801 2e19 	strbt	r2, [r1, #25]
 80020c0:	7e82      	ldrb	r2, [r0, #26]
 80020c2:	f801 2e1a 	strbt	r2, [r1, #26]
 80020c6:	7ec2      	ldrb	r2, [r0, #27]
 80020c8:	f801 2e1b 	strbt	r2, [r1, #27]
 80020cc:	7f02      	ldrb	r2, [r0, #28]
 80020ce:	f801 2e1c 	strbt	r2, [r1, #28]
 80020d2:	7f42      	ldrb	r2, [r0, #29]
 80020d4:	f801 2e1d 	strbt	r2, [r1, #29]
 80020d8:	7f82      	ldrb	r2, [r0, #30]
 80020da:	f801 2e1e 	strbt	r2, [r1, #30]
 80020de:	7fc2      	ldrb	r2, [r0, #31]
 80020e0:	f801 2e1f 	strbt	r2, [r1, #31]
 80020e4:	f890 2020 	ldrb.w	r2, [r0, #32]
 80020e8:	f801 2e20 	strbt	r2, [r1, #32]
 80020ec:	f890 2021 	ldrb.w	r2, [r0, #33]	; 0x21
 80020f0:	f801 2e21 	strbt	r2, [r1, #33]
 80020f4:	f890 2022 	ldrb.w	r2, [r0, #34]	; 0x22
 80020f8:	f801 2e22 	strbt	r2, [r1, #34]
 80020fc:	f890 2023 	ldrb.w	r2, [r0, #35]	; 0x23
 8002100:	f801 2e23 	strbt	r2, [r1, #35]
 8002104:	f890 2024 	ldrb.w	r2, [r0, #36]	; 0x24
 8002108:	f801 2e24 	strbt	r2, [r1, #36]
 800210c:	f890 2025 	ldrb.w	r2, [r0, #37]	; 0x25
 8002110:	f801 2e25 	strbt	r2, [r1, #37]
 8002114:	f890 2026 	ldrb.w	r2, [r0, #38]	; 0x26
 8002118:	f801 2e26 	strbt	r2, [r1, #38]
 800211c:	f890 2027 	ldrb.w	r2, [r0, #39]	; 0x27
 8002120:	f801 2e27 	strbt	r2, [r1, #39]
 8002124:	f890 2028 	ldrb.w	r2, [r0, #40]	; 0x28
 8002128:	f801 2e28 	strbt	r2, [r1, #40]
 800212c:	f890 2029 	ldrb.w	r2, [r0, #41]	; 0x29
 8002130:	f890 002a 	ldrb.w	r0, [r0, #42]	; 0x2a
 8002134:	f801 2e29 	strbt	r2, [r1, #41]
 8002138:	f801 0e2a 	strbt	r0, [r1, #42]
 800213c:	2000      	movs	r0, #0
 800213e:	4770      	bx	lr

08002140 <initialise_benchmark>:
 8002140:	f640 21e8 	movw	r1, #2792	; 0xae8
 8002144:	2064      	movs	r0, #100	; 0x64
 8002146:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800214a:	f801 0e00 	strbt	r0, [r1]
 800214e:	bfe8      	it	al
 8002150:	3101      	addal	r1, #1
 8002152:	3801      	subs	r0, #1
 8002154:	d1f9      	bne.n	800214a <initialise_benchmark+0xa>
 8002156:	4770      	bx	lr

08002158 <verify_benchmark>:
 8002158:	f640 3c4c 	movw	ip, #2892	; 0xb4c
 800215c:	f640 22e8 	movw	r2, #2792	; 0xae8
 8002160:	2000      	movs	r0, #0
 8002162:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002166:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800216a:	f81c 3000 	ldrb.w	r3, [ip, r0]
 800216e:	5c11      	ldrb	r1, [r2, r0]
 8002170:	4299      	cmp	r1, r3
 8002172:	bf1c      	itt	ne
 8002174:	2000      	movne	r0, #0
 8002176:	4770      	bxne	lr
 8002178:	3001      	adds	r0, #1
 800217a:	282a      	cmp	r0, #42	; 0x2a
 800217c:	bfc4      	itt	gt
 800217e:	2001      	movgt	r0, #1
 8002180:	4770      	bxgt	lr
 8002182:	e7f2      	b.n	800216a <verify_benchmark+0x12>

08002184 <__io_putchar>:
 8002184:	b082      	sub	sp, #8
 8002186:	f84d 7e00 	strt	r7, [sp]
 800218a:	f84d ee04 	strt	lr, [sp, #4]
 800218e:	466f      	mov	r7, sp
 8002190:	b082      	sub	sp, #8
 8002192:	f84d 0e04 	strt	r0, [sp, #4]
 8002196:	f640 10e4 	movw	r0, #2532	; 0x9e4
 800219a:	a901      	add	r1, sp, #4
 800219c:	2201      	movs	r2, #1
 800219e:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80021a2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021a6:	f7ff fe0e 	bl	8001dc6 <HAL_UART_Transmit>
 80021aa:	9801      	ldr	r0, [sp, #4]
 80021ac:	b002      	add	sp, #8
 80021ae:	bd80      	pop	{r7, pc}

080021b0 <main>:
 80021b0:	b084      	sub	sp, #16
 80021b2:	f84d 4e00 	strt	r4, [sp]
 80021b6:	f84d 5e04 	strt	r5, [sp, #4]
 80021ba:	f84d 7e08 	strt	r7, [sp, #8]
 80021be:	f84d ee0c 	strt	lr, [sp, #12]
 80021c2:	af02      	add	r7, sp, #8
 80021c4:	f640 11e4 	movw	r1, #2532	; 0x9e4
 80021c8:	f643 0000 	movw	r0, #14336	; 0x3800
 80021cc:	220c      	movs	r2, #12
 80021ce:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021d2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80021d6:	f841 0e00 	strt	r0, [r1]
 80021da:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80021de:	f841 0e04 	strt	r0, [r1, #4]
 80021e2:	2000      	movs	r0, #0
 80021e4:	f841 0e08 	strt	r0, [r1, #8]
 80021e8:	f841 0e0c 	strt	r0, [r1, #12]
 80021ec:	f841 0e10 	strt	r0, [r1, #16]
 80021f0:	f841 0e24 	strt	r0, [r1, #36]
 80021f4:	f841 0e1c 	strt	r0, [r1, #28]
 80021f8:	f841 0e20 	strt	r0, [r1, #32]
 80021fc:	f841 2e14 	strt	r2, [r1, #20]
 8002200:	f841 0e18 	strt	r0, [r1, #24]
 8002204:	2000      	movs	r0, #0
 8002206:	f7ff fe91 	bl	8001f2c <BSP_COM_Init>
 800220a:	f7ff ff99 	bl	8002140 <initialise_benchmark>
 800220e:	f247 2010 	movw	r0, #29200	; 0x7210
 8002212:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002216:	f000 f96d 	bl	80024f4 <printf>
 800221a:	f247 20b7 	movw	r0, #29367	; 0x72b7
 800221e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002222:	f000 f9c9 	bl	80025b8 <puts>
 8002226:	f7fe ff5f 	bl	80010e8 <HAL_Init>
 800222a:	f7fe ff76 	bl	800111a <HAL_GetTick>
 800222e:	4604      	mov	r4, r0
 8002230:	f7ff fef0 	bl	8002014 <benchmark>
 8002234:	4605      	mov	r5, r0
 8002236:	f7fe ff70 	bl	800111a <HAL_GetTick>
 800223a:	1b04      	subs	r4, r0, r4
 800223c:	4628      	mov	r0, r5
 800223e:	f7ff ff8b 	bl	8002158 <verify_benchmark>
 8002242:	1c41      	adds	r1, r0, #1
 8002244:	d006      	beq.n	8002254 <main+0xa4>
 8002246:	2801      	cmp	r0, #1
 8002248:	d109      	bne.n	800225e <main+0xae>
 800224a:	f247 2023 	movw	r0, #29219	; 0x7223
 800224e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002252:	e008      	b.n	8002266 <main+0xb6>
 8002254:	f247 2047 	movw	r0, #29255	; 0x7247
 8002258:	f6c0 0000 	movt	r0, #2048	; 0x800
 800225c:	e003      	b.n	8002266 <main+0xb6>
 800225e:	f247 207c 	movw	r0, #29308	; 0x727c
 8002262:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002266:	4621      	mov	r1, r4
 8002268:	f000 f944 	bl	80024f4 <printf>
 800226c:	2000      	movs	r0, #0
 800226e:	bdb0      	pop	{r4, r5, r7, pc}

08002270 <SysTick_Handler>:
 8002270:	b082      	sub	sp, #8
 8002272:	f84d 7e00 	strt	r7, [sp]
 8002276:	f84d ee04 	strt	lr, [sp, #4]
 800227a:	466f      	mov	r7, sp
 800227c:	f7fe ff44 	bl	8001108 <HAL_IncTick>
 8002280:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002284:	f7fe bf9f 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

08002288 <_read>:
 8002288:	b085      	sub	sp, #20
 800228a:	f84d 4e00 	strt	r4, [sp]
 800228e:	f84d 5e04 	strt	r5, [sp, #4]
 8002292:	f84d 6e08 	strt	r6, [sp, #8]
 8002296:	f84d 7e0c 	strt	r7, [sp, #12]
 800229a:	f84d ee10 	strt	lr, [sp, #16]
 800229e:	af03      	add	r7, sp, #12
 80022a0:	b081      	sub	sp, #4
 80022a2:	f84d be00 	strt	fp, [sp]
 80022a6:	4614      	mov	r4, r2
 80022a8:	460d      	mov	r5, r1
 80022aa:	2c01      	cmp	r4, #1
 80022ac:	db08      	blt.n	80022c0 <_read+0x38>
 80022ae:	4626      	mov	r6, r4
 80022b0:	f3af 8000 	nop.w
 80022b4:	f805 0e00 	strbt	r0, [r5]
 80022b8:	bfe8      	it	al
 80022ba:	3501      	addal	r5, #1
 80022bc:	3e01      	subs	r6, #1
 80022be:	d1f7      	bne.n	80022b0 <_read+0x28>
 80022c0:	4620      	mov	r0, r4
 80022c2:	f85d bb04 	ldr.w	fp, [sp], #4
 80022c6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080022c8 <_write>:
 80022c8:	b085      	sub	sp, #20
 80022ca:	f84d 4e00 	strt	r4, [sp]
 80022ce:	f84d 5e04 	strt	r5, [sp, #4]
 80022d2:	f84d 6e08 	strt	r6, [sp, #8]
 80022d6:	f84d 7e0c 	strt	r7, [sp, #12]
 80022da:	f84d ee10 	strt	lr, [sp, #16]
 80022de:	af03      	add	r7, sp, #12
 80022e0:	b081      	sub	sp, #4
 80022e2:	f84d be00 	strt	fp, [sp]
 80022e6:	4614      	mov	r4, r2
 80022e8:	460d      	mov	r5, r1
 80022ea:	2c01      	cmp	r4, #1
 80022ec:	db06      	blt.n	80022fc <_write+0x34>
 80022ee:	4626      	mov	r6, r4
 80022f0:	f815 0b01 	ldrb.w	r0, [r5], #1
 80022f4:	f7ff ff46 	bl	8002184 <__io_putchar>
 80022f8:	3e01      	subs	r6, #1
 80022fa:	d1f9      	bne.n	80022f0 <_write+0x28>
 80022fc:	4620      	mov	r0, r4
 80022fe:	f85d bb04 	ldr.w	fp, [sp], #4
 8002302:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002304 <_sbrk>:
 8002304:	f640 2268 	movw	r2, #2664	; 0xa68
 8002308:	4601      	mov	r1, r0
 800230a:	466b      	mov	r3, sp
 800230c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002310:	6810      	ldr	r0, [r2, #0]
 8002312:	2800      	cmp	r0, #0
 8002314:	bf02      	ittt	eq
 8002316:	f640 30d8 	movweq	r0, #3032	; 0xbd8
 800231a:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800231e:	f842 0e00 	strteq	r0, [r2]
 8002322:	4401      	add	r1, r0
 8002324:	4299      	cmp	r1, r3
 8002326:	bf9c      	itt	ls
 8002328:	f842 1e00 	strtls	r1, [r2]
 800232c:	4770      	bxls	lr
 800232e:	b082      	sub	sp, #8
 8002330:	f84d 7e00 	strt	r7, [sp]
 8002334:	f84d ee04 	strt	lr, [sp, #4]
 8002338:	466f      	mov	r7, sp
 800233a:	f000 f867 	bl	800240c <__errno>
 800233e:	210c      	movs	r1, #12
 8002340:	f840 1e00 	strt	r1, [r0]
 8002344:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002348:	bd80      	pop	{r7, pc}

0800234a <_close>:
 800234a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800234e:	4770      	bx	lr

08002350 <_fstat>:
 8002350:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002354:	f841 0e04 	strt	r0, [r1, #4]
 8002358:	2000      	movs	r0, #0
 800235a:	4770      	bx	lr

0800235c <_isatty>:
 800235c:	2001      	movs	r0, #1
 800235e:	4770      	bx	lr

08002360 <_lseek>:
 8002360:	2000      	movs	r0, #0
 8002362:	4770      	bx	lr

08002364 <SystemInit>:
 8002364:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002368:	f04f 0c00 	mov.w	ip, #0
 800236c:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002370:	6801      	ldr	r1, [r0, #0]
 8002372:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002376:	6001      	str	r1, [r0, #0]
 8002378:	f241 0100 	movw	r1, #4096	; 0x1000
 800237c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002380:	680a      	ldr	r2, [r1, #0]
 8002382:	f042 0201 	orr.w	r2, r2, #1
 8002386:	600a      	str	r2, [r1, #0]
 8002388:	f8c1 c008 	str.w	ip, [r1, #8]
 800238c:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002390:	680b      	ldr	r3, [r1, #0]
 8002392:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002396:	401a      	ands	r2, r3
 8002398:	600a      	str	r2, [r1, #0]
 800239a:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800239e:	60ca      	str	r2, [r1, #12]
 80023a0:	680a      	ldr	r2, [r1, #0]
 80023a2:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80023a6:	600a      	str	r2, [r1, #0]
 80023a8:	f8c1 c018 	str.w	ip, [r1, #24]
 80023ac:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80023b0:	f840 1c80 	str.w	r1, [r0, #-128]
 80023b4:	4770      	bx	lr
	...

080023b8 <Reset_Handler>:
 80023b8:	f8df d034 	ldr.w	sp, [pc, #52]	; 80023f0 <LoopForever+0x2>
 80023bc:	2100      	movs	r1, #0
 80023be:	e003      	b.n	80023c8 <LoopCopyDataInit>

080023c0 <CopyDataInit>:
 80023c0:	4b0c      	ldr	r3, [pc, #48]	; (80023f4 <LoopForever+0x6>)
 80023c2:	585b      	ldr	r3, [r3, r1]
 80023c4:	5043      	str	r3, [r0, r1]
 80023c6:	3104      	adds	r1, #4

080023c8 <LoopCopyDataInit>:
 80023c8:	480b      	ldr	r0, [pc, #44]	; (80023f8 <LoopForever+0xa>)
 80023ca:	4b0c      	ldr	r3, [pc, #48]	; (80023fc <LoopForever+0xe>)
 80023cc:	1842      	adds	r2, r0, r1
 80023ce:	429a      	cmp	r2, r3
 80023d0:	d3f6      	bcc.n	80023c0 <CopyDataInit>
 80023d2:	4a0b      	ldr	r2, [pc, #44]	; (8002400 <LoopForever+0x12>)
 80023d4:	e002      	b.n	80023dc <LoopFillZerobss>

080023d6 <FillZerobss>:
 80023d6:	2300      	movs	r3, #0
 80023d8:	f842 3b04 	str.w	r3, [r2], #4

080023dc <LoopFillZerobss>:
 80023dc:	4b09      	ldr	r3, [pc, #36]	; (8002404 <LoopForever+0x16>)
 80023de:	429a      	cmp	r2, r3
 80023e0:	d3f9      	bcc.n	80023d6 <FillZerobss>
 80023e2:	f7ff ffbf 	bl	8002364 <SystemInit>
 80023e6:	f000 f817 	bl	8002418 <__libc_init_array>
 80023ea:	f7ff fee1 	bl	80021b0 <main>

080023ee <LoopForever>:
 80023ee:	e7fe      	b.n	80023ee <LoopForever>
 80023f0:	20018000 	.word	0x20018000
 80023f4:	08007560 	.word	0x08007560
 80023f8:	20000000 	.word	0x20000000
 80023fc:	200009c8 	.word	0x200009c8
 8002400:	200009c8 	.word	0x200009c8
 8002404:	20000bd8 	.word	0x20000bd8

08002408 <ADC1_2_IRQHandler>:
 8002408:	e7fe      	b.n	8002408 <ADC1_2_IRQHandler>
	...

0800240c <__errno>:
 800240c:	4b01      	ldr	r3, [pc, #4]	; (8002414 <__errno+0x8>)
 800240e:	6818      	ldr	r0, [r3, #0]
 8002410:	4770      	bx	lr
 8002412:	bf00      	nop
 8002414:	20000018 	.word	0x20000018

08002418 <__libc_init_array>:
 8002418:	b570      	push	{r4, r5, r6, lr}
 800241a:	4e0d      	ldr	r6, [pc, #52]	; (8002450 <__libc_init_array+0x38>)
 800241c:	4d0d      	ldr	r5, [pc, #52]	; (8002454 <__libc_init_array+0x3c>)
 800241e:	1b76      	subs	r6, r6, r5
 8002420:	10b6      	asrs	r6, r6, #2
 8002422:	d006      	beq.n	8002432 <__libc_init_array+0x1a>
 8002424:	2400      	movs	r4, #0
 8002426:	3401      	adds	r4, #1
 8002428:	f855 3b04 	ldr.w	r3, [r5], #4
 800242c:	4798      	blx	r3
 800242e:	42a6      	cmp	r6, r4
 8002430:	d1f9      	bne.n	8002426 <__libc_init_array+0xe>
 8002432:	4e09      	ldr	r6, [pc, #36]	; (8002458 <__libc_init_array+0x40>)
 8002434:	4d09      	ldr	r5, [pc, #36]	; (800245c <__libc_init_array+0x44>)
 8002436:	1b76      	subs	r6, r6, r5
 8002438:	f004 fea8 	bl	800718c <_init>
 800243c:	10b6      	asrs	r6, r6, #2
 800243e:	d006      	beq.n	800244e <__libc_init_array+0x36>
 8002440:	2400      	movs	r4, #0
 8002442:	3401      	adds	r4, #1
 8002444:	f855 3b04 	ldr.w	r3, [r5], #4
 8002448:	4798      	blx	r3
 800244a:	42a6      	cmp	r6, r4
 800244c:	d1f9      	bne.n	8002442 <__libc_init_array+0x2a>
 800244e:	bd70      	pop	{r4, r5, r6, pc}
 8002450:	08007550 	.word	0x08007550
 8002454:	08007550 	.word	0x08007550
 8002458:	08007558 	.word	0x08007558
 800245c:	08007550 	.word	0x08007550

08002460 <memset>:
 8002460:	b4f0      	push	{r4, r5, r6, r7}
 8002462:	0786      	lsls	r6, r0, #30
 8002464:	d043      	beq.n	80024ee <memset+0x8e>
 8002466:	1e54      	subs	r4, r2, #1
 8002468:	2a00      	cmp	r2, #0
 800246a:	d03e      	beq.n	80024ea <memset+0x8a>
 800246c:	b2ca      	uxtb	r2, r1
 800246e:	4603      	mov	r3, r0
 8002470:	e002      	b.n	8002478 <memset+0x18>
 8002472:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002476:	d338      	bcc.n	80024ea <memset+0x8a>
 8002478:	f803 2b01 	strb.w	r2, [r3], #1
 800247c:	079d      	lsls	r5, r3, #30
 800247e:	d1f8      	bne.n	8002472 <memset+0x12>
 8002480:	2c03      	cmp	r4, #3
 8002482:	d92b      	bls.n	80024dc <memset+0x7c>
 8002484:	b2cd      	uxtb	r5, r1
 8002486:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800248a:	2c0f      	cmp	r4, #15
 800248c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002490:	d916      	bls.n	80024c0 <memset+0x60>
 8002492:	f1a4 0710 	sub.w	r7, r4, #16
 8002496:	093f      	lsrs	r7, r7, #4
 8002498:	f103 0620 	add.w	r6, r3, #32
 800249c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80024a0:	f103 0210 	add.w	r2, r3, #16
 80024a4:	e942 5504 	strd	r5, r5, [r2, #-16]
 80024a8:	e942 5502 	strd	r5, r5, [r2, #-8]
 80024ac:	3210      	adds	r2, #16
 80024ae:	42b2      	cmp	r2, r6
 80024b0:	d1f8      	bne.n	80024a4 <memset+0x44>
 80024b2:	f004 040f 	and.w	r4, r4, #15
 80024b6:	3701      	adds	r7, #1
 80024b8:	2c03      	cmp	r4, #3
 80024ba:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80024be:	d90d      	bls.n	80024dc <memset+0x7c>
 80024c0:	461e      	mov	r6, r3
 80024c2:	4622      	mov	r2, r4
 80024c4:	3a04      	subs	r2, #4
 80024c6:	2a03      	cmp	r2, #3
 80024c8:	f846 5b04 	str.w	r5, [r6], #4
 80024cc:	d8fa      	bhi.n	80024c4 <memset+0x64>
 80024ce:	1f22      	subs	r2, r4, #4
 80024d0:	f022 0203 	bic.w	r2, r2, #3
 80024d4:	3204      	adds	r2, #4
 80024d6:	4413      	add	r3, r2
 80024d8:	f004 0403 	and.w	r4, r4, #3
 80024dc:	b12c      	cbz	r4, 80024ea <memset+0x8a>
 80024de:	b2c9      	uxtb	r1, r1
 80024e0:	441c      	add	r4, r3
 80024e2:	f803 1b01 	strb.w	r1, [r3], #1
 80024e6:	429c      	cmp	r4, r3
 80024e8:	d1fb      	bne.n	80024e2 <memset+0x82>
 80024ea:	bcf0      	pop	{r4, r5, r6, r7}
 80024ec:	4770      	bx	lr
 80024ee:	4614      	mov	r4, r2
 80024f0:	4603      	mov	r3, r0
 80024f2:	e7c5      	b.n	8002480 <memset+0x20>

080024f4 <printf>:
 80024f4:	b40f      	push	{r0, r1, r2, r3}
 80024f6:	b500      	push	{lr}
 80024f8:	4907      	ldr	r1, [pc, #28]	; (8002518 <printf+0x24>)
 80024fa:	b083      	sub	sp, #12
 80024fc:	ab04      	add	r3, sp, #16
 80024fe:	6808      	ldr	r0, [r1, #0]
 8002500:	f853 2b04 	ldr.w	r2, [r3], #4
 8002504:	6881      	ldr	r1, [r0, #8]
 8002506:	9301      	str	r3, [sp, #4]
 8002508:	f000 f85e 	bl	80025c8 <_vfprintf_r>
 800250c:	b003      	add	sp, #12
 800250e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002512:	b004      	add	sp, #16
 8002514:	4770      	bx	lr
 8002516:	bf00      	nop
 8002518:	20000018 	.word	0x20000018

0800251c <_puts_r>:
 800251c:	b570      	push	{r4, r5, r6, lr}
 800251e:	4605      	mov	r5, r0
 8002520:	b088      	sub	sp, #32
 8002522:	4608      	mov	r0, r1
 8002524:	460c      	mov	r4, r1
 8002526:	f7fe f88b 	bl	8000640 <strlen>
 800252a:	4a22      	ldr	r2, [pc, #136]	; (80025b4 <_puts_r+0x98>)
 800252c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800252e:	9404      	str	r4, [sp, #16]
 8002530:	2601      	movs	r6, #1
 8002532:	1c44      	adds	r4, r0, #1
 8002534:	a904      	add	r1, sp, #16
 8002536:	9206      	str	r2, [sp, #24]
 8002538:	2202      	movs	r2, #2
 800253a:	9403      	str	r4, [sp, #12]
 800253c:	9005      	str	r0, [sp, #20]
 800253e:	68ac      	ldr	r4, [r5, #8]
 8002540:	9607      	str	r6, [sp, #28]
 8002542:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002546:	b31b      	cbz	r3, 8002590 <_puts_r+0x74>
 8002548:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800254a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800254e:	07ce      	lsls	r6, r1, #31
 8002550:	b29a      	uxth	r2, r3
 8002552:	d401      	bmi.n	8002558 <_puts_r+0x3c>
 8002554:	0590      	lsls	r0, r2, #22
 8002556:	d525      	bpl.n	80025a4 <_puts_r+0x88>
 8002558:	0491      	lsls	r1, r2, #18
 800255a:	d406      	bmi.n	800256a <_puts_r+0x4e>
 800255c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800255e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002562:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002566:	81a3      	strh	r3, [r4, #12]
 8002568:	6662      	str	r2, [r4, #100]	; 0x64
 800256a:	4628      	mov	r0, r5
 800256c:	aa01      	add	r2, sp, #4
 800256e:	4621      	mov	r1, r4
 8002570:	f003 f85e 	bl	8005630 <__sfvwrite_r>
 8002574:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002576:	2800      	cmp	r0, #0
 8002578:	bf0c      	ite	eq
 800257a:	250a      	moveq	r5, #10
 800257c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002580:	07da      	lsls	r2, r3, #31
 8002582:	d402      	bmi.n	800258a <_puts_r+0x6e>
 8002584:	89a3      	ldrh	r3, [r4, #12]
 8002586:	059b      	lsls	r3, r3, #22
 8002588:	d506      	bpl.n	8002598 <_puts_r+0x7c>
 800258a:	4628      	mov	r0, r5
 800258c:	b008      	add	sp, #32
 800258e:	bd70      	pop	{r4, r5, r6, pc}
 8002590:	4628      	mov	r0, r5
 8002592:	f002 feb7 	bl	8005304 <__sinit>
 8002596:	e7d7      	b.n	8002548 <_puts_r+0x2c>
 8002598:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800259a:	f003 fa05 	bl	80059a8 <__retarget_lock_release_recursive>
 800259e:	4628      	mov	r0, r5
 80025a0:	b008      	add	sp, #32
 80025a2:	bd70      	pop	{r4, r5, r6, pc}
 80025a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80025a6:	f003 f9fd 	bl	80059a4 <__retarget_lock_acquire_recursive>
 80025aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80025ae:	b29a      	uxth	r2, r3
 80025b0:	e7d2      	b.n	8002558 <_puts_r+0x3c>
 80025b2:	bf00      	nop
 80025b4:	080072c0 	.word	0x080072c0

080025b8 <puts>:
 80025b8:	4b02      	ldr	r3, [pc, #8]	; (80025c4 <puts+0xc>)
 80025ba:	4601      	mov	r1, r0
 80025bc:	6818      	ldr	r0, [r3, #0]
 80025be:	f7ff bfad 	b.w	800251c <_puts_r>
 80025c2:	bf00      	nop
 80025c4:	20000018 	.word	0x20000018

080025c8 <_vfprintf_r>:
 80025c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80025cc:	b0d7      	sub	sp, #348	; 0x15c
 80025ce:	461c      	mov	r4, r3
 80025d0:	4689      	mov	r9, r1
 80025d2:	4617      	mov	r7, r2
 80025d4:	4605      	mov	r5, r0
 80025d6:	9003      	str	r0, [sp, #12]
 80025d8:	f003 f9d2 	bl	8005980 <_localeconv_r>
 80025dc:	6803      	ldr	r3, [r0, #0]
 80025de:	9316      	str	r3, [sp, #88]	; 0x58
 80025e0:	4618      	mov	r0, r3
 80025e2:	f7fe f82d 	bl	8000640 <strlen>
 80025e6:	9408      	str	r4, [sp, #32]
 80025e8:	9015      	str	r0, [sp, #84]	; 0x54
 80025ea:	b11d      	cbz	r5, 80025f4 <_vfprintf_r+0x2c>
 80025ec:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80025ee:	2b00      	cmp	r3, #0
 80025f0:	f000 8107 	beq.w	8002802 <_vfprintf_r+0x23a>
 80025f4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80025f8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80025fc:	07c8      	lsls	r0, r1, #31
 80025fe:	b293      	uxth	r3, r2
 8002600:	d402      	bmi.n	8002608 <_vfprintf_r+0x40>
 8002602:	0599      	lsls	r1, r3, #22
 8002604:	f140 811f 	bpl.w	8002846 <_vfprintf_r+0x27e>
 8002608:	049e      	lsls	r6, r3, #18
 800260a:	d40a      	bmi.n	8002622 <_vfprintf_r+0x5a>
 800260c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002610:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002614:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002618:	f8a9 300c 	strh.w	r3, [r9, #12]
 800261c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002620:	b29b      	uxth	r3, r3
 8002622:	071d      	lsls	r5, r3, #28
 8002624:	f140 80b2 	bpl.w	800278c <_vfprintf_r+0x1c4>
 8002628:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800262c:	2a00      	cmp	r2, #0
 800262e:	f000 80ad 	beq.w	800278c <_vfprintf_r+0x1c4>
 8002632:	f003 021a 	and.w	r2, r3, #26
 8002636:	2a0a      	cmp	r2, #10
 8002638:	f000 80c9 	beq.w	80027ce <_vfprintf_r+0x206>
 800263c:	2300      	movs	r3, #0
 800263e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002858 <_vfprintf_r+0x290>
 8002642:	9310      	str	r3, [sp, #64]	; 0x40
 8002644:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002648:	9317      	str	r3, [sp, #92]	; 0x5c
 800264a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800264e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002650:	9318      	str	r3, [sp, #96]	; 0x60
 8002652:	9305      	str	r3, [sp, #20]
 8002654:	ab2d      	add	r3, sp, #180	; 0xb4
 8002656:	932a      	str	r3, [sp, #168]	; 0xa8
 8002658:	469b      	mov	fp, r3
 800265a:	783b      	ldrb	r3, [r7, #0]
 800265c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002660:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002664:	2b00      	cmp	r3, #0
 8002666:	f000 8259 	beq.w	8002b1c <_vfprintf_r+0x554>
 800266a:	2b25      	cmp	r3, #37	; 0x25
 800266c:	463c      	mov	r4, r7
 800266e:	d102      	bne.n	8002676 <_vfprintf_r+0xae>
 8002670:	e01d      	b.n	80026ae <_vfprintf_r+0xe6>
 8002672:	2b25      	cmp	r3, #37	; 0x25
 8002674:	d003      	beq.n	800267e <_vfprintf_r+0xb6>
 8002676:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800267a:	2b00      	cmp	r3, #0
 800267c:	d1f9      	bne.n	8002672 <_vfprintf_r+0xaa>
 800267e:	1be5      	subs	r5, r4, r7
 8002680:	b18d      	cbz	r5, 80026a6 <_vfprintf_r+0xde>
 8002682:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002686:	3301      	adds	r3, #1
 8002688:	442a      	add	r2, r5
 800268a:	2b07      	cmp	r3, #7
 800268c:	f8cb 7000 	str.w	r7, [fp]
 8002690:	f8cb 5004 	str.w	r5, [fp, #4]
 8002694:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002698:	f300 80ca 	bgt.w	8002830 <_vfprintf_r+0x268>
 800269c:	f10b 0b08 	add.w	fp, fp, #8
 80026a0:	9b05      	ldr	r3, [sp, #20]
 80026a2:	442b      	add	r3, r5
 80026a4:	9305      	str	r3, [sp, #20]
 80026a6:	7823      	ldrb	r3, [r4, #0]
 80026a8:	2b00      	cmp	r3, #0
 80026aa:	f000 8237 	beq.w	8002b1c <_vfprintf_r+0x554>
 80026ae:	2300      	movs	r3, #0
 80026b0:	7866      	ldrb	r6, [r4, #1]
 80026b2:	9306      	str	r3, [sp, #24]
 80026b4:	4698      	mov	r8, r3
 80026b6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80026ba:	f104 0a01 	add.w	sl, r4, #1
 80026be:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80026c2:	252b      	movs	r5, #43	; 0x2b
 80026c4:	f10a 0a01 	add.w	sl, sl, #1
 80026c8:	f1a6 0320 	sub.w	r3, r6, #32
 80026cc:	2b5a      	cmp	r3, #90	; 0x5a
 80026ce:	f200 842a 	bhi.w	8002f26 <_vfprintf_r+0x95e>
 80026d2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80026d6:	03aa      	.short	0x03aa
 80026d8:	04280428 	.word	0x04280428
 80026dc:	0428029c 	.word	0x0428029c
 80026e0:	04280428 	.word	0x04280428
 80026e4:	042802a7 	.word	0x042802a7
 80026e8:	02c60428 	.word	0x02c60428
 80026ec:	042802d2 	.word	0x042802d2
 80026f0:	02dc02d7 	.word	0x02dc02d7
 80026f4:	02f60428 	.word	0x02f60428
 80026f8:	026d026d 	.word	0x026d026d
 80026fc:	026d026d 	.word	0x026d026d
 8002700:	026d026d 	.word	0x026d026d
 8002704:	026d026d 	.word	0x026d026d
 8002708:	0428026d 	.word	0x0428026d
 800270c:	04280428 	.word	0x04280428
 8002710:	04280428 	.word	0x04280428
 8002714:	04280428 	.word	0x04280428
 8002718:	042802fb 	.word	0x042802fb
 800271c:	03f3033c 	.word	0x03f3033c
 8002720:	02fb02fb 	.word	0x02fb02fb
 8002724:	042802fb 	.word	0x042802fb
 8002728:	04280428 	.word	0x04280428
 800272c:	03ee0428 	.word	0x03ee0428
 8002730:	04280428 	.word	0x04280428
 8002734:	0428009a 	.word	0x0428009a
 8002738:	04280428 	.word	0x04280428
 800273c:	04280350 	.word	0x04280350
 8002740:	04280379 	.word	0x04280379
 8002744:	03900428 	.word	0x03900428
 8002748:	04280428 	.word	0x04280428
 800274c:	04280428 	.word	0x04280428
 8002750:	04280428 	.word	0x04280428
 8002754:	04280428 	.word	0x04280428
 8002758:	042802fb 	.word	0x042802fb
 800275c:	00c5033c 	.word	0x00c5033c
 8002760:	02fb02fb 	.word	0x02fb02fb
 8002764:	03d102fb 	.word	0x03d102fb
 8002768:	007000c5 	.word	0x007000c5
 800276c:	03b50428 	.word	0x03b50428
 8002770:	03c20428 	.word	0x03c20428
 8002774:	03de009c 	.word	0x03de009c
 8002778:	04280070 	.word	0x04280070
 800277c:	00720350 	.word	0x00720350
 8002780:	0428022c 	.word	0x0428022c
 8002784:	027c0428 	.word	0x027c0428
 8002788:	00720428 	.word	0x00720428
 800278c:	4649      	mov	r1, r9
 800278e:	9803      	ldr	r0, [sp, #12]
 8002790:	f001 fc9a 	bl	80040c8 <__swsetup_r>
 8002794:	b1a0      	cbz	r0, 80027c0 <_vfprintf_r+0x1f8>
 8002796:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800279a:	07d8      	lsls	r0, r3, #31
 800279c:	d404      	bmi.n	80027a8 <_vfprintf_r+0x1e0>
 800279e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80027a2:	0599      	lsls	r1, r3, #22
 80027a4:	f140 83b7 	bpl.w	8002f16 <_vfprintf_r+0x94e>
 80027a8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80027ac:	9305      	str	r3, [sp, #20]
 80027ae:	9805      	ldr	r0, [sp, #20]
 80027b0:	b057      	add	sp, #348	; 0x15c
 80027b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80027b6:	f048 0820 	orr.w	r8, r8, #32
 80027ba:	f89a 6000 	ldrb.w	r6, [sl]
 80027be:	e781      	b.n	80026c4 <_vfprintf_r+0xfc>
 80027c0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80027c4:	f003 021a 	and.w	r2, r3, #26
 80027c8:	2a0a      	cmp	r2, #10
 80027ca:	f47f af37 	bne.w	800263c <_vfprintf_r+0x74>
 80027ce:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80027d2:	2a00      	cmp	r2, #0
 80027d4:	f6ff af32 	blt.w	800263c <_vfprintf_r+0x74>
 80027d8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80027dc:	07d2      	lsls	r2, r2, #31
 80027de:	d405      	bmi.n	80027ec <_vfprintf_r+0x224>
 80027e0:	059b      	lsls	r3, r3, #22
 80027e2:	d403      	bmi.n	80027ec <_vfprintf_r+0x224>
 80027e4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80027e8:	f003 f8de 	bl	80059a8 <__retarget_lock_release_recursive>
 80027ec:	4623      	mov	r3, r4
 80027ee:	463a      	mov	r2, r7
 80027f0:	4649      	mov	r1, r9
 80027f2:	9803      	ldr	r0, [sp, #12]
 80027f4:	f001 fc26 	bl	8004044 <__sbprintf>
 80027f8:	9005      	str	r0, [sp, #20]
 80027fa:	9805      	ldr	r0, [sp, #20]
 80027fc:	b057      	add	sp, #348	; 0x15c
 80027fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002802:	9803      	ldr	r0, [sp, #12]
 8002804:	f002 fd7e 	bl	8005304 <__sinit>
 8002808:	e6f4      	b.n	80025f4 <_vfprintf_r+0x2c>
 800280a:	f048 0810 	orr.w	r8, r8, #16
 800280e:	f018 0f20 	tst.w	r8, #32
 8002812:	f000 836c 	beq.w	8002eee <_vfprintf_r+0x926>
 8002816:	9c08      	ldr	r4, [sp, #32]
 8002818:	3407      	adds	r4, #7
 800281a:	f024 0307 	bic.w	r3, r4, #7
 800281e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002822:	f103 0208 	add.w	r2, r3, #8
 8002826:	9208      	str	r2, [sp, #32]
 8002828:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800282c:	2200      	movs	r2, #0
 800282e:	e18c      	b.n	8002b4a <_vfprintf_r+0x582>
 8002830:	aa2a      	add	r2, sp, #168	; 0xa8
 8002832:	9907      	ldr	r1, [sp, #28]
 8002834:	9803      	ldr	r0, [sp, #12]
 8002836:	f004 f9f5 	bl	8006c24 <__sprint_r>
 800283a:	2800      	cmp	r0, #0
 800283c:	f041 8376 	bne.w	8003f2c <_vfprintf_r+0x1964>
 8002840:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002844:	e72c      	b.n	80026a0 <_vfprintf_r+0xd8>
 8002846:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800284a:	f003 f8ab 	bl	80059a4 <__retarget_lock_acquire_recursive>
 800284e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002852:	b293      	uxth	r3, r2
 8002854:	e6d8      	b.n	8002608 <_vfprintf_r+0x40>
 8002856:	bf00      	nop
	...
 8002860:	4643      	mov	r3, r8
 8002862:	069f      	lsls	r7, r3, #26
 8002864:	f140 832f 	bpl.w	8002ec6 <_vfprintf_r+0x8fe>
 8002868:	9c08      	ldr	r4, [sp, #32]
 800286a:	3407      	adds	r4, #7
 800286c:	f024 0407 	bic.w	r4, r4, #7
 8002870:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002874:	f104 0208 	add.w	r2, r4, #8
 8002878:	9208      	str	r2, [sp, #32]
 800287a:	4604      	mov	r4, r0
 800287c:	460d      	mov	r5, r1
 800287e:	2800      	cmp	r0, #0
 8002880:	f171 0200 	sbcs.w	r2, r1, #0
 8002884:	da05      	bge.n	8002892 <_vfprintf_r+0x2ca>
 8002886:	222d      	movs	r2, #45	; 0x2d
 8002888:	4264      	negs	r4, r4
 800288a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800288e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002892:	aa56      	add	r2, sp, #344	; 0x158
 8002894:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002898:	9204      	str	r2, [sp, #16]
 800289a:	f000 84b2 	beq.w	8003202 <_vfprintf_r+0xc3a>
 800289e:	2201      	movs	r2, #1
 80028a0:	ea54 0105 	orrs.w	r1, r4, r5
 80028a4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80028a8:	f040 8159 	bne.w	8002b5e <_vfprintf_r+0x596>
 80028ac:	f1b9 0f00 	cmp.w	r9, #0
 80028b0:	f040 8619 	bne.w	80034e6 <_vfprintf_r+0xf1e>
 80028b4:	2a00      	cmp	r2, #0
 80028b6:	f040 8508 	bne.w	80032ca <_vfprintf_r+0xd02>
 80028ba:	f013 0301 	ands.w	r3, r3, #1
 80028be:	af56      	add	r7, sp, #344	; 0x158
 80028c0:	9309      	str	r3, [sp, #36]	; 0x24
 80028c2:	d002      	beq.n	80028ca <_vfprintf_r+0x302>
 80028c4:	2330      	movs	r3, #48	; 0x30
 80028c6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80028ca:	2300      	movs	r3, #0
 80028cc:	930a      	str	r3, [sp, #40]	; 0x28
 80028ce:	930f      	str	r3, [sp, #60]	; 0x3c
 80028d0:	9314      	str	r3, [sp, #80]	; 0x50
 80028d2:	9311      	str	r3, [sp, #68]	; 0x44
 80028d4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80028d6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80028da:	454b      	cmp	r3, r9
 80028dc:	bfb8      	it	lt
 80028de:	464b      	movlt	r3, r9
 80028e0:	9304      	str	r3, [sp, #16]
 80028e2:	b112      	cbz	r2, 80028ea <_vfprintf_r+0x322>
 80028e4:	9b04      	ldr	r3, [sp, #16]
 80028e6:	3301      	adds	r3, #1
 80028e8:	9304      	str	r3, [sp, #16]
 80028ea:	f018 0302 	ands.w	r3, r8, #2
 80028ee:	930b      	str	r3, [sp, #44]	; 0x2c
 80028f0:	d002      	beq.n	80028f8 <_vfprintf_r+0x330>
 80028f2:	9b04      	ldr	r3, [sp, #16]
 80028f4:	3302      	adds	r3, #2
 80028f6:	9304      	str	r3, [sp, #16]
 80028f8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80028fc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80028fe:	930e      	str	r3, [sp, #56]	; 0x38
 8002900:	d13f      	bne.n	8002982 <_vfprintf_r+0x3ba>
 8002902:	9b06      	ldr	r3, [sp, #24]
 8002904:	9904      	ldr	r1, [sp, #16]
 8002906:	1a5d      	subs	r5, r3, r1
 8002908:	2d00      	cmp	r5, #0
 800290a:	dd3a      	ble.n	8002982 <_vfprintf_r+0x3ba>
 800290c:	2d10      	cmp	r5, #16
 800290e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002910:	dd29      	ble.n	8002966 <_vfprintf_r+0x39e>
 8002912:	4659      	mov	r1, fp
 8002914:	4620      	mov	r0, r4
 8002916:	9620      	str	r6, [sp, #128]	; 0x80
 8002918:	2310      	movs	r3, #16
 800291a:	9c03      	ldr	r4, [sp, #12]
 800291c:	9e07      	ldr	r6, [sp, #28]
 800291e:	46bb      	mov	fp, r7
 8002920:	e004      	b.n	800292c <_vfprintf_r+0x364>
 8002922:	3d10      	subs	r5, #16
 8002924:	2d10      	cmp	r5, #16
 8002926:	f101 0108 	add.w	r1, r1, #8
 800292a:	dd18      	ble.n	800295e <_vfprintf_r+0x396>
 800292c:	3201      	adds	r2, #1
 800292e:	4fba      	ldr	r7, [pc, #744]	; (8002c18 <_vfprintf_r+0x650>)
 8002930:	3010      	adds	r0, #16
 8002932:	2a07      	cmp	r2, #7
 8002934:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002938:	e9c1 7300 	strd	r7, r3, [r1]
 800293c:	ddf1      	ble.n	8002922 <_vfprintf_r+0x35a>
 800293e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002940:	4631      	mov	r1, r6
 8002942:	4620      	mov	r0, r4
 8002944:	930c      	str	r3, [sp, #48]	; 0x30
 8002946:	f004 f96d 	bl	8006c24 <__sprint_r>
 800294a:	2800      	cmp	r0, #0
 800294c:	f040 843d 	bne.w	80031ca <_vfprintf_r+0xc02>
 8002950:	3d10      	subs	r5, #16
 8002952:	2d10      	cmp	r5, #16
 8002954:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002958:	a92d      	add	r1, sp, #180	; 0xb4
 800295a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800295c:	dce6      	bgt.n	800292c <_vfprintf_r+0x364>
 800295e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002960:	465f      	mov	r7, fp
 8002962:	4604      	mov	r4, r0
 8002964:	468b      	mov	fp, r1
 8002966:	3201      	adds	r2, #1
 8002968:	4bab      	ldr	r3, [pc, #684]	; (8002c18 <_vfprintf_r+0x650>)
 800296a:	442c      	add	r4, r5
 800296c:	2a07      	cmp	r2, #7
 800296e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002972:	e9cb 3500 	strd	r3, r5, [fp]
 8002976:	f300 84ff 	bgt.w	8003378 <_vfprintf_r+0xdb0>
 800297a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800297e:	f10b 0b08 	add.w	fp, fp, #8
 8002982:	b172      	cbz	r2, 80029a2 <_vfprintf_r+0x3da>
 8002984:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002986:	3201      	adds	r2, #1
 8002988:	3401      	adds	r4, #1
 800298a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800298e:	2101      	movs	r1, #1
 8002990:	2a07      	cmp	r2, #7
 8002992:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002996:	e9cb 0100 	strd	r0, r1, [fp]
 800299a:	f300 8418 	bgt.w	80031ce <_vfprintf_r+0xc06>
 800299e:	f10b 0b08 	add.w	fp, fp, #8
 80029a2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80029a4:	b16b      	cbz	r3, 80029c2 <_vfprintf_r+0x3fa>
 80029a6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80029a8:	3301      	adds	r3, #1
 80029aa:	3402      	adds	r4, #2
 80029ac:	a923      	add	r1, sp, #140	; 0x8c
 80029ae:	2202      	movs	r2, #2
 80029b0:	2b07      	cmp	r3, #7
 80029b2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80029b6:	e9cb 1200 	strd	r1, r2, [fp]
 80029ba:	f300 8415 	bgt.w	80031e8 <_vfprintf_r+0xc20>
 80029be:	f10b 0b08 	add.w	fp, fp, #8
 80029c2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80029c4:	2b80      	cmp	r3, #128	; 0x80
 80029c6:	f000 8331 	beq.w	800302c <_vfprintf_r+0xa64>
 80029ca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80029cc:	eba9 0503 	sub.w	r5, r9, r3
 80029d0:	2d00      	cmp	r5, #0
 80029d2:	dd37      	ble.n	8002a44 <_vfprintf_r+0x47c>
 80029d4:	2d10      	cmp	r5, #16
 80029d6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80029d8:	4b90      	ldr	r3, [pc, #576]	; (8002c1c <_vfprintf_r+0x654>)
 80029da:	dd28      	ble.n	8002a2e <_vfprintf_r+0x466>
 80029dc:	4659      	mov	r1, fp
 80029de:	4620      	mov	r0, r4
 80029e0:	46bb      	mov	fp, r7
 80029e2:	f04f 0910 	mov.w	r9, #16
 80029e6:	4637      	mov	r7, r6
 80029e8:	461c      	mov	r4, r3
 80029ea:	9e07      	ldr	r6, [sp, #28]
 80029ec:	e004      	b.n	80029f8 <_vfprintf_r+0x430>
 80029ee:	3d10      	subs	r5, #16
 80029f0:	2d10      	cmp	r5, #16
 80029f2:	f101 0108 	add.w	r1, r1, #8
 80029f6:	dd15      	ble.n	8002a24 <_vfprintf_r+0x45c>
 80029f8:	3201      	adds	r2, #1
 80029fa:	3010      	adds	r0, #16
 80029fc:	2a07      	cmp	r2, #7
 80029fe:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002a02:	e9c1 4900 	strd	r4, r9, [r1]
 8002a06:	ddf2      	ble.n	80029ee <_vfprintf_r+0x426>
 8002a08:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a0a:	4631      	mov	r1, r6
 8002a0c:	9803      	ldr	r0, [sp, #12]
 8002a0e:	f004 f909 	bl	8006c24 <__sprint_r>
 8002a12:	2800      	cmp	r0, #0
 8002a14:	f040 83d9 	bne.w	80031ca <_vfprintf_r+0xc02>
 8002a18:	3d10      	subs	r5, #16
 8002a1a:	2d10      	cmp	r5, #16
 8002a1c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002a20:	a92d      	add	r1, sp, #180	; 0xb4
 8002a22:	dce9      	bgt.n	80029f8 <_vfprintf_r+0x430>
 8002a24:	463e      	mov	r6, r7
 8002a26:	4623      	mov	r3, r4
 8002a28:	465f      	mov	r7, fp
 8002a2a:	4604      	mov	r4, r0
 8002a2c:	468b      	mov	fp, r1
 8002a2e:	3201      	adds	r2, #1
 8002a30:	442c      	add	r4, r5
 8002a32:	2a07      	cmp	r2, #7
 8002a34:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002a38:	e9cb 3500 	strd	r3, r5, [fp]
 8002a3c:	f300 83ef 	bgt.w	800321e <_vfprintf_r+0xc56>
 8002a40:	f10b 0b08 	add.w	fp, fp, #8
 8002a44:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002a48:	f040 8280 	bne.w	8002f4c <_vfprintf_r+0x984>
 8002a4c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002a4e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002a50:	f8cb 7000 	str.w	r7, [fp]
 8002a54:	3301      	adds	r3, #1
 8002a56:	4414      	add	r4, r2
 8002a58:	2b07      	cmp	r3, #7
 8002a5a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002a5c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002a60:	932b      	str	r3, [sp, #172]	; 0xac
 8002a62:	f300 8392 	bgt.w	800318a <_vfprintf_r+0xbc2>
 8002a66:	f10b 0b08 	add.w	fp, fp, #8
 8002a6a:	f018 0f04 	tst.w	r8, #4
 8002a6e:	d03b      	beq.n	8002ae8 <_vfprintf_r+0x520>
 8002a70:	9b06      	ldr	r3, [sp, #24]
 8002a72:	9a04      	ldr	r2, [sp, #16]
 8002a74:	1a9d      	subs	r5, r3, r2
 8002a76:	2d00      	cmp	r5, #0
 8002a78:	dd36      	ble.n	8002ae8 <_vfprintf_r+0x520>
 8002a7a:	2d10      	cmp	r5, #16
 8002a7c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002a7e:	dd21      	ble.n	8002ac4 <_vfprintf_r+0x4fc>
 8002a80:	2610      	movs	r6, #16
 8002a82:	9f03      	ldr	r7, [sp, #12]
 8002a84:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002a88:	e004      	b.n	8002a94 <_vfprintf_r+0x4cc>
 8002a8a:	3d10      	subs	r5, #16
 8002a8c:	2d10      	cmp	r5, #16
 8002a8e:	f10b 0b08 	add.w	fp, fp, #8
 8002a92:	dd17      	ble.n	8002ac4 <_vfprintf_r+0x4fc>
 8002a94:	3301      	adds	r3, #1
 8002a96:	4a60      	ldr	r2, [pc, #384]	; (8002c18 <_vfprintf_r+0x650>)
 8002a98:	3410      	adds	r4, #16
 8002a9a:	2b07      	cmp	r3, #7
 8002a9c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002aa0:	e9cb 2600 	strd	r2, r6, [fp]
 8002aa4:	ddf1      	ble.n	8002a8a <_vfprintf_r+0x4c2>
 8002aa6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002aa8:	4641      	mov	r1, r8
 8002aaa:	4638      	mov	r0, r7
 8002aac:	f004 f8ba 	bl	8006c24 <__sprint_r>
 8002ab0:	2800      	cmp	r0, #0
 8002ab2:	f040 856c 	bne.w	800358e <_vfprintf_r+0xfc6>
 8002ab6:	3d10      	subs	r5, #16
 8002ab8:	2d10      	cmp	r5, #16
 8002aba:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002abe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ac2:	dce7      	bgt.n	8002a94 <_vfprintf_r+0x4cc>
 8002ac4:	3301      	adds	r3, #1
 8002ac6:	4a54      	ldr	r2, [pc, #336]	; (8002c18 <_vfprintf_r+0x650>)
 8002ac8:	442c      	add	r4, r5
 8002aca:	2b07      	cmp	r3, #7
 8002acc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ad0:	e9cb 2500 	strd	r2, r5, [fp]
 8002ad4:	dd08      	ble.n	8002ae8 <_vfprintf_r+0x520>
 8002ad6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ad8:	9907      	ldr	r1, [sp, #28]
 8002ada:	9803      	ldr	r0, [sp, #12]
 8002adc:	f004 f8a2 	bl	8006c24 <__sprint_r>
 8002ae0:	2800      	cmp	r0, #0
 8002ae2:	f040 82e9 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 8002ae6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ae8:	9904      	ldr	r1, [sp, #16]
 8002aea:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002aee:	428a      	cmp	r2, r1
 8002af0:	bfac      	ite	ge
 8002af2:	189b      	addge	r3, r3, r2
 8002af4:	185b      	addlt	r3, r3, r1
 8002af6:	9305      	str	r3, [sp, #20]
 8002af8:	2c00      	cmp	r4, #0
 8002afa:	f040 82d5 	bne.w	80030a8 <_vfprintf_r+0xae0>
 8002afe:	2300      	movs	r3, #0
 8002b00:	932b      	str	r3, [sp, #172]	; 0xac
 8002b02:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002b04:	b11b      	cbz	r3, 8002b0e <_vfprintf_r+0x546>
 8002b06:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002b08:	9803      	ldr	r0, [sp, #12]
 8002b0a:	f002 fc9d 	bl	8005448 <_free_r>
 8002b0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002b12:	4657      	mov	r7, sl
 8002b14:	783b      	ldrb	r3, [r7, #0]
 8002b16:	2b00      	cmp	r3, #0
 8002b18:	f47f ada7 	bne.w	800266a <_vfprintf_r+0xa2>
 8002b1c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002b1e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002b22:	2b00      	cmp	r3, #0
 8002b24:	f041 80e7 	bne.w	8003cf6 <_vfprintf_r+0x172e>
 8002b28:	2300      	movs	r3, #0
 8002b2a:	932b      	str	r3, [sp, #172]	; 0xac
 8002b2c:	e2cb      	b.n	80030c6 <_vfprintf_r+0xafe>
 8002b2e:	4643      	mov	r3, r8
 8002b30:	069a      	lsls	r2, r3, #26
 8002b32:	f140 814e 	bpl.w	8002dd2 <_vfprintf_r+0x80a>
 8002b36:	9c08      	ldr	r4, [sp, #32]
 8002b38:	3407      	adds	r4, #7
 8002b3a:	f024 0207 	bic.w	r2, r4, #7
 8002b3e:	f102 0108 	add.w	r1, r2, #8
 8002b42:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002b46:	9108      	str	r1, [sp, #32]
 8002b48:	2201      	movs	r2, #1
 8002b4a:	2100      	movs	r1, #0
 8002b4c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002b50:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002b54:	a956      	add	r1, sp, #344	; 0x158
 8002b56:	9104      	str	r1, [sp, #16]
 8002b58:	f47f aea2 	bne.w	80028a0 <_vfprintf_r+0x2d8>
 8002b5c:	4698      	mov	r8, r3
 8002b5e:	2a01      	cmp	r2, #1
 8002b60:	f000 8350 	beq.w	8003204 <_vfprintf_r+0xc3c>
 8002b64:	2a02      	cmp	r2, #2
 8002b66:	f000 831b 	beq.w	80031a0 <_vfprintf_r+0xbd8>
 8002b6a:	a956      	add	r1, sp, #344	; 0x158
 8002b6c:	e000      	b.n	8002b70 <_vfprintf_r+0x5a8>
 8002b6e:	4639      	mov	r1, r7
 8002b70:	08e2      	lsrs	r2, r4, #3
 8002b72:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002b76:	08e8      	lsrs	r0, r5, #3
 8002b78:	f004 0307 	and.w	r3, r4, #7
 8002b7c:	4605      	mov	r5, r0
 8002b7e:	4614      	mov	r4, r2
 8002b80:	3330      	adds	r3, #48	; 0x30
 8002b82:	ea54 0205 	orrs.w	r2, r4, r5
 8002b86:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002b8a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002b8e:	d1ee      	bne.n	8002b6e <_vfprintf_r+0x5a6>
 8002b90:	f018 0f01 	tst.w	r8, #1
 8002b94:	f000 8314 	beq.w	80031c0 <_vfprintf_r+0xbf8>
 8002b98:	2b30      	cmp	r3, #48	; 0x30
 8002b9a:	f000 8311 	beq.w	80031c0 <_vfprintf_r+0xbf8>
 8002b9e:	9a04      	ldr	r2, [sp, #16]
 8002ba0:	3902      	subs	r1, #2
 8002ba2:	2330      	movs	r3, #48	; 0x30
 8002ba4:	1a52      	subs	r2, r2, r1
 8002ba6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002baa:	9209      	str	r2, [sp, #36]	; 0x24
 8002bac:	460f      	mov	r7, r1
 8002bae:	e68c      	b.n	80028ca <_vfprintf_r+0x302>
 8002bb0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002bb4:	2200      	movs	r2, #0
 8002bb6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002bba:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002bbe:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002bc2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002bc6:	2b09      	cmp	r3, #9
 8002bc8:	d9f5      	bls.n	8002bb6 <_vfprintf_r+0x5ee>
 8002bca:	9206      	str	r2, [sp, #24]
 8002bcc:	e57c      	b.n	80026c8 <_vfprintf_r+0x100>
 8002bce:	4b14      	ldr	r3, [pc, #80]	; (8002c20 <_vfprintf_r+0x658>)
 8002bd0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002bd2:	f018 0f20 	tst.w	r8, #32
 8002bd6:	f000 8114 	beq.w	8002e02 <_vfprintf_r+0x83a>
 8002bda:	9c08      	ldr	r4, [sp, #32]
 8002bdc:	3407      	adds	r4, #7
 8002bde:	f024 0307 	bic.w	r3, r4, #7
 8002be2:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002be6:	f103 0208 	add.w	r2, r3, #8
 8002bea:	9208      	str	r2, [sp, #32]
 8002bec:	f018 0f01 	tst.w	r8, #1
 8002bf0:	d009      	beq.n	8002c06 <_vfprintf_r+0x63e>
 8002bf2:	ea54 0305 	orrs.w	r3, r4, r5
 8002bf6:	d006      	beq.n	8002c06 <_vfprintf_r+0x63e>
 8002bf8:	2330      	movs	r3, #48	; 0x30
 8002bfa:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002bfe:	f048 0802 	orr.w	r8, r8, #2
 8002c02:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002c06:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002c0a:	2202      	movs	r2, #2
 8002c0c:	e79d      	b.n	8002b4a <_vfprintf_r+0x582>
 8002c0e:	f048 0801 	orr.w	r8, r8, #1
 8002c12:	f89a 6000 	ldrb.w	r6, [sl]
 8002c16:	e555      	b.n	80026c4 <_vfprintf_r+0xfc>
 8002c18:	08007308 	.word	0x08007308
 8002c1c:	08007318 	.word	0x08007318
 8002c20:	080072d4 	.word	0x080072d4
 8002c24:	9e03      	ldr	r6, [sp, #12]
 8002c26:	4630      	mov	r0, r6
 8002c28:	f002 feaa 	bl	8005980 <_localeconv_r>
 8002c2c:	6843      	ldr	r3, [r0, #4]
 8002c2e:	9318      	str	r3, [sp, #96]	; 0x60
 8002c30:	4618      	mov	r0, r3
 8002c32:	f7fd fd05 	bl	8000640 <strlen>
 8002c36:	901b      	str	r0, [sp, #108]	; 0x6c
 8002c38:	4604      	mov	r4, r0
 8002c3a:	4630      	mov	r0, r6
 8002c3c:	f002 fea0 	bl	8005980 <_localeconv_r>
 8002c40:	6883      	ldr	r3, [r0, #8]
 8002c42:	931a      	str	r3, [sp, #104]	; 0x68
 8002c44:	2c00      	cmp	r4, #0
 8002c46:	f43f adb8 	beq.w	80027ba <_vfprintf_r+0x1f2>
 8002c4a:	f89a 6000 	ldrb.w	r6, [sl]
 8002c4e:	2b00      	cmp	r3, #0
 8002c50:	f43f ad38 	beq.w	80026c4 <_vfprintf_r+0xfc>
 8002c54:	781b      	ldrb	r3, [r3, #0]
 8002c56:	2b00      	cmp	r3, #0
 8002c58:	f43f ad34 	beq.w	80026c4 <_vfprintf_r+0xfc>
 8002c5c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002c60:	e530      	b.n	80026c4 <_vfprintf_r+0xfc>
 8002c62:	9b08      	ldr	r3, [sp, #32]
 8002c64:	f89a 6000 	ldrb.w	r6, [sl]
 8002c68:	681a      	ldr	r2, [r3, #0]
 8002c6a:	9206      	str	r2, [sp, #24]
 8002c6c:	2a00      	cmp	r2, #0
 8002c6e:	f103 0304 	add.w	r3, r3, #4
 8002c72:	f2c0 8697 	blt.w	80039a4 <_vfprintf_r+0x13dc>
 8002c76:	9308      	str	r3, [sp, #32]
 8002c78:	e524      	b.n	80026c4 <_vfprintf_r+0xfc>
 8002c7a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002c7e:	f89a 6000 	ldrb.w	r6, [sl]
 8002c82:	e51f      	b.n	80026c4 <_vfprintf_r+0xfc>
 8002c84:	f89a 6000 	ldrb.w	r6, [sl]
 8002c88:	f048 0804 	orr.w	r8, r8, #4
 8002c8c:	e51a      	b.n	80026c4 <_vfprintf_r+0xfc>
 8002c8e:	f89a 6000 	ldrb.w	r6, [sl]
 8002c92:	2e2a      	cmp	r6, #42	; 0x2a
 8002c94:	f10a 0201 	add.w	r2, sl, #1
 8002c98:	f001 81b0 	beq.w	8003ffc <_vfprintf_r+0x1a34>
 8002c9c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002ca0:	2b09      	cmp	r3, #9
 8002ca2:	4692      	mov	sl, r2
 8002ca4:	f04f 0900 	mov.w	r9, #0
 8002ca8:	f63f ad0e 	bhi.w	80026c8 <_vfprintf_r+0x100>
 8002cac:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002cb0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002cb4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002cb8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002cbc:	2b09      	cmp	r3, #9
 8002cbe:	d9f5      	bls.n	8002cac <_vfprintf_r+0x6e4>
 8002cc0:	e502      	b.n	80026c8 <_vfprintf_r+0x100>
 8002cc2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002cc6:	f89a 6000 	ldrb.w	r6, [sl]
 8002cca:	e4fb      	b.n	80026c4 <_vfprintf_r+0xfc>
 8002ccc:	9c08      	ldr	r4, [sp, #32]
 8002cce:	3407      	adds	r4, #7
 8002cd0:	f024 0407 	bic.w	r4, r4, #7
 8002cd4:	ed94 7b00 	vldr	d7, [r4]
 8002cd8:	ec52 1b17 	vmov	r1, r2, d7
 8002cdc:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002ce0:	931d      	str	r3, [sp, #116]	; 0x74
 8002ce2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002ce6:	3408      	adds	r4, #8
 8002ce8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002cec:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002cf0:	4bba      	ldr	r3, [pc, #744]	; (8002fdc <_vfprintf_r+0xa14>)
 8002cf2:	9408      	str	r4, [sp, #32]
 8002cf4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002cf8:	f7fe f9b8 	bl	800106c <__aeabi_dcmpun>
 8002cfc:	2800      	cmp	r0, #0
 8002cfe:	f040 846f 	bne.w	80035e0 <_vfprintf_r+0x1018>
 8002d02:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002d06:	4bb5      	ldr	r3, [pc, #724]	; (8002fdc <_vfprintf_r+0xa14>)
 8002d08:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002d0c:	f7fe f990 	bl	8001030 <__aeabi_dcmple>
 8002d10:	2800      	cmp	r0, #0
 8002d12:	f040 8465 	bne.w	80035e0 <_vfprintf_r+0x1018>
 8002d16:	2200      	movs	r2, #0
 8002d18:	2300      	movs	r3, #0
 8002d1a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002d1e:	f7fe f97d 	bl	800101c <__aeabi_dcmplt>
 8002d22:	2800      	cmp	r0, #0
 8002d24:	f040 855b 	bne.w	80037de <_vfprintf_r+0x1216>
 8002d28:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d2c:	4fac      	ldr	r7, [pc, #688]	; (8002fe0 <_vfprintf_r+0xa18>)
 8002d2e:	4bad      	ldr	r3, [pc, #692]	; (8002fe4 <_vfprintf_r+0xa1c>)
 8002d30:	2000      	movs	r0, #0
 8002d32:	2103      	movs	r1, #3
 8002d34:	9104      	str	r1, [sp, #16]
 8002d36:	900a      	str	r0, [sp, #40]	; 0x28
 8002d38:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002d3c:	2e47      	cmp	r6, #71	; 0x47
 8002d3e:	bfd8      	it	le
 8002d40:	461f      	movle	r7, r3
 8002d42:	9109      	str	r1, [sp, #36]	; 0x24
 8002d44:	4681      	mov	r9, r0
 8002d46:	900f      	str	r0, [sp, #60]	; 0x3c
 8002d48:	9014      	str	r0, [sp, #80]	; 0x50
 8002d4a:	9011      	str	r0, [sp, #68]	; 0x44
 8002d4c:	e5c9      	b.n	80028e2 <_vfprintf_r+0x31a>
 8002d4e:	9808      	ldr	r0, [sp, #32]
 8002d50:	2300      	movs	r3, #0
 8002d52:	6801      	ldr	r1, [r0, #0]
 8002d54:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002d58:	461a      	mov	r2, r3
 8002d5a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002d5e:	2301      	movs	r3, #1
 8002d60:	1d01      	adds	r1, r0, #4
 8002d62:	9304      	str	r3, [sp, #16]
 8002d64:	920a      	str	r2, [sp, #40]	; 0x28
 8002d66:	4691      	mov	r9, r2
 8002d68:	920f      	str	r2, [sp, #60]	; 0x3c
 8002d6a:	9214      	str	r2, [sp, #80]	; 0x50
 8002d6c:	9211      	str	r2, [sp, #68]	; 0x44
 8002d6e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002d72:	af3d      	add	r7, sp, #244	; 0xf4
 8002d74:	e5b9      	b.n	80028ea <_vfprintf_r+0x322>
 8002d76:	9b08      	ldr	r3, [sp, #32]
 8002d78:	681f      	ldr	r7, [r3, #0]
 8002d7a:	2500      	movs	r5, #0
 8002d7c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002d80:	1d1c      	adds	r4, r3, #4
 8002d82:	2f00      	cmp	r7, #0
 8002d84:	f000 8639 	beq.w	80039fa <_vfprintf_r+0x1432>
 8002d88:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002d8c:	f000 8711 	beq.w	8003bb2 <_vfprintf_r+0x15ea>
 8002d90:	464a      	mov	r2, r9
 8002d92:	4629      	mov	r1, r5
 8002d94:	4638      	mov	r0, r7
 8002d96:	f7fd fcc3 	bl	8000720 <memchr>
 8002d9a:	900a      	str	r0, [sp, #40]	; 0x28
 8002d9c:	2800      	cmp	r0, #0
 8002d9e:	f000 85e7 	beq.w	8003970 <_vfprintf_r+0x13a8>
 8002da2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002da4:	1bdb      	subs	r3, r3, r7
 8002da6:	9309      	str	r3, [sp, #36]	; 0x24
 8002da8:	46a9      	mov	r9, r5
 8002daa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002dae:	9408      	str	r4, [sp, #32]
 8002db0:	9304      	str	r3, [sp, #16]
 8002db2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002db6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002dba:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002dbe:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002dc2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002dc6:	e58c      	b.n	80028e2 <_vfprintf_r+0x31a>
 8002dc8:	f048 0310 	orr.w	r3, r8, #16
 8002dcc:	069a      	lsls	r2, r3, #26
 8002dce:	f53f aeb2 	bmi.w	8002b36 <_vfprintf_r+0x56e>
 8002dd2:	9a08      	ldr	r2, [sp, #32]
 8002dd4:	06df      	lsls	r7, r3, #27
 8002dd6:	f102 0104 	add.w	r1, r2, #4
 8002dda:	f100 837e 	bmi.w	80034da <_vfprintf_r+0xf12>
 8002dde:	065d      	lsls	r5, r3, #25
 8002de0:	9a08      	ldr	r2, [sp, #32]
 8002de2:	f100 84e4 	bmi.w	80037ae <_vfprintf_r+0x11e6>
 8002de6:	059c      	lsls	r4, r3, #22
 8002de8:	f140 8377 	bpl.w	80034da <_vfprintf_r+0xf12>
 8002dec:	7814      	ldrb	r4, [r2, #0]
 8002dee:	9108      	str	r1, [sp, #32]
 8002df0:	2500      	movs	r5, #0
 8002df2:	2201      	movs	r2, #1
 8002df4:	e6a9      	b.n	8002b4a <_vfprintf_r+0x582>
 8002df6:	4b7c      	ldr	r3, [pc, #496]	; (8002fe8 <_vfprintf_r+0xa20>)
 8002df8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002dfa:	f018 0f20 	tst.w	r8, #32
 8002dfe:	f47f aeec 	bne.w	8002bda <_vfprintf_r+0x612>
 8002e02:	9a08      	ldr	r2, [sp, #32]
 8002e04:	f018 0f10 	tst.w	r8, #16
 8002e08:	f102 0304 	add.w	r3, r2, #4
 8002e0c:	f040 8354 	bne.w	80034b8 <_vfprintf_r+0xef0>
 8002e10:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002e14:	9a08      	ldr	r2, [sp, #32]
 8002e16:	f040 84d0 	bne.w	80037ba <_vfprintf_r+0x11f2>
 8002e1a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002e1e:	f000 834b 	beq.w	80034b8 <_vfprintf_r+0xef0>
 8002e22:	7814      	ldrb	r4, [r2, #0]
 8002e24:	9308      	str	r3, [sp, #32]
 8002e26:	2500      	movs	r5, #0
 8002e28:	e6e0      	b.n	8002bec <_vfprintf_r+0x624>
 8002e2a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002e2e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e32:	2b00      	cmp	r3, #0
 8002e34:	f47f ac46 	bne.w	80026c4 <_vfprintf_r+0xfc>
 8002e38:	2320      	movs	r3, #32
 8002e3a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002e3e:	e441      	b.n	80026c4 <_vfprintf_r+0xfc>
 8002e40:	f89a 6000 	ldrb.w	r6, [sl]
 8002e44:	2e6c      	cmp	r6, #108	; 0x6c
 8002e46:	bf03      	ittte	eq
 8002e48:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002e4c:	f048 0820 	orreq.w	r8, r8, #32
 8002e50:	f10a 0a01 	addeq.w	sl, sl, #1
 8002e54:	f048 0810 	orrne.w	r8, r8, #16
 8002e58:	e434      	b.n	80026c4 <_vfprintf_r+0xfc>
 8002e5a:	9a08      	ldr	r2, [sp, #32]
 8002e5c:	f018 0f20 	tst.w	r8, #32
 8002e60:	f852 3b04 	ldr.w	r3, [r2], #4
 8002e64:	9208      	str	r2, [sp, #32]
 8002e66:	f000 83a1 	beq.w	80035ac <_vfprintf_r+0xfe4>
 8002e6a:	9a05      	ldr	r2, [sp, #20]
 8002e6c:	4610      	mov	r0, r2
 8002e6e:	17d1      	asrs	r1, r2, #31
 8002e70:	e9c3 0100 	strd	r0, r1, [r3]
 8002e74:	4657      	mov	r7, sl
 8002e76:	e64d      	b.n	8002b14 <_vfprintf_r+0x54c>
 8002e78:	f89a 6000 	ldrb.w	r6, [sl]
 8002e7c:	2e68      	cmp	r6, #104	; 0x68
 8002e7e:	bf03      	ittte	eq
 8002e80:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002e84:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002e88:	f10a 0a01 	addeq.w	sl, sl, #1
 8002e8c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002e90:	e418      	b.n	80026c4 <_vfprintf_r+0xfc>
 8002e92:	9908      	ldr	r1, [sp, #32]
 8002e94:	4b55      	ldr	r3, [pc, #340]	; (8002fec <_vfprintf_r+0xa24>)
 8002e96:	680c      	ldr	r4, [r1, #0]
 8002e98:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e9a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002e9e:	3104      	adds	r1, #4
 8002ea0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002ea4:	f048 0302 	orr.w	r3, r8, #2
 8002ea8:	9108      	str	r1, [sp, #32]
 8002eaa:	2500      	movs	r5, #0
 8002eac:	2202      	movs	r2, #2
 8002eae:	2678      	movs	r6, #120	; 0x78
 8002eb0:	e64b      	b.n	8002b4a <_vfprintf_r+0x582>
 8002eb2:	f048 0808 	orr.w	r8, r8, #8
 8002eb6:	f89a 6000 	ldrb.w	r6, [sl]
 8002eba:	e403      	b.n	80026c4 <_vfprintf_r+0xfc>
 8002ebc:	f048 0310 	orr.w	r3, r8, #16
 8002ec0:	069f      	lsls	r7, r3, #26
 8002ec2:	f53f acd1 	bmi.w	8002868 <_vfprintf_r+0x2a0>
 8002ec6:	9908      	ldr	r1, [sp, #32]
 8002ec8:	06dd      	lsls	r5, r3, #27
 8002eca:	f101 0204 	add.w	r2, r1, #4
 8002ece:	f100 82fd 	bmi.w	80034cc <_vfprintf_r+0xf04>
 8002ed2:	065c      	lsls	r4, r3, #25
 8002ed4:	9908      	ldr	r1, [sp, #32]
 8002ed6:	f100 8475 	bmi.w	80037c4 <_vfprintf_r+0x11fc>
 8002eda:	0598      	lsls	r0, r3, #22
 8002edc:	f140 82f6 	bpl.w	80034cc <_vfprintf_r+0xf04>
 8002ee0:	f991 4000 	ldrsb.w	r4, [r1]
 8002ee4:	9208      	str	r2, [sp, #32]
 8002ee6:	17e5      	asrs	r5, r4, #31
 8002ee8:	4620      	mov	r0, r4
 8002eea:	4629      	mov	r1, r5
 8002eec:	e4c7      	b.n	800287e <_vfprintf_r+0x2b6>
 8002eee:	9a08      	ldr	r2, [sp, #32]
 8002ef0:	f018 0f10 	tst.w	r8, #16
 8002ef4:	f102 0304 	add.w	r3, r2, #4
 8002ef8:	f040 82e3 	bne.w	80034c2 <_vfprintf_r+0xefa>
 8002efc:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002f00:	9a08      	ldr	r2, [sp, #32]
 8002f02:	f040 8467 	bne.w	80037d4 <_vfprintf_r+0x120c>
 8002f06:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002f0a:	f000 82da 	beq.w	80034c2 <_vfprintf_r+0xefa>
 8002f0e:	7814      	ldrb	r4, [r2, #0]
 8002f10:	9308      	str	r3, [sp, #32]
 8002f12:	2500      	movs	r5, #0
 8002f14:	e488      	b.n	8002828 <_vfprintf_r+0x260>
 8002f16:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002f1a:	f002 fd45 	bl	80059a8 <__retarget_lock_release_recursive>
 8002f1e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002f22:	9305      	str	r3, [sp, #20]
 8002f24:	e443      	b.n	80027ae <_vfprintf_r+0x1e6>
 8002f26:	2e00      	cmp	r6, #0
 8002f28:	f43f adf8 	beq.w	8002b1c <_vfprintf_r+0x554>
 8002f2c:	2300      	movs	r3, #0
 8002f2e:	2101      	movs	r1, #1
 8002f30:	461a      	mov	r2, r3
 8002f32:	9104      	str	r1, [sp, #16]
 8002f34:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002f38:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002f3c:	930a      	str	r3, [sp, #40]	; 0x28
 8002f3e:	4699      	mov	r9, r3
 8002f40:	930f      	str	r3, [sp, #60]	; 0x3c
 8002f42:	9314      	str	r3, [sp, #80]	; 0x50
 8002f44:	9311      	str	r3, [sp, #68]	; 0x44
 8002f46:	9109      	str	r1, [sp, #36]	; 0x24
 8002f48:	af3d      	add	r7, sp, #244	; 0xf4
 8002f4a:	e4ce      	b.n	80028ea <_vfprintf_r+0x322>
 8002f4c:	2e65      	cmp	r6, #101	; 0x65
 8002f4e:	f340 80ca 	ble.w	80030e6 <_vfprintf_r+0xb1e>
 8002f52:	2200      	movs	r2, #0
 8002f54:	2300      	movs	r3, #0
 8002f56:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002f5a:	f7fe f855 	bl	8001008 <__aeabi_dcmpeq>
 8002f5e:	2800      	cmp	r0, #0
 8002f60:	f000 8169 	beq.w	8003236 <_vfprintf_r+0xc6e>
 8002f64:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f66:	4a22      	ldr	r2, [pc, #136]	; (8002ff0 <_vfprintf_r+0xa28>)
 8002f68:	f8cb 2000 	str.w	r2, [fp]
 8002f6c:	3301      	adds	r3, #1
 8002f6e:	3401      	adds	r4, #1
 8002f70:	2201      	movs	r2, #1
 8002f72:	2b07      	cmp	r3, #7
 8002f74:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f78:	f8cb 2004 	str.w	r2, [fp, #4]
 8002f7c:	f300 8406 	bgt.w	800378c <_vfprintf_r+0x11c4>
 8002f80:	f10b 0b08 	add.w	fp, fp, #8
 8002f84:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002f86:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002f88:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f8a:	4293      	cmp	r3, r2
 8002f8c:	db03      	blt.n	8002f96 <_vfprintf_r+0x9ce>
 8002f8e:	f018 0f01 	tst.w	r8, #1
 8002f92:	f43f ad6a 	beq.w	8002a6a <_vfprintf_r+0x4a2>
 8002f96:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f98:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f9a:	f8cb 2000 	str.w	r2, [fp]
 8002f9e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002fa0:	f8cb 2004 	str.w	r2, [fp, #4]
 8002fa4:	3301      	adds	r3, #1
 8002fa6:	4414      	add	r4, r2
 8002fa8:	2b07      	cmp	r3, #7
 8002faa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002fae:	f300 8517 	bgt.w	80039e0 <_vfprintf_r+0x1418>
 8002fb2:	f10b 0b08 	add.w	fp, fp, #8
 8002fb6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002fb8:	1e5d      	subs	r5, r3, #1
 8002fba:	2d00      	cmp	r5, #0
 8002fbc:	f77f ad55 	ble.w	8002a6a <_vfprintf_r+0x4a2>
 8002fc0:	2d10      	cmp	r5, #16
 8002fc2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002fc4:	4b0b      	ldr	r3, [pc, #44]	; (8002ff4 <_vfprintf_r+0xa2c>)
 8002fc6:	f340 82e7 	ble.w	8003598 <_vfprintf_r+0xfd0>
 8002fca:	4619      	mov	r1, r3
 8002fcc:	2610      	movs	r6, #16
 8002fce:	4623      	mov	r3, r4
 8002fd0:	9f03      	ldr	r7, [sp, #12]
 8002fd2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002fd6:	460c      	mov	r4, r1
 8002fd8:	e014      	b.n	8003004 <_vfprintf_r+0xa3c>
 8002fda:	bf00      	nop
 8002fdc:	7fefffff 	.word	0x7fefffff
 8002fe0:	080072c8 	.word	0x080072c8
 8002fe4:	080072c4 	.word	0x080072c4
 8002fe8:	080072e8 	.word	0x080072e8
 8002fec:	080072d4 	.word	0x080072d4
 8002ff0:	08007304 	.word	0x08007304
 8002ff4:	08007318 	.word	0x08007318
 8002ff8:	f10b 0b08 	add.w	fp, fp, #8
 8002ffc:	3d10      	subs	r5, #16
 8002ffe:	2d10      	cmp	r5, #16
 8003000:	f340 82c7 	ble.w	8003592 <_vfprintf_r+0xfca>
 8003004:	3201      	adds	r2, #1
 8003006:	3310      	adds	r3, #16
 8003008:	2a07      	cmp	r2, #7
 800300a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800300e:	e9cb 4600 	strd	r4, r6, [fp]
 8003012:	ddf1      	ble.n	8002ff8 <_vfprintf_r+0xa30>
 8003014:	aa2a      	add	r2, sp, #168	; 0xa8
 8003016:	4649      	mov	r1, r9
 8003018:	4638      	mov	r0, r7
 800301a:	f003 fe03 	bl	8006c24 <__sprint_r>
 800301e:	2800      	cmp	r0, #0
 8003020:	d14c      	bne.n	80030bc <_vfprintf_r+0xaf4>
 8003022:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003026:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800302a:	e7e7      	b.n	8002ffc <_vfprintf_r+0xa34>
 800302c:	9b06      	ldr	r3, [sp, #24]
 800302e:	9a04      	ldr	r2, [sp, #16]
 8003030:	1a9d      	subs	r5, r3, r2
 8003032:	2d00      	cmp	r5, #0
 8003034:	f77f acc9 	ble.w	80029ca <_vfprintf_r+0x402>
 8003038:	2d10      	cmp	r5, #16
 800303a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800303c:	4bbc      	ldr	r3, [pc, #752]	; (8003330 <_vfprintf_r+0xd68>)
 800303e:	dd27      	ble.n	8003090 <_vfprintf_r+0xac8>
 8003040:	4659      	mov	r1, fp
 8003042:	4620      	mov	r0, r4
 8003044:	46bb      	mov	fp, r7
 8003046:	461c      	mov	r4, r3
 8003048:	4637      	mov	r7, r6
 800304a:	9e07      	ldr	r6, [sp, #28]
 800304c:	e004      	b.n	8003058 <_vfprintf_r+0xa90>
 800304e:	3d10      	subs	r5, #16
 8003050:	2d10      	cmp	r5, #16
 8003052:	f101 0108 	add.w	r1, r1, #8
 8003056:	dd16      	ble.n	8003086 <_vfprintf_r+0xabe>
 8003058:	3201      	adds	r2, #1
 800305a:	3010      	adds	r0, #16
 800305c:	2310      	movs	r3, #16
 800305e:	2a07      	cmp	r2, #7
 8003060:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003064:	600c      	str	r4, [r1, #0]
 8003066:	604b      	str	r3, [r1, #4]
 8003068:	ddf1      	ble.n	800304e <_vfprintf_r+0xa86>
 800306a:	aa2a      	add	r2, sp, #168	; 0xa8
 800306c:	4631      	mov	r1, r6
 800306e:	9803      	ldr	r0, [sp, #12]
 8003070:	f003 fdd8 	bl	8006c24 <__sprint_r>
 8003074:	2800      	cmp	r0, #0
 8003076:	f040 80a8 	bne.w	80031ca <_vfprintf_r+0xc02>
 800307a:	3d10      	subs	r5, #16
 800307c:	2d10      	cmp	r5, #16
 800307e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003082:	a92d      	add	r1, sp, #180	; 0xb4
 8003084:	dce8      	bgt.n	8003058 <_vfprintf_r+0xa90>
 8003086:	463e      	mov	r6, r7
 8003088:	4623      	mov	r3, r4
 800308a:	465f      	mov	r7, fp
 800308c:	4604      	mov	r4, r0
 800308e:	468b      	mov	fp, r1
 8003090:	3201      	adds	r2, #1
 8003092:	442c      	add	r4, r5
 8003094:	2a07      	cmp	r2, #7
 8003096:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800309a:	e9cb 3500 	strd	r3, r5, [fp]
 800309e:	f300 8292 	bgt.w	80035c6 <_vfprintf_r+0xffe>
 80030a2:	f10b 0b08 	add.w	fp, fp, #8
 80030a6:	e490      	b.n	80029ca <_vfprintf_r+0x402>
 80030a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80030aa:	9907      	ldr	r1, [sp, #28]
 80030ac:	9803      	ldr	r0, [sp, #12]
 80030ae:	f003 fdb9 	bl	8006c24 <__sprint_r>
 80030b2:	2800      	cmp	r0, #0
 80030b4:	f43f ad23 	beq.w	8002afe <_vfprintf_r+0x536>
 80030b8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80030bc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80030be:	b111      	cbz	r1, 80030c6 <_vfprintf_r+0xafe>
 80030c0:	9803      	ldr	r0, [sp, #12]
 80030c2:	f002 f9c1 	bl	8005448 <_free_r>
 80030c6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80030ca:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80030ce:	07d0      	lsls	r0, r2, #31
 80030d0:	d402      	bmi.n	80030d8 <_vfprintf_r+0xb10>
 80030d2:	0599      	lsls	r1, r3, #22
 80030d4:	f140 81d0 	bpl.w	8003478 <_vfprintf_r+0xeb0>
 80030d8:	065a      	lsls	r2, r3, #25
 80030da:	f53f ab65 	bmi.w	80027a8 <_vfprintf_r+0x1e0>
 80030de:	9805      	ldr	r0, [sp, #20]
 80030e0:	b057      	add	sp, #348	; 0x15c
 80030e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80030e6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030e8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030ea:	2a01      	cmp	r2, #1
 80030ec:	f104 0401 	add.w	r4, r4, #1
 80030f0:	f103 0501 	add.w	r5, r3, #1
 80030f4:	f10b 0608 	add.w	r6, fp, #8
 80030f8:	f340 811c 	ble.w	8003334 <_vfprintf_r+0xd6c>
 80030fc:	2301      	movs	r3, #1
 80030fe:	2d07      	cmp	r5, #7
 8003100:	f8cb 7000 	str.w	r7, [fp]
 8003104:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003108:	f8cb 3004 	str.w	r3, [fp, #4]
 800310c:	f300 81bb 	bgt.w	8003486 <_vfprintf_r+0xebe>
 8003110:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003112:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003114:	1c69      	adds	r1, r5, #1
 8003116:	441c      	add	r4, r3
 8003118:	2907      	cmp	r1, #7
 800311a:	910b      	str	r1, [sp, #44]	; 0x2c
 800311c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003120:	e9c6 2300 	strd	r2, r3, [r6]
 8003124:	f300 81bb 	bgt.w	800349e <_vfprintf_r+0xed6>
 8003128:	3608      	adds	r6, #8
 800312a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800312c:	1c53      	adds	r3, r2, #1
 800312e:	461d      	mov	r5, r3
 8003130:	9509      	str	r5, [sp, #36]	; 0x24
 8003132:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003134:	930e      	str	r3, [sp, #56]	; 0x38
 8003136:	2200      	movs	r2, #0
 8003138:	2300      	movs	r3, #0
 800313a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800313e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003142:	f106 0b08 	add.w	fp, r6, #8
 8003146:	f7fd ff5f 	bl	8001008 <__aeabi_dcmpeq>
 800314a:	2800      	cmp	r0, #0
 800314c:	f040 80c2 	bne.w	80032d4 <_vfprintf_r+0xd0c>
 8003150:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003152:	f8c6 9004 	str.w	r9, [r6, #4]
 8003156:	3701      	adds	r7, #1
 8003158:	444c      	add	r4, r9
 800315a:	2d07      	cmp	r5, #7
 800315c:	6037      	str	r7, [r6, #0]
 800315e:	942c      	str	r4, [sp, #176]	; 0xb0
 8003160:	952b      	str	r5, [sp, #172]	; 0xac
 8003162:	f300 80f9 	bgt.w	8003358 <_vfprintf_r+0xd90>
 8003166:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003168:	f106 0310 	add.w	r3, r6, #16
 800316c:	3202      	adds	r2, #2
 800316e:	465e      	mov	r6, fp
 8003170:	9209      	str	r2, [sp, #36]	; 0x24
 8003172:	469b      	mov	fp, r3
 8003174:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003176:	6072      	str	r2, [r6, #4]
 8003178:	4414      	add	r4, r2
 800317a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800317c:	942c      	str	r4, [sp, #176]	; 0xb0
 800317e:	ab26      	add	r3, sp, #152	; 0x98
 8003180:	2a07      	cmp	r2, #7
 8003182:	922b      	str	r2, [sp, #172]	; 0xac
 8003184:	6033      	str	r3, [r6, #0]
 8003186:	f77f ac70 	ble.w	8002a6a <_vfprintf_r+0x4a2>
 800318a:	aa2a      	add	r2, sp, #168	; 0xa8
 800318c:	9907      	ldr	r1, [sp, #28]
 800318e:	9803      	ldr	r0, [sp, #12]
 8003190:	f003 fd48 	bl	8006c24 <__sprint_r>
 8003194:	2800      	cmp	r0, #0
 8003196:	d18f      	bne.n	80030b8 <_vfprintf_r+0xaf0>
 8003198:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800319a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800319e:	e464      	b.n	8002a6a <_vfprintf_r+0x4a2>
 80031a0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80031a2:	af56      	add	r7, sp, #344	; 0x158
 80031a4:	0923      	lsrs	r3, r4, #4
 80031a6:	f004 010f 	and.w	r1, r4, #15
 80031aa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80031ae:	092a      	lsrs	r2, r5, #4
 80031b0:	461c      	mov	r4, r3
 80031b2:	4615      	mov	r5, r2
 80031b4:	5c43      	ldrb	r3, [r0, r1]
 80031b6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80031ba:	ea54 0305 	orrs.w	r3, r4, r5
 80031be:	d1f1      	bne.n	80031a4 <_vfprintf_r+0xbdc>
 80031c0:	9b04      	ldr	r3, [sp, #16]
 80031c2:	1bdb      	subs	r3, r3, r7
 80031c4:	9309      	str	r3, [sp, #36]	; 0x24
 80031c6:	f7ff bb80 	b.w	80028ca <_vfprintf_r+0x302>
 80031ca:	46b1      	mov	r9, r6
 80031cc:	e776      	b.n	80030bc <_vfprintf_r+0xaf4>
 80031ce:	aa2a      	add	r2, sp, #168	; 0xa8
 80031d0:	9907      	ldr	r1, [sp, #28]
 80031d2:	9803      	ldr	r0, [sp, #12]
 80031d4:	f003 fd26 	bl	8006c24 <__sprint_r>
 80031d8:	2800      	cmp	r0, #0
 80031da:	f47f af6d 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 80031de:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031e4:	f7ff bbdd 	b.w	80029a2 <_vfprintf_r+0x3da>
 80031e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80031ea:	9907      	ldr	r1, [sp, #28]
 80031ec:	9803      	ldr	r0, [sp, #12]
 80031ee:	f003 fd19 	bl	8006c24 <__sprint_r>
 80031f2:	2800      	cmp	r0, #0
 80031f4:	f47f af60 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 80031f8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031fa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031fe:	f7ff bbe0 	b.w	80029c2 <_vfprintf_r+0x3fa>
 8003202:	4698      	mov	r8, r3
 8003204:	2d00      	cmp	r5, #0
 8003206:	bf08      	it	eq
 8003208:	2c0a      	cmpeq	r4, #10
 800320a:	f080 8170 	bcs.w	80034ee <_vfprintf_r+0xf26>
 800320e:	af56      	add	r7, sp, #344	; 0x158
 8003210:	3430      	adds	r4, #48	; 0x30
 8003212:	2301      	movs	r3, #1
 8003214:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003218:	9309      	str	r3, [sp, #36]	; 0x24
 800321a:	f7ff bb56 	b.w	80028ca <_vfprintf_r+0x302>
 800321e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003220:	9907      	ldr	r1, [sp, #28]
 8003222:	9803      	ldr	r0, [sp, #12]
 8003224:	f003 fcfe 	bl	8006c24 <__sprint_r>
 8003228:	2800      	cmp	r0, #0
 800322a:	f47f af45 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 800322e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003230:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003234:	e406      	b.n	8002a44 <_vfprintf_r+0x47c>
 8003236:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003238:	2b00      	cmp	r3, #0
 800323a:	f340 8273 	ble.w	8003724 <_vfprintf_r+0x115c>
 800323e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003242:	4293      	cmp	r3, r2
 8003244:	bfa8      	it	ge
 8003246:	4613      	movge	r3, r2
 8003248:	2b00      	cmp	r3, #0
 800324a:	461d      	mov	r5, r3
 800324c:	dd0d      	ble.n	800326a <_vfprintf_r+0xca2>
 800324e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003250:	f8cb 7000 	str.w	r7, [fp]
 8003254:	3301      	adds	r3, #1
 8003256:	442c      	add	r4, r5
 8003258:	2b07      	cmp	r3, #7
 800325a:	942c      	str	r4, [sp, #176]	; 0xb0
 800325c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003260:	932b      	str	r3, [sp, #172]	; 0xac
 8003262:	f300 82c1 	bgt.w	80037e8 <_vfprintf_r+0x1220>
 8003266:	f10b 0b08 	add.w	fp, fp, #8
 800326a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800326c:	2d00      	cmp	r5, #0
 800326e:	bfa8      	it	ge
 8003270:	1b5b      	subge	r3, r3, r5
 8003272:	2b00      	cmp	r3, #0
 8003274:	461d      	mov	r5, r3
 8003276:	f340 8099 	ble.w	80033ac <_vfprintf_r+0xde4>
 800327a:	2d10      	cmp	r5, #16
 800327c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800327e:	4b2c      	ldr	r3, [pc, #176]	; (8003330 <_vfprintf_r+0xd68>)
 8003280:	f340 83db 	ble.w	8003a3a <_vfprintf_r+0x1472>
 8003284:	4618      	mov	r0, r3
 8003286:	4621      	mov	r1, r4
 8003288:	465b      	mov	r3, fp
 800328a:	2610      	movs	r6, #16
 800328c:	46bb      	mov	fp, r7
 800328e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003292:	9c07      	ldr	r4, [sp, #28]
 8003294:	4607      	mov	r7, r0
 8003296:	e004      	b.n	80032a2 <_vfprintf_r+0xcda>
 8003298:	3308      	adds	r3, #8
 800329a:	3d10      	subs	r5, #16
 800329c:	2d10      	cmp	r5, #16
 800329e:	f340 83c7 	ble.w	8003a30 <_vfprintf_r+0x1468>
 80032a2:	3201      	adds	r2, #1
 80032a4:	3110      	adds	r1, #16
 80032a6:	2a07      	cmp	r2, #7
 80032a8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80032ac:	e9c3 7600 	strd	r7, r6, [r3]
 80032b0:	ddf2      	ble.n	8003298 <_vfprintf_r+0xcd0>
 80032b2:	aa2a      	add	r2, sp, #168	; 0xa8
 80032b4:	4621      	mov	r1, r4
 80032b6:	4648      	mov	r0, r9
 80032b8:	f003 fcb4 	bl	8006c24 <__sprint_r>
 80032bc:	2800      	cmp	r0, #0
 80032be:	f040 84a5 	bne.w	8003c0c <_vfprintf_r+0x1644>
 80032c2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80032c6:	ab2d      	add	r3, sp, #180	; 0xb4
 80032c8:	e7e7      	b.n	800329a <_vfprintf_r+0xcd2>
 80032ca:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80032ce:	af56      	add	r7, sp, #344	; 0x158
 80032d0:	f7ff bafb 	b.w	80028ca <_vfprintf_r+0x302>
 80032d4:	f1b9 0f00 	cmp.w	r9, #0
 80032d8:	f77f af4c 	ble.w	8003174 <_vfprintf_r+0xbac>
 80032dc:	f1b9 0f10 	cmp.w	r9, #16
 80032e0:	4b13      	ldr	r3, [pc, #76]	; (8003330 <_vfprintf_r+0xd68>)
 80032e2:	f340 8659 	ble.w	8003f98 <_vfprintf_r+0x19d0>
 80032e6:	4619      	mov	r1, r3
 80032e8:	4622      	mov	r2, r4
 80032ea:	4633      	mov	r3, r6
 80032ec:	2710      	movs	r7, #16
 80032ee:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80032f2:	9c07      	ldr	r4, [sp, #28]
 80032f4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80032f6:	460e      	mov	r6, r1
 80032f8:	e007      	b.n	800330a <_vfprintf_r+0xd42>
 80032fa:	3308      	adds	r3, #8
 80032fc:	f1a9 0910 	sub.w	r9, r9, #16
 8003300:	f1b9 0f10 	cmp.w	r9, #16
 8003304:	f340 8353 	ble.w	80039ae <_vfprintf_r+0x13e6>
 8003308:	3501      	adds	r5, #1
 800330a:	3210      	adds	r2, #16
 800330c:	2d07      	cmp	r5, #7
 800330e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003312:	e9c3 6700 	strd	r6, r7, [r3]
 8003316:	ddf0      	ble.n	80032fa <_vfprintf_r+0xd32>
 8003318:	aa2a      	add	r2, sp, #168	; 0xa8
 800331a:	4621      	mov	r1, r4
 800331c:	4658      	mov	r0, fp
 800331e:	f003 fc81 	bl	8006c24 <__sprint_r>
 8003322:	2800      	cmp	r0, #0
 8003324:	f040 8472 	bne.w	8003c0c <_vfprintf_r+0x1644>
 8003328:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800332c:	ab2d      	add	r3, sp, #180	; 0xb4
 800332e:	e7e5      	b.n	80032fc <_vfprintf_r+0xd34>
 8003330:	08007318 	.word	0x08007318
 8003334:	f018 0f01 	tst.w	r8, #1
 8003338:	f47f aee0 	bne.w	80030fc <_vfprintf_r+0xb34>
 800333c:	2201      	movs	r2, #1
 800333e:	2d07      	cmp	r5, #7
 8003340:	f8cb 7000 	str.w	r7, [fp]
 8003344:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003348:	f8cb 2004 	str.w	r2, [fp, #4]
 800334c:	dc04      	bgt.n	8003358 <_vfprintf_r+0xd90>
 800334e:	3302      	adds	r3, #2
 8003350:	9309      	str	r3, [sp, #36]	; 0x24
 8003352:	f10b 0b10 	add.w	fp, fp, #16
 8003356:	e70d      	b.n	8003174 <_vfprintf_r+0xbac>
 8003358:	aa2a      	add	r2, sp, #168	; 0xa8
 800335a:	9907      	ldr	r1, [sp, #28]
 800335c:	9803      	ldr	r0, [sp, #12]
 800335e:	f003 fc61 	bl	8006c24 <__sprint_r>
 8003362:	2800      	cmp	r0, #0
 8003364:	f47f aea8 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 8003368:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800336c:	3301      	adds	r3, #1
 800336e:	9309      	str	r3, [sp, #36]	; 0x24
 8003370:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003374:	ae2d      	add	r6, sp, #180	; 0xb4
 8003376:	e6fd      	b.n	8003174 <_vfprintf_r+0xbac>
 8003378:	aa2a      	add	r2, sp, #168	; 0xa8
 800337a:	9907      	ldr	r1, [sp, #28]
 800337c:	9803      	ldr	r0, [sp, #12]
 800337e:	f003 fc51 	bl	8006c24 <__sprint_r>
 8003382:	2800      	cmp	r0, #0
 8003384:	f47f ae98 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 8003388:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800338c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800338e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003392:	f7ff baf6 	b.w	8002982 <_vfprintf_r+0x3ba>
 8003396:	aa2a      	add	r2, sp, #168	; 0xa8
 8003398:	9907      	ldr	r1, [sp, #28]
 800339a:	9803      	ldr	r0, [sp, #12]
 800339c:	f003 fc42 	bl	8006c24 <__sprint_r>
 80033a0:	2800      	cmp	r0, #0
 80033a2:	f47f ae89 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 80033a6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033ac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80033ae:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80033b2:	443b      	add	r3, r7
 80033b4:	4699      	mov	r9, r3
 80033b6:	f040 8357 	bne.w	8003a68 <_vfprintf_r+0x14a0>
 80033ba:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80033bc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033be:	4293      	cmp	r3, r2
 80033c0:	db49      	blt.n	8003456 <_vfprintf_r+0xe8e>
 80033c2:	f018 0f01 	tst.w	r8, #1
 80033c6:	d146      	bne.n	8003456 <_vfprintf_r+0xe8e>
 80033c8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033ca:	18bd      	adds	r5, r7, r2
 80033cc:	eba5 0509 	sub.w	r5, r5, r9
 80033d0:	1ad3      	subs	r3, r2, r3
 80033d2:	429d      	cmp	r5, r3
 80033d4:	bfa8      	it	ge
 80033d6:	461d      	movge	r5, r3
 80033d8:	2d00      	cmp	r5, #0
 80033da:	dd0d      	ble.n	80033f8 <_vfprintf_r+0xe30>
 80033dc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033de:	f8cb 9000 	str.w	r9, [fp]
 80033e2:	3201      	adds	r2, #1
 80033e4:	442c      	add	r4, r5
 80033e6:	2a07      	cmp	r2, #7
 80033e8:	942c      	str	r4, [sp, #176]	; 0xb0
 80033ea:	f8cb 5004 	str.w	r5, [fp, #4]
 80033ee:	922b      	str	r2, [sp, #172]	; 0xac
 80033f0:	f300 8462 	bgt.w	8003cb8 <_vfprintf_r+0x16f0>
 80033f4:	f10b 0b08 	add.w	fp, fp, #8
 80033f8:	2d00      	cmp	r5, #0
 80033fa:	bfac      	ite	ge
 80033fc:	1b5d      	subge	r5, r3, r5
 80033fe:	461d      	movlt	r5, r3
 8003400:	2d00      	cmp	r5, #0
 8003402:	f77f ab32 	ble.w	8002a6a <_vfprintf_r+0x4a2>
 8003406:	2d10      	cmp	r5, #16
 8003408:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800340a:	4bc5      	ldr	r3, [pc, #788]	; (8003720 <_vfprintf_r+0x1158>)
 800340c:	f340 80c4 	ble.w	8003598 <_vfprintf_r+0xfd0>
 8003410:	4619      	mov	r1, r3
 8003412:	2610      	movs	r6, #16
 8003414:	4623      	mov	r3, r4
 8003416:	9f03      	ldr	r7, [sp, #12]
 8003418:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800341c:	460c      	mov	r4, r1
 800341e:	e005      	b.n	800342c <_vfprintf_r+0xe64>
 8003420:	f10b 0b08 	add.w	fp, fp, #8
 8003424:	3d10      	subs	r5, #16
 8003426:	2d10      	cmp	r5, #16
 8003428:	f340 80b3 	ble.w	8003592 <_vfprintf_r+0xfca>
 800342c:	3201      	adds	r2, #1
 800342e:	3310      	adds	r3, #16
 8003430:	2a07      	cmp	r2, #7
 8003432:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003436:	e9cb 4600 	strd	r4, r6, [fp]
 800343a:	ddf1      	ble.n	8003420 <_vfprintf_r+0xe58>
 800343c:	aa2a      	add	r2, sp, #168	; 0xa8
 800343e:	4649      	mov	r1, r9
 8003440:	4638      	mov	r0, r7
 8003442:	f003 fbef 	bl	8006c24 <__sprint_r>
 8003446:	2800      	cmp	r0, #0
 8003448:	f47f ae38 	bne.w	80030bc <_vfprintf_r+0xaf4>
 800344c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003450:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003454:	e7e6      	b.n	8003424 <_vfprintf_r+0xe5c>
 8003456:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003458:	9916      	ldr	r1, [sp, #88]	; 0x58
 800345a:	f8cb 1000 	str.w	r1, [fp]
 800345e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003460:	f8cb 1004 	str.w	r1, [fp, #4]
 8003464:	3201      	adds	r2, #1
 8003466:	440c      	add	r4, r1
 8003468:	2a07      	cmp	r2, #7
 800346a:	942c      	str	r4, [sp, #176]	; 0xb0
 800346c:	922b      	str	r2, [sp, #172]	; 0xac
 800346e:	f300 828c 	bgt.w	800398a <_vfprintf_r+0x13c2>
 8003472:	f10b 0b08 	add.w	fp, fp, #8
 8003476:	e7a7      	b.n	80033c8 <_vfprintf_r+0xe00>
 8003478:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800347c:	f002 fa94 	bl	80059a8 <__retarget_lock_release_recursive>
 8003480:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003484:	e628      	b.n	80030d8 <_vfprintf_r+0xb10>
 8003486:	aa2a      	add	r2, sp, #168	; 0xa8
 8003488:	9907      	ldr	r1, [sp, #28]
 800348a:	9803      	ldr	r0, [sp, #12]
 800348c:	f003 fbca 	bl	8006c24 <__sprint_r>
 8003490:	2800      	cmp	r0, #0
 8003492:	f47f ae11 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 8003496:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800349a:	ae2d      	add	r6, sp, #180	; 0xb4
 800349c:	e638      	b.n	8003110 <_vfprintf_r+0xb48>
 800349e:	aa2a      	add	r2, sp, #168	; 0xa8
 80034a0:	9907      	ldr	r1, [sp, #28]
 80034a2:	9803      	ldr	r0, [sp, #12]
 80034a4:	f003 fbbe 	bl	8006c24 <__sprint_r>
 80034a8:	2800      	cmp	r0, #0
 80034aa:	f47f ae05 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 80034ae:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80034b2:	ae2d      	add	r6, sp, #180	; 0xb4
 80034b4:	930b      	str	r3, [sp, #44]	; 0x2c
 80034b6:	e638      	b.n	800312a <_vfprintf_r+0xb62>
 80034b8:	6814      	ldr	r4, [r2, #0]
 80034ba:	9308      	str	r3, [sp, #32]
 80034bc:	2500      	movs	r5, #0
 80034be:	f7ff bb95 	b.w	8002bec <_vfprintf_r+0x624>
 80034c2:	6814      	ldr	r4, [r2, #0]
 80034c4:	9308      	str	r3, [sp, #32]
 80034c6:	2500      	movs	r5, #0
 80034c8:	f7ff b9ae 	b.w	8002828 <_vfprintf_r+0x260>
 80034cc:	680c      	ldr	r4, [r1, #0]
 80034ce:	9208      	str	r2, [sp, #32]
 80034d0:	17e5      	asrs	r5, r4, #31
 80034d2:	4620      	mov	r0, r4
 80034d4:	4629      	mov	r1, r5
 80034d6:	f7ff b9d2 	b.w	800287e <_vfprintf_r+0x2b6>
 80034da:	6814      	ldr	r4, [r2, #0]
 80034dc:	9108      	str	r1, [sp, #32]
 80034de:	2201      	movs	r2, #1
 80034e0:	2500      	movs	r5, #0
 80034e2:	f7ff bb32 	b.w	8002b4a <_vfprintf_r+0x582>
 80034e6:	2a01      	cmp	r2, #1
 80034e8:	f47f ab3c 	bne.w	8002b64 <_vfprintf_r+0x59c>
 80034ec:	e68f      	b.n	800320e <_vfprintf_r+0xc46>
 80034ee:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80034f2:	2200      	movs	r2, #0
 80034f4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80034f8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80034fc:	af56      	add	r7, sp, #344	; 0x158
 80034fe:	4692      	mov	sl, r2
 8003500:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003504:	461e      	mov	r6, r3
 8003506:	e00a      	b.n	800351e <_vfprintf_r+0xf56>
 8003508:	2300      	movs	r3, #0
 800350a:	4620      	mov	r0, r4
 800350c:	4629      	mov	r1, r5
 800350e:	220a      	movs	r2, #10
 8003510:	f7fc fe76 	bl	8000200 <__aeabi_uldivmod>
 8003514:	4604      	mov	r4, r0
 8003516:	460d      	mov	r5, r1
 8003518:	ea54 0305 	orrs.w	r3, r4, r5
 800351c:	d029      	beq.n	8003572 <_vfprintf_r+0xfaa>
 800351e:	220a      	movs	r2, #10
 8003520:	2300      	movs	r3, #0
 8003522:	4620      	mov	r0, r4
 8003524:	4629      	mov	r1, r5
 8003526:	f7fc fe6b 	bl	8000200 <__aeabi_uldivmod>
 800352a:	3230      	adds	r2, #48	; 0x30
 800352c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003530:	f10a 0a01 	add.w	sl, sl, #1
 8003534:	3f01      	subs	r7, #1
 8003536:	2e00      	cmp	r6, #0
 8003538:	d0e6      	beq.n	8003508 <_vfprintf_r+0xf40>
 800353a:	f898 3000 	ldrb.w	r3, [r8]
 800353e:	459a      	cmp	sl, r3
 8003540:	d1e2      	bne.n	8003508 <_vfprintf_r+0xf40>
 8003542:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003546:	d0df      	beq.n	8003508 <_vfprintf_r+0xf40>
 8003548:	2d00      	cmp	r5, #0
 800354a:	bf08      	it	eq
 800354c:	2c0a      	cmpeq	r4, #10
 800354e:	d3db      	bcc.n	8003508 <_vfprintf_r+0xf40>
 8003550:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003552:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003554:	1aff      	subs	r7, r7, r3
 8003556:	461a      	mov	r2, r3
 8003558:	4638      	mov	r0, r7
 800355a:	f003 faf5 	bl	8006b48 <strncpy>
 800355e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003562:	2b00      	cmp	r3, #0
 8003564:	f000 8496 	beq.w	8003e94 <_vfprintf_r+0x18cc>
 8003568:	f108 0801 	add.w	r8, r8, #1
 800356c:	f04f 0a00 	mov.w	sl, #0
 8003570:	e7ca      	b.n	8003508 <_vfprintf_r+0xf40>
 8003572:	9b04      	ldr	r3, [sp, #16]
 8003574:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003578:	1bdb      	subs	r3, r3, r7
 800357a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800357e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003580:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003584:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003588:	9309      	str	r3, [sp, #36]	; 0x24
 800358a:	f7ff b99e 	b.w	80028ca <_vfprintf_r+0x302>
 800358e:	46c1      	mov	r9, r8
 8003590:	e594      	b.n	80030bc <_vfprintf_r+0xaf4>
 8003592:	4621      	mov	r1, r4
 8003594:	461c      	mov	r4, r3
 8003596:	460b      	mov	r3, r1
 8003598:	3201      	adds	r2, #1
 800359a:	442c      	add	r4, r5
 800359c:	2a07      	cmp	r2, #7
 800359e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035a2:	e9cb 3500 	strd	r3, r5, [fp]
 80035a6:	f77f aa5e 	ble.w	8002a66 <_vfprintf_r+0x49e>
 80035aa:	e5ee      	b.n	800318a <_vfprintf_r+0xbc2>
 80035ac:	f018 0f10 	tst.w	r8, #16
 80035b0:	f040 80f8 	bne.w	80037a4 <_vfprintf_r+0x11dc>
 80035b4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80035b8:	f000 8351 	beq.w	8003c5e <_vfprintf_r+0x1696>
 80035bc:	9a05      	ldr	r2, [sp, #20]
 80035be:	801a      	strh	r2, [r3, #0]
 80035c0:	4657      	mov	r7, sl
 80035c2:	f7ff baa7 	b.w	8002b14 <_vfprintf_r+0x54c>
 80035c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80035c8:	9907      	ldr	r1, [sp, #28]
 80035ca:	9803      	ldr	r0, [sp, #12]
 80035cc:	f003 fb2a 	bl	8006c24 <__sprint_r>
 80035d0:	2800      	cmp	r0, #0
 80035d2:	f47f ad71 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 80035d6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035dc:	f7ff b9f5 	b.w	80029ca <_vfprintf_r+0x402>
 80035e0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80035e4:	4602      	mov	r2, r0
 80035e6:	460b      	mov	r3, r1
 80035e8:	f7fd fd40 	bl	800106c <__aeabi_dcmpun>
 80035ec:	2800      	cmp	r0, #0
 80035ee:	f040 8491 	bne.w	8003f14 <_vfprintf_r+0x194c>
 80035f2:	2e61      	cmp	r6, #97	; 0x61
 80035f4:	f000 8111 	beq.w	800381a <_vfprintf_r+0x1252>
 80035f8:	2e41      	cmp	r6, #65	; 0x41
 80035fa:	f000 8377 	beq.w	8003cec <_vfprintf_r+0x1724>
 80035fe:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003602:	f026 0220 	bic.w	r2, r6, #32
 8003606:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800360a:	930e      	str	r3, [sp, #56]	; 0x38
 800360c:	9204      	str	r2, [sp, #16]
 800360e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003610:	f000 842d 	beq.w	8003e6e <_vfprintf_r+0x18a6>
 8003614:	2a47      	cmp	r2, #71	; 0x47
 8003616:	f000 8424 	beq.w	8003e62 <_vfprintf_r+0x189a>
 800361a:	2b00      	cmp	r3, #0
 800361c:	f2c0 82f9 	blt.w	8003c12 <_vfprintf_r+0x164a>
 8003620:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003624:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003628:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800362c:	2e66      	cmp	r6, #102	; 0x66
 800362e:	f000 83eb 	beq.w	8003e08 <_vfprintf_r+0x1840>
 8003632:	2e46      	cmp	r6, #70	; 0x46
 8003634:	f000 847e 	beq.w	8003f34 <_vfprintf_r+0x196c>
 8003638:	9b04      	ldr	r3, [sp, #16]
 800363a:	9803      	ldr	r0, [sp, #12]
 800363c:	2b45      	cmp	r3, #69	; 0x45
 800363e:	bf0c      	ite	eq
 8003640:	f109 0501 	addeq.w	r5, r9, #1
 8003644:	464d      	movne	r5, r9
 8003646:	aa28      	add	r2, sp, #160	; 0xa0
 8003648:	ab25      	add	r3, sp, #148	; 0x94
 800364a:	e9cd 3200 	strd	r3, r2, [sp]
 800364e:	2102      	movs	r1, #2
 8003650:	ab24      	add	r3, sp, #144	; 0x90
 8003652:	462a      	mov	r2, r5
 8003654:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003658:	f000 fe3e 	bl	80042d8 <_dtoa_r>
 800365c:	2e67      	cmp	r6, #103	; 0x67
 800365e:	4607      	mov	r7, r0
 8003660:	f040 849c 	bne.w	8003f9c <_vfprintf_r+0x19d4>
 8003664:	f018 0f01 	tst.w	r8, #1
 8003668:	f040 83f9 	bne.w	8003e5e <_vfprintf_r+0x1896>
 800366c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800366e:	4640      	mov	r0, r8
 8003670:	1bdb      	subs	r3, r3, r7
 8003672:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003676:	9310      	str	r3, [sp, #64]	; 0x40
 8003678:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800367a:	9311      	str	r3, [sp, #68]	; 0x44
 800367c:	9b04      	ldr	r3, [sp, #16]
 800367e:	2b47      	cmp	r3, #71	; 0x47
 8003680:	f000 81e7 	beq.w	8003a52 <_vfprintf_r+0x148a>
 8003684:	9b04      	ldr	r3, [sp, #16]
 8003686:	2b46      	cmp	r3, #70	; 0x46
 8003688:	f000 8300 	beq.w	8003c8c <_vfprintf_r+0x16c4>
 800368c:	9904      	ldr	r1, [sp, #16]
 800368e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003690:	b2f2      	uxtb	r2, r6
 8003692:	2941      	cmp	r1, #65	; 0x41
 8003694:	bf08      	it	eq
 8003696:	320f      	addeq	r2, #15
 8003698:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800369c:	bf06      	itte	eq
 800369e:	b2d2      	uxtbeq	r2, r2
 80036a0:	2101      	moveq	r1, #1
 80036a2:	2100      	movne	r1, #0
 80036a4:	2b00      	cmp	r3, #0
 80036a6:	9324      	str	r3, [sp, #144]	; 0x90
 80036a8:	bfb8      	it	lt
 80036aa:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80036ac:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80036b0:	bfba      	itte	lt
 80036b2:	f1c3 0301 	rsblt	r3, r3, #1
 80036b6:	222d      	movlt	r2, #45	; 0x2d
 80036b8:	222b      	movge	r2, #43	; 0x2b
 80036ba:	2b09      	cmp	r3, #9
 80036bc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80036c0:	f300 83f9 	bgt.w	8003eb6 <_vfprintf_r+0x18ee>
 80036c4:	2900      	cmp	r1, #0
 80036c6:	f040 8487 	bne.w	8003fd8 <_vfprintf_r+0x1a10>
 80036ca:	2230      	movs	r2, #48	; 0x30
 80036cc:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80036d0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80036d4:	3330      	adds	r3, #48	; 0x30
 80036d6:	7013      	strb	r3, [r2, #0]
 80036d8:	1c53      	adds	r3, r2, #1
 80036da:	aa26      	add	r2, sp, #152	; 0x98
 80036dc:	1a9b      	subs	r3, r3, r2
 80036de:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80036e0:	9319      	str	r3, [sp, #100]	; 0x64
 80036e2:	2a01      	cmp	r2, #1
 80036e4:	4413      	add	r3, r2
 80036e6:	9309      	str	r3, [sp, #36]	; 0x24
 80036e8:	f340 8442 	ble.w	8003f70 <_vfprintf_r+0x19a8>
 80036ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80036ee:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80036f0:	4413      	add	r3, r2
 80036f2:	9309      	str	r3, [sp, #36]	; 0x24
 80036f4:	2300      	movs	r3, #0
 80036f6:	930f      	str	r3, [sp, #60]	; 0x3c
 80036f8:	9314      	str	r3, [sp, #80]	; 0x50
 80036fa:	9311      	str	r3, [sp, #68]	; 0x44
 80036fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80036fe:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003702:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003706:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800370a:	9304      	str	r3, [sp, #16]
 800370c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800370e:	2b00      	cmp	r3, #0
 8003710:	f040 8275 	bne.w	8003bfe <_vfprintf_r+0x1636>
 8003714:	4699      	mov	r9, r3
 8003716:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800371a:	f7ff b8e2 	b.w	80028e2 <_vfprintf_r+0x31a>
 800371e:	bf00      	nop
 8003720:	08007318 	.word	0x08007318
 8003724:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003726:	49bd      	ldr	r1, [pc, #756]	; (8003a1c <_vfprintf_r+0x1454>)
 8003728:	f8cb 1000 	str.w	r1, [fp]
 800372c:	3201      	adds	r2, #1
 800372e:	3401      	adds	r4, #1
 8003730:	2101      	movs	r1, #1
 8003732:	2a07      	cmp	r2, #7
 8003734:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003738:	f8cb 1004 	str.w	r1, [fp, #4]
 800373c:	dc60      	bgt.n	8003800 <_vfprintf_r+0x1238>
 800373e:	f10b 0b08 	add.w	fp, fp, #8
 8003742:	b92b      	cbnz	r3, 8003750 <_vfprintf_r+0x1188>
 8003744:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003746:	b91a      	cbnz	r2, 8003750 <_vfprintf_r+0x1188>
 8003748:	f018 0f01 	tst.w	r8, #1
 800374c:	f43f a98d 	beq.w	8002a6a <_vfprintf_r+0x4a2>
 8003750:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003752:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003754:	f8cb 1000 	str.w	r1, [fp]
 8003758:	9915      	ldr	r1, [sp, #84]	; 0x54
 800375a:	f8cb 1004 	str.w	r1, [fp, #4]
 800375e:	3201      	adds	r2, #1
 8003760:	440c      	add	r4, r1
 8003762:	2a07      	cmp	r2, #7
 8003764:	942c      	str	r4, [sp, #176]	; 0xb0
 8003766:	922b      	str	r2, [sp, #172]	; 0xac
 8003768:	f300 8282 	bgt.w	8003c70 <_vfprintf_r+0x16a8>
 800376c:	f10b 0b08 	add.w	fp, fp, #8
 8003770:	2b00      	cmp	r3, #0
 8003772:	f2c0 82e7 	blt.w	8003d44 <_vfprintf_r+0x177c>
 8003776:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003778:	3201      	adds	r2, #1
 800377a:	441c      	add	r4, r3
 800377c:	2a07      	cmp	r2, #7
 800377e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003782:	e9cb 7300 	strd	r7, r3, [fp]
 8003786:	f77f a96e 	ble.w	8002a66 <_vfprintf_r+0x49e>
 800378a:	e4fe      	b.n	800318a <_vfprintf_r+0xbc2>
 800378c:	aa2a      	add	r2, sp, #168	; 0xa8
 800378e:	9907      	ldr	r1, [sp, #28]
 8003790:	9803      	ldr	r0, [sp, #12]
 8003792:	f003 fa47 	bl	8006c24 <__sprint_r>
 8003796:	2800      	cmp	r0, #0
 8003798:	f47f ac8e 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 800379c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037a0:	f7ff bbf0 	b.w	8002f84 <_vfprintf_r+0x9bc>
 80037a4:	9a05      	ldr	r2, [sp, #20]
 80037a6:	601a      	str	r2, [r3, #0]
 80037a8:	4657      	mov	r7, sl
 80037aa:	f7ff b9b3 	b.w	8002b14 <_vfprintf_r+0x54c>
 80037ae:	8814      	ldrh	r4, [r2, #0]
 80037b0:	9108      	str	r1, [sp, #32]
 80037b2:	2500      	movs	r5, #0
 80037b4:	2201      	movs	r2, #1
 80037b6:	f7ff b9c8 	b.w	8002b4a <_vfprintf_r+0x582>
 80037ba:	8814      	ldrh	r4, [r2, #0]
 80037bc:	9308      	str	r3, [sp, #32]
 80037be:	2500      	movs	r5, #0
 80037c0:	f7ff ba14 	b.w	8002bec <_vfprintf_r+0x624>
 80037c4:	f9b1 4000 	ldrsh.w	r4, [r1]
 80037c8:	9208      	str	r2, [sp, #32]
 80037ca:	17e5      	asrs	r5, r4, #31
 80037cc:	4620      	mov	r0, r4
 80037ce:	4629      	mov	r1, r5
 80037d0:	f7ff b855 	b.w	800287e <_vfprintf_r+0x2b6>
 80037d4:	8814      	ldrh	r4, [r2, #0]
 80037d6:	9308      	str	r3, [sp, #32]
 80037d8:	2500      	movs	r5, #0
 80037da:	f7ff b825 	b.w	8002828 <_vfprintf_r+0x260>
 80037de:	222d      	movs	r2, #45	; 0x2d
 80037e0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80037e4:	f7ff baa2 	b.w	8002d2c <_vfprintf_r+0x764>
 80037e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80037ea:	9907      	ldr	r1, [sp, #28]
 80037ec:	9803      	ldr	r0, [sp, #12]
 80037ee:	f003 fa19 	bl	8006c24 <__sprint_r>
 80037f2:	2800      	cmp	r0, #0
 80037f4:	f47f ac60 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 80037f8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037fa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037fe:	e534      	b.n	800326a <_vfprintf_r+0xca2>
 8003800:	aa2a      	add	r2, sp, #168	; 0xa8
 8003802:	9907      	ldr	r1, [sp, #28]
 8003804:	9803      	ldr	r0, [sp, #12]
 8003806:	f003 fa0d 	bl	8006c24 <__sprint_r>
 800380a:	2800      	cmp	r0, #0
 800380c:	f47f ac54 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 8003810:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003812:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003814:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003818:	e793      	b.n	8003742 <_vfprintf_r+0x117a>
 800381a:	2330      	movs	r3, #48	; 0x30
 800381c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003820:	2378      	movs	r3, #120	; 0x78
 8003822:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003826:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800382a:	f048 0402 	orr.w	r4, r8, #2
 800382e:	f300 82b0 	bgt.w	8003d92 <_vfprintf_r+0x17ca>
 8003832:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003836:	930e      	str	r3, [sp, #56]	; 0x38
 8003838:	f026 0320 	bic.w	r3, r6, #32
 800383c:	9304      	str	r3, [sp, #16]
 800383e:	2200      	movs	r2, #0
 8003840:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003842:	920a      	str	r2, [sp, #40]	; 0x28
 8003844:	46a0      	mov	r8, r4
 8003846:	af3d      	add	r7, sp, #244	; 0xf4
 8003848:	2b00      	cmp	r3, #0
 800384a:	f2c0 81e3 	blt.w	8003c14 <_vfprintf_r+0x164c>
 800384e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003852:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003856:	2300      	movs	r3, #0
 8003858:	930b      	str	r3, [sp, #44]	; 0x2c
 800385a:	2e61      	cmp	r6, #97	; 0x61
 800385c:	f000 8255 	beq.w	8003d0a <_vfprintf_r+0x1742>
 8003860:	2e41      	cmp	r6, #65	; 0x41
 8003862:	f47f aee3 	bne.w	800362c <_vfprintf_r+0x1064>
 8003866:	a824      	add	r0, sp, #144	; 0x90
 8003868:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800386c:	f003 f8e2 	bl	8006a34 <frexp>
 8003870:	2200      	movs	r2, #0
 8003872:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003876:	ec51 0b10 	vmov	r0, r1, d0
 800387a:	f7fd f95d 	bl	8000b38 <__aeabi_dmul>
 800387e:	2200      	movs	r2, #0
 8003880:	2300      	movs	r3, #0
 8003882:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003886:	f7fd fbbf 	bl	8001008 <__aeabi_dcmpeq>
 800388a:	2800      	cmp	r0, #0
 800388c:	f040 8305 	bne.w	8003e9a <_vfprintf_r+0x18d2>
 8003890:	4b63      	ldr	r3, [pc, #396]	; (8003a20 <_vfprintf_r+0x1458>)
 8003892:	9309      	str	r3, [sp, #36]	; 0x24
 8003894:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003898:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800389c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80038a0:	9721      	str	r7, [sp, #132]	; 0x84
 80038a2:	46b9      	mov	r9, r7
 80038a4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80038a8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80038ac:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80038b0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80038b4:	e003      	b.n	80038be <_vfprintf_r+0x12f6>
 80038b6:	f7fd fba7 	bl	8001008 <__aeabi_dcmpeq>
 80038ba:	bb20      	cbnz	r0, 8003906 <_vfprintf_r+0x133e>
 80038bc:	46a9      	mov	r9, r5
 80038be:	2200      	movs	r2, #0
 80038c0:	4b58      	ldr	r3, [pc, #352]	; (8003a24 <_vfprintf_r+0x145c>)
 80038c2:	4630      	mov	r0, r6
 80038c4:	4639      	mov	r1, r7
 80038c6:	f7fd f937 	bl	8000b38 <__aeabi_dmul>
 80038ca:	460f      	mov	r7, r1
 80038cc:	4606      	mov	r6, r0
 80038ce:	f7fd fbe3 	bl	8001098 <__aeabi_d2iz>
 80038d2:	4680      	mov	r8, r0
 80038d4:	f7fd f8c6 	bl	8000a64 <__aeabi_i2d>
 80038d8:	4602      	mov	r2, r0
 80038da:	460b      	mov	r3, r1
 80038dc:	4630      	mov	r0, r6
 80038de:	4639      	mov	r1, r7
 80038e0:	f7fc ff72 	bl	80007c8 <__aeabi_dsub>
 80038e4:	464d      	mov	r5, r9
 80038e6:	f81a c008 	ldrb.w	ip, [sl, r8]
 80038ea:	f805 cb01 	strb.w	ip, [r5], #1
 80038ee:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80038f2:	46a3      	mov	fp, r4
 80038f4:	4606      	mov	r6, r0
 80038f6:	460f      	mov	r7, r1
 80038f8:	f04f 0200 	mov.w	r2, #0
 80038fc:	f04f 0300 	mov.w	r3, #0
 8003900:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003904:	d1d7      	bne.n	80038b6 <_vfprintf_r+0x12ee>
 8003906:	4630      	mov	r0, r6
 8003908:	4639      	mov	r1, r7
 800390a:	2200      	movs	r2, #0
 800390c:	4b46      	ldr	r3, [pc, #280]	; (8003a28 <_vfprintf_r+0x1460>)
 800390e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003912:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003914:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003918:	4644      	mov	r4, r8
 800391a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800391e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003922:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003926:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800392a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800392c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003930:	f7fd fb92 	bl	8001058 <__aeabi_dcmpgt>
 8003934:	2800      	cmp	r0, #0
 8003936:	f040 8176 	bne.w	8003c26 <_vfprintf_r+0x165e>
 800393a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800393e:	2200      	movs	r2, #0
 8003940:	4b39      	ldr	r3, [pc, #228]	; (8003a28 <_vfprintf_r+0x1460>)
 8003942:	f7fd fb61 	bl	8001008 <__aeabi_dcmpeq>
 8003946:	b110      	cbz	r0, 800394e <_vfprintf_r+0x1386>
 8003948:	07e2      	lsls	r2, r4, #31
 800394a:	f100 816c 	bmi.w	8003c26 <_vfprintf_r+0x165e>
 800394e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003950:	2b00      	cmp	r3, #0
 8003952:	db07      	blt.n	8003964 <_vfprintf_r+0x139c>
 8003954:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003956:	3301      	adds	r3, #1
 8003958:	442b      	add	r3, r5
 800395a:	2230      	movs	r2, #48	; 0x30
 800395c:	f805 2b01 	strb.w	r2, [r5], #1
 8003960:	42ab      	cmp	r3, r5
 8003962:	d1fb      	bne.n	800395c <_vfprintf_r+0x1394>
 8003964:	1beb      	subs	r3, r5, r7
 8003966:	4640      	mov	r0, r8
 8003968:	9310      	str	r3, [sp, #64]	; 0x40
 800396a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800396e:	e683      	b.n	8003678 <_vfprintf_r+0x10b0>
 8003970:	f8cd 9010 	str.w	r9, [sp, #16]
 8003974:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003978:	9408      	str	r4, [sp, #32]
 800397a:	4681      	mov	r9, r0
 800397c:	900f      	str	r0, [sp, #60]	; 0x3c
 800397e:	9014      	str	r0, [sp, #80]	; 0x50
 8003980:	9011      	str	r0, [sp, #68]	; 0x44
 8003982:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003986:	f7fe bfac 	b.w	80028e2 <_vfprintf_r+0x31a>
 800398a:	aa2a      	add	r2, sp, #168	; 0xa8
 800398c:	9907      	ldr	r1, [sp, #28]
 800398e:	9803      	ldr	r0, [sp, #12]
 8003990:	f003 f948 	bl	8006c24 <__sprint_r>
 8003994:	2800      	cmp	r0, #0
 8003996:	f47f ab8f 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 800399a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800399c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800399e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039a2:	e511      	b.n	80033c8 <_vfprintf_r+0xe00>
 80039a4:	4252      	negs	r2, r2
 80039a6:	9206      	str	r2, [sp, #24]
 80039a8:	9308      	str	r3, [sp, #32]
 80039aa:	f7ff b96d 	b.w	8002c88 <_vfprintf_r+0x6c0>
 80039ae:	4614      	mov	r4, r2
 80039b0:	4632      	mov	r2, r6
 80039b2:	461e      	mov	r6, r3
 80039b4:	4613      	mov	r3, r2
 80039b6:	462a      	mov	r2, r5
 80039b8:	3201      	adds	r2, #1
 80039ba:	9209      	str	r2, [sp, #36]	; 0x24
 80039bc:	f106 0208 	add.w	r2, r6, #8
 80039c0:	e9c6 3900 	strd	r3, r9, [r6]
 80039c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039c6:	932b      	str	r3, [sp, #172]	; 0xac
 80039c8:	444c      	add	r4, r9
 80039ca:	2b07      	cmp	r3, #7
 80039cc:	942c      	str	r4, [sp, #176]	; 0xb0
 80039ce:	f73f acc3 	bgt.w	8003358 <_vfprintf_r+0xd90>
 80039d2:	3301      	adds	r3, #1
 80039d4:	9309      	str	r3, [sp, #36]	; 0x24
 80039d6:	f102 0b08 	add.w	fp, r2, #8
 80039da:	4616      	mov	r6, r2
 80039dc:	f7ff bbca 	b.w	8003174 <_vfprintf_r+0xbac>
 80039e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039e2:	9907      	ldr	r1, [sp, #28]
 80039e4:	9803      	ldr	r0, [sp, #12]
 80039e6:	f003 f91d 	bl	8006c24 <__sprint_r>
 80039ea:	2800      	cmp	r0, #0
 80039ec:	f47f ab64 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 80039f0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039f2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039f6:	f7ff bade 	b.w	8002fb6 <_vfprintf_r+0x9ee>
 80039fa:	464b      	mov	r3, r9
 80039fc:	2b06      	cmp	r3, #6
 80039fe:	bf28      	it	cs
 8003a00:	2306      	movcs	r3, #6
 8003a02:	46b9      	mov	r9, r7
 8003a04:	970f      	str	r7, [sp, #60]	; 0x3c
 8003a06:	9714      	str	r7, [sp, #80]	; 0x50
 8003a08:	9711      	str	r7, [sp, #68]	; 0x44
 8003a0a:	970a      	str	r7, [sp, #40]	; 0x28
 8003a0c:	463a      	mov	r2, r7
 8003a0e:	9304      	str	r3, [sp, #16]
 8003a10:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003a14:	4f05      	ldr	r7, [pc, #20]	; (8003a2c <_vfprintf_r+0x1464>)
 8003a16:	f7fe bf64 	b.w	80028e2 <_vfprintf_r+0x31a>
 8003a1a:	bf00      	nop
 8003a1c:	08007304 	.word	0x08007304
 8003a20:	080072e8 	.word	0x080072e8
 8003a24:	40300000 	.word	0x40300000
 8003a28:	3fe00000 	.word	0x3fe00000
 8003a2c:	080072fc 	.word	0x080072fc
 8003a30:	460c      	mov	r4, r1
 8003a32:	4639      	mov	r1, r7
 8003a34:	465f      	mov	r7, fp
 8003a36:	469b      	mov	fp, r3
 8003a38:	460b      	mov	r3, r1
 8003a3a:	3201      	adds	r2, #1
 8003a3c:	442c      	add	r4, r5
 8003a3e:	2a07      	cmp	r2, #7
 8003a40:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a44:	e9cb 3500 	strd	r3, r5, [fp]
 8003a48:	f73f aca5 	bgt.w	8003396 <_vfprintf_r+0xdce>
 8003a4c:	f10b 0b08 	add.w	fp, fp, #8
 8003a50:	e4ac      	b.n	80033ac <_vfprintf_r+0xde4>
 8003a52:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a54:	1cda      	adds	r2, r3, #3
 8003a56:	db02      	blt.n	8003a5e <_vfprintf_r+0x1496>
 8003a58:	4599      	cmp	r9, r3
 8003a5a:	f280 80b5 	bge.w	8003bc8 <_vfprintf_r+0x1600>
 8003a5e:	3e02      	subs	r6, #2
 8003a60:	f026 0320 	bic.w	r3, r6, #32
 8003a64:	9304      	str	r3, [sp, #16]
 8003a66:	e611      	b.n	800368c <_vfprintf_r+0x10c4>
 8003a68:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a6a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003a6e:	465a      	mov	r2, fp
 8003a70:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003a74:	18fb      	adds	r3, r7, r3
 8003a76:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003a7a:	970c      	str	r7, [sp, #48]	; 0x30
 8003a7c:	4eaf      	ldr	r6, [pc, #700]	; (8003d3c <_vfprintf_r+0x1774>)
 8003a7e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003a82:	9309      	str	r3, [sp, #36]	; 0x24
 8003a84:	464f      	mov	r7, r9
 8003a86:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003a8a:	4621      	mov	r1, r4
 8003a8c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003a8e:	2b00      	cmp	r3, #0
 8003a90:	d05b      	beq.n	8003b4a <_vfprintf_r+0x1582>
 8003a92:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a94:	2b00      	cmp	r3, #0
 8003a96:	d154      	bne.n	8003b42 <_vfprintf_r+0x157a>
 8003a98:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003a9a:	3b01      	subs	r3, #1
 8003a9c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003aa0:	9314      	str	r3, [sp, #80]	; 0x50
 8003aa2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003aa4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003aa6:	6010      	str	r0, [r2, #0]
 8003aa8:	3301      	adds	r3, #1
 8003aaa:	4459      	add	r1, fp
 8003aac:	2b07      	cmp	r3, #7
 8003aae:	912c      	str	r1, [sp, #176]	; 0xb0
 8003ab0:	f8c2 b004 	str.w	fp, [r2, #4]
 8003ab4:	932b      	str	r3, [sp, #172]	; 0xac
 8003ab6:	dc68      	bgt.n	8003b8a <_vfprintf_r+0x15c2>
 8003ab8:	3208      	adds	r2, #8
 8003aba:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003abc:	f898 3000 	ldrb.w	r3, [r8]
 8003ac0:	1bc5      	subs	r5, r0, r7
 8003ac2:	429d      	cmp	r5, r3
 8003ac4:	bfa8      	it	ge
 8003ac6:	461d      	movge	r5, r3
 8003ac8:	2d00      	cmp	r5, #0
 8003aca:	dd0b      	ble.n	8003ae4 <_vfprintf_r+0x151c>
 8003acc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003ace:	6017      	str	r7, [r2, #0]
 8003ad0:	3301      	adds	r3, #1
 8003ad2:	4429      	add	r1, r5
 8003ad4:	2b07      	cmp	r3, #7
 8003ad6:	912c      	str	r1, [sp, #176]	; 0xb0
 8003ad8:	6055      	str	r5, [r2, #4]
 8003ada:	932b      	str	r3, [sp, #172]	; 0xac
 8003adc:	dc5e      	bgt.n	8003b9c <_vfprintf_r+0x15d4>
 8003ade:	f898 3000 	ldrb.w	r3, [r8]
 8003ae2:	3208      	adds	r2, #8
 8003ae4:	2d00      	cmp	r5, #0
 8003ae6:	bfac      	ite	ge
 8003ae8:	1b5d      	subge	r5, r3, r5
 8003aea:	461d      	movlt	r5, r3
 8003aec:	2d00      	cmp	r5, #0
 8003aee:	dd26      	ble.n	8003b3e <_vfprintf_r+0x1576>
 8003af0:	2d10      	cmp	r5, #16
 8003af2:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003af4:	dd3c      	ble.n	8003b70 <_vfprintf_r+0x15a8>
 8003af6:	2410      	movs	r4, #16
 8003af8:	e003      	b.n	8003b02 <_vfprintf_r+0x153a>
 8003afa:	3208      	adds	r2, #8
 8003afc:	3d10      	subs	r5, #16
 8003afe:	2d10      	cmp	r5, #16
 8003b00:	dd36      	ble.n	8003b70 <_vfprintf_r+0x15a8>
 8003b02:	3001      	adds	r0, #1
 8003b04:	3110      	adds	r1, #16
 8003b06:	2807      	cmp	r0, #7
 8003b08:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003b0c:	e9c2 6400 	strd	r6, r4, [r2]
 8003b10:	ddf3      	ble.n	8003afa <_vfprintf_r+0x1532>
 8003b12:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b14:	4651      	mov	r1, sl
 8003b16:	4648      	mov	r0, r9
 8003b18:	f003 f884 	bl	8006c24 <__sprint_r>
 8003b1c:	2800      	cmp	r0, #0
 8003b1e:	d150      	bne.n	8003bc2 <_vfprintf_r+0x15fa>
 8003b20:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003b24:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b26:	e7e9      	b.n	8003afc <_vfprintf_r+0x1534>
 8003b28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b2a:	4651      	mov	r1, sl
 8003b2c:	4648      	mov	r0, r9
 8003b2e:	f003 f879 	bl	8006c24 <__sprint_r>
 8003b32:	2800      	cmp	r0, #0
 8003b34:	d145      	bne.n	8003bc2 <_vfprintf_r+0x15fa>
 8003b36:	f898 3000 	ldrb.w	r3, [r8]
 8003b3a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003b3c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b3e:	441f      	add	r7, r3
 8003b40:	e7a4      	b.n	8003a8c <_vfprintf_r+0x14c4>
 8003b42:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b44:	3b01      	subs	r3, #1
 8003b46:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b48:	e7ab      	b.n	8003aa2 <_vfprintf_r+0x14da>
 8003b4a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b4c:	2b00      	cmp	r3, #0
 8003b4e:	d1f8      	bne.n	8003b42 <_vfprintf_r+0x157a>
 8003b50:	46b9      	mov	r9, r7
 8003b52:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b54:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003b56:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003b5a:	18fb      	adds	r3, r7, r3
 8003b5c:	4599      	cmp	r9, r3
 8003b5e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003b62:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003b66:	4693      	mov	fp, r2
 8003b68:	460c      	mov	r4, r1
 8003b6a:	bf28      	it	cs
 8003b6c:	4699      	movcs	r9, r3
 8003b6e:	e424      	b.n	80033ba <_vfprintf_r+0xdf2>
 8003b70:	3001      	adds	r0, #1
 8003b72:	4429      	add	r1, r5
 8003b74:	2807      	cmp	r0, #7
 8003b76:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003b7a:	e9c2 6500 	strd	r6, r5, [r2]
 8003b7e:	dcd3      	bgt.n	8003b28 <_vfprintf_r+0x1560>
 8003b80:	f898 3000 	ldrb.w	r3, [r8]
 8003b84:	3208      	adds	r2, #8
 8003b86:	441f      	add	r7, r3
 8003b88:	e780      	b.n	8003a8c <_vfprintf_r+0x14c4>
 8003b8a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b8c:	4651      	mov	r1, sl
 8003b8e:	4648      	mov	r0, r9
 8003b90:	f003 f848 	bl	8006c24 <__sprint_r>
 8003b94:	b9a8      	cbnz	r0, 8003bc2 <_vfprintf_r+0x15fa>
 8003b96:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003b98:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b9a:	e78e      	b.n	8003aba <_vfprintf_r+0x14f2>
 8003b9c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b9e:	4651      	mov	r1, sl
 8003ba0:	4648      	mov	r0, r9
 8003ba2:	f003 f83f 	bl	8006c24 <__sprint_r>
 8003ba6:	b960      	cbnz	r0, 8003bc2 <_vfprintf_r+0x15fa>
 8003ba8:	f898 3000 	ldrb.w	r3, [r8]
 8003bac:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003bae:	aa2d      	add	r2, sp, #180	; 0xb4
 8003bb0:	e798      	b.n	8003ae4 <_vfprintf_r+0x151c>
 8003bb2:	4638      	mov	r0, r7
 8003bb4:	f7fc fd44 	bl	8000640 <strlen>
 8003bb8:	46a9      	mov	r9, r5
 8003bba:	4603      	mov	r3, r0
 8003bbc:	9009      	str	r0, [sp, #36]	; 0x24
 8003bbe:	f7ff b8f4 	b.w	8002daa <_vfprintf_r+0x7e2>
 8003bc2:	46d1      	mov	r9, sl
 8003bc4:	f7ff ba7a 	b.w	80030bc <_vfprintf_r+0xaf4>
 8003bc8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bca:	4619      	mov	r1, r3
 8003bcc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bce:	4299      	cmp	r1, r3
 8003bd0:	f300 8082 	bgt.w	8003cd8 <_vfprintf_r+0x1710>
 8003bd4:	07c4      	lsls	r4, r0, #31
 8003bd6:	f140 816b 	bpl.w	8003eb0 <_vfprintf_r+0x18e8>
 8003bda:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003bdc:	4413      	add	r3, r2
 8003bde:	9309      	str	r3, [sp, #36]	; 0x24
 8003be0:	0541      	lsls	r1, r0, #21
 8003be2:	d503      	bpl.n	8003bec <_vfprintf_r+0x1624>
 8003be4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003be6:	2b00      	cmp	r3, #0
 8003be8:	f300 80e6 	bgt.w	8003db8 <_vfprintf_r+0x17f0>
 8003bec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003bee:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003bf2:	9304      	str	r3, [sp, #16]
 8003bf4:	2667      	movs	r6, #103	; 0x67
 8003bf6:	2300      	movs	r3, #0
 8003bf8:	930f      	str	r3, [sp, #60]	; 0x3c
 8003bfa:	9314      	str	r3, [sp, #80]	; 0x50
 8003bfc:	e586      	b.n	800370c <_vfprintf_r+0x1144>
 8003bfe:	222d      	movs	r2, #45	; 0x2d
 8003c00:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003c04:	f04f 0900 	mov.w	r9, #0
 8003c08:	f7fe be6c 	b.w	80028e4 <_vfprintf_r+0x31c>
 8003c0c:	46a1      	mov	r9, r4
 8003c0e:	f7ff ba55 	b.w	80030bc <_vfprintf_r+0xaf4>
 8003c12:	900a      	str	r0, [sp, #40]	; 0x28
 8003c14:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003c18:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003c1c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003c1e:	232d      	movs	r3, #45	; 0x2d
 8003c20:	911e      	str	r1, [sp, #120]	; 0x78
 8003c22:	930b      	str	r3, [sp, #44]	; 0x2c
 8003c24:	e619      	b.n	800385a <_vfprintf_r+0x1292>
 8003c26:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c28:	9328      	str	r3, [sp, #160]	; 0xa0
 8003c2a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c2c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003c30:	7bd9      	ldrb	r1, [r3, #15]
 8003c32:	4291      	cmp	r1, r2
 8003c34:	462b      	mov	r3, r5
 8003c36:	d109      	bne.n	8003c4c <_vfprintf_r+0x1684>
 8003c38:	2030      	movs	r0, #48	; 0x30
 8003c3a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003c3e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003c40:	1e5a      	subs	r2, r3, #1
 8003c42:	9228      	str	r2, [sp, #160]	; 0xa0
 8003c44:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003c48:	4291      	cmp	r1, r2
 8003c4a:	d0f6      	beq.n	8003c3a <_vfprintf_r+0x1672>
 8003c4c:	2a39      	cmp	r2, #57	; 0x39
 8003c4e:	bf0b      	itete	eq
 8003c50:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003c52:	3201      	addne	r2, #1
 8003c54:	7a92      	ldrbeq	r2, [r2, #10]
 8003c56:	b2d2      	uxtbne	r2, r2
 8003c58:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003c5c:	e682      	b.n	8003964 <_vfprintf_r+0x139c>
 8003c5e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003c62:	f43f ad9f 	beq.w	80037a4 <_vfprintf_r+0x11dc>
 8003c66:	9a05      	ldr	r2, [sp, #20]
 8003c68:	701a      	strb	r2, [r3, #0]
 8003c6a:	4657      	mov	r7, sl
 8003c6c:	f7fe bf52 	b.w	8002b14 <_vfprintf_r+0x54c>
 8003c70:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c72:	9907      	ldr	r1, [sp, #28]
 8003c74:	9803      	ldr	r0, [sp, #12]
 8003c76:	f002 ffd5 	bl	8006c24 <__sprint_r>
 8003c7a:	2800      	cmp	r0, #0
 8003c7c:	f47f aa1c 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 8003c80:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c82:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003c86:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c8a:	e571      	b.n	8003770 <_vfprintf_r+0x11a8>
 8003c8c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c8e:	2b00      	cmp	r3, #0
 8003c90:	f340 8164 	ble.w	8003f5c <_vfprintf_r+0x1994>
 8003c94:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c96:	f1b9 0f00 	cmp.w	r9, #0
 8003c9a:	f040 8103 	bne.w	8003ea4 <_vfprintf_r+0x18dc>
 8003c9e:	07c6      	lsls	r6, r0, #31
 8003ca0:	f100 8100 	bmi.w	8003ea4 <_vfprintf_r+0x18dc>
 8003ca4:	9309      	str	r3, [sp, #36]	; 0x24
 8003ca6:	2666      	movs	r6, #102	; 0x66
 8003ca8:	0543      	lsls	r3, r0, #21
 8003caa:	f100 8086 	bmi.w	8003dba <_vfprintf_r+0x17f2>
 8003cae:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003cb0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cb4:	9304      	str	r3, [sp, #16]
 8003cb6:	e79e      	b.n	8003bf6 <_vfprintf_r+0x162e>
 8003cb8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cba:	9907      	ldr	r1, [sp, #28]
 8003cbc:	9803      	ldr	r0, [sp, #12]
 8003cbe:	f002 ffb1 	bl	8006c24 <__sprint_r>
 8003cc2:	2800      	cmp	r0, #0
 8003cc4:	f47f a9f8 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 8003cc8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003cca:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003ccc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003cce:	1ad3      	subs	r3, r2, r3
 8003cd0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cd4:	f7ff bb90 	b.w	80033f8 <_vfprintf_r+0xe30>
 8003cd8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cda:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003cdc:	4413      	add	r3, r2
 8003cde:	9309      	str	r3, [sp, #36]	; 0x24
 8003ce0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ce2:	2b00      	cmp	r3, #0
 8003ce4:	f340 8149 	ble.w	8003f7a <_vfprintf_r+0x19b2>
 8003ce8:	2667      	movs	r6, #103	; 0x67
 8003cea:	e7dd      	b.n	8003ca8 <_vfprintf_r+0x16e0>
 8003cec:	2330      	movs	r3, #48	; 0x30
 8003cee:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003cf2:	2358      	movs	r3, #88	; 0x58
 8003cf4:	e595      	b.n	8003822 <_vfprintf_r+0x125a>
 8003cf6:	9803      	ldr	r0, [sp, #12]
 8003cf8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cfa:	4649      	mov	r1, r9
 8003cfc:	f002 ff92 	bl	8006c24 <__sprint_r>
 8003d00:	2800      	cmp	r0, #0
 8003d02:	f47f a9e0 	bne.w	80030c6 <_vfprintf_r+0xafe>
 8003d06:	f7fe bf0f 	b.w	8002b28 <_vfprintf_r+0x560>
 8003d0a:	a824      	add	r0, sp, #144	; 0x90
 8003d0c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d10:	f002 fe90 	bl	8006a34 <frexp>
 8003d14:	2200      	movs	r2, #0
 8003d16:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003d1a:	ec51 0b10 	vmov	r0, r1, d0
 8003d1e:	f7fc ff0b 	bl	8000b38 <__aeabi_dmul>
 8003d22:	2200      	movs	r2, #0
 8003d24:	2300      	movs	r3, #0
 8003d26:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003d2a:	f7fd f96d 	bl	8001008 <__aeabi_dcmpeq>
 8003d2e:	b108      	cbz	r0, 8003d34 <_vfprintf_r+0x176c>
 8003d30:	2301      	movs	r3, #1
 8003d32:	9324      	str	r3, [sp, #144]	; 0x90
 8003d34:	4b02      	ldr	r3, [pc, #8]	; (8003d40 <_vfprintf_r+0x1778>)
 8003d36:	9309      	str	r3, [sp, #36]	; 0x24
 8003d38:	e5ac      	b.n	8003894 <_vfprintf_r+0x12cc>
 8003d3a:	bf00      	nop
 8003d3c:	08007318 	.word	0x08007318
 8003d40:	080072d4 	.word	0x080072d4
 8003d44:	425d      	negs	r5, r3
 8003d46:	3310      	adds	r3, #16
 8003d48:	4bb9      	ldr	r3, [pc, #740]	; (8004030 <_vfprintf_r+0x1a68>)
 8003d4a:	f280 8097 	bge.w	8003e7c <_vfprintf_r+0x18b4>
 8003d4e:	4619      	mov	r1, r3
 8003d50:	2610      	movs	r6, #16
 8003d52:	4623      	mov	r3, r4
 8003d54:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003d58:	460c      	mov	r4, r1
 8003d5a:	e005      	b.n	8003d68 <_vfprintf_r+0x17a0>
 8003d5c:	f10b 0b08 	add.w	fp, fp, #8
 8003d60:	3d10      	subs	r5, #16
 8003d62:	2d10      	cmp	r5, #16
 8003d64:	f340 8087 	ble.w	8003e76 <_vfprintf_r+0x18ae>
 8003d68:	3201      	adds	r2, #1
 8003d6a:	3310      	adds	r3, #16
 8003d6c:	2a07      	cmp	r2, #7
 8003d6e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003d72:	e9cb 4600 	strd	r4, r6, [fp]
 8003d76:	ddf1      	ble.n	8003d5c <_vfprintf_r+0x1794>
 8003d78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d7a:	9907      	ldr	r1, [sp, #28]
 8003d7c:	4648      	mov	r0, r9
 8003d7e:	f002 ff51 	bl	8006c24 <__sprint_r>
 8003d82:	2800      	cmp	r0, #0
 8003d84:	f47f a998 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 8003d88:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003d8c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d90:	e7e6      	b.n	8003d60 <_vfprintf_r+0x1798>
 8003d92:	f109 0101 	add.w	r1, r9, #1
 8003d96:	9803      	ldr	r0, [sp, #12]
 8003d98:	f001 fe80 	bl	8005a9c <_malloc_r>
 8003d9c:	4607      	mov	r7, r0
 8003d9e:	2800      	cmp	r0, #0
 8003da0:	f000 813b 	beq.w	800401a <_vfprintf_r+0x1a52>
 8003da4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003da8:	930e      	str	r3, [sp, #56]	; 0x38
 8003daa:	f026 0320 	bic.w	r3, r6, #32
 8003dae:	9304      	str	r3, [sp, #16]
 8003db0:	46a0      	mov	r8, r4
 8003db2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003db4:	900a      	str	r0, [sp, #40]	; 0x28
 8003db6:	e547      	b.n	8003848 <_vfprintf_r+0x1280>
 8003db8:	2667      	movs	r6, #103	; 0x67
 8003dba:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003dbc:	2200      	movs	r2, #0
 8003dbe:	920f      	str	r2, [sp, #60]	; 0x3c
 8003dc0:	9214      	str	r2, [sp, #80]	; 0x50
 8003dc2:	7803      	ldrb	r3, [r0, #0]
 8003dc4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003dc6:	2bff      	cmp	r3, #255	; 0xff
 8003dc8:	d00c      	beq.n	8003de4 <_vfprintf_r+0x181c>
 8003dca:	4293      	cmp	r3, r2
 8003dcc:	da0a      	bge.n	8003de4 <_vfprintf_r+0x181c>
 8003dce:	7841      	ldrb	r1, [r0, #1]
 8003dd0:	1ad2      	subs	r2, r2, r3
 8003dd2:	b1a9      	cbz	r1, 8003e00 <_vfprintf_r+0x1838>
 8003dd4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003dd6:	3301      	adds	r3, #1
 8003dd8:	9314      	str	r3, [sp, #80]	; 0x50
 8003dda:	460b      	mov	r3, r1
 8003ddc:	2bff      	cmp	r3, #255	; 0xff
 8003dde:	f100 0001 	add.w	r0, r0, #1
 8003de2:	d1f2      	bne.n	8003dca <_vfprintf_r+0x1802>
 8003de4:	9211      	str	r2, [sp, #68]	; 0x44
 8003de6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003de8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003dea:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003dec:	901a      	str	r0, [sp, #104]	; 0x68
 8003dee:	4413      	add	r3, r2
 8003df0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003df2:	fb02 1303 	mla	r3, r2, r3, r1
 8003df6:	9309      	str	r3, [sp, #36]	; 0x24
 8003df8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003dfc:	9304      	str	r3, [sp, #16]
 8003dfe:	e485      	b.n	800370c <_vfprintf_r+0x1144>
 8003e00:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003e02:	3101      	adds	r1, #1
 8003e04:	910f      	str	r1, [sp, #60]	; 0x3c
 8003e06:	e7de      	b.n	8003dc6 <_vfprintf_r+0x17fe>
 8003e08:	aa28      	add	r2, sp, #160	; 0xa0
 8003e0a:	ab25      	add	r3, sp, #148	; 0x94
 8003e0c:	e9cd 3200 	strd	r3, r2, [sp]
 8003e10:	2103      	movs	r1, #3
 8003e12:	ab24      	add	r3, sp, #144	; 0x90
 8003e14:	464a      	mov	r2, r9
 8003e16:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e1a:	9803      	ldr	r0, [sp, #12]
 8003e1c:	f000 fa5c 	bl	80042d8 <_dtoa_r>
 8003e20:	464d      	mov	r5, r9
 8003e22:	4607      	mov	r7, r0
 8003e24:	eb00 0409 	add.w	r4, r0, r9
 8003e28:	783b      	ldrb	r3, [r7, #0]
 8003e2a:	2b30      	cmp	r3, #48	; 0x30
 8003e2c:	f000 80be 	beq.w	8003fac <_vfprintf_r+0x19e4>
 8003e30:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003e32:	442c      	add	r4, r5
 8003e34:	2200      	movs	r2, #0
 8003e36:	2300      	movs	r3, #0
 8003e38:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003e3c:	f7fd f8e4 	bl	8001008 <__aeabi_dcmpeq>
 8003e40:	b108      	cbz	r0, 8003e46 <_vfprintf_r+0x187e>
 8003e42:	4623      	mov	r3, r4
 8003e44:	e413      	b.n	800366e <_vfprintf_r+0x10a6>
 8003e46:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003e48:	42a3      	cmp	r3, r4
 8003e4a:	f4bf ac10 	bcs.w	800366e <_vfprintf_r+0x10a6>
 8003e4e:	2130      	movs	r1, #48	; 0x30
 8003e50:	1c5a      	adds	r2, r3, #1
 8003e52:	9228      	str	r2, [sp, #160]	; 0xa0
 8003e54:	7019      	strb	r1, [r3, #0]
 8003e56:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003e58:	429c      	cmp	r4, r3
 8003e5a:	d8f9      	bhi.n	8003e50 <_vfprintf_r+0x1888>
 8003e5c:	e407      	b.n	800366e <_vfprintf_r+0x10a6>
 8003e5e:	197c      	adds	r4, r7, r5
 8003e60:	e7e8      	b.n	8003e34 <_vfprintf_r+0x186c>
 8003e62:	f1b9 0f00 	cmp.w	r9, #0
 8003e66:	f000 8092 	beq.w	8003f8e <_vfprintf_r+0x19c6>
 8003e6a:	900a      	str	r0, [sp, #40]	; 0x28
 8003e6c:	e4ec      	b.n	8003848 <_vfprintf_r+0x1280>
 8003e6e:	900a      	str	r0, [sp, #40]	; 0x28
 8003e70:	f04f 0906 	mov.w	r9, #6
 8003e74:	e4e8      	b.n	8003848 <_vfprintf_r+0x1280>
 8003e76:	4621      	mov	r1, r4
 8003e78:	461c      	mov	r4, r3
 8003e7a:	460b      	mov	r3, r1
 8003e7c:	3201      	adds	r2, #1
 8003e7e:	442c      	add	r4, r5
 8003e80:	2a07      	cmp	r2, #7
 8003e82:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003e86:	e9cb 3500 	strd	r3, r5, [fp]
 8003e8a:	f300 80a9 	bgt.w	8003fe0 <_vfprintf_r+0x1a18>
 8003e8e:	f10b 0b08 	add.w	fp, fp, #8
 8003e92:	e470      	b.n	8003776 <_vfprintf_r+0x11ae>
 8003e94:	469a      	mov	sl, r3
 8003e96:	f7ff bb37 	b.w	8003508 <_vfprintf_r+0xf40>
 8003e9a:	2301      	movs	r3, #1
 8003e9c:	9324      	str	r3, [sp, #144]	; 0x90
 8003e9e:	4b65      	ldr	r3, [pc, #404]	; (8004034 <_vfprintf_r+0x1a6c>)
 8003ea0:	9309      	str	r3, [sp, #36]	; 0x24
 8003ea2:	e4f7      	b.n	8003894 <_vfprintf_r+0x12cc>
 8003ea4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ea6:	4413      	add	r3, r2
 8003ea8:	444b      	add	r3, r9
 8003eaa:	9309      	str	r3, [sp, #36]	; 0x24
 8003eac:	2666      	movs	r6, #102	; 0x66
 8003eae:	e6fb      	b.n	8003ca8 <_vfprintf_r+0x16e0>
 8003eb0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003eb2:	9309      	str	r3, [sp, #36]	; 0x24
 8003eb4:	e694      	b.n	8003be0 <_vfprintf_r+0x1618>
 8003eb6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003eba:	4664      	mov	r4, ip
 8003ebc:	4d5e      	ldr	r5, [pc, #376]	; (8004038 <_vfprintf_r+0x1a70>)
 8003ebe:	e000      	b.n	8003ec2 <_vfprintf_r+0x18fa>
 8003ec0:	4614      	mov	r4, r2
 8003ec2:	fba5 1203 	umull	r1, r2, r5, r3
 8003ec6:	08d2      	lsrs	r2, r2, #3
 8003ec8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003ecc:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003ed0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003ed4:	4613      	mov	r3, r2
 8003ed6:	2b09      	cmp	r3, #9
 8003ed8:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003edc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003ee0:	dcee      	bgt.n	8003ec0 <_vfprintf_r+0x18f8>
 8003ee2:	3330      	adds	r3, #48	; 0x30
 8003ee4:	3c02      	subs	r4, #2
 8003ee6:	b2db      	uxtb	r3, r3
 8003ee8:	45a4      	cmp	ip, r4
 8003eea:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003eee:	f240 8090 	bls.w	8004012 <_vfprintf_r+0x1a4a>
 8003ef2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003ef6:	4611      	mov	r1, r2
 8003ef8:	e001      	b.n	8003efe <_vfprintf_r+0x1936>
 8003efa:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003efe:	f804 3b01 	strb.w	r3, [r4], #1
 8003f02:	458c      	cmp	ip, r1
 8003f04:	d1f9      	bne.n	8003efa <_vfprintf_r+0x1932>
 8003f06:	ab2a      	add	r3, sp, #168	; 0xa8
 8003f08:	1a9b      	subs	r3, r3, r2
 8003f0a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003f0e:	4413      	add	r3, r2
 8003f10:	f7ff bbe3 	b.w	80036da <_vfprintf_r+0x1112>
 8003f14:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003f16:	4f49      	ldr	r7, [pc, #292]	; (800403c <_vfprintf_r+0x1a74>)
 8003f18:	2b00      	cmp	r3, #0
 8003f1a:	bfb6      	itet	lt
 8003f1c:	222d      	movlt	r2, #45	; 0x2d
 8003f1e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003f22:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003f26:	4b46      	ldr	r3, [pc, #280]	; (8004040 <_vfprintf_r+0x1a78>)
 8003f28:	f7fe bf02 	b.w	8002d30 <_vfprintf_r+0x768>
 8003f2c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003f30:	f7ff b8c9 	b.w	80030c6 <_vfprintf_r+0xafe>
 8003f34:	aa28      	add	r2, sp, #160	; 0xa0
 8003f36:	ab25      	add	r3, sp, #148	; 0x94
 8003f38:	e9cd 3200 	strd	r3, r2, [sp]
 8003f3c:	2103      	movs	r1, #3
 8003f3e:	ab24      	add	r3, sp, #144	; 0x90
 8003f40:	464a      	mov	r2, r9
 8003f42:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003f46:	9803      	ldr	r0, [sp, #12]
 8003f48:	f000 f9c6 	bl	80042d8 <_dtoa_r>
 8003f4c:	464d      	mov	r5, r9
 8003f4e:	4607      	mov	r7, r0
 8003f50:	2e46      	cmp	r6, #70	; 0x46
 8003f52:	eb07 0405 	add.w	r4, r7, r5
 8003f56:	f43f af67 	beq.w	8003e28 <_vfprintf_r+0x1860>
 8003f5a:	e76b      	b.n	8003e34 <_vfprintf_r+0x186c>
 8003f5c:	f1b9 0f00 	cmp.w	r9, #0
 8003f60:	d131      	bne.n	8003fc6 <_vfprintf_r+0x19fe>
 8003f62:	07c5      	lsls	r5, r0, #31
 8003f64:	d42f      	bmi.n	8003fc6 <_vfprintf_r+0x19fe>
 8003f66:	2301      	movs	r3, #1
 8003f68:	9304      	str	r3, [sp, #16]
 8003f6a:	9309      	str	r3, [sp, #36]	; 0x24
 8003f6c:	2666      	movs	r6, #102	; 0x66
 8003f6e:	e642      	b.n	8003bf6 <_vfprintf_r+0x162e>
 8003f70:	07c3      	lsls	r3, r0, #31
 8003f72:	f57f abbf 	bpl.w	80036f4 <_vfprintf_r+0x112c>
 8003f76:	f7ff bbb9 	b.w	80036ec <_vfprintf_r+0x1124>
 8003f7a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003f7c:	f1c3 0301 	rsb	r3, r3, #1
 8003f80:	441a      	add	r2, r3
 8003f82:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003f86:	9209      	str	r2, [sp, #36]	; 0x24
 8003f88:	9304      	str	r3, [sp, #16]
 8003f8a:	2667      	movs	r6, #103	; 0x67
 8003f8c:	e633      	b.n	8003bf6 <_vfprintf_r+0x162e>
 8003f8e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003f92:	f04f 0901 	mov.w	r9, #1
 8003f96:	e457      	b.n	8003848 <_vfprintf_r+0x1280>
 8003f98:	465a      	mov	r2, fp
 8003f9a:	e511      	b.n	80039c0 <_vfprintf_r+0x13f8>
 8003f9c:	2e47      	cmp	r6, #71	; 0x47
 8003f9e:	f47f af5e 	bne.w	8003e5e <_vfprintf_r+0x1896>
 8003fa2:	f018 0f01 	tst.w	r8, #1
 8003fa6:	f43f ab61 	beq.w	800366c <_vfprintf_r+0x10a4>
 8003faa:	e7d1      	b.n	8003f50 <_vfprintf_r+0x1988>
 8003fac:	2200      	movs	r2, #0
 8003fae:	2300      	movs	r3, #0
 8003fb0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003fb4:	f7fd f828 	bl	8001008 <__aeabi_dcmpeq>
 8003fb8:	2800      	cmp	r0, #0
 8003fba:	f47f af39 	bne.w	8003e30 <_vfprintf_r+0x1868>
 8003fbe:	f1c5 0501 	rsb	r5, r5, #1
 8003fc2:	9524      	str	r5, [sp, #144]	; 0x90
 8003fc4:	e735      	b.n	8003e32 <_vfprintf_r+0x186a>
 8003fc6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003fc8:	3301      	adds	r3, #1
 8003fca:	444b      	add	r3, r9
 8003fcc:	9309      	str	r3, [sp, #36]	; 0x24
 8003fce:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003fd2:	9304      	str	r3, [sp, #16]
 8003fd4:	2666      	movs	r6, #102	; 0x66
 8003fd6:	e60e      	b.n	8003bf6 <_vfprintf_r+0x162e>
 8003fd8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003fdc:	f7ff bb7a 	b.w	80036d4 <_vfprintf_r+0x110c>
 8003fe0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fe2:	9907      	ldr	r1, [sp, #28]
 8003fe4:	9803      	ldr	r0, [sp, #12]
 8003fe6:	f002 fe1d 	bl	8006c24 <__sprint_r>
 8003fea:	2800      	cmp	r0, #0
 8003fec:	f47f a864 	bne.w	80030b8 <_vfprintf_r+0xaf0>
 8003ff0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003ff4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ff8:	f7ff bbbd 	b.w	8003776 <_vfprintf_r+0x11ae>
 8003ffc:	9908      	ldr	r1, [sp, #32]
 8003ffe:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004002:	680b      	ldr	r3, [r1, #0]
 8004004:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004008:	1d0b      	adds	r3, r1, #4
 800400a:	4692      	mov	sl, r2
 800400c:	9308      	str	r3, [sp, #32]
 800400e:	f7fe bb59 	b.w	80026c4 <_vfprintf_r+0xfc>
 8004012:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004016:	f7ff bb60 	b.w	80036da <_vfprintf_r+0x1112>
 800401a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800401e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004022:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004026:	f8a9 300c 	strh.w	r3, [r9, #12]
 800402a:	f7ff b84c 	b.w	80030c6 <_vfprintf_r+0xafe>
 800402e:	bf00      	nop
 8004030:	08007318 	.word	0x08007318
 8004034:	080072e8 	.word	0x080072e8
 8004038:	cccccccd 	.word	0xcccccccd
 800403c:	080072d0 	.word	0x080072d0
 8004040:	080072cc 	.word	0x080072cc

08004044 <__sbprintf>:
 8004044:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004048:	460c      	mov	r4, r1
 800404a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800404e:	8989      	ldrh	r1, [r1, #12]
 8004050:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004052:	89e5      	ldrh	r5, [r4, #14]
 8004054:	9619      	str	r6, [sp, #100]	; 0x64
 8004056:	f021 0102 	bic.w	r1, r1, #2
 800405a:	4606      	mov	r6, r0
 800405c:	69e0      	ldr	r0, [r4, #28]
 800405e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004062:	4617      	mov	r7, r2
 8004064:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004068:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800406a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800406e:	4698      	mov	r8, r3
 8004070:	ad1a      	add	r5, sp, #104	; 0x68
 8004072:	2300      	movs	r3, #0
 8004074:	9007      	str	r0, [sp, #28]
 8004076:	a816      	add	r0, sp, #88	; 0x58
 8004078:	9209      	str	r2, [sp, #36]	; 0x24
 800407a:	9306      	str	r3, [sp, #24]
 800407c:	9500      	str	r5, [sp, #0]
 800407e:	9504      	str	r5, [sp, #16]
 8004080:	9102      	str	r1, [sp, #8]
 8004082:	9105      	str	r1, [sp, #20]
 8004084:	f001 fc8a 	bl	800599c <__retarget_lock_init_recursive>
 8004088:	4643      	mov	r3, r8
 800408a:	463a      	mov	r2, r7
 800408c:	4669      	mov	r1, sp
 800408e:	4630      	mov	r0, r6
 8004090:	f7fe fa9a 	bl	80025c8 <_vfprintf_r>
 8004094:	1e05      	subs	r5, r0, #0
 8004096:	db07      	blt.n	80040a8 <__sbprintf+0x64>
 8004098:	4630      	mov	r0, r6
 800409a:	4669      	mov	r1, sp
 800409c:	f001 f8d6 	bl	800524c <_fflush_r>
 80040a0:	2800      	cmp	r0, #0
 80040a2:	bf18      	it	ne
 80040a4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80040a8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80040ac:	065b      	lsls	r3, r3, #25
 80040ae:	d503      	bpl.n	80040b8 <__sbprintf+0x74>
 80040b0:	89a3      	ldrh	r3, [r4, #12]
 80040b2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80040b6:	81a3      	strh	r3, [r4, #12]
 80040b8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80040ba:	f001 fc71 	bl	80059a0 <__retarget_lock_close_recursive>
 80040be:	4628      	mov	r0, r5
 80040c0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 80040c4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080040c8 <__swsetup_r>:
 80040c8:	b538      	push	{r3, r4, r5, lr}
 80040ca:	4b31      	ldr	r3, [pc, #196]	; (8004190 <__swsetup_r+0xc8>)
 80040cc:	681b      	ldr	r3, [r3, #0]
 80040ce:	4605      	mov	r5, r0
 80040d0:	460c      	mov	r4, r1
 80040d2:	b113      	cbz	r3, 80040da <__swsetup_r+0x12>
 80040d4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80040d6:	2a00      	cmp	r2, #0
 80040d8:	d03a      	beq.n	8004150 <__swsetup_r+0x88>
 80040da:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80040de:	b293      	uxth	r3, r2
 80040e0:	0718      	lsls	r0, r3, #28
 80040e2:	d50c      	bpl.n	80040fe <__swsetup_r+0x36>
 80040e4:	6920      	ldr	r0, [r4, #16]
 80040e6:	b1a8      	cbz	r0, 8004114 <__swsetup_r+0x4c>
 80040e8:	f013 0201 	ands.w	r2, r3, #1
 80040ec:	d020      	beq.n	8004130 <__swsetup_r+0x68>
 80040ee:	6963      	ldr	r3, [r4, #20]
 80040f0:	2200      	movs	r2, #0
 80040f2:	425b      	negs	r3, r3
 80040f4:	61a3      	str	r3, [r4, #24]
 80040f6:	60a2      	str	r2, [r4, #8]
 80040f8:	b300      	cbz	r0, 800413c <__swsetup_r+0x74>
 80040fa:	2000      	movs	r0, #0
 80040fc:	bd38      	pop	{r3, r4, r5, pc}
 80040fe:	06d9      	lsls	r1, r3, #27
 8004100:	d53e      	bpl.n	8004180 <__swsetup_r+0xb8>
 8004102:	0758      	lsls	r0, r3, #29
 8004104:	d428      	bmi.n	8004158 <__swsetup_r+0x90>
 8004106:	6920      	ldr	r0, [r4, #16]
 8004108:	f042 0308 	orr.w	r3, r2, #8
 800410c:	81a3      	strh	r3, [r4, #12]
 800410e:	b29b      	uxth	r3, r3
 8004110:	2800      	cmp	r0, #0
 8004112:	d1e9      	bne.n	80040e8 <__swsetup_r+0x20>
 8004114:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004118:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800411c:	d0e4      	beq.n	80040e8 <__swsetup_r+0x20>
 800411e:	4628      	mov	r0, r5
 8004120:	4621      	mov	r1, r4
 8004122:	f001 fc71 	bl	8005a08 <__smakebuf_r>
 8004126:	89a3      	ldrh	r3, [r4, #12]
 8004128:	6920      	ldr	r0, [r4, #16]
 800412a:	f013 0201 	ands.w	r2, r3, #1
 800412e:	d1de      	bne.n	80040ee <__swsetup_r+0x26>
 8004130:	0799      	lsls	r1, r3, #30
 8004132:	bf58      	it	pl
 8004134:	6962      	ldrpl	r2, [r4, #20]
 8004136:	60a2      	str	r2, [r4, #8]
 8004138:	2800      	cmp	r0, #0
 800413a:	d1de      	bne.n	80040fa <__swsetup_r+0x32>
 800413c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004140:	061a      	lsls	r2, r3, #24
 8004142:	d5db      	bpl.n	80040fc <__swsetup_r+0x34>
 8004144:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004148:	81a3      	strh	r3, [r4, #12]
 800414a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800414e:	bd38      	pop	{r3, r4, r5, pc}
 8004150:	4618      	mov	r0, r3
 8004152:	f001 f8d7 	bl	8005304 <__sinit>
 8004156:	e7c0      	b.n	80040da <__swsetup_r+0x12>
 8004158:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800415a:	b151      	cbz	r1, 8004172 <__swsetup_r+0xaa>
 800415c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004160:	4299      	cmp	r1, r3
 8004162:	d004      	beq.n	800416e <__swsetup_r+0xa6>
 8004164:	4628      	mov	r0, r5
 8004166:	f001 f96f 	bl	8005448 <_free_r>
 800416a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800416e:	2300      	movs	r3, #0
 8004170:	6323      	str	r3, [r4, #48]	; 0x30
 8004172:	2300      	movs	r3, #0
 8004174:	6920      	ldr	r0, [r4, #16]
 8004176:	6063      	str	r3, [r4, #4]
 8004178:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800417c:	6020      	str	r0, [r4, #0]
 800417e:	e7c3      	b.n	8004108 <__swsetup_r+0x40>
 8004180:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004184:	2309      	movs	r3, #9
 8004186:	602b      	str	r3, [r5, #0]
 8004188:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800418c:	81a2      	strh	r2, [r4, #12]
 800418e:	bd38      	pop	{r3, r4, r5, pc}
 8004190:	20000018 	.word	0x20000018

08004194 <register_fini>:
 8004194:	4b02      	ldr	r3, [pc, #8]	; (80041a0 <register_fini+0xc>)
 8004196:	b113      	cbz	r3, 800419e <register_fini+0xa>
 8004198:	4802      	ldr	r0, [pc, #8]	; (80041a4 <register_fini+0x10>)
 800419a:	f000 b805 	b.w	80041a8 <atexit>
 800419e:	4770      	bx	lr
 80041a0:	00000000 	.word	0x00000000
 80041a4:	08005375 	.word	0x08005375

080041a8 <atexit>:
 80041a8:	2300      	movs	r3, #0
 80041aa:	4601      	mov	r1, r0
 80041ac:	461a      	mov	r2, r3
 80041ae:	4618      	mov	r0, r3
 80041b0:	f002 bd58 	b.w	8006c64 <__register_exitproc>

080041b4 <quorem>:
 80041b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80041b8:	6903      	ldr	r3, [r0, #16]
 80041ba:	690f      	ldr	r7, [r1, #16]
 80041bc:	42bb      	cmp	r3, r7
 80041be:	b083      	sub	sp, #12
 80041c0:	f2c0 8086 	blt.w	80042d0 <quorem+0x11c>
 80041c4:	3f01      	subs	r7, #1
 80041c6:	f101 0914 	add.w	r9, r1, #20
 80041ca:	f100 0a14 	add.w	sl, r0, #20
 80041ce:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80041d2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80041d6:	00bc      	lsls	r4, r7, #2
 80041d8:	3201      	adds	r2, #1
 80041da:	fbb3 f8f2 	udiv	r8, r3, r2
 80041de:	eb0a 0304 	add.w	r3, sl, r4
 80041e2:	9400      	str	r4, [sp, #0]
 80041e4:	eb09 0b04 	add.w	fp, r9, r4
 80041e8:	9301      	str	r3, [sp, #4]
 80041ea:	f1b8 0f00 	cmp.w	r8, #0
 80041ee:	d038      	beq.n	8004262 <quorem+0xae>
 80041f0:	2500      	movs	r5, #0
 80041f2:	462e      	mov	r6, r5
 80041f4:	46ce      	mov	lr, r9
 80041f6:	46d4      	mov	ip, sl
 80041f8:	f85e 4b04 	ldr.w	r4, [lr], #4
 80041fc:	f8dc 3000 	ldr.w	r3, [ip]
 8004200:	b2a2      	uxth	r2, r4
 8004202:	fb08 5502 	mla	r5, r8, r2, r5
 8004206:	0c22      	lsrs	r2, r4, #16
 8004208:	0c2c      	lsrs	r4, r5, #16
 800420a:	fb08 4202 	mla	r2, r8, r2, r4
 800420e:	b2ad      	uxth	r5, r5
 8004210:	1b75      	subs	r5, r6, r5
 8004212:	b296      	uxth	r6, r2
 8004214:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004218:	fa15 f383 	uxtah	r3, r5, r3
 800421c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004220:	b29b      	uxth	r3, r3
 8004222:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004226:	45f3      	cmp	fp, lr
 8004228:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800422c:	f84c 3b04 	str.w	r3, [ip], #4
 8004230:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004234:	d2e0      	bcs.n	80041f8 <quorem+0x44>
 8004236:	9b00      	ldr	r3, [sp, #0]
 8004238:	f85a 3003 	ldr.w	r3, [sl, r3]
 800423c:	b98b      	cbnz	r3, 8004262 <quorem+0xae>
 800423e:	9a01      	ldr	r2, [sp, #4]
 8004240:	1f13      	subs	r3, r2, #4
 8004242:	459a      	cmp	sl, r3
 8004244:	d20c      	bcs.n	8004260 <quorem+0xac>
 8004246:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800424a:	b94b      	cbnz	r3, 8004260 <quorem+0xac>
 800424c:	f1a2 0308 	sub.w	r3, r2, #8
 8004250:	e002      	b.n	8004258 <quorem+0xa4>
 8004252:	681a      	ldr	r2, [r3, #0]
 8004254:	3b04      	subs	r3, #4
 8004256:	b91a      	cbnz	r2, 8004260 <quorem+0xac>
 8004258:	459a      	cmp	sl, r3
 800425a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800425e:	d3f8      	bcc.n	8004252 <quorem+0x9e>
 8004260:	6107      	str	r7, [r0, #16]
 8004262:	4604      	mov	r4, r0
 8004264:	f002 f944 	bl	80064f0 <__mcmp>
 8004268:	2800      	cmp	r0, #0
 800426a:	db2d      	blt.n	80042c8 <quorem+0x114>
 800426c:	f108 0801 	add.w	r8, r8, #1
 8004270:	4655      	mov	r5, sl
 8004272:	2300      	movs	r3, #0
 8004274:	f859 1b04 	ldr.w	r1, [r9], #4
 8004278:	6828      	ldr	r0, [r5, #0]
 800427a:	b28a      	uxth	r2, r1
 800427c:	1a9a      	subs	r2, r3, r2
 800427e:	0c0b      	lsrs	r3, r1, #16
 8004280:	fa12 f280 	uxtah	r2, r2, r0
 8004284:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004288:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800428c:	b292      	uxth	r2, r2
 800428e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004292:	45cb      	cmp	fp, r9
 8004294:	f845 2b04 	str.w	r2, [r5], #4
 8004298:	ea4f 4323 	mov.w	r3, r3, asr #16
 800429c:	d2ea      	bcs.n	8004274 <quorem+0xc0>
 800429e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80042a2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80042a6:	b97a      	cbnz	r2, 80042c8 <quorem+0x114>
 80042a8:	1f1a      	subs	r2, r3, #4
 80042aa:	4592      	cmp	sl, r2
 80042ac:	d20b      	bcs.n	80042c6 <quorem+0x112>
 80042ae:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80042b2:	b942      	cbnz	r2, 80042c6 <quorem+0x112>
 80042b4:	3b08      	subs	r3, #8
 80042b6:	e002      	b.n	80042be <quorem+0x10a>
 80042b8:	681a      	ldr	r2, [r3, #0]
 80042ba:	3b04      	subs	r3, #4
 80042bc:	b91a      	cbnz	r2, 80042c6 <quorem+0x112>
 80042be:	459a      	cmp	sl, r3
 80042c0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80042c4:	d3f8      	bcc.n	80042b8 <quorem+0x104>
 80042c6:	6127      	str	r7, [r4, #16]
 80042c8:	4640      	mov	r0, r8
 80042ca:	b003      	add	sp, #12
 80042cc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042d0:	2000      	movs	r0, #0
 80042d2:	b003      	add	sp, #12
 80042d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080042d8 <_dtoa_r>:
 80042d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80042dc:	ec55 4b10 	vmov	r4, r5, d0
 80042e0:	b09b      	sub	sp, #108	; 0x6c
 80042e2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80042e4:	9102      	str	r1, [sp, #8]
 80042e6:	4681      	mov	r9, r0
 80042e8:	9207      	str	r2, [sp, #28]
 80042ea:	9305      	str	r3, [sp, #20]
 80042ec:	e9cd 4500 	strd	r4, r5, [sp]
 80042f0:	b156      	cbz	r6, 8004308 <_dtoa_r+0x30>
 80042f2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80042f4:	6072      	str	r2, [r6, #4]
 80042f6:	2301      	movs	r3, #1
 80042f8:	4093      	lsls	r3, r2
 80042fa:	60b3      	str	r3, [r6, #8]
 80042fc:	4631      	mov	r1, r6
 80042fe:	f001 ff07 	bl	8006110 <_Bfree>
 8004302:	2300      	movs	r3, #0
 8004304:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004308:	f1b5 0800 	subs.w	r8, r5, #0
 800430c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800430e:	bfb4      	ite	lt
 8004310:	2301      	movlt	r3, #1
 8004312:	2300      	movge	r3, #0
 8004314:	6013      	str	r3, [r2, #0]
 8004316:	4b76      	ldr	r3, [pc, #472]	; (80044f0 <_dtoa_r+0x218>)
 8004318:	bfbc      	itt	lt
 800431a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800431e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004322:	ea33 0308 	bics.w	r3, r3, r8
 8004326:	f000 80a6 	beq.w	8004476 <_dtoa_r+0x19e>
 800432a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800432e:	2200      	movs	r2, #0
 8004330:	2300      	movs	r3, #0
 8004332:	4630      	mov	r0, r6
 8004334:	4639      	mov	r1, r7
 8004336:	f7fc fe67 	bl	8001008 <__aeabi_dcmpeq>
 800433a:	4605      	mov	r5, r0
 800433c:	b178      	cbz	r0, 800435e <_dtoa_r+0x86>
 800433e:	9a05      	ldr	r2, [sp, #20]
 8004340:	2301      	movs	r3, #1
 8004342:	6013      	str	r3, [r2, #0]
 8004344:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004346:	2b00      	cmp	r3, #0
 8004348:	f000 80c0 	beq.w	80044cc <_dtoa_r+0x1f4>
 800434c:	4b69      	ldr	r3, [pc, #420]	; (80044f4 <_dtoa_r+0x21c>)
 800434e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004350:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004354:	6013      	str	r3, [r2, #0]
 8004356:	4658      	mov	r0, fp
 8004358:	b01b      	add	sp, #108	; 0x6c
 800435a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800435e:	aa18      	add	r2, sp, #96	; 0x60
 8004360:	a919      	add	r1, sp, #100	; 0x64
 8004362:	ec47 6b10 	vmov	d0, r6, r7
 8004366:	4648      	mov	r0, r9
 8004368:	f002 f954 	bl	8006614 <__d2b>
 800436c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004370:	4682      	mov	sl, r0
 8004372:	f040 80a0 	bne.w	80044b6 <_dtoa_r+0x1de>
 8004376:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800437a:	442c      	add	r4, r5
 800437c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004380:	2b20      	cmp	r3, #32
 8004382:	f340 842c 	ble.w	8004bde <_dtoa_r+0x906>
 8004386:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800438a:	fa08 f803 	lsl.w	r8, r8, r3
 800438e:	9b00      	ldr	r3, [sp, #0]
 8004390:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004394:	fa23 f000 	lsr.w	r0, r3, r0
 8004398:	ea48 0000 	orr.w	r0, r8, r0
 800439c:	f7fc fb52 	bl	8000a44 <__aeabi_ui2d>
 80043a0:	2301      	movs	r3, #1
 80043a2:	4606      	mov	r6, r0
 80043a4:	3c01      	subs	r4, #1
 80043a6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80043aa:	930f      	str	r3, [sp, #60]	; 0x3c
 80043ac:	4630      	mov	r0, r6
 80043ae:	4639      	mov	r1, r7
 80043b0:	2200      	movs	r2, #0
 80043b2:	4b51      	ldr	r3, [pc, #324]	; (80044f8 <_dtoa_r+0x220>)
 80043b4:	f7fc fa08 	bl	80007c8 <__aeabi_dsub>
 80043b8:	a347      	add	r3, pc, #284	; (adr r3, 80044d8 <_dtoa_r+0x200>)
 80043ba:	e9d3 2300 	ldrd	r2, r3, [r3]
 80043be:	f7fc fbbb 	bl	8000b38 <__aeabi_dmul>
 80043c2:	a347      	add	r3, pc, #284	; (adr r3, 80044e0 <_dtoa_r+0x208>)
 80043c4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80043c8:	f7fc fa00 	bl	80007cc <__adddf3>
 80043cc:	4606      	mov	r6, r0
 80043ce:	4620      	mov	r0, r4
 80043d0:	460f      	mov	r7, r1
 80043d2:	f7fc fb47 	bl	8000a64 <__aeabi_i2d>
 80043d6:	a344      	add	r3, pc, #272	; (adr r3, 80044e8 <_dtoa_r+0x210>)
 80043d8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80043dc:	f7fc fbac 	bl	8000b38 <__aeabi_dmul>
 80043e0:	4602      	mov	r2, r0
 80043e2:	460b      	mov	r3, r1
 80043e4:	4630      	mov	r0, r6
 80043e6:	4639      	mov	r1, r7
 80043e8:	f7fc f9f0 	bl	80007cc <__adddf3>
 80043ec:	4606      	mov	r6, r0
 80043ee:	460f      	mov	r7, r1
 80043f0:	f7fc fe52 	bl	8001098 <__aeabi_d2iz>
 80043f4:	2200      	movs	r2, #0
 80043f6:	9006      	str	r0, [sp, #24]
 80043f8:	2300      	movs	r3, #0
 80043fa:	4630      	mov	r0, r6
 80043fc:	4639      	mov	r1, r7
 80043fe:	f7fc fe0d 	bl	800101c <__aeabi_dcmplt>
 8004402:	2800      	cmp	r0, #0
 8004404:	f040 8273 	bne.w	80048ee <_dtoa_r+0x616>
 8004408:	9e06      	ldr	r6, [sp, #24]
 800440a:	2e16      	cmp	r6, #22
 800440c:	f200 825d 	bhi.w	80048ca <_dtoa_r+0x5f2>
 8004410:	4b3a      	ldr	r3, [pc, #232]	; (80044fc <_dtoa_r+0x224>)
 8004412:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004416:	e9d3 0100 	ldrd	r0, r1, [r3]
 800441a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800441e:	f7fc fe1b 	bl	8001058 <__aeabi_dcmpgt>
 8004422:	2800      	cmp	r0, #0
 8004424:	f000 83d7 	beq.w	8004bd6 <_dtoa_r+0x8fe>
 8004428:	1e73      	subs	r3, r6, #1
 800442a:	9306      	str	r3, [sp, #24]
 800442c:	2300      	movs	r3, #0
 800442e:	930d      	str	r3, [sp, #52]	; 0x34
 8004430:	1b2c      	subs	r4, r5, r4
 8004432:	f1b4 0801 	subs.w	r8, r4, #1
 8004436:	f100 8254 	bmi.w	80048e2 <_dtoa_r+0x60a>
 800443a:	2300      	movs	r3, #0
 800443c:	9308      	str	r3, [sp, #32]
 800443e:	9b06      	ldr	r3, [sp, #24]
 8004440:	2b00      	cmp	r3, #0
 8004442:	f2c0 8245 	blt.w	80048d0 <_dtoa_r+0x5f8>
 8004446:	4498      	add	r8, r3
 8004448:	930c      	str	r3, [sp, #48]	; 0x30
 800444a:	2300      	movs	r3, #0
 800444c:	930b      	str	r3, [sp, #44]	; 0x2c
 800444e:	9b02      	ldr	r3, [sp, #8]
 8004450:	2b09      	cmp	r3, #9
 8004452:	d85b      	bhi.n	800450c <_dtoa_r+0x234>
 8004454:	2b05      	cmp	r3, #5
 8004456:	f340 83c0 	ble.w	8004bda <_dtoa_r+0x902>
 800445a:	3b04      	subs	r3, #4
 800445c:	9302      	str	r3, [sp, #8]
 800445e:	2500      	movs	r5, #0
 8004460:	9b02      	ldr	r3, [sp, #8]
 8004462:	3b02      	subs	r3, #2
 8004464:	2b03      	cmp	r3, #3
 8004466:	f200 8498 	bhi.w	8004d9a <_dtoa_r+0xac2>
 800446a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800446e:	03df      	.short	0x03df
 8004470:	03e803bf 	.word	0x03e803bf
 8004474:	04f5      	.short	0x04f5
 8004476:	9a05      	ldr	r2, [sp, #20]
 8004478:	f242 730f 	movw	r3, #9999	; 0x270f
 800447c:	6013      	str	r3, [r2, #0]
 800447e:	9b00      	ldr	r3, [sp, #0]
 8004480:	b983      	cbnz	r3, 80044a4 <_dtoa_r+0x1cc>
 8004482:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004486:	b96b      	cbnz	r3, 80044a4 <_dtoa_r+0x1cc>
 8004488:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800448a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004500 <_dtoa_r+0x228>
 800448e:	2b00      	cmp	r3, #0
 8004490:	f43f af61 	beq.w	8004356 <_dtoa_r+0x7e>
 8004494:	f10b 0308 	add.w	r3, fp, #8
 8004498:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800449a:	4658      	mov	r0, fp
 800449c:	6013      	str	r3, [r2, #0]
 800449e:	b01b      	add	sp, #108	; 0x6c
 80044a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80044a4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80044a6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004504 <_dtoa_r+0x22c>
 80044aa:	2b00      	cmp	r3, #0
 80044ac:	f43f af53 	beq.w	8004356 <_dtoa_r+0x7e>
 80044b0:	f10b 0303 	add.w	r3, fp, #3
 80044b4:	e7f0      	b.n	8004498 <_dtoa_r+0x1c0>
 80044b6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80044ba:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80044be:	950f      	str	r5, [sp, #60]	; 0x3c
 80044c0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80044c4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80044c8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80044ca:	e76f      	b.n	80043ac <_dtoa_r+0xd4>
 80044cc:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004508 <_dtoa_r+0x230>
 80044d0:	4658      	mov	r0, fp
 80044d2:	b01b      	add	sp, #108	; 0x6c
 80044d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80044d8:	636f4361 	.word	0x636f4361
 80044dc:	3fd287a7 	.word	0x3fd287a7
 80044e0:	8b60c8b3 	.word	0x8b60c8b3
 80044e4:	3fc68a28 	.word	0x3fc68a28
 80044e8:	509f79fb 	.word	0x509f79fb
 80044ec:	3fd34413 	.word	0x3fd34413
 80044f0:	7ff00000 	.word	0x7ff00000
 80044f4:	08007305 	.word	0x08007305
 80044f8:	3ff80000 	.word	0x3ff80000
 80044fc:	08007360 	.word	0x08007360
 8004500:	08007328 	.word	0x08007328
 8004504:	08007334 	.word	0x08007334
 8004508:	08007304 	.word	0x08007304
 800450c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004510:	2501      	movs	r5, #1
 8004512:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004516:	2300      	movs	r3, #0
 8004518:	9302      	str	r3, [sp, #8]
 800451a:	9307      	str	r3, [sp, #28]
 800451c:	2100      	movs	r1, #0
 800451e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004522:	940e      	str	r4, [sp, #56]	; 0x38
 8004524:	4648      	mov	r0, r9
 8004526:	f001 fdcd 	bl	80060c4 <_Balloc>
 800452a:	2c0e      	cmp	r4, #14
 800452c:	4683      	mov	fp, r0
 800452e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004532:	f200 80fb 	bhi.w	800472c <_dtoa_r+0x454>
 8004536:	2d00      	cmp	r5, #0
 8004538:	f000 80f8 	beq.w	800472c <_dtoa_r+0x454>
 800453c:	ed9d 7b00 	vldr	d7, [sp]
 8004540:	9906      	ldr	r1, [sp, #24]
 8004542:	2900      	cmp	r1, #0
 8004544:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004548:	f340 83e5 	ble.w	8004d16 <_dtoa_r+0xa3e>
 800454c:	4b9d      	ldr	r3, [pc, #628]	; (80047c4 <_dtoa_r+0x4ec>)
 800454e:	f001 020f 	and.w	r2, r1, #15
 8004552:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004556:	ed93 7b00 	vldr	d7, [r3]
 800455a:	110c      	asrs	r4, r1, #4
 800455c:	06e2      	lsls	r2, r4, #27
 800455e:	ed8d 7b00 	vstr	d7, [sp]
 8004562:	f140 849e 	bpl.w	8004ea2 <_dtoa_r+0xbca>
 8004566:	4b98      	ldr	r3, [pc, #608]	; (80047c8 <_dtoa_r+0x4f0>)
 8004568:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800456c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004570:	f7fc fc0c 	bl	8000d8c <__aeabi_ddiv>
 8004574:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004578:	f004 040f 	and.w	r4, r4, #15
 800457c:	2603      	movs	r6, #3
 800457e:	b17c      	cbz	r4, 80045a0 <_dtoa_r+0x2c8>
 8004580:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004584:	4d90      	ldr	r5, [pc, #576]	; (80047c8 <_dtoa_r+0x4f0>)
 8004586:	07e3      	lsls	r3, r4, #31
 8004588:	d504      	bpl.n	8004594 <_dtoa_r+0x2bc>
 800458a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800458e:	f7fc fad3 	bl	8000b38 <__aeabi_dmul>
 8004592:	3601      	adds	r6, #1
 8004594:	1064      	asrs	r4, r4, #1
 8004596:	f105 0508 	add.w	r5, r5, #8
 800459a:	d1f4      	bne.n	8004586 <_dtoa_r+0x2ae>
 800459c:	e9cd 0100 	strd	r0, r1, [sp]
 80045a0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045a4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80045a8:	f7fc fbf0 	bl	8000d8c <__aeabi_ddiv>
 80045ac:	e9cd 0100 	strd	r0, r1, [sp]
 80045b0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80045b2:	b143      	cbz	r3, 80045c6 <_dtoa_r+0x2ee>
 80045b4:	2200      	movs	r2, #0
 80045b6:	4b85      	ldr	r3, [pc, #532]	; (80047cc <_dtoa_r+0x4f4>)
 80045b8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80045bc:	f7fc fd2e 	bl	800101c <__aeabi_dcmplt>
 80045c0:	2800      	cmp	r0, #0
 80045c2:	f040 84ff 	bne.w	8004fc4 <_dtoa_r+0xcec>
 80045c6:	4630      	mov	r0, r6
 80045c8:	f7fc fa4c 	bl	8000a64 <__aeabi_i2d>
 80045cc:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045d0:	f7fc fab2 	bl	8000b38 <__aeabi_dmul>
 80045d4:	4b7e      	ldr	r3, [pc, #504]	; (80047d0 <_dtoa_r+0x4f8>)
 80045d6:	2200      	movs	r2, #0
 80045d8:	f7fc f8f8 	bl	80007cc <__adddf3>
 80045dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045de:	4606      	mov	r6, r0
 80045e0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80045e4:	2b00      	cmp	r3, #0
 80045e6:	f000 841c 	beq.w	8004e22 <_dtoa_r+0xb4a>
 80045ea:	9b06      	ldr	r3, [sp, #24]
 80045ec:	9316      	str	r3, [sp, #88]	; 0x58
 80045ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045f0:	9312      	str	r3, [sp, #72]	; 0x48
 80045f2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80045f6:	f7fc fd4f 	bl	8001098 <__aeabi_d2iz>
 80045fa:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80045fc:	4b71      	ldr	r3, [pc, #452]	; (80047c4 <_dtoa_r+0x4ec>)
 80045fe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004602:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004606:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800460a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800460e:	f7fc fa29 	bl	8000a64 <__aeabi_i2d>
 8004612:	460b      	mov	r3, r1
 8004614:	4602      	mov	r2, r0
 8004616:	e9dd 0100 	ldrd	r0, r1, [sp]
 800461a:	e9cd 6700 	strd	r6, r7, [sp]
 800461e:	f7fc f8d3 	bl	80007c8 <__aeabi_dsub>
 8004622:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004624:	b2ed      	uxtb	r5, r5
 8004626:	4606      	mov	r6, r0
 8004628:	460f      	mov	r7, r1
 800462a:	f10b 0401 	add.w	r4, fp, #1
 800462e:	2b00      	cmp	r3, #0
 8004630:	f000 8458 	beq.w	8004ee4 <_dtoa_r+0xc0c>
 8004634:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004638:	2000      	movs	r0, #0
 800463a:	4966      	ldr	r1, [pc, #408]	; (80047d4 <_dtoa_r+0x4fc>)
 800463c:	f7fc fba6 	bl	8000d8c <__aeabi_ddiv>
 8004640:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004644:	f7fc f8c0 	bl	80007c8 <__aeabi_dsub>
 8004648:	f88b 5000 	strb.w	r5, [fp]
 800464c:	4632      	mov	r2, r6
 800464e:	463b      	mov	r3, r7
 8004650:	e9cd 0100 	strd	r0, r1, [sp]
 8004654:	f7fc fd00 	bl	8001058 <__aeabi_dcmpgt>
 8004658:	2800      	cmp	r0, #0
 800465a:	f040 8502 	bne.w	8005062 <_dtoa_r+0xd8a>
 800465e:	4632      	mov	r2, r6
 8004660:	463b      	mov	r3, r7
 8004662:	2000      	movs	r0, #0
 8004664:	4959      	ldr	r1, [pc, #356]	; (80047cc <_dtoa_r+0x4f4>)
 8004666:	f7fc f8af 	bl	80007c8 <__aeabi_dsub>
 800466a:	4602      	mov	r2, r0
 800466c:	460b      	mov	r3, r1
 800466e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004672:	f7fc fcf1 	bl	8001058 <__aeabi_dcmpgt>
 8004676:	2800      	cmp	r0, #0
 8004678:	f040 84fb 	bne.w	8005072 <_dtoa_r+0xd9a>
 800467c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800467e:	2a01      	cmp	r2, #1
 8004680:	d050      	beq.n	8004724 <_dtoa_r+0x44c>
 8004682:	445a      	add	r2, fp
 8004684:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004688:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800468c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004690:	4692      	mov	sl, r2
 8004692:	46cb      	mov	fp, r9
 8004694:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004698:	e00c      	b.n	80046b4 <_dtoa_r+0x3dc>
 800469a:	2000      	movs	r0, #0
 800469c:	494b      	ldr	r1, [pc, #300]	; (80047cc <_dtoa_r+0x4f4>)
 800469e:	f7fc f893 	bl	80007c8 <__aeabi_dsub>
 80046a2:	4642      	mov	r2, r8
 80046a4:	464b      	mov	r3, r9
 80046a6:	f7fc fcb9 	bl	800101c <__aeabi_dcmplt>
 80046aa:	2800      	cmp	r0, #0
 80046ac:	f040 84dc 	bne.w	8005068 <_dtoa_r+0xd90>
 80046b0:	4554      	cmp	r4, sl
 80046b2:	d030      	beq.n	8004716 <_dtoa_r+0x43e>
 80046b4:	4640      	mov	r0, r8
 80046b6:	4649      	mov	r1, r9
 80046b8:	2200      	movs	r2, #0
 80046ba:	4b47      	ldr	r3, [pc, #284]	; (80047d8 <_dtoa_r+0x500>)
 80046bc:	f7fc fa3c 	bl	8000b38 <__aeabi_dmul>
 80046c0:	2200      	movs	r2, #0
 80046c2:	4b45      	ldr	r3, [pc, #276]	; (80047d8 <_dtoa_r+0x500>)
 80046c4:	4680      	mov	r8, r0
 80046c6:	4689      	mov	r9, r1
 80046c8:	4630      	mov	r0, r6
 80046ca:	4639      	mov	r1, r7
 80046cc:	f7fc fa34 	bl	8000b38 <__aeabi_dmul>
 80046d0:	460f      	mov	r7, r1
 80046d2:	4606      	mov	r6, r0
 80046d4:	f7fc fce0 	bl	8001098 <__aeabi_d2iz>
 80046d8:	4605      	mov	r5, r0
 80046da:	f7fc f9c3 	bl	8000a64 <__aeabi_i2d>
 80046de:	4602      	mov	r2, r0
 80046e0:	460b      	mov	r3, r1
 80046e2:	4630      	mov	r0, r6
 80046e4:	4639      	mov	r1, r7
 80046e6:	f7fc f86f 	bl	80007c8 <__aeabi_dsub>
 80046ea:	3530      	adds	r5, #48	; 0x30
 80046ec:	b2ed      	uxtb	r5, r5
 80046ee:	4642      	mov	r2, r8
 80046f0:	464b      	mov	r3, r9
 80046f2:	f804 5b01 	strb.w	r5, [r4], #1
 80046f6:	4606      	mov	r6, r0
 80046f8:	460f      	mov	r7, r1
 80046fa:	f7fc fc8f 	bl	800101c <__aeabi_dcmplt>
 80046fe:	4632      	mov	r2, r6
 8004700:	463b      	mov	r3, r7
 8004702:	2800      	cmp	r0, #0
 8004704:	d0c9      	beq.n	800469a <_dtoa_r+0x3c2>
 8004706:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004708:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800470c:	9306      	str	r3, [sp, #24]
 800470e:	46d9      	mov	r9, fp
 8004710:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004714:	e236      	b.n	8004b84 <_dtoa_r+0x8ac>
 8004716:	46d9      	mov	r9, fp
 8004718:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800471c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004720:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004724:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004728:	e9cd 3400 	strd	r3, r4, [sp]
 800472c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800472e:	2b00      	cmp	r3, #0
 8004730:	f2c0 80ae 	blt.w	8004890 <_dtoa_r+0x5b8>
 8004734:	9a06      	ldr	r2, [sp, #24]
 8004736:	2a0e      	cmp	r2, #14
 8004738:	f300 80aa 	bgt.w	8004890 <_dtoa_r+0x5b8>
 800473c:	4b21      	ldr	r3, [pc, #132]	; (80047c4 <_dtoa_r+0x4ec>)
 800473e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004742:	ed93 7b00 	vldr	d7, [r3]
 8004746:	9b07      	ldr	r3, [sp, #28]
 8004748:	2b00      	cmp	r3, #0
 800474a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800474e:	f2c0 82be 	blt.w	8004cce <_dtoa_r+0x9f6>
 8004752:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004756:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800475a:	4630      	mov	r0, r6
 800475c:	4639      	mov	r1, r7
 800475e:	f7fc fb15 	bl	8000d8c <__aeabi_ddiv>
 8004762:	f7fc fc99 	bl	8001098 <__aeabi_d2iz>
 8004766:	4605      	mov	r5, r0
 8004768:	f7fc f97c 	bl	8000a64 <__aeabi_i2d>
 800476c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004770:	f7fc f9e2 	bl	8000b38 <__aeabi_dmul>
 8004774:	460b      	mov	r3, r1
 8004776:	4602      	mov	r2, r0
 8004778:	4639      	mov	r1, r7
 800477a:	4630      	mov	r0, r6
 800477c:	f7fc f824 	bl	80007c8 <__aeabi_dsub>
 8004780:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004784:	f88b 3000 	strb.w	r3, [fp]
 8004788:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800478a:	2b01      	cmp	r3, #1
 800478c:	4606      	mov	r6, r0
 800478e:	460f      	mov	r7, r1
 8004790:	f10b 0401 	add.w	r4, fp, #1
 8004794:	d053      	beq.n	800483e <_dtoa_r+0x566>
 8004796:	2200      	movs	r2, #0
 8004798:	4b0f      	ldr	r3, [pc, #60]	; (80047d8 <_dtoa_r+0x500>)
 800479a:	f7fc f9cd 	bl	8000b38 <__aeabi_dmul>
 800479e:	2200      	movs	r2, #0
 80047a0:	2300      	movs	r3, #0
 80047a2:	4606      	mov	r6, r0
 80047a4:	460f      	mov	r7, r1
 80047a6:	f7fc fc2f 	bl	8001008 <__aeabi_dcmpeq>
 80047aa:	2800      	cmp	r0, #0
 80047ac:	f040 81ea 	bne.w	8004b84 <_dtoa_r+0x8ac>
 80047b0:	f8cd a000 	str.w	sl, [sp]
 80047b4:	f8cd 901c 	str.w	r9, [sp, #28]
 80047b8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80047bc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80047c0:	e017      	b.n	80047f2 <_dtoa_r+0x51a>
 80047c2:	bf00      	nop
 80047c4:	08007360 	.word	0x08007360
 80047c8:	08007338 	.word	0x08007338
 80047cc:	3ff00000 	.word	0x3ff00000
 80047d0:	401c0000 	.word	0x401c0000
 80047d4:	3fe00000 	.word	0x3fe00000
 80047d8:	40240000 	.word	0x40240000
 80047dc:	f7fc f9ac 	bl	8000b38 <__aeabi_dmul>
 80047e0:	2200      	movs	r2, #0
 80047e2:	2300      	movs	r3, #0
 80047e4:	4606      	mov	r6, r0
 80047e6:	460f      	mov	r7, r1
 80047e8:	f7fc fc0e 	bl	8001008 <__aeabi_dcmpeq>
 80047ec:	2800      	cmp	r0, #0
 80047ee:	f040 833d 	bne.w	8004e6c <_dtoa_r+0xb94>
 80047f2:	464a      	mov	r2, r9
 80047f4:	4653      	mov	r3, sl
 80047f6:	4630      	mov	r0, r6
 80047f8:	4639      	mov	r1, r7
 80047fa:	f7fc fac7 	bl	8000d8c <__aeabi_ddiv>
 80047fe:	f7fc fc4b 	bl	8001098 <__aeabi_d2iz>
 8004802:	4605      	mov	r5, r0
 8004804:	f7fc f92e 	bl	8000a64 <__aeabi_i2d>
 8004808:	464a      	mov	r2, r9
 800480a:	4653      	mov	r3, sl
 800480c:	f7fc f994 	bl	8000b38 <__aeabi_dmul>
 8004810:	4602      	mov	r2, r0
 8004812:	460b      	mov	r3, r1
 8004814:	4630      	mov	r0, r6
 8004816:	4639      	mov	r1, r7
 8004818:	f7fb ffd6 	bl	80007c8 <__aeabi_dsub>
 800481c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004820:	f804 cb01 	strb.w	ip, [r4], #1
 8004824:	eba4 0c0b 	sub.w	ip, r4, fp
 8004828:	45e0      	cmp	r8, ip
 800482a:	4606      	mov	r6, r0
 800482c:	460f      	mov	r7, r1
 800482e:	f04f 0200 	mov.w	r2, #0
 8004832:	4bc1      	ldr	r3, [pc, #772]	; (8004b38 <_dtoa_r+0x860>)
 8004834:	d1d2      	bne.n	80047dc <_dtoa_r+0x504>
 8004836:	f8dd a000 	ldr.w	sl, [sp]
 800483a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800483e:	4632      	mov	r2, r6
 8004840:	463b      	mov	r3, r7
 8004842:	4630      	mov	r0, r6
 8004844:	4639      	mov	r1, r7
 8004846:	f7fb ffc1 	bl	80007cc <__adddf3>
 800484a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800484e:	4606      	mov	r6, r0
 8004850:	460f      	mov	r7, r1
 8004852:	f7fc fc01 	bl	8001058 <__aeabi_dcmpgt>
 8004856:	b958      	cbnz	r0, 8004870 <_dtoa_r+0x598>
 8004858:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800485c:	4630      	mov	r0, r6
 800485e:	4639      	mov	r1, r7
 8004860:	f7fc fbd2 	bl	8001008 <__aeabi_dcmpeq>
 8004864:	2800      	cmp	r0, #0
 8004866:	f000 818d 	beq.w	8004b84 <_dtoa_r+0x8ac>
 800486a:	07e9      	lsls	r1, r5, #31
 800486c:	f140 818a 	bpl.w	8004b84 <_dtoa_r+0x8ac>
 8004870:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004874:	e005      	b.n	8004882 <_dtoa_r+0x5aa>
 8004876:	459b      	cmp	fp, r3
 8004878:	f000 8373 	beq.w	8004f62 <_dtoa_r+0xc8a>
 800487c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004880:	461c      	mov	r4, r3
 8004882:	2d39      	cmp	r5, #57	; 0x39
 8004884:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004888:	d0f5      	beq.n	8004876 <_dtoa_r+0x59e>
 800488a:	3501      	adds	r5, #1
 800488c:	701d      	strb	r5, [r3, #0]
 800488e:	e179      	b.n	8004b84 <_dtoa_r+0x8ac>
 8004890:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004892:	2a00      	cmp	r2, #0
 8004894:	d03b      	beq.n	800490e <_dtoa_r+0x636>
 8004896:	9a02      	ldr	r2, [sp, #8]
 8004898:	2a01      	cmp	r2, #1
 800489a:	f340 820b 	ble.w	8004cb4 <_dtoa_r+0x9dc>
 800489e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048a0:	1e5f      	subs	r7, r3, #1
 80048a2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80048a4:	42bb      	cmp	r3, r7
 80048a6:	f2c0 82e6 	blt.w	8004e76 <_dtoa_r+0xb9e>
 80048aa:	1bdf      	subs	r7, r3, r7
 80048ac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048ae:	2b00      	cmp	r3, #0
 80048b0:	f2c0 830b 	blt.w	8004eca <_dtoa_r+0xbf2>
 80048b4:	9a08      	ldr	r2, [sp, #32]
 80048b6:	4614      	mov	r4, r2
 80048b8:	441a      	add	r2, r3
 80048ba:	4498      	add	r8, r3
 80048bc:	9208      	str	r2, [sp, #32]
 80048be:	2101      	movs	r1, #1
 80048c0:	4648      	mov	r0, r9
 80048c2:	f001 fcbf 	bl	8006244 <__i2b>
 80048c6:	4605      	mov	r5, r0
 80048c8:	e024      	b.n	8004914 <_dtoa_r+0x63c>
 80048ca:	2301      	movs	r3, #1
 80048cc:	930d      	str	r3, [sp, #52]	; 0x34
 80048ce:	e5af      	b.n	8004430 <_dtoa_r+0x158>
 80048d0:	9a08      	ldr	r2, [sp, #32]
 80048d2:	9b06      	ldr	r3, [sp, #24]
 80048d4:	1ad2      	subs	r2, r2, r3
 80048d6:	425b      	negs	r3, r3
 80048d8:	930b      	str	r3, [sp, #44]	; 0x2c
 80048da:	2300      	movs	r3, #0
 80048dc:	9208      	str	r2, [sp, #32]
 80048de:	930c      	str	r3, [sp, #48]	; 0x30
 80048e0:	e5b5      	b.n	800444e <_dtoa_r+0x176>
 80048e2:	f1c4 0301 	rsb	r3, r4, #1
 80048e6:	9308      	str	r3, [sp, #32]
 80048e8:	f04f 0800 	mov.w	r8, #0
 80048ec:	e5a7      	b.n	800443e <_dtoa_r+0x166>
 80048ee:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80048f2:	4640      	mov	r0, r8
 80048f4:	f7fc f8b6 	bl	8000a64 <__aeabi_i2d>
 80048f8:	4632      	mov	r2, r6
 80048fa:	463b      	mov	r3, r7
 80048fc:	f7fc fb84 	bl	8001008 <__aeabi_dcmpeq>
 8004900:	2800      	cmp	r0, #0
 8004902:	f47f ad81 	bne.w	8004408 <_dtoa_r+0x130>
 8004906:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800490a:	9306      	str	r3, [sp, #24]
 800490c:	e57c      	b.n	8004408 <_dtoa_r+0x130>
 800490e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004910:	9c08      	ldr	r4, [sp, #32]
 8004912:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004914:	2c00      	cmp	r4, #0
 8004916:	dd0c      	ble.n	8004932 <_dtoa_r+0x65a>
 8004918:	f1b8 0f00 	cmp.w	r8, #0
 800491c:	dd09      	ble.n	8004932 <_dtoa_r+0x65a>
 800491e:	4544      	cmp	r4, r8
 8004920:	9a08      	ldr	r2, [sp, #32]
 8004922:	4623      	mov	r3, r4
 8004924:	bfa8      	it	ge
 8004926:	4643      	movge	r3, r8
 8004928:	1ad2      	subs	r2, r2, r3
 800492a:	9208      	str	r2, [sp, #32]
 800492c:	1ae4      	subs	r4, r4, r3
 800492e:	eba8 0803 	sub.w	r8, r8, r3
 8004932:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004934:	b16b      	cbz	r3, 8004952 <_dtoa_r+0x67a>
 8004936:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004938:	2a00      	cmp	r2, #0
 800493a:	f000 8290 	beq.w	8004e5e <_dtoa_r+0xb86>
 800493e:	1bde      	subs	r6, r3, r7
 8004940:	2f00      	cmp	r7, #0
 8004942:	f040 819b 	bne.w	8004c7c <_dtoa_r+0x9a4>
 8004946:	4651      	mov	r1, sl
 8004948:	4632      	mov	r2, r6
 800494a:	4648      	mov	r0, r9
 800494c:	f001 fd2a 	bl	80063a4 <__pow5mult>
 8004950:	4682      	mov	sl, r0
 8004952:	2101      	movs	r1, #1
 8004954:	4648      	mov	r0, r9
 8004956:	f001 fc75 	bl	8006244 <__i2b>
 800495a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800495c:	4606      	mov	r6, r0
 800495e:	2a00      	cmp	r2, #0
 8004960:	f040 8125 	bne.w	8004bae <_dtoa_r+0x8d6>
 8004964:	9b02      	ldr	r3, [sp, #8]
 8004966:	2b01      	cmp	r3, #1
 8004968:	f340 816c 	ble.w	8004c44 <_dtoa_r+0x96c>
 800496c:	2001      	movs	r0, #1
 800496e:	4440      	add	r0, r8
 8004970:	f010 001f 	ands.w	r0, r0, #31
 8004974:	f000 8119 	beq.w	8004baa <_dtoa_r+0x8d2>
 8004978:	f1c0 0320 	rsb	r3, r0, #32
 800497c:	2b04      	cmp	r3, #4
 800497e:	f340 83ac 	ble.w	80050da <_dtoa_r+0xe02>
 8004982:	f1c0 001c 	rsb	r0, r0, #28
 8004986:	9b08      	ldr	r3, [sp, #32]
 8004988:	4403      	add	r3, r0
 800498a:	9308      	str	r3, [sp, #32]
 800498c:	4404      	add	r4, r0
 800498e:	4480      	add	r8, r0
 8004990:	9b08      	ldr	r3, [sp, #32]
 8004992:	2b00      	cmp	r3, #0
 8004994:	dd05      	ble.n	80049a2 <_dtoa_r+0x6ca>
 8004996:	4651      	mov	r1, sl
 8004998:	461a      	mov	r2, r3
 800499a:	4648      	mov	r0, r9
 800499c:	f001 fd52 	bl	8006444 <__lshift>
 80049a0:	4682      	mov	sl, r0
 80049a2:	f1b8 0f00 	cmp.w	r8, #0
 80049a6:	dd05      	ble.n	80049b4 <_dtoa_r+0x6dc>
 80049a8:	4631      	mov	r1, r6
 80049aa:	4642      	mov	r2, r8
 80049ac:	4648      	mov	r0, r9
 80049ae:	f001 fd49 	bl	8006444 <__lshift>
 80049b2:	4606      	mov	r6, r0
 80049b4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80049b6:	2b00      	cmp	r3, #0
 80049b8:	d177      	bne.n	8004aaa <_dtoa_r+0x7d2>
 80049ba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049bc:	2b00      	cmp	r3, #0
 80049be:	f340 8209 	ble.w	8004dd4 <_dtoa_r+0xafc>
 80049c2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80049c4:	2b00      	cmp	r3, #0
 80049c6:	f000 8089 	beq.w	8004adc <_dtoa_r+0x804>
 80049ca:	2c00      	cmp	r4, #0
 80049cc:	f300 816b 	bgt.w	8004ca6 <_dtoa_r+0x9ce>
 80049d0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80049d2:	2b00      	cmp	r3, #0
 80049d4:	f040 81cd 	bne.w	8004d72 <_dtoa_r+0xa9a>
 80049d8:	46a8      	mov	r8, r5
 80049da:	9a00      	ldr	r2, [sp, #0]
 80049dc:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80049e0:	f002 0201 	and.w	r2, r2, #1
 80049e4:	920a      	str	r2, [sp, #40]	; 0x28
 80049e6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80049e8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80049ec:	441a      	add	r2, r3
 80049ee:	465f      	mov	r7, fp
 80049f0:	9209      	str	r2, [sp, #36]	; 0x24
 80049f2:	46b3      	mov	fp, r6
 80049f4:	4659      	mov	r1, fp
 80049f6:	4650      	mov	r0, sl
 80049f8:	f7ff fbdc 	bl	80041b4 <quorem>
 80049fc:	4629      	mov	r1, r5
 80049fe:	4604      	mov	r4, r0
 8004a00:	4650      	mov	r0, sl
 8004a02:	f001 fd75 	bl	80064f0 <__mcmp>
 8004a06:	4659      	mov	r1, fp
 8004a08:	4606      	mov	r6, r0
 8004a0a:	4642      	mov	r2, r8
 8004a0c:	4648      	mov	r0, r9
 8004a0e:	f001 fd8b 	bl	8006528 <__mdiff>
 8004a12:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004a16:	9300      	str	r3, [sp, #0]
 8004a18:	68c3      	ldr	r3, [r0, #12]
 8004a1a:	4601      	mov	r1, r0
 8004a1c:	2b00      	cmp	r3, #0
 8004a1e:	f040 81d4 	bne.w	8004dca <_dtoa_r+0xaf2>
 8004a22:	9008      	str	r0, [sp, #32]
 8004a24:	4650      	mov	r0, sl
 8004a26:	f001 fd63 	bl	80064f0 <__mcmp>
 8004a2a:	9a08      	ldr	r2, [sp, #32]
 8004a2c:	9007      	str	r0, [sp, #28]
 8004a2e:	4611      	mov	r1, r2
 8004a30:	4648      	mov	r0, r9
 8004a32:	f001 fb6d 	bl	8006110 <_Bfree>
 8004a36:	9b07      	ldr	r3, [sp, #28]
 8004a38:	b933      	cbnz	r3, 8004a48 <_dtoa_r+0x770>
 8004a3a:	9a02      	ldr	r2, [sp, #8]
 8004a3c:	b922      	cbnz	r2, 8004a48 <_dtoa_r+0x770>
 8004a3e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a40:	2b00      	cmp	r3, #0
 8004a42:	f000 8319 	beq.w	8005078 <_dtoa_r+0xda0>
 8004a46:	9b02      	ldr	r3, [sp, #8]
 8004a48:	2e00      	cmp	r6, #0
 8004a4a:	f2c0 821c 	blt.w	8004e86 <_dtoa_r+0xbae>
 8004a4e:	d105      	bne.n	8004a5c <_dtoa_r+0x784>
 8004a50:	9a02      	ldr	r2, [sp, #8]
 8004a52:	b91a      	cbnz	r2, 8004a5c <_dtoa_r+0x784>
 8004a54:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004a56:	2a00      	cmp	r2, #0
 8004a58:	f000 8215 	beq.w	8004e86 <_dtoa_r+0xbae>
 8004a5c:	2b00      	cmp	r3, #0
 8004a5e:	f107 0401 	add.w	r4, r7, #1
 8004a62:	f300 8225 	bgt.w	8004eb0 <_dtoa_r+0xbd8>
 8004a66:	9b00      	ldr	r3, [sp, #0]
 8004a68:	703b      	strb	r3, [r7, #0]
 8004a6a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a6c:	42bb      	cmp	r3, r7
 8004a6e:	f000 8230 	beq.w	8004ed2 <_dtoa_r+0xbfa>
 8004a72:	4651      	mov	r1, sl
 8004a74:	2300      	movs	r3, #0
 8004a76:	220a      	movs	r2, #10
 8004a78:	4648      	mov	r0, r9
 8004a7a:	f001 fb53 	bl	8006124 <__multadd>
 8004a7e:	4545      	cmp	r5, r8
 8004a80:	4682      	mov	sl, r0
 8004a82:	4629      	mov	r1, r5
 8004a84:	f04f 0300 	mov.w	r3, #0
 8004a88:	f04f 020a 	mov.w	r2, #10
 8004a8c:	4648      	mov	r0, r9
 8004a8e:	f000 8196 	beq.w	8004dbe <_dtoa_r+0xae6>
 8004a92:	f001 fb47 	bl	8006124 <__multadd>
 8004a96:	4641      	mov	r1, r8
 8004a98:	4605      	mov	r5, r0
 8004a9a:	2300      	movs	r3, #0
 8004a9c:	220a      	movs	r2, #10
 8004a9e:	4648      	mov	r0, r9
 8004aa0:	f001 fb40 	bl	8006124 <__multadd>
 8004aa4:	4627      	mov	r7, r4
 8004aa6:	4680      	mov	r8, r0
 8004aa8:	e7a4      	b.n	80049f4 <_dtoa_r+0x71c>
 8004aaa:	4631      	mov	r1, r6
 8004aac:	4650      	mov	r0, sl
 8004aae:	f001 fd1f 	bl	80064f0 <__mcmp>
 8004ab2:	2800      	cmp	r0, #0
 8004ab4:	da81      	bge.n	80049ba <_dtoa_r+0x6e2>
 8004ab6:	9f06      	ldr	r7, [sp, #24]
 8004ab8:	4651      	mov	r1, sl
 8004aba:	2300      	movs	r3, #0
 8004abc:	220a      	movs	r2, #10
 8004abe:	4648      	mov	r0, r9
 8004ac0:	3f01      	subs	r7, #1
 8004ac2:	9706      	str	r7, [sp, #24]
 8004ac4:	f001 fb2e 	bl	8006124 <__multadd>
 8004ac8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004aca:	4682      	mov	sl, r0
 8004acc:	2b00      	cmp	r3, #0
 8004ace:	f040 82eb 	bne.w	80050a8 <_dtoa_r+0xdd0>
 8004ad2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ad4:	2b00      	cmp	r3, #0
 8004ad6:	f340 82f3 	ble.w	80050c0 <_dtoa_r+0xde8>
 8004ada:	9309      	str	r3, [sp, #36]	; 0x24
 8004adc:	465c      	mov	r4, fp
 8004ade:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004ae2:	e002      	b.n	8004aea <_dtoa_r+0x812>
 8004ae4:	f001 fb1e 	bl	8006124 <__multadd>
 8004ae8:	4682      	mov	sl, r0
 8004aea:	4631      	mov	r1, r6
 8004aec:	4650      	mov	r0, sl
 8004aee:	f7ff fb61 	bl	80041b4 <quorem>
 8004af2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004af6:	f804 7b01 	strb.w	r7, [r4], #1
 8004afa:	eba4 030b 	sub.w	r3, r4, fp
 8004afe:	4598      	cmp	r8, r3
 8004b00:	f04f 020a 	mov.w	r2, #10
 8004b04:	f04f 0300 	mov.w	r3, #0
 8004b08:	4651      	mov	r1, sl
 8004b0a:	4648      	mov	r0, r9
 8004b0c:	dcea      	bgt.n	8004ae4 <_dtoa_r+0x80c>
 8004b0e:	2300      	movs	r3, #0
 8004b10:	9700      	str	r7, [sp, #0]
 8004b12:	9302      	str	r3, [sp, #8]
 8004b14:	4651      	mov	r1, sl
 8004b16:	2201      	movs	r2, #1
 8004b18:	4648      	mov	r0, r9
 8004b1a:	f001 fc93 	bl	8006444 <__lshift>
 8004b1e:	4631      	mov	r1, r6
 8004b20:	4682      	mov	sl, r0
 8004b22:	f001 fce5 	bl	80064f0 <__mcmp>
 8004b26:	2800      	cmp	r0, #0
 8004b28:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004b2c:	dc14      	bgt.n	8004b58 <_dtoa_r+0x880>
 8004b2e:	d108      	bne.n	8004b42 <_dtoa_r+0x86a>
 8004b30:	9b00      	ldr	r3, [sp, #0]
 8004b32:	07db      	lsls	r3, r3, #31
 8004b34:	d410      	bmi.n	8004b58 <_dtoa_r+0x880>
 8004b36:	e004      	b.n	8004b42 <_dtoa_r+0x86a>
 8004b38:	40240000 	.word	0x40240000
 8004b3c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004b40:	461c      	mov	r4, r3
 8004b42:	2a30      	cmp	r2, #48	; 0x30
 8004b44:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004b48:	d0f8      	beq.n	8004b3c <_dtoa_r+0x864>
 8004b4a:	e00b      	b.n	8004b64 <_dtoa_r+0x88c>
 8004b4c:	459b      	cmp	fp, r3
 8004b4e:	f000 814e 	beq.w	8004dee <_dtoa_r+0xb16>
 8004b52:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004b56:	461c      	mov	r4, r3
 8004b58:	2a39      	cmp	r2, #57	; 0x39
 8004b5a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004b5e:	d0f5      	beq.n	8004b4c <_dtoa_r+0x874>
 8004b60:	3201      	adds	r2, #1
 8004b62:	701a      	strb	r2, [r3, #0]
 8004b64:	4631      	mov	r1, r6
 8004b66:	4648      	mov	r0, r9
 8004b68:	f001 fad2 	bl	8006110 <_Bfree>
 8004b6c:	b155      	cbz	r5, 8004b84 <_dtoa_r+0x8ac>
 8004b6e:	9902      	ldr	r1, [sp, #8]
 8004b70:	b121      	cbz	r1, 8004b7c <_dtoa_r+0x8a4>
 8004b72:	42a9      	cmp	r1, r5
 8004b74:	d002      	beq.n	8004b7c <_dtoa_r+0x8a4>
 8004b76:	4648      	mov	r0, r9
 8004b78:	f001 faca 	bl	8006110 <_Bfree>
 8004b7c:	4629      	mov	r1, r5
 8004b7e:	4648      	mov	r0, r9
 8004b80:	f001 fac6 	bl	8006110 <_Bfree>
 8004b84:	4651      	mov	r1, sl
 8004b86:	4648      	mov	r0, r9
 8004b88:	f001 fac2 	bl	8006110 <_Bfree>
 8004b8c:	2200      	movs	r2, #0
 8004b8e:	9b06      	ldr	r3, [sp, #24]
 8004b90:	7022      	strb	r2, [r4, #0]
 8004b92:	9a05      	ldr	r2, [sp, #20]
 8004b94:	3301      	adds	r3, #1
 8004b96:	6013      	str	r3, [r2, #0]
 8004b98:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004b9a:	2b00      	cmp	r3, #0
 8004b9c:	f43f abdb 	beq.w	8004356 <_dtoa_r+0x7e>
 8004ba0:	4658      	mov	r0, fp
 8004ba2:	601c      	str	r4, [r3, #0]
 8004ba4:	b01b      	add	sp, #108	; 0x6c
 8004ba6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004baa:	201c      	movs	r0, #28
 8004bac:	e6eb      	b.n	8004986 <_dtoa_r+0x6ae>
 8004bae:	4601      	mov	r1, r0
 8004bb0:	4648      	mov	r0, r9
 8004bb2:	f001 fbf7 	bl	80063a4 <__pow5mult>
 8004bb6:	9b02      	ldr	r3, [sp, #8]
 8004bb8:	2b01      	cmp	r3, #1
 8004bba:	4606      	mov	r6, r0
 8004bbc:	f340 80d4 	ble.w	8004d68 <_dtoa_r+0xa90>
 8004bc0:	2300      	movs	r3, #0
 8004bc2:	930c      	str	r3, [sp, #48]	; 0x30
 8004bc4:	6933      	ldr	r3, [r6, #16]
 8004bc6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004bca:	6918      	ldr	r0, [r3, #16]
 8004bcc:	f001 faea 	bl	80061a4 <__hi0bits>
 8004bd0:	f1c0 0020 	rsb	r0, r0, #32
 8004bd4:	e6cb      	b.n	800496e <_dtoa_r+0x696>
 8004bd6:	900d      	str	r0, [sp, #52]	; 0x34
 8004bd8:	e42a      	b.n	8004430 <_dtoa_r+0x158>
 8004bda:	2501      	movs	r5, #1
 8004bdc:	e440      	b.n	8004460 <_dtoa_r+0x188>
 8004bde:	f1c3 0820 	rsb	r8, r3, #32
 8004be2:	9b00      	ldr	r3, [sp, #0]
 8004be4:	fa03 f008 	lsl.w	r0, r3, r8
 8004be8:	f7ff bbd8 	b.w	800439c <_dtoa_r+0xc4>
 8004bec:	2300      	movs	r3, #0
 8004bee:	930a      	str	r3, [sp, #40]	; 0x28
 8004bf0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004bf4:	4413      	add	r3, r2
 8004bf6:	930e      	str	r3, [sp, #56]	; 0x38
 8004bf8:	3301      	adds	r3, #1
 8004bfa:	2b01      	cmp	r3, #1
 8004bfc:	461e      	mov	r6, r3
 8004bfe:	9309      	str	r3, [sp, #36]	; 0x24
 8004c00:	bfb8      	it	lt
 8004c02:	2601      	movlt	r6, #1
 8004c04:	2100      	movs	r1, #0
 8004c06:	2e17      	cmp	r6, #23
 8004c08:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004c0c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004c0e:	f77f ac89 	ble.w	8004524 <_dtoa_r+0x24c>
 8004c12:	2201      	movs	r2, #1
 8004c14:	2304      	movs	r3, #4
 8004c16:	005b      	lsls	r3, r3, #1
 8004c18:	f103 0014 	add.w	r0, r3, #20
 8004c1c:	42b0      	cmp	r0, r6
 8004c1e:	4611      	mov	r1, r2
 8004c20:	f102 0201 	add.w	r2, r2, #1
 8004c24:	d9f7      	bls.n	8004c16 <_dtoa_r+0x93e>
 8004c26:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004c2a:	e47b      	b.n	8004524 <_dtoa_r+0x24c>
 8004c2c:	2300      	movs	r3, #0
 8004c2e:	930a      	str	r3, [sp, #40]	; 0x28
 8004c30:	9e07      	ldr	r6, [sp, #28]
 8004c32:	2e00      	cmp	r6, #0
 8004c34:	f340 80e2 	ble.w	8004dfc <_dtoa_r+0xb24>
 8004c38:	960e      	str	r6, [sp, #56]	; 0x38
 8004c3a:	9609      	str	r6, [sp, #36]	; 0x24
 8004c3c:	e7e2      	b.n	8004c04 <_dtoa_r+0x92c>
 8004c3e:	2301      	movs	r3, #1
 8004c40:	930a      	str	r3, [sp, #40]	; 0x28
 8004c42:	e7f5      	b.n	8004c30 <_dtoa_r+0x958>
 8004c44:	9b00      	ldr	r3, [sp, #0]
 8004c46:	2b00      	cmp	r3, #0
 8004c48:	f47f ae90 	bne.w	800496c <_dtoa_r+0x694>
 8004c4c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004c50:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004c54:	2b00      	cmp	r3, #0
 8004c56:	f040 8192 	bne.w	8004f7e <_dtoa_r+0xca6>
 8004c5a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004c5e:	0d1b      	lsrs	r3, r3, #20
 8004c60:	051b      	lsls	r3, r3, #20
 8004c62:	b12b      	cbz	r3, 8004c70 <_dtoa_r+0x998>
 8004c64:	9b08      	ldr	r3, [sp, #32]
 8004c66:	3301      	adds	r3, #1
 8004c68:	9308      	str	r3, [sp, #32]
 8004c6a:	f108 0801 	add.w	r8, r8, #1
 8004c6e:	2301      	movs	r3, #1
 8004c70:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004c72:	930c      	str	r3, [sp, #48]	; 0x30
 8004c74:	2a00      	cmp	r2, #0
 8004c76:	f43f ae79 	beq.w	800496c <_dtoa_r+0x694>
 8004c7a:	e7a3      	b.n	8004bc4 <_dtoa_r+0x8ec>
 8004c7c:	463a      	mov	r2, r7
 8004c7e:	4629      	mov	r1, r5
 8004c80:	4648      	mov	r0, r9
 8004c82:	f001 fb8f 	bl	80063a4 <__pow5mult>
 8004c86:	4652      	mov	r2, sl
 8004c88:	4601      	mov	r1, r0
 8004c8a:	4605      	mov	r5, r0
 8004c8c:	4648      	mov	r0, r9
 8004c8e:	f001 fae3 	bl	8006258 <__multiply>
 8004c92:	4651      	mov	r1, sl
 8004c94:	4607      	mov	r7, r0
 8004c96:	4648      	mov	r0, r9
 8004c98:	f001 fa3a 	bl	8006110 <_Bfree>
 8004c9c:	46ba      	mov	sl, r7
 8004c9e:	2e00      	cmp	r6, #0
 8004ca0:	f43f ae57 	beq.w	8004952 <_dtoa_r+0x67a>
 8004ca4:	e64f      	b.n	8004946 <_dtoa_r+0x66e>
 8004ca6:	4629      	mov	r1, r5
 8004ca8:	4622      	mov	r2, r4
 8004caa:	4648      	mov	r0, r9
 8004cac:	f001 fbca 	bl	8006444 <__lshift>
 8004cb0:	4605      	mov	r5, r0
 8004cb2:	e68d      	b.n	80049d0 <_dtoa_r+0x6f8>
 8004cb4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004cb6:	2a00      	cmp	r2, #0
 8004cb8:	f000 815d 	beq.w	8004f76 <_dtoa_r+0xc9e>
 8004cbc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004cc0:	9a08      	ldr	r2, [sp, #32]
 8004cc2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004cc4:	4614      	mov	r4, r2
 8004cc6:	441a      	add	r2, r3
 8004cc8:	4498      	add	r8, r3
 8004cca:	9208      	str	r2, [sp, #32]
 8004ccc:	e5f7      	b.n	80048be <_dtoa_r+0x5e6>
 8004cce:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cd0:	2b00      	cmp	r3, #0
 8004cd2:	f73f ad3e 	bgt.w	8004752 <_dtoa_r+0x47a>
 8004cd6:	f040 80bc 	bne.w	8004e52 <_dtoa_r+0xb7a>
 8004cda:	ec51 0b17 	vmov	r0, r1, d7
 8004cde:	2200      	movs	r2, #0
 8004ce0:	4bb2      	ldr	r3, [pc, #712]	; (8004fac <_dtoa_r+0xcd4>)
 8004ce2:	f7fb ff29 	bl	8000b38 <__aeabi_dmul>
 8004ce6:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004cea:	f7fc f9ab 	bl	8001044 <__aeabi_dcmpge>
 8004cee:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004cf0:	4635      	mov	r5, r6
 8004cf2:	2800      	cmp	r0, #0
 8004cf4:	d176      	bne.n	8004de4 <_dtoa_r+0xb0c>
 8004cf6:	9a06      	ldr	r2, [sp, #24]
 8004cf8:	2331      	movs	r3, #49	; 0x31
 8004cfa:	3201      	adds	r2, #1
 8004cfc:	9206      	str	r2, [sp, #24]
 8004cfe:	f88b 3000 	strb.w	r3, [fp]
 8004d02:	f10b 0401 	add.w	r4, fp, #1
 8004d06:	4631      	mov	r1, r6
 8004d08:	4648      	mov	r0, r9
 8004d0a:	f001 fa01 	bl	8006110 <_Bfree>
 8004d0e:	2d00      	cmp	r5, #0
 8004d10:	f47f af34 	bne.w	8004b7c <_dtoa_r+0x8a4>
 8004d14:	e736      	b.n	8004b84 <_dtoa_r+0x8ac>
 8004d16:	f000 8142 	beq.w	8004f9e <_dtoa_r+0xcc6>
 8004d1a:	9b06      	ldr	r3, [sp, #24]
 8004d1c:	425c      	negs	r4, r3
 8004d1e:	4ba4      	ldr	r3, [pc, #656]	; (8004fb0 <_dtoa_r+0xcd8>)
 8004d20:	f004 020f 	and.w	r2, r4, #15
 8004d24:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004d28:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004d2c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004d30:	f7fb ff02 	bl	8000b38 <__aeabi_dmul>
 8004d34:	1124      	asrs	r4, r4, #4
 8004d36:	e9cd 0100 	strd	r0, r1, [sp]
 8004d3a:	f000 81c6 	beq.w	80050ca <_dtoa_r+0xdf2>
 8004d3e:	4d9d      	ldr	r5, [pc, #628]	; (8004fb4 <_dtoa_r+0xcdc>)
 8004d40:	2300      	movs	r3, #0
 8004d42:	2602      	movs	r6, #2
 8004d44:	07e7      	lsls	r7, r4, #31
 8004d46:	d505      	bpl.n	8004d54 <_dtoa_r+0xa7c>
 8004d48:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004d4c:	f7fb fef4 	bl	8000b38 <__aeabi_dmul>
 8004d50:	3601      	adds	r6, #1
 8004d52:	2301      	movs	r3, #1
 8004d54:	1064      	asrs	r4, r4, #1
 8004d56:	f105 0508 	add.w	r5, r5, #8
 8004d5a:	d1f3      	bne.n	8004d44 <_dtoa_r+0xa6c>
 8004d5c:	2b00      	cmp	r3, #0
 8004d5e:	f43f ac27 	beq.w	80045b0 <_dtoa_r+0x2d8>
 8004d62:	e9cd 0100 	strd	r0, r1, [sp]
 8004d66:	e423      	b.n	80045b0 <_dtoa_r+0x2d8>
 8004d68:	9b00      	ldr	r3, [sp, #0]
 8004d6a:	2b00      	cmp	r3, #0
 8004d6c:	f43f af6e 	beq.w	8004c4c <_dtoa_r+0x974>
 8004d70:	e726      	b.n	8004bc0 <_dtoa_r+0x8e8>
 8004d72:	6869      	ldr	r1, [r5, #4]
 8004d74:	4648      	mov	r0, r9
 8004d76:	f001 f9a5 	bl	80060c4 <_Balloc>
 8004d7a:	692b      	ldr	r3, [r5, #16]
 8004d7c:	3302      	adds	r3, #2
 8004d7e:	009a      	lsls	r2, r3, #2
 8004d80:	4604      	mov	r4, r0
 8004d82:	f105 010c 	add.w	r1, r5, #12
 8004d86:	300c      	adds	r0, #12
 8004d88:	f7fb fbba 	bl	8000500 <memcpy>
 8004d8c:	4621      	mov	r1, r4
 8004d8e:	2201      	movs	r2, #1
 8004d90:	4648      	mov	r0, r9
 8004d92:	f001 fb57 	bl	8006444 <__lshift>
 8004d96:	4680      	mov	r8, r0
 8004d98:	e61f      	b.n	80049da <_dtoa_r+0x702>
 8004d9a:	2400      	movs	r4, #0
 8004d9c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004da0:	4621      	mov	r1, r4
 8004da2:	4648      	mov	r0, r9
 8004da4:	f001 f98e 	bl	80060c4 <_Balloc>
 8004da8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004dac:	930e      	str	r3, [sp, #56]	; 0x38
 8004dae:	9309      	str	r3, [sp, #36]	; 0x24
 8004db0:	2301      	movs	r3, #1
 8004db2:	4683      	mov	fp, r0
 8004db4:	9407      	str	r4, [sp, #28]
 8004db6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004dba:	930a      	str	r3, [sp, #40]	; 0x28
 8004dbc:	e4b6      	b.n	800472c <_dtoa_r+0x454>
 8004dbe:	f001 f9b1 	bl	8006124 <__multadd>
 8004dc2:	4627      	mov	r7, r4
 8004dc4:	4605      	mov	r5, r0
 8004dc6:	4680      	mov	r8, r0
 8004dc8:	e614      	b.n	80049f4 <_dtoa_r+0x71c>
 8004dca:	4648      	mov	r0, r9
 8004dcc:	f001 f9a0 	bl	8006110 <_Bfree>
 8004dd0:	2301      	movs	r3, #1
 8004dd2:	e639      	b.n	8004a48 <_dtoa_r+0x770>
 8004dd4:	9b02      	ldr	r3, [sp, #8]
 8004dd6:	2b02      	cmp	r3, #2
 8004dd8:	f77f adf3 	ble.w	80049c2 <_dtoa_r+0x6ea>
 8004ddc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dde:	2b00      	cmp	r3, #0
 8004de0:	f000 80cf 	beq.w	8004f82 <_dtoa_r+0xcaa>
 8004de4:	9b07      	ldr	r3, [sp, #28]
 8004de6:	43db      	mvns	r3, r3
 8004de8:	9306      	str	r3, [sp, #24]
 8004dea:	465c      	mov	r4, fp
 8004dec:	e78b      	b.n	8004d06 <_dtoa_r+0xa2e>
 8004dee:	9a06      	ldr	r2, [sp, #24]
 8004df0:	2331      	movs	r3, #49	; 0x31
 8004df2:	3201      	adds	r2, #1
 8004df4:	9206      	str	r2, [sp, #24]
 8004df6:	f88b 3000 	strb.w	r3, [fp]
 8004dfa:	e6b3      	b.n	8004b64 <_dtoa_r+0x88c>
 8004dfc:	2401      	movs	r4, #1
 8004dfe:	9409      	str	r4, [sp, #36]	; 0x24
 8004e00:	9407      	str	r4, [sp, #28]
 8004e02:	f7ff bb8b 	b.w	800451c <_dtoa_r+0x244>
 8004e06:	4630      	mov	r0, r6
 8004e08:	f7fb fe2c 	bl	8000a64 <__aeabi_i2d>
 8004e0c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e10:	f7fb fe92 	bl	8000b38 <__aeabi_dmul>
 8004e14:	2200      	movs	r2, #0
 8004e16:	4b68      	ldr	r3, [pc, #416]	; (8004fb8 <_dtoa_r+0xce0>)
 8004e18:	f7fb fcd8 	bl	80007cc <__adddf3>
 8004e1c:	4606      	mov	r6, r0
 8004e1e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e22:	2200      	movs	r2, #0
 8004e24:	4b61      	ldr	r3, [pc, #388]	; (8004fac <_dtoa_r+0xcd4>)
 8004e26:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e2a:	f7fb fccd 	bl	80007c8 <__aeabi_dsub>
 8004e2e:	4632      	mov	r2, r6
 8004e30:	463b      	mov	r3, r7
 8004e32:	4604      	mov	r4, r0
 8004e34:	460d      	mov	r5, r1
 8004e36:	f7fc f90f 	bl	8001058 <__aeabi_dcmpgt>
 8004e3a:	2800      	cmp	r0, #0
 8004e3c:	d14f      	bne.n	8004ede <_dtoa_r+0xc06>
 8004e3e:	4632      	mov	r2, r6
 8004e40:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004e44:	4620      	mov	r0, r4
 8004e46:	4629      	mov	r1, r5
 8004e48:	f7fc f8e8 	bl	800101c <__aeabi_dcmplt>
 8004e4c:	2800      	cmp	r0, #0
 8004e4e:	f43f ac69 	beq.w	8004724 <_dtoa_r+0x44c>
 8004e52:	2600      	movs	r6, #0
 8004e54:	4635      	mov	r5, r6
 8004e56:	e7c5      	b.n	8004de4 <_dtoa_r+0xb0c>
 8004e58:	2301      	movs	r3, #1
 8004e5a:	930a      	str	r3, [sp, #40]	; 0x28
 8004e5c:	e6c8      	b.n	8004bf0 <_dtoa_r+0x918>
 8004e5e:	4651      	mov	r1, sl
 8004e60:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004e62:	4648      	mov	r0, r9
 8004e64:	f001 fa9e 	bl	80063a4 <__pow5mult>
 8004e68:	4682      	mov	sl, r0
 8004e6a:	e572      	b.n	8004952 <_dtoa_r+0x67a>
 8004e6c:	f8dd a000 	ldr.w	sl, [sp]
 8004e70:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004e74:	e686      	b.n	8004b84 <_dtoa_r+0x8ac>
 8004e76:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004e78:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004e7a:	1afb      	subs	r3, r7, r3
 8004e7c:	441a      	add	r2, r3
 8004e7e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004e82:	2700      	movs	r7, #0
 8004e84:	e512      	b.n	80048ac <_dtoa_r+0x5d4>
 8004e86:	2b00      	cmp	r3, #0
 8004e88:	9402      	str	r4, [sp, #8]
 8004e8a:	465e      	mov	r6, fp
 8004e8c:	f107 0401 	add.w	r4, r7, #1
 8004e90:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e94:	f300 80ba 	bgt.w	800500c <_dtoa_r+0xd34>
 8004e98:	9b00      	ldr	r3, [sp, #0]
 8004e9a:	9502      	str	r5, [sp, #8]
 8004e9c:	703b      	strb	r3, [r7, #0]
 8004e9e:	4645      	mov	r5, r8
 8004ea0:	e660      	b.n	8004b64 <_dtoa_r+0x88c>
 8004ea2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004ea6:	2602      	movs	r6, #2
 8004ea8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004eac:	f7ff bb67 	b.w	800457e <_dtoa_r+0x2a6>
 8004eb0:	9b00      	ldr	r3, [sp, #0]
 8004eb2:	2b39      	cmp	r3, #57	; 0x39
 8004eb4:	465e      	mov	r6, fp
 8004eb6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004eba:	f000 80b9 	beq.w	8005030 <_dtoa_r+0xd58>
 8004ebe:	9b00      	ldr	r3, [sp, #0]
 8004ec0:	9502      	str	r5, [sp, #8]
 8004ec2:	3301      	adds	r3, #1
 8004ec4:	703b      	strb	r3, [r7, #0]
 8004ec6:	4645      	mov	r5, r8
 8004ec8:	e64c      	b.n	8004b64 <_dtoa_r+0x88c>
 8004eca:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004ece:	1a9c      	subs	r4, r3, r2
 8004ed0:	e4f5      	b.n	80048be <_dtoa_r+0x5e6>
 8004ed2:	465e      	mov	r6, fp
 8004ed4:	9502      	str	r5, [sp, #8]
 8004ed6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004eda:	4645      	mov	r5, r8
 8004edc:	e61a      	b.n	8004b14 <_dtoa_r+0x83c>
 8004ede:	2600      	movs	r6, #0
 8004ee0:	4635      	mov	r5, r6
 8004ee2:	e708      	b.n	8004cf6 <_dtoa_r+0xa1e>
 8004ee4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004ee8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004eec:	f7fb fe24 	bl	8000b38 <__aeabi_dmul>
 8004ef0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004ef2:	f88b 5000 	strb.w	r5, [fp]
 8004ef6:	2b01      	cmp	r3, #1
 8004ef8:	e9cd 0100 	strd	r0, r1, [sp]
 8004efc:	d020      	beq.n	8004f40 <_dtoa_r+0xc68>
 8004efe:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004f00:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004f04:	445b      	add	r3, fp
 8004f06:	4698      	mov	r8, r3
 8004f08:	2200      	movs	r2, #0
 8004f0a:	4b2c      	ldr	r3, [pc, #176]	; (8004fbc <_dtoa_r+0xce4>)
 8004f0c:	4630      	mov	r0, r6
 8004f0e:	4639      	mov	r1, r7
 8004f10:	f7fb fe12 	bl	8000b38 <__aeabi_dmul>
 8004f14:	460f      	mov	r7, r1
 8004f16:	4606      	mov	r6, r0
 8004f18:	f7fc f8be 	bl	8001098 <__aeabi_d2iz>
 8004f1c:	4605      	mov	r5, r0
 8004f1e:	f7fb fda1 	bl	8000a64 <__aeabi_i2d>
 8004f22:	3530      	adds	r5, #48	; 0x30
 8004f24:	4602      	mov	r2, r0
 8004f26:	460b      	mov	r3, r1
 8004f28:	4630      	mov	r0, r6
 8004f2a:	4639      	mov	r1, r7
 8004f2c:	f7fb fc4c 	bl	80007c8 <__aeabi_dsub>
 8004f30:	f804 5b01 	strb.w	r5, [r4], #1
 8004f34:	4544      	cmp	r4, r8
 8004f36:	4606      	mov	r6, r0
 8004f38:	460f      	mov	r7, r1
 8004f3a:	d1e5      	bne.n	8004f08 <_dtoa_r+0xc30>
 8004f3c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004f40:	4b1f      	ldr	r3, [pc, #124]	; (8004fc0 <_dtoa_r+0xce8>)
 8004f42:	2200      	movs	r2, #0
 8004f44:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f48:	f7fb fc40 	bl	80007cc <__adddf3>
 8004f4c:	4632      	mov	r2, r6
 8004f4e:	463b      	mov	r3, r7
 8004f50:	f7fc f864 	bl	800101c <__aeabi_dcmplt>
 8004f54:	2800      	cmp	r0, #0
 8004f56:	d070      	beq.n	800503a <_dtoa_r+0xd62>
 8004f58:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f5a:	9306      	str	r3, [sp, #24]
 8004f5c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004f60:	e48f      	b.n	8004882 <_dtoa_r+0x5aa>
 8004f62:	2330      	movs	r3, #48	; 0x30
 8004f64:	f88b 3000 	strb.w	r3, [fp]
 8004f68:	9b06      	ldr	r3, [sp, #24]
 8004f6a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004f6e:	3301      	adds	r3, #1
 8004f70:	9306      	str	r3, [sp, #24]
 8004f72:	465b      	mov	r3, fp
 8004f74:	e489      	b.n	800488a <_dtoa_r+0x5b2>
 8004f76:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004f78:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004f7c:	e6a0      	b.n	8004cc0 <_dtoa_r+0x9e8>
 8004f7e:	2300      	movs	r3, #0
 8004f80:	e676      	b.n	8004c70 <_dtoa_r+0x998>
 8004f82:	4631      	mov	r1, r6
 8004f84:	2205      	movs	r2, #5
 8004f86:	4648      	mov	r0, r9
 8004f88:	f001 f8cc 	bl	8006124 <__multadd>
 8004f8c:	4601      	mov	r1, r0
 8004f8e:	4606      	mov	r6, r0
 8004f90:	4650      	mov	r0, sl
 8004f92:	f001 faad 	bl	80064f0 <__mcmp>
 8004f96:	2800      	cmp	r0, #0
 8004f98:	f73f aead 	bgt.w	8004cf6 <_dtoa_r+0xa1e>
 8004f9c:	e722      	b.n	8004de4 <_dtoa_r+0xb0c>
 8004f9e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004fa2:	2602      	movs	r6, #2
 8004fa4:	ed8d 7b00 	vstr	d7, [sp]
 8004fa8:	f7ff bb02 	b.w	80045b0 <_dtoa_r+0x2d8>
 8004fac:	40140000 	.word	0x40140000
 8004fb0:	08007360 	.word	0x08007360
 8004fb4:	08007338 	.word	0x08007338
 8004fb8:	401c0000 	.word	0x401c0000
 8004fbc:	40240000 	.word	0x40240000
 8004fc0:	3fe00000 	.word	0x3fe00000
 8004fc4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fc6:	2b00      	cmp	r3, #0
 8004fc8:	f43f af1d 	beq.w	8004e06 <_dtoa_r+0xb2e>
 8004fcc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004fce:	2c00      	cmp	r4, #0
 8004fd0:	f77f aba8 	ble.w	8004724 <_dtoa_r+0x44c>
 8004fd4:	2200      	movs	r2, #0
 8004fd6:	4b45      	ldr	r3, [pc, #276]	; (80050ec <_dtoa_r+0xe14>)
 8004fd8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004fdc:	f7fb fdac 	bl	8000b38 <__aeabi_dmul>
 8004fe0:	e9cd 0100 	strd	r0, r1, [sp]
 8004fe4:	1c70      	adds	r0, r6, #1
 8004fe6:	f7fb fd3d 	bl	8000a64 <__aeabi_i2d>
 8004fea:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004fee:	f7fb fda3 	bl	8000b38 <__aeabi_dmul>
 8004ff2:	4b3f      	ldr	r3, [pc, #252]	; (80050f0 <_dtoa_r+0xe18>)
 8004ff4:	2200      	movs	r2, #0
 8004ff6:	f7fb fbe9 	bl	80007cc <__adddf3>
 8004ffa:	9b06      	ldr	r3, [sp, #24]
 8004ffc:	9412      	str	r4, [sp, #72]	; 0x48
 8004ffe:	3b01      	subs	r3, #1
 8005000:	4606      	mov	r6, r0
 8005002:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005006:	9316      	str	r3, [sp, #88]	; 0x58
 8005008:	f7ff baf3 	b.w	80045f2 <_dtoa_r+0x31a>
 800500c:	4651      	mov	r1, sl
 800500e:	2201      	movs	r2, #1
 8005010:	4648      	mov	r0, r9
 8005012:	f001 fa17 	bl	8006444 <__lshift>
 8005016:	4631      	mov	r1, r6
 8005018:	4682      	mov	sl, r0
 800501a:	f001 fa69 	bl	80064f0 <__mcmp>
 800501e:	2800      	cmp	r0, #0
 8005020:	dd3b      	ble.n	800509a <_dtoa_r+0xdc2>
 8005022:	9b00      	ldr	r3, [sp, #0]
 8005024:	2b39      	cmp	r3, #57	; 0x39
 8005026:	d003      	beq.n	8005030 <_dtoa_r+0xd58>
 8005028:	9b02      	ldr	r3, [sp, #8]
 800502a:	3331      	adds	r3, #49	; 0x31
 800502c:	9300      	str	r3, [sp, #0]
 800502e:	e733      	b.n	8004e98 <_dtoa_r+0xbc0>
 8005030:	2239      	movs	r2, #57	; 0x39
 8005032:	9502      	str	r5, [sp, #8]
 8005034:	703a      	strb	r2, [r7, #0]
 8005036:	4645      	mov	r5, r8
 8005038:	e58e      	b.n	8004b58 <_dtoa_r+0x880>
 800503a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800503e:	2000      	movs	r0, #0
 8005040:	492c      	ldr	r1, [pc, #176]	; (80050f4 <_dtoa_r+0xe1c>)
 8005042:	f7fb fbc1 	bl	80007c8 <__aeabi_dsub>
 8005046:	4632      	mov	r2, r6
 8005048:	463b      	mov	r3, r7
 800504a:	f7fc f805 	bl	8001058 <__aeabi_dcmpgt>
 800504e:	b910      	cbnz	r0, 8005056 <_dtoa_r+0xd7e>
 8005050:	f7ff bb68 	b.w	8004724 <_dtoa_r+0x44c>
 8005054:	4614      	mov	r4, r2
 8005056:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800505a:	2b30      	cmp	r3, #48	; 0x30
 800505c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005060:	d0f8      	beq.n	8005054 <_dtoa_r+0xd7c>
 8005062:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005064:	9306      	str	r3, [sp, #24]
 8005066:	e58d      	b.n	8004b84 <_dtoa_r+0x8ac>
 8005068:	46d9      	mov	r9, fp
 800506a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800506e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005072:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005074:	9306      	str	r3, [sp, #24]
 8005076:	e404      	b.n	8004882 <_dtoa_r+0x5aa>
 8005078:	9b00      	ldr	r3, [sp, #0]
 800507a:	2b39      	cmp	r3, #57	; 0x39
 800507c:	4621      	mov	r1, r4
 800507e:	4632      	mov	r2, r6
 8005080:	f107 0401 	add.w	r4, r7, #1
 8005084:	465e      	mov	r6, fp
 8005086:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800508a:	d0d1      	beq.n	8005030 <_dtoa_r+0xd58>
 800508c:	2a00      	cmp	r2, #0
 800508e:	f77f af03 	ble.w	8004e98 <_dtoa_r+0xbc0>
 8005092:	460b      	mov	r3, r1
 8005094:	3331      	adds	r3, #49	; 0x31
 8005096:	9300      	str	r3, [sp, #0]
 8005098:	e6fe      	b.n	8004e98 <_dtoa_r+0xbc0>
 800509a:	f47f aefd 	bne.w	8004e98 <_dtoa_r+0xbc0>
 800509e:	9b00      	ldr	r3, [sp, #0]
 80050a0:	07da      	lsls	r2, r3, #31
 80050a2:	f57f aef9 	bpl.w	8004e98 <_dtoa_r+0xbc0>
 80050a6:	e7bc      	b.n	8005022 <_dtoa_r+0xd4a>
 80050a8:	4629      	mov	r1, r5
 80050aa:	2300      	movs	r3, #0
 80050ac:	220a      	movs	r2, #10
 80050ae:	4648      	mov	r0, r9
 80050b0:	f001 f838 	bl	8006124 <__multadd>
 80050b4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80050b6:	2b00      	cmp	r3, #0
 80050b8:	4605      	mov	r5, r0
 80050ba:	dd09      	ble.n	80050d0 <_dtoa_r+0xdf8>
 80050bc:	9309      	str	r3, [sp, #36]	; 0x24
 80050be:	e484      	b.n	80049ca <_dtoa_r+0x6f2>
 80050c0:	9b02      	ldr	r3, [sp, #8]
 80050c2:	2b02      	cmp	r3, #2
 80050c4:	dc0e      	bgt.n	80050e4 <_dtoa_r+0xe0c>
 80050c6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80050c8:	e507      	b.n	8004ada <_dtoa_r+0x802>
 80050ca:	2602      	movs	r6, #2
 80050cc:	f7ff ba70 	b.w	80045b0 <_dtoa_r+0x2d8>
 80050d0:	9b02      	ldr	r3, [sp, #8]
 80050d2:	2b02      	cmp	r3, #2
 80050d4:	dc06      	bgt.n	80050e4 <_dtoa_r+0xe0c>
 80050d6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80050d8:	e7f0      	b.n	80050bc <_dtoa_r+0xde4>
 80050da:	f43f ac59 	beq.w	8004990 <_dtoa_r+0x6b8>
 80050de:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80050e2:	e450      	b.n	8004986 <_dtoa_r+0x6ae>
 80050e4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80050e6:	9309      	str	r3, [sp, #36]	; 0x24
 80050e8:	e678      	b.n	8004ddc <_dtoa_r+0xb04>
 80050ea:	bf00      	nop
 80050ec:	40240000 	.word	0x40240000
 80050f0:	401c0000 	.word	0x401c0000
 80050f4:	3fe00000 	.word	0x3fe00000

080050f8 <__sflush_r>:
 80050f8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80050fc:	b29a      	uxth	r2, r3
 80050fe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005102:	460c      	mov	r4, r1
 8005104:	0711      	lsls	r1, r2, #28
 8005106:	4680      	mov	r8, r0
 8005108:	d444      	bmi.n	8005194 <__sflush_r+0x9c>
 800510a:	6862      	ldr	r2, [r4, #4]
 800510c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005110:	2a00      	cmp	r2, #0
 8005112:	81a3      	strh	r3, [r4, #12]
 8005114:	dd59      	ble.n	80051ca <__sflush_r+0xd2>
 8005116:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005118:	2d00      	cmp	r5, #0
 800511a:	d053      	beq.n	80051c4 <__sflush_r+0xcc>
 800511c:	2200      	movs	r2, #0
 800511e:	b29b      	uxth	r3, r3
 8005120:	f8d8 6000 	ldr.w	r6, [r8]
 8005124:	69e1      	ldr	r1, [r4, #28]
 8005126:	f8c8 2000 	str.w	r2, [r8]
 800512a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800512e:	f040 8083 	bne.w	8005238 <__sflush_r+0x140>
 8005132:	2301      	movs	r3, #1
 8005134:	4640      	mov	r0, r8
 8005136:	47a8      	blx	r5
 8005138:	1c42      	adds	r2, r0, #1
 800513a:	d04a      	beq.n	80051d2 <__sflush_r+0xda>
 800513c:	89a3      	ldrh	r3, [r4, #12]
 800513e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005140:	69e1      	ldr	r1, [r4, #28]
 8005142:	075b      	lsls	r3, r3, #29
 8005144:	d505      	bpl.n	8005152 <__sflush_r+0x5a>
 8005146:	6862      	ldr	r2, [r4, #4]
 8005148:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800514a:	1a80      	subs	r0, r0, r2
 800514c:	b10b      	cbz	r3, 8005152 <__sflush_r+0x5a>
 800514e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005150:	1ac0      	subs	r0, r0, r3
 8005152:	4602      	mov	r2, r0
 8005154:	2300      	movs	r3, #0
 8005156:	4640      	mov	r0, r8
 8005158:	47a8      	blx	r5
 800515a:	1c47      	adds	r7, r0, #1
 800515c:	d045      	beq.n	80051ea <__sflush_r+0xf2>
 800515e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005162:	6922      	ldr	r2, [r4, #16]
 8005164:	6022      	str	r2, [r4, #0]
 8005166:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800516a:	2200      	movs	r2, #0
 800516c:	81a3      	strh	r3, [r4, #12]
 800516e:	04db      	lsls	r3, r3, #19
 8005170:	6062      	str	r2, [r4, #4]
 8005172:	d500      	bpl.n	8005176 <__sflush_r+0x7e>
 8005174:	6520      	str	r0, [r4, #80]	; 0x50
 8005176:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005178:	f8c8 6000 	str.w	r6, [r8]
 800517c:	b311      	cbz	r1, 80051c4 <__sflush_r+0xcc>
 800517e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005182:	4299      	cmp	r1, r3
 8005184:	d002      	beq.n	800518c <__sflush_r+0x94>
 8005186:	4640      	mov	r0, r8
 8005188:	f000 f95e 	bl	8005448 <_free_r>
 800518c:	2000      	movs	r0, #0
 800518e:	6320      	str	r0, [r4, #48]	; 0x30
 8005190:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005194:	6926      	ldr	r6, [r4, #16]
 8005196:	b1ae      	cbz	r6, 80051c4 <__sflush_r+0xcc>
 8005198:	6825      	ldr	r5, [r4, #0]
 800519a:	6026      	str	r6, [r4, #0]
 800519c:	0792      	lsls	r2, r2, #30
 800519e:	bf0c      	ite	eq
 80051a0:	6963      	ldreq	r3, [r4, #20]
 80051a2:	2300      	movne	r3, #0
 80051a4:	1bad      	subs	r5, r5, r6
 80051a6:	60a3      	str	r3, [r4, #8]
 80051a8:	e00a      	b.n	80051c0 <__sflush_r+0xc8>
 80051aa:	462b      	mov	r3, r5
 80051ac:	4632      	mov	r2, r6
 80051ae:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80051b0:	69e1      	ldr	r1, [r4, #28]
 80051b2:	4640      	mov	r0, r8
 80051b4:	47b8      	blx	r7
 80051b6:	2800      	cmp	r0, #0
 80051b8:	eba5 0500 	sub.w	r5, r5, r0
 80051bc:	4406      	add	r6, r0
 80051be:	dd2b      	ble.n	8005218 <__sflush_r+0x120>
 80051c0:	2d00      	cmp	r5, #0
 80051c2:	dcf2      	bgt.n	80051aa <__sflush_r+0xb2>
 80051c4:	2000      	movs	r0, #0
 80051c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80051ca:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80051cc:	2a00      	cmp	r2, #0
 80051ce:	dca2      	bgt.n	8005116 <__sflush_r+0x1e>
 80051d0:	e7f8      	b.n	80051c4 <__sflush_r+0xcc>
 80051d2:	f8d8 3000 	ldr.w	r3, [r8]
 80051d6:	2b00      	cmp	r3, #0
 80051d8:	d0b0      	beq.n	800513c <__sflush_r+0x44>
 80051da:	2b1d      	cmp	r3, #29
 80051dc:	d001      	beq.n	80051e2 <__sflush_r+0xea>
 80051de:	2b16      	cmp	r3, #22
 80051e0:	d12c      	bne.n	800523c <__sflush_r+0x144>
 80051e2:	f8c8 6000 	str.w	r6, [r8]
 80051e6:	2000      	movs	r0, #0
 80051e8:	e7ed      	b.n	80051c6 <__sflush_r+0xce>
 80051ea:	f8d8 1000 	ldr.w	r1, [r8]
 80051ee:	291d      	cmp	r1, #29
 80051f0:	d81a      	bhi.n	8005228 <__sflush_r+0x130>
 80051f2:	4b15      	ldr	r3, [pc, #84]	; (8005248 <__sflush_r+0x150>)
 80051f4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80051f8:	40cb      	lsrs	r3, r1
 80051fa:	43db      	mvns	r3, r3
 80051fc:	f013 0301 	ands.w	r3, r3, #1
 8005200:	d114      	bne.n	800522c <__sflush_r+0x134>
 8005202:	6925      	ldr	r5, [r4, #16]
 8005204:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005208:	e9c4 5300 	strd	r5, r3, [r4]
 800520c:	04d5      	lsls	r5, r2, #19
 800520e:	81a2      	strh	r2, [r4, #12]
 8005210:	d5b1      	bpl.n	8005176 <__sflush_r+0x7e>
 8005212:	2900      	cmp	r1, #0
 8005214:	d1af      	bne.n	8005176 <__sflush_r+0x7e>
 8005216:	e7ad      	b.n	8005174 <__sflush_r+0x7c>
 8005218:	89a3      	ldrh	r3, [r4, #12]
 800521a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800521e:	81a3      	strh	r3, [r4, #12]
 8005220:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005224:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005228:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800522c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005230:	81a2      	strh	r2, [r4, #12]
 8005232:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005236:	e7c6      	b.n	80051c6 <__sflush_r+0xce>
 8005238:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800523a:	e782      	b.n	8005142 <__sflush_r+0x4a>
 800523c:	89a3      	ldrh	r3, [r4, #12]
 800523e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005242:	81a3      	strh	r3, [r4, #12]
 8005244:	e7bf      	b.n	80051c6 <__sflush_r+0xce>
 8005246:	bf00      	nop
 8005248:	20400001 	.word	0x20400001

0800524c <_fflush_r>:
 800524c:	b538      	push	{r3, r4, r5, lr}
 800524e:	460d      	mov	r5, r1
 8005250:	4604      	mov	r4, r0
 8005252:	b108      	cbz	r0, 8005258 <_fflush_r+0xc>
 8005254:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005256:	b1a3      	cbz	r3, 8005282 <_fflush_r+0x36>
 8005258:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800525c:	b1b8      	cbz	r0, 800528e <_fflush_r+0x42>
 800525e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005260:	07db      	lsls	r3, r3, #31
 8005262:	d401      	bmi.n	8005268 <_fflush_r+0x1c>
 8005264:	0581      	lsls	r1, r0, #22
 8005266:	d51a      	bpl.n	800529e <_fflush_r+0x52>
 8005268:	4620      	mov	r0, r4
 800526a:	4629      	mov	r1, r5
 800526c:	f7ff ff44 	bl	80050f8 <__sflush_r>
 8005270:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005272:	07da      	lsls	r2, r3, #31
 8005274:	4604      	mov	r4, r0
 8005276:	d402      	bmi.n	800527e <_fflush_r+0x32>
 8005278:	89ab      	ldrh	r3, [r5, #12]
 800527a:	059b      	lsls	r3, r3, #22
 800527c:	d50a      	bpl.n	8005294 <_fflush_r+0x48>
 800527e:	4620      	mov	r0, r4
 8005280:	bd38      	pop	{r3, r4, r5, pc}
 8005282:	f000 f83f 	bl	8005304 <__sinit>
 8005286:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800528a:	2800      	cmp	r0, #0
 800528c:	d1e7      	bne.n	800525e <_fflush_r+0x12>
 800528e:	4604      	mov	r4, r0
 8005290:	4620      	mov	r0, r4
 8005292:	bd38      	pop	{r3, r4, r5, pc}
 8005294:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005296:	f000 fb87 	bl	80059a8 <__retarget_lock_release_recursive>
 800529a:	4620      	mov	r0, r4
 800529c:	bd38      	pop	{r3, r4, r5, pc}
 800529e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80052a0:	f000 fb80 	bl	80059a4 <__retarget_lock_acquire_recursive>
 80052a4:	e7e0      	b.n	8005268 <_fflush_r+0x1c>
 80052a6:	bf00      	nop

080052a8 <std>:
 80052a8:	b510      	push	{r4, lr}
 80052aa:	2300      	movs	r3, #0
 80052ac:	4604      	mov	r4, r0
 80052ae:	8181      	strh	r1, [r0, #12]
 80052b0:	81c2      	strh	r2, [r0, #14]
 80052b2:	e9c0 3300 	strd	r3, r3, [r0]
 80052b6:	6083      	str	r3, [r0, #8]
 80052b8:	6643      	str	r3, [r0, #100]	; 0x64
 80052ba:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80052be:	6183      	str	r3, [r0, #24]
 80052c0:	4619      	mov	r1, r3
 80052c2:	2208      	movs	r2, #8
 80052c4:	305c      	adds	r0, #92	; 0x5c
 80052c6:	f7fd f8cb 	bl	8002460 <memset>
 80052ca:	4807      	ldr	r0, [pc, #28]	; (80052e8 <std+0x40>)
 80052cc:	4907      	ldr	r1, [pc, #28]	; (80052ec <std+0x44>)
 80052ce:	4a08      	ldr	r2, [pc, #32]	; (80052f0 <std+0x48>)
 80052d0:	4b08      	ldr	r3, [pc, #32]	; (80052f4 <std+0x4c>)
 80052d2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80052d4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80052d8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80052dc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80052e0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80052e4:	f000 bb5a 	b.w	800599c <__retarget_lock_init_recursive>
 80052e8:	08006ac1 	.word	0x08006ac1
 80052ec:	08006ae5 	.word	0x08006ae5
 80052f0:	08006b21 	.word	0x08006b21
 80052f4:	08006b41 	.word	0x08006b41

080052f8 <_cleanup_r>:
 80052f8:	4901      	ldr	r1, [pc, #4]	; (8005300 <_cleanup_r+0x8>)
 80052fa:	f000 bb17 	b.w	800592c <_fwalk_reent>
 80052fe:	bf00      	nop
 8005300:	08006db1 	.word	0x08006db1

08005304 <__sinit>:
 8005304:	b510      	push	{r4, lr}
 8005306:	4604      	mov	r4, r0
 8005308:	4812      	ldr	r0, [pc, #72]	; (8005354 <__sinit+0x50>)
 800530a:	f000 fb4b 	bl	80059a4 <__retarget_lock_acquire_recursive>
 800530e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005310:	b9d2      	cbnz	r2, 8005348 <__sinit+0x44>
 8005312:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005316:	4810      	ldr	r0, [pc, #64]	; (8005358 <__sinit+0x54>)
 8005318:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800531c:	2103      	movs	r1, #3
 800531e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005322:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005324:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005328:	6860      	ldr	r0, [r4, #4]
 800532a:	2104      	movs	r1, #4
 800532c:	f7ff ffbc 	bl	80052a8 <std>
 8005330:	2201      	movs	r2, #1
 8005332:	2109      	movs	r1, #9
 8005334:	68a0      	ldr	r0, [r4, #8]
 8005336:	f7ff ffb7 	bl	80052a8 <std>
 800533a:	2202      	movs	r2, #2
 800533c:	2112      	movs	r1, #18
 800533e:	68e0      	ldr	r0, [r4, #12]
 8005340:	f7ff ffb2 	bl	80052a8 <std>
 8005344:	2301      	movs	r3, #1
 8005346:	63a3      	str	r3, [r4, #56]	; 0x38
 8005348:	4802      	ldr	r0, [pc, #8]	; (8005354 <__sinit+0x50>)
 800534a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800534e:	f000 bb2b 	b.w	80059a8 <__retarget_lock_release_recursive>
 8005352:	bf00      	nop
 8005354:	20000bbc 	.word	0x20000bbc
 8005358:	080052f9 	.word	0x080052f9

0800535c <__sfp_lock_acquire>:
 800535c:	4801      	ldr	r0, [pc, #4]	; (8005364 <__sfp_lock_acquire+0x8>)
 800535e:	f000 bb21 	b.w	80059a4 <__retarget_lock_acquire_recursive>
 8005362:	bf00      	nop
 8005364:	20000bd0 	.word	0x20000bd0

08005368 <__sfp_lock_release>:
 8005368:	4801      	ldr	r0, [pc, #4]	; (8005370 <__sfp_lock_release+0x8>)
 800536a:	f000 bb1d 	b.w	80059a8 <__retarget_lock_release_recursive>
 800536e:	bf00      	nop
 8005370:	20000bd0 	.word	0x20000bd0

08005374 <__libc_fini_array>:
 8005374:	b538      	push	{r3, r4, r5, lr}
 8005376:	4c0a      	ldr	r4, [pc, #40]	; (80053a0 <__libc_fini_array+0x2c>)
 8005378:	4d0a      	ldr	r5, [pc, #40]	; (80053a4 <__libc_fini_array+0x30>)
 800537a:	1b64      	subs	r4, r4, r5
 800537c:	10a4      	asrs	r4, r4, #2
 800537e:	d00a      	beq.n	8005396 <__libc_fini_array+0x22>
 8005380:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005384:	3b01      	subs	r3, #1
 8005386:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800538a:	3c01      	subs	r4, #1
 800538c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005390:	4798      	blx	r3
 8005392:	2c00      	cmp	r4, #0
 8005394:	d1f9      	bne.n	800538a <__libc_fini_array+0x16>
 8005396:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800539a:	f001 befd 	b.w	8007198 <_fini>
 800539e:	bf00      	nop
 80053a0:	0800755c 	.word	0x0800755c
 80053a4:	08007558 	.word	0x08007558

080053a8 <_malloc_trim_r>:
 80053a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80053aa:	4f24      	ldr	r7, [pc, #144]	; (800543c <_malloc_trim_r+0x94>)
 80053ac:	460c      	mov	r4, r1
 80053ae:	4606      	mov	r6, r0
 80053b0:	f000 fe7c 	bl	80060ac <__malloc_lock>
 80053b4:	68bb      	ldr	r3, [r7, #8]
 80053b6:	685d      	ldr	r5, [r3, #4]
 80053b8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80053bc:	310f      	adds	r1, #15
 80053be:	f025 0503 	bic.w	r5, r5, #3
 80053c2:	4429      	add	r1, r5
 80053c4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80053c8:	f021 010f 	bic.w	r1, r1, #15
 80053cc:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80053d0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80053d4:	db07      	blt.n	80053e6 <_malloc_trim_r+0x3e>
 80053d6:	2100      	movs	r1, #0
 80053d8:	4630      	mov	r0, r6
 80053da:	f001 fb5f 	bl	8006a9c <_sbrk_r>
 80053de:	68bb      	ldr	r3, [r7, #8]
 80053e0:	442b      	add	r3, r5
 80053e2:	4298      	cmp	r0, r3
 80053e4:	d004      	beq.n	80053f0 <_malloc_trim_r+0x48>
 80053e6:	4630      	mov	r0, r6
 80053e8:	f000 fe66 	bl	80060b8 <__malloc_unlock>
 80053ec:	2000      	movs	r0, #0
 80053ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80053f0:	4261      	negs	r1, r4
 80053f2:	4630      	mov	r0, r6
 80053f4:	f001 fb52 	bl	8006a9c <_sbrk_r>
 80053f8:	3001      	adds	r0, #1
 80053fa:	d00d      	beq.n	8005418 <_malloc_trim_r+0x70>
 80053fc:	4b10      	ldr	r3, [pc, #64]	; (8005440 <_malloc_trim_r+0x98>)
 80053fe:	68ba      	ldr	r2, [r7, #8]
 8005400:	6819      	ldr	r1, [r3, #0]
 8005402:	1b2d      	subs	r5, r5, r4
 8005404:	f045 0501 	orr.w	r5, r5, #1
 8005408:	4630      	mov	r0, r6
 800540a:	1b09      	subs	r1, r1, r4
 800540c:	6055      	str	r5, [r2, #4]
 800540e:	6019      	str	r1, [r3, #0]
 8005410:	f000 fe52 	bl	80060b8 <__malloc_unlock>
 8005414:	2001      	movs	r0, #1
 8005416:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005418:	2100      	movs	r1, #0
 800541a:	4630      	mov	r0, r6
 800541c:	f001 fb3e 	bl	8006a9c <_sbrk_r>
 8005420:	68ba      	ldr	r2, [r7, #8]
 8005422:	1a83      	subs	r3, r0, r2
 8005424:	2b0f      	cmp	r3, #15
 8005426:	ddde      	ble.n	80053e6 <_malloc_trim_r+0x3e>
 8005428:	4c06      	ldr	r4, [pc, #24]	; (8005444 <_malloc_trim_r+0x9c>)
 800542a:	4905      	ldr	r1, [pc, #20]	; (8005440 <_malloc_trim_r+0x98>)
 800542c:	6824      	ldr	r4, [r4, #0]
 800542e:	f043 0301 	orr.w	r3, r3, #1
 8005432:	1b00      	subs	r0, r0, r4
 8005434:	6053      	str	r3, [r2, #4]
 8005436:	6008      	str	r0, [r1, #0]
 8005438:	e7d5      	b.n	80053e6 <_malloc_trim_r+0x3e>
 800543a:	bf00      	nop
 800543c:	2000044c 	.word	0x2000044c
 8005440:	20000a6c 	.word	0x20000a6c
 8005444:	20000854 	.word	0x20000854

08005448 <_free_r>:
 8005448:	2900      	cmp	r1, #0
 800544a:	d053      	beq.n	80054f4 <_free_r+0xac>
 800544c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800544e:	460c      	mov	r4, r1
 8005450:	4606      	mov	r6, r0
 8005452:	f000 fe2b 	bl	80060ac <__malloc_lock>
 8005456:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800545a:	4f71      	ldr	r7, [pc, #452]	; (8005620 <_free_r+0x1d8>)
 800545c:	f02c 0101 	bic.w	r1, ip, #1
 8005460:	f1a4 0508 	sub.w	r5, r4, #8
 8005464:	186b      	adds	r3, r5, r1
 8005466:	68b8      	ldr	r0, [r7, #8]
 8005468:	685a      	ldr	r2, [r3, #4]
 800546a:	4298      	cmp	r0, r3
 800546c:	f022 0203 	bic.w	r2, r2, #3
 8005470:	d053      	beq.n	800551a <_free_r+0xd2>
 8005472:	f01c 0f01 	tst.w	ip, #1
 8005476:	605a      	str	r2, [r3, #4]
 8005478:	eb03 0002 	add.w	r0, r3, r2
 800547c:	d13b      	bne.n	80054f6 <_free_r+0xae>
 800547e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005482:	6840      	ldr	r0, [r0, #4]
 8005484:	eba5 050c 	sub.w	r5, r5, ip
 8005488:	f107 0e08 	add.w	lr, r7, #8
 800548c:	68ac      	ldr	r4, [r5, #8]
 800548e:	4574      	cmp	r4, lr
 8005490:	4461      	add	r1, ip
 8005492:	f000 0001 	and.w	r0, r0, #1
 8005496:	d075      	beq.n	8005584 <_free_r+0x13c>
 8005498:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800549c:	f8c4 c00c 	str.w	ip, [r4, #12]
 80054a0:	f8cc 4008 	str.w	r4, [ip, #8]
 80054a4:	b360      	cbz	r0, 8005500 <_free_r+0xb8>
 80054a6:	f041 0301 	orr.w	r3, r1, #1
 80054aa:	606b      	str	r3, [r5, #4]
 80054ac:	5069      	str	r1, [r5, r1]
 80054ae:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80054b2:	d350      	bcc.n	8005556 <_free_r+0x10e>
 80054b4:	0a4b      	lsrs	r3, r1, #9
 80054b6:	2b04      	cmp	r3, #4
 80054b8:	d870      	bhi.n	800559c <_free_r+0x154>
 80054ba:	098b      	lsrs	r3, r1, #6
 80054bc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80054c0:	00e4      	lsls	r4, r4, #3
 80054c2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80054c6:	1938      	adds	r0, r7, r4
 80054c8:	593b      	ldr	r3, [r7, r4]
 80054ca:	3808      	subs	r0, #8
 80054cc:	4298      	cmp	r0, r3
 80054ce:	d078      	beq.n	80055c2 <_free_r+0x17a>
 80054d0:	685a      	ldr	r2, [r3, #4]
 80054d2:	f022 0203 	bic.w	r2, r2, #3
 80054d6:	428a      	cmp	r2, r1
 80054d8:	d971      	bls.n	80055be <_free_r+0x176>
 80054da:	689b      	ldr	r3, [r3, #8]
 80054dc:	4298      	cmp	r0, r3
 80054de:	d1f7      	bne.n	80054d0 <_free_r+0x88>
 80054e0:	68c3      	ldr	r3, [r0, #12]
 80054e2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80054e6:	609d      	str	r5, [r3, #8]
 80054e8:	60c5      	str	r5, [r0, #12]
 80054ea:	4630      	mov	r0, r6
 80054ec:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80054f0:	f000 bde2 	b.w	80060b8 <__malloc_unlock>
 80054f4:	4770      	bx	lr
 80054f6:	6840      	ldr	r0, [r0, #4]
 80054f8:	f000 0001 	and.w	r0, r0, #1
 80054fc:	2800      	cmp	r0, #0
 80054fe:	d1d2      	bne.n	80054a6 <_free_r+0x5e>
 8005500:	6898      	ldr	r0, [r3, #8]
 8005502:	4c48      	ldr	r4, [pc, #288]	; (8005624 <_free_r+0x1dc>)
 8005504:	4411      	add	r1, r2
 8005506:	42a0      	cmp	r0, r4
 8005508:	f041 0201 	orr.w	r2, r1, #1
 800550c:	d062      	beq.n	80055d4 <_free_r+0x18c>
 800550e:	68db      	ldr	r3, [r3, #12]
 8005510:	60c3      	str	r3, [r0, #12]
 8005512:	6098      	str	r0, [r3, #8]
 8005514:	606a      	str	r2, [r5, #4]
 8005516:	5069      	str	r1, [r5, r1]
 8005518:	e7c9      	b.n	80054ae <_free_r+0x66>
 800551a:	f01c 0f01 	tst.w	ip, #1
 800551e:	440a      	add	r2, r1
 8005520:	d107      	bne.n	8005532 <_free_r+0xea>
 8005522:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005526:	1aed      	subs	r5, r5, r3
 8005528:	441a      	add	r2, r3
 800552a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800552e:	60cb      	str	r3, [r1, #12]
 8005530:	6099      	str	r1, [r3, #8]
 8005532:	4b3d      	ldr	r3, [pc, #244]	; (8005628 <_free_r+0x1e0>)
 8005534:	681b      	ldr	r3, [r3, #0]
 8005536:	f042 0101 	orr.w	r1, r2, #1
 800553a:	4293      	cmp	r3, r2
 800553c:	6069      	str	r1, [r5, #4]
 800553e:	60bd      	str	r5, [r7, #8]
 8005540:	d804      	bhi.n	800554c <_free_r+0x104>
 8005542:	4b3a      	ldr	r3, [pc, #232]	; (800562c <_free_r+0x1e4>)
 8005544:	4630      	mov	r0, r6
 8005546:	6819      	ldr	r1, [r3, #0]
 8005548:	f7ff ff2e 	bl	80053a8 <_malloc_trim_r>
 800554c:	4630      	mov	r0, r6
 800554e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005552:	f000 bdb1 	b.w	80060b8 <__malloc_unlock>
 8005556:	08c9      	lsrs	r1, r1, #3
 8005558:	6878      	ldr	r0, [r7, #4]
 800555a:	1c4a      	adds	r2, r1, #1
 800555c:	2301      	movs	r3, #1
 800555e:	1089      	asrs	r1, r1, #2
 8005560:	408b      	lsls	r3, r1
 8005562:	4303      	orrs	r3, r0
 8005564:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005568:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800556c:	607b      	str	r3, [r7, #4]
 800556e:	3908      	subs	r1, #8
 8005570:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005574:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005578:	60c5      	str	r5, [r0, #12]
 800557a:	4630      	mov	r0, r6
 800557c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005580:	f000 bd9a 	b.w	80060b8 <__malloc_unlock>
 8005584:	2800      	cmp	r0, #0
 8005586:	d145      	bne.n	8005614 <_free_r+0x1cc>
 8005588:	440a      	add	r2, r1
 800558a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800558e:	f042 0001 	orr.w	r0, r2, #1
 8005592:	60cb      	str	r3, [r1, #12]
 8005594:	6099      	str	r1, [r3, #8]
 8005596:	6068      	str	r0, [r5, #4]
 8005598:	50aa      	str	r2, [r5, r2]
 800559a:	e7d7      	b.n	800554c <_free_r+0x104>
 800559c:	2b14      	cmp	r3, #20
 800559e:	d908      	bls.n	80055b2 <_free_r+0x16a>
 80055a0:	2b54      	cmp	r3, #84	; 0x54
 80055a2:	d81e      	bhi.n	80055e2 <_free_r+0x19a>
 80055a4:	0b0b      	lsrs	r3, r1, #12
 80055a6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80055aa:	00e4      	lsls	r4, r4, #3
 80055ac:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80055b0:	e789      	b.n	80054c6 <_free_r+0x7e>
 80055b2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80055b6:	00e4      	lsls	r4, r4, #3
 80055b8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80055bc:	e783      	b.n	80054c6 <_free_r+0x7e>
 80055be:	4618      	mov	r0, r3
 80055c0:	e78e      	b.n	80054e0 <_free_r+0x98>
 80055c2:	1093      	asrs	r3, r2, #2
 80055c4:	6879      	ldr	r1, [r7, #4]
 80055c6:	2201      	movs	r2, #1
 80055c8:	fa02 f303 	lsl.w	r3, r2, r3
 80055cc:	430b      	orrs	r3, r1
 80055ce:	607b      	str	r3, [r7, #4]
 80055d0:	4603      	mov	r3, r0
 80055d2:	e786      	b.n	80054e2 <_free_r+0x9a>
 80055d4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80055d8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80055dc:	606a      	str	r2, [r5, #4]
 80055de:	5069      	str	r1, [r5, r1]
 80055e0:	e7b4      	b.n	800554c <_free_r+0x104>
 80055e2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80055e6:	d806      	bhi.n	80055f6 <_free_r+0x1ae>
 80055e8:	0bcb      	lsrs	r3, r1, #15
 80055ea:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80055ee:	00e4      	lsls	r4, r4, #3
 80055f0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80055f4:	e767      	b.n	80054c6 <_free_r+0x7e>
 80055f6:	f240 5254 	movw	r2, #1364	; 0x554
 80055fa:	4293      	cmp	r3, r2
 80055fc:	d806      	bhi.n	800560c <_free_r+0x1c4>
 80055fe:	0c8b      	lsrs	r3, r1, #18
 8005600:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005604:	00e4      	lsls	r4, r4, #3
 8005606:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800560a:	e75c      	b.n	80054c6 <_free_r+0x7e>
 800560c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005610:	227e      	movs	r2, #126	; 0x7e
 8005612:	e758      	b.n	80054c6 <_free_r+0x7e>
 8005614:	f041 0201 	orr.w	r2, r1, #1
 8005618:	606a      	str	r2, [r5, #4]
 800561a:	6019      	str	r1, [r3, #0]
 800561c:	e796      	b.n	800554c <_free_r+0x104>
 800561e:	bf00      	nop
 8005620:	2000044c 	.word	0x2000044c
 8005624:	20000454 	.word	0x20000454
 8005628:	20000858 	.word	0x20000858
 800562c:	20000a9c 	.word	0x20000a9c

08005630 <__sfvwrite_r>:
 8005630:	6893      	ldr	r3, [r2, #8]
 8005632:	2b00      	cmp	r3, #0
 8005634:	f000 80e4 	beq.w	8005800 <__sfvwrite_r+0x1d0>
 8005638:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800563c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005640:	b29b      	uxth	r3, r3
 8005642:	460c      	mov	r4, r1
 8005644:	0719      	lsls	r1, r3, #28
 8005646:	b083      	sub	sp, #12
 8005648:	4682      	mov	sl, r0
 800564a:	4690      	mov	r8, r2
 800564c:	d535      	bpl.n	80056ba <__sfvwrite_r+0x8a>
 800564e:	6922      	ldr	r2, [r4, #16]
 8005650:	b39a      	cbz	r2, 80056ba <__sfvwrite_r+0x8a>
 8005652:	f013 0202 	ands.w	r2, r3, #2
 8005656:	f8d8 6000 	ldr.w	r6, [r8]
 800565a:	d03d      	beq.n	80056d8 <__sfvwrite_r+0xa8>
 800565c:	2700      	movs	r7, #0
 800565e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005662:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005666:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005928 <__sfvwrite_r+0x2f8>
 800566a:	463d      	mov	r5, r7
 800566c:	454d      	cmp	r5, r9
 800566e:	462b      	mov	r3, r5
 8005670:	463a      	mov	r2, r7
 8005672:	bf28      	it	cs
 8005674:	464b      	movcs	r3, r9
 8005676:	4661      	mov	r1, ip
 8005678:	4650      	mov	r0, sl
 800567a:	b1d5      	cbz	r5, 80056b2 <__sfvwrite_r+0x82>
 800567c:	47d8      	blx	fp
 800567e:	2800      	cmp	r0, #0
 8005680:	f340 80c6 	ble.w	8005810 <__sfvwrite_r+0x1e0>
 8005684:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005688:	1a1b      	subs	r3, r3, r0
 800568a:	4407      	add	r7, r0
 800568c:	1a2d      	subs	r5, r5, r0
 800568e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005692:	2b00      	cmp	r3, #0
 8005694:	f000 80b0 	beq.w	80057f8 <__sfvwrite_r+0x1c8>
 8005698:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800569c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80056a0:	454d      	cmp	r5, r9
 80056a2:	462b      	mov	r3, r5
 80056a4:	463a      	mov	r2, r7
 80056a6:	bf28      	it	cs
 80056a8:	464b      	movcs	r3, r9
 80056aa:	4661      	mov	r1, ip
 80056ac:	4650      	mov	r0, sl
 80056ae:	2d00      	cmp	r5, #0
 80056b0:	d1e4      	bne.n	800567c <__sfvwrite_r+0x4c>
 80056b2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80056b6:	3608      	adds	r6, #8
 80056b8:	e7d8      	b.n	800566c <__sfvwrite_r+0x3c>
 80056ba:	4621      	mov	r1, r4
 80056bc:	4650      	mov	r0, sl
 80056be:	f7fe fd03 	bl	80040c8 <__swsetup_r>
 80056c2:	2800      	cmp	r0, #0
 80056c4:	f040 812a 	bne.w	800591c <__sfvwrite_r+0x2ec>
 80056c8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056cc:	f8d8 6000 	ldr.w	r6, [r8]
 80056d0:	b29b      	uxth	r3, r3
 80056d2:	f013 0202 	ands.w	r2, r3, #2
 80056d6:	d1c1      	bne.n	800565c <__sfvwrite_r+0x2c>
 80056d8:	f013 0901 	ands.w	r9, r3, #1
 80056dc:	d15d      	bne.n	800579a <__sfvwrite_r+0x16a>
 80056de:	68a7      	ldr	r7, [r4, #8]
 80056e0:	6820      	ldr	r0, [r4, #0]
 80056e2:	464d      	mov	r5, r9
 80056e4:	2d00      	cmp	r5, #0
 80056e6:	d054      	beq.n	8005792 <__sfvwrite_r+0x162>
 80056e8:	059a      	lsls	r2, r3, #22
 80056ea:	f140 809b 	bpl.w	8005824 <__sfvwrite_r+0x1f4>
 80056ee:	42af      	cmp	r7, r5
 80056f0:	46bb      	mov	fp, r7
 80056f2:	f200 80d8 	bhi.w	80058a6 <__sfvwrite_r+0x276>
 80056f6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80056fa:	d02f      	beq.n	800575c <__sfvwrite_r+0x12c>
 80056fc:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005700:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005704:	eba0 0b01 	sub.w	fp, r0, r1
 8005708:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800570c:	1c68      	adds	r0, r5, #1
 800570e:	107f      	asrs	r7, r7, #1
 8005710:	4458      	add	r0, fp
 8005712:	42b8      	cmp	r0, r7
 8005714:	463a      	mov	r2, r7
 8005716:	bf84      	itt	hi
 8005718:	4607      	movhi	r7, r0
 800571a:	463a      	movhi	r2, r7
 800571c:	055b      	lsls	r3, r3, #21
 800571e:	f140 80d3 	bpl.w	80058c8 <__sfvwrite_r+0x298>
 8005722:	4611      	mov	r1, r2
 8005724:	4650      	mov	r0, sl
 8005726:	f000 f9b9 	bl	8005a9c <_malloc_r>
 800572a:	2800      	cmp	r0, #0
 800572c:	f000 80f0 	beq.w	8005910 <__sfvwrite_r+0x2e0>
 8005730:	465a      	mov	r2, fp
 8005732:	6921      	ldr	r1, [r4, #16]
 8005734:	9001      	str	r0, [sp, #4]
 8005736:	f7fa fee3 	bl	8000500 <memcpy>
 800573a:	89a2      	ldrh	r2, [r4, #12]
 800573c:	9b01      	ldr	r3, [sp, #4]
 800573e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005742:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005746:	81a2      	strh	r2, [r4, #12]
 8005748:	eba7 020b 	sub.w	r2, r7, fp
 800574c:	eb03 000b 	add.w	r0, r3, fp
 8005750:	6167      	str	r7, [r4, #20]
 8005752:	6123      	str	r3, [r4, #16]
 8005754:	6020      	str	r0, [r4, #0]
 8005756:	60a2      	str	r2, [r4, #8]
 8005758:	462f      	mov	r7, r5
 800575a:	46ab      	mov	fp, r5
 800575c:	465a      	mov	r2, fp
 800575e:	4649      	mov	r1, r9
 8005760:	f000 fc40 	bl	8005fe4 <memmove>
 8005764:	68a2      	ldr	r2, [r4, #8]
 8005766:	6823      	ldr	r3, [r4, #0]
 8005768:	1bd2      	subs	r2, r2, r7
 800576a:	445b      	add	r3, fp
 800576c:	462f      	mov	r7, r5
 800576e:	60a2      	str	r2, [r4, #8]
 8005770:	6023      	str	r3, [r4, #0]
 8005772:	2500      	movs	r5, #0
 8005774:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005778:	1bdb      	subs	r3, r3, r7
 800577a:	44b9      	add	r9, r7
 800577c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005780:	2b00      	cmp	r3, #0
 8005782:	d039      	beq.n	80057f8 <__sfvwrite_r+0x1c8>
 8005784:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005788:	68a7      	ldr	r7, [r4, #8]
 800578a:	6820      	ldr	r0, [r4, #0]
 800578c:	b29b      	uxth	r3, r3
 800578e:	2d00      	cmp	r5, #0
 8005790:	d1aa      	bne.n	80056e8 <__sfvwrite_r+0xb8>
 8005792:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005796:	3608      	adds	r6, #8
 8005798:	e7a4      	b.n	80056e4 <__sfvwrite_r+0xb4>
 800579a:	4633      	mov	r3, r6
 800579c:	4691      	mov	r9, r2
 800579e:	4610      	mov	r0, r2
 80057a0:	4617      	mov	r7, r2
 80057a2:	464e      	mov	r6, r9
 80057a4:	469b      	mov	fp, r3
 80057a6:	2f00      	cmp	r7, #0
 80057a8:	d06b      	beq.n	8005882 <__sfvwrite_r+0x252>
 80057aa:	2800      	cmp	r0, #0
 80057ac:	d071      	beq.n	8005892 <__sfvwrite_r+0x262>
 80057ae:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80057b2:	6820      	ldr	r0, [r4, #0]
 80057b4:	45b9      	cmp	r9, r7
 80057b6:	464b      	mov	r3, r9
 80057b8:	bf28      	it	cs
 80057ba:	463b      	movcs	r3, r7
 80057bc:	4288      	cmp	r0, r1
 80057be:	d903      	bls.n	80057c8 <__sfvwrite_r+0x198>
 80057c0:	68a5      	ldr	r5, [r4, #8]
 80057c2:	4415      	add	r5, r2
 80057c4:	42ab      	cmp	r3, r5
 80057c6:	dc71      	bgt.n	80058ac <__sfvwrite_r+0x27c>
 80057c8:	429a      	cmp	r2, r3
 80057ca:	f300 8093 	bgt.w	80058f4 <__sfvwrite_r+0x2c4>
 80057ce:	4613      	mov	r3, r2
 80057d0:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80057d2:	69e1      	ldr	r1, [r4, #28]
 80057d4:	4632      	mov	r2, r6
 80057d6:	4650      	mov	r0, sl
 80057d8:	47a8      	blx	r5
 80057da:	1e05      	subs	r5, r0, #0
 80057dc:	dd18      	ble.n	8005810 <__sfvwrite_r+0x1e0>
 80057de:	ebb9 0905 	subs.w	r9, r9, r5
 80057e2:	d00f      	beq.n	8005804 <__sfvwrite_r+0x1d4>
 80057e4:	2001      	movs	r0, #1
 80057e6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80057ea:	1b5b      	subs	r3, r3, r5
 80057ec:	442e      	add	r6, r5
 80057ee:	1b7f      	subs	r7, r7, r5
 80057f0:	f8c8 3008 	str.w	r3, [r8, #8]
 80057f4:	2b00      	cmp	r3, #0
 80057f6:	d1d6      	bne.n	80057a6 <__sfvwrite_r+0x176>
 80057f8:	2000      	movs	r0, #0
 80057fa:	b003      	add	sp, #12
 80057fc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005800:	2000      	movs	r0, #0
 8005802:	4770      	bx	lr
 8005804:	4621      	mov	r1, r4
 8005806:	4650      	mov	r0, sl
 8005808:	f7ff fd20 	bl	800524c <_fflush_r>
 800580c:	2800      	cmp	r0, #0
 800580e:	d0ea      	beq.n	80057e6 <__sfvwrite_r+0x1b6>
 8005810:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005814:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005818:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800581c:	81a3      	strh	r3, [r4, #12]
 800581e:	b003      	add	sp, #12
 8005820:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005824:	6923      	ldr	r3, [r4, #16]
 8005826:	4283      	cmp	r3, r0
 8005828:	d315      	bcc.n	8005856 <__sfvwrite_r+0x226>
 800582a:	6961      	ldr	r1, [r4, #20]
 800582c:	42a9      	cmp	r1, r5
 800582e:	d812      	bhi.n	8005856 <__sfvwrite_r+0x226>
 8005830:	4b3c      	ldr	r3, [pc, #240]	; (8005924 <__sfvwrite_r+0x2f4>)
 8005832:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005834:	429d      	cmp	r5, r3
 8005836:	bf94      	ite	ls
 8005838:	462b      	movls	r3, r5
 800583a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800583e:	464a      	mov	r2, r9
 8005840:	fb93 f3f1 	sdiv	r3, r3, r1
 8005844:	4650      	mov	r0, sl
 8005846:	fb01 f303 	mul.w	r3, r1, r3
 800584a:	69e1      	ldr	r1, [r4, #28]
 800584c:	47b8      	blx	r7
 800584e:	1e07      	subs	r7, r0, #0
 8005850:	ddde      	ble.n	8005810 <__sfvwrite_r+0x1e0>
 8005852:	1bed      	subs	r5, r5, r7
 8005854:	e78e      	b.n	8005774 <__sfvwrite_r+0x144>
 8005856:	42af      	cmp	r7, r5
 8005858:	bf28      	it	cs
 800585a:	462f      	movcs	r7, r5
 800585c:	463a      	mov	r2, r7
 800585e:	4649      	mov	r1, r9
 8005860:	f000 fbc0 	bl	8005fe4 <memmove>
 8005864:	68a3      	ldr	r3, [r4, #8]
 8005866:	6822      	ldr	r2, [r4, #0]
 8005868:	1bdb      	subs	r3, r3, r7
 800586a:	443a      	add	r2, r7
 800586c:	60a3      	str	r3, [r4, #8]
 800586e:	6022      	str	r2, [r4, #0]
 8005870:	2b00      	cmp	r3, #0
 8005872:	d1ee      	bne.n	8005852 <__sfvwrite_r+0x222>
 8005874:	4621      	mov	r1, r4
 8005876:	4650      	mov	r0, sl
 8005878:	f7ff fce8 	bl	800524c <_fflush_r>
 800587c:	2800      	cmp	r0, #0
 800587e:	d0e8      	beq.n	8005852 <__sfvwrite_r+0x222>
 8005880:	e7c6      	b.n	8005810 <__sfvwrite_r+0x1e0>
 8005882:	f10b 0308 	add.w	r3, fp, #8
 8005886:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800588a:	469b      	mov	fp, r3
 800588c:	3308      	adds	r3, #8
 800588e:	2f00      	cmp	r7, #0
 8005890:	d0f9      	beq.n	8005886 <__sfvwrite_r+0x256>
 8005892:	463a      	mov	r2, r7
 8005894:	210a      	movs	r1, #10
 8005896:	4630      	mov	r0, r6
 8005898:	f7fa ff42 	bl	8000720 <memchr>
 800589c:	b338      	cbz	r0, 80058ee <__sfvwrite_r+0x2be>
 800589e:	3001      	adds	r0, #1
 80058a0:	eba0 0906 	sub.w	r9, r0, r6
 80058a4:	e783      	b.n	80057ae <__sfvwrite_r+0x17e>
 80058a6:	462f      	mov	r7, r5
 80058a8:	46ab      	mov	fp, r5
 80058aa:	e757      	b.n	800575c <__sfvwrite_r+0x12c>
 80058ac:	4631      	mov	r1, r6
 80058ae:	462a      	mov	r2, r5
 80058b0:	f000 fb98 	bl	8005fe4 <memmove>
 80058b4:	6823      	ldr	r3, [r4, #0]
 80058b6:	442b      	add	r3, r5
 80058b8:	6023      	str	r3, [r4, #0]
 80058ba:	4621      	mov	r1, r4
 80058bc:	4650      	mov	r0, sl
 80058be:	f7ff fcc5 	bl	800524c <_fflush_r>
 80058c2:	2800      	cmp	r0, #0
 80058c4:	d08b      	beq.n	80057de <__sfvwrite_r+0x1ae>
 80058c6:	e7a3      	b.n	8005810 <__sfvwrite_r+0x1e0>
 80058c8:	4650      	mov	r0, sl
 80058ca:	f000 ff05 	bl	80066d8 <_realloc_r>
 80058ce:	4603      	mov	r3, r0
 80058d0:	2800      	cmp	r0, #0
 80058d2:	f47f af39 	bne.w	8005748 <__sfvwrite_r+0x118>
 80058d6:	6921      	ldr	r1, [r4, #16]
 80058d8:	4650      	mov	r0, sl
 80058da:	f7ff fdb5 	bl	8005448 <_free_r>
 80058de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058e2:	220c      	movs	r2, #12
 80058e4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80058e8:	f8ca 2000 	str.w	r2, [sl]
 80058ec:	e792      	b.n	8005814 <__sfvwrite_r+0x1e4>
 80058ee:	f107 0901 	add.w	r9, r7, #1
 80058f2:	e75c      	b.n	80057ae <__sfvwrite_r+0x17e>
 80058f4:	461a      	mov	r2, r3
 80058f6:	4631      	mov	r1, r6
 80058f8:	9301      	str	r3, [sp, #4]
 80058fa:	f000 fb73 	bl	8005fe4 <memmove>
 80058fe:	9b01      	ldr	r3, [sp, #4]
 8005900:	68a1      	ldr	r1, [r4, #8]
 8005902:	6822      	ldr	r2, [r4, #0]
 8005904:	1ac9      	subs	r1, r1, r3
 8005906:	441a      	add	r2, r3
 8005908:	60a1      	str	r1, [r4, #8]
 800590a:	6022      	str	r2, [r4, #0]
 800590c:	461d      	mov	r5, r3
 800590e:	e766      	b.n	80057de <__sfvwrite_r+0x1ae>
 8005910:	230c      	movs	r3, #12
 8005912:	f8ca 3000 	str.w	r3, [sl]
 8005916:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800591a:	e77b      	b.n	8005814 <__sfvwrite_r+0x1e4>
 800591c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005920:	e76b      	b.n	80057fa <__sfvwrite_r+0x1ca>
 8005922:	bf00      	nop
 8005924:	7ffffffe 	.word	0x7ffffffe
 8005928:	7ffffc00 	.word	0x7ffffc00

0800592c <_fwalk_reent>:
 800592c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005930:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005934:	d01f      	beq.n	8005976 <_fwalk_reent+0x4a>
 8005936:	4688      	mov	r8, r1
 8005938:	4606      	mov	r6, r0
 800593a:	f04f 0900 	mov.w	r9, #0
 800593e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005942:	3d01      	subs	r5, #1
 8005944:	d411      	bmi.n	800596a <_fwalk_reent+0x3e>
 8005946:	89a3      	ldrh	r3, [r4, #12]
 8005948:	2b01      	cmp	r3, #1
 800594a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800594e:	4621      	mov	r1, r4
 8005950:	4630      	mov	r0, r6
 8005952:	d906      	bls.n	8005962 <_fwalk_reent+0x36>
 8005954:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005958:	3301      	adds	r3, #1
 800595a:	d002      	beq.n	8005962 <_fwalk_reent+0x36>
 800595c:	47c0      	blx	r8
 800595e:	ea49 0900 	orr.w	r9, r9, r0
 8005962:	1c6b      	adds	r3, r5, #1
 8005964:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005968:	d1ed      	bne.n	8005946 <_fwalk_reent+0x1a>
 800596a:	683f      	ldr	r7, [r7, #0]
 800596c:	2f00      	cmp	r7, #0
 800596e:	d1e6      	bne.n	800593e <_fwalk_reent+0x12>
 8005970:	4648      	mov	r0, r9
 8005972:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005976:	46b9      	mov	r9, r7
 8005978:	4648      	mov	r0, r9
 800597a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800597e:	bf00      	nop

08005980 <_localeconv_r>:
 8005980:	4a04      	ldr	r2, [pc, #16]	; (8005994 <_localeconv_r+0x14>)
 8005982:	4b05      	ldr	r3, [pc, #20]	; (8005998 <_localeconv_r+0x18>)
 8005984:	6812      	ldr	r2, [r2, #0]
 8005986:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005988:	2800      	cmp	r0, #0
 800598a:	bf08      	it	eq
 800598c:	4618      	moveq	r0, r3
 800598e:	30f0      	adds	r0, #240	; 0xf0
 8005990:	4770      	bx	lr
 8005992:	bf00      	nop
 8005994:	20000018 	.word	0x20000018
 8005998:	2000085c 	.word	0x2000085c

0800599c <__retarget_lock_init_recursive>:
 800599c:	4770      	bx	lr
 800599e:	bf00      	nop

080059a0 <__retarget_lock_close_recursive>:
 80059a0:	4770      	bx	lr
 80059a2:	bf00      	nop

080059a4 <__retarget_lock_acquire_recursive>:
 80059a4:	4770      	bx	lr
 80059a6:	bf00      	nop

080059a8 <__retarget_lock_release_recursive>:
 80059a8:	4770      	bx	lr
 80059aa:	bf00      	nop

080059ac <__swhatbuf_r>:
 80059ac:	b570      	push	{r4, r5, r6, lr}
 80059ae:	460c      	mov	r4, r1
 80059b0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80059b4:	2900      	cmp	r1, #0
 80059b6:	b096      	sub	sp, #88	; 0x58
 80059b8:	4615      	mov	r5, r2
 80059ba:	461e      	mov	r6, r3
 80059bc:	da0f      	bge.n	80059de <__swhatbuf_r+0x32>
 80059be:	89a2      	ldrh	r2, [r4, #12]
 80059c0:	2300      	movs	r3, #0
 80059c2:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80059c6:	6033      	str	r3, [r6, #0]
 80059c8:	d104      	bne.n	80059d4 <__swhatbuf_r+0x28>
 80059ca:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80059ce:	602b      	str	r3, [r5, #0]
 80059d0:	b016      	add	sp, #88	; 0x58
 80059d2:	bd70      	pop	{r4, r5, r6, pc}
 80059d4:	2240      	movs	r2, #64	; 0x40
 80059d6:	4618      	mov	r0, r3
 80059d8:	602a      	str	r2, [r5, #0]
 80059da:	b016      	add	sp, #88	; 0x58
 80059dc:	bd70      	pop	{r4, r5, r6, pc}
 80059de:	466a      	mov	r2, sp
 80059e0:	f001 fad0 	bl	8006f84 <_fstat_r>
 80059e4:	2800      	cmp	r0, #0
 80059e6:	dbea      	blt.n	80059be <__swhatbuf_r+0x12>
 80059e8:	9b01      	ldr	r3, [sp, #4]
 80059ea:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80059ee:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80059f2:	fab3 f383 	clz	r3, r3
 80059f6:	095b      	lsrs	r3, r3, #5
 80059f8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80059fc:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005a00:	6033      	str	r3, [r6, #0]
 8005a02:	602a      	str	r2, [r5, #0]
 8005a04:	b016      	add	sp, #88	; 0x58
 8005a06:	bd70      	pop	{r4, r5, r6, pc}

08005a08 <__smakebuf_r>:
 8005a08:	898a      	ldrh	r2, [r1, #12]
 8005a0a:	0792      	lsls	r2, r2, #30
 8005a0c:	460b      	mov	r3, r1
 8005a0e:	d506      	bpl.n	8005a1e <__smakebuf_r+0x16>
 8005a10:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005a14:	2101      	movs	r1, #1
 8005a16:	601a      	str	r2, [r3, #0]
 8005a18:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005a1c:	4770      	bx	lr
 8005a1e:	b570      	push	{r4, r5, r6, lr}
 8005a20:	b082      	sub	sp, #8
 8005a22:	ab01      	add	r3, sp, #4
 8005a24:	466a      	mov	r2, sp
 8005a26:	460c      	mov	r4, r1
 8005a28:	4605      	mov	r5, r0
 8005a2a:	f7ff ffbf 	bl	80059ac <__swhatbuf_r>
 8005a2e:	9900      	ldr	r1, [sp, #0]
 8005a30:	4606      	mov	r6, r0
 8005a32:	4628      	mov	r0, r5
 8005a34:	f000 f832 	bl	8005a9c <_malloc_r>
 8005a38:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a3c:	b1d8      	cbz	r0, 8005a76 <__smakebuf_r+0x6e>
 8005a3e:	4916      	ldr	r1, [pc, #88]	; (8005a98 <__smakebuf_r+0x90>)
 8005a40:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005a42:	9a01      	ldr	r2, [sp, #4]
 8005a44:	9900      	ldr	r1, [sp, #0]
 8005a46:	6020      	str	r0, [r4, #0]
 8005a48:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005a4c:	81a3      	strh	r3, [r4, #12]
 8005a4e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005a52:	b91a      	cbnz	r2, 8005a5c <__smakebuf_r+0x54>
 8005a54:	4333      	orrs	r3, r6
 8005a56:	81a3      	strh	r3, [r4, #12]
 8005a58:	b002      	add	sp, #8
 8005a5a:	bd70      	pop	{r4, r5, r6, pc}
 8005a5c:	4628      	mov	r0, r5
 8005a5e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005a62:	f001 faa3 	bl	8006fac <_isatty_r>
 8005a66:	b1a0      	cbz	r0, 8005a92 <__smakebuf_r+0x8a>
 8005a68:	89a3      	ldrh	r3, [r4, #12]
 8005a6a:	f023 0303 	bic.w	r3, r3, #3
 8005a6e:	f043 0301 	orr.w	r3, r3, #1
 8005a72:	b21b      	sxth	r3, r3
 8005a74:	e7ee      	b.n	8005a54 <__smakebuf_r+0x4c>
 8005a76:	059a      	lsls	r2, r3, #22
 8005a78:	d4ee      	bmi.n	8005a58 <__smakebuf_r+0x50>
 8005a7a:	f023 0303 	bic.w	r3, r3, #3
 8005a7e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005a82:	f043 0302 	orr.w	r3, r3, #2
 8005a86:	2101      	movs	r1, #1
 8005a88:	81a3      	strh	r3, [r4, #12]
 8005a8a:	6022      	str	r2, [r4, #0]
 8005a8c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005a90:	e7e2      	b.n	8005a58 <__smakebuf_r+0x50>
 8005a92:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a96:	e7dd      	b.n	8005a54 <__smakebuf_r+0x4c>
 8005a98:	080052f9 	.word	0x080052f9

08005a9c <_malloc_r>:
 8005a9c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005aa0:	f101 050b 	add.w	r5, r1, #11
 8005aa4:	2d16      	cmp	r5, #22
 8005aa6:	b083      	sub	sp, #12
 8005aa8:	4606      	mov	r6, r0
 8005aaa:	d823      	bhi.n	8005af4 <_malloc_r+0x58>
 8005aac:	2910      	cmp	r1, #16
 8005aae:	f200 80b9 	bhi.w	8005c24 <_malloc_r+0x188>
 8005ab2:	f000 fafb 	bl	80060ac <__malloc_lock>
 8005ab6:	2510      	movs	r5, #16
 8005ab8:	2318      	movs	r3, #24
 8005aba:	2002      	movs	r0, #2
 8005abc:	4fc5      	ldr	r7, [pc, #788]	; (8005dd4 <_malloc_r+0x338>)
 8005abe:	443b      	add	r3, r7
 8005ac0:	f1a3 0208 	sub.w	r2, r3, #8
 8005ac4:	685c      	ldr	r4, [r3, #4]
 8005ac6:	4294      	cmp	r4, r2
 8005ac8:	f000 8166 	beq.w	8005d98 <_malloc_r+0x2fc>
 8005acc:	6863      	ldr	r3, [r4, #4]
 8005ace:	f023 0303 	bic.w	r3, r3, #3
 8005ad2:	4423      	add	r3, r4
 8005ad4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005ad8:	685a      	ldr	r2, [r3, #4]
 8005ada:	60e9      	str	r1, [r5, #12]
 8005adc:	f042 0201 	orr.w	r2, r2, #1
 8005ae0:	608d      	str	r5, [r1, #8]
 8005ae2:	4630      	mov	r0, r6
 8005ae4:	605a      	str	r2, [r3, #4]
 8005ae6:	f000 fae7 	bl	80060b8 <__malloc_unlock>
 8005aea:	3408      	adds	r4, #8
 8005aec:	4620      	mov	r0, r4
 8005aee:	b003      	add	sp, #12
 8005af0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005af4:	f035 0507 	bics.w	r5, r5, #7
 8005af8:	f100 8094 	bmi.w	8005c24 <_malloc_r+0x188>
 8005afc:	42a9      	cmp	r1, r5
 8005afe:	f200 8091 	bhi.w	8005c24 <_malloc_r+0x188>
 8005b02:	f000 fad3 	bl	80060ac <__malloc_lock>
 8005b06:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005b0a:	f0c0 8183 	bcc.w	8005e14 <_malloc_r+0x378>
 8005b0e:	0a6b      	lsrs	r3, r5, #9
 8005b10:	f000 808f 	beq.w	8005c32 <_malloc_r+0x196>
 8005b14:	2b04      	cmp	r3, #4
 8005b16:	f200 8146 	bhi.w	8005da6 <_malloc_r+0x30a>
 8005b1a:	09ab      	lsrs	r3, r5, #6
 8005b1c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005b20:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005b24:	00c3      	lsls	r3, r0, #3
 8005b26:	4fab      	ldr	r7, [pc, #684]	; (8005dd4 <_malloc_r+0x338>)
 8005b28:	443b      	add	r3, r7
 8005b2a:	f1a3 0108 	sub.w	r1, r3, #8
 8005b2e:	685c      	ldr	r4, [r3, #4]
 8005b30:	42a1      	cmp	r1, r4
 8005b32:	d106      	bne.n	8005b42 <_malloc_r+0xa6>
 8005b34:	e00c      	b.n	8005b50 <_malloc_r+0xb4>
 8005b36:	2a00      	cmp	r2, #0
 8005b38:	f280 811d 	bge.w	8005d76 <_malloc_r+0x2da>
 8005b3c:	68e4      	ldr	r4, [r4, #12]
 8005b3e:	42a1      	cmp	r1, r4
 8005b40:	d006      	beq.n	8005b50 <_malloc_r+0xb4>
 8005b42:	6863      	ldr	r3, [r4, #4]
 8005b44:	f023 0303 	bic.w	r3, r3, #3
 8005b48:	1b5a      	subs	r2, r3, r5
 8005b4a:	2a0f      	cmp	r2, #15
 8005b4c:	ddf3      	ble.n	8005b36 <_malloc_r+0x9a>
 8005b4e:	4660      	mov	r0, ip
 8005b50:	693c      	ldr	r4, [r7, #16]
 8005b52:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005de8 <_malloc_r+0x34c>
 8005b56:	4564      	cmp	r4, ip
 8005b58:	d071      	beq.n	8005c3e <_malloc_r+0x1a2>
 8005b5a:	6863      	ldr	r3, [r4, #4]
 8005b5c:	f023 0303 	bic.w	r3, r3, #3
 8005b60:	1b5a      	subs	r2, r3, r5
 8005b62:	2a0f      	cmp	r2, #15
 8005b64:	f300 8144 	bgt.w	8005df0 <_malloc_r+0x354>
 8005b68:	2a00      	cmp	r2, #0
 8005b6a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005b6e:	f280 8126 	bge.w	8005dbe <_malloc_r+0x322>
 8005b72:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005b76:	f080 8169 	bcs.w	8005e4c <_malloc_r+0x3b0>
 8005b7a:	08db      	lsrs	r3, r3, #3
 8005b7c:	1c59      	adds	r1, r3, #1
 8005b7e:	687a      	ldr	r2, [r7, #4]
 8005b80:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005b84:	f8c4 8008 	str.w	r8, [r4, #8]
 8005b88:	f04f 0e01 	mov.w	lr, #1
 8005b8c:	109b      	asrs	r3, r3, #2
 8005b8e:	fa0e f303 	lsl.w	r3, lr, r3
 8005b92:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005b96:	4313      	orrs	r3, r2
 8005b98:	f1ae 0208 	sub.w	r2, lr, #8
 8005b9c:	60e2      	str	r2, [r4, #12]
 8005b9e:	607b      	str	r3, [r7, #4]
 8005ba0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005ba4:	f8c8 400c 	str.w	r4, [r8, #12]
 8005ba8:	1082      	asrs	r2, r0, #2
 8005baa:	2401      	movs	r4, #1
 8005bac:	4094      	lsls	r4, r2
 8005bae:	429c      	cmp	r4, r3
 8005bb0:	d84b      	bhi.n	8005c4a <_malloc_r+0x1ae>
 8005bb2:	421c      	tst	r4, r3
 8005bb4:	d106      	bne.n	8005bc4 <_malloc_r+0x128>
 8005bb6:	f020 0003 	bic.w	r0, r0, #3
 8005bba:	0064      	lsls	r4, r4, #1
 8005bbc:	421c      	tst	r4, r3
 8005bbe:	f100 0004 	add.w	r0, r0, #4
 8005bc2:	d0fa      	beq.n	8005bba <_malloc_r+0x11e>
 8005bc4:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005bc8:	46ce      	mov	lr, r9
 8005bca:	4680      	mov	r8, r0
 8005bcc:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005bd0:	459e      	cmp	lr, r3
 8005bd2:	d107      	bne.n	8005be4 <_malloc_r+0x148>
 8005bd4:	e122      	b.n	8005e1c <_malloc_r+0x380>
 8005bd6:	2a00      	cmp	r2, #0
 8005bd8:	f280 8129 	bge.w	8005e2e <_malloc_r+0x392>
 8005bdc:	68db      	ldr	r3, [r3, #12]
 8005bde:	459e      	cmp	lr, r3
 8005be0:	f000 811c 	beq.w	8005e1c <_malloc_r+0x380>
 8005be4:	6859      	ldr	r1, [r3, #4]
 8005be6:	f021 0103 	bic.w	r1, r1, #3
 8005bea:	1b4a      	subs	r2, r1, r5
 8005bec:	2a0f      	cmp	r2, #15
 8005bee:	ddf2      	ble.n	8005bd6 <_malloc_r+0x13a>
 8005bf0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005bf4:	195c      	adds	r4, r3, r5
 8005bf6:	f045 0501 	orr.w	r5, r5, #1
 8005bfa:	605d      	str	r5, [r3, #4]
 8005bfc:	f042 0501 	orr.w	r5, r2, #1
 8005c00:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005c04:	4630      	mov	r0, r6
 8005c06:	f8ce 8008 	str.w	r8, [lr, #8]
 8005c0a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005c0e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005c12:	6065      	str	r5, [r4, #4]
 8005c14:	505a      	str	r2, [r3, r1]
 8005c16:	9301      	str	r3, [sp, #4]
 8005c18:	f000 fa4e 	bl	80060b8 <__malloc_unlock>
 8005c1c:	9b01      	ldr	r3, [sp, #4]
 8005c1e:	f103 0408 	add.w	r4, r3, #8
 8005c22:	e763      	b.n	8005aec <_malloc_r+0x50>
 8005c24:	2400      	movs	r4, #0
 8005c26:	230c      	movs	r3, #12
 8005c28:	4620      	mov	r0, r4
 8005c2a:	6033      	str	r3, [r6, #0]
 8005c2c:	b003      	add	sp, #12
 8005c2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c32:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005c36:	2040      	movs	r0, #64	; 0x40
 8005c38:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005c3c:	e773      	b.n	8005b26 <_malloc_r+0x8a>
 8005c3e:	687b      	ldr	r3, [r7, #4]
 8005c40:	1082      	asrs	r2, r0, #2
 8005c42:	2401      	movs	r4, #1
 8005c44:	4094      	lsls	r4, r2
 8005c46:	429c      	cmp	r4, r3
 8005c48:	d9b3      	bls.n	8005bb2 <_malloc_r+0x116>
 8005c4a:	68bc      	ldr	r4, [r7, #8]
 8005c4c:	6863      	ldr	r3, [r4, #4]
 8005c4e:	f023 0903 	bic.w	r9, r3, #3
 8005c52:	45a9      	cmp	r9, r5
 8005c54:	d303      	bcc.n	8005c5e <_malloc_r+0x1c2>
 8005c56:	eba9 0305 	sub.w	r3, r9, r5
 8005c5a:	2b0f      	cmp	r3, #15
 8005c5c:	dc7b      	bgt.n	8005d56 <_malloc_r+0x2ba>
 8005c5e:	4b5e      	ldr	r3, [pc, #376]	; (8005dd8 <_malloc_r+0x33c>)
 8005c60:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005dec <_malloc_r+0x350>
 8005c64:	681a      	ldr	r2, [r3, #0]
 8005c66:	f8da 3000 	ldr.w	r3, [sl]
 8005c6a:	3301      	adds	r3, #1
 8005c6c:	eb05 0802 	add.w	r8, r5, r2
 8005c70:	f000 8148 	beq.w	8005f04 <_malloc_r+0x468>
 8005c74:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005c78:	f108 080f 	add.w	r8, r8, #15
 8005c7c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005c80:	f028 080f 	bic.w	r8, r8, #15
 8005c84:	4641      	mov	r1, r8
 8005c86:	4630      	mov	r0, r6
 8005c88:	f000 ff08 	bl	8006a9c <_sbrk_r>
 8005c8c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005c90:	4683      	mov	fp, r0
 8005c92:	f000 8104 	beq.w	8005e9e <_malloc_r+0x402>
 8005c96:	eb04 0009 	add.w	r0, r4, r9
 8005c9a:	4558      	cmp	r0, fp
 8005c9c:	f200 80fd 	bhi.w	8005e9a <_malloc_r+0x3fe>
 8005ca0:	4a4e      	ldr	r2, [pc, #312]	; (8005ddc <_malloc_r+0x340>)
 8005ca2:	6813      	ldr	r3, [r2, #0]
 8005ca4:	4443      	add	r3, r8
 8005ca6:	6013      	str	r3, [r2, #0]
 8005ca8:	f000 814d 	beq.w	8005f46 <_malloc_r+0x4aa>
 8005cac:	f8da 1000 	ldr.w	r1, [sl]
 8005cb0:	3101      	adds	r1, #1
 8005cb2:	bf1b      	ittet	ne
 8005cb4:	ebab 0000 	subne.w	r0, fp, r0
 8005cb8:	181b      	addne	r3, r3, r0
 8005cba:	f8ca b000 	streq.w	fp, [sl]
 8005cbe:	6013      	strne	r3, [r2, #0]
 8005cc0:	f01b 0307 	ands.w	r3, fp, #7
 8005cc4:	f000 8134 	beq.w	8005f30 <_malloc_r+0x494>
 8005cc8:	f1c3 0108 	rsb	r1, r3, #8
 8005ccc:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005cd0:	448b      	add	fp, r1
 8005cd2:	3308      	adds	r3, #8
 8005cd4:	44d8      	add	r8, fp
 8005cd6:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005cda:	eba3 0808 	sub.w	r8, r3, r8
 8005cde:	4641      	mov	r1, r8
 8005ce0:	4630      	mov	r0, r6
 8005ce2:	9201      	str	r2, [sp, #4]
 8005ce4:	f000 feda 	bl	8006a9c <_sbrk_r>
 8005ce8:	1c43      	adds	r3, r0, #1
 8005cea:	9a01      	ldr	r2, [sp, #4]
 8005cec:	f000 8146 	beq.w	8005f7c <_malloc_r+0x4e0>
 8005cf0:	eba0 010b 	sub.w	r1, r0, fp
 8005cf4:	4441      	add	r1, r8
 8005cf6:	f041 0101 	orr.w	r1, r1, #1
 8005cfa:	6813      	ldr	r3, [r2, #0]
 8005cfc:	f8c7 b008 	str.w	fp, [r7, #8]
 8005d00:	4443      	add	r3, r8
 8005d02:	42bc      	cmp	r4, r7
 8005d04:	f8cb 1004 	str.w	r1, [fp, #4]
 8005d08:	6013      	str	r3, [r2, #0]
 8005d0a:	d015      	beq.n	8005d38 <_malloc_r+0x29c>
 8005d0c:	f1b9 0f0f 	cmp.w	r9, #15
 8005d10:	f240 8130 	bls.w	8005f74 <_malloc_r+0x4d8>
 8005d14:	6860      	ldr	r0, [r4, #4]
 8005d16:	f1a9 010c 	sub.w	r1, r9, #12
 8005d1a:	f021 0107 	bic.w	r1, r1, #7
 8005d1e:	f000 0001 	and.w	r0, r0, #1
 8005d22:	eb04 0c01 	add.w	ip, r4, r1
 8005d26:	4308      	orrs	r0, r1
 8005d28:	f04f 0e05 	mov.w	lr, #5
 8005d2c:	290f      	cmp	r1, #15
 8005d2e:	6060      	str	r0, [r4, #4]
 8005d30:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005d34:	f200 813a 	bhi.w	8005fac <_malloc_r+0x510>
 8005d38:	4a29      	ldr	r2, [pc, #164]	; (8005de0 <_malloc_r+0x344>)
 8005d3a:	482a      	ldr	r0, [pc, #168]	; (8005de4 <_malloc_r+0x348>)
 8005d3c:	6811      	ldr	r1, [r2, #0]
 8005d3e:	68bc      	ldr	r4, [r7, #8]
 8005d40:	428b      	cmp	r3, r1
 8005d42:	6801      	ldr	r1, [r0, #0]
 8005d44:	bf88      	it	hi
 8005d46:	6013      	strhi	r3, [r2, #0]
 8005d48:	6862      	ldr	r2, [r4, #4]
 8005d4a:	428b      	cmp	r3, r1
 8005d4c:	f022 0203 	bic.w	r2, r2, #3
 8005d50:	bf88      	it	hi
 8005d52:	6003      	strhi	r3, [r0, #0]
 8005d54:	e0a7      	b.n	8005ea6 <_malloc_r+0x40a>
 8005d56:	1962      	adds	r2, r4, r5
 8005d58:	f043 0301 	orr.w	r3, r3, #1
 8005d5c:	f045 0501 	orr.w	r5, r5, #1
 8005d60:	6065      	str	r5, [r4, #4]
 8005d62:	4630      	mov	r0, r6
 8005d64:	60ba      	str	r2, [r7, #8]
 8005d66:	6053      	str	r3, [r2, #4]
 8005d68:	f000 f9a6 	bl	80060b8 <__malloc_unlock>
 8005d6c:	3408      	adds	r4, #8
 8005d6e:	4620      	mov	r0, r4
 8005d70:	b003      	add	sp, #12
 8005d72:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d76:	4423      	add	r3, r4
 8005d78:	68e1      	ldr	r1, [r4, #12]
 8005d7a:	685a      	ldr	r2, [r3, #4]
 8005d7c:	68a5      	ldr	r5, [r4, #8]
 8005d7e:	f042 0201 	orr.w	r2, r2, #1
 8005d82:	60e9      	str	r1, [r5, #12]
 8005d84:	4630      	mov	r0, r6
 8005d86:	608d      	str	r5, [r1, #8]
 8005d88:	605a      	str	r2, [r3, #4]
 8005d8a:	f000 f995 	bl	80060b8 <__malloc_unlock>
 8005d8e:	3408      	adds	r4, #8
 8005d90:	4620      	mov	r0, r4
 8005d92:	b003      	add	sp, #12
 8005d94:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d98:	68dc      	ldr	r4, [r3, #12]
 8005d9a:	42a3      	cmp	r3, r4
 8005d9c:	bf08      	it	eq
 8005d9e:	3002      	addeq	r0, #2
 8005da0:	f43f aed6 	beq.w	8005b50 <_malloc_r+0xb4>
 8005da4:	e692      	b.n	8005acc <_malloc_r+0x30>
 8005da6:	2b14      	cmp	r3, #20
 8005da8:	d971      	bls.n	8005e8e <_malloc_r+0x3f2>
 8005daa:	2b54      	cmp	r3, #84	; 0x54
 8005dac:	f200 80ad 	bhi.w	8005f0a <_malloc_r+0x46e>
 8005db0:	0b2b      	lsrs	r3, r5, #12
 8005db2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005db6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005dba:	00c3      	lsls	r3, r0, #3
 8005dbc:	e6b3      	b.n	8005b26 <_malloc_r+0x8a>
 8005dbe:	4423      	add	r3, r4
 8005dc0:	4630      	mov	r0, r6
 8005dc2:	685a      	ldr	r2, [r3, #4]
 8005dc4:	f042 0201 	orr.w	r2, r2, #1
 8005dc8:	605a      	str	r2, [r3, #4]
 8005dca:	3408      	adds	r4, #8
 8005dcc:	f000 f974 	bl	80060b8 <__malloc_unlock>
 8005dd0:	e68c      	b.n	8005aec <_malloc_r+0x50>
 8005dd2:	bf00      	nop
 8005dd4:	2000044c 	.word	0x2000044c
 8005dd8:	20000a9c 	.word	0x20000a9c
 8005ddc:	20000a6c 	.word	0x20000a6c
 8005de0:	20000a94 	.word	0x20000a94
 8005de4:	20000a98 	.word	0x20000a98
 8005de8:	20000454 	.word	0x20000454
 8005dec:	20000854 	.word	0x20000854
 8005df0:	1961      	adds	r1, r4, r5
 8005df2:	f045 0e01 	orr.w	lr, r5, #1
 8005df6:	f042 0501 	orr.w	r5, r2, #1
 8005dfa:	f8c4 e004 	str.w	lr, [r4, #4]
 8005dfe:	4630      	mov	r0, r6
 8005e00:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005e04:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005e08:	604d      	str	r5, [r1, #4]
 8005e0a:	50e2      	str	r2, [r4, r3]
 8005e0c:	f000 f954 	bl	80060b8 <__malloc_unlock>
 8005e10:	3408      	adds	r4, #8
 8005e12:	e66b      	b.n	8005aec <_malloc_r+0x50>
 8005e14:	08e8      	lsrs	r0, r5, #3
 8005e16:	f105 0308 	add.w	r3, r5, #8
 8005e1a:	e64f      	b.n	8005abc <_malloc_r+0x20>
 8005e1c:	f108 0801 	add.w	r8, r8, #1
 8005e20:	f018 0f03 	tst.w	r8, #3
 8005e24:	f10e 0e08 	add.w	lr, lr, #8
 8005e28:	f47f aed0 	bne.w	8005bcc <_malloc_r+0x130>
 8005e2c:	e052      	b.n	8005ed4 <_malloc_r+0x438>
 8005e2e:	4419      	add	r1, r3
 8005e30:	461c      	mov	r4, r3
 8005e32:	684a      	ldr	r2, [r1, #4]
 8005e34:	68db      	ldr	r3, [r3, #12]
 8005e36:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005e3a:	f042 0201 	orr.w	r2, r2, #1
 8005e3e:	604a      	str	r2, [r1, #4]
 8005e40:	4630      	mov	r0, r6
 8005e42:	60eb      	str	r3, [r5, #12]
 8005e44:	609d      	str	r5, [r3, #8]
 8005e46:	f000 f937 	bl	80060b8 <__malloc_unlock>
 8005e4a:	e64f      	b.n	8005aec <_malloc_r+0x50>
 8005e4c:	0a5a      	lsrs	r2, r3, #9
 8005e4e:	2a04      	cmp	r2, #4
 8005e50:	d935      	bls.n	8005ebe <_malloc_r+0x422>
 8005e52:	2a14      	cmp	r2, #20
 8005e54:	d86f      	bhi.n	8005f36 <_malloc_r+0x49a>
 8005e56:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005e5a:	00c9      	lsls	r1, r1, #3
 8005e5c:	325b      	adds	r2, #91	; 0x5b
 8005e5e:	eb07 0e01 	add.w	lr, r7, r1
 8005e62:	5879      	ldr	r1, [r7, r1]
 8005e64:	f1ae 0e08 	sub.w	lr, lr, #8
 8005e68:	458e      	cmp	lr, r1
 8005e6a:	d058      	beq.n	8005f1e <_malloc_r+0x482>
 8005e6c:	684a      	ldr	r2, [r1, #4]
 8005e6e:	f022 0203 	bic.w	r2, r2, #3
 8005e72:	429a      	cmp	r2, r3
 8005e74:	d902      	bls.n	8005e7c <_malloc_r+0x3e0>
 8005e76:	6889      	ldr	r1, [r1, #8]
 8005e78:	458e      	cmp	lr, r1
 8005e7a:	d1f7      	bne.n	8005e6c <_malloc_r+0x3d0>
 8005e7c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005e80:	687b      	ldr	r3, [r7, #4]
 8005e82:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005e86:	f8ce 4008 	str.w	r4, [lr, #8]
 8005e8a:	60cc      	str	r4, [r1, #12]
 8005e8c:	e68c      	b.n	8005ba8 <_malloc_r+0x10c>
 8005e8e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005e92:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005e96:	00c3      	lsls	r3, r0, #3
 8005e98:	e645      	b.n	8005b26 <_malloc_r+0x8a>
 8005e9a:	42bc      	cmp	r4, r7
 8005e9c:	d072      	beq.n	8005f84 <_malloc_r+0x4e8>
 8005e9e:	68bc      	ldr	r4, [r7, #8]
 8005ea0:	6862      	ldr	r2, [r4, #4]
 8005ea2:	f022 0203 	bic.w	r2, r2, #3
 8005ea6:	4295      	cmp	r5, r2
 8005ea8:	eba2 0305 	sub.w	r3, r2, r5
 8005eac:	d802      	bhi.n	8005eb4 <_malloc_r+0x418>
 8005eae:	2b0f      	cmp	r3, #15
 8005eb0:	f73f af51 	bgt.w	8005d56 <_malloc_r+0x2ba>
 8005eb4:	4630      	mov	r0, r6
 8005eb6:	f000 f8ff 	bl	80060b8 <__malloc_unlock>
 8005eba:	2400      	movs	r4, #0
 8005ebc:	e616      	b.n	8005aec <_malloc_r+0x50>
 8005ebe:	099a      	lsrs	r2, r3, #6
 8005ec0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005ec4:	00c9      	lsls	r1, r1, #3
 8005ec6:	3238      	adds	r2, #56	; 0x38
 8005ec8:	e7c9      	b.n	8005e5e <_malloc_r+0x3c2>
 8005eca:	f8d9 9000 	ldr.w	r9, [r9]
 8005ece:	4599      	cmp	r9, r3
 8005ed0:	f040 8083 	bne.w	8005fda <_malloc_r+0x53e>
 8005ed4:	f010 0f03 	tst.w	r0, #3
 8005ed8:	f1a9 0308 	sub.w	r3, r9, #8
 8005edc:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005ee0:	d1f3      	bne.n	8005eca <_malloc_r+0x42e>
 8005ee2:	687b      	ldr	r3, [r7, #4]
 8005ee4:	ea23 0304 	bic.w	r3, r3, r4
 8005ee8:	607b      	str	r3, [r7, #4]
 8005eea:	0064      	lsls	r4, r4, #1
 8005eec:	429c      	cmp	r4, r3
 8005eee:	f63f aeac 	bhi.w	8005c4a <_malloc_r+0x1ae>
 8005ef2:	b91c      	cbnz	r4, 8005efc <_malloc_r+0x460>
 8005ef4:	e6a9      	b.n	8005c4a <_malloc_r+0x1ae>
 8005ef6:	0064      	lsls	r4, r4, #1
 8005ef8:	f108 0804 	add.w	r8, r8, #4
 8005efc:	421c      	tst	r4, r3
 8005efe:	d0fa      	beq.n	8005ef6 <_malloc_r+0x45a>
 8005f00:	4640      	mov	r0, r8
 8005f02:	e65f      	b.n	8005bc4 <_malloc_r+0x128>
 8005f04:	f108 0810 	add.w	r8, r8, #16
 8005f08:	e6bc      	b.n	8005c84 <_malloc_r+0x1e8>
 8005f0a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005f0e:	d826      	bhi.n	8005f5e <_malloc_r+0x4c2>
 8005f10:	0beb      	lsrs	r3, r5, #15
 8005f12:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005f16:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005f1a:	00c3      	lsls	r3, r0, #3
 8005f1c:	e603      	b.n	8005b26 <_malloc_r+0x8a>
 8005f1e:	687b      	ldr	r3, [r7, #4]
 8005f20:	1092      	asrs	r2, r2, #2
 8005f22:	f04f 0801 	mov.w	r8, #1
 8005f26:	fa08 f202 	lsl.w	r2, r8, r2
 8005f2a:	4313      	orrs	r3, r2
 8005f2c:	607b      	str	r3, [r7, #4]
 8005f2e:	e7a8      	b.n	8005e82 <_malloc_r+0x3e6>
 8005f30:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005f34:	e6ce      	b.n	8005cd4 <_malloc_r+0x238>
 8005f36:	2a54      	cmp	r2, #84	; 0x54
 8005f38:	d829      	bhi.n	8005f8e <_malloc_r+0x4f2>
 8005f3a:	0b1a      	lsrs	r2, r3, #12
 8005f3c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005f40:	00c9      	lsls	r1, r1, #3
 8005f42:	326e      	adds	r2, #110	; 0x6e
 8005f44:	e78b      	b.n	8005e5e <_malloc_r+0x3c2>
 8005f46:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005f4a:	2900      	cmp	r1, #0
 8005f4c:	f47f aeae 	bne.w	8005cac <_malloc_r+0x210>
 8005f50:	eb09 0208 	add.w	r2, r9, r8
 8005f54:	68b9      	ldr	r1, [r7, #8]
 8005f56:	f042 0201 	orr.w	r2, r2, #1
 8005f5a:	604a      	str	r2, [r1, #4]
 8005f5c:	e6ec      	b.n	8005d38 <_malloc_r+0x29c>
 8005f5e:	f240 5254 	movw	r2, #1364	; 0x554
 8005f62:	4293      	cmp	r3, r2
 8005f64:	d81c      	bhi.n	8005fa0 <_malloc_r+0x504>
 8005f66:	0cab      	lsrs	r3, r5, #18
 8005f68:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005f6c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005f70:	00c3      	lsls	r3, r0, #3
 8005f72:	e5d8      	b.n	8005b26 <_malloc_r+0x8a>
 8005f74:	2301      	movs	r3, #1
 8005f76:	f8cb 3004 	str.w	r3, [fp, #4]
 8005f7a:	e79b      	b.n	8005eb4 <_malloc_r+0x418>
 8005f7c:	2101      	movs	r1, #1
 8005f7e:	f04f 0800 	mov.w	r8, #0
 8005f82:	e6ba      	b.n	8005cfa <_malloc_r+0x25e>
 8005f84:	4a16      	ldr	r2, [pc, #88]	; (8005fe0 <_malloc_r+0x544>)
 8005f86:	6813      	ldr	r3, [r2, #0]
 8005f88:	4443      	add	r3, r8
 8005f8a:	6013      	str	r3, [r2, #0]
 8005f8c:	e68e      	b.n	8005cac <_malloc_r+0x210>
 8005f8e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005f92:	d814      	bhi.n	8005fbe <_malloc_r+0x522>
 8005f94:	0bda      	lsrs	r2, r3, #15
 8005f96:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005f9a:	00c9      	lsls	r1, r1, #3
 8005f9c:	3277      	adds	r2, #119	; 0x77
 8005f9e:	e75e      	b.n	8005e5e <_malloc_r+0x3c2>
 8005fa0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005fa4:	207f      	movs	r0, #127	; 0x7f
 8005fa6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005faa:	e5bc      	b.n	8005b26 <_malloc_r+0x8a>
 8005fac:	f104 0108 	add.w	r1, r4, #8
 8005fb0:	4630      	mov	r0, r6
 8005fb2:	9201      	str	r2, [sp, #4]
 8005fb4:	f7ff fa48 	bl	8005448 <_free_r>
 8005fb8:	9a01      	ldr	r2, [sp, #4]
 8005fba:	6813      	ldr	r3, [r2, #0]
 8005fbc:	e6bc      	b.n	8005d38 <_malloc_r+0x29c>
 8005fbe:	f240 5154 	movw	r1, #1364	; 0x554
 8005fc2:	428a      	cmp	r2, r1
 8005fc4:	d805      	bhi.n	8005fd2 <_malloc_r+0x536>
 8005fc6:	0c9a      	lsrs	r2, r3, #18
 8005fc8:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005fcc:	00c9      	lsls	r1, r1, #3
 8005fce:	327c      	adds	r2, #124	; 0x7c
 8005fd0:	e745      	b.n	8005e5e <_malloc_r+0x3c2>
 8005fd2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005fd6:	227e      	movs	r2, #126	; 0x7e
 8005fd8:	e741      	b.n	8005e5e <_malloc_r+0x3c2>
 8005fda:	687b      	ldr	r3, [r7, #4]
 8005fdc:	e785      	b.n	8005eea <_malloc_r+0x44e>
 8005fde:	bf00      	nop
 8005fe0:	20000a6c 	.word	0x20000a6c

08005fe4 <memmove>:
 8005fe4:	4288      	cmp	r0, r1
 8005fe6:	b4f0      	push	{r4, r5, r6, r7}
 8005fe8:	d90d      	bls.n	8006006 <memmove+0x22>
 8005fea:	188b      	adds	r3, r1, r2
 8005fec:	4283      	cmp	r3, r0
 8005fee:	d90a      	bls.n	8006006 <memmove+0x22>
 8005ff0:	1884      	adds	r4, r0, r2
 8005ff2:	b132      	cbz	r2, 8006002 <memmove+0x1e>
 8005ff4:	4622      	mov	r2, r4
 8005ff6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005ffa:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005ffe:	4299      	cmp	r1, r3
 8006000:	d1f9      	bne.n	8005ff6 <memmove+0x12>
 8006002:	bcf0      	pop	{r4, r5, r6, r7}
 8006004:	4770      	bx	lr
 8006006:	2a0f      	cmp	r2, #15
 8006008:	d949      	bls.n	800609e <memmove+0xba>
 800600a:	ea40 0301 	orr.w	r3, r0, r1
 800600e:	079b      	lsls	r3, r3, #30
 8006010:	d147      	bne.n	80060a2 <memmove+0xbe>
 8006012:	f1a2 0310 	sub.w	r3, r2, #16
 8006016:	091b      	lsrs	r3, r3, #4
 8006018:	f101 0720 	add.w	r7, r1, #32
 800601c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006020:	f101 0410 	add.w	r4, r1, #16
 8006024:	f100 0510 	add.w	r5, r0, #16
 8006028:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800602c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006030:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006034:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006038:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800603c:	f845 6c08 	str.w	r6, [r5, #-8]
 8006040:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006044:	f845 6c04 	str.w	r6, [r5, #-4]
 8006048:	3410      	adds	r4, #16
 800604a:	42bc      	cmp	r4, r7
 800604c:	f105 0510 	add.w	r5, r5, #16
 8006050:	d1ea      	bne.n	8006028 <memmove+0x44>
 8006052:	3301      	adds	r3, #1
 8006054:	f002 050f 	and.w	r5, r2, #15
 8006058:	011b      	lsls	r3, r3, #4
 800605a:	2d03      	cmp	r5, #3
 800605c:	4419      	add	r1, r3
 800605e:	4403      	add	r3, r0
 8006060:	d921      	bls.n	80060a6 <memmove+0xc2>
 8006062:	1f1f      	subs	r7, r3, #4
 8006064:	460e      	mov	r6, r1
 8006066:	462c      	mov	r4, r5
 8006068:	3c04      	subs	r4, #4
 800606a:	f856 cb04 	ldr.w	ip, [r6], #4
 800606e:	f847 cf04 	str.w	ip, [r7, #4]!
 8006072:	2c03      	cmp	r4, #3
 8006074:	d8f8      	bhi.n	8006068 <memmove+0x84>
 8006076:	1f2c      	subs	r4, r5, #4
 8006078:	f024 0403 	bic.w	r4, r4, #3
 800607c:	3404      	adds	r4, #4
 800607e:	4423      	add	r3, r4
 8006080:	4421      	add	r1, r4
 8006082:	f002 0203 	and.w	r2, r2, #3
 8006086:	2a00      	cmp	r2, #0
 8006088:	d0bb      	beq.n	8006002 <memmove+0x1e>
 800608a:	3b01      	subs	r3, #1
 800608c:	440a      	add	r2, r1
 800608e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006092:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006096:	4291      	cmp	r1, r2
 8006098:	d1f9      	bne.n	800608e <memmove+0xaa>
 800609a:	bcf0      	pop	{r4, r5, r6, r7}
 800609c:	4770      	bx	lr
 800609e:	4603      	mov	r3, r0
 80060a0:	e7f1      	b.n	8006086 <memmove+0xa2>
 80060a2:	4603      	mov	r3, r0
 80060a4:	e7f1      	b.n	800608a <memmove+0xa6>
 80060a6:	462a      	mov	r2, r5
 80060a8:	e7ed      	b.n	8006086 <memmove+0xa2>
 80060aa:	bf00      	nop

080060ac <__malloc_lock>:
 80060ac:	4801      	ldr	r0, [pc, #4]	; (80060b4 <__malloc_lock+0x8>)
 80060ae:	f7ff bc79 	b.w	80059a4 <__retarget_lock_acquire_recursive>
 80060b2:	bf00      	nop
 80060b4:	20000bc0 	.word	0x20000bc0

080060b8 <__malloc_unlock>:
 80060b8:	4801      	ldr	r0, [pc, #4]	; (80060c0 <__malloc_unlock+0x8>)
 80060ba:	f7ff bc75 	b.w	80059a8 <__retarget_lock_release_recursive>
 80060be:	bf00      	nop
 80060c0:	20000bc0 	.word	0x20000bc0

080060c4 <_Balloc>:
 80060c4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80060c6:	b570      	push	{r4, r5, r6, lr}
 80060c8:	4605      	mov	r5, r0
 80060ca:	460c      	mov	r4, r1
 80060cc:	b14b      	cbz	r3, 80060e2 <_Balloc+0x1e>
 80060ce:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80060d2:	b180      	cbz	r0, 80060f6 <_Balloc+0x32>
 80060d4:	6802      	ldr	r2, [r0, #0]
 80060d6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80060da:	2300      	movs	r3, #0
 80060dc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80060e0:	bd70      	pop	{r4, r5, r6, pc}
 80060e2:	2221      	movs	r2, #33	; 0x21
 80060e4:	2104      	movs	r1, #4
 80060e6:	f000 fe1d 	bl	8006d24 <_calloc_r>
 80060ea:	4603      	mov	r3, r0
 80060ec:	64e8      	str	r0, [r5, #76]	; 0x4c
 80060ee:	2800      	cmp	r0, #0
 80060f0:	d1ed      	bne.n	80060ce <_Balloc+0xa>
 80060f2:	2000      	movs	r0, #0
 80060f4:	bd70      	pop	{r4, r5, r6, pc}
 80060f6:	2101      	movs	r1, #1
 80060f8:	fa01 f604 	lsl.w	r6, r1, r4
 80060fc:	1d72      	adds	r2, r6, #5
 80060fe:	4628      	mov	r0, r5
 8006100:	0092      	lsls	r2, r2, #2
 8006102:	f000 fe0f 	bl	8006d24 <_calloc_r>
 8006106:	2800      	cmp	r0, #0
 8006108:	d0f3      	beq.n	80060f2 <_Balloc+0x2e>
 800610a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800610e:	e7e4      	b.n	80060da <_Balloc+0x16>

08006110 <_Bfree>:
 8006110:	b131      	cbz	r1, 8006120 <_Bfree+0x10>
 8006112:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006114:	684a      	ldr	r2, [r1, #4]
 8006116:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800611a:	6008      	str	r0, [r1, #0]
 800611c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006120:	4770      	bx	lr
 8006122:	bf00      	nop

08006124 <__multadd>:
 8006124:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006126:	690c      	ldr	r4, [r1, #16]
 8006128:	b083      	sub	sp, #12
 800612a:	460d      	mov	r5, r1
 800612c:	4606      	mov	r6, r0
 800612e:	f101 0c14 	add.w	ip, r1, #20
 8006132:	2700      	movs	r7, #0
 8006134:	f8dc 0000 	ldr.w	r0, [ip]
 8006138:	b281      	uxth	r1, r0
 800613a:	fb02 3301 	mla	r3, r2, r1, r3
 800613e:	0c01      	lsrs	r1, r0, #16
 8006140:	0c18      	lsrs	r0, r3, #16
 8006142:	fb02 0101 	mla	r1, r2, r1, r0
 8006146:	b29b      	uxth	r3, r3
 8006148:	3701      	adds	r7, #1
 800614a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800614e:	42bc      	cmp	r4, r7
 8006150:	f84c 3b04 	str.w	r3, [ip], #4
 8006154:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006158:	dcec      	bgt.n	8006134 <__multadd+0x10>
 800615a:	b13b      	cbz	r3, 800616c <__multadd+0x48>
 800615c:	68aa      	ldr	r2, [r5, #8]
 800615e:	42a2      	cmp	r2, r4
 8006160:	dd07      	ble.n	8006172 <__multadd+0x4e>
 8006162:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006166:	3401      	adds	r4, #1
 8006168:	6153      	str	r3, [r2, #20]
 800616a:	612c      	str	r4, [r5, #16]
 800616c:	4628      	mov	r0, r5
 800616e:	b003      	add	sp, #12
 8006170:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006172:	6869      	ldr	r1, [r5, #4]
 8006174:	9301      	str	r3, [sp, #4]
 8006176:	3101      	adds	r1, #1
 8006178:	4630      	mov	r0, r6
 800617a:	f7ff ffa3 	bl	80060c4 <_Balloc>
 800617e:	692a      	ldr	r2, [r5, #16]
 8006180:	3202      	adds	r2, #2
 8006182:	f105 010c 	add.w	r1, r5, #12
 8006186:	4607      	mov	r7, r0
 8006188:	0092      	lsls	r2, r2, #2
 800618a:	300c      	adds	r0, #12
 800618c:	f7fa f9b8 	bl	8000500 <memcpy>
 8006190:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006192:	6869      	ldr	r1, [r5, #4]
 8006194:	9b01      	ldr	r3, [sp, #4]
 8006196:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800619a:	6028      	str	r0, [r5, #0]
 800619c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80061a0:	463d      	mov	r5, r7
 80061a2:	e7de      	b.n	8006162 <__multadd+0x3e>

080061a4 <__hi0bits>:
 80061a4:	0c02      	lsrs	r2, r0, #16
 80061a6:	0412      	lsls	r2, r2, #16
 80061a8:	4603      	mov	r3, r0
 80061aa:	b9c2      	cbnz	r2, 80061de <__hi0bits+0x3a>
 80061ac:	0403      	lsls	r3, r0, #16
 80061ae:	2010      	movs	r0, #16
 80061b0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80061b4:	bf04      	itt	eq
 80061b6:	021b      	lsleq	r3, r3, #8
 80061b8:	3008      	addeq	r0, #8
 80061ba:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80061be:	bf04      	itt	eq
 80061c0:	011b      	lsleq	r3, r3, #4
 80061c2:	3004      	addeq	r0, #4
 80061c4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80061c8:	bf04      	itt	eq
 80061ca:	009b      	lsleq	r3, r3, #2
 80061cc:	3002      	addeq	r0, #2
 80061ce:	2b00      	cmp	r3, #0
 80061d0:	db04      	blt.n	80061dc <__hi0bits+0x38>
 80061d2:	005b      	lsls	r3, r3, #1
 80061d4:	d501      	bpl.n	80061da <__hi0bits+0x36>
 80061d6:	3001      	adds	r0, #1
 80061d8:	4770      	bx	lr
 80061da:	2020      	movs	r0, #32
 80061dc:	4770      	bx	lr
 80061de:	2000      	movs	r0, #0
 80061e0:	e7e6      	b.n	80061b0 <__hi0bits+0xc>
 80061e2:	bf00      	nop

080061e4 <__lo0bits>:
 80061e4:	6803      	ldr	r3, [r0, #0]
 80061e6:	f013 0207 	ands.w	r2, r3, #7
 80061ea:	4601      	mov	r1, r0
 80061ec:	d007      	beq.n	80061fe <__lo0bits+0x1a>
 80061ee:	07da      	lsls	r2, r3, #31
 80061f0:	d41f      	bmi.n	8006232 <__lo0bits+0x4e>
 80061f2:	0798      	lsls	r0, r3, #30
 80061f4:	d51f      	bpl.n	8006236 <__lo0bits+0x52>
 80061f6:	085b      	lsrs	r3, r3, #1
 80061f8:	600b      	str	r3, [r1, #0]
 80061fa:	2001      	movs	r0, #1
 80061fc:	4770      	bx	lr
 80061fe:	b298      	uxth	r0, r3
 8006200:	b1a0      	cbz	r0, 800622c <__lo0bits+0x48>
 8006202:	4610      	mov	r0, r2
 8006204:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006208:	bf04      	itt	eq
 800620a:	0a1b      	lsreq	r3, r3, #8
 800620c:	3008      	addeq	r0, #8
 800620e:	071a      	lsls	r2, r3, #28
 8006210:	bf04      	itt	eq
 8006212:	091b      	lsreq	r3, r3, #4
 8006214:	3004      	addeq	r0, #4
 8006216:	079a      	lsls	r2, r3, #30
 8006218:	bf04      	itt	eq
 800621a:	089b      	lsreq	r3, r3, #2
 800621c:	3002      	addeq	r0, #2
 800621e:	07da      	lsls	r2, r3, #31
 8006220:	d402      	bmi.n	8006228 <__lo0bits+0x44>
 8006222:	085b      	lsrs	r3, r3, #1
 8006224:	d00b      	beq.n	800623e <__lo0bits+0x5a>
 8006226:	3001      	adds	r0, #1
 8006228:	600b      	str	r3, [r1, #0]
 800622a:	4770      	bx	lr
 800622c:	0c1b      	lsrs	r3, r3, #16
 800622e:	2010      	movs	r0, #16
 8006230:	e7e8      	b.n	8006204 <__lo0bits+0x20>
 8006232:	2000      	movs	r0, #0
 8006234:	4770      	bx	lr
 8006236:	089b      	lsrs	r3, r3, #2
 8006238:	600b      	str	r3, [r1, #0]
 800623a:	2002      	movs	r0, #2
 800623c:	4770      	bx	lr
 800623e:	2020      	movs	r0, #32
 8006240:	4770      	bx	lr
 8006242:	bf00      	nop

08006244 <__i2b>:
 8006244:	b510      	push	{r4, lr}
 8006246:	460c      	mov	r4, r1
 8006248:	2101      	movs	r1, #1
 800624a:	f7ff ff3b 	bl	80060c4 <_Balloc>
 800624e:	2201      	movs	r2, #1
 8006250:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006254:	bd10      	pop	{r4, pc}
 8006256:	bf00      	nop

08006258 <__multiply>:
 8006258:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800625c:	690e      	ldr	r6, [r1, #16]
 800625e:	6914      	ldr	r4, [r2, #16]
 8006260:	42a6      	cmp	r6, r4
 8006262:	b083      	sub	sp, #12
 8006264:	460f      	mov	r7, r1
 8006266:	4615      	mov	r5, r2
 8006268:	da04      	bge.n	8006274 <__multiply+0x1c>
 800626a:	4632      	mov	r2, r6
 800626c:	462f      	mov	r7, r5
 800626e:	4626      	mov	r6, r4
 8006270:	460d      	mov	r5, r1
 8006272:	4614      	mov	r4, r2
 8006274:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006278:	eb06 0804 	add.w	r8, r6, r4
 800627c:	4543      	cmp	r3, r8
 800627e:	bfb8      	it	lt
 8006280:	3101      	addlt	r1, #1
 8006282:	f7ff ff1f 	bl	80060c4 <_Balloc>
 8006286:	f100 0914 	add.w	r9, r0, #20
 800628a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800628e:	45f1      	cmp	r9, lr
 8006290:	9000      	str	r0, [sp, #0]
 8006292:	d205      	bcs.n	80062a0 <__multiply+0x48>
 8006294:	464b      	mov	r3, r9
 8006296:	2200      	movs	r2, #0
 8006298:	f843 2b04 	str.w	r2, [r3], #4
 800629c:	459e      	cmp	lr, r3
 800629e:	d8fb      	bhi.n	8006298 <__multiply+0x40>
 80062a0:	f105 0a14 	add.w	sl, r5, #20
 80062a4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80062a8:	f107 0314 	add.w	r3, r7, #20
 80062ac:	45a2      	cmp	sl, r4
 80062ae:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80062b2:	d261      	bcs.n	8006378 <__multiply+0x120>
 80062b4:	1b64      	subs	r4, r4, r5
 80062b6:	3c15      	subs	r4, #21
 80062b8:	f024 0403 	bic.w	r4, r4, #3
 80062bc:	f8cd e004 	str.w	lr, [sp, #4]
 80062c0:	44a2      	add	sl, r4
 80062c2:	f105 0210 	add.w	r2, r5, #16
 80062c6:	469e      	mov	lr, r3
 80062c8:	e005      	b.n	80062d6 <__multiply+0x7e>
 80062ca:	0c2d      	lsrs	r5, r5, #16
 80062cc:	d12b      	bne.n	8006326 <__multiply+0xce>
 80062ce:	4592      	cmp	sl, r2
 80062d0:	f109 0904 	add.w	r9, r9, #4
 80062d4:	d04e      	beq.n	8006374 <__multiply+0x11c>
 80062d6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80062da:	fa1f fb85 	uxth.w	fp, r5
 80062de:	f1bb 0f00 	cmp.w	fp, #0
 80062e2:	d0f2      	beq.n	80062ca <__multiply+0x72>
 80062e4:	4677      	mov	r7, lr
 80062e6:	464e      	mov	r6, r9
 80062e8:	2000      	movs	r0, #0
 80062ea:	e000      	b.n	80062ee <__multiply+0x96>
 80062ec:	4626      	mov	r6, r4
 80062ee:	f857 1b04 	ldr.w	r1, [r7], #4
 80062f2:	6834      	ldr	r4, [r6, #0]
 80062f4:	b28b      	uxth	r3, r1
 80062f6:	b2a5      	uxth	r5, r4
 80062f8:	0c09      	lsrs	r1, r1, #16
 80062fa:	0c24      	lsrs	r4, r4, #16
 80062fc:	fb0b 5303 	mla	r3, fp, r3, r5
 8006300:	4403      	add	r3, r0
 8006302:	fb0b 4001 	mla	r0, fp, r1, r4
 8006306:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800630a:	4634      	mov	r4, r6
 800630c:	b29b      	uxth	r3, r3
 800630e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006312:	45bc      	cmp	ip, r7
 8006314:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006318:	f844 3b04 	str.w	r3, [r4], #4
 800631c:	d8e6      	bhi.n	80062ec <__multiply+0x94>
 800631e:	6070      	str	r0, [r6, #4]
 8006320:	6815      	ldr	r5, [r2, #0]
 8006322:	0c2d      	lsrs	r5, r5, #16
 8006324:	d0d3      	beq.n	80062ce <__multiply+0x76>
 8006326:	f8d9 3000 	ldr.w	r3, [r9]
 800632a:	4676      	mov	r6, lr
 800632c:	4618      	mov	r0, r3
 800632e:	46cb      	mov	fp, r9
 8006330:	2100      	movs	r1, #0
 8006332:	e000      	b.n	8006336 <__multiply+0xde>
 8006334:	46a3      	mov	fp, r4
 8006336:	8834      	ldrh	r4, [r6, #0]
 8006338:	0c00      	lsrs	r0, r0, #16
 800633a:	fb05 0004 	mla	r0, r5, r4, r0
 800633e:	4401      	add	r1, r0
 8006340:	b29b      	uxth	r3, r3
 8006342:	465c      	mov	r4, fp
 8006344:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006348:	f844 3b04 	str.w	r3, [r4], #4
 800634c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006350:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006354:	0c1b      	lsrs	r3, r3, #16
 8006356:	b287      	uxth	r7, r0
 8006358:	fb05 7303 	mla	r3, r5, r3, r7
 800635c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006360:	45b4      	cmp	ip, r6
 8006362:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006366:	d8e5      	bhi.n	8006334 <__multiply+0xdc>
 8006368:	4592      	cmp	sl, r2
 800636a:	f8cb 3004 	str.w	r3, [fp, #4]
 800636e:	f109 0904 	add.w	r9, r9, #4
 8006372:	d1b0      	bne.n	80062d6 <__multiply+0x7e>
 8006374:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006378:	f1b8 0f00 	cmp.w	r8, #0
 800637c:	dd0b      	ble.n	8006396 <__multiply+0x13e>
 800637e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006382:	f1ae 0e04 	sub.w	lr, lr, #4
 8006386:	b11b      	cbz	r3, 8006390 <__multiply+0x138>
 8006388:	e005      	b.n	8006396 <__multiply+0x13e>
 800638a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800638e:	b913      	cbnz	r3, 8006396 <__multiply+0x13e>
 8006390:	f1b8 0801 	subs.w	r8, r8, #1
 8006394:	d1f9      	bne.n	800638a <__multiply+0x132>
 8006396:	9800      	ldr	r0, [sp, #0]
 8006398:	f8c0 8010 	str.w	r8, [r0, #16]
 800639c:	b003      	add	sp, #12
 800639e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80063a2:	bf00      	nop

080063a4 <__pow5mult>:
 80063a4:	f012 0303 	ands.w	r3, r2, #3
 80063a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80063ac:	4614      	mov	r4, r2
 80063ae:	4607      	mov	r7, r0
 80063b0:	d12e      	bne.n	8006410 <__pow5mult+0x6c>
 80063b2:	460d      	mov	r5, r1
 80063b4:	10a4      	asrs	r4, r4, #2
 80063b6:	d01c      	beq.n	80063f2 <__pow5mult+0x4e>
 80063b8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80063ba:	b396      	cbz	r6, 8006422 <__pow5mult+0x7e>
 80063bc:	07e3      	lsls	r3, r4, #31
 80063be:	f04f 0800 	mov.w	r8, #0
 80063c2:	d406      	bmi.n	80063d2 <__pow5mult+0x2e>
 80063c4:	1064      	asrs	r4, r4, #1
 80063c6:	d014      	beq.n	80063f2 <__pow5mult+0x4e>
 80063c8:	6830      	ldr	r0, [r6, #0]
 80063ca:	b1a8      	cbz	r0, 80063f8 <__pow5mult+0x54>
 80063cc:	4606      	mov	r6, r0
 80063ce:	07e3      	lsls	r3, r4, #31
 80063d0:	d5f8      	bpl.n	80063c4 <__pow5mult+0x20>
 80063d2:	4632      	mov	r2, r6
 80063d4:	4629      	mov	r1, r5
 80063d6:	4638      	mov	r0, r7
 80063d8:	f7ff ff3e 	bl	8006258 <__multiply>
 80063dc:	b1b5      	cbz	r5, 800640c <__pow5mult+0x68>
 80063de:	686a      	ldr	r2, [r5, #4]
 80063e0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80063e2:	1064      	asrs	r4, r4, #1
 80063e4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80063e8:	6029      	str	r1, [r5, #0]
 80063ea:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80063ee:	4605      	mov	r5, r0
 80063f0:	d1ea      	bne.n	80063c8 <__pow5mult+0x24>
 80063f2:	4628      	mov	r0, r5
 80063f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80063f8:	4632      	mov	r2, r6
 80063fa:	4631      	mov	r1, r6
 80063fc:	4638      	mov	r0, r7
 80063fe:	f7ff ff2b 	bl	8006258 <__multiply>
 8006402:	6030      	str	r0, [r6, #0]
 8006404:	f8c0 8000 	str.w	r8, [r0]
 8006408:	4606      	mov	r6, r0
 800640a:	e7e0      	b.n	80063ce <__pow5mult+0x2a>
 800640c:	4605      	mov	r5, r0
 800640e:	e7d9      	b.n	80063c4 <__pow5mult+0x20>
 8006410:	3b01      	subs	r3, #1
 8006412:	4a0b      	ldr	r2, [pc, #44]	; (8006440 <__pow5mult+0x9c>)
 8006414:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006418:	2300      	movs	r3, #0
 800641a:	f7ff fe83 	bl	8006124 <__multadd>
 800641e:	4605      	mov	r5, r0
 8006420:	e7c8      	b.n	80063b4 <__pow5mult+0x10>
 8006422:	2101      	movs	r1, #1
 8006424:	4638      	mov	r0, r7
 8006426:	f7ff fe4d 	bl	80060c4 <_Balloc>
 800642a:	f240 2371 	movw	r3, #625	; 0x271
 800642e:	6143      	str	r3, [r0, #20]
 8006430:	2201      	movs	r2, #1
 8006432:	2300      	movs	r3, #0
 8006434:	6102      	str	r2, [r0, #16]
 8006436:	4606      	mov	r6, r0
 8006438:	64b8      	str	r0, [r7, #72]	; 0x48
 800643a:	6003      	str	r3, [r0, #0]
 800643c:	e7be      	b.n	80063bc <__pow5mult+0x18>
 800643e:	bf00      	nop
 8006440:	08007428 	.word	0x08007428

08006444 <__lshift>:
 8006444:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006448:	4691      	mov	r9, r2
 800644a:	690a      	ldr	r2, [r1, #16]
 800644c:	460e      	mov	r6, r1
 800644e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006452:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006456:	eb04 0802 	add.w	r8, r4, r2
 800645a:	f108 0501 	add.w	r5, r8, #1
 800645e:	429d      	cmp	r5, r3
 8006460:	4607      	mov	r7, r0
 8006462:	dd04      	ble.n	800646e <__lshift+0x2a>
 8006464:	005b      	lsls	r3, r3, #1
 8006466:	429d      	cmp	r5, r3
 8006468:	f101 0101 	add.w	r1, r1, #1
 800646c:	dcfa      	bgt.n	8006464 <__lshift+0x20>
 800646e:	4638      	mov	r0, r7
 8006470:	f7ff fe28 	bl	80060c4 <_Balloc>
 8006474:	2c00      	cmp	r4, #0
 8006476:	f100 0314 	add.w	r3, r0, #20
 800647a:	dd37      	ble.n	80064ec <__lshift+0xa8>
 800647c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006480:	2200      	movs	r2, #0
 8006482:	f843 2b04 	str.w	r2, [r3], #4
 8006486:	428b      	cmp	r3, r1
 8006488:	d1fb      	bne.n	8006482 <__lshift+0x3e>
 800648a:	6934      	ldr	r4, [r6, #16]
 800648c:	f106 0314 	add.w	r3, r6, #20
 8006490:	f019 091f 	ands.w	r9, r9, #31
 8006494:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006498:	d020      	beq.n	80064dc <__lshift+0x98>
 800649a:	f1c9 0e20 	rsb	lr, r9, #32
 800649e:	2200      	movs	r2, #0
 80064a0:	e000      	b.n	80064a4 <__lshift+0x60>
 80064a2:	4651      	mov	r1, sl
 80064a4:	681c      	ldr	r4, [r3, #0]
 80064a6:	468a      	mov	sl, r1
 80064a8:	fa04 f409 	lsl.w	r4, r4, r9
 80064ac:	4314      	orrs	r4, r2
 80064ae:	f84a 4b04 	str.w	r4, [sl], #4
 80064b2:	f853 2b04 	ldr.w	r2, [r3], #4
 80064b6:	4563      	cmp	r3, ip
 80064b8:	fa22 f20e 	lsr.w	r2, r2, lr
 80064bc:	d3f1      	bcc.n	80064a2 <__lshift+0x5e>
 80064be:	604a      	str	r2, [r1, #4]
 80064c0:	b10a      	cbz	r2, 80064c6 <__lshift+0x82>
 80064c2:	f108 0502 	add.w	r5, r8, #2
 80064c6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80064c8:	6872      	ldr	r2, [r6, #4]
 80064ca:	3d01      	subs	r5, #1
 80064cc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80064d0:	6105      	str	r5, [r0, #16]
 80064d2:	6031      	str	r1, [r6, #0]
 80064d4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80064d8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80064dc:	3904      	subs	r1, #4
 80064de:	f853 2b04 	ldr.w	r2, [r3], #4
 80064e2:	f841 2f04 	str.w	r2, [r1, #4]!
 80064e6:	459c      	cmp	ip, r3
 80064e8:	d8f9      	bhi.n	80064de <__lshift+0x9a>
 80064ea:	e7ec      	b.n	80064c6 <__lshift+0x82>
 80064ec:	4619      	mov	r1, r3
 80064ee:	e7cc      	b.n	800648a <__lshift+0x46>

080064f0 <__mcmp>:
 80064f0:	b430      	push	{r4, r5}
 80064f2:	690b      	ldr	r3, [r1, #16]
 80064f4:	4605      	mov	r5, r0
 80064f6:	6900      	ldr	r0, [r0, #16]
 80064f8:	1ac0      	subs	r0, r0, r3
 80064fa:	d10f      	bne.n	800651c <__mcmp+0x2c>
 80064fc:	009b      	lsls	r3, r3, #2
 80064fe:	3514      	adds	r5, #20
 8006500:	3114      	adds	r1, #20
 8006502:	4419      	add	r1, r3
 8006504:	442b      	add	r3, r5
 8006506:	e001      	b.n	800650c <__mcmp+0x1c>
 8006508:	429d      	cmp	r5, r3
 800650a:	d207      	bcs.n	800651c <__mcmp+0x2c>
 800650c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006510:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006514:	4294      	cmp	r4, r2
 8006516:	d0f7      	beq.n	8006508 <__mcmp+0x18>
 8006518:	d302      	bcc.n	8006520 <__mcmp+0x30>
 800651a:	2001      	movs	r0, #1
 800651c:	bc30      	pop	{r4, r5}
 800651e:	4770      	bx	lr
 8006520:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006524:	e7fa      	b.n	800651c <__mcmp+0x2c>
 8006526:	bf00      	nop

08006528 <__mdiff>:
 8006528:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800652c:	6913      	ldr	r3, [r2, #16]
 800652e:	690d      	ldr	r5, [r1, #16]
 8006530:	1aed      	subs	r5, r5, r3
 8006532:	2d00      	cmp	r5, #0
 8006534:	460e      	mov	r6, r1
 8006536:	4690      	mov	r8, r2
 8006538:	f101 0414 	add.w	r4, r1, #20
 800653c:	f102 0714 	add.w	r7, r2, #20
 8006540:	d114      	bne.n	800656c <__mdiff+0x44>
 8006542:	009b      	lsls	r3, r3, #2
 8006544:	18e2      	adds	r2, r4, r3
 8006546:	443b      	add	r3, r7
 8006548:	e001      	b.n	800654e <__mdiff+0x26>
 800654a:	42a2      	cmp	r2, r4
 800654c:	d959      	bls.n	8006602 <__mdiff+0xda>
 800654e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006552:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006556:	458c      	cmp	ip, r1
 8006558:	d0f7      	beq.n	800654a <__mdiff+0x22>
 800655a:	d209      	bcs.n	8006570 <__mdiff+0x48>
 800655c:	4622      	mov	r2, r4
 800655e:	4633      	mov	r3, r6
 8006560:	463c      	mov	r4, r7
 8006562:	4646      	mov	r6, r8
 8006564:	4617      	mov	r7, r2
 8006566:	4698      	mov	r8, r3
 8006568:	2501      	movs	r5, #1
 800656a:	e001      	b.n	8006570 <__mdiff+0x48>
 800656c:	dbf6      	blt.n	800655c <__mdiff+0x34>
 800656e:	2500      	movs	r5, #0
 8006570:	6871      	ldr	r1, [r6, #4]
 8006572:	f7ff fda7 	bl	80060c4 <_Balloc>
 8006576:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800657a:	6936      	ldr	r6, [r6, #16]
 800657c:	60c5      	str	r5, [r0, #12]
 800657e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006582:	46bc      	mov	ip, r7
 8006584:	f100 0514 	add.w	r5, r0, #20
 8006588:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800658c:	2300      	movs	r3, #0
 800658e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006592:	f854 8b04 	ldr.w	r8, [r4], #4
 8006596:	b28a      	uxth	r2, r1
 8006598:	fa13 f388 	uxtah	r3, r3, r8
 800659c:	0c09      	lsrs	r1, r1, #16
 800659e:	1a9a      	subs	r2, r3, r2
 80065a0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80065a4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80065a8:	b292      	uxth	r2, r2
 80065aa:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80065ae:	45e6      	cmp	lr, ip
 80065b0:	f845 2b04 	str.w	r2, [r5], #4
 80065b4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80065b8:	d8e9      	bhi.n	800658e <__mdiff+0x66>
 80065ba:	42a7      	cmp	r7, r4
 80065bc:	d917      	bls.n	80065ee <__mdiff+0xc6>
 80065be:	46ae      	mov	lr, r5
 80065c0:	46a4      	mov	ip, r4
 80065c2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80065c6:	fa13 f382 	uxtah	r3, r3, r2
 80065ca:	1419      	asrs	r1, r3, #16
 80065cc:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80065d0:	b29b      	uxth	r3, r3
 80065d2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80065d6:	4567      	cmp	r7, ip
 80065d8:	f84e 2b04 	str.w	r2, [lr], #4
 80065dc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80065e0:	d8ef      	bhi.n	80065c2 <__mdiff+0x9a>
 80065e2:	43e4      	mvns	r4, r4
 80065e4:	4427      	add	r7, r4
 80065e6:	f027 0703 	bic.w	r7, r7, #3
 80065ea:	3704      	adds	r7, #4
 80065ec:	443d      	add	r5, r7
 80065ee:	3d04      	subs	r5, #4
 80065f0:	b922      	cbnz	r2, 80065fc <__mdiff+0xd4>
 80065f2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80065f6:	3e01      	subs	r6, #1
 80065f8:	2b00      	cmp	r3, #0
 80065fa:	d0fa      	beq.n	80065f2 <__mdiff+0xca>
 80065fc:	6106      	str	r6, [r0, #16]
 80065fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006602:	2100      	movs	r1, #0
 8006604:	f7ff fd5e 	bl	80060c4 <_Balloc>
 8006608:	2201      	movs	r2, #1
 800660a:	2300      	movs	r3, #0
 800660c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006610:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006614 <__d2b>:
 8006614:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006618:	460f      	mov	r7, r1
 800661a:	b083      	sub	sp, #12
 800661c:	2101      	movs	r1, #1
 800661e:	ec55 4b10 	vmov	r4, r5, d0
 8006622:	4616      	mov	r6, r2
 8006624:	f7ff fd4e 	bl	80060c4 <_Balloc>
 8006628:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800662c:	4681      	mov	r9, r0
 800662e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006632:	f1b8 0f00 	cmp.w	r8, #0
 8006636:	d001      	beq.n	800663c <__d2b+0x28>
 8006638:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800663c:	2c00      	cmp	r4, #0
 800663e:	9301      	str	r3, [sp, #4]
 8006640:	d024      	beq.n	800668c <__d2b+0x78>
 8006642:	a802      	add	r0, sp, #8
 8006644:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006648:	f7ff fdcc 	bl	80061e4 <__lo0bits>
 800664c:	2800      	cmp	r0, #0
 800664e:	d136      	bne.n	80066be <__d2b+0xaa>
 8006650:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006654:	f8c9 2014 	str.w	r2, [r9, #20]
 8006658:	2b00      	cmp	r3, #0
 800665a:	bf0c      	ite	eq
 800665c:	2101      	moveq	r1, #1
 800665e:	2102      	movne	r1, #2
 8006660:	f8c9 3018 	str.w	r3, [r9, #24]
 8006664:	f8c9 1010 	str.w	r1, [r9, #16]
 8006668:	f1b8 0f00 	cmp.w	r8, #0
 800666c:	d11b      	bne.n	80066a6 <__d2b+0x92>
 800666e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006672:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006676:	6038      	str	r0, [r7, #0]
 8006678:	6918      	ldr	r0, [r3, #16]
 800667a:	f7ff fd93 	bl	80061a4 <__hi0bits>
 800667e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006682:	6030      	str	r0, [r6, #0]
 8006684:	4648      	mov	r0, r9
 8006686:	b003      	add	sp, #12
 8006688:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800668c:	a801      	add	r0, sp, #4
 800668e:	f7ff fda9 	bl	80061e4 <__lo0bits>
 8006692:	9b01      	ldr	r3, [sp, #4]
 8006694:	f8c9 3014 	str.w	r3, [r9, #20]
 8006698:	2101      	movs	r1, #1
 800669a:	3020      	adds	r0, #32
 800669c:	f8c9 1010 	str.w	r1, [r9, #16]
 80066a0:	f1b8 0f00 	cmp.w	r8, #0
 80066a4:	d0e3      	beq.n	800666e <__d2b+0x5a>
 80066a6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80066aa:	eb08 0300 	add.w	r3, r8, r0
 80066ae:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80066b2:	603b      	str	r3, [r7, #0]
 80066b4:	6030      	str	r0, [r6, #0]
 80066b6:	4648      	mov	r0, r9
 80066b8:	b003      	add	sp, #12
 80066ba:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80066be:	e9dd 1300 	ldrd	r1, r3, [sp]
 80066c2:	f1c0 0220 	rsb	r2, r0, #32
 80066c6:	fa03 f202 	lsl.w	r2, r3, r2
 80066ca:	430a      	orrs	r2, r1
 80066cc:	40c3      	lsrs	r3, r0
 80066ce:	9301      	str	r3, [sp, #4]
 80066d0:	f8c9 2014 	str.w	r2, [r9, #20]
 80066d4:	e7c0      	b.n	8006658 <__d2b+0x44>
 80066d6:	bf00      	nop

080066d8 <_realloc_r>:
 80066d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066dc:	4692      	mov	sl, r2
 80066de:	b083      	sub	sp, #12
 80066e0:	2900      	cmp	r1, #0
 80066e2:	f000 80a1 	beq.w	8006828 <_realloc_r+0x150>
 80066e6:	460d      	mov	r5, r1
 80066e8:	4680      	mov	r8, r0
 80066ea:	f10a 040b 	add.w	r4, sl, #11
 80066ee:	f7ff fcdd 	bl	80060ac <__malloc_lock>
 80066f2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80066f6:	2c16      	cmp	r4, #22
 80066f8:	f022 0603 	bic.w	r6, r2, #3
 80066fc:	f1a5 0708 	sub.w	r7, r5, #8
 8006700:	d83e      	bhi.n	8006780 <_realloc_r+0xa8>
 8006702:	2410      	movs	r4, #16
 8006704:	4621      	mov	r1, r4
 8006706:	45a2      	cmp	sl, r4
 8006708:	d83f      	bhi.n	800678a <_realloc_r+0xb2>
 800670a:	428e      	cmp	r6, r1
 800670c:	eb07 0906 	add.w	r9, r7, r6
 8006710:	da74      	bge.n	80067fc <_realloc_r+0x124>
 8006712:	4bc7      	ldr	r3, [pc, #796]	; (8006a30 <_realloc_r+0x358>)
 8006714:	6898      	ldr	r0, [r3, #8]
 8006716:	4548      	cmp	r0, r9
 8006718:	f000 80aa 	beq.w	8006870 <_realloc_r+0x198>
 800671c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006720:	f020 0301 	bic.w	r3, r0, #1
 8006724:	444b      	add	r3, r9
 8006726:	685b      	ldr	r3, [r3, #4]
 8006728:	07db      	lsls	r3, r3, #31
 800672a:	f140 8083 	bpl.w	8006834 <_realloc_r+0x15c>
 800672e:	07d2      	lsls	r2, r2, #31
 8006730:	d534      	bpl.n	800679c <_realloc_r+0xc4>
 8006732:	4651      	mov	r1, sl
 8006734:	4640      	mov	r0, r8
 8006736:	f7ff f9b1 	bl	8005a9c <_malloc_r>
 800673a:	4682      	mov	sl, r0
 800673c:	b1e0      	cbz	r0, 8006778 <_realloc_r+0xa0>
 800673e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006742:	f023 0301 	bic.w	r3, r3, #1
 8006746:	443b      	add	r3, r7
 8006748:	f1a0 0208 	sub.w	r2, r0, #8
 800674c:	4293      	cmp	r3, r2
 800674e:	f000 80f9 	beq.w	8006944 <_realloc_r+0x26c>
 8006752:	1f32      	subs	r2, r6, #4
 8006754:	2a24      	cmp	r2, #36	; 0x24
 8006756:	f200 8107 	bhi.w	8006968 <_realloc_r+0x290>
 800675a:	2a13      	cmp	r2, #19
 800675c:	6829      	ldr	r1, [r5, #0]
 800675e:	f200 80e6 	bhi.w	800692e <_realloc_r+0x256>
 8006762:	4603      	mov	r3, r0
 8006764:	462a      	mov	r2, r5
 8006766:	6019      	str	r1, [r3, #0]
 8006768:	6851      	ldr	r1, [r2, #4]
 800676a:	6059      	str	r1, [r3, #4]
 800676c:	6892      	ldr	r2, [r2, #8]
 800676e:	609a      	str	r2, [r3, #8]
 8006770:	4629      	mov	r1, r5
 8006772:	4640      	mov	r0, r8
 8006774:	f7fe fe68 	bl	8005448 <_free_r>
 8006778:	4640      	mov	r0, r8
 800677a:	f7ff fc9d 	bl	80060b8 <__malloc_unlock>
 800677e:	e04f      	b.n	8006820 <_realloc_r+0x148>
 8006780:	f024 0407 	bic.w	r4, r4, #7
 8006784:	2c00      	cmp	r4, #0
 8006786:	4621      	mov	r1, r4
 8006788:	dabd      	bge.n	8006706 <_realloc_r+0x2e>
 800678a:	f04f 0a00 	mov.w	sl, #0
 800678e:	230c      	movs	r3, #12
 8006790:	4650      	mov	r0, sl
 8006792:	f8c8 3000 	str.w	r3, [r8]
 8006796:	b003      	add	sp, #12
 8006798:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800679c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80067a0:	eba7 0b03 	sub.w	fp, r7, r3
 80067a4:	f8db 2004 	ldr.w	r2, [fp, #4]
 80067a8:	f022 0203 	bic.w	r2, r2, #3
 80067ac:	18b3      	adds	r3, r6, r2
 80067ae:	428b      	cmp	r3, r1
 80067b0:	dbbf      	blt.n	8006732 <_realloc_r+0x5a>
 80067b2:	46da      	mov	sl, fp
 80067b4:	f8db 100c 	ldr.w	r1, [fp, #12]
 80067b8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80067bc:	1f32      	subs	r2, r6, #4
 80067be:	2a24      	cmp	r2, #36	; 0x24
 80067c0:	60c1      	str	r1, [r0, #12]
 80067c2:	eb0b 0903 	add.w	r9, fp, r3
 80067c6:	6088      	str	r0, [r1, #8]
 80067c8:	f200 80c6 	bhi.w	8006958 <_realloc_r+0x280>
 80067cc:	2a13      	cmp	r2, #19
 80067ce:	6829      	ldr	r1, [r5, #0]
 80067d0:	f240 80c0 	bls.w	8006954 <_realloc_r+0x27c>
 80067d4:	f8cb 1008 	str.w	r1, [fp, #8]
 80067d8:	6869      	ldr	r1, [r5, #4]
 80067da:	f8cb 100c 	str.w	r1, [fp, #12]
 80067de:	2a1b      	cmp	r2, #27
 80067e0:	68a9      	ldr	r1, [r5, #8]
 80067e2:	f200 80d8 	bhi.w	8006996 <_realloc_r+0x2be>
 80067e6:	f10b 0210 	add.w	r2, fp, #16
 80067ea:	3508      	adds	r5, #8
 80067ec:	6011      	str	r1, [r2, #0]
 80067ee:	6869      	ldr	r1, [r5, #4]
 80067f0:	6051      	str	r1, [r2, #4]
 80067f2:	68a9      	ldr	r1, [r5, #8]
 80067f4:	6091      	str	r1, [r2, #8]
 80067f6:	461e      	mov	r6, r3
 80067f8:	465f      	mov	r7, fp
 80067fa:	4655      	mov	r5, sl
 80067fc:	687b      	ldr	r3, [r7, #4]
 80067fe:	1b32      	subs	r2, r6, r4
 8006800:	2a0f      	cmp	r2, #15
 8006802:	f003 0301 	and.w	r3, r3, #1
 8006806:	d822      	bhi.n	800684e <_realloc_r+0x176>
 8006808:	4333      	orrs	r3, r6
 800680a:	607b      	str	r3, [r7, #4]
 800680c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006810:	f043 0301 	orr.w	r3, r3, #1
 8006814:	f8c9 3004 	str.w	r3, [r9, #4]
 8006818:	4640      	mov	r0, r8
 800681a:	f7ff fc4d 	bl	80060b8 <__malloc_unlock>
 800681e:	46aa      	mov	sl, r5
 8006820:	4650      	mov	r0, sl
 8006822:	b003      	add	sp, #12
 8006824:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006828:	4611      	mov	r1, r2
 800682a:	b003      	add	sp, #12
 800682c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006830:	f7ff b934 	b.w	8005a9c <_malloc_r>
 8006834:	f020 0003 	bic.w	r0, r0, #3
 8006838:	1833      	adds	r3, r6, r0
 800683a:	428b      	cmp	r3, r1
 800683c:	db61      	blt.n	8006902 <_realloc_r+0x22a>
 800683e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006842:	461e      	mov	r6, r3
 8006844:	60ca      	str	r2, [r1, #12]
 8006846:	eb07 0903 	add.w	r9, r7, r3
 800684a:	6091      	str	r1, [r2, #8]
 800684c:	e7d6      	b.n	80067fc <_realloc_r+0x124>
 800684e:	1939      	adds	r1, r7, r4
 8006850:	4323      	orrs	r3, r4
 8006852:	f042 0201 	orr.w	r2, r2, #1
 8006856:	607b      	str	r3, [r7, #4]
 8006858:	604a      	str	r2, [r1, #4]
 800685a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800685e:	f043 0301 	orr.w	r3, r3, #1
 8006862:	3108      	adds	r1, #8
 8006864:	f8c9 3004 	str.w	r3, [r9, #4]
 8006868:	4640      	mov	r0, r8
 800686a:	f7fe fded 	bl	8005448 <_free_r>
 800686e:	e7d3      	b.n	8006818 <_realloc_r+0x140>
 8006870:	6840      	ldr	r0, [r0, #4]
 8006872:	f020 0903 	bic.w	r9, r0, #3
 8006876:	44b1      	add	r9, r6
 8006878:	f104 0010 	add.w	r0, r4, #16
 800687c:	4581      	cmp	r9, r0
 800687e:	da77      	bge.n	8006970 <_realloc_r+0x298>
 8006880:	07d2      	lsls	r2, r2, #31
 8006882:	f53f af56 	bmi.w	8006732 <_realloc_r+0x5a>
 8006886:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800688a:	eba7 0b02 	sub.w	fp, r7, r2
 800688e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006892:	f022 0203 	bic.w	r2, r2, #3
 8006896:	4491      	add	r9, r2
 8006898:	4548      	cmp	r0, r9
 800689a:	dc87      	bgt.n	80067ac <_realloc_r+0xd4>
 800689c:	46da      	mov	sl, fp
 800689e:	f8db 100c 	ldr.w	r1, [fp, #12]
 80068a2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80068a6:	1f32      	subs	r2, r6, #4
 80068a8:	2a24      	cmp	r2, #36	; 0x24
 80068aa:	60c1      	str	r1, [r0, #12]
 80068ac:	6088      	str	r0, [r1, #8]
 80068ae:	f200 80a1 	bhi.w	80069f4 <_realloc_r+0x31c>
 80068b2:	2a13      	cmp	r2, #19
 80068b4:	6829      	ldr	r1, [r5, #0]
 80068b6:	f240 809b 	bls.w	80069f0 <_realloc_r+0x318>
 80068ba:	f8cb 1008 	str.w	r1, [fp, #8]
 80068be:	6869      	ldr	r1, [r5, #4]
 80068c0:	f8cb 100c 	str.w	r1, [fp, #12]
 80068c4:	2a1b      	cmp	r2, #27
 80068c6:	68a9      	ldr	r1, [r5, #8]
 80068c8:	f200 809b 	bhi.w	8006a02 <_realloc_r+0x32a>
 80068cc:	f10b 0210 	add.w	r2, fp, #16
 80068d0:	3508      	adds	r5, #8
 80068d2:	6011      	str	r1, [r2, #0]
 80068d4:	6869      	ldr	r1, [r5, #4]
 80068d6:	6051      	str	r1, [r2, #4]
 80068d8:	68a9      	ldr	r1, [r5, #8]
 80068da:	6091      	str	r1, [r2, #8]
 80068dc:	eb0b 0104 	add.w	r1, fp, r4
 80068e0:	eba9 0204 	sub.w	r2, r9, r4
 80068e4:	f042 0201 	orr.w	r2, r2, #1
 80068e8:	6099      	str	r1, [r3, #8]
 80068ea:	604a      	str	r2, [r1, #4]
 80068ec:	f8db 3004 	ldr.w	r3, [fp, #4]
 80068f0:	f003 0301 	and.w	r3, r3, #1
 80068f4:	431c      	orrs	r4, r3
 80068f6:	4640      	mov	r0, r8
 80068f8:	f8cb 4004 	str.w	r4, [fp, #4]
 80068fc:	f7ff fbdc 	bl	80060b8 <__malloc_unlock>
 8006900:	e78e      	b.n	8006820 <_realloc_r+0x148>
 8006902:	07d3      	lsls	r3, r2, #31
 8006904:	f53f af15 	bmi.w	8006732 <_realloc_r+0x5a>
 8006908:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800690c:	eba7 0b03 	sub.w	fp, r7, r3
 8006910:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006914:	f022 0203 	bic.w	r2, r2, #3
 8006918:	4410      	add	r0, r2
 800691a:	1983      	adds	r3, r0, r6
 800691c:	428b      	cmp	r3, r1
 800691e:	f6ff af45 	blt.w	80067ac <_realloc_r+0xd4>
 8006922:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006926:	46da      	mov	sl, fp
 8006928:	60ca      	str	r2, [r1, #12]
 800692a:	6091      	str	r1, [r2, #8]
 800692c:	e742      	b.n	80067b4 <_realloc_r+0xdc>
 800692e:	6001      	str	r1, [r0, #0]
 8006930:	686b      	ldr	r3, [r5, #4]
 8006932:	6043      	str	r3, [r0, #4]
 8006934:	2a1b      	cmp	r2, #27
 8006936:	d83a      	bhi.n	80069ae <_realloc_r+0x2d6>
 8006938:	f105 0208 	add.w	r2, r5, #8
 800693c:	f100 0308 	add.w	r3, r0, #8
 8006940:	68a9      	ldr	r1, [r5, #8]
 8006942:	e710      	b.n	8006766 <_realloc_r+0x8e>
 8006944:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006948:	f023 0303 	bic.w	r3, r3, #3
 800694c:	441e      	add	r6, r3
 800694e:	eb07 0906 	add.w	r9, r7, r6
 8006952:	e753      	b.n	80067fc <_realloc_r+0x124>
 8006954:	4652      	mov	r2, sl
 8006956:	e749      	b.n	80067ec <_realloc_r+0x114>
 8006958:	4629      	mov	r1, r5
 800695a:	4650      	mov	r0, sl
 800695c:	461e      	mov	r6, r3
 800695e:	465f      	mov	r7, fp
 8006960:	f7ff fb40 	bl	8005fe4 <memmove>
 8006964:	4655      	mov	r5, sl
 8006966:	e749      	b.n	80067fc <_realloc_r+0x124>
 8006968:	4629      	mov	r1, r5
 800696a:	f7ff fb3b 	bl	8005fe4 <memmove>
 800696e:	e6ff      	b.n	8006770 <_realloc_r+0x98>
 8006970:	4427      	add	r7, r4
 8006972:	eba9 0904 	sub.w	r9, r9, r4
 8006976:	f049 0201 	orr.w	r2, r9, #1
 800697a:	609f      	str	r7, [r3, #8]
 800697c:	607a      	str	r2, [r7, #4]
 800697e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006982:	f003 0301 	and.w	r3, r3, #1
 8006986:	431c      	orrs	r4, r3
 8006988:	4640      	mov	r0, r8
 800698a:	f845 4c04 	str.w	r4, [r5, #-4]
 800698e:	f7ff fb93 	bl	80060b8 <__malloc_unlock>
 8006992:	46aa      	mov	sl, r5
 8006994:	e744      	b.n	8006820 <_realloc_r+0x148>
 8006996:	f8cb 1010 	str.w	r1, [fp, #16]
 800699a:	68e9      	ldr	r1, [r5, #12]
 800699c:	f8cb 1014 	str.w	r1, [fp, #20]
 80069a0:	2a24      	cmp	r2, #36	; 0x24
 80069a2:	d010      	beq.n	80069c6 <_realloc_r+0x2ee>
 80069a4:	6929      	ldr	r1, [r5, #16]
 80069a6:	f10b 0218 	add.w	r2, fp, #24
 80069aa:	3510      	adds	r5, #16
 80069ac:	e71e      	b.n	80067ec <_realloc_r+0x114>
 80069ae:	68ab      	ldr	r3, [r5, #8]
 80069b0:	6083      	str	r3, [r0, #8]
 80069b2:	68eb      	ldr	r3, [r5, #12]
 80069b4:	60c3      	str	r3, [r0, #12]
 80069b6:	2a24      	cmp	r2, #36	; 0x24
 80069b8:	d010      	beq.n	80069dc <_realloc_r+0x304>
 80069ba:	f105 0210 	add.w	r2, r5, #16
 80069be:	f100 0310 	add.w	r3, r0, #16
 80069c2:	6929      	ldr	r1, [r5, #16]
 80069c4:	e6cf      	b.n	8006766 <_realloc_r+0x8e>
 80069c6:	692a      	ldr	r2, [r5, #16]
 80069c8:	f8cb 2018 	str.w	r2, [fp, #24]
 80069cc:	696a      	ldr	r2, [r5, #20]
 80069ce:	f8cb 201c 	str.w	r2, [fp, #28]
 80069d2:	69a9      	ldr	r1, [r5, #24]
 80069d4:	f10b 0220 	add.w	r2, fp, #32
 80069d8:	3518      	adds	r5, #24
 80069da:	e707      	b.n	80067ec <_realloc_r+0x114>
 80069dc:	692b      	ldr	r3, [r5, #16]
 80069de:	6103      	str	r3, [r0, #16]
 80069e0:	696b      	ldr	r3, [r5, #20]
 80069e2:	6143      	str	r3, [r0, #20]
 80069e4:	69a9      	ldr	r1, [r5, #24]
 80069e6:	f105 0218 	add.w	r2, r5, #24
 80069ea:	f100 0318 	add.w	r3, r0, #24
 80069ee:	e6ba      	b.n	8006766 <_realloc_r+0x8e>
 80069f0:	4652      	mov	r2, sl
 80069f2:	e76e      	b.n	80068d2 <_realloc_r+0x1fa>
 80069f4:	4629      	mov	r1, r5
 80069f6:	4650      	mov	r0, sl
 80069f8:	9301      	str	r3, [sp, #4]
 80069fa:	f7ff faf3 	bl	8005fe4 <memmove>
 80069fe:	9b01      	ldr	r3, [sp, #4]
 8006a00:	e76c      	b.n	80068dc <_realloc_r+0x204>
 8006a02:	f8cb 1010 	str.w	r1, [fp, #16]
 8006a06:	68e9      	ldr	r1, [r5, #12]
 8006a08:	f8cb 1014 	str.w	r1, [fp, #20]
 8006a0c:	2a24      	cmp	r2, #36	; 0x24
 8006a0e:	d004      	beq.n	8006a1a <_realloc_r+0x342>
 8006a10:	6929      	ldr	r1, [r5, #16]
 8006a12:	f10b 0218 	add.w	r2, fp, #24
 8006a16:	3510      	adds	r5, #16
 8006a18:	e75b      	b.n	80068d2 <_realloc_r+0x1fa>
 8006a1a:	692a      	ldr	r2, [r5, #16]
 8006a1c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006a20:	696a      	ldr	r2, [r5, #20]
 8006a22:	f8cb 201c 	str.w	r2, [fp, #28]
 8006a26:	69a9      	ldr	r1, [r5, #24]
 8006a28:	f10b 0220 	add.w	r2, fp, #32
 8006a2c:	3518      	adds	r5, #24
 8006a2e:	e750      	b.n	80068d2 <_realloc_r+0x1fa>
 8006a30:	2000044c 	.word	0x2000044c

08006a34 <frexp>:
 8006a34:	ec53 2b10 	vmov	r2, r3, d0
 8006a38:	b570      	push	{r4, r5, r6, lr}
 8006a3a:	4e16      	ldr	r6, [pc, #88]	; (8006a94 <frexp+0x60>)
 8006a3c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006a40:	2500      	movs	r5, #0
 8006a42:	42b1      	cmp	r1, r6
 8006a44:	4604      	mov	r4, r0
 8006a46:	6005      	str	r5, [r0, #0]
 8006a48:	dc21      	bgt.n	8006a8e <frexp+0x5a>
 8006a4a:	ee10 6a10 	vmov	r6, s0
 8006a4e:	430e      	orrs	r6, r1
 8006a50:	d01d      	beq.n	8006a8e <frexp+0x5a>
 8006a52:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006a56:	4618      	mov	r0, r3
 8006a58:	da0c      	bge.n	8006a74 <frexp+0x40>
 8006a5a:	4619      	mov	r1, r3
 8006a5c:	2200      	movs	r2, #0
 8006a5e:	ee10 0a10 	vmov	r0, s0
 8006a62:	4b0d      	ldr	r3, [pc, #52]	; (8006a98 <frexp+0x64>)
 8006a64:	f7fa f868 	bl	8000b38 <__aeabi_dmul>
 8006a68:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006a6c:	4602      	mov	r2, r0
 8006a6e:	4608      	mov	r0, r1
 8006a70:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006a74:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006a78:	1509      	asrs	r1, r1, #20
 8006a7a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006a7e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006a82:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006a86:	4429      	add	r1, r5
 8006a88:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006a8c:	6021      	str	r1, [r4, #0]
 8006a8e:	ec43 2b10 	vmov	d0, r2, r3
 8006a92:	bd70      	pop	{r4, r5, r6, pc}
 8006a94:	7fefffff 	.word	0x7fefffff
 8006a98:	43500000 	.word	0x43500000

08006a9c <_sbrk_r>:
 8006a9c:	b538      	push	{r3, r4, r5, lr}
 8006a9e:	4c07      	ldr	r4, [pc, #28]	; (8006abc <_sbrk_r+0x20>)
 8006aa0:	2300      	movs	r3, #0
 8006aa2:	4605      	mov	r5, r0
 8006aa4:	4608      	mov	r0, r1
 8006aa6:	6023      	str	r3, [r4, #0]
 8006aa8:	f7fb fc2c 	bl	8002304 <_sbrk>
 8006aac:	1c43      	adds	r3, r0, #1
 8006aae:	d000      	beq.n	8006ab2 <_sbrk_r+0x16>
 8006ab0:	bd38      	pop	{r3, r4, r5, pc}
 8006ab2:	6823      	ldr	r3, [r4, #0]
 8006ab4:	2b00      	cmp	r3, #0
 8006ab6:	d0fb      	beq.n	8006ab0 <_sbrk_r+0x14>
 8006ab8:	602b      	str	r3, [r5, #0]
 8006aba:	bd38      	pop	{r3, r4, r5, pc}
 8006abc:	20000bd4 	.word	0x20000bd4

08006ac0 <__sread>:
 8006ac0:	b510      	push	{r4, lr}
 8006ac2:	460c      	mov	r4, r1
 8006ac4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ac8:	f000 fabc 	bl	8007044 <_read_r>
 8006acc:	2800      	cmp	r0, #0
 8006ace:	db03      	blt.n	8006ad8 <__sread+0x18>
 8006ad0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006ad2:	4403      	add	r3, r0
 8006ad4:	6523      	str	r3, [r4, #80]	; 0x50
 8006ad6:	bd10      	pop	{r4, pc}
 8006ad8:	89a3      	ldrh	r3, [r4, #12]
 8006ada:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006ade:	81a3      	strh	r3, [r4, #12]
 8006ae0:	bd10      	pop	{r4, pc}
 8006ae2:	bf00      	nop

08006ae4 <__swrite>:
 8006ae4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006ae8:	4616      	mov	r6, r2
 8006aea:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006aee:	461f      	mov	r7, r3
 8006af0:	05d3      	lsls	r3, r2, #23
 8006af2:	460c      	mov	r4, r1
 8006af4:	4605      	mov	r5, r0
 8006af6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006afa:	d507      	bpl.n	8006b0c <__swrite+0x28>
 8006afc:	2200      	movs	r2, #0
 8006afe:	2302      	movs	r3, #2
 8006b00:	f000 fa74 	bl	8006fec <_lseek_r>
 8006b04:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006b08:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006b0c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006b10:	81a2      	strh	r2, [r4, #12]
 8006b12:	463b      	mov	r3, r7
 8006b14:	4632      	mov	r2, r6
 8006b16:	4628      	mov	r0, r5
 8006b18:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006b1c:	f000 b88c 	b.w	8006c38 <_write_r>

08006b20 <__sseek>:
 8006b20:	b510      	push	{r4, lr}
 8006b22:	460c      	mov	r4, r1
 8006b24:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b28:	f000 fa60 	bl	8006fec <_lseek_r>
 8006b2c:	89a3      	ldrh	r3, [r4, #12]
 8006b2e:	1c42      	adds	r2, r0, #1
 8006b30:	bf0e      	itee	eq
 8006b32:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006b36:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006b3a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006b3c:	81a3      	strh	r3, [r4, #12]
 8006b3e:	bd10      	pop	{r4, pc}

08006b40 <__sclose>:
 8006b40:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b44:	f000 b922 	b.w	8006d8c <_close_r>

08006b48 <strncpy>:
 8006b48:	ea40 0301 	orr.w	r3, r0, r1
 8006b4c:	079b      	lsls	r3, r3, #30
 8006b4e:	b470      	push	{r4, r5, r6}
 8006b50:	d12a      	bne.n	8006ba8 <strncpy+0x60>
 8006b52:	2a03      	cmp	r2, #3
 8006b54:	d928      	bls.n	8006ba8 <strncpy+0x60>
 8006b56:	460c      	mov	r4, r1
 8006b58:	4603      	mov	r3, r0
 8006b5a:	4621      	mov	r1, r4
 8006b5c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006b60:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006b64:	ea25 0506 	bic.w	r5, r5, r6
 8006b68:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006b6c:	d106      	bne.n	8006b7c <strncpy+0x34>
 8006b6e:	3a04      	subs	r2, #4
 8006b70:	2a03      	cmp	r2, #3
 8006b72:	f843 6b04 	str.w	r6, [r3], #4
 8006b76:	4621      	mov	r1, r4
 8006b78:	d8ef      	bhi.n	8006b5a <strncpy+0x12>
 8006b7a:	b19a      	cbz	r2, 8006ba4 <strncpy+0x5c>
 8006b7c:	780c      	ldrb	r4, [r1, #0]
 8006b7e:	701c      	strb	r4, [r3, #0]
 8006b80:	3a01      	subs	r2, #1
 8006b82:	3301      	adds	r3, #1
 8006b84:	b13c      	cbz	r4, 8006b96 <strncpy+0x4e>
 8006b86:	b16a      	cbz	r2, 8006ba4 <strncpy+0x5c>
 8006b88:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006b8c:	f803 4b01 	strb.w	r4, [r3], #1
 8006b90:	3a01      	subs	r2, #1
 8006b92:	2c00      	cmp	r4, #0
 8006b94:	d1f7      	bne.n	8006b86 <strncpy+0x3e>
 8006b96:	b12a      	cbz	r2, 8006ba4 <strncpy+0x5c>
 8006b98:	441a      	add	r2, r3
 8006b9a:	2100      	movs	r1, #0
 8006b9c:	f803 1b01 	strb.w	r1, [r3], #1
 8006ba0:	4293      	cmp	r3, r2
 8006ba2:	d1fb      	bne.n	8006b9c <strncpy+0x54>
 8006ba4:	bc70      	pop	{r4, r5, r6}
 8006ba6:	4770      	bx	lr
 8006ba8:	4603      	mov	r3, r0
 8006baa:	e7e6      	b.n	8006b7a <strncpy+0x32>

08006bac <__sprint_r.part.0>:
 8006bac:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006bb0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006bb2:	049c      	lsls	r4, r3, #18
 8006bb4:	4692      	mov	sl, r2
 8006bb6:	d52d      	bpl.n	8006c14 <__sprint_r.part.0+0x68>
 8006bb8:	6893      	ldr	r3, [r2, #8]
 8006bba:	6812      	ldr	r2, [r2, #0]
 8006bbc:	b343      	cbz	r3, 8006c10 <__sprint_r.part.0+0x64>
 8006bbe:	460e      	mov	r6, r1
 8006bc0:	4607      	mov	r7, r0
 8006bc2:	f102 0908 	add.w	r9, r2, #8
 8006bc6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006bca:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006bce:	d015      	beq.n	8006bfc <__sprint_r.part.0+0x50>
 8006bd0:	3d04      	subs	r5, #4
 8006bd2:	2400      	movs	r4, #0
 8006bd4:	e001      	b.n	8006bda <__sprint_r.part.0+0x2e>
 8006bd6:	45a0      	cmp	r8, r4
 8006bd8:	d00e      	beq.n	8006bf8 <__sprint_r.part.0+0x4c>
 8006bda:	4632      	mov	r2, r6
 8006bdc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006be0:	4638      	mov	r0, r7
 8006be2:	f000 f99d 	bl	8006f20 <_fputwc_r>
 8006be6:	1c43      	adds	r3, r0, #1
 8006be8:	f104 0401 	add.w	r4, r4, #1
 8006bec:	d1f3      	bne.n	8006bd6 <__sprint_r.part.0+0x2a>
 8006bee:	2300      	movs	r3, #0
 8006bf0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006bf4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006bf8:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006bfc:	f02b 0b03 	bic.w	fp, fp, #3
 8006c00:	eba3 030b 	sub.w	r3, r3, fp
 8006c04:	f8ca 3008 	str.w	r3, [sl, #8]
 8006c08:	f109 0908 	add.w	r9, r9, #8
 8006c0c:	2b00      	cmp	r3, #0
 8006c0e:	d1da      	bne.n	8006bc6 <__sprint_r.part.0+0x1a>
 8006c10:	2000      	movs	r0, #0
 8006c12:	e7ec      	b.n	8006bee <__sprint_r.part.0+0x42>
 8006c14:	f7fe fd0c 	bl	8005630 <__sfvwrite_r>
 8006c18:	2300      	movs	r3, #0
 8006c1a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006c1e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c22:	bf00      	nop

08006c24 <__sprint_r>:
 8006c24:	6893      	ldr	r3, [r2, #8]
 8006c26:	b10b      	cbz	r3, 8006c2c <__sprint_r+0x8>
 8006c28:	f7ff bfc0 	b.w	8006bac <__sprint_r.part.0>
 8006c2c:	b410      	push	{r4}
 8006c2e:	4618      	mov	r0, r3
 8006c30:	6053      	str	r3, [r2, #4]
 8006c32:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006c36:	4770      	bx	lr

08006c38 <_write_r>:
 8006c38:	b570      	push	{r4, r5, r6, lr}
 8006c3a:	460d      	mov	r5, r1
 8006c3c:	4c08      	ldr	r4, [pc, #32]	; (8006c60 <_write_r+0x28>)
 8006c3e:	4611      	mov	r1, r2
 8006c40:	4606      	mov	r6, r0
 8006c42:	461a      	mov	r2, r3
 8006c44:	4628      	mov	r0, r5
 8006c46:	2300      	movs	r3, #0
 8006c48:	6023      	str	r3, [r4, #0]
 8006c4a:	f7fb fb3d 	bl	80022c8 <_write>
 8006c4e:	1c43      	adds	r3, r0, #1
 8006c50:	d000      	beq.n	8006c54 <_write_r+0x1c>
 8006c52:	bd70      	pop	{r4, r5, r6, pc}
 8006c54:	6823      	ldr	r3, [r4, #0]
 8006c56:	2b00      	cmp	r3, #0
 8006c58:	d0fb      	beq.n	8006c52 <_write_r+0x1a>
 8006c5a:	6033      	str	r3, [r6, #0]
 8006c5c:	bd70      	pop	{r4, r5, r6, pc}
 8006c5e:	bf00      	nop
 8006c60:	20000bd4 	.word	0x20000bd4

08006c64 <__register_exitproc>:
 8006c64:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006c68:	4d2b      	ldr	r5, [pc, #172]	; (8006d18 <__register_exitproc+0xb4>)
 8006c6a:	4606      	mov	r6, r0
 8006c6c:	6828      	ldr	r0, [r5, #0]
 8006c6e:	4698      	mov	r8, r3
 8006c70:	460f      	mov	r7, r1
 8006c72:	4691      	mov	r9, r2
 8006c74:	f7fe fe96 	bl	80059a4 <__retarget_lock_acquire_recursive>
 8006c78:	4b28      	ldr	r3, [pc, #160]	; (8006d1c <__register_exitproc+0xb8>)
 8006c7a:	681c      	ldr	r4, [r3, #0]
 8006c7c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006c80:	2b00      	cmp	r3, #0
 8006c82:	d03d      	beq.n	8006d00 <__register_exitproc+0x9c>
 8006c84:	685a      	ldr	r2, [r3, #4]
 8006c86:	2a1f      	cmp	r2, #31
 8006c88:	dc0d      	bgt.n	8006ca6 <__register_exitproc+0x42>
 8006c8a:	f102 0c01 	add.w	ip, r2, #1
 8006c8e:	bb16      	cbnz	r6, 8006cd6 <__register_exitproc+0x72>
 8006c90:	3202      	adds	r2, #2
 8006c92:	f8c3 c004 	str.w	ip, [r3, #4]
 8006c96:	6828      	ldr	r0, [r5, #0]
 8006c98:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006c9c:	f7fe fe84 	bl	80059a8 <__retarget_lock_release_recursive>
 8006ca0:	2000      	movs	r0, #0
 8006ca2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006ca6:	4b1e      	ldr	r3, [pc, #120]	; (8006d20 <__register_exitproc+0xbc>)
 8006ca8:	b37b      	cbz	r3, 8006d0a <__register_exitproc+0xa6>
 8006caa:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006cae:	f3af 8000 	nop.w
 8006cb2:	4603      	mov	r3, r0
 8006cb4:	b348      	cbz	r0, 8006d0a <__register_exitproc+0xa6>
 8006cb6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006cba:	2100      	movs	r1, #0
 8006cbc:	e9c0 2100 	strd	r2, r1, [r0]
 8006cc0:	f04f 0c01 	mov.w	ip, #1
 8006cc4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006cc8:	460a      	mov	r2, r1
 8006cca:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006cce:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006cd2:	2e00      	cmp	r6, #0
 8006cd4:	d0dc      	beq.n	8006c90 <__register_exitproc+0x2c>
 8006cd6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006cda:	2401      	movs	r4, #1
 8006cdc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006ce0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006ce4:	4094      	lsls	r4, r2
 8006ce6:	4320      	orrs	r0, r4
 8006ce8:	2e02      	cmp	r6, #2
 8006cea:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006cee:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006cf2:	d1cd      	bne.n	8006c90 <__register_exitproc+0x2c>
 8006cf4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006cf8:	430c      	orrs	r4, r1
 8006cfa:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006cfe:	e7c7      	b.n	8006c90 <__register_exitproc+0x2c>
 8006d00:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006d04:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006d08:	e7bc      	b.n	8006c84 <__register_exitproc+0x20>
 8006d0a:	6828      	ldr	r0, [r5, #0]
 8006d0c:	f7fe fe4c 	bl	80059a8 <__retarget_lock_release_recursive>
 8006d10:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006d14:	e7c5      	b.n	8006ca2 <__register_exitproc+0x3e>
 8006d16:	bf00      	nop
 8006d18:	20000448 	.word	0x20000448
 8006d1c:	080072bc 	.word	0x080072bc
 8006d20:	00000000 	.word	0x00000000

08006d24 <_calloc_r>:
 8006d24:	b510      	push	{r4, lr}
 8006d26:	fb02 f101 	mul.w	r1, r2, r1
 8006d2a:	f7fe feb7 	bl	8005a9c <_malloc_r>
 8006d2e:	4604      	mov	r4, r0
 8006d30:	b1d8      	cbz	r0, 8006d6a <_calloc_r+0x46>
 8006d32:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006d36:	f022 0203 	bic.w	r2, r2, #3
 8006d3a:	3a04      	subs	r2, #4
 8006d3c:	2a24      	cmp	r2, #36	; 0x24
 8006d3e:	d81d      	bhi.n	8006d7c <_calloc_r+0x58>
 8006d40:	2a13      	cmp	r2, #19
 8006d42:	d914      	bls.n	8006d6e <_calloc_r+0x4a>
 8006d44:	2300      	movs	r3, #0
 8006d46:	2a1b      	cmp	r2, #27
 8006d48:	e9c0 3300 	strd	r3, r3, [r0]
 8006d4c:	d91b      	bls.n	8006d86 <_calloc_r+0x62>
 8006d4e:	2a24      	cmp	r2, #36	; 0x24
 8006d50:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006d54:	bf0a      	itet	eq
 8006d56:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006d5a:	f100 0210 	addne.w	r2, r0, #16
 8006d5e:	f100 0218 	addeq.w	r2, r0, #24
 8006d62:	2300      	movs	r3, #0
 8006d64:	e9c2 3300 	strd	r3, r3, [r2]
 8006d68:	6093      	str	r3, [r2, #8]
 8006d6a:	4620      	mov	r0, r4
 8006d6c:	bd10      	pop	{r4, pc}
 8006d6e:	4602      	mov	r2, r0
 8006d70:	2300      	movs	r3, #0
 8006d72:	e9c2 3300 	strd	r3, r3, [r2]
 8006d76:	6093      	str	r3, [r2, #8]
 8006d78:	4620      	mov	r0, r4
 8006d7a:	bd10      	pop	{r4, pc}
 8006d7c:	2100      	movs	r1, #0
 8006d7e:	f7fb fb6f 	bl	8002460 <memset>
 8006d82:	4620      	mov	r0, r4
 8006d84:	bd10      	pop	{r4, pc}
 8006d86:	f100 0208 	add.w	r2, r0, #8
 8006d8a:	e7f1      	b.n	8006d70 <_calloc_r+0x4c>

08006d8c <_close_r>:
 8006d8c:	b538      	push	{r3, r4, r5, lr}
 8006d8e:	4c07      	ldr	r4, [pc, #28]	; (8006dac <_close_r+0x20>)
 8006d90:	2300      	movs	r3, #0
 8006d92:	4605      	mov	r5, r0
 8006d94:	4608      	mov	r0, r1
 8006d96:	6023      	str	r3, [r4, #0]
 8006d98:	f7fb fad7 	bl	800234a <_close>
 8006d9c:	1c43      	adds	r3, r0, #1
 8006d9e:	d000      	beq.n	8006da2 <_close_r+0x16>
 8006da0:	bd38      	pop	{r3, r4, r5, pc}
 8006da2:	6823      	ldr	r3, [r4, #0]
 8006da4:	2b00      	cmp	r3, #0
 8006da6:	d0fb      	beq.n	8006da0 <_close_r+0x14>
 8006da8:	602b      	str	r3, [r5, #0]
 8006daa:	bd38      	pop	{r3, r4, r5, pc}
 8006dac:	20000bd4 	.word	0x20000bd4

08006db0 <_fclose_r>:
 8006db0:	b570      	push	{r4, r5, r6, lr}
 8006db2:	2900      	cmp	r1, #0
 8006db4:	d048      	beq.n	8006e48 <_fclose_r+0x98>
 8006db6:	4605      	mov	r5, r0
 8006db8:	460c      	mov	r4, r1
 8006dba:	b110      	cbz	r0, 8006dc2 <_fclose_r+0x12>
 8006dbc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006dbe:	2b00      	cmp	r3, #0
 8006dc0:	d048      	beq.n	8006e54 <_fclose_r+0xa4>
 8006dc2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006dc4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dc8:	07d0      	lsls	r0, r2, #31
 8006dca:	d440      	bmi.n	8006e4e <_fclose_r+0x9e>
 8006dcc:	0599      	lsls	r1, r3, #22
 8006dce:	d530      	bpl.n	8006e32 <_fclose_r+0x82>
 8006dd0:	4621      	mov	r1, r4
 8006dd2:	4628      	mov	r0, r5
 8006dd4:	f7fe f990 	bl	80050f8 <__sflush_r>
 8006dd8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006dda:	4606      	mov	r6, r0
 8006ddc:	b133      	cbz	r3, 8006dec <_fclose_r+0x3c>
 8006dde:	69e1      	ldr	r1, [r4, #28]
 8006de0:	4628      	mov	r0, r5
 8006de2:	4798      	blx	r3
 8006de4:	2800      	cmp	r0, #0
 8006de6:	bfb8      	it	lt
 8006de8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006dec:	89a3      	ldrh	r3, [r4, #12]
 8006dee:	061a      	lsls	r2, r3, #24
 8006df0:	d43c      	bmi.n	8006e6c <_fclose_r+0xbc>
 8006df2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006df4:	b141      	cbz	r1, 8006e08 <_fclose_r+0x58>
 8006df6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006dfa:	4299      	cmp	r1, r3
 8006dfc:	d002      	beq.n	8006e04 <_fclose_r+0x54>
 8006dfe:	4628      	mov	r0, r5
 8006e00:	f7fe fb22 	bl	8005448 <_free_r>
 8006e04:	2300      	movs	r3, #0
 8006e06:	6323      	str	r3, [r4, #48]	; 0x30
 8006e08:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006e0a:	b121      	cbz	r1, 8006e16 <_fclose_r+0x66>
 8006e0c:	4628      	mov	r0, r5
 8006e0e:	f7fe fb1b 	bl	8005448 <_free_r>
 8006e12:	2300      	movs	r3, #0
 8006e14:	6463      	str	r3, [r4, #68]	; 0x44
 8006e16:	f7fe faa1 	bl	800535c <__sfp_lock_acquire>
 8006e1a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006e1c:	2200      	movs	r2, #0
 8006e1e:	07db      	lsls	r3, r3, #31
 8006e20:	81a2      	strh	r2, [r4, #12]
 8006e22:	d51f      	bpl.n	8006e64 <_fclose_r+0xb4>
 8006e24:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e26:	f7fe fdbb 	bl	80059a0 <__retarget_lock_close_recursive>
 8006e2a:	f7fe fa9d 	bl	8005368 <__sfp_lock_release>
 8006e2e:	4630      	mov	r0, r6
 8006e30:	bd70      	pop	{r4, r5, r6, pc}
 8006e32:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e34:	f7fe fdb6 	bl	80059a4 <__retarget_lock_acquire_recursive>
 8006e38:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e3c:	2b00      	cmp	r3, #0
 8006e3e:	d1c7      	bne.n	8006dd0 <_fclose_r+0x20>
 8006e40:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006e42:	f016 0601 	ands.w	r6, r6, #1
 8006e46:	d016      	beq.n	8006e76 <_fclose_r+0xc6>
 8006e48:	2600      	movs	r6, #0
 8006e4a:	4630      	mov	r0, r6
 8006e4c:	bd70      	pop	{r4, r5, r6, pc}
 8006e4e:	2b00      	cmp	r3, #0
 8006e50:	d0fa      	beq.n	8006e48 <_fclose_r+0x98>
 8006e52:	e7bd      	b.n	8006dd0 <_fclose_r+0x20>
 8006e54:	f7fe fa56 	bl	8005304 <__sinit>
 8006e58:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006e5a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e5e:	07d0      	lsls	r0, r2, #31
 8006e60:	d4f5      	bmi.n	8006e4e <_fclose_r+0x9e>
 8006e62:	e7b3      	b.n	8006dcc <_fclose_r+0x1c>
 8006e64:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e66:	f7fe fd9f 	bl	80059a8 <__retarget_lock_release_recursive>
 8006e6a:	e7db      	b.n	8006e24 <_fclose_r+0x74>
 8006e6c:	6921      	ldr	r1, [r4, #16]
 8006e6e:	4628      	mov	r0, r5
 8006e70:	f7fe faea 	bl	8005448 <_free_r>
 8006e74:	e7bd      	b.n	8006df2 <_fclose_r+0x42>
 8006e76:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e78:	f7fe fd96 	bl	80059a8 <__retarget_lock_release_recursive>
 8006e7c:	4630      	mov	r0, r6
 8006e7e:	bd70      	pop	{r4, r5, r6, pc}

08006e80 <__fputwc>:
 8006e80:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006e84:	b082      	sub	sp, #8
 8006e86:	4681      	mov	r9, r0
 8006e88:	4688      	mov	r8, r1
 8006e8a:	4614      	mov	r4, r2
 8006e8c:	f000 f8a0 	bl	8006fd0 <__locale_mb_cur_max>
 8006e90:	2801      	cmp	r0, #1
 8006e92:	d103      	bne.n	8006e9c <__fputwc+0x1c>
 8006e94:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006e98:	2bfe      	cmp	r3, #254	; 0xfe
 8006e9a:	d933      	bls.n	8006f04 <__fputwc+0x84>
 8006e9c:	4642      	mov	r2, r8
 8006e9e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006ea2:	a901      	add	r1, sp, #4
 8006ea4:	4648      	mov	r0, r9
 8006ea6:	f000 f93b 	bl	8007120 <_wcrtomb_r>
 8006eaa:	1c42      	adds	r2, r0, #1
 8006eac:	4606      	mov	r6, r0
 8006eae:	d02f      	beq.n	8006f10 <__fputwc+0x90>
 8006eb0:	b320      	cbz	r0, 8006efc <__fputwc+0x7c>
 8006eb2:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006eb6:	2500      	movs	r5, #0
 8006eb8:	f10d 0a04 	add.w	sl, sp, #4
 8006ebc:	e009      	b.n	8006ed2 <__fputwc+0x52>
 8006ebe:	6823      	ldr	r3, [r4, #0]
 8006ec0:	1c5a      	adds	r2, r3, #1
 8006ec2:	6022      	str	r2, [r4, #0]
 8006ec4:	f883 c000 	strb.w	ip, [r3]
 8006ec8:	3501      	adds	r5, #1
 8006eca:	42b5      	cmp	r5, r6
 8006ecc:	d216      	bcs.n	8006efc <__fputwc+0x7c>
 8006ece:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006ed2:	68a3      	ldr	r3, [r4, #8]
 8006ed4:	3b01      	subs	r3, #1
 8006ed6:	2b00      	cmp	r3, #0
 8006ed8:	60a3      	str	r3, [r4, #8]
 8006eda:	daf0      	bge.n	8006ebe <__fputwc+0x3e>
 8006edc:	69a7      	ldr	r7, [r4, #24]
 8006ede:	42bb      	cmp	r3, r7
 8006ee0:	4661      	mov	r1, ip
 8006ee2:	4622      	mov	r2, r4
 8006ee4:	4648      	mov	r0, r9
 8006ee6:	db02      	blt.n	8006eee <__fputwc+0x6e>
 8006ee8:	f1bc 0f0a 	cmp.w	ip, #10
 8006eec:	d1e7      	bne.n	8006ebe <__fputwc+0x3e>
 8006eee:	f000 f8bf 	bl	8007070 <__swbuf_r>
 8006ef2:	1c43      	adds	r3, r0, #1
 8006ef4:	d1e8      	bne.n	8006ec8 <__fputwc+0x48>
 8006ef6:	b002      	add	sp, #8
 8006ef8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006efc:	4640      	mov	r0, r8
 8006efe:	b002      	add	sp, #8
 8006f00:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f04:	fa5f fc88 	uxtb.w	ip, r8
 8006f08:	4606      	mov	r6, r0
 8006f0a:	f88d c004 	strb.w	ip, [sp, #4]
 8006f0e:	e7d2      	b.n	8006eb6 <__fputwc+0x36>
 8006f10:	89a3      	ldrh	r3, [r4, #12]
 8006f12:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006f16:	81a3      	strh	r3, [r4, #12]
 8006f18:	b002      	add	sp, #8
 8006f1a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f1e:	bf00      	nop

08006f20 <_fputwc_r>:
 8006f20:	b530      	push	{r4, r5, lr}
 8006f22:	4605      	mov	r5, r0
 8006f24:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006f26:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006f2a:	07c0      	lsls	r0, r0, #31
 8006f2c:	4614      	mov	r4, r2
 8006f2e:	b083      	sub	sp, #12
 8006f30:	b29a      	uxth	r2, r3
 8006f32:	d401      	bmi.n	8006f38 <_fputwc_r+0x18>
 8006f34:	0590      	lsls	r0, r2, #22
 8006f36:	d51c      	bpl.n	8006f72 <_fputwc_r+0x52>
 8006f38:	0490      	lsls	r0, r2, #18
 8006f3a:	d406      	bmi.n	8006f4a <_fputwc_r+0x2a>
 8006f3c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f3e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006f42:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006f46:	81a3      	strh	r3, [r4, #12]
 8006f48:	6662      	str	r2, [r4, #100]	; 0x64
 8006f4a:	4628      	mov	r0, r5
 8006f4c:	4622      	mov	r2, r4
 8006f4e:	f7ff ff97 	bl	8006e80 <__fputwc>
 8006f52:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006f54:	07da      	lsls	r2, r3, #31
 8006f56:	4605      	mov	r5, r0
 8006f58:	d402      	bmi.n	8006f60 <_fputwc_r+0x40>
 8006f5a:	89a3      	ldrh	r3, [r4, #12]
 8006f5c:	059b      	lsls	r3, r3, #22
 8006f5e:	d502      	bpl.n	8006f66 <_fputwc_r+0x46>
 8006f60:	4628      	mov	r0, r5
 8006f62:	b003      	add	sp, #12
 8006f64:	bd30      	pop	{r4, r5, pc}
 8006f66:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f68:	f7fe fd1e 	bl	80059a8 <__retarget_lock_release_recursive>
 8006f6c:	4628      	mov	r0, r5
 8006f6e:	b003      	add	sp, #12
 8006f70:	bd30      	pop	{r4, r5, pc}
 8006f72:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f74:	9101      	str	r1, [sp, #4]
 8006f76:	f7fe fd15 	bl	80059a4 <__retarget_lock_acquire_recursive>
 8006f7a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f7e:	9901      	ldr	r1, [sp, #4]
 8006f80:	b29a      	uxth	r2, r3
 8006f82:	e7d9      	b.n	8006f38 <_fputwc_r+0x18>

08006f84 <_fstat_r>:
 8006f84:	b538      	push	{r3, r4, r5, lr}
 8006f86:	460b      	mov	r3, r1
 8006f88:	4c07      	ldr	r4, [pc, #28]	; (8006fa8 <_fstat_r+0x24>)
 8006f8a:	4605      	mov	r5, r0
 8006f8c:	4611      	mov	r1, r2
 8006f8e:	4618      	mov	r0, r3
 8006f90:	2300      	movs	r3, #0
 8006f92:	6023      	str	r3, [r4, #0]
 8006f94:	f7fb f9dc 	bl	8002350 <_fstat>
 8006f98:	1c43      	adds	r3, r0, #1
 8006f9a:	d000      	beq.n	8006f9e <_fstat_r+0x1a>
 8006f9c:	bd38      	pop	{r3, r4, r5, pc}
 8006f9e:	6823      	ldr	r3, [r4, #0]
 8006fa0:	2b00      	cmp	r3, #0
 8006fa2:	d0fb      	beq.n	8006f9c <_fstat_r+0x18>
 8006fa4:	602b      	str	r3, [r5, #0]
 8006fa6:	bd38      	pop	{r3, r4, r5, pc}
 8006fa8:	20000bd4 	.word	0x20000bd4

08006fac <_isatty_r>:
 8006fac:	b538      	push	{r3, r4, r5, lr}
 8006fae:	4c07      	ldr	r4, [pc, #28]	; (8006fcc <_isatty_r+0x20>)
 8006fb0:	2300      	movs	r3, #0
 8006fb2:	4605      	mov	r5, r0
 8006fb4:	4608      	mov	r0, r1
 8006fb6:	6023      	str	r3, [r4, #0]
 8006fb8:	f7fb f9d0 	bl	800235c <_isatty>
 8006fbc:	1c43      	adds	r3, r0, #1
 8006fbe:	d000      	beq.n	8006fc2 <_isatty_r+0x16>
 8006fc0:	bd38      	pop	{r3, r4, r5, pc}
 8006fc2:	6823      	ldr	r3, [r4, #0]
 8006fc4:	2b00      	cmp	r3, #0
 8006fc6:	d0fb      	beq.n	8006fc0 <_isatty_r+0x14>
 8006fc8:	602b      	str	r3, [r5, #0]
 8006fca:	bd38      	pop	{r3, r4, r5, pc}
 8006fcc:	20000bd4 	.word	0x20000bd4

08006fd0 <__locale_mb_cur_max>:
 8006fd0:	4b04      	ldr	r3, [pc, #16]	; (8006fe4 <__locale_mb_cur_max+0x14>)
 8006fd2:	4a05      	ldr	r2, [pc, #20]	; (8006fe8 <__locale_mb_cur_max+0x18>)
 8006fd4:	681b      	ldr	r3, [r3, #0]
 8006fd6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006fd8:	2b00      	cmp	r3, #0
 8006fda:	bf08      	it	eq
 8006fdc:	4613      	moveq	r3, r2
 8006fde:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006fe2:	4770      	bx	lr
 8006fe4:	20000018 	.word	0x20000018
 8006fe8:	2000085c 	.word	0x2000085c

08006fec <_lseek_r>:
 8006fec:	b570      	push	{r4, r5, r6, lr}
 8006fee:	460d      	mov	r5, r1
 8006ff0:	4c08      	ldr	r4, [pc, #32]	; (8007014 <_lseek_r+0x28>)
 8006ff2:	4611      	mov	r1, r2
 8006ff4:	4606      	mov	r6, r0
 8006ff6:	461a      	mov	r2, r3
 8006ff8:	4628      	mov	r0, r5
 8006ffa:	2300      	movs	r3, #0
 8006ffc:	6023      	str	r3, [r4, #0]
 8006ffe:	f7fb f9af 	bl	8002360 <_lseek>
 8007002:	1c43      	adds	r3, r0, #1
 8007004:	d000      	beq.n	8007008 <_lseek_r+0x1c>
 8007006:	bd70      	pop	{r4, r5, r6, pc}
 8007008:	6823      	ldr	r3, [r4, #0]
 800700a:	2b00      	cmp	r3, #0
 800700c:	d0fb      	beq.n	8007006 <_lseek_r+0x1a>
 800700e:	6033      	str	r3, [r6, #0]
 8007010:	bd70      	pop	{r4, r5, r6, pc}
 8007012:	bf00      	nop
 8007014:	20000bd4 	.word	0x20000bd4

08007018 <__ascii_mbtowc>:
 8007018:	b082      	sub	sp, #8
 800701a:	b149      	cbz	r1, 8007030 <__ascii_mbtowc+0x18>
 800701c:	b15a      	cbz	r2, 8007036 <__ascii_mbtowc+0x1e>
 800701e:	b16b      	cbz	r3, 800703c <__ascii_mbtowc+0x24>
 8007020:	7813      	ldrb	r3, [r2, #0]
 8007022:	600b      	str	r3, [r1, #0]
 8007024:	7812      	ldrb	r2, [r2, #0]
 8007026:	1c10      	adds	r0, r2, #0
 8007028:	bf18      	it	ne
 800702a:	2001      	movne	r0, #1
 800702c:	b002      	add	sp, #8
 800702e:	4770      	bx	lr
 8007030:	a901      	add	r1, sp, #4
 8007032:	2a00      	cmp	r2, #0
 8007034:	d1f3      	bne.n	800701e <__ascii_mbtowc+0x6>
 8007036:	4610      	mov	r0, r2
 8007038:	b002      	add	sp, #8
 800703a:	4770      	bx	lr
 800703c:	f06f 0001 	mvn.w	r0, #1
 8007040:	e7f4      	b.n	800702c <__ascii_mbtowc+0x14>
 8007042:	bf00      	nop

08007044 <_read_r>:
 8007044:	b570      	push	{r4, r5, r6, lr}
 8007046:	460d      	mov	r5, r1
 8007048:	4c08      	ldr	r4, [pc, #32]	; (800706c <_read_r+0x28>)
 800704a:	4611      	mov	r1, r2
 800704c:	4606      	mov	r6, r0
 800704e:	461a      	mov	r2, r3
 8007050:	4628      	mov	r0, r5
 8007052:	2300      	movs	r3, #0
 8007054:	6023      	str	r3, [r4, #0]
 8007056:	f7fb f917 	bl	8002288 <_read>
 800705a:	1c43      	adds	r3, r0, #1
 800705c:	d000      	beq.n	8007060 <_read_r+0x1c>
 800705e:	bd70      	pop	{r4, r5, r6, pc}
 8007060:	6823      	ldr	r3, [r4, #0]
 8007062:	2b00      	cmp	r3, #0
 8007064:	d0fb      	beq.n	800705e <_read_r+0x1a>
 8007066:	6033      	str	r3, [r6, #0]
 8007068:	bd70      	pop	{r4, r5, r6, pc}
 800706a:	bf00      	nop
 800706c:	20000bd4 	.word	0x20000bd4

08007070 <__swbuf_r>:
 8007070:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007072:	460d      	mov	r5, r1
 8007074:	4614      	mov	r4, r2
 8007076:	4606      	mov	r6, r0
 8007078:	b110      	cbz	r0, 8007080 <__swbuf_r+0x10>
 800707a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800707c:	2b00      	cmp	r3, #0
 800707e:	d043      	beq.n	8007108 <__swbuf_r+0x98>
 8007080:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007084:	69a3      	ldr	r3, [r4, #24]
 8007086:	60a3      	str	r3, [r4, #8]
 8007088:	b291      	uxth	r1, r2
 800708a:	0708      	lsls	r0, r1, #28
 800708c:	d51b      	bpl.n	80070c6 <__swbuf_r+0x56>
 800708e:	6923      	ldr	r3, [r4, #16]
 8007090:	b1cb      	cbz	r3, 80070c6 <__swbuf_r+0x56>
 8007092:	b2ed      	uxtb	r5, r5
 8007094:	0489      	lsls	r1, r1, #18
 8007096:	462f      	mov	r7, r5
 8007098:	d522      	bpl.n	80070e0 <__swbuf_r+0x70>
 800709a:	6822      	ldr	r2, [r4, #0]
 800709c:	6961      	ldr	r1, [r4, #20]
 800709e:	1ad3      	subs	r3, r2, r3
 80070a0:	4299      	cmp	r1, r3
 80070a2:	dd29      	ble.n	80070f8 <__swbuf_r+0x88>
 80070a4:	3301      	adds	r3, #1
 80070a6:	68a1      	ldr	r1, [r4, #8]
 80070a8:	1c50      	adds	r0, r2, #1
 80070aa:	3901      	subs	r1, #1
 80070ac:	60a1      	str	r1, [r4, #8]
 80070ae:	6020      	str	r0, [r4, #0]
 80070b0:	7015      	strb	r5, [r2, #0]
 80070b2:	6962      	ldr	r2, [r4, #20]
 80070b4:	429a      	cmp	r2, r3
 80070b6:	d02a      	beq.n	800710e <__swbuf_r+0x9e>
 80070b8:	89a3      	ldrh	r3, [r4, #12]
 80070ba:	07db      	lsls	r3, r3, #31
 80070bc:	d501      	bpl.n	80070c2 <__swbuf_r+0x52>
 80070be:	2d0a      	cmp	r5, #10
 80070c0:	d025      	beq.n	800710e <__swbuf_r+0x9e>
 80070c2:	4638      	mov	r0, r7
 80070c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80070c6:	4621      	mov	r1, r4
 80070c8:	4630      	mov	r0, r6
 80070ca:	f7fc fffd 	bl	80040c8 <__swsetup_r>
 80070ce:	bb20      	cbnz	r0, 800711a <__swbuf_r+0xaa>
 80070d0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80070d4:	6923      	ldr	r3, [r4, #16]
 80070d6:	b291      	uxth	r1, r2
 80070d8:	b2ed      	uxtb	r5, r5
 80070da:	0489      	lsls	r1, r1, #18
 80070dc:	462f      	mov	r7, r5
 80070de:	d4dc      	bmi.n	800709a <__swbuf_r+0x2a>
 80070e0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80070e2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80070e6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80070ea:	81a2      	strh	r2, [r4, #12]
 80070ec:	6822      	ldr	r2, [r4, #0]
 80070ee:	6661      	str	r1, [r4, #100]	; 0x64
 80070f0:	6961      	ldr	r1, [r4, #20]
 80070f2:	1ad3      	subs	r3, r2, r3
 80070f4:	4299      	cmp	r1, r3
 80070f6:	dcd5      	bgt.n	80070a4 <__swbuf_r+0x34>
 80070f8:	4621      	mov	r1, r4
 80070fa:	4630      	mov	r0, r6
 80070fc:	f7fe f8a6 	bl	800524c <_fflush_r>
 8007100:	b958      	cbnz	r0, 800711a <__swbuf_r+0xaa>
 8007102:	6822      	ldr	r2, [r4, #0]
 8007104:	2301      	movs	r3, #1
 8007106:	e7ce      	b.n	80070a6 <__swbuf_r+0x36>
 8007108:	f7fe f8fc 	bl	8005304 <__sinit>
 800710c:	e7b8      	b.n	8007080 <__swbuf_r+0x10>
 800710e:	4621      	mov	r1, r4
 8007110:	4630      	mov	r0, r6
 8007112:	f7fe f89b 	bl	800524c <_fflush_r>
 8007116:	2800      	cmp	r0, #0
 8007118:	d0d3      	beq.n	80070c2 <__swbuf_r+0x52>
 800711a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800711e:	e7d0      	b.n	80070c2 <__swbuf_r+0x52>

08007120 <_wcrtomb_r>:
 8007120:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007122:	4c11      	ldr	r4, [pc, #68]	; (8007168 <_wcrtomb_r+0x48>)
 8007124:	6824      	ldr	r4, [r4, #0]
 8007126:	b085      	sub	sp, #20
 8007128:	4606      	mov	r6, r0
 800712a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800712c:	461f      	mov	r7, r3
 800712e:	b151      	cbz	r1, 8007146 <_wcrtomb_r+0x26>
 8007130:	4d0e      	ldr	r5, [pc, #56]	; (800716c <_wcrtomb_r+0x4c>)
 8007132:	2c00      	cmp	r4, #0
 8007134:	bf08      	it	eq
 8007136:	462c      	moveq	r4, r5
 8007138:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800713c:	47a0      	blx	r4
 800713e:	1c43      	adds	r3, r0, #1
 8007140:	d00c      	beq.n	800715c <_wcrtomb_r+0x3c>
 8007142:	b005      	add	sp, #20
 8007144:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007146:	4a09      	ldr	r2, [pc, #36]	; (800716c <_wcrtomb_r+0x4c>)
 8007148:	2c00      	cmp	r4, #0
 800714a:	bf08      	it	eq
 800714c:	4614      	moveq	r4, r2
 800714e:	460a      	mov	r2, r1
 8007150:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007154:	a901      	add	r1, sp, #4
 8007156:	47a0      	blx	r4
 8007158:	1c43      	adds	r3, r0, #1
 800715a:	d1f2      	bne.n	8007142 <_wcrtomb_r+0x22>
 800715c:	2200      	movs	r2, #0
 800715e:	238a      	movs	r3, #138	; 0x8a
 8007160:	603a      	str	r2, [r7, #0]
 8007162:	6033      	str	r3, [r6, #0]
 8007164:	b005      	add	sp, #20
 8007166:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007168:	20000018 	.word	0x20000018
 800716c:	2000085c 	.word	0x2000085c

08007170 <__ascii_wctomb>:
 8007170:	b121      	cbz	r1, 800717c <__ascii_wctomb+0xc>
 8007172:	2aff      	cmp	r2, #255	; 0xff
 8007174:	d804      	bhi.n	8007180 <__ascii_wctomb+0x10>
 8007176:	700a      	strb	r2, [r1, #0]
 8007178:	2001      	movs	r0, #1
 800717a:	4770      	bx	lr
 800717c:	4608      	mov	r0, r1
 800717e:	4770      	bx	lr
 8007180:	238a      	movs	r3, #138	; 0x8a
 8007182:	6003      	str	r3, [r0, #0]
 8007184:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007188:	4770      	bx	lr
 800718a:	bf00      	nop

0800718c <_init>:
 800718c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800718e:	bf00      	nop
 8007190:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007192:	bc08      	pop	{r3}
 8007194:	469e      	mov	lr, r3
 8007196:	4770      	bx	lr

08007198 <_fini>:
 8007198:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800719a:	bf00      	nop
 800719c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800719e:	bc08      	pop	{r3}
 80071a0:	469e      	mov	lr, r3
 80071a2:	4770      	bx	lr
 80071a4:	0000      	movs	r0, r0
	...
