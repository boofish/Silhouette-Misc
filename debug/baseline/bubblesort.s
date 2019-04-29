
bubblesort.elf:     file format elf32-littlearm


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
 80001e0:	080070fc 	.word	0x080070fc

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
 80001fc:	080070fc 	.word	0x080070fc

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
 8001430:	f247 1230 	movw	r2, #28976	; 0x7130
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
 80014aa:	f247 1228 	movw	r2, #28968	; 0x7128
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
 80014d4:	f247 1228 	movw	r2, #28968	; 0x7128
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
 8001a82:	f247 1360 	movw	r3, #29024	; 0x7160
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
 8001aaa:	f247 1370 	movw	r3, #29040	; 0x7170
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
 8002014:	b085      	sub	sp, #20
 8002016:	f84d 4e00 	strt	r4, [sp]
 800201a:	f84d 5e04 	strt	r5, [sp, #4]
 800201e:	f84d 6e08 	strt	r6, [sp, #8]
 8002022:	f84d 7e0c 	strt	r7, [sp, #12]
 8002026:	f84d ee10 	strt	lr, [sp, #16]
 800202a:	af03      	add	r7, sp, #12
 800202c:	b081      	sub	sp, #4
 800202e:	f84d be00 	strt	fp, [sp]
 8002032:	f640 2cec 	movw	ip, #2796	; 0xaec
 8002036:	2000      	movs	r0, #0
 8002038:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800203c:	f1c0 0264 	rsb	r2, r0, #100	; 0x64
 8002040:	2100      	movs	r1, #0
 8002042:	f04f 0e01 	mov.w	lr, #1
 8002046:	e00d      	b.n	8002064 <benchmark+0x50>
 8002048:	bfe8      	it	al
 800204a:	3c08      	subal	r4, #8
 800204c:	f844 6e00 	strt	r6, [r4]
 8002050:	bfe8      	it	al
 8002052:	3408      	addal	r4, #8
 8002054:	bfe8      	it	al
 8002056:	3c04      	subal	r4, #4
 8002058:	f844 5e00 	strt	r5, [r4]
 800205c:	bfe8      	it	al
 800205e:	3404      	addal	r4, #4
 8002060:	f04f 0e00 	mov.w	lr, #0
 8002064:	eb0c 0381 	add.w	r3, ip, r1, lsl #2
 8002068:	3304      	adds	r3, #4
 800206a:	2963      	cmp	r1, #99	; 0x63
 800206c:	bfd8      	it	le
 800206e:	4291      	cmple	r1, r2
 8002070:	da08      	bge.n	8002084 <benchmark+0x70>
 8002072:	f853 5c04 	ldr.w	r5, [r3, #-4]
 8002076:	681e      	ldr	r6, [r3, #0]
 8002078:	1d1c      	adds	r4, r3, #4
 800207a:	3101      	adds	r1, #1
 800207c:	4623      	mov	r3, r4
 800207e:	42b5      	cmp	r5, r6
 8002080:	ddf3      	ble.n	800206a <benchmark+0x56>
 8002082:	e7e1      	b.n	8002048 <benchmark+0x34>
 8002084:	3001      	adds	r0, #1
 8002086:	2863      	cmp	r0, #99	; 0x63
 8002088:	dc02      	bgt.n	8002090 <benchmark+0x7c>
 800208a:	f1be 0f00 	cmp.w	lr, #0
 800208e:	d0d5      	beq.n	800203c <benchmark+0x28>
 8002090:	2000      	movs	r0, #0
 8002092:	f85d bb04 	ldr.w	fp, [sp], #4
 8002096:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002098 <initialise_benchmark>:
 8002098:	f640 4080 	movw	r0, #3200	; 0xc80
 800209c:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 80020a0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020a4:	f840 1e00 	strt	r1, [r0]
 80020a8:	f640 20ec 	movw	r0, #2796	; 0xaec
 80020ac:	2100      	movs	r1, #0
 80020ae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020b2:	f840 1e00 	strt	r1, [r0]
 80020b6:	bfe8      	it	al
 80020b8:	3004      	addal	r0, #4
 80020ba:	3901      	subs	r1, #1
 80020bc:	f111 0264 	adds.w	r2, r1, #100	; 0x64
 80020c0:	d1f7      	bne.n	80020b2 <initialise_benchmark+0x1a>
 80020c2:	4770      	bx	lr

080020c4 <verify_benchmark>:
 80020c4:	f247 1c80 	movw	ip, #29056	; 0x7180
 80020c8:	f640 22ec 	movw	r2, #2796	; 0xaec
 80020cc:	2000      	movs	r0, #0
 80020ce:	f6c0 0c00 	movt	ip, #2048	; 0x800
 80020d2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80020d6:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
 80020da:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 80020de:	4299      	cmp	r1, r3
 80020e0:	bf1c      	itt	ne
 80020e2:	2000      	movne	r0, #0
 80020e4:	4770      	bxne	lr
 80020e6:	3001      	adds	r0, #1
 80020e8:	2863      	cmp	r0, #99	; 0x63
 80020ea:	bfc4      	itt	gt
 80020ec:	2001      	movgt	r0, #1
 80020ee:	4770      	bxgt	lr
 80020f0:	e7f1      	b.n	80020d6 <verify_benchmark+0x12>

080020f2 <__io_putchar>:
 80020f2:	b082      	sub	sp, #8
 80020f4:	f84d 7e00 	strt	r7, [sp]
 80020f8:	f84d ee04 	strt	lr, [sp, #4]
 80020fc:	466f      	mov	r7, sp
 80020fe:	b082      	sub	sp, #8
 8002100:	f84d 0e04 	strt	r0, [sp, #4]
 8002104:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002108:	a901      	add	r1, sp, #4
 800210a:	2201      	movs	r2, #1
 800210c:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002110:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002114:	f7ff fe57 	bl	8001dc6 <HAL_UART_Transmit>
 8002118:	9801      	ldr	r0, [sp, #4]
 800211a:	b002      	add	sp, #8
 800211c:	bd80      	pop	{r7, pc}

0800211e <main>:
 800211e:	b084      	sub	sp, #16
 8002120:	f84d 4e00 	strt	r4, [sp]
 8002124:	f84d 5e04 	strt	r5, [sp, #4]
 8002128:	f84d 7e08 	strt	r7, [sp, #8]
 800212c:	f84d ee0c 	strt	lr, [sp, #12]
 8002130:	af02      	add	r7, sp, #8
 8002132:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002136:	f643 0000 	movw	r0, #14336	; 0x3800
 800213a:	220c      	movs	r2, #12
 800213c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002140:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002144:	f841 0e00 	strt	r0, [r1]
 8002148:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 800214c:	f841 0e04 	strt	r0, [r1, #4]
 8002150:	2000      	movs	r0, #0
 8002152:	f841 0e08 	strt	r0, [r1, #8]
 8002156:	f841 0e0c 	strt	r0, [r1, #12]
 800215a:	f841 0e10 	strt	r0, [r1, #16]
 800215e:	f841 0e24 	strt	r0, [r1, #36]
 8002162:	f841 0e1c 	strt	r0, [r1, #28]
 8002166:	f841 0e20 	strt	r0, [r1, #32]
 800216a:	f841 2e14 	strt	r2, [r1, #20]
 800216e:	f841 0e18 	strt	r0, [r1, #24]
 8002172:	2000      	movs	r0, #0
 8002174:	f7ff feda 	bl	8001f2c <BSP_COM_Init>
 8002178:	f7ff ff8e 	bl	8002098 <initialise_benchmark>
 800217c:	f247 3010 	movw	r0, #29456	; 0x7310
 8002180:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002184:	f000 f96c 	bl	8002460 <printf>
 8002188:	f247 30bd 	movw	r0, #29629	; 0x73bd
 800218c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002190:	f000 f9c8 	bl	8002524 <puts>
 8002194:	f7fe ffa8 	bl	80010e8 <HAL_Init>
 8002198:	f7fe ffbf 	bl	800111a <HAL_GetTick>
 800219c:	4604      	mov	r4, r0
 800219e:	f7ff ff39 	bl	8002014 <benchmark>
 80021a2:	4605      	mov	r5, r0
 80021a4:	f7fe ffb9 	bl	800111a <HAL_GetTick>
 80021a8:	1b04      	subs	r4, r0, r4
 80021aa:	4628      	mov	r0, r5
 80021ac:	f7ff ff8a 	bl	80020c4 <verify_benchmark>
 80021b0:	1c41      	adds	r1, r0, #1
 80021b2:	d006      	beq.n	80021c2 <main+0xa4>
 80021b4:	2801      	cmp	r0, #1
 80021b6:	d109      	bne.n	80021cc <main+0xae>
 80021b8:	f247 3029 	movw	r0, #29481	; 0x7329
 80021bc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021c0:	e008      	b.n	80021d4 <main+0xb6>
 80021c2:	f247 304d 	movw	r0, #29517	; 0x734d
 80021c6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021ca:	e003      	b.n	80021d4 <main+0xb6>
 80021cc:	f247 3082 	movw	r0, #29570	; 0x7382
 80021d0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021d4:	4621      	mov	r1, r4
 80021d6:	f000 f943 	bl	8002460 <printf>
 80021da:	2000      	movs	r0, #0
 80021dc:	bdb0      	pop	{r4, r5, r7, pc}

080021de <SysTick_Handler>:
 80021de:	b082      	sub	sp, #8
 80021e0:	f84d 7e00 	strt	r7, [sp]
 80021e4:	f84d ee04 	strt	lr, [sp, #4]
 80021e8:	466f      	mov	r7, sp
 80021ea:	f7fe ff8d 	bl	8001108 <HAL_IncTick>
 80021ee:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80021f2:	f7fe bfe8 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

080021f6 <_read>:
 80021f6:	b085      	sub	sp, #20
 80021f8:	f84d 4e00 	strt	r4, [sp]
 80021fc:	f84d 5e04 	strt	r5, [sp, #4]
 8002200:	f84d 6e08 	strt	r6, [sp, #8]
 8002204:	f84d 7e0c 	strt	r7, [sp, #12]
 8002208:	f84d ee10 	strt	lr, [sp, #16]
 800220c:	af03      	add	r7, sp, #12
 800220e:	b081      	sub	sp, #4
 8002210:	f84d be00 	strt	fp, [sp]
 8002214:	4614      	mov	r4, r2
 8002216:	460d      	mov	r5, r1
 8002218:	2c01      	cmp	r4, #1
 800221a:	db08      	blt.n	800222e <_read+0x38>
 800221c:	4626      	mov	r6, r4
 800221e:	f3af 8000 	nop.w
 8002222:	f805 0e00 	strbt	r0, [r5]
 8002226:	bfe8      	it	al
 8002228:	3501      	addal	r5, #1
 800222a:	3e01      	subs	r6, #1
 800222c:	d1f7      	bne.n	800221e <_read+0x28>
 800222e:	4620      	mov	r0, r4
 8002230:	f85d bb04 	ldr.w	fp, [sp], #4
 8002234:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002236 <_write>:
 8002236:	b085      	sub	sp, #20
 8002238:	f84d 4e00 	strt	r4, [sp]
 800223c:	f84d 5e04 	strt	r5, [sp, #4]
 8002240:	f84d 6e08 	strt	r6, [sp, #8]
 8002244:	f84d 7e0c 	strt	r7, [sp, #12]
 8002248:	f84d ee10 	strt	lr, [sp, #16]
 800224c:	af03      	add	r7, sp, #12
 800224e:	b081      	sub	sp, #4
 8002250:	f84d be00 	strt	fp, [sp]
 8002254:	4614      	mov	r4, r2
 8002256:	460d      	mov	r5, r1
 8002258:	2c01      	cmp	r4, #1
 800225a:	db06      	blt.n	800226a <_write+0x34>
 800225c:	4626      	mov	r6, r4
 800225e:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002262:	f7ff ff46 	bl	80020f2 <__io_putchar>
 8002266:	3e01      	subs	r6, #1
 8002268:	d1f9      	bne.n	800225e <_write+0x28>
 800226a:	4620      	mov	r0, r4
 800226c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002270:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002272 <_sbrk>:
 8002272:	f640 2268 	movw	r2, #2664	; 0xa68
 8002276:	4601      	mov	r1, r0
 8002278:	466b      	mov	r3, sp
 800227a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800227e:	6810      	ldr	r0, [r2, #0]
 8002280:	2800      	cmp	r0, #0
 8002282:	bf02      	ittt	eq
 8002284:	f640 40b0 	movweq	r0, #3248	; 0xcb0
 8002288:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800228c:	f842 0e00 	strteq	r0, [r2]
 8002290:	4401      	add	r1, r0
 8002292:	4299      	cmp	r1, r3
 8002294:	bf9c      	itt	ls
 8002296:	f842 1e00 	strtls	r1, [r2]
 800229a:	4770      	bxls	lr
 800229c:	b082      	sub	sp, #8
 800229e:	f84d 7e00 	strt	r7, [sp]
 80022a2:	f84d ee04 	strt	lr, [sp, #4]
 80022a6:	466f      	mov	r7, sp
 80022a8:	f000 f866 	bl	8002378 <__errno>
 80022ac:	210c      	movs	r1, #12
 80022ae:	f840 1e00 	strt	r1, [r0]
 80022b2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80022b6:	bd80      	pop	{r7, pc}

080022b8 <_close>:
 80022b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80022bc:	4770      	bx	lr

080022be <_fstat>:
 80022be:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80022c2:	f841 0e04 	strt	r0, [r1, #4]
 80022c6:	2000      	movs	r0, #0
 80022c8:	4770      	bx	lr

080022ca <_isatty>:
 80022ca:	2001      	movs	r0, #1
 80022cc:	4770      	bx	lr

080022ce <_lseek>:
 80022ce:	2000      	movs	r0, #0
 80022d0:	4770      	bx	lr

080022d2 <SystemInit>:
 80022d2:	f64e 5088 	movw	r0, #60808	; 0xed88
 80022d6:	f04f 0c00 	mov.w	ip, #0
 80022da:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80022de:	6801      	ldr	r1, [r0, #0]
 80022e0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80022e4:	6001      	str	r1, [r0, #0]
 80022e6:	f241 0100 	movw	r1, #4096	; 0x1000
 80022ea:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80022ee:	680a      	ldr	r2, [r1, #0]
 80022f0:	f042 0201 	orr.w	r2, r2, #1
 80022f4:	600a      	str	r2, [r1, #0]
 80022f6:	f8c1 c008 	str.w	ip, [r1, #8]
 80022fa:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80022fe:	680b      	ldr	r3, [r1, #0]
 8002300:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002304:	401a      	ands	r2, r3
 8002306:	600a      	str	r2, [r1, #0]
 8002308:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800230c:	60ca      	str	r2, [r1, #12]
 800230e:	680a      	ldr	r2, [r1, #0]
 8002310:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002314:	600a      	str	r2, [r1, #0]
 8002316:	f8c1 c018 	str.w	ip, [r1, #24]
 800231a:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800231e:	f840 1c80 	str.w	r1, [r0, #-128]
 8002322:	4770      	bx	lr

08002324 <Reset_Handler>:
 8002324:	f8df d034 	ldr.w	sp, [pc, #52]	; 800235c <LoopForever+0x2>
 8002328:	2100      	movs	r1, #0
 800232a:	e003      	b.n	8002334 <LoopCopyDataInit>

0800232c <CopyDataInit>:
 800232c:	4b0c      	ldr	r3, [pc, #48]	; (8002360 <LoopForever+0x6>)
 800232e:	585b      	ldr	r3, [r3, r1]
 8002330:	5043      	str	r3, [r0, r1]
 8002332:	3104      	adds	r1, #4

08002334 <LoopCopyDataInit>:
 8002334:	480b      	ldr	r0, [pc, #44]	; (8002364 <LoopForever+0xa>)
 8002336:	4b0c      	ldr	r3, [pc, #48]	; (8002368 <LoopForever+0xe>)
 8002338:	1842      	adds	r2, r0, r1
 800233a:	429a      	cmp	r2, r3
 800233c:	d3f6      	bcc.n	800232c <CopyDataInit>
 800233e:	4a0b      	ldr	r2, [pc, #44]	; (800236c <LoopForever+0x12>)
 8002340:	e002      	b.n	8002348 <LoopFillZerobss>

08002342 <FillZerobss>:
 8002342:	2300      	movs	r3, #0
 8002344:	f842 3b04 	str.w	r3, [r2], #4

08002348 <LoopFillZerobss>:
 8002348:	4b09      	ldr	r3, [pc, #36]	; (8002370 <LoopForever+0x16>)
 800234a:	429a      	cmp	r2, r3
 800234c:	d3f9      	bcc.n	8002342 <FillZerobss>
 800234e:	f7ff ffc0 	bl	80022d2 <SystemInit>
 8002352:	f000 f817 	bl	8002384 <__libc_init_array>
 8002356:	f7ff fee2 	bl	800211e <main>

0800235a <LoopForever>:
 800235a:	e7fe      	b.n	800235a <LoopForever>
 800235c:	20018000 	.word	0x20018000
 8002360:	08007668 	.word	0x08007668
 8002364:	20000000 	.word	0x20000000
 8002368:	200009c8 	.word	0x200009c8
 800236c:	200009c8 	.word	0x200009c8
 8002370:	20000cac 	.word	0x20000cac

08002374 <ADC1_2_IRQHandler>:
 8002374:	e7fe      	b.n	8002374 <ADC1_2_IRQHandler>
	...

08002378 <__errno>:
 8002378:	4b01      	ldr	r3, [pc, #4]	; (8002380 <__errno+0x8>)
 800237a:	6818      	ldr	r0, [r3, #0]
 800237c:	4770      	bx	lr
 800237e:	bf00      	nop
 8002380:	20000018 	.word	0x20000018

08002384 <__libc_init_array>:
 8002384:	b570      	push	{r4, r5, r6, lr}
 8002386:	4e0d      	ldr	r6, [pc, #52]	; (80023bc <__libc_init_array+0x38>)
 8002388:	4d0d      	ldr	r5, [pc, #52]	; (80023c0 <__libc_init_array+0x3c>)
 800238a:	1b76      	subs	r6, r6, r5
 800238c:	10b6      	asrs	r6, r6, #2
 800238e:	d006      	beq.n	800239e <__libc_init_array+0x1a>
 8002390:	2400      	movs	r4, #0
 8002392:	3401      	adds	r4, #1
 8002394:	f855 3b04 	ldr.w	r3, [r5], #4
 8002398:	4798      	blx	r3
 800239a:	42a6      	cmp	r6, r4
 800239c:	d1f9      	bne.n	8002392 <__libc_init_array+0xe>
 800239e:	4e09      	ldr	r6, [pc, #36]	; (80023c4 <__libc_init_array+0x40>)
 80023a0:	4d09      	ldr	r5, [pc, #36]	; (80023c8 <__libc_init_array+0x44>)
 80023a2:	1b76      	subs	r6, r6, r5
 80023a4:	f004 feaa 	bl	80070fc <_init>
 80023a8:	10b6      	asrs	r6, r6, #2
 80023aa:	d006      	beq.n	80023ba <__libc_init_array+0x36>
 80023ac:	2400      	movs	r4, #0
 80023ae:	3401      	adds	r4, #1
 80023b0:	f855 3b04 	ldr.w	r3, [r5], #4
 80023b4:	4798      	blx	r3
 80023b6:	42a6      	cmp	r6, r4
 80023b8:	d1f9      	bne.n	80023ae <__libc_init_array+0x2a>
 80023ba:	bd70      	pop	{r4, r5, r6, pc}
 80023bc:	08007658 	.word	0x08007658
 80023c0:	08007658 	.word	0x08007658
 80023c4:	08007660 	.word	0x08007660
 80023c8:	08007658 	.word	0x08007658

080023cc <memset>:
 80023cc:	b4f0      	push	{r4, r5, r6, r7}
 80023ce:	0786      	lsls	r6, r0, #30
 80023d0:	d043      	beq.n	800245a <memset+0x8e>
 80023d2:	1e54      	subs	r4, r2, #1
 80023d4:	2a00      	cmp	r2, #0
 80023d6:	d03e      	beq.n	8002456 <memset+0x8a>
 80023d8:	b2ca      	uxtb	r2, r1
 80023da:	4603      	mov	r3, r0
 80023dc:	e002      	b.n	80023e4 <memset+0x18>
 80023de:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80023e2:	d338      	bcc.n	8002456 <memset+0x8a>
 80023e4:	f803 2b01 	strb.w	r2, [r3], #1
 80023e8:	079d      	lsls	r5, r3, #30
 80023ea:	d1f8      	bne.n	80023de <memset+0x12>
 80023ec:	2c03      	cmp	r4, #3
 80023ee:	d92b      	bls.n	8002448 <memset+0x7c>
 80023f0:	b2cd      	uxtb	r5, r1
 80023f2:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80023f6:	2c0f      	cmp	r4, #15
 80023f8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80023fc:	d916      	bls.n	800242c <memset+0x60>
 80023fe:	f1a4 0710 	sub.w	r7, r4, #16
 8002402:	093f      	lsrs	r7, r7, #4
 8002404:	f103 0620 	add.w	r6, r3, #32
 8002408:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 800240c:	f103 0210 	add.w	r2, r3, #16
 8002410:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002414:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002418:	3210      	adds	r2, #16
 800241a:	42b2      	cmp	r2, r6
 800241c:	d1f8      	bne.n	8002410 <memset+0x44>
 800241e:	f004 040f 	and.w	r4, r4, #15
 8002422:	3701      	adds	r7, #1
 8002424:	2c03      	cmp	r4, #3
 8002426:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800242a:	d90d      	bls.n	8002448 <memset+0x7c>
 800242c:	461e      	mov	r6, r3
 800242e:	4622      	mov	r2, r4
 8002430:	3a04      	subs	r2, #4
 8002432:	2a03      	cmp	r2, #3
 8002434:	f846 5b04 	str.w	r5, [r6], #4
 8002438:	d8fa      	bhi.n	8002430 <memset+0x64>
 800243a:	1f22      	subs	r2, r4, #4
 800243c:	f022 0203 	bic.w	r2, r2, #3
 8002440:	3204      	adds	r2, #4
 8002442:	4413      	add	r3, r2
 8002444:	f004 0403 	and.w	r4, r4, #3
 8002448:	b12c      	cbz	r4, 8002456 <memset+0x8a>
 800244a:	b2c9      	uxtb	r1, r1
 800244c:	441c      	add	r4, r3
 800244e:	f803 1b01 	strb.w	r1, [r3], #1
 8002452:	429c      	cmp	r4, r3
 8002454:	d1fb      	bne.n	800244e <memset+0x82>
 8002456:	bcf0      	pop	{r4, r5, r6, r7}
 8002458:	4770      	bx	lr
 800245a:	4614      	mov	r4, r2
 800245c:	4603      	mov	r3, r0
 800245e:	e7c5      	b.n	80023ec <memset+0x20>

08002460 <printf>:
 8002460:	b40f      	push	{r0, r1, r2, r3}
 8002462:	b500      	push	{lr}
 8002464:	4907      	ldr	r1, [pc, #28]	; (8002484 <printf+0x24>)
 8002466:	b083      	sub	sp, #12
 8002468:	ab04      	add	r3, sp, #16
 800246a:	6808      	ldr	r0, [r1, #0]
 800246c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002470:	6881      	ldr	r1, [r0, #8]
 8002472:	9301      	str	r3, [sp, #4]
 8002474:	f000 f860 	bl	8002538 <_vfprintf_r>
 8002478:	b003      	add	sp, #12
 800247a:	f85d eb04 	ldr.w	lr, [sp], #4
 800247e:	b004      	add	sp, #16
 8002480:	4770      	bx	lr
 8002482:	bf00      	nop
 8002484:	20000018 	.word	0x20000018

08002488 <_puts_r>:
 8002488:	b570      	push	{r4, r5, r6, lr}
 800248a:	4605      	mov	r5, r0
 800248c:	b088      	sub	sp, #32
 800248e:	4608      	mov	r0, r1
 8002490:	460c      	mov	r4, r1
 8002492:	f7fe f8d5 	bl	8000640 <strlen>
 8002496:	4a22      	ldr	r2, [pc, #136]	; (8002520 <_puts_r+0x98>)
 8002498:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800249a:	9404      	str	r4, [sp, #16]
 800249c:	2601      	movs	r6, #1
 800249e:	1c44      	adds	r4, r0, #1
 80024a0:	a904      	add	r1, sp, #16
 80024a2:	9206      	str	r2, [sp, #24]
 80024a4:	2202      	movs	r2, #2
 80024a6:	9403      	str	r4, [sp, #12]
 80024a8:	9005      	str	r0, [sp, #20]
 80024aa:	68ac      	ldr	r4, [r5, #8]
 80024ac:	9607      	str	r6, [sp, #28]
 80024ae:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80024b2:	b31b      	cbz	r3, 80024fc <_puts_r+0x74>
 80024b4:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80024b6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80024ba:	07ce      	lsls	r6, r1, #31
 80024bc:	b29a      	uxth	r2, r3
 80024be:	d401      	bmi.n	80024c4 <_puts_r+0x3c>
 80024c0:	0590      	lsls	r0, r2, #22
 80024c2:	d525      	bpl.n	8002510 <_puts_r+0x88>
 80024c4:	0491      	lsls	r1, r2, #18
 80024c6:	d406      	bmi.n	80024d6 <_puts_r+0x4e>
 80024c8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80024ca:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80024ce:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80024d2:	81a3      	strh	r3, [r4, #12]
 80024d4:	6662      	str	r2, [r4, #100]	; 0x64
 80024d6:	4628      	mov	r0, r5
 80024d8:	aa01      	add	r2, sp, #4
 80024da:	4621      	mov	r1, r4
 80024dc:	f003 f860 	bl	80055a0 <__sfvwrite_r>
 80024e0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80024e2:	2800      	cmp	r0, #0
 80024e4:	bf0c      	ite	eq
 80024e6:	250a      	moveq	r5, #10
 80024e8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80024ec:	07da      	lsls	r2, r3, #31
 80024ee:	d402      	bmi.n	80024f6 <_puts_r+0x6e>
 80024f0:	89a3      	ldrh	r3, [r4, #12]
 80024f2:	059b      	lsls	r3, r3, #22
 80024f4:	d506      	bpl.n	8002504 <_puts_r+0x7c>
 80024f6:	4628      	mov	r0, r5
 80024f8:	b008      	add	sp, #32
 80024fa:	bd70      	pop	{r4, r5, r6, pc}
 80024fc:	4628      	mov	r0, r5
 80024fe:	f002 feb9 	bl	8005274 <__sinit>
 8002502:	e7d7      	b.n	80024b4 <_puts_r+0x2c>
 8002504:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002506:	f003 fa07 	bl	8005918 <__retarget_lock_release_recursive>
 800250a:	4628      	mov	r0, r5
 800250c:	b008      	add	sp, #32
 800250e:	bd70      	pop	{r4, r5, r6, pc}
 8002510:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002512:	f003 f9ff 	bl	8005914 <__retarget_lock_acquire_recursive>
 8002516:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800251a:	b29a      	uxth	r2, r3
 800251c:	e7d2      	b.n	80024c4 <_puts_r+0x3c>
 800251e:	bf00      	nop
 8002520:	080073c4 	.word	0x080073c4

08002524 <puts>:
 8002524:	4b02      	ldr	r3, [pc, #8]	; (8002530 <puts+0xc>)
 8002526:	4601      	mov	r1, r0
 8002528:	6818      	ldr	r0, [r3, #0]
 800252a:	f7ff bfad 	b.w	8002488 <_puts_r>
 800252e:	bf00      	nop
 8002530:	20000018 	.word	0x20000018
 8002534:	00000000 	.word	0x00000000

08002538 <_vfprintf_r>:
 8002538:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800253c:	b0d7      	sub	sp, #348	; 0x15c
 800253e:	461c      	mov	r4, r3
 8002540:	4689      	mov	r9, r1
 8002542:	4617      	mov	r7, r2
 8002544:	4605      	mov	r5, r0
 8002546:	9003      	str	r0, [sp, #12]
 8002548:	f003 f9d2 	bl	80058f0 <_localeconv_r>
 800254c:	6803      	ldr	r3, [r0, #0]
 800254e:	9316      	str	r3, [sp, #88]	; 0x58
 8002550:	4618      	mov	r0, r3
 8002552:	f7fe f875 	bl	8000640 <strlen>
 8002556:	9408      	str	r4, [sp, #32]
 8002558:	9015      	str	r0, [sp, #84]	; 0x54
 800255a:	b11d      	cbz	r5, 8002564 <_vfprintf_r+0x2c>
 800255c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800255e:	2b00      	cmp	r3, #0
 8002560:	f000 8107 	beq.w	8002772 <_vfprintf_r+0x23a>
 8002564:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002568:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800256c:	07c8      	lsls	r0, r1, #31
 800256e:	b293      	uxth	r3, r2
 8002570:	d402      	bmi.n	8002578 <_vfprintf_r+0x40>
 8002572:	0599      	lsls	r1, r3, #22
 8002574:	f140 811f 	bpl.w	80027b6 <_vfprintf_r+0x27e>
 8002578:	049e      	lsls	r6, r3, #18
 800257a:	d40a      	bmi.n	8002592 <_vfprintf_r+0x5a>
 800257c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002580:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002584:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002588:	f8a9 300c 	strh.w	r3, [r9, #12]
 800258c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002590:	b29b      	uxth	r3, r3
 8002592:	071d      	lsls	r5, r3, #28
 8002594:	f140 80b2 	bpl.w	80026fc <_vfprintf_r+0x1c4>
 8002598:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800259c:	2a00      	cmp	r2, #0
 800259e:	f000 80ad 	beq.w	80026fc <_vfprintf_r+0x1c4>
 80025a2:	f003 021a 	and.w	r2, r3, #26
 80025a6:	2a0a      	cmp	r2, #10
 80025a8:	f000 80c9 	beq.w	800273e <_vfprintf_r+0x206>
 80025ac:	2300      	movs	r3, #0
 80025ae:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80027c8 <_vfprintf_r+0x290>
 80025b2:	9310      	str	r3, [sp, #64]	; 0x40
 80025b4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80025b8:	9317      	str	r3, [sp, #92]	; 0x5c
 80025ba:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80025be:	931b      	str	r3, [sp, #108]	; 0x6c
 80025c0:	9318      	str	r3, [sp, #96]	; 0x60
 80025c2:	9305      	str	r3, [sp, #20]
 80025c4:	ab2d      	add	r3, sp, #180	; 0xb4
 80025c6:	932a      	str	r3, [sp, #168]	; 0xa8
 80025c8:	469b      	mov	fp, r3
 80025ca:	783b      	ldrb	r3, [r7, #0]
 80025cc:	f8cd 901c 	str.w	r9, [sp, #28]
 80025d0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80025d4:	2b00      	cmp	r3, #0
 80025d6:	f000 8259 	beq.w	8002a8c <_vfprintf_r+0x554>
 80025da:	2b25      	cmp	r3, #37	; 0x25
 80025dc:	463c      	mov	r4, r7
 80025de:	d102      	bne.n	80025e6 <_vfprintf_r+0xae>
 80025e0:	e01d      	b.n	800261e <_vfprintf_r+0xe6>
 80025e2:	2b25      	cmp	r3, #37	; 0x25
 80025e4:	d003      	beq.n	80025ee <_vfprintf_r+0xb6>
 80025e6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80025ea:	2b00      	cmp	r3, #0
 80025ec:	d1f9      	bne.n	80025e2 <_vfprintf_r+0xaa>
 80025ee:	1be5      	subs	r5, r4, r7
 80025f0:	b18d      	cbz	r5, 8002616 <_vfprintf_r+0xde>
 80025f2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80025f6:	3301      	adds	r3, #1
 80025f8:	442a      	add	r2, r5
 80025fa:	2b07      	cmp	r3, #7
 80025fc:	f8cb 7000 	str.w	r7, [fp]
 8002600:	f8cb 5004 	str.w	r5, [fp, #4]
 8002604:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002608:	f300 80ca 	bgt.w	80027a0 <_vfprintf_r+0x268>
 800260c:	f10b 0b08 	add.w	fp, fp, #8
 8002610:	9b05      	ldr	r3, [sp, #20]
 8002612:	442b      	add	r3, r5
 8002614:	9305      	str	r3, [sp, #20]
 8002616:	7823      	ldrb	r3, [r4, #0]
 8002618:	2b00      	cmp	r3, #0
 800261a:	f000 8237 	beq.w	8002a8c <_vfprintf_r+0x554>
 800261e:	2300      	movs	r3, #0
 8002620:	7866      	ldrb	r6, [r4, #1]
 8002622:	9306      	str	r3, [sp, #24]
 8002624:	4698      	mov	r8, r3
 8002626:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800262a:	f104 0a01 	add.w	sl, r4, #1
 800262e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002632:	252b      	movs	r5, #43	; 0x2b
 8002634:	f10a 0a01 	add.w	sl, sl, #1
 8002638:	f1a6 0320 	sub.w	r3, r6, #32
 800263c:	2b5a      	cmp	r3, #90	; 0x5a
 800263e:	f200 842a 	bhi.w	8002e96 <_vfprintf_r+0x95e>
 8002642:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002646:	03aa      	.short	0x03aa
 8002648:	04280428 	.word	0x04280428
 800264c:	0428029c 	.word	0x0428029c
 8002650:	04280428 	.word	0x04280428
 8002654:	042802a7 	.word	0x042802a7
 8002658:	02c60428 	.word	0x02c60428
 800265c:	042802d2 	.word	0x042802d2
 8002660:	02dc02d7 	.word	0x02dc02d7
 8002664:	02f60428 	.word	0x02f60428
 8002668:	026d026d 	.word	0x026d026d
 800266c:	026d026d 	.word	0x026d026d
 8002670:	026d026d 	.word	0x026d026d
 8002674:	026d026d 	.word	0x026d026d
 8002678:	0428026d 	.word	0x0428026d
 800267c:	04280428 	.word	0x04280428
 8002680:	04280428 	.word	0x04280428
 8002684:	04280428 	.word	0x04280428
 8002688:	042802fb 	.word	0x042802fb
 800268c:	03f3033c 	.word	0x03f3033c
 8002690:	02fb02fb 	.word	0x02fb02fb
 8002694:	042802fb 	.word	0x042802fb
 8002698:	04280428 	.word	0x04280428
 800269c:	03ee0428 	.word	0x03ee0428
 80026a0:	04280428 	.word	0x04280428
 80026a4:	0428009a 	.word	0x0428009a
 80026a8:	04280428 	.word	0x04280428
 80026ac:	04280350 	.word	0x04280350
 80026b0:	04280379 	.word	0x04280379
 80026b4:	03900428 	.word	0x03900428
 80026b8:	04280428 	.word	0x04280428
 80026bc:	04280428 	.word	0x04280428
 80026c0:	04280428 	.word	0x04280428
 80026c4:	04280428 	.word	0x04280428
 80026c8:	042802fb 	.word	0x042802fb
 80026cc:	00c5033c 	.word	0x00c5033c
 80026d0:	02fb02fb 	.word	0x02fb02fb
 80026d4:	03d102fb 	.word	0x03d102fb
 80026d8:	007000c5 	.word	0x007000c5
 80026dc:	03b50428 	.word	0x03b50428
 80026e0:	03c20428 	.word	0x03c20428
 80026e4:	03de009c 	.word	0x03de009c
 80026e8:	04280070 	.word	0x04280070
 80026ec:	00720350 	.word	0x00720350
 80026f0:	0428022c 	.word	0x0428022c
 80026f4:	027c0428 	.word	0x027c0428
 80026f8:	00720428 	.word	0x00720428
 80026fc:	4649      	mov	r1, r9
 80026fe:	9803      	ldr	r0, [sp, #12]
 8002700:	f001 fc9a 	bl	8004038 <__swsetup_r>
 8002704:	b1a0      	cbz	r0, 8002730 <_vfprintf_r+0x1f8>
 8002706:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800270a:	07d8      	lsls	r0, r3, #31
 800270c:	d404      	bmi.n	8002718 <_vfprintf_r+0x1e0>
 800270e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002712:	0599      	lsls	r1, r3, #22
 8002714:	f140 83b7 	bpl.w	8002e86 <_vfprintf_r+0x94e>
 8002718:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800271c:	9305      	str	r3, [sp, #20]
 800271e:	9805      	ldr	r0, [sp, #20]
 8002720:	b057      	add	sp, #348	; 0x15c
 8002722:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002726:	f048 0820 	orr.w	r8, r8, #32
 800272a:	f89a 6000 	ldrb.w	r6, [sl]
 800272e:	e781      	b.n	8002634 <_vfprintf_r+0xfc>
 8002730:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002734:	f003 021a 	and.w	r2, r3, #26
 8002738:	2a0a      	cmp	r2, #10
 800273a:	f47f af37 	bne.w	80025ac <_vfprintf_r+0x74>
 800273e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002742:	2a00      	cmp	r2, #0
 8002744:	f6ff af32 	blt.w	80025ac <_vfprintf_r+0x74>
 8002748:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800274c:	07d2      	lsls	r2, r2, #31
 800274e:	d405      	bmi.n	800275c <_vfprintf_r+0x224>
 8002750:	059b      	lsls	r3, r3, #22
 8002752:	d403      	bmi.n	800275c <_vfprintf_r+0x224>
 8002754:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002758:	f003 f8de 	bl	8005918 <__retarget_lock_release_recursive>
 800275c:	4623      	mov	r3, r4
 800275e:	463a      	mov	r2, r7
 8002760:	4649      	mov	r1, r9
 8002762:	9803      	ldr	r0, [sp, #12]
 8002764:	f001 fc26 	bl	8003fb4 <__sbprintf>
 8002768:	9005      	str	r0, [sp, #20]
 800276a:	9805      	ldr	r0, [sp, #20]
 800276c:	b057      	add	sp, #348	; 0x15c
 800276e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002772:	9803      	ldr	r0, [sp, #12]
 8002774:	f002 fd7e 	bl	8005274 <__sinit>
 8002778:	e6f4      	b.n	8002564 <_vfprintf_r+0x2c>
 800277a:	f048 0810 	orr.w	r8, r8, #16
 800277e:	f018 0f20 	tst.w	r8, #32
 8002782:	f000 836c 	beq.w	8002e5e <_vfprintf_r+0x926>
 8002786:	9c08      	ldr	r4, [sp, #32]
 8002788:	3407      	adds	r4, #7
 800278a:	f024 0307 	bic.w	r3, r4, #7
 800278e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002792:	f103 0208 	add.w	r2, r3, #8
 8002796:	9208      	str	r2, [sp, #32]
 8002798:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800279c:	2200      	movs	r2, #0
 800279e:	e18c      	b.n	8002aba <_vfprintf_r+0x582>
 80027a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80027a2:	9907      	ldr	r1, [sp, #28]
 80027a4:	9803      	ldr	r0, [sp, #12]
 80027a6:	f004 f9f5 	bl	8006b94 <__sprint_r>
 80027aa:	2800      	cmp	r0, #0
 80027ac:	f041 8376 	bne.w	8003e9c <_vfprintf_r+0x1964>
 80027b0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80027b4:	e72c      	b.n	8002610 <_vfprintf_r+0xd8>
 80027b6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80027ba:	f003 f8ab 	bl	8005914 <__retarget_lock_acquire_recursive>
 80027be:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80027c2:	b293      	uxth	r3, r2
 80027c4:	e6d8      	b.n	8002578 <_vfprintf_r+0x40>
 80027c6:	bf00      	nop
	...
 80027d0:	4643      	mov	r3, r8
 80027d2:	069f      	lsls	r7, r3, #26
 80027d4:	f140 832f 	bpl.w	8002e36 <_vfprintf_r+0x8fe>
 80027d8:	9c08      	ldr	r4, [sp, #32]
 80027da:	3407      	adds	r4, #7
 80027dc:	f024 0407 	bic.w	r4, r4, #7
 80027e0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80027e4:	f104 0208 	add.w	r2, r4, #8
 80027e8:	9208      	str	r2, [sp, #32]
 80027ea:	4604      	mov	r4, r0
 80027ec:	460d      	mov	r5, r1
 80027ee:	2800      	cmp	r0, #0
 80027f0:	f171 0200 	sbcs.w	r2, r1, #0
 80027f4:	da05      	bge.n	8002802 <_vfprintf_r+0x2ca>
 80027f6:	222d      	movs	r2, #45	; 0x2d
 80027f8:	4264      	negs	r4, r4
 80027fa:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80027fe:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002802:	aa56      	add	r2, sp, #344	; 0x158
 8002804:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002808:	9204      	str	r2, [sp, #16]
 800280a:	f000 84b2 	beq.w	8003172 <_vfprintf_r+0xc3a>
 800280e:	2201      	movs	r2, #1
 8002810:	ea54 0105 	orrs.w	r1, r4, r5
 8002814:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002818:	f040 8159 	bne.w	8002ace <_vfprintf_r+0x596>
 800281c:	f1b9 0f00 	cmp.w	r9, #0
 8002820:	f040 8619 	bne.w	8003456 <_vfprintf_r+0xf1e>
 8002824:	2a00      	cmp	r2, #0
 8002826:	f040 8508 	bne.w	800323a <_vfprintf_r+0xd02>
 800282a:	f013 0301 	ands.w	r3, r3, #1
 800282e:	af56      	add	r7, sp, #344	; 0x158
 8002830:	9309      	str	r3, [sp, #36]	; 0x24
 8002832:	d002      	beq.n	800283a <_vfprintf_r+0x302>
 8002834:	2330      	movs	r3, #48	; 0x30
 8002836:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800283a:	2300      	movs	r3, #0
 800283c:	930a      	str	r3, [sp, #40]	; 0x28
 800283e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002840:	9314      	str	r3, [sp, #80]	; 0x50
 8002842:	9311      	str	r3, [sp, #68]	; 0x44
 8002844:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002846:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800284a:	454b      	cmp	r3, r9
 800284c:	bfb8      	it	lt
 800284e:	464b      	movlt	r3, r9
 8002850:	9304      	str	r3, [sp, #16]
 8002852:	b112      	cbz	r2, 800285a <_vfprintf_r+0x322>
 8002854:	9b04      	ldr	r3, [sp, #16]
 8002856:	3301      	adds	r3, #1
 8002858:	9304      	str	r3, [sp, #16]
 800285a:	f018 0302 	ands.w	r3, r8, #2
 800285e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002860:	d002      	beq.n	8002868 <_vfprintf_r+0x330>
 8002862:	9b04      	ldr	r3, [sp, #16]
 8002864:	3302      	adds	r3, #2
 8002866:	9304      	str	r3, [sp, #16]
 8002868:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800286c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800286e:	930e      	str	r3, [sp, #56]	; 0x38
 8002870:	d13f      	bne.n	80028f2 <_vfprintf_r+0x3ba>
 8002872:	9b06      	ldr	r3, [sp, #24]
 8002874:	9904      	ldr	r1, [sp, #16]
 8002876:	1a5d      	subs	r5, r3, r1
 8002878:	2d00      	cmp	r5, #0
 800287a:	dd3a      	ble.n	80028f2 <_vfprintf_r+0x3ba>
 800287c:	2d10      	cmp	r5, #16
 800287e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002880:	dd29      	ble.n	80028d6 <_vfprintf_r+0x39e>
 8002882:	4659      	mov	r1, fp
 8002884:	4620      	mov	r0, r4
 8002886:	9620      	str	r6, [sp, #128]	; 0x80
 8002888:	2310      	movs	r3, #16
 800288a:	9c03      	ldr	r4, [sp, #12]
 800288c:	9e07      	ldr	r6, [sp, #28]
 800288e:	46bb      	mov	fp, r7
 8002890:	e004      	b.n	800289c <_vfprintf_r+0x364>
 8002892:	3d10      	subs	r5, #16
 8002894:	2d10      	cmp	r5, #16
 8002896:	f101 0108 	add.w	r1, r1, #8
 800289a:	dd18      	ble.n	80028ce <_vfprintf_r+0x396>
 800289c:	3201      	adds	r2, #1
 800289e:	4fba      	ldr	r7, [pc, #744]	; (8002b88 <_vfprintf_r+0x650>)
 80028a0:	3010      	adds	r0, #16
 80028a2:	2a07      	cmp	r2, #7
 80028a4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80028a8:	e9c1 7300 	strd	r7, r3, [r1]
 80028ac:	ddf1      	ble.n	8002892 <_vfprintf_r+0x35a>
 80028ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80028b0:	4631      	mov	r1, r6
 80028b2:	4620      	mov	r0, r4
 80028b4:	930c      	str	r3, [sp, #48]	; 0x30
 80028b6:	f004 f96d 	bl	8006b94 <__sprint_r>
 80028ba:	2800      	cmp	r0, #0
 80028bc:	f040 843d 	bne.w	800313a <_vfprintf_r+0xc02>
 80028c0:	3d10      	subs	r5, #16
 80028c2:	2d10      	cmp	r5, #16
 80028c4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80028c8:	a92d      	add	r1, sp, #180	; 0xb4
 80028ca:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80028cc:	dce6      	bgt.n	800289c <_vfprintf_r+0x364>
 80028ce:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80028d0:	465f      	mov	r7, fp
 80028d2:	4604      	mov	r4, r0
 80028d4:	468b      	mov	fp, r1
 80028d6:	3201      	adds	r2, #1
 80028d8:	4bab      	ldr	r3, [pc, #684]	; (8002b88 <_vfprintf_r+0x650>)
 80028da:	442c      	add	r4, r5
 80028dc:	2a07      	cmp	r2, #7
 80028de:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028e2:	e9cb 3500 	strd	r3, r5, [fp]
 80028e6:	f300 84ff 	bgt.w	80032e8 <_vfprintf_r+0xdb0>
 80028ea:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80028ee:	f10b 0b08 	add.w	fp, fp, #8
 80028f2:	b172      	cbz	r2, 8002912 <_vfprintf_r+0x3da>
 80028f4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80028f6:	3201      	adds	r2, #1
 80028f8:	3401      	adds	r4, #1
 80028fa:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80028fe:	2101      	movs	r1, #1
 8002900:	2a07      	cmp	r2, #7
 8002902:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002906:	e9cb 0100 	strd	r0, r1, [fp]
 800290a:	f300 8418 	bgt.w	800313e <_vfprintf_r+0xc06>
 800290e:	f10b 0b08 	add.w	fp, fp, #8
 8002912:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002914:	b16b      	cbz	r3, 8002932 <_vfprintf_r+0x3fa>
 8002916:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002918:	3301      	adds	r3, #1
 800291a:	3402      	adds	r4, #2
 800291c:	a923      	add	r1, sp, #140	; 0x8c
 800291e:	2202      	movs	r2, #2
 8002920:	2b07      	cmp	r3, #7
 8002922:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002926:	e9cb 1200 	strd	r1, r2, [fp]
 800292a:	f300 8415 	bgt.w	8003158 <_vfprintf_r+0xc20>
 800292e:	f10b 0b08 	add.w	fp, fp, #8
 8002932:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002934:	2b80      	cmp	r3, #128	; 0x80
 8002936:	f000 8331 	beq.w	8002f9c <_vfprintf_r+0xa64>
 800293a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800293c:	eba9 0503 	sub.w	r5, r9, r3
 8002940:	2d00      	cmp	r5, #0
 8002942:	dd37      	ble.n	80029b4 <_vfprintf_r+0x47c>
 8002944:	2d10      	cmp	r5, #16
 8002946:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002948:	4b90      	ldr	r3, [pc, #576]	; (8002b8c <_vfprintf_r+0x654>)
 800294a:	dd28      	ble.n	800299e <_vfprintf_r+0x466>
 800294c:	4659      	mov	r1, fp
 800294e:	4620      	mov	r0, r4
 8002950:	46bb      	mov	fp, r7
 8002952:	f04f 0910 	mov.w	r9, #16
 8002956:	4637      	mov	r7, r6
 8002958:	461c      	mov	r4, r3
 800295a:	9e07      	ldr	r6, [sp, #28]
 800295c:	e004      	b.n	8002968 <_vfprintf_r+0x430>
 800295e:	3d10      	subs	r5, #16
 8002960:	2d10      	cmp	r5, #16
 8002962:	f101 0108 	add.w	r1, r1, #8
 8002966:	dd15      	ble.n	8002994 <_vfprintf_r+0x45c>
 8002968:	3201      	adds	r2, #1
 800296a:	3010      	adds	r0, #16
 800296c:	2a07      	cmp	r2, #7
 800296e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002972:	e9c1 4900 	strd	r4, r9, [r1]
 8002976:	ddf2      	ble.n	800295e <_vfprintf_r+0x426>
 8002978:	aa2a      	add	r2, sp, #168	; 0xa8
 800297a:	4631      	mov	r1, r6
 800297c:	9803      	ldr	r0, [sp, #12]
 800297e:	f004 f909 	bl	8006b94 <__sprint_r>
 8002982:	2800      	cmp	r0, #0
 8002984:	f040 83d9 	bne.w	800313a <_vfprintf_r+0xc02>
 8002988:	3d10      	subs	r5, #16
 800298a:	2d10      	cmp	r5, #16
 800298c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002990:	a92d      	add	r1, sp, #180	; 0xb4
 8002992:	dce9      	bgt.n	8002968 <_vfprintf_r+0x430>
 8002994:	463e      	mov	r6, r7
 8002996:	4623      	mov	r3, r4
 8002998:	465f      	mov	r7, fp
 800299a:	4604      	mov	r4, r0
 800299c:	468b      	mov	fp, r1
 800299e:	3201      	adds	r2, #1
 80029a0:	442c      	add	r4, r5
 80029a2:	2a07      	cmp	r2, #7
 80029a4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80029a8:	e9cb 3500 	strd	r3, r5, [fp]
 80029ac:	f300 83ef 	bgt.w	800318e <_vfprintf_r+0xc56>
 80029b0:	f10b 0b08 	add.w	fp, fp, #8
 80029b4:	f418 7f80 	tst.w	r8, #256	; 0x100
 80029b8:	f040 8280 	bne.w	8002ebc <_vfprintf_r+0x984>
 80029bc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80029be:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80029c0:	f8cb 7000 	str.w	r7, [fp]
 80029c4:	3301      	adds	r3, #1
 80029c6:	4414      	add	r4, r2
 80029c8:	2b07      	cmp	r3, #7
 80029ca:	942c      	str	r4, [sp, #176]	; 0xb0
 80029cc:	f8cb 2004 	str.w	r2, [fp, #4]
 80029d0:	932b      	str	r3, [sp, #172]	; 0xac
 80029d2:	f300 8392 	bgt.w	80030fa <_vfprintf_r+0xbc2>
 80029d6:	f10b 0b08 	add.w	fp, fp, #8
 80029da:	f018 0f04 	tst.w	r8, #4
 80029de:	d03b      	beq.n	8002a58 <_vfprintf_r+0x520>
 80029e0:	9b06      	ldr	r3, [sp, #24]
 80029e2:	9a04      	ldr	r2, [sp, #16]
 80029e4:	1a9d      	subs	r5, r3, r2
 80029e6:	2d00      	cmp	r5, #0
 80029e8:	dd36      	ble.n	8002a58 <_vfprintf_r+0x520>
 80029ea:	2d10      	cmp	r5, #16
 80029ec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80029ee:	dd21      	ble.n	8002a34 <_vfprintf_r+0x4fc>
 80029f0:	2610      	movs	r6, #16
 80029f2:	9f03      	ldr	r7, [sp, #12]
 80029f4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80029f8:	e004      	b.n	8002a04 <_vfprintf_r+0x4cc>
 80029fa:	3d10      	subs	r5, #16
 80029fc:	2d10      	cmp	r5, #16
 80029fe:	f10b 0b08 	add.w	fp, fp, #8
 8002a02:	dd17      	ble.n	8002a34 <_vfprintf_r+0x4fc>
 8002a04:	3301      	adds	r3, #1
 8002a06:	4a60      	ldr	r2, [pc, #384]	; (8002b88 <_vfprintf_r+0x650>)
 8002a08:	3410      	adds	r4, #16
 8002a0a:	2b07      	cmp	r3, #7
 8002a0c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002a10:	e9cb 2600 	strd	r2, r6, [fp]
 8002a14:	ddf1      	ble.n	80029fa <_vfprintf_r+0x4c2>
 8002a16:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a18:	4641      	mov	r1, r8
 8002a1a:	4638      	mov	r0, r7
 8002a1c:	f004 f8ba 	bl	8006b94 <__sprint_r>
 8002a20:	2800      	cmp	r0, #0
 8002a22:	f040 856c 	bne.w	80034fe <_vfprintf_r+0xfc6>
 8002a26:	3d10      	subs	r5, #16
 8002a28:	2d10      	cmp	r5, #16
 8002a2a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002a2e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002a32:	dce7      	bgt.n	8002a04 <_vfprintf_r+0x4cc>
 8002a34:	3301      	adds	r3, #1
 8002a36:	4a54      	ldr	r2, [pc, #336]	; (8002b88 <_vfprintf_r+0x650>)
 8002a38:	442c      	add	r4, r5
 8002a3a:	2b07      	cmp	r3, #7
 8002a3c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002a40:	e9cb 2500 	strd	r2, r5, [fp]
 8002a44:	dd08      	ble.n	8002a58 <_vfprintf_r+0x520>
 8002a46:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a48:	9907      	ldr	r1, [sp, #28]
 8002a4a:	9803      	ldr	r0, [sp, #12]
 8002a4c:	f004 f8a2 	bl	8006b94 <__sprint_r>
 8002a50:	2800      	cmp	r0, #0
 8002a52:	f040 82e9 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8002a56:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002a58:	9904      	ldr	r1, [sp, #16]
 8002a5a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002a5e:	428a      	cmp	r2, r1
 8002a60:	bfac      	ite	ge
 8002a62:	189b      	addge	r3, r3, r2
 8002a64:	185b      	addlt	r3, r3, r1
 8002a66:	9305      	str	r3, [sp, #20]
 8002a68:	2c00      	cmp	r4, #0
 8002a6a:	f040 82d5 	bne.w	8003018 <_vfprintf_r+0xae0>
 8002a6e:	2300      	movs	r3, #0
 8002a70:	932b      	str	r3, [sp, #172]	; 0xac
 8002a72:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002a74:	b11b      	cbz	r3, 8002a7e <_vfprintf_r+0x546>
 8002a76:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002a78:	9803      	ldr	r0, [sp, #12]
 8002a7a:	f002 fc9d 	bl	80053b8 <_free_r>
 8002a7e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002a82:	4657      	mov	r7, sl
 8002a84:	783b      	ldrb	r3, [r7, #0]
 8002a86:	2b00      	cmp	r3, #0
 8002a88:	f47f ada7 	bne.w	80025da <_vfprintf_r+0xa2>
 8002a8c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002a8e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002a92:	2b00      	cmp	r3, #0
 8002a94:	f041 80e7 	bne.w	8003c66 <_vfprintf_r+0x172e>
 8002a98:	2300      	movs	r3, #0
 8002a9a:	932b      	str	r3, [sp, #172]	; 0xac
 8002a9c:	e2cb      	b.n	8003036 <_vfprintf_r+0xafe>
 8002a9e:	4643      	mov	r3, r8
 8002aa0:	069a      	lsls	r2, r3, #26
 8002aa2:	f140 814e 	bpl.w	8002d42 <_vfprintf_r+0x80a>
 8002aa6:	9c08      	ldr	r4, [sp, #32]
 8002aa8:	3407      	adds	r4, #7
 8002aaa:	f024 0207 	bic.w	r2, r4, #7
 8002aae:	f102 0108 	add.w	r1, r2, #8
 8002ab2:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002ab6:	9108      	str	r1, [sp, #32]
 8002ab8:	2201      	movs	r2, #1
 8002aba:	2100      	movs	r1, #0
 8002abc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002ac0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002ac4:	a956      	add	r1, sp, #344	; 0x158
 8002ac6:	9104      	str	r1, [sp, #16]
 8002ac8:	f47f aea2 	bne.w	8002810 <_vfprintf_r+0x2d8>
 8002acc:	4698      	mov	r8, r3
 8002ace:	2a01      	cmp	r2, #1
 8002ad0:	f000 8350 	beq.w	8003174 <_vfprintf_r+0xc3c>
 8002ad4:	2a02      	cmp	r2, #2
 8002ad6:	f000 831b 	beq.w	8003110 <_vfprintf_r+0xbd8>
 8002ada:	a956      	add	r1, sp, #344	; 0x158
 8002adc:	e000      	b.n	8002ae0 <_vfprintf_r+0x5a8>
 8002ade:	4639      	mov	r1, r7
 8002ae0:	08e2      	lsrs	r2, r4, #3
 8002ae2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002ae6:	08e8      	lsrs	r0, r5, #3
 8002ae8:	f004 0307 	and.w	r3, r4, #7
 8002aec:	4605      	mov	r5, r0
 8002aee:	4614      	mov	r4, r2
 8002af0:	3330      	adds	r3, #48	; 0x30
 8002af2:	ea54 0205 	orrs.w	r2, r4, r5
 8002af6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002afa:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002afe:	d1ee      	bne.n	8002ade <_vfprintf_r+0x5a6>
 8002b00:	f018 0f01 	tst.w	r8, #1
 8002b04:	f000 8314 	beq.w	8003130 <_vfprintf_r+0xbf8>
 8002b08:	2b30      	cmp	r3, #48	; 0x30
 8002b0a:	f000 8311 	beq.w	8003130 <_vfprintf_r+0xbf8>
 8002b0e:	9a04      	ldr	r2, [sp, #16]
 8002b10:	3902      	subs	r1, #2
 8002b12:	2330      	movs	r3, #48	; 0x30
 8002b14:	1a52      	subs	r2, r2, r1
 8002b16:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002b1a:	9209      	str	r2, [sp, #36]	; 0x24
 8002b1c:	460f      	mov	r7, r1
 8002b1e:	e68c      	b.n	800283a <_vfprintf_r+0x302>
 8002b20:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b24:	2200      	movs	r2, #0
 8002b26:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b2a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002b2e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002b32:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b36:	2b09      	cmp	r3, #9
 8002b38:	d9f5      	bls.n	8002b26 <_vfprintf_r+0x5ee>
 8002b3a:	9206      	str	r2, [sp, #24]
 8002b3c:	e57c      	b.n	8002638 <_vfprintf_r+0x100>
 8002b3e:	4b14      	ldr	r3, [pc, #80]	; (8002b90 <_vfprintf_r+0x658>)
 8002b40:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b42:	f018 0f20 	tst.w	r8, #32
 8002b46:	f000 8114 	beq.w	8002d72 <_vfprintf_r+0x83a>
 8002b4a:	9c08      	ldr	r4, [sp, #32]
 8002b4c:	3407      	adds	r4, #7
 8002b4e:	f024 0307 	bic.w	r3, r4, #7
 8002b52:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002b56:	f103 0208 	add.w	r2, r3, #8
 8002b5a:	9208      	str	r2, [sp, #32]
 8002b5c:	f018 0f01 	tst.w	r8, #1
 8002b60:	d009      	beq.n	8002b76 <_vfprintf_r+0x63e>
 8002b62:	ea54 0305 	orrs.w	r3, r4, r5
 8002b66:	d006      	beq.n	8002b76 <_vfprintf_r+0x63e>
 8002b68:	2330      	movs	r3, #48	; 0x30
 8002b6a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002b6e:	f048 0802 	orr.w	r8, r8, #2
 8002b72:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002b76:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002b7a:	2202      	movs	r2, #2
 8002b7c:	e79d      	b.n	8002aba <_vfprintf_r+0x582>
 8002b7e:	f048 0801 	orr.w	r8, r8, #1
 8002b82:	f89a 6000 	ldrb.w	r6, [sl]
 8002b86:	e555      	b.n	8002634 <_vfprintf_r+0xfc>
 8002b88:	0800740c 	.word	0x0800740c
 8002b8c:	0800741c 	.word	0x0800741c
 8002b90:	080073d8 	.word	0x080073d8
 8002b94:	9e03      	ldr	r6, [sp, #12]
 8002b96:	4630      	mov	r0, r6
 8002b98:	f002 feaa 	bl	80058f0 <_localeconv_r>
 8002b9c:	6843      	ldr	r3, [r0, #4]
 8002b9e:	9318      	str	r3, [sp, #96]	; 0x60
 8002ba0:	4618      	mov	r0, r3
 8002ba2:	f7fd fd4d 	bl	8000640 <strlen>
 8002ba6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002ba8:	4604      	mov	r4, r0
 8002baa:	4630      	mov	r0, r6
 8002bac:	f002 fea0 	bl	80058f0 <_localeconv_r>
 8002bb0:	6883      	ldr	r3, [r0, #8]
 8002bb2:	931a      	str	r3, [sp, #104]	; 0x68
 8002bb4:	2c00      	cmp	r4, #0
 8002bb6:	f43f adb8 	beq.w	800272a <_vfprintf_r+0x1f2>
 8002bba:	f89a 6000 	ldrb.w	r6, [sl]
 8002bbe:	2b00      	cmp	r3, #0
 8002bc0:	f43f ad38 	beq.w	8002634 <_vfprintf_r+0xfc>
 8002bc4:	781b      	ldrb	r3, [r3, #0]
 8002bc6:	2b00      	cmp	r3, #0
 8002bc8:	f43f ad34 	beq.w	8002634 <_vfprintf_r+0xfc>
 8002bcc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002bd0:	e530      	b.n	8002634 <_vfprintf_r+0xfc>
 8002bd2:	9b08      	ldr	r3, [sp, #32]
 8002bd4:	f89a 6000 	ldrb.w	r6, [sl]
 8002bd8:	681a      	ldr	r2, [r3, #0]
 8002bda:	9206      	str	r2, [sp, #24]
 8002bdc:	2a00      	cmp	r2, #0
 8002bde:	f103 0304 	add.w	r3, r3, #4
 8002be2:	f2c0 8697 	blt.w	8003914 <_vfprintf_r+0x13dc>
 8002be6:	9308      	str	r3, [sp, #32]
 8002be8:	e524      	b.n	8002634 <_vfprintf_r+0xfc>
 8002bea:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002bee:	f89a 6000 	ldrb.w	r6, [sl]
 8002bf2:	e51f      	b.n	8002634 <_vfprintf_r+0xfc>
 8002bf4:	f89a 6000 	ldrb.w	r6, [sl]
 8002bf8:	f048 0804 	orr.w	r8, r8, #4
 8002bfc:	e51a      	b.n	8002634 <_vfprintf_r+0xfc>
 8002bfe:	f89a 6000 	ldrb.w	r6, [sl]
 8002c02:	2e2a      	cmp	r6, #42	; 0x2a
 8002c04:	f10a 0201 	add.w	r2, sl, #1
 8002c08:	f001 81b0 	beq.w	8003f6c <_vfprintf_r+0x1a34>
 8002c0c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c10:	2b09      	cmp	r3, #9
 8002c12:	4692      	mov	sl, r2
 8002c14:	f04f 0900 	mov.w	r9, #0
 8002c18:	f63f ad0e 	bhi.w	8002638 <_vfprintf_r+0x100>
 8002c1c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002c20:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002c24:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002c28:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c2c:	2b09      	cmp	r3, #9
 8002c2e:	d9f5      	bls.n	8002c1c <_vfprintf_r+0x6e4>
 8002c30:	e502      	b.n	8002638 <_vfprintf_r+0x100>
 8002c32:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002c36:	f89a 6000 	ldrb.w	r6, [sl]
 8002c3a:	e4fb      	b.n	8002634 <_vfprintf_r+0xfc>
 8002c3c:	9c08      	ldr	r4, [sp, #32]
 8002c3e:	3407      	adds	r4, #7
 8002c40:	f024 0407 	bic.w	r4, r4, #7
 8002c44:	ed94 7b00 	vldr	d7, [r4]
 8002c48:	ec52 1b17 	vmov	r1, r2, d7
 8002c4c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002c50:	931d      	str	r3, [sp, #116]	; 0x74
 8002c52:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002c56:	3408      	adds	r4, #8
 8002c58:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002c5c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002c60:	4bba      	ldr	r3, [pc, #744]	; (8002f4c <_vfprintf_r+0xa14>)
 8002c62:	9408      	str	r4, [sp, #32]
 8002c64:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002c68:	f7fe fa00 	bl	800106c <__aeabi_dcmpun>
 8002c6c:	2800      	cmp	r0, #0
 8002c6e:	f040 846f 	bne.w	8003550 <_vfprintf_r+0x1018>
 8002c72:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002c76:	4bb5      	ldr	r3, [pc, #724]	; (8002f4c <_vfprintf_r+0xa14>)
 8002c78:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002c7c:	f7fe f9d8 	bl	8001030 <__aeabi_dcmple>
 8002c80:	2800      	cmp	r0, #0
 8002c82:	f040 8465 	bne.w	8003550 <_vfprintf_r+0x1018>
 8002c86:	2200      	movs	r2, #0
 8002c88:	2300      	movs	r3, #0
 8002c8a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002c8e:	f7fe f9c5 	bl	800101c <__aeabi_dcmplt>
 8002c92:	2800      	cmp	r0, #0
 8002c94:	f040 855b 	bne.w	800374e <_vfprintf_r+0x1216>
 8002c98:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c9c:	4fac      	ldr	r7, [pc, #688]	; (8002f50 <_vfprintf_r+0xa18>)
 8002c9e:	4bad      	ldr	r3, [pc, #692]	; (8002f54 <_vfprintf_r+0xa1c>)
 8002ca0:	2000      	movs	r0, #0
 8002ca2:	2103      	movs	r1, #3
 8002ca4:	9104      	str	r1, [sp, #16]
 8002ca6:	900a      	str	r0, [sp, #40]	; 0x28
 8002ca8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002cac:	2e47      	cmp	r6, #71	; 0x47
 8002cae:	bfd8      	it	le
 8002cb0:	461f      	movle	r7, r3
 8002cb2:	9109      	str	r1, [sp, #36]	; 0x24
 8002cb4:	4681      	mov	r9, r0
 8002cb6:	900f      	str	r0, [sp, #60]	; 0x3c
 8002cb8:	9014      	str	r0, [sp, #80]	; 0x50
 8002cba:	9011      	str	r0, [sp, #68]	; 0x44
 8002cbc:	e5c9      	b.n	8002852 <_vfprintf_r+0x31a>
 8002cbe:	9808      	ldr	r0, [sp, #32]
 8002cc0:	2300      	movs	r3, #0
 8002cc2:	6801      	ldr	r1, [r0, #0]
 8002cc4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002cc8:	461a      	mov	r2, r3
 8002cca:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002cce:	2301      	movs	r3, #1
 8002cd0:	1d01      	adds	r1, r0, #4
 8002cd2:	9304      	str	r3, [sp, #16]
 8002cd4:	920a      	str	r2, [sp, #40]	; 0x28
 8002cd6:	4691      	mov	r9, r2
 8002cd8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002cda:	9214      	str	r2, [sp, #80]	; 0x50
 8002cdc:	9211      	str	r2, [sp, #68]	; 0x44
 8002cde:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002ce2:	af3d      	add	r7, sp, #244	; 0xf4
 8002ce4:	e5b9      	b.n	800285a <_vfprintf_r+0x322>
 8002ce6:	9b08      	ldr	r3, [sp, #32]
 8002ce8:	681f      	ldr	r7, [r3, #0]
 8002cea:	2500      	movs	r5, #0
 8002cec:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002cf0:	1d1c      	adds	r4, r3, #4
 8002cf2:	2f00      	cmp	r7, #0
 8002cf4:	f000 8639 	beq.w	800396a <_vfprintf_r+0x1432>
 8002cf8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002cfc:	f000 8711 	beq.w	8003b22 <_vfprintf_r+0x15ea>
 8002d00:	464a      	mov	r2, r9
 8002d02:	4629      	mov	r1, r5
 8002d04:	4638      	mov	r0, r7
 8002d06:	f7fd fd0b 	bl	8000720 <memchr>
 8002d0a:	900a      	str	r0, [sp, #40]	; 0x28
 8002d0c:	2800      	cmp	r0, #0
 8002d0e:	f000 85e7 	beq.w	80038e0 <_vfprintf_r+0x13a8>
 8002d12:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002d14:	1bdb      	subs	r3, r3, r7
 8002d16:	9309      	str	r3, [sp, #36]	; 0x24
 8002d18:	46a9      	mov	r9, r5
 8002d1a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002d1e:	9408      	str	r4, [sp, #32]
 8002d20:	9304      	str	r3, [sp, #16]
 8002d22:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002d26:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002d2a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002d2e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002d32:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d36:	e58c      	b.n	8002852 <_vfprintf_r+0x31a>
 8002d38:	f048 0310 	orr.w	r3, r8, #16
 8002d3c:	069a      	lsls	r2, r3, #26
 8002d3e:	f53f aeb2 	bmi.w	8002aa6 <_vfprintf_r+0x56e>
 8002d42:	9a08      	ldr	r2, [sp, #32]
 8002d44:	06df      	lsls	r7, r3, #27
 8002d46:	f102 0104 	add.w	r1, r2, #4
 8002d4a:	f100 837e 	bmi.w	800344a <_vfprintf_r+0xf12>
 8002d4e:	065d      	lsls	r5, r3, #25
 8002d50:	9a08      	ldr	r2, [sp, #32]
 8002d52:	f100 84e4 	bmi.w	800371e <_vfprintf_r+0x11e6>
 8002d56:	059c      	lsls	r4, r3, #22
 8002d58:	f140 8377 	bpl.w	800344a <_vfprintf_r+0xf12>
 8002d5c:	7814      	ldrb	r4, [r2, #0]
 8002d5e:	9108      	str	r1, [sp, #32]
 8002d60:	2500      	movs	r5, #0
 8002d62:	2201      	movs	r2, #1
 8002d64:	e6a9      	b.n	8002aba <_vfprintf_r+0x582>
 8002d66:	4b7c      	ldr	r3, [pc, #496]	; (8002f58 <_vfprintf_r+0xa20>)
 8002d68:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d6a:	f018 0f20 	tst.w	r8, #32
 8002d6e:	f47f aeec 	bne.w	8002b4a <_vfprintf_r+0x612>
 8002d72:	9a08      	ldr	r2, [sp, #32]
 8002d74:	f018 0f10 	tst.w	r8, #16
 8002d78:	f102 0304 	add.w	r3, r2, #4
 8002d7c:	f040 8354 	bne.w	8003428 <_vfprintf_r+0xef0>
 8002d80:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d84:	9a08      	ldr	r2, [sp, #32]
 8002d86:	f040 84d0 	bne.w	800372a <_vfprintf_r+0x11f2>
 8002d8a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002d8e:	f000 834b 	beq.w	8003428 <_vfprintf_r+0xef0>
 8002d92:	7814      	ldrb	r4, [r2, #0]
 8002d94:	9308      	str	r3, [sp, #32]
 8002d96:	2500      	movs	r5, #0
 8002d98:	e6e0      	b.n	8002b5c <_vfprintf_r+0x624>
 8002d9a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002d9e:	f89a 6000 	ldrb.w	r6, [sl]
 8002da2:	2b00      	cmp	r3, #0
 8002da4:	f47f ac46 	bne.w	8002634 <_vfprintf_r+0xfc>
 8002da8:	2320      	movs	r3, #32
 8002daa:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002dae:	e441      	b.n	8002634 <_vfprintf_r+0xfc>
 8002db0:	f89a 6000 	ldrb.w	r6, [sl]
 8002db4:	2e6c      	cmp	r6, #108	; 0x6c
 8002db6:	bf03      	ittte	eq
 8002db8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002dbc:	f048 0820 	orreq.w	r8, r8, #32
 8002dc0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002dc4:	f048 0810 	orrne.w	r8, r8, #16
 8002dc8:	e434      	b.n	8002634 <_vfprintf_r+0xfc>
 8002dca:	9a08      	ldr	r2, [sp, #32]
 8002dcc:	f018 0f20 	tst.w	r8, #32
 8002dd0:	f852 3b04 	ldr.w	r3, [r2], #4
 8002dd4:	9208      	str	r2, [sp, #32]
 8002dd6:	f000 83a1 	beq.w	800351c <_vfprintf_r+0xfe4>
 8002dda:	9a05      	ldr	r2, [sp, #20]
 8002ddc:	4610      	mov	r0, r2
 8002dde:	17d1      	asrs	r1, r2, #31
 8002de0:	e9c3 0100 	strd	r0, r1, [r3]
 8002de4:	4657      	mov	r7, sl
 8002de6:	e64d      	b.n	8002a84 <_vfprintf_r+0x54c>
 8002de8:	f89a 6000 	ldrb.w	r6, [sl]
 8002dec:	2e68      	cmp	r6, #104	; 0x68
 8002dee:	bf03      	ittte	eq
 8002df0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002df4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002df8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002dfc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002e00:	e418      	b.n	8002634 <_vfprintf_r+0xfc>
 8002e02:	9908      	ldr	r1, [sp, #32]
 8002e04:	4b55      	ldr	r3, [pc, #340]	; (8002f5c <_vfprintf_r+0xa24>)
 8002e06:	680c      	ldr	r4, [r1, #0]
 8002e08:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e0a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002e0e:	3104      	adds	r1, #4
 8002e10:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002e14:	f048 0302 	orr.w	r3, r8, #2
 8002e18:	9108      	str	r1, [sp, #32]
 8002e1a:	2500      	movs	r5, #0
 8002e1c:	2202      	movs	r2, #2
 8002e1e:	2678      	movs	r6, #120	; 0x78
 8002e20:	e64b      	b.n	8002aba <_vfprintf_r+0x582>
 8002e22:	f048 0808 	orr.w	r8, r8, #8
 8002e26:	f89a 6000 	ldrb.w	r6, [sl]
 8002e2a:	e403      	b.n	8002634 <_vfprintf_r+0xfc>
 8002e2c:	f048 0310 	orr.w	r3, r8, #16
 8002e30:	069f      	lsls	r7, r3, #26
 8002e32:	f53f acd1 	bmi.w	80027d8 <_vfprintf_r+0x2a0>
 8002e36:	9908      	ldr	r1, [sp, #32]
 8002e38:	06dd      	lsls	r5, r3, #27
 8002e3a:	f101 0204 	add.w	r2, r1, #4
 8002e3e:	f100 82fd 	bmi.w	800343c <_vfprintf_r+0xf04>
 8002e42:	065c      	lsls	r4, r3, #25
 8002e44:	9908      	ldr	r1, [sp, #32]
 8002e46:	f100 8475 	bmi.w	8003734 <_vfprintf_r+0x11fc>
 8002e4a:	0598      	lsls	r0, r3, #22
 8002e4c:	f140 82f6 	bpl.w	800343c <_vfprintf_r+0xf04>
 8002e50:	f991 4000 	ldrsb.w	r4, [r1]
 8002e54:	9208      	str	r2, [sp, #32]
 8002e56:	17e5      	asrs	r5, r4, #31
 8002e58:	4620      	mov	r0, r4
 8002e5a:	4629      	mov	r1, r5
 8002e5c:	e4c7      	b.n	80027ee <_vfprintf_r+0x2b6>
 8002e5e:	9a08      	ldr	r2, [sp, #32]
 8002e60:	f018 0f10 	tst.w	r8, #16
 8002e64:	f102 0304 	add.w	r3, r2, #4
 8002e68:	f040 82e3 	bne.w	8003432 <_vfprintf_r+0xefa>
 8002e6c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002e70:	9a08      	ldr	r2, [sp, #32]
 8002e72:	f040 8467 	bne.w	8003744 <_vfprintf_r+0x120c>
 8002e76:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002e7a:	f000 82da 	beq.w	8003432 <_vfprintf_r+0xefa>
 8002e7e:	7814      	ldrb	r4, [r2, #0]
 8002e80:	9308      	str	r3, [sp, #32]
 8002e82:	2500      	movs	r5, #0
 8002e84:	e488      	b.n	8002798 <_vfprintf_r+0x260>
 8002e86:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002e8a:	f002 fd45 	bl	8005918 <__retarget_lock_release_recursive>
 8002e8e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002e92:	9305      	str	r3, [sp, #20]
 8002e94:	e443      	b.n	800271e <_vfprintf_r+0x1e6>
 8002e96:	2e00      	cmp	r6, #0
 8002e98:	f43f adf8 	beq.w	8002a8c <_vfprintf_r+0x554>
 8002e9c:	2300      	movs	r3, #0
 8002e9e:	2101      	movs	r1, #1
 8002ea0:	461a      	mov	r2, r3
 8002ea2:	9104      	str	r1, [sp, #16]
 8002ea4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002ea8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002eac:	930a      	str	r3, [sp, #40]	; 0x28
 8002eae:	4699      	mov	r9, r3
 8002eb0:	930f      	str	r3, [sp, #60]	; 0x3c
 8002eb2:	9314      	str	r3, [sp, #80]	; 0x50
 8002eb4:	9311      	str	r3, [sp, #68]	; 0x44
 8002eb6:	9109      	str	r1, [sp, #36]	; 0x24
 8002eb8:	af3d      	add	r7, sp, #244	; 0xf4
 8002eba:	e4ce      	b.n	800285a <_vfprintf_r+0x322>
 8002ebc:	2e65      	cmp	r6, #101	; 0x65
 8002ebe:	f340 80ca 	ble.w	8003056 <_vfprintf_r+0xb1e>
 8002ec2:	2200      	movs	r2, #0
 8002ec4:	2300      	movs	r3, #0
 8002ec6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002eca:	f7fe f89d 	bl	8001008 <__aeabi_dcmpeq>
 8002ece:	2800      	cmp	r0, #0
 8002ed0:	f000 8169 	beq.w	80031a6 <_vfprintf_r+0xc6e>
 8002ed4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ed6:	4a22      	ldr	r2, [pc, #136]	; (8002f60 <_vfprintf_r+0xa28>)
 8002ed8:	f8cb 2000 	str.w	r2, [fp]
 8002edc:	3301      	adds	r3, #1
 8002ede:	3401      	adds	r4, #1
 8002ee0:	2201      	movs	r2, #1
 8002ee2:	2b07      	cmp	r3, #7
 8002ee4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ee8:	f8cb 2004 	str.w	r2, [fp, #4]
 8002eec:	f300 8406 	bgt.w	80036fc <_vfprintf_r+0x11c4>
 8002ef0:	f10b 0b08 	add.w	fp, fp, #8
 8002ef4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002ef6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002ef8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002efa:	4293      	cmp	r3, r2
 8002efc:	db03      	blt.n	8002f06 <_vfprintf_r+0x9ce>
 8002efe:	f018 0f01 	tst.w	r8, #1
 8002f02:	f43f ad6a 	beq.w	80029da <_vfprintf_r+0x4a2>
 8002f06:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f08:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f0a:	f8cb 2000 	str.w	r2, [fp]
 8002f0e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002f10:	f8cb 2004 	str.w	r2, [fp, #4]
 8002f14:	3301      	adds	r3, #1
 8002f16:	4414      	add	r4, r2
 8002f18:	2b07      	cmp	r3, #7
 8002f1a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f1e:	f300 8517 	bgt.w	8003950 <_vfprintf_r+0x1418>
 8002f22:	f10b 0b08 	add.w	fp, fp, #8
 8002f26:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002f28:	1e5d      	subs	r5, r3, #1
 8002f2a:	2d00      	cmp	r5, #0
 8002f2c:	f77f ad55 	ble.w	80029da <_vfprintf_r+0x4a2>
 8002f30:	2d10      	cmp	r5, #16
 8002f32:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f34:	4b0b      	ldr	r3, [pc, #44]	; (8002f64 <_vfprintf_r+0xa2c>)
 8002f36:	f340 82e7 	ble.w	8003508 <_vfprintf_r+0xfd0>
 8002f3a:	4619      	mov	r1, r3
 8002f3c:	2610      	movs	r6, #16
 8002f3e:	4623      	mov	r3, r4
 8002f40:	9f03      	ldr	r7, [sp, #12]
 8002f42:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f46:	460c      	mov	r4, r1
 8002f48:	e014      	b.n	8002f74 <_vfprintf_r+0xa3c>
 8002f4a:	bf00      	nop
 8002f4c:	7fefffff 	.word	0x7fefffff
 8002f50:	080073cc 	.word	0x080073cc
 8002f54:	080073c8 	.word	0x080073c8
 8002f58:	080073ec 	.word	0x080073ec
 8002f5c:	080073d8 	.word	0x080073d8
 8002f60:	08007408 	.word	0x08007408
 8002f64:	0800741c 	.word	0x0800741c
 8002f68:	f10b 0b08 	add.w	fp, fp, #8
 8002f6c:	3d10      	subs	r5, #16
 8002f6e:	2d10      	cmp	r5, #16
 8002f70:	f340 82c7 	ble.w	8003502 <_vfprintf_r+0xfca>
 8002f74:	3201      	adds	r2, #1
 8002f76:	3310      	adds	r3, #16
 8002f78:	2a07      	cmp	r2, #7
 8002f7a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002f7e:	e9cb 4600 	strd	r4, r6, [fp]
 8002f82:	ddf1      	ble.n	8002f68 <_vfprintf_r+0xa30>
 8002f84:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f86:	4649      	mov	r1, r9
 8002f88:	4638      	mov	r0, r7
 8002f8a:	f003 fe03 	bl	8006b94 <__sprint_r>
 8002f8e:	2800      	cmp	r0, #0
 8002f90:	d14c      	bne.n	800302c <_vfprintf_r+0xaf4>
 8002f92:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002f96:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f9a:	e7e7      	b.n	8002f6c <_vfprintf_r+0xa34>
 8002f9c:	9b06      	ldr	r3, [sp, #24]
 8002f9e:	9a04      	ldr	r2, [sp, #16]
 8002fa0:	1a9d      	subs	r5, r3, r2
 8002fa2:	2d00      	cmp	r5, #0
 8002fa4:	f77f acc9 	ble.w	800293a <_vfprintf_r+0x402>
 8002fa8:	2d10      	cmp	r5, #16
 8002faa:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002fac:	4bbc      	ldr	r3, [pc, #752]	; (80032a0 <_vfprintf_r+0xd68>)
 8002fae:	dd27      	ble.n	8003000 <_vfprintf_r+0xac8>
 8002fb0:	4659      	mov	r1, fp
 8002fb2:	4620      	mov	r0, r4
 8002fb4:	46bb      	mov	fp, r7
 8002fb6:	461c      	mov	r4, r3
 8002fb8:	4637      	mov	r7, r6
 8002fba:	9e07      	ldr	r6, [sp, #28]
 8002fbc:	e004      	b.n	8002fc8 <_vfprintf_r+0xa90>
 8002fbe:	3d10      	subs	r5, #16
 8002fc0:	2d10      	cmp	r5, #16
 8002fc2:	f101 0108 	add.w	r1, r1, #8
 8002fc6:	dd16      	ble.n	8002ff6 <_vfprintf_r+0xabe>
 8002fc8:	3201      	adds	r2, #1
 8002fca:	3010      	adds	r0, #16
 8002fcc:	2310      	movs	r3, #16
 8002fce:	2a07      	cmp	r2, #7
 8002fd0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002fd4:	600c      	str	r4, [r1, #0]
 8002fd6:	604b      	str	r3, [r1, #4]
 8002fd8:	ddf1      	ble.n	8002fbe <_vfprintf_r+0xa86>
 8002fda:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fdc:	4631      	mov	r1, r6
 8002fde:	9803      	ldr	r0, [sp, #12]
 8002fe0:	f003 fdd8 	bl	8006b94 <__sprint_r>
 8002fe4:	2800      	cmp	r0, #0
 8002fe6:	f040 80a8 	bne.w	800313a <_vfprintf_r+0xc02>
 8002fea:	3d10      	subs	r5, #16
 8002fec:	2d10      	cmp	r5, #16
 8002fee:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ff2:	a92d      	add	r1, sp, #180	; 0xb4
 8002ff4:	dce8      	bgt.n	8002fc8 <_vfprintf_r+0xa90>
 8002ff6:	463e      	mov	r6, r7
 8002ff8:	4623      	mov	r3, r4
 8002ffa:	465f      	mov	r7, fp
 8002ffc:	4604      	mov	r4, r0
 8002ffe:	468b      	mov	fp, r1
 8003000:	3201      	adds	r2, #1
 8003002:	442c      	add	r4, r5
 8003004:	2a07      	cmp	r2, #7
 8003006:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800300a:	e9cb 3500 	strd	r3, r5, [fp]
 800300e:	f300 8292 	bgt.w	8003536 <_vfprintf_r+0xffe>
 8003012:	f10b 0b08 	add.w	fp, fp, #8
 8003016:	e490      	b.n	800293a <_vfprintf_r+0x402>
 8003018:	aa2a      	add	r2, sp, #168	; 0xa8
 800301a:	9907      	ldr	r1, [sp, #28]
 800301c:	9803      	ldr	r0, [sp, #12]
 800301e:	f003 fdb9 	bl	8006b94 <__sprint_r>
 8003022:	2800      	cmp	r0, #0
 8003024:	f43f ad23 	beq.w	8002a6e <_vfprintf_r+0x536>
 8003028:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800302c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800302e:	b111      	cbz	r1, 8003036 <_vfprintf_r+0xafe>
 8003030:	9803      	ldr	r0, [sp, #12]
 8003032:	f002 f9c1 	bl	80053b8 <_free_r>
 8003036:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800303a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800303e:	07d0      	lsls	r0, r2, #31
 8003040:	d402      	bmi.n	8003048 <_vfprintf_r+0xb10>
 8003042:	0599      	lsls	r1, r3, #22
 8003044:	f140 81d0 	bpl.w	80033e8 <_vfprintf_r+0xeb0>
 8003048:	065a      	lsls	r2, r3, #25
 800304a:	f53f ab65 	bmi.w	8002718 <_vfprintf_r+0x1e0>
 800304e:	9805      	ldr	r0, [sp, #20]
 8003050:	b057      	add	sp, #348	; 0x15c
 8003052:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003056:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003058:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800305a:	2a01      	cmp	r2, #1
 800305c:	f104 0401 	add.w	r4, r4, #1
 8003060:	f103 0501 	add.w	r5, r3, #1
 8003064:	f10b 0608 	add.w	r6, fp, #8
 8003068:	f340 811c 	ble.w	80032a4 <_vfprintf_r+0xd6c>
 800306c:	2301      	movs	r3, #1
 800306e:	2d07      	cmp	r5, #7
 8003070:	f8cb 7000 	str.w	r7, [fp]
 8003074:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003078:	f8cb 3004 	str.w	r3, [fp, #4]
 800307c:	f300 81bb 	bgt.w	80033f6 <_vfprintf_r+0xebe>
 8003080:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003082:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003084:	1c69      	adds	r1, r5, #1
 8003086:	441c      	add	r4, r3
 8003088:	2907      	cmp	r1, #7
 800308a:	910b      	str	r1, [sp, #44]	; 0x2c
 800308c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003090:	e9c6 2300 	strd	r2, r3, [r6]
 8003094:	f300 81bb 	bgt.w	800340e <_vfprintf_r+0xed6>
 8003098:	3608      	adds	r6, #8
 800309a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800309c:	1c53      	adds	r3, r2, #1
 800309e:	461d      	mov	r5, r3
 80030a0:	9509      	str	r5, [sp, #36]	; 0x24
 80030a2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80030a4:	930e      	str	r3, [sp, #56]	; 0x38
 80030a6:	2200      	movs	r2, #0
 80030a8:	2300      	movs	r3, #0
 80030aa:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80030ae:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80030b2:	f106 0b08 	add.w	fp, r6, #8
 80030b6:	f7fd ffa7 	bl	8001008 <__aeabi_dcmpeq>
 80030ba:	2800      	cmp	r0, #0
 80030bc:	f040 80c2 	bne.w	8003244 <_vfprintf_r+0xd0c>
 80030c0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80030c2:	f8c6 9004 	str.w	r9, [r6, #4]
 80030c6:	3701      	adds	r7, #1
 80030c8:	444c      	add	r4, r9
 80030ca:	2d07      	cmp	r5, #7
 80030cc:	6037      	str	r7, [r6, #0]
 80030ce:	942c      	str	r4, [sp, #176]	; 0xb0
 80030d0:	952b      	str	r5, [sp, #172]	; 0xac
 80030d2:	f300 80f9 	bgt.w	80032c8 <_vfprintf_r+0xd90>
 80030d6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80030d8:	f106 0310 	add.w	r3, r6, #16
 80030dc:	3202      	adds	r2, #2
 80030de:	465e      	mov	r6, fp
 80030e0:	9209      	str	r2, [sp, #36]	; 0x24
 80030e2:	469b      	mov	fp, r3
 80030e4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80030e6:	6072      	str	r2, [r6, #4]
 80030e8:	4414      	add	r4, r2
 80030ea:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80030ec:	942c      	str	r4, [sp, #176]	; 0xb0
 80030ee:	ab26      	add	r3, sp, #152	; 0x98
 80030f0:	2a07      	cmp	r2, #7
 80030f2:	922b      	str	r2, [sp, #172]	; 0xac
 80030f4:	6033      	str	r3, [r6, #0]
 80030f6:	f77f ac70 	ble.w	80029da <_vfprintf_r+0x4a2>
 80030fa:	aa2a      	add	r2, sp, #168	; 0xa8
 80030fc:	9907      	ldr	r1, [sp, #28]
 80030fe:	9803      	ldr	r0, [sp, #12]
 8003100:	f003 fd48 	bl	8006b94 <__sprint_r>
 8003104:	2800      	cmp	r0, #0
 8003106:	d18f      	bne.n	8003028 <_vfprintf_r+0xaf0>
 8003108:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800310a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800310e:	e464      	b.n	80029da <_vfprintf_r+0x4a2>
 8003110:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003112:	af56      	add	r7, sp, #344	; 0x158
 8003114:	0923      	lsrs	r3, r4, #4
 8003116:	f004 010f 	and.w	r1, r4, #15
 800311a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800311e:	092a      	lsrs	r2, r5, #4
 8003120:	461c      	mov	r4, r3
 8003122:	4615      	mov	r5, r2
 8003124:	5c43      	ldrb	r3, [r0, r1]
 8003126:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800312a:	ea54 0305 	orrs.w	r3, r4, r5
 800312e:	d1f1      	bne.n	8003114 <_vfprintf_r+0xbdc>
 8003130:	9b04      	ldr	r3, [sp, #16]
 8003132:	1bdb      	subs	r3, r3, r7
 8003134:	9309      	str	r3, [sp, #36]	; 0x24
 8003136:	f7ff bb80 	b.w	800283a <_vfprintf_r+0x302>
 800313a:	46b1      	mov	r9, r6
 800313c:	e776      	b.n	800302c <_vfprintf_r+0xaf4>
 800313e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003140:	9907      	ldr	r1, [sp, #28]
 8003142:	9803      	ldr	r0, [sp, #12]
 8003144:	f003 fd26 	bl	8006b94 <__sprint_r>
 8003148:	2800      	cmp	r0, #0
 800314a:	f47f af6d 	bne.w	8003028 <_vfprintf_r+0xaf0>
 800314e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003150:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003154:	f7ff bbdd 	b.w	8002912 <_vfprintf_r+0x3da>
 8003158:	aa2a      	add	r2, sp, #168	; 0xa8
 800315a:	9907      	ldr	r1, [sp, #28]
 800315c:	9803      	ldr	r0, [sp, #12]
 800315e:	f003 fd19 	bl	8006b94 <__sprint_r>
 8003162:	2800      	cmp	r0, #0
 8003164:	f47f af60 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003168:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800316a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800316e:	f7ff bbe0 	b.w	8002932 <_vfprintf_r+0x3fa>
 8003172:	4698      	mov	r8, r3
 8003174:	2d00      	cmp	r5, #0
 8003176:	bf08      	it	eq
 8003178:	2c0a      	cmpeq	r4, #10
 800317a:	f080 8170 	bcs.w	800345e <_vfprintf_r+0xf26>
 800317e:	af56      	add	r7, sp, #344	; 0x158
 8003180:	3430      	adds	r4, #48	; 0x30
 8003182:	2301      	movs	r3, #1
 8003184:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003188:	9309      	str	r3, [sp, #36]	; 0x24
 800318a:	f7ff bb56 	b.w	800283a <_vfprintf_r+0x302>
 800318e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003190:	9907      	ldr	r1, [sp, #28]
 8003192:	9803      	ldr	r0, [sp, #12]
 8003194:	f003 fcfe 	bl	8006b94 <__sprint_r>
 8003198:	2800      	cmp	r0, #0
 800319a:	f47f af45 	bne.w	8003028 <_vfprintf_r+0xaf0>
 800319e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031a4:	e406      	b.n	80029b4 <_vfprintf_r+0x47c>
 80031a6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80031a8:	2b00      	cmp	r3, #0
 80031aa:	f340 8273 	ble.w	8003694 <_vfprintf_r+0x115c>
 80031ae:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80031b2:	4293      	cmp	r3, r2
 80031b4:	bfa8      	it	ge
 80031b6:	4613      	movge	r3, r2
 80031b8:	2b00      	cmp	r3, #0
 80031ba:	461d      	mov	r5, r3
 80031bc:	dd0d      	ble.n	80031da <_vfprintf_r+0xca2>
 80031be:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031c0:	f8cb 7000 	str.w	r7, [fp]
 80031c4:	3301      	adds	r3, #1
 80031c6:	442c      	add	r4, r5
 80031c8:	2b07      	cmp	r3, #7
 80031ca:	942c      	str	r4, [sp, #176]	; 0xb0
 80031cc:	f8cb 5004 	str.w	r5, [fp, #4]
 80031d0:	932b      	str	r3, [sp, #172]	; 0xac
 80031d2:	f300 82c1 	bgt.w	8003758 <_vfprintf_r+0x1220>
 80031d6:	f10b 0b08 	add.w	fp, fp, #8
 80031da:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80031dc:	2d00      	cmp	r5, #0
 80031de:	bfa8      	it	ge
 80031e0:	1b5b      	subge	r3, r3, r5
 80031e2:	2b00      	cmp	r3, #0
 80031e4:	461d      	mov	r5, r3
 80031e6:	f340 8099 	ble.w	800331c <_vfprintf_r+0xde4>
 80031ea:	2d10      	cmp	r5, #16
 80031ec:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031ee:	4b2c      	ldr	r3, [pc, #176]	; (80032a0 <_vfprintf_r+0xd68>)
 80031f0:	f340 83db 	ble.w	80039aa <_vfprintf_r+0x1472>
 80031f4:	4618      	mov	r0, r3
 80031f6:	4621      	mov	r1, r4
 80031f8:	465b      	mov	r3, fp
 80031fa:	2610      	movs	r6, #16
 80031fc:	46bb      	mov	fp, r7
 80031fe:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003202:	9c07      	ldr	r4, [sp, #28]
 8003204:	4607      	mov	r7, r0
 8003206:	e004      	b.n	8003212 <_vfprintf_r+0xcda>
 8003208:	3308      	adds	r3, #8
 800320a:	3d10      	subs	r5, #16
 800320c:	2d10      	cmp	r5, #16
 800320e:	f340 83c7 	ble.w	80039a0 <_vfprintf_r+0x1468>
 8003212:	3201      	adds	r2, #1
 8003214:	3110      	adds	r1, #16
 8003216:	2a07      	cmp	r2, #7
 8003218:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800321c:	e9c3 7600 	strd	r7, r6, [r3]
 8003220:	ddf2      	ble.n	8003208 <_vfprintf_r+0xcd0>
 8003222:	aa2a      	add	r2, sp, #168	; 0xa8
 8003224:	4621      	mov	r1, r4
 8003226:	4648      	mov	r0, r9
 8003228:	f003 fcb4 	bl	8006b94 <__sprint_r>
 800322c:	2800      	cmp	r0, #0
 800322e:	f040 84a5 	bne.w	8003b7c <_vfprintf_r+0x1644>
 8003232:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003236:	ab2d      	add	r3, sp, #180	; 0xb4
 8003238:	e7e7      	b.n	800320a <_vfprintf_r+0xcd2>
 800323a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800323e:	af56      	add	r7, sp, #344	; 0x158
 8003240:	f7ff bafb 	b.w	800283a <_vfprintf_r+0x302>
 8003244:	f1b9 0f00 	cmp.w	r9, #0
 8003248:	f77f af4c 	ble.w	80030e4 <_vfprintf_r+0xbac>
 800324c:	f1b9 0f10 	cmp.w	r9, #16
 8003250:	4b13      	ldr	r3, [pc, #76]	; (80032a0 <_vfprintf_r+0xd68>)
 8003252:	f340 8659 	ble.w	8003f08 <_vfprintf_r+0x19d0>
 8003256:	4619      	mov	r1, r3
 8003258:	4622      	mov	r2, r4
 800325a:	4633      	mov	r3, r6
 800325c:	2710      	movs	r7, #16
 800325e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003262:	9c07      	ldr	r4, [sp, #28]
 8003264:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003266:	460e      	mov	r6, r1
 8003268:	e007      	b.n	800327a <_vfprintf_r+0xd42>
 800326a:	3308      	adds	r3, #8
 800326c:	f1a9 0910 	sub.w	r9, r9, #16
 8003270:	f1b9 0f10 	cmp.w	r9, #16
 8003274:	f340 8353 	ble.w	800391e <_vfprintf_r+0x13e6>
 8003278:	3501      	adds	r5, #1
 800327a:	3210      	adds	r2, #16
 800327c:	2d07      	cmp	r5, #7
 800327e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003282:	e9c3 6700 	strd	r6, r7, [r3]
 8003286:	ddf0      	ble.n	800326a <_vfprintf_r+0xd32>
 8003288:	aa2a      	add	r2, sp, #168	; 0xa8
 800328a:	4621      	mov	r1, r4
 800328c:	4658      	mov	r0, fp
 800328e:	f003 fc81 	bl	8006b94 <__sprint_r>
 8003292:	2800      	cmp	r0, #0
 8003294:	f040 8472 	bne.w	8003b7c <_vfprintf_r+0x1644>
 8003298:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800329c:	ab2d      	add	r3, sp, #180	; 0xb4
 800329e:	e7e5      	b.n	800326c <_vfprintf_r+0xd34>
 80032a0:	0800741c 	.word	0x0800741c
 80032a4:	f018 0f01 	tst.w	r8, #1
 80032a8:	f47f aee0 	bne.w	800306c <_vfprintf_r+0xb34>
 80032ac:	2201      	movs	r2, #1
 80032ae:	2d07      	cmp	r5, #7
 80032b0:	f8cb 7000 	str.w	r7, [fp]
 80032b4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80032b8:	f8cb 2004 	str.w	r2, [fp, #4]
 80032bc:	dc04      	bgt.n	80032c8 <_vfprintf_r+0xd90>
 80032be:	3302      	adds	r3, #2
 80032c0:	9309      	str	r3, [sp, #36]	; 0x24
 80032c2:	f10b 0b10 	add.w	fp, fp, #16
 80032c6:	e70d      	b.n	80030e4 <_vfprintf_r+0xbac>
 80032c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80032ca:	9907      	ldr	r1, [sp, #28]
 80032cc:	9803      	ldr	r0, [sp, #12]
 80032ce:	f003 fc61 	bl	8006b94 <__sprint_r>
 80032d2:	2800      	cmp	r0, #0
 80032d4:	f47f aea8 	bne.w	8003028 <_vfprintf_r+0xaf0>
 80032d8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80032dc:	3301      	adds	r3, #1
 80032de:	9309      	str	r3, [sp, #36]	; 0x24
 80032e0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80032e4:	ae2d      	add	r6, sp, #180	; 0xb4
 80032e6:	e6fd      	b.n	80030e4 <_vfprintf_r+0xbac>
 80032e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80032ea:	9907      	ldr	r1, [sp, #28]
 80032ec:	9803      	ldr	r0, [sp, #12]
 80032ee:	f003 fc51 	bl	8006b94 <__sprint_r>
 80032f2:	2800      	cmp	r0, #0
 80032f4:	f47f ae98 	bne.w	8003028 <_vfprintf_r+0xaf0>
 80032f8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80032fc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032fe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003302:	f7ff baf6 	b.w	80028f2 <_vfprintf_r+0x3ba>
 8003306:	aa2a      	add	r2, sp, #168	; 0xa8
 8003308:	9907      	ldr	r1, [sp, #28]
 800330a:	9803      	ldr	r0, [sp, #12]
 800330c:	f003 fc42 	bl	8006b94 <__sprint_r>
 8003310:	2800      	cmp	r0, #0
 8003312:	f47f ae89 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003316:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003318:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800331c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800331e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003322:	443b      	add	r3, r7
 8003324:	4699      	mov	r9, r3
 8003326:	f040 8357 	bne.w	80039d8 <_vfprintf_r+0x14a0>
 800332a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800332c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800332e:	4293      	cmp	r3, r2
 8003330:	db49      	blt.n	80033c6 <_vfprintf_r+0xe8e>
 8003332:	f018 0f01 	tst.w	r8, #1
 8003336:	d146      	bne.n	80033c6 <_vfprintf_r+0xe8e>
 8003338:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800333a:	18bd      	adds	r5, r7, r2
 800333c:	eba5 0509 	sub.w	r5, r5, r9
 8003340:	1ad3      	subs	r3, r2, r3
 8003342:	429d      	cmp	r5, r3
 8003344:	bfa8      	it	ge
 8003346:	461d      	movge	r5, r3
 8003348:	2d00      	cmp	r5, #0
 800334a:	dd0d      	ble.n	8003368 <_vfprintf_r+0xe30>
 800334c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800334e:	f8cb 9000 	str.w	r9, [fp]
 8003352:	3201      	adds	r2, #1
 8003354:	442c      	add	r4, r5
 8003356:	2a07      	cmp	r2, #7
 8003358:	942c      	str	r4, [sp, #176]	; 0xb0
 800335a:	f8cb 5004 	str.w	r5, [fp, #4]
 800335e:	922b      	str	r2, [sp, #172]	; 0xac
 8003360:	f300 8462 	bgt.w	8003c28 <_vfprintf_r+0x16f0>
 8003364:	f10b 0b08 	add.w	fp, fp, #8
 8003368:	2d00      	cmp	r5, #0
 800336a:	bfac      	ite	ge
 800336c:	1b5d      	subge	r5, r3, r5
 800336e:	461d      	movlt	r5, r3
 8003370:	2d00      	cmp	r5, #0
 8003372:	f77f ab32 	ble.w	80029da <_vfprintf_r+0x4a2>
 8003376:	2d10      	cmp	r5, #16
 8003378:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800337a:	4bc5      	ldr	r3, [pc, #788]	; (8003690 <_vfprintf_r+0x1158>)
 800337c:	f340 80c4 	ble.w	8003508 <_vfprintf_r+0xfd0>
 8003380:	4619      	mov	r1, r3
 8003382:	2610      	movs	r6, #16
 8003384:	4623      	mov	r3, r4
 8003386:	9f03      	ldr	r7, [sp, #12]
 8003388:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800338c:	460c      	mov	r4, r1
 800338e:	e005      	b.n	800339c <_vfprintf_r+0xe64>
 8003390:	f10b 0b08 	add.w	fp, fp, #8
 8003394:	3d10      	subs	r5, #16
 8003396:	2d10      	cmp	r5, #16
 8003398:	f340 80b3 	ble.w	8003502 <_vfprintf_r+0xfca>
 800339c:	3201      	adds	r2, #1
 800339e:	3310      	adds	r3, #16
 80033a0:	2a07      	cmp	r2, #7
 80033a2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80033a6:	e9cb 4600 	strd	r4, r6, [fp]
 80033aa:	ddf1      	ble.n	8003390 <_vfprintf_r+0xe58>
 80033ac:	aa2a      	add	r2, sp, #168	; 0xa8
 80033ae:	4649      	mov	r1, r9
 80033b0:	4638      	mov	r0, r7
 80033b2:	f003 fbef 	bl	8006b94 <__sprint_r>
 80033b6:	2800      	cmp	r0, #0
 80033b8:	f47f ae38 	bne.w	800302c <_vfprintf_r+0xaf4>
 80033bc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80033c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033c4:	e7e6      	b.n	8003394 <_vfprintf_r+0xe5c>
 80033c6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033c8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80033ca:	f8cb 1000 	str.w	r1, [fp]
 80033ce:	9915      	ldr	r1, [sp, #84]	; 0x54
 80033d0:	f8cb 1004 	str.w	r1, [fp, #4]
 80033d4:	3201      	adds	r2, #1
 80033d6:	440c      	add	r4, r1
 80033d8:	2a07      	cmp	r2, #7
 80033da:	942c      	str	r4, [sp, #176]	; 0xb0
 80033dc:	922b      	str	r2, [sp, #172]	; 0xac
 80033de:	f300 828c 	bgt.w	80038fa <_vfprintf_r+0x13c2>
 80033e2:	f10b 0b08 	add.w	fp, fp, #8
 80033e6:	e7a7      	b.n	8003338 <_vfprintf_r+0xe00>
 80033e8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80033ec:	f002 fa94 	bl	8005918 <__retarget_lock_release_recursive>
 80033f0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80033f4:	e628      	b.n	8003048 <_vfprintf_r+0xb10>
 80033f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80033f8:	9907      	ldr	r1, [sp, #28]
 80033fa:	9803      	ldr	r0, [sp, #12]
 80033fc:	f003 fbca 	bl	8006b94 <__sprint_r>
 8003400:	2800      	cmp	r0, #0
 8003402:	f47f ae11 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003406:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800340a:	ae2d      	add	r6, sp, #180	; 0xb4
 800340c:	e638      	b.n	8003080 <_vfprintf_r+0xb48>
 800340e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003410:	9907      	ldr	r1, [sp, #28]
 8003412:	9803      	ldr	r0, [sp, #12]
 8003414:	f003 fbbe 	bl	8006b94 <__sprint_r>
 8003418:	2800      	cmp	r0, #0
 800341a:	f47f ae05 	bne.w	8003028 <_vfprintf_r+0xaf0>
 800341e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003422:	ae2d      	add	r6, sp, #180	; 0xb4
 8003424:	930b      	str	r3, [sp, #44]	; 0x2c
 8003426:	e638      	b.n	800309a <_vfprintf_r+0xb62>
 8003428:	6814      	ldr	r4, [r2, #0]
 800342a:	9308      	str	r3, [sp, #32]
 800342c:	2500      	movs	r5, #0
 800342e:	f7ff bb95 	b.w	8002b5c <_vfprintf_r+0x624>
 8003432:	6814      	ldr	r4, [r2, #0]
 8003434:	9308      	str	r3, [sp, #32]
 8003436:	2500      	movs	r5, #0
 8003438:	f7ff b9ae 	b.w	8002798 <_vfprintf_r+0x260>
 800343c:	680c      	ldr	r4, [r1, #0]
 800343e:	9208      	str	r2, [sp, #32]
 8003440:	17e5      	asrs	r5, r4, #31
 8003442:	4620      	mov	r0, r4
 8003444:	4629      	mov	r1, r5
 8003446:	f7ff b9d2 	b.w	80027ee <_vfprintf_r+0x2b6>
 800344a:	6814      	ldr	r4, [r2, #0]
 800344c:	9108      	str	r1, [sp, #32]
 800344e:	2201      	movs	r2, #1
 8003450:	2500      	movs	r5, #0
 8003452:	f7ff bb32 	b.w	8002aba <_vfprintf_r+0x582>
 8003456:	2a01      	cmp	r2, #1
 8003458:	f47f ab3c 	bne.w	8002ad4 <_vfprintf_r+0x59c>
 800345c:	e68f      	b.n	800317e <_vfprintf_r+0xc46>
 800345e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003462:	2200      	movs	r2, #0
 8003464:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003468:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800346c:	af56      	add	r7, sp, #344	; 0x158
 800346e:	4692      	mov	sl, r2
 8003470:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003474:	461e      	mov	r6, r3
 8003476:	e00a      	b.n	800348e <_vfprintf_r+0xf56>
 8003478:	2300      	movs	r3, #0
 800347a:	4620      	mov	r0, r4
 800347c:	4629      	mov	r1, r5
 800347e:	220a      	movs	r2, #10
 8003480:	f7fc febe 	bl	8000200 <__aeabi_uldivmod>
 8003484:	4604      	mov	r4, r0
 8003486:	460d      	mov	r5, r1
 8003488:	ea54 0305 	orrs.w	r3, r4, r5
 800348c:	d029      	beq.n	80034e2 <_vfprintf_r+0xfaa>
 800348e:	220a      	movs	r2, #10
 8003490:	2300      	movs	r3, #0
 8003492:	4620      	mov	r0, r4
 8003494:	4629      	mov	r1, r5
 8003496:	f7fc feb3 	bl	8000200 <__aeabi_uldivmod>
 800349a:	3230      	adds	r2, #48	; 0x30
 800349c:	f807 2c01 	strb.w	r2, [r7, #-1]
 80034a0:	f10a 0a01 	add.w	sl, sl, #1
 80034a4:	3f01      	subs	r7, #1
 80034a6:	2e00      	cmp	r6, #0
 80034a8:	d0e6      	beq.n	8003478 <_vfprintf_r+0xf40>
 80034aa:	f898 3000 	ldrb.w	r3, [r8]
 80034ae:	459a      	cmp	sl, r3
 80034b0:	d1e2      	bne.n	8003478 <_vfprintf_r+0xf40>
 80034b2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80034b6:	d0df      	beq.n	8003478 <_vfprintf_r+0xf40>
 80034b8:	2d00      	cmp	r5, #0
 80034ba:	bf08      	it	eq
 80034bc:	2c0a      	cmpeq	r4, #10
 80034be:	d3db      	bcc.n	8003478 <_vfprintf_r+0xf40>
 80034c0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80034c2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80034c4:	1aff      	subs	r7, r7, r3
 80034c6:	461a      	mov	r2, r3
 80034c8:	4638      	mov	r0, r7
 80034ca:	f003 faf5 	bl	8006ab8 <strncpy>
 80034ce:	f898 3001 	ldrb.w	r3, [r8, #1]
 80034d2:	2b00      	cmp	r3, #0
 80034d4:	f000 8496 	beq.w	8003e04 <_vfprintf_r+0x18cc>
 80034d8:	f108 0801 	add.w	r8, r8, #1
 80034dc:	f04f 0a00 	mov.w	sl, #0
 80034e0:	e7ca      	b.n	8003478 <_vfprintf_r+0xf40>
 80034e2:	9b04      	ldr	r3, [sp, #16]
 80034e4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80034e8:	1bdb      	subs	r3, r3, r7
 80034ea:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80034ee:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80034f0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80034f4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80034f8:	9309      	str	r3, [sp, #36]	; 0x24
 80034fa:	f7ff b99e 	b.w	800283a <_vfprintf_r+0x302>
 80034fe:	46c1      	mov	r9, r8
 8003500:	e594      	b.n	800302c <_vfprintf_r+0xaf4>
 8003502:	4621      	mov	r1, r4
 8003504:	461c      	mov	r4, r3
 8003506:	460b      	mov	r3, r1
 8003508:	3201      	adds	r2, #1
 800350a:	442c      	add	r4, r5
 800350c:	2a07      	cmp	r2, #7
 800350e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003512:	e9cb 3500 	strd	r3, r5, [fp]
 8003516:	f77f aa5e 	ble.w	80029d6 <_vfprintf_r+0x49e>
 800351a:	e5ee      	b.n	80030fa <_vfprintf_r+0xbc2>
 800351c:	f018 0f10 	tst.w	r8, #16
 8003520:	f040 80f8 	bne.w	8003714 <_vfprintf_r+0x11dc>
 8003524:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003528:	f000 8351 	beq.w	8003bce <_vfprintf_r+0x1696>
 800352c:	9a05      	ldr	r2, [sp, #20]
 800352e:	801a      	strh	r2, [r3, #0]
 8003530:	4657      	mov	r7, sl
 8003532:	f7ff baa7 	b.w	8002a84 <_vfprintf_r+0x54c>
 8003536:	aa2a      	add	r2, sp, #168	; 0xa8
 8003538:	9907      	ldr	r1, [sp, #28]
 800353a:	9803      	ldr	r0, [sp, #12]
 800353c:	f003 fb2a 	bl	8006b94 <__sprint_r>
 8003540:	2800      	cmp	r0, #0
 8003542:	f47f ad71 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003546:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003548:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800354c:	f7ff b9f5 	b.w	800293a <_vfprintf_r+0x402>
 8003550:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003554:	4602      	mov	r2, r0
 8003556:	460b      	mov	r3, r1
 8003558:	f7fd fd88 	bl	800106c <__aeabi_dcmpun>
 800355c:	2800      	cmp	r0, #0
 800355e:	f040 8491 	bne.w	8003e84 <_vfprintf_r+0x194c>
 8003562:	2e61      	cmp	r6, #97	; 0x61
 8003564:	f000 8111 	beq.w	800378a <_vfprintf_r+0x1252>
 8003568:	2e41      	cmp	r6, #65	; 0x41
 800356a:	f000 8377 	beq.w	8003c5c <_vfprintf_r+0x1724>
 800356e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003572:	f026 0220 	bic.w	r2, r6, #32
 8003576:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800357a:	930e      	str	r3, [sp, #56]	; 0x38
 800357c:	9204      	str	r2, [sp, #16]
 800357e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003580:	f000 842d 	beq.w	8003dde <_vfprintf_r+0x18a6>
 8003584:	2a47      	cmp	r2, #71	; 0x47
 8003586:	f000 8424 	beq.w	8003dd2 <_vfprintf_r+0x189a>
 800358a:	2b00      	cmp	r3, #0
 800358c:	f2c0 82f9 	blt.w	8003b82 <_vfprintf_r+0x164a>
 8003590:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003594:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003598:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800359c:	2e66      	cmp	r6, #102	; 0x66
 800359e:	f000 83eb 	beq.w	8003d78 <_vfprintf_r+0x1840>
 80035a2:	2e46      	cmp	r6, #70	; 0x46
 80035a4:	f000 847e 	beq.w	8003ea4 <_vfprintf_r+0x196c>
 80035a8:	9b04      	ldr	r3, [sp, #16]
 80035aa:	9803      	ldr	r0, [sp, #12]
 80035ac:	2b45      	cmp	r3, #69	; 0x45
 80035ae:	bf0c      	ite	eq
 80035b0:	f109 0501 	addeq.w	r5, r9, #1
 80035b4:	464d      	movne	r5, r9
 80035b6:	aa28      	add	r2, sp, #160	; 0xa0
 80035b8:	ab25      	add	r3, sp, #148	; 0x94
 80035ba:	e9cd 3200 	strd	r3, r2, [sp]
 80035be:	2102      	movs	r1, #2
 80035c0:	ab24      	add	r3, sp, #144	; 0x90
 80035c2:	462a      	mov	r2, r5
 80035c4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80035c8:	f000 fe3e 	bl	8004248 <_dtoa_r>
 80035cc:	2e67      	cmp	r6, #103	; 0x67
 80035ce:	4607      	mov	r7, r0
 80035d0:	f040 849c 	bne.w	8003f0c <_vfprintf_r+0x19d4>
 80035d4:	f018 0f01 	tst.w	r8, #1
 80035d8:	f040 83f9 	bne.w	8003dce <_vfprintf_r+0x1896>
 80035dc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80035de:	4640      	mov	r0, r8
 80035e0:	1bdb      	subs	r3, r3, r7
 80035e2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80035e6:	9310      	str	r3, [sp, #64]	; 0x40
 80035e8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80035ea:	9311      	str	r3, [sp, #68]	; 0x44
 80035ec:	9b04      	ldr	r3, [sp, #16]
 80035ee:	2b47      	cmp	r3, #71	; 0x47
 80035f0:	f000 81e7 	beq.w	80039c2 <_vfprintf_r+0x148a>
 80035f4:	9b04      	ldr	r3, [sp, #16]
 80035f6:	2b46      	cmp	r3, #70	; 0x46
 80035f8:	f000 8300 	beq.w	8003bfc <_vfprintf_r+0x16c4>
 80035fc:	9904      	ldr	r1, [sp, #16]
 80035fe:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003600:	b2f2      	uxtb	r2, r6
 8003602:	2941      	cmp	r1, #65	; 0x41
 8003604:	bf08      	it	eq
 8003606:	320f      	addeq	r2, #15
 8003608:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800360c:	bf06      	itte	eq
 800360e:	b2d2      	uxtbeq	r2, r2
 8003610:	2101      	moveq	r1, #1
 8003612:	2100      	movne	r1, #0
 8003614:	2b00      	cmp	r3, #0
 8003616:	9324      	str	r3, [sp, #144]	; 0x90
 8003618:	bfb8      	it	lt
 800361a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800361c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003620:	bfba      	itte	lt
 8003622:	f1c3 0301 	rsblt	r3, r3, #1
 8003626:	222d      	movlt	r2, #45	; 0x2d
 8003628:	222b      	movge	r2, #43	; 0x2b
 800362a:	2b09      	cmp	r3, #9
 800362c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003630:	f300 83f9 	bgt.w	8003e26 <_vfprintf_r+0x18ee>
 8003634:	2900      	cmp	r1, #0
 8003636:	f040 8487 	bne.w	8003f48 <_vfprintf_r+0x1a10>
 800363a:	2230      	movs	r2, #48	; 0x30
 800363c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003640:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003644:	3330      	adds	r3, #48	; 0x30
 8003646:	7013      	strb	r3, [r2, #0]
 8003648:	1c53      	adds	r3, r2, #1
 800364a:	aa26      	add	r2, sp, #152	; 0x98
 800364c:	1a9b      	subs	r3, r3, r2
 800364e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003650:	9319      	str	r3, [sp, #100]	; 0x64
 8003652:	2a01      	cmp	r2, #1
 8003654:	4413      	add	r3, r2
 8003656:	9309      	str	r3, [sp, #36]	; 0x24
 8003658:	f340 8442 	ble.w	8003ee0 <_vfprintf_r+0x19a8>
 800365c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800365e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003660:	4413      	add	r3, r2
 8003662:	9309      	str	r3, [sp, #36]	; 0x24
 8003664:	2300      	movs	r3, #0
 8003666:	930f      	str	r3, [sp, #60]	; 0x3c
 8003668:	9314      	str	r3, [sp, #80]	; 0x50
 800366a:	9311      	str	r3, [sp, #68]	; 0x44
 800366c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800366e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003672:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003676:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800367a:	9304      	str	r3, [sp, #16]
 800367c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800367e:	2b00      	cmp	r3, #0
 8003680:	f040 8275 	bne.w	8003b6e <_vfprintf_r+0x1636>
 8003684:	4699      	mov	r9, r3
 8003686:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800368a:	f7ff b8e2 	b.w	8002852 <_vfprintf_r+0x31a>
 800368e:	bf00      	nop
 8003690:	0800741c 	.word	0x0800741c
 8003694:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003696:	49bd      	ldr	r1, [pc, #756]	; (800398c <_vfprintf_r+0x1454>)
 8003698:	f8cb 1000 	str.w	r1, [fp]
 800369c:	3201      	adds	r2, #1
 800369e:	3401      	adds	r4, #1
 80036a0:	2101      	movs	r1, #1
 80036a2:	2a07      	cmp	r2, #7
 80036a4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80036a8:	f8cb 1004 	str.w	r1, [fp, #4]
 80036ac:	dc60      	bgt.n	8003770 <_vfprintf_r+0x1238>
 80036ae:	f10b 0b08 	add.w	fp, fp, #8
 80036b2:	b92b      	cbnz	r3, 80036c0 <_vfprintf_r+0x1188>
 80036b4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80036b6:	b91a      	cbnz	r2, 80036c0 <_vfprintf_r+0x1188>
 80036b8:	f018 0f01 	tst.w	r8, #1
 80036bc:	f43f a98d 	beq.w	80029da <_vfprintf_r+0x4a2>
 80036c0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036c2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80036c4:	f8cb 1000 	str.w	r1, [fp]
 80036c8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80036ca:	f8cb 1004 	str.w	r1, [fp, #4]
 80036ce:	3201      	adds	r2, #1
 80036d0:	440c      	add	r4, r1
 80036d2:	2a07      	cmp	r2, #7
 80036d4:	942c      	str	r4, [sp, #176]	; 0xb0
 80036d6:	922b      	str	r2, [sp, #172]	; 0xac
 80036d8:	f300 8282 	bgt.w	8003be0 <_vfprintf_r+0x16a8>
 80036dc:	f10b 0b08 	add.w	fp, fp, #8
 80036e0:	2b00      	cmp	r3, #0
 80036e2:	f2c0 82e7 	blt.w	8003cb4 <_vfprintf_r+0x177c>
 80036e6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80036e8:	3201      	adds	r2, #1
 80036ea:	441c      	add	r4, r3
 80036ec:	2a07      	cmp	r2, #7
 80036ee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80036f2:	e9cb 7300 	strd	r7, r3, [fp]
 80036f6:	f77f a96e 	ble.w	80029d6 <_vfprintf_r+0x49e>
 80036fa:	e4fe      	b.n	80030fa <_vfprintf_r+0xbc2>
 80036fc:	aa2a      	add	r2, sp, #168	; 0xa8
 80036fe:	9907      	ldr	r1, [sp, #28]
 8003700:	9803      	ldr	r0, [sp, #12]
 8003702:	f003 fa47 	bl	8006b94 <__sprint_r>
 8003706:	2800      	cmp	r0, #0
 8003708:	f47f ac8e 	bne.w	8003028 <_vfprintf_r+0xaf0>
 800370c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003710:	f7ff bbf0 	b.w	8002ef4 <_vfprintf_r+0x9bc>
 8003714:	9a05      	ldr	r2, [sp, #20]
 8003716:	601a      	str	r2, [r3, #0]
 8003718:	4657      	mov	r7, sl
 800371a:	f7ff b9b3 	b.w	8002a84 <_vfprintf_r+0x54c>
 800371e:	8814      	ldrh	r4, [r2, #0]
 8003720:	9108      	str	r1, [sp, #32]
 8003722:	2500      	movs	r5, #0
 8003724:	2201      	movs	r2, #1
 8003726:	f7ff b9c8 	b.w	8002aba <_vfprintf_r+0x582>
 800372a:	8814      	ldrh	r4, [r2, #0]
 800372c:	9308      	str	r3, [sp, #32]
 800372e:	2500      	movs	r5, #0
 8003730:	f7ff ba14 	b.w	8002b5c <_vfprintf_r+0x624>
 8003734:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003738:	9208      	str	r2, [sp, #32]
 800373a:	17e5      	asrs	r5, r4, #31
 800373c:	4620      	mov	r0, r4
 800373e:	4629      	mov	r1, r5
 8003740:	f7ff b855 	b.w	80027ee <_vfprintf_r+0x2b6>
 8003744:	8814      	ldrh	r4, [r2, #0]
 8003746:	9308      	str	r3, [sp, #32]
 8003748:	2500      	movs	r5, #0
 800374a:	f7ff b825 	b.w	8002798 <_vfprintf_r+0x260>
 800374e:	222d      	movs	r2, #45	; 0x2d
 8003750:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003754:	f7ff baa2 	b.w	8002c9c <_vfprintf_r+0x764>
 8003758:	aa2a      	add	r2, sp, #168	; 0xa8
 800375a:	9907      	ldr	r1, [sp, #28]
 800375c:	9803      	ldr	r0, [sp, #12]
 800375e:	f003 fa19 	bl	8006b94 <__sprint_r>
 8003762:	2800      	cmp	r0, #0
 8003764:	f47f ac60 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003768:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800376a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800376e:	e534      	b.n	80031da <_vfprintf_r+0xca2>
 8003770:	aa2a      	add	r2, sp, #168	; 0xa8
 8003772:	9907      	ldr	r1, [sp, #28]
 8003774:	9803      	ldr	r0, [sp, #12]
 8003776:	f003 fa0d 	bl	8006b94 <__sprint_r>
 800377a:	2800      	cmp	r0, #0
 800377c:	f47f ac54 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003780:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003782:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003784:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003788:	e793      	b.n	80036b2 <_vfprintf_r+0x117a>
 800378a:	2330      	movs	r3, #48	; 0x30
 800378c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003790:	2378      	movs	r3, #120	; 0x78
 8003792:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003796:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800379a:	f048 0402 	orr.w	r4, r8, #2
 800379e:	f300 82b0 	bgt.w	8003d02 <_vfprintf_r+0x17ca>
 80037a2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80037a6:	930e      	str	r3, [sp, #56]	; 0x38
 80037a8:	f026 0320 	bic.w	r3, r6, #32
 80037ac:	9304      	str	r3, [sp, #16]
 80037ae:	2200      	movs	r2, #0
 80037b0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80037b2:	920a      	str	r2, [sp, #40]	; 0x28
 80037b4:	46a0      	mov	r8, r4
 80037b6:	af3d      	add	r7, sp, #244	; 0xf4
 80037b8:	2b00      	cmp	r3, #0
 80037ba:	f2c0 81e3 	blt.w	8003b84 <_vfprintf_r+0x164c>
 80037be:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80037c2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80037c6:	2300      	movs	r3, #0
 80037c8:	930b      	str	r3, [sp, #44]	; 0x2c
 80037ca:	2e61      	cmp	r6, #97	; 0x61
 80037cc:	f000 8255 	beq.w	8003c7a <_vfprintf_r+0x1742>
 80037d0:	2e41      	cmp	r6, #65	; 0x41
 80037d2:	f47f aee3 	bne.w	800359c <_vfprintf_r+0x1064>
 80037d6:	a824      	add	r0, sp, #144	; 0x90
 80037d8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80037dc:	f003 f8e2 	bl	80069a4 <frexp>
 80037e0:	2200      	movs	r2, #0
 80037e2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80037e6:	ec51 0b10 	vmov	r0, r1, d0
 80037ea:	f7fd f9a5 	bl	8000b38 <__aeabi_dmul>
 80037ee:	2200      	movs	r2, #0
 80037f0:	2300      	movs	r3, #0
 80037f2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037f6:	f7fd fc07 	bl	8001008 <__aeabi_dcmpeq>
 80037fa:	2800      	cmp	r0, #0
 80037fc:	f040 8305 	bne.w	8003e0a <_vfprintf_r+0x18d2>
 8003800:	4b63      	ldr	r3, [pc, #396]	; (8003990 <_vfprintf_r+0x1458>)
 8003802:	9309      	str	r3, [sp, #36]	; 0x24
 8003804:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003808:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800380c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003810:	9721      	str	r7, [sp, #132]	; 0x84
 8003812:	46b9      	mov	r9, r7
 8003814:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003818:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800381c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003820:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003824:	e003      	b.n	800382e <_vfprintf_r+0x12f6>
 8003826:	f7fd fbef 	bl	8001008 <__aeabi_dcmpeq>
 800382a:	bb20      	cbnz	r0, 8003876 <_vfprintf_r+0x133e>
 800382c:	46a9      	mov	r9, r5
 800382e:	2200      	movs	r2, #0
 8003830:	4b58      	ldr	r3, [pc, #352]	; (8003994 <_vfprintf_r+0x145c>)
 8003832:	4630      	mov	r0, r6
 8003834:	4639      	mov	r1, r7
 8003836:	f7fd f97f 	bl	8000b38 <__aeabi_dmul>
 800383a:	460f      	mov	r7, r1
 800383c:	4606      	mov	r6, r0
 800383e:	f7fd fc2b 	bl	8001098 <__aeabi_d2iz>
 8003842:	4680      	mov	r8, r0
 8003844:	f7fd f90e 	bl	8000a64 <__aeabi_i2d>
 8003848:	4602      	mov	r2, r0
 800384a:	460b      	mov	r3, r1
 800384c:	4630      	mov	r0, r6
 800384e:	4639      	mov	r1, r7
 8003850:	f7fc ffba 	bl	80007c8 <__aeabi_dsub>
 8003854:	464d      	mov	r5, r9
 8003856:	f81a c008 	ldrb.w	ip, [sl, r8]
 800385a:	f805 cb01 	strb.w	ip, [r5], #1
 800385e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003862:	46a3      	mov	fp, r4
 8003864:	4606      	mov	r6, r0
 8003866:	460f      	mov	r7, r1
 8003868:	f04f 0200 	mov.w	r2, #0
 800386c:	f04f 0300 	mov.w	r3, #0
 8003870:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003874:	d1d7      	bne.n	8003826 <_vfprintf_r+0x12ee>
 8003876:	4630      	mov	r0, r6
 8003878:	4639      	mov	r1, r7
 800387a:	2200      	movs	r2, #0
 800387c:	4b46      	ldr	r3, [pc, #280]	; (8003998 <_vfprintf_r+0x1460>)
 800387e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003882:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003884:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003888:	4644      	mov	r4, r8
 800388a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800388e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003892:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003896:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800389a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800389c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80038a0:	f7fd fbda 	bl	8001058 <__aeabi_dcmpgt>
 80038a4:	2800      	cmp	r0, #0
 80038a6:	f040 8176 	bne.w	8003b96 <_vfprintf_r+0x165e>
 80038aa:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80038ae:	2200      	movs	r2, #0
 80038b0:	4b39      	ldr	r3, [pc, #228]	; (8003998 <_vfprintf_r+0x1460>)
 80038b2:	f7fd fba9 	bl	8001008 <__aeabi_dcmpeq>
 80038b6:	b110      	cbz	r0, 80038be <_vfprintf_r+0x1386>
 80038b8:	07e2      	lsls	r2, r4, #31
 80038ba:	f100 816c 	bmi.w	8003b96 <_vfprintf_r+0x165e>
 80038be:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038c0:	2b00      	cmp	r3, #0
 80038c2:	db07      	blt.n	80038d4 <_vfprintf_r+0x139c>
 80038c4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038c6:	3301      	adds	r3, #1
 80038c8:	442b      	add	r3, r5
 80038ca:	2230      	movs	r2, #48	; 0x30
 80038cc:	f805 2b01 	strb.w	r2, [r5], #1
 80038d0:	42ab      	cmp	r3, r5
 80038d2:	d1fb      	bne.n	80038cc <_vfprintf_r+0x1394>
 80038d4:	1beb      	subs	r3, r5, r7
 80038d6:	4640      	mov	r0, r8
 80038d8:	9310      	str	r3, [sp, #64]	; 0x40
 80038da:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80038de:	e683      	b.n	80035e8 <_vfprintf_r+0x10b0>
 80038e0:	f8cd 9010 	str.w	r9, [sp, #16]
 80038e4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80038e8:	9408      	str	r4, [sp, #32]
 80038ea:	4681      	mov	r9, r0
 80038ec:	900f      	str	r0, [sp, #60]	; 0x3c
 80038ee:	9014      	str	r0, [sp, #80]	; 0x50
 80038f0:	9011      	str	r0, [sp, #68]	; 0x44
 80038f2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80038f6:	f7fe bfac 	b.w	8002852 <_vfprintf_r+0x31a>
 80038fa:	aa2a      	add	r2, sp, #168	; 0xa8
 80038fc:	9907      	ldr	r1, [sp, #28]
 80038fe:	9803      	ldr	r0, [sp, #12]
 8003900:	f003 f948 	bl	8006b94 <__sprint_r>
 8003904:	2800      	cmp	r0, #0
 8003906:	f47f ab8f 	bne.w	8003028 <_vfprintf_r+0xaf0>
 800390a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800390c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800390e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003912:	e511      	b.n	8003338 <_vfprintf_r+0xe00>
 8003914:	4252      	negs	r2, r2
 8003916:	9206      	str	r2, [sp, #24]
 8003918:	9308      	str	r3, [sp, #32]
 800391a:	f7ff b96d 	b.w	8002bf8 <_vfprintf_r+0x6c0>
 800391e:	4614      	mov	r4, r2
 8003920:	4632      	mov	r2, r6
 8003922:	461e      	mov	r6, r3
 8003924:	4613      	mov	r3, r2
 8003926:	462a      	mov	r2, r5
 8003928:	3201      	adds	r2, #1
 800392a:	9209      	str	r2, [sp, #36]	; 0x24
 800392c:	f106 0208 	add.w	r2, r6, #8
 8003930:	e9c6 3900 	strd	r3, r9, [r6]
 8003934:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003936:	932b      	str	r3, [sp, #172]	; 0xac
 8003938:	444c      	add	r4, r9
 800393a:	2b07      	cmp	r3, #7
 800393c:	942c      	str	r4, [sp, #176]	; 0xb0
 800393e:	f73f acc3 	bgt.w	80032c8 <_vfprintf_r+0xd90>
 8003942:	3301      	adds	r3, #1
 8003944:	9309      	str	r3, [sp, #36]	; 0x24
 8003946:	f102 0b08 	add.w	fp, r2, #8
 800394a:	4616      	mov	r6, r2
 800394c:	f7ff bbca 	b.w	80030e4 <_vfprintf_r+0xbac>
 8003950:	aa2a      	add	r2, sp, #168	; 0xa8
 8003952:	9907      	ldr	r1, [sp, #28]
 8003954:	9803      	ldr	r0, [sp, #12]
 8003956:	f003 f91d 	bl	8006b94 <__sprint_r>
 800395a:	2800      	cmp	r0, #0
 800395c:	f47f ab64 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003960:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003962:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003966:	f7ff bade 	b.w	8002f26 <_vfprintf_r+0x9ee>
 800396a:	464b      	mov	r3, r9
 800396c:	2b06      	cmp	r3, #6
 800396e:	bf28      	it	cs
 8003970:	2306      	movcs	r3, #6
 8003972:	46b9      	mov	r9, r7
 8003974:	970f      	str	r7, [sp, #60]	; 0x3c
 8003976:	9714      	str	r7, [sp, #80]	; 0x50
 8003978:	9711      	str	r7, [sp, #68]	; 0x44
 800397a:	970a      	str	r7, [sp, #40]	; 0x28
 800397c:	463a      	mov	r2, r7
 800397e:	9304      	str	r3, [sp, #16]
 8003980:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003984:	4f05      	ldr	r7, [pc, #20]	; (800399c <_vfprintf_r+0x1464>)
 8003986:	f7fe bf64 	b.w	8002852 <_vfprintf_r+0x31a>
 800398a:	bf00      	nop
 800398c:	08007408 	.word	0x08007408
 8003990:	080073ec 	.word	0x080073ec
 8003994:	40300000 	.word	0x40300000
 8003998:	3fe00000 	.word	0x3fe00000
 800399c:	08007400 	.word	0x08007400
 80039a0:	460c      	mov	r4, r1
 80039a2:	4639      	mov	r1, r7
 80039a4:	465f      	mov	r7, fp
 80039a6:	469b      	mov	fp, r3
 80039a8:	460b      	mov	r3, r1
 80039aa:	3201      	adds	r2, #1
 80039ac:	442c      	add	r4, r5
 80039ae:	2a07      	cmp	r2, #7
 80039b0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80039b4:	e9cb 3500 	strd	r3, r5, [fp]
 80039b8:	f73f aca5 	bgt.w	8003306 <_vfprintf_r+0xdce>
 80039bc:	f10b 0b08 	add.w	fp, fp, #8
 80039c0:	e4ac      	b.n	800331c <_vfprintf_r+0xde4>
 80039c2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039c4:	1cda      	adds	r2, r3, #3
 80039c6:	db02      	blt.n	80039ce <_vfprintf_r+0x1496>
 80039c8:	4599      	cmp	r9, r3
 80039ca:	f280 80b5 	bge.w	8003b38 <_vfprintf_r+0x1600>
 80039ce:	3e02      	subs	r6, #2
 80039d0:	f026 0320 	bic.w	r3, r6, #32
 80039d4:	9304      	str	r3, [sp, #16]
 80039d6:	e611      	b.n	80035fc <_vfprintf_r+0x10c4>
 80039d8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039da:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80039de:	465a      	mov	r2, fp
 80039e0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80039e4:	18fb      	adds	r3, r7, r3
 80039e6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80039ea:	970c      	str	r7, [sp, #48]	; 0x30
 80039ec:	4eaf      	ldr	r6, [pc, #700]	; (8003cac <_vfprintf_r+0x1774>)
 80039ee:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80039f2:	9309      	str	r3, [sp, #36]	; 0x24
 80039f4:	464f      	mov	r7, r9
 80039f6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80039fa:	4621      	mov	r1, r4
 80039fc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80039fe:	2b00      	cmp	r3, #0
 8003a00:	d05b      	beq.n	8003aba <_vfprintf_r+0x1582>
 8003a02:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a04:	2b00      	cmp	r3, #0
 8003a06:	d154      	bne.n	8003ab2 <_vfprintf_r+0x157a>
 8003a08:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003a0a:	3b01      	subs	r3, #1
 8003a0c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003a10:	9314      	str	r3, [sp, #80]	; 0x50
 8003a12:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a14:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003a16:	6010      	str	r0, [r2, #0]
 8003a18:	3301      	adds	r3, #1
 8003a1a:	4459      	add	r1, fp
 8003a1c:	2b07      	cmp	r3, #7
 8003a1e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003a20:	f8c2 b004 	str.w	fp, [r2, #4]
 8003a24:	932b      	str	r3, [sp, #172]	; 0xac
 8003a26:	dc68      	bgt.n	8003afa <_vfprintf_r+0x15c2>
 8003a28:	3208      	adds	r2, #8
 8003a2a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003a2c:	f898 3000 	ldrb.w	r3, [r8]
 8003a30:	1bc5      	subs	r5, r0, r7
 8003a32:	429d      	cmp	r5, r3
 8003a34:	bfa8      	it	ge
 8003a36:	461d      	movge	r5, r3
 8003a38:	2d00      	cmp	r5, #0
 8003a3a:	dd0b      	ble.n	8003a54 <_vfprintf_r+0x151c>
 8003a3c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a3e:	6017      	str	r7, [r2, #0]
 8003a40:	3301      	adds	r3, #1
 8003a42:	4429      	add	r1, r5
 8003a44:	2b07      	cmp	r3, #7
 8003a46:	912c      	str	r1, [sp, #176]	; 0xb0
 8003a48:	6055      	str	r5, [r2, #4]
 8003a4a:	932b      	str	r3, [sp, #172]	; 0xac
 8003a4c:	dc5e      	bgt.n	8003b0c <_vfprintf_r+0x15d4>
 8003a4e:	f898 3000 	ldrb.w	r3, [r8]
 8003a52:	3208      	adds	r2, #8
 8003a54:	2d00      	cmp	r5, #0
 8003a56:	bfac      	ite	ge
 8003a58:	1b5d      	subge	r5, r3, r5
 8003a5a:	461d      	movlt	r5, r3
 8003a5c:	2d00      	cmp	r5, #0
 8003a5e:	dd26      	ble.n	8003aae <_vfprintf_r+0x1576>
 8003a60:	2d10      	cmp	r5, #16
 8003a62:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003a64:	dd3c      	ble.n	8003ae0 <_vfprintf_r+0x15a8>
 8003a66:	2410      	movs	r4, #16
 8003a68:	e003      	b.n	8003a72 <_vfprintf_r+0x153a>
 8003a6a:	3208      	adds	r2, #8
 8003a6c:	3d10      	subs	r5, #16
 8003a6e:	2d10      	cmp	r5, #16
 8003a70:	dd36      	ble.n	8003ae0 <_vfprintf_r+0x15a8>
 8003a72:	3001      	adds	r0, #1
 8003a74:	3110      	adds	r1, #16
 8003a76:	2807      	cmp	r0, #7
 8003a78:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003a7c:	e9c2 6400 	strd	r6, r4, [r2]
 8003a80:	ddf3      	ble.n	8003a6a <_vfprintf_r+0x1532>
 8003a82:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a84:	4651      	mov	r1, sl
 8003a86:	4648      	mov	r0, r9
 8003a88:	f003 f884 	bl	8006b94 <__sprint_r>
 8003a8c:	2800      	cmp	r0, #0
 8003a8e:	d150      	bne.n	8003b32 <_vfprintf_r+0x15fa>
 8003a90:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003a94:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a96:	e7e9      	b.n	8003a6c <_vfprintf_r+0x1534>
 8003a98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a9a:	4651      	mov	r1, sl
 8003a9c:	4648      	mov	r0, r9
 8003a9e:	f003 f879 	bl	8006b94 <__sprint_r>
 8003aa2:	2800      	cmp	r0, #0
 8003aa4:	d145      	bne.n	8003b32 <_vfprintf_r+0x15fa>
 8003aa6:	f898 3000 	ldrb.w	r3, [r8]
 8003aaa:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003aac:	aa2d      	add	r2, sp, #180	; 0xb4
 8003aae:	441f      	add	r7, r3
 8003ab0:	e7a4      	b.n	80039fc <_vfprintf_r+0x14c4>
 8003ab2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ab4:	3b01      	subs	r3, #1
 8003ab6:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ab8:	e7ab      	b.n	8003a12 <_vfprintf_r+0x14da>
 8003aba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003abc:	2b00      	cmp	r3, #0
 8003abe:	d1f8      	bne.n	8003ab2 <_vfprintf_r+0x157a>
 8003ac0:	46b9      	mov	r9, r7
 8003ac2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ac4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003ac6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003aca:	18fb      	adds	r3, r7, r3
 8003acc:	4599      	cmp	r9, r3
 8003ace:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003ad2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ad6:	4693      	mov	fp, r2
 8003ad8:	460c      	mov	r4, r1
 8003ada:	bf28      	it	cs
 8003adc:	4699      	movcs	r9, r3
 8003ade:	e424      	b.n	800332a <_vfprintf_r+0xdf2>
 8003ae0:	3001      	adds	r0, #1
 8003ae2:	4429      	add	r1, r5
 8003ae4:	2807      	cmp	r0, #7
 8003ae6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003aea:	e9c2 6500 	strd	r6, r5, [r2]
 8003aee:	dcd3      	bgt.n	8003a98 <_vfprintf_r+0x1560>
 8003af0:	f898 3000 	ldrb.w	r3, [r8]
 8003af4:	3208      	adds	r2, #8
 8003af6:	441f      	add	r7, r3
 8003af8:	e780      	b.n	80039fc <_vfprintf_r+0x14c4>
 8003afa:	aa2a      	add	r2, sp, #168	; 0xa8
 8003afc:	4651      	mov	r1, sl
 8003afe:	4648      	mov	r0, r9
 8003b00:	f003 f848 	bl	8006b94 <__sprint_r>
 8003b04:	b9a8      	cbnz	r0, 8003b32 <_vfprintf_r+0x15fa>
 8003b06:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003b08:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b0a:	e78e      	b.n	8003a2a <_vfprintf_r+0x14f2>
 8003b0c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b0e:	4651      	mov	r1, sl
 8003b10:	4648      	mov	r0, r9
 8003b12:	f003 f83f 	bl	8006b94 <__sprint_r>
 8003b16:	b960      	cbnz	r0, 8003b32 <_vfprintf_r+0x15fa>
 8003b18:	f898 3000 	ldrb.w	r3, [r8]
 8003b1c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003b1e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b20:	e798      	b.n	8003a54 <_vfprintf_r+0x151c>
 8003b22:	4638      	mov	r0, r7
 8003b24:	f7fc fd8c 	bl	8000640 <strlen>
 8003b28:	46a9      	mov	r9, r5
 8003b2a:	4603      	mov	r3, r0
 8003b2c:	9009      	str	r0, [sp, #36]	; 0x24
 8003b2e:	f7ff b8f4 	b.w	8002d1a <_vfprintf_r+0x7e2>
 8003b32:	46d1      	mov	r9, sl
 8003b34:	f7ff ba7a 	b.w	800302c <_vfprintf_r+0xaf4>
 8003b38:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b3a:	4619      	mov	r1, r3
 8003b3c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b3e:	4299      	cmp	r1, r3
 8003b40:	f300 8082 	bgt.w	8003c48 <_vfprintf_r+0x1710>
 8003b44:	07c4      	lsls	r4, r0, #31
 8003b46:	f140 816b 	bpl.w	8003e20 <_vfprintf_r+0x18e8>
 8003b4a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b4c:	4413      	add	r3, r2
 8003b4e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b50:	0541      	lsls	r1, r0, #21
 8003b52:	d503      	bpl.n	8003b5c <_vfprintf_r+0x1624>
 8003b54:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b56:	2b00      	cmp	r3, #0
 8003b58:	f300 80e6 	bgt.w	8003d28 <_vfprintf_r+0x17f0>
 8003b5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b5e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b62:	9304      	str	r3, [sp, #16]
 8003b64:	2667      	movs	r6, #103	; 0x67
 8003b66:	2300      	movs	r3, #0
 8003b68:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b6a:	9314      	str	r3, [sp, #80]	; 0x50
 8003b6c:	e586      	b.n	800367c <_vfprintf_r+0x1144>
 8003b6e:	222d      	movs	r2, #45	; 0x2d
 8003b70:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003b74:	f04f 0900 	mov.w	r9, #0
 8003b78:	f7fe be6c 	b.w	8002854 <_vfprintf_r+0x31c>
 8003b7c:	46a1      	mov	r9, r4
 8003b7e:	f7ff ba55 	b.w	800302c <_vfprintf_r+0xaf4>
 8003b82:	900a      	str	r0, [sp, #40]	; 0x28
 8003b84:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003b88:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003b8c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003b8e:	232d      	movs	r3, #45	; 0x2d
 8003b90:	911e      	str	r1, [sp, #120]	; 0x78
 8003b92:	930b      	str	r3, [sp, #44]	; 0x2c
 8003b94:	e619      	b.n	80037ca <_vfprintf_r+0x1292>
 8003b96:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b98:	9328      	str	r3, [sp, #160]	; 0xa0
 8003b9a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b9c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003ba0:	7bd9      	ldrb	r1, [r3, #15]
 8003ba2:	4291      	cmp	r1, r2
 8003ba4:	462b      	mov	r3, r5
 8003ba6:	d109      	bne.n	8003bbc <_vfprintf_r+0x1684>
 8003ba8:	2030      	movs	r0, #48	; 0x30
 8003baa:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003bae:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003bb0:	1e5a      	subs	r2, r3, #1
 8003bb2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003bb4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003bb8:	4291      	cmp	r1, r2
 8003bba:	d0f6      	beq.n	8003baa <_vfprintf_r+0x1672>
 8003bbc:	2a39      	cmp	r2, #57	; 0x39
 8003bbe:	bf0b      	itete	eq
 8003bc0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003bc2:	3201      	addne	r2, #1
 8003bc4:	7a92      	ldrbeq	r2, [r2, #10]
 8003bc6:	b2d2      	uxtbne	r2, r2
 8003bc8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003bcc:	e682      	b.n	80038d4 <_vfprintf_r+0x139c>
 8003bce:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003bd2:	f43f ad9f 	beq.w	8003714 <_vfprintf_r+0x11dc>
 8003bd6:	9a05      	ldr	r2, [sp, #20]
 8003bd8:	701a      	strb	r2, [r3, #0]
 8003bda:	4657      	mov	r7, sl
 8003bdc:	f7fe bf52 	b.w	8002a84 <_vfprintf_r+0x54c>
 8003be0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003be2:	9907      	ldr	r1, [sp, #28]
 8003be4:	9803      	ldr	r0, [sp, #12]
 8003be6:	f002 ffd5 	bl	8006b94 <__sprint_r>
 8003bea:	2800      	cmp	r0, #0
 8003bec:	f47f aa1c 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003bf0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003bf2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003bf6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bfa:	e571      	b.n	80036e0 <_vfprintf_r+0x11a8>
 8003bfc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bfe:	2b00      	cmp	r3, #0
 8003c00:	f340 8164 	ble.w	8003ecc <_vfprintf_r+0x1994>
 8003c04:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c06:	f1b9 0f00 	cmp.w	r9, #0
 8003c0a:	f040 8103 	bne.w	8003e14 <_vfprintf_r+0x18dc>
 8003c0e:	07c6      	lsls	r6, r0, #31
 8003c10:	f100 8100 	bmi.w	8003e14 <_vfprintf_r+0x18dc>
 8003c14:	9309      	str	r3, [sp, #36]	; 0x24
 8003c16:	2666      	movs	r6, #102	; 0x66
 8003c18:	0543      	lsls	r3, r0, #21
 8003c1a:	f100 8086 	bmi.w	8003d2a <_vfprintf_r+0x17f2>
 8003c1e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c20:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c24:	9304      	str	r3, [sp, #16]
 8003c26:	e79e      	b.n	8003b66 <_vfprintf_r+0x162e>
 8003c28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c2a:	9907      	ldr	r1, [sp, #28]
 8003c2c:	9803      	ldr	r0, [sp, #12]
 8003c2e:	f002 ffb1 	bl	8006b94 <__sprint_r>
 8003c32:	2800      	cmp	r0, #0
 8003c34:	f47f a9f8 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003c38:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c3a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003c3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c3e:	1ad3      	subs	r3, r2, r3
 8003c40:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c44:	f7ff bb90 	b.w	8003368 <_vfprintf_r+0xe30>
 8003c48:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c4a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c4c:	4413      	add	r3, r2
 8003c4e:	9309      	str	r3, [sp, #36]	; 0x24
 8003c50:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c52:	2b00      	cmp	r3, #0
 8003c54:	f340 8149 	ble.w	8003eea <_vfprintf_r+0x19b2>
 8003c58:	2667      	movs	r6, #103	; 0x67
 8003c5a:	e7dd      	b.n	8003c18 <_vfprintf_r+0x16e0>
 8003c5c:	2330      	movs	r3, #48	; 0x30
 8003c5e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003c62:	2358      	movs	r3, #88	; 0x58
 8003c64:	e595      	b.n	8003792 <_vfprintf_r+0x125a>
 8003c66:	9803      	ldr	r0, [sp, #12]
 8003c68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c6a:	4649      	mov	r1, r9
 8003c6c:	f002 ff92 	bl	8006b94 <__sprint_r>
 8003c70:	2800      	cmp	r0, #0
 8003c72:	f47f a9e0 	bne.w	8003036 <_vfprintf_r+0xafe>
 8003c76:	f7fe bf0f 	b.w	8002a98 <_vfprintf_r+0x560>
 8003c7a:	a824      	add	r0, sp, #144	; 0x90
 8003c7c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c80:	f002 fe90 	bl	80069a4 <frexp>
 8003c84:	2200      	movs	r2, #0
 8003c86:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003c8a:	ec51 0b10 	vmov	r0, r1, d0
 8003c8e:	f7fc ff53 	bl	8000b38 <__aeabi_dmul>
 8003c92:	2200      	movs	r2, #0
 8003c94:	2300      	movs	r3, #0
 8003c96:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003c9a:	f7fd f9b5 	bl	8001008 <__aeabi_dcmpeq>
 8003c9e:	b108      	cbz	r0, 8003ca4 <_vfprintf_r+0x176c>
 8003ca0:	2301      	movs	r3, #1
 8003ca2:	9324      	str	r3, [sp, #144]	; 0x90
 8003ca4:	4b02      	ldr	r3, [pc, #8]	; (8003cb0 <_vfprintf_r+0x1778>)
 8003ca6:	9309      	str	r3, [sp, #36]	; 0x24
 8003ca8:	e5ac      	b.n	8003804 <_vfprintf_r+0x12cc>
 8003caa:	bf00      	nop
 8003cac:	0800741c 	.word	0x0800741c
 8003cb0:	080073d8 	.word	0x080073d8
 8003cb4:	425d      	negs	r5, r3
 8003cb6:	3310      	adds	r3, #16
 8003cb8:	4bb9      	ldr	r3, [pc, #740]	; (8003fa0 <_vfprintf_r+0x1a68>)
 8003cba:	f280 8097 	bge.w	8003dec <_vfprintf_r+0x18b4>
 8003cbe:	4619      	mov	r1, r3
 8003cc0:	2610      	movs	r6, #16
 8003cc2:	4623      	mov	r3, r4
 8003cc4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003cc8:	460c      	mov	r4, r1
 8003cca:	e005      	b.n	8003cd8 <_vfprintf_r+0x17a0>
 8003ccc:	f10b 0b08 	add.w	fp, fp, #8
 8003cd0:	3d10      	subs	r5, #16
 8003cd2:	2d10      	cmp	r5, #16
 8003cd4:	f340 8087 	ble.w	8003de6 <_vfprintf_r+0x18ae>
 8003cd8:	3201      	adds	r2, #1
 8003cda:	3310      	adds	r3, #16
 8003cdc:	2a07      	cmp	r2, #7
 8003cde:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003ce2:	e9cb 4600 	strd	r4, r6, [fp]
 8003ce6:	ddf1      	ble.n	8003ccc <_vfprintf_r+0x1794>
 8003ce8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cea:	9907      	ldr	r1, [sp, #28]
 8003cec:	4648      	mov	r0, r9
 8003cee:	f002 ff51 	bl	8006b94 <__sprint_r>
 8003cf2:	2800      	cmp	r0, #0
 8003cf4:	f47f a998 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003cf8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003cfc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d00:	e7e6      	b.n	8003cd0 <_vfprintf_r+0x1798>
 8003d02:	f109 0101 	add.w	r1, r9, #1
 8003d06:	9803      	ldr	r0, [sp, #12]
 8003d08:	f001 fe80 	bl	8005a0c <_malloc_r>
 8003d0c:	4607      	mov	r7, r0
 8003d0e:	2800      	cmp	r0, #0
 8003d10:	f000 813b 	beq.w	8003f8a <_vfprintf_r+0x1a52>
 8003d14:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003d18:	930e      	str	r3, [sp, #56]	; 0x38
 8003d1a:	f026 0320 	bic.w	r3, r6, #32
 8003d1e:	9304      	str	r3, [sp, #16]
 8003d20:	46a0      	mov	r8, r4
 8003d22:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d24:	900a      	str	r0, [sp, #40]	; 0x28
 8003d26:	e547      	b.n	80037b8 <_vfprintf_r+0x1280>
 8003d28:	2667      	movs	r6, #103	; 0x67
 8003d2a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003d2c:	2200      	movs	r2, #0
 8003d2e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003d30:	9214      	str	r2, [sp, #80]	; 0x50
 8003d32:	7803      	ldrb	r3, [r0, #0]
 8003d34:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003d36:	2bff      	cmp	r3, #255	; 0xff
 8003d38:	d00c      	beq.n	8003d54 <_vfprintf_r+0x181c>
 8003d3a:	4293      	cmp	r3, r2
 8003d3c:	da0a      	bge.n	8003d54 <_vfprintf_r+0x181c>
 8003d3e:	7841      	ldrb	r1, [r0, #1]
 8003d40:	1ad2      	subs	r2, r2, r3
 8003d42:	b1a9      	cbz	r1, 8003d70 <_vfprintf_r+0x1838>
 8003d44:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d46:	3301      	adds	r3, #1
 8003d48:	9314      	str	r3, [sp, #80]	; 0x50
 8003d4a:	460b      	mov	r3, r1
 8003d4c:	2bff      	cmp	r3, #255	; 0xff
 8003d4e:	f100 0001 	add.w	r0, r0, #1
 8003d52:	d1f2      	bne.n	8003d3a <_vfprintf_r+0x1802>
 8003d54:	9211      	str	r2, [sp, #68]	; 0x44
 8003d56:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d58:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003d5a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003d5c:	901a      	str	r0, [sp, #104]	; 0x68
 8003d5e:	4413      	add	r3, r2
 8003d60:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003d62:	fb02 1303 	mla	r3, r2, r3, r1
 8003d66:	9309      	str	r3, [sp, #36]	; 0x24
 8003d68:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d6c:	9304      	str	r3, [sp, #16]
 8003d6e:	e485      	b.n	800367c <_vfprintf_r+0x1144>
 8003d70:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003d72:	3101      	adds	r1, #1
 8003d74:	910f      	str	r1, [sp, #60]	; 0x3c
 8003d76:	e7de      	b.n	8003d36 <_vfprintf_r+0x17fe>
 8003d78:	aa28      	add	r2, sp, #160	; 0xa0
 8003d7a:	ab25      	add	r3, sp, #148	; 0x94
 8003d7c:	e9cd 3200 	strd	r3, r2, [sp]
 8003d80:	2103      	movs	r1, #3
 8003d82:	ab24      	add	r3, sp, #144	; 0x90
 8003d84:	464a      	mov	r2, r9
 8003d86:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d8a:	9803      	ldr	r0, [sp, #12]
 8003d8c:	f000 fa5c 	bl	8004248 <_dtoa_r>
 8003d90:	464d      	mov	r5, r9
 8003d92:	4607      	mov	r7, r0
 8003d94:	eb00 0409 	add.w	r4, r0, r9
 8003d98:	783b      	ldrb	r3, [r7, #0]
 8003d9a:	2b30      	cmp	r3, #48	; 0x30
 8003d9c:	f000 80be 	beq.w	8003f1c <_vfprintf_r+0x19e4>
 8003da0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003da2:	442c      	add	r4, r5
 8003da4:	2200      	movs	r2, #0
 8003da6:	2300      	movs	r3, #0
 8003da8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003dac:	f7fd f92c 	bl	8001008 <__aeabi_dcmpeq>
 8003db0:	b108      	cbz	r0, 8003db6 <_vfprintf_r+0x187e>
 8003db2:	4623      	mov	r3, r4
 8003db4:	e413      	b.n	80035de <_vfprintf_r+0x10a6>
 8003db6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003db8:	42a3      	cmp	r3, r4
 8003dba:	f4bf ac10 	bcs.w	80035de <_vfprintf_r+0x10a6>
 8003dbe:	2130      	movs	r1, #48	; 0x30
 8003dc0:	1c5a      	adds	r2, r3, #1
 8003dc2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003dc4:	7019      	strb	r1, [r3, #0]
 8003dc6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003dc8:	429c      	cmp	r4, r3
 8003dca:	d8f9      	bhi.n	8003dc0 <_vfprintf_r+0x1888>
 8003dcc:	e407      	b.n	80035de <_vfprintf_r+0x10a6>
 8003dce:	197c      	adds	r4, r7, r5
 8003dd0:	e7e8      	b.n	8003da4 <_vfprintf_r+0x186c>
 8003dd2:	f1b9 0f00 	cmp.w	r9, #0
 8003dd6:	f000 8092 	beq.w	8003efe <_vfprintf_r+0x19c6>
 8003dda:	900a      	str	r0, [sp, #40]	; 0x28
 8003ddc:	e4ec      	b.n	80037b8 <_vfprintf_r+0x1280>
 8003dde:	900a      	str	r0, [sp, #40]	; 0x28
 8003de0:	f04f 0906 	mov.w	r9, #6
 8003de4:	e4e8      	b.n	80037b8 <_vfprintf_r+0x1280>
 8003de6:	4621      	mov	r1, r4
 8003de8:	461c      	mov	r4, r3
 8003dea:	460b      	mov	r3, r1
 8003dec:	3201      	adds	r2, #1
 8003dee:	442c      	add	r4, r5
 8003df0:	2a07      	cmp	r2, #7
 8003df2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003df6:	e9cb 3500 	strd	r3, r5, [fp]
 8003dfa:	f300 80a9 	bgt.w	8003f50 <_vfprintf_r+0x1a18>
 8003dfe:	f10b 0b08 	add.w	fp, fp, #8
 8003e02:	e470      	b.n	80036e6 <_vfprintf_r+0x11ae>
 8003e04:	469a      	mov	sl, r3
 8003e06:	f7ff bb37 	b.w	8003478 <_vfprintf_r+0xf40>
 8003e0a:	2301      	movs	r3, #1
 8003e0c:	9324      	str	r3, [sp, #144]	; 0x90
 8003e0e:	4b65      	ldr	r3, [pc, #404]	; (8003fa4 <_vfprintf_r+0x1a6c>)
 8003e10:	9309      	str	r3, [sp, #36]	; 0x24
 8003e12:	e4f7      	b.n	8003804 <_vfprintf_r+0x12cc>
 8003e14:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e16:	4413      	add	r3, r2
 8003e18:	444b      	add	r3, r9
 8003e1a:	9309      	str	r3, [sp, #36]	; 0x24
 8003e1c:	2666      	movs	r6, #102	; 0x66
 8003e1e:	e6fb      	b.n	8003c18 <_vfprintf_r+0x16e0>
 8003e20:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e22:	9309      	str	r3, [sp, #36]	; 0x24
 8003e24:	e694      	b.n	8003b50 <_vfprintf_r+0x1618>
 8003e26:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003e2a:	4664      	mov	r4, ip
 8003e2c:	4d5e      	ldr	r5, [pc, #376]	; (8003fa8 <_vfprintf_r+0x1a70>)
 8003e2e:	e000      	b.n	8003e32 <_vfprintf_r+0x18fa>
 8003e30:	4614      	mov	r4, r2
 8003e32:	fba5 1203 	umull	r1, r2, r5, r3
 8003e36:	08d2      	lsrs	r2, r2, #3
 8003e38:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003e3c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003e40:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003e44:	4613      	mov	r3, r2
 8003e46:	2b09      	cmp	r3, #9
 8003e48:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003e4c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003e50:	dcee      	bgt.n	8003e30 <_vfprintf_r+0x18f8>
 8003e52:	3330      	adds	r3, #48	; 0x30
 8003e54:	3c02      	subs	r4, #2
 8003e56:	b2db      	uxtb	r3, r3
 8003e58:	45a4      	cmp	ip, r4
 8003e5a:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003e5e:	f240 8090 	bls.w	8003f82 <_vfprintf_r+0x1a4a>
 8003e62:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003e66:	4611      	mov	r1, r2
 8003e68:	e001      	b.n	8003e6e <_vfprintf_r+0x1936>
 8003e6a:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003e6e:	f804 3b01 	strb.w	r3, [r4], #1
 8003e72:	458c      	cmp	ip, r1
 8003e74:	d1f9      	bne.n	8003e6a <_vfprintf_r+0x1932>
 8003e76:	ab2a      	add	r3, sp, #168	; 0xa8
 8003e78:	1a9b      	subs	r3, r3, r2
 8003e7a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e7e:	4413      	add	r3, r2
 8003e80:	f7ff bbe3 	b.w	800364a <_vfprintf_r+0x1112>
 8003e84:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003e86:	4f49      	ldr	r7, [pc, #292]	; (8003fac <_vfprintf_r+0x1a74>)
 8003e88:	2b00      	cmp	r3, #0
 8003e8a:	bfb6      	itet	lt
 8003e8c:	222d      	movlt	r2, #45	; 0x2d
 8003e8e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003e92:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003e96:	4b46      	ldr	r3, [pc, #280]	; (8003fb0 <_vfprintf_r+0x1a78>)
 8003e98:	f7fe bf02 	b.w	8002ca0 <_vfprintf_r+0x768>
 8003e9c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003ea0:	f7ff b8c9 	b.w	8003036 <_vfprintf_r+0xafe>
 8003ea4:	aa28      	add	r2, sp, #160	; 0xa0
 8003ea6:	ab25      	add	r3, sp, #148	; 0x94
 8003ea8:	e9cd 3200 	strd	r3, r2, [sp]
 8003eac:	2103      	movs	r1, #3
 8003eae:	ab24      	add	r3, sp, #144	; 0x90
 8003eb0:	464a      	mov	r2, r9
 8003eb2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003eb6:	9803      	ldr	r0, [sp, #12]
 8003eb8:	f000 f9c6 	bl	8004248 <_dtoa_r>
 8003ebc:	464d      	mov	r5, r9
 8003ebe:	4607      	mov	r7, r0
 8003ec0:	2e46      	cmp	r6, #70	; 0x46
 8003ec2:	eb07 0405 	add.w	r4, r7, r5
 8003ec6:	f43f af67 	beq.w	8003d98 <_vfprintf_r+0x1860>
 8003eca:	e76b      	b.n	8003da4 <_vfprintf_r+0x186c>
 8003ecc:	f1b9 0f00 	cmp.w	r9, #0
 8003ed0:	d131      	bne.n	8003f36 <_vfprintf_r+0x19fe>
 8003ed2:	07c5      	lsls	r5, r0, #31
 8003ed4:	d42f      	bmi.n	8003f36 <_vfprintf_r+0x19fe>
 8003ed6:	2301      	movs	r3, #1
 8003ed8:	9304      	str	r3, [sp, #16]
 8003eda:	9309      	str	r3, [sp, #36]	; 0x24
 8003edc:	2666      	movs	r6, #102	; 0x66
 8003ede:	e642      	b.n	8003b66 <_vfprintf_r+0x162e>
 8003ee0:	07c3      	lsls	r3, r0, #31
 8003ee2:	f57f abbf 	bpl.w	8003664 <_vfprintf_r+0x112c>
 8003ee6:	f7ff bbb9 	b.w	800365c <_vfprintf_r+0x1124>
 8003eea:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003eec:	f1c3 0301 	rsb	r3, r3, #1
 8003ef0:	441a      	add	r2, r3
 8003ef2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003ef6:	9209      	str	r2, [sp, #36]	; 0x24
 8003ef8:	9304      	str	r3, [sp, #16]
 8003efa:	2667      	movs	r6, #103	; 0x67
 8003efc:	e633      	b.n	8003b66 <_vfprintf_r+0x162e>
 8003efe:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003f02:	f04f 0901 	mov.w	r9, #1
 8003f06:	e457      	b.n	80037b8 <_vfprintf_r+0x1280>
 8003f08:	465a      	mov	r2, fp
 8003f0a:	e511      	b.n	8003930 <_vfprintf_r+0x13f8>
 8003f0c:	2e47      	cmp	r6, #71	; 0x47
 8003f0e:	f47f af5e 	bne.w	8003dce <_vfprintf_r+0x1896>
 8003f12:	f018 0f01 	tst.w	r8, #1
 8003f16:	f43f ab61 	beq.w	80035dc <_vfprintf_r+0x10a4>
 8003f1a:	e7d1      	b.n	8003ec0 <_vfprintf_r+0x1988>
 8003f1c:	2200      	movs	r2, #0
 8003f1e:	2300      	movs	r3, #0
 8003f20:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003f24:	f7fd f870 	bl	8001008 <__aeabi_dcmpeq>
 8003f28:	2800      	cmp	r0, #0
 8003f2a:	f47f af39 	bne.w	8003da0 <_vfprintf_r+0x1868>
 8003f2e:	f1c5 0501 	rsb	r5, r5, #1
 8003f32:	9524      	str	r5, [sp, #144]	; 0x90
 8003f34:	e735      	b.n	8003da2 <_vfprintf_r+0x186a>
 8003f36:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003f38:	3301      	adds	r3, #1
 8003f3a:	444b      	add	r3, r9
 8003f3c:	9309      	str	r3, [sp, #36]	; 0x24
 8003f3e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f42:	9304      	str	r3, [sp, #16]
 8003f44:	2666      	movs	r6, #102	; 0x66
 8003f46:	e60e      	b.n	8003b66 <_vfprintf_r+0x162e>
 8003f48:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003f4c:	f7ff bb7a 	b.w	8003644 <_vfprintf_r+0x110c>
 8003f50:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f52:	9907      	ldr	r1, [sp, #28]
 8003f54:	9803      	ldr	r0, [sp, #12]
 8003f56:	f002 fe1d 	bl	8006b94 <__sprint_r>
 8003f5a:	2800      	cmp	r0, #0
 8003f5c:	f47f a864 	bne.w	8003028 <_vfprintf_r+0xaf0>
 8003f60:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003f64:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f68:	f7ff bbbd 	b.w	80036e6 <_vfprintf_r+0x11ae>
 8003f6c:	9908      	ldr	r1, [sp, #32]
 8003f6e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003f72:	680b      	ldr	r3, [r1, #0]
 8003f74:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003f78:	1d0b      	adds	r3, r1, #4
 8003f7a:	4692      	mov	sl, r2
 8003f7c:	9308      	str	r3, [sp, #32]
 8003f7e:	f7fe bb59 	b.w	8002634 <_vfprintf_r+0xfc>
 8003f82:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003f86:	f7ff bb60 	b.w	800364a <_vfprintf_r+0x1112>
 8003f8a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003f8e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003f92:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f96:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003f9a:	f7ff b84c 	b.w	8003036 <_vfprintf_r+0xafe>
 8003f9e:	bf00      	nop
 8003fa0:	0800741c 	.word	0x0800741c
 8003fa4:	080073ec 	.word	0x080073ec
 8003fa8:	cccccccd 	.word	0xcccccccd
 8003fac:	080073d4 	.word	0x080073d4
 8003fb0:	080073d0 	.word	0x080073d0

08003fb4 <__sbprintf>:
 8003fb4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003fb8:	460c      	mov	r4, r1
 8003fba:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003fbe:	8989      	ldrh	r1, [r1, #12]
 8003fc0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003fc2:	89e5      	ldrh	r5, [r4, #14]
 8003fc4:	9619      	str	r6, [sp, #100]	; 0x64
 8003fc6:	f021 0102 	bic.w	r1, r1, #2
 8003fca:	4606      	mov	r6, r0
 8003fcc:	69e0      	ldr	r0, [r4, #28]
 8003fce:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003fd2:	4617      	mov	r7, r2
 8003fd4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003fd8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003fda:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003fde:	4698      	mov	r8, r3
 8003fe0:	ad1a      	add	r5, sp, #104	; 0x68
 8003fe2:	2300      	movs	r3, #0
 8003fe4:	9007      	str	r0, [sp, #28]
 8003fe6:	a816      	add	r0, sp, #88	; 0x58
 8003fe8:	9209      	str	r2, [sp, #36]	; 0x24
 8003fea:	9306      	str	r3, [sp, #24]
 8003fec:	9500      	str	r5, [sp, #0]
 8003fee:	9504      	str	r5, [sp, #16]
 8003ff0:	9102      	str	r1, [sp, #8]
 8003ff2:	9105      	str	r1, [sp, #20]
 8003ff4:	f001 fc8a 	bl	800590c <__retarget_lock_init_recursive>
 8003ff8:	4643      	mov	r3, r8
 8003ffa:	463a      	mov	r2, r7
 8003ffc:	4669      	mov	r1, sp
 8003ffe:	4630      	mov	r0, r6
 8004000:	f7fe fa9a 	bl	8002538 <_vfprintf_r>
 8004004:	1e05      	subs	r5, r0, #0
 8004006:	db07      	blt.n	8004018 <__sbprintf+0x64>
 8004008:	4630      	mov	r0, r6
 800400a:	4669      	mov	r1, sp
 800400c:	f001 f8d6 	bl	80051bc <_fflush_r>
 8004010:	2800      	cmp	r0, #0
 8004012:	bf18      	it	ne
 8004014:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004018:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800401c:	065b      	lsls	r3, r3, #25
 800401e:	d503      	bpl.n	8004028 <__sbprintf+0x74>
 8004020:	89a3      	ldrh	r3, [r4, #12]
 8004022:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004026:	81a3      	strh	r3, [r4, #12]
 8004028:	9816      	ldr	r0, [sp, #88]	; 0x58
 800402a:	f001 fc71 	bl	8005910 <__retarget_lock_close_recursive>
 800402e:	4628      	mov	r0, r5
 8004030:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004034:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004038 <__swsetup_r>:
 8004038:	b538      	push	{r3, r4, r5, lr}
 800403a:	4b31      	ldr	r3, [pc, #196]	; (8004100 <__swsetup_r+0xc8>)
 800403c:	681b      	ldr	r3, [r3, #0]
 800403e:	4605      	mov	r5, r0
 8004040:	460c      	mov	r4, r1
 8004042:	b113      	cbz	r3, 800404a <__swsetup_r+0x12>
 8004044:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004046:	2a00      	cmp	r2, #0
 8004048:	d03a      	beq.n	80040c0 <__swsetup_r+0x88>
 800404a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800404e:	b293      	uxth	r3, r2
 8004050:	0718      	lsls	r0, r3, #28
 8004052:	d50c      	bpl.n	800406e <__swsetup_r+0x36>
 8004054:	6920      	ldr	r0, [r4, #16]
 8004056:	b1a8      	cbz	r0, 8004084 <__swsetup_r+0x4c>
 8004058:	f013 0201 	ands.w	r2, r3, #1
 800405c:	d020      	beq.n	80040a0 <__swsetup_r+0x68>
 800405e:	6963      	ldr	r3, [r4, #20]
 8004060:	2200      	movs	r2, #0
 8004062:	425b      	negs	r3, r3
 8004064:	61a3      	str	r3, [r4, #24]
 8004066:	60a2      	str	r2, [r4, #8]
 8004068:	b300      	cbz	r0, 80040ac <__swsetup_r+0x74>
 800406a:	2000      	movs	r0, #0
 800406c:	bd38      	pop	{r3, r4, r5, pc}
 800406e:	06d9      	lsls	r1, r3, #27
 8004070:	d53e      	bpl.n	80040f0 <__swsetup_r+0xb8>
 8004072:	0758      	lsls	r0, r3, #29
 8004074:	d428      	bmi.n	80040c8 <__swsetup_r+0x90>
 8004076:	6920      	ldr	r0, [r4, #16]
 8004078:	f042 0308 	orr.w	r3, r2, #8
 800407c:	81a3      	strh	r3, [r4, #12]
 800407e:	b29b      	uxth	r3, r3
 8004080:	2800      	cmp	r0, #0
 8004082:	d1e9      	bne.n	8004058 <__swsetup_r+0x20>
 8004084:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004088:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800408c:	d0e4      	beq.n	8004058 <__swsetup_r+0x20>
 800408e:	4628      	mov	r0, r5
 8004090:	4621      	mov	r1, r4
 8004092:	f001 fc71 	bl	8005978 <__smakebuf_r>
 8004096:	89a3      	ldrh	r3, [r4, #12]
 8004098:	6920      	ldr	r0, [r4, #16]
 800409a:	f013 0201 	ands.w	r2, r3, #1
 800409e:	d1de      	bne.n	800405e <__swsetup_r+0x26>
 80040a0:	0799      	lsls	r1, r3, #30
 80040a2:	bf58      	it	pl
 80040a4:	6962      	ldrpl	r2, [r4, #20]
 80040a6:	60a2      	str	r2, [r4, #8]
 80040a8:	2800      	cmp	r0, #0
 80040aa:	d1de      	bne.n	800406a <__swsetup_r+0x32>
 80040ac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80040b0:	061a      	lsls	r2, r3, #24
 80040b2:	d5db      	bpl.n	800406c <__swsetup_r+0x34>
 80040b4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80040b8:	81a3      	strh	r3, [r4, #12]
 80040ba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80040be:	bd38      	pop	{r3, r4, r5, pc}
 80040c0:	4618      	mov	r0, r3
 80040c2:	f001 f8d7 	bl	8005274 <__sinit>
 80040c6:	e7c0      	b.n	800404a <__swsetup_r+0x12>
 80040c8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80040ca:	b151      	cbz	r1, 80040e2 <__swsetup_r+0xaa>
 80040cc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80040d0:	4299      	cmp	r1, r3
 80040d2:	d004      	beq.n	80040de <__swsetup_r+0xa6>
 80040d4:	4628      	mov	r0, r5
 80040d6:	f001 f96f 	bl	80053b8 <_free_r>
 80040da:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80040de:	2300      	movs	r3, #0
 80040e0:	6323      	str	r3, [r4, #48]	; 0x30
 80040e2:	2300      	movs	r3, #0
 80040e4:	6920      	ldr	r0, [r4, #16]
 80040e6:	6063      	str	r3, [r4, #4]
 80040e8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80040ec:	6020      	str	r0, [r4, #0]
 80040ee:	e7c3      	b.n	8004078 <__swsetup_r+0x40>
 80040f0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80040f4:	2309      	movs	r3, #9
 80040f6:	602b      	str	r3, [r5, #0]
 80040f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80040fc:	81a2      	strh	r2, [r4, #12]
 80040fe:	bd38      	pop	{r3, r4, r5, pc}
 8004100:	20000018 	.word	0x20000018

08004104 <register_fini>:
 8004104:	4b02      	ldr	r3, [pc, #8]	; (8004110 <register_fini+0xc>)
 8004106:	b113      	cbz	r3, 800410e <register_fini+0xa>
 8004108:	4802      	ldr	r0, [pc, #8]	; (8004114 <register_fini+0x10>)
 800410a:	f000 b805 	b.w	8004118 <atexit>
 800410e:	4770      	bx	lr
 8004110:	00000000 	.word	0x00000000
 8004114:	080052e5 	.word	0x080052e5

08004118 <atexit>:
 8004118:	2300      	movs	r3, #0
 800411a:	4601      	mov	r1, r0
 800411c:	461a      	mov	r2, r3
 800411e:	4618      	mov	r0, r3
 8004120:	f002 bd58 	b.w	8006bd4 <__register_exitproc>

08004124 <quorem>:
 8004124:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004128:	6903      	ldr	r3, [r0, #16]
 800412a:	690f      	ldr	r7, [r1, #16]
 800412c:	42bb      	cmp	r3, r7
 800412e:	b083      	sub	sp, #12
 8004130:	f2c0 8086 	blt.w	8004240 <quorem+0x11c>
 8004134:	3f01      	subs	r7, #1
 8004136:	f101 0914 	add.w	r9, r1, #20
 800413a:	f100 0a14 	add.w	sl, r0, #20
 800413e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004142:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004146:	00bc      	lsls	r4, r7, #2
 8004148:	3201      	adds	r2, #1
 800414a:	fbb3 f8f2 	udiv	r8, r3, r2
 800414e:	eb0a 0304 	add.w	r3, sl, r4
 8004152:	9400      	str	r4, [sp, #0]
 8004154:	eb09 0b04 	add.w	fp, r9, r4
 8004158:	9301      	str	r3, [sp, #4]
 800415a:	f1b8 0f00 	cmp.w	r8, #0
 800415e:	d038      	beq.n	80041d2 <quorem+0xae>
 8004160:	2500      	movs	r5, #0
 8004162:	462e      	mov	r6, r5
 8004164:	46ce      	mov	lr, r9
 8004166:	46d4      	mov	ip, sl
 8004168:	f85e 4b04 	ldr.w	r4, [lr], #4
 800416c:	f8dc 3000 	ldr.w	r3, [ip]
 8004170:	b2a2      	uxth	r2, r4
 8004172:	fb08 5502 	mla	r5, r8, r2, r5
 8004176:	0c22      	lsrs	r2, r4, #16
 8004178:	0c2c      	lsrs	r4, r5, #16
 800417a:	fb08 4202 	mla	r2, r8, r2, r4
 800417e:	b2ad      	uxth	r5, r5
 8004180:	1b75      	subs	r5, r6, r5
 8004182:	b296      	uxth	r6, r2
 8004184:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004188:	fa15 f383 	uxtah	r3, r5, r3
 800418c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004190:	b29b      	uxth	r3, r3
 8004192:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004196:	45f3      	cmp	fp, lr
 8004198:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800419c:	f84c 3b04 	str.w	r3, [ip], #4
 80041a0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80041a4:	d2e0      	bcs.n	8004168 <quorem+0x44>
 80041a6:	9b00      	ldr	r3, [sp, #0]
 80041a8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80041ac:	b98b      	cbnz	r3, 80041d2 <quorem+0xae>
 80041ae:	9a01      	ldr	r2, [sp, #4]
 80041b0:	1f13      	subs	r3, r2, #4
 80041b2:	459a      	cmp	sl, r3
 80041b4:	d20c      	bcs.n	80041d0 <quorem+0xac>
 80041b6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80041ba:	b94b      	cbnz	r3, 80041d0 <quorem+0xac>
 80041bc:	f1a2 0308 	sub.w	r3, r2, #8
 80041c0:	e002      	b.n	80041c8 <quorem+0xa4>
 80041c2:	681a      	ldr	r2, [r3, #0]
 80041c4:	3b04      	subs	r3, #4
 80041c6:	b91a      	cbnz	r2, 80041d0 <quorem+0xac>
 80041c8:	459a      	cmp	sl, r3
 80041ca:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80041ce:	d3f8      	bcc.n	80041c2 <quorem+0x9e>
 80041d0:	6107      	str	r7, [r0, #16]
 80041d2:	4604      	mov	r4, r0
 80041d4:	f002 f944 	bl	8006460 <__mcmp>
 80041d8:	2800      	cmp	r0, #0
 80041da:	db2d      	blt.n	8004238 <quorem+0x114>
 80041dc:	f108 0801 	add.w	r8, r8, #1
 80041e0:	4655      	mov	r5, sl
 80041e2:	2300      	movs	r3, #0
 80041e4:	f859 1b04 	ldr.w	r1, [r9], #4
 80041e8:	6828      	ldr	r0, [r5, #0]
 80041ea:	b28a      	uxth	r2, r1
 80041ec:	1a9a      	subs	r2, r3, r2
 80041ee:	0c0b      	lsrs	r3, r1, #16
 80041f0:	fa12 f280 	uxtah	r2, r2, r0
 80041f4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80041f8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80041fc:	b292      	uxth	r2, r2
 80041fe:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004202:	45cb      	cmp	fp, r9
 8004204:	f845 2b04 	str.w	r2, [r5], #4
 8004208:	ea4f 4323 	mov.w	r3, r3, asr #16
 800420c:	d2ea      	bcs.n	80041e4 <quorem+0xc0>
 800420e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004212:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004216:	b97a      	cbnz	r2, 8004238 <quorem+0x114>
 8004218:	1f1a      	subs	r2, r3, #4
 800421a:	4592      	cmp	sl, r2
 800421c:	d20b      	bcs.n	8004236 <quorem+0x112>
 800421e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004222:	b942      	cbnz	r2, 8004236 <quorem+0x112>
 8004224:	3b08      	subs	r3, #8
 8004226:	e002      	b.n	800422e <quorem+0x10a>
 8004228:	681a      	ldr	r2, [r3, #0]
 800422a:	3b04      	subs	r3, #4
 800422c:	b91a      	cbnz	r2, 8004236 <quorem+0x112>
 800422e:	459a      	cmp	sl, r3
 8004230:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004234:	d3f8      	bcc.n	8004228 <quorem+0x104>
 8004236:	6127      	str	r7, [r4, #16]
 8004238:	4640      	mov	r0, r8
 800423a:	b003      	add	sp, #12
 800423c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004240:	2000      	movs	r0, #0
 8004242:	b003      	add	sp, #12
 8004244:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004248 <_dtoa_r>:
 8004248:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800424c:	ec55 4b10 	vmov	r4, r5, d0
 8004250:	b09b      	sub	sp, #108	; 0x6c
 8004252:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004254:	9102      	str	r1, [sp, #8]
 8004256:	4681      	mov	r9, r0
 8004258:	9207      	str	r2, [sp, #28]
 800425a:	9305      	str	r3, [sp, #20]
 800425c:	e9cd 4500 	strd	r4, r5, [sp]
 8004260:	b156      	cbz	r6, 8004278 <_dtoa_r+0x30>
 8004262:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004264:	6072      	str	r2, [r6, #4]
 8004266:	2301      	movs	r3, #1
 8004268:	4093      	lsls	r3, r2
 800426a:	60b3      	str	r3, [r6, #8]
 800426c:	4631      	mov	r1, r6
 800426e:	f001 ff07 	bl	8006080 <_Bfree>
 8004272:	2300      	movs	r3, #0
 8004274:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004278:	f1b5 0800 	subs.w	r8, r5, #0
 800427c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800427e:	bfb4      	ite	lt
 8004280:	2301      	movlt	r3, #1
 8004282:	2300      	movge	r3, #0
 8004284:	6013      	str	r3, [r2, #0]
 8004286:	4b76      	ldr	r3, [pc, #472]	; (8004460 <_dtoa_r+0x218>)
 8004288:	bfbc      	itt	lt
 800428a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800428e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004292:	ea33 0308 	bics.w	r3, r3, r8
 8004296:	f000 80a6 	beq.w	80043e6 <_dtoa_r+0x19e>
 800429a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800429e:	2200      	movs	r2, #0
 80042a0:	2300      	movs	r3, #0
 80042a2:	4630      	mov	r0, r6
 80042a4:	4639      	mov	r1, r7
 80042a6:	f7fc feaf 	bl	8001008 <__aeabi_dcmpeq>
 80042aa:	4605      	mov	r5, r0
 80042ac:	b178      	cbz	r0, 80042ce <_dtoa_r+0x86>
 80042ae:	9a05      	ldr	r2, [sp, #20]
 80042b0:	2301      	movs	r3, #1
 80042b2:	6013      	str	r3, [r2, #0]
 80042b4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80042b6:	2b00      	cmp	r3, #0
 80042b8:	f000 80c0 	beq.w	800443c <_dtoa_r+0x1f4>
 80042bc:	4b69      	ldr	r3, [pc, #420]	; (8004464 <_dtoa_r+0x21c>)
 80042be:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80042c0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80042c4:	6013      	str	r3, [r2, #0]
 80042c6:	4658      	mov	r0, fp
 80042c8:	b01b      	add	sp, #108	; 0x6c
 80042ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042ce:	aa18      	add	r2, sp, #96	; 0x60
 80042d0:	a919      	add	r1, sp, #100	; 0x64
 80042d2:	ec47 6b10 	vmov	d0, r6, r7
 80042d6:	4648      	mov	r0, r9
 80042d8:	f002 f954 	bl	8006584 <__d2b>
 80042dc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80042e0:	4682      	mov	sl, r0
 80042e2:	f040 80a0 	bne.w	8004426 <_dtoa_r+0x1de>
 80042e6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80042ea:	442c      	add	r4, r5
 80042ec:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80042f0:	2b20      	cmp	r3, #32
 80042f2:	f340 842c 	ble.w	8004b4e <_dtoa_r+0x906>
 80042f6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80042fa:	fa08 f803 	lsl.w	r8, r8, r3
 80042fe:	9b00      	ldr	r3, [sp, #0]
 8004300:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004304:	fa23 f000 	lsr.w	r0, r3, r0
 8004308:	ea48 0000 	orr.w	r0, r8, r0
 800430c:	f7fc fb9a 	bl	8000a44 <__aeabi_ui2d>
 8004310:	2301      	movs	r3, #1
 8004312:	4606      	mov	r6, r0
 8004314:	3c01      	subs	r4, #1
 8004316:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800431a:	930f      	str	r3, [sp, #60]	; 0x3c
 800431c:	4630      	mov	r0, r6
 800431e:	4639      	mov	r1, r7
 8004320:	2200      	movs	r2, #0
 8004322:	4b51      	ldr	r3, [pc, #324]	; (8004468 <_dtoa_r+0x220>)
 8004324:	f7fc fa50 	bl	80007c8 <__aeabi_dsub>
 8004328:	a347      	add	r3, pc, #284	; (adr r3, 8004448 <_dtoa_r+0x200>)
 800432a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800432e:	f7fc fc03 	bl	8000b38 <__aeabi_dmul>
 8004332:	a347      	add	r3, pc, #284	; (adr r3, 8004450 <_dtoa_r+0x208>)
 8004334:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004338:	f7fc fa48 	bl	80007cc <__adddf3>
 800433c:	4606      	mov	r6, r0
 800433e:	4620      	mov	r0, r4
 8004340:	460f      	mov	r7, r1
 8004342:	f7fc fb8f 	bl	8000a64 <__aeabi_i2d>
 8004346:	a344      	add	r3, pc, #272	; (adr r3, 8004458 <_dtoa_r+0x210>)
 8004348:	e9d3 2300 	ldrd	r2, r3, [r3]
 800434c:	f7fc fbf4 	bl	8000b38 <__aeabi_dmul>
 8004350:	4602      	mov	r2, r0
 8004352:	460b      	mov	r3, r1
 8004354:	4630      	mov	r0, r6
 8004356:	4639      	mov	r1, r7
 8004358:	f7fc fa38 	bl	80007cc <__adddf3>
 800435c:	4606      	mov	r6, r0
 800435e:	460f      	mov	r7, r1
 8004360:	f7fc fe9a 	bl	8001098 <__aeabi_d2iz>
 8004364:	2200      	movs	r2, #0
 8004366:	9006      	str	r0, [sp, #24]
 8004368:	2300      	movs	r3, #0
 800436a:	4630      	mov	r0, r6
 800436c:	4639      	mov	r1, r7
 800436e:	f7fc fe55 	bl	800101c <__aeabi_dcmplt>
 8004372:	2800      	cmp	r0, #0
 8004374:	f040 8273 	bne.w	800485e <_dtoa_r+0x616>
 8004378:	9e06      	ldr	r6, [sp, #24]
 800437a:	2e16      	cmp	r6, #22
 800437c:	f200 825d 	bhi.w	800483a <_dtoa_r+0x5f2>
 8004380:	4b3a      	ldr	r3, [pc, #232]	; (800446c <_dtoa_r+0x224>)
 8004382:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004386:	e9d3 0100 	ldrd	r0, r1, [r3]
 800438a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800438e:	f7fc fe63 	bl	8001058 <__aeabi_dcmpgt>
 8004392:	2800      	cmp	r0, #0
 8004394:	f000 83d7 	beq.w	8004b46 <_dtoa_r+0x8fe>
 8004398:	1e73      	subs	r3, r6, #1
 800439a:	9306      	str	r3, [sp, #24]
 800439c:	2300      	movs	r3, #0
 800439e:	930d      	str	r3, [sp, #52]	; 0x34
 80043a0:	1b2c      	subs	r4, r5, r4
 80043a2:	f1b4 0801 	subs.w	r8, r4, #1
 80043a6:	f100 8254 	bmi.w	8004852 <_dtoa_r+0x60a>
 80043aa:	2300      	movs	r3, #0
 80043ac:	9308      	str	r3, [sp, #32]
 80043ae:	9b06      	ldr	r3, [sp, #24]
 80043b0:	2b00      	cmp	r3, #0
 80043b2:	f2c0 8245 	blt.w	8004840 <_dtoa_r+0x5f8>
 80043b6:	4498      	add	r8, r3
 80043b8:	930c      	str	r3, [sp, #48]	; 0x30
 80043ba:	2300      	movs	r3, #0
 80043bc:	930b      	str	r3, [sp, #44]	; 0x2c
 80043be:	9b02      	ldr	r3, [sp, #8]
 80043c0:	2b09      	cmp	r3, #9
 80043c2:	d85b      	bhi.n	800447c <_dtoa_r+0x234>
 80043c4:	2b05      	cmp	r3, #5
 80043c6:	f340 83c0 	ble.w	8004b4a <_dtoa_r+0x902>
 80043ca:	3b04      	subs	r3, #4
 80043cc:	9302      	str	r3, [sp, #8]
 80043ce:	2500      	movs	r5, #0
 80043d0:	9b02      	ldr	r3, [sp, #8]
 80043d2:	3b02      	subs	r3, #2
 80043d4:	2b03      	cmp	r3, #3
 80043d6:	f200 8498 	bhi.w	8004d0a <_dtoa_r+0xac2>
 80043da:	e8df f013 	tbh	[pc, r3, lsl #1]
 80043de:	03df      	.short	0x03df
 80043e0:	03e803bf 	.word	0x03e803bf
 80043e4:	04f5      	.short	0x04f5
 80043e6:	9a05      	ldr	r2, [sp, #20]
 80043e8:	f242 730f 	movw	r3, #9999	; 0x270f
 80043ec:	6013      	str	r3, [r2, #0]
 80043ee:	9b00      	ldr	r3, [sp, #0]
 80043f0:	b983      	cbnz	r3, 8004414 <_dtoa_r+0x1cc>
 80043f2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80043f6:	b96b      	cbnz	r3, 8004414 <_dtoa_r+0x1cc>
 80043f8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80043fa:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004470 <_dtoa_r+0x228>
 80043fe:	2b00      	cmp	r3, #0
 8004400:	f43f af61 	beq.w	80042c6 <_dtoa_r+0x7e>
 8004404:	f10b 0308 	add.w	r3, fp, #8
 8004408:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800440a:	4658      	mov	r0, fp
 800440c:	6013      	str	r3, [r2, #0]
 800440e:	b01b      	add	sp, #108	; 0x6c
 8004410:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004414:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004416:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004474 <_dtoa_r+0x22c>
 800441a:	2b00      	cmp	r3, #0
 800441c:	f43f af53 	beq.w	80042c6 <_dtoa_r+0x7e>
 8004420:	f10b 0303 	add.w	r3, fp, #3
 8004424:	e7f0      	b.n	8004408 <_dtoa_r+0x1c0>
 8004426:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800442a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800442e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004430:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004434:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004438:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800443a:	e76f      	b.n	800431c <_dtoa_r+0xd4>
 800443c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004478 <_dtoa_r+0x230>
 8004440:	4658      	mov	r0, fp
 8004442:	b01b      	add	sp, #108	; 0x6c
 8004444:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004448:	636f4361 	.word	0x636f4361
 800444c:	3fd287a7 	.word	0x3fd287a7
 8004450:	8b60c8b3 	.word	0x8b60c8b3
 8004454:	3fc68a28 	.word	0x3fc68a28
 8004458:	509f79fb 	.word	0x509f79fb
 800445c:	3fd34413 	.word	0x3fd34413
 8004460:	7ff00000 	.word	0x7ff00000
 8004464:	08007409 	.word	0x08007409
 8004468:	3ff80000 	.word	0x3ff80000
 800446c:	08007468 	.word	0x08007468
 8004470:	0800742c 	.word	0x0800742c
 8004474:	08007438 	.word	0x08007438
 8004478:	08007408 	.word	0x08007408
 800447c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004480:	2501      	movs	r5, #1
 8004482:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004486:	2300      	movs	r3, #0
 8004488:	9302      	str	r3, [sp, #8]
 800448a:	9307      	str	r3, [sp, #28]
 800448c:	2100      	movs	r1, #0
 800448e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004492:	940e      	str	r4, [sp, #56]	; 0x38
 8004494:	4648      	mov	r0, r9
 8004496:	f001 fdcd 	bl	8006034 <_Balloc>
 800449a:	2c0e      	cmp	r4, #14
 800449c:	4683      	mov	fp, r0
 800449e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80044a2:	f200 80fb 	bhi.w	800469c <_dtoa_r+0x454>
 80044a6:	2d00      	cmp	r5, #0
 80044a8:	f000 80f8 	beq.w	800469c <_dtoa_r+0x454>
 80044ac:	ed9d 7b00 	vldr	d7, [sp]
 80044b0:	9906      	ldr	r1, [sp, #24]
 80044b2:	2900      	cmp	r1, #0
 80044b4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80044b8:	f340 83e5 	ble.w	8004c86 <_dtoa_r+0xa3e>
 80044bc:	4b9d      	ldr	r3, [pc, #628]	; (8004734 <_dtoa_r+0x4ec>)
 80044be:	f001 020f 	and.w	r2, r1, #15
 80044c2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044c6:	ed93 7b00 	vldr	d7, [r3]
 80044ca:	110c      	asrs	r4, r1, #4
 80044cc:	06e2      	lsls	r2, r4, #27
 80044ce:	ed8d 7b00 	vstr	d7, [sp]
 80044d2:	f140 849e 	bpl.w	8004e12 <_dtoa_r+0xbca>
 80044d6:	4b98      	ldr	r3, [pc, #608]	; (8004738 <_dtoa_r+0x4f0>)
 80044d8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80044dc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80044e0:	f7fc fc54 	bl	8000d8c <__aeabi_ddiv>
 80044e4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80044e8:	f004 040f 	and.w	r4, r4, #15
 80044ec:	2603      	movs	r6, #3
 80044ee:	b17c      	cbz	r4, 8004510 <_dtoa_r+0x2c8>
 80044f0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044f4:	4d90      	ldr	r5, [pc, #576]	; (8004738 <_dtoa_r+0x4f0>)
 80044f6:	07e3      	lsls	r3, r4, #31
 80044f8:	d504      	bpl.n	8004504 <_dtoa_r+0x2bc>
 80044fa:	e9d5 2300 	ldrd	r2, r3, [r5]
 80044fe:	f7fc fb1b 	bl	8000b38 <__aeabi_dmul>
 8004502:	3601      	adds	r6, #1
 8004504:	1064      	asrs	r4, r4, #1
 8004506:	f105 0508 	add.w	r5, r5, #8
 800450a:	d1f4      	bne.n	80044f6 <_dtoa_r+0x2ae>
 800450c:	e9cd 0100 	strd	r0, r1, [sp]
 8004510:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004514:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004518:	f7fc fc38 	bl	8000d8c <__aeabi_ddiv>
 800451c:	e9cd 0100 	strd	r0, r1, [sp]
 8004520:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004522:	b143      	cbz	r3, 8004536 <_dtoa_r+0x2ee>
 8004524:	2200      	movs	r2, #0
 8004526:	4b85      	ldr	r3, [pc, #532]	; (800473c <_dtoa_r+0x4f4>)
 8004528:	e9dd 0100 	ldrd	r0, r1, [sp]
 800452c:	f7fc fd76 	bl	800101c <__aeabi_dcmplt>
 8004530:	2800      	cmp	r0, #0
 8004532:	f040 84ff 	bne.w	8004f34 <_dtoa_r+0xcec>
 8004536:	4630      	mov	r0, r6
 8004538:	f7fc fa94 	bl	8000a64 <__aeabi_i2d>
 800453c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004540:	f7fc fafa 	bl	8000b38 <__aeabi_dmul>
 8004544:	4b7e      	ldr	r3, [pc, #504]	; (8004740 <_dtoa_r+0x4f8>)
 8004546:	2200      	movs	r2, #0
 8004548:	f7fc f940 	bl	80007cc <__adddf3>
 800454c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800454e:	4606      	mov	r6, r0
 8004550:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004554:	2b00      	cmp	r3, #0
 8004556:	f000 841c 	beq.w	8004d92 <_dtoa_r+0xb4a>
 800455a:	9b06      	ldr	r3, [sp, #24]
 800455c:	9316      	str	r3, [sp, #88]	; 0x58
 800455e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004560:	9312      	str	r3, [sp, #72]	; 0x48
 8004562:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004566:	f7fc fd97 	bl	8001098 <__aeabi_d2iz>
 800456a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800456c:	4b71      	ldr	r3, [pc, #452]	; (8004734 <_dtoa_r+0x4ec>)
 800456e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004572:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004576:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800457a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800457e:	f7fc fa71 	bl	8000a64 <__aeabi_i2d>
 8004582:	460b      	mov	r3, r1
 8004584:	4602      	mov	r2, r0
 8004586:	e9dd 0100 	ldrd	r0, r1, [sp]
 800458a:	e9cd 6700 	strd	r6, r7, [sp]
 800458e:	f7fc f91b 	bl	80007c8 <__aeabi_dsub>
 8004592:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004594:	b2ed      	uxtb	r5, r5
 8004596:	4606      	mov	r6, r0
 8004598:	460f      	mov	r7, r1
 800459a:	f10b 0401 	add.w	r4, fp, #1
 800459e:	2b00      	cmp	r3, #0
 80045a0:	f000 8458 	beq.w	8004e54 <_dtoa_r+0xc0c>
 80045a4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80045a8:	2000      	movs	r0, #0
 80045aa:	4966      	ldr	r1, [pc, #408]	; (8004744 <_dtoa_r+0x4fc>)
 80045ac:	f7fc fbee 	bl	8000d8c <__aeabi_ddiv>
 80045b0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045b4:	f7fc f908 	bl	80007c8 <__aeabi_dsub>
 80045b8:	f88b 5000 	strb.w	r5, [fp]
 80045bc:	4632      	mov	r2, r6
 80045be:	463b      	mov	r3, r7
 80045c0:	e9cd 0100 	strd	r0, r1, [sp]
 80045c4:	f7fc fd48 	bl	8001058 <__aeabi_dcmpgt>
 80045c8:	2800      	cmp	r0, #0
 80045ca:	f040 8502 	bne.w	8004fd2 <_dtoa_r+0xd8a>
 80045ce:	4632      	mov	r2, r6
 80045d0:	463b      	mov	r3, r7
 80045d2:	2000      	movs	r0, #0
 80045d4:	4959      	ldr	r1, [pc, #356]	; (800473c <_dtoa_r+0x4f4>)
 80045d6:	f7fc f8f7 	bl	80007c8 <__aeabi_dsub>
 80045da:	4602      	mov	r2, r0
 80045dc:	460b      	mov	r3, r1
 80045de:	e9dd 0100 	ldrd	r0, r1, [sp]
 80045e2:	f7fc fd39 	bl	8001058 <__aeabi_dcmpgt>
 80045e6:	2800      	cmp	r0, #0
 80045e8:	f040 84fb 	bne.w	8004fe2 <_dtoa_r+0xd9a>
 80045ec:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80045ee:	2a01      	cmp	r2, #1
 80045f0:	d050      	beq.n	8004694 <_dtoa_r+0x44c>
 80045f2:	445a      	add	r2, fp
 80045f4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80045f8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80045fc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004600:	4692      	mov	sl, r2
 8004602:	46cb      	mov	fp, r9
 8004604:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004608:	e00c      	b.n	8004624 <_dtoa_r+0x3dc>
 800460a:	2000      	movs	r0, #0
 800460c:	494b      	ldr	r1, [pc, #300]	; (800473c <_dtoa_r+0x4f4>)
 800460e:	f7fc f8db 	bl	80007c8 <__aeabi_dsub>
 8004612:	4642      	mov	r2, r8
 8004614:	464b      	mov	r3, r9
 8004616:	f7fc fd01 	bl	800101c <__aeabi_dcmplt>
 800461a:	2800      	cmp	r0, #0
 800461c:	f040 84dc 	bne.w	8004fd8 <_dtoa_r+0xd90>
 8004620:	4554      	cmp	r4, sl
 8004622:	d030      	beq.n	8004686 <_dtoa_r+0x43e>
 8004624:	4640      	mov	r0, r8
 8004626:	4649      	mov	r1, r9
 8004628:	2200      	movs	r2, #0
 800462a:	4b47      	ldr	r3, [pc, #284]	; (8004748 <_dtoa_r+0x500>)
 800462c:	f7fc fa84 	bl	8000b38 <__aeabi_dmul>
 8004630:	2200      	movs	r2, #0
 8004632:	4b45      	ldr	r3, [pc, #276]	; (8004748 <_dtoa_r+0x500>)
 8004634:	4680      	mov	r8, r0
 8004636:	4689      	mov	r9, r1
 8004638:	4630      	mov	r0, r6
 800463a:	4639      	mov	r1, r7
 800463c:	f7fc fa7c 	bl	8000b38 <__aeabi_dmul>
 8004640:	460f      	mov	r7, r1
 8004642:	4606      	mov	r6, r0
 8004644:	f7fc fd28 	bl	8001098 <__aeabi_d2iz>
 8004648:	4605      	mov	r5, r0
 800464a:	f7fc fa0b 	bl	8000a64 <__aeabi_i2d>
 800464e:	4602      	mov	r2, r0
 8004650:	460b      	mov	r3, r1
 8004652:	4630      	mov	r0, r6
 8004654:	4639      	mov	r1, r7
 8004656:	f7fc f8b7 	bl	80007c8 <__aeabi_dsub>
 800465a:	3530      	adds	r5, #48	; 0x30
 800465c:	b2ed      	uxtb	r5, r5
 800465e:	4642      	mov	r2, r8
 8004660:	464b      	mov	r3, r9
 8004662:	f804 5b01 	strb.w	r5, [r4], #1
 8004666:	4606      	mov	r6, r0
 8004668:	460f      	mov	r7, r1
 800466a:	f7fc fcd7 	bl	800101c <__aeabi_dcmplt>
 800466e:	4632      	mov	r2, r6
 8004670:	463b      	mov	r3, r7
 8004672:	2800      	cmp	r0, #0
 8004674:	d0c9      	beq.n	800460a <_dtoa_r+0x3c2>
 8004676:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004678:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800467c:	9306      	str	r3, [sp, #24]
 800467e:	46d9      	mov	r9, fp
 8004680:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004684:	e236      	b.n	8004af4 <_dtoa_r+0x8ac>
 8004686:	46d9      	mov	r9, fp
 8004688:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800468c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004690:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004694:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004698:	e9cd 3400 	strd	r3, r4, [sp]
 800469c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800469e:	2b00      	cmp	r3, #0
 80046a0:	f2c0 80ae 	blt.w	8004800 <_dtoa_r+0x5b8>
 80046a4:	9a06      	ldr	r2, [sp, #24]
 80046a6:	2a0e      	cmp	r2, #14
 80046a8:	f300 80aa 	bgt.w	8004800 <_dtoa_r+0x5b8>
 80046ac:	4b21      	ldr	r3, [pc, #132]	; (8004734 <_dtoa_r+0x4ec>)
 80046ae:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80046b2:	ed93 7b00 	vldr	d7, [r3]
 80046b6:	9b07      	ldr	r3, [sp, #28]
 80046b8:	2b00      	cmp	r3, #0
 80046ba:	ed8d 7b02 	vstr	d7, [sp, #8]
 80046be:	f2c0 82be 	blt.w	8004c3e <_dtoa_r+0x9f6>
 80046c2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80046c6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046ca:	4630      	mov	r0, r6
 80046cc:	4639      	mov	r1, r7
 80046ce:	f7fc fb5d 	bl	8000d8c <__aeabi_ddiv>
 80046d2:	f7fc fce1 	bl	8001098 <__aeabi_d2iz>
 80046d6:	4605      	mov	r5, r0
 80046d8:	f7fc f9c4 	bl	8000a64 <__aeabi_i2d>
 80046dc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046e0:	f7fc fa2a 	bl	8000b38 <__aeabi_dmul>
 80046e4:	460b      	mov	r3, r1
 80046e6:	4602      	mov	r2, r0
 80046e8:	4639      	mov	r1, r7
 80046ea:	4630      	mov	r0, r6
 80046ec:	f7fc f86c 	bl	80007c8 <__aeabi_dsub>
 80046f0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80046f4:	f88b 3000 	strb.w	r3, [fp]
 80046f8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046fa:	2b01      	cmp	r3, #1
 80046fc:	4606      	mov	r6, r0
 80046fe:	460f      	mov	r7, r1
 8004700:	f10b 0401 	add.w	r4, fp, #1
 8004704:	d053      	beq.n	80047ae <_dtoa_r+0x566>
 8004706:	2200      	movs	r2, #0
 8004708:	4b0f      	ldr	r3, [pc, #60]	; (8004748 <_dtoa_r+0x500>)
 800470a:	f7fc fa15 	bl	8000b38 <__aeabi_dmul>
 800470e:	2200      	movs	r2, #0
 8004710:	2300      	movs	r3, #0
 8004712:	4606      	mov	r6, r0
 8004714:	460f      	mov	r7, r1
 8004716:	f7fc fc77 	bl	8001008 <__aeabi_dcmpeq>
 800471a:	2800      	cmp	r0, #0
 800471c:	f040 81ea 	bne.w	8004af4 <_dtoa_r+0x8ac>
 8004720:	f8cd a000 	str.w	sl, [sp]
 8004724:	f8cd 901c 	str.w	r9, [sp, #28]
 8004728:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800472c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004730:	e017      	b.n	8004762 <_dtoa_r+0x51a>
 8004732:	bf00      	nop
 8004734:	08007468 	.word	0x08007468
 8004738:	08007440 	.word	0x08007440
 800473c:	3ff00000 	.word	0x3ff00000
 8004740:	401c0000 	.word	0x401c0000
 8004744:	3fe00000 	.word	0x3fe00000
 8004748:	40240000 	.word	0x40240000
 800474c:	f7fc f9f4 	bl	8000b38 <__aeabi_dmul>
 8004750:	2200      	movs	r2, #0
 8004752:	2300      	movs	r3, #0
 8004754:	4606      	mov	r6, r0
 8004756:	460f      	mov	r7, r1
 8004758:	f7fc fc56 	bl	8001008 <__aeabi_dcmpeq>
 800475c:	2800      	cmp	r0, #0
 800475e:	f040 833d 	bne.w	8004ddc <_dtoa_r+0xb94>
 8004762:	464a      	mov	r2, r9
 8004764:	4653      	mov	r3, sl
 8004766:	4630      	mov	r0, r6
 8004768:	4639      	mov	r1, r7
 800476a:	f7fc fb0f 	bl	8000d8c <__aeabi_ddiv>
 800476e:	f7fc fc93 	bl	8001098 <__aeabi_d2iz>
 8004772:	4605      	mov	r5, r0
 8004774:	f7fc f976 	bl	8000a64 <__aeabi_i2d>
 8004778:	464a      	mov	r2, r9
 800477a:	4653      	mov	r3, sl
 800477c:	f7fc f9dc 	bl	8000b38 <__aeabi_dmul>
 8004780:	4602      	mov	r2, r0
 8004782:	460b      	mov	r3, r1
 8004784:	4630      	mov	r0, r6
 8004786:	4639      	mov	r1, r7
 8004788:	f7fc f81e 	bl	80007c8 <__aeabi_dsub>
 800478c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004790:	f804 cb01 	strb.w	ip, [r4], #1
 8004794:	eba4 0c0b 	sub.w	ip, r4, fp
 8004798:	45e0      	cmp	r8, ip
 800479a:	4606      	mov	r6, r0
 800479c:	460f      	mov	r7, r1
 800479e:	f04f 0200 	mov.w	r2, #0
 80047a2:	4bc1      	ldr	r3, [pc, #772]	; (8004aa8 <_dtoa_r+0x860>)
 80047a4:	d1d2      	bne.n	800474c <_dtoa_r+0x504>
 80047a6:	f8dd a000 	ldr.w	sl, [sp]
 80047aa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80047ae:	4632      	mov	r2, r6
 80047b0:	463b      	mov	r3, r7
 80047b2:	4630      	mov	r0, r6
 80047b4:	4639      	mov	r1, r7
 80047b6:	f7fc f809 	bl	80007cc <__adddf3>
 80047ba:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047be:	4606      	mov	r6, r0
 80047c0:	460f      	mov	r7, r1
 80047c2:	f7fc fc49 	bl	8001058 <__aeabi_dcmpgt>
 80047c6:	b958      	cbnz	r0, 80047e0 <_dtoa_r+0x598>
 80047c8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047cc:	4630      	mov	r0, r6
 80047ce:	4639      	mov	r1, r7
 80047d0:	f7fc fc1a 	bl	8001008 <__aeabi_dcmpeq>
 80047d4:	2800      	cmp	r0, #0
 80047d6:	f000 818d 	beq.w	8004af4 <_dtoa_r+0x8ac>
 80047da:	07e9      	lsls	r1, r5, #31
 80047dc:	f140 818a 	bpl.w	8004af4 <_dtoa_r+0x8ac>
 80047e0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80047e4:	e005      	b.n	80047f2 <_dtoa_r+0x5aa>
 80047e6:	459b      	cmp	fp, r3
 80047e8:	f000 8373 	beq.w	8004ed2 <_dtoa_r+0xc8a>
 80047ec:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80047f0:	461c      	mov	r4, r3
 80047f2:	2d39      	cmp	r5, #57	; 0x39
 80047f4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80047f8:	d0f5      	beq.n	80047e6 <_dtoa_r+0x59e>
 80047fa:	3501      	adds	r5, #1
 80047fc:	701d      	strb	r5, [r3, #0]
 80047fe:	e179      	b.n	8004af4 <_dtoa_r+0x8ac>
 8004800:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004802:	2a00      	cmp	r2, #0
 8004804:	d03b      	beq.n	800487e <_dtoa_r+0x636>
 8004806:	9a02      	ldr	r2, [sp, #8]
 8004808:	2a01      	cmp	r2, #1
 800480a:	f340 820b 	ble.w	8004c24 <_dtoa_r+0x9dc>
 800480e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004810:	1e5f      	subs	r7, r3, #1
 8004812:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004814:	42bb      	cmp	r3, r7
 8004816:	f2c0 82e6 	blt.w	8004de6 <_dtoa_r+0xb9e>
 800481a:	1bdf      	subs	r7, r3, r7
 800481c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800481e:	2b00      	cmp	r3, #0
 8004820:	f2c0 830b 	blt.w	8004e3a <_dtoa_r+0xbf2>
 8004824:	9a08      	ldr	r2, [sp, #32]
 8004826:	4614      	mov	r4, r2
 8004828:	441a      	add	r2, r3
 800482a:	4498      	add	r8, r3
 800482c:	9208      	str	r2, [sp, #32]
 800482e:	2101      	movs	r1, #1
 8004830:	4648      	mov	r0, r9
 8004832:	f001 fcbf 	bl	80061b4 <__i2b>
 8004836:	4605      	mov	r5, r0
 8004838:	e024      	b.n	8004884 <_dtoa_r+0x63c>
 800483a:	2301      	movs	r3, #1
 800483c:	930d      	str	r3, [sp, #52]	; 0x34
 800483e:	e5af      	b.n	80043a0 <_dtoa_r+0x158>
 8004840:	9a08      	ldr	r2, [sp, #32]
 8004842:	9b06      	ldr	r3, [sp, #24]
 8004844:	1ad2      	subs	r2, r2, r3
 8004846:	425b      	negs	r3, r3
 8004848:	930b      	str	r3, [sp, #44]	; 0x2c
 800484a:	2300      	movs	r3, #0
 800484c:	9208      	str	r2, [sp, #32]
 800484e:	930c      	str	r3, [sp, #48]	; 0x30
 8004850:	e5b5      	b.n	80043be <_dtoa_r+0x176>
 8004852:	f1c4 0301 	rsb	r3, r4, #1
 8004856:	9308      	str	r3, [sp, #32]
 8004858:	f04f 0800 	mov.w	r8, #0
 800485c:	e5a7      	b.n	80043ae <_dtoa_r+0x166>
 800485e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004862:	4640      	mov	r0, r8
 8004864:	f7fc f8fe 	bl	8000a64 <__aeabi_i2d>
 8004868:	4632      	mov	r2, r6
 800486a:	463b      	mov	r3, r7
 800486c:	f7fc fbcc 	bl	8001008 <__aeabi_dcmpeq>
 8004870:	2800      	cmp	r0, #0
 8004872:	f47f ad81 	bne.w	8004378 <_dtoa_r+0x130>
 8004876:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800487a:	9306      	str	r3, [sp, #24]
 800487c:	e57c      	b.n	8004378 <_dtoa_r+0x130>
 800487e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004880:	9c08      	ldr	r4, [sp, #32]
 8004882:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004884:	2c00      	cmp	r4, #0
 8004886:	dd0c      	ble.n	80048a2 <_dtoa_r+0x65a>
 8004888:	f1b8 0f00 	cmp.w	r8, #0
 800488c:	dd09      	ble.n	80048a2 <_dtoa_r+0x65a>
 800488e:	4544      	cmp	r4, r8
 8004890:	9a08      	ldr	r2, [sp, #32]
 8004892:	4623      	mov	r3, r4
 8004894:	bfa8      	it	ge
 8004896:	4643      	movge	r3, r8
 8004898:	1ad2      	subs	r2, r2, r3
 800489a:	9208      	str	r2, [sp, #32]
 800489c:	1ae4      	subs	r4, r4, r3
 800489e:	eba8 0803 	sub.w	r8, r8, r3
 80048a2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80048a4:	b16b      	cbz	r3, 80048c2 <_dtoa_r+0x67a>
 80048a6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80048a8:	2a00      	cmp	r2, #0
 80048aa:	f000 8290 	beq.w	8004dce <_dtoa_r+0xb86>
 80048ae:	1bde      	subs	r6, r3, r7
 80048b0:	2f00      	cmp	r7, #0
 80048b2:	f040 819b 	bne.w	8004bec <_dtoa_r+0x9a4>
 80048b6:	4651      	mov	r1, sl
 80048b8:	4632      	mov	r2, r6
 80048ba:	4648      	mov	r0, r9
 80048bc:	f001 fd2a 	bl	8006314 <__pow5mult>
 80048c0:	4682      	mov	sl, r0
 80048c2:	2101      	movs	r1, #1
 80048c4:	4648      	mov	r0, r9
 80048c6:	f001 fc75 	bl	80061b4 <__i2b>
 80048ca:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80048cc:	4606      	mov	r6, r0
 80048ce:	2a00      	cmp	r2, #0
 80048d0:	f040 8125 	bne.w	8004b1e <_dtoa_r+0x8d6>
 80048d4:	9b02      	ldr	r3, [sp, #8]
 80048d6:	2b01      	cmp	r3, #1
 80048d8:	f340 816c 	ble.w	8004bb4 <_dtoa_r+0x96c>
 80048dc:	2001      	movs	r0, #1
 80048de:	4440      	add	r0, r8
 80048e0:	f010 001f 	ands.w	r0, r0, #31
 80048e4:	f000 8119 	beq.w	8004b1a <_dtoa_r+0x8d2>
 80048e8:	f1c0 0320 	rsb	r3, r0, #32
 80048ec:	2b04      	cmp	r3, #4
 80048ee:	f340 83ac 	ble.w	800504a <_dtoa_r+0xe02>
 80048f2:	f1c0 001c 	rsb	r0, r0, #28
 80048f6:	9b08      	ldr	r3, [sp, #32]
 80048f8:	4403      	add	r3, r0
 80048fa:	9308      	str	r3, [sp, #32]
 80048fc:	4404      	add	r4, r0
 80048fe:	4480      	add	r8, r0
 8004900:	9b08      	ldr	r3, [sp, #32]
 8004902:	2b00      	cmp	r3, #0
 8004904:	dd05      	ble.n	8004912 <_dtoa_r+0x6ca>
 8004906:	4651      	mov	r1, sl
 8004908:	461a      	mov	r2, r3
 800490a:	4648      	mov	r0, r9
 800490c:	f001 fd52 	bl	80063b4 <__lshift>
 8004910:	4682      	mov	sl, r0
 8004912:	f1b8 0f00 	cmp.w	r8, #0
 8004916:	dd05      	ble.n	8004924 <_dtoa_r+0x6dc>
 8004918:	4631      	mov	r1, r6
 800491a:	4642      	mov	r2, r8
 800491c:	4648      	mov	r0, r9
 800491e:	f001 fd49 	bl	80063b4 <__lshift>
 8004922:	4606      	mov	r6, r0
 8004924:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004926:	2b00      	cmp	r3, #0
 8004928:	d177      	bne.n	8004a1a <_dtoa_r+0x7d2>
 800492a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800492c:	2b00      	cmp	r3, #0
 800492e:	f340 8209 	ble.w	8004d44 <_dtoa_r+0xafc>
 8004932:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004934:	2b00      	cmp	r3, #0
 8004936:	f000 8089 	beq.w	8004a4c <_dtoa_r+0x804>
 800493a:	2c00      	cmp	r4, #0
 800493c:	f300 816b 	bgt.w	8004c16 <_dtoa_r+0x9ce>
 8004940:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004942:	2b00      	cmp	r3, #0
 8004944:	f040 81cd 	bne.w	8004ce2 <_dtoa_r+0xa9a>
 8004948:	46a8      	mov	r8, r5
 800494a:	9a00      	ldr	r2, [sp, #0]
 800494c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004950:	f002 0201 	and.w	r2, r2, #1
 8004954:	920a      	str	r2, [sp, #40]	; 0x28
 8004956:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004958:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800495c:	441a      	add	r2, r3
 800495e:	465f      	mov	r7, fp
 8004960:	9209      	str	r2, [sp, #36]	; 0x24
 8004962:	46b3      	mov	fp, r6
 8004964:	4659      	mov	r1, fp
 8004966:	4650      	mov	r0, sl
 8004968:	f7ff fbdc 	bl	8004124 <quorem>
 800496c:	4629      	mov	r1, r5
 800496e:	4604      	mov	r4, r0
 8004970:	4650      	mov	r0, sl
 8004972:	f001 fd75 	bl	8006460 <__mcmp>
 8004976:	4659      	mov	r1, fp
 8004978:	4606      	mov	r6, r0
 800497a:	4642      	mov	r2, r8
 800497c:	4648      	mov	r0, r9
 800497e:	f001 fd8b 	bl	8006498 <__mdiff>
 8004982:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004986:	9300      	str	r3, [sp, #0]
 8004988:	68c3      	ldr	r3, [r0, #12]
 800498a:	4601      	mov	r1, r0
 800498c:	2b00      	cmp	r3, #0
 800498e:	f040 81d4 	bne.w	8004d3a <_dtoa_r+0xaf2>
 8004992:	9008      	str	r0, [sp, #32]
 8004994:	4650      	mov	r0, sl
 8004996:	f001 fd63 	bl	8006460 <__mcmp>
 800499a:	9a08      	ldr	r2, [sp, #32]
 800499c:	9007      	str	r0, [sp, #28]
 800499e:	4611      	mov	r1, r2
 80049a0:	4648      	mov	r0, r9
 80049a2:	f001 fb6d 	bl	8006080 <_Bfree>
 80049a6:	9b07      	ldr	r3, [sp, #28]
 80049a8:	b933      	cbnz	r3, 80049b8 <_dtoa_r+0x770>
 80049aa:	9a02      	ldr	r2, [sp, #8]
 80049ac:	b922      	cbnz	r2, 80049b8 <_dtoa_r+0x770>
 80049ae:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80049b0:	2b00      	cmp	r3, #0
 80049b2:	f000 8319 	beq.w	8004fe8 <_dtoa_r+0xda0>
 80049b6:	9b02      	ldr	r3, [sp, #8]
 80049b8:	2e00      	cmp	r6, #0
 80049ba:	f2c0 821c 	blt.w	8004df6 <_dtoa_r+0xbae>
 80049be:	d105      	bne.n	80049cc <_dtoa_r+0x784>
 80049c0:	9a02      	ldr	r2, [sp, #8]
 80049c2:	b91a      	cbnz	r2, 80049cc <_dtoa_r+0x784>
 80049c4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049c6:	2a00      	cmp	r2, #0
 80049c8:	f000 8215 	beq.w	8004df6 <_dtoa_r+0xbae>
 80049cc:	2b00      	cmp	r3, #0
 80049ce:	f107 0401 	add.w	r4, r7, #1
 80049d2:	f300 8225 	bgt.w	8004e20 <_dtoa_r+0xbd8>
 80049d6:	9b00      	ldr	r3, [sp, #0]
 80049d8:	703b      	strb	r3, [r7, #0]
 80049da:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049dc:	42bb      	cmp	r3, r7
 80049de:	f000 8230 	beq.w	8004e42 <_dtoa_r+0xbfa>
 80049e2:	4651      	mov	r1, sl
 80049e4:	2300      	movs	r3, #0
 80049e6:	220a      	movs	r2, #10
 80049e8:	4648      	mov	r0, r9
 80049ea:	f001 fb53 	bl	8006094 <__multadd>
 80049ee:	4545      	cmp	r5, r8
 80049f0:	4682      	mov	sl, r0
 80049f2:	4629      	mov	r1, r5
 80049f4:	f04f 0300 	mov.w	r3, #0
 80049f8:	f04f 020a 	mov.w	r2, #10
 80049fc:	4648      	mov	r0, r9
 80049fe:	f000 8196 	beq.w	8004d2e <_dtoa_r+0xae6>
 8004a02:	f001 fb47 	bl	8006094 <__multadd>
 8004a06:	4641      	mov	r1, r8
 8004a08:	4605      	mov	r5, r0
 8004a0a:	2300      	movs	r3, #0
 8004a0c:	220a      	movs	r2, #10
 8004a0e:	4648      	mov	r0, r9
 8004a10:	f001 fb40 	bl	8006094 <__multadd>
 8004a14:	4627      	mov	r7, r4
 8004a16:	4680      	mov	r8, r0
 8004a18:	e7a4      	b.n	8004964 <_dtoa_r+0x71c>
 8004a1a:	4631      	mov	r1, r6
 8004a1c:	4650      	mov	r0, sl
 8004a1e:	f001 fd1f 	bl	8006460 <__mcmp>
 8004a22:	2800      	cmp	r0, #0
 8004a24:	da81      	bge.n	800492a <_dtoa_r+0x6e2>
 8004a26:	9f06      	ldr	r7, [sp, #24]
 8004a28:	4651      	mov	r1, sl
 8004a2a:	2300      	movs	r3, #0
 8004a2c:	220a      	movs	r2, #10
 8004a2e:	4648      	mov	r0, r9
 8004a30:	3f01      	subs	r7, #1
 8004a32:	9706      	str	r7, [sp, #24]
 8004a34:	f001 fb2e 	bl	8006094 <__multadd>
 8004a38:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a3a:	4682      	mov	sl, r0
 8004a3c:	2b00      	cmp	r3, #0
 8004a3e:	f040 82eb 	bne.w	8005018 <_dtoa_r+0xdd0>
 8004a42:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004a44:	2b00      	cmp	r3, #0
 8004a46:	f340 82f3 	ble.w	8005030 <_dtoa_r+0xde8>
 8004a4a:	9309      	str	r3, [sp, #36]	; 0x24
 8004a4c:	465c      	mov	r4, fp
 8004a4e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004a52:	e002      	b.n	8004a5a <_dtoa_r+0x812>
 8004a54:	f001 fb1e 	bl	8006094 <__multadd>
 8004a58:	4682      	mov	sl, r0
 8004a5a:	4631      	mov	r1, r6
 8004a5c:	4650      	mov	r0, sl
 8004a5e:	f7ff fb61 	bl	8004124 <quorem>
 8004a62:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004a66:	f804 7b01 	strb.w	r7, [r4], #1
 8004a6a:	eba4 030b 	sub.w	r3, r4, fp
 8004a6e:	4598      	cmp	r8, r3
 8004a70:	f04f 020a 	mov.w	r2, #10
 8004a74:	f04f 0300 	mov.w	r3, #0
 8004a78:	4651      	mov	r1, sl
 8004a7a:	4648      	mov	r0, r9
 8004a7c:	dcea      	bgt.n	8004a54 <_dtoa_r+0x80c>
 8004a7e:	2300      	movs	r3, #0
 8004a80:	9700      	str	r7, [sp, #0]
 8004a82:	9302      	str	r3, [sp, #8]
 8004a84:	4651      	mov	r1, sl
 8004a86:	2201      	movs	r2, #1
 8004a88:	4648      	mov	r0, r9
 8004a8a:	f001 fc93 	bl	80063b4 <__lshift>
 8004a8e:	4631      	mov	r1, r6
 8004a90:	4682      	mov	sl, r0
 8004a92:	f001 fce5 	bl	8006460 <__mcmp>
 8004a96:	2800      	cmp	r0, #0
 8004a98:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004a9c:	dc14      	bgt.n	8004ac8 <_dtoa_r+0x880>
 8004a9e:	d108      	bne.n	8004ab2 <_dtoa_r+0x86a>
 8004aa0:	9b00      	ldr	r3, [sp, #0]
 8004aa2:	07db      	lsls	r3, r3, #31
 8004aa4:	d410      	bmi.n	8004ac8 <_dtoa_r+0x880>
 8004aa6:	e004      	b.n	8004ab2 <_dtoa_r+0x86a>
 8004aa8:	40240000 	.word	0x40240000
 8004aac:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004ab0:	461c      	mov	r4, r3
 8004ab2:	2a30      	cmp	r2, #48	; 0x30
 8004ab4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ab8:	d0f8      	beq.n	8004aac <_dtoa_r+0x864>
 8004aba:	e00b      	b.n	8004ad4 <_dtoa_r+0x88c>
 8004abc:	459b      	cmp	fp, r3
 8004abe:	f000 814e 	beq.w	8004d5e <_dtoa_r+0xb16>
 8004ac2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004ac6:	461c      	mov	r4, r3
 8004ac8:	2a39      	cmp	r2, #57	; 0x39
 8004aca:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ace:	d0f5      	beq.n	8004abc <_dtoa_r+0x874>
 8004ad0:	3201      	adds	r2, #1
 8004ad2:	701a      	strb	r2, [r3, #0]
 8004ad4:	4631      	mov	r1, r6
 8004ad6:	4648      	mov	r0, r9
 8004ad8:	f001 fad2 	bl	8006080 <_Bfree>
 8004adc:	b155      	cbz	r5, 8004af4 <_dtoa_r+0x8ac>
 8004ade:	9902      	ldr	r1, [sp, #8]
 8004ae0:	b121      	cbz	r1, 8004aec <_dtoa_r+0x8a4>
 8004ae2:	42a9      	cmp	r1, r5
 8004ae4:	d002      	beq.n	8004aec <_dtoa_r+0x8a4>
 8004ae6:	4648      	mov	r0, r9
 8004ae8:	f001 faca 	bl	8006080 <_Bfree>
 8004aec:	4629      	mov	r1, r5
 8004aee:	4648      	mov	r0, r9
 8004af0:	f001 fac6 	bl	8006080 <_Bfree>
 8004af4:	4651      	mov	r1, sl
 8004af6:	4648      	mov	r0, r9
 8004af8:	f001 fac2 	bl	8006080 <_Bfree>
 8004afc:	2200      	movs	r2, #0
 8004afe:	9b06      	ldr	r3, [sp, #24]
 8004b00:	7022      	strb	r2, [r4, #0]
 8004b02:	9a05      	ldr	r2, [sp, #20]
 8004b04:	3301      	adds	r3, #1
 8004b06:	6013      	str	r3, [r2, #0]
 8004b08:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004b0a:	2b00      	cmp	r3, #0
 8004b0c:	f43f abdb 	beq.w	80042c6 <_dtoa_r+0x7e>
 8004b10:	4658      	mov	r0, fp
 8004b12:	601c      	str	r4, [r3, #0]
 8004b14:	b01b      	add	sp, #108	; 0x6c
 8004b16:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b1a:	201c      	movs	r0, #28
 8004b1c:	e6eb      	b.n	80048f6 <_dtoa_r+0x6ae>
 8004b1e:	4601      	mov	r1, r0
 8004b20:	4648      	mov	r0, r9
 8004b22:	f001 fbf7 	bl	8006314 <__pow5mult>
 8004b26:	9b02      	ldr	r3, [sp, #8]
 8004b28:	2b01      	cmp	r3, #1
 8004b2a:	4606      	mov	r6, r0
 8004b2c:	f340 80d4 	ble.w	8004cd8 <_dtoa_r+0xa90>
 8004b30:	2300      	movs	r3, #0
 8004b32:	930c      	str	r3, [sp, #48]	; 0x30
 8004b34:	6933      	ldr	r3, [r6, #16]
 8004b36:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004b3a:	6918      	ldr	r0, [r3, #16]
 8004b3c:	f001 faea 	bl	8006114 <__hi0bits>
 8004b40:	f1c0 0020 	rsb	r0, r0, #32
 8004b44:	e6cb      	b.n	80048de <_dtoa_r+0x696>
 8004b46:	900d      	str	r0, [sp, #52]	; 0x34
 8004b48:	e42a      	b.n	80043a0 <_dtoa_r+0x158>
 8004b4a:	2501      	movs	r5, #1
 8004b4c:	e440      	b.n	80043d0 <_dtoa_r+0x188>
 8004b4e:	f1c3 0820 	rsb	r8, r3, #32
 8004b52:	9b00      	ldr	r3, [sp, #0]
 8004b54:	fa03 f008 	lsl.w	r0, r3, r8
 8004b58:	f7ff bbd8 	b.w	800430c <_dtoa_r+0xc4>
 8004b5c:	2300      	movs	r3, #0
 8004b5e:	930a      	str	r3, [sp, #40]	; 0x28
 8004b60:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004b64:	4413      	add	r3, r2
 8004b66:	930e      	str	r3, [sp, #56]	; 0x38
 8004b68:	3301      	adds	r3, #1
 8004b6a:	2b01      	cmp	r3, #1
 8004b6c:	461e      	mov	r6, r3
 8004b6e:	9309      	str	r3, [sp, #36]	; 0x24
 8004b70:	bfb8      	it	lt
 8004b72:	2601      	movlt	r6, #1
 8004b74:	2100      	movs	r1, #0
 8004b76:	2e17      	cmp	r6, #23
 8004b78:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004b7c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004b7e:	f77f ac89 	ble.w	8004494 <_dtoa_r+0x24c>
 8004b82:	2201      	movs	r2, #1
 8004b84:	2304      	movs	r3, #4
 8004b86:	005b      	lsls	r3, r3, #1
 8004b88:	f103 0014 	add.w	r0, r3, #20
 8004b8c:	42b0      	cmp	r0, r6
 8004b8e:	4611      	mov	r1, r2
 8004b90:	f102 0201 	add.w	r2, r2, #1
 8004b94:	d9f7      	bls.n	8004b86 <_dtoa_r+0x93e>
 8004b96:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004b9a:	e47b      	b.n	8004494 <_dtoa_r+0x24c>
 8004b9c:	2300      	movs	r3, #0
 8004b9e:	930a      	str	r3, [sp, #40]	; 0x28
 8004ba0:	9e07      	ldr	r6, [sp, #28]
 8004ba2:	2e00      	cmp	r6, #0
 8004ba4:	f340 80e2 	ble.w	8004d6c <_dtoa_r+0xb24>
 8004ba8:	960e      	str	r6, [sp, #56]	; 0x38
 8004baa:	9609      	str	r6, [sp, #36]	; 0x24
 8004bac:	e7e2      	b.n	8004b74 <_dtoa_r+0x92c>
 8004bae:	2301      	movs	r3, #1
 8004bb0:	930a      	str	r3, [sp, #40]	; 0x28
 8004bb2:	e7f5      	b.n	8004ba0 <_dtoa_r+0x958>
 8004bb4:	9b00      	ldr	r3, [sp, #0]
 8004bb6:	2b00      	cmp	r3, #0
 8004bb8:	f47f ae90 	bne.w	80048dc <_dtoa_r+0x694>
 8004bbc:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004bc0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004bc4:	2b00      	cmp	r3, #0
 8004bc6:	f040 8192 	bne.w	8004eee <_dtoa_r+0xca6>
 8004bca:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004bce:	0d1b      	lsrs	r3, r3, #20
 8004bd0:	051b      	lsls	r3, r3, #20
 8004bd2:	b12b      	cbz	r3, 8004be0 <_dtoa_r+0x998>
 8004bd4:	9b08      	ldr	r3, [sp, #32]
 8004bd6:	3301      	adds	r3, #1
 8004bd8:	9308      	str	r3, [sp, #32]
 8004bda:	f108 0801 	add.w	r8, r8, #1
 8004bde:	2301      	movs	r3, #1
 8004be0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004be2:	930c      	str	r3, [sp, #48]	; 0x30
 8004be4:	2a00      	cmp	r2, #0
 8004be6:	f43f ae79 	beq.w	80048dc <_dtoa_r+0x694>
 8004bea:	e7a3      	b.n	8004b34 <_dtoa_r+0x8ec>
 8004bec:	463a      	mov	r2, r7
 8004bee:	4629      	mov	r1, r5
 8004bf0:	4648      	mov	r0, r9
 8004bf2:	f001 fb8f 	bl	8006314 <__pow5mult>
 8004bf6:	4652      	mov	r2, sl
 8004bf8:	4601      	mov	r1, r0
 8004bfa:	4605      	mov	r5, r0
 8004bfc:	4648      	mov	r0, r9
 8004bfe:	f001 fae3 	bl	80061c8 <__multiply>
 8004c02:	4651      	mov	r1, sl
 8004c04:	4607      	mov	r7, r0
 8004c06:	4648      	mov	r0, r9
 8004c08:	f001 fa3a 	bl	8006080 <_Bfree>
 8004c0c:	46ba      	mov	sl, r7
 8004c0e:	2e00      	cmp	r6, #0
 8004c10:	f43f ae57 	beq.w	80048c2 <_dtoa_r+0x67a>
 8004c14:	e64f      	b.n	80048b6 <_dtoa_r+0x66e>
 8004c16:	4629      	mov	r1, r5
 8004c18:	4622      	mov	r2, r4
 8004c1a:	4648      	mov	r0, r9
 8004c1c:	f001 fbca 	bl	80063b4 <__lshift>
 8004c20:	4605      	mov	r5, r0
 8004c22:	e68d      	b.n	8004940 <_dtoa_r+0x6f8>
 8004c24:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004c26:	2a00      	cmp	r2, #0
 8004c28:	f000 815d 	beq.w	8004ee6 <_dtoa_r+0xc9e>
 8004c2c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004c30:	9a08      	ldr	r2, [sp, #32]
 8004c32:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004c34:	4614      	mov	r4, r2
 8004c36:	441a      	add	r2, r3
 8004c38:	4498      	add	r8, r3
 8004c3a:	9208      	str	r2, [sp, #32]
 8004c3c:	e5f7      	b.n	800482e <_dtoa_r+0x5e6>
 8004c3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c40:	2b00      	cmp	r3, #0
 8004c42:	f73f ad3e 	bgt.w	80046c2 <_dtoa_r+0x47a>
 8004c46:	f040 80bc 	bne.w	8004dc2 <_dtoa_r+0xb7a>
 8004c4a:	ec51 0b17 	vmov	r0, r1, d7
 8004c4e:	2200      	movs	r2, #0
 8004c50:	4bb2      	ldr	r3, [pc, #712]	; (8004f1c <_dtoa_r+0xcd4>)
 8004c52:	f7fb ff71 	bl	8000b38 <__aeabi_dmul>
 8004c56:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c5a:	f7fc f9f3 	bl	8001044 <__aeabi_dcmpge>
 8004c5e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004c60:	4635      	mov	r5, r6
 8004c62:	2800      	cmp	r0, #0
 8004c64:	d176      	bne.n	8004d54 <_dtoa_r+0xb0c>
 8004c66:	9a06      	ldr	r2, [sp, #24]
 8004c68:	2331      	movs	r3, #49	; 0x31
 8004c6a:	3201      	adds	r2, #1
 8004c6c:	9206      	str	r2, [sp, #24]
 8004c6e:	f88b 3000 	strb.w	r3, [fp]
 8004c72:	f10b 0401 	add.w	r4, fp, #1
 8004c76:	4631      	mov	r1, r6
 8004c78:	4648      	mov	r0, r9
 8004c7a:	f001 fa01 	bl	8006080 <_Bfree>
 8004c7e:	2d00      	cmp	r5, #0
 8004c80:	f47f af34 	bne.w	8004aec <_dtoa_r+0x8a4>
 8004c84:	e736      	b.n	8004af4 <_dtoa_r+0x8ac>
 8004c86:	f000 8142 	beq.w	8004f0e <_dtoa_r+0xcc6>
 8004c8a:	9b06      	ldr	r3, [sp, #24]
 8004c8c:	425c      	negs	r4, r3
 8004c8e:	4ba4      	ldr	r3, [pc, #656]	; (8004f20 <_dtoa_r+0xcd8>)
 8004c90:	f004 020f 	and.w	r2, r4, #15
 8004c94:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004c98:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c9c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004ca0:	f7fb ff4a 	bl	8000b38 <__aeabi_dmul>
 8004ca4:	1124      	asrs	r4, r4, #4
 8004ca6:	e9cd 0100 	strd	r0, r1, [sp]
 8004caa:	f000 81c6 	beq.w	800503a <_dtoa_r+0xdf2>
 8004cae:	4d9d      	ldr	r5, [pc, #628]	; (8004f24 <_dtoa_r+0xcdc>)
 8004cb0:	2300      	movs	r3, #0
 8004cb2:	2602      	movs	r6, #2
 8004cb4:	07e7      	lsls	r7, r4, #31
 8004cb6:	d505      	bpl.n	8004cc4 <_dtoa_r+0xa7c>
 8004cb8:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004cbc:	f7fb ff3c 	bl	8000b38 <__aeabi_dmul>
 8004cc0:	3601      	adds	r6, #1
 8004cc2:	2301      	movs	r3, #1
 8004cc4:	1064      	asrs	r4, r4, #1
 8004cc6:	f105 0508 	add.w	r5, r5, #8
 8004cca:	d1f3      	bne.n	8004cb4 <_dtoa_r+0xa6c>
 8004ccc:	2b00      	cmp	r3, #0
 8004cce:	f43f ac27 	beq.w	8004520 <_dtoa_r+0x2d8>
 8004cd2:	e9cd 0100 	strd	r0, r1, [sp]
 8004cd6:	e423      	b.n	8004520 <_dtoa_r+0x2d8>
 8004cd8:	9b00      	ldr	r3, [sp, #0]
 8004cda:	2b00      	cmp	r3, #0
 8004cdc:	f43f af6e 	beq.w	8004bbc <_dtoa_r+0x974>
 8004ce0:	e726      	b.n	8004b30 <_dtoa_r+0x8e8>
 8004ce2:	6869      	ldr	r1, [r5, #4]
 8004ce4:	4648      	mov	r0, r9
 8004ce6:	f001 f9a5 	bl	8006034 <_Balloc>
 8004cea:	692b      	ldr	r3, [r5, #16]
 8004cec:	3302      	adds	r3, #2
 8004cee:	009a      	lsls	r2, r3, #2
 8004cf0:	4604      	mov	r4, r0
 8004cf2:	f105 010c 	add.w	r1, r5, #12
 8004cf6:	300c      	adds	r0, #12
 8004cf8:	f7fb fc02 	bl	8000500 <memcpy>
 8004cfc:	4621      	mov	r1, r4
 8004cfe:	2201      	movs	r2, #1
 8004d00:	4648      	mov	r0, r9
 8004d02:	f001 fb57 	bl	80063b4 <__lshift>
 8004d06:	4680      	mov	r8, r0
 8004d08:	e61f      	b.n	800494a <_dtoa_r+0x702>
 8004d0a:	2400      	movs	r4, #0
 8004d0c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004d10:	4621      	mov	r1, r4
 8004d12:	4648      	mov	r0, r9
 8004d14:	f001 f98e 	bl	8006034 <_Balloc>
 8004d18:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004d1c:	930e      	str	r3, [sp, #56]	; 0x38
 8004d1e:	9309      	str	r3, [sp, #36]	; 0x24
 8004d20:	2301      	movs	r3, #1
 8004d22:	4683      	mov	fp, r0
 8004d24:	9407      	str	r4, [sp, #28]
 8004d26:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004d2a:	930a      	str	r3, [sp, #40]	; 0x28
 8004d2c:	e4b6      	b.n	800469c <_dtoa_r+0x454>
 8004d2e:	f001 f9b1 	bl	8006094 <__multadd>
 8004d32:	4627      	mov	r7, r4
 8004d34:	4605      	mov	r5, r0
 8004d36:	4680      	mov	r8, r0
 8004d38:	e614      	b.n	8004964 <_dtoa_r+0x71c>
 8004d3a:	4648      	mov	r0, r9
 8004d3c:	f001 f9a0 	bl	8006080 <_Bfree>
 8004d40:	2301      	movs	r3, #1
 8004d42:	e639      	b.n	80049b8 <_dtoa_r+0x770>
 8004d44:	9b02      	ldr	r3, [sp, #8]
 8004d46:	2b02      	cmp	r3, #2
 8004d48:	f77f adf3 	ble.w	8004932 <_dtoa_r+0x6ea>
 8004d4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d4e:	2b00      	cmp	r3, #0
 8004d50:	f000 80cf 	beq.w	8004ef2 <_dtoa_r+0xcaa>
 8004d54:	9b07      	ldr	r3, [sp, #28]
 8004d56:	43db      	mvns	r3, r3
 8004d58:	9306      	str	r3, [sp, #24]
 8004d5a:	465c      	mov	r4, fp
 8004d5c:	e78b      	b.n	8004c76 <_dtoa_r+0xa2e>
 8004d5e:	9a06      	ldr	r2, [sp, #24]
 8004d60:	2331      	movs	r3, #49	; 0x31
 8004d62:	3201      	adds	r2, #1
 8004d64:	9206      	str	r2, [sp, #24]
 8004d66:	f88b 3000 	strb.w	r3, [fp]
 8004d6a:	e6b3      	b.n	8004ad4 <_dtoa_r+0x88c>
 8004d6c:	2401      	movs	r4, #1
 8004d6e:	9409      	str	r4, [sp, #36]	; 0x24
 8004d70:	9407      	str	r4, [sp, #28]
 8004d72:	f7ff bb8b 	b.w	800448c <_dtoa_r+0x244>
 8004d76:	4630      	mov	r0, r6
 8004d78:	f7fb fe74 	bl	8000a64 <__aeabi_i2d>
 8004d7c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d80:	f7fb feda 	bl	8000b38 <__aeabi_dmul>
 8004d84:	2200      	movs	r2, #0
 8004d86:	4b68      	ldr	r3, [pc, #416]	; (8004f28 <_dtoa_r+0xce0>)
 8004d88:	f7fb fd20 	bl	80007cc <__adddf3>
 8004d8c:	4606      	mov	r6, r0
 8004d8e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d92:	2200      	movs	r2, #0
 8004d94:	4b61      	ldr	r3, [pc, #388]	; (8004f1c <_dtoa_r+0xcd4>)
 8004d96:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d9a:	f7fb fd15 	bl	80007c8 <__aeabi_dsub>
 8004d9e:	4632      	mov	r2, r6
 8004da0:	463b      	mov	r3, r7
 8004da2:	4604      	mov	r4, r0
 8004da4:	460d      	mov	r5, r1
 8004da6:	f7fc f957 	bl	8001058 <__aeabi_dcmpgt>
 8004daa:	2800      	cmp	r0, #0
 8004dac:	d14f      	bne.n	8004e4e <_dtoa_r+0xc06>
 8004dae:	4632      	mov	r2, r6
 8004db0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004db4:	4620      	mov	r0, r4
 8004db6:	4629      	mov	r1, r5
 8004db8:	f7fc f930 	bl	800101c <__aeabi_dcmplt>
 8004dbc:	2800      	cmp	r0, #0
 8004dbe:	f43f ac69 	beq.w	8004694 <_dtoa_r+0x44c>
 8004dc2:	2600      	movs	r6, #0
 8004dc4:	4635      	mov	r5, r6
 8004dc6:	e7c5      	b.n	8004d54 <_dtoa_r+0xb0c>
 8004dc8:	2301      	movs	r3, #1
 8004dca:	930a      	str	r3, [sp, #40]	; 0x28
 8004dcc:	e6c8      	b.n	8004b60 <_dtoa_r+0x918>
 8004dce:	4651      	mov	r1, sl
 8004dd0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004dd2:	4648      	mov	r0, r9
 8004dd4:	f001 fa9e 	bl	8006314 <__pow5mult>
 8004dd8:	4682      	mov	sl, r0
 8004dda:	e572      	b.n	80048c2 <_dtoa_r+0x67a>
 8004ddc:	f8dd a000 	ldr.w	sl, [sp]
 8004de0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004de4:	e686      	b.n	8004af4 <_dtoa_r+0x8ac>
 8004de6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004de8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004dea:	1afb      	subs	r3, r7, r3
 8004dec:	441a      	add	r2, r3
 8004dee:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004df2:	2700      	movs	r7, #0
 8004df4:	e512      	b.n	800481c <_dtoa_r+0x5d4>
 8004df6:	2b00      	cmp	r3, #0
 8004df8:	9402      	str	r4, [sp, #8]
 8004dfa:	465e      	mov	r6, fp
 8004dfc:	f107 0401 	add.w	r4, r7, #1
 8004e00:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e04:	f300 80ba 	bgt.w	8004f7c <_dtoa_r+0xd34>
 8004e08:	9b00      	ldr	r3, [sp, #0]
 8004e0a:	9502      	str	r5, [sp, #8]
 8004e0c:	703b      	strb	r3, [r7, #0]
 8004e0e:	4645      	mov	r5, r8
 8004e10:	e660      	b.n	8004ad4 <_dtoa_r+0x88c>
 8004e12:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e16:	2602      	movs	r6, #2
 8004e18:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004e1c:	f7ff bb67 	b.w	80044ee <_dtoa_r+0x2a6>
 8004e20:	9b00      	ldr	r3, [sp, #0]
 8004e22:	2b39      	cmp	r3, #57	; 0x39
 8004e24:	465e      	mov	r6, fp
 8004e26:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e2a:	f000 80b9 	beq.w	8004fa0 <_dtoa_r+0xd58>
 8004e2e:	9b00      	ldr	r3, [sp, #0]
 8004e30:	9502      	str	r5, [sp, #8]
 8004e32:	3301      	adds	r3, #1
 8004e34:	703b      	strb	r3, [r7, #0]
 8004e36:	4645      	mov	r5, r8
 8004e38:	e64c      	b.n	8004ad4 <_dtoa_r+0x88c>
 8004e3a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004e3e:	1a9c      	subs	r4, r3, r2
 8004e40:	e4f5      	b.n	800482e <_dtoa_r+0x5e6>
 8004e42:	465e      	mov	r6, fp
 8004e44:	9502      	str	r5, [sp, #8]
 8004e46:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e4a:	4645      	mov	r5, r8
 8004e4c:	e61a      	b.n	8004a84 <_dtoa_r+0x83c>
 8004e4e:	2600      	movs	r6, #0
 8004e50:	4635      	mov	r5, r6
 8004e52:	e708      	b.n	8004c66 <_dtoa_r+0xa1e>
 8004e54:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004e58:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e5c:	f7fb fe6c 	bl	8000b38 <__aeabi_dmul>
 8004e60:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e62:	f88b 5000 	strb.w	r5, [fp]
 8004e66:	2b01      	cmp	r3, #1
 8004e68:	e9cd 0100 	strd	r0, r1, [sp]
 8004e6c:	d020      	beq.n	8004eb0 <_dtoa_r+0xc68>
 8004e6e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e70:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004e74:	445b      	add	r3, fp
 8004e76:	4698      	mov	r8, r3
 8004e78:	2200      	movs	r2, #0
 8004e7a:	4b2c      	ldr	r3, [pc, #176]	; (8004f2c <_dtoa_r+0xce4>)
 8004e7c:	4630      	mov	r0, r6
 8004e7e:	4639      	mov	r1, r7
 8004e80:	f7fb fe5a 	bl	8000b38 <__aeabi_dmul>
 8004e84:	460f      	mov	r7, r1
 8004e86:	4606      	mov	r6, r0
 8004e88:	f7fc f906 	bl	8001098 <__aeabi_d2iz>
 8004e8c:	4605      	mov	r5, r0
 8004e8e:	f7fb fde9 	bl	8000a64 <__aeabi_i2d>
 8004e92:	3530      	adds	r5, #48	; 0x30
 8004e94:	4602      	mov	r2, r0
 8004e96:	460b      	mov	r3, r1
 8004e98:	4630      	mov	r0, r6
 8004e9a:	4639      	mov	r1, r7
 8004e9c:	f7fb fc94 	bl	80007c8 <__aeabi_dsub>
 8004ea0:	f804 5b01 	strb.w	r5, [r4], #1
 8004ea4:	4544      	cmp	r4, r8
 8004ea6:	4606      	mov	r6, r0
 8004ea8:	460f      	mov	r7, r1
 8004eaa:	d1e5      	bne.n	8004e78 <_dtoa_r+0xc30>
 8004eac:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004eb0:	4b1f      	ldr	r3, [pc, #124]	; (8004f30 <_dtoa_r+0xce8>)
 8004eb2:	2200      	movs	r2, #0
 8004eb4:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004eb8:	f7fb fc88 	bl	80007cc <__adddf3>
 8004ebc:	4632      	mov	r2, r6
 8004ebe:	463b      	mov	r3, r7
 8004ec0:	f7fc f8ac 	bl	800101c <__aeabi_dcmplt>
 8004ec4:	2800      	cmp	r0, #0
 8004ec6:	d070      	beq.n	8004faa <_dtoa_r+0xd62>
 8004ec8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004eca:	9306      	str	r3, [sp, #24]
 8004ecc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004ed0:	e48f      	b.n	80047f2 <_dtoa_r+0x5aa>
 8004ed2:	2330      	movs	r3, #48	; 0x30
 8004ed4:	f88b 3000 	strb.w	r3, [fp]
 8004ed8:	9b06      	ldr	r3, [sp, #24]
 8004eda:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004ede:	3301      	adds	r3, #1
 8004ee0:	9306      	str	r3, [sp, #24]
 8004ee2:	465b      	mov	r3, fp
 8004ee4:	e489      	b.n	80047fa <_dtoa_r+0x5b2>
 8004ee6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004ee8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004eec:	e6a0      	b.n	8004c30 <_dtoa_r+0x9e8>
 8004eee:	2300      	movs	r3, #0
 8004ef0:	e676      	b.n	8004be0 <_dtoa_r+0x998>
 8004ef2:	4631      	mov	r1, r6
 8004ef4:	2205      	movs	r2, #5
 8004ef6:	4648      	mov	r0, r9
 8004ef8:	f001 f8cc 	bl	8006094 <__multadd>
 8004efc:	4601      	mov	r1, r0
 8004efe:	4606      	mov	r6, r0
 8004f00:	4650      	mov	r0, sl
 8004f02:	f001 faad 	bl	8006460 <__mcmp>
 8004f06:	2800      	cmp	r0, #0
 8004f08:	f73f aead 	bgt.w	8004c66 <_dtoa_r+0xa1e>
 8004f0c:	e722      	b.n	8004d54 <_dtoa_r+0xb0c>
 8004f0e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004f12:	2602      	movs	r6, #2
 8004f14:	ed8d 7b00 	vstr	d7, [sp]
 8004f18:	f7ff bb02 	b.w	8004520 <_dtoa_r+0x2d8>
 8004f1c:	40140000 	.word	0x40140000
 8004f20:	08007468 	.word	0x08007468
 8004f24:	08007440 	.word	0x08007440
 8004f28:	401c0000 	.word	0x401c0000
 8004f2c:	40240000 	.word	0x40240000
 8004f30:	3fe00000 	.word	0x3fe00000
 8004f34:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f36:	2b00      	cmp	r3, #0
 8004f38:	f43f af1d 	beq.w	8004d76 <_dtoa_r+0xb2e>
 8004f3c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004f3e:	2c00      	cmp	r4, #0
 8004f40:	f77f aba8 	ble.w	8004694 <_dtoa_r+0x44c>
 8004f44:	2200      	movs	r2, #0
 8004f46:	4b45      	ldr	r3, [pc, #276]	; (800505c <_dtoa_r+0xe14>)
 8004f48:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f4c:	f7fb fdf4 	bl	8000b38 <__aeabi_dmul>
 8004f50:	e9cd 0100 	strd	r0, r1, [sp]
 8004f54:	1c70      	adds	r0, r6, #1
 8004f56:	f7fb fd85 	bl	8000a64 <__aeabi_i2d>
 8004f5a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f5e:	f7fb fdeb 	bl	8000b38 <__aeabi_dmul>
 8004f62:	4b3f      	ldr	r3, [pc, #252]	; (8005060 <_dtoa_r+0xe18>)
 8004f64:	2200      	movs	r2, #0
 8004f66:	f7fb fc31 	bl	80007cc <__adddf3>
 8004f6a:	9b06      	ldr	r3, [sp, #24]
 8004f6c:	9412      	str	r4, [sp, #72]	; 0x48
 8004f6e:	3b01      	subs	r3, #1
 8004f70:	4606      	mov	r6, r0
 8004f72:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004f76:	9316      	str	r3, [sp, #88]	; 0x58
 8004f78:	f7ff baf3 	b.w	8004562 <_dtoa_r+0x31a>
 8004f7c:	4651      	mov	r1, sl
 8004f7e:	2201      	movs	r2, #1
 8004f80:	4648      	mov	r0, r9
 8004f82:	f001 fa17 	bl	80063b4 <__lshift>
 8004f86:	4631      	mov	r1, r6
 8004f88:	4682      	mov	sl, r0
 8004f8a:	f001 fa69 	bl	8006460 <__mcmp>
 8004f8e:	2800      	cmp	r0, #0
 8004f90:	dd3b      	ble.n	800500a <_dtoa_r+0xdc2>
 8004f92:	9b00      	ldr	r3, [sp, #0]
 8004f94:	2b39      	cmp	r3, #57	; 0x39
 8004f96:	d003      	beq.n	8004fa0 <_dtoa_r+0xd58>
 8004f98:	9b02      	ldr	r3, [sp, #8]
 8004f9a:	3331      	adds	r3, #49	; 0x31
 8004f9c:	9300      	str	r3, [sp, #0]
 8004f9e:	e733      	b.n	8004e08 <_dtoa_r+0xbc0>
 8004fa0:	2239      	movs	r2, #57	; 0x39
 8004fa2:	9502      	str	r5, [sp, #8]
 8004fa4:	703a      	strb	r2, [r7, #0]
 8004fa6:	4645      	mov	r5, r8
 8004fa8:	e58e      	b.n	8004ac8 <_dtoa_r+0x880>
 8004faa:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004fae:	2000      	movs	r0, #0
 8004fb0:	492c      	ldr	r1, [pc, #176]	; (8005064 <_dtoa_r+0xe1c>)
 8004fb2:	f7fb fc09 	bl	80007c8 <__aeabi_dsub>
 8004fb6:	4632      	mov	r2, r6
 8004fb8:	463b      	mov	r3, r7
 8004fba:	f7fc f84d 	bl	8001058 <__aeabi_dcmpgt>
 8004fbe:	b910      	cbnz	r0, 8004fc6 <_dtoa_r+0xd7e>
 8004fc0:	f7ff bb68 	b.w	8004694 <_dtoa_r+0x44c>
 8004fc4:	4614      	mov	r4, r2
 8004fc6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004fca:	2b30      	cmp	r3, #48	; 0x30
 8004fcc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004fd0:	d0f8      	beq.n	8004fc4 <_dtoa_r+0xd7c>
 8004fd2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004fd4:	9306      	str	r3, [sp, #24]
 8004fd6:	e58d      	b.n	8004af4 <_dtoa_r+0x8ac>
 8004fd8:	46d9      	mov	r9, fp
 8004fda:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004fde:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004fe2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004fe4:	9306      	str	r3, [sp, #24]
 8004fe6:	e404      	b.n	80047f2 <_dtoa_r+0x5aa>
 8004fe8:	9b00      	ldr	r3, [sp, #0]
 8004fea:	2b39      	cmp	r3, #57	; 0x39
 8004fec:	4621      	mov	r1, r4
 8004fee:	4632      	mov	r2, r6
 8004ff0:	f107 0401 	add.w	r4, r7, #1
 8004ff4:	465e      	mov	r6, fp
 8004ff6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004ffa:	d0d1      	beq.n	8004fa0 <_dtoa_r+0xd58>
 8004ffc:	2a00      	cmp	r2, #0
 8004ffe:	f77f af03 	ble.w	8004e08 <_dtoa_r+0xbc0>
 8005002:	460b      	mov	r3, r1
 8005004:	3331      	adds	r3, #49	; 0x31
 8005006:	9300      	str	r3, [sp, #0]
 8005008:	e6fe      	b.n	8004e08 <_dtoa_r+0xbc0>
 800500a:	f47f aefd 	bne.w	8004e08 <_dtoa_r+0xbc0>
 800500e:	9b00      	ldr	r3, [sp, #0]
 8005010:	07da      	lsls	r2, r3, #31
 8005012:	f57f aef9 	bpl.w	8004e08 <_dtoa_r+0xbc0>
 8005016:	e7bc      	b.n	8004f92 <_dtoa_r+0xd4a>
 8005018:	4629      	mov	r1, r5
 800501a:	2300      	movs	r3, #0
 800501c:	220a      	movs	r2, #10
 800501e:	4648      	mov	r0, r9
 8005020:	f001 f838 	bl	8006094 <__multadd>
 8005024:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005026:	2b00      	cmp	r3, #0
 8005028:	4605      	mov	r5, r0
 800502a:	dd09      	ble.n	8005040 <_dtoa_r+0xdf8>
 800502c:	9309      	str	r3, [sp, #36]	; 0x24
 800502e:	e484      	b.n	800493a <_dtoa_r+0x6f2>
 8005030:	9b02      	ldr	r3, [sp, #8]
 8005032:	2b02      	cmp	r3, #2
 8005034:	dc0e      	bgt.n	8005054 <_dtoa_r+0xe0c>
 8005036:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005038:	e507      	b.n	8004a4a <_dtoa_r+0x802>
 800503a:	2602      	movs	r6, #2
 800503c:	f7ff ba70 	b.w	8004520 <_dtoa_r+0x2d8>
 8005040:	9b02      	ldr	r3, [sp, #8]
 8005042:	2b02      	cmp	r3, #2
 8005044:	dc06      	bgt.n	8005054 <_dtoa_r+0xe0c>
 8005046:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005048:	e7f0      	b.n	800502c <_dtoa_r+0xde4>
 800504a:	f43f ac59 	beq.w	8004900 <_dtoa_r+0x6b8>
 800504e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005052:	e450      	b.n	80048f6 <_dtoa_r+0x6ae>
 8005054:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005056:	9309      	str	r3, [sp, #36]	; 0x24
 8005058:	e678      	b.n	8004d4c <_dtoa_r+0xb04>
 800505a:	bf00      	nop
 800505c:	40240000 	.word	0x40240000
 8005060:	401c0000 	.word	0x401c0000
 8005064:	3fe00000 	.word	0x3fe00000

08005068 <__sflush_r>:
 8005068:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800506c:	b29a      	uxth	r2, r3
 800506e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005072:	460c      	mov	r4, r1
 8005074:	0711      	lsls	r1, r2, #28
 8005076:	4680      	mov	r8, r0
 8005078:	d444      	bmi.n	8005104 <__sflush_r+0x9c>
 800507a:	6862      	ldr	r2, [r4, #4]
 800507c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005080:	2a00      	cmp	r2, #0
 8005082:	81a3      	strh	r3, [r4, #12]
 8005084:	dd59      	ble.n	800513a <__sflush_r+0xd2>
 8005086:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005088:	2d00      	cmp	r5, #0
 800508a:	d053      	beq.n	8005134 <__sflush_r+0xcc>
 800508c:	2200      	movs	r2, #0
 800508e:	b29b      	uxth	r3, r3
 8005090:	f8d8 6000 	ldr.w	r6, [r8]
 8005094:	69e1      	ldr	r1, [r4, #28]
 8005096:	f8c8 2000 	str.w	r2, [r8]
 800509a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800509e:	f040 8083 	bne.w	80051a8 <__sflush_r+0x140>
 80050a2:	2301      	movs	r3, #1
 80050a4:	4640      	mov	r0, r8
 80050a6:	47a8      	blx	r5
 80050a8:	1c42      	adds	r2, r0, #1
 80050aa:	d04a      	beq.n	8005142 <__sflush_r+0xda>
 80050ac:	89a3      	ldrh	r3, [r4, #12]
 80050ae:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80050b0:	69e1      	ldr	r1, [r4, #28]
 80050b2:	075b      	lsls	r3, r3, #29
 80050b4:	d505      	bpl.n	80050c2 <__sflush_r+0x5a>
 80050b6:	6862      	ldr	r2, [r4, #4]
 80050b8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80050ba:	1a80      	subs	r0, r0, r2
 80050bc:	b10b      	cbz	r3, 80050c2 <__sflush_r+0x5a>
 80050be:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80050c0:	1ac0      	subs	r0, r0, r3
 80050c2:	4602      	mov	r2, r0
 80050c4:	2300      	movs	r3, #0
 80050c6:	4640      	mov	r0, r8
 80050c8:	47a8      	blx	r5
 80050ca:	1c47      	adds	r7, r0, #1
 80050cc:	d045      	beq.n	800515a <__sflush_r+0xf2>
 80050ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80050d2:	6922      	ldr	r2, [r4, #16]
 80050d4:	6022      	str	r2, [r4, #0]
 80050d6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80050da:	2200      	movs	r2, #0
 80050dc:	81a3      	strh	r3, [r4, #12]
 80050de:	04db      	lsls	r3, r3, #19
 80050e0:	6062      	str	r2, [r4, #4]
 80050e2:	d500      	bpl.n	80050e6 <__sflush_r+0x7e>
 80050e4:	6520      	str	r0, [r4, #80]	; 0x50
 80050e6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80050e8:	f8c8 6000 	str.w	r6, [r8]
 80050ec:	b311      	cbz	r1, 8005134 <__sflush_r+0xcc>
 80050ee:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80050f2:	4299      	cmp	r1, r3
 80050f4:	d002      	beq.n	80050fc <__sflush_r+0x94>
 80050f6:	4640      	mov	r0, r8
 80050f8:	f000 f95e 	bl	80053b8 <_free_r>
 80050fc:	2000      	movs	r0, #0
 80050fe:	6320      	str	r0, [r4, #48]	; 0x30
 8005100:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005104:	6926      	ldr	r6, [r4, #16]
 8005106:	b1ae      	cbz	r6, 8005134 <__sflush_r+0xcc>
 8005108:	6825      	ldr	r5, [r4, #0]
 800510a:	6026      	str	r6, [r4, #0]
 800510c:	0792      	lsls	r2, r2, #30
 800510e:	bf0c      	ite	eq
 8005110:	6963      	ldreq	r3, [r4, #20]
 8005112:	2300      	movne	r3, #0
 8005114:	1bad      	subs	r5, r5, r6
 8005116:	60a3      	str	r3, [r4, #8]
 8005118:	e00a      	b.n	8005130 <__sflush_r+0xc8>
 800511a:	462b      	mov	r3, r5
 800511c:	4632      	mov	r2, r6
 800511e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005120:	69e1      	ldr	r1, [r4, #28]
 8005122:	4640      	mov	r0, r8
 8005124:	47b8      	blx	r7
 8005126:	2800      	cmp	r0, #0
 8005128:	eba5 0500 	sub.w	r5, r5, r0
 800512c:	4406      	add	r6, r0
 800512e:	dd2b      	ble.n	8005188 <__sflush_r+0x120>
 8005130:	2d00      	cmp	r5, #0
 8005132:	dcf2      	bgt.n	800511a <__sflush_r+0xb2>
 8005134:	2000      	movs	r0, #0
 8005136:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800513a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800513c:	2a00      	cmp	r2, #0
 800513e:	dca2      	bgt.n	8005086 <__sflush_r+0x1e>
 8005140:	e7f8      	b.n	8005134 <__sflush_r+0xcc>
 8005142:	f8d8 3000 	ldr.w	r3, [r8]
 8005146:	2b00      	cmp	r3, #0
 8005148:	d0b0      	beq.n	80050ac <__sflush_r+0x44>
 800514a:	2b1d      	cmp	r3, #29
 800514c:	d001      	beq.n	8005152 <__sflush_r+0xea>
 800514e:	2b16      	cmp	r3, #22
 8005150:	d12c      	bne.n	80051ac <__sflush_r+0x144>
 8005152:	f8c8 6000 	str.w	r6, [r8]
 8005156:	2000      	movs	r0, #0
 8005158:	e7ed      	b.n	8005136 <__sflush_r+0xce>
 800515a:	f8d8 1000 	ldr.w	r1, [r8]
 800515e:	291d      	cmp	r1, #29
 8005160:	d81a      	bhi.n	8005198 <__sflush_r+0x130>
 8005162:	4b15      	ldr	r3, [pc, #84]	; (80051b8 <__sflush_r+0x150>)
 8005164:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005168:	40cb      	lsrs	r3, r1
 800516a:	43db      	mvns	r3, r3
 800516c:	f013 0301 	ands.w	r3, r3, #1
 8005170:	d114      	bne.n	800519c <__sflush_r+0x134>
 8005172:	6925      	ldr	r5, [r4, #16]
 8005174:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005178:	e9c4 5300 	strd	r5, r3, [r4]
 800517c:	04d5      	lsls	r5, r2, #19
 800517e:	81a2      	strh	r2, [r4, #12]
 8005180:	d5b1      	bpl.n	80050e6 <__sflush_r+0x7e>
 8005182:	2900      	cmp	r1, #0
 8005184:	d1af      	bne.n	80050e6 <__sflush_r+0x7e>
 8005186:	e7ad      	b.n	80050e4 <__sflush_r+0x7c>
 8005188:	89a3      	ldrh	r3, [r4, #12]
 800518a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800518e:	81a3      	strh	r3, [r4, #12]
 8005190:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005194:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005198:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800519c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80051a0:	81a2      	strh	r2, [r4, #12]
 80051a2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80051a6:	e7c6      	b.n	8005136 <__sflush_r+0xce>
 80051a8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80051aa:	e782      	b.n	80050b2 <__sflush_r+0x4a>
 80051ac:	89a3      	ldrh	r3, [r4, #12]
 80051ae:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80051b2:	81a3      	strh	r3, [r4, #12]
 80051b4:	e7bf      	b.n	8005136 <__sflush_r+0xce>
 80051b6:	bf00      	nop
 80051b8:	20400001 	.word	0x20400001

080051bc <_fflush_r>:
 80051bc:	b538      	push	{r3, r4, r5, lr}
 80051be:	460d      	mov	r5, r1
 80051c0:	4604      	mov	r4, r0
 80051c2:	b108      	cbz	r0, 80051c8 <_fflush_r+0xc>
 80051c4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80051c6:	b1a3      	cbz	r3, 80051f2 <_fflush_r+0x36>
 80051c8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80051cc:	b1b8      	cbz	r0, 80051fe <_fflush_r+0x42>
 80051ce:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80051d0:	07db      	lsls	r3, r3, #31
 80051d2:	d401      	bmi.n	80051d8 <_fflush_r+0x1c>
 80051d4:	0581      	lsls	r1, r0, #22
 80051d6:	d51a      	bpl.n	800520e <_fflush_r+0x52>
 80051d8:	4620      	mov	r0, r4
 80051da:	4629      	mov	r1, r5
 80051dc:	f7ff ff44 	bl	8005068 <__sflush_r>
 80051e0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80051e2:	07da      	lsls	r2, r3, #31
 80051e4:	4604      	mov	r4, r0
 80051e6:	d402      	bmi.n	80051ee <_fflush_r+0x32>
 80051e8:	89ab      	ldrh	r3, [r5, #12]
 80051ea:	059b      	lsls	r3, r3, #22
 80051ec:	d50a      	bpl.n	8005204 <_fflush_r+0x48>
 80051ee:	4620      	mov	r0, r4
 80051f0:	bd38      	pop	{r3, r4, r5, pc}
 80051f2:	f000 f83f 	bl	8005274 <__sinit>
 80051f6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80051fa:	2800      	cmp	r0, #0
 80051fc:	d1e7      	bne.n	80051ce <_fflush_r+0x12>
 80051fe:	4604      	mov	r4, r0
 8005200:	4620      	mov	r0, r4
 8005202:	bd38      	pop	{r3, r4, r5, pc}
 8005204:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005206:	f000 fb87 	bl	8005918 <__retarget_lock_release_recursive>
 800520a:	4620      	mov	r0, r4
 800520c:	bd38      	pop	{r3, r4, r5, pc}
 800520e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005210:	f000 fb80 	bl	8005914 <__retarget_lock_acquire_recursive>
 8005214:	e7e0      	b.n	80051d8 <_fflush_r+0x1c>
 8005216:	bf00      	nop

08005218 <std>:
 8005218:	b510      	push	{r4, lr}
 800521a:	2300      	movs	r3, #0
 800521c:	4604      	mov	r4, r0
 800521e:	8181      	strh	r1, [r0, #12]
 8005220:	81c2      	strh	r2, [r0, #14]
 8005222:	e9c0 3300 	strd	r3, r3, [r0]
 8005226:	6083      	str	r3, [r0, #8]
 8005228:	6643      	str	r3, [r0, #100]	; 0x64
 800522a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800522e:	6183      	str	r3, [r0, #24]
 8005230:	4619      	mov	r1, r3
 8005232:	2208      	movs	r2, #8
 8005234:	305c      	adds	r0, #92	; 0x5c
 8005236:	f7fd f8c9 	bl	80023cc <memset>
 800523a:	4807      	ldr	r0, [pc, #28]	; (8005258 <std+0x40>)
 800523c:	4907      	ldr	r1, [pc, #28]	; (800525c <std+0x44>)
 800523e:	4a08      	ldr	r2, [pc, #32]	; (8005260 <std+0x48>)
 8005240:	4b08      	ldr	r3, [pc, #32]	; (8005264 <std+0x4c>)
 8005242:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005244:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005248:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800524c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005250:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005254:	f000 bb5a 	b.w	800590c <__retarget_lock_init_recursive>
 8005258:	08006a31 	.word	0x08006a31
 800525c:	08006a55 	.word	0x08006a55
 8005260:	08006a91 	.word	0x08006a91
 8005264:	08006ab1 	.word	0x08006ab1

08005268 <_cleanup_r>:
 8005268:	4901      	ldr	r1, [pc, #4]	; (8005270 <_cleanup_r+0x8>)
 800526a:	f000 bb17 	b.w	800589c <_fwalk_reent>
 800526e:	bf00      	nop
 8005270:	08006d21 	.word	0x08006d21

08005274 <__sinit>:
 8005274:	b510      	push	{r4, lr}
 8005276:	4604      	mov	r4, r0
 8005278:	4812      	ldr	r0, [pc, #72]	; (80052c4 <__sinit+0x50>)
 800527a:	f000 fb4b 	bl	8005914 <__retarget_lock_acquire_recursive>
 800527e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005280:	b9d2      	cbnz	r2, 80052b8 <__sinit+0x44>
 8005282:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005286:	4810      	ldr	r0, [pc, #64]	; (80052c8 <__sinit+0x54>)
 8005288:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800528c:	2103      	movs	r1, #3
 800528e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005292:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005294:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005298:	6860      	ldr	r0, [r4, #4]
 800529a:	2104      	movs	r1, #4
 800529c:	f7ff ffbc 	bl	8005218 <std>
 80052a0:	2201      	movs	r2, #1
 80052a2:	2109      	movs	r1, #9
 80052a4:	68a0      	ldr	r0, [r4, #8]
 80052a6:	f7ff ffb7 	bl	8005218 <std>
 80052aa:	2202      	movs	r2, #2
 80052ac:	2112      	movs	r1, #18
 80052ae:	68e0      	ldr	r0, [r4, #12]
 80052b0:	f7ff ffb2 	bl	8005218 <std>
 80052b4:	2301      	movs	r3, #1
 80052b6:	63a3      	str	r3, [r4, #56]	; 0x38
 80052b8:	4802      	ldr	r0, [pc, #8]	; (80052c4 <__sinit+0x50>)
 80052ba:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80052be:	f000 bb2b 	b.w	8005918 <__retarget_lock_release_recursive>
 80052c2:	bf00      	nop
 80052c4:	20000c90 	.word	0x20000c90
 80052c8:	08005269 	.word	0x08005269

080052cc <__sfp_lock_acquire>:
 80052cc:	4801      	ldr	r0, [pc, #4]	; (80052d4 <__sfp_lock_acquire+0x8>)
 80052ce:	f000 bb21 	b.w	8005914 <__retarget_lock_acquire_recursive>
 80052d2:	bf00      	nop
 80052d4:	20000ca4 	.word	0x20000ca4

080052d8 <__sfp_lock_release>:
 80052d8:	4801      	ldr	r0, [pc, #4]	; (80052e0 <__sfp_lock_release+0x8>)
 80052da:	f000 bb1d 	b.w	8005918 <__retarget_lock_release_recursive>
 80052de:	bf00      	nop
 80052e0:	20000ca4 	.word	0x20000ca4

080052e4 <__libc_fini_array>:
 80052e4:	b538      	push	{r3, r4, r5, lr}
 80052e6:	4c0a      	ldr	r4, [pc, #40]	; (8005310 <__libc_fini_array+0x2c>)
 80052e8:	4d0a      	ldr	r5, [pc, #40]	; (8005314 <__libc_fini_array+0x30>)
 80052ea:	1b64      	subs	r4, r4, r5
 80052ec:	10a4      	asrs	r4, r4, #2
 80052ee:	d00a      	beq.n	8005306 <__libc_fini_array+0x22>
 80052f0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80052f4:	3b01      	subs	r3, #1
 80052f6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80052fa:	3c01      	subs	r4, #1
 80052fc:	f855 3904 	ldr.w	r3, [r5], #-4
 8005300:	4798      	blx	r3
 8005302:	2c00      	cmp	r4, #0
 8005304:	d1f9      	bne.n	80052fa <__libc_fini_array+0x16>
 8005306:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800530a:	f001 befd 	b.w	8007108 <_fini>
 800530e:	bf00      	nop
 8005310:	08007664 	.word	0x08007664
 8005314:	08007660 	.word	0x08007660

08005318 <_malloc_trim_r>:
 8005318:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800531a:	4f24      	ldr	r7, [pc, #144]	; (80053ac <_malloc_trim_r+0x94>)
 800531c:	460c      	mov	r4, r1
 800531e:	4606      	mov	r6, r0
 8005320:	f000 fe7c 	bl	800601c <__malloc_lock>
 8005324:	68bb      	ldr	r3, [r7, #8]
 8005326:	685d      	ldr	r5, [r3, #4]
 8005328:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800532c:	310f      	adds	r1, #15
 800532e:	f025 0503 	bic.w	r5, r5, #3
 8005332:	4429      	add	r1, r5
 8005334:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005338:	f021 010f 	bic.w	r1, r1, #15
 800533c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005340:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005344:	db07      	blt.n	8005356 <_malloc_trim_r+0x3e>
 8005346:	2100      	movs	r1, #0
 8005348:	4630      	mov	r0, r6
 800534a:	f001 fb5f 	bl	8006a0c <_sbrk_r>
 800534e:	68bb      	ldr	r3, [r7, #8]
 8005350:	442b      	add	r3, r5
 8005352:	4298      	cmp	r0, r3
 8005354:	d004      	beq.n	8005360 <_malloc_trim_r+0x48>
 8005356:	4630      	mov	r0, r6
 8005358:	f000 fe66 	bl	8006028 <__malloc_unlock>
 800535c:	2000      	movs	r0, #0
 800535e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005360:	4261      	negs	r1, r4
 8005362:	4630      	mov	r0, r6
 8005364:	f001 fb52 	bl	8006a0c <_sbrk_r>
 8005368:	3001      	adds	r0, #1
 800536a:	d00d      	beq.n	8005388 <_malloc_trim_r+0x70>
 800536c:	4b10      	ldr	r3, [pc, #64]	; (80053b0 <_malloc_trim_r+0x98>)
 800536e:	68ba      	ldr	r2, [r7, #8]
 8005370:	6819      	ldr	r1, [r3, #0]
 8005372:	1b2d      	subs	r5, r5, r4
 8005374:	f045 0501 	orr.w	r5, r5, #1
 8005378:	4630      	mov	r0, r6
 800537a:	1b09      	subs	r1, r1, r4
 800537c:	6055      	str	r5, [r2, #4]
 800537e:	6019      	str	r1, [r3, #0]
 8005380:	f000 fe52 	bl	8006028 <__malloc_unlock>
 8005384:	2001      	movs	r0, #1
 8005386:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005388:	2100      	movs	r1, #0
 800538a:	4630      	mov	r0, r6
 800538c:	f001 fb3e 	bl	8006a0c <_sbrk_r>
 8005390:	68ba      	ldr	r2, [r7, #8]
 8005392:	1a83      	subs	r3, r0, r2
 8005394:	2b0f      	cmp	r3, #15
 8005396:	ddde      	ble.n	8005356 <_malloc_trim_r+0x3e>
 8005398:	4c06      	ldr	r4, [pc, #24]	; (80053b4 <_malloc_trim_r+0x9c>)
 800539a:	4905      	ldr	r1, [pc, #20]	; (80053b0 <_malloc_trim_r+0x98>)
 800539c:	6824      	ldr	r4, [r4, #0]
 800539e:	f043 0301 	orr.w	r3, r3, #1
 80053a2:	1b00      	subs	r0, r0, r4
 80053a4:	6053      	str	r3, [r2, #4]
 80053a6:	6008      	str	r0, [r1, #0]
 80053a8:	e7d5      	b.n	8005356 <_malloc_trim_r+0x3e>
 80053aa:	bf00      	nop
 80053ac:	2000044c 	.word	0x2000044c
 80053b0:	20000a6c 	.word	0x20000a6c
 80053b4:	20000854 	.word	0x20000854

080053b8 <_free_r>:
 80053b8:	2900      	cmp	r1, #0
 80053ba:	d053      	beq.n	8005464 <_free_r+0xac>
 80053bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80053be:	460c      	mov	r4, r1
 80053c0:	4606      	mov	r6, r0
 80053c2:	f000 fe2b 	bl	800601c <__malloc_lock>
 80053c6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80053ca:	4f71      	ldr	r7, [pc, #452]	; (8005590 <_free_r+0x1d8>)
 80053cc:	f02c 0101 	bic.w	r1, ip, #1
 80053d0:	f1a4 0508 	sub.w	r5, r4, #8
 80053d4:	186b      	adds	r3, r5, r1
 80053d6:	68b8      	ldr	r0, [r7, #8]
 80053d8:	685a      	ldr	r2, [r3, #4]
 80053da:	4298      	cmp	r0, r3
 80053dc:	f022 0203 	bic.w	r2, r2, #3
 80053e0:	d053      	beq.n	800548a <_free_r+0xd2>
 80053e2:	f01c 0f01 	tst.w	ip, #1
 80053e6:	605a      	str	r2, [r3, #4]
 80053e8:	eb03 0002 	add.w	r0, r3, r2
 80053ec:	d13b      	bne.n	8005466 <_free_r+0xae>
 80053ee:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80053f2:	6840      	ldr	r0, [r0, #4]
 80053f4:	eba5 050c 	sub.w	r5, r5, ip
 80053f8:	f107 0e08 	add.w	lr, r7, #8
 80053fc:	68ac      	ldr	r4, [r5, #8]
 80053fe:	4574      	cmp	r4, lr
 8005400:	4461      	add	r1, ip
 8005402:	f000 0001 	and.w	r0, r0, #1
 8005406:	d075      	beq.n	80054f4 <_free_r+0x13c>
 8005408:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800540c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005410:	f8cc 4008 	str.w	r4, [ip, #8]
 8005414:	b360      	cbz	r0, 8005470 <_free_r+0xb8>
 8005416:	f041 0301 	orr.w	r3, r1, #1
 800541a:	606b      	str	r3, [r5, #4]
 800541c:	5069      	str	r1, [r5, r1]
 800541e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005422:	d350      	bcc.n	80054c6 <_free_r+0x10e>
 8005424:	0a4b      	lsrs	r3, r1, #9
 8005426:	2b04      	cmp	r3, #4
 8005428:	d870      	bhi.n	800550c <_free_r+0x154>
 800542a:	098b      	lsrs	r3, r1, #6
 800542c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005430:	00e4      	lsls	r4, r4, #3
 8005432:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005436:	1938      	adds	r0, r7, r4
 8005438:	593b      	ldr	r3, [r7, r4]
 800543a:	3808      	subs	r0, #8
 800543c:	4298      	cmp	r0, r3
 800543e:	d078      	beq.n	8005532 <_free_r+0x17a>
 8005440:	685a      	ldr	r2, [r3, #4]
 8005442:	f022 0203 	bic.w	r2, r2, #3
 8005446:	428a      	cmp	r2, r1
 8005448:	d971      	bls.n	800552e <_free_r+0x176>
 800544a:	689b      	ldr	r3, [r3, #8]
 800544c:	4298      	cmp	r0, r3
 800544e:	d1f7      	bne.n	8005440 <_free_r+0x88>
 8005450:	68c3      	ldr	r3, [r0, #12]
 8005452:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005456:	609d      	str	r5, [r3, #8]
 8005458:	60c5      	str	r5, [r0, #12]
 800545a:	4630      	mov	r0, r6
 800545c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005460:	f000 bde2 	b.w	8006028 <__malloc_unlock>
 8005464:	4770      	bx	lr
 8005466:	6840      	ldr	r0, [r0, #4]
 8005468:	f000 0001 	and.w	r0, r0, #1
 800546c:	2800      	cmp	r0, #0
 800546e:	d1d2      	bne.n	8005416 <_free_r+0x5e>
 8005470:	6898      	ldr	r0, [r3, #8]
 8005472:	4c48      	ldr	r4, [pc, #288]	; (8005594 <_free_r+0x1dc>)
 8005474:	4411      	add	r1, r2
 8005476:	42a0      	cmp	r0, r4
 8005478:	f041 0201 	orr.w	r2, r1, #1
 800547c:	d062      	beq.n	8005544 <_free_r+0x18c>
 800547e:	68db      	ldr	r3, [r3, #12]
 8005480:	60c3      	str	r3, [r0, #12]
 8005482:	6098      	str	r0, [r3, #8]
 8005484:	606a      	str	r2, [r5, #4]
 8005486:	5069      	str	r1, [r5, r1]
 8005488:	e7c9      	b.n	800541e <_free_r+0x66>
 800548a:	f01c 0f01 	tst.w	ip, #1
 800548e:	440a      	add	r2, r1
 8005490:	d107      	bne.n	80054a2 <_free_r+0xea>
 8005492:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005496:	1aed      	subs	r5, r5, r3
 8005498:	441a      	add	r2, r3
 800549a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800549e:	60cb      	str	r3, [r1, #12]
 80054a0:	6099      	str	r1, [r3, #8]
 80054a2:	4b3d      	ldr	r3, [pc, #244]	; (8005598 <_free_r+0x1e0>)
 80054a4:	681b      	ldr	r3, [r3, #0]
 80054a6:	f042 0101 	orr.w	r1, r2, #1
 80054aa:	4293      	cmp	r3, r2
 80054ac:	6069      	str	r1, [r5, #4]
 80054ae:	60bd      	str	r5, [r7, #8]
 80054b0:	d804      	bhi.n	80054bc <_free_r+0x104>
 80054b2:	4b3a      	ldr	r3, [pc, #232]	; (800559c <_free_r+0x1e4>)
 80054b4:	4630      	mov	r0, r6
 80054b6:	6819      	ldr	r1, [r3, #0]
 80054b8:	f7ff ff2e 	bl	8005318 <_malloc_trim_r>
 80054bc:	4630      	mov	r0, r6
 80054be:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80054c2:	f000 bdb1 	b.w	8006028 <__malloc_unlock>
 80054c6:	08c9      	lsrs	r1, r1, #3
 80054c8:	6878      	ldr	r0, [r7, #4]
 80054ca:	1c4a      	adds	r2, r1, #1
 80054cc:	2301      	movs	r3, #1
 80054ce:	1089      	asrs	r1, r1, #2
 80054d0:	408b      	lsls	r3, r1
 80054d2:	4303      	orrs	r3, r0
 80054d4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80054d8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80054dc:	607b      	str	r3, [r7, #4]
 80054de:	3908      	subs	r1, #8
 80054e0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80054e4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80054e8:	60c5      	str	r5, [r0, #12]
 80054ea:	4630      	mov	r0, r6
 80054ec:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80054f0:	f000 bd9a 	b.w	8006028 <__malloc_unlock>
 80054f4:	2800      	cmp	r0, #0
 80054f6:	d145      	bne.n	8005584 <_free_r+0x1cc>
 80054f8:	440a      	add	r2, r1
 80054fa:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80054fe:	f042 0001 	orr.w	r0, r2, #1
 8005502:	60cb      	str	r3, [r1, #12]
 8005504:	6099      	str	r1, [r3, #8]
 8005506:	6068      	str	r0, [r5, #4]
 8005508:	50aa      	str	r2, [r5, r2]
 800550a:	e7d7      	b.n	80054bc <_free_r+0x104>
 800550c:	2b14      	cmp	r3, #20
 800550e:	d908      	bls.n	8005522 <_free_r+0x16a>
 8005510:	2b54      	cmp	r3, #84	; 0x54
 8005512:	d81e      	bhi.n	8005552 <_free_r+0x19a>
 8005514:	0b0b      	lsrs	r3, r1, #12
 8005516:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800551a:	00e4      	lsls	r4, r4, #3
 800551c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005520:	e789      	b.n	8005436 <_free_r+0x7e>
 8005522:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005526:	00e4      	lsls	r4, r4, #3
 8005528:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800552c:	e783      	b.n	8005436 <_free_r+0x7e>
 800552e:	4618      	mov	r0, r3
 8005530:	e78e      	b.n	8005450 <_free_r+0x98>
 8005532:	1093      	asrs	r3, r2, #2
 8005534:	6879      	ldr	r1, [r7, #4]
 8005536:	2201      	movs	r2, #1
 8005538:	fa02 f303 	lsl.w	r3, r2, r3
 800553c:	430b      	orrs	r3, r1
 800553e:	607b      	str	r3, [r7, #4]
 8005540:	4603      	mov	r3, r0
 8005542:	e786      	b.n	8005452 <_free_r+0x9a>
 8005544:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005548:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800554c:	606a      	str	r2, [r5, #4]
 800554e:	5069      	str	r1, [r5, r1]
 8005550:	e7b4      	b.n	80054bc <_free_r+0x104>
 8005552:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005556:	d806      	bhi.n	8005566 <_free_r+0x1ae>
 8005558:	0bcb      	lsrs	r3, r1, #15
 800555a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800555e:	00e4      	lsls	r4, r4, #3
 8005560:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005564:	e767      	b.n	8005436 <_free_r+0x7e>
 8005566:	f240 5254 	movw	r2, #1364	; 0x554
 800556a:	4293      	cmp	r3, r2
 800556c:	d806      	bhi.n	800557c <_free_r+0x1c4>
 800556e:	0c8b      	lsrs	r3, r1, #18
 8005570:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005574:	00e4      	lsls	r4, r4, #3
 8005576:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800557a:	e75c      	b.n	8005436 <_free_r+0x7e>
 800557c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005580:	227e      	movs	r2, #126	; 0x7e
 8005582:	e758      	b.n	8005436 <_free_r+0x7e>
 8005584:	f041 0201 	orr.w	r2, r1, #1
 8005588:	606a      	str	r2, [r5, #4]
 800558a:	6019      	str	r1, [r3, #0]
 800558c:	e796      	b.n	80054bc <_free_r+0x104>
 800558e:	bf00      	nop
 8005590:	2000044c 	.word	0x2000044c
 8005594:	20000454 	.word	0x20000454
 8005598:	20000858 	.word	0x20000858
 800559c:	20000a9c 	.word	0x20000a9c

080055a0 <__sfvwrite_r>:
 80055a0:	6893      	ldr	r3, [r2, #8]
 80055a2:	2b00      	cmp	r3, #0
 80055a4:	f000 80e4 	beq.w	8005770 <__sfvwrite_r+0x1d0>
 80055a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80055ac:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80055b0:	b29b      	uxth	r3, r3
 80055b2:	460c      	mov	r4, r1
 80055b4:	0719      	lsls	r1, r3, #28
 80055b6:	b083      	sub	sp, #12
 80055b8:	4682      	mov	sl, r0
 80055ba:	4690      	mov	r8, r2
 80055bc:	d535      	bpl.n	800562a <__sfvwrite_r+0x8a>
 80055be:	6922      	ldr	r2, [r4, #16]
 80055c0:	b39a      	cbz	r2, 800562a <__sfvwrite_r+0x8a>
 80055c2:	f013 0202 	ands.w	r2, r3, #2
 80055c6:	f8d8 6000 	ldr.w	r6, [r8]
 80055ca:	d03d      	beq.n	8005648 <__sfvwrite_r+0xa8>
 80055cc:	2700      	movs	r7, #0
 80055ce:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80055d2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80055d6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005898 <__sfvwrite_r+0x2f8>
 80055da:	463d      	mov	r5, r7
 80055dc:	454d      	cmp	r5, r9
 80055de:	462b      	mov	r3, r5
 80055e0:	463a      	mov	r2, r7
 80055e2:	bf28      	it	cs
 80055e4:	464b      	movcs	r3, r9
 80055e6:	4661      	mov	r1, ip
 80055e8:	4650      	mov	r0, sl
 80055ea:	b1d5      	cbz	r5, 8005622 <__sfvwrite_r+0x82>
 80055ec:	47d8      	blx	fp
 80055ee:	2800      	cmp	r0, #0
 80055f0:	f340 80c6 	ble.w	8005780 <__sfvwrite_r+0x1e0>
 80055f4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80055f8:	1a1b      	subs	r3, r3, r0
 80055fa:	4407      	add	r7, r0
 80055fc:	1a2d      	subs	r5, r5, r0
 80055fe:	f8c8 3008 	str.w	r3, [r8, #8]
 8005602:	2b00      	cmp	r3, #0
 8005604:	f000 80b0 	beq.w	8005768 <__sfvwrite_r+0x1c8>
 8005608:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800560c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005610:	454d      	cmp	r5, r9
 8005612:	462b      	mov	r3, r5
 8005614:	463a      	mov	r2, r7
 8005616:	bf28      	it	cs
 8005618:	464b      	movcs	r3, r9
 800561a:	4661      	mov	r1, ip
 800561c:	4650      	mov	r0, sl
 800561e:	2d00      	cmp	r5, #0
 8005620:	d1e4      	bne.n	80055ec <__sfvwrite_r+0x4c>
 8005622:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005626:	3608      	adds	r6, #8
 8005628:	e7d8      	b.n	80055dc <__sfvwrite_r+0x3c>
 800562a:	4621      	mov	r1, r4
 800562c:	4650      	mov	r0, sl
 800562e:	f7fe fd03 	bl	8004038 <__swsetup_r>
 8005632:	2800      	cmp	r0, #0
 8005634:	f040 812a 	bne.w	800588c <__sfvwrite_r+0x2ec>
 8005638:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800563c:	f8d8 6000 	ldr.w	r6, [r8]
 8005640:	b29b      	uxth	r3, r3
 8005642:	f013 0202 	ands.w	r2, r3, #2
 8005646:	d1c1      	bne.n	80055cc <__sfvwrite_r+0x2c>
 8005648:	f013 0901 	ands.w	r9, r3, #1
 800564c:	d15d      	bne.n	800570a <__sfvwrite_r+0x16a>
 800564e:	68a7      	ldr	r7, [r4, #8]
 8005650:	6820      	ldr	r0, [r4, #0]
 8005652:	464d      	mov	r5, r9
 8005654:	2d00      	cmp	r5, #0
 8005656:	d054      	beq.n	8005702 <__sfvwrite_r+0x162>
 8005658:	059a      	lsls	r2, r3, #22
 800565a:	f140 809b 	bpl.w	8005794 <__sfvwrite_r+0x1f4>
 800565e:	42af      	cmp	r7, r5
 8005660:	46bb      	mov	fp, r7
 8005662:	f200 80d8 	bhi.w	8005816 <__sfvwrite_r+0x276>
 8005666:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800566a:	d02f      	beq.n	80056cc <__sfvwrite_r+0x12c>
 800566c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005670:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005674:	eba0 0b01 	sub.w	fp, r0, r1
 8005678:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800567c:	1c68      	adds	r0, r5, #1
 800567e:	107f      	asrs	r7, r7, #1
 8005680:	4458      	add	r0, fp
 8005682:	42b8      	cmp	r0, r7
 8005684:	463a      	mov	r2, r7
 8005686:	bf84      	itt	hi
 8005688:	4607      	movhi	r7, r0
 800568a:	463a      	movhi	r2, r7
 800568c:	055b      	lsls	r3, r3, #21
 800568e:	f140 80d3 	bpl.w	8005838 <__sfvwrite_r+0x298>
 8005692:	4611      	mov	r1, r2
 8005694:	4650      	mov	r0, sl
 8005696:	f000 f9b9 	bl	8005a0c <_malloc_r>
 800569a:	2800      	cmp	r0, #0
 800569c:	f000 80f0 	beq.w	8005880 <__sfvwrite_r+0x2e0>
 80056a0:	465a      	mov	r2, fp
 80056a2:	6921      	ldr	r1, [r4, #16]
 80056a4:	9001      	str	r0, [sp, #4]
 80056a6:	f7fa ff2b 	bl	8000500 <memcpy>
 80056aa:	89a2      	ldrh	r2, [r4, #12]
 80056ac:	9b01      	ldr	r3, [sp, #4]
 80056ae:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80056b2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80056b6:	81a2      	strh	r2, [r4, #12]
 80056b8:	eba7 020b 	sub.w	r2, r7, fp
 80056bc:	eb03 000b 	add.w	r0, r3, fp
 80056c0:	6167      	str	r7, [r4, #20]
 80056c2:	6123      	str	r3, [r4, #16]
 80056c4:	6020      	str	r0, [r4, #0]
 80056c6:	60a2      	str	r2, [r4, #8]
 80056c8:	462f      	mov	r7, r5
 80056ca:	46ab      	mov	fp, r5
 80056cc:	465a      	mov	r2, fp
 80056ce:	4649      	mov	r1, r9
 80056d0:	f000 fc40 	bl	8005f54 <memmove>
 80056d4:	68a2      	ldr	r2, [r4, #8]
 80056d6:	6823      	ldr	r3, [r4, #0]
 80056d8:	1bd2      	subs	r2, r2, r7
 80056da:	445b      	add	r3, fp
 80056dc:	462f      	mov	r7, r5
 80056de:	60a2      	str	r2, [r4, #8]
 80056e0:	6023      	str	r3, [r4, #0]
 80056e2:	2500      	movs	r5, #0
 80056e4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80056e8:	1bdb      	subs	r3, r3, r7
 80056ea:	44b9      	add	r9, r7
 80056ec:	f8c8 3008 	str.w	r3, [r8, #8]
 80056f0:	2b00      	cmp	r3, #0
 80056f2:	d039      	beq.n	8005768 <__sfvwrite_r+0x1c8>
 80056f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056f8:	68a7      	ldr	r7, [r4, #8]
 80056fa:	6820      	ldr	r0, [r4, #0]
 80056fc:	b29b      	uxth	r3, r3
 80056fe:	2d00      	cmp	r5, #0
 8005700:	d1aa      	bne.n	8005658 <__sfvwrite_r+0xb8>
 8005702:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005706:	3608      	adds	r6, #8
 8005708:	e7a4      	b.n	8005654 <__sfvwrite_r+0xb4>
 800570a:	4633      	mov	r3, r6
 800570c:	4691      	mov	r9, r2
 800570e:	4610      	mov	r0, r2
 8005710:	4617      	mov	r7, r2
 8005712:	464e      	mov	r6, r9
 8005714:	469b      	mov	fp, r3
 8005716:	2f00      	cmp	r7, #0
 8005718:	d06b      	beq.n	80057f2 <__sfvwrite_r+0x252>
 800571a:	2800      	cmp	r0, #0
 800571c:	d071      	beq.n	8005802 <__sfvwrite_r+0x262>
 800571e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005722:	6820      	ldr	r0, [r4, #0]
 8005724:	45b9      	cmp	r9, r7
 8005726:	464b      	mov	r3, r9
 8005728:	bf28      	it	cs
 800572a:	463b      	movcs	r3, r7
 800572c:	4288      	cmp	r0, r1
 800572e:	d903      	bls.n	8005738 <__sfvwrite_r+0x198>
 8005730:	68a5      	ldr	r5, [r4, #8]
 8005732:	4415      	add	r5, r2
 8005734:	42ab      	cmp	r3, r5
 8005736:	dc71      	bgt.n	800581c <__sfvwrite_r+0x27c>
 8005738:	429a      	cmp	r2, r3
 800573a:	f300 8093 	bgt.w	8005864 <__sfvwrite_r+0x2c4>
 800573e:	4613      	mov	r3, r2
 8005740:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005742:	69e1      	ldr	r1, [r4, #28]
 8005744:	4632      	mov	r2, r6
 8005746:	4650      	mov	r0, sl
 8005748:	47a8      	blx	r5
 800574a:	1e05      	subs	r5, r0, #0
 800574c:	dd18      	ble.n	8005780 <__sfvwrite_r+0x1e0>
 800574e:	ebb9 0905 	subs.w	r9, r9, r5
 8005752:	d00f      	beq.n	8005774 <__sfvwrite_r+0x1d4>
 8005754:	2001      	movs	r0, #1
 8005756:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800575a:	1b5b      	subs	r3, r3, r5
 800575c:	442e      	add	r6, r5
 800575e:	1b7f      	subs	r7, r7, r5
 8005760:	f8c8 3008 	str.w	r3, [r8, #8]
 8005764:	2b00      	cmp	r3, #0
 8005766:	d1d6      	bne.n	8005716 <__sfvwrite_r+0x176>
 8005768:	2000      	movs	r0, #0
 800576a:	b003      	add	sp, #12
 800576c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005770:	2000      	movs	r0, #0
 8005772:	4770      	bx	lr
 8005774:	4621      	mov	r1, r4
 8005776:	4650      	mov	r0, sl
 8005778:	f7ff fd20 	bl	80051bc <_fflush_r>
 800577c:	2800      	cmp	r0, #0
 800577e:	d0ea      	beq.n	8005756 <__sfvwrite_r+0x1b6>
 8005780:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005784:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005788:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800578c:	81a3      	strh	r3, [r4, #12]
 800578e:	b003      	add	sp, #12
 8005790:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005794:	6923      	ldr	r3, [r4, #16]
 8005796:	4283      	cmp	r3, r0
 8005798:	d315      	bcc.n	80057c6 <__sfvwrite_r+0x226>
 800579a:	6961      	ldr	r1, [r4, #20]
 800579c:	42a9      	cmp	r1, r5
 800579e:	d812      	bhi.n	80057c6 <__sfvwrite_r+0x226>
 80057a0:	4b3c      	ldr	r3, [pc, #240]	; (8005894 <__sfvwrite_r+0x2f4>)
 80057a2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80057a4:	429d      	cmp	r5, r3
 80057a6:	bf94      	ite	ls
 80057a8:	462b      	movls	r3, r5
 80057aa:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80057ae:	464a      	mov	r2, r9
 80057b0:	fb93 f3f1 	sdiv	r3, r3, r1
 80057b4:	4650      	mov	r0, sl
 80057b6:	fb01 f303 	mul.w	r3, r1, r3
 80057ba:	69e1      	ldr	r1, [r4, #28]
 80057bc:	47b8      	blx	r7
 80057be:	1e07      	subs	r7, r0, #0
 80057c0:	ddde      	ble.n	8005780 <__sfvwrite_r+0x1e0>
 80057c2:	1bed      	subs	r5, r5, r7
 80057c4:	e78e      	b.n	80056e4 <__sfvwrite_r+0x144>
 80057c6:	42af      	cmp	r7, r5
 80057c8:	bf28      	it	cs
 80057ca:	462f      	movcs	r7, r5
 80057cc:	463a      	mov	r2, r7
 80057ce:	4649      	mov	r1, r9
 80057d0:	f000 fbc0 	bl	8005f54 <memmove>
 80057d4:	68a3      	ldr	r3, [r4, #8]
 80057d6:	6822      	ldr	r2, [r4, #0]
 80057d8:	1bdb      	subs	r3, r3, r7
 80057da:	443a      	add	r2, r7
 80057dc:	60a3      	str	r3, [r4, #8]
 80057de:	6022      	str	r2, [r4, #0]
 80057e0:	2b00      	cmp	r3, #0
 80057e2:	d1ee      	bne.n	80057c2 <__sfvwrite_r+0x222>
 80057e4:	4621      	mov	r1, r4
 80057e6:	4650      	mov	r0, sl
 80057e8:	f7ff fce8 	bl	80051bc <_fflush_r>
 80057ec:	2800      	cmp	r0, #0
 80057ee:	d0e8      	beq.n	80057c2 <__sfvwrite_r+0x222>
 80057f0:	e7c6      	b.n	8005780 <__sfvwrite_r+0x1e0>
 80057f2:	f10b 0308 	add.w	r3, fp, #8
 80057f6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80057fa:	469b      	mov	fp, r3
 80057fc:	3308      	adds	r3, #8
 80057fe:	2f00      	cmp	r7, #0
 8005800:	d0f9      	beq.n	80057f6 <__sfvwrite_r+0x256>
 8005802:	463a      	mov	r2, r7
 8005804:	210a      	movs	r1, #10
 8005806:	4630      	mov	r0, r6
 8005808:	f7fa ff8a 	bl	8000720 <memchr>
 800580c:	b338      	cbz	r0, 800585e <__sfvwrite_r+0x2be>
 800580e:	3001      	adds	r0, #1
 8005810:	eba0 0906 	sub.w	r9, r0, r6
 8005814:	e783      	b.n	800571e <__sfvwrite_r+0x17e>
 8005816:	462f      	mov	r7, r5
 8005818:	46ab      	mov	fp, r5
 800581a:	e757      	b.n	80056cc <__sfvwrite_r+0x12c>
 800581c:	4631      	mov	r1, r6
 800581e:	462a      	mov	r2, r5
 8005820:	f000 fb98 	bl	8005f54 <memmove>
 8005824:	6823      	ldr	r3, [r4, #0]
 8005826:	442b      	add	r3, r5
 8005828:	6023      	str	r3, [r4, #0]
 800582a:	4621      	mov	r1, r4
 800582c:	4650      	mov	r0, sl
 800582e:	f7ff fcc5 	bl	80051bc <_fflush_r>
 8005832:	2800      	cmp	r0, #0
 8005834:	d08b      	beq.n	800574e <__sfvwrite_r+0x1ae>
 8005836:	e7a3      	b.n	8005780 <__sfvwrite_r+0x1e0>
 8005838:	4650      	mov	r0, sl
 800583a:	f000 ff05 	bl	8006648 <_realloc_r>
 800583e:	4603      	mov	r3, r0
 8005840:	2800      	cmp	r0, #0
 8005842:	f47f af39 	bne.w	80056b8 <__sfvwrite_r+0x118>
 8005846:	6921      	ldr	r1, [r4, #16]
 8005848:	4650      	mov	r0, sl
 800584a:	f7ff fdb5 	bl	80053b8 <_free_r>
 800584e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005852:	220c      	movs	r2, #12
 8005854:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005858:	f8ca 2000 	str.w	r2, [sl]
 800585c:	e792      	b.n	8005784 <__sfvwrite_r+0x1e4>
 800585e:	f107 0901 	add.w	r9, r7, #1
 8005862:	e75c      	b.n	800571e <__sfvwrite_r+0x17e>
 8005864:	461a      	mov	r2, r3
 8005866:	4631      	mov	r1, r6
 8005868:	9301      	str	r3, [sp, #4]
 800586a:	f000 fb73 	bl	8005f54 <memmove>
 800586e:	9b01      	ldr	r3, [sp, #4]
 8005870:	68a1      	ldr	r1, [r4, #8]
 8005872:	6822      	ldr	r2, [r4, #0]
 8005874:	1ac9      	subs	r1, r1, r3
 8005876:	441a      	add	r2, r3
 8005878:	60a1      	str	r1, [r4, #8]
 800587a:	6022      	str	r2, [r4, #0]
 800587c:	461d      	mov	r5, r3
 800587e:	e766      	b.n	800574e <__sfvwrite_r+0x1ae>
 8005880:	230c      	movs	r3, #12
 8005882:	f8ca 3000 	str.w	r3, [sl]
 8005886:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800588a:	e77b      	b.n	8005784 <__sfvwrite_r+0x1e4>
 800588c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005890:	e76b      	b.n	800576a <__sfvwrite_r+0x1ca>
 8005892:	bf00      	nop
 8005894:	7ffffffe 	.word	0x7ffffffe
 8005898:	7ffffc00 	.word	0x7ffffc00

0800589c <_fwalk_reent>:
 800589c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80058a0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80058a4:	d01f      	beq.n	80058e6 <_fwalk_reent+0x4a>
 80058a6:	4688      	mov	r8, r1
 80058a8:	4606      	mov	r6, r0
 80058aa:	f04f 0900 	mov.w	r9, #0
 80058ae:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80058b2:	3d01      	subs	r5, #1
 80058b4:	d411      	bmi.n	80058da <_fwalk_reent+0x3e>
 80058b6:	89a3      	ldrh	r3, [r4, #12]
 80058b8:	2b01      	cmp	r3, #1
 80058ba:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80058be:	4621      	mov	r1, r4
 80058c0:	4630      	mov	r0, r6
 80058c2:	d906      	bls.n	80058d2 <_fwalk_reent+0x36>
 80058c4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80058c8:	3301      	adds	r3, #1
 80058ca:	d002      	beq.n	80058d2 <_fwalk_reent+0x36>
 80058cc:	47c0      	blx	r8
 80058ce:	ea49 0900 	orr.w	r9, r9, r0
 80058d2:	1c6b      	adds	r3, r5, #1
 80058d4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80058d8:	d1ed      	bne.n	80058b6 <_fwalk_reent+0x1a>
 80058da:	683f      	ldr	r7, [r7, #0]
 80058dc:	2f00      	cmp	r7, #0
 80058de:	d1e6      	bne.n	80058ae <_fwalk_reent+0x12>
 80058e0:	4648      	mov	r0, r9
 80058e2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80058e6:	46b9      	mov	r9, r7
 80058e8:	4648      	mov	r0, r9
 80058ea:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80058ee:	bf00      	nop

080058f0 <_localeconv_r>:
 80058f0:	4a04      	ldr	r2, [pc, #16]	; (8005904 <_localeconv_r+0x14>)
 80058f2:	4b05      	ldr	r3, [pc, #20]	; (8005908 <_localeconv_r+0x18>)
 80058f4:	6812      	ldr	r2, [r2, #0]
 80058f6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80058f8:	2800      	cmp	r0, #0
 80058fa:	bf08      	it	eq
 80058fc:	4618      	moveq	r0, r3
 80058fe:	30f0      	adds	r0, #240	; 0xf0
 8005900:	4770      	bx	lr
 8005902:	bf00      	nop
 8005904:	20000018 	.word	0x20000018
 8005908:	2000085c 	.word	0x2000085c

0800590c <__retarget_lock_init_recursive>:
 800590c:	4770      	bx	lr
 800590e:	bf00      	nop

08005910 <__retarget_lock_close_recursive>:
 8005910:	4770      	bx	lr
 8005912:	bf00      	nop

08005914 <__retarget_lock_acquire_recursive>:
 8005914:	4770      	bx	lr
 8005916:	bf00      	nop

08005918 <__retarget_lock_release_recursive>:
 8005918:	4770      	bx	lr
 800591a:	bf00      	nop

0800591c <__swhatbuf_r>:
 800591c:	b570      	push	{r4, r5, r6, lr}
 800591e:	460c      	mov	r4, r1
 8005920:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005924:	2900      	cmp	r1, #0
 8005926:	b096      	sub	sp, #88	; 0x58
 8005928:	4615      	mov	r5, r2
 800592a:	461e      	mov	r6, r3
 800592c:	da0f      	bge.n	800594e <__swhatbuf_r+0x32>
 800592e:	89a2      	ldrh	r2, [r4, #12]
 8005930:	2300      	movs	r3, #0
 8005932:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005936:	6033      	str	r3, [r6, #0]
 8005938:	d104      	bne.n	8005944 <__swhatbuf_r+0x28>
 800593a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800593e:	602b      	str	r3, [r5, #0]
 8005940:	b016      	add	sp, #88	; 0x58
 8005942:	bd70      	pop	{r4, r5, r6, pc}
 8005944:	2240      	movs	r2, #64	; 0x40
 8005946:	4618      	mov	r0, r3
 8005948:	602a      	str	r2, [r5, #0]
 800594a:	b016      	add	sp, #88	; 0x58
 800594c:	bd70      	pop	{r4, r5, r6, pc}
 800594e:	466a      	mov	r2, sp
 8005950:	f001 fad0 	bl	8006ef4 <_fstat_r>
 8005954:	2800      	cmp	r0, #0
 8005956:	dbea      	blt.n	800592e <__swhatbuf_r+0x12>
 8005958:	9b01      	ldr	r3, [sp, #4]
 800595a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800595e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005962:	fab3 f383 	clz	r3, r3
 8005966:	095b      	lsrs	r3, r3, #5
 8005968:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800596c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005970:	6033      	str	r3, [r6, #0]
 8005972:	602a      	str	r2, [r5, #0]
 8005974:	b016      	add	sp, #88	; 0x58
 8005976:	bd70      	pop	{r4, r5, r6, pc}

08005978 <__smakebuf_r>:
 8005978:	898a      	ldrh	r2, [r1, #12]
 800597a:	0792      	lsls	r2, r2, #30
 800597c:	460b      	mov	r3, r1
 800597e:	d506      	bpl.n	800598e <__smakebuf_r+0x16>
 8005980:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005984:	2101      	movs	r1, #1
 8005986:	601a      	str	r2, [r3, #0]
 8005988:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800598c:	4770      	bx	lr
 800598e:	b570      	push	{r4, r5, r6, lr}
 8005990:	b082      	sub	sp, #8
 8005992:	ab01      	add	r3, sp, #4
 8005994:	466a      	mov	r2, sp
 8005996:	460c      	mov	r4, r1
 8005998:	4605      	mov	r5, r0
 800599a:	f7ff ffbf 	bl	800591c <__swhatbuf_r>
 800599e:	9900      	ldr	r1, [sp, #0]
 80059a0:	4606      	mov	r6, r0
 80059a2:	4628      	mov	r0, r5
 80059a4:	f000 f832 	bl	8005a0c <_malloc_r>
 80059a8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059ac:	b1d8      	cbz	r0, 80059e6 <__smakebuf_r+0x6e>
 80059ae:	4916      	ldr	r1, [pc, #88]	; (8005a08 <__smakebuf_r+0x90>)
 80059b0:	63e9      	str	r1, [r5, #60]	; 0x3c
 80059b2:	9a01      	ldr	r2, [sp, #4]
 80059b4:	9900      	ldr	r1, [sp, #0]
 80059b6:	6020      	str	r0, [r4, #0]
 80059b8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80059bc:	81a3      	strh	r3, [r4, #12]
 80059be:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80059c2:	b91a      	cbnz	r2, 80059cc <__smakebuf_r+0x54>
 80059c4:	4333      	orrs	r3, r6
 80059c6:	81a3      	strh	r3, [r4, #12]
 80059c8:	b002      	add	sp, #8
 80059ca:	bd70      	pop	{r4, r5, r6, pc}
 80059cc:	4628      	mov	r0, r5
 80059ce:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80059d2:	f001 faa3 	bl	8006f1c <_isatty_r>
 80059d6:	b1a0      	cbz	r0, 8005a02 <__smakebuf_r+0x8a>
 80059d8:	89a3      	ldrh	r3, [r4, #12]
 80059da:	f023 0303 	bic.w	r3, r3, #3
 80059de:	f043 0301 	orr.w	r3, r3, #1
 80059e2:	b21b      	sxth	r3, r3
 80059e4:	e7ee      	b.n	80059c4 <__smakebuf_r+0x4c>
 80059e6:	059a      	lsls	r2, r3, #22
 80059e8:	d4ee      	bmi.n	80059c8 <__smakebuf_r+0x50>
 80059ea:	f023 0303 	bic.w	r3, r3, #3
 80059ee:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80059f2:	f043 0302 	orr.w	r3, r3, #2
 80059f6:	2101      	movs	r1, #1
 80059f8:	81a3      	strh	r3, [r4, #12]
 80059fa:	6022      	str	r2, [r4, #0]
 80059fc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005a00:	e7e2      	b.n	80059c8 <__smakebuf_r+0x50>
 8005a02:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a06:	e7dd      	b.n	80059c4 <__smakebuf_r+0x4c>
 8005a08:	08005269 	.word	0x08005269

08005a0c <_malloc_r>:
 8005a0c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005a10:	f101 050b 	add.w	r5, r1, #11
 8005a14:	2d16      	cmp	r5, #22
 8005a16:	b083      	sub	sp, #12
 8005a18:	4606      	mov	r6, r0
 8005a1a:	d823      	bhi.n	8005a64 <_malloc_r+0x58>
 8005a1c:	2910      	cmp	r1, #16
 8005a1e:	f200 80b9 	bhi.w	8005b94 <_malloc_r+0x188>
 8005a22:	f000 fafb 	bl	800601c <__malloc_lock>
 8005a26:	2510      	movs	r5, #16
 8005a28:	2318      	movs	r3, #24
 8005a2a:	2002      	movs	r0, #2
 8005a2c:	4fc5      	ldr	r7, [pc, #788]	; (8005d44 <_malloc_r+0x338>)
 8005a2e:	443b      	add	r3, r7
 8005a30:	f1a3 0208 	sub.w	r2, r3, #8
 8005a34:	685c      	ldr	r4, [r3, #4]
 8005a36:	4294      	cmp	r4, r2
 8005a38:	f000 8166 	beq.w	8005d08 <_malloc_r+0x2fc>
 8005a3c:	6863      	ldr	r3, [r4, #4]
 8005a3e:	f023 0303 	bic.w	r3, r3, #3
 8005a42:	4423      	add	r3, r4
 8005a44:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005a48:	685a      	ldr	r2, [r3, #4]
 8005a4a:	60e9      	str	r1, [r5, #12]
 8005a4c:	f042 0201 	orr.w	r2, r2, #1
 8005a50:	608d      	str	r5, [r1, #8]
 8005a52:	4630      	mov	r0, r6
 8005a54:	605a      	str	r2, [r3, #4]
 8005a56:	f000 fae7 	bl	8006028 <__malloc_unlock>
 8005a5a:	3408      	adds	r4, #8
 8005a5c:	4620      	mov	r0, r4
 8005a5e:	b003      	add	sp, #12
 8005a60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a64:	f035 0507 	bics.w	r5, r5, #7
 8005a68:	f100 8094 	bmi.w	8005b94 <_malloc_r+0x188>
 8005a6c:	42a9      	cmp	r1, r5
 8005a6e:	f200 8091 	bhi.w	8005b94 <_malloc_r+0x188>
 8005a72:	f000 fad3 	bl	800601c <__malloc_lock>
 8005a76:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005a7a:	f0c0 8183 	bcc.w	8005d84 <_malloc_r+0x378>
 8005a7e:	0a6b      	lsrs	r3, r5, #9
 8005a80:	f000 808f 	beq.w	8005ba2 <_malloc_r+0x196>
 8005a84:	2b04      	cmp	r3, #4
 8005a86:	f200 8146 	bhi.w	8005d16 <_malloc_r+0x30a>
 8005a8a:	09ab      	lsrs	r3, r5, #6
 8005a8c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005a90:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005a94:	00c3      	lsls	r3, r0, #3
 8005a96:	4fab      	ldr	r7, [pc, #684]	; (8005d44 <_malloc_r+0x338>)
 8005a98:	443b      	add	r3, r7
 8005a9a:	f1a3 0108 	sub.w	r1, r3, #8
 8005a9e:	685c      	ldr	r4, [r3, #4]
 8005aa0:	42a1      	cmp	r1, r4
 8005aa2:	d106      	bne.n	8005ab2 <_malloc_r+0xa6>
 8005aa4:	e00c      	b.n	8005ac0 <_malloc_r+0xb4>
 8005aa6:	2a00      	cmp	r2, #0
 8005aa8:	f280 811d 	bge.w	8005ce6 <_malloc_r+0x2da>
 8005aac:	68e4      	ldr	r4, [r4, #12]
 8005aae:	42a1      	cmp	r1, r4
 8005ab0:	d006      	beq.n	8005ac0 <_malloc_r+0xb4>
 8005ab2:	6863      	ldr	r3, [r4, #4]
 8005ab4:	f023 0303 	bic.w	r3, r3, #3
 8005ab8:	1b5a      	subs	r2, r3, r5
 8005aba:	2a0f      	cmp	r2, #15
 8005abc:	ddf3      	ble.n	8005aa6 <_malloc_r+0x9a>
 8005abe:	4660      	mov	r0, ip
 8005ac0:	693c      	ldr	r4, [r7, #16]
 8005ac2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005d58 <_malloc_r+0x34c>
 8005ac6:	4564      	cmp	r4, ip
 8005ac8:	d071      	beq.n	8005bae <_malloc_r+0x1a2>
 8005aca:	6863      	ldr	r3, [r4, #4]
 8005acc:	f023 0303 	bic.w	r3, r3, #3
 8005ad0:	1b5a      	subs	r2, r3, r5
 8005ad2:	2a0f      	cmp	r2, #15
 8005ad4:	f300 8144 	bgt.w	8005d60 <_malloc_r+0x354>
 8005ad8:	2a00      	cmp	r2, #0
 8005ada:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005ade:	f280 8126 	bge.w	8005d2e <_malloc_r+0x322>
 8005ae2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005ae6:	f080 8169 	bcs.w	8005dbc <_malloc_r+0x3b0>
 8005aea:	08db      	lsrs	r3, r3, #3
 8005aec:	1c59      	adds	r1, r3, #1
 8005aee:	687a      	ldr	r2, [r7, #4]
 8005af0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005af4:	f8c4 8008 	str.w	r8, [r4, #8]
 8005af8:	f04f 0e01 	mov.w	lr, #1
 8005afc:	109b      	asrs	r3, r3, #2
 8005afe:	fa0e f303 	lsl.w	r3, lr, r3
 8005b02:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005b06:	4313      	orrs	r3, r2
 8005b08:	f1ae 0208 	sub.w	r2, lr, #8
 8005b0c:	60e2      	str	r2, [r4, #12]
 8005b0e:	607b      	str	r3, [r7, #4]
 8005b10:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005b14:	f8c8 400c 	str.w	r4, [r8, #12]
 8005b18:	1082      	asrs	r2, r0, #2
 8005b1a:	2401      	movs	r4, #1
 8005b1c:	4094      	lsls	r4, r2
 8005b1e:	429c      	cmp	r4, r3
 8005b20:	d84b      	bhi.n	8005bba <_malloc_r+0x1ae>
 8005b22:	421c      	tst	r4, r3
 8005b24:	d106      	bne.n	8005b34 <_malloc_r+0x128>
 8005b26:	f020 0003 	bic.w	r0, r0, #3
 8005b2a:	0064      	lsls	r4, r4, #1
 8005b2c:	421c      	tst	r4, r3
 8005b2e:	f100 0004 	add.w	r0, r0, #4
 8005b32:	d0fa      	beq.n	8005b2a <_malloc_r+0x11e>
 8005b34:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005b38:	46ce      	mov	lr, r9
 8005b3a:	4680      	mov	r8, r0
 8005b3c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005b40:	459e      	cmp	lr, r3
 8005b42:	d107      	bne.n	8005b54 <_malloc_r+0x148>
 8005b44:	e122      	b.n	8005d8c <_malloc_r+0x380>
 8005b46:	2a00      	cmp	r2, #0
 8005b48:	f280 8129 	bge.w	8005d9e <_malloc_r+0x392>
 8005b4c:	68db      	ldr	r3, [r3, #12]
 8005b4e:	459e      	cmp	lr, r3
 8005b50:	f000 811c 	beq.w	8005d8c <_malloc_r+0x380>
 8005b54:	6859      	ldr	r1, [r3, #4]
 8005b56:	f021 0103 	bic.w	r1, r1, #3
 8005b5a:	1b4a      	subs	r2, r1, r5
 8005b5c:	2a0f      	cmp	r2, #15
 8005b5e:	ddf2      	ble.n	8005b46 <_malloc_r+0x13a>
 8005b60:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005b64:	195c      	adds	r4, r3, r5
 8005b66:	f045 0501 	orr.w	r5, r5, #1
 8005b6a:	605d      	str	r5, [r3, #4]
 8005b6c:	f042 0501 	orr.w	r5, r2, #1
 8005b70:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005b74:	4630      	mov	r0, r6
 8005b76:	f8ce 8008 	str.w	r8, [lr, #8]
 8005b7a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005b7e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005b82:	6065      	str	r5, [r4, #4]
 8005b84:	505a      	str	r2, [r3, r1]
 8005b86:	9301      	str	r3, [sp, #4]
 8005b88:	f000 fa4e 	bl	8006028 <__malloc_unlock>
 8005b8c:	9b01      	ldr	r3, [sp, #4]
 8005b8e:	f103 0408 	add.w	r4, r3, #8
 8005b92:	e763      	b.n	8005a5c <_malloc_r+0x50>
 8005b94:	2400      	movs	r4, #0
 8005b96:	230c      	movs	r3, #12
 8005b98:	4620      	mov	r0, r4
 8005b9a:	6033      	str	r3, [r6, #0]
 8005b9c:	b003      	add	sp, #12
 8005b9e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ba2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005ba6:	2040      	movs	r0, #64	; 0x40
 8005ba8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005bac:	e773      	b.n	8005a96 <_malloc_r+0x8a>
 8005bae:	687b      	ldr	r3, [r7, #4]
 8005bb0:	1082      	asrs	r2, r0, #2
 8005bb2:	2401      	movs	r4, #1
 8005bb4:	4094      	lsls	r4, r2
 8005bb6:	429c      	cmp	r4, r3
 8005bb8:	d9b3      	bls.n	8005b22 <_malloc_r+0x116>
 8005bba:	68bc      	ldr	r4, [r7, #8]
 8005bbc:	6863      	ldr	r3, [r4, #4]
 8005bbe:	f023 0903 	bic.w	r9, r3, #3
 8005bc2:	45a9      	cmp	r9, r5
 8005bc4:	d303      	bcc.n	8005bce <_malloc_r+0x1c2>
 8005bc6:	eba9 0305 	sub.w	r3, r9, r5
 8005bca:	2b0f      	cmp	r3, #15
 8005bcc:	dc7b      	bgt.n	8005cc6 <_malloc_r+0x2ba>
 8005bce:	4b5e      	ldr	r3, [pc, #376]	; (8005d48 <_malloc_r+0x33c>)
 8005bd0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005d5c <_malloc_r+0x350>
 8005bd4:	681a      	ldr	r2, [r3, #0]
 8005bd6:	f8da 3000 	ldr.w	r3, [sl]
 8005bda:	3301      	adds	r3, #1
 8005bdc:	eb05 0802 	add.w	r8, r5, r2
 8005be0:	f000 8148 	beq.w	8005e74 <_malloc_r+0x468>
 8005be4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005be8:	f108 080f 	add.w	r8, r8, #15
 8005bec:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005bf0:	f028 080f 	bic.w	r8, r8, #15
 8005bf4:	4641      	mov	r1, r8
 8005bf6:	4630      	mov	r0, r6
 8005bf8:	f000 ff08 	bl	8006a0c <_sbrk_r>
 8005bfc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005c00:	4683      	mov	fp, r0
 8005c02:	f000 8104 	beq.w	8005e0e <_malloc_r+0x402>
 8005c06:	eb04 0009 	add.w	r0, r4, r9
 8005c0a:	4558      	cmp	r0, fp
 8005c0c:	f200 80fd 	bhi.w	8005e0a <_malloc_r+0x3fe>
 8005c10:	4a4e      	ldr	r2, [pc, #312]	; (8005d4c <_malloc_r+0x340>)
 8005c12:	6813      	ldr	r3, [r2, #0]
 8005c14:	4443      	add	r3, r8
 8005c16:	6013      	str	r3, [r2, #0]
 8005c18:	f000 814d 	beq.w	8005eb6 <_malloc_r+0x4aa>
 8005c1c:	f8da 1000 	ldr.w	r1, [sl]
 8005c20:	3101      	adds	r1, #1
 8005c22:	bf1b      	ittet	ne
 8005c24:	ebab 0000 	subne.w	r0, fp, r0
 8005c28:	181b      	addne	r3, r3, r0
 8005c2a:	f8ca b000 	streq.w	fp, [sl]
 8005c2e:	6013      	strne	r3, [r2, #0]
 8005c30:	f01b 0307 	ands.w	r3, fp, #7
 8005c34:	f000 8134 	beq.w	8005ea0 <_malloc_r+0x494>
 8005c38:	f1c3 0108 	rsb	r1, r3, #8
 8005c3c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005c40:	448b      	add	fp, r1
 8005c42:	3308      	adds	r3, #8
 8005c44:	44d8      	add	r8, fp
 8005c46:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005c4a:	eba3 0808 	sub.w	r8, r3, r8
 8005c4e:	4641      	mov	r1, r8
 8005c50:	4630      	mov	r0, r6
 8005c52:	9201      	str	r2, [sp, #4]
 8005c54:	f000 feda 	bl	8006a0c <_sbrk_r>
 8005c58:	1c43      	adds	r3, r0, #1
 8005c5a:	9a01      	ldr	r2, [sp, #4]
 8005c5c:	f000 8146 	beq.w	8005eec <_malloc_r+0x4e0>
 8005c60:	eba0 010b 	sub.w	r1, r0, fp
 8005c64:	4441      	add	r1, r8
 8005c66:	f041 0101 	orr.w	r1, r1, #1
 8005c6a:	6813      	ldr	r3, [r2, #0]
 8005c6c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005c70:	4443      	add	r3, r8
 8005c72:	42bc      	cmp	r4, r7
 8005c74:	f8cb 1004 	str.w	r1, [fp, #4]
 8005c78:	6013      	str	r3, [r2, #0]
 8005c7a:	d015      	beq.n	8005ca8 <_malloc_r+0x29c>
 8005c7c:	f1b9 0f0f 	cmp.w	r9, #15
 8005c80:	f240 8130 	bls.w	8005ee4 <_malloc_r+0x4d8>
 8005c84:	6860      	ldr	r0, [r4, #4]
 8005c86:	f1a9 010c 	sub.w	r1, r9, #12
 8005c8a:	f021 0107 	bic.w	r1, r1, #7
 8005c8e:	f000 0001 	and.w	r0, r0, #1
 8005c92:	eb04 0c01 	add.w	ip, r4, r1
 8005c96:	4308      	orrs	r0, r1
 8005c98:	f04f 0e05 	mov.w	lr, #5
 8005c9c:	290f      	cmp	r1, #15
 8005c9e:	6060      	str	r0, [r4, #4]
 8005ca0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005ca4:	f200 813a 	bhi.w	8005f1c <_malloc_r+0x510>
 8005ca8:	4a29      	ldr	r2, [pc, #164]	; (8005d50 <_malloc_r+0x344>)
 8005caa:	482a      	ldr	r0, [pc, #168]	; (8005d54 <_malloc_r+0x348>)
 8005cac:	6811      	ldr	r1, [r2, #0]
 8005cae:	68bc      	ldr	r4, [r7, #8]
 8005cb0:	428b      	cmp	r3, r1
 8005cb2:	6801      	ldr	r1, [r0, #0]
 8005cb4:	bf88      	it	hi
 8005cb6:	6013      	strhi	r3, [r2, #0]
 8005cb8:	6862      	ldr	r2, [r4, #4]
 8005cba:	428b      	cmp	r3, r1
 8005cbc:	f022 0203 	bic.w	r2, r2, #3
 8005cc0:	bf88      	it	hi
 8005cc2:	6003      	strhi	r3, [r0, #0]
 8005cc4:	e0a7      	b.n	8005e16 <_malloc_r+0x40a>
 8005cc6:	1962      	adds	r2, r4, r5
 8005cc8:	f043 0301 	orr.w	r3, r3, #1
 8005ccc:	f045 0501 	orr.w	r5, r5, #1
 8005cd0:	6065      	str	r5, [r4, #4]
 8005cd2:	4630      	mov	r0, r6
 8005cd4:	60ba      	str	r2, [r7, #8]
 8005cd6:	6053      	str	r3, [r2, #4]
 8005cd8:	f000 f9a6 	bl	8006028 <__malloc_unlock>
 8005cdc:	3408      	adds	r4, #8
 8005cde:	4620      	mov	r0, r4
 8005ce0:	b003      	add	sp, #12
 8005ce2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ce6:	4423      	add	r3, r4
 8005ce8:	68e1      	ldr	r1, [r4, #12]
 8005cea:	685a      	ldr	r2, [r3, #4]
 8005cec:	68a5      	ldr	r5, [r4, #8]
 8005cee:	f042 0201 	orr.w	r2, r2, #1
 8005cf2:	60e9      	str	r1, [r5, #12]
 8005cf4:	4630      	mov	r0, r6
 8005cf6:	608d      	str	r5, [r1, #8]
 8005cf8:	605a      	str	r2, [r3, #4]
 8005cfa:	f000 f995 	bl	8006028 <__malloc_unlock>
 8005cfe:	3408      	adds	r4, #8
 8005d00:	4620      	mov	r0, r4
 8005d02:	b003      	add	sp, #12
 8005d04:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d08:	68dc      	ldr	r4, [r3, #12]
 8005d0a:	42a3      	cmp	r3, r4
 8005d0c:	bf08      	it	eq
 8005d0e:	3002      	addeq	r0, #2
 8005d10:	f43f aed6 	beq.w	8005ac0 <_malloc_r+0xb4>
 8005d14:	e692      	b.n	8005a3c <_malloc_r+0x30>
 8005d16:	2b14      	cmp	r3, #20
 8005d18:	d971      	bls.n	8005dfe <_malloc_r+0x3f2>
 8005d1a:	2b54      	cmp	r3, #84	; 0x54
 8005d1c:	f200 80ad 	bhi.w	8005e7a <_malloc_r+0x46e>
 8005d20:	0b2b      	lsrs	r3, r5, #12
 8005d22:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005d26:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005d2a:	00c3      	lsls	r3, r0, #3
 8005d2c:	e6b3      	b.n	8005a96 <_malloc_r+0x8a>
 8005d2e:	4423      	add	r3, r4
 8005d30:	4630      	mov	r0, r6
 8005d32:	685a      	ldr	r2, [r3, #4]
 8005d34:	f042 0201 	orr.w	r2, r2, #1
 8005d38:	605a      	str	r2, [r3, #4]
 8005d3a:	3408      	adds	r4, #8
 8005d3c:	f000 f974 	bl	8006028 <__malloc_unlock>
 8005d40:	e68c      	b.n	8005a5c <_malloc_r+0x50>
 8005d42:	bf00      	nop
 8005d44:	2000044c 	.word	0x2000044c
 8005d48:	20000a9c 	.word	0x20000a9c
 8005d4c:	20000a6c 	.word	0x20000a6c
 8005d50:	20000a94 	.word	0x20000a94
 8005d54:	20000a98 	.word	0x20000a98
 8005d58:	20000454 	.word	0x20000454
 8005d5c:	20000854 	.word	0x20000854
 8005d60:	1961      	adds	r1, r4, r5
 8005d62:	f045 0e01 	orr.w	lr, r5, #1
 8005d66:	f042 0501 	orr.w	r5, r2, #1
 8005d6a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005d6e:	4630      	mov	r0, r6
 8005d70:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005d74:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005d78:	604d      	str	r5, [r1, #4]
 8005d7a:	50e2      	str	r2, [r4, r3]
 8005d7c:	f000 f954 	bl	8006028 <__malloc_unlock>
 8005d80:	3408      	adds	r4, #8
 8005d82:	e66b      	b.n	8005a5c <_malloc_r+0x50>
 8005d84:	08e8      	lsrs	r0, r5, #3
 8005d86:	f105 0308 	add.w	r3, r5, #8
 8005d8a:	e64f      	b.n	8005a2c <_malloc_r+0x20>
 8005d8c:	f108 0801 	add.w	r8, r8, #1
 8005d90:	f018 0f03 	tst.w	r8, #3
 8005d94:	f10e 0e08 	add.w	lr, lr, #8
 8005d98:	f47f aed0 	bne.w	8005b3c <_malloc_r+0x130>
 8005d9c:	e052      	b.n	8005e44 <_malloc_r+0x438>
 8005d9e:	4419      	add	r1, r3
 8005da0:	461c      	mov	r4, r3
 8005da2:	684a      	ldr	r2, [r1, #4]
 8005da4:	68db      	ldr	r3, [r3, #12]
 8005da6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005daa:	f042 0201 	orr.w	r2, r2, #1
 8005dae:	604a      	str	r2, [r1, #4]
 8005db0:	4630      	mov	r0, r6
 8005db2:	60eb      	str	r3, [r5, #12]
 8005db4:	609d      	str	r5, [r3, #8]
 8005db6:	f000 f937 	bl	8006028 <__malloc_unlock>
 8005dba:	e64f      	b.n	8005a5c <_malloc_r+0x50>
 8005dbc:	0a5a      	lsrs	r2, r3, #9
 8005dbe:	2a04      	cmp	r2, #4
 8005dc0:	d935      	bls.n	8005e2e <_malloc_r+0x422>
 8005dc2:	2a14      	cmp	r2, #20
 8005dc4:	d86f      	bhi.n	8005ea6 <_malloc_r+0x49a>
 8005dc6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005dca:	00c9      	lsls	r1, r1, #3
 8005dcc:	325b      	adds	r2, #91	; 0x5b
 8005dce:	eb07 0e01 	add.w	lr, r7, r1
 8005dd2:	5879      	ldr	r1, [r7, r1]
 8005dd4:	f1ae 0e08 	sub.w	lr, lr, #8
 8005dd8:	458e      	cmp	lr, r1
 8005dda:	d058      	beq.n	8005e8e <_malloc_r+0x482>
 8005ddc:	684a      	ldr	r2, [r1, #4]
 8005dde:	f022 0203 	bic.w	r2, r2, #3
 8005de2:	429a      	cmp	r2, r3
 8005de4:	d902      	bls.n	8005dec <_malloc_r+0x3e0>
 8005de6:	6889      	ldr	r1, [r1, #8]
 8005de8:	458e      	cmp	lr, r1
 8005dea:	d1f7      	bne.n	8005ddc <_malloc_r+0x3d0>
 8005dec:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005df0:	687b      	ldr	r3, [r7, #4]
 8005df2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005df6:	f8ce 4008 	str.w	r4, [lr, #8]
 8005dfa:	60cc      	str	r4, [r1, #12]
 8005dfc:	e68c      	b.n	8005b18 <_malloc_r+0x10c>
 8005dfe:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005e02:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005e06:	00c3      	lsls	r3, r0, #3
 8005e08:	e645      	b.n	8005a96 <_malloc_r+0x8a>
 8005e0a:	42bc      	cmp	r4, r7
 8005e0c:	d072      	beq.n	8005ef4 <_malloc_r+0x4e8>
 8005e0e:	68bc      	ldr	r4, [r7, #8]
 8005e10:	6862      	ldr	r2, [r4, #4]
 8005e12:	f022 0203 	bic.w	r2, r2, #3
 8005e16:	4295      	cmp	r5, r2
 8005e18:	eba2 0305 	sub.w	r3, r2, r5
 8005e1c:	d802      	bhi.n	8005e24 <_malloc_r+0x418>
 8005e1e:	2b0f      	cmp	r3, #15
 8005e20:	f73f af51 	bgt.w	8005cc6 <_malloc_r+0x2ba>
 8005e24:	4630      	mov	r0, r6
 8005e26:	f000 f8ff 	bl	8006028 <__malloc_unlock>
 8005e2a:	2400      	movs	r4, #0
 8005e2c:	e616      	b.n	8005a5c <_malloc_r+0x50>
 8005e2e:	099a      	lsrs	r2, r3, #6
 8005e30:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005e34:	00c9      	lsls	r1, r1, #3
 8005e36:	3238      	adds	r2, #56	; 0x38
 8005e38:	e7c9      	b.n	8005dce <_malloc_r+0x3c2>
 8005e3a:	f8d9 9000 	ldr.w	r9, [r9]
 8005e3e:	4599      	cmp	r9, r3
 8005e40:	f040 8083 	bne.w	8005f4a <_malloc_r+0x53e>
 8005e44:	f010 0f03 	tst.w	r0, #3
 8005e48:	f1a9 0308 	sub.w	r3, r9, #8
 8005e4c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005e50:	d1f3      	bne.n	8005e3a <_malloc_r+0x42e>
 8005e52:	687b      	ldr	r3, [r7, #4]
 8005e54:	ea23 0304 	bic.w	r3, r3, r4
 8005e58:	607b      	str	r3, [r7, #4]
 8005e5a:	0064      	lsls	r4, r4, #1
 8005e5c:	429c      	cmp	r4, r3
 8005e5e:	f63f aeac 	bhi.w	8005bba <_malloc_r+0x1ae>
 8005e62:	b91c      	cbnz	r4, 8005e6c <_malloc_r+0x460>
 8005e64:	e6a9      	b.n	8005bba <_malloc_r+0x1ae>
 8005e66:	0064      	lsls	r4, r4, #1
 8005e68:	f108 0804 	add.w	r8, r8, #4
 8005e6c:	421c      	tst	r4, r3
 8005e6e:	d0fa      	beq.n	8005e66 <_malloc_r+0x45a>
 8005e70:	4640      	mov	r0, r8
 8005e72:	e65f      	b.n	8005b34 <_malloc_r+0x128>
 8005e74:	f108 0810 	add.w	r8, r8, #16
 8005e78:	e6bc      	b.n	8005bf4 <_malloc_r+0x1e8>
 8005e7a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005e7e:	d826      	bhi.n	8005ece <_malloc_r+0x4c2>
 8005e80:	0beb      	lsrs	r3, r5, #15
 8005e82:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005e86:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005e8a:	00c3      	lsls	r3, r0, #3
 8005e8c:	e603      	b.n	8005a96 <_malloc_r+0x8a>
 8005e8e:	687b      	ldr	r3, [r7, #4]
 8005e90:	1092      	asrs	r2, r2, #2
 8005e92:	f04f 0801 	mov.w	r8, #1
 8005e96:	fa08 f202 	lsl.w	r2, r8, r2
 8005e9a:	4313      	orrs	r3, r2
 8005e9c:	607b      	str	r3, [r7, #4]
 8005e9e:	e7a8      	b.n	8005df2 <_malloc_r+0x3e6>
 8005ea0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005ea4:	e6ce      	b.n	8005c44 <_malloc_r+0x238>
 8005ea6:	2a54      	cmp	r2, #84	; 0x54
 8005ea8:	d829      	bhi.n	8005efe <_malloc_r+0x4f2>
 8005eaa:	0b1a      	lsrs	r2, r3, #12
 8005eac:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005eb0:	00c9      	lsls	r1, r1, #3
 8005eb2:	326e      	adds	r2, #110	; 0x6e
 8005eb4:	e78b      	b.n	8005dce <_malloc_r+0x3c2>
 8005eb6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005eba:	2900      	cmp	r1, #0
 8005ebc:	f47f aeae 	bne.w	8005c1c <_malloc_r+0x210>
 8005ec0:	eb09 0208 	add.w	r2, r9, r8
 8005ec4:	68b9      	ldr	r1, [r7, #8]
 8005ec6:	f042 0201 	orr.w	r2, r2, #1
 8005eca:	604a      	str	r2, [r1, #4]
 8005ecc:	e6ec      	b.n	8005ca8 <_malloc_r+0x29c>
 8005ece:	f240 5254 	movw	r2, #1364	; 0x554
 8005ed2:	4293      	cmp	r3, r2
 8005ed4:	d81c      	bhi.n	8005f10 <_malloc_r+0x504>
 8005ed6:	0cab      	lsrs	r3, r5, #18
 8005ed8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005edc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005ee0:	00c3      	lsls	r3, r0, #3
 8005ee2:	e5d8      	b.n	8005a96 <_malloc_r+0x8a>
 8005ee4:	2301      	movs	r3, #1
 8005ee6:	f8cb 3004 	str.w	r3, [fp, #4]
 8005eea:	e79b      	b.n	8005e24 <_malloc_r+0x418>
 8005eec:	2101      	movs	r1, #1
 8005eee:	f04f 0800 	mov.w	r8, #0
 8005ef2:	e6ba      	b.n	8005c6a <_malloc_r+0x25e>
 8005ef4:	4a16      	ldr	r2, [pc, #88]	; (8005f50 <_malloc_r+0x544>)
 8005ef6:	6813      	ldr	r3, [r2, #0]
 8005ef8:	4443      	add	r3, r8
 8005efa:	6013      	str	r3, [r2, #0]
 8005efc:	e68e      	b.n	8005c1c <_malloc_r+0x210>
 8005efe:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005f02:	d814      	bhi.n	8005f2e <_malloc_r+0x522>
 8005f04:	0bda      	lsrs	r2, r3, #15
 8005f06:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005f0a:	00c9      	lsls	r1, r1, #3
 8005f0c:	3277      	adds	r2, #119	; 0x77
 8005f0e:	e75e      	b.n	8005dce <_malloc_r+0x3c2>
 8005f10:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005f14:	207f      	movs	r0, #127	; 0x7f
 8005f16:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005f1a:	e5bc      	b.n	8005a96 <_malloc_r+0x8a>
 8005f1c:	f104 0108 	add.w	r1, r4, #8
 8005f20:	4630      	mov	r0, r6
 8005f22:	9201      	str	r2, [sp, #4]
 8005f24:	f7ff fa48 	bl	80053b8 <_free_r>
 8005f28:	9a01      	ldr	r2, [sp, #4]
 8005f2a:	6813      	ldr	r3, [r2, #0]
 8005f2c:	e6bc      	b.n	8005ca8 <_malloc_r+0x29c>
 8005f2e:	f240 5154 	movw	r1, #1364	; 0x554
 8005f32:	428a      	cmp	r2, r1
 8005f34:	d805      	bhi.n	8005f42 <_malloc_r+0x536>
 8005f36:	0c9a      	lsrs	r2, r3, #18
 8005f38:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005f3c:	00c9      	lsls	r1, r1, #3
 8005f3e:	327c      	adds	r2, #124	; 0x7c
 8005f40:	e745      	b.n	8005dce <_malloc_r+0x3c2>
 8005f42:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005f46:	227e      	movs	r2, #126	; 0x7e
 8005f48:	e741      	b.n	8005dce <_malloc_r+0x3c2>
 8005f4a:	687b      	ldr	r3, [r7, #4]
 8005f4c:	e785      	b.n	8005e5a <_malloc_r+0x44e>
 8005f4e:	bf00      	nop
 8005f50:	20000a6c 	.word	0x20000a6c

08005f54 <memmove>:
 8005f54:	4288      	cmp	r0, r1
 8005f56:	b4f0      	push	{r4, r5, r6, r7}
 8005f58:	d90d      	bls.n	8005f76 <memmove+0x22>
 8005f5a:	188b      	adds	r3, r1, r2
 8005f5c:	4283      	cmp	r3, r0
 8005f5e:	d90a      	bls.n	8005f76 <memmove+0x22>
 8005f60:	1884      	adds	r4, r0, r2
 8005f62:	b132      	cbz	r2, 8005f72 <memmove+0x1e>
 8005f64:	4622      	mov	r2, r4
 8005f66:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005f6a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005f6e:	4299      	cmp	r1, r3
 8005f70:	d1f9      	bne.n	8005f66 <memmove+0x12>
 8005f72:	bcf0      	pop	{r4, r5, r6, r7}
 8005f74:	4770      	bx	lr
 8005f76:	2a0f      	cmp	r2, #15
 8005f78:	d949      	bls.n	800600e <memmove+0xba>
 8005f7a:	ea40 0301 	orr.w	r3, r0, r1
 8005f7e:	079b      	lsls	r3, r3, #30
 8005f80:	d147      	bne.n	8006012 <memmove+0xbe>
 8005f82:	f1a2 0310 	sub.w	r3, r2, #16
 8005f86:	091b      	lsrs	r3, r3, #4
 8005f88:	f101 0720 	add.w	r7, r1, #32
 8005f8c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005f90:	f101 0410 	add.w	r4, r1, #16
 8005f94:	f100 0510 	add.w	r5, r0, #16
 8005f98:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005f9c:	f845 6c10 	str.w	r6, [r5, #-16]
 8005fa0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005fa4:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005fa8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005fac:	f845 6c08 	str.w	r6, [r5, #-8]
 8005fb0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005fb4:	f845 6c04 	str.w	r6, [r5, #-4]
 8005fb8:	3410      	adds	r4, #16
 8005fba:	42bc      	cmp	r4, r7
 8005fbc:	f105 0510 	add.w	r5, r5, #16
 8005fc0:	d1ea      	bne.n	8005f98 <memmove+0x44>
 8005fc2:	3301      	adds	r3, #1
 8005fc4:	f002 050f 	and.w	r5, r2, #15
 8005fc8:	011b      	lsls	r3, r3, #4
 8005fca:	2d03      	cmp	r5, #3
 8005fcc:	4419      	add	r1, r3
 8005fce:	4403      	add	r3, r0
 8005fd0:	d921      	bls.n	8006016 <memmove+0xc2>
 8005fd2:	1f1f      	subs	r7, r3, #4
 8005fd4:	460e      	mov	r6, r1
 8005fd6:	462c      	mov	r4, r5
 8005fd8:	3c04      	subs	r4, #4
 8005fda:	f856 cb04 	ldr.w	ip, [r6], #4
 8005fde:	f847 cf04 	str.w	ip, [r7, #4]!
 8005fe2:	2c03      	cmp	r4, #3
 8005fe4:	d8f8      	bhi.n	8005fd8 <memmove+0x84>
 8005fe6:	1f2c      	subs	r4, r5, #4
 8005fe8:	f024 0403 	bic.w	r4, r4, #3
 8005fec:	3404      	adds	r4, #4
 8005fee:	4423      	add	r3, r4
 8005ff0:	4421      	add	r1, r4
 8005ff2:	f002 0203 	and.w	r2, r2, #3
 8005ff6:	2a00      	cmp	r2, #0
 8005ff8:	d0bb      	beq.n	8005f72 <memmove+0x1e>
 8005ffa:	3b01      	subs	r3, #1
 8005ffc:	440a      	add	r2, r1
 8005ffe:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006002:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006006:	4291      	cmp	r1, r2
 8006008:	d1f9      	bne.n	8005ffe <memmove+0xaa>
 800600a:	bcf0      	pop	{r4, r5, r6, r7}
 800600c:	4770      	bx	lr
 800600e:	4603      	mov	r3, r0
 8006010:	e7f1      	b.n	8005ff6 <memmove+0xa2>
 8006012:	4603      	mov	r3, r0
 8006014:	e7f1      	b.n	8005ffa <memmove+0xa6>
 8006016:	462a      	mov	r2, r5
 8006018:	e7ed      	b.n	8005ff6 <memmove+0xa2>
 800601a:	bf00      	nop

0800601c <__malloc_lock>:
 800601c:	4801      	ldr	r0, [pc, #4]	; (8006024 <__malloc_lock+0x8>)
 800601e:	f7ff bc79 	b.w	8005914 <__retarget_lock_acquire_recursive>
 8006022:	bf00      	nop
 8006024:	20000c94 	.word	0x20000c94

08006028 <__malloc_unlock>:
 8006028:	4801      	ldr	r0, [pc, #4]	; (8006030 <__malloc_unlock+0x8>)
 800602a:	f7ff bc75 	b.w	8005918 <__retarget_lock_release_recursive>
 800602e:	bf00      	nop
 8006030:	20000c94 	.word	0x20000c94

08006034 <_Balloc>:
 8006034:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006036:	b570      	push	{r4, r5, r6, lr}
 8006038:	4605      	mov	r5, r0
 800603a:	460c      	mov	r4, r1
 800603c:	b14b      	cbz	r3, 8006052 <_Balloc+0x1e>
 800603e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006042:	b180      	cbz	r0, 8006066 <_Balloc+0x32>
 8006044:	6802      	ldr	r2, [r0, #0]
 8006046:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800604a:	2300      	movs	r3, #0
 800604c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006050:	bd70      	pop	{r4, r5, r6, pc}
 8006052:	2221      	movs	r2, #33	; 0x21
 8006054:	2104      	movs	r1, #4
 8006056:	f000 fe1d 	bl	8006c94 <_calloc_r>
 800605a:	4603      	mov	r3, r0
 800605c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800605e:	2800      	cmp	r0, #0
 8006060:	d1ed      	bne.n	800603e <_Balloc+0xa>
 8006062:	2000      	movs	r0, #0
 8006064:	bd70      	pop	{r4, r5, r6, pc}
 8006066:	2101      	movs	r1, #1
 8006068:	fa01 f604 	lsl.w	r6, r1, r4
 800606c:	1d72      	adds	r2, r6, #5
 800606e:	4628      	mov	r0, r5
 8006070:	0092      	lsls	r2, r2, #2
 8006072:	f000 fe0f 	bl	8006c94 <_calloc_r>
 8006076:	2800      	cmp	r0, #0
 8006078:	d0f3      	beq.n	8006062 <_Balloc+0x2e>
 800607a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800607e:	e7e4      	b.n	800604a <_Balloc+0x16>

08006080 <_Bfree>:
 8006080:	b131      	cbz	r1, 8006090 <_Bfree+0x10>
 8006082:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006084:	684a      	ldr	r2, [r1, #4]
 8006086:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800608a:	6008      	str	r0, [r1, #0]
 800608c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006090:	4770      	bx	lr
 8006092:	bf00      	nop

08006094 <__multadd>:
 8006094:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006096:	690c      	ldr	r4, [r1, #16]
 8006098:	b083      	sub	sp, #12
 800609a:	460d      	mov	r5, r1
 800609c:	4606      	mov	r6, r0
 800609e:	f101 0c14 	add.w	ip, r1, #20
 80060a2:	2700      	movs	r7, #0
 80060a4:	f8dc 0000 	ldr.w	r0, [ip]
 80060a8:	b281      	uxth	r1, r0
 80060aa:	fb02 3301 	mla	r3, r2, r1, r3
 80060ae:	0c01      	lsrs	r1, r0, #16
 80060b0:	0c18      	lsrs	r0, r3, #16
 80060b2:	fb02 0101 	mla	r1, r2, r1, r0
 80060b6:	b29b      	uxth	r3, r3
 80060b8:	3701      	adds	r7, #1
 80060ba:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80060be:	42bc      	cmp	r4, r7
 80060c0:	f84c 3b04 	str.w	r3, [ip], #4
 80060c4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80060c8:	dcec      	bgt.n	80060a4 <__multadd+0x10>
 80060ca:	b13b      	cbz	r3, 80060dc <__multadd+0x48>
 80060cc:	68aa      	ldr	r2, [r5, #8]
 80060ce:	42a2      	cmp	r2, r4
 80060d0:	dd07      	ble.n	80060e2 <__multadd+0x4e>
 80060d2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80060d6:	3401      	adds	r4, #1
 80060d8:	6153      	str	r3, [r2, #20]
 80060da:	612c      	str	r4, [r5, #16]
 80060dc:	4628      	mov	r0, r5
 80060de:	b003      	add	sp, #12
 80060e0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80060e2:	6869      	ldr	r1, [r5, #4]
 80060e4:	9301      	str	r3, [sp, #4]
 80060e6:	3101      	adds	r1, #1
 80060e8:	4630      	mov	r0, r6
 80060ea:	f7ff ffa3 	bl	8006034 <_Balloc>
 80060ee:	692a      	ldr	r2, [r5, #16]
 80060f0:	3202      	adds	r2, #2
 80060f2:	f105 010c 	add.w	r1, r5, #12
 80060f6:	4607      	mov	r7, r0
 80060f8:	0092      	lsls	r2, r2, #2
 80060fa:	300c      	adds	r0, #12
 80060fc:	f7fa fa00 	bl	8000500 <memcpy>
 8006100:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006102:	6869      	ldr	r1, [r5, #4]
 8006104:	9b01      	ldr	r3, [sp, #4]
 8006106:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800610a:	6028      	str	r0, [r5, #0]
 800610c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006110:	463d      	mov	r5, r7
 8006112:	e7de      	b.n	80060d2 <__multadd+0x3e>

08006114 <__hi0bits>:
 8006114:	0c02      	lsrs	r2, r0, #16
 8006116:	0412      	lsls	r2, r2, #16
 8006118:	4603      	mov	r3, r0
 800611a:	b9c2      	cbnz	r2, 800614e <__hi0bits+0x3a>
 800611c:	0403      	lsls	r3, r0, #16
 800611e:	2010      	movs	r0, #16
 8006120:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006124:	bf04      	itt	eq
 8006126:	021b      	lsleq	r3, r3, #8
 8006128:	3008      	addeq	r0, #8
 800612a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800612e:	bf04      	itt	eq
 8006130:	011b      	lsleq	r3, r3, #4
 8006132:	3004      	addeq	r0, #4
 8006134:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006138:	bf04      	itt	eq
 800613a:	009b      	lsleq	r3, r3, #2
 800613c:	3002      	addeq	r0, #2
 800613e:	2b00      	cmp	r3, #0
 8006140:	db04      	blt.n	800614c <__hi0bits+0x38>
 8006142:	005b      	lsls	r3, r3, #1
 8006144:	d501      	bpl.n	800614a <__hi0bits+0x36>
 8006146:	3001      	adds	r0, #1
 8006148:	4770      	bx	lr
 800614a:	2020      	movs	r0, #32
 800614c:	4770      	bx	lr
 800614e:	2000      	movs	r0, #0
 8006150:	e7e6      	b.n	8006120 <__hi0bits+0xc>
 8006152:	bf00      	nop

08006154 <__lo0bits>:
 8006154:	6803      	ldr	r3, [r0, #0]
 8006156:	f013 0207 	ands.w	r2, r3, #7
 800615a:	4601      	mov	r1, r0
 800615c:	d007      	beq.n	800616e <__lo0bits+0x1a>
 800615e:	07da      	lsls	r2, r3, #31
 8006160:	d41f      	bmi.n	80061a2 <__lo0bits+0x4e>
 8006162:	0798      	lsls	r0, r3, #30
 8006164:	d51f      	bpl.n	80061a6 <__lo0bits+0x52>
 8006166:	085b      	lsrs	r3, r3, #1
 8006168:	600b      	str	r3, [r1, #0]
 800616a:	2001      	movs	r0, #1
 800616c:	4770      	bx	lr
 800616e:	b298      	uxth	r0, r3
 8006170:	b1a0      	cbz	r0, 800619c <__lo0bits+0x48>
 8006172:	4610      	mov	r0, r2
 8006174:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006178:	bf04      	itt	eq
 800617a:	0a1b      	lsreq	r3, r3, #8
 800617c:	3008      	addeq	r0, #8
 800617e:	071a      	lsls	r2, r3, #28
 8006180:	bf04      	itt	eq
 8006182:	091b      	lsreq	r3, r3, #4
 8006184:	3004      	addeq	r0, #4
 8006186:	079a      	lsls	r2, r3, #30
 8006188:	bf04      	itt	eq
 800618a:	089b      	lsreq	r3, r3, #2
 800618c:	3002      	addeq	r0, #2
 800618e:	07da      	lsls	r2, r3, #31
 8006190:	d402      	bmi.n	8006198 <__lo0bits+0x44>
 8006192:	085b      	lsrs	r3, r3, #1
 8006194:	d00b      	beq.n	80061ae <__lo0bits+0x5a>
 8006196:	3001      	adds	r0, #1
 8006198:	600b      	str	r3, [r1, #0]
 800619a:	4770      	bx	lr
 800619c:	0c1b      	lsrs	r3, r3, #16
 800619e:	2010      	movs	r0, #16
 80061a0:	e7e8      	b.n	8006174 <__lo0bits+0x20>
 80061a2:	2000      	movs	r0, #0
 80061a4:	4770      	bx	lr
 80061a6:	089b      	lsrs	r3, r3, #2
 80061a8:	600b      	str	r3, [r1, #0]
 80061aa:	2002      	movs	r0, #2
 80061ac:	4770      	bx	lr
 80061ae:	2020      	movs	r0, #32
 80061b0:	4770      	bx	lr
 80061b2:	bf00      	nop

080061b4 <__i2b>:
 80061b4:	b510      	push	{r4, lr}
 80061b6:	460c      	mov	r4, r1
 80061b8:	2101      	movs	r1, #1
 80061ba:	f7ff ff3b 	bl	8006034 <_Balloc>
 80061be:	2201      	movs	r2, #1
 80061c0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80061c4:	bd10      	pop	{r4, pc}
 80061c6:	bf00      	nop

080061c8 <__multiply>:
 80061c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80061cc:	690e      	ldr	r6, [r1, #16]
 80061ce:	6914      	ldr	r4, [r2, #16]
 80061d0:	42a6      	cmp	r6, r4
 80061d2:	b083      	sub	sp, #12
 80061d4:	460f      	mov	r7, r1
 80061d6:	4615      	mov	r5, r2
 80061d8:	da04      	bge.n	80061e4 <__multiply+0x1c>
 80061da:	4632      	mov	r2, r6
 80061dc:	462f      	mov	r7, r5
 80061de:	4626      	mov	r6, r4
 80061e0:	460d      	mov	r5, r1
 80061e2:	4614      	mov	r4, r2
 80061e4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80061e8:	eb06 0804 	add.w	r8, r6, r4
 80061ec:	4543      	cmp	r3, r8
 80061ee:	bfb8      	it	lt
 80061f0:	3101      	addlt	r1, #1
 80061f2:	f7ff ff1f 	bl	8006034 <_Balloc>
 80061f6:	f100 0914 	add.w	r9, r0, #20
 80061fa:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80061fe:	45f1      	cmp	r9, lr
 8006200:	9000      	str	r0, [sp, #0]
 8006202:	d205      	bcs.n	8006210 <__multiply+0x48>
 8006204:	464b      	mov	r3, r9
 8006206:	2200      	movs	r2, #0
 8006208:	f843 2b04 	str.w	r2, [r3], #4
 800620c:	459e      	cmp	lr, r3
 800620e:	d8fb      	bhi.n	8006208 <__multiply+0x40>
 8006210:	f105 0a14 	add.w	sl, r5, #20
 8006214:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006218:	f107 0314 	add.w	r3, r7, #20
 800621c:	45a2      	cmp	sl, r4
 800621e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006222:	d261      	bcs.n	80062e8 <__multiply+0x120>
 8006224:	1b64      	subs	r4, r4, r5
 8006226:	3c15      	subs	r4, #21
 8006228:	f024 0403 	bic.w	r4, r4, #3
 800622c:	f8cd e004 	str.w	lr, [sp, #4]
 8006230:	44a2      	add	sl, r4
 8006232:	f105 0210 	add.w	r2, r5, #16
 8006236:	469e      	mov	lr, r3
 8006238:	e005      	b.n	8006246 <__multiply+0x7e>
 800623a:	0c2d      	lsrs	r5, r5, #16
 800623c:	d12b      	bne.n	8006296 <__multiply+0xce>
 800623e:	4592      	cmp	sl, r2
 8006240:	f109 0904 	add.w	r9, r9, #4
 8006244:	d04e      	beq.n	80062e4 <__multiply+0x11c>
 8006246:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800624a:	fa1f fb85 	uxth.w	fp, r5
 800624e:	f1bb 0f00 	cmp.w	fp, #0
 8006252:	d0f2      	beq.n	800623a <__multiply+0x72>
 8006254:	4677      	mov	r7, lr
 8006256:	464e      	mov	r6, r9
 8006258:	2000      	movs	r0, #0
 800625a:	e000      	b.n	800625e <__multiply+0x96>
 800625c:	4626      	mov	r6, r4
 800625e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006262:	6834      	ldr	r4, [r6, #0]
 8006264:	b28b      	uxth	r3, r1
 8006266:	b2a5      	uxth	r5, r4
 8006268:	0c09      	lsrs	r1, r1, #16
 800626a:	0c24      	lsrs	r4, r4, #16
 800626c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006270:	4403      	add	r3, r0
 8006272:	fb0b 4001 	mla	r0, fp, r1, r4
 8006276:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800627a:	4634      	mov	r4, r6
 800627c:	b29b      	uxth	r3, r3
 800627e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006282:	45bc      	cmp	ip, r7
 8006284:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006288:	f844 3b04 	str.w	r3, [r4], #4
 800628c:	d8e6      	bhi.n	800625c <__multiply+0x94>
 800628e:	6070      	str	r0, [r6, #4]
 8006290:	6815      	ldr	r5, [r2, #0]
 8006292:	0c2d      	lsrs	r5, r5, #16
 8006294:	d0d3      	beq.n	800623e <__multiply+0x76>
 8006296:	f8d9 3000 	ldr.w	r3, [r9]
 800629a:	4676      	mov	r6, lr
 800629c:	4618      	mov	r0, r3
 800629e:	46cb      	mov	fp, r9
 80062a0:	2100      	movs	r1, #0
 80062a2:	e000      	b.n	80062a6 <__multiply+0xde>
 80062a4:	46a3      	mov	fp, r4
 80062a6:	8834      	ldrh	r4, [r6, #0]
 80062a8:	0c00      	lsrs	r0, r0, #16
 80062aa:	fb05 0004 	mla	r0, r5, r4, r0
 80062ae:	4401      	add	r1, r0
 80062b0:	b29b      	uxth	r3, r3
 80062b2:	465c      	mov	r4, fp
 80062b4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80062b8:	f844 3b04 	str.w	r3, [r4], #4
 80062bc:	f856 3b04 	ldr.w	r3, [r6], #4
 80062c0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80062c4:	0c1b      	lsrs	r3, r3, #16
 80062c6:	b287      	uxth	r7, r0
 80062c8:	fb05 7303 	mla	r3, r5, r3, r7
 80062cc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80062d0:	45b4      	cmp	ip, r6
 80062d2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80062d6:	d8e5      	bhi.n	80062a4 <__multiply+0xdc>
 80062d8:	4592      	cmp	sl, r2
 80062da:	f8cb 3004 	str.w	r3, [fp, #4]
 80062de:	f109 0904 	add.w	r9, r9, #4
 80062e2:	d1b0      	bne.n	8006246 <__multiply+0x7e>
 80062e4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80062e8:	f1b8 0f00 	cmp.w	r8, #0
 80062ec:	dd0b      	ble.n	8006306 <__multiply+0x13e>
 80062ee:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80062f2:	f1ae 0e04 	sub.w	lr, lr, #4
 80062f6:	b11b      	cbz	r3, 8006300 <__multiply+0x138>
 80062f8:	e005      	b.n	8006306 <__multiply+0x13e>
 80062fa:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80062fe:	b913      	cbnz	r3, 8006306 <__multiply+0x13e>
 8006300:	f1b8 0801 	subs.w	r8, r8, #1
 8006304:	d1f9      	bne.n	80062fa <__multiply+0x132>
 8006306:	9800      	ldr	r0, [sp, #0]
 8006308:	f8c0 8010 	str.w	r8, [r0, #16]
 800630c:	b003      	add	sp, #12
 800630e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006312:	bf00      	nop

08006314 <__pow5mult>:
 8006314:	f012 0303 	ands.w	r3, r2, #3
 8006318:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800631c:	4614      	mov	r4, r2
 800631e:	4607      	mov	r7, r0
 8006320:	d12e      	bne.n	8006380 <__pow5mult+0x6c>
 8006322:	460d      	mov	r5, r1
 8006324:	10a4      	asrs	r4, r4, #2
 8006326:	d01c      	beq.n	8006362 <__pow5mult+0x4e>
 8006328:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800632a:	b396      	cbz	r6, 8006392 <__pow5mult+0x7e>
 800632c:	07e3      	lsls	r3, r4, #31
 800632e:	f04f 0800 	mov.w	r8, #0
 8006332:	d406      	bmi.n	8006342 <__pow5mult+0x2e>
 8006334:	1064      	asrs	r4, r4, #1
 8006336:	d014      	beq.n	8006362 <__pow5mult+0x4e>
 8006338:	6830      	ldr	r0, [r6, #0]
 800633a:	b1a8      	cbz	r0, 8006368 <__pow5mult+0x54>
 800633c:	4606      	mov	r6, r0
 800633e:	07e3      	lsls	r3, r4, #31
 8006340:	d5f8      	bpl.n	8006334 <__pow5mult+0x20>
 8006342:	4632      	mov	r2, r6
 8006344:	4629      	mov	r1, r5
 8006346:	4638      	mov	r0, r7
 8006348:	f7ff ff3e 	bl	80061c8 <__multiply>
 800634c:	b1b5      	cbz	r5, 800637c <__pow5mult+0x68>
 800634e:	686a      	ldr	r2, [r5, #4]
 8006350:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006352:	1064      	asrs	r4, r4, #1
 8006354:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006358:	6029      	str	r1, [r5, #0]
 800635a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800635e:	4605      	mov	r5, r0
 8006360:	d1ea      	bne.n	8006338 <__pow5mult+0x24>
 8006362:	4628      	mov	r0, r5
 8006364:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006368:	4632      	mov	r2, r6
 800636a:	4631      	mov	r1, r6
 800636c:	4638      	mov	r0, r7
 800636e:	f7ff ff2b 	bl	80061c8 <__multiply>
 8006372:	6030      	str	r0, [r6, #0]
 8006374:	f8c0 8000 	str.w	r8, [r0]
 8006378:	4606      	mov	r6, r0
 800637a:	e7e0      	b.n	800633e <__pow5mult+0x2a>
 800637c:	4605      	mov	r5, r0
 800637e:	e7d9      	b.n	8006334 <__pow5mult+0x20>
 8006380:	3b01      	subs	r3, #1
 8006382:	4a0b      	ldr	r2, [pc, #44]	; (80063b0 <__pow5mult+0x9c>)
 8006384:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006388:	2300      	movs	r3, #0
 800638a:	f7ff fe83 	bl	8006094 <__multadd>
 800638e:	4605      	mov	r5, r0
 8006390:	e7c8      	b.n	8006324 <__pow5mult+0x10>
 8006392:	2101      	movs	r1, #1
 8006394:	4638      	mov	r0, r7
 8006396:	f7ff fe4d 	bl	8006034 <_Balloc>
 800639a:	f240 2371 	movw	r3, #625	; 0x271
 800639e:	6143      	str	r3, [r0, #20]
 80063a0:	2201      	movs	r2, #1
 80063a2:	2300      	movs	r3, #0
 80063a4:	6102      	str	r2, [r0, #16]
 80063a6:	4606      	mov	r6, r0
 80063a8:	64b8      	str	r0, [r7, #72]	; 0x48
 80063aa:	6003      	str	r3, [r0, #0]
 80063ac:	e7be      	b.n	800632c <__pow5mult+0x18>
 80063ae:	bf00      	nop
 80063b0:	08007530 	.word	0x08007530

080063b4 <__lshift>:
 80063b4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80063b8:	4691      	mov	r9, r2
 80063ba:	690a      	ldr	r2, [r1, #16]
 80063bc:	460e      	mov	r6, r1
 80063be:	ea4f 1469 	mov.w	r4, r9, asr #5
 80063c2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80063c6:	eb04 0802 	add.w	r8, r4, r2
 80063ca:	f108 0501 	add.w	r5, r8, #1
 80063ce:	429d      	cmp	r5, r3
 80063d0:	4607      	mov	r7, r0
 80063d2:	dd04      	ble.n	80063de <__lshift+0x2a>
 80063d4:	005b      	lsls	r3, r3, #1
 80063d6:	429d      	cmp	r5, r3
 80063d8:	f101 0101 	add.w	r1, r1, #1
 80063dc:	dcfa      	bgt.n	80063d4 <__lshift+0x20>
 80063de:	4638      	mov	r0, r7
 80063e0:	f7ff fe28 	bl	8006034 <_Balloc>
 80063e4:	2c00      	cmp	r4, #0
 80063e6:	f100 0314 	add.w	r3, r0, #20
 80063ea:	dd37      	ble.n	800645c <__lshift+0xa8>
 80063ec:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80063f0:	2200      	movs	r2, #0
 80063f2:	f843 2b04 	str.w	r2, [r3], #4
 80063f6:	428b      	cmp	r3, r1
 80063f8:	d1fb      	bne.n	80063f2 <__lshift+0x3e>
 80063fa:	6934      	ldr	r4, [r6, #16]
 80063fc:	f106 0314 	add.w	r3, r6, #20
 8006400:	f019 091f 	ands.w	r9, r9, #31
 8006404:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006408:	d020      	beq.n	800644c <__lshift+0x98>
 800640a:	f1c9 0e20 	rsb	lr, r9, #32
 800640e:	2200      	movs	r2, #0
 8006410:	e000      	b.n	8006414 <__lshift+0x60>
 8006412:	4651      	mov	r1, sl
 8006414:	681c      	ldr	r4, [r3, #0]
 8006416:	468a      	mov	sl, r1
 8006418:	fa04 f409 	lsl.w	r4, r4, r9
 800641c:	4314      	orrs	r4, r2
 800641e:	f84a 4b04 	str.w	r4, [sl], #4
 8006422:	f853 2b04 	ldr.w	r2, [r3], #4
 8006426:	4563      	cmp	r3, ip
 8006428:	fa22 f20e 	lsr.w	r2, r2, lr
 800642c:	d3f1      	bcc.n	8006412 <__lshift+0x5e>
 800642e:	604a      	str	r2, [r1, #4]
 8006430:	b10a      	cbz	r2, 8006436 <__lshift+0x82>
 8006432:	f108 0502 	add.w	r5, r8, #2
 8006436:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006438:	6872      	ldr	r2, [r6, #4]
 800643a:	3d01      	subs	r5, #1
 800643c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006440:	6105      	str	r5, [r0, #16]
 8006442:	6031      	str	r1, [r6, #0]
 8006444:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006448:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800644c:	3904      	subs	r1, #4
 800644e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006452:	f841 2f04 	str.w	r2, [r1, #4]!
 8006456:	459c      	cmp	ip, r3
 8006458:	d8f9      	bhi.n	800644e <__lshift+0x9a>
 800645a:	e7ec      	b.n	8006436 <__lshift+0x82>
 800645c:	4619      	mov	r1, r3
 800645e:	e7cc      	b.n	80063fa <__lshift+0x46>

08006460 <__mcmp>:
 8006460:	b430      	push	{r4, r5}
 8006462:	690b      	ldr	r3, [r1, #16]
 8006464:	4605      	mov	r5, r0
 8006466:	6900      	ldr	r0, [r0, #16]
 8006468:	1ac0      	subs	r0, r0, r3
 800646a:	d10f      	bne.n	800648c <__mcmp+0x2c>
 800646c:	009b      	lsls	r3, r3, #2
 800646e:	3514      	adds	r5, #20
 8006470:	3114      	adds	r1, #20
 8006472:	4419      	add	r1, r3
 8006474:	442b      	add	r3, r5
 8006476:	e001      	b.n	800647c <__mcmp+0x1c>
 8006478:	429d      	cmp	r5, r3
 800647a:	d207      	bcs.n	800648c <__mcmp+0x2c>
 800647c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006480:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006484:	4294      	cmp	r4, r2
 8006486:	d0f7      	beq.n	8006478 <__mcmp+0x18>
 8006488:	d302      	bcc.n	8006490 <__mcmp+0x30>
 800648a:	2001      	movs	r0, #1
 800648c:	bc30      	pop	{r4, r5}
 800648e:	4770      	bx	lr
 8006490:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006494:	e7fa      	b.n	800648c <__mcmp+0x2c>
 8006496:	bf00      	nop

08006498 <__mdiff>:
 8006498:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800649c:	6913      	ldr	r3, [r2, #16]
 800649e:	690d      	ldr	r5, [r1, #16]
 80064a0:	1aed      	subs	r5, r5, r3
 80064a2:	2d00      	cmp	r5, #0
 80064a4:	460e      	mov	r6, r1
 80064a6:	4690      	mov	r8, r2
 80064a8:	f101 0414 	add.w	r4, r1, #20
 80064ac:	f102 0714 	add.w	r7, r2, #20
 80064b0:	d114      	bne.n	80064dc <__mdiff+0x44>
 80064b2:	009b      	lsls	r3, r3, #2
 80064b4:	18e2      	adds	r2, r4, r3
 80064b6:	443b      	add	r3, r7
 80064b8:	e001      	b.n	80064be <__mdiff+0x26>
 80064ba:	42a2      	cmp	r2, r4
 80064bc:	d959      	bls.n	8006572 <__mdiff+0xda>
 80064be:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80064c2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80064c6:	458c      	cmp	ip, r1
 80064c8:	d0f7      	beq.n	80064ba <__mdiff+0x22>
 80064ca:	d209      	bcs.n	80064e0 <__mdiff+0x48>
 80064cc:	4622      	mov	r2, r4
 80064ce:	4633      	mov	r3, r6
 80064d0:	463c      	mov	r4, r7
 80064d2:	4646      	mov	r6, r8
 80064d4:	4617      	mov	r7, r2
 80064d6:	4698      	mov	r8, r3
 80064d8:	2501      	movs	r5, #1
 80064da:	e001      	b.n	80064e0 <__mdiff+0x48>
 80064dc:	dbf6      	blt.n	80064cc <__mdiff+0x34>
 80064de:	2500      	movs	r5, #0
 80064e0:	6871      	ldr	r1, [r6, #4]
 80064e2:	f7ff fda7 	bl	8006034 <_Balloc>
 80064e6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80064ea:	6936      	ldr	r6, [r6, #16]
 80064ec:	60c5      	str	r5, [r0, #12]
 80064ee:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80064f2:	46bc      	mov	ip, r7
 80064f4:	f100 0514 	add.w	r5, r0, #20
 80064f8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80064fc:	2300      	movs	r3, #0
 80064fe:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006502:	f854 8b04 	ldr.w	r8, [r4], #4
 8006506:	b28a      	uxth	r2, r1
 8006508:	fa13 f388 	uxtah	r3, r3, r8
 800650c:	0c09      	lsrs	r1, r1, #16
 800650e:	1a9a      	subs	r2, r3, r2
 8006510:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006514:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006518:	b292      	uxth	r2, r2
 800651a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800651e:	45e6      	cmp	lr, ip
 8006520:	f845 2b04 	str.w	r2, [r5], #4
 8006524:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006528:	d8e9      	bhi.n	80064fe <__mdiff+0x66>
 800652a:	42a7      	cmp	r7, r4
 800652c:	d917      	bls.n	800655e <__mdiff+0xc6>
 800652e:	46ae      	mov	lr, r5
 8006530:	46a4      	mov	ip, r4
 8006532:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006536:	fa13 f382 	uxtah	r3, r3, r2
 800653a:	1419      	asrs	r1, r3, #16
 800653c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006540:	b29b      	uxth	r3, r3
 8006542:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006546:	4567      	cmp	r7, ip
 8006548:	f84e 2b04 	str.w	r2, [lr], #4
 800654c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006550:	d8ef      	bhi.n	8006532 <__mdiff+0x9a>
 8006552:	43e4      	mvns	r4, r4
 8006554:	4427      	add	r7, r4
 8006556:	f027 0703 	bic.w	r7, r7, #3
 800655a:	3704      	adds	r7, #4
 800655c:	443d      	add	r5, r7
 800655e:	3d04      	subs	r5, #4
 8006560:	b922      	cbnz	r2, 800656c <__mdiff+0xd4>
 8006562:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006566:	3e01      	subs	r6, #1
 8006568:	2b00      	cmp	r3, #0
 800656a:	d0fa      	beq.n	8006562 <__mdiff+0xca>
 800656c:	6106      	str	r6, [r0, #16]
 800656e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006572:	2100      	movs	r1, #0
 8006574:	f7ff fd5e 	bl	8006034 <_Balloc>
 8006578:	2201      	movs	r2, #1
 800657a:	2300      	movs	r3, #0
 800657c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006580:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006584 <__d2b>:
 8006584:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006588:	460f      	mov	r7, r1
 800658a:	b083      	sub	sp, #12
 800658c:	2101      	movs	r1, #1
 800658e:	ec55 4b10 	vmov	r4, r5, d0
 8006592:	4616      	mov	r6, r2
 8006594:	f7ff fd4e 	bl	8006034 <_Balloc>
 8006598:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800659c:	4681      	mov	r9, r0
 800659e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80065a2:	f1b8 0f00 	cmp.w	r8, #0
 80065a6:	d001      	beq.n	80065ac <__d2b+0x28>
 80065a8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80065ac:	2c00      	cmp	r4, #0
 80065ae:	9301      	str	r3, [sp, #4]
 80065b0:	d024      	beq.n	80065fc <__d2b+0x78>
 80065b2:	a802      	add	r0, sp, #8
 80065b4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80065b8:	f7ff fdcc 	bl	8006154 <__lo0bits>
 80065bc:	2800      	cmp	r0, #0
 80065be:	d136      	bne.n	800662e <__d2b+0xaa>
 80065c0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80065c4:	f8c9 2014 	str.w	r2, [r9, #20]
 80065c8:	2b00      	cmp	r3, #0
 80065ca:	bf0c      	ite	eq
 80065cc:	2101      	moveq	r1, #1
 80065ce:	2102      	movne	r1, #2
 80065d0:	f8c9 3018 	str.w	r3, [r9, #24]
 80065d4:	f8c9 1010 	str.w	r1, [r9, #16]
 80065d8:	f1b8 0f00 	cmp.w	r8, #0
 80065dc:	d11b      	bne.n	8006616 <__d2b+0x92>
 80065de:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80065e2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80065e6:	6038      	str	r0, [r7, #0]
 80065e8:	6918      	ldr	r0, [r3, #16]
 80065ea:	f7ff fd93 	bl	8006114 <__hi0bits>
 80065ee:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80065f2:	6030      	str	r0, [r6, #0]
 80065f4:	4648      	mov	r0, r9
 80065f6:	b003      	add	sp, #12
 80065f8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80065fc:	a801      	add	r0, sp, #4
 80065fe:	f7ff fda9 	bl	8006154 <__lo0bits>
 8006602:	9b01      	ldr	r3, [sp, #4]
 8006604:	f8c9 3014 	str.w	r3, [r9, #20]
 8006608:	2101      	movs	r1, #1
 800660a:	3020      	adds	r0, #32
 800660c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006610:	f1b8 0f00 	cmp.w	r8, #0
 8006614:	d0e3      	beq.n	80065de <__d2b+0x5a>
 8006616:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800661a:	eb08 0300 	add.w	r3, r8, r0
 800661e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006622:	603b      	str	r3, [r7, #0]
 8006624:	6030      	str	r0, [r6, #0]
 8006626:	4648      	mov	r0, r9
 8006628:	b003      	add	sp, #12
 800662a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800662e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006632:	f1c0 0220 	rsb	r2, r0, #32
 8006636:	fa03 f202 	lsl.w	r2, r3, r2
 800663a:	430a      	orrs	r2, r1
 800663c:	40c3      	lsrs	r3, r0
 800663e:	9301      	str	r3, [sp, #4]
 8006640:	f8c9 2014 	str.w	r2, [r9, #20]
 8006644:	e7c0      	b.n	80065c8 <__d2b+0x44>
 8006646:	bf00      	nop

08006648 <_realloc_r>:
 8006648:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800664c:	4692      	mov	sl, r2
 800664e:	b083      	sub	sp, #12
 8006650:	2900      	cmp	r1, #0
 8006652:	f000 80a1 	beq.w	8006798 <_realloc_r+0x150>
 8006656:	460d      	mov	r5, r1
 8006658:	4680      	mov	r8, r0
 800665a:	f10a 040b 	add.w	r4, sl, #11
 800665e:	f7ff fcdd 	bl	800601c <__malloc_lock>
 8006662:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006666:	2c16      	cmp	r4, #22
 8006668:	f022 0603 	bic.w	r6, r2, #3
 800666c:	f1a5 0708 	sub.w	r7, r5, #8
 8006670:	d83e      	bhi.n	80066f0 <_realloc_r+0xa8>
 8006672:	2410      	movs	r4, #16
 8006674:	4621      	mov	r1, r4
 8006676:	45a2      	cmp	sl, r4
 8006678:	d83f      	bhi.n	80066fa <_realloc_r+0xb2>
 800667a:	428e      	cmp	r6, r1
 800667c:	eb07 0906 	add.w	r9, r7, r6
 8006680:	da74      	bge.n	800676c <_realloc_r+0x124>
 8006682:	4bc7      	ldr	r3, [pc, #796]	; (80069a0 <_realloc_r+0x358>)
 8006684:	6898      	ldr	r0, [r3, #8]
 8006686:	4548      	cmp	r0, r9
 8006688:	f000 80aa 	beq.w	80067e0 <_realloc_r+0x198>
 800668c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006690:	f020 0301 	bic.w	r3, r0, #1
 8006694:	444b      	add	r3, r9
 8006696:	685b      	ldr	r3, [r3, #4]
 8006698:	07db      	lsls	r3, r3, #31
 800669a:	f140 8083 	bpl.w	80067a4 <_realloc_r+0x15c>
 800669e:	07d2      	lsls	r2, r2, #31
 80066a0:	d534      	bpl.n	800670c <_realloc_r+0xc4>
 80066a2:	4651      	mov	r1, sl
 80066a4:	4640      	mov	r0, r8
 80066a6:	f7ff f9b1 	bl	8005a0c <_malloc_r>
 80066aa:	4682      	mov	sl, r0
 80066ac:	b1e0      	cbz	r0, 80066e8 <_realloc_r+0xa0>
 80066ae:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80066b2:	f023 0301 	bic.w	r3, r3, #1
 80066b6:	443b      	add	r3, r7
 80066b8:	f1a0 0208 	sub.w	r2, r0, #8
 80066bc:	4293      	cmp	r3, r2
 80066be:	f000 80f9 	beq.w	80068b4 <_realloc_r+0x26c>
 80066c2:	1f32      	subs	r2, r6, #4
 80066c4:	2a24      	cmp	r2, #36	; 0x24
 80066c6:	f200 8107 	bhi.w	80068d8 <_realloc_r+0x290>
 80066ca:	2a13      	cmp	r2, #19
 80066cc:	6829      	ldr	r1, [r5, #0]
 80066ce:	f200 80e6 	bhi.w	800689e <_realloc_r+0x256>
 80066d2:	4603      	mov	r3, r0
 80066d4:	462a      	mov	r2, r5
 80066d6:	6019      	str	r1, [r3, #0]
 80066d8:	6851      	ldr	r1, [r2, #4]
 80066da:	6059      	str	r1, [r3, #4]
 80066dc:	6892      	ldr	r2, [r2, #8]
 80066de:	609a      	str	r2, [r3, #8]
 80066e0:	4629      	mov	r1, r5
 80066e2:	4640      	mov	r0, r8
 80066e4:	f7fe fe68 	bl	80053b8 <_free_r>
 80066e8:	4640      	mov	r0, r8
 80066ea:	f7ff fc9d 	bl	8006028 <__malloc_unlock>
 80066ee:	e04f      	b.n	8006790 <_realloc_r+0x148>
 80066f0:	f024 0407 	bic.w	r4, r4, #7
 80066f4:	2c00      	cmp	r4, #0
 80066f6:	4621      	mov	r1, r4
 80066f8:	dabd      	bge.n	8006676 <_realloc_r+0x2e>
 80066fa:	f04f 0a00 	mov.w	sl, #0
 80066fe:	230c      	movs	r3, #12
 8006700:	4650      	mov	r0, sl
 8006702:	f8c8 3000 	str.w	r3, [r8]
 8006706:	b003      	add	sp, #12
 8006708:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800670c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006710:	eba7 0b03 	sub.w	fp, r7, r3
 8006714:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006718:	f022 0203 	bic.w	r2, r2, #3
 800671c:	18b3      	adds	r3, r6, r2
 800671e:	428b      	cmp	r3, r1
 8006720:	dbbf      	blt.n	80066a2 <_realloc_r+0x5a>
 8006722:	46da      	mov	sl, fp
 8006724:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006728:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800672c:	1f32      	subs	r2, r6, #4
 800672e:	2a24      	cmp	r2, #36	; 0x24
 8006730:	60c1      	str	r1, [r0, #12]
 8006732:	eb0b 0903 	add.w	r9, fp, r3
 8006736:	6088      	str	r0, [r1, #8]
 8006738:	f200 80c6 	bhi.w	80068c8 <_realloc_r+0x280>
 800673c:	2a13      	cmp	r2, #19
 800673e:	6829      	ldr	r1, [r5, #0]
 8006740:	f240 80c0 	bls.w	80068c4 <_realloc_r+0x27c>
 8006744:	f8cb 1008 	str.w	r1, [fp, #8]
 8006748:	6869      	ldr	r1, [r5, #4]
 800674a:	f8cb 100c 	str.w	r1, [fp, #12]
 800674e:	2a1b      	cmp	r2, #27
 8006750:	68a9      	ldr	r1, [r5, #8]
 8006752:	f200 80d8 	bhi.w	8006906 <_realloc_r+0x2be>
 8006756:	f10b 0210 	add.w	r2, fp, #16
 800675a:	3508      	adds	r5, #8
 800675c:	6011      	str	r1, [r2, #0]
 800675e:	6869      	ldr	r1, [r5, #4]
 8006760:	6051      	str	r1, [r2, #4]
 8006762:	68a9      	ldr	r1, [r5, #8]
 8006764:	6091      	str	r1, [r2, #8]
 8006766:	461e      	mov	r6, r3
 8006768:	465f      	mov	r7, fp
 800676a:	4655      	mov	r5, sl
 800676c:	687b      	ldr	r3, [r7, #4]
 800676e:	1b32      	subs	r2, r6, r4
 8006770:	2a0f      	cmp	r2, #15
 8006772:	f003 0301 	and.w	r3, r3, #1
 8006776:	d822      	bhi.n	80067be <_realloc_r+0x176>
 8006778:	4333      	orrs	r3, r6
 800677a:	607b      	str	r3, [r7, #4]
 800677c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006780:	f043 0301 	orr.w	r3, r3, #1
 8006784:	f8c9 3004 	str.w	r3, [r9, #4]
 8006788:	4640      	mov	r0, r8
 800678a:	f7ff fc4d 	bl	8006028 <__malloc_unlock>
 800678e:	46aa      	mov	sl, r5
 8006790:	4650      	mov	r0, sl
 8006792:	b003      	add	sp, #12
 8006794:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006798:	4611      	mov	r1, r2
 800679a:	b003      	add	sp, #12
 800679c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80067a0:	f7ff b934 	b.w	8005a0c <_malloc_r>
 80067a4:	f020 0003 	bic.w	r0, r0, #3
 80067a8:	1833      	adds	r3, r6, r0
 80067aa:	428b      	cmp	r3, r1
 80067ac:	db61      	blt.n	8006872 <_realloc_r+0x22a>
 80067ae:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80067b2:	461e      	mov	r6, r3
 80067b4:	60ca      	str	r2, [r1, #12]
 80067b6:	eb07 0903 	add.w	r9, r7, r3
 80067ba:	6091      	str	r1, [r2, #8]
 80067bc:	e7d6      	b.n	800676c <_realloc_r+0x124>
 80067be:	1939      	adds	r1, r7, r4
 80067c0:	4323      	orrs	r3, r4
 80067c2:	f042 0201 	orr.w	r2, r2, #1
 80067c6:	607b      	str	r3, [r7, #4]
 80067c8:	604a      	str	r2, [r1, #4]
 80067ca:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80067ce:	f043 0301 	orr.w	r3, r3, #1
 80067d2:	3108      	adds	r1, #8
 80067d4:	f8c9 3004 	str.w	r3, [r9, #4]
 80067d8:	4640      	mov	r0, r8
 80067da:	f7fe fded 	bl	80053b8 <_free_r>
 80067de:	e7d3      	b.n	8006788 <_realloc_r+0x140>
 80067e0:	6840      	ldr	r0, [r0, #4]
 80067e2:	f020 0903 	bic.w	r9, r0, #3
 80067e6:	44b1      	add	r9, r6
 80067e8:	f104 0010 	add.w	r0, r4, #16
 80067ec:	4581      	cmp	r9, r0
 80067ee:	da77      	bge.n	80068e0 <_realloc_r+0x298>
 80067f0:	07d2      	lsls	r2, r2, #31
 80067f2:	f53f af56 	bmi.w	80066a2 <_realloc_r+0x5a>
 80067f6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80067fa:	eba7 0b02 	sub.w	fp, r7, r2
 80067fe:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006802:	f022 0203 	bic.w	r2, r2, #3
 8006806:	4491      	add	r9, r2
 8006808:	4548      	cmp	r0, r9
 800680a:	dc87      	bgt.n	800671c <_realloc_r+0xd4>
 800680c:	46da      	mov	sl, fp
 800680e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006812:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006816:	1f32      	subs	r2, r6, #4
 8006818:	2a24      	cmp	r2, #36	; 0x24
 800681a:	60c1      	str	r1, [r0, #12]
 800681c:	6088      	str	r0, [r1, #8]
 800681e:	f200 80a1 	bhi.w	8006964 <_realloc_r+0x31c>
 8006822:	2a13      	cmp	r2, #19
 8006824:	6829      	ldr	r1, [r5, #0]
 8006826:	f240 809b 	bls.w	8006960 <_realloc_r+0x318>
 800682a:	f8cb 1008 	str.w	r1, [fp, #8]
 800682e:	6869      	ldr	r1, [r5, #4]
 8006830:	f8cb 100c 	str.w	r1, [fp, #12]
 8006834:	2a1b      	cmp	r2, #27
 8006836:	68a9      	ldr	r1, [r5, #8]
 8006838:	f200 809b 	bhi.w	8006972 <_realloc_r+0x32a>
 800683c:	f10b 0210 	add.w	r2, fp, #16
 8006840:	3508      	adds	r5, #8
 8006842:	6011      	str	r1, [r2, #0]
 8006844:	6869      	ldr	r1, [r5, #4]
 8006846:	6051      	str	r1, [r2, #4]
 8006848:	68a9      	ldr	r1, [r5, #8]
 800684a:	6091      	str	r1, [r2, #8]
 800684c:	eb0b 0104 	add.w	r1, fp, r4
 8006850:	eba9 0204 	sub.w	r2, r9, r4
 8006854:	f042 0201 	orr.w	r2, r2, #1
 8006858:	6099      	str	r1, [r3, #8]
 800685a:	604a      	str	r2, [r1, #4]
 800685c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006860:	f003 0301 	and.w	r3, r3, #1
 8006864:	431c      	orrs	r4, r3
 8006866:	4640      	mov	r0, r8
 8006868:	f8cb 4004 	str.w	r4, [fp, #4]
 800686c:	f7ff fbdc 	bl	8006028 <__malloc_unlock>
 8006870:	e78e      	b.n	8006790 <_realloc_r+0x148>
 8006872:	07d3      	lsls	r3, r2, #31
 8006874:	f53f af15 	bmi.w	80066a2 <_realloc_r+0x5a>
 8006878:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800687c:	eba7 0b03 	sub.w	fp, r7, r3
 8006880:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006884:	f022 0203 	bic.w	r2, r2, #3
 8006888:	4410      	add	r0, r2
 800688a:	1983      	adds	r3, r0, r6
 800688c:	428b      	cmp	r3, r1
 800688e:	f6ff af45 	blt.w	800671c <_realloc_r+0xd4>
 8006892:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006896:	46da      	mov	sl, fp
 8006898:	60ca      	str	r2, [r1, #12]
 800689a:	6091      	str	r1, [r2, #8]
 800689c:	e742      	b.n	8006724 <_realloc_r+0xdc>
 800689e:	6001      	str	r1, [r0, #0]
 80068a0:	686b      	ldr	r3, [r5, #4]
 80068a2:	6043      	str	r3, [r0, #4]
 80068a4:	2a1b      	cmp	r2, #27
 80068a6:	d83a      	bhi.n	800691e <_realloc_r+0x2d6>
 80068a8:	f105 0208 	add.w	r2, r5, #8
 80068ac:	f100 0308 	add.w	r3, r0, #8
 80068b0:	68a9      	ldr	r1, [r5, #8]
 80068b2:	e710      	b.n	80066d6 <_realloc_r+0x8e>
 80068b4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80068b8:	f023 0303 	bic.w	r3, r3, #3
 80068bc:	441e      	add	r6, r3
 80068be:	eb07 0906 	add.w	r9, r7, r6
 80068c2:	e753      	b.n	800676c <_realloc_r+0x124>
 80068c4:	4652      	mov	r2, sl
 80068c6:	e749      	b.n	800675c <_realloc_r+0x114>
 80068c8:	4629      	mov	r1, r5
 80068ca:	4650      	mov	r0, sl
 80068cc:	461e      	mov	r6, r3
 80068ce:	465f      	mov	r7, fp
 80068d0:	f7ff fb40 	bl	8005f54 <memmove>
 80068d4:	4655      	mov	r5, sl
 80068d6:	e749      	b.n	800676c <_realloc_r+0x124>
 80068d8:	4629      	mov	r1, r5
 80068da:	f7ff fb3b 	bl	8005f54 <memmove>
 80068de:	e6ff      	b.n	80066e0 <_realloc_r+0x98>
 80068e0:	4427      	add	r7, r4
 80068e2:	eba9 0904 	sub.w	r9, r9, r4
 80068e6:	f049 0201 	orr.w	r2, r9, #1
 80068ea:	609f      	str	r7, [r3, #8]
 80068ec:	607a      	str	r2, [r7, #4]
 80068ee:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80068f2:	f003 0301 	and.w	r3, r3, #1
 80068f6:	431c      	orrs	r4, r3
 80068f8:	4640      	mov	r0, r8
 80068fa:	f845 4c04 	str.w	r4, [r5, #-4]
 80068fe:	f7ff fb93 	bl	8006028 <__malloc_unlock>
 8006902:	46aa      	mov	sl, r5
 8006904:	e744      	b.n	8006790 <_realloc_r+0x148>
 8006906:	f8cb 1010 	str.w	r1, [fp, #16]
 800690a:	68e9      	ldr	r1, [r5, #12]
 800690c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006910:	2a24      	cmp	r2, #36	; 0x24
 8006912:	d010      	beq.n	8006936 <_realloc_r+0x2ee>
 8006914:	6929      	ldr	r1, [r5, #16]
 8006916:	f10b 0218 	add.w	r2, fp, #24
 800691a:	3510      	adds	r5, #16
 800691c:	e71e      	b.n	800675c <_realloc_r+0x114>
 800691e:	68ab      	ldr	r3, [r5, #8]
 8006920:	6083      	str	r3, [r0, #8]
 8006922:	68eb      	ldr	r3, [r5, #12]
 8006924:	60c3      	str	r3, [r0, #12]
 8006926:	2a24      	cmp	r2, #36	; 0x24
 8006928:	d010      	beq.n	800694c <_realloc_r+0x304>
 800692a:	f105 0210 	add.w	r2, r5, #16
 800692e:	f100 0310 	add.w	r3, r0, #16
 8006932:	6929      	ldr	r1, [r5, #16]
 8006934:	e6cf      	b.n	80066d6 <_realloc_r+0x8e>
 8006936:	692a      	ldr	r2, [r5, #16]
 8006938:	f8cb 2018 	str.w	r2, [fp, #24]
 800693c:	696a      	ldr	r2, [r5, #20]
 800693e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006942:	69a9      	ldr	r1, [r5, #24]
 8006944:	f10b 0220 	add.w	r2, fp, #32
 8006948:	3518      	adds	r5, #24
 800694a:	e707      	b.n	800675c <_realloc_r+0x114>
 800694c:	692b      	ldr	r3, [r5, #16]
 800694e:	6103      	str	r3, [r0, #16]
 8006950:	696b      	ldr	r3, [r5, #20]
 8006952:	6143      	str	r3, [r0, #20]
 8006954:	69a9      	ldr	r1, [r5, #24]
 8006956:	f105 0218 	add.w	r2, r5, #24
 800695a:	f100 0318 	add.w	r3, r0, #24
 800695e:	e6ba      	b.n	80066d6 <_realloc_r+0x8e>
 8006960:	4652      	mov	r2, sl
 8006962:	e76e      	b.n	8006842 <_realloc_r+0x1fa>
 8006964:	4629      	mov	r1, r5
 8006966:	4650      	mov	r0, sl
 8006968:	9301      	str	r3, [sp, #4]
 800696a:	f7ff faf3 	bl	8005f54 <memmove>
 800696e:	9b01      	ldr	r3, [sp, #4]
 8006970:	e76c      	b.n	800684c <_realloc_r+0x204>
 8006972:	f8cb 1010 	str.w	r1, [fp, #16]
 8006976:	68e9      	ldr	r1, [r5, #12]
 8006978:	f8cb 1014 	str.w	r1, [fp, #20]
 800697c:	2a24      	cmp	r2, #36	; 0x24
 800697e:	d004      	beq.n	800698a <_realloc_r+0x342>
 8006980:	6929      	ldr	r1, [r5, #16]
 8006982:	f10b 0218 	add.w	r2, fp, #24
 8006986:	3510      	adds	r5, #16
 8006988:	e75b      	b.n	8006842 <_realloc_r+0x1fa>
 800698a:	692a      	ldr	r2, [r5, #16]
 800698c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006990:	696a      	ldr	r2, [r5, #20]
 8006992:	f8cb 201c 	str.w	r2, [fp, #28]
 8006996:	69a9      	ldr	r1, [r5, #24]
 8006998:	f10b 0220 	add.w	r2, fp, #32
 800699c:	3518      	adds	r5, #24
 800699e:	e750      	b.n	8006842 <_realloc_r+0x1fa>
 80069a0:	2000044c 	.word	0x2000044c

080069a4 <frexp>:
 80069a4:	ec53 2b10 	vmov	r2, r3, d0
 80069a8:	b570      	push	{r4, r5, r6, lr}
 80069aa:	4e16      	ldr	r6, [pc, #88]	; (8006a04 <frexp+0x60>)
 80069ac:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80069b0:	2500      	movs	r5, #0
 80069b2:	42b1      	cmp	r1, r6
 80069b4:	4604      	mov	r4, r0
 80069b6:	6005      	str	r5, [r0, #0]
 80069b8:	dc21      	bgt.n	80069fe <frexp+0x5a>
 80069ba:	ee10 6a10 	vmov	r6, s0
 80069be:	430e      	orrs	r6, r1
 80069c0:	d01d      	beq.n	80069fe <frexp+0x5a>
 80069c2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80069c6:	4618      	mov	r0, r3
 80069c8:	da0c      	bge.n	80069e4 <frexp+0x40>
 80069ca:	4619      	mov	r1, r3
 80069cc:	2200      	movs	r2, #0
 80069ce:	ee10 0a10 	vmov	r0, s0
 80069d2:	4b0d      	ldr	r3, [pc, #52]	; (8006a08 <frexp+0x64>)
 80069d4:	f7fa f8b0 	bl	8000b38 <__aeabi_dmul>
 80069d8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80069dc:	4602      	mov	r2, r0
 80069de:	4608      	mov	r0, r1
 80069e0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80069e4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80069e8:	1509      	asrs	r1, r1, #20
 80069ea:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80069ee:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80069f2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80069f6:	4429      	add	r1, r5
 80069f8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80069fc:	6021      	str	r1, [r4, #0]
 80069fe:	ec43 2b10 	vmov	d0, r2, r3
 8006a02:	bd70      	pop	{r4, r5, r6, pc}
 8006a04:	7fefffff 	.word	0x7fefffff
 8006a08:	43500000 	.word	0x43500000

08006a0c <_sbrk_r>:
 8006a0c:	b538      	push	{r3, r4, r5, lr}
 8006a0e:	4c07      	ldr	r4, [pc, #28]	; (8006a2c <_sbrk_r+0x20>)
 8006a10:	2300      	movs	r3, #0
 8006a12:	4605      	mov	r5, r0
 8006a14:	4608      	mov	r0, r1
 8006a16:	6023      	str	r3, [r4, #0]
 8006a18:	f7fb fc2b 	bl	8002272 <_sbrk>
 8006a1c:	1c43      	adds	r3, r0, #1
 8006a1e:	d000      	beq.n	8006a22 <_sbrk_r+0x16>
 8006a20:	bd38      	pop	{r3, r4, r5, pc}
 8006a22:	6823      	ldr	r3, [r4, #0]
 8006a24:	2b00      	cmp	r3, #0
 8006a26:	d0fb      	beq.n	8006a20 <_sbrk_r+0x14>
 8006a28:	602b      	str	r3, [r5, #0]
 8006a2a:	bd38      	pop	{r3, r4, r5, pc}
 8006a2c:	20000ca8 	.word	0x20000ca8

08006a30 <__sread>:
 8006a30:	b510      	push	{r4, lr}
 8006a32:	460c      	mov	r4, r1
 8006a34:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a38:	f000 fabc 	bl	8006fb4 <_read_r>
 8006a3c:	2800      	cmp	r0, #0
 8006a3e:	db03      	blt.n	8006a48 <__sread+0x18>
 8006a40:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006a42:	4403      	add	r3, r0
 8006a44:	6523      	str	r3, [r4, #80]	; 0x50
 8006a46:	bd10      	pop	{r4, pc}
 8006a48:	89a3      	ldrh	r3, [r4, #12]
 8006a4a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006a4e:	81a3      	strh	r3, [r4, #12]
 8006a50:	bd10      	pop	{r4, pc}
 8006a52:	bf00      	nop

08006a54 <__swrite>:
 8006a54:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006a58:	4616      	mov	r6, r2
 8006a5a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006a5e:	461f      	mov	r7, r3
 8006a60:	05d3      	lsls	r3, r2, #23
 8006a62:	460c      	mov	r4, r1
 8006a64:	4605      	mov	r5, r0
 8006a66:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a6a:	d507      	bpl.n	8006a7c <__swrite+0x28>
 8006a6c:	2200      	movs	r2, #0
 8006a6e:	2302      	movs	r3, #2
 8006a70:	f000 fa74 	bl	8006f5c <_lseek_r>
 8006a74:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006a78:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006a7c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006a80:	81a2      	strh	r2, [r4, #12]
 8006a82:	463b      	mov	r3, r7
 8006a84:	4632      	mov	r2, r6
 8006a86:	4628      	mov	r0, r5
 8006a88:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006a8c:	f000 b88c 	b.w	8006ba8 <_write_r>

08006a90 <__sseek>:
 8006a90:	b510      	push	{r4, lr}
 8006a92:	460c      	mov	r4, r1
 8006a94:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a98:	f000 fa60 	bl	8006f5c <_lseek_r>
 8006a9c:	89a3      	ldrh	r3, [r4, #12]
 8006a9e:	1c42      	adds	r2, r0, #1
 8006aa0:	bf0e      	itee	eq
 8006aa2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006aa6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006aaa:	6520      	strne	r0, [r4, #80]	; 0x50
 8006aac:	81a3      	strh	r3, [r4, #12]
 8006aae:	bd10      	pop	{r4, pc}

08006ab0 <__sclose>:
 8006ab0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ab4:	f000 b922 	b.w	8006cfc <_close_r>

08006ab8 <strncpy>:
 8006ab8:	ea40 0301 	orr.w	r3, r0, r1
 8006abc:	079b      	lsls	r3, r3, #30
 8006abe:	b470      	push	{r4, r5, r6}
 8006ac0:	d12a      	bne.n	8006b18 <strncpy+0x60>
 8006ac2:	2a03      	cmp	r2, #3
 8006ac4:	d928      	bls.n	8006b18 <strncpy+0x60>
 8006ac6:	460c      	mov	r4, r1
 8006ac8:	4603      	mov	r3, r0
 8006aca:	4621      	mov	r1, r4
 8006acc:	f854 6b04 	ldr.w	r6, [r4], #4
 8006ad0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006ad4:	ea25 0506 	bic.w	r5, r5, r6
 8006ad8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006adc:	d106      	bne.n	8006aec <strncpy+0x34>
 8006ade:	3a04      	subs	r2, #4
 8006ae0:	2a03      	cmp	r2, #3
 8006ae2:	f843 6b04 	str.w	r6, [r3], #4
 8006ae6:	4621      	mov	r1, r4
 8006ae8:	d8ef      	bhi.n	8006aca <strncpy+0x12>
 8006aea:	b19a      	cbz	r2, 8006b14 <strncpy+0x5c>
 8006aec:	780c      	ldrb	r4, [r1, #0]
 8006aee:	701c      	strb	r4, [r3, #0]
 8006af0:	3a01      	subs	r2, #1
 8006af2:	3301      	adds	r3, #1
 8006af4:	b13c      	cbz	r4, 8006b06 <strncpy+0x4e>
 8006af6:	b16a      	cbz	r2, 8006b14 <strncpy+0x5c>
 8006af8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006afc:	f803 4b01 	strb.w	r4, [r3], #1
 8006b00:	3a01      	subs	r2, #1
 8006b02:	2c00      	cmp	r4, #0
 8006b04:	d1f7      	bne.n	8006af6 <strncpy+0x3e>
 8006b06:	b12a      	cbz	r2, 8006b14 <strncpy+0x5c>
 8006b08:	441a      	add	r2, r3
 8006b0a:	2100      	movs	r1, #0
 8006b0c:	f803 1b01 	strb.w	r1, [r3], #1
 8006b10:	4293      	cmp	r3, r2
 8006b12:	d1fb      	bne.n	8006b0c <strncpy+0x54>
 8006b14:	bc70      	pop	{r4, r5, r6}
 8006b16:	4770      	bx	lr
 8006b18:	4603      	mov	r3, r0
 8006b1a:	e7e6      	b.n	8006aea <strncpy+0x32>

08006b1c <__sprint_r.part.0>:
 8006b1c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b20:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006b22:	049c      	lsls	r4, r3, #18
 8006b24:	4692      	mov	sl, r2
 8006b26:	d52d      	bpl.n	8006b84 <__sprint_r.part.0+0x68>
 8006b28:	6893      	ldr	r3, [r2, #8]
 8006b2a:	6812      	ldr	r2, [r2, #0]
 8006b2c:	b343      	cbz	r3, 8006b80 <__sprint_r.part.0+0x64>
 8006b2e:	460e      	mov	r6, r1
 8006b30:	4607      	mov	r7, r0
 8006b32:	f102 0908 	add.w	r9, r2, #8
 8006b36:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006b3a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006b3e:	d015      	beq.n	8006b6c <__sprint_r.part.0+0x50>
 8006b40:	3d04      	subs	r5, #4
 8006b42:	2400      	movs	r4, #0
 8006b44:	e001      	b.n	8006b4a <__sprint_r.part.0+0x2e>
 8006b46:	45a0      	cmp	r8, r4
 8006b48:	d00e      	beq.n	8006b68 <__sprint_r.part.0+0x4c>
 8006b4a:	4632      	mov	r2, r6
 8006b4c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006b50:	4638      	mov	r0, r7
 8006b52:	f000 f99d 	bl	8006e90 <_fputwc_r>
 8006b56:	1c43      	adds	r3, r0, #1
 8006b58:	f104 0401 	add.w	r4, r4, #1
 8006b5c:	d1f3      	bne.n	8006b46 <__sprint_r.part.0+0x2a>
 8006b5e:	2300      	movs	r3, #0
 8006b60:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b64:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b68:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006b6c:	f02b 0b03 	bic.w	fp, fp, #3
 8006b70:	eba3 030b 	sub.w	r3, r3, fp
 8006b74:	f8ca 3008 	str.w	r3, [sl, #8]
 8006b78:	f109 0908 	add.w	r9, r9, #8
 8006b7c:	2b00      	cmp	r3, #0
 8006b7e:	d1da      	bne.n	8006b36 <__sprint_r.part.0+0x1a>
 8006b80:	2000      	movs	r0, #0
 8006b82:	e7ec      	b.n	8006b5e <__sprint_r.part.0+0x42>
 8006b84:	f7fe fd0c 	bl	80055a0 <__sfvwrite_r>
 8006b88:	2300      	movs	r3, #0
 8006b8a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b8e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b92:	bf00      	nop

08006b94 <__sprint_r>:
 8006b94:	6893      	ldr	r3, [r2, #8]
 8006b96:	b10b      	cbz	r3, 8006b9c <__sprint_r+0x8>
 8006b98:	f7ff bfc0 	b.w	8006b1c <__sprint_r.part.0>
 8006b9c:	b410      	push	{r4}
 8006b9e:	4618      	mov	r0, r3
 8006ba0:	6053      	str	r3, [r2, #4]
 8006ba2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006ba6:	4770      	bx	lr

08006ba8 <_write_r>:
 8006ba8:	b570      	push	{r4, r5, r6, lr}
 8006baa:	460d      	mov	r5, r1
 8006bac:	4c08      	ldr	r4, [pc, #32]	; (8006bd0 <_write_r+0x28>)
 8006bae:	4611      	mov	r1, r2
 8006bb0:	4606      	mov	r6, r0
 8006bb2:	461a      	mov	r2, r3
 8006bb4:	4628      	mov	r0, r5
 8006bb6:	2300      	movs	r3, #0
 8006bb8:	6023      	str	r3, [r4, #0]
 8006bba:	f7fb fb3c 	bl	8002236 <_write>
 8006bbe:	1c43      	adds	r3, r0, #1
 8006bc0:	d000      	beq.n	8006bc4 <_write_r+0x1c>
 8006bc2:	bd70      	pop	{r4, r5, r6, pc}
 8006bc4:	6823      	ldr	r3, [r4, #0]
 8006bc6:	2b00      	cmp	r3, #0
 8006bc8:	d0fb      	beq.n	8006bc2 <_write_r+0x1a>
 8006bca:	6033      	str	r3, [r6, #0]
 8006bcc:	bd70      	pop	{r4, r5, r6, pc}
 8006bce:	bf00      	nop
 8006bd0:	20000ca8 	.word	0x20000ca8

08006bd4 <__register_exitproc>:
 8006bd4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006bd8:	4d2b      	ldr	r5, [pc, #172]	; (8006c88 <__register_exitproc+0xb4>)
 8006bda:	4606      	mov	r6, r0
 8006bdc:	6828      	ldr	r0, [r5, #0]
 8006bde:	4698      	mov	r8, r3
 8006be0:	460f      	mov	r7, r1
 8006be2:	4691      	mov	r9, r2
 8006be4:	f7fe fe96 	bl	8005914 <__retarget_lock_acquire_recursive>
 8006be8:	4b28      	ldr	r3, [pc, #160]	; (8006c8c <__register_exitproc+0xb8>)
 8006bea:	681c      	ldr	r4, [r3, #0]
 8006bec:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006bf0:	2b00      	cmp	r3, #0
 8006bf2:	d03d      	beq.n	8006c70 <__register_exitproc+0x9c>
 8006bf4:	685a      	ldr	r2, [r3, #4]
 8006bf6:	2a1f      	cmp	r2, #31
 8006bf8:	dc0d      	bgt.n	8006c16 <__register_exitproc+0x42>
 8006bfa:	f102 0c01 	add.w	ip, r2, #1
 8006bfe:	bb16      	cbnz	r6, 8006c46 <__register_exitproc+0x72>
 8006c00:	3202      	adds	r2, #2
 8006c02:	f8c3 c004 	str.w	ip, [r3, #4]
 8006c06:	6828      	ldr	r0, [r5, #0]
 8006c08:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006c0c:	f7fe fe84 	bl	8005918 <__retarget_lock_release_recursive>
 8006c10:	2000      	movs	r0, #0
 8006c12:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006c16:	4b1e      	ldr	r3, [pc, #120]	; (8006c90 <__register_exitproc+0xbc>)
 8006c18:	b37b      	cbz	r3, 8006c7a <__register_exitproc+0xa6>
 8006c1a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006c1e:	f3af 8000 	nop.w
 8006c22:	4603      	mov	r3, r0
 8006c24:	b348      	cbz	r0, 8006c7a <__register_exitproc+0xa6>
 8006c26:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006c2a:	2100      	movs	r1, #0
 8006c2c:	e9c0 2100 	strd	r2, r1, [r0]
 8006c30:	f04f 0c01 	mov.w	ip, #1
 8006c34:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006c38:	460a      	mov	r2, r1
 8006c3a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006c3e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006c42:	2e00      	cmp	r6, #0
 8006c44:	d0dc      	beq.n	8006c00 <__register_exitproc+0x2c>
 8006c46:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006c4a:	2401      	movs	r4, #1
 8006c4c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006c50:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006c54:	4094      	lsls	r4, r2
 8006c56:	4320      	orrs	r0, r4
 8006c58:	2e02      	cmp	r6, #2
 8006c5a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006c5e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006c62:	d1cd      	bne.n	8006c00 <__register_exitproc+0x2c>
 8006c64:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006c68:	430c      	orrs	r4, r1
 8006c6a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006c6e:	e7c7      	b.n	8006c00 <__register_exitproc+0x2c>
 8006c70:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006c74:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006c78:	e7bc      	b.n	8006bf4 <__register_exitproc+0x20>
 8006c7a:	6828      	ldr	r0, [r5, #0]
 8006c7c:	f7fe fe4c 	bl	8005918 <__retarget_lock_release_recursive>
 8006c80:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006c84:	e7c5      	b.n	8006c12 <__register_exitproc+0x3e>
 8006c86:	bf00      	nop
 8006c88:	20000448 	.word	0x20000448
 8006c8c:	080073c0 	.word	0x080073c0
 8006c90:	00000000 	.word	0x00000000

08006c94 <_calloc_r>:
 8006c94:	b510      	push	{r4, lr}
 8006c96:	fb02 f101 	mul.w	r1, r2, r1
 8006c9a:	f7fe feb7 	bl	8005a0c <_malloc_r>
 8006c9e:	4604      	mov	r4, r0
 8006ca0:	b1d8      	cbz	r0, 8006cda <_calloc_r+0x46>
 8006ca2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006ca6:	f022 0203 	bic.w	r2, r2, #3
 8006caa:	3a04      	subs	r2, #4
 8006cac:	2a24      	cmp	r2, #36	; 0x24
 8006cae:	d81d      	bhi.n	8006cec <_calloc_r+0x58>
 8006cb0:	2a13      	cmp	r2, #19
 8006cb2:	d914      	bls.n	8006cde <_calloc_r+0x4a>
 8006cb4:	2300      	movs	r3, #0
 8006cb6:	2a1b      	cmp	r2, #27
 8006cb8:	e9c0 3300 	strd	r3, r3, [r0]
 8006cbc:	d91b      	bls.n	8006cf6 <_calloc_r+0x62>
 8006cbe:	2a24      	cmp	r2, #36	; 0x24
 8006cc0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006cc4:	bf0a      	itet	eq
 8006cc6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006cca:	f100 0210 	addne.w	r2, r0, #16
 8006cce:	f100 0218 	addeq.w	r2, r0, #24
 8006cd2:	2300      	movs	r3, #0
 8006cd4:	e9c2 3300 	strd	r3, r3, [r2]
 8006cd8:	6093      	str	r3, [r2, #8]
 8006cda:	4620      	mov	r0, r4
 8006cdc:	bd10      	pop	{r4, pc}
 8006cde:	4602      	mov	r2, r0
 8006ce0:	2300      	movs	r3, #0
 8006ce2:	e9c2 3300 	strd	r3, r3, [r2]
 8006ce6:	6093      	str	r3, [r2, #8]
 8006ce8:	4620      	mov	r0, r4
 8006cea:	bd10      	pop	{r4, pc}
 8006cec:	2100      	movs	r1, #0
 8006cee:	f7fb fb6d 	bl	80023cc <memset>
 8006cf2:	4620      	mov	r0, r4
 8006cf4:	bd10      	pop	{r4, pc}
 8006cf6:	f100 0208 	add.w	r2, r0, #8
 8006cfa:	e7f1      	b.n	8006ce0 <_calloc_r+0x4c>

08006cfc <_close_r>:
 8006cfc:	b538      	push	{r3, r4, r5, lr}
 8006cfe:	4c07      	ldr	r4, [pc, #28]	; (8006d1c <_close_r+0x20>)
 8006d00:	2300      	movs	r3, #0
 8006d02:	4605      	mov	r5, r0
 8006d04:	4608      	mov	r0, r1
 8006d06:	6023      	str	r3, [r4, #0]
 8006d08:	f7fb fad6 	bl	80022b8 <_close>
 8006d0c:	1c43      	adds	r3, r0, #1
 8006d0e:	d000      	beq.n	8006d12 <_close_r+0x16>
 8006d10:	bd38      	pop	{r3, r4, r5, pc}
 8006d12:	6823      	ldr	r3, [r4, #0]
 8006d14:	2b00      	cmp	r3, #0
 8006d16:	d0fb      	beq.n	8006d10 <_close_r+0x14>
 8006d18:	602b      	str	r3, [r5, #0]
 8006d1a:	bd38      	pop	{r3, r4, r5, pc}
 8006d1c:	20000ca8 	.word	0x20000ca8

08006d20 <_fclose_r>:
 8006d20:	b570      	push	{r4, r5, r6, lr}
 8006d22:	2900      	cmp	r1, #0
 8006d24:	d048      	beq.n	8006db8 <_fclose_r+0x98>
 8006d26:	4605      	mov	r5, r0
 8006d28:	460c      	mov	r4, r1
 8006d2a:	b110      	cbz	r0, 8006d32 <_fclose_r+0x12>
 8006d2c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006d2e:	2b00      	cmp	r3, #0
 8006d30:	d048      	beq.n	8006dc4 <_fclose_r+0xa4>
 8006d32:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d34:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d38:	07d0      	lsls	r0, r2, #31
 8006d3a:	d440      	bmi.n	8006dbe <_fclose_r+0x9e>
 8006d3c:	0599      	lsls	r1, r3, #22
 8006d3e:	d530      	bpl.n	8006da2 <_fclose_r+0x82>
 8006d40:	4621      	mov	r1, r4
 8006d42:	4628      	mov	r0, r5
 8006d44:	f7fe f990 	bl	8005068 <__sflush_r>
 8006d48:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006d4a:	4606      	mov	r6, r0
 8006d4c:	b133      	cbz	r3, 8006d5c <_fclose_r+0x3c>
 8006d4e:	69e1      	ldr	r1, [r4, #28]
 8006d50:	4628      	mov	r0, r5
 8006d52:	4798      	blx	r3
 8006d54:	2800      	cmp	r0, #0
 8006d56:	bfb8      	it	lt
 8006d58:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006d5c:	89a3      	ldrh	r3, [r4, #12]
 8006d5e:	061a      	lsls	r2, r3, #24
 8006d60:	d43c      	bmi.n	8006ddc <_fclose_r+0xbc>
 8006d62:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006d64:	b141      	cbz	r1, 8006d78 <_fclose_r+0x58>
 8006d66:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006d6a:	4299      	cmp	r1, r3
 8006d6c:	d002      	beq.n	8006d74 <_fclose_r+0x54>
 8006d6e:	4628      	mov	r0, r5
 8006d70:	f7fe fb22 	bl	80053b8 <_free_r>
 8006d74:	2300      	movs	r3, #0
 8006d76:	6323      	str	r3, [r4, #48]	; 0x30
 8006d78:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006d7a:	b121      	cbz	r1, 8006d86 <_fclose_r+0x66>
 8006d7c:	4628      	mov	r0, r5
 8006d7e:	f7fe fb1b 	bl	80053b8 <_free_r>
 8006d82:	2300      	movs	r3, #0
 8006d84:	6463      	str	r3, [r4, #68]	; 0x44
 8006d86:	f7fe faa1 	bl	80052cc <__sfp_lock_acquire>
 8006d8a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006d8c:	2200      	movs	r2, #0
 8006d8e:	07db      	lsls	r3, r3, #31
 8006d90:	81a2      	strh	r2, [r4, #12]
 8006d92:	d51f      	bpl.n	8006dd4 <_fclose_r+0xb4>
 8006d94:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d96:	f7fe fdbb 	bl	8005910 <__retarget_lock_close_recursive>
 8006d9a:	f7fe fa9d 	bl	80052d8 <__sfp_lock_release>
 8006d9e:	4630      	mov	r0, r6
 8006da0:	bd70      	pop	{r4, r5, r6, pc}
 8006da2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006da4:	f7fe fdb6 	bl	8005914 <__retarget_lock_acquire_recursive>
 8006da8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dac:	2b00      	cmp	r3, #0
 8006dae:	d1c7      	bne.n	8006d40 <_fclose_r+0x20>
 8006db0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006db2:	f016 0601 	ands.w	r6, r6, #1
 8006db6:	d016      	beq.n	8006de6 <_fclose_r+0xc6>
 8006db8:	2600      	movs	r6, #0
 8006dba:	4630      	mov	r0, r6
 8006dbc:	bd70      	pop	{r4, r5, r6, pc}
 8006dbe:	2b00      	cmp	r3, #0
 8006dc0:	d0fa      	beq.n	8006db8 <_fclose_r+0x98>
 8006dc2:	e7bd      	b.n	8006d40 <_fclose_r+0x20>
 8006dc4:	f7fe fa56 	bl	8005274 <__sinit>
 8006dc8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006dca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dce:	07d0      	lsls	r0, r2, #31
 8006dd0:	d4f5      	bmi.n	8006dbe <_fclose_r+0x9e>
 8006dd2:	e7b3      	b.n	8006d3c <_fclose_r+0x1c>
 8006dd4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dd6:	f7fe fd9f 	bl	8005918 <__retarget_lock_release_recursive>
 8006dda:	e7db      	b.n	8006d94 <_fclose_r+0x74>
 8006ddc:	6921      	ldr	r1, [r4, #16]
 8006dde:	4628      	mov	r0, r5
 8006de0:	f7fe faea 	bl	80053b8 <_free_r>
 8006de4:	e7bd      	b.n	8006d62 <_fclose_r+0x42>
 8006de6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006de8:	f7fe fd96 	bl	8005918 <__retarget_lock_release_recursive>
 8006dec:	4630      	mov	r0, r6
 8006dee:	bd70      	pop	{r4, r5, r6, pc}

08006df0 <__fputwc>:
 8006df0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006df4:	b082      	sub	sp, #8
 8006df6:	4681      	mov	r9, r0
 8006df8:	4688      	mov	r8, r1
 8006dfa:	4614      	mov	r4, r2
 8006dfc:	f000 f8a0 	bl	8006f40 <__locale_mb_cur_max>
 8006e00:	2801      	cmp	r0, #1
 8006e02:	d103      	bne.n	8006e0c <__fputwc+0x1c>
 8006e04:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006e08:	2bfe      	cmp	r3, #254	; 0xfe
 8006e0a:	d933      	bls.n	8006e74 <__fputwc+0x84>
 8006e0c:	4642      	mov	r2, r8
 8006e0e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006e12:	a901      	add	r1, sp, #4
 8006e14:	4648      	mov	r0, r9
 8006e16:	f000 f93b 	bl	8007090 <_wcrtomb_r>
 8006e1a:	1c42      	adds	r2, r0, #1
 8006e1c:	4606      	mov	r6, r0
 8006e1e:	d02f      	beq.n	8006e80 <__fputwc+0x90>
 8006e20:	b320      	cbz	r0, 8006e6c <__fputwc+0x7c>
 8006e22:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006e26:	2500      	movs	r5, #0
 8006e28:	f10d 0a04 	add.w	sl, sp, #4
 8006e2c:	e009      	b.n	8006e42 <__fputwc+0x52>
 8006e2e:	6823      	ldr	r3, [r4, #0]
 8006e30:	1c5a      	adds	r2, r3, #1
 8006e32:	6022      	str	r2, [r4, #0]
 8006e34:	f883 c000 	strb.w	ip, [r3]
 8006e38:	3501      	adds	r5, #1
 8006e3a:	42b5      	cmp	r5, r6
 8006e3c:	d216      	bcs.n	8006e6c <__fputwc+0x7c>
 8006e3e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006e42:	68a3      	ldr	r3, [r4, #8]
 8006e44:	3b01      	subs	r3, #1
 8006e46:	2b00      	cmp	r3, #0
 8006e48:	60a3      	str	r3, [r4, #8]
 8006e4a:	daf0      	bge.n	8006e2e <__fputwc+0x3e>
 8006e4c:	69a7      	ldr	r7, [r4, #24]
 8006e4e:	42bb      	cmp	r3, r7
 8006e50:	4661      	mov	r1, ip
 8006e52:	4622      	mov	r2, r4
 8006e54:	4648      	mov	r0, r9
 8006e56:	db02      	blt.n	8006e5e <__fputwc+0x6e>
 8006e58:	f1bc 0f0a 	cmp.w	ip, #10
 8006e5c:	d1e7      	bne.n	8006e2e <__fputwc+0x3e>
 8006e5e:	f000 f8bf 	bl	8006fe0 <__swbuf_r>
 8006e62:	1c43      	adds	r3, r0, #1
 8006e64:	d1e8      	bne.n	8006e38 <__fputwc+0x48>
 8006e66:	b002      	add	sp, #8
 8006e68:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e6c:	4640      	mov	r0, r8
 8006e6e:	b002      	add	sp, #8
 8006e70:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e74:	fa5f fc88 	uxtb.w	ip, r8
 8006e78:	4606      	mov	r6, r0
 8006e7a:	f88d c004 	strb.w	ip, [sp, #4]
 8006e7e:	e7d2      	b.n	8006e26 <__fputwc+0x36>
 8006e80:	89a3      	ldrh	r3, [r4, #12]
 8006e82:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006e86:	81a3      	strh	r3, [r4, #12]
 8006e88:	b002      	add	sp, #8
 8006e8a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e8e:	bf00      	nop

08006e90 <_fputwc_r>:
 8006e90:	b530      	push	{r4, r5, lr}
 8006e92:	4605      	mov	r5, r0
 8006e94:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006e96:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006e9a:	07c0      	lsls	r0, r0, #31
 8006e9c:	4614      	mov	r4, r2
 8006e9e:	b083      	sub	sp, #12
 8006ea0:	b29a      	uxth	r2, r3
 8006ea2:	d401      	bmi.n	8006ea8 <_fputwc_r+0x18>
 8006ea4:	0590      	lsls	r0, r2, #22
 8006ea6:	d51c      	bpl.n	8006ee2 <_fputwc_r+0x52>
 8006ea8:	0490      	lsls	r0, r2, #18
 8006eaa:	d406      	bmi.n	8006eba <_fputwc_r+0x2a>
 8006eac:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006eae:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006eb2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006eb6:	81a3      	strh	r3, [r4, #12]
 8006eb8:	6662      	str	r2, [r4, #100]	; 0x64
 8006eba:	4628      	mov	r0, r5
 8006ebc:	4622      	mov	r2, r4
 8006ebe:	f7ff ff97 	bl	8006df0 <__fputwc>
 8006ec2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ec4:	07da      	lsls	r2, r3, #31
 8006ec6:	4605      	mov	r5, r0
 8006ec8:	d402      	bmi.n	8006ed0 <_fputwc_r+0x40>
 8006eca:	89a3      	ldrh	r3, [r4, #12]
 8006ecc:	059b      	lsls	r3, r3, #22
 8006ece:	d502      	bpl.n	8006ed6 <_fputwc_r+0x46>
 8006ed0:	4628      	mov	r0, r5
 8006ed2:	b003      	add	sp, #12
 8006ed4:	bd30      	pop	{r4, r5, pc}
 8006ed6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ed8:	f7fe fd1e 	bl	8005918 <__retarget_lock_release_recursive>
 8006edc:	4628      	mov	r0, r5
 8006ede:	b003      	add	sp, #12
 8006ee0:	bd30      	pop	{r4, r5, pc}
 8006ee2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ee4:	9101      	str	r1, [sp, #4]
 8006ee6:	f7fe fd15 	bl	8005914 <__retarget_lock_acquire_recursive>
 8006eea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006eee:	9901      	ldr	r1, [sp, #4]
 8006ef0:	b29a      	uxth	r2, r3
 8006ef2:	e7d9      	b.n	8006ea8 <_fputwc_r+0x18>

08006ef4 <_fstat_r>:
 8006ef4:	b538      	push	{r3, r4, r5, lr}
 8006ef6:	460b      	mov	r3, r1
 8006ef8:	4c07      	ldr	r4, [pc, #28]	; (8006f18 <_fstat_r+0x24>)
 8006efa:	4605      	mov	r5, r0
 8006efc:	4611      	mov	r1, r2
 8006efe:	4618      	mov	r0, r3
 8006f00:	2300      	movs	r3, #0
 8006f02:	6023      	str	r3, [r4, #0]
 8006f04:	f7fb f9db 	bl	80022be <_fstat>
 8006f08:	1c43      	adds	r3, r0, #1
 8006f0a:	d000      	beq.n	8006f0e <_fstat_r+0x1a>
 8006f0c:	bd38      	pop	{r3, r4, r5, pc}
 8006f0e:	6823      	ldr	r3, [r4, #0]
 8006f10:	2b00      	cmp	r3, #0
 8006f12:	d0fb      	beq.n	8006f0c <_fstat_r+0x18>
 8006f14:	602b      	str	r3, [r5, #0]
 8006f16:	bd38      	pop	{r3, r4, r5, pc}
 8006f18:	20000ca8 	.word	0x20000ca8

08006f1c <_isatty_r>:
 8006f1c:	b538      	push	{r3, r4, r5, lr}
 8006f1e:	4c07      	ldr	r4, [pc, #28]	; (8006f3c <_isatty_r+0x20>)
 8006f20:	2300      	movs	r3, #0
 8006f22:	4605      	mov	r5, r0
 8006f24:	4608      	mov	r0, r1
 8006f26:	6023      	str	r3, [r4, #0]
 8006f28:	f7fb f9cf 	bl	80022ca <_isatty>
 8006f2c:	1c43      	adds	r3, r0, #1
 8006f2e:	d000      	beq.n	8006f32 <_isatty_r+0x16>
 8006f30:	bd38      	pop	{r3, r4, r5, pc}
 8006f32:	6823      	ldr	r3, [r4, #0]
 8006f34:	2b00      	cmp	r3, #0
 8006f36:	d0fb      	beq.n	8006f30 <_isatty_r+0x14>
 8006f38:	602b      	str	r3, [r5, #0]
 8006f3a:	bd38      	pop	{r3, r4, r5, pc}
 8006f3c:	20000ca8 	.word	0x20000ca8

08006f40 <__locale_mb_cur_max>:
 8006f40:	4b04      	ldr	r3, [pc, #16]	; (8006f54 <__locale_mb_cur_max+0x14>)
 8006f42:	4a05      	ldr	r2, [pc, #20]	; (8006f58 <__locale_mb_cur_max+0x18>)
 8006f44:	681b      	ldr	r3, [r3, #0]
 8006f46:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006f48:	2b00      	cmp	r3, #0
 8006f4a:	bf08      	it	eq
 8006f4c:	4613      	moveq	r3, r2
 8006f4e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006f52:	4770      	bx	lr
 8006f54:	20000018 	.word	0x20000018
 8006f58:	2000085c 	.word	0x2000085c

08006f5c <_lseek_r>:
 8006f5c:	b570      	push	{r4, r5, r6, lr}
 8006f5e:	460d      	mov	r5, r1
 8006f60:	4c08      	ldr	r4, [pc, #32]	; (8006f84 <_lseek_r+0x28>)
 8006f62:	4611      	mov	r1, r2
 8006f64:	4606      	mov	r6, r0
 8006f66:	461a      	mov	r2, r3
 8006f68:	4628      	mov	r0, r5
 8006f6a:	2300      	movs	r3, #0
 8006f6c:	6023      	str	r3, [r4, #0]
 8006f6e:	f7fb f9ae 	bl	80022ce <_lseek>
 8006f72:	1c43      	adds	r3, r0, #1
 8006f74:	d000      	beq.n	8006f78 <_lseek_r+0x1c>
 8006f76:	bd70      	pop	{r4, r5, r6, pc}
 8006f78:	6823      	ldr	r3, [r4, #0]
 8006f7a:	2b00      	cmp	r3, #0
 8006f7c:	d0fb      	beq.n	8006f76 <_lseek_r+0x1a>
 8006f7e:	6033      	str	r3, [r6, #0]
 8006f80:	bd70      	pop	{r4, r5, r6, pc}
 8006f82:	bf00      	nop
 8006f84:	20000ca8 	.word	0x20000ca8

08006f88 <__ascii_mbtowc>:
 8006f88:	b082      	sub	sp, #8
 8006f8a:	b149      	cbz	r1, 8006fa0 <__ascii_mbtowc+0x18>
 8006f8c:	b15a      	cbz	r2, 8006fa6 <__ascii_mbtowc+0x1e>
 8006f8e:	b16b      	cbz	r3, 8006fac <__ascii_mbtowc+0x24>
 8006f90:	7813      	ldrb	r3, [r2, #0]
 8006f92:	600b      	str	r3, [r1, #0]
 8006f94:	7812      	ldrb	r2, [r2, #0]
 8006f96:	1c10      	adds	r0, r2, #0
 8006f98:	bf18      	it	ne
 8006f9a:	2001      	movne	r0, #1
 8006f9c:	b002      	add	sp, #8
 8006f9e:	4770      	bx	lr
 8006fa0:	a901      	add	r1, sp, #4
 8006fa2:	2a00      	cmp	r2, #0
 8006fa4:	d1f3      	bne.n	8006f8e <__ascii_mbtowc+0x6>
 8006fa6:	4610      	mov	r0, r2
 8006fa8:	b002      	add	sp, #8
 8006faa:	4770      	bx	lr
 8006fac:	f06f 0001 	mvn.w	r0, #1
 8006fb0:	e7f4      	b.n	8006f9c <__ascii_mbtowc+0x14>
 8006fb2:	bf00      	nop

08006fb4 <_read_r>:
 8006fb4:	b570      	push	{r4, r5, r6, lr}
 8006fb6:	460d      	mov	r5, r1
 8006fb8:	4c08      	ldr	r4, [pc, #32]	; (8006fdc <_read_r+0x28>)
 8006fba:	4611      	mov	r1, r2
 8006fbc:	4606      	mov	r6, r0
 8006fbe:	461a      	mov	r2, r3
 8006fc0:	4628      	mov	r0, r5
 8006fc2:	2300      	movs	r3, #0
 8006fc4:	6023      	str	r3, [r4, #0]
 8006fc6:	f7fb f916 	bl	80021f6 <_read>
 8006fca:	1c43      	adds	r3, r0, #1
 8006fcc:	d000      	beq.n	8006fd0 <_read_r+0x1c>
 8006fce:	bd70      	pop	{r4, r5, r6, pc}
 8006fd0:	6823      	ldr	r3, [r4, #0]
 8006fd2:	2b00      	cmp	r3, #0
 8006fd4:	d0fb      	beq.n	8006fce <_read_r+0x1a>
 8006fd6:	6033      	str	r3, [r6, #0]
 8006fd8:	bd70      	pop	{r4, r5, r6, pc}
 8006fda:	bf00      	nop
 8006fdc:	20000ca8 	.word	0x20000ca8

08006fe0 <__swbuf_r>:
 8006fe0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006fe2:	460d      	mov	r5, r1
 8006fe4:	4614      	mov	r4, r2
 8006fe6:	4606      	mov	r6, r0
 8006fe8:	b110      	cbz	r0, 8006ff0 <__swbuf_r+0x10>
 8006fea:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006fec:	2b00      	cmp	r3, #0
 8006fee:	d043      	beq.n	8007078 <__swbuf_r+0x98>
 8006ff0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ff4:	69a3      	ldr	r3, [r4, #24]
 8006ff6:	60a3      	str	r3, [r4, #8]
 8006ff8:	b291      	uxth	r1, r2
 8006ffa:	0708      	lsls	r0, r1, #28
 8006ffc:	d51b      	bpl.n	8007036 <__swbuf_r+0x56>
 8006ffe:	6923      	ldr	r3, [r4, #16]
 8007000:	b1cb      	cbz	r3, 8007036 <__swbuf_r+0x56>
 8007002:	b2ed      	uxtb	r5, r5
 8007004:	0489      	lsls	r1, r1, #18
 8007006:	462f      	mov	r7, r5
 8007008:	d522      	bpl.n	8007050 <__swbuf_r+0x70>
 800700a:	6822      	ldr	r2, [r4, #0]
 800700c:	6961      	ldr	r1, [r4, #20]
 800700e:	1ad3      	subs	r3, r2, r3
 8007010:	4299      	cmp	r1, r3
 8007012:	dd29      	ble.n	8007068 <__swbuf_r+0x88>
 8007014:	3301      	adds	r3, #1
 8007016:	68a1      	ldr	r1, [r4, #8]
 8007018:	1c50      	adds	r0, r2, #1
 800701a:	3901      	subs	r1, #1
 800701c:	60a1      	str	r1, [r4, #8]
 800701e:	6020      	str	r0, [r4, #0]
 8007020:	7015      	strb	r5, [r2, #0]
 8007022:	6962      	ldr	r2, [r4, #20]
 8007024:	429a      	cmp	r2, r3
 8007026:	d02a      	beq.n	800707e <__swbuf_r+0x9e>
 8007028:	89a3      	ldrh	r3, [r4, #12]
 800702a:	07db      	lsls	r3, r3, #31
 800702c:	d501      	bpl.n	8007032 <__swbuf_r+0x52>
 800702e:	2d0a      	cmp	r5, #10
 8007030:	d025      	beq.n	800707e <__swbuf_r+0x9e>
 8007032:	4638      	mov	r0, r7
 8007034:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007036:	4621      	mov	r1, r4
 8007038:	4630      	mov	r0, r6
 800703a:	f7fc fffd 	bl	8004038 <__swsetup_r>
 800703e:	bb20      	cbnz	r0, 800708a <__swbuf_r+0xaa>
 8007040:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007044:	6923      	ldr	r3, [r4, #16]
 8007046:	b291      	uxth	r1, r2
 8007048:	b2ed      	uxtb	r5, r5
 800704a:	0489      	lsls	r1, r1, #18
 800704c:	462f      	mov	r7, r5
 800704e:	d4dc      	bmi.n	800700a <__swbuf_r+0x2a>
 8007050:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007052:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007056:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800705a:	81a2      	strh	r2, [r4, #12]
 800705c:	6822      	ldr	r2, [r4, #0]
 800705e:	6661      	str	r1, [r4, #100]	; 0x64
 8007060:	6961      	ldr	r1, [r4, #20]
 8007062:	1ad3      	subs	r3, r2, r3
 8007064:	4299      	cmp	r1, r3
 8007066:	dcd5      	bgt.n	8007014 <__swbuf_r+0x34>
 8007068:	4621      	mov	r1, r4
 800706a:	4630      	mov	r0, r6
 800706c:	f7fe f8a6 	bl	80051bc <_fflush_r>
 8007070:	b958      	cbnz	r0, 800708a <__swbuf_r+0xaa>
 8007072:	6822      	ldr	r2, [r4, #0]
 8007074:	2301      	movs	r3, #1
 8007076:	e7ce      	b.n	8007016 <__swbuf_r+0x36>
 8007078:	f7fe f8fc 	bl	8005274 <__sinit>
 800707c:	e7b8      	b.n	8006ff0 <__swbuf_r+0x10>
 800707e:	4621      	mov	r1, r4
 8007080:	4630      	mov	r0, r6
 8007082:	f7fe f89b 	bl	80051bc <_fflush_r>
 8007086:	2800      	cmp	r0, #0
 8007088:	d0d3      	beq.n	8007032 <__swbuf_r+0x52>
 800708a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800708e:	e7d0      	b.n	8007032 <__swbuf_r+0x52>

08007090 <_wcrtomb_r>:
 8007090:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007092:	4c11      	ldr	r4, [pc, #68]	; (80070d8 <_wcrtomb_r+0x48>)
 8007094:	6824      	ldr	r4, [r4, #0]
 8007096:	b085      	sub	sp, #20
 8007098:	4606      	mov	r6, r0
 800709a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800709c:	461f      	mov	r7, r3
 800709e:	b151      	cbz	r1, 80070b6 <_wcrtomb_r+0x26>
 80070a0:	4d0e      	ldr	r5, [pc, #56]	; (80070dc <_wcrtomb_r+0x4c>)
 80070a2:	2c00      	cmp	r4, #0
 80070a4:	bf08      	it	eq
 80070a6:	462c      	moveq	r4, r5
 80070a8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80070ac:	47a0      	blx	r4
 80070ae:	1c43      	adds	r3, r0, #1
 80070b0:	d00c      	beq.n	80070cc <_wcrtomb_r+0x3c>
 80070b2:	b005      	add	sp, #20
 80070b4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80070b6:	4a09      	ldr	r2, [pc, #36]	; (80070dc <_wcrtomb_r+0x4c>)
 80070b8:	2c00      	cmp	r4, #0
 80070ba:	bf08      	it	eq
 80070bc:	4614      	moveq	r4, r2
 80070be:	460a      	mov	r2, r1
 80070c0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80070c4:	a901      	add	r1, sp, #4
 80070c6:	47a0      	blx	r4
 80070c8:	1c43      	adds	r3, r0, #1
 80070ca:	d1f2      	bne.n	80070b2 <_wcrtomb_r+0x22>
 80070cc:	2200      	movs	r2, #0
 80070ce:	238a      	movs	r3, #138	; 0x8a
 80070d0:	603a      	str	r2, [r7, #0]
 80070d2:	6033      	str	r3, [r6, #0]
 80070d4:	b005      	add	sp, #20
 80070d6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80070d8:	20000018 	.word	0x20000018
 80070dc:	2000085c 	.word	0x2000085c

080070e0 <__ascii_wctomb>:
 80070e0:	b121      	cbz	r1, 80070ec <__ascii_wctomb+0xc>
 80070e2:	2aff      	cmp	r2, #255	; 0xff
 80070e4:	d804      	bhi.n	80070f0 <__ascii_wctomb+0x10>
 80070e6:	700a      	strb	r2, [r1, #0]
 80070e8:	2001      	movs	r0, #1
 80070ea:	4770      	bx	lr
 80070ec:	4608      	mov	r0, r1
 80070ee:	4770      	bx	lr
 80070f0:	238a      	movs	r3, #138	; 0x8a
 80070f2:	6003      	str	r3, [r0, #0]
 80070f4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80070f8:	4770      	bx	lr
 80070fa:	bf00      	nop

080070fc <_init>:
 80070fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80070fe:	bf00      	nop
 8007100:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007102:	bc08      	pop	{r3}
 8007104:	469e      	mov	lr, r3
 8007106:	4770      	bx	lr

08007108 <_fini>:
 8007108:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800710a:	bf00      	nop
 800710c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800710e:	bc08      	pop	{r3}
 8007110:	469e      	mov	lr, r3
 8007112:	4770      	bx	lr
 8007114:	0000      	movs	r0, r0
	...
