
hello.elf:     file format elf32-littlearm


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
 80001e0:	08008a64 	.word	0x08008a64

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
 80001fc:	08008a64 	.word	0x08008a64

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

08000500 <__aeabi_memset>:
 8000500:	b470      	push	{r4, r5, r6}
 8000502:	0784      	lsls	r4, r0, #30
 8000504:	d046      	beq.n	8000594 <__aeabi_memset+0x94>
 8000506:	1e4c      	subs	r4, r1, #1
 8000508:	2900      	cmp	r1, #0
 800050a:	d041      	beq.n	8000590 <__aeabi_memset+0x90>
 800050c:	b2d5      	uxtb	r5, r2
 800050e:	4603      	mov	r3, r0
 8000510:	e002      	b.n	8000518 <__aeabi_memset+0x18>
 8000512:	1e61      	subs	r1, r4, #1
 8000514:	b3e4      	cbz	r4, 8000590 <__aeabi_memset+0x90>
 8000516:	460c      	mov	r4, r1
 8000518:	f803 5b01 	strb.w	r5, [r3], #1
 800051c:	0799      	lsls	r1, r3, #30
 800051e:	d1f8      	bne.n	8000512 <__aeabi_memset+0x12>
 8000520:	2c03      	cmp	r4, #3
 8000522:	d92e      	bls.n	8000582 <__aeabi_memset+0x82>
 8000524:	b2d5      	uxtb	r5, r2
 8000526:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800052a:	2c0f      	cmp	r4, #15
 800052c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8000530:	d919      	bls.n	8000566 <__aeabi_memset+0x66>
 8000532:	4626      	mov	r6, r4
 8000534:	f103 0110 	add.w	r1, r3, #16
 8000538:	3e10      	subs	r6, #16
 800053a:	2e0f      	cmp	r6, #15
 800053c:	f841 5c10 	str.w	r5, [r1, #-16]
 8000540:	f841 5c0c 	str.w	r5, [r1, #-12]
 8000544:	f841 5c08 	str.w	r5, [r1, #-8]
 8000548:	f841 5c04 	str.w	r5, [r1, #-4]
 800054c:	f101 0110 	add.w	r1, r1, #16
 8000550:	d8f2      	bhi.n	8000538 <__aeabi_memset+0x38>
 8000552:	f1a4 0110 	sub.w	r1, r4, #16
 8000556:	f021 010f 	bic.w	r1, r1, #15
 800055a:	f004 040f 	and.w	r4, r4, #15
 800055e:	3110      	adds	r1, #16
 8000560:	2c03      	cmp	r4, #3
 8000562:	440b      	add	r3, r1
 8000564:	d90d      	bls.n	8000582 <__aeabi_memset+0x82>
 8000566:	461e      	mov	r6, r3
 8000568:	4621      	mov	r1, r4
 800056a:	3904      	subs	r1, #4
 800056c:	2903      	cmp	r1, #3
 800056e:	f846 5b04 	str.w	r5, [r6], #4
 8000572:	d8fa      	bhi.n	800056a <__aeabi_memset+0x6a>
 8000574:	1f21      	subs	r1, r4, #4
 8000576:	f021 0103 	bic.w	r1, r1, #3
 800057a:	3104      	adds	r1, #4
 800057c:	440b      	add	r3, r1
 800057e:	f004 0403 	and.w	r4, r4, #3
 8000582:	b12c      	cbz	r4, 8000590 <__aeabi_memset+0x90>
 8000584:	b2d2      	uxtb	r2, r2
 8000586:	441c      	add	r4, r3
 8000588:	f803 2b01 	strb.w	r2, [r3], #1
 800058c:	42a3      	cmp	r3, r4
 800058e:	d1fb      	bne.n	8000588 <__aeabi_memset+0x88>
 8000590:	bc70      	pop	{r4, r5, r6}
 8000592:	4770      	bx	lr
 8000594:	460c      	mov	r4, r1
 8000596:	4603      	mov	r3, r0
 8000598:	e7c2      	b.n	8000520 <__aeabi_memset+0x20>
	...

0800059c <memcpy>:
 800059c:	4684      	mov	ip, r0
 800059e:	ea41 0300 	orr.w	r3, r1, r0
 80005a2:	f013 0303 	ands.w	r3, r3, #3
 80005a6:	d16d      	bne.n	8000684 <memcpy+0xe8>
 80005a8:	3a40      	subs	r2, #64	; 0x40
 80005aa:	d341      	bcc.n	8000630 <memcpy+0x94>
 80005ac:	f851 3b04 	ldr.w	r3, [r1], #4
 80005b0:	f840 3b04 	str.w	r3, [r0], #4
 80005b4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005b8:	f840 3b04 	str.w	r3, [r0], #4
 80005bc:	f851 3b04 	ldr.w	r3, [r1], #4
 80005c0:	f840 3b04 	str.w	r3, [r0], #4
 80005c4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005c8:	f840 3b04 	str.w	r3, [r0], #4
 80005cc:	f851 3b04 	ldr.w	r3, [r1], #4
 80005d0:	f840 3b04 	str.w	r3, [r0], #4
 80005d4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005d8:	f840 3b04 	str.w	r3, [r0], #4
 80005dc:	f851 3b04 	ldr.w	r3, [r1], #4
 80005e0:	f840 3b04 	str.w	r3, [r0], #4
 80005e4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005e8:	f840 3b04 	str.w	r3, [r0], #4
 80005ec:	f851 3b04 	ldr.w	r3, [r1], #4
 80005f0:	f840 3b04 	str.w	r3, [r0], #4
 80005f4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005f8:	f840 3b04 	str.w	r3, [r0], #4
 80005fc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000600:	f840 3b04 	str.w	r3, [r0], #4
 8000604:	f851 3b04 	ldr.w	r3, [r1], #4
 8000608:	f840 3b04 	str.w	r3, [r0], #4
 800060c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000610:	f840 3b04 	str.w	r3, [r0], #4
 8000614:	f851 3b04 	ldr.w	r3, [r1], #4
 8000618:	f840 3b04 	str.w	r3, [r0], #4
 800061c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000620:	f840 3b04 	str.w	r3, [r0], #4
 8000624:	f851 3b04 	ldr.w	r3, [r1], #4
 8000628:	f840 3b04 	str.w	r3, [r0], #4
 800062c:	3a40      	subs	r2, #64	; 0x40
 800062e:	d2bd      	bcs.n	80005ac <memcpy+0x10>
 8000630:	3230      	adds	r2, #48	; 0x30
 8000632:	d311      	bcc.n	8000658 <memcpy+0xbc>
 8000634:	f851 3b04 	ldr.w	r3, [r1], #4
 8000638:	f840 3b04 	str.w	r3, [r0], #4
 800063c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000640:	f840 3b04 	str.w	r3, [r0], #4
 8000644:	f851 3b04 	ldr.w	r3, [r1], #4
 8000648:	f840 3b04 	str.w	r3, [r0], #4
 800064c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000650:	f840 3b04 	str.w	r3, [r0], #4
 8000654:	3a10      	subs	r2, #16
 8000656:	d2ed      	bcs.n	8000634 <memcpy+0x98>
 8000658:	320c      	adds	r2, #12
 800065a:	d305      	bcc.n	8000668 <memcpy+0xcc>
 800065c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000660:	f840 3b04 	str.w	r3, [r0], #4
 8000664:	3a04      	subs	r2, #4
 8000666:	d2f9      	bcs.n	800065c <memcpy+0xc0>
 8000668:	3204      	adds	r2, #4
 800066a:	d008      	beq.n	800067e <memcpy+0xe2>
 800066c:	07d2      	lsls	r2, r2, #31
 800066e:	bf1c      	itt	ne
 8000670:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000674:	f800 3b01 	strbne.w	r3, [r0], #1
 8000678:	d301      	bcc.n	800067e <memcpy+0xe2>
 800067a:	880b      	ldrh	r3, [r1, #0]
 800067c:	8003      	strh	r3, [r0, #0]
 800067e:	4660      	mov	r0, ip
 8000680:	4770      	bx	lr
 8000682:	bf00      	nop
 8000684:	2a08      	cmp	r2, #8
 8000686:	d313      	bcc.n	80006b0 <memcpy+0x114>
 8000688:	078b      	lsls	r3, r1, #30
 800068a:	d08d      	beq.n	80005a8 <memcpy+0xc>
 800068c:	f010 0303 	ands.w	r3, r0, #3
 8000690:	d08a      	beq.n	80005a8 <memcpy+0xc>
 8000692:	f1c3 0304 	rsb	r3, r3, #4
 8000696:	1ad2      	subs	r2, r2, r3
 8000698:	07db      	lsls	r3, r3, #31
 800069a:	bf1c      	itt	ne
 800069c:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80006a0:	f800 3b01 	strbne.w	r3, [r0], #1
 80006a4:	d380      	bcc.n	80005a8 <memcpy+0xc>
 80006a6:	f831 3b02 	ldrh.w	r3, [r1], #2
 80006aa:	f820 3b02 	strh.w	r3, [r0], #2
 80006ae:	e77b      	b.n	80005a8 <memcpy+0xc>
 80006b0:	3a04      	subs	r2, #4
 80006b2:	d3d9      	bcc.n	8000668 <memcpy+0xcc>
 80006b4:	3a01      	subs	r2, #1
 80006b6:	f811 3b01 	ldrb.w	r3, [r1], #1
 80006ba:	f800 3b01 	strb.w	r3, [r0], #1
 80006be:	d2f9      	bcs.n	80006b4 <memcpy+0x118>
 80006c0:	780b      	ldrb	r3, [r1, #0]
 80006c2:	7003      	strb	r3, [r0, #0]
 80006c4:	784b      	ldrb	r3, [r1, #1]
 80006c6:	7043      	strb	r3, [r0, #1]
 80006c8:	788b      	ldrb	r3, [r1, #2]
 80006ca:	7083      	strb	r3, [r0, #2]
 80006cc:	4660      	mov	r0, ip
 80006ce:	4770      	bx	lr
	...

08000700 <strlen>:
 8000700:	f890 f000 	pld	[r0]
 8000704:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000708:	f020 0107 	bic.w	r1, r0, #7
 800070c:	f06f 0c00 	mvn.w	ip, #0
 8000710:	f010 0407 	ands.w	r4, r0, #7
 8000714:	f891 f020 	pld	[r1, #32]
 8000718:	f040 8049 	bne.w	80007ae <strlen+0xae>
 800071c:	f04f 0400 	mov.w	r4, #0
 8000720:	f06f 0007 	mvn.w	r0, #7
 8000724:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000728:	f891 f040 	pld	[r1, #64]	; 0x40
 800072c:	f100 0008 	add.w	r0, r0, #8
 8000730:	fa82 f24c 	uadd8	r2, r2, ip
 8000734:	faa4 f28c 	sel	r2, r4, ip
 8000738:	fa83 f34c 	uadd8	r3, r3, ip
 800073c:	faa2 f38c 	sel	r3, r2, ip
 8000740:	bb4b      	cbnz	r3, 8000796 <strlen+0x96>
 8000742:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000746:	fa82 f24c 	uadd8	r2, r2, ip
 800074a:	f100 0008 	add.w	r0, r0, #8
 800074e:	faa4 f28c 	sel	r2, r4, ip
 8000752:	fa83 f34c 	uadd8	r3, r3, ip
 8000756:	faa2 f38c 	sel	r3, r2, ip
 800075a:	b9e3      	cbnz	r3, 8000796 <strlen+0x96>
 800075c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8000760:	fa82 f24c 	uadd8	r2, r2, ip
 8000764:	f100 0008 	add.w	r0, r0, #8
 8000768:	faa4 f28c 	sel	r2, r4, ip
 800076c:	fa83 f34c 	uadd8	r3, r3, ip
 8000770:	faa2 f38c 	sel	r3, r2, ip
 8000774:	b97b      	cbnz	r3, 8000796 <strlen+0x96>
 8000776:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 800077a:	f101 0120 	add.w	r1, r1, #32
 800077e:	fa82 f24c 	uadd8	r2, r2, ip
 8000782:	f100 0008 	add.w	r0, r0, #8
 8000786:	faa4 f28c 	sel	r2, r4, ip
 800078a:	fa83 f34c 	uadd8	r3, r3, ip
 800078e:	faa2 f38c 	sel	r3, r2, ip
 8000792:	2b00      	cmp	r3, #0
 8000794:	d0c6      	beq.n	8000724 <strlen+0x24>
 8000796:	2a00      	cmp	r2, #0
 8000798:	bf04      	itt	eq
 800079a:	3004      	addeq	r0, #4
 800079c:	461a      	moveq	r2, r3
 800079e:	ba12      	rev	r2, r2
 80007a0:	fab2 f282 	clz	r2, r2
 80007a4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 80007a8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80007ac:	4770      	bx	lr
 80007ae:	e9d1 2300 	ldrd	r2, r3, [r1]
 80007b2:	f004 0503 	and.w	r5, r4, #3
 80007b6:	f1c4 0000 	rsb	r0, r4, #0
 80007ba:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80007be:	f014 0f04 	tst.w	r4, #4
 80007c2:	f891 f040 	pld	[r1, #64]	; 0x40
 80007c6:	fa0c f505 	lsl.w	r5, ip, r5
 80007ca:	ea62 0205 	orn	r2, r2, r5
 80007ce:	bf1c      	itt	ne
 80007d0:	ea63 0305 	ornne	r3, r3, r5
 80007d4:	4662      	movne	r2, ip
 80007d6:	f04f 0400 	mov.w	r4, #0
 80007da:	e7a9      	b.n	8000730 <strlen+0x30>
 80007dc:	0000      	movs	r0, r0
	...

080007e0 <memchr>:
 80007e0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 80007e4:	2a10      	cmp	r2, #16
 80007e6:	db2b      	blt.n	8000840 <memchr+0x60>
 80007e8:	f010 0f07 	tst.w	r0, #7
 80007ec:	d008      	beq.n	8000800 <memchr+0x20>
 80007ee:	f810 3b01 	ldrb.w	r3, [r0], #1
 80007f2:	3a01      	subs	r2, #1
 80007f4:	428b      	cmp	r3, r1
 80007f6:	d02d      	beq.n	8000854 <memchr+0x74>
 80007f8:	f010 0f07 	tst.w	r0, #7
 80007fc:	b342      	cbz	r2, 8000850 <memchr+0x70>
 80007fe:	d1f6      	bne.n	80007ee <memchr+0xe>
 8000800:	b4f0      	push	{r4, r5, r6, r7}
 8000802:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000806:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800080a:	f022 0407 	bic.w	r4, r2, #7
 800080e:	f07f 0700 	mvns.w	r7, #0
 8000812:	2300      	movs	r3, #0
 8000814:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000818:	3c08      	subs	r4, #8
 800081a:	ea85 0501 	eor.w	r5, r5, r1
 800081e:	ea86 0601 	eor.w	r6, r6, r1
 8000822:	fa85 f547 	uadd8	r5, r5, r7
 8000826:	faa3 f587 	sel	r5, r3, r7
 800082a:	fa86 f647 	uadd8	r6, r6, r7
 800082e:	faa5 f687 	sel	r6, r5, r7
 8000832:	b98e      	cbnz	r6, 8000858 <memchr+0x78>
 8000834:	d1ee      	bne.n	8000814 <memchr+0x34>
 8000836:	bcf0      	pop	{r4, r5, r6, r7}
 8000838:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800083c:	f002 0207 	and.w	r2, r2, #7
 8000840:	b132      	cbz	r2, 8000850 <memchr+0x70>
 8000842:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000846:	3a01      	subs	r2, #1
 8000848:	ea83 0301 	eor.w	r3, r3, r1
 800084c:	b113      	cbz	r3, 8000854 <memchr+0x74>
 800084e:	d1f8      	bne.n	8000842 <memchr+0x62>
 8000850:	2000      	movs	r0, #0
 8000852:	4770      	bx	lr
 8000854:	3801      	subs	r0, #1
 8000856:	4770      	bx	lr
 8000858:	2d00      	cmp	r5, #0
 800085a:	bf06      	itte	eq
 800085c:	4635      	moveq	r5, r6
 800085e:	3803      	subeq	r0, #3
 8000860:	3807      	subne	r0, #7
 8000862:	f015 0f01 	tst.w	r5, #1
 8000866:	d107      	bne.n	8000878 <memchr+0x98>
 8000868:	3001      	adds	r0, #1
 800086a:	f415 7f80 	tst.w	r5, #256	; 0x100
 800086e:	bf02      	ittt	eq
 8000870:	3001      	addeq	r0, #1
 8000872:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8000876:	3001      	addeq	r0, #1
 8000878:	bcf0      	pop	{r4, r5, r6, r7}
 800087a:	3801      	subs	r0, #1
 800087c:	4770      	bx	lr
 800087e:	bf00      	nop

08000880 <__aeabi_drsub>:
 8000880:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8000884:	e002      	b.n	800088c <__adddf3>
 8000886:	bf00      	nop

08000888 <__aeabi_dsub>:
 8000888:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

0800088c <__adddf3>:
 800088c:	b530      	push	{r4, r5, lr}
 800088e:	ea4f 0441 	mov.w	r4, r1, lsl #1
 8000892:	ea4f 0543 	mov.w	r5, r3, lsl #1
 8000896:	ea94 0f05 	teq	r4, r5
 800089a:	bf08      	it	eq
 800089c:	ea90 0f02 	teqeq	r0, r2
 80008a0:	bf1f      	itttt	ne
 80008a2:	ea54 0c00 	orrsne.w	ip, r4, r0
 80008a6:	ea55 0c02 	orrsne.w	ip, r5, r2
 80008aa:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 80008ae:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80008b2:	f000 80e2 	beq.w	8000a7a <__adddf3+0x1ee>
 80008b6:	ea4f 5454 	mov.w	r4, r4, lsr #21
 80008ba:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 80008be:	bfb8      	it	lt
 80008c0:	426d      	neglt	r5, r5
 80008c2:	dd0c      	ble.n	80008de <__adddf3+0x52>
 80008c4:	442c      	add	r4, r5
 80008c6:	ea80 0202 	eor.w	r2, r0, r2
 80008ca:	ea81 0303 	eor.w	r3, r1, r3
 80008ce:	ea82 0000 	eor.w	r0, r2, r0
 80008d2:	ea83 0101 	eor.w	r1, r3, r1
 80008d6:	ea80 0202 	eor.w	r2, r0, r2
 80008da:	ea81 0303 	eor.w	r3, r1, r3
 80008de:	2d36      	cmp	r5, #54	; 0x36
 80008e0:	bf88      	it	hi
 80008e2:	bd30      	pophi	{r4, r5, pc}
 80008e4:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80008e8:	ea4f 3101 	mov.w	r1, r1, lsl #12
 80008ec:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 80008f0:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 80008f4:	d002      	beq.n	80008fc <__adddf3+0x70>
 80008f6:	4240      	negs	r0, r0
 80008f8:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 80008fc:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8000900:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000904:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8000908:	d002      	beq.n	8000910 <__adddf3+0x84>
 800090a:	4252      	negs	r2, r2
 800090c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8000910:	ea94 0f05 	teq	r4, r5
 8000914:	f000 80a7 	beq.w	8000a66 <__adddf3+0x1da>
 8000918:	f1a4 0401 	sub.w	r4, r4, #1
 800091c:	f1d5 0e20 	rsbs	lr, r5, #32
 8000920:	db0d      	blt.n	800093e <__adddf3+0xb2>
 8000922:	fa02 fc0e 	lsl.w	ip, r2, lr
 8000926:	fa22 f205 	lsr.w	r2, r2, r5
 800092a:	1880      	adds	r0, r0, r2
 800092c:	f141 0100 	adc.w	r1, r1, #0
 8000930:	fa03 f20e 	lsl.w	r2, r3, lr
 8000934:	1880      	adds	r0, r0, r2
 8000936:	fa43 f305 	asr.w	r3, r3, r5
 800093a:	4159      	adcs	r1, r3
 800093c:	e00e      	b.n	800095c <__adddf3+0xd0>
 800093e:	f1a5 0520 	sub.w	r5, r5, #32
 8000942:	f10e 0e20 	add.w	lr, lr, #32
 8000946:	2a01      	cmp	r2, #1
 8000948:	fa03 fc0e 	lsl.w	ip, r3, lr
 800094c:	bf28      	it	cs
 800094e:	f04c 0c02 	orrcs.w	ip, ip, #2
 8000952:	fa43 f305 	asr.w	r3, r3, r5
 8000956:	18c0      	adds	r0, r0, r3
 8000958:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 800095c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000960:	d507      	bpl.n	8000972 <__adddf3+0xe6>
 8000962:	f04f 0e00 	mov.w	lr, #0
 8000966:	f1dc 0c00 	rsbs	ip, ip, #0
 800096a:	eb7e 0000 	sbcs.w	r0, lr, r0
 800096e:	eb6e 0101 	sbc.w	r1, lr, r1
 8000972:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8000976:	d31b      	bcc.n	80009b0 <__adddf3+0x124>
 8000978:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 800097c:	d30c      	bcc.n	8000998 <__adddf3+0x10c>
 800097e:	0849      	lsrs	r1, r1, #1
 8000980:	ea5f 0030 	movs.w	r0, r0, rrx
 8000984:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8000988:	f104 0401 	add.w	r4, r4, #1
 800098c:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8000990:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8000994:	f080 809a 	bcs.w	8000acc <__adddf3+0x240>
 8000998:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 800099c:	bf08      	it	eq
 800099e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80009a2:	f150 0000 	adcs.w	r0, r0, #0
 80009a6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80009aa:	ea41 0105 	orr.w	r1, r1, r5
 80009ae:	bd30      	pop	{r4, r5, pc}
 80009b0:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 80009b4:	4140      	adcs	r0, r0
 80009b6:	eb41 0101 	adc.w	r1, r1, r1
 80009ba:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80009be:	f1a4 0401 	sub.w	r4, r4, #1
 80009c2:	d1e9      	bne.n	8000998 <__adddf3+0x10c>
 80009c4:	f091 0f00 	teq	r1, #0
 80009c8:	bf04      	itt	eq
 80009ca:	4601      	moveq	r1, r0
 80009cc:	2000      	moveq	r0, #0
 80009ce:	fab1 f381 	clz	r3, r1
 80009d2:	bf08      	it	eq
 80009d4:	3320      	addeq	r3, #32
 80009d6:	f1a3 030b 	sub.w	r3, r3, #11
 80009da:	f1b3 0220 	subs.w	r2, r3, #32
 80009de:	da0c      	bge.n	80009fa <__adddf3+0x16e>
 80009e0:	320c      	adds	r2, #12
 80009e2:	dd08      	ble.n	80009f6 <__adddf3+0x16a>
 80009e4:	f102 0c14 	add.w	ip, r2, #20
 80009e8:	f1c2 020c 	rsb	r2, r2, #12
 80009ec:	fa01 f00c 	lsl.w	r0, r1, ip
 80009f0:	fa21 f102 	lsr.w	r1, r1, r2
 80009f4:	e00c      	b.n	8000a10 <__adddf3+0x184>
 80009f6:	f102 0214 	add.w	r2, r2, #20
 80009fa:	bfd8      	it	le
 80009fc:	f1c2 0c20 	rsble	ip, r2, #32
 8000a00:	fa01 f102 	lsl.w	r1, r1, r2
 8000a04:	fa20 fc0c 	lsr.w	ip, r0, ip
 8000a08:	bfdc      	itt	le
 8000a0a:	ea41 010c 	orrle.w	r1, r1, ip
 8000a0e:	4090      	lslle	r0, r2
 8000a10:	1ae4      	subs	r4, r4, r3
 8000a12:	bfa2      	ittt	ge
 8000a14:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8000a18:	4329      	orrge	r1, r5
 8000a1a:	bd30      	popge	{r4, r5, pc}
 8000a1c:	ea6f 0404 	mvn.w	r4, r4
 8000a20:	3c1f      	subs	r4, #31
 8000a22:	da1c      	bge.n	8000a5e <__adddf3+0x1d2>
 8000a24:	340c      	adds	r4, #12
 8000a26:	dc0e      	bgt.n	8000a46 <__adddf3+0x1ba>
 8000a28:	f104 0414 	add.w	r4, r4, #20
 8000a2c:	f1c4 0220 	rsb	r2, r4, #32
 8000a30:	fa20 f004 	lsr.w	r0, r0, r4
 8000a34:	fa01 f302 	lsl.w	r3, r1, r2
 8000a38:	ea40 0003 	orr.w	r0, r0, r3
 8000a3c:	fa21 f304 	lsr.w	r3, r1, r4
 8000a40:	ea45 0103 	orr.w	r1, r5, r3
 8000a44:	bd30      	pop	{r4, r5, pc}
 8000a46:	f1c4 040c 	rsb	r4, r4, #12
 8000a4a:	f1c4 0220 	rsb	r2, r4, #32
 8000a4e:	fa20 f002 	lsr.w	r0, r0, r2
 8000a52:	fa01 f304 	lsl.w	r3, r1, r4
 8000a56:	ea40 0003 	orr.w	r0, r0, r3
 8000a5a:	4629      	mov	r1, r5
 8000a5c:	bd30      	pop	{r4, r5, pc}
 8000a5e:	fa21 f004 	lsr.w	r0, r1, r4
 8000a62:	4629      	mov	r1, r5
 8000a64:	bd30      	pop	{r4, r5, pc}
 8000a66:	f094 0f00 	teq	r4, #0
 8000a6a:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 8000a6e:	bf06      	itte	eq
 8000a70:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8000a74:	3401      	addeq	r4, #1
 8000a76:	3d01      	subne	r5, #1
 8000a78:	e74e      	b.n	8000918 <__adddf3+0x8c>
 8000a7a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000a7e:	bf18      	it	ne
 8000a80:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8000a84:	d029      	beq.n	8000ada <__adddf3+0x24e>
 8000a86:	ea94 0f05 	teq	r4, r5
 8000a8a:	bf08      	it	eq
 8000a8c:	ea90 0f02 	teqeq	r0, r2
 8000a90:	d005      	beq.n	8000a9e <__adddf3+0x212>
 8000a92:	ea54 0c00 	orrs.w	ip, r4, r0
 8000a96:	bf04      	itt	eq
 8000a98:	4619      	moveq	r1, r3
 8000a9a:	4610      	moveq	r0, r2
 8000a9c:	bd30      	pop	{r4, r5, pc}
 8000a9e:	ea91 0f03 	teq	r1, r3
 8000aa2:	bf1e      	ittt	ne
 8000aa4:	2100      	movne	r1, #0
 8000aa6:	2000      	movne	r0, #0
 8000aa8:	bd30      	popne	{r4, r5, pc}
 8000aaa:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8000aae:	d105      	bne.n	8000abc <__adddf3+0x230>
 8000ab0:	0040      	lsls	r0, r0, #1
 8000ab2:	4149      	adcs	r1, r1
 8000ab4:	bf28      	it	cs
 8000ab6:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8000aba:	bd30      	pop	{r4, r5, pc}
 8000abc:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8000ac0:	bf3c      	itt	cc
 8000ac2:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8000ac6:	bd30      	popcc	{r4, r5, pc}
 8000ac8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000acc:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8000ad0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000ad4:	f04f 0000 	mov.w	r0, #0
 8000ad8:	bd30      	pop	{r4, r5, pc}
 8000ada:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000ade:	bf1a      	itte	ne
 8000ae0:	4619      	movne	r1, r3
 8000ae2:	4610      	movne	r0, r2
 8000ae4:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8000ae8:	bf1c      	itt	ne
 8000aea:	460b      	movne	r3, r1
 8000aec:	4602      	movne	r2, r0
 8000aee:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000af2:	bf06      	itte	eq
 8000af4:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8000af8:	ea91 0f03 	teqeq	r1, r3
 8000afc:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8000b00:	bd30      	pop	{r4, r5, pc}
 8000b02:	bf00      	nop

08000b04 <__aeabi_ui2d>:
 8000b04:	f090 0f00 	teq	r0, #0
 8000b08:	bf04      	itt	eq
 8000b0a:	2100      	moveq	r1, #0
 8000b0c:	4770      	bxeq	lr
 8000b0e:	b530      	push	{r4, r5, lr}
 8000b10:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000b14:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000b18:	f04f 0500 	mov.w	r5, #0
 8000b1c:	f04f 0100 	mov.w	r1, #0
 8000b20:	e750      	b.n	80009c4 <__adddf3+0x138>
 8000b22:	bf00      	nop

08000b24 <__aeabi_i2d>:
 8000b24:	f090 0f00 	teq	r0, #0
 8000b28:	bf04      	itt	eq
 8000b2a:	2100      	moveq	r1, #0
 8000b2c:	4770      	bxeq	lr
 8000b2e:	b530      	push	{r4, r5, lr}
 8000b30:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000b34:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000b38:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8000b3c:	bf48      	it	mi
 8000b3e:	4240      	negmi	r0, r0
 8000b40:	f04f 0100 	mov.w	r1, #0
 8000b44:	e73e      	b.n	80009c4 <__adddf3+0x138>
 8000b46:	bf00      	nop

08000b48 <__aeabi_f2d>:
 8000b48:	0042      	lsls	r2, r0, #1
 8000b4a:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8000b4e:	ea4f 0131 	mov.w	r1, r1, rrx
 8000b52:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8000b56:	bf1f      	itttt	ne
 8000b58:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8000b5c:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8000b60:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8000b64:	4770      	bxne	lr
 8000b66:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8000b6a:	bf08      	it	eq
 8000b6c:	4770      	bxeq	lr
 8000b6e:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 8000b72:	bf04      	itt	eq
 8000b74:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8000b78:	4770      	bxeq	lr
 8000b7a:	b530      	push	{r4, r5, lr}
 8000b7c:	f44f 7460 	mov.w	r4, #896	; 0x380
 8000b80:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000b84:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000b88:	e71c      	b.n	80009c4 <__adddf3+0x138>
 8000b8a:	bf00      	nop

08000b8c <__aeabi_ul2d>:
 8000b8c:	ea50 0201 	orrs.w	r2, r0, r1
 8000b90:	bf08      	it	eq
 8000b92:	4770      	bxeq	lr
 8000b94:	b530      	push	{r4, r5, lr}
 8000b96:	f04f 0500 	mov.w	r5, #0
 8000b9a:	e00a      	b.n	8000bb2 <__aeabi_l2d+0x16>

08000b9c <__aeabi_l2d>:
 8000b9c:	ea50 0201 	orrs.w	r2, r0, r1
 8000ba0:	bf08      	it	eq
 8000ba2:	4770      	bxeq	lr
 8000ba4:	b530      	push	{r4, r5, lr}
 8000ba6:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8000baa:	d502      	bpl.n	8000bb2 <__aeabi_l2d+0x16>
 8000bac:	4240      	negs	r0, r0
 8000bae:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000bb2:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000bb6:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000bba:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8000bbe:	f43f aed8 	beq.w	8000972 <__adddf3+0xe6>
 8000bc2:	f04f 0203 	mov.w	r2, #3
 8000bc6:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000bca:	bf18      	it	ne
 8000bcc:	3203      	addne	r2, #3
 8000bce:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000bd2:	bf18      	it	ne
 8000bd4:	3203      	addne	r2, #3
 8000bd6:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8000bda:	f1c2 0320 	rsb	r3, r2, #32
 8000bde:	fa00 fc03 	lsl.w	ip, r0, r3
 8000be2:	fa20 f002 	lsr.w	r0, r0, r2
 8000be6:	fa01 fe03 	lsl.w	lr, r1, r3
 8000bea:	ea40 000e 	orr.w	r0, r0, lr
 8000bee:	fa21 f102 	lsr.w	r1, r1, r2
 8000bf2:	4414      	add	r4, r2
 8000bf4:	e6bd      	b.n	8000972 <__adddf3+0xe6>
 8000bf6:	bf00      	nop

08000bf8 <__aeabi_dmul>:
 8000bf8:	b570      	push	{r4, r5, r6, lr}
 8000bfa:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000bfe:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000c02:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000c06:	bf1d      	ittte	ne
 8000c08:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000c0c:	ea94 0f0c 	teqne	r4, ip
 8000c10:	ea95 0f0c 	teqne	r5, ip
 8000c14:	f000 f8de 	bleq	8000dd4 <__aeabi_dmul+0x1dc>
 8000c18:	442c      	add	r4, r5
 8000c1a:	ea81 0603 	eor.w	r6, r1, r3
 8000c1e:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 8000c22:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8000c26:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8000c2a:	bf18      	it	ne
 8000c2c:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 8000c30:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000c34:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8000c38:	d038      	beq.n	8000cac <__aeabi_dmul+0xb4>
 8000c3a:	fba0 ce02 	umull	ip, lr, r0, r2
 8000c3e:	f04f 0500 	mov.w	r5, #0
 8000c42:	fbe1 e502 	umlal	lr, r5, r1, r2
 8000c46:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8000c4a:	fbe0 e503 	umlal	lr, r5, r0, r3
 8000c4e:	f04f 0600 	mov.w	r6, #0
 8000c52:	fbe1 5603 	umlal	r5, r6, r1, r3
 8000c56:	f09c 0f00 	teq	ip, #0
 8000c5a:	bf18      	it	ne
 8000c5c:	f04e 0e01 	orrne.w	lr, lr, #1
 8000c60:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8000c64:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8000c68:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8000c6c:	d204      	bcs.n	8000c78 <__aeabi_dmul+0x80>
 8000c6e:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 8000c72:	416d      	adcs	r5, r5
 8000c74:	eb46 0606 	adc.w	r6, r6, r6
 8000c78:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8000c7c:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8000c80:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8000c84:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8000c88:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8000c8c:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000c90:	bf88      	it	hi
 8000c92:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000c96:	d81e      	bhi.n	8000cd6 <__aeabi_dmul+0xde>
 8000c98:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8000c9c:	bf08      	it	eq
 8000c9e:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8000ca2:	f150 0000 	adcs.w	r0, r0, #0
 8000ca6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000caa:	bd70      	pop	{r4, r5, r6, pc}
 8000cac:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8000cb0:	ea46 0101 	orr.w	r1, r6, r1
 8000cb4:	ea40 0002 	orr.w	r0, r0, r2
 8000cb8:	ea81 0103 	eor.w	r1, r1, r3
 8000cbc:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8000cc0:	bfc2      	ittt	gt
 8000cc2:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000cc6:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000cca:	bd70      	popgt	{r4, r5, r6, pc}
 8000ccc:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000cd0:	f04f 0e00 	mov.w	lr, #0
 8000cd4:	3c01      	subs	r4, #1
 8000cd6:	f300 80ab 	bgt.w	8000e30 <__aeabi_dmul+0x238>
 8000cda:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8000cde:	bfde      	ittt	le
 8000ce0:	2000      	movle	r0, #0
 8000ce2:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8000ce6:	bd70      	pople	{r4, r5, r6, pc}
 8000ce8:	f1c4 0400 	rsb	r4, r4, #0
 8000cec:	3c20      	subs	r4, #32
 8000cee:	da35      	bge.n	8000d5c <__aeabi_dmul+0x164>
 8000cf0:	340c      	adds	r4, #12
 8000cf2:	dc1b      	bgt.n	8000d2c <__aeabi_dmul+0x134>
 8000cf4:	f104 0414 	add.w	r4, r4, #20
 8000cf8:	f1c4 0520 	rsb	r5, r4, #32
 8000cfc:	fa00 f305 	lsl.w	r3, r0, r5
 8000d00:	fa20 f004 	lsr.w	r0, r0, r4
 8000d04:	fa01 f205 	lsl.w	r2, r1, r5
 8000d08:	ea40 0002 	orr.w	r0, r0, r2
 8000d0c:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8000d10:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000d14:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000d18:	fa21 f604 	lsr.w	r6, r1, r4
 8000d1c:	eb42 0106 	adc.w	r1, r2, r6
 8000d20:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000d24:	bf08      	it	eq
 8000d26:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000d2a:	bd70      	pop	{r4, r5, r6, pc}
 8000d2c:	f1c4 040c 	rsb	r4, r4, #12
 8000d30:	f1c4 0520 	rsb	r5, r4, #32
 8000d34:	fa00 f304 	lsl.w	r3, r0, r4
 8000d38:	fa20 f005 	lsr.w	r0, r0, r5
 8000d3c:	fa01 f204 	lsl.w	r2, r1, r4
 8000d40:	ea40 0002 	orr.w	r0, r0, r2
 8000d44:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d48:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000d4c:	f141 0100 	adc.w	r1, r1, #0
 8000d50:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000d54:	bf08      	it	eq
 8000d56:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000d5a:	bd70      	pop	{r4, r5, r6, pc}
 8000d5c:	f1c4 0520 	rsb	r5, r4, #32
 8000d60:	fa00 f205 	lsl.w	r2, r0, r5
 8000d64:	ea4e 0e02 	orr.w	lr, lr, r2
 8000d68:	fa20 f304 	lsr.w	r3, r0, r4
 8000d6c:	fa01 f205 	lsl.w	r2, r1, r5
 8000d70:	ea43 0302 	orr.w	r3, r3, r2
 8000d74:	fa21 f004 	lsr.w	r0, r1, r4
 8000d78:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d7c:	fa21 f204 	lsr.w	r2, r1, r4
 8000d80:	ea20 0002 	bic.w	r0, r0, r2
 8000d84:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8000d88:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000d8c:	bf08      	it	eq
 8000d8e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000d92:	bd70      	pop	{r4, r5, r6, pc}
 8000d94:	f094 0f00 	teq	r4, #0
 8000d98:	d10f      	bne.n	8000dba <__aeabi_dmul+0x1c2>
 8000d9a:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8000d9e:	0040      	lsls	r0, r0, #1
 8000da0:	eb41 0101 	adc.w	r1, r1, r1
 8000da4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000da8:	bf08      	it	eq
 8000daa:	3c01      	subeq	r4, #1
 8000dac:	d0f7      	beq.n	8000d9e <__aeabi_dmul+0x1a6>
 8000dae:	ea41 0106 	orr.w	r1, r1, r6
 8000db2:	f095 0f00 	teq	r5, #0
 8000db6:	bf18      	it	ne
 8000db8:	4770      	bxne	lr
 8000dba:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8000dbe:	0052      	lsls	r2, r2, #1
 8000dc0:	eb43 0303 	adc.w	r3, r3, r3
 8000dc4:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000dc8:	bf08      	it	eq
 8000dca:	3d01      	subeq	r5, #1
 8000dcc:	d0f7      	beq.n	8000dbe <__aeabi_dmul+0x1c6>
 8000dce:	ea43 0306 	orr.w	r3, r3, r6
 8000dd2:	4770      	bx	lr
 8000dd4:	ea94 0f0c 	teq	r4, ip
 8000dd8:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000ddc:	bf18      	it	ne
 8000dde:	ea95 0f0c 	teqne	r5, ip
 8000de2:	d00c      	beq.n	8000dfe <__aeabi_dmul+0x206>
 8000de4:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000de8:	bf18      	it	ne
 8000dea:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000dee:	d1d1      	bne.n	8000d94 <__aeabi_dmul+0x19c>
 8000df0:	ea81 0103 	eor.w	r1, r1, r3
 8000df4:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000df8:	f04f 0000 	mov.w	r0, #0
 8000dfc:	bd70      	pop	{r4, r5, r6, pc}
 8000dfe:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000e02:	bf06      	itte	eq
 8000e04:	4610      	moveq	r0, r2
 8000e06:	4619      	moveq	r1, r3
 8000e08:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000e0c:	d019      	beq.n	8000e42 <__aeabi_dmul+0x24a>
 8000e0e:	ea94 0f0c 	teq	r4, ip
 8000e12:	d102      	bne.n	8000e1a <__aeabi_dmul+0x222>
 8000e14:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8000e18:	d113      	bne.n	8000e42 <__aeabi_dmul+0x24a>
 8000e1a:	ea95 0f0c 	teq	r5, ip
 8000e1e:	d105      	bne.n	8000e2c <__aeabi_dmul+0x234>
 8000e20:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8000e24:	bf1c      	itt	ne
 8000e26:	4610      	movne	r0, r2
 8000e28:	4619      	movne	r1, r3
 8000e2a:	d10a      	bne.n	8000e42 <__aeabi_dmul+0x24a>
 8000e2c:	ea81 0103 	eor.w	r1, r1, r3
 8000e30:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000e34:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000e38:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000e3c:	f04f 0000 	mov.w	r0, #0
 8000e40:	bd70      	pop	{r4, r5, r6, pc}
 8000e42:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000e46:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8000e4a:	bd70      	pop	{r4, r5, r6, pc}

08000e4c <__aeabi_ddiv>:
 8000e4c:	b570      	push	{r4, r5, r6, lr}
 8000e4e:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000e52:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000e56:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000e5a:	bf1d      	ittte	ne
 8000e5c:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000e60:	ea94 0f0c 	teqne	r4, ip
 8000e64:	ea95 0f0c 	teqne	r5, ip
 8000e68:	f000 f8a7 	bleq	8000fba <__aeabi_ddiv+0x16e>
 8000e6c:	eba4 0405 	sub.w	r4, r4, r5
 8000e70:	ea81 0e03 	eor.w	lr, r1, r3
 8000e74:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000e78:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000e7c:	f000 8088 	beq.w	8000f90 <__aeabi_ddiv+0x144>
 8000e80:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000e84:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8000e88:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8000e8c:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8000e90:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8000e94:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8000e98:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8000e9c:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8000ea0:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8000ea4:	429d      	cmp	r5, r3
 8000ea6:	bf08      	it	eq
 8000ea8:	4296      	cmpeq	r6, r2
 8000eaa:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8000eae:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8000eb2:	d202      	bcs.n	8000eba <__aeabi_ddiv+0x6e>
 8000eb4:	085b      	lsrs	r3, r3, #1
 8000eb6:	ea4f 0232 	mov.w	r2, r2, rrx
 8000eba:	1ab6      	subs	r6, r6, r2
 8000ebc:	eb65 0503 	sbc.w	r5, r5, r3
 8000ec0:	085b      	lsrs	r3, r3, #1
 8000ec2:	ea4f 0232 	mov.w	r2, r2, rrx
 8000ec6:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8000eca:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8000ece:	ebb6 0e02 	subs.w	lr, r6, r2
 8000ed2:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000ed6:	bf22      	ittt	cs
 8000ed8:	1ab6      	subcs	r6, r6, r2
 8000eda:	4675      	movcs	r5, lr
 8000edc:	ea40 000c 	orrcs.w	r0, r0, ip
 8000ee0:	085b      	lsrs	r3, r3, #1
 8000ee2:	ea4f 0232 	mov.w	r2, r2, rrx
 8000ee6:	ebb6 0e02 	subs.w	lr, r6, r2
 8000eea:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000eee:	bf22      	ittt	cs
 8000ef0:	1ab6      	subcs	r6, r6, r2
 8000ef2:	4675      	movcs	r5, lr
 8000ef4:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000ef8:	085b      	lsrs	r3, r3, #1
 8000efa:	ea4f 0232 	mov.w	r2, r2, rrx
 8000efe:	ebb6 0e02 	subs.w	lr, r6, r2
 8000f02:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000f06:	bf22      	ittt	cs
 8000f08:	1ab6      	subcs	r6, r6, r2
 8000f0a:	4675      	movcs	r5, lr
 8000f0c:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8000f10:	085b      	lsrs	r3, r3, #1
 8000f12:	ea4f 0232 	mov.w	r2, r2, rrx
 8000f16:	ebb6 0e02 	subs.w	lr, r6, r2
 8000f1a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000f1e:	bf22      	ittt	cs
 8000f20:	1ab6      	subcs	r6, r6, r2
 8000f22:	4675      	movcs	r5, lr
 8000f24:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8000f28:	ea55 0e06 	orrs.w	lr, r5, r6
 8000f2c:	d018      	beq.n	8000f60 <__aeabi_ddiv+0x114>
 8000f2e:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8000f32:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8000f36:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8000f3a:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8000f3e:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8000f42:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8000f46:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8000f4a:	d1c0      	bne.n	8000ece <__aeabi_ddiv+0x82>
 8000f4c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000f50:	d10b      	bne.n	8000f6a <__aeabi_ddiv+0x11e>
 8000f52:	ea41 0100 	orr.w	r1, r1, r0
 8000f56:	f04f 0000 	mov.w	r0, #0
 8000f5a:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8000f5e:	e7b6      	b.n	8000ece <__aeabi_ddiv+0x82>
 8000f60:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000f64:	bf04      	itt	eq
 8000f66:	4301      	orreq	r1, r0
 8000f68:	2000      	moveq	r0, #0
 8000f6a:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000f6e:	bf88      	it	hi
 8000f70:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000f74:	f63f aeaf 	bhi.w	8000cd6 <__aeabi_dmul+0xde>
 8000f78:	ebb5 0c03 	subs.w	ip, r5, r3
 8000f7c:	bf04      	itt	eq
 8000f7e:	ebb6 0c02 	subseq.w	ip, r6, r2
 8000f82:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000f86:	f150 0000 	adcs.w	r0, r0, #0
 8000f8a:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000f8e:	bd70      	pop	{r4, r5, r6, pc}
 8000f90:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8000f94:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8000f98:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8000f9c:	bfc2      	ittt	gt
 8000f9e:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000fa2:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000fa6:	bd70      	popgt	{r4, r5, r6, pc}
 8000fa8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000fac:	f04f 0e00 	mov.w	lr, #0
 8000fb0:	3c01      	subs	r4, #1
 8000fb2:	e690      	b.n	8000cd6 <__aeabi_dmul+0xde>
 8000fb4:	ea45 0e06 	orr.w	lr, r5, r6
 8000fb8:	e68d      	b.n	8000cd6 <__aeabi_dmul+0xde>
 8000fba:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000fbe:	ea94 0f0c 	teq	r4, ip
 8000fc2:	bf08      	it	eq
 8000fc4:	ea95 0f0c 	teqeq	r5, ip
 8000fc8:	f43f af3b 	beq.w	8000e42 <__aeabi_dmul+0x24a>
 8000fcc:	ea94 0f0c 	teq	r4, ip
 8000fd0:	d10a      	bne.n	8000fe8 <__aeabi_ddiv+0x19c>
 8000fd2:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000fd6:	f47f af34 	bne.w	8000e42 <__aeabi_dmul+0x24a>
 8000fda:	ea95 0f0c 	teq	r5, ip
 8000fde:	f47f af25 	bne.w	8000e2c <__aeabi_dmul+0x234>
 8000fe2:	4610      	mov	r0, r2
 8000fe4:	4619      	mov	r1, r3
 8000fe6:	e72c      	b.n	8000e42 <__aeabi_dmul+0x24a>
 8000fe8:	ea95 0f0c 	teq	r5, ip
 8000fec:	d106      	bne.n	8000ffc <__aeabi_ddiv+0x1b0>
 8000fee:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000ff2:	f43f aefd 	beq.w	8000df0 <__aeabi_dmul+0x1f8>
 8000ff6:	4610      	mov	r0, r2
 8000ff8:	4619      	mov	r1, r3
 8000ffa:	e722      	b.n	8000e42 <__aeabi_dmul+0x24a>
 8000ffc:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8001000:	bf18      	it	ne
 8001002:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8001006:	f47f aec5 	bne.w	8000d94 <__aeabi_dmul+0x19c>
 800100a:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 800100e:	f47f af0d 	bne.w	8000e2c <__aeabi_dmul+0x234>
 8001012:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8001016:	f47f aeeb 	bne.w	8000df0 <__aeabi_dmul+0x1f8>
 800101a:	e712      	b.n	8000e42 <__aeabi_dmul+0x24a>

0800101c <__gedf2>:
 800101c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8001020:	e006      	b.n	8001030 <__cmpdf2+0x4>
 8001022:	bf00      	nop

08001024 <__ledf2>:
 8001024:	f04f 0c01 	mov.w	ip, #1
 8001028:	e002      	b.n	8001030 <__cmpdf2+0x4>
 800102a:	bf00      	nop

0800102c <__cmpdf2>:
 800102c:	f04f 0c01 	mov.w	ip, #1
 8001030:	f84d cd04 	str.w	ip, [sp, #-4]!
 8001034:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001038:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800103c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001040:	bf18      	it	ne
 8001042:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8001046:	d01b      	beq.n	8001080 <__cmpdf2+0x54>
 8001048:	b001      	add	sp, #4
 800104a:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 800104e:	bf0c      	ite	eq
 8001050:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8001054:	ea91 0f03 	teqne	r1, r3
 8001058:	bf02      	ittt	eq
 800105a:	ea90 0f02 	teqeq	r0, r2
 800105e:	2000      	moveq	r0, #0
 8001060:	4770      	bxeq	lr
 8001062:	f110 0f00 	cmn.w	r0, #0
 8001066:	ea91 0f03 	teq	r1, r3
 800106a:	bf58      	it	pl
 800106c:	4299      	cmppl	r1, r3
 800106e:	bf08      	it	eq
 8001070:	4290      	cmpeq	r0, r2
 8001072:	bf2c      	ite	cs
 8001074:	17d8      	asrcs	r0, r3, #31
 8001076:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 800107a:	f040 0001 	orr.w	r0, r0, #1
 800107e:	4770      	bx	lr
 8001080:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001084:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001088:	d102      	bne.n	8001090 <__cmpdf2+0x64>
 800108a:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800108e:	d107      	bne.n	80010a0 <__cmpdf2+0x74>
 8001090:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001094:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001098:	d1d6      	bne.n	8001048 <__cmpdf2+0x1c>
 800109a:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800109e:	d0d3      	beq.n	8001048 <__cmpdf2+0x1c>
 80010a0:	f85d 0b04 	ldr.w	r0, [sp], #4
 80010a4:	4770      	bx	lr
 80010a6:	bf00      	nop

080010a8 <__aeabi_cdrcmple>:
 80010a8:	4684      	mov	ip, r0
 80010aa:	4610      	mov	r0, r2
 80010ac:	4662      	mov	r2, ip
 80010ae:	468c      	mov	ip, r1
 80010b0:	4619      	mov	r1, r3
 80010b2:	4663      	mov	r3, ip
 80010b4:	e000      	b.n	80010b8 <__aeabi_cdcmpeq>
 80010b6:	bf00      	nop

080010b8 <__aeabi_cdcmpeq>:
 80010b8:	b501      	push	{r0, lr}
 80010ba:	f7ff ffb7 	bl	800102c <__cmpdf2>
 80010be:	2800      	cmp	r0, #0
 80010c0:	bf48      	it	mi
 80010c2:	f110 0f00 	cmnmi.w	r0, #0
 80010c6:	bd01      	pop	{r0, pc}

080010c8 <__aeabi_dcmpeq>:
 80010c8:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010cc:	f7ff fff4 	bl	80010b8 <__aeabi_cdcmpeq>
 80010d0:	bf0c      	ite	eq
 80010d2:	2001      	moveq	r0, #1
 80010d4:	2000      	movne	r0, #0
 80010d6:	f85d fb08 	ldr.w	pc, [sp], #8
 80010da:	bf00      	nop

080010dc <__aeabi_dcmplt>:
 80010dc:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010e0:	f7ff ffea 	bl	80010b8 <__aeabi_cdcmpeq>
 80010e4:	bf34      	ite	cc
 80010e6:	2001      	movcc	r0, #1
 80010e8:	2000      	movcs	r0, #0
 80010ea:	f85d fb08 	ldr.w	pc, [sp], #8
 80010ee:	bf00      	nop

080010f0 <__aeabi_dcmple>:
 80010f0:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010f4:	f7ff ffe0 	bl	80010b8 <__aeabi_cdcmpeq>
 80010f8:	bf94      	ite	ls
 80010fa:	2001      	movls	r0, #1
 80010fc:	2000      	movhi	r0, #0
 80010fe:	f85d fb08 	ldr.w	pc, [sp], #8
 8001102:	bf00      	nop

08001104 <__aeabi_dcmpge>:
 8001104:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001108:	f7ff ffce 	bl	80010a8 <__aeabi_cdrcmple>
 800110c:	bf94      	ite	ls
 800110e:	2001      	movls	r0, #1
 8001110:	2000      	movhi	r0, #0
 8001112:	f85d fb08 	ldr.w	pc, [sp], #8
 8001116:	bf00      	nop

08001118 <__aeabi_dcmpgt>:
 8001118:	f84d ed08 	str.w	lr, [sp, #-8]!
 800111c:	f7ff ffc4 	bl	80010a8 <__aeabi_cdrcmple>
 8001120:	bf34      	ite	cc
 8001122:	2001      	movcc	r0, #1
 8001124:	2000      	movcs	r0, #0
 8001126:	f85d fb08 	ldr.w	pc, [sp], #8
 800112a:	bf00      	nop

0800112c <__aeabi_dcmpun>:
 800112c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001130:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001134:	d102      	bne.n	800113c <__aeabi_dcmpun+0x10>
 8001136:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800113a:	d10a      	bne.n	8001152 <__aeabi_dcmpun+0x26>
 800113c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001140:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001144:	d102      	bne.n	800114c <__aeabi_dcmpun+0x20>
 8001146:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800114a:	d102      	bne.n	8001152 <__aeabi_dcmpun+0x26>
 800114c:	f04f 0000 	mov.w	r0, #0
 8001150:	4770      	bx	lr
 8001152:	f04f 0001 	mov.w	r0, #1
 8001156:	4770      	bx	lr

08001158 <__aeabi_d2iz>:
 8001158:	ea4f 0241 	mov.w	r2, r1, lsl #1
 800115c:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8001160:	d215      	bcs.n	800118e <__aeabi_d2iz+0x36>
 8001162:	d511      	bpl.n	8001188 <__aeabi_d2iz+0x30>
 8001164:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8001168:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 800116c:	d912      	bls.n	8001194 <__aeabi_d2iz+0x3c>
 800116e:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8001172:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8001176:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 800117a:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 800117e:	fa23 f002 	lsr.w	r0, r3, r2
 8001182:	bf18      	it	ne
 8001184:	4240      	negne	r0, r0
 8001186:	4770      	bx	lr
 8001188:	f04f 0000 	mov.w	r0, #0
 800118c:	4770      	bx	lr
 800118e:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8001192:	d105      	bne.n	80011a0 <__aeabi_d2iz+0x48>
 8001194:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8001198:	bf08      	it	eq
 800119a:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 800119e:	4770      	bx	lr
 80011a0:	f04f 0000 	mov.w	r0, #0
 80011a4:	4770      	bx	lr
 80011a6:	bf00      	nop

080011a8 <HAL_IncTick>:
 80011a8:	f244 70ec 	movw	r0, #18412	; 0x47ec
 80011ac:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011b0:	6801      	ldr	r1, [r0, #0]
 80011b2:	3101      	adds	r1, #1
 80011b4:	6001      	str	r1, [r0, #0]
 80011b6:	4770      	bx	lr

080011b8 <HAL_GetTick>:
 80011b8:	f244 70ec 	movw	r0, #18412	; 0x47ec
 80011bc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011c0:	6800      	ldr	r0, [r0, #0]
 80011c2:	4770      	bx	lr

080011c4 <HAL_SYSTICK_IRQHandler>:
 80011c4:	b580      	push	{r7, lr}
 80011c6:	466f      	mov	r7, sp
 80011c8:	f000 f801 	bl	80011ce <HAL_SYSTICK_Callback>
 80011cc:	bd80      	pop	{r7, pc}

080011ce <HAL_SYSTICK_Callback>:
 80011ce:	4770      	bx	lr

080011d0 <HAL_GPIO_Init>:
 80011d0:	b08f      	sub	sp, #60	; 0x3c
 80011d2:	460a      	mov	r2, r1
 80011d4:	4603      	mov	r3, r0
 80011d6:	900e      	str	r0, [sp, #56]	; 0x38
 80011d8:	910d      	str	r1, [sp, #52]	; 0x34
 80011da:	2000      	movs	r0, #0
 80011dc:	900c      	str	r0, [sp, #48]	; 0x30
 80011de:	9208      	str	r2, [sp, #32]
 80011e0:	9307      	str	r3, [sp, #28]
 80011e2:	e7ff      	b.n	80011e4 <HAL_GPIO_Init+0x14>
 80011e4:	980d      	ldr	r0, [sp, #52]	; 0x34
 80011e6:	6800      	ldr	r0, [r0, #0]
 80011e8:	990c      	ldr	r1, [sp, #48]	; 0x30
 80011ea:	40c8      	lsrs	r0, r1
 80011ec:	2800      	cmp	r0, #0
 80011ee:	f000 81dc 	beq.w	80015aa <HAL_GPIO_Init+0x3da>
 80011f2:	e7ff      	b.n	80011f4 <HAL_GPIO_Init+0x24>
 80011f4:	980d      	ldr	r0, [sp, #52]	; 0x34
 80011f6:	6800      	ldr	r0, [r0, #0]
 80011f8:	990c      	ldr	r1, [sp, #48]	; 0x30
 80011fa:	2201      	movs	r2, #1
 80011fc:	fa02 f101 	lsl.w	r1, r2, r1
 8001200:	4008      	ands	r0, r1
 8001202:	900b      	str	r0, [sp, #44]	; 0x2c
 8001204:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001206:	2800      	cmp	r0, #0
 8001208:	f000 81cb 	beq.w	80015a2 <HAL_GPIO_Init+0x3d2>
 800120c:	e7ff      	b.n	800120e <HAL_GPIO_Init+0x3e>
 800120e:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001210:	6840      	ldr	r0, [r0, #4]
 8001212:	2802      	cmp	r0, #2
 8001214:	d005      	beq.n	8001222 <HAL_GPIO_Init+0x52>
 8001216:	e7ff      	b.n	8001218 <HAL_GPIO_Init+0x48>
 8001218:	980d      	ldr	r0, [sp, #52]	; 0x34
 800121a:	6840      	ldr	r0, [r0, #4]
 800121c:	2812      	cmp	r0, #18
 800121e:	d128      	bne.n	8001272 <HAL_GPIO_Init+0xa2>
 8001220:	e7ff      	b.n	8001222 <HAL_GPIO_Init+0x52>
 8001222:	980e      	ldr	r0, [sp, #56]	; 0x38
 8001224:	990c      	ldr	r1, [sp, #48]	; 0x30
 8001226:	f64f 72fc 	movw	r2, #65532	; 0xfffc
 800122a:	f6c7 72ff 	movt	r2, #32767	; 0x7fff
 800122e:	ea02 0151 	and.w	r1, r2, r1, lsr #1
 8001232:	4408      	add	r0, r1
 8001234:	6a00      	ldr	r0, [r0, #32]
 8001236:	900a      	str	r0, [sp, #40]	; 0x28
 8001238:	980c      	ldr	r0, [sp, #48]	; 0x30
 800123a:	f000 0007 	and.w	r0, r0, #7
 800123e:	0080      	lsls	r0, r0, #2
 8001240:	210f      	movs	r1, #15
 8001242:	fa01 f000 	lsl.w	r0, r1, r0
 8001246:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001248:	ea21 0000 	bic.w	r0, r1, r0
 800124c:	900a      	str	r0, [sp, #40]	; 0x28
 800124e:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001250:	6900      	ldr	r0, [r0, #16]
 8001252:	990c      	ldr	r1, [sp, #48]	; 0x30
 8001254:	f001 0107 	and.w	r1, r1, #7
 8001258:	0089      	lsls	r1, r1, #2
 800125a:	4088      	lsls	r0, r1
 800125c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800125e:	4308      	orrs	r0, r1
 8001260:	900a      	str	r0, [sp, #40]	; 0x28
 8001262:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001264:	990e      	ldr	r1, [sp, #56]	; 0x38
 8001266:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8001268:	ea02 0253 	and.w	r2, r2, r3, lsr #1
 800126c:	4411      	add	r1, r2
 800126e:	6208      	str	r0, [r1, #32]
 8001270:	e7ff      	b.n	8001272 <HAL_GPIO_Init+0xa2>
 8001272:	980e      	ldr	r0, [sp, #56]	; 0x38
 8001274:	6800      	ldr	r0, [r0, #0]
 8001276:	900a      	str	r0, [sp, #40]	; 0x28
 8001278:	980c      	ldr	r0, [sp, #48]	; 0x30
 800127a:	0040      	lsls	r0, r0, #1
 800127c:	2103      	movs	r1, #3
 800127e:	fa01 f000 	lsl.w	r0, r1, r0
 8001282:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001284:	ea21 0000 	bic.w	r0, r1, r0
 8001288:	900a      	str	r0, [sp, #40]	; 0x28
 800128a:	980d      	ldr	r0, [sp, #52]	; 0x34
 800128c:	6840      	ldr	r0, [r0, #4]
 800128e:	f000 0003 	and.w	r0, r0, #3
 8001292:	990c      	ldr	r1, [sp, #48]	; 0x30
 8001294:	0049      	lsls	r1, r1, #1
 8001296:	4088      	lsls	r0, r1
 8001298:	990a      	ldr	r1, [sp, #40]	; 0x28
 800129a:	4308      	orrs	r0, r1
 800129c:	900a      	str	r0, [sp, #40]	; 0x28
 800129e:	980a      	ldr	r0, [sp, #40]	; 0x28
 80012a0:	990e      	ldr	r1, [sp, #56]	; 0x38
 80012a2:	6008      	str	r0, [r1, #0]
 80012a4:	980d      	ldr	r0, [sp, #52]	; 0x34
 80012a6:	6840      	ldr	r0, [r0, #4]
 80012a8:	2801      	cmp	r0, #1
 80012aa:	d00f      	beq.n	80012cc <HAL_GPIO_Init+0xfc>
 80012ac:	e7ff      	b.n	80012ae <HAL_GPIO_Init+0xde>
 80012ae:	980d      	ldr	r0, [sp, #52]	; 0x34
 80012b0:	6840      	ldr	r0, [r0, #4]
 80012b2:	2802      	cmp	r0, #2
 80012b4:	d00a      	beq.n	80012cc <HAL_GPIO_Init+0xfc>
 80012b6:	e7ff      	b.n	80012b8 <HAL_GPIO_Init+0xe8>
 80012b8:	980d      	ldr	r0, [sp, #52]	; 0x34
 80012ba:	6840      	ldr	r0, [r0, #4]
 80012bc:	2811      	cmp	r0, #17
 80012be:	d005      	beq.n	80012cc <HAL_GPIO_Init+0xfc>
 80012c0:	e7ff      	b.n	80012c2 <HAL_GPIO_Init+0xf2>
 80012c2:	980d      	ldr	r0, [sp, #52]	; 0x34
 80012c4:	6840      	ldr	r0, [r0, #4]
 80012c6:	2812      	cmp	r0, #18
 80012c8:	d12f      	bne.n	800132a <HAL_GPIO_Init+0x15a>
 80012ca:	e7ff      	b.n	80012cc <HAL_GPIO_Init+0xfc>
 80012cc:	980e      	ldr	r0, [sp, #56]	; 0x38
 80012ce:	6880      	ldr	r0, [r0, #8]
 80012d0:	900a      	str	r0, [sp, #40]	; 0x28
 80012d2:	980c      	ldr	r0, [sp, #48]	; 0x30
 80012d4:	0040      	lsls	r0, r0, #1
 80012d6:	2103      	movs	r1, #3
 80012d8:	fa01 f000 	lsl.w	r0, r1, r0
 80012dc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80012de:	ea21 0000 	bic.w	r0, r1, r0
 80012e2:	900a      	str	r0, [sp, #40]	; 0x28
 80012e4:	980d      	ldr	r0, [sp, #52]	; 0x34
 80012e6:	68c0      	ldr	r0, [r0, #12]
 80012e8:	990c      	ldr	r1, [sp, #48]	; 0x30
 80012ea:	0049      	lsls	r1, r1, #1
 80012ec:	4088      	lsls	r0, r1
 80012ee:	990a      	ldr	r1, [sp, #40]	; 0x28
 80012f0:	4308      	orrs	r0, r1
 80012f2:	900a      	str	r0, [sp, #40]	; 0x28
 80012f4:	980a      	ldr	r0, [sp, #40]	; 0x28
 80012f6:	990e      	ldr	r1, [sp, #56]	; 0x38
 80012f8:	6088      	str	r0, [r1, #8]
 80012fa:	980e      	ldr	r0, [sp, #56]	; 0x38
 80012fc:	6840      	ldr	r0, [r0, #4]
 80012fe:	900a      	str	r0, [sp, #40]	; 0x28
 8001300:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001302:	2101      	movs	r1, #1
 8001304:	fa01 f000 	lsl.w	r0, r1, r0
 8001308:	990a      	ldr	r1, [sp, #40]	; 0x28
 800130a:	ea21 0000 	bic.w	r0, r1, r0
 800130e:	900a      	str	r0, [sp, #40]	; 0x28
 8001310:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001312:	6840      	ldr	r0, [r0, #4]
 8001314:	f3c0 1000 	ubfx	r0, r0, #4, #1
 8001318:	990c      	ldr	r1, [sp, #48]	; 0x30
 800131a:	4088      	lsls	r0, r1
 800131c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800131e:	4308      	orrs	r0, r1
 8001320:	900a      	str	r0, [sp, #40]	; 0x28
 8001322:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001324:	990e      	ldr	r1, [sp, #56]	; 0x38
 8001326:	6048      	str	r0, [r1, #4]
 8001328:	e7ff      	b.n	800132a <HAL_GPIO_Init+0x15a>
 800132a:	980d      	ldr	r0, [sp, #52]	; 0x34
 800132c:	6840      	ldr	r0, [r0, #4]
 800132e:	f000 0003 	and.w	r0, r0, #3
 8001332:	2803      	cmp	r0, #3
 8001334:	d118      	bne.n	8001368 <HAL_GPIO_Init+0x198>
 8001336:	e7ff      	b.n	8001338 <HAL_GPIO_Init+0x168>
 8001338:	980e      	ldr	r0, [sp, #56]	; 0x38
 800133a:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 800133c:	900a      	str	r0, [sp, #40]	; 0x28
 800133e:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001340:	2101      	movs	r1, #1
 8001342:	fa01 f000 	lsl.w	r0, r1, r0
 8001346:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001348:	ea21 0000 	bic.w	r0, r1, r0
 800134c:	900a      	str	r0, [sp, #40]	; 0x28
 800134e:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001350:	6840      	ldr	r0, [r0, #4]
 8001352:	f3c0 00c0 	ubfx	r0, r0, #3, #1
 8001356:	990c      	ldr	r1, [sp, #48]	; 0x30
 8001358:	4088      	lsls	r0, r1
 800135a:	990a      	ldr	r1, [sp, #40]	; 0x28
 800135c:	4308      	orrs	r0, r1
 800135e:	900a      	str	r0, [sp, #40]	; 0x28
 8001360:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001362:	990e      	ldr	r1, [sp, #56]	; 0x38
 8001364:	62c8      	str	r0, [r1, #44]	; 0x2c
 8001366:	e7ff      	b.n	8001368 <HAL_GPIO_Init+0x198>
 8001368:	980e      	ldr	r0, [sp, #56]	; 0x38
 800136a:	68c0      	ldr	r0, [r0, #12]
 800136c:	900a      	str	r0, [sp, #40]	; 0x28
 800136e:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001370:	0040      	lsls	r0, r0, #1
 8001372:	2103      	movs	r1, #3
 8001374:	fa01 f000 	lsl.w	r0, r1, r0
 8001378:	990a      	ldr	r1, [sp, #40]	; 0x28
 800137a:	ea21 0000 	bic.w	r0, r1, r0
 800137e:	900a      	str	r0, [sp, #40]	; 0x28
 8001380:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001382:	6880      	ldr	r0, [r0, #8]
 8001384:	990c      	ldr	r1, [sp, #48]	; 0x30
 8001386:	0049      	lsls	r1, r1, #1
 8001388:	4088      	lsls	r0, r1
 800138a:	990a      	ldr	r1, [sp, #40]	; 0x28
 800138c:	4308      	orrs	r0, r1
 800138e:	900a      	str	r0, [sp, #40]	; 0x28
 8001390:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001392:	990e      	ldr	r1, [sp, #56]	; 0x38
 8001394:	60c8      	str	r0, [r1, #12]
 8001396:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001398:	6840      	ldr	r0, [r0, #4]
 800139a:	00c0      	lsls	r0, r0, #3
 800139c:	2800      	cmp	r0, #0
 800139e:	f140 80ff 	bpl.w	80015a0 <HAL_GPIO_Init+0x3d0>
 80013a2:	e7ff      	b.n	80013a4 <HAL_GPIO_Init+0x1d4>
 80013a4:	e7ff      	b.n	80013a6 <HAL_GPIO_Init+0x1d6>
 80013a6:	f241 0060 	movw	r0, #4192	; 0x1060
 80013aa:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80013ae:	6801      	ldr	r1, [r0, #0]
 80013b0:	f041 0101 	orr.w	r1, r1, #1
 80013b4:	6001      	str	r1, [r0, #0]
 80013b6:	6800      	ldr	r0, [r0, #0]
 80013b8:	f000 0001 	and.w	r0, r0, #1
 80013bc:	9009      	str	r0, [sp, #36]	; 0x24
 80013be:	9809      	ldr	r0, [sp, #36]	; 0x24
 80013c0:	9006      	str	r0, [sp, #24]
 80013c2:	e7ff      	b.n	80013c4 <HAL_GPIO_Init+0x1f4>
 80013c4:	980c      	ldr	r0, [sp, #48]	; 0x30
 80013c6:	f020 0003 	bic.w	r0, r0, #3
 80013ca:	2108      	movs	r1, #8
 80013cc:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80013d0:	5840      	ldr	r0, [r0, r1]
 80013d2:	900a      	str	r0, [sp, #40]	; 0x28
 80013d4:	980c      	ldr	r0, [sp, #48]	; 0x30
 80013d6:	f000 0003 	and.w	r0, r0, #3
 80013da:	0080      	lsls	r0, r0, #2
 80013dc:	210f      	movs	r1, #15
 80013de:	fa01 f000 	lsl.w	r0, r1, r0
 80013e2:	990a      	ldr	r1, [sp, #40]	; 0x28
 80013e4:	ea21 0000 	bic.w	r0, r1, r0
 80013e8:	900a      	str	r0, [sp, #40]	; 0x28
 80013ea:	980e      	ldr	r0, [sp, #56]	; 0x38
 80013ec:	f1b0 4f90 	cmp.w	r0, #1207959552	; 0x48000000
 80013f0:	d103      	bne.n	80013fa <HAL_GPIO_Init+0x22a>
 80013f2:	e7ff      	b.n	80013f4 <HAL_GPIO_Init+0x224>
 80013f4:	2000      	movs	r0, #0
 80013f6:	9005      	str	r0, [sp, #20]
 80013f8:	e050      	b.n	800149c <HAL_GPIO_Init+0x2cc>
 80013fa:	980e      	ldr	r0, [sp, #56]	; 0x38
 80013fc:	f240 4100 	movw	r1, #1024	; 0x400
 8001400:	f6c4 0100 	movt	r1, #18432	; 0x4800
 8001404:	4288      	cmp	r0, r1
 8001406:	d103      	bne.n	8001410 <HAL_GPIO_Init+0x240>
 8001408:	e7ff      	b.n	800140a <HAL_GPIO_Init+0x23a>
 800140a:	2001      	movs	r0, #1
 800140c:	9004      	str	r0, [sp, #16]
 800140e:	e042      	b.n	8001496 <HAL_GPIO_Init+0x2c6>
 8001410:	980e      	ldr	r0, [sp, #56]	; 0x38
 8001412:	f640 0100 	movw	r1, #2048	; 0x800
 8001416:	f6c4 0100 	movt	r1, #18432	; 0x4800
 800141a:	4288      	cmp	r0, r1
 800141c:	d103      	bne.n	8001426 <HAL_GPIO_Init+0x256>
 800141e:	e7ff      	b.n	8001420 <HAL_GPIO_Init+0x250>
 8001420:	2002      	movs	r0, #2
 8001422:	9003      	str	r0, [sp, #12]
 8001424:	e034      	b.n	8001490 <HAL_GPIO_Init+0x2c0>
 8001426:	980e      	ldr	r0, [sp, #56]	; 0x38
 8001428:	f640 4100 	movw	r1, #3072	; 0xc00
 800142c:	f6c4 0100 	movt	r1, #18432	; 0x4800
 8001430:	4288      	cmp	r0, r1
 8001432:	d103      	bne.n	800143c <HAL_GPIO_Init+0x26c>
 8001434:	e7ff      	b.n	8001436 <HAL_GPIO_Init+0x266>
 8001436:	2003      	movs	r0, #3
 8001438:	9002      	str	r0, [sp, #8]
 800143a:	e026      	b.n	800148a <HAL_GPIO_Init+0x2ba>
 800143c:	980e      	ldr	r0, [sp, #56]	; 0x38
 800143e:	f241 0100 	movw	r1, #4096	; 0x1000
 8001442:	f6c4 0100 	movt	r1, #18432	; 0x4800
 8001446:	4288      	cmp	r0, r1
 8001448:	d103      	bne.n	8001452 <HAL_GPIO_Init+0x282>
 800144a:	e7ff      	b.n	800144c <HAL_GPIO_Init+0x27c>
 800144c:	2004      	movs	r0, #4
 800144e:	9001      	str	r0, [sp, #4]
 8001450:	e018      	b.n	8001484 <HAL_GPIO_Init+0x2b4>
 8001452:	980e      	ldr	r0, [sp, #56]	; 0x38
 8001454:	f241 4100 	movw	r1, #5120	; 0x1400
 8001458:	f6c4 0100 	movt	r1, #18432	; 0x4800
 800145c:	4288      	cmp	r0, r1
 800145e:	d103      	bne.n	8001468 <HAL_GPIO_Init+0x298>
 8001460:	e7ff      	b.n	8001462 <HAL_GPIO_Init+0x292>
 8001462:	2005      	movs	r0, #5
 8001464:	9000      	str	r0, [sp, #0]
 8001466:	e00a      	b.n	800147e <HAL_GPIO_Init+0x2ae>
 8001468:	980e      	ldr	r0, [sp, #56]	; 0x38
 800146a:	f641 0100 	movw	r1, #6144	; 0x1800
 800146e:	f6c4 0100 	movt	r1, #18432	; 0x4800
 8001472:	2207      	movs	r2, #7
 8001474:	4288      	cmp	r0, r1
 8001476:	bf08      	it	eq
 8001478:	2206      	moveq	r2, #6
 800147a:	9200      	str	r2, [sp, #0]
 800147c:	e7ff      	b.n	800147e <HAL_GPIO_Init+0x2ae>
 800147e:	9800      	ldr	r0, [sp, #0]
 8001480:	9001      	str	r0, [sp, #4]
 8001482:	e7ff      	b.n	8001484 <HAL_GPIO_Init+0x2b4>
 8001484:	9801      	ldr	r0, [sp, #4]
 8001486:	9002      	str	r0, [sp, #8]
 8001488:	e7ff      	b.n	800148a <HAL_GPIO_Init+0x2ba>
 800148a:	9802      	ldr	r0, [sp, #8]
 800148c:	9003      	str	r0, [sp, #12]
 800148e:	e7ff      	b.n	8001490 <HAL_GPIO_Init+0x2c0>
 8001490:	9803      	ldr	r0, [sp, #12]
 8001492:	9004      	str	r0, [sp, #16]
 8001494:	e7ff      	b.n	8001496 <HAL_GPIO_Init+0x2c6>
 8001496:	9804      	ldr	r0, [sp, #16]
 8001498:	9005      	str	r0, [sp, #20]
 800149a:	e7ff      	b.n	800149c <HAL_GPIO_Init+0x2cc>
 800149c:	9805      	ldr	r0, [sp, #20]
 800149e:	990c      	ldr	r1, [sp, #48]	; 0x30
 80014a0:	f001 0103 	and.w	r1, r1, #3
 80014a4:	0089      	lsls	r1, r1, #2
 80014a6:	4088      	lsls	r0, r1
 80014a8:	990a      	ldr	r1, [sp, #40]	; 0x28
 80014aa:	4308      	orrs	r0, r1
 80014ac:	900a      	str	r0, [sp, #40]	; 0x28
 80014ae:	980a      	ldr	r0, [sp, #40]	; 0x28
 80014b0:	990c      	ldr	r1, [sp, #48]	; 0x30
 80014b2:	f021 0103 	bic.w	r1, r1, #3
 80014b6:	2208      	movs	r2, #8
 80014b8:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80014bc:	5088      	str	r0, [r1, r2]
 80014be:	f240 4000 	movw	r0, #1024	; 0x400
 80014c2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80014c6:	6800      	ldr	r0, [r0, #0]
 80014c8:	900a      	str	r0, [sp, #40]	; 0x28
 80014ca:	980b      	ldr	r0, [sp, #44]	; 0x2c
 80014cc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80014ce:	ea21 0000 	bic.w	r0, r1, r0
 80014d2:	900a      	str	r0, [sp, #40]	; 0x28
 80014d4:	980d      	ldr	r0, [sp, #52]	; 0x34
 80014d6:	6840      	ldr	r0, [r0, #4]
 80014d8:	03c0      	lsls	r0, r0, #15
 80014da:	2800      	cmp	r0, #0
 80014dc:	d505      	bpl.n	80014ea <HAL_GPIO_Init+0x31a>
 80014de:	e7ff      	b.n	80014e0 <HAL_GPIO_Init+0x310>
 80014e0:	980b      	ldr	r0, [sp, #44]	; 0x2c
 80014e2:	990a      	ldr	r1, [sp, #40]	; 0x28
 80014e4:	4308      	orrs	r0, r1
 80014e6:	900a      	str	r0, [sp, #40]	; 0x28
 80014e8:	e7ff      	b.n	80014ea <HAL_GPIO_Init+0x31a>
 80014ea:	980a      	ldr	r0, [sp, #40]	; 0x28
 80014ec:	f240 4100 	movw	r1, #1024	; 0x400
 80014f0:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80014f4:	6008      	str	r0, [r1, #0]
 80014f6:	f240 4004 	movw	r0, #1028	; 0x404
 80014fa:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80014fe:	6800      	ldr	r0, [r0, #0]
 8001500:	900a      	str	r0, [sp, #40]	; 0x28
 8001502:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001504:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001506:	ea21 0000 	bic.w	r0, r1, r0
 800150a:	900a      	str	r0, [sp, #40]	; 0x28
 800150c:	980d      	ldr	r0, [sp, #52]	; 0x34
 800150e:	6840      	ldr	r0, [r0, #4]
 8001510:	0380      	lsls	r0, r0, #14
 8001512:	2800      	cmp	r0, #0
 8001514:	d505      	bpl.n	8001522 <HAL_GPIO_Init+0x352>
 8001516:	e7ff      	b.n	8001518 <HAL_GPIO_Init+0x348>
 8001518:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800151a:	990a      	ldr	r1, [sp, #40]	; 0x28
 800151c:	4308      	orrs	r0, r1
 800151e:	900a      	str	r0, [sp, #40]	; 0x28
 8001520:	e7ff      	b.n	8001522 <HAL_GPIO_Init+0x352>
 8001522:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001524:	f240 4104 	movw	r1, #1028	; 0x404
 8001528:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800152c:	6008      	str	r0, [r1, #0]
 800152e:	f240 4008 	movw	r0, #1032	; 0x408
 8001532:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001536:	6800      	ldr	r0, [r0, #0]
 8001538:	900a      	str	r0, [sp, #40]	; 0x28
 800153a:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800153c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800153e:	ea21 0000 	bic.w	r0, r1, r0
 8001542:	900a      	str	r0, [sp, #40]	; 0x28
 8001544:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001546:	6840      	ldr	r0, [r0, #4]
 8001548:	02c0      	lsls	r0, r0, #11
 800154a:	2800      	cmp	r0, #0
 800154c:	d505      	bpl.n	800155a <HAL_GPIO_Init+0x38a>
 800154e:	e7ff      	b.n	8001550 <HAL_GPIO_Init+0x380>
 8001550:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001552:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001554:	4308      	orrs	r0, r1
 8001556:	900a      	str	r0, [sp, #40]	; 0x28
 8001558:	e7ff      	b.n	800155a <HAL_GPIO_Init+0x38a>
 800155a:	980a      	ldr	r0, [sp, #40]	; 0x28
 800155c:	f240 4108 	movw	r1, #1032	; 0x408
 8001560:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001564:	6008      	str	r0, [r1, #0]
 8001566:	f240 400c 	movw	r0, #1036	; 0x40c
 800156a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800156e:	6800      	ldr	r0, [r0, #0]
 8001570:	900a      	str	r0, [sp, #40]	; 0x28
 8001572:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001574:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001576:	ea21 0000 	bic.w	r0, r1, r0
 800157a:	900a      	str	r0, [sp, #40]	; 0x28
 800157c:	980d      	ldr	r0, [sp, #52]	; 0x34
 800157e:	6840      	ldr	r0, [r0, #4]
 8001580:	0280      	lsls	r0, r0, #10
 8001582:	2800      	cmp	r0, #0
 8001584:	d505      	bpl.n	8001592 <HAL_GPIO_Init+0x3c2>
 8001586:	e7ff      	b.n	8001588 <HAL_GPIO_Init+0x3b8>
 8001588:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800158a:	990a      	ldr	r1, [sp, #40]	; 0x28
 800158c:	4308      	orrs	r0, r1
 800158e:	900a      	str	r0, [sp, #40]	; 0x28
 8001590:	e7ff      	b.n	8001592 <HAL_GPIO_Init+0x3c2>
 8001592:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001594:	f240 410c 	movw	r1, #1036	; 0x40c
 8001598:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800159c:	6008      	str	r0, [r1, #0]
 800159e:	e7ff      	b.n	80015a0 <HAL_GPIO_Init+0x3d0>
 80015a0:	e7ff      	b.n	80015a2 <HAL_GPIO_Init+0x3d2>
 80015a2:	980c      	ldr	r0, [sp, #48]	; 0x30
 80015a4:	3001      	adds	r0, #1
 80015a6:	900c      	str	r0, [sp, #48]	; 0x30
 80015a8:	e61c      	b.n	80011e4 <HAL_GPIO_Init+0x14>
 80015aa:	b00f      	add	sp, #60	; 0x3c
 80015ac:	4770      	bx	lr

080015ae <HAL_RCC_GetSysClockFreq>:
 80015ae:	b089      	sub	sp, #36	; 0x24
 80015b0:	2000      	movs	r0, #0
 80015b2:	9008      	str	r0, [sp, #32]
 80015b4:	9007      	str	r0, [sp, #28]
 80015b6:	f241 0008 	movw	r0, #4104	; 0x1008
 80015ba:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015be:	6800      	ldr	r0, [r0, #0]
 80015c0:	f000 000c 	and.w	r0, r0, #12
 80015c4:	9002      	str	r0, [sp, #8]
 80015c6:	f241 000c 	movw	r0, #4108	; 0x100c
 80015ca:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015ce:	6800      	ldr	r0, [r0, #0]
 80015d0:	f000 0003 	and.w	r0, r0, #3
 80015d4:	9001      	str	r0, [sp, #4]
 80015d6:	9802      	ldr	r0, [sp, #8]
 80015d8:	2800      	cmp	r0, #0
 80015da:	d008      	beq.n	80015ee <HAL_RCC_GetSysClockFreq+0x40>
 80015dc:	e7ff      	b.n	80015de <HAL_RCC_GetSysClockFreq+0x30>
 80015de:	9802      	ldr	r0, [sp, #8]
 80015e0:	280c      	cmp	r0, #12
 80015e2:	d12f      	bne.n	8001644 <HAL_RCC_GetSysClockFreq+0x96>
 80015e4:	e7ff      	b.n	80015e6 <HAL_RCC_GetSysClockFreq+0x38>
 80015e6:	9801      	ldr	r0, [sp, #4]
 80015e8:	2801      	cmp	r0, #1
 80015ea:	d12b      	bne.n	8001644 <HAL_RCC_GetSysClockFreq+0x96>
 80015ec:	e7ff      	b.n	80015ee <HAL_RCC_GetSysClockFreq+0x40>
 80015ee:	f241 0000 	movw	r0, #4096	; 0x1000
 80015f2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015f6:	6800      	ldr	r0, [r0, #0]
 80015f8:	f010 0f08 	tst.w	r0, #8
 80015fc:	d109      	bne.n	8001612 <HAL_RCC_GetSysClockFreq+0x64>
 80015fe:	e7ff      	b.n	8001600 <HAL_RCC_GetSysClockFreq+0x52>
 8001600:	f241 0094 	movw	r0, #4244	; 0x1094
 8001604:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001608:	6800      	ldr	r0, [r0, #0]
 800160a:	f3c0 2003 	ubfx	r0, r0, #8, #4
 800160e:	9008      	str	r0, [sp, #32]
 8001610:	e008      	b.n	8001624 <HAL_RCC_GetSysClockFreq+0x76>
 8001612:	f241 0000 	movw	r0, #4096	; 0x1000
 8001616:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800161a:	6800      	ldr	r0, [r0, #0]
 800161c:	f3c0 1003 	ubfx	r0, r0, #4, #4
 8001620:	9008      	str	r0, [sp, #32]
 8001622:	e7ff      	b.n	8001624 <HAL_RCC_GetSysClockFreq+0x76>
 8001624:	9808      	ldr	r0, [sp, #32]
 8001626:	f648 21a8 	movw	r1, #35496	; 0x8aa8
 800162a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800162e:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8001632:	9008      	str	r0, [sp, #32]
 8001634:	9802      	ldr	r0, [sp, #8]
 8001636:	2800      	cmp	r0, #0
 8001638:	d103      	bne.n	8001642 <HAL_RCC_GetSysClockFreq+0x94>
 800163a:	e7ff      	b.n	800163c <HAL_RCC_GetSysClockFreq+0x8e>
 800163c:	9808      	ldr	r0, [sp, #32]
 800163e:	9007      	str	r0, [sp, #28]
 8001640:	e7ff      	b.n	8001642 <HAL_RCC_GetSysClockFreq+0x94>
 8001642:	e016      	b.n	8001672 <HAL_RCC_GetSysClockFreq+0xc4>
 8001644:	9802      	ldr	r0, [sp, #8]
 8001646:	2804      	cmp	r0, #4
 8001648:	d106      	bne.n	8001658 <HAL_RCC_GetSysClockFreq+0xaa>
 800164a:	e7ff      	b.n	800164c <HAL_RCC_GetSysClockFreq+0x9e>
 800164c:	f242 4000 	movw	r0, #9216	; 0x2400
 8001650:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001654:	9007      	str	r0, [sp, #28]
 8001656:	e00b      	b.n	8001670 <HAL_RCC_GetSysClockFreq+0xc2>
 8001658:	9802      	ldr	r0, [sp, #8]
 800165a:	2808      	cmp	r0, #8
 800165c:	d106      	bne.n	800166c <HAL_RCC_GetSysClockFreq+0xbe>
 800165e:	e7ff      	b.n	8001660 <HAL_RCC_GetSysClockFreq+0xb2>
 8001660:	f241 2000 	movw	r0, #4608	; 0x1200
 8001664:	f2c0 007a 	movt	r0, #122	; 0x7a
 8001668:	9007      	str	r0, [sp, #28]
 800166a:	e000      	b.n	800166e <HAL_RCC_GetSysClockFreq+0xc0>
 800166c:	e7ff      	b.n	800166e <HAL_RCC_GetSysClockFreq+0xc0>
 800166e:	e7ff      	b.n	8001670 <HAL_RCC_GetSysClockFreq+0xc2>
 8001670:	e7ff      	b.n	8001672 <HAL_RCC_GetSysClockFreq+0xc4>
 8001672:	9802      	ldr	r0, [sp, #8]
 8001674:	280c      	cmp	r0, #12
 8001676:	d15e      	bne.n	8001736 <HAL_RCC_GetSysClockFreq+0x188>
 8001678:	e7ff      	b.n	800167a <HAL_RCC_GetSysClockFreq+0xcc>
 800167a:	f241 000c 	movw	r0, #4108	; 0x100c
 800167e:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001682:	6801      	ldr	r1, [r0, #0]
 8001684:	f001 0103 	and.w	r1, r1, #3
 8001688:	9105      	str	r1, [sp, #20]
 800168a:	6800      	ldr	r0, [r0, #0]
 800168c:	f000 0070 	and.w	r0, r0, #112	; 0x70
 8001690:	2101      	movs	r1, #1
 8001692:	eb01 1010 	add.w	r0, r1, r0, lsr #4
 8001696:	9003      	str	r0, [sp, #12]
 8001698:	9805      	ldr	r0, [sp, #20]
 800169a:	2801      	cmp	r0, #1
 800169c:	9000      	str	r0, [sp, #0]
 800169e:	d02a      	beq.n	80016f6 <HAL_RCC_GetSysClockFreq+0x148>
 80016a0:	e7ff      	b.n	80016a2 <HAL_RCC_GetSysClockFreq+0xf4>
 80016a2:	9800      	ldr	r0, [sp, #0]
 80016a4:	2802      	cmp	r0, #2
 80016a6:	d004      	beq.n	80016b2 <HAL_RCC_GetSysClockFreq+0x104>
 80016a8:	e7ff      	b.n	80016aa <HAL_RCC_GetSysClockFreq+0xfc>
 80016aa:	9800      	ldr	r0, [sp, #0]
 80016ac:	2803      	cmp	r0, #3
 80016ae:	d011      	beq.n	80016d4 <HAL_RCC_GetSysClockFreq+0x126>
 80016b0:	e022      	b.n	80016f8 <HAL_RCC_GetSysClockFreq+0x14a>
 80016b2:	9803      	ldr	r0, [sp, #12]
 80016b4:	f242 4100 	movw	r1, #9216	; 0x2400
 80016b8:	f2c0 01f4 	movt	r1, #244	; 0xf4
 80016bc:	fbb1 f0f0 	udiv	r0, r1, r0
 80016c0:	f241 010c 	movw	r1, #4108	; 0x100c
 80016c4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80016c8:	6809      	ldr	r1, [r1, #0]
 80016ca:	f3c1 2106 	ubfx	r1, r1, #8, #7
 80016ce:	4348      	muls	r0, r1
 80016d0:	9006      	str	r0, [sp, #24]
 80016d2:	e01f      	b.n	8001714 <HAL_RCC_GetSysClockFreq+0x166>
 80016d4:	9803      	ldr	r0, [sp, #12]
 80016d6:	f241 2100 	movw	r1, #4608	; 0x1200
 80016da:	f2c0 017a 	movt	r1, #122	; 0x7a
 80016de:	fbb1 f0f0 	udiv	r0, r1, r0
 80016e2:	f241 010c 	movw	r1, #4108	; 0x100c
 80016e6:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80016ea:	6809      	ldr	r1, [r1, #0]
 80016ec:	f3c1 2106 	ubfx	r1, r1, #8, #7
 80016f0:	4348      	muls	r0, r1
 80016f2:	9006      	str	r0, [sp, #24]
 80016f4:	e00e      	b.n	8001714 <HAL_RCC_GetSysClockFreq+0x166>
 80016f6:	e7ff      	b.n	80016f8 <HAL_RCC_GetSysClockFreq+0x14a>
 80016f8:	9808      	ldr	r0, [sp, #32]
 80016fa:	9903      	ldr	r1, [sp, #12]
 80016fc:	fbb0 f0f1 	udiv	r0, r0, r1
 8001700:	f241 010c 	movw	r1, #4108	; 0x100c
 8001704:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001708:	6809      	ldr	r1, [r1, #0]
 800170a:	f3c1 2106 	ubfx	r1, r1, #8, #7
 800170e:	4348      	muls	r0, r1
 8001710:	9006      	str	r0, [sp, #24]
 8001712:	e7ff      	b.n	8001714 <HAL_RCC_GetSysClockFreq+0x166>
 8001714:	f241 000c 	movw	r0, #4108	; 0x100c
 8001718:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800171c:	6800      	ldr	r0, [r0, #0]
 800171e:	f000 60c0 	and.w	r0, r0, #100663296	; 0x6000000
 8001722:	2102      	movs	r1, #2
 8001724:	eb01 6010 	add.w	r0, r1, r0, lsr #24
 8001728:	9004      	str	r0, [sp, #16]
 800172a:	9806      	ldr	r0, [sp, #24]
 800172c:	9904      	ldr	r1, [sp, #16]
 800172e:	fbb0 f0f1 	udiv	r0, r0, r1
 8001732:	9007      	str	r0, [sp, #28]
 8001734:	e7ff      	b.n	8001736 <HAL_RCC_GetSysClockFreq+0x188>
 8001736:	9807      	ldr	r0, [sp, #28]
 8001738:	b009      	add	sp, #36	; 0x24
 800173a:	4770      	bx	lr

0800173c <HAL_RCC_GetHCLKFreq>:
 800173c:	f240 0018 	movw	r0, #24
 8001740:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001744:	6800      	ldr	r0, [r0, #0]
 8001746:	4770      	bx	lr

08001748 <HAL_RCC_GetPCLK1Freq>:
 8001748:	b580      	push	{r7, lr}
 800174a:	466f      	mov	r7, sp
 800174c:	f7ff fff6 	bl	800173c <HAL_RCC_GetHCLKFreq>
 8001750:	f241 0e08 	movw	lr, #4104	; 0x1008
 8001754:	f2c4 0e02 	movt	lr, #16386	; 0x4002
 8001758:	f8de e000 	ldr.w	lr, [lr]
 800175c:	f3ce 2e02 	ubfx	lr, lr, #8, #3
 8001760:	f648 21a0 	movw	r1, #35488	; 0x8aa0
 8001764:	f6c0 0100 	movt	r1, #2048	; 0x800
 8001768:	f811 100e 	ldrb.w	r1, [r1, lr]
 800176c:	f001 011f 	and.w	r1, r1, #31
 8001770:	40c8      	lsrs	r0, r1
 8001772:	bd80      	pop	{r7, pc}

08001774 <HAL_RCC_GetPCLK2Freq>:
 8001774:	b580      	push	{r7, lr}
 8001776:	466f      	mov	r7, sp
 8001778:	f7ff ffe0 	bl	800173c <HAL_RCC_GetHCLKFreq>
 800177c:	f241 0e08 	movw	lr, #4104	; 0x1008
 8001780:	f2c4 0e02 	movt	lr, #16386	; 0x4002
 8001784:	f8de e000 	ldr.w	lr, [lr]
 8001788:	f3ce 2ec2 	ubfx	lr, lr, #11, #3
 800178c:	f648 21a0 	movw	r1, #35488	; 0x8aa0
 8001790:	f6c0 0100 	movt	r1, #2048	; 0x800
 8001794:	f811 100e 	ldrb.w	r1, [r1, lr]
 8001798:	f001 011f 	and.w	r1, r1, #31
 800179c:	40c8      	lsrs	r0, r1
 800179e:	bd80      	pop	{r7, pc}

080017a0 <HAL_TIM_IRQHandler>:
 80017a0:	b580      	push	{r7, lr}
 80017a2:	466f      	mov	r7, sp
 80017a4:	b082      	sub	sp, #8
 80017a6:	4601      	mov	r1, r0
 80017a8:	9001      	str	r0, [sp, #4]
 80017aa:	9801      	ldr	r0, [sp, #4]
 80017ac:	6800      	ldr	r0, [r0, #0]
 80017ae:	6900      	ldr	r0, [r0, #16]
 80017b0:	f000 0002 	and.w	r0, r0, #2
 80017b4:	2200      	movs	r2, #0
 80017b6:	ebb2 0f50 	cmp.w	r2, r0, lsr #1
 80017ba:	9100      	str	r1, [sp, #0]
 80017bc:	d02b      	beq.n	8001816 <HAL_TIM_IRQHandler+0x76>
 80017be:	e7ff      	b.n	80017c0 <HAL_TIM_IRQHandler+0x20>
 80017c0:	9801      	ldr	r0, [sp, #4]
 80017c2:	6800      	ldr	r0, [r0, #0]
 80017c4:	68c0      	ldr	r0, [r0, #12]
 80017c6:	f000 0002 	and.w	r0, r0, #2
 80017ca:	2100      	movs	r1, #0
 80017cc:	2802      	cmp	r0, #2
 80017ce:	bf08      	it	eq
 80017d0:	2101      	moveq	r1, #1
 80017d2:	2900      	cmp	r1, #0
 80017d4:	d01e      	beq.n	8001814 <HAL_TIM_IRQHandler+0x74>
 80017d6:	e7ff      	b.n	80017d8 <HAL_TIM_IRQHandler+0x38>
 80017d8:	9801      	ldr	r0, [sp, #4]
 80017da:	6800      	ldr	r0, [r0, #0]
 80017dc:	f06f 0102 	mvn.w	r1, #2
 80017e0:	6101      	str	r1, [r0, #16]
 80017e2:	9801      	ldr	r0, [sp, #4]
 80017e4:	2101      	movs	r1, #1
 80017e6:	61c1      	str	r1, [r0, #28]
 80017e8:	9801      	ldr	r0, [sp, #4]
 80017ea:	6800      	ldr	r0, [r0, #0]
 80017ec:	6980      	ldr	r0, [r0, #24]
 80017ee:	f010 0f03 	tst.w	r0, #3
 80017f2:	d004      	beq.n	80017fe <HAL_TIM_IRQHandler+0x5e>
 80017f4:	e7ff      	b.n	80017f6 <HAL_TIM_IRQHandler+0x56>
 80017f6:	9801      	ldr	r0, [sp, #4]
 80017f8:	f000 f94a 	bl	8001a90 <HAL_TIM_IC_CaptureCallback>
 80017fc:	e006      	b.n	800180c <HAL_TIM_IRQHandler+0x6c>
 80017fe:	9801      	ldr	r0, [sp, #4]
 8001800:	f000 f94c 	bl	8001a9c <HAL_TIM_OC_DelayElapsedCallback>
 8001804:	9801      	ldr	r0, [sp, #4]
 8001806:	f000 f94f 	bl	8001aa8 <HAL_TIM_PWM_PulseFinishedCallback>
 800180a:	e7ff      	b.n	800180c <HAL_TIM_IRQHandler+0x6c>
 800180c:	9801      	ldr	r0, [sp, #4]
 800180e:	2100      	movs	r1, #0
 8001810:	61c1      	str	r1, [r0, #28]
 8001812:	e7ff      	b.n	8001814 <HAL_TIM_IRQHandler+0x74>
 8001814:	e7ff      	b.n	8001816 <HAL_TIM_IRQHandler+0x76>
 8001816:	9801      	ldr	r0, [sp, #4]
 8001818:	6800      	ldr	r0, [r0, #0]
 800181a:	6900      	ldr	r0, [r0, #16]
 800181c:	f000 0004 	and.w	r0, r0, #4
 8001820:	2100      	movs	r1, #0
 8001822:	ebb1 0f90 	cmp.w	r1, r0, lsr #2
 8001826:	d02b      	beq.n	8001880 <HAL_TIM_IRQHandler+0xe0>
 8001828:	e7ff      	b.n	800182a <HAL_TIM_IRQHandler+0x8a>
 800182a:	9801      	ldr	r0, [sp, #4]
 800182c:	6800      	ldr	r0, [r0, #0]
 800182e:	68c0      	ldr	r0, [r0, #12]
 8001830:	f000 0004 	and.w	r0, r0, #4
 8001834:	2100      	movs	r1, #0
 8001836:	2804      	cmp	r0, #4
 8001838:	bf08      	it	eq
 800183a:	2101      	moveq	r1, #1
 800183c:	2900      	cmp	r1, #0
 800183e:	d01e      	beq.n	800187e <HAL_TIM_IRQHandler+0xde>
 8001840:	e7ff      	b.n	8001842 <HAL_TIM_IRQHandler+0xa2>
 8001842:	9801      	ldr	r0, [sp, #4]
 8001844:	6800      	ldr	r0, [r0, #0]
 8001846:	f06f 0104 	mvn.w	r1, #4
 800184a:	6101      	str	r1, [r0, #16]
 800184c:	9801      	ldr	r0, [sp, #4]
 800184e:	2102      	movs	r1, #2
 8001850:	61c1      	str	r1, [r0, #28]
 8001852:	9801      	ldr	r0, [sp, #4]
 8001854:	6800      	ldr	r0, [r0, #0]
 8001856:	6980      	ldr	r0, [r0, #24]
 8001858:	f410 7f40 	tst.w	r0, #768	; 0x300
 800185c:	d004      	beq.n	8001868 <HAL_TIM_IRQHandler+0xc8>
 800185e:	e7ff      	b.n	8001860 <HAL_TIM_IRQHandler+0xc0>
 8001860:	9801      	ldr	r0, [sp, #4]
 8001862:	f000 f915 	bl	8001a90 <HAL_TIM_IC_CaptureCallback>
 8001866:	e006      	b.n	8001876 <HAL_TIM_IRQHandler+0xd6>
 8001868:	9801      	ldr	r0, [sp, #4]
 800186a:	f000 f917 	bl	8001a9c <HAL_TIM_OC_DelayElapsedCallback>
 800186e:	9801      	ldr	r0, [sp, #4]
 8001870:	f000 f91a 	bl	8001aa8 <HAL_TIM_PWM_PulseFinishedCallback>
 8001874:	e7ff      	b.n	8001876 <HAL_TIM_IRQHandler+0xd6>
 8001876:	9801      	ldr	r0, [sp, #4]
 8001878:	2100      	movs	r1, #0
 800187a:	61c1      	str	r1, [r0, #28]
 800187c:	e7ff      	b.n	800187e <HAL_TIM_IRQHandler+0xde>
 800187e:	e7ff      	b.n	8001880 <HAL_TIM_IRQHandler+0xe0>
 8001880:	9801      	ldr	r0, [sp, #4]
 8001882:	6800      	ldr	r0, [r0, #0]
 8001884:	6900      	ldr	r0, [r0, #16]
 8001886:	f000 0008 	and.w	r0, r0, #8
 800188a:	2100      	movs	r1, #0
 800188c:	ebb1 0fd0 	cmp.w	r1, r0, lsr #3
 8001890:	d02b      	beq.n	80018ea <HAL_TIM_IRQHandler+0x14a>
 8001892:	e7ff      	b.n	8001894 <HAL_TIM_IRQHandler+0xf4>
 8001894:	9801      	ldr	r0, [sp, #4]
 8001896:	6800      	ldr	r0, [r0, #0]
 8001898:	68c0      	ldr	r0, [r0, #12]
 800189a:	f000 0008 	and.w	r0, r0, #8
 800189e:	2100      	movs	r1, #0
 80018a0:	2808      	cmp	r0, #8
 80018a2:	bf08      	it	eq
 80018a4:	2101      	moveq	r1, #1
 80018a6:	2900      	cmp	r1, #0
 80018a8:	d01e      	beq.n	80018e8 <HAL_TIM_IRQHandler+0x148>
 80018aa:	e7ff      	b.n	80018ac <HAL_TIM_IRQHandler+0x10c>
 80018ac:	9801      	ldr	r0, [sp, #4]
 80018ae:	6800      	ldr	r0, [r0, #0]
 80018b0:	f06f 0108 	mvn.w	r1, #8
 80018b4:	6101      	str	r1, [r0, #16]
 80018b6:	9801      	ldr	r0, [sp, #4]
 80018b8:	2104      	movs	r1, #4
 80018ba:	61c1      	str	r1, [r0, #28]
 80018bc:	9801      	ldr	r0, [sp, #4]
 80018be:	6800      	ldr	r0, [r0, #0]
 80018c0:	69c0      	ldr	r0, [r0, #28]
 80018c2:	f010 0f03 	tst.w	r0, #3
 80018c6:	d004      	beq.n	80018d2 <HAL_TIM_IRQHandler+0x132>
 80018c8:	e7ff      	b.n	80018ca <HAL_TIM_IRQHandler+0x12a>
 80018ca:	9801      	ldr	r0, [sp, #4]
 80018cc:	f000 f8e0 	bl	8001a90 <HAL_TIM_IC_CaptureCallback>
 80018d0:	e006      	b.n	80018e0 <HAL_TIM_IRQHandler+0x140>
 80018d2:	9801      	ldr	r0, [sp, #4]
 80018d4:	f000 f8e2 	bl	8001a9c <HAL_TIM_OC_DelayElapsedCallback>
 80018d8:	9801      	ldr	r0, [sp, #4]
 80018da:	f000 f8e5 	bl	8001aa8 <HAL_TIM_PWM_PulseFinishedCallback>
 80018de:	e7ff      	b.n	80018e0 <HAL_TIM_IRQHandler+0x140>
 80018e0:	9801      	ldr	r0, [sp, #4]
 80018e2:	2100      	movs	r1, #0
 80018e4:	61c1      	str	r1, [r0, #28]
 80018e6:	e7ff      	b.n	80018e8 <HAL_TIM_IRQHandler+0x148>
 80018e8:	e7ff      	b.n	80018ea <HAL_TIM_IRQHandler+0x14a>
 80018ea:	9801      	ldr	r0, [sp, #4]
 80018ec:	6800      	ldr	r0, [r0, #0]
 80018ee:	6900      	ldr	r0, [r0, #16]
 80018f0:	f000 0010 	and.w	r0, r0, #16
 80018f4:	2100      	movs	r1, #0
 80018f6:	ebb1 1f10 	cmp.w	r1, r0, lsr #4
 80018fa:	d02b      	beq.n	8001954 <HAL_TIM_IRQHandler+0x1b4>
 80018fc:	e7ff      	b.n	80018fe <HAL_TIM_IRQHandler+0x15e>
 80018fe:	9801      	ldr	r0, [sp, #4]
 8001900:	6800      	ldr	r0, [r0, #0]
 8001902:	68c0      	ldr	r0, [r0, #12]
 8001904:	f000 0010 	and.w	r0, r0, #16
 8001908:	2100      	movs	r1, #0
 800190a:	2810      	cmp	r0, #16
 800190c:	bf08      	it	eq
 800190e:	2101      	moveq	r1, #1
 8001910:	2900      	cmp	r1, #0
 8001912:	d01e      	beq.n	8001952 <HAL_TIM_IRQHandler+0x1b2>
 8001914:	e7ff      	b.n	8001916 <HAL_TIM_IRQHandler+0x176>
 8001916:	9801      	ldr	r0, [sp, #4]
 8001918:	6800      	ldr	r0, [r0, #0]
 800191a:	f06f 0110 	mvn.w	r1, #16
 800191e:	6101      	str	r1, [r0, #16]
 8001920:	9801      	ldr	r0, [sp, #4]
 8001922:	2108      	movs	r1, #8
 8001924:	61c1      	str	r1, [r0, #28]
 8001926:	9801      	ldr	r0, [sp, #4]
 8001928:	6800      	ldr	r0, [r0, #0]
 800192a:	69c0      	ldr	r0, [r0, #28]
 800192c:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001930:	d004      	beq.n	800193c <HAL_TIM_IRQHandler+0x19c>
 8001932:	e7ff      	b.n	8001934 <HAL_TIM_IRQHandler+0x194>
 8001934:	9801      	ldr	r0, [sp, #4]
 8001936:	f000 f8ab 	bl	8001a90 <HAL_TIM_IC_CaptureCallback>
 800193a:	e006      	b.n	800194a <HAL_TIM_IRQHandler+0x1aa>
 800193c:	9801      	ldr	r0, [sp, #4]
 800193e:	f000 f8ad 	bl	8001a9c <HAL_TIM_OC_DelayElapsedCallback>
 8001942:	9801      	ldr	r0, [sp, #4]
 8001944:	f000 f8b0 	bl	8001aa8 <HAL_TIM_PWM_PulseFinishedCallback>
 8001948:	e7ff      	b.n	800194a <HAL_TIM_IRQHandler+0x1aa>
 800194a:	9801      	ldr	r0, [sp, #4]
 800194c:	2100      	movs	r1, #0
 800194e:	61c1      	str	r1, [r0, #28]
 8001950:	e7ff      	b.n	8001952 <HAL_TIM_IRQHandler+0x1b2>
 8001952:	e7ff      	b.n	8001954 <HAL_TIM_IRQHandler+0x1b4>
 8001954:	9801      	ldr	r0, [sp, #4]
 8001956:	6800      	ldr	r0, [r0, #0]
 8001958:	6900      	ldr	r0, [r0, #16]
 800195a:	f010 0f01 	tst.w	r0, #1
 800195e:	d015      	beq.n	800198c <HAL_TIM_IRQHandler+0x1ec>
 8001960:	e7ff      	b.n	8001962 <HAL_TIM_IRQHandler+0x1c2>
 8001962:	9801      	ldr	r0, [sp, #4]
 8001964:	6800      	ldr	r0, [r0, #0]
 8001966:	68c0      	ldr	r0, [r0, #12]
 8001968:	f000 0001 	and.w	r0, r0, #1
 800196c:	2801      	cmp	r0, #1
 800196e:	bf18      	it	ne
 8001970:	2000      	movne	r0, #0
 8001972:	2800      	cmp	r0, #0
 8001974:	d009      	beq.n	800198a <HAL_TIM_IRQHandler+0x1ea>
 8001976:	e7ff      	b.n	8001978 <HAL_TIM_IRQHandler+0x1d8>
 8001978:	9801      	ldr	r0, [sp, #4]
 800197a:	6800      	ldr	r0, [r0, #0]
 800197c:	f06f 0101 	mvn.w	r1, #1
 8001980:	6101      	str	r1, [r0, #16]
 8001982:	9801      	ldr	r0, [sp, #4]
 8001984:	f000 f8ae 	bl	8001ae4 <HAL_TIM_PeriodElapsedCallback>
 8001988:	e7ff      	b.n	800198a <HAL_TIM_IRQHandler+0x1ea>
 800198a:	e7ff      	b.n	800198c <HAL_TIM_IRQHandler+0x1ec>
 800198c:	9801      	ldr	r0, [sp, #4]
 800198e:	6800      	ldr	r0, [r0, #0]
 8001990:	6900      	ldr	r0, [r0, #16]
 8001992:	f000 0080 	and.w	r0, r0, #128	; 0x80
 8001996:	2100      	movs	r1, #0
 8001998:	ebb1 1fd0 	cmp.w	r1, r0, lsr #7
 800199c:	d016      	beq.n	80019cc <HAL_TIM_IRQHandler+0x22c>
 800199e:	e7ff      	b.n	80019a0 <HAL_TIM_IRQHandler+0x200>
 80019a0:	9801      	ldr	r0, [sp, #4]
 80019a2:	6800      	ldr	r0, [r0, #0]
 80019a4:	68c0      	ldr	r0, [r0, #12]
 80019a6:	f000 0080 	and.w	r0, r0, #128	; 0x80
 80019aa:	2100      	movs	r1, #0
 80019ac:	2880      	cmp	r0, #128	; 0x80
 80019ae:	bf08      	it	eq
 80019b0:	2101      	moveq	r1, #1
 80019b2:	2900      	cmp	r1, #0
 80019b4:	d009      	beq.n	80019ca <HAL_TIM_IRQHandler+0x22a>
 80019b6:	e7ff      	b.n	80019b8 <HAL_TIM_IRQHandler+0x218>
 80019b8:	9801      	ldr	r0, [sp, #4]
 80019ba:	6800      	ldr	r0, [r0, #0]
 80019bc:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80019c0:	6101      	str	r1, [r0, #16]
 80019c2:	9801      	ldr	r0, [sp, #4]
 80019c4:	f000 f882 	bl	8001acc <HAL_TIMEx_BreakCallback>
 80019c8:	e7ff      	b.n	80019ca <HAL_TIM_IRQHandler+0x22a>
 80019ca:	e7ff      	b.n	80019cc <HAL_TIM_IRQHandler+0x22c>
 80019cc:	9801      	ldr	r0, [sp, #4]
 80019ce:	6800      	ldr	r0, [r0, #0]
 80019d0:	6900      	ldr	r0, [r0, #16]
 80019d2:	f400 7080 	and.w	r0, r0, #256	; 0x100
 80019d6:	2100      	movs	r1, #0
 80019d8:	ebb1 2f10 	cmp.w	r1, r0, lsr #8
 80019dc:	d016      	beq.n	8001a0c <HAL_TIM_IRQHandler+0x26c>
 80019de:	e7ff      	b.n	80019e0 <HAL_TIM_IRQHandler+0x240>
 80019e0:	9801      	ldr	r0, [sp, #4]
 80019e2:	6800      	ldr	r0, [r0, #0]
 80019e4:	68c0      	ldr	r0, [r0, #12]
 80019e6:	f000 0080 	and.w	r0, r0, #128	; 0x80
 80019ea:	2100      	movs	r1, #0
 80019ec:	2880      	cmp	r0, #128	; 0x80
 80019ee:	bf08      	it	eq
 80019f0:	2101      	moveq	r1, #1
 80019f2:	2900      	cmp	r1, #0
 80019f4:	d009      	beq.n	8001a0a <HAL_TIM_IRQHandler+0x26a>
 80019f6:	e7ff      	b.n	80019f8 <HAL_TIM_IRQHandler+0x258>
 80019f8:	9801      	ldr	r0, [sp, #4]
 80019fa:	6800      	ldr	r0, [r0, #0]
 80019fc:	f46f 7180 	mvn.w	r1, #256	; 0x100
 8001a00:	6101      	str	r1, [r0, #16]
 8001a02:	9801      	ldr	r0, [sp, #4]
 8001a04:	f000 f868 	bl	8001ad8 <HAL_TIMEx_Break2Callback>
 8001a08:	e7ff      	b.n	8001a0a <HAL_TIM_IRQHandler+0x26a>
 8001a0a:	e7ff      	b.n	8001a0c <HAL_TIM_IRQHandler+0x26c>
 8001a0c:	9801      	ldr	r0, [sp, #4]
 8001a0e:	6800      	ldr	r0, [r0, #0]
 8001a10:	6900      	ldr	r0, [r0, #16]
 8001a12:	f000 0040 	and.w	r0, r0, #64	; 0x40
 8001a16:	2100      	movs	r1, #0
 8001a18:	ebb1 1f90 	cmp.w	r1, r0, lsr #6
 8001a1c:	d016      	beq.n	8001a4c <HAL_TIM_IRQHandler+0x2ac>
 8001a1e:	e7ff      	b.n	8001a20 <HAL_TIM_IRQHandler+0x280>
 8001a20:	9801      	ldr	r0, [sp, #4]
 8001a22:	6800      	ldr	r0, [r0, #0]
 8001a24:	68c0      	ldr	r0, [r0, #12]
 8001a26:	f000 0040 	and.w	r0, r0, #64	; 0x40
 8001a2a:	2100      	movs	r1, #0
 8001a2c:	2840      	cmp	r0, #64	; 0x40
 8001a2e:	bf08      	it	eq
 8001a30:	2101      	moveq	r1, #1
 8001a32:	2900      	cmp	r1, #0
 8001a34:	d009      	beq.n	8001a4a <HAL_TIM_IRQHandler+0x2aa>
 8001a36:	e7ff      	b.n	8001a38 <HAL_TIM_IRQHandler+0x298>
 8001a38:	9801      	ldr	r0, [sp, #4]
 8001a3a:	6800      	ldr	r0, [r0, #0]
 8001a3c:	f06f 0140 	mvn.w	r1, #64	; 0x40
 8001a40:	6101      	str	r1, [r0, #16]
 8001a42:	9801      	ldr	r0, [sp, #4]
 8001a44:	f000 f836 	bl	8001ab4 <HAL_TIM_TriggerCallback>
 8001a48:	e7ff      	b.n	8001a4a <HAL_TIM_IRQHandler+0x2aa>
 8001a4a:	e7ff      	b.n	8001a4c <HAL_TIM_IRQHandler+0x2ac>
 8001a4c:	9801      	ldr	r0, [sp, #4]
 8001a4e:	6800      	ldr	r0, [r0, #0]
 8001a50:	6900      	ldr	r0, [r0, #16]
 8001a52:	f000 0020 	and.w	r0, r0, #32
 8001a56:	2100      	movs	r1, #0
 8001a58:	ebb1 1f50 	cmp.w	r1, r0, lsr #5
 8001a5c:	d016      	beq.n	8001a8c <HAL_TIM_IRQHandler+0x2ec>
 8001a5e:	e7ff      	b.n	8001a60 <HAL_TIM_IRQHandler+0x2c0>
 8001a60:	9801      	ldr	r0, [sp, #4]
 8001a62:	6800      	ldr	r0, [r0, #0]
 8001a64:	68c0      	ldr	r0, [r0, #12]
 8001a66:	f000 0020 	and.w	r0, r0, #32
 8001a6a:	2100      	movs	r1, #0
 8001a6c:	2820      	cmp	r0, #32
 8001a6e:	bf08      	it	eq
 8001a70:	2101      	moveq	r1, #1
 8001a72:	2900      	cmp	r1, #0
 8001a74:	d009      	beq.n	8001a8a <HAL_TIM_IRQHandler+0x2ea>
 8001a76:	e7ff      	b.n	8001a78 <HAL_TIM_IRQHandler+0x2d8>
 8001a78:	9801      	ldr	r0, [sp, #4]
 8001a7a:	6800      	ldr	r0, [r0, #0]
 8001a7c:	f06f 0120 	mvn.w	r1, #32
 8001a80:	6101      	str	r1, [r0, #16]
 8001a82:	9801      	ldr	r0, [sp, #4]
 8001a84:	f000 f81c 	bl	8001ac0 <HAL_TIMEx_CommutationCallback>
 8001a88:	e7ff      	b.n	8001a8a <HAL_TIM_IRQHandler+0x2ea>
 8001a8a:	e7ff      	b.n	8001a8c <HAL_TIM_IRQHandler+0x2ec>
 8001a8c:	b002      	add	sp, #8
 8001a8e:	bd80      	pop	{r7, pc}

08001a90 <HAL_TIM_IC_CaptureCallback>:
 8001a90:	b082      	sub	sp, #8
 8001a92:	4601      	mov	r1, r0
 8001a94:	9001      	str	r0, [sp, #4]
 8001a96:	9100      	str	r1, [sp, #0]
 8001a98:	b002      	add	sp, #8
 8001a9a:	4770      	bx	lr

08001a9c <HAL_TIM_OC_DelayElapsedCallback>:
 8001a9c:	b082      	sub	sp, #8
 8001a9e:	4601      	mov	r1, r0
 8001aa0:	9001      	str	r0, [sp, #4]
 8001aa2:	9100      	str	r1, [sp, #0]
 8001aa4:	b002      	add	sp, #8
 8001aa6:	4770      	bx	lr

08001aa8 <HAL_TIM_PWM_PulseFinishedCallback>:
 8001aa8:	b082      	sub	sp, #8
 8001aaa:	4601      	mov	r1, r0
 8001aac:	9001      	str	r0, [sp, #4]
 8001aae:	9100      	str	r1, [sp, #0]
 8001ab0:	b002      	add	sp, #8
 8001ab2:	4770      	bx	lr

08001ab4 <HAL_TIM_TriggerCallback>:
 8001ab4:	b082      	sub	sp, #8
 8001ab6:	4601      	mov	r1, r0
 8001ab8:	9001      	str	r0, [sp, #4]
 8001aba:	9100      	str	r1, [sp, #0]
 8001abc:	b002      	add	sp, #8
 8001abe:	4770      	bx	lr

08001ac0 <HAL_TIMEx_CommutationCallback>:
 8001ac0:	b082      	sub	sp, #8
 8001ac2:	4601      	mov	r1, r0
 8001ac4:	9001      	str	r0, [sp, #4]
 8001ac6:	9100      	str	r1, [sp, #0]
 8001ac8:	b002      	add	sp, #8
 8001aca:	4770      	bx	lr

08001acc <HAL_TIMEx_BreakCallback>:
 8001acc:	b082      	sub	sp, #8
 8001ace:	4601      	mov	r1, r0
 8001ad0:	9001      	str	r0, [sp, #4]
 8001ad2:	9100      	str	r1, [sp, #0]
 8001ad4:	b002      	add	sp, #8
 8001ad6:	4770      	bx	lr

08001ad8 <HAL_TIMEx_Break2Callback>:
 8001ad8:	b082      	sub	sp, #8
 8001ada:	4601      	mov	r1, r0
 8001adc:	9001      	str	r0, [sp, #4]
 8001ade:	9100      	str	r1, [sp, #0]
 8001ae0:	b002      	add	sp, #8
 8001ae2:	4770      	bx	lr

08001ae4 <HAL_TIM_PeriodElapsedCallback>:
 8001ae4:	b580      	push	{r7, lr}
 8001ae6:	466f      	mov	r7, sp
 8001ae8:	b082      	sub	sp, #8
 8001aea:	4601      	mov	r1, r0
 8001aec:	9001      	str	r0, [sp, #4]
 8001aee:	9100      	str	r1, [sp, #0]
 8001af0:	f7ff fb5a 	bl	80011a8 <HAL_IncTick>
 8001af4:	b002      	add	sp, #8
 8001af6:	bd80      	pop	{r7, pc}

08001af8 <TIM6_DAC_IRQHandler>:
 8001af8:	b580      	push	{r7, lr}
 8001afa:	466f      	mov	r7, sp
 8001afc:	f244 70f0 	movw	r0, #18416	; 0x47f0
 8001b00:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001b04:	f7ff fe4c 	bl	80017a0 <HAL_TIM_IRQHandler>
 8001b08:	bd80      	pop	{r7, pc}

08001b0a <HAL_UART_Init>:
 8001b0a:	b580      	push	{r7, lr}
 8001b0c:	466f      	mov	r7, sp
 8001b0e:	b084      	sub	sp, #16
 8001b10:	4601      	mov	r1, r0
 8001b12:	9002      	str	r0, [sp, #8]
 8001b14:	9802      	ldr	r0, [sp, #8]
 8001b16:	2800      	cmp	r0, #0
 8001b18:	9101      	str	r1, [sp, #4]
 8001b1a:	d103      	bne.n	8001b24 <HAL_UART_Init+0x1a>
 8001b1c:	e7ff      	b.n	8001b1e <HAL_UART_Init+0x14>
 8001b1e:	2001      	movs	r0, #1
 8001b20:	9003      	str	r0, [sp, #12]
 8001b22:	e044      	b.n	8001bae <HAL_UART_Init+0xa4>
 8001b24:	9802      	ldr	r0, [sp, #8]
 8001b26:	6980      	ldr	r0, [r0, #24]
 8001b28:	2800      	cmp	r0, #0
 8001b2a:	d001      	beq.n	8001b30 <HAL_UART_Init+0x26>
 8001b2c:	e7ff      	b.n	8001b2e <HAL_UART_Init+0x24>
 8001b2e:	e000      	b.n	8001b32 <HAL_UART_Init+0x28>
 8001b30:	e7ff      	b.n	8001b32 <HAL_UART_Init+0x28>
 8001b32:	9802      	ldr	r0, [sp, #8]
 8001b34:	6f40      	ldr	r0, [r0, #116]	; 0x74
 8001b36:	2800      	cmp	r0, #0
 8001b38:	d107      	bne.n	8001b4a <HAL_UART_Init+0x40>
 8001b3a:	e7ff      	b.n	8001b3c <HAL_UART_Init+0x32>
 8001b3c:	9802      	ldr	r0, [sp, #8]
 8001b3e:	2100      	movs	r1, #0
 8001b40:	6701      	str	r1, [r0, #112]	; 0x70
 8001b42:	9802      	ldr	r0, [sp, #8]
 8001b44:	f000 f836 	bl	8001bb4 <HAL_UART_MspInit>
 8001b48:	e7ff      	b.n	8001b4a <HAL_UART_Init+0x40>
 8001b4a:	9802      	ldr	r0, [sp, #8]
 8001b4c:	2124      	movs	r1, #36	; 0x24
 8001b4e:	6741      	str	r1, [r0, #116]	; 0x74
 8001b50:	9802      	ldr	r0, [sp, #8]
 8001b52:	6800      	ldr	r0, [r0, #0]
 8001b54:	6801      	ldr	r1, [r0, #0]
 8001b56:	f021 0101 	bic.w	r1, r1, #1
 8001b5a:	6001      	str	r1, [r0, #0]
 8001b5c:	9802      	ldr	r0, [sp, #8]
 8001b5e:	f000 f82f 	bl	8001bc0 <UART_SetConfig>
 8001b62:	2801      	cmp	r0, #1
 8001b64:	d103      	bne.n	8001b6e <HAL_UART_Init+0x64>
 8001b66:	e7ff      	b.n	8001b68 <HAL_UART_Init+0x5e>
 8001b68:	2001      	movs	r0, #1
 8001b6a:	9003      	str	r0, [sp, #12]
 8001b6c:	e01f      	b.n	8001bae <HAL_UART_Init+0xa4>
 8001b6e:	9802      	ldr	r0, [sp, #8]
 8001b70:	6a40      	ldr	r0, [r0, #36]	; 0x24
 8001b72:	2800      	cmp	r0, #0
 8001b74:	d004      	beq.n	8001b80 <HAL_UART_Init+0x76>
 8001b76:	e7ff      	b.n	8001b78 <HAL_UART_Init+0x6e>
 8001b78:	9802      	ldr	r0, [sp, #8]
 8001b7a:	f000 fb50 	bl	800221e <UART_AdvFeatureConfig>
 8001b7e:	e7ff      	b.n	8001b80 <HAL_UART_Init+0x76>
 8001b80:	9802      	ldr	r0, [sp, #8]
 8001b82:	6800      	ldr	r0, [r0, #0]
 8001b84:	6841      	ldr	r1, [r0, #4]
 8001b86:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001b8a:	6041      	str	r1, [r0, #4]
 8001b8c:	9802      	ldr	r0, [sp, #8]
 8001b8e:	6800      	ldr	r0, [r0, #0]
 8001b90:	6881      	ldr	r1, [r0, #8]
 8001b92:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001b96:	6081      	str	r1, [r0, #8]
 8001b98:	9802      	ldr	r0, [sp, #8]
 8001b9a:	6800      	ldr	r0, [r0, #0]
 8001b9c:	6801      	ldr	r1, [r0, #0]
 8001b9e:	f041 0101 	orr.w	r1, r1, #1
 8001ba2:	6001      	str	r1, [r0, #0]
 8001ba4:	9802      	ldr	r0, [sp, #8]
 8001ba6:	f000 fbd9 	bl	800235c <UART_CheckIdleState>
 8001baa:	9003      	str	r0, [sp, #12]
 8001bac:	e7ff      	b.n	8001bae <HAL_UART_Init+0xa4>
 8001bae:	9803      	ldr	r0, [sp, #12]
 8001bb0:	b004      	add	sp, #16
 8001bb2:	bd80      	pop	{r7, pc}

08001bb4 <HAL_UART_MspInit>:
 8001bb4:	b082      	sub	sp, #8
 8001bb6:	4601      	mov	r1, r0
 8001bb8:	9001      	str	r0, [sp, #4]
 8001bba:	9100      	str	r1, [sp, #0]
 8001bbc:	b002      	add	sp, #8
 8001bbe:	4770      	bx	lr

08001bc0 <UART_SetConfig>:
 8001bc0:	b580      	push	{r7, lr}
 8001bc2:	466f      	mov	r7, sp
 8001bc4:	b098      	sub	sp, #96	; 0x60
 8001bc6:	4601      	mov	r1, r0
 8001bc8:	9017      	str	r0, [sp, #92]	; 0x5c
 8001bca:	2000      	movs	r0, #0
 8001bcc:	9016      	str	r0, [sp, #88]	; 0x58
 8001bce:	2210      	movs	r2, #16
 8001bd0:	9215      	str	r2, [sp, #84]	; 0x54
 8001bd2:	f827 0c0e 	strh.w	r0, [r7, #-14]
 8001bd6:	9013      	str	r0, [sp, #76]	; 0x4c
 8001bd8:	9012      	str	r0, [sp, #72]	; 0x48
 8001bda:	9011      	str	r0, [sp, #68]	; 0x44
 8001bdc:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001bde:	6800      	ldr	r0, [r0, #0]
 8001be0:	f248 0200 	movw	r2, #32768	; 0x8000
 8001be4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001be8:	4290      	cmp	r0, r2
 8001bea:	9110      	str	r1, [sp, #64]	; 0x40
 8001bec:	d101      	bne.n	8001bf2 <UART_SetConfig+0x32>
 8001bee:	e7ff      	b.n	8001bf0 <UART_SetConfig+0x30>
 8001bf0:	e000      	b.n	8001bf4 <UART_SetConfig+0x34>
 8001bf2:	e7ff      	b.n	8001bf4 <UART_SetConfig+0x34>
 8001bf4:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001bf6:	6881      	ldr	r1, [r0, #8]
 8001bf8:	6902      	ldr	r2, [r0, #16]
 8001bfa:	6943      	ldr	r3, [r0, #20]
 8001bfc:	69c0      	ldr	r0, [r0, #28]
 8001bfe:	4311      	orrs	r1, r2
 8001c00:	4319      	orrs	r1, r3
 8001c02:	4308      	orrs	r0, r1
 8001c04:	9016      	str	r0, [sp, #88]	; 0x58
 8001c06:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001c08:	6800      	ldr	r0, [r0, #0]
 8001c0a:	6800      	ldr	r0, [r0, #0]
 8001c0c:	f646 11f3 	movw	r1, #27123	; 0x69f3
 8001c10:	f6ce 71ff 	movt	r1, #61439	; 0xefff
 8001c14:	4008      	ands	r0, r1
 8001c16:	9916      	ldr	r1, [sp, #88]	; 0x58
 8001c18:	4308      	orrs	r0, r1
 8001c1a:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001c1c:	6809      	ldr	r1, [r1, #0]
 8001c1e:	6008      	str	r0, [r1, #0]
 8001c20:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001c22:	6800      	ldr	r0, [r0, #0]
 8001c24:	6840      	ldr	r0, [r0, #4]
 8001c26:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001c2a:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001c2c:	680a      	ldr	r2, [r1, #0]
 8001c2e:	68c9      	ldr	r1, [r1, #12]
 8001c30:	4308      	orrs	r0, r1
 8001c32:	6050      	str	r0, [r2, #4]
 8001c34:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001c36:	6980      	ldr	r0, [r0, #24]
 8001c38:	9016      	str	r0, [sp, #88]	; 0x58
 8001c3a:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001c3c:	6800      	ldr	r0, [r0, #0]
 8001c3e:	f248 0100 	movw	r1, #32768	; 0x8000
 8001c42:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001c46:	4288      	cmp	r0, r1
 8001c48:	d006      	beq.n	8001c58 <UART_SetConfig+0x98>
 8001c4a:	e7ff      	b.n	8001c4c <UART_SetConfig+0x8c>
 8001c4c:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001c4e:	6a00      	ldr	r0, [r0, #32]
 8001c50:	9916      	ldr	r1, [sp, #88]	; 0x58
 8001c52:	4308      	orrs	r0, r1
 8001c54:	9016      	str	r0, [sp, #88]	; 0x58
 8001c56:	e7ff      	b.n	8001c58 <UART_SetConfig+0x98>
 8001c58:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001c5a:	6800      	ldr	r0, [r0, #0]
 8001c5c:	6880      	ldr	r0, [r0, #8]
 8001c5e:	f420 6030 	bic.w	r0, r0, #2816	; 0xb00
 8001c62:	9916      	ldr	r1, [sp, #88]	; 0x58
 8001c64:	4308      	orrs	r0, r1
 8001c66:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001c68:	6809      	ldr	r1, [r1, #0]
 8001c6a:	6088      	str	r0, [r1, #8]
 8001c6c:	e7ff      	b.n	8001c6e <UART_SetConfig+0xae>
 8001c6e:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001c70:	6800      	ldr	r0, [r0, #0]
 8001c72:	f643 0100 	movw	r1, #14336	; 0x3800
 8001c76:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001c7a:	4288      	cmp	r0, r1
 8001c7c:	d120      	bne.n	8001cc0 <UART_SetConfig+0x100>
 8001c7e:	e7ff      	b.n	8001c80 <UART_SetConfig+0xc0>
 8001c80:	f241 0088 	movw	r0, #4232	; 0x1088
 8001c84:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001c88:	6800      	ldr	r0, [r0, #0]
 8001c8a:	f000 0003 	and.w	r0, r0, #3
 8001c8e:	4601      	mov	r1, r0
 8001c90:	2803      	cmp	r0, #3
 8001c92:	910f      	str	r1, [sp, #60]	; 0x3c
 8001c94:	d810      	bhi.n	8001cb8 <UART_SetConfig+0xf8>
 8001c96:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8001c98:	e8df f001 	tbb	[pc, r1]
 8001c9c:	0b050802 	.word	0x0b050802
 8001ca0:	2001      	movs	r0, #1
 8001ca2:	9015      	str	r0, [sp, #84]	; 0x54
 8001ca4:	e00b      	b.n	8001cbe <UART_SetConfig+0xfe>
 8001ca6:	2002      	movs	r0, #2
 8001ca8:	9015      	str	r0, [sp, #84]	; 0x54
 8001caa:	e008      	b.n	8001cbe <UART_SetConfig+0xfe>
 8001cac:	2004      	movs	r0, #4
 8001cae:	9015      	str	r0, [sp, #84]	; 0x54
 8001cb0:	e005      	b.n	8001cbe <UART_SetConfig+0xfe>
 8001cb2:	2008      	movs	r0, #8
 8001cb4:	9015      	str	r0, [sp, #84]	; 0x54
 8001cb6:	e002      	b.n	8001cbe <UART_SetConfig+0xfe>
 8001cb8:	2010      	movs	r0, #16
 8001cba:	9015      	str	r0, [sp, #84]	; 0x54
 8001cbc:	e7ff      	b.n	8001cbe <UART_SetConfig+0xfe>
 8001cbe:	e0fc      	b.n	8001eba <UART_SetConfig+0x2fa>
 8001cc0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001cc2:	6800      	ldr	r0, [r0, #0]
 8001cc4:	f244 4100 	movw	r1, #17408	; 0x4400
 8001cc8:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001ccc:	4288      	cmp	r0, r1
 8001cce:	d125      	bne.n	8001d1c <UART_SetConfig+0x15c>
 8001cd0:	e7ff      	b.n	8001cd2 <UART_SetConfig+0x112>
 8001cd2:	f241 0088 	movw	r0, #4232	; 0x1088
 8001cd6:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001cda:	6800      	ldr	r0, [r0, #0]
 8001cdc:	f000 000c 	and.w	r0, r0, #12
 8001ce0:	4601      	mov	r1, r0
 8001ce2:	280c      	cmp	r0, #12
 8001ce4:	910e      	str	r1, [sp, #56]	; 0x38
 8001ce6:	d815      	bhi.n	8001d14 <UART_SetConfig+0x154>
 8001ce8:	990e      	ldr	r1, [sp, #56]	; 0x38
 8001cea:	e8df f001 	tbb	[pc, r1]
 8001cee:	1307      	.short	0x1307
 8001cf0:	130d1313 	.word	0x130d1313
 8001cf4:	130a1313 	.word	0x130a1313
 8001cf8:	00101313 	.word	0x00101313
 8001cfc:	2000      	movs	r0, #0
 8001cfe:	9015      	str	r0, [sp, #84]	; 0x54
 8001d00:	e00b      	b.n	8001d1a <UART_SetConfig+0x15a>
 8001d02:	2002      	movs	r0, #2
 8001d04:	9015      	str	r0, [sp, #84]	; 0x54
 8001d06:	e008      	b.n	8001d1a <UART_SetConfig+0x15a>
 8001d08:	2004      	movs	r0, #4
 8001d0a:	9015      	str	r0, [sp, #84]	; 0x54
 8001d0c:	e005      	b.n	8001d1a <UART_SetConfig+0x15a>
 8001d0e:	2008      	movs	r0, #8
 8001d10:	9015      	str	r0, [sp, #84]	; 0x54
 8001d12:	e002      	b.n	8001d1a <UART_SetConfig+0x15a>
 8001d14:	2010      	movs	r0, #16
 8001d16:	9015      	str	r0, [sp, #84]	; 0x54
 8001d18:	e7ff      	b.n	8001d1a <UART_SetConfig+0x15a>
 8001d1a:	e0cd      	b.n	8001eb8 <UART_SetConfig+0x2f8>
 8001d1c:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001d1e:	6800      	ldr	r0, [r0, #0]
 8001d20:	f644 0100 	movw	r1, #18432	; 0x4800
 8001d24:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001d28:	4288      	cmp	r0, r1
 8001d2a:	d128      	bne.n	8001d7e <UART_SetConfig+0x1be>
 8001d2c:	e7ff      	b.n	8001d2e <UART_SetConfig+0x16e>
 8001d2e:	f241 0088 	movw	r0, #4232	; 0x1088
 8001d32:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001d36:	6800      	ldr	r0, [r0, #0]
 8001d38:	f000 0030 	and.w	r0, r0, #48	; 0x30
 8001d3c:	4601      	mov	r1, r0
 8001d3e:	2800      	cmp	r0, #0
 8001d40:	910d      	str	r1, [sp, #52]	; 0x34
 8001d42:	d00c      	beq.n	8001d5e <UART_SetConfig+0x19e>
 8001d44:	e7ff      	b.n	8001d46 <UART_SetConfig+0x186>
 8001d46:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001d48:	2810      	cmp	r0, #16
 8001d4a:	d00e      	beq.n	8001d6a <UART_SetConfig+0x1aa>
 8001d4c:	e7ff      	b.n	8001d4e <UART_SetConfig+0x18e>
 8001d4e:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001d50:	2820      	cmp	r0, #32
 8001d52:	d007      	beq.n	8001d64 <UART_SetConfig+0x1a4>
 8001d54:	e7ff      	b.n	8001d56 <UART_SetConfig+0x196>
 8001d56:	980d      	ldr	r0, [sp, #52]	; 0x34
 8001d58:	2830      	cmp	r0, #48	; 0x30
 8001d5a:	d009      	beq.n	8001d70 <UART_SetConfig+0x1b0>
 8001d5c:	e00b      	b.n	8001d76 <UART_SetConfig+0x1b6>
 8001d5e:	2000      	movs	r0, #0
 8001d60:	9015      	str	r0, [sp, #84]	; 0x54
 8001d62:	e00b      	b.n	8001d7c <UART_SetConfig+0x1bc>
 8001d64:	2002      	movs	r0, #2
 8001d66:	9015      	str	r0, [sp, #84]	; 0x54
 8001d68:	e008      	b.n	8001d7c <UART_SetConfig+0x1bc>
 8001d6a:	2004      	movs	r0, #4
 8001d6c:	9015      	str	r0, [sp, #84]	; 0x54
 8001d6e:	e005      	b.n	8001d7c <UART_SetConfig+0x1bc>
 8001d70:	2008      	movs	r0, #8
 8001d72:	9015      	str	r0, [sp, #84]	; 0x54
 8001d74:	e002      	b.n	8001d7c <UART_SetConfig+0x1bc>
 8001d76:	2010      	movs	r0, #16
 8001d78:	9015      	str	r0, [sp, #84]	; 0x54
 8001d7a:	e7ff      	b.n	8001d7c <UART_SetConfig+0x1bc>
 8001d7c:	e09b      	b.n	8001eb6 <UART_SetConfig+0x2f6>
 8001d7e:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001d80:	6800      	ldr	r0, [r0, #0]
 8001d82:	f644 4100 	movw	r1, #19456	; 0x4c00
 8001d86:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001d8a:	4288      	cmp	r0, r1
 8001d8c:	d128      	bne.n	8001de0 <UART_SetConfig+0x220>
 8001d8e:	e7ff      	b.n	8001d90 <UART_SetConfig+0x1d0>
 8001d90:	f241 0088 	movw	r0, #4232	; 0x1088
 8001d94:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001d98:	6800      	ldr	r0, [r0, #0]
 8001d9a:	f000 00c0 	and.w	r0, r0, #192	; 0xc0
 8001d9e:	4601      	mov	r1, r0
 8001da0:	2800      	cmp	r0, #0
 8001da2:	910c      	str	r1, [sp, #48]	; 0x30
 8001da4:	d00c      	beq.n	8001dc0 <UART_SetConfig+0x200>
 8001da6:	e7ff      	b.n	8001da8 <UART_SetConfig+0x1e8>
 8001da8:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001daa:	2840      	cmp	r0, #64	; 0x40
 8001dac:	d00e      	beq.n	8001dcc <UART_SetConfig+0x20c>
 8001dae:	e7ff      	b.n	8001db0 <UART_SetConfig+0x1f0>
 8001db0:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001db2:	2880      	cmp	r0, #128	; 0x80
 8001db4:	d007      	beq.n	8001dc6 <UART_SetConfig+0x206>
 8001db6:	e7ff      	b.n	8001db8 <UART_SetConfig+0x1f8>
 8001db8:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001dba:	28c0      	cmp	r0, #192	; 0xc0
 8001dbc:	d009      	beq.n	8001dd2 <UART_SetConfig+0x212>
 8001dbe:	e00b      	b.n	8001dd8 <UART_SetConfig+0x218>
 8001dc0:	2000      	movs	r0, #0
 8001dc2:	9015      	str	r0, [sp, #84]	; 0x54
 8001dc4:	e00b      	b.n	8001dde <UART_SetConfig+0x21e>
 8001dc6:	2002      	movs	r0, #2
 8001dc8:	9015      	str	r0, [sp, #84]	; 0x54
 8001dca:	e008      	b.n	8001dde <UART_SetConfig+0x21e>
 8001dcc:	2004      	movs	r0, #4
 8001dce:	9015      	str	r0, [sp, #84]	; 0x54
 8001dd0:	e005      	b.n	8001dde <UART_SetConfig+0x21e>
 8001dd2:	2008      	movs	r0, #8
 8001dd4:	9015      	str	r0, [sp, #84]	; 0x54
 8001dd6:	e002      	b.n	8001dde <UART_SetConfig+0x21e>
 8001dd8:	2010      	movs	r0, #16
 8001dda:	9015      	str	r0, [sp, #84]	; 0x54
 8001ddc:	e7ff      	b.n	8001dde <UART_SetConfig+0x21e>
 8001dde:	e069      	b.n	8001eb4 <UART_SetConfig+0x2f4>
 8001de0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001de2:	6800      	ldr	r0, [r0, #0]
 8001de4:	f245 0100 	movw	r1, #20480	; 0x5000
 8001de8:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001dec:	4288      	cmp	r0, r1
 8001dee:	d12b      	bne.n	8001e48 <UART_SetConfig+0x288>
 8001df0:	e7ff      	b.n	8001df2 <UART_SetConfig+0x232>
 8001df2:	f241 0088 	movw	r0, #4232	; 0x1088
 8001df6:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001dfa:	6800      	ldr	r0, [r0, #0]
 8001dfc:	f400 7040 	and.w	r0, r0, #768	; 0x300
 8001e00:	4601      	mov	r1, r0
 8001e02:	2800      	cmp	r0, #0
 8001e04:	910b      	str	r1, [sp, #44]	; 0x2c
 8001e06:	d00f      	beq.n	8001e28 <UART_SetConfig+0x268>
 8001e08:	e7ff      	b.n	8001e0a <UART_SetConfig+0x24a>
 8001e0a:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001e0c:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8001e10:	d010      	beq.n	8001e34 <UART_SetConfig+0x274>
 8001e12:	e7ff      	b.n	8001e14 <UART_SetConfig+0x254>
 8001e14:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001e16:	f5b0 7f00 	cmp.w	r0, #512	; 0x200
 8001e1a:	d008      	beq.n	8001e2e <UART_SetConfig+0x26e>
 8001e1c:	e7ff      	b.n	8001e1e <UART_SetConfig+0x25e>
 8001e1e:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001e20:	f5b0 7f40 	cmp.w	r0, #768	; 0x300
 8001e24:	d009      	beq.n	8001e3a <UART_SetConfig+0x27a>
 8001e26:	e00b      	b.n	8001e40 <UART_SetConfig+0x280>
 8001e28:	2000      	movs	r0, #0
 8001e2a:	9015      	str	r0, [sp, #84]	; 0x54
 8001e2c:	e00b      	b.n	8001e46 <UART_SetConfig+0x286>
 8001e2e:	2002      	movs	r0, #2
 8001e30:	9015      	str	r0, [sp, #84]	; 0x54
 8001e32:	e008      	b.n	8001e46 <UART_SetConfig+0x286>
 8001e34:	2004      	movs	r0, #4
 8001e36:	9015      	str	r0, [sp, #84]	; 0x54
 8001e38:	e005      	b.n	8001e46 <UART_SetConfig+0x286>
 8001e3a:	2008      	movs	r0, #8
 8001e3c:	9015      	str	r0, [sp, #84]	; 0x54
 8001e3e:	e002      	b.n	8001e46 <UART_SetConfig+0x286>
 8001e40:	2010      	movs	r0, #16
 8001e42:	9015      	str	r0, [sp, #84]	; 0x54
 8001e44:	e7ff      	b.n	8001e46 <UART_SetConfig+0x286>
 8001e46:	e034      	b.n	8001eb2 <UART_SetConfig+0x2f2>
 8001e48:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001e4a:	6800      	ldr	r0, [r0, #0]
 8001e4c:	f248 0100 	movw	r1, #32768	; 0x8000
 8001e50:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001e54:	4288      	cmp	r0, r1
 8001e56:	d12b      	bne.n	8001eb0 <UART_SetConfig+0x2f0>
 8001e58:	e7ff      	b.n	8001e5a <UART_SetConfig+0x29a>
 8001e5a:	f241 0088 	movw	r0, #4232	; 0x1088
 8001e5e:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001e62:	6800      	ldr	r0, [r0, #0]
 8001e64:	f400 6040 	and.w	r0, r0, #3072	; 0xc00
 8001e68:	4601      	mov	r1, r0
 8001e6a:	2800      	cmp	r0, #0
 8001e6c:	910a      	str	r1, [sp, #40]	; 0x28
 8001e6e:	d00f      	beq.n	8001e90 <UART_SetConfig+0x2d0>
 8001e70:	e7ff      	b.n	8001e72 <UART_SetConfig+0x2b2>
 8001e72:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001e74:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
 8001e78:	d010      	beq.n	8001e9c <UART_SetConfig+0x2dc>
 8001e7a:	e7ff      	b.n	8001e7c <UART_SetConfig+0x2bc>
 8001e7c:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001e7e:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
 8001e82:	d008      	beq.n	8001e96 <UART_SetConfig+0x2d6>
 8001e84:	e7ff      	b.n	8001e86 <UART_SetConfig+0x2c6>
 8001e86:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001e88:	f5b0 6f40 	cmp.w	r0, #3072	; 0xc00
 8001e8c:	d009      	beq.n	8001ea2 <UART_SetConfig+0x2e2>
 8001e8e:	e00b      	b.n	8001ea8 <UART_SetConfig+0x2e8>
 8001e90:	2000      	movs	r0, #0
 8001e92:	9015      	str	r0, [sp, #84]	; 0x54
 8001e94:	e00b      	b.n	8001eae <UART_SetConfig+0x2ee>
 8001e96:	2002      	movs	r0, #2
 8001e98:	9015      	str	r0, [sp, #84]	; 0x54
 8001e9a:	e008      	b.n	8001eae <UART_SetConfig+0x2ee>
 8001e9c:	2004      	movs	r0, #4
 8001e9e:	9015      	str	r0, [sp, #84]	; 0x54
 8001ea0:	e005      	b.n	8001eae <UART_SetConfig+0x2ee>
 8001ea2:	2008      	movs	r0, #8
 8001ea4:	9015      	str	r0, [sp, #84]	; 0x54
 8001ea6:	e002      	b.n	8001eae <UART_SetConfig+0x2ee>
 8001ea8:	2010      	movs	r0, #16
 8001eaa:	9015      	str	r0, [sp, #84]	; 0x54
 8001eac:	e7ff      	b.n	8001eae <UART_SetConfig+0x2ee>
 8001eae:	e7ff      	b.n	8001eb0 <UART_SetConfig+0x2f0>
 8001eb0:	e7ff      	b.n	8001eb2 <UART_SetConfig+0x2f2>
 8001eb2:	e7ff      	b.n	8001eb4 <UART_SetConfig+0x2f4>
 8001eb4:	e7ff      	b.n	8001eb6 <UART_SetConfig+0x2f6>
 8001eb6:	e7ff      	b.n	8001eb8 <UART_SetConfig+0x2f8>
 8001eb8:	e7ff      	b.n	8001eba <UART_SetConfig+0x2fa>
 8001eba:	e7ff      	b.n	8001ebc <UART_SetConfig+0x2fc>
 8001ebc:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001ebe:	6800      	ldr	r0, [r0, #0]
 8001ec0:	f248 0100 	movw	r1, #32768	; 0x8000
 8001ec4:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001ec8:	4288      	cmp	r0, r1
 8001eca:	f040 80bb 	bne.w	8002044 <UART_SetConfig+0x484>
 8001ece:	e7ff      	b.n	8001ed0 <UART_SetConfig+0x310>
 8001ed0:	9815      	ldr	r0, [sp, #84]	; 0x54
 8001ed2:	2810      	cmp	r0, #16
 8001ed4:	9009      	str	r0, [sp, #36]	; 0x24
 8001ed6:	d81e      	bhi.n	8001f16 <UART_SetConfig+0x356>
 8001ed8:	9909      	ldr	r1, [sp, #36]	; 0x24
 8001eda:	e8df f001 	tbb	[pc, r1]
 8001ede:	1c09      	.short	0x1c09
 8001ee0:	1c131c0d 	.word	0x1c131c0d
 8001ee4:	1c171c1c 	.word	0x1c171c1c
 8001ee8:	1c1c1c1c 	.word	0x1c1c1c1c
 8001eec:	001b1c1c 	.word	0x001b1c1c
 8001ef0:	f7ff fc2a 	bl	8001748 <HAL_RCC_GetPCLK1Freq>
 8001ef4:	9011      	str	r0, [sp, #68]	; 0x44
 8001ef6:	e011      	b.n	8001f1c <UART_SetConfig+0x35c>
 8001ef8:	f242 4000 	movw	r0, #9216	; 0x2400
 8001efc:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001f00:	9011      	str	r0, [sp, #68]	; 0x44
 8001f02:	e00b      	b.n	8001f1c <UART_SetConfig+0x35c>
 8001f04:	f7ff fb53 	bl	80015ae <HAL_RCC_GetSysClockFreq>
 8001f08:	9011      	str	r0, [sp, #68]	; 0x44
 8001f0a:	e007      	b.n	8001f1c <UART_SetConfig+0x35c>
 8001f0c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001f10:	9011      	str	r0, [sp, #68]	; 0x44
 8001f12:	e003      	b.n	8001f1c <UART_SetConfig+0x35c>
 8001f14:	e7ff      	b.n	8001f16 <UART_SetConfig+0x356>
 8001f16:	2001      	movs	r0, #1
 8001f18:	9012      	str	r0, [sp, #72]	; 0x48
 8001f1a:	e7ff      	b.n	8001f1c <UART_SetConfig+0x35c>
 8001f1c:	9811      	ldr	r0, [sp, #68]	; 0x44
 8001f1e:	2800      	cmp	r0, #0
 8001f20:	f000 808f 	beq.w	8002042 <UART_SetConfig+0x482>
 8001f24:	e7ff      	b.n	8001f26 <UART_SetConfig+0x366>
 8001f26:	9811      	ldr	r0, [sp, #68]	; 0x44
 8001f28:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001f2a:	6849      	ldr	r1, [r1, #4]
 8001f2c:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 8001f30:	4288      	cmp	r0, r1
 8001f32:	d307      	bcc.n	8001f44 <UART_SetConfig+0x384>
 8001f34:	e7ff      	b.n	8001f36 <UART_SetConfig+0x376>
 8001f36:	9811      	ldr	r0, [sp, #68]	; 0x44
 8001f38:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001f3a:	6849      	ldr	r1, [r1, #4]
 8001f3c:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
 8001f40:	d903      	bls.n	8001f4a <UART_SetConfig+0x38a>
 8001f42:	e7ff      	b.n	8001f44 <UART_SetConfig+0x384>
 8001f44:	2001      	movs	r0, #1
 8001f46:	9012      	str	r0, [sp, #72]	; 0x48
 8001f48:	e07a      	b.n	8002040 <UART_SetConfig+0x480>
 8001f4a:	9815      	ldr	r0, [sp, #84]	; 0x54
 8001f4c:	2810      	cmp	r0, #16
 8001f4e:	9008      	str	r0, [sp, #32]
 8001f50:	d85f      	bhi.n	8002012 <UART_SetConfig+0x452>
 8001f52:	9908      	ldr	r1, [sp, #32]
 8001f54:	e8df f001 	tbb	[pc, r1]
 8001f58:	5d1d5d09 	.word	0x5d1d5d09
 8001f5c:	5d5d5d33 	.word	0x5d5d5d33
 8001f60:	5d5d5d47 	.word	0x5d5d5d47
 8001f64:	5d5d5d5d 	.word	0x5d5d5d5d
 8001f68:	005c      	.short	0x005c
 8001f6a:	f7ff fbed 	bl	8001748 <HAL_RCC_GetPCLK1Freq>
 8001f6e:	ea4f 6e10 	mov.w	lr, r0, lsr #24
 8001f72:	0200      	lsls	r0, r0, #8
 8001f74:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001f76:	6849      	ldr	r1, [r1, #4]
 8001f78:	eb10 0051 	adds.w	r0, r0, r1, lsr #1
 8001f7c:	f14e 0e00 	adc.w	lr, lr, #0
 8001f80:	f04f 0300 	mov.w	r3, #0
 8001f84:	9107      	str	r1, [sp, #28]
 8001f86:	4671      	mov	r1, lr
 8001f88:	9a07      	ldr	r2, [sp, #28]
 8001f8a:	f7fe f939 	bl	8000200 <__aeabi_uldivmod>
 8001f8e:	9013      	str	r0, [sp, #76]	; 0x4c
 8001f90:	e042      	b.n	8002018 <UART_SetConfig+0x458>
 8001f92:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001f94:	6840      	ldr	r0, [r0, #4]
 8001f96:	2100      	movs	r1, #0
 8001f98:	f2cf 4124 	movt	r1, #62500	; 0xf424
 8001f9c:	eb11 0150 	adds.w	r1, r1, r0, lsr #1
 8001fa0:	f04f 0200 	mov.w	r2, #0
 8001fa4:	f142 0300 	adc.w	r3, r2, #0
 8001fa8:	9006      	str	r0, [sp, #24]
 8001faa:	4608      	mov	r0, r1
 8001fac:	4619      	mov	r1, r3
 8001fae:	9b06      	ldr	r3, [sp, #24]
 8001fb0:	9205      	str	r2, [sp, #20]
 8001fb2:	461a      	mov	r2, r3
 8001fb4:	9b05      	ldr	r3, [sp, #20]
 8001fb6:	f7fe f923 	bl	8000200 <__aeabi_uldivmod>
 8001fba:	9013      	str	r0, [sp, #76]	; 0x4c
 8001fbc:	e02c      	b.n	8002018 <UART_SetConfig+0x458>
 8001fbe:	f7ff faf6 	bl	80015ae <HAL_RCC_GetSysClockFreq>
 8001fc2:	ea4f 6e10 	mov.w	lr, r0, lsr #24
 8001fc6:	0200      	lsls	r0, r0, #8
 8001fc8:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8001fca:	6849      	ldr	r1, [r1, #4]
 8001fcc:	eb10 0051 	adds.w	r0, r0, r1, lsr #1
 8001fd0:	f14e 0e00 	adc.w	lr, lr, #0
 8001fd4:	f04f 0300 	mov.w	r3, #0
 8001fd8:	9104      	str	r1, [sp, #16]
 8001fda:	4671      	mov	r1, lr
 8001fdc:	9a04      	ldr	r2, [sp, #16]
 8001fde:	f7fe f90f 	bl	8000200 <__aeabi_uldivmod>
 8001fe2:	9013      	str	r0, [sp, #76]	; 0x4c
 8001fe4:	e018      	b.n	8002018 <UART_SetConfig+0x458>
 8001fe6:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8001fe8:	6840      	ldr	r0, [r0, #4]
 8001fea:	f44f 0100 	mov.w	r1, #8388608	; 0x800000
 8001fee:	eb11 0150 	adds.w	r1, r1, r0, lsr #1
 8001ff2:	f04f 0200 	mov.w	r2, #0
 8001ff6:	f142 0300 	adc.w	r3, r2, #0
 8001ffa:	9003      	str	r0, [sp, #12]
 8001ffc:	4608      	mov	r0, r1
 8001ffe:	4619      	mov	r1, r3
 8002000:	9b03      	ldr	r3, [sp, #12]
 8002002:	9202      	str	r2, [sp, #8]
 8002004:	461a      	mov	r2, r3
 8002006:	9b02      	ldr	r3, [sp, #8]
 8002008:	f7fe f8fa 	bl	8000200 <__aeabi_uldivmod>
 800200c:	9013      	str	r0, [sp, #76]	; 0x4c
 800200e:	e003      	b.n	8002018 <UART_SetConfig+0x458>
 8002010:	e7ff      	b.n	8002012 <UART_SetConfig+0x452>
 8002012:	2001      	movs	r0, #1
 8002014:	9012      	str	r0, [sp, #72]	; 0x48
 8002016:	e7ff      	b.n	8002018 <UART_SetConfig+0x458>
 8002018:	9813      	ldr	r0, [sp, #76]	; 0x4c
 800201a:	f5b0 7f40 	cmp.w	r0, #768	; 0x300
 800201e:	d30b      	bcc.n	8002038 <UART_SetConfig+0x478>
 8002020:	e7ff      	b.n	8002022 <UART_SetConfig+0x462>
 8002022:	9813      	ldr	r0, [sp, #76]	; 0x4c
 8002024:	2100      	movs	r1, #0
 8002026:	ebb1 5f10 	cmp.w	r1, r0, lsr #20
 800202a:	d105      	bne.n	8002038 <UART_SetConfig+0x478>
 800202c:	e7ff      	b.n	800202e <UART_SetConfig+0x46e>
 800202e:	9813      	ldr	r0, [sp, #76]	; 0x4c
 8002030:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8002032:	6809      	ldr	r1, [r1, #0]
 8002034:	60c8      	str	r0, [r1, #12]
 8002036:	e002      	b.n	800203e <UART_SetConfig+0x47e>
 8002038:	2001      	movs	r0, #1
 800203a:	9012      	str	r0, [sp, #72]	; 0x48
 800203c:	e7ff      	b.n	800203e <UART_SetConfig+0x47e>
 800203e:	e7ff      	b.n	8002040 <UART_SetConfig+0x480>
 8002040:	e7ff      	b.n	8002042 <UART_SetConfig+0x482>
 8002042:	e0e4      	b.n	800220e <UART_SetConfig+0x64e>
 8002044:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002046:	69c0      	ldr	r0, [r0, #28]
 8002048:	f5b0 4f00 	cmp.w	r0, #32768	; 0x8000
 800204c:	f040 8079 	bne.w	8002142 <UART_SetConfig+0x582>
 8002050:	e7ff      	b.n	8002052 <UART_SetConfig+0x492>
 8002052:	9815      	ldr	r0, [sp, #84]	; 0x54
 8002054:	2810      	cmp	r0, #16
 8002056:	9001      	str	r0, [sp, #4]
 8002058:	d84e      	bhi.n	80020f8 <UART_SetConfig+0x538>
 800205a:	9901      	ldr	r1, [sp, #4]
 800205c:	e8df f001 	tbb	[pc, r1]
 8002060:	4c251709 	.word	0x4c251709
 8002064:	4c4c4c32 	.word	0x4c4c4c32
 8002068:	4c4c4c40 	.word	0x4c4c4c40
 800206c:	4c4c4c4c 	.word	0x4c4c4c4c
 8002070:	004b      	.short	0x004b
 8002072:	f7ff fb69 	bl	8001748 <HAL_RCC_GetPCLK1Freq>
 8002076:	0040      	lsls	r0, r0, #1
 8002078:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 800207c:	f8de e004 	ldr.w	lr, [lr, #4]
 8002080:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 8002084:	fbb0 f0fe 	udiv	r0, r0, lr
 8002088:	b280      	uxth	r0, r0
 800208a:	9013      	str	r0, [sp, #76]	; 0x4c
 800208c:	e037      	b.n	80020fe <UART_SetConfig+0x53e>
 800208e:	f7ff fb71 	bl	8001774 <HAL_RCC_GetPCLK2Freq>
 8002092:	0040      	lsls	r0, r0, #1
 8002094:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 8002098:	f8de e004 	ldr.w	lr, [lr, #4]
 800209c:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 80020a0:	fbb0 f0fe 	udiv	r0, r0, lr
 80020a4:	b280      	uxth	r0, r0
 80020a6:	9013      	str	r0, [sp, #76]	; 0x4c
 80020a8:	e029      	b.n	80020fe <UART_SetConfig+0x53e>
 80020aa:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80020ac:	6840      	ldr	r0, [r0, #4]
 80020ae:	f644 0100 	movw	r1, #18432	; 0x4800
 80020b2:	f2c0 11e8 	movt	r1, #488	; 0x1e8
 80020b6:	eb01 0150 	add.w	r1, r1, r0, lsr #1
 80020ba:	fbb1 f0f0 	udiv	r0, r1, r0
 80020be:	b280      	uxth	r0, r0
 80020c0:	9013      	str	r0, [sp, #76]	; 0x4c
 80020c2:	e01c      	b.n	80020fe <UART_SetConfig+0x53e>
 80020c4:	f7ff fa73 	bl	80015ae <HAL_RCC_GetSysClockFreq>
 80020c8:	0040      	lsls	r0, r0, #1
 80020ca:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 80020ce:	f8de e004 	ldr.w	lr, [lr, #4]
 80020d2:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 80020d6:	fbb0 f0fe 	udiv	r0, r0, lr
 80020da:	b280      	uxth	r0, r0
 80020dc:	9013      	str	r0, [sp, #76]	; 0x4c
 80020de:	e00e      	b.n	80020fe <UART_SetConfig+0x53e>
 80020e0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80020e2:	6840      	ldr	r0, [r0, #4]
 80020e4:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 80020e8:	eb01 0150 	add.w	r1, r1, r0, lsr #1
 80020ec:	fbb1 f0f0 	udiv	r0, r1, r0
 80020f0:	b280      	uxth	r0, r0
 80020f2:	9013      	str	r0, [sp, #76]	; 0x4c
 80020f4:	e003      	b.n	80020fe <UART_SetConfig+0x53e>
 80020f6:	e7ff      	b.n	80020f8 <UART_SetConfig+0x538>
 80020f8:	2001      	movs	r0, #1
 80020fa:	9012      	str	r0, [sp, #72]	; 0x48
 80020fc:	e7ff      	b.n	80020fe <UART_SetConfig+0x53e>
 80020fe:	9813      	ldr	r0, [sp, #76]	; 0x4c
 8002100:	2810      	cmp	r0, #16
 8002102:	d31a      	bcc.n	800213a <UART_SetConfig+0x57a>
 8002104:	e7ff      	b.n	8002106 <UART_SetConfig+0x546>
 8002106:	f8bd 004e 	ldrh.w	r0, [sp, #78]	; 0x4e
 800210a:	2800      	cmp	r0, #0
 800210c:	d115      	bne.n	800213a <UART_SetConfig+0x57a>
 800210e:	e7ff      	b.n	8002110 <UART_SetConfig+0x550>
 8002110:	9813      	ldr	r0, [sp, #76]	; 0x4c
 8002112:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8002116:	4008      	ands	r0, r1
 8002118:	f827 0c0e 	strh.w	r0, [r7, #-14]
 800211c:	9813      	ldr	r0, [sp, #76]	; 0x4c
 800211e:	f000 000e 	and.w	r0, r0, #14
 8002122:	f837 1c0e 	ldrh.w	r1, [r7, #-14]
 8002126:	ea41 0050 	orr.w	r0, r1, r0, lsr #1
 800212a:	f827 0c0e 	strh.w	r0, [r7, #-14]
 800212e:	f837 0c0e 	ldrh.w	r0, [r7, #-14]
 8002132:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8002134:	6809      	ldr	r1, [r1, #0]
 8002136:	60c8      	str	r0, [r1, #12]
 8002138:	e002      	b.n	8002140 <UART_SetConfig+0x580>
 800213a:	2001      	movs	r0, #1
 800213c:	9012      	str	r0, [sp, #72]	; 0x48
 800213e:	e7ff      	b.n	8002140 <UART_SetConfig+0x580>
 8002140:	e064      	b.n	800220c <UART_SetConfig+0x64c>
 8002142:	9815      	ldr	r0, [sp, #84]	; 0x54
 8002144:	2810      	cmp	r0, #16
 8002146:	9000      	str	r0, [sp, #0]
 8002148:	d84b      	bhi.n	80021e2 <UART_SetConfig+0x622>
 800214a:	9900      	ldr	r1, [sp, #0]
 800214c:	e8df f001 	tbb	[pc, r1]
 8002150:	49231609 	.word	0x49231609
 8002154:	49494930 	.word	0x49494930
 8002158:	4949493d 	.word	0x4949493d
 800215c:	49494949 	.word	0x49494949
 8002160:	0048      	.short	0x0048
 8002162:	f7ff faf1 	bl	8001748 <HAL_RCC_GetPCLK1Freq>
 8002166:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 800216a:	f8de e004 	ldr.w	lr, [lr, #4]
 800216e:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 8002172:	fbb0 f0fe 	udiv	r0, r0, lr
 8002176:	b280      	uxth	r0, r0
 8002178:	9013      	str	r0, [sp, #76]	; 0x4c
 800217a:	e035      	b.n	80021e8 <UART_SetConfig+0x628>
 800217c:	f7ff fafa 	bl	8001774 <HAL_RCC_GetPCLK2Freq>
 8002180:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 8002184:	f8de e004 	ldr.w	lr, [lr, #4]
 8002188:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 800218c:	fbb0 f0fe 	udiv	r0, r0, lr
 8002190:	b280      	uxth	r0, r0
 8002192:	9013      	str	r0, [sp, #76]	; 0x4c
 8002194:	e028      	b.n	80021e8 <UART_SetConfig+0x628>
 8002196:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002198:	6840      	ldr	r0, [r0, #4]
 800219a:	f242 4100 	movw	r1, #9216	; 0x2400
 800219e:	f2c0 01f4 	movt	r1, #244	; 0xf4
 80021a2:	eb01 0150 	add.w	r1, r1, r0, lsr #1
 80021a6:	fbb1 f0f0 	udiv	r0, r1, r0
 80021aa:	b280      	uxth	r0, r0
 80021ac:	9013      	str	r0, [sp, #76]	; 0x4c
 80021ae:	e01b      	b.n	80021e8 <UART_SetConfig+0x628>
 80021b0:	f7ff f9fd 	bl	80015ae <HAL_RCC_GetSysClockFreq>
 80021b4:	f8dd e05c 	ldr.w	lr, [sp, #92]	; 0x5c
 80021b8:	f8de e004 	ldr.w	lr, [lr, #4]
 80021bc:	eb00 005e 	add.w	r0, r0, lr, lsr #1
 80021c0:	fbb0 f0fe 	udiv	r0, r0, lr
 80021c4:	b280      	uxth	r0, r0
 80021c6:	9013      	str	r0, [sp, #76]	; 0x4c
 80021c8:	e00e      	b.n	80021e8 <UART_SetConfig+0x628>
 80021ca:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80021cc:	6840      	ldr	r0, [r0, #4]
 80021ce:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80021d2:	eb01 0150 	add.w	r1, r1, r0, lsr #1
 80021d6:	fbb1 f0f0 	udiv	r0, r1, r0
 80021da:	b280      	uxth	r0, r0
 80021dc:	9013      	str	r0, [sp, #76]	; 0x4c
 80021de:	e003      	b.n	80021e8 <UART_SetConfig+0x628>
 80021e0:	e7ff      	b.n	80021e2 <UART_SetConfig+0x622>
 80021e2:	2001      	movs	r0, #1
 80021e4:	9012      	str	r0, [sp, #72]	; 0x48
 80021e6:	e7ff      	b.n	80021e8 <UART_SetConfig+0x628>
 80021e8:	9813      	ldr	r0, [sp, #76]	; 0x4c
 80021ea:	2810      	cmp	r0, #16
 80021ec:	d30a      	bcc.n	8002204 <UART_SetConfig+0x644>
 80021ee:	e7ff      	b.n	80021f0 <UART_SetConfig+0x630>
 80021f0:	f8bd 004e 	ldrh.w	r0, [sp, #78]	; 0x4e
 80021f4:	2800      	cmp	r0, #0
 80021f6:	d105      	bne.n	8002204 <UART_SetConfig+0x644>
 80021f8:	e7ff      	b.n	80021fa <UART_SetConfig+0x63a>
 80021fa:	9813      	ldr	r0, [sp, #76]	; 0x4c
 80021fc:	9917      	ldr	r1, [sp, #92]	; 0x5c
 80021fe:	6809      	ldr	r1, [r1, #0]
 8002200:	60c8      	str	r0, [r1, #12]
 8002202:	e002      	b.n	800220a <UART_SetConfig+0x64a>
 8002204:	2001      	movs	r0, #1
 8002206:	9012      	str	r0, [sp, #72]	; 0x48
 8002208:	e7ff      	b.n	800220a <UART_SetConfig+0x64a>
 800220a:	e7ff      	b.n	800220c <UART_SetConfig+0x64c>
 800220c:	e7ff      	b.n	800220e <UART_SetConfig+0x64e>
 800220e:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002210:	2100      	movs	r1, #0
 8002212:	6601      	str	r1, [r0, #96]	; 0x60
 8002214:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002216:	6641      	str	r1, [r0, #100]	; 0x64
 8002218:	9812      	ldr	r0, [sp, #72]	; 0x48
 800221a:	b018      	add	sp, #96	; 0x60
 800221c:	bd80      	pop	{r7, pc}

0800221e <UART_AdvFeatureConfig>:
 800221e:	b082      	sub	sp, #8
 8002220:	4601      	mov	r1, r0
 8002222:	9001      	str	r0, [sp, #4]
 8002224:	9801      	ldr	r0, [sp, #4]
 8002226:	6a40      	ldr	r0, [r0, #36]	; 0x24
 8002228:	07c0      	lsls	r0, r0, #31
 800222a:	2800      	cmp	r0, #0
 800222c:	9100      	str	r1, [sp, #0]
 800222e:	d00b      	beq.n	8002248 <UART_AdvFeatureConfig+0x2a>
 8002230:	e7ff      	b.n	8002232 <UART_AdvFeatureConfig+0x14>
 8002232:	9801      	ldr	r0, [sp, #4]
 8002234:	6800      	ldr	r0, [r0, #0]
 8002236:	6840      	ldr	r0, [r0, #4]
 8002238:	f420 3000 	bic.w	r0, r0, #131072	; 0x20000
 800223c:	9901      	ldr	r1, [sp, #4]
 800223e:	680a      	ldr	r2, [r1, #0]
 8002240:	6a89      	ldr	r1, [r1, #40]	; 0x28
 8002242:	4308      	orrs	r0, r1
 8002244:	6050      	str	r0, [r2, #4]
 8002246:	e7ff      	b.n	8002248 <UART_AdvFeatureConfig+0x2a>
 8002248:	9801      	ldr	r0, [sp, #4]
 800224a:	6a40      	ldr	r0, [r0, #36]	; 0x24
 800224c:	0780      	lsls	r0, r0, #30
 800224e:	2800      	cmp	r0, #0
 8002250:	d50b      	bpl.n	800226a <UART_AdvFeatureConfig+0x4c>
 8002252:	e7ff      	b.n	8002254 <UART_AdvFeatureConfig+0x36>
 8002254:	9801      	ldr	r0, [sp, #4]
 8002256:	6800      	ldr	r0, [r0, #0]
 8002258:	6840      	ldr	r0, [r0, #4]
 800225a:	f420 3080 	bic.w	r0, r0, #65536	; 0x10000
 800225e:	9901      	ldr	r1, [sp, #4]
 8002260:	680a      	ldr	r2, [r1, #0]
 8002262:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 8002264:	4308      	orrs	r0, r1
 8002266:	6050      	str	r0, [r2, #4]
 8002268:	e7ff      	b.n	800226a <UART_AdvFeatureConfig+0x4c>
 800226a:	9801      	ldr	r0, [sp, #4]
 800226c:	6a40      	ldr	r0, [r0, #36]	; 0x24
 800226e:	0740      	lsls	r0, r0, #29
 8002270:	2800      	cmp	r0, #0
 8002272:	d50b      	bpl.n	800228c <UART_AdvFeatureConfig+0x6e>
 8002274:	e7ff      	b.n	8002276 <UART_AdvFeatureConfig+0x58>
 8002276:	9801      	ldr	r0, [sp, #4]
 8002278:	6800      	ldr	r0, [r0, #0]
 800227a:	6840      	ldr	r0, [r0, #4]
 800227c:	f420 2080 	bic.w	r0, r0, #262144	; 0x40000
 8002280:	9901      	ldr	r1, [sp, #4]
 8002282:	680a      	ldr	r2, [r1, #0]
 8002284:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8002286:	4308      	orrs	r0, r1
 8002288:	6050      	str	r0, [r2, #4]
 800228a:	e7ff      	b.n	800228c <UART_AdvFeatureConfig+0x6e>
 800228c:	9801      	ldr	r0, [sp, #4]
 800228e:	6a40      	ldr	r0, [r0, #36]	; 0x24
 8002290:	0700      	lsls	r0, r0, #28
 8002292:	2800      	cmp	r0, #0
 8002294:	d50b      	bpl.n	80022ae <UART_AdvFeatureConfig+0x90>
 8002296:	e7ff      	b.n	8002298 <UART_AdvFeatureConfig+0x7a>
 8002298:	9801      	ldr	r0, [sp, #4]
 800229a:	6800      	ldr	r0, [r0, #0]
 800229c:	6840      	ldr	r0, [r0, #4]
 800229e:	f420 4000 	bic.w	r0, r0, #32768	; 0x8000
 80022a2:	9901      	ldr	r1, [sp, #4]
 80022a4:	680a      	ldr	r2, [r1, #0]
 80022a6:	6b49      	ldr	r1, [r1, #52]	; 0x34
 80022a8:	4308      	orrs	r0, r1
 80022aa:	6050      	str	r0, [r2, #4]
 80022ac:	e7ff      	b.n	80022ae <UART_AdvFeatureConfig+0x90>
 80022ae:	9801      	ldr	r0, [sp, #4]
 80022b0:	6a40      	ldr	r0, [r0, #36]	; 0x24
 80022b2:	06c0      	lsls	r0, r0, #27
 80022b4:	2800      	cmp	r0, #0
 80022b6:	d50b      	bpl.n	80022d0 <UART_AdvFeatureConfig+0xb2>
 80022b8:	e7ff      	b.n	80022ba <UART_AdvFeatureConfig+0x9c>
 80022ba:	9801      	ldr	r0, [sp, #4]
 80022bc:	6800      	ldr	r0, [r0, #0]
 80022be:	6880      	ldr	r0, [r0, #8]
 80022c0:	f420 5080 	bic.w	r0, r0, #4096	; 0x1000
 80022c4:	9901      	ldr	r1, [sp, #4]
 80022c6:	680a      	ldr	r2, [r1, #0]
 80022c8:	6b89      	ldr	r1, [r1, #56]	; 0x38
 80022ca:	4308      	orrs	r0, r1
 80022cc:	6090      	str	r0, [r2, #8]
 80022ce:	e7ff      	b.n	80022d0 <UART_AdvFeatureConfig+0xb2>
 80022d0:	9801      	ldr	r0, [sp, #4]
 80022d2:	6a40      	ldr	r0, [r0, #36]	; 0x24
 80022d4:	0680      	lsls	r0, r0, #26
 80022d6:	2800      	cmp	r0, #0
 80022d8:	d50b      	bpl.n	80022f2 <UART_AdvFeatureConfig+0xd4>
 80022da:	e7ff      	b.n	80022dc <UART_AdvFeatureConfig+0xbe>
 80022dc:	9801      	ldr	r0, [sp, #4]
 80022de:	6800      	ldr	r0, [r0, #0]
 80022e0:	6880      	ldr	r0, [r0, #8]
 80022e2:	f420 5000 	bic.w	r0, r0, #8192	; 0x2000
 80022e6:	9901      	ldr	r1, [sp, #4]
 80022e8:	680a      	ldr	r2, [r1, #0]
 80022ea:	6bc9      	ldr	r1, [r1, #60]	; 0x3c
 80022ec:	4308      	orrs	r0, r1
 80022ee:	6090      	str	r0, [r2, #8]
 80022f0:	e7ff      	b.n	80022f2 <UART_AdvFeatureConfig+0xd4>
 80022f2:	9801      	ldr	r0, [sp, #4]
 80022f4:	6a40      	ldr	r0, [r0, #36]	; 0x24
 80022f6:	0640      	lsls	r0, r0, #25
 80022f8:	2800      	cmp	r0, #0
 80022fa:	d51c      	bpl.n	8002336 <UART_AdvFeatureConfig+0x118>
 80022fc:	e7ff      	b.n	80022fe <UART_AdvFeatureConfig+0xe0>
 80022fe:	9801      	ldr	r0, [sp, #4]
 8002300:	6800      	ldr	r0, [r0, #0]
 8002302:	6840      	ldr	r0, [r0, #4]
 8002304:	f420 1080 	bic.w	r0, r0, #1048576	; 0x100000
 8002308:	9901      	ldr	r1, [sp, #4]
 800230a:	680a      	ldr	r2, [r1, #0]
 800230c:	6c09      	ldr	r1, [r1, #64]	; 0x40
 800230e:	4308      	orrs	r0, r1
 8002310:	6050      	str	r0, [r2, #4]
 8002312:	9801      	ldr	r0, [sp, #4]
 8002314:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8002316:	f5b0 1f80 	cmp.w	r0, #1048576	; 0x100000
 800231a:	d10b      	bne.n	8002334 <UART_AdvFeatureConfig+0x116>
 800231c:	e7ff      	b.n	800231e <UART_AdvFeatureConfig+0x100>
 800231e:	9801      	ldr	r0, [sp, #4]
 8002320:	6800      	ldr	r0, [r0, #0]
 8002322:	6840      	ldr	r0, [r0, #4]
 8002324:	f420 00c0 	bic.w	r0, r0, #6291456	; 0x600000
 8002328:	9901      	ldr	r1, [sp, #4]
 800232a:	680a      	ldr	r2, [r1, #0]
 800232c:	6c49      	ldr	r1, [r1, #68]	; 0x44
 800232e:	4308      	orrs	r0, r1
 8002330:	6050      	str	r0, [r2, #4]
 8002332:	e7ff      	b.n	8002334 <UART_AdvFeatureConfig+0x116>
 8002334:	e7ff      	b.n	8002336 <UART_AdvFeatureConfig+0x118>
 8002336:	9801      	ldr	r0, [sp, #4]
 8002338:	6a40      	ldr	r0, [r0, #36]	; 0x24
 800233a:	0600      	lsls	r0, r0, #24
 800233c:	2800      	cmp	r0, #0
 800233e:	d50b      	bpl.n	8002358 <UART_AdvFeatureConfig+0x13a>
 8002340:	e7ff      	b.n	8002342 <UART_AdvFeatureConfig+0x124>
 8002342:	9801      	ldr	r0, [sp, #4]
 8002344:	6800      	ldr	r0, [r0, #0]
 8002346:	6840      	ldr	r0, [r0, #4]
 8002348:	f420 2000 	bic.w	r0, r0, #524288	; 0x80000
 800234c:	9901      	ldr	r1, [sp, #4]
 800234e:	680a      	ldr	r2, [r1, #0]
 8002350:	6c89      	ldr	r1, [r1, #72]	; 0x48
 8002352:	4308      	orrs	r0, r1
 8002354:	6050      	str	r0, [r2, #4]
 8002356:	e7ff      	b.n	8002358 <UART_AdvFeatureConfig+0x13a>
 8002358:	b002      	add	sp, #8
 800235a:	4770      	bx	lr

0800235c <UART_CheckIdleState>:
 800235c:	b580      	push	{r7, lr}
 800235e:	466f      	mov	r7, sp
 8002360:	b086      	sub	sp, #24
 8002362:	4601      	mov	r1, r0
 8002364:	9004      	str	r0, [sp, #16]
 8002366:	2000      	movs	r0, #0
 8002368:	9003      	str	r0, [sp, #12]
 800236a:	9a04      	ldr	r2, [sp, #16]
 800236c:	67d0      	str	r0, [r2, #124]	; 0x7c
 800236e:	9102      	str	r1, [sp, #8]
 8002370:	f7fe ff22 	bl	80011b8 <HAL_GetTick>
 8002374:	9003      	str	r0, [sp, #12]
 8002376:	9804      	ldr	r0, [sp, #16]
 8002378:	6800      	ldr	r0, [r0, #0]
 800237a:	6800      	ldr	r0, [r0, #0]
 800237c:	f010 0f08 	tst.w	r0, #8
 8002380:	d012      	beq.n	80023a8 <UART_CheckIdleState+0x4c>
 8002382:	e7ff      	b.n	8002384 <UART_CheckIdleState+0x28>
 8002384:	9804      	ldr	r0, [sp, #16]
 8002386:	9b03      	ldr	r3, [sp, #12]
 8002388:	4669      	mov	r1, sp
 800238a:	f06f 427e 	mvn.w	r2, #4261412864	; 0xfe000000
 800238e:	600a      	str	r2, [r1, #0]
 8002390:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
 8002394:	2200      	movs	r2, #0
 8002396:	f000 f8d4 	bl	8002542 <UART_WaitOnFlagUntilTimeout>
 800239a:	2800      	cmp	r0, #0
 800239c:	d003      	beq.n	80023a6 <UART_CheckIdleState+0x4a>
 800239e:	e7ff      	b.n	80023a0 <UART_CheckIdleState+0x44>
 80023a0:	2003      	movs	r0, #3
 80023a2:	9005      	str	r0, [sp, #20]
 80023a4:	e026      	b.n	80023f4 <UART_CheckIdleState+0x98>
 80023a6:	e7ff      	b.n	80023a8 <UART_CheckIdleState+0x4c>
 80023a8:	9804      	ldr	r0, [sp, #16]
 80023aa:	6800      	ldr	r0, [r0, #0]
 80023ac:	6800      	ldr	r0, [r0, #0]
 80023ae:	f010 0f04 	tst.w	r0, #4
 80023b2:	d012      	beq.n	80023da <UART_CheckIdleState+0x7e>
 80023b4:	e7ff      	b.n	80023b6 <UART_CheckIdleState+0x5a>
 80023b6:	9804      	ldr	r0, [sp, #16]
 80023b8:	9b03      	ldr	r3, [sp, #12]
 80023ba:	4669      	mov	r1, sp
 80023bc:	f06f 427e 	mvn.w	r2, #4261412864	; 0xfe000000
 80023c0:	600a      	str	r2, [r1, #0]
 80023c2:	f44f 0180 	mov.w	r1, #4194304	; 0x400000
 80023c6:	2200      	movs	r2, #0
 80023c8:	f000 f8bb 	bl	8002542 <UART_WaitOnFlagUntilTimeout>
 80023cc:	2800      	cmp	r0, #0
 80023ce:	d003      	beq.n	80023d8 <UART_CheckIdleState+0x7c>
 80023d0:	e7ff      	b.n	80023d2 <UART_CheckIdleState+0x76>
 80023d2:	2003      	movs	r0, #3
 80023d4:	9005      	str	r0, [sp, #20]
 80023d6:	e00d      	b.n	80023f4 <UART_CheckIdleState+0x98>
 80023d8:	e7ff      	b.n	80023da <UART_CheckIdleState+0x7e>
 80023da:	9804      	ldr	r0, [sp, #16]
 80023dc:	2120      	movs	r1, #32
 80023de:	6741      	str	r1, [r0, #116]	; 0x74
 80023e0:	9804      	ldr	r0, [sp, #16]
 80023e2:	6781      	str	r1, [r0, #120]	; 0x78
 80023e4:	e7ff      	b.n	80023e6 <UART_CheckIdleState+0x8a>
 80023e6:	9804      	ldr	r0, [sp, #16]
 80023e8:	2100      	movs	r1, #0
 80023ea:	6701      	str	r1, [r0, #112]	; 0x70
 80023ec:	e7ff      	b.n	80023ee <UART_CheckIdleState+0x92>
 80023ee:	2000      	movs	r0, #0
 80023f0:	9005      	str	r0, [sp, #20]
 80023f2:	e7ff      	b.n	80023f4 <UART_CheckIdleState+0x98>
 80023f4:	9805      	ldr	r0, [sp, #20]
 80023f6:	b006      	add	sp, #24
 80023f8:	bd80      	pop	{r7, pc}

080023fa <HAL_UART_Transmit>:
 80023fa:	b5b0      	push	{r4, r5, r7, lr}
 80023fc:	af02      	add	r7, sp, #8
 80023fe:	b08c      	sub	sp, #48	; 0x30
 8002400:	469c      	mov	ip, r3
 8002402:	4696      	mov	lr, r2
 8002404:	460c      	mov	r4, r1
 8002406:	4605      	mov	r5, r0
 8002408:	900a      	str	r0, [sp, #40]	; 0x28
 800240a:	9109      	str	r1, [sp, #36]	; 0x24
 800240c:	f827 2c16 	strh.w	r2, [r7, #-22]
 8002410:	9307      	str	r3, [sp, #28]
 8002412:	2000      	movs	r0, #0
 8002414:	9005      	str	r0, [sp, #20]
 8002416:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002418:	6f40      	ldr	r0, [r0, #116]	; 0x74
 800241a:	2820      	cmp	r0, #32
 800241c:	f8cd c010 	str.w	ip, [sp, #16]
 8002420:	f8cd e00c 	str.w	lr, [sp, #12]
 8002424:	9402      	str	r4, [sp, #8]
 8002426:	9501      	str	r5, [sp, #4]
 8002428:	f040 8085 	bne.w	8002536 <HAL_UART_Transmit+0x13c>
 800242c:	e7ff      	b.n	800242e <HAL_UART_Transmit+0x34>
 800242e:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002430:	2800      	cmp	r0, #0
 8002432:	d005      	beq.n	8002440 <HAL_UART_Transmit+0x46>
 8002434:	e7ff      	b.n	8002436 <HAL_UART_Transmit+0x3c>
 8002436:	f837 0c16 	ldrh.w	r0, [r7, #-22]
 800243a:	2800      	cmp	r0, #0
 800243c:	d103      	bne.n	8002446 <HAL_UART_Transmit+0x4c>
 800243e:	e7ff      	b.n	8002440 <HAL_UART_Transmit+0x46>
 8002440:	2001      	movs	r0, #1
 8002442:	900b      	str	r0, [sp, #44]	; 0x2c
 8002444:	e07a      	b.n	800253c <HAL_UART_Transmit+0x142>
 8002446:	e7ff      	b.n	8002448 <HAL_UART_Transmit+0x4e>
 8002448:	980a      	ldr	r0, [sp, #40]	; 0x28
 800244a:	6f00      	ldr	r0, [r0, #112]	; 0x70
 800244c:	2801      	cmp	r0, #1
 800244e:	d103      	bne.n	8002458 <HAL_UART_Transmit+0x5e>
 8002450:	e7ff      	b.n	8002452 <HAL_UART_Transmit+0x58>
 8002452:	2002      	movs	r0, #2
 8002454:	900b      	str	r0, [sp, #44]	; 0x2c
 8002456:	e071      	b.n	800253c <HAL_UART_Transmit+0x142>
 8002458:	980a      	ldr	r0, [sp, #40]	; 0x28
 800245a:	2101      	movs	r1, #1
 800245c:	6701      	str	r1, [r0, #112]	; 0x70
 800245e:	e7ff      	b.n	8002460 <HAL_UART_Transmit+0x66>
 8002460:	e7ff      	b.n	8002462 <HAL_UART_Transmit+0x68>
 8002462:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002464:	2100      	movs	r1, #0
 8002466:	67c1      	str	r1, [r0, #124]	; 0x7c
 8002468:	980a      	ldr	r0, [sp, #40]	; 0x28
 800246a:	2121      	movs	r1, #33	; 0x21
 800246c:	6741      	str	r1, [r0, #116]	; 0x74
 800246e:	f7fe fea3 	bl	80011b8 <HAL_GetTick>
 8002472:	9005      	str	r0, [sp, #20]
 8002474:	f837 0c16 	ldrh.w	r0, [r7, #-22]
 8002478:	990a      	ldr	r1, [sp, #40]	; 0x28
 800247a:	f8a1 0050 	strh.w	r0, [r1, #80]	; 0x50
 800247e:	f837 0c16 	ldrh.w	r0, [r7, #-22]
 8002482:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002484:	f8a1 0052 	strh.w	r0, [r1, #82]	; 0x52
 8002488:	e7ff      	b.n	800248a <HAL_UART_Transmit+0x90>
 800248a:	980a      	ldr	r0, [sp, #40]	; 0x28
 800248c:	f8b0 0052 	ldrh.w	r0, [r0, #82]	; 0x52
 8002490:	2800      	cmp	r0, #0
 8002492:	d036      	beq.n	8002502 <HAL_UART_Transmit+0x108>
 8002494:	e7ff      	b.n	8002496 <HAL_UART_Transmit+0x9c>
 8002496:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002498:	9b05      	ldr	r3, [sp, #20]
 800249a:	9907      	ldr	r1, [sp, #28]
 800249c:	466a      	mov	r2, sp
 800249e:	6011      	str	r1, [r2, #0]
 80024a0:	2180      	movs	r1, #128	; 0x80
 80024a2:	2200      	movs	r2, #0
 80024a4:	f000 f84d 	bl	8002542 <UART_WaitOnFlagUntilTimeout>
 80024a8:	2800      	cmp	r0, #0
 80024aa:	d003      	beq.n	80024b4 <HAL_UART_Transmit+0xba>
 80024ac:	e7ff      	b.n	80024ae <HAL_UART_Transmit+0xb4>
 80024ae:	2003      	movs	r0, #3
 80024b0:	900b      	str	r0, [sp, #44]	; 0x2c
 80024b2:	e043      	b.n	800253c <HAL_UART_Transmit+0x142>
 80024b4:	980a      	ldr	r0, [sp, #40]	; 0x28
 80024b6:	6880      	ldr	r0, [r0, #8]
 80024b8:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 80024bc:	d112      	bne.n	80024e4 <HAL_UART_Transmit+0xea>
 80024be:	e7ff      	b.n	80024c0 <HAL_UART_Transmit+0xc6>
 80024c0:	980a      	ldr	r0, [sp, #40]	; 0x28
 80024c2:	6900      	ldr	r0, [r0, #16]
 80024c4:	2800      	cmp	r0, #0
 80024c6:	d10d      	bne.n	80024e4 <HAL_UART_Transmit+0xea>
 80024c8:	e7ff      	b.n	80024ca <HAL_UART_Transmit+0xd0>
 80024ca:	9809      	ldr	r0, [sp, #36]	; 0x24
 80024cc:	9006      	str	r0, [sp, #24]
 80024ce:	9806      	ldr	r0, [sp, #24]
 80024d0:	8800      	ldrh	r0, [r0, #0]
 80024d2:	f36f 205f 	bfc	r0, #9, #23
 80024d6:	990a      	ldr	r1, [sp, #40]	; 0x28
 80024d8:	6809      	ldr	r1, [r1, #0]
 80024da:	8508      	strh	r0, [r1, #40]	; 0x28
 80024dc:	9809      	ldr	r0, [sp, #36]	; 0x24
 80024de:	3002      	adds	r0, #2
 80024e0:	9009      	str	r0, [sp, #36]	; 0x24
 80024e2:	e007      	b.n	80024f4 <HAL_UART_Transmit+0xfa>
 80024e4:	9809      	ldr	r0, [sp, #36]	; 0x24
 80024e6:	1c41      	adds	r1, r0, #1
 80024e8:	9109      	str	r1, [sp, #36]	; 0x24
 80024ea:	7800      	ldrb	r0, [r0, #0]
 80024ec:	990a      	ldr	r1, [sp, #40]	; 0x28
 80024ee:	6809      	ldr	r1, [r1, #0]
 80024f0:	8508      	strh	r0, [r1, #40]	; 0x28
 80024f2:	e7ff      	b.n	80024f4 <HAL_UART_Transmit+0xfa>
 80024f4:	980a      	ldr	r0, [sp, #40]	; 0x28
 80024f6:	f8b0 1052 	ldrh.w	r1, [r0, #82]	; 0x52
 80024fa:	3901      	subs	r1, #1
 80024fc:	f8a0 1052 	strh.w	r1, [r0, #82]	; 0x52
 8002500:	e7c3      	b.n	800248a <HAL_UART_Transmit+0x90>
 8002502:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002504:	9b05      	ldr	r3, [sp, #20]
 8002506:	9907      	ldr	r1, [sp, #28]
 8002508:	466a      	mov	r2, sp
 800250a:	6011      	str	r1, [r2, #0]
 800250c:	2140      	movs	r1, #64	; 0x40
 800250e:	2200      	movs	r2, #0
 8002510:	f000 f817 	bl	8002542 <UART_WaitOnFlagUntilTimeout>
 8002514:	2800      	cmp	r0, #0
 8002516:	d003      	beq.n	8002520 <HAL_UART_Transmit+0x126>
 8002518:	e7ff      	b.n	800251a <HAL_UART_Transmit+0x120>
 800251a:	2003      	movs	r0, #3
 800251c:	900b      	str	r0, [sp, #44]	; 0x2c
 800251e:	e00d      	b.n	800253c <HAL_UART_Transmit+0x142>
 8002520:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002522:	2120      	movs	r1, #32
 8002524:	6741      	str	r1, [r0, #116]	; 0x74
 8002526:	e7ff      	b.n	8002528 <HAL_UART_Transmit+0x12e>
 8002528:	980a      	ldr	r0, [sp, #40]	; 0x28
 800252a:	2100      	movs	r1, #0
 800252c:	6701      	str	r1, [r0, #112]	; 0x70
 800252e:	e7ff      	b.n	8002530 <HAL_UART_Transmit+0x136>
 8002530:	2000      	movs	r0, #0
 8002532:	900b      	str	r0, [sp, #44]	; 0x2c
 8002534:	e002      	b.n	800253c <HAL_UART_Transmit+0x142>
 8002536:	2002      	movs	r0, #2
 8002538:	900b      	str	r0, [sp, #44]	; 0x2c
 800253a:	e7ff      	b.n	800253c <HAL_UART_Transmit+0x142>
 800253c:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800253e:	b00c      	add	sp, #48	; 0x30
 8002540:	bdb0      	pop	{r4, r5, r7, pc}

08002542 <UART_WaitOnFlagUntilTimeout>:
 8002542:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002544:	af03      	add	r7, sp, #12
 8002546:	f84d bd04 	str.w	fp, [sp, #-4]!
 800254a:	b08a      	sub	sp, #40	; 0x28
 800254c:	f8d7 c008 	ldr.w	ip, [r7, #8]
 8002550:	469e      	mov	lr, r3
 8002552:	4614      	mov	r4, r2
 8002554:	460d      	mov	r5, r1
 8002556:	4606      	mov	r6, r0
 8002558:	9008      	str	r0, [sp, #32]
 800255a:	9107      	str	r1, [sp, #28]
 800255c:	9206      	str	r2, [sp, #24]
 800255e:	9305      	str	r3, [sp, #20]
 8002560:	f8cd c010 	str.w	ip, [sp, #16]
 8002564:	f8cd e00c 	str.w	lr, [sp, #12]
 8002568:	9402      	str	r4, [sp, #8]
 800256a:	9501      	str	r5, [sp, #4]
 800256c:	9600      	str	r6, [sp, #0]
 800256e:	e7ff      	b.n	8002570 <UART_WaitOnFlagUntilTimeout+0x2e>
 8002570:	9808      	ldr	r0, [sp, #32]
 8002572:	6800      	ldr	r0, [r0, #0]
 8002574:	69c0      	ldr	r0, [r0, #28]
 8002576:	9907      	ldr	r1, [sp, #28]
 8002578:	4008      	ands	r0, r1
 800257a:	2200      	movs	r2, #0
 800257c:	4288      	cmp	r0, r1
 800257e:	bf08      	it	eq
 8002580:	2201      	moveq	r2, #1
 8002582:	9806      	ldr	r0, [sp, #24]
 8002584:	4282      	cmp	r2, r0
 8002586:	d12f      	bne.n	80025e8 <UART_WaitOnFlagUntilTimeout+0xa6>
 8002588:	e7ff      	b.n	800258a <UART_WaitOnFlagUntilTimeout+0x48>
 800258a:	9804      	ldr	r0, [sp, #16]
 800258c:	3001      	adds	r0, #1
 800258e:	2800      	cmp	r0, #0
 8002590:	d029      	beq.n	80025e6 <UART_WaitOnFlagUntilTimeout+0xa4>
 8002592:	e7ff      	b.n	8002594 <UART_WaitOnFlagUntilTimeout+0x52>
 8002594:	9804      	ldr	r0, [sp, #16]
 8002596:	2800      	cmp	r0, #0
 8002598:	d00b      	beq.n	80025b2 <UART_WaitOnFlagUntilTimeout+0x70>
 800259a:	e7ff      	b.n	800259c <UART_WaitOnFlagUntilTimeout+0x5a>
 800259c:	f7fe fe0c 	bl	80011b8 <HAL_GetTick>
 80025a0:	f8dd e014 	ldr.w	lr, [sp, #20]
 80025a4:	eba0 000e 	sub.w	r0, r0, lr
 80025a8:	f8dd e010 	ldr.w	lr, [sp, #16]
 80025ac:	4570      	cmp	r0, lr
 80025ae:	d919      	bls.n	80025e4 <UART_WaitOnFlagUntilTimeout+0xa2>
 80025b0:	e7ff      	b.n	80025b2 <UART_WaitOnFlagUntilTimeout+0x70>
 80025b2:	9808      	ldr	r0, [sp, #32]
 80025b4:	6800      	ldr	r0, [r0, #0]
 80025b6:	6801      	ldr	r1, [r0, #0]
 80025b8:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 80025bc:	6001      	str	r1, [r0, #0]
 80025be:	9808      	ldr	r0, [sp, #32]
 80025c0:	6800      	ldr	r0, [r0, #0]
 80025c2:	6881      	ldr	r1, [r0, #8]
 80025c4:	f021 0101 	bic.w	r1, r1, #1
 80025c8:	6081      	str	r1, [r0, #8]
 80025ca:	9808      	ldr	r0, [sp, #32]
 80025cc:	2120      	movs	r1, #32
 80025ce:	6741      	str	r1, [r0, #116]	; 0x74
 80025d0:	9808      	ldr	r0, [sp, #32]
 80025d2:	6781      	str	r1, [r0, #120]	; 0x78
 80025d4:	e7ff      	b.n	80025d6 <UART_WaitOnFlagUntilTimeout+0x94>
 80025d6:	9808      	ldr	r0, [sp, #32]
 80025d8:	2100      	movs	r1, #0
 80025da:	6701      	str	r1, [r0, #112]	; 0x70
 80025dc:	e7ff      	b.n	80025de <UART_WaitOnFlagUntilTimeout+0x9c>
 80025de:	2003      	movs	r0, #3
 80025e0:	9009      	str	r0, [sp, #36]	; 0x24
 80025e2:	e004      	b.n	80025ee <UART_WaitOnFlagUntilTimeout+0xac>
 80025e4:	e7ff      	b.n	80025e6 <UART_WaitOnFlagUntilTimeout+0xa4>
 80025e6:	e7c3      	b.n	8002570 <UART_WaitOnFlagUntilTimeout+0x2e>
 80025e8:	2000      	movs	r0, #0
 80025ea:	9009      	str	r0, [sp, #36]	; 0x24
 80025ec:	e7ff      	b.n	80025ee <UART_WaitOnFlagUntilTimeout+0xac>
 80025ee:	9809      	ldr	r0, [sp, #36]	; 0x24
 80025f0:	b00a      	add	sp, #40	; 0x28
 80025f2:	f85d bb04 	ldr.w	fp, [sp], #4
 80025f6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080025f8 <osSystickHandler>:
 80025f8:	b580      	push	{r7, lr}
 80025fa:	466f      	mov	r7, sp
 80025fc:	f000 fcdc 	bl	8002fb8 <xTaskGetSchedulerState>
 8002600:	2801      	cmp	r0, #1
 8002602:	d003      	beq.n	800260c <osSystickHandler+0x14>
 8002604:	e7ff      	b.n	8002606 <osSystickHandler+0xe>
 8002606:	f000 ff65 	bl	80034d4 <xPortSysTickHandler>
 800260a:	e7ff      	b.n	800260c <osSystickHandler+0x14>
 800260c:	bd80      	pop	{r7, pc}

0800260e <vListInitialise>:
 800260e:	b082      	sub	sp, #8
 8002610:	4601      	mov	r1, r0
 8002612:	9001      	str	r0, [sp, #4]
 8002614:	9801      	ldr	r0, [sp, #4]
 8002616:	f100 0208 	add.w	r2, r0, #8
 800261a:	6042      	str	r2, [r0, #4]
 800261c:	9801      	ldr	r0, [sp, #4]
 800261e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002622:	6082      	str	r2, [r0, #8]
 8002624:	9801      	ldr	r0, [sp, #4]
 8002626:	f100 0208 	add.w	r2, r0, #8
 800262a:	60c2      	str	r2, [r0, #12]
 800262c:	9801      	ldr	r0, [sp, #4]
 800262e:	f100 0208 	add.w	r2, r0, #8
 8002632:	6102      	str	r2, [r0, #16]
 8002634:	9801      	ldr	r0, [sp, #4]
 8002636:	2200      	movs	r2, #0
 8002638:	6002      	str	r2, [r0, #0]
 800263a:	9100      	str	r1, [sp, #0]
 800263c:	b002      	add	sp, #8
 800263e:	4770      	bx	lr

08002640 <vListInitialiseItem>:
 8002640:	b082      	sub	sp, #8
 8002642:	4601      	mov	r1, r0
 8002644:	9001      	str	r0, [sp, #4]
 8002646:	9801      	ldr	r0, [sp, #4]
 8002648:	2200      	movs	r2, #0
 800264a:	6102      	str	r2, [r0, #16]
 800264c:	9100      	str	r1, [sp, #0]
 800264e:	b002      	add	sp, #8
 8002650:	4770      	bx	lr

08002652 <vListInsertEnd>:
 8002652:	b085      	sub	sp, #20
 8002654:	460a      	mov	r2, r1
 8002656:	4603      	mov	r3, r0
 8002658:	9004      	str	r0, [sp, #16]
 800265a:	9103      	str	r1, [sp, #12]
 800265c:	9804      	ldr	r0, [sp, #16]
 800265e:	6840      	ldr	r0, [r0, #4]
 8002660:	9002      	str	r0, [sp, #8]
 8002662:	9802      	ldr	r0, [sp, #8]
 8002664:	9903      	ldr	r1, [sp, #12]
 8002666:	6048      	str	r0, [r1, #4]
 8002668:	9802      	ldr	r0, [sp, #8]
 800266a:	6880      	ldr	r0, [r0, #8]
 800266c:	9903      	ldr	r1, [sp, #12]
 800266e:	6088      	str	r0, [r1, #8]
 8002670:	9803      	ldr	r0, [sp, #12]
 8002672:	9902      	ldr	r1, [sp, #8]
 8002674:	6889      	ldr	r1, [r1, #8]
 8002676:	6048      	str	r0, [r1, #4]
 8002678:	9803      	ldr	r0, [sp, #12]
 800267a:	9902      	ldr	r1, [sp, #8]
 800267c:	6088      	str	r0, [r1, #8]
 800267e:	9804      	ldr	r0, [sp, #16]
 8002680:	9903      	ldr	r1, [sp, #12]
 8002682:	6108      	str	r0, [r1, #16]
 8002684:	9804      	ldr	r0, [sp, #16]
 8002686:	6801      	ldr	r1, [r0, #0]
 8002688:	3101      	adds	r1, #1
 800268a:	6001      	str	r1, [r0, #0]
 800268c:	9201      	str	r2, [sp, #4]
 800268e:	9300      	str	r3, [sp, #0]
 8002690:	b005      	add	sp, #20
 8002692:	4770      	bx	lr

08002694 <uxListRemove>:
 8002694:	b083      	sub	sp, #12
 8002696:	4601      	mov	r1, r0
 8002698:	9002      	str	r0, [sp, #8]
 800269a:	9802      	ldr	r0, [sp, #8]
 800269c:	6900      	ldr	r0, [r0, #16]
 800269e:	9001      	str	r0, [sp, #4]
 80026a0:	9802      	ldr	r0, [sp, #8]
 80026a2:	6842      	ldr	r2, [r0, #4]
 80026a4:	6880      	ldr	r0, [r0, #8]
 80026a6:	6090      	str	r0, [r2, #8]
 80026a8:	9802      	ldr	r0, [sp, #8]
 80026aa:	6842      	ldr	r2, [r0, #4]
 80026ac:	6880      	ldr	r0, [r0, #8]
 80026ae:	6042      	str	r2, [r0, #4]
 80026b0:	9801      	ldr	r0, [sp, #4]
 80026b2:	6840      	ldr	r0, [r0, #4]
 80026b4:	9a02      	ldr	r2, [sp, #8]
 80026b6:	4290      	cmp	r0, r2
 80026b8:	9100      	str	r1, [sp, #0]
 80026ba:	d105      	bne.n	80026c8 <uxListRemove+0x34>
 80026bc:	e7ff      	b.n	80026be <uxListRemove+0x2a>
 80026be:	9802      	ldr	r0, [sp, #8]
 80026c0:	6880      	ldr	r0, [r0, #8]
 80026c2:	9901      	ldr	r1, [sp, #4]
 80026c4:	6048      	str	r0, [r1, #4]
 80026c6:	e000      	b.n	80026ca <uxListRemove+0x36>
 80026c8:	e7ff      	b.n	80026ca <uxListRemove+0x36>
 80026ca:	9802      	ldr	r0, [sp, #8]
 80026cc:	2100      	movs	r1, #0
 80026ce:	6101      	str	r1, [r0, #16]
 80026d0:	9801      	ldr	r0, [sp, #4]
 80026d2:	6801      	ldr	r1, [r0, #0]
 80026d4:	3901      	subs	r1, #1
 80026d6:	6001      	str	r1, [r0, #0]
 80026d8:	9801      	ldr	r0, [sp, #4]
 80026da:	6800      	ldr	r0, [r0, #0]
 80026dc:	b003      	add	sp, #12
 80026de:	4770      	bx	lr

080026e0 <xTaskCreate>:
 80026e0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80026e2:	af03      	add	r7, sp, #12
 80026e4:	f84d 8d04 	str.w	r8, [sp, #-4]!
 80026e8:	b092      	sub	sp, #72	; 0x48
 80026ea:	f8d7 c00c 	ldr.w	ip, [r7, #12]
 80026ee:	f8d7 e008 	ldr.w	lr, [r7, #8]
 80026f2:	461c      	mov	r4, r3
 80026f4:	4615      	mov	r5, r2
 80026f6:	460e      	mov	r6, r1
 80026f8:	4680      	mov	r8, r0
 80026fa:	9011      	str	r0, [sp, #68]	; 0x44
 80026fc:	9110      	str	r1, [sp, #64]	; 0x40
 80026fe:	f827 2c1a 	strh.w	r2, [r7, #-26]
 8002702:	930e      	str	r3, [sp, #56]	; 0x38
 8002704:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
 8002708:	f8cd c030 	str.w	ip, [sp, #48]	; 0x30
 800270c:	f837 0c1a 	ldrh.w	r0, [r7, #-26]
 8002710:	0080      	lsls	r0, r0, #2
 8002712:	9408      	str	r4, [sp, #32]
 8002714:	9507      	str	r5, [sp, #28]
 8002716:	9606      	str	r6, [sp, #24]
 8002718:	f8cd 8014 	str.w	r8, [sp, #20]
 800271c:	f000 fefa 	bl	8003514 <pvPortMalloc>
 8002720:	9009      	str	r0, [sp, #36]	; 0x24
 8002722:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002724:	2800      	cmp	r0, #0
 8002726:	d011      	beq.n	800274c <xTaskCreate+0x6c>
 8002728:	e7ff      	b.n	800272a <xTaskCreate+0x4a>
 800272a:	205c      	movs	r0, #92	; 0x5c
 800272c:	f000 fef2 	bl	8003514 <pvPortMalloc>
 8002730:	900b      	str	r0, [sp, #44]	; 0x2c
 8002732:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8002734:	2800      	cmp	r0, #0
 8002736:	d004      	beq.n	8002742 <xTaskCreate+0x62>
 8002738:	e7ff      	b.n	800273a <xTaskCreate+0x5a>
 800273a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800273c:	990b      	ldr	r1, [sp, #44]	; 0x2c
 800273e:	6308      	str	r0, [r1, #48]	; 0x30
 8002740:	e003      	b.n	800274a <xTaskCreate+0x6a>
 8002742:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002744:	f001 f8a8 	bl	8003898 <vPortFree>
 8002748:	e7ff      	b.n	800274a <xTaskCreate+0x6a>
 800274a:	e002      	b.n	8002752 <xTaskCreate+0x72>
 800274c:	2000      	movs	r0, #0
 800274e:	900b      	str	r0, [sp, #44]	; 0x2c
 8002750:	e7ff      	b.n	8002752 <xTaskCreate+0x72>
 8002752:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8002754:	2800      	cmp	r0, #0
 8002756:	d01a      	beq.n	800278e <xTaskCreate+0xae>
 8002758:	e7ff      	b.n	800275a <xTaskCreate+0x7a>
 800275a:	9811      	ldr	r0, [sp, #68]	; 0x44
 800275c:	9910      	ldr	r1, [sp, #64]	; 0x40
 800275e:	f837 2c1a 	ldrh.w	r2, [r7, #-26]
 8002762:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002764:	f8dd c034 	ldr.w	ip, [sp, #52]	; 0x34
 8002768:	f8dd e030 	ldr.w	lr, [sp, #48]	; 0x30
 800276c:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 800276e:	466d      	mov	r5, sp
 8002770:	2600      	movs	r6, #0
 8002772:	60ee      	str	r6, [r5, #12]
 8002774:	60ac      	str	r4, [r5, #8]
 8002776:	f8c5 e004 	str.w	lr, [r5, #4]
 800277a:	f8c5 c000 	str.w	ip, [r5]
 800277e:	f000 f80f 	bl	80027a0 <prvInitialiseNewTask>
 8002782:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8002784:	f000 f8ab 	bl	80028de <prvAddNewTaskToReadyList>
 8002788:	2001      	movs	r0, #1
 800278a:	900a      	str	r0, [sp, #40]	; 0x28
 800278c:	e003      	b.n	8002796 <xTaskCreate+0xb6>
 800278e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002792:	900a      	str	r0, [sp, #40]	; 0x28
 8002794:	e7ff      	b.n	8002796 <xTaskCreate+0xb6>
 8002796:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002798:	b012      	add	sp, #72	; 0x48
 800279a:	f85d 8b04 	ldr.w	r8, [sp], #4
 800279e:	bdf0      	pop	{r4, r5, r6, r7, pc}

080027a0 <prvInitialiseNewTask>:
 80027a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80027a2:	af03      	add	r7, sp, #12
 80027a4:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 80027a8:	b090      	sub	sp, #64	; 0x40
 80027aa:	f8d7 c014 	ldr.w	ip, [r7, #20]
 80027ae:	f8d7 e010 	ldr.w	lr, [r7, #16]
 80027b2:	68fc      	ldr	r4, [r7, #12]
 80027b4:	68bd      	ldr	r5, [r7, #8]
 80027b6:	461e      	mov	r6, r3
 80027b8:	4690      	mov	r8, r2
 80027ba:	4689      	mov	r9, r1
 80027bc:	4682      	mov	sl, r0
 80027be:	900e      	str	r0, [sp, #56]	; 0x38
 80027c0:	910d      	str	r1, [sp, #52]	; 0x34
 80027c2:	920c      	str	r2, [sp, #48]	; 0x30
 80027c4:	930b      	str	r3, [sp, #44]	; 0x2c
 80027c6:	950a      	str	r5, [sp, #40]	; 0x28
 80027c8:	9409      	str	r4, [sp, #36]	; 0x24
 80027ca:	f8cd e020 	str.w	lr, [sp, #32]
 80027ce:	f8cd c01c 	str.w	ip, [sp, #28]
 80027d2:	9808      	ldr	r0, [sp, #32]
 80027d4:	6b00      	ldr	r0, [r0, #48]	; 0x30
 80027d6:	990c      	ldr	r1, [sp, #48]	; 0x30
 80027d8:	0089      	lsls	r1, r1, #2
 80027da:	22a5      	movs	r2, #165	; 0xa5
 80027dc:	9604      	str	r6, [sp, #16]
 80027de:	f8cd 800c 	str.w	r8, [sp, #12]
 80027e2:	f8cd 9008 	str.w	r9, [sp, #8]
 80027e6:	f8cd a004 	str.w	sl, [sp, #4]
 80027ea:	f7fd fe89 	bl	8000500 <__aeabi_memset>
 80027ee:	9808      	ldr	r0, [sp, #32]
 80027f0:	6b00      	ldr	r0, [r0, #48]	; 0x30
 80027f2:	990c      	ldr	r1, [sp, #48]	; 0x30
 80027f4:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80027f8:	3804      	subs	r0, #4
 80027fa:	9006      	str	r0, [sp, #24]
 80027fc:	9806      	ldr	r0, [sp, #24]
 80027fe:	f020 0007 	bic.w	r0, r0, #7
 8002802:	9006      	str	r0, [sp, #24]
 8002804:	f89d 0018 	ldrb.w	r0, [sp, #24]
 8002808:	0740      	lsls	r0, r0, #29
 800280a:	2800      	cmp	r0, #0
 800280c:	d00b      	beq.n	8002826 <prvInitialiseNewTask+0x86>
 800280e:	e7ff      	b.n	8002810 <prvInitialiseNewTask+0x70>
 8002810:	f04f 0050 	mov.w	r0, #80	; 0x50
 8002814:	f380 8811 	msr	BASEPRI, r0
 8002818:	f3bf 8f6f 	isb	sy
 800281c:	f3bf 8f4f 	dsb	sy
 8002820:	900f      	str	r0, [sp, #60]	; 0x3c
 8002822:	e7ff      	b.n	8002824 <prvInitialiseNewTask+0x84>
 8002824:	e7fe      	b.n	8002824 <prvInitialiseNewTask+0x84>
 8002826:	2000      	movs	r0, #0
 8002828:	9005      	str	r0, [sp, #20]
 800282a:	e7ff      	b.n	800282c <prvInitialiseNewTask+0x8c>
 800282c:	9805      	ldr	r0, [sp, #20]
 800282e:	280f      	cmp	r0, #15
 8002830:	d814      	bhi.n	800285c <prvInitialiseNewTask+0xbc>
 8002832:	e7ff      	b.n	8002834 <prvInitialiseNewTask+0x94>
 8002834:	980d      	ldr	r0, [sp, #52]	; 0x34
 8002836:	9905      	ldr	r1, [sp, #20]
 8002838:	5c40      	ldrb	r0, [r0, r1]
 800283a:	9a08      	ldr	r2, [sp, #32]
 800283c:	4411      	add	r1, r2
 800283e:	f881 0034 	strb.w	r0, [r1, #52]	; 0x34
 8002842:	980d      	ldr	r0, [sp, #52]	; 0x34
 8002844:	9905      	ldr	r1, [sp, #20]
 8002846:	5c40      	ldrb	r0, [r0, r1]
 8002848:	2800      	cmp	r0, #0
 800284a:	d101      	bne.n	8002850 <prvInitialiseNewTask+0xb0>
 800284c:	e7ff      	b.n	800284e <prvInitialiseNewTask+0xae>
 800284e:	e005      	b.n	800285c <prvInitialiseNewTask+0xbc>
 8002850:	e7ff      	b.n	8002852 <prvInitialiseNewTask+0xb2>
 8002852:	e7ff      	b.n	8002854 <prvInitialiseNewTask+0xb4>
 8002854:	9805      	ldr	r0, [sp, #20]
 8002856:	3001      	adds	r0, #1
 8002858:	9005      	str	r0, [sp, #20]
 800285a:	e7e7      	b.n	800282c <prvInitialiseNewTask+0x8c>
 800285c:	9808      	ldr	r0, [sp, #32]
 800285e:	2100      	movs	r1, #0
 8002860:	f880 1043 	strb.w	r1, [r0, #67]	; 0x43
 8002864:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002866:	2807      	cmp	r0, #7
 8002868:	d303      	bcc.n	8002872 <prvInitialiseNewTask+0xd2>
 800286a:	e7ff      	b.n	800286c <prvInitialiseNewTask+0xcc>
 800286c:	2006      	movs	r0, #6
 800286e:	900a      	str	r0, [sp, #40]	; 0x28
 8002870:	e000      	b.n	8002874 <prvInitialiseNewTask+0xd4>
 8002872:	e7ff      	b.n	8002874 <prvInitialiseNewTask+0xd4>
 8002874:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002876:	9908      	ldr	r1, [sp, #32]
 8002878:	62c8      	str	r0, [r1, #44]	; 0x2c
 800287a:	980a      	ldr	r0, [sp, #40]	; 0x28
 800287c:	9908      	ldr	r1, [sp, #32]
 800287e:	64c8      	str	r0, [r1, #76]	; 0x4c
 8002880:	9808      	ldr	r0, [sp, #32]
 8002882:	2100      	movs	r1, #0
 8002884:	6501      	str	r1, [r0, #80]	; 0x50
 8002886:	9808      	ldr	r0, [sp, #32]
 8002888:	3004      	adds	r0, #4
 800288a:	9100      	str	r1, [sp, #0]
 800288c:	f7ff fed8 	bl	8002640 <vListInitialiseItem>
 8002890:	9808      	ldr	r0, [sp, #32]
 8002892:	3018      	adds	r0, #24
 8002894:	f7ff fed4 	bl	8002640 <vListInitialiseItem>
 8002898:	9808      	ldr	r0, [sp, #32]
 800289a:	6100      	str	r0, [r0, #16]
 800289c:	980a      	ldr	r0, [sp, #40]	; 0x28
 800289e:	f1c0 0007 	rsb	r0, r0, #7
 80028a2:	9908      	ldr	r1, [sp, #32]
 80028a4:	6188      	str	r0, [r1, #24]
 80028a6:	9808      	ldr	r0, [sp, #32]
 80028a8:	6240      	str	r0, [r0, #36]	; 0x24
 80028aa:	9808      	ldr	r0, [sp, #32]
 80028ac:	9900      	ldr	r1, [sp, #0]
 80028ae:	6541      	str	r1, [r0, #84]	; 0x54
 80028b0:	9808      	ldr	r0, [sp, #32]
 80028b2:	f880 1058 	strb.w	r1, [r0, #88]	; 0x58
 80028b6:	9806      	ldr	r0, [sp, #24]
 80028b8:	990e      	ldr	r1, [sp, #56]	; 0x38
 80028ba:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80028bc:	f000 fc1e 	bl	80030fc <pxPortInitialiseStack>
 80028c0:	9908      	ldr	r1, [sp, #32]
 80028c2:	6008      	str	r0, [r1, #0]
 80028c4:	9809      	ldr	r0, [sp, #36]	; 0x24
 80028c6:	2800      	cmp	r0, #0
 80028c8:	d004      	beq.n	80028d4 <prvInitialiseNewTask+0x134>
 80028ca:	e7ff      	b.n	80028cc <prvInitialiseNewTask+0x12c>
 80028cc:	9808      	ldr	r0, [sp, #32]
 80028ce:	9909      	ldr	r1, [sp, #36]	; 0x24
 80028d0:	6008      	str	r0, [r1, #0]
 80028d2:	e000      	b.n	80028d6 <prvInitialiseNewTask+0x136>
 80028d4:	e7ff      	b.n	80028d6 <prvInitialiseNewTask+0x136>
 80028d6:	b010      	add	sp, #64	; 0x40
 80028d8:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 80028dc:	bdf0      	pop	{r4, r5, r6, r7, pc}

080028de <prvAddNewTaskToReadyList>:
 80028de:	b580      	push	{r7, lr}
 80028e0:	466f      	mov	r7, sp
 80028e2:	b084      	sub	sp, #16
 80028e4:	4601      	mov	r1, r0
 80028e6:	9003      	str	r0, [sp, #12]
 80028e8:	9102      	str	r1, [sp, #8]
 80028ea:	f000 fd6b 	bl	80033c4 <vPortEnterCritical>
 80028ee:	f640 2094 	movw	r0, #2708	; 0xa94
 80028f2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80028f6:	6801      	ldr	r1, [r0, #0]
 80028f8:	3101      	adds	r1, #1
 80028fa:	6001      	str	r1, [r0, #0]
 80028fc:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002900:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002904:	6800      	ldr	r0, [r0, #0]
 8002906:	2800      	cmp	r0, #0
 8002908:	d113      	bne.n	8002932 <prvAddNewTaskToReadyList+0x54>
 800290a:	e7ff      	b.n	800290c <prvAddNewTaskToReadyList+0x2e>
 800290c:	9803      	ldr	r0, [sp, #12]
 800290e:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002912:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002916:	6008      	str	r0, [r1, #0]
 8002918:	f640 2094 	movw	r0, #2708	; 0xa94
 800291c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002920:	6800      	ldr	r0, [r0, #0]
 8002922:	2801      	cmp	r0, #1
 8002924:	d103      	bne.n	800292e <prvAddNewTaskToReadyList+0x50>
 8002926:	e7ff      	b.n	8002928 <prvAddNewTaskToReadyList+0x4a>
 8002928:	f000 fb64 	bl	8002ff4 <prvInitialiseTaskLists>
 800292c:	e000      	b.n	8002930 <prvAddNewTaskToReadyList+0x52>
 800292e:	e7ff      	b.n	8002930 <prvAddNewTaskToReadyList+0x52>
 8002930:	e01d      	b.n	800296e <prvAddNewTaskToReadyList+0x90>
 8002932:	f640 2098 	movw	r0, #2712	; 0xa98
 8002936:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800293a:	6800      	ldr	r0, [r0, #0]
 800293c:	2800      	cmp	r0, #0
 800293e:	d114      	bne.n	800296a <prvAddNewTaskToReadyList+0x8c>
 8002940:	e7ff      	b.n	8002942 <prvAddNewTaskToReadyList+0x64>
 8002942:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002946:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800294a:	6800      	ldr	r0, [r0, #0]
 800294c:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 800294e:	9903      	ldr	r1, [sp, #12]
 8002950:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 8002952:	4288      	cmp	r0, r1
 8002954:	d807      	bhi.n	8002966 <prvAddNewTaskToReadyList+0x88>
 8002956:	e7ff      	b.n	8002958 <prvAddNewTaskToReadyList+0x7a>
 8002958:	9803      	ldr	r0, [sp, #12]
 800295a:	f640 11e4 	movw	r1, #2532	; 0x9e4
 800295e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002962:	6008      	str	r0, [r1, #0]
 8002964:	e000      	b.n	8002968 <prvAddNewTaskToReadyList+0x8a>
 8002966:	e7ff      	b.n	8002968 <prvAddNewTaskToReadyList+0x8a>
 8002968:	e000      	b.n	800296c <prvAddNewTaskToReadyList+0x8e>
 800296a:	e7ff      	b.n	800296c <prvAddNewTaskToReadyList+0x8e>
 800296c:	e7ff      	b.n	800296e <prvAddNewTaskToReadyList+0x90>
 800296e:	f640 2078 	movw	r0, #2680	; 0xa78
 8002972:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002976:	6801      	ldr	r1, [r0, #0]
 8002978:	3101      	adds	r1, #1
 800297a:	6001      	str	r1, [r0, #0]
 800297c:	6800      	ldr	r0, [r0, #0]
 800297e:	9903      	ldr	r1, [sp, #12]
 8002980:	6448      	str	r0, [r1, #68]	; 0x44
 8002982:	9803      	ldr	r0, [sp, #12]
 8002984:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8002986:	2101      	movs	r1, #1
 8002988:	fa01 f000 	lsl.w	r0, r1, r0
 800298c:	f640 2174 	movw	r1, #2676	; 0xa74
 8002990:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002994:	680a      	ldr	r2, [r1, #0]
 8002996:	4310      	orrs	r0, r2
 8002998:	6008      	str	r0, [r1, #0]
 800299a:	9803      	ldr	r0, [sp, #12]
 800299c:	6ac1      	ldr	r1, [r0, #44]	; 0x2c
 800299e:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 80029a2:	f640 12e8 	movw	r2, #2536	; 0x9e8
 80029a6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80029aa:	eb02 0181 	add.w	r1, r2, r1, lsl #2
 80029ae:	3004      	adds	r0, #4
 80029b0:	9001      	str	r0, [sp, #4]
 80029b2:	4608      	mov	r0, r1
 80029b4:	9901      	ldr	r1, [sp, #4]
 80029b6:	f7ff fe4c 	bl	8002652 <vListInsertEnd>
 80029ba:	f000 fd2f 	bl	800341c <vPortExitCritical>
 80029be:	f640 2098 	movw	r0, #2712	; 0xa98
 80029c2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80029c6:	6800      	ldr	r0, [r0, #0]
 80029c8:	2800      	cmp	r0, #0
 80029ca:	d019      	beq.n	8002a00 <prvAddNewTaskToReadyList+0x122>
 80029cc:	e7ff      	b.n	80029ce <prvAddNewTaskToReadyList+0xf0>
 80029ce:	f640 10e4 	movw	r0, #2532	; 0x9e4
 80029d2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80029d6:	6800      	ldr	r0, [r0, #0]
 80029d8:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 80029da:	9903      	ldr	r1, [sp, #12]
 80029dc:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 80029de:	4288      	cmp	r0, r1
 80029e0:	d20c      	bcs.n	80029fc <prvAddNewTaskToReadyList+0x11e>
 80029e2:	e7ff      	b.n	80029e4 <prvAddNewTaskToReadyList+0x106>
 80029e4:	f64e 5004 	movw	r0, #60676	; 0xed04
 80029e8:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80029ec:	f04f 5180 	mov.w	r1, #268435456	; 0x10000000
 80029f0:	6001      	str	r1, [r0, #0]
 80029f2:	f3bf 8f4f 	dsb	sy
 80029f6:	f3bf 8f6f 	isb	sy
 80029fa:	e000      	b.n	80029fe <prvAddNewTaskToReadyList+0x120>
 80029fc:	e7ff      	b.n	80029fe <prvAddNewTaskToReadyList+0x120>
 80029fe:	e000      	b.n	8002a02 <prvAddNewTaskToReadyList+0x124>
 8002a00:	e7ff      	b.n	8002a02 <prvAddNewTaskToReadyList+0x124>
 8002a02:	b004      	add	sp, #16
 8002a04:	bd80      	pop	{r7, pc}

08002a06 <prvDeleteTCB>:
 8002a06:	b580      	push	{r7, lr}
 8002a08:	466f      	mov	r7, sp
 8002a0a:	b082      	sub	sp, #8
 8002a0c:	4601      	mov	r1, r0
 8002a0e:	9001      	str	r0, [sp, #4]
 8002a10:	9801      	ldr	r0, [sp, #4]
 8002a12:	6b00      	ldr	r0, [r0, #48]	; 0x30
 8002a14:	9100      	str	r1, [sp, #0]
 8002a16:	f000 ff3f 	bl	8003898 <vPortFree>
 8002a1a:	9801      	ldr	r0, [sp, #4]
 8002a1c:	f000 ff3c 	bl	8003898 <vPortFree>
 8002a20:	b002      	add	sp, #8
 8002a22:	bd80      	pop	{r7, pc}

08002a24 <prvResetNextTaskUnblockTime>:
 8002a24:	b081      	sub	sp, #4
 8002a26:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8002a2a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002a2e:	6800      	ldr	r0, [r0, #0]
 8002a30:	6800      	ldr	r0, [r0, #0]
 8002a32:	2100      	movs	r1, #0
 8002a34:	2800      	cmp	r0, #0
 8002a36:	bf08      	it	eq
 8002a38:	2101      	moveq	r1, #1
 8002a3a:	2900      	cmp	r1, #0
 8002a3c:	d008      	beq.n	8002a50 <prvResetNextTaskUnblockTime+0x2c>
 8002a3e:	e7ff      	b.n	8002a40 <prvResetNextTaskUnblockTime+0x1c>
 8002a40:	f640 20d4 	movw	r0, #2772	; 0xad4
 8002a44:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002a48:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8002a4c:	6001      	str	r1, [r0, #0]
 8002a4e:	e00f      	b.n	8002a70 <prvResetNextTaskUnblockTime+0x4c>
 8002a50:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8002a54:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002a58:	6800      	ldr	r0, [r0, #0]
 8002a5a:	68c0      	ldr	r0, [r0, #12]
 8002a5c:	68c0      	ldr	r0, [r0, #12]
 8002a5e:	9000      	str	r0, [sp, #0]
 8002a60:	9800      	ldr	r0, [sp, #0]
 8002a62:	6840      	ldr	r0, [r0, #4]
 8002a64:	f640 21d4 	movw	r1, #2772	; 0xad4
 8002a68:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002a6c:	6008      	str	r0, [r1, #0]
 8002a6e:	e7ff      	b.n	8002a70 <prvResetNextTaskUnblockTime+0x4c>
 8002a70:	b001      	add	sp, #4
 8002a72:	4770      	bx	lr

08002a74 <vTaskSuspendAll>:
 8002a74:	f640 209c 	movw	r0, #2716	; 0xa9c
 8002a78:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002a7c:	6801      	ldr	r1, [r0, #0]
 8002a7e:	3101      	adds	r1, #1
 8002a80:	6001      	str	r1, [r0, #0]
 8002a82:	4770      	bx	lr

08002a84 <xTaskResumeAll>:
 8002a84:	b580      	push	{r7, lr}
 8002a86:	466f      	mov	r7, sp
 8002a88:	b086      	sub	sp, #24
 8002a8a:	2000      	movs	r0, #0
 8002a8c:	9004      	str	r0, [sp, #16]
 8002a8e:	9003      	str	r0, [sp, #12]
 8002a90:	f640 209c 	movw	r0, #2716	; 0xa9c
 8002a94:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002a98:	6800      	ldr	r0, [r0, #0]
 8002a9a:	2800      	cmp	r0, #0
 8002a9c:	d10b      	bne.n	8002ab6 <xTaskResumeAll+0x32>
 8002a9e:	e7ff      	b.n	8002aa0 <xTaskResumeAll+0x1c>
 8002aa0:	f04f 0050 	mov.w	r0, #80	; 0x50
 8002aa4:	f380 8811 	msr	BASEPRI, r0
 8002aa8:	f3bf 8f6f 	isb	sy
 8002aac:	f3bf 8f4f 	dsb	sy
 8002ab0:	9005      	str	r0, [sp, #20]
 8002ab2:	e7ff      	b.n	8002ab4 <xTaskResumeAll+0x30>
 8002ab4:	e7fe      	b.n	8002ab4 <xTaskResumeAll+0x30>
 8002ab6:	f000 fc85 	bl	80033c4 <vPortEnterCritical>
 8002aba:	f640 2e9c 	movw	lr, #2716	; 0xa9c
 8002abe:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002ac2:	f8de 0000 	ldr.w	r0, [lr]
 8002ac6:	3801      	subs	r0, #1
 8002ac8:	f8ce 0000 	str.w	r0, [lr]
 8002acc:	f8de 0000 	ldr.w	r0, [lr]
 8002ad0:	2800      	cmp	r0, #0
 8002ad2:	f040 80a1 	bne.w	8002c18 <xTaskResumeAll+0x194>
 8002ad6:	e7ff      	b.n	8002ad8 <xTaskResumeAll+0x54>
 8002ad8:	f640 2094 	movw	r0, #2708	; 0xa94
 8002adc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002ae0:	6800      	ldr	r0, [r0, #0]
 8002ae2:	2800      	cmp	r0, #0
 8002ae4:	f000 8097 	beq.w	8002c16 <xTaskResumeAll+0x192>
 8002ae8:	e7ff      	b.n	8002aea <xTaskResumeAll+0x66>
 8002aea:	e7ff      	b.n	8002aec <xTaskResumeAll+0x68>
 8002aec:	f640 20bc 	movw	r0, #2748	; 0xabc
 8002af0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002af4:	6800      	ldr	r0, [r0, #0]
 8002af6:	2800      	cmp	r0, #0
 8002af8:	d046      	beq.n	8002b88 <xTaskResumeAll+0x104>
 8002afa:	e7ff      	b.n	8002afc <xTaskResumeAll+0x78>
 8002afc:	f640 20bc 	movw	r0, #2748	; 0xabc
 8002b00:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002b04:	68c0      	ldr	r0, [r0, #12]
 8002b06:	68c0      	ldr	r0, [r0, #12]
 8002b08:	9004      	str	r0, [sp, #16]
 8002b0a:	9804      	ldr	r0, [sp, #16]
 8002b0c:	3018      	adds	r0, #24
 8002b0e:	f7ff fdc1 	bl	8002694 <uxListRemove>
 8002b12:	f8dd e010 	ldr.w	lr, [sp, #16]
 8002b16:	f10e 0e04 	add.w	lr, lr, #4
 8002b1a:	9001      	str	r0, [sp, #4]
 8002b1c:	4670      	mov	r0, lr
 8002b1e:	f7ff fdb9 	bl	8002694 <uxListRemove>
 8002b22:	f8dd e010 	ldr.w	lr, [sp, #16]
 8002b26:	f8de e02c 	ldr.w	lr, [lr, #44]	; 0x2c
 8002b2a:	2101      	movs	r1, #1
 8002b2c:	fa01 f10e 	lsl.w	r1, r1, lr
 8002b30:	f640 2e74 	movw	lr, #2676	; 0xa74
 8002b34:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002b38:	f8de 2000 	ldr.w	r2, [lr]
 8002b3c:	4311      	orrs	r1, r2
 8002b3e:	f8ce 1000 	str.w	r1, [lr]
 8002b42:	9904      	ldr	r1, [sp, #16]
 8002b44:	6aca      	ldr	r2, [r1, #44]	; 0x2c
 8002b46:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002b4a:	f640 1ee8 	movw	lr, #2536	; 0x9e8
 8002b4e:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002b52:	eb0e 0282 	add.w	r2, lr, r2, lsl #2
 8002b56:	3104      	adds	r1, #4
 8002b58:	9000      	str	r0, [sp, #0]
 8002b5a:	4610      	mov	r0, r2
 8002b5c:	f7ff fd79 	bl	8002652 <vListInsertEnd>
 8002b60:	9804      	ldr	r0, [sp, #16]
 8002b62:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8002b64:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002b68:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002b6c:	6809      	ldr	r1, [r1, #0]
 8002b6e:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 8002b70:	4288      	cmp	r0, r1
 8002b72:	d307      	bcc.n	8002b84 <xTaskResumeAll+0x100>
 8002b74:	e7ff      	b.n	8002b76 <xTaskResumeAll+0xf2>
 8002b76:	f640 20dc 	movw	r0, #2780	; 0xadc
 8002b7a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002b7e:	2101      	movs	r1, #1
 8002b80:	6001      	str	r1, [r0, #0]
 8002b82:	e000      	b.n	8002b86 <xTaskResumeAll+0x102>
 8002b84:	e7ff      	b.n	8002b86 <xTaskResumeAll+0x102>
 8002b86:	e7b1      	b.n	8002aec <xTaskResumeAll+0x68>
 8002b88:	9804      	ldr	r0, [sp, #16]
 8002b8a:	2800      	cmp	r0, #0
 8002b8c:	d003      	beq.n	8002b96 <xTaskResumeAll+0x112>
 8002b8e:	e7ff      	b.n	8002b90 <xTaskResumeAll+0x10c>
 8002b90:	f7ff ff48 	bl	8002a24 <prvResetNextTaskUnblockTime>
 8002b94:	e7ff      	b.n	8002b96 <xTaskResumeAll+0x112>
 8002b96:	f640 20e0 	movw	r0, #2784	; 0xae0
 8002b9a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002b9e:	6800      	ldr	r0, [r0, #0]
 8002ba0:	9002      	str	r0, [sp, #8]
 8002ba2:	9802      	ldr	r0, [sp, #8]
 8002ba4:	2800      	cmp	r0, #0
 8002ba6:	d01d      	beq.n	8002be4 <xTaskResumeAll+0x160>
 8002ba8:	e7ff      	b.n	8002baa <xTaskResumeAll+0x126>
 8002baa:	e7ff      	b.n	8002bac <xTaskResumeAll+0x128>
 8002bac:	f000 f916 	bl	8002ddc <xTaskIncrementTick>
 8002bb0:	2800      	cmp	r0, #0
 8002bb2:	d007      	beq.n	8002bc4 <xTaskResumeAll+0x140>
 8002bb4:	e7ff      	b.n	8002bb6 <xTaskResumeAll+0x132>
 8002bb6:	f640 20dc 	movw	r0, #2780	; 0xadc
 8002bba:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002bbe:	2101      	movs	r1, #1
 8002bc0:	6001      	str	r1, [r0, #0]
 8002bc2:	e000      	b.n	8002bc6 <xTaskResumeAll+0x142>
 8002bc4:	e7ff      	b.n	8002bc6 <xTaskResumeAll+0x142>
 8002bc6:	9802      	ldr	r0, [sp, #8]
 8002bc8:	3801      	subs	r0, #1
 8002bca:	9002      	str	r0, [sp, #8]
 8002bcc:	e7ff      	b.n	8002bce <xTaskResumeAll+0x14a>
 8002bce:	9802      	ldr	r0, [sp, #8]
 8002bd0:	2800      	cmp	r0, #0
 8002bd2:	d1eb      	bne.n	8002bac <xTaskResumeAll+0x128>
 8002bd4:	e7ff      	b.n	8002bd6 <xTaskResumeAll+0x152>
 8002bd6:	f640 20e0 	movw	r0, #2784	; 0xae0
 8002bda:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002bde:	2100      	movs	r1, #0
 8002be0:	6001      	str	r1, [r0, #0]
 8002be2:	e000      	b.n	8002be6 <xTaskResumeAll+0x162>
 8002be4:	e7ff      	b.n	8002be6 <xTaskResumeAll+0x162>
 8002be6:	f640 20dc 	movw	r0, #2780	; 0xadc
 8002bea:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002bee:	6800      	ldr	r0, [r0, #0]
 8002bf0:	2800      	cmp	r0, #0
 8002bf2:	d00e      	beq.n	8002c12 <xTaskResumeAll+0x18e>
 8002bf4:	e7ff      	b.n	8002bf6 <xTaskResumeAll+0x172>
 8002bf6:	2001      	movs	r0, #1
 8002bf8:	9003      	str	r0, [sp, #12]
 8002bfa:	f64e 5004 	movw	r0, #60676	; 0xed04
 8002bfe:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002c02:	f04f 5180 	mov.w	r1, #268435456	; 0x10000000
 8002c06:	6001      	str	r1, [r0, #0]
 8002c08:	f3bf 8f4f 	dsb	sy
 8002c0c:	f3bf 8f6f 	isb	sy
 8002c10:	e000      	b.n	8002c14 <xTaskResumeAll+0x190>
 8002c12:	e7ff      	b.n	8002c14 <xTaskResumeAll+0x190>
 8002c14:	e7ff      	b.n	8002c16 <xTaskResumeAll+0x192>
 8002c16:	e000      	b.n	8002c1a <xTaskResumeAll+0x196>
 8002c18:	e7ff      	b.n	8002c1a <xTaskResumeAll+0x196>
 8002c1a:	f000 fbff 	bl	800341c <vPortExitCritical>
 8002c1e:	9803      	ldr	r0, [sp, #12]
 8002c20:	b006      	add	sp, #24
 8002c22:	bd80      	pop	{r7, pc}

08002c24 <vTaskSwitchContext>:
 8002c24:	b085      	sub	sp, #20
 8002c26:	f640 209c 	movw	r0, #2716	; 0xa9c
 8002c2a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c2e:	6800      	ldr	r0, [r0, #0]
 8002c30:	2800      	cmp	r0, #0
 8002c32:	d007      	beq.n	8002c44 <vTaskSwitchContext+0x20>
 8002c34:	e7ff      	b.n	8002c36 <vTaskSwitchContext+0x12>
 8002c36:	f640 20dc 	movw	r0, #2780	; 0xadc
 8002c3a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c3e:	2101      	movs	r1, #1
 8002c40:	6001      	str	r1, [r0, #0]
 8002c42:	e051      	b.n	8002ce8 <vTaskSwitchContext+0xc4>
 8002c44:	f640 20dc 	movw	r0, #2780	; 0xadc
 8002c48:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c4c:	2100      	movs	r1, #0
 8002c4e:	6001      	str	r1, [r0, #0]
 8002c50:	f640 2074 	movw	r0, #2676	; 0xa74
 8002c54:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c58:	6800      	ldr	r0, [r0, #0]
 8002c5a:	9003      	str	r0, [sp, #12]
 8002c5c:	9803      	ldr	r0, [sp, #12]
 8002c5e:	fab0 f080 	clz	r0, r0
 8002c62:	f88d 000b 	strb.w	r0, [sp, #11]
 8002c66:	f89d 000b 	ldrb.w	r0, [sp, #11]
 8002c6a:	f1c0 001f 	rsb	r0, r0, #31
 8002c6e:	9001      	str	r0, [sp, #4]
 8002c70:	9801      	ldr	r0, [sp, #4]
 8002c72:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8002c76:	f640 11e8 	movw	r1, #2536	; 0x9e8
 8002c7a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002c7e:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8002c82:	2800      	cmp	r0, #0
 8002c84:	bf18      	it	ne
 8002c86:	2001      	movne	r0, #1
 8002c88:	2800      	cmp	r0, #0
 8002c8a:	d10b      	bne.n	8002ca4 <vTaskSwitchContext+0x80>
 8002c8c:	e7ff      	b.n	8002c8e <vTaskSwitchContext+0x6a>
 8002c8e:	f04f 0050 	mov.w	r0, #80	; 0x50
 8002c92:	f380 8811 	msr	BASEPRI, r0
 8002c96:	f3bf 8f6f 	isb	sy
 8002c9a:	f3bf 8f4f 	dsb	sy
 8002c9e:	9004      	str	r0, [sp, #16]
 8002ca0:	e7ff      	b.n	8002ca2 <vTaskSwitchContext+0x7e>
 8002ca2:	e7fe      	b.n	8002ca2 <vTaskSwitchContext+0x7e>
 8002ca4:	9801      	ldr	r0, [sp, #4]
 8002ca6:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8002caa:	f640 11e8 	movw	r1, #2536	; 0x9e8
 8002cae:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002cb2:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 8002cb6:	9000      	str	r0, [sp, #0]
 8002cb8:	9800      	ldr	r0, [sp, #0]
 8002cba:	6841      	ldr	r1, [r0, #4]
 8002cbc:	6849      	ldr	r1, [r1, #4]
 8002cbe:	6041      	str	r1, [r0, #4]
 8002cc0:	9800      	ldr	r0, [sp, #0]
 8002cc2:	6841      	ldr	r1, [r0, #4]
 8002cc4:	3008      	adds	r0, #8
 8002cc6:	4281      	cmp	r1, r0
 8002cc8:	d105      	bne.n	8002cd6 <vTaskSwitchContext+0xb2>
 8002cca:	e7ff      	b.n	8002ccc <vTaskSwitchContext+0xa8>
 8002ccc:	9800      	ldr	r0, [sp, #0]
 8002cce:	6841      	ldr	r1, [r0, #4]
 8002cd0:	6849      	ldr	r1, [r1, #4]
 8002cd2:	6041      	str	r1, [r0, #4]
 8002cd4:	e7ff      	b.n	8002cd6 <vTaskSwitchContext+0xb2>
 8002cd6:	9800      	ldr	r0, [sp, #0]
 8002cd8:	6840      	ldr	r0, [r0, #4]
 8002cda:	68c0      	ldr	r0, [r0, #12]
 8002cdc:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002ce0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002ce4:	6008      	str	r0, [r1, #0]
 8002ce6:	e7ff      	b.n	8002ce8 <vTaskSwitchContext+0xc4>
 8002ce8:	b005      	add	sp, #20
 8002cea:	4770      	bx	lr

08002cec <vTaskStartScheduler>:
 8002cec:	b580      	push	{r7, lr}
 8002cee:	466f      	mov	r7, sp
 8002cf0:	b086      	sub	sp, #24
 8002cf2:	f640 20d0 	movw	r0, #2768	; 0xad0
 8002cf6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002cfa:	4669      	mov	r1, sp
 8002cfc:	6048      	str	r0, [r1, #4]
 8002cfe:	2000      	movs	r0, #0
 8002d00:	6008      	str	r0, [r1, #0]
 8002d02:	f642 519b 	movw	r1, #11675	; 0x2d9b
 8002d06:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002d0a:	f648 22d8 	movw	r2, #35544	; 0x8ad8
 8002d0e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002d12:	2380      	movs	r3, #128	; 0x80
 8002d14:	9002      	str	r0, [sp, #8]
 8002d16:	4608      	mov	r0, r1
 8002d18:	4611      	mov	r1, r2
 8002d1a:	461a      	mov	r2, r3
 8002d1c:	9b02      	ldr	r3, [sp, #8]
 8002d1e:	f7ff fcdf 	bl	80026e0 <xTaskCreate>
 8002d22:	9003      	str	r0, [sp, #12]
 8002d24:	9803      	ldr	r0, [sp, #12]
 8002d26:	2801      	cmp	r0, #1
 8002d28:	d124      	bne.n	8002d74 <vTaskStartScheduler+0x88>
 8002d2a:	e7ff      	b.n	8002d2c <vTaskStartScheduler+0x40>
 8002d2c:	f04f 0050 	mov.w	r0, #80	; 0x50
 8002d30:	f380 8811 	msr	BASEPRI, r0
 8002d34:	f3bf 8f6f 	isb	sy
 8002d38:	f3bf 8f4f 	dsb	sy
 8002d3c:	9004      	str	r0, [sp, #16]
 8002d3e:	f640 20d4 	movw	r0, #2772	; 0xad4
 8002d42:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d46:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8002d4a:	6001      	str	r1, [r0, #0]
 8002d4c:	f640 2098 	movw	r0, #2712	; 0xa98
 8002d50:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d54:	2101      	movs	r1, #1
 8002d56:	6001      	str	r1, [r0, #0]
 8002d58:	f640 20d8 	movw	r0, #2776	; 0xad8
 8002d5c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d60:	2100      	movs	r1, #0
 8002d62:	6001      	str	r1, [r0, #0]
 8002d64:	f000 fa3e 	bl	80031e4 <xPortStartScheduler>
 8002d68:	2800      	cmp	r0, #0
 8002d6a:	d001      	beq.n	8002d70 <vTaskStartScheduler+0x84>
 8002d6c:	e7ff      	b.n	8002d6e <vTaskStartScheduler+0x82>
 8002d6e:	e000      	b.n	8002d72 <vTaskStartScheduler+0x86>
 8002d70:	e7ff      	b.n	8002d72 <vTaskStartScheduler+0x86>
 8002d72:	e010      	b.n	8002d96 <vTaskStartScheduler+0xaa>
 8002d74:	9803      	ldr	r0, [sp, #12]
 8002d76:	3001      	adds	r0, #1
 8002d78:	2800      	cmp	r0, #0
 8002d7a:	d10b      	bne.n	8002d94 <vTaskStartScheduler+0xa8>
 8002d7c:	e7ff      	b.n	8002d7e <vTaskStartScheduler+0x92>
 8002d7e:	f04f 0050 	mov.w	r0, #80	; 0x50
 8002d82:	f380 8811 	msr	BASEPRI, r0
 8002d86:	f3bf 8f6f 	isb	sy
 8002d8a:	f3bf 8f4f 	dsb	sy
 8002d8e:	9005      	str	r0, [sp, #20]
 8002d90:	e7ff      	b.n	8002d92 <vTaskStartScheduler+0xa6>
 8002d92:	e7fe      	b.n	8002d92 <vTaskStartScheduler+0xa6>
 8002d94:	e7ff      	b.n	8002d96 <vTaskStartScheduler+0xaa>
 8002d96:	b006      	add	sp, #24
 8002d98:	bd80      	pop	{r7, pc}

08002d9a <prvIdleTask>:
 8002d9a:	b580      	push	{r7, lr}
 8002d9c:	466f      	mov	r7, sp
 8002d9e:	b082      	sub	sp, #8
 8002da0:	4601      	mov	r1, r0
 8002da2:	9001      	str	r0, [sp, #4]
 8002da4:	9100      	str	r1, [sp, #0]
 8002da6:	e7ff      	b.n	8002da8 <prvIdleTask+0xe>
 8002da8:	f000 f96e 	bl	8003088 <prvCheckTasksWaitingTermination>
 8002dac:	f640 1ee8 	movw	lr, #2536	; 0x9e8
 8002db0:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002db4:	f8de e000 	ldr.w	lr, [lr]
 8002db8:	f1be 0f02 	cmp.w	lr, #2
 8002dbc:	d30c      	bcc.n	8002dd8 <prvIdleTask+0x3e>
 8002dbe:	e7ff      	b.n	8002dc0 <prvIdleTask+0x26>
 8002dc0:	f64e 5004 	movw	r0, #60676	; 0xed04
 8002dc4:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002dc8:	f04f 5180 	mov.w	r1, #268435456	; 0x10000000
 8002dcc:	6001      	str	r1, [r0, #0]
 8002dce:	f3bf 8f4f 	dsb	sy
 8002dd2:	f3bf 8f6f 	isb	sy
 8002dd6:	e000      	b.n	8002dda <prvIdleTask+0x40>
 8002dd8:	e7ff      	b.n	8002dda <prvIdleTask+0x40>
 8002dda:	e7e5      	b.n	8002da8 <prvIdleTask+0xe>

08002ddc <xTaskIncrementTick>:
 8002ddc:	b580      	push	{r7, lr}
 8002dde:	466f      	mov	r7, sp
 8002de0:	b08a      	sub	sp, #40	; 0x28
 8002de2:	2000      	movs	r0, #0
 8002de4:	9006      	str	r0, [sp, #24]
 8002de6:	f640 209c 	movw	r0, #2716	; 0xa9c
 8002dea:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002dee:	6800      	ldr	r0, [r0, #0]
 8002df0:	2800      	cmp	r0, #0
 8002df2:	f040 80ca 	bne.w	8002f8a <xTaskIncrementTick+0x1ae>
 8002df6:	e7ff      	b.n	8002df8 <xTaskIncrementTick+0x1c>
 8002df8:	f640 20d8 	movw	r0, #2776	; 0xad8
 8002dfc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002e00:	6801      	ldr	r1, [r0, #0]
 8002e02:	3101      	adds	r1, #1
 8002e04:	9105      	str	r1, [sp, #20]
 8002e06:	9905      	ldr	r1, [sp, #20]
 8002e08:	6001      	str	r1, [r0, #0]
 8002e0a:	9805      	ldr	r0, [sp, #20]
 8002e0c:	2800      	cmp	r0, #0
 8002e0e:	d12c      	bne.n	8002e6a <xTaskIncrementTick+0x8e>
 8002e10:	e7ff      	b.n	8002e12 <xTaskIncrementTick+0x36>
 8002e12:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8002e16:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002e1a:	6800      	ldr	r0, [r0, #0]
 8002e1c:	6800      	ldr	r0, [r0, #0]
 8002e1e:	2800      	cmp	r0, #0
 8002e20:	d00b      	beq.n	8002e3a <xTaskIncrementTick+0x5e>
 8002e22:	e7ff      	b.n	8002e24 <xTaskIncrementTick+0x48>
 8002e24:	f04f 0050 	mov.w	r0, #80	; 0x50
 8002e28:	f380 8811 	msr	BASEPRI, r0
 8002e2c:	f3bf 8f6f 	isb	sy
 8002e30:	f3bf 8f4f 	dsb	sy
 8002e34:	9009      	str	r0, [sp, #36]	; 0x24
 8002e36:	e7ff      	b.n	8002e38 <xTaskIncrementTick+0x5c>
 8002e38:	e7fe      	b.n	8002e38 <xTaskIncrementTick+0x5c>
 8002e3a:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8002e3e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002e42:	6801      	ldr	r1, [r0, #0]
 8002e44:	9104      	str	r1, [sp, #16]
 8002e46:	f640 21a4 	movw	r1, #2724	; 0xaa4
 8002e4a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002e4e:	680a      	ldr	r2, [r1, #0]
 8002e50:	6002      	str	r2, [r0, #0]
 8002e52:	9804      	ldr	r0, [sp, #16]
 8002e54:	6008      	str	r0, [r1, #0]
 8002e56:	f640 20e4 	movw	r0, #2788	; 0xae4
 8002e5a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002e5e:	6801      	ldr	r1, [r0, #0]
 8002e60:	3101      	adds	r1, #1
 8002e62:	6001      	str	r1, [r0, #0]
 8002e64:	f7ff fdde 	bl	8002a24 <prvResetNextTaskUnblockTime>
 8002e68:	e000      	b.n	8002e6c <xTaskIncrementTick+0x90>
 8002e6a:	e7ff      	b.n	8002e6c <xTaskIncrementTick+0x90>
 8002e6c:	9805      	ldr	r0, [sp, #20]
 8002e6e:	f640 21d4 	movw	r1, #2772	; 0xad4
 8002e72:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002e76:	6809      	ldr	r1, [r1, #0]
 8002e78:	4288      	cmp	r0, r1
 8002e7a:	d370      	bcc.n	8002f5e <xTaskIncrementTick+0x182>
 8002e7c:	e7ff      	b.n	8002e7e <xTaskIncrementTick+0xa2>
 8002e7e:	e7ff      	b.n	8002e80 <xTaskIncrementTick+0xa4>
 8002e80:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8002e84:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002e88:	6800      	ldr	r0, [r0, #0]
 8002e8a:	6800      	ldr	r0, [r0, #0]
 8002e8c:	2100      	movs	r1, #0
 8002e8e:	2800      	cmp	r0, #0
 8002e90:	bf08      	it	eq
 8002e92:	2101      	moveq	r1, #1
 8002e94:	2900      	cmp	r1, #0
 8002e96:	d008      	beq.n	8002eaa <xTaskIncrementTick+0xce>
 8002e98:	e7ff      	b.n	8002e9a <xTaskIncrementTick+0xbe>
 8002e9a:	f640 20d4 	movw	r0, #2772	; 0xad4
 8002e9e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002ea2:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8002ea6:	6001      	str	r1, [r0, #0]
 8002ea8:	e058      	b.n	8002f5c <xTaskIncrementTick+0x180>
 8002eaa:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8002eae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002eb2:	6800      	ldr	r0, [r0, #0]
 8002eb4:	68c0      	ldr	r0, [r0, #12]
 8002eb6:	68c0      	ldr	r0, [r0, #12]
 8002eb8:	9008      	str	r0, [sp, #32]
 8002eba:	9808      	ldr	r0, [sp, #32]
 8002ebc:	6840      	ldr	r0, [r0, #4]
 8002ebe:	9007      	str	r0, [sp, #28]
 8002ec0:	9805      	ldr	r0, [sp, #20]
 8002ec2:	9907      	ldr	r1, [sp, #28]
 8002ec4:	4288      	cmp	r0, r1
 8002ec6:	d207      	bcs.n	8002ed8 <xTaskIncrementTick+0xfc>
 8002ec8:	e7ff      	b.n	8002eca <xTaskIncrementTick+0xee>
 8002eca:	9807      	ldr	r0, [sp, #28]
 8002ecc:	f640 21d4 	movw	r1, #2772	; 0xad4
 8002ed0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002ed4:	6008      	str	r0, [r1, #0]
 8002ed6:	e041      	b.n	8002f5c <xTaskIncrementTick+0x180>
 8002ed8:	e7ff      	b.n	8002eda <xTaskIncrementTick+0xfe>
 8002eda:	9808      	ldr	r0, [sp, #32]
 8002edc:	3004      	adds	r0, #4
 8002ede:	f7ff fbd9 	bl	8002694 <uxListRemove>
 8002ee2:	f8dd e020 	ldr.w	lr, [sp, #32]
 8002ee6:	f8de e028 	ldr.w	lr, [lr, #40]	; 0x28
 8002eea:	f1be 0f00 	cmp.w	lr, #0
 8002eee:	9003      	str	r0, [sp, #12]
 8002ef0:	d006      	beq.n	8002f00 <xTaskIncrementTick+0x124>
 8002ef2:	e7ff      	b.n	8002ef4 <xTaskIncrementTick+0x118>
 8002ef4:	9808      	ldr	r0, [sp, #32]
 8002ef6:	3018      	adds	r0, #24
 8002ef8:	f7ff fbcc 	bl	8002694 <uxListRemove>
 8002efc:	9002      	str	r0, [sp, #8]
 8002efe:	e000      	b.n	8002f02 <xTaskIncrementTick+0x126>
 8002f00:	e7ff      	b.n	8002f02 <xTaskIncrementTick+0x126>
 8002f02:	9808      	ldr	r0, [sp, #32]
 8002f04:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8002f06:	2101      	movs	r1, #1
 8002f08:	fa01 f000 	lsl.w	r0, r1, r0
 8002f0c:	f640 2174 	movw	r1, #2676	; 0xa74
 8002f10:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f14:	680a      	ldr	r2, [r1, #0]
 8002f16:	4310      	orrs	r0, r2
 8002f18:	6008      	str	r0, [r1, #0]
 8002f1a:	9808      	ldr	r0, [sp, #32]
 8002f1c:	6ac1      	ldr	r1, [r0, #44]	; 0x2c
 8002f1e:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8002f22:	f640 12e8 	movw	r2, #2536	; 0x9e8
 8002f26:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002f2a:	eb02 0181 	add.w	r1, r2, r1, lsl #2
 8002f2e:	3004      	adds	r0, #4
 8002f30:	9001      	str	r0, [sp, #4]
 8002f32:	4608      	mov	r0, r1
 8002f34:	9901      	ldr	r1, [sp, #4]
 8002f36:	f7ff fb8c 	bl	8002652 <vListInsertEnd>
 8002f3a:	9808      	ldr	r0, [sp, #32]
 8002f3c:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8002f3e:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002f42:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f46:	6809      	ldr	r1, [r1, #0]
 8002f48:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 8002f4a:	4288      	cmp	r0, r1
 8002f4c:	d303      	bcc.n	8002f56 <xTaskIncrementTick+0x17a>
 8002f4e:	e7ff      	b.n	8002f50 <xTaskIncrementTick+0x174>
 8002f50:	2001      	movs	r0, #1
 8002f52:	9006      	str	r0, [sp, #24]
 8002f54:	e000      	b.n	8002f58 <xTaskIncrementTick+0x17c>
 8002f56:	e7ff      	b.n	8002f58 <xTaskIncrementTick+0x17c>
 8002f58:	e7ff      	b.n	8002f5a <xTaskIncrementTick+0x17e>
 8002f5a:	e791      	b.n	8002e80 <xTaskIncrementTick+0xa4>
 8002f5c:	e7ff      	b.n	8002f5e <xTaskIncrementTick+0x182>
 8002f5e:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002f62:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f66:	6800      	ldr	r0, [r0, #0]
 8002f68:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8002f6a:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8002f6e:	f640 11e8 	movw	r1, #2536	; 0x9e8
 8002f72:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f76:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8002f7a:	2802      	cmp	r0, #2
 8002f7c:	d303      	bcc.n	8002f86 <xTaskIncrementTick+0x1aa>
 8002f7e:	e7ff      	b.n	8002f80 <xTaskIncrementTick+0x1a4>
 8002f80:	2001      	movs	r0, #1
 8002f82:	9006      	str	r0, [sp, #24]
 8002f84:	e000      	b.n	8002f88 <xTaskIncrementTick+0x1ac>
 8002f86:	e7ff      	b.n	8002f88 <xTaskIncrementTick+0x1ac>
 8002f88:	e007      	b.n	8002f9a <xTaskIncrementTick+0x1be>
 8002f8a:	f640 20e0 	movw	r0, #2784	; 0xae0
 8002f8e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f92:	6801      	ldr	r1, [r0, #0]
 8002f94:	3101      	adds	r1, #1
 8002f96:	6001      	str	r1, [r0, #0]
 8002f98:	e7ff      	b.n	8002f9a <xTaskIncrementTick+0x1be>
 8002f9a:	f640 20dc 	movw	r0, #2780	; 0xadc
 8002f9e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002fa2:	6800      	ldr	r0, [r0, #0]
 8002fa4:	2800      	cmp	r0, #0
 8002fa6:	d003      	beq.n	8002fb0 <xTaskIncrementTick+0x1d4>
 8002fa8:	e7ff      	b.n	8002faa <xTaskIncrementTick+0x1ce>
 8002faa:	2001      	movs	r0, #1
 8002fac:	9006      	str	r0, [sp, #24]
 8002fae:	e000      	b.n	8002fb2 <xTaskIncrementTick+0x1d6>
 8002fb0:	e7ff      	b.n	8002fb2 <xTaskIncrementTick+0x1d6>
 8002fb2:	9806      	ldr	r0, [sp, #24]
 8002fb4:	b00a      	add	sp, #40	; 0x28
 8002fb6:	bd80      	pop	{r7, pc}

08002fb8 <xTaskGetSchedulerState>:
 8002fb8:	b081      	sub	sp, #4
 8002fba:	f640 2098 	movw	r0, #2712	; 0xa98
 8002fbe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002fc2:	6800      	ldr	r0, [r0, #0]
 8002fc4:	2800      	cmp	r0, #0
 8002fc6:	d103      	bne.n	8002fd0 <xTaskGetSchedulerState+0x18>
 8002fc8:	e7ff      	b.n	8002fca <xTaskGetSchedulerState+0x12>
 8002fca:	2001      	movs	r0, #1
 8002fcc:	9000      	str	r0, [sp, #0]
 8002fce:	e00e      	b.n	8002fee <xTaskGetSchedulerState+0x36>
 8002fd0:	f640 209c 	movw	r0, #2716	; 0xa9c
 8002fd4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002fd8:	6800      	ldr	r0, [r0, #0]
 8002fda:	2800      	cmp	r0, #0
 8002fdc:	d103      	bne.n	8002fe6 <xTaskGetSchedulerState+0x2e>
 8002fde:	e7ff      	b.n	8002fe0 <xTaskGetSchedulerState+0x28>
 8002fe0:	2002      	movs	r0, #2
 8002fe2:	9000      	str	r0, [sp, #0]
 8002fe4:	e002      	b.n	8002fec <xTaskGetSchedulerState+0x34>
 8002fe6:	2000      	movs	r0, #0
 8002fe8:	9000      	str	r0, [sp, #0]
 8002fea:	e7ff      	b.n	8002fec <xTaskGetSchedulerState+0x34>
 8002fec:	e7ff      	b.n	8002fee <xTaskGetSchedulerState+0x36>
 8002fee:	9800      	ldr	r0, [sp, #0]
 8002ff0:	b001      	add	sp, #4
 8002ff2:	4770      	bx	lr

08002ff4 <prvInitialiseTaskLists>:
 8002ff4:	b580      	push	{r7, lr}
 8002ff6:	466f      	mov	r7, sp
 8002ff8:	b084      	sub	sp, #16
 8002ffa:	2000      	movs	r0, #0
 8002ffc:	9003      	str	r0, [sp, #12]
 8002ffe:	e7ff      	b.n	8003000 <prvInitialiseTaskLists+0xc>
 8003000:	9803      	ldr	r0, [sp, #12]
 8003002:	2806      	cmp	r0, #6
 8003004:	d810      	bhi.n	8003028 <prvInitialiseTaskLists+0x34>
 8003006:	e7ff      	b.n	8003008 <prvInitialiseTaskLists+0x14>
 8003008:	9803      	ldr	r0, [sp, #12]
 800300a:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800300e:	f640 11e8 	movw	r1, #2536	; 0x9e8
 8003012:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003016:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 800301a:	f7ff faf8 	bl	800260e <vListInitialise>
 800301e:	e7ff      	b.n	8003020 <prvInitialiseTaskLists+0x2c>
 8003020:	9803      	ldr	r0, [sp, #12]
 8003022:	3001      	adds	r0, #1
 8003024:	9003      	str	r0, [sp, #12]
 8003026:	e7eb      	b.n	8003000 <prvInitialiseTaskLists+0xc>
 8003028:	f640 20e8 	movw	r0, #2792	; 0xae8
 800302c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003030:	9002      	str	r0, [sp, #8]
 8003032:	f7ff faec 	bl	800260e <vListInitialise>
 8003036:	f640 20fc 	movw	r0, #2812	; 0xafc
 800303a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800303e:	9001      	str	r0, [sp, #4]
 8003040:	f7ff fae5 	bl	800260e <vListInitialise>
 8003044:	f640 20bc 	movw	r0, #2748	; 0xabc
 8003048:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800304c:	f7ff fadf 	bl	800260e <vListInitialise>
 8003050:	f640 207c 	movw	r0, #2684	; 0xa7c
 8003054:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003058:	f7ff fad9 	bl	800260e <vListInitialise>
 800305c:	f640 20a8 	movw	r0, #2728	; 0xaa8
 8003060:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003064:	f7ff fad3 	bl	800260e <vListInitialise>
 8003068:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800306c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003070:	f8dd e008 	ldr.w	lr, [sp, #8]
 8003074:	f8c0 e000 	str.w	lr, [r0]
 8003078:	f640 20a4 	movw	r0, #2724	; 0xaa4
 800307c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003080:	9901      	ldr	r1, [sp, #4]
 8003082:	6001      	str	r1, [r0, #0]
 8003084:	b004      	add	sp, #16
 8003086:	bd80      	pop	{r7, pc}

08003088 <prvCheckTasksWaitingTermination>:
 8003088:	b580      	push	{r7, lr}
 800308a:	466f      	mov	r7, sp
 800308c:	b082      	sub	sp, #8
 800308e:	e7ff      	b.n	8003090 <prvCheckTasksWaitingTermination+0x8>
 8003090:	f640 2090 	movw	r0, #2704	; 0xa90
 8003094:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003098:	6800      	ldr	r0, [r0, #0]
 800309a:	2800      	cmp	r0, #0
 800309c:	d02c      	beq.n	80030f8 <prvCheckTasksWaitingTermination+0x70>
 800309e:	e7ff      	b.n	80030a0 <prvCheckTasksWaitingTermination+0x18>
 80030a0:	f000 f990 	bl	80033c4 <vPortEnterCritical>
 80030a4:	f640 2e7c 	movw	lr, #2684	; 0xa7c
 80030a8:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80030ac:	f8de e00c 	ldr.w	lr, [lr, #12]
 80030b0:	f8de e00c 	ldr.w	lr, [lr, #12]
 80030b4:	f8cd e004 	str.w	lr, [sp, #4]
 80030b8:	f8dd e004 	ldr.w	lr, [sp, #4]
 80030bc:	f10e 0004 	add.w	r0, lr, #4
 80030c0:	f7ff fae8 	bl	8002694 <uxListRemove>
 80030c4:	f640 2e94 	movw	lr, #2708	; 0xa94
 80030c8:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80030cc:	f8de 1000 	ldr.w	r1, [lr]
 80030d0:	3901      	subs	r1, #1
 80030d2:	f8ce 1000 	str.w	r1, [lr]
 80030d6:	f640 2190 	movw	r1, #2704	; 0xa90
 80030da:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80030de:	f8d1 e000 	ldr.w	lr, [r1]
 80030e2:	f1ae 0e01 	sub.w	lr, lr, #1
 80030e6:	f8c1 e000 	str.w	lr, [r1]
 80030ea:	9000      	str	r0, [sp, #0]
 80030ec:	f000 f996 	bl	800341c <vPortExitCritical>
 80030f0:	9801      	ldr	r0, [sp, #4]
 80030f2:	f7ff fc88 	bl	8002a06 <prvDeleteTCB>
 80030f6:	e7cb      	b.n	8003090 <prvCheckTasksWaitingTermination+0x8>
 80030f8:	b002      	add	sp, #8
 80030fa:	bd80      	pop	{r7, pc}

080030fc <pxPortInitialiseStack>:
 80030fc:	b580      	push	{r7, lr}
 80030fe:	466f      	mov	r7, sp
 8003100:	b086      	sub	sp, #24
 8003102:	4613      	mov	r3, r2
 8003104:	468c      	mov	ip, r1
 8003106:	4686      	mov	lr, r0
 8003108:	9005      	str	r0, [sp, #20]
 800310a:	9104      	str	r1, [sp, #16]
 800310c:	9203      	str	r2, [sp, #12]
 800310e:	9805      	ldr	r0, [sp, #20]
 8003110:	3804      	subs	r0, #4
 8003112:	9005      	str	r0, [sp, #20]
 8003114:	9805      	ldr	r0, [sp, #20]
 8003116:	f04f 7180 	mov.w	r1, #16777216	; 0x1000000
 800311a:	6001      	str	r1, [r0, #0]
 800311c:	9805      	ldr	r0, [sp, #20]
 800311e:	3804      	subs	r0, #4
 8003120:	9005      	str	r0, [sp, #20]
 8003122:	9804      	ldr	r0, [sp, #16]
 8003124:	f020 0001 	bic.w	r0, r0, #1
 8003128:	9905      	ldr	r1, [sp, #20]
 800312a:	6008      	str	r0, [r1, #0]
 800312c:	9805      	ldr	r0, [sp, #20]
 800312e:	3804      	subs	r0, #4
 8003130:	9005      	str	r0, [sp, #20]
 8003132:	9805      	ldr	r0, [sp, #20]
 8003134:	f243 116f 	movw	r1, #12655	; 0x316f
 8003138:	f6c0 0100 	movt	r1, #2048	; 0x800
 800313c:	6001      	str	r1, [r0, #0]
 800313e:	9805      	ldr	r0, [sp, #20]
 8003140:	3814      	subs	r0, #20
 8003142:	9005      	str	r0, [sp, #20]
 8003144:	9803      	ldr	r0, [sp, #12]
 8003146:	9905      	ldr	r1, [sp, #20]
 8003148:	6008      	str	r0, [r1, #0]
 800314a:	9805      	ldr	r0, [sp, #20]
 800314c:	3804      	subs	r0, #4
 800314e:	9005      	str	r0, [sp, #20]
 8003150:	9805      	ldr	r0, [sp, #20]
 8003152:	f06f 0102 	mvn.w	r1, #2
 8003156:	6001      	str	r1, [r0, #0]
 8003158:	9805      	ldr	r0, [sp, #20]
 800315a:	3820      	subs	r0, #32
 800315c:	9005      	str	r0, [sp, #20]
 800315e:	9805      	ldr	r0, [sp, #20]
 8003160:	9302      	str	r3, [sp, #8]
 8003162:	f8cd c004 	str.w	ip, [sp, #4]
 8003166:	f8cd e000 	str.w	lr, [sp]
 800316a:	b006      	add	sp, #24
 800316c:	bd80      	pop	{r7, pc}

0800316e <prvTaskExitError>:
 800316e:	b083      	sub	sp, #12
 8003170:	2000      	movs	r0, #0
 8003172:	9000      	str	r0, [sp, #0]
 8003174:	f240 0000 	movw	r0, #0
 8003178:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800317c:	6800      	ldr	r0, [r0, #0]
 800317e:	3001      	adds	r0, #1
 8003180:	2800      	cmp	r0, #0
 8003182:	d00b      	beq.n	800319c <prvTaskExitError+0x2e>
 8003184:	e7ff      	b.n	8003186 <prvTaskExitError+0x18>
 8003186:	f04f 0050 	mov.w	r0, #80	; 0x50
 800318a:	f380 8811 	msr	BASEPRI, r0
 800318e:	f3bf 8f6f 	isb	sy
 8003192:	f3bf 8f4f 	dsb	sy
 8003196:	9001      	str	r0, [sp, #4]
 8003198:	e7ff      	b.n	800319a <prvTaskExitError+0x2c>
 800319a:	e7fe      	b.n	800319a <prvTaskExitError+0x2c>
 800319c:	f04f 0050 	mov.w	r0, #80	; 0x50
 80031a0:	f380 8811 	msr	BASEPRI, r0
 80031a4:	f3bf 8f6f 	isb	sy
 80031a8:	f3bf 8f4f 	dsb	sy
 80031ac:	9002      	str	r0, [sp, #8]
 80031ae:	e7ff      	b.n	80031b0 <prvTaskExitError+0x42>
 80031b0:	9800      	ldr	r0, [sp, #0]
 80031b2:	2800      	cmp	r0, #0
 80031b4:	d101      	bne.n	80031ba <prvTaskExitError+0x4c>
 80031b6:	e7ff      	b.n	80031b8 <prvTaskExitError+0x4a>
 80031b8:	e7fa      	b.n	80031b0 <prvTaskExitError+0x42>
 80031ba:	b003      	add	sp, #12
 80031bc:	4770      	bx	lr
	...

080031c0 <SVC_Handler>:
 80031c0:	4b07      	ldr	r3, [pc, #28]	; (80031e0 <pxCurrentTCBConst2>)
 80031c2:	6819      	ldr	r1, [r3, #0]
 80031c4:	6808      	ldr	r0, [r1, #0]
 80031c6:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80031ca:	f380 8809 	msr	PSP, r0
 80031ce:	f3bf 8f6f 	isb	sy
 80031d2:	f04f 0000 	mov.w	r0, #0
 80031d6:	f380 8811 	msr	BASEPRI, r0
 80031da:	4770      	bx	lr
 80031dc:	bf00      	nop
 80031de:	bf00      	nop

080031e0 <pxCurrentTCBConst2>:
 80031e0:	200009e4 	.word	0x200009e4

080031e4 <xPortStartScheduler>:
 80031e4:	b580      	push	{r7, lr}
 80031e6:	466f      	mov	r7, sp
 80031e8:	b088      	sub	sp, #32
 80031ea:	f64e 5000 	movw	r0, #60672	; 0xed00
 80031ee:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80031f2:	6800      	ldr	r0, [r0, #0]
 80031f4:	f24c 2171 	movw	r1, #49777	; 0xc271
 80031f8:	f2c4 110f 	movt	r1, #16655	; 0x410f
 80031fc:	4288      	cmp	r0, r1
 80031fe:	d10b      	bne.n	8003218 <xPortStartScheduler+0x34>
 8003200:	e7ff      	b.n	8003202 <xPortStartScheduler+0x1e>
 8003202:	f04f 0050 	mov.w	r0, #80	; 0x50
 8003206:	f380 8811 	msr	BASEPRI, r0
 800320a:	f3bf 8f6f 	isb	sy
 800320e:	f3bf 8f4f 	dsb	sy
 8003212:	9005      	str	r0, [sp, #20]
 8003214:	e7ff      	b.n	8003216 <xPortStartScheduler+0x32>
 8003216:	e7fe      	b.n	8003216 <xPortStartScheduler+0x32>
 8003218:	f64e 5000 	movw	r0, #60672	; 0xed00
 800321c:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8003220:	6800      	ldr	r0, [r0, #0]
 8003222:	f24c 2170 	movw	r1, #49776	; 0xc270
 8003226:	f2c4 110f 	movt	r1, #16655	; 0x410f
 800322a:	4288      	cmp	r0, r1
 800322c:	d10b      	bne.n	8003246 <xPortStartScheduler+0x62>
 800322e:	e7ff      	b.n	8003230 <xPortStartScheduler+0x4c>
 8003230:	f04f 0050 	mov.w	r0, #80	; 0x50
 8003234:	f380 8811 	msr	BASEPRI, r0
 8003238:	f3bf 8f6f 	isb	sy
 800323c:	f3bf 8f4f 	dsb	sy
 8003240:	9006      	str	r0, [sp, #24]
 8003242:	e7ff      	b.n	8003244 <xPortStartScheduler+0x60>
 8003244:	e7fe      	b.n	8003244 <xPortStartScheduler+0x60>
 8003246:	f24e 4000 	movw	r0, #58368	; 0xe400
 800324a:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800324e:	9003      	str	r0, [sp, #12]
 8003250:	7801      	ldrb	r1, [r0, #0]
 8003252:	9104      	str	r1, [sp, #16]
 8003254:	21ff      	movs	r1, #255	; 0xff
 8003256:	7001      	strb	r1, [r0, #0]
 8003258:	7800      	ldrb	r0, [r0, #0]
 800325a:	f807 0c15 	strb.w	r0, [r7, #-21]
 800325e:	f817 0c15 	ldrb.w	r0, [r7, #-21]
 8003262:	f000 0050 	and.w	r0, r0, #80	; 0x50
 8003266:	f640 3110 	movw	r1, #2832	; 0xb10
 800326a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800326e:	7008      	strb	r0, [r1, #0]
 8003270:	f640 3014 	movw	r0, #2836	; 0xb14
 8003274:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003278:	2107      	movs	r1, #7
 800327a:	6001      	str	r1, [r0, #0]
 800327c:	e7ff      	b.n	800327e <xPortStartScheduler+0x9a>
 800327e:	f817 0c15 	ldrb.w	r0, [r7, #-21]
 8003282:	f010 0f80 	tst.w	r0, #128	; 0x80
 8003286:	d00d      	beq.n	80032a4 <xPortStartScheduler+0xc0>
 8003288:	e7ff      	b.n	800328a <xPortStartScheduler+0xa6>
 800328a:	f640 3014 	movw	r0, #2836	; 0xb14
 800328e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003292:	6801      	ldr	r1, [r0, #0]
 8003294:	3901      	subs	r1, #1
 8003296:	6001      	str	r1, [r0, #0]
 8003298:	f817 0c15 	ldrb.w	r0, [r7, #-21]
 800329c:	0040      	lsls	r0, r0, #1
 800329e:	f807 0c15 	strb.w	r0, [r7, #-21]
 80032a2:	e7ec      	b.n	800327e <xPortStartScheduler+0x9a>
 80032a4:	f640 3014 	movw	r0, #2836	; 0xb14
 80032a8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80032ac:	6800      	ldr	r0, [r0, #0]
 80032ae:	2803      	cmp	r0, #3
 80032b0:	d00b      	beq.n	80032ca <xPortStartScheduler+0xe6>
 80032b2:	e7ff      	b.n	80032b4 <xPortStartScheduler+0xd0>
 80032b4:	f04f 0050 	mov.w	r0, #80	; 0x50
 80032b8:	f380 8811 	msr	BASEPRI, r0
 80032bc:	f3bf 8f6f 	isb	sy
 80032c0:	f3bf 8f4f 	dsb	sy
 80032c4:	9007      	str	r0, [sp, #28]
 80032c6:	e7ff      	b.n	80032c8 <xPortStartScheduler+0xe4>
 80032c8:	e7fe      	b.n	80032c8 <xPortStartScheduler+0xe4>
 80032ca:	f640 3014 	movw	r0, #2836	; 0xb14
 80032ce:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80032d2:	6801      	ldr	r1, [r0, #0]
 80032d4:	0209      	lsls	r1, r1, #8
 80032d6:	6001      	str	r1, [r0, #0]
 80032d8:	6801      	ldr	r1, [r0, #0]
 80032da:	f401 61e0 	and.w	r1, r1, #1792	; 0x700
 80032de:	6001      	str	r1, [r0, #0]
 80032e0:	9804      	ldr	r0, [sp, #16]
 80032e2:	f24e 4100 	movw	r1, #58368	; 0xe400
 80032e6:	f2ce 0100 	movt	r1, #57344	; 0xe000
 80032ea:	7008      	strb	r0, [r1, #0]
 80032ec:	f64e 5020 	movw	r0, #60704	; 0xed20
 80032f0:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80032f4:	6801      	ldr	r1, [r0, #0]
 80032f6:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80032fa:	6001      	str	r1, [r0, #0]
 80032fc:	6801      	ldr	r1, [r0, #0]
 80032fe:	f041 4170 	orr.w	r1, r1, #4026531840	; 0xf0000000
 8003302:	6001      	str	r1, [r0, #0]
 8003304:	f000 f81a 	bl	800333c <vPortSetupTimerInterrupt>
 8003308:	f240 0000 	movw	r0, #0
 800330c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003310:	2100      	movs	r1, #0
 8003312:	6001      	str	r1, [r0, #0]
 8003314:	9101      	str	r1, [sp, #4]
 8003316:	f000 f837 	bl	8003388 <vPortEnableVFP>
 800331a:	f64e 7034 	movw	r0, #61236	; 0xef34
 800331e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8003322:	6801      	ldr	r1, [r0, #0]
 8003324:	f041 4140 	orr.w	r1, r1, #3221225472	; 0xc0000000
 8003328:	6001      	str	r1, [r0, #0]
 800332a:	f000 f837 	bl	800339c <prvPortStartFirstTask>
 800332e:	f7ff fc79 	bl	8002c24 <vTaskSwitchContext>
 8003332:	f7ff ff1c 	bl	800316e <prvTaskExitError>
 8003336:	9801      	ldr	r0, [sp, #4]
 8003338:	b008      	add	sp, #32
 800333a:	bd80      	pop	{r7, pc}

0800333c <vPortSetupTimerInterrupt>:
 800333c:	b081      	sub	sp, #4
 800333e:	f24e 0010 	movw	r0, #57360	; 0xe010
 8003342:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8003346:	2100      	movs	r1, #0
 8003348:	6001      	str	r1, [r0, #0]
 800334a:	f24e 0218 	movw	r2, #57368	; 0xe018
 800334e:	f2ce 0200 	movt	r2, #57344	; 0xe000
 8003352:	6011      	str	r1, [r2, #0]
 8003354:	f240 0118 	movw	r1, #24
 8003358:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800335c:	6809      	ldr	r1, [r1, #0]
 800335e:	f644 52d3 	movw	r2, #19923	; 0x4dd3
 8003362:	f2c1 0262 	movt	r2, #4194	; 0x1062
 8003366:	fba1 1202 	umull	r1, r2, r1, r2
 800336a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800336e:	eb03 1292 	add.w	r2, r3, r2, lsr #6
 8003372:	f24e 0314 	movw	r3, #57364	; 0xe014
 8003376:	f2ce 0300 	movt	r3, #57344	; 0xe000
 800337a:	601a      	str	r2, [r3, #0]
 800337c:	2207      	movs	r2, #7
 800337e:	6002      	str	r2, [r0, #0]
 8003380:	9100      	str	r1, [sp, #0]
 8003382:	b001      	add	sp, #4
 8003384:	4770      	bx	lr
	...

08003388 <vPortEnableVFP>:
 8003388:	f8df 000c 	ldr.w	r0, [pc, #12]	; 8003398 <vPortEnableVFP+0x10>
 800338c:	6801      	ldr	r1, [r0, #0]
 800338e:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8003392:	6001      	str	r1, [r0, #0]
 8003394:	4770      	bx	lr
 8003396:	bf00      	nop
 8003398:	e000ed88 	.word	0xe000ed88

0800339c <prvPortStartFirstTask>:
 800339c:	4808      	ldr	r0, [pc, #32]	; (80033c0 <prvPortStartFirstTask+0x24>)
 800339e:	6800      	ldr	r0, [r0, #0]
 80033a0:	6800      	ldr	r0, [r0, #0]
 80033a2:	f380 8808 	msr	MSP, r0
 80033a6:	f04f 0000 	mov.w	r0, #0
 80033aa:	f380 8814 	msr	CONTROL, r0
 80033ae:	b662      	cpsie	i
 80033b0:	b661      	cpsie	f
 80033b2:	f3bf 8f4f 	dsb	sy
 80033b6:	f3bf 8f6f 	isb	sy
 80033ba:	df00      	svc	0
 80033bc:	bf00      	nop
 80033be:	bf00      	nop
 80033c0:	e000ed08 	.word	0xe000ed08

080033c4 <vPortEnterCritical>:
 80033c4:	b082      	sub	sp, #8
 80033c6:	f04f 0050 	mov.w	r0, #80	; 0x50
 80033ca:	f380 8811 	msr	BASEPRI, r0
 80033ce:	f3bf 8f6f 	isb	sy
 80033d2:	f3bf 8f4f 	dsb	sy
 80033d6:	9000      	str	r0, [sp, #0]
 80033d8:	f240 0000 	movw	r0, #0
 80033dc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80033e0:	6801      	ldr	r1, [r0, #0]
 80033e2:	3101      	adds	r1, #1
 80033e4:	6001      	str	r1, [r0, #0]
 80033e6:	6800      	ldr	r0, [r0, #0]
 80033e8:	2801      	cmp	r0, #1
 80033ea:	d115      	bne.n	8003418 <vPortEnterCritical+0x54>
 80033ec:	e7ff      	b.n	80033ee <vPortEnterCritical+0x2a>
 80033ee:	f64e 5004 	movw	r0, #60676	; 0xed04
 80033f2:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80033f6:	6800      	ldr	r0, [r0, #0]
 80033f8:	f010 0fff 	tst.w	r0, #255	; 0xff
 80033fc:	d00b      	beq.n	8003416 <vPortEnterCritical+0x52>
 80033fe:	e7ff      	b.n	8003400 <vPortEnterCritical+0x3c>
 8003400:	f04f 0050 	mov.w	r0, #80	; 0x50
 8003404:	f380 8811 	msr	BASEPRI, r0
 8003408:	f3bf 8f6f 	isb	sy
 800340c:	f3bf 8f4f 	dsb	sy
 8003410:	9001      	str	r0, [sp, #4]
 8003412:	e7ff      	b.n	8003414 <vPortEnterCritical+0x50>
 8003414:	e7fe      	b.n	8003414 <vPortEnterCritical+0x50>
 8003416:	e7ff      	b.n	8003418 <vPortEnterCritical+0x54>
 8003418:	b002      	add	sp, #8
 800341a:	4770      	bx	lr

0800341c <vPortExitCritical>:
 800341c:	b082      	sub	sp, #8
 800341e:	f240 0000 	movw	r0, #0
 8003422:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003426:	6800      	ldr	r0, [r0, #0]
 8003428:	2800      	cmp	r0, #0
 800342a:	d10b      	bne.n	8003444 <vPortExitCritical+0x28>
 800342c:	e7ff      	b.n	800342e <vPortExitCritical+0x12>
 800342e:	f04f 0050 	mov.w	r0, #80	; 0x50
 8003432:	f380 8811 	msr	BASEPRI, r0
 8003436:	f3bf 8f6f 	isb	sy
 800343a:	f3bf 8f4f 	dsb	sy
 800343e:	9000      	str	r0, [sp, #0]
 8003440:	e7ff      	b.n	8003442 <vPortExitCritical+0x26>
 8003442:	e7fe      	b.n	8003442 <vPortExitCritical+0x26>
 8003444:	f240 0000 	movw	r0, #0
 8003448:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800344c:	6801      	ldr	r1, [r0, #0]
 800344e:	3901      	subs	r1, #1
 8003450:	6001      	str	r1, [r0, #0]
 8003452:	6800      	ldr	r0, [r0, #0]
 8003454:	2800      	cmp	r0, #0
 8003456:	d106      	bne.n	8003466 <vPortExitCritical+0x4a>
 8003458:	e7ff      	b.n	800345a <vPortExitCritical+0x3e>
 800345a:	2000      	movs	r0, #0
 800345c:	9001      	str	r0, [sp, #4]
 800345e:	9801      	ldr	r0, [sp, #4]
 8003460:	f380 8811 	msr	BASEPRI, r0
 8003464:	e7ff      	b.n	8003466 <vPortExitCritical+0x4a>
 8003466:	b002      	add	sp, #8
 8003468:	4770      	bx	lr
 800346a:	0000      	movs	r0, r0
 800346c:	0000      	movs	r0, r0
	...

08003470 <PendSV_Handler>:
 8003470:	f3ef 8009 	mrs	r0, PSP
 8003474:	f3bf 8f6f 	isb	sy
 8003478:	4b15      	ldr	r3, [pc, #84]	; (80034d0 <pxCurrentTCBConst>)
 800347a:	681a      	ldr	r2, [r3, #0]
 800347c:	f01e 0f10 	tst.w	lr, #16
 8003480:	bf08      	it	eq
 8003482:	ed20 8a10 	vstmdbeq	r0!, {s16-s31}
 8003486:	e920 4ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800348a:	6010      	str	r0, [r2, #0]
 800348c:	e92d 0009 	stmdb	sp!, {r0, r3}
 8003490:	f04f 0050 	mov.w	r0, #80	; 0x50
 8003494:	f380 8811 	msr	BASEPRI, r0
 8003498:	f3bf 8f4f 	dsb	sy
 800349c:	f3bf 8f6f 	isb	sy
 80034a0:	f7ff fbc0 	bl	8002c24 <vTaskSwitchContext>
 80034a4:	f04f 0000 	mov.w	r0, #0
 80034a8:	f380 8811 	msr	BASEPRI, r0
 80034ac:	e8bd 0009 	ldmia.w	sp!, {r0, r3}
 80034b0:	6819      	ldr	r1, [r3, #0]
 80034b2:	6808      	ldr	r0, [r1, #0]
 80034b4:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80034b8:	f01e 0f10 	tst.w	lr, #16
 80034bc:	bf08      	it	eq
 80034be:	ecb0 8a10 	vldmiaeq	r0!, {s16-s31}
 80034c2:	f380 8809 	msr	PSP, r0
 80034c6:	f3bf 8f6f 	isb	sy
 80034ca:	4770      	bx	lr
 80034cc:	bf00      	nop
 80034ce:	bf00      	nop

080034d0 <pxCurrentTCBConst>:
 80034d0:	200009e4 	.word	0x200009e4

080034d4 <xPortSysTickHandler>:
 80034d4:	b580      	push	{r7, lr}
 80034d6:	466f      	mov	r7, sp
 80034d8:	b082      	sub	sp, #8
 80034da:	f04f 0050 	mov.w	r0, #80	; 0x50
 80034de:	f380 8811 	msr	BASEPRI, r0
 80034e2:	f3bf 8f6f 	isb	sy
 80034e6:	f3bf 8f4f 	dsb	sy
 80034ea:	9000      	str	r0, [sp, #0]
 80034ec:	f7ff fc76 	bl	8002ddc <xTaskIncrementTick>
 80034f0:	2800      	cmp	r0, #0
 80034f2:	d008      	beq.n	8003506 <xPortSysTickHandler+0x32>
 80034f4:	e7ff      	b.n	80034f6 <xPortSysTickHandler+0x22>
 80034f6:	f64e 5004 	movw	r0, #60676	; 0xed04
 80034fa:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80034fe:	f04f 5180 	mov.w	r1, #268435456	; 0x10000000
 8003502:	6001      	str	r1, [r0, #0]
 8003504:	e7ff      	b.n	8003506 <xPortSysTickHandler+0x32>
 8003506:	2000      	movs	r0, #0
 8003508:	9001      	str	r0, [sp, #4]
 800350a:	9801      	ldr	r0, [sp, #4]
 800350c:	f380 8811 	msr	BASEPRI, r0
 8003510:	b002      	add	sp, #8
 8003512:	bd80      	pop	{r7, pc}

08003514 <pvPortMalloc>:
 8003514:	b580      	push	{r7, lr}
 8003516:	466f      	mov	r7, sp
 8003518:	b08c      	sub	sp, #48	; 0x30
 800351a:	4601      	mov	r1, r0
 800351c:	9008      	str	r0, [sp, #32]
 800351e:	2000      	movs	r0, #0
 8003520:	9004      	str	r0, [sp, #16]
 8003522:	9103      	str	r1, [sp, #12]
 8003524:	f7ff faa6 	bl	8002a74 <vTaskSuspendAll>
 8003528:	f640 3018 	movw	r0, #2840	; 0xb18
 800352c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003530:	6800      	ldr	r0, [r0, #0]
 8003532:	2800      	cmp	r0, #0
 8003534:	d103      	bne.n	800353e <pvPortMalloc+0x2a>
 8003536:	e7ff      	b.n	8003538 <pvPortMalloc+0x24>
 8003538:	f000 f8ea 	bl	8003710 <prvHeapInit>
 800353c:	e000      	b.n	8003540 <pvPortMalloc+0x2c>
 800353e:	e7ff      	b.n	8003540 <pvPortMalloc+0x2c>
 8003540:	9808      	ldr	r0, [sp, #32]
 8003542:	f640 311c 	movw	r1, #2844	; 0xb1c
 8003546:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800354a:	6809      	ldr	r1, [r1, #0]
 800354c:	4208      	tst	r0, r1
 800354e:	f040 80c5 	bne.w	80036dc <pvPortMalloc+0x1c8>
 8003552:	e7ff      	b.n	8003554 <pvPortMalloc+0x40>
 8003554:	9808      	ldr	r0, [sp, #32]
 8003556:	2800      	cmp	r0, #0
 8003558:	d024      	beq.n	80035a4 <pvPortMalloc+0x90>
 800355a:	e7ff      	b.n	800355c <pvPortMalloc+0x48>
 800355c:	9808      	ldr	r0, [sp, #32]
 800355e:	3008      	adds	r0, #8
 8003560:	9008      	str	r0, [sp, #32]
 8003562:	f89d 0020 	ldrb.w	r0, [sp, #32]
 8003566:	0740      	lsls	r0, r0, #29
 8003568:	2800      	cmp	r0, #0
 800356a:	d019      	beq.n	80035a0 <pvPortMalloc+0x8c>
 800356c:	e7ff      	b.n	800356e <pvPortMalloc+0x5a>
 800356e:	9808      	ldr	r0, [sp, #32]
 8003570:	f000 0107 	and.w	r1, r0, #7
 8003574:	f1c1 0108 	rsb	r1, r1, #8
 8003578:	4408      	add	r0, r1
 800357a:	9008      	str	r0, [sp, #32]
 800357c:	f89d 0020 	ldrb.w	r0, [sp, #32]
 8003580:	0740      	lsls	r0, r0, #29
 8003582:	2800      	cmp	r0, #0
 8003584:	d00b      	beq.n	800359e <pvPortMalloc+0x8a>
 8003586:	e7ff      	b.n	8003588 <pvPortMalloc+0x74>
 8003588:	f04f 0050 	mov.w	r0, #80	; 0x50
 800358c:	f380 8811 	msr	BASEPRI, r0
 8003590:	f3bf 8f6f 	isb	sy
 8003594:	f3bf 8f4f 	dsb	sy
 8003598:	9009      	str	r0, [sp, #36]	; 0x24
 800359a:	e7ff      	b.n	800359c <pvPortMalloc+0x88>
 800359c:	e7fe      	b.n	800359c <pvPortMalloc+0x88>
 800359e:	e000      	b.n	80035a2 <pvPortMalloc+0x8e>
 80035a0:	e7ff      	b.n	80035a2 <pvPortMalloc+0x8e>
 80035a2:	e000      	b.n	80035a6 <pvPortMalloc+0x92>
 80035a4:	e7ff      	b.n	80035a6 <pvPortMalloc+0x92>
 80035a6:	9808      	ldr	r0, [sp, #32]
 80035a8:	2800      	cmp	r0, #0
 80035aa:	f000 8095 	beq.w	80036d8 <pvPortMalloc+0x1c4>
 80035ae:	e7ff      	b.n	80035b0 <pvPortMalloc+0x9c>
 80035b0:	9808      	ldr	r0, [sp, #32]
 80035b2:	f640 3120 	movw	r1, #2848	; 0xb20
 80035b6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035ba:	6809      	ldr	r1, [r1, #0]
 80035bc:	4288      	cmp	r0, r1
 80035be:	f200 808b 	bhi.w	80036d8 <pvPortMalloc+0x1c4>
 80035c2:	e7ff      	b.n	80035c4 <pvPortMalloc+0xb0>
 80035c4:	f640 3024 	movw	r0, #2852	; 0xb24
 80035c8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80035cc:	9006      	str	r0, [sp, #24]
 80035ce:	6800      	ldr	r0, [r0, #0]
 80035d0:	9007      	str	r0, [sp, #28]
 80035d2:	e7ff      	b.n	80035d4 <pvPortMalloc+0xc0>
 80035d4:	9807      	ldr	r0, [sp, #28]
 80035d6:	6840      	ldr	r0, [r0, #4]
 80035d8:	9908      	ldr	r1, [sp, #32]
 80035da:	2200      	movs	r2, #0
 80035dc:	4288      	cmp	r0, r1
 80035de:	9202      	str	r2, [sp, #8]
 80035e0:	d207      	bcs.n	80035f2 <pvPortMalloc+0xde>
 80035e2:	e7ff      	b.n	80035e4 <pvPortMalloc+0xd0>
 80035e4:	9807      	ldr	r0, [sp, #28]
 80035e6:	6800      	ldr	r0, [r0, #0]
 80035e8:	2800      	cmp	r0, #0
 80035ea:	bf18      	it	ne
 80035ec:	2001      	movne	r0, #1
 80035ee:	9002      	str	r0, [sp, #8]
 80035f0:	e7ff      	b.n	80035f2 <pvPortMalloc+0xde>
 80035f2:	9802      	ldr	r0, [sp, #8]
 80035f4:	07c0      	lsls	r0, r0, #31
 80035f6:	2800      	cmp	r0, #0
 80035f8:	d006      	beq.n	8003608 <pvPortMalloc+0xf4>
 80035fa:	e7ff      	b.n	80035fc <pvPortMalloc+0xe8>
 80035fc:	9807      	ldr	r0, [sp, #28]
 80035fe:	9006      	str	r0, [sp, #24]
 8003600:	9807      	ldr	r0, [sp, #28]
 8003602:	6800      	ldr	r0, [r0, #0]
 8003604:	9007      	str	r0, [sp, #28]
 8003606:	e7e5      	b.n	80035d4 <pvPortMalloc+0xc0>
 8003608:	9807      	ldr	r0, [sp, #28]
 800360a:	f640 3118 	movw	r1, #2840	; 0xb18
 800360e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003612:	6809      	ldr	r1, [r1, #0]
 8003614:	4288      	cmp	r0, r1
 8003616:	d05d      	beq.n	80036d4 <pvPortMalloc+0x1c0>
 8003618:	e7ff      	b.n	800361a <pvPortMalloc+0x106>
 800361a:	9806      	ldr	r0, [sp, #24]
 800361c:	6800      	ldr	r0, [r0, #0]
 800361e:	3008      	adds	r0, #8
 8003620:	9004      	str	r0, [sp, #16]
 8003622:	9807      	ldr	r0, [sp, #28]
 8003624:	6800      	ldr	r0, [r0, #0]
 8003626:	9906      	ldr	r1, [sp, #24]
 8003628:	6008      	str	r0, [r1, #0]
 800362a:	9807      	ldr	r0, [sp, #28]
 800362c:	6840      	ldr	r0, [r0, #4]
 800362e:	9908      	ldr	r1, [sp, #32]
 8003630:	1a40      	subs	r0, r0, r1
 8003632:	2811      	cmp	r0, #17
 8003634:	d322      	bcc.n	800367c <pvPortMalloc+0x168>
 8003636:	e7ff      	b.n	8003638 <pvPortMalloc+0x124>
 8003638:	9807      	ldr	r0, [sp, #28]
 800363a:	9908      	ldr	r1, [sp, #32]
 800363c:	4408      	add	r0, r1
 800363e:	9005      	str	r0, [sp, #20]
 8003640:	f89d 0014 	ldrb.w	r0, [sp, #20]
 8003644:	0740      	lsls	r0, r0, #29
 8003646:	2800      	cmp	r0, #0
 8003648:	d00b      	beq.n	8003662 <pvPortMalloc+0x14e>
 800364a:	e7ff      	b.n	800364c <pvPortMalloc+0x138>
 800364c:	f04f 0050 	mov.w	r0, #80	; 0x50
 8003650:	f380 8811 	msr	BASEPRI, r0
 8003654:	f3bf 8f6f 	isb	sy
 8003658:	f3bf 8f4f 	dsb	sy
 800365c:	900a      	str	r0, [sp, #40]	; 0x28
 800365e:	e7ff      	b.n	8003660 <pvPortMalloc+0x14c>
 8003660:	e7fe      	b.n	8003660 <pvPortMalloc+0x14c>
 8003662:	9807      	ldr	r0, [sp, #28]
 8003664:	6840      	ldr	r0, [r0, #4]
 8003666:	9908      	ldr	r1, [sp, #32]
 8003668:	1a40      	subs	r0, r0, r1
 800366a:	9905      	ldr	r1, [sp, #20]
 800366c:	6048      	str	r0, [r1, #4]
 800366e:	9808      	ldr	r0, [sp, #32]
 8003670:	9907      	ldr	r1, [sp, #28]
 8003672:	6048      	str	r0, [r1, #4]
 8003674:	9805      	ldr	r0, [sp, #20]
 8003676:	f000 f8aa 	bl	80037ce <prvInsertBlockIntoFreeList>
 800367a:	e000      	b.n	800367e <pvPortMalloc+0x16a>
 800367c:	e7ff      	b.n	800367e <pvPortMalloc+0x16a>
 800367e:	9807      	ldr	r0, [sp, #28]
 8003680:	6840      	ldr	r0, [r0, #4]
 8003682:	f640 3120 	movw	r1, #2848	; 0xb20
 8003686:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800368a:	680a      	ldr	r2, [r1, #0]
 800368c:	1a10      	subs	r0, r2, r0
 800368e:	6008      	str	r0, [r1, #0]
 8003690:	6808      	ldr	r0, [r1, #0]
 8003692:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003696:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800369a:	6809      	ldr	r1, [r1, #0]
 800369c:	4288      	cmp	r0, r1
 800369e:	d20b      	bcs.n	80036b8 <pvPortMalloc+0x1a4>
 80036a0:	e7ff      	b.n	80036a2 <pvPortMalloc+0x18e>
 80036a2:	f640 3020 	movw	r0, #2848	; 0xb20
 80036a6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80036aa:	6800      	ldr	r0, [r0, #0]
 80036ac:	f640 312c 	movw	r1, #2860	; 0xb2c
 80036b0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80036b4:	6008      	str	r0, [r1, #0]
 80036b6:	e000      	b.n	80036ba <pvPortMalloc+0x1a6>
 80036b8:	e7ff      	b.n	80036ba <pvPortMalloc+0x1a6>
 80036ba:	f640 301c 	movw	r0, #2844	; 0xb1c
 80036be:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80036c2:	6800      	ldr	r0, [r0, #0]
 80036c4:	9907      	ldr	r1, [sp, #28]
 80036c6:	684a      	ldr	r2, [r1, #4]
 80036c8:	4310      	orrs	r0, r2
 80036ca:	6048      	str	r0, [r1, #4]
 80036cc:	9807      	ldr	r0, [sp, #28]
 80036ce:	2100      	movs	r1, #0
 80036d0:	6001      	str	r1, [r0, #0]
 80036d2:	e000      	b.n	80036d6 <pvPortMalloc+0x1c2>
 80036d4:	e7ff      	b.n	80036d6 <pvPortMalloc+0x1c2>
 80036d6:	e000      	b.n	80036da <pvPortMalloc+0x1c6>
 80036d8:	e7ff      	b.n	80036da <pvPortMalloc+0x1c6>
 80036da:	e000      	b.n	80036de <pvPortMalloc+0x1ca>
 80036dc:	e7ff      	b.n	80036de <pvPortMalloc+0x1ca>
 80036de:	f7ff f9d1 	bl	8002a84 <xTaskResumeAll>
 80036e2:	f89d e010 	ldrb.w	lr, [sp, #16]
 80036e6:	ea4f 7e4e 	mov.w	lr, lr, lsl #29
 80036ea:	f1be 0f00 	cmp.w	lr, #0
 80036ee:	9001      	str	r0, [sp, #4]
 80036f0:	d00b      	beq.n	800370a <pvPortMalloc+0x1f6>
 80036f2:	e7ff      	b.n	80036f4 <pvPortMalloc+0x1e0>
 80036f4:	f04f 0050 	mov.w	r0, #80	; 0x50
 80036f8:	f380 8811 	msr	BASEPRI, r0
 80036fc:	f3bf 8f6f 	isb	sy
 8003700:	f3bf 8f4f 	dsb	sy
 8003704:	900b      	str	r0, [sp, #44]	; 0x2c
 8003706:	e7ff      	b.n	8003708 <pvPortMalloc+0x1f4>
 8003708:	e7fe      	b.n	8003708 <pvPortMalloc+0x1f4>
 800370a:	9804      	ldr	r0, [sp, #16]
 800370c:	b00c      	add	sp, #48	; 0x30
 800370e:	bd80      	pop	{r7, pc}

08003710 <prvHeapInit>:
 8003710:	b084      	sub	sp, #16
 8003712:	f44f 5070 	mov.w	r0, #15360	; 0x3c00
 8003716:	9000      	str	r0, [sp, #0]
 8003718:	f640 3030 	movw	r0, #2864	; 0xb30
 800371c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003720:	9001      	str	r0, [sp, #4]
 8003722:	f89d 0004 	ldrb.w	r0, [sp, #4]
 8003726:	0740      	lsls	r0, r0, #29
 8003728:	2800      	cmp	r0, #0
 800372a:	d011      	beq.n	8003750 <prvHeapInit+0x40>
 800372c:	e7ff      	b.n	800372e <prvHeapInit+0x1e>
 800372e:	9801      	ldr	r0, [sp, #4]
 8003730:	3007      	adds	r0, #7
 8003732:	9001      	str	r0, [sp, #4]
 8003734:	9801      	ldr	r0, [sp, #4]
 8003736:	f020 0007 	bic.w	r0, r0, #7
 800373a:	9001      	str	r0, [sp, #4]
 800373c:	9801      	ldr	r0, [sp, #4]
 800373e:	f640 3130 	movw	r1, #2864	; 0xb30
 8003742:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003746:	1a40      	subs	r0, r0, r1
 8003748:	9900      	ldr	r1, [sp, #0]
 800374a:	1a08      	subs	r0, r1, r0
 800374c:	9000      	str	r0, [sp, #0]
 800374e:	e7ff      	b.n	8003750 <prvHeapInit+0x40>
 8003750:	9801      	ldr	r0, [sp, #4]
 8003752:	9002      	str	r0, [sp, #8]
 8003754:	9802      	ldr	r0, [sp, #8]
 8003756:	f640 3124 	movw	r1, #2852	; 0xb24
 800375a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800375e:	6008      	str	r0, [r1, #0]
 8003760:	2000      	movs	r0, #0
 8003762:	6048      	str	r0, [r1, #4]
 8003764:	9902      	ldr	r1, [sp, #8]
 8003766:	9a00      	ldr	r2, [sp, #0]
 8003768:	4411      	add	r1, r2
 800376a:	9101      	str	r1, [sp, #4]
 800376c:	9901      	ldr	r1, [sp, #4]
 800376e:	3908      	subs	r1, #8
 8003770:	9101      	str	r1, [sp, #4]
 8003772:	9901      	ldr	r1, [sp, #4]
 8003774:	f021 0107 	bic.w	r1, r1, #7
 8003778:	9101      	str	r1, [sp, #4]
 800377a:	9901      	ldr	r1, [sp, #4]
 800377c:	f640 3218 	movw	r2, #2840	; 0xb18
 8003780:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003784:	6011      	str	r1, [r2, #0]
 8003786:	6811      	ldr	r1, [r2, #0]
 8003788:	6048      	str	r0, [r1, #4]
 800378a:	6811      	ldr	r1, [r2, #0]
 800378c:	6008      	str	r0, [r1, #0]
 800378e:	9802      	ldr	r0, [sp, #8]
 8003790:	9003      	str	r0, [sp, #12]
 8003792:	9801      	ldr	r0, [sp, #4]
 8003794:	9903      	ldr	r1, [sp, #12]
 8003796:	1a40      	subs	r0, r0, r1
 8003798:	6048      	str	r0, [r1, #4]
 800379a:	6810      	ldr	r0, [r2, #0]
 800379c:	9903      	ldr	r1, [sp, #12]
 800379e:	6008      	str	r0, [r1, #0]
 80037a0:	9803      	ldr	r0, [sp, #12]
 80037a2:	6840      	ldr	r0, [r0, #4]
 80037a4:	f640 312c 	movw	r1, #2860	; 0xb2c
 80037a8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80037ac:	6008      	str	r0, [r1, #0]
 80037ae:	9803      	ldr	r0, [sp, #12]
 80037b0:	6840      	ldr	r0, [r0, #4]
 80037b2:	f640 3120 	movw	r1, #2848	; 0xb20
 80037b6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80037ba:	6008      	str	r0, [r1, #0]
 80037bc:	f640 301c 	movw	r0, #2844	; 0xb1c
 80037c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80037c4:	f04f 4100 	mov.w	r1, #2147483648	; 0x80000000
 80037c8:	6001      	str	r1, [r0, #0]
 80037ca:	b004      	add	sp, #16
 80037cc:	4770      	bx	lr

080037ce <prvInsertBlockIntoFreeList>:
 80037ce:	b084      	sub	sp, #16
 80037d0:	4601      	mov	r1, r0
 80037d2:	9003      	str	r0, [sp, #12]
 80037d4:	f640 3024 	movw	r0, #2852	; 0xb24
 80037d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80037dc:	9002      	str	r0, [sp, #8]
 80037de:	9100      	str	r1, [sp, #0]
 80037e0:	e7ff      	b.n	80037e2 <prvInsertBlockIntoFreeList+0x14>
 80037e2:	9802      	ldr	r0, [sp, #8]
 80037e4:	6800      	ldr	r0, [r0, #0]
 80037e6:	9903      	ldr	r1, [sp, #12]
 80037e8:	4288      	cmp	r0, r1
 80037ea:	d205      	bcs.n	80037f8 <prvInsertBlockIntoFreeList+0x2a>
 80037ec:	e7ff      	b.n	80037ee <prvInsertBlockIntoFreeList+0x20>
 80037ee:	e7ff      	b.n	80037f0 <prvInsertBlockIntoFreeList+0x22>
 80037f0:	9802      	ldr	r0, [sp, #8]
 80037f2:	6800      	ldr	r0, [r0, #0]
 80037f4:	9002      	str	r0, [sp, #8]
 80037f6:	e7f4      	b.n	80037e2 <prvInsertBlockIntoFreeList+0x14>
 80037f8:	9802      	ldr	r0, [sp, #8]
 80037fa:	9001      	str	r0, [sp, #4]
 80037fc:	9801      	ldr	r0, [sp, #4]
 80037fe:	9902      	ldr	r1, [sp, #8]
 8003800:	6849      	ldr	r1, [r1, #4]
 8003802:	4408      	add	r0, r1
 8003804:	9903      	ldr	r1, [sp, #12]
 8003806:	4288      	cmp	r0, r1
 8003808:	d109      	bne.n	800381e <prvInsertBlockIntoFreeList+0x50>
 800380a:	e7ff      	b.n	800380c <prvInsertBlockIntoFreeList+0x3e>
 800380c:	9803      	ldr	r0, [sp, #12]
 800380e:	6840      	ldr	r0, [r0, #4]
 8003810:	9902      	ldr	r1, [sp, #8]
 8003812:	684a      	ldr	r2, [r1, #4]
 8003814:	4410      	add	r0, r2
 8003816:	6048      	str	r0, [r1, #4]
 8003818:	9802      	ldr	r0, [sp, #8]
 800381a:	9003      	str	r0, [sp, #12]
 800381c:	e000      	b.n	8003820 <prvInsertBlockIntoFreeList+0x52>
 800381e:	e7ff      	b.n	8003820 <prvInsertBlockIntoFreeList+0x52>
 8003820:	9803      	ldr	r0, [sp, #12]
 8003822:	9001      	str	r0, [sp, #4]
 8003824:	9801      	ldr	r0, [sp, #4]
 8003826:	9903      	ldr	r1, [sp, #12]
 8003828:	6849      	ldr	r1, [r1, #4]
 800382a:	4408      	add	r0, r1
 800382c:	9902      	ldr	r1, [sp, #8]
 800382e:	6809      	ldr	r1, [r1, #0]
 8003830:	4288      	cmp	r0, r1
 8003832:	d120      	bne.n	8003876 <prvInsertBlockIntoFreeList+0xa8>
 8003834:	e7ff      	b.n	8003836 <prvInsertBlockIntoFreeList+0x68>
 8003836:	9802      	ldr	r0, [sp, #8]
 8003838:	6800      	ldr	r0, [r0, #0]
 800383a:	f640 3118 	movw	r1, #2840	; 0xb18
 800383e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003842:	6809      	ldr	r1, [r1, #0]
 8003844:	4288      	cmp	r0, r1
 8003846:	d00d      	beq.n	8003864 <prvInsertBlockIntoFreeList+0x96>
 8003848:	e7ff      	b.n	800384a <prvInsertBlockIntoFreeList+0x7c>
 800384a:	9802      	ldr	r0, [sp, #8]
 800384c:	6800      	ldr	r0, [r0, #0]
 800384e:	6840      	ldr	r0, [r0, #4]
 8003850:	9903      	ldr	r1, [sp, #12]
 8003852:	684a      	ldr	r2, [r1, #4]
 8003854:	4410      	add	r0, r2
 8003856:	6048      	str	r0, [r1, #4]
 8003858:	9802      	ldr	r0, [sp, #8]
 800385a:	6800      	ldr	r0, [r0, #0]
 800385c:	6800      	ldr	r0, [r0, #0]
 800385e:	9903      	ldr	r1, [sp, #12]
 8003860:	6008      	str	r0, [r1, #0]
 8003862:	e007      	b.n	8003874 <prvInsertBlockIntoFreeList+0xa6>
 8003864:	f640 3018 	movw	r0, #2840	; 0xb18
 8003868:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800386c:	6800      	ldr	r0, [r0, #0]
 800386e:	9903      	ldr	r1, [sp, #12]
 8003870:	6008      	str	r0, [r1, #0]
 8003872:	e7ff      	b.n	8003874 <prvInsertBlockIntoFreeList+0xa6>
 8003874:	e004      	b.n	8003880 <prvInsertBlockIntoFreeList+0xb2>
 8003876:	9802      	ldr	r0, [sp, #8]
 8003878:	6800      	ldr	r0, [r0, #0]
 800387a:	9903      	ldr	r1, [sp, #12]
 800387c:	6008      	str	r0, [r1, #0]
 800387e:	e7ff      	b.n	8003880 <prvInsertBlockIntoFreeList+0xb2>
 8003880:	9802      	ldr	r0, [sp, #8]
 8003882:	9903      	ldr	r1, [sp, #12]
 8003884:	4288      	cmp	r0, r1
 8003886:	d004      	beq.n	8003892 <prvInsertBlockIntoFreeList+0xc4>
 8003888:	e7ff      	b.n	800388a <prvInsertBlockIntoFreeList+0xbc>
 800388a:	9803      	ldr	r0, [sp, #12]
 800388c:	9902      	ldr	r1, [sp, #8]
 800388e:	6008      	str	r0, [r1, #0]
 8003890:	e000      	b.n	8003894 <prvInsertBlockIntoFreeList+0xc6>
 8003892:	e7ff      	b.n	8003894 <prvInsertBlockIntoFreeList+0xc6>
 8003894:	b004      	add	sp, #16
 8003896:	4770      	bx	lr

08003898 <vPortFree>:
 8003898:	b580      	push	{r7, lr}
 800389a:	466f      	mov	r7, sp
 800389c:	b088      	sub	sp, #32
 800389e:	4601      	mov	r1, r0
 80038a0:	9005      	str	r0, [sp, #20]
 80038a2:	9805      	ldr	r0, [sp, #20]
 80038a4:	9004      	str	r0, [sp, #16]
 80038a6:	9805      	ldr	r0, [sp, #20]
 80038a8:	2800      	cmp	r0, #0
 80038aa:	9102      	str	r1, [sp, #8]
 80038ac:	d05d      	beq.n	800396a <vPortFree+0xd2>
 80038ae:	e7ff      	b.n	80038b0 <vPortFree+0x18>
 80038b0:	9804      	ldr	r0, [sp, #16]
 80038b2:	3808      	subs	r0, #8
 80038b4:	9004      	str	r0, [sp, #16]
 80038b6:	9804      	ldr	r0, [sp, #16]
 80038b8:	9003      	str	r0, [sp, #12]
 80038ba:	9803      	ldr	r0, [sp, #12]
 80038bc:	6840      	ldr	r0, [r0, #4]
 80038be:	f640 311c 	movw	r1, #2844	; 0xb1c
 80038c2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80038c6:	6809      	ldr	r1, [r1, #0]
 80038c8:	4008      	ands	r0, r1
 80038ca:	2800      	cmp	r0, #0
 80038cc:	bf18      	it	ne
 80038ce:	2001      	movne	r0, #1
 80038d0:	2800      	cmp	r0, #0
 80038d2:	d10b      	bne.n	80038ec <vPortFree+0x54>
 80038d4:	e7ff      	b.n	80038d6 <vPortFree+0x3e>
 80038d6:	f04f 0050 	mov.w	r0, #80	; 0x50
 80038da:	f380 8811 	msr	BASEPRI, r0
 80038de:	f3bf 8f6f 	isb	sy
 80038e2:	f3bf 8f4f 	dsb	sy
 80038e6:	9006      	str	r0, [sp, #24]
 80038e8:	e7ff      	b.n	80038ea <vPortFree+0x52>
 80038ea:	e7fe      	b.n	80038ea <vPortFree+0x52>
 80038ec:	9803      	ldr	r0, [sp, #12]
 80038ee:	6800      	ldr	r0, [r0, #0]
 80038f0:	2800      	cmp	r0, #0
 80038f2:	d00b      	beq.n	800390c <vPortFree+0x74>
 80038f4:	e7ff      	b.n	80038f6 <vPortFree+0x5e>
 80038f6:	f04f 0050 	mov.w	r0, #80	; 0x50
 80038fa:	f380 8811 	msr	BASEPRI, r0
 80038fe:	f3bf 8f6f 	isb	sy
 8003902:	f3bf 8f4f 	dsb	sy
 8003906:	9007      	str	r0, [sp, #28]
 8003908:	e7ff      	b.n	800390a <vPortFree+0x72>
 800390a:	e7fe      	b.n	800390a <vPortFree+0x72>
 800390c:	9803      	ldr	r0, [sp, #12]
 800390e:	6840      	ldr	r0, [r0, #4]
 8003910:	f640 311c 	movw	r1, #2844	; 0xb1c
 8003914:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003918:	6809      	ldr	r1, [r1, #0]
 800391a:	4208      	tst	r0, r1
 800391c:	d023      	beq.n	8003966 <vPortFree+0xce>
 800391e:	e7ff      	b.n	8003920 <vPortFree+0x88>
 8003920:	9803      	ldr	r0, [sp, #12]
 8003922:	6800      	ldr	r0, [r0, #0]
 8003924:	2800      	cmp	r0, #0
 8003926:	d11c      	bne.n	8003962 <vPortFree+0xca>
 8003928:	e7ff      	b.n	800392a <vPortFree+0x92>
 800392a:	f640 301c 	movw	r0, #2844	; 0xb1c
 800392e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003932:	6800      	ldr	r0, [r0, #0]
 8003934:	9903      	ldr	r1, [sp, #12]
 8003936:	684a      	ldr	r2, [r1, #4]
 8003938:	ea22 0000 	bic.w	r0, r2, r0
 800393c:	6048      	str	r0, [r1, #4]
 800393e:	f7ff f899 	bl	8002a74 <vTaskSuspendAll>
 8003942:	9803      	ldr	r0, [sp, #12]
 8003944:	6840      	ldr	r0, [r0, #4]
 8003946:	f640 3120 	movw	r1, #2848	; 0xb20
 800394a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800394e:	680a      	ldr	r2, [r1, #0]
 8003950:	4410      	add	r0, r2
 8003952:	6008      	str	r0, [r1, #0]
 8003954:	9803      	ldr	r0, [sp, #12]
 8003956:	f7ff ff3a 	bl	80037ce <prvInsertBlockIntoFreeList>
 800395a:	f7ff f893 	bl	8002a84 <xTaskResumeAll>
 800395e:	9001      	str	r0, [sp, #4]
 8003960:	e000      	b.n	8003964 <vPortFree+0xcc>
 8003962:	e7ff      	b.n	8003964 <vPortFree+0xcc>
 8003964:	e000      	b.n	8003968 <vPortFree+0xd0>
 8003966:	e7ff      	b.n	8003968 <vPortFree+0xd0>
 8003968:	e7ff      	b.n	800396a <vPortFree+0xd2>
 800396a:	b008      	add	sp, #32
 800396c:	bd80      	pop	{r7, pc}

0800396e <BSP_COM_Init>:
 800396e:	b580      	push	{r7, lr}
 8003970:	466f      	mov	r7, sp
 8003972:	b092      	sub	sp, #72	; 0x48
 8003974:	460a      	mov	r2, r1
 8003976:	4603      	mov	r3, r0
 8003978:	9011      	str	r0, [sp, #68]	; 0x44
 800397a:	9110      	str	r1, [sp, #64]	; 0x40
 800397c:	9207      	str	r2, [sp, #28]
 800397e:	9306      	str	r3, [sp, #24]
 8003980:	e7ff      	b.n	8003982 <BSP_COM_Init+0x14>
 8003982:	9811      	ldr	r0, [sp, #68]	; 0x44
 8003984:	2800      	cmp	r0, #0
 8003986:	d111      	bne.n	80039ac <BSP_COM_Init+0x3e>
 8003988:	e7ff      	b.n	800398a <BSP_COM_Init+0x1c>
 800398a:	e7ff      	b.n	800398c <BSP_COM_Init+0x1e>
 800398c:	f241 004c 	movw	r0, #4172	; 0x104c
 8003990:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8003994:	6801      	ldr	r1, [r0, #0]
 8003996:	f041 0102 	orr.w	r1, r1, #2
 800399a:	6001      	str	r1, [r0, #0]
 800399c:	6800      	ldr	r0, [r0, #0]
 800399e:	f000 0002 	and.w	r0, r0, #2
 80039a2:	900a      	str	r0, [sp, #40]	; 0x28
 80039a4:	980a      	ldr	r0, [sp, #40]	; 0x28
 80039a6:	9005      	str	r0, [sp, #20]
 80039a8:	e7ff      	b.n	80039aa <BSP_COM_Init+0x3c>
 80039aa:	e7ff      	b.n	80039ac <BSP_COM_Init+0x3e>
 80039ac:	e7ff      	b.n	80039ae <BSP_COM_Init+0x40>
 80039ae:	e7ff      	b.n	80039b0 <BSP_COM_Init+0x42>
 80039b0:	9811      	ldr	r0, [sp, #68]	; 0x44
 80039b2:	2800      	cmp	r0, #0
 80039b4:	d111      	bne.n	80039da <BSP_COM_Init+0x6c>
 80039b6:	e7ff      	b.n	80039b8 <BSP_COM_Init+0x4a>
 80039b8:	e7ff      	b.n	80039ba <BSP_COM_Init+0x4c>
 80039ba:	f241 004c 	movw	r0, #4172	; 0x104c
 80039be:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80039c2:	6801      	ldr	r1, [r0, #0]
 80039c4:	f041 0102 	orr.w	r1, r1, #2
 80039c8:	6001      	str	r1, [r0, #0]
 80039ca:	6800      	ldr	r0, [r0, #0]
 80039cc:	f000 0002 	and.w	r0, r0, #2
 80039d0:	9009      	str	r0, [sp, #36]	; 0x24
 80039d2:	9809      	ldr	r0, [sp, #36]	; 0x24
 80039d4:	9004      	str	r0, [sp, #16]
 80039d6:	e7ff      	b.n	80039d8 <BSP_COM_Init+0x6a>
 80039d8:	e7ff      	b.n	80039da <BSP_COM_Init+0x6c>
 80039da:	e7ff      	b.n	80039dc <BSP_COM_Init+0x6e>
 80039dc:	e7ff      	b.n	80039de <BSP_COM_Init+0x70>
 80039de:	9811      	ldr	r0, [sp, #68]	; 0x44
 80039e0:	2800      	cmp	r0, #0
 80039e2:	d111      	bne.n	8003a08 <BSP_COM_Init+0x9a>
 80039e4:	e7ff      	b.n	80039e6 <BSP_COM_Init+0x78>
 80039e6:	e7ff      	b.n	80039e8 <BSP_COM_Init+0x7a>
 80039e8:	f241 0060 	movw	r0, #4192	; 0x1060
 80039ec:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80039f0:	6801      	ldr	r1, [r0, #0]
 80039f2:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 80039f6:	6001      	str	r1, [r0, #0]
 80039f8:	6800      	ldr	r0, [r0, #0]
 80039fa:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 80039fe:	9008      	str	r0, [sp, #32]
 8003a00:	9808      	ldr	r0, [sp, #32]
 8003a02:	9003      	str	r0, [sp, #12]
 8003a04:	e7ff      	b.n	8003a06 <BSP_COM_Init+0x98>
 8003a06:	e7ff      	b.n	8003a08 <BSP_COM_Init+0x9a>
 8003a08:	e7ff      	b.n	8003a0a <BSP_COM_Init+0x9c>
 8003a0a:	9811      	ldr	r0, [sp, #68]	; 0x44
 8003a0c:	f648 2188 	movw	r1, #35464	; 0x8a88
 8003a10:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003a14:	f831 0010 	ldrh.w	r0, [r1, r0, lsl #1]
 8003a18:	900b      	str	r0, [sp, #44]	; 0x2c
 8003a1a:	2002      	movs	r0, #2
 8003a1c:	900c      	str	r0, [sp, #48]	; 0x30
 8003a1e:	900e      	str	r0, [sp, #56]	; 0x38
 8003a20:	2100      	movs	r1, #0
 8003a22:	910d      	str	r1, [sp, #52]	; 0x34
 8003a24:	9911      	ldr	r1, [sp, #68]	; 0x44
 8003a26:	f648 228c 	movw	r2, #35468	; 0x8a8c
 8003a2a:	f6c0 0200 	movt	r2, #2048	; 0x800
 8003a2e:	f832 1011 	ldrh.w	r1, [r2, r1, lsl #1]
 8003a32:	910f      	str	r1, [sp, #60]	; 0x3c
 8003a34:	9911      	ldr	r1, [sp, #68]	; 0x44
 8003a36:	f240 0210 	movw	r2, #16
 8003a3a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003a3e:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8003a42:	aa0b      	add	r2, sp, #44	; 0x2c
 8003a44:	9002      	str	r0, [sp, #8]
 8003a46:	4608      	mov	r0, r1
 8003a48:	4611      	mov	r1, r2
 8003a4a:	9201      	str	r2, [sp, #4]
 8003a4c:	f7fd fbc0 	bl	80011d0 <HAL_GPIO_Init>
 8003a50:	9811      	ldr	r0, [sp, #68]	; 0x44
 8003a52:	f648 218a 	movw	r1, #35466	; 0x8a8a
 8003a56:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003a5a:	f831 0010 	ldrh.w	r0, [r1, r0, lsl #1]
 8003a5e:	900b      	str	r0, [sp, #44]	; 0x2c
 8003a60:	9802      	ldr	r0, [sp, #8]
 8003a62:	900c      	str	r0, [sp, #48]	; 0x30
 8003a64:	9911      	ldr	r1, [sp, #68]	; 0x44
 8003a66:	f648 228e 	movw	r2, #35470	; 0x8a8e
 8003a6a:	f6c0 0200 	movt	r2, #2048	; 0x800
 8003a6e:	f832 1011 	ldrh.w	r1, [r2, r1, lsl #1]
 8003a72:	910f      	str	r1, [sp, #60]	; 0x3c
 8003a74:	9911      	ldr	r1, [sp, #68]	; 0x44
 8003a76:	f240 0214 	movw	r2, #20
 8003a7a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003a7e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8003a82:	9901      	ldr	r1, [sp, #4]
 8003a84:	f7fd fba4 	bl	80011d0 <HAL_GPIO_Init>
 8003a88:	9811      	ldr	r0, [sp, #68]	; 0x44
 8003a8a:	f240 010c 	movw	r1, #12
 8003a8e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003a92:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8003a96:	9910      	ldr	r1, [sp, #64]	; 0x40
 8003a98:	6008      	str	r0, [r1, #0]
 8003a9a:	9810      	ldr	r0, [sp, #64]	; 0x40
 8003a9c:	f7fe f835 	bl	8001b0a <HAL_UART_Init>
 8003aa0:	9000      	str	r0, [sp, #0]
 8003aa2:	b012      	add	sp, #72	; 0x48
 8003aa4:	bd80      	pop	{r7, pc}

08003aa6 <__io_putchar>:
 8003aa6:	b580      	push	{r7, lr}
 8003aa8:	466f      	mov	r7, sp
 8003aaa:	b084      	sub	sp, #16
 8003aac:	4601      	mov	r1, r0
 8003aae:	9003      	str	r0, [sp, #12]
 8003ab0:	f244 7030 	movw	r0, #18224	; 0x4730
 8003ab4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003ab8:	aa03      	add	r2, sp, #12
 8003aba:	2301      	movs	r3, #1
 8003abc:	f64f 7cff 	movw	ip, #65535	; 0xffff
 8003ac0:	9102      	str	r1, [sp, #8]
 8003ac2:	4611      	mov	r1, r2
 8003ac4:	461a      	mov	r2, r3
 8003ac6:	4663      	mov	r3, ip
 8003ac8:	f7fe fc97 	bl	80023fa <HAL_UART_Transmit>
 8003acc:	9903      	ldr	r1, [sp, #12]
 8003ace:	9001      	str	r0, [sp, #4]
 8003ad0:	4608      	mov	r0, r1
 8003ad2:	b004      	add	sp, #16
 8003ad4:	bd80      	pop	{r7, pc}

08003ad6 <main>:
 8003ad6:	b580      	push	{r7, lr}
 8003ad8:	466f      	mov	r7, sp
 8003ada:	b084      	sub	sp, #16
 8003adc:	2000      	movs	r0, #0
 8003ade:	9003      	str	r0, [sp, #12]
 8003ae0:	9002      	str	r0, [sp, #8]
 8003ae2:	f000 f815 	bl	8003b10 <Console_UART_Init>
 8003ae6:	f648 20dd 	movw	r0, #35549	; 0x8add
 8003aea:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003aee:	f000 f9c3 	bl	8003e78 <printf>
 8003af2:	9001      	str	r0, [sp, #4]
 8003af4:	f7ff f8fa 	bl	8002cec <vTaskStartScheduler>
 8003af8:	f648 20e4 	movw	r0, #35556	; 0x8ae4
 8003afc:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003b00:	f000 f9ba 	bl	8003e78 <printf>
 8003b04:	f8dd e008 	ldr.w	lr, [sp, #8]
 8003b08:	9000      	str	r0, [sp, #0]
 8003b0a:	4670      	mov	r0, lr
 8003b0c:	b004      	add	sp, #16
 8003b0e:	bd80      	pop	{r7, pc}

08003b10 <Console_UART_Init>:
 8003b10:	b580      	push	{r7, lr}
 8003b12:	466f      	mov	r7, sp
 8003b14:	b082      	sub	sp, #8
 8003b16:	f244 7030 	movw	r0, #18224	; 0x4730
 8003b1a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003b1e:	f643 0100 	movw	r1, #14336	; 0x3800
 8003b22:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8003b26:	6001      	str	r1, [r0, #0]
 8003b28:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 8003b2c:	6041      	str	r1, [r0, #4]
 8003b2e:	2100      	movs	r1, #0
 8003b30:	6081      	str	r1, [r0, #8]
 8003b32:	60c1      	str	r1, [r0, #12]
 8003b34:	6101      	str	r1, [r0, #16]
 8003b36:	220c      	movs	r2, #12
 8003b38:	6142      	str	r2, [r0, #20]
 8003b3a:	6181      	str	r1, [r0, #24]
 8003b3c:	61c1      	str	r1, [r0, #28]
 8003b3e:	6201      	str	r1, [r0, #32]
 8003b40:	6241      	str	r1, [r0, #36]	; 0x24
 8003b42:	9001      	str	r0, [sp, #4]
 8003b44:	4608      	mov	r0, r1
 8003b46:	9901      	ldr	r1, [sp, #4]
 8003b48:	f7ff ff11 	bl	800396e <BSP_COM_Init>
 8003b4c:	b002      	add	sp, #8
 8003b4e:	bd80      	pop	{r7, pc}

08003b50 <SysTick_Handler>:
 8003b50:	b580      	push	{r7, lr}
 8003b52:	466f      	mov	r7, sp
 8003b54:	f7fd fb28 	bl	80011a8 <HAL_IncTick>
 8003b58:	f7fd fb34 	bl	80011c4 <HAL_SYSTICK_IRQHandler>
 8003b5c:	f7fe fd4c 	bl	80025f8 <osSystickHandler>
 8003b60:	bd80      	pop	{r7, pc}

08003b62 <_read>:
 8003b62:	b580      	push	{r7, lr}
 8003b64:	466f      	mov	r7, sp
 8003b66:	b088      	sub	sp, #32
 8003b68:	4613      	mov	r3, r2
 8003b6a:	468c      	mov	ip, r1
 8003b6c:	4686      	mov	lr, r0
 8003b6e:	9007      	str	r0, [sp, #28]
 8003b70:	9106      	str	r1, [sp, #24]
 8003b72:	9205      	str	r2, [sp, #20]
 8003b74:	2000      	movs	r0, #0
 8003b76:	9004      	str	r0, [sp, #16]
 8003b78:	9303      	str	r3, [sp, #12]
 8003b7a:	f8cd c008 	str.w	ip, [sp, #8]
 8003b7e:	f8cd e004 	str.w	lr, [sp, #4]
 8003b82:	e7ff      	b.n	8003b84 <_read+0x22>
 8003b84:	9804      	ldr	r0, [sp, #16]
 8003b86:	9905      	ldr	r1, [sp, #20]
 8003b88:	4288      	cmp	r0, r1
 8003b8a:	da0e      	bge.n	8003baa <_read+0x48>
 8003b8c:	e7ff      	b.n	8003b8e <_read+0x2c>
 8003b8e:	f3af 8000 	nop.w
 8003b92:	f8dd e018 	ldr.w	lr, [sp, #24]
 8003b96:	f10e 0101 	add.w	r1, lr, #1
 8003b9a:	9106      	str	r1, [sp, #24]
 8003b9c:	f88e 0000 	strb.w	r0, [lr]
 8003ba0:	e7ff      	b.n	8003ba2 <_read+0x40>
 8003ba2:	9804      	ldr	r0, [sp, #16]
 8003ba4:	3001      	adds	r0, #1
 8003ba6:	9004      	str	r0, [sp, #16]
 8003ba8:	e7ec      	b.n	8003b84 <_read+0x22>
 8003baa:	9805      	ldr	r0, [sp, #20]
 8003bac:	b008      	add	sp, #32
 8003bae:	bd80      	pop	{r7, pc}

08003bb0 <_write>:
 8003bb0:	b580      	push	{r7, lr}
 8003bb2:	466f      	mov	r7, sp
 8003bb4:	b088      	sub	sp, #32
 8003bb6:	4613      	mov	r3, r2
 8003bb8:	468c      	mov	ip, r1
 8003bba:	4686      	mov	lr, r0
 8003bbc:	9007      	str	r0, [sp, #28]
 8003bbe:	9106      	str	r1, [sp, #24]
 8003bc0:	9205      	str	r2, [sp, #20]
 8003bc2:	2000      	movs	r0, #0
 8003bc4:	9004      	str	r0, [sp, #16]
 8003bc6:	9303      	str	r3, [sp, #12]
 8003bc8:	f8cd c008 	str.w	ip, [sp, #8]
 8003bcc:	f8cd e004 	str.w	lr, [sp, #4]
 8003bd0:	e7ff      	b.n	8003bd2 <_write+0x22>
 8003bd2:	9804      	ldr	r0, [sp, #16]
 8003bd4:	9905      	ldr	r1, [sp, #20]
 8003bd6:	4288      	cmp	r0, r1
 8003bd8:	da0c      	bge.n	8003bf4 <_write+0x44>
 8003bda:	e7ff      	b.n	8003bdc <_write+0x2c>
 8003bdc:	9806      	ldr	r0, [sp, #24]
 8003bde:	1c41      	adds	r1, r0, #1
 8003be0:	9106      	str	r1, [sp, #24]
 8003be2:	7800      	ldrb	r0, [r0, #0]
 8003be4:	f7ff ff5f 	bl	8003aa6 <__io_putchar>
 8003be8:	9000      	str	r0, [sp, #0]
 8003bea:	e7ff      	b.n	8003bec <_write+0x3c>
 8003bec:	9804      	ldr	r0, [sp, #16]
 8003bee:	3001      	adds	r0, #1
 8003bf0:	9004      	str	r0, [sp, #16]
 8003bf2:	e7ee      	b.n	8003bd2 <_write+0x22>
 8003bf4:	9805      	ldr	r0, [sp, #20]
 8003bf6:	b008      	add	sp, #32
 8003bf8:	bd80      	pop	{r7, pc}

08003bfa <_sbrk>:
 8003bfa:	b580      	push	{r7, lr}
 8003bfc:	466f      	mov	r7, sp
 8003bfe:	b084      	sub	sp, #16
 8003c00:	4601      	mov	r1, r0
 8003c02:	9002      	str	r0, [sp, #8]
 8003c04:	f244 70b4 	movw	r0, #18356	; 0x47b4
 8003c08:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003c0c:	6800      	ldr	r0, [r0, #0]
 8003c0e:	2800      	cmp	r0, #0
 8003c10:	9100      	str	r1, [sp, #0]
 8003c12:	d10a      	bne.n	8003c2a <_sbrk+0x30>
 8003c14:	e7ff      	b.n	8003c16 <_sbrk+0x1c>
 8003c16:	f244 70b4 	movw	r0, #18356	; 0x47b4
 8003c1a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003c1e:	f644 0160 	movw	r1, #18528	; 0x4860
 8003c22:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003c26:	6001      	str	r1, [r0, #0]
 8003c28:	e7ff      	b.n	8003c2a <_sbrk+0x30>
 8003c2a:	f244 70b4 	movw	r0, #18356	; 0x47b4
 8003c2e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003c32:	6801      	ldr	r1, [r0, #0]
 8003c34:	9101      	str	r1, [sp, #4]
 8003c36:	6800      	ldr	r0, [r0, #0]
 8003c38:	9902      	ldr	r1, [sp, #8]
 8003c3a:	4408      	add	r0, r1
 8003c3c:	4669      	mov	r1, sp
 8003c3e:	4288      	cmp	r0, r1
 8003c40:	d90a      	bls.n	8003c58 <_sbrk+0x5e>
 8003c42:	e7ff      	b.n	8003c44 <_sbrk+0x4a>
 8003c44:	f000 f8a4 	bl	8003d90 <__errno>
 8003c48:	f04f 0e0c 	mov.w	lr, #12
 8003c4c:	f8c0 e000 	str.w	lr, [r0]
 8003c50:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003c54:	9003      	str	r0, [sp, #12]
 8003c56:	e00a      	b.n	8003c6e <_sbrk+0x74>
 8003c58:	9802      	ldr	r0, [sp, #8]
 8003c5a:	f244 71b4 	movw	r1, #18356	; 0x47b4
 8003c5e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003c62:	680a      	ldr	r2, [r1, #0]
 8003c64:	4410      	add	r0, r2
 8003c66:	6008      	str	r0, [r1, #0]
 8003c68:	9801      	ldr	r0, [sp, #4]
 8003c6a:	9003      	str	r0, [sp, #12]
 8003c6c:	e7ff      	b.n	8003c6e <_sbrk+0x74>
 8003c6e:	9803      	ldr	r0, [sp, #12]
 8003c70:	b004      	add	sp, #16
 8003c72:	bd80      	pop	{r7, pc}

08003c74 <_close>:
 8003c74:	b082      	sub	sp, #8
 8003c76:	4601      	mov	r1, r0
 8003c78:	9001      	str	r0, [sp, #4]
 8003c7a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003c7e:	9100      	str	r1, [sp, #0]
 8003c80:	b002      	add	sp, #8
 8003c82:	4770      	bx	lr

08003c84 <_fstat>:
 8003c84:	b084      	sub	sp, #16
 8003c86:	460a      	mov	r2, r1
 8003c88:	4603      	mov	r3, r0
 8003c8a:	9003      	str	r0, [sp, #12]
 8003c8c:	9102      	str	r1, [sp, #8]
 8003c8e:	9802      	ldr	r0, [sp, #8]
 8003c90:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8003c94:	6041      	str	r1, [r0, #4]
 8003c96:	2000      	movs	r0, #0
 8003c98:	9201      	str	r2, [sp, #4]
 8003c9a:	9300      	str	r3, [sp, #0]
 8003c9c:	b004      	add	sp, #16
 8003c9e:	4770      	bx	lr

08003ca0 <_isatty>:
 8003ca0:	b082      	sub	sp, #8
 8003ca2:	4601      	mov	r1, r0
 8003ca4:	9001      	str	r0, [sp, #4]
 8003ca6:	2001      	movs	r0, #1
 8003ca8:	9100      	str	r1, [sp, #0]
 8003caa:	b002      	add	sp, #8
 8003cac:	4770      	bx	lr

08003cae <_lseek>:
 8003cae:	b580      	push	{r7, lr}
 8003cb0:	466f      	mov	r7, sp
 8003cb2:	b086      	sub	sp, #24
 8003cb4:	4613      	mov	r3, r2
 8003cb6:	468c      	mov	ip, r1
 8003cb8:	4686      	mov	lr, r0
 8003cba:	9005      	str	r0, [sp, #20]
 8003cbc:	9104      	str	r1, [sp, #16]
 8003cbe:	9203      	str	r2, [sp, #12]
 8003cc0:	2000      	movs	r0, #0
 8003cc2:	9302      	str	r3, [sp, #8]
 8003cc4:	f8cd c004 	str.w	ip, [sp, #4]
 8003cc8:	f8cd e000 	str.w	lr, [sp]
 8003ccc:	b006      	add	sp, #24
 8003cce:	bd80      	pop	{r7, pc}

08003cd0 <SystemInit>:
 8003cd0:	f64e 5088 	movw	r0, #60808	; 0xed88
 8003cd4:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8003cd8:	6801      	ldr	r1, [r0, #0]
 8003cda:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8003cde:	6001      	str	r1, [r0, #0]
 8003ce0:	f241 0000 	movw	r0, #4096	; 0x1000
 8003ce4:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8003ce8:	6801      	ldr	r1, [r0, #0]
 8003cea:	f041 0101 	orr.w	r1, r1, #1
 8003cee:	6001      	str	r1, [r0, #0]
 8003cf0:	f241 0108 	movw	r1, #4104	; 0x1008
 8003cf4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8003cf8:	2200      	movs	r2, #0
 8003cfa:	600a      	str	r2, [r1, #0]
 8003cfc:	6801      	ldr	r1, [r0, #0]
 8003cfe:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8003d02:	f6ce 23f6 	movt	r3, #60150	; 0xeaf6
 8003d06:	4019      	ands	r1, r3
 8003d08:	6001      	str	r1, [r0, #0]
 8003d0a:	f241 010c 	movw	r1, #4108	; 0x100c
 8003d0e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8003d12:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8003d16:	600b      	str	r3, [r1, #0]
 8003d18:	6801      	ldr	r1, [r0, #0]
 8003d1a:	f421 2180 	bic.w	r1, r1, #262144	; 0x40000
 8003d1e:	6001      	str	r1, [r0, #0]
 8003d20:	f241 0018 	movw	r0, #4120	; 0x1018
 8003d24:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8003d28:	6002      	str	r2, [r0, #0]
 8003d2a:	f64e 5008 	movw	r0, #60680	; 0xed08
 8003d2e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8003d32:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8003d36:	6001      	str	r1, [r0, #0]
 8003d38:	4770      	bx	lr
	...

08003d3c <Reset_Handler>:
 8003d3c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8003d74 <LoopForever+0x2>
 8003d40:	2100      	movs	r1, #0
 8003d42:	e003      	b.n	8003d4c <LoopCopyDataInit>

08003d44 <CopyDataInit>:
 8003d44:	4b0c      	ldr	r3, [pc, #48]	; (8003d78 <LoopForever+0x6>)
 8003d46:	585b      	ldr	r3, [r3, r1]
 8003d48:	5043      	str	r3, [r0, r1]
 8003d4a:	3104      	adds	r1, #4

08003d4c <LoopCopyDataInit>:
 8003d4c:	480b      	ldr	r0, [pc, #44]	; (8003d7c <LoopForever+0xa>)
 8003d4e:	4b0c      	ldr	r3, [pc, #48]	; (8003d80 <LoopForever+0xe>)
 8003d50:	1842      	adds	r2, r0, r1
 8003d52:	429a      	cmp	r2, r3
 8003d54:	d3f6      	bcc.n	8003d44 <CopyDataInit>
 8003d56:	4a0b      	ldr	r2, [pc, #44]	; (8003d84 <LoopForever+0x12>)
 8003d58:	e002      	b.n	8003d60 <LoopFillZerobss>

08003d5a <FillZerobss>:
 8003d5a:	2300      	movs	r3, #0
 8003d5c:	f842 3b04 	str.w	r3, [r2], #4

08003d60 <LoopFillZerobss>:
 8003d60:	4b09      	ldr	r3, [pc, #36]	; (8003d88 <LoopForever+0x16>)
 8003d62:	429a      	cmp	r2, r3
 8003d64:	d3f9      	bcc.n	8003d5a <FillZerobss>
 8003d66:	f7ff ffb3 	bl	8003cd0 <SystemInit>
 8003d6a:	f000 f817 	bl	8003d9c <__libc_init_array>
 8003d6e:	f7ff feb2 	bl	8003ad6 <main>

08003d72 <LoopForever>:
 8003d72:	e7fe      	b.n	8003d72 <LoopForever>
 8003d74:	20018000 	.word	0x20018000
 8003d78:	08008d90 	.word	0x08008d90
 8003d7c:	20000000 	.word	0x20000000
 8003d80:	200009c8 	.word	0x200009c8
 8003d84:	200009c8 	.word	0x200009c8
 8003d88:	2000485c 	.word	0x2000485c

08003d8c <ADC1_2_IRQHandler>:
 8003d8c:	e7fe      	b.n	8003d8c <ADC1_2_IRQHandler>
	...

08003d90 <__errno>:
 8003d90:	4b01      	ldr	r3, [pc, #4]	; (8003d98 <__errno+0x8>)
 8003d92:	6818      	ldr	r0, [r3, #0]
 8003d94:	4770      	bx	lr
 8003d96:	bf00      	nop
 8003d98:	2000001c 	.word	0x2000001c

08003d9c <__libc_init_array>:
 8003d9c:	b570      	push	{r4, r5, r6, lr}
 8003d9e:	4e0d      	ldr	r6, [pc, #52]	; (8003dd4 <__libc_init_array+0x38>)
 8003da0:	4d0d      	ldr	r5, [pc, #52]	; (8003dd8 <__libc_init_array+0x3c>)
 8003da2:	1b76      	subs	r6, r6, r5
 8003da4:	10b6      	asrs	r6, r6, #2
 8003da6:	d006      	beq.n	8003db6 <__libc_init_array+0x1a>
 8003da8:	2400      	movs	r4, #0
 8003daa:	3401      	adds	r4, #1
 8003dac:	f855 3b04 	ldr.w	r3, [r5], #4
 8003db0:	4798      	blx	r3
 8003db2:	42a6      	cmp	r6, r4
 8003db4:	d1f9      	bne.n	8003daa <__libc_init_array+0xe>
 8003db6:	4e09      	ldr	r6, [pc, #36]	; (8003ddc <__libc_init_array+0x40>)
 8003db8:	4d09      	ldr	r5, [pc, #36]	; (8003de0 <__libc_init_array+0x44>)
 8003dba:	1b76      	subs	r6, r6, r5
 8003dbc:	f004 fe52 	bl	8008a64 <_init>
 8003dc0:	10b6      	asrs	r6, r6, #2
 8003dc2:	d006      	beq.n	8003dd2 <__libc_init_array+0x36>
 8003dc4:	2400      	movs	r4, #0
 8003dc6:	3401      	adds	r4, #1
 8003dc8:	f855 3b04 	ldr.w	r3, [r5], #4
 8003dcc:	4798      	blx	r3
 8003dce:	42a6      	cmp	r6, r4
 8003dd0:	d1f9      	bne.n	8003dc6 <__libc_init_array+0x2a>
 8003dd2:	bd70      	pop	{r4, r5, r6, pc}
 8003dd4:	08008d80 	.word	0x08008d80
 8003dd8:	08008d80 	.word	0x08008d80
 8003ddc:	08008d88 	.word	0x08008d88
 8003de0:	08008d80 	.word	0x08008d80

08003de4 <memset>:
 8003de4:	b4f0      	push	{r4, r5, r6, r7}
 8003de6:	0786      	lsls	r6, r0, #30
 8003de8:	d043      	beq.n	8003e72 <memset+0x8e>
 8003dea:	1e54      	subs	r4, r2, #1
 8003dec:	2a00      	cmp	r2, #0
 8003dee:	d03e      	beq.n	8003e6e <memset+0x8a>
 8003df0:	b2ca      	uxtb	r2, r1
 8003df2:	4603      	mov	r3, r0
 8003df4:	e002      	b.n	8003dfc <memset+0x18>
 8003df6:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8003dfa:	d338      	bcc.n	8003e6e <memset+0x8a>
 8003dfc:	f803 2b01 	strb.w	r2, [r3], #1
 8003e00:	079d      	lsls	r5, r3, #30
 8003e02:	d1f8      	bne.n	8003df6 <memset+0x12>
 8003e04:	2c03      	cmp	r4, #3
 8003e06:	d92b      	bls.n	8003e60 <memset+0x7c>
 8003e08:	b2cd      	uxtb	r5, r1
 8003e0a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8003e0e:	2c0f      	cmp	r4, #15
 8003e10:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8003e14:	d916      	bls.n	8003e44 <memset+0x60>
 8003e16:	f1a4 0710 	sub.w	r7, r4, #16
 8003e1a:	093f      	lsrs	r7, r7, #4
 8003e1c:	f103 0620 	add.w	r6, r3, #32
 8003e20:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8003e24:	f103 0210 	add.w	r2, r3, #16
 8003e28:	e942 5504 	strd	r5, r5, [r2, #-16]
 8003e2c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8003e30:	3210      	adds	r2, #16
 8003e32:	42b2      	cmp	r2, r6
 8003e34:	d1f8      	bne.n	8003e28 <memset+0x44>
 8003e36:	f004 040f 	and.w	r4, r4, #15
 8003e3a:	3701      	adds	r7, #1
 8003e3c:	2c03      	cmp	r4, #3
 8003e3e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8003e42:	d90d      	bls.n	8003e60 <memset+0x7c>
 8003e44:	461e      	mov	r6, r3
 8003e46:	4622      	mov	r2, r4
 8003e48:	3a04      	subs	r2, #4
 8003e4a:	2a03      	cmp	r2, #3
 8003e4c:	f846 5b04 	str.w	r5, [r6], #4
 8003e50:	d8fa      	bhi.n	8003e48 <memset+0x64>
 8003e52:	1f22      	subs	r2, r4, #4
 8003e54:	f022 0203 	bic.w	r2, r2, #3
 8003e58:	3204      	adds	r2, #4
 8003e5a:	4413      	add	r3, r2
 8003e5c:	f004 0403 	and.w	r4, r4, #3
 8003e60:	b12c      	cbz	r4, 8003e6e <memset+0x8a>
 8003e62:	b2c9      	uxtb	r1, r1
 8003e64:	441c      	add	r4, r3
 8003e66:	f803 1b01 	strb.w	r1, [r3], #1
 8003e6a:	429c      	cmp	r4, r3
 8003e6c:	d1fb      	bne.n	8003e66 <memset+0x82>
 8003e6e:	bcf0      	pop	{r4, r5, r6, r7}
 8003e70:	4770      	bx	lr
 8003e72:	4614      	mov	r4, r2
 8003e74:	4603      	mov	r3, r0
 8003e76:	e7c5      	b.n	8003e04 <memset+0x20>

08003e78 <printf>:
 8003e78:	b40f      	push	{r0, r1, r2, r3}
 8003e7a:	b500      	push	{lr}
 8003e7c:	4907      	ldr	r1, [pc, #28]	; (8003e9c <printf+0x24>)
 8003e7e:	b083      	sub	sp, #12
 8003e80:	ab04      	add	r3, sp, #16
 8003e82:	6808      	ldr	r0, [r1, #0]
 8003e84:	f853 2b04 	ldr.w	r2, [r3], #4
 8003e88:	6881      	ldr	r1, [r0, #8]
 8003e8a:	9301      	str	r3, [sp, #4]
 8003e8c:	f000 f808 	bl	8003ea0 <_vfprintf_r>
 8003e90:	b003      	add	sp, #12
 8003e92:	f85d eb04 	ldr.w	lr, [sp], #4
 8003e96:	b004      	add	sp, #16
 8003e98:	4770      	bx	lr
 8003e9a:	bf00      	nop
 8003e9c:	2000001c 	.word	0x2000001c

08003ea0 <_vfprintf_r>:
 8003ea0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003ea4:	b0d7      	sub	sp, #348	; 0x15c
 8003ea6:	461c      	mov	r4, r3
 8003ea8:	4689      	mov	r9, r1
 8003eaa:	4617      	mov	r7, r2
 8003eac:	4605      	mov	r5, r0
 8003eae:	9003      	str	r0, [sp, #12]
 8003eb0:	f003 f854 	bl	8006f5c <_localeconv_r>
 8003eb4:	6803      	ldr	r3, [r0, #0]
 8003eb6:	9316      	str	r3, [sp, #88]	; 0x58
 8003eb8:	4618      	mov	r0, r3
 8003eba:	f7fc fc21 	bl	8000700 <strlen>
 8003ebe:	9408      	str	r4, [sp, #32]
 8003ec0:	9015      	str	r0, [sp, #84]	; 0x54
 8003ec2:	b11d      	cbz	r5, 8003ecc <_vfprintf_r+0x2c>
 8003ec4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8003ec6:	2b00      	cmp	r3, #0
 8003ec8:	f000 8107 	beq.w	80040da <_vfprintf_r+0x23a>
 8003ecc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8003ed0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8003ed4:	07c8      	lsls	r0, r1, #31
 8003ed6:	b293      	uxth	r3, r2
 8003ed8:	d402      	bmi.n	8003ee0 <_vfprintf_r+0x40>
 8003eda:	0599      	lsls	r1, r3, #22
 8003edc:	f140 811f 	bpl.w	800411e <_vfprintf_r+0x27e>
 8003ee0:	049e      	lsls	r6, r3, #18
 8003ee2:	d40a      	bmi.n	8003efa <_vfprintf_r+0x5a>
 8003ee4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8003ee8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8003eec:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8003ef0:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003ef4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8003ef8:	b29b      	uxth	r3, r3
 8003efa:	071d      	lsls	r5, r3, #28
 8003efc:	f140 80b2 	bpl.w	8004064 <_vfprintf_r+0x1c4>
 8003f00:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8003f04:	2a00      	cmp	r2, #0
 8003f06:	f000 80ad 	beq.w	8004064 <_vfprintf_r+0x1c4>
 8003f0a:	f003 021a 	and.w	r2, r3, #26
 8003f0e:	2a0a      	cmp	r2, #10
 8003f10:	f000 80c9 	beq.w	80040a6 <_vfprintf_r+0x206>
 8003f14:	2300      	movs	r3, #0
 8003f16:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8004130 <_vfprintf_r+0x290>
 8003f1a:	9310      	str	r3, [sp, #64]	; 0x40
 8003f1c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8003f20:	9317      	str	r3, [sp, #92]	; 0x5c
 8003f22:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8003f26:	931b      	str	r3, [sp, #108]	; 0x6c
 8003f28:	9318      	str	r3, [sp, #96]	; 0x60
 8003f2a:	9305      	str	r3, [sp, #20]
 8003f2c:	ab2d      	add	r3, sp, #180	; 0xb4
 8003f2e:	932a      	str	r3, [sp, #168]	; 0xa8
 8003f30:	469b      	mov	fp, r3
 8003f32:	783b      	ldrb	r3, [r7, #0]
 8003f34:	f8cd 901c 	str.w	r9, [sp, #28]
 8003f38:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003f3c:	2b00      	cmp	r3, #0
 8003f3e:	f000 8259 	beq.w	80043f4 <_vfprintf_r+0x554>
 8003f42:	2b25      	cmp	r3, #37	; 0x25
 8003f44:	463c      	mov	r4, r7
 8003f46:	d102      	bne.n	8003f4e <_vfprintf_r+0xae>
 8003f48:	e01d      	b.n	8003f86 <_vfprintf_r+0xe6>
 8003f4a:	2b25      	cmp	r3, #37	; 0x25
 8003f4c:	d003      	beq.n	8003f56 <_vfprintf_r+0xb6>
 8003f4e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8003f52:	2b00      	cmp	r3, #0
 8003f54:	d1f9      	bne.n	8003f4a <_vfprintf_r+0xaa>
 8003f56:	1be5      	subs	r5, r4, r7
 8003f58:	b18d      	cbz	r5, 8003f7e <_vfprintf_r+0xde>
 8003f5a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8003f5e:	3301      	adds	r3, #1
 8003f60:	442a      	add	r2, r5
 8003f62:	2b07      	cmp	r3, #7
 8003f64:	f8cb 7000 	str.w	r7, [fp]
 8003f68:	f8cb 5004 	str.w	r5, [fp, #4]
 8003f6c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8003f70:	f300 80ca 	bgt.w	8004108 <_vfprintf_r+0x268>
 8003f74:	f10b 0b08 	add.w	fp, fp, #8
 8003f78:	9b05      	ldr	r3, [sp, #20]
 8003f7a:	442b      	add	r3, r5
 8003f7c:	9305      	str	r3, [sp, #20]
 8003f7e:	7823      	ldrb	r3, [r4, #0]
 8003f80:	2b00      	cmp	r3, #0
 8003f82:	f000 8237 	beq.w	80043f4 <_vfprintf_r+0x554>
 8003f86:	2300      	movs	r3, #0
 8003f88:	7866      	ldrb	r6, [r4, #1]
 8003f8a:	9306      	str	r3, [sp, #24]
 8003f8c:	4698      	mov	r8, r3
 8003f8e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003f92:	f104 0a01 	add.w	sl, r4, #1
 8003f96:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8003f9a:	252b      	movs	r5, #43	; 0x2b
 8003f9c:	f10a 0a01 	add.w	sl, sl, #1
 8003fa0:	f1a6 0320 	sub.w	r3, r6, #32
 8003fa4:	2b5a      	cmp	r3, #90	; 0x5a
 8003fa6:	f200 842a 	bhi.w	80047fe <_vfprintf_r+0x95e>
 8003faa:	e8df f013 	tbh	[pc, r3, lsl #1]
 8003fae:	03aa      	.short	0x03aa
 8003fb0:	04280428 	.word	0x04280428
 8003fb4:	0428029c 	.word	0x0428029c
 8003fb8:	04280428 	.word	0x04280428
 8003fbc:	042802a7 	.word	0x042802a7
 8003fc0:	02c60428 	.word	0x02c60428
 8003fc4:	042802d2 	.word	0x042802d2
 8003fc8:	02dc02d7 	.word	0x02dc02d7
 8003fcc:	02f60428 	.word	0x02f60428
 8003fd0:	026d026d 	.word	0x026d026d
 8003fd4:	026d026d 	.word	0x026d026d
 8003fd8:	026d026d 	.word	0x026d026d
 8003fdc:	026d026d 	.word	0x026d026d
 8003fe0:	0428026d 	.word	0x0428026d
 8003fe4:	04280428 	.word	0x04280428
 8003fe8:	04280428 	.word	0x04280428
 8003fec:	04280428 	.word	0x04280428
 8003ff0:	042802fb 	.word	0x042802fb
 8003ff4:	03f3033c 	.word	0x03f3033c
 8003ff8:	02fb02fb 	.word	0x02fb02fb
 8003ffc:	042802fb 	.word	0x042802fb
 8004000:	04280428 	.word	0x04280428
 8004004:	03ee0428 	.word	0x03ee0428
 8004008:	04280428 	.word	0x04280428
 800400c:	0428009a 	.word	0x0428009a
 8004010:	04280428 	.word	0x04280428
 8004014:	04280350 	.word	0x04280350
 8004018:	04280379 	.word	0x04280379
 800401c:	03900428 	.word	0x03900428
 8004020:	04280428 	.word	0x04280428
 8004024:	04280428 	.word	0x04280428
 8004028:	04280428 	.word	0x04280428
 800402c:	04280428 	.word	0x04280428
 8004030:	042802fb 	.word	0x042802fb
 8004034:	00c5033c 	.word	0x00c5033c
 8004038:	02fb02fb 	.word	0x02fb02fb
 800403c:	03d102fb 	.word	0x03d102fb
 8004040:	007000c5 	.word	0x007000c5
 8004044:	03b50428 	.word	0x03b50428
 8004048:	03c20428 	.word	0x03c20428
 800404c:	03de009c 	.word	0x03de009c
 8004050:	04280070 	.word	0x04280070
 8004054:	00720350 	.word	0x00720350
 8004058:	0428022c 	.word	0x0428022c
 800405c:	027c0428 	.word	0x027c0428
 8004060:	00720428 	.word	0x00720428
 8004064:	4649      	mov	r1, r9
 8004066:	9803      	ldr	r0, [sp, #12]
 8004068:	f001 fc9a 	bl	80059a0 <__swsetup_r>
 800406c:	b1a0      	cbz	r0, 8004098 <_vfprintf_r+0x1f8>
 800406e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8004072:	07d8      	lsls	r0, r3, #31
 8004074:	d404      	bmi.n	8004080 <_vfprintf_r+0x1e0>
 8004076:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800407a:	0599      	lsls	r1, r3, #22
 800407c:	f140 83b7 	bpl.w	80047ee <_vfprintf_r+0x94e>
 8004080:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004084:	9305      	str	r3, [sp, #20]
 8004086:	9805      	ldr	r0, [sp, #20]
 8004088:	b057      	add	sp, #348	; 0x15c
 800408a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800408e:	f048 0820 	orr.w	r8, r8, #32
 8004092:	f89a 6000 	ldrb.w	r6, [sl]
 8004096:	e781      	b.n	8003f9c <_vfprintf_r+0xfc>
 8004098:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800409c:	f003 021a 	and.w	r2, r3, #26
 80040a0:	2a0a      	cmp	r2, #10
 80040a2:	f47f af37 	bne.w	8003f14 <_vfprintf_r+0x74>
 80040a6:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80040aa:	2a00      	cmp	r2, #0
 80040ac:	f6ff af32 	blt.w	8003f14 <_vfprintf_r+0x74>
 80040b0:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80040b4:	07d2      	lsls	r2, r2, #31
 80040b6:	d405      	bmi.n	80040c4 <_vfprintf_r+0x224>
 80040b8:	059b      	lsls	r3, r3, #22
 80040ba:	d403      	bmi.n	80040c4 <_vfprintf_r+0x224>
 80040bc:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80040c0:	f002 ff60 	bl	8006f84 <__retarget_lock_release_recursive>
 80040c4:	4623      	mov	r3, r4
 80040c6:	463a      	mov	r2, r7
 80040c8:	4649      	mov	r1, r9
 80040ca:	9803      	ldr	r0, [sp, #12]
 80040cc:	f001 fc26 	bl	800591c <__sbprintf>
 80040d0:	9005      	str	r0, [sp, #20]
 80040d2:	9805      	ldr	r0, [sp, #20]
 80040d4:	b057      	add	sp, #348	; 0x15c
 80040d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80040da:	9803      	ldr	r0, [sp, #12]
 80040dc:	f002 fd7e 	bl	8006bdc <__sinit>
 80040e0:	e6f4      	b.n	8003ecc <_vfprintf_r+0x2c>
 80040e2:	f048 0810 	orr.w	r8, r8, #16
 80040e6:	f018 0f20 	tst.w	r8, #32
 80040ea:	f000 836c 	beq.w	80047c6 <_vfprintf_r+0x926>
 80040ee:	9c08      	ldr	r4, [sp, #32]
 80040f0:	3407      	adds	r4, #7
 80040f2:	f024 0307 	bic.w	r3, r4, #7
 80040f6:	e9d3 4500 	ldrd	r4, r5, [r3]
 80040fa:	f103 0208 	add.w	r2, r3, #8
 80040fe:	9208      	str	r2, [sp, #32]
 8004100:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8004104:	2200      	movs	r2, #0
 8004106:	e18c      	b.n	8004422 <_vfprintf_r+0x582>
 8004108:	aa2a      	add	r2, sp, #168	; 0xa8
 800410a:	9907      	ldr	r1, [sp, #28]
 800410c:	9803      	ldr	r0, [sp, #12]
 800410e:	f003 fe65 	bl	8007ddc <__sprint_r>
 8004112:	2800      	cmp	r0, #0
 8004114:	f041 8376 	bne.w	8005804 <_vfprintf_r+0x1964>
 8004118:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800411c:	e72c      	b.n	8003f78 <_vfprintf_r+0xd8>
 800411e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004122:	f002 ff2d 	bl	8006f80 <__retarget_lock_acquire_recursive>
 8004126:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800412a:	b293      	uxth	r3, r2
 800412c:	e6d8      	b.n	8003ee0 <_vfprintf_r+0x40>
 800412e:	bf00      	nop
	...
 8004138:	4643      	mov	r3, r8
 800413a:	069f      	lsls	r7, r3, #26
 800413c:	f140 832f 	bpl.w	800479e <_vfprintf_r+0x8fe>
 8004140:	9c08      	ldr	r4, [sp, #32]
 8004142:	3407      	adds	r4, #7
 8004144:	f024 0407 	bic.w	r4, r4, #7
 8004148:	e9d4 0100 	ldrd	r0, r1, [r4]
 800414c:	f104 0208 	add.w	r2, r4, #8
 8004150:	9208      	str	r2, [sp, #32]
 8004152:	4604      	mov	r4, r0
 8004154:	460d      	mov	r5, r1
 8004156:	2800      	cmp	r0, #0
 8004158:	f171 0200 	sbcs.w	r2, r1, #0
 800415c:	da05      	bge.n	800416a <_vfprintf_r+0x2ca>
 800415e:	222d      	movs	r2, #45	; 0x2d
 8004160:	4264      	negs	r4, r4
 8004162:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8004166:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800416a:	aa56      	add	r2, sp, #344	; 0x158
 800416c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004170:	9204      	str	r2, [sp, #16]
 8004172:	f000 84b2 	beq.w	8004ada <_vfprintf_r+0xc3a>
 8004176:	2201      	movs	r2, #1
 8004178:	ea54 0105 	orrs.w	r1, r4, r5
 800417c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8004180:	f040 8159 	bne.w	8004436 <_vfprintf_r+0x596>
 8004184:	f1b9 0f00 	cmp.w	r9, #0
 8004188:	f040 8619 	bne.w	8004dbe <_vfprintf_r+0xf1e>
 800418c:	2a00      	cmp	r2, #0
 800418e:	f040 8508 	bne.w	8004ba2 <_vfprintf_r+0xd02>
 8004192:	f013 0301 	ands.w	r3, r3, #1
 8004196:	af56      	add	r7, sp, #344	; 0x158
 8004198:	9309      	str	r3, [sp, #36]	; 0x24
 800419a:	d002      	beq.n	80041a2 <_vfprintf_r+0x302>
 800419c:	2330      	movs	r3, #48	; 0x30
 800419e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80041a2:	2300      	movs	r3, #0
 80041a4:	930a      	str	r3, [sp, #40]	; 0x28
 80041a6:	930f      	str	r3, [sp, #60]	; 0x3c
 80041a8:	9314      	str	r3, [sp, #80]	; 0x50
 80041aa:	9311      	str	r3, [sp, #68]	; 0x44
 80041ac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80041ae:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80041b2:	454b      	cmp	r3, r9
 80041b4:	bfb8      	it	lt
 80041b6:	464b      	movlt	r3, r9
 80041b8:	9304      	str	r3, [sp, #16]
 80041ba:	b112      	cbz	r2, 80041c2 <_vfprintf_r+0x322>
 80041bc:	9b04      	ldr	r3, [sp, #16]
 80041be:	3301      	adds	r3, #1
 80041c0:	9304      	str	r3, [sp, #16]
 80041c2:	f018 0302 	ands.w	r3, r8, #2
 80041c6:	930b      	str	r3, [sp, #44]	; 0x2c
 80041c8:	d002      	beq.n	80041d0 <_vfprintf_r+0x330>
 80041ca:	9b04      	ldr	r3, [sp, #16]
 80041cc:	3302      	adds	r3, #2
 80041ce:	9304      	str	r3, [sp, #16]
 80041d0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80041d4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80041d6:	930e      	str	r3, [sp, #56]	; 0x38
 80041d8:	d13f      	bne.n	800425a <_vfprintf_r+0x3ba>
 80041da:	9b06      	ldr	r3, [sp, #24]
 80041dc:	9904      	ldr	r1, [sp, #16]
 80041de:	1a5d      	subs	r5, r3, r1
 80041e0:	2d00      	cmp	r5, #0
 80041e2:	dd3a      	ble.n	800425a <_vfprintf_r+0x3ba>
 80041e4:	2d10      	cmp	r5, #16
 80041e6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80041e8:	dd29      	ble.n	800423e <_vfprintf_r+0x39e>
 80041ea:	4659      	mov	r1, fp
 80041ec:	4620      	mov	r0, r4
 80041ee:	9620      	str	r6, [sp, #128]	; 0x80
 80041f0:	2310      	movs	r3, #16
 80041f2:	9c03      	ldr	r4, [sp, #12]
 80041f4:	9e07      	ldr	r6, [sp, #28]
 80041f6:	46bb      	mov	fp, r7
 80041f8:	e004      	b.n	8004204 <_vfprintf_r+0x364>
 80041fa:	3d10      	subs	r5, #16
 80041fc:	2d10      	cmp	r5, #16
 80041fe:	f101 0108 	add.w	r1, r1, #8
 8004202:	dd18      	ble.n	8004236 <_vfprintf_r+0x396>
 8004204:	3201      	adds	r2, #1
 8004206:	4fba      	ldr	r7, [pc, #744]	; (80044f0 <_vfprintf_r+0x650>)
 8004208:	3010      	adds	r0, #16
 800420a:	2a07      	cmp	r2, #7
 800420c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8004210:	e9c1 7300 	strd	r7, r3, [r1]
 8004214:	ddf1      	ble.n	80041fa <_vfprintf_r+0x35a>
 8004216:	aa2a      	add	r2, sp, #168	; 0xa8
 8004218:	4631      	mov	r1, r6
 800421a:	4620      	mov	r0, r4
 800421c:	930c      	str	r3, [sp, #48]	; 0x30
 800421e:	f003 fddd 	bl	8007ddc <__sprint_r>
 8004222:	2800      	cmp	r0, #0
 8004224:	f040 843d 	bne.w	8004aa2 <_vfprintf_r+0xc02>
 8004228:	3d10      	subs	r5, #16
 800422a:	2d10      	cmp	r5, #16
 800422c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8004230:	a92d      	add	r1, sp, #180	; 0xb4
 8004232:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004234:	dce6      	bgt.n	8004204 <_vfprintf_r+0x364>
 8004236:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8004238:	465f      	mov	r7, fp
 800423a:	4604      	mov	r4, r0
 800423c:	468b      	mov	fp, r1
 800423e:	3201      	adds	r2, #1
 8004240:	4bab      	ldr	r3, [pc, #684]	; (80044f0 <_vfprintf_r+0x650>)
 8004242:	442c      	add	r4, r5
 8004244:	2a07      	cmp	r2, #7
 8004246:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800424a:	e9cb 3500 	strd	r3, r5, [fp]
 800424e:	f300 84ff 	bgt.w	8004c50 <_vfprintf_r+0xdb0>
 8004252:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004256:	f10b 0b08 	add.w	fp, fp, #8
 800425a:	b172      	cbz	r2, 800427a <_vfprintf_r+0x3da>
 800425c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800425e:	3201      	adds	r2, #1
 8004260:	3401      	adds	r4, #1
 8004262:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8004266:	2101      	movs	r1, #1
 8004268:	2a07      	cmp	r2, #7
 800426a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800426e:	e9cb 0100 	strd	r0, r1, [fp]
 8004272:	f300 8418 	bgt.w	8004aa6 <_vfprintf_r+0xc06>
 8004276:	f10b 0b08 	add.w	fp, fp, #8
 800427a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800427c:	b16b      	cbz	r3, 800429a <_vfprintf_r+0x3fa>
 800427e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004280:	3301      	adds	r3, #1
 8004282:	3402      	adds	r4, #2
 8004284:	a923      	add	r1, sp, #140	; 0x8c
 8004286:	2202      	movs	r2, #2
 8004288:	2b07      	cmp	r3, #7
 800428a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800428e:	e9cb 1200 	strd	r1, r2, [fp]
 8004292:	f300 8415 	bgt.w	8004ac0 <_vfprintf_r+0xc20>
 8004296:	f10b 0b08 	add.w	fp, fp, #8
 800429a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800429c:	2b80      	cmp	r3, #128	; 0x80
 800429e:	f000 8331 	beq.w	8004904 <_vfprintf_r+0xa64>
 80042a2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042a4:	eba9 0503 	sub.w	r5, r9, r3
 80042a8:	2d00      	cmp	r5, #0
 80042aa:	dd37      	ble.n	800431c <_vfprintf_r+0x47c>
 80042ac:	2d10      	cmp	r5, #16
 80042ae:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80042b0:	4b90      	ldr	r3, [pc, #576]	; (80044f4 <_vfprintf_r+0x654>)
 80042b2:	dd28      	ble.n	8004306 <_vfprintf_r+0x466>
 80042b4:	4659      	mov	r1, fp
 80042b6:	4620      	mov	r0, r4
 80042b8:	46bb      	mov	fp, r7
 80042ba:	f04f 0910 	mov.w	r9, #16
 80042be:	4637      	mov	r7, r6
 80042c0:	461c      	mov	r4, r3
 80042c2:	9e07      	ldr	r6, [sp, #28]
 80042c4:	e004      	b.n	80042d0 <_vfprintf_r+0x430>
 80042c6:	3d10      	subs	r5, #16
 80042c8:	2d10      	cmp	r5, #16
 80042ca:	f101 0108 	add.w	r1, r1, #8
 80042ce:	dd15      	ble.n	80042fc <_vfprintf_r+0x45c>
 80042d0:	3201      	adds	r2, #1
 80042d2:	3010      	adds	r0, #16
 80042d4:	2a07      	cmp	r2, #7
 80042d6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80042da:	e9c1 4900 	strd	r4, r9, [r1]
 80042de:	ddf2      	ble.n	80042c6 <_vfprintf_r+0x426>
 80042e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80042e2:	4631      	mov	r1, r6
 80042e4:	9803      	ldr	r0, [sp, #12]
 80042e6:	f003 fd79 	bl	8007ddc <__sprint_r>
 80042ea:	2800      	cmp	r0, #0
 80042ec:	f040 83d9 	bne.w	8004aa2 <_vfprintf_r+0xc02>
 80042f0:	3d10      	subs	r5, #16
 80042f2:	2d10      	cmp	r5, #16
 80042f4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80042f8:	a92d      	add	r1, sp, #180	; 0xb4
 80042fa:	dce9      	bgt.n	80042d0 <_vfprintf_r+0x430>
 80042fc:	463e      	mov	r6, r7
 80042fe:	4623      	mov	r3, r4
 8004300:	465f      	mov	r7, fp
 8004302:	4604      	mov	r4, r0
 8004304:	468b      	mov	fp, r1
 8004306:	3201      	adds	r2, #1
 8004308:	442c      	add	r4, r5
 800430a:	2a07      	cmp	r2, #7
 800430c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004310:	e9cb 3500 	strd	r3, r5, [fp]
 8004314:	f300 83ef 	bgt.w	8004af6 <_vfprintf_r+0xc56>
 8004318:	f10b 0b08 	add.w	fp, fp, #8
 800431c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8004320:	f040 8280 	bne.w	8004824 <_vfprintf_r+0x984>
 8004324:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004326:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004328:	f8cb 7000 	str.w	r7, [fp]
 800432c:	3301      	adds	r3, #1
 800432e:	4414      	add	r4, r2
 8004330:	2b07      	cmp	r3, #7
 8004332:	942c      	str	r4, [sp, #176]	; 0xb0
 8004334:	f8cb 2004 	str.w	r2, [fp, #4]
 8004338:	932b      	str	r3, [sp, #172]	; 0xac
 800433a:	f300 8392 	bgt.w	8004a62 <_vfprintf_r+0xbc2>
 800433e:	f10b 0b08 	add.w	fp, fp, #8
 8004342:	f018 0f04 	tst.w	r8, #4
 8004346:	d03b      	beq.n	80043c0 <_vfprintf_r+0x520>
 8004348:	9b06      	ldr	r3, [sp, #24]
 800434a:	9a04      	ldr	r2, [sp, #16]
 800434c:	1a9d      	subs	r5, r3, r2
 800434e:	2d00      	cmp	r5, #0
 8004350:	dd36      	ble.n	80043c0 <_vfprintf_r+0x520>
 8004352:	2d10      	cmp	r5, #16
 8004354:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004356:	dd21      	ble.n	800439c <_vfprintf_r+0x4fc>
 8004358:	2610      	movs	r6, #16
 800435a:	9f03      	ldr	r7, [sp, #12]
 800435c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8004360:	e004      	b.n	800436c <_vfprintf_r+0x4cc>
 8004362:	3d10      	subs	r5, #16
 8004364:	2d10      	cmp	r5, #16
 8004366:	f10b 0b08 	add.w	fp, fp, #8
 800436a:	dd17      	ble.n	800439c <_vfprintf_r+0x4fc>
 800436c:	3301      	adds	r3, #1
 800436e:	4a60      	ldr	r2, [pc, #384]	; (80044f0 <_vfprintf_r+0x650>)
 8004370:	3410      	adds	r4, #16
 8004372:	2b07      	cmp	r3, #7
 8004374:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004378:	e9cb 2600 	strd	r2, r6, [fp]
 800437c:	ddf1      	ble.n	8004362 <_vfprintf_r+0x4c2>
 800437e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004380:	4641      	mov	r1, r8
 8004382:	4638      	mov	r0, r7
 8004384:	f003 fd2a 	bl	8007ddc <__sprint_r>
 8004388:	2800      	cmp	r0, #0
 800438a:	f040 856c 	bne.w	8004e66 <_vfprintf_r+0xfc6>
 800438e:	3d10      	subs	r5, #16
 8004390:	2d10      	cmp	r5, #16
 8004392:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8004396:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800439a:	dce7      	bgt.n	800436c <_vfprintf_r+0x4cc>
 800439c:	3301      	adds	r3, #1
 800439e:	4a54      	ldr	r2, [pc, #336]	; (80044f0 <_vfprintf_r+0x650>)
 80043a0:	442c      	add	r4, r5
 80043a2:	2b07      	cmp	r3, #7
 80043a4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80043a8:	e9cb 2500 	strd	r2, r5, [fp]
 80043ac:	dd08      	ble.n	80043c0 <_vfprintf_r+0x520>
 80043ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80043b0:	9907      	ldr	r1, [sp, #28]
 80043b2:	9803      	ldr	r0, [sp, #12]
 80043b4:	f003 fd12 	bl	8007ddc <__sprint_r>
 80043b8:	2800      	cmp	r0, #0
 80043ba:	f040 82e9 	bne.w	8004990 <_vfprintf_r+0xaf0>
 80043be:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80043c0:	9904      	ldr	r1, [sp, #16]
 80043c2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80043c6:	428a      	cmp	r2, r1
 80043c8:	bfac      	ite	ge
 80043ca:	189b      	addge	r3, r3, r2
 80043cc:	185b      	addlt	r3, r3, r1
 80043ce:	9305      	str	r3, [sp, #20]
 80043d0:	2c00      	cmp	r4, #0
 80043d2:	f040 82d5 	bne.w	8004980 <_vfprintf_r+0xae0>
 80043d6:	2300      	movs	r3, #0
 80043d8:	932b      	str	r3, [sp, #172]	; 0xac
 80043da:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80043dc:	b11b      	cbz	r3, 80043e6 <_vfprintf_r+0x546>
 80043de:	990a      	ldr	r1, [sp, #40]	; 0x28
 80043e0:	9803      	ldr	r0, [sp, #12]
 80043e2:	f002 fc9d 	bl	8006d20 <_free_r>
 80043e6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80043ea:	4657      	mov	r7, sl
 80043ec:	783b      	ldrb	r3, [r7, #0]
 80043ee:	2b00      	cmp	r3, #0
 80043f0:	f47f ada7 	bne.w	8003f42 <_vfprintf_r+0xa2>
 80043f4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80043f6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80043fa:	2b00      	cmp	r3, #0
 80043fc:	f041 80e7 	bne.w	80055ce <_vfprintf_r+0x172e>
 8004400:	2300      	movs	r3, #0
 8004402:	932b      	str	r3, [sp, #172]	; 0xac
 8004404:	e2cb      	b.n	800499e <_vfprintf_r+0xafe>
 8004406:	4643      	mov	r3, r8
 8004408:	069a      	lsls	r2, r3, #26
 800440a:	f140 814e 	bpl.w	80046aa <_vfprintf_r+0x80a>
 800440e:	9c08      	ldr	r4, [sp, #32]
 8004410:	3407      	adds	r4, #7
 8004412:	f024 0207 	bic.w	r2, r4, #7
 8004416:	f102 0108 	add.w	r1, r2, #8
 800441a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800441e:	9108      	str	r1, [sp, #32]
 8004420:	2201      	movs	r2, #1
 8004422:	2100      	movs	r1, #0
 8004424:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8004428:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800442c:	a956      	add	r1, sp, #344	; 0x158
 800442e:	9104      	str	r1, [sp, #16]
 8004430:	f47f aea2 	bne.w	8004178 <_vfprintf_r+0x2d8>
 8004434:	4698      	mov	r8, r3
 8004436:	2a01      	cmp	r2, #1
 8004438:	f000 8350 	beq.w	8004adc <_vfprintf_r+0xc3c>
 800443c:	2a02      	cmp	r2, #2
 800443e:	f000 831b 	beq.w	8004a78 <_vfprintf_r+0xbd8>
 8004442:	a956      	add	r1, sp, #344	; 0x158
 8004444:	e000      	b.n	8004448 <_vfprintf_r+0x5a8>
 8004446:	4639      	mov	r1, r7
 8004448:	08e2      	lsrs	r2, r4, #3
 800444a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800444e:	08e8      	lsrs	r0, r5, #3
 8004450:	f004 0307 	and.w	r3, r4, #7
 8004454:	4605      	mov	r5, r0
 8004456:	4614      	mov	r4, r2
 8004458:	3330      	adds	r3, #48	; 0x30
 800445a:	ea54 0205 	orrs.w	r2, r4, r5
 800445e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8004462:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8004466:	d1ee      	bne.n	8004446 <_vfprintf_r+0x5a6>
 8004468:	f018 0f01 	tst.w	r8, #1
 800446c:	f000 8314 	beq.w	8004a98 <_vfprintf_r+0xbf8>
 8004470:	2b30      	cmp	r3, #48	; 0x30
 8004472:	f000 8311 	beq.w	8004a98 <_vfprintf_r+0xbf8>
 8004476:	9a04      	ldr	r2, [sp, #16]
 8004478:	3902      	subs	r1, #2
 800447a:	2330      	movs	r3, #48	; 0x30
 800447c:	1a52      	subs	r2, r2, r1
 800447e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8004482:	9209      	str	r2, [sp, #36]	; 0x24
 8004484:	460f      	mov	r7, r1
 8004486:	e68c      	b.n	80041a2 <_vfprintf_r+0x302>
 8004488:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800448c:	2200      	movs	r2, #0
 800448e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8004492:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8004496:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800449a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800449e:	2b09      	cmp	r3, #9
 80044a0:	d9f5      	bls.n	800448e <_vfprintf_r+0x5ee>
 80044a2:	9206      	str	r2, [sp, #24]
 80044a4:	e57c      	b.n	8003fa0 <_vfprintf_r+0x100>
 80044a6:	4b14      	ldr	r3, [pc, #80]	; (80044f8 <_vfprintf_r+0x658>)
 80044a8:	9317      	str	r3, [sp, #92]	; 0x5c
 80044aa:	f018 0f20 	tst.w	r8, #32
 80044ae:	f000 8114 	beq.w	80046da <_vfprintf_r+0x83a>
 80044b2:	9c08      	ldr	r4, [sp, #32]
 80044b4:	3407      	adds	r4, #7
 80044b6:	f024 0307 	bic.w	r3, r4, #7
 80044ba:	e9d3 4500 	ldrd	r4, r5, [r3]
 80044be:	f103 0208 	add.w	r2, r3, #8
 80044c2:	9208      	str	r2, [sp, #32]
 80044c4:	f018 0f01 	tst.w	r8, #1
 80044c8:	d009      	beq.n	80044de <_vfprintf_r+0x63e>
 80044ca:	ea54 0305 	orrs.w	r3, r4, r5
 80044ce:	d006      	beq.n	80044de <_vfprintf_r+0x63e>
 80044d0:	2330      	movs	r3, #48	; 0x30
 80044d2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80044d6:	f048 0802 	orr.w	r8, r8, #2
 80044da:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80044de:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80044e2:	2202      	movs	r2, #2
 80044e4:	e79d      	b.n	8004422 <_vfprintf_r+0x582>
 80044e6:	f048 0801 	orr.w	r8, r8, #1
 80044ea:	f89a 6000 	ldrb.w	r6, [sl]
 80044ee:	e555      	b.n	8003f9c <_vfprintf_r+0xfc>
 80044f0:	08008b38 	.word	0x08008b38
 80044f4:	08008b48 	.word	0x08008b48
 80044f8:	08008b04 	.word	0x08008b04
 80044fc:	9e03      	ldr	r6, [sp, #12]
 80044fe:	4630      	mov	r0, r6
 8004500:	f002 fd2c 	bl	8006f5c <_localeconv_r>
 8004504:	6843      	ldr	r3, [r0, #4]
 8004506:	9318      	str	r3, [sp, #96]	; 0x60
 8004508:	4618      	mov	r0, r3
 800450a:	f7fc f8f9 	bl	8000700 <strlen>
 800450e:	901b      	str	r0, [sp, #108]	; 0x6c
 8004510:	4604      	mov	r4, r0
 8004512:	4630      	mov	r0, r6
 8004514:	f002 fd22 	bl	8006f5c <_localeconv_r>
 8004518:	6883      	ldr	r3, [r0, #8]
 800451a:	931a      	str	r3, [sp, #104]	; 0x68
 800451c:	2c00      	cmp	r4, #0
 800451e:	f43f adb8 	beq.w	8004092 <_vfprintf_r+0x1f2>
 8004522:	f89a 6000 	ldrb.w	r6, [sl]
 8004526:	2b00      	cmp	r3, #0
 8004528:	f43f ad38 	beq.w	8003f9c <_vfprintf_r+0xfc>
 800452c:	781b      	ldrb	r3, [r3, #0]
 800452e:	2b00      	cmp	r3, #0
 8004530:	f43f ad34 	beq.w	8003f9c <_vfprintf_r+0xfc>
 8004534:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8004538:	e530      	b.n	8003f9c <_vfprintf_r+0xfc>
 800453a:	9b08      	ldr	r3, [sp, #32]
 800453c:	f89a 6000 	ldrb.w	r6, [sl]
 8004540:	681a      	ldr	r2, [r3, #0]
 8004542:	9206      	str	r2, [sp, #24]
 8004544:	2a00      	cmp	r2, #0
 8004546:	f103 0304 	add.w	r3, r3, #4
 800454a:	f2c0 8697 	blt.w	800527c <_vfprintf_r+0x13dc>
 800454e:	9308      	str	r3, [sp, #32]
 8004550:	e524      	b.n	8003f9c <_vfprintf_r+0xfc>
 8004552:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8004556:	f89a 6000 	ldrb.w	r6, [sl]
 800455a:	e51f      	b.n	8003f9c <_vfprintf_r+0xfc>
 800455c:	f89a 6000 	ldrb.w	r6, [sl]
 8004560:	f048 0804 	orr.w	r8, r8, #4
 8004564:	e51a      	b.n	8003f9c <_vfprintf_r+0xfc>
 8004566:	f89a 6000 	ldrb.w	r6, [sl]
 800456a:	2e2a      	cmp	r6, #42	; 0x2a
 800456c:	f10a 0201 	add.w	r2, sl, #1
 8004570:	f001 81b0 	beq.w	80058d4 <_vfprintf_r+0x1a34>
 8004574:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004578:	2b09      	cmp	r3, #9
 800457a:	4692      	mov	sl, r2
 800457c:	f04f 0900 	mov.w	r9, #0
 8004580:	f63f ad0e 	bhi.w	8003fa0 <_vfprintf_r+0x100>
 8004584:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8004588:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 800458c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8004590:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004594:	2b09      	cmp	r3, #9
 8004596:	d9f5      	bls.n	8004584 <_vfprintf_r+0x6e4>
 8004598:	e502      	b.n	8003fa0 <_vfprintf_r+0x100>
 800459a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 800459e:	f89a 6000 	ldrb.w	r6, [sl]
 80045a2:	e4fb      	b.n	8003f9c <_vfprintf_r+0xfc>
 80045a4:	9c08      	ldr	r4, [sp, #32]
 80045a6:	3407      	adds	r4, #7
 80045a8:	f024 0407 	bic.w	r4, r4, #7
 80045ac:	ed94 7b00 	vldr	d7, [r4]
 80045b0:	ec52 1b17 	vmov	r1, r2, d7
 80045b4:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80045b8:	931d      	str	r3, [sp, #116]	; 0x74
 80045ba:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80045be:	3408      	adds	r4, #8
 80045c0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80045c4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80045c8:	4bba      	ldr	r3, [pc, #744]	; (80048b4 <_vfprintf_r+0xa14>)
 80045ca:	9408      	str	r4, [sp, #32]
 80045cc:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80045d0:	f7fc fdac 	bl	800112c <__aeabi_dcmpun>
 80045d4:	2800      	cmp	r0, #0
 80045d6:	f040 846f 	bne.w	8004eb8 <_vfprintf_r+0x1018>
 80045da:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80045de:	4bb5      	ldr	r3, [pc, #724]	; (80048b4 <_vfprintf_r+0xa14>)
 80045e0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80045e4:	f7fc fd84 	bl	80010f0 <__aeabi_dcmple>
 80045e8:	2800      	cmp	r0, #0
 80045ea:	f040 8465 	bne.w	8004eb8 <_vfprintf_r+0x1018>
 80045ee:	2200      	movs	r2, #0
 80045f0:	2300      	movs	r3, #0
 80045f2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80045f6:	f7fc fd71 	bl	80010dc <__aeabi_dcmplt>
 80045fa:	2800      	cmp	r0, #0
 80045fc:	f040 855b 	bne.w	80050b6 <_vfprintf_r+0x1216>
 8004600:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004604:	4fac      	ldr	r7, [pc, #688]	; (80048b8 <_vfprintf_r+0xa18>)
 8004606:	4bad      	ldr	r3, [pc, #692]	; (80048bc <_vfprintf_r+0xa1c>)
 8004608:	2000      	movs	r0, #0
 800460a:	2103      	movs	r1, #3
 800460c:	9104      	str	r1, [sp, #16]
 800460e:	900a      	str	r0, [sp, #40]	; 0x28
 8004610:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8004614:	2e47      	cmp	r6, #71	; 0x47
 8004616:	bfd8      	it	le
 8004618:	461f      	movle	r7, r3
 800461a:	9109      	str	r1, [sp, #36]	; 0x24
 800461c:	4681      	mov	r9, r0
 800461e:	900f      	str	r0, [sp, #60]	; 0x3c
 8004620:	9014      	str	r0, [sp, #80]	; 0x50
 8004622:	9011      	str	r0, [sp, #68]	; 0x44
 8004624:	e5c9      	b.n	80041ba <_vfprintf_r+0x31a>
 8004626:	9808      	ldr	r0, [sp, #32]
 8004628:	2300      	movs	r3, #0
 800462a:	6801      	ldr	r1, [r0, #0]
 800462c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8004630:	461a      	mov	r2, r3
 8004632:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8004636:	2301      	movs	r3, #1
 8004638:	1d01      	adds	r1, r0, #4
 800463a:	9304      	str	r3, [sp, #16]
 800463c:	920a      	str	r2, [sp, #40]	; 0x28
 800463e:	4691      	mov	r9, r2
 8004640:	920f      	str	r2, [sp, #60]	; 0x3c
 8004642:	9214      	str	r2, [sp, #80]	; 0x50
 8004644:	9211      	str	r2, [sp, #68]	; 0x44
 8004646:	e9cd 1308 	strd	r1, r3, [sp, #32]
 800464a:	af3d      	add	r7, sp, #244	; 0xf4
 800464c:	e5b9      	b.n	80041c2 <_vfprintf_r+0x322>
 800464e:	9b08      	ldr	r3, [sp, #32]
 8004650:	681f      	ldr	r7, [r3, #0]
 8004652:	2500      	movs	r5, #0
 8004654:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8004658:	1d1c      	adds	r4, r3, #4
 800465a:	2f00      	cmp	r7, #0
 800465c:	f000 8639 	beq.w	80052d2 <_vfprintf_r+0x1432>
 8004660:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004664:	f000 8711 	beq.w	800548a <_vfprintf_r+0x15ea>
 8004668:	464a      	mov	r2, r9
 800466a:	4629      	mov	r1, r5
 800466c:	4638      	mov	r0, r7
 800466e:	f7fc f8b7 	bl	80007e0 <memchr>
 8004672:	900a      	str	r0, [sp, #40]	; 0x28
 8004674:	2800      	cmp	r0, #0
 8004676:	f000 85e7 	beq.w	8005248 <_vfprintf_r+0x13a8>
 800467a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800467c:	1bdb      	subs	r3, r3, r7
 800467e:	9309      	str	r3, [sp, #36]	; 0x24
 8004680:	46a9      	mov	r9, r5
 8004682:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004686:	9408      	str	r4, [sp, #32]
 8004688:	9304      	str	r3, [sp, #16]
 800468a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800468e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8004692:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8004696:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 800469a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800469e:	e58c      	b.n	80041ba <_vfprintf_r+0x31a>
 80046a0:	f048 0310 	orr.w	r3, r8, #16
 80046a4:	069a      	lsls	r2, r3, #26
 80046a6:	f53f aeb2 	bmi.w	800440e <_vfprintf_r+0x56e>
 80046aa:	9a08      	ldr	r2, [sp, #32]
 80046ac:	06df      	lsls	r7, r3, #27
 80046ae:	f102 0104 	add.w	r1, r2, #4
 80046b2:	f100 837e 	bmi.w	8004db2 <_vfprintf_r+0xf12>
 80046b6:	065d      	lsls	r5, r3, #25
 80046b8:	9a08      	ldr	r2, [sp, #32]
 80046ba:	f100 84e4 	bmi.w	8005086 <_vfprintf_r+0x11e6>
 80046be:	059c      	lsls	r4, r3, #22
 80046c0:	f140 8377 	bpl.w	8004db2 <_vfprintf_r+0xf12>
 80046c4:	7814      	ldrb	r4, [r2, #0]
 80046c6:	9108      	str	r1, [sp, #32]
 80046c8:	2500      	movs	r5, #0
 80046ca:	2201      	movs	r2, #1
 80046cc:	e6a9      	b.n	8004422 <_vfprintf_r+0x582>
 80046ce:	4b7c      	ldr	r3, [pc, #496]	; (80048c0 <_vfprintf_r+0xa20>)
 80046d0:	9317      	str	r3, [sp, #92]	; 0x5c
 80046d2:	f018 0f20 	tst.w	r8, #32
 80046d6:	f47f aeec 	bne.w	80044b2 <_vfprintf_r+0x612>
 80046da:	9a08      	ldr	r2, [sp, #32]
 80046dc:	f018 0f10 	tst.w	r8, #16
 80046e0:	f102 0304 	add.w	r3, r2, #4
 80046e4:	f040 8354 	bne.w	8004d90 <_vfprintf_r+0xef0>
 80046e8:	f018 0f40 	tst.w	r8, #64	; 0x40
 80046ec:	9a08      	ldr	r2, [sp, #32]
 80046ee:	f040 84d0 	bne.w	8005092 <_vfprintf_r+0x11f2>
 80046f2:	f418 7f00 	tst.w	r8, #512	; 0x200
 80046f6:	f000 834b 	beq.w	8004d90 <_vfprintf_r+0xef0>
 80046fa:	7814      	ldrb	r4, [r2, #0]
 80046fc:	9308      	str	r3, [sp, #32]
 80046fe:	2500      	movs	r5, #0
 8004700:	e6e0      	b.n	80044c4 <_vfprintf_r+0x624>
 8004702:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8004706:	f89a 6000 	ldrb.w	r6, [sl]
 800470a:	2b00      	cmp	r3, #0
 800470c:	f47f ac46 	bne.w	8003f9c <_vfprintf_r+0xfc>
 8004710:	2320      	movs	r3, #32
 8004712:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8004716:	e441      	b.n	8003f9c <_vfprintf_r+0xfc>
 8004718:	f89a 6000 	ldrb.w	r6, [sl]
 800471c:	2e6c      	cmp	r6, #108	; 0x6c
 800471e:	bf03      	ittte	eq
 8004720:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8004724:	f048 0820 	orreq.w	r8, r8, #32
 8004728:	f10a 0a01 	addeq.w	sl, sl, #1
 800472c:	f048 0810 	orrne.w	r8, r8, #16
 8004730:	e434      	b.n	8003f9c <_vfprintf_r+0xfc>
 8004732:	9a08      	ldr	r2, [sp, #32]
 8004734:	f018 0f20 	tst.w	r8, #32
 8004738:	f852 3b04 	ldr.w	r3, [r2], #4
 800473c:	9208      	str	r2, [sp, #32]
 800473e:	f000 83a1 	beq.w	8004e84 <_vfprintf_r+0xfe4>
 8004742:	9a05      	ldr	r2, [sp, #20]
 8004744:	4610      	mov	r0, r2
 8004746:	17d1      	asrs	r1, r2, #31
 8004748:	e9c3 0100 	strd	r0, r1, [r3]
 800474c:	4657      	mov	r7, sl
 800474e:	e64d      	b.n	80043ec <_vfprintf_r+0x54c>
 8004750:	f89a 6000 	ldrb.w	r6, [sl]
 8004754:	2e68      	cmp	r6, #104	; 0x68
 8004756:	bf03      	ittte	eq
 8004758:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800475c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8004760:	f10a 0a01 	addeq.w	sl, sl, #1
 8004764:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8004768:	e418      	b.n	8003f9c <_vfprintf_r+0xfc>
 800476a:	9908      	ldr	r1, [sp, #32]
 800476c:	4b55      	ldr	r3, [pc, #340]	; (80048c4 <_vfprintf_r+0xa24>)
 800476e:	680c      	ldr	r4, [r1, #0]
 8004770:	9317      	str	r3, [sp, #92]	; 0x5c
 8004772:	f647 0230 	movw	r2, #30768	; 0x7830
 8004776:	3104      	adds	r1, #4
 8004778:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 800477c:	f048 0302 	orr.w	r3, r8, #2
 8004780:	9108      	str	r1, [sp, #32]
 8004782:	2500      	movs	r5, #0
 8004784:	2202      	movs	r2, #2
 8004786:	2678      	movs	r6, #120	; 0x78
 8004788:	e64b      	b.n	8004422 <_vfprintf_r+0x582>
 800478a:	f048 0808 	orr.w	r8, r8, #8
 800478e:	f89a 6000 	ldrb.w	r6, [sl]
 8004792:	e403      	b.n	8003f9c <_vfprintf_r+0xfc>
 8004794:	f048 0310 	orr.w	r3, r8, #16
 8004798:	069f      	lsls	r7, r3, #26
 800479a:	f53f acd1 	bmi.w	8004140 <_vfprintf_r+0x2a0>
 800479e:	9908      	ldr	r1, [sp, #32]
 80047a0:	06dd      	lsls	r5, r3, #27
 80047a2:	f101 0204 	add.w	r2, r1, #4
 80047a6:	f100 82fd 	bmi.w	8004da4 <_vfprintf_r+0xf04>
 80047aa:	065c      	lsls	r4, r3, #25
 80047ac:	9908      	ldr	r1, [sp, #32]
 80047ae:	f100 8475 	bmi.w	800509c <_vfprintf_r+0x11fc>
 80047b2:	0598      	lsls	r0, r3, #22
 80047b4:	f140 82f6 	bpl.w	8004da4 <_vfprintf_r+0xf04>
 80047b8:	f991 4000 	ldrsb.w	r4, [r1]
 80047bc:	9208      	str	r2, [sp, #32]
 80047be:	17e5      	asrs	r5, r4, #31
 80047c0:	4620      	mov	r0, r4
 80047c2:	4629      	mov	r1, r5
 80047c4:	e4c7      	b.n	8004156 <_vfprintf_r+0x2b6>
 80047c6:	9a08      	ldr	r2, [sp, #32]
 80047c8:	f018 0f10 	tst.w	r8, #16
 80047cc:	f102 0304 	add.w	r3, r2, #4
 80047d0:	f040 82e3 	bne.w	8004d9a <_vfprintf_r+0xefa>
 80047d4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80047d8:	9a08      	ldr	r2, [sp, #32]
 80047da:	f040 8467 	bne.w	80050ac <_vfprintf_r+0x120c>
 80047de:	f418 7f00 	tst.w	r8, #512	; 0x200
 80047e2:	f000 82da 	beq.w	8004d9a <_vfprintf_r+0xefa>
 80047e6:	7814      	ldrb	r4, [r2, #0]
 80047e8:	9308      	str	r3, [sp, #32]
 80047ea:	2500      	movs	r5, #0
 80047ec:	e488      	b.n	8004100 <_vfprintf_r+0x260>
 80047ee:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80047f2:	f002 fbc7 	bl	8006f84 <__retarget_lock_release_recursive>
 80047f6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80047fa:	9305      	str	r3, [sp, #20]
 80047fc:	e443      	b.n	8004086 <_vfprintf_r+0x1e6>
 80047fe:	2e00      	cmp	r6, #0
 8004800:	f43f adf8 	beq.w	80043f4 <_vfprintf_r+0x554>
 8004804:	2300      	movs	r3, #0
 8004806:	2101      	movs	r1, #1
 8004808:	461a      	mov	r2, r3
 800480a:	9104      	str	r1, [sp, #16]
 800480c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8004810:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8004814:	930a      	str	r3, [sp, #40]	; 0x28
 8004816:	4699      	mov	r9, r3
 8004818:	930f      	str	r3, [sp, #60]	; 0x3c
 800481a:	9314      	str	r3, [sp, #80]	; 0x50
 800481c:	9311      	str	r3, [sp, #68]	; 0x44
 800481e:	9109      	str	r1, [sp, #36]	; 0x24
 8004820:	af3d      	add	r7, sp, #244	; 0xf4
 8004822:	e4ce      	b.n	80041c2 <_vfprintf_r+0x322>
 8004824:	2e65      	cmp	r6, #101	; 0x65
 8004826:	f340 80ca 	ble.w	80049be <_vfprintf_r+0xb1e>
 800482a:	2200      	movs	r2, #0
 800482c:	2300      	movs	r3, #0
 800482e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004832:	f7fc fc49 	bl	80010c8 <__aeabi_dcmpeq>
 8004836:	2800      	cmp	r0, #0
 8004838:	f000 8169 	beq.w	8004b0e <_vfprintf_r+0xc6e>
 800483c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800483e:	4a22      	ldr	r2, [pc, #136]	; (80048c8 <_vfprintf_r+0xa28>)
 8004840:	f8cb 2000 	str.w	r2, [fp]
 8004844:	3301      	adds	r3, #1
 8004846:	3401      	adds	r4, #1
 8004848:	2201      	movs	r2, #1
 800484a:	2b07      	cmp	r3, #7
 800484c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004850:	f8cb 2004 	str.w	r2, [fp, #4]
 8004854:	f300 8406 	bgt.w	8005064 <_vfprintf_r+0x11c4>
 8004858:	f10b 0b08 	add.w	fp, fp, #8
 800485c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800485e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004860:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004862:	4293      	cmp	r3, r2
 8004864:	db03      	blt.n	800486e <_vfprintf_r+0x9ce>
 8004866:	f018 0f01 	tst.w	r8, #1
 800486a:	f43f ad6a 	beq.w	8004342 <_vfprintf_r+0x4a2>
 800486e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004870:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8004872:	f8cb 2000 	str.w	r2, [fp]
 8004876:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004878:	f8cb 2004 	str.w	r2, [fp, #4]
 800487c:	3301      	adds	r3, #1
 800487e:	4414      	add	r4, r2
 8004880:	2b07      	cmp	r3, #7
 8004882:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004886:	f300 8517 	bgt.w	80052b8 <_vfprintf_r+0x1418>
 800488a:	f10b 0b08 	add.w	fp, fp, #8
 800488e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004890:	1e5d      	subs	r5, r3, #1
 8004892:	2d00      	cmp	r5, #0
 8004894:	f77f ad55 	ble.w	8004342 <_vfprintf_r+0x4a2>
 8004898:	2d10      	cmp	r5, #16
 800489a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800489c:	4b0b      	ldr	r3, [pc, #44]	; (80048cc <_vfprintf_r+0xa2c>)
 800489e:	f340 82e7 	ble.w	8004e70 <_vfprintf_r+0xfd0>
 80048a2:	4619      	mov	r1, r3
 80048a4:	2610      	movs	r6, #16
 80048a6:	4623      	mov	r3, r4
 80048a8:	9f03      	ldr	r7, [sp, #12]
 80048aa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80048ae:	460c      	mov	r4, r1
 80048b0:	e014      	b.n	80048dc <_vfprintf_r+0xa3c>
 80048b2:	bf00      	nop
 80048b4:	7fefffff 	.word	0x7fefffff
 80048b8:	08008af8 	.word	0x08008af8
 80048bc:	08008af4 	.word	0x08008af4
 80048c0:	08008b18 	.word	0x08008b18
 80048c4:	08008b04 	.word	0x08008b04
 80048c8:	08008b34 	.word	0x08008b34
 80048cc:	08008b48 	.word	0x08008b48
 80048d0:	f10b 0b08 	add.w	fp, fp, #8
 80048d4:	3d10      	subs	r5, #16
 80048d6:	2d10      	cmp	r5, #16
 80048d8:	f340 82c7 	ble.w	8004e6a <_vfprintf_r+0xfca>
 80048dc:	3201      	adds	r2, #1
 80048de:	3310      	adds	r3, #16
 80048e0:	2a07      	cmp	r2, #7
 80048e2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80048e6:	e9cb 4600 	strd	r4, r6, [fp]
 80048ea:	ddf1      	ble.n	80048d0 <_vfprintf_r+0xa30>
 80048ec:	aa2a      	add	r2, sp, #168	; 0xa8
 80048ee:	4649      	mov	r1, r9
 80048f0:	4638      	mov	r0, r7
 80048f2:	f003 fa73 	bl	8007ddc <__sprint_r>
 80048f6:	2800      	cmp	r0, #0
 80048f8:	d14c      	bne.n	8004994 <_vfprintf_r+0xaf4>
 80048fa:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80048fe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004902:	e7e7      	b.n	80048d4 <_vfprintf_r+0xa34>
 8004904:	9b06      	ldr	r3, [sp, #24]
 8004906:	9a04      	ldr	r2, [sp, #16]
 8004908:	1a9d      	subs	r5, r3, r2
 800490a:	2d00      	cmp	r5, #0
 800490c:	f77f acc9 	ble.w	80042a2 <_vfprintf_r+0x402>
 8004910:	2d10      	cmp	r5, #16
 8004912:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004914:	4bbc      	ldr	r3, [pc, #752]	; (8004c08 <_vfprintf_r+0xd68>)
 8004916:	dd27      	ble.n	8004968 <_vfprintf_r+0xac8>
 8004918:	4659      	mov	r1, fp
 800491a:	4620      	mov	r0, r4
 800491c:	46bb      	mov	fp, r7
 800491e:	461c      	mov	r4, r3
 8004920:	4637      	mov	r7, r6
 8004922:	9e07      	ldr	r6, [sp, #28]
 8004924:	e004      	b.n	8004930 <_vfprintf_r+0xa90>
 8004926:	3d10      	subs	r5, #16
 8004928:	2d10      	cmp	r5, #16
 800492a:	f101 0108 	add.w	r1, r1, #8
 800492e:	dd16      	ble.n	800495e <_vfprintf_r+0xabe>
 8004930:	3201      	adds	r2, #1
 8004932:	3010      	adds	r0, #16
 8004934:	2310      	movs	r3, #16
 8004936:	2a07      	cmp	r2, #7
 8004938:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800493c:	600c      	str	r4, [r1, #0]
 800493e:	604b      	str	r3, [r1, #4]
 8004940:	ddf1      	ble.n	8004926 <_vfprintf_r+0xa86>
 8004942:	aa2a      	add	r2, sp, #168	; 0xa8
 8004944:	4631      	mov	r1, r6
 8004946:	9803      	ldr	r0, [sp, #12]
 8004948:	f003 fa48 	bl	8007ddc <__sprint_r>
 800494c:	2800      	cmp	r0, #0
 800494e:	f040 80a8 	bne.w	8004aa2 <_vfprintf_r+0xc02>
 8004952:	3d10      	subs	r5, #16
 8004954:	2d10      	cmp	r5, #16
 8004956:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800495a:	a92d      	add	r1, sp, #180	; 0xb4
 800495c:	dce8      	bgt.n	8004930 <_vfprintf_r+0xa90>
 800495e:	463e      	mov	r6, r7
 8004960:	4623      	mov	r3, r4
 8004962:	465f      	mov	r7, fp
 8004964:	4604      	mov	r4, r0
 8004966:	468b      	mov	fp, r1
 8004968:	3201      	adds	r2, #1
 800496a:	442c      	add	r4, r5
 800496c:	2a07      	cmp	r2, #7
 800496e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004972:	e9cb 3500 	strd	r3, r5, [fp]
 8004976:	f300 8292 	bgt.w	8004e9e <_vfprintf_r+0xffe>
 800497a:	f10b 0b08 	add.w	fp, fp, #8
 800497e:	e490      	b.n	80042a2 <_vfprintf_r+0x402>
 8004980:	aa2a      	add	r2, sp, #168	; 0xa8
 8004982:	9907      	ldr	r1, [sp, #28]
 8004984:	9803      	ldr	r0, [sp, #12]
 8004986:	f003 fa29 	bl	8007ddc <__sprint_r>
 800498a:	2800      	cmp	r0, #0
 800498c:	f43f ad23 	beq.w	80043d6 <_vfprintf_r+0x536>
 8004990:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004994:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004996:	b111      	cbz	r1, 800499e <_vfprintf_r+0xafe>
 8004998:	9803      	ldr	r0, [sp, #12]
 800499a:	f002 f9c1 	bl	8006d20 <_free_r>
 800499e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80049a2:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80049a6:	07d0      	lsls	r0, r2, #31
 80049a8:	d402      	bmi.n	80049b0 <_vfprintf_r+0xb10>
 80049aa:	0599      	lsls	r1, r3, #22
 80049ac:	f140 81d0 	bpl.w	8004d50 <_vfprintf_r+0xeb0>
 80049b0:	065a      	lsls	r2, r3, #25
 80049b2:	f53f ab65 	bmi.w	8004080 <_vfprintf_r+0x1e0>
 80049b6:	9805      	ldr	r0, [sp, #20]
 80049b8:	b057      	add	sp, #348	; 0x15c
 80049ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80049be:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80049c0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80049c2:	2a01      	cmp	r2, #1
 80049c4:	f104 0401 	add.w	r4, r4, #1
 80049c8:	f103 0501 	add.w	r5, r3, #1
 80049cc:	f10b 0608 	add.w	r6, fp, #8
 80049d0:	f340 811c 	ble.w	8004c0c <_vfprintf_r+0xd6c>
 80049d4:	2301      	movs	r3, #1
 80049d6:	2d07      	cmp	r5, #7
 80049d8:	f8cb 7000 	str.w	r7, [fp]
 80049dc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80049e0:	f8cb 3004 	str.w	r3, [fp, #4]
 80049e4:	f300 81bb 	bgt.w	8004d5e <_vfprintf_r+0xebe>
 80049e8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80049ea:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80049ec:	1c69      	adds	r1, r5, #1
 80049ee:	441c      	add	r4, r3
 80049f0:	2907      	cmp	r1, #7
 80049f2:	910b      	str	r1, [sp, #44]	; 0x2c
 80049f4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80049f8:	e9c6 2300 	strd	r2, r3, [r6]
 80049fc:	f300 81bb 	bgt.w	8004d76 <_vfprintf_r+0xed6>
 8004a00:	3608      	adds	r6, #8
 8004a02:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004a04:	1c53      	adds	r3, r2, #1
 8004a06:	461d      	mov	r5, r3
 8004a08:	9509      	str	r5, [sp, #36]	; 0x24
 8004a0a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8004a0c:	930e      	str	r3, [sp, #56]	; 0x38
 8004a0e:	2200      	movs	r2, #0
 8004a10:	2300      	movs	r3, #0
 8004a12:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004a16:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8004a1a:	f106 0b08 	add.w	fp, r6, #8
 8004a1e:	f7fc fb53 	bl	80010c8 <__aeabi_dcmpeq>
 8004a22:	2800      	cmp	r0, #0
 8004a24:	f040 80c2 	bne.w	8004bac <_vfprintf_r+0xd0c>
 8004a28:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8004a2a:	f8c6 9004 	str.w	r9, [r6, #4]
 8004a2e:	3701      	adds	r7, #1
 8004a30:	444c      	add	r4, r9
 8004a32:	2d07      	cmp	r5, #7
 8004a34:	6037      	str	r7, [r6, #0]
 8004a36:	942c      	str	r4, [sp, #176]	; 0xb0
 8004a38:	952b      	str	r5, [sp, #172]	; 0xac
 8004a3a:	f300 80f9 	bgt.w	8004c30 <_vfprintf_r+0xd90>
 8004a3e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004a40:	f106 0310 	add.w	r3, r6, #16
 8004a44:	3202      	adds	r2, #2
 8004a46:	465e      	mov	r6, fp
 8004a48:	9209      	str	r2, [sp, #36]	; 0x24
 8004a4a:	469b      	mov	fp, r3
 8004a4c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8004a4e:	6072      	str	r2, [r6, #4]
 8004a50:	4414      	add	r4, r2
 8004a52:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004a54:	942c      	str	r4, [sp, #176]	; 0xb0
 8004a56:	ab26      	add	r3, sp, #152	; 0x98
 8004a58:	2a07      	cmp	r2, #7
 8004a5a:	922b      	str	r2, [sp, #172]	; 0xac
 8004a5c:	6033      	str	r3, [r6, #0]
 8004a5e:	f77f ac70 	ble.w	8004342 <_vfprintf_r+0x4a2>
 8004a62:	aa2a      	add	r2, sp, #168	; 0xa8
 8004a64:	9907      	ldr	r1, [sp, #28]
 8004a66:	9803      	ldr	r0, [sp, #12]
 8004a68:	f003 f9b8 	bl	8007ddc <__sprint_r>
 8004a6c:	2800      	cmp	r0, #0
 8004a6e:	d18f      	bne.n	8004990 <_vfprintf_r+0xaf0>
 8004a70:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004a72:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004a76:	e464      	b.n	8004342 <_vfprintf_r+0x4a2>
 8004a78:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8004a7a:	af56      	add	r7, sp, #344	; 0x158
 8004a7c:	0923      	lsrs	r3, r4, #4
 8004a7e:	f004 010f 	and.w	r1, r4, #15
 8004a82:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8004a86:	092a      	lsrs	r2, r5, #4
 8004a88:	461c      	mov	r4, r3
 8004a8a:	4615      	mov	r5, r2
 8004a8c:	5c43      	ldrb	r3, [r0, r1]
 8004a8e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8004a92:	ea54 0305 	orrs.w	r3, r4, r5
 8004a96:	d1f1      	bne.n	8004a7c <_vfprintf_r+0xbdc>
 8004a98:	9b04      	ldr	r3, [sp, #16]
 8004a9a:	1bdb      	subs	r3, r3, r7
 8004a9c:	9309      	str	r3, [sp, #36]	; 0x24
 8004a9e:	f7ff bb80 	b.w	80041a2 <_vfprintf_r+0x302>
 8004aa2:	46b1      	mov	r9, r6
 8004aa4:	e776      	b.n	8004994 <_vfprintf_r+0xaf4>
 8004aa6:	aa2a      	add	r2, sp, #168	; 0xa8
 8004aa8:	9907      	ldr	r1, [sp, #28]
 8004aaa:	9803      	ldr	r0, [sp, #12]
 8004aac:	f003 f996 	bl	8007ddc <__sprint_r>
 8004ab0:	2800      	cmp	r0, #0
 8004ab2:	f47f af6d 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8004ab6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004ab8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004abc:	f7ff bbdd 	b.w	800427a <_vfprintf_r+0x3da>
 8004ac0:	aa2a      	add	r2, sp, #168	; 0xa8
 8004ac2:	9907      	ldr	r1, [sp, #28]
 8004ac4:	9803      	ldr	r0, [sp, #12]
 8004ac6:	f003 f989 	bl	8007ddc <__sprint_r>
 8004aca:	2800      	cmp	r0, #0
 8004acc:	f47f af60 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8004ad0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004ad2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004ad6:	f7ff bbe0 	b.w	800429a <_vfprintf_r+0x3fa>
 8004ada:	4698      	mov	r8, r3
 8004adc:	2d00      	cmp	r5, #0
 8004ade:	bf08      	it	eq
 8004ae0:	2c0a      	cmpeq	r4, #10
 8004ae2:	f080 8170 	bcs.w	8004dc6 <_vfprintf_r+0xf26>
 8004ae6:	af56      	add	r7, sp, #344	; 0x158
 8004ae8:	3430      	adds	r4, #48	; 0x30
 8004aea:	2301      	movs	r3, #1
 8004aec:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8004af0:	9309      	str	r3, [sp, #36]	; 0x24
 8004af2:	f7ff bb56 	b.w	80041a2 <_vfprintf_r+0x302>
 8004af6:	aa2a      	add	r2, sp, #168	; 0xa8
 8004af8:	9907      	ldr	r1, [sp, #28]
 8004afa:	9803      	ldr	r0, [sp, #12]
 8004afc:	f003 f96e 	bl	8007ddc <__sprint_r>
 8004b00:	2800      	cmp	r0, #0
 8004b02:	f47f af45 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8004b06:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004b08:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004b0c:	e406      	b.n	800431c <_vfprintf_r+0x47c>
 8004b0e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004b10:	2b00      	cmp	r3, #0
 8004b12:	f340 8273 	ble.w	8004ffc <_vfprintf_r+0x115c>
 8004b16:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8004b1a:	4293      	cmp	r3, r2
 8004b1c:	bfa8      	it	ge
 8004b1e:	4613      	movge	r3, r2
 8004b20:	2b00      	cmp	r3, #0
 8004b22:	461d      	mov	r5, r3
 8004b24:	dd0d      	ble.n	8004b42 <_vfprintf_r+0xca2>
 8004b26:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004b28:	f8cb 7000 	str.w	r7, [fp]
 8004b2c:	3301      	adds	r3, #1
 8004b2e:	442c      	add	r4, r5
 8004b30:	2b07      	cmp	r3, #7
 8004b32:	942c      	str	r4, [sp, #176]	; 0xb0
 8004b34:	f8cb 5004 	str.w	r5, [fp, #4]
 8004b38:	932b      	str	r3, [sp, #172]	; 0xac
 8004b3a:	f300 82c1 	bgt.w	80050c0 <_vfprintf_r+0x1220>
 8004b3e:	f10b 0b08 	add.w	fp, fp, #8
 8004b42:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004b44:	2d00      	cmp	r5, #0
 8004b46:	bfa8      	it	ge
 8004b48:	1b5b      	subge	r3, r3, r5
 8004b4a:	2b00      	cmp	r3, #0
 8004b4c:	461d      	mov	r5, r3
 8004b4e:	f340 8099 	ble.w	8004c84 <_vfprintf_r+0xde4>
 8004b52:	2d10      	cmp	r5, #16
 8004b54:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004b56:	4b2c      	ldr	r3, [pc, #176]	; (8004c08 <_vfprintf_r+0xd68>)
 8004b58:	f340 83db 	ble.w	8005312 <_vfprintf_r+0x1472>
 8004b5c:	4618      	mov	r0, r3
 8004b5e:	4621      	mov	r1, r4
 8004b60:	465b      	mov	r3, fp
 8004b62:	2610      	movs	r6, #16
 8004b64:	46bb      	mov	fp, r7
 8004b66:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004b6a:	9c07      	ldr	r4, [sp, #28]
 8004b6c:	4607      	mov	r7, r0
 8004b6e:	e004      	b.n	8004b7a <_vfprintf_r+0xcda>
 8004b70:	3308      	adds	r3, #8
 8004b72:	3d10      	subs	r5, #16
 8004b74:	2d10      	cmp	r5, #16
 8004b76:	f340 83c7 	ble.w	8005308 <_vfprintf_r+0x1468>
 8004b7a:	3201      	adds	r2, #1
 8004b7c:	3110      	adds	r1, #16
 8004b7e:	2a07      	cmp	r2, #7
 8004b80:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8004b84:	e9c3 7600 	strd	r7, r6, [r3]
 8004b88:	ddf2      	ble.n	8004b70 <_vfprintf_r+0xcd0>
 8004b8a:	aa2a      	add	r2, sp, #168	; 0xa8
 8004b8c:	4621      	mov	r1, r4
 8004b8e:	4648      	mov	r0, r9
 8004b90:	f003 f924 	bl	8007ddc <__sprint_r>
 8004b94:	2800      	cmp	r0, #0
 8004b96:	f040 84a5 	bne.w	80054e4 <_vfprintf_r+0x1644>
 8004b9a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8004b9e:	ab2d      	add	r3, sp, #180	; 0xb4
 8004ba0:	e7e7      	b.n	8004b72 <_vfprintf_r+0xcd2>
 8004ba2:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8004ba6:	af56      	add	r7, sp, #344	; 0x158
 8004ba8:	f7ff bafb 	b.w	80041a2 <_vfprintf_r+0x302>
 8004bac:	f1b9 0f00 	cmp.w	r9, #0
 8004bb0:	f77f af4c 	ble.w	8004a4c <_vfprintf_r+0xbac>
 8004bb4:	f1b9 0f10 	cmp.w	r9, #16
 8004bb8:	4b13      	ldr	r3, [pc, #76]	; (8004c08 <_vfprintf_r+0xd68>)
 8004bba:	f340 8659 	ble.w	8005870 <_vfprintf_r+0x19d0>
 8004bbe:	4619      	mov	r1, r3
 8004bc0:	4622      	mov	r2, r4
 8004bc2:	4633      	mov	r3, r6
 8004bc4:	2710      	movs	r7, #16
 8004bc6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8004bca:	9c07      	ldr	r4, [sp, #28]
 8004bcc:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8004bce:	460e      	mov	r6, r1
 8004bd0:	e007      	b.n	8004be2 <_vfprintf_r+0xd42>
 8004bd2:	3308      	adds	r3, #8
 8004bd4:	f1a9 0910 	sub.w	r9, r9, #16
 8004bd8:	f1b9 0f10 	cmp.w	r9, #16
 8004bdc:	f340 8353 	ble.w	8005286 <_vfprintf_r+0x13e6>
 8004be0:	3501      	adds	r5, #1
 8004be2:	3210      	adds	r2, #16
 8004be4:	2d07      	cmp	r5, #7
 8004be6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8004bea:	e9c3 6700 	strd	r6, r7, [r3]
 8004bee:	ddf0      	ble.n	8004bd2 <_vfprintf_r+0xd32>
 8004bf0:	aa2a      	add	r2, sp, #168	; 0xa8
 8004bf2:	4621      	mov	r1, r4
 8004bf4:	4658      	mov	r0, fp
 8004bf6:	f003 f8f1 	bl	8007ddc <__sprint_r>
 8004bfa:	2800      	cmp	r0, #0
 8004bfc:	f040 8472 	bne.w	80054e4 <_vfprintf_r+0x1644>
 8004c00:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8004c04:	ab2d      	add	r3, sp, #180	; 0xb4
 8004c06:	e7e5      	b.n	8004bd4 <_vfprintf_r+0xd34>
 8004c08:	08008b48 	.word	0x08008b48
 8004c0c:	f018 0f01 	tst.w	r8, #1
 8004c10:	f47f aee0 	bne.w	80049d4 <_vfprintf_r+0xb34>
 8004c14:	2201      	movs	r2, #1
 8004c16:	2d07      	cmp	r5, #7
 8004c18:	f8cb 7000 	str.w	r7, [fp]
 8004c1c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8004c20:	f8cb 2004 	str.w	r2, [fp, #4]
 8004c24:	dc04      	bgt.n	8004c30 <_vfprintf_r+0xd90>
 8004c26:	3302      	adds	r3, #2
 8004c28:	9309      	str	r3, [sp, #36]	; 0x24
 8004c2a:	f10b 0b10 	add.w	fp, fp, #16
 8004c2e:	e70d      	b.n	8004a4c <_vfprintf_r+0xbac>
 8004c30:	aa2a      	add	r2, sp, #168	; 0xa8
 8004c32:	9907      	ldr	r1, [sp, #28]
 8004c34:	9803      	ldr	r0, [sp, #12]
 8004c36:	f003 f8d1 	bl	8007ddc <__sprint_r>
 8004c3a:	2800      	cmp	r0, #0
 8004c3c:	f47f aea8 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8004c40:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8004c44:	3301      	adds	r3, #1
 8004c46:	9309      	str	r3, [sp, #36]	; 0x24
 8004c48:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8004c4c:	ae2d      	add	r6, sp, #180	; 0xb4
 8004c4e:	e6fd      	b.n	8004a4c <_vfprintf_r+0xbac>
 8004c50:	aa2a      	add	r2, sp, #168	; 0xa8
 8004c52:	9907      	ldr	r1, [sp, #28]
 8004c54:	9803      	ldr	r0, [sp, #12]
 8004c56:	f003 f8c1 	bl	8007ddc <__sprint_r>
 8004c5a:	2800      	cmp	r0, #0
 8004c5c:	f47f ae98 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8004c60:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004c64:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004c66:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004c6a:	f7ff baf6 	b.w	800425a <_vfprintf_r+0x3ba>
 8004c6e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004c70:	9907      	ldr	r1, [sp, #28]
 8004c72:	9803      	ldr	r0, [sp, #12]
 8004c74:	f003 f8b2 	bl	8007ddc <__sprint_r>
 8004c78:	2800      	cmp	r0, #0
 8004c7a:	f47f ae89 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8004c7e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004c80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004c84:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004c86:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8004c8a:	443b      	add	r3, r7
 8004c8c:	4699      	mov	r9, r3
 8004c8e:	f040 8357 	bne.w	8005340 <_vfprintf_r+0x14a0>
 8004c92:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004c94:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004c96:	4293      	cmp	r3, r2
 8004c98:	db49      	blt.n	8004d2e <_vfprintf_r+0xe8e>
 8004c9a:	f018 0f01 	tst.w	r8, #1
 8004c9e:	d146      	bne.n	8004d2e <_vfprintf_r+0xe8e>
 8004ca0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004ca2:	18bd      	adds	r5, r7, r2
 8004ca4:	eba5 0509 	sub.w	r5, r5, r9
 8004ca8:	1ad3      	subs	r3, r2, r3
 8004caa:	429d      	cmp	r5, r3
 8004cac:	bfa8      	it	ge
 8004cae:	461d      	movge	r5, r3
 8004cb0:	2d00      	cmp	r5, #0
 8004cb2:	dd0d      	ble.n	8004cd0 <_vfprintf_r+0xe30>
 8004cb4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004cb6:	f8cb 9000 	str.w	r9, [fp]
 8004cba:	3201      	adds	r2, #1
 8004cbc:	442c      	add	r4, r5
 8004cbe:	2a07      	cmp	r2, #7
 8004cc0:	942c      	str	r4, [sp, #176]	; 0xb0
 8004cc2:	f8cb 5004 	str.w	r5, [fp, #4]
 8004cc6:	922b      	str	r2, [sp, #172]	; 0xac
 8004cc8:	f300 8462 	bgt.w	8005590 <_vfprintf_r+0x16f0>
 8004ccc:	f10b 0b08 	add.w	fp, fp, #8
 8004cd0:	2d00      	cmp	r5, #0
 8004cd2:	bfac      	ite	ge
 8004cd4:	1b5d      	subge	r5, r3, r5
 8004cd6:	461d      	movlt	r5, r3
 8004cd8:	2d00      	cmp	r5, #0
 8004cda:	f77f ab32 	ble.w	8004342 <_vfprintf_r+0x4a2>
 8004cde:	2d10      	cmp	r5, #16
 8004ce0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004ce2:	4bc5      	ldr	r3, [pc, #788]	; (8004ff8 <_vfprintf_r+0x1158>)
 8004ce4:	f340 80c4 	ble.w	8004e70 <_vfprintf_r+0xfd0>
 8004ce8:	4619      	mov	r1, r3
 8004cea:	2610      	movs	r6, #16
 8004cec:	4623      	mov	r3, r4
 8004cee:	9f03      	ldr	r7, [sp, #12]
 8004cf0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004cf4:	460c      	mov	r4, r1
 8004cf6:	e005      	b.n	8004d04 <_vfprintf_r+0xe64>
 8004cf8:	f10b 0b08 	add.w	fp, fp, #8
 8004cfc:	3d10      	subs	r5, #16
 8004cfe:	2d10      	cmp	r5, #16
 8004d00:	f340 80b3 	ble.w	8004e6a <_vfprintf_r+0xfca>
 8004d04:	3201      	adds	r2, #1
 8004d06:	3310      	adds	r3, #16
 8004d08:	2a07      	cmp	r2, #7
 8004d0a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8004d0e:	e9cb 4600 	strd	r4, r6, [fp]
 8004d12:	ddf1      	ble.n	8004cf8 <_vfprintf_r+0xe58>
 8004d14:	aa2a      	add	r2, sp, #168	; 0xa8
 8004d16:	4649      	mov	r1, r9
 8004d18:	4638      	mov	r0, r7
 8004d1a:	f003 f85f 	bl	8007ddc <__sprint_r>
 8004d1e:	2800      	cmp	r0, #0
 8004d20:	f47f ae38 	bne.w	8004994 <_vfprintf_r+0xaf4>
 8004d24:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004d28:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004d2c:	e7e6      	b.n	8004cfc <_vfprintf_r+0xe5c>
 8004d2e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004d30:	9916      	ldr	r1, [sp, #88]	; 0x58
 8004d32:	f8cb 1000 	str.w	r1, [fp]
 8004d36:	9915      	ldr	r1, [sp, #84]	; 0x54
 8004d38:	f8cb 1004 	str.w	r1, [fp, #4]
 8004d3c:	3201      	adds	r2, #1
 8004d3e:	440c      	add	r4, r1
 8004d40:	2a07      	cmp	r2, #7
 8004d42:	942c      	str	r4, [sp, #176]	; 0xb0
 8004d44:	922b      	str	r2, [sp, #172]	; 0xac
 8004d46:	f300 828c 	bgt.w	8005262 <_vfprintf_r+0x13c2>
 8004d4a:	f10b 0b08 	add.w	fp, fp, #8
 8004d4e:	e7a7      	b.n	8004ca0 <_vfprintf_r+0xe00>
 8004d50:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004d54:	f002 f916 	bl	8006f84 <__retarget_lock_release_recursive>
 8004d58:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004d5c:	e628      	b.n	80049b0 <_vfprintf_r+0xb10>
 8004d5e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004d60:	9907      	ldr	r1, [sp, #28]
 8004d62:	9803      	ldr	r0, [sp, #12]
 8004d64:	f003 f83a 	bl	8007ddc <__sprint_r>
 8004d68:	2800      	cmp	r0, #0
 8004d6a:	f47f ae11 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8004d6e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8004d72:	ae2d      	add	r6, sp, #180	; 0xb4
 8004d74:	e638      	b.n	80049e8 <_vfprintf_r+0xb48>
 8004d76:	aa2a      	add	r2, sp, #168	; 0xa8
 8004d78:	9907      	ldr	r1, [sp, #28]
 8004d7a:	9803      	ldr	r0, [sp, #12]
 8004d7c:	f003 f82e 	bl	8007ddc <__sprint_r>
 8004d80:	2800      	cmp	r0, #0
 8004d82:	f47f ae05 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8004d86:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8004d8a:	ae2d      	add	r6, sp, #180	; 0xb4
 8004d8c:	930b      	str	r3, [sp, #44]	; 0x2c
 8004d8e:	e638      	b.n	8004a02 <_vfprintf_r+0xb62>
 8004d90:	6814      	ldr	r4, [r2, #0]
 8004d92:	9308      	str	r3, [sp, #32]
 8004d94:	2500      	movs	r5, #0
 8004d96:	f7ff bb95 	b.w	80044c4 <_vfprintf_r+0x624>
 8004d9a:	6814      	ldr	r4, [r2, #0]
 8004d9c:	9308      	str	r3, [sp, #32]
 8004d9e:	2500      	movs	r5, #0
 8004da0:	f7ff b9ae 	b.w	8004100 <_vfprintf_r+0x260>
 8004da4:	680c      	ldr	r4, [r1, #0]
 8004da6:	9208      	str	r2, [sp, #32]
 8004da8:	17e5      	asrs	r5, r4, #31
 8004daa:	4620      	mov	r0, r4
 8004dac:	4629      	mov	r1, r5
 8004dae:	f7ff b9d2 	b.w	8004156 <_vfprintf_r+0x2b6>
 8004db2:	6814      	ldr	r4, [r2, #0]
 8004db4:	9108      	str	r1, [sp, #32]
 8004db6:	2201      	movs	r2, #1
 8004db8:	2500      	movs	r5, #0
 8004dba:	f7ff bb32 	b.w	8004422 <_vfprintf_r+0x582>
 8004dbe:	2a01      	cmp	r2, #1
 8004dc0:	f47f ab3c 	bne.w	800443c <_vfprintf_r+0x59c>
 8004dc4:	e68f      	b.n	8004ae6 <_vfprintf_r+0xc46>
 8004dc6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8004dca:	2200      	movs	r2, #0
 8004dcc:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8004dd0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8004dd4:	af56      	add	r7, sp, #344	; 0x158
 8004dd6:	4692      	mov	sl, r2
 8004dd8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8004ddc:	461e      	mov	r6, r3
 8004dde:	e00a      	b.n	8004df6 <_vfprintf_r+0xf56>
 8004de0:	2300      	movs	r3, #0
 8004de2:	4620      	mov	r0, r4
 8004de4:	4629      	mov	r1, r5
 8004de6:	220a      	movs	r2, #10
 8004de8:	f7fb fa0a 	bl	8000200 <__aeabi_uldivmod>
 8004dec:	4604      	mov	r4, r0
 8004dee:	460d      	mov	r5, r1
 8004df0:	ea54 0305 	orrs.w	r3, r4, r5
 8004df4:	d029      	beq.n	8004e4a <_vfprintf_r+0xfaa>
 8004df6:	220a      	movs	r2, #10
 8004df8:	2300      	movs	r3, #0
 8004dfa:	4620      	mov	r0, r4
 8004dfc:	4629      	mov	r1, r5
 8004dfe:	f7fb f9ff 	bl	8000200 <__aeabi_uldivmod>
 8004e02:	3230      	adds	r2, #48	; 0x30
 8004e04:	f807 2c01 	strb.w	r2, [r7, #-1]
 8004e08:	f10a 0a01 	add.w	sl, sl, #1
 8004e0c:	3f01      	subs	r7, #1
 8004e0e:	2e00      	cmp	r6, #0
 8004e10:	d0e6      	beq.n	8004de0 <_vfprintf_r+0xf40>
 8004e12:	f898 3000 	ldrb.w	r3, [r8]
 8004e16:	459a      	cmp	sl, r3
 8004e18:	d1e2      	bne.n	8004de0 <_vfprintf_r+0xf40>
 8004e1a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8004e1e:	d0df      	beq.n	8004de0 <_vfprintf_r+0xf40>
 8004e20:	2d00      	cmp	r5, #0
 8004e22:	bf08      	it	eq
 8004e24:	2c0a      	cmpeq	r4, #10
 8004e26:	d3db      	bcc.n	8004de0 <_vfprintf_r+0xf40>
 8004e28:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004e2a:	9918      	ldr	r1, [sp, #96]	; 0x60
 8004e2c:	1aff      	subs	r7, r7, r3
 8004e2e:	461a      	mov	r2, r3
 8004e30:	4638      	mov	r0, r7
 8004e32:	f002 ff65 	bl	8007d00 <strncpy>
 8004e36:	f898 3001 	ldrb.w	r3, [r8, #1]
 8004e3a:	2b00      	cmp	r3, #0
 8004e3c:	f000 8496 	beq.w	800576c <_vfprintf_r+0x18cc>
 8004e40:	f108 0801 	add.w	r8, r8, #1
 8004e44:	f04f 0a00 	mov.w	sl, #0
 8004e48:	e7ca      	b.n	8004de0 <_vfprintf_r+0xf40>
 8004e4a:	9b04      	ldr	r3, [sp, #16]
 8004e4c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8004e50:	1bdb      	subs	r3, r3, r7
 8004e52:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8004e56:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8004e58:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004e5c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8004e60:	9309      	str	r3, [sp, #36]	; 0x24
 8004e62:	f7ff b99e 	b.w	80041a2 <_vfprintf_r+0x302>
 8004e66:	46c1      	mov	r9, r8
 8004e68:	e594      	b.n	8004994 <_vfprintf_r+0xaf4>
 8004e6a:	4621      	mov	r1, r4
 8004e6c:	461c      	mov	r4, r3
 8004e6e:	460b      	mov	r3, r1
 8004e70:	3201      	adds	r2, #1
 8004e72:	442c      	add	r4, r5
 8004e74:	2a07      	cmp	r2, #7
 8004e76:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004e7a:	e9cb 3500 	strd	r3, r5, [fp]
 8004e7e:	f77f aa5e 	ble.w	800433e <_vfprintf_r+0x49e>
 8004e82:	e5ee      	b.n	8004a62 <_vfprintf_r+0xbc2>
 8004e84:	f018 0f10 	tst.w	r8, #16
 8004e88:	f040 80f8 	bne.w	800507c <_vfprintf_r+0x11dc>
 8004e8c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8004e90:	f000 8351 	beq.w	8005536 <_vfprintf_r+0x1696>
 8004e94:	9a05      	ldr	r2, [sp, #20]
 8004e96:	801a      	strh	r2, [r3, #0]
 8004e98:	4657      	mov	r7, sl
 8004e9a:	f7ff baa7 	b.w	80043ec <_vfprintf_r+0x54c>
 8004e9e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004ea0:	9907      	ldr	r1, [sp, #28]
 8004ea2:	9803      	ldr	r0, [sp, #12]
 8004ea4:	f002 ff9a 	bl	8007ddc <__sprint_r>
 8004ea8:	2800      	cmp	r0, #0
 8004eaa:	f47f ad71 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8004eae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004eb0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004eb4:	f7ff b9f5 	b.w	80042a2 <_vfprintf_r+0x402>
 8004eb8:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004ebc:	4602      	mov	r2, r0
 8004ebe:	460b      	mov	r3, r1
 8004ec0:	f7fc f934 	bl	800112c <__aeabi_dcmpun>
 8004ec4:	2800      	cmp	r0, #0
 8004ec6:	f040 8491 	bne.w	80057ec <_vfprintf_r+0x194c>
 8004eca:	2e61      	cmp	r6, #97	; 0x61
 8004ecc:	f000 8111 	beq.w	80050f2 <_vfprintf_r+0x1252>
 8004ed0:	2e41      	cmp	r6, #65	; 0x41
 8004ed2:	f000 8377 	beq.w	80055c4 <_vfprintf_r+0x1724>
 8004ed6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8004eda:	f026 0220 	bic.w	r2, r6, #32
 8004ede:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004ee2:	930e      	str	r3, [sp, #56]	; 0x38
 8004ee4:	9204      	str	r2, [sp, #16]
 8004ee6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004ee8:	f000 842d 	beq.w	8005746 <_vfprintf_r+0x18a6>
 8004eec:	2a47      	cmp	r2, #71	; 0x47
 8004eee:	f000 8424 	beq.w	800573a <_vfprintf_r+0x189a>
 8004ef2:	2b00      	cmp	r3, #0
 8004ef4:	f2c0 82f9 	blt.w	80054ea <_vfprintf_r+0x164a>
 8004ef8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8004efc:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8004f00:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8004f04:	2e66      	cmp	r6, #102	; 0x66
 8004f06:	f000 83eb 	beq.w	80056e0 <_vfprintf_r+0x1840>
 8004f0a:	2e46      	cmp	r6, #70	; 0x46
 8004f0c:	f000 847e 	beq.w	800580c <_vfprintf_r+0x196c>
 8004f10:	9b04      	ldr	r3, [sp, #16]
 8004f12:	9803      	ldr	r0, [sp, #12]
 8004f14:	2b45      	cmp	r3, #69	; 0x45
 8004f16:	bf0c      	ite	eq
 8004f18:	f109 0501 	addeq.w	r5, r9, #1
 8004f1c:	464d      	movne	r5, r9
 8004f1e:	aa28      	add	r2, sp, #160	; 0xa0
 8004f20:	ab25      	add	r3, sp, #148	; 0x94
 8004f22:	e9cd 3200 	strd	r3, r2, [sp]
 8004f26:	2102      	movs	r1, #2
 8004f28:	ab24      	add	r3, sp, #144	; 0x90
 8004f2a:	462a      	mov	r2, r5
 8004f2c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004f30:	f000 fe3e 	bl	8005bb0 <_dtoa_r>
 8004f34:	2e67      	cmp	r6, #103	; 0x67
 8004f36:	4607      	mov	r7, r0
 8004f38:	f040 849c 	bne.w	8005874 <_vfprintf_r+0x19d4>
 8004f3c:	f018 0f01 	tst.w	r8, #1
 8004f40:	f040 83f9 	bne.w	8005736 <_vfprintf_r+0x1896>
 8004f44:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004f46:	4640      	mov	r0, r8
 8004f48:	1bdb      	subs	r3, r3, r7
 8004f4a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004f4e:	9310      	str	r3, [sp, #64]	; 0x40
 8004f50:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004f52:	9311      	str	r3, [sp, #68]	; 0x44
 8004f54:	9b04      	ldr	r3, [sp, #16]
 8004f56:	2b47      	cmp	r3, #71	; 0x47
 8004f58:	f000 81e7 	beq.w	800532a <_vfprintf_r+0x148a>
 8004f5c:	9b04      	ldr	r3, [sp, #16]
 8004f5e:	2b46      	cmp	r3, #70	; 0x46
 8004f60:	f000 8300 	beq.w	8005564 <_vfprintf_r+0x16c4>
 8004f64:	9904      	ldr	r1, [sp, #16]
 8004f66:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004f68:	b2f2      	uxtb	r2, r6
 8004f6a:	2941      	cmp	r1, #65	; 0x41
 8004f6c:	bf08      	it	eq
 8004f6e:	320f      	addeq	r2, #15
 8004f70:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8004f74:	bf06      	itte	eq
 8004f76:	b2d2      	uxtbeq	r2, r2
 8004f78:	2101      	moveq	r1, #1
 8004f7a:	2100      	movne	r1, #0
 8004f7c:	2b00      	cmp	r3, #0
 8004f7e:	9324      	str	r3, [sp, #144]	; 0x90
 8004f80:	bfb8      	it	lt
 8004f82:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8004f84:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8004f88:	bfba      	itte	lt
 8004f8a:	f1c3 0301 	rsblt	r3, r3, #1
 8004f8e:	222d      	movlt	r2, #45	; 0x2d
 8004f90:	222b      	movge	r2, #43	; 0x2b
 8004f92:	2b09      	cmp	r3, #9
 8004f94:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8004f98:	f300 83f9 	bgt.w	800578e <_vfprintf_r+0x18ee>
 8004f9c:	2900      	cmp	r1, #0
 8004f9e:	f040 8487 	bne.w	80058b0 <_vfprintf_r+0x1a10>
 8004fa2:	2230      	movs	r2, #48	; 0x30
 8004fa4:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8004fa8:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8004fac:	3330      	adds	r3, #48	; 0x30
 8004fae:	7013      	strb	r3, [r2, #0]
 8004fb0:	1c53      	adds	r3, r2, #1
 8004fb2:	aa26      	add	r2, sp, #152	; 0x98
 8004fb4:	1a9b      	subs	r3, r3, r2
 8004fb6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004fb8:	9319      	str	r3, [sp, #100]	; 0x64
 8004fba:	2a01      	cmp	r2, #1
 8004fbc:	4413      	add	r3, r2
 8004fbe:	9309      	str	r3, [sp, #36]	; 0x24
 8004fc0:	f340 8442 	ble.w	8005848 <_vfprintf_r+0x19a8>
 8004fc4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fc6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004fc8:	4413      	add	r3, r2
 8004fca:	9309      	str	r3, [sp, #36]	; 0x24
 8004fcc:	2300      	movs	r3, #0
 8004fce:	930f      	str	r3, [sp, #60]	; 0x3c
 8004fd0:	9314      	str	r3, [sp, #80]	; 0x50
 8004fd2:	9311      	str	r3, [sp, #68]	; 0x44
 8004fd4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fd6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8004fda:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004fde:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8004fe2:	9304      	str	r3, [sp, #16]
 8004fe4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004fe6:	2b00      	cmp	r3, #0
 8004fe8:	f040 8275 	bne.w	80054d6 <_vfprintf_r+0x1636>
 8004fec:	4699      	mov	r9, r3
 8004fee:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004ff2:	f7ff b8e2 	b.w	80041ba <_vfprintf_r+0x31a>
 8004ff6:	bf00      	nop
 8004ff8:	08008b48 	.word	0x08008b48
 8004ffc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004ffe:	49bd      	ldr	r1, [pc, #756]	; (80052f4 <_vfprintf_r+0x1454>)
 8005000:	f8cb 1000 	str.w	r1, [fp]
 8005004:	3201      	adds	r2, #1
 8005006:	3401      	adds	r4, #1
 8005008:	2101      	movs	r1, #1
 800500a:	2a07      	cmp	r2, #7
 800500c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005010:	f8cb 1004 	str.w	r1, [fp, #4]
 8005014:	dc60      	bgt.n	80050d8 <_vfprintf_r+0x1238>
 8005016:	f10b 0b08 	add.w	fp, fp, #8
 800501a:	b92b      	cbnz	r3, 8005028 <_vfprintf_r+0x1188>
 800501c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800501e:	b91a      	cbnz	r2, 8005028 <_vfprintf_r+0x1188>
 8005020:	f018 0f01 	tst.w	r8, #1
 8005024:	f43f a98d 	beq.w	8004342 <_vfprintf_r+0x4a2>
 8005028:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800502a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800502c:	f8cb 1000 	str.w	r1, [fp]
 8005030:	9915      	ldr	r1, [sp, #84]	; 0x54
 8005032:	f8cb 1004 	str.w	r1, [fp, #4]
 8005036:	3201      	adds	r2, #1
 8005038:	440c      	add	r4, r1
 800503a:	2a07      	cmp	r2, #7
 800503c:	942c      	str	r4, [sp, #176]	; 0xb0
 800503e:	922b      	str	r2, [sp, #172]	; 0xac
 8005040:	f300 8282 	bgt.w	8005548 <_vfprintf_r+0x16a8>
 8005044:	f10b 0b08 	add.w	fp, fp, #8
 8005048:	2b00      	cmp	r3, #0
 800504a:	f2c0 82e7 	blt.w	800561c <_vfprintf_r+0x177c>
 800504e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005050:	3201      	adds	r2, #1
 8005052:	441c      	add	r4, r3
 8005054:	2a07      	cmp	r2, #7
 8005056:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800505a:	e9cb 7300 	strd	r7, r3, [fp]
 800505e:	f77f a96e 	ble.w	800433e <_vfprintf_r+0x49e>
 8005062:	e4fe      	b.n	8004a62 <_vfprintf_r+0xbc2>
 8005064:	aa2a      	add	r2, sp, #168	; 0xa8
 8005066:	9907      	ldr	r1, [sp, #28]
 8005068:	9803      	ldr	r0, [sp, #12]
 800506a:	f002 feb7 	bl	8007ddc <__sprint_r>
 800506e:	2800      	cmp	r0, #0
 8005070:	f47f ac8e 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8005074:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005078:	f7ff bbf0 	b.w	800485c <_vfprintf_r+0x9bc>
 800507c:	9a05      	ldr	r2, [sp, #20]
 800507e:	601a      	str	r2, [r3, #0]
 8005080:	4657      	mov	r7, sl
 8005082:	f7ff b9b3 	b.w	80043ec <_vfprintf_r+0x54c>
 8005086:	8814      	ldrh	r4, [r2, #0]
 8005088:	9108      	str	r1, [sp, #32]
 800508a:	2500      	movs	r5, #0
 800508c:	2201      	movs	r2, #1
 800508e:	f7ff b9c8 	b.w	8004422 <_vfprintf_r+0x582>
 8005092:	8814      	ldrh	r4, [r2, #0]
 8005094:	9308      	str	r3, [sp, #32]
 8005096:	2500      	movs	r5, #0
 8005098:	f7ff ba14 	b.w	80044c4 <_vfprintf_r+0x624>
 800509c:	f9b1 4000 	ldrsh.w	r4, [r1]
 80050a0:	9208      	str	r2, [sp, #32]
 80050a2:	17e5      	asrs	r5, r4, #31
 80050a4:	4620      	mov	r0, r4
 80050a6:	4629      	mov	r1, r5
 80050a8:	f7ff b855 	b.w	8004156 <_vfprintf_r+0x2b6>
 80050ac:	8814      	ldrh	r4, [r2, #0]
 80050ae:	9308      	str	r3, [sp, #32]
 80050b0:	2500      	movs	r5, #0
 80050b2:	f7ff b825 	b.w	8004100 <_vfprintf_r+0x260>
 80050b6:	222d      	movs	r2, #45	; 0x2d
 80050b8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80050bc:	f7ff baa2 	b.w	8004604 <_vfprintf_r+0x764>
 80050c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80050c2:	9907      	ldr	r1, [sp, #28]
 80050c4:	9803      	ldr	r0, [sp, #12]
 80050c6:	f002 fe89 	bl	8007ddc <__sprint_r>
 80050ca:	2800      	cmp	r0, #0
 80050cc:	f47f ac60 	bne.w	8004990 <_vfprintf_r+0xaf0>
 80050d0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80050d2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80050d6:	e534      	b.n	8004b42 <_vfprintf_r+0xca2>
 80050d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80050da:	9907      	ldr	r1, [sp, #28]
 80050dc:	9803      	ldr	r0, [sp, #12]
 80050de:	f002 fe7d 	bl	8007ddc <__sprint_r>
 80050e2:	2800      	cmp	r0, #0
 80050e4:	f47f ac54 	bne.w	8004990 <_vfprintf_r+0xaf0>
 80050e8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80050ea:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80050ec:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80050f0:	e793      	b.n	800501a <_vfprintf_r+0x117a>
 80050f2:	2330      	movs	r3, #48	; 0x30
 80050f4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80050f8:	2378      	movs	r3, #120	; 0x78
 80050fa:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80050fe:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8005102:	f048 0402 	orr.w	r4, r8, #2
 8005106:	f300 82b0 	bgt.w	800566a <_vfprintf_r+0x17ca>
 800510a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800510e:	930e      	str	r3, [sp, #56]	; 0x38
 8005110:	f026 0320 	bic.w	r3, r6, #32
 8005114:	9304      	str	r3, [sp, #16]
 8005116:	2200      	movs	r2, #0
 8005118:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800511a:	920a      	str	r2, [sp, #40]	; 0x28
 800511c:	46a0      	mov	r8, r4
 800511e:	af3d      	add	r7, sp, #244	; 0xf4
 8005120:	2b00      	cmp	r3, #0
 8005122:	f2c0 81e3 	blt.w	80054ec <_vfprintf_r+0x164c>
 8005126:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800512a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800512e:	2300      	movs	r3, #0
 8005130:	930b      	str	r3, [sp, #44]	; 0x2c
 8005132:	2e61      	cmp	r6, #97	; 0x61
 8005134:	f000 8255 	beq.w	80055e2 <_vfprintf_r+0x1742>
 8005138:	2e41      	cmp	r6, #65	; 0x41
 800513a:	f47f aee3 	bne.w	8004f04 <_vfprintf_r+0x1064>
 800513e:	a824      	add	r0, sp, #144	; 0x90
 8005140:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005144:	f002 fd52 	bl	8007bec <frexp>
 8005148:	2200      	movs	r2, #0
 800514a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800514e:	ec51 0b10 	vmov	r0, r1, d0
 8005152:	f7fb fd51 	bl	8000bf8 <__aeabi_dmul>
 8005156:	2200      	movs	r2, #0
 8005158:	2300      	movs	r3, #0
 800515a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800515e:	f7fb ffb3 	bl	80010c8 <__aeabi_dcmpeq>
 8005162:	2800      	cmp	r0, #0
 8005164:	f040 8305 	bne.w	8005772 <_vfprintf_r+0x18d2>
 8005168:	4b63      	ldr	r3, [pc, #396]	; (80052f8 <_vfprintf_r+0x1458>)
 800516a:	9309      	str	r3, [sp, #36]	; 0x24
 800516c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8005170:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8005174:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8005178:	9721      	str	r7, [sp, #132]	; 0x84
 800517a:	46b9      	mov	r9, r7
 800517c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8005180:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8005184:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8005188:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800518c:	e003      	b.n	8005196 <_vfprintf_r+0x12f6>
 800518e:	f7fb ff9b 	bl	80010c8 <__aeabi_dcmpeq>
 8005192:	bb20      	cbnz	r0, 80051de <_vfprintf_r+0x133e>
 8005194:	46a9      	mov	r9, r5
 8005196:	2200      	movs	r2, #0
 8005198:	4b58      	ldr	r3, [pc, #352]	; (80052fc <_vfprintf_r+0x145c>)
 800519a:	4630      	mov	r0, r6
 800519c:	4639      	mov	r1, r7
 800519e:	f7fb fd2b 	bl	8000bf8 <__aeabi_dmul>
 80051a2:	460f      	mov	r7, r1
 80051a4:	4606      	mov	r6, r0
 80051a6:	f7fb ffd7 	bl	8001158 <__aeabi_d2iz>
 80051aa:	4680      	mov	r8, r0
 80051ac:	f7fb fcba 	bl	8000b24 <__aeabi_i2d>
 80051b0:	4602      	mov	r2, r0
 80051b2:	460b      	mov	r3, r1
 80051b4:	4630      	mov	r0, r6
 80051b6:	4639      	mov	r1, r7
 80051b8:	f7fb fb66 	bl	8000888 <__aeabi_dsub>
 80051bc:	464d      	mov	r5, r9
 80051be:	f81a c008 	ldrb.w	ip, [sl, r8]
 80051c2:	f805 cb01 	strb.w	ip, [r5], #1
 80051c6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80051ca:	46a3      	mov	fp, r4
 80051cc:	4606      	mov	r6, r0
 80051ce:	460f      	mov	r7, r1
 80051d0:	f04f 0200 	mov.w	r2, #0
 80051d4:	f04f 0300 	mov.w	r3, #0
 80051d8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80051dc:	d1d7      	bne.n	800518e <_vfprintf_r+0x12ee>
 80051de:	4630      	mov	r0, r6
 80051e0:	4639      	mov	r1, r7
 80051e2:	2200      	movs	r2, #0
 80051e4:	4b46      	ldr	r3, [pc, #280]	; (8005300 <_vfprintf_r+0x1460>)
 80051e6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80051ea:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80051ec:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80051f0:	4644      	mov	r4, r8
 80051f2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80051f6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80051fa:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80051fe:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8005202:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8005204:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8005208:	f7fb ff86 	bl	8001118 <__aeabi_dcmpgt>
 800520c:	2800      	cmp	r0, #0
 800520e:	f040 8176 	bne.w	80054fe <_vfprintf_r+0x165e>
 8005212:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8005216:	2200      	movs	r2, #0
 8005218:	4b39      	ldr	r3, [pc, #228]	; (8005300 <_vfprintf_r+0x1460>)
 800521a:	f7fb ff55 	bl	80010c8 <__aeabi_dcmpeq>
 800521e:	b110      	cbz	r0, 8005226 <_vfprintf_r+0x1386>
 8005220:	07e2      	lsls	r2, r4, #31
 8005222:	f100 816c 	bmi.w	80054fe <_vfprintf_r+0x165e>
 8005226:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005228:	2b00      	cmp	r3, #0
 800522a:	db07      	blt.n	800523c <_vfprintf_r+0x139c>
 800522c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800522e:	3301      	adds	r3, #1
 8005230:	442b      	add	r3, r5
 8005232:	2230      	movs	r2, #48	; 0x30
 8005234:	f805 2b01 	strb.w	r2, [r5], #1
 8005238:	42ab      	cmp	r3, r5
 800523a:	d1fb      	bne.n	8005234 <_vfprintf_r+0x1394>
 800523c:	1beb      	subs	r3, r5, r7
 800523e:	4640      	mov	r0, r8
 8005240:	9310      	str	r3, [sp, #64]	; 0x40
 8005242:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8005246:	e683      	b.n	8004f50 <_vfprintf_r+0x10b0>
 8005248:	f8cd 9010 	str.w	r9, [sp, #16]
 800524c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8005250:	9408      	str	r4, [sp, #32]
 8005252:	4681      	mov	r9, r0
 8005254:	900f      	str	r0, [sp, #60]	; 0x3c
 8005256:	9014      	str	r0, [sp, #80]	; 0x50
 8005258:	9011      	str	r0, [sp, #68]	; 0x44
 800525a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800525e:	f7fe bfac 	b.w	80041ba <_vfprintf_r+0x31a>
 8005262:	aa2a      	add	r2, sp, #168	; 0xa8
 8005264:	9907      	ldr	r1, [sp, #28]
 8005266:	9803      	ldr	r0, [sp, #12]
 8005268:	f002 fdb8 	bl	8007ddc <__sprint_r>
 800526c:	2800      	cmp	r0, #0
 800526e:	f47f ab8f 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8005272:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005274:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005276:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800527a:	e511      	b.n	8004ca0 <_vfprintf_r+0xe00>
 800527c:	4252      	negs	r2, r2
 800527e:	9206      	str	r2, [sp, #24]
 8005280:	9308      	str	r3, [sp, #32]
 8005282:	f7ff b96d 	b.w	8004560 <_vfprintf_r+0x6c0>
 8005286:	4614      	mov	r4, r2
 8005288:	4632      	mov	r2, r6
 800528a:	461e      	mov	r6, r3
 800528c:	4613      	mov	r3, r2
 800528e:	462a      	mov	r2, r5
 8005290:	3201      	adds	r2, #1
 8005292:	9209      	str	r2, [sp, #36]	; 0x24
 8005294:	f106 0208 	add.w	r2, r6, #8
 8005298:	e9c6 3900 	strd	r3, r9, [r6]
 800529c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800529e:	932b      	str	r3, [sp, #172]	; 0xac
 80052a0:	444c      	add	r4, r9
 80052a2:	2b07      	cmp	r3, #7
 80052a4:	942c      	str	r4, [sp, #176]	; 0xb0
 80052a6:	f73f acc3 	bgt.w	8004c30 <_vfprintf_r+0xd90>
 80052aa:	3301      	adds	r3, #1
 80052ac:	9309      	str	r3, [sp, #36]	; 0x24
 80052ae:	f102 0b08 	add.w	fp, r2, #8
 80052b2:	4616      	mov	r6, r2
 80052b4:	f7ff bbca 	b.w	8004a4c <_vfprintf_r+0xbac>
 80052b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80052ba:	9907      	ldr	r1, [sp, #28]
 80052bc:	9803      	ldr	r0, [sp, #12]
 80052be:	f002 fd8d 	bl	8007ddc <__sprint_r>
 80052c2:	2800      	cmp	r0, #0
 80052c4:	f47f ab64 	bne.w	8004990 <_vfprintf_r+0xaf0>
 80052c8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80052ca:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80052ce:	f7ff bade 	b.w	800488e <_vfprintf_r+0x9ee>
 80052d2:	464b      	mov	r3, r9
 80052d4:	2b06      	cmp	r3, #6
 80052d6:	bf28      	it	cs
 80052d8:	2306      	movcs	r3, #6
 80052da:	46b9      	mov	r9, r7
 80052dc:	970f      	str	r7, [sp, #60]	; 0x3c
 80052de:	9714      	str	r7, [sp, #80]	; 0x50
 80052e0:	9711      	str	r7, [sp, #68]	; 0x44
 80052e2:	970a      	str	r7, [sp, #40]	; 0x28
 80052e4:	463a      	mov	r2, r7
 80052e6:	9304      	str	r3, [sp, #16]
 80052e8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80052ec:	4f05      	ldr	r7, [pc, #20]	; (8005304 <_vfprintf_r+0x1464>)
 80052ee:	f7fe bf64 	b.w	80041ba <_vfprintf_r+0x31a>
 80052f2:	bf00      	nop
 80052f4:	08008b34 	.word	0x08008b34
 80052f8:	08008b18 	.word	0x08008b18
 80052fc:	40300000 	.word	0x40300000
 8005300:	3fe00000 	.word	0x3fe00000
 8005304:	08008b2c 	.word	0x08008b2c
 8005308:	460c      	mov	r4, r1
 800530a:	4639      	mov	r1, r7
 800530c:	465f      	mov	r7, fp
 800530e:	469b      	mov	fp, r3
 8005310:	460b      	mov	r3, r1
 8005312:	3201      	adds	r2, #1
 8005314:	442c      	add	r4, r5
 8005316:	2a07      	cmp	r2, #7
 8005318:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800531c:	e9cb 3500 	strd	r3, r5, [fp]
 8005320:	f73f aca5 	bgt.w	8004c6e <_vfprintf_r+0xdce>
 8005324:	f10b 0b08 	add.w	fp, fp, #8
 8005328:	e4ac      	b.n	8004c84 <_vfprintf_r+0xde4>
 800532a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800532c:	1cda      	adds	r2, r3, #3
 800532e:	db02      	blt.n	8005336 <_vfprintf_r+0x1496>
 8005330:	4599      	cmp	r9, r3
 8005332:	f280 80b5 	bge.w	80054a0 <_vfprintf_r+0x1600>
 8005336:	3e02      	subs	r6, #2
 8005338:	f026 0320 	bic.w	r3, r6, #32
 800533c:	9304      	str	r3, [sp, #16]
 800533e:	e611      	b.n	8004f64 <_vfprintf_r+0x10c4>
 8005340:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005342:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8005346:	465a      	mov	r2, fp
 8005348:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800534c:	18fb      	adds	r3, r7, r3
 800534e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8005352:	970c      	str	r7, [sp, #48]	; 0x30
 8005354:	4eaf      	ldr	r6, [pc, #700]	; (8005614 <_vfprintf_r+0x1774>)
 8005356:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800535a:	9309      	str	r3, [sp, #36]	; 0x24
 800535c:	464f      	mov	r7, r9
 800535e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005362:	4621      	mov	r1, r4
 8005364:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8005366:	2b00      	cmp	r3, #0
 8005368:	d05b      	beq.n	8005422 <_vfprintf_r+0x1582>
 800536a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800536c:	2b00      	cmp	r3, #0
 800536e:	d154      	bne.n	800541a <_vfprintf_r+0x157a>
 8005370:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8005372:	3b01      	subs	r3, #1
 8005374:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8005378:	9314      	str	r3, [sp, #80]	; 0x50
 800537a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800537c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800537e:	6010      	str	r0, [r2, #0]
 8005380:	3301      	adds	r3, #1
 8005382:	4459      	add	r1, fp
 8005384:	2b07      	cmp	r3, #7
 8005386:	912c      	str	r1, [sp, #176]	; 0xb0
 8005388:	f8c2 b004 	str.w	fp, [r2, #4]
 800538c:	932b      	str	r3, [sp, #172]	; 0xac
 800538e:	dc68      	bgt.n	8005462 <_vfprintf_r+0x15c2>
 8005390:	3208      	adds	r2, #8
 8005392:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005394:	f898 3000 	ldrb.w	r3, [r8]
 8005398:	1bc5      	subs	r5, r0, r7
 800539a:	429d      	cmp	r5, r3
 800539c:	bfa8      	it	ge
 800539e:	461d      	movge	r5, r3
 80053a0:	2d00      	cmp	r5, #0
 80053a2:	dd0b      	ble.n	80053bc <_vfprintf_r+0x151c>
 80053a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80053a6:	6017      	str	r7, [r2, #0]
 80053a8:	3301      	adds	r3, #1
 80053aa:	4429      	add	r1, r5
 80053ac:	2b07      	cmp	r3, #7
 80053ae:	912c      	str	r1, [sp, #176]	; 0xb0
 80053b0:	6055      	str	r5, [r2, #4]
 80053b2:	932b      	str	r3, [sp, #172]	; 0xac
 80053b4:	dc5e      	bgt.n	8005474 <_vfprintf_r+0x15d4>
 80053b6:	f898 3000 	ldrb.w	r3, [r8]
 80053ba:	3208      	adds	r2, #8
 80053bc:	2d00      	cmp	r5, #0
 80053be:	bfac      	ite	ge
 80053c0:	1b5d      	subge	r5, r3, r5
 80053c2:	461d      	movlt	r5, r3
 80053c4:	2d00      	cmp	r5, #0
 80053c6:	dd26      	ble.n	8005416 <_vfprintf_r+0x1576>
 80053c8:	2d10      	cmp	r5, #16
 80053ca:	982b      	ldr	r0, [sp, #172]	; 0xac
 80053cc:	dd3c      	ble.n	8005448 <_vfprintf_r+0x15a8>
 80053ce:	2410      	movs	r4, #16
 80053d0:	e003      	b.n	80053da <_vfprintf_r+0x153a>
 80053d2:	3208      	adds	r2, #8
 80053d4:	3d10      	subs	r5, #16
 80053d6:	2d10      	cmp	r5, #16
 80053d8:	dd36      	ble.n	8005448 <_vfprintf_r+0x15a8>
 80053da:	3001      	adds	r0, #1
 80053dc:	3110      	adds	r1, #16
 80053de:	2807      	cmp	r0, #7
 80053e0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80053e4:	e9c2 6400 	strd	r6, r4, [r2]
 80053e8:	ddf3      	ble.n	80053d2 <_vfprintf_r+0x1532>
 80053ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80053ec:	4651      	mov	r1, sl
 80053ee:	4648      	mov	r0, r9
 80053f0:	f002 fcf4 	bl	8007ddc <__sprint_r>
 80053f4:	2800      	cmp	r0, #0
 80053f6:	d150      	bne.n	800549a <_vfprintf_r+0x15fa>
 80053f8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80053fc:	aa2d      	add	r2, sp, #180	; 0xb4
 80053fe:	e7e9      	b.n	80053d4 <_vfprintf_r+0x1534>
 8005400:	aa2a      	add	r2, sp, #168	; 0xa8
 8005402:	4651      	mov	r1, sl
 8005404:	4648      	mov	r0, r9
 8005406:	f002 fce9 	bl	8007ddc <__sprint_r>
 800540a:	2800      	cmp	r0, #0
 800540c:	d145      	bne.n	800549a <_vfprintf_r+0x15fa>
 800540e:	f898 3000 	ldrb.w	r3, [r8]
 8005412:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8005414:	aa2d      	add	r2, sp, #180	; 0xb4
 8005416:	441f      	add	r7, r3
 8005418:	e7a4      	b.n	8005364 <_vfprintf_r+0x14c4>
 800541a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800541c:	3b01      	subs	r3, #1
 800541e:	930f      	str	r3, [sp, #60]	; 0x3c
 8005420:	e7ab      	b.n	800537a <_vfprintf_r+0x14da>
 8005422:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005424:	2b00      	cmp	r3, #0
 8005426:	d1f8      	bne.n	800541a <_vfprintf_r+0x157a>
 8005428:	46b9      	mov	r9, r7
 800542a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800542c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800542e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8005432:	18fb      	adds	r3, r7, r3
 8005434:	4599      	cmp	r9, r3
 8005436:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800543a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800543e:	4693      	mov	fp, r2
 8005440:	460c      	mov	r4, r1
 8005442:	bf28      	it	cs
 8005444:	4699      	movcs	r9, r3
 8005446:	e424      	b.n	8004c92 <_vfprintf_r+0xdf2>
 8005448:	3001      	adds	r0, #1
 800544a:	4429      	add	r1, r5
 800544c:	2807      	cmp	r0, #7
 800544e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8005452:	e9c2 6500 	strd	r6, r5, [r2]
 8005456:	dcd3      	bgt.n	8005400 <_vfprintf_r+0x1560>
 8005458:	f898 3000 	ldrb.w	r3, [r8]
 800545c:	3208      	adds	r2, #8
 800545e:	441f      	add	r7, r3
 8005460:	e780      	b.n	8005364 <_vfprintf_r+0x14c4>
 8005462:	aa2a      	add	r2, sp, #168	; 0xa8
 8005464:	4651      	mov	r1, sl
 8005466:	4648      	mov	r0, r9
 8005468:	f002 fcb8 	bl	8007ddc <__sprint_r>
 800546c:	b9a8      	cbnz	r0, 800549a <_vfprintf_r+0x15fa>
 800546e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8005470:	aa2d      	add	r2, sp, #180	; 0xb4
 8005472:	e78e      	b.n	8005392 <_vfprintf_r+0x14f2>
 8005474:	aa2a      	add	r2, sp, #168	; 0xa8
 8005476:	4651      	mov	r1, sl
 8005478:	4648      	mov	r0, r9
 800547a:	f002 fcaf 	bl	8007ddc <__sprint_r>
 800547e:	b960      	cbnz	r0, 800549a <_vfprintf_r+0x15fa>
 8005480:	f898 3000 	ldrb.w	r3, [r8]
 8005484:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8005486:	aa2d      	add	r2, sp, #180	; 0xb4
 8005488:	e798      	b.n	80053bc <_vfprintf_r+0x151c>
 800548a:	4638      	mov	r0, r7
 800548c:	f7fb f938 	bl	8000700 <strlen>
 8005490:	46a9      	mov	r9, r5
 8005492:	4603      	mov	r3, r0
 8005494:	9009      	str	r0, [sp, #36]	; 0x24
 8005496:	f7ff b8f4 	b.w	8004682 <_vfprintf_r+0x7e2>
 800549a:	46d1      	mov	r9, sl
 800549c:	f7ff ba7a 	b.w	8004994 <_vfprintf_r+0xaf4>
 80054a0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80054a2:	4619      	mov	r1, r3
 80054a4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80054a6:	4299      	cmp	r1, r3
 80054a8:	f300 8082 	bgt.w	80055b0 <_vfprintf_r+0x1710>
 80054ac:	07c4      	lsls	r4, r0, #31
 80054ae:	f140 816b 	bpl.w	8005788 <_vfprintf_r+0x18e8>
 80054b2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80054b4:	4413      	add	r3, r2
 80054b6:	9309      	str	r3, [sp, #36]	; 0x24
 80054b8:	0541      	lsls	r1, r0, #21
 80054ba:	d503      	bpl.n	80054c4 <_vfprintf_r+0x1624>
 80054bc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80054be:	2b00      	cmp	r3, #0
 80054c0:	f300 80e6 	bgt.w	8005690 <_vfprintf_r+0x17f0>
 80054c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80054c6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80054ca:	9304      	str	r3, [sp, #16]
 80054cc:	2667      	movs	r6, #103	; 0x67
 80054ce:	2300      	movs	r3, #0
 80054d0:	930f      	str	r3, [sp, #60]	; 0x3c
 80054d2:	9314      	str	r3, [sp, #80]	; 0x50
 80054d4:	e586      	b.n	8004fe4 <_vfprintf_r+0x1144>
 80054d6:	222d      	movs	r2, #45	; 0x2d
 80054d8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80054dc:	f04f 0900 	mov.w	r9, #0
 80054e0:	f7fe be6c 	b.w	80041bc <_vfprintf_r+0x31c>
 80054e4:	46a1      	mov	r9, r4
 80054e6:	f7ff ba55 	b.w	8004994 <_vfprintf_r+0xaf4>
 80054ea:	900a      	str	r0, [sp, #40]	; 0x28
 80054ec:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80054f0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80054f4:	931f      	str	r3, [sp, #124]	; 0x7c
 80054f6:	232d      	movs	r3, #45	; 0x2d
 80054f8:	911e      	str	r1, [sp, #120]	; 0x78
 80054fa:	930b      	str	r3, [sp, #44]	; 0x2c
 80054fc:	e619      	b.n	8005132 <_vfprintf_r+0x1292>
 80054fe:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005500:	9328      	str	r3, [sp, #160]	; 0xa0
 8005502:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005504:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8005508:	7bd9      	ldrb	r1, [r3, #15]
 800550a:	4291      	cmp	r1, r2
 800550c:	462b      	mov	r3, r5
 800550e:	d109      	bne.n	8005524 <_vfprintf_r+0x1684>
 8005510:	2030      	movs	r0, #48	; 0x30
 8005512:	f803 0c01 	strb.w	r0, [r3, #-1]
 8005516:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005518:	1e5a      	subs	r2, r3, #1
 800551a:	9228      	str	r2, [sp, #160]	; 0xa0
 800551c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005520:	4291      	cmp	r1, r2
 8005522:	d0f6      	beq.n	8005512 <_vfprintf_r+0x1672>
 8005524:	2a39      	cmp	r2, #57	; 0x39
 8005526:	bf0b      	itete	eq
 8005528:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 800552a:	3201      	addne	r2, #1
 800552c:	7a92      	ldrbeq	r2, [r2, #10]
 800552e:	b2d2      	uxtbne	r2, r2
 8005530:	f803 2c01 	strb.w	r2, [r3, #-1]
 8005534:	e682      	b.n	800523c <_vfprintf_r+0x139c>
 8005536:	f418 7f00 	tst.w	r8, #512	; 0x200
 800553a:	f43f ad9f 	beq.w	800507c <_vfprintf_r+0x11dc>
 800553e:	9a05      	ldr	r2, [sp, #20]
 8005540:	701a      	strb	r2, [r3, #0]
 8005542:	4657      	mov	r7, sl
 8005544:	f7fe bf52 	b.w	80043ec <_vfprintf_r+0x54c>
 8005548:	aa2a      	add	r2, sp, #168	; 0xa8
 800554a:	9907      	ldr	r1, [sp, #28]
 800554c:	9803      	ldr	r0, [sp, #12]
 800554e:	f002 fc45 	bl	8007ddc <__sprint_r>
 8005552:	2800      	cmp	r0, #0
 8005554:	f47f aa1c 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8005558:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800555a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800555e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005562:	e571      	b.n	8005048 <_vfprintf_r+0x11a8>
 8005564:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005566:	2b00      	cmp	r3, #0
 8005568:	f340 8164 	ble.w	8005834 <_vfprintf_r+0x1994>
 800556c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800556e:	f1b9 0f00 	cmp.w	r9, #0
 8005572:	f040 8103 	bne.w	800577c <_vfprintf_r+0x18dc>
 8005576:	07c6      	lsls	r6, r0, #31
 8005578:	f100 8100 	bmi.w	800577c <_vfprintf_r+0x18dc>
 800557c:	9309      	str	r3, [sp, #36]	; 0x24
 800557e:	2666      	movs	r6, #102	; 0x66
 8005580:	0543      	lsls	r3, r0, #21
 8005582:	f100 8086 	bmi.w	8005692 <_vfprintf_r+0x17f2>
 8005586:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005588:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800558c:	9304      	str	r3, [sp, #16]
 800558e:	e79e      	b.n	80054ce <_vfprintf_r+0x162e>
 8005590:	aa2a      	add	r2, sp, #168	; 0xa8
 8005592:	9907      	ldr	r1, [sp, #28]
 8005594:	9803      	ldr	r0, [sp, #12]
 8005596:	f002 fc21 	bl	8007ddc <__sprint_r>
 800559a:	2800      	cmp	r0, #0
 800559c:	f47f a9f8 	bne.w	8004990 <_vfprintf_r+0xaf0>
 80055a0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80055a2:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80055a4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80055a6:	1ad3      	subs	r3, r2, r3
 80055a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80055ac:	f7ff bb90 	b.w	8004cd0 <_vfprintf_r+0xe30>
 80055b0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80055b2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80055b4:	4413      	add	r3, r2
 80055b6:	9309      	str	r3, [sp, #36]	; 0x24
 80055b8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80055ba:	2b00      	cmp	r3, #0
 80055bc:	f340 8149 	ble.w	8005852 <_vfprintf_r+0x19b2>
 80055c0:	2667      	movs	r6, #103	; 0x67
 80055c2:	e7dd      	b.n	8005580 <_vfprintf_r+0x16e0>
 80055c4:	2330      	movs	r3, #48	; 0x30
 80055c6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80055ca:	2358      	movs	r3, #88	; 0x58
 80055cc:	e595      	b.n	80050fa <_vfprintf_r+0x125a>
 80055ce:	9803      	ldr	r0, [sp, #12]
 80055d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80055d2:	4649      	mov	r1, r9
 80055d4:	f002 fc02 	bl	8007ddc <__sprint_r>
 80055d8:	2800      	cmp	r0, #0
 80055da:	f47f a9e0 	bne.w	800499e <_vfprintf_r+0xafe>
 80055de:	f7fe bf0f 	b.w	8004400 <_vfprintf_r+0x560>
 80055e2:	a824      	add	r0, sp, #144	; 0x90
 80055e4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80055e8:	f002 fb00 	bl	8007bec <frexp>
 80055ec:	2200      	movs	r2, #0
 80055ee:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80055f2:	ec51 0b10 	vmov	r0, r1, d0
 80055f6:	f7fb faff 	bl	8000bf8 <__aeabi_dmul>
 80055fa:	2200      	movs	r2, #0
 80055fc:	2300      	movs	r3, #0
 80055fe:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8005602:	f7fb fd61 	bl	80010c8 <__aeabi_dcmpeq>
 8005606:	b108      	cbz	r0, 800560c <_vfprintf_r+0x176c>
 8005608:	2301      	movs	r3, #1
 800560a:	9324      	str	r3, [sp, #144]	; 0x90
 800560c:	4b02      	ldr	r3, [pc, #8]	; (8005618 <_vfprintf_r+0x1778>)
 800560e:	9309      	str	r3, [sp, #36]	; 0x24
 8005610:	e5ac      	b.n	800516c <_vfprintf_r+0x12cc>
 8005612:	bf00      	nop
 8005614:	08008b48 	.word	0x08008b48
 8005618:	08008b04 	.word	0x08008b04
 800561c:	425d      	negs	r5, r3
 800561e:	3310      	adds	r3, #16
 8005620:	4bb9      	ldr	r3, [pc, #740]	; (8005908 <_vfprintf_r+0x1a68>)
 8005622:	f280 8097 	bge.w	8005754 <_vfprintf_r+0x18b4>
 8005626:	4619      	mov	r1, r3
 8005628:	2610      	movs	r6, #16
 800562a:	4623      	mov	r3, r4
 800562c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005630:	460c      	mov	r4, r1
 8005632:	e005      	b.n	8005640 <_vfprintf_r+0x17a0>
 8005634:	f10b 0b08 	add.w	fp, fp, #8
 8005638:	3d10      	subs	r5, #16
 800563a:	2d10      	cmp	r5, #16
 800563c:	f340 8087 	ble.w	800574e <_vfprintf_r+0x18ae>
 8005640:	3201      	adds	r2, #1
 8005642:	3310      	adds	r3, #16
 8005644:	2a07      	cmp	r2, #7
 8005646:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800564a:	e9cb 4600 	strd	r4, r6, [fp]
 800564e:	ddf1      	ble.n	8005634 <_vfprintf_r+0x1794>
 8005650:	aa2a      	add	r2, sp, #168	; 0xa8
 8005652:	9907      	ldr	r1, [sp, #28]
 8005654:	4648      	mov	r0, r9
 8005656:	f002 fbc1 	bl	8007ddc <__sprint_r>
 800565a:	2800      	cmp	r0, #0
 800565c:	f47f a998 	bne.w	8004990 <_vfprintf_r+0xaf0>
 8005660:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005664:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005668:	e7e6      	b.n	8005638 <_vfprintf_r+0x1798>
 800566a:	f109 0101 	add.w	r1, r9, #1
 800566e:	9803      	ldr	r0, [sp, #12]
 8005670:	f001 fd02 	bl	8007078 <_malloc_r>
 8005674:	4607      	mov	r7, r0
 8005676:	2800      	cmp	r0, #0
 8005678:	f000 813b 	beq.w	80058f2 <_vfprintf_r+0x1a52>
 800567c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8005680:	930e      	str	r3, [sp, #56]	; 0x38
 8005682:	f026 0320 	bic.w	r3, r6, #32
 8005686:	9304      	str	r3, [sp, #16]
 8005688:	46a0      	mov	r8, r4
 800568a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800568c:	900a      	str	r0, [sp, #40]	; 0x28
 800568e:	e547      	b.n	8005120 <_vfprintf_r+0x1280>
 8005690:	2667      	movs	r6, #103	; 0x67
 8005692:	981a      	ldr	r0, [sp, #104]	; 0x68
 8005694:	2200      	movs	r2, #0
 8005696:	920f      	str	r2, [sp, #60]	; 0x3c
 8005698:	9214      	str	r2, [sp, #80]	; 0x50
 800569a:	7803      	ldrb	r3, [r0, #0]
 800569c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800569e:	2bff      	cmp	r3, #255	; 0xff
 80056a0:	d00c      	beq.n	80056bc <_vfprintf_r+0x181c>
 80056a2:	4293      	cmp	r3, r2
 80056a4:	da0a      	bge.n	80056bc <_vfprintf_r+0x181c>
 80056a6:	7841      	ldrb	r1, [r0, #1]
 80056a8:	1ad2      	subs	r2, r2, r3
 80056aa:	b1a9      	cbz	r1, 80056d8 <_vfprintf_r+0x1838>
 80056ac:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80056ae:	3301      	adds	r3, #1
 80056b0:	9314      	str	r3, [sp, #80]	; 0x50
 80056b2:	460b      	mov	r3, r1
 80056b4:	2bff      	cmp	r3, #255	; 0xff
 80056b6:	f100 0001 	add.w	r0, r0, #1
 80056ba:	d1f2      	bne.n	80056a2 <_vfprintf_r+0x1802>
 80056bc:	9211      	str	r2, [sp, #68]	; 0x44
 80056be:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80056c0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80056c2:	9909      	ldr	r1, [sp, #36]	; 0x24
 80056c4:	901a      	str	r0, [sp, #104]	; 0x68
 80056c6:	4413      	add	r3, r2
 80056c8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 80056ca:	fb02 1303 	mla	r3, r2, r3, r1
 80056ce:	9309      	str	r3, [sp, #36]	; 0x24
 80056d0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80056d4:	9304      	str	r3, [sp, #16]
 80056d6:	e485      	b.n	8004fe4 <_vfprintf_r+0x1144>
 80056d8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80056da:	3101      	adds	r1, #1
 80056dc:	910f      	str	r1, [sp, #60]	; 0x3c
 80056de:	e7de      	b.n	800569e <_vfprintf_r+0x17fe>
 80056e0:	aa28      	add	r2, sp, #160	; 0xa0
 80056e2:	ab25      	add	r3, sp, #148	; 0x94
 80056e4:	e9cd 3200 	strd	r3, r2, [sp]
 80056e8:	2103      	movs	r1, #3
 80056ea:	ab24      	add	r3, sp, #144	; 0x90
 80056ec:	464a      	mov	r2, r9
 80056ee:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80056f2:	9803      	ldr	r0, [sp, #12]
 80056f4:	f000 fa5c 	bl	8005bb0 <_dtoa_r>
 80056f8:	464d      	mov	r5, r9
 80056fa:	4607      	mov	r7, r0
 80056fc:	eb00 0409 	add.w	r4, r0, r9
 8005700:	783b      	ldrb	r3, [r7, #0]
 8005702:	2b30      	cmp	r3, #48	; 0x30
 8005704:	f000 80be 	beq.w	8005884 <_vfprintf_r+0x19e4>
 8005708:	9d24      	ldr	r5, [sp, #144]	; 0x90
 800570a:	442c      	add	r4, r5
 800570c:	2200      	movs	r2, #0
 800570e:	2300      	movs	r3, #0
 8005710:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8005714:	f7fb fcd8 	bl	80010c8 <__aeabi_dcmpeq>
 8005718:	b108      	cbz	r0, 800571e <_vfprintf_r+0x187e>
 800571a:	4623      	mov	r3, r4
 800571c:	e413      	b.n	8004f46 <_vfprintf_r+0x10a6>
 800571e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005720:	42a3      	cmp	r3, r4
 8005722:	f4bf ac10 	bcs.w	8004f46 <_vfprintf_r+0x10a6>
 8005726:	2130      	movs	r1, #48	; 0x30
 8005728:	1c5a      	adds	r2, r3, #1
 800572a:	9228      	str	r2, [sp, #160]	; 0xa0
 800572c:	7019      	strb	r1, [r3, #0]
 800572e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005730:	429c      	cmp	r4, r3
 8005732:	d8f9      	bhi.n	8005728 <_vfprintf_r+0x1888>
 8005734:	e407      	b.n	8004f46 <_vfprintf_r+0x10a6>
 8005736:	197c      	adds	r4, r7, r5
 8005738:	e7e8      	b.n	800570c <_vfprintf_r+0x186c>
 800573a:	f1b9 0f00 	cmp.w	r9, #0
 800573e:	f000 8092 	beq.w	8005866 <_vfprintf_r+0x19c6>
 8005742:	900a      	str	r0, [sp, #40]	; 0x28
 8005744:	e4ec      	b.n	8005120 <_vfprintf_r+0x1280>
 8005746:	900a      	str	r0, [sp, #40]	; 0x28
 8005748:	f04f 0906 	mov.w	r9, #6
 800574c:	e4e8      	b.n	8005120 <_vfprintf_r+0x1280>
 800574e:	4621      	mov	r1, r4
 8005750:	461c      	mov	r4, r3
 8005752:	460b      	mov	r3, r1
 8005754:	3201      	adds	r2, #1
 8005756:	442c      	add	r4, r5
 8005758:	2a07      	cmp	r2, #7
 800575a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800575e:	e9cb 3500 	strd	r3, r5, [fp]
 8005762:	f300 80a9 	bgt.w	80058b8 <_vfprintf_r+0x1a18>
 8005766:	f10b 0b08 	add.w	fp, fp, #8
 800576a:	e470      	b.n	800504e <_vfprintf_r+0x11ae>
 800576c:	469a      	mov	sl, r3
 800576e:	f7ff bb37 	b.w	8004de0 <_vfprintf_r+0xf40>
 8005772:	2301      	movs	r3, #1
 8005774:	9324      	str	r3, [sp, #144]	; 0x90
 8005776:	4b65      	ldr	r3, [pc, #404]	; (800590c <_vfprintf_r+0x1a6c>)
 8005778:	9309      	str	r3, [sp, #36]	; 0x24
 800577a:	e4f7      	b.n	800516c <_vfprintf_r+0x12cc>
 800577c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800577e:	4413      	add	r3, r2
 8005780:	444b      	add	r3, r9
 8005782:	9309      	str	r3, [sp, #36]	; 0x24
 8005784:	2666      	movs	r6, #102	; 0x66
 8005786:	e6fb      	b.n	8005580 <_vfprintf_r+0x16e0>
 8005788:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800578a:	9309      	str	r3, [sp, #36]	; 0x24
 800578c:	e694      	b.n	80054b8 <_vfprintf_r+0x1618>
 800578e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8005792:	4664      	mov	r4, ip
 8005794:	4d5e      	ldr	r5, [pc, #376]	; (8005910 <_vfprintf_r+0x1a70>)
 8005796:	e000      	b.n	800579a <_vfprintf_r+0x18fa>
 8005798:	4614      	mov	r4, r2
 800579a:	fba5 1203 	umull	r1, r2, r5, r3
 800579e:	08d2      	lsrs	r2, r2, #3
 80057a0:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 80057a4:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 80057a8:	f103 0130 	add.w	r1, r3, #48	; 0x30
 80057ac:	4613      	mov	r3, r2
 80057ae:	2b09      	cmp	r3, #9
 80057b0:	f804 1c01 	strb.w	r1, [r4, #-1]
 80057b4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80057b8:	dcee      	bgt.n	8005798 <_vfprintf_r+0x18f8>
 80057ba:	3330      	adds	r3, #48	; 0x30
 80057bc:	3c02      	subs	r4, #2
 80057be:	b2db      	uxtb	r3, r3
 80057c0:	45a4      	cmp	ip, r4
 80057c2:	f802 3c01 	strb.w	r3, [r2, #-1]
 80057c6:	f240 8090 	bls.w	80058ea <_vfprintf_r+0x1a4a>
 80057ca:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 80057ce:	4611      	mov	r1, r2
 80057d0:	e001      	b.n	80057d6 <_vfprintf_r+0x1936>
 80057d2:	f811 3b01 	ldrb.w	r3, [r1], #1
 80057d6:	f804 3b01 	strb.w	r3, [r4], #1
 80057da:	458c      	cmp	ip, r1
 80057dc:	d1f9      	bne.n	80057d2 <_vfprintf_r+0x1932>
 80057de:	ab2a      	add	r3, sp, #168	; 0xa8
 80057e0:	1a9b      	subs	r3, r3, r2
 80057e2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80057e6:	4413      	add	r3, r2
 80057e8:	f7ff bbe3 	b.w	8004fb2 <_vfprintf_r+0x1112>
 80057ec:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80057ee:	4f49      	ldr	r7, [pc, #292]	; (8005914 <_vfprintf_r+0x1a74>)
 80057f0:	2b00      	cmp	r3, #0
 80057f2:	bfb6      	itet	lt
 80057f4:	222d      	movlt	r2, #45	; 0x2d
 80057f6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80057fa:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80057fe:	4b46      	ldr	r3, [pc, #280]	; (8005918 <_vfprintf_r+0x1a78>)
 8005800:	f7fe bf02 	b.w	8004608 <_vfprintf_r+0x768>
 8005804:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005808:	f7ff b8c9 	b.w	800499e <_vfprintf_r+0xafe>
 800580c:	aa28      	add	r2, sp, #160	; 0xa0
 800580e:	ab25      	add	r3, sp, #148	; 0x94
 8005810:	e9cd 3200 	strd	r3, r2, [sp]
 8005814:	2103      	movs	r1, #3
 8005816:	ab24      	add	r3, sp, #144	; 0x90
 8005818:	464a      	mov	r2, r9
 800581a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800581e:	9803      	ldr	r0, [sp, #12]
 8005820:	f000 f9c6 	bl	8005bb0 <_dtoa_r>
 8005824:	464d      	mov	r5, r9
 8005826:	4607      	mov	r7, r0
 8005828:	2e46      	cmp	r6, #70	; 0x46
 800582a:	eb07 0405 	add.w	r4, r7, r5
 800582e:	f43f af67 	beq.w	8005700 <_vfprintf_r+0x1860>
 8005832:	e76b      	b.n	800570c <_vfprintf_r+0x186c>
 8005834:	f1b9 0f00 	cmp.w	r9, #0
 8005838:	d131      	bne.n	800589e <_vfprintf_r+0x19fe>
 800583a:	07c5      	lsls	r5, r0, #31
 800583c:	d42f      	bmi.n	800589e <_vfprintf_r+0x19fe>
 800583e:	2301      	movs	r3, #1
 8005840:	9304      	str	r3, [sp, #16]
 8005842:	9309      	str	r3, [sp, #36]	; 0x24
 8005844:	2666      	movs	r6, #102	; 0x66
 8005846:	e642      	b.n	80054ce <_vfprintf_r+0x162e>
 8005848:	07c3      	lsls	r3, r0, #31
 800584a:	f57f abbf 	bpl.w	8004fcc <_vfprintf_r+0x112c>
 800584e:	f7ff bbb9 	b.w	8004fc4 <_vfprintf_r+0x1124>
 8005852:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005854:	f1c3 0301 	rsb	r3, r3, #1
 8005858:	441a      	add	r2, r3
 800585a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800585e:	9209      	str	r2, [sp, #36]	; 0x24
 8005860:	9304      	str	r3, [sp, #16]
 8005862:	2667      	movs	r6, #103	; 0x67
 8005864:	e633      	b.n	80054ce <_vfprintf_r+0x162e>
 8005866:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800586a:	f04f 0901 	mov.w	r9, #1
 800586e:	e457      	b.n	8005120 <_vfprintf_r+0x1280>
 8005870:	465a      	mov	r2, fp
 8005872:	e511      	b.n	8005298 <_vfprintf_r+0x13f8>
 8005874:	2e47      	cmp	r6, #71	; 0x47
 8005876:	f47f af5e 	bne.w	8005736 <_vfprintf_r+0x1896>
 800587a:	f018 0f01 	tst.w	r8, #1
 800587e:	f43f ab61 	beq.w	8004f44 <_vfprintf_r+0x10a4>
 8005882:	e7d1      	b.n	8005828 <_vfprintf_r+0x1988>
 8005884:	2200      	movs	r2, #0
 8005886:	2300      	movs	r3, #0
 8005888:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800588c:	f7fb fc1c 	bl	80010c8 <__aeabi_dcmpeq>
 8005890:	2800      	cmp	r0, #0
 8005892:	f47f af39 	bne.w	8005708 <_vfprintf_r+0x1868>
 8005896:	f1c5 0501 	rsb	r5, r5, #1
 800589a:	9524      	str	r5, [sp, #144]	; 0x90
 800589c:	e735      	b.n	800570a <_vfprintf_r+0x186a>
 800589e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80058a0:	3301      	adds	r3, #1
 80058a2:	444b      	add	r3, r9
 80058a4:	9309      	str	r3, [sp, #36]	; 0x24
 80058a6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80058aa:	9304      	str	r3, [sp, #16]
 80058ac:	2666      	movs	r6, #102	; 0x66
 80058ae:	e60e      	b.n	80054ce <_vfprintf_r+0x162e>
 80058b0:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80058b4:	f7ff bb7a 	b.w	8004fac <_vfprintf_r+0x110c>
 80058b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80058ba:	9907      	ldr	r1, [sp, #28]
 80058bc:	9803      	ldr	r0, [sp, #12]
 80058be:	f002 fa8d 	bl	8007ddc <__sprint_r>
 80058c2:	2800      	cmp	r0, #0
 80058c4:	f47f a864 	bne.w	8004990 <_vfprintf_r+0xaf0>
 80058c8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80058cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80058d0:	f7ff bbbd 	b.w	800504e <_vfprintf_r+0x11ae>
 80058d4:	9908      	ldr	r1, [sp, #32]
 80058d6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80058da:	680b      	ldr	r3, [r1, #0]
 80058dc:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80058e0:	1d0b      	adds	r3, r1, #4
 80058e2:	4692      	mov	sl, r2
 80058e4:	9308      	str	r3, [sp, #32]
 80058e6:	f7fe bb59 	b.w	8003f9c <_vfprintf_r+0xfc>
 80058ea:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80058ee:	f7ff bb60 	b.w	8004fb2 <_vfprintf_r+0x1112>
 80058f2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80058f6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80058fa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80058fe:	f8a9 300c 	strh.w	r3, [r9, #12]
 8005902:	f7ff b84c 	b.w	800499e <_vfprintf_r+0xafe>
 8005906:	bf00      	nop
 8005908:	08008b48 	.word	0x08008b48
 800590c:	08008b18 	.word	0x08008b18
 8005910:	cccccccd 	.word	0xcccccccd
 8005914:	08008b00 	.word	0x08008b00
 8005918:	08008afc 	.word	0x08008afc

0800591c <__sbprintf>:
 800591c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005920:	460c      	mov	r4, r1
 8005922:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8005926:	8989      	ldrh	r1, [r1, #12]
 8005928:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800592a:	89e5      	ldrh	r5, [r4, #14]
 800592c:	9619      	str	r6, [sp, #100]	; 0x64
 800592e:	f021 0102 	bic.w	r1, r1, #2
 8005932:	4606      	mov	r6, r0
 8005934:	69e0      	ldr	r0, [r4, #28]
 8005936:	f8ad 100c 	strh.w	r1, [sp, #12]
 800593a:	4617      	mov	r7, r2
 800593c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8005940:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8005942:	f8ad 500e 	strh.w	r5, [sp, #14]
 8005946:	4698      	mov	r8, r3
 8005948:	ad1a      	add	r5, sp, #104	; 0x68
 800594a:	2300      	movs	r3, #0
 800594c:	9007      	str	r0, [sp, #28]
 800594e:	a816      	add	r0, sp, #88	; 0x58
 8005950:	9209      	str	r2, [sp, #36]	; 0x24
 8005952:	9306      	str	r3, [sp, #24]
 8005954:	9500      	str	r5, [sp, #0]
 8005956:	9504      	str	r5, [sp, #16]
 8005958:	9102      	str	r1, [sp, #8]
 800595a:	9105      	str	r1, [sp, #20]
 800595c:	f001 fb0c 	bl	8006f78 <__retarget_lock_init_recursive>
 8005960:	4643      	mov	r3, r8
 8005962:	463a      	mov	r2, r7
 8005964:	4669      	mov	r1, sp
 8005966:	4630      	mov	r0, r6
 8005968:	f7fe fa9a 	bl	8003ea0 <_vfprintf_r>
 800596c:	1e05      	subs	r5, r0, #0
 800596e:	db07      	blt.n	8005980 <__sbprintf+0x64>
 8005970:	4630      	mov	r0, r6
 8005972:	4669      	mov	r1, sp
 8005974:	f001 f8d6 	bl	8006b24 <_fflush_r>
 8005978:	2800      	cmp	r0, #0
 800597a:	bf18      	it	ne
 800597c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8005980:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8005984:	065b      	lsls	r3, r3, #25
 8005986:	d503      	bpl.n	8005990 <__sbprintf+0x74>
 8005988:	89a3      	ldrh	r3, [r4, #12]
 800598a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800598e:	81a3      	strh	r3, [r4, #12]
 8005990:	9816      	ldr	r0, [sp, #88]	; 0x58
 8005992:	f001 faf3 	bl	8006f7c <__retarget_lock_close_recursive>
 8005996:	4628      	mov	r0, r5
 8005998:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800599c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080059a0 <__swsetup_r>:
 80059a0:	b538      	push	{r3, r4, r5, lr}
 80059a2:	4b31      	ldr	r3, [pc, #196]	; (8005a68 <__swsetup_r+0xc8>)
 80059a4:	681b      	ldr	r3, [r3, #0]
 80059a6:	4605      	mov	r5, r0
 80059a8:	460c      	mov	r4, r1
 80059aa:	b113      	cbz	r3, 80059b2 <__swsetup_r+0x12>
 80059ac:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80059ae:	2a00      	cmp	r2, #0
 80059b0:	d03a      	beq.n	8005a28 <__swsetup_r+0x88>
 80059b2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80059b6:	b293      	uxth	r3, r2
 80059b8:	0718      	lsls	r0, r3, #28
 80059ba:	d50c      	bpl.n	80059d6 <__swsetup_r+0x36>
 80059bc:	6920      	ldr	r0, [r4, #16]
 80059be:	b1a8      	cbz	r0, 80059ec <__swsetup_r+0x4c>
 80059c0:	f013 0201 	ands.w	r2, r3, #1
 80059c4:	d020      	beq.n	8005a08 <__swsetup_r+0x68>
 80059c6:	6963      	ldr	r3, [r4, #20]
 80059c8:	2200      	movs	r2, #0
 80059ca:	425b      	negs	r3, r3
 80059cc:	61a3      	str	r3, [r4, #24]
 80059ce:	60a2      	str	r2, [r4, #8]
 80059d0:	b300      	cbz	r0, 8005a14 <__swsetup_r+0x74>
 80059d2:	2000      	movs	r0, #0
 80059d4:	bd38      	pop	{r3, r4, r5, pc}
 80059d6:	06d9      	lsls	r1, r3, #27
 80059d8:	d53e      	bpl.n	8005a58 <__swsetup_r+0xb8>
 80059da:	0758      	lsls	r0, r3, #29
 80059dc:	d428      	bmi.n	8005a30 <__swsetup_r+0x90>
 80059de:	6920      	ldr	r0, [r4, #16]
 80059e0:	f042 0308 	orr.w	r3, r2, #8
 80059e4:	81a3      	strh	r3, [r4, #12]
 80059e6:	b29b      	uxth	r3, r3
 80059e8:	2800      	cmp	r0, #0
 80059ea:	d1e9      	bne.n	80059c0 <__swsetup_r+0x20>
 80059ec:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80059f0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80059f4:	d0e4      	beq.n	80059c0 <__swsetup_r+0x20>
 80059f6:	4628      	mov	r0, r5
 80059f8:	4621      	mov	r1, r4
 80059fa:	f001 faf3 	bl	8006fe4 <__smakebuf_r>
 80059fe:	89a3      	ldrh	r3, [r4, #12]
 8005a00:	6920      	ldr	r0, [r4, #16]
 8005a02:	f013 0201 	ands.w	r2, r3, #1
 8005a06:	d1de      	bne.n	80059c6 <__swsetup_r+0x26>
 8005a08:	0799      	lsls	r1, r3, #30
 8005a0a:	bf58      	it	pl
 8005a0c:	6962      	ldrpl	r2, [r4, #20]
 8005a0e:	60a2      	str	r2, [r4, #8]
 8005a10:	2800      	cmp	r0, #0
 8005a12:	d1de      	bne.n	80059d2 <__swsetup_r+0x32>
 8005a14:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a18:	061a      	lsls	r2, r3, #24
 8005a1a:	d5db      	bpl.n	80059d4 <__swsetup_r+0x34>
 8005a1c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005a20:	81a3      	strh	r3, [r4, #12]
 8005a22:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a26:	bd38      	pop	{r3, r4, r5, pc}
 8005a28:	4618      	mov	r0, r3
 8005a2a:	f001 f8d7 	bl	8006bdc <__sinit>
 8005a2e:	e7c0      	b.n	80059b2 <__swsetup_r+0x12>
 8005a30:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005a32:	b151      	cbz	r1, 8005a4a <__swsetup_r+0xaa>
 8005a34:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005a38:	4299      	cmp	r1, r3
 8005a3a:	d004      	beq.n	8005a46 <__swsetup_r+0xa6>
 8005a3c:	4628      	mov	r0, r5
 8005a3e:	f001 f96f 	bl	8006d20 <_free_r>
 8005a42:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005a46:	2300      	movs	r3, #0
 8005a48:	6323      	str	r3, [r4, #48]	; 0x30
 8005a4a:	2300      	movs	r3, #0
 8005a4c:	6920      	ldr	r0, [r4, #16]
 8005a4e:	6063      	str	r3, [r4, #4]
 8005a50:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8005a54:	6020      	str	r0, [r4, #0]
 8005a56:	e7c3      	b.n	80059e0 <__swsetup_r+0x40>
 8005a58:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005a5c:	2309      	movs	r3, #9
 8005a5e:	602b      	str	r3, [r5, #0]
 8005a60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a64:	81a2      	strh	r2, [r4, #12]
 8005a66:	bd38      	pop	{r3, r4, r5, pc}
 8005a68:	2000001c 	.word	0x2000001c

08005a6c <register_fini>:
 8005a6c:	4b02      	ldr	r3, [pc, #8]	; (8005a78 <register_fini+0xc>)
 8005a6e:	b113      	cbz	r3, 8005a76 <register_fini+0xa>
 8005a70:	4802      	ldr	r0, [pc, #8]	; (8005a7c <register_fini+0x10>)
 8005a72:	f000 b805 	b.w	8005a80 <atexit>
 8005a76:	4770      	bx	lr
 8005a78:	00000000 	.word	0x00000000
 8005a7c:	08006c4d 	.word	0x08006c4d

08005a80 <atexit>:
 8005a80:	2300      	movs	r3, #0
 8005a82:	4601      	mov	r1, r0
 8005a84:	461a      	mov	r2, r3
 8005a86:	4618      	mov	r0, r3
 8005a88:	f002 b9c8 	b.w	8007e1c <__register_exitproc>

08005a8c <quorem>:
 8005a8c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005a90:	6903      	ldr	r3, [r0, #16]
 8005a92:	690f      	ldr	r7, [r1, #16]
 8005a94:	42bb      	cmp	r3, r7
 8005a96:	b083      	sub	sp, #12
 8005a98:	f2c0 8086 	blt.w	8005ba8 <quorem+0x11c>
 8005a9c:	3f01      	subs	r7, #1
 8005a9e:	f101 0914 	add.w	r9, r1, #20
 8005aa2:	f100 0a14 	add.w	sl, r0, #20
 8005aa6:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8005aaa:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8005aae:	00bc      	lsls	r4, r7, #2
 8005ab0:	3201      	adds	r2, #1
 8005ab2:	fbb3 f8f2 	udiv	r8, r3, r2
 8005ab6:	eb0a 0304 	add.w	r3, sl, r4
 8005aba:	9400      	str	r4, [sp, #0]
 8005abc:	eb09 0b04 	add.w	fp, r9, r4
 8005ac0:	9301      	str	r3, [sp, #4]
 8005ac2:	f1b8 0f00 	cmp.w	r8, #0
 8005ac6:	d038      	beq.n	8005b3a <quorem+0xae>
 8005ac8:	2500      	movs	r5, #0
 8005aca:	462e      	mov	r6, r5
 8005acc:	46ce      	mov	lr, r9
 8005ace:	46d4      	mov	ip, sl
 8005ad0:	f85e 4b04 	ldr.w	r4, [lr], #4
 8005ad4:	f8dc 3000 	ldr.w	r3, [ip]
 8005ad8:	b2a2      	uxth	r2, r4
 8005ada:	fb08 5502 	mla	r5, r8, r2, r5
 8005ade:	0c22      	lsrs	r2, r4, #16
 8005ae0:	0c2c      	lsrs	r4, r5, #16
 8005ae2:	fb08 4202 	mla	r2, r8, r2, r4
 8005ae6:	b2ad      	uxth	r5, r5
 8005ae8:	1b75      	subs	r5, r6, r5
 8005aea:	b296      	uxth	r6, r2
 8005aec:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8005af0:	fa15 f383 	uxtah	r3, r5, r3
 8005af4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8005af8:	b29b      	uxth	r3, r3
 8005afa:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8005afe:	45f3      	cmp	fp, lr
 8005b00:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8005b04:	f84c 3b04 	str.w	r3, [ip], #4
 8005b08:	ea4f 4626 	mov.w	r6, r6, asr #16
 8005b0c:	d2e0      	bcs.n	8005ad0 <quorem+0x44>
 8005b0e:	9b00      	ldr	r3, [sp, #0]
 8005b10:	f85a 3003 	ldr.w	r3, [sl, r3]
 8005b14:	b98b      	cbnz	r3, 8005b3a <quorem+0xae>
 8005b16:	9a01      	ldr	r2, [sp, #4]
 8005b18:	1f13      	subs	r3, r2, #4
 8005b1a:	459a      	cmp	sl, r3
 8005b1c:	d20c      	bcs.n	8005b38 <quorem+0xac>
 8005b1e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8005b22:	b94b      	cbnz	r3, 8005b38 <quorem+0xac>
 8005b24:	f1a2 0308 	sub.w	r3, r2, #8
 8005b28:	e002      	b.n	8005b30 <quorem+0xa4>
 8005b2a:	681a      	ldr	r2, [r3, #0]
 8005b2c:	3b04      	subs	r3, #4
 8005b2e:	b91a      	cbnz	r2, 8005b38 <quorem+0xac>
 8005b30:	459a      	cmp	sl, r3
 8005b32:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8005b36:	d3f8      	bcc.n	8005b2a <quorem+0x9e>
 8005b38:	6107      	str	r7, [r0, #16]
 8005b3a:	4604      	mov	r4, r0
 8005b3c:	f001 ff62 	bl	8007a04 <__mcmp>
 8005b40:	2800      	cmp	r0, #0
 8005b42:	db2d      	blt.n	8005ba0 <quorem+0x114>
 8005b44:	f108 0801 	add.w	r8, r8, #1
 8005b48:	4655      	mov	r5, sl
 8005b4a:	2300      	movs	r3, #0
 8005b4c:	f859 1b04 	ldr.w	r1, [r9], #4
 8005b50:	6828      	ldr	r0, [r5, #0]
 8005b52:	b28a      	uxth	r2, r1
 8005b54:	1a9a      	subs	r2, r3, r2
 8005b56:	0c0b      	lsrs	r3, r1, #16
 8005b58:	fa12 f280 	uxtah	r2, r2, r0
 8005b5c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8005b60:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8005b64:	b292      	uxth	r2, r2
 8005b66:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8005b6a:	45cb      	cmp	fp, r9
 8005b6c:	f845 2b04 	str.w	r2, [r5], #4
 8005b70:	ea4f 4323 	mov.w	r3, r3, asr #16
 8005b74:	d2ea      	bcs.n	8005b4c <quorem+0xc0>
 8005b76:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8005b7a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8005b7e:	b97a      	cbnz	r2, 8005ba0 <quorem+0x114>
 8005b80:	1f1a      	subs	r2, r3, #4
 8005b82:	4592      	cmp	sl, r2
 8005b84:	d20b      	bcs.n	8005b9e <quorem+0x112>
 8005b86:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8005b8a:	b942      	cbnz	r2, 8005b9e <quorem+0x112>
 8005b8c:	3b08      	subs	r3, #8
 8005b8e:	e002      	b.n	8005b96 <quorem+0x10a>
 8005b90:	681a      	ldr	r2, [r3, #0]
 8005b92:	3b04      	subs	r3, #4
 8005b94:	b91a      	cbnz	r2, 8005b9e <quorem+0x112>
 8005b96:	459a      	cmp	sl, r3
 8005b98:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8005b9c:	d3f8      	bcc.n	8005b90 <quorem+0x104>
 8005b9e:	6127      	str	r7, [r4, #16]
 8005ba0:	4640      	mov	r0, r8
 8005ba2:	b003      	add	sp, #12
 8005ba4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ba8:	2000      	movs	r0, #0
 8005baa:	b003      	add	sp, #12
 8005bac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08005bb0 <_dtoa_r>:
 8005bb0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005bb4:	ec55 4b10 	vmov	r4, r5, d0
 8005bb8:	b09b      	sub	sp, #108	; 0x6c
 8005bba:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8005bbc:	9102      	str	r1, [sp, #8]
 8005bbe:	4681      	mov	r9, r0
 8005bc0:	9207      	str	r2, [sp, #28]
 8005bc2:	9305      	str	r3, [sp, #20]
 8005bc4:	e9cd 4500 	strd	r4, r5, [sp]
 8005bc8:	b156      	cbz	r6, 8005be0 <_dtoa_r+0x30>
 8005bca:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8005bcc:	6072      	str	r2, [r6, #4]
 8005bce:	2301      	movs	r3, #1
 8005bd0:	4093      	lsls	r3, r2
 8005bd2:	60b3      	str	r3, [r6, #8]
 8005bd4:	4631      	mov	r1, r6
 8005bd6:	f001 fd25 	bl	8007624 <_Bfree>
 8005bda:	2300      	movs	r3, #0
 8005bdc:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8005be0:	f1b5 0800 	subs.w	r8, r5, #0
 8005be4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8005be6:	bfb4      	ite	lt
 8005be8:	2301      	movlt	r3, #1
 8005bea:	2300      	movge	r3, #0
 8005bec:	6013      	str	r3, [r2, #0]
 8005bee:	4b76      	ldr	r3, [pc, #472]	; (8005dc8 <_dtoa_r+0x218>)
 8005bf0:	bfbc      	itt	lt
 8005bf2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8005bf6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8005bfa:	ea33 0308 	bics.w	r3, r3, r8
 8005bfe:	f000 80a6 	beq.w	8005d4e <_dtoa_r+0x19e>
 8005c02:	e9dd 6700 	ldrd	r6, r7, [sp]
 8005c06:	2200      	movs	r2, #0
 8005c08:	2300      	movs	r3, #0
 8005c0a:	4630      	mov	r0, r6
 8005c0c:	4639      	mov	r1, r7
 8005c0e:	f7fb fa5b 	bl	80010c8 <__aeabi_dcmpeq>
 8005c12:	4605      	mov	r5, r0
 8005c14:	b178      	cbz	r0, 8005c36 <_dtoa_r+0x86>
 8005c16:	9a05      	ldr	r2, [sp, #20]
 8005c18:	2301      	movs	r3, #1
 8005c1a:	6013      	str	r3, [r2, #0]
 8005c1c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005c1e:	2b00      	cmp	r3, #0
 8005c20:	f000 80c0 	beq.w	8005da4 <_dtoa_r+0x1f4>
 8005c24:	4b69      	ldr	r3, [pc, #420]	; (8005dcc <_dtoa_r+0x21c>)
 8005c26:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8005c28:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8005c2c:	6013      	str	r3, [r2, #0]
 8005c2e:	4658      	mov	r0, fp
 8005c30:	b01b      	add	sp, #108	; 0x6c
 8005c32:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c36:	aa18      	add	r2, sp, #96	; 0x60
 8005c38:	a919      	add	r1, sp, #100	; 0x64
 8005c3a:	ec47 6b10 	vmov	d0, r6, r7
 8005c3e:	4648      	mov	r0, r9
 8005c40:	f001 ff72 	bl	8007b28 <__d2b>
 8005c44:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8005c48:	4682      	mov	sl, r0
 8005c4a:	f040 80a0 	bne.w	8005d8e <_dtoa_r+0x1de>
 8005c4e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8005c52:	442c      	add	r4, r5
 8005c54:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8005c58:	2b20      	cmp	r3, #32
 8005c5a:	f340 842c 	ble.w	80064b6 <_dtoa_r+0x906>
 8005c5e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8005c62:	fa08 f803 	lsl.w	r8, r8, r3
 8005c66:	9b00      	ldr	r3, [sp, #0]
 8005c68:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8005c6c:	fa23 f000 	lsr.w	r0, r3, r0
 8005c70:	ea48 0000 	orr.w	r0, r8, r0
 8005c74:	f7fa ff46 	bl	8000b04 <__aeabi_ui2d>
 8005c78:	2301      	movs	r3, #1
 8005c7a:	4606      	mov	r6, r0
 8005c7c:	3c01      	subs	r4, #1
 8005c7e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8005c82:	930f      	str	r3, [sp, #60]	; 0x3c
 8005c84:	4630      	mov	r0, r6
 8005c86:	4639      	mov	r1, r7
 8005c88:	2200      	movs	r2, #0
 8005c8a:	4b51      	ldr	r3, [pc, #324]	; (8005dd0 <_dtoa_r+0x220>)
 8005c8c:	f7fa fdfc 	bl	8000888 <__aeabi_dsub>
 8005c90:	a347      	add	r3, pc, #284	; (adr r3, 8005db0 <_dtoa_r+0x200>)
 8005c92:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005c96:	f7fa ffaf 	bl	8000bf8 <__aeabi_dmul>
 8005c9a:	a347      	add	r3, pc, #284	; (adr r3, 8005db8 <_dtoa_r+0x208>)
 8005c9c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005ca0:	f7fa fdf4 	bl	800088c <__adddf3>
 8005ca4:	4606      	mov	r6, r0
 8005ca6:	4620      	mov	r0, r4
 8005ca8:	460f      	mov	r7, r1
 8005caa:	f7fa ff3b 	bl	8000b24 <__aeabi_i2d>
 8005cae:	a344      	add	r3, pc, #272	; (adr r3, 8005dc0 <_dtoa_r+0x210>)
 8005cb0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005cb4:	f7fa ffa0 	bl	8000bf8 <__aeabi_dmul>
 8005cb8:	4602      	mov	r2, r0
 8005cba:	460b      	mov	r3, r1
 8005cbc:	4630      	mov	r0, r6
 8005cbe:	4639      	mov	r1, r7
 8005cc0:	f7fa fde4 	bl	800088c <__adddf3>
 8005cc4:	4606      	mov	r6, r0
 8005cc6:	460f      	mov	r7, r1
 8005cc8:	f7fb fa46 	bl	8001158 <__aeabi_d2iz>
 8005ccc:	2200      	movs	r2, #0
 8005cce:	9006      	str	r0, [sp, #24]
 8005cd0:	2300      	movs	r3, #0
 8005cd2:	4630      	mov	r0, r6
 8005cd4:	4639      	mov	r1, r7
 8005cd6:	f7fb fa01 	bl	80010dc <__aeabi_dcmplt>
 8005cda:	2800      	cmp	r0, #0
 8005cdc:	f040 8273 	bne.w	80061c6 <_dtoa_r+0x616>
 8005ce0:	9e06      	ldr	r6, [sp, #24]
 8005ce2:	2e16      	cmp	r6, #22
 8005ce4:	f200 825d 	bhi.w	80061a2 <_dtoa_r+0x5f2>
 8005ce8:	4b3a      	ldr	r3, [pc, #232]	; (8005dd4 <_dtoa_r+0x224>)
 8005cea:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8005cee:	e9d3 0100 	ldrd	r0, r1, [r3]
 8005cf2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005cf6:	f7fb fa0f 	bl	8001118 <__aeabi_dcmpgt>
 8005cfa:	2800      	cmp	r0, #0
 8005cfc:	f000 83d7 	beq.w	80064ae <_dtoa_r+0x8fe>
 8005d00:	1e73      	subs	r3, r6, #1
 8005d02:	9306      	str	r3, [sp, #24]
 8005d04:	2300      	movs	r3, #0
 8005d06:	930d      	str	r3, [sp, #52]	; 0x34
 8005d08:	1b2c      	subs	r4, r5, r4
 8005d0a:	f1b4 0801 	subs.w	r8, r4, #1
 8005d0e:	f100 8254 	bmi.w	80061ba <_dtoa_r+0x60a>
 8005d12:	2300      	movs	r3, #0
 8005d14:	9308      	str	r3, [sp, #32]
 8005d16:	9b06      	ldr	r3, [sp, #24]
 8005d18:	2b00      	cmp	r3, #0
 8005d1a:	f2c0 8245 	blt.w	80061a8 <_dtoa_r+0x5f8>
 8005d1e:	4498      	add	r8, r3
 8005d20:	930c      	str	r3, [sp, #48]	; 0x30
 8005d22:	2300      	movs	r3, #0
 8005d24:	930b      	str	r3, [sp, #44]	; 0x2c
 8005d26:	9b02      	ldr	r3, [sp, #8]
 8005d28:	2b09      	cmp	r3, #9
 8005d2a:	d85b      	bhi.n	8005de4 <_dtoa_r+0x234>
 8005d2c:	2b05      	cmp	r3, #5
 8005d2e:	f340 83c0 	ble.w	80064b2 <_dtoa_r+0x902>
 8005d32:	3b04      	subs	r3, #4
 8005d34:	9302      	str	r3, [sp, #8]
 8005d36:	2500      	movs	r5, #0
 8005d38:	9b02      	ldr	r3, [sp, #8]
 8005d3a:	3b02      	subs	r3, #2
 8005d3c:	2b03      	cmp	r3, #3
 8005d3e:	f200 8498 	bhi.w	8006672 <_dtoa_r+0xac2>
 8005d42:	e8df f013 	tbh	[pc, r3, lsl #1]
 8005d46:	03df      	.short	0x03df
 8005d48:	03e803bf 	.word	0x03e803bf
 8005d4c:	04f5      	.short	0x04f5
 8005d4e:	9a05      	ldr	r2, [sp, #20]
 8005d50:	f242 730f 	movw	r3, #9999	; 0x270f
 8005d54:	6013      	str	r3, [r2, #0]
 8005d56:	9b00      	ldr	r3, [sp, #0]
 8005d58:	b983      	cbnz	r3, 8005d7c <_dtoa_r+0x1cc>
 8005d5a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8005d5e:	b96b      	cbnz	r3, 8005d7c <_dtoa_r+0x1cc>
 8005d60:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005d62:	f8df b074 	ldr.w	fp, [pc, #116]	; 8005dd8 <_dtoa_r+0x228>
 8005d66:	2b00      	cmp	r3, #0
 8005d68:	f43f af61 	beq.w	8005c2e <_dtoa_r+0x7e>
 8005d6c:	f10b 0308 	add.w	r3, fp, #8
 8005d70:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8005d72:	4658      	mov	r0, fp
 8005d74:	6013      	str	r3, [r2, #0]
 8005d76:	b01b      	add	sp, #108	; 0x6c
 8005d78:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d7c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005d7e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8005ddc <_dtoa_r+0x22c>
 8005d82:	2b00      	cmp	r3, #0
 8005d84:	f43f af53 	beq.w	8005c2e <_dtoa_r+0x7e>
 8005d88:	f10b 0303 	add.w	r3, fp, #3
 8005d8c:	e7f0      	b.n	8005d70 <_dtoa_r+0x1c0>
 8005d8e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8005d92:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8005d96:	950f      	str	r5, [sp, #60]	; 0x3c
 8005d98:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8005d9c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8005da0:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8005da2:	e76f      	b.n	8005c84 <_dtoa_r+0xd4>
 8005da4:	f8df b038 	ldr.w	fp, [pc, #56]	; 8005de0 <_dtoa_r+0x230>
 8005da8:	4658      	mov	r0, fp
 8005daa:	b01b      	add	sp, #108	; 0x6c
 8005dac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005db0:	636f4361 	.word	0x636f4361
 8005db4:	3fd287a7 	.word	0x3fd287a7
 8005db8:	8b60c8b3 	.word	0x8b60c8b3
 8005dbc:	3fc68a28 	.word	0x3fc68a28
 8005dc0:	509f79fb 	.word	0x509f79fb
 8005dc4:	3fd34413 	.word	0x3fd34413
 8005dc8:	7ff00000 	.word	0x7ff00000
 8005dcc:	08008b35 	.word	0x08008b35
 8005dd0:	3ff80000 	.word	0x3ff80000
 8005dd4:	08008b90 	.word	0x08008b90
 8005dd8:	08008b58 	.word	0x08008b58
 8005ddc:	08008b64 	.word	0x08008b64
 8005de0:	08008b34 	.word	0x08008b34
 8005de4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8005de8:	2501      	movs	r5, #1
 8005dea:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8005dee:	2300      	movs	r3, #0
 8005df0:	9302      	str	r3, [sp, #8]
 8005df2:	9307      	str	r3, [sp, #28]
 8005df4:	2100      	movs	r1, #0
 8005df6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8005dfa:	940e      	str	r4, [sp, #56]	; 0x38
 8005dfc:	4648      	mov	r0, r9
 8005dfe:	f001 fbeb 	bl	80075d8 <_Balloc>
 8005e02:	2c0e      	cmp	r4, #14
 8005e04:	4683      	mov	fp, r0
 8005e06:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005e0a:	f200 80fb 	bhi.w	8006004 <_dtoa_r+0x454>
 8005e0e:	2d00      	cmp	r5, #0
 8005e10:	f000 80f8 	beq.w	8006004 <_dtoa_r+0x454>
 8005e14:	ed9d 7b00 	vldr	d7, [sp]
 8005e18:	9906      	ldr	r1, [sp, #24]
 8005e1a:	2900      	cmp	r1, #0
 8005e1c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8005e20:	f340 83e5 	ble.w	80065ee <_dtoa_r+0xa3e>
 8005e24:	4b9d      	ldr	r3, [pc, #628]	; (800609c <_dtoa_r+0x4ec>)
 8005e26:	f001 020f 	and.w	r2, r1, #15
 8005e2a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005e2e:	ed93 7b00 	vldr	d7, [r3]
 8005e32:	110c      	asrs	r4, r1, #4
 8005e34:	06e2      	lsls	r2, r4, #27
 8005e36:	ed8d 7b00 	vstr	d7, [sp]
 8005e3a:	f140 849e 	bpl.w	800677a <_dtoa_r+0xbca>
 8005e3e:	4b98      	ldr	r3, [pc, #608]	; (80060a0 <_dtoa_r+0x4f0>)
 8005e40:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005e44:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8005e48:	f7fb f800 	bl	8000e4c <__aeabi_ddiv>
 8005e4c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8005e50:	f004 040f 	and.w	r4, r4, #15
 8005e54:	2603      	movs	r6, #3
 8005e56:	b17c      	cbz	r4, 8005e78 <_dtoa_r+0x2c8>
 8005e58:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005e5c:	4d90      	ldr	r5, [pc, #576]	; (80060a0 <_dtoa_r+0x4f0>)
 8005e5e:	07e3      	lsls	r3, r4, #31
 8005e60:	d504      	bpl.n	8005e6c <_dtoa_r+0x2bc>
 8005e62:	e9d5 2300 	ldrd	r2, r3, [r5]
 8005e66:	f7fa fec7 	bl	8000bf8 <__aeabi_dmul>
 8005e6a:	3601      	adds	r6, #1
 8005e6c:	1064      	asrs	r4, r4, #1
 8005e6e:	f105 0508 	add.w	r5, r5, #8
 8005e72:	d1f4      	bne.n	8005e5e <_dtoa_r+0x2ae>
 8005e74:	e9cd 0100 	strd	r0, r1, [sp]
 8005e78:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005e7c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005e80:	f7fa ffe4 	bl	8000e4c <__aeabi_ddiv>
 8005e84:	e9cd 0100 	strd	r0, r1, [sp]
 8005e88:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005e8a:	b143      	cbz	r3, 8005e9e <_dtoa_r+0x2ee>
 8005e8c:	2200      	movs	r2, #0
 8005e8e:	4b85      	ldr	r3, [pc, #532]	; (80060a4 <_dtoa_r+0x4f4>)
 8005e90:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005e94:	f7fb f922 	bl	80010dc <__aeabi_dcmplt>
 8005e98:	2800      	cmp	r0, #0
 8005e9a:	f040 84ff 	bne.w	800689c <_dtoa_r+0xcec>
 8005e9e:	4630      	mov	r0, r6
 8005ea0:	f7fa fe40 	bl	8000b24 <__aeabi_i2d>
 8005ea4:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005ea8:	f7fa fea6 	bl	8000bf8 <__aeabi_dmul>
 8005eac:	4b7e      	ldr	r3, [pc, #504]	; (80060a8 <_dtoa_r+0x4f8>)
 8005eae:	2200      	movs	r2, #0
 8005eb0:	f7fa fcec 	bl	800088c <__adddf3>
 8005eb4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005eb6:	4606      	mov	r6, r0
 8005eb8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005ebc:	2b00      	cmp	r3, #0
 8005ebe:	f000 841c 	beq.w	80066fa <_dtoa_r+0xb4a>
 8005ec2:	9b06      	ldr	r3, [sp, #24]
 8005ec4:	9316      	str	r3, [sp, #88]	; 0x58
 8005ec6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005ec8:	9312      	str	r3, [sp, #72]	; 0x48
 8005eca:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005ece:	f7fb f943 	bl	8001158 <__aeabi_d2iz>
 8005ed2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005ed4:	4b71      	ldr	r3, [pc, #452]	; (800609c <_dtoa_r+0x4ec>)
 8005ed6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005eda:	ed13 7b02 	vldr	d7, [r3, #-8]
 8005ede:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8005ee2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8005ee6:	f7fa fe1d 	bl	8000b24 <__aeabi_i2d>
 8005eea:	460b      	mov	r3, r1
 8005eec:	4602      	mov	r2, r0
 8005eee:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005ef2:	e9cd 6700 	strd	r6, r7, [sp]
 8005ef6:	f7fa fcc7 	bl	8000888 <__aeabi_dsub>
 8005efa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005efc:	b2ed      	uxtb	r5, r5
 8005efe:	4606      	mov	r6, r0
 8005f00:	460f      	mov	r7, r1
 8005f02:	f10b 0401 	add.w	r4, fp, #1
 8005f06:	2b00      	cmp	r3, #0
 8005f08:	f000 8458 	beq.w	80067bc <_dtoa_r+0xc0c>
 8005f0c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005f10:	2000      	movs	r0, #0
 8005f12:	4966      	ldr	r1, [pc, #408]	; (80060ac <_dtoa_r+0x4fc>)
 8005f14:	f7fa ff9a 	bl	8000e4c <__aeabi_ddiv>
 8005f18:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005f1c:	f7fa fcb4 	bl	8000888 <__aeabi_dsub>
 8005f20:	f88b 5000 	strb.w	r5, [fp]
 8005f24:	4632      	mov	r2, r6
 8005f26:	463b      	mov	r3, r7
 8005f28:	e9cd 0100 	strd	r0, r1, [sp]
 8005f2c:	f7fb f8f4 	bl	8001118 <__aeabi_dcmpgt>
 8005f30:	2800      	cmp	r0, #0
 8005f32:	f040 8502 	bne.w	800693a <_dtoa_r+0xd8a>
 8005f36:	4632      	mov	r2, r6
 8005f38:	463b      	mov	r3, r7
 8005f3a:	2000      	movs	r0, #0
 8005f3c:	4959      	ldr	r1, [pc, #356]	; (80060a4 <_dtoa_r+0x4f4>)
 8005f3e:	f7fa fca3 	bl	8000888 <__aeabi_dsub>
 8005f42:	4602      	mov	r2, r0
 8005f44:	460b      	mov	r3, r1
 8005f46:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005f4a:	f7fb f8e5 	bl	8001118 <__aeabi_dcmpgt>
 8005f4e:	2800      	cmp	r0, #0
 8005f50:	f040 84fb 	bne.w	800694a <_dtoa_r+0xd9a>
 8005f54:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005f56:	2a01      	cmp	r2, #1
 8005f58:	d050      	beq.n	8005ffc <_dtoa_r+0x44c>
 8005f5a:	445a      	add	r2, fp
 8005f5c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8005f60:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8005f64:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8005f68:	4692      	mov	sl, r2
 8005f6a:	46cb      	mov	fp, r9
 8005f6c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8005f70:	e00c      	b.n	8005f8c <_dtoa_r+0x3dc>
 8005f72:	2000      	movs	r0, #0
 8005f74:	494b      	ldr	r1, [pc, #300]	; (80060a4 <_dtoa_r+0x4f4>)
 8005f76:	f7fa fc87 	bl	8000888 <__aeabi_dsub>
 8005f7a:	4642      	mov	r2, r8
 8005f7c:	464b      	mov	r3, r9
 8005f7e:	f7fb f8ad 	bl	80010dc <__aeabi_dcmplt>
 8005f82:	2800      	cmp	r0, #0
 8005f84:	f040 84dc 	bne.w	8006940 <_dtoa_r+0xd90>
 8005f88:	4554      	cmp	r4, sl
 8005f8a:	d030      	beq.n	8005fee <_dtoa_r+0x43e>
 8005f8c:	4640      	mov	r0, r8
 8005f8e:	4649      	mov	r1, r9
 8005f90:	2200      	movs	r2, #0
 8005f92:	4b47      	ldr	r3, [pc, #284]	; (80060b0 <_dtoa_r+0x500>)
 8005f94:	f7fa fe30 	bl	8000bf8 <__aeabi_dmul>
 8005f98:	2200      	movs	r2, #0
 8005f9a:	4b45      	ldr	r3, [pc, #276]	; (80060b0 <_dtoa_r+0x500>)
 8005f9c:	4680      	mov	r8, r0
 8005f9e:	4689      	mov	r9, r1
 8005fa0:	4630      	mov	r0, r6
 8005fa2:	4639      	mov	r1, r7
 8005fa4:	f7fa fe28 	bl	8000bf8 <__aeabi_dmul>
 8005fa8:	460f      	mov	r7, r1
 8005faa:	4606      	mov	r6, r0
 8005fac:	f7fb f8d4 	bl	8001158 <__aeabi_d2iz>
 8005fb0:	4605      	mov	r5, r0
 8005fb2:	f7fa fdb7 	bl	8000b24 <__aeabi_i2d>
 8005fb6:	4602      	mov	r2, r0
 8005fb8:	460b      	mov	r3, r1
 8005fba:	4630      	mov	r0, r6
 8005fbc:	4639      	mov	r1, r7
 8005fbe:	f7fa fc63 	bl	8000888 <__aeabi_dsub>
 8005fc2:	3530      	adds	r5, #48	; 0x30
 8005fc4:	b2ed      	uxtb	r5, r5
 8005fc6:	4642      	mov	r2, r8
 8005fc8:	464b      	mov	r3, r9
 8005fca:	f804 5b01 	strb.w	r5, [r4], #1
 8005fce:	4606      	mov	r6, r0
 8005fd0:	460f      	mov	r7, r1
 8005fd2:	f7fb f883 	bl	80010dc <__aeabi_dcmplt>
 8005fd6:	4632      	mov	r2, r6
 8005fd8:	463b      	mov	r3, r7
 8005fda:	2800      	cmp	r0, #0
 8005fdc:	d0c9      	beq.n	8005f72 <_dtoa_r+0x3c2>
 8005fde:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005fe0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005fe4:	9306      	str	r3, [sp, #24]
 8005fe6:	46d9      	mov	r9, fp
 8005fe8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005fec:	e236      	b.n	800645c <_dtoa_r+0x8ac>
 8005fee:	46d9      	mov	r9, fp
 8005ff0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8005ff4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005ff8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005ffc:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8006000:	e9cd 3400 	strd	r3, r4, [sp]
 8006004:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8006006:	2b00      	cmp	r3, #0
 8006008:	f2c0 80ae 	blt.w	8006168 <_dtoa_r+0x5b8>
 800600c:	9a06      	ldr	r2, [sp, #24]
 800600e:	2a0e      	cmp	r2, #14
 8006010:	f300 80aa 	bgt.w	8006168 <_dtoa_r+0x5b8>
 8006014:	4b21      	ldr	r3, [pc, #132]	; (800609c <_dtoa_r+0x4ec>)
 8006016:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800601a:	ed93 7b00 	vldr	d7, [r3]
 800601e:	9b07      	ldr	r3, [sp, #28]
 8006020:	2b00      	cmp	r3, #0
 8006022:	ed8d 7b02 	vstr	d7, [sp, #8]
 8006026:	f2c0 82be 	blt.w	80065a6 <_dtoa_r+0x9f6>
 800602a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800602e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006032:	4630      	mov	r0, r6
 8006034:	4639      	mov	r1, r7
 8006036:	f7fa ff09 	bl	8000e4c <__aeabi_ddiv>
 800603a:	f7fb f88d 	bl	8001158 <__aeabi_d2iz>
 800603e:	4605      	mov	r5, r0
 8006040:	f7fa fd70 	bl	8000b24 <__aeabi_i2d>
 8006044:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006048:	f7fa fdd6 	bl	8000bf8 <__aeabi_dmul>
 800604c:	460b      	mov	r3, r1
 800604e:	4602      	mov	r2, r0
 8006050:	4639      	mov	r1, r7
 8006052:	4630      	mov	r0, r6
 8006054:	f7fa fc18 	bl	8000888 <__aeabi_dsub>
 8006058:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800605c:	f88b 3000 	strb.w	r3, [fp]
 8006060:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006062:	2b01      	cmp	r3, #1
 8006064:	4606      	mov	r6, r0
 8006066:	460f      	mov	r7, r1
 8006068:	f10b 0401 	add.w	r4, fp, #1
 800606c:	d053      	beq.n	8006116 <_dtoa_r+0x566>
 800606e:	2200      	movs	r2, #0
 8006070:	4b0f      	ldr	r3, [pc, #60]	; (80060b0 <_dtoa_r+0x500>)
 8006072:	f7fa fdc1 	bl	8000bf8 <__aeabi_dmul>
 8006076:	2200      	movs	r2, #0
 8006078:	2300      	movs	r3, #0
 800607a:	4606      	mov	r6, r0
 800607c:	460f      	mov	r7, r1
 800607e:	f7fb f823 	bl	80010c8 <__aeabi_dcmpeq>
 8006082:	2800      	cmp	r0, #0
 8006084:	f040 81ea 	bne.w	800645c <_dtoa_r+0x8ac>
 8006088:	f8cd a000 	str.w	sl, [sp]
 800608c:	f8cd 901c 	str.w	r9, [sp, #28]
 8006090:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8006094:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8006098:	e017      	b.n	80060ca <_dtoa_r+0x51a>
 800609a:	bf00      	nop
 800609c:	08008b90 	.word	0x08008b90
 80060a0:	08008b68 	.word	0x08008b68
 80060a4:	3ff00000 	.word	0x3ff00000
 80060a8:	401c0000 	.word	0x401c0000
 80060ac:	3fe00000 	.word	0x3fe00000
 80060b0:	40240000 	.word	0x40240000
 80060b4:	f7fa fda0 	bl	8000bf8 <__aeabi_dmul>
 80060b8:	2200      	movs	r2, #0
 80060ba:	2300      	movs	r3, #0
 80060bc:	4606      	mov	r6, r0
 80060be:	460f      	mov	r7, r1
 80060c0:	f7fb f802 	bl	80010c8 <__aeabi_dcmpeq>
 80060c4:	2800      	cmp	r0, #0
 80060c6:	f040 833d 	bne.w	8006744 <_dtoa_r+0xb94>
 80060ca:	464a      	mov	r2, r9
 80060cc:	4653      	mov	r3, sl
 80060ce:	4630      	mov	r0, r6
 80060d0:	4639      	mov	r1, r7
 80060d2:	f7fa febb 	bl	8000e4c <__aeabi_ddiv>
 80060d6:	f7fb f83f 	bl	8001158 <__aeabi_d2iz>
 80060da:	4605      	mov	r5, r0
 80060dc:	f7fa fd22 	bl	8000b24 <__aeabi_i2d>
 80060e0:	464a      	mov	r2, r9
 80060e2:	4653      	mov	r3, sl
 80060e4:	f7fa fd88 	bl	8000bf8 <__aeabi_dmul>
 80060e8:	4602      	mov	r2, r0
 80060ea:	460b      	mov	r3, r1
 80060ec:	4630      	mov	r0, r6
 80060ee:	4639      	mov	r1, r7
 80060f0:	f7fa fbca 	bl	8000888 <__aeabi_dsub>
 80060f4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80060f8:	f804 cb01 	strb.w	ip, [r4], #1
 80060fc:	eba4 0c0b 	sub.w	ip, r4, fp
 8006100:	45e0      	cmp	r8, ip
 8006102:	4606      	mov	r6, r0
 8006104:	460f      	mov	r7, r1
 8006106:	f04f 0200 	mov.w	r2, #0
 800610a:	4bc1      	ldr	r3, [pc, #772]	; (8006410 <_dtoa_r+0x860>)
 800610c:	d1d2      	bne.n	80060b4 <_dtoa_r+0x504>
 800610e:	f8dd a000 	ldr.w	sl, [sp]
 8006112:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006116:	4632      	mov	r2, r6
 8006118:	463b      	mov	r3, r7
 800611a:	4630      	mov	r0, r6
 800611c:	4639      	mov	r1, r7
 800611e:	f7fa fbb5 	bl	800088c <__adddf3>
 8006122:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006126:	4606      	mov	r6, r0
 8006128:	460f      	mov	r7, r1
 800612a:	f7fa fff5 	bl	8001118 <__aeabi_dcmpgt>
 800612e:	b958      	cbnz	r0, 8006148 <_dtoa_r+0x598>
 8006130:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006134:	4630      	mov	r0, r6
 8006136:	4639      	mov	r1, r7
 8006138:	f7fa ffc6 	bl	80010c8 <__aeabi_dcmpeq>
 800613c:	2800      	cmp	r0, #0
 800613e:	f000 818d 	beq.w	800645c <_dtoa_r+0x8ac>
 8006142:	07e9      	lsls	r1, r5, #31
 8006144:	f140 818a 	bpl.w	800645c <_dtoa_r+0x8ac>
 8006148:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800614c:	e005      	b.n	800615a <_dtoa_r+0x5aa>
 800614e:	459b      	cmp	fp, r3
 8006150:	f000 8373 	beq.w	800683a <_dtoa_r+0xc8a>
 8006154:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8006158:	461c      	mov	r4, r3
 800615a:	2d39      	cmp	r5, #57	; 0x39
 800615c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006160:	d0f5      	beq.n	800614e <_dtoa_r+0x59e>
 8006162:	3501      	adds	r5, #1
 8006164:	701d      	strb	r5, [r3, #0]
 8006166:	e179      	b.n	800645c <_dtoa_r+0x8ac>
 8006168:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800616a:	2a00      	cmp	r2, #0
 800616c:	d03b      	beq.n	80061e6 <_dtoa_r+0x636>
 800616e:	9a02      	ldr	r2, [sp, #8]
 8006170:	2a01      	cmp	r2, #1
 8006172:	f340 820b 	ble.w	800658c <_dtoa_r+0x9dc>
 8006176:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006178:	1e5f      	subs	r7, r3, #1
 800617a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800617c:	42bb      	cmp	r3, r7
 800617e:	f2c0 82e6 	blt.w	800674e <_dtoa_r+0xb9e>
 8006182:	1bdf      	subs	r7, r3, r7
 8006184:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006186:	2b00      	cmp	r3, #0
 8006188:	f2c0 830b 	blt.w	80067a2 <_dtoa_r+0xbf2>
 800618c:	9a08      	ldr	r2, [sp, #32]
 800618e:	4614      	mov	r4, r2
 8006190:	441a      	add	r2, r3
 8006192:	4498      	add	r8, r3
 8006194:	9208      	str	r2, [sp, #32]
 8006196:	2101      	movs	r1, #1
 8006198:	4648      	mov	r0, r9
 800619a:	f001 fadd 	bl	8007758 <__i2b>
 800619e:	4605      	mov	r5, r0
 80061a0:	e024      	b.n	80061ec <_dtoa_r+0x63c>
 80061a2:	2301      	movs	r3, #1
 80061a4:	930d      	str	r3, [sp, #52]	; 0x34
 80061a6:	e5af      	b.n	8005d08 <_dtoa_r+0x158>
 80061a8:	9a08      	ldr	r2, [sp, #32]
 80061aa:	9b06      	ldr	r3, [sp, #24]
 80061ac:	1ad2      	subs	r2, r2, r3
 80061ae:	425b      	negs	r3, r3
 80061b0:	930b      	str	r3, [sp, #44]	; 0x2c
 80061b2:	2300      	movs	r3, #0
 80061b4:	9208      	str	r2, [sp, #32]
 80061b6:	930c      	str	r3, [sp, #48]	; 0x30
 80061b8:	e5b5      	b.n	8005d26 <_dtoa_r+0x176>
 80061ba:	f1c4 0301 	rsb	r3, r4, #1
 80061be:	9308      	str	r3, [sp, #32]
 80061c0:	f04f 0800 	mov.w	r8, #0
 80061c4:	e5a7      	b.n	8005d16 <_dtoa_r+0x166>
 80061c6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80061ca:	4640      	mov	r0, r8
 80061cc:	f7fa fcaa 	bl	8000b24 <__aeabi_i2d>
 80061d0:	4632      	mov	r2, r6
 80061d2:	463b      	mov	r3, r7
 80061d4:	f7fa ff78 	bl	80010c8 <__aeabi_dcmpeq>
 80061d8:	2800      	cmp	r0, #0
 80061da:	f47f ad81 	bne.w	8005ce0 <_dtoa_r+0x130>
 80061de:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80061e2:	9306      	str	r3, [sp, #24]
 80061e4:	e57c      	b.n	8005ce0 <_dtoa_r+0x130>
 80061e6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80061e8:	9c08      	ldr	r4, [sp, #32]
 80061ea:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80061ec:	2c00      	cmp	r4, #0
 80061ee:	dd0c      	ble.n	800620a <_dtoa_r+0x65a>
 80061f0:	f1b8 0f00 	cmp.w	r8, #0
 80061f4:	dd09      	ble.n	800620a <_dtoa_r+0x65a>
 80061f6:	4544      	cmp	r4, r8
 80061f8:	9a08      	ldr	r2, [sp, #32]
 80061fa:	4623      	mov	r3, r4
 80061fc:	bfa8      	it	ge
 80061fe:	4643      	movge	r3, r8
 8006200:	1ad2      	subs	r2, r2, r3
 8006202:	9208      	str	r2, [sp, #32]
 8006204:	1ae4      	subs	r4, r4, r3
 8006206:	eba8 0803 	sub.w	r8, r8, r3
 800620a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800620c:	b16b      	cbz	r3, 800622a <_dtoa_r+0x67a>
 800620e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8006210:	2a00      	cmp	r2, #0
 8006212:	f000 8290 	beq.w	8006736 <_dtoa_r+0xb86>
 8006216:	1bde      	subs	r6, r3, r7
 8006218:	2f00      	cmp	r7, #0
 800621a:	f040 819b 	bne.w	8006554 <_dtoa_r+0x9a4>
 800621e:	4651      	mov	r1, sl
 8006220:	4632      	mov	r2, r6
 8006222:	4648      	mov	r0, r9
 8006224:	f001 fb48 	bl	80078b8 <__pow5mult>
 8006228:	4682      	mov	sl, r0
 800622a:	2101      	movs	r1, #1
 800622c:	4648      	mov	r0, r9
 800622e:	f001 fa93 	bl	8007758 <__i2b>
 8006232:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006234:	4606      	mov	r6, r0
 8006236:	2a00      	cmp	r2, #0
 8006238:	f040 8125 	bne.w	8006486 <_dtoa_r+0x8d6>
 800623c:	9b02      	ldr	r3, [sp, #8]
 800623e:	2b01      	cmp	r3, #1
 8006240:	f340 816c 	ble.w	800651c <_dtoa_r+0x96c>
 8006244:	2001      	movs	r0, #1
 8006246:	4440      	add	r0, r8
 8006248:	f010 001f 	ands.w	r0, r0, #31
 800624c:	f000 8119 	beq.w	8006482 <_dtoa_r+0x8d2>
 8006250:	f1c0 0320 	rsb	r3, r0, #32
 8006254:	2b04      	cmp	r3, #4
 8006256:	f340 83ac 	ble.w	80069b2 <_dtoa_r+0xe02>
 800625a:	f1c0 001c 	rsb	r0, r0, #28
 800625e:	9b08      	ldr	r3, [sp, #32]
 8006260:	4403      	add	r3, r0
 8006262:	9308      	str	r3, [sp, #32]
 8006264:	4404      	add	r4, r0
 8006266:	4480      	add	r8, r0
 8006268:	9b08      	ldr	r3, [sp, #32]
 800626a:	2b00      	cmp	r3, #0
 800626c:	dd05      	ble.n	800627a <_dtoa_r+0x6ca>
 800626e:	4651      	mov	r1, sl
 8006270:	461a      	mov	r2, r3
 8006272:	4648      	mov	r0, r9
 8006274:	f001 fb70 	bl	8007958 <__lshift>
 8006278:	4682      	mov	sl, r0
 800627a:	f1b8 0f00 	cmp.w	r8, #0
 800627e:	dd05      	ble.n	800628c <_dtoa_r+0x6dc>
 8006280:	4631      	mov	r1, r6
 8006282:	4642      	mov	r2, r8
 8006284:	4648      	mov	r0, r9
 8006286:	f001 fb67 	bl	8007958 <__lshift>
 800628a:	4606      	mov	r6, r0
 800628c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800628e:	2b00      	cmp	r3, #0
 8006290:	d177      	bne.n	8006382 <_dtoa_r+0x7d2>
 8006292:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006294:	2b00      	cmp	r3, #0
 8006296:	f340 8209 	ble.w	80066ac <_dtoa_r+0xafc>
 800629a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800629c:	2b00      	cmp	r3, #0
 800629e:	f000 8089 	beq.w	80063b4 <_dtoa_r+0x804>
 80062a2:	2c00      	cmp	r4, #0
 80062a4:	f300 816b 	bgt.w	800657e <_dtoa_r+0x9ce>
 80062a8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80062aa:	2b00      	cmp	r3, #0
 80062ac:	f040 81cd 	bne.w	800664a <_dtoa_r+0xa9a>
 80062b0:	46a8      	mov	r8, r5
 80062b2:	9a00      	ldr	r2, [sp, #0]
 80062b4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80062b8:	f002 0201 	and.w	r2, r2, #1
 80062bc:	920a      	str	r2, [sp, #40]	; 0x28
 80062be:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80062c0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80062c4:	441a      	add	r2, r3
 80062c6:	465f      	mov	r7, fp
 80062c8:	9209      	str	r2, [sp, #36]	; 0x24
 80062ca:	46b3      	mov	fp, r6
 80062cc:	4659      	mov	r1, fp
 80062ce:	4650      	mov	r0, sl
 80062d0:	f7ff fbdc 	bl	8005a8c <quorem>
 80062d4:	4629      	mov	r1, r5
 80062d6:	4604      	mov	r4, r0
 80062d8:	4650      	mov	r0, sl
 80062da:	f001 fb93 	bl	8007a04 <__mcmp>
 80062de:	4659      	mov	r1, fp
 80062e0:	4606      	mov	r6, r0
 80062e2:	4642      	mov	r2, r8
 80062e4:	4648      	mov	r0, r9
 80062e6:	f001 fba9 	bl	8007a3c <__mdiff>
 80062ea:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80062ee:	9300      	str	r3, [sp, #0]
 80062f0:	68c3      	ldr	r3, [r0, #12]
 80062f2:	4601      	mov	r1, r0
 80062f4:	2b00      	cmp	r3, #0
 80062f6:	f040 81d4 	bne.w	80066a2 <_dtoa_r+0xaf2>
 80062fa:	9008      	str	r0, [sp, #32]
 80062fc:	4650      	mov	r0, sl
 80062fe:	f001 fb81 	bl	8007a04 <__mcmp>
 8006302:	9a08      	ldr	r2, [sp, #32]
 8006304:	9007      	str	r0, [sp, #28]
 8006306:	4611      	mov	r1, r2
 8006308:	4648      	mov	r0, r9
 800630a:	f001 f98b 	bl	8007624 <_Bfree>
 800630e:	9b07      	ldr	r3, [sp, #28]
 8006310:	b933      	cbnz	r3, 8006320 <_dtoa_r+0x770>
 8006312:	9a02      	ldr	r2, [sp, #8]
 8006314:	b922      	cbnz	r2, 8006320 <_dtoa_r+0x770>
 8006316:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006318:	2b00      	cmp	r3, #0
 800631a:	f000 8319 	beq.w	8006950 <_dtoa_r+0xda0>
 800631e:	9b02      	ldr	r3, [sp, #8]
 8006320:	2e00      	cmp	r6, #0
 8006322:	f2c0 821c 	blt.w	800675e <_dtoa_r+0xbae>
 8006326:	d105      	bne.n	8006334 <_dtoa_r+0x784>
 8006328:	9a02      	ldr	r2, [sp, #8]
 800632a:	b91a      	cbnz	r2, 8006334 <_dtoa_r+0x784>
 800632c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800632e:	2a00      	cmp	r2, #0
 8006330:	f000 8215 	beq.w	800675e <_dtoa_r+0xbae>
 8006334:	2b00      	cmp	r3, #0
 8006336:	f107 0401 	add.w	r4, r7, #1
 800633a:	f300 8225 	bgt.w	8006788 <_dtoa_r+0xbd8>
 800633e:	9b00      	ldr	r3, [sp, #0]
 8006340:	703b      	strb	r3, [r7, #0]
 8006342:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006344:	42bb      	cmp	r3, r7
 8006346:	f000 8230 	beq.w	80067aa <_dtoa_r+0xbfa>
 800634a:	4651      	mov	r1, sl
 800634c:	2300      	movs	r3, #0
 800634e:	220a      	movs	r2, #10
 8006350:	4648      	mov	r0, r9
 8006352:	f001 f971 	bl	8007638 <__multadd>
 8006356:	4545      	cmp	r5, r8
 8006358:	4682      	mov	sl, r0
 800635a:	4629      	mov	r1, r5
 800635c:	f04f 0300 	mov.w	r3, #0
 8006360:	f04f 020a 	mov.w	r2, #10
 8006364:	4648      	mov	r0, r9
 8006366:	f000 8196 	beq.w	8006696 <_dtoa_r+0xae6>
 800636a:	f001 f965 	bl	8007638 <__multadd>
 800636e:	4641      	mov	r1, r8
 8006370:	4605      	mov	r5, r0
 8006372:	2300      	movs	r3, #0
 8006374:	220a      	movs	r2, #10
 8006376:	4648      	mov	r0, r9
 8006378:	f001 f95e 	bl	8007638 <__multadd>
 800637c:	4627      	mov	r7, r4
 800637e:	4680      	mov	r8, r0
 8006380:	e7a4      	b.n	80062cc <_dtoa_r+0x71c>
 8006382:	4631      	mov	r1, r6
 8006384:	4650      	mov	r0, sl
 8006386:	f001 fb3d 	bl	8007a04 <__mcmp>
 800638a:	2800      	cmp	r0, #0
 800638c:	da81      	bge.n	8006292 <_dtoa_r+0x6e2>
 800638e:	9f06      	ldr	r7, [sp, #24]
 8006390:	4651      	mov	r1, sl
 8006392:	2300      	movs	r3, #0
 8006394:	220a      	movs	r2, #10
 8006396:	4648      	mov	r0, r9
 8006398:	3f01      	subs	r7, #1
 800639a:	9706      	str	r7, [sp, #24]
 800639c:	f001 f94c 	bl	8007638 <__multadd>
 80063a0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80063a2:	4682      	mov	sl, r0
 80063a4:	2b00      	cmp	r3, #0
 80063a6:	f040 82eb 	bne.w	8006980 <_dtoa_r+0xdd0>
 80063aa:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80063ac:	2b00      	cmp	r3, #0
 80063ae:	f340 82f3 	ble.w	8006998 <_dtoa_r+0xde8>
 80063b2:	9309      	str	r3, [sp, #36]	; 0x24
 80063b4:	465c      	mov	r4, fp
 80063b6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80063ba:	e002      	b.n	80063c2 <_dtoa_r+0x812>
 80063bc:	f001 f93c 	bl	8007638 <__multadd>
 80063c0:	4682      	mov	sl, r0
 80063c2:	4631      	mov	r1, r6
 80063c4:	4650      	mov	r0, sl
 80063c6:	f7ff fb61 	bl	8005a8c <quorem>
 80063ca:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80063ce:	f804 7b01 	strb.w	r7, [r4], #1
 80063d2:	eba4 030b 	sub.w	r3, r4, fp
 80063d6:	4598      	cmp	r8, r3
 80063d8:	f04f 020a 	mov.w	r2, #10
 80063dc:	f04f 0300 	mov.w	r3, #0
 80063e0:	4651      	mov	r1, sl
 80063e2:	4648      	mov	r0, r9
 80063e4:	dcea      	bgt.n	80063bc <_dtoa_r+0x80c>
 80063e6:	2300      	movs	r3, #0
 80063e8:	9700      	str	r7, [sp, #0]
 80063ea:	9302      	str	r3, [sp, #8]
 80063ec:	4651      	mov	r1, sl
 80063ee:	2201      	movs	r2, #1
 80063f0:	4648      	mov	r0, r9
 80063f2:	f001 fab1 	bl	8007958 <__lshift>
 80063f6:	4631      	mov	r1, r6
 80063f8:	4682      	mov	sl, r0
 80063fa:	f001 fb03 	bl	8007a04 <__mcmp>
 80063fe:	2800      	cmp	r0, #0
 8006400:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8006404:	dc14      	bgt.n	8006430 <_dtoa_r+0x880>
 8006406:	d108      	bne.n	800641a <_dtoa_r+0x86a>
 8006408:	9b00      	ldr	r3, [sp, #0]
 800640a:	07db      	lsls	r3, r3, #31
 800640c:	d410      	bmi.n	8006430 <_dtoa_r+0x880>
 800640e:	e004      	b.n	800641a <_dtoa_r+0x86a>
 8006410:	40240000 	.word	0x40240000
 8006414:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8006418:	461c      	mov	r4, r3
 800641a:	2a30      	cmp	r2, #48	; 0x30
 800641c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006420:	d0f8      	beq.n	8006414 <_dtoa_r+0x864>
 8006422:	e00b      	b.n	800643c <_dtoa_r+0x88c>
 8006424:	459b      	cmp	fp, r3
 8006426:	f000 814e 	beq.w	80066c6 <_dtoa_r+0xb16>
 800642a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800642e:	461c      	mov	r4, r3
 8006430:	2a39      	cmp	r2, #57	; 0x39
 8006432:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006436:	d0f5      	beq.n	8006424 <_dtoa_r+0x874>
 8006438:	3201      	adds	r2, #1
 800643a:	701a      	strb	r2, [r3, #0]
 800643c:	4631      	mov	r1, r6
 800643e:	4648      	mov	r0, r9
 8006440:	f001 f8f0 	bl	8007624 <_Bfree>
 8006444:	b155      	cbz	r5, 800645c <_dtoa_r+0x8ac>
 8006446:	9902      	ldr	r1, [sp, #8]
 8006448:	b121      	cbz	r1, 8006454 <_dtoa_r+0x8a4>
 800644a:	42a9      	cmp	r1, r5
 800644c:	d002      	beq.n	8006454 <_dtoa_r+0x8a4>
 800644e:	4648      	mov	r0, r9
 8006450:	f001 f8e8 	bl	8007624 <_Bfree>
 8006454:	4629      	mov	r1, r5
 8006456:	4648      	mov	r0, r9
 8006458:	f001 f8e4 	bl	8007624 <_Bfree>
 800645c:	4651      	mov	r1, sl
 800645e:	4648      	mov	r0, r9
 8006460:	f001 f8e0 	bl	8007624 <_Bfree>
 8006464:	2200      	movs	r2, #0
 8006466:	9b06      	ldr	r3, [sp, #24]
 8006468:	7022      	strb	r2, [r4, #0]
 800646a:	9a05      	ldr	r2, [sp, #20]
 800646c:	3301      	adds	r3, #1
 800646e:	6013      	str	r3, [r2, #0]
 8006470:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006472:	2b00      	cmp	r3, #0
 8006474:	f43f abdb 	beq.w	8005c2e <_dtoa_r+0x7e>
 8006478:	4658      	mov	r0, fp
 800647a:	601c      	str	r4, [r3, #0]
 800647c:	b01b      	add	sp, #108	; 0x6c
 800647e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006482:	201c      	movs	r0, #28
 8006484:	e6eb      	b.n	800625e <_dtoa_r+0x6ae>
 8006486:	4601      	mov	r1, r0
 8006488:	4648      	mov	r0, r9
 800648a:	f001 fa15 	bl	80078b8 <__pow5mult>
 800648e:	9b02      	ldr	r3, [sp, #8]
 8006490:	2b01      	cmp	r3, #1
 8006492:	4606      	mov	r6, r0
 8006494:	f340 80d4 	ble.w	8006640 <_dtoa_r+0xa90>
 8006498:	2300      	movs	r3, #0
 800649a:	930c      	str	r3, [sp, #48]	; 0x30
 800649c:	6933      	ldr	r3, [r6, #16]
 800649e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80064a2:	6918      	ldr	r0, [r3, #16]
 80064a4:	f001 f908 	bl	80076b8 <__hi0bits>
 80064a8:	f1c0 0020 	rsb	r0, r0, #32
 80064ac:	e6cb      	b.n	8006246 <_dtoa_r+0x696>
 80064ae:	900d      	str	r0, [sp, #52]	; 0x34
 80064b0:	e42a      	b.n	8005d08 <_dtoa_r+0x158>
 80064b2:	2501      	movs	r5, #1
 80064b4:	e440      	b.n	8005d38 <_dtoa_r+0x188>
 80064b6:	f1c3 0820 	rsb	r8, r3, #32
 80064ba:	9b00      	ldr	r3, [sp, #0]
 80064bc:	fa03 f008 	lsl.w	r0, r3, r8
 80064c0:	f7ff bbd8 	b.w	8005c74 <_dtoa_r+0xc4>
 80064c4:	2300      	movs	r3, #0
 80064c6:	930a      	str	r3, [sp, #40]	; 0x28
 80064c8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80064cc:	4413      	add	r3, r2
 80064ce:	930e      	str	r3, [sp, #56]	; 0x38
 80064d0:	3301      	adds	r3, #1
 80064d2:	2b01      	cmp	r3, #1
 80064d4:	461e      	mov	r6, r3
 80064d6:	9309      	str	r3, [sp, #36]	; 0x24
 80064d8:	bfb8      	it	lt
 80064da:	2601      	movlt	r6, #1
 80064dc:	2100      	movs	r1, #0
 80064de:	2e17      	cmp	r6, #23
 80064e0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80064e4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80064e6:	f77f ac89 	ble.w	8005dfc <_dtoa_r+0x24c>
 80064ea:	2201      	movs	r2, #1
 80064ec:	2304      	movs	r3, #4
 80064ee:	005b      	lsls	r3, r3, #1
 80064f0:	f103 0014 	add.w	r0, r3, #20
 80064f4:	42b0      	cmp	r0, r6
 80064f6:	4611      	mov	r1, r2
 80064f8:	f102 0201 	add.w	r2, r2, #1
 80064fc:	d9f7      	bls.n	80064ee <_dtoa_r+0x93e>
 80064fe:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8006502:	e47b      	b.n	8005dfc <_dtoa_r+0x24c>
 8006504:	2300      	movs	r3, #0
 8006506:	930a      	str	r3, [sp, #40]	; 0x28
 8006508:	9e07      	ldr	r6, [sp, #28]
 800650a:	2e00      	cmp	r6, #0
 800650c:	f340 80e2 	ble.w	80066d4 <_dtoa_r+0xb24>
 8006510:	960e      	str	r6, [sp, #56]	; 0x38
 8006512:	9609      	str	r6, [sp, #36]	; 0x24
 8006514:	e7e2      	b.n	80064dc <_dtoa_r+0x92c>
 8006516:	2301      	movs	r3, #1
 8006518:	930a      	str	r3, [sp, #40]	; 0x28
 800651a:	e7f5      	b.n	8006508 <_dtoa_r+0x958>
 800651c:	9b00      	ldr	r3, [sp, #0]
 800651e:	2b00      	cmp	r3, #0
 8006520:	f47f ae90 	bne.w	8006244 <_dtoa_r+0x694>
 8006524:	e9dd 1200 	ldrd	r1, r2, [sp]
 8006528:	f3c2 0313 	ubfx	r3, r2, #0, #20
 800652c:	2b00      	cmp	r3, #0
 800652e:	f040 8192 	bne.w	8006856 <_dtoa_r+0xca6>
 8006532:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8006536:	0d1b      	lsrs	r3, r3, #20
 8006538:	051b      	lsls	r3, r3, #20
 800653a:	b12b      	cbz	r3, 8006548 <_dtoa_r+0x998>
 800653c:	9b08      	ldr	r3, [sp, #32]
 800653e:	3301      	adds	r3, #1
 8006540:	9308      	str	r3, [sp, #32]
 8006542:	f108 0801 	add.w	r8, r8, #1
 8006546:	2301      	movs	r3, #1
 8006548:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800654a:	930c      	str	r3, [sp, #48]	; 0x30
 800654c:	2a00      	cmp	r2, #0
 800654e:	f43f ae79 	beq.w	8006244 <_dtoa_r+0x694>
 8006552:	e7a3      	b.n	800649c <_dtoa_r+0x8ec>
 8006554:	463a      	mov	r2, r7
 8006556:	4629      	mov	r1, r5
 8006558:	4648      	mov	r0, r9
 800655a:	f001 f9ad 	bl	80078b8 <__pow5mult>
 800655e:	4652      	mov	r2, sl
 8006560:	4601      	mov	r1, r0
 8006562:	4605      	mov	r5, r0
 8006564:	4648      	mov	r0, r9
 8006566:	f001 f901 	bl	800776c <__multiply>
 800656a:	4651      	mov	r1, sl
 800656c:	4607      	mov	r7, r0
 800656e:	4648      	mov	r0, r9
 8006570:	f001 f858 	bl	8007624 <_Bfree>
 8006574:	46ba      	mov	sl, r7
 8006576:	2e00      	cmp	r6, #0
 8006578:	f43f ae57 	beq.w	800622a <_dtoa_r+0x67a>
 800657c:	e64f      	b.n	800621e <_dtoa_r+0x66e>
 800657e:	4629      	mov	r1, r5
 8006580:	4622      	mov	r2, r4
 8006582:	4648      	mov	r0, r9
 8006584:	f001 f9e8 	bl	8007958 <__lshift>
 8006588:	4605      	mov	r5, r0
 800658a:	e68d      	b.n	80062a8 <_dtoa_r+0x6f8>
 800658c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800658e:	2a00      	cmp	r2, #0
 8006590:	f000 815d 	beq.w	800684e <_dtoa_r+0xc9e>
 8006594:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8006598:	9a08      	ldr	r2, [sp, #32]
 800659a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 800659c:	4614      	mov	r4, r2
 800659e:	441a      	add	r2, r3
 80065a0:	4498      	add	r8, r3
 80065a2:	9208      	str	r2, [sp, #32]
 80065a4:	e5f7      	b.n	8006196 <_dtoa_r+0x5e6>
 80065a6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80065a8:	2b00      	cmp	r3, #0
 80065aa:	f73f ad3e 	bgt.w	800602a <_dtoa_r+0x47a>
 80065ae:	f040 80bc 	bne.w	800672a <_dtoa_r+0xb7a>
 80065b2:	ec51 0b17 	vmov	r0, r1, d7
 80065b6:	2200      	movs	r2, #0
 80065b8:	4bb2      	ldr	r3, [pc, #712]	; (8006884 <_dtoa_r+0xcd4>)
 80065ba:	f7fa fb1d 	bl	8000bf8 <__aeabi_dmul>
 80065be:	e9dd 2300 	ldrd	r2, r3, [sp]
 80065c2:	f7fa fd9f 	bl	8001104 <__aeabi_dcmpge>
 80065c6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80065c8:	4635      	mov	r5, r6
 80065ca:	2800      	cmp	r0, #0
 80065cc:	d176      	bne.n	80066bc <_dtoa_r+0xb0c>
 80065ce:	9a06      	ldr	r2, [sp, #24]
 80065d0:	2331      	movs	r3, #49	; 0x31
 80065d2:	3201      	adds	r2, #1
 80065d4:	9206      	str	r2, [sp, #24]
 80065d6:	f88b 3000 	strb.w	r3, [fp]
 80065da:	f10b 0401 	add.w	r4, fp, #1
 80065de:	4631      	mov	r1, r6
 80065e0:	4648      	mov	r0, r9
 80065e2:	f001 f81f 	bl	8007624 <_Bfree>
 80065e6:	2d00      	cmp	r5, #0
 80065e8:	f47f af34 	bne.w	8006454 <_dtoa_r+0x8a4>
 80065ec:	e736      	b.n	800645c <_dtoa_r+0x8ac>
 80065ee:	f000 8142 	beq.w	8006876 <_dtoa_r+0xcc6>
 80065f2:	9b06      	ldr	r3, [sp, #24]
 80065f4:	425c      	negs	r4, r3
 80065f6:	4ba4      	ldr	r3, [pc, #656]	; (8006888 <_dtoa_r+0xcd8>)
 80065f8:	f004 020f 	and.w	r2, r4, #15
 80065fc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006600:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006604:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006608:	f7fa faf6 	bl	8000bf8 <__aeabi_dmul>
 800660c:	1124      	asrs	r4, r4, #4
 800660e:	e9cd 0100 	strd	r0, r1, [sp]
 8006612:	f000 81c6 	beq.w	80069a2 <_dtoa_r+0xdf2>
 8006616:	4d9d      	ldr	r5, [pc, #628]	; (800688c <_dtoa_r+0xcdc>)
 8006618:	2300      	movs	r3, #0
 800661a:	2602      	movs	r6, #2
 800661c:	07e7      	lsls	r7, r4, #31
 800661e:	d505      	bpl.n	800662c <_dtoa_r+0xa7c>
 8006620:	e9d5 2300 	ldrd	r2, r3, [r5]
 8006624:	f7fa fae8 	bl	8000bf8 <__aeabi_dmul>
 8006628:	3601      	adds	r6, #1
 800662a:	2301      	movs	r3, #1
 800662c:	1064      	asrs	r4, r4, #1
 800662e:	f105 0508 	add.w	r5, r5, #8
 8006632:	d1f3      	bne.n	800661c <_dtoa_r+0xa6c>
 8006634:	2b00      	cmp	r3, #0
 8006636:	f43f ac27 	beq.w	8005e88 <_dtoa_r+0x2d8>
 800663a:	e9cd 0100 	strd	r0, r1, [sp]
 800663e:	e423      	b.n	8005e88 <_dtoa_r+0x2d8>
 8006640:	9b00      	ldr	r3, [sp, #0]
 8006642:	2b00      	cmp	r3, #0
 8006644:	f43f af6e 	beq.w	8006524 <_dtoa_r+0x974>
 8006648:	e726      	b.n	8006498 <_dtoa_r+0x8e8>
 800664a:	6869      	ldr	r1, [r5, #4]
 800664c:	4648      	mov	r0, r9
 800664e:	f000 ffc3 	bl	80075d8 <_Balloc>
 8006652:	692b      	ldr	r3, [r5, #16]
 8006654:	3302      	adds	r3, #2
 8006656:	009a      	lsls	r2, r3, #2
 8006658:	4604      	mov	r4, r0
 800665a:	f105 010c 	add.w	r1, r5, #12
 800665e:	300c      	adds	r0, #12
 8006660:	f7f9 ff9c 	bl	800059c <memcpy>
 8006664:	4621      	mov	r1, r4
 8006666:	2201      	movs	r2, #1
 8006668:	4648      	mov	r0, r9
 800666a:	f001 f975 	bl	8007958 <__lshift>
 800666e:	4680      	mov	r8, r0
 8006670:	e61f      	b.n	80062b2 <_dtoa_r+0x702>
 8006672:	2400      	movs	r4, #0
 8006674:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8006678:	4621      	mov	r1, r4
 800667a:	4648      	mov	r0, r9
 800667c:	f000 ffac 	bl	80075d8 <_Balloc>
 8006680:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8006684:	930e      	str	r3, [sp, #56]	; 0x38
 8006686:	9309      	str	r3, [sp, #36]	; 0x24
 8006688:	2301      	movs	r3, #1
 800668a:	4683      	mov	fp, r0
 800668c:	9407      	str	r4, [sp, #28]
 800668e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8006692:	930a      	str	r3, [sp, #40]	; 0x28
 8006694:	e4b6      	b.n	8006004 <_dtoa_r+0x454>
 8006696:	f000 ffcf 	bl	8007638 <__multadd>
 800669a:	4627      	mov	r7, r4
 800669c:	4605      	mov	r5, r0
 800669e:	4680      	mov	r8, r0
 80066a0:	e614      	b.n	80062cc <_dtoa_r+0x71c>
 80066a2:	4648      	mov	r0, r9
 80066a4:	f000 ffbe 	bl	8007624 <_Bfree>
 80066a8:	2301      	movs	r3, #1
 80066aa:	e639      	b.n	8006320 <_dtoa_r+0x770>
 80066ac:	9b02      	ldr	r3, [sp, #8]
 80066ae:	2b02      	cmp	r3, #2
 80066b0:	f77f adf3 	ble.w	800629a <_dtoa_r+0x6ea>
 80066b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80066b6:	2b00      	cmp	r3, #0
 80066b8:	f000 80cf 	beq.w	800685a <_dtoa_r+0xcaa>
 80066bc:	9b07      	ldr	r3, [sp, #28]
 80066be:	43db      	mvns	r3, r3
 80066c0:	9306      	str	r3, [sp, #24]
 80066c2:	465c      	mov	r4, fp
 80066c4:	e78b      	b.n	80065de <_dtoa_r+0xa2e>
 80066c6:	9a06      	ldr	r2, [sp, #24]
 80066c8:	2331      	movs	r3, #49	; 0x31
 80066ca:	3201      	adds	r2, #1
 80066cc:	9206      	str	r2, [sp, #24]
 80066ce:	f88b 3000 	strb.w	r3, [fp]
 80066d2:	e6b3      	b.n	800643c <_dtoa_r+0x88c>
 80066d4:	2401      	movs	r4, #1
 80066d6:	9409      	str	r4, [sp, #36]	; 0x24
 80066d8:	9407      	str	r4, [sp, #28]
 80066da:	f7ff bb8b 	b.w	8005df4 <_dtoa_r+0x244>
 80066de:	4630      	mov	r0, r6
 80066e0:	f7fa fa20 	bl	8000b24 <__aeabi_i2d>
 80066e4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80066e8:	f7fa fa86 	bl	8000bf8 <__aeabi_dmul>
 80066ec:	2200      	movs	r2, #0
 80066ee:	4b68      	ldr	r3, [pc, #416]	; (8006890 <_dtoa_r+0xce0>)
 80066f0:	f7fa f8cc 	bl	800088c <__adddf3>
 80066f4:	4606      	mov	r6, r0
 80066f6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80066fa:	2200      	movs	r2, #0
 80066fc:	4b61      	ldr	r3, [pc, #388]	; (8006884 <_dtoa_r+0xcd4>)
 80066fe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006702:	f7fa f8c1 	bl	8000888 <__aeabi_dsub>
 8006706:	4632      	mov	r2, r6
 8006708:	463b      	mov	r3, r7
 800670a:	4604      	mov	r4, r0
 800670c:	460d      	mov	r5, r1
 800670e:	f7fa fd03 	bl	8001118 <__aeabi_dcmpgt>
 8006712:	2800      	cmp	r0, #0
 8006714:	d14f      	bne.n	80067b6 <_dtoa_r+0xc06>
 8006716:	4632      	mov	r2, r6
 8006718:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 800671c:	4620      	mov	r0, r4
 800671e:	4629      	mov	r1, r5
 8006720:	f7fa fcdc 	bl	80010dc <__aeabi_dcmplt>
 8006724:	2800      	cmp	r0, #0
 8006726:	f43f ac69 	beq.w	8005ffc <_dtoa_r+0x44c>
 800672a:	2600      	movs	r6, #0
 800672c:	4635      	mov	r5, r6
 800672e:	e7c5      	b.n	80066bc <_dtoa_r+0xb0c>
 8006730:	2301      	movs	r3, #1
 8006732:	930a      	str	r3, [sp, #40]	; 0x28
 8006734:	e6c8      	b.n	80064c8 <_dtoa_r+0x918>
 8006736:	4651      	mov	r1, sl
 8006738:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800673a:	4648      	mov	r0, r9
 800673c:	f001 f8bc 	bl	80078b8 <__pow5mult>
 8006740:	4682      	mov	sl, r0
 8006742:	e572      	b.n	800622a <_dtoa_r+0x67a>
 8006744:	f8dd a000 	ldr.w	sl, [sp]
 8006748:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800674c:	e686      	b.n	800645c <_dtoa_r+0x8ac>
 800674e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006750:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006752:	1afb      	subs	r3, r7, r3
 8006754:	441a      	add	r2, r3
 8006756:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800675a:	2700      	movs	r7, #0
 800675c:	e512      	b.n	8006184 <_dtoa_r+0x5d4>
 800675e:	2b00      	cmp	r3, #0
 8006760:	9402      	str	r4, [sp, #8]
 8006762:	465e      	mov	r6, fp
 8006764:	f107 0401 	add.w	r4, r7, #1
 8006768:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800676c:	f300 80ba 	bgt.w	80068e4 <_dtoa_r+0xd34>
 8006770:	9b00      	ldr	r3, [sp, #0]
 8006772:	9502      	str	r5, [sp, #8]
 8006774:	703b      	strb	r3, [r7, #0]
 8006776:	4645      	mov	r5, r8
 8006778:	e660      	b.n	800643c <_dtoa_r+0x88c>
 800677a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800677e:	2602      	movs	r6, #2
 8006780:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8006784:	f7ff bb67 	b.w	8005e56 <_dtoa_r+0x2a6>
 8006788:	9b00      	ldr	r3, [sp, #0]
 800678a:	2b39      	cmp	r3, #57	; 0x39
 800678c:	465e      	mov	r6, fp
 800678e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006792:	f000 80b9 	beq.w	8006908 <_dtoa_r+0xd58>
 8006796:	9b00      	ldr	r3, [sp, #0]
 8006798:	9502      	str	r5, [sp, #8]
 800679a:	3301      	adds	r3, #1
 800679c:	703b      	strb	r3, [r7, #0]
 800679e:	4645      	mov	r5, r8
 80067a0:	e64c      	b.n	800643c <_dtoa_r+0x88c>
 80067a2:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 80067a6:	1a9c      	subs	r4, r3, r2
 80067a8:	e4f5      	b.n	8006196 <_dtoa_r+0x5e6>
 80067aa:	465e      	mov	r6, fp
 80067ac:	9502      	str	r5, [sp, #8]
 80067ae:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80067b2:	4645      	mov	r5, r8
 80067b4:	e61a      	b.n	80063ec <_dtoa_r+0x83c>
 80067b6:	2600      	movs	r6, #0
 80067b8:	4635      	mov	r5, r6
 80067ba:	e708      	b.n	80065ce <_dtoa_r+0xa1e>
 80067bc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80067c0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80067c4:	f7fa fa18 	bl	8000bf8 <__aeabi_dmul>
 80067c8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80067ca:	f88b 5000 	strb.w	r5, [fp]
 80067ce:	2b01      	cmp	r3, #1
 80067d0:	e9cd 0100 	strd	r0, r1, [sp]
 80067d4:	d020      	beq.n	8006818 <_dtoa_r+0xc68>
 80067d6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80067d8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80067dc:	445b      	add	r3, fp
 80067de:	4698      	mov	r8, r3
 80067e0:	2200      	movs	r2, #0
 80067e2:	4b2c      	ldr	r3, [pc, #176]	; (8006894 <_dtoa_r+0xce4>)
 80067e4:	4630      	mov	r0, r6
 80067e6:	4639      	mov	r1, r7
 80067e8:	f7fa fa06 	bl	8000bf8 <__aeabi_dmul>
 80067ec:	460f      	mov	r7, r1
 80067ee:	4606      	mov	r6, r0
 80067f0:	f7fa fcb2 	bl	8001158 <__aeabi_d2iz>
 80067f4:	4605      	mov	r5, r0
 80067f6:	f7fa f995 	bl	8000b24 <__aeabi_i2d>
 80067fa:	3530      	adds	r5, #48	; 0x30
 80067fc:	4602      	mov	r2, r0
 80067fe:	460b      	mov	r3, r1
 8006800:	4630      	mov	r0, r6
 8006802:	4639      	mov	r1, r7
 8006804:	f7fa f840 	bl	8000888 <__aeabi_dsub>
 8006808:	f804 5b01 	strb.w	r5, [r4], #1
 800680c:	4544      	cmp	r4, r8
 800680e:	4606      	mov	r6, r0
 8006810:	460f      	mov	r7, r1
 8006812:	d1e5      	bne.n	80067e0 <_dtoa_r+0xc30>
 8006814:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8006818:	4b1f      	ldr	r3, [pc, #124]	; (8006898 <_dtoa_r+0xce8>)
 800681a:	2200      	movs	r2, #0
 800681c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006820:	f7fa f834 	bl	800088c <__adddf3>
 8006824:	4632      	mov	r2, r6
 8006826:	463b      	mov	r3, r7
 8006828:	f7fa fc58 	bl	80010dc <__aeabi_dcmplt>
 800682c:	2800      	cmp	r0, #0
 800682e:	d070      	beq.n	8006912 <_dtoa_r+0xd62>
 8006830:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006832:	9306      	str	r3, [sp, #24]
 8006834:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8006838:	e48f      	b.n	800615a <_dtoa_r+0x5aa>
 800683a:	2330      	movs	r3, #48	; 0x30
 800683c:	f88b 3000 	strb.w	r3, [fp]
 8006840:	9b06      	ldr	r3, [sp, #24]
 8006842:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8006846:	3301      	adds	r3, #1
 8006848:	9306      	str	r3, [sp, #24]
 800684a:	465b      	mov	r3, fp
 800684c:	e489      	b.n	8006162 <_dtoa_r+0x5b2>
 800684e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8006850:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8006854:	e6a0      	b.n	8006598 <_dtoa_r+0x9e8>
 8006856:	2300      	movs	r3, #0
 8006858:	e676      	b.n	8006548 <_dtoa_r+0x998>
 800685a:	4631      	mov	r1, r6
 800685c:	2205      	movs	r2, #5
 800685e:	4648      	mov	r0, r9
 8006860:	f000 feea 	bl	8007638 <__multadd>
 8006864:	4601      	mov	r1, r0
 8006866:	4606      	mov	r6, r0
 8006868:	4650      	mov	r0, sl
 800686a:	f001 f8cb 	bl	8007a04 <__mcmp>
 800686e:	2800      	cmp	r0, #0
 8006870:	f73f aead 	bgt.w	80065ce <_dtoa_r+0xa1e>
 8006874:	e722      	b.n	80066bc <_dtoa_r+0xb0c>
 8006876:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800687a:	2602      	movs	r6, #2
 800687c:	ed8d 7b00 	vstr	d7, [sp]
 8006880:	f7ff bb02 	b.w	8005e88 <_dtoa_r+0x2d8>
 8006884:	40140000 	.word	0x40140000
 8006888:	08008b90 	.word	0x08008b90
 800688c:	08008b68 	.word	0x08008b68
 8006890:	401c0000 	.word	0x401c0000
 8006894:	40240000 	.word	0x40240000
 8006898:	3fe00000 	.word	0x3fe00000
 800689c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800689e:	2b00      	cmp	r3, #0
 80068a0:	f43f af1d 	beq.w	80066de <_dtoa_r+0xb2e>
 80068a4:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 80068a6:	2c00      	cmp	r4, #0
 80068a8:	f77f aba8 	ble.w	8005ffc <_dtoa_r+0x44c>
 80068ac:	2200      	movs	r2, #0
 80068ae:	4b45      	ldr	r3, [pc, #276]	; (80069c4 <_dtoa_r+0xe14>)
 80068b0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80068b4:	f7fa f9a0 	bl	8000bf8 <__aeabi_dmul>
 80068b8:	e9cd 0100 	strd	r0, r1, [sp]
 80068bc:	1c70      	adds	r0, r6, #1
 80068be:	f7fa f931 	bl	8000b24 <__aeabi_i2d>
 80068c2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80068c6:	f7fa f997 	bl	8000bf8 <__aeabi_dmul>
 80068ca:	4b3f      	ldr	r3, [pc, #252]	; (80069c8 <_dtoa_r+0xe18>)
 80068cc:	2200      	movs	r2, #0
 80068ce:	f7f9 ffdd 	bl	800088c <__adddf3>
 80068d2:	9b06      	ldr	r3, [sp, #24]
 80068d4:	9412      	str	r4, [sp, #72]	; 0x48
 80068d6:	3b01      	subs	r3, #1
 80068d8:	4606      	mov	r6, r0
 80068da:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80068de:	9316      	str	r3, [sp, #88]	; 0x58
 80068e0:	f7ff baf3 	b.w	8005eca <_dtoa_r+0x31a>
 80068e4:	4651      	mov	r1, sl
 80068e6:	2201      	movs	r2, #1
 80068e8:	4648      	mov	r0, r9
 80068ea:	f001 f835 	bl	8007958 <__lshift>
 80068ee:	4631      	mov	r1, r6
 80068f0:	4682      	mov	sl, r0
 80068f2:	f001 f887 	bl	8007a04 <__mcmp>
 80068f6:	2800      	cmp	r0, #0
 80068f8:	dd3b      	ble.n	8006972 <_dtoa_r+0xdc2>
 80068fa:	9b00      	ldr	r3, [sp, #0]
 80068fc:	2b39      	cmp	r3, #57	; 0x39
 80068fe:	d003      	beq.n	8006908 <_dtoa_r+0xd58>
 8006900:	9b02      	ldr	r3, [sp, #8]
 8006902:	3331      	adds	r3, #49	; 0x31
 8006904:	9300      	str	r3, [sp, #0]
 8006906:	e733      	b.n	8006770 <_dtoa_r+0xbc0>
 8006908:	2239      	movs	r2, #57	; 0x39
 800690a:	9502      	str	r5, [sp, #8]
 800690c:	703a      	strb	r2, [r7, #0]
 800690e:	4645      	mov	r5, r8
 8006910:	e58e      	b.n	8006430 <_dtoa_r+0x880>
 8006912:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006916:	2000      	movs	r0, #0
 8006918:	492c      	ldr	r1, [pc, #176]	; (80069cc <_dtoa_r+0xe1c>)
 800691a:	f7f9 ffb5 	bl	8000888 <__aeabi_dsub>
 800691e:	4632      	mov	r2, r6
 8006920:	463b      	mov	r3, r7
 8006922:	f7fa fbf9 	bl	8001118 <__aeabi_dcmpgt>
 8006926:	b910      	cbnz	r0, 800692e <_dtoa_r+0xd7e>
 8006928:	f7ff bb68 	b.w	8005ffc <_dtoa_r+0x44c>
 800692c:	4614      	mov	r4, r2
 800692e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8006932:	2b30      	cmp	r3, #48	; 0x30
 8006934:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8006938:	d0f8      	beq.n	800692c <_dtoa_r+0xd7c>
 800693a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800693c:	9306      	str	r3, [sp, #24]
 800693e:	e58d      	b.n	800645c <_dtoa_r+0x8ac>
 8006940:	46d9      	mov	r9, fp
 8006942:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8006946:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800694a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800694c:	9306      	str	r3, [sp, #24]
 800694e:	e404      	b.n	800615a <_dtoa_r+0x5aa>
 8006950:	9b00      	ldr	r3, [sp, #0]
 8006952:	2b39      	cmp	r3, #57	; 0x39
 8006954:	4621      	mov	r1, r4
 8006956:	4632      	mov	r2, r6
 8006958:	f107 0401 	add.w	r4, r7, #1
 800695c:	465e      	mov	r6, fp
 800695e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006962:	d0d1      	beq.n	8006908 <_dtoa_r+0xd58>
 8006964:	2a00      	cmp	r2, #0
 8006966:	f77f af03 	ble.w	8006770 <_dtoa_r+0xbc0>
 800696a:	460b      	mov	r3, r1
 800696c:	3331      	adds	r3, #49	; 0x31
 800696e:	9300      	str	r3, [sp, #0]
 8006970:	e6fe      	b.n	8006770 <_dtoa_r+0xbc0>
 8006972:	f47f aefd 	bne.w	8006770 <_dtoa_r+0xbc0>
 8006976:	9b00      	ldr	r3, [sp, #0]
 8006978:	07da      	lsls	r2, r3, #31
 800697a:	f57f aef9 	bpl.w	8006770 <_dtoa_r+0xbc0>
 800697e:	e7bc      	b.n	80068fa <_dtoa_r+0xd4a>
 8006980:	4629      	mov	r1, r5
 8006982:	2300      	movs	r3, #0
 8006984:	220a      	movs	r2, #10
 8006986:	4648      	mov	r0, r9
 8006988:	f000 fe56 	bl	8007638 <__multadd>
 800698c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800698e:	2b00      	cmp	r3, #0
 8006990:	4605      	mov	r5, r0
 8006992:	dd09      	ble.n	80069a8 <_dtoa_r+0xdf8>
 8006994:	9309      	str	r3, [sp, #36]	; 0x24
 8006996:	e484      	b.n	80062a2 <_dtoa_r+0x6f2>
 8006998:	9b02      	ldr	r3, [sp, #8]
 800699a:	2b02      	cmp	r3, #2
 800699c:	dc0e      	bgt.n	80069bc <_dtoa_r+0xe0c>
 800699e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80069a0:	e507      	b.n	80063b2 <_dtoa_r+0x802>
 80069a2:	2602      	movs	r6, #2
 80069a4:	f7ff ba70 	b.w	8005e88 <_dtoa_r+0x2d8>
 80069a8:	9b02      	ldr	r3, [sp, #8]
 80069aa:	2b02      	cmp	r3, #2
 80069ac:	dc06      	bgt.n	80069bc <_dtoa_r+0xe0c>
 80069ae:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80069b0:	e7f0      	b.n	8006994 <_dtoa_r+0xde4>
 80069b2:	f43f ac59 	beq.w	8006268 <_dtoa_r+0x6b8>
 80069b6:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80069ba:	e450      	b.n	800625e <_dtoa_r+0x6ae>
 80069bc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80069be:	9309      	str	r3, [sp, #36]	; 0x24
 80069c0:	e678      	b.n	80066b4 <_dtoa_r+0xb04>
 80069c2:	bf00      	nop
 80069c4:	40240000 	.word	0x40240000
 80069c8:	401c0000 	.word	0x401c0000
 80069cc:	3fe00000 	.word	0x3fe00000

080069d0 <__sflush_r>:
 80069d0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80069d4:	b29a      	uxth	r2, r3
 80069d6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80069da:	460c      	mov	r4, r1
 80069dc:	0711      	lsls	r1, r2, #28
 80069de:	4680      	mov	r8, r0
 80069e0:	d444      	bmi.n	8006a6c <__sflush_r+0x9c>
 80069e2:	6862      	ldr	r2, [r4, #4]
 80069e4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80069e8:	2a00      	cmp	r2, #0
 80069ea:	81a3      	strh	r3, [r4, #12]
 80069ec:	dd59      	ble.n	8006aa2 <__sflush_r+0xd2>
 80069ee:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80069f0:	2d00      	cmp	r5, #0
 80069f2:	d053      	beq.n	8006a9c <__sflush_r+0xcc>
 80069f4:	2200      	movs	r2, #0
 80069f6:	b29b      	uxth	r3, r3
 80069f8:	f8d8 6000 	ldr.w	r6, [r8]
 80069fc:	69e1      	ldr	r1, [r4, #28]
 80069fe:	f8c8 2000 	str.w	r2, [r8]
 8006a02:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8006a06:	f040 8083 	bne.w	8006b10 <__sflush_r+0x140>
 8006a0a:	2301      	movs	r3, #1
 8006a0c:	4640      	mov	r0, r8
 8006a0e:	47a8      	blx	r5
 8006a10:	1c42      	adds	r2, r0, #1
 8006a12:	d04a      	beq.n	8006aaa <__sflush_r+0xda>
 8006a14:	89a3      	ldrh	r3, [r4, #12]
 8006a16:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8006a18:	69e1      	ldr	r1, [r4, #28]
 8006a1a:	075b      	lsls	r3, r3, #29
 8006a1c:	d505      	bpl.n	8006a2a <__sflush_r+0x5a>
 8006a1e:	6862      	ldr	r2, [r4, #4]
 8006a20:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8006a22:	1a80      	subs	r0, r0, r2
 8006a24:	b10b      	cbz	r3, 8006a2a <__sflush_r+0x5a>
 8006a26:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8006a28:	1ac0      	subs	r0, r0, r3
 8006a2a:	4602      	mov	r2, r0
 8006a2c:	2300      	movs	r3, #0
 8006a2e:	4640      	mov	r0, r8
 8006a30:	47a8      	blx	r5
 8006a32:	1c47      	adds	r7, r0, #1
 8006a34:	d045      	beq.n	8006ac2 <__sflush_r+0xf2>
 8006a36:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006a3a:	6922      	ldr	r2, [r4, #16]
 8006a3c:	6022      	str	r2, [r4, #0]
 8006a3e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8006a42:	2200      	movs	r2, #0
 8006a44:	81a3      	strh	r3, [r4, #12]
 8006a46:	04db      	lsls	r3, r3, #19
 8006a48:	6062      	str	r2, [r4, #4]
 8006a4a:	d500      	bpl.n	8006a4e <__sflush_r+0x7e>
 8006a4c:	6520      	str	r0, [r4, #80]	; 0x50
 8006a4e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006a50:	f8c8 6000 	str.w	r6, [r8]
 8006a54:	b311      	cbz	r1, 8006a9c <__sflush_r+0xcc>
 8006a56:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006a5a:	4299      	cmp	r1, r3
 8006a5c:	d002      	beq.n	8006a64 <__sflush_r+0x94>
 8006a5e:	4640      	mov	r0, r8
 8006a60:	f000 f95e 	bl	8006d20 <_free_r>
 8006a64:	2000      	movs	r0, #0
 8006a66:	6320      	str	r0, [r4, #48]	; 0x30
 8006a68:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006a6c:	6926      	ldr	r6, [r4, #16]
 8006a6e:	b1ae      	cbz	r6, 8006a9c <__sflush_r+0xcc>
 8006a70:	6825      	ldr	r5, [r4, #0]
 8006a72:	6026      	str	r6, [r4, #0]
 8006a74:	0792      	lsls	r2, r2, #30
 8006a76:	bf0c      	ite	eq
 8006a78:	6963      	ldreq	r3, [r4, #20]
 8006a7a:	2300      	movne	r3, #0
 8006a7c:	1bad      	subs	r5, r5, r6
 8006a7e:	60a3      	str	r3, [r4, #8]
 8006a80:	e00a      	b.n	8006a98 <__sflush_r+0xc8>
 8006a82:	462b      	mov	r3, r5
 8006a84:	4632      	mov	r2, r6
 8006a86:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8006a88:	69e1      	ldr	r1, [r4, #28]
 8006a8a:	4640      	mov	r0, r8
 8006a8c:	47b8      	blx	r7
 8006a8e:	2800      	cmp	r0, #0
 8006a90:	eba5 0500 	sub.w	r5, r5, r0
 8006a94:	4406      	add	r6, r0
 8006a96:	dd2b      	ble.n	8006af0 <__sflush_r+0x120>
 8006a98:	2d00      	cmp	r5, #0
 8006a9a:	dcf2      	bgt.n	8006a82 <__sflush_r+0xb2>
 8006a9c:	2000      	movs	r0, #0
 8006a9e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006aa2:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8006aa4:	2a00      	cmp	r2, #0
 8006aa6:	dca2      	bgt.n	80069ee <__sflush_r+0x1e>
 8006aa8:	e7f8      	b.n	8006a9c <__sflush_r+0xcc>
 8006aaa:	f8d8 3000 	ldr.w	r3, [r8]
 8006aae:	2b00      	cmp	r3, #0
 8006ab0:	d0b0      	beq.n	8006a14 <__sflush_r+0x44>
 8006ab2:	2b1d      	cmp	r3, #29
 8006ab4:	d001      	beq.n	8006aba <__sflush_r+0xea>
 8006ab6:	2b16      	cmp	r3, #22
 8006ab8:	d12c      	bne.n	8006b14 <__sflush_r+0x144>
 8006aba:	f8c8 6000 	str.w	r6, [r8]
 8006abe:	2000      	movs	r0, #0
 8006ac0:	e7ed      	b.n	8006a9e <__sflush_r+0xce>
 8006ac2:	f8d8 1000 	ldr.w	r1, [r8]
 8006ac6:	291d      	cmp	r1, #29
 8006ac8:	d81a      	bhi.n	8006b00 <__sflush_r+0x130>
 8006aca:	4b15      	ldr	r3, [pc, #84]	; (8006b20 <__sflush_r+0x150>)
 8006acc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ad0:	40cb      	lsrs	r3, r1
 8006ad2:	43db      	mvns	r3, r3
 8006ad4:	f013 0301 	ands.w	r3, r3, #1
 8006ad8:	d114      	bne.n	8006b04 <__sflush_r+0x134>
 8006ada:	6925      	ldr	r5, [r4, #16]
 8006adc:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8006ae0:	e9c4 5300 	strd	r5, r3, [r4]
 8006ae4:	04d5      	lsls	r5, r2, #19
 8006ae6:	81a2      	strh	r2, [r4, #12]
 8006ae8:	d5b1      	bpl.n	8006a4e <__sflush_r+0x7e>
 8006aea:	2900      	cmp	r1, #0
 8006aec:	d1af      	bne.n	8006a4e <__sflush_r+0x7e>
 8006aee:	e7ad      	b.n	8006a4c <__sflush_r+0x7c>
 8006af0:	89a3      	ldrh	r3, [r4, #12]
 8006af2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006af6:	81a3      	strh	r3, [r4, #12]
 8006af8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006afc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006b00:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006b04:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8006b08:	81a2      	strh	r2, [r4, #12]
 8006b0a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b0e:	e7c6      	b.n	8006a9e <__sflush_r+0xce>
 8006b10:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8006b12:	e782      	b.n	8006a1a <__sflush_r+0x4a>
 8006b14:	89a3      	ldrh	r3, [r4, #12]
 8006b16:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006b1a:	81a3      	strh	r3, [r4, #12]
 8006b1c:	e7bf      	b.n	8006a9e <__sflush_r+0xce>
 8006b1e:	bf00      	nop
 8006b20:	20400001 	.word	0x20400001

08006b24 <_fflush_r>:
 8006b24:	b538      	push	{r3, r4, r5, lr}
 8006b26:	460d      	mov	r5, r1
 8006b28:	4604      	mov	r4, r0
 8006b2a:	b108      	cbz	r0, 8006b30 <_fflush_r+0xc>
 8006b2c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006b2e:	b1a3      	cbz	r3, 8006b5a <_fflush_r+0x36>
 8006b30:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8006b34:	b1b8      	cbz	r0, 8006b66 <_fflush_r+0x42>
 8006b36:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8006b38:	07db      	lsls	r3, r3, #31
 8006b3a:	d401      	bmi.n	8006b40 <_fflush_r+0x1c>
 8006b3c:	0581      	lsls	r1, r0, #22
 8006b3e:	d51a      	bpl.n	8006b76 <_fflush_r+0x52>
 8006b40:	4620      	mov	r0, r4
 8006b42:	4629      	mov	r1, r5
 8006b44:	f7ff ff44 	bl	80069d0 <__sflush_r>
 8006b48:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8006b4a:	07da      	lsls	r2, r3, #31
 8006b4c:	4604      	mov	r4, r0
 8006b4e:	d402      	bmi.n	8006b56 <_fflush_r+0x32>
 8006b50:	89ab      	ldrh	r3, [r5, #12]
 8006b52:	059b      	lsls	r3, r3, #22
 8006b54:	d50a      	bpl.n	8006b6c <_fflush_r+0x48>
 8006b56:	4620      	mov	r0, r4
 8006b58:	bd38      	pop	{r3, r4, r5, pc}
 8006b5a:	f000 f83f 	bl	8006bdc <__sinit>
 8006b5e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8006b62:	2800      	cmp	r0, #0
 8006b64:	d1e7      	bne.n	8006b36 <_fflush_r+0x12>
 8006b66:	4604      	mov	r4, r0
 8006b68:	4620      	mov	r0, r4
 8006b6a:	bd38      	pop	{r3, r4, r5, pc}
 8006b6c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8006b6e:	f000 fa09 	bl	8006f84 <__retarget_lock_release_recursive>
 8006b72:	4620      	mov	r0, r4
 8006b74:	bd38      	pop	{r3, r4, r5, pc}
 8006b76:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8006b78:	f000 fa02 	bl	8006f80 <__retarget_lock_acquire_recursive>
 8006b7c:	e7e0      	b.n	8006b40 <_fflush_r+0x1c>
 8006b7e:	bf00      	nop

08006b80 <std>:
 8006b80:	b510      	push	{r4, lr}
 8006b82:	2300      	movs	r3, #0
 8006b84:	4604      	mov	r4, r0
 8006b86:	8181      	strh	r1, [r0, #12]
 8006b88:	81c2      	strh	r2, [r0, #14]
 8006b8a:	e9c0 3300 	strd	r3, r3, [r0]
 8006b8e:	6083      	str	r3, [r0, #8]
 8006b90:	6643      	str	r3, [r0, #100]	; 0x64
 8006b92:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8006b96:	6183      	str	r3, [r0, #24]
 8006b98:	4619      	mov	r1, r3
 8006b9a:	2208      	movs	r2, #8
 8006b9c:	305c      	adds	r0, #92	; 0x5c
 8006b9e:	f7fd f921 	bl	8003de4 <memset>
 8006ba2:	4807      	ldr	r0, [pc, #28]	; (8006bc0 <std+0x40>)
 8006ba4:	4907      	ldr	r1, [pc, #28]	; (8006bc4 <std+0x44>)
 8006ba6:	4a08      	ldr	r2, [pc, #32]	; (8006bc8 <std+0x48>)
 8006ba8:	4b08      	ldr	r3, [pc, #32]	; (8006bcc <std+0x4c>)
 8006baa:	62e3      	str	r3, [r4, #44]	; 0x2c
 8006bac:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8006bb0:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8006bb4:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8006bb8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8006bbc:	f000 b9dc 	b.w	8006f78 <__retarget_lock_init_recursive>
 8006bc0:	08007c79 	.word	0x08007c79
 8006bc4:	08007c9d 	.word	0x08007c9d
 8006bc8:	08007cd9 	.word	0x08007cd9
 8006bcc:	08007cf9 	.word	0x08007cf9

08006bd0 <_cleanup_r>:
 8006bd0:	4901      	ldr	r1, [pc, #4]	; (8006bd8 <_cleanup_r+0x8>)
 8006bd2:	f000 b999 	b.w	8006f08 <_fwalk_reent>
 8006bd6:	bf00      	nop
 8006bd8:	08007f69 	.word	0x08007f69

08006bdc <__sinit>:
 8006bdc:	b510      	push	{r4, lr}
 8006bde:	4604      	mov	r4, r0
 8006be0:	4812      	ldr	r0, [pc, #72]	; (8006c2c <__sinit+0x50>)
 8006be2:	f000 f9cd 	bl	8006f80 <__retarget_lock_acquire_recursive>
 8006be6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8006be8:	b9d2      	cbnz	r2, 8006c20 <__sinit+0x44>
 8006bea:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8006bee:	4810      	ldr	r0, [pc, #64]	; (8006c30 <__sinit+0x54>)
 8006bf0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8006bf4:	2103      	movs	r1, #3
 8006bf6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8006bfa:	63e0      	str	r0, [r4, #60]	; 0x3c
 8006bfc:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8006c00:	6860      	ldr	r0, [r4, #4]
 8006c02:	2104      	movs	r1, #4
 8006c04:	f7ff ffbc 	bl	8006b80 <std>
 8006c08:	2201      	movs	r2, #1
 8006c0a:	2109      	movs	r1, #9
 8006c0c:	68a0      	ldr	r0, [r4, #8]
 8006c0e:	f7ff ffb7 	bl	8006b80 <std>
 8006c12:	2202      	movs	r2, #2
 8006c14:	2112      	movs	r1, #18
 8006c16:	68e0      	ldr	r0, [r4, #12]
 8006c18:	f7ff ffb2 	bl	8006b80 <std>
 8006c1c:	2301      	movs	r3, #1
 8006c1e:	63a3      	str	r3, [r4, #56]	; 0x38
 8006c20:	4802      	ldr	r0, [pc, #8]	; (8006c2c <__sinit+0x50>)
 8006c22:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8006c26:	f000 b9ad 	b.w	8006f84 <__retarget_lock_release_recursive>
 8006c2a:	bf00      	nop
 8006c2c:	20004840 	.word	0x20004840
 8006c30:	08006bd1 	.word	0x08006bd1

08006c34 <__sfp_lock_acquire>:
 8006c34:	4801      	ldr	r0, [pc, #4]	; (8006c3c <__sfp_lock_acquire+0x8>)
 8006c36:	f000 b9a3 	b.w	8006f80 <__retarget_lock_acquire_recursive>
 8006c3a:	bf00      	nop
 8006c3c:	20004854 	.word	0x20004854

08006c40 <__sfp_lock_release>:
 8006c40:	4801      	ldr	r0, [pc, #4]	; (8006c48 <__sfp_lock_release+0x8>)
 8006c42:	f000 b99f 	b.w	8006f84 <__retarget_lock_release_recursive>
 8006c46:	bf00      	nop
 8006c48:	20004854 	.word	0x20004854

08006c4c <__libc_fini_array>:
 8006c4c:	b538      	push	{r3, r4, r5, lr}
 8006c4e:	4c0a      	ldr	r4, [pc, #40]	; (8006c78 <__libc_fini_array+0x2c>)
 8006c50:	4d0a      	ldr	r5, [pc, #40]	; (8006c7c <__libc_fini_array+0x30>)
 8006c52:	1b64      	subs	r4, r4, r5
 8006c54:	10a4      	asrs	r4, r4, #2
 8006c56:	d00a      	beq.n	8006c6e <__libc_fini_array+0x22>
 8006c58:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8006c5c:	3b01      	subs	r3, #1
 8006c5e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8006c62:	3c01      	subs	r4, #1
 8006c64:	f855 3904 	ldr.w	r3, [r5], #-4
 8006c68:	4798      	blx	r3
 8006c6a:	2c00      	cmp	r4, #0
 8006c6c:	d1f9      	bne.n	8006c62 <__libc_fini_array+0x16>
 8006c6e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8006c72:	f001 befd 	b.w	8008a70 <_fini>
 8006c76:	bf00      	nop
 8006c78:	08008d8c 	.word	0x08008d8c
 8006c7c:	08008d88 	.word	0x08008d88

08006c80 <_malloc_trim_r>:
 8006c80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006c82:	4f24      	ldr	r7, [pc, #144]	; (8006d14 <_malloc_trim_r+0x94>)
 8006c84:	460c      	mov	r4, r1
 8006c86:	4606      	mov	r6, r0
 8006c88:	f000 fc9a 	bl	80075c0 <__malloc_lock>
 8006c8c:	68bb      	ldr	r3, [r7, #8]
 8006c8e:	685d      	ldr	r5, [r3, #4]
 8006c90:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8006c94:	310f      	adds	r1, #15
 8006c96:	f025 0503 	bic.w	r5, r5, #3
 8006c9a:	4429      	add	r1, r5
 8006c9c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8006ca0:	f021 010f 	bic.w	r1, r1, #15
 8006ca4:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8006ca8:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8006cac:	db07      	blt.n	8006cbe <_malloc_trim_r+0x3e>
 8006cae:	2100      	movs	r1, #0
 8006cb0:	4630      	mov	r0, r6
 8006cb2:	f000 ffcf 	bl	8007c54 <_sbrk_r>
 8006cb6:	68bb      	ldr	r3, [r7, #8]
 8006cb8:	442b      	add	r3, r5
 8006cba:	4298      	cmp	r0, r3
 8006cbc:	d004      	beq.n	8006cc8 <_malloc_trim_r+0x48>
 8006cbe:	4630      	mov	r0, r6
 8006cc0:	f000 fc84 	bl	80075cc <__malloc_unlock>
 8006cc4:	2000      	movs	r0, #0
 8006cc6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006cc8:	4261      	negs	r1, r4
 8006cca:	4630      	mov	r0, r6
 8006ccc:	f000 ffc2 	bl	8007c54 <_sbrk_r>
 8006cd0:	3001      	adds	r0, #1
 8006cd2:	d00d      	beq.n	8006cf0 <_malloc_trim_r+0x70>
 8006cd4:	4b10      	ldr	r3, [pc, #64]	; (8006d18 <_malloc_trim_r+0x98>)
 8006cd6:	68ba      	ldr	r2, [r7, #8]
 8006cd8:	6819      	ldr	r1, [r3, #0]
 8006cda:	1b2d      	subs	r5, r5, r4
 8006cdc:	f045 0501 	orr.w	r5, r5, #1
 8006ce0:	4630      	mov	r0, r6
 8006ce2:	1b09      	subs	r1, r1, r4
 8006ce4:	6055      	str	r5, [r2, #4]
 8006ce6:	6019      	str	r1, [r3, #0]
 8006ce8:	f000 fc70 	bl	80075cc <__malloc_unlock>
 8006cec:	2001      	movs	r0, #1
 8006cee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006cf0:	2100      	movs	r1, #0
 8006cf2:	4630      	mov	r0, r6
 8006cf4:	f000 ffae 	bl	8007c54 <_sbrk_r>
 8006cf8:	68ba      	ldr	r2, [r7, #8]
 8006cfa:	1a83      	subs	r3, r0, r2
 8006cfc:	2b0f      	cmp	r3, #15
 8006cfe:	ddde      	ble.n	8006cbe <_malloc_trim_r+0x3e>
 8006d00:	4c06      	ldr	r4, [pc, #24]	; (8006d1c <_malloc_trim_r+0x9c>)
 8006d02:	4905      	ldr	r1, [pc, #20]	; (8006d18 <_malloc_trim_r+0x98>)
 8006d04:	6824      	ldr	r4, [r4, #0]
 8006d06:	f043 0301 	orr.w	r3, r3, #1
 8006d0a:	1b00      	subs	r0, r0, r4
 8006d0c:	6053      	str	r3, [r2, #4]
 8006d0e:	6008      	str	r0, [r1, #0]
 8006d10:	e7d5      	b.n	8006cbe <_malloc_trim_r+0x3e>
 8006d12:	bf00      	nop
 8006d14:	2000044c 	.word	0x2000044c
 8006d18:	200047b8 	.word	0x200047b8
 8006d1c:	20000854 	.word	0x20000854

08006d20 <_free_r>:
 8006d20:	2900      	cmp	r1, #0
 8006d22:	d053      	beq.n	8006dcc <_free_r+0xac>
 8006d24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006d26:	460c      	mov	r4, r1
 8006d28:	4606      	mov	r6, r0
 8006d2a:	f000 fc49 	bl	80075c0 <__malloc_lock>
 8006d2e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8006d32:	4f71      	ldr	r7, [pc, #452]	; (8006ef8 <_free_r+0x1d8>)
 8006d34:	f02c 0101 	bic.w	r1, ip, #1
 8006d38:	f1a4 0508 	sub.w	r5, r4, #8
 8006d3c:	186b      	adds	r3, r5, r1
 8006d3e:	68b8      	ldr	r0, [r7, #8]
 8006d40:	685a      	ldr	r2, [r3, #4]
 8006d42:	4298      	cmp	r0, r3
 8006d44:	f022 0203 	bic.w	r2, r2, #3
 8006d48:	d053      	beq.n	8006df2 <_free_r+0xd2>
 8006d4a:	f01c 0f01 	tst.w	ip, #1
 8006d4e:	605a      	str	r2, [r3, #4]
 8006d50:	eb03 0002 	add.w	r0, r3, r2
 8006d54:	d13b      	bne.n	8006dce <_free_r+0xae>
 8006d56:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8006d5a:	6840      	ldr	r0, [r0, #4]
 8006d5c:	eba5 050c 	sub.w	r5, r5, ip
 8006d60:	f107 0e08 	add.w	lr, r7, #8
 8006d64:	68ac      	ldr	r4, [r5, #8]
 8006d66:	4574      	cmp	r4, lr
 8006d68:	4461      	add	r1, ip
 8006d6a:	f000 0001 	and.w	r0, r0, #1
 8006d6e:	d075      	beq.n	8006e5c <_free_r+0x13c>
 8006d70:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8006d74:	f8c4 c00c 	str.w	ip, [r4, #12]
 8006d78:	f8cc 4008 	str.w	r4, [ip, #8]
 8006d7c:	b360      	cbz	r0, 8006dd8 <_free_r+0xb8>
 8006d7e:	f041 0301 	orr.w	r3, r1, #1
 8006d82:	606b      	str	r3, [r5, #4]
 8006d84:	5069      	str	r1, [r5, r1]
 8006d86:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8006d8a:	d350      	bcc.n	8006e2e <_free_r+0x10e>
 8006d8c:	0a4b      	lsrs	r3, r1, #9
 8006d8e:	2b04      	cmp	r3, #4
 8006d90:	d870      	bhi.n	8006e74 <_free_r+0x154>
 8006d92:	098b      	lsrs	r3, r1, #6
 8006d94:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8006d98:	00e4      	lsls	r4, r4, #3
 8006d9a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8006d9e:	1938      	adds	r0, r7, r4
 8006da0:	593b      	ldr	r3, [r7, r4]
 8006da2:	3808      	subs	r0, #8
 8006da4:	4298      	cmp	r0, r3
 8006da6:	d078      	beq.n	8006e9a <_free_r+0x17a>
 8006da8:	685a      	ldr	r2, [r3, #4]
 8006daa:	f022 0203 	bic.w	r2, r2, #3
 8006dae:	428a      	cmp	r2, r1
 8006db0:	d971      	bls.n	8006e96 <_free_r+0x176>
 8006db2:	689b      	ldr	r3, [r3, #8]
 8006db4:	4298      	cmp	r0, r3
 8006db6:	d1f7      	bne.n	8006da8 <_free_r+0x88>
 8006db8:	68c3      	ldr	r3, [r0, #12]
 8006dba:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8006dbe:	609d      	str	r5, [r3, #8]
 8006dc0:	60c5      	str	r5, [r0, #12]
 8006dc2:	4630      	mov	r0, r6
 8006dc4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006dc8:	f000 bc00 	b.w	80075cc <__malloc_unlock>
 8006dcc:	4770      	bx	lr
 8006dce:	6840      	ldr	r0, [r0, #4]
 8006dd0:	f000 0001 	and.w	r0, r0, #1
 8006dd4:	2800      	cmp	r0, #0
 8006dd6:	d1d2      	bne.n	8006d7e <_free_r+0x5e>
 8006dd8:	6898      	ldr	r0, [r3, #8]
 8006dda:	4c48      	ldr	r4, [pc, #288]	; (8006efc <_free_r+0x1dc>)
 8006ddc:	4411      	add	r1, r2
 8006dde:	42a0      	cmp	r0, r4
 8006de0:	f041 0201 	orr.w	r2, r1, #1
 8006de4:	d062      	beq.n	8006eac <_free_r+0x18c>
 8006de6:	68db      	ldr	r3, [r3, #12]
 8006de8:	60c3      	str	r3, [r0, #12]
 8006dea:	6098      	str	r0, [r3, #8]
 8006dec:	606a      	str	r2, [r5, #4]
 8006dee:	5069      	str	r1, [r5, r1]
 8006df0:	e7c9      	b.n	8006d86 <_free_r+0x66>
 8006df2:	f01c 0f01 	tst.w	ip, #1
 8006df6:	440a      	add	r2, r1
 8006df8:	d107      	bne.n	8006e0a <_free_r+0xea>
 8006dfa:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8006dfe:	1aed      	subs	r5, r5, r3
 8006e00:	441a      	add	r2, r3
 8006e02:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8006e06:	60cb      	str	r3, [r1, #12]
 8006e08:	6099      	str	r1, [r3, #8]
 8006e0a:	4b3d      	ldr	r3, [pc, #244]	; (8006f00 <_free_r+0x1e0>)
 8006e0c:	681b      	ldr	r3, [r3, #0]
 8006e0e:	f042 0101 	orr.w	r1, r2, #1
 8006e12:	4293      	cmp	r3, r2
 8006e14:	6069      	str	r1, [r5, #4]
 8006e16:	60bd      	str	r5, [r7, #8]
 8006e18:	d804      	bhi.n	8006e24 <_free_r+0x104>
 8006e1a:	4b3a      	ldr	r3, [pc, #232]	; (8006f04 <_free_r+0x1e4>)
 8006e1c:	4630      	mov	r0, r6
 8006e1e:	6819      	ldr	r1, [r3, #0]
 8006e20:	f7ff ff2e 	bl	8006c80 <_malloc_trim_r>
 8006e24:	4630      	mov	r0, r6
 8006e26:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006e2a:	f000 bbcf 	b.w	80075cc <__malloc_unlock>
 8006e2e:	08c9      	lsrs	r1, r1, #3
 8006e30:	6878      	ldr	r0, [r7, #4]
 8006e32:	1c4a      	adds	r2, r1, #1
 8006e34:	2301      	movs	r3, #1
 8006e36:	1089      	asrs	r1, r1, #2
 8006e38:	408b      	lsls	r3, r1
 8006e3a:	4303      	orrs	r3, r0
 8006e3c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8006e40:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8006e44:	607b      	str	r3, [r7, #4]
 8006e46:	3908      	subs	r1, #8
 8006e48:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8006e4c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8006e50:	60c5      	str	r5, [r0, #12]
 8006e52:	4630      	mov	r0, r6
 8006e54:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006e58:	f000 bbb8 	b.w	80075cc <__malloc_unlock>
 8006e5c:	2800      	cmp	r0, #0
 8006e5e:	d145      	bne.n	8006eec <_free_r+0x1cc>
 8006e60:	440a      	add	r2, r1
 8006e62:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8006e66:	f042 0001 	orr.w	r0, r2, #1
 8006e6a:	60cb      	str	r3, [r1, #12]
 8006e6c:	6099      	str	r1, [r3, #8]
 8006e6e:	6068      	str	r0, [r5, #4]
 8006e70:	50aa      	str	r2, [r5, r2]
 8006e72:	e7d7      	b.n	8006e24 <_free_r+0x104>
 8006e74:	2b14      	cmp	r3, #20
 8006e76:	d908      	bls.n	8006e8a <_free_r+0x16a>
 8006e78:	2b54      	cmp	r3, #84	; 0x54
 8006e7a:	d81e      	bhi.n	8006eba <_free_r+0x19a>
 8006e7c:	0b0b      	lsrs	r3, r1, #12
 8006e7e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8006e82:	00e4      	lsls	r4, r4, #3
 8006e84:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8006e88:	e789      	b.n	8006d9e <_free_r+0x7e>
 8006e8a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8006e8e:	00e4      	lsls	r4, r4, #3
 8006e90:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8006e94:	e783      	b.n	8006d9e <_free_r+0x7e>
 8006e96:	4618      	mov	r0, r3
 8006e98:	e78e      	b.n	8006db8 <_free_r+0x98>
 8006e9a:	1093      	asrs	r3, r2, #2
 8006e9c:	6879      	ldr	r1, [r7, #4]
 8006e9e:	2201      	movs	r2, #1
 8006ea0:	fa02 f303 	lsl.w	r3, r2, r3
 8006ea4:	430b      	orrs	r3, r1
 8006ea6:	607b      	str	r3, [r7, #4]
 8006ea8:	4603      	mov	r3, r0
 8006eaa:	e786      	b.n	8006dba <_free_r+0x9a>
 8006eac:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8006eb0:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8006eb4:	606a      	str	r2, [r5, #4]
 8006eb6:	5069      	str	r1, [r5, r1]
 8006eb8:	e7b4      	b.n	8006e24 <_free_r+0x104>
 8006eba:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8006ebe:	d806      	bhi.n	8006ece <_free_r+0x1ae>
 8006ec0:	0bcb      	lsrs	r3, r1, #15
 8006ec2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8006ec6:	00e4      	lsls	r4, r4, #3
 8006ec8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8006ecc:	e767      	b.n	8006d9e <_free_r+0x7e>
 8006ece:	f240 5254 	movw	r2, #1364	; 0x554
 8006ed2:	4293      	cmp	r3, r2
 8006ed4:	d806      	bhi.n	8006ee4 <_free_r+0x1c4>
 8006ed6:	0c8b      	lsrs	r3, r1, #18
 8006ed8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8006edc:	00e4      	lsls	r4, r4, #3
 8006ede:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8006ee2:	e75c      	b.n	8006d9e <_free_r+0x7e>
 8006ee4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8006ee8:	227e      	movs	r2, #126	; 0x7e
 8006eea:	e758      	b.n	8006d9e <_free_r+0x7e>
 8006eec:	f041 0201 	orr.w	r2, r1, #1
 8006ef0:	606a      	str	r2, [r5, #4]
 8006ef2:	6019      	str	r1, [r3, #0]
 8006ef4:	e796      	b.n	8006e24 <_free_r+0x104>
 8006ef6:	bf00      	nop
 8006ef8:	2000044c 	.word	0x2000044c
 8006efc:	20000454 	.word	0x20000454
 8006f00:	20000858 	.word	0x20000858
 8006f04:	200047e8 	.word	0x200047e8

08006f08 <_fwalk_reent>:
 8006f08:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006f0c:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8006f10:	d01f      	beq.n	8006f52 <_fwalk_reent+0x4a>
 8006f12:	4688      	mov	r8, r1
 8006f14:	4606      	mov	r6, r0
 8006f16:	f04f 0900 	mov.w	r9, #0
 8006f1a:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8006f1e:	3d01      	subs	r5, #1
 8006f20:	d411      	bmi.n	8006f46 <_fwalk_reent+0x3e>
 8006f22:	89a3      	ldrh	r3, [r4, #12]
 8006f24:	2b01      	cmp	r3, #1
 8006f26:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8006f2a:	4621      	mov	r1, r4
 8006f2c:	4630      	mov	r0, r6
 8006f2e:	d906      	bls.n	8006f3e <_fwalk_reent+0x36>
 8006f30:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8006f34:	3301      	adds	r3, #1
 8006f36:	d002      	beq.n	8006f3e <_fwalk_reent+0x36>
 8006f38:	47c0      	blx	r8
 8006f3a:	ea49 0900 	orr.w	r9, r9, r0
 8006f3e:	1c6b      	adds	r3, r5, #1
 8006f40:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8006f44:	d1ed      	bne.n	8006f22 <_fwalk_reent+0x1a>
 8006f46:	683f      	ldr	r7, [r7, #0]
 8006f48:	2f00      	cmp	r7, #0
 8006f4a:	d1e6      	bne.n	8006f1a <_fwalk_reent+0x12>
 8006f4c:	4648      	mov	r0, r9
 8006f4e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006f52:	46b9      	mov	r9, r7
 8006f54:	4648      	mov	r0, r9
 8006f56:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006f5a:	bf00      	nop

08006f5c <_localeconv_r>:
 8006f5c:	4a04      	ldr	r2, [pc, #16]	; (8006f70 <_localeconv_r+0x14>)
 8006f5e:	4b05      	ldr	r3, [pc, #20]	; (8006f74 <_localeconv_r+0x18>)
 8006f60:	6812      	ldr	r2, [r2, #0]
 8006f62:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8006f64:	2800      	cmp	r0, #0
 8006f66:	bf08      	it	eq
 8006f68:	4618      	moveq	r0, r3
 8006f6a:	30f0      	adds	r0, #240	; 0xf0
 8006f6c:	4770      	bx	lr
 8006f6e:	bf00      	nop
 8006f70:	2000001c 	.word	0x2000001c
 8006f74:	2000085c 	.word	0x2000085c

08006f78 <__retarget_lock_init_recursive>:
 8006f78:	4770      	bx	lr
 8006f7a:	bf00      	nop

08006f7c <__retarget_lock_close_recursive>:
 8006f7c:	4770      	bx	lr
 8006f7e:	bf00      	nop

08006f80 <__retarget_lock_acquire_recursive>:
 8006f80:	4770      	bx	lr
 8006f82:	bf00      	nop

08006f84 <__retarget_lock_release_recursive>:
 8006f84:	4770      	bx	lr
 8006f86:	bf00      	nop

08006f88 <__swhatbuf_r>:
 8006f88:	b570      	push	{r4, r5, r6, lr}
 8006f8a:	460c      	mov	r4, r1
 8006f8c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006f90:	2900      	cmp	r1, #0
 8006f92:	b096      	sub	sp, #88	; 0x58
 8006f94:	4615      	mov	r5, r2
 8006f96:	461e      	mov	r6, r3
 8006f98:	da0f      	bge.n	8006fba <__swhatbuf_r+0x32>
 8006f9a:	89a2      	ldrh	r2, [r4, #12]
 8006f9c:	2300      	movs	r3, #0
 8006f9e:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8006fa2:	6033      	str	r3, [r6, #0]
 8006fa4:	d104      	bne.n	8006fb0 <__swhatbuf_r+0x28>
 8006fa6:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8006faa:	602b      	str	r3, [r5, #0]
 8006fac:	b016      	add	sp, #88	; 0x58
 8006fae:	bd70      	pop	{r4, r5, r6, pc}
 8006fb0:	2240      	movs	r2, #64	; 0x40
 8006fb2:	4618      	mov	r0, r3
 8006fb4:	602a      	str	r2, [r5, #0]
 8006fb6:	b016      	add	sp, #88	; 0x58
 8006fb8:	bd70      	pop	{r4, r5, r6, pc}
 8006fba:	466a      	mov	r2, sp
 8006fbc:	f001 f8be 	bl	800813c <_fstat_r>
 8006fc0:	2800      	cmp	r0, #0
 8006fc2:	dbea      	blt.n	8006f9a <__swhatbuf_r+0x12>
 8006fc4:	9b01      	ldr	r3, [sp, #4]
 8006fc6:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8006fca:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8006fce:	fab3 f383 	clz	r3, r3
 8006fd2:	095b      	lsrs	r3, r3, #5
 8006fd4:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8006fd8:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8006fdc:	6033      	str	r3, [r6, #0]
 8006fde:	602a      	str	r2, [r5, #0]
 8006fe0:	b016      	add	sp, #88	; 0x58
 8006fe2:	bd70      	pop	{r4, r5, r6, pc}

08006fe4 <__smakebuf_r>:
 8006fe4:	898a      	ldrh	r2, [r1, #12]
 8006fe6:	0792      	lsls	r2, r2, #30
 8006fe8:	460b      	mov	r3, r1
 8006fea:	d506      	bpl.n	8006ffa <__smakebuf_r+0x16>
 8006fec:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8006ff0:	2101      	movs	r1, #1
 8006ff2:	601a      	str	r2, [r3, #0]
 8006ff4:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8006ff8:	4770      	bx	lr
 8006ffa:	b570      	push	{r4, r5, r6, lr}
 8006ffc:	b082      	sub	sp, #8
 8006ffe:	ab01      	add	r3, sp, #4
 8007000:	466a      	mov	r2, sp
 8007002:	460c      	mov	r4, r1
 8007004:	4605      	mov	r5, r0
 8007006:	f7ff ffbf 	bl	8006f88 <__swhatbuf_r>
 800700a:	9900      	ldr	r1, [sp, #0]
 800700c:	4606      	mov	r6, r0
 800700e:	4628      	mov	r0, r5
 8007010:	f000 f832 	bl	8007078 <_malloc_r>
 8007014:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007018:	b1d8      	cbz	r0, 8007052 <__smakebuf_r+0x6e>
 800701a:	4916      	ldr	r1, [pc, #88]	; (8007074 <__smakebuf_r+0x90>)
 800701c:	63e9      	str	r1, [r5, #60]	; 0x3c
 800701e:	9a01      	ldr	r2, [sp, #4]
 8007020:	9900      	ldr	r1, [sp, #0]
 8007022:	6020      	str	r0, [r4, #0]
 8007024:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8007028:	81a3      	strh	r3, [r4, #12]
 800702a:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800702e:	b91a      	cbnz	r2, 8007038 <__smakebuf_r+0x54>
 8007030:	4333      	orrs	r3, r6
 8007032:	81a3      	strh	r3, [r4, #12]
 8007034:	b002      	add	sp, #8
 8007036:	bd70      	pop	{r4, r5, r6, pc}
 8007038:	4628      	mov	r0, r5
 800703a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800703e:	f001 fa0f 	bl	8008460 <_isatty_r>
 8007042:	b1a0      	cbz	r0, 800706e <__smakebuf_r+0x8a>
 8007044:	89a3      	ldrh	r3, [r4, #12]
 8007046:	f023 0303 	bic.w	r3, r3, #3
 800704a:	f043 0301 	orr.w	r3, r3, #1
 800704e:	b21b      	sxth	r3, r3
 8007050:	e7ee      	b.n	8007030 <__smakebuf_r+0x4c>
 8007052:	059a      	lsls	r2, r3, #22
 8007054:	d4ee      	bmi.n	8007034 <__smakebuf_r+0x50>
 8007056:	f023 0303 	bic.w	r3, r3, #3
 800705a:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800705e:	f043 0302 	orr.w	r3, r3, #2
 8007062:	2101      	movs	r1, #1
 8007064:	81a3      	strh	r3, [r4, #12]
 8007066:	6022      	str	r2, [r4, #0]
 8007068:	e9c4 2104 	strd	r2, r1, [r4, #16]
 800706c:	e7e2      	b.n	8007034 <__smakebuf_r+0x50>
 800706e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007072:	e7dd      	b.n	8007030 <__smakebuf_r+0x4c>
 8007074:	08006bd1 	.word	0x08006bd1

08007078 <_malloc_r>:
 8007078:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800707c:	f101 050b 	add.w	r5, r1, #11
 8007080:	2d16      	cmp	r5, #22
 8007082:	b083      	sub	sp, #12
 8007084:	4606      	mov	r6, r0
 8007086:	d823      	bhi.n	80070d0 <_malloc_r+0x58>
 8007088:	2910      	cmp	r1, #16
 800708a:	f200 80b9 	bhi.w	8007200 <_malloc_r+0x188>
 800708e:	f000 fa97 	bl	80075c0 <__malloc_lock>
 8007092:	2510      	movs	r5, #16
 8007094:	2318      	movs	r3, #24
 8007096:	2002      	movs	r0, #2
 8007098:	4fc5      	ldr	r7, [pc, #788]	; (80073b0 <_malloc_r+0x338>)
 800709a:	443b      	add	r3, r7
 800709c:	f1a3 0208 	sub.w	r2, r3, #8
 80070a0:	685c      	ldr	r4, [r3, #4]
 80070a2:	4294      	cmp	r4, r2
 80070a4:	f000 8166 	beq.w	8007374 <_malloc_r+0x2fc>
 80070a8:	6863      	ldr	r3, [r4, #4]
 80070aa:	f023 0303 	bic.w	r3, r3, #3
 80070ae:	4423      	add	r3, r4
 80070b0:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80070b4:	685a      	ldr	r2, [r3, #4]
 80070b6:	60e9      	str	r1, [r5, #12]
 80070b8:	f042 0201 	orr.w	r2, r2, #1
 80070bc:	608d      	str	r5, [r1, #8]
 80070be:	4630      	mov	r0, r6
 80070c0:	605a      	str	r2, [r3, #4]
 80070c2:	f000 fa83 	bl	80075cc <__malloc_unlock>
 80070c6:	3408      	adds	r4, #8
 80070c8:	4620      	mov	r0, r4
 80070ca:	b003      	add	sp, #12
 80070cc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80070d0:	f035 0507 	bics.w	r5, r5, #7
 80070d4:	f100 8094 	bmi.w	8007200 <_malloc_r+0x188>
 80070d8:	42a9      	cmp	r1, r5
 80070da:	f200 8091 	bhi.w	8007200 <_malloc_r+0x188>
 80070de:	f000 fa6f 	bl	80075c0 <__malloc_lock>
 80070e2:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80070e6:	f0c0 8183 	bcc.w	80073f0 <_malloc_r+0x378>
 80070ea:	0a6b      	lsrs	r3, r5, #9
 80070ec:	f000 808f 	beq.w	800720e <_malloc_r+0x196>
 80070f0:	2b04      	cmp	r3, #4
 80070f2:	f200 8146 	bhi.w	8007382 <_malloc_r+0x30a>
 80070f6:	09ab      	lsrs	r3, r5, #6
 80070f8:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80070fc:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8007100:	00c3      	lsls	r3, r0, #3
 8007102:	4fab      	ldr	r7, [pc, #684]	; (80073b0 <_malloc_r+0x338>)
 8007104:	443b      	add	r3, r7
 8007106:	f1a3 0108 	sub.w	r1, r3, #8
 800710a:	685c      	ldr	r4, [r3, #4]
 800710c:	42a1      	cmp	r1, r4
 800710e:	d106      	bne.n	800711e <_malloc_r+0xa6>
 8007110:	e00c      	b.n	800712c <_malloc_r+0xb4>
 8007112:	2a00      	cmp	r2, #0
 8007114:	f280 811d 	bge.w	8007352 <_malloc_r+0x2da>
 8007118:	68e4      	ldr	r4, [r4, #12]
 800711a:	42a1      	cmp	r1, r4
 800711c:	d006      	beq.n	800712c <_malloc_r+0xb4>
 800711e:	6863      	ldr	r3, [r4, #4]
 8007120:	f023 0303 	bic.w	r3, r3, #3
 8007124:	1b5a      	subs	r2, r3, r5
 8007126:	2a0f      	cmp	r2, #15
 8007128:	ddf3      	ble.n	8007112 <_malloc_r+0x9a>
 800712a:	4660      	mov	r0, ip
 800712c:	693c      	ldr	r4, [r7, #16]
 800712e:	f8df c294 	ldr.w	ip, [pc, #660]	; 80073c4 <_malloc_r+0x34c>
 8007132:	4564      	cmp	r4, ip
 8007134:	d071      	beq.n	800721a <_malloc_r+0x1a2>
 8007136:	6863      	ldr	r3, [r4, #4]
 8007138:	f023 0303 	bic.w	r3, r3, #3
 800713c:	1b5a      	subs	r2, r3, r5
 800713e:	2a0f      	cmp	r2, #15
 8007140:	f300 8144 	bgt.w	80073cc <_malloc_r+0x354>
 8007144:	2a00      	cmp	r2, #0
 8007146:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800714a:	f280 8126 	bge.w	800739a <_malloc_r+0x322>
 800714e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8007152:	f080 8169 	bcs.w	8007428 <_malloc_r+0x3b0>
 8007156:	08db      	lsrs	r3, r3, #3
 8007158:	1c59      	adds	r1, r3, #1
 800715a:	687a      	ldr	r2, [r7, #4]
 800715c:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8007160:	f8c4 8008 	str.w	r8, [r4, #8]
 8007164:	f04f 0e01 	mov.w	lr, #1
 8007168:	109b      	asrs	r3, r3, #2
 800716a:	fa0e f303 	lsl.w	r3, lr, r3
 800716e:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8007172:	4313      	orrs	r3, r2
 8007174:	f1ae 0208 	sub.w	r2, lr, #8
 8007178:	60e2      	str	r2, [r4, #12]
 800717a:	607b      	str	r3, [r7, #4]
 800717c:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8007180:	f8c8 400c 	str.w	r4, [r8, #12]
 8007184:	1082      	asrs	r2, r0, #2
 8007186:	2401      	movs	r4, #1
 8007188:	4094      	lsls	r4, r2
 800718a:	429c      	cmp	r4, r3
 800718c:	d84b      	bhi.n	8007226 <_malloc_r+0x1ae>
 800718e:	421c      	tst	r4, r3
 8007190:	d106      	bne.n	80071a0 <_malloc_r+0x128>
 8007192:	f020 0003 	bic.w	r0, r0, #3
 8007196:	0064      	lsls	r4, r4, #1
 8007198:	421c      	tst	r4, r3
 800719a:	f100 0004 	add.w	r0, r0, #4
 800719e:	d0fa      	beq.n	8007196 <_malloc_r+0x11e>
 80071a0:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80071a4:	46ce      	mov	lr, r9
 80071a6:	4680      	mov	r8, r0
 80071a8:	f8de 300c 	ldr.w	r3, [lr, #12]
 80071ac:	459e      	cmp	lr, r3
 80071ae:	d107      	bne.n	80071c0 <_malloc_r+0x148>
 80071b0:	e122      	b.n	80073f8 <_malloc_r+0x380>
 80071b2:	2a00      	cmp	r2, #0
 80071b4:	f280 8129 	bge.w	800740a <_malloc_r+0x392>
 80071b8:	68db      	ldr	r3, [r3, #12]
 80071ba:	459e      	cmp	lr, r3
 80071bc:	f000 811c 	beq.w	80073f8 <_malloc_r+0x380>
 80071c0:	6859      	ldr	r1, [r3, #4]
 80071c2:	f021 0103 	bic.w	r1, r1, #3
 80071c6:	1b4a      	subs	r2, r1, r5
 80071c8:	2a0f      	cmp	r2, #15
 80071ca:	ddf2      	ble.n	80071b2 <_malloc_r+0x13a>
 80071cc:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80071d0:	195c      	adds	r4, r3, r5
 80071d2:	f045 0501 	orr.w	r5, r5, #1
 80071d6:	605d      	str	r5, [r3, #4]
 80071d8:	f042 0501 	orr.w	r5, r2, #1
 80071dc:	f8c8 e00c 	str.w	lr, [r8, #12]
 80071e0:	4630      	mov	r0, r6
 80071e2:	f8ce 8008 	str.w	r8, [lr, #8]
 80071e6:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80071ea:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80071ee:	6065      	str	r5, [r4, #4]
 80071f0:	505a      	str	r2, [r3, r1]
 80071f2:	9301      	str	r3, [sp, #4]
 80071f4:	f000 f9ea 	bl	80075cc <__malloc_unlock>
 80071f8:	9b01      	ldr	r3, [sp, #4]
 80071fa:	f103 0408 	add.w	r4, r3, #8
 80071fe:	e763      	b.n	80070c8 <_malloc_r+0x50>
 8007200:	2400      	movs	r4, #0
 8007202:	230c      	movs	r3, #12
 8007204:	4620      	mov	r0, r4
 8007206:	6033      	str	r3, [r6, #0]
 8007208:	b003      	add	sp, #12
 800720a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800720e:	f44f 7300 	mov.w	r3, #512	; 0x200
 8007212:	2040      	movs	r0, #64	; 0x40
 8007214:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8007218:	e773      	b.n	8007102 <_malloc_r+0x8a>
 800721a:	687b      	ldr	r3, [r7, #4]
 800721c:	1082      	asrs	r2, r0, #2
 800721e:	2401      	movs	r4, #1
 8007220:	4094      	lsls	r4, r2
 8007222:	429c      	cmp	r4, r3
 8007224:	d9b3      	bls.n	800718e <_malloc_r+0x116>
 8007226:	68bc      	ldr	r4, [r7, #8]
 8007228:	6863      	ldr	r3, [r4, #4]
 800722a:	f023 0903 	bic.w	r9, r3, #3
 800722e:	45a9      	cmp	r9, r5
 8007230:	d303      	bcc.n	800723a <_malloc_r+0x1c2>
 8007232:	eba9 0305 	sub.w	r3, r9, r5
 8007236:	2b0f      	cmp	r3, #15
 8007238:	dc7b      	bgt.n	8007332 <_malloc_r+0x2ba>
 800723a:	4b5e      	ldr	r3, [pc, #376]	; (80073b4 <_malloc_r+0x33c>)
 800723c:	f8df a188 	ldr.w	sl, [pc, #392]	; 80073c8 <_malloc_r+0x350>
 8007240:	681a      	ldr	r2, [r3, #0]
 8007242:	f8da 3000 	ldr.w	r3, [sl]
 8007246:	3301      	adds	r3, #1
 8007248:	eb05 0802 	add.w	r8, r5, r2
 800724c:	f000 8148 	beq.w	80074e0 <_malloc_r+0x468>
 8007250:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8007254:	f108 080f 	add.w	r8, r8, #15
 8007258:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 800725c:	f028 080f 	bic.w	r8, r8, #15
 8007260:	4641      	mov	r1, r8
 8007262:	4630      	mov	r0, r6
 8007264:	f000 fcf6 	bl	8007c54 <_sbrk_r>
 8007268:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800726c:	4683      	mov	fp, r0
 800726e:	f000 8104 	beq.w	800747a <_malloc_r+0x402>
 8007272:	eb04 0009 	add.w	r0, r4, r9
 8007276:	4558      	cmp	r0, fp
 8007278:	f200 80fd 	bhi.w	8007476 <_malloc_r+0x3fe>
 800727c:	4a4e      	ldr	r2, [pc, #312]	; (80073b8 <_malloc_r+0x340>)
 800727e:	6813      	ldr	r3, [r2, #0]
 8007280:	4443      	add	r3, r8
 8007282:	6013      	str	r3, [r2, #0]
 8007284:	f000 814d 	beq.w	8007522 <_malloc_r+0x4aa>
 8007288:	f8da 1000 	ldr.w	r1, [sl]
 800728c:	3101      	adds	r1, #1
 800728e:	bf1b      	ittet	ne
 8007290:	ebab 0000 	subne.w	r0, fp, r0
 8007294:	181b      	addne	r3, r3, r0
 8007296:	f8ca b000 	streq.w	fp, [sl]
 800729a:	6013      	strne	r3, [r2, #0]
 800729c:	f01b 0307 	ands.w	r3, fp, #7
 80072a0:	f000 8134 	beq.w	800750c <_malloc_r+0x494>
 80072a4:	f1c3 0108 	rsb	r1, r3, #8
 80072a8:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80072ac:	448b      	add	fp, r1
 80072ae:	3308      	adds	r3, #8
 80072b0:	44d8      	add	r8, fp
 80072b2:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80072b6:	eba3 0808 	sub.w	r8, r3, r8
 80072ba:	4641      	mov	r1, r8
 80072bc:	4630      	mov	r0, r6
 80072be:	9201      	str	r2, [sp, #4]
 80072c0:	f000 fcc8 	bl	8007c54 <_sbrk_r>
 80072c4:	1c43      	adds	r3, r0, #1
 80072c6:	9a01      	ldr	r2, [sp, #4]
 80072c8:	f000 8146 	beq.w	8007558 <_malloc_r+0x4e0>
 80072cc:	eba0 010b 	sub.w	r1, r0, fp
 80072d0:	4441      	add	r1, r8
 80072d2:	f041 0101 	orr.w	r1, r1, #1
 80072d6:	6813      	ldr	r3, [r2, #0]
 80072d8:	f8c7 b008 	str.w	fp, [r7, #8]
 80072dc:	4443      	add	r3, r8
 80072de:	42bc      	cmp	r4, r7
 80072e0:	f8cb 1004 	str.w	r1, [fp, #4]
 80072e4:	6013      	str	r3, [r2, #0]
 80072e6:	d015      	beq.n	8007314 <_malloc_r+0x29c>
 80072e8:	f1b9 0f0f 	cmp.w	r9, #15
 80072ec:	f240 8130 	bls.w	8007550 <_malloc_r+0x4d8>
 80072f0:	6860      	ldr	r0, [r4, #4]
 80072f2:	f1a9 010c 	sub.w	r1, r9, #12
 80072f6:	f021 0107 	bic.w	r1, r1, #7
 80072fa:	f000 0001 	and.w	r0, r0, #1
 80072fe:	eb04 0c01 	add.w	ip, r4, r1
 8007302:	4308      	orrs	r0, r1
 8007304:	f04f 0e05 	mov.w	lr, #5
 8007308:	290f      	cmp	r1, #15
 800730a:	6060      	str	r0, [r4, #4]
 800730c:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8007310:	f200 813a 	bhi.w	8007588 <_malloc_r+0x510>
 8007314:	4a29      	ldr	r2, [pc, #164]	; (80073bc <_malloc_r+0x344>)
 8007316:	482a      	ldr	r0, [pc, #168]	; (80073c0 <_malloc_r+0x348>)
 8007318:	6811      	ldr	r1, [r2, #0]
 800731a:	68bc      	ldr	r4, [r7, #8]
 800731c:	428b      	cmp	r3, r1
 800731e:	6801      	ldr	r1, [r0, #0]
 8007320:	bf88      	it	hi
 8007322:	6013      	strhi	r3, [r2, #0]
 8007324:	6862      	ldr	r2, [r4, #4]
 8007326:	428b      	cmp	r3, r1
 8007328:	f022 0203 	bic.w	r2, r2, #3
 800732c:	bf88      	it	hi
 800732e:	6003      	strhi	r3, [r0, #0]
 8007330:	e0a7      	b.n	8007482 <_malloc_r+0x40a>
 8007332:	1962      	adds	r2, r4, r5
 8007334:	f043 0301 	orr.w	r3, r3, #1
 8007338:	f045 0501 	orr.w	r5, r5, #1
 800733c:	6065      	str	r5, [r4, #4]
 800733e:	4630      	mov	r0, r6
 8007340:	60ba      	str	r2, [r7, #8]
 8007342:	6053      	str	r3, [r2, #4]
 8007344:	f000 f942 	bl	80075cc <__malloc_unlock>
 8007348:	3408      	adds	r4, #8
 800734a:	4620      	mov	r0, r4
 800734c:	b003      	add	sp, #12
 800734e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007352:	4423      	add	r3, r4
 8007354:	68e1      	ldr	r1, [r4, #12]
 8007356:	685a      	ldr	r2, [r3, #4]
 8007358:	68a5      	ldr	r5, [r4, #8]
 800735a:	f042 0201 	orr.w	r2, r2, #1
 800735e:	60e9      	str	r1, [r5, #12]
 8007360:	4630      	mov	r0, r6
 8007362:	608d      	str	r5, [r1, #8]
 8007364:	605a      	str	r2, [r3, #4]
 8007366:	f000 f931 	bl	80075cc <__malloc_unlock>
 800736a:	3408      	adds	r4, #8
 800736c:	4620      	mov	r0, r4
 800736e:	b003      	add	sp, #12
 8007370:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007374:	68dc      	ldr	r4, [r3, #12]
 8007376:	42a3      	cmp	r3, r4
 8007378:	bf08      	it	eq
 800737a:	3002      	addeq	r0, #2
 800737c:	f43f aed6 	beq.w	800712c <_malloc_r+0xb4>
 8007380:	e692      	b.n	80070a8 <_malloc_r+0x30>
 8007382:	2b14      	cmp	r3, #20
 8007384:	d971      	bls.n	800746a <_malloc_r+0x3f2>
 8007386:	2b54      	cmp	r3, #84	; 0x54
 8007388:	f200 80ad 	bhi.w	80074e6 <_malloc_r+0x46e>
 800738c:	0b2b      	lsrs	r3, r5, #12
 800738e:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8007392:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8007396:	00c3      	lsls	r3, r0, #3
 8007398:	e6b3      	b.n	8007102 <_malloc_r+0x8a>
 800739a:	4423      	add	r3, r4
 800739c:	4630      	mov	r0, r6
 800739e:	685a      	ldr	r2, [r3, #4]
 80073a0:	f042 0201 	orr.w	r2, r2, #1
 80073a4:	605a      	str	r2, [r3, #4]
 80073a6:	3408      	adds	r4, #8
 80073a8:	f000 f910 	bl	80075cc <__malloc_unlock>
 80073ac:	e68c      	b.n	80070c8 <_malloc_r+0x50>
 80073ae:	bf00      	nop
 80073b0:	2000044c 	.word	0x2000044c
 80073b4:	200047e8 	.word	0x200047e8
 80073b8:	200047b8 	.word	0x200047b8
 80073bc:	200047e0 	.word	0x200047e0
 80073c0:	200047e4 	.word	0x200047e4
 80073c4:	20000454 	.word	0x20000454
 80073c8:	20000854 	.word	0x20000854
 80073cc:	1961      	adds	r1, r4, r5
 80073ce:	f045 0e01 	orr.w	lr, r5, #1
 80073d2:	f042 0501 	orr.w	r5, r2, #1
 80073d6:	f8c4 e004 	str.w	lr, [r4, #4]
 80073da:	4630      	mov	r0, r6
 80073dc:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80073e0:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 80073e4:	604d      	str	r5, [r1, #4]
 80073e6:	50e2      	str	r2, [r4, r3]
 80073e8:	f000 f8f0 	bl	80075cc <__malloc_unlock>
 80073ec:	3408      	adds	r4, #8
 80073ee:	e66b      	b.n	80070c8 <_malloc_r+0x50>
 80073f0:	08e8      	lsrs	r0, r5, #3
 80073f2:	f105 0308 	add.w	r3, r5, #8
 80073f6:	e64f      	b.n	8007098 <_malloc_r+0x20>
 80073f8:	f108 0801 	add.w	r8, r8, #1
 80073fc:	f018 0f03 	tst.w	r8, #3
 8007400:	f10e 0e08 	add.w	lr, lr, #8
 8007404:	f47f aed0 	bne.w	80071a8 <_malloc_r+0x130>
 8007408:	e052      	b.n	80074b0 <_malloc_r+0x438>
 800740a:	4419      	add	r1, r3
 800740c:	461c      	mov	r4, r3
 800740e:	684a      	ldr	r2, [r1, #4]
 8007410:	68db      	ldr	r3, [r3, #12]
 8007412:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8007416:	f042 0201 	orr.w	r2, r2, #1
 800741a:	604a      	str	r2, [r1, #4]
 800741c:	4630      	mov	r0, r6
 800741e:	60eb      	str	r3, [r5, #12]
 8007420:	609d      	str	r5, [r3, #8]
 8007422:	f000 f8d3 	bl	80075cc <__malloc_unlock>
 8007426:	e64f      	b.n	80070c8 <_malloc_r+0x50>
 8007428:	0a5a      	lsrs	r2, r3, #9
 800742a:	2a04      	cmp	r2, #4
 800742c:	d935      	bls.n	800749a <_malloc_r+0x422>
 800742e:	2a14      	cmp	r2, #20
 8007430:	d86f      	bhi.n	8007512 <_malloc_r+0x49a>
 8007432:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8007436:	00c9      	lsls	r1, r1, #3
 8007438:	325b      	adds	r2, #91	; 0x5b
 800743a:	eb07 0e01 	add.w	lr, r7, r1
 800743e:	5879      	ldr	r1, [r7, r1]
 8007440:	f1ae 0e08 	sub.w	lr, lr, #8
 8007444:	458e      	cmp	lr, r1
 8007446:	d058      	beq.n	80074fa <_malloc_r+0x482>
 8007448:	684a      	ldr	r2, [r1, #4]
 800744a:	f022 0203 	bic.w	r2, r2, #3
 800744e:	429a      	cmp	r2, r3
 8007450:	d902      	bls.n	8007458 <_malloc_r+0x3e0>
 8007452:	6889      	ldr	r1, [r1, #8]
 8007454:	458e      	cmp	lr, r1
 8007456:	d1f7      	bne.n	8007448 <_malloc_r+0x3d0>
 8007458:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 800745c:	687b      	ldr	r3, [r7, #4]
 800745e:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8007462:	f8ce 4008 	str.w	r4, [lr, #8]
 8007466:	60cc      	str	r4, [r1, #12]
 8007468:	e68c      	b.n	8007184 <_malloc_r+0x10c>
 800746a:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 800746e:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8007472:	00c3      	lsls	r3, r0, #3
 8007474:	e645      	b.n	8007102 <_malloc_r+0x8a>
 8007476:	42bc      	cmp	r4, r7
 8007478:	d072      	beq.n	8007560 <_malloc_r+0x4e8>
 800747a:	68bc      	ldr	r4, [r7, #8]
 800747c:	6862      	ldr	r2, [r4, #4]
 800747e:	f022 0203 	bic.w	r2, r2, #3
 8007482:	4295      	cmp	r5, r2
 8007484:	eba2 0305 	sub.w	r3, r2, r5
 8007488:	d802      	bhi.n	8007490 <_malloc_r+0x418>
 800748a:	2b0f      	cmp	r3, #15
 800748c:	f73f af51 	bgt.w	8007332 <_malloc_r+0x2ba>
 8007490:	4630      	mov	r0, r6
 8007492:	f000 f89b 	bl	80075cc <__malloc_unlock>
 8007496:	2400      	movs	r4, #0
 8007498:	e616      	b.n	80070c8 <_malloc_r+0x50>
 800749a:	099a      	lsrs	r2, r3, #6
 800749c:	f102 0139 	add.w	r1, r2, #57	; 0x39
 80074a0:	00c9      	lsls	r1, r1, #3
 80074a2:	3238      	adds	r2, #56	; 0x38
 80074a4:	e7c9      	b.n	800743a <_malloc_r+0x3c2>
 80074a6:	f8d9 9000 	ldr.w	r9, [r9]
 80074aa:	4599      	cmp	r9, r3
 80074ac:	f040 8083 	bne.w	80075b6 <_malloc_r+0x53e>
 80074b0:	f010 0f03 	tst.w	r0, #3
 80074b4:	f1a9 0308 	sub.w	r3, r9, #8
 80074b8:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 80074bc:	d1f3      	bne.n	80074a6 <_malloc_r+0x42e>
 80074be:	687b      	ldr	r3, [r7, #4]
 80074c0:	ea23 0304 	bic.w	r3, r3, r4
 80074c4:	607b      	str	r3, [r7, #4]
 80074c6:	0064      	lsls	r4, r4, #1
 80074c8:	429c      	cmp	r4, r3
 80074ca:	f63f aeac 	bhi.w	8007226 <_malloc_r+0x1ae>
 80074ce:	b91c      	cbnz	r4, 80074d8 <_malloc_r+0x460>
 80074d0:	e6a9      	b.n	8007226 <_malloc_r+0x1ae>
 80074d2:	0064      	lsls	r4, r4, #1
 80074d4:	f108 0804 	add.w	r8, r8, #4
 80074d8:	421c      	tst	r4, r3
 80074da:	d0fa      	beq.n	80074d2 <_malloc_r+0x45a>
 80074dc:	4640      	mov	r0, r8
 80074de:	e65f      	b.n	80071a0 <_malloc_r+0x128>
 80074e0:	f108 0810 	add.w	r8, r8, #16
 80074e4:	e6bc      	b.n	8007260 <_malloc_r+0x1e8>
 80074e6:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80074ea:	d826      	bhi.n	800753a <_malloc_r+0x4c2>
 80074ec:	0beb      	lsrs	r3, r5, #15
 80074ee:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80074f2:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80074f6:	00c3      	lsls	r3, r0, #3
 80074f8:	e603      	b.n	8007102 <_malloc_r+0x8a>
 80074fa:	687b      	ldr	r3, [r7, #4]
 80074fc:	1092      	asrs	r2, r2, #2
 80074fe:	f04f 0801 	mov.w	r8, #1
 8007502:	fa08 f202 	lsl.w	r2, r8, r2
 8007506:	4313      	orrs	r3, r2
 8007508:	607b      	str	r3, [r7, #4]
 800750a:	e7a8      	b.n	800745e <_malloc_r+0x3e6>
 800750c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8007510:	e6ce      	b.n	80072b0 <_malloc_r+0x238>
 8007512:	2a54      	cmp	r2, #84	; 0x54
 8007514:	d829      	bhi.n	800756a <_malloc_r+0x4f2>
 8007516:	0b1a      	lsrs	r2, r3, #12
 8007518:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 800751c:	00c9      	lsls	r1, r1, #3
 800751e:	326e      	adds	r2, #110	; 0x6e
 8007520:	e78b      	b.n	800743a <_malloc_r+0x3c2>
 8007522:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8007526:	2900      	cmp	r1, #0
 8007528:	f47f aeae 	bne.w	8007288 <_malloc_r+0x210>
 800752c:	eb09 0208 	add.w	r2, r9, r8
 8007530:	68b9      	ldr	r1, [r7, #8]
 8007532:	f042 0201 	orr.w	r2, r2, #1
 8007536:	604a      	str	r2, [r1, #4]
 8007538:	e6ec      	b.n	8007314 <_malloc_r+0x29c>
 800753a:	f240 5254 	movw	r2, #1364	; 0x554
 800753e:	4293      	cmp	r3, r2
 8007540:	d81c      	bhi.n	800757c <_malloc_r+0x504>
 8007542:	0cab      	lsrs	r3, r5, #18
 8007544:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8007548:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 800754c:	00c3      	lsls	r3, r0, #3
 800754e:	e5d8      	b.n	8007102 <_malloc_r+0x8a>
 8007550:	2301      	movs	r3, #1
 8007552:	f8cb 3004 	str.w	r3, [fp, #4]
 8007556:	e79b      	b.n	8007490 <_malloc_r+0x418>
 8007558:	2101      	movs	r1, #1
 800755a:	f04f 0800 	mov.w	r8, #0
 800755e:	e6ba      	b.n	80072d6 <_malloc_r+0x25e>
 8007560:	4a16      	ldr	r2, [pc, #88]	; (80075bc <_malloc_r+0x544>)
 8007562:	6813      	ldr	r3, [r2, #0]
 8007564:	4443      	add	r3, r8
 8007566:	6013      	str	r3, [r2, #0]
 8007568:	e68e      	b.n	8007288 <_malloc_r+0x210>
 800756a:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800756e:	d814      	bhi.n	800759a <_malloc_r+0x522>
 8007570:	0bda      	lsrs	r2, r3, #15
 8007572:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8007576:	00c9      	lsls	r1, r1, #3
 8007578:	3277      	adds	r2, #119	; 0x77
 800757a:	e75e      	b.n	800743a <_malloc_r+0x3c2>
 800757c:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8007580:	207f      	movs	r0, #127	; 0x7f
 8007582:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8007586:	e5bc      	b.n	8007102 <_malloc_r+0x8a>
 8007588:	f104 0108 	add.w	r1, r4, #8
 800758c:	4630      	mov	r0, r6
 800758e:	9201      	str	r2, [sp, #4]
 8007590:	f7ff fbc6 	bl	8006d20 <_free_r>
 8007594:	9a01      	ldr	r2, [sp, #4]
 8007596:	6813      	ldr	r3, [r2, #0]
 8007598:	e6bc      	b.n	8007314 <_malloc_r+0x29c>
 800759a:	f240 5154 	movw	r1, #1364	; 0x554
 800759e:	428a      	cmp	r2, r1
 80075a0:	d805      	bhi.n	80075ae <_malloc_r+0x536>
 80075a2:	0c9a      	lsrs	r2, r3, #18
 80075a4:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 80075a8:	00c9      	lsls	r1, r1, #3
 80075aa:	327c      	adds	r2, #124	; 0x7c
 80075ac:	e745      	b.n	800743a <_malloc_r+0x3c2>
 80075ae:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 80075b2:	227e      	movs	r2, #126	; 0x7e
 80075b4:	e741      	b.n	800743a <_malloc_r+0x3c2>
 80075b6:	687b      	ldr	r3, [r7, #4]
 80075b8:	e785      	b.n	80074c6 <_malloc_r+0x44e>
 80075ba:	bf00      	nop
 80075bc:	200047b8 	.word	0x200047b8

080075c0 <__malloc_lock>:
 80075c0:	4801      	ldr	r0, [pc, #4]	; (80075c8 <__malloc_lock+0x8>)
 80075c2:	f7ff bcdd 	b.w	8006f80 <__retarget_lock_acquire_recursive>
 80075c6:	bf00      	nop
 80075c8:	20004844 	.word	0x20004844

080075cc <__malloc_unlock>:
 80075cc:	4801      	ldr	r0, [pc, #4]	; (80075d4 <__malloc_unlock+0x8>)
 80075ce:	f7ff bcd9 	b.w	8006f84 <__retarget_lock_release_recursive>
 80075d2:	bf00      	nop
 80075d4:	20004844 	.word	0x20004844

080075d8 <_Balloc>:
 80075d8:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80075da:	b570      	push	{r4, r5, r6, lr}
 80075dc:	4605      	mov	r5, r0
 80075de:	460c      	mov	r4, r1
 80075e0:	b14b      	cbz	r3, 80075f6 <_Balloc+0x1e>
 80075e2:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80075e6:	b180      	cbz	r0, 800760a <_Balloc+0x32>
 80075e8:	6802      	ldr	r2, [r0, #0]
 80075ea:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80075ee:	2300      	movs	r3, #0
 80075f0:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80075f4:	bd70      	pop	{r4, r5, r6, pc}
 80075f6:	2221      	movs	r2, #33	; 0x21
 80075f8:	2104      	movs	r1, #4
 80075fa:	f000 fc6f 	bl	8007edc <_calloc_r>
 80075fe:	4603      	mov	r3, r0
 8007600:	64e8      	str	r0, [r5, #76]	; 0x4c
 8007602:	2800      	cmp	r0, #0
 8007604:	d1ed      	bne.n	80075e2 <_Balloc+0xa>
 8007606:	2000      	movs	r0, #0
 8007608:	bd70      	pop	{r4, r5, r6, pc}
 800760a:	2101      	movs	r1, #1
 800760c:	fa01 f604 	lsl.w	r6, r1, r4
 8007610:	1d72      	adds	r2, r6, #5
 8007612:	4628      	mov	r0, r5
 8007614:	0092      	lsls	r2, r2, #2
 8007616:	f000 fc61 	bl	8007edc <_calloc_r>
 800761a:	2800      	cmp	r0, #0
 800761c:	d0f3      	beq.n	8007606 <_Balloc+0x2e>
 800761e:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8007622:	e7e4      	b.n	80075ee <_Balloc+0x16>

08007624 <_Bfree>:
 8007624:	b131      	cbz	r1, 8007634 <_Bfree+0x10>
 8007626:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8007628:	684a      	ldr	r2, [r1, #4]
 800762a:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800762e:	6008      	str	r0, [r1, #0]
 8007630:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8007634:	4770      	bx	lr
 8007636:	bf00      	nop

08007638 <__multadd>:
 8007638:	b5f0      	push	{r4, r5, r6, r7, lr}
 800763a:	690c      	ldr	r4, [r1, #16]
 800763c:	b083      	sub	sp, #12
 800763e:	460d      	mov	r5, r1
 8007640:	4606      	mov	r6, r0
 8007642:	f101 0c14 	add.w	ip, r1, #20
 8007646:	2700      	movs	r7, #0
 8007648:	f8dc 0000 	ldr.w	r0, [ip]
 800764c:	b281      	uxth	r1, r0
 800764e:	fb02 3301 	mla	r3, r2, r1, r3
 8007652:	0c01      	lsrs	r1, r0, #16
 8007654:	0c18      	lsrs	r0, r3, #16
 8007656:	fb02 0101 	mla	r1, r2, r1, r0
 800765a:	b29b      	uxth	r3, r3
 800765c:	3701      	adds	r7, #1
 800765e:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8007662:	42bc      	cmp	r4, r7
 8007664:	f84c 3b04 	str.w	r3, [ip], #4
 8007668:	ea4f 4311 	mov.w	r3, r1, lsr #16
 800766c:	dcec      	bgt.n	8007648 <__multadd+0x10>
 800766e:	b13b      	cbz	r3, 8007680 <__multadd+0x48>
 8007670:	68aa      	ldr	r2, [r5, #8]
 8007672:	42a2      	cmp	r2, r4
 8007674:	dd07      	ble.n	8007686 <__multadd+0x4e>
 8007676:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800767a:	3401      	adds	r4, #1
 800767c:	6153      	str	r3, [r2, #20]
 800767e:	612c      	str	r4, [r5, #16]
 8007680:	4628      	mov	r0, r5
 8007682:	b003      	add	sp, #12
 8007684:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007686:	6869      	ldr	r1, [r5, #4]
 8007688:	9301      	str	r3, [sp, #4]
 800768a:	3101      	adds	r1, #1
 800768c:	4630      	mov	r0, r6
 800768e:	f7ff ffa3 	bl	80075d8 <_Balloc>
 8007692:	692a      	ldr	r2, [r5, #16]
 8007694:	3202      	adds	r2, #2
 8007696:	f105 010c 	add.w	r1, r5, #12
 800769a:	4607      	mov	r7, r0
 800769c:	0092      	lsls	r2, r2, #2
 800769e:	300c      	adds	r0, #12
 80076a0:	f7f8 ff7c 	bl	800059c <memcpy>
 80076a4:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80076a6:	6869      	ldr	r1, [r5, #4]
 80076a8:	9b01      	ldr	r3, [sp, #4]
 80076aa:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80076ae:	6028      	str	r0, [r5, #0]
 80076b0:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80076b4:	463d      	mov	r5, r7
 80076b6:	e7de      	b.n	8007676 <__multadd+0x3e>

080076b8 <__hi0bits>:
 80076b8:	0c02      	lsrs	r2, r0, #16
 80076ba:	0412      	lsls	r2, r2, #16
 80076bc:	4603      	mov	r3, r0
 80076be:	b9c2      	cbnz	r2, 80076f2 <__hi0bits+0x3a>
 80076c0:	0403      	lsls	r3, r0, #16
 80076c2:	2010      	movs	r0, #16
 80076c4:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80076c8:	bf04      	itt	eq
 80076ca:	021b      	lsleq	r3, r3, #8
 80076cc:	3008      	addeq	r0, #8
 80076ce:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80076d2:	bf04      	itt	eq
 80076d4:	011b      	lsleq	r3, r3, #4
 80076d6:	3004      	addeq	r0, #4
 80076d8:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80076dc:	bf04      	itt	eq
 80076de:	009b      	lsleq	r3, r3, #2
 80076e0:	3002      	addeq	r0, #2
 80076e2:	2b00      	cmp	r3, #0
 80076e4:	db04      	blt.n	80076f0 <__hi0bits+0x38>
 80076e6:	005b      	lsls	r3, r3, #1
 80076e8:	d501      	bpl.n	80076ee <__hi0bits+0x36>
 80076ea:	3001      	adds	r0, #1
 80076ec:	4770      	bx	lr
 80076ee:	2020      	movs	r0, #32
 80076f0:	4770      	bx	lr
 80076f2:	2000      	movs	r0, #0
 80076f4:	e7e6      	b.n	80076c4 <__hi0bits+0xc>
 80076f6:	bf00      	nop

080076f8 <__lo0bits>:
 80076f8:	6803      	ldr	r3, [r0, #0]
 80076fa:	f013 0207 	ands.w	r2, r3, #7
 80076fe:	4601      	mov	r1, r0
 8007700:	d007      	beq.n	8007712 <__lo0bits+0x1a>
 8007702:	07da      	lsls	r2, r3, #31
 8007704:	d41f      	bmi.n	8007746 <__lo0bits+0x4e>
 8007706:	0798      	lsls	r0, r3, #30
 8007708:	d51f      	bpl.n	800774a <__lo0bits+0x52>
 800770a:	085b      	lsrs	r3, r3, #1
 800770c:	600b      	str	r3, [r1, #0]
 800770e:	2001      	movs	r0, #1
 8007710:	4770      	bx	lr
 8007712:	b298      	uxth	r0, r3
 8007714:	b1a0      	cbz	r0, 8007740 <__lo0bits+0x48>
 8007716:	4610      	mov	r0, r2
 8007718:	f013 0fff 	tst.w	r3, #255	; 0xff
 800771c:	bf04      	itt	eq
 800771e:	0a1b      	lsreq	r3, r3, #8
 8007720:	3008      	addeq	r0, #8
 8007722:	071a      	lsls	r2, r3, #28
 8007724:	bf04      	itt	eq
 8007726:	091b      	lsreq	r3, r3, #4
 8007728:	3004      	addeq	r0, #4
 800772a:	079a      	lsls	r2, r3, #30
 800772c:	bf04      	itt	eq
 800772e:	089b      	lsreq	r3, r3, #2
 8007730:	3002      	addeq	r0, #2
 8007732:	07da      	lsls	r2, r3, #31
 8007734:	d402      	bmi.n	800773c <__lo0bits+0x44>
 8007736:	085b      	lsrs	r3, r3, #1
 8007738:	d00b      	beq.n	8007752 <__lo0bits+0x5a>
 800773a:	3001      	adds	r0, #1
 800773c:	600b      	str	r3, [r1, #0]
 800773e:	4770      	bx	lr
 8007740:	0c1b      	lsrs	r3, r3, #16
 8007742:	2010      	movs	r0, #16
 8007744:	e7e8      	b.n	8007718 <__lo0bits+0x20>
 8007746:	2000      	movs	r0, #0
 8007748:	4770      	bx	lr
 800774a:	089b      	lsrs	r3, r3, #2
 800774c:	600b      	str	r3, [r1, #0]
 800774e:	2002      	movs	r0, #2
 8007750:	4770      	bx	lr
 8007752:	2020      	movs	r0, #32
 8007754:	4770      	bx	lr
 8007756:	bf00      	nop

08007758 <__i2b>:
 8007758:	b510      	push	{r4, lr}
 800775a:	460c      	mov	r4, r1
 800775c:	2101      	movs	r1, #1
 800775e:	f7ff ff3b 	bl	80075d8 <_Balloc>
 8007762:	2201      	movs	r2, #1
 8007764:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8007768:	bd10      	pop	{r4, pc}
 800776a:	bf00      	nop

0800776c <__multiply>:
 800776c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007770:	690e      	ldr	r6, [r1, #16]
 8007772:	6914      	ldr	r4, [r2, #16]
 8007774:	42a6      	cmp	r6, r4
 8007776:	b083      	sub	sp, #12
 8007778:	460f      	mov	r7, r1
 800777a:	4615      	mov	r5, r2
 800777c:	da04      	bge.n	8007788 <__multiply+0x1c>
 800777e:	4632      	mov	r2, r6
 8007780:	462f      	mov	r7, r5
 8007782:	4626      	mov	r6, r4
 8007784:	460d      	mov	r5, r1
 8007786:	4614      	mov	r4, r2
 8007788:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 800778c:	eb06 0804 	add.w	r8, r6, r4
 8007790:	4543      	cmp	r3, r8
 8007792:	bfb8      	it	lt
 8007794:	3101      	addlt	r1, #1
 8007796:	f7ff ff1f 	bl	80075d8 <_Balloc>
 800779a:	f100 0914 	add.w	r9, r0, #20
 800779e:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80077a2:	45f1      	cmp	r9, lr
 80077a4:	9000      	str	r0, [sp, #0]
 80077a6:	d205      	bcs.n	80077b4 <__multiply+0x48>
 80077a8:	464b      	mov	r3, r9
 80077aa:	2200      	movs	r2, #0
 80077ac:	f843 2b04 	str.w	r2, [r3], #4
 80077b0:	459e      	cmp	lr, r3
 80077b2:	d8fb      	bhi.n	80077ac <__multiply+0x40>
 80077b4:	f105 0a14 	add.w	sl, r5, #20
 80077b8:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80077bc:	f107 0314 	add.w	r3, r7, #20
 80077c0:	45a2      	cmp	sl, r4
 80077c2:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80077c6:	d261      	bcs.n	800788c <__multiply+0x120>
 80077c8:	1b64      	subs	r4, r4, r5
 80077ca:	3c15      	subs	r4, #21
 80077cc:	f024 0403 	bic.w	r4, r4, #3
 80077d0:	f8cd e004 	str.w	lr, [sp, #4]
 80077d4:	44a2      	add	sl, r4
 80077d6:	f105 0210 	add.w	r2, r5, #16
 80077da:	469e      	mov	lr, r3
 80077dc:	e005      	b.n	80077ea <__multiply+0x7e>
 80077de:	0c2d      	lsrs	r5, r5, #16
 80077e0:	d12b      	bne.n	800783a <__multiply+0xce>
 80077e2:	4592      	cmp	sl, r2
 80077e4:	f109 0904 	add.w	r9, r9, #4
 80077e8:	d04e      	beq.n	8007888 <__multiply+0x11c>
 80077ea:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80077ee:	fa1f fb85 	uxth.w	fp, r5
 80077f2:	f1bb 0f00 	cmp.w	fp, #0
 80077f6:	d0f2      	beq.n	80077de <__multiply+0x72>
 80077f8:	4677      	mov	r7, lr
 80077fa:	464e      	mov	r6, r9
 80077fc:	2000      	movs	r0, #0
 80077fe:	e000      	b.n	8007802 <__multiply+0x96>
 8007800:	4626      	mov	r6, r4
 8007802:	f857 1b04 	ldr.w	r1, [r7], #4
 8007806:	6834      	ldr	r4, [r6, #0]
 8007808:	b28b      	uxth	r3, r1
 800780a:	b2a5      	uxth	r5, r4
 800780c:	0c09      	lsrs	r1, r1, #16
 800780e:	0c24      	lsrs	r4, r4, #16
 8007810:	fb0b 5303 	mla	r3, fp, r3, r5
 8007814:	4403      	add	r3, r0
 8007816:	fb0b 4001 	mla	r0, fp, r1, r4
 800781a:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800781e:	4634      	mov	r4, r6
 8007820:	b29b      	uxth	r3, r3
 8007822:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8007826:	45bc      	cmp	ip, r7
 8007828:	ea4f 4010 	mov.w	r0, r0, lsr #16
 800782c:	f844 3b04 	str.w	r3, [r4], #4
 8007830:	d8e6      	bhi.n	8007800 <__multiply+0x94>
 8007832:	6070      	str	r0, [r6, #4]
 8007834:	6815      	ldr	r5, [r2, #0]
 8007836:	0c2d      	lsrs	r5, r5, #16
 8007838:	d0d3      	beq.n	80077e2 <__multiply+0x76>
 800783a:	f8d9 3000 	ldr.w	r3, [r9]
 800783e:	4676      	mov	r6, lr
 8007840:	4618      	mov	r0, r3
 8007842:	46cb      	mov	fp, r9
 8007844:	2100      	movs	r1, #0
 8007846:	e000      	b.n	800784a <__multiply+0xde>
 8007848:	46a3      	mov	fp, r4
 800784a:	8834      	ldrh	r4, [r6, #0]
 800784c:	0c00      	lsrs	r0, r0, #16
 800784e:	fb05 0004 	mla	r0, r5, r4, r0
 8007852:	4401      	add	r1, r0
 8007854:	b29b      	uxth	r3, r3
 8007856:	465c      	mov	r4, fp
 8007858:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800785c:	f844 3b04 	str.w	r3, [r4], #4
 8007860:	f856 3b04 	ldr.w	r3, [r6], #4
 8007864:	f8db 0004 	ldr.w	r0, [fp, #4]
 8007868:	0c1b      	lsrs	r3, r3, #16
 800786a:	b287      	uxth	r7, r0
 800786c:	fb05 7303 	mla	r3, r5, r3, r7
 8007870:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8007874:	45b4      	cmp	ip, r6
 8007876:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800787a:	d8e5      	bhi.n	8007848 <__multiply+0xdc>
 800787c:	4592      	cmp	sl, r2
 800787e:	f8cb 3004 	str.w	r3, [fp, #4]
 8007882:	f109 0904 	add.w	r9, r9, #4
 8007886:	d1b0      	bne.n	80077ea <__multiply+0x7e>
 8007888:	f8dd e004 	ldr.w	lr, [sp, #4]
 800788c:	f1b8 0f00 	cmp.w	r8, #0
 8007890:	dd0b      	ble.n	80078aa <__multiply+0x13e>
 8007892:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8007896:	f1ae 0e04 	sub.w	lr, lr, #4
 800789a:	b11b      	cbz	r3, 80078a4 <__multiply+0x138>
 800789c:	e005      	b.n	80078aa <__multiply+0x13e>
 800789e:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80078a2:	b913      	cbnz	r3, 80078aa <__multiply+0x13e>
 80078a4:	f1b8 0801 	subs.w	r8, r8, #1
 80078a8:	d1f9      	bne.n	800789e <__multiply+0x132>
 80078aa:	9800      	ldr	r0, [sp, #0]
 80078ac:	f8c0 8010 	str.w	r8, [r0, #16]
 80078b0:	b003      	add	sp, #12
 80078b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80078b6:	bf00      	nop

080078b8 <__pow5mult>:
 80078b8:	f012 0303 	ands.w	r3, r2, #3
 80078bc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80078c0:	4614      	mov	r4, r2
 80078c2:	4607      	mov	r7, r0
 80078c4:	d12e      	bne.n	8007924 <__pow5mult+0x6c>
 80078c6:	460d      	mov	r5, r1
 80078c8:	10a4      	asrs	r4, r4, #2
 80078ca:	d01c      	beq.n	8007906 <__pow5mult+0x4e>
 80078cc:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80078ce:	b396      	cbz	r6, 8007936 <__pow5mult+0x7e>
 80078d0:	07e3      	lsls	r3, r4, #31
 80078d2:	f04f 0800 	mov.w	r8, #0
 80078d6:	d406      	bmi.n	80078e6 <__pow5mult+0x2e>
 80078d8:	1064      	asrs	r4, r4, #1
 80078da:	d014      	beq.n	8007906 <__pow5mult+0x4e>
 80078dc:	6830      	ldr	r0, [r6, #0]
 80078de:	b1a8      	cbz	r0, 800790c <__pow5mult+0x54>
 80078e0:	4606      	mov	r6, r0
 80078e2:	07e3      	lsls	r3, r4, #31
 80078e4:	d5f8      	bpl.n	80078d8 <__pow5mult+0x20>
 80078e6:	4632      	mov	r2, r6
 80078e8:	4629      	mov	r1, r5
 80078ea:	4638      	mov	r0, r7
 80078ec:	f7ff ff3e 	bl	800776c <__multiply>
 80078f0:	b1b5      	cbz	r5, 8007920 <__pow5mult+0x68>
 80078f2:	686a      	ldr	r2, [r5, #4]
 80078f4:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80078f6:	1064      	asrs	r4, r4, #1
 80078f8:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80078fc:	6029      	str	r1, [r5, #0]
 80078fe:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8007902:	4605      	mov	r5, r0
 8007904:	d1ea      	bne.n	80078dc <__pow5mult+0x24>
 8007906:	4628      	mov	r0, r5
 8007908:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800790c:	4632      	mov	r2, r6
 800790e:	4631      	mov	r1, r6
 8007910:	4638      	mov	r0, r7
 8007912:	f7ff ff2b 	bl	800776c <__multiply>
 8007916:	6030      	str	r0, [r6, #0]
 8007918:	f8c0 8000 	str.w	r8, [r0]
 800791c:	4606      	mov	r6, r0
 800791e:	e7e0      	b.n	80078e2 <__pow5mult+0x2a>
 8007920:	4605      	mov	r5, r0
 8007922:	e7d9      	b.n	80078d8 <__pow5mult+0x20>
 8007924:	3b01      	subs	r3, #1
 8007926:	4a0b      	ldr	r2, [pc, #44]	; (8007954 <__pow5mult+0x9c>)
 8007928:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 800792c:	2300      	movs	r3, #0
 800792e:	f7ff fe83 	bl	8007638 <__multadd>
 8007932:	4605      	mov	r5, r0
 8007934:	e7c8      	b.n	80078c8 <__pow5mult+0x10>
 8007936:	2101      	movs	r1, #1
 8007938:	4638      	mov	r0, r7
 800793a:	f7ff fe4d 	bl	80075d8 <_Balloc>
 800793e:	f240 2371 	movw	r3, #625	; 0x271
 8007942:	6143      	str	r3, [r0, #20]
 8007944:	2201      	movs	r2, #1
 8007946:	2300      	movs	r3, #0
 8007948:	6102      	str	r2, [r0, #16]
 800794a:	4606      	mov	r6, r0
 800794c:	64b8      	str	r0, [r7, #72]	; 0x48
 800794e:	6003      	str	r3, [r0, #0]
 8007950:	e7be      	b.n	80078d0 <__pow5mult+0x18>
 8007952:	bf00      	nop
 8007954:	08008c58 	.word	0x08008c58

08007958 <__lshift>:
 8007958:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800795c:	4691      	mov	r9, r2
 800795e:	690a      	ldr	r2, [r1, #16]
 8007960:	460e      	mov	r6, r1
 8007962:	ea4f 1469 	mov.w	r4, r9, asr #5
 8007966:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800796a:	eb04 0802 	add.w	r8, r4, r2
 800796e:	f108 0501 	add.w	r5, r8, #1
 8007972:	429d      	cmp	r5, r3
 8007974:	4607      	mov	r7, r0
 8007976:	dd04      	ble.n	8007982 <__lshift+0x2a>
 8007978:	005b      	lsls	r3, r3, #1
 800797a:	429d      	cmp	r5, r3
 800797c:	f101 0101 	add.w	r1, r1, #1
 8007980:	dcfa      	bgt.n	8007978 <__lshift+0x20>
 8007982:	4638      	mov	r0, r7
 8007984:	f7ff fe28 	bl	80075d8 <_Balloc>
 8007988:	2c00      	cmp	r4, #0
 800798a:	f100 0314 	add.w	r3, r0, #20
 800798e:	dd37      	ble.n	8007a00 <__lshift+0xa8>
 8007990:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8007994:	2200      	movs	r2, #0
 8007996:	f843 2b04 	str.w	r2, [r3], #4
 800799a:	428b      	cmp	r3, r1
 800799c:	d1fb      	bne.n	8007996 <__lshift+0x3e>
 800799e:	6934      	ldr	r4, [r6, #16]
 80079a0:	f106 0314 	add.w	r3, r6, #20
 80079a4:	f019 091f 	ands.w	r9, r9, #31
 80079a8:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80079ac:	d020      	beq.n	80079f0 <__lshift+0x98>
 80079ae:	f1c9 0e20 	rsb	lr, r9, #32
 80079b2:	2200      	movs	r2, #0
 80079b4:	e000      	b.n	80079b8 <__lshift+0x60>
 80079b6:	4651      	mov	r1, sl
 80079b8:	681c      	ldr	r4, [r3, #0]
 80079ba:	468a      	mov	sl, r1
 80079bc:	fa04 f409 	lsl.w	r4, r4, r9
 80079c0:	4314      	orrs	r4, r2
 80079c2:	f84a 4b04 	str.w	r4, [sl], #4
 80079c6:	f853 2b04 	ldr.w	r2, [r3], #4
 80079ca:	4563      	cmp	r3, ip
 80079cc:	fa22 f20e 	lsr.w	r2, r2, lr
 80079d0:	d3f1      	bcc.n	80079b6 <__lshift+0x5e>
 80079d2:	604a      	str	r2, [r1, #4]
 80079d4:	b10a      	cbz	r2, 80079da <__lshift+0x82>
 80079d6:	f108 0502 	add.w	r5, r8, #2
 80079da:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80079dc:	6872      	ldr	r2, [r6, #4]
 80079de:	3d01      	subs	r5, #1
 80079e0:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80079e4:	6105      	str	r5, [r0, #16]
 80079e6:	6031      	str	r1, [r6, #0]
 80079e8:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80079ec:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80079f0:	3904      	subs	r1, #4
 80079f2:	f853 2b04 	ldr.w	r2, [r3], #4
 80079f6:	f841 2f04 	str.w	r2, [r1, #4]!
 80079fa:	459c      	cmp	ip, r3
 80079fc:	d8f9      	bhi.n	80079f2 <__lshift+0x9a>
 80079fe:	e7ec      	b.n	80079da <__lshift+0x82>
 8007a00:	4619      	mov	r1, r3
 8007a02:	e7cc      	b.n	800799e <__lshift+0x46>

08007a04 <__mcmp>:
 8007a04:	b430      	push	{r4, r5}
 8007a06:	690b      	ldr	r3, [r1, #16]
 8007a08:	4605      	mov	r5, r0
 8007a0a:	6900      	ldr	r0, [r0, #16]
 8007a0c:	1ac0      	subs	r0, r0, r3
 8007a0e:	d10f      	bne.n	8007a30 <__mcmp+0x2c>
 8007a10:	009b      	lsls	r3, r3, #2
 8007a12:	3514      	adds	r5, #20
 8007a14:	3114      	adds	r1, #20
 8007a16:	4419      	add	r1, r3
 8007a18:	442b      	add	r3, r5
 8007a1a:	e001      	b.n	8007a20 <__mcmp+0x1c>
 8007a1c:	429d      	cmp	r5, r3
 8007a1e:	d207      	bcs.n	8007a30 <__mcmp+0x2c>
 8007a20:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8007a24:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8007a28:	4294      	cmp	r4, r2
 8007a2a:	d0f7      	beq.n	8007a1c <__mcmp+0x18>
 8007a2c:	d302      	bcc.n	8007a34 <__mcmp+0x30>
 8007a2e:	2001      	movs	r0, #1
 8007a30:	bc30      	pop	{r4, r5}
 8007a32:	4770      	bx	lr
 8007a34:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007a38:	e7fa      	b.n	8007a30 <__mcmp+0x2c>
 8007a3a:	bf00      	nop

08007a3c <__mdiff>:
 8007a3c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007a40:	6913      	ldr	r3, [r2, #16]
 8007a42:	690d      	ldr	r5, [r1, #16]
 8007a44:	1aed      	subs	r5, r5, r3
 8007a46:	2d00      	cmp	r5, #0
 8007a48:	460e      	mov	r6, r1
 8007a4a:	4690      	mov	r8, r2
 8007a4c:	f101 0414 	add.w	r4, r1, #20
 8007a50:	f102 0714 	add.w	r7, r2, #20
 8007a54:	d114      	bne.n	8007a80 <__mdiff+0x44>
 8007a56:	009b      	lsls	r3, r3, #2
 8007a58:	18e2      	adds	r2, r4, r3
 8007a5a:	443b      	add	r3, r7
 8007a5c:	e001      	b.n	8007a62 <__mdiff+0x26>
 8007a5e:	42a2      	cmp	r2, r4
 8007a60:	d959      	bls.n	8007b16 <__mdiff+0xda>
 8007a62:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8007a66:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8007a6a:	458c      	cmp	ip, r1
 8007a6c:	d0f7      	beq.n	8007a5e <__mdiff+0x22>
 8007a6e:	d209      	bcs.n	8007a84 <__mdiff+0x48>
 8007a70:	4622      	mov	r2, r4
 8007a72:	4633      	mov	r3, r6
 8007a74:	463c      	mov	r4, r7
 8007a76:	4646      	mov	r6, r8
 8007a78:	4617      	mov	r7, r2
 8007a7a:	4698      	mov	r8, r3
 8007a7c:	2501      	movs	r5, #1
 8007a7e:	e001      	b.n	8007a84 <__mdiff+0x48>
 8007a80:	dbf6      	blt.n	8007a70 <__mdiff+0x34>
 8007a82:	2500      	movs	r5, #0
 8007a84:	6871      	ldr	r1, [r6, #4]
 8007a86:	f7ff fda7 	bl	80075d8 <_Balloc>
 8007a8a:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8007a8e:	6936      	ldr	r6, [r6, #16]
 8007a90:	60c5      	str	r5, [r0, #12]
 8007a92:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8007a96:	46bc      	mov	ip, r7
 8007a98:	f100 0514 	add.w	r5, r0, #20
 8007a9c:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8007aa0:	2300      	movs	r3, #0
 8007aa2:	f85c 1b04 	ldr.w	r1, [ip], #4
 8007aa6:	f854 8b04 	ldr.w	r8, [r4], #4
 8007aaa:	b28a      	uxth	r2, r1
 8007aac:	fa13 f388 	uxtah	r3, r3, r8
 8007ab0:	0c09      	lsrs	r1, r1, #16
 8007ab2:	1a9a      	subs	r2, r3, r2
 8007ab4:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8007ab8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8007abc:	b292      	uxth	r2, r2
 8007abe:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8007ac2:	45e6      	cmp	lr, ip
 8007ac4:	f845 2b04 	str.w	r2, [r5], #4
 8007ac8:	ea4f 4323 	mov.w	r3, r3, asr #16
 8007acc:	d8e9      	bhi.n	8007aa2 <__mdiff+0x66>
 8007ace:	42a7      	cmp	r7, r4
 8007ad0:	d917      	bls.n	8007b02 <__mdiff+0xc6>
 8007ad2:	46ae      	mov	lr, r5
 8007ad4:	46a4      	mov	ip, r4
 8007ad6:	f85c 2b04 	ldr.w	r2, [ip], #4
 8007ada:	fa13 f382 	uxtah	r3, r3, r2
 8007ade:	1419      	asrs	r1, r3, #16
 8007ae0:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8007ae4:	b29b      	uxth	r3, r3
 8007ae6:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8007aea:	4567      	cmp	r7, ip
 8007aec:	f84e 2b04 	str.w	r2, [lr], #4
 8007af0:	ea4f 4321 	mov.w	r3, r1, asr #16
 8007af4:	d8ef      	bhi.n	8007ad6 <__mdiff+0x9a>
 8007af6:	43e4      	mvns	r4, r4
 8007af8:	4427      	add	r7, r4
 8007afa:	f027 0703 	bic.w	r7, r7, #3
 8007afe:	3704      	adds	r7, #4
 8007b00:	443d      	add	r5, r7
 8007b02:	3d04      	subs	r5, #4
 8007b04:	b922      	cbnz	r2, 8007b10 <__mdiff+0xd4>
 8007b06:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8007b0a:	3e01      	subs	r6, #1
 8007b0c:	2b00      	cmp	r3, #0
 8007b0e:	d0fa      	beq.n	8007b06 <__mdiff+0xca>
 8007b10:	6106      	str	r6, [r0, #16]
 8007b12:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007b16:	2100      	movs	r1, #0
 8007b18:	f7ff fd5e 	bl	80075d8 <_Balloc>
 8007b1c:	2201      	movs	r2, #1
 8007b1e:	2300      	movs	r3, #0
 8007b20:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8007b24:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08007b28 <__d2b>:
 8007b28:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8007b2c:	460f      	mov	r7, r1
 8007b2e:	b083      	sub	sp, #12
 8007b30:	2101      	movs	r1, #1
 8007b32:	ec55 4b10 	vmov	r4, r5, d0
 8007b36:	4616      	mov	r6, r2
 8007b38:	f7ff fd4e 	bl	80075d8 <_Balloc>
 8007b3c:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8007b40:	4681      	mov	r9, r0
 8007b42:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8007b46:	f1b8 0f00 	cmp.w	r8, #0
 8007b4a:	d001      	beq.n	8007b50 <__d2b+0x28>
 8007b4c:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8007b50:	2c00      	cmp	r4, #0
 8007b52:	9301      	str	r3, [sp, #4]
 8007b54:	d024      	beq.n	8007ba0 <__d2b+0x78>
 8007b56:	a802      	add	r0, sp, #8
 8007b58:	f840 4d08 	str.w	r4, [r0, #-8]!
 8007b5c:	f7ff fdcc 	bl	80076f8 <__lo0bits>
 8007b60:	2800      	cmp	r0, #0
 8007b62:	d136      	bne.n	8007bd2 <__d2b+0xaa>
 8007b64:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007b68:	f8c9 2014 	str.w	r2, [r9, #20]
 8007b6c:	2b00      	cmp	r3, #0
 8007b6e:	bf0c      	ite	eq
 8007b70:	2101      	moveq	r1, #1
 8007b72:	2102      	movne	r1, #2
 8007b74:	f8c9 3018 	str.w	r3, [r9, #24]
 8007b78:	f8c9 1010 	str.w	r1, [r9, #16]
 8007b7c:	f1b8 0f00 	cmp.w	r8, #0
 8007b80:	d11b      	bne.n	8007bba <__d2b+0x92>
 8007b82:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8007b86:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8007b8a:	6038      	str	r0, [r7, #0]
 8007b8c:	6918      	ldr	r0, [r3, #16]
 8007b8e:	f7ff fd93 	bl	80076b8 <__hi0bits>
 8007b92:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8007b96:	6030      	str	r0, [r6, #0]
 8007b98:	4648      	mov	r0, r9
 8007b9a:	b003      	add	sp, #12
 8007b9c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007ba0:	a801      	add	r0, sp, #4
 8007ba2:	f7ff fda9 	bl	80076f8 <__lo0bits>
 8007ba6:	9b01      	ldr	r3, [sp, #4]
 8007ba8:	f8c9 3014 	str.w	r3, [r9, #20]
 8007bac:	2101      	movs	r1, #1
 8007bae:	3020      	adds	r0, #32
 8007bb0:	f8c9 1010 	str.w	r1, [r9, #16]
 8007bb4:	f1b8 0f00 	cmp.w	r8, #0
 8007bb8:	d0e3      	beq.n	8007b82 <__d2b+0x5a>
 8007bba:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8007bbe:	eb08 0300 	add.w	r3, r8, r0
 8007bc2:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8007bc6:	603b      	str	r3, [r7, #0]
 8007bc8:	6030      	str	r0, [r6, #0]
 8007bca:	4648      	mov	r0, r9
 8007bcc:	b003      	add	sp, #12
 8007bce:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007bd2:	e9dd 1300 	ldrd	r1, r3, [sp]
 8007bd6:	f1c0 0220 	rsb	r2, r0, #32
 8007bda:	fa03 f202 	lsl.w	r2, r3, r2
 8007bde:	430a      	orrs	r2, r1
 8007be0:	40c3      	lsrs	r3, r0
 8007be2:	9301      	str	r3, [sp, #4]
 8007be4:	f8c9 2014 	str.w	r2, [r9, #20]
 8007be8:	e7c0      	b.n	8007b6c <__d2b+0x44>
 8007bea:	bf00      	nop

08007bec <frexp>:
 8007bec:	ec53 2b10 	vmov	r2, r3, d0
 8007bf0:	b570      	push	{r4, r5, r6, lr}
 8007bf2:	4e16      	ldr	r6, [pc, #88]	; (8007c4c <frexp+0x60>)
 8007bf4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8007bf8:	2500      	movs	r5, #0
 8007bfa:	42b1      	cmp	r1, r6
 8007bfc:	4604      	mov	r4, r0
 8007bfe:	6005      	str	r5, [r0, #0]
 8007c00:	dc21      	bgt.n	8007c46 <frexp+0x5a>
 8007c02:	ee10 6a10 	vmov	r6, s0
 8007c06:	430e      	orrs	r6, r1
 8007c08:	d01d      	beq.n	8007c46 <frexp+0x5a>
 8007c0a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8007c0e:	4618      	mov	r0, r3
 8007c10:	da0c      	bge.n	8007c2c <frexp+0x40>
 8007c12:	4619      	mov	r1, r3
 8007c14:	2200      	movs	r2, #0
 8007c16:	ee10 0a10 	vmov	r0, s0
 8007c1a:	4b0d      	ldr	r3, [pc, #52]	; (8007c50 <frexp+0x64>)
 8007c1c:	f7f8 ffec 	bl	8000bf8 <__aeabi_dmul>
 8007c20:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8007c24:	4602      	mov	r2, r0
 8007c26:	4608      	mov	r0, r1
 8007c28:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8007c2c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8007c30:	1509      	asrs	r1, r1, #20
 8007c32:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8007c36:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8007c3a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8007c3e:	4429      	add	r1, r5
 8007c40:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8007c44:	6021      	str	r1, [r4, #0]
 8007c46:	ec43 2b10 	vmov	d0, r2, r3
 8007c4a:	bd70      	pop	{r4, r5, r6, pc}
 8007c4c:	7fefffff 	.word	0x7fefffff
 8007c50:	43500000 	.word	0x43500000

08007c54 <_sbrk_r>:
 8007c54:	b538      	push	{r3, r4, r5, lr}
 8007c56:	4c07      	ldr	r4, [pc, #28]	; (8007c74 <_sbrk_r+0x20>)
 8007c58:	2300      	movs	r3, #0
 8007c5a:	4605      	mov	r5, r0
 8007c5c:	4608      	mov	r0, r1
 8007c5e:	6023      	str	r3, [r4, #0]
 8007c60:	f7fb ffcb 	bl	8003bfa <_sbrk>
 8007c64:	1c43      	adds	r3, r0, #1
 8007c66:	d000      	beq.n	8007c6a <_sbrk_r+0x16>
 8007c68:	bd38      	pop	{r3, r4, r5, pc}
 8007c6a:	6823      	ldr	r3, [r4, #0]
 8007c6c:	2b00      	cmp	r3, #0
 8007c6e:	d0fb      	beq.n	8007c68 <_sbrk_r+0x14>
 8007c70:	602b      	str	r3, [r5, #0]
 8007c72:	bd38      	pop	{r3, r4, r5, pc}
 8007c74:	20004858 	.word	0x20004858

08007c78 <__sread>:
 8007c78:	b510      	push	{r4, lr}
 8007c7a:	460c      	mov	r4, r1
 8007c7c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007c80:	f000 fc9e 	bl	80085c0 <_read_r>
 8007c84:	2800      	cmp	r0, #0
 8007c86:	db03      	blt.n	8007c90 <__sread+0x18>
 8007c88:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8007c8a:	4403      	add	r3, r0
 8007c8c:	6523      	str	r3, [r4, #80]	; 0x50
 8007c8e:	bd10      	pop	{r4, pc}
 8007c90:	89a3      	ldrh	r3, [r4, #12]
 8007c92:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8007c96:	81a3      	strh	r3, [r4, #12]
 8007c98:	bd10      	pop	{r4, pc}
 8007c9a:	bf00      	nop

08007c9c <__swrite>:
 8007c9c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007ca0:	4616      	mov	r6, r2
 8007ca2:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8007ca6:	461f      	mov	r7, r3
 8007ca8:	05d3      	lsls	r3, r2, #23
 8007caa:	460c      	mov	r4, r1
 8007cac:	4605      	mov	r5, r0
 8007cae:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007cb2:	d507      	bpl.n	8007cc4 <__swrite+0x28>
 8007cb4:	2200      	movs	r2, #0
 8007cb6:	2302      	movs	r3, #2
 8007cb8:	f000 fbf2 	bl	80084a0 <_lseek_r>
 8007cbc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007cc0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8007cc4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8007cc8:	81a2      	strh	r2, [r4, #12]
 8007cca:	463b      	mov	r3, r7
 8007ccc:	4632      	mov	r2, r6
 8007cce:	4628      	mov	r0, r5
 8007cd0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8007cd4:	f000 b88c 	b.w	8007df0 <_write_r>

08007cd8 <__sseek>:
 8007cd8:	b510      	push	{r4, lr}
 8007cda:	460c      	mov	r4, r1
 8007cdc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007ce0:	f000 fbde 	bl	80084a0 <_lseek_r>
 8007ce4:	89a3      	ldrh	r3, [r4, #12]
 8007ce6:	1c42      	adds	r2, r0, #1
 8007ce8:	bf0e      	itee	eq
 8007cea:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8007cee:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8007cf2:	6520      	strne	r0, [r4, #80]	; 0x50
 8007cf4:	81a3      	strh	r3, [r4, #12]
 8007cf6:	bd10      	pop	{r4, pc}

08007cf8 <__sclose>:
 8007cf8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007cfc:	f000 b922 	b.w	8007f44 <_close_r>

08007d00 <strncpy>:
 8007d00:	ea40 0301 	orr.w	r3, r0, r1
 8007d04:	079b      	lsls	r3, r3, #30
 8007d06:	b470      	push	{r4, r5, r6}
 8007d08:	d12a      	bne.n	8007d60 <strncpy+0x60>
 8007d0a:	2a03      	cmp	r2, #3
 8007d0c:	d928      	bls.n	8007d60 <strncpy+0x60>
 8007d0e:	460c      	mov	r4, r1
 8007d10:	4603      	mov	r3, r0
 8007d12:	4621      	mov	r1, r4
 8007d14:	f854 6b04 	ldr.w	r6, [r4], #4
 8007d18:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8007d1c:	ea25 0506 	bic.w	r5, r5, r6
 8007d20:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8007d24:	d106      	bne.n	8007d34 <strncpy+0x34>
 8007d26:	3a04      	subs	r2, #4
 8007d28:	2a03      	cmp	r2, #3
 8007d2a:	f843 6b04 	str.w	r6, [r3], #4
 8007d2e:	4621      	mov	r1, r4
 8007d30:	d8ef      	bhi.n	8007d12 <strncpy+0x12>
 8007d32:	b19a      	cbz	r2, 8007d5c <strncpy+0x5c>
 8007d34:	780c      	ldrb	r4, [r1, #0]
 8007d36:	701c      	strb	r4, [r3, #0]
 8007d38:	3a01      	subs	r2, #1
 8007d3a:	3301      	adds	r3, #1
 8007d3c:	b13c      	cbz	r4, 8007d4e <strncpy+0x4e>
 8007d3e:	b16a      	cbz	r2, 8007d5c <strncpy+0x5c>
 8007d40:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8007d44:	f803 4b01 	strb.w	r4, [r3], #1
 8007d48:	3a01      	subs	r2, #1
 8007d4a:	2c00      	cmp	r4, #0
 8007d4c:	d1f7      	bne.n	8007d3e <strncpy+0x3e>
 8007d4e:	b12a      	cbz	r2, 8007d5c <strncpy+0x5c>
 8007d50:	441a      	add	r2, r3
 8007d52:	2100      	movs	r1, #0
 8007d54:	f803 1b01 	strb.w	r1, [r3], #1
 8007d58:	4293      	cmp	r3, r2
 8007d5a:	d1fb      	bne.n	8007d54 <strncpy+0x54>
 8007d5c:	bc70      	pop	{r4, r5, r6}
 8007d5e:	4770      	bx	lr
 8007d60:	4603      	mov	r3, r0
 8007d62:	e7e6      	b.n	8007d32 <strncpy+0x32>

08007d64 <__sprint_r.part.0>:
 8007d64:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007d68:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8007d6a:	049c      	lsls	r4, r3, #18
 8007d6c:	4692      	mov	sl, r2
 8007d6e:	d52d      	bpl.n	8007dcc <__sprint_r.part.0+0x68>
 8007d70:	6893      	ldr	r3, [r2, #8]
 8007d72:	6812      	ldr	r2, [r2, #0]
 8007d74:	b343      	cbz	r3, 8007dc8 <__sprint_r.part.0+0x64>
 8007d76:	460e      	mov	r6, r1
 8007d78:	4607      	mov	r7, r0
 8007d7a:	f102 0908 	add.w	r9, r2, #8
 8007d7e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8007d82:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8007d86:	d015      	beq.n	8007db4 <__sprint_r.part.0+0x50>
 8007d88:	3d04      	subs	r5, #4
 8007d8a:	2400      	movs	r4, #0
 8007d8c:	e001      	b.n	8007d92 <__sprint_r.part.0+0x2e>
 8007d8e:	45a0      	cmp	r8, r4
 8007d90:	d00e      	beq.n	8007db0 <__sprint_r.part.0+0x4c>
 8007d92:	4632      	mov	r2, r6
 8007d94:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007d98:	4638      	mov	r0, r7
 8007d9a:	f000 f99d 	bl	80080d8 <_fputwc_r>
 8007d9e:	1c43      	adds	r3, r0, #1
 8007da0:	f104 0401 	add.w	r4, r4, #1
 8007da4:	d1f3      	bne.n	8007d8e <__sprint_r.part.0+0x2a>
 8007da6:	2300      	movs	r3, #0
 8007da8:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8007dac:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007db0:	f8da 3008 	ldr.w	r3, [sl, #8]
 8007db4:	f02b 0b03 	bic.w	fp, fp, #3
 8007db8:	eba3 030b 	sub.w	r3, r3, fp
 8007dbc:	f8ca 3008 	str.w	r3, [sl, #8]
 8007dc0:	f109 0908 	add.w	r9, r9, #8
 8007dc4:	2b00      	cmp	r3, #0
 8007dc6:	d1da      	bne.n	8007d7e <__sprint_r.part.0+0x1a>
 8007dc8:	2000      	movs	r0, #0
 8007dca:	e7ec      	b.n	8007da6 <__sprint_r.part.0+0x42>
 8007dcc:	f000 f9ca 	bl	8008164 <__sfvwrite_r>
 8007dd0:	2300      	movs	r3, #0
 8007dd2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8007dd6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007dda:	bf00      	nop

08007ddc <__sprint_r>:
 8007ddc:	6893      	ldr	r3, [r2, #8]
 8007dde:	b10b      	cbz	r3, 8007de4 <__sprint_r+0x8>
 8007de0:	f7ff bfc0 	b.w	8007d64 <__sprint_r.part.0>
 8007de4:	b410      	push	{r4}
 8007de6:	4618      	mov	r0, r3
 8007de8:	6053      	str	r3, [r2, #4]
 8007dea:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007dee:	4770      	bx	lr

08007df0 <_write_r>:
 8007df0:	b570      	push	{r4, r5, r6, lr}
 8007df2:	460d      	mov	r5, r1
 8007df4:	4c08      	ldr	r4, [pc, #32]	; (8007e18 <_write_r+0x28>)
 8007df6:	4611      	mov	r1, r2
 8007df8:	4606      	mov	r6, r0
 8007dfa:	461a      	mov	r2, r3
 8007dfc:	4628      	mov	r0, r5
 8007dfe:	2300      	movs	r3, #0
 8007e00:	6023      	str	r3, [r4, #0]
 8007e02:	f7fb fed5 	bl	8003bb0 <_write>
 8007e06:	1c43      	adds	r3, r0, #1
 8007e08:	d000      	beq.n	8007e0c <_write_r+0x1c>
 8007e0a:	bd70      	pop	{r4, r5, r6, pc}
 8007e0c:	6823      	ldr	r3, [r4, #0]
 8007e0e:	2b00      	cmp	r3, #0
 8007e10:	d0fb      	beq.n	8007e0a <_write_r+0x1a>
 8007e12:	6033      	str	r3, [r6, #0]
 8007e14:	bd70      	pop	{r4, r5, r6, pc}
 8007e16:	bf00      	nop
 8007e18:	20004858 	.word	0x20004858

08007e1c <__register_exitproc>:
 8007e1c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007e20:	4d2b      	ldr	r5, [pc, #172]	; (8007ed0 <__register_exitproc+0xb4>)
 8007e22:	4606      	mov	r6, r0
 8007e24:	6828      	ldr	r0, [r5, #0]
 8007e26:	4698      	mov	r8, r3
 8007e28:	460f      	mov	r7, r1
 8007e2a:	4691      	mov	r9, r2
 8007e2c:	f7ff f8a8 	bl	8006f80 <__retarget_lock_acquire_recursive>
 8007e30:	4b28      	ldr	r3, [pc, #160]	; (8007ed4 <__register_exitproc+0xb8>)
 8007e32:	681c      	ldr	r4, [r3, #0]
 8007e34:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007e38:	2b00      	cmp	r3, #0
 8007e3a:	d03d      	beq.n	8007eb8 <__register_exitproc+0x9c>
 8007e3c:	685a      	ldr	r2, [r3, #4]
 8007e3e:	2a1f      	cmp	r2, #31
 8007e40:	dc0d      	bgt.n	8007e5e <__register_exitproc+0x42>
 8007e42:	f102 0c01 	add.w	ip, r2, #1
 8007e46:	bb16      	cbnz	r6, 8007e8e <__register_exitproc+0x72>
 8007e48:	3202      	adds	r2, #2
 8007e4a:	f8c3 c004 	str.w	ip, [r3, #4]
 8007e4e:	6828      	ldr	r0, [r5, #0]
 8007e50:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8007e54:	f7ff f896 	bl	8006f84 <__retarget_lock_release_recursive>
 8007e58:	2000      	movs	r0, #0
 8007e5a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007e5e:	4b1e      	ldr	r3, [pc, #120]	; (8007ed8 <__register_exitproc+0xbc>)
 8007e60:	b37b      	cbz	r3, 8007ec2 <__register_exitproc+0xa6>
 8007e62:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8007e66:	f3af 8000 	nop.w
 8007e6a:	4603      	mov	r3, r0
 8007e6c:	b348      	cbz	r0, 8007ec2 <__register_exitproc+0xa6>
 8007e6e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8007e72:	2100      	movs	r1, #0
 8007e74:	e9c0 2100 	strd	r2, r1, [r0]
 8007e78:	f04f 0c01 	mov.w	ip, #1
 8007e7c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007e80:	460a      	mov	r2, r1
 8007e82:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8007e86:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8007e8a:	2e00      	cmp	r6, #0
 8007e8c:	d0dc      	beq.n	8007e48 <__register_exitproc+0x2c>
 8007e8e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8007e92:	2401      	movs	r4, #1
 8007e94:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007e98:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8007e9c:	4094      	lsls	r4, r2
 8007e9e:	4320      	orrs	r0, r4
 8007ea0:	2e02      	cmp	r6, #2
 8007ea2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8007ea6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8007eaa:	d1cd      	bne.n	8007e48 <__register_exitproc+0x2c>
 8007eac:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007eb0:	430c      	orrs	r4, r1
 8007eb2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8007eb6:	e7c7      	b.n	8007e48 <__register_exitproc+0x2c>
 8007eb8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8007ebc:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8007ec0:	e7bc      	b.n	8007e3c <__register_exitproc+0x20>
 8007ec2:	6828      	ldr	r0, [r5, #0]
 8007ec4:	f7ff f85e 	bl	8006f84 <__retarget_lock_release_recursive>
 8007ec8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007ecc:	e7c5      	b.n	8007e5a <__register_exitproc+0x3e>
 8007ece:	bf00      	nop
 8007ed0:	20000448 	.word	0x20000448
 8007ed4:	08008af0 	.word	0x08008af0
 8007ed8:	00000000 	.word	0x00000000

08007edc <_calloc_r>:
 8007edc:	b510      	push	{r4, lr}
 8007ede:	fb02 f101 	mul.w	r1, r2, r1
 8007ee2:	f7ff f8c9 	bl	8007078 <_malloc_r>
 8007ee6:	4604      	mov	r4, r0
 8007ee8:	b1d8      	cbz	r0, 8007f22 <_calloc_r+0x46>
 8007eea:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8007eee:	f022 0203 	bic.w	r2, r2, #3
 8007ef2:	3a04      	subs	r2, #4
 8007ef4:	2a24      	cmp	r2, #36	; 0x24
 8007ef6:	d81d      	bhi.n	8007f34 <_calloc_r+0x58>
 8007ef8:	2a13      	cmp	r2, #19
 8007efa:	d914      	bls.n	8007f26 <_calloc_r+0x4a>
 8007efc:	2300      	movs	r3, #0
 8007efe:	2a1b      	cmp	r2, #27
 8007f00:	e9c0 3300 	strd	r3, r3, [r0]
 8007f04:	d91b      	bls.n	8007f3e <_calloc_r+0x62>
 8007f06:	2a24      	cmp	r2, #36	; 0x24
 8007f08:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8007f0c:	bf0a      	itet	eq
 8007f0e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8007f12:	f100 0210 	addne.w	r2, r0, #16
 8007f16:	f100 0218 	addeq.w	r2, r0, #24
 8007f1a:	2300      	movs	r3, #0
 8007f1c:	e9c2 3300 	strd	r3, r3, [r2]
 8007f20:	6093      	str	r3, [r2, #8]
 8007f22:	4620      	mov	r0, r4
 8007f24:	bd10      	pop	{r4, pc}
 8007f26:	4602      	mov	r2, r0
 8007f28:	2300      	movs	r3, #0
 8007f2a:	e9c2 3300 	strd	r3, r3, [r2]
 8007f2e:	6093      	str	r3, [r2, #8]
 8007f30:	4620      	mov	r0, r4
 8007f32:	bd10      	pop	{r4, pc}
 8007f34:	2100      	movs	r1, #0
 8007f36:	f7fb ff55 	bl	8003de4 <memset>
 8007f3a:	4620      	mov	r0, r4
 8007f3c:	bd10      	pop	{r4, pc}
 8007f3e:	f100 0208 	add.w	r2, r0, #8
 8007f42:	e7f1      	b.n	8007f28 <_calloc_r+0x4c>

08007f44 <_close_r>:
 8007f44:	b538      	push	{r3, r4, r5, lr}
 8007f46:	4c07      	ldr	r4, [pc, #28]	; (8007f64 <_close_r+0x20>)
 8007f48:	2300      	movs	r3, #0
 8007f4a:	4605      	mov	r5, r0
 8007f4c:	4608      	mov	r0, r1
 8007f4e:	6023      	str	r3, [r4, #0]
 8007f50:	f7fb fe90 	bl	8003c74 <_close>
 8007f54:	1c43      	adds	r3, r0, #1
 8007f56:	d000      	beq.n	8007f5a <_close_r+0x16>
 8007f58:	bd38      	pop	{r3, r4, r5, pc}
 8007f5a:	6823      	ldr	r3, [r4, #0]
 8007f5c:	2b00      	cmp	r3, #0
 8007f5e:	d0fb      	beq.n	8007f58 <_close_r+0x14>
 8007f60:	602b      	str	r3, [r5, #0]
 8007f62:	bd38      	pop	{r3, r4, r5, pc}
 8007f64:	20004858 	.word	0x20004858

08007f68 <_fclose_r>:
 8007f68:	b570      	push	{r4, r5, r6, lr}
 8007f6a:	2900      	cmp	r1, #0
 8007f6c:	d048      	beq.n	8008000 <_fclose_r+0x98>
 8007f6e:	4605      	mov	r5, r0
 8007f70:	460c      	mov	r4, r1
 8007f72:	b110      	cbz	r0, 8007f7a <_fclose_r+0x12>
 8007f74:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007f76:	2b00      	cmp	r3, #0
 8007f78:	d048      	beq.n	800800c <_fclose_r+0xa4>
 8007f7a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007f7c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007f80:	07d0      	lsls	r0, r2, #31
 8007f82:	d440      	bmi.n	8008006 <_fclose_r+0x9e>
 8007f84:	0599      	lsls	r1, r3, #22
 8007f86:	d530      	bpl.n	8007fea <_fclose_r+0x82>
 8007f88:	4621      	mov	r1, r4
 8007f8a:	4628      	mov	r0, r5
 8007f8c:	f7fe fd20 	bl	80069d0 <__sflush_r>
 8007f90:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8007f92:	4606      	mov	r6, r0
 8007f94:	b133      	cbz	r3, 8007fa4 <_fclose_r+0x3c>
 8007f96:	69e1      	ldr	r1, [r4, #28]
 8007f98:	4628      	mov	r0, r5
 8007f9a:	4798      	blx	r3
 8007f9c:	2800      	cmp	r0, #0
 8007f9e:	bfb8      	it	lt
 8007fa0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8007fa4:	89a3      	ldrh	r3, [r4, #12]
 8007fa6:	061a      	lsls	r2, r3, #24
 8007fa8:	d43c      	bmi.n	8008024 <_fclose_r+0xbc>
 8007faa:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007fac:	b141      	cbz	r1, 8007fc0 <_fclose_r+0x58>
 8007fae:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8007fb2:	4299      	cmp	r1, r3
 8007fb4:	d002      	beq.n	8007fbc <_fclose_r+0x54>
 8007fb6:	4628      	mov	r0, r5
 8007fb8:	f7fe feb2 	bl	8006d20 <_free_r>
 8007fbc:	2300      	movs	r3, #0
 8007fbe:	6323      	str	r3, [r4, #48]	; 0x30
 8007fc0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8007fc2:	b121      	cbz	r1, 8007fce <_fclose_r+0x66>
 8007fc4:	4628      	mov	r0, r5
 8007fc6:	f7fe feab 	bl	8006d20 <_free_r>
 8007fca:	2300      	movs	r3, #0
 8007fcc:	6463      	str	r3, [r4, #68]	; 0x44
 8007fce:	f7fe fe31 	bl	8006c34 <__sfp_lock_acquire>
 8007fd2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007fd4:	2200      	movs	r2, #0
 8007fd6:	07db      	lsls	r3, r3, #31
 8007fd8:	81a2      	strh	r2, [r4, #12]
 8007fda:	d51f      	bpl.n	800801c <_fclose_r+0xb4>
 8007fdc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007fde:	f7fe ffcd 	bl	8006f7c <__retarget_lock_close_recursive>
 8007fe2:	f7fe fe2d 	bl	8006c40 <__sfp_lock_release>
 8007fe6:	4630      	mov	r0, r6
 8007fe8:	bd70      	pop	{r4, r5, r6, pc}
 8007fea:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007fec:	f7fe ffc8 	bl	8006f80 <__retarget_lock_acquire_recursive>
 8007ff0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007ff4:	2b00      	cmp	r3, #0
 8007ff6:	d1c7      	bne.n	8007f88 <_fclose_r+0x20>
 8007ff8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007ffa:	f016 0601 	ands.w	r6, r6, #1
 8007ffe:	d016      	beq.n	800802e <_fclose_r+0xc6>
 8008000:	2600      	movs	r6, #0
 8008002:	4630      	mov	r0, r6
 8008004:	bd70      	pop	{r4, r5, r6, pc}
 8008006:	2b00      	cmp	r3, #0
 8008008:	d0fa      	beq.n	8008000 <_fclose_r+0x98>
 800800a:	e7bd      	b.n	8007f88 <_fclose_r+0x20>
 800800c:	f7fe fde6 	bl	8006bdc <__sinit>
 8008010:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008012:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008016:	07d0      	lsls	r0, r2, #31
 8008018:	d4f5      	bmi.n	8008006 <_fclose_r+0x9e>
 800801a:	e7b3      	b.n	8007f84 <_fclose_r+0x1c>
 800801c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800801e:	f7fe ffb1 	bl	8006f84 <__retarget_lock_release_recursive>
 8008022:	e7db      	b.n	8007fdc <_fclose_r+0x74>
 8008024:	6921      	ldr	r1, [r4, #16]
 8008026:	4628      	mov	r0, r5
 8008028:	f7fe fe7a 	bl	8006d20 <_free_r>
 800802c:	e7bd      	b.n	8007faa <_fclose_r+0x42>
 800802e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008030:	f7fe ffa8 	bl	8006f84 <__retarget_lock_release_recursive>
 8008034:	4630      	mov	r0, r6
 8008036:	bd70      	pop	{r4, r5, r6, pc}

08008038 <__fputwc>:
 8008038:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800803c:	b082      	sub	sp, #8
 800803e:	4681      	mov	r9, r0
 8008040:	4688      	mov	r8, r1
 8008042:	4614      	mov	r4, r2
 8008044:	f000 fa1e 	bl	8008484 <__locale_mb_cur_max>
 8008048:	2801      	cmp	r0, #1
 800804a:	d103      	bne.n	8008054 <__fputwc+0x1c>
 800804c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8008050:	2bfe      	cmp	r3, #254	; 0xfe
 8008052:	d933      	bls.n	80080bc <__fputwc+0x84>
 8008054:	4642      	mov	r2, r8
 8008056:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800805a:	a901      	add	r1, sp, #4
 800805c:	4648      	mov	r0, r9
 800805e:	f000 fccb 	bl	80089f8 <_wcrtomb_r>
 8008062:	1c42      	adds	r2, r0, #1
 8008064:	4606      	mov	r6, r0
 8008066:	d02f      	beq.n	80080c8 <__fputwc+0x90>
 8008068:	b320      	cbz	r0, 80080b4 <__fputwc+0x7c>
 800806a:	f89d c004 	ldrb.w	ip, [sp, #4]
 800806e:	2500      	movs	r5, #0
 8008070:	f10d 0a04 	add.w	sl, sp, #4
 8008074:	e009      	b.n	800808a <__fputwc+0x52>
 8008076:	6823      	ldr	r3, [r4, #0]
 8008078:	1c5a      	adds	r2, r3, #1
 800807a:	6022      	str	r2, [r4, #0]
 800807c:	f883 c000 	strb.w	ip, [r3]
 8008080:	3501      	adds	r5, #1
 8008082:	42b5      	cmp	r5, r6
 8008084:	d216      	bcs.n	80080b4 <__fputwc+0x7c>
 8008086:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800808a:	68a3      	ldr	r3, [r4, #8]
 800808c:	3b01      	subs	r3, #1
 800808e:	2b00      	cmp	r3, #0
 8008090:	60a3      	str	r3, [r4, #8]
 8008092:	daf0      	bge.n	8008076 <__fputwc+0x3e>
 8008094:	69a7      	ldr	r7, [r4, #24]
 8008096:	42bb      	cmp	r3, r7
 8008098:	4661      	mov	r1, ip
 800809a:	4622      	mov	r2, r4
 800809c:	4648      	mov	r0, r9
 800809e:	db02      	blt.n	80080a6 <__fputwc+0x6e>
 80080a0:	f1bc 0f0a 	cmp.w	ip, #10
 80080a4:	d1e7      	bne.n	8008076 <__fputwc+0x3e>
 80080a6:	f000 fc4f 	bl	8008948 <__swbuf_r>
 80080aa:	1c43      	adds	r3, r0, #1
 80080ac:	d1e8      	bne.n	8008080 <__fputwc+0x48>
 80080ae:	b002      	add	sp, #8
 80080b0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80080b4:	4640      	mov	r0, r8
 80080b6:	b002      	add	sp, #8
 80080b8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80080bc:	fa5f fc88 	uxtb.w	ip, r8
 80080c0:	4606      	mov	r6, r0
 80080c2:	f88d c004 	strb.w	ip, [sp, #4]
 80080c6:	e7d2      	b.n	800806e <__fputwc+0x36>
 80080c8:	89a3      	ldrh	r3, [r4, #12]
 80080ca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80080ce:	81a3      	strh	r3, [r4, #12]
 80080d0:	b002      	add	sp, #8
 80080d2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80080d6:	bf00      	nop

080080d8 <_fputwc_r>:
 80080d8:	b530      	push	{r4, r5, lr}
 80080da:	4605      	mov	r5, r0
 80080dc:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80080de:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80080e2:	07c0      	lsls	r0, r0, #31
 80080e4:	4614      	mov	r4, r2
 80080e6:	b083      	sub	sp, #12
 80080e8:	b29a      	uxth	r2, r3
 80080ea:	d401      	bmi.n	80080f0 <_fputwc_r+0x18>
 80080ec:	0590      	lsls	r0, r2, #22
 80080ee:	d51c      	bpl.n	800812a <_fputwc_r+0x52>
 80080f0:	0490      	lsls	r0, r2, #18
 80080f2:	d406      	bmi.n	8008102 <_fputwc_r+0x2a>
 80080f4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80080f6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80080fa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80080fe:	81a3      	strh	r3, [r4, #12]
 8008100:	6662      	str	r2, [r4, #100]	; 0x64
 8008102:	4628      	mov	r0, r5
 8008104:	4622      	mov	r2, r4
 8008106:	f7ff ff97 	bl	8008038 <__fputwc>
 800810a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800810c:	07da      	lsls	r2, r3, #31
 800810e:	4605      	mov	r5, r0
 8008110:	d402      	bmi.n	8008118 <_fputwc_r+0x40>
 8008112:	89a3      	ldrh	r3, [r4, #12]
 8008114:	059b      	lsls	r3, r3, #22
 8008116:	d502      	bpl.n	800811e <_fputwc_r+0x46>
 8008118:	4628      	mov	r0, r5
 800811a:	b003      	add	sp, #12
 800811c:	bd30      	pop	{r4, r5, pc}
 800811e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008120:	f7fe ff30 	bl	8006f84 <__retarget_lock_release_recursive>
 8008124:	4628      	mov	r0, r5
 8008126:	b003      	add	sp, #12
 8008128:	bd30      	pop	{r4, r5, pc}
 800812a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800812c:	9101      	str	r1, [sp, #4]
 800812e:	f7fe ff27 	bl	8006f80 <__retarget_lock_acquire_recursive>
 8008132:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008136:	9901      	ldr	r1, [sp, #4]
 8008138:	b29a      	uxth	r2, r3
 800813a:	e7d9      	b.n	80080f0 <_fputwc_r+0x18>

0800813c <_fstat_r>:
 800813c:	b538      	push	{r3, r4, r5, lr}
 800813e:	460b      	mov	r3, r1
 8008140:	4c07      	ldr	r4, [pc, #28]	; (8008160 <_fstat_r+0x24>)
 8008142:	4605      	mov	r5, r0
 8008144:	4611      	mov	r1, r2
 8008146:	4618      	mov	r0, r3
 8008148:	2300      	movs	r3, #0
 800814a:	6023      	str	r3, [r4, #0]
 800814c:	f7fb fd9a 	bl	8003c84 <_fstat>
 8008150:	1c43      	adds	r3, r0, #1
 8008152:	d000      	beq.n	8008156 <_fstat_r+0x1a>
 8008154:	bd38      	pop	{r3, r4, r5, pc}
 8008156:	6823      	ldr	r3, [r4, #0]
 8008158:	2b00      	cmp	r3, #0
 800815a:	d0fb      	beq.n	8008154 <_fstat_r+0x18>
 800815c:	602b      	str	r3, [r5, #0]
 800815e:	bd38      	pop	{r3, r4, r5, pc}
 8008160:	20004858 	.word	0x20004858

08008164 <__sfvwrite_r>:
 8008164:	6893      	ldr	r3, [r2, #8]
 8008166:	2b00      	cmp	r3, #0
 8008168:	f000 80e4 	beq.w	8008334 <__sfvwrite_r+0x1d0>
 800816c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008170:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8008174:	b29b      	uxth	r3, r3
 8008176:	460c      	mov	r4, r1
 8008178:	0719      	lsls	r1, r3, #28
 800817a:	b083      	sub	sp, #12
 800817c:	4682      	mov	sl, r0
 800817e:	4690      	mov	r8, r2
 8008180:	d535      	bpl.n	80081ee <__sfvwrite_r+0x8a>
 8008182:	6922      	ldr	r2, [r4, #16]
 8008184:	b39a      	cbz	r2, 80081ee <__sfvwrite_r+0x8a>
 8008186:	f013 0202 	ands.w	r2, r3, #2
 800818a:	f8d8 6000 	ldr.w	r6, [r8]
 800818e:	d03d      	beq.n	800820c <__sfvwrite_r+0xa8>
 8008190:	2700      	movs	r7, #0
 8008192:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8008196:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800819a:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 800845c <__sfvwrite_r+0x2f8>
 800819e:	463d      	mov	r5, r7
 80081a0:	454d      	cmp	r5, r9
 80081a2:	462b      	mov	r3, r5
 80081a4:	463a      	mov	r2, r7
 80081a6:	bf28      	it	cs
 80081a8:	464b      	movcs	r3, r9
 80081aa:	4661      	mov	r1, ip
 80081ac:	4650      	mov	r0, sl
 80081ae:	b1d5      	cbz	r5, 80081e6 <__sfvwrite_r+0x82>
 80081b0:	47d8      	blx	fp
 80081b2:	2800      	cmp	r0, #0
 80081b4:	f340 80c6 	ble.w	8008344 <__sfvwrite_r+0x1e0>
 80081b8:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80081bc:	1a1b      	subs	r3, r3, r0
 80081be:	4407      	add	r7, r0
 80081c0:	1a2d      	subs	r5, r5, r0
 80081c2:	f8c8 3008 	str.w	r3, [r8, #8]
 80081c6:	2b00      	cmp	r3, #0
 80081c8:	f000 80b0 	beq.w	800832c <__sfvwrite_r+0x1c8>
 80081cc:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80081d0:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80081d4:	454d      	cmp	r5, r9
 80081d6:	462b      	mov	r3, r5
 80081d8:	463a      	mov	r2, r7
 80081da:	bf28      	it	cs
 80081dc:	464b      	movcs	r3, r9
 80081de:	4661      	mov	r1, ip
 80081e0:	4650      	mov	r0, sl
 80081e2:	2d00      	cmp	r5, #0
 80081e4:	d1e4      	bne.n	80081b0 <__sfvwrite_r+0x4c>
 80081e6:	e9d6 7500 	ldrd	r7, r5, [r6]
 80081ea:	3608      	adds	r6, #8
 80081ec:	e7d8      	b.n	80081a0 <__sfvwrite_r+0x3c>
 80081ee:	4621      	mov	r1, r4
 80081f0:	4650      	mov	r0, sl
 80081f2:	f7fd fbd5 	bl	80059a0 <__swsetup_r>
 80081f6:	2800      	cmp	r0, #0
 80081f8:	f040 812a 	bne.w	8008450 <__sfvwrite_r+0x2ec>
 80081fc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008200:	f8d8 6000 	ldr.w	r6, [r8]
 8008204:	b29b      	uxth	r3, r3
 8008206:	f013 0202 	ands.w	r2, r3, #2
 800820a:	d1c1      	bne.n	8008190 <__sfvwrite_r+0x2c>
 800820c:	f013 0901 	ands.w	r9, r3, #1
 8008210:	d15d      	bne.n	80082ce <__sfvwrite_r+0x16a>
 8008212:	68a7      	ldr	r7, [r4, #8]
 8008214:	6820      	ldr	r0, [r4, #0]
 8008216:	464d      	mov	r5, r9
 8008218:	2d00      	cmp	r5, #0
 800821a:	d054      	beq.n	80082c6 <__sfvwrite_r+0x162>
 800821c:	059a      	lsls	r2, r3, #22
 800821e:	f140 809b 	bpl.w	8008358 <__sfvwrite_r+0x1f4>
 8008222:	42af      	cmp	r7, r5
 8008224:	46bb      	mov	fp, r7
 8008226:	f200 80d8 	bhi.w	80083da <__sfvwrite_r+0x276>
 800822a:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800822e:	d02f      	beq.n	8008290 <__sfvwrite_r+0x12c>
 8008230:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8008234:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8008238:	eba0 0b01 	sub.w	fp, r0, r1
 800823c:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8008240:	1c68      	adds	r0, r5, #1
 8008242:	107f      	asrs	r7, r7, #1
 8008244:	4458      	add	r0, fp
 8008246:	42b8      	cmp	r0, r7
 8008248:	463a      	mov	r2, r7
 800824a:	bf84      	itt	hi
 800824c:	4607      	movhi	r7, r0
 800824e:	463a      	movhi	r2, r7
 8008250:	055b      	lsls	r3, r3, #21
 8008252:	f140 80d3 	bpl.w	80083fc <__sfvwrite_r+0x298>
 8008256:	4611      	mov	r1, r2
 8008258:	4650      	mov	r0, sl
 800825a:	f7fe ff0d 	bl	8007078 <_malloc_r>
 800825e:	2800      	cmp	r0, #0
 8008260:	f000 80f0 	beq.w	8008444 <__sfvwrite_r+0x2e0>
 8008264:	465a      	mov	r2, fp
 8008266:	6921      	ldr	r1, [r4, #16]
 8008268:	9001      	str	r0, [sp, #4]
 800826a:	f7f8 f997 	bl	800059c <memcpy>
 800826e:	89a2      	ldrh	r2, [r4, #12]
 8008270:	9b01      	ldr	r3, [sp, #4]
 8008272:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8008276:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800827a:	81a2      	strh	r2, [r4, #12]
 800827c:	eba7 020b 	sub.w	r2, r7, fp
 8008280:	eb03 000b 	add.w	r0, r3, fp
 8008284:	6167      	str	r7, [r4, #20]
 8008286:	6123      	str	r3, [r4, #16]
 8008288:	6020      	str	r0, [r4, #0]
 800828a:	60a2      	str	r2, [r4, #8]
 800828c:	462f      	mov	r7, r5
 800828e:	46ab      	mov	fp, r5
 8008290:	465a      	mov	r2, fp
 8008292:	4649      	mov	r1, r9
 8008294:	f000 f930 	bl	80084f8 <memmove>
 8008298:	68a2      	ldr	r2, [r4, #8]
 800829a:	6823      	ldr	r3, [r4, #0]
 800829c:	1bd2      	subs	r2, r2, r7
 800829e:	445b      	add	r3, fp
 80082a0:	462f      	mov	r7, r5
 80082a2:	60a2      	str	r2, [r4, #8]
 80082a4:	6023      	str	r3, [r4, #0]
 80082a6:	2500      	movs	r5, #0
 80082a8:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80082ac:	1bdb      	subs	r3, r3, r7
 80082ae:	44b9      	add	r9, r7
 80082b0:	f8c8 3008 	str.w	r3, [r8, #8]
 80082b4:	2b00      	cmp	r3, #0
 80082b6:	d039      	beq.n	800832c <__sfvwrite_r+0x1c8>
 80082b8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80082bc:	68a7      	ldr	r7, [r4, #8]
 80082be:	6820      	ldr	r0, [r4, #0]
 80082c0:	b29b      	uxth	r3, r3
 80082c2:	2d00      	cmp	r5, #0
 80082c4:	d1aa      	bne.n	800821c <__sfvwrite_r+0xb8>
 80082c6:	e9d6 9500 	ldrd	r9, r5, [r6]
 80082ca:	3608      	adds	r6, #8
 80082cc:	e7a4      	b.n	8008218 <__sfvwrite_r+0xb4>
 80082ce:	4633      	mov	r3, r6
 80082d0:	4691      	mov	r9, r2
 80082d2:	4610      	mov	r0, r2
 80082d4:	4617      	mov	r7, r2
 80082d6:	464e      	mov	r6, r9
 80082d8:	469b      	mov	fp, r3
 80082da:	2f00      	cmp	r7, #0
 80082dc:	d06b      	beq.n	80083b6 <__sfvwrite_r+0x252>
 80082de:	2800      	cmp	r0, #0
 80082e0:	d071      	beq.n	80083c6 <__sfvwrite_r+0x262>
 80082e2:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80082e6:	6820      	ldr	r0, [r4, #0]
 80082e8:	45b9      	cmp	r9, r7
 80082ea:	464b      	mov	r3, r9
 80082ec:	bf28      	it	cs
 80082ee:	463b      	movcs	r3, r7
 80082f0:	4288      	cmp	r0, r1
 80082f2:	d903      	bls.n	80082fc <__sfvwrite_r+0x198>
 80082f4:	68a5      	ldr	r5, [r4, #8]
 80082f6:	4415      	add	r5, r2
 80082f8:	42ab      	cmp	r3, r5
 80082fa:	dc71      	bgt.n	80083e0 <__sfvwrite_r+0x27c>
 80082fc:	429a      	cmp	r2, r3
 80082fe:	f300 8093 	bgt.w	8008428 <__sfvwrite_r+0x2c4>
 8008302:	4613      	mov	r3, r2
 8008304:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8008306:	69e1      	ldr	r1, [r4, #28]
 8008308:	4632      	mov	r2, r6
 800830a:	4650      	mov	r0, sl
 800830c:	47a8      	blx	r5
 800830e:	1e05      	subs	r5, r0, #0
 8008310:	dd18      	ble.n	8008344 <__sfvwrite_r+0x1e0>
 8008312:	ebb9 0905 	subs.w	r9, r9, r5
 8008316:	d00f      	beq.n	8008338 <__sfvwrite_r+0x1d4>
 8008318:	2001      	movs	r0, #1
 800831a:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800831e:	1b5b      	subs	r3, r3, r5
 8008320:	442e      	add	r6, r5
 8008322:	1b7f      	subs	r7, r7, r5
 8008324:	f8c8 3008 	str.w	r3, [r8, #8]
 8008328:	2b00      	cmp	r3, #0
 800832a:	d1d6      	bne.n	80082da <__sfvwrite_r+0x176>
 800832c:	2000      	movs	r0, #0
 800832e:	b003      	add	sp, #12
 8008330:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008334:	2000      	movs	r0, #0
 8008336:	4770      	bx	lr
 8008338:	4621      	mov	r1, r4
 800833a:	4650      	mov	r0, sl
 800833c:	f7fe fbf2 	bl	8006b24 <_fflush_r>
 8008340:	2800      	cmp	r0, #0
 8008342:	d0ea      	beq.n	800831a <__sfvwrite_r+0x1b6>
 8008344:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008348:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800834c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008350:	81a3      	strh	r3, [r4, #12]
 8008352:	b003      	add	sp, #12
 8008354:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008358:	6923      	ldr	r3, [r4, #16]
 800835a:	4283      	cmp	r3, r0
 800835c:	d315      	bcc.n	800838a <__sfvwrite_r+0x226>
 800835e:	6961      	ldr	r1, [r4, #20]
 8008360:	42a9      	cmp	r1, r5
 8008362:	d812      	bhi.n	800838a <__sfvwrite_r+0x226>
 8008364:	4b3c      	ldr	r3, [pc, #240]	; (8008458 <__sfvwrite_r+0x2f4>)
 8008366:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8008368:	429d      	cmp	r5, r3
 800836a:	bf94      	ite	ls
 800836c:	462b      	movls	r3, r5
 800836e:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8008372:	464a      	mov	r2, r9
 8008374:	fb93 f3f1 	sdiv	r3, r3, r1
 8008378:	4650      	mov	r0, sl
 800837a:	fb01 f303 	mul.w	r3, r1, r3
 800837e:	69e1      	ldr	r1, [r4, #28]
 8008380:	47b8      	blx	r7
 8008382:	1e07      	subs	r7, r0, #0
 8008384:	ddde      	ble.n	8008344 <__sfvwrite_r+0x1e0>
 8008386:	1bed      	subs	r5, r5, r7
 8008388:	e78e      	b.n	80082a8 <__sfvwrite_r+0x144>
 800838a:	42af      	cmp	r7, r5
 800838c:	bf28      	it	cs
 800838e:	462f      	movcs	r7, r5
 8008390:	463a      	mov	r2, r7
 8008392:	4649      	mov	r1, r9
 8008394:	f000 f8b0 	bl	80084f8 <memmove>
 8008398:	68a3      	ldr	r3, [r4, #8]
 800839a:	6822      	ldr	r2, [r4, #0]
 800839c:	1bdb      	subs	r3, r3, r7
 800839e:	443a      	add	r2, r7
 80083a0:	60a3      	str	r3, [r4, #8]
 80083a2:	6022      	str	r2, [r4, #0]
 80083a4:	2b00      	cmp	r3, #0
 80083a6:	d1ee      	bne.n	8008386 <__sfvwrite_r+0x222>
 80083a8:	4621      	mov	r1, r4
 80083aa:	4650      	mov	r0, sl
 80083ac:	f7fe fbba 	bl	8006b24 <_fflush_r>
 80083b0:	2800      	cmp	r0, #0
 80083b2:	d0e8      	beq.n	8008386 <__sfvwrite_r+0x222>
 80083b4:	e7c6      	b.n	8008344 <__sfvwrite_r+0x1e0>
 80083b6:	f10b 0308 	add.w	r3, fp, #8
 80083ba:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80083be:	469b      	mov	fp, r3
 80083c0:	3308      	adds	r3, #8
 80083c2:	2f00      	cmp	r7, #0
 80083c4:	d0f9      	beq.n	80083ba <__sfvwrite_r+0x256>
 80083c6:	463a      	mov	r2, r7
 80083c8:	210a      	movs	r1, #10
 80083ca:	4630      	mov	r0, r6
 80083cc:	f7f8 fa08 	bl	80007e0 <memchr>
 80083d0:	b338      	cbz	r0, 8008422 <__sfvwrite_r+0x2be>
 80083d2:	3001      	adds	r0, #1
 80083d4:	eba0 0906 	sub.w	r9, r0, r6
 80083d8:	e783      	b.n	80082e2 <__sfvwrite_r+0x17e>
 80083da:	462f      	mov	r7, r5
 80083dc:	46ab      	mov	fp, r5
 80083de:	e757      	b.n	8008290 <__sfvwrite_r+0x12c>
 80083e0:	4631      	mov	r1, r6
 80083e2:	462a      	mov	r2, r5
 80083e4:	f000 f888 	bl	80084f8 <memmove>
 80083e8:	6823      	ldr	r3, [r4, #0]
 80083ea:	442b      	add	r3, r5
 80083ec:	6023      	str	r3, [r4, #0]
 80083ee:	4621      	mov	r1, r4
 80083f0:	4650      	mov	r0, sl
 80083f2:	f7fe fb97 	bl	8006b24 <_fflush_r>
 80083f6:	2800      	cmp	r0, #0
 80083f8:	d08b      	beq.n	8008312 <__sfvwrite_r+0x1ae>
 80083fa:	e7a3      	b.n	8008344 <__sfvwrite_r+0x1e0>
 80083fc:	4650      	mov	r0, sl
 80083fe:	f000 f8f5 	bl	80085ec <_realloc_r>
 8008402:	4603      	mov	r3, r0
 8008404:	2800      	cmp	r0, #0
 8008406:	f47f af39 	bne.w	800827c <__sfvwrite_r+0x118>
 800840a:	6921      	ldr	r1, [r4, #16]
 800840c:	4650      	mov	r0, sl
 800840e:	f7fe fc87 	bl	8006d20 <_free_r>
 8008412:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008416:	220c      	movs	r2, #12
 8008418:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800841c:	f8ca 2000 	str.w	r2, [sl]
 8008420:	e792      	b.n	8008348 <__sfvwrite_r+0x1e4>
 8008422:	f107 0901 	add.w	r9, r7, #1
 8008426:	e75c      	b.n	80082e2 <__sfvwrite_r+0x17e>
 8008428:	461a      	mov	r2, r3
 800842a:	4631      	mov	r1, r6
 800842c:	9301      	str	r3, [sp, #4]
 800842e:	f000 f863 	bl	80084f8 <memmove>
 8008432:	9b01      	ldr	r3, [sp, #4]
 8008434:	68a1      	ldr	r1, [r4, #8]
 8008436:	6822      	ldr	r2, [r4, #0]
 8008438:	1ac9      	subs	r1, r1, r3
 800843a:	441a      	add	r2, r3
 800843c:	60a1      	str	r1, [r4, #8]
 800843e:	6022      	str	r2, [r4, #0]
 8008440:	461d      	mov	r5, r3
 8008442:	e766      	b.n	8008312 <__sfvwrite_r+0x1ae>
 8008444:	230c      	movs	r3, #12
 8008446:	f8ca 3000 	str.w	r3, [sl]
 800844a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800844e:	e77b      	b.n	8008348 <__sfvwrite_r+0x1e4>
 8008450:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008454:	e76b      	b.n	800832e <__sfvwrite_r+0x1ca>
 8008456:	bf00      	nop
 8008458:	7ffffffe 	.word	0x7ffffffe
 800845c:	7ffffc00 	.word	0x7ffffc00

08008460 <_isatty_r>:
 8008460:	b538      	push	{r3, r4, r5, lr}
 8008462:	4c07      	ldr	r4, [pc, #28]	; (8008480 <_isatty_r+0x20>)
 8008464:	2300      	movs	r3, #0
 8008466:	4605      	mov	r5, r0
 8008468:	4608      	mov	r0, r1
 800846a:	6023      	str	r3, [r4, #0]
 800846c:	f7fb fc18 	bl	8003ca0 <_isatty>
 8008470:	1c43      	adds	r3, r0, #1
 8008472:	d000      	beq.n	8008476 <_isatty_r+0x16>
 8008474:	bd38      	pop	{r3, r4, r5, pc}
 8008476:	6823      	ldr	r3, [r4, #0]
 8008478:	2b00      	cmp	r3, #0
 800847a:	d0fb      	beq.n	8008474 <_isatty_r+0x14>
 800847c:	602b      	str	r3, [r5, #0]
 800847e:	bd38      	pop	{r3, r4, r5, pc}
 8008480:	20004858 	.word	0x20004858

08008484 <__locale_mb_cur_max>:
 8008484:	4b04      	ldr	r3, [pc, #16]	; (8008498 <__locale_mb_cur_max+0x14>)
 8008486:	4a05      	ldr	r2, [pc, #20]	; (800849c <__locale_mb_cur_max+0x18>)
 8008488:	681b      	ldr	r3, [r3, #0]
 800848a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800848c:	2b00      	cmp	r3, #0
 800848e:	bf08      	it	eq
 8008490:	4613      	moveq	r3, r2
 8008492:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8008496:	4770      	bx	lr
 8008498:	2000001c 	.word	0x2000001c
 800849c:	2000085c 	.word	0x2000085c

080084a0 <_lseek_r>:
 80084a0:	b570      	push	{r4, r5, r6, lr}
 80084a2:	460d      	mov	r5, r1
 80084a4:	4c08      	ldr	r4, [pc, #32]	; (80084c8 <_lseek_r+0x28>)
 80084a6:	4611      	mov	r1, r2
 80084a8:	4606      	mov	r6, r0
 80084aa:	461a      	mov	r2, r3
 80084ac:	4628      	mov	r0, r5
 80084ae:	2300      	movs	r3, #0
 80084b0:	6023      	str	r3, [r4, #0]
 80084b2:	f7fb fbfc 	bl	8003cae <_lseek>
 80084b6:	1c43      	adds	r3, r0, #1
 80084b8:	d000      	beq.n	80084bc <_lseek_r+0x1c>
 80084ba:	bd70      	pop	{r4, r5, r6, pc}
 80084bc:	6823      	ldr	r3, [r4, #0]
 80084be:	2b00      	cmp	r3, #0
 80084c0:	d0fb      	beq.n	80084ba <_lseek_r+0x1a>
 80084c2:	6033      	str	r3, [r6, #0]
 80084c4:	bd70      	pop	{r4, r5, r6, pc}
 80084c6:	bf00      	nop
 80084c8:	20004858 	.word	0x20004858

080084cc <__ascii_mbtowc>:
 80084cc:	b082      	sub	sp, #8
 80084ce:	b149      	cbz	r1, 80084e4 <__ascii_mbtowc+0x18>
 80084d0:	b15a      	cbz	r2, 80084ea <__ascii_mbtowc+0x1e>
 80084d2:	b16b      	cbz	r3, 80084f0 <__ascii_mbtowc+0x24>
 80084d4:	7813      	ldrb	r3, [r2, #0]
 80084d6:	600b      	str	r3, [r1, #0]
 80084d8:	7812      	ldrb	r2, [r2, #0]
 80084da:	1c10      	adds	r0, r2, #0
 80084dc:	bf18      	it	ne
 80084de:	2001      	movne	r0, #1
 80084e0:	b002      	add	sp, #8
 80084e2:	4770      	bx	lr
 80084e4:	a901      	add	r1, sp, #4
 80084e6:	2a00      	cmp	r2, #0
 80084e8:	d1f3      	bne.n	80084d2 <__ascii_mbtowc+0x6>
 80084ea:	4610      	mov	r0, r2
 80084ec:	b002      	add	sp, #8
 80084ee:	4770      	bx	lr
 80084f0:	f06f 0001 	mvn.w	r0, #1
 80084f4:	e7f4      	b.n	80084e0 <__ascii_mbtowc+0x14>
 80084f6:	bf00      	nop

080084f8 <memmove>:
 80084f8:	4288      	cmp	r0, r1
 80084fa:	b4f0      	push	{r4, r5, r6, r7}
 80084fc:	d90d      	bls.n	800851a <memmove+0x22>
 80084fe:	188b      	adds	r3, r1, r2
 8008500:	4283      	cmp	r3, r0
 8008502:	d90a      	bls.n	800851a <memmove+0x22>
 8008504:	1884      	adds	r4, r0, r2
 8008506:	b132      	cbz	r2, 8008516 <memmove+0x1e>
 8008508:	4622      	mov	r2, r4
 800850a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800850e:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8008512:	4299      	cmp	r1, r3
 8008514:	d1f9      	bne.n	800850a <memmove+0x12>
 8008516:	bcf0      	pop	{r4, r5, r6, r7}
 8008518:	4770      	bx	lr
 800851a:	2a0f      	cmp	r2, #15
 800851c:	d949      	bls.n	80085b2 <memmove+0xba>
 800851e:	ea40 0301 	orr.w	r3, r0, r1
 8008522:	079b      	lsls	r3, r3, #30
 8008524:	d147      	bne.n	80085b6 <memmove+0xbe>
 8008526:	f1a2 0310 	sub.w	r3, r2, #16
 800852a:	091b      	lsrs	r3, r3, #4
 800852c:	f101 0720 	add.w	r7, r1, #32
 8008530:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8008534:	f101 0410 	add.w	r4, r1, #16
 8008538:	f100 0510 	add.w	r5, r0, #16
 800853c:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8008540:	f845 6c10 	str.w	r6, [r5, #-16]
 8008544:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8008548:	f845 6c0c 	str.w	r6, [r5, #-12]
 800854c:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8008550:	f845 6c08 	str.w	r6, [r5, #-8]
 8008554:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8008558:	f845 6c04 	str.w	r6, [r5, #-4]
 800855c:	3410      	adds	r4, #16
 800855e:	42bc      	cmp	r4, r7
 8008560:	f105 0510 	add.w	r5, r5, #16
 8008564:	d1ea      	bne.n	800853c <memmove+0x44>
 8008566:	3301      	adds	r3, #1
 8008568:	f002 050f 	and.w	r5, r2, #15
 800856c:	011b      	lsls	r3, r3, #4
 800856e:	2d03      	cmp	r5, #3
 8008570:	4419      	add	r1, r3
 8008572:	4403      	add	r3, r0
 8008574:	d921      	bls.n	80085ba <memmove+0xc2>
 8008576:	1f1f      	subs	r7, r3, #4
 8008578:	460e      	mov	r6, r1
 800857a:	462c      	mov	r4, r5
 800857c:	3c04      	subs	r4, #4
 800857e:	f856 cb04 	ldr.w	ip, [r6], #4
 8008582:	f847 cf04 	str.w	ip, [r7, #4]!
 8008586:	2c03      	cmp	r4, #3
 8008588:	d8f8      	bhi.n	800857c <memmove+0x84>
 800858a:	1f2c      	subs	r4, r5, #4
 800858c:	f024 0403 	bic.w	r4, r4, #3
 8008590:	3404      	adds	r4, #4
 8008592:	4423      	add	r3, r4
 8008594:	4421      	add	r1, r4
 8008596:	f002 0203 	and.w	r2, r2, #3
 800859a:	2a00      	cmp	r2, #0
 800859c:	d0bb      	beq.n	8008516 <memmove+0x1e>
 800859e:	3b01      	subs	r3, #1
 80085a0:	440a      	add	r2, r1
 80085a2:	f811 4b01 	ldrb.w	r4, [r1], #1
 80085a6:	f803 4f01 	strb.w	r4, [r3, #1]!
 80085aa:	4291      	cmp	r1, r2
 80085ac:	d1f9      	bne.n	80085a2 <memmove+0xaa>
 80085ae:	bcf0      	pop	{r4, r5, r6, r7}
 80085b0:	4770      	bx	lr
 80085b2:	4603      	mov	r3, r0
 80085b4:	e7f1      	b.n	800859a <memmove+0xa2>
 80085b6:	4603      	mov	r3, r0
 80085b8:	e7f1      	b.n	800859e <memmove+0xa6>
 80085ba:	462a      	mov	r2, r5
 80085bc:	e7ed      	b.n	800859a <memmove+0xa2>
 80085be:	bf00      	nop

080085c0 <_read_r>:
 80085c0:	b570      	push	{r4, r5, r6, lr}
 80085c2:	460d      	mov	r5, r1
 80085c4:	4c08      	ldr	r4, [pc, #32]	; (80085e8 <_read_r+0x28>)
 80085c6:	4611      	mov	r1, r2
 80085c8:	4606      	mov	r6, r0
 80085ca:	461a      	mov	r2, r3
 80085cc:	4628      	mov	r0, r5
 80085ce:	2300      	movs	r3, #0
 80085d0:	6023      	str	r3, [r4, #0]
 80085d2:	f7fb fac6 	bl	8003b62 <_read>
 80085d6:	1c43      	adds	r3, r0, #1
 80085d8:	d000      	beq.n	80085dc <_read_r+0x1c>
 80085da:	bd70      	pop	{r4, r5, r6, pc}
 80085dc:	6823      	ldr	r3, [r4, #0]
 80085de:	2b00      	cmp	r3, #0
 80085e0:	d0fb      	beq.n	80085da <_read_r+0x1a>
 80085e2:	6033      	str	r3, [r6, #0]
 80085e4:	bd70      	pop	{r4, r5, r6, pc}
 80085e6:	bf00      	nop
 80085e8:	20004858 	.word	0x20004858

080085ec <_realloc_r>:
 80085ec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80085f0:	4692      	mov	sl, r2
 80085f2:	b083      	sub	sp, #12
 80085f4:	2900      	cmp	r1, #0
 80085f6:	f000 80a1 	beq.w	800873c <_realloc_r+0x150>
 80085fa:	460d      	mov	r5, r1
 80085fc:	4680      	mov	r8, r0
 80085fe:	f10a 040b 	add.w	r4, sl, #11
 8008602:	f7fe ffdd 	bl	80075c0 <__malloc_lock>
 8008606:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800860a:	2c16      	cmp	r4, #22
 800860c:	f022 0603 	bic.w	r6, r2, #3
 8008610:	f1a5 0708 	sub.w	r7, r5, #8
 8008614:	d83e      	bhi.n	8008694 <_realloc_r+0xa8>
 8008616:	2410      	movs	r4, #16
 8008618:	4621      	mov	r1, r4
 800861a:	45a2      	cmp	sl, r4
 800861c:	d83f      	bhi.n	800869e <_realloc_r+0xb2>
 800861e:	428e      	cmp	r6, r1
 8008620:	eb07 0906 	add.w	r9, r7, r6
 8008624:	da74      	bge.n	8008710 <_realloc_r+0x124>
 8008626:	4bc7      	ldr	r3, [pc, #796]	; (8008944 <_realloc_r+0x358>)
 8008628:	6898      	ldr	r0, [r3, #8]
 800862a:	4548      	cmp	r0, r9
 800862c:	f000 80aa 	beq.w	8008784 <_realloc_r+0x198>
 8008630:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8008634:	f020 0301 	bic.w	r3, r0, #1
 8008638:	444b      	add	r3, r9
 800863a:	685b      	ldr	r3, [r3, #4]
 800863c:	07db      	lsls	r3, r3, #31
 800863e:	f140 8083 	bpl.w	8008748 <_realloc_r+0x15c>
 8008642:	07d2      	lsls	r2, r2, #31
 8008644:	d534      	bpl.n	80086b0 <_realloc_r+0xc4>
 8008646:	4651      	mov	r1, sl
 8008648:	4640      	mov	r0, r8
 800864a:	f7fe fd15 	bl	8007078 <_malloc_r>
 800864e:	4682      	mov	sl, r0
 8008650:	b1e0      	cbz	r0, 800868c <_realloc_r+0xa0>
 8008652:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8008656:	f023 0301 	bic.w	r3, r3, #1
 800865a:	443b      	add	r3, r7
 800865c:	f1a0 0208 	sub.w	r2, r0, #8
 8008660:	4293      	cmp	r3, r2
 8008662:	f000 80f9 	beq.w	8008858 <_realloc_r+0x26c>
 8008666:	1f32      	subs	r2, r6, #4
 8008668:	2a24      	cmp	r2, #36	; 0x24
 800866a:	f200 8107 	bhi.w	800887c <_realloc_r+0x290>
 800866e:	2a13      	cmp	r2, #19
 8008670:	6829      	ldr	r1, [r5, #0]
 8008672:	f200 80e6 	bhi.w	8008842 <_realloc_r+0x256>
 8008676:	4603      	mov	r3, r0
 8008678:	462a      	mov	r2, r5
 800867a:	6019      	str	r1, [r3, #0]
 800867c:	6851      	ldr	r1, [r2, #4]
 800867e:	6059      	str	r1, [r3, #4]
 8008680:	6892      	ldr	r2, [r2, #8]
 8008682:	609a      	str	r2, [r3, #8]
 8008684:	4629      	mov	r1, r5
 8008686:	4640      	mov	r0, r8
 8008688:	f7fe fb4a 	bl	8006d20 <_free_r>
 800868c:	4640      	mov	r0, r8
 800868e:	f7fe ff9d 	bl	80075cc <__malloc_unlock>
 8008692:	e04f      	b.n	8008734 <_realloc_r+0x148>
 8008694:	f024 0407 	bic.w	r4, r4, #7
 8008698:	2c00      	cmp	r4, #0
 800869a:	4621      	mov	r1, r4
 800869c:	dabd      	bge.n	800861a <_realloc_r+0x2e>
 800869e:	f04f 0a00 	mov.w	sl, #0
 80086a2:	230c      	movs	r3, #12
 80086a4:	4650      	mov	r0, sl
 80086a6:	f8c8 3000 	str.w	r3, [r8]
 80086aa:	b003      	add	sp, #12
 80086ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80086b0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80086b4:	eba7 0b03 	sub.w	fp, r7, r3
 80086b8:	f8db 2004 	ldr.w	r2, [fp, #4]
 80086bc:	f022 0203 	bic.w	r2, r2, #3
 80086c0:	18b3      	adds	r3, r6, r2
 80086c2:	428b      	cmp	r3, r1
 80086c4:	dbbf      	blt.n	8008646 <_realloc_r+0x5a>
 80086c6:	46da      	mov	sl, fp
 80086c8:	f8db 100c 	ldr.w	r1, [fp, #12]
 80086cc:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80086d0:	1f32      	subs	r2, r6, #4
 80086d2:	2a24      	cmp	r2, #36	; 0x24
 80086d4:	60c1      	str	r1, [r0, #12]
 80086d6:	eb0b 0903 	add.w	r9, fp, r3
 80086da:	6088      	str	r0, [r1, #8]
 80086dc:	f200 80c6 	bhi.w	800886c <_realloc_r+0x280>
 80086e0:	2a13      	cmp	r2, #19
 80086e2:	6829      	ldr	r1, [r5, #0]
 80086e4:	f240 80c0 	bls.w	8008868 <_realloc_r+0x27c>
 80086e8:	f8cb 1008 	str.w	r1, [fp, #8]
 80086ec:	6869      	ldr	r1, [r5, #4]
 80086ee:	f8cb 100c 	str.w	r1, [fp, #12]
 80086f2:	2a1b      	cmp	r2, #27
 80086f4:	68a9      	ldr	r1, [r5, #8]
 80086f6:	f200 80d8 	bhi.w	80088aa <_realloc_r+0x2be>
 80086fa:	f10b 0210 	add.w	r2, fp, #16
 80086fe:	3508      	adds	r5, #8
 8008700:	6011      	str	r1, [r2, #0]
 8008702:	6869      	ldr	r1, [r5, #4]
 8008704:	6051      	str	r1, [r2, #4]
 8008706:	68a9      	ldr	r1, [r5, #8]
 8008708:	6091      	str	r1, [r2, #8]
 800870a:	461e      	mov	r6, r3
 800870c:	465f      	mov	r7, fp
 800870e:	4655      	mov	r5, sl
 8008710:	687b      	ldr	r3, [r7, #4]
 8008712:	1b32      	subs	r2, r6, r4
 8008714:	2a0f      	cmp	r2, #15
 8008716:	f003 0301 	and.w	r3, r3, #1
 800871a:	d822      	bhi.n	8008762 <_realloc_r+0x176>
 800871c:	4333      	orrs	r3, r6
 800871e:	607b      	str	r3, [r7, #4]
 8008720:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8008724:	f043 0301 	orr.w	r3, r3, #1
 8008728:	f8c9 3004 	str.w	r3, [r9, #4]
 800872c:	4640      	mov	r0, r8
 800872e:	f7fe ff4d 	bl	80075cc <__malloc_unlock>
 8008732:	46aa      	mov	sl, r5
 8008734:	4650      	mov	r0, sl
 8008736:	b003      	add	sp, #12
 8008738:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800873c:	4611      	mov	r1, r2
 800873e:	b003      	add	sp, #12
 8008740:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008744:	f7fe bc98 	b.w	8007078 <_malloc_r>
 8008748:	f020 0003 	bic.w	r0, r0, #3
 800874c:	1833      	adds	r3, r6, r0
 800874e:	428b      	cmp	r3, r1
 8008750:	db61      	blt.n	8008816 <_realloc_r+0x22a>
 8008752:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8008756:	461e      	mov	r6, r3
 8008758:	60ca      	str	r2, [r1, #12]
 800875a:	eb07 0903 	add.w	r9, r7, r3
 800875e:	6091      	str	r1, [r2, #8]
 8008760:	e7d6      	b.n	8008710 <_realloc_r+0x124>
 8008762:	1939      	adds	r1, r7, r4
 8008764:	4323      	orrs	r3, r4
 8008766:	f042 0201 	orr.w	r2, r2, #1
 800876a:	607b      	str	r3, [r7, #4]
 800876c:	604a      	str	r2, [r1, #4]
 800876e:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8008772:	f043 0301 	orr.w	r3, r3, #1
 8008776:	3108      	adds	r1, #8
 8008778:	f8c9 3004 	str.w	r3, [r9, #4]
 800877c:	4640      	mov	r0, r8
 800877e:	f7fe facf 	bl	8006d20 <_free_r>
 8008782:	e7d3      	b.n	800872c <_realloc_r+0x140>
 8008784:	6840      	ldr	r0, [r0, #4]
 8008786:	f020 0903 	bic.w	r9, r0, #3
 800878a:	44b1      	add	r9, r6
 800878c:	f104 0010 	add.w	r0, r4, #16
 8008790:	4581      	cmp	r9, r0
 8008792:	da77      	bge.n	8008884 <_realloc_r+0x298>
 8008794:	07d2      	lsls	r2, r2, #31
 8008796:	f53f af56 	bmi.w	8008646 <_realloc_r+0x5a>
 800879a:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800879e:	eba7 0b02 	sub.w	fp, r7, r2
 80087a2:	f8db 2004 	ldr.w	r2, [fp, #4]
 80087a6:	f022 0203 	bic.w	r2, r2, #3
 80087aa:	4491      	add	r9, r2
 80087ac:	4548      	cmp	r0, r9
 80087ae:	dc87      	bgt.n	80086c0 <_realloc_r+0xd4>
 80087b0:	46da      	mov	sl, fp
 80087b2:	f8db 100c 	ldr.w	r1, [fp, #12]
 80087b6:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80087ba:	1f32      	subs	r2, r6, #4
 80087bc:	2a24      	cmp	r2, #36	; 0x24
 80087be:	60c1      	str	r1, [r0, #12]
 80087c0:	6088      	str	r0, [r1, #8]
 80087c2:	f200 80a1 	bhi.w	8008908 <_realloc_r+0x31c>
 80087c6:	2a13      	cmp	r2, #19
 80087c8:	6829      	ldr	r1, [r5, #0]
 80087ca:	f240 809b 	bls.w	8008904 <_realloc_r+0x318>
 80087ce:	f8cb 1008 	str.w	r1, [fp, #8]
 80087d2:	6869      	ldr	r1, [r5, #4]
 80087d4:	f8cb 100c 	str.w	r1, [fp, #12]
 80087d8:	2a1b      	cmp	r2, #27
 80087da:	68a9      	ldr	r1, [r5, #8]
 80087dc:	f200 809b 	bhi.w	8008916 <_realloc_r+0x32a>
 80087e0:	f10b 0210 	add.w	r2, fp, #16
 80087e4:	3508      	adds	r5, #8
 80087e6:	6011      	str	r1, [r2, #0]
 80087e8:	6869      	ldr	r1, [r5, #4]
 80087ea:	6051      	str	r1, [r2, #4]
 80087ec:	68a9      	ldr	r1, [r5, #8]
 80087ee:	6091      	str	r1, [r2, #8]
 80087f0:	eb0b 0104 	add.w	r1, fp, r4
 80087f4:	eba9 0204 	sub.w	r2, r9, r4
 80087f8:	f042 0201 	orr.w	r2, r2, #1
 80087fc:	6099      	str	r1, [r3, #8]
 80087fe:	604a      	str	r2, [r1, #4]
 8008800:	f8db 3004 	ldr.w	r3, [fp, #4]
 8008804:	f003 0301 	and.w	r3, r3, #1
 8008808:	431c      	orrs	r4, r3
 800880a:	4640      	mov	r0, r8
 800880c:	f8cb 4004 	str.w	r4, [fp, #4]
 8008810:	f7fe fedc 	bl	80075cc <__malloc_unlock>
 8008814:	e78e      	b.n	8008734 <_realloc_r+0x148>
 8008816:	07d3      	lsls	r3, r2, #31
 8008818:	f53f af15 	bmi.w	8008646 <_realloc_r+0x5a>
 800881c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8008820:	eba7 0b03 	sub.w	fp, r7, r3
 8008824:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008828:	f022 0203 	bic.w	r2, r2, #3
 800882c:	4410      	add	r0, r2
 800882e:	1983      	adds	r3, r0, r6
 8008830:	428b      	cmp	r3, r1
 8008832:	f6ff af45 	blt.w	80086c0 <_realloc_r+0xd4>
 8008836:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800883a:	46da      	mov	sl, fp
 800883c:	60ca      	str	r2, [r1, #12]
 800883e:	6091      	str	r1, [r2, #8]
 8008840:	e742      	b.n	80086c8 <_realloc_r+0xdc>
 8008842:	6001      	str	r1, [r0, #0]
 8008844:	686b      	ldr	r3, [r5, #4]
 8008846:	6043      	str	r3, [r0, #4]
 8008848:	2a1b      	cmp	r2, #27
 800884a:	d83a      	bhi.n	80088c2 <_realloc_r+0x2d6>
 800884c:	f105 0208 	add.w	r2, r5, #8
 8008850:	f100 0308 	add.w	r3, r0, #8
 8008854:	68a9      	ldr	r1, [r5, #8]
 8008856:	e710      	b.n	800867a <_realloc_r+0x8e>
 8008858:	f850 3c04 	ldr.w	r3, [r0, #-4]
 800885c:	f023 0303 	bic.w	r3, r3, #3
 8008860:	441e      	add	r6, r3
 8008862:	eb07 0906 	add.w	r9, r7, r6
 8008866:	e753      	b.n	8008710 <_realloc_r+0x124>
 8008868:	4652      	mov	r2, sl
 800886a:	e749      	b.n	8008700 <_realloc_r+0x114>
 800886c:	4629      	mov	r1, r5
 800886e:	4650      	mov	r0, sl
 8008870:	461e      	mov	r6, r3
 8008872:	465f      	mov	r7, fp
 8008874:	f7ff fe40 	bl	80084f8 <memmove>
 8008878:	4655      	mov	r5, sl
 800887a:	e749      	b.n	8008710 <_realloc_r+0x124>
 800887c:	4629      	mov	r1, r5
 800887e:	f7ff fe3b 	bl	80084f8 <memmove>
 8008882:	e6ff      	b.n	8008684 <_realloc_r+0x98>
 8008884:	4427      	add	r7, r4
 8008886:	eba9 0904 	sub.w	r9, r9, r4
 800888a:	f049 0201 	orr.w	r2, r9, #1
 800888e:	609f      	str	r7, [r3, #8]
 8008890:	607a      	str	r2, [r7, #4]
 8008892:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8008896:	f003 0301 	and.w	r3, r3, #1
 800889a:	431c      	orrs	r4, r3
 800889c:	4640      	mov	r0, r8
 800889e:	f845 4c04 	str.w	r4, [r5, #-4]
 80088a2:	f7fe fe93 	bl	80075cc <__malloc_unlock>
 80088a6:	46aa      	mov	sl, r5
 80088a8:	e744      	b.n	8008734 <_realloc_r+0x148>
 80088aa:	f8cb 1010 	str.w	r1, [fp, #16]
 80088ae:	68e9      	ldr	r1, [r5, #12]
 80088b0:	f8cb 1014 	str.w	r1, [fp, #20]
 80088b4:	2a24      	cmp	r2, #36	; 0x24
 80088b6:	d010      	beq.n	80088da <_realloc_r+0x2ee>
 80088b8:	6929      	ldr	r1, [r5, #16]
 80088ba:	f10b 0218 	add.w	r2, fp, #24
 80088be:	3510      	adds	r5, #16
 80088c0:	e71e      	b.n	8008700 <_realloc_r+0x114>
 80088c2:	68ab      	ldr	r3, [r5, #8]
 80088c4:	6083      	str	r3, [r0, #8]
 80088c6:	68eb      	ldr	r3, [r5, #12]
 80088c8:	60c3      	str	r3, [r0, #12]
 80088ca:	2a24      	cmp	r2, #36	; 0x24
 80088cc:	d010      	beq.n	80088f0 <_realloc_r+0x304>
 80088ce:	f105 0210 	add.w	r2, r5, #16
 80088d2:	f100 0310 	add.w	r3, r0, #16
 80088d6:	6929      	ldr	r1, [r5, #16]
 80088d8:	e6cf      	b.n	800867a <_realloc_r+0x8e>
 80088da:	692a      	ldr	r2, [r5, #16]
 80088dc:	f8cb 2018 	str.w	r2, [fp, #24]
 80088e0:	696a      	ldr	r2, [r5, #20]
 80088e2:	f8cb 201c 	str.w	r2, [fp, #28]
 80088e6:	69a9      	ldr	r1, [r5, #24]
 80088e8:	f10b 0220 	add.w	r2, fp, #32
 80088ec:	3518      	adds	r5, #24
 80088ee:	e707      	b.n	8008700 <_realloc_r+0x114>
 80088f0:	692b      	ldr	r3, [r5, #16]
 80088f2:	6103      	str	r3, [r0, #16]
 80088f4:	696b      	ldr	r3, [r5, #20]
 80088f6:	6143      	str	r3, [r0, #20]
 80088f8:	69a9      	ldr	r1, [r5, #24]
 80088fa:	f105 0218 	add.w	r2, r5, #24
 80088fe:	f100 0318 	add.w	r3, r0, #24
 8008902:	e6ba      	b.n	800867a <_realloc_r+0x8e>
 8008904:	4652      	mov	r2, sl
 8008906:	e76e      	b.n	80087e6 <_realloc_r+0x1fa>
 8008908:	4629      	mov	r1, r5
 800890a:	4650      	mov	r0, sl
 800890c:	9301      	str	r3, [sp, #4]
 800890e:	f7ff fdf3 	bl	80084f8 <memmove>
 8008912:	9b01      	ldr	r3, [sp, #4]
 8008914:	e76c      	b.n	80087f0 <_realloc_r+0x204>
 8008916:	f8cb 1010 	str.w	r1, [fp, #16]
 800891a:	68e9      	ldr	r1, [r5, #12]
 800891c:	f8cb 1014 	str.w	r1, [fp, #20]
 8008920:	2a24      	cmp	r2, #36	; 0x24
 8008922:	d004      	beq.n	800892e <_realloc_r+0x342>
 8008924:	6929      	ldr	r1, [r5, #16]
 8008926:	f10b 0218 	add.w	r2, fp, #24
 800892a:	3510      	adds	r5, #16
 800892c:	e75b      	b.n	80087e6 <_realloc_r+0x1fa>
 800892e:	692a      	ldr	r2, [r5, #16]
 8008930:	f8cb 2018 	str.w	r2, [fp, #24]
 8008934:	696a      	ldr	r2, [r5, #20]
 8008936:	f8cb 201c 	str.w	r2, [fp, #28]
 800893a:	69a9      	ldr	r1, [r5, #24]
 800893c:	f10b 0220 	add.w	r2, fp, #32
 8008940:	3518      	adds	r5, #24
 8008942:	e750      	b.n	80087e6 <_realloc_r+0x1fa>
 8008944:	2000044c 	.word	0x2000044c

08008948 <__swbuf_r>:
 8008948:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800894a:	460d      	mov	r5, r1
 800894c:	4614      	mov	r4, r2
 800894e:	4606      	mov	r6, r0
 8008950:	b110      	cbz	r0, 8008958 <__swbuf_r+0x10>
 8008952:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008954:	2b00      	cmp	r3, #0
 8008956:	d043      	beq.n	80089e0 <__swbuf_r+0x98>
 8008958:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800895c:	69a3      	ldr	r3, [r4, #24]
 800895e:	60a3      	str	r3, [r4, #8]
 8008960:	b291      	uxth	r1, r2
 8008962:	0708      	lsls	r0, r1, #28
 8008964:	d51b      	bpl.n	800899e <__swbuf_r+0x56>
 8008966:	6923      	ldr	r3, [r4, #16]
 8008968:	b1cb      	cbz	r3, 800899e <__swbuf_r+0x56>
 800896a:	b2ed      	uxtb	r5, r5
 800896c:	0489      	lsls	r1, r1, #18
 800896e:	462f      	mov	r7, r5
 8008970:	d522      	bpl.n	80089b8 <__swbuf_r+0x70>
 8008972:	6822      	ldr	r2, [r4, #0]
 8008974:	6961      	ldr	r1, [r4, #20]
 8008976:	1ad3      	subs	r3, r2, r3
 8008978:	4299      	cmp	r1, r3
 800897a:	dd29      	ble.n	80089d0 <__swbuf_r+0x88>
 800897c:	3301      	adds	r3, #1
 800897e:	68a1      	ldr	r1, [r4, #8]
 8008980:	1c50      	adds	r0, r2, #1
 8008982:	3901      	subs	r1, #1
 8008984:	60a1      	str	r1, [r4, #8]
 8008986:	6020      	str	r0, [r4, #0]
 8008988:	7015      	strb	r5, [r2, #0]
 800898a:	6962      	ldr	r2, [r4, #20]
 800898c:	429a      	cmp	r2, r3
 800898e:	d02a      	beq.n	80089e6 <__swbuf_r+0x9e>
 8008990:	89a3      	ldrh	r3, [r4, #12]
 8008992:	07db      	lsls	r3, r3, #31
 8008994:	d501      	bpl.n	800899a <__swbuf_r+0x52>
 8008996:	2d0a      	cmp	r5, #10
 8008998:	d025      	beq.n	80089e6 <__swbuf_r+0x9e>
 800899a:	4638      	mov	r0, r7
 800899c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800899e:	4621      	mov	r1, r4
 80089a0:	4630      	mov	r0, r6
 80089a2:	f7fc fffd 	bl	80059a0 <__swsetup_r>
 80089a6:	bb20      	cbnz	r0, 80089f2 <__swbuf_r+0xaa>
 80089a8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80089ac:	6923      	ldr	r3, [r4, #16]
 80089ae:	b291      	uxth	r1, r2
 80089b0:	b2ed      	uxtb	r5, r5
 80089b2:	0489      	lsls	r1, r1, #18
 80089b4:	462f      	mov	r7, r5
 80089b6:	d4dc      	bmi.n	8008972 <__swbuf_r+0x2a>
 80089b8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80089ba:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80089be:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80089c2:	81a2      	strh	r2, [r4, #12]
 80089c4:	6822      	ldr	r2, [r4, #0]
 80089c6:	6661      	str	r1, [r4, #100]	; 0x64
 80089c8:	6961      	ldr	r1, [r4, #20]
 80089ca:	1ad3      	subs	r3, r2, r3
 80089cc:	4299      	cmp	r1, r3
 80089ce:	dcd5      	bgt.n	800897c <__swbuf_r+0x34>
 80089d0:	4621      	mov	r1, r4
 80089d2:	4630      	mov	r0, r6
 80089d4:	f7fe f8a6 	bl	8006b24 <_fflush_r>
 80089d8:	b958      	cbnz	r0, 80089f2 <__swbuf_r+0xaa>
 80089da:	6822      	ldr	r2, [r4, #0]
 80089dc:	2301      	movs	r3, #1
 80089de:	e7ce      	b.n	800897e <__swbuf_r+0x36>
 80089e0:	f7fe f8fc 	bl	8006bdc <__sinit>
 80089e4:	e7b8      	b.n	8008958 <__swbuf_r+0x10>
 80089e6:	4621      	mov	r1, r4
 80089e8:	4630      	mov	r0, r6
 80089ea:	f7fe f89b 	bl	8006b24 <_fflush_r>
 80089ee:	2800      	cmp	r0, #0
 80089f0:	d0d3      	beq.n	800899a <__swbuf_r+0x52>
 80089f2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80089f6:	e7d0      	b.n	800899a <__swbuf_r+0x52>

080089f8 <_wcrtomb_r>:
 80089f8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80089fa:	4c11      	ldr	r4, [pc, #68]	; (8008a40 <_wcrtomb_r+0x48>)
 80089fc:	6824      	ldr	r4, [r4, #0]
 80089fe:	b085      	sub	sp, #20
 8008a00:	4606      	mov	r6, r0
 8008a02:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8008a04:	461f      	mov	r7, r3
 8008a06:	b151      	cbz	r1, 8008a1e <_wcrtomb_r+0x26>
 8008a08:	4d0e      	ldr	r5, [pc, #56]	; (8008a44 <_wcrtomb_r+0x4c>)
 8008a0a:	2c00      	cmp	r4, #0
 8008a0c:	bf08      	it	eq
 8008a0e:	462c      	moveq	r4, r5
 8008a10:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8008a14:	47a0      	blx	r4
 8008a16:	1c43      	adds	r3, r0, #1
 8008a18:	d00c      	beq.n	8008a34 <_wcrtomb_r+0x3c>
 8008a1a:	b005      	add	sp, #20
 8008a1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008a1e:	4a09      	ldr	r2, [pc, #36]	; (8008a44 <_wcrtomb_r+0x4c>)
 8008a20:	2c00      	cmp	r4, #0
 8008a22:	bf08      	it	eq
 8008a24:	4614      	moveq	r4, r2
 8008a26:	460a      	mov	r2, r1
 8008a28:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8008a2c:	a901      	add	r1, sp, #4
 8008a2e:	47a0      	blx	r4
 8008a30:	1c43      	adds	r3, r0, #1
 8008a32:	d1f2      	bne.n	8008a1a <_wcrtomb_r+0x22>
 8008a34:	2200      	movs	r2, #0
 8008a36:	238a      	movs	r3, #138	; 0x8a
 8008a38:	603a      	str	r2, [r7, #0]
 8008a3a:	6033      	str	r3, [r6, #0]
 8008a3c:	b005      	add	sp, #20
 8008a3e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008a40:	2000001c 	.word	0x2000001c
 8008a44:	2000085c 	.word	0x2000085c

08008a48 <__ascii_wctomb>:
 8008a48:	b121      	cbz	r1, 8008a54 <__ascii_wctomb+0xc>
 8008a4a:	2aff      	cmp	r2, #255	; 0xff
 8008a4c:	d804      	bhi.n	8008a58 <__ascii_wctomb+0x10>
 8008a4e:	700a      	strb	r2, [r1, #0]
 8008a50:	2001      	movs	r0, #1
 8008a52:	4770      	bx	lr
 8008a54:	4608      	mov	r0, r1
 8008a56:	4770      	bx	lr
 8008a58:	238a      	movs	r3, #138	; 0x8a
 8008a5a:	6003      	str	r3, [r0, #0]
 8008a5c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008a60:	4770      	bx	lr
 8008a62:	bf00      	nop

08008a64 <_init>:
 8008a64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008a66:	bf00      	nop
 8008a68:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8008a6a:	bc08      	pop	{r3}
 8008a6c:	469e      	mov	lr, r3
 8008a6e:	4770      	bx	lr

08008a70 <_fini>:
 8008a70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008a72:	bf00      	nop
 8008a74:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8008a76:	bc08      	pop	{r3}
 8008a78:	469e      	mov	lr, r3
 8008a7a:	4770      	bx	lr
 8008a7c:	0000      	movs	r0, r0
	...
