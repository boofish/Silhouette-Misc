
statemate.elf:     file format elf32-littlearm


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
 80001e0:	08008744 	.word	0x08008744

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
 80001fc:	08008744 	.word	0x08008744

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
 80011c8:	f640 20e0 	movw	r0, #2784	; 0xae0
 80011cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d0:	6801      	ldr	r1, [r0, #0]
 80011d2:	3101      	adds	r1, #1
 80011d4:	6001      	str	r1, [r0, #0]
 80011d6:	4770      	bx	lr

080011d8 <HAL_GetTick>:
 80011d8:	f640 20e0 	movw	r0, #2784	; 0xae0
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
 80014a8:	f248 7278 	movw	r2, #34680	; 0x8778
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
 800151a:	f240 0014 	movw	r0, #20
 800151e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001522:	f248 7270 	movw	r2, #34672	; 0x8770
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
 8001544:	f240 0014 	movw	r0, #20
 8001548:	f241 0108 	movw	r1, #4104	; 0x1008
 800154c:	f248 7270 	movw	r2, #34672	; 0x8770
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
 8001902:	f640 21e4 	movw	r1, #2788	; 0xae4
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
 800194c:	f640 20e4 	movw	r0, #2788	; 0xae4
 8001950:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001954:	f7ff fecd 	bl	80016f2 <HAL_TIM_Base_Start_IT>
 8001958:	b006      	add	sp, #24
 800195a:	bdb0      	pop	{r4, r5, r7, pc}

0800195c <HAL_TIM_PeriodElapsedCallback>:
 800195c:	f7ff bc34 	b.w	80011c8 <HAL_IncTick>

08001960 <TIM6_DAC_IRQHandler>:
 8001960:	f640 20e4 	movw	r0, #2788	; 0xae4
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
 8001a94:	f248 73a8 	movw	r3, #34728	; 0x87a8
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
 8001abc:	f248 73b8 	movw	r3, #34744	; 0x87b8
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

08001f76 <interface>:
 8001f76:	f640 1ce4 	movw	ip, #2532	; 0x9e4
 8001f7a:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8001f7e:	f89c 1004 	ldrb.w	r1, [ip, #4]
 8001f82:	b149      	cbz	r1, 8001f98 <interface+0x22>
 8001f84:	f640 32ac 	movw	r2, #2988	; 0xbac
 8001f88:	f640 3334 	movw	r3, #2868	; 0xb34
 8001f8c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001f90:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8001f94:	6812      	ldr	r2, [r2, #0]
 8001f96:	601a      	str	r2, [r3, #0]
 8001f98:	f89c 2006 	ldrb.w	r2, [ip, #6]
 8001f9c:	4311      	orrs	r1, r2
 8001f9e:	0609      	lsls	r1, r1, #24
 8001fa0:	f640 31ac 	movw	r1, #2988	; 0xbac
 8001fa4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fa8:	6809      	ldr	r1, [r1, #0]
 8001faa:	bf1e      	ittt	ne
 8001fac:	f640 3248 	movwne	r2, #2888	; 0xb48
 8001fb0:	f2c2 0200 	movtne	r2, #8192	; 0x2000
 8001fb4:	6011      	strne	r1, [r2, #0]
 8001fb6:	f640 32bc 	movw	r2, #3004	; 0xbbc
 8001fba:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001fbe:	6813      	ldr	r3, [r2, #0]
 8001fc0:	b14b      	cbz	r3, 8001fd6 <interface+0x60>
 8001fc2:	4299      	cmp	r1, r3
 8001fc4:	bf1f      	itttt	ne
 8001fc6:	f640 3369 	movwne	r3, #2921	; 0xb69
 8001fca:	f2c2 0300 	movtne	r3, #8192	; 0x2000
 8001fce:	2000      	movne	r0, #0
 8001fd0:	7018      	strbne	r0, [r3, #0]
 8001fd2:	bf18      	it	ne
 8001fd4:	6010      	strne	r0, [r2, #0]
 8001fd6:	f640 3264 	movw	r2, #2916	; 0xb64
 8001fda:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001fde:	6813      	ldr	r3, [r2, #0]
 8001fe0:	b14b      	cbz	r3, 8001ff6 <interface+0x80>
 8001fe2:	4299      	cmp	r1, r3
 8001fe4:	bf1f      	itttt	ne
 8001fe6:	f640 3046 	movwne	r0, #2886	; 0xb46
 8001fea:	f2c2 0000 	movtne	r0, #8192	; 0x2000
 8001fee:	2300      	movne	r3, #0
 8001ff0:	7003      	strbne	r3, [r0, #0]
 8001ff2:	bf18      	it	ne
 8001ff4:	6013      	strne	r3, [r2, #0]
 8001ff6:	f640 32ec 	movw	r2, #3052	; 0xbec
 8001ffa:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001ffe:	6813      	ldr	r3, [r2, #0]
 8002000:	b14b      	cbz	r3, 8002016 <interface+0xa0>
 8002002:	4299      	cmp	r1, r3
 8002004:	bf1f      	itttt	ne
 8002006:	f640 3046 	movwne	r0, #2886	; 0xb46
 800200a:	f2c2 0000 	movtne	r0, #8192	; 0x2000
 800200e:	2300      	movne	r3, #0
 8002010:	7003      	strbne	r3, [r0, #0]
 8002012:	bf18      	it	ne
 8002014:	6013      	strne	r3, [r2, #0]
 8002016:	f640 32c8 	movw	r2, #3016	; 0xbc8
 800201a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800201e:	6813      	ldr	r3, [r2, #0]
 8002020:	b11b      	cbz	r3, 800202a <interface+0xb4>
 8002022:	4299      	cmp	r1, r3
 8002024:	bf1c      	itt	ne
 8002026:	2000      	movne	r0, #0
 8002028:	6010      	strne	r0, [r2, #0]
 800202a:	f640 32b4 	movw	r2, #2996	; 0xbb4
 800202e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002032:	6813      	ldr	r3, [r2, #0]
 8002034:	b11b      	cbz	r3, 800203e <interface+0xc8>
 8002036:	4299      	cmp	r1, r3
 8002038:	bf1c      	itt	ne
 800203a:	2000      	movne	r0, #0
 800203c:	6010      	strne	r0, [r2, #0]
 800203e:	f89c 0000 	ldrb.w	r0, [ip]
 8002042:	b960      	cbnz	r0, 800205e <interface+0xe8>
 8002044:	f640 306c 	movw	r0, #2924	; 0xb6c
 8002048:	f640 3288 	movw	r2, #2952	; 0xb88
 800204c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002050:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002054:	6800      	ldr	r0, [r0, #0]
 8002056:	6812      	ldr	r2, [r2, #0]
 8002058:	4282      	cmp	r2, r0
 800205a:	bf08      	it	eq
 800205c:	4770      	bxeq	lr
 800205e:	f640 3094 	movw	r0, #2964	; 0xb94
 8002062:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002066:	6001      	str	r1, [r0, #0]
 8002068:	4770      	bx	lr

0800206a <generic_KINDERSICHERUNG_CTRL>:
 800206a:	b580      	push	{r7, lr}
 800206c:	466f      	mov	r7, sp
 800206e:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002072:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002076:	7a80      	ldrb	r0, [r0, #10]
 8002078:	2800      	cmp	r0, #0
 800207a:	f000 80eb 	beq.w	8002254 <generic_KINDERSICHERUNG_CTRL+0x1ea>
 800207e:	f640 3c9a 	movw	ip, #2970	; 0xb9a
 8002082:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002086:	f89c 1000 	ldrb.w	r1, [ip]
 800208a:	2903      	cmp	r1, #3
 800208c:	d027      	beq.n	80020de <generic_KINDERSICHERUNG_CTRL+0x74>
 800208e:	2902      	cmp	r1, #2
 8002090:	d04f      	beq.n	8002132 <generic_KINDERSICHERUNG_CTRL+0xc8>
 8002092:	2901      	cmp	r1, #1
 8002094:	d17a      	bne.n	800218c <generic_KINDERSICHERUNG_CTRL+0x122>
 8002096:	f640 318c 	movw	r1, #2956	; 0xb8c
 800209a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800209e:	780a      	ldrb	r2, [r1, #0]
 80020a0:	f640 4106 	movw	r1, #3078	; 0xc06
 80020a4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020a8:	7809      	ldrb	r1, [r1, #0]
 80020aa:	ea51 0302 	orrs.w	r3, r1, r2
 80020ae:	f000 808c 	beq.w	80021ca <generic_KINDERSICHERUNG_CTRL+0x160>
 80020b2:	f640 3ec2 	movw	lr, #3010	; 0xbc2
 80020b6:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80020ba:	f89e 3000 	ldrb.w	r3, [lr]
 80020be:	2b01      	cmp	r3, #1
 80020c0:	d16c      	bne.n	800219c <generic_KINDERSICHERUNG_CTRL+0x132>
 80020c2:	f640 3351 	movw	r3, #2897	; 0xb51
 80020c6:	2a00      	cmp	r2, #0
 80020c8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80020cc:	781b      	ldrb	r3, [r3, #0]
 80020ce:	d001      	beq.n	80020d4 <generic_KINDERSICHERUNG_CTRL+0x6a>
 80020d0:	2b00      	cmp	r3, #0
 80020d2:	d04c      	beq.n	800216e <generic_KINDERSICHERUNG_CTRL+0x104>
 80020d4:	f640 306a 	movw	r0, #2922	; 0xb6a
 80020d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020dc:	e0bf      	b.n	800225e <generic_KINDERSICHERUNG_CTRL+0x1f4>
 80020de:	f640 31fe 	movw	r1, #3070	; 0xbfe
 80020e2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020e6:	780a      	ldrb	r2, [r1, #0]
 80020e8:	f640 317e 	movw	r1, #2942	; 0xb7e
 80020ec:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020f0:	780b      	ldrb	r3, [r1, #0]
 80020f2:	f640 31aa 	movw	r1, #2986	; 0xbaa
 80020f6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020fa:	7809      	ldrb	r1, [r1, #0]
 80020fc:	2900      	cmp	r1, #0
 80020fe:	d154      	bne.n	80021aa <generic_KINDERSICHERUNG_CTRL+0x140>
 8002100:	2b00      	cmp	r3, #0
 8002102:	bf18      	it	ne
 8002104:	2a00      	cmpne	r2, #0
 8002106:	d050      	beq.n	80021aa <generic_KINDERSICHERUNG_CTRL+0x140>
 8002108:	f640 317b 	movw	r1, #2939	; 0xb7b
 800210c:	2200      	movs	r2, #0
 800210e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002112:	700a      	strb	r2, [r1, #0]
 8002114:	f640 31fd 	movw	r1, #3069	; 0xbfd
 8002118:	2201      	movs	r2, #1
 800211a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800211e:	700a      	strb	r2, [r1, #0]
 8002120:	f640 3160 	movw	r1, #2912	; 0xb60
 8002124:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002128:	700a      	strb	r2, [r1, #0]
 800212a:	2102      	movs	r1, #2
 800212c:	f88c 1000 	strb.w	r1, [ip]
 8002130:	bd80      	pop	{r7, pc}
 8002132:	f640 31fe 	movw	r1, #3070	; 0xbfe
 8002136:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800213a:	780a      	ldrb	r2, [r1, #0]
 800213c:	f640 317e 	movw	r1, #2942	; 0xb7e
 8002140:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002144:	7809      	ldrb	r1, [r1, #0]
 8002146:	ea51 0302 	orrs.w	r3, r1, r2
 800214a:	d057      	beq.n	80021fc <generic_KINDERSICHERUNG_CTRL+0x192>
 800214c:	f640 3ea0 	movw	lr, #2976	; 0xba0
 8002150:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002154:	f89e 3000 	ldrb.w	r3, [lr]
 8002158:	2b01      	cmp	r3, #1
 800215a:	d11f      	bne.n	800219c <generic_KINDERSICHERUNG_CTRL+0x132>
 800215c:	f640 3328 	movw	r3, #2856	; 0xb28
 8002160:	2a00      	cmp	r2, #0
 8002162:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002166:	781b      	ldrb	r3, [r3, #0]
 8002168:	d075      	beq.n	8002256 <generic_KINDERSICHERUNG_CTRL+0x1ec>
 800216a:	2b00      	cmp	r3, #0
 800216c:	d173      	bne.n	8002256 <generic_KINDERSICHERUNG_CTRL+0x1ec>
 800216e:	f640 317b 	movw	r1, #2939	; 0xb7b
 8002172:	2200      	movs	r2, #0
 8002174:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002178:	700a      	strb	r2, [r1, #0]
 800217a:	f640 3160 	movw	r1, #2912	; 0xb60
 800217e:	2201      	movs	r2, #1
 8002180:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002184:	f88e 2000 	strb.w	r2, [lr]
 8002188:	700a      	strb	r2, [r1, #0]
 800218a:	bd80      	pop	{r7, pc}
 800218c:	f640 307b 	movw	r0, #2939	; 0xb7b
 8002190:	2100      	movs	r1, #0
 8002192:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002196:	7001      	strb	r1, [r0, #0]
 8002198:	2003      	movs	r0, #3
 800219a:	e059      	b.n	8002250 <generic_KINDERSICHERUNG_CTRL+0x1e6>
 800219c:	f640 307b 	movw	r0, #2939	; 0xb7b
 80021a0:	2100      	movs	r1, #0
 80021a2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021a6:	7001      	strb	r1, [r0, #0]
 80021a8:	bd80      	pop	{r7, pc}
 80021aa:	2b00      	cmp	r3, #0
 80021ac:	d03f      	beq.n	800222e <generic_KINDERSICHERUNG_CTRL+0x1c4>
 80021ae:	ea52 0001 	orrs.w	r0, r2, r1
 80021b2:	d13c      	bne.n	800222e <generic_KINDERSICHERUNG_CTRL+0x1c4>
 80021b4:	f640 307b 	movw	r0, #2939	; 0xb7b
 80021b8:	2100      	movs	r1, #0
 80021ba:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021be:	7001      	strb	r1, [r0, #0]
 80021c0:	f640 30fd 	movw	r0, #3069	; 0xbfd
 80021c4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021c8:	e03f      	b.n	800224a <generic_KINDERSICHERUNG_CTRL+0x1e0>
 80021ca:	f640 317b 	movw	r1, #2939	; 0xb7b
 80021ce:	2200      	movs	r2, #0
 80021d0:	f640 30c2 	movw	r0, #3010	; 0xbc2
 80021d4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021dc:	700a      	strb	r2, [r1, #0]
 80021de:	f640 31fd 	movw	r1, #3069	; 0xbfd
 80021e2:	7002      	strb	r2, [r0, #0]
 80021e4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021e8:	700a      	strb	r2, [r1, #0]
 80021ea:	f640 3160 	movw	r1, #2912	; 0xb60
 80021ee:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021f2:	700a      	strb	r2, [r1, #0]
 80021f4:	2103      	movs	r1, #3
 80021f6:	f88c 1000 	strb.w	r1, [ip]
 80021fa:	bd80      	pop	{r7, pc}
 80021fc:	f640 317b 	movw	r1, #2939	; 0xb7b
 8002200:	2200      	movs	r2, #0
 8002202:	f640 30a0 	movw	r0, #2976	; 0xba0
 8002206:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800220a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800220e:	700a      	strb	r2, [r1, #0]
 8002210:	f640 31fd 	movw	r1, #3069	; 0xbfd
 8002214:	7002      	strb	r2, [r0, #0]
 8002216:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800221a:	700a      	strb	r2, [r1, #0]
 800221c:	f640 3160 	movw	r1, #2912	; 0xb60
 8002220:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002224:	700a      	strb	r2, [r1, #0]
 8002226:	2103      	movs	r1, #3
 8002228:	f88c 1000 	strb.w	r1, [ip]
 800222c:	bd80      	pop	{r7, pc}
 800222e:	ea53 0001 	orrs.w	r0, r3, r1
 8002232:	d136      	bne.n	80022a2 <generic_KINDERSICHERUNG_CTRL+0x238>
 8002234:	b3aa      	cbz	r2, 80022a2 <generic_KINDERSICHERUNG_CTRL+0x238>
 8002236:	f640 307b 	movw	r0, #2939	; 0xb7b
 800223a:	2100      	movs	r1, #0
 800223c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002240:	7001      	strb	r1, [r0, #0]
 8002242:	f640 3060 	movw	r0, #2912	; 0xb60
 8002246:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800224a:	2101      	movs	r1, #1
 800224c:	7001      	strb	r1, [r0, #0]
 800224e:	2002      	movs	r0, #2
 8002250:	f88c 0000 	strb.w	r0, [ip]
 8002254:	bd80      	pop	{r7, pc}
 8002256:	f640 303b 	movw	r0, #2875	; 0xb3b
 800225a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800225e:	f890 c000 	ldrb.w	ip, [r0]
 8002262:	b189      	cbz	r1, 8002288 <generic_KINDERSICHERUNG_CTRL+0x21e>
 8002264:	f1bc 0f00 	cmp.w	ip, #0
 8002268:	d10e      	bne.n	8002288 <generic_KINDERSICHERUNG_CTRL+0x21e>
 800226a:	f640 307b 	movw	r0, #2939	; 0xb7b
 800226e:	2100      	movs	r1, #0
 8002270:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002274:	7001      	strb	r1, [r0, #0]
 8002276:	f640 30fd 	movw	r0, #3069	; 0xbfd
 800227a:	2101      	movs	r1, #1
 800227c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002280:	f88e 1000 	strb.w	r1, [lr]
 8002284:	7001      	strb	r1, [r0, #0]
 8002286:	bd80      	pop	{r7, pc}
 8002288:	bb5a      	cbnz	r2, 80022e2 <generic_KINDERSICHERUNG_CTRL+0x278>
 800228a:	b353      	cbz	r3, 80022e2 <generic_KINDERSICHERUNG_CTRL+0x278>
 800228c:	f640 307b 	movw	r0, #2939	; 0xb7b
 8002290:	2100      	movs	r1, #0
 8002292:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002296:	7001      	strb	r1, [r0, #0]
 8002298:	f640 3060 	movw	r0, #2912	; 0xb60
 800229c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022a0:	e02e      	b.n	8002300 <generic_KINDERSICHERUNG_CTRL+0x296>
 80022a2:	f640 308c 	movw	r0, #2956	; 0xb8c
 80022a6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022aa:	7802      	ldrb	r2, [r0, #0]
 80022ac:	f640 4006 	movw	r0, #3078	; 0xc06
 80022b0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022b4:	7803      	ldrb	r3, [r0, #0]
 80022b6:	2b00      	cmp	r3, #0
 80022b8:	d027      	beq.n	800230a <generic_KINDERSICHERUNG_CTRL+0x2a0>
 80022ba:	bf18      	it	ne
 80022bc:	2a00      	cmpne	r2, #0
 80022be:	d033      	beq.n	8002328 <generic_KINDERSICHERUNG_CTRL+0x2be>
 80022c0:	f640 307b 	movw	r0, #2939	; 0xb7b
 80022c4:	2100      	movs	r1, #0
 80022c6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022ca:	7001      	strb	r1, [r0, #0]
 80022cc:	f640 3060 	movw	r0, #2912	; 0xb60
 80022d0:	2101      	movs	r1, #1
 80022d2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022d6:	7001      	strb	r1, [r0, #0]
 80022d8:	f640 30fd 	movw	r0, #3069	; 0xbfd
 80022dc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022e0:	e033      	b.n	800234a <generic_KINDERSICHERUNG_CTRL+0x2e0>
 80022e2:	2900      	cmp	r1, #0
 80022e4:	d1b6      	bne.n	8002254 <generic_KINDERSICHERUNG_CTRL+0x1ea>
 80022e6:	f1bc 0f00 	cmp.w	ip, #0
 80022ea:	d0b3      	beq.n	8002254 <generic_KINDERSICHERUNG_CTRL+0x1ea>
 80022ec:	f640 307b 	movw	r0, #2939	; 0xb7b
 80022f0:	2100      	movs	r1, #0
 80022f2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022f6:	7001      	strb	r1, [r0, #0]
 80022f8:	f640 30fd 	movw	r0, #3069	; 0xbfd
 80022fc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002300:	7001      	strb	r1, [r0, #0]
 8002302:	2001      	movs	r0, #1
 8002304:	f88e 0000 	strb.w	r0, [lr]
 8002308:	bd80      	pop	{r7, pc}
 800230a:	2900      	cmp	r1, #0
 800230c:	d1a2      	bne.n	8002254 <generic_KINDERSICHERUNG_CTRL+0x1ea>
 800230e:	2a00      	cmp	r2, #0
 8002310:	d0a0      	beq.n	8002254 <generic_KINDERSICHERUNG_CTRL+0x1ea>
 8002312:	f640 307b 	movw	r0, #2939	; 0xb7b
 8002316:	2100      	movs	r1, #0
 8002318:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800231c:	7001      	strb	r1, [r0, #0]
 800231e:	f640 3060 	movw	r0, #2912	; 0xb60
 8002322:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002326:	e00f      	b.n	8002348 <generic_KINDERSICHERUNG_CTRL+0x2de>
 8002328:	2b00      	cmp	r3, #0
 800232a:	d093      	beq.n	8002254 <generic_KINDERSICHERUNG_CTRL+0x1ea>
 800232c:	ea51 0002 	orrs.w	r0, r1, r2
 8002330:	bf18      	it	ne
 8002332:	bd80      	popne	{r7, pc}
 8002334:	f640 307b 	movw	r0, #2939	; 0xb7b
 8002338:	2100      	movs	r1, #0
 800233a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800233e:	7001      	strb	r1, [r0, #0]
 8002340:	f640 30fd 	movw	r0, #3069	; 0xbfd
 8002344:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002348:	2101      	movs	r1, #1
 800234a:	7001      	strb	r1, [r0, #0]
 800234c:	f88c 1000 	strb.w	r1, [ip]
 8002350:	bd80      	pop	{r7, pc}

08002352 <generic_FH_TUERMODUL_CTRL>:
 8002352:	b5d0      	push	{r4, r6, r7, lr}
 8002354:	af02      	add	r7, sp, #8
 8002356:	f640 14e4 	movw	r4, #2532	; 0x9e4
 800235a:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800235e:	7b61      	ldrb	r1, [r4, #13]
 8002360:	b3c1      	cbz	r1, 80023d4 <generic_FH_TUERMODUL_CTRL+0x82>
 8002362:	7aa1      	ldrb	r1, [r4, #10]
 8002364:	b929      	cbnz	r1, 8002372 <generic_FH_TUERMODUL_CTRL+0x20>
 8002366:	f640 319a 	movw	r1, #2970	; 0xb9a
 800236a:	2203      	movs	r2, #3
 800236c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002370:	700a      	strb	r2, [r1, #0]
 8002372:	2100      	movs	r1, #0
 8002374:	72e1      	strb	r1, [r4, #11]
 8002376:	7ce2      	ldrb	r2, [r4, #19]
 8002378:	b932      	cbnz	r2, 8002388 <generic_FH_TUERMODUL_CTRL+0x36>
 800237a:	7021      	strb	r1, [r4, #0]
 800237c:	f640 318d 	movw	r1, #2957	; 0xb8d
 8002380:	2201      	movs	r2, #1
 8002382:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002386:	700a      	strb	r2, [r1, #0]
 8002388:	2101      	movs	r1, #1
 800238a:	72e1      	strb	r1, [r4, #11]
 800238c:	7521      	strb	r1, [r4, #20]
 800238e:	f640 4105 	movw	r1, #3077	; 0xc05
 8002392:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002396:	780a      	ldrb	r2, [r1, #0]
 8002398:	2a03      	cmp	r2, #3
 800239a:	d027      	beq.n	80023ec <generic_FH_TUERMODUL_CTRL+0x9a>
 800239c:	2a02      	cmp	r2, #2
 800239e:	d052      	beq.n	8002446 <generic_FH_TUERMODUL_CTRL+0xf4>
 80023a0:	2a01      	cmp	r2, #1
 80023a2:	f040 8081 	bne.w	80024a8 <generic_FH_TUERMODUL_CTRL+0x156>
 80023a6:	f640 32e4 	movw	r2, #3044	; 0xbe4
 80023aa:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80023ae:	6812      	ldr	r2, [r2, #0]
 80023b0:	2a3b      	cmp	r2, #59	; 0x3b
 80023b2:	f040 8168 	bne.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80023b6:	f640 325c 	movw	r2, #2908	; 0xb5c
 80023ba:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80023be:	6812      	ldr	r2, [r2, #0]
 80023c0:	2a3b      	cmp	r2, #59	; 0x3b
 80023c2:	f000 8160 	beq.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80023c6:	f640 327b 	movw	r2, #2939	; 0xb7b
 80023ca:	2300      	movs	r3, #0
 80023cc:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80023d0:	7013      	strb	r3, [r2, #0]
 80023d2:	e062      	b.n	800249a <generic_FH_TUERMODUL_CTRL+0x148>
 80023d4:	7be1      	ldrb	r1, [r4, #15]
 80023d6:	2900      	cmp	r1, #0
 80023d8:	bf08      	it	eq
 80023da:	bdd0      	popeq	{r4, r6, r7, pc}
 80023dc:	7ba1      	ldrb	r1, [r4, #14]
 80023de:	2900      	cmp	r1, #0
 80023e0:	bf01      	itttt	eq
 80023e2:	2100      	moveq	r1, #0
 80023e4:	7121      	strbeq	r1, [r4, #4]
 80023e6:	71a1      	strbeq	r1, [r4, #6]
 80023e8:	bdd0      	popeq	{r4, r6, r7, pc}
 80023ea:	bdd0      	pop	{r4, r6, r7, pc}
 80023ec:	f640 32e4 	movw	r2, #3044	; 0xbe4
 80023f0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80023f4:	6812      	ldr	r2, [r2, #0]
 80023f6:	2a3d      	cmp	r2, #61	; 0x3d
 80023f8:	db5e      	blt.n	80024b8 <generic_FH_TUERMODUL_CTRL+0x166>
 80023fa:	f640 325c 	movw	r2, #2908	; 0xb5c
 80023fe:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002402:	6812      	ldr	r2, [r2, #0]
 8002404:	2a3c      	cmp	r2, #60	; 0x3c
 8002406:	dc57      	bgt.n	80024b8 <generic_FH_TUERMODUL_CTRL+0x166>
 8002408:	f640 32c1 	movw	r2, #3009	; 0xbc1
 800240c:	f640 3371 	movw	r3, #2929	; 0xb71
 8002410:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002414:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002418:	7812      	ldrb	r2, [r2, #0]
 800241a:	781b      	ldrb	r3, [r3, #0]
 800241c:	431a      	orrs	r2, r3
 800241e:	0612      	lsls	r2, r2, #24
 8002420:	d14a      	bne.n	80024b8 <generic_FH_TUERMODUL_CTRL+0x166>
 8002422:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002426:	2300      	movs	r3, #0
 8002428:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800242c:	7013      	strb	r3, [r2, #0]
 800242e:	f640 3246 	movw	r2, #2886	; 0xb46
 8002432:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002436:	7013      	strb	r3, [r2, #0]
 8002438:	f640 3269 	movw	r2, #2921	; 0xb69
 800243c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002440:	7013      	strb	r3, [r2, #0]
 8002442:	2201      	movs	r2, #1
 8002444:	e11e      	b.n	8002684 <generic_FH_TUERMODUL_CTRL+0x332>
 8002446:	f640 32d8 	movw	r2, #3032	; 0xbd8
 800244a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800244e:	7812      	ldrb	r2, [r2, #0]
 8002450:	2a00      	cmp	r2, #0
 8002452:	d061      	beq.n	8002518 <generic_FH_TUERMODUL_CTRL+0x1c6>
 8002454:	f640 3250 	movw	r2, #2896	; 0xb50
 8002458:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800245c:	7812      	ldrb	r2, [r2, #0]
 800245e:	2a00      	cmp	r2, #0
 8002460:	d15a      	bne.n	8002518 <generic_FH_TUERMODUL_CTRL+0x1c6>
 8002462:	f640 32cd 	movw	r2, #3021	; 0xbcd
 8002466:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800246a:	7812      	ldrb	r2, [r2, #0]
 800246c:	2a00      	cmp	r2, #0
 800246e:	d053      	beq.n	8002518 <generic_FH_TUERMODUL_CTRL+0x1c6>
 8002470:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002474:	2300      	movs	r3, #0
 8002476:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800247a:	7013      	strb	r3, [r2, #0]
 800247c:	f640 3246 	movw	r2, #2886	; 0xb46
 8002480:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002484:	7013      	strb	r3, [r2, #0]
 8002486:	f640 32ac 	movw	r2, #2988	; 0xbac
 800248a:	f640 33ec 	movw	r3, #3052	; 0xbec
 800248e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002492:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002496:	6812      	ldr	r2, [r2, #0]
 8002498:	601a      	str	r2, [r3, #0]
 800249a:	2203      	movs	r2, #3
 800249c:	700a      	strb	r2, [r1, #0]
 800249e:	f640 318f 	movw	r1, #2959	; 0xb8f
 80024a2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80024a6:	e0ed      	b.n	8002684 <generic_FH_TUERMODUL_CTRL+0x332>
 80024a8:	f640 327b 	movw	r2, #2939	; 0xb7b
 80024ac:	2300      	movs	r3, #0
 80024ae:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80024b2:	7013      	strb	r3, [r2, #0]
 80024b4:	2202      	movs	r2, #2
 80024b6:	e0e5      	b.n	8002684 <generic_FH_TUERMODUL_CTRL+0x332>
 80024b8:	f640 32d8 	movw	r2, #3032	; 0xbd8
 80024bc:	f04f 0c00 	mov.w	ip, #0
 80024c0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80024c4:	7813      	ldrb	r3, [r2, #0]
 80024c6:	f640 3250 	movw	r2, #2896	; 0xb50
 80024ca:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80024ce:	2b00      	cmp	r3, #0
 80024d0:	f04f 0300 	mov.w	r3, #0
 80024d4:	bf08      	it	eq
 80024d6:	2301      	moveq	r3, #1
 80024d8:	7812      	ldrb	r2, [r2, #0]
 80024da:	2a00      	cmp	r2, #0
 80024dc:	bf18      	it	ne
 80024de:	2201      	movne	r2, #1
 80024e0:	4313      	orrs	r3, r2
 80024e2:	d137      	bne.n	8002554 <generic_FH_TUERMODUL_CTRL+0x202>
 80024e4:	f640 32f0 	movw	r2, #3056	; 0xbf0
 80024e8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80024ec:	7812      	ldrb	r2, [r2, #0]
 80024ee:	b38a      	cbz	r2, 8002554 <generic_FH_TUERMODUL_CTRL+0x202>
 80024f0:	f640 327b 	movw	r2, #2939	; 0xb7b
 80024f4:	2300      	movs	r3, #0
 80024f6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80024fa:	7013      	strb	r3, [r2, #0]
 80024fc:	f640 3269 	movw	r2, #2921	; 0xb69
 8002500:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002504:	7013      	strb	r3, [r2, #0]
 8002506:	f640 32ac 	movw	r2, #2988	; 0xbac
 800250a:	f640 33bc 	movw	r3, #3004	; 0xbbc
 800250e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002512:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002516:	e0ac      	b.n	8002672 <generic_FH_TUERMODUL_CTRL+0x320>
 8002518:	f640 4107 	movw	r1, #3079	; 0xc07
 800251c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002520:	780a      	ldrb	r2, [r1, #0]
 8002522:	2a03      	cmp	r2, #3
 8002524:	d06b      	beq.n	80025fe <generic_FH_TUERMODUL_CTRL+0x2ac>
 8002526:	2a02      	cmp	r2, #2
 8002528:	d07d      	beq.n	8002626 <generic_FH_TUERMODUL_CTRL+0x2d4>
 800252a:	2a01      	cmp	r2, #1
 800252c:	d161      	bne.n	80025f2 <generic_FH_TUERMODUL_CTRL+0x2a0>
 800252e:	f640 32d6 	movw	r2, #3030	; 0xbd6
 8002532:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002536:	7812      	ldrb	r2, [r2, #0]
 8002538:	2a00      	cmp	r2, #0
 800253a:	f040 80a4 	bne.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 800253e:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002542:	2300      	movs	r3, #0
 8002544:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002548:	7013      	strb	r3, [r2, #0]
 800254a:	f640 3246 	movw	r2, #2886	; 0xb46
 800254e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002552:	e078      	b.n	8002646 <generic_FH_TUERMODUL_CTRL+0x2f4>
 8002554:	f640 32cd 	movw	r2, #3021	; 0xbcd
 8002558:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800255c:	7812      	ldrb	r2, [r2, #0]
 800255e:	2a00      	cmp	r2, #0
 8002560:	bf08      	it	eq
 8002562:	f04f 0c01 	moveq.w	ip, #1
 8002566:	ea53 020c 	orrs.w	r2, r3, ip
 800256a:	d06f      	beq.n	800264c <generic_FH_TUERMODUL_CTRL+0x2fa>
 800256c:	f640 318f 	movw	r1, #2959	; 0xb8f
 8002570:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002574:	780a      	ldrb	r2, [r1, #0]
 8002576:	2a03      	cmp	r2, #3
 8002578:	f000 812a 	beq.w	80027d0 <generic_FH_TUERMODUL_CTRL+0x47e>
 800257c:	2a02      	cmp	r2, #2
 800257e:	f000 814f 	beq.w	8002820 <generic_FH_TUERMODUL_CTRL+0x4ce>
 8002582:	2a01      	cmp	r2, #1
 8002584:	d135      	bne.n	80025f2 <generic_FH_TUERMODUL_CTRL+0x2a0>
 8002586:	f640 329c 	movw	r2, #2972	; 0xb9c
 800258a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800258e:	6812      	ldr	r2, [r2, #0]
 8002590:	f5b2 7fca 	cmp.w	r2, #404	; 0x194
 8002594:	dc4d      	bgt.n	8002632 <generic_FH_TUERMODUL_CTRL+0x2e0>
 8002596:	f640 3e4d 	movw	lr, #2893	; 0xb4d
 800259a:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 800259e:	f89e 3000 	ldrb.w	r3, [lr]
 80025a2:	2b02      	cmp	r3, #2
 80025a4:	f000 81fc 	beq.w	80029a0 <generic_FH_TUERMODUL_CTRL+0x64e>
 80025a8:	2b01      	cmp	r3, #1
 80025aa:	f040 820f 	bne.w	80029cc <generic_FH_TUERMODUL_CTRL+0x67a>
 80025ae:	f640 33d6 	movw	r3, #3030	; 0xbd6
 80025b2:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80025b6:	781b      	ldrb	r3, [r3, #0]
 80025b8:	b12b      	cbz	r3, 80025c6 <generic_FH_TUERMODUL_CTRL+0x274>
 80025ba:	f640 3399 	movw	r3, #2969	; 0xb99
 80025be:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80025c2:	781b      	ldrb	r3, [r3, #0]
 80025c4:	b16b      	cbz	r3, 80025e2 <generic_FH_TUERMODUL_CTRL+0x290>
 80025c6:	f640 4308 	movw	r3, #3080	; 0xc08
 80025ca:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80025ce:	781b      	ldrb	r3, [r3, #0]
 80025d0:	2b00      	cmp	r3, #0
 80025d2:	d058      	beq.n	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80025d4:	f640 333a 	movw	r3, #2874	; 0xb3a
 80025d8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80025dc:	781b      	ldrb	r3, [r3, #0]
 80025de:	2b00      	cmp	r3, #0
 80025e0:	d151      	bne.n	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80025e2:	f640 3c7b 	movw	ip, #2939	; 0xb7b
 80025e6:	2300      	movs	r3, #0
 80025e8:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80025ec:	f88c 3000 	strb.w	r3, [ip]
 80025f0:	e20c      	b.n	8002a0c <generic_FH_TUERMODUL_CTRL+0x6ba>
 80025f2:	f640 327b 	movw	r2, #2939	; 0xb7b
 80025f6:	2300      	movs	r3, #0
 80025f8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80025fc:	e023      	b.n	8002646 <generic_FH_TUERMODUL_CTRL+0x2f4>
 80025fe:	f640 4208 	movw	r2, #3080	; 0xc08
 8002602:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002606:	7812      	ldrb	r2, [r2, #0]
 8002608:	2a00      	cmp	r2, #0
 800260a:	f000 80cb 	beq.w	80027a4 <generic_FH_TUERMODUL_CTRL+0x452>
 800260e:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002612:	2300      	movs	r3, #0
 8002614:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002618:	7013      	strb	r3, [r2, #0]
 800261a:	f640 3269 	movw	r2, #2921	; 0xb69
 800261e:	2301      	movs	r3, #1
 8002620:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002624:	e745      	b.n	80024b2 <generic_FH_TUERMODUL_CTRL+0x160>
 8002626:	f640 4208 	movw	r2, #3080	; 0xc08
 800262a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800262e:	7812      	ldrb	r2, [r2, #0]
 8002630:	bb4a      	cbnz	r2, 8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 8002632:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002636:	2300      	movs	r3, #0
 8002638:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800263c:	7013      	strb	r3, [r2, #0]
 800263e:	f640 3269 	movw	r2, #2921	; 0xb69
 8002642:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002646:	7013      	strb	r3, [r2, #0]
 8002648:	2203      	movs	r2, #3
 800264a:	e01b      	b.n	8002684 <generic_FH_TUERMODUL_CTRL+0x332>
 800264c:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002650:	2300      	movs	r3, #0
 8002652:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002656:	7013      	strb	r3, [r2, #0]
 8002658:	f640 3246 	movw	r2, #2886	; 0xb46
 800265c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002660:	7013      	strb	r3, [r2, #0]
 8002662:	f640 32ac 	movw	r2, #2988	; 0xbac
 8002666:	f640 3364 	movw	r3, #2916	; 0xb64
 800266a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800266e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002672:	6812      	ldr	r2, [r2, #0]
 8002674:	601a      	str	r2, [r3, #0]
 8002676:	2202      	movs	r2, #2
 8002678:	700a      	strb	r2, [r1, #0]
 800267a:	f640 4107 	movw	r1, #3079	; 0xc07
 800267e:	2203      	movs	r2, #3
 8002680:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002684:	700a      	strb	r2, [r1, #0]
 8002686:	f640 31e0 	movw	r1, #3040	; 0xbe0
 800268a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800268e:	780a      	ldrb	r2, [r1, #0]
 8002690:	2a01      	cmp	r2, #1
 8002692:	d130      	bne.n	80026f6 <generic_FH_TUERMODUL_CTRL+0x3a4>
 8002694:	2200      	movs	r2, #0
 8002696:	7162      	strb	r2, [r4, #5]
 8002698:	f640 32c4 	movw	r2, #3012	; 0xbc4
 800269c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80026a0:	7812      	ldrb	r2, [r2, #0]
 80026a2:	2a01      	cmp	r2, #1
 80026a4:	d13a      	bne.n	800271c <generic_FH_TUERMODUL_CTRL+0x3ca>
 80026a6:	f640 3348 	movw	r3, #2888	; 0xb48
 80026aa:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80026ae:	681b      	ldr	r3, [r3, #0]
 80026b0:	b3a3      	cbz	r3, 800271c <generic_FH_TUERMODUL_CTRL+0x3ca>
 80026b2:	f640 30ac 	movw	r0, #2988	; 0xbac
 80026b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026ba:	6800      	ldr	r0, [r0, #0]
 80026bc:	1ac0      	subs	r0, r0, r3
 80026be:	2801      	cmp	r0, #1
 80026c0:	d12c      	bne.n	800271c <generic_FH_TUERMODUL_CTRL+0x3ca>
 80026c2:	f640 30cd 	movw	r0, #3021	; 0xbcd
 80026c6:	f640 33f0 	movw	r3, #3056	; 0xbf0
 80026ca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026ce:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80026d2:	7800      	ldrb	r0, [r0, #0]
 80026d4:	781b      	ldrb	r3, [r3, #0]
 80026d6:	4318      	orrs	r0, r3
 80026d8:	0600      	lsls	r0, r0, #24
 80026da:	d01f      	beq.n	800271c <generic_FH_TUERMODUL_CTRL+0x3ca>
 80026dc:	f640 307b 	movw	r0, #2939	; 0xb7b
 80026e0:	2200      	movs	r2, #0
 80026e2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026e6:	7002      	strb	r2, [r0, #0]
 80026e8:	f640 30e4 	movw	r0, #3044	; 0xbe4
 80026ec:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026f0:	6802      	ldr	r2, [r0, #0]
 80026f2:	3201      	adds	r2, #1
 80026f4:	e009      	b.n	800270a <generic_FH_TUERMODUL_CTRL+0x3b8>
 80026f6:	f640 307b 	movw	r0, #2939	; 0xb7b
 80026fa:	2200      	movs	r2, #0
 80026fc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002700:	7002      	strb	r2, [r0, #0]
 8002702:	f640 30e4 	movw	r0, #3044	; 0xbe4
 8002706:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800270a:	6002      	str	r2, [r0, #0]
 800270c:	2001      	movs	r0, #1
 800270e:	7008      	strb	r0, [r1, #0]
 8002710:	f640 3178 	movw	r1, #2936	; 0xb78
 8002714:	7160      	strb	r0, [r4, #5]
 8002716:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800271a:	e03d      	b.n	8002798 <generic_FH_TUERMODUL_CTRL+0x446>
 800271c:	f640 3178 	movw	r1, #2936	; 0xb78
 8002720:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002724:	7808      	ldrb	r0, [r1, #0]
 8002726:	2801      	cmp	r0, #1
 8002728:	d12e      	bne.n	8002788 <generic_FH_TUERMODUL_CTRL+0x436>
 800272a:	2a01      	cmp	r2, #1
 800272c:	d135      	bne.n	800279a <generic_FH_TUERMODUL_CTRL+0x448>
 800272e:	f640 3034 	movw	r0, #2868	; 0xb34
 8002732:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002736:	6802      	ldr	r2, [r0, #0]
 8002738:	b37a      	cbz	r2, 800279a <generic_FH_TUERMODUL_CTRL+0x448>
 800273a:	f640 30ac 	movw	r0, #2988	; 0xbac
 800273e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002742:	6800      	ldr	r0, [r0, #0]
 8002744:	1a80      	subs	r0, r0, r2
 8002746:	2803      	cmp	r0, #3
 8002748:	bf01      	itttt	eq
 800274a:	f640 30cd 	movweq	r0, #3021	; 0xbcd
 800274e:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002752:	7800      	ldrbeq	r0, [r0, #0]
 8002754:	2800      	cmpeq	r0, #0
 8002756:	d120      	bne.n	800279a <generic_FH_TUERMODUL_CTRL+0x448>
 8002758:	f640 30f0 	movw	r0, #3056	; 0xbf0
 800275c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002760:	7800      	ldrb	r0, [r0, #0]
 8002762:	b9d0      	cbnz	r0, 800279a <generic_FH_TUERMODUL_CTRL+0x448>
 8002764:	f640 32e4 	movw	r2, #3044	; 0xbe4
 8002768:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800276c:	6813      	ldr	r3, [r2, #0]
 800276e:	2b01      	cmp	r3, #1
 8002770:	db13      	blt.n	800279a <generic_FH_TUERMODUL_CTRL+0x448>
 8002772:	f640 3c7b 	movw	ip, #2939	; 0xb7b
 8002776:	2000      	movs	r0, #0
 8002778:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800277c:	f88c 0000 	strb.w	r0, [ip]
 8002780:	1e58      	subs	r0, r3, #1
 8002782:	6010      	str	r0, [r2, #0]
 8002784:	2001      	movs	r0, #1
 8002786:	e007      	b.n	8002798 <generic_FH_TUERMODUL_CTRL+0x446>
 8002788:	f640 307b 	movw	r0, #2939	; 0xb7b
 800278c:	2200      	movs	r2, #0
 800278e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002792:	7002      	strb	r2, [r0, #0]
 8002794:	2001      	movs	r0, #1
 8002796:	7160      	strb	r0, [r4, #5]
 8002798:	7008      	strb	r0, [r1, #0]
 800279a:	7920      	ldrb	r0, [r4, #4]
 800279c:	7160      	strb	r0, [r4, #5]
 800279e:	79a0      	ldrb	r0, [r4, #6]
 80027a0:	71e0      	strb	r0, [r4, #7]
 80027a2:	bdd0      	pop	{r4, r6, r7, pc}
 80027a4:	f640 32d6 	movw	r2, #3030	; 0xbd6
 80027a8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80027ac:	7812      	ldrb	r2, [r2, #0]
 80027ae:	2a00      	cmp	r2, #0
 80027b0:	f43f af69 	beq.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80027b4:	f640 327b 	movw	r2, #2939	; 0xb7b
 80027b8:	2300      	movs	r3, #0
 80027ba:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80027be:	7013      	strb	r3, [r2, #0]
 80027c0:	f640 3246 	movw	r2, #2886	; 0xb46
 80027c4:	2301      	movs	r3, #1
 80027c6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80027ca:	700b      	strb	r3, [r1, #0]
 80027cc:	7013      	strb	r3, [r2, #0]
 80027ce:	e75a      	b.n	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80027d0:	f640 33d6 	movw	r3, #3030	; 0xbd6
 80027d4:	f640 329c 	movw	r2, #2972	; 0xb9c
 80027d8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80027dc:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80027e0:	781b      	ldrb	r3, [r3, #0]
 80027e2:	6812      	ldr	r2, [r2, #0]
 80027e4:	2b00      	cmp	r3, #0
 80027e6:	d071      	beq.n	80028cc <generic_FH_TUERMODUL_CTRL+0x57a>
 80027e8:	f640 3399 	movw	r3, #2969	; 0xb99
 80027ec:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80027f0:	781b      	ldrb	r3, [r3, #0]
 80027f2:	2b00      	cmp	r3, #0
 80027f4:	d16a      	bne.n	80028cc <generic_FH_TUERMODUL_CTRL+0x57a>
 80027f6:	2a01      	cmp	r2, #1
 80027f8:	db68      	blt.n	80028cc <generic_FH_TUERMODUL_CTRL+0x57a>
 80027fa:	f640 327b 	movw	r2, #2939	; 0xb7b
 80027fe:	2300      	movs	r3, #0
 8002800:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002804:	7013      	strb	r3, [r2, #0]
 8002806:	2202      	movs	r2, #2
 8002808:	700a      	strb	r2, [r1, #0]
 800280a:	f640 3138 	movw	r1, #2872	; 0xb38
 800280e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002812:	700a      	strb	r2, [r1, #0]
 8002814:	f640 3168 	movw	r1, #2920	; 0xb68
 8002818:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800281c:	700a      	strb	r2, [r1, #0]
 800281e:	e0b7      	b.n	8002990 <generic_FH_TUERMODUL_CTRL+0x63e>
 8002820:	f640 329c 	movw	r2, #2972	; 0xb9c
 8002824:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002828:	6812      	ldr	r2, [r2, #0]
 800282a:	2a00      	cmp	r2, #0
 800282c:	f77f ae87 	ble.w	800253e <generic_FH_TUERMODUL_CTRL+0x1ec>
 8002830:	f640 3238 	movw	r2, #2872	; 0xb38
 8002834:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002838:	7813      	ldrb	r3, [r2, #0]
 800283a:	2b02      	cmp	r3, #2
 800283c:	d06c      	beq.n	8002918 <generic_FH_TUERMODUL_CTRL+0x5c6>
 800283e:	2b01      	cmp	r3, #1
 8002840:	f040 8099 	bne.w	8002976 <generic_FH_TUERMODUL_CTRL+0x624>
 8002844:	f640 4208 	movw	r2, #3080	; 0xc08
 8002848:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800284c:	7812      	ldrb	r2, [r2, #0]
 800284e:	b13a      	cbz	r2, 8002860 <generic_FH_TUERMODUL_CTRL+0x50e>
 8002850:	f640 323a 	movw	r2, #2874	; 0xb3a
 8002854:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002858:	7812      	ldrb	r2, [r2, #0]
 800285a:	2a00      	cmp	r2, #0
 800285c:	f43f ae6f 	beq.w	800253e <generic_FH_TUERMODUL_CTRL+0x1ec>
 8002860:	f640 32d6 	movw	r2, #3030	; 0xbd6
 8002864:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002868:	7812      	ldrb	r2, [r2, #0]
 800286a:	b13a      	cbz	r2, 800287c <generic_FH_TUERMODUL_CTRL+0x52a>
 800286c:	f640 3299 	movw	r2, #2969	; 0xb99
 8002870:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002874:	7812      	ldrb	r2, [r2, #0]
 8002876:	2a00      	cmp	r2, #0
 8002878:	f43f ae61 	beq.w	800253e <generic_FH_TUERMODUL_CTRL+0x1ec>
 800287c:	f640 314c 	movw	r1, #2892	; 0xb4c
 8002880:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002884:	780a      	ldrb	r2, [r1, #0]
 8002886:	2a02      	cmp	r2, #2
 8002888:	f000 80ee 	beq.w	8002a68 <generic_FH_TUERMODUL_CTRL+0x716>
 800288c:	2a01      	cmp	r2, #1
 800288e:	f040 8113 	bne.w	8002ab8 <generic_FH_TUERMODUL_CTRL+0x766>
 8002892:	2200      	movs	r2, #0
 8002894:	75e2      	strb	r2, [r4, #23]
 8002896:	7da3      	ldrb	r3, [r4, #22]
 8002898:	2b00      	cmp	r3, #0
 800289a:	f43f aef4 	beq.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 800289e:	f640 337b 	movw	r3, #2939	; 0xb7b
 80028a2:	f640 3c46 	movw	ip, #2886	; 0xb46
 80028a6:	f04f 0e01 	mov.w	lr, #1
 80028aa:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80028ae:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80028b2:	f884 e011 	strb.w	lr, [r4, #17]
 80028b6:	701a      	strb	r2, [r3, #0]
 80028b8:	f640 33c3 	movw	r3, #3011	; 0xbc3
 80028bc:	f88c e000 	strb.w	lr, [ip]
 80028c0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80028c4:	701a      	strb	r2, [r3, #0]
 80028c6:	2302      	movs	r3, #2
 80028c8:	700b      	strb	r3, [r1, #0]
 80028ca:	e0f0      	b.n	8002aae <generic_FH_TUERMODUL_CTRL+0x75c>
 80028cc:	f5b2 7fca 	cmp.w	r2, #404	; 0x194
 80028d0:	f73f aed9 	bgt.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80028d4:	f640 4208 	movw	r2, #3080	; 0xc08
 80028d8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80028dc:	7812      	ldrb	r2, [r2, #0]
 80028de:	2a00      	cmp	r2, #0
 80028e0:	f43f aed1 	beq.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80028e4:	f640 323a 	movw	r2, #2874	; 0xb3a
 80028e8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80028ec:	7812      	ldrb	r2, [r2, #0]
 80028ee:	2a00      	cmp	r2, #0
 80028f0:	f47f aec9 	bne.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80028f4:	f640 327b 	movw	r2, #2939	; 0xb7b
 80028f8:	2300      	movs	r3, #0
 80028fa:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80028fe:	7013      	strb	r3, [r2, #0]
 8002900:	f640 3269 	movw	r2, #2921	; 0xb69
 8002904:	2301      	movs	r3, #1
 8002906:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800290a:	700b      	strb	r3, [r1, #0]
 800290c:	f640 314d 	movw	r1, #2893	; 0xb4d
 8002910:	7013      	strb	r3, [r2, #0]
 8002912:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002916:	e5cd      	b.n	80024b4 <generic_FH_TUERMODUL_CTRL+0x162>
 8002918:	f640 33d6 	movw	r3, #3030	; 0xbd6
 800291c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002920:	781b      	ldrb	r3, [r3, #0]
 8002922:	b93b      	cbnz	r3, 8002934 <generic_FH_TUERMODUL_CTRL+0x5e2>
 8002924:	f640 3399 	movw	r3, #2969	; 0xb99
 8002928:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800292c:	781b      	ldrb	r3, [r3, #0]
 800292e:	2b00      	cmp	r3, #0
 8002930:	f47f ae05 	bne.w	800253e <generic_FH_TUERMODUL_CTRL+0x1ec>
 8002934:	f640 3168 	movw	r1, #2920	; 0xb68
 8002938:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800293c:	780b      	ldrb	r3, [r1, #0]
 800293e:	2b02      	cmp	r3, #2
 8002940:	d069      	beq.n	8002a16 <generic_FH_TUERMODUL_CTRL+0x6c4>
 8002942:	2b01      	cmp	r3, #1
 8002944:	f040 8088 	bne.w	8002a58 <generic_FH_TUERMODUL_CTRL+0x706>
 8002948:	2200      	movs	r2, #0
 800294a:	75e2      	strb	r2, [r4, #23]
 800294c:	7da3      	ldrb	r3, [r4, #22]
 800294e:	2b00      	cmp	r3, #0
 8002950:	f43f ae99 	beq.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 8002954:	f640 337b 	movw	r3, #2939	; 0xb7b
 8002958:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800295c:	701a      	strb	r2, [r3, #0]
 800295e:	f640 33d7 	movw	r3, #3031	; 0xbd7
 8002962:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002966:	701a      	strb	r2, [r3, #0]
 8002968:	2302      	movs	r3, #2
 800296a:	700b      	strb	r3, [r1, #0]
 800296c:	f640 3169 	movw	r1, #2921	; 0xb69
 8002970:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002974:	e752      	b.n	800281c <generic_FH_TUERMODUL_CTRL+0x4ca>
 8002976:	f640 317b 	movw	r1, #2939	; 0xb7b
 800297a:	2300      	movs	r3, #0
 800297c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002980:	700b      	strb	r3, [r1, #0]
 8002982:	2102      	movs	r1, #2
 8002984:	7011      	strb	r1, [r2, #0]
 8002986:	f640 3268 	movw	r2, #2920	; 0xb68
 800298a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800298e:	7011      	strb	r1, [r2, #0]
 8002990:	f640 3246 	movw	r2, #2886	; 0xb46
 8002994:	2101      	movs	r1, #1
 8002996:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800299a:	7461      	strb	r1, [r4, #17]
 800299c:	7011      	strb	r1, [r2, #0]
 800299e:	e672      	b.n	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80029a0:	f640 32d6 	movw	r2, #3030	; 0xbd6
 80029a4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80029a8:	7812      	ldrb	r2, [r2, #0]
 80029aa:	b1ca      	cbz	r2, 80029e0 <generic_FH_TUERMODUL_CTRL+0x68e>
 80029ac:	f640 3299 	movw	r2, #2969	; 0xb99
 80029b0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80029b4:	7812      	ldrb	r2, [r2, #0]
 80029b6:	b99a      	cbnz	r2, 80029e0 <generic_FH_TUERMODUL_CTRL+0x68e>
 80029b8:	f640 317b 	movw	r1, #2939	; 0xb7b
 80029bc:	2200      	movs	r2, #0
 80029be:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80029c2:	700a      	strb	r2, [r1, #0]
 80029c4:	2101      	movs	r1, #1
 80029c6:	f88e 1000 	strb.w	r1, [lr]
 80029ca:	e65c      	b.n	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80029cc:	f640 317b 	movw	r1, #2939	; 0xb7b
 80029d0:	2200      	movs	r2, #0
 80029d2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80029d6:	700a      	strb	r2, [r1, #0]
 80029d8:	2102      	movs	r1, #2
 80029da:	f88e 1000 	strb.w	r1, [lr]
 80029de:	e652      	b.n	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80029e0:	f640 4208 	movw	r2, #3080	; 0xc08
 80029e4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80029e8:	7812      	ldrb	r2, [r2, #0]
 80029ea:	2a00      	cmp	r2, #0
 80029ec:	f47f ae4b 	bne.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 80029f0:	f640 323a 	movw	r2, #2874	; 0xb3a
 80029f4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80029f8:	7812      	ldrb	r2, [r2, #0]
 80029fa:	2a00      	cmp	r2, #0
 80029fc:	f43f ae43 	beq.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 8002a00:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002a04:	2300      	movs	r3, #0
 8002a06:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a0a:	7013      	strb	r3, [r2, #0]
 8002a0c:	f640 3269 	movw	r2, #2921	; 0xb69
 8002a10:	f88e 3000 	strb.w	r3, [lr]
 8002a14:	e615      	b.n	8002642 <generic_FH_TUERMODUL_CTRL+0x2f0>
 8002a16:	7e23      	ldrb	r3, [r4, #24]
 8002a18:	2b00      	cmp	r3, #0
 8002a1a:	d058      	beq.n	8002ace <generic_FH_TUERMODUL_CTRL+0x77c>
 8002a1c:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002a20:	2300      	movs	r3, #0
 8002a22:	f640 3cd7 	movw	ip, #3031	; 0xbd7
 8002a26:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a2a:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002a2e:	7013      	strb	r3, [r2, #0]
 8002a30:	f640 3246 	movw	r2, #2886	; 0xb46
 8002a34:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a38:	7013      	strb	r3, [r2, #0]
 8002a3a:	2201      	movs	r2, #1
 8002a3c:	700a      	strb	r2, [r1, #0]
 8002a3e:	f640 31ac 	movw	r1, #2988	; 0xbac
 8002a42:	75e2      	strb	r2, [r4, #23]
 8002a44:	7463      	strb	r3, [r4, #17]
 8002a46:	f640 33b4 	movw	r3, #2996	; 0xbb4
 8002a4a:	f88c 2000 	strb.w	r2, [ip]
 8002a4e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002a52:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002a56:	e028      	b.n	8002aaa <generic_FH_TUERMODUL_CTRL+0x758>
 8002a58:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002a5c:	2300      	movs	r3, #0
 8002a5e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a62:	7013      	strb	r3, [r2, #0]
 8002a64:	2202      	movs	r2, #2
 8002a66:	e6d9      	b.n	800281c <generic_FH_TUERMODUL_CTRL+0x4ca>
 8002a68:	7e22      	ldrb	r2, [r4, #24]
 8002a6a:	2a00      	cmp	r2, #0
 8002a6c:	f43f ae0b 	beq.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 8002a70:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002a74:	2300      	movs	r3, #0
 8002a76:	f640 3cc3 	movw	ip, #3011	; 0xbc3
 8002a7a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a7e:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002a82:	7013      	strb	r3, [r2, #0]
 8002a84:	2201      	movs	r2, #1
 8002a86:	700a      	strb	r2, [r1, #0]
 8002a88:	f640 3146 	movw	r1, #2886	; 0xb46
 8002a8c:	75e2      	strb	r2, [r4, #23]
 8002a8e:	7463      	strb	r3, [r4, #17]
 8002a90:	f88c 2000 	strb.w	r2, [ip]
 8002a94:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002a98:	700b      	strb	r3, [r1, #0]
 8002a9a:	f640 31ac 	movw	r1, #2988	; 0xbac
 8002a9e:	f640 33c8 	movw	r3, #3016	; 0xbc8
 8002aa2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002aa6:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002aaa:	6809      	ldr	r1, [r1, #0]
 8002aac:	6019      	str	r1, [r3, #0]
 8002aae:	f640 3169 	movw	r1, #2921	; 0xb69
 8002ab2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002ab6:	e5e5      	b.n	8002684 <generic_FH_TUERMODUL_CTRL+0x332>
 8002ab8:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002abc:	2300      	movs	r3, #0
 8002abe:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002ac2:	7013      	strb	r3, [r2, #0]
 8002ac4:	2202      	movs	r2, #2
 8002ac6:	700a      	strb	r2, [r1, #0]
 8002ac8:	2101      	movs	r1, #1
 8002aca:	7461      	strb	r1, [r4, #17]
 8002acc:	e5db      	b.n	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 8002ace:	f640 4308 	movw	r3, #3080	; 0xc08
 8002ad2:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002ad6:	781b      	ldrb	r3, [r3, #0]
 8002ad8:	2b00      	cmp	r3, #0
 8002ada:	f43f add4 	beq.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 8002ade:	f640 333a 	movw	r3, #2874	; 0xb3a
 8002ae2:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002ae6:	781b      	ldrb	r3, [r3, #0]
 8002ae8:	2b00      	cmp	r3, #0
 8002aea:	f47f adcc 	bne.w	8002686 <generic_FH_TUERMODUL_CTRL+0x334>
 8002aee:	f640 3c7b 	movw	ip, #2939	; 0xb7b
 8002af2:	f04f 0e00 	mov.w	lr, #0
 8002af6:	2301      	movs	r3, #1
 8002af8:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002afc:	7013      	strb	r3, [r2, #0]
 8002afe:	f881 e000 	strb.w	lr, [r1]
 8002b02:	f88c e000 	strb.w	lr, [ip]
 8002b06:	e5be      	b.n	8002686 <generic_FH_TUERMODUL_CTRL+0x334>

08002b08 <generic_BLOCK_ERKENNUNG_CTRL>:
 8002b08:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002b0c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002b10:	7cc1      	ldrb	r1, [r0, #19]
 8002b12:	b3b1      	cbz	r1, 8002b82 <generic_BLOCK_ERKENNUNG_CTRL+0x7a>
 8002b14:	f640 318d 	movw	r1, #2957	; 0xb8d
 8002b18:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002b1c:	780a      	ldrb	r2, [r1, #0]
 8002b1e:	2a02      	cmp	r2, #2
 8002b20:	d038      	beq.n	8002b94 <generic_BLOCK_ERKENNUNG_CTRL+0x8c>
 8002b22:	2a01      	cmp	r2, #1
 8002b24:	d15c      	bne.n	8002be0 <generic_BLOCK_ERKENNUNG_CTRL+0xd8>
 8002b26:	f640 4200 	movw	r2, #3072	; 0xc00
 8002b2a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002b2e:	6812      	ldr	r2, [r2, #0]
 8002b30:	2a01      	cmp	r2, #1
 8002b32:	db5d      	blt.n	8002bf0 <generic_BLOCK_ERKENNUNG_CTRL+0xe8>
 8002b34:	f640 3358 	movw	r3, #2904	; 0xb58
 8002b38:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002b3c:	681b      	ldr	r3, [r3, #0]
 8002b3e:	429a      	cmp	r2, r3
 8002b40:	d056      	beq.n	8002bf0 <generic_BLOCK_ERKENNUNG_CTRL+0xe8>
 8002b42:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002b46:	2300      	movs	r3, #0
 8002b48:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002b4c:	7013      	strb	r3, [r2, #0]
 8002b4e:	f640 4204 	movw	r2, #3076	; 0xc04
 8002b52:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002b56:	7013      	strb	r3, [r2, #0]
 8002b58:	2202      	movs	r2, #2
 8002b5a:	700a      	strb	r2, [r1, #0]
 8002b5c:	f640 3188 	movw	r1, #2952	; 0xb88
 8002b60:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002b64:	600b      	str	r3, [r1, #0]
 8002b66:	f640 31d0 	movw	r1, #3024	; 0xbd0
 8002b6a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002b6e:	600a      	str	r2, [r1, #0]
 8002b70:	f640 314e 	movw	r1, #2894	; 0xb4e
 8002b74:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002b78:	2203      	movs	r2, #3
 8002b7a:	700a      	strb	r2, [r1, #0]
 8002b7c:	2101      	movs	r1, #1
 8002b7e:	7001      	strb	r1, [r0, #0]
 8002b80:	4770      	bx	lr
 8002b82:	7d41      	ldrb	r1, [r0, #21]
 8002b84:	b3a1      	cbz	r1, 8002bf0 <generic_BLOCK_ERKENNUNG_CTRL+0xe8>
 8002b86:	7d01      	ldrb	r1, [r0, #20]
 8002b88:	2900      	cmp	r1, #0
 8002b8a:	bf02      	ittt	eq
 8002b8c:	2100      	moveq	r1, #0
 8002b8e:	7001      	strbeq	r1, [r0, #0]
 8002b90:	4770      	bxeq	lr
 8002b92:	4770      	bx	lr
 8002b94:	f640 32f0 	movw	r2, #3056	; 0xbf0
 8002b98:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002b9c:	7812      	ldrb	r2, [r2, #0]
 8002b9e:	b92a      	cbnz	r2, 8002bac <generic_BLOCK_ERKENNUNG_CTRL+0xa4>
 8002ba0:	f640 327f 	movw	r2, #2943	; 0xb7f
 8002ba4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002ba8:	7812      	ldrb	r2, [r2, #0]
 8002baa:	b95a      	cbnz	r2, 8002bc4 <generic_BLOCK_ERKENNUNG_CTRL+0xbc>
 8002bac:	f640 32cd 	movw	r2, #3021	; 0xbcd
 8002bb0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002bb4:	7812      	ldrb	r2, [r2, #0]
 8002bb6:	b9e2      	cbnz	r2, 8002bf2 <generic_BLOCK_ERKENNUNG_CTRL+0xea>
 8002bb8:	f640 3230 	movw	r2, #2864	; 0xb30
 8002bbc:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002bc0:	7812      	ldrb	r2, [r2, #0]
 8002bc2:	b1b2      	cbz	r2, 8002bf2 <generic_BLOCK_ERKENNUNG_CTRL+0xea>
 8002bc4:	f640 307b 	movw	r0, #2939	; 0xb7b
 8002bc8:	2200      	movs	r2, #0
 8002bca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002bce:	7002      	strb	r2, [r0, #0]
 8002bd0:	2001      	movs	r0, #1
 8002bd2:	7008      	strb	r0, [r1, #0]
 8002bd4:	f640 304e 	movw	r0, #2894	; 0xb4e
 8002bd8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002bdc:	7002      	strb	r2, [r0, #0]
 8002bde:	4770      	bx	lr
 8002be0:	f640 307b 	movw	r0, #2939	; 0xb7b
 8002be4:	2200      	movs	r2, #0
 8002be6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002bea:	7002      	strb	r2, [r0, #0]
 8002bec:	2001      	movs	r0, #1
 8002bee:	7008      	strb	r0, [r1, #0]
 8002bf0:	4770      	bx	lr
 8002bf2:	f640 314e 	movw	r1, #2894	; 0xb4e
 8002bf6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002bfa:	780a      	ldrb	r2, [r1, #0]
 8002bfc:	2a01      	cmp	r2, #1
 8002bfe:	d0f7      	beq.n	8002bf0 <generic_BLOCK_ERKENNUNG_CTRL+0xe8>
 8002c00:	2a03      	cmp	r2, #3
 8002c02:	d01c      	beq.n	8002c3e <generic_BLOCK_ERKENNUNG_CTRL+0x136>
 8002c04:	2a02      	cmp	r2, #2
 8002c06:	d133      	bne.n	8002c70 <generic_BLOCK_ERKENNUNG_CTRL+0x168>
 8002c08:	f640 32d0 	movw	r2, #3024	; 0xbd0
 8002c0c:	f640 4000 	movw	r0, #3072	; 0xc00
 8002c10:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002c14:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c18:	6812      	ldr	r2, [r2, #0]
 8002c1a:	6800      	ldr	r0, [r0, #0]
 8002c1c:	3a02      	subs	r2, #2
 8002c1e:	4290      	cmp	r0, r2
 8002c20:	dde6      	ble.n	8002bf0 <generic_BLOCK_ERKENNUNG_CTRL+0xe8>
 8002c22:	f640 307b 	movw	r0, #2939	; 0xb7b
 8002c26:	2200      	movs	r2, #0
 8002c28:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c2c:	7002      	strb	r2, [r0, #0]
 8002c2e:	f640 4004 	movw	r0, #3076	; 0xc04
 8002c32:	2201      	movs	r2, #1
 8002c34:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c38:	700a      	strb	r2, [r1, #0]
 8002c3a:	7002      	strb	r2, [r0, #0]
 8002c3c:	4770      	bx	lr
 8002c3e:	2200      	movs	r2, #0
 8002c40:	7002      	strb	r2, [r0, #0]
 8002c42:	f640 3088 	movw	r0, #2952	; 0xb88
 8002c46:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c4a:	6800      	ldr	r0, [r0, #0]
 8002c4c:	280b      	cmp	r0, #11
 8002c4e:	d1cf      	bne.n	8002bf0 <generic_BLOCK_ERKENNUNG_CTRL+0xe8>
 8002c50:	f640 306c 	movw	r0, #2924	; 0xb6c
 8002c54:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c58:	6800      	ldr	r0, [r0, #0]
 8002c5a:	280b      	cmp	r0, #11
 8002c5c:	bf08      	it	eq
 8002c5e:	4770      	bxeq	lr
 8002c60:	f640 307b 	movw	r0, #2939	; 0xb7b
 8002c64:	2200      	movs	r2, #0
 8002c66:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c6a:	7002      	strb	r2, [r0, #0]
 8002c6c:	2002      	movs	r0, #2
 8002c6e:	e7be      	b.n	8002bee <generic_BLOCK_ERKENNUNG_CTRL+0xe6>
 8002c70:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002c74:	2300      	movs	r3, #0
 8002c76:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002c7a:	7013      	strb	r3, [r2, #0]
 8002c7c:	f640 3288 	movw	r2, #2952	; 0xb88
 8002c80:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002c84:	6013      	str	r3, [r2, #0]
 8002c86:	f640 32d0 	movw	r2, #3024	; 0xbd0
 8002c8a:	2302      	movs	r3, #2
 8002c8c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002c90:	6013      	str	r3, [r2, #0]
 8002c92:	e771      	b.n	8002b78 <generic_BLOCK_ERKENNUNG_CTRL+0x70>

08002c94 <FH_DU>:
 8002c94:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002c96:	af03      	add	r7, sp, #12
 8002c98:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002c9c:	b089      	sub	sp, #36	; 0x24
 8002c9e:	f640 30ac 	movw	r0, #2988	; 0xbac
 8002ca2:	f640 327b 	movw	r2, #2939	; 0xb7b
 8002ca6:	f640 36c4 	movw	r6, #3012	; 0xbc4
 8002caa:	f640 19e4 	movw	r9, #2532	; 0x9e4
 8002cae:	f640 358e 	movw	r5, #2958	; 0xb8e
 8002cb2:	f640 3cfc 	movw	ip, #3068	; 0xbfc
 8002cb6:	f640 3eb1 	movw	lr, #2993	; 0xbb1
 8002cba:	f640 3be8 	movw	fp, #3048	; 0xbe8
 8002cbe:	f640 38a8 	movw	r8, #2984	; 0xba8
 8002cc2:	f640 3ad5 	movw	sl, #3029	; 0xbd5
 8002cc6:	f640 3490 	movw	r4, #2960	; 0xb90
 8002cca:	2101      	movs	r1, #1
 8002ccc:	2300      	movs	r3, #0
 8002cce:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002cd2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002cd6:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002cda:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8002cde:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002ce2:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002ce6:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002cea:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8002cee:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8002cf2:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8002cf6:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8002cfa:	6001      	str	r1, [r0, #0]
 8002cfc:	2000      	movs	r0, #0
 8002cfe:	7013      	strb	r3, [r2, #0]
 8002d00:	7033      	strb	r3, [r6, #0]
 8002d02:	e006      	b.n	8002d12 <FH_DU+0x7e>
 8002d04:	f640 36c4 	movw	r6, #3012	; 0xbc4
 8002d08:	2101      	movs	r1, #1
 8002d0a:	2300      	movs	r3, #0
 8002d0c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002d10:	7830      	ldrb	r0, [r6, #0]
 8002d12:	3001      	adds	r0, #1
 8002d14:	7011      	strb	r1, [r2, #0]
 8002d16:	7030      	strb	r0, [r6, #0]
 8002d18:	f640 30cc 	movw	r0, #3020	; 0xbcc
 8002d1c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d20:	7800      	ldrb	r0, [r0, #0]
 8002d22:	2803      	cmp	r0, #3
 8002d24:	d00f      	beq.n	8002d46 <FH_DU+0xb2>
 8002d26:	2802      	cmp	r0, #2
 8002d28:	f000 8207 	beq.w	800313a <FH_DU+0x4a6>
 8002d2c:	2801      	cmp	r0, #1
 8002d2e:	d116      	bne.n	8002d5e <FH_DU+0xca>
 8002d30:	f640 30c0 	movw	r0, #3008	; 0xbc0
 8002d34:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d38:	7800      	ldrb	r0, [r0, #0]
 8002d3a:	b9e0      	cbnz	r0, 8002d76 <FH_DU+0xe2>
 8002d3c:	f640 30f1 	movw	r0, #3057	; 0xbf1
 8002d40:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d44:	e009      	b.n	8002d5a <FH_DU+0xc6>
 8002d46:	f640 3039 	movw	r0, #2873	; 0xb39
 8002d4a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d4e:	7800      	ldrb	r0, [r0, #0]
 8002d50:	b988      	cbnz	r0, 8002d76 <FH_DU+0xe2>
 8002d52:	f640 30d4 	movw	r0, #3028	; 0xbd4
 8002d56:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d5a:	7800      	ldrb	r0, [r0, #0]
 8002d5c:	b158      	cbz	r0, 8002d76 <FH_DU+0xe2>
 8002d5e:	f640 30a4 	movw	r0, #2980	; 0xba4
 8002d62:	7013      	strb	r3, [r2, #0]
 8002d64:	2202      	movs	r2, #2
 8002d66:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d6a:	6003      	str	r3, [r0, #0]
 8002d6c:	f640 30cc 	movw	r0, #3020	; 0xbcc
 8002d70:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d74:	7002      	strb	r2, [r0, #0]
 8002d76:	f899 000a 	ldrb.w	r0, [r9, #10]
 8002d7a:	b928      	cbnz	r0, 8002d88 <FH_DU+0xf4>
 8002d7c:	f640 309a 	movw	r0, #2970	; 0xb9a
 8002d80:	2203      	movs	r2, #3
 8002d82:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d86:	7002      	strb	r2, [r0, #0]
 8002d88:	f889 300b 	strb.w	r3, [r9, #11]
 8002d8c:	f899 0010 	ldrb.w	r0, [r9, #16]
 8002d90:	2800      	cmp	r0, #0
 8002d92:	bf02      	ittt	eq
 8002d94:	f640 30ab 	movweq	r0, #2987	; 0xbab
 8002d98:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002d9c:	7001      	strbeq	r1, [r0, #0]
 8002d9e:	f889 3011 	strb.w	r3, [r9, #17]
 8002da2:	f899 0013 	ldrb.w	r0, [r9, #19]
 8002da6:	b930      	cbnz	r0, 8002db6 <FH_DU+0x122>
 8002da8:	f640 308d 	movw	r0, #2957	; 0xb8d
 8002dac:	f889 3000 	strb.w	r3, [r9]
 8002db0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002db4:	7001      	strb	r1, [r0, #0]
 8002db6:	f889 3014 	strb.w	r3, [r9, #20]
 8002dba:	f899 000d 	ldrb.w	r0, [r9, #13]
 8002dbe:	b9d0      	cbnz	r0, 8002df6 <FH_DU+0x162>
 8002dc0:	f640 4205 	movw	r2, #3077	; 0xc05
 8002dc4:	2002      	movs	r0, #2
 8002dc6:	f889 3004 	strb.w	r3, [r9, #4]
 8002dca:	f889 3006 	strb.w	r3, [r9, #6]
 8002dce:	f889 1005 	strb.w	r1, [r9, #5]
 8002dd2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002dd6:	7010      	strb	r0, [r2, #0]
 8002dd8:	f640 30e4 	movw	r0, #3044	; 0xbe4
 8002ddc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002de0:	6003      	str	r3, [r0, #0]
 8002de2:	f640 30e0 	movw	r0, #3040	; 0xbe0
 8002de6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002dea:	7001      	strb	r1, [r0, #0]
 8002dec:	f640 3078 	movw	r0, #2936	; 0xb78
 8002df0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002df4:	7001      	strb	r1, [r0, #0]
 8002df6:	f640 30b0 	movw	r0, #2992	; 0xbb0
 8002dfa:	f889 100b 	strb.w	r1, [r9, #11]
 8002dfe:	f889 1011 	strb.w	r1, [r9, #17]
 8002e02:	f889 1014 	strb.w	r1, [r9, #20]
 8002e06:	f889 100e 	strb.w	r1, [r9, #14]
 8002e0a:	7829      	ldrb	r1, [r5, #0]
 8002e0c:	f89c 2000 	ldrb.w	r2, [ip]
 8002e10:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002e14:	7800      	ldrb	r0, [r0, #0]
 8002e16:	4291      	cmp	r1, r2
 8002e18:	d006      	beq.n	8002e28 <FH_DU+0x194>
 8002e1a:	2800      	cmp	r0, #0
 8002e1c:	bf02      	ittt	eq
 8002e1e:	f640 3298 	movweq	r2, #2968	; 0xb98
 8002e22:	f2c2 0200 	movteq	r2, #8192	; 0x2000
 8002e26:	7011      	strbeq	r1, [r2, #0]
 8002e28:	f89e 1000 	ldrb.w	r1, [lr]
 8002e2c:	f89b 2000 	ldrb.w	r2, [fp]
 8002e30:	4291      	cmp	r1, r2
 8002e32:	d002      	beq.n	8002e3a <FH_DU+0x1a6>
 8002e34:	2800      	cmp	r0, #0
 8002e36:	bf18      	it	ne
 8002e38:	7029      	strbne	r1, [r5, #0]
 8002e3a:	f898 1000 	ldrb.w	r1, [r8]
 8002e3e:	f89a 2000 	ldrb.w	r2, [sl]
 8002e42:	4291      	cmp	r1, r2
 8002e44:	d006      	beq.n	8002e54 <FH_DU+0x1c0>
 8002e46:	2800      	cmp	r0, #0
 8002e48:	bf02      	ittt	eq
 8002e4a:	f640 3261 	movweq	r2, #2913	; 0xb61
 8002e4e:	f2c2 0200 	movteq	r2, #8192	; 0x2000
 8002e52:	7011      	strbeq	r1, [r2, #0]
 8002e54:	f640 32ea 	movw	r2, #3050	; 0xbea
 8002e58:	7821      	ldrb	r1, [r4, #0]
 8002e5a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002e5e:	7812      	ldrb	r2, [r2, #0]
 8002e60:	4291      	cmp	r1, r2
 8002e62:	d003      	beq.n	8002e6c <FH_DU+0x1d8>
 8002e64:	2800      	cmp	r0, #0
 8002e66:	bf18      	it	ne
 8002e68:	f888 1000 	strbne.w	r1, [r8]
 8002e6c:	f899 000c 	ldrb.w	r0, [r9, #12]
 8002e70:	f640 3580 	movw	r5, #2944	; 0xb80
 8002e74:	f640 3a61 	movw	sl, #2913	; 0xb61
 8002e78:	f640 3b8c 	movw	fp, #2956	; 0xb8c
 8002e7c:	f640 387e 	movw	r8, #2942	; 0xb7e
 8002e80:	f640 3698 	movw	r6, #2968	; 0xb98
 8002e84:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002e88:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8002e8c:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8002e90:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8002e94:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002e98:	f889 000a 	strb.w	r0, [r9, #10]
 8002e9c:	f899 000f 	ldrb.w	r0, [r9, #15]
 8002ea0:	f889 000d 	strb.w	r0, [r9, #13]
 8002ea4:	f899 0012 	ldrb.w	r0, [r9, #18]
 8002ea8:	f889 0010 	strb.w	r0, [r9, #16]
 8002eac:	f899 0015 	ldrb.w	r0, [r9, #21]
 8002eb0:	f889 0013 	strb.w	r0, [r9, #19]
 8002eb4:	7828      	ldrb	r0, [r5, #0]
 8002eb6:	f640 35fe 	movw	r5, #3070	; 0xbfe
 8002eba:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002ebe:	462c      	mov	r4, r5
 8002ec0:	7028      	strb	r0, [r5, #0]
 8002ec2:	f89a 0000 	ldrb.w	r0, [sl]
 8002ec6:	f640 3ab9 	movw	sl, #3001	; 0xbb9
 8002eca:	f640 4506 	movw	r5, #3078	; 0xc06
 8002ece:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8002ed2:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002ed6:	f88b 0000 	strb.w	r0, [fp]
 8002eda:	f89a 0000 	ldrb.w	r0, [sl]
 8002ede:	f888 0000 	strb.w	r0, [r8]
 8002ee2:	7830      	ldrb	r0, [r6, #0]
 8002ee4:	7028      	strb	r0, [r5, #0]
 8002ee6:	f7ff f8c0 	bl	800206a <generic_KINDERSICHERUNG_CTRL>
 8002eea:	f640 30f0 	movw	r0, #3056	; 0xbf0
 8002eee:	f640 3139 	movw	r1, #2873	; 0xb39
 8002ef2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002ef6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002efa:	7800      	ldrb	r0, [r0, #0]
 8002efc:	468b      	mov	fp, r1
 8002efe:	f640 31c0 	movw	r1, #3008	; 0xbc0
 8002f02:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f06:	f88b 0000 	strb.w	r0, [fp]
 8002f0a:	f640 30cd 	movw	r0, #3021	; 0xbcd
 8002f0e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f12:	7800      	ldrb	r0, [r0, #0]
 8002f14:	7008      	strb	r0, [r1, #0]
 8002f16:	f640 4000 	movw	r0, #3072	; 0xc00
 8002f1a:	f640 312c 	movw	r1, #2860	; 0xb2c
 8002f1e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f22:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f26:	6800      	ldr	r0, [r0, #0]
 8002f28:	6008      	str	r0, [r1, #0]
 8002f2a:	f640 307d 	movw	r0, #2941	; 0xb7d
 8002f2e:	f640 317a 	movw	r1, #2938	; 0xb7a
 8002f32:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f36:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f3a:	7800      	ldrb	r0, [r0, #0]
 8002f3c:	7008      	strb	r0, [r1, #0]
 8002f3e:	f640 309c 	movw	r0, #2972	; 0xb9c
 8002f42:	f640 31dc 	movw	r1, #3036	; 0xbdc
 8002f46:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f4a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f4e:	6800      	ldr	r0, [r0, #0]
 8002f50:	6008      	str	r0, [r1, #0]
 8002f52:	f640 30e9 	movw	r0, #3049	; 0xbe9
 8002f56:	f640 3170 	movw	r1, #2928	; 0xb70
 8002f5a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f5e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f62:	7800      	ldrb	r0, [r0, #0]
 8002f64:	7008      	strb	r0, [r1, #0]
 8002f66:	7820      	ldrb	r0, [r4, #0]
 8002f68:	f640 3480 	movw	r4, #2944	; 0xb80
 8002f6c:	f640 3161 	movw	r1, #2913	; 0xb61
 8002f70:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8002f74:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f78:	7020      	strb	r0, [r4, #0]
 8002f7a:	f640 308c 	movw	r0, #2956	; 0xb8c
 8002f7e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f82:	7800      	ldrb	r0, [r0, #0]
 8002f84:	7008      	strb	r0, [r1, #0]
 8002f86:	f898 0000 	ldrb.w	r0, [r8]
 8002f8a:	f640 313c 	movw	r1, #2876	; 0xb3c
 8002f8e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f92:	f88a 0000 	strb.w	r0, [sl]
 8002f96:	7828      	ldrb	r0, [r5, #0]
 8002f98:	7030      	strb	r0, [r6, #0]
 8002f9a:	f640 30aa 	movw	r0, #2986	; 0xbaa
 8002f9e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002fa2:	7800      	ldrb	r0, [r0, #0]
 8002fa4:	7008      	strb	r0, [r1, #0]
 8002fa6:	f640 30d8 	movw	r0, #3032	; 0xbd8
 8002faa:	f640 3179 	movw	r1, #2937	; 0xb79
 8002fae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002fb2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002fb6:	7800      	ldrb	r0, [r0, #0]
 8002fb8:	7008      	strb	r0, [r1, #0]
 8002fba:	f7ff f9ca 	bl	8002352 <generic_FH_TUERMODUL_CTRL>
 8002fbe:	f640 30f0 	movw	r0, #3056	; 0xbf0
 8002fc2:	f640 3170 	movw	r1, #2928	; 0xb70
 8002fc6:	f640 3261 	movw	r2, #2913	; 0xb61
 8002fca:	f640 3398 	movw	r3, #2968	; 0xb98
 8002fce:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002fd2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002fd6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002fda:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002fde:	f890 a000 	ldrb.w	sl, [r0]
 8002fe2:	f640 30cd 	movw	r0, #3021	; 0xbcd
 8002fe6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002fea:	f88b a000 	strb.w	sl, [fp]
 8002fee:	f890 b000 	ldrb.w	fp, [r0]
 8002ff2:	f640 30c0 	movw	r0, #3008	; 0xbc0
 8002ff6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002ffa:	f880 b000 	strb.w	fp, [r0]
 8002ffe:	f640 4000 	movw	r0, #3072	; 0xc00
 8003002:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003006:	f8d0 c000 	ldr.w	ip, [r0]
 800300a:	f640 302c 	movw	r0, #2860	; 0xb2c
 800300e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003012:	f8c0 c000 	str.w	ip, [r0]
 8003016:	f640 307d 	movw	r0, #2941	; 0xb7d
 800301a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800301e:	f890 8000 	ldrb.w	r8, [r0]
 8003022:	f640 307a 	movw	r0, #2938	; 0xb7a
 8003026:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800302a:	f880 8000 	strb.w	r8, [r0]
 800302e:	f640 309c 	movw	r0, #2972	; 0xb9c
 8003032:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003036:	6805      	ldr	r5, [r0, #0]
 8003038:	f640 30dc 	movw	r0, #3036	; 0xbdc
 800303c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003040:	6005      	str	r5, [r0, #0]
 8003042:	f640 30e9 	movw	r0, #3049	; 0xbe9
 8003046:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800304a:	7800      	ldrb	r0, [r0, #0]
 800304c:	7008      	strb	r0, [r1, #0]
 800304e:	f640 31fe 	movw	r1, #3070	; 0xbfe
 8003052:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003056:	780e      	ldrb	r6, [r1, #0]
 8003058:	f640 318c 	movw	r1, #2956	; 0xb8c
 800305c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003060:	7809      	ldrb	r1, [r1, #0]
 8003062:	7026      	strb	r6, [r4, #0]
 8003064:	7011      	strb	r1, [r2, #0]
 8003066:	f640 327e 	movw	r2, #2942	; 0xb7e
 800306a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800306e:	7814      	ldrb	r4, [r2, #0]
 8003070:	f640 32b9 	movw	r2, #3001	; 0xbb9
 8003074:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003078:	7014      	strb	r4, [r2, #0]
 800307a:	f640 4206 	movw	r2, #3078	; 0xc06
 800307e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003082:	7812      	ldrb	r2, [r2, #0]
 8003084:	9208      	str	r2, [sp, #32]
 8003086:	701a      	strb	r2, [r3, #0]
 8003088:	f640 32aa 	movw	r2, #2986	; 0xbaa
 800308c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003090:	7813      	ldrb	r3, [r2, #0]
 8003092:	f640 323c 	movw	r2, #2876	; 0xb3c
 8003096:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800309a:	7013      	strb	r3, [r2, #0]
 800309c:	f640 32d8 	movw	r2, #3032	; 0xbd8
 80030a0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80030a4:	f892 e000 	ldrb.w	lr, [r2]
 80030a8:	f640 3279 	movw	r2, #2937	; 0xb79
 80030ac:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80030b0:	f882 e000 	strb.w	lr, [r2]
 80030b4:	f899 2010 	ldrb.w	r2, [r9, #16]
 80030b8:	2a00      	cmp	r2, #0
 80030ba:	f000 8099 	beq.w	80031f0 <FH_DU+0x55c>
 80030be:	aa03      	add	r2, sp, #12
 80030c0:	e9cd 4601 	strd	r4, r6, [sp, #4]
 80030c4:	e882 1022 	stmia.w	r2, {r1, r5, ip}
 80030c8:	f640 32ab 	movw	r2, #2987	; 0xbab
 80030cc:	e9cd 3006 	strd	r3, r0, [sp, #24]
 80030d0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80030d4:	f892 c000 	ldrb.w	ip, [r2]
 80030d8:	f1bc 0f02 	cmp.w	ip, #2
 80030dc:	d04b      	beq.n	8003176 <FH_DU+0x4e2>
 80030de:	f1bc 0f01 	cmp.w	ip, #1
 80030e2:	d171      	bne.n	80031c8 <FH_DU+0x534>
 80030e4:	f10d 0c0c 	add.w	ip, sp, #12
 80030e8:	e9dd 3006 	ldrd	r3, r0, [sp, #24]
 80030ec:	f1b8 0f00 	cmp.w	r8, #0
 80030f0:	e89c 1022 	ldmia.w	ip, {r1, r5, ip}
 80030f4:	e9dd 4601 	ldrd	r4, r6, [sp, #4]
 80030f8:	d07a      	beq.n	80031f0 <FH_DU+0x55c>
 80030fa:	f640 3245 	movw	r2, #2885	; 0xb45
 80030fe:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003102:	7812      	ldrb	r2, [r2, #0]
 8003104:	2a00      	cmp	r2, #0
 8003106:	d173      	bne.n	80031f0 <FH_DU+0x55c>
 8003108:	f640 32d6 	movw	r2, #3030	; 0xbd6
 800310c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003110:	7812      	ldrb	r2, [r2, #0]
 8003112:	2a00      	cmp	r2, #0
 8003114:	bf1f      	itttt	ne
 8003116:	f640 4208 	movwne	r2, #3080	; 0xc08
 800311a:	f2c2 0200 	movtne	r2, #8192	; 0x2000
 800311e:	7812      	ldrbne	r2, [r2, #0]
 8003120:	2a00      	cmpne	r2, #0
 8003122:	d165      	bne.n	80031f0 <FH_DU+0x55c>
 8003124:	f640 327b 	movw	r2, #2939	; 0xb7b
 8003128:	2500      	movs	r5, #0
 800312a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800312e:	7015      	strb	r5, [r2, #0]
 8003130:	2201      	movs	r2, #1
 8003132:	f889 2018 	strb.w	r2, [r9, #24]
 8003136:	2202      	movs	r2, #2
 8003138:	e038      	b.n	80031ac <FH_DU+0x518>
 800313a:	f640 30c0 	movw	r0, #3008	; 0xbc0
 800313e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003142:	7800      	ldrb	r0, [r0, #0]
 8003144:	2800      	cmp	r0, #0
 8003146:	f000 81e7 	beq.w	8003518 <FH_DU+0x884>
 800314a:	f640 30f1 	movw	r0, #3057	; 0xbf1
 800314e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003152:	7800      	ldrb	r0, [r0, #0]
 8003154:	2800      	cmp	r0, #0
 8003156:	f040 81df 	bne.w	8003518 <FH_DU+0x884>
 800315a:	f640 30a4 	movw	r0, #2980	; 0xba4
 800315e:	7013      	strb	r3, [r2, #0]
 8003160:	f06f 0263 	mvn.w	r2, #99	; 0x63
 8003164:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003168:	6002      	str	r2, [r0, #0]
 800316a:	f640 30cc 	movw	r0, #3020	; 0xbcc
 800316e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003172:	7001      	strb	r1, [r0, #0]
 8003174:	e5ff      	b.n	8002d76 <FH_DU+0xe2>
 8003176:	2200      	movs	r2, #0
 8003178:	f10d 0c0c 	add.w	ip, sp, #12
 800317c:	f1b8 0f00 	cmp.w	r8, #0
 8003180:	f889 2018 	strb.w	r2, [r9, #24]
 8003184:	e9dd 3006 	ldrd	r3, r0, [sp, #24]
 8003188:	e89c 1022 	ldmia.w	ip, {r1, r5, ip}
 800318c:	e9dd 4601 	ldrd	r4, r6, [sp, #4]
 8003190:	d12e      	bne.n	80031f0 <FH_DU+0x55c>
 8003192:	f640 3245 	movw	r2, #2885	; 0xb45
 8003196:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800319a:	7812      	ldrb	r2, [r2, #0]
 800319c:	b342      	cbz	r2, 80031f0 <FH_DU+0x55c>
 800319e:	f640 327b 	movw	r2, #2939	; 0xb7b
 80031a2:	2500      	movs	r5, #0
 80031a4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80031a8:	7015      	strb	r5, [r2, #0]
 80031aa:	2201      	movs	r2, #1
 80031ac:	f640 35ab 	movw	r5, #2987	; 0xbab
 80031b0:	f10d 0c0c 	add.w	ip, sp, #12
 80031b4:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80031b8:	702a      	strb	r2, [r5, #0]
 80031ba:	e9dd 4601 	ldrd	r4, r6, [sp, #4]
 80031be:	e89c 1022 	ldmia.w	ip, {r1, r5, ip}
 80031c2:	e9dd 3006 	ldrd	r3, r0, [sp, #24]
 80031c6:	e013      	b.n	80031f0 <FH_DU+0x55c>
 80031c8:	f640 327b 	movw	r2, #2939	; 0xb7b
 80031cc:	2500      	movs	r5, #0
 80031ce:	f10d 0c0c 	add.w	ip, sp, #12
 80031d2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80031d6:	7015      	strb	r5, [r2, #0]
 80031d8:	f640 35ab 	movw	r5, #2987	; 0xbab
 80031dc:	2201      	movs	r2, #1
 80031de:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80031e2:	702a      	strb	r2, [r5, #0]
 80031e4:	e9dd 3006 	ldrd	r3, r0, [sp, #24]
 80031e8:	e89c 1022 	ldmia.w	ip, {r1, r5, ip}
 80031ec:	e9dd 4601 	ldrd	r4, r6, [sp, #4]
 80031f0:	f640 3239 	movw	r2, #2873	; 0xb39
 80031f4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80031f8:	f882 a000 	strb.w	sl, [r2]
 80031fc:	f640 32c0 	movw	r2, #3008	; 0xbc0
 8003200:	f640 3a2c 	movw	sl, #2860	; 0xb2c
 8003204:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003208:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 800320c:	f882 b000 	strb.w	fp, [r2]
 8003210:	f640 3b7a 	movw	fp, #2938	; 0xb7a
 8003214:	f640 3280 	movw	r2, #2944	; 0xb80
 8003218:	f8ca c000 	str.w	ip, [sl]
 800321c:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8003220:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003224:	f88b 8000 	strb.w	r8, [fp]
 8003228:	f640 38dc 	movw	r8, #3036	; 0xbdc
 800322c:	7016      	strb	r6, [r2, #0]
 800322e:	f640 3661 	movw	r6, #2913	; 0xb61
 8003232:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8003236:	f2c2 0600 	movt	r6, #8192	; 0x2000
 800323a:	f8c8 5000 	str.w	r5, [r8]
 800323e:	f640 3570 	movw	r5, #2928	; 0xb70
 8003242:	7031      	strb	r1, [r6, #0]
 8003244:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8003248:	7028      	strb	r0, [r5, #0]
 800324a:	f640 30b9 	movw	r0, #3001	; 0xbb9
 800324e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003252:	7004      	strb	r4, [r0, #0]
 8003254:	9808      	ldr	r0, [sp, #32]
 8003256:	f640 3498 	movw	r4, #2968	; 0xb98
 800325a:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800325e:	7020      	strb	r0, [r4, #0]
 8003260:	f640 303c 	movw	r0, #2876	; 0xb3c
 8003264:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003268:	7003      	strb	r3, [r0, #0]
 800326a:	f640 3079 	movw	r0, #2937	; 0xb79
 800326e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003272:	f880 e000 	strb.w	lr, [r0]
 8003276:	f7ff fc47 	bl	8002b08 <generic_BLOCK_ERKENNUNG_CTRL>
 800327a:	f640 4000 	movw	r0, #3072	; 0xc00
 800327e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003282:	6802      	ldr	r2, [r0, #0]
 8003284:	f640 307d 	movw	r0, #2941	; 0xb7d
 8003288:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800328c:	f890 c000 	ldrb.w	ip, [r0]
 8003290:	f640 309c 	movw	r0, #2972	; 0xb9c
 8003294:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003298:	6801      	ldr	r1, [r0, #0]
 800329a:	f640 30e9 	movw	r0, #3049	; 0xbe9
 800329e:	f8ca 2000 	str.w	r2, [sl]
 80032a2:	f640 3ad5 	movw	sl, #3029	; 0xbd5
 80032a6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80032aa:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 80032ae:	f88b c000 	strb.w	ip, [fp]
 80032b2:	f8c8 1000 	str.w	r1, [r8]
 80032b6:	7801      	ldrb	r1, [r0, #0]
 80032b8:	f640 30fe 	movw	r0, #3070	; 0xbfe
 80032bc:	f640 38a8 	movw	r8, #2984	; 0xba8
 80032c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80032c4:	f2c2 0800 	movt	r8, #8192	; 0x2000
 80032c8:	7029      	strb	r1, [r5, #0]
 80032ca:	7801      	ldrb	r1, [r0, #0]
 80032cc:	f640 3080 	movw	r0, #2944	; 0xb80
 80032d0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80032d4:	7001      	strb	r1, [r0, #0]
 80032d6:	f640 308c 	movw	r0, #2956	; 0xb8c
 80032da:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80032de:	7803      	ldrb	r3, [r0, #0]
 80032e0:	f640 307e 	movw	r0, #2942	; 0xb7e
 80032e4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80032e8:	7033      	strb	r3, [r6, #0]
 80032ea:	7806      	ldrb	r6, [r0, #0]
 80032ec:	f640 30b9 	movw	r0, #3001	; 0xbb9
 80032f0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80032f4:	7006      	strb	r6, [r0, #0]
 80032f6:	f640 4006 	movw	r0, #3078	; 0xc06
 80032fa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80032fe:	7805      	ldrb	r5, [r0, #0]
 8003300:	f640 30aa 	movw	r0, #2986	; 0xbaa
 8003304:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003308:	7025      	strb	r5, [r4, #0]
 800330a:	7804      	ldrb	r4, [r0, #0]
 800330c:	f640 303c 	movw	r0, #2876	; 0xb3c
 8003310:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003314:	7004      	strb	r4, [r0, #0]
 8003316:	f899 400a 	ldrb.w	r4, [r9, #10]
 800331a:	f640 30e4 	movw	r0, #3044	; 0xbe4
 800331e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003322:	f889 400b 	strb.w	r4, [r9, #11]
 8003326:	f899 400d 	ldrb.w	r4, [r9, #13]
 800332a:	f889 400e 	strb.w	r4, [r9, #14]
 800332e:	f899 4010 	ldrb.w	r4, [r9, #16]
 8003332:	f889 4011 	strb.w	r4, [r9, #17]
 8003336:	f899 4013 	ldrb.w	r4, [r9, #19]
 800333a:	f889 4014 	strb.w	r4, [r9, #20]
 800333e:	6804      	ldr	r4, [r0, #0]
 8003340:	f640 305c 	movw	r0, #2908	; 0xb5c
 8003344:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003348:	6004      	str	r4, [r0, #0]
 800334a:	f640 3058 	movw	r0, #2904	; 0xb58
 800334e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003352:	6002      	str	r2, [r0, #0]
 8003354:	f640 3040 	movw	r0, #2880	; 0xb40
 8003358:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800335c:	6804      	ldr	r4, [r0, #0]
 800335e:	f640 30a4 	movw	r0, #2980	; 0xba4
 8003362:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003366:	6004      	str	r4, [r0, #0]
 8003368:	f640 3074 	movw	r0, #2932	; 0xb74
 800336c:	f640 34fc 	movw	r4, #3068	; 0xbfc
 8003370:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003374:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003378:	6002      	str	r2, [r0, #0]
 800337a:	f640 3088 	movw	r0, #2952	; 0xb88
 800337e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003382:	6802      	ldr	r2, [r0, #0]
 8003384:	f640 306c 	movw	r0, #2924	; 0xb6c
 8003388:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800338c:	6002      	str	r2, [r0, #0]
 800338e:	f640 306a 	movw	r0, #2922	; 0xb6a
 8003392:	f640 327b 	movw	r2, #2939	; 0xb7b
 8003396:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800339a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800339e:	7005      	strb	r5, [r0, #0]
 80033a0:	f640 303b 	movw	r0, #2875	; 0xb3b
 80033a4:	f640 358e 	movw	r5, #2958	; 0xb8e
 80033a8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80033ac:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80033b0:	7006      	strb	r6, [r0, #0]
 80033b2:	f640 3051 	movw	r0, #2897	; 0xb51
 80033b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80033ba:	7003      	strb	r3, [r0, #0]
 80033bc:	f640 3028 	movw	r0, #2856	; 0xb28
 80033c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80033c4:	7001      	strb	r1, [r0, #0]
 80033c6:	f640 4004 	movw	r0, #3076	; 0xc04
 80033ca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80033ce:	7801      	ldrb	r1, [r0, #0]
 80033d0:	f640 30d8 	movw	r0, #3032	; 0xbd8
 80033d4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80033d8:	7001      	strb	r1, [r0, #0]
 80033da:	f640 3050 	movw	r0, #2896	; 0xb50
 80033de:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80033e2:	7001      	strb	r1, [r0, #0]
 80033e4:	f640 30fd 	movw	r0, #3069	; 0xbfd
 80033e8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80033ec:	7801      	ldrb	r1, [r0, #0]
 80033ee:	f640 30d6 	movw	r0, #3030	; 0xbd6
 80033f2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80033f6:	7001      	strb	r1, [r0, #0]
 80033f8:	f640 3099 	movw	r0, #2969	; 0xb99
 80033fc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003400:	7001      	strb	r1, [r0, #0]
 8003402:	f640 3060 	movw	r0, #2912	; 0xb60
 8003406:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800340a:	7801      	ldrb	r1, [r0, #0]
 800340c:	f640 4008 	movw	r0, #3080	; 0xc08
 8003410:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003414:	7001      	strb	r1, [r0, #0]
 8003416:	f640 303a 	movw	r0, #2874	; 0xb3a
 800341a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800341e:	7001      	strb	r1, [r0, #0]
 8003420:	f640 3046 	movw	r0, #2886	; 0xb46
 8003424:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003428:	7801      	ldrb	r1, [r0, #0]
 800342a:	f640 30cd 	movw	r0, #3021	; 0xbcd
 800342e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003432:	7001      	strb	r1, [r0, #0]
 8003434:	f640 3030 	movw	r0, #2864	; 0xb30
 8003438:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800343c:	7001      	strb	r1, [r0, #0]
 800343e:	f640 3069 	movw	r0, #2921	; 0xb69
 8003442:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003446:	7801      	ldrb	r1, [r0, #0]
 8003448:	f640 30f0 	movw	r0, #3056	; 0xbf0
 800344c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003450:	7001      	strb	r1, [r0, #0]
 8003452:	f640 307f 	movw	r0, #2943	; 0xb7f
 8003456:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800345a:	7001      	strb	r1, [r0, #0]
 800345c:	f640 3045 	movw	r0, #2885	; 0xb45
 8003460:	f640 31ea 	movw	r1, #3050	; 0xbea
 8003464:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003468:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800346c:	f880 c000 	strb.w	ip, [r0]
 8003470:	f640 3053 	movw	r0, #2899	; 0xb53
 8003474:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003478:	f880 c000 	strb.w	ip, [r0]
 800347c:	f898 0000 	ldrb.w	r0, [r8]
 8003480:	46a4      	mov	ip, r4
 8003482:	f640 34b1 	movw	r4, #2993	; 0xbb1
 8003486:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800348a:	46a6      	mov	lr, r4
 800348c:	f640 34e8 	movw	r4, #3048	; 0xbe8
 8003490:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003494:	f88a 0000 	strb.w	r0, [sl]
 8003498:	7828      	ldrb	r0, [r5, #0]
 800349a:	46a3      	mov	fp, r4
 800349c:	f640 3490 	movw	r4, #2960	; 0xb90
 80034a0:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80034a4:	f88c 0000 	strb.w	r0, [ip]
 80034a8:	f89e 0000 	ldrb.w	r0, [lr]
 80034ac:	f88b 0000 	strb.w	r0, [fp]
 80034b0:	7820      	ldrb	r0, [r4, #0]
 80034b2:	7008      	strb	r0, [r1, #0]
 80034b4:	f640 3052 	movw	r0, #2898	; 0xb52
 80034b8:	f640 3179 	movw	r1, #2937	; 0xb79
 80034bc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80034c0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80034c4:	7800      	ldrb	r0, [r0, #0]
 80034c6:	7008      	strb	r0, [r1, #0]
 80034c8:	f640 31b8 	movw	r1, #3000	; 0xbb8
 80034cc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80034d0:	7008      	strb	r0, [r1, #0]
 80034d2:	f640 4009 	movw	r0, #3081	; 0xc09
 80034d6:	f640 31c0 	movw	r1, #3008	; 0xbc0
 80034da:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80034de:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80034e2:	7800      	ldrb	r0, [r0, #0]
 80034e4:	7008      	strb	r0, [r1, #0]
 80034e6:	f640 31f1 	movw	r1, #3057	; 0xbf1
 80034ea:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80034ee:	7008      	strb	r0, [r1, #0]
 80034f0:	f640 3044 	movw	r0, #2884	; 0xb44
 80034f4:	f640 3139 	movw	r1, #2873	; 0xb39
 80034f8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80034fc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003500:	7800      	ldrb	r0, [r0, #0]
 8003502:	7008      	strb	r0, [r1, #0]
 8003504:	f640 31d4 	movw	r1, #3028	; 0xbd4
 8003508:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800350c:	7008      	strb	r0, [r1, #0]
 800350e:	7810      	ldrb	r0, [r2, #0]
 8003510:	2800      	cmp	r0, #0
 8003512:	f43f abf7 	beq.w	8002d04 <FH_DU+0x70>
 8003516:	e01b      	b.n	8003550 <FH_DU+0x8bc>
 8003518:	f640 3039 	movw	r0, #2873	; 0xb39
 800351c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003520:	7800      	ldrb	r0, [r0, #0]
 8003522:	2800      	cmp	r0, #0
 8003524:	f43f ac27 	beq.w	8002d76 <FH_DU+0xe2>
 8003528:	f640 30d4 	movw	r0, #3028	; 0xbd4
 800352c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003530:	7800      	ldrb	r0, [r0, #0]
 8003532:	2800      	cmp	r0, #0
 8003534:	f47f ac1f 	bne.w	8002d76 <FH_DU+0xe2>
 8003538:	f640 30a4 	movw	r0, #2980	; 0xba4
 800353c:	7013      	strb	r3, [r2, #0]
 800353e:	2264      	movs	r2, #100	; 0x64
 8003540:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003544:	6002      	str	r2, [r0, #0]
 8003546:	f640 30cc 	movw	r0, #3020	; 0xbcc
 800354a:	2203      	movs	r2, #3
 800354c:	f7ff bc10 	b.w	8002d70 <FH_DU+0xdc>
 8003550:	b009      	add	sp, #36	; 0x24
 8003552:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8003556:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003558 <benchmark>:
 8003558:	b580      	push	{r7, lr}
 800355a:	466f      	mov	r7, sp
 800355c:	f7fe fd0b 	bl	8001f76 <interface>
 8003560:	f7ff fb98 	bl	8002c94 <FH_DU>
 8003564:	2000      	movs	r0, #0
 8003566:	bd80      	pop	{r7, pc}

08003568 <initialise_benchmark>:
 8003568:	b580      	push	{r7, lr}
 800356a:	466f      	mov	r7, sp
 800356c:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8003570:	2140      	movs	r1, #64	; 0x40
 8003572:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003576:	f000 fa21 	bl	80039bc <__aeabi_memclr>
 800357a:	f640 3194 	movw	r1, #2964	; 0xb94
 800357e:	2000      	movs	r0, #0
 8003580:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003584:	6008      	str	r0, [r1, #0]
 8003586:	f640 3148 	movw	r1, #2888	; 0xb48
 800358a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800358e:	6008      	str	r0, [r1, #0]
 8003590:	f640 3134 	movw	r1, #2868	; 0xb34
 8003594:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003598:	6008      	str	r0, [r1, #0]
 800359a:	f640 4107 	movw	r1, #3079	; 0xc07
 800359e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035a2:	7008      	strb	r0, [r1, #0]
 80035a4:	f640 31c2 	movw	r1, #3010	; 0xbc2
 80035a8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035ac:	7008      	strb	r0, [r1, #0]
 80035ae:	f640 31a0 	movw	r1, #2976	; 0xba0
 80035b2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035b6:	7008      	strb	r0, [r1, #0]
 80035b8:	f640 319a 	movw	r1, #2970	; 0xb9a
 80035bc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035c0:	7008      	strb	r0, [r1, #0]
 80035c2:	f640 4105 	movw	r1, #3077	; 0xc05
 80035c6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035ca:	7008      	strb	r0, [r1, #0]
 80035cc:	f640 31e0 	movw	r1, #3040	; 0xbe0
 80035d0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035d4:	7008      	strb	r0, [r1, #0]
 80035d6:	f640 3178 	movw	r1, #2936	; 0xb78
 80035da:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035de:	7008      	strb	r0, [r1, #0]
 80035e0:	f640 318f 	movw	r1, #2959	; 0xb8f
 80035e4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035e8:	7008      	strb	r0, [r1, #0]
 80035ea:	f640 314c 	movw	r1, #2892	; 0xb4c
 80035ee:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035f2:	7008      	strb	r0, [r1, #0]
 80035f4:	f640 3168 	movw	r1, #2920	; 0xb68
 80035f8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035fc:	7008      	strb	r0, [r1, #0]
 80035fe:	f640 314d 	movw	r1, #2893	; 0xb4d
 8003602:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003606:	7008      	strb	r0, [r1, #0]
 8003608:	f640 3138 	movw	r1, #2872	; 0xb38
 800360c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003610:	7008      	strb	r0, [r1, #0]
 8003612:	f640 31cc 	movw	r1, #3020	; 0xbcc
 8003616:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800361a:	7008      	strb	r0, [r1, #0]
 800361c:	f640 31ab 	movw	r1, #2987	; 0xbab
 8003620:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003624:	7008      	strb	r0, [r1, #0]
 8003626:	f640 314e 	movw	r1, #2894	; 0xb4e
 800362a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800362e:	7008      	strb	r0, [r1, #0]
 8003630:	f640 318d 	movw	r1, #2957	; 0xb8d
 8003634:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003638:	7008      	strb	r0, [r1, #0]
 800363a:	bd80      	pop	{r7, pc}

0800363c <verify_benchmark>:
 800363c:	b5d0      	push	{r4, r6, r7, lr}
 800363e:	af02      	add	r7, sp, #8
 8003640:	b090      	sub	sp, #64	; 0x40
 8003642:	466c      	mov	r4, sp
 8003644:	2140      	movs	r1, #64	; 0x40
 8003646:	4620      	mov	r0, r4
 8003648:	f000 f9b8 	bl	80039bc <__aeabi_memclr>
 800364c:	2001      	movs	r0, #1
 800364e:	f88d 0005 	strb.w	r0, [sp, #5]
 8003652:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8003656:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800365a:	7801      	ldrb	r1, [r0, #0]
 800365c:	b939      	cbnz	r1, 800366e <verify_benchmark+0x32>
 800365e:	2101      	movs	r1, #1
 8003660:	293f      	cmp	r1, #63	; 0x3f
 8003662:	dc07      	bgt.n	8003674 <verify_benchmark+0x38>
 8003664:	5c62      	ldrb	r2, [r4, r1]
 8003666:	5c43      	ldrb	r3, [r0, r1]
 8003668:	3101      	adds	r1, #1
 800366a:	4293      	cmp	r3, r2
 800366c:	d0f8      	beq.n	8003660 <verify_benchmark+0x24>
 800366e:	2000      	movs	r0, #0
 8003670:	b010      	add	sp, #64	; 0x40
 8003672:	bdd0      	pop	{r4, r6, r7, pc}
 8003674:	f640 3094 	movw	r0, #2964	; 0xb94
 8003678:	f640 3148 	movw	r1, #2888	; 0xb48
 800367c:	f640 32c2 	movw	r2, #3010	; 0xbc2
 8003680:	f640 334c 	movw	r3, #2892	; 0xb4c
 8003684:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003688:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800368c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003690:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003694:	6800      	ldr	r0, [r0, #0]
 8003696:	6809      	ldr	r1, [r1, #0]
 8003698:	7812      	ldrb	r2, [r2, #0]
 800369a:	4308      	orrs	r0, r1
 800369c:	f640 3134 	movw	r1, #2868	; 0xb34
 80036a0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80036a4:	6809      	ldr	r1, [r1, #0]
 80036a6:	4308      	orrs	r0, r1
 80036a8:	f640 4107 	movw	r1, #3079	; 0xc07
 80036ac:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80036b0:	7809      	ldrb	r1, [r1, #0]
 80036b2:	4311      	orrs	r1, r2
 80036b4:	f640 32a0 	movw	r2, #2976	; 0xba0
 80036b8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80036bc:	7812      	ldrb	r2, [r2, #0]
 80036be:	4311      	orrs	r1, r2
 80036c0:	f640 329a 	movw	r2, #2970	; 0xb9a
 80036c4:	b2c9      	uxtb	r1, r1
 80036c6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80036ca:	4308      	orrs	r0, r1
 80036cc:	f04f 0100 	mov.w	r1, #0
 80036d0:	bf08      	it	eq
 80036d2:	2101      	moveq	r1, #1
 80036d4:	7812      	ldrb	r2, [r2, #0]
 80036d6:	2000      	movs	r0, #0
 80036d8:	2a03      	cmp	r2, #3
 80036da:	f04f 0200 	mov.w	r2, #0
 80036de:	bf08      	it	eq
 80036e0:	2201      	moveq	r2, #1
 80036e2:	4011      	ands	r1, r2
 80036e4:	f640 4205 	movw	r2, #3077	; 0xc05
 80036e8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80036ec:	7812      	ldrb	r2, [r2, #0]
 80036ee:	2a02      	cmp	r2, #2
 80036f0:	f04f 0200 	mov.w	r2, #0
 80036f4:	bf08      	it	eq
 80036f6:	2201      	moveq	r2, #1
 80036f8:	4011      	ands	r1, r2
 80036fa:	f640 32e0 	movw	r2, #3040	; 0xbe0
 80036fe:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003702:	7812      	ldrb	r2, [r2, #0]
 8003704:	2a01      	cmp	r2, #1
 8003706:	bf18      	it	ne
 8003708:	2200      	movne	r2, #0
 800370a:	4011      	ands	r1, r2
 800370c:	f640 3278 	movw	r2, #2936	; 0xb78
 8003710:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003714:	7812      	ldrb	r2, [r2, #0]
 8003716:	2a01      	cmp	r2, #1
 8003718:	bf18      	it	ne
 800371a:	2200      	movne	r2, #0
 800371c:	781b      	ldrb	r3, [r3, #0]
 800371e:	4011      	ands	r1, r2
 8003720:	f640 328f 	movw	r2, #2959	; 0xb8f
 8003724:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003728:	7812      	ldrb	r2, [r2, #0]
 800372a:	431a      	orrs	r2, r3
 800372c:	f640 3368 	movw	r3, #2920	; 0xb68
 8003730:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003734:	781b      	ldrb	r3, [r3, #0]
 8003736:	431a      	orrs	r2, r3
 8003738:	f640 334d 	movw	r3, #2893	; 0xb4d
 800373c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003740:	781b      	ldrb	r3, [r3, #0]
 8003742:	431a      	orrs	r2, r3
 8003744:	f640 3338 	movw	r3, #2872	; 0xb38
 8003748:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800374c:	781b      	ldrb	r3, [r3, #0]
 800374e:	431a      	orrs	r2, r3
 8003750:	0612      	lsls	r2, r2, #24
 8003752:	f04f 0200 	mov.w	r2, #0
 8003756:	bf08      	it	eq
 8003758:	2201      	moveq	r2, #1
 800375a:	4011      	ands	r1, r2
 800375c:	f640 32cc 	movw	r2, #3020	; 0xbcc
 8003760:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003764:	7812      	ldrb	r2, [r2, #0]
 8003766:	2a02      	cmp	r2, #2
 8003768:	f04f 0200 	mov.w	r2, #0
 800376c:	bf08      	it	eq
 800376e:	2201      	moveq	r2, #1
 8003770:	4011      	ands	r1, r2
 8003772:	f640 32ab 	movw	r2, #2987	; 0xbab
 8003776:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800377a:	7812      	ldrb	r2, [r2, #0]
 800377c:	2a01      	cmp	r2, #1
 800377e:	bf18      	it	ne
 8003780:	2200      	movne	r2, #0
 8003782:	4011      	ands	r1, r2
 8003784:	f640 324e 	movw	r2, #2894	; 0xb4e
 8003788:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800378c:	7812      	ldrb	r2, [r2, #0]
 800378e:	2a00      	cmp	r2, #0
 8003790:	bf08      	it	eq
 8003792:	2001      	moveq	r0, #1
 8003794:	4008      	ands	r0, r1
 8003796:	f640 318d 	movw	r1, #2957	; 0xb8d
 800379a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800379e:	7809      	ldrb	r1, [r1, #0]
 80037a0:	2901      	cmp	r1, #1
 80037a2:	bf18      	it	ne
 80037a4:	2100      	movne	r1, #0
 80037a6:	4008      	ands	r0, r1
 80037a8:	b010      	add	sp, #64	; 0x40
 80037aa:	bdd0      	pop	{r4, r6, r7, pc}

080037ac <__io_putchar>:
 80037ac:	b580      	push	{r7, lr}
 80037ae:	466f      	mov	r7, sp
 80037b0:	b082      	sub	sp, #8
 80037b2:	9001      	str	r0, [sp, #4]
 80037b4:	f640 2024 	movw	r0, #2596	; 0xa24
 80037b8:	a901      	add	r1, sp, #4
 80037ba:	2201      	movs	r2, #1
 80037bc:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80037c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80037c4:	f7fe fae9 	bl	8001d9a <HAL_UART_Transmit>
 80037c8:	9801      	ldr	r0, [sp, #4]
 80037ca:	b002      	add	sp, #8
 80037cc:	bd80      	pop	{r7, pc}

080037ce <main>:
 80037ce:	b5b0      	push	{r4, r5, r7, lr}
 80037d0:	af02      	add	r7, sp, #8
 80037d2:	f640 2124 	movw	r1, #2596	; 0xa24
 80037d6:	f643 0000 	movw	r0, #14336	; 0x3800
 80037da:	220c      	movs	r2, #12
 80037dc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80037e0:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80037e4:	6008      	str	r0, [r1, #0]
 80037e6:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80037ea:	6048      	str	r0, [r1, #4]
 80037ec:	2000      	movs	r0, #0
 80037ee:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80037f2:	6108      	str	r0, [r1, #16]
 80037f4:	6248      	str	r0, [r1, #36]	; 0x24
 80037f6:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80037fa:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80037fe:	2000      	movs	r0, #0
 8003800:	f7fe fb60 	bl	8001ec4 <BSP_COM_Init>
 8003804:	f7ff feb0 	bl	8003568 <initialise_benchmark>
 8003808:	f248 70c8 	movw	r0, #34760	; 0x87c8
 800380c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003810:	f000 f94c 	bl	8003aac <printf>
 8003814:	f648 0074 	movw	r0, #34932	; 0x8874
 8003818:	f6c0 0000 	movt	r0, #2048	; 0x800
 800381c:	f000 f9a8 	bl	8003b70 <puts>
 8003820:	f7fd fcc2 	bl	80011a8 <HAL_Init>
 8003824:	f7fd fcd8 	bl	80011d8 <HAL_GetTick>
 8003828:	4604      	mov	r4, r0
 800382a:	f7ff fe95 	bl	8003558 <benchmark>
 800382e:	4605      	mov	r5, r0
 8003830:	f7fd fcd2 	bl	80011d8 <HAL_GetTick>
 8003834:	1b04      	subs	r4, r0, r4
 8003836:	4628      	mov	r0, r5
 8003838:	f7ff ff00 	bl	800363c <verify_benchmark>
 800383c:	1c41      	adds	r1, r0, #1
 800383e:	d006      	beq.n	800384e <main+0x80>
 8003840:	2801      	cmp	r0, #1
 8003842:	d109      	bne.n	8003858 <main+0x8a>
 8003844:	f248 70e0 	movw	r0, #34784	; 0x87e0
 8003848:	f6c0 0000 	movt	r0, #2048	; 0x800
 800384c:	e008      	b.n	8003860 <main+0x92>
 800384e:	f648 0004 	movw	r0, #34820	; 0x8804
 8003852:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003856:	e003      	b.n	8003860 <main+0x92>
 8003858:	f648 0039 	movw	r0, #34873	; 0x8839
 800385c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003860:	4621      	mov	r1, r4
 8003862:	f000 f923 	bl	8003aac <printf>
 8003866:	2000      	movs	r0, #0
 8003868:	bdb0      	pop	{r4, r5, r7, pc}

0800386a <SysTick_Handler>:
 800386a:	b580      	push	{r7, lr}
 800386c:	466f      	mov	r7, sp
 800386e:	f7fd fcab 	bl	80011c8 <HAL_IncTick>
 8003872:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8003876:	f7fd bd05 	b.w	8001284 <HAL_SYSTICK_IRQHandler>

0800387a <_read>:
 800387a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800387c:	af03      	add	r7, sp, #12
 800387e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8003882:	4614      	mov	r4, r2
 8003884:	460d      	mov	r5, r1
 8003886:	2c01      	cmp	r4, #1
 8003888:	db06      	blt.n	8003898 <_read+0x1e>
 800388a:	4626      	mov	r6, r4
 800388c:	f3af 8000 	nop.w
 8003890:	f805 0b01 	strb.w	r0, [r5], #1
 8003894:	3e01      	subs	r6, #1
 8003896:	d1f9      	bne.n	800388c <_read+0x12>
 8003898:	4620      	mov	r0, r4
 800389a:	f85d bb04 	ldr.w	fp, [sp], #4
 800389e:	bdf0      	pop	{r4, r5, r6, r7, pc}

080038a0 <_write>:
 80038a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80038a2:	af03      	add	r7, sp, #12
 80038a4:	f84d bd04 	str.w	fp, [sp, #-4]!
 80038a8:	4614      	mov	r4, r2
 80038aa:	460d      	mov	r5, r1
 80038ac:	2c01      	cmp	r4, #1
 80038ae:	db06      	blt.n	80038be <_write+0x1e>
 80038b0:	4626      	mov	r6, r4
 80038b2:	f815 0b01 	ldrb.w	r0, [r5], #1
 80038b6:	f7ff ff79 	bl	80037ac <__io_putchar>
 80038ba:	3e01      	subs	r6, #1
 80038bc:	d1f9      	bne.n	80038b2 <_write+0x12>
 80038be:	4620      	mov	r0, r4
 80038c0:	f85d bb04 	ldr.w	fp, [sp], #4
 80038c4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080038c6 <_sbrk>:
 80038c6:	f640 22a8 	movw	r2, #2728	; 0xaa8
 80038ca:	4601      	mov	r1, r0
 80038cc:	466b      	mov	r3, sp
 80038ce:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80038d2:	6810      	ldr	r0, [r2, #0]
 80038d4:	2800      	cmp	r0, #0
 80038d6:	bf02      	ittt	eq
 80038d8:	f640 4038 	movweq	r0, #3128	; 0xc38
 80038dc:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80038e0:	6010      	streq	r0, [r2, #0]
 80038e2:	4401      	add	r1, r0
 80038e4:	4299      	cmp	r1, r3
 80038e6:	bf9c      	itt	ls
 80038e8:	6011      	strls	r1, [r2, #0]
 80038ea:	4770      	bxls	lr
 80038ec:	b580      	push	{r7, lr}
 80038ee:	466f      	mov	r7, sp
 80038f0:	f000 f868 	bl	80039c4 <__errno>
 80038f4:	210c      	movs	r1, #12
 80038f6:	6001      	str	r1, [r0, #0]
 80038f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80038fc:	bd80      	pop	{r7, pc}

080038fe <_close>:
 80038fe:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003902:	4770      	bx	lr

08003904 <_fstat>:
 8003904:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8003908:	6048      	str	r0, [r1, #4]
 800390a:	2000      	movs	r0, #0
 800390c:	4770      	bx	lr

0800390e <_isatty>:
 800390e:	2001      	movs	r0, #1
 8003910:	4770      	bx	lr

08003912 <_lseek>:
 8003912:	2000      	movs	r0, #0
 8003914:	4770      	bx	lr

08003916 <SystemInit>:
 8003916:	f64e 5088 	movw	r0, #60808	; 0xed88
 800391a:	f04f 0c00 	mov.w	ip, #0
 800391e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8003922:	6801      	ldr	r1, [r0, #0]
 8003924:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8003928:	6001      	str	r1, [r0, #0]
 800392a:	f241 0100 	movw	r1, #4096	; 0x1000
 800392e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8003932:	680a      	ldr	r2, [r1, #0]
 8003934:	f042 0201 	orr.w	r2, r2, #1
 8003938:	600a      	str	r2, [r1, #0]
 800393a:	f8c1 c008 	str.w	ip, [r1, #8]
 800393e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8003942:	680b      	ldr	r3, [r1, #0]
 8003944:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8003948:	401a      	ands	r2, r3
 800394a:	600a      	str	r2, [r1, #0]
 800394c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8003950:	60ca      	str	r2, [r1, #12]
 8003952:	680a      	ldr	r2, [r1, #0]
 8003954:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8003958:	600a      	str	r2, [r1, #0]
 800395a:	f8c1 c018 	str.w	ip, [r1, #24]
 800395e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8003962:	f840 1c80 	str.w	r1, [r0, #-128]
 8003966:	4770      	bx	lr

08003968 <Reset_Handler>:
 8003968:	f8df d034 	ldr.w	sp, [pc, #52]	; 80039a0 <LoopForever+0x2>
 800396c:	2100      	movs	r1, #0
 800396e:	e003      	b.n	8003978 <LoopCopyDataInit>

08003970 <CopyDataInit>:
 8003970:	4b0c      	ldr	r3, [pc, #48]	; (80039a4 <LoopForever+0x6>)
 8003972:	585b      	ldr	r3, [r3, r1]
 8003974:	5043      	str	r3, [r0, r1]
 8003976:	3104      	adds	r1, #4

08003978 <LoopCopyDataInit>:
 8003978:	480b      	ldr	r0, [pc, #44]	; (80039a8 <LoopForever+0xa>)
 800397a:	4b0c      	ldr	r3, [pc, #48]	; (80039ac <LoopForever+0xe>)
 800397c:	1842      	adds	r2, r0, r1
 800397e:	429a      	cmp	r2, r3
 8003980:	d3f6      	bcc.n	8003970 <CopyDataInit>
 8003982:	4a0b      	ldr	r2, [pc, #44]	; (80039b0 <LoopForever+0x12>)
 8003984:	e002      	b.n	800398c <LoopFillZerobss>

08003986 <FillZerobss>:
 8003986:	2300      	movs	r3, #0
 8003988:	f842 3b04 	str.w	r3, [r2], #4

0800398c <LoopFillZerobss>:
 800398c:	4b09      	ldr	r3, [pc, #36]	; (80039b4 <LoopForever+0x16>)
 800398e:	429a      	cmp	r2, r3
 8003990:	d3f9      	bcc.n	8003986 <FillZerobss>
 8003992:	f7ff ffc0 	bl	8003916 <SystemInit>
 8003996:	f000 f81b 	bl	80039d0 <__libc_init_array>
 800399a:	f7ff ff18 	bl	80037ce <main>

0800399e <LoopForever>:
 800399e:	e7fe      	b.n	800399e <LoopForever>
 80039a0:	20018000 	.word	0x20018000
 80039a4:	08008b20 	.word	0x08008b20
 80039a8:	20000000 	.word	0x20000000
 80039ac:	200009c8 	.word	0x200009c8
 80039b0:	200009c8 	.word	0x200009c8
 80039b4:	20000c34 	.word	0x20000c34

080039b8 <ADC1_2_IRQHandler>:
 80039b8:	e7fe      	b.n	80039b8 <ADC1_2_IRQHandler>
	...

080039bc <__aeabi_memclr>:
 80039bc:	2200      	movs	r2, #0
 80039be:	f7fc bd9f 	b.w	8000500 <__aeabi_memset>
 80039c2:	bf00      	nop

080039c4 <__errno>:
 80039c4:	4b01      	ldr	r3, [pc, #4]	; (80039cc <__errno+0x8>)
 80039c6:	6818      	ldr	r0, [r3, #0]
 80039c8:	4770      	bx	lr
 80039ca:	bf00      	nop
 80039cc:	20000018 	.word	0x20000018

080039d0 <__libc_init_array>:
 80039d0:	b570      	push	{r4, r5, r6, lr}
 80039d2:	4e0d      	ldr	r6, [pc, #52]	; (8003a08 <__libc_init_array+0x38>)
 80039d4:	4d0d      	ldr	r5, [pc, #52]	; (8003a0c <__libc_init_array+0x3c>)
 80039d6:	1b76      	subs	r6, r6, r5
 80039d8:	10b6      	asrs	r6, r6, #2
 80039da:	d006      	beq.n	80039ea <__libc_init_array+0x1a>
 80039dc:	2400      	movs	r4, #0
 80039de:	3401      	adds	r4, #1
 80039e0:	f855 3b04 	ldr.w	r3, [r5], #4
 80039e4:	4798      	blx	r3
 80039e6:	42a6      	cmp	r6, r4
 80039e8:	d1f9      	bne.n	80039de <__libc_init_array+0xe>
 80039ea:	4e09      	ldr	r6, [pc, #36]	; (8003a10 <__libc_init_array+0x40>)
 80039ec:	4d09      	ldr	r5, [pc, #36]	; (8003a14 <__libc_init_array+0x44>)
 80039ee:	1b76      	subs	r6, r6, r5
 80039f0:	f004 fea8 	bl	8008744 <_init>
 80039f4:	10b6      	asrs	r6, r6, #2
 80039f6:	d006      	beq.n	8003a06 <__libc_init_array+0x36>
 80039f8:	2400      	movs	r4, #0
 80039fa:	3401      	adds	r4, #1
 80039fc:	f855 3b04 	ldr.w	r3, [r5], #4
 8003a00:	4798      	blx	r3
 8003a02:	42a6      	cmp	r6, r4
 8003a04:	d1f9      	bne.n	80039fa <__libc_init_array+0x2a>
 8003a06:	bd70      	pop	{r4, r5, r6, pc}
 8003a08:	08008b10 	.word	0x08008b10
 8003a0c:	08008b10 	.word	0x08008b10
 8003a10:	08008b18 	.word	0x08008b18
 8003a14:	08008b10 	.word	0x08008b10

08003a18 <memset>:
 8003a18:	b4f0      	push	{r4, r5, r6, r7}
 8003a1a:	0786      	lsls	r6, r0, #30
 8003a1c:	d043      	beq.n	8003aa6 <memset+0x8e>
 8003a1e:	1e54      	subs	r4, r2, #1
 8003a20:	2a00      	cmp	r2, #0
 8003a22:	d03e      	beq.n	8003aa2 <memset+0x8a>
 8003a24:	b2ca      	uxtb	r2, r1
 8003a26:	4603      	mov	r3, r0
 8003a28:	e002      	b.n	8003a30 <memset+0x18>
 8003a2a:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8003a2e:	d338      	bcc.n	8003aa2 <memset+0x8a>
 8003a30:	f803 2b01 	strb.w	r2, [r3], #1
 8003a34:	079d      	lsls	r5, r3, #30
 8003a36:	d1f8      	bne.n	8003a2a <memset+0x12>
 8003a38:	2c03      	cmp	r4, #3
 8003a3a:	d92b      	bls.n	8003a94 <memset+0x7c>
 8003a3c:	b2cd      	uxtb	r5, r1
 8003a3e:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8003a42:	2c0f      	cmp	r4, #15
 8003a44:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8003a48:	d916      	bls.n	8003a78 <memset+0x60>
 8003a4a:	f1a4 0710 	sub.w	r7, r4, #16
 8003a4e:	093f      	lsrs	r7, r7, #4
 8003a50:	f103 0620 	add.w	r6, r3, #32
 8003a54:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8003a58:	f103 0210 	add.w	r2, r3, #16
 8003a5c:	e942 5504 	strd	r5, r5, [r2, #-16]
 8003a60:	e942 5502 	strd	r5, r5, [r2, #-8]
 8003a64:	3210      	adds	r2, #16
 8003a66:	42b2      	cmp	r2, r6
 8003a68:	d1f8      	bne.n	8003a5c <memset+0x44>
 8003a6a:	f004 040f 	and.w	r4, r4, #15
 8003a6e:	3701      	adds	r7, #1
 8003a70:	2c03      	cmp	r4, #3
 8003a72:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8003a76:	d90d      	bls.n	8003a94 <memset+0x7c>
 8003a78:	461e      	mov	r6, r3
 8003a7a:	4622      	mov	r2, r4
 8003a7c:	3a04      	subs	r2, #4
 8003a7e:	2a03      	cmp	r2, #3
 8003a80:	f846 5b04 	str.w	r5, [r6], #4
 8003a84:	d8fa      	bhi.n	8003a7c <memset+0x64>
 8003a86:	1f22      	subs	r2, r4, #4
 8003a88:	f022 0203 	bic.w	r2, r2, #3
 8003a8c:	3204      	adds	r2, #4
 8003a8e:	4413      	add	r3, r2
 8003a90:	f004 0403 	and.w	r4, r4, #3
 8003a94:	b12c      	cbz	r4, 8003aa2 <memset+0x8a>
 8003a96:	b2c9      	uxtb	r1, r1
 8003a98:	441c      	add	r4, r3
 8003a9a:	f803 1b01 	strb.w	r1, [r3], #1
 8003a9e:	429c      	cmp	r4, r3
 8003aa0:	d1fb      	bne.n	8003a9a <memset+0x82>
 8003aa2:	bcf0      	pop	{r4, r5, r6, r7}
 8003aa4:	4770      	bx	lr
 8003aa6:	4614      	mov	r4, r2
 8003aa8:	4603      	mov	r3, r0
 8003aaa:	e7c5      	b.n	8003a38 <memset+0x20>

08003aac <printf>:
 8003aac:	b40f      	push	{r0, r1, r2, r3}
 8003aae:	b500      	push	{lr}
 8003ab0:	4907      	ldr	r1, [pc, #28]	; (8003ad0 <printf+0x24>)
 8003ab2:	b083      	sub	sp, #12
 8003ab4:	ab04      	add	r3, sp, #16
 8003ab6:	6808      	ldr	r0, [r1, #0]
 8003ab8:	f853 2b04 	ldr.w	r2, [r3], #4
 8003abc:	6881      	ldr	r1, [r0, #8]
 8003abe:	9301      	str	r3, [sp, #4]
 8003ac0:	f000 f85e 	bl	8003b80 <_vfprintf_r>
 8003ac4:	b003      	add	sp, #12
 8003ac6:	f85d eb04 	ldr.w	lr, [sp], #4
 8003aca:	b004      	add	sp, #16
 8003acc:	4770      	bx	lr
 8003ace:	bf00      	nop
 8003ad0:	20000018 	.word	0x20000018

08003ad4 <_puts_r>:
 8003ad4:	b570      	push	{r4, r5, r6, lr}
 8003ad6:	4605      	mov	r5, r0
 8003ad8:	b088      	sub	sp, #32
 8003ada:	4608      	mov	r0, r1
 8003adc:	460c      	mov	r4, r1
 8003ade:	f7fc fe0f 	bl	8000700 <strlen>
 8003ae2:	4a22      	ldr	r2, [pc, #136]	; (8003b6c <_puts_r+0x98>)
 8003ae4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8003ae6:	9404      	str	r4, [sp, #16]
 8003ae8:	2601      	movs	r6, #1
 8003aea:	1c44      	adds	r4, r0, #1
 8003aec:	a904      	add	r1, sp, #16
 8003aee:	9206      	str	r2, [sp, #24]
 8003af0:	2202      	movs	r2, #2
 8003af2:	9403      	str	r4, [sp, #12]
 8003af4:	9005      	str	r0, [sp, #20]
 8003af6:	68ac      	ldr	r4, [r5, #8]
 8003af8:	9607      	str	r6, [sp, #28]
 8003afa:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8003afe:	b31b      	cbz	r3, 8003b48 <_puts_r+0x74>
 8003b00:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8003b02:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003b06:	07ce      	lsls	r6, r1, #31
 8003b08:	b29a      	uxth	r2, r3
 8003b0a:	d401      	bmi.n	8003b10 <_puts_r+0x3c>
 8003b0c:	0590      	lsls	r0, r2, #22
 8003b0e:	d525      	bpl.n	8003b5c <_puts_r+0x88>
 8003b10:	0491      	lsls	r1, r2, #18
 8003b12:	d406      	bmi.n	8003b22 <_puts_r+0x4e>
 8003b14:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8003b16:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8003b1a:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8003b1e:	81a3      	strh	r3, [r4, #12]
 8003b20:	6662      	str	r2, [r4, #100]	; 0x64
 8003b22:	4628      	mov	r0, r5
 8003b24:	aa01      	add	r2, sp, #4
 8003b26:	4621      	mov	r1, r4
 8003b28:	f003 f85e 	bl	8006be8 <__sfvwrite_r>
 8003b2c:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8003b2e:	2800      	cmp	r0, #0
 8003b30:	bf0c      	ite	eq
 8003b32:	250a      	moveq	r5, #10
 8003b34:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003b38:	07da      	lsls	r2, r3, #31
 8003b3a:	d402      	bmi.n	8003b42 <_puts_r+0x6e>
 8003b3c:	89a3      	ldrh	r3, [r4, #12]
 8003b3e:	059b      	lsls	r3, r3, #22
 8003b40:	d506      	bpl.n	8003b50 <_puts_r+0x7c>
 8003b42:	4628      	mov	r0, r5
 8003b44:	b008      	add	sp, #32
 8003b46:	bd70      	pop	{r4, r5, r6, pc}
 8003b48:	4628      	mov	r0, r5
 8003b4a:	f002 feb7 	bl	80068bc <__sinit>
 8003b4e:	e7d7      	b.n	8003b00 <_puts_r+0x2c>
 8003b50:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8003b52:	f003 fa05 	bl	8006f60 <__retarget_lock_release_recursive>
 8003b56:	4628      	mov	r0, r5
 8003b58:	b008      	add	sp, #32
 8003b5a:	bd70      	pop	{r4, r5, r6, pc}
 8003b5c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8003b5e:	f003 f9fd 	bl	8006f5c <__retarget_lock_acquire_recursive>
 8003b62:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003b66:	b29a      	uxth	r2, r3
 8003b68:	e7d2      	b.n	8003b10 <_puts_r+0x3c>
 8003b6a:	bf00      	nop
 8003b6c:	0800887c 	.word	0x0800887c

08003b70 <puts>:
 8003b70:	4b02      	ldr	r3, [pc, #8]	; (8003b7c <puts+0xc>)
 8003b72:	4601      	mov	r1, r0
 8003b74:	6818      	ldr	r0, [r3, #0]
 8003b76:	f7ff bfad 	b.w	8003ad4 <_puts_r>
 8003b7a:	bf00      	nop
 8003b7c:	20000018 	.word	0x20000018

08003b80 <_vfprintf_r>:
 8003b80:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003b84:	b0d7      	sub	sp, #348	; 0x15c
 8003b86:	461c      	mov	r4, r3
 8003b88:	4689      	mov	r9, r1
 8003b8a:	4617      	mov	r7, r2
 8003b8c:	4605      	mov	r5, r0
 8003b8e:	9003      	str	r0, [sp, #12]
 8003b90:	f003 f9d2 	bl	8006f38 <_localeconv_r>
 8003b94:	6803      	ldr	r3, [r0, #0]
 8003b96:	9316      	str	r3, [sp, #88]	; 0x58
 8003b98:	4618      	mov	r0, r3
 8003b9a:	f7fc fdb1 	bl	8000700 <strlen>
 8003b9e:	9408      	str	r4, [sp, #32]
 8003ba0:	9015      	str	r0, [sp, #84]	; 0x54
 8003ba2:	b11d      	cbz	r5, 8003bac <_vfprintf_r+0x2c>
 8003ba4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8003ba6:	2b00      	cmp	r3, #0
 8003ba8:	f000 8107 	beq.w	8003dba <_vfprintf_r+0x23a>
 8003bac:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8003bb0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8003bb4:	07c8      	lsls	r0, r1, #31
 8003bb6:	b293      	uxth	r3, r2
 8003bb8:	d402      	bmi.n	8003bc0 <_vfprintf_r+0x40>
 8003bba:	0599      	lsls	r1, r3, #22
 8003bbc:	f140 811f 	bpl.w	8003dfe <_vfprintf_r+0x27e>
 8003bc0:	049e      	lsls	r6, r3, #18
 8003bc2:	d40a      	bmi.n	8003bda <_vfprintf_r+0x5a>
 8003bc4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8003bc8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8003bcc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8003bd0:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003bd4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8003bd8:	b29b      	uxth	r3, r3
 8003bda:	071d      	lsls	r5, r3, #28
 8003bdc:	f140 80b2 	bpl.w	8003d44 <_vfprintf_r+0x1c4>
 8003be0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8003be4:	2a00      	cmp	r2, #0
 8003be6:	f000 80ad 	beq.w	8003d44 <_vfprintf_r+0x1c4>
 8003bea:	f003 021a 	and.w	r2, r3, #26
 8003bee:	2a0a      	cmp	r2, #10
 8003bf0:	f000 80c9 	beq.w	8003d86 <_vfprintf_r+0x206>
 8003bf4:	2300      	movs	r3, #0
 8003bf6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8003e10 <_vfprintf_r+0x290>
 8003bfa:	9310      	str	r3, [sp, #64]	; 0x40
 8003bfc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8003c00:	9317      	str	r3, [sp, #92]	; 0x5c
 8003c02:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8003c06:	931b      	str	r3, [sp, #108]	; 0x6c
 8003c08:	9318      	str	r3, [sp, #96]	; 0x60
 8003c0a:	9305      	str	r3, [sp, #20]
 8003c0c:	ab2d      	add	r3, sp, #180	; 0xb4
 8003c0e:	932a      	str	r3, [sp, #168]	; 0xa8
 8003c10:	469b      	mov	fp, r3
 8003c12:	783b      	ldrb	r3, [r7, #0]
 8003c14:	f8cd 901c 	str.w	r9, [sp, #28]
 8003c18:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003c1c:	2b00      	cmp	r3, #0
 8003c1e:	f000 8259 	beq.w	80040d4 <_vfprintf_r+0x554>
 8003c22:	2b25      	cmp	r3, #37	; 0x25
 8003c24:	463c      	mov	r4, r7
 8003c26:	d102      	bne.n	8003c2e <_vfprintf_r+0xae>
 8003c28:	e01d      	b.n	8003c66 <_vfprintf_r+0xe6>
 8003c2a:	2b25      	cmp	r3, #37	; 0x25
 8003c2c:	d003      	beq.n	8003c36 <_vfprintf_r+0xb6>
 8003c2e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8003c32:	2b00      	cmp	r3, #0
 8003c34:	d1f9      	bne.n	8003c2a <_vfprintf_r+0xaa>
 8003c36:	1be5      	subs	r5, r4, r7
 8003c38:	b18d      	cbz	r5, 8003c5e <_vfprintf_r+0xde>
 8003c3a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8003c3e:	3301      	adds	r3, #1
 8003c40:	442a      	add	r2, r5
 8003c42:	2b07      	cmp	r3, #7
 8003c44:	f8cb 7000 	str.w	r7, [fp]
 8003c48:	f8cb 5004 	str.w	r5, [fp, #4]
 8003c4c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8003c50:	f300 80ca 	bgt.w	8003de8 <_vfprintf_r+0x268>
 8003c54:	f10b 0b08 	add.w	fp, fp, #8
 8003c58:	9b05      	ldr	r3, [sp, #20]
 8003c5a:	442b      	add	r3, r5
 8003c5c:	9305      	str	r3, [sp, #20]
 8003c5e:	7823      	ldrb	r3, [r4, #0]
 8003c60:	2b00      	cmp	r3, #0
 8003c62:	f000 8237 	beq.w	80040d4 <_vfprintf_r+0x554>
 8003c66:	2300      	movs	r3, #0
 8003c68:	7866      	ldrb	r6, [r4, #1]
 8003c6a:	9306      	str	r3, [sp, #24]
 8003c6c:	4698      	mov	r8, r3
 8003c6e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003c72:	f104 0a01 	add.w	sl, r4, #1
 8003c76:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8003c7a:	252b      	movs	r5, #43	; 0x2b
 8003c7c:	f10a 0a01 	add.w	sl, sl, #1
 8003c80:	f1a6 0320 	sub.w	r3, r6, #32
 8003c84:	2b5a      	cmp	r3, #90	; 0x5a
 8003c86:	f200 842a 	bhi.w	80044de <_vfprintf_r+0x95e>
 8003c8a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8003c8e:	03aa      	.short	0x03aa
 8003c90:	04280428 	.word	0x04280428
 8003c94:	0428029c 	.word	0x0428029c
 8003c98:	04280428 	.word	0x04280428
 8003c9c:	042802a7 	.word	0x042802a7
 8003ca0:	02c60428 	.word	0x02c60428
 8003ca4:	042802d2 	.word	0x042802d2
 8003ca8:	02dc02d7 	.word	0x02dc02d7
 8003cac:	02f60428 	.word	0x02f60428
 8003cb0:	026d026d 	.word	0x026d026d
 8003cb4:	026d026d 	.word	0x026d026d
 8003cb8:	026d026d 	.word	0x026d026d
 8003cbc:	026d026d 	.word	0x026d026d
 8003cc0:	0428026d 	.word	0x0428026d
 8003cc4:	04280428 	.word	0x04280428
 8003cc8:	04280428 	.word	0x04280428
 8003ccc:	04280428 	.word	0x04280428
 8003cd0:	042802fb 	.word	0x042802fb
 8003cd4:	03f3033c 	.word	0x03f3033c
 8003cd8:	02fb02fb 	.word	0x02fb02fb
 8003cdc:	042802fb 	.word	0x042802fb
 8003ce0:	04280428 	.word	0x04280428
 8003ce4:	03ee0428 	.word	0x03ee0428
 8003ce8:	04280428 	.word	0x04280428
 8003cec:	0428009a 	.word	0x0428009a
 8003cf0:	04280428 	.word	0x04280428
 8003cf4:	04280350 	.word	0x04280350
 8003cf8:	04280379 	.word	0x04280379
 8003cfc:	03900428 	.word	0x03900428
 8003d00:	04280428 	.word	0x04280428
 8003d04:	04280428 	.word	0x04280428
 8003d08:	04280428 	.word	0x04280428
 8003d0c:	04280428 	.word	0x04280428
 8003d10:	042802fb 	.word	0x042802fb
 8003d14:	00c5033c 	.word	0x00c5033c
 8003d18:	02fb02fb 	.word	0x02fb02fb
 8003d1c:	03d102fb 	.word	0x03d102fb
 8003d20:	007000c5 	.word	0x007000c5
 8003d24:	03b50428 	.word	0x03b50428
 8003d28:	03c20428 	.word	0x03c20428
 8003d2c:	03de009c 	.word	0x03de009c
 8003d30:	04280070 	.word	0x04280070
 8003d34:	00720350 	.word	0x00720350
 8003d38:	0428022c 	.word	0x0428022c
 8003d3c:	027c0428 	.word	0x027c0428
 8003d40:	00720428 	.word	0x00720428
 8003d44:	4649      	mov	r1, r9
 8003d46:	9803      	ldr	r0, [sp, #12]
 8003d48:	f001 fc9a 	bl	8005680 <__swsetup_r>
 8003d4c:	b1a0      	cbz	r0, 8003d78 <_vfprintf_r+0x1f8>
 8003d4e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8003d52:	07d8      	lsls	r0, r3, #31
 8003d54:	d404      	bmi.n	8003d60 <_vfprintf_r+0x1e0>
 8003d56:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003d5a:	0599      	lsls	r1, r3, #22
 8003d5c:	f140 83b7 	bpl.w	80044ce <_vfprintf_r+0x94e>
 8003d60:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003d64:	9305      	str	r3, [sp, #20]
 8003d66:	9805      	ldr	r0, [sp, #20]
 8003d68:	b057      	add	sp, #348	; 0x15c
 8003d6a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003d6e:	f048 0820 	orr.w	r8, r8, #32
 8003d72:	f89a 6000 	ldrb.w	r6, [sl]
 8003d76:	e781      	b.n	8003c7c <_vfprintf_r+0xfc>
 8003d78:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003d7c:	f003 021a 	and.w	r2, r3, #26
 8003d80:	2a0a      	cmp	r2, #10
 8003d82:	f47f af37 	bne.w	8003bf4 <_vfprintf_r+0x74>
 8003d86:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8003d8a:	2a00      	cmp	r2, #0
 8003d8c:	f6ff af32 	blt.w	8003bf4 <_vfprintf_r+0x74>
 8003d90:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003d94:	07d2      	lsls	r2, r2, #31
 8003d96:	d405      	bmi.n	8003da4 <_vfprintf_r+0x224>
 8003d98:	059b      	lsls	r3, r3, #22
 8003d9a:	d403      	bmi.n	8003da4 <_vfprintf_r+0x224>
 8003d9c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003da0:	f003 f8de 	bl	8006f60 <__retarget_lock_release_recursive>
 8003da4:	4623      	mov	r3, r4
 8003da6:	463a      	mov	r2, r7
 8003da8:	4649      	mov	r1, r9
 8003daa:	9803      	ldr	r0, [sp, #12]
 8003dac:	f001 fc26 	bl	80055fc <__sbprintf>
 8003db0:	9005      	str	r0, [sp, #20]
 8003db2:	9805      	ldr	r0, [sp, #20]
 8003db4:	b057      	add	sp, #348	; 0x15c
 8003db6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003dba:	9803      	ldr	r0, [sp, #12]
 8003dbc:	f002 fd7e 	bl	80068bc <__sinit>
 8003dc0:	e6f4      	b.n	8003bac <_vfprintf_r+0x2c>
 8003dc2:	f048 0810 	orr.w	r8, r8, #16
 8003dc6:	f018 0f20 	tst.w	r8, #32
 8003dca:	f000 836c 	beq.w	80044a6 <_vfprintf_r+0x926>
 8003dce:	9c08      	ldr	r4, [sp, #32]
 8003dd0:	3407      	adds	r4, #7
 8003dd2:	f024 0307 	bic.w	r3, r4, #7
 8003dd6:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003dda:	f103 0208 	add.w	r2, r3, #8
 8003dde:	9208      	str	r2, [sp, #32]
 8003de0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8003de4:	2200      	movs	r2, #0
 8003de6:	e18c      	b.n	8004102 <_vfprintf_r+0x582>
 8003de8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dea:	9907      	ldr	r1, [sp, #28]
 8003dec:	9803      	ldr	r0, [sp, #12]
 8003dee:	f004 f9f5 	bl	80081dc <__sprint_r>
 8003df2:	2800      	cmp	r0, #0
 8003df4:	f041 8376 	bne.w	80054e4 <_vfprintf_r+0x1964>
 8003df8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003dfc:	e72c      	b.n	8003c58 <_vfprintf_r+0xd8>
 8003dfe:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003e02:	f003 f8ab 	bl	8006f5c <__retarget_lock_acquire_recursive>
 8003e06:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8003e0a:	b293      	uxth	r3, r2
 8003e0c:	e6d8      	b.n	8003bc0 <_vfprintf_r+0x40>
 8003e0e:	bf00      	nop
	...
 8003e18:	4643      	mov	r3, r8
 8003e1a:	069f      	lsls	r7, r3, #26
 8003e1c:	f140 832f 	bpl.w	800447e <_vfprintf_r+0x8fe>
 8003e20:	9c08      	ldr	r4, [sp, #32]
 8003e22:	3407      	adds	r4, #7
 8003e24:	f024 0407 	bic.w	r4, r4, #7
 8003e28:	e9d4 0100 	ldrd	r0, r1, [r4]
 8003e2c:	f104 0208 	add.w	r2, r4, #8
 8003e30:	9208      	str	r2, [sp, #32]
 8003e32:	4604      	mov	r4, r0
 8003e34:	460d      	mov	r5, r1
 8003e36:	2800      	cmp	r0, #0
 8003e38:	f171 0200 	sbcs.w	r2, r1, #0
 8003e3c:	da05      	bge.n	8003e4a <_vfprintf_r+0x2ca>
 8003e3e:	222d      	movs	r2, #45	; 0x2d
 8003e40:	4264      	negs	r4, r4
 8003e42:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8003e46:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003e4a:	aa56      	add	r2, sp, #344	; 0x158
 8003e4c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003e50:	9204      	str	r2, [sp, #16]
 8003e52:	f000 84b2 	beq.w	80047ba <_vfprintf_r+0xc3a>
 8003e56:	2201      	movs	r2, #1
 8003e58:	ea54 0105 	orrs.w	r1, r4, r5
 8003e5c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8003e60:	f040 8159 	bne.w	8004116 <_vfprintf_r+0x596>
 8003e64:	f1b9 0f00 	cmp.w	r9, #0
 8003e68:	f040 8619 	bne.w	8004a9e <_vfprintf_r+0xf1e>
 8003e6c:	2a00      	cmp	r2, #0
 8003e6e:	f040 8508 	bne.w	8004882 <_vfprintf_r+0xd02>
 8003e72:	f013 0301 	ands.w	r3, r3, #1
 8003e76:	af56      	add	r7, sp, #344	; 0x158
 8003e78:	9309      	str	r3, [sp, #36]	; 0x24
 8003e7a:	d002      	beq.n	8003e82 <_vfprintf_r+0x302>
 8003e7c:	2330      	movs	r3, #48	; 0x30
 8003e7e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003e82:	2300      	movs	r3, #0
 8003e84:	930a      	str	r3, [sp, #40]	; 0x28
 8003e86:	930f      	str	r3, [sp, #60]	; 0x3c
 8003e88:	9314      	str	r3, [sp, #80]	; 0x50
 8003e8a:	9311      	str	r3, [sp, #68]	; 0x44
 8003e8c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e8e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003e92:	454b      	cmp	r3, r9
 8003e94:	bfb8      	it	lt
 8003e96:	464b      	movlt	r3, r9
 8003e98:	9304      	str	r3, [sp, #16]
 8003e9a:	b112      	cbz	r2, 8003ea2 <_vfprintf_r+0x322>
 8003e9c:	9b04      	ldr	r3, [sp, #16]
 8003e9e:	3301      	adds	r3, #1
 8003ea0:	9304      	str	r3, [sp, #16]
 8003ea2:	f018 0302 	ands.w	r3, r8, #2
 8003ea6:	930b      	str	r3, [sp, #44]	; 0x2c
 8003ea8:	d002      	beq.n	8003eb0 <_vfprintf_r+0x330>
 8003eaa:	9b04      	ldr	r3, [sp, #16]
 8003eac:	3302      	adds	r3, #2
 8003eae:	9304      	str	r3, [sp, #16]
 8003eb0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8003eb4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003eb6:	930e      	str	r3, [sp, #56]	; 0x38
 8003eb8:	d13f      	bne.n	8003f3a <_vfprintf_r+0x3ba>
 8003eba:	9b06      	ldr	r3, [sp, #24]
 8003ebc:	9904      	ldr	r1, [sp, #16]
 8003ebe:	1a5d      	subs	r5, r3, r1
 8003ec0:	2d00      	cmp	r5, #0
 8003ec2:	dd3a      	ble.n	8003f3a <_vfprintf_r+0x3ba>
 8003ec4:	2d10      	cmp	r5, #16
 8003ec6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003ec8:	dd29      	ble.n	8003f1e <_vfprintf_r+0x39e>
 8003eca:	4659      	mov	r1, fp
 8003ecc:	4620      	mov	r0, r4
 8003ece:	9620      	str	r6, [sp, #128]	; 0x80
 8003ed0:	2310      	movs	r3, #16
 8003ed2:	9c03      	ldr	r4, [sp, #12]
 8003ed4:	9e07      	ldr	r6, [sp, #28]
 8003ed6:	46bb      	mov	fp, r7
 8003ed8:	e004      	b.n	8003ee4 <_vfprintf_r+0x364>
 8003eda:	3d10      	subs	r5, #16
 8003edc:	2d10      	cmp	r5, #16
 8003ede:	f101 0108 	add.w	r1, r1, #8
 8003ee2:	dd18      	ble.n	8003f16 <_vfprintf_r+0x396>
 8003ee4:	3201      	adds	r2, #1
 8003ee6:	4fba      	ldr	r7, [pc, #744]	; (80041d0 <_vfprintf_r+0x650>)
 8003ee8:	3010      	adds	r0, #16
 8003eea:	2a07      	cmp	r2, #7
 8003eec:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003ef0:	e9c1 7300 	strd	r7, r3, [r1]
 8003ef4:	ddf1      	ble.n	8003eda <_vfprintf_r+0x35a>
 8003ef6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ef8:	4631      	mov	r1, r6
 8003efa:	4620      	mov	r0, r4
 8003efc:	930c      	str	r3, [sp, #48]	; 0x30
 8003efe:	f004 f96d 	bl	80081dc <__sprint_r>
 8003f02:	2800      	cmp	r0, #0
 8003f04:	f040 843d 	bne.w	8004782 <_vfprintf_r+0xc02>
 8003f08:	3d10      	subs	r5, #16
 8003f0a:	2d10      	cmp	r5, #16
 8003f0c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003f10:	a92d      	add	r1, sp, #180	; 0xb4
 8003f12:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8003f14:	dce6      	bgt.n	8003ee4 <_vfprintf_r+0x364>
 8003f16:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8003f18:	465f      	mov	r7, fp
 8003f1a:	4604      	mov	r4, r0
 8003f1c:	468b      	mov	fp, r1
 8003f1e:	3201      	adds	r2, #1
 8003f20:	4bab      	ldr	r3, [pc, #684]	; (80041d0 <_vfprintf_r+0x650>)
 8003f22:	442c      	add	r4, r5
 8003f24:	2a07      	cmp	r2, #7
 8003f26:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f2a:	e9cb 3500 	strd	r3, r5, [fp]
 8003f2e:	f300 84ff 	bgt.w	8004930 <_vfprintf_r+0xdb0>
 8003f32:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003f36:	f10b 0b08 	add.w	fp, fp, #8
 8003f3a:	b172      	cbz	r2, 8003f5a <_vfprintf_r+0x3da>
 8003f3c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003f3e:	3201      	adds	r2, #1
 8003f40:	3401      	adds	r4, #1
 8003f42:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8003f46:	2101      	movs	r1, #1
 8003f48:	2a07      	cmp	r2, #7
 8003f4a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f4e:	e9cb 0100 	strd	r0, r1, [fp]
 8003f52:	f300 8418 	bgt.w	8004786 <_vfprintf_r+0xc06>
 8003f56:	f10b 0b08 	add.w	fp, fp, #8
 8003f5a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003f5c:	b16b      	cbz	r3, 8003f7a <_vfprintf_r+0x3fa>
 8003f5e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003f60:	3301      	adds	r3, #1
 8003f62:	3402      	adds	r4, #2
 8003f64:	a923      	add	r1, sp, #140	; 0x8c
 8003f66:	2202      	movs	r2, #2
 8003f68:	2b07      	cmp	r3, #7
 8003f6a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003f6e:	e9cb 1200 	strd	r1, r2, [fp]
 8003f72:	f300 8415 	bgt.w	80047a0 <_vfprintf_r+0xc20>
 8003f76:	f10b 0b08 	add.w	fp, fp, #8
 8003f7a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003f7c:	2b80      	cmp	r3, #128	; 0x80
 8003f7e:	f000 8331 	beq.w	80045e4 <_vfprintf_r+0xa64>
 8003f82:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f84:	eba9 0503 	sub.w	r5, r9, r3
 8003f88:	2d00      	cmp	r5, #0
 8003f8a:	dd37      	ble.n	8003ffc <_vfprintf_r+0x47c>
 8003f8c:	2d10      	cmp	r5, #16
 8003f8e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003f90:	4b90      	ldr	r3, [pc, #576]	; (80041d4 <_vfprintf_r+0x654>)
 8003f92:	dd28      	ble.n	8003fe6 <_vfprintf_r+0x466>
 8003f94:	4659      	mov	r1, fp
 8003f96:	4620      	mov	r0, r4
 8003f98:	46bb      	mov	fp, r7
 8003f9a:	f04f 0910 	mov.w	r9, #16
 8003f9e:	4637      	mov	r7, r6
 8003fa0:	461c      	mov	r4, r3
 8003fa2:	9e07      	ldr	r6, [sp, #28]
 8003fa4:	e004      	b.n	8003fb0 <_vfprintf_r+0x430>
 8003fa6:	3d10      	subs	r5, #16
 8003fa8:	2d10      	cmp	r5, #16
 8003faa:	f101 0108 	add.w	r1, r1, #8
 8003fae:	dd15      	ble.n	8003fdc <_vfprintf_r+0x45c>
 8003fb0:	3201      	adds	r2, #1
 8003fb2:	3010      	adds	r0, #16
 8003fb4:	2a07      	cmp	r2, #7
 8003fb6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003fba:	e9c1 4900 	strd	r4, r9, [r1]
 8003fbe:	ddf2      	ble.n	8003fa6 <_vfprintf_r+0x426>
 8003fc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fc2:	4631      	mov	r1, r6
 8003fc4:	9803      	ldr	r0, [sp, #12]
 8003fc6:	f004 f909 	bl	80081dc <__sprint_r>
 8003fca:	2800      	cmp	r0, #0
 8003fcc:	f040 83d9 	bne.w	8004782 <_vfprintf_r+0xc02>
 8003fd0:	3d10      	subs	r5, #16
 8003fd2:	2d10      	cmp	r5, #16
 8003fd4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003fd8:	a92d      	add	r1, sp, #180	; 0xb4
 8003fda:	dce9      	bgt.n	8003fb0 <_vfprintf_r+0x430>
 8003fdc:	463e      	mov	r6, r7
 8003fde:	4623      	mov	r3, r4
 8003fe0:	465f      	mov	r7, fp
 8003fe2:	4604      	mov	r4, r0
 8003fe4:	468b      	mov	fp, r1
 8003fe6:	3201      	adds	r2, #1
 8003fe8:	442c      	add	r4, r5
 8003fea:	2a07      	cmp	r2, #7
 8003fec:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ff0:	e9cb 3500 	strd	r3, r5, [fp]
 8003ff4:	f300 83ef 	bgt.w	80047d6 <_vfprintf_r+0xc56>
 8003ff8:	f10b 0b08 	add.w	fp, fp, #8
 8003ffc:	f418 7f80 	tst.w	r8, #256	; 0x100
 8004000:	f040 8280 	bne.w	8004504 <_vfprintf_r+0x984>
 8004004:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004006:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004008:	f8cb 7000 	str.w	r7, [fp]
 800400c:	3301      	adds	r3, #1
 800400e:	4414      	add	r4, r2
 8004010:	2b07      	cmp	r3, #7
 8004012:	942c      	str	r4, [sp, #176]	; 0xb0
 8004014:	f8cb 2004 	str.w	r2, [fp, #4]
 8004018:	932b      	str	r3, [sp, #172]	; 0xac
 800401a:	f300 8392 	bgt.w	8004742 <_vfprintf_r+0xbc2>
 800401e:	f10b 0b08 	add.w	fp, fp, #8
 8004022:	f018 0f04 	tst.w	r8, #4
 8004026:	d03b      	beq.n	80040a0 <_vfprintf_r+0x520>
 8004028:	9b06      	ldr	r3, [sp, #24]
 800402a:	9a04      	ldr	r2, [sp, #16]
 800402c:	1a9d      	subs	r5, r3, r2
 800402e:	2d00      	cmp	r5, #0
 8004030:	dd36      	ble.n	80040a0 <_vfprintf_r+0x520>
 8004032:	2d10      	cmp	r5, #16
 8004034:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004036:	dd21      	ble.n	800407c <_vfprintf_r+0x4fc>
 8004038:	2610      	movs	r6, #16
 800403a:	9f03      	ldr	r7, [sp, #12]
 800403c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8004040:	e004      	b.n	800404c <_vfprintf_r+0x4cc>
 8004042:	3d10      	subs	r5, #16
 8004044:	2d10      	cmp	r5, #16
 8004046:	f10b 0b08 	add.w	fp, fp, #8
 800404a:	dd17      	ble.n	800407c <_vfprintf_r+0x4fc>
 800404c:	3301      	adds	r3, #1
 800404e:	4a60      	ldr	r2, [pc, #384]	; (80041d0 <_vfprintf_r+0x650>)
 8004050:	3410      	adds	r4, #16
 8004052:	2b07      	cmp	r3, #7
 8004054:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004058:	e9cb 2600 	strd	r2, r6, [fp]
 800405c:	ddf1      	ble.n	8004042 <_vfprintf_r+0x4c2>
 800405e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004060:	4641      	mov	r1, r8
 8004062:	4638      	mov	r0, r7
 8004064:	f004 f8ba 	bl	80081dc <__sprint_r>
 8004068:	2800      	cmp	r0, #0
 800406a:	f040 856c 	bne.w	8004b46 <_vfprintf_r+0xfc6>
 800406e:	3d10      	subs	r5, #16
 8004070:	2d10      	cmp	r5, #16
 8004072:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8004076:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800407a:	dce7      	bgt.n	800404c <_vfprintf_r+0x4cc>
 800407c:	3301      	adds	r3, #1
 800407e:	4a54      	ldr	r2, [pc, #336]	; (80041d0 <_vfprintf_r+0x650>)
 8004080:	442c      	add	r4, r5
 8004082:	2b07      	cmp	r3, #7
 8004084:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004088:	e9cb 2500 	strd	r2, r5, [fp]
 800408c:	dd08      	ble.n	80040a0 <_vfprintf_r+0x520>
 800408e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004090:	9907      	ldr	r1, [sp, #28]
 8004092:	9803      	ldr	r0, [sp, #12]
 8004094:	f004 f8a2 	bl	80081dc <__sprint_r>
 8004098:	2800      	cmp	r0, #0
 800409a:	f040 82e9 	bne.w	8004670 <_vfprintf_r+0xaf0>
 800409e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80040a0:	9904      	ldr	r1, [sp, #16]
 80040a2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80040a6:	428a      	cmp	r2, r1
 80040a8:	bfac      	ite	ge
 80040aa:	189b      	addge	r3, r3, r2
 80040ac:	185b      	addlt	r3, r3, r1
 80040ae:	9305      	str	r3, [sp, #20]
 80040b0:	2c00      	cmp	r4, #0
 80040b2:	f040 82d5 	bne.w	8004660 <_vfprintf_r+0xae0>
 80040b6:	2300      	movs	r3, #0
 80040b8:	932b      	str	r3, [sp, #172]	; 0xac
 80040ba:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80040bc:	b11b      	cbz	r3, 80040c6 <_vfprintf_r+0x546>
 80040be:	990a      	ldr	r1, [sp, #40]	; 0x28
 80040c0:	9803      	ldr	r0, [sp, #12]
 80040c2:	f002 fc9d 	bl	8006a00 <_free_r>
 80040c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80040ca:	4657      	mov	r7, sl
 80040cc:	783b      	ldrb	r3, [r7, #0]
 80040ce:	2b00      	cmp	r3, #0
 80040d0:	f47f ada7 	bne.w	8003c22 <_vfprintf_r+0xa2>
 80040d4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80040d6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80040da:	2b00      	cmp	r3, #0
 80040dc:	f041 80e7 	bne.w	80052ae <_vfprintf_r+0x172e>
 80040e0:	2300      	movs	r3, #0
 80040e2:	932b      	str	r3, [sp, #172]	; 0xac
 80040e4:	e2cb      	b.n	800467e <_vfprintf_r+0xafe>
 80040e6:	4643      	mov	r3, r8
 80040e8:	069a      	lsls	r2, r3, #26
 80040ea:	f140 814e 	bpl.w	800438a <_vfprintf_r+0x80a>
 80040ee:	9c08      	ldr	r4, [sp, #32]
 80040f0:	3407      	adds	r4, #7
 80040f2:	f024 0207 	bic.w	r2, r4, #7
 80040f6:	f102 0108 	add.w	r1, r2, #8
 80040fa:	e9d2 4500 	ldrd	r4, r5, [r2]
 80040fe:	9108      	str	r1, [sp, #32]
 8004100:	2201      	movs	r2, #1
 8004102:	2100      	movs	r1, #0
 8004104:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8004108:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800410c:	a956      	add	r1, sp, #344	; 0x158
 800410e:	9104      	str	r1, [sp, #16]
 8004110:	f47f aea2 	bne.w	8003e58 <_vfprintf_r+0x2d8>
 8004114:	4698      	mov	r8, r3
 8004116:	2a01      	cmp	r2, #1
 8004118:	f000 8350 	beq.w	80047bc <_vfprintf_r+0xc3c>
 800411c:	2a02      	cmp	r2, #2
 800411e:	f000 831b 	beq.w	8004758 <_vfprintf_r+0xbd8>
 8004122:	a956      	add	r1, sp, #344	; 0x158
 8004124:	e000      	b.n	8004128 <_vfprintf_r+0x5a8>
 8004126:	4639      	mov	r1, r7
 8004128:	08e2      	lsrs	r2, r4, #3
 800412a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800412e:	08e8      	lsrs	r0, r5, #3
 8004130:	f004 0307 	and.w	r3, r4, #7
 8004134:	4605      	mov	r5, r0
 8004136:	4614      	mov	r4, r2
 8004138:	3330      	adds	r3, #48	; 0x30
 800413a:	ea54 0205 	orrs.w	r2, r4, r5
 800413e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8004142:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8004146:	d1ee      	bne.n	8004126 <_vfprintf_r+0x5a6>
 8004148:	f018 0f01 	tst.w	r8, #1
 800414c:	f000 8314 	beq.w	8004778 <_vfprintf_r+0xbf8>
 8004150:	2b30      	cmp	r3, #48	; 0x30
 8004152:	f000 8311 	beq.w	8004778 <_vfprintf_r+0xbf8>
 8004156:	9a04      	ldr	r2, [sp, #16]
 8004158:	3902      	subs	r1, #2
 800415a:	2330      	movs	r3, #48	; 0x30
 800415c:	1a52      	subs	r2, r2, r1
 800415e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8004162:	9209      	str	r2, [sp, #36]	; 0x24
 8004164:	460f      	mov	r7, r1
 8004166:	e68c      	b.n	8003e82 <_vfprintf_r+0x302>
 8004168:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800416c:	2200      	movs	r2, #0
 800416e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8004172:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8004176:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800417a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800417e:	2b09      	cmp	r3, #9
 8004180:	d9f5      	bls.n	800416e <_vfprintf_r+0x5ee>
 8004182:	9206      	str	r2, [sp, #24]
 8004184:	e57c      	b.n	8003c80 <_vfprintf_r+0x100>
 8004186:	4b14      	ldr	r3, [pc, #80]	; (80041d8 <_vfprintf_r+0x658>)
 8004188:	9317      	str	r3, [sp, #92]	; 0x5c
 800418a:	f018 0f20 	tst.w	r8, #32
 800418e:	f000 8114 	beq.w	80043ba <_vfprintf_r+0x83a>
 8004192:	9c08      	ldr	r4, [sp, #32]
 8004194:	3407      	adds	r4, #7
 8004196:	f024 0307 	bic.w	r3, r4, #7
 800419a:	e9d3 4500 	ldrd	r4, r5, [r3]
 800419e:	f103 0208 	add.w	r2, r3, #8
 80041a2:	9208      	str	r2, [sp, #32]
 80041a4:	f018 0f01 	tst.w	r8, #1
 80041a8:	d009      	beq.n	80041be <_vfprintf_r+0x63e>
 80041aa:	ea54 0305 	orrs.w	r3, r4, r5
 80041ae:	d006      	beq.n	80041be <_vfprintf_r+0x63e>
 80041b0:	2330      	movs	r3, #48	; 0x30
 80041b2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80041b6:	f048 0802 	orr.w	r8, r8, #2
 80041ba:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80041be:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80041c2:	2202      	movs	r2, #2
 80041c4:	e79d      	b.n	8004102 <_vfprintf_r+0x582>
 80041c6:	f048 0801 	orr.w	r8, r8, #1
 80041ca:	f89a 6000 	ldrb.w	r6, [sl]
 80041ce:	e555      	b.n	8003c7c <_vfprintf_r+0xfc>
 80041d0:	080088c4 	.word	0x080088c4
 80041d4:	080088d4 	.word	0x080088d4
 80041d8:	08008890 	.word	0x08008890
 80041dc:	9e03      	ldr	r6, [sp, #12]
 80041de:	4630      	mov	r0, r6
 80041e0:	f002 feaa 	bl	8006f38 <_localeconv_r>
 80041e4:	6843      	ldr	r3, [r0, #4]
 80041e6:	9318      	str	r3, [sp, #96]	; 0x60
 80041e8:	4618      	mov	r0, r3
 80041ea:	f7fc fa89 	bl	8000700 <strlen>
 80041ee:	901b      	str	r0, [sp, #108]	; 0x6c
 80041f0:	4604      	mov	r4, r0
 80041f2:	4630      	mov	r0, r6
 80041f4:	f002 fea0 	bl	8006f38 <_localeconv_r>
 80041f8:	6883      	ldr	r3, [r0, #8]
 80041fa:	931a      	str	r3, [sp, #104]	; 0x68
 80041fc:	2c00      	cmp	r4, #0
 80041fe:	f43f adb8 	beq.w	8003d72 <_vfprintf_r+0x1f2>
 8004202:	f89a 6000 	ldrb.w	r6, [sl]
 8004206:	2b00      	cmp	r3, #0
 8004208:	f43f ad38 	beq.w	8003c7c <_vfprintf_r+0xfc>
 800420c:	781b      	ldrb	r3, [r3, #0]
 800420e:	2b00      	cmp	r3, #0
 8004210:	f43f ad34 	beq.w	8003c7c <_vfprintf_r+0xfc>
 8004214:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8004218:	e530      	b.n	8003c7c <_vfprintf_r+0xfc>
 800421a:	9b08      	ldr	r3, [sp, #32]
 800421c:	f89a 6000 	ldrb.w	r6, [sl]
 8004220:	681a      	ldr	r2, [r3, #0]
 8004222:	9206      	str	r2, [sp, #24]
 8004224:	2a00      	cmp	r2, #0
 8004226:	f103 0304 	add.w	r3, r3, #4
 800422a:	f2c0 8697 	blt.w	8004f5c <_vfprintf_r+0x13dc>
 800422e:	9308      	str	r3, [sp, #32]
 8004230:	e524      	b.n	8003c7c <_vfprintf_r+0xfc>
 8004232:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8004236:	f89a 6000 	ldrb.w	r6, [sl]
 800423a:	e51f      	b.n	8003c7c <_vfprintf_r+0xfc>
 800423c:	f89a 6000 	ldrb.w	r6, [sl]
 8004240:	f048 0804 	orr.w	r8, r8, #4
 8004244:	e51a      	b.n	8003c7c <_vfprintf_r+0xfc>
 8004246:	f89a 6000 	ldrb.w	r6, [sl]
 800424a:	2e2a      	cmp	r6, #42	; 0x2a
 800424c:	f10a 0201 	add.w	r2, sl, #1
 8004250:	f001 81b0 	beq.w	80055b4 <_vfprintf_r+0x1a34>
 8004254:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004258:	2b09      	cmp	r3, #9
 800425a:	4692      	mov	sl, r2
 800425c:	f04f 0900 	mov.w	r9, #0
 8004260:	f63f ad0e 	bhi.w	8003c80 <_vfprintf_r+0x100>
 8004264:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8004268:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 800426c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8004270:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004274:	2b09      	cmp	r3, #9
 8004276:	d9f5      	bls.n	8004264 <_vfprintf_r+0x6e4>
 8004278:	e502      	b.n	8003c80 <_vfprintf_r+0x100>
 800427a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 800427e:	f89a 6000 	ldrb.w	r6, [sl]
 8004282:	e4fb      	b.n	8003c7c <_vfprintf_r+0xfc>
 8004284:	9c08      	ldr	r4, [sp, #32]
 8004286:	3407      	adds	r4, #7
 8004288:	f024 0407 	bic.w	r4, r4, #7
 800428c:	ed94 7b00 	vldr	d7, [r4]
 8004290:	ec52 1b17 	vmov	r1, r2, d7
 8004294:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004298:	931d      	str	r3, [sp, #116]	; 0x74
 800429a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 800429e:	3408      	adds	r4, #8
 80042a0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80042a4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80042a8:	4bba      	ldr	r3, [pc, #744]	; (8004594 <_vfprintf_r+0xa14>)
 80042aa:	9408      	str	r4, [sp, #32]
 80042ac:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80042b0:	f7fc ff3c 	bl	800112c <__aeabi_dcmpun>
 80042b4:	2800      	cmp	r0, #0
 80042b6:	f040 846f 	bne.w	8004b98 <_vfprintf_r+0x1018>
 80042ba:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80042be:	4bb5      	ldr	r3, [pc, #724]	; (8004594 <_vfprintf_r+0xa14>)
 80042c0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80042c4:	f7fc ff14 	bl	80010f0 <__aeabi_dcmple>
 80042c8:	2800      	cmp	r0, #0
 80042ca:	f040 8465 	bne.w	8004b98 <_vfprintf_r+0x1018>
 80042ce:	2200      	movs	r2, #0
 80042d0:	2300      	movs	r3, #0
 80042d2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80042d6:	f7fc ff01 	bl	80010dc <__aeabi_dcmplt>
 80042da:	2800      	cmp	r0, #0
 80042dc:	f040 855b 	bne.w	8004d96 <_vfprintf_r+0x1216>
 80042e0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80042e4:	4fac      	ldr	r7, [pc, #688]	; (8004598 <_vfprintf_r+0xa18>)
 80042e6:	4bad      	ldr	r3, [pc, #692]	; (800459c <_vfprintf_r+0xa1c>)
 80042e8:	2000      	movs	r0, #0
 80042ea:	2103      	movs	r1, #3
 80042ec:	9104      	str	r1, [sp, #16]
 80042ee:	900a      	str	r0, [sp, #40]	; 0x28
 80042f0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80042f4:	2e47      	cmp	r6, #71	; 0x47
 80042f6:	bfd8      	it	le
 80042f8:	461f      	movle	r7, r3
 80042fa:	9109      	str	r1, [sp, #36]	; 0x24
 80042fc:	4681      	mov	r9, r0
 80042fe:	900f      	str	r0, [sp, #60]	; 0x3c
 8004300:	9014      	str	r0, [sp, #80]	; 0x50
 8004302:	9011      	str	r0, [sp, #68]	; 0x44
 8004304:	e5c9      	b.n	8003e9a <_vfprintf_r+0x31a>
 8004306:	9808      	ldr	r0, [sp, #32]
 8004308:	2300      	movs	r3, #0
 800430a:	6801      	ldr	r1, [r0, #0]
 800430c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8004310:	461a      	mov	r2, r3
 8004312:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8004316:	2301      	movs	r3, #1
 8004318:	1d01      	adds	r1, r0, #4
 800431a:	9304      	str	r3, [sp, #16]
 800431c:	920a      	str	r2, [sp, #40]	; 0x28
 800431e:	4691      	mov	r9, r2
 8004320:	920f      	str	r2, [sp, #60]	; 0x3c
 8004322:	9214      	str	r2, [sp, #80]	; 0x50
 8004324:	9211      	str	r2, [sp, #68]	; 0x44
 8004326:	e9cd 1308 	strd	r1, r3, [sp, #32]
 800432a:	af3d      	add	r7, sp, #244	; 0xf4
 800432c:	e5b9      	b.n	8003ea2 <_vfprintf_r+0x322>
 800432e:	9b08      	ldr	r3, [sp, #32]
 8004330:	681f      	ldr	r7, [r3, #0]
 8004332:	2500      	movs	r5, #0
 8004334:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8004338:	1d1c      	adds	r4, r3, #4
 800433a:	2f00      	cmp	r7, #0
 800433c:	f000 8639 	beq.w	8004fb2 <_vfprintf_r+0x1432>
 8004340:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004344:	f000 8711 	beq.w	800516a <_vfprintf_r+0x15ea>
 8004348:	464a      	mov	r2, r9
 800434a:	4629      	mov	r1, r5
 800434c:	4638      	mov	r0, r7
 800434e:	f7fc fa47 	bl	80007e0 <memchr>
 8004352:	900a      	str	r0, [sp, #40]	; 0x28
 8004354:	2800      	cmp	r0, #0
 8004356:	f000 85e7 	beq.w	8004f28 <_vfprintf_r+0x13a8>
 800435a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800435c:	1bdb      	subs	r3, r3, r7
 800435e:	9309      	str	r3, [sp, #36]	; 0x24
 8004360:	46a9      	mov	r9, r5
 8004362:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004366:	9408      	str	r4, [sp, #32]
 8004368:	9304      	str	r3, [sp, #16]
 800436a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800436e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8004372:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8004376:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 800437a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800437e:	e58c      	b.n	8003e9a <_vfprintf_r+0x31a>
 8004380:	f048 0310 	orr.w	r3, r8, #16
 8004384:	069a      	lsls	r2, r3, #26
 8004386:	f53f aeb2 	bmi.w	80040ee <_vfprintf_r+0x56e>
 800438a:	9a08      	ldr	r2, [sp, #32]
 800438c:	06df      	lsls	r7, r3, #27
 800438e:	f102 0104 	add.w	r1, r2, #4
 8004392:	f100 837e 	bmi.w	8004a92 <_vfprintf_r+0xf12>
 8004396:	065d      	lsls	r5, r3, #25
 8004398:	9a08      	ldr	r2, [sp, #32]
 800439a:	f100 84e4 	bmi.w	8004d66 <_vfprintf_r+0x11e6>
 800439e:	059c      	lsls	r4, r3, #22
 80043a0:	f140 8377 	bpl.w	8004a92 <_vfprintf_r+0xf12>
 80043a4:	7814      	ldrb	r4, [r2, #0]
 80043a6:	9108      	str	r1, [sp, #32]
 80043a8:	2500      	movs	r5, #0
 80043aa:	2201      	movs	r2, #1
 80043ac:	e6a9      	b.n	8004102 <_vfprintf_r+0x582>
 80043ae:	4b7c      	ldr	r3, [pc, #496]	; (80045a0 <_vfprintf_r+0xa20>)
 80043b0:	9317      	str	r3, [sp, #92]	; 0x5c
 80043b2:	f018 0f20 	tst.w	r8, #32
 80043b6:	f47f aeec 	bne.w	8004192 <_vfprintf_r+0x612>
 80043ba:	9a08      	ldr	r2, [sp, #32]
 80043bc:	f018 0f10 	tst.w	r8, #16
 80043c0:	f102 0304 	add.w	r3, r2, #4
 80043c4:	f040 8354 	bne.w	8004a70 <_vfprintf_r+0xef0>
 80043c8:	f018 0f40 	tst.w	r8, #64	; 0x40
 80043cc:	9a08      	ldr	r2, [sp, #32]
 80043ce:	f040 84d0 	bne.w	8004d72 <_vfprintf_r+0x11f2>
 80043d2:	f418 7f00 	tst.w	r8, #512	; 0x200
 80043d6:	f000 834b 	beq.w	8004a70 <_vfprintf_r+0xef0>
 80043da:	7814      	ldrb	r4, [r2, #0]
 80043dc:	9308      	str	r3, [sp, #32]
 80043de:	2500      	movs	r5, #0
 80043e0:	e6e0      	b.n	80041a4 <_vfprintf_r+0x624>
 80043e2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80043e6:	f89a 6000 	ldrb.w	r6, [sl]
 80043ea:	2b00      	cmp	r3, #0
 80043ec:	f47f ac46 	bne.w	8003c7c <_vfprintf_r+0xfc>
 80043f0:	2320      	movs	r3, #32
 80043f2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80043f6:	e441      	b.n	8003c7c <_vfprintf_r+0xfc>
 80043f8:	f89a 6000 	ldrb.w	r6, [sl]
 80043fc:	2e6c      	cmp	r6, #108	; 0x6c
 80043fe:	bf03      	ittte	eq
 8004400:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8004404:	f048 0820 	orreq.w	r8, r8, #32
 8004408:	f10a 0a01 	addeq.w	sl, sl, #1
 800440c:	f048 0810 	orrne.w	r8, r8, #16
 8004410:	e434      	b.n	8003c7c <_vfprintf_r+0xfc>
 8004412:	9a08      	ldr	r2, [sp, #32]
 8004414:	f018 0f20 	tst.w	r8, #32
 8004418:	f852 3b04 	ldr.w	r3, [r2], #4
 800441c:	9208      	str	r2, [sp, #32]
 800441e:	f000 83a1 	beq.w	8004b64 <_vfprintf_r+0xfe4>
 8004422:	9a05      	ldr	r2, [sp, #20]
 8004424:	4610      	mov	r0, r2
 8004426:	17d1      	asrs	r1, r2, #31
 8004428:	e9c3 0100 	strd	r0, r1, [r3]
 800442c:	4657      	mov	r7, sl
 800442e:	e64d      	b.n	80040cc <_vfprintf_r+0x54c>
 8004430:	f89a 6000 	ldrb.w	r6, [sl]
 8004434:	2e68      	cmp	r6, #104	; 0x68
 8004436:	bf03      	ittte	eq
 8004438:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800443c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8004440:	f10a 0a01 	addeq.w	sl, sl, #1
 8004444:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8004448:	e418      	b.n	8003c7c <_vfprintf_r+0xfc>
 800444a:	9908      	ldr	r1, [sp, #32]
 800444c:	4b55      	ldr	r3, [pc, #340]	; (80045a4 <_vfprintf_r+0xa24>)
 800444e:	680c      	ldr	r4, [r1, #0]
 8004450:	9317      	str	r3, [sp, #92]	; 0x5c
 8004452:	f647 0230 	movw	r2, #30768	; 0x7830
 8004456:	3104      	adds	r1, #4
 8004458:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 800445c:	f048 0302 	orr.w	r3, r8, #2
 8004460:	9108      	str	r1, [sp, #32]
 8004462:	2500      	movs	r5, #0
 8004464:	2202      	movs	r2, #2
 8004466:	2678      	movs	r6, #120	; 0x78
 8004468:	e64b      	b.n	8004102 <_vfprintf_r+0x582>
 800446a:	f048 0808 	orr.w	r8, r8, #8
 800446e:	f89a 6000 	ldrb.w	r6, [sl]
 8004472:	e403      	b.n	8003c7c <_vfprintf_r+0xfc>
 8004474:	f048 0310 	orr.w	r3, r8, #16
 8004478:	069f      	lsls	r7, r3, #26
 800447a:	f53f acd1 	bmi.w	8003e20 <_vfprintf_r+0x2a0>
 800447e:	9908      	ldr	r1, [sp, #32]
 8004480:	06dd      	lsls	r5, r3, #27
 8004482:	f101 0204 	add.w	r2, r1, #4
 8004486:	f100 82fd 	bmi.w	8004a84 <_vfprintf_r+0xf04>
 800448a:	065c      	lsls	r4, r3, #25
 800448c:	9908      	ldr	r1, [sp, #32]
 800448e:	f100 8475 	bmi.w	8004d7c <_vfprintf_r+0x11fc>
 8004492:	0598      	lsls	r0, r3, #22
 8004494:	f140 82f6 	bpl.w	8004a84 <_vfprintf_r+0xf04>
 8004498:	f991 4000 	ldrsb.w	r4, [r1]
 800449c:	9208      	str	r2, [sp, #32]
 800449e:	17e5      	asrs	r5, r4, #31
 80044a0:	4620      	mov	r0, r4
 80044a2:	4629      	mov	r1, r5
 80044a4:	e4c7      	b.n	8003e36 <_vfprintf_r+0x2b6>
 80044a6:	9a08      	ldr	r2, [sp, #32]
 80044a8:	f018 0f10 	tst.w	r8, #16
 80044ac:	f102 0304 	add.w	r3, r2, #4
 80044b0:	f040 82e3 	bne.w	8004a7a <_vfprintf_r+0xefa>
 80044b4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80044b8:	9a08      	ldr	r2, [sp, #32]
 80044ba:	f040 8467 	bne.w	8004d8c <_vfprintf_r+0x120c>
 80044be:	f418 7f00 	tst.w	r8, #512	; 0x200
 80044c2:	f000 82da 	beq.w	8004a7a <_vfprintf_r+0xefa>
 80044c6:	7814      	ldrb	r4, [r2, #0]
 80044c8:	9308      	str	r3, [sp, #32]
 80044ca:	2500      	movs	r5, #0
 80044cc:	e488      	b.n	8003de0 <_vfprintf_r+0x260>
 80044ce:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80044d2:	f002 fd45 	bl	8006f60 <__retarget_lock_release_recursive>
 80044d6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80044da:	9305      	str	r3, [sp, #20]
 80044dc:	e443      	b.n	8003d66 <_vfprintf_r+0x1e6>
 80044de:	2e00      	cmp	r6, #0
 80044e0:	f43f adf8 	beq.w	80040d4 <_vfprintf_r+0x554>
 80044e4:	2300      	movs	r3, #0
 80044e6:	2101      	movs	r1, #1
 80044e8:	461a      	mov	r2, r3
 80044ea:	9104      	str	r1, [sp, #16]
 80044ec:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80044f0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80044f4:	930a      	str	r3, [sp, #40]	; 0x28
 80044f6:	4699      	mov	r9, r3
 80044f8:	930f      	str	r3, [sp, #60]	; 0x3c
 80044fa:	9314      	str	r3, [sp, #80]	; 0x50
 80044fc:	9311      	str	r3, [sp, #68]	; 0x44
 80044fe:	9109      	str	r1, [sp, #36]	; 0x24
 8004500:	af3d      	add	r7, sp, #244	; 0xf4
 8004502:	e4ce      	b.n	8003ea2 <_vfprintf_r+0x322>
 8004504:	2e65      	cmp	r6, #101	; 0x65
 8004506:	f340 80ca 	ble.w	800469e <_vfprintf_r+0xb1e>
 800450a:	2200      	movs	r2, #0
 800450c:	2300      	movs	r3, #0
 800450e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004512:	f7fc fdd9 	bl	80010c8 <__aeabi_dcmpeq>
 8004516:	2800      	cmp	r0, #0
 8004518:	f000 8169 	beq.w	80047ee <_vfprintf_r+0xc6e>
 800451c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800451e:	4a22      	ldr	r2, [pc, #136]	; (80045a8 <_vfprintf_r+0xa28>)
 8004520:	f8cb 2000 	str.w	r2, [fp]
 8004524:	3301      	adds	r3, #1
 8004526:	3401      	adds	r4, #1
 8004528:	2201      	movs	r2, #1
 800452a:	2b07      	cmp	r3, #7
 800452c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004530:	f8cb 2004 	str.w	r2, [fp, #4]
 8004534:	f300 8406 	bgt.w	8004d44 <_vfprintf_r+0x11c4>
 8004538:	f10b 0b08 	add.w	fp, fp, #8
 800453c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800453e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004540:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004542:	4293      	cmp	r3, r2
 8004544:	db03      	blt.n	800454e <_vfprintf_r+0x9ce>
 8004546:	f018 0f01 	tst.w	r8, #1
 800454a:	f43f ad6a 	beq.w	8004022 <_vfprintf_r+0x4a2>
 800454e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004550:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8004552:	f8cb 2000 	str.w	r2, [fp]
 8004556:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004558:	f8cb 2004 	str.w	r2, [fp, #4]
 800455c:	3301      	adds	r3, #1
 800455e:	4414      	add	r4, r2
 8004560:	2b07      	cmp	r3, #7
 8004562:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004566:	f300 8517 	bgt.w	8004f98 <_vfprintf_r+0x1418>
 800456a:	f10b 0b08 	add.w	fp, fp, #8
 800456e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004570:	1e5d      	subs	r5, r3, #1
 8004572:	2d00      	cmp	r5, #0
 8004574:	f77f ad55 	ble.w	8004022 <_vfprintf_r+0x4a2>
 8004578:	2d10      	cmp	r5, #16
 800457a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800457c:	4b0b      	ldr	r3, [pc, #44]	; (80045ac <_vfprintf_r+0xa2c>)
 800457e:	f340 82e7 	ble.w	8004b50 <_vfprintf_r+0xfd0>
 8004582:	4619      	mov	r1, r3
 8004584:	2610      	movs	r6, #16
 8004586:	4623      	mov	r3, r4
 8004588:	9f03      	ldr	r7, [sp, #12]
 800458a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800458e:	460c      	mov	r4, r1
 8004590:	e014      	b.n	80045bc <_vfprintf_r+0xa3c>
 8004592:	bf00      	nop
 8004594:	7fefffff 	.word	0x7fefffff
 8004598:	08008884 	.word	0x08008884
 800459c:	08008880 	.word	0x08008880
 80045a0:	080088a4 	.word	0x080088a4
 80045a4:	08008890 	.word	0x08008890
 80045a8:	080088c0 	.word	0x080088c0
 80045ac:	080088d4 	.word	0x080088d4
 80045b0:	f10b 0b08 	add.w	fp, fp, #8
 80045b4:	3d10      	subs	r5, #16
 80045b6:	2d10      	cmp	r5, #16
 80045b8:	f340 82c7 	ble.w	8004b4a <_vfprintf_r+0xfca>
 80045bc:	3201      	adds	r2, #1
 80045be:	3310      	adds	r3, #16
 80045c0:	2a07      	cmp	r2, #7
 80045c2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80045c6:	e9cb 4600 	strd	r4, r6, [fp]
 80045ca:	ddf1      	ble.n	80045b0 <_vfprintf_r+0xa30>
 80045cc:	aa2a      	add	r2, sp, #168	; 0xa8
 80045ce:	4649      	mov	r1, r9
 80045d0:	4638      	mov	r0, r7
 80045d2:	f003 fe03 	bl	80081dc <__sprint_r>
 80045d6:	2800      	cmp	r0, #0
 80045d8:	d14c      	bne.n	8004674 <_vfprintf_r+0xaf4>
 80045da:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80045de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80045e2:	e7e7      	b.n	80045b4 <_vfprintf_r+0xa34>
 80045e4:	9b06      	ldr	r3, [sp, #24]
 80045e6:	9a04      	ldr	r2, [sp, #16]
 80045e8:	1a9d      	subs	r5, r3, r2
 80045ea:	2d00      	cmp	r5, #0
 80045ec:	f77f acc9 	ble.w	8003f82 <_vfprintf_r+0x402>
 80045f0:	2d10      	cmp	r5, #16
 80045f2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80045f4:	4bbc      	ldr	r3, [pc, #752]	; (80048e8 <_vfprintf_r+0xd68>)
 80045f6:	dd27      	ble.n	8004648 <_vfprintf_r+0xac8>
 80045f8:	4659      	mov	r1, fp
 80045fa:	4620      	mov	r0, r4
 80045fc:	46bb      	mov	fp, r7
 80045fe:	461c      	mov	r4, r3
 8004600:	4637      	mov	r7, r6
 8004602:	9e07      	ldr	r6, [sp, #28]
 8004604:	e004      	b.n	8004610 <_vfprintf_r+0xa90>
 8004606:	3d10      	subs	r5, #16
 8004608:	2d10      	cmp	r5, #16
 800460a:	f101 0108 	add.w	r1, r1, #8
 800460e:	dd16      	ble.n	800463e <_vfprintf_r+0xabe>
 8004610:	3201      	adds	r2, #1
 8004612:	3010      	adds	r0, #16
 8004614:	2310      	movs	r3, #16
 8004616:	2a07      	cmp	r2, #7
 8004618:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800461c:	600c      	str	r4, [r1, #0]
 800461e:	604b      	str	r3, [r1, #4]
 8004620:	ddf1      	ble.n	8004606 <_vfprintf_r+0xa86>
 8004622:	aa2a      	add	r2, sp, #168	; 0xa8
 8004624:	4631      	mov	r1, r6
 8004626:	9803      	ldr	r0, [sp, #12]
 8004628:	f003 fdd8 	bl	80081dc <__sprint_r>
 800462c:	2800      	cmp	r0, #0
 800462e:	f040 80a8 	bne.w	8004782 <_vfprintf_r+0xc02>
 8004632:	3d10      	subs	r5, #16
 8004634:	2d10      	cmp	r5, #16
 8004636:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800463a:	a92d      	add	r1, sp, #180	; 0xb4
 800463c:	dce8      	bgt.n	8004610 <_vfprintf_r+0xa90>
 800463e:	463e      	mov	r6, r7
 8004640:	4623      	mov	r3, r4
 8004642:	465f      	mov	r7, fp
 8004644:	4604      	mov	r4, r0
 8004646:	468b      	mov	fp, r1
 8004648:	3201      	adds	r2, #1
 800464a:	442c      	add	r4, r5
 800464c:	2a07      	cmp	r2, #7
 800464e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004652:	e9cb 3500 	strd	r3, r5, [fp]
 8004656:	f300 8292 	bgt.w	8004b7e <_vfprintf_r+0xffe>
 800465a:	f10b 0b08 	add.w	fp, fp, #8
 800465e:	e490      	b.n	8003f82 <_vfprintf_r+0x402>
 8004660:	aa2a      	add	r2, sp, #168	; 0xa8
 8004662:	9907      	ldr	r1, [sp, #28]
 8004664:	9803      	ldr	r0, [sp, #12]
 8004666:	f003 fdb9 	bl	80081dc <__sprint_r>
 800466a:	2800      	cmp	r0, #0
 800466c:	f43f ad23 	beq.w	80040b6 <_vfprintf_r+0x536>
 8004670:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004674:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004676:	b111      	cbz	r1, 800467e <_vfprintf_r+0xafe>
 8004678:	9803      	ldr	r0, [sp, #12]
 800467a:	f002 f9c1 	bl	8006a00 <_free_r>
 800467e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8004682:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004686:	07d0      	lsls	r0, r2, #31
 8004688:	d402      	bmi.n	8004690 <_vfprintf_r+0xb10>
 800468a:	0599      	lsls	r1, r3, #22
 800468c:	f140 81d0 	bpl.w	8004a30 <_vfprintf_r+0xeb0>
 8004690:	065a      	lsls	r2, r3, #25
 8004692:	f53f ab65 	bmi.w	8003d60 <_vfprintf_r+0x1e0>
 8004696:	9805      	ldr	r0, [sp, #20]
 8004698:	b057      	add	sp, #348	; 0x15c
 800469a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800469e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80046a0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80046a2:	2a01      	cmp	r2, #1
 80046a4:	f104 0401 	add.w	r4, r4, #1
 80046a8:	f103 0501 	add.w	r5, r3, #1
 80046ac:	f10b 0608 	add.w	r6, fp, #8
 80046b0:	f340 811c 	ble.w	80048ec <_vfprintf_r+0xd6c>
 80046b4:	2301      	movs	r3, #1
 80046b6:	2d07      	cmp	r5, #7
 80046b8:	f8cb 7000 	str.w	r7, [fp]
 80046bc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80046c0:	f8cb 3004 	str.w	r3, [fp, #4]
 80046c4:	f300 81bb 	bgt.w	8004a3e <_vfprintf_r+0xebe>
 80046c8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80046ca:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80046cc:	1c69      	adds	r1, r5, #1
 80046ce:	441c      	add	r4, r3
 80046d0:	2907      	cmp	r1, #7
 80046d2:	910b      	str	r1, [sp, #44]	; 0x2c
 80046d4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80046d8:	e9c6 2300 	strd	r2, r3, [r6]
 80046dc:	f300 81bb 	bgt.w	8004a56 <_vfprintf_r+0xed6>
 80046e0:	3608      	adds	r6, #8
 80046e2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80046e4:	1c53      	adds	r3, r2, #1
 80046e6:	461d      	mov	r5, r3
 80046e8:	9509      	str	r5, [sp, #36]	; 0x24
 80046ea:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80046ec:	930e      	str	r3, [sp, #56]	; 0x38
 80046ee:	2200      	movs	r2, #0
 80046f0:	2300      	movs	r3, #0
 80046f2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80046f6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80046fa:	f106 0b08 	add.w	fp, r6, #8
 80046fe:	f7fc fce3 	bl	80010c8 <__aeabi_dcmpeq>
 8004702:	2800      	cmp	r0, #0
 8004704:	f040 80c2 	bne.w	800488c <_vfprintf_r+0xd0c>
 8004708:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800470a:	f8c6 9004 	str.w	r9, [r6, #4]
 800470e:	3701      	adds	r7, #1
 8004710:	444c      	add	r4, r9
 8004712:	2d07      	cmp	r5, #7
 8004714:	6037      	str	r7, [r6, #0]
 8004716:	942c      	str	r4, [sp, #176]	; 0xb0
 8004718:	952b      	str	r5, [sp, #172]	; 0xac
 800471a:	f300 80f9 	bgt.w	8004910 <_vfprintf_r+0xd90>
 800471e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004720:	f106 0310 	add.w	r3, r6, #16
 8004724:	3202      	adds	r2, #2
 8004726:	465e      	mov	r6, fp
 8004728:	9209      	str	r2, [sp, #36]	; 0x24
 800472a:	469b      	mov	fp, r3
 800472c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800472e:	6072      	str	r2, [r6, #4]
 8004730:	4414      	add	r4, r2
 8004732:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004734:	942c      	str	r4, [sp, #176]	; 0xb0
 8004736:	ab26      	add	r3, sp, #152	; 0x98
 8004738:	2a07      	cmp	r2, #7
 800473a:	922b      	str	r2, [sp, #172]	; 0xac
 800473c:	6033      	str	r3, [r6, #0]
 800473e:	f77f ac70 	ble.w	8004022 <_vfprintf_r+0x4a2>
 8004742:	aa2a      	add	r2, sp, #168	; 0xa8
 8004744:	9907      	ldr	r1, [sp, #28]
 8004746:	9803      	ldr	r0, [sp, #12]
 8004748:	f003 fd48 	bl	80081dc <__sprint_r>
 800474c:	2800      	cmp	r0, #0
 800474e:	d18f      	bne.n	8004670 <_vfprintf_r+0xaf0>
 8004750:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004752:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004756:	e464      	b.n	8004022 <_vfprintf_r+0x4a2>
 8004758:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800475a:	af56      	add	r7, sp, #344	; 0x158
 800475c:	0923      	lsrs	r3, r4, #4
 800475e:	f004 010f 	and.w	r1, r4, #15
 8004762:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8004766:	092a      	lsrs	r2, r5, #4
 8004768:	461c      	mov	r4, r3
 800476a:	4615      	mov	r5, r2
 800476c:	5c43      	ldrb	r3, [r0, r1]
 800476e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8004772:	ea54 0305 	orrs.w	r3, r4, r5
 8004776:	d1f1      	bne.n	800475c <_vfprintf_r+0xbdc>
 8004778:	9b04      	ldr	r3, [sp, #16]
 800477a:	1bdb      	subs	r3, r3, r7
 800477c:	9309      	str	r3, [sp, #36]	; 0x24
 800477e:	f7ff bb80 	b.w	8003e82 <_vfprintf_r+0x302>
 8004782:	46b1      	mov	r9, r6
 8004784:	e776      	b.n	8004674 <_vfprintf_r+0xaf4>
 8004786:	aa2a      	add	r2, sp, #168	; 0xa8
 8004788:	9907      	ldr	r1, [sp, #28]
 800478a:	9803      	ldr	r0, [sp, #12]
 800478c:	f003 fd26 	bl	80081dc <__sprint_r>
 8004790:	2800      	cmp	r0, #0
 8004792:	f47f af6d 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004796:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004798:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800479c:	f7ff bbdd 	b.w	8003f5a <_vfprintf_r+0x3da>
 80047a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80047a2:	9907      	ldr	r1, [sp, #28]
 80047a4:	9803      	ldr	r0, [sp, #12]
 80047a6:	f003 fd19 	bl	80081dc <__sprint_r>
 80047aa:	2800      	cmp	r0, #0
 80047ac:	f47f af60 	bne.w	8004670 <_vfprintf_r+0xaf0>
 80047b0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80047b2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80047b6:	f7ff bbe0 	b.w	8003f7a <_vfprintf_r+0x3fa>
 80047ba:	4698      	mov	r8, r3
 80047bc:	2d00      	cmp	r5, #0
 80047be:	bf08      	it	eq
 80047c0:	2c0a      	cmpeq	r4, #10
 80047c2:	f080 8170 	bcs.w	8004aa6 <_vfprintf_r+0xf26>
 80047c6:	af56      	add	r7, sp, #344	; 0x158
 80047c8:	3430      	adds	r4, #48	; 0x30
 80047ca:	2301      	movs	r3, #1
 80047cc:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80047d0:	9309      	str	r3, [sp, #36]	; 0x24
 80047d2:	f7ff bb56 	b.w	8003e82 <_vfprintf_r+0x302>
 80047d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80047d8:	9907      	ldr	r1, [sp, #28]
 80047da:	9803      	ldr	r0, [sp, #12]
 80047dc:	f003 fcfe 	bl	80081dc <__sprint_r>
 80047e0:	2800      	cmp	r0, #0
 80047e2:	f47f af45 	bne.w	8004670 <_vfprintf_r+0xaf0>
 80047e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80047e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80047ec:	e406      	b.n	8003ffc <_vfprintf_r+0x47c>
 80047ee:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80047f0:	2b00      	cmp	r3, #0
 80047f2:	f340 8273 	ble.w	8004cdc <_vfprintf_r+0x115c>
 80047f6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80047fa:	4293      	cmp	r3, r2
 80047fc:	bfa8      	it	ge
 80047fe:	4613      	movge	r3, r2
 8004800:	2b00      	cmp	r3, #0
 8004802:	461d      	mov	r5, r3
 8004804:	dd0d      	ble.n	8004822 <_vfprintf_r+0xca2>
 8004806:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004808:	f8cb 7000 	str.w	r7, [fp]
 800480c:	3301      	adds	r3, #1
 800480e:	442c      	add	r4, r5
 8004810:	2b07      	cmp	r3, #7
 8004812:	942c      	str	r4, [sp, #176]	; 0xb0
 8004814:	f8cb 5004 	str.w	r5, [fp, #4]
 8004818:	932b      	str	r3, [sp, #172]	; 0xac
 800481a:	f300 82c1 	bgt.w	8004da0 <_vfprintf_r+0x1220>
 800481e:	f10b 0b08 	add.w	fp, fp, #8
 8004822:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004824:	2d00      	cmp	r5, #0
 8004826:	bfa8      	it	ge
 8004828:	1b5b      	subge	r3, r3, r5
 800482a:	2b00      	cmp	r3, #0
 800482c:	461d      	mov	r5, r3
 800482e:	f340 8099 	ble.w	8004964 <_vfprintf_r+0xde4>
 8004832:	2d10      	cmp	r5, #16
 8004834:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004836:	4b2c      	ldr	r3, [pc, #176]	; (80048e8 <_vfprintf_r+0xd68>)
 8004838:	f340 83db 	ble.w	8004ff2 <_vfprintf_r+0x1472>
 800483c:	4618      	mov	r0, r3
 800483e:	4621      	mov	r1, r4
 8004840:	465b      	mov	r3, fp
 8004842:	2610      	movs	r6, #16
 8004844:	46bb      	mov	fp, r7
 8004846:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800484a:	9c07      	ldr	r4, [sp, #28]
 800484c:	4607      	mov	r7, r0
 800484e:	e004      	b.n	800485a <_vfprintf_r+0xcda>
 8004850:	3308      	adds	r3, #8
 8004852:	3d10      	subs	r5, #16
 8004854:	2d10      	cmp	r5, #16
 8004856:	f340 83c7 	ble.w	8004fe8 <_vfprintf_r+0x1468>
 800485a:	3201      	adds	r2, #1
 800485c:	3110      	adds	r1, #16
 800485e:	2a07      	cmp	r2, #7
 8004860:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8004864:	e9c3 7600 	strd	r7, r6, [r3]
 8004868:	ddf2      	ble.n	8004850 <_vfprintf_r+0xcd0>
 800486a:	aa2a      	add	r2, sp, #168	; 0xa8
 800486c:	4621      	mov	r1, r4
 800486e:	4648      	mov	r0, r9
 8004870:	f003 fcb4 	bl	80081dc <__sprint_r>
 8004874:	2800      	cmp	r0, #0
 8004876:	f040 84a5 	bne.w	80051c4 <_vfprintf_r+0x1644>
 800487a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800487e:	ab2d      	add	r3, sp, #180	; 0xb4
 8004880:	e7e7      	b.n	8004852 <_vfprintf_r+0xcd2>
 8004882:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8004886:	af56      	add	r7, sp, #344	; 0x158
 8004888:	f7ff bafb 	b.w	8003e82 <_vfprintf_r+0x302>
 800488c:	f1b9 0f00 	cmp.w	r9, #0
 8004890:	f77f af4c 	ble.w	800472c <_vfprintf_r+0xbac>
 8004894:	f1b9 0f10 	cmp.w	r9, #16
 8004898:	4b13      	ldr	r3, [pc, #76]	; (80048e8 <_vfprintf_r+0xd68>)
 800489a:	f340 8659 	ble.w	8005550 <_vfprintf_r+0x19d0>
 800489e:	4619      	mov	r1, r3
 80048a0:	4622      	mov	r2, r4
 80048a2:	4633      	mov	r3, r6
 80048a4:	2710      	movs	r7, #16
 80048a6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80048aa:	9c07      	ldr	r4, [sp, #28]
 80048ac:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80048ae:	460e      	mov	r6, r1
 80048b0:	e007      	b.n	80048c2 <_vfprintf_r+0xd42>
 80048b2:	3308      	adds	r3, #8
 80048b4:	f1a9 0910 	sub.w	r9, r9, #16
 80048b8:	f1b9 0f10 	cmp.w	r9, #16
 80048bc:	f340 8353 	ble.w	8004f66 <_vfprintf_r+0x13e6>
 80048c0:	3501      	adds	r5, #1
 80048c2:	3210      	adds	r2, #16
 80048c4:	2d07      	cmp	r5, #7
 80048c6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80048ca:	e9c3 6700 	strd	r6, r7, [r3]
 80048ce:	ddf0      	ble.n	80048b2 <_vfprintf_r+0xd32>
 80048d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80048d2:	4621      	mov	r1, r4
 80048d4:	4658      	mov	r0, fp
 80048d6:	f003 fc81 	bl	80081dc <__sprint_r>
 80048da:	2800      	cmp	r0, #0
 80048dc:	f040 8472 	bne.w	80051c4 <_vfprintf_r+0x1644>
 80048e0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80048e4:	ab2d      	add	r3, sp, #180	; 0xb4
 80048e6:	e7e5      	b.n	80048b4 <_vfprintf_r+0xd34>
 80048e8:	080088d4 	.word	0x080088d4
 80048ec:	f018 0f01 	tst.w	r8, #1
 80048f0:	f47f aee0 	bne.w	80046b4 <_vfprintf_r+0xb34>
 80048f4:	2201      	movs	r2, #1
 80048f6:	2d07      	cmp	r5, #7
 80048f8:	f8cb 7000 	str.w	r7, [fp]
 80048fc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8004900:	f8cb 2004 	str.w	r2, [fp, #4]
 8004904:	dc04      	bgt.n	8004910 <_vfprintf_r+0xd90>
 8004906:	3302      	adds	r3, #2
 8004908:	9309      	str	r3, [sp, #36]	; 0x24
 800490a:	f10b 0b10 	add.w	fp, fp, #16
 800490e:	e70d      	b.n	800472c <_vfprintf_r+0xbac>
 8004910:	aa2a      	add	r2, sp, #168	; 0xa8
 8004912:	9907      	ldr	r1, [sp, #28]
 8004914:	9803      	ldr	r0, [sp, #12]
 8004916:	f003 fc61 	bl	80081dc <__sprint_r>
 800491a:	2800      	cmp	r0, #0
 800491c:	f47f aea8 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004920:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8004924:	3301      	adds	r3, #1
 8004926:	9309      	str	r3, [sp, #36]	; 0x24
 8004928:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800492c:	ae2d      	add	r6, sp, #180	; 0xb4
 800492e:	e6fd      	b.n	800472c <_vfprintf_r+0xbac>
 8004930:	aa2a      	add	r2, sp, #168	; 0xa8
 8004932:	9907      	ldr	r1, [sp, #28]
 8004934:	9803      	ldr	r0, [sp, #12]
 8004936:	f003 fc51 	bl	80081dc <__sprint_r>
 800493a:	2800      	cmp	r0, #0
 800493c:	f47f ae98 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004940:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004944:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004946:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800494a:	f7ff baf6 	b.w	8003f3a <_vfprintf_r+0x3ba>
 800494e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004950:	9907      	ldr	r1, [sp, #28]
 8004952:	9803      	ldr	r0, [sp, #12]
 8004954:	f003 fc42 	bl	80081dc <__sprint_r>
 8004958:	2800      	cmp	r0, #0
 800495a:	f47f ae89 	bne.w	8004670 <_vfprintf_r+0xaf0>
 800495e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004960:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004964:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004966:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800496a:	443b      	add	r3, r7
 800496c:	4699      	mov	r9, r3
 800496e:	f040 8357 	bne.w	8005020 <_vfprintf_r+0x14a0>
 8004972:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004974:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004976:	4293      	cmp	r3, r2
 8004978:	db49      	blt.n	8004a0e <_vfprintf_r+0xe8e>
 800497a:	f018 0f01 	tst.w	r8, #1
 800497e:	d146      	bne.n	8004a0e <_vfprintf_r+0xe8e>
 8004980:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004982:	18bd      	adds	r5, r7, r2
 8004984:	eba5 0509 	sub.w	r5, r5, r9
 8004988:	1ad3      	subs	r3, r2, r3
 800498a:	429d      	cmp	r5, r3
 800498c:	bfa8      	it	ge
 800498e:	461d      	movge	r5, r3
 8004990:	2d00      	cmp	r5, #0
 8004992:	dd0d      	ble.n	80049b0 <_vfprintf_r+0xe30>
 8004994:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004996:	f8cb 9000 	str.w	r9, [fp]
 800499a:	3201      	adds	r2, #1
 800499c:	442c      	add	r4, r5
 800499e:	2a07      	cmp	r2, #7
 80049a0:	942c      	str	r4, [sp, #176]	; 0xb0
 80049a2:	f8cb 5004 	str.w	r5, [fp, #4]
 80049a6:	922b      	str	r2, [sp, #172]	; 0xac
 80049a8:	f300 8462 	bgt.w	8005270 <_vfprintf_r+0x16f0>
 80049ac:	f10b 0b08 	add.w	fp, fp, #8
 80049b0:	2d00      	cmp	r5, #0
 80049b2:	bfac      	ite	ge
 80049b4:	1b5d      	subge	r5, r3, r5
 80049b6:	461d      	movlt	r5, r3
 80049b8:	2d00      	cmp	r5, #0
 80049ba:	f77f ab32 	ble.w	8004022 <_vfprintf_r+0x4a2>
 80049be:	2d10      	cmp	r5, #16
 80049c0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80049c2:	4bc5      	ldr	r3, [pc, #788]	; (8004cd8 <_vfprintf_r+0x1158>)
 80049c4:	f340 80c4 	ble.w	8004b50 <_vfprintf_r+0xfd0>
 80049c8:	4619      	mov	r1, r3
 80049ca:	2610      	movs	r6, #16
 80049cc:	4623      	mov	r3, r4
 80049ce:	9f03      	ldr	r7, [sp, #12]
 80049d0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80049d4:	460c      	mov	r4, r1
 80049d6:	e005      	b.n	80049e4 <_vfprintf_r+0xe64>
 80049d8:	f10b 0b08 	add.w	fp, fp, #8
 80049dc:	3d10      	subs	r5, #16
 80049de:	2d10      	cmp	r5, #16
 80049e0:	f340 80b3 	ble.w	8004b4a <_vfprintf_r+0xfca>
 80049e4:	3201      	adds	r2, #1
 80049e6:	3310      	adds	r3, #16
 80049e8:	2a07      	cmp	r2, #7
 80049ea:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80049ee:	e9cb 4600 	strd	r4, r6, [fp]
 80049f2:	ddf1      	ble.n	80049d8 <_vfprintf_r+0xe58>
 80049f4:	aa2a      	add	r2, sp, #168	; 0xa8
 80049f6:	4649      	mov	r1, r9
 80049f8:	4638      	mov	r0, r7
 80049fa:	f003 fbef 	bl	80081dc <__sprint_r>
 80049fe:	2800      	cmp	r0, #0
 8004a00:	f47f ae38 	bne.w	8004674 <_vfprintf_r+0xaf4>
 8004a04:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004a08:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004a0c:	e7e6      	b.n	80049dc <_vfprintf_r+0xe5c>
 8004a0e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004a10:	9916      	ldr	r1, [sp, #88]	; 0x58
 8004a12:	f8cb 1000 	str.w	r1, [fp]
 8004a16:	9915      	ldr	r1, [sp, #84]	; 0x54
 8004a18:	f8cb 1004 	str.w	r1, [fp, #4]
 8004a1c:	3201      	adds	r2, #1
 8004a1e:	440c      	add	r4, r1
 8004a20:	2a07      	cmp	r2, #7
 8004a22:	942c      	str	r4, [sp, #176]	; 0xb0
 8004a24:	922b      	str	r2, [sp, #172]	; 0xac
 8004a26:	f300 828c 	bgt.w	8004f42 <_vfprintf_r+0x13c2>
 8004a2a:	f10b 0b08 	add.w	fp, fp, #8
 8004a2e:	e7a7      	b.n	8004980 <_vfprintf_r+0xe00>
 8004a30:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004a34:	f002 fa94 	bl	8006f60 <__retarget_lock_release_recursive>
 8004a38:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004a3c:	e628      	b.n	8004690 <_vfprintf_r+0xb10>
 8004a3e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004a40:	9907      	ldr	r1, [sp, #28]
 8004a42:	9803      	ldr	r0, [sp, #12]
 8004a44:	f003 fbca 	bl	80081dc <__sprint_r>
 8004a48:	2800      	cmp	r0, #0
 8004a4a:	f47f ae11 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004a4e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8004a52:	ae2d      	add	r6, sp, #180	; 0xb4
 8004a54:	e638      	b.n	80046c8 <_vfprintf_r+0xb48>
 8004a56:	aa2a      	add	r2, sp, #168	; 0xa8
 8004a58:	9907      	ldr	r1, [sp, #28]
 8004a5a:	9803      	ldr	r0, [sp, #12]
 8004a5c:	f003 fbbe 	bl	80081dc <__sprint_r>
 8004a60:	2800      	cmp	r0, #0
 8004a62:	f47f ae05 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004a66:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8004a6a:	ae2d      	add	r6, sp, #180	; 0xb4
 8004a6c:	930b      	str	r3, [sp, #44]	; 0x2c
 8004a6e:	e638      	b.n	80046e2 <_vfprintf_r+0xb62>
 8004a70:	6814      	ldr	r4, [r2, #0]
 8004a72:	9308      	str	r3, [sp, #32]
 8004a74:	2500      	movs	r5, #0
 8004a76:	f7ff bb95 	b.w	80041a4 <_vfprintf_r+0x624>
 8004a7a:	6814      	ldr	r4, [r2, #0]
 8004a7c:	9308      	str	r3, [sp, #32]
 8004a7e:	2500      	movs	r5, #0
 8004a80:	f7ff b9ae 	b.w	8003de0 <_vfprintf_r+0x260>
 8004a84:	680c      	ldr	r4, [r1, #0]
 8004a86:	9208      	str	r2, [sp, #32]
 8004a88:	17e5      	asrs	r5, r4, #31
 8004a8a:	4620      	mov	r0, r4
 8004a8c:	4629      	mov	r1, r5
 8004a8e:	f7ff b9d2 	b.w	8003e36 <_vfprintf_r+0x2b6>
 8004a92:	6814      	ldr	r4, [r2, #0]
 8004a94:	9108      	str	r1, [sp, #32]
 8004a96:	2201      	movs	r2, #1
 8004a98:	2500      	movs	r5, #0
 8004a9a:	f7ff bb32 	b.w	8004102 <_vfprintf_r+0x582>
 8004a9e:	2a01      	cmp	r2, #1
 8004aa0:	f47f ab3c 	bne.w	800411c <_vfprintf_r+0x59c>
 8004aa4:	e68f      	b.n	80047c6 <_vfprintf_r+0xc46>
 8004aa6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8004aaa:	2200      	movs	r2, #0
 8004aac:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8004ab0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8004ab4:	af56      	add	r7, sp, #344	; 0x158
 8004ab6:	4692      	mov	sl, r2
 8004ab8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8004abc:	461e      	mov	r6, r3
 8004abe:	e00a      	b.n	8004ad6 <_vfprintf_r+0xf56>
 8004ac0:	2300      	movs	r3, #0
 8004ac2:	4620      	mov	r0, r4
 8004ac4:	4629      	mov	r1, r5
 8004ac6:	220a      	movs	r2, #10
 8004ac8:	f7fb fb9a 	bl	8000200 <__aeabi_uldivmod>
 8004acc:	4604      	mov	r4, r0
 8004ace:	460d      	mov	r5, r1
 8004ad0:	ea54 0305 	orrs.w	r3, r4, r5
 8004ad4:	d029      	beq.n	8004b2a <_vfprintf_r+0xfaa>
 8004ad6:	220a      	movs	r2, #10
 8004ad8:	2300      	movs	r3, #0
 8004ada:	4620      	mov	r0, r4
 8004adc:	4629      	mov	r1, r5
 8004ade:	f7fb fb8f 	bl	8000200 <__aeabi_uldivmod>
 8004ae2:	3230      	adds	r2, #48	; 0x30
 8004ae4:	f807 2c01 	strb.w	r2, [r7, #-1]
 8004ae8:	f10a 0a01 	add.w	sl, sl, #1
 8004aec:	3f01      	subs	r7, #1
 8004aee:	2e00      	cmp	r6, #0
 8004af0:	d0e6      	beq.n	8004ac0 <_vfprintf_r+0xf40>
 8004af2:	f898 3000 	ldrb.w	r3, [r8]
 8004af6:	459a      	cmp	sl, r3
 8004af8:	d1e2      	bne.n	8004ac0 <_vfprintf_r+0xf40>
 8004afa:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8004afe:	d0df      	beq.n	8004ac0 <_vfprintf_r+0xf40>
 8004b00:	2d00      	cmp	r5, #0
 8004b02:	bf08      	it	eq
 8004b04:	2c0a      	cmpeq	r4, #10
 8004b06:	d3db      	bcc.n	8004ac0 <_vfprintf_r+0xf40>
 8004b08:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004b0a:	9918      	ldr	r1, [sp, #96]	; 0x60
 8004b0c:	1aff      	subs	r7, r7, r3
 8004b0e:	461a      	mov	r2, r3
 8004b10:	4638      	mov	r0, r7
 8004b12:	f003 faf5 	bl	8008100 <strncpy>
 8004b16:	f898 3001 	ldrb.w	r3, [r8, #1]
 8004b1a:	2b00      	cmp	r3, #0
 8004b1c:	f000 8496 	beq.w	800544c <_vfprintf_r+0x18cc>
 8004b20:	f108 0801 	add.w	r8, r8, #1
 8004b24:	f04f 0a00 	mov.w	sl, #0
 8004b28:	e7ca      	b.n	8004ac0 <_vfprintf_r+0xf40>
 8004b2a:	9b04      	ldr	r3, [sp, #16]
 8004b2c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8004b30:	1bdb      	subs	r3, r3, r7
 8004b32:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8004b36:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8004b38:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004b3c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8004b40:	9309      	str	r3, [sp, #36]	; 0x24
 8004b42:	f7ff b99e 	b.w	8003e82 <_vfprintf_r+0x302>
 8004b46:	46c1      	mov	r9, r8
 8004b48:	e594      	b.n	8004674 <_vfprintf_r+0xaf4>
 8004b4a:	4621      	mov	r1, r4
 8004b4c:	461c      	mov	r4, r3
 8004b4e:	460b      	mov	r3, r1
 8004b50:	3201      	adds	r2, #1
 8004b52:	442c      	add	r4, r5
 8004b54:	2a07      	cmp	r2, #7
 8004b56:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004b5a:	e9cb 3500 	strd	r3, r5, [fp]
 8004b5e:	f77f aa5e 	ble.w	800401e <_vfprintf_r+0x49e>
 8004b62:	e5ee      	b.n	8004742 <_vfprintf_r+0xbc2>
 8004b64:	f018 0f10 	tst.w	r8, #16
 8004b68:	f040 80f8 	bne.w	8004d5c <_vfprintf_r+0x11dc>
 8004b6c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8004b70:	f000 8351 	beq.w	8005216 <_vfprintf_r+0x1696>
 8004b74:	9a05      	ldr	r2, [sp, #20]
 8004b76:	801a      	strh	r2, [r3, #0]
 8004b78:	4657      	mov	r7, sl
 8004b7a:	f7ff baa7 	b.w	80040cc <_vfprintf_r+0x54c>
 8004b7e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004b80:	9907      	ldr	r1, [sp, #28]
 8004b82:	9803      	ldr	r0, [sp, #12]
 8004b84:	f003 fb2a 	bl	80081dc <__sprint_r>
 8004b88:	2800      	cmp	r0, #0
 8004b8a:	f47f ad71 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004b8e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004b90:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004b94:	f7ff b9f5 	b.w	8003f82 <_vfprintf_r+0x402>
 8004b98:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004b9c:	4602      	mov	r2, r0
 8004b9e:	460b      	mov	r3, r1
 8004ba0:	f7fc fac4 	bl	800112c <__aeabi_dcmpun>
 8004ba4:	2800      	cmp	r0, #0
 8004ba6:	f040 8491 	bne.w	80054cc <_vfprintf_r+0x194c>
 8004baa:	2e61      	cmp	r6, #97	; 0x61
 8004bac:	f000 8111 	beq.w	8004dd2 <_vfprintf_r+0x1252>
 8004bb0:	2e41      	cmp	r6, #65	; 0x41
 8004bb2:	f000 8377 	beq.w	80052a4 <_vfprintf_r+0x1724>
 8004bb6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8004bba:	f026 0220 	bic.w	r2, r6, #32
 8004bbe:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004bc2:	930e      	str	r3, [sp, #56]	; 0x38
 8004bc4:	9204      	str	r2, [sp, #16]
 8004bc6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004bc8:	f000 842d 	beq.w	8005426 <_vfprintf_r+0x18a6>
 8004bcc:	2a47      	cmp	r2, #71	; 0x47
 8004bce:	f000 8424 	beq.w	800541a <_vfprintf_r+0x189a>
 8004bd2:	2b00      	cmp	r3, #0
 8004bd4:	f2c0 82f9 	blt.w	80051ca <_vfprintf_r+0x164a>
 8004bd8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8004bdc:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8004be0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8004be4:	2e66      	cmp	r6, #102	; 0x66
 8004be6:	f000 83eb 	beq.w	80053c0 <_vfprintf_r+0x1840>
 8004bea:	2e46      	cmp	r6, #70	; 0x46
 8004bec:	f000 847e 	beq.w	80054ec <_vfprintf_r+0x196c>
 8004bf0:	9b04      	ldr	r3, [sp, #16]
 8004bf2:	9803      	ldr	r0, [sp, #12]
 8004bf4:	2b45      	cmp	r3, #69	; 0x45
 8004bf6:	bf0c      	ite	eq
 8004bf8:	f109 0501 	addeq.w	r5, r9, #1
 8004bfc:	464d      	movne	r5, r9
 8004bfe:	aa28      	add	r2, sp, #160	; 0xa0
 8004c00:	ab25      	add	r3, sp, #148	; 0x94
 8004c02:	e9cd 3200 	strd	r3, r2, [sp]
 8004c06:	2102      	movs	r1, #2
 8004c08:	ab24      	add	r3, sp, #144	; 0x90
 8004c0a:	462a      	mov	r2, r5
 8004c0c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004c10:	f000 fe3e 	bl	8005890 <_dtoa_r>
 8004c14:	2e67      	cmp	r6, #103	; 0x67
 8004c16:	4607      	mov	r7, r0
 8004c18:	f040 849c 	bne.w	8005554 <_vfprintf_r+0x19d4>
 8004c1c:	f018 0f01 	tst.w	r8, #1
 8004c20:	f040 83f9 	bne.w	8005416 <_vfprintf_r+0x1896>
 8004c24:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004c26:	4640      	mov	r0, r8
 8004c28:	1bdb      	subs	r3, r3, r7
 8004c2a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004c2e:	9310      	str	r3, [sp, #64]	; 0x40
 8004c30:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004c32:	9311      	str	r3, [sp, #68]	; 0x44
 8004c34:	9b04      	ldr	r3, [sp, #16]
 8004c36:	2b47      	cmp	r3, #71	; 0x47
 8004c38:	f000 81e7 	beq.w	800500a <_vfprintf_r+0x148a>
 8004c3c:	9b04      	ldr	r3, [sp, #16]
 8004c3e:	2b46      	cmp	r3, #70	; 0x46
 8004c40:	f000 8300 	beq.w	8005244 <_vfprintf_r+0x16c4>
 8004c44:	9904      	ldr	r1, [sp, #16]
 8004c46:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004c48:	b2f2      	uxtb	r2, r6
 8004c4a:	2941      	cmp	r1, #65	; 0x41
 8004c4c:	bf08      	it	eq
 8004c4e:	320f      	addeq	r2, #15
 8004c50:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8004c54:	bf06      	itte	eq
 8004c56:	b2d2      	uxtbeq	r2, r2
 8004c58:	2101      	moveq	r1, #1
 8004c5a:	2100      	movne	r1, #0
 8004c5c:	2b00      	cmp	r3, #0
 8004c5e:	9324      	str	r3, [sp, #144]	; 0x90
 8004c60:	bfb8      	it	lt
 8004c62:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8004c64:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8004c68:	bfba      	itte	lt
 8004c6a:	f1c3 0301 	rsblt	r3, r3, #1
 8004c6e:	222d      	movlt	r2, #45	; 0x2d
 8004c70:	222b      	movge	r2, #43	; 0x2b
 8004c72:	2b09      	cmp	r3, #9
 8004c74:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8004c78:	f300 83f9 	bgt.w	800546e <_vfprintf_r+0x18ee>
 8004c7c:	2900      	cmp	r1, #0
 8004c7e:	f040 8487 	bne.w	8005590 <_vfprintf_r+0x1a10>
 8004c82:	2230      	movs	r2, #48	; 0x30
 8004c84:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8004c88:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8004c8c:	3330      	adds	r3, #48	; 0x30
 8004c8e:	7013      	strb	r3, [r2, #0]
 8004c90:	1c53      	adds	r3, r2, #1
 8004c92:	aa26      	add	r2, sp, #152	; 0x98
 8004c94:	1a9b      	subs	r3, r3, r2
 8004c96:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004c98:	9319      	str	r3, [sp, #100]	; 0x64
 8004c9a:	2a01      	cmp	r2, #1
 8004c9c:	4413      	add	r3, r2
 8004c9e:	9309      	str	r3, [sp, #36]	; 0x24
 8004ca0:	f340 8442 	ble.w	8005528 <_vfprintf_r+0x19a8>
 8004ca4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ca6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004ca8:	4413      	add	r3, r2
 8004caa:	9309      	str	r3, [sp, #36]	; 0x24
 8004cac:	2300      	movs	r3, #0
 8004cae:	930f      	str	r3, [sp, #60]	; 0x3c
 8004cb0:	9314      	str	r3, [sp, #80]	; 0x50
 8004cb2:	9311      	str	r3, [sp, #68]	; 0x44
 8004cb4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cb6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8004cba:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004cbe:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8004cc2:	9304      	str	r3, [sp, #16]
 8004cc4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004cc6:	2b00      	cmp	r3, #0
 8004cc8:	f040 8275 	bne.w	80051b6 <_vfprintf_r+0x1636>
 8004ccc:	4699      	mov	r9, r3
 8004cce:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004cd2:	f7ff b8e2 	b.w	8003e9a <_vfprintf_r+0x31a>
 8004cd6:	bf00      	nop
 8004cd8:	080088d4 	.word	0x080088d4
 8004cdc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004cde:	49bd      	ldr	r1, [pc, #756]	; (8004fd4 <_vfprintf_r+0x1454>)
 8004ce0:	f8cb 1000 	str.w	r1, [fp]
 8004ce4:	3201      	adds	r2, #1
 8004ce6:	3401      	adds	r4, #1
 8004ce8:	2101      	movs	r1, #1
 8004cea:	2a07      	cmp	r2, #7
 8004cec:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004cf0:	f8cb 1004 	str.w	r1, [fp, #4]
 8004cf4:	dc60      	bgt.n	8004db8 <_vfprintf_r+0x1238>
 8004cf6:	f10b 0b08 	add.w	fp, fp, #8
 8004cfa:	b92b      	cbnz	r3, 8004d08 <_vfprintf_r+0x1188>
 8004cfc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004cfe:	b91a      	cbnz	r2, 8004d08 <_vfprintf_r+0x1188>
 8004d00:	f018 0f01 	tst.w	r8, #1
 8004d04:	f43f a98d 	beq.w	8004022 <_vfprintf_r+0x4a2>
 8004d08:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004d0a:	9916      	ldr	r1, [sp, #88]	; 0x58
 8004d0c:	f8cb 1000 	str.w	r1, [fp]
 8004d10:	9915      	ldr	r1, [sp, #84]	; 0x54
 8004d12:	f8cb 1004 	str.w	r1, [fp, #4]
 8004d16:	3201      	adds	r2, #1
 8004d18:	440c      	add	r4, r1
 8004d1a:	2a07      	cmp	r2, #7
 8004d1c:	942c      	str	r4, [sp, #176]	; 0xb0
 8004d1e:	922b      	str	r2, [sp, #172]	; 0xac
 8004d20:	f300 8282 	bgt.w	8005228 <_vfprintf_r+0x16a8>
 8004d24:	f10b 0b08 	add.w	fp, fp, #8
 8004d28:	2b00      	cmp	r3, #0
 8004d2a:	f2c0 82e7 	blt.w	80052fc <_vfprintf_r+0x177c>
 8004d2e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004d30:	3201      	adds	r2, #1
 8004d32:	441c      	add	r4, r3
 8004d34:	2a07      	cmp	r2, #7
 8004d36:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004d3a:	e9cb 7300 	strd	r7, r3, [fp]
 8004d3e:	f77f a96e 	ble.w	800401e <_vfprintf_r+0x49e>
 8004d42:	e4fe      	b.n	8004742 <_vfprintf_r+0xbc2>
 8004d44:	aa2a      	add	r2, sp, #168	; 0xa8
 8004d46:	9907      	ldr	r1, [sp, #28]
 8004d48:	9803      	ldr	r0, [sp, #12]
 8004d4a:	f003 fa47 	bl	80081dc <__sprint_r>
 8004d4e:	2800      	cmp	r0, #0
 8004d50:	f47f ac8e 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004d54:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004d58:	f7ff bbf0 	b.w	800453c <_vfprintf_r+0x9bc>
 8004d5c:	9a05      	ldr	r2, [sp, #20]
 8004d5e:	601a      	str	r2, [r3, #0]
 8004d60:	4657      	mov	r7, sl
 8004d62:	f7ff b9b3 	b.w	80040cc <_vfprintf_r+0x54c>
 8004d66:	8814      	ldrh	r4, [r2, #0]
 8004d68:	9108      	str	r1, [sp, #32]
 8004d6a:	2500      	movs	r5, #0
 8004d6c:	2201      	movs	r2, #1
 8004d6e:	f7ff b9c8 	b.w	8004102 <_vfprintf_r+0x582>
 8004d72:	8814      	ldrh	r4, [r2, #0]
 8004d74:	9308      	str	r3, [sp, #32]
 8004d76:	2500      	movs	r5, #0
 8004d78:	f7ff ba14 	b.w	80041a4 <_vfprintf_r+0x624>
 8004d7c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8004d80:	9208      	str	r2, [sp, #32]
 8004d82:	17e5      	asrs	r5, r4, #31
 8004d84:	4620      	mov	r0, r4
 8004d86:	4629      	mov	r1, r5
 8004d88:	f7ff b855 	b.w	8003e36 <_vfprintf_r+0x2b6>
 8004d8c:	8814      	ldrh	r4, [r2, #0]
 8004d8e:	9308      	str	r3, [sp, #32]
 8004d90:	2500      	movs	r5, #0
 8004d92:	f7ff b825 	b.w	8003de0 <_vfprintf_r+0x260>
 8004d96:	222d      	movs	r2, #45	; 0x2d
 8004d98:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004d9c:	f7ff baa2 	b.w	80042e4 <_vfprintf_r+0x764>
 8004da0:	aa2a      	add	r2, sp, #168	; 0xa8
 8004da2:	9907      	ldr	r1, [sp, #28]
 8004da4:	9803      	ldr	r0, [sp, #12]
 8004da6:	f003 fa19 	bl	80081dc <__sprint_r>
 8004daa:	2800      	cmp	r0, #0
 8004dac:	f47f ac60 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004db0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004db2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004db6:	e534      	b.n	8004822 <_vfprintf_r+0xca2>
 8004db8:	aa2a      	add	r2, sp, #168	; 0xa8
 8004dba:	9907      	ldr	r1, [sp, #28]
 8004dbc:	9803      	ldr	r0, [sp, #12]
 8004dbe:	f003 fa0d 	bl	80081dc <__sprint_r>
 8004dc2:	2800      	cmp	r0, #0
 8004dc4:	f47f ac54 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004dc8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004dca:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004dcc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004dd0:	e793      	b.n	8004cfa <_vfprintf_r+0x117a>
 8004dd2:	2330      	movs	r3, #48	; 0x30
 8004dd4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004dd8:	2378      	movs	r3, #120	; 0x78
 8004dda:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8004dde:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8004de2:	f048 0402 	orr.w	r4, r8, #2
 8004de6:	f300 82b0 	bgt.w	800534a <_vfprintf_r+0x17ca>
 8004dea:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004dee:	930e      	str	r3, [sp, #56]	; 0x38
 8004df0:	f026 0320 	bic.w	r3, r6, #32
 8004df4:	9304      	str	r3, [sp, #16]
 8004df6:	2200      	movs	r2, #0
 8004df8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004dfa:	920a      	str	r2, [sp, #40]	; 0x28
 8004dfc:	46a0      	mov	r8, r4
 8004dfe:	af3d      	add	r7, sp, #244	; 0xf4
 8004e00:	2b00      	cmp	r3, #0
 8004e02:	f2c0 81e3 	blt.w	80051cc <_vfprintf_r+0x164c>
 8004e06:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8004e0a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8004e0e:	2300      	movs	r3, #0
 8004e10:	930b      	str	r3, [sp, #44]	; 0x2c
 8004e12:	2e61      	cmp	r6, #97	; 0x61
 8004e14:	f000 8255 	beq.w	80052c2 <_vfprintf_r+0x1742>
 8004e18:	2e41      	cmp	r6, #65	; 0x41
 8004e1a:	f47f aee3 	bne.w	8004be4 <_vfprintf_r+0x1064>
 8004e1e:	a824      	add	r0, sp, #144	; 0x90
 8004e20:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004e24:	f003 f8e2 	bl	8007fec <frexp>
 8004e28:	2200      	movs	r2, #0
 8004e2a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8004e2e:	ec51 0b10 	vmov	r0, r1, d0
 8004e32:	f7fb fee1 	bl	8000bf8 <__aeabi_dmul>
 8004e36:	2200      	movs	r2, #0
 8004e38:	2300      	movs	r3, #0
 8004e3a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004e3e:	f7fc f943 	bl	80010c8 <__aeabi_dcmpeq>
 8004e42:	2800      	cmp	r0, #0
 8004e44:	f040 8305 	bne.w	8005452 <_vfprintf_r+0x18d2>
 8004e48:	4b63      	ldr	r3, [pc, #396]	; (8004fd8 <_vfprintf_r+0x1458>)
 8004e4a:	9309      	str	r3, [sp, #36]	; 0x24
 8004e4c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8004e50:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8004e54:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8004e58:	9721      	str	r7, [sp, #132]	; 0x84
 8004e5a:	46b9      	mov	r9, r7
 8004e5c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8004e60:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8004e64:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004e68:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8004e6c:	e003      	b.n	8004e76 <_vfprintf_r+0x12f6>
 8004e6e:	f7fc f92b 	bl	80010c8 <__aeabi_dcmpeq>
 8004e72:	bb20      	cbnz	r0, 8004ebe <_vfprintf_r+0x133e>
 8004e74:	46a9      	mov	r9, r5
 8004e76:	2200      	movs	r2, #0
 8004e78:	4b58      	ldr	r3, [pc, #352]	; (8004fdc <_vfprintf_r+0x145c>)
 8004e7a:	4630      	mov	r0, r6
 8004e7c:	4639      	mov	r1, r7
 8004e7e:	f7fb febb 	bl	8000bf8 <__aeabi_dmul>
 8004e82:	460f      	mov	r7, r1
 8004e84:	4606      	mov	r6, r0
 8004e86:	f7fc f967 	bl	8001158 <__aeabi_d2iz>
 8004e8a:	4680      	mov	r8, r0
 8004e8c:	f7fb fe4a 	bl	8000b24 <__aeabi_i2d>
 8004e90:	4602      	mov	r2, r0
 8004e92:	460b      	mov	r3, r1
 8004e94:	4630      	mov	r0, r6
 8004e96:	4639      	mov	r1, r7
 8004e98:	f7fb fcf6 	bl	8000888 <__aeabi_dsub>
 8004e9c:	464d      	mov	r5, r9
 8004e9e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8004ea2:	f805 cb01 	strb.w	ip, [r5], #1
 8004ea6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8004eaa:	46a3      	mov	fp, r4
 8004eac:	4606      	mov	r6, r0
 8004eae:	460f      	mov	r7, r1
 8004eb0:	f04f 0200 	mov.w	r2, #0
 8004eb4:	f04f 0300 	mov.w	r3, #0
 8004eb8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8004ebc:	d1d7      	bne.n	8004e6e <_vfprintf_r+0x12ee>
 8004ebe:	4630      	mov	r0, r6
 8004ec0:	4639      	mov	r1, r7
 8004ec2:	2200      	movs	r2, #0
 8004ec4:	4b46      	ldr	r3, [pc, #280]	; (8004fe0 <_vfprintf_r+0x1460>)
 8004ec6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8004eca:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8004ecc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8004ed0:	4644      	mov	r4, r8
 8004ed2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8004ed6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8004eda:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8004ede:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8004ee2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8004ee4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004ee8:	f7fc f916 	bl	8001118 <__aeabi_dcmpgt>
 8004eec:	2800      	cmp	r0, #0
 8004eee:	f040 8176 	bne.w	80051de <_vfprintf_r+0x165e>
 8004ef2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8004ef6:	2200      	movs	r2, #0
 8004ef8:	4b39      	ldr	r3, [pc, #228]	; (8004fe0 <_vfprintf_r+0x1460>)
 8004efa:	f7fc f8e5 	bl	80010c8 <__aeabi_dcmpeq>
 8004efe:	b110      	cbz	r0, 8004f06 <_vfprintf_r+0x1386>
 8004f00:	07e2      	lsls	r2, r4, #31
 8004f02:	f100 816c 	bmi.w	80051de <_vfprintf_r+0x165e>
 8004f06:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004f08:	2b00      	cmp	r3, #0
 8004f0a:	db07      	blt.n	8004f1c <_vfprintf_r+0x139c>
 8004f0c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004f0e:	3301      	adds	r3, #1
 8004f10:	442b      	add	r3, r5
 8004f12:	2230      	movs	r2, #48	; 0x30
 8004f14:	f805 2b01 	strb.w	r2, [r5], #1
 8004f18:	42ab      	cmp	r3, r5
 8004f1a:	d1fb      	bne.n	8004f14 <_vfprintf_r+0x1394>
 8004f1c:	1beb      	subs	r3, r5, r7
 8004f1e:	4640      	mov	r0, r8
 8004f20:	9310      	str	r3, [sp, #64]	; 0x40
 8004f22:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004f26:	e683      	b.n	8004c30 <_vfprintf_r+0x10b0>
 8004f28:	f8cd 9010 	str.w	r9, [sp, #16]
 8004f2c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8004f30:	9408      	str	r4, [sp, #32]
 8004f32:	4681      	mov	r9, r0
 8004f34:	900f      	str	r0, [sp, #60]	; 0x3c
 8004f36:	9014      	str	r0, [sp, #80]	; 0x50
 8004f38:	9011      	str	r0, [sp, #68]	; 0x44
 8004f3a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004f3e:	f7fe bfac 	b.w	8003e9a <_vfprintf_r+0x31a>
 8004f42:	aa2a      	add	r2, sp, #168	; 0xa8
 8004f44:	9907      	ldr	r1, [sp, #28]
 8004f46:	9803      	ldr	r0, [sp, #12]
 8004f48:	f003 f948 	bl	80081dc <__sprint_r>
 8004f4c:	2800      	cmp	r0, #0
 8004f4e:	f47f ab8f 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004f52:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004f54:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004f56:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004f5a:	e511      	b.n	8004980 <_vfprintf_r+0xe00>
 8004f5c:	4252      	negs	r2, r2
 8004f5e:	9206      	str	r2, [sp, #24]
 8004f60:	9308      	str	r3, [sp, #32]
 8004f62:	f7ff b96d 	b.w	8004240 <_vfprintf_r+0x6c0>
 8004f66:	4614      	mov	r4, r2
 8004f68:	4632      	mov	r2, r6
 8004f6a:	461e      	mov	r6, r3
 8004f6c:	4613      	mov	r3, r2
 8004f6e:	462a      	mov	r2, r5
 8004f70:	3201      	adds	r2, #1
 8004f72:	9209      	str	r2, [sp, #36]	; 0x24
 8004f74:	f106 0208 	add.w	r2, r6, #8
 8004f78:	e9c6 3900 	strd	r3, r9, [r6]
 8004f7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f7e:	932b      	str	r3, [sp, #172]	; 0xac
 8004f80:	444c      	add	r4, r9
 8004f82:	2b07      	cmp	r3, #7
 8004f84:	942c      	str	r4, [sp, #176]	; 0xb0
 8004f86:	f73f acc3 	bgt.w	8004910 <_vfprintf_r+0xd90>
 8004f8a:	3301      	adds	r3, #1
 8004f8c:	9309      	str	r3, [sp, #36]	; 0x24
 8004f8e:	f102 0b08 	add.w	fp, r2, #8
 8004f92:	4616      	mov	r6, r2
 8004f94:	f7ff bbca 	b.w	800472c <_vfprintf_r+0xbac>
 8004f98:	aa2a      	add	r2, sp, #168	; 0xa8
 8004f9a:	9907      	ldr	r1, [sp, #28]
 8004f9c:	9803      	ldr	r0, [sp, #12]
 8004f9e:	f003 f91d 	bl	80081dc <__sprint_r>
 8004fa2:	2800      	cmp	r0, #0
 8004fa4:	f47f ab64 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8004fa8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004faa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004fae:	f7ff bade 	b.w	800456e <_vfprintf_r+0x9ee>
 8004fb2:	464b      	mov	r3, r9
 8004fb4:	2b06      	cmp	r3, #6
 8004fb6:	bf28      	it	cs
 8004fb8:	2306      	movcs	r3, #6
 8004fba:	46b9      	mov	r9, r7
 8004fbc:	970f      	str	r7, [sp, #60]	; 0x3c
 8004fbe:	9714      	str	r7, [sp, #80]	; 0x50
 8004fc0:	9711      	str	r7, [sp, #68]	; 0x44
 8004fc2:	970a      	str	r7, [sp, #40]	; 0x28
 8004fc4:	463a      	mov	r2, r7
 8004fc6:	9304      	str	r3, [sp, #16]
 8004fc8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8004fcc:	4f05      	ldr	r7, [pc, #20]	; (8004fe4 <_vfprintf_r+0x1464>)
 8004fce:	f7fe bf64 	b.w	8003e9a <_vfprintf_r+0x31a>
 8004fd2:	bf00      	nop
 8004fd4:	080088c0 	.word	0x080088c0
 8004fd8:	080088a4 	.word	0x080088a4
 8004fdc:	40300000 	.word	0x40300000
 8004fe0:	3fe00000 	.word	0x3fe00000
 8004fe4:	080088b8 	.word	0x080088b8
 8004fe8:	460c      	mov	r4, r1
 8004fea:	4639      	mov	r1, r7
 8004fec:	465f      	mov	r7, fp
 8004fee:	469b      	mov	fp, r3
 8004ff0:	460b      	mov	r3, r1
 8004ff2:	3201      	adds	r2, #1
 8004ff4:	442c      	add	r4, r5
 8004ff6:	2a07      	cmp	r2, #7
 8004ff8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004ffc:	e9cb 3500 	strd	r3, r5, [fp]
 8005000:	f73f aca5 	bgt.w	800494e <_vfprintf_r+0xdce>
 8005004:	f10b 0b08 	add.w	fp, fp, #8
 8005008:	e4ac      	b.n	8004964 <_vfprintf_r+0xde4>
 800500a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800500c:	1cda      	adds	r2, r3, #3
 800500e:	db02      	blt.n	8005016 <_vfprintf_r+0x1496>
 8005010:	4599      	cmp	r9, r3
 8005012:	f280 80b5 	bge.w	8005180 <_vfprintf_r+0x1600>
 8005016:	3e02      	subs	r6, #2
 8005018:	f026 0320 	bic.w	r3, r6, #32
 800501c:	9304      	str	r3, [sp, #16]
 800501e:	e611      	b.n	8004c44 <_vfprintf_r+0x10c4>
 8005020:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005022:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8005026:	465a      	mov	r2, fp
 8005028:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800502c:	18fb      	adds	r3, r7, r3
 800502e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8005032:	970c      	str	r7, [sp, #48]	; 0x30
 8005034:	4eaf      	ldr	r6, [pc, #700]	; (80052f4 <_vfprintf_r+0x1774>)
 8005036:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800503a:	9309      	str	r3, [sp, #36]	; 0x24
 800503c:	464f      	mov	r7, r9
 800503e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005042:	4621      	mov	r1, r4
 8005044:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8005046:	2b00      	cmp	r3, #0
 8005048:	d05b      	beq.n	8005102 <_vfprintf_r+0x1582>
 800504a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800504c:	2b00      	cmp	r3, #0
 800504e:	d154      	bne.n	80050fa <_vfprintf_r+0x157a>
 8005050:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8005052:	3b01      	subs	r3, #1
 8005054:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8005058:	9314      	str	r3, [sp, #80]	; 0x50
 800505a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800505c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800505e:	6010      	str	r0, [r2, #0]
 8005060:	3301      	adds	r3, #1
 8005062:	4459      	add	r1, fp
 8005064:	2b07      	cmp	r3, #7
 8005066:	912c      	str	r1, [sp, #176]	; 0xb0
 8005068:	f8c2 b004 	str.w	fp, [r2, #4]
 800506c:	932b      	str	r3, [sp, #172]	; 0xac
 800506e:	dc68      	bgt.n	8005142 <_vfprintf_r+0x15c2>
 8005070:	3208      	adds	r2, #8
 8005072:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005074:	f898 3000 	ldrb.w	r3, [r8]
 8005078:	1bc5      	subs	r5, r0, r7
 800507a:	429d      	cmp	r5, r3
 800507c:	bfa8      	it	ge
 800507e:	461d      	movge	r5, r3
 8005080:	2d00      	cmp	r5, #0
 8005082:	dd0b      	ble.n	800509c <_vfprintf_r+0x151c>
 8005084:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005086:	6017      	str	r7, [r2, #0]
 8005088:	3301      	adds	r3, #1
 800508a:	4429      	add	r1, r5
 800508c:	2b07      	cmp	r3, #7
 800508e:	912c      	str	r1, [sp, #176]	; 0xb0
 8005090:	6055      	str	r5, [r2, #4]
 8005092:	932b      	str	r3, [sp, #172]	; 0xac
 8005094:	dc5e      	bgt.n	8005154 <_vfprintf_r+0x15d4>
 8005096:	f898 3000 	ldrb.w	r3, [r8]
 800509a:	3208      	adds	r2, #8
 800509c:	2d00      	cmp	r5, #0
 800509e:	bfac      	ite	ge
 80050a0:	1b5d      	subge	r5, r3, r5
 80050a2:	461d      	movlt	r5, r3
 80050a4:	2d00      	cmp	r5, #0
 80050a6:	dd26      	ble.n	80050f6 <_vfprintf_r+0x1576>
 80050a8:	2d10      	cmp	r5, #16
 80050aa:	982b      	ldr	r0, [sp, #172]	; 0xac
 80050ac:	dd3c      	ble.n	8005128 <_vfprintf_r+0x15a8>
 80050ae:	2410      	movs	r4, #16
 80050b0:	e003      	b.n	80050ba <_vfprintf_r+0x153a>
 80050b2:	3208      	adds	r2, #8
 80050b4:	3d10      	subs	r5, #16
 80050b6:	2d10      	cmp	r5, #16
 80050b8:	dd36      	ble.n	8005128 <_vfprintf_r+0x15a8>
 80050ba:	3001      	adds	r0, #1
 80050bc:	3110      	adds	r1, #16
 80050be:	2807      	cmp	r0, #7
 80050c0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80050c4:	e9c2 6400 	strd	r6, r4, [r2]
 80050c8:	ddf3      	ble.n	80050b2 <_vfprintf_r+0x1532>
 80050ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80050cc:	4651      	mov	r1, sl
 80050ce:	4648      	mov	r0, r9
 80050d0:	f003 f884 	bl	80081dc <__sprint_r>
 80050d4:	2800      	cmp	r0, #0
 80050d6:	d150      	bne.n	800517a <_vfprintf_r+0x15fa>
 80050d8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80050dc:	aa2d      	add	r2, sp, #180	; 0xb4
 80050de:	e7e9      	b.n	80050b4 <_vfprintf_r+0x1534>
 80050e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80050e2:	4651      	mov	r1, sl
 80050e4:	4648      	mov	r0, r9
 80050e6:	f003 f879 	bl	80081dc <__sprint_r>
 80050ea:	2800      	cmp	r0, #0
 80050ec:	d145      	bne.n	800517a <_vfprintf_r+0x15fa>
 80050ee:	f898 3000 	ldrb.w	r3, [r8]
 80050f2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80050f4:	aa2d      	add	r2, sp, #180	; 0xb4
 80050f6:	441f      	add	r7, r3
 80050f8:	e7a4      	b.n	8005044 <_vfprintf_r+0x14c4>
 80050fa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80050fc:	3b01      	subs	r3, #1
 80050fe:	930f      	str	r3, [sp, #60]	; 0x3c
 8005100:	e7ab      	b.n	800505a <_vfprintf_r+0x14da>
 8005102:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005104:	2b00      	cmp	r3, #0
 8005106:	d1f8      	bne.n	80050fa <_vfprintf_r+0x157a>
 8005108:	46b9      	mov	r9, r7
 800510a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800510c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800510e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8005112:	18fb      	adds	r3, r7, r3
 8005114:	4599      	cmp	r9, r3
 8005116:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800511a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800511e:	4693      	mov	fp, r2
 8005120:	460c      	mov	r4, r1
 8005122:	bf28      	it	cs
 8005124:	4699      	movcs	r9, r3
 8005126:	e424      	b.n	8004972 <_vfprintf_r+0xdf2>
 8005128:	3001      	adds	r0, #1
 800512a:	4429      	add	r1, r5
 800512c:	2807      	cmp	r0, #7
 800512e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8005132:	e9c2 6500 	strd	r6, r5, [r2]
 8005136:	dcd3      	bgt.n	80050e0 <_vfprintf_r+0x1560>
 8005138:	f898 3000 	ldrb.w	r3, [r8]
 800513c:	3208      	adds	r2, #8
 800513e:	441f      	add	r7, r3
 8005140:	e780      	b.n	8005044 <_vfprintf_r+0x14c4>
 8005142:	aa2a      	add	r2, sp, #168	; 0xa8
 8005144:	4651      	mov	r1, sl
 8005146:	4648      	mov	r0, r9
 8005148:	f003 f848 	bl	80081dc <__sprint_r>
 800514c:	b9a8      	cbnz	r0, 800517a <_vfprintf_r+0x15fa>
 800514e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8005150:	aa2d      	add	r2, sp, #180	; 0xb4
 8005152:	e78e      	b.n	8005072 <_vfprintf_r+0x14f2>
 8005154:	aa2a      	add	r2, sp, #168	; 0xa8
 8005156:	4651      	mov	r1, sl
 8005158:	4648      	mov	r0, r9
 800515a:	f003 f83f 	bl	80081dc <__sprint_r>
 800515e:	b960      	cbnz	r0, 800517a <_vfprintf_r+0x15fa>
 8005160:	f898 3000 	ldrb.w	r3, [r8]
 8005164:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8005166:	aa2d      	add	r2, sp, #180	; 0xb4
 8005168:	e798      	b.n	800509c <_vfprintf_r+0x151c>
 800516a:	4638      	mov	r0, r7
 800516c:	f7fb fac8 	bl	8000700 <strlen>
 8005170:	46a9      	mov	r9, r5
 8005172:	4603      	mov	r3, r0
 8005174:	9009      	str	r0, [sp, #36]	; 0x24
 8005176:	f7ff b8f4 	b.w	8004362 <_vfprintf_r+0x7e2>
 800517a:	46d1      	mov	r9, sl
 800517c:	f7ff ba7a 	b.w	8004674 <_vfprintf_r+0xaf4>
 8005180:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005182:	4619      	mov	r1, r3
 8005184:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005186:	4299      	cmp	r1, r3
 8005188:	f300 8082 	bgt.w	8005290 <_vfprintf_r+0x1710>
 800518c:	07c4      	lsls	r4, r0, #31
 800518e:	f140 816b 	bpl.w	8005468 <_vfprintf_r+0x18e8>
 8005192:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8005194:	4413      	add	r3, r2
 8005196:	9309      	str	r3, [sp, #36]	; 0x24
 8005198:	0541      	lsls	r1, r0, #21
 800519a:	d503      	bpl.n	80051a4 <_vfprintf_r+0x1624>
 800519c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800519e:	2b00      	cmp	r3, #0
 80051a0:	f300 80e6 	bgt.w	8005370 <_vfprintf_r+0x17f0>
 80051a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80051a6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80051aa:	9304      	str	r3, [sp, #16]
 80051ac:	2667      	movs	r6, #103	; 0x67
 80051ae:	2300      	movs	r3, #0
 80051b0:	930f      	str	r3, [sp, #60]	; 0x3c
 80051b2:	9314      	str	r3, [sp, #80]	; 0x50
 80051b4:	e586      	b.n	8004cc4 <_vfprintf_r+0x1144>
 80051b6:	222d      	movs	r2, #45	; 0x2d
 80051b8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80051bc:	f04f 0900 	mov.w	r9, #0
 80051c0:	f7fe be6c 	b.w	8003e9c <_vfprintf_r+0x31c>
 80051c4:	46a1      	mov	r9, r4
 80051c6:	f7ff ba55 	b.w	8004674 <_vfprintf_r+0xaf4>
 80051ca:	900a      	str	r0, [sp, #40]	; 0x28
 80051cc:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80051d0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80051d4:	931f      	str	r3, [sp, #124]	; 0x7c
 80051d6:	232d      	movs	r3, #45	; 0x2d
 80051d8:	911e      	str	r1, [sp, #120]	; 0x78
 80051da:	930b      	str	r3, [sp, #44]	; 0x2c
 80051dc:	e619      	b.n	8004e12 <_vfprintf_r+0x1292>
 80051de:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80051e0:	9328      	str	r3, [sp, #160]	; 0xa0
 80051e2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80051e4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80051e8:	7bd9      	ldrb	r1, [r3, #15]
 80051ea:	4291      	cmp	r1, r2
 80051ec:	462b      	mov	r3, r5
 80051ee:	d109      	bne.n	8005204 <_vfprintf_r+0x1684>
 80051f0:	2030      	movs	r0, #48	; 0x30
 80051f2:	f803 0c01 	strb.w	r0, [r3, #-1]
 80051f6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80051f8:	1e5a      	subs	r2, r3, #1
 80051fa:	9228      	str	r2, [sp, #160]	; 0xa0
 80051fc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005200:	4291      	cmp	r1, r2
 8005202:	d0f6      	beq.n	80051f2 <_vfprintf_r+0x1672>
 8005204:	2a39      	cmp	r2, #57	; 0x39
 8005206:	bf0b      	itete	eq
 8005208:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 800520a:	3201      	addne	r2, #1
 800520c:	7a92      	ldrbeq	r2, [r2, #10]
 800520e:	b2d2      	uxtbne	r2, r2
 8005210:	f803 2c01 	strb.w	r2, [r3, #-1]
 8005214:	e682      	b.n	8004f1c <_vfprintf_r+0x139c>
 8005216:	f418 7f00 	tst.w	r8, #512	; 0x200
 800521a:	f43f ad9f 	beq.w	8004d5c <_vfprintf_r+0x11dc>
 800521e:	9a05      	ldr	r2, [sp, #20]
 8005220:	701a      	strb	r2, [r3, #0]
 8005222:	4657      	mov	r7, sl
 8005224:	f7fe bf52 	b.w	80040cc <_vfprintf_r+0x54c>
 8005228:	aa2a      	add	r2, sp, #168	; 0xa8
 800522a:	9907      	ldr	r1, [sp, #28]
 800522c:	9803      	ldr	r0, [sp, #12]
 800522e:	f002 ffd5 	bl	80081dc <__sprint_r>
 8005232:	2800      	cmp	r0, #0
 8005234:	f47f aa1c 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8005238:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800523a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800523e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005242:	e571      	b.n	8004d28 <_vfprintf_r+0x11a8>
 8005244:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005246:	2b00      	cmp	r3, #0
 8005248:	f340 8164 	ble.w	8005514 <_vfprintf_r+0x1994>
 800524c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800524e:	f1b9 0f00 	cmp.w	r9, #0
 8005252:	f040 8103 	bne.w	800545c <_vfprintf_r+0x18dc>
 8005256:	07c6      	lsls	r6, r0, #31
 8005258:	f100 8100 	bmi.w	800545c <_vfprintf_r+0x18dc>
 800525c:	9309      	str	r3, [sp, #36]	; 0x24
 800525e:	2666      	movs	r6, #102	; 0x66
 8005260:	0543      	lsls	r3, r0, #21
 8005262:	f100 8086 	bmi.w	8005372 <_vfprintf_r+0x17f2>
 8005266:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005268:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800526c:	9304      	str	r3, [sp, #16]
 800526e:	e79e      	b.n	80051ae <_vfprintf_r+0x162e>
 8005270:	aa2a      	add	r2, sp, #168	; 0xa8
 8005272:	9907      	ldr	r1, [sp, #28]
 8005274:	9803      	ldr	r0, [sp, #12]
 8005276:	f002 ffb1 	bl	80081dc <__sprint_r>
 800527a:	2800      	cmp	r0, #0
 800527c:	f47f a9f8 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8005280:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005282:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005284:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005286:	1ad3      	subs	r3, r2, r3
 8005288:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800528c:	f7ff bb90 	b.w	80049b0 <_vfprintf_r+0xe30>
 8005290:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005292:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8005294:	4413      	add	r3, r2
 8005296:	9309      	str	r3, [sp, #36]	; 0x24
 8005298:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800529a:	2b00      	cmp	r3, #0
 800529c:	f340 8149 	ble.w	8005532 <_vfprintf_r+0x19b2>
 80052a0:	2667      	movs	r6, #103	; 0x67
 80052a2:	e7dd      	b.n	8005260 <_vfprintf_r+0x16e0>
 80052a4:	2330      	movs	r3, #48	; 0x30
 80052a6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80052aa:	2358      	movs	r3, #88	; 0x58
 80052ac:	e595      	b.n	8004dda <_vfprintf_r+0x125a>
 80052ae:	9803      	ldr	r0, [sp, #12]
 80052b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80052b2:	4649      	mov	r1, r9
 80052b4:	f002 ff92 	bl	80081dc <__sprint_r>
 80052b8:	2800      	cmp	r0, #0
 80052ba:	f47f a9e0 	bne.w	800467e <_vfprintf_r+0xafe>
 80052be:	f7fe bf0f 	b.w	80040e0 <_vfprintf_r+0x560>
 80052c2:	a824      	add	r0, sp, #144	; 0x90
 80052c4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80052c8:	f002 fe90 	bl	8007fec <frexp>
 80052cc:	2200      	movs	r2, #0
 80052ce:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80052d2:	ec51 0b10 	vmov	r0, r1, d0
 80052d6:	f7fb fc8f 	bl	8000bf8 <__aeabi_dmul>
 80052da:	2200      	movs	r2, #0
 80052dc:	2300      	movs	r3, #0
 80052de:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80052e2:	f7fb fef1 	bl	80010c8 <__aeabi_dcmpeq>
 80052e6:	b108      	cbz	r0, 80052ec <_vfprintf_r+0x176c>
 80052e8:	2301      	movs	r3, #1
 80052ea:	9324      	str	r3, [sp, #144]	; 0x90
 80052ec:	4b02      	ldr	r3, [pc, #8]	; (80052f8 <_vfprintf_r+0x1778>)
 80052ee:	9309      	str	r3, [sp, #36]	; 0x24
 80052f0:	e5ac      	b.n	8004e4c <_vfprintf_r+0x12cc>
 80052f2:	bf00      	nop
 80052f4:	080088d4 	.word	0x080088d4
 80052f8:	08008890 	.word	0x08008890
 80052fc:	425d      	negs	r5, r3
 80052fe:	3310      	adds	r3, #16
 8005300:	4bb9      	ldr	r3, [pc, #740]	; (80055e8 <_vfprintf_r+0x1a68>)
 8005302:	f280 8097 	bge.w	8005434 <_vfprintf_r+0x18b4>
 8005306:	4619      	mov	r1, r3
 8005308:	2610      	movs	r6, #16
 800530a:	4623      	mov	r3, r4
 800530c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005310:	460c      	mov	r4, r1
 8005312:	e005      	b.n	8005320 <_vfprintf_r+0x17a0>
 8005314:	f10b 0b08 	add.w	fp, fp, #8
 8005318:	3d10      	subs	r5, #16
 800531a:	2d10      	cmp	r5, #16
 800531c:	f340 8087 	ble.w	800542e <_vfprintf_r+0x18ae>
 8005320:	3201      	adds	r2, #1
 8005322:	3310      	adds	r3, #16
 8005324:	2a07      	cmp	r2, #7
 8005326:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800532a:	e9cb 4600 	strd	r4, r6, [fp]
 800532e:	ddf1      	ble.n	8005314 <_vfprintf_r+0x1794>
 8005330:	aa2a      	add	r2, sp, #168	; 0xa8
 8005332:	9907      	ldr	r1, [sp, #28]
 8005334:	4648      	mov	r0, r9
 8005336:	f002 ff51 	bl	80081dc <__sprint_r>
 800533a:	2800      	cmp	r0, #0
 800533c:	f47f a998 	bne.w	8004670 <_vfprintf_r+0xaf0>
 8005340:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005344:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005348:	e7e6      	b.n	8005318 <_vfprintf_r+0x1798>
 800534a:	f109 0101 	add.w	r1, r9, #1
 800534e:	9803      	ldr	r0, [sp, #12]
 8005350:	f001 fe80 	bl	8007054 <_malloc_r>
 8005354:	4607      	mov	r7, r0
 8005356:	2800      	cmp	r0, #0
 8005358:	f000 813b 	beq.w	80055d2 <_vfprintf_r+0x1a52>
 800535c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8005360:	930e      	str	r3, [sp, #56]	; 0x38
 8005362:	f026 0320 	bic.w	r3, r6, #32
 8005366:	9304      	str	r3, [sp, #16]
 8005368:	46a0      	mov	r8, r4
 800536a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800536c:	900a      	str	r0, [sp, #40]	; 0x28
 800536e:	e547      	b.n	8004e00 <_vfprintf_r+0x1280>
 8005370:	2667      	movs	r6, #103	; 0x67
 8005372:	981a      	ldr	r0, [sp, #104]	; 0x68
 8005374:	2200      	movs	r2, #0
 8005376:	920f      	str	r2, [sp, #60]	; 0x3c
 8005378:	9214      	str	r2, [sp, #80]	; 0x50
 800537a:	7803      	ldrb	r3, [r0, #0]
 800537c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800537e:	2bff      	cmp	r3, #255	; 0xff
 8005380:	d00c      	beq.n	800539c <_vfprintf_r+0x181c>
 8005382:	4293      	cmp	r3, r2
 8005384:	da0a      	bge.n	800539c <_vfprintf_r+0x181c>
 8005386:	7841      	ldrb	r1, [r0, #1]
 8005388:	1ad2      	subs	r2, r2, r3
 800538a:	b1a9      	cbz	r1, 80053b8 <_vfprintf_r+0x1838>
 800538c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800538e:	3301      	adds	r3, #1
 8005390:	9314      	str	r3, [sp, #80]	; 0x50
 8005392:	460b      	mov	r3, r1
 8005394:	2bff      	cmp	r3, #255	; 0xff
 8005396:	f100 0001 	add.w	r0, r0, #1
 800539a:	d1f2      	bne.n	8005382 <_vfprintf_r+0x1802>
 800539c:	9211      	str	r2, [sp, #68]	; 0x44
 800539e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80053a0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80053a2:	9909      	ldr	r1, [sp, #36]	; 0x24
 80053a4:	901a      	str	r0, [sp, #104]	; 0x68
 80053a6:	4413      	add	r3, r2
 80053a8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 80053aa:	fb02 1303 	mla	r3, r2, r3, r1
 80053ae:	9309      	str	r3, [sp, #36]	; 0x24
 80053b0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80053b4:	9304      	str	r3, [sp, #16]
 80053b6:	e485      	b.n	8004cc4 <_vfprintf_r+0x1144>
 80053b8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80053ba:	3101      	adds	r1, #1
 80053bc:	910f      	str	r1, [sp, #60]	; 0x3c
 80053be:	e7de      	b.n	800537e <_vfprintf_r+0x17fe>
 80053c0:	aa28      	add	r2, sp, #160	; 0xa0
 80053c2:	ab25      	add	r3, sp, #148	; 0x94
 80053c4:	e9cd 3200 	strd	r3, r2, [sp]
 80053c8:	2103      	movs	r1, #3
 80053ca:	ab24      	add	r3, sp, #144	; 0x90
 80053cc:	464a      	mov	r2, r9
 80053ce:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80053d2:	9803      	ldr	r0, [sp, #12]
 80053d4:	f000 fa5c 	bl	8005890 <_dtoa_r>
 80053d8:	464d      	mov	r5, r9
 80053da:	4607      	mov	r7, r0
 80053dc:	eb00 0409 	add.w	r4, r0, r9
 80053e0:	783b      	ldrb	r3, [r7, #0]
 80053e2:	2b30      	cmp	r3, #48	; 0x30
 80053e4:	f000 80be 	beq.w	8005564 <_vfprintf_r+0x19e4>
 80053e8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80053ea:	442c      	add	r4, r5
 80053ec:	2200      	movs	r2, #0
 80053ee:	2300      	movs	r3, #0
 80053f0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80053f4:	f7fb fe68 	bl	80010c8 <__aeabi_dcmpeq>
 80053f8:	b108      	cbz	r0, 80053fe <_vfprintf_r+0x187e>
 80053fa:	4623      	mov	r3, r4
 80053fc:	e413      	b.n	8004c26 <_vfprintf_r+0x10a6>
 80053fe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005400:	42a3      	cmp	r3, r4
 8005402:	f4bf ac10 	bcs.w	8004c26 <_vfprintf_r+0x10a6>
 8005406:	2130      	movs	r1, #48	; 0x30
 8005408:	1c5a      	adds	r2, r3, #1
 800540a:	9228      	str	r2, [sp, #160]	; 0xa0
 800540c:	7019      	strb	r1, [r3, #0]
 800540e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005410:	429c      	cmp	r4, r3
 8005412:	d8f9      	bhi.n	8005408 <_vfprintf_r+0x1888>
 8005414:	e407      	b.n	8004c26 <_vfprintf_r+0x10a6>
 8005416:	197c      	adds	r4, r7, r5
 8005418:	e7e8      	b.n	80053ec <_vfprintf_r+0x186c>
 800541a:	f1b9 0f00 	cmp.w	r9, #0
 800541e:	f000 8092 	beq.w	8005546 <_vfprintf_r+0x19c6>
 8005422:	900a      	str	r0, [sp, #40]	; 0x28
 8005424:	e4ec      	b.n	8004e00 <_vfprintf_r+0x1280>
 8005426:	900a      	str	r0, [sp, #40]	; 0x28
 8005428:	f04f 0906 	mov.w	r9, #6
 800542c:	e4e8      	b.n	8004e00 <_vfprintf_r+0x1280>
 800542e:	4621      	mov	r1, r4
 8005430:	461c      	mov	r4, r3
 8005432:	460b      	mov	r3, r1
 8005434:	3201      	adds	r2, #1
 8005436:	442c      	add	r4, r5
 8005438:	2a07      	cmp	r2, #7
 800543a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800543e:	e9cb 3500 	strd	r3, r5, [fp]
 8005442:	f300 80a9 	bgt.w	8005598 <_vfprintf_r+0x1a18>
 8005446:	f10b 0b08 	add.w	fp, fp, #8
 800544a:	e470      	b.n	8004d2e <_vfprintf_r+0x11ae>
 800544c:	469a      	mov	sl, r3
 800544e:	f7ff bb37 	b.w	8004ac0 <_vfprintf_r+0xf40>
 8005452:	2301      	movs	r3, #1
 8005454:	9324      	str	r3, [sp, #144]	; 0x90
 8005456:	4b65      	ldr	r3, [pc, #404]	; (80055ec <_vfprintf_r+0x1a6c>)
 8005458:	9309      	str	r3, [sp, #36]	; 0x24
 800545a:	e4f7      	b.n	8004e4c <_vfprintf_r+0x12cc>
 800545c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800545e:	4413      	add	r3, r2
 8005460:	444b      	add	r3, r9
 8005462:	9309      	str	r3, [sp, #36]	; 0x24
 8005464:	2666      	movs	r6, #102	; 0x66
 8005466:	e6fb      	b.n	8005260 <_vfprintf_r+0x16e0>
 8005468:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800546a:	9309      	str	r3, [sp, #36]	; 0x24
 800546c:	e694      	b.n	8005198 <_vfprintf_r+0x1618>
 800546e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8005472:	4664      	mov	r4, ip
 8005474:	4d5e      	ldr	r5, [pc, #376]	; (80055f0 <_vfprintf_r+0x1a70>)
 8005476:	e000      	b.n	800547a <_vfprintf_r+0x18fa>
 8005478:	4614      	mov	r4, r2
 800547a:	fba5 1203 	umull	r1, r2, r5, r3
 800547e:	08d2      	lsrs	r2, r2, #3
 8005480:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8005484:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8005488:	f103 0130 	add.w	r1, r3, #48	; 0x30
 800548c:	4613      	mov	r3, r2
 800548e:	2b09      	cmp	r3, #9
 8005490:	f804 1c01 	strb.w	r1, [r4, #-1]
 8005494:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005498:	dcee      	bgt.n	8005478 <_vfprintf_r+0x18f8>
 800549a:	3330      	adds	r3, #48	; 0x30
 800549c:	3c02      	subs	r4, #2
 800549e:	b2db      	uxtb	r3, r3
 80054a0:	45a4      	cmp	ip, r4
 80054a2:	f802 3c01 	strb.w	r3, [r2, #-1]
 80054a6:	f240 8090 	bls.w	80055ca <_vfprintf_r+0x1a4a>
 80054aa:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 80054ae:	4611      	mov	r1, r2
 80054b0:	e001      	b.n	80054b6 <_vfprintf_r+0x1936>
 80054b2:	f811 3b01 	ldrb.w	r3, [r1], #1
 80054b6:	f804 3b01 	strb.w	r3, [r4], #1
 80054ba:	458c      	cmp	ip, r1
 80054bc:	d1f9      	bne.n	80054b2 <_vfprintf_r+0x1932>
 80054be:	ab2a      	add	r3, sp, #168	; 0xa8
 80054c0:	1a9b      	subs	r3, r3, r2
 80054c2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80054c6:	4413      	add	r3, r2
 80054c8:	f7ff bbe3 	b.w	8004c92 <_vfprintf_r+0x1112>
 80054cc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80054ce:	4f49      	ldr	r7, [pc, #292]	; (80055f4 <_vfprintf_r+0x1a74>)
 80054d0:	2b00      	cmp	r3, #0
 80054d2:	bfb6      	itet	lt
 80054d4:	222d      	movlt	r2, #45	; 0x2d
 80054d6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80054da:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80054de:	4b46      	ldr	r3, [pc, #280]	; (80055f8 <_vfprintf_r+0x1a78>)
 80054e0:	f7fe bf02 	b.w	80042e8 <_vfprintf_r+0x768>
 80054e4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80054e8:	f7ff b8c9 	b.w	800467e <_vfprintf_r+0xafe>
 80054ec:	aa28      	add	r2, sp, #160	; 0xa0
 80054ee:	ab25      	add	r3, sp, #148	; 0x94
 80054f0:	e9cd 3200 	strd	r3, r2, [sp]
 80054f4:	2103      	movs	r1, #3
 80054f6:	ab24      	add	r3, sp, #144	; 0x90
 80054f8:	464a      	mov	r2, r9
 80054fa:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80054fe:	9803      	ldr	r0, [sp, #12]
 8005500:	f000 f9c6 	bl	8005890 <_dtoa_r>
 8005504:	464d      	mov	r5, r9
 8005506:	4607      	mov	r7, r0
 8005508:	2e46      	cmp	r6, #70	; 0x46
 800550a:	eb07 0405 	add.w	r4, r7, r5
 800550e:	f43f af67 	beq.w	80053e0 <_vfprintf_r+0x1860>
 8005512:	e76b      	b.n	80053ec <_vfprintf_r+0x186c>
 8005514:	f1b9 0f00 	cmp.w	r9, #0
 8005518:	d131      	bne.n	800557e <_vfprintf_r+0x19fe>
 800551a:	07c5      	lsls	r5, r0, #31
 800551c:	d42f      	bmi.n	800557e <_vfprintf_r+0x19fe>
 800551e:	2301      	movs	r3, #1
 8005520:	9304      	str	r3, [sp, #16]
 8005522:	9309      	str	r3, [sp, #36]	; 0x24
 8005524:	2666      	movs	r6, #102	; 0x66
 8005526:	e642      	b.n	80051ae <_vfprintf_r+0x162e>
 8005528:	07c3      	lsls	r3, r0, #31
 800552a:	f57f abbf 	bpl.w	8004cac <_vfprintf_r+0x112c>
 800552e:	f7ff bbb9 	b.w	8004ca4 <_vfprintf_r+0x1124>
 8005532:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005534:	f1c3 0301 	rsb	r3, r3, #1
 8005538:	441a      	add	r2, r3
 800553a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800553e:	9209      	str	r2, [sp, #36]	; 0x24
 8005540:	9304      	str	r3, [sp, #16]
 8005542:	2667      	movs	r6, #103	; 0x67
 8005544:	e633      	b.n	80051ae <_vfprintf_r+0x162e>
 8005546:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800554a:	f04f 0901 	mov.w	r9, #1
 800554e:	e457      	b.n	8004e00 <_vfprintf_r+0x1280>
 8005550:	465a      	mov	r2, fp
 8005552:	e511      	b.n	8004f78 <_vfprintf_r+0x13f8>
 8005554:	2e47      	cmp	r6, #71	; 0x47
 8005556:	f47f af5e 	bne.w	8005416 <_vfprintf_r+0x1896>
 800555a:	f018 0f01 	tst.w	r8, #1
 800555e:	f43f ab61 	beq.w	8004c24 <_vfprintf_r+0x10a4>
 8005562:	e7d1      	b.n	8005508 <_vfprintf_r+0x1988>
 8005564:	2200      	movs	r2, #0
 8005566:	2300      	movs	r3, #0
 8005568:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800556c:	f7fb fdac 	bl	80010c8 <__aeabi_dcmpeq>
 8005570:	2800      	cmp	r0, #0
 8005572:	f47f af39 	bne.w	80053e8 <_vfprintf_r+0x1868>
 8005576:	f1c5 0501 	rsb	r5, r5, #1
 800557a:	9524      	str	r5, [sp, #144]	; 0x90
 800557c:	e735      	b.n	80053ea <_vfprintf_r+0x186a>
 800557e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8005580:	3301      	adds	r3, #1
 8005582:	444b      	add	r3, r9
 8005584:	9309      	str	r3, [sp, #36]	; 0x24
 8005586:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800558a:	9304      	str	r3, [sp, #16]
 800558c:	2666      	movs	r6, #102	; 0x66
 800558e:	e60e      	b.n	80051ae <_vfprintf_r+0x162e>
 8005590:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8005594:	f7ff bb7a 	b.w	8004c8c <_vfprintf_r+0x110c>
 8005598:	aa2a      	add	r2, sp, #168	; 0xa8
 800559a:	9907      	ldr	r1, [sp, #28]
 800559c:	9803      	ldr	r0, [sp, #12]
 800559e:	f002 fe1d 	bl	80081dc <__sprint_r>
 80055a2:	2800      	cmp	r0, #0
 80055a4:	f47f a864 	bne.w	8004670 <_vfprintf_r+0xaf0>
 80055a8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80055ac:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80055b0:	f7ff bbbd 	b.w	8004d2e <_vfprintf_r+0x11ae>
 80055b4:	9908      	ldr	r1, [sp, #32]
 80055b6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80055ba:	680b      	ldr	r3, [r1, #0]
 80055bc:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80055c0:	1d0b      	adds	r3, r1, #4
 80055c2:	4692      	mov	sl, r2
 80055c4:	9308      	str	r3, [sp, #32]
 80055c6:	f7fe bb59 	b.w	8003c7c <_vfprintf_r+0xfc>
 80055ca:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80055ce:	f7ff bb60 	b.w	8004c92 <_vfprintf_r+0x1112>
 80055d2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80055d6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80055da:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80055de:	f8a9 300c 	strh.w	r3, [r9, #12]
 80055e2:	f7ff b84c 	b.w	800467e <_vfprintf_r+0xafe>
 80055e6:	bf00      	nop
 80055e8:	080088d4 	.word	0x080088d4
 80055ec:	080088a4 	.word	0x080088a4
 80055f0:	cccccccd 	.word	0xcccccccd
 80055f4:	0800888c 	.word	0x0800888c
 80055f8:	08008888 	.word	0x08008888

080055fc <__sbprintf>:
 80055fc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005600:	460c      	mov	r4, r1
 8005602:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8005606:	8989      	ldrh	r1, [r1, #12]
 8005608:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800560a:	89e5      	ldrh	r5, [r4, #14]
 800560c:	9619      	str	r6, [sp, #100]	; 0x64
 800560e:	f021 0102 	bic.w	r1, r1, #2
 8005612:	4606      	mov	r6, r0
 8005614:	69e0      	ldr	r0, [r4, #28]
 8005616:	f8ad 100c 	strh.w	r1, [sp, #12]
 800561a:	4617      	mov	r7, r2
 800561c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8005620:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8005622:	f8ad 500e 	strh.w	r5, [sp, #14]
 8005626:	4698      	mov	r8, r3
 8005628:	ad1a      	add	r5, sp, #104	; 0x68
 800562a:	2300      	movs	r3, #0
 800562c:	9007      	str	r0, [sp, #28]
 800562e:	a816      	add	r0, sp, #88	; 0x58
 8005630:	9209      	str	r2, [sp, #36]	; 0x24
 8005632:	9306      	str	r3, [sp, #24]
 8005634:	9500      	str	r5, [sp, #0]
 8005636:	9504      	str	r5, [sp, #16]
 8005638:	9102      	str	r1, [sp, #8]
 800563a:	9105      	str	r1, [sp, #20]
 800563c:	f001 fc8a 	bl	8006f54 <__retarget_lock_init_recursive>
 8005640:	4643      	mov	r3, r8
 8005642:	463a      	mov	r2, r7
 8005644:	4669      	mov	r1, sp
 8005646:	4630      	mov	r0, r6
 8005648:	f7fe fa9a 	bl	8003b80 <_vfprintf_r>
 800564c:	1e05      	subs	r5, r0, #0
 800564e:	db07      	blt.n	8005660 <__sbprintf+0x64>
 8005650:	4630      	mov	r0, r6
 8005652:	4669      	mov	r1, sp
 8005654:	f001 f8d6 	bl	8006804 <_fflush_r>
 8005658:	2800      	cmp	r0, #0
 800565a:	bf18      	it	ne
 800565c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8005660:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8005664:	065b      	lsls	r3, r3, #25
 8005666:	d503      	bpl.n	8005670 <__sbprintf+0x74>
 8005668:	89a3      	ldrh	r3, [r4, #12]
 800566a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800566e:	81a3      	strh	r3, [r4, #12]
 8005670:	9816      	ldr	r0, [sp, #88]	; 0x58
 8005672:	f001 fc71 	bl	8006f58 <__retarget_lock_close_recursive>
 8005676:	4628      	mov	r0, r5
 8005678:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800567c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08005680 <__swsetup_r>:
 8005680:	b538      	push	{r3, r4, r5, lr}
 8005682:	4b31      	ldr	r3, [pc, #196]	; (8005748 <__swsetup_r+0xc8>)
 8005684:	681b      	ldr	r3, [r3, #0]
 8005686:	4605      	mov	r5, r0
 8005688:	460c      	mov	r4, r1
 800568a:	b113      	cbz	r3, 8005692 <__swsetup_r+0x12>
 800568c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800568e:	2a00      	cmp	r2, #0
 8005690:	d03a      	beq.n	8005708 <__swsetup_r+0x88>
 8005692:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005696:	b293      	uxth	r3, r2
 8005698:	0718      	lsls	r0, r3, #28
 800569a:	d50c      	bpl.n	80056b6 <__swsetup_r+0x36>
 800569c:	6920      	ldr	r0, [r4, #16]
 800569e:	b1a8      	cbz	r0, 80056cc <__swsetup_r+0x4c>
 80056a0:	f013 0201 	ands.w	r2, r3, #1
 80056a4:	d020      	beq.n	80056e8 <__swsetup_r+0x68>
 80056a6:	6963      	ldr	r3, [r4, #20]
 80056a8:	2200      	movs	r2, #0
 80056aa:	425b      	negs	r3, r3
 80056ac:	61a3      	str	r3, [r4, #24]
 80056ae:	60a2      	str	r2, [r4, #8]
 80056b0:	b300      	cbz	r0, 80056f4 <__swsetup_r+0x74>
 80056b2:	2000      	movs	r0, #0
 80056b4:	bd38      	pop	{r3, r4, r5, pc}
 80056b6:	06d9      	lsls	r1, r3, #27
 80056b8:	d53e      	bpl.n	8005738 <__swsetup_r+0xb8>
 80056ba:	0758      	lsls	r0, r3, #29
 80056bc:	d428      	bmi.n	8005710 <__swsetup_r+0x90>
 80056be:	6920      	ldr	r0, [r4, #16]
 80056c0:	f042 0308 	orr.w	r3, r2, #8
 80056c4:	81a3      	strh	r3, [r4, #12]
 80056c6:	b29b      	uxth	r3, r3
 80056c8:	2800      	cmp	r0, #0
 80056ca:	d1e9      	bne.n	80056a0 <__swsetup_r+0x20>
 80056cc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80056d0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80056d4:	d0e4      	beq.n	80056a0 <__swsetup_r+0x20>
 80056d6:	4628      	mov	r0, r5
 80056d8:	4621      	mov	r1, r4
 80056da:	f001 fc71 	bl	8006fc0 <__smakebuf_r>
 80056de:	89a3      	ldrh	r3, [r4, #12]
 80056e0:	6920      	ldr	r0, [r4, #16]
 80056e2:	f013 0201 	ands.w	r2, r3, #1
 80056e6:	d1de      	bne.n	80056a6 <__swsetup_r+0x26>
 80056e8:	0799      	lsls	r1, r3, #30
 80056ea:	bf58      	it	pl
 80056ec:	6962      	ldrpl	r2, [r4, #20]
 80056ee:	60a2      	str	r2, [r4, #8]
 80056f0:	2800      	cmp	r0, #0
 80056f2:	d1de      	bne.n	80056b2 <__swsetup_r+0x32>
 80056f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056f8:	061a      	lsls	r2, r3, #24
 80056fa:	d5db      	bpl.n	80056b4 <__swsetup_r+0x34>
 80056fc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005700:	81a3      	strh	r3, [r4, #12]
 8005702:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005706:	bd38      	pop	{r3, r4, r5, pc}
 8005708:	4618      	mov	r0, r3
 800570a:	f001 f8d7 	bl	80068bc <__sinit>
 800570e:	e7c0      	b.n	8005692 <__swsetup_r+0x12>
 8005710:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005712:	b151      	cbz	r1, 800572a <__swsetup_r+0xaa>
 8005714:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005718:	4299      	cmp	r1, r3
 800571a:	d004      	beq.n	8005726 <__swsetup_r+0xa6>
 800571c:	4628      	mov	r0, r5
 800571e:	f001 f96f 	bl	8006a00 <_free_r>
 8005722:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005726:	2300      	movs	r3, #0
 8005728:	6323      	str	r3, [r4, #48]	; 0x30
 800572a:	2300      	movs	r3, #0
 800572c:	6920      	ldr	r0, [r4, #16]
 800572e:	6063      	str	r3, [r4, #4]
 8005730:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8005734:	6020      	str	r0, [r4, #0]
 8005736:	e7c3      	b.n	80056c0 <__swsetup_r+0x40>
 8005738:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800573c:	2309      	movs	r3, #9
 800573e:	602b      	str	r3, [r5, #0]
 8005740:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005744:	81a2      	strh	r2, [r4, #12]
 8005746:	bd38      	pop	{r3, r4, r5, pc}
 8005748:	20000018 	.word	0x20000018

0800574c <register_fini>:
 800574c:	4b02      	ldr	r3, [pc, #8]	; (8005758 <register_fini+0xc>)
 800574e:	b113      	cbz	r3, 8005756 <register_fini+0xa>
 8005750:	4802      	ldr	r0, [pc, #8]	; (800575c <register_fini+0x10>)
 8005752:	f000 b805 	b.w	8005760 <atexit>
 8005756:	4770      	bx	lr
 8005758:	00000000 	.word	0x00000000
 800575c:	0800692d 	.word	0x0800692d

08005760 <atexit>:
 8005760:	2300      	movs	r3, #0
 8005762:	4601      	mov	r1, r0
 8005764:	461a      	mov	r2, r3
 8005766:	4618      	mov	r0, r3
 8005768:	f002 bd58 	b.w	800821c <__register_exitproc>

0800576c <quorem>:
 800576c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005770:	6903      	ldr	r3, [r0, #16]
 8005772:	690f      	ldr	r7, [r1, #16]
 8005774:	42bb      	cmp	r3, r7
 8005776:	b083      	sub	sp, #12
 8005778:	f2c0 8086 	blt.w	8005888 <quorem+0x11c>
 800577c:	3f01      	subs	r7, #1
 800577e:	f101 0914 	add.w	r9, r1, #20
 8005782:	f100 0a14 	add.w	sl, r0, #20
 8005786:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800578a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800578e:	00bc      	lsls	r4, r7, #2
 8005790:	3201      	adds	r2, #1
 8005792:	fbb3 f8f2 	udiv	r8, r3, r2
 8005796:	eb0a 0304 	add.w	r3, sl, r4
 800579a:	9400      	str	r4, [sp, #0]
 800579c:	eb09 0b04 	add.w	fp, r9, r4
 80057a0:	9301      	str	r3, [sp, #4]
 80057a2:	f1b8 0f00 	cmp.w	r8, #0
 80057a6:	d038      	beq.n	800581a <quorem+0xae>
 80057a8:	2500      	movs	r5, #0
 80057aa:	462e      	mov	r6, r5
 80057ac:	46ce      	mov	lr, r9
 80057ae:	46d4      	mov	ip, sl
 80057b0:	f85e 4b04 	ldr.w	r4, [lr], #4
 80057b4:	f8dc 3000 	ldr.w	r3, [ip]
 80057b8:	b2a2      	uxth	r2, r4
 80057ba:	fb08 5502 	mla	r5, r8, r2, r5
 80057be:	0c22      	lsrs	r2, r4, #16
 80057c0:	0c2c      	lsrs	r4, r5, #16
 80057c2:	fb08 4202 	mla	r2, r8, r2, r4
 80057c6:	b2ad      	uxth	r5, r5
 80057c8:	1b75      	subs	r5, r6, r5
 80057ca:	b296      	uxth	r6, r2
 80057cc:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80057d0:	fa15 f383 	uxtah	r3, r5, r3
 80057d4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80057d8:	b29b      	uxth	r3, r3
 80057da:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80057de:	45f3      	cmp	fp, lr
 80057e0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80057e4:	f84c 3b04 	str.w	r3, [ip], #4
 80057e8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80057ec:	d2e0      	bcs.n	80057b0 <quorem+0x44>
 80057ee:	9b00      	ldr	r3, [sp, #0]
 80057f0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80057f4:	b98b      	cbnz	r3, 800581a <quorem+0xae>
 80057f6:	9a01      	ldr	r2, [sp, #4]
 80057f8:	1f13      	subs	r3, r2, #4
 80057fa:	459a      	cmp	sl, r3
 80057fc:	d20c      	bcs.n	8005818 <quorem+0xac>
 80057fe:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8005802:	b94b      	cbnz	r3, 8005818 <quorem+0xac>
 8005804:	f1a2 0308 	sub.w	r3, r2, #8
 8005808:	e002      	b.n	8005810 <quorem+0xa4>
 800580a:	681a      	ldr	r2, [r3, #0]
 800580c:	3b04      	subs	r3, #4
 800580e:	b91a      	cbnz	r2, 8005818 <quorem+0xac>
 8005810:	459a      	cmp	sl, r3
 8005812:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8005816:	d3f8      	bcc.n	800580a <quorem+0x9e>
 8005818:	6107      	str	r7, [r0, #16]
 800581a:	4604      	mov	r4, r0
 800581c:	f002 f944 	bl	8007aa8 <__mcmp>
 8005820:	2800      	cmp	r0, #0
 8005822:	db2d      	blt.n	8005880 <quorem+0x114>
 8005824:	f108 0801 	add.w	r8, r8, #1
 8005828:	4655      	mov	r5, sl
 800582a:	2300      	movs	r3, #0
 800582c:	f859 1b04 	ldr.w	r1, [r9], #4
 8005830:	6828      	ldr	r0, [r5, #0]
 8005832:	b28a      	uxth	r2, r1
 8005834:	1a9a      	subs	r2, r3, r2
 8005836:	0c0b      	lsrs	r3, r1, #16
 8005838:	fa12 f280 	uxtah	r2, r2, r0
 800583c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8005840:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8005844:	b292      	uxth	r2, r2
 8005846:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800584a:	45cb      	cmp	fp, r9
 800584c:	f845 2b04 	str.w	r2, [r5], #4
 8005850:	ea4f 4323 	mov.w	r3, r3, asr #16
 8005854:	d2ea      	bcs.n	800582c <quorem+0xc0>
 8005856:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800585a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800585e:	b97a      	cbnz	r2, 8005880 <quorem+0x114>
 8005860:	1f1a      	subs	r2, r3, #4
 8005862:	4592      	cmp	sl, r2
 8005864:	d20b      	bcs.n	800587e <quorem+0x112>
 8005866:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800586a:	b942      	cbnz	r2, 800587e <quorem+0x112>
 800586c:	3b08      	subs	r3, #8
 800586e:	e002      	b.n	8005876 <quorem+0x10a>
 8005870:	681a      	ldr	r2, [r3, #0]
 8005872:	3b04      	subs	r3, #4
 8005874:	b91a      	cbnz	r2, 800587e <quorem+0x112>
 8005876:	459a      	cmp	sl, r3
 8005878:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800587c:	d3f8      	bcc.n	8005870 <quorem+0x104>
 800587e:	6127      	str	r7, [r4, #16]
 8005880:	4640      	mov	r0, r8
 8005882:	b003      	add	sp, #12
 8005884:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005888:	2000      	movs	r0, #0
 800588a:	b003      	add	sp, #12
 800588c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08005890 <_dtoa_r>:
 8005890:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005894:	ec55 4b10 	vmov	r4, r5, d0
 8005898:	b09b      	sub	sp, #108	; 0x6c
 800589a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800589c:	9102      	str	r1, [sp, #8]
 800589e:	4681      	mov	r9, r0
 80058a0:	9207      	str	r2, [sp, #28]
 80058a2:	9305      	str	r3, [sp, #20]
 80058a4:	e9cd 4500 	strd	r4, r5, [sp]
 80058a8:	b156      	cbz	r6, 80058c0 <_dtoa_r+0x30>
 80058aa:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80058ac:	6072      	str	r2, [r6, #4]
 80058ae:	2301      	movs	r3, #1
 80058b0:	4093      	lsls	r3, r2
 80058b2:	60b3      	str	r3, [r6, #8]
 80058b4:	4631      	mov	r1, r6
 80058b6:	f001 ff07 	bl	80076c8 <_Bfree>
 80058ba:	2300      	movs	r3, #0
 80058bc:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80058c0:	f1b5 0800 	subs.w	r8, r5, #0
 80058c4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80058c6:	bfb4      	ite	lt
 80058c8:	2301      	movlt	r3, #1
 80058ca:	2300      	movge	r3, #0
 80058cc:	6013      	str	r3, [r2, #0]
 80058ce:	4b76      	ldr	r3, [pc, #472]	; (8005aa8 <_dtoa_r+0x218>)
 80058d0:	bfbc      	itt	lt
 80058d2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80058d6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80058da:	ea33 0308 	bics.w	r3, r3, r8
 80058de:	f000 80a6 	beq.w	8005a2e <_dtoa_r+0x19e>
 80058e2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80058e6:	2200      	movs	r2, #0
 80058e8:	2300      	movs	r3, #0
 80058ea:	4630      	mov	r0, r6
 80058ec:	4639      	mov	r1, r7
 80058ee:	f7fb fbeb 	bl	80010c8 <__aeabi_dcmpeq>
 80058f2:	4605      	mov	r5, r0
 80058f4:	b178      	cbz	r0, 8005916 <_dtoa_r+0x86>
 80058f6:	9a05      	ldr	r2, [sp, #20]
 80058f8:	2301      	movs	r3, #1
 80058fa:	6013      	str	r3, [r2, #0]
 80058fc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80058fe:	2b00      	cmp	r3, #0
 8005900:	f000 80c0 	beq.w	8005a84 <_dtoa_r+0x1f4>
 8005904:	4b69      	ldr	r3, [pc, #420]	; (8005aac <_dtoa_r+0x21c>)
 8005906:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8005908:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800590c:	6013      	str	r3, [r2, #0]
 800590e:	4658      	mov	r0, fp
 8005910:	b01b      	add	sp, #108	; 0x6c
 8005912:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005916:	aa18      	add	r2, sp, #96	; 0x60
 8005918:	a919      	add	r1, sp, #100	; 0x64
 800591a:	ec47 6b10 	vmov	d0, r6, r7
 800591e:	4648      	mov	r0, r9
 8005920:	f002 f954 	bl	8007bcc <__d2b>
 8005924:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8005928:	4682      	mov	sl, r0
 800592a:	f040 80a0 	bne.w	8005a6e <_dtoa_r+0x1de>
 800592e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8005932:	442c      	add	r4, r5
 8005934:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8005938:	2b20      	cmp	r3, #32
 800593a:	f340 842c 	ble.w	8006196 <_dtoa_r+0x906>
 800593e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8005942:	fa08 f803 	lsl.w	r8, r8, r3
 8005946:	9b00      	ldr	r3, [sp, #0]
 8005948:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800594c:	fa23 f000 	lsr.w	r0, r3, r0
 8005950:	ea48 0000 	orr.w	r0, r8, r0
 8005954:	f7fb f8d6 	bl	8000b04 <__aeabi_ui2d>
 8005958:	2301      	movs	r3, #1
 800595a:	4606      	mov	r6, r0
 800595c:	3c01      	subs	r4, #1
 800595e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8005962:	930f      	str	r3, [sp, #60]	; 0x3c
 8005964:	4630      	mov	r0, r6
 8005966:	4639      	mov	r1, r7
 8005968:	2200      	movs	r2, #0
 800596a:	4b51      	ldr	r3, [pc, #324]	; (8005ab0 <_dtoa_r+0x220>)
 800596c:	f7fa ff8c 	bl	8000888 <__aeabi_dsub>
 8005970:	a347      	add	r3, pc, #284	; (adr r3, 8005a90 <_dtoa_r+0x200>)
 8005972:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005976:	f7fb f93f 	bl	8000bf8 <__aeabi_dmul>
 800597a:	a347      	add	r3, pc, #284	; (adr r3, 8005a98 <_dtoa_r+0x208>)
 800597c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005980:	f7fa ff84 	bl	800088c <__adddf3>
 8005984:	4606      	mov	r6, r0
 8005986:	4620      	mov	r0, r4
 8005988:	460f      	mov	r7, r1
 800598a:	f7fb f8cb 	bl	8000b24 <__aeabi_i2d>
 800598e:	a344      	add	r3, pc, #272	; (adr r3, 8005aa0 <_dtoa_r+0x210>)
 8005990:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005994:	f7fb f930 	bl	8000bf8 <__aeabi_dmul>
 8005998:	4602      	mov	r2, r0
 800599a:	460b      	mov	r3, r1
 800599c:	4630      	mov	r0, r6
 800599e:	4639      	mov	r1, r7
 80059a0:	f7fa ff74 	bl	800088c <__adddf3>
 80059a4:	4606      	mov	r6, r0
 80059a6:	460f      	mov	r7, r1
 80059a8:	f7fb fbd6 	bl	8001158 <__aeabi_d2iz>
 80059ac:	2200      	movs	r2, #0
 80059ae:	9006      	str	r0, [sp, #24]
 80059b0:	2300      	movs	r3, #0
 80059b2:	4630      	mov	r0, r6
 80059b4:	4639      	mov	r1, r7
 80059b6:	f7fb fb91 	bl	80010dc <__aeabi_dcmplt>
 80059ba:	2800      	cmp	r0, #0
 80059bc:	f040 8273 	bne.w	8005ea6 <_dtoa_r+0x616>
 80059c0:	9e06      	ldr	r6, [sp, #24]
 80059c2:	2e16      	cmp	r6, #22
 80059c4:	f200 825d 	bhi.w	8005e82 <_dtoa_r+0x5f2>
 80059c8:	4b3a      	ldr	r3, [pc, #232]	; (8005ab4 <_dtoa_r+0x224>)
 80059ca:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80059ce:	e9d3 0100 	ldrd	r0, r1, [r3]
 80059d2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80059d6:	f7fb fb9f 	bl	8001118 <__aeabi_dcmpgt>
 80059da:	2800      	cmp	r0, #0
 80059dc:	f000 83d7 	beq.w	800618e <_dtoa_r+0x8fe>
 80059e0:	1e73      	subs	r3, r6, #1
 80059e2:	9306      	str	r3, [sp, #24]
 80059e4:	2300      	movs	r3, #0
 80059e6:	930d      	str	r3, [sp, #52]	; 0x34
 80059e8:	1b2c      	subs	r4, r5, r4
 80059ea:	f1b4 0801 	subs.w	r8, r4, #1
 80059ee:	f100 8254 	bmi.w	8005e9a <_dtoa_r+0x60a>
 80059f2:	2300      	movs	r3, #0
 80059f4:	9308      	str	r3, [sp, #32]
 80059f6:	9b06      	ldr	r3, [sp, #24]
 80059f8:	2b00      	cmp	r3, #0
 80059fa:	f2c0 8245 	blt.w	8005e88 <_dtoa_r+0x5f8>
 80059fe:	4498      	add	r8, r3
 8005a00:	930c      	str	r3, [sp, #48]	; 0x30
 8005a02:	2300      	movs	r3, #0
 8005a04:	930b      	str	r3, [sp, #44]	; 0x2c
 8005a06:	9b02      	ldr	r3, [sp, #8]
 8005a08:	2b09      	cmp	r3, #9
 8005a0a:	d85b      	bhi.n	8005ac4 <_dtoa_r+0x234>
 8005a0c:	2b05      	cmp	r3, #5
 8005a0e:	f340 83c0 	ble.w	8006192 <_dtoa_r+0x902>
 8005a12:	3b04      	subs	r3, #4
 8005a14:	9302      	str	r3, [sp, #8]
 8005a16:	2500      	movs	r5, #0
 8005a18:	9b02      	ldr	r3, [sp, #8]
 8005a1a:	3b02      	subs	r3, #2
 8005a1c:	2b03      	cmp	r3, #3
 8005a1e:	f200 8498 	bhi.w	8006352 <_dtoa_r+0xac2>
 8005a22:	e8df f013 	tbh	[pc, r3, lsl #1]
 8005a26:	03df      	.short	0x03df
 8005a28:	03e803bf 	.word	0x03e803bf
 8005a2c:	04f5      	.short	0x04f5
 8005a2e:	9a05      	ldr	r2, [sp, #20]
 8005a30:	f242 730f 	movw	r3, #9999	; 0x270f
 8005a34:	6013      	str	r3, [r2, #0]
 8005a36:	9b00      	ldr	r3, [sp, #0]
 8005a38:	b983      	cbnz	r3, 8005a5c <_dtoa_r+0x1cc>
 8005a3a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8005a3e:	b96b      	cbnz	r3, 8005a5c <_dtoa_r+0x1cc>
 8005a40:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005a42:	f8df b074 	ldr.w	fp, [pc, #116]	; 8005ab8 <_dtoa_r+0x228>
 8005a46:	2b00      	cmp	r3, #0
 8005a48:	f43f af61 	beq.w	800590e <_dtoa_r+0x7e>
 8005a4c:	f10b 0308 	add.w	r3, fp, #8
 8005a50:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8005a52:	4658      	mov	r0, fp
 8005a54:	6013      	str	r3, [r2, #0]
 8005a56:	b01b      	add	sp, #108	; 0x6c
 8005a58:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a5c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005a5e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8005abc <_dtoa_r+0x22c>
 8005a62:	2b00      	cmp	r3, #0
 8005a64:	f43f af53 	beq.w	800590e <_dtoa_r+0x7e>
 8005a68:	f10b 0303 	add.w	r3, fp, #3
 8005a6c:	e7f0      	b.n	8005a50 <_dtoa_r+0x1c0>
 8005a6e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8005a72:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8005a76:	950f      	str	r5, [sp, #60]	; 0x3c
 8005a78:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8005a7c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8005a80:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8005a82:	e76f      	b.n	8005964 <_dtoa_r+0xd4>
 8005a84:	f8df b038 	ldr.w	fp, [pc, #56]	; 8005ac0 <_dtoa_r+0x230>
 8005a88:	4658      	mov	r0, fp
 8005a8a:	b01b      	add	sp, #108	; 0x6c
 8005a8c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a90:	636f4361 	.word	0x636f4361
 8005a94:	3fd287a7 	.word	0x3fd287a7
 8005a98:	8b60c8b3 	.word	0x8b60c8b3
 8005a9c:	3fc68a28 	.word	0x3fc68a28
 8005aa0:	509f79fb 	.word	0x509f79fb
 8005aa4:	3fd34413 	.word	0x3fd34413
 8005aa8:	7ff00000 	.word	0x7ff00000
 8005aac:	080088c1 	.word	0x080088c1
 8005ab0:	3ff80000 	.word	0x3ff80000
 8005ab4:	08008920 	.word	0x08008920
 8005ab8:	080088e4 	.word	0x080088e4
 8005abc:	080088f0 	.word	0x080088f0
 8005ac0:	080088c0 	.word	0x080088c0
 8005ac4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8005ac8:	2501      	movs	r5, #1
 8005aca:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8005ace:	2300      	movs	r3, #0
 8005ad0:	9302      	str	r3, [sp, #8]
 8005ad2:	9307      	str	r3, [sp, #28]
 8005ad4:	2100      	movs	r1, #0
 8005ad6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8005ada:	940e      	str	r4, [sp, #56]	; 0x38
 8005adc:	4648      	mov	r0, r9
 8005ade:	f001 fdcd 	bl	800767c <_Balloc>
 8005ae2:	2c0e      	cmp	r4, #14
 8005ae4:	4683      	mov	fp, r0
 8005ae6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005aea:	f200 80fb 	bhi.w	8005ce4 <_dtoa_r+0x454>
 8005aee:	2d00      	cmp	r5, #0
 8005af0:	f000 80f8 	beq.w	8005ce4 <_dtoa_r+0x454>
 8005af4:	ed9d 7b00 	vldr	d7, [sp]
 8005af8:	9906      	ldr	r1, [sp, #24]
 8005afa:	2900      	cmp	r1, #0
 8005afc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8005b00:	f340 83e5 	ble.w	80062ce <_dtoa_r+0xa3e>
 8005b04:	4b9d      	ldr	r3, [pc, #628]	; (8005d7c <_dtoa_r+0x4ec>)
 8005b06:	f001 020f 	and.w	r2, r1, #15
 8005b0a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005b0e:	ed93 7b00 	vldr	d7, [r3]
 8005b12:	110c      	asrs	r4, r1, #4
 8005b14:	06e2      	lsls	r2, r4, #27
 8005b16:	ed8d 7b00 	vstr	d7, [sp]
 8005b1a:	f140 849e 	bpl.w	800645a <_dtoa_r+0xbca>
 8005b1e:	4b98      	ldr	r3, [pc, #608]	; (8005d80 <_dtoa_r+0x4f0>)
 8005b20:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005b24:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8005b28:	f7fb f990 	bl	8000e4c <__aeabi_ddiv>
 8005b2c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8005b30:	f004 040f 	and.w	r4, r4, #15
 8005b34:	2603      	movs	r6, #3
 8005b36:	b17c      	cbz	r4, 8005b58 <_dtoa_r+0x2c8>
 8005b38:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005b3c:	4d90      	ldr	r5, [pc, #576]	; (8005d80 <_dtoa_r+0x4f0>)
 8005b3e:	07e3      	lsls	r3, r4, #31
 8005b40:	d504      	bpl.n	8005b4c <_dtoa_r+0x2bc>
 8005b42:	e9d5 2300 	ldrd	r2, r3, [r5]
 8005b46:	f7fb f857 	bl	8000bf8 <__aeabi_dmul>
 8005b4a:	3601      	adds	r6, #1
 8005b4c:	1064      	asrs	r4, r4, #1
 8005b4e:	f105 0508 	add.w	r5, r5, #8
 8005b52:	d1f4      	bne.n	8005b3e <_dtoa_r+0x2ae>
 8005b54:	e9cd 0100 	strd	r0, r1, [sp]
 8005b58:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005b5c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005b60:	f7fb f974 	bl	8000e4c <__aeabi_ddiv>
 8005b64:	e9cd 0100 	strd	r0, r1, [sp]
 8005b68:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005b6a:	b143      	cbz	r3, 8005b7e <_dtoa_r+0x2ee>
 8005b6c:	2200      	movs	r2, #0
 8005b6e:	4b85      	ldr	r3, [pc, #532]	; (8005d84 <_dtoa_r+0x4f4>)
 8005b70:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005b74:	f7fb fab2 	bl	80010dc <__aeabi_dcmplt>
 8005b78:	2800      	cmp	r0, #0
 8005b7a:	f040 84ff 	bne.w	800657c <_dtoa_r+0xcec>
 8005b7e:	4630      	mov	r0, r6
 8005b80:	f7fa ffd0 	bl	8000b24 <__aeabi_i2d>
 8005b84:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005b88:	f7fb f836 	bl	8000bf8 <__aeabi_dmul>
 8005b8c:	4b7e      	ldr	r3, [pc, #504]	; (8005d88 <_dtoa_r+0x4f8>)
 8005b8e:	2200      	movs	r2, #0
 8005b90:	f7fa fe7c 	bl	800088c <__adddf3>
 8005b94:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005b96:	4606      	mov	r6, r0
 8005b98:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005b9c:	2b00      	cmp	r3, #0
 8005b9e:	f000 841c 	beq.w	80063da <_dtoa_r+0xb4a>
 8005ba2:	9b06      	ldr	r3, [sp, #24]
 8005ba4:	9316      	str	r3, [sp, #88]	; 0x58
 8005ba6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005ba8:	9312      	str	r3, [sp, #72]	; 0x48
 8005baa:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005bae:	f7fb fad3 	bl	8001158 <__aeabi_d2iz>
 8005bb2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005bb4:	4b71      	ldr	r3, [pc, #452]	; (8005d7c <_dtoa_r+0x4ec>)
 8005bb6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005bba:	ed13 7b02 	vldr	d7, [r3, #-8]
 8005bbe:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8005bc2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8005bc6:	f7fa ffad 	bl	8000b24 <__aeabi_i2d>
 8005bca:	460b      	mov	r3, r1
 8005bcc:	4602      	mov	r2, r0
 8005bce:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005bd2:	e9cd 6700 	strd	r6, r7, [sp]
 8005bd6:	f7fa fe57 	bl	8000888 <__aeabi_dsub>
 8005bda:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005bdc:	b2ed      	uxtb	r5, r5
 8005bde:	4606      	mov	r6, r0
 8005be0:	460f      	mov	r7, r1
 8005be2:	f10b 0401 	add.w	r4, fp, #1
 8005be6:	2b00      	cmp	r3, #0
 8005be8:	f000 8458 	beq.w	800649c <_dtoa_r+0xc0c>
 8005bec:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005bf0:	2000      	movs	r0, #0
 8005bf2:	4966      	ldr	r1, [pc, #408]	; (8005d8c <_dtoa_r+0x4fc>)
 8005bf4:	f7fb f92a 	bl	8000e4c <__aeabi_ddiv>
 8005bf8:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005bfc:	f7fa fe44 	bl	8000888 <__aeabi_dsub>
 8005c00:	f88b 5000 	strb.w	r5, [fp]
 8005c04:	4632      	mov	r2, r6
 8005c06:	463b      	mov	r3, r7
 8005c08:	e9cd 0100 	strd	r0, r1, [sp]
 8005c0c:	f7fb fa84 	bl	8001118 <__aeabi_dcmpgt>
 8005c10:	2800      	cmp	r0, #0
 8005c12:	f040 8502 	bne.w	800661a <_dtoa_r+0xd8a>
 8005c16:	4632      	mov	r2, r6
 8005c18:	463b      	mov	r3, r7
 8005c1a:	2000      	movs	r0, #0
 8005c1c:	4959      	ldr	r1, [pc, #356]	; (8005d84 <_dtoa_r+0x4f4>)
 8005c1e:	f7fa fe33 	bl	8000888 <__aeabi_dsub>
 8005c22:	4602      	mov	r2, r0
 8005c24:	460b      	mov	r3, r1
 8005c26:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005c2a:	f7fb fa75 	bl	8001118 <__aeabi_dcmpgt>
 8005c2e:	2800      	cmp	r0, #0
 8005c30:	f040 84fb 	bne.w	800662a <_dtoa_r+0xd9a>
 8005c34:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005c36:	2a01      	cmp	r2, #1
 8005c38:	d050      	beq.n	8005cdc <_dtoa_r+0x44c>
 8005c3a:	445a      	add	r2, fp
 8005c3c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8005c40:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8005c44:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8005c48:	4692      	mov	sl, r2
 8005c4a:	46cb      	mov	fp, r9
 8005c4c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8005c50:	e00c      	b.n	8005c6c <_dtoa_r+0x3dc>
 8005c52:	2000      	movs	r0, #0
 8005c54:	494b      	ldr	r1, [pc, #300]	; (8005d84 <_dtoa_r+0x4f4>)
 8005c56:	f7fa fe17 	bl	8000888 <__aeabi_dsub>
 8005c5a:	4642      	mov	r2, r8
 8005c5c:	464b      	mov	r3, r9
 8005c5e:	f7fb fa3d 	bl	80010dc <__aeabi_dcmplt>
 8005c62:	2800      	cmp	r0, #0
 8005c64:	f040 84dc 	bne.w	8006620 <_dtoa_r+0xd90>
 8005c68:	4554      	cmp	r4, sl
 8005c6a:	d030      	beq.n	8005cce <_dtoa_r+0x43e>
 8005c6c:	4640      	mov	r0, r8
 8005c6e:	4649      	mov	r1, r9
 8005c70:	2200      	movs	r2, #0
 8005c72:	4b47      	ldr	r3, [pc, #284]	; (8005d90 <_dtoa_r+0x500>)
 8005c74:	f7fa ffc0 	bl	8000bf8 <__aeabi_dmul>
 8005c78:	2200      	movs	r2, #0
 8005c7a:	4b45      	ldr	r3, [pc, #276]	; (8005d90 <_dtoa_r+0x500>)
 8005c7c:	4680      	mov	r8, r0
 8005c7e:	4689      	mov	r9, r1
 8005c80:	4630      	mov	r0, r6
 8005c82:	4639      	mov	r1, r7
 8005c84:	f7fa ffb8 	bl	8000bf8 <__aeabi_dmul>
 8005c88:	460f      	mov	r7, r1
 8005c8a:	4606      	mov	r6, r0
 8005c8c:	f7fb fa64 	bl	8001158 <__aeabi_d2iz>
 8005c90:	4605      	mov	r5, r0
 8005c92:	f7fa ff47 	bl	8000b24 <__aeabi_i2d>
 8005c96:	4602      	mov	r2, r0
 8005c98:	460b      	mov	r3, r1
 8005c9a:	4630      	mov	r0, r6
 8005c9c:	4639      	mov	r1, r7
 8005c9e:	f7fa fdf3 	bl	8000888 <__aeabi_dsub>
 8005ca2:	3530      	adds	r5, #48	; 0x30
 8005ca4:	b2ed      	uxtb	r5, r5
 8005ca6:	4642      	mov	r2, r8
 8005ca8:	464b      	mov	r3, r9
 8005caa:	f804 5b01 	strb.w	r5, [r4], #1
 8005cae:	4606      	mov	r6, r0
 8005cb0:	460f      	mov	r7, r1
 8005cb2:	f7fb fa13 	bl	80010dc <__aeabi_dcmplt>
 8005cb6:	4632      	mov	r2, r6
 8005cb8:	463b      	mov	r3, r7
 8005cba:	2800      	cmp	r0, #0
 8005cbc:	d0c9      	beq.n	8005c52 <_dtoa_r+0x3c2>
 8005cbe:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005cc0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005cc4:	9306      	str	r3, [sp, #24]
 8005cc6:	46d9      	mov	r9, fp
 8005cc8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005ccc:	e236      	b.n	800613c <_dtoa_r+0x8ac>
 8005cce:	46d9      	mov	r9, fp
 8005cd0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8005cd4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005cd8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005cdc:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8005ce0:	e9cd 3400 	strd	r3, r4, [sp]
 8005ce4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8005ce6:	2b00      	cmp	r3, #0
 8005ce8:	f2c0 80ae 	blt.w	8005e48 <_dtoa_r+0x5b8>
 8005cec:	9a06      	ldr	r2, [sp, #24]
 8005cee:	2a0e      	cmp	r2, #14
 8005cf0:	f300 80aa 	bgt.w	8005e48 <_dtoa_r+0x5b8>
 8005cf4:	4b21      	ldr	r3, [pc, #132]	; (8005d7c <_dtoa_r+0x4ec>)
 8005cf6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005cfa:	ed93 7b00 	vldr	d7, [r3]
 8005cfe:	9b07      	ldr	r3, [sp, #28]
 8005d00:	2b00      	cmp	r3, #0
 8005d02:	ed8d 7b02 	vstr	d7, [sp, #8]
 8005d06:	f2c0 82be 	blt.w	8006286 <_dtoa_r+0x9f6>
 8005d0a:	e9dd 6700 	ldrd	r6, r7, [sp]
 8005d0e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005d12:	4630      	mov	r0, r6
 8005d14:	4639      	mov	r1, r7
 8005d16:	f7fb f899 	bl	8000e4c <__aeabi_ddiv>
 8005d1a:	f7fb fa1d 	bl	8001158 <__aeabi_d2iz>
 8005d1e:	4605      	mov	r5, r0
 8005d20:	f7fa ff00 	bl	8000b24 <__aeabi_i2d>
 8005d24:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005d28:	f7fa ff66 	bl	8000bf8 <__aeabi_dmul>
 8005d2c:	460b      	mov	r3, r1
 8005d2e:	4602      	mov	r2, r0
 8005d30:	4639      	mov	r1, r7
 8005d32:	4630      	mov	r0, r6
 8005d34:	f7fa fda8 	bl	8000888 <__aeabi_dsub>
 8005d38:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8005d3c:	f88b 3000 	strb.w	r3, [fp]
 8005d40:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005d42:	2b01      	cmp	r3, #1
 8005d44:	4606      	mov	r6, r0
 8005d46:	460f      	mov	r7, r1
 8005d48:	f10b 0401 	add.w	r4, fp, #1
 8005d4c:	d053      	beq.n	8005df6 <_dtoa_r+0x566>
 8005d4e:	2200      	movs	r2, #0
 8005d50:	4b0f      	ldr	r3, [pc, #60]	; (8005d90 <_dtoa_r+0x500>)
 8005d52:	f7fa ff51 	bl	8000bf8 <__aeabi_dmul>
 8005d56:	2200      	movs	r2, #0
 8005d58:	2300      	movs	r3, #0
 8005d5a:	4606      	mov	r6, r0
 8005d5c:	460f      	mov	r7, r1
 8005d5e:	f7fb f9b3 	bl	80010c8 <__aeabi_dcmpeq>
 8005d62:	2800      	cmp	r0, #0
 8005d64:	f040 81ea 	bne.w	800613c <_dtoa_r+0x8ac>
 8005d68:	f8cd a000 	str.w	sl, [sp]
 8005d6c:	f8cd 901c 	str.w	r9, [sp, #28]
 8005d70:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005d74:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005d78:	e017      	b.n	8005daa <_dtoa_r+0x51a>
 8005d7a:	bf00      	nop
 8005d7c:	08008920 	.word	0x08008920
 8005d80:	080088f8 	.word	0x080088f8
 8005d84:	3ff00000 	.word	0x3ff00000
 8005d88:	401c0000 	.word	0x401c0000
 8005d8c:	3fe00000 	.word	0x3fe00000
 8005d90:	40240000 	.word	0x40240000
 8005d94:	f7fa ff30 	bl	8000bf8 <__aeabi_dmul>
 8005d98:	2200      	movs	r2, #0
 8005d9a:	2300      	movs	r3, #0
 8005d9c:	4606      	mov	r6, r0
 8005d9e:	460f      	mov	r7, r1
 8005da0:	f7fb f992 	bl	80010c8 <__aeabi_dcmpeq>
 8005da4:	2800      	cmp	r0, #0
 8005da6:	f040 833d 	bne.w	8006424 <_dtoa_r+0xb94>
 8005daa:	464a      	mov	r2, r9
 8005dac:	4653      	mov	r3, sl
 8005dae:	4630      	mov	r0, r6
 8005db0:	4639      	mov	r1, r7
 8005db2:	f7fb f84b 	bl	8000e4c <__aeabi_ddiv>
 8005db6:	f7fb f9cf 	bl	8001158 <__aeabi_d2iz>
 8005dba:	4605      	mov	r5, r0
 8005dbc:	f7fa feb2 	bl	8000b24 <__aeabi_i2d>
 8005dc0:	464a      	mov	r2, r9
 8005dc2:	4653      	mov	r3, sl
 8005dc4:	f7fa ff18 	bl	8000bf8 <__aeabi_dmul>
 8005dc8:	4602      	mov	r2, r0
 8005dca:	460b      	mov	r3, r1
 8005dcc:	4630      	mov	r0, r6
 8005dce:	4639      	mov	r1, r7
 8005dd0:	f7fa fd5a 	bl	8000888 <__aeabi_dsub>
 8005dd4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8005dd8:	f804 cb01 	strb.w	ip, [r4], #1
 8005ddc:	eba4 0c0b 	sub.w	ip, r4, fp
 8005de0:	45e0      	cmp	r8, ip
 8005de2:	4606      	mov	r6, r0
 8005de4:	460f      	mov	r7, r1
 8005de6:	f04f 0200 	mov.w	r2, #0
 8005dea:	4bc1      	ldr	r3, [pc, #772]	; (80060f0 <_dtoa_r+0x860>)
 8005dec:	d1d2      	bne.n	8005d94 <_dtoa_r+0x504>
 8005dee:	f8dd a000 	ldr.w	sl, [sp]
 8005df2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005df6:	4632      	mov	r2, r6
 8005df8:	463b      	mov	r3, r7
 8005dfa:	4630      	mov	r0, r6
 8005dfc:	4639      	mov	r1, r7
 8005dfe:	f7fa fd45 	bl	800088c <__adddf3>
 8005e02:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005e06:	4606      	mov	r6, r0
 8005e08:	460f      	mov	r7, r1
 8005e0a:	f7fb f985 	bl	8001118 <__aeabi_dcmpgt>
 8005e0e:	b958      	cbnz	r0, 8005e28 <_dtoa_r+0x598>
 8005e10:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005e14:	4630      	mov	r0, r6
 8005e16:	4639      	mov	r1, r7
 8005e18:	f7fb f956 	bl	80010c8 <__aeabi_dcmpeq>
 8005e1c:	2800      	cmp	r0, #0
 8005e1e:	f000 818d 	beq.w	800613c <_dtoa_r+0x8ac>
 8005e22:	07e9      	lsls	r1, r5, #31
 8005e24:	f140 818a 	bpl.w	800613c <_dtoa_r+0x8ac>
 8005e28:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005e2c:	e005      	b.n	8005e3a <_dtoa_r+0x5aa>
 8005e2e:	459b      	cmp	fp, r3
 8005e30:	f000 8373 	beq.w	800651a <_dtoa_r+0xc8a>
 8005e34:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8005e38:	461c      	mov	r4, r3
 8005e3a:	2d39      	cmp	r5, #57	; 0x39
 8005e3c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005e40:	d0f5      	beq.n	8005e2e <_dtoa_r+0x59e>
 8005e42:	3501      	adds	r5, #1
 8005e44:	701d      	strb	r5, [r3, #0]
 8005e46:	e179      	b.n	800613c <_dtoa_r+0x8ac>
 8005e48:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005e4a:	2a00      	cmp	r2, #0
 8005e4c:	d03b      	beq.n	8005ec6 <_dtoa_r+0x636>
 8005e4e:	9a02      	ldr	r2, [sp, #8]
 8005e50:	2a01      	cmp	r2, #1
 8005e52:	f340 820b 	ble.w	800626c <_dtoa_r+0x9dc>
 8005e56:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005e58:	1e5f      	subs	r7, r3, #1
 8005e5a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005e5c:	42bb      	cmp	r3, r7
 8005e5e:	f2c0 82e6 	blt.w	800642e <_dtoa_r+0xb9e>
 8005e62:	1bdf      	subs	r7, r3, r7
 8005e64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005e66:	2b00      	cmp	r3, #0
 8005e68:	f2c0 830b 	blt.w	8006482 <_dtoa_r+0xbf2>
 8005e6c:	9a08      	ldr	r2, [sp, #32]
 8005e6e:	4614      	mov	r4, r2
 8005e70:	441a      	add	r2, r3
 8005e72:	4498      	add	r8, r3
 8005e74:	9208      	str	r2, [sp, #32]
 8005e76:	2101      	movs	r1, #1
 8005e78:	4648      	mov	r0, r9
 8005e7a:	f001 fcbf 	bl	80077fc <__i2b>
 8005e7e:	4605      	mov	r5, r0
 8005e80:	e024      	b.n	8005ecc <_dtoa_r+0x63c>
 8005e82:	2301      	movs	r3, #1
 8005e84:	930d      	str	r3, [sp, #52]	; 0x34
 8005e86:	e5af      	b.n	80059e8 <_dtoa_r+0x158>
 8005e88:	9a08      	ldr	r2, [sp, #32]
 8005e8a:	9b06      	ldr	r3, [sp, #24]
 8005e8c:	1ad2      	subs	r2, r2, r3
 8005e8e:	425b      	negs	r3, r3
 8005e90:	930b      	str	r3, [sp, #44]	; 0x2c
 8005e92:	2300      	movs	r3, #0
 8005e94:	9208      	str	r2, [sp, #32]
 8005e96:	930c      	str	r3, [sp, #48]	; 0x30
 8005e98:	e5b5      	b.n	8005a06 <_dtoa_r+0x176>
 8005e9a:	f1c4 0301 	rsb	r3, r4, #1
 8005e9e:	9308      	str	r3, [sp, #32]
 8005ea0:	f04f 0800 	mov.w	r8, #0
 8005ea4:	e5a7      	b.n	80059f6 <_dtoa_r+0x166>
 8005ea6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8005eaa:	4640      	mov	r0, r8
 8005eac:	f7fa fe3a 	bl	8000b24 <__aeabi_i2d>
 8005eb0:	4632      	mov	r2, r6
 8005eb2:	463b      	mov	r3, r7
 8005eb4:	f7fb f908 	bl	80010c8 <__aeabi_dcmpeq>
 8005eb8:	2800      	cmp	r0, #0
 8005eba:	f47f ad81 	bne.w	80059c0 <_dtoa_r+0x130>
 8005ebe:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8005ec2:	9306      	str	r3, [sp, #24]
 8005ec4:	e57c      	b.n	80059c0 <_dtoa_r+0x130>
 8005ec6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005ec8:	9c08      	ldr	r4, [sp, #32]
 8005eca:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8005ecc:	2c00      	cmp	r4, #0
 8005ece:	dd0c      	ble.n	8005eea <_dtoa_r+0x65a>
 8005ed0:	f1b8 0f00 	cmp.w	r8, #0
 8005ed4:	dd09      	ble.n	8005eea <_dtoa_r+0x65a>
 8005ed6:	4544      	cmp	r4, r8
 8005ed8:	9a08      	ldr	r2, [sp, #32]
 8005eda:	4623      	mov	r3, r4
 8005edc:	bfa8      	it	ge
 8005ede:	4643      	movge	r3, r8
 8005ee0:	1ad2      	subs	r2, r2, r3
 8005ee2:	9208      	str	r2, [sp, #32]
 8005ee4:	1ae4      	subs	r4, r4, r3
 8005ee6:	eba8 0803 	sub.w	r8, r8, r3
 8005eea:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005eec:	b16b      	cbz	r3, 8005f0a <_dtoa_r+0x67a>
 8005eee:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005ef0:	2a00      	cmp	r2, #0
 8005ef2:	f000 8290 	beq.w	8006416 <_dtoa_r+0xb86>
 8005ef6:	1bde      	subs	r6, r3, r7
 8005ef8:	2f00      	cmp	r7, #0
 8005efa:	f040 819b 	bne.w	8006234 <_dtoa_r+0x9a4>
 8005efe:	4651      	mov	r1, sl
 8005f00:	4632      	mov	r2, r6
 8005f02:	4648      	mov	r0, r9
 8005f04:	f001 fd2a 	bl	800795c <__pow5mult>
 8005f08:	4682      	mov	sl, r0
 8005f0a:	2101      	movs	r1, #1
 8005f0c:	4648      	mov	r0, r9
 8005f0e:	f001 fc75 	bl	80077fc <__i2b>
 8005f12:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005f14:	4606      	mov	r6, r0
 8005f16:	2a00      	cmp	r2, #0
 8005f18:	f040 8125 	bne.w	8006166 <_dtoa_r+0x8d6>
 8005f1c:	9b02      	ldr	r3, [sp, #8]
 8005f1e:	2b01      	cmp	r3, #1
 8005f20:	f340 816c 	ble.w	80061fc <_dtoa_r+0x96c>
 8005f24:	2001      	movs	r0, #1
 8005f26:	4440      	add	r0, r8
 8005f28:	f010 001f 	ands.w	r0, r0, #31
 8005f2c:	f000 8119 	beq.w	8006162 <_dtoa_r+0x8d2>
 8005f30:	f1c0 0320 	rsb	r3, r0, #32
 8005f34:	2b04      	cmp	r3, #4
 8005f36:	f340 83ac 	ble.w	8006692 <_dtoa_r+0xe02>
 8005f3a:	f1c0 001c 	rsb	r0, r0, #28
 8005f3e:	9b08      	ldr	r3, [sp, #32]
 8005f40:	4403      	add	r3, r0
 8005f42:	9308      	str	r3, [sp, #32]
 8005f44:	4404      	add	r4, r0
 8005f46:	4480      	add	r8, r0
 8005f48:	9b08      	ldr	r3, [sp, #32]
 8005f4a:	2b00      	cmp	r3, #0
 8005f4c:	dd05      	ble.n	8005f5a <_dtoa_r+0x6ca>
 8005f4e:	4651      	mov	r1, sl
 8005f50:	461a      	mov	r2, r3
 8005f52:	4648      	mov	r0, r9
 8005f54:	f001 fd52 	bl	80079fc <__lshift>
 8005f58:	4682      	mov	sl, r0
 8005f5a:	f1b8 0f00 	cmp.w	r8, #0
 8005f5e:	dd05      	ble.n	8005f6c <_dtoa_r+0x6dc>
 8005f60:	4631      	mov	r1, r6
 8005f62:	4642      	mov	r2, r8
 8005f64:	4648      	mov	r0, r9
 8005f66:	f001 fd49 	bl	80079fc <__lshift>
 8005f6a:	4606      	mov	r6, r0
 8005f6c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005f6e:	2b00      	cmp	r3, #0
 8005f70:	d177      	bne.n	8006062 <_dtoa_r+0x7d2>
 8005f72:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005f74:	2b00      	cmp	r3, #0
 8005f76:	f340 8209 	ble.w	800638c <_dtoa_r+0xafc>
 8005f7a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005f7c:	2b00      	cmp	r3, #0
 8005f7e:	f000 8089 	beq.w	8006094 <_dtoa_r+0x804>
 8005f82:	2c00      	cmp	r4, #0
 8005f84:	f300 816b 	bgt.w	800625e <_dtoa_r+0x9ce>
 8005f88:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005f8a:	2b00      	cmp	r3, #0
 8005f8c:	f040 81cd 	bne.w	800632a <_dtoa_r+0xa9a>
 8005f90:	46a8      	mov	r8, r5
 8005f92:	9a00      	ldr	r2, [sp, #0]
 8005f94:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005f98:	f002 0201 	and.w	r2, r2, #1
 8005f9c:	920a      	str	r2, [sp, #40]	; 0x28
 8005f9e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005fa0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8005fa4:	441a      	add	r2, r3
 8005fa6:	465f      	mov	r7, fp
 8005fa8:	9209      	str	r2, [sp, #36]	; 0x24
 8005faa:	46b3      	mov	fp, r6
 8005fac:	4659      	mov	r1, fp
 8005fae:	4650      	mov	r0, sl
 8005fb0:	f7ff fbdc 	bl	800576c <quorem>
 8005fb4:	4629      	mov	r1, r5
 8005fb6:	4604      	mov	r4, r0
 8005fb8:	4650      	mov	r0, sl
 8005fba:	f001 fd75 	bl	8007aa8 <__mcmp>
 8005fbe:	4659      	mov	r1, fp
 8005fc0:	4606      	mov	r6, r0
 8005fc2:	4642      	mov	r2, r8
 8005fc4:	4648      	mov	r0, r9
 8005fc6:	f001 fd8b 	bl	8007ae0 <__mdiff>
 8005fca:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8005fce:	9300      	str	r3, [sp, #0]
 8005fd0:	68c3      	ldr	r3, [r0, #12]
 8005fd2:	4601      	mov	r1, r0
 8005fd4:	2b00      	cmp	r3, #0
 8005fd6:	f040 81d4 	bne.w	8006382 <_dtoa_r+0xaf2>
 8005fda:	9008      	str	r0, [sp, #32]
 8005fdc:	4650      	mov	r0, sl
 8005fde:	f001 fd63 	bl	8007aa8 <__mcmp>
 8005fe2:	9a08      	ldr	r2, [sp, #32]
 8005fe4:	9007      	str	r0, [sp, #28]
 8005fe6:	4611      	mov	r1, r2
 8005fe8:	4648      	mov	r0, r9
 8005fea:	f001 fb6d 	bl	80076c8 <_Bfree>
 8005fee:	9b07      	ldr	r3, [sp, #28]
 8005ff0:	b933      	cbnz	r3, 8006000 <_dtoa_r+0x770>
 8005ff2:	9a02      	ldr	r2, [sp, #8]
 8005ff4:	b922      	cbnz	r2, 8006000 <_dtoa_r+0x770>
 8005ff6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005ff8:	2b00      	cmp	r3, #0
 8005ffa:	f000 8319 	beq.w	8006630 <_dtoa_r+0xda0>
 8005ffe:	9b02      	ldr	r3, [sp, #8]
 8006000:	2e00      	cmp	r6, #0
 8006002:	f2c0 821c 	blt.w	800643e <_dtoa_r+0xbae>
 8006006:	d105      	bne.n	8006014 <_dtoa_r+0x784>
 8006008:	9a02      	ldr	r2, [sp, #8]
 800600a:	b91a      	cbnz	r2, 8006014 <_dtoa_r+0x784>
 800600c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800600e:	2a00      	cmp	r2, #0
 8006010:	f000 8215 	beq.w	800643e <_dtoa_r+0xbae>
 8006014:	2b00      	cmp	r3, #0
 8006016:	f107 0401 	add.w	r4, r7, #1
 800601a:	f300 8225 	bgt.w	8006468 <_dtoa_r+0xbd8>
 800601e:	9b00      	ldr	r3, [sp, #0]
 8006020:	703b      	strb	r3, [r7, #0]
 8006022:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006024:	42bb      	cmp	r3, r7
 8006026:	f000 8230 	beq.w	800648a <_dtoa_r+0xbfa>
 800602a:	4651      	mov	r1, sl
 800602c:	2300      	movs	r3, #0
 800602e:	220a      	movs	r2, #10
 8006030:	4648      	mov	r0, r9
 8006032:	f001 fb53 	bl	80076dc <__multadd>
 8006036:	4545      	cmp	r5, r8
 8006038:	4682      	mov	sl, r0
 800603a:	4629      	mov	r1, r5
 800603c:	f04f 0300 	mov.w	r3, #0
 8006040:	f04f 020a 	mov.w	r2, #10
 8006044:	4648      	mov	r0, r9
 8006046:	f000 8196 	beq.w	8006376 <_dtoa_r+0xae6>
 800604a:	f001 fb47 	bl	80076dc <__multadd>
 800604e:	4641      	mov	r1, r8
 8006050:	4605      	mov	r5, r0
 8006052:	2300      	movs	r3, #0
 8006054:	220a      	movs	r2, #10
 8006056:	4648      	mov	r0, r9
 8006058:	f001 fb40 	bl	80076dc <__multadd>
 800605c:	4627      	mov	r7, r4
 800605e:	4680      	mov	r8, r0
 8006060:	e7a4      	b.n	8005fac <_dtoa_r+0x71c>
 8006062:	4631      	mov	r1, r6
 8006064:	4650      	mov	r0, sl
 8006066:	f001 fd1f 	bl	8007aa8 <__mcmp>
 800606a:	2800      	cmp	r0, #0
 800606c:	da81      	bge.n	8005f72 <_dtoa_r+0x6e2>
 800606e:	9f06      	ldr	r7, [sp, #24]
 8006070:	4651      	mov	r1, sl
 8006072:	2300      	movs	r3, #0
 8006074:	220a      	movs	r2, #10
 8006076:	4648      	mov	r0, r9
 8006078:	3f01      	subs	r7, #1
 800607a:	9706      	str	r7, [sp, #24]
 800607c:	f001 fb2e 	bl	80076dc <__multadd>
 8006080:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006082:	4682      	mov	sl, r0
 8006084:	2b00      	cmp	r3, #0
 8006086:	f040 82eb 	bne.w	8006660 <_dtoa_r+0xdd0>
 800608a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800608c:	2b00      	cmp	r3, #0
 800608e:	f340 82f3 	ble.w	8006678 <_dtoa_r+0xde8>
 8006092:	9309      	str	r3, [sp, #36]	; 0x24
 8006094:	465c      	mov	r4, fp
 8006096:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800609a:	e002      	b.n	80060a2 <_dtoa_r+0x812>
 800609c:	f001 fb1e 	bl	80076dc <__multadd>
 80060a0:	4682      	mov	sl, r0
 80060a2:	4631      	mov	r1, r6
 80060a4:	4650      	mov	r0, sl
 80060a6:	f7ff fb61 	bl	800576c <quorem>
 80060aa:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80060ae:	f804 7b01 	strb.w	r7, [r4], #1
 80060b2:	eba4 030b 	sub.w	r3, r4, fp
 80060b6:	4598      	cmp	r8, r3
 80060b8:	f04f 020a 	mov.w	r2, #10
 80060bc:	f04f 0300 	mov.w	r3, #0
 80060c0:	4651      	mov	r1, sl
 80060c2:	4648      	mov	r0, r9
 80060c4:	dcea      	bgt.n	800609c <_dtoa_r+0x80c>
 80060c6:	2300      	movs	r3, #0
 80060c8:	9700      	str	r7, [sp, #0]
 80060ca:	9302      	str	r3, [sp, #8]
 80060cc:	4651      	mov	r1, sl
 80060ce:	2201      	movs	r2, #1
 80060d0:	4648      	mov	r0, r9
 80060d2:	f001 fc93 	bl	80079fc <__lshift>
 80060d6:	4631      	mov	r1, r6
 80060d8:	4682      	mov	sl, r0
 80060da:	f001 fce5 	bl	8007aa8 <__mcmp>
 80060de:	2800      	cmp	r0, #0
 80060e0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80060e4:	dc14      	bgt.n	8006110 <_dtoa_r+0x880>
 80060e6:	d108      	bne.n	80060fa <_dtoa_r+0x86a>
 80060e8:	9b00      	ldr	r3, [sp, #0]
 80060ea:	07db      	lsls	r3, r3, #31
 80060ec:	d410      	bmi.n	8006110 <_dtoa_r+0x880>
 80060ee:	e004      	b.n	80060fa <_dtoa_r+0x86a>
 80060f0:	40240000 	.word	0x40240000
 80060f4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80060f8:	461c      	mov	r4, r3
 80060fa:	2a30      	cmp	r2, #48	; 0x30
 80060fc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006100:	d0f8      	beq.n	80060f4 <_dtoa_r+0x864>
 8006102:	e00b      	b.n	800611c <_dtoa_r+0x88c>
 8006104:	459b      	cmp	fp, r3
 8006106:	f000 814e 	beq.w	80063a6 <_dtoa_r+0xb16>
 800610a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800610e:	461c      	mov	r4, r3
 8006110:	2a39      	cmp	r2, #57	; 0x39
 8006112:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006116:	d0f5      	beq.n	8006104 <_dtoa_r+0x874>
 8006118:	3201      	adds	r2, #1
 800611a:	701a      	strb	r2, [r3, #0]
 800611c:	4631      	mov	r1, r6
 800611e:	4648      	mov	r0, r9
 8006120:	f001 fad2 	bl	80076c8 <_Bfree>
 8006124:	b155      	cbz	r5, 800613c <_dtoa_r+0x8ac>
 8006126:	9902      	ldr	r1, [sp, #8]
 8006128:	b121      	cbz	r1, 8006134 <_dtoa_r+0x8a4>
 800612a:	42a9      	cmp	r1, r5
 800612c:	d002      	beq.n	8006134 <_dtoa_r+0x8a4>
 800612e:	4648      	mov	r0, r9
 8006130:	f001 faca 	bl	80076c8 <_Bfree>
 8006134:	4629      	mov	r1, r5
 8006136:	4648      	mov	r0, r9
 8006138:	f001 fac6 	bl	80076c8 <_Bfree>
 800613c:	4651      	mov	r1, sl
 800613e:	4648      	mov	r0, r9
 8006140:	f001 fac2 	bl	80076c8 <_Bfree>
 8006144:	2200      	movs	r2, #0
 8006146:	9b06      	ldr	r3, [sp, #24]
 8006148:	7022      	strb	r2, [r4, #0]
 800614a:	9a05      	ldr	r2, [sp, #20]
 800614c:	3301      	adds	r3, #1
 800614e:	6013      	str	r3, [r2, #0]
 8006150:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006152:	2b00      	cmp	r3, #0
 8006154:	f43f abdb 	beq.w	800590e <_dtoa_r+0x7e>
 8006158:	4658      	mov	r0, fp
 800615a:	601c      	str	r4, [r3, #0]
 800615c:	b01b      	add	sp, #108	; 0x6c
 800615e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006162:	201c      	movs	r0, #28
 8006164:	e6eb      	b.n	8005f3e <_dtoa_r+0x6ae>
 8006166:	4601      	mov	r1, r0
 8006168:	4648      	mov	r0, r9
 800616a:	f001 fbf7 	bl	800795c <__pow5mult>
 800616e:	9b02      	ldr	r3, [sp, #8]
 8006170:	2b01      	cmp	r3, #1
 8006172:	4606      	mov	r6, r0
 8006174:	f340 80d4 	ble.w	8006320 <_dtoa_r+0xa90>
 8006178:	2300      	movs	r3, #0
 800617a:	930c      	str	r3, [sp, #48]	; 0x30
 800617c:	6933      	ldr	r3, [r6, #16]
 800617e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8006182:	6918      	ldr	r0, [r3, #16]
 8006184:	f001 faea 	bl	800775c <__hi0bits>
 8006188:	f1c0 0020 	rsb	r0, r0, #32
 800618c:	e6cb      	b.n	8005f26 <_dtoa_r+0x696>
 800618e:	900d      	str	r0, [sp, #52]	; 0x34
 8006190:	e42a      	b.n	80059e8 <_dtoa_r+0x158>
 8006192:	2501      	movs	r5, #1
 8006194:	e440      	b.n	8005a18 <_dtoa_r+0x188>
 8006196:	f1c3 0820 	rsb	r8, r3, #32
 800619a:	9b00      	ldr	r3, [sp, #0]
 800619c:	fa03 f008 	lsl.w	r0, r3, r8
 80061a0:	f7ff bbd8 	b.w	8005954 <_dtoa_r+0xc4>
 80061a4:	2300      	movs	r3, #0
 80061a6:	930a      	str	r3, [sp, #40]	; 0x28
 80061a8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80061ac:	4413      	add	r3, r2
 80061ae:	930e      	str	r3, [sp, #56]	; 0x38
 80061b0:	3301      	adds	r3, #1
 80061b2:	2b01      	cmp	r3, #1
 80061b4:	461e      	mov	r6, r3
 80061b6:	9309      	str	r3, [sp, #36]	; 0x24
 80061b8:	bfb8      	it	lt
 80061ba:	2601      	movlt	r6, #1
 80061bc:	2100      	movs	r1, #0
 80061be:	2e17      	cmp	r6, #23
 80061c0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80061c4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80061c6:	f77f ac89 	ble.w	8005adc <_dtoa_r+0x24c>
 80061ca:	2201      	movs	r2, #1
 80061cc:	2304      	movs	r3, #4
 80061ce:	005b      	lsls	r3, r3, #1
 80061d0:	f103 0014 	add.w	r0, r3, #20
 80061d4:	42b0      	cmp	r0, r6
 80061d6:	4611      	mov	r1, r2
 80061d8:	f102 0201 	add.w	r2, r2, #1
 80061dc:	d9f7      	bls.n	80061ce <_dtoa_r+0x93e>
 80061de:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80061e2:	e47b      	b.n	8005adc <_dtoa_r+0x24c>
 80061e4:	2300      	movs	r3, #0
 80061e6:	930a      	str	r3, [sp, #40]	; 0x28
 80061e8:	9e07      	ldr	r6, [sp, #28]
 80061ea:	2e00      	cmp	r6, #0
 80061ec:	f340 80e2 	ble.w	80063b4 <_dtoa_r+0xb24>
 80061f0:	960e      	str	r6, [sp, #56]	; 0x38
 80061f2:	9609      	str	r6, [sp, #36]	; 0x24
 80061f4:	e7e2      	b.n	80061bc <_dtoa_r+0x92c>
 80061f6:	2301      	movs	r3, #1
 80061f8:	930a      	str	r3, [sp, #40]	; 0x28
 80061fa:	e7f5      	b.n	80061e8 <_dtoa_r+0x958>
 80061fc:	9b00      	ldr	r3, [sp, #0]
 80061fe:	2b00      	cmp	r3, #0
 8006200:	f47f ae90 	bne.w	8005f24 <_dtoa_r+0x694>
 8006204:	e9dd 1200 	ldrd	r1, r2, [sp]
 8006208:	f3c2 0313 	ubfx	r3, r2, #0, #20
 800620c:	2b00      	cmp	r3, #0
 800620e:	f040 8192 	bne.w	8006536 <_dtoa_r+0xca6>
 8006212:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8006216:	0d1b      	lsrs	r3, r3, #20
 8006218:	051b      	lsls	r3, r3, #20
 800621a:	b12b      	cbz	r3, 8006228 <_dtoa_r+0x998>
 800621c:	9b08      	ldr	r3, [sp, #32]
 800621e:	3301      	adds	r3, #1
 8006220:	9308      	str	r3, [sp, #32]
 8006222:	f108 0801 	add.w	r8, r8, #1
 8006226:	2301      	movs	r3, #1
 8006228:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800622a:	930c      	str	r3, [sp, #48]	; 0x30
 800622c:	2a00      	cmp	r2, #0
 800622e:	f43f ae79 	beq.w	8005f24 <_dtoa_r+0x694>
 8006232:	e7a3      	b.n	800617c <_dtoa_r+0x8ec>
 8006234:	463a      	mov	r2, r7
 8006236:	4629      	mov	r1, r5
 8006238:	4648      	mov	r0, r9
 800623a:	f001 fb8f 	bl	800795c <__pow5mult>
 800623e:	4652      	mov	r2, sl
 8006240:	4601      	mov	r1, r0
 8006242:	4605      	mov	r5, r0
 8006244:	4648      	mov	r0, r9
 8006246:	f001 fae3 	bl	8007810 <__multiply>
 800624a:	4651      	mov	r1, sl
 800624c:	4607      	mov	r7, r0
 800624e:	4648      	mov	r0, r9
 8006250:	f001 fa3a 	bl	80076c8 <_Bfree>
 8006254:	46ba      	mov	sl, r7
 8006256:	2e00      	cmp	r6, #0
 8006258:	f43f ae57 	beq.w	8005f0a <_dtoa_r+0x67a>
 800625c:	e64f      	b.n	8005efe <_dtoa_r+0x66e>
 800625e:	4629      	mov	r1, r5
 8006260:	4622      	mov	r2, r4
 8006262:	4648      	mov	r0, r9
 8006264:	f001 fbca 	bl	80079fc <__lshift>
 8006268:	4605      	mov	r5, r0
 800626a:	e68d      	b.n	8005f88 <_dtoa_r+0x6f8>
 800626c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800626e:	2a00      	cmp	r2, #0
 8006270:	f000 815d 	beq.w	800652e <_dtoa_r+0xc9e>
 8006274:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8006278:	9a08      	ldr	r2, [sp, #32]
 800627a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 800627c:	4614      	mov	r4, r2
 800627e:	441a      	add	r2, r3
 8006280:	4498      	add	r8, r3
 8006282:	9208      	str	r2, [sp, #32]
 8006284:	e5f7      	b.n	8005e76 <_dtoa_r+0x5e6>
 8006286:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006288:	2b00      	cmp	r3, #0
 800628a:	f73f ad3e 	bgt.w	8005d0a <_dtoa_r+0x47a>
 800628e:	f040 80bc 	bne.w	800640a <_dtoa_r+0xb7a>
 8006292:	ec51 0b17 	vmov	r0, r1, d7
 8006296:	2200      	movs	r2, #0
 8006298:	4bb2      	ldr	r3, [pc, #712]	; (8006564 <_dtoa_r+0xcd4>)
 800629a:	f7fa fcad 	bl	8000bf8 <__aeabi_dmul>
 800629e:	e9dd 2300 	ldrd	r2, r3, [sp]
 80062a2:	f7fa ff2f 	bl	8001104 <__aeabi_dcmpge>
 80062a6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80062a8:	4635      	mov	r5, r6
 80062aa:	2800      	cmp	r0, #0
 80062ac:	d176      	bne.n	800639c <_dtoa_r+0xb0c>
 80062ae:	9a06      	ldr	r2, [sp, #24]
 80062b0:	2331      	movs	r3, #49	; 0x31
 80062b2:	3201      	adds	r2, #1
 80062b4:	9206      	str	r2, [sp, #24]
 80062b6:	f88b 3000 	strb.w	r3, [fp]
 80062ba:	f10b 0401 	add.w	r4, fp, #1
 80062be:	4631      	mov	r1, r6
 80062c0:	4648      	mov	r0, r9
 80062c2:	f001 fa01 	bl	80076c8 <_Bfree>
 80062c6:	2d00      	cmp	r5, #0
 80062c8:	f47f af34 	bne.w	8006134 <_dtoa_r+0x8a4>
 80062cc:	e736      	b.n	800613c <_dtoa_r+0x8ac>
 80062ce:	f000 8142 	beq.w	8006556 <_dtoa_r+0xcc6>
 80062d2:	9b06      	ldr	r3, [sp, #24]
 80062d4:	425c      	negs	r4, r3
 80062d6:	4ba4      	ldr	r3, [pc, #656]	; (8006568 <_dtoa_r+0xcd8>)
 80062d8:	f004 020f 	and.w	r2, r4, #15
 80062dc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80062e0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80062e4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80062e8:	f7fa fc86 	bl	8000bf8 <__aeabi_dmul>
 80062ec:	1124      	asrs	r4, r4, #4
 80062ee:	e9cd 0100 	strd	r0, r1, [sp]
 80062f2:	f000 81c6 	beq.w	8006682 <_dtoa_r+0xdf2>
 80062f6:	4d9d      	ldr	r5, [pc, #628]	; (800656c <_dtoa_r+0xcdc>)
 80062f8:	2300      	movs	r3, #0
 80062fa:	2602      	movs	r6, #2
 80062fc:	07e7      	lsls	r7, r4, #31
 80062fe:	d505      	bpl.n	800630c <_dtoa_r+0xa7c>
 8006300:	e9d5 2300 	ldrd	r2, r3, [r5]
 8006304:	f7fa fc78 	bl	8000bf8 <__aeabi_dmul>
 8006308:	3601      	adds	r6, #1
 800630a:	2301      	movs	r3, #1
 800630c:	1064      	asrs	r4, r4, #1
 800630e:	f105 0508 	add.w	r5, r5, #8
 8006312:	d1f3      	bne.n	80062fc <_dtoa_r+0xa6c>
 8006314:	2b00      	cmp	r3, #0
 8006316:	f43f ac27 	beq.w	8005b68 <_dtoa_r+0x2d8>
 800631a:	e9cd 0100 	strd	r0, r1, [sp]
 800631e:	e423      	b.n	8005b68 <_dtoa_r+0x2d8>
 8006320:	9b00      	ldr	r3, [sp, #0]
 8006322:	2b00      	cmp	r3, #0
 8006324:	f43f af6e 	beq.w	8006204 <_dtoa_r+0x974>
 8006328:	e726      	b.n	8006178 <_dtoa_r+0x8e8>
 800632a:	6869      	ldr	r1, [r5, #4]
 800632c:	4648      	mov	r0, r9
 800632e:	f001 f9a5 	bl	800767c <_Balloc>
 8006332:	692b      	ldr	r3, [r5, #16]
 8006334:	3302      	adds	r3, #2
 8006336:	009a      	lsls	r2, r3, #2
 8006338:	4604      	mov	r4, r0
 800633a:	f105 010c 	add.w	r1, r5, #12
 800633e:	300c      	adds	r0, #12
 8006340:	f7fa f92c 	bl	800059c <memcpy>
 8006344:	4621      	mov	r1, r4
 8006346:	2201      	movs	r2, #1
 8006348:	4648      	mov	r0, r9
 800634a:	f001 fb57 	bl	80079fc <__lshift>
 800634e:	4680      	mov	r8, r0
 8006350:	e61f      	b.n	8005f92 <_dtoa_r+0x702>
 8006352:	2400      	movs	r4, #0
 8006354:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8006358:	4621      	mov	r1, r4
 800635a:	4648      	mov	r0, r9
 800635c:	f001 f98e 	bl	800767c <_Balloc>
 8006360:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8006364:	930e      	str	r3, [sp, #56]	; 0x38
 8006366:	9309      	str	r3, [sp, #36]	; 0x24
 8006368:	2301      	movs	r3, #1
 800636a:	4683      	mov	fp, r0
 800636c:	9407      	str	r4, [sp, #28]
 800636e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8006372:	930a      	str	r3, [sp, #40]	; 0x28
 8006374:	e4b6      	b.n	8005ce4 <_dtoa_r+0x454>
 8006376:	f001 f9b1 	bl	80076dc <__multadd>
 800637a:	4627      	mov	r7, r4
 800637c:	4605      	mov	r5, r0
 800637e:	4680      	mov	r8, r0
 8006380:	e614      	b.n	8005fac <_dtoa_r+0x71c>
 8006382:	4648      	mov	r0, r9
 8006384:	f001 f9a0 	bl	80076c8 <_Bfree>
 8006388:	2301      	movs	r3, #1
 800638a:	e639      	b.n	8006000 <_dtoa_r+0x770>
 800638c:	9b02      	ldr	r3, [sp, #8]
 800638e:	2b02      	cmp	r3, #2
 8006390:	f77f adf3 	ble.w	8005f7a <_dtoa_r+0x6ea>
 8006394:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006396:	2b00      	cmp	r3, #0
 8006398:	f000 80cf 	beq.w	800653a <_dtoa_r+0xcaa>
 800639c:	9b07      	ldr	r3, [sp, #28]
 800639e:	43db      	mvns	r3, r3
 80063a0:	9306      	str	r3, [sp, #24]
 80063a2:	465c      	mov	r4, fp
 80063a4:	e78b      	b.n	80062be <_dtoa_r+0xa2e>
 80063a6:	9a06      	ldr	r2, [sp, #24]
 80063a8:	2331      	movs	r3, #49	; 0x31
 80063aa:	3201      	adds	r2, #1
 80063ac:	9206      	str	r2, [sp, #24]
 80063ae:	f88b 3000 	strb.w	r3, [fp]
 80063b2:	e6b3      	b.n	800611c <_dtoa_r+0x88c>
 80063b4:	2401      	movs	r4, #1
 80063b6:	9409      	str	r4, [sp, #36]	; 0x24
 80063b8:	9407      	str	r4, [sp, #28]
 80063ba:	f7ff bb8b 	b.w	8005ad4 <_dtoa_r+0x244>
 80063be:	4630      	mov	r0, r6
 80063c0:	f7fa fbb0 	bl	8000b24 <__aeabi_i2d>
 80063c4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80063c8:	f7fa fc16 	bl	8000bf8 <__aeabi_dmul>
 80063cc:	2200      	movs	r2, #0
 80063ce:	4b68      	ldr	r3, [pc, #416]	; (8006570 <_dtoa_r+0xce0>)
 80063d0:	f7fa fa5c 	bl	800088c <__adddf3>
 80063d4:	4606      	mov	r6, r0
 80063d6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80063da:	2200      	movs	r2, #0
 80063dc:	4b61      	ldr	r3, [pc, #388]	; (8006564 <_dtoa_r+0xcd4>)
 80063de:	e9dd 0100 	ldrd	r0, r1, [sp]
 80063e2:	f7fa fa51 	bl	8000888 <__aeabi_dsub>
 80063e6:	4632      	mov	r2, r6
 80063e8:	463b      	mov	r3, r7
 80063ea:	4604      	mov	r4, r0
 80063ec:	460d      	mov	r5, r1
 80063ee:	f7fa fe93 	bl	8001118 <__aeabi_dcmpgt>
 80063f2:	2800      	cmp	r0, #0
 80063f4:	d14f      	bne.n	8006496 <_dtoa_r+0xc06>
 80063f6:	4632      	mov	r2, r6
 80063f8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80063fc:	4620      	mov	r0, r4
 80063fe:	4629      	mov	r1, r5
 8006400:	f7fa fe6c 	bl	80010dc <__aeabi_dcmplt>
 8006404:	2800      	cmp	r0, #0
 8006406:	f43f ac69 	beq.w	8005cdc <_dtoa_r+0x44c>
 800640a:	2600      	movs	r6, #0
 800640c:	4635      	mov	r5, r6
 800640e:	e7c5      	b.n	800639c <_dtoa_r+0xb0c>
 8006410:	2301      	movs	r3, #1
 8006412:	930a      	str	r3, [sp, #40]	; 0x28
 8006414:	e6c8      	b.n	80061a8 <_dtoa_r+0x918>
 8006416:	4651      	mov	r1, sl
 8006418:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800641a:	4648      	mov	r0, r9
 800641c:	f001 fa9e 	bl	800795c <__pow5mult>
 8006420:	4682      	mov	sl, r0
 8006422:	e572      	b.n	8005f0a <_dtoa_r+0x67a>
 8006424:	f8dd a000 	ldr.w	sl, [sp]
 8006428:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800642c:	e686      	b.n	800613c <_dtoa_r+0x8ac>
 800642e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006430:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006432:	1afb      	subs	r3, r7, r3
 8006434:	441a      	add	r2, r3
 8006436:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800643a:	2700      	movs	r7, #0
 800643c:	e512      	b.n	8005e64 <_dtoa_r+0x5d4>
 800643e:	2b00      	cmp	r3, #0
 8006440:	9402      	str	r4, [sp, #8]
 8006442:	465e      	mov	r6, fp
 8006444:	f107 0401 	add.w	r4, r7, #1
 8006448:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800644c:	f300 80ba 	bgt.w	80065c4 <_dtoa_r+0xd34>
 8006450:	9b00      	ldr	r3, [sp, #0]
 8006452:	9502      	str	r5, [sp, #8]
 8006454:	703b      	strb	r3, [r7, #0]
 8006456:	4645      	mov	r5, r8
 8006458:	e660      	b.n	800611c <_dtoa_r+0x88c>
 800645a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800645e:	2602      	movs	r6, #2
 8006460:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8006464:	f7ff bb67 	b.w	8005b36 <_dtoa_r+0x2a6>
 8006468:	9b00      	ldr	r3, [sp, #0]
 800646a:	2b39      	cmp	r3, #57	; 0x39
 800646c:	465e      	mov	r6, fp
 800646e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006472:	f000 80b9 	beq.w	80065e8 <_dtoa_r+0xd58>
 8006476:	9b00      	ldr	r3, [sp, #0]
 8006478:	9502      	str	r5, [sp, #8]
 800647a:	3301      	adds	r3, #1
 800647c:	703b      	strb	r3, [r7, #0]
 800647e:	4645      	mov	r5, r8
 8006480:	e64c      	b.n	800611c <_dtoa_r+0x88c>
 8006482:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8006486:	1a9c      	subs	r4, r3, r2
 8006488:	e4f5      	b.n	8005e76 <_dtoa_r+0x5e6>
 800648a:	465e      	mov	r6, fp
 800648c:	9502      	str	r5, [sp, #8]
 800648e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006492:	4645      	mov	r5, r8
 8006494:	e61a      	b.n	80060cc <_dtoa_r+0x83c>
 8006496:	2600      	movs	r6, #0
 8006498:	4635      	mov	r5, r6
 800649a:	e708      	b.n	80062ae <_dtoa_r+0xa1e>
 800649c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80064a0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80064a4:	f7fa fba8 	bl	8000bf8 <__aeabi_dmul>
 80064a8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80064aa:	f88b 5000 	strb.w	r5, [fp]
 80064ae:	2b01      	cmp	r3, #1
 80064b0:	e9cd 0100 	strd	r0, r1, [sp]
 80064b4:	d020      	beq.n	80064f8 <_dtoa_r+0xc68>
 80064b6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80064b8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80064bc:	445b      	add	r3, fp
 80064be:	4698      	mov	r8, r3
 80064c0:	2200      	movs	r2, #0
 80064c2:	4b2c      	ldr	r3, [pc, #176]	; (8006574 <_dtoa_r+0xce4>)
 80064c4:	4630      	mov	r0, r6
 80064c6:	4639      	mov	r1, r7
 80064c8:	f7fa fb96 	bl	8000bf8 <__aeabi_dmul>
 80064cc:	460f      	mov	r7, r1
 80064ce:	4606      	mov	r6, r0
 80064d0:	f7fa fe42 	bl	8001158 <__aeabi_d2iz>
 80064d4:	4605      	mov	r5, r0
 80064d6:	f7fa fb25 	bl	8000b24 <__aeabi_i2d>
 80064da:	3530      	adds	r5, #48	; 0x30
 80064dc:	4602      	mov	r2, r0
 80064de:	460b      	mov	r3, r1
 80064e0:	4630      	mov	r0, r6
 80064e2:	4639      	mov	r1, r7
 80064e4:	f7fa f9d0 	bl	8000888 <__aeabi_dsub>
 80064e8:	f804 5b01 	strb.w	r5, [r4], #1
 80064ec:	4544      	cmp	r4, r8
 80064ee:	4606      	mov	r6, r0
 80064f0:	460f      	mov	r7, r1
 80064f2:	d1e5      	bne.n	80064c0 <_dtoa_r+0xc30>
 80064f4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80064f8:	4b1f      	ldr	r3, [pc, #124]	; (8006578 <_dtoa_r+0xce8>)
 80064fa:	2200      	movs	r2, #0
 80064fc:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006500:	f7fa f9c4 	bl	800088c <__adddf3>
 8006504:	4632      	mov	r2, r6
 8006506:	463b      	mov	r3, r7
 8006508:	f7fa fde8 	bl	80010dc <__aeabi_dcmplt>
 800650c:	2800      	cmp	r0, #0
 800650e:	d070      	beq.n	80065f2 <_dtoa_r+0xd62>
 8006510:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006512:	9306      	str	r3, [sp, #24]
 8006514:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8006518:	e48f      	b.n	8005e3a <_dtoa_r+0x5aa>
 800651a:	2330      	movs	r3, #48	; 0x30
 800651c:	f88b 3000 	strb.w	r3, [fp]
 8006520:	9b06      	ldr	r3, [sp, #24]
 8006522:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8006526:	3301      	adds	r3, #1
 8006528:	9306      	str	r3, [sp, #24]
 800652a:	465b      	mov	r3, fp
 800652c:	e489      	b.n	8005e42 <_dtoa_r+0x5b2>
 800652e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8006530:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8006534:	e6a0      	b.n	8006278 <_dtoa_r+0x9e8>
 8006536:	2300      	movs	r3, #0
 8006538:	e676      	b.n	8006228 <_dtoa_r+0x998>
 800653a:	4631      	mov	r1, r6
 800653c:	2205      	movs	r2, #5
 800653e:	4648      	mov	r0, r9
 8006540:	f001 f8cc 	bl	80076dc <__multadd>
 8006544:	4601      	mov	r1, r0
 8006546:	4606      	mov	r6, r0
 8006548:	4650      	mov	r0, sl
 800654a:	f001 faad 	bl	8007aa8 <__mcmp>
 800654e:	2800      	cmp	r0, #0
 8006550:	f73f aead 	bgt.w	80062ae <_dtoa_r+0xa1e>
 8006554:	e722      	b.n	800639c <_dtoa_r+0xb0c>
 8006556:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800655a:	2602      	movs	r6, #2
 800655c:	ed8d 7b00 	vstr	d7, [sp]
 8006560:	f7ff bb02 	b.w	8005b68 <_dtoa_r+0x2d8>
 8006564:	40140000 	.word	0x40140000
 8006568:	08008920 	.word	0x08008920
 800656c:	080088f8 	.word	0x080088f8
 8006570:	401c0000 	.word	0x401c0000
 8006574:	40240000 	.word	0x40240000
 8006578:	3fe00000 	.word	0x3fe00000
 800657c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800657e:	2b00      	cmp	r3, #0
 8006580:	f43f af1d 	beq.w	80063be <_dtoa_r+0xb2e>
 8006584:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8006586:	2c00      	cmp	r4, #0
 8006588:	f77f aba8 	ble.w	8005cdc <_dtoa_r+0x44c>
 800658c:	2200      	movs	r2, #0
 800658e:	4b45      	ldr	r3, [pc, #276]	; (80066a4 <_dtoa_r+0xe14>)
 8006590:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006594:	f7fa fb30 	bl	8000bf8 <__aeabi_dmul>
 8006598:	e9cd 0100 	strd	r0, r1, [sp]
 800659c:	1c70      	adds	r0, r6, #1
 800659e:	f7fa fac1 	bl	8000b24 <__aeabi_i2d>
 80065a2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80065a6:	f7fa fb27 	bl	8000bf8 <__aeabi_dmul>
 80065aa:	4b3f      	ldr	r3, [pc, #252]	; (80066a8 <_dtoa_r+0xe18>)
 80065ac:	2200      	movs	r2, #0
 80065ae:	f7fa f96d 	bl	800088c <__adddf3>
 80065b2:	9b06      	ldr	r3, [sp, #24]
 80065b4:	9412      	str	r4, [sp, #72]	; 0x48
 80065b6:	3b01      	subs	r3, #1
 80065b8:	4606      	mov	r6, r0
 80065ba:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80065be:	9316      	str	r3, [sp, #88]	; 0x58
 80065c0:	f7ff baf3 	b.w	8005baa <_dtoa_r+0x31a>
 80065c4:	4651      	mov	r1, sl
 80065c6:	2201      	movs	r2, #1
 80065c8:	4648      	mov	r0, r9
 80065ca:	f001 fa17 	bl	80079fc <__lshift>
 80065ce:	4631      	mov	r1, r6
 80065d0:	4682      	mov	sl, r0
 80065d2:	f001 fa69 	bl	8007aa8 <__mcmp>
 80065d6:	2800      	cmp	r0, #0
 80065d8:	dd3b      	ble.n	8006652 <_dtoa_r+0xdc2>
 80065da:	9b00      	ldr	r3, [sp, #0]
 80065dc:	2b39      	cmp	r3, #57	; 0x39
 80065de:	d003      	beq.n	80065e8 <_dtoa_r+0xd58>
 80065e0:	9b02      	ldr	r3, [sp, #8]
 80065e2:	3331      	adds	r3, #49	; 0x31
 80065e4:	9300      	str	r3, [sp, #0]
 80065e6:	e733      	b.n	8006450 <_dtoa_r+0xbc0>
 80065e8:	2239      	movs	r2, #57	; 0x39
 80065ea:	9502      	str	r5, [sp, #8]
 80065ec:	703a      	strb	r2, [r7, #0]
 80065ee:	4645      	mov	r5, r8
 80065f0:	e58e      	b.n	8006110 <_dtoa_r+0x880>
 80065f2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80065f6:	2000      	movs	r0, #0
 80065f8:	492c      	ldr	r1, [pc, #176]	; (80066ac <_dtoa_r+0xe1c>)
 80065fa:	f7fa f945 	bl	8000888 <__aeabi_dsub>
 80065fe:	4632      	mov	r2, r6
 8006600:	463b      	mov	r3, r7
 8006602:	f7fa fd89 	bl	8001118 <__aeabi_dcmpgt>
 8006606:	b910      	cbnz	r0, 800660e <_dtoa_r+0xd7e>
 8006608:	f7ff bb68 	b.w	8005cdc <_dtoa_r+0x44c>
 800660c:	4614      	mov	r4, r2
 800660e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8006612:	2b30      	cmp	r3, #48	; 0x30
 8006614:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8006618:	d0f8      	beq.n	800660c <_dtoa_r+0xd7c>
 800661a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800661c:	9306      	str	r3, [sp, #24]
 800661e:	e58d      	b.n	800613c <_dtoa_r+0x8ac>
 8006620:	46d9      	mov	r9, fp
 8006622:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8006626:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800662a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800662c:	9306      	str	r3, [sp, #24]
 800662e:	e404      	b.n	8005e3a <_dtoa_r+0x5aa>
 8006630:	9b00      	ldr	r3, [sp, #0]
 8006632:	2b39      	cmp	r3, #57	; 0x39
 8006634:	4621      	mov	r1, r4
 8006636:	4632      	mov	r2, r6
 8006638:	f107 0401 	add.w	r4, r7, #1
 800663c:	465e      	mov	r6, fp
 800663e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006642:	d0d1      	beq.n	80065e8 <_dtoa_r+0xd58>
 8006644:	2a00      	cmp	r2, #0
 8006646:	f77f af03 	ble.w	8006450 <_dtoa_r+0xbc0>
 800664a:	460b      	mov	r3, r1
 800664c:	3331      	adds	r3, #49	; 0x31
 800664e:	9300      	str	r3, [sp, #0]
 8006650:	e6fe      	b.n	8006450 <_dtoa_r+0xbc0>
 8006652:	f47f aefd 	bne.w	8006450 <_dtoa_r+0xbc0>
 8006656:	9b00      	ldr	r3, [sp, #0]
 8006658:	07da      	lsls	r2, r3, #31
 800665a:	f57f aef9 	bpl.w	8006450 <_dtoa_r+0xbc0>
 800665e:	e7bc      	b.n	80065da <_dtoa_r+0xd4a>
 8006660:	4629      	mov	r1, r5
 8006662:	2300      	movs	r3, #0
 8006664:	220a      	movs	r2, #10
 8006666:	4648      	mov	r0, r9
 8006668:	f001 f838 	bl	80076dc <__multadd>
 800666c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800666e:	2b00      	cmp	r3, #0
 8006670:	4605      	mov	r5, r0
 8006672:	dd09      	ble.n	8006688 <_dtoa_r+0xdf8>
 8006674:	9309      	str	r3, [sp, #36]	; 0x24
 8006676:	e484      	b.n	8005f82 <_dtoa_r+0x6f2>
 8006678:	9b02      	ldr	r3, [sp, #8]
 800667a:	2b02      	cmp	r3, #2
 800667c:	dc0e      	bgt.n	800669c <_dtoa_r+0xe0c>
 800667e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006680:	e507      	b.n	8006092 <_dtoa_r+0x802>
 8006682:	2602      	movs	r6, #2
 8006684:	f7ff ba70 	b.w	8005b68 <_dtoa_r+0x2d8>
 8006688:	9b02      	ldr	r3, [sp, #8]
 800668a:	2b02      	cmp	r3, #2
 800668c:	dc06      	bgt.n	800669c <_dtoa_r+0xe0c>
 800668e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006690:	e7f0      	b.n	8006674 <_dtoa_r+0xde4>
 8006692:	f43f ac59 	beq.w	8005f48 <_dtoa_r+0x6b8>
 8006696:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800669a:	e450      	b.n	8005f3e <_dtoa_r+0x6ae>
 800669c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800669e:	9309      	str	r3, [sp, #36]	; 0x24
 80066a0:	e678      	b.n	8006394 <_dtoa_r+0xb04>
 80066a2:	bf00      	nop
 80066a4:	40240000 	.word	0x40240000
 80066a8:	401c0000 	.word	0x401c0000
 80066ac:	3fe00000 	.word	0x3fe00000

080066b0 <__sflush_r>:
 80066b0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80066b4:	b29a      	uxth	r2, r3
 80066b6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80066ba:	460c      	mov	r4, r1
 80066bc:	0711      	lsls	r1, r2, #28
 80066be:	4680      	mov	r8, r0
 80066c0:	d444      	bmi.n	800674c <__sflush_r+0x9c>
 80066c2:	6862      	ldr	r2, [r4, #4]
 80066c4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80066c8:	2a00      	cmp	r2, #0
 80066ca:	81a3      	strh	r3, [r4, #12]
 80066cc:	dd59      	ble.n	8006782 <__sflush_r+0xd2>
 80066ce:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80066d0:	2d00      	cmp	r5, #0
 80066d2:	d053      	beq.n	800677c <__sflush_r+0xcc>
 80066d4:	2200      	movs	r2, #0
 80066d6:	b29b      	uxth	r3, r3
 80066d8:	f8d8 6000 	ldr.w	r6, [r8]
 80066dc:	69e1      	ldr	r1, [r4, #28]
 80066de:	f8c8 2000 	str.w	r2, [r8]
 80066e2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80066e6:	f040 8083 	bne.w	80067f0 <__sflush_r+0x140>
 80066ea:	2301      	movs	r3, #1
 80066ec:	4640      	mov	r0, r8
 80066ee:	47a8      	blx	r5
 80066f0:	1c42      	adds	r2, r0, #1
 80066f2:	d04a      	beq.n	800678a <__sflush_r+0xda>
 80066f4:	89a3      	ldrh	r3, [r4, #12]
 80066f6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80066f8:	69e1      	ldr	r1, [r4, #28]
 80066fa:	075b      	lsls	r3, r3, #29
 80066fc:	d505      	bpl.n	800670a <__sflush_r+0x5a>
 80066fe:	6862      	ldr	r2, [r4, #4]
 8006700:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8006702:	1a80      	subs	r0, r0, r2
 8006704:	b10b      	cbz	r3, 800670a <__sflush_r+0x5a>
 8006706:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8006708:	1ac0      	subs	r0, r0, r3
 800670a:	4602      	mov	r2, r0
 800670c:	2300      	movs	r3, #0
 800670e:	4640      	mov	r0, r8
 8006710:	47a8      	blx	r5
 8006712:	1c47      	adds	r7, r0, #1
 8006714:	d045      	beq.n	80067a2 <__sflush_r+0xf2>
 8006716:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800671a:	6922      	ldr	r2, [r4, #16]
 800671c:	6022      	str	r2, [r4, #0]
 800671e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8006722:	2200      	movs	r2, #0
 8006724:	81a3      	strh	r3, [r4, #12]
 8006726:	04db      	lsls	r3, r3, #19
 8006728:	6062      	str	r2, [r4, #4]
 800672a:	d500      	bpl.n	800672e <__sflush_r+0x7e>
 800672c:	6520      	str	r0, [r4, #80]	; 0x50
 800672e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006730:	f8c8 6000 	str.w	r6, [r8]
 8006734:	b311      	cbz	r1, 800677c <__sflush_r+0xcc>
 8006736:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800673a:	4299      	cmp	r1, r3
 800673c:	d002      	beq.n	8006744 <__sflush_r+0x94>
 800673e:	4640      	mov	r0, r8
 8006740:	f000 f95e 	bl	8006a00 <_free_r>
 8006744:	2000      	movs	r0, #0
 8006746:	6320      	str	r0, [r4, #48]	; 0x30
 8006748:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800674c:	6926      	ldr	r6, [r4, #16]
 800674e:	b1ae      	cbz	r6, 800677c <__sflush_r+0xcc>
 8006750:	6825      	ldr	r5, [r4, #0]
 8006752:	6026      	str	r6, [r4, #0]
 8006754:	0792      	lsls	r2, r2, #30
 8006756:	bf0c      	ite	eq
 8006758:	6963      	ldreq	r3, [r4, #20]
 800675a:	2300      	movne	r3, #0
 800675c:	1bad      	subs	r5, r5, r6
 800675e:	60a3      	str	r3, [r4, #8]
 8006760:	e00a      	b.n	8006778 <__sflush_r+0xc8>
 8006762:	462b      	mov	r3, r5
 8006764:	4632      	mov	r2, r6
 8006766:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8006768:	69e1      	ldr	r1, [r4, #28]
 800676a:	4640      	mov	r0, r8
 800676c:	47b8      	blx	r7
 800676e:	2800      	cmp	r0, #0
 8006770:	eba5 0500 	sub.w	r5, r5, r0
 8006774:	4406      	add	r6, r0
 8006776:	dd2b      	ble.n	80067d0 <__sflush_r+0x120>
 8006778:	2d00      	cmp	r5, #0
 800677a:	dcf2      	bgt.n	8006762 <__sflush_r+0xb2>
 800677c:	2000      	movs	r0, #0
 800677e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006782:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8006784:	2a00      	cmp	r2, #0
 8006786:	dca2      	bgt.n	80066ce <__sflush_r+0x1e>
 8006788:	e7f8      	b.n	800677c <__sflush_r+0xcc>
 800678a:	f8d8 3000 	ldr.w	r3, [r8]
 800678e:	2b00      	cmp	r3, #0
 8006790:	d0b0      	beq.n	80066f4 <__sflush_r+0x44>
 8006792:	2b1d      	cmp	r3, #29
 8006794:	d001      	beq.n	800679a <__sflush_r+0xea>
 8006796:	2b16      	cmp	r3, #22
 8006798:	d12c      	bne.n	80067f4 <__sflush_r+0x144>
 800679a:	f8c8 6000 	str.w	r6, [r8]
 800679e:	2000      	movs	r0, #0
 80067a0:	e7ed      	b.n	800677e <__sflush_r+0xce>
 80067a2:	f8d8 1000 	ldr.w	r1, [r8]
 80067a6:	291d      	cmp	r1, #29
 80067a8:	d81a      	bhi.n	80067e0 <__sflush_r+0x130>
 80067aa:	4b15      	ldr	r3, [pc, #84]	; (8006800 <__sflush_r+0x150>)
 80067ac:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80067b0:	40cb      	lsrs	r3, r1
 80067b2:	43db      	mvns	r3, r3
 80067b4:	f013 0301 	ands.w	r3, r3, #1
 80067b8:	d114      	bne.n	80067e4 <__sflush_r+0x134>
 80067ba:	6925      	ldr	r5, [r4, #16]
 80067bc:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80067c0:	e9c4 5300 	strd	r5, r3, [r4]
 80067c4:	04d5      	lsls	r5, r2, #19
 80067c6:	81a2      	strh	r2, [r4, #12]
 80067c8:	d5b1      	bpl.n	800672e <__sflush_r+0x7e>
 80067ca:	2900      	cmp	r1, #0
 80067cc:	d1af      	bne.n	800672e <__sflush_r+0x7e>
 80067ce:	e7ad      	b.n	800672c <__sflush_r+0x7c>
 80067d0:	89a3      	ldrh	r3, [r4, #12]
 80067d2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80067d6:	81a3      	strh	r3, [r4, #12]
 80067d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80067dc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80067e0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80067e4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80067e8:	81a2      	strh	r2, [r4, #12]
 80067ea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80067ee:	e7c6      	b.n	800677e <__sflush_r+0xce>
 80067f0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80067f2:	e782      	b.n	80066fa <__sflush_r+0x4a>
 80067f4:	89a3      	ldrh	r3, [r4, #12]
 80067f6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80067fa:	81a3      	strh	r3, [r4, #12]
 80067fc:	e7bf      	b.n	800677e <__sflush_r+0xce>
 80067fe:	bf00      	nop
 8006800:	20400001 	.word	0x20400001

08006804 <_fflush_r>:
 8006804:	b538      	push	{r3, r4, r5, lr}
 8006806:	460d      	mov	r5, r1
 8006808:	4604      	mov	r4, r0
 800680a:	b108      	cbz	r0, 8006810 <_fflush_r+0xc>
 800680c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800680e:	b1a3      	cbz	r3, 800683a <_fflush_r+0x36>
 8006810:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8006814:	b1b8      	cbz	r0, 8006846 <_fflush_r+0x42>
 8006816:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8006818:	07db      	lsls	r3, r3, #31
 800681a:	d401      	bmi.n	8006820 <_fflush_r+0x1c>
 800681c:	0581      	lsls	r1, r0, #22
 800681e:	d51a      	bpl.n	8006856 <_fflush_r+0x52>
 8006820:	4620      	mov	r0, r4
 8006822:	4629      	mov	r1, r5
 8006824:	f7ff ff44 	bl	80066b0 <__sflush_r>
 8006828:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800682a:	07da      	lsls	r2, r3, #31
 800682c:	4604      	mov	r4, r0
 800682e:	d402      	bmi.n	8006836 <_fflush_r+0x32>
 8006830:	89ab      	ldrh	r3, [r5, #12]
 8006832:	059b      	lsls	r3, r3, #22
 8006834:	d50a      	bpl.n	800684c <_fflush_r+0x48>
 8006836:	4620      	mov	r0, r4
 8006838:	bd38      	pop	{r3, r4, r5, pc}
 800683a:	f000 f83f 	bl	80068bc <__sinit>
 800683e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8006842:	2800      	cmp	r0, #0
 8006844:	d1e7      	bne.n	8006816 <_fflush_r+0x12>
 8006846:	4604      	mov	r4, r0
 8006848:	4620      	mov	r0, r4
 800684a:	bd38      	pop	{r3, r4, r5, pc}
 800684c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800684e:	f000 fb87 	bl	8006f60 <__retarget_lock_release_recursive>
 8006852:	4620      	mov	r0, r4
 8006854:	bd38      	pop	{r3, r4, r5, pc}
 8006856:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8006858:	f000 fb80 	bl	8006f5c <__retarget_lock_acquire_recursive>
 800685c:	e7e0      	b.n	8006820 <_fflush_r+0x1c>
 800685e:	bf00      	nop

08006860 <std>:
 8006860:	b510      	push	{r4, lr}
 8006862:	2300      	movs	r3, #0
 8006864:	4604      	mov	r4, r0
 8006866:	8181      	strh	r1, [r0, #12]
 8006868:	81c2      	strh	r2, [r0, #14]
 800686a:	e9c0 3300 	strd	r3, r3, [r0]
 800686e:	6083      	str	r3, [r0, #8]
 8006870:	6643      	str	r3, [r0, #100]	; 0x64
 8006872:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8006876:	6183      	str	r3, [r0, #24]
 8006878:	4619      	mov	r1, r3
 800687a:	2208      	movs	r2, #8
 800687c:	305c      	adds	r0, #92	; 0x5c
 800687e:	f7fd f8cb 	bl	8003a18 <memset>
 8006882:	4807      	ldr	r0, [pc, #28]	; (80068a0 <std+0x40>)
 8006884:	4907      	ldr	r1, [pc, #28]	; (80068a4 <std+0x44>)
 8006886:	4a08      	ldr	r2, [pc, #32]	; (80068a8 <std+0x48>)
 8006888:	4b08      	ldr	r3, [pc, #32]	; (80068ac <std+0x4c>)
 800688a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800688c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8006890:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8006894:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8006898:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800689c:	f000 bb5a 	b.w	8006f54 <__retarget_lock_init_recursive>
 80068a0:	08008079 	.word	0x08008079
 80068a4:	0800809d 	.word	0x0800809d
 80068a8:	080080d9 	.word	0x080080d9
 80068ac:	080080f9 	.word	0x080080f9

080068b0 <_cleanup_r>:
 80068b0:	4901      	ldr	r1, [pc, #4]	; (80068b8 <_cleanup_r+0x8>)
 80068b2:	f000 bb17 	b.w	8006ee4 <_fwalk_reent>
 80068b6:	bf00      	nop
 80068b8:	08008369 	.word	0x08008369

080068bc <__sinit>:
 80068bc:	b510      	push	{r4, lr}
 80068be:	4604      	mov	r4, r0
 80068c0:	4812      	ldr	r0, [pc, #72]	; (800690c <__sinit+0x50>)
 80068c2:	f000 fb4b 	bl	8006f5c <__retarget_lock_acquire_recursive>
 80068c6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80068c8:	b9d2      	cbnz	r2, 8006900 <__sinit+0x44>
 80068ca:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80068ce:	4810      	ldr	r0, [pc, #64]	; (8006910 <__sinit+0x54>)
 80068d0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80068d4:	2103      	movs	r1, #3
 80068d6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80068da:	63e0      	str	r0, [r4, #60]	; 0x3c
 80068dc:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80068e0:	6860      	ldr	r0, [r4, #4]
 80068e2:	2104      	movs	r1, #4
 80068e4:	f7ff ffbc 	bl	8006860 <std>
 80068e8:	2201      	movs	r2, #1
 80068ea:	2109      	movs	r1, #9
 80068ec:	68a0      	ldr	r0, [r4, #8]
 80068ee:	f7ff ffb7 	bl	8006860 <std>
 80068f2:	2202      	movs	r2, #2
 80068f4:	2112      	movs	r1, #18
 80068f6:	68e0      	ldr	r0, [r4, #12]
 80068f8:	f7ff ffb2 	bl	8006860 <std>
 80068fc:	2301      	movs	r3, #1
 80068fe:	63a3      	str	r3, [r4, #56]	; 0x38
 8006900:	4802      	ldr	r0, [pc, #8]	; (800690c <__sinit+0x50>)
 8006902:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8006906:	f000 bb2b 	b.w	8006f60 <__retarget_lock_release_recursive>
 800690a:	bf00      	nop
 800690c:	20000c18 	.word	0x20000c18
 8006910:	080068b1 	.word	0x080068b1

08006914 <__sfp_lock_acquire>:
 8006914:	4801      	ldr	r0, [pc, #4]	; (800691c <__sfp_lock_acquire+0x8>)
 8006916:	f000 bb21 	b.w	8006f5c <__retarget_lock_acquire_recursive>
 800691a:	bf00      	nop
 800691c:	20000c2c 	.word	0x20000c2c

08006920 <__sfp_lock_release>:
 8006920:	4801      	ldr	r0, [pc, #4]	; (8006928 <__sfp_lock_release+0x8>)
 8006922:	f000 bb1d 	b.w	8006f60 <__retarget_lock_release_recursive>
 8006926:	bf00      	nop
 8006928:	20000c2c 	.word	0x20000c2c

0800692c <__libc_fini_array>:
 800692c:	b538      	push	{r3, r4, r5, lr}
 800692e:	4c0a      	ldr	r4, [pc, #40]	; (8006958 <__libc_fini_array+0x2c>)
 8006930:	4d0a      	ldr	r5, [pc, #40]	; (800695c <__libc_fini_array+0x30>)
 8006932:	1b64      	subs	r4, r4, r5
 8006934:	10a4      	asrs	r4, r4, #2
 8006936:	d00a      	beq.n	800694e <__libc_fini_array+0x22>
 8006938:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800693c:	3b01      	subs	r3, #1
 800693e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8006942:	3c01      	subs	r4, #1
 8006944:	f855 3904 	ldr.w	r3, [r5], #-4
 8006948:	4798      	blx	r3
 800694a:	2c00      	cmp	r4, #0
 800694c:	d1f9      	bne.n	8006942 <__libc_fini_array+0x16>
 800694e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8006952:	f001 befd 	b.w	8008750 <_fini>
 8006956:	bf00      	nop
 8006958:	08008b1c 	.word	0x08008b1c
 800695c:	08008b18 	.word	0x08008b18

08006960 <_malloc_trim_r>:
 8006960:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006962:	4f24      	ldr	r7, [pc, #144]	; (80069f4 <_malloc_trim_r+0x94>)
 8006964:	460c      	mov	r4, r1
 8006966:	4606      	mov	r6, r0
 8006968:	f000 fe7c 	bl	8007664 <__malloc_lock>
 800696c:	68bb      	ldr	r3, [r7, #8]
 800696e:	685d      	ldr	r5, [r3, #4]
 8006970:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8006974:	310f      	adds	r1, #15
 8006976:	f025 0503 	bic.w	r5, r5, #3
 800697a:	4429      	add	r1, r5
 800697c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8006980:	f021 010f 	bic.w	r1, r1, #15
 8006984:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8006988:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800698c:	db07      	blt.n	800699e <_malloc_trim_r+0x3e>
 800698e:	2100      	movs	r1, #0
 8006990:	4630      	mov	r0, r6
 8006992:	f001 fb5f 	bl	8008054 <_sbrk_r>
 8006996:	68bb      	ldr	r3, [r7, #8]
 8006998:	442b      	add	r3, r5
 800699a:	4298      	cmp	r0, r3
 800699c:	d004      	beq.n	80069a8 <_malloc_trim_r+0x48>
 800699e:	4630      	mov	r0, r6
 80069a0:	f000 fe66 	bl	8007670 <__malloc_unlock>
 80069a4:	2000      	movs	r0, #0
 80069a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80069a8:	4261      	negs	r1, r4
 80069aa:	4630      	mov	r0, r6
 80069ac:	f001 fb52 	bl	8008054 <_sbrk_r>
 80069b0:	3001      	adds	r0, #1
 80069b2:	d00d      	beq.n	80069d0 <_malloc_trim_r+0x70>
 80069b4:	4b10      	ldr	r3, [pc, #64]	; (80069f8 <_malloc_trim_r+0x98>)
 80069b6:	68ba      	ldr	r2, [r7, #8]
 80069b8:	6819      	ldr	r1, [r3, #0]
 80069ba:	1b2d      	subs	r5, r5, r4
 80069bc:	f045 0501 	orr.w	r5, r5, #1
 80069c0:	4630      	mov	r0, r6
 80069c2:	1b09      	subs	r1, r1, r4
 80069c4:	6055      	str	r5, [r2, #4]
 80069c6:	6019      	str	r1, [r3, #0]
 80069c8:	f000 fe52 	bl	8007670 <__malloc_unlock>
 80069cc:	2001      	movs	r0, #1
 80069ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80069d0:	2100      	movs	r1, #0
 80069d2:	4630      	mov	r0, r6
 80069d4:	f001 fb3e 	bl	8008054 <_sbrk_r>
 80069d8:	68ba      	ldr	r2, [r7, #8]
 80069da:	1a83      	subs	r3, r0, r2
 80069dc:	2b0f      	cmp	r3, #15
 80069de:	ddde      	ble.n	800699e <_malloc_trim_r+0x3e>
 80069e0:	4c06      	ldr	r4, [pc, #24]	; (80069fc <_malloc_trim_r+0x9c>)
 80069e2:	4905      	ldr	r1, [pc, #20]	; (80069f8 <_malloc_trim_r+0x98>)
 80069e4:	6824      	ldr	r4, [r4, #0]
 80069e6:	f043 0301 	orr.w	r3, r3, #1
 80069ea:	1b00      	subs	r0, r0, r4
 80069ec:	6053      	str	r3, [r2, #4]
 80069ee:	6008      	str	r0, [r1, #0]
 80069f0:	e7d5      	b.n	800699e <_malloc_trim_r+0x3e>
 80069f2:	bf00      	nop
 80069f4:	2000044c 	.word	0x2000044c
 80069f8:	20000aac 	.word	0x20000aac
 80069fc:	20000854 	.word	0x20000854

08006a00 <_free_r>:
 8006a00:	2900      	cmp	r1, #0
 8006a02:	d053      	beq.n	8006aac <_free_r+0xac>
 8006a04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006a06:	460c      	mov	r4, r1
 8006a08:	4606      	mov	r6, r0
 8006a0a:	f000 fe2b 	bl	8007664 <__malloc_lock>
 8006a0e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8006a12:	4f71      	ldr	r7, [pc, #452]	; (8006bd8 <_free_r+0x1d8>)
 8006a14:	f02c 0101 	bic.w	r1, ip, #1
 8006a18:	f1a4 0508 	sub.w	r5, r4, #8
 8006a1c:	186b      	adds	r3, r5, r1
 8006a1e:	68b8      	ldr	r0, [r7, #8]
 8006a20:	685a      	ldr	r2, [r3, #4]
 8006a22:	4298      	cmp	r0, r3
 8006a24:	f022 0203 	bic.w	r2, r2, #3
 8006a28:	d053      	beq.n	8006ad2 <_free_r+0xd2>
 8006a2a:	f01c 0f01 	tst.w	ip, #1
 8006a2e:	605a      	str	r2, [r3, #4]
 8006a30:	eb03 0002 	add.w	r0, r3, r2
 8006a34:	d13b      	bne.n	8006aae <_free_r+0xae>
 8006a36:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8006a3a:	6840      	ldr	r0, [r0, #4]
 8006a3c:	eba5 050c 	sub.w	r5, r5, ip
 8006a40:	f107 0e08 	add.w	lr, r7, #8
 8006a44:	68ac      	ldr	r4, [r5, #8]
 8006a46:	4574      	cmp	r4, lr
 8006a48:	4461      	add	r1, ip
 8006a4a:	f000 0001 	and.w	r0, r0, #1
 8006a4e:	d075      	beq.n	8006b3c <_free_r+0x13c>
 8006a50:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8006a54:	f8c4 c00c 	str.w	ip, [r4, #12]
 8006a58:	f8cc 4008 	str.w	r4, [ip, #8]
 8006a5c:	b360      	cbz	r0, 8006ab8 <_free_r+0xb8>
 8006a5e:	f041 0301 	orr.w	r3, r1, #1
 8006a62:	606b      	str	r3, [r5, #4]
 8006a64:	5069      	str	r1, [r5, r1]
 8006a66:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8006a6a:	d350      	bcc.n	8006b0e <_free_r+0x10e>
 8006a6c:	0a4b      	lsrs	r3, r1, #9
 8006a6e:	2b04      	cmp	r3, #4
 8006a70:	d870      	bhi.n	8006b54 <_free_r+0x154>
 8006a72:	098b      	lsrs	r3, r1, #6
 8006a74:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8006a78:	00e4      	lsls	r4, r4, #3
 8006a7a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8006a7e:	1938      	adds	r0, r7, r4
 8006a80:	593b      	ldr	r3, [r7, r4]
 8006a82:	3808      	subs	r0, #8
 8006a84:	4298      	cmp	r0, r3
 8006a86:	d078      	beq.n	8006b7a <_free_r+0x17a>
 8006a88:	685a      	ldr	r2, [r3, #4]
 8006a8a:	f022 0203 	bic.w	r2, r2, #3
 8006a8e:	428a      	cmp	r2, r1
 8006a90:	d971      	bls.n	8006b76 <_free_r+0x176>
 8006a92:	689b      	ldr	r3, [r3, #8]
 8006a94:	4298      	cmp	r0, r3
 8006a96:	d1f7      	bne.n	8006a88 <_free_r+0x88>
 8006a98:	68c3      	ldr	r3, [r0, #12]
 8006a9a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8006a9e:	609d      	str	r5, [r3, #8]
 8006aa0:	60c5      	str	r5, [r0, #12]
 8006aa2:	4630      	mov	r0, r6
 8006aa4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006aa8:	f000 bde2 	b.w	8007670 <__malloc_unlock>
 8006aac:	4770      	bx	lr
 8006aae:	6840      	ldr	r0, [r0, #4]
 8006ab0:	f000 0001 	and.w	r0, r0, #1
 8006ab4:	2800      	cmp	r0, #0
 8006ab6:	d1d2      	bne.n	8006a5e <_free_r+0x5e>
 8006ab8:	6898      	ldr	r0, [r3, #8]
 8006aba:	4c48      	ldr	r4, [pc, #288]	; (8006bdc <_free_r+0x1dc>)
 8006abc:	4411      	add	r1, r2
 8006abe:	42a0      	cmp	r0, r4
 8006ac0:	f041 0201 	orr.w	r2, r1, #1
 8006ac4:	d062      	beq.n	8006b8c <_free_r+0x18c>
 8006ac6:	68db      	ldr	r3, [r3, #12]
 8006ac8:	60c3      	str	r3, [r0, #12]
 8006aca:	6098      	str	r0, [r3, #8]
 8006acc:	606a      	str	r2, [r5, #4]
 8006ace:	5069      	str	r1, [r5, r1]
 8006ad0:	e7c9      	b.n	8006a66 <_free_r+0x66>
 8006ad2:	f01c 0f01 	tst.w	ip, #1
 8006ad6:	440a      	add	r2, r1
 8006ad8:	d107      	bne.n	8006aea <_free_r+0xea>
 8006ada:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8006ade:	1aed      	subs	r5, r5, r3
 8006ae0:	441a      	add	r2, r3
 8006ae2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8006ae6:	60cb      	str	r3, [r1, #12]
 8006ae8:	6099      	str	r1, [r3, #8]
 8006aea:	4b3d      	ldr	r3, [pc, #244]	; (8006be0 <_free_r+0x1e0>)
 8006aec:	681b      	ldr	r3, [r3, #0]
 8006aee:	f042 0101 	orr.w	r1, r2, #1
 8006af2:	4293      	cmp	r3, r2
 8006af4:	6069      	str	r1, [r5, #4]
 8006af6:	60bd      	str	r5, [r7, #8]
 8006af8:	d804      	bhi.n	8006b04 <_free_r+0x104>
 8006afa:	4b3a      	ldr	r3, [pc, #232]	; (8006be4 <_free_r+0x1e4>)
 8006afc:	4630      	mov	r0, r6
 8006afe:	6819      	ldr	r1, [r3, #0]
 8006b00:	f7ff ff2e 	bl	8006960 <_malloc_trim_r>
 8006b04:	4630      	mov	r0, r6
 8006b06:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006b0a:	f000 bdb1 	b.w	8007670 <__malloc_unlock>
 8006b0e:	08c9      	lsrs	r1, r1, #3
 8006b10:	6878      	ldr	r0, [r7, #4]
 8006b12:	1c4a      	adds	r2, r1, #1
 8006b14:	2301      	movs	r3, #1
 8006b16:	1089      	asrs	r1, r1, #2
 8006b18:	408b      	lsls	r3, r1
 8006b1a:	4303      	orrs	r3, r0
 8006b1c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8006b20:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8006b24:	607b      	str	r3, [r7, #4]
 8006b26:	3908      	subs	r1, #8
 8006b28:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8006b2c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8006b30:	60c5      	str	r5, [r0, #12]
 8006b32:	4630      	mov	r0, r6
 8006b34:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006b38:	f000 bd9a 	b.w	8007670 <__malloc_unlock>
 8006b3c:	2800      	cmp	r0, #0
 8006b3e:	d145      	bne.n	8006bcc <_free_r+0x1cc>
 8006b40:	440a      	add	r2, r1
 8006b42:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8006b46:	f042 0001 	orr.w	r0, r2, #1
 8006b4a:	60cb      	str	r3, [r1, #12]
 8006b4c:	6099      	str	r1, [r3, #8]
 8006b4e:	6068      	str	r0, [r5, #4]
 8006b50:	50aa      	str	r2, [r5, r2]
 8006b52:	e7d7      	b.n	8006b04 <_free_r+0x104>
 8006b54:	2b14      	cmp	r3, #20
 8006b56:	d908      	bls.n	8006b6a <_free_r+0x16a>
 8006b58:	2b54      	cmp	r3, #84	; 0x54
 8006b5a:	d81e      	bhi.n	8006b9a <_free_r+0x19a>
 8006b5c:	0b0b      	lsrs	r3, r1, #12
 8006b5e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8006b62:	00e4      	lsls	r4, r4, #3
 8006b64:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8006b68:	e789      	b.n	8006a7e <_free_r+0x7e>
 8006b6a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8006b6e:	00e4      	lsls	r4, r4, #3
 8006b70:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8006b74:	e783      	b.n	8006a7e <_free_r+0x7e>
 8006b76:	4618      	mov	r0, r3
 8006b78:	e78e      	b.n	8006a98 <_free_r+0x98>
 8006b7a:	1093      	asrs	r3, r2, #2
 8006b7c:	6879      	ldr	r1, [r7, #4]
 8006b7e:	2201      	movs	r2, #1
 8006b80:	fa02 f303 	lsl.w	r3, r2, r3
 8006b84:	430b      	orrs	r3, r1
 8006b86:	607b      	str	r3, [r7, #4]
 8006b88:	4603      	mov	r3, r0
 8006b8a:	e786      	b.n	8006a9a <_free_r+0x9a>
 8006b8c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8006b90:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8006b94:	606a      	str	r2, [r5, #4]
 8006b96:	5069      	str	r1, [r5, r1]
 8006b98:	e7b4      	b.n	8006b04 <_free_r+0x104>
 8006b9a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8006b9e:	d806      	bhi.n	8006bae <_free_r+0x1ae>
 8006ba0:	0bcb      	lsrs	r3, r1, #15
 8006ba2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8006ba6:	00e4      	lsls	r4, r4, #3
 8006ba8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8006bac:	e767      	b.n	8006a7e <_free_r+0x7e>
 8006bae:	f240 5254 	movw	r2, #1364	; 0x554
 8006bb2:	4293      	cmp	r3, r2
 8006bb4:	d806      	bhi.n	8006bc4 <_free_r+0x1c4>
 8006bb6:	0c8b      	lsrs	r3, r1, #18
 8006bb8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8006bbc:	00e4      	lsls	r4, r4, #3
 8006bbe:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8006bc2:	e75c      	b.n	8006a7e <_free_r+0x7e>
 8006bc4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8006bc8:	227e      	movs	r2, #126	; 0x7e
 8006bca:	e758      	b.n	8006a7e <_free_r+0x7e>
 8006bcc:	f041 0201 	orr.w	r2, r1, #1
 8006bd0:	606a      	str	r2, [r5, #4]
 8006bd2:	6019      	str	r1, [r3, #0]
 8006bd4:	e796      	b.n	8006b04 <_free_r+0x104>
 8006bd6:	bf00      	nop
 8006bd8:	2000044c 	.word	0x2000044c
 8006bdc:	20000454 	.word	0x20000454
 8006be0:	20000858 	.word	0x20000858
 8006be4:	20000adc 	.word	0x20000adc

08006be8 <__sfvwrite_r>:
 8006be8:	6893      	ldr	r3, [r2, #8]
 8006bea:	2b00      	cmp	r3, #0
 8006bec:	f000 80e4 	beq.w	8006db8 <__sfvwrite_r+0x1d0>
 8006bf0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006bf4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8006bf8:	b29b      	uxth	r3, r3
 8006bfa:	460c      	mov	r4, r1
 8006bfc:	0719      	lsls	r1, r3, #28
 8006bfe:	b083      	sub	sp, #12
 8006c00:	4682      	mov	sl, r0
 8006c02:	4690      	mov	r8, r2
 8006c04:	d535      	bpl.n	8006c72 <__sfvwrite_r+0x8a>
 8006c06:	6922      	ldr	r2, [r4, #16]
 8006c08:	b39a      	cbz	r2, 8006c72 <__sfvwrite_r+0x8a>
 8006c0a:	f013 0202 	ands.w	r2, r3, #2
 8006c0e:	f8d8 6000 	ldr.w	r6, [r8]
 8006c12:	d03d      	beq.n	8006c90 <__sfvwrite_r+0xa8>
 8006c14:	2700      	movs	r7, #0
 8006c16:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8006c1a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8006c1e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8006ee0 <__sfvwrite_r+0x2f8>
 8006c22:	463d      	mov	r5, r7
 8006c24:	454d      	cmp	r5, r9
 8006c26:	462b      	mov	r3, r5
 8006c28:	463a      	mov	r2, r7
 8006c2a:	bf28      	it	cs
 8006c2c:	464b      	movcs	r3, r9
 8006c2e:	4661      	mov	r1, ip
 8006c30:	4650      	mov	r0, sl
 8006c32:	b1d5      	cbz	r5, 8006c6a <__sfvwrite_r+0x82>
 8006c34:	47d8      	blx	fp
 8006c36:	2800      	cmp	r0, #0
 8006c38:	f340 80c6 	ble.w	8006dc8 <__sfvwrite_r+0x1e0>
 8006c3c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006c40:	1a1b      	subs	r3, r3, r0
 8006c42:	4407      	add	r7, r0
 8006c44:	1a2d      	subs	r5, r5, r0
 8006c46:	f8c8 3008 	str.w	r3, [r8, #8]
 8006c4a:	2b00      	cmp	r3, #0
 8006c4c:	f000 80b0 	beq.w	8006db0 <__sfvwrite_r+0x1c8>
 8006c50:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8006c54:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8006c58:	454d      	cmp	r5, r9
 8006c5a:	462b      	mov	r3, r5
 8006c5c:	463a      	mov	r2, r7
 8006c5e:	bf28      	it	cs
 8006c60:	464b      	movcs	r3, r9
 8006c62:	4661      	mov	r1, ip
 8006c64:	4650      	mov	r0, sl
 8006c66:	2d00      	cmp	r5, #0
 8006c68:	d1e4      	bne.n	8006c34 <__sfvwrite_r+0x4c>
 8006c6a:	e9d6 7500 	ldrd	r7, r5, [r6]
 8006c6e:	3608      	adds	r6, #8
 8006c70:	e7d8      	b.n	8006c24 <__sfvwrite_r+0x3c>
 8006c72:	4621      	mov	r1, r4
 8006c74:	4650      	mov	r0, sl
 8006c76:	f7fe fd03 	bl	8005680 <__swsetup_r>
 8006c7a:	2800      	cmp	r0, #0
 8006c7c:	f040 812a 	bne.w	8006ed4 <__sfvwrite_r+0x2ec>
 8006c80:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c84:	f8d8 6000 	ldr.w	r6, [r8]
 8006c88:	b29b      	uxth	r3, r3
 8006c8a:	f013 0202 	ands.w	r2, r3, #2
 8006c8e:	d1c1      	bne.n	8006c14 <__sfvwrite_r+0x2c>
 8006c90:	f013 0901 	ands.w	r9, r3, #1
 8006c94:	d15d      	bne.n	8006d52 <__sfvwrite_r+0x16a>
 8006c96:	68a7      	ldr	r7, [r4, #8]
 8006c98:	6820      	ldr	r0, [r4, #0]
 8006c9a:	464d      	mov	r5, r9
 8006c9c:	2d00      	cmp	r5, #0
 8006c9e:	d054      	beq.n	8006d4a <__sfvwrite_r+0x162>
 8006ca0:	059a      	lsls	r2, r3, #22
 8006ca2:	f140 809b 	bpl.w	8006ddc <__sfvwrite_r+0x1f4>
 8006ca6:	42af      	cmp	r7, r5
 8006ca8:	46bb      	mov	fp, r7
 8006caa:	f200 80d8 	bhi.w	8006e5e <__sfvwrite_r+0x276>
 8006cae:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8006cb2:	d02f      	beq.n	8006d14 <__sfvwrite_r+0x12c>
 8006cb4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8006cb8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8006cbc:	eba0 0b01 	sub.w	fp, r0, r1
 8006cc0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8006cc4:	1c68      	adds	r0, r5, #1
 8006cc6:	107f      	asrs	r7, r7, #1
 8006cc8:	4458      	add	r0, fp
 8006cca:	42b8      	cmp	r0, r7
 8006ccc:	463a      	mov	r2, r7
 8006cce:	bf84      	itt	hi
 8006cd0:	4607      	movhi	r7, r0
 8006cd2:	463a      	movhi	r2, r7
 8006cd4:	055b      	lsls	r3, r3, #21
 8006cd6:	f140 80d3 	bpl.w	8006e80 <__sfvwrite_r+0x298>
 8006cda:	4611      	mov	r1, r2
 8006cdc:	4650      	mov	r0, sl
 8006cde:	f000 f9b9 	bl	8007054 <_malloc_r>
 8006ce2:	2800      	cmp	r0, #0
 8006ce4:	f000 80f0 	beq.w	8006ec8 <__sfvwrite_r+0x2e0>
 8006ce8:	465a      	mov	r2, fp
 8006cea:	6921      	ldr	r1, [r4, #16]
 8006cec:	9001      	str	r0, [sp, #4]
 8006cee:	f7f9 fc55 	bl	800059c <memcpy>
 8006cf2:	89a2      	ldrh	r2, [r4, #12]
 8006cf4:	9b01      	ldr	r3, [sp, #4]
 8006cf6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8006cfa:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8006cfe:	81a2      	strh	r2, [r4, #12]
 8006d00:	eba7 020b 	sub.w	r2, r7, fp
 8006d04:	eb03 000b 	add.w	r0, r3, fp
 8006d08:	6167      	str	r7, [r4, #20]
 8006d0a:	6123      	str	r3, [r4, #16]
 8006d0c:	6020      	str	r0, [r4, #0]
 8006d0e:	60a2      	str	r2, [r4, #8]
 8006d10:	462f      	mov	r7, r5
 8006d12:	46ab      	mov	fp, r5
 8006d14:	465a      	mov	r2, fp
 8006d16:	4649      	mov	r1, r9
 8006d18:	f000 fc40 	bl	800759c <memmove>
 8006d1c:	68a2      	ldr	r2, [r4, #8]
 8006d1e:	6823      	ldr	r3, [r4, #0]
 8006d20:	1bd2      	subs	r2, r2, r7
 8006d22:	445b      	add	r3, fp
 8006d24:	462f      	mov	r7, r5
 8006d26:	60a2      	str	r2, [r4, #8]
 8006d28:	6023      	str	r3, [r4, #0]
 8006d2a:	2500      	movs	r5, #0
 8006d2c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006d30:	1bdb      	subs	r3, r3, r7
 8006d32:	44b9      	add	r9, r7
 8006d34:	f8c8 3008 	str.w	r3, [r8, #8]
 8006d38:	2b00      	cmp	r3, #0
 8006d3a:	d039      	beq.n	8006db0 <__sfvwrite_r+0x1c8>
 8006d3c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d40:	68a7      	ldr	r7, [r4, #8]
 8006d42:	6820      	ldr	r0, [r4, #0]
 8006d44:	b29b      	uxth	r3, r3
 8006d46:	2d00      	cmp	r5, #0
 8006d48:	d1aa      	bne.n	8006ca0 <__sfvwrite_r+0xb8>
 8006d4a:	e9d6 9500 	ldrd	r9, r5, [r6]
 8006d4e:	3608      	adds	r6, #8
 8006d50:	e7a4      	b.n	8006c9c <__sfvwrite_r+0xb4>
 8006d52:	4633      	mov	r3, r6
 8006d54:	4691      	mov	r9, r2
 8006d56:	4610      	mov	r0, r2
 8006d58:	4617      	mov	r7, r2
 8006d5a:	464e      	mov	r6, r9
 8006d5c:	469b      	mov	fp, r3
 8006d5e:	2f00      	cmp	r7, #0
 8006d60:	d06b      	beq.n	8006e3a <__sfvwrite_r+0x252>
 8006d62:	2800      	cmp	r0, #0
 8006d64:	d071      	beq.n	8006e4a <__sfvwrite_r+0x262>
 8006d66:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8006d6a:	6820      	ldr	r0, [r4, #0]
 8006d6c:	45b9      	cmp	r9, r7
 8006d6e:	464b      	mov	r3, r9
 8006d70:	bf28      	it	cs
 8006d72:	463b      	movcs	r3, r7
 8006d74:	4288      	cmp	r0, r1
 8006d76:	d903      	bls.n	8006d80 <__sfvwrite_r+0x198>
 8006d78:	68a5      	ldr	r5, [r4, #8]
 8006d7a:	4415      	add	r5, r2
 8006d7c:	42ab      	cmp	r3, r5
 8006d7e:	dc71      	bgt.n	8006e64 <__sfvwrite_r+0x27c>
 8006d80:	429a      	cmp	r2, r3
 8006d82:	f300 8093 	bgt.w	8006eac <__sfvwrite_r+0x2c4>
 8006d86:	4613      	mov	r3, r2
 8006d88:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8006d8a:	69e1      	ldr	r1, [r4, #28]
 8006d8c:	4632      	mov	r2, r6
 8006d8e:	4650      	mov	r0, sl
 8006d90:	47a8      	blx	r5
 8006d92:	1e05      	subs	r5, r0, #0
 8006d94:	dd18      	ble.n	8006dc8 <__sfvwrite_r+0x1e0>
 8006d96:	ebb9 0905 	subs.w	r9, r9, r5
 8006d9a:	d00f      	beq.n	8006dbc <__sfvwrite_r+0x1d4>
 8006d9c:	2001      	movs	r0, #1
 8006d9e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006da2:	1b5b      	subs	r3, r3, r5
 8006da4:	442e      	add	r6, r5
 8006da6:	1b7f      	subs	r7, r7, r5
 8006da8:	f8c8 3008 	str.w	r3, [r8, #8]
 8006dac:	2b00      	cmp	r3, #0
 8006dae:	d1d6      	bne.n	8006d5e <__sfvwrite_r+0x176>
 8006db0:	2000      	movs	r0, #0
 8006db2:	b003      	add	sp, #12
 8006db4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006db8:	2000      	movs	r0, #0
 8006dba:	4770      	bx	lr
 8006dbc:	4621      	mov	r1, r4
 8006dbe:	4650      	mov	r0, sl
 8006dc0:	f7ff fd20 	bl	8006804 <_fflush_r>
 8006dc4:	2800      	cmp	r0, #0
 8006dc6:	d0ea      	beq.n	8006d9e <__sfvwrite_r+0x1b6>
 8006dc8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dcc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006dd0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006dd4:	81a3      	strh	r3, [r4, #12]
 8006dd6:	b003      	add	sp, #12
 8006dd8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ddc:	6923      	ldr	r3, [r4, #16]
 8006dde:	4283      	cmp	r3, r0
 8006de0:	d315      	bcc.n	8006e0e <__sfvwrite_r+0x226>
 8006de2:	6961      	ldr	r1, [r4, #20]
 8006de4:	42a9      	cmp	r1, r5
 8006de6:	d812      	bhi.n	8006e0e <__sfvwrite_r+0x226>
 8006de8:	4b3c      	ldr	r3, [pc, #240]	; (8006edc <__sfvwrite_r+0x2f4>)
 8006dea:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8006dec:	429d      	cmp	r5, r3
 8006dee:	bf94      	ite	ls
 8006df0:	462b      	movls	r3, r5
 8006df2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8006df6:	464a      	mov	r2, r9
 8006df8:	fb93 f3f1 	sdiv	r3, r3, r1
 8006dfc:	4650      	mov	r0, sl
 8006dfe:	fb01 f303 	mul.w	r3, r1, r3
 8006e02:	69e1      	ldr	r1, [r4, #28]
 8006e04:	47b8      	blx	r7
 8006e06:	1e07      	subs	r7, r0, #0
 8006e08:	ddde      	ble.n	8006dc8 <__sfvwrite_r+0x1e0>
 8006e0a:	1bed      	subs	r5, r5, r7
 8006e0c:	e78e      	b.n	8006d2c <__sfvwrite_r+0x144>
 8006e0e:	42af      	cmp	r7, r5
 8006e10:	bf28      	it	cs
 8006e12:	462f      	movcs	r7, r5
 8006e14:	463a      	mov	r2, r7
 8006e16:	4649      	mov	r1, r9
 8006e18:	f000 fbc0 	bl	800759c <memmove>
 8006e1c:	68a3      	ldr	r3, [r4, #8]
 8006e1e:	6822      	ldr	r2, [r4, #0]
 8006e20:	1bdb      	subs	r3, r3, r7
 8006e22:	443a      	add	r2, r7
 8006e24:	60a3      	str	r3, [r4, #8]
 8006e26:	6022      	str	r2, [r4, #0]
 8006e28:	2b00      	cmp	r3, #0
 8006e2a:	d1ee      	bne.n	8006e0a <__sfvwrite_r+0x222>
 8006e2c:	4621      	mov	r1, r4
 8006e2e:	4650      	mov	r0, sl
 8006e30:	f7ff fce8 	bl	8006804 <_fflush_r>
 8006e34:	2800      	cmp	r0, #0
 8006e36:	d0e8      	beq.n	8006e0a <__sfvwrite_r+0x222>
 8006e38:	e7c6      	b.n	8006dc8 <__sfvwrite_r+0x1e0>
 8006e3a:	f10b 0308 	add.w	r3, fp, #8
 8006e3e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8006e42:	469b      	mov	fp, r3
 8006e44:	3308      	adds	r3, #8
 8006e46:	2f00      	cmp	r7, #0
 8006e48:	d0f9      	beq.n	8006e3e <__sfvwrite_r+0x256>
 8006e4a:	463a      	mov	r2, r7
 8006e4c:	210a      	movs	r1, #10
 8006e4e:	4630      	mov	r0, r6
 8006e50:	f7f9 fcc6 	bl	80007e0 <memchr>
 8006e54:	b338      	cbz	r0, 8006ea6 <__sfvwrite_r+0x2be>
 8006e56:	3001      	adds	r0, #1
 8006e58:	eba0 0906 	sub.w	r9, r0, r6
 8006e5c:	e783      	b.n	8006d66 <__sfvwrite_r+0x17e>
 8006e5e:	462f      	mov	r7, r5
 8006e60:	46ab      	mov	fp, r5
 8006e62:	e757      	b.n	8006d14 <__sfvwrite_r+0x12c>
 8006e64:	4631      	mov	r1, r6
 8006e66:	462a      	mov	r2, r5
 8006e68:	f000 fb98 	bl	800759c <memmove>
 8006e6c:	6823      	ldr	r3, [r4, #0]
 8006e6e:	442b      	add	r3, r5
 8006e70:	6023      	str	r3, [r4, #0]
 8006e72:	4621      	mov	r1, r4
 8006e74:	4650      	mov	r0, sl
 8006e76:	f7ff fcc5 	bl	8006804 <_fflush_r>
 8006e7a:	2800      	cmp	r0, #0
 8006e7c:	d08b      	beq.n	8006d96 <__sfvwrite_r+0x1ae>
 8006e7e:	e7a3      	b.n	8006dc8 <__sfvwrite_r+0x1e0>
 8006e80:	4650      	mov	r0, sl
 8006e82:	f000 ff05 	bl	8007c90 <_realloc_r>
 8006e86:	4603      	mov	r3, r0
 8006e88:	2800      	cmp	r0, #0
 8006e8a:	f47f af39 	bne.w	8006d00 <__sfvwrite_r+0x118>
 8006e8e:	6921      	ldr	r1, [r4, #16]
 8006e90:	4650      	mov	r0, sl
 8006e92:	f7ff fdb5 	bl	8006a00 <_free_r>
 8006e96:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e9a:	220c      	movs	r2, #12
 8006e9c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8006ea0:	f8ca 2000 	str.w	r2, [sl]
 8006ea4:	e792      	b.n	8006dcc <__sfvwrite_r+0x1e4>
 8006ea6:	f107 0901 	add.w	r9, r7, #1
 8006eaa:	e75c      	b.n	8006d66 <__sfvwrite_r+0x17e>
 8006eac:	461a      	mov	r2, r3
 8006eae:	4631      	mov	r1, r6
 8006eb0:	9301      	str	r3, [sp, #4]
 8006eb2:	f000 fb73 	bl	800759c <memmove>
 8006eb6:	9b01      	ldr	r3, [sp, #4]
 8006eb8:	68a1      	ldr	r1, [r4, #8]
 8006eba:	6822      	ldr	r2, [r4, #0]
 8006ebc:	1ac9      	subs	r1, r1, r3
 8006ebe:	441a      	add	r2, r3
 8006ec0:	60a1      	str	r1, [r4, #8]
 8006ec2:	6022      	str	r2, [r4, #0]
 8006ec4:	461d      	mov	r5, r3
 8006ec6:	e766      	b.n	8006d96 <__sfvwrite_r+0x1ae>
 8006ec8:	230c      	movs	r3, #12
 8006eca:	f8ca 3000 	str.w	r3, [sl]
 8006ece:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ed2:	e77b      	b.n	8006dcc <__sfvwrite_r+0x1e4>
 8006ed4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ed8:	e76b      	b.n	8006db2 <__sfvwrite_r+0x1ca>
 8006eda:	bf00      	nop
 8006edc:	7ffffffe 	.word	0x7ffffffe
 8006ee0:	7ffffc00 	.word	0x7ffffc00

08006ee4 <_fwalk_reent>:
 8006ee4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006ee8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8006eec:	d01f      	beq.n	8006f2e <_fwalk_reent+0x4a>
 8006eee:	4688      	mov	r8, r1
 8006ef0:	4606      	mov	r6, r0
 8006ef2:	f04f 0900 	mov.w	r9, #0
 8006ef6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8006efa:	3d01      	subs	r5, #1
 8006efc:	d411      	bmi.n	8006f22 <_fwalk_reent+0x3e>
 8006efe:	89a3      	ldrh	r3, [r4, #12]
 8006f00:	2b01      	cmp	r3, #1
 8006f02:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8006f06:	4621      	mov	r1, r4
 8006f08:	4630      	mov	r0, r6
 8006f0a:	d906      	bls.n	8006f1a <_fwalk_reent+0x36>
 8006f0c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8006f10:	3301      	adds	r3, #1
 8006f12:	d002      	beq.n	8006f1a <_fwalk_reent+0x36>
 8006f14:	47c0      	blx	r8
 8006f16:	ea49 0900 	orr.w	r9, r9, r0
 8006f1a:	1c6b      	adds	r3, r5, #1
 8006f1c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8006f20:	d1ed      	bne.n	8006efe <_fwalk_reent+0x1a>
 8006f22:	683f      	ldr	r7, [r7, #0]
 8006f24:	2f00      	cmp	r7, #0
 8006f26:	d1e6      	bne.n	8006ef6 <_fwalk_reent+0x12>
 8006f28:	4648      	mov	r0, r9
 8006f2a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006f2e:	46b9      	mov	r9, r7
 8006f30:	4648      	mov	r0, r9
 8006f32:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006f36:	bf00      	nop

08006f38 <_localeconv_r>:
 8006f38:	4a04      	ldr	r2, [pc, #16]	; (8006f4c <_localeconv_r+0x14>)
 8006f3a:	4b05      	ldr	r3, [pc, #20]	; (8006f50 <_localeconv_r+0x18>)
 8006f3c:	6812      	ldr	r2, [r2, #0]
 8006f3e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8006f40:	2800      	cmp	r0, #0
 8006f42:	bf08      	it	eq
 8006f44:	4618      	moveq	r0, r3
 8006f46:	30f0      	adds	r0, #240	; 0xf0
 8006f48:	4770      	bx	lr
 8006f4a:	bf00      	nop
 8006f4c:	20000018 	.word	0x20000018
 8006f50:	2000085c 	.word	0x2000085c

08006f54 <__retarget_lock_init_recursive>:
 8006f54:	4770      	bx	lr
 8006f56:	bf00      	nop

08006f58 <__retarget_lock_close_recursive>:
 8006f58:	4770      	bx	lr
 8006f5a:	bf00      	nop

08006f5c <__retarget_lock_acquire_recursive>:
 8006f5c:	4770      	bx	lr
 8006f5e:	bf00      	nop

08006f60 <__retarget_lock_release_recursive>:
 8006f60:	4770      	bx	lr
 8006f62:	bf00      	nop

08006f64 <__swhatbuf_r>:
 8006f64:	b570      	push	{r4, r5, r6, lr}
 8006f66:	460c      	mov	r4, r1
 8006f68:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006f6c:	2900      	cmp	r1, #0
 8006f6e:	b096      	sub	sp, #88	; 0x58
 8006f70:	4615      	mov	r5, r2
 8006f72:	461e      	mov	r6, r3
 8006f74:	da0f      	bge.n	8006f96 <__swhatbuf_r+0x32>
 8006f76:	89a2      	ldrh	r2, [r4, #12]
 8006f78:	2300      	movs	r3, #0
 8006f7a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8006f7e:	6033      	str	r3, [r6, #0]
 8006f80:	d104      	bne.n	8006f8c <__swhatbuf_r+0x28>
 8006f82:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8006f86:	602b      	str	r3, [r5, #0]
 8006f88:	b016      	add	sp, #88	; 0x58
 8006f8a:	bd70      	pop	{r4, r5, r6, pc}
 8006f8c:	2240      	movs	r2, #64	; 0x40
 8006f8e:	4618      	mov	r0, r3
 8006f90:	602a      	str	r2, [r5, #0]
 8006f92:	b016      	add	sp, #88	; 0x58
 8006f94:	bd70      	pop	{r4, r5, r6, pc}
 8006f96:	466a      	mov	r2, sp
 8006f98:	f001 fad0 	bl	800853c <_fstat_r>
 8006f9c:	2800      	cmp	r0, #0
 8006f9e:	dbea      	blt.n	8006f76 <__swhatbuf_r+0x12>
 8006fa0:	9b01      	ldr	r3, [sp, #4]
 8006fa2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8006fa6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8006faa:	fab3 f383 	clz	r3, r3
 8006fae:	095b      	lsrs	r3, r3, #5
 8006fb0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8006fb4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8006fb8:	6033      	str	r3, [r6, #0]
 8006fba:	602a      	str	r2, [r5, #0]
 8006fbc:	b016      	add	sp, #88	; 0x58
 8006fbe:	bd70      	pop	{r4, r5, r6, pc}

08006fc0 <__smakebuf_r>:
 8006fc0:	898a      	ldrh	r2, [r1, #12]
 8006fc2:	0792      	lsls	r2, r2, #30
 8006fc4:	460b      	mov	r3, r1
 8006fc6:	d506      	bpl.n	8006fd6 <__smakebuf_r+0x16>
 8006fc8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8006fcc:	2101      	movs	r1, #1
 8006fce:	601a      	str	r2, [r3, #0]
 8006fd0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8006fd4:	4770      	bx	lr
 8006fd6:	b570      	push	{r4, r5, r6, lr}
 8006fd8:	b082      	sub	sp, #8
 8006fda:	ab01      	add	r3, sp, #4
 8006fdc:	466a      	mov	r2, sp
 8006fde:	460c      	mov	r4, r1
 8006fe0:	4605      	mov	r5, r0
 8006fe2:	f7ff ffbf 	bl	8006f64 <__swhatbuf_r>
 8006fe6:	9900      	ldr	r1, [sp, #0]
 8006fe8:	4606      	mov	r6, r0
 8006fea:	4628      	mov	r0, r5
 8006fec:	f000 f832 	bl	8007054 <_malloc_r>
 8006ff0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ff4:	b1d8      	cbz	r0, 800702e <__smakebuf_r+0x6e>
 8006ff6:	4916      	ldr	r1, [pc, #88]	; (8007050 <__smakebuf_r+0x90>)
 8006ff8:	63e9      	str	r1, [r5, #60]	; 0x3c
 8006ffa:	9a01      	ldr	r2, [sp, #4]
 8006ffc:	9900      	ldr	r1, [sp, #0]
 8006ffe:	6020      	str	r0, [r4, #0]
 8007000:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8007004:	81a3      	strh	r3, [r4, #12]
 8007006:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800700a:	b91a      	cbnz	r2, 8007014 <__smakebuf_r+0x54>
 800700c:	4333      	orrs	r3, r6
 800700e:	81a3      	strh	r3, [r4, #12]
 8007010:	b002      	add	sp, #8
 8007012:	bd70      	pop	{r4, r5, r6, pc}
 8007014:	4628      	mov	r0, r5
 8007016:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800701a:	f001 faa3 	bl	8008564 <_isatty_r>
 800701e:	b1a0      	cbz	r0, 800704a <__smakebuf_r+0x8a>
 8007020:	89a3      	ldrh	r3, [r4, #12]
 8007022:	f023 0303 	bic.w	r3, r3, #3
 8007026:	f043 0301 	orr.w	r3, r3, #1
 800702a:	b21b      	sxth	r3, r3
 800702c:	e7ee      	b.n	800700c <__smakebuf_r+0x4c>
 800702e:	059a      	lsls	r2, r3, #22
 8007030:	d4ee      	bmi.n	8007010 <__smakebuf_r+0x50>
 8007032:	f023 0303 	bic.w	r3, r3, #3
 8007036:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800703a:	f043 0302 	orr.w	r3, r3, #2
 800703e:	2101      	movs	r1, #1
 8007040:	81a3      	strh	r3, [r4, #12]
 8007042:	6022      	str	r2, [r4, #0]
 8007044:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8007048:	e7e2      	b.n	8007010 <__smakebuf_r+0x50>
 800704a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800704e:	e7dd      	b.n	800700c <__smakebuf_r+0x4c>
 8007050:	080068b1 	.word	0x080068b1

08007054 <_malloc_r>:
 8007054:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007058:	f101 050b 	add.w	r5, r1, #11
 800705c:	2d16      	cmp	r5, #22
 800705e:	b083      	sub	sp, #12
 8007060:	4606      	mov	r6, r0
 8007062:	d823      	bhi.n	80070ac <_malloc_r+0x58>
 8007064:	2910      	cmp	r1, #16
 8007066:	f200 80b9 	bhi.w	80071dc <_malloc_r+0x188>
 800706a:	f000 fafb 	bl	8007664 <__malloc_lock>
 800706e:	2510      	movs	r5, #16
 8007070:	2318      	movs	r3, #24
 8007072:	2002      	movs	r0, #2
 8007074:	4fc5      	ldr	r7, [pc, #788]	; (800738c <_malloc_r+0x338>)
 8007076:	443b      	add	r3, r7
 8007078:	f1a3 0208 	sub.w	r2, r3, #8
 800707c:	685c      	ldr	r4, [r3, #4]
 800707e:	4294      	cmp	r4, r2
 8007080:	f000 8166 	beq.w	8007350 <_malloc_r+0x2fc>
 8007084:	6863      	ldr	r3, [r4, #4]
 8007086:	f023 0303 	bic.w	r3, r3, #3
 800708a:	4423      	add	r3, r4
 800708c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8007090:	685a      	ldr	r2, [r3, #4]
 8007092:	60e9      	str	r1, [r5, #12]
 8007094:	f042 0201 	orr.w	r2, r2, #1
 8007098:	608d      	str	r5, [r1, #8]
 800709a:	4630      	mov	r0, r6
 800709c:	605a      	str	r2, [r3, #4]
 800709e:	f000 fae7 	bl	8007670 <__malloc_unlock>
 80070a2:	3408      	adds	r4, #8
 80070a4:	4620      	mov	r0, r4
 80070a6:	b003      	add	sp, #12
 80070a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80070ac:	f035 0507 	bics.w	r5, r5, #7
 80070b0:	f100 8094 	bmi.w	80071dc <_malloc_r+0x188>
 80070b4:	42a9      	cmp	r1, r5
 80070b6:	f200 8091 	bhi.w	80071dc <_malloc_r+0x188>
 80070ba:	f000 fad3 	bl	8007664 <__malloc_lock>
 80070be:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80070c2:	f0c0 8183 	bcc.w	80073cc <_malloc_r+0x378>
 80070c6:	0a6b      	lsrs	r3, r5, #9
 80070c8:	f000 808f 	beq.w	80071ea <_malloc_r+0x196>
 80070cc:	2b04      	cmp	r3, #4
 80070ce:	f200 8146 	bhi.w	800735e <_malloc_r+0x30a>
 80070d2:	09ab      	lsrs	r3, r5, #6
 80070d4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80070d8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80070dc:	00c3      	lsls	r3, r0, #3
 80070de:	4fab      	ldr	r7, [pc, #684]	; (800738c <_malloc_r+0x338>)
 80070e0:	443b      	add	r3, r7
 80070e2:	f1a3 0108 	sub.w	r1, r3, #8
 80070e6:	685c      	ldr	r4, [r3, #4]
 80070e8:	42a1      	cmp	r1, r4
 80070ea:	d106      	bne.n	80070fa <_malloc_r+0xa6>
 80070ec:	e00c      	b.n	8007108 <_malloc_r+0xb4>
 80070ee:	2a00      	cmp	r2, #0
 80070f0:	f280 811d 	bge.w	800732e <_malloc_r+0x2da>
 80070f4:	68e4      	ldr	r4, [r4, #12]
 80070f6:	42a1      	cmp	r1, r4
 80070f8:	d006      	beq.n	8007108 <_malloc_r+0xb4>
 80070fa:	6863      	ldr	r3, [r4, #4]
 80070fc:	f023 0303 	bic.w	r3, r3, #3
 8007100:	1b5a      	subs	r2, r3, r5
 8007102:	2a0f      	cmp	r2, #15
 8007104:	ddf3      	ble.n	80070ee <_malloc_r+0x9a>
 8007106:	4660      	mov	r0, ip
 8007108:	693c      	ldr	r4, [r7, #16]
 800710a:	f8df c294 	ldr.w	ip, [pc, #660]	; 80073a0 <_malloc_r+0x34c>
 800710e:	4564      	cmp	r4, ip
 8007110:	d071      	beq.n	80071f6 <_malloc_r+0x1a2>
 8007112:	6863      	ldr	r3, [r4, #4]
 8007114:	f023 0303 	bic.w	r3, r3, #3
 8007118:	1b5a      	subs	r2, r3, r5
 800711a:	2a0f      	cmp	r2, #15
 800711c:	f300 8144 	bgt.w	80073a8 <_malloc_r+0x354>
 8007120:	2a00      	cmp	r2, #0
 8007122:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8007126:	f280 8126 	bge.w	8007376 <_malloc_r+0x322>
 800712a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800712e:	f080 8169 	bcs.w	8007404 <_malloc_r+0x3b0>
 8007132:	08db      	lsrs	r3, r3, #3
 8007134:	1c59      	adds	r1, r3, #1
 8007136:	687a      	ldr	r2, [r7, #4]
 8007138:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800713c:	f8c4 8008 	str.w	r8, [r4, #8]
 8007140:	f04f 0e01 	mov.w	lr, #1
 8007144:	109b      	asrs	r3, r3, #2
 8007146:	fa0e f303 	lsl.w	r3, lr, r3
 800714a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800714e:	4313      	orrs	r3, r2
 8007150:	f1ae 0208 	sub.w	r2, lr, #8
 8007154:	60e2      	str	r2, [r4, #12]
 8007156:	607b      	str	r3, [r7, #4]
 8007158:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 800715c:	f8c8 400c 	str.w	r4, [r8, #12]
 8007160:	1082      	asrs	r2, r0, #2
 8007162:	2401      	movs	r4, #1
 8007164:	4094      	lsls	r4, r2
 8007166:	429c      	cmp	r4, r3
 8007168:	d84b      	bhi.n	8007202 <_malloc_r+0x1ae>
 800716a:	421c      	tst	r4, r3
 800716c:	d106      	bne.n	800717c <_malloc_r+0x128>
 800716e:	f020 0003 	bic.w	r0, r0, #3
 8007172:	0064      	lsls	r4, r4, #1
 8007174:	421c      	tst	r4, r3
 8007176:	f100 0004 	add.w	r0, r0, #4
 800717a:	d0fa      	beq.n	8007172 <_malloc_r+0x11e>
 800717c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8007180:	46ce      	mov	lr, r9
 8007182:	4680      	mov	r8, r0
 8007184:	f8de 300c 	ldr.w	r3, [lr, #12]
 8007188:	459e      	cmp	lr, r3
 800718a:	d107      	bne.n	800719c <_malloc_r+0x148>
 800718c:	e122      	b.n	80073d4 <_malloc_r+0x380>
 800718e:	2a00      	cmp	r2, #0
 8007190:	f280 8129 	bge.w	80073e6 <_malloc_r+0x392>
 8007194:	68db      	ldr	r3, [r3, #12]
 8007196:	459e      	cmp	lr, r3
 8007198:	f000 811c 	beq.w	80073d4 <_malloc_r+0x380>
 800719c:	6859      	ldr	r1, [r3, #4]
 800719e:	f021 0103 	bic.w	r1, r1, #3
 80071a2:	1b4a      	subs	r2, r1, r5
 80071a4:	2a0f      	cmp	r2, #15
 80071a6:	ddf2      	ble.n	800718e <_malloc_r+0x13a>
 80071a8:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80071ac:	195c      	adds	r4, r3, r5
 80071ae:	f045 0501 	orr.w	r5, r5, #1
 80071b2:	605d      	str	r5, [r3, #4]
 80071b4:	f042 0501 	orr.w	r5, r2, #1
 80071b8:	f8c8 e00c 	str.w	lr, [r8, #12]
 80071bc:	4630      	mov	r0, r6
 80071be:	f8ce 8008 	str.w	r8, [lr, #8]
 80071c2:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80071c6:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80071ca:	6065      	str	r5, [r4, #4]
 80071cc:	505a      	str	r2, [r3, r1]
 80071ce:	9301      	str	r3, [sp, #4]
 80071d0:	f000 fa4e 	bl	8007670 <__malloc_unlock>
 80071d4:	9b01      	ldr	r3, [sp, #4]
 80071d6:	f103 0408 	add.w	r4, r3, #8
 80071da:	e763      	b.n	80070a4 <_malloc_r+0x50>
 80071dc:	2400      	movs	r4, #0
 80071de:	230c      	movs	r3, #12
 80071e0:	4620      	mov	r0, r4
 80071e2:	6033      	str	r3, [r6, #0]
 80071e4:	b003      	add	sp, #12
 80071e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80071ea:	f44f 7300 	mov.w	r3, #512	; 0x200
 80071ee:	2040      	movs	r0, #64	; 0x40
 80071f0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80071f4:	e773      	b.n	80070de <_malloc_r+0x8a>
 80071f6:	687b      	ldr	r3, [r7, #4]
 80071f8:	1082      	asrs	r2, r0, #2
 80071fa:	2401      	movs	r4, #1
 80071fc:	4094      	lsls	r4, r2
 80071fe:	429c      	cmp	r4, r3
 8007200:	d9b3      	bls.n	800716a <_malloc_r+0x116>
 8007202:	68bc      	ldr	r4, [r7, #8]
 8007204:	6863      	ldr	r3, [r4, #4]
 8007206:	f023 0903 	bic.w	r9, r3, #3
 800720a:	45a9      	cmp	r9, r5
 800720c:	d303      	bcc.n	8007216 <_malloc_r+0x1c2>
 800720e:	eba9 0305 	sub.w	r3, r9, r5
 8007212:	2b0f      	cmp	r3, #15
 8007214:	dc7b      	bgt.n	800730e <_malloc_r+0x2ba>
 8007216:	4b5e      	ldr	r3, [pc, #376]	; (8007390 <_malloc_r+0x33c>)
 8007218:	f8df a188 	ldr.w	sl, [pc, #392]	; 80073a4 <_malloc_r+0x350>
 800721c:	681a      	ldr	r2, [r3, #0]
 800721e:	f8da 3000 	ldr.w	r3, [sl]
 8007222:	3301      	adds	r3, #1
 8007224:	eb05 0802 	add.w	r8, r5, r2
 8007228:	f000 8148 	beq.w	80074bc <_malloc_r+0x468>
 800722c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8007230:	f108 080f 	add.w	r8, r8, #15
 8007234:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8007238:	f028 080f 	bic.w	r8, r8, #15
 800723c:	4641      	mov	r1, r8
 800723e:	4630      	mov	r0, r6
 8007240:	f000 ff08 	bl	8008054 <_sbrk_r>
 8007244:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8007248:	4683      	mov	fp, r0
 800724a:	f000 8104 	beq.w	8007456 <_malloc_r+0x402>
 800724e:	eb04 0009 	add.w	r0, r4, r9
 8007252:	4558      	cmp	r0, fp
 8007254:	f200 80fd 	bhi.w	8007452 <_malloc_r+0x3fe>
 8007258:	4a4e      	ldr	r2, [pc, #312]	; (8007394 <_malloc_r+0x340>)
 800725a:	6813      	ldr	r3, [r2, #0]
 800725c:	4443      	add	r3, r8
 800725e:	6013      	str	r3, [r2, #0]
 8007260:	f000 814d 	beq.w	80074fe <_malloc_r+0x4aa>
 8007264:	f8da 1000 	ldr.w	r1, [sl]
 8007268:	3101      	adds	r1, #1
 800726a:	bf1b      	ittet	ne
 800726c:	ebab 0000 	subne.w	r0, fp, r0
 8007270:	181b      	addne	r3, r3, r0
 8007272:	f8ca b000 	streq.w	fp, [sl]
 8007276:	6013      	strne	r3, [r2, #0]
 8007278:	f01b 0307 	ands.w	r3, fp, #7
 800727c:	f000 8134 	beq.w	80074e8 <_malloc_r+0x494>
 8007280:	f1c3 0108 	rsb	r1, r3, #8
 8007284:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8007288:	448b      	add	fp, r1
 800728a:	3308      	adds	r3, #8
 800728c:	44d8      	add	r8, fp
 800728e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8007292:	eba3 0808 	sub.w	r8, r3, r8
 8007296:	4641      	mov	r1, r8
 8007298:	4630      	mov	r0, r6
 800729a:	9201      	str	r2, [sp, #4]
 800729c:	f000 feda 	bl	8008054 <_sbrk_r>
 80072a0:	1c43      	adds	r3, r0, #1
 80072a2:	9a01      	ldr	r2, [sp, #4]
 80072a4:	f000 8146 	beq.w	8007534 <_malloc_r+0x4e0>
 80072a8:	eba0 010b 	sub.w	r1, r0, fp
 80072ac:	4441      	add	r1, r8
 80072ae:	f041 0101 	orr.w	r1, r1, #1
 80072b2:	6813      	ldr	r3, [r2, #0]
 80072b4:	f8c7 b008 	str.w	fp, [r7, #8]
 80072b8:	4443      	add	r3, r8
 80072ba:	42bc      	cmp	r4, r7
 80072bc:	f8cb 1004 	str.w	r1, [fp, #4]
 80072c0:	6013      	str	r3, [r2, #0]
 80072c2:	d015      	beq.n	80072f0 <_malloc_r+0x29c>
 80072c4:	f1b9 0f0f 	cmp.w	r9, #15
 80072c8:	f240 8130 	bls.w	800752c <_malloc_r+0x4d8>
 80072cc:	6860      	ldr	r0, [r4, #4]
 80072ce:	f1a9 010c 	sub.w	r1, r9, #12
 80072d2:	f021 0107 	bic.w	r1, r1, #7
 80072d6:	f000 0001 	and.w	r0, r0, #1
 80072da:	eb04 0c01 	add.w	ip, r4, r1
 80072de:	4308      	orrs	r0, r1
 80072e0:	f04f 0e05 	mov.w	lr, #5
 80072e4:	290f      	cmp	r1, #15
 80072e6:	6060      	str	r0, [r4, #4]
 80072e8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80072ec:	f200 813a 	bhi.w	8007564 <_malloc_r+0x510>
 80072f0:	4a29      	ldr	r2, [pc, #164]	; (8007398 <_malloc_r+0x344>)
 80072f2:	482a      	ldr	r0, [pc, #168]	; (800739c <_malloc_r+0x348>)
 80072f4:	6811      	ldr	r1, [r2, #0]
 80072f6:	68bc      	ldr	r4, [r7, #8]
 80072f8:	428b      	cmp	r3, r1
 80072fa:	6801      	ldr	r1, [r0, #0]
 80072fc:	bf88      	it	hi
 80072fe:	6013      	strhi	r3, [r2, #0]
 8007300:	6862      	ldr	r2, [r4, #4]
 8007302:	428b      	cmp	r3, r1
 8007304:	f022 0203 	bic.w	r2, r2, #3
 8007308:	bf88      	it	hi
 800730a:	6003      	strhi	r3, [r0, #0]
 800730c:	e0a7      	b.n	800745e <_malloc_r+0x40a>
 800730e:	1962      	adds	r2, r4, r5
 8007310:	f043 0301 	orr.w	r3, r3, #1
 8007314:	f045 0501 	orr.w	r5, r5, #1
 8007318:	6065      	str	r5, [r4, #4]
 800731a:	4630      	mov	r0, r6
 800731c:	60ba      	str	r2, [r7, #8]
 800731e:	6053      	str	r3, [r2, #4]
 8007320:	f000 f9a6 	bl	8007670 <__malloc_unlock>
 8007324:	3408      	adds	r4, #8
 8007326:	4620      	mov	r0, r4
 8007328:	b003      	add	sp, #12
 800732a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800732e:	4423      	add	r3, r4
 8007330:	68e1      	ldr	r1, [r4, #12]
 8007332:	685a      	ldr	r2, [r3, #4]
 8007334:	68a5      	ldr	r5, [r4, #8]
 8007336:	f042 0201 	orr.w	r2, r2, #1
 800733a:	60e9      	str	r1, [r5, #12]
 800733c:	4630      	mov	r0, r6
 800733e:	608d      	str	r5, [r1, #8]
 8007340:	605a      	str	r2, [r3, #4]
 8007342:	f000 f995 	bl	8007670 <__malloc_unlock>
 8007346:	3408      	adds	r4, #8
 8007348:	4620      	mov	r0, r4
 800734a:	b003      	add	sp, #12
 800734c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007350:	68dc      	ldr	r4, [r3, #12]
 8007352:	42a3      	cmp	r3, r4
 8007354:	bf08      	it	eq
 8007356:	3002      	addeq	r0, #2
 8007358:	f43f aed6 	beq.w	8007108 <_malloc_r+0xb4>
 800735c:	e692      	b.n	8007084 <_malloc_r+0x30>
 800735e:	2b14      	cmp	r3, #20
 8007360:	d971      	bls.n	8007446 <_malloc_r+0x3f2>
 8007362:	2b54      	cmp	r3, #84	; 0x54
 8007364:	f200 80ad 	bhi.w	80074c2 <_malloc_r+0x46e>
 8007368:	0b2b      	lsrs	r3, r5, #12
 800736a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 800736e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8007372:	00c3      	lsls	r3, r0, #3
 8007374:	e6b3      	b.n	80070de <_malloc_r+0x8a>
 8007376:	4423      	add	r3, r4
 8007378:	4630      	mov	r0, r6
 800737a:	685a      	ldr	r2, [r3, #4]
 800737c:	f042 0201 	orr.w	r2, r2, #1
 8007380:	605a      	str	r2, [r3, #4]
 8007382:	3408      	adds	r4, #8
 8007384:	f000 f974 	bl	8007670 <__malloc_unlock>
 8007388:	e68c      	b.n	80070a4 <_malloc_r+0x50>
 800738a:	bf00      	nop
 800738c:	2000044c 	.word	0x2000044c
 8007390:	20000adc 	.word	0x20000adc
 8007394:	20000aac 	.word	0x20000aac
 8007398:	20000ad4 	.word	0x20000ad4
 800739c:	20000ad8 	.word	0x20000ad8
 80073a0:	20000454 	.word	0x20000454
 80073a4:	20000854 	.word	0x20000854
 80073a8:	1961      	adds	r1, r4, r5
 80073aa:	f045 0e01 	orr.w	lr, r5, #1
 80073ae:	f042 0501 	orr.w	r5, r2, #1
 80073b2:	f8c4 e004 	str.w	lr, [r4, #4]
 80073b6:	4630      	mov	r0, r6
 80073b8:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80073bc:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 80073c0:	604d      	str	r5, [r1, #4]
 80073c2:	50e2      	str	r2, [r4, r3]
 80073c4:	f000 f954 	bl	8007670 <__malloc_unlock>
 80073c8:	3408      	adds	r4, #8
 80073ca:	e66b      	b.n	80070a4 <_malloc_r+0x50>
 80073cc:	08e8      	lsrs	r0, r5, #3
 80073ce:	f105 0308 	add.w	r3, r5, #8
 80073d2:	e64f      	b.n	8007074 <_malloc_r+0x20>
 80073d4:	f108 0801 	add.w	r8, r8, #1
 80073d8:	f018 0f03 	tst.w	r8, #3
 80073dc:	f10e 0e08 	add.w	lr, lr, #8
 80073e0:	f47f aed0 	bne.w	8007184 <_malloc_r+0x130>
 80073e4:	e052      	b.n	800748c <_malloc_r+0x438>
 80073e6:	4419      	add	r1, r3
 80073e8:	461c      	mov	r4, r3
 80073ea:	684a      	ldr	r2, [r1, #4]
 80073ec:	68db      	ldr	r3, [r3, #12]
 80073ee:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80073f2:	f042 0201 	orr.w	r2, r2, #1
 80073f6:	604a      	str	r2, [r1, #4]
 80073f8:	4630      	mov	r0, r6
 80073fa:	60eb      	str	r3, [r5, #12]
 80073fc:	609d      	str	r5, [r3, #8]
 80073fe:	f000 f937 	bl	8007670 <__malloc_unlock>
 8007402:	e64f      	b.n	80070a4 <_malloc_r+0x50>
 8007404:	0a5a      	lsrs	r2, r3, #9
 8007406:	2a04      	cmp	r2, #4
 8007408:	d935      	bls.n	8007476 <_malloc_r+0x422>
 800740a:	2a14      	cmp	r2, #20
 800740c:	d86f      	bhi.n	80074ee <_malloc_r+0x49a>
 800740e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8007412:	00c9      	lsls	r1, r1, #3
 8007414:	325b      	adds	r2, #91	; 0x5b
 8007416:	eb07 0e01 	add.w	lr, r7, r1
 800741a:	5879      	ldr	r1, [r7, r1]
 800741c:	f1ae 0e08 	sub.w	lr, lr, #8
 8007420:	458e      	cmp	lr, r1
 8007422:	d058      	beq.n	80074d6 <_malloc_r+0x482>
 8007424:	684a      	ldr	r2, [r1, #4]
 8007426:	f022 0203 	bic.w	r2, r2, #3
 800742a:	429a      	cmp	r2, r3
 800742c:	d902      	bls.n	8007434 <_malloc_r+0x3e0>
 800742e:	6889      	ldr	r1, [r1, #8]
 8007430:	458e      	cmp	lr, r1
 8007432:	d1f7      	bne.n	8007424 <_malloc_r+0x3d0>
 8007434:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8007438:	687b      	ldr	r3, [r7, #4]
 800743a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 800743e:	f8ce 4008 	str.w	r4, [lr, #8]
 8007442:	60cc      	str	r4, [r1, #12]
 8007444:	e68c      	b.n	8007160 <_malloc_r+0x10c>
 8007446:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 800744a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 800744e:	00c3      	lsls	r3, r0, #3
 8007450:	e645      	b.n	80070de <_malloc_r+0x8a>
 8007452:	42bc      	cmp	r4, r7
 8007454:	d072      	beq.n	800753c <_malloc_r+0x4e8>
 8007456:	68bc      	ldr	r4, [r7, #8]
 8007458:	6862      	ldr	r2, [r4, #4]
 800745a:	f022 0203 	bic.w	r2, r2, #3
 800745e:	4295      	cmp	r5, r2
 8007460:	eba2 0305 	sub.w	r3, r2, r5
 8007464:	d802      	bhi.n	800746c <_malloc_r+0x418>
 8007466:	2b0f      	cmp	r3, #15
 8007468:	f73f af51 	bgt.w	800730e <_malloc_r+0x2ba>
 800746c:	4630      	mov	r0, r6
 800746e:	f000 f8ff 	bl	8007670 <__malloc_unlock>
 8007472:	2400      	movs	r4, #0
 8007474:	e616      	b.n	80070a4 <_malloc_r+0x50>
 8007476:	099a      	lsrs	r2, r3, #6
 8007478:	f102 0139 	add.w	r1, r2, #57	; 0x39
 800747c:	00c9      	lsls	r1, r1, #3
 800747e:	3238      	adds	r2, #56	; 0x38
 8007480:	e7c9      	b.n	8007416 <_malloc_r+0x3c2>
 8007482:	f8d9 9000 	ldr.w	r9, [r9]
 8007486:	4599      	cmp	r9, r3
 8007488:	f040 8083 	bne.w	8007592 <_malloc_r+0x53e>
 800748c:	f010 0f03 	tst.w	r0, #3
 8007490:	f1a9 0308 	sub.w	r3, r9, #8
 8007494:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8007498:	d1f3      	bne.n	8007482 <_malloc_r+0x42e>
 800749a:	687b      	ldr	r3, [r7, #4]
 800749c:	ea23 0304 	bic.w	r3, r3, r4
 80074a0:	607b      	str	r3, [r7, #4]
 80074a2:	0064      	lsls	r4, r4, #1
 80074a4:	429c      	cmp	r4, r3
 80074a6:	f63f aeac 	bhi.w	8007202 <_malloc_r+0x1ae>
 80074aa:	b91c      	cbnz	r4, 80074b4 <_malloc_r+0x460>
 80074ac:	e6a9      	b.n	8007202 <_malloc_r+0x1ae>
 80074ae:	0064      	lsls	r4, r4, #1
 80074b0:	f108 0804 	add.w	r8, r8, #4
 80074b4:	421c      	tst	r4, r3
 80074b6:	d0fa      	beq.n	80074ae <_malloc_r+0x45a>
 80074b8:	4640      	mov	r0, r8
 80074ba:	e65f      	b.n	800717c <_malloc_r+0x128>
 80074bc:	f108 0810 	add.w	r8, r8, #16
 80074c0:	e6bc      	b.n	800723c <_malloc_r+0x1e8>
 80074c2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80074c6:	d826      	bhi.n	8007516 <_malloc_r+0x4c2>
 80074c8:	0beb      	lsrs	r3, r5, #15
 80074ca:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80074ce:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80074d2:	00c3      	lsls	r3, r0, #3
 80074d4:	e603      	b.n	80070de <_malloc_r+0x8a>
 80074d6:	687b      	ldr	r3, [r7, #4]
 80074d8:	1092      	asrs	r2, r2, #2
 80074da:	f04f 0801 	mov.w	r8, #1
 80074de:	fa08 f202 	lsl.w	r2, r8, r2
 80074e2:	4313      	orrs	r3, r2
 80074e4:	607b      	str	r3, [r7, #4]
 80074e6:	e7a8      	b.n	800743a <_malloc_r+0x3e6>
 80074e8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80074ec:	e6ce      	b.n	800728c <_malloc_r+0x238>
 80074ee:	2a54      	cmp	r2, #84	; 0x54
 80074f0:	d829      	bhi.n	8007546 <_malloc_r+0x4f2>
 80074f2:	0b1a      	lsrs	r2, r3, #12
 80074f4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80074f8:	00c9      	lsls	r1, r1, #3
 80074fa:	326e      	adds	r2, #110	; 0x6e
 80074fc:	e78b      	b.n	8007416 <_malloc_r+0x3c2>
 80074fe:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8007502:	2900      	cmp	r1, #0
 8007504:	f47f aeae 	bne.w	8007264 <_malloc_r+0x210>
 8007508:	eb09 0208 	add.w	r2, r9, r8
 800750c:	68b9      	ldr	r1, [r7, #8]
 800750e:	f042 0201 	orr.w	r2, r2, #1
 8007512:	604a      	str	r2, [r1, #4]
 8007514:	e6ec      	b.n	80072f0 <_malloc_r+0x29c>
 8007516:	f240 5254 	movw	r2, #1364	; 0x554
 800751a:	4293      	cmp	r3, r2
 800751c:	d81c      	bhi.n	8007558 <_malloc_r+0x504>
 800751e:	0cab      	lsrs	r3, r5, #18
 8007520:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8007524:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8007528:	00c3      	lsls	r3, r0, #3
 800752a:	e5d8      	b.n	80070de <_malloc_r+0x8a>
 800752c:	2301      	movs	r3, #1
 800752e:	f8cb 3004 	str.w	r3, [fp, #4]
 8007532:	e79b      	b.n	800746c <_malloc_r+0x418>
 8007534:	2101      	movs	r1, #1
 8007536:	f04f 0800 	mov.w	r8, #0
 800753a:	e6ba      	b.n	80072b2 <_malloc_r+0x25e>
 800753c:	4a16      	ldr	r2, [pc, #88]	; (8007598 <_malloc_r+0x544>)
 800753e:	6813      	ldr	r3, [r2, #0]
 8007540:	4443      	add	r3, r8
 8007542:	6013      	str	r3, [r2, #0]
 8007544:	e68e      	b.n	8007264 <_malloc_r+0x210>
 8007546:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800754a:	d814      	bhi.n	8007576 <_malloc_r+0x522>
 800754c:	0bda      	lsrs	r2, r3, #15
 800754e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8007552:	00c9      	lsls	r1, r1, #3
 8007554:	3277      	adds	r2, #119	; 0x77
 8007556:	e75e      	b.n	8007416 <_malloc_r+0x3c2>
 8007558:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 800755c:	207f      	movs	r0, #127	; 0x7f
 800755e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8007562:	e5bc      	b.n	80070de <_malloc_r+0x8a>
 8007564:	f104 0108 	add.w	r1, r4, #8
 8007568:	4630      	mov	r0, r6
 800756a:	9201      	str	r2, [sp, #4]
 800756c:	f7ff fa48 	bl	8006a00 <_free_r>
 8007570:	9a01      	ldr	r2, [sp, #4]
 8007572:	6813      	ldr	r3, [r2, #0]
 8007574:	e6bc      	b.n	80072f0 <_malloc_r+0x29c>
 8007576:	f240 5154 	movw	r1, #1364	; 0x554
 800757a:	428a      	cmp	r2, r1
 800757c:	d805      	bhi.n	800758a <_malloc_r+0x536>
 800757e:	0c9a      	lsrs	r2, r3, #18
 8007580:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8007584:	00c9      	lsls	r1, r1, #3
 8007586:	327c      	adds	r2, #124	; 0x7c
 8007588:	e745      	b.n	8007416 <_malloc_r+0x3c2>
 800758a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 800758e:	227e      	movs	r2, #126	; 0x7e
 8007590:	e741      	b.n	8007416 <_malloc_r+0x3c2>
 8007592:	687b      	ldr	r3, [r7, #4]
 8007594:	e785      	b.n	80074a2 <_malloc_r+0x44e>
 8007596:	bf00      	nop
 8007598:	20000aac 	.word	0x20000aac

0800759c <memmove>:
 800759c:	4288      	cmp	r0, r1
 800759e:	b4f0      	push	{r4, r5, r6, r7}
 80075a0:	d90d      	bls.n	80075be <memmove+0x22>
 80075a2:	188b      	adds	r3, r1, r2
 80075a4:	4283      	cmp	r3, r0
 80075a6:	d90a      	bls.n	80075be <memmove+0x22>
 80075a8:	1884      	adds	r4, r0, r2
 80075aa:	b132      	cbz	r2, 80075ba <memmove+0x1e>
 80075ac:	4622      	mov	r2, r4
 80075ae:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80075b2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80075b6:	4299      	cmp	r1, r3
 80075b8:	d1f9      	bne.n	80075ae <memmove+0x12>
 80075ba:	bcf0      	pop	{r4, r5, r6, r7}
 80075bc:	4770      	bx	lr
 80075be:	2a0f      	cmp	r2, #15
 80075c0:	d949      	bls.n	8007656 <memmove+0xba>
 80075c2:	ea40 0301 	orr.w	r3, r0, r1
 80075c6:	079b      	lsls	r3, r3, #30
 80075c8:	d147      	bne.n	800765a <memmove+0xbe>
 80075ca:	f1a2 0310 	sub.w	r3, r2, #16
 80075ce:	091b      	lsrs	r3, r3, #4
 80075d0:	f101 0720 	add.w	r7, r1, #32
 80075d4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80075d8:	f101 0410 	add.w	r4, r1, #16
 80075dc:	f100 0510 	add.w	r5, r0, #16
 80075e0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80075e4:	f845 6c10 	str.w	r6, [r5, #-16]
 80075e8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80075ec:	f845 6c0c 	str.w	r6, [r5, #-12]
 80075f0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80075f4:	f845 6c08 	str.w	r6, [r5, #-8]
 80075f8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80075fc:	f845 6c04 	str.w	r6, [r5, #-4]
 8007600:	3410      	adds	r4, #16
 8007602:	42bc      	cmp	r4, r7
 8007604:	f105 0510 	add.w	r5, r5, #16
 8007608:	d1ea      	bne.n	80075e0 <memmove+0x44>
 800760a:	3301      	adds	r3, #1
 800760c:	f002 050f 	and.w	r5, r2, #15
 8007610:	011b      	lsls	r3, r3, #4
 8007612:	2d03      	cmp	r5, #3
 8007614:	4419      	add	r1, r3
 8007616:	4403      	add	r3, r0
 8007618:	d921      	bls.n	800765e <memmove+0xc2>
 800761a:	1f1f      	subs	r7, r3, #4
 800761c:	460e      	mov	r6, r1
 800761e:	462c      	mov	r4, r5
 8007620:	3c04      	subs	r4, #4
 8007622:	f856 cb04 	ldr.w	ip, [r6], #4
 8007626:	f847 cf04 	str.w	ip, [r7, #4]!
 800762a:	2c03      	cmp	r4, #3
 800762c:	d8f8      	bhi.n	8007620 <memmove+0x84>
 800762e:	1f2c      	subs	r4, r5, #4
 8007630:	f024 0403 	bic.w	r4, r4, #3
 8007634:	3404      	adds	r4, #4
 8007636:	4423      	add	r3, r4
 8007638:	4421      	add	r1, r4
 800763a:	f002 0203 	and.w	r2, r2, #3
 800763e:	2a00      	cmp	r2, #0
 8007640:	d0bb      	beq.n	80075ba <memmove+0x1e>
 8007642:	3b01      	subs	r3, #1
 8007644:	440a      	add	r2, r1
 8007646:	f811 4b01 	ldrb.w	r4, [r1], #1
 800764a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800764e:	4291      	cmp	r1, r2
 8007650:	d1f9      	bne.n	8007646 <memmove+0xaa>
 8007652:	bcf0      	pop	{r4, r5, r6, r7}
 8007654:	4770      	bx	lr
 8007656:	4603      	mov	r3, r0
 8007658:	e7f1      	b.n	800763e <memmove+0xa2>
 800765a:	4603      	mov	r3, r0
 800765c:	e7f1      	b.n	8007642 <memmove+0xa6>
 800765e:	462a      	mov	r2, r5
 8007660:	e7ed      	b.n	800763e <memmove+0xa2>
 8007662:	bf00      	nop

08007664 <__malloc_lock>:
 8007664:	4801      	ldr	r0, [pc, #4]	; (800766c <__malloc_lock+0x8>)
 8007666:	f7ff bc79 	b.w	8006f5c <__retarget_lock_acquire_recursive>
 800766a:	bf00      	nop
 800766c:	20000c1c 	.word	0x20000c1c

08007670 <__malloc_unlock>:
 8007670:	4801      	ldr	r0, [pc, #4]	; (8007678 <__malloc_unlock+0x8>)
 8007672:	f7ff bc75 	b.w	8006f60 <__retarget_lock_release_recursive>
 8007676:	bf00      	nop
 8007678:	20000c1c 	.word	0x20000c1c

0800767c <_Balloc>:
 800767c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800767e:	b570      	push	{r4, r5, r6, lr}
 8007680:	4605      	mov	r5, r0
 8007682:	460c      	mov	r4, r1
 8007684:	b14b      	cbz	r3, 800769a <_Balloc+0x1e>
 8007686:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800768a:	b180      	cbz	r0, 80076ae <_Balloc+0x32>
 800768c:	6802      	ldr	r2, [r0, #0]
 800768e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8007692:	2300      	movs	r3, #0
 8007694:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8007698:	bd70      	pop	{r4, r5, r6, pc}
 800769a:	2221      	movs	r2, #33	; 0x21
 800769c:	2104      	movs	r1, #4
 800769e:	f000 fe1d 	bl	80082dc <_calloc_r>
 80076a2:	4603      	mov	r3, r0
 80076a4:	64e8      	str	r0, [r5, #76]	; 0x4c
 80076a6:	2800      	cmp	r0, #0
 80076a8:	d1ed      	bne.n	8007686 <_Balloc+0xa>
 80076aa:	2000      	movs	r0, #0
 80076ac:	bd70      	pop	{r4, r5, r6, pc}
 80076ae:	2101      	movs	r1, #1
 80076b0:	fa01 f604 	lsl.w	r6, r1, r4
 80076b4:	1d72      	adds	r2, r6, #5
 80076b6:	4628      	mov	r0, r5
 80076b8:	0092      	lsls	r2, r2, #2
 80076ba:	f000 fe0f 	bl	80082dc <_calloc_r>
 80076be:	2800      	cmp	r0, #0
 80076c0:	d0f3      	beq.n	80076aa <_Balloc+0x2e>
 80076c2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80076c6:	e7e4      	b.n	8007692 <_Balloc+0x16>

080076c8 <_Bfree>:
 80076c8:	b131      	cbz	r1, 80076d8 <_Bfree+0x10>
 80076ca:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80076cc:	684a      	ldr	r2, [r1, #4]
 80076ce:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80076d2:	6008      	str	r0, [r1, #0]
 80076d4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80076d8:	4770      	bx	lr
 80076da:	bf00      	nop

080076dc <__multadd>:
 80076dc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80076de:	690c      	ldr	r4, [r1, #16]
 80076e0:	b083      	sub	sp, #12
 80076e2:	460d      	mov	r5, r1
 80076e4:	4606      	mov	r6, r0
 80076e6:	f101 0c14 	add.w	ip, r1, #20
 80076ea:	2700      	movs	r7, #0
 80076ec:	f8dc 0000 	ldr.w	r0, [ip]
 80076f0:	b281      	uxth	r1, r0
 80076f2:	fb02 3301 	mla	r3, r2, r1, r3
 80076f6:	0c01      	lsrs	r1, r0, #16
 80076f8:	0c18      	lsrs	r0, r3, #16
 80076fa:	fb02 0101 	mla	r1, r2, r1, r0
 80076fe:	b29b      	uxth	r3, r3
 8007700:	3701      	adds	r7, #1
 8007702:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8007706:	42bc      	cmp	r4, r7
 8007708:	f84c 3b04 	str.w	r3, [ip], #4
 800770c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8007710:	dcec      	bgt.n	80076ec <__multadd+0x10>
 8007712:	b13b      	cbz	r3, 8007724 <__multadd+0x48>
 8007714:	68aa      	ldr	r2, [r5, #8]
 8007716:	42a2      	cmp	r2, r4
 8007718:	dd07      	ble.n	800772a <__multadd+0x4e>
 800771a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800771e:	3401      	adds	r4, #1
 8007720:	6153      	str	r3, [r2, #20]
 8007722:	612c      	str	r4, [r5, #16]
 8007724:	4628      	mov	r0, r5
 8007726:	b003      	add	sp, #12
 8007728:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800772a:	6869      	ldr	r1, [r5, #4]
 800772c:	9301      	str	r3, [sp, #4]
 800772e:	3101      	adds	r1, #1
 8007730:	4630      	mov	r0, r6
 8007732:	f7ff ffa3 	bl	800767c <_Balloc>
 8007736:	692a      	ldr	r2, [r5, #16]
 8007738:	3202      	adds	r2, #2
 800773a:	f105 010c 	add.w	r1, r5, #12
 800773e:	4607      	mov	r7, r0
 8007740:	0092      	lsls	r2, r2, #2
 8007742:	300c      	adds	r0, #12
 8007744:	f7f8 ff2a 	bl	800059c <memcpy>
 8007748:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800774a:	6869      	ldr	r1, [r5, #4]
 800774c:	9b01      	ldr	r3, [sp, #4]
 800774e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8007752:	6028      	str	r0, [r5, #0]
 8007754:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8007758:	463d      	mov	r5, r7
 800775a:	e7de      	b.n	800771a <__multadd+0x3e>

0800775c <__hi0bits>:
 800775c:	0c02      	lsrs	r2, r0, #16
 800775e:	0412      	lsls	r2, r2, #16
 8007760:	4603      	mov	r3, r0
 8007762:	b9c2      	cbnz	r2, 8007796 <__hi0bits+0x3a>
 8007764:	0403      	lsls	r3, r0, #16
 8007766:	2010      	movs	r0, #16
 8007768:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800776c:	bf04      	itt	eq
 800776e:	021b      	lsleq	r3, r3, #8
 8007770:	3008      	addeq	r0, #8
 8007772:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8007776:	bf04      	itt	eq
 8007778:	011b      	lsleq	r3, r3, #4
 800777a:	3004      	addeq	r0, #4
 800777c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8007780:	bf04      	itt	eq
 8007782:	009b      	lsleq	r3, r3, #2
 8007784:	3002      	addeq	r0, #2
 8007786:	2b00      	cmp	r3, #0
 8007788:	db04      	blt.n	8007794 <__hi0bits+0x38>
 800778a:	005b      	lsls	r3, r3, #1
 800778c:	d501      	bpl.n	8007792 <__hi0bits+0x36>
 800778e:	3001      	adds	r0, #1
 8007790:	4770      	bx	lr
 8007792:	2020      	movs	r0, #32
 8007794:	4770      	bx	lr
 8007796:	2000      	movs	r0, #0
 8007798:	e7e6      	b.n	8007768 <__hi0bits+0xc>
 800779a:	bf00      	nop

0800779c <__lo0bits>:
 800779c:	6803      	ldr	r3, [r0, #0]
 800779e:	f013 0207 	ands.w	r2, r3, #7
 80077a2:	4601      	mov	r1, r0
 80077a4:	d007      	beq.n	80077b6 <__lo0bits+0x1a>
 80077a6:	07da      	lsls	r2, r3, #31
 80077a8:	d41f      	bmi.n	80077ea <__lo0bits+0x4e>
 80077aa:	0798      	lsls	r0, r3, #30
 80077ac:	d51f      	bpl.n	80077ee <__lo0bits+0x52>
 80077ae:	085b      	lsrs	r3, r3, #1
 80077b0:	600b      	str	r3, [r1, #0]
 80077b2:	2001      	movs	r0, #1
 80077b4:	4770      	bx	lr
 80077b6:	b298      	uxth	r0, r3
 80077b8:	b1a0      	cbz	r0, 80077e4 <__lo0bits+0x48>
 80077ba:	4610      	mov	r0, r2
 80077bc:	f013 0fff 	tst.w	r3, #255	; 0xff
 80077c0:	bf04      	itt	eq
 80077c2:	0a1b      	lsreq	r3, r3, #8
 80077c4:	3008      	addeq	r0, #8
 80077c6:	071a      	lsls	r2, r3, #28
 80077c8:	bf04      	itt	eq
 80077ca:	091b      	lsreq	r3, r3, #4
 80077cc:	3004      	addeq	r0, #4
 80077ce:	079a      	lsls	r2, r3, #30
 80077d0:	bf04      	itt	eq
 80077d2:	089b      	lsreq	r3, r3, #2
 80077d4:	3002      	addeq	r0, #2
 80077d6:	07da      	lsls	r2, r3, #31
 80077d8:	d402      	bmi.n	80077e0 <__lo0bits+0x44>
 80077da:	085b      	lsrs	r3, r3, #1
 80077dc:	d00b      	beq.n	80077f6 <__lo0bits+0x5a>
 80077de:	3001      	adds	r0, #1
 80077e0:	600b      	str	r3, [r1, #0]
 80077e2:	4770      	bx	lr
 80077e4:	0c1b      	lsrs	r3, r3, #16
 80077e6:	2010      	movs	r0, #16
 80077e8:	e7e8      	b.n	80077bc <__lo0bits+0x20>
 80077ea:	2000      	movs	r0, #0
 80077ec:	4770      	bx	lr
 80077ee:	089b      	lsrs	r3, r3, #2
 80077f0:	600b      	str	r3, [r1, #0]
 80077f2:	2002      	movs	r0, #2
 80077f4:	4770      	bx	lr
 80077f6:	2020      	movs	r0, #32
 80077f8:	4770      	bx	lr
 80077fa:	bf00      	nop

080077fc <__i2b>:
 80077fc:	b510      	push	{r4, lr}
 80077fe:	460c      	mov	r4, r1
 8007800:	2101      	movs	r1, #1
 8007802:	f7ff ff3b 	bl	800767c <_Balloc>
 8007806:	2201      	movs	r2, #1
 8007808:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800780c:	bd10      	pop	{r4, pc}
 800780e:	bf00      	nop

08007810 <__multiply>:
 8007810:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007814:	690e      	ldr	r6, [r1, #16]
 8007816:	6914      	ldr	r4, [r2, #16]
 8007818:	42a6      	cmp	r6, r4
 800781a:	b083      	sub	sp, #12
 800781c:	460f      	mov	r7, r1
 800781e:	4615      	mov	r5, r2
 8007820:	da04      	bge.n	800782c <__multiply+0x1c>
 8007822:	4632      	mov	r2, r6
 8007824:	462f      	mov	r7, r5
 8007826:	4626      	mov	r6, r4
 8007828:	460d      	mov	r5, r1
 800782a:	4614      	mov	r4, r2
 800782c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8007830:	eb06 0804 	add.w	r8, r6, r4
 8007834:	4543      	cmp	r3, r8
 8007836:	bfb8      	it	lt
 8007838:	3101      	addlt	r1, #1
 800783a:	f7ff ff1f 	bl	800767c <_Balloc>
 800783e:	f100 0914 	add.w	r9, r0, #20
 8007842:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8007846:	45f1      	cmp	r9, lr
 8007848:	9000      	str	r0, [sp, #0]
 800784a:	d205      	bcs.n	8007858 <__multiply+0x48>
 800784c:	464b      	mov	r3, r9
 800784e:	2200      	movs	r2, #0
 8007850:	f843 2b04 	str.w	r2, [r3], #4
 8007854:	459e      	cmp	lr, r3
 8007856:	d8fb      	bhi.n	8007850 <__multiply+0x40>
 8007858:	f105 0a14 	add.w	sl, r5, #20
 800785c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8007860:	f107 0314 	add.w	r3, r7, #20
 8007864:	45a2      	cmp	sl, r4
 8007866:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800786a:	d261      	bcs.n	8007930 <__multiply+0x120>
 800786c:	1b64      	subs	r4, r4, r5
 800786e:	3c15      	subs	r4, #21
 8007870:	f024 0403 	bic.w	r4, r4, #3
 8007874:	f8cd e004 	str.w	lr, [sp, #4]
 8007878:	44a2      	add	sl, r4
 800787a:	f105 0210 	add.w	r2, r5, #16
 800787e:	469e      	mov	lr, r3
 8007880:	e005      	b.n	800788e <__multiply+0x7e>
 8007882:	0c2d      	lsrs	r5, r5, #16
 8007884:	d12b      	bne.n	80078de <__multiply+0xce>
 8007886:	4592      	cmp	sl, r2
 8007888:	f109 0904 	add.w	r9, r9, #4
 800788c:	d04e      	beq.n	800792c <__multiply+0x11c>
 800788e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8007892:	fa1f fb85 	uxth.w	fp, r5
 8007896:	f1bb 0f00 	cmp.w	fp, #0
 800789a:	d0f2      	beq.n	8007882 <__multiply+0x72>
 800789c:	4677      	mov	r7, lr
 800789e:	464e      	mov	r6, r9
 80078a0:	2000      	movs	r0, #0
 80078a2:	e000      	b.n	80078a6 <__multiply+0x96>
 80078a4:	4626      	mov	r6, r4
 80078a6:	f857 1b04 	ldr.w	r1, [r7], #4
 80078aa:	6834      	ldr	r4, [r6, #0]
 80078ac:	b28b      	uxth	r3, r1
 80078ae:	b2a5      	uxth	r5, r4
 80078b0:	0c09      	lsrs	r1, r1, #16
 80078b2:	0c24      	lsrs	r4, r4, #16
 80078b4:	fb0b 5303 	mla	r3, fp, r3, r5
 80078b8:	4403      	add	r3, r0
 80078ba:	fb0b 4001 	mla	r0, fp, r1, r4
 80078be:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80078c2:	4634      	mov	r4, r6
 80078c4:	b29b      	uxth	r3, r3
 80078c6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80078ca:	45bc      	cmp	ip, r7
 80078cc:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80078d0:	f844 3b04 	str.w	r3, [r4], #4
 80078d4:	d8e6      	bhi.n	80078a4 <__multiply+0x94>
 80078d6:	6070      	str	r0, [r6, #4]
 80078d8:	6815      	ldr	r5, [r2, #0]
 80078da:	0c2d      	lsrs	r5, r5, #16
 80078dc:	d0d3      	beq.n	8007886 <__multiply+0x76>
 80078de:	f8d9 3000 	ldr.w	r3, [r9]
 80078e2:	4676      	mov	r6, lr
 80078e4:	4618      	mov	r0, r3
 80078e6:	46cb      	mov	fp, r9
 80078e8:	2100      	movs	r1, #0
 80078ea:	e000      	b.n	80078ee <__multiply+0xde>
 80078ec:	46a3      	mov	fp, r4
 80078ee:	8834      	ldrh	r4, [r6, #0]
 80078f0:	0c00      	lsrs	r0, r0, #16
 80078f2:	fb05 0004 	mla	r0, r5, r4, r0
 80078f6:	4401      	add	r1, r0
 80078f8:	b29b      	uxth	r3, r3
 80078fa:	465c      	mov	r4, fp
 80078fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8007900:	f844 3b04 	str.w	r3, [r4], #4
 8007904:	f856 3b04 	ldr.w	r3, [r6], #4
 8007908:	f8db 0004 	ldr.w	r0, [fp, #4]
 800790c:	0c1b      	lsrs	r3, r3, #16
 800790e:	b287      	uxth	r7, r0
 8007910:	fb05 7303 	mla	r3, r5, r3, r7
 8007914:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8007918:	45b4      	cmp	ip, r6
 800791a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800791e:	d8e5      	bhi.n	80078ec <__multiply+0xdc>
 8007920:	4592      	cmp	sl, r2
 8007922:	f8cb 3004 	str.w	r3, [fp, #4]
 8007926:	f109 0904 	add.w	r9, r9, #4
 800792a:	d1b0      	bne.n	800788e <__multiply+0x7e>
 800792c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8007930:	f1b8 0f00 	cmp.w	r8, #0
 8007934:	dd0b      	ble.n	800794e <__multiply+0x13e>
 8007936:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800793a:	f1ae 0e04 	sub.w	lr, lr, #4
 800793e:	b11b      	cbz	r3, 8007948 <__multiply+0x138>
 8007940:	e005      	b.n	800794e <__multiply+0x13e>
 8007942:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8007946:	b913      	cbnz	r3, 800794e <__multiply+0x13e>
 8007948:	f1b8 0801 	subs.w	r8, r8, #1
 800794c:	d1f9      	bne.n	8007942 <__multiply+0x132>
 800794e:	9800      	ldr	r0, [sp, #0]
 8007950:	f8c0 8010 	str.w	r8, [r0, #16]
 8007954:	b003      	add	sp, #12
 8007956:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800795a:	bf00      	nop

0800795c <__pow5mult>:
 800795c:	f012 0303 	ands.w	r3, r2, #3
 8007960:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007964:	4614      	mov	r4, r2
 8007966:	4607      	mov	r7, r0
 8007968:	d12e      	bne.n	80079c8 <__pow5mult+0x6c>
 800796a:	460d      	mov	r5, r1
 800796c:	10a4      	asrs	r4, r4, #2
 800796e:	d01c      	beq.n	80079aa <__pow5mult+0x4e>
 8007970:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8007972:	b396      	cbz	r6, 80079da <__pow5mult+0x7e>
 8007974:	07e3      	lsls	r3, r4, #31
 8007976:	f04f 0800 	mov.w	r8, #0
 800797a:	d406      	bmi.n	800798a <__pow5mult+0x2e>
 800797c:	1064      	asrs	r4, r4, #1
 800797e:	d014      	beq.n	80079aa <__pow5mult+0x4e>
 8007980:	6830      	ldr	r0, [r6, #0]
 8007982:	b1a8      	cbz	r0, 80079b0 <__pow5mult+0x54>
 8007984:	4606      	mov	r6, r0
 8007986:	07e3      	lsls	r3, r4, #31
 8007988:	d5f8      	bpl.n	800797c <__pow5mult+0x20>
 800798a:	4632      	mov	r2, r6
 800798c:	4629      	mov	r1, r5
 800798e:	4638      	mov	r0, r7
 8007990:	f7ff ff3e 	bl	8007810 <__multiply>
 8007994:	b1b5      	cbz	r5, 80079c4 <__pow5mult+0x68>
 8007996:	686a      	ldr	r2, [r5, #4]
 8007998:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800799a:	1064      	asrs	r4, r4, #1
 800799c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80079a0:	6029      	str	r1, [r5, #0]
 80079a2:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80079a6:	4605      	mov	r5, r0
 80079a8:	d1ea      	bne.n	8007980 <__pow5mult+0x24>
 80079aa:	4628      	mov	r0, r5
 80079ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80079b0:	4632      	mov	r2, r6
 80079b2:	4631      	mov	r1, r6
 80079b4:	4638      	mov	r0, r7
 80079b6:	f7ff ff2b 	bl	8007810 <__multiply>
 80079ba:	6030      	str	r0, [r6, #0]
 80079bc:	f8c0 8000 	str.w	r8, [r0]
 80079c0:	4606      	mov	r6, r0
 80079c2:	e7e0      	b.n	8007986 <__pow5mult+0x2a>
 80079c4:	4605      	mov	r5, r0
 80079c6:	e7d9      	b.n	800797c <__pow5mult+0x20>
 80079c8:	3b01      	subs	r3, #1
 80079ca:	4a0b      	ldr	r2, [pc, #44]	; (80079f8 <__pow5mult+0x9c>)
 80079cc:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80079d0:	2300      	movs	r3, #0
 80079d2:	f7ff fe83 	bl	80076dc <__multadd>
 80079d6:	4605      	mov	r5, r0
 80079d8:	e7c8      	b.n	800796c <__pow5mult+0x10>
 80079da:	2101      	movs	r1, #1
 80079dc:	4638      	mov	r0, r7
 80079de:	f7ff fe4d 	bl	800767c <_Balloc>
 80079e2:	f240 2371 	movw	r3, #625	; 0x271
 80079e6:	6143      	str	r3, [r0, #20]
 80079e8:	2201      	movs	r2, #1
 80079ea:	2300      	movs	r3, #0
 80079ec:	6102      	str	r2, [r0, #16]
 80079ee:	4606      	mov	r6, r0
 80079f0:	64b8      	str	r0, [r7, #72]	; 0x48
 80079f2:	6003      	str	r3, [r0, #0]
 80079f4:	e7be      	b.n	8007974 <__pow5mult+0x18>
 80079f6:	bf00      	nop
 80079f8:	080089e8 	.word	0x080089e8

080079fc <__lshift>:
 80079fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007a00:	4691      	mov	r9, r2
 8007a02:	690a      	ldr	r2, [r1, #16]
 8007a04:	460e      	mov	r6, r1
 8007a06:	ea4f 1469 	mov.w	r4, r9, asr #5
 8007a0a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8007a0e:	eb04 0802 	add.w	r8, r4, r2
 8007a12:	f108 0501 	add.w	r5, r8, #1
 8007a16:	429d      	cmp	r5, r3
 8007a18:	4607      	mov	r7, r0
 8007a1a:	dd04      	ble.n	8007a26 <__lshift+0x2a>
 8007a1c:	005b      	lsls	r3, r3, #1
 8007a1e:	429d      	cmp	r5, r3
 8007a20:	f101 0101 	add.w	r1, r1, #1
 8007a24:	dcfa      	bgt.n	8007a1c <__lshift+0x20>
 8007a26:	4638      	mov	r0, r7
 8007a28:	f7ff fe28 	bl	800767c <_Balloc>
 8007a2c:	2c00      	cmp	r4, #0
 8007a2e:	f100 0314 	add.w	r3, r0, #20
 8007a32:	dd37      	ble.n	8007aa4 <__lshift+0xa8>
 8007a34:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8007a38:	2200      	movs	r2, #0
 8007a3a:	f843 2b04 	str.w	r2, [r3], #4
 8007a3e:	428b      	cmp	r3, r1
 8007a40:	d1fb      	bne.n	8007a3a <__lshift+0x3e>
 8007a42:	6934      	ldr	r4, [r6, #16]
 8007a44:	f106 0314 	add.w	r3, r6, #20
 8007a48:	f019 091f 	ands.w	r9, r9, #31
 8007a4c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8007a50:	d020      	beq.n	8007a94 <__lshift+0x98>
 8007a52:	f1c9 0e20 	rsb	lr, r9, #32
 8007a56:	2200      	movs	r2, #0
 8007a58:	e000      	b.n	8007a5c <__lshift+0x60>
 8007a5a:	4651      	mov	r1, sl
 8007a5c:	681c      	ldr	r4, [r3, #0]
 8007a5e:	468a      	mov	sl, r1
 8007a60:	fa04 f409 	lsl.w	r4, r4, r9
 8007a64:	4314      	orrs	r4, r2
 8007a66:	f84a 4b04 	str.w	r4, [sl], #4
 8007a6a:	f853 2b04 	ldr.w	r2, [r3], #4
 8007a6e:	4563      	cmp	r3, ip
 8007a70:	fa22 f20e 	lsr.w	r2, r2, lr
 8007a74:	d3f1      	bcc.n	8007a5a <__lshift+0x5e>
 8007a76:	604a      	str	r2, [r1, #4]
 8007a78:	b10a      	cbz	r2, 8007a7e <__lshift+0x82>
 8007a7a:	f108 0502 	add.w	r5, r8, #2
 8007a7e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8007a80:	6872      	ldr	r2, [r6, #4]
 8007a82:	3d01      	subs	r5, #1
 8007a84:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8007a88:	6105      	str	r5, [r0, #16]
 8007a8a:	6031      	str	r1, [r6, #0]
 8007a8c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8007a90:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007a94:	3904      	subs	r1, #4
 8007a96:	f853 2b04 	ldr.w	r2, [r3], #4
 8007a9a:	f841 2f04 	str.w	r2, [r1, #4]!
 8007a9e:	459c      	cmp	ip, r3
 8007aa0:	d8f9      	bhi.n	8007a96 <__lshift+0x9a>
 8007aa2:	e7ec      	b.n	8007a7e <__lshift+0x82>
 8007aa4:	4619      	mov	r1, r3
 8007aa6:	e7cc      	b.n	8007a42 <__lshift+0x46>

08007aa8 <__mcmp>:
 8007aa8:	b430      	push	{r4, r5}
 8007aaa:	690b      	ldr	r3, [r1, #16]
 8007aac:	4605      	mov	r5, r0
 8007aae:	6900      	ldr	r0, [r0, #16]
 8007ab0:	1ac0      	subs	r0, r0, r3
 8007ab2:	d10f      	bne.n	8007ad4 <__mcmp+0x2c>
 8007ab4:	009b      	lsls	r3, r3, #2
 8007ab6:	3514      	adds	r5, #20
 8007ab8:	3114      	adds	r1, #20
 8007aba:	4419      	add	r1, r3
 8007abc:	442b      	add	r3, r5
 8007abe:	e001      	b.n	8007ac4 <__mcmp+0x1c>
 8007ac0:	429d      	cmp	r5, r3
 8007ac2:	d207      	bcs.n	8007ad4 <__mcmp+0x2c>
 8007ac4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8007ac8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8007acc:	4294      	cmp	r4, r2
 8007ace:	d0f7      	beq.n	8007ac0 <__mcmp+0x18>
 8007ad0:	d302      	bcc.n	8007ad8 <__mcmp+0x30>
 8007ad2:	2001      	movs	r0, #1
 8007ad4:	bc30      	pop	{r4, r5}
 8007ad6:	4770      	bx	lr
 8007ad8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007adc:	e7fa      	b.n	8007ad4 <__mcmp+0x2c>
 8007ade:	bf00      	nop

08007ae0 <__mdiff>:
 8007ae0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007ae4:	6913      	ldr	r3, [r2, #16]
 8007ae6:	690d      	ldr	r5, [r1, #16]
 8007ae8:	1aed      	subs	r5, r5, r3
 8007aea:	2d00      	cmp	r5, #0
 8007aec:	460e      	mov	r6, r1
 8007aee:	4690      	mov	r8, r2
 8007af0:	f101 0414 	add.w	r4, r1, #20
 8007af4:	f102 0714 	add.w	r7, r2, #20
 8007af8:	d114      	bne.n	8007b24 <__mdiff+0x44>
 8007afa:	009b      	lsls	r3, r3, #2
 8007afc:	18e2      	adds	r2, r4, r3
 8007afe:	443b      	add	r3, r7
 8007b00:	e001      	b.n	8007b06 <__mdiff+0x26>
 8007b02:	42a2      	cmp	r2, r4
 8007b04:	d959      	bls.n	8007bba <__mdiff+0xda>
 8007b06:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8007b0a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8007b0e:	458c      	cmp	ip, r1
 8007b10:	d0f7      	beq.n	8007b02 <__mdiff+0x22>
 8007b12:	d209      	bcs.n	8007b28 <__mdiff+0x48>
 8007b14:	4622      	mov	r2, r4
 8007b16:	4633      	mov	r3, r6
 8007b18:	463c      	mov	r4, r7
 8007b1a:	4646      	mov	r6, r8
 8007b1c:	4617      	mov	r7, r2
 8007b1e:	4698      	mov	r8, r3
 8007b20:	2501      	movs	r5, #1
 8007b22:	e001      	b.n	8007b28 <__mdiff+0x48>
 8007b24:	dbf6      	blt.n	8007b14 <__mdiff+0x34>
 8007b26:	2500      	movs	r5, #0
 8007b28:	6871      	ldr	r1, [r6, #4]
 8007b2a:	f7ff fda7 	bl	800767c <_Balloc>
 8007b2e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8007b32:	6936      	ldr	r6, [r6, #16]
 8007b34:	60c5      	str	r5, [r0, #12]
 8007b36:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8007b3a:	46bc      	mov	ip, r7
 8007b3c:	f100 0514 	add.w	r5, r0, #20
 8007b40:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8007b44:	2300      	movs	r3, #0
 8007b46:	f85c 1b04 	ldr.w	r1, [ip], #4
 8007b4a:	f854 8b04 	ldr.w	r8, [r4], #4
 8007b4e:	b28a      	uxth	r2, r1
 8007b50:	fa13 f388 	uxtah	r3, r3, r8
 8007b54:	0c09      	lsrs	r1, r1, #16
 8007b56:	1a9a      	subs	r2, r3, r2
 8007b58:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8007b5c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8007b60:	b292      	uxth	r2, r2
 8007b62:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8007b66:	45e6      	cmp	lr, ip
 8007b68:	f845 2b04 	str.w	r2, [r5], #4
 8007b6c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8007b70:	d8e9      	bhi.n	8007b46 <__mdiff+0x66>
 8007b72:	42a7      	cmp	r7, r4
 8007b74:	d917      	bls.n	8007ba6 <__mdiff+0xc6>
 8007b76:	46ae      	mov	lr, r5
 8007b78:	46a4      	mov	ip, r4
 8007b7a:	f85c 2b04 	ldr.w	r2, [ip], #4
 8007b7e:	fa13 f382 	uxtah	r3, r3, r2
 8007b82:	1419      	asrs	r1, r3, #16
 8007b84:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8007b88:	b29b      	uxth	r3, r3
 8007b8a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8007b8e:	4567      	cmp	r7, ip
 8007b90:	f84e 2b04 	str.w	r2, [lr], #4
 8007b94:	ea4f 4321 	mov.w	r3, r1, asr #16
 8007b98:	d8ef      	bhi.n	8007b7a <__mdiff+0x9a>
 8007b9a:	43e4      	mvns	r4, r4
 8007b9c:	4427      	add	r7, r4
 8007b9e:	f027 0703 	bic.w	r7, r7, #3
 8007ba2:	3704      	adds	r7, #4
 8007ba4:	443d      	add	r5, r7
 8007ba6:	3d04      	subs	r5, #4
 8007ba8:	b922      	cbnz	r2, 8007bb4 <__mdiff+0xd4>
 8007baa:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8007bae:	3e01      	subs	r6, #1
 8007bb0:	2b00      	cmp	r3, #0
 8007bb2:	d0fa      	beq.n	8007baa <__mdiff+0xca>
 8007bb4:	6106      	str	r6, [r0, #16]
 8007bb6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007bba:	2100      	movs	r1, #0
 8007bbc:	f7ff fd5e 	bl	800767c <_Balloc>
 8007bc0:	2201      	movs	r2, #1
 8007bc2:	2300      	movs	r3, #0
 8007bc4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8007bc8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08007bcc <__d2b>:
 8007bcc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8007bd0:	460f      	mov	r7, r1
 8007bd2:	b083      	sub	sp, #12
 8007bd4:	2101      	movs	r1, #1
 8007bd6:	ec55 4b10 	vmov	r4, r5, d0
 8007bda:	4616      	mov	r6, r2
 8007bdc:	f7ff fd4e 	bl	800767c <_Balloc>
 8007be0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8007be4:	4681      	mov	r9, r0
 8007be6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8007bea:	f1b8 0f00 	cmp.w	r8, #0
 8007bee:	d001      	beq.n	8007bf4 <__d2b+0x28>
 8007bf0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8007bf4:	2c00      	cmp	r4, #0
 8007bf6:	9301      	str	r3, [sp, #4]
 8007bf8:	d024      	beq.n	8007c44 <__d2b+0x78>
 8007bfa:	a802      	add	r0, sp, #8
 8007bfc:	f840 4d08 	str.w	r4, [r0, #-8]!
 8007c00:	f7ff fdcc 	bl	800779c <__lo0bits>
 8007c04:	2800      	cmp	r0, #0
 8007c06:	d136      	bne.n	8007c76 <__d2b+0xaa>
 8007c08:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007c0c:	f8c9 2014 	str.w	r2, [r9, #20]
 8007c10:	2b00      	cmp	r3, #0
 8007c12:	bf0c      	ite	eq
 8007c14:	2101      	moveq	r1, #1
 8007c16:	2102      	movne	r1, #2
 8007c18:	f8c9 3018 	str.w	r3, [r9, #24]
 8007c1c:	f8c9 1010 	str.w	r1, [r9, #16]
 8007c20:	f1b8 0f00 	cmp.w	r8, #0
 8007c24:	d11b      	bne.n	8007c5e <__d2b+0x92>
 8007c26:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8007c2a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8007c2e:	6038      	str	r0, [r7, #0]
 8007c30:	6918      	ldr	r0, [r3, #16]
 8007c32:	f7ff fd93 	bl	800775c <__hi0bits>
 8007c36:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8007c3a:	6030      	str	r0, [r6, #0]
 8007c3c:	4648      	mov	r0, r9
 8007c3e:	b003      	add	sp, #12
 8007c40:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007c44:	a801      	add	r0, sp, #4
 8007c46:	f7ff fda9 	bl	800779c <__lo0bits>
 8007c4a:	9b01      	ldr	r3, [sp, #4]
 8007c4c:	f8c9 3014 	str.w	r3, [r9, #20]
 8007c50:	2101      	movs	r1, #1
 8007c52:	3020      	adds	r0, #32
 8007c54:	f8c9 1010 	str.w	r1, [r9, #16]
 8007c58:	f1b8 0f00 	cmp.w	r8, #0
 8007c5c:	d0e3      	beq.n	8007c26 <__d2b+0x5a>
 8007c5e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8007c62:	eb08 0300 	add.w	r3, r8, r0
 8007c66:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8007c6a:	603b      	str	r3, [r7, #0]
 8007c6c:	6030      	str	r0, [r6, #0]
 8007c6e:	4648      	mov	r0, r9
 8007c70:	b003      	add	sp, #12
 8007c72:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007c76:	e9dd 1300 	ldrd	r1, r3, [sp]
 8007c7a:	f1c0 0220 	rsb	r2, r0, #32
 8007c7e:	fa03 f202 	lsl.w	r2, r3, r2
 8007c82:	430a      	orrs	r2, r1
 8007c84:	40c3      	lsrs	r3, r0
 8007c86:	9301      	str	r3, [sp, #4]
 8007c88:	f8c9 2014 	str.w	r2, [r9, #20]
 8007c8c:	e7c0      	b.n	8007c10 <__d2b+0x44>
 8007c8e:	bf00      	nop

08007c90 <_realloc_r>:
 8007c90:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007c94:	4692      	mov	sl, r2
 8007c96:	b083      	sub	sp, #12
 8007c98:	2900      	cmp	r1, #0
 8007c9a:	f000 80a1 	beq.w	8007de0 <_realloc_r+0x150>
 8007c9e:	460d      	mov	r5, r1
 8007ca0:	4680      	mov	r8, r0
 8007ca2:	f10a 040b 	add.w	r4, sl, #11
 8007ca6:	f7ff fcdd 	bl	8007664 <__malloc_lock>
 8007caa:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8007cae:	2c16      	cmp	r4, #22
 8007cb0:	f022 0603 	bic.w	r6, r2, #3
 8007cb4:	f1a5 0708 	sub.w	r7, r5, #8
 8007cb8:	d83e      	bhi.n	8007d38 <_realloc_r+0xa8>
 8007cba:	2410      	movs	r4, #16
 8007cbc:	4621      	mov	r1, r4
 8007cbe:	45a2      	cmp	sl, r4
 8007cc0:	d83f      	bhi.n	8007d42 <_realloc_r+0xb2>
 8007cc2:	428e      	cmp	r6, r1
 8007cc4:	eb07 0906 	add.w	r9, r7, r6
 8007cc8:	da74      	bge.n	8007db4 <_realloc_r+0x124>
 8007cca:	4bc7      	ldr	r3, [pc, #796]	; (8007fe8 <_realloc_r+0x358>)
 8007ccc:	6898      	ldr	r0, [r3, #8]
 8007cce:	4548      	cmp	r0, r9
 8007cd0:	f000 80aa 	beq.w	8007e28 <_realloc_r+0x198>
 8007cd4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8007cd8:	f020 0301 	bic.w	r3, r0, #1
 8007cdc:	444b      	add	r3, r9
 8007cde:	685b      	ldr	r3, [r3, #4]
 8007ce0:	07db      	lsls	r3, r3, #31
 8007ce2:	f140 8083 	bpl.w	8007dec <_realloc_r+0x15c>
 8007ce6:	07d2      	lsls	r2, r2, #31
 8007ce8:	d534      	bpl.n	8007d54 <_realloc_r+0xc4>
 8007cea:	4651      	mov	r1, sl
 8007cec:	4640      	mov	r0, r8
 8007cee:	f7ff f9b1 	bl	8007054 <_malloc_r>
 8007cf2:	4682      	mov	sl, r0
 8007cf4:	b1e0      	cbz	r0, 8007d30 <_realloc_r+0xa0>
 8007cf6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8007cfa:	f023 0301 	bic.w	r3, r3, #1
 8007cfe:	443b      	add	r3, r7
 8007d00:	f1a0 0208 	sub.w	r2, r0, #8
 8007d04:	4293      	cmp	r3, r2
 8007d06:	f000 80f9 	beq.w	8007efc <_realloc_r+0x26c>
 8007d0a:	1f32      	subs	r2, r6, #4
 8007d0c:	2a24      	cmp	r2, #36	; 0x24
 8007d0e:	f200 8107 	bhi.w	8007f20 <_realloc_r+0x290>
 8007d12:	2a13      	cmp	r2, #19
 8007d14:	6829      	ldr	r1, [r5, #0]
 8007d16:	f200 80e6 	bhi.w	8007ee6 <_realloc_r+0x256>
 8007d1a:	4603      	mov	r3, r0
 8007d1c:	462a      	mov	r2, r5
 8007d1e:	6019      	str	r1, [r3, #0]
 8007d20:	6851      	ldr	r1, [r2, #4]
 8007d22:	6059      	str	r1, [r3, #4]
 8007d24:	6892      	ldr	r2, [r2, #8]
 8007d26:	609a      	str	r2, [r3, #8]
 8007d28:	4629      	mov	r1, r5
 8007d2a:	4640      	mov	r0, r8
 8007d2c:	f7fe fe68 	bl	8006a00 <_free_r>
 8007d30:	4640      	mov	r0, r8
 8007d32:	f7ff fc9d 	bl	8007670 <__malloc_unlock>
 8007d36:	e04f      	b.n	8007dd8 <_realloc_r+0x148>
 8007d38:	f024 0407 	bic.w	r4, r4, #7
 8007d3c:	2c00      	cmp	r4, #0
 8007d3e:	4621      	mov	r1, r4
 8007d40:	dabd      	bge.n	8007cbe <_realloc_r+0x2e>
 8007d42:	f04f 0a00 	mov.w	sl, #0
 8007d46:	230c      	movs	r3, #12
 8007d48:	4650      	mov	r0, sl
 8007d4a:	f8c8 3000 	str.w	r3, [r8]
 8007d4e:	b003      	add	sp, #12
 8007d50:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007d54:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8007d58:	eba7 0b03 	sub.w	fp, r7, r3
 8007d5c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007d60:	f022 0203 	bic.w	r2, r2, #3
 8007d64:	18b3      	adds	r3, r6, r2
 8007d66:	428b      	cmp	r3, r1
 8007d68:	dbbf      	blt.n	8007cea <_realloc_r+0x5a>
 8007d6a:	46da      	mov	sl, fp
 8007d6c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8007d70:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8007d74:	1f32      	subs	r2, r6, #4
 8007d76:	2a24      	cmp	r2, #36	; 0x24
 8007d78:	60c1      	str	r1, [r0, #12]
 8007d7a:	eb0b 0903 	add.w	r9, fp, r3
 8007d7e:	6088      	str	r0, [r1, #8]
 8007d80:	f200 80c6 	bhi.w	8007f10 <_realloc_r+0x280>
 8007d84:	2a13      	cmp	r2, #19
 8007d86:	6829      	ldr	r1, [r5, #0]
 8007d88:	f240 80c0 	bls.w	8007f0c <_realloc_r+0x27c>
 8007d8c:	f8cb 1008 	str.w	r1, [fp, #8]
 8007d90:	6869      	ldr	r1, [r5, #4]
 8007d92:	f8cb 100c 	str.w	r1, [fp, #12]
 8007d96:	2a1b      	cmp	r2, #27
 8007d98:	68a9      	ldr	r1, [r5, #8]
 8007d9a:	f200 80d8 	bhi.w	8007f4e <_realloc_r+0x2be>
 8007d9e:	f10b 0210 	add.w	r2, fp, #16
 8007da2:	3508      	adds	r5, #8
 8007da4:	6011      	str	r1, [r2, #0]
 8007da6:	6869      	ldr	r1, [r5, #4]
 8007da8:	6051      	str	r1, [r2, #4]
 8007daa:	68a9      	ldr	r1, [r5, #8]
 8007dac:	6091      	str	r1, [r2, #8]
 8007dae:	461e      	mov	r6, r3
 8007db0:	465f      	mov	r7, fp
 8007db2:	4655      	mov	r5, sl
 8007db4:	687b      	ldr	r3, [r7, #4]
 8007db6:	1b32      	subs	r2, r6, r4
 8007db8:	2a0f      	cmp	r2, #15
 8007dba:	f003 0301 	and.w	r3, r3, #1
 8007dbe:	d822      	bhi.n	8007e06 <_realloc_r+0x176>
 8007dc0:	4333      	orrs	r3, r6
 8007dc2:	607b      	str	r3, [r7, #4]
 8007dc4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8007dc8:	f043 0301 	orr.w	r3, r3, #1
 8007dcc:	f8c9 3004 	str.w	r3, [r9, #4]
 8007dd0:	4640      	mov	r0, r8
 8007dd2:	f7ff fc4d 	bl	8007670 <__malloc_unlock>
 8007dd6:	46aa      	mov	sl, r5
 8007dd8:	4650      	mov	r0, sl
 8007dda:	b003      	add	sp, #12
 8007ddc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007de0:	4611      	mov	r1, r2
 8007de2:	b003      	add	sp, #12
 8007de4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007de8:	f7ff b934 	b.w	8007054 <_malloc_r>
 8007dec:	f020 0003 	bic.w	r0, r0, #3
 8007df0:	1833      	adds	r3, r6, r0
 8007df2:	428b      	cmp	r3, r1
 8007df4:	db61      	blt.n	8007eba <_realloc_r+0x22a>
 8007df6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8007dfa:	461e      	mov	r6, r3
 8007dfc:	60ca      	str	r2, [r1, #12]
 8007dfe:	eb07 0903 	add.w	r9, r7, r3
 8007e02:	6091      	str	r1, [r2, #8]
 8007e04:	e7d6      	b.n	8007db4 <_realloc_r+0x124>
 8007e06:	1939      	adds	r1, r7, r4
 8007e08:	4323      	orrs	r3, r4
 8007e0a:	f042 0201 	orr.w	r2, r2, #1
 8007e0e:	607b      	str	r3, [r7, #4]
 8007e10:	604a      	str	r2, [r1, #4]
 8007e12:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8007e16:	f043 0301 	orr.w	r3, r3, #1
 8007e1a:	3108      	adds	r1, #8
 8007e1c:	f8c9 3004 	str.w	r3, [r9, #4]
 8007e20:	4640      	mov	r0, r8
 8007e22:	f7fe fded 	bl	8006a00 <_free_r>
 8007e26:	e7d3      	b.n	8007dd0 <_realloc_r+0x140>
 8007e28:	6840      	ldr	r0, [r0, #4]
 8007e2a:	f020 0903 	bic.w	r9, r0, #3
 8007e2e:	44b1      	add	r9, r6
 8007e30:	f104 0010 	add.w	r0, r4, #16
 8007e34:	4581      	cmp	r9, r0
 8007e36:	da77      	bge.n	8007f28 <_realloc_r+0x298>
 8007e38:	07d2      	lsls	r2, r2, #31
 8007e3a:	f53f af56 	bmi.w	8007cea <_realloc_r+0x5a>
 8007e3e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8007e42:	eba7 0b02 	sub.w	fp, r7, r2
 8007e46:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007e4a:	f022 0203 	bic.w	r2, r2, #3
 8007e4e:	4491      	add	r9, r2
 8007e50:	4548      	cmp	r0, r9
 8007e52:	dc87      	bgt.n	8007d64 <_realloc_r+0xd4>
 8007e54:	46da      	mov	sl, fp
 8007e56:	f8db 100c 	ldr.w	r1, [fp, #12]
 8007e5a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8007e5e:	1f32      	subs	r2, r6, #4
 8007e60:	2a24      	cmp	r2, #36	; 0x24
 8007e62:	60c1      	str	r1, [r0, #12]
 8007e64:	6088      	str	r0, [r1, #8]
 8007e66:	f200 80a1 	bhi.w	8007fac <_realloc_r+0x31c>
 8007e6a:	2a13      	cmp	r2, #19
 8007e6c:	6829      	ldr	r1, [r5, #0]
 8007e6e:	f240 809b 	bls.w	8007fa8 <_realloc_r+0x318>
 8007e72:	f8cb 1008 	str.w	r1, [fp, #8]
 8007e76:	6869      	ldr	r1, [r5, #4]
 8007e78:	f8cb 100c 	str.w	r1, [fp, #12]
 8007e7c:	2a1b      	cmp	r2, #27
 8007e7e:	68a9      	ldr	r1, [r5, #8]
 8007e80:	f200 809b 	bhi.w	8007fba <_realloc_r+0x32a>
 8007e84:	f10b 0210 	add.w	r2, fp, #16
 8007e88:	3508      	adds	r5, #8
 8007e8a:	6011      	str	r1, [r2, #0]
 8007e8c:	6869      	ldr	r1, [r5, #4]
 8007e8e:	6051      	str	r1, [r2, #4]
 8007e90:	68a9      	ldr	r1, [r5, #8]
 8007e92:	6091      	str	r1, [r2, #8]
 8007e94:	eb0b 0104 	add.w	r1, fp, r4
 8007e98:	eba9 0204 	sub.w	r2, r9, r4
 8007e9c:	f042 0201 	orr.w	r2, r2, #1
 8007ea0:	6099      	str	r1, [r3, #8]
 8007ea2:	604a      	str	r2, [r1, #4]
 8007ea4:	f8db 3004 	ldr.w	r3, [fp, #4]
 8007ea8:	f003 0301 	and.w	r3, r3, #1
 8007eac:	431c      	orrs	r4, r3
 8007eae:	4640      	mov	r0, r8
 8007eb0:	f8cb 4004 	str.w	r4, [fp, #4]
 8007eb4:	f7ff fbdc 	bl	8007670 <__malloc_unlock>
 8007eb8:	e78e      	b.n	8007dd8 <_realloc_r+0x148>
 8007eba:	07d3      	lsls	r3, r2, #31
 8007ebc:	f53f af15 	bmi.w	8007cea <_realloc_r+0x5a>
 8007ec0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8007ec4:	eba7 0b03 	sub.w	fp, r7, r3
 8007ec8:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007ecc:	f022 0203 	bic.w	r2, r2, #3
 8007ed0:	4410      	add	r0, r2
 8007ed2:	1983      	adds	r3, r0, r6
 8007ed4:	428b      	cmp	r3, r1
 8007ed6:	f6ff af45 	blt.w	8007d64 <_realloc_r+0xd4>
 8007eda:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8007ede:	46da      	mov	sl, fp
 8007ee0:	60ca      	str	r2, [r1, #12]
 8007ee2:	6091      	str	r1, [r2, #8]
 8007ee4:	e742      	b.n	8007d6c <_realloc_r+0xdc>
 8007ee6:	6001      	str	r1, [r0, #0]
 8007ee8:	686b      	ldr	r3, [r5, #4]
 8007eea:	6043      	str	r3, [r0, #4]
 8007eec:	2a1b      	cmp	r2, #27
 8007eee:	d83a      	bhi.n	8007f66 <_realloc_r+0x2d6>
 8007ef0:	f105 0208 	add.w	r2, r5, #8
 8007ef4:	f100 0308 	add.w	r3, r0, #8
 8007ef8:	68a9      	ldr	r1, [r5, #8]
 8007efa:	e710      	b.n	8007d1e <_realloc_r+0x8e>
 8007efc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8007f00:	f023 0303 	bic.w	r3, r3, #3
 8007f04:	441e      	add	r6, r3
 8007f06:	eb07 0906 	add.w	r9, r7, r6
 8007f0a:	e753      	b.n	8007db4 <_realloc_r+0x124>
 8007f0c:	4652      	mov	r2, sl
 8007f0e:	e749      	b.n	8007da4 <_realloc_r+0x114>
 8007f10:	4629      	mov	r1, r5
 8007f12:	4650      	mov	r0, sl
 8007f14:	461e      	mov	r6, r3
 8007f16:	465f      	mov	r7, fp
 8007f18:	f7ff fb40 	bl	800759c <memmove>
 8007f1c:	4655      	mov	r5, sl
 8007f1e:	e749      	b.n	8007db4 <_realloc_r+0x124>
 8007f20:	4629      	mov	r1, r5
 8007f22:	f7ff fb3b 	bl	800759c <memmove>
 8007f26:	e6ff      	b.n	8007d28 <_realloc_r+0x98>
 8007f28:	4427      	add	r7, r4
 8007f2a:	eba9 0904 	sub.w	r9, r9, r4
 8007f2e:	f049 0201 	orr.w	r2, r9, #1
 8007f32:	609f      	str	r7, [r3, #8]
 8007f34:	607a      	str	r2, [r7, #4]
 8007f36:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8007f3a:	f003 0301 	and.w	r3, r3, #1
 8007f3e:	431c      	orrs	r4, r3
 8007f40:	4640      	mov	r0, r8
 8007f42:	f845 4c04 	str.w	r4, [r5, #-4]
 8007f46:	f7ff fb93 	bl	8007670 <__malloc_unlock>
 8007f4a:	46aa      	mov	sl, r5
 8007f4c:	e744      	b.n	8007dd8 <_realloc_r+0x148>
 8007f4e:	f8cb 1010 	str.w	r1, [fp, #16]
 8007f52:	68e9      	ldr	r1, [r5, #12]
 8007f54:	f8cb 1014 	str.w	r1, [fp, #20]
 8007f58:	2a24      	cmp	r2, #36	; 0x24
 8007f5a:	d010      	beq.n	8007f7e <_realloc_r+0x2ee>
 8007f5c:	6929      	ldr	r1, [r5, #16]
 8007f5e:	f10b 0218 	add.w	r2, fp, #24
 8007f62:	3510      	adds	r5, #16
 8007f64:	e71e      	b.n	8007da4 <_realloc_r+0x114>
 8007f66:	68ab      	ldr	r3, [r5, #8]
 8007f68:	6083      	str	r3, [r0, #8]
 8007f6a:	68eb      	ldr	r3, [r5, #12]
 8007f6c:	60c3      	str	r3, [r0, #12]
 8007f6e:	2a24      	cmp	r2, #36	; 0x24
 8007f70:	d010      	beq.n	8007f94 <_realloc_r+0x304>
 8007f72:	f105 0210 	add.w	r2, r5, #16
 8007f76:	f100 0310 	add.w	r3, r0, #16
 8007f7a:	6929      	ldr	r1, [r5, #16]
 8007f7c:	e6cf      	b.n	8007d1e <_realloc_r+0x8e>
 8007f7e:	692a      	ldr	r2, [r5, #16]
 8007f80:	f8cb 2018 	str.w	r2, [fp, #24]
 8007f84:	696a      	ldr	r2, [r5, #20]
 8007f86:	f8cb 201c 	str.w	r2, [fp, #28]
 8007f8a:	69a9      	ldr	r1, [r5, #24]
 8007f8c:	f10b 0220 	add.w	r2, fp, #32
 8007f90:	3518      	adds	r5, #24
 8007f92:	e707      	b.n	8007da4 <_realloc_r+0x114>
 8007f94:	692b      	ldr	r3, [r5, #16]
 8007f96:	6103      	str	r3, [r0, #16]
 8007f98:	696b      	ldr	r3, [r5, #20]
 8007f9a:	6143      	str	r3, [r0, #20]
 8007f9c:	69a9      	ldr	r1, [r5, #24]
 8007f9e:	f105 0218 	add.w	r2, r5, #24
 8007fa2:	f100 0318 	add.w	r3, r0, #24
 8007fa6:	e6ba      	b.n	8007d1e <_realloc_r+0x8e>
 8007fa8:	4652      	mov	r2, sl
 8007faa:	e76e      	b.n	8007e8a <_realloc_r+0x1fa>
 8007fac:	4629      	mov	r1, r5
 8007fae:	4650      	mov	r0, sl
 8007fb0:	9301      	str	r3, [sp, #4]
 8007fb2:	f7ff faf3 	bl	800759c <memmove>
 8007fb6:	9b01      	ldr	r3, [sp, #4]
 8007fb8:	e76c      	b.n	8007e94 <_realloc_r+0x204>
 8007fba:	f8cb 1010 	str.w	r1, [fp, #16]
 8007fbe:	68e9      	ldr	r1, [r5, #12]
 8007fc0:	f8cb 1014 	str.w	r1, [fp, #20]
 8007fc4:	2a24      	cmp	r2, #36	; 0x24
 8007fc6:	d004      	beq.n	8007fd2 <_realloc_r+0x342>
 8007fc8:	6929      	ldr	r1, [r5, #16]
 8007fca:	f10b 0218 	add.w	r2, fp, #24
 8007fce:	3510      	adds	r5, #16
 8007fd0:	e75b      	b.n	8007e8a <_realloc_r+0x1fa>
 8007fd2:	692a      	ldr	r2, [r5, #16]
 8007fd4:	f8cb 2018 	str.w	r2, [fp, #24]
 8007fd8:	696a      	ldr	r2, [r5, #20]
 8007fda:	f8cb 201c 	str.w	r2, [fp, #28]
 8007fde:	69a9      	ldr	r1, [r5, #24]
 8007fe0:	f10b 0220 	add.w	r2, fp, #32
 8007fe4:	3518      	adds	r5, #24
 8007fe6:	e750      	b.n	8007e8a <_realloc_r+0x1fa>
 8007fe8:	2000044c 	.word	0x2000044c

08007fec <frexp>:
 8007fec:	ec53 2b10 	vmov	r2, r3, d0
 8007ff0:	b570      	push	{r4, r5, r6, lr}
 8007ff2:	4e16      	ldr	r6, [pc, #88]	; (800804c <frexp+0x60>)
 8007ff4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8007ff8:	2500      	movs	r5, #0
 8007ffa:	42b1      	cmp	r1, r6
 8007ffc:	4604      	mov	r4, r0
 8007ffe:	6005      	str	r5, [r0, #0]
 8008000:	dc21      	bgt.n	8008046 <frexp+0x5a>
 8008002:	ee10 6a10 	vmov	r6, s0
 8008006:	430e      	orrs	r6, r1
 8008008:	d01d      	beq.n	8008046 <frexp+0x5a>
 800800a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800800e:	4618      	mov	r0, r3
 8008010:	da0c      	bge.n	800802c <frexp+0x40>
 8008012:	4619      	mov	r1, r3
 8008014:	2200      	movs	r2, #0
 8008016:	ee10 0a10 	vmov	r0, s0
 800801a:	4b0d      	ldr	r3, [pc, #52]	; (8008050 <frexp+0x64>)
 800801c:	f7f8 fdec 	bl	8000bf8 <__aeabi_dmul>
 8008020:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8008024:	4602      	mov	r2, r0
 8008026:	4608      	mov	r0, r1
 8008028:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800802c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8008030:	1509      	asrs	r1, r1, #20
 8008032:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8008036:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800803a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800803e:	4429      	add	r1, r5
 8008040:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8008044:	6021      	str	r1, [r4, #0]
 8008046:	ec43 2b10 	vmov	d0, r2, r3
 800804a:	bd70      	pop	{r4, r5, r6, pc}
 800804c:	7fefffff 	.word	0x7fefffff
 8008050:	43500000 	.word	0x43500000

08008054 <_sbrk_r>:
 8008054:	b538      	push	{r3, r4, r5, lr}
 8008056:	4c07      	ldr	r4, [pc, #28]	; (8008074 <_sbrk_r+0x20>)
 8008058:	2300      	movs	r3, #0
 800805a:	4605      	mov	r5, r0
 800805c:	4608      	mov	r0, r1
 800805e:	6023      	str	r3, [r4, #0]
 8008060:	f7fb fc31 	bl	80038c6 <_sbrk>
 8008064:	1c43      	adds	r3, r0, #1
 8008066:	d000      	beq.n	800806a <_sbrk_r+0x16>
 8008068:	bd38      	pop	{r3, r4, r5, pc}
 800806a:	6823      	ldr	r3, [r4, #0]
 800806c:	2b00      	cmp	r3, #0
 800806e:	d0fb      	beq.n	8008068 <_sbrk_r+0x14>
 8008070:	602b      	str	r3, [r5, #0]
 8008072:	bd38      	pop	{r3, r4, r5, pc}
 8008074:	20000c30 	.word	0x20000c30

08008078 <__sread>:
 8008078:	b510      	push	{r4, lr}
 800807a:	460c      	mov	r4, r1
 800807c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008080:	f000 fabc 	bl	80085fc <_read_r>
 8008084:	2800      	cmp	r0, #0
 8008086:	db03      	blt.n	8008090 <__sread+0x18>
 8008088:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800808a:	4403      	add	r3, r0
 800808c:	6523      	str	r3, [r4, #80]	; 0x50
 800808e:	bd10      	pop	{r4, pc}
 8008090:	89a3      	ldrh	r3, [r4, #12]
 8008092:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8008096:	81a3      	strh	r3, [r4, #12]
 8008098:	bd10      	pop	{r4, pc}
 800809a:	bf00      	nop

0800809c <__swrite>:
 800809c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80080a0:	4616      	mov	r6, r2
 80080a2:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80080a6:	461f      	mov	r7, r3
 80080a8:	05d3      	lsls	r3, r2, #23
 80080aa:	460c      	mov	r4, r1
 80080ac:	4605      	mov	r5, r0
 80080ae:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80080b2:	d507      	bpl.n	80080c4 <__swrite+0x28>
 80080b4:	2200      	movs	r2, #0
 80080b6:	2302      	movs	r3, #2
 80080b8:	f000 fa74 	bl	80085a4 <_lseek_r>
 80080bc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80080c0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80080c4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80080c8:	81a2      	strh	r2, [r4, #12]
 80080ca:	463b      	mov	r3, r7
 80080cc:	4632      	mov	r2, r6
 80080ce:	4628      	mov	r0, r5
 80080d0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80080d4:	f000 b88c 	b.w	80081f0 <_write_r>

080080d8 <__sseek>:
 80080d8:	b510      	push	{r4, lr}
 80080da:	460c      	mov	r4, r1
 80080dc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80080e0:	f000 fa60 	bl	80085a4 <_lseek_r>
 80080e4:	89a3      	ldrh	r3, [r4, #12]
 80080e6:	1c42      	adds	r2, r0, #1
 80080e8:	bf0e      	itee	eq
 80080ea:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80080ee:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80080f2:	6520      	strne	r0, [r4, #80]	; 0x50
 80080f4:	81a3      	strh	r3, [r4, #12]
 80080f6:	bd10      	pop	{r4, pc}

080080f8 <__sclose>:
 80080f8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80080fc:	f000 b922 	b.w	8008344 <_close_r>

08008100 <strncpy>:
 8008100:	ea40 0301 	orr.w	r3, r0, r1
 8008104:	079b      	lsls	r3, r3, #30
 8008106:	b470      	push	{r4, r5, r6}
 8008108:	d12a      	bne.n	8008160 <strncpy+0x60>
 800810a:	2a03      	cmp	r2, #3
 800810c:	d928      	bls.n	8008160 <strncpy+0x60>
 800810e:	460c      	mov	r4, r1
 8008110:	4603      	mov	r3, r0
 8008112:	4621      	mov	r1, r4
 8008114:	f854 6b04 	ldr.w	r6, [r4], #4
 8008118:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800811c:	ea25 0506 	bic.w	r5, r5, r6
 8008120:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8008124:	d106      	bne.n	8008134 <strncpy+0x34>
 8008126:	3a04      	subs	r2, #4
 8008128:	2a03      	cmp	r2, #3
 800812a:	f843 6b04 	str.w	r6, [r3], #4
 800812e:	4621      	mov	r1, r4
 8008130:	d8ef      	bhi.n	8008112 <strncpy+0x12>
 8008132:	b19a      	cbz	r2, 800815c <strncpy+0x5c>
 8008134:	780c      	ldrb	r4, [r1, #0]
 8008136:	701c      	strb	r4, [r3, #0]
 8008138:	3a01      	subs	r2, #1
 800813a:	3301      	adds	r3, #1
 800813c:	b13c      	cbz	r4, 800814e <strncpy+0x4e>
 800813e:	b16a      	cbz	r2, 800815c <strncpy+0x5c>
 8008140:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8008144:	f803 4b01 	strb.w	r4, [r3], #1
 8008148:	3a01      	subs	r2, #1
 800814a:	2c00      	cmp	r4, #0
 800814c:	d1f7      	bne.n	800813e <strncpy+0x3e>
 800814e:	b12a      	cbz	r2, 800815c <strncpy+0x5c>
 8008150:	441a      	add	r2, r3
 8008152:	2100      	movs	r1, #0
 8008154:	f803 1b01 	strb.w	r1, [r3], #1
 8008158:	4293      	cmp	r3, r2
 800815a:	d1fb      	bne.n	8008154 <strncpy+0x54>
 800815c:	bc70      	pop	{r4, r5, r6}
 800815e:	4770      	bx	lr
 8008160:	4603      	mov	r3, r0
 8008162:	e7e6      	b.n	8008132 <strncpy+0x32>

08008164 <__sprint_r.part.0>:
 8008164:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008168:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800816a:	049c      	lsls	r4, r3, #18
 800816c:	4692      	mov	sl, r2
 800816e:	d52d      	bpl.n	80081cc <__sprint_r.part.0+0x68>
 8008170:	6893      	ldr	r3, [r2, #8]
 8008172:	6812      	ldr	r2, [r2, #0]
 8008174:	b343      	cbz	r3, 80081c8 <__sprint_r.part.0+0x64>
 8008176:	460e      	mov	r6, r1
 8008178:	4607      	mov	r7, r0
 800817a:	f102 0908 	add.w	r9, r2, #8
 800817e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8008182:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8008186:	d015      	beq.n	80081b4 <__sprint_r.part.0+0x50>
 8008188:	3d04      	subs	r5, #4
 800818a:	2400      	movs	r4, #0
 800818c:	e001      	b.n	8008192 <__sprint_r.part.0+0x2e>
 800818e:	45a0      	cmp	r8, r4
 8008190:	d00e      	beq.n	80081b0 <__sprint_r.part.0+0x4c>
 8008192:	4632      	mov	r2, r6
 8008194:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8008198:	4638      	mov	r0, r7
 800819a:	f000 f99d 	bl	80084d8 <_fputwc_r>
 800819e:	1c43      	adds	r3, r0, #1
 80081a0:	f104 0401 	add.w	r4, r4, #1
 80081a4:	d1f3      	bne.n	800818e <__sprint_r.part.0+0x2a>
 80081a6:	2300      	movs	r3, #0
 80081a8:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80081ac:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80081b0:	f8da 3008 	ldr.w	r3, [sl, #8]
 80081b4:	f02b 0b03 	bic.w	fp, fp, #3
 80081b8:	eba3 030b 	sub.w	r3, r3, fp
 80081bc:	f8ca 3008 	str.w	r3, [sl, #8]
 80081c0:	f109 0908 	add.w	r9, r9, #8
 80081c4:	2b00      	cmp	r3, #0
 80081c6:	d1da      	bne.n	800817e <__sprint_r.part.0+0x1a>
 80081c8:	2000      	movs	r0, #0
 80081ca:	e7ec      	b.n	80081a6 <__sprint_r.part.0+0x42>
 80081cc:	f7fe fd0c 	bl	8006be8 <__sfvwrite_r>
 80081d0:	2300      	movs	r3, #0
 80081d2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80081d6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80081da:	bf00      	nop

080081dc <__sprint_r>:
 80081dc:	6893      	ldr	r3, [r2, #8]
 80081de:	b10b      	cbz	r3, 80081e4 <__sprint_r+0x8>
 80081e0:	f7ff bfc0 	b.w	8008164 <__sprint_r.part.0>
 80081e4:	b410      	push	{r4}
 80081e6:	4618      	mov	r0, r3
 80081e8:	6053      	str	r3, [r2, #4]
 80081ea:	f85d 4b04 	ldr.w	r4, [sp], #4
 80081ee:	4770      	bx	lr

080081f0 <_write_r>:
 80081f0:	b570      	push	{r4, r5, r6, lr}
 80081f2:	460d      	mov	r5, r1
 80081f4:	4c08      	ldr	r4, [pc, #32]	; (8008218 <_write_r+0x28>)
 80081f6:	4611      	mov	r1, r2
 80081f8:	4606      	mov	r6, r0
 80081fa:	461a      	mov	r2, r3
 80081fc:	4628      	mov	r0, r5
 80081fe:	2300      	movs	r3, #0
 8008200:	6023      	str	r3, [r4, #0]
 8008202:	f7fb fb4d 	bl	80038a0 <_write>
 8008206:	1c43      	adds	r3, r0, #1
 8008208:	d000      	beq.n	800820c <_write_r+0x1c>
 800820a:	bd70      	pop	{r4, r5, r6, pc}
 800820c:	6823      	ldr	r3, [r4, #0]
 800820e:	2b00      	cmp	r3, #0
 8008210:	d0fb      	beq.n	800820a <_write_r+0x1a>
 8008212:	6033      	str	r3, [r6, #0]
 8008214:	bd70      	pop	{r4, r5, r6, pc}
 8008216:	bf00      	nop
 8008218:	20000c30 	.word	0x20000c30

0800821c <__register_exitproc>:
 800821c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008220:	4d2b      	ldr	r5, [pc, #172]	; (80082d0 <__register_exitproc+0xb4>)
 8008222:	4606      	mov	r6, r0
 8008224:	6828      	ldr	r0, [r5, #0]
 8008226:	4698      	mov	r8, r3
 8008228:	460f      	mov	r7, r1
 800822a:	4691      	mov	r9, r2
 800822c:	f7fe fe96 	bl	8006f5c <__retarget_lock_acquire_recursive>
 8008230:	4b28      	ldr	r3, [pc, #160]	; (80082d4 <__register_exitproc+0xb8>)
 8008232:	681c      	ldr	r4, [r3, #0]
 8008234:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8008238:	2b00      	cmp	r3, #0
 800823a:	d03d      	beq.n	80082b8 <__register_exitproc+0x9c>
 800823c:	685a      	ldr	r2, [r3, #4]
 800823e:	2a1f      	cmp	r2, #31
 8008240:	dc0d      	bgt.n	800825e <__register_exitproc+0x42>
 8008242:	f102 0c01 	add.w	ip, r2, #1
 8008246:	bb16      	cbnz	r6, 800828e <__register_exitproc+0x72>
 8008248:	3202      	adds	r2, #2
 800824a:	f8c3 c004 	str.w	ip, [r3, #4]
 800824e:	6828      	ldr	r0, [r5, #0]
 8008250:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8008254:	f7fe fe84 	bl	8006f60 <__retarget_lock_release_recursive>
 8008258:	2000      	movs	r0, #0
 800825a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800825e:	4b1e      	ldr	r3, [pc, #120]	; (80082d8 <__register_exitproc+0xbc>)
 8008260:	b37b      	cbz	r3, 80082c2 <__register_exitproc+0xa6>
 8008262:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8008266:	f3af 8000 	nop.w
 800826a:	4603      	mov	r3, r0
 800826c:	b348      	cbz	r0, 80082c2 <__register_exitproc+0xa6>
 800826e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8008272:	2100      	movs	r1, #0
 8008274:	e9c0 2100 	strd	r2, r1, [r0]
 8008278:	f04f 0c01 	mov.w	ip, #1
 800827c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8008280:	460a      	mov	r2, r1
 8008282:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8008286:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 800828a:	2e00      	cmp	r6, #0
 800828c:	d0dc      	beq.n	8008248 <__register_exitproc+0x2c>
 800828e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8008292:	2401      	movs	r4, #1
 8008294:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8008298:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 800829c:	4094      	lsls	r4, r2
 800829e:	4320      	orrs	r0, r4
 80082a0:	2e02      	cmp	r6, #2
 80082a2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80082a6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 80082aa:	d1cd      	bne.n	8008248 <__register_exitproc+0x2c>
 80082ac:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 80082b0:	430c      	orrs	r4, r1
 80082b2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 80082b6:	e7c7      	b.n	8008248 <__register_exitproc+0x2c>
 80082b8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80082bc:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 80082c0:	e7bc      	b.n	800823c <__register_exitproc+0x20>
 80082c2:	6828      	ldr	r0, [r5, #0]
 80082c4:	f7fe fe4c 	bl	8006f60 <__retarget_lock_release_recursive>
 80082c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80082cc:	e7c5      	b.n	800825a <__register_exitproc+0x3e>
 80082ce:	bf00      	nop
 80082d0:	20000448 	.word	0x20000448
 80082d4:	08008878 	.word	0x08008878
 80082d8:	00000000 	.word	0x00000000

080082dc <_calloc_r>:
 80082dc:	b510      	push	{r4, lr}
 80082de:	fb02 f101 	mul.w	r1, r2, r1
 80082e2:	f7fe feb7 	bl	8007054 <_malloc_r>
 80082e6:	4604      	mov	r4, r0
 80082e8:	b1d8      	cbz	r0, 8008322 <_calloc_r+0x46>
 80082ea:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80082ee:	f022 0203 	bic.w	r2, r2, #3
 80082f2:	3a04      	subs	r2, #4
 80082f4:	2a24      	cmp	r2, #36	; 0x24
 80082f6:	d81d      	bhi.n	8008334 <_calloc_r+0x58>
 80082f8:	2a13      	cmp	r2, #19
 80082fa:	d914      	bls.n	8008326 <_calloc_r+0x4a>
 80082fc:	2300      	movs	r3, #0
 80082fe:	2a1b      	cmp	r2, #27
 8008300:	e9c0 3300 	strd	r3, r3, [r0]
 8008304:	d91b      	bls.n	800833e <_calloc_r+0x62>
 8008306:	2a24      	cmp	r2, #36	; 0x24
 8008308:	e9c0 3302 	strd	r3, r3, [r0, #8]
 800830c:	bf0a      	itet	eq
 800830e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8008312:	f100 0210 	addne.w	r2, r0, #16
 8008316:	f100 0218 	addeq.w	r2, r0, #24
 800831a:	2300      	movs	r3, #0
 800831c:	e9c2 3300 	strd	r3, r3, [r2]
 8008320:	6093      	str	r3, [r2, #8]
 8008322:	4620      	mov	r0, r4
 8008324:	bd10      	pop	{r4, pc}
 8008326:	4602      	mov	r2, r0
 8008328:	2300      	movs	r3, #0
 800832a:	e9c2 3300 	strd	r3, r3, [r2]
 800832e:	6093      	str	r3, [r2, #8]
 8008330:	4620      	mov	r0, r4
 8008332:	bd10      	pop	{r4, pc}
 8008334:	2100      	movs	r1, #0
 8008336:	f7fb fb6f 	bl	8003a18 <memset>
 800833a:	4620      	mov	r0, r4
 800833c:	bd10      	pop	{r4, pc}
 800833e:	f100 0208 	add.w	r2, r0, #8
 8008342:	e7f1      	b.n	8008328 <_calloc_r+0x4c>

08008344 <_close_r>:
 8008344:	b538      	push	{r3, r4, r5, lr}
 8008346:	4c07      	ldr	r4, [pc, #28]	; (8008364 <_close_r+0x20>)
 8008348:	2300      	movs	r3, #0
 800834a:	4605      	mov	r5, r0
 800834c:	4608      	mov	r0, r1
 800834e:	6023      	str	r3, [r4, #0]
 8008350:	f7fb fad5 	bl	80038fe <_close>
 8008354:	1c43      	adds	r3, r0, #1
 8008356:	d000      	beq.n	800835a <_close_r+0x16>
 8008358:	bd38      	pop	{r3, r4, r5, pc}
 800835a:	6823      	ldr	r3, [r4, #0]
 800835c:	2b00      	cmp	r3, #0
 800835e:	d0fb      	beq.n	8008358 <_close_r+0x14>
 8008360:	602b      	str	r3, [r5, #0]
 8008362:	bd38      	pop	{r3, r4, r5, pc}
 8008364:	20000c30 	.word	0x20000c30

08008368 <_fclose_r>:
 8008368:	b570      	push	{r4, r5, r6, lr}
 800836a:	2900      	cmp	r1, #0
 800836c:	d048      	beq.n	8008400 <_fclose_r+0x98>
 800836e:	4605      	mov	r5, r0
 8008370:	460c      	mov	r4, r1
 8008372:	b110      	cbz	r0, 800837a <_fclose_r+0x12>
 8008374:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008376:	2b00      	cmp	r3, #0
 8008378:	d048      	beq.n	800840c <_fclose_r+0xa4>
 800837a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800837c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008380:	07d0      	lsls	r0, r2, #31
 8008382:	d440      	bmi.n	8008406 <_fclose_r+0x9e>
 8008384:	0599      	lsls	r1, r3, #22
 8008386:	d530      	bpl.n	80083ea <_fclose_r+0x82>
 8008388:	4621      	mov	r1, r4
 800838a:	4628      	mov	r0, r5
 800838c:	f7fe f990 	bl	80066b0 <__sflush_r>
 8008390:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8008392:	4606      	mov	r6, r0
 8008394:	b133      	cbz	r3, 80083a4 <_fclose_r+0x3c>
 8008396:	69e1      	ldr	r1, [r4, #28]
 8008398:	4628      	mov	r0, r5
 800839a:	4798      	blx	r3
 800839c:	2800      	cmp	r0, #0
 800839e:	bfb8      	it	lt
 80083a0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 80083a4:	89a3      	ldrh	r3, [r4, #12]
 80083a6:	061a      	lsls	r2, r3, #24
 80083a8:	d43c      	bmi.n	8008424 <_fclose_r+0xbc>
 80083aa:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80083ac:	b141      	cbz	r1, 80083c0 <_fclose_r+0x58>
 80083ae:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80083b2:	4299      	cmp	r1, r3
 80083b4:	d002      	beq.n	80083bc <_fclose_r+0x54>
 80083b6:	4628      	mov	r0, r5
 80083b8:	f7fe fb22 	bl	8006a00 <_free_r>
 80083bc:	2300      	movs	r3, #0
 80083be:	6323      	str	r3, [r4, #48]	; 0x30
 80083c0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80083c2:	b121      	cbz	r1, 80083ce <_fclose_r+0x66>
 80083c4:	4628      	mov	r0, r5
 80083c6:	f7fe fb1b 	bl	8006a00 <_free_r>
 80083ca:	2300      	movs	r3, #0
 80083cc:	6463      	str	r3, [r4, #68]	; 0x44
 80083ce:	f7fe faa1 	bl	8006914 <__sfp_lock_acquire>
 80083d2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80083d4:	2200      	movs	r2, #0
 80083d6:	07db      	lsls	r3, r3, #31
 80083d8:	81a2      	strh	r2, [r4, #12]
 80083da:	d51f      	bpl.n	800841c <_fclose_r+0xb4>
 80083dc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80083de:	f7fe fdbb 	bl	8006f58 <__retarget_lock_close_recursive>
 80083e2:	f7fe fa9d 	bl	8006920 <__sfp_lock_release>
 80083e6:	4630      	mov	r0, r6
 80083e8:	bd70      	pop	{r4, r5, r6, pc}
 80083ea:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80083ec:	f7fe fdb6 	bl	8006f5c <__retarget_lock_acquire_recursive>
 80083f0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80083f4:	2b00      	cmp	r3, #0
 80083f6:	d1c7      	bne.n	8008388 <_fclose_r+0x20>
 80083f8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80083fa:	f016 0601 	ands.w	r6, r6, #1
 80083fe:	d016      	beq.n	800842e <_fclose_r+0xc6>
 8008400:	2600      	movs	r6, #0
 8008402:	4630      	mov	r0, r6
 8008404:	bd70      	pop	{r4, r5, r6, pc}
 8008406:	2b00      	cmp	r3, #0
 8008408:	d0fa      	beq.n	8008400 <_fclose_r+0x98>
 800840a:	e7bd      	b.n	8008388 <_fclose_r+0x20>
 800840c:	f7fe fa56 	bl	80068bc <__sinit>
 8008410:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008412:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008416:	07d0      	lsls	r0, r2, #31
 8008418:	d4f5      	bmi.n	8008406 <_fclose_r+0x9e>
 800841a:	e7b3      	b.n	8008384 <_fclose_r+0x1c>
 800841c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800841e:	f7fe fd9f 	bl	8006f60 <__retarget_lock_release_recursive>
 8008422:	e7db      	b.n	80083dc <_fclose_r+0x74>
 8008424:	6921      	ldr	r1, [r4, #16]
 8008426:	4628      	mov	r0, r5
 8008428:	f7fe faea 	bl	8006a00 <_free_r>
 800842c:	e7bd      	b.n	80083aa <_fclose_r+0x42>
 800842e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008430:	f7fe fd96 	bl	8006f60 <__retarget_lock_release_recursive>
 8008434:	4630      	mov	r0, r6
 8008436:	bd70      	pop	{r4, r5, r6, pc}

08008438 <__fputwc>:
 8008438:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800843c:	b082      	sub	sp, #8
 800843e:	4681      	mov	r9, r0
 8008440:	4688      	mov	r8, r1
 8008442:	4614      	mov	r4, r2
 8008444:	f000 f8a0 	bl	8008588 <__locale_mb_cur_max>
 8008448:	2801      	cmp	r0, #1
 800844a:	d103      	bne.n	8008454 <__fputwc+0x1c>
 800844c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8008450:	2bfe      	cmp	r3, #254	; 0xfe
 8008452:	d933      	bls.n	80084bc <__fputwc+0x84>
 8008454:	4642      	mov	r2, r8
 8008456:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800845a:	a901      	add	r1, sp, #4
 800845c:	4648      	mov	r0, r9
 800845e:	f000 f93b 	bl	80086d8 <_wcrtomb_r>
 8008462:	1c42      	adds	r2, r0, #1
 8008464:	4606      	mov	r6, r0
 8008466:	d02f      	beq.n	80084c8 <__fputwc+0x90>
 8008468:	b320      	cbz	r0, 80084b4 <__fputwc+0x7c>
 800846a:	f89d c004 	ldrb.w	ip, [sp, #4]
 800846e:	2500      	movs	r5, #0
 8008470:	f10d 0a04 	add.w	sl, sp, #4
 8008474:	e009      	b.n	800848a <__fputwc+0x52>
 8008476:	6823      	ldr	r3, [r4, #0]
 8008478:	1c5a      	adds	r2, r3, #1
 800847a:	6022      	str	r2, [r4, #0]
 800847c:	f883 c000 	strb.w	ip, [r3]
 8008480:	3501      	adds	r5, #1
 8008482:	42b5      	cmp	r5, r6
 8008484:	d216      	bcs.n	80084b4 <__fputwc+0x7c>
 8008486:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800848a:	68a3      	ldr	r3, [r4, #8]
 800848c:	3b01      	subs	r3, #1
 800848e:	2b00      	cmp	r3, #0
 8008490:	60a3      	str	r3, [r4, #8]
 8008492:	daf0      	bge.n	8008476 <__fputwc+0x3e>
 8008494:	69a7      	ldr	r7, [r4, #24]
 8008496:	42bb      	cmp	r3, r7
 8008498:	4661      	mov	r1, ip
 800849a:	4622      	mov	r2, r4
 800849c:	4648      	mov	r0, r9
 800849e:	db02      	blt.n	80084a6 <__fputwc+0x6e>
 80084a0:	f1bc 0f0a 	cmp.w	ip, #10
 80084a4:	d1e7      	bne.n	8008476 <__fputwc+0x3e>
 80084a6:	f000 f8bf 	bl	8008628 <__swbuf_r>
 80084aa:	1c43      	adds	r3, r0, #1
 80084ac:	d1e8      	bne.n	8008480 <__fputwc+0x48>
 80084ae:	b002      	add	sp, #8
 80084b0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80084b4:	4640      	mov	r0, r8
 80084b6:	b002      	add	sp, #8
 80084b8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80084bc:	fa5f fc88 	uxtb.w	ip, r8
 80084c0:	4606      	mov	r6, r0
 80084c2:	f88d c004 	strb.w	ip, [sp, #4]
 80084c6:	e7d2      	b.n	800846e <__fputwc+0x36>
 80084c8:	89a3      	ldrh	r3, [r4, #12]
 80084ca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80084ce:	81a3      	strh	r3, [r4, #12]
 80084d0:	b002      	add	sp, #8
 80084d2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80084d6:	bf00      	nop

080084d8 <_fputwc_r>:
 80084d8:	b530      	push	{r4, r5, lr}
 80084da:	4605      	mov	r5, r0
 80084dc:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80084de:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80084e2:	07c0      	lsls	r0, r0, #31
 80084e4:	4614      	mov	r4, r2
 80084e6:	b083      	sub	sp, #12
 80084e8:	b29a      	uxth	r2, r3
 80084ea:	d401      	bmi.n	80084f0 <_fputwc_r+0x18>
 80084ec:	0590      	lsls	r0, r2, #22
 80084ee:	d51c      	bpl.n	800852a <_fputwc_r+0x52>
 80084f0:	0490      	lsls	r0, r2, #18
 80084f2:	d406      	bmi.n	8008502 <_fputwc_r+0x2a>
 80084f4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80084f6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80084fa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80084fe:	81a3      	strh	r3, [r4, #12]
 8008500:	6662      	str	r2, [r4, #100]	; 0x64
 8008502:	4628      	mov	r0, r5
 8008504:	4622      	mov	r2, r4
 8008506:	f7ff ff97 	bl	8008438 <__fputwc>
 800850a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800850c:	07da      	lsls	r2, r3, #31
 800850e:	4605      	mov	r5, r0
 8008510:	d402      	bmi.n	8008518 <_fputwc_r+0x40>
 8008512:	89a3      	ldrh	r3, [r4, #12]
 8008514:	059b      	lsls	r3, r3, #22
 8008516:	d502      	bpl.n	800851e <_fputwc_r+0x46>
 8008518:	4628      	mov	r0, r5
 800851a:	b003      	add	sp, #12
 800851c:	bd30      	pop	{r4, r5, pc}
 800851e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008520:	f7fe fd1e 	bl	8006f60 <__retarget_lock_release_recursive>
 8008524:	4628      	mov	r0, r5
 8008526:	b003      	add	sp, #12
 8008528:	bd30      	pop	{r4, r5, pc}
 800852a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800852c:	9101      	str	r1, [sp, #4]
 800852e:	f7fe fd15 	bl	8006f5c <__retarget_lock_acquire_recursive>
 8008532:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008536:	9901      	ldr	r1, [sp, #4]
 8008538:	b29a      	uxth	r2, r3
 800853a:	e7d9      	b.n	80084f0 <_fputwc_r+0x18>

0800853c <_fstat_r>:
 800853c:	b538      	push	{r3, r4, r5, lr}
 800853e:	460b      	mov	r3, r1
 8008540:	4c07      	ldr	r4, [pc, #28]	; (8008560 <_fstat_r+0x24>)
 8008542:	4605      	mov	r5, r0
 8008544:	4611      	mov	r1, r2
 8008546:	4618      	mov	r0, r3
 8008548:	2300      	movs	r3, #0
 800854a:	6023      	str	r3, [r4, #0]
 800854c:	f7fb f9da 	bl	8003904 <_fstat>
 8008550:	1c43      	adds	r3, r0, #1
 8008552:	d000      	beq.n	8008556 <_fstat_r+0x1a>
 8008554:	bd38      	pop	{r3, r4, r5, pc}
 8008556:	6823      	ldr	r3, [r4, #0]
 8008558:	2b00      	cmp	r3, #0
 800855a:	d0fb      	beq.n	8008554 <_fstat_r+0x18>
 800855c:	602b      	str	r3, [r5, #0]
 800855e:	bd38      	pop	{r3, r4, r5, pc}
 8008560:	20000c30 	.word	0x20000c30

08008564 <_isatty_r>:
 8008564:	b538      	push	{r3, r4, r5, lr}
 8008566:	4c07      	ldr	r4, [pc, #28]	; (8008584 <_isatty_r+0x20>)
 8008568:	2300      	movs	r3, #0
 800856a:	4605      	mov	r5, r0
 800856c:	4608      	mov	r0, r1
 800856e:	6023      	str	r3, [r4, #0]
 8008570:	f7fb f9cd 	bl	800390e <_isatty>
 8008574:	1c43      	adds	r3, r0, #1
 8008576:	d000      	beq.n	800857a <_isatty_r+0x16>
 8008578:	bd38      	pop	{r3, r4, r5, pc}
 800857a:	6823      	ldr	r3, [r4, #0]
 800857c:	2b00      	cmp	r3, #0
 800857e:	d0fb      	beq.n	8008578 <_isatty_r+0x14>
 8008580:	602b      	str	r3, [r5, #0]
 8008582:	bd38      	pop	{r3, r4, r5, pc}
 8008584:	20000c30 	.word	0x20000c30

08008588 <__locale_mb_cur_max>:
 8008588:	4b04      	ldr	r3, [pc, #16]	; (800859c <__locale_mb_cur_max+0x14>)
 800858a:	4a05      	ldr	r2, [pc, #20]	; (80085a0 <__locale_mb_cur_max+0x18>)
 800858c:	681b      	ldr	r3, [r3, #0]
 800858e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8008590:	2b00      	cmp	r3, #0
 8008592:	bf08      	it	eq
 8008594:	4613      	moveq	r3, r2
 8008596:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800859a:	4770      	bx	lr
 800859c:	20000018 	.word	0x20000018
 80085a0:	2000085c 	.word	0x2000085c

080085a4 <_lseek_r>:
 80085a4:	b570      	push	{r4, r5, r6, lr}
 80085a6:	460d      	mov	r5, r1
 80085a8:	4c08      	ldr	r4, [pc, #32]	; (80085cc <_lseek_r+0x28>)
 80085aa:	4611      	mov	r1, r2
 80085ac:	4606      	mov	r6, r0
 80085ae:	461a      	mov	r2, r3
 80085b0:	4628      	mov	r0, r5
 80085b2:	2300      	movs	r3, #0
 80085b4:	6023      	str	r3, [r4, #0]
 80085b6:	f7fb f9ac 	bl	8003912 <_lseek>
 80085ba:	1c43      	adds	r3, r0, #1
 80085bc:	d000      	beq.n	80085c0 <_lseek_r+0x1c>
 80085be:	bd70      	pop	{r4, r5, r6, pc}
 80085c0:	6823      	ldr	r3, [r4, #0]
 80085c2:	2b00      	cmp	r3, #0
 80085c4:	d0fb      	beq.n	80085be <_lseek_r+0x1a>
 80085c6:	6033      	str	r3, [r6, #0]
 80085c8:	bd70      	pop	{r4, r5, r6, pc}
 80085ca:	bf00      	nop
 80085cc:	20000c30 	.word	0x20000c30

080085d0 <__ascii_mbtowc>:
 80085d0:	b082      	sub	sp, #8
 80085d2:	b149      	cbz	r1, 80085e8 <__ascii_mbtowc+0x18>
 80085d4:	b15a      	cbz	r2, 80085ee <__ascii_mbtowc+0x1e>
 80085d6:	b16b      	cbz	r3, 80085f4 <__ascii_mbtowc+0x24>
 80085d8:	7813      	ldrb	r3, [r2, #0]
 80085da:	600b      	str	r3, [r1, #0]
 80085dc:	7812      	ldrb	r2, [r2, #0]
 80085de:	1c10      	adds	r0, r2, #0
 80085e0:	bf18      	it	ne
 80085e2:	2001      	movne	r0, #1
 80085e4:	b002      	add	sp, #8
 80085e6:	4770      	bx	lr
 80085e8:	a901      	add	r1, sp, #4
 80085ea:	2a00      	cmp	r2, #0
 80085ec:	d1f3      	bne.n	80085d6 <__ascii_mbtowc+0x6>
 80085ee:	4610      	mov	r0, r2
 80085f0:	b002      	add	sp, #8
 80085f2:	4770      	bx	lr
 80085f4:	f06f 0001 	mvn.w	r0, #1
 80085f8:	e7f4      	b.n	80085e4 <__ascii_mbtowc+0x14>
 80085fa:	bf00      	nop

080085fc <_read_r>:
 80085fc:	b570      	push	{r4, r5, r6, lr}
 80085fe:	460d      	mov	r5, r1
 8008600:	4c08      	ldr	r4, [pc, #32]	; (8008624 <_read_r+0x28>)
 8008602:	4611      	mov	r1, r2
 8008604:	4606      	mov	r6, r0
 8008606:	461a      	mov	r2, r3
 8008608:	4628      	mov	r0, r5
 800860a:	2300      	movs	r3, #0
 800860c:	6023      	str	r3, [r4, #0]
 800860e:	f7fb f934 	bl	800387a <_read>
 8008612:	1c43      	adds	r3, r0, #1
 8008614:	d000      	beq.n	8008618 <_read_r+0x1c>
 8008616:	bd70      	pop	{r4, r5, r6, pc}
 8008618:	6823      	ldr	r3, [r4, #0]
 800861a:	2b00      	cmp	r3, #0
 800861c:	d0fb      	beq.n	8008616 <_read_r+0x1a>
 800861e:	6033      	str	r3, [r6, #0]
 8008620:	bd70      	pop	{r4, r5, r6, pc}
 8008622:	bf00      	nop
 8008624:	20000c30 	.word	0x20000c30

08008628 <__swbuf_r>:
 8008628:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800862a:	460d      	mov	r5, r1
 800862c:	4614      	mov	r4, r2
 800862e:	4606      	mov	r6, r0
 8008630:	b110      	cbz	r0, 8008638 <__swbuf_r+0x10>
 8008632:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008634:	2b00      	cmp	r3, #0
 8008636:	d043      	beq.n	80086c0 <__swbuf_r+0x98>
 8008638:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800863c:	69a3      	ldr	r3, [r4, #24]
 800863e:	60a3      	str	r3, [r4, #8]
 8008640:	b291      	uxth	r1, r2
 8008642:	0708      	lsls	r0, r1, #28
 8008644:	d51b      	bpl.n	800867e <__swbuf_r+0x56>
 8008646:	6923      	ldr	r3, [r4, #16]
 8008648:	b1cb      	cbz	r3, 800867e <__swbuf_r+0x56>
 800864a:	b2ed      	uxtb	r5, r5
 800864c:	0489      	lsls	r1, r1, #18
 800864e:	462f      	mov	r7, r5
 8008650:	d522      	bpl.n	8008698 <__swbuf_r+0x70>
 8008652:	6822      	ldr	r2, [r4, #0]
 8008654:	6961      	ldr	r1, [r4, #20]
 8008656:	1ad3      	subs	r3, r2, r3
 8008658:	4299      	cmp	r1, r3
 800865a:	dd29      	ble.n	80086b0 <__swbuf_r+0x88>
 800865c:	3301      	adds	r3, #1
 800865e:	68a1      	ldr	r1, [r4, #8]
 8008660:	1c50      	adds	r0, r2, #1
 8008662:	3901      	subs	r1, #1
 8008664:	60a1      	str	r1, [r4, #8]
 8008666:	6020      	str	r0, [r4, #0]
 8008668:	7015      	strb	r5, [r2, #0]
 800866a:	6962      	ldr	r2, [r4, #20]
 800866c:	429a      	cmp	r2, r3
 800866e:	d02a      	beq.n	80086c6 <__swbuf_r+0x9e>
 8008670:	89a3      	ldrh	r3, [r4, #12]
 8008672:	07db      	lsls	r3, r3, #31
 8008674:	d501      	bpl.n	800867a <__swbuf_r+0x52>
 8008676:	2d0a      	cmp	r5, #10
 8008678:	d025      	beq.n	80086c6 <__swbuf_r+0x9e>
 800867a:	4638      	mov	r0, r7
 800867c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800867e:	4621      	mov	r1, r4
 8008680:	4630      	mov	r0, r6
 8008682:	f7fc fffd 	bl	8005680 <__swsetup_r>
 8008686:	bb20      	cbnz	r0, 80086d2 <__swbuf_r+0xaa>
 8008688:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800868c:	6923      	ldr	r3, [r4, #16]
 800868e:	b291      	uxth	r1, r2
 8008690:	b2ed      	uxtb	r5, r5
 8008692:	0489      	lsls	r1, r1, #18
 8008694:	462f      	mov	r7, r5
 8008696:	d4dc      	bmi.n	8008652 <__swbuf_r+0x2a>
 8008698:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800869a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800869e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80086a2:	81a2      	strh	r2, [r4, #12]
 80086a4:	6822      	ldr	r2, [r4, #0]
 80086a6:	6661      	str	r1, [r4, #100]	; 0x64
 80086a8:	6961      	ldr	r1, [r4, #20]
 80086aa:	1ad3      	subs	r3, r2, r3
 80086ac:	4299      	cmp	r1, r3
 80086ae:	dcd5      	bgt.n	800865c <__swbuf_r+0x34>
 80086b0:	4621      	mov	r1, r4
 80086b2:	4630      	mov	r0, r6
 80086b4:	f7fe f8a6 	bl	8006804 <_fflush_r>
 80086b8:	b958      	cbnz	r0, 80086d2 <__swbuf_r+0xaa>
 80086ba:	6822      	ldr	r2, [r4, #0]
 80086bc:	2301      	movs	r3, #1
 80086be:	e7ce      	b.n	800865e <__swbuf_r+0x36>
 80086c0:	f7fe f8fc 	bl	80068bc <__sinit>
 80086c4:	e7b8      	b.n	8008638 <__swbuf_r+0x10>
 80086c6:	4621      	mov	r1, r4
 80086c8:	4630      	mov	r0, r6
 80086ca:	f7fe f89b 	bl	8006804 <_fflush_r>
 80086ce:	2800      	cmp	r0, #0
 80086d0:	d0d3      	beq.n	800867a <__swbuf_r+0x52>
 80086d2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80086d6:	e7d0      	b.n	800867a <__swbuf_r+0x52>

080086d8 <_wcrtomb_r>:
 80086d8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80086da:	4c11      	ldr	r4, [pc, #68]	; (8008720 <_wcrtomb_r+0x48>)
 80086dc:	6824      	ldr	r4, [r4, #0]
 80086de:	b085      	sub	sp, #20
 80086e0:	4606      	mov	r6, r0
 80086e2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80086e4:	461f      	mov	r7, r3
 80086e6:	b151      	cbz	r1, 80086fe <_wcrtomb_r+0x26>
 80086e8:	4d0e      	ldr	r5, [pc, #56]	; (8008724 <_wcrtomb_r+0x4c>)
 80086ea:	2c00      	cmp	r4, #0
 80086ec:	bf08      	it	eq
 80086ee:	462c      	moveq	r4, r5
 80086f0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80086f4:	47a0      	blx	r4
 80086f6:	1c43      	adds	r3, r0, #1
 80086f8:	d00c      	beq.n	8008714 <_wcrtomb_r+0x3c>
 80086fa:	b005      	add	sp, #20
 80086fc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80086fe:	4a09      	ldr	r2, [pc, #36]	; (8008724 <_wcrtomb_r+0x4c>)
 8008700:	2c00      	cmp	r4, #0
 8008702:	bf08      	it	eq
 8008704:	4614      	moveq	r4, r2
 8008706:	460a      	mov	r2, r1
 8008708:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800870c:	a901      	add	r1, sp, #4
 800870e:	47a0      	blx	r4
 8008710:	1c43      	adds	r3, r0, #1
 8008712:	d1f2      	bne.n	80086fa <_wcrtomb_r+0x22>
 8008714:	2200      	movs	r2, #0
 8008716:	238a      	movs	r3, #138	; 0x8a
 8008718:	603a      	str	r2, [r7, #0]
 800871a:	6033      	str	r3, [r6, #0]
 800871c:	b005      	add	sp, #20
 800871e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008720:	20000018 	.word	0x20000018
 8008724:	2000085c 	.word	0x2000085c

08008728 <__ascii_wctomb>:
 8008728:	b121      	cbz	r1, 8008734 <__ascii_wctomb+0xc>
 800872a:	2aff      	cmp	r2, #255	; 0xff
 800872c:	d804      	bhi.n	8008738 <__ascii_wctomb+0x10>
 800872e:	700a      	strb	r2, [r1, #0]
 8008730:	2001      	movs	r0, #1
 8008732:	4770      	bx	lr
 8008734:	4608      	mov	r0, r1
 8008736:	4770      	bx	lr
 8008738:	238a      	movs	r3, #138	; 0x8a
 800873a:	6003      	str	r3, [r0, #0]
 800873c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008740:	4770      	bx	lr
 8008742:	bf00      	nop

08008744 <_init>:
 8008744:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008746:	bf00      	nop
 8008748:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800874a:	bc08      	pop	{r3}
 800874c:	469e      	mov	lr, r3
 800874e:	4770      	bx	lr

08008750 <_fini>:
 8008750:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008752:	bf00      	nop
 8008754:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8008756:	bc08      	pop	{r3}
 8008758:	469e      	mov	lr, r3
 800875a:	4770      	bx	lr
 800875c:	0000      	movs	r0, r0
	...
