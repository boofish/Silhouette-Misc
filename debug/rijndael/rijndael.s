
rijndael.elf:     file format elf32-littlearm


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
 80001d8:	200009d0 	.word	0x200009d0
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08008f44 	.word	0x08008f44

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	200009d4 	.word	0x200009d4
 80001fc:	08008f44 	.word	0x08008f44

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

080011a8 <HAL_Init>:
 80011a8:	b580      	push	{r7, lr}
 80011aa:	466f      	mov	r7, sp
 80011ac:	2003      	movs	r0, #3
 80011ae:	f000 f819 	bl	80011e4 <HAL_NVIC_SetPriorityGrouping>
 80011b2:	200f      	movs	r0, #15
 80011b4:	f000 fb84 	bl	80018c0 <HAL_InitTick>
 80011b8:	2800      	cmp	r0, #0
 80011ba:	bf1c      	itt	ne
 80011bc:	2001      	movne	r0, #1
 80011be:	bd80      	popne	{r7, pc}
 80011c0:	f000 f94b 	bl	800145a <HAL_MspInit>
 80011c4:	2000      	movs	r0, #0
 80011c6:	bd80      	pop	{r7, pc}

080011c8 <HAL_IncTick>:
 80011c8:	f640 20b8 	movw	r0, #2744	; 0xab8
 80011cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d0:	6801      	ldr	r1, [r0, #0]
 80011d2:	3101      	adds	r1, #1
 80011d4:	6001      	str	r1, [r0, #0]
 80011d6:	4770      	bx	lr

080011d8 <HAL_GetTick>:
 80011d8:	f640 20b8 	movw	r0, #2744	; 0xab8
 80011dc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011e0:	6800      	ldr	r0, [r0, #0]
 80011e2:	4770      	bx	lr

080011e4 <HAL_NVIC_SetPriorityGrouping>:
 80011e4:	f64e 510c 	movw	r1, #60684	; 0xed0c
 80011e8:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80011ec:	f2ce 0100 	movt	r1, #57344	; 0xe000
 80011f0:	680a      	ldr	r2, [r1, #0]
 80011f2:	401a      	ands	r2, r3
 80011f4:	f360 220a 	bfi	r2, r0, #8, #3
 80011f8:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 80011fc:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001200:	6008      	str	r0, [r1, #0]
 8001202:	4770      	bx	lr

08001204 <HAL_NVIC_SetPriority>:
 8001204:	b580      	push	{r7, lr}
 8001206:	466f      	mov	r7, sp
 8001208:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800120c:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001210:	2800      	cmp	r0, #0
 8001212:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001216:	f000 030f 	and.w	r3, r0, #15
 800121a:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 800121e:	f1a3 0304 	sub.w	r3, r3, #4
 8001222:	4473      	add	r3, lr
 8001224:	bfb8      	it	lt
 8001226:	f103 0c0c 	addlt.w	ip, r3, #12
 800122a:	f8de 0000 	ldr.w	r0, [lr]
 800122e:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001232:	f100 0e04 	add.w	lr, r0, #4
 8001236:	1ec3      	subs	r3, r0, #3
 8001238:	f080 0007 	eor.w	r0, r0, #7
 800123c:	f1be 0f07 	cmp.w	lr, #7
 8001240:	f04f 0e01 	mov.w	lr, #1
 8001244:	bf38      	it	cc
 8001246:	2300      	movcc	r3, #0
 8001248:	2804      	cmp	r0, #4
 800124a:	bf28      	it	cs
 800124c:	2004      	movcs	r0, #4
 800124e:	fa0e f000 	lsl.w	r0, lr, r0
 8001252:	3801      	subs	r0, #1
 8001254:	4008      	ands	r0, r1
 8001256:	fa0e f103 	lsl.w	r1, lr, r3
 800125a:	310f      	adds	r1, #15
 800125c:	4098      	lsls	r0, r3
 800125e:	4011      	ands	r1, r2
 8001260:	4308      	orrs	r0, r1
 8001262:	0100      	lsls	r0, r0, #4
 8001264:	f88c 0000 	strb.w	r0, [ip]
 8001268:	bd80      	pop	{r7, pc}

0800126a <HAL_NVIC_EnableIRQ>:
 800126a:	f000 011f 	and.w	r1, r0, #31
 800126e:	2201      	movs	r2, #1
 8001270:	0940      	lsrs	r0, r0, #5
 8001272:	fa02 f101 	lsl.w	r1, r2, r1
 8001276:	f24e 1200 	movw	r2, #57600	; 0xe100
 800127a:	f2ce 0200 	movt	r2, #57344	; 0xe000
 800127e:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 8001282:	4770      	bx	lr

08001284 <HAL_SYSTICK_IRQHandler>:
 8001284:	f000 b800 	b.w	8001288 <HAL_SYSTICK_Callback>

08001288 <HAL_SYSTICK_Callback>:
 8001288:	4770      	bx	lr

0800128a <HAL_GPIO_Init>:
 800128a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800128c:	af03      	add	r7, sp, #12
 800128e:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001292:	b082      	sub	sp, #8
 8001294:	680e      	ldr	r6, [r1, #0]
 8001296:	2e00      	cmp	r6, #0
 8001298:	f000 80db 	beq.w	8001452 <HAL_GPIO_Init+0x1c8>
 800129c:	f641 0200 	movw	r2, #6144	; 0x1800
 80012a0:	2507      	movs	r5, #7
 80012a2:	f04f 0801 	mov.w	r8, #1
 80012a6:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80012aa:	4290      	cmp	r0, r2
 80012ac:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80012b0:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80012b4:	bf08      	it	eq
 80012b6:	2506      	moveq	r5, #6
 80012b8:	2b06      	cmp	r3, #6
 80012ba:	bf38      	it	cc
 80012bc:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 80012c0:	2200      	movs	r2, #0
 80012c2:	9500      	str	r5, [sp, #0]
 80012c4:	2500      	movs	r5, #0
 80012c6:	f1a8 0a01 	sub.w	sl, r8, #1
 80012ca:	2301      	movs	r3, #1
 80012cc:	fa03 fb0a 	lsl.w	fp, r3, sl
 80012d0:	ea16 090b 	ands.w	r9, r6, fp
 80012d4:	f000 80b4 	beq.w	8001440 <HAL_GPIO_Init+0x1b6>
 80012d8:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012dc:	f04e 0610 	orr.w	r6, lr, #16
 80012e0:	2e12      	cmp	r6, #18
 80012e2:	d115      	bne.n	8001310 <HAL_GPIO_Init+0x86>
 80012e4:	f005 061c 	and.w	r6, r5, #28
 80012e8:	230f      	movs	r3, #15
 80012ea:	fa03 fc06 	lsl.w	ip, r3, r6
 80012ee:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 80012f2:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 80012f6:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 80012fa:	4404      	add	r4, r0
 80012fc:	6a23      	ldr	r3, [r4, #32]
 80012fe:	ea23 0c0c 	bic.w	ip, r3, ip
 8001302:	690b      	ldr	r3, [r1, #16]
 8001304:	40b3      	lsls	r3, r6
 8001306:	ea43 030c 	orr.w	r3, r3, ip
 800130a:	6223      	str	r3, [r4, #32]
 800130c:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001310:	6806      	ldr	r6, [r0, #0]
 8001312:	2403      	movs	r4, #3
 8001314:	f00e 0c03 	and.w	ip, lr, #3
 8001318:	f1be 0f12 	cmp.w	lr, #18
 800131c:	fa04 f402 	lsl.w	r4, r4, r2
 8001320:	fa0c f302 	lsl.w	r3, ip, r2
 8001324:	ea26 0604 	bic.w	r6, r6, r4
 8001328:	ea43 0306 	orr.w	r3, r3, r6
 800132c:	ea6f 0604 	mvn.w	r6, r4
 8001330:	6003      	str	r3, [r0, #0]
 8001332:	d816      	bhi.n	8001362 <HAL_GPIO_Init+0xd8>
 8001334:	2301      	movs	r3, #1
 8001336:	fa03 f30e 	lsl.w	r3, r3, lr
 800133a:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 800133e:	bf1f      	itttt	ne
 8001340:	6883      	ldrne	r3, [r0, #8]
 8001342:	4033      	andne	r3, r6
 8001344:	68cc      	ldrne	r4, [r1, #12]
 8001346:	4094      	lslne	r4, r2
 8001348:	bf1f      	itttt	ne
 800134a:	4323      	orrne	r3, r4
 800134c:	6083      	strne	r3, [r0, #8]
 800134e:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001352:	fa03 f30a 	lslne.w	r3, r3, sl
 8001356:	bf1f      	itttt	ne
 8001358:	6844      	ldrne	r4, [r0, #4]
 800135a:	ea24 040b 	bicne.w	r4, r4, fp
 800135e:	4323      	orrne	r3, r4
 8001360:	6043      	strne	r3, [r0, #4]
 8001362:	f1bc 0f03 	cmp.w	ip, #3
 8001366:	d108      	bne.n	800137a <HAL_GPIO_Init+0xf0>
 8001368:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 800136c:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 800136e:	fa03 f30a 	lsl.w	r3, r3, sl
 8001372:	ea24 040b 	bic.w	r4, r4, fp
 8001376:	4323      	orrs	r3, r4
 8001378:	62c3      	str	r3, [r0, #44]	; 0x2c
 800137a:	68c3      	ldr	r3, [r0, #12]
 800137c:	4033      	ands	r3, r6
 800137e:	688e      	ldr	r6, [r1, #8]
 8001380:	4096      	lsls	r6, r2
 8001382:	4333      	orrs	r3, r6
 8001384:	60c3      	str	r3, [r0, #12]
 8001386:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 800138a:	d559      	bpl.n	8001440 <HAL_GPIO_Init+0x1b6>
 800138c:	f241 0360 	movw	r3, #4192	; 0x1060
 8001390:	f005 040c 	and.w	r4, r5, #12
 8001394:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001398:	461e      	mov	r6, r3
 800139a:	6833      	ldr	r3, [r6, #0]
 800139c:	f043 0301 	orr.w	r3, r3, #1
 80013a0:	6033      	str	r3, [r6, #0]
 80013a2:	6833      	ldr	r3, [r6, #0]
 80013a4:	f240 4600 	movw	r6, #1024	; 0x400
 80013a8:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80013ac:	46b6      	mov	lr, r6
 80013ae:	f003 0301 	and.w	r3, r3, #1
 80013b2:	9301      	str	r3, [sp, #4]
 80013b4:	f02a 0303 	bic.w	r3, sl, #3
 80013b8:	9e01      	ldr	r6, [sp, #4]
 80013ba:	4473      	add	r3, lr
 80013bc:	f64f 4608 	movw	r6, #64520	; 0xfc08
 80013c0:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 80013c4:	46b2      	mov	sl, r6
 80013c6:	260f      	movs	r6, #15
 80013c8:	f853 c00a 	ldr.w	ip, [r3, sl]
 80013cc:	40a6      	lsls	r6, r4
 80013ce:	ea2c 0c06 	bic.w	ip, ip, r6
 80013d2:	9e00      	ldr	r6, [sp, #0]
 80013d4:	fa06 f404 	lsl.w	r4, r6, r4
 80013d8:	ea4c 0604 	orr.w	r6, ip, r4
 80013dc:	f843 600a 	str.w	r6, [r3, sl]
 80013e0:	f8de 3000 	ldr.w	r3, [lr]
 80013e4:	684e      	ldr	r6, [r1, #4]
 80013e6:	ea23 0309 	bic.w	r3, r3, r9
 80013ea:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 80013ee:	bf18      	it	ne
 80013f0:	ea43 0309 	orrne.w	r3, r3, r9
 80013f4:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 80013f8:	f8ce 3000 	str.w	r3, [lr]
 80013fc:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001400:	ea23 0309 	bic.w	r3, r3, r9
 8001404:	bf18      	it	ne
 8001406:	ea43 0309 	orrne.w	r3, r3, r9
 800140a:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800140e:	f8ce 3004 	str.w	r3, [lr, #4]
 8001412:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001416:	ea23 0309 	bic.w	r3, r3, r9
 800141a:	bf18      	it	ne
 800141c:	ea43 0309 	orrne.w	r3, r3, r9
 8001420:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001424:	f8ce 3008 	str.w	r3, [lr, #8]
 8001428:	f240 430c 	movw	r3, #1036	; 0x40c
 800142c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001430:	461c      	mov	r4, r3
 8001432:	6823      	ldr	r3, [r4, #0]
 8001434:	ea23 0309 	bic.w	r3, r3, r9
 8001438:	bf18      	it	ne
 800143a:	ea43 0309 	orrne.w	r3, r3, r9
 800143e:	6023      	str	r3, [r4, #0]
 8001440:	680e      	ldr	r6, [r1, #0]
 8001442:	3202      	adds	r2, #2
 8001444:	3504      	adds	r5, #4
 8001446:	fa36 f308 	lsrs.w	r3, r6, r8
 800144a:	f108 0801 	add.w	r8, r8, #1
 800144e:	f47f af3a 	bne.w	80012c6 <HAL_GPIO_Init+0x3c>
 8001452:	b002      	add	sp, #8
 8001454:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001458:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800145a <HAL_MspInit>:
 800145a:	4770      	bx	lr

0800145c <HAL_RCC_GetSysClockFreq>:
 800145c:	b580      	push	{r7, lr}
 800145e:	466f      	mov	r7, sp
 8001460:	f241 010c 	movw	r1, #4108	; 0x100c
 8001464:	f241 2e00 	movw	lr, #4608	; 0x1200
 8001468:	f242 4c00 	movw	ip, #9216	; 0x2400
 800146c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001470:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 8001474:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 8001478:	f851 2c04 	ldr.w	r2, [r1, #-4]
 800147c:	6808      	ldr	r0, [r1, #0]
 800147e:	f012 030c 	ands.w	r3, r2, #12
 8001482:	d005      	beq.n	8001490 <HAL_RCC_GetSysClockFreq+0x34>
 8001484:	2b0c      	cmp	r3, #12
 8001486:	bf04      	itt	eq
 8001488:	f000 0003 	andeq.w	r0, r0, #3
 800148c:	2801      	cmpeq	r0, #1
 800148e:	d118      	bne.n	80014c2 <HAL_RCC_GetSysClockFreq+0x66>
 8001490:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001494:	f010 0f08 	tst.w	r0, #8
 8001498:	d103      	bne.n	80014a2 <HAL_RCC_GetSysClockFreq+0x46>
 800149a:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 800149e:	0a00      	lsrs	r0, r0, #8
 80014a0:	e002      	b.n	80014a8 <HAL_RCC_GetSysClockFreq+0x4c>
 80014a2:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014a6:	0900      	lsrs	r0, r0, #4
 80014a8:	f24a 52ec 	movw	r2, #42476	; 0xa5ec
 80014ac:	f000 000f 	and.w	r0, r0, #15
 80014b0:	2b00      	cmp	r3, #0
 80014b2:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014b6:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 80014ba:	4610      	mov	r0, r2
 80014bc:	bf18      	it	ne
 80014be:	2000      	movne	r0, #0
 80014c0:	e00b      	b.n	80014da <HAL_RCC_GetSysClockFreq+0x7e>
 80014c2:	f003 000f 	and.w	r0, r3, #15
 80014c6:	2804      	cmp	r0, #4
 80014c8:	bf04      	itt	eq
 80014ca:	4660      	moveq	r0, ip
 80014cc:	bd80      	popeq	{r7, pc}
 80014ce:	2808      	cmp	r0, #8
 80014d0:	bf04      	itt	eq
 80014d2:	4670      	moveq	r0, lr
 80014d4:	bd80      	popeq	{r7, pc}
 80014d6:	2000      	movs	r0, #0
 80014d8:	2200      	movs	r2, #0
 80014da:	2b0c      	cmp	r3, #12
 80014dc:	bf18      	it	ne
 80014de:	bd80      	popne	{r7, pc}
 80014e0:	6808      	ldr	r0, [r1, #0]
 80014e2:	f000 0303 	and.w	r3, r0, #3
 80014e6:	6808      	ldr	r0, [r1, #0]
 80014e8:	2b03      	cmp	r3, #3
 80014ea:	f3c0 1002 	ubfx	r0, r0, #4, #3
 80014ee:	f100 0001 	add.w	r0, r0, #1
 80014f2:	d003      	beq.n	80014fc <HAL_RCC_GetSysClockFreq+0xa0>
 80014f4:	2b02      	cmp	r3, #2
 80014f6:	46e6      	mov	lr, ip
 80014f8:	bf18      	it	ne
 80014fa:	4696      	movne	lr, r2
 80014fc:	680a      	ldr	r2, [r1, #0]
 80014fe:	fbbe f0f0 	udiv	r0, lr, r0
 8001502:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001506:	6809      	ldr	r1, [r1, #0]
 8001508:	4350      	muls	r0, r2
 800150a:	2202      	movs	r2, #2
 800150c:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001510:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001514:	fbb0 f0f1 	udiv	r0, r0, r1
 8001518:	bd80      	pop	{r7, pc}

0800151a <HAL_RCC_GetPCLK1Freq>:
 800151a:	f240 001c 	movw	r0, #28
 800151e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001522:	f24a 52e4 	movw	r2, #42468	; 0xa5e4
 8001526:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800152a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800152e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001532:	6800      	ldr	r0, [r0, #0]
 8001534:	6809      	ldr	r1, [r1, #0]
 8001536:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800153a:	5c51      	ldrb	r1, [r2, r1]
 800153c:	f001 011f 	and.w	r1, r1, #31
 8001540:	40c8      	lsrs	r0, r1
 8001542:	4770      	bx	lr

08001544 <HAL_RCC_GetPCLK2Freq>:
 8001544:	f240 001c 	movw	r0, #28
 8001548:	f241 0108 	movw	r1, #4104	; 0x1008
 800154c:	f24a 52e4 	movw	r2, #42468	; 0xa5e4
 8001550:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001554:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001558:	f6c0 0200 	movt	r2, #2048	; 0x800
 800155c:	6800      	ldr	r0, [r0, #0]
 800155e:	6809      	ldr	r1, [r1, #0]
 8001560:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 8001564:	5c51      	ldrb	r1, [r2, r1]
 8001566:	f001 011f 	and.w	r1, r1, #31
 800156a:	40c8      	lsrs	r0, r1
 800156c:	4770      	bx	lr

0800156e <HAL_RCC_GetClockConfig>:
 800156e:	220f      	movs	r2, #15
 8001570:	6002      	str	r2, [r0, #0]
 8001572:	f241 0208 	movw	r2, #4104	; 0x1008
 8001576:	f2c4 0202 	movt	r2, #16386	; 0x4002
 800157a:	6813      	ldr	r3, [r2, #0]
 800157c:	f003 0303 	and.w	r3, r3, #3
 8001580:	6043      	str	r3, [r0, #4]
 8001582:	6813      	ldr	r3, [r2, #0]
 8001584:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001588:	6083      	str	r3, [r0, #8]
 800158a:	6813      	ldr	r3, [r2, #0]
 800158c:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001590:	60c3      	str	r3, [r0, #12]
 8001592:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 8001596:	6812      	ldr	r2, [r2, #0]
 8001598:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 800159c:	6102      	str	r2, [r0, #16]
 800159e:	f242 0000 	movw	r0, #8192	; 0x2000
 80015a2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015a6:	6800      	ldr	r0, [r0, #0]
 80015a8:	f000 0007 	and.w	r0, r0, #7
 80015ac:	6008      	str	r0, [r1, #0]
 80015ae:	4770      	bx	lr

080015b0 <HAL_TIM_Base_Init>:
 80015b0:	b5d0      	push	{r4, r6, r7, lr}
 80015b2:	af02      	add	r7, sp, #8
 80015b4:	4604      	mov	r4, r0
 80015b6:	2c00      	cmp	r4, #0
 80015b8:	bf04      	itt	eq
 80015ba:	2001      	moveq	r0, #1
 80015bc:	bdd0      	popeq	{r4, r6, r7, pc}
 80015be:	6c20      	ldr	r0, [r4, #64]	; 0x40
 80015c0:	b920      	cbnz	r0, 80015cc <HAL_TIM_Base_Init+0x1c>
 80015c2:	2000      	movs	r0, #0
 80015c4:	63e0      	str	r0, [r4, #60]	; 0x3c
 80015c6:	4620      	mov	r0, r4
 80015c8:	f000 f892 	bl	80016f0 <HAL_TIM_Base_MspInit>
 80015cc:	2002      	movs	r0, #2
 80015ce:	f640 32ff 	movw	r2, #3071	; 0xbff
 80015d2:	6420      	str	r0, [r4, #64]	; 0x40
 80015d4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015d8:	6820      	ldr	r0, [r4, #0]
 80015da:	6801      	ldr	r1, [r0, #0]
 80015dc:	4290      	cmp	r0, r2
 80015de:	dc0f      	bgt.n	8001600 <HAL_TIM_Base_Init+0x50>
 80015e0:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015e4:	bf1e      	ittt	ne
 80015e6:	f240 4200 	movwne	r2, #1024	; 0x400
 80015ea:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 80015ee:	4290      	cmpne	r0, r2
 80015f0:	d018      	beq.n	8001624 <HAL_TIM_Base_Init+0x74>
 80015f2:	f640 0200 	movw	r2, #2048	; 0x800
 80015f6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015fa:	4290      	cmp	r0, r2
 80015fc:	d012      	beq.n	8001624 <HAL_TIM_Base_Init+0x74>
 80015fe:	e015      	b.n	800162c <HAL_TIM_Base_Init+0x7c>
 8001600:	f640 4200 	movw	r2, #3072	; 0xc00
 8001604:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001608:	4290      	cmp	r0, r2
 800160a:	bf1e      	ittt	ne
 800160c:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001610:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001614:	4290      	cmpne	r0, r2
 8001616:	d005      	beq.n	8001624 <HAL_TIM_Base_Init+0x74>
 8001618:	f642 4200 	movw	r2, #11264	; 0x2c00
 800161c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001620:	4290      	cmp	r0, r2
 8001622:	d103      	bne.n	800162c <HAL_TIM_Base_Init+0x7c>
 8001624:	68a2      	ldr	r2, [r4, #8]
 8001626:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 800162a:	4311      	orrs	r1, r2
 800162c:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001630:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001634:	4290      	cmp	r0, r2
 8001636:	dd14      	ble.n	8001662 <HAL_TIM_Base_Init+0xb2>
 8001638:	f643 72ff 	movw	r2, #16383	; 0x3fff
 800163c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001640:	4290      	cmp	r0, r2
 8001642:	dd1a      	ble.n	800167a <HAL_TIM_Base_Init+0xca>
 8001644:	f244 0200 	movw	r2, #16384	; 0x4000
 8001648:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800164c:	4290      	cmp	r0, r2
 800164e:	bf1e      	ittt	ne
 8001650:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001654:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001658:	4290      	cmpne	r0, r2
 800165a:	d027      	beq.n	80016ac <HAL_TIM_Base_Init+0xfc>
 800165c:	f244 4200 	movw	r2, #17408	; 0x4400
 8001660:	e013      	b.n	800168a <HAL_TIM_Base_Init+0xda>
 8001662:	f240 72ff 	movw	r2, #2047	; 0x7ff
 8001666:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800166a:	4290      	cmp	r0, r2
 800166c:	dc12      	bgt.n	8001694 <HAL_TIM_Base_Init+0xe4>
 800166e:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001672:	d01b      	beq.n	80016ac <HAL_TIM_Base_Init+0xfc>
 8001674:	f240 4200 	movw	r2, #1024	; 0x400
 8001678:	e014      	b.n	80016a4 <HAL_TIM_Base_Init+0xf4>
 800167a:	f642 4200 	movw	r2, #11264	; 0x2c00
 800167e:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001682:	4290      	cmp	r0, r2
 8001684:	d012      	beq.n	80016ac <HAL_TIM_Base_Init+0xfc>
 8001686:	f243 4200 	movw	r2, #13312	; 0x3400
 800168a:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800168e:	4290      	cmp	r0, r2
 8001690:	d00c      	beq.n	80016ac <HAL_TIM_Base_Init+0xfc>
 8001692:	e00f      	b.n	80016b4 <HAL_TIM_Base_Init+0x104>
 8001694:	f640 0200 	movw	r2, #2048	; 0x800
 8001698:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800169c:	4290      	cmp	r0, r2
 800169e:	d005      	beq.n	80016ac <HAL_TIM_Base_Init+0xfc>
 80016a0:	f640 4200 	movw	r2, #3072	; 0xc00
 80016a4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016a8:	4290      	cmp	r0, r2
 80016aa:	d103      	bne.n	80016b4 <HAL_TIM_Base_Init+0x104>
 80016ac:	6922      	ldr	r2, [r4, #16]
 80016ae:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80016b2:	4311      	orrs	r1, r2
 80016b4:	69a2      	ldr	r2, [r4, #24]
 80016b6:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 80016ba:	4311      	orrs	r1, r2
 80016bc:	6001      	str	r1, [r0, #0]
 80016be:	68e1      	ldr	r1, [r4, #12]
 80016c0:	62c1      	str	r1, [r0, #44]	; 0x2c
 80016c2:	6861      	ldr	r1, [r4, #4]
 80016c4:	6281      	str	r1, [r0, #40]	; 0x28
 80016c6:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 80016ca:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 80016ce:	ea4f 21b1 	mov.w	r1, r1, ror #10
 80016d2:	2907      	cmp	r1, #7
 80016d4:	d807      	bhi.n	80016e6 <HAL_TIM_Base_Init+0x136>
 80016d6:	2201      	movs	r2, #1
 80016d8:	fa02 f101 	lsl.w	r1, r2, r1
 80016dc:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 80016e0:	bf1c      	itt	ne
 80016e2:	6961      	ldrne	r1, [r4, #20]
 80016e4:	6301      	strne	r1, [r0, #48]	; 0x30
 80016e6:	2101      	movs	r1, #1
 80016e8:	6141      	str	r1, [r0, #20]
 80016ea:	2000      	movs	r0, #0
 80016ec:	6421      	str	r1, [r4, #64]	; 0x40
 80016ee:	bdd0      	pop	{r4, r6, r7, pc}

080016f0 <HAL_TIM_Base_MspInit>:
 80016f0:	4770      	bx	lr

080016f2 <HAL_TIM_Base_Start_IT>:
 80016f2:	6800      	ldr	r0, [r0, #0]
 80016f4:	68c1      	ldr	r1, [r0, #12]
 80016f6:	f041 0101 	orr.w	r1, r1, #1
 80016fa:	60c1      	str	r1, [r0, #12]
 80016fc:	2107      	movs	r1, #7
 80016fe:	6882      	ldr	r2, [r0, #8]
 8001700:	f2c0 0101 	movt	r1, #1
 8001704:	400a      	ands	r2, r1
 8001706:	2a06      	cmp	r2, #6
 8001708:	d008      	beq.n	800171c <HAL_TIM_Base_Start_IT+0x2a>
 800170a:	6882      	ldr	r2, [r0, #8]
 800170c:	4011      	ands	r1, r2
 800170e:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001712:	bf1e      	ittt	ne
 8001714:	6801      	ldrne	r1, [r0, #0]
 8001716:	f041 0101 	orrne.w	r1, r1, #1
 800171a:	6001      	strne	r1, [r0, #0]
 800171c:	2000      	movs	r0, #0
 800171e:	4770      	bx	lr

08001720 <HAL_TIM_IRQHandler>:
 8001720:	b5d0      	push	{r4, r6, r7, lr}
 8001722:	af02      	add	r7, sp, #8
 8001724:	4604      	mov	r4, r0
 8001726:	6820      	ldr	r0, [r4, #0]
 8001728:	6901      	ldr	r1, [r0, #16]
 800172a:	f011 0f02 	tst.w	r1, #2
 800172e:	bf1c      	itt	ne
 8001730:	68c1      	ldrne	r1, [r0, #12]
 8001732:	f011 0f02 	tstne.w	r1, #2
 8001736:	d015      	beq.n	8001764 <HAL_TIM_IRQHandler+0x44>
 8001738:	f06f 0102 	mvn.w	r1, #2
 800173c:	6101      	str	r1, [r0, #16]
 800173e:	2101      	movs	r1, #1
 8001740:	61e1      	str	r1, [r4, #28]
 8001742:	6980      	ldr	r0, [r0, #24]
 8001744:	f010 0f03 	tst.w	r0, #3
 8001748:	d003      	beq.n	8001752 <HAL_TIM_IRQHandler+0x32>
 800174a:	4620      	mov	r0, r4
 800174c:	f000 f8b1 	bl	80018b2 <HAL_TIM_IC_CaptureCallback>
 8001750:	e005      	b.n	800175e <HAL_TIM_IRQHandler+0x3e>
 8001752:	4620      	mov	r0, r4
 8001754:	f000 f8ae 	bl	80018b4 <HAL_TIM_OC_DelayElapsedCallback>
 8001758:	4620      	mov	r0, r4
 800175a:	f000 f8ac 	bl	80018b6 <HAL_TIM_PWM_PulseFinishedCallback>
 800175e:	2000      	movs	r0, #0
 8001760:	61e0      	str	r0, [r4, #28]
 8001762:	6820      	ldr	r0, [r4, #0]
 8001764:	6901      	ldr	r1, [r0, #16]
 8001766:	f011 0f04 	tst.w	r1, #4
 800176a:	bf1c      	itt	ne
 800176c:	68c1      	ldrne	r1, [r0, #12]
 800176e:	f011 0f04 	tstne.w	r1, #4
 8001772:	d015      	beq.n	80017a0 <HAL_TIM_IRQHandler+0x80>
 8001774:	f06f 0104 	mvn.w	r1, #4
 8001778:	6101      	str	r1, [r0, #16]
 800177a:	2102      	movs	r1, #2
 800177c:	61e1      	str	r1, [r4, #28]
 800177e:	6980      	ldr	r0, [r0, #24]
 8001780:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001784:	d003      	beq.n	800178e <HAL_TIM_IRQHandler+0x6e>
 8001786:	4620      	mov	r0, r4
 8001788:	f000 f893 	bl	80018b2 <HAL_TIM_IC_CaptureCallback>
 800178c:	e005      	b.n	800179a <HAL_TIM_IRQHandler+0x7a>
 800178e:	4620      	mov	r0, r4
 8001790:	f000 f890 	bl	80018b4 <HAL_TIM_OC_DelayElapsedCallback>
 8001794:	4620      	mov	r0, r4
 8001796:	f000 f88e 	bl	80018b6 <HAL_TIM_PWM_PulseFinishedCallback>
 800179a:	2000      	movs	r0, #0
 800179c:	61e0      	str	r0, [r4, #28]
 800179e:	6820      	ldr	r0, [r4, #0]
 80017a0:	6901      	ldr	r1, [r0, #16]
 80017a2:	f011 0f08 	tst.w	r1, #8
 80017a6:	bf1c      	itt	ne
 80017a8:	68c1      	ldrne	r1, [r0, #12]
 80017aa:	f011 0f08 	tstne.w	r1, #8
 80017ae:	d015      	beq.n	80017dc <HAL_TIM_IRQHandler+0xbc>
 80017b0:	f06f 0108 	mvn.w	r1, #8
 80017b4:	6101      	str	r1, [r0, #16]
 80017b6:	2104      	movs	r1, #4
 80017b8:	61e1      	str	r1, [r4, #28]
 80017ba:	69c0      	ldr	r0, [r0, #28]
 80017bc:	f010 0f03 	tst.w	r0, #3
 80017c0:	d003      	beq.n	80017ca <HAL_TIM_IRQHandler+0xaa>
 80017c2:	4620      	mov	r0, r4
 80017c4:	f000 f875 	bl	80018b2 <HAL_TIM_IC_CaptureCallback>
 80017c8:	e005      	b.n	80017d6 <HAL_TIM_IRQHandler+0xb6>
 80017ca:	4620      	mov	r0, r4
 80017cc:	f000 f872 	bl	80018b4 <HAL_TIM_OC_DelayElapsedCallback>
 80017d0:	4620      	mov	r0, r4
 80017d2:	f000 f870 	bl	80018b6 <HAL_TIM_PWM_PulseFinishedCallback>
 80017d6:	2000      	movs	r0, #0
 80017d8:	61e0      	str	r0, [r4, #28]
 80017da:	6820      	ldr	r0, [r4, #0]
 80017dc:	6901      	ldr	r1, [r0, #16]
 80017de:	f011 0f10 	tst.w	r1, #16
 80017e2:	bf1c      	itt	ne
 80017e4:	68c1      	ldrne	r1, [r0, #12]
 80017e6:	f011 0f10 	tstne.w	r1, #16
 80017ea:	d015      	beq.n	8001818 <HAL_TIM_IRQHandler+0xf8>
 80017ec:	f06f 0110 	mvn.w	r1, #16
 80017f0:	6101      	str	r1, [r0, #16]
 80017f2:	2108      	movs	r1, #8
 80017f4:	61e1      	str	r1, [r4, #28]
 80017f6:	69c0      	ldr	r0, [r0, #28]
 80017f8:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017fc:	d003      	beq.n	8001806 <HAL_TIM_IRQHandler+0xe6>
 80017fe:	4620      	mov	r0, r4
 8001800:	f000 f857 	bl	80018b2 <HAL_TIM_IC_CaptureCallback>
 8001804:	e005      	b.n	8001812 <HAL_TIM_IRQHandler+0xf2>
 8001806:	4620      	mov	r0, r4
 8001808:	f000 f854 	bl	80018b4 <HAL_TIM_OC_DelayElapsedCallback>
 800180c:	4620      	mov	r0, r4
 800180e:	f000 f852 	bl	80018b6 <HAL_TIM_PWM_PulseFinishedCallback>
 8001812:	2000      	movs	r0, #0
 8001814:	61e0      	str	r0, [r4, #28]
 8001816:	6820      	ldr	r0, [r4, #0]
 8001818:	6901      	ldr	r1, [r0, #16]
 800181a:	f011 0f01 	tst.w	r1, #1
 800181e:	bf1c      	itt	ne
 8001820:	68c1      	ldrne	r1, [r0, #12]
 8001822:	f011 0f01 	tstne.w	r1, #1
 8001826:	d006      	beq.n	8001836 <HAL_TIM_IRQHandler+0x116>
 8001828:	f06f 0101 	mvn.w	r1, #1
 800182c:	6101      	str	r1, [r0, #16]
 800182e:	4620      	mov	r0, r4
 8001830:	f000 f894 	bl	800195c <HAL_TIM_PeriodElapsedCallback>
 8001834:	6820      	ldr	r0, [r4, #0]
 8001836:	6901      	ldr	r1, [r0, #16]
 8001838:	f011 0f80 	tst.w	r1, #128	; 0x80
 800183c:	bf1c      	itt	ne
 800183e:	68c1      	ldrne	r1, [r0, #12]
 8001840:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001844:	d006      	beq.n	8001854 <HAL_TIM_IRQHandler+0x134>
 8001846:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800184a:	6101      	str	r1, [r0, #16]
 800184c:	4620      	mov	r0, r4
 800184e:	f000 f835 	bl	80018bc <HAL_TIMEx_BreakCallback>
 8001852:	6820      	ldr	r0, [r4, #0]
 8001854:	6901      	ldr	r1, [r0, #16]
 8001856:	f411 7f80 	tst.w	r1, #256	; 0x100
 800185a:	bf1c      	itt	ne
 800185c:	68c1      	ldrne	r1, [r0, #12]
 800185e:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001862:	d006      	beq.n	8001872 <HAL_TIM_IRQHandler+0x152>
 8001864:	f46f 7180 	mvn.w	r1, #256	; 0x100
 8001868:	6101      	str	r1, [r0, #16]
 800186a:	4620      	mov	r0, r4
 800186c:	f000 f827 	bl	80018be <HAL_TIMEx_Break2Callback>
 8001870:	6820      	ldr	r0, [r4, #0]
 8001872:	6901      	ldr	r1, [r0, #16]
 8001874:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001878:	bf1c      	itt	ne
 800187a:	68c1      	ldrne	r1, [r0, #12]
 800187c:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001880:	d006      	beq.n	8001890 <HAL_TIM_IRQHandler+0x170>
 8001882:	f06f 0140 	mvn.w	r1, #64	; 0x40
 8001886:	6101      	str	r1, [r0, #16]
 8001888:	4620      	mov	r0, r4
 800188a:	f000 f815 	bl	80018b8 <HAL_TIM_TriggerCallback>
 800188e:	6820      	ldr	r0, [r4, #0]
 8001890:	6901      	ldr	r1, [r0, #16]
 8001892:	f011 0f20 	tst.w	r1, #32
 8001896:	bf1c      	itt	ne
 8001898:	68c1      	ldrne	r1, [r0, #12]
 800189a:	f011 0f20 	tstne.w	r1, #32
 800189e:	d100      	bne.n	80018a2 <HAL_TIM_IRQHandler+0x182>
 80018a0:	bdd0      	pop	{r4, r6, r7, pc}
 80018a2:	f06f 0120 	mvn.w	r1, #32
 80018a6:	6101      	str	r1, [r0, #16]
 80018a8:	4620      	mov	r0, r4
 80018aa:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80018ae:	f000 b804 	b.w	80018ba <HAL_TIMEx_CommutationCallback>

080018b2 <HAL_TIM_IC_CaptureCallback>:
 80018b2:	4770      	bx	lr

080018b4 <HAL_TIM_OC_DelayElapsedCallback>:
 80018b4:	4770      	bx	lr

080018b6 <HAL_TIM_PWM_PulseFinishedCallback>:
 80018b6:	4770      	bx	lr

080018b8 <HAL_TIM_TriggerCallback>:
 80018b8:	4770      	bx	lr

080018ba <HAL_TIMEx_CommutationCallback>:
 80018ba:	4770      	bx	lr

080018bc <HAL_TIMEx_BreakCallback>:
 80018bc:	4770      	bx	lr

080018be <HAL_TIMEx_Break2Callback>:
 80018be:	4770      	bx	lr

080018c0 <HAL_InitTick>:
 80018c0:	b5b0      	push	{r4, r5, r7, lr}
 80018c2:	af02      	add	r7, sp, #8
 80018c4:	b086      	sub	sp, #24
 80018c6:	4601      	mov	r1, r0
 80018c8:	2036      	movs	r0, #54	; 0x36
 80018ca:	2200      	movs	r2, #0
 80018cc:	2400      	movs	r4, #0
 80018ce:	f7ff fc99 	bl	8001204 <HAL_NVIC_SetPriority>
 80018d2:	2036      	movs	r0, #54	; 0x36
 80018d4:	f7ff fcc9 	bl	800126a <HAL_NVIC_EnableIRQ>
 80018d8:	f241 0058 	movw	r0, #4184	; 0x1058
 80018dc:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80018e0:	6801      	ldr	r1, [r0, #0]
 80018e2:	f041 0110 	orr.w	r1, r1, #16
 80018e6:	6001      	str	r1, [r0, #0]
 80018e8:	4669      	mov	r1, sp
 80018ea:	6800      	ldr	r0, [r0, #0]
 80018ec:	f000 0010 	and.w	r0, r0, #16
 80018f0:	9001      	str	r0, [sp, #4]
 80018f2:	9801      	ldr	r0, [sp, #4]
 80018f4:	a801      	add	r0, sp, #4
 80018f6:	f7ff fe3a 	bl	800156e <HAL_RCC_GetClockConfig>
 80018fa:	9d04      	ldr	r5, [sp, #16]
 80018fc:	f7ff fe0d 	bl	800151a <HAL_RCC_GetPCLK1Freq>
 8001900:	2d00      	cmp	r5, #0
 8001902:	f640 21bc 	movw	r1, #2748	; 0xabc
 8001906:	f241 0200 	movw	r2, #4096	; 0x1000
 800190a:	f240 33e7 	movw	r3, #999	; 0x3e7
 800190e:	bf18      	it	ne
 8001910:	2501      	movne	r5, #1
 8001912:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001916:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800191a:	40a8      	lsls	r0, r5
 800191c:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001920:	618c      	str	r4, [r1, #24]
 8001922:	f2c4 351b 	movt	r5, #17179	; 0x431b
 8001926:	fba0 0505 	umull	r0, r5, r0, r5
 800192a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800192e:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001932:	e9c1 2000 	strd	r2, r0, [r1]
 8001936:	4608      	mov	r0, r1
 8001938:	e9c1 4302 	strd	r4, r3, [r1, #8]
 800193c:	610c      	str	r4, [r1, #16]
 800193e:	f7ff fe37 	bl	80015b0 <HAL_TIM_Base_Init>
 8001942:	2800      	cmp	r0, #0
 8001944:	bf1e      	ittt	ne
 8001946:	2001      	movne	r0, #1
 8001948:	b006      	addne	sp, #24
 800194a:	bdb0      	popne	{r4, r5, r7, pc}
 800194c:	f640 20bc 	movw	r0, #2748	; 0xabc
 8001950:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001954:	f7ff fecd 	bl	80016f2 <HAL_TIM_Base_Start_IT>
 8001958:	b006      	add	sp, #24
 800195a:	bdb0      	pop	{r4, r5, r7, pc}

0800195c <HAL_TIM_PeriodElapsedCallback>:
 800195c:	f7ff bc34 	b.w	80011c8 <HAL_IncTick>

08001960 <TIM6_DAC_IRQHandler>:
 8001960:	f640 20bc 	movw	r0, #2748	; 0xabc
 8001964:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001968:	f7ff beda 	b.w	8001720 <HAL_TIM_IRQHandler>

0800196c <HAL_UART_Init>:
 800196c:	b5d0      	push	{r4, r6, r7, lr}
 800196e:	af02      	add	r7, sp, #8
 8001970:	4604      	mov	r4, r0
 8001972:	b194      	cbz	r4, 800199a <HAL_UART_Init+0x2e>
 8001974:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001976:	b920      	cbnz	r0, 8001982 <HAL_UART_Init+0x16>
 8001978:	2000      	movs	r0, #0
 800197a:	6720      	str	r0, [r4, #112]	; 0x70
 800197c:	4620      	mov	r0, r4
 800197e:	f000 f826 	bl	80019ce <HAL_UART_MspInit>
 8001982:	2024      	movs	r0, #36	; 0x24
 8001984:	6760      	str	r0, [r4, #116]	; 0x74
 8001986:	6820      	ldr	r0, [r4, #0]
 8001988:	6801      	ldr	r1, [r0, #0]
 800198a:	f021 0101 	bic.w	r1, r1, #1
 800198e:	6001      	str	r1, [r0, #0]
 8001990:	4620      	mov	r0, r4
 8001992:	f000 f81d 	bl	80019d0 <UART_SetConfig>
 8001996:	2801      	cmp	r0, #1
 8001998:	d101      	bne.n	800199e <HAL_UART_Init+0x32>
 800199a:	2001      	movs	r0, #1
 800199c:	bdd0      	pop	{r4, r6, r7, pc}
 800199e:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80019a0:	2800      	cmp	r0, #0
 80019a2:	bf1c      	itt	ne
 80019a4:	4620      	movne	r0, r4
 80019a6:	f000 f944 	blne	8001c32 <UART_AdvFeatureConfig>
 80019aa:	6820      	ldr	r0, [r4, #0]
 80019ac:	6841      	ldr	r1, [r0, #4]
 80019ae:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80019b2:	6041      	str	r1, [r0, #4]
 80019b4:	6881      	ldr	r1, [r0, #8]
 80019b6:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80019ba:	6081      	str	r1, [r0, #8]
 80019bc:	6801      	ldr	r1, [r0, #0]
 80019be:	f041 0101 	orr.w	r1, r1, #1
 80019c2:	6001      	str	r1, [r0, #0]
 80019c4:	4620      	mov	r0, r4
 80019c6:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80019ca:	f000 b99d 	b.w	8001d08 <UART_CheckIdleState>

080019ce <HAL_UART_MspInit>:
 80019ce:	4770      	bx	lr

080019d0 <UART_SetConfig>:
 80019d0:	b5b0      	push	{r4, r5, r7, lr}
 80019d2:	af02      	add	r7, sp, #8
 80019d4:	4604      	mov	r4, r0
 80019d6:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019da:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019de:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019e2:	6821      	ldr	r1, [r4, #0]
 80019e4:	68a0      	ldr	r0, [r4, #8]
 80019e6:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019ea:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019ee:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019f2:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019f6:	4310      	orrs	r0, r2
 80019f8:	69e2      	ldr	r2, [r4, #28]
 80019fa:	4571      	cmp	r1, lr
 80019fc:	ea40 0003 	orr.w	r0, r0, r3
 8001a00:	680b      	ldr	r3, [r1, #0]
 8001a02:	ea40 0002 	orr.w	r0, r0, r2
 8001a06:	ea03 0305 	and.w	r3, r3, r5
 8001a0a:	f04f 0510 	mov.w	r5, #16
 8001a0e:	ea40 0003 	orr.w	r0, r0, r3
 8001a12:	6008      	str	r0, [r1, #0]
 8001a14:	6848      	ldr	r0, [r1, #4]
 8001a16:	68e3      	ldr	r3, [r4, #12]
 8001a18:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a1c:	ea40 0003 	orr.w	r0, r0, r3
 8001a20:	6048      	str	r0, [r1, #4]
 8001a22:	69a0      	ldr	r0, [r4, #24]
 8001a24:	bf1c      	itt	ne
 8001a26:	6a23      	ldrne	r3, [r4, #32]
 8001a28:	4318      	orrne	r0, r3
 8001a2a:	688b      	ldr	r3, [r1, #8]
 8001a2c:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a30:	4318      	orrs	r0, r3
 8001a32:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a36:	6088      	str	r0, [r1, #8]
 8001a38:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a3c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a40:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a44:	4299      	cmp	r1, r3
 8001a46:	dc15      	bgt.n	8001a74 <UART_SetConfig+0xa4>
 8001a48:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a4c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a50:	4299      	cmp	r1, r3
 8001a52:	d024      	beq.n	8001a9e <UART_SetConfig+0xce>
 8001a54:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a58:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a5c:	4299      	cmp	r1, r3
 8001a5e:	d022      	beq.n	8001aa6 <UART_SetConfig+0xd6>
 8001a60:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a64:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a68:	4299      	cmp	r1, r3
 8001a6a:	d131      	bne.n	8001ad0 <UART_SetConfig+0x100>
 8001a6c:	f8dc 3000 	ldr.w	r3, [ip]
 8001a70:	099d      	lsrs	r5, r3, #6
 8001a72:	e023      	b.n	8001abc <UART_SetConfig+0xec>
 8001a74:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a78:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a7c:	4299      	cmp	r1, r3
 8001a7e:	d016      	beq.n	8001aae <UART_SetConfig+0xde>
 8001a80:	4571      	cmp	r1, lr
 8001a82:	d018      	beq.n	8001ab6 <UART_SetConfig+0xe6>
 8001a84:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a88:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a8c:	4299      	cmp	r1, r3
 8001a8e:	d11f      	bne.n	8001ad0 <UART_SetConfig+0x100>
 8001a90:	f8dc 5000 	ldr.w	r5, [ip]
 8001a94:	f24a 631c 	movw	r3, #42524	; 0xa61c
 8001a98:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a9c:	e012      	b.n	8001ac4 <UART_SetConfig+0xf4>
 8001a9e:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa2:	089d      	lsrs	r5, r3, #2
 8001aa4:	e00a      	b.n	8001abc <UART_SetConfig+0xec>
 8001aa6:	f8dc 3000 	ldr.w	r3, [ip]
 8001aaa:	091d      	lsrs	r5, r3, #4
 8001aac:	e006      	b.n	8001abc <UART_SetConfig+0xec>
 8001aae:	f8dc 3000 	ldr.w	r3, [ip]
 8001ab2:	0a1d      	lsrs	r5, r3, #8
 8001ab4:	e002      	b.n	8001abc <UART_SetConfig+0xec>
 8001ab6:	f8dc 3000 	ldr.w	r3, [ip]
 8001aba:	0a9d      	lsrs	r5, r3, #10
 8001abc:	f24a 632c 	movw	r3, #42540	; 0xa62c
 8001ac0:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001ac4:	f005 0503 	and.w	r5, r5, #3
 8001ac8:	f085 0502 	eor.w	r5, r5, #2
 8001acc:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001ad0:	4571      	cmp	r1, lr
 8001ad2:	d012      	beq.n	8001afa <UART_SetConfig+0x12a>
 8001ad4:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001ad8:	d11d      	bne.n	8001b16 <UART_SetConfig+0x146>
 8001ada:	f005 001f 	and.w	r0, r5, #31
 8001ade:	2101      	movs	r1, #1
 8001ae0:	2808      	cmp	r0, #8
 8001ae2:	f200 809f 	bhi.w	8001c24 <UART_SetConfig+0x254>
 8001ae6:	e8df f000 	tbb	[pc, r0]
 8001aea:	4005      	.short	0x4005
 8001aec:	9d499d43 	.word	0x9d499d43
 8001af0:	004f9d9d 	.word	0x004f9d9d
 8001af4:	f7ff fd11 	bl	800151a <HAL_RCC_GetPCLK1Freq>
 8001af8:	e042      	b.n	8001b80 <UART_SetConfig+0x1b0>
 8001afa:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001afe:	2101      	movs	r1, #1
 8001b00:	2d04      	cmp	r5, #4
 8001b02:	f200 808f 	bhi.w	8001c24 <UART_SetConfig+0x254>
 8001b06:	e8df f005 	tbb	[pc, r5]
 8001b0a:	1c03      	.short	0x1c03
 8001b0c:	001a8d16 	.word	0x001a8d16
 8001b10:	f7ff fd03 	bl	800151a <HAL_RCC_GetPCLK1Freq>
 8001b14:	e011      	b.n	8001b3a <UART_SetConfig+0x16a>
 8001b16:	f005 021f 	and.w	r2, r5, #31
 8001b1a:	2101      	movs	r1, #1
 8001b1c:	2a08      	cmp	r2, #8
 8001b1e:	f200 8081 	bhi.w	8001c24 <UART_SetConfig+0x254>
 8001b22:	e8df f002 	tbb	[pc, r2]
 8001b26:	4305      	.short	0x4305
 8001b28:	7f487f46 	.word	0x7f487f46
 8001b2c:	004e7f7f 	.word	0x004e7f7f
 8001b30:	f7ff fcf3 	bl	800151a <HAL_RCC_GetPCLK1Freq>
 8001b34:	e041      	b.n	8001bba <UART_SetConfig+0x1ea>
 8001b36:	f7ff fc91 	bl	800145c <HAL_RCC_GetSysClockFreq>
 8001b3a:	b910      	cbnz	r0, 8001b42 <UART_SetConfig+0x172>
 8001b3c:	e071      	b.n	8001c22 <UART_SetConfig+0x252>
 8001b3e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b42:	6862      	ldr	r2, [r4, #4]
 8001b44:	2101      	movs	r1, #1
 8001b46:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b4a:	4298      	cmp	r0, r3
 8001b4c:	d36a      	bcc.n	8001c24 <UART_SetConfig+0x254>
 8001b4e:	0313      	lsls	r3, r2, #12
 8001b50:	4298      	cmp	r0, r3
 8001b52:	bf9c      	itt	ls
 8001b54:	2101      	movls	r1, #1
 8001b56:	2d04      	cmpls	r5, #4
 8001b58:	d864      	bhi.n	8001c24 <UART_SetConfig+0x254>
 8001b5a:	e8df f005 	tbb	[pc, r5]
 8001b5e:	3e03      	.short	0x3e03
 8001b60:	00526345 	.word	0x00526345
 8001b64:	f7ff fcd9 	bl	800151a <HAL_RCC_GetPCLK1Freq>
 8001b68:	e040      	b.n	8001bec <UART_SetConfig+0x21c>
 8001b6a:	f7ff fceb 	bl	8001544 <HAL_RCC_GetPCLK2Freq>
 8001b6e:	e007      	b.n	8001b80 <UART_SetConfig+0x1b0>
 8001b70:	6861      	ldr	r1, [r4, #4]
 8001b72:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b76:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b7a:	e008      	b.n	8001b8e <UART_SetConfig+0x1be>
 8001b7c:	f7ff fc6e 	bl	800145c <HAL_RCC_GetSysClockFreq>
 8001b80:	6861      	ldr	r1, [r4, #4]
 8001b82:	0040      	lsls	r0, r0, #1
 8001b84:	084a      	lsrs	r2, r1, #1
 8001b86:	e003      	b.n	8001b90 <UART_SetConfig+0x1c0>
 8001b88:	6861      	ldr	r1, [r4, #4]
 8001b8a:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b8e:	0848      	lsrs	r0, r1, #1
 8001b90:	4410      	add	r0, r2
 8001b92:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b96:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b9a:	4001      	ands	r1, r0
 8001b9c:	2910      	cmp	r1, #16
 8001b9e:	d303      	bcc.n	8001ba8 <UART_SetConfig+0x1d8>
 8001ba0:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001ba4:	4308      	orrs	r0, r1
 8001ba6:	e03a      	b.n	8001c1e <UART_SetConfig+0x24e>
 8001ba8:	2101      	movs	r1, #1
 8001baa:	e03b      	b.n	8001c24 <UART_SetConfig+0x254>
 8001bac:	f7ff fcca 	bl	8001544 <HAL_RCC_GetPCLK2Freq>
 8001bb0:	e003      	b.n	8001bba <UART_SetConfig+0x1ea>
 8001bb2:	6862      	ldr	r2, [r4, #4]
 8001bb4:	e008      	b.n	8001bc8 <UART_SetConfig+0x1f8>
 8001bb6:	f7ff fc51 	bl	800145c <HAL_RCC_GetSysClockFreq>
 8001bba:	6862      	ldr	r2, [r4, #4]
 8001bbc:	4601      	mov	r1, r0
 8001bbe:	0850      	lsrs	r0, r2, #1
 8001bc0:	e003      	b.n	8001bca <UART_SetConfig+0x1fa>
 8001bc2:	6862      	ldr	r2, [r4, #4]
 8001bc4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bc8:	0851      	lsrs	r1, r2, #1
 8001bca:	4408      	add	r0, r1
 8001bcc:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bd0:	b280      	uxth	r0, r0
 8001bd2:	2810      	cmp	r0, #16
 8001bd4:	d223      	bcs.n	8001c1e <UART_SetConfig+0x24e>
 8001bd6:	2101      	movs	r1, #1
 8001bd8:	e024      	b.n	8001c24 <UART_SetConfig+0x254>
 8001bda:	2000      	movs	r0, #0
 8001bdc:	2100      	movs	r1, #0
 8001bde:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001be2:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001be6:	e006      	b.n	8001bf6 <UART_SetConfig+0x226>
 8001be8:	f7ff fc38 	bl	800145c <HAL_RCC_GetSysClockFreq>
 8001bec:	6862      	ldr	r2, [r4, #4]
 8001bee:	0e01      	lsrs	r1, r0, #24
 8001bf0:	0853      	lsrs	r3, r2, #1
 8001bf2:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001bf6:	f141 0100 	adc.w	r1, r1, #0
 8001bfa:	2300      	movs	r3, #0
 8001bfc:	f7fe fb00 	bl	8000200 <__aeabi_uldivmod>
 8001c00:	e005      	b.n	8001c0e <UART_SetConfig+0x23e>
 8001c02:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001c06:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001c0a:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c0e:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c12:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c16:	f2c0 020f 	movt	r2, #15
 8001c1a:	4291      	cmp	r1, r2
 8001c1c:	d807      	bhi.n	8001c2e <UART_SetConfig+0x25e>
 8001c1e:	6821      	ldr	r1, [r4, #0]
 8001c20:	60c8      	str	r0, [r1, #12]
 8001c22:	2100      	movs	r1, #0
 8001c24:	2000      	movs	r0, #0
 8001c26:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001c2a:	4608      	mov	r0, r1
 8001c2c:	bdb0      	pop	{r4, r5, r7, pc}
 8001c2e:	2101      	movs	r1, #1
 8001c30:	e7f8      	b.n	8001c24 <UART_SetConfig+0x254>

08001c32 <UART_AdvFeatureConfig>:
 8001c32:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c34:	f011 0f01 	tst.w	r1, #1
 8001c38:	d008      	beq.n	8001c4c <UART_AdvFeatureConfig+0x1a>
 8001c3a:	6802      	ldr	r2, [r0, #0]
 8001c3c:	6853      	ldr	r3, [r2, #4]
 8001c3e:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c42:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c46:	ea43 030c 	orr.w	r3, r3, ip
 8001c4a:	6053      	str	r3, [r2, #4]
 8001c4c:	078a      	lsls	r2, r1, #30
 8001c4e:	d508      	bpl.n	8001c62 <UART_AdvFeatureConfig+0x30>
 8001c50:	6802      	ldr	r2, [r0, #0]
 8001c52:	6853      	ldr	r3, [r2, #4]
 8001c54:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c58:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c5c:	ea43 030c 	orr.w	r3, r3, ip
 8001c60:	6053      	str	r3, [r2, #4]
 8001c62:	074a      	lsls	r2, r1, #29
 8001c64:	d508      	bpl.n	8001c78 <UART_AdvFeatureConfig+0x46>
 8001c66:	6802      	ldr	r2, [r0, #0]
 8001c68:	6853      	ldr	r3, [r2, #4]
 8001c6a:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c6e:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c72:	ea43 030c 	orr.w	r3, r3, ip
 8001c76:	6053      	str	r3, [r2, #4]
 8001c78:	070a      	lsls	r2, r1, #28
 8001c7a:	d508      	bpl.n	8001c8e <UART_AdvFeatureConfig+0x5c>
 8001c7c:	6802      	ldr	r2, [r0, #0]
 8001c7e:	6853      	ldr	r3, [r2, #4]
 8001c80:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c84:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c88:	ea43 030c 	orr.w	r3, r3, ip
 8001c8c:	6053      	str	r3, [r2, #4]
 8001c8e:	06ca      	lsls	r2, r1, #27
 8001c90:	d508      	bpl.n	8001ca4 <UART_AdvFeatureConfig+0x72>
 8001c92:	6802      	ldr	r2, [r0, #0]
 8001c94:	6893      	ldr	r3, [r2, #8]
 8001c96:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c9a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c9e:	ea43 030c 	orr.w	r3, r3, ip
 8001ca2:	6093      	str	r3, [r2, #8]
 8001ca4:	068a      	lsls	r2, r1, #26
 8001ca6:	d508      	bpl.n	8001cba <UART_AdvFeatureConfig+0x88>
 8001ca8:	6802      	ldr	r2, [r0, #0]
 8001caa:	6893      	ldr	r3, [r2, #8]
 8001cac:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001cb0:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001cb4:	ea43 030c 	orr.w	r3, r3, ip
 8001cb8:	6093      	str	r3, [r2, #8]
 8001cba:	b580      	push	{r7, lr}
 8001cbc:	466f      	mov	r7, sp
 8001cbe:	064a      	lsls	r2, r1, #25
 8001cc0:	d515      	bpl.n	8001cee <UART_AdvFeatureConfig+0xbc>
 8001cc2:	f8d0 e000 	ldr.w	lr, [r0]
 8001cc6:	f8de c004 	ldr.w	ip, [lr, #4]
 8001cca:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001ccc:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001cd0:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001cd4:	ea42 0203 	orr.w	r2, r2, r3
 8001cd8:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cdc:	d107      	bne.n	8001cee <UART_AdvFeatureConfig+0xbc>
 8001cde:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001ce2:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001ce4:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001ce8:	431a      	orrs	r2, r3
 8001cea:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cee:	0609      	lsls	r1, r1, #24
 8001cf0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001cf4:	bf58      	it	pl
 8001cf6:	4770      	bxpl	lr
 8001cf8:	6801      	ldr	r1, [r0, #0]
 8001cfa:	684a      	ldr	r2, [r1, #4]
 8001cfc:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001cfe:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001d02:	4310      	orrs	r0, r2
 8001d04:	6048      	str	r0, [r1, #4]
 8001d06:	4770      	bx	lr

08001d08 <UART_CheckIdleState>:
 8001d08:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d0a:	af03      	add	r7, sp, #12
 8001d0c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001d10:	4604      	mov	r4, r0
 8001d12:	2000      	movs	r0, #0
 8001d14:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d16:	f7ff fa5f 	bl	80011d8 <HAL_GetTick>
 8001d1a:	4605      	mov	r5, r0
 8001d1c:	6820      	ldr	r0, [r4, #0]
 8001d1e:	6801      	ldr	r1, [r0, #0]
 8001d20:	f011 0f08 	tst.w	r1, #8
 8001d24:	d00f      	beq.n	8001d46 <UART_CheckIdleState+0x3e>
 8001d26:	69c1      	ldr	r1, [r0, #28]
 8001d28:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d2c:	d10b      	bne.n	8001d46 <UART_CheckIdleState+0x3e>
 8001d2e:	2600      	movs	r6, #0
 8001d30:	f7ff fa52 	bl	80011d8 <HAL_GetTick>
 8001d34:	1b41      	subs	r1, r0, r5
 8001d36:	6820      	ldr	r0, [r4, #0]
 8001d38:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d3c:	d11b      	bne.n	8001d76 <UART_CheckIdleState+0x6e>
 8001d3e:	69c1      	ldr	r1, [r0, #28]
 8001d40:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d44:	d0f4      	beq.n	8001d30 <UART_CheckIdleState+0x28>
 8001d46:	6801      	ldr	r1, [r0, #0]
 8001d48:	f011 0f04 	tst.w	r1, #4
 8001d4c:	d101      	bne.n	8001d52 <UART_CheckIdleState+0x4a>
 8001d4e:	2600      	movs	r6, #0
 8001d50:	e01a      	b.n	8001d88 <UART_CheckIdleState+0x80>
 8001d52:	69c0      	ldr	r0, [r0, #28]
 8001d54:	2600      	movs	r6, #0
 8001d56:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d5a:	d115      	bne.n	8001d88 <UART_CheckIdleState+0x80>
 8001d5c:	f7ff fa3c 	bl	80011d8 <HAL_GetTick>
 8001d60:	1b41      	subs	r1, r0, r5
 8001d62:	6820      	ldr	r0, [r4, #0]
 8001d64:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d68:	d105      	bne.n	8001d76 <UART_CheckIdleState+0x6e>
 8001d6a:	69c0      	ldr	r0, [r0, #28]
 8001d6c:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d70:	d0f4      	beq.n	8001d5c <UART_CheckIdleState+0x54>
 8001d72:	2600      	movs	r6, #0
 8001d74:	e008      	b.n	8001d88 <UART_CheckIdleState+0x80>
 8001d76:	6801      	ldr	r1, [r0, #0]
 8001d78:	2603      	movs	r6, #3
 8001d7a:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001d7e:	6001      	str	r1, [r0, #0]
 8001d80:	6881      	ldr	r1, [r0, #8]
 8001d82:	f021 0101 	bic.w	r1, r1, #1
 8001d86:	6081      	str	r1, [r0, #8]
 8001d88:	2020      	movs	r0, #32
 8001d8a:	6760      	str	r0, [r4, #116]	; 0x74
 8001d8c:	67a0      	str	r0, [r4, #120]	; 0x78
 8001d8e:	2000      	movs	r0, #0
 8001d90:	6720      	str	r0, [r4, #112]	; 0x70
 8001d92:	4630      	mov	r0, r6
 8001d94:	f85d bb04 	ldr.w	fp, [sp], #4
 8001d98:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d9a <HAL_UART_Transmit>:
 8001d9a:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d9c:	af03      	add	r7, sp, #12
 8001d9e:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001da2:	b081      	sub	sp, #4
 8001da4:	4604      	mov	r4, r0
 8001da6:	461d      	mov	r5, r3
 8001da8:	4616      	mov	r6, r2
 8001daa:	4689      	mov	r9, r1
 8001dac:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001dae:	2820      	cmp	r0, #32
 8001db0:	d109      	bne.n	8001dc6 <HAL_UART_Transmit+0x2c>
 8001db2:	f1b9 0f00 	cmp.w	r9, #0
 8001db6:	f04f 0001 	mov.w	r0, #1
 8001dba:	bf18      	it	ne
 8001dbc:	2e00      	cmpne	r6, #0
 8001dbe:	d003      	beq.n	8001dc8 <HAL_UART_Transmit+0x2e>
 8001dc0:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001dc2:	2801      	cmp	r0, #1
 8001dc4:	d104      	bne.n	8001dd0 <HAL_UART_Transmit+0x36>
 8001dc6:	2002      	movs	r0, #2
 8001dc8:	b001      	add	sp, #4
 8001dca:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001dce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001dd0:	2001      	movs	r0, #1
 8001dd2:	6720      	str	r0, [r4, #112]	; 0x70
 8001dd4:	2000      	movs	r0, #0
 8001dd6:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001dd8:	2021      	movs	r0, #33	; 0x21
 8001dda:	6760      	str	r0, [r4, #116]	; 0x74
 8001ddc:	f7ff f9fc 	bl	80011d8 <HAL_GetTick>
 8001de0:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001de4:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001de8:	4680      	mov	r8, r0
 8001dea:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001dee:	f8d4 b000 	ldr.w	fp, [r4]
 8001df2:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001df6:	2900      	cmp	r1, #0
 8001df8:	d040      	beq.n	8001e7c <HAL_UART_Transmit+0xe2>
 8001dfa:	f105 0a01 	add.w	sl, r5, #1
 8001dfe:	0600      	lsls	r0, r0, #24
 8001e00:	d410      	bmi.n	8001e24 <HAL_UART_Transmit+0x8a>
 8001e02:	465e      	mov	r6, fp
 8001e04:	f1ba 0f00 	cmp.w	sl, #0
 8001e08:	d007      	beq.n	8001e1a <HAL_UART_Transmit+0x80>
 8001e0a:	b33d      	cbz	r5, 8001e5c <HAL_UART_Transmit+0xc2>
 8001e0c:	f7ff f9e4 	bl	80011d8 <HAL_GetTick>
 8001e10:	6826      	ldr	r6, [r4, #0]
 8001e12:	eba0 0008 	sub.w	r0, r0, r8
 8001e16:	42a8      	cmp	r0, r5
 8001e18:	d821      	bhi.n	8001e5e <HAL_UART_Transmit+0xc4>
 8001e1a:	69f0      	ldr	r0, [r6, #28]
 8001e1c:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001e20:	d0f0      	beq.n	8001e04 <HAL_UART_Transmit+0x6a>
 8001e22:	e000      	b.n	8001e26 <HAL_UART_Transmit+0x8c>
 8001e24:	465e      	mov	r6, fp
 8001e26:	68a0      	ldr	r0, [r4, #8]
 8001e28:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e2c:	bf04      	itt	eq
 8001e2e:	6920      	ldreq	r0, [r4, #16]
 8001e30:	2800      	cmpeq	r0, #0
 8001e32:	d002      	beq.n	8001e3a <HAL_UART_Transmit+0xa0>
 8001e34:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e38:	e003      	b.n	8001e42 <HAL_UART_Transmit+0xa8>
 8001e3a:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e3e:	f36f 205f 	bfc	r0, #9, #23
 8001e42:	8530      	strh	r0, [r6, #40]	; 0x28
 8001e44:	46b3      	mov	fp, r6
 8001e46:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001e4a:	3801      	subs	r0, #1
 8001e4c:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001e50:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e54:	69f0      	ldr	r0, [r6, #28]
 8001e56:	2900      	cmp	r1, #0
 8001e58:	d1d1      	bne.n	8001dfe <HAL_UART_Transmit+0x64>
 8001e5a:	e010      	b.n	8001e7e <HAL_UART_Transmit+0xe4>
 8001e5c:	465e      	mov	r6, fp
 8001e5e:	6830      	ldr	r0, [r6, #0]
 8001e60:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001e64:	6030      	str	r0, [r6, #0]
 8001e66:	68b0      	ldr	r0, [r6, #8]
 8001e68:	f020 0001 	bic.w	r0, r0, #1
 8001e6c:	60b0      	str	r0, [r6, #8]
 8001e6e:	2020      	movs	r0, #32
 8001e70:	6760      	str	r0, [r4, #116]	; 0x74
 8001e72:	67a0      	str	r0, [r4, #120]	; 0x78
 8001e74:	2000      	movs	r0, #0
 8001e76:	6720      	str	r0, [r4, #112]	; 0x70
 8001e78:	2003      	movs	r0, #3
 8001e7a:	e7a5      	b.n	8001dc8 <HAL_UART_Transmit+0x2e>
 8001e7c:	465e      	mov	r6, fp
 8001e7e:	0640      	lsls	r0, r0, #25
 8001e80:	d411      	bmi.n	8001ea6 <HAL_UART_Transmit+0x10c>
 8001e82:	f105 0901 	add.w	r9, r5, #1
 8001e86:	4630      	mov	r0, r6
 8001e88:	f1b9 0f00 	cmp.w	r9, #0
 8001e8c:	d007      	beq.n	8001e9e <HAL_UART_Transmit+0x104>
 8001e8e:	b17d      	cbz	r5, 8001eb0 <HAL_UART_Transmit+0x116>
 8001e90:	f7ff f9a2 	bl	80011d8 <HAL_GetTick>
 8001e94:	eba0 0108 	sub.w	r1, r0, r8
 8001e98:	6820      	ldr	r0, [r4, #0]
 8001e9a:	42a9      	cmp	r1, r5
 8001e9c:	d809      	bhi.n	8001eb2 <HAL_UART_Transmit+0x118>
 8001e9e:	69c1      	ldr	r1, [r0, #28]
 8001ea0:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001ea4:	d0f0      	beq.n	8001e88 <HAL_UART_Transmit+0xee>
 8001ea6:	2020      	movs	r0, #32
 8001ea8:	6760      	str	r0, [r4, #116]	; 0x74
 8001eaa:	2000      	movs	r0, #0
 8001eac:	6720      	str	r0, [r4, #112]	; 0x70
 8001eae:	e78b      	b.n	8001dc8 <HAL_UART_Transmit+0x2e>
 8001eb0:	4630      	mov	r0, r6
 8001eb2:	6801      	ldr	r1, [r0, #0]
 8001eb4:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001eb8:	6001      	str	r1, [r0, #0]
 8001eba:	6881      	ldr	r1, [r0, #8]
 8001ebc:	f021 0101 	bic.w	r1, r1, #1
 8001ec0:	6081      	str	r1, [r0, #8]
 8001ec2:	e7d4      	b.n	8001e6e <HAL_UART_Transmit+0xd4>

08001ec4 <BSP_COM_Init>:
 8001ec4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ec6:	af03      	add	r7, sp, #12
 8001ec8:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001ecc:	b086      	sub	sp, #24
 8001ece:	4605      	mov	r5, r0
 8001ed0:	4688      	mov	r8, r1
 8001ed2:	b9f5      	cbnz	r5, 8001f12 <BSP_COM_Init+0x4e>
 8001ed4:	f241 004c 	movw	r0, #4172	; 0x104c
 8001ed8:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001edc:	6801      	ldr	r1, [r0, #0]
 8001ede:	f041 0102 	orr.w	r1, r1, #2
 8001ee2:	6001      	str	r1, [r0, #0]
 8001ee4:	6801      	ldr	r1, [r0, #0]
 8001ee6:	f001 0102 	and.w	r1, r1, #2
 8001eea:	9101      	str	r1, [sp, #4]
 8001eec:	9901      	ldr	r1, [sp, #4]
 8001eee:	6801      	ldr	r1, [r0, #0]
 8001ef0:	f041 0102 	orr.w	r1, r1, #2
 8001ef4:	6001      	str	r1, [r0, #0]
 8001ef6:	6801      	ldr	r1, [r0, #0]
 8001ef8:	f001 0102 	and.w	r1, r1, #2
 8001efc:	9101      	str	r1, [sp, #4]
 8001efe:	9901      	ldr	r1, [sp, #4]
 8001f00:	6941      	ldr	r1, [r0, #20]
 8001f02:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001f06:	6141      	str	r1, [r0, #20]
 8001f08:	6940      	ldr	r0, [r0, #20]
 8001f0a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001f0e:	9001      	str	r0, [sp, #4]
 8001f10:	9801      	ldr	r0, [sp, #4]
 8001f12:	2040      	movs	r0, #64	; 0x40
 8001f14:	2402      	movs	r4, #2
 8001f16:	ae01      	add	r6, sp, #4
 8001f18:	f04f 0907 	mov.w	r9, #7
 8001f1c:	9001      	str	r0, [sp, #4]
 8001f1e:	2000      	movs	r0, #0
 8001f20:	9402      	str	r4, [sp, #8]
 8001f22:	9404      	str	r4, [sp, #16]
 8001f24:	4631      	mov	r1, r6
 8001f26:	9003      	str	r0, [sp, #12]
 8001f28:	f240 000c 	movw	r0, #12
 8001f2c:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f30:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f34:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f38:	f7ff f9a7 	bl	800128a <HAL_GPIO_Init>
 8001f3c:	2080      	movs	r0, #128	; 0x80
 8001f3e:	4631      	mov	r1, r6
 8001f40:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001f44:	f240 0010 	movw	r0, #16
 8001f48:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f4c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f50:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f54:	f7ff f999 	bl	800128a <HAL_GPIO_Init>
 8001f58:	f240 0008 	movw	r0, #8
 8001f5c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f60:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f64:	f8c8 0000 	str.w	r0, [r8]
 8001f68:	4640      	mov	r0, r8
 8001f6a:	f7ff fcff 	bl	800196c <HAL_UART_Init>
 8001f6e:	b006      	add	sp, #24
 8001f70:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001f74:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001f76 <set_key>:
 8001f76:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f78:	af03      	add	r7, sp, #12
 8001f7a:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f7e:	f1a1 0610 	sub.w	r6, r1, #16
 8001f82:	2e10      	cmp	r6, #16
 8001f84:	d875      	bhi.n	8002072 <set_key+0xfc>
 8001f86:	f011 0607 	ands.w	r6, r1, #7
 8001f8a:	d172      	bne.n	8002072 <set_key+0xfc>
 8001f8c:	f012 0203 	ands.w	r2, r2, #3
 8001f90:	d06f      	beq.n	8002072 <set_key+0xfc>
 8001f92:	f893 6208 	ldrb.w	r6, [r3, #520]	; 0x208
 8001f96:	088d      	lsrs	r5, r1, #2
 8001f98:	2913      	cmp	r1, #19
 8001f9a:	f006 06fc 	and.w	r6, r6, #252	; 0xfc
 8001f9e:	ea46 0c02 	orr.w	ip, r6, r2
 8001fa2:	f04f 0206 	mov.w	r2, #6
 8001fa6:	f04f 060a 	mov.w	r6, #10
 8001faa:	f883 c208 	strb.w	ip, [r3, #520]	; 0x208
 8001fae:	601d      	str	r5, [r3, #0]
 8001fb0:	bf88      	it	hi
 8001fb2:	eb02 0691 	addhi.w	r6, r2, r1, lsr #2
 8001fb6:	605e      	str	r6, [r3, #4]
 8001fb8:	f8d0 a000 	ldr.w	sl, [r0]
 8001fbc:	f8c3 a008 	str.w	sl, [r3, #8]
 8001fc0:	6844      	ldr	r4, [r0, #4]
 8001fc2:	60dc      	str	r4, [r3, #12]
 8001fc4:	6884      	ldr	r4, [r0, #8]
 8001fc6:	611c      	str	r4, [r3, #16]
 8001fc8:	68c4      	ldr	r4, [r0, #12]
 8001fca:	615c      	str	r4, [r3, #20]
 8001fcc:	2408      	movs	r4, #8
 8001fce:	ebb4 0f91 	cmp.w	r4, r1, lsr #2
 8001fd2:	d05a      	beq.n	800208a <set_key+0x114>
 8001fd4:	2d06      	cmp	r5, #6
 8001fd6:	f000 80ce 	beq.w	8002176 <set_key+0x200>
 8001fda:	2d04      	cmp	r5, #4
 8001fdc:	f040 811a 	bne.w	8002214 <set_key+0x29e>
 8001fe0:	2108      	movs	r1, #8
 8001fe2:	f06f 0008 	mvn.w	r0, #8
 8001fe6:	f649 18d4 	movw	r8, #39380	; 0x99d4
 8001fea:	f249 1e60 	movw	lr, #37216	; 0x9160
 8001fee:	ea41 1106 	orr.w	r1, r1, r6, lsl #4
 8001ff2:	f103 0618 	add.w	r6, r3, #24
 8001ff6:	1ac0      	subs	r0, r0, r3
 8001ff8:	f6c0 0800 	movt	r8, #2048	; 0x800
 8001ffc:	f6c0 0e00 	movt	lr, #2048	; 0x800
 8002000:	4419      	add	r1, r3
 8002002:	42b1      	cmp	r1, r6
 8002004:	bf88      	it	hi
 8002006:	460e      	movhi	r6, r1
 8002008:	2101      	movs	r1, #1
 800200a:	4430      	add	r0, r6
 800200c:	eb01 1010 	add.w	r0, r1, r0, lsr #4
 8002010:	2100      	movs	r1, #0
 8002012:	eb03 0481 	add.w	r4, r3, r1, lsl #2
 8002016:	3801      	subs	r0, #1
 8002018:	6965      	ldr	r5, [r4, #20]
 800201a:	f3c5 4607 	ubfx	r6, r5, #16, #8
 800201e:	f858 9026 	ldr.w	r9, [r8, r6, lsl #2]
 8002022:	f3c5 2607 	ubfx	r6, r5, #8, #8
 8002026:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 800202a:	ea86 020a 	eor.w	r2, r6, sl
 800202e:	ea4f 6615 	mov.w	r6, r5, lsr #24
 8002032:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 8002036:	ea82 6239 	eor.w	r2, r2, r9, ror #24
 800203a:	ea82 4236 	eor.w	r2, r2, r6, ror #16
 800203e:	f85e 6001 	ldr.w	r6, [lr, r1]
 8002042:	f101 0104 	add.w	r1, r1, #4
 8002046:	ea82 0206 	eor.w	r2, r2, r6
 800204a:	b2ee      	uxtb	r6, r5
 800204c:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 8002050:	ea82 2a36 	eor.w	sl, r2, r6, ror #8
 8002054:	f8c4 a018 	str.w	sl, [r4, #24]
 8002058:	68e6      	ldr	r6, [r4, #12]
 800205a:	ea86 060a 	eor.w	r6, r6, sl
 800205e:	61e6      	str	r6, [r4, #28]
 8002060:	6922      	ldr	r2, [r4, #16]
 8002062:	ea82 0206 	eor.w	r2, r2, r6
 8002066:	6222      	str	r2, [r4, #32]
 8002068:	ea82 0205 	eor.w	r2, r2, r5
 800206c:	6262      	str	r2, [r4, #36]	; 0x24
 800206e:	d1d0      	bne.n	8002012 <set_key+0x9c>
 8002070:	e0d0      	b.n	8002214 <set_key+0x29e>
 8002072:	b139      	cbz	r1, 8002084 <set_key+0x10e>
 8002074:	f893 0208 	ldrb.w	r0, [r3, #520]	; 0x208
 8002078:	f000 00fc 	and.w	r0, r0, #252	; 0xfc
 800207c:	f883 0208 	strb.w	r0, [r3, #520]	; 0x208
 8002080:	2000      	movs	r0, #0
 8002082:	e16a      	b.n	800235a <set_key+0x3e4>
 8002084:	6818      	ldr	r0, [r3, #0]
 8002086:	0080      	lsls	r0, r0, #2
 8002088:	e167      	b.n	800235a <set_key+0x3e4>
 800208a:	6901      	ldr	r1, [r0, #16]
 800208c:	f103 0228 	add.w	r2, r3, #40	; 0x28
 8002090:	f649 1ed4 	movw	lr, #39380	; 0x99d4
 8002094:	f249 1860 	movw	r8, #37216	; 0x9160
 8002098:	f6c0 0e00 	movt	lr, #2048	; 0x800
 800209c:	f6c0 0800 	movt	r8, #2048	; 0x800
 80020a0:	6199      	str	r1, [r3, #24]
 80020a2:	6941      	ldr	r1, [r0, #20]
 80020a4:	61d9      	str	r1, [r3, #28]
 80020a6:	6981      	ldr	r1, [r0, #24]
 80020a8:	6219      	str	r1, [r3, #32]
 80020aa:	eb03 1106 	add.w	r1, r3, r6, lsl #4
 80020ae:	69c0      	ldr	r0, [r0, #28]
 80020b0:	3908      	subs	r1, #8
 80020b2:	4291      	cmp	r1, r2
 80020b4:	6258      	str	r0, [r3, #36]	; 0x24
 80020b6:	f06f 0008 	mvn.w	r0, #8
 80020ba:	bf88      	it	hi
 80020bc:	460a      	movhi	r2, r1
 80020be:	2101      	movs	r1, #1
 80020c0:	1ac0      	subs	r0, r0, r3
 80020c2:	4410      	add	r0, r2
 80020c4:	eb01 1950 	add.w	r9, r1, r0, lsr #5
 80020c8:	2100      	movs	r1, #0
 80020ca:	eb03 05c1 	add.w	r5, r3, r1, lsl #3
 80020ce:	f1b9 0901 	subs.w	r9, r9, #1
 80020d2:	6a6e      	ldr	r6, [r5, #36]	; 0x24
 80020d4:	f3c6 4207 	ubfx	r2, r6, #16, #8
 80020d8:	f3c6 2407 	ubfx	r4, r6, #8, #8
 80020dc:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 80020e0:	f85e 2022 	ldr.w	r2, [lr, r2, lsl #2]
 80020e4:	ea84 040a 	eor.w	r4, r4, sl
 80020e8:	ea84 6232 	eor.w	r2, r4, r2, ror #24
 80020ec:	ea4f 6416 	mov.w	r4, r6, lsr #24
 80020f0:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 80020f4:	ea82 4234 	eor.w	r2, r2, r4, ror #16
 80020f8:	f858 4001 	ldr.w	r4, [r8, r1]
 80020fc:	f101 0104 	add.w	r1, r1, #4
 8002100:	ea82 0204 	eor.w	r2, r2, r4
 8002104:	b2f4      	uxtb	r4, r6
 8002106:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 800210a:	ea82 2a34 	eor.w	sl, r2, r4, ror #8
 800210e:	f8c5 a028 	str.w	sl, [r5, #40]	; 0x28
 8002112:	68ea      	ldr	r2, [r5, #12]
 8002114:	ea82 020a 	eor.w	r2, r2, sl
 8002118:	62ea      	str	r2, [r5, #44]	; 0x2c
 800211a:	692c      	ldr	r4, [r5, #16]
 800211c:	ea82 0204 	eor.w	r2, r2, r4
 8002120:	632a      	str	r2, [r5, #48]	; 0x30
 8002122:	696c      	ldr	r4, [r5, #20]
 8002124:	ea82 0204 	eor.w	r2, r2, r4
 8002128:	f3c2 2407 	ubfx	r4, r2, #8, #8
 800212c:	b2d0      	uxtb	r0, r2
 800212e:	636a      	str	r2, [r5, #52]	; 0x34
 8002130:	f85e b024 	ldr.w	fp, [lr, r4, lsl #2]
 8002134:	f85e 0020 	ldr.w	r0, [lr, r0, lsl #2]
 8002138:	69ac      	ldr	r4, [r5, #24]
 800213a:	ea80 0004 	eor.w	r0, r0, r4
 800213e:	f3c2 4407 	ubfx	r4, r2, #16, #8
 8002142:	ea4f 6212 	mov.w	r2, r2, lsr #24
 8002146:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 800214a:	f85e 2022 	ldr.w	r2, [lr, r2, lsl #2]
 800214e:	ea80 603b 	eor.w	r0, r0, fp, ror #24
 8002152:	ea80 4034 	eor.w	r0, r0, r4, ror #16
 8002156:	ea80 2032 	eor.w	r0, r0, r2, ror #8
 800215a:	63a8      	str	r0, [r5, #56]	; 0x38
 800215c:	69ea      	ldr	r2, [r5, #28]
 800215e:	ea80 0002 	eor.w	r0, r0, r2
 8002162:	63e8      	str	r0, [r5, #60]	; 0x3c
 8002164:	6a2a      	ldr	r2, [r5, #32]
 8002166:	ea80 0002 	eor.w	r0, r0, r2
 800216a:	6428      	str	r0, [r5, #64]	; 0x40
 800216c:	ea80 0006 	eor.w	r0, r0, r6
 8002170:	6468      	str	r0, [r5, #68]	; 0x44
 8002172:	d1aa      	bne.n	80020ca <set_key+0x154>
 8002174:	e04e      	b.n	8002214 <set_key+0x29e>
 8002176:	f103 0108 	add.w	r1, r3, #8
 800217a:	f649 14d4 	movw	r4, #39380	; 0x99d4
 800217e:	eb01 1106 	add.w	r1, r1, r6, lsl #4
 8002182:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002186:	3110      	adds	r1, #16
 8002188:	eba1 0e85 	sub.w	lr, r1, r5, lsl #2
 800218c:	6901      	ldr	r1, [r0, #16]
 800218e:	6199      	str	r1, [r3, #24]
 8002190:	f103 0134 	add.w	r1, r3, #52	; 0x34
 8002194:	6940      	ldr	r0, [r0, #20]
 8002196:	61d8      	str	r0, [r3, #28]
 8002198:	f249 1060 	movw	r0, #37216	; 0x9160
 800219c:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021a0:	f851 5c18 	ldr.w	r5, [r1, #-24]
 80021a4:	f3c5 4207 	ubfx	r2, r5, #16, #8
 80021a8:	f3c5 2607 	ubfx	r6, r5, #8, #8
 80021ac:	f854 6026 	ldr.w	r6, [r4, r6, lsl #2]
 80021b0:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 80021b4:	ea86 060a 	eor.w	r6, r6, sl
 80021b8:	ea86 6232 	eor.w	r2, r6, r2, ror #24
 80021bc:	0e2e      	lsrs	r6, r5, #24
 80021be:	f854 6026 	ldr.w	r6, [r4, r6, lsl #2]
 80021c2:	ea82 4236 	eor.w	r2, r2, r6, ror #16
 80021c6:	f850 6b04 	ldr.w	r6, [r0], #4
 80021ca:	4072      	eors	r2, r6
 80021cc:	b2ee      	uxtb	r6, r5
 80021ce:	f854 6026 	ldr.w	r6, [r4, r6, lsl #2]
 80021d2:	ea82 2a36 	eor.w	sl, r2, r6, ror #8
 80021d6:	f841 ac14 	str.w	sl, [r1, #-20]
 80021da:	f851 2c28 	ldr.w	r2, [r1, #-40]
 80021de:	ea82 020a 	eor.w	r2, r2, sl
 80021e2:	f841 2c10 	str.w	r2, [r1, #-16]
 80021e6:	f851 6c24 	ldr.w	r6, [r1, #-36]
 80021ea:	4072      	eors	r2, r6
 80021ec:	f841 2c0c 	str.w	r2, [r1, #-12]
 80021f0:	f851 6c20 	ldr.w	r6, [r1, #-32]
 80021f4:	4072      	eors	r2, r6
 80021f6:	f841 2c08 	str.w	r2, [r1, #-8]
 80021fa:	f851 6c1c 	ldr.w	r6, [r1, #-28]
 80021fe:	4072      	eors	r2, r6
 8002200:	f841 2c04 	str.w	r2, [r1, #-4]
 8002204:	406a      	eors	r2, r5
 8002206:	600a      	str	r2, [r1, #0]
 8002208:	f101 0218 	add.w	r2, r1, #24
 800220c:	3914      	subs	r1, #20
 800220e:	4571      	cmp	r1, lr
 8002210:	4611      	mov	r1, r2
 8002212:	d3c5      	bcc.n	80021a0 <set_key+0x22a>
 8002214:	f00c 0003 	and.w	r0, ip, #3
 8002218:	2801      	cmp	r0, #1
 800221a:	f000 809d 	beq.w	8002358 <set_key+0x3e2>
 800221e:	e9d3 0101 	ldrd	r0, r1, [r3, #4]
 8002222:	eb03 1c00 	add.w	ip, r3, r0, lsl #4
 8002226:	f8cc 1108 	str.w	r1, [ip, #264]	; 0x108
 800222a:	68d8      	ldr	r0, [r3, #12]
 800222c:	f8cc 010c 	str.w	r0, [ip, #268]	; 0x10c
 8002230:	6918      	ldr	r0, [r3, #16]
 8002232:	f8cc 0110 	str.w	r0, [ip, #272]	; 0x110
 8002236:	6958      	ldr	r0, [r3, #20]
 8002238:	f8cc 0114 	str.w	r0, [ip, #276]	; 0x114
 800223c:	6858      	ldr	r0, [r3, #4]
 800223e:	2802      	cmp	r0, #2
 8002240:	d379      	bcc.n	8002336 <set_key+0x3c0>
 8002242:	f24a 11d4 	movw	r1, #41428	; 0xa1d4
 8002246:	f04f 0801 	mov.w	r8, #1
 800224a:	f04f 0e00 	mov.w	lr, #0
 800224e:	2018      	movs	r0, #24
 8002250:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002254:	581c      	ldr	r4, [r3, r0]
 8002256:	f108 0801 	add.w	r8, r8, #1
 800225a:	f3c4 2507 	ubfx	r5, r4, #8, #8
 800225e:	b2e6      	uxtb	r6, r4
 8002260:	f851 5025 	ldr.w	r5, [r1, r5, lsl #2]
 8002264:	f851 6026 	ldr.w	r6, [r1, r6, lsl #2]
 8002268:	ea86 6535 	eor.w	r5, r6, r5, ror #24
 800226c:	f3c4 4607 	ubfx	r6, r4, #16, #8
 8002270:	0e24      	lsrs	r4, r4, #24
 8002272:	f851 6026 	ldr.w	r6, [r1, r6, lsl #2]
 8002276:	f851 4024 	ldr.w	r4, [r1, r4, lsl #2]
 800227a:	ea85 4536 	eor.w	r5, r5, r6, ror #16
 800227e:	ea85 2534 	eor.w	r5, r5, r4, ror #8
 8002282:	eb0c 040e 	add.w	r4, ip, lr
 8002286:	f1ae 0e10 	sub.w	lr, lr, #16
 800228a:	f8c4 50f8 	str.w	r5, [r4, #248]	; 0xf8
 800228e:	181d      	adds	r5, r3, r0
 8002290:	3010      	adds	r0, #16
 8002292:	686e      	ldr	r6, [r5, #4]
 8002294:	f3c6 2207 	ubfx	r2, r6, #8, #8
 8002298:	f851 9022 	ldr.w	r9, [r1, r2, lsl #2]
 800229c:	b2f2      	uxtb	r2, r6
 800229e:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 80022a2:	ea82 6939 	eor.w	r9, r2, r9, ror #24
 80022a6:	f3c6 4207 	ubfx	r2, r6, #16, #8
 80022aa:	0e36      	lsrs	r6, r6, #24
 80022ac:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 80022b0:	f851 6026 	ldr.w	r6, [r1, r6, lsl #2]
 80022b4:	ea89 4232 	eor.w	r2, r9, r2, ror #16
 80022b8:	ea82 2236 	eor.w	r2, r2, r6, ror #8
 80022bc:	f8c4 20fc 	str.w	r2, [r4, #252]	; 0xfc
 80022c0:	68aa      	ldr	r2, [r5, #8]
 80022c2:	f3c2 2607 	ubfx	r6, r2, #8, #8
 80022c6:	f851 9026 	ldr.w	r9, [r1, r6, lsl #2]
 80022ca:	b2d6      	uxtb	r6, r2
 80022cc:	f851 6026 	ldr.w	r6, [r1, r6, lsl #2]
 80022d0:	ea86 6939 	eor.w	r9, r6, r9, ror #24
 80022d4:	f3c2 4607 	ubfx	r6, r2, #16, #8
 80022d8:	0e12      	lsrs	r2, r2, #24
 80022da:	f851 6026 	ldr.w	r6, [r1, r6, lsl #2]
 80022de:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 80022e2:	ea89 4636 	eor.w	r6, r9, r6, ror #16
 80022e6:	ea86 2232 	eor.w	r2, r6, r2, ror #8
 80022ea:	f8c4 2100 	str.w	r2, [r4, #256]	; 0x100
 80022ee:	68ea      	ldr	r2, [r5, #12]
 80022f0:	f3c2 2507 	ubfx	r5, r2, #8, #8
 80022f4:	b2d6      	uxtb	r6, r2
 80022f6:	f851 5025 	ldr.w	r5, [r1, r5, lsl #2]
 80022fa:	f851 6026 	ldr.w	r6, [r1, r6, lsl #2]
 80022fe:	ea86 6535 	eor.w	r5, r6, r5, ror #24
 8002302:	f3c2 4607 	ubfx	r6, r2, #16, #8
 8002306:	0e12      	lsrs	r2, r2, #24
 8002308:	f851 6026 	ldr.w	r6, [r1, r6, lsl #2]
 800230c:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8002310:	ea85 4536 	eor.w	r5, r5, r6, ror #16
 8002314:	ea85 2232 	eor.w	r2, r5, r2, ror #8
 8002318:	f8c4 2104 	str.w	r2, [r4, #260]	; 0x104
 800231c:	685a      	ldr	r2, [r3, #4]
 800231e:	4590      	cmp	r8, r2
 8002320:	d398      	bcc.n	8002254 <set_key+0x2de>
 8002322:	eba3 000e 	sub.w	r0, r3, lr
 8002326:	eb0c 010e 	add.w	r1, ip, lr
 800232a:	f101 02f8 	add.w	r2, r1, #248	; 0xf8
 800232e:	3018      	adds	r0, #24
 8002330:	f501 7184 	add.w	r1, r1, #264	; 0x108
 8002334:	e005      	b.n	8002342 <set_key+0x3cc>
 8002336:	f10c 02f8 	add.w	r2, ip, #248	; 0xf8
 800233a:	f50c 7184 	add.w	r1, ip, #264	; 0x108
 800233e:	f103 0018 	add.w	r0, r3, #24
 8002342:	6803      	ldr	r3, [r0, #0]
 8002344:	6013      	str	r3, [r2, #0]
 8002346:	6842      	ldr	r2, [r0, #4]
 8002348:	f841 2c0c 	str.w	r2, [r1, #-12]
 800234c:	6882      	ldr	r2, [r0, #8]
 800234e:	f841 2c08 	str.w	r2, [r1, #-8]
 8002352:	68c0      	ldr	r0, [r0, #12]
 8002354:	f841 0c04 	str.w	r0, [r1, #-4]
 8002358:	2001      	movs	r0, #1
 800235a:	b200      	sxth	r0, r0
 800235c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002360:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002362 <encrypt>:
 8002362:	f892 3208 	ldrb.w	r3, [r2, #520]	; 0x208
 8002366:	07db      	lsls	r3, r3, #31
 8002368:	bf04      	itt	eq
 800236a:	2000      	moveq	r0, #0
 800236c:	4770      	bxeq	lr
 800236e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002370:	af03      	add	r7, sp, #12
 8002372:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002376:	b083      	sub	sp, #12
 8002378:	e9d0 9800 	ldrd	r9, r8, [r0]
 800237c:	e9d0 e002 	ldrd	lr, r0, [r0, #8]
 8002380:	e9d2 3a01 	ldrd	r3, sl, [r2, #4]
 8002384:	e9d2 5603 	ldrd	r5, r6, [r2, #12]
 8002388:	6954      	ldr	r4, [r2, #20]
 800238a:	ea84 0b00 	eor.w	fp, r4, r0
 800238e:	ea8e 0e06 	eor.w	lr, lr, r6
 8002392:	ea88 0805 	eor.w	r8, r8, r5
 8002396:	ea8a 0a09 	eor.w	sl, sl, r9
 800239a:	f102 0018 	add.w	r0, r2, #24
 800239e:	2b0a      	cmp	r3, #10
 80023a0:	f000 80d1 	beq.w	8002546 <encrypt+0x1e4>
 80023a4:	2b0c      	cmp	r3, #12
 80023a6:	f000 80d0 	beq.w	800254a <encrypt+0x1e8>
 80023aa:	2b0e      	cmp	r3, #14
 80023ac:	f040 8545 	bne.w	8002e3a <encrypt+0xad8>
 80023b0:	9102      	str	r1, [sp, #8]
 80023b2:	f3c8 2307 	ubfx	r3, r8, #8, #8
 80023b6:	e9d2 6106 	ldrd	r6, r1, [r2, #24]
 80023ba:	f249 10d4 	movw	r0, #37332	; 0x91d4
 80023be:	fa5f f58a 	uxtb.w	r5, sl
 80023c2:	465c      	mov	r4, fp
 80023c4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023c8:	fa5f f984 	uxtb.w	r9, r4
 80023cc:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 80023d0:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 80023d4:	9100      	str	r1, [sp, #0]
 80023d6:	6a11      	ldr	r1, [r2, #32]
 80023d8:	4075      	eors	r5, r6
 80023da:	f850 6029 	ldr.w	r6, [r0, r9, lsl #2]
 80023de:	ea85 6333 	eor.w	r3, r5, r3, ror #24
 80023e2:	9101      	str	r1, [sp, #4]
 80023e4:	f8d2 b024 	ldr.w	fp, [r2, #36]	; 0x24
 80023e8:	f3ce 4507 	ubfx	r5, lr, #16, #8
 80023ec:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 80023f0:	ea86 060b 	eor.w	r6, r6, fp
 80023f4:	ea83 4335 	eor.w	r3, r3, r5, ror #16
 80023f8:	0e25      	lsrs	r5, r4, #24
 80023fa:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 80023fe:	ea83 2c35 	eor.w	ip, r3, r5, ror #8
 8002402:	f3cc 2507 	ubfx	r5, ip, #8, #8
 8002406:	f850 3025 	ldr.w	r3, [r0, r5, lsl #2]
 800240a:	f3ca 2507 	ubfx	r5, sl, #8, #8
 800240e:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 8002412:	ea86 6535 	eor.w	r5, r6, r5, ror #24
 8002416:	f3c8 4607 	ubfx	r6, r8, #16, #8
 800241a:	6b51      	ldr	r1, [r2, #52]	; 0x34
 800241c:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002420:	ea85 4536 	eor.w	r5, r5, r6, ror #16
 8002424:	ea4f 661e 	mov.w	r6, lr, lsr #24
 8002428:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 800242c:	ea85 2b36 	eor.w	fp, r5, r6, ror #8
 8002430:	fa5f f68b 	uxtb.w	r6, fp
 8002434:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002438:	4071      	eors	r1, r6
 800243a:	f3ce 2607 	ubfx	r6, lr, #8, #8
 800243e:	9d00      	ldr	r5, [sp, #0]
 8002440:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8002444:	fa5f f388 	uxtb.w	r3, r8
 8002448:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 800244c:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8002450:	406b      	eors	r3, r5
 8002452:	ea83 6336 	eor.w	r3, r3, r6, ror #24
 8002456:	f3c4 4607 	ubfx	r6, r4, #16, #8
 800245a:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 800245e:	ea83 4336 	eor.w	r3, r3, r6, ror #16
 8002462:	ea4f 661a 	mov.w	r6, sl, lsr #24
 8002466:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 800246a:	ea83 2636 	eor.w	r6, r3, r6, ror #8
 800246e:	f3c6 4307 	ubfx	r3, r6, #16, #8
 8002472:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8002476:	ea81 4933 	eor.w	r9, r1, r3, ror #16
 800247a:	fa5f f18e 	uxtb.w	r1, lr
 800247e:	f3c4 2307 	ubfx	r3, r4, #8, #8
 8002482:	9d01      	ldr	r5, [sp, #4]
 8002484:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 8002488:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 800248c:	4069      	eors	r1, r5
 800248e:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8002492:	f3ca 4307 	ubfx	r3, sl, #16, #8
 8002496:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 800249a:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 800249e:	ea4f 6318 	mov.w	r3, r8, lsr #24
 80024a2:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 80024a6:	ea81 2433 	eor.w	r4, r1, r3, ror #8
 80024aa:	0e21      	lsrs	r1, r4, #24
 80024ac:	b2e3      	uxtb	r3, r4
 80024ae:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 80024b2:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 80024b6:	ea89 2931 	eor.w	r9, r9, r1, ror #8
 80024ba:	f3cb 2107 	ubfx	r1, fp, #8, #8
 80024be:	6b15      	ldr	r5, [r2, #48]	; 0x30
 80024c0:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 80024c4:	406b      	eors	r3, r5
 80024c6:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 80024ca:	f3cc 4307 	ubfx	r3, ip, #16, #8
 80024ce:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 80024d2:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 80024d6:	0e33      	lsrs	r3, r6, #24
 80024d8:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 80024dc:	ea81 2e33 	eor.w	lr, r1, r3, ror #8
 80024e0:	b2f3      	uxtb	r3, r6
 80024e2:	f3c4 2107 	ubfx	r1, r4, #8, #8
 80024e6:	6ad5      	ldr	r5, [r2, #44]	; 0x2c
 80024e8:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 80024ec:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 80024f0:	406b      	eors	r3, r5
 80024f2:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 80024f6:	f3cb 4307 	ubfx	r3, fp, #16, #8
 80024fa:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 80024fe:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002502:	ea4f 631c 	mov.w	r3, ip, lsr #24
 8002506:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 800250a:	ea81 2833 	eor.w	r8, r1, r3, ror #8
 800250e:	fa5f f38c 	uxtb.w	r3, ip
 8002512:	f3c6 2107 	ubfx	r1, r6, #8, #8
 8002516:	6a95      	ldr	r5, [r2, #40]	; 0x28
 8002518:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 800251c:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 8002520:	406b      	eors	r3, r5
 8002522:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 8002526:	f3c4 4307 	ubfx	r3, r4, #16, #8
 800252a:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 800252e:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002532:	ea4f 631b 	mov.w	r3, fp, lsr #24
 8002536:	46cb      	mov	fp, r9
 8002538:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 800253c:	ea81 2a30 	eor.w	sl, r1, r0, ror #8
 8002540:	f102 0038 	add.w	r0, r2, #56	; 0x38
 8002544:	e002      	b.n	800254c <encrypt+0x1ea>
 8002546:	9102      	str	r1, [sp, #8]
 8002548:	e0c6      	b.n	80026d8 <encrypt+0x376>
 800254a:	9102      	str	r1, [sp, #8]
 800254c:	f249 12d4 	movw	r2, #37332	; 0x91d4
 8002550:	fa5f f38a 	uxtb.w	r3, sl
 8002554:	f3c8 2107 	ubfx	r1, r8, #8, #8
 8002558:	e9d0 5c00 	ldrd	r5, ip, [r0]
 800255c:	6884      	ldr	r4, [r0, #8]
 800255e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002562:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002566:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800256a:	9401      	str	r4, [sp, #4]
 800256c:	465c      	mov	r4, fp
 800256e:	68c6      	ldr	r6, [r0, #12]
 8002570:	406b      	eors	r3, r5
 8002572:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 8002576:	f3ce 4307 	ubfx	r3, lr, #16, #8
 800257a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800257e:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002582:	ea4f 631b 	mov.w	r3, fp, lsr #24
 8002586:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800258a:	ea81 2933 	eor.w	r9, r1, r3, ror #8
 800258e:	f3c9 2107 	ubfx	r1, r9, #8, #8
 8002592:	f3ca 2507 	ubfx	r5, sl, #8, #8
 8002596:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
 800259a:	fa5f f18b 	uxtb.w	r1, fp
 800259e:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80025a2:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80025a6:	4071      	eors	r1, r6
 80025a8:	ea81 6135 	eor.w	r1, r1, r5, ror #24
 80025ac:	f3c8 4507 	ubfx	r5, r8, #16, #8
 80025b0:	69c6      	ldr	r6, [r0, #28]
 80025b2:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80025b6:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 80025ba:	ea4f 651e 	mov.w	r5, lr, lsr #24
 80025be:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80025c2:	ea81 2b35 	eor.w	fp, r1, r5, ror #8
 80025c6:	fa5f f18b 	uxtb.w	r1, fp
 80025ca:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80025ce:	4071      	eors	r1, r6
 80025d0:	f3ce 2607 	ubfx	r6, lr, #8, #8
 80025d4:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 80025d8:	fa5f f388 	uxtb.w	r3, r8
 80025dc:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80025e0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80025e4:	ea83 030c 	eor.w	r3, r3, ip
 80025e8:	ea83 6336 	eor.w	r3, r3, r6, ror #24
 80025ec:	f3c4 4607 	ubfx	r6, r4, #16, #8
 80025f0:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80025f4:	ea83 4336 	eor.w	r3, r3, r6, ror #16
 80025f8:	ea4f 661a 	mov.w	r6, sl, lsr #24
 80025fc:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002600:	ea83 2636 	eor.w	r6, r3, r6, ror #8
 8002604:	f3c6 4307 	ubfx	r3, r6, #16, #8
 8002608:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800260c:	ea81 4533 	eor.w	r5, r1, r3, ror #16
 8002610:	fa5f f18e 	uxtb.w	r1, lr
 8002614:	f3c4 2307 	ubfx	r3, r4, #8, #8
 8002618:	9c01      	ldr	r4, [sp, #4]
 800261a:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800261e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002622:	4061      	eors	r1, r4
 8002624:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8002628:	f3ca 4307 	ubfx	r3, sl, #16, #8
 800262c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002630:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002634:	ea4f 6318 	mov.w	r3, r8, lsr #24
 8002638:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800263c:	ea81 2433 	eor.w	r4, r1, r3, ror #8
 8002640:	0e21      	lsrs	r1, r4, #24
 8002642:	b2e3      	uxtb	r3, r4
 8002644:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002648:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800264c:	ea85 2c31 	eor.w	ip, r5, r1, ror #8
 8002650:	f3cb 2107 	ubfx	r1, fp, #8, #8
 8002654:	6985      	ldr	r5, [r0, #24]
 8002656:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800265a:	406b      	eors	r3, r5
 800265c:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 8002660:	f3c9 4307 	ubfx	r3, r9, #16, #8
 8002664:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002668:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 800266c:	0e33      	lsrs	r3, r6, #24
 800266e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002672:	ea81 2e33 	eor.w	lr, r1, r3, ror #8
 8002676:	b2f3      	uxtb	r3, r6
 8002678:	f3c4 2107 	ubfx	r1, r4, #8, #8
 800267c:	6945      	ldr	r5, [r0, #20]
 800267e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002682:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002686:	406b      	eors	r3, r5
 8002688:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 800268c:	f3cb 4307 	ubfx	r3, fp, #16, #8
 8002690:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002694:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002698:	ea4f 6319 	mov.w	r3, r9, lsr #24
 800269c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80026a0:	ea81 2833 	eor.w	r8, r1, r3, ror #8
 80026a4:	fa5f f389 	uxtb.w	r3, r9
 80026a8:	f3c6 2107 	ubfx	r1, r6, #8, #8
 80026ac:	6905      	ldr	r5, [r0, #16]
 80026ae:	3020      	adds	r0, #32
 80026b0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80026b4:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80026b8:	406b      	eors	r3, r5
 80026ba:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 80026be:	f3c4 4307 	ubfx	r3, r4, #16, #8
 80026c2:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80026c6:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 80026ca:	ea4f 631b 	mov.w	r3, fp, lsr #24
 80026ce:	46e3      	mov	fp, ip
 80026d0:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80026d4:	ea81 2a32 	eor.w	sl, r1, r2, ror #8
 80026d8:	f249 12d4 	movw	r2, #37332	; 0x91d4
 80026dc:	fa5f f38a 	uxtb.w	r3, sl
 80026e0:	f3c8 2107 	ubfx	r1, r8, #8, #8
 80026e4:	e9d0 6400 	ldrd	r6, r4, [r0]
 80026e8:	6885      	ldr	r5, [r0, #8]
 80026ea:	f6c0 0200 	movt	r2, #2048	; 0x800
 80026ee:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80026f2:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80026f6:	9501      	str	r5, [sp, #4]
 80026f8:	68c5      	ldr	r5, [r0, #12]
 80026fa:	4073      	eors	r3, r6
 80026fc:	fa5f f68b 	uxtb.w	r6, fp
 8002700:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 8002704:	f3ce 4307 	ubfx	r3, lr, #16, #8
 8002708:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 800270c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002710:	4075      	eors	r5, r6
 8002712:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002716:	ea4f 631b 	mov.w	r3, fp, lsr #24
 800271a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800271e:	ea81 2933 	eor.w	r9, r1, r3, ror #8
 8002722:	f3c9 2107 	ubfx	r1, r9, #8, #8
 8002726:	f3ca 2307 	ubfx	r3, sl, #8, #8
 800272a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800272e:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002732:	ea85 6333 	eor.w	r3, r5, r3, ror #24
 8002736:	f3c8 4507 	ubfx	r5, r8, #16, #8
 800273a:	69c6      	ldr	r6, [r0, #28]
 800273c:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002740:	ea83 4335 	eor.w	r3, r3, r5, ror #16
 8002744:	ea4f 651e 	mov.w	r5, lr, lsr #24
 8002748:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800274c:	ea83 2c35 	eor.w	ip, r3, r5, ror #8
 8002750:	fa5f f58c 	uxtb.w	r5, ip
 8002754:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002758:	4075      	eors	r5, r6
 800275a:	fa5f f688 	uxtb.w	r6, r8
 800275e:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002762:	ea85 6131 	eor.w	r1, r5, r1, ror #24
 8002766:	f3ce 2507 	ubfx	r5, lr, #8, #8
 800276a:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800276e:	4066      	eors	r6, r4
 8002770:	fa5f f48e 	uxtb.w	r4, lr
 8002774:	ea86 6535 	eor.w	r5, r6, r5, ror #24
 8002778:	f3cb 4607 	ubfx	r6, fp, #16, #8
 800277c:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002780:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002784:	ea85 4536 	eor.w	r5, r5, r6, ror #16
 8002788:	ea4f 661a 	mov.w	r6, sl, lsr #24
 800278c:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002790:	ea85 2536 	eor.w	r5, r5, r6, ror #8
 8002794:	f3c5 4607 	ubfx	r6, r5, #16, #8
 8002798:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 800279c:	ea81 4136 	eor.w	r1, r1, r6, ror #16
 80027a0:	f3cb 2607 	ubfx	r6, fp, #8, #8
 80027a4:	9b01      	ldr	r3, [sp, #4]
 80027a6:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80027aa:	405c      	eors	r4, r3
 80027ac:	ea84 6636 	eor.w	r6, r4, r6, ror #24
 80027b0:	f3ca 4407 	ubfx	r4, sl, #16, #8
 80027b4:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80027b8:	ea86 4634 	eor.w	r6, r6, r4, ror #16
 80027bc:	ea4f 6418 	mov.w	r4, r8, lsr #24
 80027c0:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80027c4:	ea86 2634 	eor.w	r6, r6, r4, ror #8
 80027c8:	0e34      	lsrs	r4, r6, #24
 80027ca:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80027ce:	ea81 2b34 	eor.w	fp, r1, r4, ror #8
 80027d2:	f3cb 2107 	ubfx	r1, fp, #8, #8
 80027d6:	f3cc 2407 	ubfx	r4, ip, #8, #8
 80027da:	6983      	ldr	r3, [r0, #24]
 80027dc:	f852 e021 	ldr.w	lr, [r2, r1, lsl #2]
 80027e0:	b2f1      	uxtb	r1, r6
 80027e2:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80027e6:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80027ea:	4059      	eors	r1, r3
 80027ec:	f3c9 4307 	ubfx	r3, r9, #16, #8
 80027f0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80027f4:	ea81 6134 	eor.w	r1, r1, r4, ror #24
 80027f8:	fa5f f489 	uxtb.w	r4, r9
 80027fc:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002800:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002804:	0e2b      	lsrs	r3, r5, #24
 8002806:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800280a:	ea81 2833 	eor.w	r8, r1, r3, ror #8
 800280e:	6a83      	ldr	r3, [r0, #40]	; 0x28
 8002810:	fa5f f188 	uxtb.w	r1, r8
 8002814:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002818:	4059      	eors	r1, r3
 800281a:	f3c5 2307 	ubfx	r3, r5, #8, #8
 800281e:	ea81 6e3e 	eor.w	lr, r1, lr, ror #24
 8002822:	6901      	ldr	r1, [r0, #16]
 8002824:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002828:	4061      	eors	r1, r4
 800282a:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 800282e:	f3c6 4307 	ubfx	r3, r6, #16, #8
 8002832:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002836:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 800283a:	ea4f 631c 	mov.w	r3, ip, lsr #24
 800283e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002842:	ea81 2433 	eor.w	r4, r1, r3, ror #8
 8002846:	f3c4 4107 	ubfx	r1, r4, #16, #8
 800284a:	f3c6 2307 	ubfx	r3, r6, #8, #8
 800284e:	b2ee      	uxtb	r6, r5
 8002850:	6945      	ldr	r5, [r0, #20]
 8002852:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002856:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800285a:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800285e:	406e      	eors	r6, r5
 8002860:	ea8e 4131 	eor.w	r1, lr, r1, ror #16
 8002864:	ea86 6333 	eor.w	r3, r6, r3, ror #24
 8002868:	f3cc 4607 	ubfx	r6, ip, #16, #8
 800286c:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002870:	ea83 4336 	eor.w	r3, r3, r6, ror #16
 8002874:	ea4f 6619 	mov.w	r6, r9, lsr #24
 8002878:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 800287c:	ea83 2636 	eor.w	r6, r3, r6, ror #8
 8002880:	0e33      	lsrs	r3, r6, #24
 8002882:	b2f5      	uxtb	r5, r6
 8002884:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002888:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800288c:	ea81 2e33 	eor.w	lr, r1, r3, ror #8
 8002890:	f3ce 2107 	ubfx	r1, lr, #8, #8
 8002894:	f3c8 2307 	ubfx	r3, r8, #8, #8
 8002898:	f852 a021 	ldr.w	sl, [r2, r1, lsl #2]
 800289c:	6a41      	ldr	r1, [r0, #36]	; 0x24
 800289e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80028a2:	4069      	eors	r1, r5
 80028a4:	fa5f f58b 	uxtb.w	r5, fp
 80028a8:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 80028ac:	f3cb 4307 	ubfx	r3, fp, #16, #8
 80028b0:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80028b4:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80028b8:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 80028bc:	0e23      	lsrs	r3, r4, #24
 80028be:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80028c2:	ea81 2933 	eor.w	r9, r1, r3, ror #8
 80028c6:	6b43      	ldr	r3, [r0, #52]	; 0x34
 80028c8:	fa5f f189 	uxtb.w	r1, r9
 80028cc:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80028d0:	4059      	eors	r1, r3
 80028d2:	f3c4 2307 	ubfx	r3, r4, #8, #8
 80028d6:	b2e4      	uxtb	r4, r4
 80028d8:	ea81 6a3a 	eor.w	sl, r1, sl, ror #24
 80028dc:	6ac1      	ldr	r1, [r0, #44]	; 0x2c
 80028de:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80028e2:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80028e6:	4069      	eors	r1, r5
 80028e8:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 80028ec:	f3c6 4307 	ubfx	r3, r6, #16, #8
 80028f0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80028f4:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 80028f8:	ea4f 6318 	mov.w	r3, r8, lsr #24
 80028fc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002900:	ea81 2333 	eor.w	r3, r1, r3, ror #8
 8002904:	f3c3 4107 	ubfx	r1, r3, #16, #8
 8002908:	f3c6 2507 	ubfx	r5, r6, #8, #8
 800290c:	6a06      	ldr	r6, [r0, #32]
 800290e:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002912:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002916:	4074      	eors	r4, r6
 8002918:	ea4f 661b 	mov.w	r6, fp, lsr #24
 800291c:	ea84 6435 	eor.w	r4, r4, r5, ror #24
 8002920:	f3c8 4507 	ubfx	r5, r8, #16, #8
 8002924:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002928:	ea8a 4131 	eor.w	r1, sl, r1, ror #16
 800292c:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002930:	ea84 4435 	eor.w	r4, r4, r5, ror #16
 8002934:	ea84 2536 	eor.w	r5, r4, r6, ror #8
 8002938:	0e2e      	lsrs	r6, r5, #24
 800293a:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 800293e:	ea81 2c36 	eor.w	ip, r1, r6, ror #8
 8002942:	b2ee      	uxtb	r6, r5
 8002944:	f3cc 2107 	ubfx	r1, ip, #8, #8
 8002948:	f3c9 2407 	ubfx	r4, r9, #8, #8
 800294c:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002950:	f852 8021 	ldr.w	r8, [r2, r1, lsl #2]
 8002954:	6b01      	ldr	r1, [r0, #48]	; 0x30
 8002956:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 800295a:	4071      	eors	r1, r6
 800295c:	fa5f f68e 	uxtb.w	r6, lr
 8002960:	ea81 6134 	eor.w	r1, r1, r4, ror #24
 8002964:	f3ce 4407 	ubfx	r4, lr, #16, #8
 8002968:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 800296c:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002970:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 8002974:	0e1c      	lsrs	r4, r3, #24
 8002976:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 800297a:	ea81 2a34 	eor.w	sl, r1, r4, ror #8
 800297e:	6c04      	ldr	r4, [r0, #64]	; 0x40
 8002980:	fa5f f18a 	uxtb.w	r1, sl
 8002984:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002988:	4061      	eors	r1, r4
 800298a:	f3c3 2407 	ubfx	r4, r3, #8, #8
 800298e:	b2db      	uxtb	r3, r3
 8002990:	ea81 6838 	eor.w	r8, r1, r8, ror #24
 8002994:	6b81      	ldr	r1, [r0, #56]	; 0x38
 8002996:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 800299a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800299e:	4071      	eors	r1, r6
 80029a0:	ea81 6134 	eor.w	r1, r1, r4, ror #24
 80029a4:	f3c5 4407 	ubfx	r4, r5, #16, #8
 80029a8:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80029ac:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 80029b0:	ea4f 6419 	mov.w	r4, r9, lsr #24
 80029b4:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80029b8:	ea81 2434 	eor.w	r4, r1, r4, ror #8
 80029bc:	f3c4 4107 	ubfx	r1, r4, #16, #8
 80029c0:	f3c5 2507 	ubfx	r5, r5, #8, #8
 80029c4:	6bc6      	ldr	r6, [r0, #60]	; 0x3c
 80029c6:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80029ca:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80029ce:	4073      	eors	r3, r6
 80029d0:	ea4f 661e 	mov.w	r6, lr, lsr #24
 80029d4:	ea83 6335 	eor.w	r3, r3, r5, ror #24
 80029d8:	f3c9 4507 	ubfx	r5, r9, #16, #8
 80029dc:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80029e0:	ea88 4131 	eor.w	r1, r8, r1, ror #16
 80029e4:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80029e8:	ea83 4335 	eor.w	r3, r3, r5, ror #16
 80029ec:	ea83 2536 	eor.w	r5, r3, r6, ror #8
 80029f0:	0e2b      	lsrs	r3, r5, #24
 80029f2:	b2ee      	uxtb	r6, r5
 80029f4:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80029f8:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80029fc:	ea81 2e33 	eor.w	lr, r1, r3, ror #8
 8002a00:	f3ce 2107 	ubfx	r1, lr, #8, #8
 8002a04:	f3ca 2307 	ubfx	r3, sl, #8, #8
 8002a08:	f852 9021 	ldr.w	r9, [r2, r1, lsl #2]
 8002a0c:	6cc1      	ldr	r1, [r0, #76]	; 0x4c
 8002a0e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002a12:	4071      	eors	r1, r6
 8002a14:	fa5f f68c 	uxtb.w	r6, ip
 8002a18:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8002a1c:	f3cc 4307 	ubfx	r3, ip, #16, #8
 8002a20:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002a24:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002a28:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002a2c:	0e23      	lsrs	r3, r4, #24
 8002a2e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002a32:	ea81 2833 	eor.w	r8, r1, r3, ror #8
 8002a36:	6dc3      	ldr	r3, [r0, #92]	; 0x5c
 8002a38:	fa5f f188 	uxtb.w	r1, r8
 8002a3c:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002a40:	4059      	eors	r1, r3
 8002a42:	f3c4 2307 	ubfx	r3, r4, #8, #8
 8002a46:	b2e4      	uxtb	r4, r4
 8002a48:	ea81 6939 	eor.w	r9, r1, r9, ror #24
 8002a4c:	6c41      	ldr	r1, [r0, #68]	; 0x44
 8002a4e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002a52:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002a56:	4071      	eors	r1, r6
 8002a58:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8002a5c:	f3c5 4307 	ubfx	r3, r5, #16, #8
 8002a60:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002a64:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002a68:	ea4f 631a 	mov.w	r3, sl, lsr #24
 8002a6c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002a70:	ea81 2333 	eor.w	r3, r1, r3, ror #8
 8002a74:	f3c3 4107 	ubfx	r1, r3, #16, #8
 8002a78:	f3c5 2507 	ubfx	r5, r5, #8, #8
 8002a7c:	6c86      	ldr	r6, [r0, #72]	; 0x48
 8002a7e:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002a82:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002a86:	4074      	eors	r4, r6
 8002a88:	ea4f 661c 	mov.w	r6, ip, lsr #24
 8002a8c:	ea84 6435 	eor.w	r4, r4, r5, ror #24
 8002a90:	f3ca 4507 	ubfx	r5, sl, #16, #8
 8002a94:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002a98:	ea89 4131 	eor.w	r1, r9, r1, ror #16
 8002a9c:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002aa0:	ea84 4435 	eor.w	r4, r4, r5, ror #16
 8002aa4:	ea84 2536 	eor.w	r5, r4, r6, ror #8
 8002aa8:	0e2e      	lsrs	r6, r5, #24
 8002aaa:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002aae:	ea81 2c36 	eor.w	ip, r1, r6, ror #8
 8002ab2:	b2ee      	uxtb	r6, r5
 8002ab4:	f3cc 2107 	ubfx	r1, ip, #8, #8
 8002ab8:	f3c8 2407 	ubfx	r4, r8, #8, #8
 8002abc:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002ac0:	f852 9021 	ldr.w	r9, [r2, r1, lsl #2]
 8002ac4:	6d81      	ldr	r1, [r0, #88]	; 0x58
 8002ac6:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002aca:	4071      	eors	r1, r6
 8002acc:	fa5f f68e 	uxtb.w	r6, lr
 8002ad0:	ea81 6134 	eor.w	r1, r1, r4, ror #24
 8002ad4:	f3ce 4407 	ubfx	r4, lr, #16, #8
 8002ad8:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002adc:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002ae0:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 8002ae4:	0e1c      	lsrs	r4, r3, #24
 8002ae6:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002aea:	ea81 2a34 	eor.w	sl, r1, r4, ror #8
 8002aee:	6e84      	ldr	r4, [r0, #104]	; 0x68
 8002af0:	fa5f f18a 	uxtb.w	r1, sl
 8002af4:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002af8:	4061      	eors	r1, r4
 8002afa:	f3c3 2407 	ubfx	r4, r3, #8, #8
 8002afe:	b2db      	uxtb	r3, r3
 8002b00:	ea81 6939 	eor.w	r9, r1, r9, ror #24
 8002b04:	6d01      	ldr	r1, [r0, #80]	; 0x50
 8002b06:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002b0a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002b0e:	4071      	eors	r1, r6
 8002b10:	ea81 6134 	eor.w	r1, r1, r4, ror #24
 8002b14:	f3c5 4407 	ubfx	r4, r5, #16, #8
 8002b18:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002b1c:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 8002b20:	ea4f 6418 	mov.w	r4, r8, lsr #24
 8002b24:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002b28:	ea81 2434 	eor.w	r4, r1, r4, ror #8
 8002b2c:	f3c4 4107 	ubfx	r1, r4, #16, #8
 8002b30:	f3c5 2507 	ubfx	r5, r5, #8, #8
 8002b34:	6d46      	ldr	r6, [r0, #84]	; 0x54
 8002b36:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002b3a:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002b3e:	4073      	eors	r3, r6
 8002b40:	ea4f 661e 	mov.w	r6, lr, lsr #24
 8002b44:	ea83 6335 	eor.w	r3, r3, r5, ror #24
 8002b48:	f3c8 4507 	ubfx	r5, r8, #16, #8
 8002b4c:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002b50:	ea89 4131 	eor.w	r1, r9, r1, ror #16
 8002b54:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002b58:	ea83 4335 	eor.w	r3, r3, r5, ror #16
 8002b5c:	ea83 2536 	eor.w	r5, r3, r6, ror #8
 8002b60:	0e2b      	lsrs	r3, r5, #24
 8002b62:	b2ee      	uxtb	r6, r5
 8002b64:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002b68:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002b6c:	ea81 2833 	eor.w	r8, r1, r3, ror #8
 8002b70:	f3c8 2107 	ubfx	r1, r8, #8, #8
 8002b74:	f3ca 2307 	ubfx	r3, sl, #8, #8
 8002b78:	f852 e021 	ldr.w	lr, [r2, r1, lsl #2]
 8002b7c:	6e41      	ldr	r1, [r0, #100]	; 0x64
 8002b7e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002b82:	4071      	eors	r1, r6
 8002b84:	fa5f f68c 	uxtb.w	r6, ip
 8002b88:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8002b8c:	f3cc 4307 	ubfx	r3, ip, #16, #8
 8002b90:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002b94:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002b98:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002b9c:	0e23      	lsrs	r3, r4, #24
 8002b9e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002ba2:	ea81 2933 	eor.w	r9, r1, r3, ror #8
 8002ba6:	6f43      	ldr	r3, [r0, #116]	; 0x74
 8002ba8:	fa5f f189 	uxtb.w	r1, r9
 8002bac:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002bb0:	4059      	eors	r1, r3
 8002bb2:	f3c4 2307 	ubfx	r3, r4, #8, #8
 8002bb6:	ea81 6e3e 	eor.w	lr, r1, lr, ror #24
 8002bba:	6ec1      	ldr	r1, [r0, #108]	; 0x6c
 8002bbc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002bc0:	4071      	eors	r1, r6
 8002bc2:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8002bc6:	f3c5 4307 	ubfx	r3, r5, #16, #8
 8002bca:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002bce:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002bd2:	ea4f 631a 	mov.w	r3, sl, lsr #24
 8002bd6:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002bda:	ea81 2333 	eor.w	r3, r1, r3, ror #8
 8002bde:	f3c3 4107 	ubfx	r1, r3, #16, #8
 8002be2:	f3c5 2607 	ubfx	r6, r5, #8, #8
 8002be6:	b2e5      	uxtb	r5, r4
 8002be8:	6e04      	ldr	r4, [r0, #96]	; 0x60
 8002bea:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002bee:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002bf2:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002bf6:	4065      	eors	r5, r4
 8002bf8:	ea8e 4131 	eor.w	r1, lr, r1, ror #16
 8002bfc:	ea85 6636 	eor.w	r6, r5, r6, ror #24
 8002c00:	f3ca 4507 	ubfx	r5, sl, #16, #8
 8002c04:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002c08:	ea86 4635 	eor.w	r6, r6, r5, ror #16
 8002c0c:	ea4f 651c 	mov.w	r5, ip, lsr #24
 8002c10:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002c14:	ea86 2435 	eor.w	r4, r6, r5, ror #8
 8002c18:	0e26      	lsrs	r6, r4, #24
 8002c1a:	b2e5      	uxtb	r5, r4
 8002c1c:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002c20:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002c24:	ea81 2c36 	eor.w	ip, r1, r6, ror #8
 8002c28:	f3cc 2107 	ubfx	r1, ip, #8, #8
 8002c2c:	f3c9 2607 	ubfx	r6, r9, #8, #8
 8002c30:	f852 a021 	ldr.w	sl, [r2, r1, lsl #2]
 8002c34:	6f01      	ldr	r1, [r0, #112]	; 0x70
 8002c36:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002c3a:	4069      	eors	r1, r5
 8002c3c:	ea81 6136 	eor.w	r1, r1, r6, ror #24
 8002c40:	f3c8 4607 	ubfx	r6, r8, #16, #8
 8002c44:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
 8002c48:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002c4c:	ea81 4136 	eor.w	r1, r1, r6, ror #16
 8002c50:	0e1e      	lsrs	r6, r3, #24
 8002c52:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002c56:	ea81 2e36 	eor.w	lr, r1, r6, ror #8
 8002c5a:	fa5f f688 	uxtb.w	r6, r8
 8002c5e:	fa5f f18e 	uxtb.w	r1, lr
 8002c62:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002c66:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002c6a:	4069      	eors	r1, r5
 8002c6c:	f3c3 2507 	ubfx	r5, r3, #8, #8
 8002c70:	b2db      	uxtb	r3, r3
 8002c72:	ea81 6a3a 	eor.w	sl, r1, sl, ror #24
 8002c76:	6f81      	ldr	r1, [r0, #120]	; 0x78
 8002c78:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002c7c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002c80:	4071      	eors	r1, r6
 8002c82:	ea81 6135 	eor.w	r1, r1, r5, ror #24
 8002c86:	f3c4 4507 	ubfx	r5, r4, #16, #8
 8002c8a:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002c8e:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 8002c92:	ea4f 6519 	mov.w	r5, r9, lsr #24
 8002c96:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002c9a:	ea81 2b35 	eor.w	fp, r1, r5, ror #8
 8002c9e:	f3cb 4107 	ubfx	r1, fp, #16, #8
 8002ca2:	f3c4 2407 	ubfx	r4, r4, #8, #8
 8002ca6:	6fc6      	ldr	r6, [r0, #124]	; 0x7c
 8002ca8:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002cac:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002cb0:	4073      	eors	r3, r6
 8002cb2:	ea83 6334 	eor.w	r3, r3, r4, ror #24
 8002cb6:	f3c9 4407 	ubfx	r4, r9, #16, #8
 8002cba:	ea8a 4131 	eor.w	r1, sl, r1, ror #16
 8002cbe:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002cc2:	ea83 4334 	eor.w	r3, r3, r4, ror #16
 8002cc6:	ea4f 6418 	mov.w	r4, r8, lsr #24
 8002cca:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002cce:	ea83 2334 	eor.w	r3, r3, r4, ror #8
 8002cd2:	0e1c      	lsrs	r4, r3, #24
 8002cd4:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8002cd8:	ea81 2934 	eor.w	r9, r1, r4, ror #8
 8002cdc:	f649 14d4 	movw	r4, #39380	; 0x99d4
 8002ce0:	f3c9 2107 	ubfx	r1, r9, #8, #8
 8002ce4:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002ce8:	f3ce 2607 	ubfx	r6, lr, #8, #8
 8002cec:	f8d0 508c 	ldr.w	r5, [r0, #140]	; 0x8c
 8002cf0:	f854 8021 	ldr.w	r8, [r4, r1, lsl #2]
 8002cf4:	b2d9      	uxtb	r1, r3
 8002cf6:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002cfa:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8002cfe:	4069      	eors	r1, r5
 8002d00:	f3cc 4507 	ubfx	r5, ip, #16, #8
 8002d04:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002d08:	ea81 6136 	eor.w	r1, r1, r6, ror #24
 8002d0c:	fa5f f68c 	uxtb.w	r6, ip
 8002d10:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8002d14:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 8002d18:	ea4f 651b 	mov.w	r5, fp, lsr #24
 8002d1c:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002d20:	ea81 2a35 	eor.w	sl, r1, r5, ror #8
 8002d24:	f8d0 509c 	ldr.w	r5, [r0, #156]	; 0x9c
 8002d28:	fa5f f18a 	uxtb.w	r1, sl
 8002d2c:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8002d30:	4069      	eors	r1, r5
 8002d32:	f3cb 2507 	ubfx	r5, fp, #8, #8
 8002d36:	ea81 2808 	eor.w	r8, r1, r8, lsl #8
 8002d3a:	f8d0 1084 	ldr.w	r1, [r0, #132]	; 0x84
 8002d3e:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002d42:	4071      	eors	r1, r6
 8002d44:	ea81 6135 	eor.w	r1, r1, r5, ror #24
 8002d48:	f3c3 4507 	ubfx	r5, r3, #16, #8
 8002d4c:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002d50:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 8002d54:	ea4f 651e 	mov.w	r5, lr, lsr #24
 8002d58:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002d5c:	ea81 2635 	eor.w	r6, r1, r5, ror #8
 8002d60:	fa5f f58b 	uxtb.w	r5, fp
 8002d64:	f3c6 4107 	ubfx	r1, r6, #16, #8
 8002d68:	f3c3 2307 	ubfx	r3, r3, #8, #8
 8002d6c:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8002d70:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8002d74:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002d78:	ea88 4801 	eor.w	r8, r8, r1, lsl #16
 8002d7c:	f8d0 1088 	ldr.w	r1, [r0, #136]	; 0x88
 8002d80:	4069      	eors	r1, r5
 8002d82:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8002d86:	f3ce 4307 	ubfx	r3, lr, #16, #8
 8002d8a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002d8e:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002d92:	ea4f 631c 	mov.w	r3, ip, lsr #24
 8002d96:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8002d9a:	ea81 2232 	eor.w	r2, r1, r2, ror #8
 8002d9e:	0e11      	lsrs	r1, r2, #24
 8002da0:	b2d3      	uxtb	r3, r2
 8002da2:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8002da6:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002daa:	ea88 6b01 	eor.w	fp, r8, r1, lsl #24
 8002dae:	f3ca 2107 	ubfx	r1, sl, #8, #8
 8002db2:	f8d0 5098 	ldr.w	r5, [r0, #152]	; 0x98
 8002db6:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8002dba:	406b      	eors	r3, r5
 8002dbc:	ea83 2101 	eor.w	r1, r3, r1, lsl #8
 8002dc0:	f3c9 4307 	ubfx	r3, r9, #16, #8
 8002dc4:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002dc8:	ea81 4103 	eor.w	r1, r1, r3, lsl #16
 8002dcc:	0e33      	lsrs	r3, r6, #24
 8002dce:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002dd2:	ea81 6e03 	eor.w	lr, r1, r3, lsl #24
 8002dd6:	b2f3      	uxtb	r3, r6
 8002dd8:	f3c2 2107 	ubfx	r1, r2, #8, #8
 8002ddc:	f8d0 5094 	ldr.w	r5, [r0, #148]	; 0x94
 8002de0:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002de4:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8002de8:	406b      	eors	r3, r5
 8002dea:	ea83 2101 	eor.w	r1, r3, r1, lsl #8
 8002dee:	f3ca 4307 	ubfx	r3, sl, #16, #8
 8002df2:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002df6:	ea81 4103 	eor.w	r1, r1, r3, lsl #16
 8002dfa:	ea4f 6319 	mov.w	r3, r9, lsr #24
 8002dfe:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002e02:	ea81 6803 	eor.w	r8, r1, r3, lsl #24
 8002e06:	fa5f f389 	uxtb.w	r3, r9
 8002e0a:	f3c6 2107 	ubfx	r1, r6, #8, #8
 8002e0e:	f8d0 0090 	ldr.w	r0, [r0, #144]	; 0x90
 8002e12:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002e16:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8002e1a:	4058      	eors	r0, r3
 8002e1c:	ea80 2001 	eor.w	r0, r0, r1, lsl #8
 8002e20:	f3c2 4107 	ubfx	r1, r2, #16, #8
 8002e24:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8002e28:	ea80 4001 	eor.w	r0, r0, r1, lsl #16
 8002e2c:	ea4f 611a 	mov.w	r1, sl, lsr #24
 8002e30:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8002e34:	ea80 6a01 	eor.w	sl, r0, r1, lsl #24
 8002e38:	9902      	ldr	r1, [sp, #8]
 8002e3a:	e9c1 a800 	strd	sl, r8, [r1]
 8002e3e:	e9c1 eb02 	strd	lr, fp, [r1, #8]
 8002e42:	2001      	movs	r0, #1
 8002e44:	b003      	add	sp, #12
 8002e46:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002e4a:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002e4c <decrypt>:
 8002e4c:	f892 3208 	ldrb.w	r3, [r2, #520]	; 0x208
 8002e50:	079b      	lsls	r3, r3, #30
 8002e52:	bf5c      	itt	pl
 8002e54:	2000      	movpl	r0, #0
 8002e56:	4770      	bxpl	lr
 8002e58:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002e5a:	af03      	add	r7, sp, #12
 8002e5c:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002e60:	b083      	sub	sp, #12
 8002e62:	e9d0 8900 	ldrd	r8, r9, [r0]
 8002e66:	e9d0 6002 	ldrd	r6, r0, [r0, #8]
 8002e6a:	e9d2 a342 	ldrd	sl, r3, [r2, #264]	; 0x108
 8002e6e:	e9d2 4544 	ldrd	r4, r5, [r2, #272]	; 0x110
 8002e72:	ea85 0b00 	eor.w	fp, r5, r0
 8002e76:	6855      	ldr	r5, [r2, #4]
 8002e78:	ea84 0e06 	eor.w	lr, r4, r6
 8002e7c:	ea83 0c09 	eor.w	ip, r3, r9
 8002e80:	ea8a 0408 	eor.w	r4, sl, r8
 8002e84:	f502 708c 	add.w	r0, r2, #280	; 0x118
 8002e88:	2d0a      	cmp	r5, #10
 8002e8a:	f000 80d4 	beq.w	8003036 <decrypt+0x1ea>
 8002e8e:	2d0c      	cmp	r5, #12
 8002e90:	f000 80d3 	beq.w	800303a <decrypt+0x1ee>
 8002e94:	2d0e      	cmp	r5, #14
 8002e96:	f040 8546 	bne.w	8003926 <decrypt+0xada>
 8002e9a:	9102      	str	r1, [sp, #8]
 8002e9c:	f3cc 2507 	ubfx	r5, ip, #8, #8
 8002ea0:	e9d2 a146 	ldrd	sl, r1, [r2, #280]	; 0x118
 8002ea4:	f249 50d4 	movw	r0, #38356	; 0x95d4
 8002ea8:	465b      	mov	r3, fp
 8002eaa:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002eae:	fa5f f983 	uxtb.w	r9, r3
 8002eb2:	f850 8025 	ldr.w	r8, [r0, r5, lsl #2]
 8002eb6:	fa5f f58e 	uxtb.w	r5, lr
 8002eba:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 8002ebe:	9100      	str	r1, [sp, #0]
 8002ec0:	f8d2 6120 	ldr.w	r6, [r2, #288]	; 0x120
 8002ec4:	f8d2 b124 	ldr.w	fp, [r2, #292]	; 0x124
 8002ec8:	4075      	eors	r5, r6
 8002eca:	f3c4 4607 	ubfx	r6, r4, #16, #8
 8002ece:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002ed2:	ea85 6538 	eor.w	r5, r5, r8, ror #24
 8002ed6:	ea85 4536 	eor.w	r5, r5, r6, ror #16
 8002eda:	0e1e      	lsrs	r6, r3, #24
 8002edc:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002ee0:	ea85 2136 	eor.w	r1, r5, r6, ror #8
 8002ee4:	9101      	str	r1, [sp, #4]
 8002ee6:	f3c1 2507 	ubfx	r5, r1, #8, #8
 8002eea:	f3ce 2607 	ubfx	r6, lr, #8, #8
 8002eee:	f850 8025 	ldr.w	r8, [r0, r5, lsl #2]
 8002ef2:	f850 5029 	ldr.w	r5, [r0, r9, lsl #2]
 8002ef6:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002efa:	ea85 050b 	eor.w	r5, r5, fp
 8002efe:	ea85 6536 	eor.w	r5, r5, r6, ror #24
 8002f02:	f3cc 4607 	ubfx	r6, ip, #16, #8
 8002f06:	f8d2 1134 	ldr.w	r1, [r2, #308]	; 0x134
 8002f0a:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002f0e:	ea85 4536 	eor.w	r5, r5, r6, ror #16
 8002f12:	0e26      	lsrs	r6, r4, #24
 8002f14:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 8002f18:	ea85 2936 	eor.w	r9, r5, r6, ror #8
 8002f1c:	fa5f f589 	uxtb.w	r5, r9
 8002f20:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 8002f24:	4069      	eors	r1, r5
 8002f26:	f3c4 2507 	ubfx	r5, r4, #8, #8
 8002f2a:	9e00      	ldr	r6, [sp, #0]
 8002f2c:	b2e4      	uxtb	r4, r4
 8002f2e:	ea81 6838 	eor.w	r8, r1, r8, ror #24
 8002f32:	fa5f f18c 	uxtb.w	r1, ip
 8002f36:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 8002f3a:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002f3e:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 8002f42:	ea84 040a 	eor.w	r4, r4, sl
 8002f46:	4071      	eors	r1, r6
 8002f48:	ea81 6135 	eor.w	r1, r1, r5, ror #24
 8002f4c:	f3c3 4507 	ubfx	r5, r3, #16, #8
 8002f50:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 8002f54:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 8002f58:	ea4f 651e 	mov.w	r5, lr, lsr #24
 8002f5c:	f850 5025 	ldr.w	r5, [r0, r5, lsl #2]
 8002f60:	ea81 2b35 	eor.w	fp, r1, r5, ror #8
 8002f64:	f3cb 4107 	ubfx	r1, fp, #16, #8
 8002f68:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 8002f6c:	ea88 4831 	eor.w	r8, r8, r1, ror #16
 8002f70:	f3c3 2107 	ubfx	r1, r3, #8, #8
 8002f74:	ea4f 631c 	mov.w	r3, ip, lsr #24
 8002f78:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 8002f7c:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8002f80:	ea84 6131 	eor.w	r1, r4, r1, ror #24
 8002f84:	f3ce 4407 	ubfx	r4, lr, #16, #8
 8002f88:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002f8c:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 8002f90:	ea81 2433 	eor.w	r4, r1, r3, ror #8
 8002f94:	0e21      	lsrs	r1, r4, #24
 8002f96:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 8002f9a:	ea88 2a31 	eor.w	sl, r8, r1, ror #8
 8002f9e:	f3cb 2107 	ubfx	r1, fp, #8, #8
 8002fa2:	9d01      	ldr	r5, [sp, #4]
 8002fa4:	f8d2 6130 	ldr.w	r6, [r2, #304]	; 0x130
 8002fa8:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 8002fac:	b2eb      	uxtb	r3, r5
 8002fae:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8002fb2:	4073      	eors	r3, r6
 8002fb4:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 8002fb8:	f3c4 4307 	ubfx	r3, r4, #16, #8
 8002fbc:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8002fc0:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002fc4:	ea4f 6319 	mov.w	r3, r9, lsr #24
 8002fc8:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8002fcc:	ea81 2e33 	eor.w	lr, r1, r3, ror #8
 8002fd0:	fa5f f38b 	uxtb.w	r3, fp
 8002fd4:	f3c4 2107 	ubfx	r1, r4, #8, #8
 8002fd8:	f8d2 612c 	ldr.w	r6, [r2, #300]	; 0x12c
 8002fdc:	b2e4      	uxtb	r4, r4
 8002fde:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8002fe2:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 8002fe6:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8002fea:	4073      	eors	r3, r6
 8002fec:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 8002ff0:	f3c9 4307 	ubfx	r3, r9, #16, #8
 8002ff4:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8002ff8:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8002ffc:	0e2b      	lsrs	r3, r5, #24
 8002ffe:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
 8003002:	ea81 2c33 	eor.w	ip, r1, r3, ror #8
 8003006:	f3c9 2107 	ubfx	r1, r9, #8, #8
 800300a:	f8d2 6128 	ldr.w	r6, [r2, #296]	; 0x128
 800300e:	f850 1021 	ldr.w	r1, [r0, r1, lsl #2]
 8003012:	4074      	eors	r4, r6
 8003014:	ea84 6131 	eor.w	r1, r4, r1, ror #24
 8003018:	f3c5 4407 	ubfx	r4, r5, #16, #8
 800301c:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
 8003020:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 8003024:	ea4f 641b 	mov.w	r4, fp, lsr #24
 8003028:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
 800302c:	ea81 2430 	eor.w	r4, r1, r0, ror #8
 8003030:	f502 709c 	add.w	r0, r2, #312	; 0x138
 8003034:	e003      	b.n	800303e <decrypt+0x1f2>
 8003036:	9102      	str	r1, [sp, #8]
 8003038:	e0c5      	b.n	80031c6 <decrypt+0x37a>
 800303a:	9102      	str	r1, [sp, #8]
 800303c:	46da      	mov	sl, fp
 800303e:	f3cc 2107 	ubfx	r1, ip, #8, #8
 8003042:	6803      	ldr	r3, [r0, #0]
 8003044:	f249 52d4 	movw	r2, #38356	; 0x95d4
 8003048:	fa5f f58e 	uxtb.w	r5, lr
 800304c:	f100 0b04 	add.w	fp, r0, #4
 8003050:	f6c0 0200 	movt	r2, #2048	; 0x800
 8003054:	f852 6025 	ldr.w	r6, [r2, r5, lsl #2]
 8003058:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800305c:	9301      	str	r3, [sp, #4]
 800305e:	e89b 0828 	ldmia.w	fp, {r3, r5, fp}
 8003062:	4075      	eors	r5, r6
 8003064:	fa5f f68a 	uxtb.w	r6, sl
 8003068:	ea85 6131 	eor.w	r1, r5, r1, ror #24
 800306c:	f3c4 4507 	ubfx	r5, r4, #16, #8
 8003070:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8003074:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003078:	ea86 060b 	eor.w	r6, r6, fp
 800307c:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 8003080:	ea4f 651a 	mov.w	r5, sl, lsr #24
 8003084:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003088:	ea81 2935 	eor.w	r9, r1, r5, ror #8
 800308c:	f3c9 2107 	ubfx	r1, r9, #8, #8
 8003090:	f3ce 2507 	ubfx	r5, lr, #8, #8
 8003094:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003098:	f852 8021 	ldr.w	r8, [r2, r1, lsl #2]
 800309c:	ea86 6535 	eor.w	r5, r6, r5, ror #24
 80030a0:	f3cc 4607 	ubfx	r6, ip, #16, #8
 80030a4:	69c1      	ldr	r1, [r0, #28]
 80030a6:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80030aa:	ea85 4536 	eor.w	r5, r5, r6, ror #16
 80030ae:	0e26      	lsrs	r6, r4, #24
 80030b0:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80030b4:	ea85 2b36 	eor.w	fp, r5, r6, ror #8
 80030b8:	fa5f f58b 	uxtb.w	r5, fp
 80030bc:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80030c0:	4069      	eors	r1, r5
 80030c2:	f3c4 2507 	ubfx	r5, r4, #8, #8
 80030c6:	b2e4      	uxtb	r4, r4
 80030c8:	ea81 6838 	eor.w	r8, r1, r8, ror #24
 80030cc:	fa5f f18c 	uxtb.w	r1, ip
 80030d0:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80030d4:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80030d8:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80030dc:	4059      	eors	r1, r3
 80030de:	ea81 6135 	eor.w	r1, r1, r5, ror #24
 80030e2:	f3ca 4507 	ubfx	r5, sl, #16, #8
 80030e6:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80030ea:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 80030ee:	ea4f 651e 	mov.w	r5, lr, lsr #24
 80030f2:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80030f6:	ea81 2535 	eor.w	r5, r1, r5, ror #8
 80030fa:	f3c5 4107 	ubfx	r1, r5, #16, #8
 80030fe:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8003102:	ea88 4831 	eor.w	r8, r8, r1, ror #16
 8003106:	f3ca 2107 	ubfx	r1, sl, #8, #8
 800310a:	9b01      	ldr	r3, [sp, #4]
 800310c:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8003110:	405c      	eors	r4, r3
 8003112:	ea4f 631c 	mov.w	r3, ip, lsr #24
 8003116:	ea84 6131 	eor.w	r1, r4, r1, ror #24
 800311a:	f3ce 4407 	ubfx	r4, lr, #16, #8
 800311e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003122:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003126:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 800312a:	ea81 2433 	eor.w	r4, r1, r3, ror #8
 800312e:	fa5f f389 	uxtb.w	r3, r9
 8003132:	0e21      	lsrs	r1, r4, #24
 8003134:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003138:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800313c:	ea88 2831 	eor.w	r8, r8, r1, ror #8
 8003140:	f3c5 2107 	ubfx	r1, r5, #8, #8
 8003144:	6986      	ldr	r6, [r0, #24]
 8003146:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800314a:	4073      	eors	r3, r6
 800314c:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 8003150:	f3c4 4307 	ubfx	r3, r4, #16, #8
 8003154:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003158:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 800315c:	ea4f 631b 	mov.w	r3, fp, lsr #24
 8003160:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003164:	ea81 2e33 	eor.w	lr, r1, r3, ror #8
 8003168:	b2eb      	uxtb	r3, r5
 800316a:	f3c4 2107 	ubfx	r1, r4, #8, #8
 800316e:	6946      	ldr	r6, [r0, #20]
 8003170:	b2e4      	uxtb	r4, r4
 8003172:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003176:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800317a:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 800317e:	4073      	eors	r3, r6
 8003180:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 8003184:	f3cb 4307 	ubfx	r3, fp, #16, #8
 8003188:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800318c:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8003190:	ea4f 6319 	mov.w	r3, r9, lsr #24
 8003194:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003198:	ea81 2c33 	eor.w	ip, r1, r3, ror #8
 800319c:	f3cb 2107 	ubfx	r1, fp, #8, #8
 80031a0:	6906      	ldr	r6, [r0, #16]
 80031a2:	46c3      	mov	fp, r8
 80031a4:	3020      	adds	r0, #32
 80031a6:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80031aa:	4074      	eors	r4, r6
 80031ac:	ea84 6131 	eor.w	r1, r4, r1, ror #24
 80031b0:	f3c9 4407 	ubfx	r4, r9, #16, #8
 80031b4:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80031b8:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 80031bc:	0e2c      	lsrs	r4, r5, #24
 80031be:	f852 2024 	ldr.w	r2, [r2, r4, lsl #2]
 80031c2:	ea81 2432 	eor.w	r4, r1, r2, ror #8
 80031c6:	f249 52d4 	movw	r2, #38356	; 0x95d4
 80031ca:	fa5f f58e 	uxtb.w	r5, lr
 80031ce:	f3cc 2107 	ubfx	r1, ip, #8, #8
 80031d2:	e9d0 9a00 	ldrd	r9, sl, [r0]
 80031d6:	f6c0 0200 	movt	r2, #2048	; 0x800
 80031da:	f852 6025 	ldr.w	r6, [r2, r5, lsl #2]
 80031de:	e9d0 5302 	ldrd	r5, r3, [r0, #8]
 80031e2:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80031e6:	4075      	eors	r5, r6
 80031e8:	fa5f f68b 	uxtb.w	r6, fp
 80031ec:	ea85 6131 	eor.w	r1, r5, r1, ror #24
 80031f0:	f3c4 4507 	ubfx	r5, r4, #16, #8
 80031f4:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80031f8:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80031fc:	4073      	eors	r3, r6
 80031fe:	465e      	mov	r6, fp
 8003200:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 8003204:	ea4f 651b 	mov.w	r5, fp, lsr #24
 8003208:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800320c:	ea81 2835 	eor.w	r8, r1, r5, ror #8
 8003210:	f3c8 2107 	ubfx	r1, r8, #8, #8
 8003214:	f3ce 2507 	ubfx	r5, lr, #8, #8
 8003218:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800321c:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8003220:	ea83 6335 	eor.w	r3, r3, r5, ror #24
 8003224:	f3cc 4507 	ubfx	r5, ip, #16, #8
 8003228:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800322c:	ea83 4335 	eor.w	r3, r3, r5, ror #16
 8003230:	0e25      	lsrs	r5, r4, #24
 8003232:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003236:	ea83 2b35 	eor.w	fp, r3, r5, ror #8
 800323a:	69c5      	ldr	r5, [r0, #28]
 800323c:	fa5f f38b 	uxtb.w	r3, fp
 8003240:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003244:	406b      	eors	r3, r5
 8003246:	fa5f f58c 	uxtb.w	r5, ip
 800324a:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800324e:	ea83 6131 	eor.w	r1, r3, r1, ror #24
 8003252:	f3c4 2307 	ubfx	r3, r4, #8, #8
 8003256:	b2e4      	uxtb	r4, r4
 8003258:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800325c:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003260:	ea85 050a 	eor.w	r5, r5, sl
 8003264:	ea85 6333 	eor.w	r3, r5, r3, ror #24
 8003268:	f3c6 4507 	ubfx	r5, r6, #16, #8
 800326c:	ea84 0409 	eor.w	r4, r4, r9
 8003270:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003274:	ea83 4335 	eor.w	r3, r3, r5, ror #16
 8003278:	ea4f 651e 	mov.w	r5, lr, lsr #24
 800327c:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003280:	ea83 2535 	eor.w	r5, r3, r5, ror #8
 8003284:	f3c5 4307 	ubfx	r3, r5, #16, #8
 8003288:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800328c:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8003290:	f3c6 2307 	ubfx	r3, r6, #8, #8
 8003294:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003298:	ea84 6333 	eor.w	r3, r4, r3, ror #24
 800329c:	f3ce 4407 	ubfx	r4, lr, #16, #8
 80032a0:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80032a4:	ea83 4334 	eor.w	r3, r3, r4, ror #16
 80032a8:	ea4f 641c 	mov.w	r4, ip, lsr #24
 80032ac:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80032b0:	ea83 2334 	eor.w	r3, r3, r4, ror #8
 80032b4:	0e1c      	lsrs	r4, r3, #24
 80032b6:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80032ba:	ea81 2c34 	eor.w	ip, r1, r4, ror #8
 80032be:	f3cc 2107 	ubfx	r1, ip, #8, #8
 80032c2:	f3cb 2407 	ubfx	r4, fp, #8, #8
 80032c6:	6906      	ldr	r6, [r0, #16]
 80032c8:	f852 e021 	ldr.w	lr, [r2, r1, lsl #2]
 80032cc:	b2d9      	uxtb	r1, r3
 80032ce:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80032d2:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80032d6:	4071      	eors	r1, r6
 80032d8:	ea81 6134 	eor.w	r1, r1, r4, ror #24
 80032dc:	f3c8 4407 	ubfx	r4, r8, #16, #8
 80032e0:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80032e4:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 80032e8:	0e2c      	lsrs	r4, r5, #24
 80032ea:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80032ee:	ea81 2934 	eor.w	r9, r1, r4, ror #8
 80032f2:	6a04      	ldr	r4, [r0, #32]
 80032f4:	f3c5 2607 	ubfx	r6, r5, #8, #8
 80032f8:	fa5f f189 	uxtb.w	r1, r9
 80032fc:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8003300:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8003304:	4061      	eors	r1, r4
 8003306:	fa5f f488 	uxtb.w	r4, r8
 800330a:	ea81 6e3e 	eor.w	lr, r1, lr, ror #24
 800330e:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003312:	6981      	ldr	r1, [r0, #24]
 8003314:	4061      	eors	r1, r4
 8003316:	f3c3 4407 	ubfx	r4, r3, #16, #8
 800331a:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 800331e:	ea81 6136 	eor.w	r1, r1, r6, ror #24
 8003322:	b2ee      	uxtb	r6, r5
 8003324:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8003328:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 800332c:	ea4f 641b 	mov.w	r4, fp, lsr #24
 8003330:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003334:	ea81 2434 	eor.w	r4, r1, r4, ror #8
 8003338:	f3c4 4107 	ubfx	r1, r4, #16, #8
 800333c:	f3c3 2307 	ubfx	r3, r3, #8, #8
 8003340:	6945      	ldr	r5, [r0, #20]
 8003342:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003346:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800334a:	406e      	eors	r6, r5
 800334c:	ea86 6333 	eor.w	r3, r6, r3, ror #24
 8003350:	f3cb 4607 	ubfx	r6, fp, #16, #8
 8003354:	ea8e 4131 	eor.w	r1, lr, r1, ror #16
 8003358:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 800335c:	ea83 4336 	eor.w	r3, r3, r6, ror #16
 8003360:	ea4f 6618 	mov.w	r6, r8, lsr #24
 8003364:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8003368:	ea83 2336 	eor.w	r3, r3, r6, ror #8
 800336c:	0e1e      	lsrs	r6, r3, #24
 800336e:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8003372:	ea81 2e36 	eor.w	lr, r1, r6, ror #8
 8003376:	b2de      	uxtb	r6, r3
 8003378:	f3ce 2107 	ubfx	r1, lr, #8, #8
 800337c:	f3c9 2507 	ubfx	r5, r9, #8, #8
 8003380:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8003384:	f852 8021 	ldr.w	r8, [r2, r1, lsl #2]
 8003388:	6a41      	ldr	r1, [r0, #36]	; 0x24
 800338a:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800338e:	4071      	eors	r1, r6
 8003390:	ea81 6135 	eor.w	r1, r1, r5, ror #24
 8003394:	f3cc 4507 	ubfx	r5, ip, #16, #8
 8003398:	6b46      	ldr	r6, [r0, #52]	; 0x34
 800339a:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800339e:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 80033a2:	0e25      	lsrs	r5, r4, #24
 80033a4:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80033a8:	ea81 2a35 	eor.w	sl, r1, r5, ror #8
 80033ac:	fa5f f58c 	uxtb.w	r5, ip
 80033b0:	fa5f f18a 	uxtb.w	r1, sl
 80033b4:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80033b8:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80033bc:	4071      	eors	r1, r6
 80033be:	f3c4 2607 	ubfx	r6, r4, #8, #8
 80033c2:	b2e4      	uxtb	r4, r4
 80033c4:	ea81 6838 	eor.w	r8, r1, r8, ror #24
 80033c8:	6ac1      	ldr	r1, [r0, #44]	; 0x2c
 80033ca:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80033ce:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80033d2:	4069      	eors	r1, r5
 80033d4:	f3c3 4507 	ubfx	r5, r3, #16, #8
 80033d8:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80033dc:	ea81 6136 	eor.w	r1, r1, r6, ror #24
 80033e0:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 80033e4:	ea4f 6519 	mov.w	r5, r9, lsr #24
 80033e8:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80033ec:	ea81 2635 	eor.w	r6, r1, r5, ror #8
 80033f0:	f3c6 4107 	ubfx	r1, r6, #16, #8
 80033f4:	f3c3 2307 	ubfx	r3, r3, #8, #8
 80033f8:	6a85      	ldr	r5, [r0, #40]	; 0x28
 80033fa:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80033fe:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8003402:	406c      	eors	r4, r5
 8003404:	ea4f 651c 	mov.w	r5, ip, lsr #24
 8003408:	ea84 6333 	eor.w	r3, r4, r3, ror #24
 800340c:	f3c9 4407 	ubfx	r4, r9, #16, #8
 8003410:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003414:	ea88 4131 	eor.w	r1, r8, r1, ror #16
 8003418:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 800341c:	ea83 4334 	eor.w	r3, r3, r4, ror #16
 8003420:	ea83 2335 	eor.w	r3, r3, r5, ror #8
 8003424:	0e1d      	lsrs	r5, r3, #24
 8003426:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800342a:	ea81 2c35 	eor.w	ip, r1, r5, ror #8
 800342e:	b2dd      	uxtb	r5, r3
 8003430:	f3cc 2107 	ubfx	r1, ip, #8, #8
 8003434:	f3ca 2407 	ubfx	r4, sl, #8, #8
 8003438:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800343c:	f852 9021 	ldr.w	r9, [r2, r1, lsl #2]
 8003440:	6b81      	ldr	r1, [r0, #56]	; 0x38
 8003442:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003446:	4069      	eors	r1, r5
 8003448:	fa5f f58e 	uxtb.w	r5, lr
 800344c:	ea81 6134 	eor.w	r1, r1, r4, ror #24
 8003450:	f3ce 4407 	ubfx	r4, lr, #16, #8
 8003454:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003458:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 800345c:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 8003460:	0e34      	lsrs	r4, r6, #24
 8003462:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003466:	ea81 2834 	eor.w	r8, r1, r4, ror #8
 800346a:	6c84      	ldr	r4, [r0, #72]	; 0x48
 800346c:	fa5f f188 	uxtb.w	r1, r8
 8003470:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8003474:	4061      	eors	r1, r4
 8003476:	f3c6 2407 	ubfx	r4, r6, #8, #8
 800347a:	ea81 6939 	eor.w	r9, r1, r9, ror #24
 800347e:	6b01      	ldr	r1, [r0, #48]	; 0x30
 8003480:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003484:	4069      	eors	r1, r5
 8003486:	b2f5      	uxtb	r5, r6
 8003488:	ea81 6134 	eor.w	r1, r1, r4, ror #24
 800348c:	f3c3 4407 	ubfx	r4, r3, #16, #8
 8003490:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003494:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003498:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 800349c:	ea4f 641a 	mov.w	r4, sl, lsr #24
 80034a0:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80034a4:	ea81 2434 	eor.w	r4, r1, r4, ror #8
 80034a8:	f3c4 4107 	ubfx	r1, r4, #16, #8
 80034ac:	f3c3 2307 	ubfx	r3, r3, #8, #8
 80034b0:	6bc6      	ldr	r6, [r0, #60]	; 0x3c
 80034b2:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80034b6:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80034ba:	4075      	eors	r5, r6
 80034bc:	ea4f 661e 	mov.w	r6, lr, lsr #24
 80034c0:	ea85 6333 	eor.w	r3, r5, r3, ror #24
 80034c4:	f3ca 4507 	ubfx	r5, sl, #16, #8
 80034c8:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80034cc:	ea89 4131 	eor.w	r1, r9, r1, ror #16
 80034d0:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80034d4:	ea83 4335 	eor.w	r3, r3, r5, ror #16
 80034d8:	ea83 2336 	eor.w	r3, r3, r6, ror #8
 80034dc:	0e1e      	lsrs	r6, r3, #24
 80034de:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80034e2:	ea81 2e36 	eor.w	lr, r1, r6, ror #8
 80034e6:	b2de      	uxtb	r6, r3
 80034e8:	f3ce 2107 	ubfx	r1, lr, #8, #8
 80034ec:	f3c8 2507 	ubfx	r5, r8, #8, #8
 80034f0:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80034f4:	f852 9021 	ldr.w	r9, [r2, r1, lsl #2]
 80034f8:	6cc1      	ldr	r1, [r0, #76]	; 0x4c
 80034fa:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80034fe:	4071      	eors	r1, r6
 8003500:	ea81 6135 	eor.w	r1, r1, r5, ror #24
 8003504:	f3cc 4507 	ubfx	r5, ip, #16, #8
 8003508:	6dc6      	ldr	r6, [r0, #92]	; 0x5c
 800350a:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800350e:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 8003512:	0e25      	lsrs	r5, r4, #24
 8003514:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003518:	ea81 2a35 	eor.w	sl, r1, r5, ror #8
 800351c:	fa5f f58c 	uxtb.w	r5, ip
 8003520:	fa5f f18a 	uxtb.w	r1, sl
 8003524:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003528:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800352c:	4071      	eors	r1, r6
 800352e:	f3c4 2607 	ubfx	r6, r4, #8, #8
 8003532:	b2e4      	uxtb	r4, r4
 8003534:	ea81 6939 	eor.w	r9, r1, r9, ror #24
 8003538:	6c41      	ldr	r1, [r0, #68]	; 0x44
 800353a:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 800353e:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003542:	4069      	eors	r1, r5
 8003544:	f3c3 4507 	ubfx	r5, r3, #16, #8
 8003548:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800354c:	ea81 6136 	eor.w	r1, r1, r6, ror #24
 8003550:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 8003554:	ea4f 6518 	mov.w	r5, r8, lsr #24
 8003558:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800355c:	ea81 2635 	eor.w	r6, r1, r5, ror #8
 8003560:	f3c6 4107 	ubfx	r1, r6, #16, #8
 8003564:	f3c3 2307 	ubfx	r3, r3, #8, #8
 8003568:	6c05      	ldr	r5, [r0, #64]	; 0x40
 800356a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800356e:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8003572:	406c      	eors	r4, r5
 8003574:	ea4f 651c 	mov.w	r5, ip, lsr #24
 8003578:	ea84 6333 	eor.w	r3, r4, r3, ror #24
 800357c:	f3c8 4407 	ubfx	r4, r8, #16, #8
 8003580:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003584:	ea89 4131 	eor.w	r1, r9, r1, ror #16
 8003588:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 800358c:	ea83 4334 	eor.w	r3, r3, r4, ror #16
 8003590:	ea83 2335 	eor.w	r3, r3, r5, ror #8
 8003594:	0e1d      	lsrs	r5, r3, #24
 8003596:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 800359a:	ea81 2c35 	eor.w	ip, r1, r5, ror #8
 800359e:	b2dd      	uxtb	r5, r3
 80035a0:	f3cc 2107 	ubfx	r1, ip, #8, #8
 80035a4:	f3ca 2407 	ubfx	r4, sl, #8, #8
 80035a8:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80035ac:	f852 8021 	ldr.w	r8, [r2, r1, lsl #2]
 80035b0:	6d01      	ldr	r1, [r0, #80]	; 0x50
 80035b2:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80035b6:	4069      	eors	r1, r5
 80035b8:	fa5f f58e 	uxtb.w	r5, lr
 80035bc:	ea81 6134 	eor.w	r1, r1, r4, ror #24
 80035c0:	f3ce 4407 	ubfx	r4, lr, #16, #8
 80035c4:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80035c8:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80035cc:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 80035d0:	0e34      	lsrs	r4, r6, #24
 80035d2:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80035d6:	ea81 2934 	eor.w	r9, r1, r4, ror #8
 80035da:	6e04      	ldr	r4, [r0, #96]	; 0x60
 80035dc:	fa5f f189 	uxtb.w	r1, r9
 80035e0:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80035e4:	4061      	eors	r1, r4
 80035e6:	f3c6 2407 	ubfx	r4, r6, #8, #8
 80035ea:	ea81 6838 	eor.w	r8, r1, r8, ror #24
 80035ee:	6d81      	ldr	r1, [r0, #88]	; 0x58
 80035f0:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80035f4:	4069      	eors	r1, r5
 80035f6:	b2f5      	uxtb	r5, r6
 80035f8:	ea81 6134 	eor.w	r1, r1, r4, ror #24
 80035fc:	f3c3 4407 	ubfx	r4, r3, #16, #8
 8003600:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003604:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003608:	ea81 4134 	eor.w	r1, r1, r4, ror #16
 800360c:	ea4f 641a 	mov.w	r4, sl, lsr #24
 8003610:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003614:	ea81 2434 	eor.w	r4, r1, r4, ror #8
 8003618:	f3c4 4107 	ubfx	r1, r4, #16, #8
 800361c:	f3c3 2307 	ubfx	r3, r3, #8, #8
 8003620:	6d46      	ldr	r6, [r0, #84]	; 0x54
 8003622:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003626:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800362a:	4075      	eors	r5, r6
 800362c:	ea4f 661e 	mov.w	r6, lr, lsr #24
 8003630:	ea85 6333 	eor.w	r3, r5, r3, ror #24
 8003634:	f3ca 4507 	ubfx	r5, sl, #16, #8
 8003638:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 800363c:	ea88 4131 	eor.w	r1, r8, r1, ror #16
 8003640:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003644:	ea83 4335 	eor.w	r3, r3, r5, ror #16
 8003648:	ea83 2336 	eor.w	r3, r3, r6, ror #8
 800364c:	0e1e      	lsrs	r6, r3, #24
 800364e:	b2dd      	uxtb	r5, r3
 8003650:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8003654:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003658:	ea81 2836 	eor.w	r8, r1, r6, ror #8
 800365c:	f3c8 2107 	ubfx	r1, r8, #8, #8
 8003660:	f3c9 2607 	ubfx	r6, r9, #8, #8
 8003664:	f852 e021 	ldr.w	lr, [r2, r1, lsl #2]
 8003668:	6e41      	ldr	r1, [r0, #100]	; 0x64
 800366a:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 800366e:	4069      	eors	r1, r5
 8003670:	f3cc 4507 	ubfx	r5, ip, #16, #8
 8003674:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003678:	ea81 6136 	eor.w	r1, r1, r6, ror #24
 800367c:	6f46      	ldr	r6, [r0, #116]	; 0x74
 800367e:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 8003682:	0e25      	lsrs	r5, r4, #24
 8003684:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003688:	ea81 2a35 	eor.w	sl, r1, r5, ror #8
 800368c:	fa5f f58c 	uxtb.w	r5, ip
 8003690:	fa5f f18a 	uxtb.w	r1, sl
 8003694:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003698:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800369c:	4071      	eors	r1, r6
 800369e:	f3c4 2607 	ubfx	r6, r4, #8, #8
 80036a2:	ea81 6e3e 	eor.w	lr, r1, lr, ror #24
 80036a6:	6ec1      	ldr	r1, [r0, #108]	; 0x6c
 80036a8:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 80036ac:	4069      	eors	r1, r5
 80036ae:	f3c3 4507 	ubfx	r5, r3, #16, #8
 80036b2:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80036b6:	ea81 6136 	eor.w	r1, r1, r6, ror #24
 80036ba:	ea81 4135 	eor.w	r1, r1, r5, ror #16
 80036be:	ea4f 6519 	mov.w	r5, r9, lsr #24
 80036c2:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80036c6:	ea81 2635 	eor.w	r6, r1, r5, ror #8
 80036ca:	b2e5      	uxtb	r5, r4
 80036cc:	f3c6 4107 	ubfx	r1, r6, #16, #8
 80036d0:	f3c3 2307 	ubfx	r3, r3, #8, #8
 80036d4:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80036d8:	6e84      	ldr	r4, [r0, #104]	; 0x68
 80036da:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80036de:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80036e2:	4065      	eors	r5, r4
 80036e4:	ea85 6333 	eor.w	r3, r5, r3, ror #24
 80036e8:	f3c9 4507 	ubfx	r5, r9, #16, #8
 80036ec:	ea8e 4131 	eor.w	r1, lr, r1, ror #16
 80036f0:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80036f4:	ea83 4335 	eor.w	r3, r3, r5, ror #16
 80036f8:	ea4f 651c 	mov.w	r5, ip, lsr #24
 80036fc:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003700:	ea83 2435 	eor.w	r4, r3, r5, ror #8
 8003704:	0e23      	lsrs	r3, r4, #24
 8003706:	b2e5      	uxtb	r5, r4
 8003708:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800370c:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003710:	ea81 2c33 	eor.w	ip, r1, r3, ror #8
 8003714:	f3cc 2107 	ubfx	r1, ip, #8, #8
 8003718:	f3ca 2307 	ubfx	r3, sl, #8, #8
 800371c:	f852 9021 	ldr.w	r9, [r2, r1, lsl #2]
 8003720:	6f81      	ldr	r1, [r0, #120]	; 0x78
 8003722:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003726:	4069      	eors	r1, r5
 8003728:	fa5f f588 	uxtb.w	r5, r8
 800372c:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8003730:	f3c8 4307 	ubfx	r3, r8, #16, #8
 8003734:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003738:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800373c:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8003740:	0e33      	lsrs	r3, r6, #24
 8003742:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003746:	ea81 2e33 	eor.w	lr, r1, r3, ror #8
 800374a:	f8d0 3088 	ldr.w	r3, [r0, #136]	; 0x88
 800374e:	fa5f f18e 	uxtb.w	r1, lr
 8003752:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 8003756:	4059      	eors	r1, r3
 8003758:	f3c6 2307 	ubfx	r3, r6, #8, #8
 800375c:	ea81 6939 	eor.w	r9, r1, r9, ror #24
 8003760:	6f01      	ldr	r1, [r0, #112]	; 0x70
 8003762:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003766:	4069      	eors	r1, r5
 8003768:	b2f5      	uxtb	r5, r6
 800376a:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 800376e:	f3c4 4307 	ubfx	r3, r4, #16, #8
 8003772:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003776:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800377a:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 800377e:	ea4f 631a 	mov.w	r3, sl, lsr #24
 8003782:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003786:	ea81 2b33 	eor.w	fp, r1, r3, ror #8
 800378a:	f3cb 4107 	ubfx	r1, fp, #16, #8
 800378e:	f3c4 2407 	ubfx	r4, r4, #8, #8
 8003792:	6fc6      	ldr	r6, [r0, #124]	; 0x7c
 8003794:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 8003798:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800379c:	4075      	eors	r5, r6
 800379e:	ea85 6434 	eor.w	r4, r5, r4, ror #24
 80037a2:	f3ca 4507 	ubfx	r5, sl, #16, #8
 80037a6:	ea89 4131 	eor.w	r1, r9, r1, ror #16
 80037aa:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80037ae:	ea84 4435 	eor.w	r4, r4, r5, ror #16
 80037b2:	ea4f 6518 	mov.w	r5, r8, lsr #24
 80037b6:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80037ba:	ea84 2635 	eor.w	r6, r4, r5, ror #8
 80037be:	0e34      	lsrs	r4, r6, #24
 80037c0:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
 80037c4:	ea81 2834 	eor.w	r8, r1, r4, ror #8
 80037c8:	f649 54d4 	movw	r4, #40404	; 0x9dd4
 80037cc:	f3c8 2107 	ubfx	r1, r8, #8, #8
 80037d0:	f6c0 0400 	movt	r4, #2048	; 0x800
 80037d4:	f3ce 2507 	ubfx	r5, lr, #8, #8
 80037d8:	f8d0 308c 	ldr.w	r3, [r0, #140]	; 0x8c
 80037dc:	f854 a021 	ldr.w	sl, [r4, r1, lsl #2]
 80037e0:	b2f1      	uxtb	r1, r6
 80037e2:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80037e6:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 80037ea:	4059      	eors	r1, r3
 80037ec:	f3cc 4307 	ubfx	r3, ip, #16, #8
 80037f0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80037f4:	ea81 6135 	eor.w	r1, r1, r5, ror #24
 80037f8:	fa5f f58c 	uxtb.w	r5, ip
 80037fc:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 8003800:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8003804:	ea4f 631b 	mov.w	r3, fp, lsr #24
 8003808:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800380c:	ea81 2933 	eor.w	r9, r1, r3, ror #8
 8003810:	f8d0 309c 	ldr.w	r3, [r0, #156]	; 0x9c
 8003814:	fa5f f189 	uxtb.w	r1, r9
 8003818:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 800381c:	4059      	eors	r1, r3
 800381e:	f3cb 2307 	ubfx	r3, fp, #8, #8
 8003822:	ea81 2a0a 	eor.w	sl, r1, sl, lsl #8
 8003826:	f8d0 1084 	ldr.w	r1, [r0, #132]	; 0x84
 800382a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800382e:	4069      	eors	r1, r5
 8003830:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8003834:	f3c6 4307 	ubfx	r3, r6, #16, #8
 8003838:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800383c:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 8003840:	ea4f 631e 	mov.w	r3, lr, lsr #24
 8003844:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003848:	ea81 2533 	eor.w	r5, r1, r3, ror #8
 800384c:	f3c5 4107 	ubfx	r1, r5, #16, #8
 8003850:	f3c6 2307 	ubfx	r3, r6, #8, #8
 8003854:	fa5f f68b 	uxtb.w	r6, fp
 8003858:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 800385c:	f852 6026 	ldr.w	r6, [r2, r6, lsl #2]
 8003860:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003864:	ea8a 4a01 	eor.w	sl, sl, r1, lsl #16
 8003868:	f8d0 1080 	ldr.w	r1, [r0, #128]	; 0x80
 800386c:	4071      	eors	r1, r6
 800386e:	ea81 6133 	eor.w	r1, r1, r3, ror #24
 8003872:	f3ce 4307 	ubfx	r3, lr, #16, #8
 8003876:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800387a:	ea81 4133 	eor.w	r1, r1, r3, ror #16
 800387e:	ea4f 631c 	mov.w	r3, ip, lsr #24
 8003882:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8003886:	fa5f f388 	uxtb.w	r3, r8
 800388a:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 800388e:	ea81 2232 	eor.w	r2, r1, r2, ror #8
 8003892:	0e11      	lsrs	r1, r2, #24
 8003894:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8003898:	ea8a 6b01 	eor.w	fp, sl, r1, lsl #24
 800389c:	f3c5 2107 	ubfx	r1, r5, #8, #8
 80038a0:	f8d0 6098 	ldr.w	r6, [r0, #152]	; 0x98
 80038a4:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 80038a8:	4073      	eors	r3, r6
 80038aa:	ea83 2101 	eor.w	r1, r3, r1, lsl #8
 80038ae:	f3c2 4307 	ubfx	r3, r2, #16, #8
 80038b2:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 80038b6:	ea81 4103 	eor.w	r1, r1, r3, lsl #16
 80038ba:	ea4f 6319 	mov.w	r3, r9, lsr #24
 80038be:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 80038c2:	ea81 6e03 	eor.w	lr, r1, r3, lsl #24
 80038c6:	b2eb      	uxtb	r3, r5
 80038c8:	f3c2 2107 	ubfx	r1, r2, #8, #8
 80038cc:	f8d0 6094 	ldr.w	r6, [r0, #148]	; 0x94
 80038d0:	b2d2      	uxtb	r2, r2
 80038d2:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 80038d6:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 80038da:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 80038de:	4073      	eors	r3, r6
 80038e0:	ea83 2101 	eor.w	r1, r3, r1, lsl #8
 80038e4:	f3c9 4307 	ubfx	r3, r9, #16, #8
 80038e8:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 80038ec:	ea81 4103 	eor.w	r1, r1, r3, lsl #16
 80038f0:	ea4f 6318 	mov.w	r3, r8, lsr #24
 80038f4:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 80038f8:	ea81 6c03 	eor.w	ip, r1, r3, lsl #24
 80038fc:	f3c9 2107 	ubfx	r1, r9, #8, #8
 8003900:	f8d0 0090 	ldr.w	r0, [r0, #144]	; 0x90
 8003904:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8003908:	4050      	eors	r0, r2
 800390a:	ea80 2001 	eor.w	r0, r0, r1, lsl #8
 800390e:	f3c8 4107 	ubfx	r1, r8, #16, #8
 8003912:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8003916:	ea80 4001 	eor.w	r0, r0, r1, lsl #16
 800391a:	0e29      	lsrs	r1, r5, #24
 800391c:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8003920:	ea80 6401 	eor.w	r4, r0, r1, lsl #24
 8003924:	9902      	ldr	r1, [sp, #8]
 8003926:	e881 5010 	stmia.w	r1, {r4, ip, lr}
 800392a:	f8c1 b00c 	str.w	fp, [r1, #12]
 800392e:	2001      	movs	r0, #1
 8003930:	b003      	add	sp, #12
 8003932:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8003936:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003938 <encfile>:
 8003938:	b5f0      	push	{r4, r5, r6, r7, lr}
 800393a:	af03      	add	r7, sp, #12
 800393c:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 8003940:	b084      	sub	sp, #16
 8003942:	4681      	mov	r9, r0
 8003944:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8003948:	460c      	mov	r4, r1
 800394a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800394e:	7801      	ldrb	r1, [r0, #0]
 8003950:	b979      	cbnz	r1, 8003972 <encfile+0x3a>
 8003952:	2101      	movs	r1, #1
 8003954:	7001      	strb	r1, [r0, #0]
 8003956:	f640 10f4 	movw	r0, #2548	; 0x9f4
 800395a:	f64e 21f3 	movw	r1, #60147	; 0xeaf3
 800395e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003962:	6001      	str	r1, [r0, #0]
 8003964:	f640 10f8 	movw	r0, #2552	; 0x9f8
 8003968:	f243 51fe 	movw	r1, #13822	; 0x35fe
 800396c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003970:	6001      	str	r1, [r0, #0]
 8003972:	f240 0c14 	movw	ip, #20
 8003976:	f640 13f4 	movw	r3, #2548	; 0x9f4
 800397a:	f640 12f8 	movw	r2, #2552	; 0x9f8
 800397e:	f640 1af0 	movw	sl, #2544	; 0x9f0
 8003982:	2600      	movs	r6, #0
 8003984:	f249 0e69 	movw	lr, #36969	; 0x9069
 8003988:	f244 6850 	movw	r8, #18000	; 0x4650
 800398c:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8003990:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003994:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003998:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 800399c:	f8dc 0000 	ldr.w	r0, [ip]
 80039a0:	2804      	cmp	r0, #4
 80039a2:	d113      	bne.n	80039cc <encfile+0x94>
 80039a4:	6818      	ldr	r0, [r3, #0]
 80039a6:	b281      	uxth	r1, r0
 80039a8:	fb01 f10e 	mul.w	r1, r1, lr
 80039ac:	eb01 4010 	add.w	r0, r1, r0, lsr #16
 80039b0:	6811      	ldr	r1, [r2, #0]
 80039b2:	6018      	str	r0, [r3, #0]
 80039b4:	b28d      	uxth	r5, r1
 80039b6:	fb05 f508 	mul.w	r5, r5, r8
 80039ba:	eb05 4111 	add.w	r1, r5, r1, lsr #16
 80039be:	2500      	movs	r5, #0
 80039c0:	6011      	str	r1, [r2, #0]
 80039c2:	eb01 4100 	add.w	r1, r1, r0, lsl #16
 80039c6:	f8ca 1000 	str.w	r1, [sl]
 80039ca:	e002      	b.n	80039d2 <encfile+0x9a>
 80039cc:	f81a 1000 	ldrb.w	r1, [sl, r0]
 80039d0:	4605      	mov	r5, r0
 80039d2:	55a1      	strb	r1, [r4, r6]
 80039d4:	3601      	adds	r6, #1
 80039d6:	1c68      	adds	r0, r5, #1
 80039d8:	2e10      	cmp	r6, #16
 80039da:	d1e1      	bne.n	80039a0 <encfile+0x68>
 80039dc:	2804      	cmp	r0, #4
 80039de:	f8cc 0000 	str.w	r0, [ip]
 80039e2:	d115      	bne.n	8003a10 <encfile+0xd8>
 80039e4:	6818      	ldr	r0, [r3, #0]
 80039e6:	f249 0669 	movw	r6, #36969	; 0x9069
 80039ea:	b281      	uxth	r1, r0
 80039ec:	4371      	muls	r1, r6
 80039ee:	f244 6650 	movw	r6, #18000	; 0x4650
 80039f2:	eb01 4010 	add.w	r0, r1, r0, lsr #16
 80039f6:	6811      	ldr	r1, [r2, #0]
 80039f8:	6018      	str	r0, [r3, #0]
 80039fa:	b28b      	uxth	r3, r1
 80039fc:	4373      	muls	r3, r6
 80039fe:	eb03 4111 	add.w	r1, r3, r1, lsr #16
 8003a02:	eb01 4000 	add.w	r0, r1, r0, lsl #16
 8003a06:	6011      	str	r1, [r2, #0]
 8003a08:	2101      	movs	r1, #1
 8003a0a:	f8ca 0000 	str.w	r0, [sl]
 8003a0e:	e002      	b.n	8003a16 <encfile+0xde>
 8003a10:	f81a 0000 	ldrb.w	r0, [sl, r0]
 8003a14:	1ca9      	adds	r1, r5, #2
 8003a16:	f000 00f0 	and.w	r0, r0, #240	; 0xf0
 8003a1a:	f44f 7680 	mov.w	r6, #256	; 0x100
 8003a1e:	46e8      	mov	r8, sp
 8003a20:	f8cc 1000 	str.w	r1, [ip]
 8003a24:	f88d 0000 	strb.w	r0, [sp]
 8003a28:	f000 fc8a 	bl	8004340 <rand>
 8003a2c:	f88d 0000 	strb.w	r0, [sp]
 8003a30:	f000 fc86 	bl	8004340 <rand>
 8003a34:	f88d 0001 	strb.w	r0, [sp, #1]
 8003a38:	f000 fc82 	bl	8004340 <rand>
 8003a3c:	f88d 0002 	strb.w	r0, [sp, #2]
 8003a40:	f000 fc7e 	bl	8004340 <rand>
 8003a44:	f88d 0003 	strb.w	r0, [sp, #3]
 8003a48:	f000 fc7a 	bl	8004340 <rand>
 8003a4c:	f88d 0004 	strb.w	r0, [sp, #4]
 8003a50:	f000 fc76 	bl	8004340 <rand>
 8003a54:	f88d 0005 	strb.w	r0, [sp, #5]
 8003a58:	f000 fc72 	bl	8004340 <rand>
 8003a5c:	f88d 0006 	strb.w	r0, [sp, #6]
 8003a60:	f000 fc6e 	bl	8004340 <rand>
 8003a64:	f88d 0007 	strb.w	r0, [sp, #7]
 8003a68:	f000 fc6a 	bl	8004340 <rand>
 8003a6c:	f88d 0008 	strb.w	r0, [sp, #8]
 8003a70:	f000 fc66 	bl	8004340 <rand>
 8003a74:	f88d 0009 	strb.w	r0, [sp, #9]
 8003a78:	f000 fc62 	bl	8004340 <rand>
 8003a7c:	f88d 000a 	strb.w	r0, [sp, #10]
 8003a80:	f000 fc5e 	bl	8004340 <rand>
 8003a84:	f88d 000b 	strb.w	r0, [sp, #11]
 8003a88:	f000 fc5a 	bl	8004340 <rand>
 8003a8c:	f88d 000c 	strb.w	r0, [sp, #12]
 8003a90:	f000 fc56 	bl	8004340 <rand>
 8003a94:	f88d 000d 	strb.w	r0, [sp, #13]
 8003a98:	f000 fc52 	bl	8004340 <rand>
 8003a9c:	f88d 000e 	strb.w	r0, [sp, #14]
 8003aa0:	f000 fc4e 	bl	8004340 <rand>
 8003aa4:	7821      	ldrb	r1, [r4, #0]
 8003aa6:	f89d 2000 	ldrb.w	r2, [sp]
 8003aaa:	4051      	eors	r1, r2
 8003aac:	f88d 1000 	strb.w	r1, [sp]
 8003ab0:	7861      	ldrb	r1, [r4, #1]
 8003ab2:	f89d 2001 	ldrb.w	r2, [sp, #1]
 8003ab6:	4051      	eors	r1, r2
 8003ab8:	f88d 1001 	strb.w	r1, [sp, #1]
 8003abc:	78a1      	ldrb	r1, [r4, #2]
 8003abe:	f89d 2002 	ldrb.w	r2, [sp, #2]
 8003ac2:	4051      	eors	r1, r2
 8003ac4:	f88d 1002 	strb.w	r1, [sp, #2]
 8003ac8:	78e1      	ldrb	r1, [r4, #3]
 8003aca:	f89d 2003 	ldrb.w	r2, [sp, #3]
 8003ace:	4051      	eors	r1, r2
 8003ad0:	f88d 1003 	strb.w	r1, [sp, #3]
 8003ad4:	7921      	ldrb	r1, [r4, #4]
 8003ad6:	f89d 2004 	ldrb.w	r2, [sp, #4]
 8003ada:	4051      	eors	r1, r2
 8003adc:	f88d 1004 	strb.w	r1, [sp, #4]
 8003ae0:	7961      	ldrb	r1, [r4, #5]
 8003ae2:	f89d 2005 	ldrb.w	r2, [sp, #5]
 8003ae6:	4051      	eors	r1, r2
 8003ae8:	f88d 1005 	strb.w	r1, [sp, #5]
 8003aec:	79a1      	ldrb	r1, [r4, #6]
 8003aee:	f89d 2006 	ldrb.w	r2, [sp, #6]
 8003af2:	4051      	eors	r1, r2
 8003af4:	f88d 1006 	strb.w	r1, [sp, #6]
 8003af8:	79e1      	ldrb	r1, [r4, #7]
 8003afa:	f89d 2007 	ldrb.w	r2, [sp, #7]
 8003afe:	4051      	eors	r1, r2
 8003b00:	f88d 1007 	strb.w	r1, [sp, #7]
 8003b04:	7a21      	ldrb	r1, [r4, #8]
 8003b06:	f89d 2008 	ldrb.w	r2, [sp, #8]
 8003b0a:	4051      	eors	r1, r2
 8003b0c:	f88d 1008 	strb.w	r1, [sp, #8]
 8003b10:	7a61      	ldrb	r1, [r4, #9]
 8003b12:	f89d 2009 	ldrb.w	r2, [sp, #9]
 8003b16:	4051      	eors	r1, r2
 8003b18:	f88d 1009 	strb.w	r1, [sp, #9]
 8003b1c:	7aa1      	ldrb	r1, [r4, #10]
 8003b1e:	f89d 200a 	ldrb.w	r2, [sp, #10]
 8003b22:	4051      	eors	r1, r2
 8003b24:	f88d 100a 	strb.w	r1, [sp, #10]
 8003b28:	7ae1      	ldrb	r1, [r4, #11]
 8003b2a:	f89d 200b 	ldrb.w	r2, [sp, #11]
 8003b2e:	4051      	eors	r1, r2
 8003b30:	f88d 100b 	strb.w	r1, [sp, #11]
 8003b34:	7b21      	ldrb	r1, [r4, #12]
 8003b36:	f89d 200c 	ldrb.w	r2, [sp, #12]
 8003b3a:	4051      	eors	r1, r2
 8003b3c:	f88d 100c 	strb.w	r1, [sp, #12]
 8003b40:	7b61      	ldrb	r1, [r4, #13]
 8003b42:	f89d 200d 	ldrb.w	r2, [sp, #13]
 8003b46:	4051      	eors	r1, r2
 8003b48:	f88d 100d 	strb.w	r1, [sp, #13]
 8003b4c:	7ba1      	ldrb	r1, [r4, #14]
 8003b4e:	f89d 200e 	ldrb.w	r2, [sp, #14]
 8003b52:	4051      	eors	r1, r2
 8003b54:	464a      	mov	r2, r9
 8003b56:	f88d 100e 	strb.w	r1, [sp, #14]
 8003b5a:	7be1      	ldrb	r1, [r4, #15]
 8003b5c:	4048      	eors	r0, r1
 8003b5e:	4621      	mov	r1, r4
 8003b60:	f88d 000f 	strb.w	r0, [sp, #15]
 8003b64:	4640      	mov	r0, r8
 8003b66:	f7fe fbfc 	bl	8002362 <encrypt>
 8003b6a:	3e01      	subs	r6, #1
 8003b6c:	f47f af5c 	bne.w	8003a28 <encfile+0xf0>
 8003b70:	2000      	movs	r0, #0
 8003b72:	b004      	add	sp, #16
 8003b74:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 8003b78:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003b7a <decfile>:
 8003b7a:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003b7c:	af03      	add	r7, sp, #12
 8003b7e:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8003b82:	b089      	sub	sp, #36	; 0x24
 8003b84:	4680      	mov	r8, r0
 8003b86:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8003b8a:	460c      	mov	r4, r1
 8003b8c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003b90:	7801      	ldrb	r1, [r0, #0]
 8003b92:	b979      	cbnz	r1, 8003bb4 <decfile+0x3a>
 8003b94:	2101      	movs	r1, #1
 8003b96:	7001      	strb	r1, [r0, #0]
 8003b98:	f640 10f4 	movw	r0, #2548	; 0x9f4
 8003b9c:	f64e 21f3 	movw	r1, #60147	; 0xeaf3
 8003ba0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003ba4:	6001      	str	r1, [r0, #0]
 8003ba6:	f640 10f8 	movw	r0, #2552	; 0x9f8
 8003baa:	f243 51fe 	movw	r1, #13822	; 0x35fe
 8003bae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003bb2:	6001      	str	r1, [r0, #0]
 8003bb4:	f240 0c14 	movw	ip, #20
 8003bb8:	f640 1af4 	movw	sl, #2548	; 0x9f4
 8003bbc:	f640 1bf8 	movw	fp, #2552	; 0x9f8
 8003bc0:	f640 10f0 	movw	r0, #2544	; 0x9f0
 8003bc4:	2100      	movs	r1, #0
 8003bc6:	f249 0e69 	movw	lr, #36969	; 0x9069
 8003bca:	f244 6950 	movw	r9, #18000	; 0x4650
 8003bce:	ab05      	add	r3, sp, #20
 8003bd0:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8003bd4:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8003bd8:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8003bdc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003be0:	f8dc 5000 	ldr.w	r5, [ip]
 8003be4:	2d04      	cmp	r5, #4
 8003be6:	d116      	bne.n	8003c16 <decfile+0x9c>
 8003be8:	f8da 2000 	ldr.w	r2, [sl]
 8003bec:	b295      	uxth	r5, r2
 8003bee:	fb05 f50e 	mul.w	r5, r5, lr
 8003bf2:	eb05 4212 	add.w	r2, r5, r2, lsr #16
 8003bf6:	f8db 5000 	ldr.w	r5, [fp]
 8003bfa:	f8ca 2000 	str.w	r2, [sl]
 8003bfe:	b2ae      	uxth	r6, r5
 8003c00:	fb06 f609 	mul.w	r6, r6, r9
 8003c04:	eb06 4515 	add.w	r5, r6, r5, lsr #16
 8003c08:	eb05 4202 	add.w	r2, r5, r2, lsl #16
 8003c0c:	f8cb 5000 	str.w	r5, [fp]
 8003c10:	2500      	movs	r5, #0
 8003c12:	6002      	str	r2, [r0, #0]
 8003c14:	e000      	b.n	8003c18 <decfile+0x9e>
 8003c16:	5d42      	ldrb	r2, [r0, r5]
 8003c18:	545a      	strb	r2, [r3, r1]
 8003c1a:	3101      	adds	r1, #1
 8003c1c:	3501      	adds	r5, #1
 8003c1e:	2910      	cmp	r1, #16
 8003c20:	d1e0      	bne.n	8003be4 <decfile+0x6a>
 8003c22:	f8cc 5000 	str.w	r5, [ip]
 8003c26:	f000 fb8b 	bl	8004340 <rand>
 8003c2a:	f88d 0004 	strb.w	r0, [sp, #4]
 8003c2e:	f000 fb87 	bl	8004340 <rand>
 8003c32:	f88d 0005 	strb.w	r0, [sp, #5]
 8003c36:	f000 fb83 	bl	8004340 <rand>
 8003c3a:	f88d 0006 	strb.w	r0, [sp, #6]
 8003c3e:	f000 fb7f 	bl	8004340 <rand>
 8003c42:	f88d 0007 	strb.w	r0, [sp, #7]
 8003c46:	f000 fb7b 	bl	8004340 <rand>
 8003c4a:	f88d 0008 	strb.w	r0, [sp, #8]
 8003c4e:	f000 fb77 	bl	8004340 <rand>
 8003c52:	f88d 0009 	strb.w	r0, [sp, #9]
 8003c56:	f000 fb73 	bl	8004340 <rand>
 8003c5a:	f88d 000a 	strb.w	r0, [sp, #10]
 8003c5e:	f000 fb6f 	bl	8004340 <rand>
 8003c62:	f88d 000b 	strb.w	r0, [sp, #11]
 8003c66:	f000 fb6b 	bl	8004340 <rand>
 8003c6a:	f88d 000c 	strb.w	r0, [sp, #12]
 8003c6e:	f000 fb67 	bl	8004340 <rand>
 8003c72:	f88d 000d 	strb.w	r0, [sp, #13]
 8003c76:	f000 fb63 	bl	8004340 <rand>
 8003c7a:	f88d 000e 	strb.w	r0, [sp, #14]
 8003c7e:	f000 fb5f 	bl	8004340 <rand>
 8003c82:	f88d 000f 	strb.w	r0, [sp, #15]
 8003c86:	f000 fb5b 	bl	8004340 <rand>
 8003c8a:	f88d 0010 	strb.w	r0, [sp, #16]
 8003c8e:	f000 fb57 	bl	8004340 <rand>
 8003c92:	f88d 0011 	strb.w	r0, [sp, #17]
 8003c96:	f000 fb53 	bl	8004340 <rand>
 8003c9a:	f88d 0012 	strb.w	r0, [sp, #18]
 8003c9e:	f000 fb4f 	bl	8004340 <rand>
 8003ca2:	ae01      	add	r6, sp, #4
 8003ca4:	f88d 0013 	strb.w	r0, [sp, #19]
 8003ca8:	4621      	mov	r1, r4
 8003caa:	4642      	mov	r2, r8
 8003cac:	4630      	mov	r0, r6
 8003cae:	f7ff f8cd 	bl	8002e4c <decrypt>
 8003cb2:	7820      	ldrb	r0, [r4, #0]
 8003cb4:	f89d 1014 	ldrb.w	r1, [sp, #20]
 8003cb8:	f44f 7980 	mov.w	r9, #256	; 0x100
 8003cbc:	4048      	eors	r0, r1
 8003cbe:	7020      	strb	r0, [r4, #0]
 8003cc0:	7860      	ldrb	r0, [r4, #1]
 8003cc2:	f89d 1015 	ldrb.w	r1, [sp, #21]
 8003cc6:	4048      	eors	r0, r1
 8003cc8:	7060      	strb	r0, [r4, #1]
 8003cca:	78a0      	ldrb	r0, [r4, #2]
 8003ccc:	f89d 1016 	ldrb.w	r1, [sp, #22]
 8003cd0:	4048      	eors	r0, r1
 8003cd2:	70a0      	strb	r0, [r4, #2]
 8003cd4:	78e0      	ldrb	r0, [r4, #3]
 8003cd6:	f89d 1017 	ldrb.w	r1, [sp, #23]
 8003cda:	4048      	eors	r0, r1
 8003cdc:	70e0      	strb	r0, [r4, #3]
 8003cde:	7920      	ldrb	r0, [r4, #4]
 8003ce0:	f89d 1018 	ldrb.w	r1, [sp, #24]
 8003ce4:	4048      	eors	r0, r1
 8003ce6:	7120      	strb	r0, [r4, #4]
 8003ce8:	7960      	ldrb	r0, [r4, #5]
 8003cea:	f89d 1019 	ldrb.w	r1, [sp, #25]
 8003cee:	4048      	eors	r0, r1
 8003cf0:	7160      	strb	r0, [r4, #5]
 8003cf2:	79a0      	ldrb	r0, [r4, #6]
 8003cf4:	f89d 101a 	ldrb.w	r1, [sp, #26]
 8003cf8:	4048      	eors	r0, r1
 8003cfa:	71a0      	strb	r0, [r4, #6]
 8003cfc:	79e0      	ldrb	r0, [r4, #7]
 8003cfe:	f89d 101b 	ldrb.w	r1, [sp, #27]
 8003d02:	4048      	eors	r0, r1
 8003d04:	71e0      	strb	r0, [r4, #7]
 8003d06:	7a20      	ldrb	r0, [r4, #8]
 8003d08:	f89d 101c 	ldrb.w	r1, [sp, #28]
 8003d0c:	4048      	eors	r0, r1
 8003d0e:	7220      	strb	r0, [r4, #8]
 8003d10:	7a60      	ldrb	r0, [r4, #9]
 8003d12:	f89d 101d 	ldrb.w	r1, [sp, #29]
 8003d16:	4048      	eors	r0, r1
 8003d18:	7260      	strb	r0, [r4, #9]
 8003d1a:	7aa0      	ldrb	r0, [r4, #10]
 8003d1c:	f89d 101e 	ldrb.w	r1, [sp, #30]
 8003d20:	4048      	eors	r0, r1
 8003d22:	72a0      	strb	r0, [r4, #10]
 8003d24:	7ae0      	ldrb	r0, [r4, #11]
 8003d26:	f89d 101f 	ldrb.w	r1, [sp, #31]
 8003d2a:	4048      	eors	r0, r1
 8003d2c:	72e0      	strb	r0, [r4, #11]
 8003d2e:	7b20      	ldrb	r0, [r4, #12]
 8003d30:	f89d 1020 	ldrb.w	r1, [sp, #32]
 8003d34:	4048      	eors	r0, r1
 8003d36:	7320      	strb	r0, [r4, #12]
 8003d38:	7b60      	ldrb	r0, [r4, #13]
 8003d3a:	f89d 1021 	ldrb.w	r1, [sp, #33]	; 0x21
 8003d3e:	4048      	eors	r0, r1
 8003d40:	7360      	strb	r0, [r4, #13]
 8003d42:	7ba0      	ldrb	r0, [r4, #14]
 8003d44:	f89d 1022 	ldrb.w	r1, [sp, #34]	; 0x22
 8003d48:	4048      	eors	r0, r1
 8003d4a:	73a0      	strb	r0, [r4, #14]
 8003d4c:	7be0      	ldrb	r0, [r4, #15]
 8003d4e:	f89d 1023 	ldrb.w	r1, [sp, #35]	; 0x23
 8003d52:	4048      	eors	r0, r1
 8003d54:	73e0      	strb	r0, [r4, #15]
 8003d56:	a805      	add	r0, sp, #20
 8003d58:	4605      	mov	r5, r0
 8003d5a:	f000 faf1 	bl	8004340 <rand>
 8003d5e:	7028      	strb	r0, [r5, #0]
 8003d60:	f000 faee 	bl	8004340 <rand>
 8003d64:	7068      	strb	r0, [r5, #1]
 8003d66:	f000 faeb 	bl	8004340 <rand>
 8003d6a:	70a8      	strb	r0, [r5, #2]
 8003d6c:	f000 fae8 	bl	8004340 <rand>
 8003d70:	70e8      	strb	r0, [r5, #3]
 8003d72:	f000 fae5 	bl	8004340 <rand>
 8003d76:	7128      	strb	r0, [r5, #4]
 8003d78:	f000 fae2 	bl	8004340 <rand>
 8003d7c:	7168      	strb	r0, [r5, #5]
 8003d7e:	f000 fadf 	bl	8004340 <rand>
 8003d82:	71a8      	strb	r0, [r5, #6]
 8003d84:	f000 fadc 	bl	8004340 <rand>
 8003d88:	71e8      	strb	r0, [r5, #7]
 8003d8a:	f000 fad9 	bl	8004340 <rand>
 8003d8e:	7228      	strb	r0, [r5, #8]
 8003d90:	f000 fad6 	bl	8004340 <rand>
 8003d94:	7268      	strb	r0, [r5, #9]
 8003d96:	f000 fad3 	bl	8004340 <rand>
 8003d9a:	72a8      	strb	r0, [r5, #10]
 8003d9c:	f000 fad0 	bl	8004340 <rand>
 8003da0:	72e8      	strb	r0, [r5, #11]
 8003da2:	f000 facd 	bl	8004340 <rand>
 8003da6:	7328      	strb	r0, [r5, #12]
 8003da8:	f000 faca 	bl	8004340 <rand>
 8003dac:	7368      	strb	r0, [r5, #13]
 8003dae:	f000 fac7 	bl	8004340 <rand>
 8003db2:	73a8      	strb	r0, [r5, #14]
 8003db4:	f000 fac4 	bl	8004340 <rand>
 8003db8:	73e8      	strb	r0, [r5, #15]
 8003dba:	4628      	mov	r0, r5
 8003dbc:	4621      	mov	r1, r4
 8003dbe:	4642      	mov	r2, r8
 8003dc0:	f7ff f844 	bl	8002e4c <decrypt>
 8003dc4:	7830      	ldrb	r0, [r6, #0]
 8003dc6:	7821      	ldrb	r1, [r4, #0]
 8003dc8:	f1b9 0901 	subs.w	r9, r9, #1
 8003dcc:	ea80 0001 	eor.w	r0, r0, r1
 8003dd0:	7020      	strb	r0, [r4, #0]
 8003dd2:	7870      	ldrb	r0, [r6, #1]
 8003dd4:	7861      	ldrb	r1, [r4, #1]
 8003dd6:	ea80 0001 	eor.w	r0, r0, r1
 8003dda:	7060      	strb	r0, [r4, #1]
 8003ddc:	78b0      	ldrb	r0, [r6, #2]
 8003dde:	78a1      	ldrb	r1, [r4, #2]
 8003de0:	ea80 0001 	eor.w	r0, r0, r1
 8003de4:	70a0      	strb	r0, [r4, #2]
 8003de6:	78f0      	ldrb	r0, [r6, #3]
 8003de8:	78e1      	ldrb	r1, [r4, #3]
 8003dea:	ea80 0001 	eor.w	r0, r0, r1
 8003dee:	70e0      	strb	r0, [r4, #3]
 8003df0:	7930      	ldrb	r0, [r6, #4]
 8003df2:	7921      	ldrb	r1, [r4, #4]
 8003df4:	ea80 0001 	eor.w	r0, r0, r1
 8003df8:	7120      	strb	r0, [r4, #4]
 8003dfa:	7970      	ldrb	r0, [r6, #5]
 8003dfc:	7961      	ldrb	r1, [r4, #5]
 8003dfe:	ea80 0001 	eor.w	r0, r0, r1
 8003e02:	7160      	strb	r0, [r4, #5]
 8003e04:	79b0      	ldrb	r0, [r6, #6]
 8003e06:	79a1      	ldrb	r1, [r4, #6]
 8003e08:	ea80 0001 	eor.w	r0, r0, r1
 8003e0c:	71a0      	strb	r0, [r4, #6]
 8003e0e:	79f0      	ldrb	r0, [r6, #7]
 8003e10:	79e1      	ldrb	r1, [r4, #7]
 8003e12:	ea80 0001 	eor.w	r0, r0, r1
 8003e16:	71e0      	strb	r0, [r4, #7]
 8003e18:	7a30      	ldrb	r0, [r6, #8]
 8003e1a:	7a21      	ldrb	r1, [r4, #8]
 8003e1c:	ea80 0001 	eor.w	r0, r0, r1
 8003e20:	7220      	strb	r0, [r4, #8]
 8003e22:	7a70      	ldrb	r0, [r6, #9]
 8003e24:	7a61      	ldrb	r1, [r4, #9]
 8003e26:	ea80 0001 	eor.w	r0, r0, r1
 8003e2a:	7260      	strb	r0, [r4, #9]
 8003e2c:	7ab0      	ldrb	r0, [r6, #10]
 8003e2e:	7aa1      	ldrb	r1, [r4, #10]
 8003e30:	ea80 0001 	eor.w	r0, r0, r1
 8003e34:	72a0      	strb	r0, [r4, #10]
 8003e36:	7af0      	ldrb	r0, [r6, #11]
 8003e38:	7ae1      	ldrb	r1, [r4, #11]
 8003e3a:	ea80 0001 	eor.w	r0, r0, r1
 8003e3e:	72e0      	strb	r0, [r4, #11]
 8003e40:	7b30      	ldrb	r0, [r6, #12]
 8003e42:	7b21      	ldrb	r1, [r4, #12]
 8003e44:	ea80 0001 	eor.w	r0, r0, r1
 8003e48:	7320      	strb	r0, [r4, #12]
 8003e4a:	7b70      	ldrb	r0, [r6, #13]
 8003e4c:	7b61      	ldrb	r1, [r4, #13]
 8003e4e:	ea80 0001 	eor.w	r0, r0, r1
 8003e52:	7360      	strb	r0, [r4, #13]
 8003e54:	7bb0      	ldrb	r0, [r6, #14]
 8003e56:	7ba1      	ldrb	r1, [r4, #14]
 8003e58:	ea80 0001 	eor.w	r0, r0, r1
 8003e5c:	73a0      	strb	r0, [r4, #14]
 8003e5e:	7bf0      	ldrb	r0, [r6, #15]
 8003e60:	7be1      	ldrb	r1, [r4, #15]
 8003e62:	ea80 0001 	eor.w	r0, r0, r1
 8003e66:	73e0      	strb	r0, [r4, #15]
 8003e68:	4630      	mov	r0, r6
 8003e6a:	462e      	mov	r6, r5
 8003e6c:	f47f af74 	bne.w	8003d58 <decfile+0x1de>
 8003e70:	2000      	movs	r0, #0
 8003e72:	b009      	add	sp, #36	; 0x24
 8003e74:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8003e78:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003e7a <verify_benchmark>:
 8003e7a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e7e:	4770      	bx	lr

08003e80 <initialise_benchmark>:
 8003e80:	4770      	bx	lr

08003e82 <benchmark>:
 8003e82:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003e84:	af03      	add	r7, sp, #12
 8003e86:	f84d bd04 	str.w	fp, [sp, #-4]!
 8003e8a:	f5ad 7d14 	sub.w	sp, sp, #592	; 0x250
 8003e8e:	2400      	movs	r4, #0
 8003e90:	a801      	add	r0, sp, #4
 8003e92:	f44f 7103 	mov.w	r1, #524	; 0x20c
 8003e96:	e9cd 4492 	strd	r4, r4, [sp, #584]	; 0x248
 8003e9a:	e9cd 4490 	strd	r4, r4, [sp, #576]	; 0x240
 8003e9e:	e9cd 448e 	strd	r4, r4, [sp, #568]	; 0x238
 8003ea2:	e9cd 448c 	strd	r4, r4, [sp, #560]	; 0x230
 8003ea6:	f000 f969 	bl	800417c <__aeabi_memclr>
 8003eaa:	f240 0018 	movw	r0, #24
 8003eae:	2500      	movs	r5, #0
 8003eb0:	2201      	movs	r2, #1
 8003eb2:	f50d 7c0c 	add.w	ip, sp, #560	; 0x230
 8003eb6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003eba:	6800      	ldr	r0, [r0, #0]
 8003ebc:	7803      	ldrb	r3, [r0, #0]
 8003ebe:	2b00      	cmp	r3, #0
 8003ec0:	bf08      	it	eq
 8003ec2:	2501      	moveq	r5, #1
 8003ec4:	1e56      	subs	r6, r2, #1
 8003ec6:	07e9      	lsls	r1, r5, #31
 8003ec8:	d12b      	bne.n	8003f22 <benchmark+0xa0>
 8003eca:	f1a3 0130 	sub.w	r1, r3, #48	; 0x30
 8003ece:	b2c9      	uxtb	r1, r1
 8003ed0:	290a      	cmp	r1, #10
 8003ed2:	d202      	bcs.n	8003eda <benchmark+0x58>
 8003ed4:	f06f 012f 	mvn.w	r1, #47	; 0x2f
 8003ed8:	e006      	b.n	8003ee8 <benchmark+0x66>
 8003eda:	f1a3 0141 	sub.w	r1, r3, #65	; 0x41
 8003ede:	b2c9      	uxtb	r1, r1
 8003ee0:	2905      	cmp	r1, #5
 8003ee2:	d81a      	bhi.n	8003f1a <benchmark+0x98>
 8003ee4:	f06f 0136 	mvn.w	r1, #54	; 0x36
 8003ee8:	b2db      	uxtb	r3, r3
 8003eea:	2500      	movs	r5, #0
 8003eec:	eb03 1304 	add.w	r3, r3, r4, lsl #4
 8003ef0:	185c      	adds	r4, r3, r1
 8003ef2:	07f1      	lsls	r1, r6, #31
 8003ef4:	bf1e      	ittt	ne
 8003ef6:	eb02 71d2 	addne.w	r1, r2, r2, lsr #31
 8003efa:	eb0c 0161 	addne.w	r1, ip, r1, asr #1
 8003efe:	f801 4c01 	strbne.w	r4, [r1, #-1]
 8003f02:	5c83      	ldrb	r3, [r0, r2]
 8003f04:	1c51      	adds	r1, r2, #1
 8003f06:	2b00      	cmp	r3, #0
 8003f08:	bf08      	it	eq
 8003f0a:	2501      	moveq	r5, #1
 8003f0c:	2a40      	cmp	r2, #64	; 0x40
 8003f0e:	460a      	mov	r2, r1
 8003f10:	dbd8      	blt.n	8003ec4 <benchmark+0x42>
 8003f12:	b12b      	cbz	r3, 8003f20 <benchmark+0x9e>
 8003f14:	f06f 0002 	mvn.w	r0, #2
 8003f18:	e022      	b.n	8003f60 <benchmark+0xde>
 8003f1a:	f06f 0001 	mvn.w	r0, #1
 8003f1e:	e01f      	b.n	8003f60 <benchmark+0xde>
 8003f20:	1e4e      	subs	r6, r1, #1
 8003f22:	f06f 0003 	mvn.w	r0, #3
 8003f26:	2e20      	cmp	r6, #32
 8003f28:	db1a      	blt.n	8003f60 <benchmark+0xde>
 8003f2a:	f016 010f 	ands.w	r1, r6, #15
 8003f2e:	d117      	bne.n	8003f60 <benchmark+0xde>
 8003f30:	0874      	lsrs	r4, r6, #1
 8003f32:	ad8c      	add	r5, sp, #560	; 0x230
 8003f34:	ae01      	add	r6, sp, #4
 8003f36:	2201      	movs	r2, #1
 8003f38:	4628      	mov	r0, r5
 8003f3a:	4621      	mov	r1, r4
 8003f3c:	4633      	mov	r3, r6
 8003f3e:	f7fe f81a 	bl	8001f76 <set_key>
 8003f42:	a988      	add	r1, sp, #544	; 0x220
 8003f44:	4630      	mov	r0, r6
 8003f46:	f7ff fcf7 	bl	8003938 <encfile>
 8003f4a:	4628      	mov	r0, r5
 8003f4c:	4621      	mov	r1, r4
 8003f4e:	2202      	movs	r2, #2
 8003f50:	4633      	mov	r3, r6
 8003f52:	f7fe f810 	bl	8001f76 <set_key>
 8003f56:	a984      	add	r1, sp, #528	; 0x210
 8003f58:	4630      	mov	r0, r6
 8003f5a:	f7ff fe0e 	bl	8003b7a <decfile>
 8003f5e:	2000      	movs	r0, #0
 8003f60:	f50d 7d14 	add.w	sp, sp, #592	; 0x250
 8003f64:	f85d bb04 	ldr.w	fp, [sp], #4
 8003f68:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003f6a <__io_putchar>:
 8003f6a:	b580      	push	{r7, lr}
 8003f6c:	466f      	mov	r7, sp
 8003f6e:	b082      	sub	sp, #8
 8003f70:	9001      	str	r0, [sp, #4]
 8003f72:	f640 10fc 	movw	r0, #2556	; 0x9fc
 8003f76:	a901      	add	r1, sp, #4
 8003f78:	2201      	movs	r2, #1
 8003f7a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8003f7e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003f82:	f7fd ff0a 	bl	8001d9a <HAL_UART_Transmit>
 8003f86:	9801      	ldr	r0, [sp, #4]
 8003f88:	b002      	add	sp, #8
 8003f8a:	bd80      	pop	{r7, pc}

08003f8c <main>:
 8003f8c:	b5b0      	push	{r4, r5, r7, lr}
 8003f8e:	af02      	add	r7, sp, #8
 8003f90:	f640 11fc 	movw	r1, #2556	; 0x9fc
 8003f94:	f643 0000 	movw	r0, #14336	; 0x3800
 8003f98:	220c      	movs	r2, #12
 8003f9a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f9e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003fa2:	6008      	str	r0, [r1, #0]
 8003fa4:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8003fa8:	6048      	str	r0, [r1, #4]
 8003faa:	2000      	movs	r0, #0
 8003fac:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8003fb0:	6108      	str	r0, [r1, #16]
 8003fb2:	6248      	str	r0, [r1, #36]	; 0x24
 8003fb4:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8003fb8:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8003fbc:	2000      	movs	r0, #0
 8003fbe:	f7fd ff81 	bl	8001ec4 <BSP_COM_Init>
 8003fc2:	f7ff ff5d 	bl	8003e80 <initialise_benchmark>
 8003fc6:	f24a 605d 	movw	r0, #42589	; 0xa65d
 8003fca:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003fce:	f000 f94d 	bl	800426c <printf>
 8003fd2:	f24a 7008 	movw	r0, #42760	; 0xa708
 8003fd6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003fda:	f000 f9a9 	bl	8004330 <puts>
 8003fde:	f7fd f8e3 	bl	80011a8 <HAL_Init>
 8003fe2:	f7fd f8f9 	bl	80011d8 <HAL_GetTick>
 8003fe6:	4604      	mov	r4, r0
 8003fe8:	f7ff ff4b 	bl	8003e82 <benchmark>
 8003fec:	4605      	mov	r5, r0
 8003fee:	f7fd f8f3 	bl	80011d8 <HAL_GetTick>
 8003ff2:	1b04      	subs	r4, r0, r4
 8003ff4:	4628      	mov	r0, r5
 8003ff6:	f7ff ff40 	bl	8003e7a <verify_benchmark>
 8003ffa:	1c41      	adds	r1, r0, #1
 8003ffc:	d006      	beq.n	800400c <main+0x80>
 8003ffe:	2801      	cmp	r0, #1
 8004000:	d109      	bne.n	8004016 <main+0x8a>
 8004002:	f24a 6074 	movw	r0, #42612	; 0xa674
 8004006:	f6c0 0000 	movt	r0, #2048	; 0x800
 800400a:	e008      	b.n	800401e <main+0x92>
 800400c:	f24a 6098 	movw	r0, #42648	; 0xa698
 8004010:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004014:	e003      	b.n	800401e <main+0x92>
 8004016:	f24a 60cd 	movw	r0, #42701	; 0xa6cd
 800401a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800401e:	4621      	mov	r1, r4
 8004020:	f000 f924 	bl	800426c <printf>
 8004024:	2000      	movs	r0, #0
 8004026:	bdb0      	pop	{r4, r5, r7, pc}

08004028 <SysTick_Handler>:
 8004028:	b580      	push	{r7, lr}
 800402a:	466f      	mov	r7, sp
 800402c:	f7fd f8cc 	bl	80011c8 <HAL_IncTick>
 8004030:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8004034:	f7fd b926 	b.w	8001284 <HAL_SYSTICK_IRQHandler>

08004038 <_read>:
 8004038:	b5f0      	push	{r4, r5, r6, r7, lr}
 800403a:	af03      	add	r7, sp, #12
 800403c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8004040:	4614      	mov	r4, r2
 8004042:	460d      	mov	r5, r1
 8004044:	2c01      	cmp	r4, #1
 8004046:	db06      	blt.n	8004056 <_read+0x1e>
 8004048:	4626      	mov	r6, r4
 800404a:	f3af 8000 	nop.w
 800404e:	f805 0b01 	strb.w	r0, [r5], #1
 8004052:	3e01      	subs	r6, #1
 8004054:	d1f9      	bne.n	800404a <_read+0x12>
 8004056:	4620      	mov	r0, r4
 8004058:	f85d bb04 	ldr.w	fp, [sp], #4
 800405c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800405e <_write>:
 800405e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004060:	af03      	add	r7, sp, #12
 8004062:	f84d bd04 	str.w	fp, [sp, #-4]!
 8004066:	4614      	mov	r4, r2
 8004068:	460d      	mov	r5, r1
 800406a:	2c01      	cmp	r4, #1
 800406c:	db06      	blt.n	800407c <_write+0x1e>
 800406e:	4626      	mov	r6, r4
 8004070:	f815 0b01 	ldrb.w	r0, [r5], #1
 8004074:	f7ff ff79 	bl	8003f6a <__io_putchar>
 8004078:	3e01      	subs	r6, #1
 800407a:	d1f9      	bne.n	8004070 <_write+0x12>
 800407c:	4620      	mov	r0, r4
 800407e:	f85d bb04 	ldr.w	fp, [sp], #4
 8004082:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004084 <_sbrk>:
 8004084:	f640 2280 	movw	r2, #2688	; 0xa80
 8004088:	4601      	mov	r1, r0
 800408a:	466b      	mov	r3, sp
 800408c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004090:	6810      	ldr	r0, [r2, #0]
 8004092:	2800      	cmp	r0, #0
 8004094:	bf02      	ittt	eq
 8004096:	f640 3028 	movweq	r0, #2856	; 0xb28
 800409a:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800409e:	6010      	streq	r0, [r2, #0]
 80040a0:	4401      	add	r1, r0
 80040a2:	4299      	cmp	r1, r3
 80040a4:	bf9c      	itt	ls
 80040a6:	6011      	strls	r1, [r2, #0]
 80040a8:	4770      	bxls	lr
 80040aa:	b580      	push	{r7, lr}
 80040ac:	466f      	mov	r7, sp
 80040ae:	f000 f869 	bl	8004184 <__errno>
 80040b2:	210c      	movs	r1, #12
 80040b4:	6001      	str	r1, [r0, #0]
 80040b6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80040ba:	bd80      	pop	{r7, pc}

080040bc <_close>:
 80040bc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80040c0:	4770      	bx	lr

080040c2 <_fstat>:
 80040c2:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80040c6:	6048      	str	r0, [r1, #4]
 80040c8:	2000      	movs	r0, #0
 80040ca:	4770      	bx	lr

080040cc <_isatty>:
 80040cc:	2001      	movs	r0, #1
 80040ce:	4770      	bx	lr

080040d0 <_lseek>:
 80040d0:	2000      	movs	r0, #0
 80040d2:	4770      	bx	lr

080040d4 <SystemInit>:
 80040d4:	f64e 5088 	movw	r0, #60808	; 0xed88
 80040d8:	f04f 0c00 	mov.w	ip, #0
 80040dc:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80040e0:	6801      	ldr	r1, [r0, #0]
 80040e2:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80040e6:	6001      	str	r1, [r0, #0]
 80040e8:	f241 0100 	movw	r1, #4096	; 0x1000
 80040ec:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80040f0:	680a      	ldr	r2, [r1, #0]
 80040f2:	f042 0201 	orr.w	r2, r2, #1
 80040f6:	600a      	str	r2, [r1, #0]
 80040f8:	f8c1 c008 	str.w	ip, [r1, #8]
 80040fc:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8004100:	680b      	ldr	r3, [r1, #0]
 8004102:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8004106:	401a      	ands	r2, r3
 8004108:	600a      	str	r2, [r1, #0]
 800410a:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800410e:	60ca      	str	r2, [r1, #12]
 8004110:	680a      	ldr	r2, [r1, #0]
 8004112:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8004116:	600a      	str	r2, [r1, #0]
 8004118:	f8c1 c018 	str.w	ip, [r1, #24]
 800411c:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8004120:	f840 1c80 	str.w	r1, [r0, #-128]
 8004124:	4770      	bx	lr
	...

08004128 <Reset_Handler>:
 8004128:	f8df d034 	ldr.w	sp, [pc, #52]	; 8004160 <LoopForever+0x2>
 800412c:	2100      	movs	r1, #0
 800412e:	e003      	b.n	8004138 <LoopCopyDataInit>

08004130 <CopyDataInit>:
 8004130:	4b0c      	ldr	r3, [pc, #48]	; (8004164 <LoopForever+0x6>)
 8004132:	585b      	ldr	r3, [r3, r1]
 8004134:	5043      	str	r3, [r0, r1]
 8004136:	3104      	adds	r1, #4

08004138 <LoopCopyDataInit>:
 8004138:	480b      	ldr	r0, [pc, #44]	; (8004168 <LoopForever+0xa>)
 800413a:	4b0c      	ldr	r3, [pc, #48]	; (800416c <LoopForever+0xe>)
 800413c:	1842      	adds	r2, r0, r1
 800413e:	429a      	cmp	r2, r3
 8004140:	d3f6      	bcc.n	8004130 <CopyDataInit>
 8004142:	4a0b      	ldr	r2, [pc, #44]	; (8004170 <LoopForever+0x12>)
 8004144:	e002      	b.n	800414c <LoopFillZerobss>

08004146 <FillZerobss>:
 8004146:	2300      	movs	r3, #0
 8004148:	f842 3b04 	str.w	r3, [r2], #4

0800414c <LoopFillZerobss>:
 800414c:	4b09      	ldr	r3, [pc, #36]	; (8004174 <LoopForever+0x16>)
 800414e:	429a      	cmp	r2, r3
 8004150:	d3f9      	bcc.n	8004146 <FillZerobss>
 8004152:	f7ff ffbf 	bl	80040d4 <SystemInit>
 8004156:	f000 f81b 	bl	8004190 <__libc_init_array>
 800415a:	f7ff ff17 	bl	8003f8c <main>

0800415e <LoopForever>:
 800415e:	e7fe      	b.n	800415e <LoopForever>
 8004160:	20018000 	.word	0x20018000
 8004164:	0800a9b0 	.word	0x0800a9b0
 8004168:	20000000 	.word	0x20000000
 800416c:	200009d0 	.word	0x200009d0
 8004170:	200009d0 	.word	0x200009d0
 8004174:	20000b28 	.word	0x20000b28

08004178 <ADC1_2_IRQHandler>:
 8004178:	e7fe      	b.n	8004178 <ADC1_2_IRQHandler>
	...

0800417c <__aeabi_memclr>:
 800417c:	2200      	movs	r2, #0
 800417e:	f7fc b9bf 	b.w	8000500 <__aeabi_memset>
 8004182:	bf00      	nop

08004184 <__errno>:
 8004184:	4b01      	ldr	r3, [pc, #4]	; (800418c <__errno+0x8>)
 8004186:	6818      	ldr	r0, [r3, #0]
 8004188:	4770      	bx	lr
 800418a:	bf00      	nop
 800418c:	20000020 	.word	0x20000020

08004190 <__libc_init_array>:
 8004190:	b570      	push	{r4, r5, r6, lr}
 8004192:	4e0d      	ldr	r6, [pc, #52]	; (80041c8 <__libc_init_array+0x38>)
 8004194:	4d0d      	ldr	r5, [pc, #52]	; (80041cc <__libc_init_array+0x3c>)
 8004196:	1b76      	subs	r6, r6, r5
 8004198:	10b6      	asrs	r6, r6, #2
 800419a:	d006      	beq.n	80041aa <__libc_init_array+0x1a>
 800419c:	2400      	movs	r4, #0
 800419e:	3401      	adds	r4, #1
 80041a0:	f855 3b04 	ldr.w	r3, [r5], #4
 80041a4:	4798      	blx	r3
 80041a6:	42a6      	cmp	r6, r4
 80041a8:	d1f9      	bne.n	800419e <__libc_init_array+0xe>
 80041aa:	4e09      	ldr	r6, [pc, #36]	; (80041d0 <__libc_init_array+0x40>)
 80041ac:	4d09      	ldr	r5, [pc, #36]	; (80041d4 <__libc_init_array+0x44>)
 80041ae:	1b76      	subs	r6, r6, r5
 80041b0:	f004 fec8 	bl	8008f44 <_init>
 80041b4:	10b6      	asrs	r6, r6, #2
 80041b6:	d006      	beq.n	80041c6 <__libc_init_array+0x36>
 80041b8:	2400      	movs	r4, #0
 80041ba:	3401      	adds	r4, #1
 80041bc:	f855 3b04 	ldr.w	r3, [r5], #4
 80041c0:	4798      	blx	r3
 80041c2:	42a6      	cmp	r6, r4
 80041c4:	d1f9      	bne.n	80041ba <__libc_init_array+0x2a>
 80041c6:	bd70      	pop	{r4, r5, r6, pc}
 80041c8:	0800a9a0 	.word	0x0800a9a0
 80041cc:	0800a9a0 	.word	0x0800a9a0
 80041d0:	0800a9a8 	.word	0x0800a9a8
 80041d4:	0800a9a0 	.word	0x0800a9a0

080041d8 <memset>:
 80041d8:	b4f0      	push	{r4, r5, r6, r7}
 80041da:	0786      	lsls	r6, r0, #30
 80041dc:	d043      	beq.n	8004266 <memset+0x8e>
 80041de:	1e54      	subs	r4, r2, #1
 80041e0:	2a00      	cmp	r2, #0
 80041e2:	d03e      	beq.n	8004262 <memset+0x8a>
 80041e4:	b2ca      	uxtb	r2, r1
 80041e6:	4603      	mov	r3, r0
 80041e8:	e002      	b.n	80041f0 <memset+0x18>
 80041ea:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80041ee:	d338      	bcc.n	8004262 <memset+0x8a>
 80041f0:	f803 2b01 	strb.w	r2, [r3], #1
 80041f4:	079d      	lsls	r5, r3, #30
 80041f6:	d1f8      	bne.n	80041ea <memset+0x12>
 80041f8:	2c03      	cmp	r4, #3
 80041fa:	d92b      	bls.n	8004254 <memset+0x7c>
 80041fc:	b2cd      	uxtb	r5, r1
 80041fe:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8004202:	2c0f      	cmp	r4, #15
 8004204:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8004208:	d916      	bls.n	8004238 <memset+0x60>
 800420a:	f1a4 0710 	sub.w	r7, r4, #16
 800420e:	093f      	lsrs	r7, r7, #4
 8004210:	f103 0620 	add.w	r6, r3, #32
 8004214:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8004218:	f103 0210 	add.w	r2, r3, #16
 800421c:	e942 5504 	strd	r5, r5, [r2, #-16]
 8004220:	e942 5502 	strd	r5, r5, [r2, #-8]
 8004224:	3210      	adds	r2, #16
 8004226:	42b2      	cmp	r2, r6
 8004228:	d1f8      	bne.n	800421c <memset+0x44>
 800422a:	f004 040f 	and.w	r4, r4, #15
 800422e:	3701      	adds	r7, #1
 8004230:	2c03      	cmp	r4, #3
 8004232:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8004236:	d90d      	bls.n	8004254 <memset+0x7c>
 8004238:	461e      	mov	r6, r3
 800423a:	4622      	mov	r2, r4
 800423c:	3a04      	subs	r2, #4
 800423e:	2a03      	cmp	r2, #3
 8004240:	f846 5b04 	str.w	r5, [r6], #4
 8004244:	d8fa      	bhi.n	800423c <memset+0x64>
 8004246:	1f22      	subs	r2, r4, #4
 8004248:	f022 0203 	bic.w	r2, r2, #3
 800424c:	3204      	adds	r2, #4
 800424e:	4413      	add	r3, r2
 8004250:	f004 0403 	and.w	r4, r4, #3
 8004254:	b12c      	cbz	r4, 8004262 <memset+0x8a>
 8004256:	b2c9      	uxtb	r1, r1
 8004258:	441c      	add	r4, r3
 800425a:	f803 1b01 	strb.w	r1, [r3], #1
 800425e:	429c      	cmp	r4, r3
 8004260:	d1fb      	bne.n	800425a <memset+0x82>
 8004262:	bcf0      	pop	{r4, r5, r6, r7}
 8004264:	4770      	bx	lr
 8004266:	4614      	mov	r4, r2
 8004268:	4603      	mov	r3, r0
 800426a:	e7c5      	b.n	80041f8 <memset+0x20>

0800426c <printf>:
 800426c:	b40f      	push	{r0, r1, r2, r3}
 800426e:	b500      	push	{lr}
 8004270:	4907      	ldr	r1, [pc, #28]	; (8004290 <printf+0x24>)
 8004272:	b083      	sub	sp, #12
 8004274:	ab04      	add	r3, sp, #16
 8004276:	6808      	ldr	r0, [r1, #0]
 8004278:	f853 2b04 	ldr.w	r2, [r3], #4
 800427c:	6881      	ldr	r1, [r0, #8]
 800427e:	9301      	str	r3, [sp, #4]
 8004280:	f000 f87e 	bl	8004380 <_vfprintf_r>
 8004284:	b003      	add	sp, #12
 8004286:	f85d eb04 	ldr.w	lr, [sp], #4
 800428a:	b004      	add	sp, #16
 800428c:	4770      	bx	lr
 800428e:	bf00      	nop
 8004290:	20000020 	.word	0x20000020

08004294 <_puts_r>:
 8004294:	b570      	push	{r4, r5, r6, lr}
 8004296:	4605      	mov	r5, r0
 8004298:	b088      	sub	sp, #32
 800429a:	4608      	mov	r0, r1
 800429c:	460c      	mov	r4, r1
 800429e:	f7fc fa2f 	bl	8000700 <strlen>
 80042a2:	4a22      	ldr	r2, [pc, #136]	; (800432c <_puts_r+0x98>)
 80042a4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80042a6:	9404      	str	r4, [sp, #16]
 80042a8:	2601      	movs	r6, #1
 80042aa:	1c44      	adds	r4, r0, #1
 80042ac:	a904      	add	r1, sp, #16
 80042ae:	9206      	str	r2, [sp, #24]
 80042b0:	2202      	movs	r2, #2
 80042b2:	9403      	str	r4, [sp, #12]
 80042b4:	9005      	str	r0, [sp, #20]
 80042b6:	68ac      	ldr	r4, [r5, #8]
 80042b8:	9607      	str	r6, [sp, #28]
 80042ba:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80042be:	b31b      	cbz	r3, 8004308 <_puts_r+0x74>
 80042c0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80042c2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80042c6:	07ce      	lsls	r6, r1, #31
 80042c8:	b29a      	uxth	r2, r3
 80042ca:	d401      	bmi.n	80042d0 <_puts_r+0x3c>
 80042cc:	0590      	lsls	r0, r2, #22
 80042ce:	d525      	bpl.n	800431c <_puts_r+0x88>
 80042d0:	0491      	lsls	r1, r2, #18
 80042d2:	d406      	bmi.n	80042e2 <_puts_r+0x4e>
 80042d4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80042d6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80042da:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80042de:	81a3      	strh	r3, [r4, #12]
 80042e0:	6662      	str	r2, [r4, #100]	; 0x64
 80042e2:	4628      	mov	r0, r5
 80042e4:	aa01      	add	r2, sp, #4
 80042e6:	4621      	mov	r1, r4
 80042e8:	f003 f87e 	bl	80073e8 <__sfvwrite_r>
 80042ec:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80042ee:	2800      	cmp	r0, #0
 80042f0:	bf0c      	ite	eq
 80042f2:	250a      	moveq	r5, #10
 80042f4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80042f8:	07da      	lsls	r2, r3, #31
 80042fa:	d402      	bmi.n	8004302 <_puts_r+0x6e>
 80042fc:	89a3      	ldrh	r3, [r4, #12]
 80042fe:	059b      	lsls	r3, r3, #22
 8004300:	d506      	bpl.n	8004310 <_puts_r+0x7c>
 8004302:	4628      	mov	r0, r5
 8004304:	b008      	add	sp, #32
 8004306:	bd70      	pop	{r4, r5, r6, pc}
 8004308:	4628      	mov	r0, r5
 800430a:	f002 fed7 	bl	80070bc <__sinit>
 800430e:	e7d7      	b.n	80042c0 <_puts_r+0x2c>
 8004310:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8004312:	f003 fa25 	bl	8007760 <__retarget_lock_release_recursive>
 8004316:	4628      	mov	r0, r5
 8004318:	b008      	add	sp, #32
 800431a:	bd70      	pop	{r4, r5, r6, pc}
 800431c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800431e:	f003 fa1d 	bl	800775c <__retarget_lock_acquire_recursive>
 8004322:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004326:	b29a      	uxth	r2, r3
 8004328:	e7d2      	b.n	80042d0 <_puts_r+0x3c>
 800432a:	bf00      	nop
 800432c:	0800a710 	.word	0x0800a710

08004330 <puts>:
 8004330:	4b02      	ldr	r3, [pc, #8]	; (800433c <puts+0xc>)
 8004332:	4601      	mov	r1, r0
 8004334:	6818      	ldr	r0, [r3, #0]
 8004336:	f7ff bfad 	b.w	8004294 <_puts_r>
 800433a:	bf00      	nop
 800433c:	20000020 	.word	0x20000020

08004340 <rand>:
 8004340:	4b0b      	ldr	r3, [pc, #44]	; (8004370 <rand+0x30>)
 8004342:	480c      	ldr	r0, [pc, #48]	; (8004374 <rand+0x34>)
 8004344:	6819      	ldr	r1, [r3, #0]
 8004346:	e9d1 232a 	ldrd	r2, r3, [r1, #168]	; 0xa8
 800434a:	b430      	push	{r4, r5}
 800434c:	4c0a      	ldr	r4, [pc, #40]	; (8004378 <rand+0x38>)
 800434e:	fb00 f002 	mul.w	r0, r0, r2
 8004352:	fb04 0003 	mla	r0, r4, r3, r0
 8004356:	fba2 2304 	umull	r2, r3, r2, r4
 800435a:	1c54      	adds	r4, r2, #1
 800435c:	4403      	add	r3, r0
 800435e:	f143 0500 	adc.w	r5, r3, #0
 8004362:	f025 4000 	bic.w	r0, r5, #2147483648	; 0x80000000
 8004366:	e9c1 452a 	strd	r4, r5, [r1, #168]	; 0xa8
 800436a:	bc30      	pop	{r4, r5}
 800436c:	4770      	bx	lr
 800436e:	bf00      	nop
 8004370:	20000020 	.word	0x20000020
 8004374:	5851f42d 	.word	0x5851f42d
 8004378:	4c957f2d 	.word	0x4c957f2d
 800437c:	00000000 	.word	0x00000000

08004380 <_vfprintf_r>:
 8004380:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004384:	b0d7      	sub	sp, #348	; 0x15c
 8004386:	461c      	mov	r4, r3
 8004388:	4689      	mov	r9, r1
 800438a:	4617      	mov	r7, r2
 800438c:	4605      	mov	r5, r0
 800438e:	9003      	str	r0, [sp, #12]
 8004390:	f003 f9d2 	bl	8007738 <_localeconv_r>
 8004394:	6803      	ldr	r3, [r0, #0]
 8004396:	9316      	str	r3, [sp, #88]	; 0x58
 8004398:	4618      	mov	r0, r3
 800439a:	f7fc f9b1 	bl	8000700 <strlen>
 800439e:	9408      	str	r4, [sp, #32]
 80043a0:	9015      	str	r0, [sp, #84]	; 0x54
 80043a2:	b11d      	cbz	r5, 80043ac <_vfprintf_r+0x2c>
 80043a4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80043a6:	2b00      	cmp	r3, #0
 80043a8:	f000 8107 	beq.w	80045ba <_vfprintf_r+0x23a>
 80043ac:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80043b0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80043b4:	07c8      	lsls	r0, r1, #31
 80043b6:	b293      	uxth	r3, r2
 80043b8:	d402      	bmi.n	80043c0 <_vfprintf_r+0x40>
 80043ba:	0599      	lsls	r1, r3, #22
 80043bc:	f140 811f 	bpl.w	80045fe <_vfprintf_r+0x27e>
 80043c0:	049e      	lsls	r6, r3, #18
 80043c2:	d40a      	bmi.n	80043da <_vfprintf_r+0x5a>
 80043c4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80043c8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80043cc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80043d0:	f8a9 300c 	strh.w	r3, [r9, #12]
 80043d4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80043d8:	b29b      	uxth	r3, r3
 80043da:	071d      	lsls	r5, r3, #28
 80043dc:	f140 80b2 	bpl.w	8004544 <_vfprintf_r+0x1c4>
 80043e0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80043e4:	2a00      	cmp	r2, #0
 80043e6:	f000 80ad 	beq.w	8004544 <_vfprintf_r+0x1c4>
 80043ea:	f003 021a 	and.w	r2, r3, #26
 80043ee:	2a0a      	cmp	r2, #10
 80043f0:	f000 80c9 	beq.w	8004586 <_vfprintf_r+0x206>
 80043f4:	2300      	movs	r3, #0
 80043f6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8004610 <_vfprintf_r+0x290>
 80043fa:	9310      	str	r3, [sp, #64]	; 0x40
 80043fc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8004400:	9317      	str	r3, [sp, #92]	; 0x5c
 8004402:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8004406:	931b      	str	r3, [sp, #108]	; 0x6c
 8004408:	9318      	str	r3, [sp, #96]	; 0x60
 800440a:	9305      	str	r3, [sp, #20]
 800440c:	ab2d      	add	r3, sp, #180	; 0xb4
 800440e:	932a      	str	r3, [sp, #168]	; 0xa8
 8004410:	469b      	mov	fp, r3
 8004412:	783b      	ldrb	r3, [r7, #0]
 8004414:	f8cd 901c 	str.w	r9, [sp, #28]
 8004418:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800441c:	2b00      	cmp	r3, #0
 800441e:	f000 8259 	beq.w	80048d4 <_vfprintf_r+0x554>
 8004422:	2b25      	cmp	r3, #37	; 0x25
 8004424:	463c      	mov	r4, r7
 8004426:	d102      	bne.n	800442e <_vfprintf_r+0xae>
 8004428:	e01d      	b.n	8004466 <_vfprintf_r+0xe6>
 800442a:	2b25      	cmp	r3, #37	; 0x25
 800442c:	d003      	beq.n	8004436 <_vfprintf_r+0xb6>
 800442e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8004432:	2b00      	cmp	r3, #0
 8004434:	d1f9      	bne.n	800442a <_vfprintf_r+0xaa>
 8004436:	1be5      	subs	r5, r4, r7
 8004438:	b18d      	cbz	r5, 800445e <_vfprintf_r+0xde>
 800443a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800443e:	3301      	adds	r3, #1
 8004440:	442a      	add	r2, r5
 8004442:	2b07      	cmp	r3, #7
 8004444:	f8cb 7000 	str.w	r7, [fp]
 8004448:	f8cb 5004 	str.w	r5, [fp, #4]
 800444c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8004450:	f300 80ca 	bgt.w	80045e8 <_vfprintf_r+0x268>
 8004454:	f10b 0b08 	add.w	fp, fp, #8
 8004458:	9b05      	ldr	r3, [sp, #20]
 800445a:	442b      	add	r3, r5
 800445c:	9305      	str	r3, [sp, #20]
 800445e:	7823      	ldrb	r3, [r4, #0]
 8004460:	2b00      	cmp	r3, #0
 8004462:	f000 8237 	beq.w	80048d4 <_vfprintf_r+0x554>
 8004466:	2300      	movs	r3, #0
 8004468:	7866      	ldrb	r6, [r4, #1]
 800446a:	9306      	str	r3, [sp, #24]
 800446c:	4698      	mov	r8, r3
 800446e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8004472:	f104 0a01 	add.w	sl, r4, #1
 8004476:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800447a:	252b      	movs	r5, #43	; 0x2b
 800447c:	f10a 0a01 	add.w	sl, sl, #1
 8004480:	f1a6 0320 	sub.w	r3, r6, #32
 8004484:	2b5a      	cmp	r3, #90	; 0x5a
 8004486:	f200 842a 	bhi.w	8004cde <_vfprintf_r+0x95e>
 800448a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800448e:	03aa      	.short	0x03aa
 8004490:	04280428 	.word	0x04280428
 8004494:	0428029c 	.word	0x0428029c
 8004498:	04280428 	.word	0x04280428
 800449c:	042802a7 	.word	0x042802a7
 80044a0:	02c60428 	.word	0x02c60428
 80044a4:	042802d2 	.word	0x042802d2
 80044a8:	02dc02d7 	.word	0x02dc02d7
 80044ac:	02f60428 	.word	0x02f60428
 80044b0:	026d026d 	.word	0x026d026d
 80044b4:	026d026d 	.word	0x026d026d
 80044b8:	026d026d 	.word	0x026d026d
 80044bc:	026d026d 	.word	0x026d026d
 80044c0:	0428026d 	.word	0x0428026d
 80044c4:	04280428 	.word	0x04280428
 80044c8:	04280428 	.word	0x04280428
 80044cc:	04280428 	.word	0x04280428
 80044d0:	042802fb 	.word	0x042802fb
 80044d4:	03f3033c 	.word	0x03f3033c
 80044d8:	02fb02fb 	.word	0x02fb02fb
 80044dc:	042802fb 	.word	0x042802fb
 80044e0:	04280428 	.word	0x04280428
 80044e4:	03ee0428 	.word	0x03ee0428
 80044e8:	04280428 	.word	0x04280428
 80044ec:	0428009a 	.word	0x0428009a
 80044f0:	04280428 	.word	0x04280428
 80044f4:	04280350 	.word	0x04280350
 80044f8:	04280379 	.word	0x04280379
 80044fc:	03900428 	.word	0x03900428
 8004500:	04280428 	.word	0x04280428
 8004504:	04280428 	.word	0x04280428
 8004508:	04280428 	.word	0x04280428
 800450c:	04280428 	.word	0x04280428
 8004510:	042802fb 	.word	0x042802fb
 8004514:	00c5033c 	.word	0x00c5033c
 8004518:	02fb02fb 	.word	0x02fb02fb
 800451c:	03d102fb 	.word	0x03d102fb
 8004520:	007000c5 	.word	0x007000c5
 8004524:	03b50428 	.word	0x03b50428
 8004528:	03c20428 	.word	0x03c20428
 800452c:	03de009c 	.word	0x03de009c
 8004530:	04280070 	.word	0x04280070
 8004534:	00720350 	.word	0x00720350
 8004538:	0428022c 	.word	0x0428022c
 800453c:	027c0428 	.word	0x027c0428
 8004540:	00720428 	.word	0x00720428
 8004544:	4649      	mov	r1, r9
 8004546:	9803      	ldr	r0, [sp, #12]
 8004548:	f001 fc9a 	bl	8005e80 <__swsetup_r>
 800454c:	b1a0      	cbz	r0, 8004578 <_vfprintf_r+0x1f8>
 800454e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8004552:	07d8      	lsls	r0, r3, #31
 8004554:	d404      	bmi.n	8004560 <_vfprintf_r+0x1e0>
 8004556:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800455a:	0599      	lsls	r1, r3, #22
 800455c:	f140 83b7 	bpl.w	8004cce <_vfprintf_r+0x94e>
 8004560:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004564:	9305      	str	r3, [sp, #20]
 8004566:	9805      	ldr	r0, [sp, #20]
 8004568:	b057      	add	sp, #348	; 0x15c
 800456a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800456e:	f048 0820 	orr.w	r8, r8, #32
 8004572:	f89a 6000 	ldrb.w	r6, [sl]
 8004576:	e781      	b.n	800447c <_vfprintf_r+0xfc>
 8004578:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800457c:	f003 021a 	and.w	r2, r3, #26
 8004580:	2a0a      	cmp	r2, #10
 8004582:	f47f af37 	bne.w	80043f4 <_vfprintf_r+0x74>
 8004586:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800458a:	2a00      	cmp	r2, #0
 800458c:	f6ff af32 	blt.w	80043f4 <_vfprintf_r+0x74>
 8004590:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8004594:	07d2      	lsls	r2, r2, #31
 8004596:	d405      	bmi.n	80045a4 <_vfprintf_r+0x224>
 8004598:	059b      	lsls	r3, r3, #22
 800459a:	d403      	bmi.n	80045a4 <_vfprintf_r+0x224>
 800459c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80045a0:	f003 f8de 	bl	8007760 <__retarget_lock_release_recursive>
 80045a4:	4623      	mov	r3, r4
 80045a6:	463a      	mov	r2, r7
 80045a8:	4649      	mov	r1, r9
 80045aa:	9803      	ldr	r0, [sp, #12]
 80045ac:	f001 fc26 	bl	8005dfc <__sbprintf>
 80045b0:	9005      	str	r0, [sp, #20]
 80045b2:	9805      	ldr	r0, [sp, #20]
 80045b4:	b057      	add	sp, #348	; 0x15c
 80045b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80045ba:	9803      	ldr	r0, [sp, #12]
 80045bc:	f002 fd7e 	bl	80070bc <__sinit>
 80045c0:	e6f4      	b.n	80043ac <_vfprintf_r+0x2c>
 80045c2:	f048 0810 	orr.w	r8, r8, #16
 80045c6:	f018 0f20 	tst.w	r8, #32
 80045ca:	f000 836c 	beq.w	8004ca6 <_vfprintf_r+0x926>
 80045ce:	9c08      	ldr	r4, [sp, #32]
 80045d0:	3407      	adds	r4, #7
 80045d2:	f024 0307 	bic.w	r3, r4, #7
 80045d6:	e9d3 4500 	ldrd	r4, r5, [r3]
 80045da:	f103 0208 	add.w	r2, r3, #8
 80045de:	9208      	str	r2, [sp, #32]
 80045e0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80045e4:	2200      	movs	r2, #0
 80045e6:	e18c      	b.n	8004902 <_vfprintf_r+0x582>
 80045e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80045ea:	9907      	ldr	r1, [sp, #28]
 80045ec:	9803      	ldr	r0, [sp, #12]
 80045ee:	f004 f9f5 	bl	80089dc <__sprint_r>
 80045f2:	2800      	cmp	r0, #0
 80045f4:	f041 8376 	bne.w	8005ce4 <_vfprintf_r+0x1964>
 80045f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80045fc:	e72c      	b.n	8004458 <_vfprintf_r+0xd8>
 80045fe:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004602:	f003 f8ab 	bl	800775c <__retarget_lock_acquire_recursive>
 8004606:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800460a:	b293      	uxth	r3, r2
 800460c:	e6d8      	b.n	80043c0 <_vfprintf_r+0x40>
 800460e:	bf00      	nop
	...
 8004618:	4643      	mov	r3, r8
 800461a:	069f      	lsls	r7, r3, #26
 800461c:	f140 832f 	bpl.w	8004c7e <_vfprintf_r+0x8fe>
 8004620:	9c08      	ldr	r4, [sp, #32]
 8004622:	3407      	adds	r4, #7
 8004624:	f024 0407 	bic.w	r4, r4, #7
 8004628:	e9d4 0100 	ldrd	r0, r1, [r4]
 800462c:	f104 0208 	add.w	r2, r4, #8
 8004630:	9208      	str	r2, [sp, #32]
 8004632:	4604      	mov	r4, r0
 8004634:	460d      	mov	r5, r1
 8004636:	2800      	cmp	r0, #0
 8004638:	f171 0200 	sbcs.w	r2, r1, #0
 800463c:	da05      	bge.n	800464a <_vfprintf_r+0x2ca>
 800463e:	222d      	movs	r2, #45	; 0x2d
 8004640:	4264      	negs	r4, r4
 8004642:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8004646:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800464a:	aa56      	add	r2, sp, #344	; 0x158
 800464c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004650:	9204      	str	r2, [sp, #16]
 8004652:	f000 84b2 	beq.w	8004fba <_vfprintf_r+0xc3a>
 8004656:	2201      	movs	r2, #1
 8004658:	ea54 0105 	orrs.w	r1, r4, r5
 800465c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8004660:	f040 8159 	bne.w	8004916 <_vfprintf_r+0x596>
 8004664:	f1b9 0f00 	cmp.w	r9, #0
 8004668:	f040 8619 	bne.w	800529e <_vfprintf_r+0xf1e>
 800466c:	2a00      	cmp	r2, #0
 800466e:	f040 8508 	bne.w	8005082 <_vfprintf_r+0xd02>
 8004672:	f013 0301 	ands.w	r3, r3, #1
 8004676:	af56      	add	r7, sp, #344	; 0x158
 8004678:	9309      	str	r3, [sp, #36]	; 0x24
 800467a:	d002      	beq.n	8004682 <_vfprintf_r+0x302>
 800467c:	2330      	movs	r3, #48	; 0x30
 800467e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8004682:	2300      	movs	r3, #0
 8004684:	930a      	str	r3, [sp, #40]	; 0x28
 8004686:	930f      	str	r3, [sp, #60]	; 0x3c
 8004688:	9314      	str	r3, [sp, #80]	; 0x50
 800468a:	9311      	str	r3, [sp, #68]	; 0x44
 800468c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800468e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004692:	454b      	cmp	r3, r9
 8004694:	bfb8      	it	lt
 8004696:	464b      	movlt	r3, r9
 8004698:	9304      	str	r3, [sp, #16]
 800469a:	b112      	cbz	r2, 80046a2 <_vfprintf_r+0x322>
 800469c:	9b04      	ldr	r3, [sp, #16]
 800469e:	3301      	adds	r3, #1
 80046a0:	9304      	str	r3, [sp, #16]
 80046a2:	f018 0302 	ands.w	r3, r8, #2
 80046a6:	930b      	str	r3, [sp, #44]	; 0x2c
 80046a8:	d002      	beq.n	80046b0 <_vfprintf_r+0x330>
 80046aa:	9b04      	ldr	r3, [sp, #16]
 80046ac:	3302      	adds	r3, #2
 80046ae:	9304      	str	r3, [sp, #16]
 80046b0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80046b4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80046b6:	930e      	str	r3, [sp, #56]	; 0x38
 80046b8:	d13f      	bne.n	800473a <_vfprintf_r+0x3ba>
 80046ba:	9b06      	ldr	r3, [sp, #24]
 80046bc:	9904      	ldr	r1, [sp, #16]
 80046be:	1a5d      	subs	r5, r3, r1
 80046c0:	2d00      	cmp	r5, #0
 80046c2:	dd3a      	ble.n	800473a <_vfprintf_r+0x3ba>
 80046c4:	2d10      	cmp	r5, #16
 80046c6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80046c8:	dd29      	ble.n	800471e <_vfprintf_r+0x39e>
 80046ca:	4659      	mov	r1, fp
 80046cc:	4620      	mov	r0, r4
 80046ce:	9620      	str	r6, [sp, #128]	; 0x80
 80046d0:	2310      	movs	r3, #16
 80046d2:	9c03      	ldr	r4, [sp, #12]
 80046d4:	9e07      	ldr	r6, [sp, #28]
 80046d6:	46bb      	mov	fp, r7
 80046d8:	e004      	b.n	80046e4 <_vfprintf_r+0x364>
 80046da:	3d10      	subs	r5, #16
 80046dc:	2d10      	cmp	r5, #16
 80046de:	f101 0108 	add.w	r1, r1, #8
 80046e2:	dd18      	ble.n	8004716 <_vfprintf_r+0x396>
 80046e4:	3201      	adds	r2, #1
 80046e6:	4fba      	ldr	r7, [pc, #744]	; (80049d0 <_vfprintf_r+0x650>)
 80046e8:	3010      	adds	r0, #16
 80046ea:	2a07      	cmp	r2, #7
 80046ec:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80046f0:	e9c1 7300 	strd	r7, r3, [r1]
 80046f4:	ddf1      	ble.n	80046da <_vfprintf_r+0x35a>
 80046f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80046f8:	4631      	mov	r1, r6
 80046fa:	4620      	mov	r0, r4
 80046fc:	930c      	str	r3, [sp, #48]	; 0x30
 80046fe:	f004 f96d 	bl	80089dc <__sprint_r>
 8004702:	2800      	cmp	r0, #0
 8004704:	f040 843d 	bne.w	8004f82 <_vfprintf_r+0xc02>
 8004708:	3d10      	subs	r5, #16
 800470a:	2d10      	cmp	r5, #16
 800470c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8004710:	a92d      	add	r1, sp, #180	; 0xb4
 8004712:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004714:	dce6      	bgt.n	80046e4 <_vfprintf_r+0x364>
 8004716:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8004718:	465f      	mov	r7, fp
 800471a:	4604      	mov	r4, r0
 800471c:	468b      	mov	fp, r1
 800471e:	3201      	adds	r2, #1
 8004720:	4bab      	ldr	r3, [pc, #684]	; (80049d0 <_vfprintf_r+0x650>)
 8004722:	442c      	add	r4, r5
 8004724:	2a07      	cmp	r2, #7
 8004726:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800472a:	e9cb 3500 	strd	r3, r5, [fp]
 800472e:	f300 84ff 	bgt.w	8005130 <_vfprintf_r+0xdb0>
 8004732:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004736:	f10b 0b08 	add.w	fp, fp, #8
 800473a:	b172      	cbz	r2, 800475a <_vfprintf_r+0x3da>
 800473c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800473e:	3201      	adds	r2, #1
 8004740:	3401      	adds	r4, #1
 8004742:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8004746:	2101      	movs	r1, #1
 8004748:	2a07      	cmp	r2, #7
 800474a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800474e:	e9cb 0100 	strd	r0, r1, [fp]
 8004752:	f300 8418 	bgt.w	8004f86 <_vfprintf_r+0xc06>
 8004756:	f10b 0b08 	add.w	fp, fp, #8
 800475a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800475c:	b16b      	cbz	r3, 800477a <_vfprintf_r+0x3fa>
 800475e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004760:	3301      	adds	r3, #1
 8004762:	3402      	adds	r4, #2
 8004764:	a923      	add	r1, sp, #140	; 0x8c
 8004766:	2202      	movs	r2, #2
 8004768:	2b07      	cmp	r3, #7
 800476a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800476e:	e9cb 1200 	strd	r1, r2, [fp]
 8004772:	f300 8415 	bgt.w	8004fa0 <_vfprintf_r+0xc20>
 8004776:	f10b 0b08 	add.w	fp, fp, #8
 800477a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800477c:	2b80      	cmp	r3, #128	; 0x80
 800477e:	f000 8331 	beq.w	8004de4 <_vfprintf_r+0xa64>
 8004782:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004784:	eba9 0503 	sub.w	r5, r9, r3
 8004788:	2d00      	cmp	r5, #0
 800478a:	dd37      	ble.n	80047fc <_vfprintf_r+0x47c>
 800478c:	2d10      	cmp	r5, #16
 800478e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004790:	4b90      	ldr	r3, [pc, #576]	; (80049d4 <_vfprintf_r+0x654>)
 8004792:	dd28      	ble.n	80047e6 <_vfprintf_r+0x466>
 8004794:	4659      	mov	r1, fp
 8004796:	4620      	mov	r0, r4
 8004798:	46bb      	mov	fp, r7
 800479a:	f04f 0910 	mov.w	r9, #16
 800479e:	4637      	mov	r7, r6
 80047a0:	461c      	mov	r4, r3
 80047a2:	9e07      	ldr	r6, [sp, #28]
 80047a4:	e004      	b.n	80047b0 <_vfprintf_r+0x430>
 80047a6:	3d10      	subs	r5, #16
 80047a8:	2d10      	cmp	r5, #16
 80047aa:	f101 0108 	add.w	r1, r1, #8
 80047ae:	dd15      	ble.n	80047dc <_vfprintf_r+0x45c>
 80047b0:	3201      	adds	r2, #1
 80047b2:	3010      	adds	r0, #16
 80047b4:	2a07      	cmp	r2, #7
 80047b6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80047ba:	e9c1 4900 	strd	r4, r9, [r1]
 80047be:	ddf2      	ble.n	80047a6 <_vfprintf_r+0x426>
 80047c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80047c2:	4631      	mov	r1, r6
 80047c4:	9803      	ldr	r0, [sp, #12]
 80047c6:	f004 f909 	bl	80089dc <__sprint_r>
 80047ca:	2800      	cmp	r0, #0
 80047cc:	f040 83d9 	bne.w	8004f82 <_vfprintf_r+0xc02>
 80047d0:	3d10      	subs	r5, #16
 80047d2:	2d10      	cmp	r5, #16
 80047d4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80047d8:	a92d      	add	r1, sp, #180	; 0xb4
 80047da:	dce9      	bgt.n	80047b0 <_vfprintf_r+0x430>
 80047dc:	463e      	mov	r6, r7
 80047de:	4623      	mov	r3, r4
 80047e0:	465f      	mov	r7, fp
 80047e2:	4604      	mov	r4, r0
 80047e4:	468b      	mov	fp, r1
 80047e6:	3201      	adds	r2, #1
 80047e8:	442c      	add	r4, r5
 80047ea:	2a07      	cmp	r2, #7
 80047ec:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80047f0:	e9cb 3500 	strd	r3, r5, [fp]
 80047f4:	f300 83ef 	bgt.w	8004fd6 <_vfprintf_r+0xc56>
 80047f8:	f10b 0b08 	add.w	fp, fp, #8
 80047fc:	f418 7f80 	tst.w	r8, #256	; 0x100
 8004800:	f040 8280 	bne.w	8004d04 <_vfprintf_r+0x984>
 8004804:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004806:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004808:	f8cb 7000 	str.w	r7, [fp]
 800480c:	3301      	adds	r3, #1
 800480e:	4414      	add	r4, r2
 8004810:	2b07      	cmp	r3, #7
 8004812:	942c      	str	r4, [sp, #176]	; 0xb0
 8004814:	f8cb 2004 	str.w	r2, [fp, #4]
 8004818:	932b      	str	r3, [sp, #172]	; 0xac
 800481a:	f300 8392 	bgt.w	8004f42 <_vfprintf_r+0xbc2>
 800481e:	f10b 0b08 	add.w	fp, fp, #8
 8004822:	f018 0f04 	tst.w	r8, #4
 8004826:	d03b      	beq.n	80048a0 <_vfprintf_r+0x520>
 8004828:	9b06      	ldr	r3, [sp, #24]
 800482a:	9a04      	ldr	r2, [sp, #16]
 800482c:	1a9d      	subs	r5, r3, r2
 800482e:	2d00      	cmp	r5, #0
 8004830:	dd36      	ble.n	80048a0 <_vfprintf_r+0x520>
 8004832:	2d10      	cmp	r5, #16
 8004834:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004836:	dd21      	ble.n	800487c <_vfprintf_r+0x4fc>
 8004838:	2610      	movs	r6, #16
 800483a:	9f03      	ldr	r7, [sp, #12]
 800483c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8004840:	e004      	b.n	800484c <_vfprintf_r+0x4cc>
 8004842:	3d10      	subs	r5, #16
 8004844:	2d10      	cmp	r5, #16
 8004846:	f10b 0b08 	add.w	fp, fp, #8
 800484a:	dd17      	ble.n	800487c <_vfprintf_r+0x4fc>
 800484c:	3301      	adds	r3, #1
 800484e:	4a60      	ldr	r2, [pc, #384]	; (80049d0 <_vfprintf_r+0x650>)
 8004850:	3410      	adds	r4, #16
 8004852:	2b07      	cmp	r3, #7
 8004854:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004858:	e9cb 2600 	strd	r2, r6, [fp]
 800485c:	ddf1      	ble.n	8004842 <_vfprintf_r+0x4c2>
 800485e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004860:	4641      	mov	r1, r8
 8004862:	4638      	mov	r0, r7
 8004864:	f004 f8ba 	bl	80089dc <__sprint_r>
 8004868:	2800      	cmp	r0, #0
 800486a:	f040 856c 	bne.w	8005346 <_vfprintf_r+0xfc6>
 800486e:	3d10      	subs	r5, #16
 8004870:	2d10      	cmp	r5, #16
 8004872:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8004876:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800487a:	dce7      	bgt.n	800484c <_vfprintf_r+0x4cc>
 800487c:	3301      	adds	r3, #1
 800487e:	4a54      	ldr	r2, [pc, #336]	; (80049d0 <_vfprintf_r+0x650>)
 8004880:	442c      	add	r4, r5
 8004882:	2b07      	cmp	r3, #7
 8004884:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004888:	e9cb 2500 	strd	r2, r5, [fp]
 800488c:	dd08      	ble.n	80048a0 <_vfprintf_r+0x520>
 800488e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004890:	9907      	ldr	r1, [sp, #28]
 8004892:	9803      	ldr	r0, [sp, #12]
 8004894:	f004 f8a2 	bl	80089dc <__sprint_r>
 8004898:	2800      	cmp	r0, #0
 800489a:	f040 82e9 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 800489e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80048a0:	9904      	ldr	r1, [sp, #16]
 80048a2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80048a6:	428a      	cmp	r2, r1
 80048a8:	bfac      	ite	ge
 80048aa:	189b      	addge	r3, r3, r2
 80048ac:	185b      	addlt	r3, r3, r1
 80048ae:	9305      	str	r3, [sp, #20]
 80048b0:	2c00      	cmp	r4, #0
 80048b2:	f040 82d5 	bne.w	8004e60 <_vfprintf_r+0xae0>
 80048b6:	2300      	movs	r3, #0
 80048b8:	932b      	str	r3, [sp, #172]	; 0xac
 80048ba:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048bc:	b11b      	cbz	r3, 80048c6 <_vfprintf_r+0x546>
 80048be:	990a      	ldr	r1, [sp, #40]	; 0x28
 80048c0:	9803      	ldr	r0, [sp, #12]
 80048c2:	f002 fc9d 	bl	8007200 <_free_r>
 80048c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80048ca:	4657      	mov	r7, sl
 80048cc:	783b      	ldrb	r3, [r7, #0]
 80048ce:	2b00      	cmp	r3, #0
 80048d0:	f47f ada7 	bne.w	8004422 <_vfprintf_r+0xa2>
 80048d4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80048d6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80048da:	2b00      	cmp	r3, #0
 80048dc:	f041 80e7 	bne.w	8005aae <_vfprintf_r+0x172e>
 80048e0:	2300      	movs	r3, #0
 80048e2:	932b      	str	r3, [sp, #172]	; 0xac
 80048e4:	e2cb      	b.n	8004e7e <_vfprintf_r+0xafe>
 80048e6:	4643      	mov	r3, r8
 80048e8:	069a      	lsls	r2, r3, #26
 80048ea:	f140 814e 	bpl.w	8004b8a <_vfprintf_r+0x80a>
 80048ee:	9c08      	ldr	r4, [sp, #32]
 80048f0:	3407      	adds	r4, #7
 80048f2:	f024 0207 	bic.w	r2, r4, #7
 80048f6:	f102 0108 	add.w	r1, r2, #8
 80048fa:	e9d2 4500 	ldrd	r4, r5, [r2]
 80048fe:	9108      	str	r1, [sp, #32]
 8004900:	2201      	movs	r2, #1
 8004902:	2100      	movs	r1, #0
 8004904:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8004908:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800490c:	a956      	add	r1, sp, #344	; 0x158
 800490e:	9104      	str	r1, [sp, #16]
 8004910:	f47f aea2 	bne.w	8004658 <_vfprintf_r+0x2d8>
 8004914:	4698      	mov	r8, r3
 8004916:	2a01      	cmp	r2, #1
 8004918:	f000 8350 	beq.w	8004fbc <_vfprintf_r+0xc3c>
 800491c:	2a02      	cmp	r2, #2
 800491e:	f000 831b 	beq.w	8004f58 <_vfprintf_r+0xbd8>
 8004922:	a956      	add	r1, sp, #344	; 0x158
 8004924:	e000      	b.n	8004928 <_vfprintf_r+0x5a8>
 8004926:	4639      	mov	r1, r7
 8004928:	08e2      	lsrs	r2, r4, #3
 800492a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800492e:	08e8      	lsrs	r0, r5, #3
 8004930:	f004 0307 	and.w	r3, r4, #7
 8004934:	4605      	mov	r5, r0
 8004936:	4614      	mov	r4, r2
 8004938:	3330      	adds	r3, #48	; 0x30
 800493a:	ea54 0205 	orrs.w	r2, r4, r5
 800493e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8004942:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8004946:	d1ee      	bne.n	8004926 <_vfprintf_r+0x5a6>
 8004948:	f018 0f01 	tst.w	r8, #1
 800494c:	f000 8314 	beq.w	8004f78 <_vfprintf_r+0xbf8>
 8004950:	2b30      	cmp	r3, #48	; 0x30
 8004952:	f000 8311 	beq.w	8004f78 <_vfprintf_r+0xbf8>
 8004956:	9a04      	ldr	r2, [sp, #16]
 8004958:	3902      	subs	r1, #2
 800495a:	2330      	movs	r3, #48	; 0x30
 800495c:	1a52      	subs	r2, r2, r1
 800495e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8004962:	9209      	str	r2, [sp, #36]	; 0x24
 8004964:	460f      	mov	r7, r1
 8004966:	e68c      	b.n	8004682 <_vfprintf_r+0x302>
 8004968:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800496c:	2200      	movs	r2, #0
 800496e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8004972:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8004976:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800497a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800497e:	2b09      	cmp	r3, #9
 8004980:	d9f5      	bls.n	800496e <_vfprintf_r+0x5ee>
 8004982:	9206      	str	r2, [sp, #24]
 8004984:	e57c      	b.n	8004480 <_vfprintf_r+0x100>
 8004986:	4b14      	ldr	r3, [pc, #80]	; (80049d8 <_vfprintf_r+0x658>)
 8004988:	9317      	str	r3, [sp, #92]	; 0x5c
 800498a:	f018 0f20 	tst.w	r8, #32
 800498e:	f000 8114 	beq.w	8004bba <_vfprintf_r+0x83a>
 8004992:	9c08      	ldr	r4, [sp, #32]
 8004994:	3407      	adds	r4, #7
 8004996:	f024 0307 	bic.w	r3, r4, #7
 800499a:	e9d3 4500 	ldrd	r4, r5, [r3]
 800499e:	f103 0208 	add.w	r2, r3, #8
 80049a2:	9208      	str	r2, [sp, #32]
 80049a4:	f018 0f01 	tst.w	r8, #1
 80049a8:	d009      	beq.n	80049be <_vfprintf_r+0x63e>
 80049aa:	ea54 0305 	orrs.w	r3, r4, r5
 80049ae:	d006      	beq.n	80049be <_vfprintf_r+0x63e>
 80049b0:	2330      	movs	r3, #48	; 0x30
 80049b2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80049b6:	f048 0802 	orr.w	r8, r8, #2
 80049ba:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80049be:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80049c2:	2202      	movs	r2, #2
 80049c4:	e79d      	b.n	8004902 <_vfprintf_r+0x582>
 80049c6:	f048 0801 	orr.w	r8, r8, #1
 80049ca:	f89a 6000 	ldrb.w	r6, [sl]
 80049ce:	e555      	b.n	800447c <_vfprintf_r+0xfc>
 80049d0:	0800a758 	.word	0x0800a758
 80049d4:	0800a768 	.word	0x0800a768
 80049d8:	0800a724 	.word	0x0800a724
 80049dc:	9e03      	ldr	r6, [sp, #12]
 80049de:	4630      	mov	r0, r6
 80049e0:	f002 feaa 	bl	8007738 <_localeconv_r>
 80049e4:	6843      	ldr	r3, [r0, #4]
 80049e6:	9318      	str	r3, [sp, #96]	; 0x60
 80049e8:	4618      	mov	r0, r3
 80049ea:	f7fb fe89 	bl	8000700 <strlen>
 80049ee:	901b      	str	r0, [sp, #108]	; 0x6c
 80049f0:	4604      	mov	r4, r0
 80049f2:	4630      	mov	r0, r6
 80049f4:	f002 fea0 	bl	8007738 <_localeconv_r>
 80049f8:	6883      	ldr	r3, [r0, #8]
 80049fa:	931a      	str	r3, [sp, #104]	; 0x68
 80049fc:	2c00      	cmp	r4, #0
 80049fe:	f43f adb8 	beq.w	8004572 <_vfprintf_r+0x1f2>
 8004a02:	f89a 6000 	ldrb.w	r6, [sl]
 8004a06:	2b00      	cmp	r3, #0
 8004a08:	f43f ad38 	beq.w	800447c <_vfprintf_r+0xfc>
 8004a0c:	781b      	ldrb	r3, [r3, #0]
 8004a0e:	2b00      	cmp	r3, #0
 8004a10:	f43f ad34 	beq.w	800447c <_vfprintf_r+0xfc>
 8004a14:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8004a18:	e530      	b.n	800447c <_vfprintf_r+0xfc>
 8004a1a:	9b08      	ldr	r3, [sp, #32]
 8004a1c:	f89a 6000 	ldrb.w	r6, [sl]
 8004a20:	681a      	ldr	r2, [r3, #0]
 8004a22:	9206      	str	r2, [sp, #24]
 8004a24:	2a00      	cmp	r2, #0
 8004a26:	f103 0304 	add.w	r3, r3, #4
 8004a2a:	f2c0 8697 	blt.w	800575c <_vfprintf_r+0x13dc>
 8004a2e:	9308      	str	r3, [sp, #32]
 8004a30:	e524      	b.n	800447c <_vfprintf_r+0xfc>
 8004a32:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8004a36:	f89a 6000 	ldrb.w	r6, [sl]
 8004a3a:	e51f      	b.n	800447c <_vfprintf_r+0xfc>
 8004a3c:	f89a 6000 	ldrb.w	r6, [sl]
 8004a40:	f048 0804 	orr.w	r8, r8, #4
 8004a44:	e51a      	b.n	800447c <_vfprintf_r+0xfc>
 8004a46:	f89a 6000 	ldrb.w	r6, [sl]
 8004a4a:	2e2a      	cmp	r6, #42	; 0x2a
 8004a4c:	f10a 0201 	add.w	r2, sl, #1
 8004a50:	f001 81b0 	beq.w	8005db4 <_vfprintf_r+0x1a34>
 8004a54:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004a58:	2b09      	cmp	r3, #9
 8004a5a:	4692      	mov	sl, r2
 8004a5c:	f04f 0900 	mov.w	r9, #0
 8004a60:	f63f ad0e 	bhi.w	8004480 <_vfprintf_r+0x100>
 8004a64:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8004a68:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8004a6c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8004a70:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004a74:	2b09      	cmp	r3, #9
 8004a76:	d9f5      	bls.n	8004a64 <_vfprintf_r+0x6e4>
 8004a78:	e502      	b.n	8004480 <_vfprintf_r+0x100>
 8004a7a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8004a7e:	f89a 6000 	ldrb.w	r6, [sl]
 8004a82:	e4fb      	b.n	800447c <_vfprintf_r+0xfc>
 8004a84:	9c08      	ldr	r4, [sp, #32]
 8004a86:	3407      	adds	r4, #7
 8004a88:	f024 0407 	bic.w	r4, r4, #7
 8004a8c:	ed94 7b00 	vldr	d7, [r4]
 8004a90:	ec52 1b17 	vmov	r1, r2, d7
 8004a94:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004a98:	931d      	str	r3, [sp, #116]	; 0x74
 8004a9a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8004a9e:	3408      	adds	r4, #8
 8004aa0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8004aa4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8004aa8:	4bba      	ldr	r3, [pc, #744]	; (8004d94 <_vfprintf_r+0xa14>)
 8004aaa:	9408      	str	r4, [sp, #32]
 8004aac:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004ab0:	f7fc fb3c 	bl	800112c <__aeabi_dcmpun>
 8004ab4:	2800      	cmp	r0, #0
 8004ab6:	f040 846f 	bne.w	8005398 <_vfprintf_r+0x1018>
 8004aba:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8004abe:	4bb5      	ldr	r3, [pc, #724]	; (8004d94 <_vfprintf_r+0xa14>)
 8004ac0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8004ac4:	f7fc fb14 	bl	80010f0 <__aeabi_dcmple>
 8004ac8:	2800      	cmp	r0, #0
 8004aca:	f040 8465 	bne.w	8005398 <_vfprintf_r+0x1018>
 8004ace:	2200      	movs	r2, #0
 8004ad0:	2300      	movs	r3, #0
 8004ad2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004ad6:	f7fc fb01 	bl	80010dc <__aeabi_dcmplt>
 8004ada:	2800      	cmp	r0, #0
 8004adc:	f040 855b 	bne.w	8005596 <_vfprintf_r+0x1216>
 8004ae0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004ae4:	4fac      	ldr	r7, [pc, #688]	; (8004d98 <_vfprintf_r+0xa18>)
 8004ae6:	4bad      	ldr	r3, [pc, #692]	; (8004d9c <_vfprintf_r+0xa1c>)
 8004ae8:	2000      	movs	r0, #0
 8004aea:	2103      	movs	r1, #3
 8004aec:	9104      	str	r1, [sp, #16]
 8004aee:	900a      	str	r0, [sp, #40]	; 0x28
 8004af0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8004af4:	2e47      	cmp	r6, #71	; 0x47
 8004af6:	bfd8      	it	le
 8004af8:	461f      	movle	r7, r3
 8004afa:	9109      	str	r1, [sp, #36]	; 0x24
 8004afc:	4681      	mov	r9, r0
 8004afe:	900f      	str	r0, [sp, #60]	; 0x3c
 8004b00:	9014      	str	r0, [sp, #80]	; 0x50
 8004b02:	9011      	str	r0, [sp, #68]	; 0x44
 8004b04:	e5c9      	b.n	800469a <_vfprintf_r+0x31a>
 8004b06:	9808      	ldr	r0, [sp, #32]
 8004b08:	2300      	movs	r3, #0
 8004b0a:	6801      	ldr	r1, [r0, #0]
 8004b0c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8004b10:	461a      	mov	r2, r3
 8004b12:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8004b16:	2301      	movs	r3, #1
 8004b18:	1d01      	adds	r1, r0, #4
 8004b1a:	9304      	str	r3, [sp, #16]
 8004b1c:	920a      	str	r2, [sp, #40]	; 0x28
 8004b1e:	4691      	mov	r9, r2
 8004b20:	920f      	str	r2, [sp, #60]	; 0x3c
 8004b22:	9214      	str	r2, [sp, #80]	; 0x50
 8004b24:	9211      	str	r2, [sp, #68]	; 0x44
 8004b26:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8004b2a:	af3d      	add	r7, sp, #244	; 0xf4
 8004b2c:	e5b9      	b.n	80046a2 <_vfprintf_r+0x322>
 8004b2e:	9b08      	ldr	r3, [sp, #32]
 8004b30:	681f      	ldr	r7, [r3, #0]
 8004b32:	2500      	movs	r5, #0
 8004b34:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8004b38:	1d1c      	adds	r4, r3, #4
 8004b3a:	2f00      	cmp	r7, #0
 8004b3c:	f000 8639 	beq.w	80057b2 <_vfprintf_r+0x1432>
 8004b40:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004b44:	f000 8711 	beq.w	800596a <_vfprintf_r+0x15ea>
 8004b48:	464a      	mov	r2, r9
 8004b4a:	4629      	mov	r1, r5
 8004b4c:	4638      	mov	r0, r7
 8004b4e:	f7fb fe47 	bl	80007e0 <memchr>
 8004b52:	900a      	str	r0, [sp, #40]	; 0x28
 8004b54:	2800      	cmp	r0, #0
 8004b56:	f000 85e7 	beq.w	8005728 <_vfprintf_r+0x13a8>
 8004b5a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b5c:	1bdb      	subs	r3, r3, r7
 8004b5e:	9309      	str	r3, [sp, #36]	; 0x24
 8004b60:	46a9      	mov	r9, r5
 8004b62:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004b66:	9408      	str	r4, [sp, #32]
 8004b68:	9304      	str	r3, [sp, #16]
 8004b6a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004b6e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8004b72:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8004b76:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8004b7a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004b7e:	e58c      	b.n	800469a <_vfprintf_r+0x31a>
 8004b80:	f048 0310 	orr.w	r3, r8, #16
 8004b84:	069a      	lsls	r2, r3, #26
 8004b86:	f53f aeb2 	bmi.w	80048ee <_vfprintf_r+0x56e>
 8004b8a:	9a08      	ldr	r2, [sp, #32]
 8004b8c:	06df      	lsls	r7, r3, #27
 8004b8e:	f102 0104 	add.w	r1, r2, #4
 8004b92:	f100 837e 	bmi.w	8005292 <_vfprintf_r+0xf12>
 8004b96:	065d      	lsls	r5, r3, #25
 8004b98:	9a08      	ldr	r2, [sp, #32]
 8004b9a:	f100 84e4 	bmi.w	8005566 <_vfprintf_r+0x11e6>
 8004b9e:	059c      	lsls	r4, r3, #22
 8004ba0:	f140 8377 	bpl.w	8005292 <_vfprintf_r+0xf12>
 8004ba4:	7814      	ldrb	r4, [r2, #0]
 8004ba6:	9108      	str	r1, [sp, #32]
 8004ba8:	2500      	movs	r5, #0
 8004baa:	2201      	movs	r2, #1
 8004bac:	e6a9      	b.n	8004902 <_vfprintf_r+0x582>
 8004bae:	4b7c      	ldr	r3, [pc, #496]	; (8004da0 <_vfprintf_r+0xa20>)
 8004bb0:	9317      	str	r3, [sp, #92]	; 0x5c
 8004bb2:	f018 0f20 	tst.w	r8, #32
 8004bb6:	f47f aeec 	bne.w	8004992 <_vfprintf_r+0x612>
 8004bba:	9a08      	ldr	r2, [sp, #32]
 8004bbc:	f018 0f10 	tst.w	r8, #16
 8004bc0:	f102 0304 	add.w	r3, r2, #4
 8004bc4:	f040 8354 	bne.w	8005270 <_vfprintf_r+0xef0>
 8004bc8:	f018 0f40 	tst.w	r8, #64	; 0x40
 8004bcc:	9a08      	ldr	r2, [sp, #32]
 8004bce:	f040 84d0 	bne.w	8005572 <_vfprintf_r+0x11f2>
 8004bd2:	f418 7f00 	tst.w	r8, #512	; 0x200
 8004bd6:	f000 834b 	beq.w	8005270 <_vfprintf_r+0xef0>
 8004bda:	7814      	ldrb	r4, [r2, #0]
 8004bdc:	9308      	str	r3, [sp, #32]
 8004bde:	2500      	movs	r5, #0
 8004be0:	e6e0      	b.n	80049a4 <_vfprintf_r+0x624>
 8004be2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8004be6:	f89a 6000 	ldrb.w	r6, [sl]
 8004bea:	2b00      	cmp	r3, #0
 8004bec:	f47f ac46 	bne.w	800447c <_vfprintf_r+0xfc>
 8004bf0:	2320      	movs	r3, #32
 8004bf2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8004bf6:	e441      	b.n	800447c <_vfprintf_r+0xfc>
 8004bf8:	f89a 6000 	ldrb.w	r6, [sl]
 8004bfc:	2e6c      	cmp	r6, #108	; 0x6c
 8004bfe:	bf03      	ittte	eq
 8004c00:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8004c04:	f048 0820 	orreq.w	r8, r8, #32
 8004c08:	f10a 0a01 	addeq.w	sl, sl, #1
 8004c0c:	f048 0810 	orrne.w	r8, r8, #16
 8004c10:	e434      	b.n	800447c <_vfprintf_r+0xfc>
 8004c12:	9a08      	ldr	r2, [sp, #32]
 8004c14:	f018 0f20 	tst.w	r8, #32
 8004c18:	f852 3b04 	ldr.w	r3, [r2], #4
 8004c1c:	9208      	str	r2, [sp, #32]
 8004c1e:	f000 83a1 	beq.w	8005364 <_vfprintf_r+0xfe4>
 8004c22:	9a05      	ldr	r2, [sp, #20]
 8004c24:	4610      	mov	r0, r2
 8004c26:	17d1      	asrs	r1, r2, #31
 8004c28:	e9c3 0100 	strd	r0, r1, [r3]
 8004c2c:	4657      	mov	r7, sl
 8004c2e:	e64d      	b.n	80048cc <_vfprintf_r+0x54c>
 8004c30:	f89a 6000 	ldrb.w	r6, [sl]
 8004c34:	2e68      	cmp	r6, #104	; 0x68
 8004c36:	bf03      	ittte	eq
 8004c38:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8004c3c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8004c40:	f10a 0a01 	addeq.w	sl, sl, #1
 8004c44:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8004c48:	e418      	b.n	800447c <_vfprintf_r+0xfc>
 8004c4a:	9908      	ldr	r1, [sp, #32]
 8004c4c:	4b55      	ldr	r3, [pc, #340]	; (8004da4 <_vfprintf_r+0xa24>)
 8004c4e:	680c      	ldr	r4, [r1, #0]
 8004c50:	9317      	str	r3, [sp, #92]	; 0x5c
 8004c52:	f647 0230 	movw	r2, #30768	; 0x7830
 8004c56:	3104      	adds	r1, #4
 8004c58:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8004c5c:	f048 0302 	orr.w	r3, r8, #2
 8004c60:	9108      	str	r1, [sp, #32]
 8004c62:	2500      	movs	r5, #0
 8004c64:	2202      	movs	r2, #2
 8004c66:	2678      	movs	r6, #120	; 0x78
 8004c68:	e64b      	b.n	8004902 <_vfprintf_r+0x582>
 8004c6a:	f048 0808 	orr.w	r8, r8, #8
 8004c6e:	f89a 6000 	ldrb.w	r6, [sl]
 8004c72:	e403      	b.n	800447c <_vfprintf_r+0xfc>
 8004c74:	f048 0310 	orr.w	r3, r8, #16
 8004c78:	069f      	lsls	r7, r3, #26
 8004c7a:	f53f acd1 	bmi.w	8004620 <_vfprintf_r+0x2a0>
 8004c7e:	9908      	ldr	r1, [sp, #32]
 8004c80:	06dd      	lsls	r5, r3, #27
 8004c82:	f101 0204 	add.w	r2, r1, #4
 8004c86:	f100 82fd 	bmi.w	8005284 <_vfprintf_r+0xf04>
 8004c8a:	065c      	lsls	r4, r3, #25
 8004c8c:	9908      	ldr	r1, [sp, #32]
 8004c8e:	f100 8475 	bmi.w	800557c <_vfprintf_r+0x11fc>
 8004c92:	0598      	lsls	r0, r3, #22
 8004c94:	f140 82f6 	bpl.w	8005284 <_vfprintf_r+0xf04>
 8004c98:	f991 4000 	ldrsb.w	r4, [r1]
 8004c9c:	9208      	str	r2, [sp, #32]
 8004c9e:	17e5      	asrs	r5, r4, #31
 8004ca0:	4620      	mov	r0, r4
 8004ca2:	4629      	mov	r1, r5
 8004ca4:	e4c7      	b.n	8004636 <_vfprintf_r+0x2b6>
 8004ca6:	9a08      	ldr	r2, [sp, #32]
 8004ca8:	f018 0f10 	tst.w	r8, #16
 8004cac:	f102 0304 	add.w	r3, r2, #4
 8004cb0:	f040 82e3 	bne.w	800527a <_vfprintf_r+0xefa>
 8004cb4:	f018 0f40 	tst.w	r8, #64	; 0x40
 8004cb8:	9a08      	ldr	r2, [sp, #32]
 8004cba:	f040 8467 	bne.w	800558c <_vfprintf_r+0x120c>
 8004cbe:	f418 7f00 	tst.w	r8, #512	; 0x200
 8004cc2:	f000 82da 	beq.w	800527a <_vfprintf_r+0xefa>
 8004cc6:	7814      	ldrb	r4, [r2, #0]
 8004cc8:	9308      	str	r3, [sp, #32]
 8004cca:	2500      	movs	r5, #0
 8004ccc:	e488      	b.n	80045e0 <_vfprintf_r+0x260>
 8004cce:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004cd2:	f002 fd45 	bl	8007760 <__retarget_lock_release_recursive>
 8004cd6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004cda:	9305      	str	r3, [sp, #20]
 8004cdc:	e443      	b.n	8004566 <_vfprintf_r+0x1e6>
 8004cde:	2e00      	cmp	r6, #0
 8004ce0:	f43f adf8 	beq.w	80048d4 <_vfprintf_r+0x554>
 8004ce4:	2300      	movs	r3, #0
 8004ce6:	2101      	movs	r1, #1
 8004ce8:	461a      	mov	r2, r3
 8004cea:	9104      	str	r1, [sp, #16]
 8004cec:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8004cf0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8004cf4:	930a      	str	r3, [sp, #40]	; 0x28
 8004cf6:	4699      	mov	r9, r3
 8004cf8:	930f      	str	r3, [sp, #60]	; 0x3c
 8004cfa:	9314      	str	r3, [sp, #80]	; 0x50
 8004cfc:	9311      	str	r3, [sp, #68]	; 0x44
 8004cfe:	9109      	str	r1, [sp, #36]	; 0x24
 8004d00:	af3d      	add	r7, sp, #244	; 0xf4
 8004d02:	e4ce      	b.n	80046a2 <_vfprintf_r+0x322>
 8004d04:	2e65      	cmp	r6, #101	; 0x65
 8004d06:	f340 80ca 	ble.w	8004e9e <_vfprintf_r+0xb1e>
 8004d0a:	2200      	movs	r2, #0
 8004d0c:	2300      	movs	r3, #0
 8004d0e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004d12:	f7fc f9d9 	bl	80010c8 <__aeabi_dcmpeq>
 8004d16:	2800      	cmp	r0, #0
 8004d18:	f000 8169 	beq.w	8004fee <_vfprintf_r+0xc6e>
 8004d1c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004d1e:	4a22      	ldr	r2, [pc, #136]	; (8004da8 <_vfprintf_r+0xa28>)
 8004d20:	f8cb 2000 	str.w	r2, [fp]
 8004d24:	3301      	adds	r3, #1
 8004d26:	3401      	adds	r4, #1
 8004d28:	2201      	movs	r2, #1
 8004d2a:	2b07      	cmp	r3, #7
 8004d2c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004d30:	f8cb 2004 	str.w	r2, [fp, #4]
 8004d34:	f300 8406 	bgt.w	8005544 <_vfprintf_r+0x11c4>
 8004d38:	f10b 0b08 	add.w	fp, fp, #8
 8004d3c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004d3e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004d40:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004d42:	4293      	cmp	r3, r2
 8004d44:	db03      	blt.n	8004d4e <_vfprintf_r+0x9ce>
 8004d46:	f018 0f01 	tst.w	r8, #1
 8004d4a:	f43f ad6a 	beq.w	8004822 <_vfprintf_r+0x4a2>
 8004d4e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004d50:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8004d52:	f8cb 2000 	str.w	r2, [fp]
 8004d56:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004d58:	f8cb 2004 	str.w	r2, [fp, #4]
 8004d5c:	3301      	adds	r3, #1
 8004d5e:	4414      	add	r4, r2
 8004d60:	2b07      	cmp	r3, #7
 8004d62:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004d66:	f300 8517 	bgt.w	8005798 <_vfprintf_r+0x1418>
 8004d6a:	f10b 0b08 	add.w	fp, fp, #8
 8004d6e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004d70:	1e5d      	subs	r5, r3, #1
 8004d72:	2d00      	cmp	r5, #0
 8004d74:	f77f ad55 	ble.w	8004822 <_vfprintf_r+0x4a2>
 8004d78:	2d10      	cmp	r5, #16
 8004d7a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004d7c:	4b0b      	ldr	r3, [pc, #44]	; (8004dac <_vfprintf_r+0xa2c>)
 8004d7e:	f340 82e7 	ble.w	8005350 <_vfprintf_r+0xfd0>
 8004d82:	4619      	mov	r1, r3
 8004d84:	2610      	movs	r6, #16
 8004d86:	4623      	mov	r3, r4
 8004d88:	9f03      	ldr	r7, [sp, #12]
 8004d8a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004d8e:	460c      	mov	r4, r1
 8004d90:	e014      	b.n	8004dbc <_vfprintf_r+0xa3c>
 8004d92:	bf00      	nop
 8004d94:	7fefffff 	.word	0x7fefffff
 8004d98:	0800a718 	.word	0x0800a718
 8004d9c:	0800a714 	.word	0x0800a714
 8004da0:	0800a738 	.word	0x0800a738
 8004da4:	0800a724 	.word	0x0800a724
 8004da8:	0800a754 	.word	0x0800a754
 8004dac:	0800a768 	.word	0x0800a768
 8004db0:	f10b 0b08 	add.w	fp, fp, #8
 8004db4:	3d10      	subs	r5, #16
 8004db6:	2d10      	cmp	r5, #16
 8004db8:	f340 82c7 	ble.w	800534a <_vfprintf_r+0xfca>
 8004dbc:	3201      	adds	r2, #1
 8004dbe:	3310      	adds	r3, #16
 8004dc0:	2a07      	cmp	r2, #7
 8004dc2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8004dc6:	e9cb 4600 	strd	r4, r6, [fp]
 8004dca:	ddf1      	ble.n	8004db0 <_vfprintf_r+0xa30>
 8004dcc:	aa2a      	add	r2, sp, #168	; 0xa8
 8004dce:	4649      	mov	r1, r9
 8004dd0:	4638      	mov	r0, r7
 8004dd2:	f003 fe03 	bl	80089dc <__sprint_r>
 8004dd6:	2800      	cmp	r0, #0
 8004dd8:	d14c      	bne.n	8004e74 <_vfprintf_r+0xaf4>
 8004dda:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004dde:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004de2:	e7e7      	b.n	8004db4 <_vfprintf_r+0xa34>
 8004de4:	9b06      	ldr	r3, [sp, #24]
 8004de6:	9a04      	ldr	r2, [sp, #16]
 8004de8:	1a9d      	subs	r5, r3, r2
 8004dea:	2d00      	cmp	r5, #0
 8004dec:	f77f acc9 	ble.w	8004782 <_vfprintf_r+0x402>
 8004df0:	2d10      	cmp	r5, #16
 8004df2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004df4:	4bbc      	ldr	r3, [pc, #752]	; (80050e8 <_vfprintf_r+0xd68>)
 8004df6:	dd27      	ble.n	8004e48 <_vfprintf_r+0xac8>
 8004df8:	4659      	mov	r1, fp
 8004dfa:	4620      	mov	r0, r4
 8004dfc:	46bb      	mov	fp, r7
 8004dfe:	461c      	mov	r4, r3
 8004e00:	4637      	mov	r7, r6
 8004e02:	9e07      	ldr	r6, [sp, #28]
 8004e04:	e004      	b.n	8004e10 <_vfprintf_r+0xa90>
 8004e06:	3d10      	subs	r5, #16
 8004e08:	2d10      	cmp	r5, #16
 8004e0a:	f101 0108 	add.w	r1, r1, #8
 8004e0e:	dd16      	ble.n	8004e3e <_vfprintf_r+0xabe>
 8004e10:	3201      	adds	r2, #1
 8004e12:	3010      	adds	r0, #16
 8004e14:	2310      	movs	r3, #16
 8004e16:	2a07      	cmp	r2, #7
 8004e18:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8004e1c:	600c      	str	r4, [r1, #0]
 8004e1e:	604b      	str	r3, [r1, #4]
 8004e20:	ddf1      	ble.n	8004e06 <_vfprintf_r+0xa86>
 8004e22:	aa2a      	add	r2, sp, #168	; 0xa8
 8004e24:	4631      	mov	r1, r6
 8004e26:	9803      	ldr	r0, [sp, #12]
 8004e28:	f003 fdd8 	bl	80089dc <__sprint_r>
 8004e2c:	2800      	cmp	r0, #0
 8004e2e:	f040 80a8 	bne.w	8004f82 <_vfprintf_r+0xc02>
 8004e32:	3d10      	subs	r5, #16
 8004e34:	2d10      	cmp	r5, #16
 8004e36:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8004e3a:	a92d      	add	r1, sp, #180	; 0xb4
 8004e3c:	dce8      	bgt.n	8004e10 <_vfprintf_r+0xa90>
 8004e3e:	463e      	mov	r6, r7
 8004e40:	4623      	mov	r3, r4
 8004e42:	465f      	mov	r7, fp
 8004e44:	4604      	mov	r4, r0
 8004e46:	468b      	mov	fp, r1
 8004e48:	3201      	adds	r2, #1
 8004e4a:	442c      	add	r4, r5
 8004e4c:	2a07      	cmp	r2, #7
 8004e4e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004e52:	e9cb 3500 	strd	r3, r5, [fp]
 8004e56:	f300 8292 	bgt.w	800537e <_vfprintf_r+0xffe>
 8004e5a:	f10b 0b08 	add.w	fp, fp, #8
 8004e5e:	e490      	b.n	8004782 <_vfprintf_r+0x402>
 8004e60:	aa2a      	add	r2, sp, #168	; 0xa8
 8004e62:	9907      	ldr	r1, [sp, #28]
 8004e64:	9803      	ldr	r0, [sp, #12]
 8004e66:	f003 fdb9 	bl	80089dc <__sprint_r>
 8004e6a:	2800      	cmp	r0, #0
 8004e6c:	f43f ad23 	beq.w	80048b6 <_vfprintf_r+0x536>
 8004e70:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004e74:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004e76:	b111      	cbz	r1, 8004e7e <_vfprintf_r+0xafe>
 8004e78:	9803      	ldr	r0, [sp, #12]
 8004e7a:	f002 f9c1 	bl	8007200 <_free_r>
 8004e7e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8004e82:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004e86:	07d0      	lsls	r0, r2, #31
 8004e88:	d402      	bmi.n	8004e90 <_vfprintf_r+0xb10>
 8004e8a:	0599      	lsls	r1, r3, #22
 8004e8c:	f140 81d0 	bpl.w	8005230 <_vfprintf_r+0xeb0>
 8004e90:	065a      	lsls	r2, r3, #25
 8004e92:	f53f ab65 	bmi.w	8004560 <_vfprintf_r+0x1e0>
 8004e96:	9805      	ldr	r0, [sp, #20]
 8004e98:	b057      	add	sp, #348	; 0x15c
 8004e9a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004e9e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004ea0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004ea2:	2a01      	cmp	r2, #1
 8004ea4:	f104 0401 	add.w	r4, r4, #1
 8004ea8:	f103 0501 	add.w	r5, r3, #1
 8004eac:	f10b 0608 	add.w	r6, fp, #8
 8004eb0:	f340 811c 	ble.w	80050ec <_vfprintf_r+0xd6c>
 8004eb4:	2301      	movs	r3, #1
 8004eb6:	2d07      	cmp	r5, #7
 8004eb8:	f8cb 7000 	str.w	r7, [fp]
 8004ebc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8004ec0:	f8cb 3004 	str.w	r3, [fp, #4]
 8004ec4:	f300 81bb 	bgt.w	800523e <_vfprintf_r+0xebe>
 8004ec8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004eca:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8004ecc:	1c69      	adds	r1, r5, #1
 8004ece:	441c      	add	r4, r3
 8004ed0:	2907      	cmp	r1, #7
 8004ed2:	910b      	str	r1, [sp, #44]	; 0x2c
 8004ed4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8004ed8:	e9c6 2300 	strd	r2, r3, [r6]
 8004edc:	f300 81bb 	bgt.w	8005256 <_vfprintf_r+0xed6>
 8004ee0:	3608      	adds	r6, #8
 8004ee2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004ee4:	1c53      	adds	r3, r2, #1
 8004ee6:	461d      	mov	r5, r3
 8004ee8:	9509      	str	r5, [sp, #36]	; 0x24
 8004eea:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8004eec:	930e      	str	r3, [sp, #56]	; 0x38
 8004eee:	2200      	movs	r2, #0
 8004ef0:	2300      	movs	r3, #0
 8004ef2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004ef6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8004efa:	f106 0b08 	add.w	fp, r6, #8
 8004efe:	f7fc f8e3 	bl	80010c8 <__aeabi_dcmpeq>
 8004f02:	2800      	cmp	r0, #0
 8004f04:	f040 80c2 	bne.w	800508c <_vfprintf_r+0xd0c>
 8004f08:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8004f0a:	f8c6 9004 	str.w	r9, [r6, #4]
 8004f0e:	3701      	adds	r7, #1
 8004f10:	444c      	add	r4, r9
 8004f12:	2d07      	cmp	r5, #7
 8004f14:	6037      	str	r7, [r6, #0]
 8004f16:	942c      	str	r4, [sp, #176]	; 0xb0
 8004f18:	952b      	str	r5, [sp, #172]	; 0xac
 8004f1a:	f300 80f9 	bgt.w	8005110 <_vfprintf_r+0xd90>
 8004f1e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004f20:	f106 0310 	add.w	r3, r6, #16
 8004f24:	3202      	adds	r2, #2
 8004f26:	465e      	mov	r6, fp
 8004f28:	9209      	str	r2, [sp, #36]	; 0x24
 8004f2a:	469b      	mov	fp, r3
 8004f2c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8004f2e:	6072      	str	r2, [r6, #4]
 8004f30:	4414      	add	r4, r2
 8004f32:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004f34:	942c      	str	r4, [sp, #176]	; 0xb0
 8004f36:	ab26      	add	r3, sp, #152	; 0x98
 8004f38:	2a07      	cmp	r2, #7
 8004f3a:	922b      	str	r2, [sp, #172]	; 0xac
 8004f3c:	6033      	str	r3, [r6, #0]
 8004f3e:	f77f ac70 	ble.w	8004822 <_vfprintf_r+0x4a2>
 8004f42:	aa2a      	add	r2, sp, #168	; 0xa8
 8004f44:	9907      	ldr	r1, [sp, #28]
 8004f46:	9803      	ldr	r0, [sp, #12]
 8004f48:	f003 fd48 	bl	80089dc <__sprint_r>
 8004f4c:	2800      	cmp	r0, #0
 8004f4e:	d18f      	bne.n	8004e70 <_vfprintf_r+0xaf0>
 8004f50:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004f52:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004f56:	e464      	b.n	8004822 <_vfprintf_r+0x4a2>
 8004f58:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8004f5a:	af56      	add	r7, sp, #344	; 0x158
 8004f5c:	0923      	lsrs	r3, r4, #4
 8004f5e:	f004 010f 	and.w	r1, r4, #15
 8004f62:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8004f66:	092a      	lsrs	r2, r5, #4
 8004f68:	461c      	mov	r4, r3
 8004f6a:	4615      	mov	r5, r2
 8004f6c:	5c43      	ldrb	r3, [r0, r1]
 8004f6e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8004f72:	ea54 0305 	orrs.w	r3, r4, r5
 8004f76:	d1f1      	bne.n	8004f5c <_vfprintf_r+0xbdc>
 8004f78:	9b04      	ldr	r3, [sp, #16]
 8004f7a:	1bdb      	subs	r3, r3, r7
 8004f7c:	9309      	str	r3, [sp, #36]	; 0x24
 8004f7e:	f7ff bb80 	b.w	8004682 <_vfprintf_r+0x302>
 8004f82:	46b1      	mov	r9, r6
 8004f84:	e776      	b.n	8004e74 <_vfprintf_r+0xaf4>
 8004f86:	aa2a      	add	r2, sp, #168	; 0xa8
 8004f88:	9907      	ldr	r1, [sp, #28]
 8004f8a:	9803      	ldr	r0, [sp, #12]
 8004f8c:	f003 fd26 	bl	80089dc <__sprint_r>
 8004f90:	2800      	cmp	r0, #0
 8004f92:	f47f af6d 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8004f96:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004f98:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004f9c:	f7ff bbdd 	b.w	800475a <_vfprintf_r+0x3da>
 8004fa0:	aa2a      	add	r2, sp, #168	; 0xa8
 8004fa2:	9907      	ldr	r1, [sp, #28]
 8004fa4:	9803      	ldr	r0, [sp, #12]
 8004fa6:	f003 fd19 	bl	80089dc <__sprint_r>
 8004faa:	2800      	cmp	r0, #0
 8004fac:	f47f af60 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8004fb0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004fb2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004fb6:	f7ff bbe0 	b.w	800477a <_vfprintf_r+0x3fa>
 8004fba:	4698      	mov	r8, r3
 8004fbc:	2d00      	cmp	r5, #0
 8004fbe:	bf08      	it	eq
 8004fc0:	2c0a      	cmpeq	r4, #10
 8004fc2:	f080 8170 	bcs.w	80052a6 <_vfprintf_r+0xf26>
 8004fc6:	af56      	add	r7, sp, #344	; 0x158
 8004fc8:	3430      	adds	r4, #48	; 0x30
 8004fca:	2301      	movs	r3, #1
 8004fcc:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8004fd0:	9309      	str	r3, [sp, #36]	; 0x24
 8004fd2:	f7ff bb56 	b.w	8004682 <_vfprintf_r+0x302>
 8004fd6:	aa2a      	add	r2, sp, #168	; 0xa8
 8004fd8:	9907      	ldr	r1, [sp, #28]
 8004fda:	9803      	ldr	r0, [sp, #12]
 8004fdc:	f003 fcfe 	bl	80089dc <__sprint_r>
 8004fe0:	2800      	cmp	r0, #0
 8004fe2:	f47f af45 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8004fe6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004fe8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004fec:	e406      	b.n	80047fc <_vfprintf_r+0x47c>
 8004fee:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004ff0:	2b00      	cmp	r3, #0
 8004ff2:	f340 8273 	ble.w	80054dc <_vfprintf_r+0x115c>
 8004ff6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8004ffa:	4293      	cmp	r3, r2
 8004ffc:	bfa8      	it	ge
 8004ffe:	4613      	movge	r3, r2
 8005000:	2b00      	cmp	r3, #0
 8005002:	461d      	mov	r5, r3
 8005004:	dd0d      	ble.n	8005022 <_vfprintf_r+0xca2>
 8005006:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005008:	f8cb 7000 	str.w	r7, [fp]
 800500c:	3301      	adds	r3, #1
 800500e:	442c      	add	r4, r5
 8005010:	2b07      	cmp	r3, #7
 8005012:	942c      	str	r4, [sp, #176]	; 0xb0
 8005014:	f8cb 5004 	str.w	r5, [fp, #4]
 8005018:	932b      	str	r3, [sp, #172]	; 0xac
 800501a:	f300 82c1 	bgt.w	80055a0 <_vfprintf_r+0x1220>
 800501e:	f10b 0b08 	add.w	fp, fp, #8
 8005022:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005024:	2d00      	cmp	r5, #0
 8005026:	bfa8      	it	ge
 8005028:	1b5b      	subge	r3, r3, r5
 800502a:	2b00      	cmp	r3, #0
 800502c:	461d      	mov	r5, r3
 800502e:	f340 8099 	ble.w	8005164 <_vfprintf_r+0xde4>
 8005032:	2d10      	cmp	r5, #16
 8005034:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005036:	4b2c      	ldr	r3, [pc, #176]	; (80050e8 <_vfprintf_r+0xd68>)
 8005038:	f340 83db 	ble.w	80057f2 <_vfprintf_r+0x1472>
 800503c:	4618      	mov	r0, r3
 800503e:	4621      	mov	r1, r4
 8005040:	465b      	mov	r3, fp
 8005042:	2610      	movs	r6, #16
 8005044:	46bb      	mov	fp, r7
 8005046:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800504a:	9c07      	ldr	r4, [sp, #28]
 800504c:	4607      	mov	r7, r0
 800504e:	e004      	b.n	800505a <_vfprintf_r+0xcda>
 8005050:	3308      	adds	r3, #8
 8005052:	3d10      	subs	r5, #16
 8005054:	2d10      	cmp	r5, #16
 8005056:	f340 83c7 	ble.w	80057e8 <_vfprintf_r+0x1468>
 800505a:	3201      	adds	r2, #1
 800505c:	3110      	adds	r1, #16
 800505e:	2a07      	cmp	r2, #7
 8005060:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8005064:	e9c3 7600 	strd	r7, r6, [r3]
 8005068:	ddf2      	ble.n	8005050 <_vfprintf_r+0xcd0>
 800506a:	aa2a      	add	r2, sp, #168	; 0xa8
 800506c:	4621      	mov	r1, r4
 800506e:	4648      	mov	r0, r9
 8005070:	f003 fcb4 	bl	80089dc <__sprint_r>
 8005074:	2800      	cmp	r0, #0
 8005076:	f040 84a5 	bne.w	80059c4 <_vfprintf_r+0x1644>
 800507a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800507e:	ab2d      	add	r3, sp, #180	; 0xb4
 8005080:	e7e7      	b.n	8005052 <_vfprintf_r+0xcd2>
 8005082:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8005086:	af56      	add	r7, sp, #344	; 0x158
 8005088:	f7ff bafb 	b.w	8004682 <_vfprintf_r+0x302>
 800508c:	f1b9 0f00 	cmp.w	r9, #0
 8005090:	f77f af4c 	ble.w	8004f2c <_vfprintf_r+0xbac>
 8005094:	f1b9 0f10 	cmp.w	r9, #16
 8005098:	4b13      	ldr	r3, [pc, #76]	; (80050e8 <_vfprintf_r+0xd68>)
 800509a:	f340 8659 	ble.w	8005d50 <_vfprintf_r+0x19d0>
 800509e:	4619      	mov	r1, r3
 80050a0:	4622      	mov	r2, r4
 80050a2:	4633      	mov	r3, r6
 80050a4:	2710      	movs	r7, #16
 80050a6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80050aa:	9c07      	ldr	r4, [sp, #28]
 80050ac:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80050ae:	460e      	mov	r6, r1
 80050b0:	e007      	b.n	80050c2 <_vfprintf_r+0xd42>
 80050b2:	3308      	adds	r3, #8
 80050b4:	f1a9 0910 	sub.w	r9, r9, #16
 80050b8:	f1b9 0f10 	cmp.w	r9, #16
 80050bc:	f340 8353 	ble.w	8005766 <_vfprintf_r+0x13e6>
 80050c0:	3501      	adds	r5, #1
 80050c2:	3210      	adds	r2, #16
 80050c4:	2d07      	cmp	r5, #7
 80050c6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80050ca:	e9c3 6700 	strd	r6, r7, [r3]
 80050ce:	ddf0      	ble.n	80050b2 <_vfprintf_r+0xd32>
 80050d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80050d2:	4621      	mov	r1, r4
 80050d4:	4658      	mov	r0, fp
 80050d6:	f003 fc81 	bl	80089dc <__sprint_r>
 80050da:	2800      	cmp	r0, #0
 80050dc:	f040 8472 	bne.w	80059c4 <_vfprintf_r+0x1644>
 80050e0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80050e4:	ab2d      	add	r3, sp, #180	; 0xb4
 80050e6:	e7e5      	b.n	80050b4 <_vfprintf_r+0xd34>
 80050e8:	0800a768 	.word	0x0800a768
 80050ec:	f018 0f01 	tst.w	r8, #1
 80050f0:	f47f aee0 	bne.w	8004eb4 <_vfprintf_r+0xb34>
 80050f4:	2201      	movs	r2, #1
 80050f6:	2d07      	cmp	r5, #7
 80050f8:	f8cb 7000 	str.w	r7, [fp]
 80050fc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8005100:	f8cb 2004 	str.w	r2, [fp, #4]
 8005104:	dc04      	bgt.n	8005110 <_vfprintf_r+0xd90>
 8005106:	3302      	adds	r3, #2
 8005108:	9309      	str	r3, [sp, #36]	; 0x24
 800510a:	f10b 0b10 	add.w	fp, fp, #16
 800510e:	e70d      	b.n	8004f2c <_vfprintf_r+0xbac>
 8005110:	aa2a      	add	r2, sp, #168	; 0xa8
 8005112:	9907      	ldr	r1, [sp, #28]
 8005114:	9803      	ldr	r0, [sp, #12]
 8005116:	f003 fc61 	bl	80089dc <__sprint_r>
 800511a:	2800      	cmp	r0, #0
 800511c:	f47f aea8 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8005120:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8005124:	3301      	adds	r3, #1
 8005126:	9309      	str	r3, [sp, #36]	; 0x24
 8005128:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800512c:	ae2d      	add	r6, sp, #180	; 0xb4
 800512e:	e6fd      	b.n	8004f2c <_vfprintf_r+0xbac>
 8005130:	aa2a      	add	r2, sp, #168	; 0xa8
 8005132:	9907      	ldr	r1, [sp, #28]
 8005134:	9803      	ldr	r0, [sp, #12]
 8005136:	f003 fc51 	bl	80089dc <__sprint_r>
 800513a:	2800      	cmp	r0, #0
 800513c:	f47f ae98 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8005140:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005144:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005146:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800514a:	f7ff baf6 	b.w	800473a <_vfprintf_r+0x3ba>
 800514e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005150:	9907      	ldr	r1, [sp, #28]
 8005152:	9803      	ldr	r0, [sp, #12]
 8005154:	f003 fc42 	bl	80089dc <__sprint_r>
 8005158:	2800      	cmp	r0, #0
 800515a:	f47f ae89 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 800515e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005160:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005164:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005166:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800516a:	443b      	add	r3, r7
 800516c:	4699      	mov	r9, r3
 800516e:	f040 8357 	bne.w	8005820 <_vfprintf_r+0x14a0>
 8005172:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005174:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005176:	4293      	cmp	r3, r2
 8005178:	db49      	blt.n	800520e <_vfprintf_r+0xe8e>
 800517a:	f018 0f01 	tst.w	r8, #1
 800517e:	d146      	bne.n	800520e <_vfprintf_r+0xe8e>
 8005180:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005182:	18bd      	adds	r5, r7, r2
 8005184:	eba5 0509 	sub.w	r5, r5, r9
 8005188:	1ad3      	subs	r3, r2, r3
 800518a:	429d      	cmp	r5, r3
 800518c:	bfa8      	it	ge
 800518e:	461d      	movge	r5, r3
 8005190:	2d00      	cmp	r5, #0
 8005192:	dd0d      	ble.n	80051b0 <_vfprintf_r+0xe30>
 8005194:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005196:	f8cb 9000 	str.w	r9, [fp]
 800519a:	3201      	adds	r2, #1
 800519c:	442c      	add	r4, r5
 800519e:	2a07      	cmp	r2, #7
 80051a0:	942c      	str	r4, [sp, #176]	; 0xb0
 80051a2:	f8cb 5004 	str.w	r5, [fp, #4]
 80051a6:	922b      	str	r2, [sp, #172]	; 0xac
 80051a8:	f300 8462 	bgt.w	8005a70 <_vfprintf_r+0x16f0>
 80051ac:	f10b 0b08 	add.w	fp, fp, #8
 80051b0:	2d00      	cmp	r5, #0
 80051b2:	bfac      	ite	ge
 80051b4:	1b5d      	subge	r5, r3, r5
 80051b6:	461d      	movlt	r5, r3
 80051b8:	2d00      	cmp	r5, #0
 80051ba:	f77f ab32 	ble.w	8004822 <_vfprintf_r+0x4a2>
 80051be:	2d10      	cmp	r5, #16
 80051c0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80051c2:	4bc5      	ldr	r3, [pc, #788]	; (80054d8 <_vfprintf_r+0x1158>)
 80051c4:	f340 80c4 	ble.w	8005350 <_vfprintf_r+0xfd0>
 80051c8:	4619      	mov	r1, r3
 80051ca:	2610      	movs	r6, #16
 80051cc:	4623      	mov	r3, r4
 80051ce:	9f03      	ldr	r7, [sp, #12]
 80051d0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80051d4:	460c      	mov	r4, r1
 80051d6:	e005      	b.n	80051e4 <_vfprintf_r+0xe64>
 80051d8:	f10b 0b08 	add.w	fp, fp, #8
 80051dc:	3d10      	subs	r5, #16
 80051de:	2d10      	cmp	r5, #16
 80051e0:	f340 80b3 	ble.w	800534a <_vfprintf_r+0xfca>
 80051e4:	3201      	adds	r2, #1
 80051e6:	3310      	adds	r3, #16
 80051e8:	2a07      	cmp	r2, #7
 80051ea:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80051ee:	e9cb 4600 	strd	r4, r6, [fp]
 80051f2:	ddf1      	ble.n	80051d8 <_vfprintf_r+0xe58>
 80051f4:	aa2a      	add	r2, sp, #168	; 0xa8
 80051f6:	4649      	mov	r1, r9
 80051f8:	4638      	mov	r0, r7
 80051fa:	f003 fbef 	bl	80089dc <__sprint_r>
 80051fe:	2800      	cmp	r0, #0
 8005200:	f47f ae38 	bne.w	8004e74 <_vfprintf_r+0xaf4>
 8005204:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005208:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800520c:	e7e6      	b.n	80051dc <_vfprintf_r+0xe5c>
 800520e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005210:	9916      	ldr	r1, [sp, #88]	; 0x58
 8005212:	f8cb 1000 	str.w	r1, [fp]
 8005216:	9915      	ldr	r1, [sp, #84]	; 0x54
 8005218:	f8cb 1004 	str.w	r1, [fp, #4]
 800521c:	3201      	adds	r2, #1
 800521e:	440c      	add	r4, r1
 8005220:	2a07      	cmp	r2, #7
 8005222:	942c      	str	r4, [sp, #176]	; 0xb0
 8005224:	922b      	str	r2, [sp, #172]	; 0xac
 8005226:	f300 828c 	bgt.w	8005742 <_vfprintf_r+0x13c2>
 800522a:	f10b 0b08 	add.w	fp, fp, #8
 800522e:	e7a7      	b.n	8005180 <_vfprintf_r+0xe00>
 8005230:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005234:	f002 fa94 	bl	8007760 <__retarget_lock_release_recursive>
 8005238:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800523c:	e628      	b.n	8004e90 <_vfprintf_r+0xb10>
 800523e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005240:	9907      	ldr	r1, [sp, #28]
 8005242:	9803      	ldr	r0, [sp, #12]
 8005244:	f003 fbca 	bl	80089dc <__sprint_r>
 8005248:	2800      	cmp	r0, #0
 800524a:	f47f ae11 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 800524e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8005252:	ae2d      	add	r6, sp, #180	; 0xb4
 8005254:	e638      	b.n	8004ec8 <_vfprintf_r+0xb48>
 8005256:	aa2a      	add	r2, sp, #168	; 0xa8
 8005258:	9907      	ldr	r1, [sp, #28]
 800525a:	9803      	ldr	r0, [sp, #12]
 800525c:	f003 fbbe 	bl	80089dc <__sprint_r>
 8005260:	2800      	cmp	r0, #0
 8005262:	f47f ae05 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8005266:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800526a:	ae2d      	add	r6, sp, #180	; 0xb4
 800526c:	930b      	str	r3, [sp, #44]	; 0x2c
 800526e:	e638      	b.n	8004ee2 <_vfprintf_r+0xb62>
 8005270:	6814      	ldr	r4, [r2, #0]
 8005272:	9308      	str	r3, [sp, #32]
 8005274:	2500      	movs	r5, #0
 8005276:	f7ff bb95 	b.w	80049a4 <_vfprintf_r+0x624>
 800527a:	6814      	ldr	r4, [r2, #0]
 800527c:	9308      	str	r3, [sp, #32]
 800527e:	2500      	movs	r5, #0
 8005280:	f7ff b9ae 	b.w	80045e0 <_vfprintf_r+0x260>
 8005284:	680c      	ldr	r4, [r1, #0]
 8005286:	9208      	str	r2, [sp, #32]
 8005288:	17e5      	asrs	r5, r4, #31
 800528a:	4620      	mov	r0, r4
 800528c:	4629      	mov	r1, r5
 800528e:	f7ff b9d2 	b.w	8004636 <_vfprintf_r+0x2b6>
 8005292:	6814      	ldr	r4, [r2, #0]
 8005294:	9108      	str	r1, [sp, #32]
 8005296:	2201      	movs	r2, #1
 8005298:	2500      	movs	r5, #0
 800529a:	f7ff bb32 	b.w	8004902 <_vfprintf_r+0x582>
 800529e:	2a01      	cmp	r2, #1
 80052a0:	f47f ab3c 	bne.w	800491c <_vfprintf_r+0x59c>
 80052a4:	e68f      	b.n	8004fc6 <_vfprintf_r+0xc46>
 80052a6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80052aa:	2200      	movs	r2, #0
 80052ac:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80052b0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80052b4:	af56      	add	r7, sp, #344	; 0x158
 80052b6:	4692      	mov	sl, r2
 80052b8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80052bc:	461e      	mov	r6, r3
 80052be:	e00a      	b.n	80052d6 <_vfprintf_r+0xf56>
 80052c0:	2300      	movs	r3, #0
 80052c2:	4620      	mov	r0, r4
 80052c4:	4629      	mov	r1, r5
 80052c6:	220a      	movs	r2, #10
 80052c8:	f7fa ff9a 	bl	8000200 <__aeabi_uldivmod>
 80052cc:	4604      	mov	r4, r0
 80052ce:	460d      	mov	r5, r1
 80052d0:	ea54 0305 	orrs.w	r3, r4, r5
 80052d4:	d029      	beq.n	800532a <_vfprintf_r+0xfaa>
 80052d6:	220a      	movs	r2, #10
 80052d8:	2300      	movs	r3, #0
 80052da:	4620      	mov	r0, r4
 80052dc:	4629      	mov	r1, r5
 80052de:	f7fa ff8f 	bl	8000200 <__aeabi_uldivmod>
 80052e2:	3230      	adds	r2, #48	; 0x30
 80052e4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80052e8:	f10a 0a01 	add.w	sl, sl, #1
 80052ec:	3f01      	subs	r7, #1
 80052ee:	2e00      	cmp	r6, #0
 80052f0:	d0e6      	beq.n	80052c0 <_vfprintf_r+0xf40>
 80052f2:	f898 3000 	ldrb.w	r3, [r8]
 80052f6:	459a      	cmp	sl, r3
 80052f8:	d1e2      	bne.n	80052c0 <_vfprintf_r+0xf40>
 80052fa:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80052fe:	d0df      	beq.n	80052c0 <_vfprintf_r+0xf40>
 8005300:	2d00      	cmp	r5, #0
 8005302:	bf08      	it	eq
 8005304:	2c0a      	cmpeq	r4, #10
 8005306:	d3db      	bcc.n	80052c0 <_vfprintf_r+0xf40>
 8005308:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800530a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800530c:	1aff      	subs	r7, r7, r3
 800530e:	461a      	mov	r2, r3
 8005310:	4638      	mov	r0, r7
 8005312:	f003 faf5 	bl	8008900 <strncpy>
 8005316:	f898 3001 	ldrb.w	r3, [r8, #1]
 800531a:	2b00      	cmp	r3, #0
 800531c:	f000 8496 	beq.w	8005c4c <_vfprintf_r+0x18cc>
 8005320:	f108 0801 	add.w	r8, r8, #1
 8005324:	f04f 0a00 	mov.w	sl, #0
 8005328:	e7ca      	b.n	80052c0 <_vfprintf_r+0xf40>
 800532a:	9b04      	ldr	r3, [sp, #16]
 800532c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8005330:	1bdb      	subs	r3, r3, r7
 8005332:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8005336:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8005338:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800533c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8005340:	9309      	str	r3, [sp, #36]	; 0x24
 8005342:	f7ff b99e 	b.w	8004682 <_vfprintf_r+0x302>
 8005346:	46c1      	mov	r9, r8
 8005348:	e594      	b.n	8004e74 <_vfprintf_r+0xaf4>
 800534a:	4621      	mov	r1, r4
 800534c:	461c      	mov	r4, r3
 800534e:	460b      	mov	r3, r1
 8005350:	3201      	adds	r2, #1
 8005352:	442c      	add	r4, r5
 8005354:	2a07      	cmp	r2, #7
 8005356:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800535a:	e9cb 3500 	strd	r3, r5, [fp]
 800535e:	f77f aa5e 	ble.w	800481e <_vfprintf_r+0x49e>
 8005362:	e5ee      	b.n	8004f42 <_vfprintf_r+0xbc2>
 8005364:	f018 0f10 	tst.w	r8, #16
 8005368:	f040 80f8 	bne.w	800555c <_vfprintf_r+0x11dc>
 800536c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005370:	f000 8351 	beq.w	8005a16 <_vfprintf_r+0x1696>
 8005374:	9a05      	ldr	r2, [sp, #20]
 8005376:	801a      	strh	r2, [r3, #0]
 8005378:	4657      	mov	r7, sl
 800537a:	f7ff baa7 	b.w	80048cc <_vfprintf_r+0x54c>
 800537e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005380:	9907      	ldr	r1, [sp, #28]
 8005382:	9803      	ldr	r0, [sp, #12]
 8005384:	f003 fb2a 	bl	80089dc <__sprint_r>
 8005388:	2800      	cmp	r0, #0
 800538a:	f47f ad71 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 800538e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005390:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005394:	f7ff b9f5 	b.w	8004782 <_vfprintf_r+0x402>
 8005398:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800539c:	4602      	mov	r2, r0
 800539e:	460b      	mov	r3, r1
 80053a0:	f7fb fec4 	bl	800112c <__aeabi_dcmpun>
 80053a4:	2800      	cmp	r0, #0
 80053a6:	f040 8491 	bne.w	8005ccc <_vfprintf_r+0x194c>
 80053aa:	2e61      	cmp	r6, #97	; 0x61
 80053ac:	f000 8111 	beq.w	80055d2 <_vfprintf_r+0x1252>
 80053b0:	2e41      	cmp	r6, #65	; 0x41
 80053b2:	f000 8377 	beq.w	8005aa4 <_vfprintf_r+0x1724>
 80053b6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80053ba:	f026 0220 	bic.w	r2, r6, #32
 80053be:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80053c2:	930e      	str	r3, [sp, #56]	; 0x38
 80053c4:	9204      	str	r2, [sp, #16]
 80053c6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80053c8:	f000 842d 	beq.w	8005c26 <_vfprintf_r+0x18a6>
 80053cc:	2a47      	cmp	r2, #71	; 0x47
 80053ce:	f000 8424 	beq.w	8005c1a <_vfprintf_r+0x189a>
 80053d2:	2b00      	cmp	r3, #0
 80053d4:	f2c0 82f9 	blt.w	80059ca <_vfprintf_r+0x164a>
 80053d8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80053dc:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80053e0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80053e4:	2e66      	cmp	r6, #102	; 0x66
 80053e6:	f000 83eb 	beq.w	8005bc0 <_vfprintf_r+0x1840>
 80053ea:	2e46      	cmp	r6, #70	; 0x46
 80053ec:	f000 847e 	beq.w	8005cec <_vfprintf_r+0x196c>
 80053f0:	9b04      	ldr	r3, [sp, #16]
 80053f2:	9803      	ldr	r0, [sp, #12]
 80053f4:	2b45      	cmp	r3, #69	; 0x45
 80053f6:	bf0c      	ite	eq
 80053f8:	f109 0501 	addeq.w	r5, r9, #1
 80053fc:	464d      	movne	r5, r9
 80053fe:	aa28      	add	r2, sp, #160	; 0xa0
 8005400:	ab25      	add	r3, sp, #148	; 0x94
 8005402:	e9cd 3200 	strd	r3, r2, [sp]
 8005406:	2102      	movs	r1, #2
 8005408:	ab24      	add	r3, sp, #144	; 0x90
 800540a:	462a      	mov	r2, r5
 800540c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005410:	f000 fe3e 	bl	8006090 <_dtoa_r>
 8005414:	2e67      	cmp	r6, #103	; 0x67
 8005416:	4607      	mov	r7, r0
 8005418:	f040 849c 	bne.w	8005d54 <_vfprintf_r+0x19d4>
 800541c:	f018 0f01 	tst.w	r8, #1
 8005420:	f040 83f9 	bne.w	8005c16 <_vfprintf_r+0x1896>
 8005424:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005426:	4640      	mov	r0, r8
 8005428:	1bdb      	subs	r3, r3, r7
 800542a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800542e:	9310      	str	r3, [sp, #64]	; 0x40
 8005430:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005432:	9311      	str	r3, [sp, #68]	; 0x44
 8005434:	9b04      	ldr	r3, [sp, #16]
 8005436:	2b47      	cmp	r3, #71	; 0x47
 8005438:	f000 81e7 	beq.w	800580a <_vfprintf_r+0x148a>
 800543c:	9b04      	ldr	r3, [sp, #16]
 800543e:	2b46      	cmp	r3, #70	; 0x46
 8005440:	f000 8300 	beq.w	8005a44 <_vfprintf_r+0x16c4>
 8005444:	9904      	ldr	r1, [sp, #16]
 8005446:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005448:	b2f2      	uxtb	r2, r6
 800544a:	2941      	cmp	r1, #65	; 0x41
 800544c:	bf08      	it	eq
 800544e:	320f      	addeq	r2, #15
 8005450:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8005454:	bf06      	itte	eq
 8005456:	b2d2      	uxtbeq	r2, r2
 8005458:	2101      	moveq	r1, #1
 800545a:	2100      	movne	r1, #0
 800545c:	2b00      	cmp	r3, #0
 800545e:	9324      	str	r3, [sp, #144]	; 0x90
 8005460:	bfb8      	it	lt
 8005462:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8005464:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8005468:	bfba      	itte	lt
 800546a:	f1c3 0301 	rsblt	r3, r3, #1
 800546e:	222d      	movlt	r2, #45	; 0x2d
 8005470:	222b      	movge	r2, #43	; 0x2b
 8005472:	2b09      	cmp	r3, #9
 8005474:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8005478:	f300 83f9 	bgt.w	8005c6e <_vfprintf_r+0x18ee>
 800547c:	2900      	cmp	r1, #0
 800547e:	f040 8487 	bne.w	8005d90 <_vfprintf_r+0x1a10>
 8005482:	2230      	movs	r2, #48	; 0x30
 8005484:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8005488:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800548c:	3330      	adds	r3, #48	; 0x30
 800548e:	7013      	strb	r3, [r2, #0]
 8005490:	1c53      	adds	r3, r2, #1
 8005492:	aa26      	add	r2, sp, #152	; 0x98
 8005494:	1a9b      	subs	r3, r3, r2
 8005496:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005498:	9319      	str	r3, [sp, #100]	; 0x64
 800549a:	2a01      	cmp	r2, #1
 800549c:	4413      	add	r3, r2
 800549e:	9309      	str	r3, [sp, #36]	; 0x24
 80054a0:	f340 8442 	ble.w	8005d28 <_vfprintf_r+0x19a8>
 80054a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80054a6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80054a8:	4413      	add	r3, r2
 80054aa:	9309      	str	r3, [sp, #36]	; 0x24
 80054ac:	2300      	movs	r3, #0
 80054ae:	930f      	str	r3, [sp, #60]	; 0x3c
 80054b0:	9314      	str	r3, [sp, #80]	; 0x50
 80054b2:	9311      	str	r3, [sp, #68]	; 0x44
 80054b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80054b6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80054ba:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80054be:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80054c2:	9304      	str	r3, [sp, #16]
 80054c4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80054c6:	2b00      	cmp	r3, #0
 80054c8:	f040 8275 	bne.w	80059b6 <_vfprintf_r+0x1636>
 80054cc:	4699      	mov	r9, r3
 80054ce:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80054d2:	f7ff b8e2 	b.w	800469a <_vfprintf_r+0x31a>
 80054d6:	bf00      	nop
 80054d8:	0800a768 	.word	0x0800a768
 80054dc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80054de:	49bd      	ldr	r1, [pc, #756]	; (80057d4 <_vfprintf_r+0x1454>)
 80054e0:	f8cb 1000 	str.w	r1, [fp]
 80054e4:	3201      	adds	r2, #1
 80054e6:	3401      	adds	r4, #1
 80054e8:	2101      	movs	r1, #1
 80054ea:	2a07      	cmp	r2, #7
 80054ec:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80054f0:	f8cb 1004 	str.w	r1, [fp, #4]
 80054f4:	dc60      	bgt.n	80055b8 <_vfprintf_r+0x1238>
 80054f6:	f10b 0b08 	add.w	fp, fp, #8
 80054fa:	b92b      	cbnz	r3, 8005508 <_vfprintf_r+0x1188>
 80054fc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80054fe:	b91a      	cbnz	r2, 8005508 <_vfprintf_r+0x1188>
 8005500:	f018 0f01 	tst.w	r8, #1
 8005504:	f43f a98d 	beq.w	8004822 <_vfprintf_r+0x4a2>
 8005508:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800550a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800550c:	f8cb 1000 	str.w	r1, [fp]
 8005510:	9915      	ldr	r1, [sp, #84]	; 0x54
 8005512:	f8cb 1004 	str.w	r1, [fp, #4]
 8005516:	3201      	adds	r2, #1
 8005518:	440c      	add	r4, r1
 800551a:	2a07      	cmp	r2, #7
 800551c:	942c      	str	r4, [sp, #176]	; 0xb0
 800551e:	922b      	str	r2, [sp, #172]	; 0xac
 8005520:	f300 8282 	bgt.w	8005a28 <_vfprintf_r+0x16a8>
 8005524:	f10b 0b08 	add.w	fp, fp, #8
 8005528:	2b00      	cmp	r3, #0
 800552a:	f2c0 82e7 	blt.w	8005afc <_vfprintf_r+0x177c>
 800552e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005530:	3201      	adds	r2, #1
 8005532:	441c      	add	r4, r3
 8005534:	2a07      	cmp	r2, #7
 8005536:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800553a:	e9cb 7300 	strd	r7, r3, [fp]
 800553e:	f77f a96e 	ble.w	800481e <_vfprintf_r+0x49e>
 8005542:	e4fe      	b.n	8004f42 <_vfprintf_r+0xbc2>
 8005544:	aa2a      	add	r2, sp, #168	; 0xa8
 8005546:	9907      	ldr	r1, [sp, #28]
 8005548:	9803      	ldr	r0, [sp, #12]
 800554a:	f003 fa47 	bl	80089dc <__sprint_r>
 800554e:	2800      	cmp	r0, #0
 8005550:	f47f ac8e 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8005554:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005558:	f7ff bbf0 	b.w	8004d3c <_vfprintf_r+0x9bc>
 800555c:	9a05      	ldr	r2, [sp, #20]
 800555e:	601a      	str	r2, [r3, #0]
 8005560:	4657      	mov	r7, sl
 8005562:	f7ff b9b3 	b.w	80048cc <_vfprintf_r+0x54c>
 8005566:	8814      	ldrh	r4, [r2, #0]
 8005568:	9108      	str	r1, [sp, #32]
 800556a:	2500      	movs	r5, #0
 800556c:	2201      	movs	r2, #1
 800556e:	f7ff b9c8 	b.w	8004902 <_vfprintf_r+0x582>
 8005572:	8814      	ldrh	r4, [r2, #0]
 8005574:	9308      	str	r3, [sp, #32]
 8005576:	2500      	movs	r5, #0
 8005578:	f7ff ba14 	b.w	80049a4 <_vfprintf_r+0x624>
 800557c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8005580:	9208      	str	r2, [sp, #32]
 8005582:	17e5      	asrs	r5, r4, #31
 8005584:	4620      	mov	r0, r4
 8005586:	4629      	mov	r1, r5
 8005588:	f7ff b855 	b.w	8004636 <_vfprintf_r+0x2b6>
 800558c:	8814      	ldrh	r4, [r2, #0]
 800558e:	9308      	str	r3, [sp, #32]
 8005590:	2500      	movs	r5, #0
 8005592:	f7ff b825 	b.w	80045e0 <_vfprintf_r+0x260>
 8005596:	222d      	movs	r2, #45	; 0x2d
 8005598:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800559c:	f7ff baa2 	b.w	8004ae4 <_vfprintf_r+0x764>
 80055a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80055a2:	9907      	ldr	r1, [sp, #28]
 80055a4:	9803      	ldr	r0, [sp, #12]
 80055a6:	f003 fa19 	bl	80089dc <__sprint_r>
 80055aa:	2800      	cmp	r0, #0
 80055ac:	f47f ac60 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 80055b0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80055b2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80055b6:	e534      	b.n	8005022 <_vfprintf_r+0xca2>
 80055b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80055ba:	9907      	ldr	r1, [sp, #28]
 80055bc:	9803      	ldr	r0, [sp, #12]
 80055be:	f003 fa0d 	bl	80089dc <__sprint_r>
 80055c2:	2800      	cmp	r0, #0
 80055c4:	f47f ac54 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 80055c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80055ca:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80055cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80055d0:	e793      	b.n	80054fa <_vfprintf_r+0x117a>
 80055d2:	2330      	movs	r3, #48	; 0x30
 80055d4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80055d8:	2378      	movs	r3, #120	; 0x78
 80055da:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80055de:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80055e2:	f048 0402 	orr.w	r4, r8, #2
 80055e6:	f300 82b0 	bgt.w	8005b4a <_vfprintf_r+0x17ca>
 80055ea:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80055ee:	930e      	str	r3, [sp, #56]	; 0x38
 80055f0:	f026 0320 	bic.w	r3, r6, #32
 80055f4:	9304      	str	r3, [sp, #16]
 80055f6:	2200      	movs	r2, #0
 80055f8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80055fa:	920a      	str	r2, [sp, #40]	; 0x28
 80055fc:	46a0      	mov	r8, r4
 80055fe:	af3d      	add	r7, sp, #244	; 0xf4
 8005600:	2b00      	cmp	r3, #0
 8005602:	f2c0 81e3 	blt.w	80059cc <_vfprintf_r+0x164c>
 8005606:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800560a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800560e:	2300      	movs	r3, #0
 8005610:	930b      	str	r3, [sp, #44]	; 0x2c
 8005612:	2e61      	cmp	r6, #97	; 0x61
 8005614:	f000 8255 	beq.w	8005ac2 <_vfprintf_r+0x1742>
 8005618:	2e41      	cmp	r6, #65	; 0x41
 800561a:	f47f aee3 	bne.w	80053e4 <_vfprintf_r+0x1064>
 800561e:	a824      	add	r0, sp, #144	; 0x90
 8005620:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005624:	f003 f8e2 	bl	80087ec <frexp>
 8005628:	2200      	movs	r2, #0
 800562a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800562e:	ec51 0b10 	vmov	r0, r1, d0
 8005632:	f7fb fae1 	bl	8000bf8 <__aeabi_dmul>
 8005636:	2200      	movs	r2, #0
 8005638:	2300      	movs	r3, #0
 800563a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800563e:	f7fb fd43 	bl	80010c8 <__aeabi_dcmpeq>
 8005642:	2800      	cmp	r0, #0
 8005644:	f040 8305 	bne.w	8005c52 <_vfprintf_r+0x18d2>
 8005648:	4b63      	ldr	r3, [pc, #396]	; (80057d8 <_vfprintf_r+0x1458>)
 800564a:	9309      	str	r3, [sp, #36]	; 0x24
 800564c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8005650:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8005654:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8005658:	9721      	str	r7, [sp, #132]	; 0x84
 800565a:	46b9      	mov	r9, r7
 800565c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8005660:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8005664:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8005668:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800566c:	e003      	b.n	8005676 <_vfprintf_r+0x12f6>
 800566e:	f7fb fd2b 	bl	80010c8 <__aeabi_dcmpeq>
 8005672:	bb20      	cbnz	r0, 80056be <_vfprintf_r+0x133e>
 8005674:	46a9      	mov	r9, r5
 8005676:	2200      	movs	r2, #0
 8005678:	4b58      	ldr	r3, [pc, #352]	; (80057dc <_vfprintf_r+0x145c>)
 800567a:	4630      	mov	r0, r6
 800567c:	4639      	mov	r1, r7
 800567e:	f7fb fabb 	bl	8000bf8 <__aeabi_dmul>
 8005682:	460f      	mov	r7, r1
 8005684:	4606      	mov	r6, r0
 8005686:	f7fb fd67 	bl	8001158 <__aeabi_d2iz>
 800568a:	4680      	mov	r8, r0
 800568c:	f7fb fa4a 	bl	8000b24 <__aeabi_i2d>
 8005690:	4602      	mov	r2, r0
 8005692:	460b      	mov	r3, r1
 8005694:	4630      	mov	r0, r6
 8005696:	4639      	mov	r1, r7
 8005698:	f7fb f8f6 	bl	8000888 <__aeabi_dsub>
 800569c:	464d      	mov	r5, r9
 800569e:	f81a c008 	ldrb.w	ip, [sl, r8]
 80056a2:	f805 cb01 	strb.w	ip, [r5], #1
 80056a6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80056aa:	46a3      	mov	fp, r4
 80056ac:	4606      	mov	r6, r0
 80056ae:	460f      	mov	r7, r1
 80056b0:	f04f 0200 	mov.w	r2, #0
 80056b4:	f04f 0300 	mov.w	r3, #0
 80056b8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80056bc:	d1d7      	bne.n	800566e <_vfprintf_r+0x12ee>
 80056be:	4630      	mov	r0, r6
 80056c0:	4639      	mov	r1, r7
 80056c2:	2200      	movs	r2, #0
 80056c4:	4b46      	ldr	r3, [pc, #280]	; (80057e0 <_vfprintf_r+0x1460>)
 80056c6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80056ca:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80056cc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80056d0:	4644      	mov	r4, r8
 80056d2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80056d6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80056da:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80056de:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80056e2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80056e4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80056e8:	f7fb fd16 	bl	8001118 <__aeabi_dcmpgt>
 80056ec:	2800      	cmp	r0, #0
 80056ee:	f040 8176 	bne.w	80059de <_vfprintf_r+0x165e>
 80056f2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80056f6:	2200      	movs	r2, #0
 80056f8:	4b39      	ldr	r3, [pc, #228]	; (80057e0 <_vfprintf_r+0x1460>)
 80056fa:	f7fb fce5 	bl	80010c8 <__aeabi_dcmpeq>
 80056fe:	b110      	cbz	r0, 8005706 <_vfprintf_r+0x1386>
 8005700:	07e2      	lsls	r2, r4, #31
 8005702:	f100 816c 	bmi.w	80059de <_vfprintf_r+0x165e>
 8005706:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005708:	2b00      	cmp	r3, #0
 800570a:	db07      	blt.n	800571c <_vfprintf_r+0x139c>
 800570c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800570e:	3301      	adds	r3, #1
 8005710:	442b      	add	r3, r5
 8005712:	2230      	movs	r2, #48	; 0x30
 8005714:	f805 2b01 	strb.w	r2, [r5], #1
 8005718:	42ab      	cmp	r3, r5
 800571a:	d1fb      	bne.n	8005714 <_vfprintf_r+0x1394>
 800571c:	1beb      	subs	r3, r5, r7
 800571e:	4640      	mov	r0, r8
 8005720:	9310      	str	r3, [sp, #64]	; 0x40
 8005722:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8005726:	e683      	b.n	8005430 <_vfprintf_r+0x10b0>
 8005728:	f8cd 9010 	str.w	r9, [sp, #16]
 800572c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8005730:	9408      	str	r4, [sp, #32]
 8005732:	4681      	mov	r9, r0
 8005734:	900f      	str	r0, [sp, #60]	; 0x3c
 8005736:	9014      	str	r0, [sp, #80]	; 0x50
 8005738:	9011      	str	r0, [sp, #68]	; 0x44
 800573a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800573e:	f7fe bfac 	b.w	800469a <_vfprintf_r+0x31a>
 8005742:	aa2a      	add	r2, sp, #168	; 0xa8
 8005744:	9907      	ldr	r1, [sp, #28]
 8005746:	9803      	ldr	r0, [sp, #12]
 8005748:	f003 f948 	bl	80089dc <__sprint_r>
 800574c:	2800      	cmp	r0, #0
 800574e:	f47f ab8f 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8005752:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005754:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005756:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800575a:	e511      	b.n	8005180 <_vfprintf_r+0xe00>
 800575c:	4252      	negs	r2, r2
 800575e:	9206      	str	r2, [sp, #24]
 8005760:	9308      	str	r3, [sp, #32]
 8005762:	f7ff b96d 	b.w	8004a40 <_vfprintf_r+0x6c0>
 8005766:	4614      	mov	r4, r2
 8005768:	4632      	mov	r2, r6
 800576a:	461e      	mov	r6, r3
 800576c:	4613      	mov	r3, r2
 800576e:	462a      	mov	r2, r5
 8005770:	3201      	adds	r2, #1
 8005772:	9209      	str	r2, [sp, #36]	; 0x24
 8005774:	f106 0208 	add.w	r2, r6, #8
 8005778:	e9c6 3900 	strd	r3, r9, [r6]
 800577c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800577e:	932b      	str	r3, [sp, #172]	; 0xac
 8005780:	444c      	add	r4, r9
 8005782:	2b07      	cmp	r3, #7
 8005784:	942c      	str	r4, [sp, #176]	; 0xb0
 8005786:	f73f acc3 	bgt.w	8005110 <_vfprintf_r+0xd90>
 800578a:	3301      	adds	r3, #1
 800578c:	9309      	str	r3, [sp, #36]	; 0x24
 800578e:	f102 0b08 	add.w	fp, r2, #8
 8005792:	4616      	mov	r6, r2
 8005794:	f7ff bbca 	b.w	8004f2c <_vfprintf_r+0xbac>
 8005798:	aa2a      	add	r2, sp, #168	; 0xa8
 800579a:	9907      	ldr	r1, [sp, #28]
 800579c:	9803      	ldr	r0, [sp, #12]
 800579e:	f003 f91d 	bl	80089dc <__sprint_r>
 80057a2:	2800      	cmp	r0, #0
 80057a4:	f47f ab64 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 80057a8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80057aa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80057ae:	f7ff bade 	b.w	8004d6e <_vfprintf_r+0x9ee>
 80057b2:	464b      	mov	r3, r9
 80057b4:	2b06      	cmp	r3, #6
 80057b6:	bf28      	it	cs
 80057b8:	2306      	movcs	r3, #6
 80057ba:	46b9      	mov	r9, r7
 80057bc:	970f      	str	r7, [sp, #60]	; 0x3c
 80057be:	9714      	str	r7, [sp, #80]	; 0x50
 80057c0:	9711      	str	r7, [sp, #68]	; 0x44
 80057c2:	970a      	str	r7, [sp, #40]	; 0x28
 80057c4:	463a      	mov	r2, r7
 80057c6:	9304      	str	r3, [sp, #16]
 80057c8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80057cc:	4f05      	ldr	r7, [pc, #20]	; (80057e4 <_vfprintf_r+0x1464>)
 80057ce:	f7fe bf64 	b.w	800469a <_vfprintf_r+0x31a>
 80057d2:	bf00      	nop
 80057d4:	0800a754 	.word	0x0800a754
 80057d8:	0800a738 	.word	0x0800a738
 80057dc:	40300000 	.word	0x40300000
 80057e0:	3fe00000 	.word	0x3fe00000
 80057e4:	0800a74c 	.word	0x0800a74c
 80057e8:	460c      	mov	r4, r1
 80057ea:	4639      	mov	r1, r7
 80057ec:	465f      	mov	r7, fp
 80057ee:	469b      	mov	fp, r3
 80057f0:	460b      	mov	r3, r1
 80057f2:	3201      	adds	r2, #1
 80057f4:	442c      	add	r4, r5
 80057f6:	2a07      	cmp	r2, #7
 80057f8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80057fc:	e9cb 3500 	strd	r3, r5, [fp]
 8005800:	f73f aca5 	bgt.w	800514e <_vfprintf_r+0xdce>
 8005804:	f10b 0b08 	add.w	fp, fp, #8
 8005808:	e4ac      	b.n	8005164 <_vfprintf_r+0xde4>
 800580a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800580c:	1cda      	adds	r2, r3, #3
 800580e:	db02      	blt.n	8005816 <_vfprintf_r+0x1496>
 8005810:	4599      	cmp	r9, r3
 8005812:	f280 80b5 	bge.w	8005980 <_vfprintf_r+0x1600>
 8005816:	3e02      	subs	r6, #2
 8005818:	f026 0320 	bic.w	r3, r6, #32
 800581c:	9304      	str	r3, [sp, #16]
 800581e:	e611      	b.n	8005444 <_vfprintf_r+0x10c4>
 8005820:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005822:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8005826:	465a      	mov	r2, fp
 8005828:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800582c:	18fb      	adds	r3, r7, r3
 800582e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8005832:	970c      	str	r7, [sp, #48]	; 0x30
 8005834:	4eaf      	ldr	r6, [pc, #700]	; (8005af4 <_vfprintf_r+0x1774>)
 8005836:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800583a:	9309      	str	r3, [sp, #36]	; 0x24
 800583c:	464f      	mov	r7, r9
 800583e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005842:	4621      	mov	r1, r4
 8005844:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8005846:	2b00      	cmp	r3, #0
 8005848:	d05b      	beq.n	8005902 <_vfprintf_r+0x1582>
 800584a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800584c:	2b00      	cmp	r3, #0
 800584e:	d154      	bne.n	80058fa <_vfprintf_r+0x157a>
 8005850:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8005852:	3b01      	subs	r3, #1
 8005854:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8005858:	9314      	str	r3, [sp, #80]	; 0x50
 800585a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800585c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800585e:	6010      	str	r0, [r2, #0]
 8005860:	3301      	adds	r3, #1
 8005862:	4459      	add	r1, fp
 8005864:	2b07      	cmp	r3, #7
 8005866:	912c      	str	r1, [sp, #176]	; 0xb0
 8005868:	f8c2 b004 	str.w	fp, [r2, #4]
 800586c:	932b      	str	r3, [sp, #172]	; 0xac
 800586e:	dc68      	bgt.n	8005942 <_vfprintf_r+0x15c2>
 8005870:	3208      	adds	r2, #8
 8005872:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005874:	f898 3000 	ldrb.w	r3, [r8]
 8005878:	1bc5      	subs	r5, r0, r7
 800587a:	429d      	cmp	r5, r3
 800587c:	bfa8      	it	ge
 800587e:	461d      	movge	r5, r3
 8005880:	2d00      	cmp	r5, #0
 8005882:	dd0b      	ble.n	800589c <_vfprintf_r+0x151c>
 8005884:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005886:	6017      	str	r7, [r2, #0]
 8005888:	3301      	adds	r3, #1
 800588a:	4429      	add	r1, r5
 800588c:	2b07      	cmp	r3, #7
 800588e:	912c      	str	r1, [sp, #176]	; 0xb0
 8005890:	6055      	str	r5, [r2, #4]
 8005892:	932b      	str	r3, [sp, #172]	; 0xac
 8005894:	dc5e      	bgt.n	8005954 <_vfprintf_r+0x15d4>
 8005896:	f898 3000 	ldrb.w	r3, [r8]
 800589a:	3208      	adds	r2, #8
 800589c:	2d00      	cmp	r5, #0
 800589e:	bfac      	ite	ge
 80058a0:	1b5d      	subge	r5, r3, r5
 80058a2:	461d      	movlt	r5, r3
 80058a4:	2d00      	cmp	r5, #0
 80058a6:	dd26      	ble.n	80058f6 <_vfprintf_r+0x1576>
 80058a8:	2d10      	cmp	r5, #16
 80058aa:	982b      	ldr	r0, [sp, #172]	; 0xac
 80058ac:	dd3c      	ble.n	8005928 <_vfprintf_r+0x15a8>
 80058ae:	2410      	movs	r4, #16
 80058b0:	e003      	b.n	80058ba <_vfprintf_r+0x153a>
 80058b2:	3208      	adds	r2, #8
 80058b4:	3d10      	subs	r5, #16
 80058b6:	2d10      	cmp	r5, #16
 80058b8:	dd36      	ble.n	8005928 <_vfprintf_r+0x15a8>
 80058ba:	3001      	adds	r0, #1
 80058bc:	3110      	adds	r1, #16
 80058be:	2807      	cmp	r0, #7
 80058c0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80058c4:	e9c2 6400 	strd	r6, r4, [r2]
 80058c8:	ddf3      	ble.n	80058b2 <_vfprintf_r+0x1532>
 80058ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80058cc:	4651      	mov	r1, sl
 80058ce:	4648      	mov	r0, r9
 80058d0:	f003 f884 	bl	80089dc <__sprint_r>
 80058d4:	2800      	cmp	r0, #0
 80058d6:	d150      	bne.n	800597a <_vfprintf_r+0x15fa>
 80058d8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80058dc:	aa2d      	add	r2, sp, #180	; 0xb4
 80058de:	e7e9      	b.n	80058b4 <_vfprintf_r+0x1534>
 80058e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80058e2:	4651      	mov	r1, sl
 80058e4:	4648      	mov	r0, r9
 80058e6:	f003 f879 	bl	80089dc <__sprint_r>
 80058ea:	2800      	cmp	r0, #0
 80058ec:	d145      	bne.n	800597a <_vfprintf_r+0x15fa>
 80058ee:	f898 3000 	ldrb.w	r3, [r8]
 80058f2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80058f4:	aa2d      	add	r2, sp, #180	; 0xb4
 80058f6:	441f      	add	r7, r3
 80058f8:	e7a4      	b.n	8005844 <_vfprintf_r+0x14c4>
 80058fa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80058fc:	3b01      	subs	r3, #1
 80058fe:	930f      	str	r3, [sp, #60]	; 0x3c
 8005900:	e7ab      	b.n	800585a <_vfprintf_r+0x14da>
 8005902:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005904:	2b00      	cmp	r3, #0
 8005906:	d1f8      	bne.n	80058fa <_vfprintf_r+0x157a>
 8005908:	46b9      	mov	r9, r7
 800590a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800590c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800590e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8005912:	18fb      	adds	r3, r7, r3
 8005914:	4599      	cmp	r9, r3
 8005916:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800591a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800591e:	4693      	mov	fp, r2
 8005920:	460c      	mov	r4, r1
 8005922:	bf28      	it	cs
 8005924:	4699      	movcs	r9, r3
 8005926:	e424      	b.n	8005172 <_vfprintf_r+0xdf2>
 8005928:	3001      	adds	r0, #1
 800592a:	4429      	add	r1, r5
 800592c:	2807      	cmp	r0, #7
 800592e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8005932:	e9c2 6500 	strd	r6, r5, [r2]
 8005936:	dcd3      	bgt.n	80058e0 <_vfprintf_r+0x1560>
 8005938:	f898 3000 	ldrb.w	r3, [r8]
 800593c:	3208      	adds	r2, #8
 800593e:	441f      	add	r7, r3
 8005940:	e780      	b.n	8005844 <_vfprintf_r+0x14c4>
 8005942:	aa2a      	add	r2, sp, #168	; 0xa8
 8005944:	4651      	mov	r1, sl
 8005946:	4648      	mov	r0, r9
 8005948:	f003 f848 	bl	80089dc <__sprint_r>
 800594c:	b9a8      	cbnz	r0, 800597a <_vfprintf_r+0x15fa>
 800594e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8005950:	aa2d      	add	r2, sp, #180	; 0xb4
 8005952:	e78e      	b.n	8005872 <_vfprintf_r+0x14f2>
 8005954:	aa2a      	add	r2, sp, #168	; 0xa8
 8005956:	4651      	mov	r1, sl
 8005958:	4648      	mov	r0, r9
 800595a:	f003 f83f 	bl	80089dc <__sprint_r>
 800595e:	b960      	cbnz	r0, 800597a <_vfprintf_r+0x15fa>
 8005960:	f898 3000 	ldrb.w	r3, [r8]
 8005964:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8005966:	aa2d      	add	r2, sp, #180	; 0xb4
 8005968:	e798      	b.n	800589c <_vfprintf_r+0x151c>
 800596a:	4638      	mov	r0, r7
 800596c:	f7fa fec8 	bl	8000700 <strlen>
 8005970:	46a9      	mov	r9, r5
 8005972:	4603      	mov	r3, r0
 8005974:	9009      	str	r0, [sp, #36]	; 0x24
 8005976:	f7ff b8f4 	b.w	8004b62 <_vfprintf_r+0x7e2>
 800597a:	46d1      	mov	r9, sl
 800597c:	f7ff ba7a 	b.w	8004e74 <_vfprintf_r+0xaf4>
 8005980:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005982:	4619      	mov	r1, r3
 8005984:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005986:	4299      	cmp	r1, r3
 8005988:	f300 8082 	bgt.w	8005a90 <_vfprintf_r+0x1710>
 800598c:	07c4      	lsls	r4, r0, #31
 800598e:	f140 816b 	bpl.w	8005c68 <_vfprintf_r+0x18e8>
 8005992:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8005994:	4413      	add	r3, r2
 8005996:	9309      	str	r3, [sp, #36]	; 0x24
 8005998:	0541      	lsls	r1, r0, #21
 800599a:	d503      	bpl.n	80059a4 <_vfprintf_r+0x1624>
 800599c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800599e:	2b00      	cmp	r3, #0
 80059a0:	f300 80e6 	bgt.w	8005b70 <_vfprintf_r+0x17f0>
 80059a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80059a6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80059aa:	9304      	str	r3, [sp, #16]
 80059ac:	2667      	movs	r6, #103	; 0x67
 80059ae:	2300      	movs	r3, #0
 80059b0:	930f      	str	r3, [sp, #60]	; 0x3c
 80059b2:	9314      	str	r3, [sp, #80]	; 0x50
 80059b4:	e586      	b.n	80054c4 <_vfprintf_r+0x1144>
 80059b6:	222d      	movs	r2, #45	; 0x2d
 80059b8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80059bc:	f04f 0900 	mov.w	r9, #0
 80059c0:	f7fe be6c 	b.w	800469c <_vfprintf_r+0x31c>
 80059c4:	46a1      	mov	r9, r4
 80059c6:	f7ff ba55 	b.w	8004e74 <_vfprintf_r+0xaf4>
 80059ca:	900a      	str	r0, [sp, #40]	; 0x28
 80059cc:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80059d0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80059d4:	931f      	str	r3, [sp, #124]	; 0x7c
 80059d6:	232d      	movs	r3, #45	; 0x2d
 80059d8:	911e      	str	r1, [sp, #120]	; 0x78
 80059da:	930b      	str	r3, [sp, #44]	; 0x2c
 80059dc:	e619      	b.n	8005612 <_vfprintf_r+0x1292>
 80059de:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80059e0:	9328      	str	r3, [sp, #160]	; 0xa0
 80059e2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80059e4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80059e8:	7bd9      	ldrb	r1, [r3, #15]
 80059ea:	4291      	cmp	r1, r2
 80059ec:	462b      	mov	r3, r5
 80059ee:	d109      	bne.n	8005a04 <_vfprintf_r+0x1684>
 80059f0:	2030      	movs	r0, #48	; 0x30
 80059f2:	f803 0c01 	strb.w	r0, [r3, #-1]
 80059f6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80059f8:	1e5a      	subs	r2, r3, #1
 80059fa:	9228      	str	r2, [sp, #160]	; 0xa0
 80059fc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005a00:	4291      	cmp	r1, r2
 8005a02:	d0f6      	beq.n	80059f2 <_vfprintf_r+0x1672>
 8005a04:	2a39      	cmp	r2, #57	; 0x39
 8005a06:	bf0b      	itete	eq
 8005a08:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8005a0a:	3201      	addne	r2, #1
 8005a0c:	7a92      	ldrbeq	r2, [r2, #10]
 8005a0e:	b2d2      	uxtbne	r2, r2
 8005a10:	f803 2c01 	strb.w	r2, [r3, #-1]
 8005a14:	e682      	b.n	800571c <_vfprintf_r+0x139c>
 8005a16:	f418 7f00 	tst.w	r8, #512	; 0x200
 8005a1a:	f43f ad9f 	beq.w	800555c <_vfprintf_r+0x11dc>
 8005a1e:	9a05      	ldr	r2, [sp, #20]
 8005a20:	701a      	strb	r2, [r3, #0]
 8005a22:	4657      	mov	r7, sl
 8005a24:	f7fe bf52 	b.w	80048cc <_vfprintf_r+0x54c>
 8005a28:	aa2a      	add	r2, sp, #168	; 0xa8
 8005a2a:	9907      	ldr	r1, [sp, #28]
 8005a2c:	9803      	ldr	r0, [sp, #12]
 8005a2e:	f002 ffd5 	bl	80089dc <__sprint_r>
 8005a32:	2800      	cmp	r0, #0
 8005a34:	f47f aa1c 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8005a38:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005a3a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8005a3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005a42:	e571      	b.n	8005528 <_vfprintf_r+0x11a8>
 8005a44:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005a46:	2b00      	cmp	r3, #0
 8005a48:	f340 8164 	ble.w	8005d14 <_vfprintf_r+0x1994>
 8005a4c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005a4e:	f1b9 0f00 	cmp.w	r9, #0
 8005a52:	f040 8103 	bne.w	8005c5c <_vfprintf_r+0x18dc>
 8005a56:	07c6      	lsls	r6, r0, #31
 8005a58:	f100 8100 	bmi.w	8005c5c <_vfprintf_r+0x18dc>
 8005a5c:	9309      	str	r3, [sp, #36]	; 0x24
 8005a5e:	2666      	movs	r6, #102	; 0x66
 8005a60:	0543      	lsls	r3, r0, #21
 8005a62:	f100 8086 	bmi.w	8005b72 <_vfprintf_r+0x17f2>
 8005a66:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005a68:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005a6c:	9304      	str	r3, [sp, #16]
 8005a6e:	e79e      	b.n	80059ae <_vfprintf_r+0x162e>
 8005a70:	aa2a      	add	r2, sp, #168	; 0xa8
 8005a72:	9907      	ldr	r1, [sp, #28]
 8005a74:	9803      	ldr	r0, [sp, #12]
 8005a76:	f002 ffb1 	bl	80089dc <__sprint_r>
 8005a7a:	2800      	cmp	r0, #0
 8005a7c:	f47f a9f8 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8005a80:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005a82:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005a84:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005a86:	1ad3      	subs	r3, r2, r3
 8005a88:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005a8c:	f7ff bb90 	b.w	80051b0 <_vfprintf_r+0xe30>
 8005a90:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005a92:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8005a94:	4413      	add	r3, r2
 8005a96:	9309      	str	r3, [sp, #36]	; 0x24
 8005a98:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005a9a:	2b00      	cmp	r3, #0
 8005a9c:	f340 8149 	ble.w	8005d32 <_vfprintf_r+0x19b2>
 8005aa0:	2667      	movs	r6, #103	; 0x67
 8005aa2:	e7dd      	b.n	8005a60 <_vfprintf_r+0x16e0>
 8005aa4:	2330      	movs	r3, #48	; 0x30
 8005aa6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8005aaa:	2358      	movs	r3, #88	; 0x58
 8005aac:	e595      	b.n	80055da <_vfprintf_r+0x125a>
 8005aae:	9803      	ldr	r0, [sp, #12]
 8005ab0:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ab2:	4649      	mov	r1, r9
 8005ab4:	f002 ff92 	bl	80089dc <__sprint_r>
 8005ab8:	2800      	cmp	r0, #0
 8005aba:	f47f a9e0 	bne.w	8004e7e <_vfprintf_r+0xafe>
 8005abe:	f7fe bf0f 	b.w	80048e0 <_vfprintf_r+0x560>
 8005ac2:	a824      	add	r0, sp, #144	; 0x90
 8005ac4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005ac8:	f002 fe90 	bl	80087ec <frexp>
 8005acc:	2200      	movs	r2, #0
 8005ace:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8005ad2:	ec51 0b10 	vmov	r0, r1, d0
 8005ad6:	f7fb f88f 	bl	8000bf8 <__aeabi_dmul>
 8005ada:	2200      	movs	r2, #0
 8005adc:	2300      	movs	r3, #0
 8005ade:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8005ae2:	f7fb faf1 	bl	80010c8 <__aeabi_dcmpeq>
 8005ae6:	b108      	cbz	r0, 8005aec <_vfprintf_r+0x176c>
 8005ae8:	2301      	movs	r3, #1
 8005aea:	9324      	str	r3, [sp, #144]	; 0x90
 8005aec:	4b02      	ldr	r3, [pc, #8]	; (8005af8 <_vfprintf_r+0x1778>)
 8005aee:	9309      	str	r3, [sp, #36]	; 0x24
 8005af0:	e5ac      	b.n	800564c <_vfprintf_r+0x12cc>
 8005af2:	bf00      	nop
 8005af4:	0800a768 	.word	0x0800a768
 8005af8:	0800a724 	.word	0x0800a724
 8005afc:	425d      	negs	r5, r3
 8005afe:	3310      	adds	r3, #16
 8005b00:	4bb9      	ldr	r3, [pc, #740]	; (8005de8 <_vfprintf_r+0x1a68>)
 8005b02:	f280 8097 	bge.w	8005c34 <_vfprintf_r+0x18b4>
 8005b06:	4619      	mov	r1, r3
 8005b08:	2610      	movs	r6, #16
 8005b0a:	4623      	mov	r3, r4
 8005b0c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005b10:	460c      	mov	r4, r1
 8005b12:	e005      	b.n	8005b20 <_vfprintf_r+0x17a0>
 8005b14:	f10b 0b08 	add.w	fp, fp, #8
 8005b18:	3d10      	subs	r5, #16
 8005b1a:	2d10      	cmp	r5, #16
 8005b1c:	f340 8087 	ble.w	8005c2e <_vfprintf_r+0x18ae>
 8005b20:	3201      	adds	r2, #1
 8005b22:	3310      	adds	r3, #16
 8005b24:	2a07      	cmp	r2, #7
 8005b26:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8005b2a:	e9cb 4600 	strd	r4, r6, [fp]
 8005b2e:	ddf1      	ble.n	8005b14 <_vfprintf_r+0x1794>
 8005b30:	aa2a      	add	r2, sp, #168	; 0xa8
 8005b32:	9907      	ldr	r1, [sp, #28]
 8005b34:	4648      	mov	r0, r9
 8005b36:	f002 ff51 	bl	80089dc <__sprint_r>
 8005b3a:	2800      	cmp	r0, #0
 8005b3c:	f47f a998 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8005b40:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005b44:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005b48:	e7e6      	b.n	8005b18 <_vfprintf_r+0x1798>
 8005b4a:	f109 0101 	add.w	r1, r9, #1
 8005b4e:	9803      	ldr	r0, [sp, #12]
 8005b50:	f001 fe80 	bl	8007854 <_malloc_r>
 8005b54:	4607      	mov	r7, r0
 8005b56:	2800      	cmp	r0, #0
 8005b58:	f000 813b 	beq.w	8005dd2 <_vfprintf_r+0x1a52>
 8005b5c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8005b60:	930e      	str	r3, [sp, #56]	; 0x38
 8005b62:	f026 0320 	bic.w	r3, r6, #32
 8005b66:	9304      	str	r3, [sp, #16]
 8005b68:	46a0      	mov	r8, r4
 8005b6a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8005b6c:	900a      	str	r0, [sp, #40]	; 0x28
 8005b6e:	e547      	b.n	8005600 <_vfprintf_r+0x1280>
 8005b70:	2667      	movs	r6, #103	; 0x67
 8005b72:	981a      	ldr	r0, [sp, #104]	; 0x68
 8005b74:	2200      	movs	r2, #0
 8005b76:	920f      	str	r2, [sp, #60]	; 0x3c
 8005b78:	9214      	str	r2, [sp, #80]	; 0x50
 8005b7a:	7803      	ldrb	r3, [r0, #0]
 8005b7c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8005b7e:	2bff      	cmp	r3, #255	; 0xff
 8005b80:	d00c      	beq.n	8005b9c <_vfprintf_r+0x181c>
 8005b82:	4293      	cmp	r3, r2
 8005b84:	da0a      	bge.n	8005b9c <_vfprintf_r+0x181c>
 8005b86:	7841      	ldrb	r1, [r0, #1]
 8005b88:	1ad2      	subs	r2, r2, r3
 8005b8a:	b1a9      	cbz	r1, 8005bb8 <_vfprintf_r+0x1838>
 8005b8c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8005b8e:	3301      	adds	r3, #1
 8005b90:	9314      	str	r3, [sp, #80]	; 0x50
 8005b92:	460b      	mov	r3, r1
 8005b94:	2bff      	cmp	r3, #255	; 0xff
 8005b96:	f100 0001 	add.w	r0, r0, #1
 8005b9a:	d1f2      	bne.n	8005b82 <_vfprintf_r+0x1802>
 8005b9c:	9211      	str	r2, [sp, #68]	; 0x44
 8005b9e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8005ba0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005ba2:	9909      	ldr	r1, [sp, #36]	; 0x24
 8005ba4:	901a      	str	r0, [sp, #104]	; 0x68
 8005ba6:	4413      	add	r3, r2
 8005ba8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8005baa:	fb02 1303 	mla	r3, r2, r3, r1
 8005bae:	9309      	str	r3, [sp, #36]	; 0x24
 8005bb0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005bb4:	9304      	str	r3, [sp, #16]
 8005bb6:	e485      	b.n	80054c4 <_vfprintf_r+0x1144>
 8005bb8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8005bba:	3101      	adds	r1, #1
 8005bbc:	910f      	str	r1, [sp, #60]	; 0x3c
 8005bbe:	e7de      	b.n	8005b7e <_vfprintf_r+0x17fe>
 8005bc0:	aa28      	add	r2, sp, #160	; 0xa0
 8005bc2:	ab25      	add	r3, sp, #148	; 0x94
 8005bc4:	e9cd 3200 	strd	r3, r2, [sp]
 8005bc8:	2103      	movs	r1, #3
 8005bca:	ab24      	add	r3, sp, #144	; 0x90
 8005bcc:	464a      	mov	r2, r9
 8005bce:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005bd2:	9803      	ldr	r0, [sp, #12]
 8005bd4:	f000 fa5c 	bl	8006090 <_dtoa_r>
 8005bd8:	464d      	mov	r5, r9
 8005bda:	4607      	mov	r7, r0
 8005bdc:	eb00 0409 	add.w	r4, r0, r9
 8005be0:	783b      	ldrb	r3, [r7, #0]
 8005be2:	2b30      	cmp	r3, #48	; 0x30
 8005be4:	f000 80be 	beq.w	8005d64 <_vfprintf_r+0x19e4>
 8005be8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8005bea:	442c      	add	r4, r5
 8005bec:	2200      	movs	r2, #0
 8005bee:	2300      	movs	r3, #0
 8005bf0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8005bf4:	f7fb fa68 	bl	80010c8 <__aeabi_dcmpeq>
 8005bf8:	b108      	cbz	r0, 8005bfe <_vfprintf_r+0x187e>
 8005bfa:	4623      	mov	r3, r4
 8005bfc:	e413      	b.n	8005426 <_vfprintf_r+0x10a6>
 8005bfe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005c00:	42a3      	cmp	r3, r4
 8005c02:	f4bf ac10 	bcs.w	8005426 <_vfprintf_r+0x10a6>
 8005c06:	2130      	movs	r1, #48	; 0x30
 8005c08:	1c5a      	adds	r2, r3, #1
 8005c0a:	9228      	str	r2, [sp, #160]	; 0xa0
 8005c0c:	7019      	strb	r1, [r3, #0]
 8005c0e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005c10:	429c      	cmp	r4, r3
 8005c12:	d8f9      	bhi.n	8005c08 <_vfprintf_r+0x1888>
 8005c14:	e407      	b.n	8005426 <_vfprintf_r+0x10a6>
 8005c16:	197c      	adds	r4, r7, r5
 8005c18:	e7e8      	b.n	8005bec <_vfprintf_r+0x186c>
 8005c1a:	f1b9 0f00 	cmp.w	r9, #0
 8005c1e:	f000 8092 	beq.w	8005d46 <_vfprintf_r+0x19c6>
 8005c22:	900a      	str	r0, [sp, #40]	; 0x28
 8005c24:	e4ec      	b.n	8005600 <_vfprintf_r+0x1280>
 8005c26:	900a      	str	r0, [sp, #40]	; 0x28
 8005c28:	f04f 0906 	mov.w	r9, #6
 8005c2c:	e4e8      	b.n	8005600 <_vfprintf_r+0x1280>
 8005c2e:	4621      	mov	r1, r4
 8005c30:	461c      	mov	r4, r3
 8005c32:	460b      	mov	r3, r1
 8005c34:	3201      	adds	r2, #1
 8005c36:	442c      	add	r4, r5
 8005c38:	2a07      	cmp	r2, #7
 8005c3a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005c3e:	e9cb 3500 	strd	r3, r5, [fp]
 8005c42:	f300 80a9 	bgt.w	8005d98 <_vfprintf_r+0x1a18>
 8005c46:	f10b 0b08 	add.w	fp, fp, #8
 8005c4a:	e470      	b.n	800552e <_vfprintf_r+0x11ae>
 8005c4c:	469a      	mov	sl, r3
 8005c4e:	f7ff bb37 	b.w	80052c0 <_vfprintf_r+0xf40>
 8005c52:	2301      	movs	r3, #1
 8005c54:	9324      	str	r3, [sp, #144]	; 0x90
 8005c56:	4b65      	ldr	r3, [pc, #404]	; (8005dec <_vfprintf_r+0x1a6c>)
 8005c58:	9309      	str	r3, [sp, #36]	; 0x24
 8005c5a:	e4f7      	b.n	800564c <_vfprintf_r+0x12cc>
 8005c5c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8005c5e:	4413      	add	r3, r2
 8005c60:	444b      	add	r3, r9
 8005c62:	9309      	str	r3, [sp, #36]	; 0x24
 8005c64:	2666      	movs	r6, #102	; 0x66
 8005c66:	e6fb      	b.n	8005a60 <_vfprintf_r+0x16e0>
 8005c68:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005c6a:	9309      	str	r3, [sp, #36]	; 0x24
 8005c6c:	e694      	b.n	8005998 <_vfprintf_r+0x1618>
 8005c6e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8005c72:	4664      	mov	r4, ip
 8005c74:	4d5e      	ldr	r5, [pc, #376]	; (8005df0 <_vfprintf_r+0x1a70>)
 8005c76:	e000      	b.n	8005c7a <_vfprintf_r+0x18fa>
 8005c78:	4614      	mov	r4, r2
 8005c7a:	fba5 1203 	umull	r1, r2, r5, r3
 8005c7e:	08d2      	lsrs	r2, r2, #3
 8005c80:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8005c84:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8005c88:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8005c8c:	4613      	mov	r3, r2
 8005c8e:	2b09      	cmp	r3, #9
 8005c90:	f804 1c01 	strb.w	r1, [r4, #-1]
 8005c94:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005c98:	dcee      	bgt.n	8005c78 <_vfprintf_r+0x18f8>
 8005c9a:	3330      	adds	r3, #48	; 0x30
 8005c9c:	3c02      	subs	r4, #2
 8005c9e:	b2db      	uxtb	r3, r3
 8005ca0:	45a4      	cmp	ip, r4
 8005ca2:	f802 3c01 	strb.w	r3, [r2, #-1]
 8005ca6:	f240 8090 	bls.w	8005dca <_vfprintf_r+0x1a4a>
 8005caa:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8005cae:	4611      	mov	r1, r2
 8005cb0:	e001      	b.n	8005cb6 <_vfprintf_r+0x1936>
 8005cb2:	f811 3b01 	ldrb.w	r3, [r1], #1
 8005cb6:	f804 3b01 	strb.w	r3, [r4], #1
 8005cba:	458c      	cmp	ip, r1
 8005cbc:	d1f9      	bne.n	8005cb2 <_vfprintf_r+0x1932>
 8005cbe:	ab2a      	add	r3, sp, #168	; 0xa8
 8005cc0:	1a9b      	subs	r3, r3, r2
 8005cc2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8005cc6:	4413      	add	r3, r2
 8005cc8:	f7ff bbe3 	b.w	8005492 <_vfprintf_r+0x1112>
 8005ccc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8005cce:	4f49      	ldr	r7, [pc, #292]	; (8005df4 <_vfprintf_r+0x1a74>)
 8005cd0:	2b00      	cmp	r3, #0
 8005cd2:	bfb6      	itet	lt
 8005cd4:	222d      	movlt	r2, #45	; 0x2d
 8005cd6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8005cda:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8005cde:	4b46      	ldr	r3, [pc, #280]	; (8005df8 <_vfprintf_r+0x1a78>)
 8005ce0:	f7fe bf02 	b.w	8004ae8 <_vfprintf_r+0x768>
 8005ce4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005ce8:	f7ff b8c9 	b.w	8004e7e <_vfprintf_r+0xafe>
 8005cec:	aa28      	add	r2, sp, #160	; 0xa0
 8005cee:	ab25      	add	r3, sp, #148	; 0x94
 8005cf0:	e9cd 3200 	strd	r3, r2, [sp]
 8005cf4:	2103      	movs	r1, #3
 8005cf6:	ab24      	add	r3, sp, #144	; 0x90
 8005cf8:	464a      	mov	r2, r9
 8005cfa:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005cfe:	9803      	ldr	r0, [sp, #12]
 8005d00:	f000 f9c6 	bl	8006090 <_dtoa_r>
 8005d04:	464d      	mov	r5, r9
 8005d06:	4607      	mov	r7, r0
 8005d08:	2e46      	cmp	r6, #70	; 0x46
 8005d0a:	eb07 0405 	add.w	r4, r7, r5
 8005d0e:	f43f af67 	beq.w	8005be0 <_vfprintf_r+0x1860>
 8005d12:	e76b      	b.n	8005bec <_vfprintf_r+0x186c>
 8005d14:	f1b9 0f00 	cmp.w	r9, #0
 8005d18:	d131      	bne.n	8005d7e <_vfprintf_r+0x19fe>
 8005d1a:	07c5      	lsls	r5, r0, #31
 8005d1c:	d42f      	bmi.n	8005d7e <_vfprintf_r+0x19fe>
 8005d1e:	2301      	movs	r3, #1
 8005d20:	9304      	str	r3, [sp, #16]
 8005d22:	9309      	str	r3, [sp, #36]	; 0x24
 8005d24:	2666      	movs	r6, #102	; 0x66
 8005d26:	e642      	b.n	80059ae <_vfprintf_r+0x162e>
 8005d28:	07c3      	lsls	r3, r0, #31
 8005d2a:	f57f abbf 	bpl.w	80054ac <_vfprintf_r+0x112c>
 8005d2e:	f7ff bbb9 	b.w	80054a4 <_vfprintf_r+0x1124>
 8005d32:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005d34:	f1c3 0301 	rsb	r3, r3, #1
 8005d38:	441a      	add	r2, r3
 8005d3a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8005d3e:	9209      	str	r2, [sp, #36]	; 0x24
 8005d40:	9304      	str	r3, [sp, #16]
 8005d42:	2667      	movs	r6, #103	; 0x67
 8005d44:	e633      	b.n	80059ae <_vfprintf_r+0x162e>
 8005d46:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8005d4a:	f04f 0901 	mov.w	r9, #1
 8005d4e:	e457      	b.n	8005600 <_vfprintf_r+0x1280>
 8005d50:	465a      	mov	r2, fp
 8005d52:	e511      	b.n	8005778 <_vfprintf_r+0x13f8>
 8005d54:	2e47      	cmp	r6, #71	; 0x47
 8005d56:	f47f af5e 	bne.w	8005c16 <_vfprintf_r+0x1896>
 8005d5a:	f018 0f01 	tst.w	r8, #1
 8005d5e:	f43f ab61 	beq.w	8005424 <_vfprintf_r+0x10a4>
 8005d62:	e7d1      	b.n	8005d08 <_vfprintf_r+0x1988>
 8005d64:	2200      	movs	r2, #0
 8005d66:	2300      	movs	r3, #0
 8005d68:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8005d6c:	f7fb f9ac 	bl	80010c8 <__aeabi_dcmpeq>
 8005d70:	2800      	cmp	r0, #0
 8005d72:	f47f af39 	bne.w	8005be8 <_vfprintf_r+0x1868>
 8005d76:	f1c5 0501 	rsb	r5, r5, #1
 8005d7a:	9524      	str	r5, [sp, #144]	; 0x90
 8005d7c:	e735      	b.n	8005bea <_vfprintf_r+0x186a>
 8005d7e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8005d80:	3301      	adds	r3, #1
 8005d82:	444b      	add	r3, r9
 8005d84:	9309      	str	r3, [sp, #36]	; 0x24
 8005d86:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005d8a:	9304      	str	r3, [sp, #16]
 8005d8c:	2666      	movs	r6, #102	; 0x66
 8005d8e:	e60e      	b.n	80059ae <_vfprintf_r+0x162e>
 8005d90:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8005d94:	f7ff bb7a 	b.w	800548c <_vfprintf_r+0x110c>
 8005d98:	aa2a      	add	r2, sp, #168	; 0xa8
 8005d9a:	9907      	ldr	r1, [sp, #28]
 8005d9c:	9803      	ldr	r0, [sp, #12]
 8005d9e:	f002 fe1d 	bl	80089dc <__sprint_r>
 8005da2:	2800      	cmp	r0, #0
 8005da4:	f47f a864 	bne.w	8004e70 <_vfprintf_r+0xaf0>
 8005da8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8005dac:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005db0:	f7ff bbbd 	b.w	800552e <_vfprintf_r+0x11ae>
 8005db4:	9908      	ldr	r1, [sp, #32]
 8005db6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8005dba:	680b      	ldr	r3, [r1, #0]
 8005dbc:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8005dc0:	1d0b      	adds	r3, r1, #4
 8005dc2:	4692      	mov	sl, r2
 8005dc4:	9308      	str	r3, [sp, #32]
 8005dc6:	f7fe bb59 	b.w	800447c <_vfprintf_r+0xfc>
 8005dca:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8005dce:	f7ff bb60 	b.w	8005492 <_vfprintf_r+0x1112>
 8005dd2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005dd6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005dda:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005dde:	f8a9 300c 	strh.w	r3, [r9, #12]
 8005de2:	f7ff b84c 	b.w	8004e7e <_vfprintf_r+0xafe>
 8005de6:	bf00      	nop
 8005de8:	0800a768 	.word	0x0800a768
 8005dec:	0800a738 	.word	0x0800a738
 8005df0:	cccccccd 	.word	0xcccccccd
 8005df4:	0800a720 	.word	0x0800a720
 8005df8:	0800a71c 	.word	0x0800a71c

08005dfc <__sbprintf>:
 8005dfc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005e00:	460c      	mov	r4, r1
 8005e02:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8005e06:	8989      	ldrh	r1, [r1, #12]
 8005e08:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8005e0a:	89e5      	ldrh	r5, [r4, #14]
 8005e0c:	9619      	str	r6, [sp, #100]	; 0x64
 8005e0e:	f021 0102 	bic.w	r1, r1, #2
 8005e12:	4606      	mov	r6, r0
 8005e14:	69e0      	ldr	r0, [r4, #28]
 8005e16:	f8ad 100c 	strh.w	r1, [sp, #12]
 8005e1a:	4617      	mov	r7, r2
 8005e1c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8005e20:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8005e22:	f8ad 500e 	strh.w	r5, [sp, #14]
 8005e26:	4698      	mov	r8, r3
 8005e28:	ad1a      	add	r5, sp, #104	; 0x68
 8005e2a:	2300      	movs	r3, #0
 8005e2c:	9007      	str	r0, [sp, #28]
 8005e2e:	a816      	add	r0, sp, #88	; 0x58
 8005e30:	9209      	str	r2, [sp, #36]	; 0x24
 8005e32:	9306      	str	r3, [sp, #24]
 8005e34:	9500      	str	r5, [sp, #0]
 8005e36:	9504      	str	r5, [sp, #16]
 8005e38:	9102      	str	r1, [sp, #8]
 8005e3a:	9105      	str	r1, [sp, #20]
 8005e3c:	f001 fc8a 	bl	8007754 <__retarget_lock_init_recursive>
 8005e40:	4643      	mov	r3, r8
 8005e42:	463a      	mov	r2, r7
 8005e44:	4669      	mov	r1, sp
 8005e46:	4630      	mov	r0, r6
 8005e48:	f7fe fa9a 	bl	8004380 <_vfprintf_r>
 8005e4c:	1e05      	subs	r5, r0, #0
 8005e4e:	db07      	blt.n	8005e60 <__sbprintf+0x64>
 8005e50:	4630      	mov	r0, r6
 8005e52:	4669      	mov	r1, sp
 8005e54:	f001 f8d6 	bl	8007004 <_fflush_r>
 8005e58:	2800      	cmp	r0, #0
 8005e5a:	bf18      	it	ne
 8005e5c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8005e60:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8005e64:	065b      	lsls	r3, r3, #25
 8005e66:	d503      	bpl.n	8005e70 <__sbprintf+0x74>
 8005e68:	89a3      	ldrh	r3, [r4, #12]
 8005e6a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005e6e:	81a3      	strh	r3, [r4, #12]
 8005e70:	9816      	ldr	r0, [sp, #88]	; 0x58
 8005e72:	f001 fc71 	bl	8007758 <__retarget_lock_close_recursive>
 8005e76:	4628      	mov	r0, r5
 8005e78:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8005e7c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08005e80 <__swsetup_r>:
 8005e80:	b538      	push	{r3, r4, r5, lr}
 8005e82:	4b31      	ldr	r3, [pc, #196]	; (8005f48 <__swsetup_r+0xc8>)
 8005e84:	681b      	ldr	r3, [r3, #0]
 8005e86:	4605      	mov	r5, r0
 8005e88:	460c      	mov	r4, r1
 8005e8a:	b113      	cbz	r3, 8005e92 <__swsetup_r+0x12>
 8005e8c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8005e8e:	2a00      	cmp	r2, #0
 8005e90:	d03a      	beq.n	8005f08 <__swsetup_r+0x88>
 8005e92:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005e96:	b293      	uxth	r3, r2
 8005e98:	0718      	lsls	r0, r3, #28
 8005e9a:	d50c      	bpl.n	8005eb6 <__swsetup_r+0x36>
 8005e9c:	6920      	ldr	r0, [r4, #16]
 8005e9e:	b1a8      	cbz	r0, 8005ecc <__swsetup_r+0x4c>
 8005ea0:	f013 0201 	ands.w	r2, r3, #1
 8005ea4:	d020      	beq.n	8005ee8 <__swsetup_r+0x68>
 8005ea6:	6963      	ldr	r3, [r4, #20]
 8005ea8:	2200      	movs	r2, #0
 8005eaa:	425b      	negs	r3, r3
 8005eac:	61a3      	str	r3, [r4, #24]
 8005eae:	60a2      	str	r2, [r4, #8]
 8005eb0:	b300      	cbz	r0, 8005ef4 <__swsetup_r+0x74>
 8005eb2:	2000      	movs	r0, #0
 8005eb4:	bd38      	pop	{r3, r4, r5, pc}
 8005eb6:	06d9      	lsls	r1, r3, #27
 8005eb8:	d53e      	bpl.n	8005f38 <__swsetup_r+0xb8>
 8005eba:	0758      	lsls	r0, r3, #29
 8005ebc:	d428      	bmi.n	8005f10 <__swsetup_r+0x90>
 8005ebe:	6920      	ldr	r0, [r4, #16]
 8005ec0:	f042 0308 	orr.w	r3, r2, #8
 8005ec4:	81a3      	strh	r3, [r4, #12]
 8005ec6:	b29b      	uxth	r3, r3
 8005ec8:	2800      	cmp	r0, #0
 8005eca:	d1e9      	bne.n	8005ea0 <__swsetup_r+0x20>
 8005ecc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8005ed0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8005ed4:	d0e4      	beq.n	8005ea0 <__swsetup_r+0x20>
 8005ed6:	4628      	mov	r0, r5
 8005ed8:	4621      	mov	r1, r4
 8005eda:	f001 fc71 	bl	80077c0 <__smakebuf_r>
 8005ede:	89a3      	ldrh	r3, [r4, #12]
 8005ee0:	6920      	ldr	r0, [r4, #16]
 8005ee2:	f013 0201 	ands.w	r2, r3, #1
 8005ee6:	d1de      	bne.n	8005ea6 <__swsetup_r+0x26>
 8005ee8:	0799      	lsls	r1, r3, #30
 8005eea:	bf58      	it	pl
 8005eec:	6962      	ldrpl	r2, [r4, #20]
 8005eee:	60a2      	str	r2, [r4, #8]
 8005ef0:	2800      	cmp	r0, #0
 8005ef2:	d1de      	bne.n	8005eb2 <__swsetup_r+0x32>
 8005ef4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ef8:	061a      	lsls	r2, r3, #24
 8005efa:	d5db      	bpl.n	8005eb4 <__swsetup_r+0x34>
 8005efc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005f00:	81a3      	strh	r3, [r4, #12]
 8005f02:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005f06:	bd38      	pop	{r3, r4, r5, pc}
 8005f08:	4618      	mov	r0, r3
 8005f0a:	f001 f8d7 	bl	80070bc <__sinit>
 8005f0e:	e7c0      	b.n	8005e92 <__swsetup_r+0x12>
 8005f10:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005f12:	b151      	cbz	r1, 8005f2a <__swsetup_r+0xaa>
 8005f14:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005f18:	4299      	cmp	r1, r3
 8005f1a:	d004      	beq.n	8005f26 <__swsetup_r+0xa6>
 8005f1c:	4628      	mov	r0, r5
 8005f1e:	f001 f96f 	bl	8007200 <_free_r>
 8005f22:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005f26:	2300      	movs	r3, #0
 8005f28:	6323      	str	r3, [r4, #48]	; 0x30
 8005f2a:	2300      	movs	r3, #0
 8005f2c:	6920      	ldr	r0, [r4, #16]
 8005f2e:	6063      	str	r3, [r4, #4]
 8005f30:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8005f34:	6020      	str	r0, [r4, #0]
 8005f36:	e7c3      	b.n	8005ec0 <__swsetup_r+0x40>
 8005f38:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005f3c:	2309      	movs	r3, #9
 8005f3e:	602b      	str	r3, [r5, #0]
 8005f40:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005f44:	81a2      	strh	r2, [r4, #12]
 8005f46:	bd38      	pop	{r3, r4, r5, pc}
 8005f48:	20000020 	.word	0x20000020

08005f4c <register_fini>:
 8005f4c:	4b02      	ldr	r3, [pc, #8]	; (8005f58 <register_fini+0xc>)
 8005f4e:	b113      	cbz	r3, 8005f56 <register_fini+0xa>
 8005f50:	4802      	ldr	r0, [pc, #8]	; (8005f5c <register_fini+0x10>)
 8005f52:	f000 b805 	b.w	8005f60 <atexit>
 8005f56:	4770      	bx	lr
 8005f58:	00000000 	.word	0x00000000
 8005f5c:	0800712d 	.word	0x0800712d

08005f60 <atexit>:
 8005f60:	2300      	movs	r3, #0
 8005f62:	4601      	mov	r1, r0
 8005f64:	461a      	mov	r2, r3
 8005f66:	4618      	mov	r0, r3
 8005f68:	f002 bd58 	b.w	8008a1c <__register_exitproc>

08005f6c <quorem>:
 8005f6c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f70:	6903      	ldr	r3, [r0, #16]
 8005f72:	690f      	ldr	r7, [r1, #16]
 8005f74:	42bb      	cmp	r3, r7
 8005f76:	b083      	sub	sp, #12
 8005f78:	f2c0 8086 	blt.w	8006088 <quorem+0x11c>
 8005f7c:	3f01      	subs	r7, #1
 8005f7e:	f101 0914 	add.w	r9, r1, #20
 8005f82:	f100 0a14 	add.w	sl, r0, #20
 8005f86:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8005f8a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8005f8e:	00bc      	lsls	r4, r7, #2
 8005f90:	3201      	adds	r2, #1
 8005f92:	fbb3 f8f2 	udiv	r8, r3, r2
 8005f96:	eb0a 0304 	add.w	r3, sl, r4
 8005f9a:	9400      	str	r4, [sp, #0]
 8005f9c:	eb09 0b04 	add.w	fp, r9, r4
 8005fa0:	9301      	str	r3, [sp, #4]
 8005fa2:	f1b8 0f00 	cmp.w	r8, #0
 8005fa6:	d038      	beq.n	800601a <quorem+0xae>
 8005fa8:	2500      	movs	r5, #0
 8005faa:	462e      	mov	r6, r5
 8005fac:	46ce      	mov	lr, r9
 8005fae:	46d4      	mov	ip, sl
 8005fb0:	f85e 4b04 	ldr.w	r4, [lr], #4
 8005fb4:	f8dc 3000 	ldr.w	r3, [ip]
 8005fb8:	b2a2      	uxth	r2, r4
 8005fba:	fb08 5502 	mla	r5, r8, r2, r5
 8005fbe:	0c22      	lsrs	r2, r4, #16
 8005fc0:	0c2c      	lsrs	r4, r5, #16
 8005fc2:	fb08 4202 	mla	r2, r8, r2, r4
 8005fc6:	b2ad      	uxth	r5, r5
 8005fc8:	1b75      	subs	r5, r6, r5
 8005fca:	b296      	uxth	r6, r2
 8005fcc:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8005fd0:	fa15 f383 	uxtah	r3, r5, r3
 8005fd4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8005fd8:	b29b      	uxth	r3, r3
 8005fda:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8005fde:	45f3      	cmp	fp, lr
 8005fe0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8005fe4:	f84c 3b04 	str.w	r3, [ip], #4
 8005fe8:	ea4f 4626 	mov.w	r6, r6, asr #16
 8005fec:	d2e0      	bcs.n	8005fb0 <quorem+0x44>
 8005fee:	9b00      	ldr	r3, [sp, #0]
 8005ff0:	f85a 3003 	ldr.w	r3, [sl, r3]
 8005ff4:	b98b      	cbnz	r3, 800601a <quorem+0xae>
 8005ff6:	9a01      	ldr	r2, [sp, #4]
 8005ff8:	1f13      	subs	r3, r2, #4
 8005ffa:	459a      	cmp	sl, r3
 8005ffc:	d20c      	bcs.n	8006018 <quorem+0xac>
 8005ffe:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8006002:	b94b      	cbnz	r3, 8006018 <quorem+0xac>
 8006004:	f1a2 0308 	sub.w	r3, r2, #8
 8006008:	e002      	b.n	8006010 <quorem+0xa4>
 800600a:	681a      	ldr	r2, [r3, #0]
 800600c:	3b04      	subs	r3, #4
 800600e:	b91a      	cbnz	r2, 8006018 <quorem+0xac>
 8006010:	459a      	cmp	sl, r3
 8006012:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8006016:	d3f8      	bcc.n	800600a <quorem+0x9e>
 8006018:	6107      	str	r7, [r0, #16]
 800601a:	4604      	mov	r4, r0
 800601c:	f002 f944 	bl	80082a8 <__mcmp>
 8006020:	2800      	cmp	r0, #0
 8006022:	db2d      	blt.n	8006080 <quorem+0x114>
 8006024:	f108 0801 	add.w	r8, r8, #1
 8006028:	4655      	mov	r5, sl
 800602a:	2300      	movs	r3, #0
 800602c:	f859 1b04 	ldr.w	r1, [r9], #4
 8006030:	6828      	ldr	r0, [r5, #0]
 8006032:	b28a      	uxth	r2, r1
 8006034:	1a9a      	subs	r2, r3, r2
 8006036:	0c0b      	lsrs	r3, r1, #16
 8006038:	fa12 f280 	uxtah	r2, r2, r0
 800603c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8006040:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006044:	b292      	uxth	r2, r2
 8006046:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800604a:	45cb      	cmp	fp, r9
 800604c:	f845 2b04 	str.w	r2, [r5], #4
 8006050:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006054:	d2ea      	bcs.n	800602c <quorem+0xc0>
 8006056:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800605a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800605e:	b97a      	cbnz	r2, 8006080 <quorem+0x114>
 8006060:	1f1a      	subs	r2, r3, #4
 8006062:	4592      	cmp	sl, r2
 8006064:	d20b      	bcs.n	800607e <quorem+0x112>
 8006066:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800606a:	b942      	cbnz	r2, 800607e <quorem+0x112>
 800606c:	3b08      	subs	r3, #8
 800606e:	e002      	b.n	8006076 <quorem+0x10a>
 8006070:	681a      	ldr	r2, [r3, #0]
 8006072:	3b04      	subs	r3, #4
 8006074:	b91a      	cbnz	r2, 800607e <quorem+0x112>
 8006076:	459a      	cmp	sl, r3
 8006078:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800607c:	d3f8      	bcc.n	8006070 <quorem+0x104>
 800607e:	6127      	str	r7, [r4, #16]
 8006080:	4640      	mov	r0, r8
 8006082:	b003      	add	sp, #12
 8006084:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006088:	2000      	movs	r0, #0
 800608a:	b003      	add	sp, #12
 800608c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08006090 <_dtoa_r>:
 8006090:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006094:	ec55 4b10 	vmov	r4, r5, d0
 8006098:	b09b      	sub	sp, #108	; 0x6c
 800609a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800609c:	9102      	str	r1, [sp, #8]
 800609e:	4681      	mov	r9, r0
 80060a0:	9207      	str	r2, [sp, #28]
 80060a2:	9305      	str	r3, [sp, #20]
 80060a4:	e9cd 4500 	strd	r4, r5, [sp]
 80060a8:	b156      	cbz	r6, 80060c0 <_dtoa_r+0x30>
 80060aa:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80060ac:	6072      	str	r2, [r6, #4]
 80060ae:	2301      	movs	r3, #1
 80060b0:	4093      	lsls	r3, r2
 80060b2:	60b3      	str	r3, [r6, #8]
 80060b4:	4631      	mov	r1, r6
 80060b6:	f001 ff07 	bl	8007ec8 <_Bfree>
 80060ba:	2300      	movs	r3, #0
 80060bc:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80060c0:	f1b5 0800 	subs.w	r8, r5, #0
 80060c4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80060c6:	bfb4      	ite	lt
 80060c8:	2301      	movlt	r3, #1
 80060ca:	2300      	movge	r3, #0
 80060cc:	6013      	str	r3, [r2, #0]
 80060ce:	4b76      	ldr	r3, [pc, #472]	; (80062a8 <_dtoa_r+0x218>)
 80060d0:	bfbc      	itt	lt
 80060d2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80060d6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80060da:	ea33 0308 	bics.w	r3, r3, r8
 80060de:	f000 80a6 	beq.w	800622e <_dtoa_r+0x19e>
 80060e2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80060e6:	2200      	movs	r2, #0
 80060e8:	2300      	movs	r3, #0
 80060ea:	4630      	mov	r0, r6
 80060ec:	4639      	mov	r1, r7
 80060ee:	f7fa ffeb 	bl	80010c8 <__aeabi_dcmpeq>
 80060f2:	4605      	mov	r5, r0
 80060f4:	b178      	cbz	r0, 8006116 <_dtoa_r+0x86>
 80060f6:	9a05      	ldr	r2, [sp, #20]
 80060f8:	2301      	movs	r3, #1
 80060fa:	6013      	str	r3, [r2, #0]
 80060fc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80060fe:	2b00      	cmp	r3, #0
 8006100:	f000 80c0 	beq.w	8006284 <_dtoa_r+0x1f4>
 8006104:	4b69      	ldr	r3, [pc, #420]	; (80062ac <_dtoa_r+0x21c>)
 8006106:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8006108:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800610c:	6013      	str	r3, [r2, #0]
 800610e:	4658      	mov	r0, fp
 8006110:	b01b      	add	sp, #108	; 0x6c
 8006112:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006116:	aa18      	add	r2, sp, #96	; 0x60
 8006118:	a919      	add	r1, sp, #100	; 0x64
 800611a:	ec47 6b10 	vmov	d0, r6, r7
 800611e:	4648      	mov	r0, r9
 8006120:	f002 f954 	bl	80083cc <__d2b>
 8006124:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8006128:	4682      	mov	sl, r0
 800612a:	f040 80a0 	bne.w	800626e <_dtoa_r+0x1de>
 800612e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8006132:	442c      	add	r4, r5
 8006134:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8006138:	2b20      	cmp	r3, #32
 800613a:	f340 842c 	ble.w	8006996 <_dtoa_r+0x906>
 800613e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8006142:	fa08 f803 	lsl.w	r8, r8, r3
 8006146:	9b00      	ldr	r3, [sp, #0]
 8006148:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800614c:	fa23 f000 	lsr.w	r0, r3, r0
 8006150:	ea48 0000 	orr.w	r0, r8, r0
 8006154:	f7fa fcd6 	bl	8000b04 <__aeabi_ui2d>
 8006158:	2301      	movs	r3, #1
 800615a:	4606      	mov	r6, r0
 800615c:	3c01      	subs	r4, #1
 800615e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8006162:	930f      	str	r3, [sp, #60]	; 0x3c
 8006164:	4630      	mov	r0, r6
 8006166:	4639      	mov	r1, r7
 8006168:	2200      	movs	r2, #0
 800616a:	4b51      	ldr	r3, [pc, #324]	; (80062b0 <_dtoa_r+0x220>)
 800616c:	f7fa fb8c 	bl	8000888 <__aeabi_dsub>
 8006170:	a347      	add	r3, pc, #284	; (adr r3, 8006290 <_dtoa_r+0x200>)
 8006172:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006176:	f7fa fd3f 	bl	8000bf8 <__aeabi_dmul>
 800617a:	a347      	add	r3, pc, #284	; (adr r3, 8006298 <_dtoa_r+0x208>)
 800617c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006180:	f7fa fb84 	bl	800088c <__adddf3>
 8006184:	4606      	mov	r6, r0
 8006186:	4620      	mov	r0, r4
 8006188:	460f      	mov	r7, r1
 800618a:	f7fa fccb 	bl	8000b24 <__aeabi_i2d>
 800618e:	a344      	add	r3, pc, #272	; (adr r3, 80062a0 <_dtoa_r+0x210>)
 8006190:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006194:	f7fa fd30 	bl	8000bf8 <__aeabi_dmul>
 8006198:	4602      	mov	r2, r0
 800619a:	460b      	mov	r3, r1
 800619c:	4630      	mov	r0, r6
 800619e:	4639      	mov	r1, r7
 80061a0:	f7fa fb74 	bl	800088c <__adddf3>
 80061a4:	4606      	mov	r6, r0
 80061a6:	460f      	mov	r7, r1
 80061a8:	f7fa ffd6 	bl	8001158 <__aeabi_d2iz>
 80061ac:	2200      	movs	r2, #0
 80061ae:	9006      	str	r0, [sp, #24]
 80061b0:	2300      	movs	r3, #0
 80061b2:	4630      	mov	r0, r6
 80061b4:	4639      	mov	r1, r7
 80061b6:	f7fa ff91 	bl	80010dc <__aeabi_dcmplt>
 80061ba:	2800      	cmp	r0, #0
 80061bc:	f040 8273 	bne.w	80066a6 <_dtoa_r+0x616>
 80061c0:	9e06      	ldr	r6, [sp, #24]
 80061c2:	2e16      	cmp	r6, #22
 80061c4:	f200 825d 	bhi.w	8006682 <_dtoa_r+0x5f2>
 80061c8:	4b3a      	ldr	r3, [pc, #232]	; (80062b4 <_dtoa_r+0x224>)
 80061ca:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80061ce:	e9d3 0100 	ldrd	r0, r1, [r3]
 80061d2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80061d6:	f7fa ff9f 	bl	8001118 <__aeabi_dcmpgt>
 80061da:	2800      	cmp	r0, #0
 80061dc:	f000 83d7 	beq.w	800698e <_dtoa_r+0x8fe>
 80061e0:	1e73      	subs	r3, r6, #1
 80061e2:	9306      	str	r3, [sp, #24]
 80061e4:	2300      	movs	r3, #0
 80061e6:	930d      	str	r3, [sp, #52]	; 0x34
 80061e8:	1b2c      	subs	r4, r5, r4
 80061ea:	f1b4 0801 	subs.w	r8, r4, #1
 80061ee:	f100 8254 	bmi.w	800669a <_dtoa_r+0x60a>
 80061f2:	2300      	movs	r3, #0
 80061f4:	9308      	str	r3, [sp, #32]
 80061f6:	9b06      	ldr	r3, [sp, #24]
 80061f8:	2b00      	cmp	r3, #0
 80061fa:	f2c0 8245 	blt.w	8006688 <_dtoa_r+0x5f8>
 80061fe:	4498      	add	r8, r3
 8006200:	930c      	str	r3, [sp, #48]	; 0x30
 8006202:	2300      	movs	r3, #0
 8006204:	930b      	str	r3, [sp, #44]	; 0x2c
 8006206:	9b02      	ldr	r3, [sp, #8]
 8006208:	2b09      	cmp	r3, #9
 800620a:	d85b      	bhi.n	80062c4 <_dtoa_r+0x234>
 800620c:	2b05      	cmp	r3, #5
 800620e:	f340 83c0 	ble.w	8006992 <_dtoa_r+0x902>
 8006212:	3b04      	subs	r3, #4
 8006214:	9302      	str	r3, [sp, #8]
 8006216:	2500      	movs	r5, #0
 8006218:	9b02      	ldr	r3, [sp, #8]
 800621a:	3b02      	subs	r3, #2
 800621c:	2b03      	cmp	r3, #3
 800621e:	f200 8498 	bhi.w	8006b52 <_dtoa_r+0xac2>
 8006222:	e8df f013 	tbh	[pc, r3, lsl #1]
 8006226:	03df      	.short	0x03df
 8006228:	03e803bf 	.word	0x03e803bf
 800622c:	04f5      	.short	0x04f5
 800622e:	9a05      	ldr	r2, [sp, #20]
 8006230:	f242 730f 	movw	r3, #9999	; 0x270f
 8006234:	6013      	str	r3, [r2, #0]
 8006236:	9b00      	ldr	r3, [sp, #0]
 8006238:	b983      	cbnz	r3, 800625c <_dtoa_r+0x1cc>
 800623a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800623e:	b96b      	cbnz	r3, 800625c <_dtoa_r+0x1cc>
 8006240:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006242:	f8df b074 	ldr.w	fp, [pc, #116]	; 80062b8 <_dtoa_r+0x228>
 8006246:	2b00      	cmp	r3, #0
 8006248:	f43f af61 	beq.w	800610e <_dtoa_r+0x7e>
 800624c:	f10b 0308 	add.w	r3, fp, #8
 8006250:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8006252:	4658      	mov	r0, fp
 8006254:	6013      	str	r3, [r2, #0]
 8006256:	b01b      	add	sp, #108	; 0x6c
 8006258:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800625c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800625e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80062bc <_dtoa_r+0x22c>
 8006262:	2b00      	cmp	r3, #0
 8006264:	f43f af53 	beq.w	800610e <_dtoa_r+0x7e>
 8006268:	f10b 0303 	add.w	r3, fp, #3
 800626c:	e7f0      	b.n	8006250 <_dtoa_r+0x1c0>
 800626e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8006272:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8006276:	950f      	str	r5, [sp, #60]	; 0x3c
 8006278:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800627c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8006280:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8006282:	e76f      	b.n	8006164 <_dtoa_r+0xd4>
 8006284:	f8df b038 	ldr.w	fp, [pc, #56]	; 80062c0 <_dtoa_r+0x230>
 8006288:	4658      	mov	r0, fp
 800628a:	b01b      	add	sp, #108	; 0x6c
 800628c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006290:	636f4361 	.word	0x636f4361
 8006294:	3fd287a7 	.word	0x3fd287a7
 8006298:	8b60c8b3 	.word	0x8b60c8b3
 800629c:	3fc68a28 	.word	0x3fc68a28
 80062a0:	509f79fb 	.word	0x509f79fb
 80062a4:	3fd34413 	.word	0x3fd34413
 80062a8:	7ff00000 	.word	0x7ff00000
 80062ac:	0800a755 	.word	0x0800a755
 80062b0:	3ff80000 	.word	0x3ff80000
 80062b4:	0800a7b0 	.word	0x0800a7b0
 80062b8:	0800a778 	.word	0x0800a778
 80062bc:	0800a784 	.word	0x0800a784
 80062c0:	0800a754 	.word	0x0800a754
 80062c4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80062c8:	2501      	movs	r5, #1
 80062ca:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80062ce:	2300      	movs	r3, #0
 80062d0:	9302      	str	r3, [sp, #8]
 80062d2:	9307      	str	r3, [sp, #28]
 80062d4:	2100      	movs	r1, #0
 80062d6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80062da:	940e      	str	r4, [sp, #56]	; 0x38
 80062dc:	4648      	mov	r0, r9
 80062de:	f001 fdcd 	bl	8007e7c <_Balloc>
 80062e2:	2c0e      	cmp	r4, #14
 80062e4:	4683      	mov	fp, r0
 80062e6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80062ea:	f200 80fb 	bhi.w	80064e4 <_dtoa_r+0x454>
 80062ee:	2d00      	cmp	r5, #0
 80062f0:	f000 80f8 	beq.w	80064e4 <_dtoa_r+0x454>
 80062f4:	ed9d 7b00 	vldr	d7, [sp]
 80062f8:	9906      	ldr	r1, [sp, #24]
 80062fa:	2900      	cmp	r1, #0
 80062fc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8006300:	f340 83e5 	ble.w	8006ace <_dtoa_r+0xa3e>
 8006304:	4b9d      	ldr	r3, [pc, #628]	; (800657c <_dtoa_r+0x4ec>)
 8006306:	f001 020f 	and.w	r2, r1, #15
 800630a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800630e:	ed93 7b00 	vldr	d7, [r3]
 8006312:	110c      	asrs	r4, r1, #4
 8006314:	06e2      	lsls	r2, r4, #27
 8006316:	ed8d 7b00 	vstr	d7, [sp]
 800631a:	f140 849e 	bpl.w	8006c5a <_dtoa_r+0xbca>
 800631e:	4b98      	ldr	r3, [pc, #608]	; (8006580 <_dtoa_r+0x4f0>)
 8006320:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006324:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8006328:	f7fa fd90 	bl	8000e4c <__aeabi_ddiv>
 800632c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8006330:	f004 040f 	and.w	r4, r4, #15
 8006334:	2603      	movs	r6, #3
 8006336:	b17c      	cbz	r4, 8006358 <_dtoa_r+0x2c8>
 8006338:	e9dd 0100 	ldrd	r0, r1, [sp]
 800633c:	4d90      	ldr	r5, [pc, #576]	; (8006580 <_dtoa_r+0x4f0>)
 800633e:	07e3      	lsls	r3, r4, #31
 8006340:	d504      	bpl.n	800634c <_dtoa_r+0x2bc>
 8006342:	e9d5 2300 	ldrd	r2, r3, [r5]
 8006346:	f7fa fc57 	bl	8000bf8 <__aeabi_dmul>
 800634a:	3601      	adds	r6, #1
 800634c:	1064      	asrs	r4, r4, #1
 800634e:	f105 0508 	add.w	r5, r5, #8
 8006352:	d1f4      	bne.n	800633e <_dtoa_r+0x2ae>
 8006354:	e9cd 0100 	strd	r0, r1, [sp]
 8006358:	e9dd 2300 	ldrd	r2, r3, [sp]
 800635c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8006360:	f7fa fd74 	bl	8000e4c <__aeabi_ddiv>
 8006364:	e9cd 0100 	strd	r0, r1, [sp]
 8006368:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800636a:	b143      	cbz	r3, 800637e <_dtoa_r+0x2ee>
 800636c:	2200      	movs	r2, #0
 800636e:	4b85      	ldr	r3, [pc, #532]	; (8006584 <_dtoa_r+0x4f4>)
 8006370:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006374:	f7fa feb2 	bl	80010dc <__aeabi_dcmplt>
 8006378:	2800      	cmp	r0, #0
 800637a:	f040 84ff 	bne.w	8006d7c <_dtoa_r+0xcec>
 800637e:	4630      	mov	r0, r6
 8006380:	f7fa fbd0 	bl	8000b24 <__aeabi_i2d>
 8006384:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006388:	f7fa fc36 	bl	8000bf8 <__aeabi_dmul>
 800638c:	4b7e      	ldr	r3, [pc, #504]	; (8006588 <_dtoa_r+0x4f8>)
 800638e:	2200      	movs	r2, #0
 8006390:	f7fa fa7c 	bl	800088c <__adddf3>
 8006394:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006396:	4606      	mov	r6, r0
 8006398:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800639c:	2b00      	cmp	r3, #0
 800639e:	f000 841c 	beq.w	8006bda <_dtoa_r+0xb4a>
 80063a2:	9b06      	ldr	r3, [sp, #24]
 80063a4:	9316      	str	r3, [sp, #88]	; 0x58
 80063a6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80063a8:	9312      	str	r3, [sp, #72]	; 0x48
 80063aa:	e9dd 0100 	ldrd	r0, r1, [sp]
 80063ae:	f7fa fed3 	bl	8001158 <__aeabi_d2iz>
 80063b2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80063b4:	4b71      	ldr	r3, [pc, #452]	; (800657c <_dtoa_r+0x4ec>)
 80063b6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80063ba:	ed13 7b02 	vldr	d7, [r3, #-8]
 80063be:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80063c2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80063c6:	f7fa fbad 	bl	8000b24 <__aeabi_i2d>
 80063ca:	460b      	mov	r3, r1
 80063cc:	4602      	mov	r2, r0
 80063ce:	e9dd 0100 	ldrd	r0, r1, [sp]
 80063d2:	e9cd 6700 	strd	r6, r7, [sp]
 80063d6:	f7fa fa57 	bl	8000888 <__aeabi_dsub>
 80063da:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80063dc:	b2ed      	uxtb	r5, r5
 80063de:	4606      	mov	r6, r0
 80063e0:	460f      	mov	r7, r1
 80063e2:	f10b 0401 	add.w	r4, fp, #1
 80063e6:	2b00      	cmp	r3, #0
 80063e8:	f000 8458 	beq.w	8006c9c <_dtoa_r+0xc0c>
 80063ec:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80063f0:	2000      	movs	r0, #0
 80063f2:	4966      	ldr	r1, [pc, #408]	; (800658c <_dtoa_r+0x4fc>)
 80063f4:	f7fa fd2a 	bl	8000e4c <__aeabi_ddiv>
 80063f8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80063fc:	f7fa fa44 	bl	8000888 <__aeabi_dsub>
 8006400:	f88b 5000 	strb.w	r5, [fp]
 8006404:	4632      	mov	r2, r6
 8006406:	463b      	mov	r3, r7
 8006408:	e9cd 0100 	strd	r0, r1, [sp]
 800640c:	f7fa fe84 	bl	8001118 <__aeabi_dcmpgt>
 8006410:	2800      	cmp	r0, #0
 8006412:	f040 8502 	bne.w	8006e1a <_dtoa_r+0xd8a>
 8006416:	4632      	mov	r2, r6
 8006418:	463b      	mov	r3, r7
 800641a:	2000      	movs	r0, #0
 800641c:	4959      	ldr	r1, [pc, #356]	; (8006584 <_dtoa_r+0x4f4>)
 800641e:	f7fa fa33 	bl	8000888 <__aeabi_dsub>
 8006422:	4602      	mov	r2, r0
 8006424:	460b      	mov	r3, r1
 8006426:	e9dd 0100 	ldrd	r0, r1, [sp]
 800642a:	f7fa fe75 	bl	8001118 <__aeabi_dcmpgt>
 800642e:	2800      	cmp	r0, #0
 8006430:	f040 84fb 	bne.w	8006e2a <_dtoa_r+0xd9a>
 8006434:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8006436:	2a01      	cmp	r2, #1
 8006438:	d050      	beq.n	80064dc <_dtoa_r+0x44c>
 800643a:	445a      	add	r2, fp
 800643c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8006440:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8006444:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8006448:	4692      	mov	sl, r2
 800644a:	46cb      	mov	fp, r9
 800644c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8006450:	e00c      	b.n	800646c <_dtoa_r+0x3dc>
 8006452:	2000      	movs	r0, #0
 8006454:	494b      	ldr	r1, [pc, #300]	; (8006584 <_dtoa_r+0x4f4>)
 8006456:	f7fa fa17 	bl	8000888 <__aeabi_dsub>
 800645a:	4642      	mov	r2, r8
 800645c:	464b      	mov	r3, r9
 800645e:	f7fa fe3d 	bl	80010dc <__aeabi_dcmplt>
 8006462:	2800      	cmp	r0, #0
 8006464:	f040 84dc 	bne.w	8006e20 <_dtoa_r+0xd90>
 8006468:	4554      	cmp	r4, sl
 800646a:	d030      	beq.n	80064ce <_dtoa_r+0x43e>
 800646c:	4640      	mov	r0, r8
 800646e:	4649      	mov	r1, r9
 8006470:	2200      	movs	r2, #0
 8006472:	4b47      	ldr	r3, [pc, #284]	; (8006590 <_dtoa_r+0x500>)
 8006474:	f7fa fbc0 	bl	8000bf8 <__aeabi_dmul>
 8006478:	2200      	movs	r2, #0
 800647a:	4b45      	ldr	r3, [pc, #276]	; (8006590 <_dtoa_r+0x500>)
 800647c:	4680      	mov	r8, r0
 800647e:	4689      	mov	r9, r1
 8006480:	4630      	mov	r0, r6
 8006482:	4639      	mov	r1, r7
 8006484:	f7fa fbb8 	bl	8000bf8 <__aeabi_dmul>
 8006488:	460f      	mov	r7, r1
 800648a:	4606      	mov	r6, r0
 800648c:	f7fa fe64 	bl	8001158 <__aeabi_d2iz>
 8006490:	4605      	mov	r5, r0
 8006492:	f7fa fb47 	bl	8000b24 <__aeabi_i2d>
 8006496:	4602      	mov	r2, r0
 8006498:	460b      	mov	r3, r1
 800649a:	4630      	mov	r0, r6
 800649c:	4639      	mov	r1, r7
 800649e:	f7fa f9f3 	bl	8000888 <__aeabi_dsub>
 80064a2:	3530      	adds	r5, #48	; 0x30
 80064a4:	b2ed      	uxtb	r5, r5
 80064a6:	4642      	mov	r2, r8
 80064a8:	464b      	mov	r3, r9
 80064aa:	f804 5b01 	strb.w	r5, [r4], #1
 80064ae:	4606      	mov	r6, r0
 80064b0:	460f      	mov	r7, r1
 80064b2:	f7fa fe13 	bl	80010dc <__aeabi_dcmplt>
 80064b6:	4632      	mov	r2, r6
 80064b8:	463b      	mov	r3, r7
 80064ba:	2800      	cmp	r0, #0
 80064bc:	d0c9      	beq.n	8006452 <_dtoa_r+0x3c2>
 80064be:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80064c0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80064c4:	9306      	str	r3, [sp, #24]
 80064c6:	46d9      	mov	r9, fp
 80064c8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80064cc:	e236      	b.n	800693c <_dtoa_r+0x8ac>
 80064ce:	46d9      	mov	r9, fp
 80064d0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80064d4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80064d8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80064dc:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80064e0:	e9cd 3400 	strd	r3, r4, [sp]
 80064e4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80064e6:	2b00      	cmp	r3, #0
 80064e8:	f2c0 80ae 	blt.w	8006648 <_dtoa_r+0x5b8>
 80064ec:	9a06      	ldr	r2, [sp, #24]
 80064ee:	2a0e      	cmp	r2, #14
 80064f0:	f300 80aa 	bgt.w	8006648 <_dtoa_r+0x5b8>
 80064f4:	4b21      	ldr	r3, [pc, #132]	; (800657c <_dtoa_r+0x4ec>)
 80064f6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80064fa:	ed93 7b00 	vldr	d7, [r3]
 80064fe:	9b07      	ldr	r3, [sp, #28]
 8006500:	2b00      	cmp	r3, #0
 8006502:	ed8d 7b02 	vstr	d7, [sp, #8]
 8006506:	f2c0 82be 	blt.w	8006a86 <_dtoa_r+0x9f6>
 800650a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800650e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006512:	4630      	mov	r0, r6
 8006514:	4639      	mov	r1, r7
 8006516:	f7fa fc99 	bl	8000e4c <__aeabi_ddiv>
 800651a:	f7fa fe1d 	bl	8001158 <__aeabi_d2iz>
 800651e:	4605      	mov	r5, r0
 8006520:	f7fa fb00 	bl	8000b24 <__aeabi_i2d>
 8006524:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006528:	f7fa fb66 	bl	8000bf8 <__aeabi_dmul>
 800652c:	460b      	mov	r3, r1
 800652e:	4602      	mov	r2, r0
 8006530:	4639      	mov	r1, r7
 8006532:	4630      	mov	r0, r6
 8006534:	f7fa f9a8 	bl	8000888 <__aeabi_dsub>
 8006538:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800653c:	f88b 3000 	strb.w	r3, [fp]
 8006540:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006542:	2b01      	cmp	r3, #1
 8006544:	4606      	mov	r6, r0
 8006546:	460f      	mov	r7, r1
 8006548:	f10b 0401 	add.w	r4, fp, #1
 800654c:	d053      	beq.n	80065f6 <_dtoa_r+0x566>
 800654e:	2200      	movs	r2, #0
 8006550:	4b0f      	ldr	r3, [pc, #60]	; (8006590 <_dtoa_r+0x500>)
 8006552:	f7fa fb51 	bl	8000bf8 <__aeabi_dmul>
 8006556:	2200      	movs	r2, #0
 8006558:	2300      	movs	r3, #0
 800655a:	4606      	mov	r6, r0
 800655c:	460f      	mov	r7, r1
 800655e:	f7fa fdb3 	bl	80010c8 <__aeabi_dcmpeq>
 8006562:	2800      	cmp	r0, #0
 8006564:	f040 81ea 	bne.w	800693c <_dtoa_r+0x8ac>
 8006568:	f8cd a000 	str.w	sl, [sp]
 800656c:	f8cd 901c 	str.w	r9, [sp, #28]
 8006570:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8006574:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8006578:	e017      	b.n	80065aa <_dtoa_r+0x51a>
 800657a:	bf00      	nop
 800657c:	0800a7b0 	.word	0x0800a7b0
 8006580:	0800a788 	.word	0x0800a788
 8006584:	3ff00000 	.word	0x3ff00000
 8006588:	401c0000 	.word	0x401c0000
 800658c:	3fe00000 	.word	0x3fe00000
 8006590:	40240000 	.word	0x40240000
 8006594:	f7fa fb30 	bl	8000bf8 <__aeabi_dmul>
 8006598:	2200      	movs	r2, #0
 800659a:	2300      	movs	r3, #0
 800659c:	4606      	mov	r6, r0
 800659e:	460f      	mov	r7, r1
 80065a0:	f7fa fd92 	bl	80010c8 <__aeabi_dcmpeq>
 80065a4:	2800      	cmp	r0, #0
 80065a6:	f040 833d 	bne.w	8006c24 <_dtoa_r+0xb94>
 80065aa:	464a      	mov	r2, r9
 80065ac:	4653      	mov	r3, sl
 80065ae:	4630      	mov	r0, r6
 80065b0:	4639      	mov	r1, r7
 80065b2:	f7fa fc4b 	bl	8000e4c <__aeabi_ddiv>
 80065b6:	f7fa fdcf 	bl	8001158 <__aeabi_d2iz>
 80065ba:	4605      	mov	r5, r0
 80065bc:	f7fa fab2 	bl	8000b24 <__aeabi_i2d>
 80065c0:	464a      	mov	r2, r9
 80065c2:	4653      	mov	r3, sl
 80065c4:	f7fa fb18 	bl	8000bf8 <__aeabi_dmul>
 80065c8:	4602      	mov	r2, r0
 80065ca:	460b      	mov	r3, r1
 80065cc:	4630      	mov	r0, r6
 80065ce:	4639      	mov	r1, r7
 80065d0:	f7fa f95a 	bl	8000888 <__aeabi_dsub>
 80065d4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80065d8:	f804 cb01 	strb.w	ip, [r4], #1
 80065dc:	eba4 0c0b 	sub.w	ip, r4, fp
 80065e0:	45e0      	cmp	r8, ip
 80065e2:	4606      	mov	r6, r0
 80065e4:	460f      	mov	r7, r1
 80065e6:	f04f 0200 	mov.w	r2, #0
 80065ea:	4bc1      	ldr	r3, [pc, #772]	; (80068f0 <_dtoa_r+0x860>)
 80065ec:	d1d2      	bne.n	8006594 <_dtoa_r+0x504>
 80065ee:	f8dd a000 	ldr.w	sl, [sp]
 80065f2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80065f6:	4632      	mov	r2, r6
 80065f8:	463b      	mov	r3, r7
 80065fa:	4630      	mov	r0, r6
 80065fc:	4639      	mov	r1, r7
 80065fe:	f7fa f945 	bl	800088c <__adddf3>
 8006602:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006606:	4606      	mov	r6, r0
 8006608:	460f      	mov	r7, r1
 800660a:	f7fa fd85 	bl	8001118 <__aeabi_dcmpgt>
 800660e:	b958      	cbnz	r0, 8006628 <_dtoa_r+0x598>
 8006610:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006614:	4630      	mov	r0, r6
 8006616:	4639      	mov	r1, r7
 8006618:	f7fa fd56 	bl	80010c8 <__aeabi_dcmpeq>
 800661c:	2800      	cmp	r0, #0
 800661e:	f000 818d 	beq.w	800693c <_dtoa_r+0x8ac>
 8006622:	07e9      	lsls	r1, r5, #31
 8006624:	f140 818a 	bpl.w	800693c <_dtoa_r+0x8ac>
 8006628:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800662c:	e005      	b.n	800663a <_dtoa_r+0x5aa>
 800662e:	459b      	cmp	fp, r3
 8006630:	f000 8373 	beq.w	8006d1a <_dtoa_r+0xc8a>
 8006634:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8006638:	461c      	mov	r4, r3
 800663a:	2d39      	cmp	r5, #57	; 0x39
 800663c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006640:	d0f5      	beq.n	800662e <_dtoa_r+0x59e>
 8006642:	3501      	adds	r5, #1
 8006644:	701d      	strb	r5, [r3, #0]
 8006646:	e179      	b.n	800693c <_dtoa_r+0x8ac>
 8006648:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800664a:	2a00      	cmp	r2, #0
 800664c:	d03b      	beq.n	80066c6 <_dtoa_r+0x636>
 800664e:	9a02      	ldr	r2, [sp, #8]
 8006650:	2a01      	cmp	r2, #1
 8006652:	f340 820b 	ble.w	8006a6c <_dtoa_r+0x9dc>
 8006656:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006658:	1e5f      	subs	r7, r3, #1
 800665a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800665c:	42bb      	cmp	r3, r7
 800665e:	f2c0 82e6 	blt.w	8006c2e <_dtoa_r+0xb9e>
 8006662:	1bdf      	subs	r7, r3, r7
 8006664:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006666:	2b00      	cmp	r3, #0
 8006668:	f2c0 830b 	blt.w	8006c82 <_dtoa_r+0xbf2>
 800666c:	9a08      	ldr	r2, [sp, #32]
 800666e:	4614      	mov	r4, r2
 8006670:	441a      	add	r2, r3
 8006672:	4498      	add	r8, r3
 8006674:	9208      	str	r2, [sp, #32]
 8006676:	2101      	movs	r1, #1
 8006678:	4648      	mov	r0, r9
 800667a:	f001 fcbf 	bl	8007ffc <__i2b>
 800667e:	4605      	mov	r5, r0
 8006680:	e024      	b.n	80066cc <_dtoa_r+0x63c>
 8006682:	2301      	movs	r3, #1
 8006684:	930d      	str	r3, [sp, #52]	; 0x34
 8006686:	e5af      	b.n	80061e8 <_dtoa_r+0x158>
 8006688:	9a08      	ldr	r2, [sp, #32]
 800668a:	9b06      	ldr	r3, [sp, #24]
 800668c:	1ad2      	subs	r2, r2, r3
 800668e:	425b      	negs	r3, r3
 8006690:	930b      	str	r3, [sp, #44]	; 0x2c
 8006692:	2300      	movs	r3, #0
 8006694:	9208      	str	r2, [sp, #32]
 8006696:	930c      	str	r3, [sp, #48]	; 0x30
 8006698:	e5b5      	b.n	8006206 <_dtoa_r+0x176>
 800669a:	f1c4 0301 	rsb	r3, r4, #1
 800669e:	9308      	str	r3, [sp, #32]
 80066a0:	f04f 0800 	mov.w	r8, #0
 80066a4:	e5a7      	b.n	80061f6 <_dtoa_r+0x166>
 80066a6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80066aa:	4640      	mov	r0, r8
 80066ac:	f7fa fa3a 	bl	8000b24 <__aeabi_i2d>
 80066b0:	4632      	mov	r2, r6
 80066b2:	463b      	mov	r3, r7
 80066b4:	f7fa fd08 	bl	80010c8 <__aeabi_dcmpeq>
 80066b8:	2800      	cmp	r0, #0
 80066ba:	f47f ad81 	bne.w	80061c0 <_dtoa_r+0x130>
 80066be:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80066c2:	9306      	str	r3, [sp, #24]
 80066c4:	e57c      	b.n	80061c0 <_dtoa_r+0x130>
 80066c6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80066c8:	9c08      	ldr	r4, [sp, #32]
 80066ca:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80066cc:	2c00      	cmp	r4, #0
 80066ce:	dd0c      	ble.n	80066ea <_dtoa_r+0x65a>
 80066d0:	f1b8 0f00 	cmp.w	r8, #0
 80066d4:	dd09      	ble.n	80066ea <_dtoa_r+0x65a>
 80066d6:	4544      	cmp	r4, r8
 80066d8:	9a08      	ldr	r2, [sp, #32]
 80066da:	4623      	mov	r3, r4
 80066dc:	bfa8      	it	ge
 80066de:	4643      	movge	r3, r8
 80066e0:	1ad2      	subs	r2, r2, r3
 80066e2:	9208      	str	r2, [sp, #32]
 80066e4:	1ae4      	subs	r4, r4, r3
 80066e6:	eba8 0803 	sub.w	r8, r8, r3
 80066ea:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80066ec:	b16b      	cbz	r3, 800670a <_dtoa_r+0x67a>
 80066ee:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80066f0:	2a00      	cmp	r2, #0
 80066f2:	f000 8290 	beq.w	8006c16 <_dtoa_r+0xb86>
 80066f6:	1bde      	subs	r6, r3, r7
 80066f8:	2f00      	cmp	r7, #0
 80066fa:	f040 819b 	bne.w	8006a34 <_dtoa_r+0x9a4>
 80066fe:	4651      	mov	r1, sl
 8006700:	4632      	mov	r2, r6
 8006702:	4648      	mov	r0, r9
 8006704:	f001 fd2a 	bl	800815c <__pow5mult>
 8006708:	4682      	mov	sl, r0
 800670a:	2101      	movs	r1, #1
 800670c:	4648      	mov	r0, r9
 800670e:	f001 fc75 	bl	8007ffc <__i2b>
 8006712:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006714:	4606      	mov	r6, r0
 8006716:	2a00      	cmp	r2, #0
 8006718:	f040 8125 	bne.w	8006966 <_dtoa_r+0x8d6>
 800671c:	9b02      	ldr	r3, [sp, #8]
 800671e:	2b01      	cmp	r3, #1
 8006720:	f340 816c 	ble.w	80069fc <_dtoa_r+0x96c>
 8006724:	2001      	movs	r0, #1
 8006726:	4440      	add	r0, r8
 8006728:	f010 001f 	ands.w	r0, r0, #31
 800672c:	f000 8119 	beq.w	8006962 <_dtoa_r+0x8d2>
 8006730:	f1c0 0320 	rsb	r3, r0, #32
 8006734:	2b04      	cmp	r3, #4
 8006736:	f340 83ac 	ble.w	8006e92 <_dtoa_r+0xe02>
 800673a:	f1c0 001c 	rsb	r0, r0, #28
 800673e:	9b08      	ldr	r3, [sp, #32]
 8006740:	4403      	add	r3, r0
 8006742:	9308      	str	r3, [sp, #32]
 8006744:	4404      	add	r4, r0
 8006746:	4480      	add	r8, r0
 8006748:	9b08      	ldr	r3, [sp, #32]
 800674a:	2b00      	cmp	r3, #0
 800674c:	dd05      	ble.n	800675a <_dtoa_r+0x6ca>
 800674e:	4651      	mov	r1, sl
 8006750:	461a      	mov	r2, r3
 8006752:	4648      	mov	r0, r9
 8006754:	f001 fd52 	bl	80081fc <__lshift>
 8006758:	4682      	mov	sl, r0
 800675a:	f1b8 0f00 	cmp.w	r8, #0
 800675e:	dd05      	ble.n	800676c <_dtoa_r+0x6dc>
 8006760:	4631      	mov	r1, r6
 8006762:	4642      	mov	r2, r8
 8006764:	4648      	mov	r0, r9
 8006766:	f001 fd49 	bl	80081fc <__lshift>
 800676a:	4606      	mov	r6, r0
 800676c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800676e:	2b00      	cmp	r3, #0
 8006770:	d177      	bne.n	8006862 <_dtoa_r+0x7d2>
 8006772:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006774:	2b00      	cmp	r3, #0
 8006776:	f340 8209 	ble.w	8006b8c <_dtoa_r+0xafc>
 800677a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800677c:	2b00      	cmp	r3, #0
 800677e:	f000 8089 	beq.w	8006894 <_dtoa_r+0x804>
 8006782:	2c00      	cmp	r4, #0
 8006784:	f300 816b 	bgt.w	8006a5e <_dtoa_r+0x9ce>
 8006788:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800678a:	2b00      	cmp	r3, #0
 800678c:	f040 81cd 	bne.w	8006b2a <_dtoa_r+0xa9a>
 8006790:	46a8      	mov	r8, r5
 8006792:	9a00      	ldr	r2, [sp, #0]
 8006794:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8006798:	f002 0201 	and.w	r2, r2, #1
 800679c:	920a      	str	r2, [sp, #40]	; 0x28
 800679e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80067a0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80067a4:	441a      	add	r2, r3
 80067a6:	465f      	mov	r7, fp
 80067a8:	9209      	str	r2, [sp, #36]	; 0x24
 80067aa:	46b3      	mov	fp, r6
 80067ac:	4659      	mov	r1, fp
 80067ae:	4650      	mov	r0, sl
 80067b0:	f7ff fbdc 	bl	8005f6c <quorem>
 80067b4:	4629      	mov	r1, r5
 80067b6:	4604      	mov	r4, r0
 80067b8:	4650      	mov	r0, sl
 80067ba:	f001 fd75 	bl	80082a8 <__mcmp>
 80067be:	4659      	mov	r1, fp
 80067c0:	4606      	mov	r6, r0
 80067c2:	4642      	mov	r2, r8
 80067c4:	4648      	mov	r0, r9
 80067c6:	f001 fd8b 	bl	80082e0 <__mdiff>
 80067ca:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80067ce:	9300      	str	r3, [sp, #0]
 80067d0:	68c3      	ldr	r3, [r0, #12]
 80067d2:	4601      	mov	r1, r0
 80067d4:	2b00      	cmp	r3, #0
 80067d6:	f040 81d4 	bne.w	8006b82 <_dtoa_r+0xaf2>
 80067da:	9008      	str	r0, [sp, #32]
 80067dc:	4650      	mov	r0, sl
 80067de:	f001 fd63 	bl	80082a8 <__mcmp>
 80067e2:	9a08      	ldr	r2, [sp, #32]
 80067e4:	9007      	str	r0, [sp, #28]
 80067e6:	4611      	mov	r1, r2
 80067e8:	4648      	mov	r0, r9
 80067ea:	f001 fb6d 	bl	8007ec8 <_Bfree>
 80067ee:	9b07      	ldr	r3, [sp, #28]
 80067f0:	b933      	cbnz	r3, 8006800 <_dtoa_r+0x770>
 80067f2:	9a02      	ldr	r2, [sp, #8]
 80067f4:	b922      	cbnz	r2, 8006800 <_dtoa_r+0x770>
 80067f6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80067f8:	2b00      	cmp	r3, #0
 80067fa:	f000 8319 	beq.w	8006e30 <_dtoa_r+0xda0>
 80067fe:	9b02      	ldr	r3, [sp, #8]
 8006800:	2e00      	cmp	r6, #0
 8006802:	f2c0 821c 	blt.w	8006c3e <_dtoa_r+0xbae>
 8006806:	d105      	bne.n	8006814 <_dtoa_r+0x784>
 8006808:	9a02      	ldr	r2, [sp, #8]
 800680a:	b91a      	cbnz	r2, 8006814 <_dtoa_r+0x784>
 800680c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800680e:	2a00      	cmp	r2, #0
 8006810:	f000 8215 	beq.w	8006c3e <_dtoa_r+0xbae>
 8006814:	2b00      	cmp	r3, #0
 8006816:	f107 0401 	add.w	r4, r7, #1
 800681a:	f300 8225 	bgt.w	8006c68 <_dtoa_r+0xbd8>
 800681e:	9b00      	ldr	r3, [sp, #0]
 8006820:	703b      	strb	r3, [r7, #0]
 8006822:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006824:	42bb      	cmp	r3, r7
 8006826:	f000 8230 	beq.w	8006c8a <_dtoa_r+0xbfa>
 800682a:	4651      	mov	r1, sl
 800682c:	2300      	movs	r3, #0
 800682e:	220a      	movs	r2, #10
 8006830:	4648      	mov	r0, r9
 8006832:	f001 fb53 	bl	8007edc <__multadd>
 8006836:	4545      	cmp	r5, r8
 8006838:	4682      	mov	sl, r0
 800683a:	4629      	mov	r1, r5
 800683c:	f04f 0300 	mov.w	r3, #0
 8006840:	f04f 020a 	mov.w	r2, #10
 8006844:	4648      	mov	r0, r9
 8006846:	f000 8196 	beq.w	8006b76 <_dtoa_r+0xae6>
 800684a:	f001 fb47 	bl	8007edc <__multadd>
 800684e:	4641      	mov	r1, r8
 8006850:	4605      	mov	r5, r0
 8006852:	2300      	movs	r3, #0
 8006854:	220a      	movs	r2, #10
 8006856:	4648      	mov	r0, r9
 8006858:	f001 fb40 	bl	8007edc <__multadd>
 800685c:	4627      	mov	r7, r4
 800685e:	4680      	mov	r8, r0
 8006860:	e7a4      	b.n	80067ac <_dtoa_r+0x71c>
 8006862:	4631      	mov	r1, r6
 8006864:	4650      	mov	r0, sl
 8006866:	f001 fd1f 	bl	80082a8 <__mcmp>
 800686a:	2800      	cmp	r0, #0
 800686c:	da81      	bge.n	8006772 <_dtoa_r+0x6e2>
 800686e:	9f06      	ldr	r7, [sp, #24]
 8006870:	4651      	mov	r1, sl
 8006872:	2300      	movs	r3, #0
 8006874:	220a      	movs	r2, #10
 8006876:	4648      	mov	r0, r9
 8006878:	3f01      	subs	r7, #1
 800687a:	9706      	str	r7, [sp, #24]
 800687c:	f001 fb2e 	bl	8007edc <__multadd>
 8006880:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006882:	4682      	mov	sl, r0
 8006884:	2b00      	cmp	r3, #0
 8006886:	f040 82eb 	bne.w	8006e60 <_dtoa_r+0xdd0>
 800688a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800688c:	2b00      	cmp	r3, #0
 800688e:	f340 82f3 	ble.w	8006e78 <_dtoa_r+0xde8>
 8006892:	9309      	str	r3, [sp, #36]	; 0x24
 8006894:	465c      	mov	r4, fp
 8006896:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800689a:	e002      	b.n	80068a2 <_dtoa_r+0x812>
 800689c:	f001 fb1e 	bl	8007edc <__multadd>
 80068a0:	4682      	mov	sl, r0
 80068a2:	4631      	mov	r1, r6
 80068a4:	4650      	mov	r0, sl
 80068a6:	f7ff fb61 	bl	8005f6c <quorem>
 80068aa:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80068ae:	f804 7b01 	strb.w	r7, [r4], #1
 80068b2:	eba4 030b 	sub.w	r3, r4, fp
 80068b6:	4598      	cmp	r8, r3
 80068b8:	f04f 020a 	mov.w	r2, #10
 80068bc:	f04f 0300 	mov.w	r3, #0
 80068c0:	4651      	mov	r1, sl
 80068c2:	4648      	mov	r0, r9
 80068c4:	dcea      	bgt.n	800689c <_dtoa_r+0x80c>
 80068c6:	2300      	movs	r3, #0
 80068c8:	9700      	str	r7, [sp, #0]
 80068ca:	9302      	str	r3, [sp, #8]
 80068cc:	4651      	mov	r1, sl
 80068ce:	2201      	movs	r2, #1
 80068d0:	4648      	mov	r0, r9
 80068d2:	f001 fc93 	bl	80081fc <__lshift>
 80068d6:	4631      	mov	r1, r6
 80068d8:	4682      	mov	sl, r0
 80068da:	f001 fce5 	bl	80082a8 <__mcmp>
 80068de:	2800      	cmp	r0, #0
 80068e0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80068e4:	dc14      	bgt.n	8006910 <_dtoa_r+0x880>
 80068e6:	d108      	bne.n	80068fa <_dtoa_r+0x86a>
 80068e8:	9b00      	ldr	r3, [sp, #0]
 80068ea:	07db      	lsls	r3, r3, #31
 80068ec:	d410      	bmi.n	8006910 <_dtoa_r+0x880>
 80068ee:	e004      	b.n	80068fa <_dtoa_r+0x86a>
 80068f0:	40240000 	.word	0x40240000
 80068f4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80068f8:	461c      	mov	r4, r3
 80068fa:	2a30      	cmp	r2, #48	; 0x30
 80068fc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006900:	d0f8      	beq.n	80068f4 <_dtoa_r+0x864>
 8006902:	e00b      	b.n	800691c <_dtoa_r+0x88c>
 8006904:	459b      	cmp	fp, r3
 8006906:	f000 814e 	beq.w	8006ba6 <_dtoa_r+0xb16>
 800690a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800690e:	461c      	mov	r4, r3
 8006910:	2a39      	cmp	r2, #57	; 0x39
 8006912:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006916:	d0f5      	beq.n	8006904 <_dtoa_r+0x874>
 8006918:	3201      	adds	r2, #1
 800691a:	701a      	strb	r2, [r3, #0]
 800691c:	4631      	mov	r1, r6
 800691e:	4648      	mov	r0, r9
 8006920:	f001 fad2 	bl	8007ec8 <_Bfree>
 8006924:	b155      	cbz	r5, 800693c <_dtoa_r+0x8ac>
 8006926:	9902      	ldr	r1, [sp, #8]
 8006928:	b121      	cbz	r1, 8006934 <_dtoa_r+0x8a4>
 800692a:	42a9      	cmp	r1, r5
 800692c:	d002      	beq.n	8006934 <_dtoa_r+0x8a4>
 800692e:	4648      	mov	r0, r9
 8006930:	f001 faca 	bl	8007ec8 <_Bfree>
 8006934:	4629      	mov	r1, r5
 8006936:	4648      	mov	r0, r9
 8006938:	f001 fac6 	bl	8007ec8 <_Bfree>
 800693c:	4651      	mov	r1, sl
 800693e:	4648      	mov	r0, r9
 8006940:	f001 fac2 	bl	8007ec8 <_Bfree>
 8006944:	2200      	movs	r2, #0
 8006946:	9b06      	ldr	r3, [sp, #24]
 8006948:	7022      	strb	r2, [r4, #0]
 800694a:	9a05      	ldr	r2, [sp, #20]
 800694c:	3301      	adds	r3, #1
 800694e:	6013      	str	r3, [r2, #0]
 8006950:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006952:	2b00      	cmp	r3, #0
 8006954:	f43f abdb 	beq.w	800610e <_dtoa_r+0x7e>
 8006958:	4658      	mov	r0, fp
 800695a:	601c      	str	r4, [r3, #0]
 800695c:	b01b      	add	sp, #108	; 0x6c
 800695e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006962:	201c      	movs	r0, #28
 8006964:	e6eb      	b.n	800673e <_dtoa_r+0x6ae>
 8006966:	4601      	mov	r1, r0
 8006968:	4648      	mov	r0, r9
 800696a:	f001 fbf7 	bl	800815c <__pow5mult>
 800696e:	9b02      	ldr	r3, [sp, #8]
 8006970:	2b01      	cmp	r3, #1
 8006972:	4606      	mov	r6, r0
 8006974:	f340 80d4 	ble.w	8006b20 <_dtoa_r+0xa90>
 8006978:	2300      	movs	r3, #0
 800697a:	930c      	str	r3, [sp, #48]	; 0x30
 800697c:	6933      	ldr	r3, [r6, #16]
 800697e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8006982:	6918      	ldr	r0, [r3, #16]
 8006984:	f001 faea 	bl	8007f5c <__hi0bits>
 8006988:	f1c0 0020 	rsb	r0, r0, #32
 800698c:	e6cb      	b.n	8006726 <_dtoa_r+0x696>
 800698e:	900d      	str	r0, [sp, #52]	; 0x34
 8006990:	e42a      	b.n	80061e8 <_dtoa_r+0x158>
 8006992:	2501      	movs	r5, #1
 8006994:	e440      	b.n	8006218 <_dtoa_r+0x188>
 8006996:	f1c3 0820 	rsb	r8, r3, #32
 800699a:	9b00      	ldr	r3, [sp, #0]
 800699c:	fa03 f008 	lsl.w	r0, r3, r8
 80069a0:	f7ff bbd8 	b.w	8006154 <_dtoa_r+0xc4>
 80069a4:	2300      	movs	r3, #0
 80069a6:	930a      	str	r3, [sp, #40]	; 0x28
 80069a8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80069ac:	4413      	add	r3, r2
 80069ae:	930e      	str	r3, [sp, #56]	; 0x38
 80069b0:	3301      	adds	r3, #1
 80069b2:	2b01      	cmp	r3, #1
 80069b4:	461e      	mov	r6, r3
 80069b6:	9309      	str	r3, [sp, #36]	; 0x24
 80069b8:	bfb8      	it	lt
 80069ba:	2601      	movlt	r6, #1
 80069bc:	2100      	movs	r1, #0
 80069be:	2e17      	cmp	r6, #23
 80069c0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80069c4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80069c6:	f77f ac89 	ble.w	80062dc <_dtoa_r+0x24c>
 80069ca:	2201      	movs	r2, #1
 80069cc:	2304      	movs	r3, #4
 80069ce:	005b      	lsls	r3, r3, #1
 80069d0:	f103 0014 	add.w	r0, r3, #20
 80069d4:	42b0      	cmp	r0, r6
 80069d6:	4611      	mov	r1, r2
 80069d8:	f102 0201 	add.w	r2, r2, #1
 80069dc:	d9f7      	bls.n	80069ce <_dtoa_r+0x93e>
 80069de:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80069e2:	e47b      	b.n	80062dc <_dtoa_r+0x24c>
 80069e4:	2300      	movs	r3, #0
 80069e6:	930a      	str	r3, [sp, #40]	; 0x28
 80069e8:	9e07      	ldr	r6, [sp, #28]
 80069ea:	2e00      	cmp	r6, #0
 80069ec:	f340 80e2 	ble.w	8006bb4 <_dtoa_r+0xb24>
 80069f0:	960e      	str	r6, [sp, #56]	; 0x38
 80069f2:	9609      	str	r6, [sp, #36]	; 0x24
 80069f4:	e7e2      	b.n	80069bc <_dtoa_r+0x92c>
 80069f6:	2301      	movs	r3, #1
 80069f8:	930a      	str	r3, [sp, #40]	; 0x28
 80069fa:	e7f5      	b.n	80069e8 <_dtoa_r+0x958>
 80069fc:	9b00      	ldr	r3, [sp, #0]
 80069fe:	2b00      	cmp	r3, #0
 8006a00:	f47f ae90 	bne.w	8006724 <_dtoa_r+0x694>
 8006a04:	e9dd 1200 	ldrd	r1, r2, [sp]
 8006a08:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8006a0c:	2b00      	cmp	r3, #0
 8006a0e:	f040 8192 	bne.w	8006d36 <_dtoa_r+0xca6>
 8006a12:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8006a16:	0d1b      	lsrs	r3, r3, #20
 8006a18:	051b      	lsls	r3, r3, #20
 8006a1a:	b12b      	cbz	r3, 8006a28 <_dtoa_r+0x998>
 8006a1c:	9b08      	ldr	r3, [sp, #32]
 8006a1e:	3301      	adds	r3, #1
 8006a20:	9308      	str	r3, [sp, #32]
 8006a22:	f108 0801 	add.w	r8, r8, #1
 8006a26:	2301      	movs	r3, #1
 8006a28:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006a2a:	930c      	str	r3, [sp, #48]	; 0x30
 8006a2c:	2a00      	cmp	r2, #0
 8006a2e:	f43f ae79 	beq.w	8006724 <_dtoa_r+0x694>
 8006a32:	e7a3      	b.n	800697c <_dtoa_r+0x8ec>
 8006a34:	463a      	mov	r2, r7
 8006a36:	4629      	mov	r1, r5
 8006a38:	4648      	mov	r0, r9
 8006a3a:	f001 fb8f 	bl	800815c <__pow5mult>
 8006a3e:	4652      	mov	r2, sl
 8006a40:	4601      	mov	r1, r0
 8006a42:	4605      	mov	r5, r0
 8006a44:	4648      	mov	r0, r9
 8006a46:	f001 fae3 	bl	8008010 <__multiply>
 8006a4a:	4651      	mov	r1, sl
 8006a4c:	4607      	mov	r7, r0
 8006a4e:	4648      	mov	r0, r9
 8006a50:	f001 fa3a 	bl	8007ec8 <_Bfree>
 8006a54:	46ba      	mov	sl, r7
 8006a56:	2e00      	cmp	r6, #0
 8006a58:	f43f ae57 	beq.w	800670a <_dtoa_r+0x67a>
 8006a5c:	e64f      	b.n	80066fe <_dtoa_r+0x66e>
 8006a5e:	4629      	mov	r1, r5
 8006a60:	4622      	mov	r2, r4
 8006a62:	4648      	mov	r0, r9
 8006a64:	f001 fbca 	bl	80081fc <__lshift>
 8006a68:	4605      	mov	r5, r0
 8006a6a:	e68d      	b.n	8006788 <_dtoa_r+0x6f8>
 8006a6c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8006a6e:	2a00      	cmp	r2, #0
 8006a70:	f000 815d 	beq.w	8006d2e <_dtoa_r+0xc9e>
 8006a74:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8006a78:	9a08      	ldr	r2, [sp, #32]
 8006a7a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8006a7c:	4614      	mov	r4, r2
 8006a7e:	441a      	add	r2, r3
 8006a80:	4498      	add	r8, r3
 8006a82:	9208      	str	r2, [sp, #32]
 8006a84:	e5f7      	b.n	8006676 <_dtoa_r+0x5e6>
 8006a86:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006a88:	2b00      	cmp	r3, #0
 8006a8a:	f73f ad3e 	bgt.w	800650a <_dtoa_r+0x47a>
 8006a8e:	f040 80bc 	bne.w	8006c0a <_dtoa_r+0xb7a>
 8006a92:	ec51 0b17 	vmov	r0, r1, d7
 8006a96:	2200      	movs	r2, #0
 8006a98:	4bb2      	ldr	r3, [pc, #712]	; (8006d64 <_dtoa_r+0xcd4>)
 8006a9a:	f7fa f8ad 	bl	8000bf8 <__aeabi_dmul>
 8006a9e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006aa2:	f7fa fb2f 	bl	8001104 <__aeabi_dcmpge>
 8006aa6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8006aa8:	4635      	mov	r5, r6
 8006aaa:	2800      	cmp	r0, #0
 8006aac:	d176      	bne.n	8006b9c <_dtoa_r+0xb0c>
 8006aae:	9a06      	ldr	r2, [sp, #24]
 8006ab0:	2331      	movs	r3, #49	; 0x31
 8006ab2:	3201      	adds	r2, #1
 8006ab4:	9206      	str	r2, [sp, #24]
 8006ab6:	f88b 3000 	strb.w	r3, [fp]
 8006aba:	f10b 0401 	add.w	r4, fp, #1
 8006abe:	4631      	mov	r1, r6
 8006ac0:	4648      	mov	r0, r9
 8006ac2:	f001 fa01 	bl	8007ec8 <_Bfree>
 8006ac6:	2d00      	cmp	r5, #0
 8006ac8:	f47f af34 	bne.w	8006934 <_dtoa_r+0x8a4>
 8006acc:	e736      	b.n	800693c <_dtoa_r+0x8ac>
 8006ace:	f000 8142 	beq.w	8006d56 <_dtoa_r+0xcc6>
 8006ad2:	9b06      	ldr	r3, [sp, #24]
 8006ad4:	425c      	negs	r4, r3
 8006ad6:	4ba4      	ldr	r3, [pc, #656]	; (8006d68 <_dtoa_r+0xcd8>)
 8006ad8:	f004 020f 	and.w	r2, r4, #15
 8006adc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006ae0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006ae4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006ae8:	f7fa f886 	bl	8000bf8 <__aeabi_dmul>
 8006aec:	1124      	asrs	r4, r4, #4
 8006aee:	e9cd 0100 	strd	r0, r1, [sp]
 8006af2:	f000 81c6 	beq.w	8006e82 <_dtoa_r+0xdf2>
 8006af6:	4d9d      	ldr	r5, [pc, #628]	; (8006d6c <_dtoa_r+0xcdc>)
 8006af8:	2300      	movs	r3, #0
 8006afa:	2602      	movs	r6, #2
 8006afc:	07e7      	lsls	r7, r4, #31
 8006afe:	d505      	bpl.n	8006b0c <_dtoa_r+0xa7c>
 8006b00:	e9d5 2300 	ldrd	r2, r3, [r5]
 8006b04:	f7fa f878 	bl	8000bf8 <__aeabi_dmul>
 8006b08:	3601      	adds	r6, #1
 8006b0a:	2301      	movs	r3, #1
 8006b0c:	1064      	asrs	r4, r4, #1
 8006b0e:	f105 0508 	add.w	r5, r5, #8
 8006b12:	d1f3      	bne.n	8006afc <_dtoa_r+0xa6c>
 8006b14:	2b00      	cmp	r3, #0
 8006b16:	f43f ac27 	beq.w	8006368 <_dtoa_r+0x2d8>
 8006b1a:	e9cd 0100 	strd	r0, r1, [sp]
 8006b1e:	e423      	b.n	8006368 <_dtoa_r+0x2d8>
 8006b20:	9b00      	ldr	r3, [sp, #0]
 8006b22:	2b00      	cmp	r3, #0
 8006b24:	f43f af6e 	beq.w	8006a04 <_dtoa_r+0x974>
 8006b28:	e726      	b.n	8006978 <_dtoa_r+0x8e8>
 8006b2a:	6869      	ldr	r1, [r5, #4]
 8006b2c:	4648      	mov	r0, r9
 8006b2e:	f001 f9a5 	bl	8007e7c <_Balloc>
 8006b32:	692b      	ldr	r3, [r5, #16]
 8006b34:	3302      	adds	r3, #2
 8006b36:	009a      	lsls	r2, r3, #2
 8006b38:	4604      	mov	r4, r0
 8006b3a:	f105 010c 	add.w	r1, r5, #12
 8006b3e:	300c      	adds	r0, #12
 8006b40:	f7f9 fd2c 	bl	800059c <memcpy>
 8006b44:	4621      	mov	r1, r4
 8006b46:	2201      	movs	r2, #1
 8006b48:	4648      	mov	r0, r9
 8006b4a:	f001 fb57 	bl	80081fc <__lshift>
 8006b4e:	4680      	mov	r8, r0
 8006b50:	e61f      	b.n	8006792 <_dtoa_r+0x702>
 8006b52:	2400      	movs	r4, #0
 8006b54:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8006b58:	4621      	mov	r1, r4
 8006b5a:	4648      	mov	r0, r9
 8006b5c:	f001 f98e 	bl	8007e7c <_Balloc>
 8006b60:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8006b64:	930e      	str	r3, [sp, #56]	; 0x38
 8006b66:	9309      	str	r3, [sp, #36]	; 0x24
 8006b68:	2301      	movs	r3, #1
 8006b6a:	4683      	mov	fp, r0
 8006b6c:	9407      	str	r4, [sp, #28]
 8006b6e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8006b72:	930a      	str	r3, [sp, #40]	; 0x28
 8006b74:	e4b6      	b.n	80064e4 <_dtoa_r+0x454>
 8006b76:	f001 f9b1 	bl	8007edc <__multadd>
 8006b7a:	4627      	mov	r7, r4
 8006b7c:	4605      	mov	r5, r0
 8006b7e:	4680      	mov	r8, r0
 8006b80:	e614      	b.n	80067ac <_dtoa_r+0x71c>
 8006b82:	4648      	mov	r0, r9
 8006b84:	f001 f9a0 	bl	8007ec8 <_Bfree>
 8006b88:	2301      	movs	r3, #1
 8006b8a:	e639      	b.n	8006800 <_dtoa_r+0x770>
 8006b8c:	9b02      	ldr	r3, [sp, #8]
 8006b8e:	2b02      	cmp	r3, #2
 8006b90:	f77f adf3 	ble.w	800677a <_dtoa_r+0x6ea>
 8006b94:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006b96:	2b00      	cmp	r3, #0
 8006b98:	f000 80cf 	beq.w	8006d3a <_dtoa_r+0xcaa>
 8006b9c:	9b07      	ldr	r3, [sp, #28]
 8006b9e:	43db      	mvns	r3, r3
 8006ba0:	9306      	str	r3, [sp, #24]
 8006ba2:	465c      	mov	r4, fp
 8006ba4:	e78b      	b.n	8006abe <_dtoa_r+0xa2e>
 8006ba6:	9a06      	ldr	r2, [sp, #24]
 8006ba8:	2331      	movs	r3, #49	; 0x31
 8006baa:	3201      	adds	r2, #1
 8006bac:	9206      	str	r2, [sp, #24]
 8006bae:	f88b 3000 	strb.w	r3, [fp]
 8006bb2:	e6b3      	b.n	800691c <_dtoa_r+0x88c>
 8006bb4:	2401      	movs	r4, #1
 8006bb6:	9409      	str	r4, [sp, #36]	; 0x24
 8006bb8:	9407      	str	r4, [sp, #28]
 8006bba:	f7ff bb8b 	b.w	80062d4 <_dtoa_r+0x244>
 8006bbe:	4630      	mov	r0, r6
 8006bc0:	f7f9 ffb0 	bl	8000b24 <__aeabi_i2d>
 8006bc4:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006bc8:	f7fa f816 	bl	8000bf8 <__aeabi_dmul>
 8006bcc:	2200      	movs	r2, #0
 8006bce:	4b68      	ldr	r3, [pc, #416]	; (8006d70 <_dtoa_r+0xce0>)
 8006bd0:	f7f9 fe5c 	bl	800088c <__adddf3>
 8006bd4:	4606      	mov	r6, r0
 8006bd6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8006bda:	2200      	movs	r2, #0
 8006bdc:	4b61      	ldr	r3, [pc, #388]	; (8006d64 <_dtoa_r+0xcd4>)
 8006bde:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006be2:	f7f9 fe51 	bl	8000888 <__aeabi_dsub>
 8006be6:	4632      	mov	r2, r6
 8006be8:	463b      	mov	r3, r7
 8006bea:	4604      	mov	r4, r0
 8006bec:	460d      	mov	r5, r1
 8006bee:	f7fa fa93 	bl	8001118 <__aeabi_dcmpgt>
 8006bf2:	2800      	cmp	r0, #0
 8006bf4:	d14f      	bne.n	8006c96 <_dtoa_r+0xc06>
 8006bf6:	4632      	mov	r2, r6
 8006bf8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8006bfc:	4620      	mov	r0, r4
 8006bfe:	4629      	mov	r1, r5
 8006c00:	f7fa fa6c 	bl	80010dc <__aeabi_dcmplt>
 8006c04:	2800      	cmp	r0, #0
 8006c06:	f43f ac69 	beq.w	80064dc <_dtoa_r+0x44c>
 8006c0a:	2600      	movs	r6, #0
 8006c0c:	4635      	mov	r5, r6
 8006c0e:	e7c5      	b.n	8006b9c <_dtoa_r+0xb0c>
 8006c10:	2301      	movs	r3, #1
 8006c12:	930a      	str	r3, [sp, #40]	; 0x28
 8006c14:	e6c8      	b.n	80069a8 <_dtoa_r+0x918>
 8006c16:	4651      	mov	r1, sl
 8006c18:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8006c1a:	4648      	mov	r0, r9
 8006c1c:	f001 fa9e 	bl	800815c <__pow5mult>
 8006c20:	4682      	mov	sl, r0
 8006c22:	e572      	b.n	800670a <_dtoa_r+0x67a>
 8006c24:	f8dd a000 	ldr.w	sl, [sp]
 8006c28:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006c2c:	e686      	b.n	800693c <_dtoa_r+0x8ac>
 8006c2e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006c30:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006c32:	1afb      	subs	r3, r7, r3
 8006c34:	441a      	add	r2, r3
 8006c36:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8006c3a:	2700      	movs	r7, #0
 8006c3c:	e512      	b.n	8006664 <_dtoa_r+0x5d4>
 8006c3e:	2b00      	cmp	r3, #0
 8006c40:	9402      	str	r4, [sp, #8]
 8006c42:	465e      	mov	r6, fp
 8006c44:	f107 0401 	add.w	r4, r7, #1
 8006c48:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006c4c:	f300 80ba 	bgt.w	8006dc4 <_dtoa_r+0xd34>
 8006c50:	9b00      	ldr	r3, [sp, #0]
 8006c52:	9502      	str	r5, [sp, #8]
 8006c54:	703b      	strb	r3, [r7, #0]
 8006c56:	4645      	mov	r5, r8
 8006c58:	e660      	b.n	800691c <_dtoa_r+0x88c>
 8006c5a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8006c5e:	2602      	movs	r6, #2
 8006c60:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8006c64:	f7ff bb67 	b.w	8006336 <_dtoa_r+0x2a6>
 8006c68:	9b00      	ldr	r3, [sp, #0]
 8006c6a:	2b39      	cmp	r3, #57	; 0x39
 8006c6c:	465e      	mov	r6, fp
 8006c6e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006c72:	f000 80b9 	beq.w	8006de8 <_dtoa_r+0xd58>
 8006c76:	9b00      	ldr	r3, [sp, #0]
 8006c78:	9502      	str	r5, [sp, #8]
 8006c7a:	3301      	adds	r3, #1
 8006c7c:	703b      	strb	r3, [r7, #0]
 8006c7e:	4645      	mov	r5, r8
 8006c80:	e64c      	b.n	800691c <_dtoa_r+0x88c>
 8006c82:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8006c86:	1a9c      	subs	r4, r3, r2
 8006c88:	e4f5      	b.n	8006676 <_dtoa_r+0x5e6>
 8006c8a:	465e      	mov	r6, fp
 8006c8c:	9502      	str	r5, [sp, #8]
 8006c8e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006c92:	4645      	mov	r5, r8
 8006c94:	e61a      	b.n	80068cc <_dtoa_r+0x83c>
 8006c96:	2600      	movs	r6, #0
 8006c98:	4635      	mov	r5, r6
 8006c9a:	e708      	b.n	8006aae <_dtoa_r+0xa1e>
 8006c9c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8006ca0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006ca4:	f7f9 ffa8 	bl	8000bf8 <__aeabi_dmul>
 8006ca8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8006caa:	f88b 5000 	strb.w	r5, [fp]
 8006cae:	2b01      	cmp	r3, #1
 8006cb0:	e9cd 0100 	strd	r0, r1, [sp]
 8006cb4:	d020      	beq.n	8006cf8 <_dtoa_r+0xc68>
 8006cb6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8006cb8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8006cbc:	445b      	add	r3, fp
 8006cbe:	4698      	mov	r8, r3
 8006cc0:	2200      	movs	r2, #0
 8006cc2:	4b2c      	ldr	r3, [pc, #176]	; (8006d74 <_dtoa_r+0xce4>)
 8006cc4:	4630      	mov	r0, r6
 8006cc6:	4639      	mov	r1, r7
 8006cc8:	f7f9 ff96 	bl	8000bf8 <__aeabi_dmul>
 8006ccc:	460f      	mov	r7, r1
 8006cce:	4606      	mov	r6, r0
 8006cd0:	f7fa fa42 	bl	8001158 <__aeabi_d2iz>
 8006cd4:	4605      	mov	r5, r0
 8006cd6:	f7f9 ff25 	bl	8000b24 <__aeabi_i2d>
 8006cda:	3530      	adds	r5, #48	; 0x30
 8006cdc:	4602      	mov	r2, r0
 8006cde:	460b      	mov	r3, r1
 8006ce0:	4630      	mov	r0, r6
 8006ce2:	4639      	mov	r1, r7
 8006ce4:	f7f9 fdd0 	bl	8000888 <__aeabi_dsub>
 8006ce8:	f804 5b01 	strb.w	r5, [r4], #1
 8006cec:	4544      	cmp	r4, r8
 8006cee:	4606      	mov	r6, r0
 8006cf0:	460f      	mov	r7, r1
 8006cf2:	d1e5      	bne.n	8006cc0 <_dtoa_r+0xc30>
 8006cf4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8006cf8:	4b1f      	ldr	r3, [pc, #124]	; (8006d78 <_dtoa_r+0xce8>)
 8006cfa:	2200      	movs	r2, #0
 8006cfc:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006d00:	f7f9 fdc4 	bl	800088c <__adddf3>
 8006d04:	4632      	mov	r2, r6
 8006d06:	463b      	mov	r3, r7
 8006d08:	f7fa f9e8 	bl	80010dc <__aeabi_dcmplt>
 8006d0c:	2800      	cmp	r0, #0
 8006d0e:	d070      	beq.n	8006df2 <_dtoa_r+0xd62>
 8006d10:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006d12:	9306      	str	r3, [sp, #24]
 8006d14:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8006d18:	e48f      	b.n	800663a <_dtoa_r+0x5aa>
 8006d1a:	2330      	movs	r3, #48	; 0x30
 8006d1c:	f88b 3000 	strb.w	r3, [fp]
 8006d20:	9b06      	ldr	r3, [sp, #24]
 8006d22:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8006d26:	3301      	adds	r3, #1
 8006d28:	9306      	str	r3, [sp, #24]
 8006d2a:	465b      	mov	r3, fp
 8006d2c:	e489      	b.n	8006642 <_dtoa_r+0x5b2>
 8006d2e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8006d30:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8006d34:	e6a0      	b.n	8006a78 <_dtoa_r+0x9e8>
 8006d36:	2300      	movs	r3, #0
 8006d38:	e676      	b.n	8006a28 <_dtoa_r+0x998>
 8006d3a:	4631      	mov	r1, r6
 8006d3c:	2205      	movs	r2, #5
 8006d3e:	4648      	mov	r0, r9
 8006d40:	f001 f8cc 	bl	8007edc <__multadd>
 8006d44:	4601      	mov	r1, r0
 8006d46:	4606      	mov	r6, r0
 8006d48:	4650      	mov	r0, sl
 8006d4a:	f001 faad 	bl	80082a8 <__mcmp>
 8006d4e:	2800      	cmp	r0, #0
 8006d50:	f73f aead 	bgt.w	8006aae <_dtoa_r+0xa1e>
 8006d54:	e722      	b.n	8006b9c <_dtoa_r+0xb0c>
 8006d56:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8006d5a:	2602      	movs	r6, #2
 8006d5c:	ed8d 7b00 	vstr	d7, [sp]
 8006d60:	f7ff bb02 	b.w	8006368 <_dtoa_r+0x2d8>
 8006d64:	40140000 	.word	0x40140000
 8006d68:	0800a7b0 	.word	0x0800a7b0
 8006d6c:	0800a788 	.word	0x0800a788
 8006d70:	401c0000 	.word	0x401c0000
 8006d74:	40240000 	.word	0x40240000
 8006d78:	3fe00000 	.word	0x3fe00000
 8006d7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006d7e:	2b00      	cmp	r3, #0
 8006d80:	f43f af1d 	beq.w	8006bbe <_dtoa_r+0xb2e>
 8006d84:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8006d86:	2c00      	cmp	r4, #0
 8006d88:	f77f aba8 	ble.w	80064dc <_dtoa_r+0x44c>
 8006d8c:	2200      	movs	r2, #0
 8006d8e:	4b45      	ldr	r3, [pc, #276]	; (8006ea4 <_dtoa_r+0xe14>)
 8006d90:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006d94:	f7f9 ff30 	bl	8000bf8 <__aeabi_dmul>
 8006d98:	e9cd 0100 	strd	r0, r1, [sp]
 8006d9c:	1c70      	adds	r0, r6, #1
 8006d9e:	f7f9 fec1 	bl	8000b24 <__aeabi_i2d>
 8006da2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006da6:	f7f9 ff27 	bl	8000bf8 <__aeabi_dmul>
 8006daa:	4b3f      	ldr	r3, [pc, #252]	; (8006ea8 <_dtoa_r+0xe18>)
 8006dac:	2200      	movs	r2, #0
 8006dae:	f7f9 fd6d 	bl	800088c <__adddf3>
 8006db2:	9b06      	ldr	r3, [sp, #24]
 8006db4:	9412      	str	r4, [sp, #72]	; 0x48
 8006db6:	3b01      	subs	r3, #1
 8006db8:	4606      	mov	r6, r0
 8006dba:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8006dbe:	9316      	str	r3, [sp, #88]	; 0x58
 8006dc0:	f7ff baf3 	b.w	80063aa <_dtoa_r+0x31a>
 8006dc4:	4651      	mov	r1, sl
 8006dc6:	2201      	movs	r2, #1
 8006dc8:	4648      	mov	r0, r9
 8006dca:	f001 fa17 	bl	80081fc <__lshift>
 8006dce:	4631      	mov	r1, r6
 8006dd0:	4682      	mov	sl, r0
 8006dd2:	f001 fa69 	bl	80082a8 <__mcmp>
 8006dd6:	2800      	cmp	r0, #0
 8006dd8:	dd3b      	ble.n	8006e52 <_dtoa_r+0xdc2>
 8006dda:	9b00      	ldr	r3, [sp, #0]
 8006ddc:	2b39      	cmp	r3, #57	; 0x39
 8006dde:	d003      	beq.n	8006de8 <_dtoa_r+0xd58>
 8006de0:	9b02      	ldr	r3, [sp, #8]
 8006de2:	3331      	adds	r3, #49	; 0x31
 8006de4:	9300      	str	r3, [sp, #0]
 8006de6:	e733      	b.n	8006c50 <_dtoa_r+0xbc0>
 8006de8:	2239      	movs	r2, #57	; 0x39
 8006dea:	9502      	str	r5, [sp, #8]
 8006dec:	703a      	strb	r2, [r7, #0]
 8006dee:	4645      	mov	r5, r8
 8006df0:	e58e      	b.n	8006910 <_dtoa_r+0x880>
 8006df2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006df6:	2000      	movs	r0, #0
 8006df8:	492c      	ldr	r1, [pc, #176]	; (8006eac <_dtoa_r+0xe1c>)
 8006dfa:	f7f9 fd45 	bl	8000888 <__aeabi_dsub>
 8006dfe:	4632      	mov	r2, r6
 8006e00:	463b      	mov	r3, r7
 8006e02:	f7fa f989 	bl	8001118 <__aeabi_dcmpgt>
 8006e06:	b910      	cbnz	r0, 8006e0e <_dtoa_r+0xd7e>
 8006e08:	f7ff bb68 	b.w	80064dc <_dtoa_r+0x44c>
 8006e0c:	4614      	mov	r4, r2
 8006e0e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8006e12:	2b30      	cmp	r3, #48	; 0x30
 8006e14:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8006e18:	d0f8      	beq.n	8006e0c <_dtoa_r+0xd7c>
 8006e1a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006e1c:	9306      	str	r3, [sp, #24]
 8006e1e:	e58d      	b.n	800693c <_dtoa_r+0x8ac>
 8006e20:	46d9      	mov	r9, fp
 8006e22:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8006e26:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8006e2a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006e2c:	9306      	str	r3, [sp, #24]
 8006e2e:	e404      	b.n	800663a <_dtoa_r+0x5aa>
 8006e30:	9b00      	ldr	r3, [sp, #0]
 8006e32:	2b39      	cmp	r3, #57	; 0x39
 8006e34:	4621      	mov	r1, r4
 8006e36:	4632      	mov	r2, r6
 8006e38:	f107 0401 	add.w	r4, r7, #1
 8006e3c:	465e      	mov	r6, fp
 8006e3e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006e42:	d0d1      	beq.n	8006de8 <_dtoa_r+0xd58>
 8006e44:	2a00      	cmp	r2, #0
 8006e46:	f77f af03 	ble.w	8006c50 <_dtoa_r+0xbc0>
 8006e4a:	460b      	mov	r3, r1
 8006e4c:	3331      	adds	r3, #49	; 0x31
 8006e4e:	9300      	str	r3, [sp, #0]
 8006e50:	e6fe      	b.n	8006c50 <_dtoa_r+0xbc0>
 8006e52:	f47f aefd 	bne.w	8006c50 <_dtoa_r+0xbc0>
 8006e56:	9b00      	ldr	r3, [sp, #0]
 8006e58:	07da      	lsls	r2, r3, #31
 8006e5a:	f57f aef9 	bpl.w	8006c50 <_dtoa_r+0xbc0>
 8006e5e:	e7bc      	b.n	8006dda <_dtoa_r+0xd4a>
 8006e60:	4629      	mov	r1, r5
 8006e62:	2300      	movs	r3, #0
 8006e64:	220a      	movs	r2, #10
 8006e66:	4648      	mov	r0, r9
 8006e68:	f001 f838 	bl	8007edc <__multadd>
 8006e6c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006e6e:	2b00      	cmp	r3, #0
 8006e70:	4605      	mov	r5, r0
 8006e72:	dd09      	ble.n	8006e88 <_dtoa_r+0xdf8>
 8006e74:	9309      	str	r3, [sp, #36]	; 0x24
 8006e76:	e484      	b.n	8006782 <_dtoa_r+0x6f2>
 8006e78:	9b02      	ldr	r3, [sp, #8]
 8006e7a:	2b02      	cmp	r3, #2
 8006e7c:	dc0e      	bgt.n	8006e9c <_dtoa_r+0xe0c>
 8006e7e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006e80:	e507      	b.n	8006892 <_dtoa_r+0x802>
 8006e82:	2602      	movs	r6, #2
 8006e84:	f7ff ba70 	b.w	8006368 <_dtoa_r+0x2d8>
 8006e88:	9b02      	ldr	r3, [sp, #8]
 8006e8a:	2b02      	cmp	r3, #2
 8006e8c:	dc06      	bgt.n	8006e9c <_dtoa_r+0xe0c>
 8006e8e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006e90:	e7f0      	b.n	8006e74 <_dtoa_r+0xde4>
 8006e92:	f43f ac59 	beq.w	8006748 <_dtoa_r+0x6b8>
 8006e96:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8006e9a:	e450      	b.n	800673e <_dtoa_r+0x6ae>
 8006e9c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006e9e:	9309      	str	r3, [sp, #36]	; 0x24
 8006ea0:	e678      	b.n	8006b94 <_dtoa_r+0xb04>
 8006ea2:	bf00      	nop
 8006ea4:	40240000 	.word	0x40240000
 8006ea8:	401c0000 	.word	0x401c0000
 8006eac:	3fe00000 	.word	0x3fe00000

08006eb0 <__sflush_r>:
 8006eb0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8006eb4:	b29a      	uxth	r2, r3
 8006eb6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006eba:	460c      	mov	r4, r1
 8006ebc:	0711      	lsls	r1, r2, #28
 8006ebe:	4680      	mov	r8, r0
 8006ec0:	d444      	bmi.n	8006f4c <__sflush_r+0x9c>
 8006ec2:	6862      	ldr	r2, [r4, #4]
 8006ec4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8006ec8:	2a00      	cmp	r2, #0
 8006eca:	81a3      	strh	r3, [r4, #12]
 8006ecc:	dd59      	ble.n	8006f82 <__sflush_r+0xd2>
 8006ece:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8006ed0:	2d00      	cmp	r5, #0
 8006ed2:	d053      	beq.n	8006f7c <__sflush_r+0xcc>
 8006ed4:	2200      	movs	r2, #0
 8006ed6:	b29b      	uxth	r3, r3
 8006ed8:	f8d8 6000 	ldr.w	r6, [r8]
 8006edc:	69e1      	ldr	r1, [r4, #28]
 8006ede:	f8c8 2000 	str.w	r2, [r8]
 8006ee2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8006ee6:	f040 8083 	bne.w	8006ff0 <__sflush_r+0x140>
 8006eea:	2301      	movs	r3, #1
 8006eec:	4640      	mov	r0, r8
 8006eee:	47a8      	blx	r5
 8006ef0:	1c42      	adds	r2, r0, #1
 8006ef2:	d04a      	beq.n	8006f8a <__sflush_r+0xda>
 8006ef4:	89a3      	ldrh	r3, [r4, #12]
 8006ef6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8006ef8:	69e1      	ldr	r1, [r4, #28]
 8006efa:	075b      	lsls	r3, r3, #29
 8006efc:	d505      	bpl.n	8006f0a <__sflush_r+0x5a>
 8006efe:	6862      	ldr	r2, [r4, #4]
 8006f00:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8006f02:	1a80      	subs	r0, r0, r2
 8006f04:	b10b      	cbz	r3, 8006f0a <__sflush_r+0x5a>
 8006f06:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8006f08:	1ac0      	subs	r0, r0, r3
 8006f0a:	4602      	mov	r2, r0
 8006f0c:	2300      	movs	r3, #0
 8006f0e:	4640      	mov	r0, r8
 8006f10:	47a8      	blx	r5
 8006f12:	1c47      	adds	r7, r0, #1
 8006f14:	d045      	beq.n	8006fa2 <__sflush_r+0xf2>
 8006f16:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f1a:	6922      	ldr	r2, [r4, #16]
 8006f1c:	6022      	str	r2, [r4, #0]
 8006f1e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8006f22:	2200      	movs	r2, #0
 8006f24:	81a3      	strh	r3, [r4, #12]
 8006f26:	04db      	lsls	r3, r3, #19
 8006f28:	6062      	str	r2, [r4, #4]
 8006f2a:	d500      	bpl.n	8006f2e <__sflush_r+0x7e>
 8006f2c:	6520      	str	r0, [r4, #80]	; 0x50
 8006f2e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006f30:	f8c8 6000 	str.w	r6, [r8]
 8006f34:	b311      	cbz	r1, 8006f7c <__sflush_r+0xcc>
 8006f36:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006f3a:	4299      	cmp	r1, r3
 8006f3c:	d002      	beq.n	8006f44 <__sflush_r+0x94>
 8006f3e:	4640      	mov	r0, r8
 8006f40:	f000 f95e 	bl	8007200 <_free_r>
 8006f44:	2000      	movs	r0, #0
 8006f46:	6320      	str	r0, [r4, #48]	; 0x30
 8006f48:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006f4c:	6926      	ldr	r6, [r4, #16]
 8006f4e:	b1ae      	cbz	r6, 8006f7c <__sflush_r+0xcc>
 8006f50:	6825      	ldr	r5, [r4, #0]
 8006f52:	6026      	str	r6, [r4, #0]
 8006f54:	0792      	lsls	r2, r2, #30
 8006f56:	bf0c      	ite	eq
 8006f58:	6963      	ldreq	r3, [r4, #20]
 8006f5a:	2300      	movne	r3, #0
 8006f5c:	1bad      	subs	r5, r5, r6
 8006f5e:	60a3      	str	r3, [r4, #8]
 8006f60:	e00a      	b.n	8006f78 <__sflush_r+0xc8>
 8006f62:	462b      	mov	r3, r5
 8006f64:	4632      	mov	r2, r6
 8006f66:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8006f68:	69e1      	ldr	r1, [r4, #28]
 8006f6a:	4640      	mov	r0, r8
 8006f6c:	47b8      	blx	r7
 8006f6e:	2800      	cmp	r0, #0
 8006f70:	eba5 0500 	sub.w	r5, r5, r0
 8006f74:	4406      	add	r6, r0
 8006f76:	dd2b      	ble.n	8006fd0 <__sflush_r+0x120>
 8006f78:	2d00      	cmp	r5, #0
 8006f7a:	dcf2      	bgt.n	8006f62 <__sflush_r+0xb2>
 8006f7c:	2000      	movs	r0, #0
 8006f7e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006f82:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8006f84:	2a00      	cmp	r2, #0
 8006f86:	dca2      	bgt.n	8006ece <__sflush_r+0x1e>
 8006f88:	e7f8      	b.n	8006f7c <__sflush_r+0xcc>
 8006f8a:	f8d8 3000 	ldr.w	r3, [r8]
 8006f8e:	2b00      	cmp	r3, #0
 8006f90:	d0b0      	beq.n	8006ef4 <__sflush_r+0x44>
 8006f92:	2b1d      	cmp	r3, #29
 8006f94:	d001      	beq.n	8006f9a <__sflush_r+0xea>
 8006f96:	2b16      	cmp	r3, #22
 8006f98:	d12c      	bne.n	8006ff4 <__sflush_r+0x144>
 8006f9a:	f8c8 6000 	str.w	r6, [r8]
 8006f9e:	2000      	movs	r0, #0
 8006fa0:	e7ed      	b.n	8006f7e <__sflush_r+0xce>
 8006fa2:	f8d8 1000 	ldr.w	r1, [r8]
 8006fa6:	291d      	cmp	r1, #29
 8006fa8:	d81a      	bhi.n	8006fe0 <__sflush_r+0x130>
 8006faa:	4b15      	ldr	r3, [pc, #84]	; (8007000 <__sflush_r+0x150>)
 8006fac:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006fb0:	40cb      	lsrs	r3, r1
 8006fb2:	43db      	mvns	r3, r3
 8006fb4:	f013 0301 	ands.w	r3, r3, #1
 8006fb8:	d114      	bne.n	8006fe4 <__sflush_r+0x134>
 8006fba:	6925      	ldr	r5, [r4, #16]
 8006fbc:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8006fc0:	e9c4 5300 	strd	r5, r3, [r4]
 8006fc4:	04d5      	lsls	r5, r2, #19
 8006fc6:	81a2      	strh	r2, [r4, #12]
 8006fc8:	d5b1      	bpl.n	8006f2e <__sflush_r+0x7e>
 8006fca:	2900      	cmp	r1, #0
 8006fcc:	d1af      	bne.n	8006f2e <__sflush_r+0x7e>
 8006fce:	e7ad      	b.n	8006f2c <__sflush_r+0x7c>
 8006fd0:	89a3      	ldrh	r3, [r4, #12]
 8006fd2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006fd6:	81a3      	strh	r3, [r4, #12]
 8006fd8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006fdc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006fe0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006fe4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8006fe8:	81a2      	strh	r2, [r4, #12]
 8006fea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006fee:	e7c6      	b.n	8006f7e <__sflush_r+0xce>
 8006ff0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8006ff2:	e782      	b.n	8006efa <__sflush_r+0x4a>
 8006ff4:	89a3      	ldrh	r3, [r4, #12]
 8006ff6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006ffa:	81a3      	strh	r3, [r4, #12]
 8006ffc:	e7bf      	b.n	8006f7e <__sflush_r+0xce>
 8006ffe:	bf00      	nop
 8007000:	20400001 	.word	0x20400001

08007004 <_fflush_r>:
 8007004:	b538      	push	{r3, r4, r5, lr}
 8007006:	460d      	mov	r5, r1
 8007008:	4604      	mov	r4, r0
 800700a:	b108      	cbz	r0, 8007010 <_fflush_r+0xc>
 800700c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800700e:	b1a3      	cbz	r3, 800703a <_fflush_r+0x36>
 8007010:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8007014:	b1b8      	cbz	r0, 8007046 <_fflush_r+0x42>
 8007016:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8007018:	07db      	lsls	r3, r3, #31
 800701a:	d401      	bmi.n	8007020 <_fflush_r+0x1c>
 800701c:	0581      	lsls	r1, r0, #22
 800701e:	d51a      	bpl.n	8007056 <_fflush_r+0x52>
 8007020:	4620      	mov	r0, r4
 8007022:	4629      	mov	r1, r5
 8007024:	f7ff ff44 	bl	8006eb0 <__sflush_r>
 8007028:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800702a:	07da      	lsls	r2, r3, #31
 800702c:	4604      	mov	r4, r0
 800702e:	d402      	bmi.n	8007036 <_fflush_r+0x32>
 8007030:	89ab      	ldrh	r3, [r5, #12]
 8007032:	059b      	lsls	r3, r3, #22
 8007034:	d50a      	bpl.n	800704c <_fflush_r+0x48>
 8007036:	4620      	mov	r0, r4
 8007038:	bd38      	pop	{r3, r4, r5, pc}
 800703a:	f000 f83f 	bl	80070bc <__sinit>
 800703e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8007042:	2800      	cmp	r0, #0
 8007044:	d1e7      	bne.n	8007016 <_fflush_r+0x12>
 8007046:	4604      	mov	r4, r0
 8007048:	4620      	mov	r0, r4
 800704a:	bd38      	pop	{r3, r4, r5, pc}
 800704c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800704e:	f000 fb87 	bl	8007760 <__retarget_lock_release_recursive>
 8007052:	4620      	mov	r0, r4
 8007054:	bd38      	pop	{r3, r4, r5, pc}
 8007056:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8007058:	f000 fb80 	bl	800775c <__retarget_lock_acquire_recursive>
 800705c:	e7e0      	b.n	8007020 <_fflush_r+0x1c>
 800705e:	bf00      	nop

08007060 <std>:
 8007060:	b510      	push	{r4, lr}
 8007062:	2300      	movs	r3, #0
 8007064:	4604      	mov	r4, r0
 8007066:	8181      	strh	r1, [r0, #12]
 8007068:	81c2      	strh	r2, [r0, #14]
 800706a:	e9c0 3300 	strd	r3, r3, [r0]
 800706e:	6083      	str	r3, [r0, #8]
 8007070:	6643      	str	r3, [r0, #100]	; 0x64
 8007072:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8007076:	6183      	str	r3, [r0, #24]
 8007078:	4619      	mov	r1, r3
 800707a:	2208      	movs	r2, #8
 800707c:	305c      	adds	r0, #92	; 0x5c
 800707e:	f7fd f8ab 	bl	80041d8 <memset>
 8007082:	4807      	ldr	r0, [pc, #28]	; (80070a0 <std+0x40>)
 8007084:	4907      	ldr	r1, [pc, #28]	; (80070a4 <std+0x44>)
 8007086:	4a08      	ldr	r2, [pc, #32]	; (80070a8 <std+0x48>)
 8007088:	4b08      	ldr	r3, [pc, #32]	; (80070ac <std+0x4c>)
 800708a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800708c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8007090:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8007094:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8007098:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800709c:	f000 bb5a 	b.w	8007754 <__retarget_lock_init_recursive>
 80070a0:	08008879 	.word	0x08008879
 80070a4:	0800889d 	.word	0x0800889d
 80070a8:	080088d9 	.word	0x080088d9
 80070ac:	080088f9 	.word	0x080088f9

080070b0 <_cleanup_r>:
 80070b0:	4901      	ldr	r1, [pc, #4]	; (80070b8 <_cleanup_r+0x8>)
 80070b2:	f000 bb17 	b.w	80076e4 <_fwalk_reent>
 80070b6:	bf00      	nop
 80070b8:	08008b69 	.word	0x08008b69

080070bc <__sinit>:
 80070bc:	b510      	push	{r4, lr}
 80070be:	4604      	mov	r4, r0
 80070c0:	4812      	ldr	r0, [pc, #72]	; (800710c <__sinit+0x50>)
 80070c2:	f000 fb4b 	bl	800775c <__retarget_lock_acquire_recursive>
 80070c6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80070c8:	b9d2      	cbnz	r2, 8007100 <__sinit+0x44>
 80070ca:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80070ce:	4810      	ldr	r0, [pc, #64]	; (8007110 <__sinit+0x54>)
 80070d0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80070d4:	2103      	movs	r1, #3
 80070d6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80070da:	63e0      	str	r0, [r4, #60]	; 0x3c
 80070dc:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80070e0:	6860      	ldr	r0, [r4, #4]
 80070e2:	2104      	movs	r1, #4
 80070e4:	f7ff ffbc 	bl	8007060 <std>
 80070e8:	2201      	movs	r2, #1
 80070ea:	2109      	movs	r1, #9
 80070ec:	68a0      	ldr	r0, [r4, #8]
 80070ee:	f7ff ffb7 	bl	8007060 <std>
 80070f2:	2202      	movs	r2, #2
 80070f4:	2112      	movs	r1, #18
 80070f6:	68e0      	ldr	r0, [r4, #12]
 80070f8:	f7ff ffb2 	bl	8007060 <std>
 80070fc:	2301      	movs	r3, #1
 80070fe:	63a3      	str	r3, [r4, #56]	; 0x38
 8007100:	4802      	ldr	r0, [pc, #8]	; (800710c <__sinit+0x50>)
 8007102:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8007106:	f000 bb2b 	b.w	8007760 <__retarget_lock_release_recursive>
 800710a:	bf00      	nop
 800710c:	20000b0c 	.word	0x20000b0c
 8007110:	080070b1 	.word	0x080070b1

08007114 <__sfp_lock_acquire>:
 8007114:	4801      	ldr	r0, [pc, #4]	; (800711c <__sfp_lock_acquire+0x8>)
 8007116:	f000 bb21 	b.w	800775c <__retarget_lock_acquire_recursive>
 800711a:	bf00      	nop
 800711c:	20000b20 	.word	0x20000b20

08007120 <__sfp_lock_release>:
 8007120:	4801      	ldr	r0, [pc, #4]	; (8007128 <__sfp_lock_release+0x8>)
 8007122:	f000 bb1d 	b.w	8007760 <__retarget_lock_release_recursive>
 8007126:	bf00      	nop
 8007128:	20000b20 	.word	0x20000b20

0800712c <__libc_fini_array>:
 800712c:	b538      	push	{r3, r4, r5, lr}
 800712e:	4c0a      	ldr	r4, [pc, #40]	; (8007158 <__libc_fini_array+0x2c>)
 8007130:	4d0a      	ldr	r5, [pc, #40]	; (800715c <__libc_fini_array+0x30>)
 8007132:	1b64      	subs	r4, r4, r5
 8007134:	10a4      	asrs	r4, r4, #2
 8007136:	d00a      	beq.n	800714e <__libc_fini_array+0x22>
 8007138:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800713c:	3b01      	subs	r3, #1
 800713e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8007142:	3c01      	subs	r4, #1
 8007144:	f855 3904 	ldr.w	r3, [r5], #-4
 8007148:	4798      	blx	r3
 800714a:	2c00      	cmp	r4, #0
 800714c:	d1f9      	bne.n	8007142 <__libc_fini_array+0x16>
 800714e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8007152:	f001 befd 	b.w	8008f50 <_fini>
 8007156:	bf00      	nop
 8007158:	0800a9ac 	.word	0x0800a9ac
 800715c:	0800a9a8 	.word	0x0800a9a8

08007160 <_malloc_trim_r>:
 8007160:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007162:	4f24      	ldr	r7, [pc, #144]	; (80071f4 <_malloc_trim_r+0x94>)
 8007164:	460c      	mov	r4, r1
 8007166:	4606      	mov	r6, r0
 8007168:	f000 fe7c 	bl	8007e64 <__malloc_lock>
 800716c:	68bb      	ldr	r3, [r7, #8]
 800716e:	685d      	ldr	r5, [r3, #4]
 8007170:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8007174:	310f      	adds	r1, #15
 8007176:	f025 0503 	bic.w	r5, r5, #3
 800717a:	4429      	add	r1, r5
 800717c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8007180:	f021 010f 	bic.w	r1, r1, #15
 8007184:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8007188:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800718c:	db07      	blt.n	800719e <_malloc_trim_r+0x3e>
 800718e:	2100      	movs	r1, #0
 8007190:	4630      	mov	r0, r6
 8007192:	f001 fb5f 	bl	8008854 <_sbrk_r>
 8007196:	68bb      	ldr	r3, [r7, #8]
 8007198:	442b      	add	r3, r5
 800719a:	4298      	cmp	r0, r3
 800719c:	d004      	beq.n	80071a8 <_malloc_trim_r+0x48>
 800719e:	4630      	mov	r0, r6
 80071a0:	f000 fe66 	bl	8007e70 <__malloc_unlock>
 80071a4:	2000      	movs	r0, #0
 80071a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80071a8:	4261      	negs	r1, r4
 80071aa:	4630      	mov	r0, r6
 80071ac:	f001 fb52 	bl	8008854 <_sbrk_r>
 80071b0:	3001      	adds	r0, #1
 80071b2:	d00d      	beq.n	80071d0 <_malloc_trim_r+0x70>
 80071b4:	4b10      	ldr	r3, [pc, #64]	; (80071f8 <_malloc_trim_r+0x98>)
 80071b6:	68ba      	ldr	r2, [r7, #8]
 80071b8:	6819      	ldr	r1, [r3, #0]
 80071ba:	1b2d      	subs	r5, r5, r4
 80071bc:	f045 0501 	orr.w	r5, r5, #1
 80071c0:	4630      	mov	r0, r6
 80071c2:	1b09      	subs	r1, r1, r4
 80071c4:	6055      	str	r5, [r2, #4]
 80071c6:	6019      	str	r1, [r3, #0]
 80071c8:	f000 fe52 	bl	8007e70 <__malloc_unlock>
 80071cc:	2001      	movs	r0, #1
 80071ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80071d0:	2100      	movs	r1, #0
 80071d2:	4630      	mov	r0, r6
 80071d4:	f001 fb3e 	bl	8008854 <_sbrk_r>
 80071d8:	68ba      	ldr	r2, [r7, #8]
 80071da:	1a83      	subs	r3, r0, r2
 80071dc:	2b0f      	cmp	r3, #15
 80071de:	ddde      	ble.n	800719e <_malloc_trim_r+0x3e>
 80071e0:	4c06      	ldr	r4, [pc, #24]	; (80071fc <_malloc_trim_r+0x9c>)
 80071e2:	4905      	ldr	r1, [pc, #20]	; (80071f8 <_malloc_trim_r+0x98>)
 80071e4:	6824      	ldr	r4, [r4, #0]
 80071e6:	f043 0301 	orr.w	r3, r3, #1
 80071ea:	1b00      	subs	r0, r0, r4
 80071ec:	6053      	str	r3, [r2, #4]
 80071ee:	6008      	str	r0, [r1, #0]
 80071f0:	e7d5      	b.n	800719e <_malloc_trim_r+0x3e>
 80071f2:	bf00      	nop
 80071f4:	20000454 	.word	0x20000454
 80071f8:	20000a84 	.word	0x20000a84
 80071fc:	2000085c 	.word	0x2000085c

08007200 <_free_r>:
 8007200:	2900      	cmp	r1, #0
 8007202:	d053      	beq.n	80072ac <_free_r+0xac>
 8007204:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007206:	460c      	mov	r4, r1
 8007208:	4606      	mov	r6, r0
 800720a:	f000 fe2b 	bl	8007e64 <__malloc_lock>
 800720e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8007212:	4f71      	ldr	r7, [pc, #452]	; (80073d8 <_free_r+0x1d8>)
 8007214:	f02c 0101 	bic.w	r1, ip, #1
 8007218:	f1a4 0508 	sub.w	r5, r4, #8
 800721c:	186b      	adds	r3, r5, r1
 800721e:	68b8      	ldr	r0, [r7, #8]
 8007220:	685a      	ldr	r2, [r3, #4]
 8007222:	4298      	cmp	r0, r3
 8007224:	f022 0203 	bic.w	r2, r2, #3
 8007228:	d053      	beq.n	80072d2 <_free_r+0xd2>
 800722a:	f01c 0f01 	tst.w	ip, #1
 800722e:	605a      	str	r2, [r3, #4]
 8007230:	eb03 0002 	add.w	r0, r3, r2
 8007234:	d13b      	bne.n	80072ae <_free_r+0xae>
 8007236:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800723a:	6840      	ldr	r0, [r0, #4]
 800723c:	eba5 050c 	sub.w	r5, r5, ip
 8007240:	f107 0e08 	add.w	lr, r7, #8
 8007244:	68ac      	ldr	r4, [r5, #8]
 8007246:	4574      	cmp	r4, lr
 8007248:	4461      	add	r1, ip
 800724a:	f000 0001 	and.w	r0, r0, #1
 800724e:	d075      	beq.n	800733c <_free_r+0x13c>
 8007250:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8007254:	f8c4 c00c 	str.w	ip, [r4, #12]
 8007258:	f8cc 4008 	str.w	r4, [ip, #8]
 800725c:	b360      	cbz	r0, 80072b8 <_free_r+0xb8>
 800725e:	f041 0301 	orr.w	r3, r1, #1
 8007262:	606b      	str	r3, [r5, #4]
 8007264:	5069      	str	r1, [r5, r1]
 8007266:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800726a:	d350      	bcc.n	800730e <_free_r+0x10e>
 800726c:	0a4b      	lsrs	r3, r1, #9
 800726e:	2b04      	cmp	r3, #4
 8007270:	d870      	bhi.n	8007354 <_free_r+0x154>
 8007272:	098b      	lsrs	r3, r1, #6
 8007274:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8007278:	00e4      	lsls	r4, r4, #3
 800727a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800727e:	1938      	adds	r0, r7, r4
 8007280:	593b      	ldr	r3, [r7, r4]
 8007282:	3808      	subs	r0, #8
 8007284:	4298      	cmp	r0, r3
 8007286:	d078      	beq.n	800737a <_free_r+0x17a>
 8007288:	685a      	ldr	r2, [r3, #4]
 800728a:	f022 0203 	bic.w	r2, r2, #3
 800728e:	428a      	cmp	r2, r1
 8007290:	d971      	bls.n	8007376 <_free_r+0x176>
 8007292:	689b      	ldr	r3, [r3, #8]
 8007294:	4298      	cmp	r0, r3
 8007296:	d1f7      	bne.n	8007288 <_free_r+0x88>
 8007298:	68c3      	ldr	r3, [r0, #12]
 800729a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800729e:	609d      	str	r5, [r3, #8]
 80072a0:	60c5      	str	r5, [r0, #12]
 80072a2:	4630      	mov	r0, r6
 80072a4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80072a8:	f000 bde2 	b.w	8007e70 <__malloc_unlock>
 80072ac:	4770      	bx	lr
 80072ae:	6840      	ldr	r0, [r0, #4]
 80072b0:	f000 0001 	and.w	r0, r0, #1
 80072b4:	2800      	cmp	r0, #0
 80072b6:	d1d2      	bne.n	800725e <_free_r+0x5e>
 80072b8:	6898      	ldr	r0, [r3, #8]
 80072ba:	4c48      	ldr	r4, [pc, #288]	; (80073dc <_free_r+0x1dc>)
 80072bc:	4411      	add	r1, r2
 80072be:	42a0      	cmp	r0, r4
 80072c0:	f041 0201 	orr.w	r2, r1, #1
 80072c4:	d062      	beq.n	800738c <_free_r+0x18c>
 80072c6:	68db      	ldr	r3, [r3, #12]
 80072c8:	60c3      	str	r3, [r0, #12]
 80072ca:	6098      	str	r0, [r3, #8]
 80072cc:	606a      	str	r2, [r5, #4]
 80072ce:	5069      	str	r1, [r5, r1]
 80072d0:	e7c9      	b.n	8007266 <_free_r+0x66>
 80072d2:	f01c 0f01 	tst.w	ip, #1
 80072d6:	440a      	add	r2, r1
 80072d8:	d107      	bne.n	80072ea <_free_r+0xea>
 80072da:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80072de:	1aed      	subs	r5, r5, r3
 80072e0:	441a      	add	r2, r3
 80072e2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80072e6:	60cb      	str	r3, [r1, #12]
 80072e8:	6099      	str	r1, [r3, #8]
 80072ea:	4b3d      	ldr	r3, [pc, #244]	; (80073e0 <_free_r+0x1e0>)
 80072ec:	681b      	ldr	r3, [r3, #0]
 80072ee:	f042 0101 	orr.w	r1, r2, #1
 80072f2:	4293      	cmp	r3, r2
 80072f4:	6069      	str	r1, [r5, #4]
 80072f6:	60bd      	str	r5, [r7, #8]
 80072f8:	d804      	bhi.n	8007304 <_free_r+0x104>
 80072fa:	4b3a      	ldr	r3, [pc, #232]	; (80073e4 <_free_r+0x1e4>)
 80072fc:	4630      	mov	r0, r6
 80072fe:	6819      	ldr	r1, [r3, #0]
 8007300:	f7ff ff2e 	bl	8007160 <_malloc_trim_r>
 8007304:	4630      	mov	r0, r6
 8007306:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800730a:	f000 bdb1 	b.w	8007e70 <__malloc_unlock>
 800730e:	08c9      	lsrs	r1, r1, #3
 8007310:	6878      	ldr	r0, [r7, #4]
 8007312:	1c4a      	adds	r2, r1, #1
 8007314:	2301      	movs	r3, #1
 8007316:	1089      	asrs	r1, r1, #2
 8007318:	408b      	lsls	r3, r1
 800731a:	4303      	orrs	r3, r0
 800731c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8007320:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8007324:	607b      	str	r3, [r7, #4]
 8007326:	3908      	subs	r1, #8
 8007328:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800732c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8007330:	60c5      	str	r5, [r0, #12]
 8007332:	4630      	mov	r0, r6
 8007334:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007338:	f000 bd9a 	b.w	8007e70 <__malloc_unlock>
 800733c:	2800      	cmp	r0, #0
 800733e:	d145      	bne.n	80073cc <_free_r+0x1cc>
 8007340:	440a      	add	r2, r1
 8007342:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8007346:	f042 0001 	orr.w	r0, r2, #1
 800734a:	60cb      	str	r3, [r1, #12]
 800734c:	6099      	str	r1, [r3, #8]
 800734e:	6068      	str	r0, [r5, #4]
 8007350:	50aa      	str	r2, [r5, r2]
 8007352:	e7d7      	b.n	8007304 <_free_r+0x104>
 8007354:	2b14      	cmp	r3, #20
 8007356:	d908      	bls.n	800736a <_free_r+0x16a>
 8007358:	2b54      	cmp	r3, #84	; 0x54
 800735a:	d81e      	bhi.n	800739a <_free_r+0x19a>
 800735c:	0b0b      	lsrs	r3, r1, #12
 800735e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8007362:	00e4      	lsls	r4, r4, #3
 8007364:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8007368:	e789      	b.n	800727e <_free_r+0x7e>
 800736a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800736e:	00e4      	lsls	r4, r4, #3
 8007370:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8007374:	e783      	b.n	800727e <_free_r+0x7e>
 8007376:	4618      	mov	r0, r3
 8007378:	e78e      	b.n	8007298 <_free_r+0x98>
 800737a:	1093      	asrs	r3, r2, #2
 800737c:	6879      	ldr	r1, [r7, #4]
 800737e:	2201      	movs	r2, #1
 8007380:	fa02 f303 	lsl.w	r3, r2, r3
 8007384:	430b      	orrs	r3, r1
 8007386:	607b      	str	r3, [r7, #4]
 8007388:	4603      	mov	r3, r0
 800738a:	e786      	b.n	800729a <_free_r+0x9a>
 800738c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8007390:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8007394:	606a      	str	r2, [r5, #4]
 8007396:	5069      	str	r1, [r5, r1]
 8007398:	e7b4      	b.n	8007304 <_free_r+0x104>
 800739a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800739e:	d806      	bhi.n	80073ae <_free_r+0x1ae>
 80073a0:	0bcb      	lsrs	r3, r1, #15
 80073a2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80073a6:	00e4      	lsls	r4, r4, #3
 80073a8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80073ac:	e767      	b.n	800727e <_free_r+0x7e>
 80073ae:	f240 5254 	movw	r2, #1364	; 0x554
 80073b2:	4293      	cmp	r3, r2
 80073b4:	d806      	bhi.n	80073c4 <_free_r+0x1c4>
 80073b6:	0c8b      	lsrs	r3, r1, #18
 80073b8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80073bc:	00e4      	lsls	r4, r4, #3
 80073be:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80073c2:	e75c      	b.n	800727e <_free_r+0x7e>
 80073c4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80073c8:	227e      	movs	r2, #126	; 0x7e
 80073ca:	e758      	b.n	800727e <_free_r+0x7e>
 80073cc:	f041 0201 	orr.w	r2, r1, #1
 80073d0:	606a      	str	r2, [r5, #4]
 80073d2:	6019      	str	r1, [r3, #0]
 80073d4:	e796      	b.n	8007304 <_free_r+0x104>
 80073d6:	bf00      	nop
 80073d8:	20000454 	.word	0x20000454
 80073dc:	2000045c 	.word	0x2000045c
 80073e0:	20000860 	.word	0x20000860
 80073e4:	20000ab4 	.word	0x20000ab4

080073e8 <__sfvwrite_r>:
 80073e8:	6893      	ldr	r3, [r2, #8]
 80073ea:	2b00      	cmp	r3, #0
 80073ec:	f000 80e4 	beq.w	80075b8 <__sfvwrite_r+0x1d0>
 80073f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80073f4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80073f8:	b29b      	uxth	r3, r3
 80073fa:	460c      	mov	r4, r1
 80073fc:	0719      	lsls	r1, r3, #28
 80073fe:	b083      	sub	sp, #12
 8007400:	4682      	mov	sl, r0
 8007402:	4690      	mov	r8, r2
 8007404:	d535      	bpl.n	8007472 <__sfvwrite_r+0x8a>
 8007406:	6922      	ldr	r2, [r4, #16]
 8007408:	b39a      	cbz	r2, 8007472 <__sfvwrite_r+0x8a>
 800740a:	f013 0202 	ands.w	r2, r3, #2
 800740e:	f8d8 6000 	ldr.w	r6, [r8]
 8007412:	d03d      	beq.n	8007490 <__sfvwrite_r+0xa8>
 8007414:	2700      	movs	r7, #0
 8007416:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800741a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800741e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80076e0 <__sfvwrite_r+0x2f8>
 8007422:	463d      	mov	r5, r7
 8007424:	454d      	cmp	r5, r9
 8007426:	462b      	mov	r3, r5
 8007428:	463a      	mov	r2, r7
 800742a:	bf28      	it	cs
 800742c:	464b      	movcs	r3, r9
 800742e:	4661      	mov	r1, ip
 8007430:	4650      	mov	r0, sl
 8007432:	b1d5      	cbz	r5, 800746a <__sfvwrite_r+0x82>
 8007434:	47d8      	blx	fp
 8007436:	2800      	cmp	r0, #0
 8007438:	f340 80c6 	ble.w	80075c8 <__sfvwrite_r+0x1e0>
 800743c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007440:	1a1b      	subs	r3, r3, r0
 8007442:	4407      	add	r7, r0
 8007444:	1a2d      	subs	r5, r5, r0
 8007446:	f8c8 3008 	str.w	r3, [r8, #8]
 800744a:	2b00      	cmp	r3, #0
 800744c:	f000 80b0 	beq.w	80075b0 <__sfvwrite_r+0x1c8>
 8007450:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8007454:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8007458:	454d      	cmp	r5, r9
 800745a:	462b      	mov	r3, r5
 800745c:	463a      	mov	r2, r7
 800745e:	bf28      	it	cs
 8007460:	464b      	movcs	r3, r9
 8007462:	4661      	mov	r1, ip
 8007464:	4650      	mov	r0, sl
 8007466:	2d00      	cmp	r5, #0
 8007468:	d1e4      	bne.n	8007434 <__sfvwrite_r+0x4c>
 800746a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800746e:	3608      	adds	r6, #8
 8007470:	e7d8      	b.n	8007424 <__sfvwrite_r+0x3c>
 8007472:	4621      	mov	r1, r4
 8007474:	4650      	mov	r0, sl
 8007476:	f7fe fd03 	bl	8005e80 <__swsetup_r>
 800747a:	2800      	cmp	r0, #0
 800747c:	f040 812a 	bne.w	80076d4 <__sfvwrite_r+0x2ec>
 8007480:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007484:	f8d8 6000 	ldr.w	r6, [r8]
 8007488:	b29b      	uxth	r3, r3
 800748a:	f013 0202 	ands.w	r2, r3, #2
 800748e:	d1c1      	bne.n	8007414 <__sfvwrite_r+0x2c>
 8007490:	f013 0901 	ands.w	r9, r3, #1
 8007494:	d15d      	bne.n	8007552 <__sfvwrite_r+0x16a>
 8007496:	68a7      	ldr	r7, [r4, #8]
 8007498:	6820      	ldr	r0, [r4, #0]
 800749a:	464d      	mov	r5, r9
 800749c:	2d00      	cmp	r5, #0
 800749e:	d054      	beq.n	800754a <__sfvwrite_r+0x162>
 80074a0:	059a      	lsls	r2, r3, #22
 80074a2:	f140 809b 	bpl.w	80075dc <__sfvwrite_r+0x1f4>
 80074a6:	42af      	cmp	r7, r5
 80074a8:	46bb      	mov	fp, r7
 80074aa:	f200 80d8 	bhi.w	800765e <__sfvwrite_r+0x276>
 80074ae:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80074b2:	d02f      	beq.n	8007514 <__sfvwrite_r+0x12c>
 80074b4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80074b8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80074bc:	eba0 0b01 	sub.w	fp, r0, r1
 80074c0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80074c4:	1c68      	adds	r0, r5, #1
 80074c6:	107f      	asrs	r7, r7, #1
 80074c8:	4458      	add	r0, fp
 80074ca:	42b8      	cmp	r0, r7
 80074cc:	463a      	mov	r2, r7
 80074ce:	bf84      	itt	hi
 80074d0:	4607      	movhi	r7, r0
 80074d2:	463a      	movhi	r2, r7
 80074d4:	055b      	lsls	r3, r3, #21
 80074d6:	f140 80d3 	bpl.w	8007680 <__sfvwrite_r+0x298>
 80074da:	4611      	mov	r1, r2
 80074dc:	4650      	mov	r0, sl
 80074de:	f000 f9b9 	bl	8007854 <_malloc_r>
 80074e2:	2800      	cmp	r0, #0
 80074e4:	f000 80f0 	beq.w	80076c8 <__sfvwrite_r+0x2e0>
 80074e8:	465a      	mov	r2, fp
 80074ea:	6921      	ldr	r1, [r4, #16]
 80074ec:	9001      	str	r0, [sp, #4]
 80074ee:	f7f9 f855 	bl	800059c <memcpy>
 80074f2:	89a2      	ldrh	r2, [r4, #12]
 80074f4:	9b01      	ldr	r3, [sp, #4]
 80074f6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80074fa:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80074fe:	81a2      	strh	r2, [r4, #12]
 8007500:	eba7 020b 	sub.w	r2, r7, fp
 8007504:	eb03 000b 	add.w	r0, r3, fp
 8007508:	6167      	str	r7, [r4, #20]
 800750a:	6123      	str	r3, [r4, #16]
 800750c:	6020      	str	r0, [r4, #0]
 800750e:	60a2      	str	r2, [r4, #8]
 8007510:	462f      	mov	r7, r5
 8007512:	46ab      	mov	fp, r5
 8007514:	465a      	mov	r2, fp
 8007516:	4649      	mov	r1, r9
 8007518:	f000 fc40 	bl	8007d9c <memmove>
 800751c:	68a2      	ldr	r2, [r4, #8]
 800751e:	6823      	ldr	r3, [r4, #0]
 8007520:	1bd2      	subs	r2, r2, r7
 8007522:	445b      	add	r3, fp
 8007524:	462f      	mov	r7, r5
 8007526:	60a2      	str	r2, [r4, #8]
 8007528:	6023      	str	r3, [r4, #0]
 800752a:	2500      	movs	r5, #0
 800752c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007530:	1bdb      	subs	r3, r3, r7
 8007532:	44b9      	add	r9, r7
 8007534:	f8c8 3008 	str.w	r3, [r8, #8]
 8007538:	2b00      	cmp	r3, #0
 800753a:	d039      	beq.n	80075b0 <__sfvwrite_r+0x1c8>
 800753c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007540:	68a7      	ldr	r7, [r4, #8]
 8007542:	6820      	ldr	r0, [r4, #0]
 8007544:	b29b      	uxth	r3, r3
 8007546:	2d00      	cmp	r5, #0
 8007548:	d1aa      	bne.n	80074a0 <__sfvwrite_r+0xb8>
 800754a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800754e:	3608      	adds	r6, #8
 8007550:	e7a4      	b.n	800749c <__sfvwrite_r+0xb4>
 8007552:	4633      	mov	r3, r6
 8007554:	4691      	mov	r9, r2
 8007556:	4610      	mov	r0, r2
 8007558:	4617      	mov	r7, r2
 800755a:	464e      	mov	r6, r9
 800755c:	469b      	mov	fp, r3
 800755e:	2f00      	cmp	r7, #0
 8007560:	d06b      	beq.n	800763a <__sfvwrite_r+0x252>
 8007562:	2800      	cmp	r0, #0
 8007564:	d071      	beq.n	800764a <__sfvwrite_r+0x262>
 8007566:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800756a:	6820      	ldr	r0, [r4, #0]
 800756c:	45b9      	cmp	r9, r7
 800756e:	464b      	mov	r3, r9
 8007570:	bf28      	it	cs
 8007572:	463b      	movcs	r3, r7
 8007574:	4288      	cmp	r0, r1
 8007576:	d903      	bls.n	8007580 <__sfvwrite_r+0x198>
 8007578:	68a5      	ldr	r5, [r4, #8]
 800757a:	4415      	add	r5, r2
 800757c:	42ab      	cmp	r3, r5
 800757e:	dc71      	bgt.n	8007664 <__sfvwrite_r+0x27c>
 8007580:	429a      	cmp	r2, r3
 8007582:	f300 8093 	bgt.w	80076ac <__sfvwrite_r+0x2c4>
 8007586:	4613      	mov	r3, r2
 8007588:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800758a:	69e1      	ldr	r1, [r4, #28]
 800758c:	4632      	mov	r2, r6
 800758e:	4650      	mov	r0, sl
 8007590:	47a8      	blx	r5
 8007592:	1e05      	subs	r5, r0, #0
 8007594:	dd18      	ble.n	80075c8 <__sfvwrite_r+0x1e0>
 8007596:	ebb9 0905 	subs.w	r9, r9, r5
 800759a:	d00f      	beq.n	80075bc <__sfvwrite_r+0x1d4>
 800759c:	2001      	movs	r0, #1
 800759e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80075a2:	1b5b      	subs	r3, r3, r5
 80075a4:	442e      	add	r6, r5
 80075a6:	1b7f      	subs	r7, r7, r5
 80075a8:	f8c8 3008 	str.w	r3, [r8, #8]
 80075ac:	2b00      	cmp	r3, #0
 80075ae:	d1d6      	bne.n	800755e <__sfvwrite_r+0x176>
 80075b0:	2000      	movs	r0, #0
 80075b2:	b003      	add	sp, #12
 80075b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80075b8:	2000      	movs	r0, #0
 80075ba:	4770      	bx	lr
 80075bc:	4621      	mov	r1, r4
 80075be:	4650      	mov	r0, sl
 80075c0:	f7ff fd20 	bl	8007004 <_fflush_r>
 80075c4:	2800      	cmp	r0, #0
 80075c6:	d0ea      	beq.n	800759e <__sfvwrite_r+0x1b6>
 80075c8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80075cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80075d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80075d4:	81a3      	strh	r3, [r4, #12]
 80075d6:	b003      	add	sp, #12
 80075d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80075dc:	6923      	ldr	r3, [r4, #16]
 80075de:	4283      	cmp	r3, r0
 80075e0:	d315      	bcc.n	800760e <__sfvwrite_r+0x226>
 80075e2:	6961      	ldr	r1, [r4, #20]
 80075e4:	42a9      	cmp	r1, r5
 80075e6:	d812      	bhi.n	800760e <__sfvwrite_r+0x226>
 80075e8:	4b3c      	ldr	r3, [pc, #240]	; (80076dc <__sfvwrite_r+0x2f4>)
 80075ea:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80075ec:	429d      	cmp	r5, r3
 80075ee:	bf94      	ite	ls
 80075f0:	462b      	movls	r3, r5
 80075f2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80075f6:	464a      	mov	r2, r9
 80075f8:	fb93 f3f1 	sdiv	r3, r3, r1
 80075fc:	4650      	mov	r0, sl
 80075fe:	fb01 f303 	mul.w	r3, r1, r3
 8007602:	69e1      	ldr	r1, [r4, #28]
 8007604:	47b8      	blx	r7
 8007606:	1e07      	subs	r7, r0, #0
 8007608:	ddde      	ble.n	80075c8 <__sfvwrite_r+0x1e0>
 800760a:	1bed      	subs	r5, r5, r7
 800760c:	e78e      	b.n	800752c <__sfvwrite_r+0x144>
 800760e:	42af      	cmp	r7, r5
 8007610:	bf28      	it	cs
 8007612:	462f      	movcs	r7, r5
 8007614:	463a      	mov	r2, r7
 8007616:	4649      	mov	r1, r9
 8007618:	f000 fbc0 	bl	8007d9c <memmove>
 800761c:	68a3      	ldr	r3, [r4, #8]
 800761e:	6822      	ldr	r2, [r4, #0]
 8007620:	1bdb      	subs	r3, r3, r7
 8007622:	443a      	add	r2, r7
 8007624:	60a3      	str	r3, [r4, #8]
 8007626:	6022      	str	r2, [r4, #0]
 8007628:	2b00      	cmp	r3, #0
 800762a:	d1ee      	bne.n	800760a <__sfvwrite_r+0x222>
 800762c:	4621      	mov	r1, r4
 800762e:	4650      	mov	r0, sl
 8007630:	f7ff fce8 	bl	8007004 <_fflush_r>
 8007634:	2800      	cmp	r0, #0
 8007636:	d0e8      	beq.n	800760a <__sfvwrite_r+0x222>
 8007638:	e7c6      	b.n	80075c8 <__sfvwrite_r+0x1e0>
 800763a:	f10b 0308 	add.w	r3, fp, #8
 800763e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8007642:	469b      	mov	fp, r3
 8007644:	3308      	adds	r3, #8
 8007646:	2f00      	cmp	r7, #0
 8007648:	d0f9      	beq.n	800763e <__sfvwrite_r+0x256>
 800764a:	463a      	mov	r2, r7
 800764c:	210a      	movs	r1, #10
 800764e:	4630      	mov	r0, r6
 8007650:	f7f9 f8c6 	bl	80007e0 <memchr>
 8007654:	b338      	cbz	r0, 80076a6 <__sfvwrite_r+0x2be>
 8007656:	3001      	adds	r0, #1
 8007658:	eba0 0906 	sub.w	r9, r0, r6
 800765c:	e783      	b.n	8007566 <__sfvwrite_r+0x17e>
 800765e:	462f      	mov	r7, r5
 8007660:	46ab      	mov	fp, r5
 8007662:	e757      	b.n	8007514 <__sfvwrite_r+0x12c>
 8007664:	4631      	mov	r1, r6
 8007666:	462a      	mov	r2, r5
 8007668:	f000 fb98 	bl	8007d9c <memmove>
 800766c:	6823      	ldr	r3, [r4, #0]
 800766e:	442b      	add	r3, r5
 8007670:	6023      	str	r3, [r4, #0]
 8007672:	4621      	mov	r1, r4
 8007674:	4650      	mov	r0, sl
 8007676:	f7ff fcc5 	bl	8007004 <_fflush_r>
 800767a:	2800      	cmp	r0, #0
 800767c:	d08b      	beq.n	8007596 <__sfvwrite_r+0x1ae>
 800767e:	e7a3      	b.n	80075c8 <__sfvwrite_r+0x1e0>
 8007680:	4650      	mov	r0, sl
 8007682:	f000 ff05 	bl	8008490 <_realloc_r>
 8007686:	4603      	mov	r3, r0
 8007688:	2800      	cmp	r0, #0
 800768a:	f47f af39 	bne.w	8007500 <__sfvwrite_r+0x118>
 800768e:	6921      	ldr	r1, [r4, #16]
 8007690:	4650      	mov	r0, sl
 8007692:	f7ff fdb5 	bl	8007200 <_free_r>
 8007696:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800769a:	220c      	movs	r2, #12
 800769c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80076a0:	f8ca 2000 	str.w	r2, [sl]
 80076a4:	e792      	b.n	80075cc <__sfvwrite_r+0x1e4>
 80076a6:	f107 0901 	add.w	r9, r7, #1
 80076aa:	e75c      	b.n	8007566 <__sfvwrite_r+0x17e>
 80076ac:	461a      	mov	r2, r3
 80076ae:	4631      	mov	r1, r6
 80076b0:	9301      	str	r3, [sp, #4]
 80076b2:	f000 fb73 	bl	8007d9c <memmove>
 80076b6:	9b01      	ldr	r3, [sp, #4]
 80076b8:	68a1      	ldr	r1, [r4, #8]
 80076ba:	6822      	ldr	r2, [r4, #0]
 80076bc:	1ac9      	subs	r1, r1, r3
 80076be:	441a      	add	r2, r3
 80076c0:	60a1      	str	r1, [r4, #8]
 80076c2:	6022      	str	r2, [r4, #0]
 80076c4:	461d      	mov	r5, r3
 80076c6:	e766      	b.n	8007596 <__sfvwrite_r+0x1ae>
 80076c8:	230c      	movs	r3, #12
 80076ca:	f8ca 3000 	str.w	r3, [sl]
 80076ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80076d2:	e77b      	b.n	80075cc <__sfvwrite_r+0x1e4>
 80076d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80076d8:	e76b      	b.n	80075b2 <__sfvwrite_r+0x1ca>
 80076da:	bf00      	nop
 80076dc:	7ffffffe 	.word	0x7ffffffe
 80076e0:	7ffffc00 	.word	0x7ffffc00

080076e4 <_fwalk_reent>:
 80076e4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80076e8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80076ec:	d01f      	beq.n	800772e <_fwalk_reent+0x4a>
 80076ee:	4688      	mov	r8, r1
 80076f0:	4606      	mov	r6, r0
 80076f2:	f04f 0900 	mov.w	r9, #0
 80076f6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80076fa:	3d01      	subs	r5, #1
 80076fc:	d411      	bmi.n	8007722 <_fwalk_reent+0x3e>
 80076fe:	89a3      	ldrh	r3, [r4, #12]
 8007700:	2b01      	cmp	r3, #1
 8007702:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8007706:	4621      	mov	r1, r4
 8007708:	4630      	mov	r0, r6
 800770a:	d906      	bls.n	800771a <_fwalk_reent+0x36>
 800770c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8007710:	3301      	adds	r3, #1
 8007712:	d002      	beq.n	800771a <_fwalk_reent+0x36>
 8007714:	47c0      	blx	r8
 8007716:	ea49 0900 	orr.w	r9, r9, r0
 800771a:	1c6b      	adds	r3, r5, #1
 800771c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8007720:	d1ed      	bne.n	80076fe <_fwalk_reent+0x1a>
 8007722:	683f      	ldr	r7, [r7, #0]
 8007724:	2f00      	cmp	r7, #0
 8007726:	d1e6      	bne.n	80076f6 <_fwalk_reent+0x12>
 8007728:	4648      	mov	r0, r9
 800772a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800772e:	46b9      	mov	r9, r7
 8007730:	4648      	mov	r0, r9
 8007732:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007736:	bf00      	nop

08007738 <_localeconv_r>:
 8007738:	4a04      	ldr	r2, [pc, #16]	; (800774c <_localeconv_r+0x14>)
 800773a:	4b05      	ldr	r3, [pc, #20]	; (8007750 <_localeconv_r+0x18>)
 800773c:	6812      	ldr	r2, [r2, #0]
 800773e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8007740:	2800      	cmp	r0, #0
 8007742:	bf08      	it	eq
 8007744:	4618      	moveq	r0, r3
 8007746:	30f0      	adds	r0, #240	; 0xf0
 8007748:	4770      	bx	lr
 800774a:	bf00      	nop
 800774c:	20000020 	.word	0x20000020
 8007750:	20000864 	.word	0x20000864

08007754 <__retarget_lock_init_recursive>:
 8007754:	4770      	bx	lr
 8007756:	bf00      	nop

08007758 <__retarget_lock_close_recursive>:
 8007758:	4770      	bx	lr
 800775a:	bf00      	nop

0800775c <__retarget_lock_acquire_recursive>:
 800775c:	4770      	bx	lr
 800775e:	bf00      	nop

08007760 <__retarget_lock_release_recursive>:
 8007760:	4770      	bx	lr
 8007762:	bf00      	nop

08007764 <__swhatbuf_r>:
 8007764:	b570      	push	{r4, r5, r6, lr}
 8007766:	460c      	mov	r4, r1
 8007768:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800776c:	2900      	cmp	r1, #0
 800776e:	b096      	sub	sp, #88	; 0x58
 8007770:	4615      	mov	r5, r2
 8007772:	461e      	mov	r6, r3
 8007774:	da0f      	bge.n	8007796 <__swhatbuf_r+0x32>
 8007776:	89a2      	ldrh	r2, [r4, #12]
 8007778:	2300      	movs	r3, #0
 800777a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800777e:	6033      	str	r3, [r6, #0]
 8007780:	d104      	bne.n	800778c <__swhatbuf_r+0x28>
 8007782:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8007786:	602b      	str	r3, [r5, #0]
 8007788:	b016      	add	sp, #88	; 0x58
 800778a:	bd70      	pop	{r4, r5, r6, pc}
 800778c:	2240      	movs	r2, #64	; 0x40
 800778e:	4618      	mov	r0, r3
 8007790:	602a      	str	r2, [r5, #0]
 8007792:	b016      	add	sp, #88	; 0x58
 8007794:	bd70      	pop	{r4, r5, r6, pc}
 8007796:	466a      	mov	r2, sp
 8007798:	f001 fad0 	bl	8008d3c <_fstat_r>
 800779c:	2800      	cmp	r0, #0
 800779e:	dbea      	blt.n	8007776 <__swhatbuf_r+0x12>
 80077a0:	9b01      	ldr	r3, [sp, #4]
 80077a2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80077a6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80077aa:	fab3 f383 	clz	r3, r3
 80077ae:	095b      	lsrs	r3, r3, #5
 80077b0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80077b4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80077b8:	6033      	str	r3, [r6, #0]
 80077ba:	602a      	str	r2, [r5, #0]
 80077bc:	b016      	add	sp, #88	; 0x58
 80077be:	bd70      	pop	{r4, r5, r6, pc}

080077c0 <__smakebuf_r>:
 80077c0:	898a      	ldrh	r2, [r1, #12]
 80077c2:	0792      	lsls	r2, r2, #30
 80077c4:	460b      	mov	r3, r1
 80077c6:	d506      	bpl.n	80077d6 <__smakebuf_r+0x16>
 80077c8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80077cc:	2101      	movs	r1, #1
 80077ce:	601a      	str	r2, [r3, #0]
 80077d0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80077d4:	4770      	bx	lr
 80077d6:	b570      	push	{r4, r5, r6, lr}
 80077d8:	b082      	sub	sp, #8
 80077da:	ab01      	add	r3, sp, #4
 80077dc:	466a      	mov	r2, sp
 80077de:	460c      	mov	r4, r1
 80077e0:	4605      	mov	r5, r0
 80077e2:	f7ff ffbf 	bl	8007764 <__swhatbuf_r>
 80077e6:	9900      	ldr	r1, [sp, #0]
 80077e8:	4606      	mov	r6, r0
 80077ea:	4628      	mov	r0, r5
 80077ec:	f000 f832 	bl	8007854 <_malloc_r>
 80077f0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80077f4:	b1d8      	cbz	r0, 800782e <__smakebuf_r+0x6e>
 80077f6:	4916      	ldr	r1, [pc, #88]	; (8007850 <__smakebuf_r+0x90>)
 80077f8:	63e9      	str	r1, [r5, #60]	; 0x3c
 80077fa:	9a01      	ldr	r2, [sp, #4]
 80077fc:	9900      	ldr	r1, [sp, #0]
 80077fe:	6020      	str	r0, [r4, #0]
 8007800:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8007804:	81a3      	strh	r3, [r4, #12]
 8007806:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800780a:	b91a      	cbnz	r2, 8007814 <__smakebuf_r+0x54>
 800780c:	4333      	orrs	r3, r6
 800780e:	81a3      	strh	r3, [r4, #12]
 8007810:	b002      	add	sp, #8
 8007812:	bd70      	pop	{r4, r5, r6, pc}
 8007814:	4628      	mov	r0, r5
 8007816:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800781a:	f001 faa3 	bl	8008d64 <_isatty_r>
 800781e:	b1a0      	cbz	r0, 800784a <__smakebuf_r+0x8a>
 8007820:	89a3      	ldrh	r3, [r4, #12]
 8007822:	f023 0303 	bic.w	r3, r3, #3
 8007826:	f043 0301 	orr.w	r3, r3, #1
 800782a:	b21b      	sxth	r3, r3
 800782c:	e7ee      	b.n	800780c <__smakebuf_r+0x4c>
 800782e:	059a      	lsls	r2, r3, #22
 8007830:	d4ee      	bmi.n	8007810 <__smakebuf_r+0x50>
 8007832:	f023 0303 	bic.w	r3, r3, #3
 8007836:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800783a:	f043 0302 	orr.w	r3, r3, #2
 800783e:	2101      	movs	r1, #1
 8007840:	81a3      	strh	r3, [r4, #12]
 8007842:	6022      	str	r2, [r4, #0]
 8007844:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8007848:	e7e2      	b.n	8007810 <__smakebuf_r+0x50>
 800784a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800784e:	e7dd      	b.n	800780c <__smakebuf_r+0x4c>
 8007850:	080070b1 	.word	0x080070b1

08007854 <_malloc_r>:
 8007854:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007858:	f101 050b 	add.w	r5, r1, #11
 800785c:	2d16      	cmp	r5, #22
 800785e:	b083      	sub	sp, #12
 8007860:	4606      	mov	r6, r0
 8007862:	d823      	bhi.n	80078ac <_malloc_r+0x58>
 8007864:	2910      	cmp	r1, #16
 8007866:	f200 80b9 	bhi.w	80079dc <_malloc_r+0x188>
 800786a:	f000 fafb 	bl	8007e64 <__malloc_lock>
 800786e:	2510      	movs	r5, #16
 8007870:	2318      	movs	r3, #24
 8007872:	2002      	movs	r0, #2
 8007874:	4fc5      	ldr	r7, [pc, #788]	; (8007b8c <_malloc_r+0x338>)
 8007876:	443b      	add	r3, r7
 8007878:	f1a3 0208 	sub.w	r2, r3, #8
 800787c:	685c      	ldr	r4, [r3, #4]
 800787e:	4294      	cmp	r4, r2
 8007880:	f000 8166 	beq.w	8007b50 <_malloc_r+0x2fc>
 8007884:	6863      	ldr	r3, [r4, #4]
 8007886:	f023 0303 	bic.w	r3, r3, #3
 800788a:	4423      	add	r3, r4
 800788c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8007890:	685a      	ldr	r2, [r3, #4]
 8007892:	60e9      	str	r1, [r5, #12]
 8007894:	f042 0201 	orr.w	r2, r2, #1
 8007898:	608d      	str	r5, [r1, #8]
 800789a:	4630      	mov	r0, r6
 800789c:	605a      	str	r2, [r3, #4]
 800789e:	f000 fae7 	bl	8007e70 <__malloc_unlock>
 80078a2:	3408      	adds	r4, #8
 80078a4:	4620      	mov	r0, r4
 80078a6:	b003      	add	sp, #12
 80078a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80078ac:	f035 0507 	bics.w	r5, r5, #7
 80078b0:	f100 8094 	bmi.w	80079dc <_malloc_r+0x188>
 80078b4:	42a9      	cmp	r1, r5
 80078b6:	f200 8091 	bhi.w	80079dc <_malloc_r+0x188>
 80078ba:	f000 fad3 	bl	8007e64 <__malloc_lock>
 80078be:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80078c2:	f0c0 8183 	bcc.w	8007bcc <_malloc_r+0x378>
 80078c6:	0a6b      	lsrs	r3, r5, #9
 80078c8:	f000 808f 	beq.w	80079ea <_malloc_r+0x196>
 80078cc:	2b04      	cmp	r3, #4
 80078ce:	f200 8146 	bhi.w	8007b5e <_malloc_r+0x30a>
 80078d2:	09ab      	lsrs	r3, r5, #6
 80078d4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80078d8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80078dc:	00c3      	lsls	r3, r0, #3
 80078de:	4fab      	ldr	r7, [pc, #684]	; (8007b8c <_malloc_r+0x338>)
 80078e0:	443b      	add	r3, r7
 80078e2:	f1a3 0108 	sub.w	r1, r3, #8
 80078e6:	685c      	ldr	r4, [r3, #4]
 80078e8:	42a1      	cmp	r1, r4
 80078ea:	d106      	bne.n	80078fa <_malloc_r+0xa6>
 80078ec:	e00c      	b.n	8007908 <_malloc_r+0xb4>
 80078ee:	2a00      	cmp	r2, #0
 80078f0:	f280 811d 	bge.w	8007b2e <_malloc_r+0x2da>
 80078f4:	68e4      	ldr	r4, [r4, #12]
 80078f6:	42a1      	cmp	r1, r4
 80078f8:	d006      	beq.n	8007908 <_malloc_r+0xb4>
 80078fa:	6863      	ldr	r3, [r4, #4]
 80078fc:	f023 0303 	bic.w	r3, r3, #3
 8007900:	1b5a      	subs	r2, r3, r5
 8007902:	2a0f      	cmp	r2, #15
 8007904:	ddf3      	ble.n	80078ee <_malloc_r+0x9a>
 8007906:	4660      	mov	r0, ip
 8007908:	693c      	ldr	r4, [r7, #16]
 800790a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8007ba0 <_malloc_r+0x34c>
 800790e:	4564      	cmp	r4, ip
 8007910:	d071      	beq.n	80079f6 <_malloc_r+0x1a2>
 8007912:	6863      	ldr	r3, [r4, #4]
 8007914:	f023 0303 	bic.w	r3, r3, #3
 8007918:	1b5a      	subs	r2, r3, r5
 800791a:	2a0f      	cmp	r2, #15
 800791c:	f300 8144 	bgt.w	8007ba8 <_malloc_r+0x354>
 8007920:	2a00      	cmp	r2, #0
 8007922:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8007926:	f280 8126 	bge.w	8007b76 <_malloc_r+0x322>
 800792a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800792e:	f080 8169 	bcs.w	8007c04 <_malloc_r+0x3b0>
 8007932:	08db      	lsrs	r3, r3, #3
 8007934:	1c59      	adds	r1, r3, #1
 8007936:	687a      	ldr	r2, [r7, #4]
 8007938:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800793c:	f8c4 8008 	str.w	r8, [r4, #8]
 8007940:	f04f 0e01 	mov.w	lr, #1
 8007944:	109b      	asrs	r3, r3, #2
 8007946:	fa0e f303 	lsl.w	r3, lr, r3
 800794a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800794e:	4313      	orrs	r3, r2
 8007950:	f1ae 0208 	sub.w	r2, lr, #8
 8007954:	60e2      	str	r2, [r4, #12]
 8007956:	607b      	str	r3, [r7, #4]
 8007958:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 800795c:	f8c8 400c 	str.w	r4, [r8, #12]
 8007960:	1082      	asrs	r2, r0, #2
 8007962:	2401      	movs	r4, #1
 8007964:	4094      	lsls	r4, r2
 8007966:	429c      	cmp	r4, r3
 8007968:	d84b      	bhi.n	8007a02 <_malloc_r+0x1ae>
 800796a:	421c      	tst	r4, r3
 800796c:	d106      	bne.n	800797c <_malloc_r+0x128>
 800796e:	f020 0003 	bic.w	r0, r0, #3
 8007972:	0064      	lsls	r4, r4, #1
 8007974:	421c      	tst	r4, r3
 8007976:	f100 0004 	add.w	r0, r0, #4
 800797a:	d0fa      	beq.n	8007972 <_malloc_r+0x11e>
 800797c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8007980:	46ce      	mov	lr, r9
 8007982:	4680      	mov	r8, r0
 8007984:	f8de 300c 	ldr.w	r3, [lr, #12]
 8007988:	459e      	cmp	lr, r3
 800798a:	d107      	bne.n	800799c <_malloc_r+0x148>
 800798c:	e122      	b.n	8007bd4 <_malloc_r+0x380>
 800798e:	2a00      	cmp	r2, #0
 8007990:	f280 8129 	bge.w	8007be6 <_malloc_r+0x392>
 8007994:	68db      	ldr	r3, [r3, #12]
 8007996:	459e      	cmp	lr, r3
 8007998:	f000 811c 	beq.w	8007bd4 <_malloc_r+0x380>
 800799c:	6859      	ldr	r1, [r3, #4]
 800799e:	f021 0103 	bic.w	r1, r1, #3
 80079a2:	1b4a      	subs	r2, r1, r5
 80079a4:	2a0f      	cmp	r2, #15
 80079a6:	ddf2      	ble.n	800798e <_malloc_r+0x13a>
 80079a8:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80079ac:	195c      	adds	r4, r3, r5
 80079ae:	f045 0501 	orr.w	r5, r5, #1
 80079b2:	605d      	str	r5, [r3, #4]
 80079b4:	f042 0501 	orr.w	r5, r2, #1
 80079b8:	f8c8 e00c 	str.w	lr, [r8, #12]
 80079bc:	4630      	mov	r0, r6
 80079be:	f8ce 8008 	str.w	r8, [lr, #8]
 80079c2:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80079c6:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80079ca:	6065      	str	r5, [r4, #4]
 80079cc:	505a      	str	r2, [r3, r1]
 80079ce:	9301      	str	r3, [sp, #4]
 80079d0:	f000 fa4e 	bl	8007e70 <__malloc_unlock>
 80079d4:	9b01      	ldr	r3, [sp, #4]
 80079d6:	f103 0408 	add.w	r4, r3, #8
 80079da:	e763      	b.n	80078a4 <_malloc_r+0x50>
 80079dc:	2400      	movs	r4, #0
 80079de:	230c      	movs	r3, #12
 80079e0:	4620      	mov	r0, r4
 80079e2:	6033      	str	r3, [r6, #0]
 80079e4:	b003      	add	sp, #12
 80079e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80079ea:	f44f 7300 	mov.w	r3, #512	; 0x200
 80079ee:	2040      	movs	r0, #64	; 0x40
 80079f0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80079f4:	e773      	b.n	80078de <_malloc_r+0x8a>
 80079f6:	687b      	ldr	r3, [r7, #4]
 80079f8:	1082      	asrs	r2, r0, #2
 80079fa:	2401      	movs	r4, #1
 80079fc:	4094      	lsls	r4, r2
 80079fe:	429c      	cmp	r4, r3
 8007a00:	d9b3      	bls.n	800796a <_malloc_r+0x116>
 8007a02:	68bc      	ldr	r4, [r7, #8]
 8007a04:	6863      	ldr	r3, [r4, #4]
 8007a06:	f023 0903 	bic.w	r9, r3, #3
 8007a0a:	45a9      	cmp	r9, r5
 8007a0c:	d303      	bcc.n	8007a16 <_malloc_r+0x1c2>
 8007a0e:	eba9 0305 	sub.w	r3, r9, r5
 8007a12:	2b0f      	cmp	r3, #15
 8007a14:	dc7b      	bgt.n	8007b0e <_malloc_r+0x2ba>
 8007a16:	4b5e      	ldr	r3, [pc, #376]	; (8007b90 <_malloc_r+0x33c>)
 8007a18:	f8df a188 	ldr.w	sl, [pc, #392]	; 8007ba4 <_malloc_r+0x350>
 8007a1c:	681a      	ldr	r2, [r3, #0]
 8007a1e:	f8da 3000 	ldr.w	r3, [sl]
 8007a22:	3301      	adds	r3, #1
 8007a24:	eb05 0802 	add.w	r8, r5, r2
 8007a28:	f000 8148 	beq.w	8007cbc <_malloc_r+0x468>
 8007a2c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8007a30:	f108 080f 	add.w	r8, r8, #15
 8007a34:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8007a38:	f028 080f 	bic.w	r8, r8, #15
 8007a3c:	4641      	mov	r1, r8
 8007a3e:	4630      	mov	r0, r6
 8007a40:	f000 ff08 	bl	8008854 <_sbrk_r>
 8007a44:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8007a48:	4683      	mov	fp, r0
 8007a4a:	f000 8104 	beq.w	8007c56 <_malloc_r+0x402>
 8007a4e:	eb04 0009 	add.w	r0, r4, r9
 8007a52:	4558      	cmp	r0, fp
 8007a54:	f200 80fd 	bhi.w	8007c52 <_malloc_r+0x3fe>
 8007a58:	4a4e      	ldr	r2, [pc, #312]	; (8007b94 <_malloc_r+0x340>)
 8007a5a:	6813      	ldr	r3, [r2, #0]
 8007a5c:	4443      	add	r3, r8
 8007a5e:	6013      	str	r3, [r2, #0]
 8007a60:	f000 814d 	beq.w	8007cfe <_malloc_r+0x4aa>
 8007a64:	f8da 1000 	ldr.w	r1, [sl]
 8007a68:	3101      	adds	r1, #1
 8007a6a:	bf1b      	ittet	ne
 8007a6c:	ebab 0000 	subne.w	r0, fp, r0
 8007a70:	181b      	addne	r3, r3, r0
 8007a72:	f8ca b000 	streq.w	fp, [sl]
 8007a76:	6013      	strne	r3, [r2, #0]
 8007a78:	f01b 0307 	ands.w	r3, fp, #7
 8007a7c:	f000 8134 	beq.w	8007ce8 <_malloc_r+0x494>
 8007a80:	f1c3 0108 	rsb	r1, r3, #8
 8007a84:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8007a88:	448b      	add	fp, r1
 8007a8a:	3308      	adds	r3, #8
 8007a8c:	44d8      	add	r8, fp
 8007a8e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8007a92:	eba3 0808 	sub.w	r8, r3, r8
 8007a96:	4641      	mov	r1, r8
 8007a98:	4630      	mov	r0, r6
 8007a9a:	9201      	str	r2, [sp, #4]
 8007a9c:	f000 feda 	bl	8008854 <_sbrk_r>
 8007aa0:	1c43      	adds	r3, r0, #1
 8007aa2:	9a01      	ldr	r2, [sp, #4]
 8007aa4:	f000 8146 	beq.w	8007d34 <_malloc_r+0x4e0>
 8007aa8:	eba0 010b 	sub.w	r1, r0, fp
 8007aac:	4441      	add	r1, r8
 8007aae:	f041 0101 	orr.w	r1, r1, #1
 8007ab2:	6813      	ldr	r3, [r2, #0]
 8007ab4:	f8c7 b008 	str.w	fp, [r7, #8]
 8007ab8:	4443      	add	r3, r8
 8007aba:	42bc      	cmp	r4, r7
 8007abc:	f8cb 1004 	str.w	r1, [fp, #4]
 8007ac0:	6013      	str	r3, [r2, #0]
 8007ac2:	d015      	beq.n	8007af0 <_malloc_r+0x29c>
 8007ac4:	f1b9 0f0f 	cmp.w	r9, #15
 8007ac8:	f240 8130 	bls.w	8007d2c <_malloc_r+0x4d8>
 8007acc:	6860      	ldr	r0, [r4, #4]
 8007ace:	f1a9 010c 	sub.w	r1, r9, #12
 8007ad2:	f021 0107 	bic.w	r1, r1, #7
 8007ad6:	f000 0001 	and.w	r0, r0, #1
 8007ada:	eb04 0c01 	add.w	ip, r4, r1
 8007ade:	4308      	orrs	r0, r1
 8007ae0:	f04f 0e05 	mov.w	lr, #5
 8007ae4:	290f      	cmp	r1, #15
 8007ae6:	6060      	str	r0, [r4, #4]
 8007ae8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8007aec:	f200 813a 	bhi.w	8007d64 <_malloc_r+0x510>
 8007af0:	4a29      	ldr	r2, [pc, #164]	; (8007b98 <_malloc_r+0x344>)
 8007af2:	482a      	ldr	r0, [pc, #168]	; (8007b9c <_malloc_r+0x348>)
 8007af4:	6811      	ldr	r1, [r2, #0]
 8007af6:	68bc      	ldr	r4, [r7, #8]
 8007af8:	428b      	cmp	r3, r1
 8007afa:	6801      	ldr	r1, [r0, #0]
 8007afc:	bf88      	it	hi
 8007afe:	6013      	strhi	r3, [r2, #0]
 8007b00:	6862      	ldr	r2, [r4, #4]
 8007b02:	428b      	cmp	r3, r1
 8007b04:	f022 0203 	bic.w	r2, r2, #3
 8007b08:	bf88      	it	hi
 8007b0a:	6003      	strhi	r3, [r0, #0]
 8007b0c:	e0a7      	b.n	8007c5e <_malloc_r+0x40a>
 8007b0e:	1962      	adds	r2, r4, r5
 8007b10:	f043 0301 	orr.w	r3, r3, #1
 8007b14:	f045 0501 	orr.w	r5, r5, #1
 8007b18:	6065      	str	r5, [r4, #4]
 8007b1a:	4630      	mov	r0, r6
 8007b1c:	60ba      	str	r2, [r7, #8]
 8007b1e:	6053      	str	r3, [r2, #4]
 8007b20:	f000 f9a6 	bl	8007e70 <__malloc_unlock>
 8007b24:	3408      	adds	r4, #8
 8007b26:	4620      	mov	r0, r4
 8007b28:	b003      	add	sp, #12
 8007b2a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007b2e:	4423      	add	r3, r4
 8007b30:	68e1      	ldr	r1, [r4, #12]
 8007b32:	685a      	ldr	r2, [r3, #4]
 8007b34:	68a5      	ldr	r5, [r4, #8]
 8007b36:	f042 0201 	orr.w	r2, r2, #1
 8007b3a:	60e9      	str	r1, [r5, #12]
 8007b3c:	4630      	mov	r0, r6
 8007b3e:	608d      	str	r5, [r1, #8]
 8007b40:	605a      	str	r2, [r3, #4]
 8007b42:	f000 f995 	bl	8007e70 <__malloc_unlock>
 8007b46:	3408      	adds	r4, #8
 8007b48:	4620      	mov	r0, r4
 8007b4a:	b003      	add	sp, #12
 8007b4c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007b50:	68dc      	ldr	r4, [r3, #12]
 8007b52:	42a3      	cmp	r3, r4
 8007b54:	bf08      	it	eq
 8007b56:	3002      	addeq	r0, #2
 8007b58:	f43f aed6 	beq.w	8007908 <_malloc_r+0xb4>
 8007b5c:	e692      	b.n	8007884 <_malloc_r+0x30>
 8007b5e:	2b14      	cmp	r3, #20
 8007b60:	d971      	bls.n	8007c46 <_malloc_r+0x3f2>
 8007b62:	2b54      	cmp	r3, #84	; 0x54
 8007b64:	f200 80ad 	bhi.w	8007cc2 <_malloc_r+0x46e>
 8007b68:	0b2b      	lsrs	r3, r5, #12
 8007b6a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8007b6e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8007b72:	00c3      	lsls	r3, r0, #3
 8007b74:	e6b3      	b.n	80078de <_malloc_r+0x8a>
 8007b76:	4423      	add	r3, r4
 8007b78:	4630      	mov	r0, r6
 8007b7a:	685a      	ldr	r2, [r3, #4]
 8007b7c:	f042 0201 	orr.w	r2, r2, #1
 8007b80:	605a      	str	r2, [r3, #4]
 8007b82:	3408      	adds	r4, #8
 8007b84:	f000 f974 	bl	8007e70 <__malloc_unlock>
 8007b88:	e68c      	b.n	80078a4 <_malloc_r+0x50>
 8007b8a:	bf00      	nop
 8007b8c:	20000454 	.word	0x20000454
 8007b90:	20000ab4 	.word	0x20000ab4
 8007b94:	20000a84 	.word	0x20000a84
 8007b98:	20000aac 	.word	0x20000aac
 8007b9c:	20000ab0 	.word	0x20000ab0
 8007ba0:	2000045c 	.word	0x2000045c
 8007ba4:	2000085c 	.word	0x2000085c
 8007ba8:	1961      	adds	r1, r4, r5
 8007baa:	f045 0e01 	orr.w	lr, r5, #1
 8007bae:	f042 0501 	orr.w	r5, r2, #1
 8007bb2:	f8c4 e004 	str.w	lr, [r4, #4]
 8007bb6:	4630      	mov	r0, r6
 8007bb8:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8007bbc:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8007bc0:	604d      	str	r5, [r1, #4]
 8007bc2:	50e2      	str	r2, [r4, r3]
 8007bc4:	f000 f954 	bl	8007e70 <__malloc_unlock>
 8007bc8:	3408      	adds	r4, #8
 8007bca:	e66b      	b.n	80078a4 <_malloc_r+0x50>
 8007bcc:	08e8      	lsrs	r0, r5, #3
 8007bce:	f105 0308 	add.w	r3, r5, #8
 8007bd2:	e64f      	b.n	8007874 <_malloc_r+0x20>
 8007bd4:	f108 0801 	add.w	r8, r8, #1
 8007bd8:	f018 0f03 	tst.w	r8, #3
 8007bdc:	f10e 0e08 	add.w	lr, lr, #8
 8007be0:	f47f aed0 	bne.w	8007984 <_malloc_r+0x130>
 8007be4:	e052      	b.n	8007c8c <_malloc_r+0x438>
 8007be6:	4419      	add	r1, r3
 8007be8:	461c      	mov	r4, r3
 8007bea:	684a      	ldr	r2, [r1, #4]
 8007bec:	68db      	ldr	r3, [r3, #12]
 8007bee:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8007bf2:	f042 0201 	orr.w	r2, r2, #1
 8007bf6:	604a      	str	r2, [r1, #4]
 8007bf8:	4630      	mov	r0, r6
 8007bfa:	60eb      	str	r3, [r5, #12]
 8007bfc:	609d      	str	r5, [r3, #8]
 8007bfe:	f000 f937 	bl	8007e70 <__malloc_unlock>
 8007c02:	e64f      	b.n	80078a4 <_malloc_r+0x50>
 8007c04:	0a5a      	lsrs	r2, r3, #9
 8007c06:	2a04      	cmp	r2, #4
 8007c08:	d935      	bls.n	8007c76 <_malloc_r+0x422>
 8007c0a:	2a14      	cmp	r2, #20
 8007c0c:	d86f      	bhi.n	8007cee <_malloc_r+0x49a>
 8007c0e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8007c12:	00c9      	lsls	r1, r1, #3
 8007c14:	325b      	adds	r2, #91	; 0x5b
 8007c16:	eb07 0e01 	add.w	lr, r7, r1
 8007c1a:	5879      	ldr	r1, [r7, r1]
 8007c1c:	f1ae 0e08 	sub.w	lr, lr, #8
 8007c20:	458e      	cmp	lr, r1
 8007c22:	d058      	beq.n	8007cd6 <_malloc_r+0x482>
 8007c24:	684a      	ldr	r2, [r1, #4]
 8007c26:	f022 0203 	bic.w	r2, r2, #3
 8007c2a:	429a      	cmp	r2, r3
 8007c2c:	d902      	bls.n	8007c34 <_malloc_r+0x3e0>
 8007c2e:	6889      	ldr	r1, [r1, #8]
 8007c30:	458e      	cmp	lr, r1
 8007c32:	d1f7      	bne.n	8007c24 <_malloc_r+0x3d0>
 8007c34:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8007c38:	687b      	ldr	r3, [r7, #4]
 8007c3a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8007c3e:	f8ce 4008 	str.w	r4, [lr, #8]
 8007c42:	60cc      	str	r4, [r1, #12]
 8007c44:	e68c      	b.n	8007960 <_malloc_r+0x10c>
 8007c46:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8007c4a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8007c4e:	00c3      	lsls	r3, r0, #3
 8007c50:	e645      	b.n	80078de <_malloc_r+0x8a>
 8007c52:	42bc      	cmp	r4, r7
 8007c54:	d072      	beq.n	8007d3c <_malloc_r+0x4e8>
 8007c56:	68bc      	ldr	r4, [r7, #8]
 8007c58:	6862      	ldr	r2, [r4, #4]
 8007c5a:	f022 0203 	bic.w	r2, r2, #3
 8007c5e:	4295      	cmp	r5, r2
 8007c60:	eba2 0305 	sub.w	r3, r2, r5
 8007c64:	d802      	bhi.n	8007c6c <_malloc_r+0x418>
 8007c66:	2b0f      	cmp	r3, #15
 8007c68:	f73f af51 	bgt.w	8007b0e <_malloc_r+0x2ba>
 8007c6c:	4630      	mov	r0, r6
 8007c6e:	f000 f8ff 	bl	8007e70 <__malloc_unlock>
 8007c72:	2400      	movs	r4, #0
 8007c74:	e616      	b.n	80078a4 <_malloc_r+0x50>
 8007c76:	099a      	lsrs	r2, r3, #6
 8007c78:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8007c7c:	00c9      	lsls	r1, r1, #3
 8007c7e:	3238      	adds	r2, #56	; 0x38
 8007c80:	e7c9      	b.n	8007c16 <_malloc_r+0x3c2>
 8007c82:	f8d9 9000 	ldr.w	r9, [r9]
 8007c86:	4599      	cmp	r9, r3
 8007c88:	f040 8083 	bne.w	8007d92 <_malloc_r+0x53e>
 8007c8c:	f010 0f03 	tst.w	r0, #3
 8007c90:	f1a9 0308 	sub.w	r3, r9, #8
 8007c94:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8007c98:	d1f3      	bne.n	8007c82 <_malloc_r+0x42e>
 8007c9a:	687b      	ldr	r3, [r7, #4]
 8007c9c:	ea23 0304 	bic.w	r3, r3, r4
 8007ca0:	607b      	str	r3, [r7, #4]
 8007ca2:	0064      	lsls	r4, r4, #1
 8007ca4:	429c      	cmp	r4, r3
 8007ca6:	f63f aeac 	bhi.w	8007a02 <_malloc_r+0x1ae>
 8007caa:	b91c      	cbnz	r4, 8007cb4 <_malloc_r+0x460>
 8007cac:	e6a9      	b.n	8007a02 <_malloc_r+0x1ae>
 8007cae:	0064      	lsls	r4, r4, #1
 8007cb0:	f108 0804 	add.w	r8, r8, #4
 8007cb4:	421c      	tst	r4, r3
 8007cb6:	d0fa      	beq.n	8007cae <_malloc_r+0x45a>
 8007cb8:	4640      	mov	r0, r8
 8007cba:	e65f      	b.n	800797c <_malloc_r+0x128>
 8007cbc:	f108 0810 	add.w	r8, r8, #16
 8007cc0:	e6bc      	b.n	8007a3c <_malloc_r+0x1e8>
 8007cc2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8007cc6:	d826      	bhi.n	8007d16 <_malloc_r+0x4c2>
 8007cc8:	0beb      	lsrs	r3, r5, #15
 8007cca:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8007cce:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8007cd2:	00c3      	lsls	r3, r0, #3
 8007cd4:	e603      	b.n	80078de <_malloc_r+0x8a>
 8007cd6:	687b      	ldr	r3, [r7, #4]
 8007cd8:	1092      	asrs	r2, r2, #2
 8007cda:	f04f 0801 	mov.w	r8, #1
 8007cde:	fa08 f202 	lsl.w	r2, r8, r2
 8007ce2:	4313      	orrs	r3, r2
 8007ce4:	607b      	str	r3, [r7, #4]
 8007ce6:	e7a8      	b.n	8007c3a <_malloc_r+0x3e6>
 8007ce8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8007cec:	e6ce      	b.n	8007a8c <_malloc_r+0x238>
 8007cee:	2a54      	cmp	r2, #84	; 0x54
 8007cf0:	d829      	bhi.n	8007d46 <_malloc_r+0x4f2>
 8007cf2:	0b1a      	lsrs	r2, r3, #12
 8007cf4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8007cf8:	00c9      	lsls	r1, r1, #3
 8007cfa:	326e      	adds	r2, #110	; 0x6e
 8007cfc:	e78b      	b.n	8007c16 <_malloc_r+0x3c2>
 8007cfe:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8007d02:	2900      	cmp	r1, #0
 8007d04:	f47f aeae 	bne.w	8007a64 <_malloc_r+0x210>
 8007d08:	eb09 0208 	add.w	r2, r9, r8
 8007d0c:	68b9      	ldr	r1, [r7, #8]
 8007d0e:	f042 0201 	orr.w	r2, r2, #1
 8007d12:	604a      	str	r2, [r1, #4]
 8007d14:	e6ec      	b.n	8007af0 <_malloc_r+0x29c>
 8007d16:	f240 5254 	movw	r2, #1364	; 0x554
 8007d1a:	4293      	cmp	r3, r2
 8007d1c:	d81c      	bhi.n	8007d58 <_malloc_r+0x504>
 8007d1e:	0cab      	lsrs	r3, r5, #18
 8007d20:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8007d24:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8007d28:	00c3      	lsls	r3, r0, #3
 8007d2a:	e5d8      	b.n	80078de <_malloc_r+0x8a>
 8007d2c:	2301      	movs	r3, #1
 8007d2e:	f8cb 3004 	str.w	r3, [fp, #4]
 8007d32:	e79b      	b.n	8007c6c <_malloc_r+0x418>
 8007d34:	2101      	movs	r1, #1
 8007d36:	f04f 0800 	mov.w	r8, #0
 8007d3a:	e6ba      	b.n	8007ab2 <_malloc_r+0x25e>
 8007d3c:	4a16      	ldr	r2, [pc, #88]	; (8007d98 <_malloc_r+0x544>)
 8007d3e:	6813      	ldr	r3, [r2, #0]
 8007d40:	4443      	add	r3, r8
 8007d42:	6013      	str	r3, [r2, #0]
 8007d44:	e68e      	b.n	8007a64 <_malloc_r+0x210>
 8007d46:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8007d4a:	d814      	bhi.n	8007d76 <_malloc_r+0x522>
 8007d4c:	0bda      	lsrs	r2, r3, #15
 8007d4e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8007d52:	00c9      	lsls	r1, r1, #3
 8007d54:	3277      	adds	r2, #119	; 0x77
 8007d56:	e75e      	b.n	8007c16 <_malloc_r+0x3c2>
 8007d58:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8007d5c:	207f      	movs	r0, #127	; 0x7f
 8007d5e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8007d62:	e5bc      	b.n	80078de <_malloc_r+0x8a>
 8007d64:	f104 0108 	add.w	r1, r4, #8
 8007d68:	4630      	mov	r0, r6
 8007d6a:	9201      	str	r2, [sp, #4]
 8007d6c:	f7ff fa48 	bl	8007200 <_free_r>
 8007d70:	9a01      	ldr	r2, [sp, #4]
 8007d72:	6813      	ldr	r3, [r2, #0]
 8007d74:	e6bc      	b.n	8007af0 <_malloc_r+0x29c>
 8007d76:	f240 5154 	movw	r1, #1364	; 0x554
 8007d7a:	428a      	cmp	r2, r1
 8007d7c:	d805      	bhi.n	8007d8a <_malloc_r+0x536>
 8007d7e:	0c9a      	lsrs	r2, r3, #18
 8007d80:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8007d84:	00c9      	lsls	r1, r1, #3
 8007d86:	327c      	adds	r2, #124	; 0x7c
 8007d88:	e745      	b.n	8007c16 <_malloc_r+0x3c2>
 8007d8a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8007d8e:	227e      	movs	r2, #126	; 0x7e
 8007d90:	e741      	b.n	8007c16 <_malloc_r+0x3c2>
 8007d92:	687b      	ldr	r3, [r7, #4]
 8007d94:	e785      	b.n	8007ca2 <_malloc_r+0x44e>
 8007d96:	bf00      	nop
 8007d98:	20000a84 	.word	0x20000a84

08007d9c <memmove>:
 8007d9c:	4288      	cmp	r0, r1
 8007d9e:	b4f0      	push	{r4, r5, r6, r7}
 8007da0:	d90d      	bls.n	8007dbe <memmove+0x22>
 8007da2:	188b      	adds	r3, r1, r2
 8007da4:	4283      	cmp	r3, r0
 8007da6:	d90a      	bls.n	8007dbe <memmove+0x22>
 8007da8:	1884      	adds	r4, r0, r2
 8007daa:	b132      	cbz	r2, 8007dba <memmove+0x1e>
 8007dac:	4622      	mov	r2, r4
 8007dae:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8007db2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8007db6:	4299      	cmp	r1, r3
 8007db8:	d1f9      	bne.n	8007dae <memmove+0x12>
 8007dba:	bcf0      	pop	{r4, r5, r6, r7}
 8007dbc:	4770      	bx	lr
 8007dbe:	2a0f      	cmp	r2, #15
 8007dc0:	d949      	bls.n	8007e56 <memmove+0xba>
 8007dc2:	ea40 0301 	orr.w	r3, r0, r1
 8007dc6:	079b      	lsls	r3, r3, #30
 8007dc8:	d147      	bne.n	8007e5a <memmove+0xbe>
 8007dca:	f1a2 0310 	sub.w	r3, r2, #16
 8007dce:	091b      	lsrs	r3, r3, #4
 8007dd0:	f101 0720 	add.w	r7, r1, #32
 8007dd4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8007dd8:	f101 0410 	add.w	r4, r1, #16
 8007ddc:	f100 0510 	add.w	r5, r0, #16
 8007de0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8007de4:	f845 6c10 	str.w	r6, [r5, #-16]
 8007de8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8007dec:	f845 6c0c 	str.w	r6, [r5, #-12]
 8007df0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8007df4:	f845 6c08 	str.w	r6, [r5, #-8]
 8007df8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8007dfc:	f845 6c04 	str.w	r6, [r5, #-4]
 8007e00:	3410      	adds	r4, #16
 8007e02:	42bc      	cmp	r4, r7
 8007e04:	f105 0510 	add.w	r5, r5, #16
 8007e08:	d1ea      	bne.n	8007de0 <memmove+0x44>
 8007e0a:	3301      	adds	r3, #1
 8007e0c:	f002 050f 	and.w	r5, r2, #15
 8007e10:	011b      	lsls	r3, r3, #4
 8007e12:	2d03      	cmp	r5, #3
 8007e14:	4419      	add	r1, r3
 8007e16:	4403      	add	r3, r0
 8007e18:	d921      	bls.n	8007e5e <memmove+0xc2>
 8007e1a:	1f1f      	subs	r7, r3, #4
 8007e1c:	460e      	mov	r6, r1
 8007e1e:	462c      	mov	r4, r5
 8007e20:	3c04      	subs	r4, #4
 8007e22:	f856 cb04 	ldr.w	ip, [r6], #4
 8007e26:	f847 cf04 	str.w	ip, [r7, #4]!
 8007e2a:	2c03      	cmp	r4, #3
 8007e2c:	d8f8      	bhi.n	8007e20 <memmove+0x84>
 8007e2e:	1f2c      	subs	r4, r5, #4
 8007e30:	f024 0403 	bic.w	r4, r4, #3
 8007e34:	3404      	adds	r4, #4
 8007e36:	4423      	add	r3, r4
 8007e38:	4421      	add	r1, r4
 8007e3a:	f002 0203 	and.w	r2, r2, #3
 8007e3e:	2a00      	cmp	r2, #0
 8007e40:	d0bb      	beq.n	8007dba <memmove+0x1e>
 8007e42:	3b01      	subs	r3, #1
 8007e44:	440a      	add	r2, r1
 8007e46:	f811 4b01 	ldrb.w	r4, [r1], #1
 8007e4a:	f803 4f01 	strb.w	r4, [r3, #1]!
 8007e4e:	4291      	cmp	r1, r2
 8007e50:	d1f9      	bne.n	8007e46 <memmove+0xaa>
 8007e52:	bcf0      	pop	{r4, r5, r6, r7}
 8007e54:	4770      	bx	lr
 8007e56:	4603      	mov	r3, r0
 8007e58:	e7f1      	b.n	8007e3e <memmove+0xa2>
 8007e5a:	4603      	mov	r3, r0
 8007e5c:	e7f1      	b.n	8007e42 <memmove+0xa6>
 8007e5e:	462a      	mov	r2, r5
 8007e60:	e7ed      	b.n	8007e3e <memmove+0xa2>
 8007e62:	bf00      	nop

08007e64 <__malloc_lock>:
 8007e64:	4801      	ldr	r0, [pc, #4]	; (8007e6c <__malloc_lock+0x8>)
 8007e66:	f7ff bc79 	b.w	800775c <__retarget_lock_acquire_recursive>
 8007e6a:	bf00      	nop
 8007e6c:	20000b10 	.word	0x20000b10

08007e70 <__malloc_unlock>:
 8007e70:	4801      	ldr	r0, [pc, #4]	; (8007e78 <__malloc_unlock+0x8>)
 8007e72:	f7ff bc75 	b.w	8007760 <__retarget_lock_release_recursive>
 8007e76:	bf00      	nop
 8007e78:	20000b10 	.word	0x20000b10

08007e7c <_Balloc>:
 8007e7c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8007e7e:	b570      	push	{r4, r5, r6, lr}
 8007e80:	4605      	mov	r5, r0
 8007e82:	460c      	mov	r4, r1
 8007e84:	b14b      	cbz	r3, 8007e9a <_Balloc+0x1e>
 8007e86:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8007e8a:	b180      	cbz	r0, 8007eae <_Balloc+0x32>
 8007e8c:	6802      	ldr	r2, [r0, #0]
 8007e8e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8007e92:	2300      	movs	r3, #0
 8007e94:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8007e98:	bd70      	pop	{r4, r5, r6, pc}
 8007e9a:	2221      	movs	r2, #33	; 0x21
 8007e9c:	2104      	movs	r1, #4
 8007e9e:	f000 fe1d 	bl	8008adc <_calloc_r>
 8007ea2:	4603      	mov	r3, r0
 8007ea4:	64e8      	str	r0, [r5, #76]	; 0x4c
 8007ea6:	2800      	cmp	r0, #0
 8007ea8:	d1ed      	bne.n	8007e86 <_Balloc+0xa>
 8007eaa:	2000      	movs	r0, #0
 8007eac:	bd70      	pop	{r4, r5, r6, pc}
 8007eae:	2101      	movs	r1, #1
 8007eb0:	fa01 f604 	lsl.w	r6, r1, r4
 8007eb4:	1d72      	adds	r2, r6, #5
 8007eb6:	4628      	mov	r0, r5
 8007eb8:	0092      	lsls	r2, r2, #2
 8007eba:	f000 fe0f 	bl	8008adc <_calloc_r>
 8007ebe:	2800      	cmp	r0, #0
 8007ec0:	d0f3      	beq.n	8007eaa <_Balloc+0x2e>
 8007ec2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8007ec6:	e7e4      	b.n	8007e92 <_Balloc+0x16>

08007ec8 <_Bfree>:
 8007ec8:	b131      	cbz	r1, 8007ed8 <_Bfree+0x10>
 8007eca:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8007ecc:	684a      	ldr	r2, [r1, #4]
 8007ece:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8007ed2:	6008      	str	r0, [r1, #0]
 8007ed4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8007ed8:	4770      	bx	lr
 8007eda:	bf00      	nop

08007edc <__multadd>:
 8007edc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007ede:	690c      	ldr	r4, [r1, #16]
 8007ee0:	b083      	sub	sp, #12
 8007ee2:	460d      	mov	r5, r1
 8007ee4:	4606      	mov	r6, r0
 8007ee6:	f101 0c14 	add.w	ip, r1, #20
 8007eea:	2700      	movs	r7, #0
 8007eec:	f8dc 0000 	ldr.w	r0, [ip]
 8007ef0:	b281      	uxth	r1, r0
 8007ef2:	fb02 3301 	mla	r3, r2, r1, r3
 8007ef6:	0c01      	lsrs	r1, r0, #16
 8007ef8:	0c18      	lsrs	r0, r3, #16
 8007efa:	fb02 0101 	mla	r1, r2, r1, r0
 8007efe:	b29b      	uxth	r3, r3
 8007f00:	3701      	adds	r7, #1
 8007f02:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8007f06:	42bc      	cmp	r4, r7
 8007f08:	f84c 3b04 	str.w	r3, [ip], #4
 8007f0c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8007f10:	dcec      	bgt.n	8007eec <__multadd+0x10>
 8007f12:	b13b      	cbz	r3, 8007f24 <__multadd+0x48>
 8007f14:	68aa      	ldr	r2, [r5, #8]
 8007f16:	42a2      	cmp	r2, r4
 8007f18:	dd07      	ble.n	8007f2a <__multadd+0x4e>
 8007f1a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8007f1e:	3401      	adds	r4, #1
 8007f20:	6153      	str	r3, [r2, #20]
 8007f22:	612c      	str	r4, [r5, #16]
 8007f24:	4628      	mov	r0, r5
 8007f26:	b003      	add	sp, #12
 8007f28:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007f2a:	6869      	ldr	r1, [r5, #4]
 8007f2c:	9301      	str	r3, [sp, #4]
 8007f2e:	3101      	adds	r1, #1
 8007f30:	4630      	mov	r0, r6
 8007f32:	f7ff ffa3 	bl	8007e7c <_Balloc>
 8007f36:	692a      	ldr	r2, [r5, #16]
 8007f38:	3202      	adds	r2, #2
 8007f3a:	f105 010c 	add.w	r1, r5, #12
 8007f3e:	4607      	mov	r7, r0
 8007f40:	0092      	lsls	r2, r2, #2
 8007f42:	300c      	adds	r0, #12
 8007f44:	f7f8 fb2a 	bl	800059c <memcpy>
 8007f48:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8007f4a:	6869      	ldr	r1, [r5, #4]
 8007f4c:	9b01      	ldr	r3, [sp, #4]
 8007f4e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8007f52:	6028      	str	r0, [r5, #0]
 8007f54:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8007f58:	463d      	mov	r5, r7
 8007f5a:	e7de      	b.n	8007f1a <__multadd+0x3e>

08007f5c <__hi0bits>:
 8007f5c:	0c02      	lsrs	r2, r0, #16
 8007f5e:	0412      	lsls	r2, r2, #16
 8007f60:	4603      	mov	r3, r0
 8007f62:	b9c2      	cbnz	r2, 8007f96 <__hi0bits+0x3a>
 8007f64:	0403      	lsls	r3, r0, #16
 8007f66:	2010      	movs	r0, #16
 8007f68:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8007f6c:	bf04      	itt	eq
 8007f6e:	021b      	lsleq	r3, r3, #8
 8007f70:	3008      	addeq	r0, #8
 8007f72:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8007f76:	bf04      	itt	eq
 8007f78:	011b      	lsleq	r3, r3, #4
 8007f7a:	3004      	addeq	r0, #4
 8007f7c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8007f80:	bf04      	itt	eq
 8007f82:	009b      	lsleq	r3, r3, #2
 8007f84:	3002      	addeq	r0, #2
 8007f86:	2b00      	cmp	r3, #0
 8007f88:	db04      	blt.n	8007f94 <__hi0bits+0x38>
 8007f8a:	005b      	lsls	r3, r3, #1
 8007f8c:	d501      	bpl.n	8007f92 <__hi0bits+0x36>
 8007f8e:	3001      	adds	r0, #1
 8007f90:	4770      	bx	lr
 8007f92:	2020      	movs	r0, #32
 8007f94:	4770      	bx	lr
 8007f96:	2000      	movs	r0, #0
 8007f98:	e7e6      	b.n	8007f68 <__hi0bits+0xc>
 8007f9a:	bf00      	nop

08007f9c <__lo0bits>:
 8007f9c:	6803      	ldr	r3, [r0, #0]
 8007f9e:	f013 0207 	ands.w	r2, r3, #7
 8007fa2:	4601      	mov	r1, r0
 8007fa4:	d007      	beq.n	8007fb6 <__lo0bits+0x1a>
 8007fa6:	07da      	lsls	r2, r3, #31
 8007fa8:	d41f      	bmi.n	8007fea <__lo0bits+0x4e>
 8007faa:	0798      	lsls	r0, r3, #30
 8007fac:	d51f      	bpl.n	8007fee <__lo0bits+0x52>
 8007fae:	085b      	lsrs	r3, r3, #1
 8007fb0:	600b      	str	r3, [r1, #0]
 8007fb2:	2001      	movs	r0, #1
 8007fb4:	4770      	bx	lr
 8007fb6:	b298      	uxth	r0, r3
 8007fb8:	b1a0      	cbz	r0, 8007fe4 <__lo0bits+0x48>
 8007fba:	4610      	mov	r0, r2
 8007fbc:	f013 0fff 	tst.w	r3, #255	; 0xff
 8007fc0:	bf04      	itt	eq
 8007fc2:	0a1b      	lsreq	r3, r3, #8
 8007fc4:	3008      	addeq	r0, #8
 8007fc6:	071a      	lsls	r2, r3, #28
 8007fc8:	bf04      	itt	eq
 8007fca:	091b      	lsreq	r3, r3, #4
 8007fcc:	3004      	addeq	r0, #4
 8007fce:	079a      	lsls	r2, r3, #30
 8007fd0:	bf04      	itt	eq
 8007fd2:	089b      	lsreq	r3, r3, #2
 8007fd4:	3002      	addeq	r0, #2
 8007fd6:	07da      	lsls	r2, r3, #31
 8007fd8:	d402      	bmi.n	8007fe0 <__lo0bits+0x44>
 8007fda:	085b      	lsrs	r3, r3, #1
 8007fdc:	d00b      	beq.n	8007ff6 <__lo0bits+0x5a>
 8007fde:	3001      	adds	r0, #1
 8007fe0:	600b      	str	r3, [r1, #0]
 8007fe2:	4770      	bx	lr
 8007fe4:	0c1b      	lsrs	r3, r3, #16
 8007fe6:	2010      	movs	r0, #16
 8007fe8:	e7e8      	b.n	8007fbc <__lo0bits+0x20>
 8007fea:	2000      	movs	r0, #0
 8007fec:	4770      	bx	lr
 8007fee:	089b      	lsrs	r3, r3, #2
 8007ff0:	600b      	str	r3, [r1, #0]
 8007ff2:	2002      	movs	r0, #2
 8007ff4:	4770      	bx	lr
 8007ff6:	2020      	movs	r0, #32
 8007ff8:	4770      	bx	lr
 8007ffa:	bf00      	nop

08007ffc <__i2b>:
 8007ffc:	b510      	push	{r4, lr}
 8007ffe:	460c      	mov	r4, r1
 8008000:	2101      	movs	r1, #1
 8008002:	f7ff ff3b 	bl	8007e7c <_Balloc>
 8008006:	2201      	movs	r2, #1
 8008008:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800800c:	bd10      	pop	{r4, pc}
 800800e:	bf00      	nop

08008010 <__multiply>:
 8008010:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008014:	690e      	ldr	r6, [r1, #16]
 8008016:	6914      	ldr	r4, [r2, #16]
 8008018:	42a6      	cmp	r6, r4
 800801a:	b083      	sub	sp, #12
 800801c:	460f      	mov	r7, r1
 800801e:	4615      	mov	r5, r2
 8008020:	da04      	bge.n	800802c <__multiply+0x1c>
 8008022:	4632      	mov	r2, r6
 8008024:	462f      	mov	r7, r5
 8008026:	4626      	mov	r6, r4
 8008028:	460d      	mov	r5, r1
 800802a:	4614      	mov	r4, r2
 800802c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8008030:	eb06 0804 	add.w	r8, r6, r4
 8008034:	4543      	cmp	r3, r8
 8008036:	bfb8      	it	lt
 8008038:	3101      	addlt	r1, #1
 800803a:	f7ff ff1f 	bl	8007e7c <_Balloc>
 800803e:	f100 0914 	add.w	r9, r0, #20
 8008042:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8008046:	45f1      	cmp	r9, lr
 8008048:	9000      	str	r0, [sp, #0]
 800804a:	d205      	bcs.n	8008058 <__multiply+0x48>
 800804c:	464b      	mov	r3, r9
 800804e:	2200      	movs	r2, #0
 8008050:	f843 2b04 	str.w	r2, [r3], #4
 8008054:	459e      	cmp	lr, r3
 8008056:	d8fb      	bhi.n	8008050 <__multiply+0x40>
 8008058:	f105 0a14 	add.w	sl, r5, #20
 800805c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8008060:	f107 0314 	add.w	r3, r7, #20
 8008064:	45a2      	cmp	sl, r4
 8008066:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800806a:	d261      	bcs.n	8008130 <__multiply+0x120>
 800806c:	1b64      	subs	r4, r4, r5
 800806e:	3c15      	subs	r4, #21
 8008070:	f024 0403 	bic.w	r4, r4, #3
 8008074:	f8cd e004 	str.w	lr, [sp, #4]
 8008078:	44a2      	add	sl, r4
 800807a:	f105 0210 	add.w	r2, r5, #16
 800807e:	469e      	mov	lr, r3
 8008080:	e005      	b.n	800808e <__multiply+0x7e>
 8008082:	0c2d      	lsrs	r5, r5, #16
 8008084:	d12b      	bne.n	80080de <__multiply+0xce>
 8008086:	4592      	cmp	sl, r2
 8008088:	f109 0904 	add.w	r9, r9, #4
 800808c:	d04e      	beq.n	800812c <__multiply+0x11c>
 800808e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8008092:	fa1f fb85 	uxth.w	fp, r5
 8008096:	f1bb 0f00 	cmp.w	fp, #0
 800809a:	d0f2      	beq.n	8008082 <__multiply+0x72>
 800809c:	4677      	mov	r7, lr
 800809e:	464e      	mov	r6, r9
 80080a0:	2000      	movs	r0, #0
 80080a2:	e000      	b.n	80080a6 <__multiply+0x96>
 80080a4:	4626      	mov	r6, r4
 80080a6:	f857 1b04 	ldr.w	r1, [r7], #4
 80080aa:	6834      	ldr	r4, [r6, #0]
 80080ac:	b28b      	uxth	r3, r1
 80080ae:	b2a5      	uxth	r5, r4
 80080b0:	0c09      	lsrs	r1, r1, #16
 80080b2:	0c24      	lsrs	r4, r4, #16
 80080b4:	fb0b 5303 	mla	r3, fp, r3, r5
 80080b8:	4403      	add	r3, r0
 80080ba:	fb0b 4001 	mla	r0, fp, r1, r4
 80080be:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80080c2:	4634      	mov	r4, r6
 80080c4:	b29b      	uxth	r3, r3
 80080c6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80080ca:	45bc      	cmp	ip, r7
 80080cc:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80080d0:	f844 3b04 	str.w	r3, [r4], #4
 80080d4:	d8e6      	bhi.n	80080a4 <__multiply+0x94>
 80080d6:	6070      	str	r0, [r6, #4]
 80080d8:	6815      	ldr	r5, [r2, #0]
 80080da:	0c2d      	lsrs	r5, r5, #16
 80080dc:	d0d3      	beq.n	8008086 <__multiply+0x76>
 80080de:	f8d9 3000 	ldr.w	r3, [r9]
 80080e2:	4676      	mov	r6, lr
 80080e4:	4618      	mov	r0, r3
 80080e6:	46cb      	mov	fp, r9
 80080e8:	2100      	movs	r1, #0
 80080ea:	e000      	b.n	80080ee <__multiply+0xde>
 80080ec:	46a3      	mov	fp, r4
 80080ee:	8834      	ldrh	r4, [r6, #0]
 80080f0:	0c00      	lsrs	r0, r0, #16
 80080f2:	fb05 0004 	mla	r0, r5, r4, r0
 80080f6:	4401      	add	r1, r0
 80080f8:	b29b      	uxth	r3, r3
 80080fa:	465c      	mov	r4, fp
 80080fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8008100:	f844 3b04 	str.w	r3, [r4], #4
 8008104:	f856 3b04 	ldr.w	r3, [r6], #4
 8008108:	f8db 0004 	ldr.w	r0, [fp, #4]
 800810c:	0c1b      	lsrs	r3, r3, #16
 800810e:	b287      	uxth	r7, r0
 8008110:	fb05 7303 	mla	r3, r5, r3, r7
 8008114:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8008118:	45b4      	cmp	ip, r6
 800811a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800811e:	d8e5      	bhi.n	80080ec <__multiply+0xdc>
 8008120:	4592      	cmp	sl, r2
 8008122:	f8cb 3004 	str.w	r3, [fp, #4]
 8008126:	f109 0904 	add.w	r9, r9, #4
 800812a:	d1b0      	bne.n	800808e <__multiply+0x7e>
 800812c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8008130:	f1b8 0f00 	cmp.w	r8, #0
 8008134:	dd0b      	ble.n	800814e <__multiply+0x13e>
 8008136:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800813a:	f1ae 0e04 	sub.w	lr, lr, #4
 800813e:	b11b      	cbz	r3, 8008148 <__multiply+0x138>
 8008140:	e005      	b.n	800814e <__multiply+0x13e>
 8008142:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8008146:	b913      	cbnz	r3, 800814e <__multiply+0x13e>
 8008148:	f1b8 0801 	subs.w	r8, r8, #1
 800814c:	d1f9      	bne.n	8008142 <__multiply+0x132>
 800814e:	9800      	ldr	r0, [sp, #0]
 8008150:	f8c0 8010 	str.w	r8, [r0, #16]
 8008154:	b003      	add	sp, #12
 8008156:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800815a:	bf00      	nop

0800815c <__pow5mult>:
 800815c:	f012 0303 	ands.w	r3, r2, #3
 8008160:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008164:	4614      	mov	r4, r2
 8008166:	4607      	mov	r7, r0
 8008168:	d12e      	bne.n	80081c8 <__pow5mult+0x6c>
 800816a:	460d      	mov	r5, r1
 800816c:	10a4      	asrs	r4, r4, #2
 800816e:	d01c      	beq.n	80081aa <__pow5mult+0x4e>
 8008170:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8008172:	b396      	cbz	r6, 80081da <__pow5mult+0x7e>
 8008174:	07e3      	lsls	r3, r4, #31
 8008176:	f04f 0800 	mov.w	r8, #0
 800817a:	d406      	bmi.n	800818a <__pow5mult+0x2e>
 800817c:	1064      	asrs	r4, r4, #1
 800817e:	d014      	beq.n	80081aa <__pow5mult+0x4e>
 8008180:	6830      	ldr	r0, [r6, #0]
 8008182:	b1a8      	cbz	r0, 80081b0 <__pow5mult+0x54>
 8008184:	4606      	mov	r6, r0
 8008186:	07e3      	lsls	r3, r4, #31
 8008188:	d5f8      	bpl.n	800817c <__pow5mult+0x20>
 800818a:	4632      	mov	r2, r6
 800818c:	4629      	mov	r1, r5
 800818e:	4638      	mov	r0, r7
 8008190:	f7ff ff3e 	bl	8008010 <__multiply>
 8008194:	b1b5      	cbz	r5, 80081c4 <__pow5mult+0x68>
 8008196:	686a      	ldr	r2, [r5, #4]
 8008198:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800819a:	1064      	asrs	r4, r4, #1
 800819c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80081a0:	6029      	str	r1, [r5, #0]
 80081a2:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80081a6:	4605      	mov	r5, r0
 80081a8:	d1ea      	bne.n	8008180 <__pow5mult+0x24>
 80081aa:	4628      	mov	r0, r5
 80081ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80081b0:	4632      	mov	r2, r6
 80081b2:	4631      	mov	r1, r6
 80081b4:	4638      	mov	r0, r7
 80081b6:	f7ff ff2b 	bl	8008010 <__multiply>
 80081ba:	6030      	str	r0, [r6, #0]
 80081bc:	f8c0 8000 	str.w	r8, [r0]
 80081c0:	4606      	mov	r6, r0
 80081c2:	e7e0      	b.n	8008186 <__pow5mult+0x2a>
 80081c4:	4605      	mov	r5, r0
 80081c6:	e7d9      	b.n	800817c <__pow5mult+0x20>
 80081c8:	3b01      	subs	r3, #1
 80081ca:	4a0b      	ldr	r2, [pc, #44]	; (80081f8 <__pow5mult+0x9c>)
 80081cc:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80081d0:	2300      	movs	r3, #0
 80081d2:	f7ff fe83 	bl	8007edc <__multadd>
 80081d6:	4605      	mov	r5, r0
 80081d8:	e7c8      	b.n	800816c <__pow5mult+0x10>
 80081da:	2101      	movs	r1, #1
 80081dc:	4638      	mov	r0, r7
 80081de:	f7ff fe4d 	bl	8007e7c <_Balloc>
 80081e2:	f240 2371 	movw	r3, #625	; 0x271
 80081e6:	6143      	str	r3, [r0, #20]
 80081e8:	2201      	movs	r2, #1
 80081ea:	2300      	movs	r3, #0
 80081ec:	6102      	str	r2, [r0, #16]
 80081ee:	4606      	mov	r6, r0
 80081f0:	64b8      	str	r0, [r7, #72]	; 0x48
 80081f2:	6003      	str	r3, [r0, #0]
 80081f4:	e7be      	b.n	8008174 <__pow5mult+0x18>
 80081f6:	bf00      	nop
 80081f8:	0800a878 	.word	0x0800a878

080081fc <__lshift>:
 80081fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008200:	4691      	mov	r9, r2
 8008202:	690a      	ldr	r2, [r1, #16]
 8008204:	460e      	mov	r6, r1
 8008206:	ea4f 1469 	mov.w	r4, r9, asr #5
 800820a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800820e:	eb04 0802 	add.w	r8, r4, r2
 8008212:	f108 0501 	add.w	r5, r8, #1
 8008216:	429d      	cmp	r5, r3
 8008218:	4607      	mov	r7, r0
 800821a:	dd04      	ble.n	8008226 <__lshift+0x2a>
 800821c:	005b      	lsls	r3, r3, #1
 800821e:	429d      	cmp	r5, r3
 8008220:	f101 0101 	add.w	r1, r1, #1
 8008224:	dcfa      	bgt.n	800821c <__lshift+0x20>
 8008226:	4638      	mov	r0, r7
 8008228:	f7ff fe28 	bl	8007e7c <_Balloc>
 800822c:	2c00      	cmp	r4, #0
 800822e:	f100 0314 	add.w	r3, r0, #20
 8008232:	dd37      	ble.n	80082a4 <__lshift+0xa8>
 8008234:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8008238:	2200      	movs	r2, #0
 800823a:	f843 2b04 	str.w	r2, [r3], #4
 800823e:	428b      	cmp	r3, r1
 8008240:	d1fb      	bne.n	800823a <__lshift+0x3e>
 8008242:	6934      	ldr	r4, [r6, #16]
 8008244:	f106 0314 	add.w	r3, r6, #20
 8008248:	f019 091f 	ands.w	r9, r9, #31
 800824c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8008250:	d020      	beq.n	8008294 <__lshift+0x98>
 8008252:	f1c9 0e20 	rsb	lr, r9, #32
 8008256:	2200      	movs	r2, #0
 8008258:	e000      	b.n	800825c <__lshift+0x60>
 800825a:	4651      	mov	r1, sl
 800825c:	681c      	ldr	r4, [r3, #0]
 800825e:	468a      	mov	sl, r1
 8008260:	fa04 f409 	lsl.w	r4, r4, r9
 8008264:	4314      	orrs	r4, r2
 8008266:	f84a 4b04 	str.w	r4, [sl], #4
 800826a:	f853 2b04 	ldr.w	r2, [r3], #4
 800826e:	4563      	cmp	r3, ip
 8008270:	fa22 f20e 	lsr.w	r2, r2, lr
 8008274:	d3f1      	bcc.n	800825a <__lshift+0x5e>
 8008276:	604a      	str	r2, [r1, #4]
 8008278:	b10a      	cbz	r2, 800827e <__lshift+0x82>
 800827a:	f108 0502 	add.w	r5, r8, #2
 800827e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8008280:	6872      	ldr	r2, [r6, #4]
 8008282:	3d01      	subs	r5, #1
 8008284:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008288:	6105      	str	r5, [r0, #16]
 800828a:	6031      	str	r1, [r6, #0]
 800828c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8008290:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008294:	3904      	subs	r1, #4
 8008296:	f853 2b04 	ldr.w	r2, [r3], #4
 800829a:	f841 2f04 	str.w	r2, [r1, #4]!
 800829e:	459c      	cmp	ip, r3
 80082a0:	d8f9      	bhi.n	8008296 <__lshift+0x9a>
 80082a2:	e7ec      	b.n	800827e <__lshift+0x82>
 80082a4:	4619      	mov	r1, r3
 80082a6:	e7cc      	b.n	8008242 <__lshift+0x46>

080082a8 <__mcmp>:
 80082a8:	b430      	push	{r4, r5}
 80082aa:	690b      	ldr	r3, [r1, #16]
 80082ac:	4605      	mov	r5, r0
 80082ae:	6900      	ldr	r0, [r0, #16]
 80082b0:	1ac0      	subs	r0, r0, r3
 80082b2:	d10f      	bne.n	80082d4 <__mcmp+0x2c>
 80082b4:	009b      	lsls	r3, r3, #2
 80082b6:	3514      	adds	r5, #20
 80082b8:	3114      	adds	r1, #20
 80082ba:	4419      	add	r1, r3
 80082bc:	442b      	add	r3, r5
 80082be:	e001      	b.n	80082c4 <__mcmp+0x1c>
 80082c0:	429d      	cmp	r5, r3
 80082c2:	d207      	bcs.n	80082d4 <__mcmp+0x2c>
 80082c4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80082c8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80082cc:	4294      	cmp	r4, r2
 80082ce:	d0f7      	beq.n	80082c0 <__mcmp+0x18>
 80082d0:	d302      	bcc.n	80082d8 <__mcmp+0x30>
 80082d2:	2001      	movs	r0, #1
 80082d4:	bc30      	pop	{r4, r5}
 80082d6:	4770      	bx	lr
 80082d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80082dc:	e7fa      	b.n	80082d4 <__mcmp+0x2c>
 80082de:	bf00      	nop

080082e0 <__mdiff>:
 80082e0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80082e4:	6913      	ldr	r3, [r2, #16]
 80082e6:	690d      	ldr	r5, [r1, #16]
 80082e8:	1aed      	subs	r5, r5, r3
 80082ea:	2d00      	cmp	r5, #0
 80082ec:	460e      	mov	r6, r1
 80082ee:	4690      	mov	r8, r2
 80082f0:	f101 0414 	add.w	r4, r1, #20
 80082f4:	f102 0714 	add.w	r7, r2, #20
 80082f8:	d114      	bne.n	8008324 <__mdiff+0x44>
 80082fa:	009b      	lsls	r3, r3, #2
 80082fc:	18e2      	adds	r2, r4, r3
 80082fe:	443b      	add	r3, r7
 8008300:	e001      	b.n	8008306 <__mdiff+0x26>
 8008302:	42a2      	cmp	r2, r4
 8008304:	d959      	bls.n	80083ba <__mdiff+0xda>
 8008306:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800830a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800830e:	458c      	cmp	ip, r1
 8008310:	d0f7      	beq.n	8008302 <__mdiff+0x22>
 8008312:	d209      	bcs.n	8008328 <__mdiff+0x48>
 8008314:	4622      	mov	r2, r4
 8008316:	4633      	mov	r3, r6
 8008318:	463c      	mov	r4, r7
 800831a:	4646      	mov	r6, r8
 800831c:	4617      	mov	r7, r2
 800831e:	4698      	mov	r8, r3
 8008320:	2501      	movs	r5, #1
 8008322:	e001      	b.n	8008328 <__mdiff+0x48>
 8008324:	dbf6      	blt.n	8008314 <__mdiff+0x34>
 8008326:	2500      	movs	r5, #0
 8008328:	6871      	ldr	r1, [r6, #4]
 800832a:	f7ff fda7 	bl	8007e7c <_Balloc>
 800832e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8008332:	6936      	ldr	r6, [r6, #16]
 8008334:	60c5      	str	r5, [r0, #12]
 8008336:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800833a:	46bc      	mov	ip, r7
 800833c:	f100 0514 	add.w	r5, r0, #20
 8008340:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8008344:	2300      	movs	r3, #0
 8008346:	f85c 1b04 	ldr.w	r1, [ip], #4
 800834a:	f854 8b04 	ldr.w	r8, [r4], #4
 800834e:	b28a      	uxth	r2, r1
 8008350:	fa13 f388 	uxtah	r3, r3, r8
 8008354:	0c09      	lsrs	r1, r1, #16
 8008356:	1a9a      	subs	r2, r3, r2
 8008358:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800835c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8008360:	b292      	uxth	r2, r2
 8008362:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8008366:	45e6      	cmp	lr, ip
 8008368:	f845 2b04 	str.w	r2, [r5], #4
 800836c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8008370:	d8e9      	bhi.n	8008346 <__mdiff+0x66>
 8008372:	42a7      	cmp	r7, r4
 8008374:	d917      	bls.n	80083a6 <__mdiff+0xc6>
 8008376:	46ae      	mov	lr, r5
 8008378:	46a4      	mov	ip, r4
 800837a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800837e:	fa13 f382 	uxtah	r3, r3, r2
 8008382:	1419      	asrs	r1, r3, #16
 8008384:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8008388:	b29b      	uxth	r3, r3
 800838a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800838e:	4567      	cmp	r7, ip
 8008390:	f84e 2b04 	str.w	r2, [lr], #4
 8008394:	ea4f 4321 	mov.w	r3, r1, asr #16
 8008398:	d8ef      	bhi.n	800837a <__mdiff+0x9a>
 800839a:	43e4      	mvns	r4, r4
 800839c:	4427      	add	r7, r4
 800839e:	f027 0703 	bic.w	r7, r7, #3
 80083a2:	3704      	adds	r7, #4
 80083a4:	443d      	add	r5, r7
 80083a6:	3d04      	subs	r5, #4
 80083a8:	b922      	cbnz	r2, 80083b4 <__mdiff+0xd4>
 80083aa:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80083ae:	3e01      	subs	r6, #1
 80083b0:	2b00      	cmp	r3, #0
 80083b2:	d0fa      	beq.n	80083aa <__mdiff+0xca>
 80083b4:	6106      	str	r6, [r0, #16]
 80083b6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80083ba:	2100      	movs	r1, #0
 80083bc:	f7ff fd5e 	bl	8007e7c <_Balloc>
 80083c0:	2201      	movs	r2, #1
 80083c2:	2300      	movs	r3, #0
 80083c4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80083c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080083cc <__d2b>:
 80083cc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80083d0:	460f      	mov	r7, r1
 80083d2:	b083      	sub	sp, #12
 80083d4:	2101      	movs	r1, #1
 80083d6:	ec55 4b10 	vmov	r4, r5, d0
 80083da:	4616      	mov	r6, r2
 80083dc:	f7ff fd4e 	bl	8007e7c <_Balloc>
 80083e0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80083e4:	4681      	mov	r9, r0
 80083e6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80083ea:	f1b8 0f00 	cmp.w	r8, #0
 80083ee:	d001      	beq.n	80083f4 <__d2b+0x28>
 80083f0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80083f4:	2c00      	cmp	r4, #0
 80083f6:	9301      	str	r3, [sp, #4]
 80083f8:	d024      	beq.n	8008444 <__d2b+0x78>
 80083fa:	a802      	add	r0, sp, #8
 80083fc:	f840 4d08 	str.w	r4, [r0, #-8]!
 8008400:	f7ff fdcc 	bl	8007f9c <__lo0bits>
 8008404:	2800      	cmp	r0, #0
 8008406:	d136      	bne.n	8008476 <__d2b+0xaa>
 8008408:	e9dd 2300 	ldrd	r2, r3, [sp]
 800840c:	f8c9 2014 	str.w	r2, [r9, #20]
 8008410:	2b00      	cmp	r3, #0
 8008412:	bf0c      	ite	eq
 8008414:	2101      	moveq	r1, #1
 8008416:	2102      	movne	r1, #2
 8008418:	f8c9 3018 	str.w	r3, [r9, #24]
 800841c:	f8c9 1010 	str.w	r1, [r9, #16]
 8008420:	f1b8 0f00 	cmp.w	r8, #0
 8008424:	d11b      	bne.n	800845e <__d2b+0x92>
 8008426:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800842a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800842e:	6038      	str	r0, [r7, #0]
 8008430:	6918      	ldr	r0, [r3, #16]
 8008432:	f7ff fd93 	bl	8007f5c <__hi0bits>
 8008436:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800843a:	6030      	str	r0, [r6, #0]
 800843c:	4648      	mov	r0, r9
 800843e:	b003      	add	sp, #12
 8008440:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8008444:	a801      	add	r0, sp, #4
 8008446:	f7ff fda9 	bl	8007f9c <__lo0bits>
 800844a:	9b01      	ldr	r3, [sp, #4]
 800844c:	f8c9 3014 	str.w	r3, [r9, #20]
 8008450:	2101      	movs	r1, #1
 8008452:	3020      	adds	r0, #32
 8008454:	f8c9 1010 	str.w	r1, [r9, #16]
 8008458:	f1b8 0f00 	cmp.w	r8, #0
 800845c:	d0e3      	beq.n	8008426 <__d2b+0x5a>
 800845e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8008462:	eb08 0300 	add.w	r3, r8, r0
 8008466:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800846a:	603b      	str	r3, [r7, #0]
 800846c:	6030      	str	r0, [r6, #0]
 800846e:	4648      	mov	r0, r9
 8008470:	b003      	add	sp, #12
 8008472:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8008476:	e9dd 1300 	ldrd	r1, r3, [sp]
 800847a:	f1c0 0220 	rsb	r2, r0, #32
 800847e:	fa03 f202 	lsl.w	r2, r3, r2
 8008482:	430a      	orrs	r2, r1
 8008484:	40c3      	lsrs	r3, r0
 8008486:	9301      	str	r3, [sp, #4]
 8008488:	f8c9 2014 	str.w	r2, [r9, #20]
 800848c:	e7c0      	b.n	8008410 <__d2b+0x44>
 800848e:	bf00      	nop

08008490 <_realloc_r>:
 8008490:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008494:	4692      	mov	sl, r2
 8008496:	b083      	sub	sp, #12
 8008498:	2900      	cmp	r1, #0
 800849a:	f000 80a1 	beq.w	80085e0 <_realloc_r+0x150>
 800849e:	460d      	mov	r5, r1
 80084a0:	4680      	mov	r8, r0
 80084a2:	f10a 040b 	add.w	r4, sl, #11
 80084a6:	f7ff fcdd 	bl	8007e64 <__malloc_lock>
 80084aa:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80084ae:	2c16      	cmp	r4, #22
 80084b0:	f022 0603 	bic.w	r6, r2, #3
 80084b4:	f1a5 0708 	sub.w	r7, r5, #8
 80084b8:	d83e      	bhi.n	8008538 <_realloc_r+0xa8>
 80084ba:	2410      	movs	r4, #16
 80084bc:	4621      	mov	r1, r4
 80084be:	45a2      	cmp	sl, r4
 80084c0:	d83f      	bhi.n	8008542 <_realloc_r+0xb2>
 80084c2:	428e      	cmp	r6, r1
 80084c4:	eb07 0906 	add.w	r9, r7, r6
 80084c8:	da74      	bge.n	80085b4 <_realloc_r+0x124>
 80084ca:	4bc7      	ldr	r3, [pc, #796]	; (80087e8 <_realloc_r+0x358>)
 80084cc:	6898      	ldr	r0, [r3, #8]
 80084ce:	4548      	cmp	r0, r9
 80084d0:	f000 80aa 	beq.w	8008628 <_realloc_r+0x198>
 80084d4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80084d8:	f020 0301 	bic.w	r3, r0, #1
 80084dc:	444b      	add	r3, r9
 80084de:	685b      	ldr	r3, [r3, #4]
 80084e0:	07db      	lsls	r3, r3, #31
 80084e2:	f140 8083 	bpl.w	80085ec <_realloc_r+0x15c>
 80084e6:	07d2      	lsls	r2, r2, #31
 80084e8:	d534      	bpl.n	8008554 <_realloc_r+0xc4>
 80084ea:	4651      	mov	r1, sl
 80084ec:	4640      	mov	r0, r8
 80084ee:	f7ff f9b1 	bl	8007854 <_malloc_r>
 80084f2:	4682      	mov	sl, r0
 80084f4:	b1e0      	cbz	r0, 8008530 <_realloc_r+0xa0>
 80084f6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80084fa:	f023 0301 	bic.w	r3, r3, #1
 80084fe:	443b      	add	r3, r7
 8008500:	f1a0 0208 	sub.w	r2, r0, #8
 8008504:	4293      	cmp	r3, r2
 8008506:	f000 80f9 	beq.w	80086fc <_realloc_r+0x26c>
 800850a:	1f32      	subs	r2, r6, #4
 800850c:	2a24      	cmp	r2, #36	; 0x24
 800850e:	f200 8107 	bhi.w	8008720 <_realloc_r+0x290>
 8008512:	2a13      	cmp	r2, #19
 8008514:	6829      	ldr	r1, [r5, #0]
 8008516:	f200 80e6 	bhi.w	80086e6 <_realloc_r+0x256>
 800851a:	4603      	mov	r3, r0
 800851c:	462a      	mov	r2, r5
 800851e:	6019      	str	r1, [r3, #0]
 8008520:	6851      	ldr	r1, [r2, #4]
 8008522:	6059      	str	r1, [r3, #4]
 8008524:	6892      	ldr	r2, [r2, #8]
 8008526:	609a      	str	r2, [r3, #8]
 8008528:	4629      	mov	r1, r5
 800852a:	4640      	mov	r0, r8
 800852c:	f7fe fe68 	bl	8007200 <_free_r>
 8008530:	4640      	mov	r0, r8
 8008532:	f7ff fc9d 	bl	8007e70 <__malloc_unlock>
 8008536:	e04f      	b.n	80085d8 <_realloc_r+0x148>
 8008538:	f024 0407 	bic.w	r4, r4, #7
 800853c:	2c00      	cmp	r4, #0
 800853e:	4621      	mov	r1, r4
 8008540:	dabd      	bge.n	80084be <_realloc_r+0x2e>
 8008542:	f04f 0a00 	mov.w	sl, #0
 8008546:	230c      	movs	r3, #12
 8008548:	4650      	mov	r0, sl
 800854a:	f8c8 3000 	str.w	r3, [r8]
 800854e:	b003      	add	sp, #12
 8008550:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008554:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8008558:	eba7 0b03 	sub.w	fp, r7, r3
 800855c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008560:	f022 0203 	bic.w	r2, r2, #3
 8008564:	18b3      	adds	r3, r6, r2
 8008566:	428b      	cmp	r3, r1
 8008568:	dbbf      	blt.n	80084ea <_realloc_r+0x5a>
 800856a:	46da      	mov	sl, fp
 800856c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008570:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8008574:	1f32      	subs	r2, r6, #4
 8008576:	2a24      	cmp	r2, #36	; 0x24
 8008578:	60c1      	str	r1, [r0, #12]
 800857a:	eb0b 0903 	add.w	r9, fp, r3
 800857e:	6088      	str	r0, [r1, #8]
 8008580:	f200 80c6 	bhi.w	8008710 <_realloc_r+0x280>
 8008584:	2a13      	cmp	r2, #19
 8008586:	6829      	ldr	r1, [r5, #0]
 8008588:	f240 80c0 	bls.w	800870c <_realloc_r+0x27c>
 800858c:	f8cb 1008 	str.w	r1, [fp, #8]
 8008590:	6869      	ldr	r1, [r5, #4]
 8008592:	f8cb 100c 	str.w	r1, [fp, #12]
 8008596:	2a1b      	cmp	r2, #27
 8008598:	68a9      	ldr	r1, [r5, #8]
 800859a:	f200 80d8 	bhi.w	800874e <_realloc_r+0x2be>
 800859e:	f10b 0210 	add.w	r2, fp, #16
 80085a2:	3508      	adds	r5, #8
 80085a4:	6011      	str	r1, [r2, #0]
 80085a6:	6869      	ldr	r1, [r5, #4]
 80085a8:	6051      	str	r1, [r2, #4]
 80085aa:	68a9      	ldr	r1, [r5, #8]
 80085ac:	6091      	str	r1, [r2, #8]
 80085ae:	461e      	mov	r6, r3
 80085b0:	465f      	mov	r7, fp
 80085b2:	4655      	mov	r5, sl
 80085b4:	687b      	ldr	r3, [r7, #4]
 80085b6:	1b32      	subs	r2, r6, r4
 80085b8:	2a0f      	cmp	r2, #15
 80085ba:	f003 0301 	and.w	r3, r3, #1
 80085be:	d822      	bhi.n	8008606 <_realloc_r+0x176>
 80085c0:	4333      	orrs	r3, r6
 80085c2:	607b      	str	r3, [r7, #4]
 80085c4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80085c8:	f043 0301 	orr.w	r3, r3, #1
 80085cc:	f8c9 3004 	str.w	r3, [r9, #4]
 80085d0:	4640      	mov	r0, r8
 80085d2:	f7ff fc4d 	bl	8007e70 <__malloc_unlock>
 80085d6:	46aa      	mov	sl, r5
 80085d8:	4650      	mov	r0, sl
 80085da:	b003      	add	sp, #12
 80085dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80085e0:	4611      	mov	r1, r2
 80085e2:	b003      	add	sp, #12
 80085e4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80085e8:	f7ff b934 	b.w	8007854 <_malloc_r>
 80085ec:	f020 0003 	bic.w	r0, r0, #3
 80085f0:	1833      	adds	r3, r6, r0
 80085f2:	428b      	cmp	r3, r1
 80085f4:	db61      	blt.n	80086ba <_realloc_r+0x22a>
 80085f6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80085fa:	461e      	mov	r6, r3
 80085fc:	60ca      	str	r2, [r1, #12]
 80085fe:	eb07 0903 	add.w	r9, r7, r3
 8008602:	6091      	str	r1, [r2, #8]
 8008604:	e7d6      	b.n	80085b4 <_realloc_r+0x124>
 8008606:	1939      	adds	r1, r7, r4
 8008608:	4323      	orrs	r3, r4
 800860a:	f042 0201 	orr.w	r2, r2, #1
 800860e:	607b      	str	r3, [r7, #4]
 8008610:	604a      	str	r2, [r1, #4]
 8008612:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8008616:	f043 0301 	orr.w	r3, r3, #1
 800861a:	3108      	adds	r1, #8
 800861c:	f8c9 3004 	str.w	r3, [r9, #4]
 8008620:	4640      	mov	r0, r8
 8008622:	f7fe fded 	bl	8007200 <_free_r>
 8008626:	e7d3      	b.n	80085d0 <_realloc_r+0x140>
 8008628:	6840      	ldr	r0, [r0, #4]
 800862a:	f020 0903 	bic.w	r9, r0, #3
 800862e:	44b1      	add	r9, r6
 8008630:	f104 0010 	add.w	r0, r4, #16
 8008634:	4581      	cmp	r9, r0
 8008636:	da77      	bge.n	8008728 <_realloc_r+0x298>
 8008638:	07d2      	lsls	r2, r2, #31
 800863a:	f53f af56 	bmi.w	80084ea <_realloc_r+0x5a>
 800863e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8008642:	eba7 0b02 	sub.w	fp, r7, r2
 8008646:	f8db 2004 	ldr.w	r2, [fp, #4]
 800864a:	f022 0203 	bic.w	r2, r2, #3
 800864e:	4491      	add	r9, r2
 8008650:	4548      	cmp	r0, r9
 8008652:	dc87      	bgt.n	8008564 <_realloc_r+0xd4>
 8008654:	46da      	mov	sl, fp
 8008656:	f8db 100c 	ldr.w	r1, [fp, #12]
 800865a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800865e:	1f32      	subs	r2, r6, #4
 8008660:	2a24      	cmp	r2, #36	; 0x24
 8008662:	60c1      	str	r1, [r0, #12]
 8008664:	6088      	str	r0, [r1, #8]
 8008666:	f200 80a1 	bhi.w	80087ac <_realloc_r+0x31c>
 800866a:	2a13      	cmp	r2, #19
 800866c:	6829      	ldr	r1, [r5, #0]
 800866e:	f240 809b 	bls.w	80087a8 <_realloc_r+0x318>
 8008672:	f8cb 1008 	str.w	r1, [fp, #8]
 8008676:	6869      	ldr	r1, [r5, #4]
 8008678:	f8cb 100c 	str.w	r1, [fp, #12]
 800867c:	2a1b      	cmp	r2, #27
 800867e:	68a9      	ldr	r1, [r5, #8]
 8008680:	f200 809b 	bhi.w	80087ba <_realloc_r+0x32a>
 8008684:	f10b 0210 	add.w	r2, fp, #16
 8008688:	3508      	adds	r5, #8
 800868a:	6011      	str	r1, [r2, #0]
 800868c:	6869      	ldr	r1, [r5, #4]
 800868e:	6051      	str	r1, [r2, #4]
 8008690:	68a9      	ldr	r1, [r5, #8]
 8008692:	6091      	str	r1, [r2, #8]
 8008694:	eb0b 0104 	add.w	r1, fp, r4
 8008698:	eba9 0204 	sub.w	r2, r9, r4
 800869c:	f042 0201 	orr.w	r2, r2, #1
 80086a0:	6099      	str	r1, [r3, #8]
 80086a2:	604a      	str	r2, [r1, #4]
 80086a4:	f8db 3004 	ldr.w	r3, [fp, #4]
 80086a8:	f003 0301 	and.w	r3, r3, #1
 80086ac:	431c      	orrs	r4, r3
 80086ae:	4640      	mov	r0, r8
 80086b0:	f8cb 4004 	str.w	r4, [fp, #4]
 80086b4:	f7ff fbdc 	bl	8007e70 <__malloc_unlock>
 80086b8:	e78e      	b.n	80085d8 <_realloc_r+0x148>
 80086ba:	07d3      	lsls	r3, r2, #31
 80086bc:	f53f af15 	bmi.w	80084ea <_realloc_r+0x5a>
 80086c0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80086c4:	eba7 0b03 	sub.w	fp, r7, r3
 80086c8:	f8db 2004 	ldr.w	r2, [fp, #4]
 80086cc:	f022 0203 	bic.w	r2, r2, #3
 80086d0:	4410      	add	r0, r2
 80086d2:	1983      	adds	r3, r0, r6
 80086d4:	428b      	cmp	r3, r1
 80086d6:	f6ff af45 	blt.w	8008564 <_realloc_r+0xd4>
 80086da:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80086de:	46da      	mov	sl, fp
 80086e0:	60ca      	str	r2, [r1, #12]
 80086e2:	6091      	str	r1, [r2, #8]
 80086e4:	e742      	b.n	800856c <_realloc_r+0xdc>
 80086e6:	6001      	str	r1, [r0, #0]
 80086e8:	686b      	ldr	r3, [r5, #4]
 80086ea:	6043      	str	r3, [r0, #4]
 80086ec:	2a1b      	cmp	r2, #27
 80086ee:	d83a      	bhi.n	8008766 <_realloc_r+0x2d6>
 80086f0:	f105 0208 	add.w	r2, r5, #8
 80086f4:	f100 0308 	add.w	r3, r0, #8
 80086f8:	68a9      	ldr	r1, [r5, #8]
 80086fa:	e710      	b.n	800851e <_realloc_r+0x8e>
 80086fc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8008700:	f023 0303 	bic.w	r3, r3, #3
 8008704:	441e      	add	r6, r3
 8008706:	eb07 0906 	add.w	r9, r7, r6
 800870a:	e753      	b.n	80085b4 <_realloc_r+0x124>
 800870c:	4652      	mov	r2, sl
 800870e:	e749      	b.n	80085a4 <_realloc_r+0x114>
 8008710:	4629      	mov	r1, r5
 8008712:	4650      	mov	r0, sl
 8008714:	461e      	mov	r6, r3
 8008716:	465f      	mov	r7, fp
 8008718:	f7ff fb40 	bl	8007d9c <memmove>
 800871c:	4655      	mov	r5, sl
 800871e:	e749      	b.n	80085b4 <_realloc_r+0x124>
 8008720:	4629      	mov	r1, r5
 8008722:	f7ff fb3b 	bl	8007d9c <memmove>
 8008726:	e6ff      	b.n	8008528 <_realloc_r+0x98>
 8008728:	4427      	add	r7, r4
 800872a:	eba9 0904 	sub.w	r9, r9, r4
 800872e:	f049 0201 	orr.w	r2, r9, #1
 8008732:	609f      	str	r7, [r3, #8]
 8008734:	607a      	str	r2, [r7, #4]
 8008736:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800873a:	f003 0301 	and.w	r3, r3, #1
 800873e:	431c      	orrs	r4, r3
 8008740:	4640      	mov	r0, r8
 8008742:	f845 4c04 	str.w	r4, [r5, #-4]
 8008746:	f7ff fb93 	bl	8007e70 <__malloc_unlock>
 800874a:	46aa      	mov	sl, r5
 800874c:	e744      	b.n	80085d8 <_realloc_r+0x148>
 800874e:	f8cb 1010 	str.w	r1, [fp, #16]
 8008752:	68e9      	ldr	r1, [r5, #12]
 8008754:	f8cb 1014 	str.w	r1, [fp, #20]
 8008758:	2a24      	cmp	r2, #36	; 0x24
 800875a:	d010      	beq.n	800877e <_realloc_r+0x2ee>
 800875c:	6929      	ldr	r1, [r5, #16]
 800875e:	f10b 0218 	add.w	r2, fp, #24
 8008762:	3510      	adds	r5, #16
 8008764:	e71e      	b.n	80085a4 <_realloc_r+0x114>
 8008766:	68ab      	ldr	r3, [r5, #8]
 8008768:	6083      	str	r3, [r0, #8]
 800876a:	68eb      	ldr	r3, [r5, #12]
 800876c:	60c3      	str	r3, [r0, #12]
 800876e:	2a24      	cmp	r2, #36	; 0x24
 8008770:	d010      	beq.n	8008794 <_realloc_r+0x304>
 8008772:	f105 0210 	add.w	r2, r5, #16
 8008776:	f100 0310 	add.w	r3, r0, #16
 800877a:	6929      	ldr	r1, [r5, #16]
 800877c:	e6cf      	b.n	800851e <_realloc_r+0x8e>
 800877e:	692a      	ldr	r2, [r5, #16]
 8008780:	f8cb 2018 	str.w	r2, [fp, #24]
 8008784:	696a      	ldr	r2, [r5, #20]
 8008786:	f8cb 201c 	str.w	r2, [fp, #28]
 800878a:	69a9      	ldr	r1, [r5, #24]
 800878c:	f10b 0220 	add.w	r2, fp, #32
 8008790:	3518      	adds	r5, #24
 8008792:	e707      	b.n	80085a4 <_realloc_r+0x114>
 8008794:	692b      	ldr	r3, [r5, #16]
 8008796:	6103      	str	r3, [r0, #16]
 8008798:	696b      	ldr	r3, [r5, #20]
 800879a:	6143      	str	r3, [r0, #20]
 800879c:	69a9      	ldr	r1, [r5, #24]
 800879e:	f105 0218 	add.w	r2, r5, #24
 80087a2:	f100 0318 	add.w	r3, r0, #24
 80087a6:	e6ba      	b.n	800851e <_realloc_r+0x8e>
 80087a8:	4652      	mov	r2, sl
 80087aa:	e76e      	b.n	800868a <_realloc_r+0x1fa>
 80087ac:	4629      	mov	r1, r5
 80087ae:	4650      	mov	r0, sl
 80087b0:	9301      	str	r3, [sp, #4]
 80087b2:	f7ff faf3 	bl	8007d9c <memmove>
 80087b6:	9b01      	ldr	r3, [sp, #4]
 80087b8:	e76c      	b.n	8008694 <_realloc_r+0x204>
 80087ba:	f8cb 1010 	str.w	r1, [fp, #16]
 80087be:	68e9      	ldr	r1, [r5, #12]
 80087c0:	f8cb 1014 	str.w	r1, [fp, #20]
 80087c4:	2a24      	cmp	r2, #36	; 0x24
 80087c6:	d004      	beq.n	80087d2 <_realloc_r+0x342>
 80087c8:	6929      	ldr	r1, [r5, #16]
 80087ca:	f10b 0218 	add.w	r2, fp, #24
 80087ce:	3510      	adds	r5, #16
 80087d0:	e75b      	b.n	800868a <_realloc_r+0x1fa>
 80087d2:	692a      	ldr	r2, [r5, #16]
 80087d4:	f8cb 2018 	str.w	r2, [fp, #24]
 80087d8:	696a      	ldr	r2, [r5, #20]
 80087da:	f8cb 201c 	str.w	r2, [fp, #28]
 80087de:	69a9      	ldr	r1, [r5, #24]
 80087e0:	f10b 0220 	add.w	r2, fp, #32
 80087e4:	3518      	adds	r5, #24
 80087e6:	e750      	b.n	800868a <_realloc_r+0x1fa>
 80087e8:	20000454 	.word	0x20000454

080087ec <frexp>:
 80087ec:	ec53 2b10 	vmov	r2, r3, d0
 80087f0:	b570      	push	{r4, r5, r6, lr}
 80087f2:	4e16      	ldr	r6, [pc, #88]	; (800884c <frexp+0x60>)
 80087f4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80087f8:	2500      	movs	r5, #0
 80087fa:	42b1      	cmp	r1, r6
 80087fc:	4604      	mov	r4, r0
 80087fe:	6005      	str	r5, [r0, #0]
 8008800:	dc21      	bgt.n	8008846 <frexp+0x5a>
 8008802:	ee10 6a10 	vmov	r6, s0
 8008806:	430e      	orrs	r6, r1
 8008808:	d01d      	beq.n	8008846 <frexp+0x5a>
 800880a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800880e:	4618      	mov	r0, r3
 8008810:	da0c      	bge.n	800882c <frexp+0x40>
 8008812:	4619      	mov	r1, r3
 8008814:	2200      	movs	r2, #0
 8008816:	ee10 0a10 	vmov	r0, s0
 800881a:	4b0d      	ldr	r3, [pc, #52]	; (8008850 <frexp+0x64>)
 800881c:	f7f8 f9ec 	bl	8000bf8 <__aeabi_dmul>
 8008820:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8008824:	4602      	mov	r2, r0
 8008826:	4608      	mov	r0, r1
 8008828:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800882c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8008830:	1509      	asrs	r1, r1, #20
 8008832:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8008836:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800883a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800883e:	4429      	add	r1, r5
 8008840:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8008844:	6021      	str	r1, [r4, #0]
 8008846:	ec43 2b10 	vmov	d0, r2, r3
 800884a:	bd70      	pop	{r4, r5, r6, pc}
 800884c:	7fefffff 	.word	0x7fefffff
 8008850:	43500000 	.word	0x43500000

08008854 <_sbrk_r>:
 8008854:	b538      	push	{r3, r4, r5, lr}
 8008856:	4c07      	ldr	r4, [pc, #28]	; (8008874 <_sbrk_r+0x20>)
 8008858:	2300      	movs	r3, #0
 800885a:	4605      	mov	r5, r0
 800885c:	4608      	mov	r0, r1
 800885e:	6023      	str	r3, [r4, #0]
 8008860:	f7fb fc10 	bl	8004084 <_sbrk>
 8008864:	1c43      	adds	r3, r0, #1
 8008866:	d000      	beq.n	800886a <_sbrk_r+0x16>
 8008868:	bd38      	pop	{r3, r4, r5, pc}
 800886a:	6823      	ldr	r3, [r4, #0]
 800886c:	2b00      	cmp	r3, #0
 800886e:	d0fb      	beq.n	8008868 <_sbrk_r+0x14>
 8008870:	602b      	str	r3, [r5, #0]
 8008872:	bd38      	pop	{r3, r4, r5, pc}
 8008874:	20000b24 	.word	0x20000b24

08008878 <__sread>:
 8008878:	b510      	push	{r4, lr}
 800887a:	460c      	mov	r4, r1
 800887c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008880:	f000 fabc 	bl	8008dfc <_read_r>
 8008884:	2800      	cmp	r0, #0
 8008886:	db03      	blt.n	8008890 <__sread+0x18>
 8008888:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800888a:	4403      	add	r3, r0
 800888c:	6523      	str	r3, [r4, #80]	; 0x50
 800888e:	bd10      	pop	{r4, pc}
 8008890:	89a3      	ldrh	r3, [r4, #12]
 8008892:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8008896:	81a3      	strh	r3, [r4, #12]
 8008898:	bd10      	pop	{r4, pc}
 800889a:	bf00      	nop

0800889c <__swrite>:
 800889c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80088a0:	4616      	mov	r6, r2
 80088a2:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80088a6:	461f      	mov	r7, r3
 80088a8:	05d3      	lsls	r3, r2, #23
 80088aa:	460c      	mov	r4, r1
 80088ac:	4605      	mov	r5, r0
 80088ae:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80088b2:	d507      	bpl.n	80088c4 <__swrite+0x28>
 80088b4:	2200      	movs	r2, #0
 80088b6:	2302      	movs	r3, #2
 80088b8:	f000 fa74 	bl	8008da4 <_lseek_r>
 80088bc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80088c0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80088c4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80088c8:	81a2      	strh	r2, [r4, #12]
 80088ca:	463b      	mov	r3, r7
 80088cc:	4632      	mov	r2, r6
 80088ce:	4628      	mov	r0, r5
 80088d0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80088d4:	f000 b88c 	b.w	80089f0 <_write_r>

080088d8 <__sseek>:
 80088d8:	b510      	push	{r4, lr}
 80088da:	460c      	mov	r4, r1
 80088dc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80088e0:	f000 fa60 	bl	8008da4 <_lseek_r>
 80088e4:	89a3      	ldrh	r3, [r4, #12]
 80088e6:	1c42      	adds	r2, r0, #1
 80088e8:	bf0e      	itee	eq
 80088ea:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80088ee:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80088f2:	6520      	strne	r0, [r4, #80]	; 0x50
 80088f4:	81a3      	strh	r3, [r4, #12]
 80088f6:	bd10      	pop	{r4, pc}

080088f8 <__sclose>:
 80088f8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80088fc:	f000 b922 	b.w	8008b44 <_close_r>

08008900 <strncpy>:
 8008900:	ea40 0301 	orr.w	r3, r0, r1
 8008904:	079b      	lsls	r3, r3, #30
 8008906:	b470      	push	{r4, r5, r6}
 8008908:	d12a      	bne.n	8008960 <strncpy+0x60>
 800890a:	2a03      	cmp	r2, #3
 800890c:	d928      	bls.n	8008960 <strncpy+0x60>
 800890e:	460c      	mov	r4, r1
 8008910:	4603      	mov	r3, r0
 8008912:	4621      	mov	r1, r4
 8008914:	f854 6b04 	ldr.w	r6, [r4], #4
 8008918:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800891c:	ea25 0506 	bic.w	r5, r5, r6
 8008920:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8008924:	d106      	bne.n	8008934 <strncpy+0x34>
 8008926:	3a04      	subs	r2, #4
 8008928:	2a03      	cmp	r2, #3
 800892a:	f843 6b04 	str.w	r6, [r3], #4
 800892e:	4621      	mov	r1, r4
 8008930:	d8ef      	bhi.n	8008912 <strncpy+0x12>
 8008932:	b19a      	cbz	r2, 800895c <strncpy+0x5c>
 8008934:	780c      	ldrb	r4, [r1, #0]
 8008936:	701c      	strb	r4, [r3, #0]
 8008938:	3a01      	subs	r2, #1
 800893a:	3301      	adds	r3, #1
 800893c:	b13c      	cbz	r4, 800894e <strncpy+0x4e>
 800893e:	b16a      	cbz	r2, 800895c <strncpy+0x5c>
 8008940:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8008944:	f803 4b01 	strb.w	r4, [r3], #1
 8008948:	3a01      	subs	r2, #1
 800894a:	2c00      	cmp	r4, #0
 800894c:	d1f7      	bne.n	800893e <strncpy+0x3e>
 800894e:	b12a      	cbz	r2, 800895c <strncpy+0x5c>
 8008950:	441a      	add	r2, r3
 8008952:	2100      	movs	r1, #0
 8008954:	f803 1b01 	strb.w	r1, [r3], #1
 8008958:	4293      	cmp	r3, r2
 800895a:	d1fb      	bne.n	8008954 <strncpy+0x54>
 800895c:	bc70      	pop	{r4, r5, r6}
 800895e:	4770      	bx	lr
 8008960:	4603      	mov	r3, r0
 8008962:	e7e6      	b.n	8008932 <strncpy+0x32>

08008964 <__sprint_r.part.0>:
 8008964:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008968:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800896a:	049c      	lsls	r4, r3, #18
 800896c:	4692      	mov	sl, r2
 800896e:	d52d      	bpl.n	80089cc <__sprint_r.part.0+0x68>
 8008970:	6893      	ldr	r3, [r2, #8]
 8008972:	6812      	ldr	r2, [r2, #0]
 8008974:	b343      	cbz	r3, 80089c8 <__sprint_r.part.0+0x64>
 8008976:	460e      	mov	r6, r1
 8008978:	4607      	mov	r7, r0
 800897a:	f102 0908 	add.w	r9, r2, #8
 800897e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8008982:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8008986:	d015      	beq.n	80089b4 <__sprint_r.part.0+0x50>
 8008988:	3d04      	subs	r5, #4
 800898a:	2400      	movs	r4, #0
 800898c:	e001      	b.n	8008992 <__sprint_r.part.0+0x2e>
 800898e:	45a0      	cmp	r8, r4
 8008990:	d00e      	beq.n	80089b0 <__sprint_r.part.0+0x4c>
 8008992:	4632      	mov	r2, r6
 8008994:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8008998:	4638      	mov	r0, r7
 800899a:	f000 f99d 	bl	8008cd8 <_fputwc_r>
 800899e:	1c43      	adds	r3, r0, #1
 80089a0:	f104 0401 	add.w	r4, r4, #1
 80089a4:	d1f3      	bne.n	800898e <__sprint_r.part.0+0x2a>
 80089a6:	2300      	movs	r3, #0
 80089a8:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80089ac:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80089b0:	f8da 3008 	ldr.w	r3, [sl, #8]
 80089b4:	f02b 0b03 	bic.w	fp, fp, #3
 80089b8:	eba3 030b 	sub.w	r3, r3, fp
 80089bc:	f8ca 3008 	str.w	r3, [sl, #8]
 80089c0:	f109 0908 	add.w	r9, r9, #8
 80089c4:	2b00      	cmp	r3, #0
 80089c6:	d1da      	bne.n	800897e <__sprint_r.part.0+0x1a>
 80089c8:	2000      	movs	r0, #0
 80089ca:	e7ec      	b.n	80089a6 <__sprint_r.part.0+0x42>
 80089cc:	f7fe fd0c 	bl	80073e8 <__sfvwrite_r>
 80089d0:	2300      	movs	r3, #0
 80089d2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80089d6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80089da:	bf00      	nop

080089dc <__sprint_r>:
 80089dc:	6893      	ldr	r3, [r2, #8]
 80089de:	b10b      	cbz	r3, 80089e4 <__sprint_r+0x8>
 80089e0:	f7ff bfc0 	b.w	8008964 <__sprint_r.part.0>
 80089e4:	b410      	push	{r4}
 80089e6:	4618      	mov	r0, r3
 80089e8:	6053      	str	r3, [r2, #4]
 80089ea:	f85d 4b04 	ldr.w	r4, [sp], #4
 80089ee:	4770      	bx	lr

080089f0 <_write_r>:
 80089f0:	b570      	push	{r4, r5, r6, lr}
 80089f2:	460d      	mov	r5, r1
 80089f4:	4c08      	ldr	r4, [pc, #32]	; (8008a18 <_write_r+0x28>)
 80089f6:	4611      	mov	r1, r2
 80089f8:	4606      	mov	r6, r0
 80089fa:	461a      	mov	r2, r3
 80089fc:	4628      	mov	r0, r5
 80089fe:	2300      	movs	r3, #0
 8008a00:	6023      	str	r3, [r4, #0]
 8008a02:	f7fb fb2c 	bl	800405e <_write>
 8008a06:	1c43      	adds	r3, r0, #1
 8008a08:	d000      	beq.n	8008a0c <_write_r+0x1c>
 8008a0a:	bd70      	pop	{r4, r5, r6, pc}
 8008a0c:	6823      	ldr	r3, [r4, #0]
 8008a0e:	2b00      	cmp	r3, #0
 8008a10:	d0fb      	beq.n	8008a0a <_write_r+0x1a>
 8008a12:	6033      	str	r3, [r6, #0]
 8008a14:	bd70      	pop	{r4, r5, r6, pc}
 8008a16:	bf00      	nop
 8008a18:	20000b24 	.word	0x20000b24

08008a1c <__register_exitproc>:
 8008a1c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008a20:	4d2b      	ldr	r5, [pc, #172]	; (8008ad0 <__register_exitproc+0xb4>)
 8008a22:	4606      	mov	r6, r0
 8008a24:	6828      	ldr	r0, [r5, #0]
 8008a26:	4698      	mov	r8, r3
 8008a28:	460f      	mov	r7, r1
 8008a2a:	4691      	mov	r9, r2
 8008a2c:	f7fe fe96 	bl	800775c <__retarget_lock_acquire_recursive>
 8008a30:	4b28      	ldr	r3, [pc, #160]	; (8008ad4 <__register_exitproc+0xb8>)
 8008a32:	681c      	ldr	r4, [r3, #0]
 8008a34:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8008a38:	2b00      	cmp	r3, #0
 8008a3a:	d03d      	beq.n	8008ab8 <__register_exitproc+0x9c>
 8008a3c:	685a      	ldr	r2, [r3, #4]
 8008a3e:	2a1f      	cmp	r2, #31
 8008a40:	dc0d      	bgt.n	8008a5e <__register_exitproc+0x42>
 8008a42:	f102 0c01 	add.w	ip, r2, #1
 8008a46:	bb16      	cbnz	r6, 8008a8e <__register_exitproc+0x72>
 8008a48:	3202      	adds	r2, #2
 8008a4a:	f8c3 c004 	str.w	ip, [r3, #4]
 8008a4e:	6828      	ldr	r0, [r5, #0]
 8008a50:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8008a54:	f7fe fe84 	bl	8007760 <__retarget_lock_release_recursive>
 8008a58:	2000      	movs	r0, #0
 8008a5a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008a5e:	4b1e      	ldr	r3, [pc, #120]	; (8008ad8 <__register_exitproc+0xbc>)
 8008a60:	b37b      	cbz	r3, 8008ac2 <__register_exitproc+0xa6>
 8008a62:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8008a66:	f3af 8000 	nop.w
 8008a6a:	4603      	mov	r3, r0
 8008a6c:	b348      	cbz	r0, 8008ac2 <__register_exitproc+0xa6>
 8008a6e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8008a72:	2100      	movs	r1, #0
 8008a74:	e9c0 2100 	strd	r2, r1, [r0]
 8008a78:	f04f 0c01 	mov.w	ip, #1
 8008a7c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8008a80:	460a      	mov	r2, r1
 8008a82:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8008a86:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8008a8a:	2e00      	cmp	r6, #0
 8008a8c:	d0dc      	beq.n	8008a48 <__register_exitproc+0x2c>
 8008a8e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8008a92:	2401      	movs	r4, #1
 8008a94:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8008a98:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8008a9c:	4094      	lsls	r4, r2
 8008a9e:	4320      	orrs	r0, r4
 8008aa0:	2e02      	cmp	r6, #2
 8008aa2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8008aa6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8008aaa:	d1cd      	bne.n	8008a48 <__register_exitproc+0x2c>
 8008aac:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8008ab0:	430c      	orrs	r4, r1
 8008ab2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8008ab6:	e7c7      	b.n	8008a48 <__register_exitproc+0x2c>
 8008ab8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8008abc:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8008ac0:	e7bc      	b.n	8008a3c <__register_exitproc+0x20>
 8008ac2:	6828      	ldr	r0, [r5, #0]
 8008ac4:	f7fe fe4c 	bl	8007760 <__retarget_lock_release_recursive>
 8008ac8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008acc:	e7c5      	b.n	8008a5a <__register_exitproc+0x3e>
 8008ace:	bf00      	nop
 8008ad0:	20000450 	.word	0x20000450
 8008ad4:	0800a70c 	.word	0x0800a70c
 8008ad8:	00000000 	.word	0x00000000

08008adc <_calloc_r>:
 8008adc:	b510      	push	{r4, lr}
 8008ade:	fb02 f101 	mul.w	r1, r2, r1
 8008ae2:	f7fe feb7 	bl	8007854 <_malloc_r>
 8008ae6:	4604      	mov	r4, r0
 8008ae8:	b1d8      	cbz	r0, 8008b22 <_calloc_r+0x46>
 8008aea:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8008aee:	f022 0203 	bic.w	r2, r2, #3
 8008af2:	3a04      	subs	r2, #4
 8008af4:	2a24      	cmp	r2, #36	; 0x24
 8008af6:	d81d      	bhi.n	8008b34 <_calloc_r+0x58>
 8008af8:	2a13      	cmp	r2, #19
 8008afa:	d914      	bls.n	8008b26 <_calloc_r+0x4a>
 8008afc:	2300      	movs	r3, #0
 8008afe:	2a1b      	cmp	r2, #27
 8008b00:	e9c0 3300 	strd	r3, r3, [r0]
 8008b04:	d91b      	bls.n	8008b3e <_calloc_r+0x62>
 8008b06:	2a24      	cmp	r2, #36	; 0x24
 8008b08:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8008b0c:	bf0a      	itet	eq
 8008b0e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8008b12:	f100 0210 	addne.w	r2, r0, #16
 8008b16:	f100 0218 	addeq.w	r2, r0, #24
 8008b1a:	2300      	movs	r3, #0
 8008b1c:	e9c2 3300 	strd	r3, r3, [r2]
 8008b20:	6093      	str	r3, [r2, #8]
 8008b22:	4620      	mov	r0, r4
 8008b24:	bd10      	pop	{r4, pc}
 8008b26:	4602      	mov	r2, r0
 8008b28:	2300      	movs	r3, #0
 8008b2a:	e9c2 3300 	strd	r3, r3, [r2]
 8008b2e:	6093      	str	r3, [r2, #8]
 8008b30:	4620      	mov	r0, r4
 8008b32:	bd10      	pop	{r4, pc}
 8008b34:	2100      	movs	r1, #0
 8008b36:	f7fb fb4f 	bl	80041d8 <memset>
 8008b3a:	4620      	mov	r0, r4
 8008b3c:	bd10      	pop	{r4, pc}
 8008b3e:	f100 0208 	add.w	r2, r0, #8
 8008b42:	e7f1      	b.n	8008b28 <_calloc_r+0x4c>

08008b44 <_close_r>:
 8008b44:	b538      	push	{r3, r4, r5, lr}
 8008b46:	4c07      	ldr	r4, [pc, #28]	; (8008b64 <_close_r+0x20>)
 8008b48:	2300      	movs	r3, #0
 8008b4a:	4605      	mov	r5, r0
 8008b4c:	4608      	mov	r0, r1
 8008b4e:	6023      	str	r3, [r4, #0]
 8008b50:	f7fb fab4 	bl	80040bc <_close>
 8008b54:	1c43      	adds	r3, r0, #1
 8008b56:	d000      	beq.n	8008b5a <_close_r+0x16>
 8008b58:	bd38      	pop	{r3, r4, r5, pc}
 8008b5a:	6823      	ldr	r3, [r4, #0]
 8008b5c:	2b00      	cmp	r3, #0
 8008b5e:	d0fb      	beq.n	8008b58 <_close_r+0x14>
 8008b60:	602b      	str	r3, [r5, #0]
 8008b62:	bd38      	pop	{r3, r4, r5, pc}
 8008b64:	20000b24 	.word	0x20000b24

08008b68 <_fclose_r>:
 8008b68:	b570      	push	{r4, r5, r6, lr}
 8008b6a:	2900      	cmp	r1, #0
 8008b6c:	d048      	beq.n	8008c00 <_fclose_r+0x98>
 8008b6e:	4605      	mov	r5, r0
 8008b70:	460c      	mov	r4, r1
 8008b72:	b110      	cbz	r0, 8008b7a <_fclose_r+0x12>
 8008b74:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008b76:	2b00      	cmp	r3, #0
 8008b78:	d048      	beq.n	8008c0c <_fclose_r+0xa4>
 8008b7a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008b7c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008b80:	07d0      	lsls	r0, r2, #31
 8008b82:	d440      	bmi.n	8008c06 <_fclose_r+0x9e>
 8008b84:	0599      	lsls	r1, r3, #22
 8008b86:	d530      	bpl.n	8008bea <_fclose_r+0x82>
 8008b88:	4621      	mov	r1, r4
 8008b8a:	4628      	mov	r0, r5
 8008b8c:	f7fe f990 	bl	8006eb0 <__sflush_r>
 8008b90:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8008b92:	4606      	mov	r6, r0
 8008b94:	b133      	cbz	r3, 8008ba4 <_fclose_r+0x3c>
 8008b96:	69e1      	ldr	r1, [r4, #28]
 8008b98:	4628      	mov	r0, r5
 8008b9a:	4798      	blx	r3
 8008b9c:	2800      	cmp	r0, #0
 8008b9e:	bfb8      	it	lt
 8008ba0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8008ba4:	89a3      	ldrh	r3, [r4, #12]
 8008ba6:	061a      	lsls	r2, r3, #24
 8008ba8:	d43c      	bmi.n	8008c24 <_fclose_r+0xbc>
 8008baa:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8008bac:	b141      	cbz	r1, 8008bc0 <_fclose_r+0x58>
 8008bae:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8008bb2:	4299      	cmp	r1, r3
 8008bb4:	d002      	beq.n	8008bbc <_fclose_r+0x54>
 8008bb6:	4628      	mov	r0, r5
 8008bb8:	f7fe fb22 	bl	8007200 <_free_r>
 8008bbc:	2300      	movs	r3, #0
 8008bbe:	6323      	str	r3, [r4, #48]	; 0x30
 8008bc0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8008bc2:	b121      	cbz	r1, 8008bce <_fclose_r+0x66>
 8008bc4:	4628      	mov	r0, r5
 8008bc6:	f7fe fb1b 	bl	8007200 <_free_r>
 8008bca:	2300      	movs	r3, #0
 8008bcc:	6463      	str	r3, [r4, #68]	; 0x44
 8008bce:	f7fe faa1 	bl	8007114 <__sfp_lock_acquire>
 8008bd2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8008bd4:	2200      	movs	r2, #0
 8008bd6:	07db      	lsls	r3, r3, #31
 8008bd8:	81a2      	strh	r2, [r4, #12]
 8008bda:	d51f      	bpl.n	8008c1c <_fclose_r+0xb4>
 8008bdc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008bde:	f7fe fdbb 	bl	8007758 <__retarget_lock_close_recursive>
 8008be2:	f7fe fa9d 	bl	8007120 <__sfp_lock_release>
 8008be6:	4630      	mov	r0, r6
 8008be8:	bd70      	pop	{r4, r5, r6, pc}
 8008bea:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008bec:	f7fe fdb6 	bl	800775c <__retarget_lock_acquire_recursive>
 8008bf0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008bf4:	2b00      	cmp	r3, #0
 8008bf6:	d1c7      	bne.n	8008b88 <_fclose_r+0x20>
 8008bf8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8008bfa:	f016 0601 	ands.w	r6, r6, #1
 8008bfe:	d016      	beq.n	8008c2e <_fclose_r+0xc6>
 8008c00:	2600      	movs	r6, #0
 8008c02:	4630      	mov	r0, r6
 8008c04:	bd70      	pop	{r4, r5, r6, pc}
 8008c06:	2b00      	cmp	r3, #0
 8008c08:	d0fa      	beq.n	8008c00 <_fclose_r+0x98>
 8008c0a:	e7bd      	b.n	8008b88 <_fclose_r+0x20>
 8008c0c:	f7fe fa56 	bl	80070bc <__sinit>
 8008c10:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008c12:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008c16:	07d0      	lsls	r0, r2, #31
 8008c18:	d4f5      	bmi.n	8008c06 <_fclose_r+0x9e>
 8008c1a:	e7b3      	b.n	8008b84 <_fclose_r+0x1c>
 8008c1c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008c1e:	f7fe fd9f 	bl	8007760 <__retarget_lock_release_recursive>
 8008c22:	e7db      	b.n	8008bdc <_fclose_r+0x74>
 8008c24:	6921      	ldr	r1, [r4, #16]
 8008c26:	4628      	mov	r0, r5
 8008c28:	f7fe faea 	bl	8007200 <_free_r>
 8008c2c:	e7bd      	b.n	8008baa <_fclose_r+0x42>
 8008c2e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008c30:	f7fe fd96 	bl	8007760 <__retarget_lock_release_recursive>
 8008c34:	4630      	mov	r0, r6
 8008c36:	bd70      	pop	{r4, r5, r6, pc}

08008c38 <__fputwc>:
 8008c38:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008c3c:	b082      	sub	sp, #8
 8008c3e:	4681      	mov	r9, r0
 8008c40:	4688      	mov	r8, r1
 8008c42:	4614      	mov	r4, r2
 8008c44:	f000 f8a0 	bl	8008d88 <__locale_mb_cur_max>
 8008c48:	2801      	cmp	r0, #1
 8008c4a:	d103      	bne.n	8008c54 <__fputwc+0x1c>
 8008c4c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8008c50:	2bfe      	cmp	r3, #254	; 0xfe
 8008c52:	d933      	bls.n	8008cbc <__fputwc+0x84>
 8008c54:	4642      	mov	r2, r8
 8008c56:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8008c5a:	a901      	add	r1, sp, #4
 8008c5c:	4648      	mov	r0, r9
 8008c5e:	f000 f93b 	bl	8008ed8 <_wcrtomb_r>
 8008c62:	1c42      	adds	r2, r0, #1
 8008c64:	4606      	mov	r6, r0
 8008c66:	d02f      	beq.n	8008cc8 <__fputwc+0x90>
 8008c68:	b320      	cbz	r0, 8008cb4 <__fputwc+0x7c>
 8008c6a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8008c6e:	2500      	movs	r5, #0
 8008c70:	f10d 0a04 	add.w	sl, sp, #4
 8008c74:	e009      	b.n	8008c8a <__fputwc+0x52>
 8008c76:	6823      	ldr	r3, [r4, #0]
 8008c78:	1c5a      	adds	r2, r3, #1
 8008c7a:	6022      	str	r2, [r4, #0]
 8008c7c:	f883 c000 	strb.w	ip, [r3]
 8008c80:	3501      	adds	r5, #1
 8008c82:	42b5      	cmp	r5, r6
 8008c84:	d216      	bcs.n	8008cb4 <__fputwc+0x7c>
 8008c86:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8008c8a:	68a3      	ldr	r3, [r4, #8]
 8008c8c:	3b01      	subs	r3, #1
 8008c8e:	2b00      	cmp	r3, #0
 8008c90:	60a3      	str	r3, [r4, #8]
 8008c92:	daf0      	bge.n	8008c76 <__fputwc+0x3e>
 8008c94:	69a7      	ldr	r7, [r4, #24]
 8008c96:	42bb      	cmp	r3, r7
 8008c98:	4661      	mov	r1, ip
 8008c9a:	4622      	mov	r2, r4
 8008c9c:	4648      	mov	r0, r9
 8008c9e:	db02      	blt.n	8008ca6 <__fputwc+0x6e>
 8008ca0:	f1bc 0f0a 	cmp.w	ip, #10
 8008ca4:	d1e7      	bne.n	8008c76 <__fputwc+0x3e>
 8008ca6:	f000 f8bf 	bl	8008e28 <__swbuf_r>
 8008caa:	1c43      	adds	r3, r0, #1
 8008cac:	d1e8      	bne.n	8008c80 <__fputwc+0x48>
 8008cae:	b002      	add	sp, #8
 8008cb0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008cb4:	4640      	mov	r0, r8
 8008cb6:	b002      	add	sp, #8
 8008cb8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008cbc:	fa5f fc88 	uxtb.w	ip, r8
 8008cc0:	4606      	mov	r6, r0
 8008cc2:	f88d c004 	strb.w	ip, [sp, #4]
 8008cc6:	e7d2      	b.n	8008c6e <__fputwc+0x36>
 8008cc8:	89a3      	ldrh	r3, [r4, #12]
 8008cca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008cce:	81a3      	strh	r3, [r4, #12]
 8008cd0:	b002      	add	sp, #8
 8008cd2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008cd6:	bf00      	nop

08008cd8 <_fputwc_r>:
 8008cd8:	b530      	push	{r4, r5, lr}
 8008cda:	4605      	mov	r5, r0
 8008cdc:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8008cde:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8008ce2:	07c0      	lsls	r0, r0, #31
 8008ce4:	4614      	mov	r4, r2
 8008ce6:	b083      	sub	sp, #12
 8008ce8:	b29a      	uxth	r2, r3
 8008cea:	d401      	bmi.n	8008cf0 <_fputwc_r+0x18>
 8008cec:	0590      	lsls	r0, r2, #22
 8008cee:	d51c      	bpl.n	8008d2a <_fputwc_r+0x52>
 8008cf0:	0490      	lsls	r0, r2, #18
 8008cf2:	d406      	bmi.n	8008d02 <_fputwc_r+0x2a>
 8008cf4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008cf6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8008cfa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8008cfe:	81a3      	strh	r3, [r4, #12]
 8008d00:	6662      	str	r2, [r4, #100]	; 0x64
 8008d02:	4628      	mov	r0, r5
 8008d04:	4622      	mov	r2, r4
 8008d06:	f7ff ff97 	bl	8008c38 <__fputwc>
 8008d0a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8008d0c:	07da      	lsls	r2, r3, #31
 8008d0e:	4605      	mov	r5, r0
 8008d10:	d402      	bmi.n	8008d18 <_fputwc_r+0x40>
 8008d12:	89a3      	ldrh	r3, [r4, #12]
 8008d14:	059b      	lsls	r3, r3, #22
 8008d16:	d502      	bpl.n	8008d1e <_fputwc_r+0x46>
 8008d18:	4628      	mov	r0, r5
 8008d1a:	b003      	add	sp, #12
 8008d1c:	bd30      	pop	{r4, r5, pc}
 8008d1e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008d20:	f7fe fd1e 	bl	8007760 <__retarget_lock_release_recursive>
 8008d24:	4628      	mov	r0, r5
 8008d26:	b003      	add	sp, #12
 8008d28:	bd30      	pop	{r4, r5, pc}
 8008d2a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008d2c:	9101      	str	r1, [sp, #4]
 8008d2e:	f7fe fd15 	bl	800775c <__retarget_lock_acquire_recursive>
 8008d32:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008d36:	9901      	ldr	r1, [sp, #4]
 8008d38:	b29a      	uxth	r2, r3
 8008d3a:	e7d9      	b.n	8008cf0 <_fputwc_r+0x18>

08008d3c <_fstat_r>:
 8008d3c:	b538      	push	{r3, r4, r5, lr}
 8008d3e:	460b      	mov	r3, r1
 8008d40:	4c07      	ldr	r4, [pc, #28]	; (8008d60 <_fstat_r+0x24>)
 8008d42:	4605      	mov	r5, r0
 8008d44:	4611      	mov	r1, r2
 8008d46:	4618      	mov	r0, r3
 8008d48:	2300      	movs	r3, #0
 8008d4a:	6023      	str	r3, [r4, #0]
 8008d4c:	f7fb f9b9 	bl	80040c2 <_fstat>
 8008d50:	1c43      	adds	r3, r0, #1
 8008d52:	d000      	beq.n	8008d56 <_fstat_r+0x1a>
 8008d54:	bd38      	pop	{r3, r4, r5, pc}
 8008d56:	6823      	ldr	r3, [r4, #0]
 8008d58:	2b00      	cmp	r3, #0
 8008d5a:	d0fb      	beq.n	8008d54 <_fstat_r+0x18>
 8008d5c:	602b      	str	r3, [r5, #0]
 8008d5e:	bd38      	pop	{r3, r4, r5, pc}
 8008d60:	20000b24 	.word	0x20000b24

08008d64 <_isatty_r>:
 8008d64:	b538      	push	{r3, r4, r5, lr}
 8008d66:	4c07      	ldr	r4, [pc, #28]	; (8008d84 <_isatty_r+0x20>)
 8008d68:	2300      	movs	r3, #0
 8008d6a:	4605      	mov	r5, r0
 8008d6c:	4608      	mov	r0, r1
 8008d6e:	6023      	str	r3, [r4, #0]
 8008d70:	f7fb f9ac 	bl	80040cc <_isatty>
 8008d74:	1c43      	adds	r3, r0, #1
 8008d76:	d000      	beq.n	8008d7a <_isatty_r+0x16>
 8008d78:	bd38      	pop	{r3, r4, r5, pc}
 8008d7a:	6823      	ldr	r3, [r4, #0]
 8008d7c:	2b00      	cmp	r3, #0
 8008d7e:	d0fb      	beq.n	8008d78 <_isatty_r+0x14>
 8008d80:	602b      	str	r3, [r5, #0]
 8008d82:	bd38      	pop	{r3, r4, r5, pc}
 8008d84:	20000b24 	.word	0x20000b24

08008d88 <__locale_mb_cur_max>:
 8008d88:	4b04      	ldr	r3, [pc, #16]	; (8008d9c <__locale_mb_cur_max+0x14>)
 8008d8a:	4a05      	ldr	r2, [pc, #20]	; (8008da0 <__locale_mb_cur_max+0x18>)
 8008d8c:	681b      	ldr	r3, [r3, #0]
 8008d8e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8008d90:	2b00      	cmp	r3, #0
 8008d92:	bf08      	it	eq
 8008d94:	4613      	moveq	r3, r2
 8008d96:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8008d9a:	4770      	bx	lr
 8008d9c:	20000020 	.word	0x20000020
 8008da0:	20000864 	.word	0x20000864

08008da4 <_lseek_r>:
 8008da4:	b570      	push	{r4, r5, r6, lr}
 8008da6:	460d      	mov	r5, r1
 8008da8:	4c08      	ldr	r4, [pc, #32]	; (8008dcc <_lseek_r+0x28>)
 8008daa:	4611      	mov	r1, r2
 8008dac:	4606      	mov	r6, r0
 8008dae:	461a      	mov	r2, r3
 8008db0:	4628      	mov	r0, r5
 8008db2:	2300      	movs	r3, #0
 8008db4:	6023      	str	r3, [r4, #0]
 8008db6:	f7fb f98b 	bl	80040d0 <_lseek>
 8008dba:	1c43      	adds	r3, r0, #1
 8008dbc:	d000      	beq.n	8008dc0 <_lseek_r+0x1c>
 8008dbe:	bd70      	pop	{r4, r5, r6, pc}
 8008dc0:	6823      	ldr	r3, [r4, #0]
 8008dc2:	2b00      	cmp	r3, #0
 8008dc4:	d0fb      	beq.n	8008dbe <_lseek_r+0x1a>
 8008dc6:	6033      	str	r3, [r6, #0]
 8008dc8:	bd70      	pop	{r4, r5, r6, pc}
 8008dca:	bf00      	nop
 8008dcc:	20000b24 	.word	0x20000b24

08008dd0 <__ascii_mbtowc>:
 8008dd0:	b082      	sub	sp, #8
 8008dd2:	b149      	cbz	r1, 8008de8 <__ascii_mbtowc+0x18>
 8008dd4:	b15a      	cbz	r2, 8008dee <__ascii_mbtowc+0x1e>
 8008dd6:	b16b      	cbz	r3, 8008df4 <__ascii_mbtowc+0x24>
 8008dd8:	7813      	ldrb	r3, [r2, #0]
 8008dda:	600b      	str	r3, [r1, #0]
 8008ddc:	7812      	ldrb	r2, [r2, #0]
 8008dde:	1c10      	adds	r0, r2, #0
 8008de0:	bf18      	it	ne
 8008de2:	2001      	movne	r0, #1
 8008de4:	b002      	add	sp, #8
 8008de6:	4770      	bx	lr
 8008de8:	a901      	add	r1, sp, #4
 8008dea:	2a00      	cmp	r2, #0
 8008dec:	d1f3      	bne.n	8008dd6 <__ascii_mbtowc+0x6>
 8008dee:	4610      	mov	r0, r2
 8008df0:	b002      	add	sp, #8
 8008df2:	4770      	bx	lr
 8008df4:	f06f 0001 	mvn.w	r0, #1
 8008df8:	e7f4      	b.n	8008de4 <__ascii_mbtowc+0x14>
 8008dfa:	bf00      	nop

08008dfc <_read_r>:
 8008dfc:	b570      	push	{r4, r5, r6, lr}
 8008dfe:	460d      	mov	r5, r1
 8008e00:	4c08      	ldr	r4, [pc, #32]	; (8008e24 <_read_r+0x28>)
 8008e02:	4611      	mov	r1, r2
 8008e04:	4606      	mov	r6, r0
 8008e06:	461a      	mov	r2, r3
 8008e08:	4628      	mov	r0, r5
 8008e0a:	2300      	movs	r3, #0
 8008e0c:	6023      	str	r3, [r4, #0]
 8008e0e:	f7fb f913 	bl	8004038 <_read>
 8008e12:	1c43      	adds	r3, r0, #1
 8008e14:	d000      	beq.n	8008e18 <_read_r+0x1c>
 8008e16:	bd70      	pop	{r4, r5, r6, pc}
 8008e18:	6823      	ldr	r3, [r4, #0]
 8008e1a:	2b00      	cmp	r3, #0
 8008e1c:	d0fb      	beq.n	8008e16 <_read_r+0x1a>
 8008e1e:	6033      	str	r3, [r6, #0]
 8008e20:	bd70      	pop	{r4, r5, r6, pc}
 8008e22:	bf00      	nop
 8008e24:	20000b24 	.word	0x20000b24

08008e28 <__swbuf_r>:
 8008e28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008e2a:	460d      	mov	r5, r1
 8008e2c:	4614      	mov	r4, r2
 8008e2e:	4606      	mov	r6, r0
 8008e30:	b110      	cbz	r0, 8008e38 <__swbuf_r+0x10>
 8008e32:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008e34:	2b00      	cmp	r3, #0
 8008e36:	d043      	beq.n	8008ec0 <__swbuf_r+0x98>
 8008e38:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8008e3c:	69a3      	ldr	r3, [r4, #24]
 8008e3e:	60a3      	str	r3, [r4, #8]
 8008e40:	b291      	uxth	r1, r2
 8008e42:	0708      	lsls	r0, r1, #28
 8008e44:	d51b      	bpl.n	8008e7e <__swbuf_r+0x56>
 8008e46:	6923      	ldr	r3, [r4, #16]
 8008e48:	b1cb      	cbz	r3, 8008e7e <__swbuf_r+0x56>
 8008e4a:	b2ed      	uxtb	r5, r5
 8008e4c:	0489      	lsls	r1, r1, #18
 8008e4e:	462f      	mov	r7, r5
 8008e50:	d522      	bpl.n	8008e98 <__swbuf_r+0x70>
 8008e52:	6822      	ldr	r2, [r4, #0]
 8008e54:	6961      	ldr	r1, [r4, #20]
 8008e56:	1ad3      	subs	r3, r2, r3
 8008e58:	4299      	cmp	r1, r3
 8008e5a:	dd29      	ble.n	8008eb0 <__swbuf_r+0x88>
 8008e5c:	3301      	adds	r3, #1
 8008e5e:	68a1      	ldr	r1, [r4, #8]
 8008e60:	1c50      	adds	r0, r2, #1
 8008e62:	3901      	subs	r1, #1
 8008e64:	60a1      	str	r1, [r4, #8]
 8008e66:	6020      	str	r0, [r4, #0]
 8008e68:	7015      	strb	r5, [r2, #0]
 8008e6a:	6962      	ldr	r2, [r4, #20]
 8008e6c:	429a      	cmp	r2, r3
 8008e6e:	d02a      	beq.n	8008ec6 <__swbuf_r+0x9e>
 8008e70:	89a3      	ldrh	r3, [r4, #12]
 8008e72:	07db      	lsls	r3, r3, #31
 8008e74:	d501      	bpl.n	8008e7a <__swbuf_r+0x52>
 8008e76:	2d0a      	cmp	r5, #10
 8008e78:	d025      	beq.n	8008ec6 <__swbuf_r+0x9e>
 8008e7a:	4638      	mov	r0, r7
 8008e7c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008e7e:	4621      	mov	r1, r4
 8008e80:	4630      	mov	r0, r6
 8008e82:	f7fc fffd 	bl	8005e80 <__swsetup_r>
 8008e86:	bb20      	cbnz	r0, 8008ed2 <__swbuf_r+0xaa>
 8008e88:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8008e8c:	6923      	ldr	r3, [r4, #16]
 8008e8e:	b291      	uxth	r1, r2
 8008e90:	b2ed      	uxtb	r5, r5
 8008e92:	0489      	lsls	r1, r1, #18
 8008e94:	462f      	mov	r7, r5
 8008e96:	d4dc      	bmi.n	8008e52 <__swbuf_r+0x2a>
 8008e98:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8008e9a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8008e9e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8008ea2:	81a2      	strh	r2, [r4, #12]
 8008ea4:	6822      	ldr	r2, [r4, #0]
 8008ea6:	6661      	str	r1, [r4, #100]	; 0x64
 8008ea8:	6961      	ldr	r1, [r4, #20]
 8008eaa:	1ad3      	subs	r3, r2, r3
 8008eac:	4299      	cmp	r1, r3
 8008eae:	dcd5      	bgt.n	8008e5c <__swbuf_r+0x34>
 8008eb0:	4621      	mov	r1, r4
 8008eb2:	4630      	mov	r0, r6
 8008eb4:	f7fe f8a6 	bl	8007004 <_fflush_r>
 8008eb8:	b958      	cbnz	r0, 8008ed2 <__swbuf_r+0xaa>
 8008eba:	6822      	ldr	r2, [r4, #0]
 8008ebc:	2301      	movs	r3, #1
 8008ebe:	e7ce      	b.n	8008e5e <__swbuf_r+0x36>
 8008ec0:	f7fe f8fc 	bl	80070bc <__sinit>
 8008ec4:	e7b8      	b.n	8008e38 <__swbuf_r+0x10>
 8008ec6:	4621      	mov	r1, r4
 8008ec8:	4630      	mov	r0, r6
 8008eca:	f7fe f89b 	bl	8007004 <_fflush_r>
 8008ece:	2800      	cmp	r0, #0
 8008ed0:	d0d3      	beq.n	8008e7a <__swbuf_r+0x52>
 8008ed2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8008ed6:	e7d0      	b.n	8008e7a <__swbuf_r+0x52>

08008ed8 <_wcrtomb_r>:
 8008ed8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008eda:	4c11      	ldr	r4, [pc, #68]	; (8008f20 <_wcrtomb_r+0x48>)
 8008edc:	6824      	ldr	r4, [r4, #0]
 8008ede:	b085      	sub	sp, #20
 8008ee0:	4606      	mov	r6, r0
 8008ee2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8008ee4:	461f      	mov	r7, r3
 8008ee6:	b151      	cbz	r1, 8008efe <_wcrtomb_r+0x26>
 8008ee8:	4d0e      	ldr	r5, [pc, #56]	; (8008f24 <_wcrtomb_r+0x4c>)
 8008eea:	2c00      	cmp	r4, #0
 8008eec:	bf08      	it	eq
 8008eee:	462c      	moveq	r4, r5
 8008ef0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8008ef4:	47a0      	blx	r4
 8008ef6:	1c43      	adds	r3, r0, #1
 8008ef8:	d00c      	beq.n	8008f14 <_wcrtomb_r+0x3c>
 8008efa:	b005      	add	sp, #20
 8008efc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008efe:	4a09      	ldr	r2, [pc, #36]	; (8008f24 <_wcrtomb_r+0x4c>)
 8008f00:	2c00      	cmp	r4, #0
 8008f02:	bf08      	it	eq
 8008f04:	4614      	moveq	r4, r2
 8008f06:	460a      	mov	r2, r1
 8008f08:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8008f0c:	a901      	add	r1, sp, #4
 8008f0e:	47a0      	blx	r4
 8008f10:	1c43      	adds	r3, r0, #1
 8008f12:	d1f2      	bne.n	8008efa <_wcrtomb_r+0x22>
 8008f14:	2200      	movs	r2, #0
 8008f16:	238a      	movs	r3, #138	; 0x8a
 8008f18:	603a      	str	r2, [r7, #0]
 8008f1a:	6033      	str	r3, [r6, #0]
 8008f1c:	b005      	add	sp, #20
 8008f1e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008f20:	20000020 	.word	0x20000020
 8008f24:	20000864 	.word	0x20000864

08008f28 <__ascii_wctomb>:
 8008f28:	b121      	cbz	r1, 8008f34 <__ascii_wctomb+0xc>
 8008f2a:	2aff      	cmp	r2, #255	; 0xff
 8008f2c:	d804      	bhi.n	8008f38 <__ascii_wctomb+0x10>
 8008f2e:	700a      	strb	r2, [r1, #0]
 8008f30:	2001      	movs	r0, #1
 8008f32:	4770      	bx	lr
 8008f34:	4608      	mov	r0, r1
 8008f36:	4770      	bx	lr
 8008f38:	238a      	movs	r3, #138	; 0x8a
 8008f3a:	6003      	str	r3, [r0, #0]
 8008f3c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008f40:	4770      	bx	lr
 8008f42:	bf00      	nop

08008f44 <_init>:
 8008f44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008f46:	bf00      	nop
 8008f48:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8008f4a:	bc08      	pop	{r3}
 8008f4c:	469e      	mov	lr, r3
 8008f4e:	4770      	bx	lr

08008f50 <_fini>:
 8008f50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008f52:	bf00      	nop
 8008f54:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8008f56:	bc08      	pop	{r3}
 8008f58:	469e      	mov	lr, r3
 8008f5a:	4770      	bx	lr
 8008f5c:	0000      	movs	r0, r0
	...
