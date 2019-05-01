
huffbench.elf:     file format elf32-littlearm


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
 80001e0:	08007468 	.word	0x08007468

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
 80001fc:	08007468 	.word	0x08007468

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
 80011c8:	f640 20a0 	movw	r0, #2720	; 0xaa0
 80011cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d0:	6801      	ldr	r1, [r0, #0]
 80011d2:	3101      	adds	r1, #1
 80011d4:	6001      	str	r1, [r0, #0]
 80011d6:	4770      	bx	lr

080011d8 <HAL_GetTick>:
 80011d8:	f640 20a0 	movw	r0, #2720	; 0xaa0
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
 80014a8:	f247 4298 	movw	r2, #29848	; 0x7498
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
 800151a:	f240 0018 	movw	r0, #24
 800151e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001522:	f247 4290 	movw	r2, #29840	; 0x7490
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
 8001544:	f240 0018 	movw	r0, #24
 8001548:	f241 0108 	movw	r1, #4104	; 0x1008
 800154c:	f247 4290 	movw	r2, #29840	; 0x7490
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
 8001902:	f640 21a4 	movw	r1, #2724	; 0xaa4
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
 800194c:	f640 20a4 	movw	r0, #2724	; 0xaa4
 8001950:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001954:	f7ff fecd 	bl	80016f2 <HAL_TIM_Base_Start_IT>
 8001958:	b006      	add	sp, #24
 800195a:	bdb0      	pop	{r4, r5, r7, pc}

0800195c <HAL_TIM_PeriodElapsedCallback>:
 800195c:	f7ff bc34 	b.w	80011c8 <HAL_IncTick>

08001960 <TIM6_DAC_IRQHandler>:
 8001960:	f640 20a4 	movw	r0, #2724	; 0xaa4
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
 8001a94:	f247 43c8 	movw	r3, #29896	; 0x74c8
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
 8001abc:	f247 43d8 	movw	r3, #29912	; 0x74d8
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

08001f76 <compdecomp>:
 8001f76:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f78:	af03      	add	r7, sp, #12
 8001f7a:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f7e:	f5ad 5df0 	sub.w	sp, sp, #7680	; 0x1e00
 8001f82:	b085      	sub	sp, #20
 8001f84:	468b      	mov	fp, r1
 8001f86:	4605      	mov	r5, r0
 8001f88:	f10b 0401 	add.w	r4, fp, #1
 8001f8c:	4620      	mov	r0, r4
 8001f8e:	f000 fbc5 	bl	800271c <malloc>
 8001f92:	4601      	mov	r1, r0
 8001f94:	9102      	str	r1, [sp, #8]
 8001f96:	4621      	mov	r1, r4
 8001f98:	f000 fb92 	bl	80026c0 <__aeabi_memclr>
 8001f9c:	ac04      	add	r4, sp, #16
 8001f9e:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001fa2:	f504 58b0 	add.w	r8, r4, #5632	; 0x1600
 8001fa6:	4640      	mov	r0, r8
 8001fa8:	f000 fb8a 	bl	80026c0 <__aeabi_memclr>
 8001fac:	ac04      	add	r4, sp, #16
 8001fae:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8001fb2:	f504 5090 	add.w	r0, r4, #4608	; 0x1200
 8001fb6:	f000 fb83 	bl	80026c0 <__aeabi_memclr>
 8001fba:	f50d 6921 	add.w	r9, sp, #2576	; 0xa10
 8001fbe:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001fc2:	4648      	mov	r0, r9
 8001fc4:	f000 fb7c 	bl	80026c0 <__aeabi_memclr>
 8001fc8:	f50d 60c2 	add.w	r0, sp, #1552	; 0x610
 8001fcc:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8001fd0:	f000 fb76 	bl	80026c0 <__aeabi_memclr>
 8001fd4:	f50d 60a2 	add.w	r0, sp, #1296	; 0x510
 8001fd8:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001fdc:	f000 fb70 	bl	80026c0 <__aeabi_memclr>
 8001fe0:	f1bb 0f00 	cmp.w	fp, #0
 8001fe4:	d00b      	beq.n	8001ffe <compdecomp+0x88>
 8001fe6:	4658      	mov	r0, fp
 8001fe8:	4629      	mov	r1, r5
 8001fea:	f811 2b01 	ldrb.w	r2, [r1], #1
 8001fee:	3801      	subs	r0, #1
 8001ff0:	f858 3022 	ldr.w	r3, [r8, r2, lsl #2]
 8001ff4:	f103 0301 	add.w	r3, r3, #1
 8001ff8:	f848 3022 	str.w	r3, [r8, r2, lsl #2]
 8001ffc:	d1f5      	bne.n	8001fea <compdecomp+0x74>
 8001ffe:	a904      	add	r1, sp, #16
 8002000:	2000      	movs	r0, #0
 8002002:	f04f 0e00 	mov.w	lr, #0
 8002006:	f501 5290 	add.w	r2, r1, #4608	; 0x1200
 800200a:	f858 1020 	ldr.w	r1, [r8, r0, lsl #2]
 800200e:	2900      	cmp	r1, #0
 8002010:	bf1c      	itt	ne
 8002012:	f842 002e 	strne.w	r0, [r2, lr, lsl #2]
 8002016:	f10e 0e01 	addne.w	lr, lr, #1
 800201a:	3001      	adds	r0, #1
 800201c:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8002020:	d1f3      	bne.n	800200a <compdecomp+0x94>
 8002022:	f1be 0f00 	cmp.w	lr, #0
 8002026:	9501      	str	r5, [sp, #4]
 8002028:	f000 80bf 	beq.w	80021aa <compdecomp+0x234>
 800202c:	eb0e 70de 	add.w	r0, lr, lr, lsr #31
 8002030:	1f13      	subs	r3, r2, #4
 8002032:	46f2      	mov	sl, lr
 8002034:	ea4f 0960 	mov.w	r9, r0, asr #1
 8002038:	f853 c02a 	ldr.w	ip, [r3, sl, lsl #2]
 800203c:	45d1      	cmp	r9, sl
 800203e:	4655      	mov	r5, sl
 8002040:	db1f      	blt.n	8002082 <compdecomp+0x10c>
 8002042:	f858 202c 	ldr.w	r2, [r8, ip, lsl #2]
 8002046:	4654      	mov	r4, sl
 8002048:	0065      	lsls	r5, r4, #1
 800204a:	4575      	cmp	r5, lr
 800204c:	da0c      	bge.n	8002068 <compdecomp+0xf2>
 800204e:	f045 0001 	orr.w	r0, r5, #1
 8002052:	f853 1025 	ldr.w	r1, [r3, r5, lsl #2]
 8002056:	f853 6020 	ldr.w	r6, [r3, r0, lsl #2]
 800205a:	f858 1021 	ldr.w	r1, [r8, r1, lsl #2]
 800205e:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 8002062:	42b1      	cmp	r1, r6
 8002064:	bf88      	it	hi
 8002066:	4605      	movhi	r5, r0
 8002068:	f853 1025 	ldr.w	r1, [r3, r5, lsl #2]
 800206c:	f858 0021 	ldr.w	r0, [r8, r1, lsl #2]
 8002070:	4282      	cmp	r2, r0
 8002072:	d305      	bcc.n	8002080 <compdecomp+0x10a>
 8002074:	f843 1024 	str.w	r1, [r3, r4, lsl #2]
 8002078:	454d      	cmp	r5, r9
 800207a:	462c      	mov	r4, r5
 800207c:	dde4      	ble.n	8002048 <compdecomp+0xd2>
 800207e:	e000      	b.n	8002082 <compdecomp+0x10c>
 8002080:	4625      	mov	r5, r4
 8002082:	f1ba 0a01 	subs.w	sl, sl, #1
 8002086:	f843 c025 	str.w	ip, [r3, r5, lsl #2]
 800208a:	d1d5      	bne.n	8002038 <compdecomp+0xc2>
 800208c:	f1be 0f02 	cmp.w	lr, #2
 8002090:	f50d 6921 	add.w	r9, sp, #2576	; 0xa10
 8002094:	f0c0 808b 	bcc.w	80021ae <compdecomp+0x238>
 8002098:	f8cd b000 	str.w	fp, [sp]
 800209c:	4671      	mov	r1, lr
 800209e:	ac04      	add	r4, sp, #16
 80020a0:	f1a1 0e01 	sub.w	lr, r1, #1
 80020a4:	f504 5090 	add.w	r0, r4, #4608	; 0x1200
 80020a8:	ac04      	add	r4, sp, #16
 80020aa:	9103      	str	r1, [sp, #12]
 80020ac:	f850 c02e 	ldr.w	ip, [r0, lr, lsl #2]
 80020b0:	f504 5090 	add.w	r0, r4, #4608	; 0x1200
 80020b4:	f1be 0f02 	cmp.w	lr, #2
 80020b8:	6802      	ldr	r2, [r0, #0]
 80020ba:	f8c0 c000 	str.w	ip, [r0]
 80020be:	eb0e 70de 	add.w	r0, lr, lr, lsr #31
 80020c2:	ea4f 0b60 	mov.w	fp, r0, asr #1
 80020c6:	4610      	mov	r0, r2
 80020c8:	da01      	bge.n	80020ce <compdecomp+0x158>
 80020ca:	2201      	movs	r2, #1
 80020cc:	e021      	b.n	8002112 <compdecomp+0x19c>
 80020ce:	f858 502c 	ldr.w	r5, [r8, ip, lsl #2]
 80020d2:	f04f 0901 	mov.w	r9, #1
 80020d6:	ea4f 0249 	mov.w	r2, r9, lsl #1
 80020da:	4572      	cmp	r2, lr
 80020dc:	da0c      	bge.n	80020f8 <compdecomp+0x182>
 80020de:	f042 0401 	orr.w	r4, r2, #1
 80020e2:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80020e6:	f853 a024 	ldr.w	sl, [r3, r4, lsl #2]
 80020ea:	f858 1021 	ldr.w	r1, [r8, r1, lsl #2]
 80020ee:	f858 602a 	ldr.w	r6, [r8, sl, lsl #2]
 80020f2:	42b1      	cmp	r1, r6
 80020f4:	bf88      	it	hi
 80020f6:	4622      	movhi	r2, r4
 80020f8:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80020fc:	f858 4021 	ldr.w	r4, [r8, r1, lsl #2]
 8002100:	42a5      	cmp	r5, r4
 8002102:	d305      	bcc.n	8002110 <compdecomp+0x19a>
 8002104:	f843 1029 	str.w	r1, [r3, r9, lsl #2]
 8002108:	455a      	cmp	r2, fp
 800210a:	4691      	mov	r9, r2
 800210c:	dde3      	ble.n	80020d6 <compdecomp+0x160>
 800210e:	e000      	b.n	8002112 <compdecomp+0x19c>
 8002110:	464a      	mov	r2, r9
 8002112:	f10d 0a10 	add.w	sl, sp, #16
 8002116:	4606      	mov	r6, r0
 8002118:	f843 c022 	str.w	ip, [r3, r2, lsl #2]
 800211c:	9d03      	ldr	r5, [sp, #12]
 800211e:	f50d 6921 	add.w	r9, sp, #2576	; 0xa10
 8002122:	f1be 0f02 	cmp.w	lr, #2
 8002126:	f50a 5090 	add.w	r0, sl, #4608	; 0x1200
 800212a:	f858 1026 	ldr.w	r1, [r8, r6, lsl #2]
 800212e:	6804      	ldr	r4, [r0, #0]
 8002130:	f105 0cff 	add.w	ip, r5, #255	; 0xff
 8002134:	f849 c026 	str.w	ip, [r9, r6, lsl #2]
 8002138:	f8c0 c000 	str.w	ip, [r0]
 800213c:	f858 2024 	ldr.w	r2, [r8, r4, lsl #2]
 8002140:	440a      	add	r2, r1
 8002142:	f06f 01fe 	mvn.w	r1, #254	; 0xfe
 8002146:	eba1 0105 	sub.w	r1, r1, r5
 800214a:	f848 202c 	str.w	r2, [r8, ip, lsl #2]
 800214e:	f849 1024 	str.w	r1, [r9, r4, lsl #2]
 8002152:	da01      	bge.n	8002158 <compdecomp+0x1e2>
 8002154:	2601      	movs	r6, #1
 8002156:	e01d      	b.n	8002194 <compdecomp+0x21e>
 8002158:	2501      	movs	r5, #1
 800215a:	006e      	lsls	r6, r5, #1
 800215c:	4576      	cmp	r6, lr
 800215e:	da0c      	bge.n	800217a <compdecomp+0x204>
 8002160:	f046 0401 	orr.w	r4, r6, #1
 8002164:	f853 1026 	ldr.w	r1, [r3, r6, lsl #2]
 8002168:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800216c:	f858 1021 	ldr.w	r1, [r8, r1, lsl #2]
 8002170:	f858 0020 	ldr.w	r0, [r8, r0, lsl #2]
 8002174:	4281      	cmp	r1, r0
 8002176:	bf88      	it	hi
 8002178:	4626      	movhi	r6, r4
 800217a:	f853 1026 	ldr.w	r1, [r3, r6, lsl #2]
 800217e:	f858 0021 	ldr.w	r0, [r8, r1, lsl #2]
 8002182:	4282      	cmp	r2, r0
 8002184:	d305      	bcc.n	8002192 <compdecomp+0x21c>
 8002186:	f843 1025 	str.w	r1, [r3, r5, lsl #2]
 800218a:	455e      	cmp	r6, fp
 800218c:	4635      	mov	r5, r6
 800218e:	dde4      	ble.n	800215a <compdecomp+0x1e4>
 8002190:	e000      	b.n	8002194 <compdecomp+0x21e>
 8002192:	462e      	mov	r6, r5
 8002194:	f1be 0f01 	cmp.w	lr, #1
 8002198:	f843 c026 	str.w	ip, [r3, r6, lsl #2]
 800219c:	f63f af7e 	bhi.w	800209c <compdecomp+0x126>
 80021a0:	f8dd b000 	ldr.w	fp, [sp]
 80021a4:	f04f 0e01 	mov.w	lr, #1
 80021a8:	e001      	b.n	80021ae <compdecomp+0x238>
 80021aa:	f04f 0e00 	mov.w	lr, #0
 80021ae:	eb09 008e 	add.w	r0, r9, lr, lsl #2
 80021b2:	2100      	movs	r1, #0
 80021b4:	f04f 0c00 	mov.w	ip, #0
 80021b8:	f04f 0e00 	mov.w	lr, #0
 80021bc:	2200      	movs	r2, #0
 80021be:	f8c0 1400 	str.w	r1, [r0, #1024]	; 0x400
 80021c2:	f858 0022 	ldr.w	r0, [r8, r2, lsl #2]
 80021c6:	b190      	cbz	r0, 80021ee <compdecomp+0x278>
 80021c8:	f859 0022 	ldr.w	r0, [r9, r2, lsl #2]
 80021cc:	b1c0      	cbz	r0, 8002200 <compdecomp+0x28a>
 80021ce:	2101      	movs	r1, #1
 80021d0:	2300      	movs	r3, #0
 80021d2:	2600      	movs	r6, #0
 80021d4:	2800      	cmp	r0, #0
 80021d6:	f106 0601 	add.w	r6, r6, #1
 80021da:	bfb8      	it	lt
 80021dc:	440b      	addlt	r3, r1
 80021de:	bf48      	it	mi
 80021e0:	4240      	negmi	r0, r0
 80021e2:	0049      	lsls	r1, r1, #1
 80021e4:	f859 0020 	ldr.w	r0, [r9, r0, lsl #2]
 80021e8:	2800      	cmp	r0, #0
 80021ea:	d1f3      	bne.n	80021d4 <compdecomp+0x25e>
 80021ec:	e00a      	b.n	8002204 <compdecomp+0x28e>
 80021ee:	f50d 60c2 	add.w	r0, sp, #1552	; 0x610
 80021f2:	2100      	movs	r1, #0
 80021f4:	f840 1022 	str.w	r1, [r0, r2, lsl #2]
 80021f8:	f50d 60a2 	add.w	r0, sp, #1296	; 0x510
 80021fc:	5481      	strb	r1, [r0, r2]
 80021fe:	e00e      	b.n	800221e <compdecomp+0x2a8>
 8002200:	2600      	movs	r6, #0
 8002202:	2300      	movs	r3, #0
 8002204:	f50d 60c2 	add.w	r0, sp, #1552	; 0x610
 8002208:	4566      	cmp	r6, ip
 800220a:	f840 3022 	str.w	r3, [r0, r2, lsl #2]
 800220e:	f50d 60a2 	add.w	r0, sp, #1296	; 0x510
 8002212:	5486      	strb	r6, [r0, r2]
 8002214:	bf88      	it	hi
 8002216:	46b4      	movhi	ip, r6
 8002218:	4573      	cmp	r3, lr
 800221a:	bf88      	it	hi
 800221c:	469e      	movhi	lr, r3
 800221e:	3201      	adds	r2, #1
 8002220:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8002224:	d1cd      	bne.n	80021c2 <compdecomp+0x24c>
 8002226:	f1be 0f00 	cmp.w	lr, #0
 800222a:	f000 80e3 	beq.w	80023f4 <compdecomp+0x47e>
 800222e:	f1bc 0f20 	cmp.w	ip, #32
 8002232:	f200 80df 	bhi.w	80023f4 <compdecomp+0x47e>
 8002236:	f1bb 0f00 	cmp.w	fp, #0
 800223a:	d041      	beq.n	80022c0 <compdecomp+0x34a>
 800223c:	f8dd 8004 	ldr.w	r8, [sp, #4]
 8002240:	2400      	movs	r4, #0
 8002242:	f04f 3aff 	mov.w	sl, #4294967295	; 0xffffffff
 8002246:	f04f 0c01 	mov.w	ip, #1
 800224a:	2000      	movs	r0, #0
 800224c:	f04f 0e00 	mov.w	lr, #0
 8002250:	f898 9000 	ldrb.w	r9, [r8]
 8002254:	f50d 61a2 	add.w	r1, sp, #1296	; 0x510
 8002258:	f811 1009 	ldrb.w	r1, [r1, r9]
 800225c:	b349      	cbz	r1, 80022b2 <compdecomp+0x33c>
 800225e:	3901      	subs	r1, #1
 8002260:	2600      	movs	r6, #0
 8002262:	fa0c f101 	lsl.w	r1, ip, r1
 8002266:	f1ba 0f07 	cmp.w	sl, #7
 800226a:	d10b      	bne.n	8002284 <compdecomp+0x30e>
 800226c:	9a02      	ldr	r2, [sp, #8]
 800226e:	5414      	strb	r4, [r2, r0]
 8002270:	3001      	adds	r0, #1
 8002272:	4558      	cmp	r0, fp
 8002274:	f000 80be 	beq.w	80023f4 <compdecomp+0x47e>
 8002278:	f898 9000 	ldrb.w	r9, [r8]
 800227c:	2400      	movs	r4, #0
 800227e:	f04f 0a00 	mov.w	sl, #0
 8002282:	e003      	b.n	800228c <compdecomp+0x316>
 8002284:	b2e4      	uxtb	r4, r4
 8002286:	f10a 0a01 	add.w	sl, sl, #1
 800228a:	0064      	lsls	r4, r4, #1
 800228c:	fa5f f589 	uxtb.w	r5, r9
 8002290:	f50d 62a2 	add.w	r2, sp, #1296	; 0x510
 8002294:	3601      	adds	r6, #1
 8002296:	5d53      	ldrb	r3, [r2, r5]
 8002298:	f50d 62c2 	add.w	r2, sp, #1552	; 0x610
 800229c:	f852 5025 	ldr.w	r5, [r2, r5, lsl #2]
 80022a0:	400d      	ands	r5, r1
 80022a2:	ea4f 0151 	mov.w	r1, r1, lsr #1
 80022a6:	bf18      	it	ne
 80022a8:	2501      	movne	r5, #1
 80022aa:	429e      	cmp	r6, r3
 80022ac:	ea44 0405 	orr.w	r4, r4, r5
 80022b0:	d3d9      	bcc.n	8002266 <compdecomp+0x2f0>
 80022b2:	f10e 0e01 	add.w	lr, lr, #1
 80022b6:	f108 0801 	add.w	r8, r8, #1
 80022ba:	45de      	cmp	lr, fp
 80022bc:	d3c8      	bcc.n	8002250 <compdecomp+0x2da>
 80022be:	e003      	b.n	80022c8 <compdecomp+0x352>
 80022c0:	f04f 3aff 	mov.w	sl, #4294967295	; 0xffffffff
 80022c4:	2000      	movs	r0, #0
 80022c6:	2400      	movs	r4, #0
 80022c8:	b2e2      	uxtb	r2, r4
 80022ca:	f1ca 0107 	rsb	r1, sl, #7
 80022ce:	ac44      	add	r4, sp, #272	; 0x110
 80022d0:	fa02 f101 	lsl.w	r1, r2, r1
 80022d4:	9a02      	ldr	r2, [sp, #8]
 80022d6:	5411      	strb	r1, [r2, r0]
 80022d8:	4620      	mov	r0, r4
 80022da:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80022de:	f000 f9ef 	bl	80026c0 <__aeabi_memclr>
 80022e2:	f8dd 9004 	ldr.w	r9, [sp, #4]
 80022e6:	f10d 0810 	add.w	r8, sp, #16
 80022ea:	2100      	movs	r1, #0
 80022ec:	f04f 0e01 	mov.w	lr, #1
 80022f0:	46c4      	mov	ip, r8
 80022f2:	f50d 60c2 	add.w	r0, sp, #1552	; 0x610
 80022f6:	f80c 1b01 	strb.w	r1, [ip], #1
 80022fa:	f850 6021 	ldr.w	r6, [r0, r1, lsl #2]
 80022fe:	f50d 60a2 	add.w	r0, sp, #1296	; 0x510
 8002302:	5c45      	ldrb	r5, [r0, r1]
 8002304:	ea55 0006 	orrs.w	r0, r5, r6
 8002308:	d014      	beq.n	8002334 <compdecomp+0x3be>
 800230a:	b185      	cbz	r5, 800232e <compdecomp+0x3b8>
 800230c:	1e68      	subs	r0, r5, #1
 800230e:	2200      	movs	r2, #0
 8002310:	fa0e f300 	lsl.w	r3, lr, r0
 8002314:	2000      	movs	r0, #0
 8002316:	421e      	tst	r6, r3
 8002318:	ea4e 0040 	orr.w	r0, lr, r0, lsl #1
 800231c:	f102 0201 	add.w	r2, r2, #1
 8002320:	ea4f 0353 	mov.w	r3, r3, lsr #1
 8002324:	bf18      	it	ne
 8002326:	3001      	addne	r0, #1
 8002328:	42aa      	cmp	r2, r5
 800232a:	d3f4      	bcc.n	8002316 <compdecomp+0x3a0>
 800232c:	e000      	b.n	8002330 <compdecomp+0x3ba>
 800232e:	2000      	movs	r0, #0
 8002330:	f844 0021 	str.w	r0, [r4, r1, lsl #2]
 8002334:	3101      	adds	r1, #1
 8002336:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 800233a:	d1da      	bne.n	80022f2 <compdecomp+0x37c>
 800233c:	2101      	movs	r1, #1
 800233e:	2200      	movs	r2, #0
 8002340:	f818 c001 	ldrb.w	ip, [r8, r1]
 8002344:	f854 6021 	ldr.w	r6, [r4, r1, lsl #2]
 8002348:	4610      	mov	r0, r2
 800234a:	f854 5020 	ldr.w	r5, [r4, r0, lsl #2]
 800234e:	42b5      	cmp	r5, r6
 8002350:	d90c      	bls.n	800236c <compdecomp+0x3f6>
 8002352:	eb04 0380 	add.w	r3, r4, r0, lsl #2
 8002356:	605d      	str	r5, [r3, #4]
 8002358:	f818 3000 	ldrb.w	r3, [r8, r0]
 800235c:	eb08 0500 	add.w	r5, r8, r0
 8002360:	3801      	subs	r0, #1
 8002362:	706b      	strb	r3, [r5, #1]
 8002364:	1c43      	adds	r3, r0, #1
 8002366:	d1f0      	bne.n	800234a <compdecomp+0x3d4>
 8002368:	2000      	movs	r0, #0
 800236a:	e000      	b.n	800236e <compdecomp+0x3f8>
 800236c:	3001      	adds	r0, #1
 800236e:	3101      	adds	r1, #1
 8002370:	3201      	adds	r2, #1
 8002372:	f844 6020 	str.w	r6, [r4, r0, lsl #2]
 8002376:	f808 c000 	strb.w	ip, [r8, r0]
 800237a:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 800237e:	d1df      	bne.n	8002340 <compdecomp+0x3ca>
 8002380:	2000      	movs	r0, #0
 8002382:	f854 1020 	ldr.w	r1, [r4, r0, lsl #2]
 8002386:	3001      	adds	r0, #1
 8002388:	2900      	cmp	r1, #0
 800238a:	d0fa      	beq.n	8002382 <compdecomp+0x40c>
 800238c:	f1bb 0f00 	cmp.w	fp, #0
 8002390:	d02d      	beq.n	80023ee <compdecomp+0x478>
 8002392:	9e02      	ldr	r6, [sp, #8]
 8002394:	f1a0 0e01 	sub.w	lr, r0, #1
 8002398:	2200      	movs	r2, #0
 800239a:	f04f 0c01 	mov.w	ip, #1
 800239e:	2500      	movs	r5, #0
 80023a0:	2380      	movs	r3, #128	; 0x80
 80023a2:	4671      	mov	r1, lr
 80023a4:	e004      	b.n	80023b0 <compdecomp+0x43a>
 80023a6:	2380      	movs	r3, #128	; 0x80
 80023a8:	e002      	b.n	80023b0 <compdecomp+0x43a>
 80023aa:	085b      	lsrs	r3, r3, #1
 80023ac:	455a      	cmp	r2, fp
 80023ae:	d21e      	bcs.n	80023ee <compdecomp+0x478>
 80023b0:	7830      	ldrb	r0, [r6, #0]
 80023b2:	ea4c 0545 	orr.w	r5, ip, r5, lsl #1
 80023b6:	4218      	tst	r0, r3
 80023b8:	bf18      	it	ne
 80023ba:	3501      	addne	r5, #1
 80023bc:	f854 0021 	ldr.w	r0, [r4, r1, lsl #2]
 80023c0:	3101      	adds	r1, #1
 80023c2:	42a8      	cmp	r0, r5
 80023c4:	d3fa      	bcc.n	80023bc <compdecomp+0x446>
 80023c6:	4285      	cmp	r5, r0
 80023c8:	d10b      	bne.n	80023e2 <compdecomp+0x46c>
 80023ca:	eb08 0001 	add.w	r0, r8, r1
 80023ce:	3201      	adds	r2, #1
 80023d0:	2500      	movs	r5, #0
 80023d2:	4671      	mov	r1, lr
 80023d4:	f810 0c01 	ldrb.w	r0, [r0, #-1]
 80023d8:	f809 0b01 	strb.w	r0, [r9], #1
 80023dc:	2b01      	cmp	r3, #1
 80023de:	d8e4      	bhi.n	80023aa <compdecomp+0x434>
 80023e0:	e002      	b.n	80023e8 <compdecomp+0x472>
 80023e2:	3901      	subs	r1, #1
 80023e4:	2b01      	cmp	r3, #1
 80023e6:	d8e0      	bhi.n	80023aa <compdecomp+0x434>
 80023e8:	3601      	adds	r6, #1
 80023ea:	455a      	cmp	r2, fp
 80023ec:	d3db      	bcc.n	80023a6 <compdecomp+0x430>
 80023ee:	9802      	ldr	r0, [sp, #8]
 80023f0:	f000 f99c 	bl	800272c <free>
 80023f4:	f50d 5df0 	add.w	sp, sp, #7680	; 0x1e00
 80023f8:	b005      	add	sp, #20
 80023fa:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80023fe:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002400 <verify_benchmark>:
 8002400:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002404:	4770      	bx	lr

08002406 <initialise_benchmark>:
 8002406:	4770      	bx	lr

08002408 <benchmark>:
 8002408:	b5f0      	push	{r4, r5, r6, r7, lr}
 800240a:	af03      	add	r7, sp, #12
 800240c:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002410:	b081      	sub	sp, #4
 8002412:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8002416:	f000 f981 	bl	800271c <malloc>
 800241a:	f240 0c14 	movw	ip, #20
 800241e:	f64d 1224 	movw	r2, #55588	; 0xd924
 8002422:	f640 3e5f 	movw	lr, #2911	; 0xb5f
 8002426:	f640 48e3 	movw	r8, #3299	; 0xce3
 800242a:	f24f 49ec 	movw	r9, #62700	; 0xf4ec
 800242e:	4604      	mov	r4, r0
 8002430:	f247 40e8 	movw	r0, #29928	; 0x74e8
 8002434:	2100      	movs	r1, #0
 8002436:	f244 1aa7 	movw	sl, #16807	; 0x41a7
 800243a:	f06f 4b00 	mvn.w	fp, #2147483648	; 0x80000000
 800243e:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002442:	f2c0 725b 	movt	r2, #1883	; 0x75b
 8002446:	f2c8 3e4e 	movt	lr, #33614	; 0x834e
 800244a:	f6cf 78fe 	movt	r8, #65534	; 0xfffe
 800244e:	f6cf 79ff 	movt	r9, #65535	; 0xffff
 8002452:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002456:	f8dc 3000 	ldr.w	r3, [ip]
 800245a:	4053      	eors	r3, r2
 800245c:	fb5e 3503 	smmla	r5, lr, r3, r3
 8002460:	142e      	asrs	r6, r5, #16
 8002462:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 8002466:	fb05 3308 	mla	r3, r5, r8, r3
 800246a:	fb05 f509 	mul.w	r5, r5, r9
 800246e:	fb03 530a 	mla	r3, r3, sl, r5
 8002472:	2b00      	cmp	r3, #0
 8002474:	bfb8      	it	lt
 8002476:	445b      	addlt	r3, fp
 8002478:	17dd      	asrs	r5, r3, #31
 800247a:	eb03 65d5 	add.w	r5, r3, r5, lsr #27
 800247e:	f025 051f 	bic.w	r5, r5, #31
 8002482:	1b5d      	subs	r5, r3, r5
 8002484:	4053      	eors	r3, r2
 8002486:	5d45      	ldrb	r5, [r0, r5]
 8002488:	5465      	strb	r5, [r4, r1]
 800248a:	3101      	adds	r1, #1
 800248c:	f5b1 7ffa 	cmp.w	r1, #500	; 0x1f4
 8002490:	d1e3      	bne.n	800245a <benchmark+0x52>
 8002492:	4620      	mov	r0, r4
 8002494:	f44f 71fa 	mov.w	r1, #500	; 0x1f4
 8002498:	f8cc 3000 	str.w	r3, [ip]
 800249c:	f7ff fd6b 	bl	8001f76 <compdecomp>
 80024a0:	4620      	mov	r0, r4
 80024a2:	f000 f943 	bl	800272c <free>
 80024a6:	2000      	movs	r0, #0
 80024a8:	b001      	add	sp, #4
 80024aa:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80024ae:	bdf0      	pop	{r4, r5, r6, r7, pc}

080024b0 <__io_putchar>:
 80024b0:	b580      	push	{r7, lr}
 80024b2:	466f      	mov	r7, sp
 80024b4:	b082      	sub	sp, #8
 80024b6:	9001      	str	r0, [sp, #4]
 80024b8:	f640 10e4 	movw	r0, #2532	; 0x9e4
 80024bc:	a901      	add	r1, sp, #4
 80024be:	2201      	movs	r2, #1
 80024c0:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80024c4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80024c8:	f7ff fc67 	bl	8001d9a <HAL_UART_Transmit>
 80024cc:	9801      	ldr	r0, [sp, #4]
 80024ce:	b002      	add	sp, #8
 80024d0:	bd80      	pop	{r7, pc}

080024d2 <main>:
 80024d2:	b5b0      	push	{r4, r5, r7, lr}
 80024d4:	af02      	add	r7, sp, #8
 80024d6:	f640 11e4 	movw	r1, #2532	; 0x9e4
 80024da:	f643 0000 	movw	r0, #14336	; 0x3800
 80024de:	220c      	movs	r2, #12
 80024e0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80024e4:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80024e8:	6008      	str	r0, [r1, #0]
 80024ea:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80024ee:	6048      	str	r0, [r1, #4]
 80024f0:	2000      	movs	r0, #0
 80024f2:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80024f6:	6108      	str	r0, [r1, #16]
 80024f8:	6248      	str	r0, [r1, #36]	; 0x24
 80024fa:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80024fe:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002502:	2000      	movs	r0, #0
 8002504:	f7ff fcde 	bl	8001ec4 <BSP_COM_Init>
 8002508:	f7ff ff7d 	bl	8002406 <initialise_benchmark>
 800250c:	f247 5009 	movw	r0, #29961	; 0x7509
 8002510:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002514:	f000 fc0c 	bl	8002d30 <printf>
 8002518:	f247 50b5 	movw	r0, #30133	; 0x75b5
 800251c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002520:	f000 fc68 	bl	8002df4 <puts>
 8002524:	f7fe fe40 	bl	80011a8 <HAL_Init>
 8002528:	f7fe fe56 	bl	80011d8 <HAL_GetTick>
 800252c:	4604      	mov	r4, r0
 800252e:	f7ff ff6b 	bl	8002408 <benchmark>
 8002532:	4605      	mov	r5, r0
 8002534:	f7fe fe50 	bl	80011d8 <HAL_GetTick>
 8002538:	1b04      	subs	r4, r0, r4
 800253a:	4628      	mov	r0, r5
 800253c:	f7ff ff60 	bl	8002400 <verify_benchmark>
 8002540:	1c41      	adds	r1, r0, #1
 8002542:	d006      	beq.n	8002552 <main+0x80>
 8002544:	2801      	cmp	r0, #1
 8002546:	d109      	bne.n	800255c <main+0x8a>
 8002548:	f247 5021 	movw	r0, #29985	; 0x7521
 800254c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002550:	e008      	b.n	8002564 <main+0x92>
 8002552:	f247 5045 	movw	r0, #30021	; 0x7545
 8002556:	f6c0 0000 	movt	r0, #2048	; 0x800
 800255a:	e003      	b.n	8002564 <main+0x92>
 800255c:	f247 507a 	movw	r0, #30074	; 0x757a
 8002560:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002564:	4621      	mov	r1, r4
 8002566:	f000 fbe3 	bl	8002d30 <printf>
 800256a:	2000      	movs	r0, #0
 800256c:	bdb0      	pop	{r4, r5, r7, pc}

0800256e <SysTick_Handler>:
 800256e:	b580      	push	{r7, lr}
 8002570:	466f      	mov	r7, sp
 8002572:	f7fe fe29 	bl	80011c8 <HAL_IncTick>
 8002576:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800257a:	f7fe be83 	b.w	8001284 <HAL_SYSTICK_IRQHandler>

0800257e <_read>:
 800257e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002580:	af03      	add	r7, sp, #12
 8002582:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002586:	4614      	mov	r4, r2
 8002588:	460d      	mov	r5, r1
 800258a:	2c01      	cmp	r4, #1
 800258c:	db06      	blt.n	800259c <_read+0x1e>
 800258e:	4626      	mov	r6, r4
 8002590:	f3af 8000 	nop.w
 8002594:	f805 0b01 	strb.w	r0, [r5], #1
 8002598:	3e01      	subs	r6, #1
 800259a:	d1f9      	bne.n	8002590 <_read+0x12>
 800259c:	4620      	mov	r0, r4
 800259e:	f85d bb04 	ldr.w	fp, [sp], #4
 80025a2:	bdf0      	pop	{r4, r5, r6, r7, pc}

080025a4 <_write>:
 80025a4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80025a6:	af03      	add	r7, sp, #12
 80025a8:	f84d bd04 	str.w	fp, [sp, #-4]!
 80025ac:	4614      	mov	r4, r2
 80025ae:	460d      	mov	r5, r1
 80025b0:	2c01      	cmp	r4, #1
 80025b2:	db06      	blt.n	80025c2 <_write+0x1e>
 80025b4:	4626      	mov	r6, r4
 80025b6:	f815 0b01 	ldrb.w	r0, [r5], #1
 80025ba:	f7ff ff79 	bl	80024b0 <__io_putchar>
 80025be:	3e01      	subs	r6, #1
 80025c0:	d1f9      	bne.n	80025b6 <_write+0x12>
 80025c2:	4620      	mov	r0, r4
 80025c4:	f85d bb04 	ldr.w	fp, [sp], #4
 80025c8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080025ca <_sbrk>:
 80025ca:	f640 2268 	movw	r2, #2664	; 0xa68
 80025ce:	4601      	mov	r1, r0
 80025d0:	466b      	mov	r3, sp
 80025d2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80025d6:	6810      	ldr	r0, [r2, #0]
 80025d8:	2800      	cmp	r0, #0
 80025da:	bf02      	ittt	eq
 80025dc:	f640 3010 	movweq	r0, #2832	; 0xb10
 80025e0:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80025e4:	6010      	streq	r0, [r2, #0]
 80025e6:	4401      	add	r1, r0
 80025e8:	4299      	cmp	r1, r3
 80025ea:	bf9c      	itt	ls
 80025ec:	6011      	strls	r1, [r2, #0]
 80025ee:	4770      	bxls	lr
 80025f0:	b580      	push	{r7, lr}
 80025f2:	466f      	mov	r7, sp
 80025f4:	f000 f868 	bl	80026c8 <__errno>
 80025f8:	210c      	movs	r1, #12
 80025fa:	6001      	str	r1, [r0, #0]
 80025fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002600:	bd80      	pop	{r7, pc}

08002602 <_close>:
 8002602:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002606:	4770      	bx	lr

08002608 <_fstat>:
 8002608:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800260c:	6048      	str	r0, [r1, #4]
 800260e:	2000      	movs	r0, #0
 8002610:	4770      	bx	lr

08002612 <_isatty>:
 8002612:	2001      	movs	r0, #1
 8002614:	4770      	bx	lr

08002616 <_lseek>:
 8002616:	2000      	movs	r0, #0
 8002618:	4770      	bx	lr

0800261a <SystemInit>:
 800261a:	f64e 5088 	movw	r0, #60808	; 0xed88
 800261e:	f04f 0c00 	mov.w	ip, #0
 8002622:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002626:	6801      	ldr	r1, [r0, #0]
 8002628:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800262c:	6001      	str	r1, [r0, #0]
 800262e:	f241 0100 	movw	r1, #4096	; 0x1000
 8002632:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002636:	680a      	ldr	r2, [r1, #0]
 8002638:	f042 0201 	orr.w	r2, r2, #1
 800263c:	600a      	str	r2, [r1, #0]
 800263e:	f8c1 c008 	str.w	ip, [r1, #8]
 8002642:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002646:	680b      	ldr	r3, [r1, #0]
 8002648:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800264c:	401a      	ands	r2, r3
 800264e:	600a      	str	r2, [r1, #0]
 8002650:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002654:	60ca      	str	r2, [r1, #12]
 8002656:	680a      	ldr	r2, [r1, #0]
 8002658:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800265c:	600a      	str	r2, [r1, #0]
 800265e:	f8c1 c018 	str.w	ip, [r1, #24]
 8002662:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002666:	f840 1c80 	str.w	r1, [r0, #-128]
 800266a:	4770      	bx	lr

0800266c <Reset_Handler>:
 800266c:	f8df d034 	ldr.w	sp, [pc, #52]	; 80026a4 <LoopForever+0x2>
 8002670:	2100      	movs	r1, #0
 8002672:	e003      	b.n	800267c <LoopCopyDataInit>

08002674 <CopyDataInit>:
 8002674:	4b0c      	ldr	r3, [pc, #48]	; (80026a8 <LoopForever+0x6>)
 8002676:	585b      	ldr	r3, [r3, r1]
 8002678:	5043      	str	r3, [r0, r1]
 800267a:	3104      	adds	r1, #4

0800267c <LoopCopyDataInit>:
 800267c:	480b      	ldr	r0, [pc, #44]	; (80026ac <LoopForever+0xa>)
 800267e:	4b0c      	ldr	r3, [pc, #48]	; (80026b0 <LoopForever+0xe>)
 8002680:	1842      	adds	r2, r0, r1
 8002682:	429a      	cmp	r2, r3
 8002684:	d3f6      	bcc.n	8002674 <CopyDataInit>
 8002686:	4a0b      	ldr	r2, [pc, #44]	; (80026b4 <LoopForever+0x12>)
 8002688:	e002      	b.n	8002690 <LoopFillZerobss>

0800268a <FillZerobss>:
 800268a:	2300      	movs	r3, #0
 800268c:	f842 3b04 	str.w	r3, [r2], #4

08002690 <LoopFillZerobss>:
 8002690:	4b09      	ldr	r3, [pc, #36]	; (80026b8 <LoopForever+0x16>)
 8002692:	429a      	cmp	r2, r3
 8002694:	d3f9      	bcc.n	800268a <FillZerobss>
 8002696:	f7ff ffc0 	bl	800261a <SystemInit>
 800269a:	f000 f81b 	bl	80026d4 <__libc_init_array>
 800269e:	f7ff ff18 	bl	80024d2 <main>

080026a2 <LoopForever>:
 80026a2:	e7fe      	b.n	80026a2 <LoopForever>
 80026a4:	20018000 	.word	0x20018000
 80026a8:	08007860 	.word	0x08007860
 80026ac:	20000000 	.word	0x20000000
 80026b0:	200009c8 	.word	0x200009c8
 80026b4:	200009c8 	.word	0x200009c8
 80026b8:	20000b10 	.word	0x20000b10

080026bc <ADC1_2_IRQHandler>:
 80026bc:	e7fe      	b.n	80026bc <ADC1_2_IRQHandler>
	...

080026c0 <__aeabi_memclr>:
 80026c0:	2200      	movs	r2, #0
 80026c2:	f7fd bf1d 	b.w	8000500 <__aeabi_memset>
 80026c6:	bf00      	nop

080026c8 <__errno>:
 80026c8:	4b01      	ldr	r3, [pc, #4]	; (80026d0 <__errno+0x8>)
 80026ca:	6818      	ldr	r0, [r3, #0]
 80026cc:	4770      	bx	lr
 80026ce:	bf00      	nop
 80026d0:	2000001c 	.word	0x2000001c

080026d4 <__libc_init_array>:
 80026d4:	b570      	push	{r4, r5, r6, lr}
 80026d6:	4e0d      	ldr	r6, [pc, #52]	; (800270c <__libc_init_array+0x38>)
 80026d8:	4d0d      	ldr	r5, [pc, #52]	; (8002710 <__libc_init_array+0x3c>)
 80026da:	1b76      	subs	r6, r6, r5
 80026dc:	10b6      	asrs	r6, r6, #2
 80026de:	d006      	beq.n	80026ee <__libc_init_array+0x1a>
 80026e0:	2400      	movs	r4, #0
 80026e2:	3401      	adds	r4, #1
 80026e4:	f855 3b04 	ldr.w	r3, [r5], #4
 80026e8:	4798      	blx	r3
 80026ea:	42a6      	cmp	r6, r4
 80026ec:	d1f9      	bne.n	80026e2 <__libc_init_array+0xe>
 80026ee:	4e09      	ldr	r6, [pc, #36]	; (8002714 <__libc_init_array+0x40>)
 80026f0:	4d09      	ldr	r5, [pc, #36]	; (8002718 <__libc_init_array+0x44>)
 80026f2:	1b76      	subs	r6, r6, r5
 80026f4:	f004 feb8 	bl	8007468 <_init>
 80026f8:	10b6      	asrs	r6, r6, #2
 80026fa:	d006      	beq.n	800270a <__libc_init_array+0x36>
 80026fc:	2400      	movs	r4, #0
 80026fe:	3401      	adds	r4, #1
 8002700:	f855 3b04 	ldr.w	r3, [r5], #4
 8002704:	4798      	blx	r3
 8002706:	42a6      	cmp	r6, r4
 8002708:	d1f9      	bne.n	80026fe <__libc_init_array+0x2a>
 800270a:	bd70      	pop	{r4, r5, r6, pc}
 800270c:	08007850 	.word	0x08007850
 8002710:	08007850 	.word	0x08007850
 8002714:	08007858 	.word	0x08007858
 8002718:	08007850 	.word	0x08007850

0800271c <malloc>:
 800271c:	4b02      	ldr	r3, [pc, #8]	; (8002728 <malloc+0xc>)
 800271e:	4601      	mov	r1, r0
 8002720:	6818      	ldr	r0, [r3, #0]
 8002722:	f000 b80b 	b.w	800273c <_malloc_r>
 8002726:	bf00      	nop
 8002728:	2000001c 	.word	0x2000001c

0800272c <free>:
 800272c:	4b02      	ldr	r3, [pc, #8]	; (8002738 <free+0xc>)
 800272e:	4601      	mov	r1, r0
 8002730:	6818      	ldr	r0, [r3, #0]
 8002732:	f003 bab9 	b.w	8005ca8 <_free_r>
 8002736:	bf00      	nop
 8002738:	2000001c 	.word	0x2000001c

0800273c <_malloc_r>:
 800273c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002740:	f101 050b 	add.w	r5, r1, #11
 8002744:	2d16      	cmp	r5, #22
 8002746:	b083      	sub	sp, #12
 8002748:	4606      	mov	r6, r0
 800274a:	d823      	bhi.n	8002794 <_malloc_r+0x58>
 800274c:	2910      	cmp	r1, #16
 800274e:	f200 80b9 	bhi.w	80028c4 <_malloc_r+0x188>
 8002752:	f000 fae1 	bl	8002d18 <__malloc_lock>
 8002756:	2510      	movs	r5, #16
 8002758:	2318      	movs	r3, #24
 800275a:	2002      	movs	r0, #2
 800275c:	4fc5      	ldr	r7, [pc, #788]	; (8002a74 <_malloc_r+0x338>)
 800275e:	443b      	add	r3, r7
 8002760:	f1a3 0208 	sub.w	r2, r3, #8
 8002764:	685c      	ldr	r4, [r3, #4]
 8002766:	4294      	cmp	r4, r2
 8002768:	f000 8166 	beq.w	8002a38 <_malloc_r+0x2fc>
 800276c:	6863      	ldr	r3, [r4, #4]
 800276e:	f023 0303 	bic.w	r3, r3, #3
 8002772:	4423      	add	r3, r4
 8002774:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8002778:	685a      	ldr	r2, [r3, #4]
 800277a:	60e9      	str	r1, [r5, #12]
 800277c:	f042 0201 	orr.w	r2, r2, #1
 8002780:	608d      	str	r5, [r1, #8]
 8002782:	4630      	mov	r0, r6
 8002784:	605a      	str	r2, [r3, #4]
 8002786:	f000 facd 	bl	8002d24 <__malloc_unlock>
 800278a:	3408      	adds	r4, #8
 800278c:	4620      	mov	r0, r4
 800278e:	b003      	add	sp, #12
 8002790:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002794:	f035 0507 	bics.w	r5, r5, #7
 8002798:	f100 8094 	bmi.w	80028c4 <_malloc_r+0x188>
 800279c:	42a9      	cmp	r1, r5
 800279e:	f200 8091 	bhi.w	80028c4 <_malloc_r+0x188>
 80027a2:	f000 fab9 	bl	8002d18 <__malloc_lock>
 80027a6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80027aa:	f0c0 8183 	bcc.w	8002ab4 <_malloc_r+0x378>
 80027ae:	0a6b      	lsrs	r3, r5, #9
 80027b0:	f000 808f 	beq.w	80028d2 <_malloc_r+0x196>
 80027b4:	2b04      	cmp	r3, #4
 80027b6:	f200 8146 	bhi.w	8002a46 <_malloc_r+0x30a>
 80027ba:	09ab      	lsrs	r3, r5, #6
 80027bc:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80027c0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80027c4:	00c3      	lsls	r3, r0, #3
 80027c6:	4fab      	ldr	r7, [pc, #684]	; (8002a74 <_malloc_r+0x338>)
 80027c8:	443b      	add	r3, r7
 80027ca:	f1a3 0108 	sub.w	r1, r3, #8
 80027ce:	685c      	ldr	r4, [r3, #4]
 80027d0:	42a1      	cmp	r1, r4
 80027d2:	d106      	bne.n	80027e2 <_malloc_r+0xa6>
 80027d4:	e00c      	b.n	80027f0 <_malloc_r+0xb4>
 80027d6:	2a00      	cmp	r2, #0
 80027d8:	f280 811d 	bge.w	8002a16 <_malloc_r+0x2da>
 80027dc:	68e4      	ldr	r4, [r4, #12]
 80027de:	42a1      	cmp	r1, r4
 80027e0:	d006      	beq.n	80027f0 <_malloc_r+0xb4>
 80027e2:	6863      	ldr	r3, [r4, #4]
 80027e4:	f023 0303 	bic.w	r3, r3, #3
 80027e8:	1b5a      	subs	r2, r3, r5
 80027ea:	2a0f      	cmp	r2, #15
 80027ec:	ddf3      	ble.n	80027d6 <_malloc_r+0x9a>
 80027ee:	4660      	mov	r0, ip
 80027f0:	693c      	ldr	r4, [r7, #16]
 80027f2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8002a88 <_malloc_r+0x34c>
 80027f6:	4564      	cmp	r4, ip
 80027f8:	d071      	beq.n	80028de <_malloc_r+0x1a2>
 80027fa:	6863      	ldr	r3, [r4, #4]
 80027fc:	f023 0303 	bic.w	r3, r3, #3
 8002800:	1b5a      	subs	r2, r3, r5
 8002802:	2a0f      	cmp	r2, #15
 8002804:	f300 8144 	bgt.w	8002a90 <_malloc_r+0x354>
 8002808:	2a00      	cmp	r2, #0
 800280a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800280e:	f280 8126 	bge.w	8002a5e <_malloc_r+0x322>
 8002812:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8002816:	f080 8169 	bcs.w	8002aec <_malloc_r+0x3b0>
 800281a:	08db      	lsrs	r3, r3, #3
 800281c:	1c59      	adds	r1, r3, #1
 800281e:	687a      	ldr	r2, [r7, #4]
 8002820:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8002824:	f8c4 8008 	str.w	r8, [r4, #8]
 8002828:	f04f 0e01 	mov.w	lr, #1
 800282c:	109b      	asrs	r3, r3, #2
 800282e:	fa0e f303 	lsl.w	r3, lr, r3
 8002832:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8002836:	4313      	orrs	r3, r2
 8002838:	f1ae 0208 	sub.w	r2, lr, #8
 800283c:	60e2      	str	r2, [r4, #12]
 800283e:	607b      	str	r3, [r7, #4]
 8002840:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8002844:	f8c8 400c 	str.w	r4, [r8, #12]
 8002848:	1082      	asrs	r2, r0, #2
 800284a:	2401      	movs	r4, #1
 800284c:	4094      	lsls	r4, r2
 800284e:	429c      	cmp	r4, r3
 8002850:	d84b      	bhi.n	80028ea <_malloc_r+0x1ae>
 8002852:	421c      	tst	r4, r3
 8002854:	d106      	bne.n	8002864 <_malloc_r+0x128>
 8002856:	f020 0003 	bic.w	r0, r0, #3
 800285a:	0064      	lsls	r4, r4, #1
 800285c:	421c      	tst	r4, r3
 800285e:	f100 0004 	add.w	r0, r0, #4
 8002862:	d0fa      	beq.n	800285a <_malloc_r+0x11e>
 8002864:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8002868:	46ce      	mov	lr, r9
 800286a:	4680      	mov	r8, r0
 800286c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8002870:	459e      	cmp	lr, r3
 8002872:	d107      	bne.n	8002884 <_malloc_r+0x148>
 8002874:	e122      	b.n	8002abc <_malloc_r+0x380>
 8002876:	2a00      	cmp	r2, #0
 8002878:	f280 8129 	bge.w	8002ace <_malloc_r+0x392>
 800287c:	68db      	ldr	r3, [r3, #12]
 800287e:	459e      	cmp	lr, r3
 8002880:	f000 811c 	beq.w	8002abc <_malloc_r+0x380>
 8002884:	6859      	ldr	r1, [r3, #4]
 8002886:	f021 0103 	bic.w	r1, r1, #3
 800288a:	1b4a      	subs	r2, r1, r5
 800288c:	2a0f      	cmp	r2, #15
 800288e:	ddf2      	ble.n	8002876 <_malloc_r+0x13a>
 8002890:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8002894:	195c      	adds	r4, r3, r5
 8002896:	f045 0501 	orr.w	r5, r5, #1
 800289a:	605d      	str	r5, [r3, #4]
 800289c:	f042 0501 	orr.w	r5, r2, #1
 80028a0:	f8c8 e00c 	str.w	lr, [r8, #12]
 80028a4:	4630      	mov	r0, r6
 80028a6:	f8ce 8008 	str.w	r8, [lr, #8]
 80028aa:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80028ae:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80028b2:	6065      	str	r5, [r4, #4]
 80028b4:	505a      	str	r2, [r3, r1]
 80028b6:	9301      	str	r3, [sp, #4]
 80028b8:	f000 fa34 	bl	8002d24 <__malloc_unlock>
 80028bc:	9b01      	ldr	r3, [sp, #4]
 80028be:	f103 0408 	add.w	r4, r3, #8
 80028c2:	e763      	b.n	800278c <_malloc_r+0x50>
 80028c4:	2400      	movs	r4, #0
 80028c6:	230c      	movs	r3, #12
 80028c8:	4620      	mov	r0, r4
 80028ca:	6033      	str	r3, [r6, #0]
 80028cc:	b003      	add	sp, #12
 80028ce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80028d2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80028d6:	2040      	movs	r0, #64	; 0x40
 80028d8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80028dc:	e773      	b.n	80027c6 <_malloc_r+0x8a>
 80028de:	687b      	ldr	r3, [r7, #4]
 80028e0:	1082      	asrs	r2, r0, #2
 80028e2:	2401      	movs	r4, #1
 80028e4:	4094      	lsls	r4, r2
 80028e6:	429c      	cmp	r4, r3
 80028e8:	d9b3      	bls.n	8002852 <_malloc_r+0x116>
 80028ea:	68bc      	ldr	r4, [r7, #8]
 80028ec:	6863      	ldr	r3, [r4, #4]
 80028ee:	f023 0903 	bic.w	r9, r3, #3
 80028f2:	45a9      	cmp	r9, r5
 80028f4:	d303      	bcc.n	80028fe <_malloc_r+0x1c2>
 80028f6:	eba9 0305 	sub.w	r3, r9, r5
 80028fa:	2b0f      	cmp	r3, #15
 80028fc:	dc7b      	bgt.n	80029f6 <_malloc_r+0x2ba>
 80028fe:	4b5e      	ldr	r3, [pc, #376]	; (8002a78 <_malloc_r+0x33c>)
 8002900:	f8df a188 	ldr.w	sl, [pc, #392]	; 8002a8c <_malloc_r+0x350>
 8002904:	681a      	ldr	r2, [r3, #0]
 8002906:	f8da 3000 	ldr.w	r3, [sl]
 800290a:	3301      	adds	r3, #1
 800290c:	eb05 0802 	add.w	r8, r5, r2
 8002910:	f000 8148 	beq.w	8002ba4 <_malloc_r+0x468>
 8002914:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8002918:	f108 080f 	add.w	r8, r8, #15
 800291c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8002920:	f028 080f 	bic.w	r8, r8, #15
 8002924:	4641      	mov	r1, r8
 8002926:	4630      	mov	r0, r6
 8002928:	f000 fa6c 	bl	8002e04 <_sbrk_r>
 800292c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8002930:	4683      	mov	fp, r0
 8002932:	f000 8104 	beq.w	8002b3e <_malloc_r+0x402>
 8002936:	eb04 0009 	add.w	r0, r4, r9
 800293a:	4558      	cmp	r0, fp
 800293c:	f200 80fd 	bhi.w	8002b3a <_malloc_r+0x3fe>
 8002940:	4a4e      	ldr	r2, [pc, #312]	; (8002a7c <_malloc_r+0x340>)
 8002942:	6813      	ldr	r3, [r2, #0]
 8002944:	4443      	add	r3, r8
 8002946:	6013      	str	r3, [r2, #0]
 8002948:	f000 814d 	beq.w	8002be6 <_malloc_r+0x4aa>
 800294c:	f8da 1000 	ldr.w	r1, [sl]
 8002950:	3101      	adds	r1, #1
 8002952:	bf1b      	ittet	ne
 8002954:	ebab 0000 	subne.w	r0, fp, r0
 8002958:	181b      	addne	r3, r3, r0
 800295a:	f8ca b000 	streq.w	fp, [sl]
 800295e:	6013      	strne	r3, [r2, #0]
 8002960:	f01b 0307 	ands.w	r3, fp, #7
 8002964:	f000 8134 	beq.w	8002bd0 <_malloc_r+0x494>
 8002968:	f1c3 0108 	rsb	r1, r3, #8
 800296c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8002970:	448b      	add	fp, r1
 8002972:	3308      	adds	r3, #8
 8002974:	44d8      	add	r8, fp
 8002976:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800297a:	eba3 0808 	sub.w	r8, r3, r8
 800297e:	4641      	mov	r1, r8
 8002980:	4630      	mov	r0, r6
 8002982:	9201      	str	r2, [sp, #4]
 8002984:	f000 fa3e 	bl	8002e04 <_sbrk_r>
 8002988:	1c43      	adds	r3, r0, #1
 800298a:	9a01      	ldr	r2, [sp, #4]
 800298c:	f000 8146 	beq.w	8002c1c <_malloc_r+0x4e0>
 8002990:	eba0 010b 	sub.w	r1, r0, fp
 8002994:	4441      	add	r1, r8
 8002996:	f041 0101 	orr.w	r1, r1, #1
 800299a:	6813      	ldr	r3, [r2, #0]
 800299c:	f8c7 b008 	str.w	fp, [r7, #8]
 80029a0:	4443      	add	r3, r8
 80029a2:	42bc      	cmp	r4, r7
 80029a4:	f8cb 1004 	str.w	r1, [fp, #4]
 80029a8:	6013      	str	r3, [r2, #0]
 80029aa:	d015      	beq.n	80029d8 <_malloc_r+0x29c>
 80029ac:	f1b9 0f0f 	cmp.w	r9, #15
 80029b0:	f240 8130 	bls.w	8002c14 <_malloc_r+0x4d8>
 80029b4:	6860      	ldr	r0, [r4, #4]
 80029b6:	f1a9 010c 	sub.w	r1, r9, #12
 80029ba:	f021 0107 	bic.w	r1, r1, #7
 80029be:	f000 0001 	and.w	r0, r0, #1
 80029c2:	eb04 0c01 	add.w	ip, r4, r1
 80029c6:	4308      	orrs	r0, r1
 80029c8:	f04f 0e05 	mov.w	lr, #5
 80029cc:	290f      	cmp	r1, #15
 80029ce:	6060      	str	r0, [r4, #4]
 80029d0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80029d4:	f200 813a 	bhi.w	8002c4c <_malloc_r+0x510>
 80029d8:	4a29      	ldr	r2, [pc, #164]	; (8002a80 <_malloc_r+0x344>)
 80029da:	482a      	ldr	r0, [pc, #168]	; (8002a84 <_malloc_r+0x348>)
 80029dc:	6811      	ldr	r1, [r2, #0]
 80029de:	68bc      	ldr	r4, [r7, #8]
 80029e0:	428b      	cmp	r3, r1
 80029e2:	6801      	ldr	r1, [r0, #0]
 80029e4:	bf88      	it	hi
 80029e6:	6013      	strhi	r3, [r2, #0]
 80029e8:	6862      	ldr	r2, [r4, #4]
 80029ea:	428b      	cmp	r3, r1
 80029ec:	f022 0203 	bic.w	r2, r2, #3
 80029f0:	bf88      	it	hi
 80029f2:	6003      	strhi	r3, [r0, #0]
 80029f4:	e0a7      	b.n	8002b46 <_malloc_r+0x40a>
 80029f6:	1962      	adds	r2, r4, r5
 80029f8:	f043 0301 	orr.w	r3, r3, #1
 80029fc:	f045 0501 	orr.w	r5, r5, #1
 8002a00:	6065      	str	r5, [r4, #4]
 8002a02:	4630      	mov	r0, r6
 8002a04:	60ba      	str	r2, [r7, #8]
 8002a06:	6053      	str	r3, [r2, #4]
 8002a08:	f000 f98c 	bl	8002d24 <__malloc_unlock>
 8002a0c:	3408      	adds	r4, #8
 8002a0e:	4620      	mov	r0, r4
 8002a10:	b003      	add	sp, #12
 8002a12:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002a16:	4423      	add	r3, r4
 8002a18:	68e1      	ldr	r1, [r4, #12]
 8002a1a:	685a      	ldr	r2, [r3, #4]
 8002a1c:	68a5      	ldr	r5, [r4, #8]
 8002a1e:	f042 0201 	orr.w	r2, r2, #1
 8002a22:	60e9      	str	r1, [r5, #12]
 8002a24:	4630      	mov	r0, r6
 8002a26:	608d      	str	r5, [r1, #8]
 8002a28:	605a      	str	r2, [r3, #4]
 8002a2a:	f000 f97b 	bl	8002d24 <__malloc_unlock>
 8002a2e:	3408      	adds	r4, #8
 8002a30:	4620      	mov	r0, r4
 8002a32:	b003      	add	sp, #12
 8002a34:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002a38:	68dc      	ldr	r4, [r3, #12]
 8002a3a:	42a3      	cmp	r3, r4
 8002a3c:	bf08      	it	eq
 8002a3e:	3002      	addeq	r0, #2
 8002a40:	f43f aed6 	beq.w	80027f0 <_malloc_r+0xb4>
 8002a44:	e692      	b.n	800276c <_malloc_r+0x30>
 8002a46:	2b14      	cmp	r3, #20
 8002a48:	d971      	bls.n	8002b2e <_malloc_r+0x3f2>
 8002a4a:	2b54      	cmp	r3, #84	; 0x54
 8002a4c:	f200 80ad 	bhi.w	8002baa <_malloc_r+0x46e>
 8002a50:	0b2b      	lsrs	r3, r5, #12
 8002a52:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8002a56:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8002a5a:	00c3      	lsls	r3, r0, #3
 8002a5c:	e6b3      	b.n	80027c6 <_malloc_r+0x8a>
 8002a5e:	4423      	add	r3, r4
 8002a60:	4630      	mov	r0, r6
 8002a62:	685a      	ldr	r2, [r3, #4]
 8002a64:	f042 0201 	orr.w	r2, r2, #1
 8002a68:	605a      	str	r2, [r3, #4]
 8002a6a:	3408      	adds	r4, #8
 8002a6c:	f000 f95a 	bl	8002d24 <__malloc_unlock>
 8002a70:	e68c      	b.n	800278c <_malloc_r+0x50>
 8002a72:	bf00      	nop
 8002a74:	20000448 	.word	0x20000448
 8002a78:	20000a9c 	.word	0x20000a9c
 8002a7c:	20000a6c 	.word	0x20000a6c
 8002a80:	20000a94 	.word	0x20000a94
 8002a84:	20000a98 	.word	0x20000a98
 8002a88:	20000450 	.word	0x20000450
 8002a8c:	20000850 	.word	0x20000850
 8002a90:	1961      	adds	r1, r4, r5
 8002a92:	f045 0e01 	orr.w	lr, r5, #1
 8002a96:	f042 0501 	orr.w	r5, r2, #1
 8002a9a:	f8c4 e004 	str.w	lr, [r4, #4]
 8002a9e:	4630      	mov	r0, r6
 8002aa0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8002aa4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8002aa8:	604d      	str	r5, [r1, #4]
 8002aaa:	50e2      	str	r2, [r4, r3]
 8002aac:	f000 f93a 	bl	8002d24 <__malloc_unlock>
 8002ab0:	3408      	adds	r4, #8
 8002ab2:	e66b      	b.n	800278c <_malloc_r+0x50>
 8002ab4:	08e8      	lsrs	r0, r5, #3
 8002ab6:	f105 0308 	add.w	r3, r5, #8
 8002aba:	e64f      	b.n	800275c <_malloc_r+0x20>
 8002abc:	f108 0801 	add.w	r8, r8, #1
 8002ac0:	f018 0f03 	tst.w	r8, #3
 8002ac4:	f10e 0e08 	add.w	lr, lr, #8
 8002ac8:	f47f aed0 	bne.w	800286c <_malloc_r+0x130>
 8002acc:	e052      	b.n	8002b74 <_malloc_r+0x438>
 8002ace:	4419      	add	r1, r3
 8002ad0:	461c      	mov	r4, r3
 8002ad2:	684a      	ldr	r2, [r1, #4]
 8002ad4:	68db      	ldr	r3, [r3, #12]
 8002ad6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8002ada:	f042 0201 	orr.w	r2, r2, #1
 8002ade:	604a      	str	r2, [r1, #4]
 8002ae0:	4630      	mov	r0, r6
 8002ae2:	60eb      	str	r3, [r5, #12]
 8002ae4:	609d      	str	r5, [r3, #8]
 8002ae6:	f000 f91d 	bl	8002d24 <__malloc_unlock>
 8002aea:	e64f      	b.n	800278c <_malloc_r+0x50>
 8002aec:	0a5a      	lsrs	r2, r3, #9
 8002aee:	2a04      	cmp	r2, #4
 8002af0:	d935      	bls.n	8002b5e <_malloc_r+0x422>
 8002af2:	2a14      	cmp	r2, #20
 8002af4:	d86f      	bhi.n	8002bd6 <_malloc_r+0x49a>
 8002af6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8002afa:	00c9      	lsls	r1, r1, #3
 8002afc:	325b      	adds	r2, #91	; 0x5b
 8002afe:	eb07 0e01 	add.w	lr, r7, r1
 8002b02:	5879      	ldr	r1, [r7, r1]
 8002b04:	f1ae 0e08 	sub.w	lr, lr, #8
 8002b08:	458e      	cmp	lr, r1
 8002b0a:	d058      	beq.n	8002bbe <_malloc_r+0x482>
 8002b0c:	684a      	ldr	r2, [r1, #4]
 8002b0e:	f022 0203 	bic.w	r2, r2, #3
 8002b12:	429a      	cmp	r2, r3
 8002b14:	d902      	bls.n	8002b1c <_malloc_r+0x3e0>
 8002b16:	6889      	ldr	r1, [r1, #8]
 8002b18:	458e      	cmp	lr, r1
 8002b1a:	d1f7      	bne.n	8002b0c <_malloc_r+0x3d0>
 8002b1c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8002b20:	687b      	ldr	r3, [r7, #4]
 8002b22:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8002b26:	f8ce 4008 	str.w	r4, [lr, #8]
 8002b2a:	60cc      	str	r4, [r1, #12]
 8002b2c:	e68c      	b.n	8002848 <_malloc_r+0x10c>
 8002b2e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8002b32:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8002b36:	00c3      	lsls	r3, r0, #3
 8002b38:	e645      	b.n	80027c6 <_malloc_r+0x8a>
 8002b3a:	42bc      	cmp	r4, r7
 8002b3c:	d072      	beq.n	8002c24 <_malloc_r+0x4e8>
 8002b3e:	68bc      	ldr	r4, [r7, #8]
 8002b40:	6862      	ldr	r2, [r4, #4]
 8002b42:	f022 0203 	bic.w	r2, r2, #3
 8002b46:	4295      	cmp	r5, r2
 8002b48:	eba2 0305 	sub.w	r3, r2, r5
 8002b4c:	d802      	bhi.n	8002b54 <_malloc_r+0x418>
 8002b4e:	2b0f      	cmp	r3, #15
 8002b50:	f73f af51 	bgt.w	80029f6 <_malloc_r+0x2ba>
 8002b54:	4630      	mov	r0, r6
 8002b56:	f000 f8e5 	bl	8002d24 <__malloc_unlock>
 8002b5a:	2400      	movs	r4, #0
 8002b5c:	e616      	b.n	800278c <_malloc_r+0x50>
 8002b5e:	099a      	lsrs	r2, r3, #6
 8002b60:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8002b64:	00c9      	lsls	r1, r1, #3
 8002b66:	3238      	adds	r2, #56	; 0x38
 8002b68:	e7c9      	b.n	8002afe <_malloc_r+0x3c2>
 8002b6a:	f8d9 9000 	ldr.w	r9, [r9]
 8002b6e:	4599      	cmp	r9, r3
 8002b70:	f040 8083 	bne.w	8002c7a <_malloc_r+0x53e>
 8002b74:	f010 0f03 	tst.w	r0, #3
 8002b78:	f1a9 0308 	sub.w	r3, r9, #8
 8002b7c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8002b80:	d1f3      	bne.n	8002b6a <_malloc_r+0x42e>
 8002b82:	687b      	ldr	r3, [r7, #4]
 8002b84:	ea23 0304 	bic.w	r3, r3, r4
 8002b88:	607b      	str	r3, [r7, #4]
 8002b8a:	0064      	lsls	r4, r4, #1
 8002b8c:	429c      	cmp	r4, r3
 8002b8e:	f63f aeac 	bhi.w	80028ea <_malloc_r+0x1ae>
 8002b92:	b91c      	cbnz	r4, 8002b9c <_malloc_r+0x460>
 8002b94:	e6a9      	b.n	80028ea <_malloc_r+0x1ae>
 8002b96:	0064      	lsls	r4, r4, #1
 8002b98:	f108 0804 	add.w	r8, r8, #4
 8002b9c:	421c      	tst	r4, r3
 8002b9e:	d0fa      	beq.n	8002b96 <_malloc_r+0x45a>
 8002ba0:	4640      	mov	r0, r8
 8002ba2:	e65f      	b.n	8002864 <_malloc_r+0x128>
 8002ba4:	f108 0810 	add.w	r8, r8, #16
 8002ba8:	e6bc      	b.n	8002924 <_malloc_r+0x1e8>
 8002baa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8002bae:	d826      	bhi.n	8002bfe <_malloc_r+0x4c2>
 8002bb0:	0beb      	lsrs	r3, r5, #15
 8002bb2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8002bb6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8002bba:	00c3      	lsls	r3, r0, #3
 8002bbc:	e603      	b.n	80027c6 <_malloc_r+0x8a>
 8002bbe:	687b      	ldr	r3, [r7, #4]
 8002bc0:	1092      	asrs	r2, r2, #2
 8002bc2:	f04f 0801 	mov.w	r8, #1
 8002bc6:	fa08 f202 	lsl.w	r2, r8, r2
 8002bca:	4313      	orrs	r3, r2
 8002bcc:	607b      	str	r3, [r7, #4]
 8002bce:	e7a8      	b.n	8002b22 <_malloc_r+0x3e6>
 8002bd0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002bd4:	e6ce      	b.n	8002974 <_malloc_r+0x238>
 8002bd6:	2a54      	cmp	r2, #84	; 0x54
 8002bd8:	d829      	bhi.n	8002c2e <_malloc_r+0x4f2>
 8002bda:	0b1a      	lsrs	r2, r3, #12
 8002bdc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8002be0:	00c9      	lsls	r1, r1, #3
 8002be2:	326e      	adds	r2, #110	; 0x6e
 8002be4:	e78b      	b.n	8002afe <_malloc_r+0x3c2>
 8002be6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8002bea:	2900      	cmp	r1, #0
 8002bec:	f47f aeae 	bne.w	800294c <_malloc_r+0x210>
 8002bf0:	eb09 0208 	add.w	r2, r9, r8
 8002bf4:	68b9      	ldr	r1, [r7, #8]
 8002bf6:	f042 0201 	orr.w	r2, r2, #1
 8002bfa:	604a      	str	r2, [r1, #4]
 8002bfc:	e6ec      	b.n	80029d8 <_malloc_r+0x29c>
 8002bfe:	f240 5254 	movw	r2, #1364	; 0x554
 8002c02:	4293      	cmp	r3, r2
 8002c04:	d81c      	bhi.n	8002c40 <_malloc_r+0x504>
 8002c06:	0cab      	lsrs	r3, r5, #18
 8002c08:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8002c0c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8002c10:	00c3      	lsls	r3, r0, #3
 8002c12:	e5d8      	b.n	80027c6 <_malloc_r+0x8a>
 8002c14:	2301      	movs	r3, #1
 8002c16:	f8cb 3004 	str.w	r3, [fp, #4]
 8002c1a:	e79b      	b.n	8002b54 <_malloc_r+0x418>
 8002c1c:	2101      	movs	r1, #1
 8002c1e:	f04f 0800 	mov.w	r8, #0
 8002c22:	e6ba      	b.n	800299a <_malloc_r+0x25e>
 8002c24:	4a16      	ldr	r2, [pc, #88]	; (8002c80 <_malloc_r+0x544>)
 8002c26:	6813      	ldr	r3, [r2, #0]
 8002c28:	4443      	add	r3, r8
 8002c2a:	6013      	str	r3, [r2, #0]
 8002c2c:	e68e      	b.n	800294c <_malloc_r+0x210>
 8002c2e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8002c32:	d814      	bhi.n	8002c5e <_malloc_r+0x522>
 8002c34:	0bda      	lsrs	r2, r3, #15
 8002c36:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8002c3a:	00c9      	lsls	r1, r1, #3
 8002c3c:	3277      	adds	r2, #119	; 0x77
 8002c3e:	e75e      	b.n	8002afe <_malloc_r+0x3c2>
 8002c40:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8002c44:	207f      	movs	r0, #127	; 0x7f
 8002c46:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8002c4a:	e5bc      	b.n	80027c6 <_malloc_r+0x8a>
 8002c4c:	f104 0108 	add.w	r1, r4, #8
 8002c50:	4630      	mov	r0, r6
 8002c52:	9201      	str	r2, [sp, #4]
 8002c54:	f003 f828 	bl	8005ca8 <_free_r>
 8002c58:	9a01      	ldr	r2, [sp, #4]
 8002c5a:	6813      	ldr	r3, [r2, #0]
 8002c5c:	e6bc      	b.n	80029d8 <_malloc_r+0x29c>
 8002c5e:	f240 5154 	movw	r1, #1364	; 0x554
 8002c62:	428a      	cmp	r2, r1
 8002c64:	d805      	bhi.n	8002c72 <_malloc_r+0x536>
 8002c66:	0c9a      	lsrs	r2, r3, #18
 8002c68:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8002c6c:	00c9      	lsls	r1, r1, #3
 8002c6e:	327c      	adds	r2, #124	; 0x7c
 8002c70:	e745      	b.n	8002afe <_malloc_r+0x3c2>
 8002c72:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8002c76:	227e      	movs	r2, #126	; 0x7e
 8002c78:	e741      	b.n	8002afe <_malloc_r+0x3c2>
 8002c7a:	687b      	ldr	r3, [r7, #4]
 8002c7c:	e785      	b.n	8002b8a <_malloc_r+0x44e>
 8002c7e:	bf00      	nop
 8002c80:	20000a6c 	.word	0x20000a6c

08002c84 <memset>:
 8002c84:	b4f0      	push	{r4, r5, r6, r7}
 8002c86:	0786      	lsls	r6, r0, #30
 8002c88:	d043      	beq.n	8002d12 <memset+0x8e>
 8002c8a:	1e54      	subs	r4, r2, #1
 8002c8c:	2a00      	cmp	r2, #0
 8002c8e:	d03e      	beq.n	8002d0e <memset+0x8a>
 8002c90:	b2ca      	uxtb	r2, r1
 8002c92:	4603      	mov	r3, r0
 8002c94:	e002      	b.n	8002c9c <memset+0x18>
 8002c96:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002c9a:	d338      	bcc.n	8002d0e <memset+0x8a>
 8002c9c:	f803 2b01 	strb.w	r2, [r3], #1
 8002ca0:	079d      	lsls	r5, r3, #30
 8002ca2:	d1f8      	bne.n	8002c96 <memset+0x12>
 8002ca4:	2c03      	cmp	r4, #3
 8002ca6:	d92b      	bls.n	8002d00 <memset+0x7c>
 8002ca8:	b2cd      	uxtb	r5, r1
 8002caa:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002cae:	2c0f      	cmp	r4, #15
 8002cb0:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002cb4:	d916      	bls.n	8002ce4 <memset+0x60>
 8002cb6:	f1a4 0710 	sub.w	r7, r4, #16
 8002cba:	093f      	lsrs	r7, r7, #4
 8002cbc:	f103 0620 	add.w	r6, r3, #32
 8002cc0:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002cc4:	f103 0210 	add.w	r2, r3, #16
 8002cc8:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002ccc:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002cd0:	3210      	adds	r2, #16
 8002cd2:	42b2      	cmp	r2, r6
 8002cd4:	d1f8      	bne.n	8002cc8 <memset+0x44>
 8002cd6:	f004 040f 	and.w	r4, r4, #15
 8002cda:	3701      	adds	r7, #1
 8002cdc:	2c03      	cmp	r4, #3
 8002cde:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002ce2:	d90d      	bls.n	8002d00 <memset+0x7c>
 8002ce4:	461e      	mov	r6, r3
 8002ce6:	4622      	mov	r2, r4
 8002ce8:	3a04      	subs	r2, #4
 8002cea:	2a03      	cmp	r2, #3
 8002cec:	f846 5b04 	str.w	r5, [r6], #4
 8002cf0:	d8fa      	bhi.n	8002ce8 <memset+0x64>
 8002cf2:	1f22      	subs	r2, r4, #4
 8002cf4:	f022 0203 	bic.w	r2, r2, #3
 8002cf8:	3204      	adds	r2, #4
 8002cfa:	4413      	add	r3, r2
 8002cfc:	f004 0403 	and.w	r4, r4, #3
 8002d00:	b12c      	cbz	r4, 8002d0e <memset+0x8a>
 8002d02:	b2c9      	uxtb	r1, r1
 8002d04:	441c      	add	r4, r3
 8002d06:	f803 1b01 	strb.w	r1, [r3], #1
 8002d0a:	429c      	cmp	r4, r3
 8002d0c:	d1fb      	bne.n	8002d06 <memset+0x82>
 8002d0e:	bcf0      	pop	{r4, r5, r6, r7}
 8002d10:	4770      	bx	lr
 8002d12:	4614      	mov	r4, r2
 8002d14:	4603      	mov	r3, r0
 8002d16:	e7c5      	b.n	8002ca4 <memset+0x20>

08002d18 <__malloc_lock>:
 8002d18:	4801      	ldr	r0, [pc, #4]	; (8002d20 <__malloc_lock+0x8>)
 8002d1a:	f003 ba73 	b.w	8006204 <__retarget_lock_acquire_recursive>
 8002d1e:	bf00      	nop
 8002d20:	20000af8 	.word	0x20000af8

08002d24 <__malloc_unlock>:
 8002d24:	4801      	ldr	r0, [pc, #4]	; (8002d2c <__malloc_unlock+0x8>)
 8002d26:	f003 ba6f 	b.w	8006208 <__retarget_lock_release_recursive>
 8002d2a:	bf00      	nop
 8002d2c:	20000af8 	.word	0x20000af8

08002d30 <printf>:
 8002d30:	b40f      	push	{r0, r1, r2, r3}
 8002d32:	b500      	push	{lr}
 8002d34:	4907      	ldr	r1, [pc, #28]	; (8002d54 <printf+0x24>)
 8002d36:	b083      	sub	sp, #12
 8002d38:	ab04      	add	r3, sp, #16
 8002d3a:	6808      	ldr	r0, [r1, #0]
 8002d3c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002d40:	6881      	ldr	r1, [r0, #8]
 8002d42:	9301      	str	r3, [sp, #4]
 8002d44:	f000 f870 	bl	8002e28 <_vfprintf_r>
 8002d48:	b003      	add	sp, #12
 8002d4a:	f85d eb04 	ldr.w	lr, [sp], #4
 8002d4e:	b004      	add	sp, #16
 8002d50:	4770      	bx	lr
 8002d52:	bf00      	nop
 8002d54:	2000001c 	.word	0x2000001c

08002d58 <_puts_r>:
 8002d58:	b570      	push	{r4, r5, r6, lr}
 8002d5a:	4605      	mov	r5, r0
 8002d5c:	b088      	sub	sp, #32
 8002d5e:	4608      	mov	r0, r1
 8002d60:	460c      	mov	r4, r1
 8002d62:	f7fd fccd 	bl	8000700 <strlen>
 8002d66:	4a22      	ldr	r2, [pc, #136]	; (8002df0 <_puts_r+0x98>)
 8002d68:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002d6a:	9404      	str	r4, [sp, #16]
 8002d6c:	2601      	movs	r6, #1
 8002d6e:	1c44      	adds	r4, r0, #1
 8002d70:	a904      	add	r1, sp, #16
 8002d72:	9206      	str	r2, [sp, #24]
 8002d74:	2202      	movs	r2, #2
 8002d76:	9403      	str	r4, [sp, #12]
 8002d78:	9005      	str	r0, [sp, #20]
 8002d7a:	68ac      	ldr	r4, [r5, #8]
 8002d7c:	9607      	str	r6, [sp, #28]
 8002d7e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002d82:	b31b      	cbz	r3, 8002dcc <_puts_r+0x74>
 8002d84:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002d86:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002d8a:	07ce      	lsls	r6, r1, #31
 8002d8c:	b29a      	uxth	r2, r3
 8002d8e:	d401      	bmi.n	8002d94 <_puts_r+0x3c>
 8002d90:	0590      	lsls	r0, r2, #22
 8002d92:	d525      	bpl.n	8002de0 <_puts_r+0x88>
 8002d94:	0491      	lsls	r1, r2, #18
 8002d96:	d406      	bmi.n	8002da6 <_puts_r+0x4e>
 8002d98:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002d9a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002d9e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002da2:	81a3      	strh	r3, [r4, #12]
 8002da4:	6662      	str	r2, [r4, #100]	; 0x64
 8002da6:	4628      	mov	r0, r5
 8002da8:	aa01      	add	r2, sp, #4
 8002daa:	4621      	mov	r1, r4
 8002dac:	f003 f870 	bl	8005e90 <__sfvwrite_r>
 8002db0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002db2:	2800      	cmp	r0, #0
 8002db4:	bf0c      	ite	eq
 8002db6:	250a      	moveq	r5, #10
 8002db8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002dbc:	07da      	lsls	r2, r3, #31
 8002dbe:	d402      	bmi.n	8002dc6 <_puts_r+0x6e>
 8002dc0:	89a3      	ldrh	r3, [r4, #12]
 8002dc2:	059b      	lsls	r3, r3, #22
 8002dc4:	d506      	bpl.n	8002dd4 <_puts_r+0x7c>
 8002dc6:	4628      	mov	r0, r5
 8002dc8:	b008      	add	sp, #32
 8002dca:	bd70      	pop	{r4, r5, r6, pc}
 8002dcc:	4628      	mov	r0, r5
 8002dce:	f002 fec9 	bl	8005b64 <__sinit>
 8002dd2:	e7d7      	b.n	8002d84 <_puts_r+0x2c>
 8002dd4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002dd6:	f003 fa17 	bl	8006208 <__retarget_lock_release_recursive>
 8002dda:	4628      	mov	r0, r5
 8002ddc:	b008      	add	sp, #32
 8002dde:	bd70      	pop	{r4, r5, r6, pc}
 8002de0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002de2:	f003 fa0f 	bl	8006204 <__retarget_lock_acquire_recursive>
 8002de6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002dea:	b29a      	uxth	r2, r3
 8002dec:	e7d2      	b.n	8002d94 <_puts_r+0x3c>
 8002dee:	bf00      	nop
 8002df0:	080075bc 	.word	0x080075bc

08002df4 <puts>:
 8002df4:	4b02      	ldr	r3, [pc, #8]	; (8002e00 <puts+0xc>)
 8002df6:	4601      	mov	r1, r0
 8002df8:	6818      	ldr	r0, [r3, #0]
 8002dfa:	f7ff bfad 	b.w	8002d58 <_puts_r>
 8002dfe:	bf00      	nop
 8002e00:	2000001c 	.word	0x2000001c

08002e04 <_sbrk_r>:
 8002e04:	b538      	push	{r3, r4, r5, lr}
 8002e06:	4c07      	ldr	r4, [pc, #28]	; (8002e24 <_sbrk_r+0x20>)
 8002e08:	2300      	movs	r3, #0
 8002e0a:	4605      	mov	r5, r0
 8002e0c:	4608      	mov	r0, r1
 8002e0e:	6023      	str	r3, [r4, #0]
 8002e10:	f7ff fbdb 	bl	80025ca <_sbrk>
 8002e14:	1c43      	adds	r3, r0, #1
 8002e16:	d000      	beq.n	8002e1a <_sbrk_r+0x16>
 8002e18:	bd38      	pop	{r3, r4, r5, pc}
 8002e1a:	6823      	ldr	r3, [r4, #0]
 8002e1c:	2b00      	cmp	r3, #0
 8002e1e:	d0fb      	beq.n	8002e18 <_sbrk_r+0x14>
 8002e20:	602b      	str	r3, [r5, #0]
 8002e22:	bd38      	pop	{r3, r4, r5, pc}
 8002e24:	20000b0c 	.word	0x20000b0c

08002e28 <_vfprintf_r>:
 8002e28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002e2c:	b0d7      	sub	sp, #348	; 0x15c
 8002e2e:	461c      	mov	r4, r3
 8002e30:	4689      	mov	r9, r1
 8002e32:	4617      	mov	r7, r2
 8002e34:	4605      	mov	r5, r0
 8002e36:	9003      	str	r0, [sp, #12]
 8002e38:	f003 f9d2 	bl	80061e0 <_localeconv_r>
 8002e3c:	6803      	ldr	r3, [r0, #0]
 8002e3e:	9316      	str	r3, [sp, #88]	; 0x58
 8002e40:	4618      	mov	r0, r3
 8002e42:	f7fd fc5d 	bl	8000700 <strlen>
 8002e46:	9408      	str	r4, [sp, #32]
 8002e48:	9015      	str	r0, [sp, #84]	; 0x54
 8002e4a:	b11d      	cbz	r5, 8002e54 <_vfprintf_r+0x2c>
 8002e4c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002e4e:	2b00      	cmp	r3, #0
 8002e50:	f000 8107 	beq.w	8003062 <_vfprintf_r+0x23a>
 8002e54:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002e58:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002e5c:	07c8      	lsls	r0, r1, #31
 8002e5e:	b293      	uxth	r3, r2
 8002e60:	d402      	bmi.n	8002e68 <_vfprintf_r+0x40>
 8002e62:	0599      	lsls	r1, r3, #22
 8002e64:	f140 811f 	bpl.w	80030a6 <_vfprintf_r+0x27e>
 8002e68:	049e      	lsls	r6, r3, #18
 8002e6a:	d40a      	bmi.n	8002e82 <_vfprintf_r+0x5a>
 8002e6c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002e70:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002e74:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002e78:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002e7c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002e80:	b29b      	uxth	r3, r3
 8002e82:	071d      	lsls	r5, r3, #28
 8002e84:	f140 80b2 	bpl.w	8002fec <_vfprintf_r+0x1c4>
 8002e88:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002e8c:	2a00      	cmp	r2, #0
 8002e8e:	f000 80ad 	beq.w	8002fec <_vfprintf_r+0x1c4>
 8002e92:	f003 021a 	and.w	r2, r3, #26
 8002e96:	2a0a      	cmp	r2, #10
 8002e98:	f000 80c9 	beq.w	800302e <_vfprintf_r+0x206>
 8002e9c:	2300      	movs	r3, #0
 8002e9e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80030b8 <_vfprintf_r+0x290>
 8002ea2:	9310      	str	r3, [sp, #64]	; 0x40
 8002ea4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002ea8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002eaa:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002eae:	931b      	str	r3, [sp, #108]	; 0x6c
 8002eb0:	9318      	str	r3, [sp, #96]	; 0x60
 8002eb2:	9305      	str	r3, [sp, #20]
 8002eb4:	ab2d      	add	r3, sp, #180	; 0xb4
 8002eb6:	932a      	str	r3, [sp, #168]	; 0xa8
 8002eb8:	469b      	mov	fp, r3
 8002eba:	783b      	ldrb	r3, [r7, #0]
 8002ebc:	f8cd 901c 	str.w	r9, [sp, #28]
 8002ec0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002ec4:	2b00      	cmp	r3, #0
 8002ec6:	f000 8259 	beq.w	800337c <_vfprintf_r+0x554>
 8002eca:	2b25      	cmp	r3, #37	; 0x25
 8002ecc:	463c      	mov	r4, r7
 8002ece:	d102      	bne.n	8002ed6 <_vfprintf_r+0xae>
 8002ed0:	e01d      	b.n	8002f0e <_vfprintf_r+0xe6>
 8002ed2:	2b25      	cmp	r3, #37	; 0x25
 8002ed4:	d003      	beq.n	8002ede <_vfprintf_r+0xb6>
 8002ed6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002eda:	2b00      	cmp	r3, #0
 8002edc:	d1f9      	bne.n	8002ed2 <_vfprintf_r+0xaa>
 8002ede:	1be5      	subs	r5, r4, r7
 8002ee0:	b18d      	cbz	r5, 8002f06 <_vfprintf_r+0xde>
 8002ee2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002ee6:	3301      	adds	r3, #1
 8002ee8:	442a      	add	r2, r5
 8002eea:	2b07      	cmp	r3, #7
 8002eec:	f8cb 7000 	str.w	r7, [fp]
 8002ef0:	f8cb 5004 	str.w	r5, [fp, #4]
 8002ef4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002ef8:	f300 80ca 	bgt.w	8003090 <_vfprintf_r+0x268>
 8002efc:	f10b 0b08 	add.w	fp, fp, #8
 8002f00:	9b05      	ldr	r3, [sp, #20]
 8002f02:	442b      	add	r3, r5
 8002f04:	9305      	str	r3, [sp, #20]
 8002f06:	7823      	ldrb	r3, [r4, #0]
 8002f08:	2b00      	cmp	r3, #0
 8002f0a:	f000 8237 	beq.w	800337c <_vfprintf_r+0x554>
 8002f0e:	2300      	movs	r3, #0
 8002f10:	7866      	ldrb	r6, [r4, #1]
 8002f12:	9306      	str	r3, [sp, #24]
 8002f14:	4698      	mov	r8, r3
 8002f16:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002f1a:	f104 0a01 	add.w	sl, r4, #1
 8002f1e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002f22:	252b      	movs	r5, #43	; 0x2b
 8002f24:	f10a 0a01 	add.w	sl, sl, #1
 8002f28:	f1a6 0320 	sub.w	r3, r6, #32
 8002f2c:	2b5a      	cmp	r3, #90	; 0x5a
 8002f2e:	f200 842a 	bhi.w	8003786 <_vfprintf_r+0x95e>
 8002f32:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002f36:	03aa      	.short	0x03aa
 8002f38:	04280428 	.word	0x04280428
 8002f3c:	0428029c 	.word	0x0428029c
 8002f40:	04280428 	.word	0x04280428
 8002f44:	042802a7 	.word	0x042802a7
 8002f48:	02c60428 	.word	0x02c60428
 8002f4c:	042802d2 	.word	0x042802d2
 8002f50:	02dc02d7 	.word	0x02dc02d7
 8002f54:	02f60428 	.word	0x02f60428
 8002f58:	026d026d 	.word	0x026d026d
 8002f5c:	026d026d 	.word	0x026d026d
 8002f60:	026d026d 	.word	0x026d026d
 8002f64:	026d026d 	.word	0x026d026d
 8002f68:	0428026d 	.word	0x0428026d
 8002f6c:	04280428 	.word	0x04280428
 8002f70:	04280428 	.word	0x04280428
 8002f74:	04280428 	.word	0x04280428
 8002f78:	042802fb 	.word	0x042802fb
 8002f7c:	03f3033c 	.word	0x03f3033c
 8002f80:	02fb02fb 	.word	0x02fb02fb
 8002f84:	042802fb 	.word	0x042802fb
 8002f88:	04280428 	.word	0x04280428
 8002f8c:	03ee0428 	.word	0x03ee0428
 8002f90:	04280428 	.word	0x04280428
 8002f94:	0428009a 	.word	0x0428009a
 8002f98:	04280428 	.word	0x04280428
 8002f9c:	04280350 	.word	0x04280350
 8002fa0:	04280379 	.word	0x04280379
 8002fa4:	03900428 	.word	0x03900428
 8002fa8:	04280428 	.word	0x04280428
 8002fac:	04280428 	.word	0x04280428
 8002fb0:	04280428 	.word	0x04280428
 8002fb4:	04280428 	.word	0x04280428
 8002fb8:	042802fb 	.word	0x042802fb
 8002fbc:	00c5033c 	.word	0x00c5033c
 8002fc0:	02fb02fb 	.word	0x02fb02fb
 8002fc4:	03d102fb 	.word	0x03d102fb
 8002fc8:	007000c5 	.word	0x007000c5
 8002fcc:	03b50428 	.word	0x03b50428
 8002fd0:	03c20428 	.word	0x03c20428
 8002fd4:	03de009c 	.word	0x03de009c
 8002fd8:	04280070 	.word	0x04280070
 8002fdc:	00720350 	.word	0x00720350
 8002fe0:	0428022c 	.word	0x0428022c
 8002fe4:	027c0428 	.word	0x027c0428
 8002fe8:	00720428 	.word	0x00720428
 8002fec:	4649      	mov	r1, r9
 8002fee:	9803      	ldr	r0, [sp, #12]
 8002ff0:	f001 fc9a 	bl	8004928 <__swsetup_r>
 8002ff4:	b1a0      	cbz	r0, 8003020 <_vfprintf_r+0x1f8>
 8002ff6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002ffa:	07d8      	lsls	r0, r3, #31
 8002ffc:	d404      	bmi.n	8003008 <_vfprintf_r+0x1e0>
 8002ffe:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003002:	0599      	lsls	r1, r3, #22
 8003004:	f140 83b7 	bpl.w	8003776 <_vfprintf_r+0x94e>
 8003008:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800300c:	9305      	str	r3, [sp, #20]
 800300e:	9805      	ldr	r0, [sp, #20]
 8003010:	b057      	add	sp, #348	; 0x15c
 8003012:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003016:	f048 0820 	orr.w	r8, r8, #32
 800301a:	f89a 6000 	ldrb.w	r6, [sl]
 800301e:	e781      	b.n	8002f24 <_vfprintf_r+0xfc>
 8003020:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003024:	f003 021a 	and.w	r2, r3, #26
 8003028:	2a0a      	cmp	r2, #10
 800302a:	f47f af37 	bne.w	8002e9c <_vfprintf_r+0x74>
 800302e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8003032:	2a00      	cmp	r2, #0
 8003034:	f6ff af32 	blt.w	8002e9c <_vfprintf_r+0x74>
 8003038:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800303c:	07d2      	lsls	r2, r2, #31
 800303e:	d405      	bmi.n	800304c <_vfprintf_r+0x224>
 8003040:	059b      	lsls	r3, r3, #22
 8003042:	d403      	bmi.n	800304c <_vfprintf_r+0x224>
 8003044:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003048:	f003 f8de 	bl	8006208 <__retarget_lock_release_recursive>
 800304c:	4623      	mov	r3, r4
 800304e:	463a      	mov	r2, r7
 8003050:	4649      	mov	r1, r9
 8003052:	9803      	ldr	r0, [sp, #12]
 8003054:	f001 fc26 	bl	80048a4 <__sbprintf>
 8003058:	9005      	str	r0, [sp, #20]
 800305a:	9805      	ldr	r0, [sp, #20]
 800305c:	b057      	add	sp, #348	; 0x15c
 800305e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003062:	9803      	ldr	r0, [sp, #12]
 8003064:	f002 fd7e 	bl	8005b64 <__sinit>
 8003068:	e6f4      	b.n	8002e54 <_vfprintf_r+0x2c>
 800306a:	f048 0810 	orr.w	r8, r8, #16
 800306e:	f018 0f20 	tst.w	r8, #32
 8003072:	f000 836c 	beq.w	800374e <_vfprintf_r+0x926>
 8003076:	9c08      	ldr	r4, [sp, #32]
 8003078:	3407      	adds	r4, #7
 800307a:	f024 0307 	bic.w	r3, r4, #7
 800307e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003082:	f103 0208 	add.w	r2, r3, #8
 8003086:	9208      	str	r2, [sp, #32]
 8003088:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800308c:	2200      	movs	r2, #0
 800308e:	e18c      	b.n	80033aa <_vfprintf_r+0x582>
 8003090:	aa2a      	add	r2, sp, #168	; 0xa8
 8003092:	9907      	ldr	r1, [sp, #28]
 8003094:	9803      	ldr	r0, [sp, #12]
 8003096:	f003 ff33 	bl	8006f00 <__sprint_r>
 800309a:	2800      	cmp	r0, #0
 800309c:	f041 8376 	bne.w	800478c <_vfprintf_r+0x1964>
 80030a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030a4:	e72c      	b.n	8002f00 <_vfprintf_r+0xd8>
 80030a6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80030aa:	f003 f8ab 	bl	8006204 <__retarget_lock_acquire_recursive>
 80030ae:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80030b2:	b293      	uxth	r3, r2
 80030b4:	e6d8      	b.n	8002e68 <_vfprintf_r+0x40>
 80030b6:	bf00      	nop
	...
 80030c0:	4643      	mov	r3, r8
 80030c2:	069f      	lsls	r7, r3, #26
 80030c4:	f140 832f 	bpl.w	8003726 <_vfprintf_r+0x8fe>
 80030c8:	9c08      	ldr	r4, [sp, #32]
 80030ca:	3407      	adds	r4, #7
 80030cc:	f024 0407 	bic.w	r4, r4, #7
 80030d0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80030d4:	f104 0208 	add.w	r2, r4, #8
 80030d8:	9208      	str	r2, [sp, #32]
 80030da:	4604      	mov	r4, r0
 80030dc:	460d      	mov	r5, r1
 80030de:	2800      	cmp	r0, #0
 80030e0:	f171 0200 	sbcs.w	r2, r1, #0
 80030e4:	da05      	bge.n	80030f2 <_vfprintf_r+0x2ca>
 80030e6:	222d      	movs	r2, #45	; 0x2d
 80030e8:	4264      	negs	r4, r4
 80030ea:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80030ee:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80030f2:	aa56      	add	r2, sp, #344	; 0x158
 80030f4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80030f8:	9204      	str	r2, [sp, #16]
 80030fa:	f000 84b2 	beq.w	8003a62 <_vfprintf_r+0xc3a>
 80030fe:	2201      	movs	r2, #1
 8003100:	ea54 0105 	orrs.w	r1, r4, r5
 8003104:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8003108:	f040 8159 	bne.w	80033be <_vfprintf_r+0x596>
 800310c:	f1b9 0f00 	cmp.w	r9, #0
 8003110:	f040 8619 	bne.w	8003d46 <_vfprintf_r+0xf1e>
 8003114:	2a00      	cmp	r2, #0
 8003116:	f040 8508 	bne.w	8003b2a <_vfprintf_r+0xd02>
 800311a:	f013 0301 	ands.w	r3, r3, #1
 800311e:	af56      	add	r7, sp, #344	; 0x158
 8003120:	9309      	str	r3, [sp, #36]	; 0x24
 8003122:	d002      	beq.n	800312a <_vfprintf_r+0x302>
 8003124:	2330      	movs	r3, #48	; 0x30
 8003126:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800312a:	2300      	movs	r3, #0
 800312c:	930a      	str	r3, [sp, #40]	; 0x28
 800312e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003130:	9314      	str	r3, [sp, #80]	; 0x50
 8003132:	9311      	str	r3, [sp, #68]	; 0x44
 8003134:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003136:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800313a:	454b      	cmp	r3, r9
 800313c:	bfb8      	it	lt
 800313e:	464b      	movlt	r3, r9
 8003140:	9304      	str	r3, [sp, #16]
 8003142:	b112      	cbz	r2, 800314a <_vfprintf_r+0x322>
 8003144:	9b04      	ldr	r3, [sp, #16]
 8003146:	3301      	adds	r3, #1
 8003148:	9304      	str	r3, [sp, #16]
 800314a:	f018 0302 	ands.w	r3, r8, #2
 800314e:	930b      	str	r3, [sp, #44]	; 0x2c
 8003150:	d002      	beq.n	8003158 <_vfprintf_r+0x330>
 8003152:	9b04      	ldr	r3, [sp, #16]
 8003154:	3302      	adds	r3, #2
 8003156:	9304      	str	r3, [sp, #16]
 8003158:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800315c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800315e:	930e      	str	r3, [sp, #56]	; 0x38
 8003160:	d13f      	bne.n	80031e2 <_vfprintf_r+0x3ba>
 8003162:	9b06      	ldr	r3, [sp, #24]
 8003164:	9904      	ldr	r1, [sp, #16]
 8003166:	1a5d      	subs	r5, r3, r1
 8003168:	2d00      	cmp	r5, #0
 800316a:	dd3a      	ble.n	80031e2 <_vfprintf_r+0x3ba>
 800316c:	2d10      	cmp	r5, #16
 800316e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003170:	dd29      	ble.n	80031c6 <_vfprintf_r+0x39e>
 8003172:	4659      	mov	r1, fp
 8003174:	4620      	mov	r0, r4
 8003176:	9620      	str	r6, [sp, #128]	; 0x80
 8003178:	2310      	movs	r3, #16
 800317a:	9c03      	ldr	r4, [sp, #12]
 800317c:	9e07      	ldr	r6, [sp, #28]
 800317e:	46bb      	mov	fp, r7
 8003180:	e004      	b.n	800318c <_vfprintf_r+0x364>
 8003182:	3d10      	subs	r5, #16
 8003184:	2d10      	cmp	r5, #16
 8003186:	f101 0108 	add.w	r1, r1, #8
 800318a:	dd18      	ble.n	80031be <_vfprintf_r+0x396>
 800318c:	3201      	adds	r2, #1
 800318e:	4fba      	ldr	r7, [pc, #744]	; (8003478 <_vfprintf_r+0x650>)
 8003190:	3010      	adds	r0, #16
 8003192:	2a07      	cmp	r2, #7
 8003194:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003198:	e9c1 7300 	strd	r7, r3, [r1]
 800319c:	ddf1      	ble.n	8003182 <_vfprintf_r+0x35a>
 800319e:	aa2a      	add	r2, sp, #168	; 0xa8
 80031a0:	4631      	mov	r1, r6
 80031a2:	4620      	mov	r0, r4
 80031a4:	930c      	str	r3, [sp, #48]	; 0x30
 80031a6:	f003 feab 	bl	8006f00 <__sprint_r>
 80031aa:	2800      	cmp	r0, #0
 80031ac:	f040 843d 	bne.w	8003a2a <_vfprintf_r+0xc02>
 80031b0:	3d10      	subs	r5, #16
 80031b2:	2d10      	cmp	r5, #16
 80031b4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80031b8:	a92d      	add	r1, sp, #180	; 0xb4
 80031ba:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80031bc:	dce6      	bgt.n	800318c <_vfprintf_r+0x364>
 80031be:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80031c0:	465f      	mov	r7, fp
 80031c2:	4604      	mov	r4, r0
 80031c4:	468b      	mov	fp, r1
 80031c6:	3201      	adds	r2, #1
 80031c8:	4bab      	ldr	r3, [pc, #684]	; (8003478 <_vfprintf_r+0x650>)
 80031ca:	442c      	add	r4, r5
 80031cc:	2a07      	cmp	r2, #7
 80031ce:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80031d2:	e9cb 3500 	strd	r3, r5, [fp]
 80031d6:	f300 84ff 	bgt.w	8003bd8 <_vfprintf_r+0xdb0>
 80031da:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031de:	f10b 0b08 	add.w	fp, fp, #8
 80031e2:	b172      	cbz	r2, 8003202 <_vfprintf_r+0x3da>
 80031e4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031e6:	3201      	adds	r2, #1
 80031e8:	3401      	adds	r4, #1
 80031ea:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80031ee:	2101      	movs	r1, #1
 80031f0:	2a07      	cmp	r2, #7
 80031f2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80031f6:	e9cb 0100 	strd	r0, r1, [fp]
 80031fa:	f300 8418 	bgt.w	8003a2e <_vfprintf_r+0xc06>
 80031fe:	f10b 0b08 	add.w	fp, fp, #8
 8003202:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003204:	b16b      	cbz	r3, 8003222 <_vfprintf_r+0x3fa>
 8003206:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003208:	3301      	adds	r3, #1
 800320a:	3402      	adds	r4, #2
 800320c:	a923      	add	r1, sp, #140	; 0x8c
 800320e:	2202      	movs	r2, #2
 8003210:	2b07      	cmp	r3, #7
 8003212:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003216:	e9cb 1200 	strd	r1, r2, [fp]
 800321a:	f300 8415 	bgt.w	8003a48 <_vfprintf_r+0xc20>
 800321e:	f10b 0b08 	add.w	fp, fp, #8
 8003222:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003224:	2b80      	cmp	r3, #128	; 0x80
 8003226:	f000 8331 	beq.w	800388c <_vfprintf_r+0xa64>
 800322a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800322c:	eba9 0503 	sub.w	r5, r9, r3
 8003230:	2d00      	cmp	r5, #0
 8003232:	dd37      	ble.n	80032a4 <_vfprintf_r+0x47c>
 8003234:	2d10      	cmp	r5, #16
 8003236:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003238:	4b90      	ldr	r3, [pc, #576]	; (800347c <_vfprintf_r+0x654>)
 800323a:	dd28      	ble.n	800328e <_vfprintf_r+0x466>
 800323c:	4659      	mov	r1, fp
 800323e:	4620      	mov	r0, r4
 8003240:	46bb      	mov	fp, r7
 8003242:	f04f 0910 	mov.w	r9, #16
 8003246:	4637      	mov	r7, r6
 8003248:	461c      	mov	r4, r3
 800324a:	9e07      	ldr	r6, [sp, #28]
 800324c:	e004      	b.n	8003258 <_vfprintf_r+0x430>
 800324e:	3d10      	subs	r5, #16
 8003250:	2d10      	cmp	r5, #16
 8003252:	f101 0108 	add.w	r1, r1, #8
 8003256:	dd15      	ble.n	8003284 <_vfprintf_r+0x45c>
 8003258:	3201      	adds	r2, #1
 800325a:	3010      	adds	r0, #16
 800325c:	2a07      	cmp	r2, #7
 800325e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003262:	e9c1 4900 	strd	r4, r9, [r1]
 8003266:	ddf2      	ble.n	800324e <_vfprintf_r+0x426>
 8003268:	aa2a      	add	r2, sp, #168	; 0xa8
 800326a:	4631      	mov	r1, r6
 800326c:	9803      	ldr	r0, [sp, #12]
 800326e:	f003 fe47 	bl	8006f00 <__sprint_r>
 8003272:	2800      	cmp	r0, #0
 8003274:	f040 83d9 	bne.w	8003a2a <_vfprintf_r+0xc02>
 8003278:	3d10      	subs	r5, #16
 800327a:	2d10      	cmp	r5, #16
 800327c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003280:	a92d      	add	r1, sp, #180	; 0xb4
 8003282:	dce9      	bgt.n	8003258 <_vfprintf_r+0x430>
 8003284:	463e      	mov	r6, r7
 8003286:	4623      	mov	r3, r4
 8003288:	465f      	mov	r7, fp
 800328a:	4604      	mov	r4, r0
 800328c:	468b      	mov	fp, r1
 800328e:	3201      	adds	r2, #1
 8003290:	442c      	add	r4, r5
 8003292:	2a07      	cmp	r2, #7
 8003294:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003298:	e9cb 3500 	strd	r3, r5, [fp]
 800329c:	f300 83ef 	bgt.w	8003a7e <_vfprintf_r+0xc56>
 80032a0:	f10b 0b08 	add.w	fp, fp, #8
 80032a4:	f418 7f80 	tst.w	r8, #256	; 0x100
 80032a8:	f040 8280 	bne.w	80037ac <_vfprintf_r+0x984>
 80032ac:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032ae:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80032b0:	f8cb 7000 	str.w	r7, [fp]
 80032b4:	3301      	adds	r3, #1
 80032b6:	4414      	add	r4, r2
 80032b8:	2b07      	cmp	r3, #7
 80032ba:	942c      	str	r4, [sp, #176]	; 0xb0
 80032bc:	f8cb 2004 	str.w	r2, [fp, #4]
 80032c0:	932b      	str	r3, [sp, #172]	; 0xac
 80032c2:	f300 8392 	bgt.w	80039ea <_vfprintf_r+0xbc2>
 80032c6:	f10b 0b08 	add.w	fp, fp, #8
 80032ca:	f018 0f04 	tst.w	r8, #4
 80032ce:	d03b      	beq.n	8003348 <_vfprintf_r+0x520>
 80032d0:	9b06      	ldr	r3, [sp, #24]
 80032d2:	9a04      	ldr	r2, [sp, #16]
 80032d4:	1a9d      	subs	r5, r3, r2
 80032d6:	2d00      	cmp	r5, #0
 80032d8:	dd36      	ble.n	8003348 <_vfprintf_r+0x520>
 80032da:	2d10      	cmp	r5, #16
 80032dc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032de:	dd21      	ble.n	8003324 <_vfprintf_r+0x4fc>
 80032e0:	2610      	movs	r6, #16
 80032e2:	9f03      	ldr	r7, [sp, #12]
 80032e4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80032e8:	e004      	b.n	80032f4 <_vfprintf_r+0x4cc>
 80032ea:	3d10      	subs	r5, #16
 80032ec:	2d10      	cmp	r5, #16
 80032ee:	f10b 0b08 	add.w	fp, fp, #8
 80032f2:	dd17      	ble.n	8003324 <_vfprintf_r+0x4fc>
 80032f4:	3301      	adds	r3, #1
 80032f6:	4a60      	ldr	r2, [pc, #384]	; (8003478 <_vfprintf_r+0x650>)
 80032f8:	3410      	adds	r4, #16
 80032fa:	2b07      	cmp	r3, #7
 80032fc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003300:	e9cb 2600 	strd	r2, r6, [fp]
 8003304:	ddf1      	ble.n	80032ea <_vfprintf_r+0x4c2>
 8003306:	aa2a      	add	r2, sp, #168	; 0xa8
 8003308:	4641      	mov	r1, r8
 800330a:	4638      	mov	r0, r7
 800330c:	f003 fdf8 	bl	8006f00 <__sprint_r>
 8003310:	2800      	cmp	r0, #0
 8003312:	f040 856c 	bne.w	8003dee <_vfprintf_r+0xfc6>
 8003316:	3d10      	subs	r5, #16
 8003318:	2d10      	cmp	r5, #16
 800331a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800331e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003322:	dce7      	bgt.n	80032f4 <_vfprintf_r+0x4cc>
 8003324:	3301      	adds	r3, #1
 8003326:	4a54      	ldr	r2, [pc, #336]	; (8003478 <_vfprintf_r+0x650>)
 8003328:	442c      	add	r4, r5
 800332a:	2b07      	cmp	r3, #7
 800332c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003330:	e9cb 2500 	strd	r2, r5, [fp]
 8003334:	dd08      	ble.n	8003348 <_vfprintf_r+0x520>
 8003336:	aa2a      	add	r2, sp, #168	; 0xa8
 8003338:	9907      	ldr	r1, [sp, #28]
 800333a:	9803      	ldr	r0, [sp, #12]
 800333c:	f003 fde0 	bl	8006f00 <__sprint_r>
 8003340:	2800      	cmp	r0, #0
 8003342:	f040 82e9 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003346:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003348:	9904      	ldr	r1, [sp, #16]
 800334a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800334e:	428a      	cmp	r2, r1
 8003350:	bfac      	ite	ge
 8003352:	189b      	addge	r3, r3, r2
 8003354:	185b      	addlt	r3, r3, r1
 8003356:	9305      	str	r3, [sp, #20]
 8003358:	2c00      	cmp	r4, #0
 800335a:	f040 82d5 	bne.w	8003908 <_vfprintf_r+0xae0>
 800335e:	2300      	movs	r3, #0
 8003360:	932b      	str	r3, [sp, #172]	; 0xac
 8003362:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003364:	b11b      	cbz	r3, 800336e <_vfprintf_r+0x546>
 8003366:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003368:	9803      	ldr	r0, [sp, #12]
 800336a:	f002 fc9d 	bl	8005ca8 <_free_r>
 800336e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003372:	4657      	mov	r7, sl
 8003374:	783b      	ldrb	r3, [r7, #0]
 8003376:	2b00      	cmp	r3, #0
 8003378:	f47f ada7 	bne.w	8002eca <_vfprintf_r+0xa2>
 800337c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800337e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003382:	2b00      	cmp	r3, #0
 8003384:	f041 80e7 	bne.w	8004556 <_vfprintf_r+0x172e>
 8003388:	2300      	movs	r3, #0
 800338a:	932b      	str	r3, [sp, #172]	; 0xac
 800338c:	e2cb      	b.n	8003926 <_vfprintf_r+0xafe>
 800338e:	4643      	mov	r3, r8
 8003390:	069a      	lsls	r2, r3, #26
 8003392:	f140 814e 	bpl.w	8003632 <_vfprintf_r+0x80a>
 8003396:	9c08      	ldr	r4, [sp, #32]
 8003398:	3407      	adds	r4, #7
 800339a:	f024 0207 	bic.w	r2, r4, #7
 800339e:	f102 0108 	add.w	r1, r2, #8
 80033a2:	e9d2 4500 	ldrd	r4, r5, [r2]
 80033a6:	9108      	str	r1, [sp, #32]
 80033a8:	2201      	movs	r2, #1
 80033aa:	2100      	movs	r1, #0
 80033ac:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80033b0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80033b4:	a956      	add	r1, sp, #344	; 0x158
 80033b6:	9104      	str	r1, [sp, #16]
 80033b8:	f47f aea2 	bne.w	8003100 <_vfprintf_r+0x2d8>
 80033bc:	4698      	mov	r8, r3
 80033be:	2a01      	cmp	r2, #1
 80033c0:	f000 8350 	beq.w	8003a64 <_vfprintf_r+0xc3c>
 80033c4:	2a02      	cmp	r2, #2
 80033c6:	f000 831b 	beq.w	8003a00 <_vfprintf_r+0xbd8>
 80033ca:	a956      	add	r1, sp, #344	; 0x158
 80033cc:	e000      	b.n	80033d0 <_vfprintf_r+0x5a8>
 80033ce:	4639      	mov	r1, r7
 80033d0:	08e2      	lsrs	r2, r4, #3
 80033d2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80033d6:	08e8      	lsrs	r0, r5, #3
 80033d8:	f004 0307 	and.w	r3, r4, #7
 80033dc:	4605      	mov	r5, r0
 80033de:	4614      	mov	r4, r2
 80033e0:	3330      	adds	r3, #48	; 0x30
 80033e2:	ea54 0205 	orrs.w	r2, r4, r5
 80033e6:	f801 3c01 	strb.w	r3, [r1, #-1]
 80033ea:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80033ee:	d1ee      	bne.n	80033ce <_vfprintf_r+0x5a6>
 80033f0:	f018 0f01 	tst.w	r8, #1
 80033f4:	f000 8314 	beq.w	8003a20 <_vfprintf_r+0xbf8>
 80033f8:	2b30      	cmp	r3, #48	; 0x30
 80033fa:	f000 8311 	beq.w	8003a20 <_vfprintf_r+0xbf8>
 80033fe:	9a04      	ldr	r2, [sp, #16]
 8003400:	3902      	subs	r1, #2
 8003402:	2330      	movs	r3, #48	; 0x30
 8003404:	1a52      	subs	r2, r2, r1
 8003406:	f807 3c01 	strb.w	r3, [r7, #-1]
 800340a:	9209      	str	r2, [sp, #36]	; 0x24
 800340c:	460f      	mov	r7, r1
 800340e:	e68c      	b.n	800312a <_vfprintf_r+0x302>
 8003410:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003414:	2200      	movs	r2, #0
 8003416:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800341a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800341e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003422:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003426:	2b09      	cmp	r3, #9
 8003428:	d9f5      	bls.n	8003416 <_vfprintf_r+0x5ee>
 800342a:	9206      	str	r2, [sp, #24]
 800342c:	e57c      	b.n	8002f28 <_vfprintf_r+0x100>
 800342e:	4b14      	ldr	r3, [pc, #80]	; (8003480 <_vfprintf_r+0x658>)
 8003430:	9317      	str	r3, [sp, #92]	; 0x5c
 8003432:	f018 0f20 	tst.w	r8, #32
 8003436:	f000 8114 	beq.w	8003662 <_vfprintf_r+0x83a>
 800343a:	9c08      	ldr	r4, [sp, #32]
 800343c:	3407      	adds	r4, #7
 800343e:	f024 0307 	bic.w	r3, r4, #7
 8003442:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003446:	f103 0208 	add.w	r2, r3, #8
 800344a:	9208      	str	r2, [sp, #32]
 800344c:	f018 0f01 	tst.w	r8, #1
 8003450:	d009      	beq.n	8003466 <_vfprintf_r+0x63e>
 8003452:	ea54 0305 	orrs.w	r3, r4, r5
 8003456:	d006      	beq.n	8003466 <_vfprintf_r+0x63e>
 8003458:	2330      	movs	r3, #48	; 0x30
 800345a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800345e:	f048 0802 	orr.w	r8, r8, #2
 8003462:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003466:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800346a:	2202      	movs	r2, #2
 800346c:	e79d      	b.n	80033aa <_vfprintf_r+0x582>
 800346e:	f048 0801 	orr.w	r8, r8, #1
 8003472:	f89a 6000 	ldrb.w	r6, [sl]
 8003476:	e555      	b.n	8002f24 <_vfprintf_r+0xfc>
 8003478:	08007604 	.word	0x08007604
 800347c:	08007614 	.word	0x08007614
 8003480:	080075d0 	.word	0x080075d0
 8003484:	9e03      	ldr	r6, [sp, #12]
 8003486:	4630      	mov	r0, r6
 8003488:	f002 feaa 	bl	80061e0 <_localeconv_r>
 800348c:	6843      	ldr	r3, [r0, #4]
 800348e:	9318      	str	r3, [sp, #96]	; 0x60
 8003490:	4618      	mov	r0, r3
 8003492:	f7fd f935 	bl	8000700 <strlen>
 8003496:	901b      	str	r0, [sp, #108]	; 0x6c
 8003498:	4604      	mov	r4, r0
 800349a:	4630      	mov	r0, r6
 800349c:	f002 fea0 	bl	80061e0 <_localeconv_r>
 80034a0:	6883      	ldr	r3, [r0, #8]
 80034a2:	931a      	str	r3, [sp, #104]	; 0x68
 80034a4:	2c00      	cmp	r4, #0
 80034a6:	f43f adb8 	beq.w	800301a <_vfprintf_r+0x1f2>
 80034aa:	f89a 6000 	ldrb.w	r6, [sl]
 80034ae:	2b00      	cmp	r3, #0
 80034b0:	f43f ad38 	beq.w	8002f24 <_vfprintf_r+0xfc>
 80034b4:	781b      	ldrb	r3, [r3, #0]
 80034b6:	2b00      	cmp	r3, #0
 80034b8:	f43f ad34 	beq.w	8002f24 <_vfprintf_r+0xfc>
 80034bc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80034c0:	e530      	b.n	8002f24 <_vfprintf_r+0xfc>
 80034c2:	9b08      	ldr	r3, [sp, #32]
 80034c4:	f89a 6000 	ldrb.w	r6, [sl]
 80034c8:	681a      	ldr	r2, [r3, #0]
 80034ca:	9206      	str	r2, [sp, #24]
 80034cc:	2a00      	cmp	r2, #0
 80034ce:	f103 0304 	add.w	r3, r3, #4
 80034d2:	f2c0 8697 	blt.w	8004204 <_vfprintf_r+0x13dc>
 80034d6:	9308      	str	r3, [sp, #32]
 80034d8:	e524      	b.n	8002f24 <_vfprintf_r+0xfc>
 80034da:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80034de:	f89a 6000 	ldrb.w	r6, [sl]
 80034e2:	e51f      	b.n	8002f24 <_vfprintf_r+0xfc>
 80034e4:	f89a 6000 	ldrb.w	r6, [sl]
 80034e8:	f048 0804 	orr.w	r8, r8, #4
 80034ec:	e51a      	b.n	8002f24 <_vfprintf_r+0xfc>
 80034ee:	f89a 6000 	ldrb.w	r6, [sl]
 80034f2:	2e2a      	cmp	r6, #42	; 0x2a
 80034f4:	f10a 0201 	add.w	r2, sl, #1
 80034f8:	f001 81b0 	beq.w	800485c <_vfprintf_r+0x1a34>
 80034fc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003500:	2b09      	cmp	r3, #9
 8003502:	4692      	mov	sl, r2
 8003504:	f04f 0900 	mov.w	r9, #0
 8003508:	f63f ad0e 	bhi.w	8002f28 <_vfprintf_r+0x100>
 800350c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003510:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8003514:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003518:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800351c:	2b09      	cmp	r3, #9
 800351e:	d9f5      	bls.n	800350c <_vfprintf_r+0x6e4>
 8003520:	e502      	b.n	8002f28 <_vfprintf_r+0x100>
 8003522:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003526:	f89a 6000 	ldrb.w	r6, [sl]
 800352a:	e4fb      	b.n	8002f24 <_vfprintf_r+0xfc>
 800352c:	9c08      	ldr	r4, [sp, #32]
 800352e:	3407      	adds	r4, #7
 8003530:	f024 0407 	bic.w	r4, r4, #7
 8003534:	ed94 7b00 	vldr	d7, [r4]
 8003538:	ec52 1b17 	vmov	r1, r2, d7
 800353c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003540:	931d      	str	r3, [sp, #116]	; 0x74
 8003542:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003546:	3408      	adds	r4, #8
 8003548:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800354c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003550:	4bba      	ldr	r3, [pc, #744]	; (800383c <_vfprintf_r+0xa14>)
 8003552:	9408      	str	r4, [sp, #32]
 8003554:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003558:	f7fd fde8 	bl	800112c <__aeabi_dcmpun>
 800355c:	2800      	cmp	r0, #0
 800355e:	f040 846f 	bne.w	8003e40 <_vfprintf_r+0x1018>
 8003562:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003566:	4bb5      	ldr	r3, [pc, #724]	; (800383c <_vfprintf_r+0xa14>)
 8003568:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800356c:	f7fd fdc0 	bl	80010f0 <__aeabi_dcmple>
 8003570:	2800      	cmp	r0, #0
 8003572:	f040 8465 	bne.w	8003e40 <_vfprintf_r+0x1018>
 8003576:	2200      	movs	r2, #0
 8003578:	2300      	movs	r3, #0
 800357a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800357e:	f7fd fdad 	bl	80010dc <__aeabi_dcmplt>
 8003582:	2800      	cmp	r0, #0
 8003584:	f040 855b 	bne.w	800403e <_vfprintf_r+0x1216>
 8003588:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800358c:	4fac      	ldr	r7, [pc, #688]	; (8003840 <_vfprintf_r+0xa18>)
 800358e:	4bad      	ldr	r3, [pc, #692]	; (8003844 <_vfprintf_r+0xa1c>)
 8003590:	2000      	movs	r0, #0
 8003592:	2103      	movs	r1, #3
 8003594:	9104      	str	r1, [sp, #16]
 8003596:	900a      	str	r0, [sp, #40]	; 0x28
 8003598:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800359c:	2e47      	cmp	r6, #71	; 0x47
 800359e:	bfd8      	it	le
 80035a0:	461f      	movle	r7, r3
 80035a2:	9109      	str	r1, [sp, #36]	; 0x24
 80035a4:	4681      	mov	r9, r0
 80035a6:	900f      	str	r0, [sp, #60]	; 0x3c
 80035a8:	9014      	str	r0, [sp, #80]	; 0x50
 80035aa:	9011      	str	r0, [sp, #68]	; 0x44
 80035ac:	e5c9      	b.n	8003142 <_vfprintf_r+0x31a>
 80035ae:	9808      	ldr	r0, [sp, #32]
 80035b0:	2300      	movs	r3, #0
 80035b2:	6801      	ldr	r1, [r0, #0]
 80035b4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80035b8:	461a      	mov	r2, r3
 80035ba:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80035be:	2301      	movs	r3, #1
 80035c0:	1d01      	adds	r1, r0, #4
 80035c2:	9304      	str	r3, [sp, #16]
 80035c4:	920a      	str	r2, [sp, #40]	; 0x28
 80035c6:	4691      	mov	r9, r2
 80035c8:	920f      	str	r2, [sp, #60]	; 0x3c
 80035ca:	9214      	str	r2, [sp, #80]	; 0x50
 80035cc:	9211      	str	r2, [sp, #68]	; 0x44
 80035ce:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80035d2:	af3d      	add	r7, sp, #244	; 0xf4
 80035d4:	e5b9      	b.n	800314a <_vfprintf_r+0x322>
 80035d6:	9b08      	ldr	r3, [sp, #32]
 80035d8:	681f      	ldr	r7, [r3, #0]
 80035da:	2500      	movs	r5, #0
 80035dc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80035e0:	1d1c      	adds	r4, r3, #4
 80035e2:	2f00      	cmp	r7, #0
 80035e4:	f000 8639 	beq.w	800425a <_vfprintf_r+0x1432>
 80035e8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80035ec:	f000 8711 	beq.w	8004412 <_vfprintf_r+0x15ea>
 80035f0:	464a      	mov	r2, r9
 80035f2:	4629      	mov	r1, r5
 80035f4:	4638      	mov	r0, r7
 80035f6:	f7fd f8f3 	bl	80007e0 <memchr>
 80035fa:	900a      	str	r0, [sp, #40]	; 0x28
 80035fc:	2800      	cmp	r0, #0
 80035fe:	f000 85e7 	beq.w	80041d0 <_vfprintf_r+0x13a8>
 8003602:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003604:	1bdb      	subs	r3, r3, r7
 8003606:	9309      	str	r3, [sp, #36]	; 0x24
 8003608:	46a9      	mov	r9, r5
 800360a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800360e:	9408      	str	r4, [sp, #32]
 8003610:	9304      	str	r3, [sp, #16]
 8003612:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003616:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800361a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800361e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003622:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003626:	e58c      	b.n	8003142 <_vfprintf_r+0x31a>
 8003628:	f048 0310 	orr.w	r3, r8, #16
 800362c:	069a      	lsls	r2, r3, #26
 800362e:	f53f aeb2 	bmi.w	8003396 <_vfprintf_r+0x56e>
 8003632:	9a08      	ldr	r2, [sp, #32]
 8003634:	06df      	lsls	r7, r3, #27
 8003636:	f102 0104 	add.w	r1, r2, #4
 800363a:	f100 837e 	bmi.w	8003d3a <_vfprintf_r+0xf12>
 800363e:	065d      	lsls	r5, r3, #25
 8003640:	9a08      	ldr	r2, [sp, #32]
 8003642:	f100 84e4 	bmi.w	800400e <_vfprintf_r+0x11e6>
 8003646:	059c      	lsls	r4, r3, #22
 8003648:	f140 8377 	bpl.w	8003d3a <_vfprintf_r+0xf12>
 800364c:	7814      	ldrb	r4, [r2, #0]
 800364e:	9108      	str	r1, [sp, #32]
 8003650:	2500      	movs	r5, #0
 8003652:	2201      	movs	r2, #1
 8003654:	e6a9      	b.n	80033aa <_vfprintf_r+0x582>
 8003656:	4b7c      	ldr	r3, [pc, #496]	; (8003848 <_vfprintf_r+0xa20>)
 8003658:	9317      	str	r3, [sp, #92]	; 0x5c
 800365a:	f018 0f20 	tst.w	r8, #32
 800365e:	f47f aeec 	bne.w	800343a <_vfprintf_r+0x612>
 8003662:	9a08      	ldr	r2, [sp, #32]
 8003664:	f018 0f10 	tst.w	r8, #16
 8003668:	f102 0304 	add.w	r3, r2, #4
 800366c:	f040 8354 	bne.w	8003d18 <_vfprintf_r+0xef0>
 8003670:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003674:	9a08      	ldr	r2, [sp, #32]
 8003676:	f040 84d0 	bne.w	800401a <_vfprintf_r+0x11f2>
 800367a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800367e:	f000 834b 	beq.w	8003d18 <_vfprintf_r+0xef0>
 8003682:	7814      	ldrb	r4, [r2, #0]
 8003684:	9308      	str	r3, [sp, #32]
 8003686:	2500      	movs	r5, #0
 8003688:	e6e0      	b.n	800344c <_vfprintf_r+0x624>
 800368a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800368e:	f89a 6000 	ldrb.w	r6, [sl]
 8003692:	2b00      	cmp	r3, #0
 8003694:	f47f ac46 	bne.w	8002f24 <_vfprintf_r+0xfc>
 8003698:	2320      	movs	r3, #32
 800369a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800369e:	e441      	b.n	8002f24 <_vfprintf_r+0xfc>
 80036a0:	f89a 6000 	ldrb.w	r6, [sl]
 80036a4:	2e6c      	cmp	r6, #108	; 0x6c
 80036a6:	bf03      	ittte	eq
 80036a8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80036ac:	f048 0820 	orreq.w	r8, r8, #32
 80036b0:	f10a 0a01 	addeq.w	sl, sl, #1
 80036b4:	f048 0810 	orrne.w	r8, r8, #16
 80036b8:	e434      	b.n	8002f24 <_vfprintf_r+0xfc>
 80036ba:	9a08      	ldr	r2, [sp, #32]
 80036bc:	f018 0f20 	tst.w	r8, #32
 80036c0:	f852 3b04 	ldr.w	r3, [r2], #4
 80036c4:	9208      	str	r2, [sp, #32]
 80036c6:	f000 83a1 	beq.w	8003e0c <_vfprintf_r+0xfe4>
 80036ca:	9a05      	ldr	r2, [sp, #20]
 80036cc:	4610      	mov	r0, r2
 80036ce:	17d1      	asrs	r1, r2, #31
 80036d0:	e9c3 0100 	strd	r0, r1, [r3]
 80036d4:	4657      	mov	r7, sl
 80036d6:	e64d      	b.n	8003374 <_vfprintf_r+0x54c>
 80036d8:	f89a 6000 	ldrb.w	r6, [sl]
 80036dc:	2e68      	cmp	r6, #104	; 0x68
 80036de:	bf03      	ittte	eq
 80036e0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80036e4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80036e8:	f10a 0a01 	addeq.w	sl, sl, #1
 80036ec:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80036f0:	e418      	b.n	8002f24 <_vfprintf_r+0xfc>
 80036f2:	9908      	ldr	r1, [sp, #32]
 80036f4:	4b55      	ldr	r3, [pc, #340]	; (800384c <_vfprintf_r+0xa24>)
 80036f6:	680c      	ldr	r4, [r1, #0]
 80036f8:	9317      	str	r3, [sp, #92]	; 0x5c
 80036fa:	f647 0230 	movw	r2, #30768	; 0x7830
 80036fe:	3104      	adds	r1, #4
 8003700:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003704:	f048 0302 	orr.w	r3, r8, #2
 8003708:	9108      	str	r1, [sp, #32]
 800370a:	2500      	movs	r5, #0
 800370c:	2202      	movs	r2, #2
 800370e:	2678      	movs	r6, #120	; 0x78
 8003710:	e64b      	b.n	80033aa <_vfprintf_r+0x582>
 8003712:	f048 0808 	orr.w	r8, r8, #8
 8003716:	f89a 6000 	ldrb.w	r6, [sl]
 800371a:	e403      	b.n	8002f24 <_vfprintf_r+0xfc>
 800371c:	f048 0310 	orr.w	r3, r8, #16
 8003720:	069f      	lsls	r7, r3, #26
 8003722:	f53f acd1 	bmi.w	80030c8 <_vfprintf_r+0x2a0>
 8003726:	9908      	ldr	r1, [sp, #32]
 8003728:	06dd      	lsls	r5, r3, #27
 800372a:	f101 0204 	add.w	r2, r1, #4
 800372e:	f100 82fd 	bmi.w	8003d2c <_vfprintf_r+0xf04>
 8003732:	065c      	lsls	r4, r3, #25
 8003734:	9908      	ldr	r1, [sp, #32]
 8003736:	f100 8475 	bmi.w	8004024 <_vfprintf_r+0x11fc>
 800373a:	0598      	lsls	r0, r3, #22
 800373c:	f140 82f6 	bpl.w	8003d2c <_vfprintf_r+0xf04>
 8003740:	f991 4000 	ldrsb.w	r4, [r1]
 8003744:	9208      	str	r2, [sp, #32]
 8003746:	17e5      	asrs	r5, r4, #31
 8003748:	4620      	mov	r0, r4
 800374a:	4629      	mov	r1, r5
 800374c:	e4c7      	b.n	80030de <_vfprintf_r+0x2b6>
 800374e:	9a08      	ldr	r2, [sp, #32]
 8003750:	f018 0f10 	tst.w	r8, #16
 8003754:	f102 0304 	add.w	r3, r2, #4
 8003758:	f040 82e3 	bne.w	8003d22 <_vfprintf_r+0xefa>
 800375c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003760:	9a08      	ldr	r2, [sp, #32]
 8003762:	f040 8467 	bne.w	8004034 <_vfprintf_r+0x120c>
 8003766:	f418 7f00 	tst.w	r8, #512	; 0x200
 800376a:	f000 82da 	beq.w	8003d22 <_vfprintf_r+0xefa>
 800376e:	7814      	ldrb	r4, [r2, #0]
 8003770:	9308      	str	r3, [sp, #32]
 8003772:	2500      	movs	r5, #0
 8003774:	e488      	b.n	8003088 <_vfprintf_r+0x260>
 8003776:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800377a:	f002 fd45 	bl	8006208 <__retarget_lock_release_recursive>
 800377e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003782:	9305      	str	r3, [sp, #20]
 8003784:	e443      	b.n	800300e <_vfprintf_r+0x1e6>
 8003786:	2e00      	cmp	r6, #0
 8003788:	f43f adf8 	beq.w	800337c <_vfprintf_r+0x554>
 800378c:	2300      	movs	r3, #0
 800378e:	2101      	movs	r1, #1
 8003790:	461a      	mov	r2, r3
 8003792:	9104      	str	r1, [sp, #16]
 8003794:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003798:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800379c:	930a      	str	r3, [sp, #40]	; 0x28
 800379e:	4699      	mov	r9, r3
 80037a0:	930f      	str	r3, [sp, #60]	; 0x3c
 80037a2:	9314      	str	r3, [sp, #80]	; 0x50
 80037a4:	9311      	str	r3, [sp, #68]	; 0x44
 80037a6:	9109      	str	r1, [sp, #36]	; 0x24
 80037a8:	af3d      	add	r7, sp, #244	; 0xf4
 80037aa:	e4ce      	b.n	800314a <_vfprintf_r+0x322>
 80037ac:	2e65      	cmp	r6, #101	; 0x65
 80037ae:	f340 80ca 	ble.w	8003946 <_vfprintf_r+0xb1e>
 80037b2:	2200      	movs	r2, #0
 80037b4:	2300      	movs	r3, #0
 80037b6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80037ba:	f7fd fc85 	bl	80010c8 <__aeabi_dcmpeq>
 80037be:	2800      	cmp	r0, #0
 80037c0:	f000 8169 	beq.w	8003a96 <_vfprintf_r+0xc6e>
 80037c4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037c6:	4a22      	ldr	r2, [pc, #136]	; (8003850 <_vfprintf_r+0xa28>)
 80037c8:	f8cb 2000 	str.w	r2, [fp]
 80037cc:	3301      	adds	r3, #1
 80037ce:	3401      	adds	r4, #1
 80037d0:	2201      	movs	r2, #1
 80037d2:	2b07      	cmp	r3, #7
 80037d4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80037d8:	f8cb 2004 	str.w	r2, [fp, #4]
 80037dc:	f300 8406 	bgt.w	8003fec <_vfprintf_r+0x11c4>
 80037e0:	f10b 0b08 	add.w	fp, fp, #8
 80037e4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037e6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80037e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037ea:	4293      	cmp	r3, r2
 80037ec:	db03      	blt.n	80037f6 <_vfprintf_r+0x9ce>
 80037ee:	f018 0f01 	tst.w	r8, #1
 80037f2:	f43f ad6a 	beq.w	80032ca <_vfprintf_r+0x4a2>
 80037f6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037f8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80037fa:	f8cb 2000 	str.w	r2, [fp]
 80037fe:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003800:	f8cb 2004 	str.w	r2, [fp, #4]
 8003804:	3301      	adds	r3, #1
 8003806:	4414      	add	r4, r2
 8003808:	2b07      	cmp	r3, #7
 800380a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800380e:	f300 8517 	bgt.w	8004240 <_vfprintf_r+0x1418>
 8003812:	f10b 0b08 	add.w	fp, fp, #8
 8003816:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003818:	1e5d      	subs	r5, r3, #1
 800381a:	2d00      	cmp	r5, #0
 800381c:	f77f ad55 	ble.w	80032ca <_vfprintf_r+0x4a2>
 8003820:	2d10      	cmp	r5, #16
 8003822:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003824:	4b0b      	ldr	r3, [pc, #44]	; (8003854 <_vfprintf_r+0xa2c>)
 8003826:	f340 82e7 	ble.w	8003df8 <_vfprintf_r+0xfd0>
 800382a:	4619      	mov	r1, r3
 800382c:	2610      	movs	r6, #16
 800382e:	4623      	mov	r3, r4
 8003830:	9f03      	ldr	r7, [sp, #12]
 8003832:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003836:	460c      	mov	r4, r1
 8003838:	e014      	b.n	8003864 <_vfprintf_r+0xa3c>
 800383a:	bf00      	nop
 800383c:	7fefffff 	.word	0x7fefffff
 8003840:	080075c4 	.word	0x080075c4
 8003844:	080075c0 	.word	0x080075c0
 8003848:	080075e4 	.word	0x080075e4
 800384c:	080075d0 	.word	0x080075d0
 8003850:	08007600 	.word	0x08007600
 8003854:	08007614 	.word	0x08007614
 8003858:	f10b 0b08 	add.w	fp, fp, #8
 800385c:	3d10      	subs	r5, #16
 800385e:	2d10      	cmp	r5, #16
 8003860:	f340 82c7 	ble.w	8003df2 <_vfprintf_r+0xfca>
 8003864:	3201      	adds	r2, #1
 8003866:	3310      	adds	r3, #16
 8003868:	2a07      	cmp	r2, #7
 800386a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800386e:	e9cb 4600 	strd	r4, r6, [fp]
 8003872:	ddf1      	ble.n	8003858 <_vfprintf_r+0xa30>
 8003874:	aa2a      	add	r2, sp, #168	; 0xa8
 8003876:	4649      	mov	r1, r9
 8003878:	4638      	mov	r0, r7
 800387a:	f003 fb41 	bl	8006f00 <__sprint_r>
 800387e:	2800      	cmp	r0, #0
 8003880:	d14c      	bne.n	800391c <_vfprintf_r+0xaf4>
 8003882:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003886:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800388a:	e7e7      	b.n	800385c <_vfprintf_r+0xa34>
 800388c:	9b06      	ldr	r3, [sp, #24]
 800388e:	9a04      	ldr	r2, [sp, #16]
 8003890:	1a9d      	subs	r5, r3, r2
 8003892:	2d00      	cmp	r5, #0
 8003894:	f77f acc9 	ble.w	800322a <_vfprintf_r+0x402>
 8003898:	2d10      	cmp	r5, #16
 800389a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800389c:	4bbc      	ldr	r3, [pc, #752]	; (8003b90 <_vfprintf_r+0xd68>)
 800389e:	dd27      	ble.n	80038f0 <_vfprintf_r+0xac8>
 80038a0:	4659      	mov	r1, fp
 80038a2:	4620      	mov	r0, r4
 80038a4:	46bb      	mov	fp, r7
 80038a6:	461c      	mov	r4, r3
 80038a8:	4637      	mov	r7, r6
 80038aa:	9e07      	ldr	r6, [sp, #28]
 80038ac:	e004      	b.n	80038b8 <_vfprintf_r+0xa90>
 80038ae:	3d10      	subs	r5, #16
 80038b0:	2d10      	cmp	r5, #16
 80038b2:	f101 0108 	add.w	r1, r1, #8
 80038b6:	dd16      	ble.n	80038e6 <_vfprintf_r+0xabe>
 80038b8:	3201      	adds	r2, #1
 80038ba:	3010      	adds	r0, #16
 80038bc:	2310      	movs	r3, #16
 80038be:	2a07      	cmp	r2, #7
 80038c0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80038c4:	600c      	str	r4, [r1, #0]
 80038c6:	604b      	str	r3, [r1, #4]
 80038c8:	ddf1      	ble.n	80038ae <_vfprintf_r+0xa86>
 80038ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80038cc:	4631      	mov	r1, r6
 80038ce:	9803      	ldr	r0, [sp, #12]
 80038d0:	f003 fb16 	bl	8006f00 <__sprint_r>
 80038d4:	2800      	cmp	r0, #0
 80038d6:	f040 80a8 	bne.w	8003a2a <_vfprintf_r+0xc02>
 80038da:	3d10      	subs	r5, #16
 80038dc:	2d10      	cmp	r5, #16
 80038de:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80038e2:	a92d      	add	r1, sp, #180	; 0xb4
 80038e4:	dce8      	bgt.n	80038b8 <_vfprintf_r+0xa90>
 80038e6:	463e      	mov	r6, r7
 80038e8:	4623      	mov	r3, r4
 80038ea:	465f      	mov	r7, fp
 80038ec:	4604      	mov	r4, r0
 80038ee:	468b      	mov	fp, r1
 80038f0:	3201      	adds	r2, #1
 80038f2:	442c      	add	r4, r5
 80038f4:	2a07      	cmp	r2, #7
 80038f6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038fa:	e9cb 3500 	strd	r3, r5, [fp]
 80038fe:	f300 8292 	bgt.w	8003e26 <_vfprintf_r+0xffe>
 8003902:	f10b 0b08 	add.w	fp, fp, #8
 8003906:	e490      	b.n	800322a <_vfprintf_r+0x402>
 8003908:	aa2a      	add	r2, sp, #168	; 0xa8
 800390a:	9907      	ldr	r1, [sp, #28]
 800390c:	9803      	ldr	r0, [sp, #12]
 800390e:	f003 faf7 	bl	8006f00 <__sprint_r>
 8003912:	2800      	cmp	r0, #0
 8003914:	f43f ad23 	beq.w	800335e <_vfprintf_r+0x536>
 8003918:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800391c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800391e:	b111      	cbz	r1, 8003926 <_vfprintf_r+0xafe>
 8003920:	9803      	ldr	r0, [sp, #12]
 8003922:	f002 f9c1 	bl	8005ca8 <_free_r>
 8003926:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800392a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800392e:	07d0      	lsls	r0, r2, #31
 8003930:	d402      	bmi.n	8003938 <_vfprintf_r+0xb10>
 8003932:	0599      	lsls	r1, r3, #22
 8003934:	f140 81d0 	bpl.w	8003cd8 <_vfprintf_r+0xeb0>
 8003938:	065a      	lsls	r2, r3, #25
 800393a:	f53f ab65 	bmi.w	8003008 <_vfprintf_r+0x1e0>
 800393e:	9805      	ldr	r0, [sp, #20]
 8003940:	b057      	add	sp, #348	; 0x15c
 8003942:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003946:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003948:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800394a:	2a01      	cmp	r2, #1
 800394c:	f104 0401 	add.w	r4, r4, #1
 8003950:	f103 0501 	add.w	r5, r3, #1
 8003954:	f10b 0608 	add.w	r6, fp, #8
 8003958:	f340 811c 	ble.w	8003b94 <_vfprintf_r+0xd6c>
 800395c:	2301      	movs	r3, #1
 800395e:	2d07      	cmp	r5, #7
 8003960:	f8cb 7000 	str.w	r7, [fp]
 8003964:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003968:	f8cb 3004 	str.w	r3, [fp, #4]
 800396c:	f300 81bb 	bgt.w	8003ce6 <_vfprintf_r+0xebe>
 8003970:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003972:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003974:	1c69      	adds	r1, r5, #1
 8003976:	441c      	add	r4, r3
 8003978:	2907      	cmp	r1, #7
 800397a:	910b      	str	r1, [sp, #44]	; 0x2c
 800397c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003980:	e9c6 2300 	strd	r2, r3, [r6]
 8003984:	f300 81bb 	bgt.w	8003cfe <_vfprintf_r+0xed6>
 8003988:	3608      	adds	r6, #8
 800398a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800398c:	1c53      	adds	r3, r2, #1
 800398e:	461d      	mov	r5, r3
 8003990:	9509      	str	r5, [sp, #36]	; 0x24
 8003992:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003994:	930e      	str	r3, [sp, #56]	; 0x38
 8003996:	2200      	movs	r2, #0
 8003998:	2300      	movs	r3, #0
 800399a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800399e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80039a2:	f106 0b08 	add.w	fp, r6, #8
 80039a6:	f7fd fb8f 	bl	80010c8 <__aeabi_dcmpeq>
 80039aa:	2800      	cmp	r0, #0
 80039ac:	f040 80c2 	bne.w	8003b34 <_vfprintf_r+0xd0c>
 80039b0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80039b2:	f8c6 9004 	str.w	r9, [r6, #4]
 80039b6:	3701      	adds	r7, #1
 80039b8:	444c      	add	r4, r9
 80039ba:	2d07      	cmp	r5, #7
 80039bc:	6037      	str	r7, [r6, #0]
 80039be:	942c      	str	r4, [sp, #176]	; 0xb0
 80039c0:	952b      	str	r5, [sp, #172]	; 0xac
 80039c2:	f300 80f9 	bgt.w	8003bb8 <_vfprintf_r+0xd90>
 80039c6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80039c8:	f106 0310 	add.w	r3, r6, #16
 80039cc:	3202      	adds	r2, #2
 80039ce:	465e      	mov	r6, fp
 80039d0:	9209      	str	r2, [sp, #36]	; 0x24
 80039d2:	469b      	mov	fp, r3
 80039d4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80039d6:	6072      	str	r2, [r6, #4]
 80039d8:	4414      	add	r4, r2
 80039da:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80039dc:	942c      	str	r4, [sp, #176]	; 0xb0
 80039de:	ab26      	add	r3, sp, #152	; 0x98
 80039e0:	2a07      	cmp	r2, #7
 80039e2:	922b      	str	r2, [sp, #172]	; 0xac
 80039e4:	6033      	str	r3, [r6, #0]
 80039e6:	f77f ac70 	ble.w	80032ca <_vfprintf_r+0x4a2>
 80039ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80039ec:	9907      	ldr	r1, [sp, #28]
 80039ee:	9803      	ldr	r0, [sp, #12]
 80039f0:	f003 fa86 	bl	8006f00 <__sprint_r>
 80039f4:	2800      	cmp	r0, #0
 80039f6:	d18f      	bne.n	8003918 <_vfprintf_r+0xaf0>
 80039f8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039fa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039fe:	e464      	b.n	80032ca <_vfprintf_r+0x4a2>
 8003a00:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003a02:	af56      	add	r7, sp, #344	; 0x158
 8003a04:	0923      	lsrs	r3, r4, #4
 8003a06:	f004 010f 	and.w	r1, r4, #15
 8003a0a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003a0e:	092a      	lsrs	r2, r5, #4
 8003a10:	461c      	mov	r4, r3
 8003a12:	4615      	mov	r5, r2
 8003a14:	5c43      	ldrb	r3, [r0, r1]
 8003a16:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003a1a:	ea54 0305 	orrs.w	r3, r4, r5
 8003a1e:	d1f1      	bne.n	8003a04 <_vfprintf_r+0xbdc>
 8003a20:	9b04      	ldr	r3, [sp, #16]
 8003a22:	1bdb      	subs	r3, r3, r7
 8003a24:	9309      	str	r3, [sp, #36]	; 0x24
 8003a26:	f7ff bb80 	b.w	800312a <_vfprintf_r+0x302>
 8003a2a:	46b1      	mov	r9, r6
 8003a2c:	e776      	b.n	800391c <_vfprintf_r+0xaf4>
 8003a2e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a30:	9907      	ldr	r1, [sp, #28]
 8003a32:	9803      	ldr	r0, [sp, #12]
 8003a34:	f003 fa64 	bl	8006f00 <__sprint_r>
 8003a38:	2800      	cmp	r0, #0
 8003a3a:	f47f af6d 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003a3e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a40:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a44:	f7ff bbdd 	b.w	8003202 <_vfprintf_r+0x3da>
 8003a48:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a4a:	9907      	ldr	r1, [sp, #28]
 8003a4c:	9803      	ldr	r0, [sp, #12]
 8003a4e:	f003 fa57 	bl	8006f00 <__sprint_r>
 8003a52:	2800      	cmp	r0, #0
 8003a54:	f47f af60 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003a58:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a5a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a5e:	f7ff bbe0 	b.w	8003222 <_vfprintf_r+0x3fa>
 8003a62:	4698      	mov	r8, r3
 8003a64:	2d00      	cmp	r5, #0
 8003a66:	bf08      	it	eq
 8003a68:	2c0a      	cmpeq	r4, #10
 8003a6a:	f080 8170 	bcs.w	8003d4e <_vfprintf_r+0xf26>
 8003a6e:	af56      	add	r7, sp, #344	; 0x158
 8003a70:	3430      	adds	r4, #48	; 0x30
 8003a72:	2301      	movs	r3, #1
 8003a74:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003a78:	9309      	str	r3, [sp, #36]	; 0x24
 8003a7a:	f7ff bb56 	b.w	800312a <_vfprintf_r+0x302>
 8003a7e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a80:	9907      	ldr	r1, [sp, #28]
 8003a82:	9803      	ldr	r0, [sp, #12]
 8003a84:	f003 fa3c 	bl	8006f00 <__sprint_r>
 8003a88:	2800      	cmp	r0, #0
 8003a8a:	f47f af45 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003a8e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a90:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a94:	e406      	b.n	80032a4 <_vfprintf_r+0x47c>
 8003a96:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a98:	2b00      	cmp	r3, #0
 8003a9a:	f340 8273 	ble.w	8003f84 <_vfprintf_r+0x115c>
 8003a9e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003aa2:	4293      	cmp	r3, r2
 8003aa4:	bfa8      	it	ge
 8003aa6:	4613      	movge	r3, r2
 8003aa8:	2b00      	cmp	r3, #0
 8003aaa:	461d      	mov	r5, r3
 8003aac:	dd0d      	ble.n	8003aca <_vfprintf_r+0xca2>
 8003aae:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003ab0:	f8cb 7000 	str.w	r7, [fp]
 8003ab4:	3301      	adds	r3, #1
 8003ab6:	442c      	add	r4, r5
 8003ab8:	2b07      	cmp	r3, #7
 8003aba:	942c      	str	r4, [sp, #176]	; 0xb0
 8003abc:	f8cb 5004 	str.w	r5, [fp, #4]
 8003ac0:	932b      	str	r3, [sp, #172]	; 0xac
 8003ac2:	f300 82c1 	bgt.w	8004048 <_vfprintf_r+0x1220>
 8003ac6:	f10b 0b08 	add.w	fp, fp, #8
 8003aca:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003acc:	2d00      	cmp	r5, #0
 8003ace:	bfa8      	it	ge
 8003ad0:	1b5b      	subge	r3, r3, r5
 8003ad2:	2b00      	cmp	r3, #0
 8003ad4:	461d      	mov	r5, r3
 8003ad6:	f340 8099 	ble.w	8003c0c <_vfprintf_r+0xde4>
 8003ada:	2d10      	cmp	r5, #16
 8003adc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003ade:	4b2c      	ldr	r3, [pc, #176]	; (8003b90 <_vfprintf_r+0xd68>)
 8003ae0:	f340 83db 	ble.w	800429a <_vfprintf_r+0x1472>
 8003ae4:	4618      	mov	r0, r3
 8003ae6:	4621      	mov	r1, r4
 8003ae8:	465b      	mov	r3, fp
 8003aea:	2610      	movs	r6, #16
 8003aec:	46bb      	mov	fp, r7
 8003aee:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003af2:	9c07      	ldr	r4, [sp, #28]
 8003af4:	4607      	mov	r7, r0
 8003af6:	e004      	b.n	8003b02 <_vfprintf_r+0xcda>
 8003af8:	3308      	adds	r3, #8
 8003afa:	3d10      	subs	r5, #16
 8003afc:	2d10      	cmp	r5, #16
 8003afe:	f340 83c7 	ble.w	8004290 <_vfprintf_r+0x1468>
 8003b02:	3201      	adds	r2, #1
 8003b04:	3110      	adds	r1, #16
 8003b06:	2a07      	cmp	r2, #7
 8003b08:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003b0c:	e9c3 7600 	strd	r7, r6, [r3]
 8003b10:	ddf2      	ble.n	8003af8 <_vfprintf_r+0xcd0>
 8003b12:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b14:	4621      	mov	r1, r4
 8003b16:	4648      	mov	r0, r9
 8003b18:	f003 f9f2 	bl	8006f00 <__sprint_r>
 8003b1c:	2800      	cmp	r0, #0
 8003b1e:	f040 84a5 	bne.w	800446c <_vfprintf_r+0x1644>
 8003b22:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003b26:	ab2d      	add	r3, sp, #180	; 0xb4
 8003b28:	e7e7      	b.n	8003afa <_vfprintf_r+0xcd2>
 8003b2a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003b2e:	af56      	add	r7, sp, #344	; 0x158
 8003b30:	f7ff bafb 	b.w	800312a <_vfprintf_r+0x302>
 8003b34:	f1b9 0f00 	cmp.w	r9, #0
 8003b38:	f77f af4c 	ble.w	80039d4 <_vfprintf_r+0xbac>
 8003b3c:	f1b9 0f10 	cmp.w	r9, #16
 8003b40:	4b13      	ldr	r3, [pc, #76]	; (8003b90 <_vfprintf_r+0xd68>)
 8003b42:	f340 8659 	ble.w	80047f8 <_vfprintf_r+0x19d0>
 8003b46:	4619      	mov	r1, r3
 8003b48:	4622      	mov	r2, r4
 8003b4a:	4633      	mov	r3, r6
 8003b4c:	2710      	movs	r7, #16
 8003b4e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003b52:	9c07      	ldr	r4, [sp, #28]
 8003b54:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003b56:	460e      	mov	r6, r1
 8003b58:	e007      	b.n	8003b6a <_vfprintf_r+0xd42>
 8003b5a:	3308      	adds	r3, #8
 8003b5c:	f1a9 0910 	sub.w	r9, r9, #16
 8003b60:	f1b9 0f10 	cmp.w	r9, #16
 8003b64:	f340 8353 	ble.w	800420e <_vfprintf_r+0x13e6>
 8003b68:	3501      	adds	r5, #1
 8003b6a:	3210      	adds	r2, #16
 8003b6c:	2d07      	cmp	r5, #7
 8003b6e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003b72:	e9c3 6700 	strd	r6, r7, [r3]
 8003b76:	ddf0      	ble.n	8003b5a <_vfprintf_r+0xd32>
 8003b78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b7a:	4621      	mov	r1, r4
 8003b7c:	4658      	mov	r0, fp
 8003b7e:	f003 f9bf 	bl	8006f00 <__sprint_r>
 8003b82:	2800      	cmp	r0, #0
 8003b84:	f040 8472 	bne.w	800446c <_vfprintf_r+0x1644>
 8003b88:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003b8c:	ab2d      	add	r3, sp, #180	; 0xb4
 8003b8e:	e7e5      	b.n	8003b5c <_vfprintf_r+0xd34>
 8003b90:	08007614 	.word	0x08007614
 8003b94:	f018 0f01 	tst.w	r8, #1
 8003b98:	f47f aee0 	bne.w	800395c <_vfprintf_r+0xb34>
 8003b9c:	2201      	movs	r2, #1
 8003b9e:	2d07      	cmp	r5, #7
 8003ba0:	f8cb 7000 	str.w	r7, [fp]
 8003ba4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003ba8:	f8cb 2004 	str.w	r2, [fp, #4]
 8003bac:	dc04      	bgt.n	8003bb8 <_vfprintf_r+0xd90>
 8003bae:	3302      	adds	r3, #2
 8003bb0:	9309      	str	r3, [sp, #36]	; 0x24
 8003bb2:	f10b 0b10 	add.w	fp, fp, #16
 8003bb6:	e70d      	b.n	80039d4 <_vfprintf_r+0xbac>
 8003bb8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bba:	9907      	ldr	r1, [sp, #28]
 8003bbc:	9803      	ldr	r0, [sp, #12]
 8003bbe:	f003 f99f 	bl	8006f00 <__sprint_r>
 8003bc2:	2800      	cmp	r0, #0
 8003bc4:	f47f aea8 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003bc8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003bcc:	3301      	adds	r3, #1
 8003bce:	9309      	str	r3, [sp, #36]	; 0x24
 8003bd0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003bd4:	ae2d      	add	r6, sp, #180	; 0xb4
 8003bd6:	e6fd      	b.n	80039d4 <_vfprintf_r+0xbac>
 8003bd8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bda:	9907      	ldr	r1, [sp, #28]
 8003bdc:	9803      	ldr	r0, [sp, #12]
 8003bde:	f003 f98f 	bl	8006f00 <__sprint_r>
 8003be2:	2800      	cmp	r0, #0
 8003be4:	f47f ae98 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003be8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003bec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bf2:	f7ff baf6 	b.w	80031e2 <_vfprintf_r+0x3ba>
 8003bf6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bf8:	9907      	ldr	r1, [sp, #28]
 8003bfa:	9803      	ldr	r0, [sp, #12]
 8003bfc:	f003 f980 	bl	8006f00 <__sprint_r>
 8003c00:	2800      	cmp	r0, #0
 8003c02:	f47f ae89 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003c06:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c08:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c0e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003c12:	443b      	add	r3, r7
 8003c14:	4699      	mov	r9, r3
 8003c16:	f040 8357 	bne.w	80042c8 <_vfprintf_r+0x14a0>
 8003c1a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c1c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003c1e:	4293      	cmp	r3, r2
 8003c20:	db49      	blt.n	8003cb6 <_vfprintf_r+0xe8e>
 8003c22:	f018 0f01 	tst.w	r8, #1
 8003c26:	d146      	bne.n	8003cb6 <_vfprintf_r+0xe8e>
 8003c28:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003c2a:	18bd      	adds	r5, r7, r2
 8003c2c:	eba5 0509 	sub.w	r5, r5, r9
 8003c30:	1ad3      	subs	r3, r2, r3
 8003c32:	429d      	cmp	r5, r3
 8003c34:	bfa8      	it	ge
 8003c36:	461d      	movge	r5, r3
 8003c38:	2d00      	cmp	r5, #0
 8003c3a:	dd0d      	ble.n	8003c58 <_vfprintf_r+0xe30>
 8003c3c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003c3e:	f8cb 9000 	str.w	r9, [fp]
 8003c42:	3201      	adds	r2, #1
 8003c44:	442c      	add	r4, r5
 8003c46:	2a07      	cmp	r2, #7
 8003c48:	942c      	str	r4, [sp, #176]	; 0xb0
 8003c4a:	f8cb 5004 	str.w	r5, [fp, #4]
 8003c4e:	922b      	str	r2, [sp, #172]	; 0xac
 8003c50:	f300 8462 	bgt.w	8004518 <_vfprintf_r+0x16f0>
 8003c54:	f10b 0b08 	add.w	fp, fp, #8
 8003c58:	2d00      	cmp	r5, #0
 8003c5a:	bfac      	ite	ge
 8003c5c:	1b5d      	subge	r5, r3, r5
 8003c5e:	461d      	movlt	r5, r3
 8003c60:	2d00      	cmp	r5, #0
 8003c62:	f77f ab32 	ble.w	80032ca <_vfprintf_r+0x4a2>
 8003c66:	2d10      	cmp	r5, #16
 8003c68:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003c6a:	4bc5      	ldr	r3, [pc, #788]	; (8003f80 <_vfprintf_r+0x1158>)
 8003c6c:	f340 80c4 	ble.w	8003df8 <_vfprintf_r+0xfd0>
 8003c70:	4619      	mov	r1, r3
 8003c72:	2610      	movs	r6, #16
 8003c74:	4623      	mov	r3, r4
 8003c76:	9f03      	ldr	r7, [sp, #12]
 8003c78:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003c7c:	460c      	mov	r4, r1
 8003c7e:	e005      	b.n	8003c8c <_vfprintf_r+0xe64>
 8003c80:	f10b 0b08 	add.w	fp, fp, #8
 8003c84:	3d10      	subs	r5, #16
 8003c86:	2d10      	cmp	r5, #16
 8003c88:	f340 80b3 	ble.w	8003df2 <_vfprintf_r+0xfca>
 8003c8c:	3201      	adds	r2, #1
 8003c8e:	3310      	adds	r3, #16
 8003c90:	2a07      	cmp	r2, #7
 8003c92:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003c96:	e9cb 4600 	strd	r4, r6, [fp]
 8003c9a:	ddf1      	ble.n	8003c80 <_vfprintf_r+0xe58>
 8003c9c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c9e:	4649      	mov	r1, r9
 8003ca0:	4638      	mov	r0, r7
 8003ca2:	f003 f92d 	bl	8006f00 <__sprint_r>
 8003ca6:	2800      	cmp	r0, #0
 8003ca8:	f47f ae38 	bne.w	800391c <_vfprintf_r+0xaf4>
 8003cac:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003cb0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cb4:	e7e6      	b.n	8003c84 <_vfprintf_r+0xe5c>
 8003cb6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003cb8:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003cba:	f8cb 1000 	str.w	r1, [fp]
 8003cbe:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003cc0:	f8cb 1004 	str.w	r1, [fp, #4]
 8003cc4:	3201      	adds	r2, #1
 8003cc6:	440c      	add	r4, r1
 8003cc8:	2a07      	cmp	r2, #7
 8003cca:	942c      	str	r4, [sp, #176]	; 0xb0
 8003ccc:	922b      	str	r2, [sp, #172]	; 0xac
 8003cce:	f300 828c 	bgt.w	80041ea <_vfprintf_r+0x13c2>
 8003cd2:	f10b 0b08 	add.w	fp, fp, #8
 8003cd6:	e7a7      	b.n	8003c28 <_vfprintf_r+0xe00>
 8003cd8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003cdc:	f002 fa94 	bl	8006208 <__retarget_lock_release_recursive>
 8003ce0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003ce4:	e628      	b.n	8003938 <_vfprintf_r+0xb10>
 8003ce6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ce8:	9907      	ldr	r1, [sp, #28]
 8003cea:	9803      	ldr	r0, [sp, #12]
 8003cec:	f003 f908 	bl	8006f00 <__sprint_r>
 8003cf0:	2800      	cmp	r0, #0
 8003cf2:	f47f ae11 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003cf6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003cfa:	ae2d      	add	r6, sp, #180	; 0xb4
 8003cfc:	e638      	b.n	8003970 <_vfprintf_r+0xb48>
 8003cfe:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d00:	9907      	ldr	r1, [sp, #28]
 8003d02:	9803      	ldr	r0, [sp, #12]
 8003d04:	f003 f8fc 	bl	8006f00 <__sprint_r>
 8003d08:	2800      	cmp	r0, #0
 8003d0a:	f47f ae05 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003d0e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003d12:	ae2d      	add	r6, sp, #180	; 0xb4
 8003d14:	930b      	str	r3, [sp, #44]	; 0x2c
 8003d16:	e638      	b.n	800398a <_vfprintf_r+0xb62>
 8003d18:	6814      	ldr	r4, [r2, #0]
 8003d1a:	9308      	str	r3, [sp, #32]
 8003d1c:	2500      	movs	r5, #0
 8003d1e:	f7ff bb95 	b.w	800344c <_vfprintf_r+0x624>
 8003d22:	6814      	ldr	r4, [r2, #0]
 8003d24:	9308      	str	r3, [sp, #32]
 8003d26:	2500      	movs	r5, #0
 8003d28:	f7ff b9ae 	b.w	8003088 <_vfprintf_r+0x260>
 8003d2c:	680c      	ldr	r4, [r1, #0]
 8003d2e:	9208      	str	r2, [sp, #32]
 8003d30:	17e5      	asrs	r5, r4, #31
 8003d32:	4620      	mov	r0, r4
 8003d34:	4629      	mov	r1, r5
 8003d36:	f7ff b9d2 	b.w	80030de <_vfprintf_r+0x2b6>
 8003d3a:	6814      	ldr	r4, [r2, #0]
 8003d3c:	9108      	str	r1, [sp, #32]
 8003d3e:	2201      	movs	r2, #1
 8003d40:	2500      	movs	r5, #0
 8003d42:	f7ff bb32 	b.w	80033aa <_vfprintf_r+0x582>
 8003d46:	2a01      	cmp	r2, #1
 8003d48:	f47f ab3c 	bne.w	80033c4 <_vfprintf_r+0x59c>
 8003d4c:	e68f      	b.n	8003a6e <_vfprintf_r+0xc46>
 8003d4e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003d52:	2200      	movs	r2, #0
 8003d54:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003d58:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003d5c:	af56      	add	r7, sp, #344	; 0x158
 8003d5e:	4692      	mov	sl, r2
 8003d60:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003d64:	461e      	mov	r6, r3
 8003d66:	e00a      	b.n	8003d7e <_vfprintf_r+0xf56>
 8003d68:	2300      	movs	r3, #0
 8003d6a:	4620      	mov	r0, r4
 8003d6c:	4629      	mov	r1, r5
 8003d6e:	220a      	movs	r2, #10
 8003d70:	f7fc fa46 	bl	8000200 <__aeabi_uldivmod>
 8003d74:	4604      	mov	r4, r0
 8003d76:	460d      	mov	r5, r1
 8003d78:	ea54 0305 	orrs.w	r3, r4, r5
 8003d7c:	d029      	beq.n	8003dd2 <_vfprintf_r+0xfaa>
 8003d7e:	220a      	movs	r2, #10
 8003d80:	2300      	movs	r3, #0
 8003d82:	4620      	mov	r0, r4
 8003d84:	4629      	mov	r1, r5
 8003d86:	f7fc fa3b 	bl	8000200 <__aeabi_uldivmod>
 8003d8a:	3230      	adds	r2, #48	; 0x30
 8003d8c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003d90:	f10a 0a01 	add.w	sl, sl, #1
 8003d94:	3f01      	subs	r7, #1
 8003d96:	2e00      	cmp	r6, #0
 8003d98:	d0e6      	beq.n	8003d68 <_vfprintf_r+0xf40>
 8003d9a:	f898 3000 	ldrb.w	r3, [r8]
 8003d9e:	459a      	cmp	sl, r3
 8003da0:	d1e2      	bne.n	8003d68 <_vfprintf_r+0xf40>
 8003da2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003da6:	d0df      	beq.n	8003d68 <_vfprintf_r+0xf40>
 8003da8:	2d00      	cmp	r5, #0
 8003daa:	bf08      	it	eq
 8003dac:	2c0a      	cmpeq	r4, #10
 8003dae:	d3db      	bcc.n	8003d68 <_vfprintf_r+0xf40>
 8003db0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003db2:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003db4:	1aff      	subs	r7, r7, r3
 8003db6:	461a      	mov	r2, r3
 8003db8:	4638      	mov	r0, r7
 8003dba:	f003 f833 	bl	8006e24 <strncpy>
 8003dbe:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003dc2:	2b00      	cmp	r3, #0
 8003dc4:	f000 8496 	beq.w	80046f4 <_vfprintf_r+0x18cc>
 8003dc8:	f108 0801 	add.w	r8, r8, #1
 8003dcc:	f04f 0a00 	mov.w	sl, #0
 8003dd0:	e7ca      	b.n	8003d68 <_vfprintf_r+0xf40>
 8003dd2:	9b04      	ldr	r3, [sp, #16]
 8003dd4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003dd8:	1bdb      	subs	r3, r3, r7
 8003dda:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003dde:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003de0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003de4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003de8:	9309      	str	r3, [sp, #36]	; 0x24
 8003dea:	f7ff b99e 	b.w	800312a <_vfprintf_r+0x302>
 8003dee:	46c1      	mov	r9, r8
 8003df0:	e594      	b.n	800391c <_vfprintf_r+0xaf4>
 8003df2:	4621      	mov	r1, r4
 8003df4:	461c      	mov	r4, r3
 8003df6:	460b      	mov	r3, r1
 8003df8:	3201      	adds	r2, #1
 8003dfa:	442c      	add	r4, r5
 8003dfc:	2a07      	cmp	r2, #7
 8003dfe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003e02:	e9cb 3500 	strd	r3, r5, [fp]
 8003e06:	f77f aa5e 	ble.w	80032c6 <_vfprintf_r+0x49e>
 8003e0a:	e5ee      	b.n	80039ea <_vfprintf_r+0xbc2>
 8003e0c:	f018 0f10 	tst.w	r8, #16
 8003e10:	f040 80f8 	bne.w	8004004 <_vfprintf_r+0x11dc>
 8003e14:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003e18:	f000 8351 	beq.w	80044be <_vfprintf_r+0x1696>
 8003e1c:	9a05      	ldr	r2, [sp, #20]
 8003e1e:	801a      	strh	r2, [r3, #0]
 8003e20:	4657      	mov	r7, sl
 8003e22:	f7ff baa7 	b.w	8003374 <_vfprintf_r+0x54c>
 8003e26:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e28:	9907      	ldr	r1, [sp, #28]
 8003e2a:	9803      	ldr	r0, [sp, #12]
 8003e2c:	f003 f868 	bl	8006f00 <__sprint_r>
 8003e30:	2800      	cmp	r0, #0
 8003e32:	f47f ad71 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003e36:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e38:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e3c:	f7ff b9f5 	b.w	800322a <_vfprintf_r+0x402>
 8003e40:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003e44:	4602      	mov	r2, r0
 8003e46:	460b      	mov	r3, r1
 8003e48:	f7fd f970 	bl	800112c <__aeabi_dcmpun>
 8003e4c:	2800      	cmp	r0, #0
 8003e4e:	f040 8491 	bne.w	8004774 <_vfprintf_r+0x194c>
 8003e52:	2e61      	cmp	r6, #97	; 0x61
 8003e54:	f000 8111 	beq.w	800407a <_vfprintf_r+0x1252>
 8003e58:	2e41      	cmp	r6, #65	; 0x41
 8003e5a:	f000 8377 	beq.w	800454c <_vfprintf_r+0x1724>
 8003e5e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003e62:	f026 0220 	bic.w	r2, r6, #32
 8003e66:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003e6a:	930e      	str	r3, [sp, #56]	; 0x38
 8003e6c:	9204      	str	r2, [sp, #16]
 8003e6e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003e70:	f000 842d 	beq.w	80046ce <_vfprintf_r+0x18a6>
 8003e74:	2a47      	cmp	r2, #71	; 0x47
 8003e76:	f000 8424 	beq.w	80046c2 <_vfprintf_r+0x189a>
 8003e7a:	2b00      	cmp	r3, #0
 8003e7c:	f2c0 82f9 	blt.w	8004472 <_vfprintf_r+0x164a>
 8003e80:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003e84:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003e88:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003e8c:	2e66      	cmp	r6, #102	; 0x66
 8003e8e:	f000 83eb 	beq.w	8004668 <_vfprintf_r+0x1840>
 8003e92:	2e46      	cmp	r6, #70	; 0x46
 8003e94:	f000 847e 	beq.w	8004794 <_vfprintf_r+0x196c>
 8003e98:	9b04      	ldr	r3, [sp, #16]
 8003e9a:	9803      	ldr	r0, [sp, #12]
 8003e9c:	2b45      	cmp	r3, #69	; 0x45
 8003e9e:	bf0c      	ite	eq
 8003ea0:	f109 0501 	addeq.w	r5, r9, #1
 8003ea4:	464d      	movne	r5, r9
 8003ea6:	aa28      	add	r2, sp, #160	; 0xa0
 8003ea8:	ab25      	add	r3, sp, #148	; 0x94
 8003eaa:	e9cd 3200 	strd	r3, r2, [sp]
 8003eae:	2102      	movs	r1, #2
 8003eb0:	ab24      	add	r3, sp, #144	; 0x90
 8003eb2:	462a      	mov	r2, r5
 8003eb4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003eb8:	f000 fe3e 	bl	8004b38 <_dtoa_r>
 8003ebc:	2e67      	cmp	r6, #103	; 0x67
 8003ebe:	4607      	mov	r7, r0
 8003ec0:	f040 849c 	bne.w	80047fc <_vfprintf_r+0x19d4>
 8003ec4:	f018 0f01 	tst.w	r8, #1
 8003ec8:	f040 83f9 	bne.w	80046be <_vfprintf_r+0x1896>
 8003ecc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ece:	4640      	mov	r0, r8
 8003ed0:	1bdb      	subs	r3, r3, r7
 8003ed2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ed6:	9310      	str	r3, [sp, #64]	; 0x40
 8003ed8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003eda:	9311      	str	r3, [sp, #68]	; 0x44
 8003edc:	9b04      	ldr	r3, [sp, #16]
 8003ede:	2b47      	cmp	r3, #71	; 0x47
 8003ee0:	f000 81e7 	beq.w	80042b2 <_vfprintf_r+0x148a>
 8003ee4:	9b04      	ldr	r3, [sp, #16]
 8003ee6:	2b46      	cmp	r3, #70	; 0x46
 8003ee8:	f000 8300 	beq.w	80044ec <_vfprintf_r+0x16c4>
 8003eec:	9904      	ldr	r1, [sp, #16]
 8003eee:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ef0:	b2f2      	uxtb	r2, r6
 8003ef2:	2941      	cmp	r1, #65	; 0x41
 8003ef4:	bf08      	it	eq
 8003ef6:	320f      	addeq	r2, #15
 8003ef8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003efc:	bf06      	itte	eq
 8003efe:	b2d2      	uxtbeq	r2, r2
 8003f00:	2101      	moveq	r1, #1
 8003f02:	2100      	movne	r1, #0
 8003f04:	2b00      	cmp	r3, #0
 8003f06:	9324      	str	r3, [sp, #144]	; 0x90
 8003f08:	bfb8      	it	lt
 8003f0a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003f0c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003f10:	bfba      	itte	lt
 8003f12:	f1c3 0301 	rsblt	r3, r3, #1
 8003f16:	222d      	movlt	r2, #45	; 0x2d
 8003f18:	222b      	movge	r2, #43	; 0x2b
 8003f1a:	2b09      	cmp	r3, #9
 8003f1c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003f20:	f300 83f9 	bgt.w	8004716 <_vfprintf_r+0x18ee>
 8003f24:	2900      	cmp	r1, #0
 8003f26:	f040 8487 	bne.w	8004838 <_vfprintf_r+0x1a10>
 8003f2a:	2230      	movs	r2, #48	; 0x30
 8003f2c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003f30:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003f34:	3330      	adds	r3, #48	; 0x30
 8003f36:	7013      	strb	r3, [r2, #0]
 8003f38:	1c53      	adds	r3, r2, #1
 8003f3a:	aa26      	add	r2, sp, #152	; 0x98
 8003f3c:	1a9b      	subs	r3, r3, r2
 8003f3e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003f40:	9319      	str	r3, [sp, #100]	; 0x64
 8003f42:	2a01      	cmp	r2, #1
 8003f44:	4413      	add	r3, r2
 8003f46:	9309      	str	r3, [sp, #36]	; 0x24
 8003f48:	f340 8442 	ble.w	80047d0 <_vfprintf_r+0x19a8>
 8003f4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f4e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f50:	4413      	add	r3, r2
 8003f52:	9309      	str	r3, [sp, #36]	; 0x24
 8003f54:	2300      	movs	r3, #0
 8003f56:	930f      	str	r3, [sp, #60]	; 0x3c
 8003f58:	9314      	str	r3, [sp, #80]	; 0x50
 8003f5a:	9311      	str	r3, [sp, #68]	; 0x44
 8003f5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f5e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003f62:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f66:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003f6a:	9304      	str	r3, [sp, #16]
 8003f6c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003f6e:	2b00      	cmp	r3, #0
 8003f70:	f040 8275 	bne.w	800445e <_vfprintf_r+0x1636>
 8003f74:	4699      	mov	r9, r3
 8003f76:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003f7a:	f7ff b8e2 	b.w	8003142 <_vfprintf_r+0x31a>
 8003f7e:	bf00      	nop
 8003f80:	08007614 	.word	0x08007614
 8003f84:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003f86:	49bd      	ldr	r1, [pc, #756]	; (800427c <_vfprintf_r+0x1454>)
 8003f88:	f8cb 1000 	str.w	r1, [fp]
 8003f8c:	3201      	adds	r2, #1
 8003f8e:	3401      	adds	r4, #1
 8003f90:	2101      	movs	r1, #1
 8003f92:	2a07      	cmp	r2, #7
 8003f94:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f98:	f8cb 1004 	str.w	r1, [fp, #4]
 8003f9c:	dc60      	bgt.n	8004060 <_vfprintf_r+0x1238>
 8003f9e:	f10b 0b08 	add.w	fp, fp, #8
 8003fa2:	b92b      	cbnz	r3, 8003fb0 <_vfprintf_r+0x1188>
 8003fa4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003fa6:	b91a      	cbnz	r2, 8003fb0 <_vfprintf_r+0x1188>
 8003fa8:	f018 0f01 	tst.w	r8, #1
 8003fac:	f43f a98d 	beq.w	80032ca <_vfprintf_r+0x4a2>
 8003fb0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003fb2:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003fb4:	f8cb 1000 	str.w	r1, [fp]
 8003fb8:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003fba:	f8cb 1004 	str.w	r1, [fp, #4]
 8003fbe:	3201      	adds	r2, #1
 8003fc0:	440c      	add	r4, r1
 8003fc2:	2a07      	cmp	r2, #7
 8003fc4:	942c      	str	r4, [sp, #176]	; 0xb0
 8003fc6:	922b      	str	r2, [sp, #172]	; 0xac
 8003fc8:	f300 8282 	bgt.w	80044d0 <_vfprintf_r+0x16a8>
 8003fcc:	f10b 0b08 	add.w	fp, fp, #8
 8003fd0:	2b00      	cmp	r3, #0
 8003fd2:	f2c0 82e7 	blt.w	80045a4 <_vfprintf_r+0x177c>
 8003fd6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fd8:	3201      	adds	r2, #1
 8003fda:	441c      	add	r4, r3
 8003fdc:	2a07      	cmp	r2, #7
 8003fde:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003fe2:	e9cb 7300 	strd	r7, r3, [fp]
 8003fe6:	f77f a96e 	ble.w	80032c6 <_vfprintf_r+0x49e>
 8003fea:	e4fe      	b.n	80039ea <_vfprintf_r+0xbc2>
 8003fec:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fee:	9907      	ldr	r1, [sp, #28]
 8003ff0:	9803      	ldr	r0, [sp, #12]
 8003ff2:	f002 ff85 	bl	8006f00 <__sprint_r>
 8003ff6:	2800      	cmp	r0, #0
 8003ff8:	f47f ac8e 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8003ffc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004000:	f7ff bbf0 	b.w	80037e4 <_vfprintf_r+0x9bc>
 8004004:	9a05      	ldr	r2, [sp, #20]
 8004006:	601a      	str	r2, [r3, #0]
 8004008:	4657      	mov	r7, sl
 800400a:	f7ff b9b3 	b.w	8003374 <_vfprintf_r+0x54c>
 800400e:	8814      	ldrh	r4, [r2, #0]
 8004010:	9108      	str	r1, [sp, #32]
 8004012:	2500      	movs	r5, #0
 8004014:	2201      	movs	r2, #1
 8004016:	f7ff b9c8 	b.w	80033aa <_vfprintf_r+0x582>
 800401a:	8814      	ldrh	r4, [r2, #0]
 800401c:	9308      	str	r3, [sp, #32]
 800401e:	2500      	movs	r5, #0
 8004020:	f7ff ba14 	b.w	800344c <_vfprintf_r+0x624>
 8004024:	f9b1 4000 	ldrsh.w	r4, [r1]
 8004028:	9208      	str	r2, [sp, #32]
 800402a:	17e5      	asrs	r5, r4, #31
 800402c:	4620      	mov	r0, r4
 800402e:	4629      	mov	r1, r5
 8004030:	f7ff b855 	b.w	80030de <_vfprintf_r+0x2b6>
 8004034:	8814      	ldrh	r4, [r2, #0]
 8004036:	9308      	str	r3, [sp, #32]
 8004038:	2500      	movs	r5, #0
 800403a:	f7ff b825 	b.w	8003088 <_vfprintf_r+0x260>
 800403e:	222d      	movs	r2, #45	; 0x2d
 8004040:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004044:	f7ff baa2 	b.w	800358c <_vfprintf_r+0x764>
 8004048:	aa2a      	add	r2, sp, #168	; 0xa8
 800404a:	9907      	ldr	r1, [sp, #28]
 800404c:	9803      	ldr	r0, [sp, #12]
 800404e:	f002 ff57 	bl	8006f00 <__sprint_r>
 8004052:	2800      	cmp	r0, #0
 8004054:	f47f ac60 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8004058:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800405a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800405e:	e534      	b.n	8003aca <_vfprintf_r+0xca2>
 8004060:	aa2a      	add	r2, sp, #168	; 0xa8
 8004062:	9907      	ldr	r1, [sp, #28]
 8004064:	9803      	ldr	r0, [sp, #12]
 8004066:	f002 ff4b 	bl	8006f00 <__sprint_r>
 800406a:	2800      	cmp	r0, #0
 800406c:	f47f ac54 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8004070:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004072:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004074:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004078:	e793      	b.n	8003fa2 <_vfprintf_r+0x117a>
 800407a:	2330      	movs	r3, #48	; 0x30
 800407c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004080:	2378      	movs	r3, #120	; 0x78
 8004082:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8004086:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800408a:	f048 0402 	orr.w	r4, r8, #2
 800408e:	f300 82b0 	bgt.w	80045f2 <_vfprintf_r+0x17ca>
 8004092:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004096:	930e      	str	r3, [sp, #56]	; 0x38
 8004098:	f026 0320 	bic.w	r3, r6, #32
 800409c:	9304      	str	r3, [sp, #16]
 800409e:	2200      	movs	r2, #0
 80040a0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80040a2:	920a      	str	r2, [sp, #40]	; 0x28
 80040a4:	46a0      	mov	r8, r4
 80040a6:	af3d      	add	r7, sp, #244	; 0xf4
 80040a8:	2b00      	cmp	r3, #0
 80040aa:	f2c0 81e3 	blt.w	8004474 <_vfprintf_r+0x164c>
 80040ae:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80040b2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80040b6:	2300      	movs	r3, #0
 80040b8:	930b      	str	r3, [sp, #44]	; 0x2c
 80040ba:	2e61      	cmp	r6, #97	; 0x61
 80040bc:	f000 8255 	beq.w	800456a <_vfprintf_r+0x1742>
 80040c0:	2e41      	cmp	r6, #65	; 0x41
 80040c2:	f47f aee3 	bne.w	8003e8c <_vfprintf_r+0x1064>
 80040c6:	a824      	add	r0, sp, #144	; 0x90
 80040c8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80040cc:	f002 fe32 	bl	8006d34 <frexp>
 80040d0:	2200      	movs	r2, #0
 80040d2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80040d6:	ec51 0b10 	vmov	r0, r1, d0
 80040da:	f7fc fd8d 	bl	8000bf8 <__aeabi_dmul>
 80040de:	2200      	movs	r2, #0
 80040e0:	2300      	movs	r3, #0
 80040e2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80040e6:	f7fc ffef 	bl	80010c8 <__aeabi_dcmpeq>
 80040ea:	2800      	cmp	r0, #0
 80040ec:	f040 8305 	bne.w	80046fa <_vfprintf_r+0x18d2>
 80040f0:	4b63      	ldr	r3, [pc, #396]	; (8004280 <_vfprintf_r+0x1458>)
 80040f2:	9309      	str	r3, [sp, #36]	; 0x24
 80040f4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80040f8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80040fc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8004100:	9721      	str	r7, [sp, #132]	; 0x84
 8004102:	46b9      	mov	r9, r7
 8004104:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8004108:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800410c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004110:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8004114:	e003      	b.n	800411e <_vfprintf_r+0x12f6>
 8004116:	f7fc ffd7 	bl	80010c8 <__aeabi_dcmpeq>
 800411a:	bb20      	cbnz	r0, 8004166 <_vfprintf_r+0x133e>
 800411c:	46a9      	mov	r9, r5
 800411e:	2200      	movs	r2, #0
 8004120:	4b58      	ldr	r3, [pc, #352]	; (8004284 <_vfprintf_r+0x145c>)
 8004122:	4630      	mov	r0, r6
 8004124:	4639      	mov	r1, r7
 8004126:	f7fc fd67 	bl	8000bf8 <__aeabi_dmul>
 800412a:	460f      	mov	r7, r1
 800412c:	4606      	mov	r6, r0
 800412e:	f7fd f813 	bl	8001158 <__aeabi_d2iz>
 8004132:	4680      	mov	r8, r0
 8004134:	f7fc fcf6 	bl	8000b24 <__aeabi_i2d>
 8004138:	4602      	mov	r2, r0
 800413a:	460b      	mov	r3, r1
 800413c:	4630      	mov	r0, r6
 800413e:	4639      	mov	r1, r7
 8004140:	f7fc fba2 	bl	8000888 <__aeabi_dsub>
 8004144:	464d      	mov	r5, r9
 8004146:	f81a c008 	ldrb.w	ip, [sl, r8]
 800414a:	f805 cb01 	strb.w	ip, [r5], #1
 800414e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8004152:	46a3      	mov	fp, r4
 8004154:	4606      	mov	r6, r0
 8004156:	460f      	mov	r7, r1
 8004158:	f04f 0200 	mov.w	r2, #0
 800415c:	f04f 0300 	mov.w	r3, #0
 8004160:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8004164:	d1d7      	bne.n	8004116 <_vfprintf_r+0x12ee>
 8004166:	4630      	mov	r0, r6
 8004168:	4639      	mov	r1, r7
 800416a:	2200      	movs	r2, #0
 800416c:	4b46      	ldr	r3, [pc, #280]	; (8004288 <_vfprintf_r+0x1460>)
 800416e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8004172:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8004174:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8004178:	4644      	mov	r4, r8
 800417a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800417e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8004182:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8004186:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800418a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800418c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004190:	f7fc ffc2 	bl	8001118 <__aeabi_dcmpgt>
 8004194:	2800      	cmp	r0, #0
 8004196:	f040 8176 	bne.w	8004486 <_vfprintf_r+0x165e>
 800419a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800419e:	2200      	movs	r2, #0
 80041a0:	4b39      	ldr	r3, [pc, #228]	; (8004288 <_vfprintf_r+0x1460>)
 80041a2:	f7fc ff91 	bl	80010c8 <__aeabi_dcmpeq>
 80041a6:	b110      	cbz	r0, 80041ae <_vfprintf_r+0x1386>
 80041a8:	07e2      	lsls	r2, r4, #31
 80041aa:	f100 816c 	bmi.w	8004486 <_vfprintf_r+0x165e>
 80041ae:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80041b0:	2b00      	cmp	r3, #0
 80041b2:	db07      	blt.n	80041c4 <_vfprintf_r+0x139c>
 80041b4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80041b6:	3301      	adds	r3, #1
 80041b8:	442b      	add	r3, r5
 80041ba:	2230      	movs	r2, #48	; 0x30
 80041bc:	f805 2b01 	strb.w	r2, [r5], #1
 80041c0:	42ab      	cmp	r3, r5
 80041c2:	d1fb      	bne.n	80041bc <_vfprintf_r+0x1394>
 80041c4:	1beb      	subs	r3, r5, r7
 80041c6:	4640      	mov	r0, r8
 80041c8:	9310      	str	r3, [sp, #64]	; 0x40
 80041ca:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80041ce:	e683      	b.n	8003ed8 <_vfprintf_r+0x10b0>
 80041d0:	f8cd 9010 	str.w	r9, [sp, #16]
 80041d4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80041d8:	9408      	str	r4, [sp, #32]
 80041da:	4681      	mov	r9, r0
 80041dc:	900f      	str	r0, [sp, #60]	; 0x3c
 80041de:	9014      	str	r0, [sp, #80]	; 0x50
 80041e0:	9011      	str	r0, [sp, #68]	; 0x44
 80041e2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80041e6:	f7fe bfac 	b.w	8003142 <_vfprintf_r+0x31a>
 80041ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80041ec:	9907      	ldr	r1, [sp, #28]
 80041ee:	9803      	ldr	r0, [sp, #12]
 80041f0:	f002 fe86 	bl	8006f00 <__sprint_r>
 80041f4:	2800      	cmp	r0, #0
 80041f6:	f47f ab8f 	bne.w	8003918 <_vfprintf_r+0xaf0>
 80041fa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80041fc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80041fe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004202:	e511      	b.n	8003c28 <_vfprintf_r+0xe00>
 8004204:	4252      	negs	r2, r2
 8004206:	9206      	str	r2, [sp, #24]
 8004208:	9308      	str	r3, [sp, #32]
 800420a:	f7ff b96d 	b.w	80034e8 <_vfprintf_r+0x6c0>
 800420e:	4614      	mov	r4, r2
 8004210:	4632      	mov	r2, r6
 8004212:	461e      	mov	r6, r3
 8004214:	4613      	mov	r3, r2
 8004216:	462a      	mov	r2, r5
 8004218:	3201      	adds	r2, #1
 800421a:	9209      	str	r2, [sp, #36]	; 0x24
 800421c:	f106 0208 	add.w	r2, r6, #8
 8004220:	e9c6 3900 	strd	r3, r9, [r6]
 8004224:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004226:	932b      	str	r3, [sp, #172]	; 0xac
 8004228:	444c      	add	r4, r9
 800422a:	2b07      	cmp	r3, #7
 800422c:	942c      	str	r4, [sp, #176]	; 0xb0
 800422e:	f73f acc3 	bgt.w	8003bb8 <_vfprintf_r+0xd90>
 8004232:	3301      	adds	r3, #1
 8004234:	9309      	str	r3, [sp, #36]	; 0x24
 8004236:	f102 0b08 	add.w	fp, r2, #8
 800423a:	4616      	mov	r6, r2
 800423c:	f7ff bbca 	b.w	80039d4 <_vfprintf_r+0xbac>
 8004240:	aa2a      	add	r2, sp, #168	; 0xa8
 8004242:	9907      	ldr	r1, [sp, #28]
 8004244:	9803      	ldr	r0, [sp, #12]
 8004246:	f002 fe5b 	bl	8006f00 <__sprint_r>
 800424a:	2800      	cmp	r0, #0
 800424c:	f47f ab64 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8004250:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004252:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004256:	f7ff bade 	b.w	8003816 <_vfprintf_r+0x9ee>
 800425a:	464b      	mov	r3, r9
 800425c:	2b06      	cmp	r3, #6
 800425e:	bf28      	it	cs
 8004260:	2306      	movcs	r3, #6
 8004262:	46b9      	mov	r9, r7
 8004264:	970f      	str	r7, [sp, #60]	; 0x3c
 8004266:	9714      	str	r7, [sp, #80]	; 0x50
 8004268:	9711      	str	r7, [sp, #68]	; 0x44
 800426a:	970a      	str	r7, [sp, #40]	; 0x28
 800426c:	463a      	mov	r2, r7
 800426e:	9304      	str	r3, [sp, #16]
 8004270:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8004274:	4f05      	ldr	r7, [pc, #20]	; (800428c <_vfprintf_r+0x1464>)
 8004276:	f7fe bf64 	b.w	8003142 <_vfprintf_r+0x31a>
 800427a:	bf00      	nop
 800427c:	08007600 	.word	0x08007600
 8004280:	080075e4 	.word	0x080075e4
 8004284:	40300000 	.word	0x40300000
 8004288:	3fe00000 	.word	0x3fe00000
 800428c:	080075f8 	.word	0x080075f8
 8004290:	460c      	mov	r4, r1
 8004292:	4639      	mov	r1, r7
 8004294:	465f      	mov	r7, fp
 8004296:	469b      	mov	fp, r3
 8004298:	460b      	mov	r3, r1
 800429a:	3201      	adds	r2, #1
 800429c:	442c      	add	r4, r5
 800429e:	2a07      	cmp	r2, #7
 80042a0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80042a4:	e9cb 3500 	strd	r3, r5, [fp]
 80042a8:	f73f aca5 	bgt.w	8003bf6 <_vfprintf_r+0xdce>
 80042ac:	f10b 0b08 	add.w	fp, fp, #8
 80042b0:	e4ac      	b.n	8003c0c <_vfprintf_r+0xde4>
 80042b2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80042b4:	1cda      	adds	r2, r3, #3
 80042b6:	db02      	blt.n	80042be <_vfprintf_r+0x1496>
 80042b8:	4599      	cmp	r9, r3
 80042ba:	f280 80b5 	bge.w	8004428 <_vfprintf_r+0x1600>
 80042be:	3e02      	subs	r6, #2
 80042c0:	f026 0320 	bic.w	r3, r6, #32
 80042c4:	9304      	str	r3, [sp, #16]
 80042c6:	e611      	b.n	8003eec <_vfprintf_r+0x10c4>
 80042c8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80042ca:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80042ce:	465a      	mov	r2, fp
 80042d0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80042d4:	18fb      	adds	r3, r7, r3
 80042d6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80042da:	970c      	str	r7, [sp, #48]	; 0x30
 80042dc:	4eaf      	ldr	r6, [pc, #700]	; (800459c <_vfprintf_r+0x1774>)
 80042de:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80042e2:	9309      	str	r3, [sp, #36]	; 0x24
 80042e4:	464f      	mov	r7, r9
 80042e6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80042ea:	4621      	mov	r1, r4
 80042ec:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80042ee:	2b00      	cmp	r3, #0
 80042f0:	d05b      	beq.n	80043aa <_vfprintf_r+0x1582>
 80042f2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80042f4:	2b00      	cmp	r3, #0
 80042f6:	d154      	bne.n	80043a2 <_vfprintf_r+0x157a>
 80042f8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80042fa:	3b01      	subs	r3, #1
 80042fc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8004300:	9314      	str	r3, [sp, #80]	; 0x50
 8004302:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004304:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004306:	6010      	str	r0, [r2, #0]
 8004308:	3301      	adds	r3, #1
 800430a:	4459      	add	r1, fp
 800430c:	2b07      	cmp	r3, #7
 800430e:	912c      	str	r1, [sp, #176]	; 0xb0
 8004310:	f8c2 b004 	str.w	fp, [r2, #4]
 8004314:	932b      	str	r3, [sp, #172]	; 0xac
 8004316:	dc68      	bgt.n	80043ea <_vfprintf_r+0x15c2>
 8004318:	3208      	adds	r2, #8
 800431a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800431c:	f898 3000 	ldrb.w	r3, [r8]
 8004320:	1bc5      	subs	r5, r0, r7
 8004322:	429d      	cmp	r5, r3
 8004324:	bfa8      	it	ge
 8004326:	461d      	movge	r5, r3
 8004328:	2d00      	cmp	r5, #0
 800432a:	dd0b      	ble.n	8004344 <_vfprintf_r+0x151c>
 800432c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800432e:	6017      	str	r7, [r2, #0]
 8004330:	3301      	adds	r3, #1
 8004332:	4429      	add	r1, r5
 8004334:	2b07      	cmp	r3, #7
 8004336:	912c      	str	r1, [sp, #176]	; 0xb0
 8004338:	6055      	str	r5, [r2, #4]
 800433a:	932b      	str	r3, [sp, #172]	; 0xac
 800433c:	dc5e      	bgt.n	80043fc <_vfprintf_r+0x15d4>
 800433e:	f898 3000 	ldrb.w	r3, [r8]
 8004342:	3208      	adds	r2, #8
 8004344:	2d00      	cmp	r5, #0
 8004346:	bfac      	ite	ge
 8004348:	1b5d      	subge	r5, r3, r5
 800434a:	461d      	movlt	r5, r3
 800434c:	2d00      	cmp	r5, #0
 800434e:	dd26      	ble.n	800439e <_vfprintf_r+0x1576>
 8004350:	2d10      	cmp	r5, #16
 8004352:	982b      	ldr	r0, [sp, #172]	; 0xac
 8004354:	dd3c      	ble.n	80043d0 <_vfprintf_r+0x15a8>
 8004356:	2410      	movs	r4, #16
 8004358:	e003      	b.n	8004362 <_vfprintf_r+0x153a>
 800435a:	3208      	adds	r2, #8
 800435c:	3d10      	subs	r5, #16
 800435e:	2d10      	cmp	r5, #16
 8004360:	dd36      	ble.n	80043d0 <_vfprintf_r+0x15a8>
 8004362:	3001      	adds	r0, #1
 8004364:	3110      	adds	r1, #16
 8004366:	2807      	cmp	r0, #7
 8004368:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800436c:	e9c2 6400 	strd	r6, r4, [r2]
 8004370:	ddf3      	ble.n	800435a <_vfprintf_r+0x1532>
 8004372:	aa2a      	add	r2, sp, #168	; 0xa8
 8004374:	4651      	mov	r1, sl
 8004376:	4648      	mov	r0, r9
 8004378:	f002 fdc2 	bl	8006f00 <__sprint_r>
 800437c:	2800      	cmp	r0, #0
 800437e:	d150      	bne.n	8004422 <_vfprintf_r+0x15fa>
 8004380:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8004384:	aa2d      	add	r2, sp, #180	; 0xb4
 8004386:	e7e9      	b.n	800435c <_vfprintf_r+0x1534>
 8004388:	aa2a      	add	r2, sp, #168	; 0xa8
 800438a:	4651      	mov	r1, sl
 800438c:	4648      	mov	r0, r9
 800438e:	f002 fdb7 	bl	8006f00 <__sprint_r>
 8004392:	2800      	cmp	r0, #0
 8004394:	d145      	bne.n	8004422 <_vfprintf_r+0x15fa>
 8004396:	f898 3000 	ldrb.w	r3, [r8]
 800439a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800439c:	aa2d      	add	r2, sp, #180	; 0xb4
 800439e:	441f      	add	r7, r3
 80043a0:	e7a4      	b.n	80042ec <_vfprintf_r+0x14c4>
 80043a2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80043a4:	3b01      	subs	r3, #1
 80043a6:	930f      	str	r3, [sp, #60]	; 0x3c
 80043a8:	e7ab      	b.n	8004302 <_vfprintf_r+0x14da>
 80043aa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80043ac:	2b00      	cmp	r3, #0
 80043ae:	d1f8      	bne.n	80043a2 <_vfprintf_r+0x157a>
 80043b0:	46b9      	mov	r9, r7
 80043b2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80043b4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80043b6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80043ba:	18fb      	adds	r3, r7, r3
 80043bc:	4599      	cmp	r9, r3
 80043be:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80043c2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80043c6:	4693      	mov	fp, r2
 80043c8:	460c      	mov	r4, r1
 80043ca:	bf28      	it	cs
 80043cc:	4699      	movcs	r9, r3
 80043ce:	e424      	b.n	8003c1a <_vfprintf_r+0xdf2>
 80043d0:	3001      	adds	r0, #1
 80043d2:	4429      	add	r1, r5
 80043d4:	2807      	cmp	r0, #7
 80043d6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80043da:	e9c2 6500 	strd	r6, r5, [r2]
 80043de:	dcd3      	bgt.n	8004388 <_vfprintf_r+0x1560>
 80043e0:	f898 3000 	ldrb.w	r3, [r8]
 80043e4:	3208      	adds	r2, #8
 80043e6:	441f      	add	r7, r3
 80043e8:	e780      	b.n	80042ec <_vfprintf_r+0x14c4>
 80043ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80043ec:	4651      	mov	r1, sl
 80043ee:	4648      	mov	r0, r9
 80043f0:	f002 fd86 	bl	8006f00 <__sprint_r>
 80043f4:	b9a8      	cbnz	r0, 8004422 <_vfprintf_r+0x15fa>
 80043f6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80043f8:	aa2d      	add	r2, sp, #180	; 0xb4
 80043fa:	e78e      	b.n	800431a <_vfprintf_r+0x14f2>
 80043fc:	aa2a      	add	r2, sp, #168	; 0xa8
 80043fe:	4651      	mov	r1, sl
 8004400:	4648      	mov	r0, r9
 8004402:	f002 fd7d 	bl	8006f00 <__sprint_r>
 8004406:	b960      	cbnz	r0, 8004422 <_vfprintf_r+0x15fa>
 8004408:	f898 3000 	ldrb.w	r3, [r8]
 800440c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800440e:	aa2d      	add	r2, sp, #180	; 0xb4
 8004410:	e798      	b.n	8004344 <_vfprintf_r+0x151c>
 8004412:	4638      	mov	r0, r7
 8004414:	f7fc f974 	bl	8000700 <strlen>
 8004418:	46a9      	mov	r9, r5
 800441a:	4603      	mov	r3, r0
 800441c:	9009      	str	r0, [sp, #36]	; 0x24
 800441e:	f7ff b8f4 	b.w	800360a <_vfprintf_r+0x7e2>
 8004422:	46d1      	mov	r9, sl
 8004424:	f7ff ba7a 	b.w	800391c <_vfprintf_r+0xaf4>
 8004428:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800442a:	4619      	mov	r1, r3
 800442c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800442e:	4299      	cmp	r1, r3
 8004430:	f300 8082 	bgt.w	8004538 <_vfprintf_r+0x1710>
 8004434:	07c4      	lsls	r4, r0, #31
 8004436:	f140 816b 	bpl.w	8004710 <_vfprintf_r+0x18e8>
 800443a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800443c:	4413      	add	r3, r2
 800443e:	9309      	str	r3, [sp, #36]	; 0x24
 8004440:	0541      	lsls	r1, r0, #21
 8004442:	d503      	bpl.n	800444c <_vfprintf_r+0x1624>
 8004444:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004446:	2b00      	cmp	r3, #0
 8004448:	f300 80e6 	bgt.w	8004618 <_vfprintf_r+0x17f0>
 800444c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800444e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004452:	9304      	str	r3, [sp, #16]
 8004454:	2667      	movs	r6, #103	; 0x67
 8004456:	2300      	movs	r3, #0
 8004458:	930f      	str	r3, [sp, #60]	; 0x3c
 800445a:	9314      	str	r3, [sp, #80]	; 0x50
 800445c:	e586      	b.n	8003f6c <_vfprintf_r+0x1144>
 800445e:	222d      	movs	r2, #45	; 0x2d
 8004460:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004464:	f04f 0900 	mov.w	r9, #0
 8004468:	f7fe be6c 	b.w	8003144 <_vfprintf_r+0x31c>
 800446c:	46a1      	mov	r9, r4
 800446e:	f7ff ba55 	b.w	800391c <_vfprintf_r+0xaf4>
 8004472:	900a      	str	r0, [sp, #40]	; 0x28
 8004474:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8004478:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800447c:	931f      	str	r3, [sp, #124]	; 0x7c
 800447e:	232d      	movs	r3, #45	; 0x2d
 8004480:	911e      	str	r1, [sp, #120]	; 0x78
 8004482:	930b      	str	r3, [sp, #44]	; 0x2c
 8004484:	e619      	b.n	80040ba <_vfprintf_r+0x1292>
 8004486:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004488:	9328      	str	r3, [sp, #160]	; 0xa0
 800448a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800448c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8004490:	7bd9      	ldrb	r1, [r3, #15]
 8004492:	4291      	cmp	r1, r2
 8004494:	462b      	mov	r3, r5
 8004496:	d109      	bne.n	80044ac <_vfprintf_r+0x1684>
 8004498:	2030      	movs	r0, #48	; 0x30
 800449a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800449e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80044a0:	1e5a      	subs	r2, r3, #1
 80044a2:	9228      	str	r2, [sp, #160]	; 0xa0
 80044a4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80044a8:	4291      	cmp	r1, r2
 80044aa:	d0f6      	beq.n	800449a <_vfprintf_r+0x1672>
 80044ac:	2a39      	cmp	r2, #57	; 0x39
 80044ae:	bf0b      	itete	eq
 80044b0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80044b2:	3201      	addne	r2, #1
 80044b4:	7a92      	ldrbeq	r2, [r2, #10]
 80044b6:	b2d2      	uxtbne	r2, r2
 80044b8:	f803 2c01 	strb.w	r2, [r3, #-1]
 80044bc:	e682      	b.n	80041c4 <_vfprintf_r+0x139c>
 80044be:	f418 7f00 	tst.w	r8, #512	; 0x200
 80044c2:	f43f ad9f 	beq.w	8004004 <_vfprintf_r+0x11dc>
 80044c6:	9a05      	ldr	r2, [sp, #20]
 80044c8:	701a      	strb	r2, [r3, #0]
 80044ca:	4657      	mov	r7, sl
 80044cc:	f7fe bf52 	b.w	8003374 <_vfprintf_r+0x54c>
 80044d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80044d2:	9907      	ldr	r1, [sp, #28]
 80044d4:	9803      	ldr	r0, [sp, #12]
 80044d6:	f002 fd13 	bl	8006f00 <__sprint_r>
 80044da:	2800      	cmp	r0, #0
 80044dc:	f47f aa1c 	bne.w	8003918 <_vfprintf_r+0xaf0>
 80044e0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80044e2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80044e6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80044ea:	e571      	b.n	8003fd0 <_vfprintf_r+0x11a8>
 80044ec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80044ee:	2b00      	cmp	r3, #0
 80044f0:	f340 8164 	ble.w	80047bc <_vfprintf_r+0x1994>
 80044f4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80044f6:	f1b9 0f00 	cmp.w	r9, #0
 80044fa:	f040 8103 	bne.w	8004704 <_vfprintf_r+0x18dc>
 80044fe:	07c6      	lsls	r6, r0, #31
 8004500:	f100 8100 	bmi.w	8004704 <_vfprintf_r+0x18dc>
 8004504:	9309      	str	r3, [sp, #36]	; 0x24
 8004506:	2666      	movs	r6, #102	; 0x66
 8004508:	0543      	lsls	r3, r0, #21
 800450a:	f100 8086 	bmi.w	800461a <_vfprintf_r+0x17f2>
 800450e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004510:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004514:	9304      	str	r3, [sp, #16]
 8004516:	e79e      	b.n	8004456 <_vfprintf_r+0x162e>
 8004518:	aa2a      	add	r2, sp, #168	; 0xa8
 800451a:	9907      	ldr	r1, [sp, #28]
 800451c:	9803      	ldr	r0, [sp, #12]
 800451e:	f002 fcef 	bl	8006f00 <__sprint_r>
 8004522:	2800      	cmp	r0, #0
 8004524:	f47f a9f8 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8004528:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800452a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800452c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800452e:	1ad3      	subs	r3, r2, r3
 8004530:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004534:	f7ff bb90 	b.w	8003c58 <_vfprintf_r+0xe30>
 8004538:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800453a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800453c:	4413      	add	r3, r2
 800453e:	9309      	str	r3, [sp, #36]	; 0x24
 8004540:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004542:	2b00      	cmp	r3, #0
 8004544:	f340 8149 	ble.w	80047da <_vfprintf_r+0x19b2>
 8004548:	2667      	movs	r6, #103	; 0x67
 800454a:	e7dd      	b.n	8004508 <_vfprintf_r+0x16e0>
 800454c:	2330      	movs	r3, #48	; 0x30
 800454e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004552:	2358      	movs	r3, #88	; 0x58
 8004554:	e595      	b.n	8004082 <_vfprintf_r+0x125a>
 8004556:	9803      	ldr	r0, [sp, #12]
 8004558:	aa2a      	add	r2, sp, #168	; 0xa8
 800455a:	4649      	mov	r1, r9
 800455c:	f002 fcd0 	bl	8006f00 <__sprint_r>
 8004560:	2800      	cmp	r0, #0
 8004562:	f47f a9e0 	bne.w	8003926 <_vfprintf_r+0xafe>
 8004566:	f7fe bf0f 	b.w	8003388 <_vfprintf_r+0x560>
 800456a:	a824      	add	r0, sp, #144	; 0x90
 800456c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004570:	f002 fbe0 	bl	8006d34 <frexp>
 8004574:	2200      	movs	r2, #0
 8004576:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800457a:	ec51 0b10 	vmov	r0, r1, d0
 800457e:	f7fc fb3b 	bl	8000bf8 <__aeabi_dmul>
 8004582:	2200      	movs	r2, #0
 8004584:	2300      	movs	r3, #0
 8004586:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800458a:	f7fc fd9d 	bl	80010c8 <__aeabi_dcmpeq>
 800458e:	b108      	cbz	r0, 8004594 <_vfprintf_r+0x176c>
 8004590:	2301      	movs	r3, #1
 8004592:	9324      	str	r3, [sp, #144]	; 0x90
 8004594:	4b02      	ldr	r3, [pc, #8]	; (80045a0 <_vfprintf_r+0x1778>)
 8004596:	9309      	str	r3, [sp, #36]	; 0x24
 8004598:	e5ac      	b.n	80040f4 <_vfprintf_r+0x12cc>
 800459a:	bf00      	nop
 800459c:	08007614 	.word	0x08007614
 80045a0:	080075d0 	.word	0x080075d0
 80045a4:	425d      	negs	r5, r3
 80045a6:	3310      	adds	r3, #16
 80045a8:	4bb9      	ldr	r3, [pc, #740]	; (8004890 <_vfprintf_r+0x1a68>)
 80045aa:	f280 8097 	bge.w	80046dc <_vfprintf_r+0x18b4>
 80045ae:	4619      	mov	r1, r3
 80045b0:	2610      	movs	r6, #16
 80045b2:	4623      	mov	r3, r4
 80045b4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80045b8:	460c      	mov	r4, r1
 80045ba:	e005      	b.n	80045c8 <_vfprintf_r+0x17a0>
 80045bc:	f10b 0b08 	add.w	fp, fp, #8
 80045c0:	3d10      	subs	r5, #16
 80045c2:	2d10      	cmp	r5, #16
 80045c4:	f340 8087 	ble.w	80046d6 <_vfprintf_r+0x18ae>
 80045c8:	3201      	adds	r2, #1
 80045ca:	3310      	adds	r3, #16
 80045cc:	2a07      	cmp	r2, #7
 80045ce:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80045d2:	e9cb 4600 	strd	r4, r6, [fp]
 80045d6:	ddf1      	ble.n	80045bc <_vfprintf_r+0x1794>
 80045d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80045da:	9907      	ldr	r1, [sp, #28]
 80045dc:	4648      	mov	r0, r9
 80045de:	f002 fc8f 	bl	8006f00 <__sprint_r>
 80045e2:	2800      	cmp	r0, #0
 80045e4:	f47f a998 	bne.w	8003918 <_vfprintf_r+0xaf0>
 80045e8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80045ec:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80045f0:	e7e6      	b.n	80045c0 <_vfprintf_r+0x1798>
 80045f2:	f109 0101 	add.w	r1, r9, #1
 80045f6:	9803      	ldr	r0, [sp, #12]
 80045f8:	f7fe f8a0 	bl	800273c <_malloc_r>
 80045fc:	4607      	mov	r7, r0
 80045fe:	2800      	cmp	r0, #0
 8004600:	f000 813b 	beq.w	800487a <_vfprintf_r+0x1a52>
 8004604:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004608:	930e      	str	r3, [sp, #56]	; 0x38
 800460a:	f026 0320 	bic.w	r3, r6, #32
 800460e:	9304      	str	r3, [sp, #16]
 8004610:	46a0      	mov	r8, r4
 8004612:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004614:	900a      	str	r0, [sp, #40]	; 0x28
 8004616:	e547      	b.n	80040a8 <_vfprintf_r+0x1280>
 8004618:	2667      	movs	r6, #103	; 0x67
 800461a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800461c:	2200      	movs	r2, #0
 800461e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004620:	9214      	str	r2, [sp, #80]	; 0x50
 8004622:	7803      	ldrb	r3, [r0, #0]
 8004624:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004626:	2bff      	cmp	r3, #255	; 0xff
 8004628:	d00c      	beq.n	8004644 <_vfprintf_r+0x181c>
 800462a:	4293      	cmp	r3, r2
 800462c:	da0a      	bge.n	8004644 <_vfprintf_r+0x181c>
 800462e:	7841      	ldrb	r1, [r0, #1]
 8004630:	1ad2      	subs	r2, r2, r3
 8004632:	b1a9      	cbz	r1, 8004660 <_vfprintf_r+0x1838>
 8004634:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004636:	3301      	adds	r3, #1
 8004638:	9314      	str	r3, [sp, #80]	; 0x50
 800463a:	460b      	mov	r3, r1
 800463c:	2bff      	cmp	r3, #255	; 0xff
 800463e:	f100 0001 	add.w	r0, r0, #1
 8004642:	d1f2      	bne.n	800462a <_vfprintf_r+0x1802>
 8004644:	9211      	str	r2, [sp, #68]	; 0x44
 8004646:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004648:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800464a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800464c:	901a      	str	r0, [sp, #104]	; 0x68
 800464e:	4413      	add	r3, r2
 8004650:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004652:	fb02 1303 	mla	r3, r2, r3, r1
 8004656:	9309      	str	r3, [sp, #36]	; 0x24
 8004658:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800465c:	9304      	str	r3, [sp, #16]
 800465e:	e485      	b.n	8003f6c <_vfprintf_r+0x1144>
 8004660:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004662:	3101      	adds	r1, #1
 8004664:	910f      	str	r1, [sp, #60]	; 0x3c
 8004666:	e7de      	b.n	8004626 <_vfprintf_r+0x17fe>
 8004668:	aa28      	add	r2, sp, #160	; 0xa0
 800466a:	ab25      	add	r3, sp, #148	; 0x94
 800466c:	e9cd 3200 	strd	r3, r2, [sp]
 8004670:	2103      	movs	r1, #3
 8004672:	ab24      	add	r3, sp, #144	; 0x90
 8004674:	464a      	mov	r2, r9
 8004676:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800467a:	9803      	ldr	r0, [sp, #12]
 800467c:	f000 fa5c 	bl	8004b38 <_dtoa_r>
 8004680:	464d      	mov	r5, r9
 8004682:	4607      	mov	r7, r0
 8004684:	eb00 0409 	add.w	r4, r0, r9
 8004688:	783b      	ldrb	r3, [r7, #0]
 800468a:	2b30      	cmp	r3, #48	; 0x30
 800468c:	f000 80be 	beq.w	800480c <_vfprintf_r+0x19e4>
 8004690:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8004692:	442c      	add	r4, r5
 8004694:	2200      	movs	r2, #0
 8004696:	2300      	movs	r3, #0
 8004698:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800469c:	f7fc fd14 	bl	80010c8 <__aeabi_dcmpeq>
 80046a0:	b108      	cbz	r0, 80046a6 <_vfprintf_r+0x187e>
 80046a2:	4623      	mov	r3, r4
 80046a4:	e413      	b.n	8003ece <_vfprintf_r+0x10a6>
 80046a6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80046a8:	42a3      	cmp	r3, r4
 80046aa:	f4bf ac10 	bcs.w	8003ece <_vfprintf_r+0x10a6>
 80046ae:	2130      	movs	r1, #48	; 0x30
 80046b0:	1c5a      	adds	r2, r3, #1
 80046b2:	9228      	str	r2, [sp, #160]	; 0xa0
 80046b4:	7019      	strb	r1, [r3, #0]
 80046b6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80046b8:	429c      	cmp	r4, r3
 80046ba:	d8f9      	bhi.n	80046b0 <_vfprintf_r+0x1888>
 80046bc:	e407      	b.n	8003ece <_vfprintf_r+0x10a6>
 80046be:	197c      	adds	r4, r7, r5
 80046c0:	e7e8      	b.n	8004694 <_vfprintf_r+0x186c>
 80046c2:	f1b9 0f00 	cmp.w	r9, #0
 80046c6:	f000 8092 	beq.w	80047ee <_vfprintf_r+0x19c6>
 80046ca:	900a      	str	r0, [sp, #40]	; 0x28
 80046cc:	e4ec      	b.n	80040a8 <_vfprintf_r+0x1280>
 80046ce:	900a      	str	r0, [sp, #40]	; 0x28
 80046d0:	f04f 0906 	mov.w	r9, #6
 80046d4:	e4e8      	b.n	80040a8 <_vfprintf_r+0x1280>
 80046d6:	4621      	mov	r1, r4
 80046d8:	461c      	mov	r4, r3
 80046da:	460b      	mov	r3, r1
 80046dc:	3201      	adds	r2, #1
 80046de:	442c      	add	r4, r5
 80046e0:	2a07      	cmp	r2, #7
 80046e2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80046e6:	e9cb 3500 	strd	r3, r5, [fp]
 80046ea:	f300 80a9 	bgt.w	8004840 <_vfprintf_r+0x1a18>
 80046ee:	f10b 0b08 	add.w	fp, fp, #8
 80046f2:	e470      	b.n	8003fd6 <_vfprintf_r+0x11ae>
 80046f4:	469a      	mov	sl, r3
 80046f6:	f7ff bb37 	b.w	8003d68 <_vfprintf_r+0xf40>
 80046fa:	2301      	movs	r3, #1
 80046fc:	9324      	str	r3, [sp, #144]	; 0x90
 80046fe:	4b65      	ldr	r3, [pc, #404]	; (8004894 <_vfprintf_r+0x1a6c>)
 8004700:	9309      	str	r3, [sp, #36]	; 0x24
 8004702:	e4f7      	b.n	80040f4 <_vfprintf_r+0x12cc>
 8004704:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004706:	4413      	add	r3, r2
 8004708:	444b      	add	r3, r9
 800470a:	9309      	str	r3, [sp, #36]	; 0x24
 800470c:	2666      	movs	r6, #102	; 0x66
 800470e:	e6fb      	b.n	8004508 <_vfprintf_r+0x16e0>
 8004710:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004712:	9309      	str	r3, [sp, #36]	; 0x24
 8004714:	e694      	b.n	8004440 <_vfprintf_r+0x1618>
 8004716:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800471a:	4664      	mov	r4, ip
 800471c:	4d5e      	ldr	r5, [pc, #376]	; (8004898 <_vfprintf_r+0x1a70>)
 800471e:	e000      	b.n	8004722 <_vfprintf_r+0x18fa>
 8004720:	4614      	mov	r4, r2
 8004722:	fba5 1203 	umull	r1, r2, r5, r3
 8004726:	08d2      	lsrs	r2, r2, #3
 8004728:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800472c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004730:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004734:	4613      	mov	r3, r2
 8004736:	2b09      	cmp	r3, #9
 8004738:	f804 1c01 	strb.w	r1, [r4, #-1]
 800473c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004740:	dcee      	bgt.n	8004720 <_vfprintf_r+0x18f8>
 8004742:	3330      	adds	r3, #48	; 0x30
 8004744:	3c02      	subs	r4, #2
 8004746:	b2db      	uxtb	r3, r3
 8004748:	45a4      	cmp	ip, r4
 800474a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800474e:	f240 8090 	bls.w	8004872 <_vfprintf_r+0x1a4a>
 8004752:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004756:	4611      	mov	r1, r2
 8004758:	e001      	b.n	800475e <_vfprintf_r+0x1936>
 800475a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800475e:	f804 3b01 	strb.w	r3, [r4], #1
 8004762:	458c      	cmp	ip, r1
 8004764:	d1f9      	bne.n	800475a <_vfprintf_r+0x1932>
 8004766:	ab2a      	add	r3, sp, #168	; 0xa8
 8004768:	1a9b      	subs	r3, r3, r2
 800476a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800476e:	4413      	add	r3, r2
 8004770:	f7ff bbe3 	b.w	8003f3a <_vfprintf_r+0x1112>
 8004774:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004776:	4f49      	ldr	r7, [pc, #292]	; (800489c <_vfprintf_r+0x1a74>)
 8004778:	2b00      	cmp	r3, #0
 800477a:	bfb6      	itet	lt
 800477c:	222d      	movlt	r2, #45	; 0x2d
 800477e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004782:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004786:	4b46      	ldr	r3, [pc, #280]	; (80048a0 <_vfprintf_r+0x1a78>)
 8004788:	f7fe bf02 	b.w	8003590 <_vfprintf_r+0x768>
 800478c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004790:	f7ff b8c9 	b.w	8003926 <_vfprintf_r+0xafe>
 8004794:	aa28      	add	r2, sp, #160	; 0xa0
 8004796:	ab25      	add	r3, sp, #148	; 0x94
 8004798:	e9cd 3200 	strd	r3, r2, [sp]
 800479c:	2103      	movs	r1, #3
 800479e:	ab24      	add	r3, sp, #144	; 0x90
 80047a0:	464a      	mov	r2, r9
 80047a2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80047a6:	9803      	ldr	r0, [sp, #12]
 80047a8:	f000 f9c6 	bl	8004b38 <_dtoa_r>
 80047ac:	464d      	mov	r5, r9
 80047ae:	4607      	mov	r7, r0
 80047b0:	2e46      	cmp	r6, #70	; 0x46
 80047b2:	eb07 0405 	add.w	r4, r7, r5
 80047b6:	f43f af67 	beq.w	8004688 <_vfprintf_r+0x1860>
 80047ba:	e76b      	b.n	8004694 <_vfprintf_r+0x186c>
 80047bc:	f1b9 0f00 	cmp.w	r9, #0
 80047c0:	d131      	bne.n	8004826 <_vfprintf_r+0x19fe>
 80047c2:	07c5      	lsls	r5, r0, #31
 80047c4:	d42f      	bmi.n	8004826 <_vfprintf_r+0x19fe>
 80047c6:	2301      	movs	r3, #1
 80047c8:	9304      	str	r3, [sp, #16]
 80047ca:	9309      	str	r3, [sp, #36]	; 0x24
 80047cc:	2666      	movs	r6, #102	; 0x66
 80047ce:	e642      	b.n	8004456 <_vfprintf_r+0x162e>
 80047d0:	07c3      	lsls	r3, r0, #31
 80047d2:	f57f abbf 	bpl.w	8003f54 <_vfprintf_r+0x112c>
 80047d6:	f7ff bbb9 	b.w	8003f4c <_vfprintf_r+0x1124>
 80047da:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80047dc:	f1c3 0301 	rsb	r3, r3, #1
 80047e0:	441a      	add	r2, r3
 80047e2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80047e6:	9209      	str	r2, [sp, #36]	; 0x24
 80047e8:	9304      	str	r3, [sp, #16]
 80047ea:	2667      	movs	r6, #103	; 0x67
 80047ec:	e633      	b.n	8004456 <_vfprintf_r+0x162e>
 80047ee:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80047f2:	f04f 0901 	mov.w	r9, #1
 80047f6:	e457      	b.n	80040a8 <_vfprintf_r+0x1280>
 80047f8:	465a      	mov	r2, fp
 80047fa:	e511      	b.n	8004220 <_vfprintf_r+0x13f8>
 80047fc:	2e47      	cmp	r6, #71	; 0x47
 80047fe:	f47f af5e 	bne.w	80046be <_vfprintf_r+0x1896>
 8004802:	f018 0f01 	tst.w	r8, #1
 8004806:	f43f ab61 	beq.w	8003ecc <_vfprintf_r+0x10a4>
 800480a:	e7d1      	b.n	80047b0 <_vfprintf_r+0x1988>
 800480c:	2200      	movs	r2, #0
 800480e:	2300      	movs	r3, #0
 8004810:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004814:	f7fc fc58 	bl	80010c8 <__aeabi_dcmpeq>
 8004818:	2800      	cmp	r0, #0
 800481a:	f47f af39 	bne.w	8004690 <_vfprintf_r+0x1868>
 800481e:	f1c5 0501 	rsb	r5, r5, #1
 8004822:	9524      	str	r5, [sp, #144]	; 0x90
 8004824:	e735      	b.n	8004692 <_vfprintf_r+0x186a>
 8004826:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004828:	3301      	adds	r3, #1
 800482a:	444b      	add	r3, r9
 800482c:	9309      	str	r3, [sp, #36]	; 0x24
 800482e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004832:	9304      	str	r3, [sp, #16]
 8004834:	2666      	movs	r6, #102	; 0x66
 8004836:	e60e      	b.n	8004456 <_vfprintf_r+0x162e>
 8004838:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800483c:	f7ff bb7a 	b.w	8003f34 <_vfprintf_r+0x110c>
 8004840:	aa2a      	add	r2, sp, #168	; 0xa8
 8004842:	9907      	ldr	r1, [sp, #28]
 8004844:	9803      	ldr	r0, [sp, #12]
 8004846:	f002 fb5b 	bl	8006f00 <__sprint_r>
 800484a:	2800      	cmp	r0, #0
 800484c:	f47f a864 	bne.w	8003918 <_vfprintf_r+0xaf0>
 8004850:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004854:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004858:	f7ff bbbd 	b.w	8003fd6 <_vfprintf_r+0x11ae>
 800485c:	9908      	ldr	r1, [sp, #32]
 800485e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004862:	680b      	ldr	r3, [r1, #0]
 8004864:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004868:	1d0b      	adds	r3, r1, #4
 800486a:	4692      	mov	sl, r2
 800486c:	9308      	str	r3, [sp, #32]
 800486e:	f7fe bb59 	b.w	8002f24 <_vfprintf_r+0xfc>
 8004872:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004876:	f7ff bb60 	b.w	8003f3a <_vfprintf_r+0x1112>
 800487a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800487e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004882:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004886:	f8a9 300c 	strh.w	r3, [r9, #12]
 800488a:	f7ff b84c 	b.w	8003926 <_vfprintf_r+0xafe>
 800488e:	bf00      	nop
 8004890:	08007614 	.word	0x08007614
 8004894:	080075e4 	.word	0x080075e4
 8004898:	cccccccd 	.word	0xcccccccd
 800489c:	080075cc 	.word	0x080075cc
 80048a0:	080075c8 	.word	0x080075c8

080048a4 <__sbprintf>:
 80048a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80048a8:	460c      	mov	r4, r1
 80048aa:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80048ae:	8989      	ldrh	r1, [r1, #12]
 80048b0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80048b2:	89e5      	ldrh	r5, [r4, #14]
 80048b4:	9619      	str	r6, [sp, #100]	; 0x64
 80048b6:	f021 0102 	bic.w	r1, r1, #2
 80048ba:	4606      	mov	r6, r0
 80048bc:	69e0      	ldr	r0, [r4, #28]
 80048be:	f8ad 100c 	strh.w	r1, [sp, #12]
 80048c2:	4617      	mov	r7, r2
 80048c4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80048c8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80048ca:	f8ad 500e 	strh.w	r5, [sp, #14]
 80048ce:	4698      	mov	r8, r3
 80048d0:	ad1a      	add	r5, sp, #104	; 0x68
 80048d2:	2300      	movs	r3, #0
 80048d4:	9007      	str	r0, [sp, #28]
 80048d6:	a816      	add	r0, sp, #88	; 0x58
 80048d8:	9209      	str	r2, [sp, #36]	; 0x24
 80048da:	9306      	str	r3, [sp, #24]
 80048dc:	9500      	str	r5, [sp, #0]
 80048de:	9504      	str	r5, [sp, #16]
 80048e0:	9102      	str	r1, [sp, #8]
 80048e2:	9105      	str	r1, [sp, #20]
 80048e4:	f001 fc8a 	bl	80061fc <__retarget_lock_init_recursive>
 80048e8:	4643      	mov	r3, r8
 80048ea:	463a      	mov	r2, r7
 80048ec:	4669      	mov	r1, sp
 80048ee:	4630      	mov	r0, r6
 80048f0:	f7fe fa9a 	bl	8002e28 <_vfprintf_r>
 80048f4:	1e05      	subs	r5, r0, #0
 80048f6:	db07      	blt.n	8004908 <__sbprintf+0x64>
 80048f8:	4630      	mov	r0, r6
 80048fa:	4669      	mov	r1, sp
 80048fc:	f001 f8d6 	bl	8005aac <_fflush_r>
 8004900:	2800      	cmp	r0, #0
 8004902:	bf18      	it	ne
 8004904:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004908:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800490c:	065b      	lsls	r3, r3, #25
 800490e:	d503      	bpl.n	8004918 <__sbprintf+0x74>
 8004910:	89a3      	ldrh	r3, [r4, #12]
 8004912:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004916:	81a3      	strh	r3, [r4, #12]
 8004918:	9816      	ldr	r0, [sp, #88]	; 0x58
 800491a:	f001 fc71 	bl	8006200 <__retarget_lock_close_recursive>
 800491e:	4628      	mov	r0, r5
 8004920:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004924:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004928 <__swsetup_r>:
 8004928:	b538      	push	{r3, r4, r5, lr}
 800492a:	4b31      	ldr	r3, [pc, #196]	; (80049f0 <__swsetup_r+0xc8>)
 800492c:	681b      	ldr	r3, [r3, #0]
 800492e:	4605      	mov	r5, r0
 8004930:	460c      	mov	r4, r1
 8004932:	b113      	cbz	r3, 800493a <__swsetup_r+0x12>
 8004934:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004936:	2a00      	cmp	r2, #0
 8004938:	d03a      	beq.n	80049b0 <__swsetup_r+0x88>
 800493a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800493e:	b293      	uxth	r3, r2
 8004940:	0718      	lsls	r0, r3, #28
 8004942:	d50c      	bpl.n	800495e <__swsetup_r+0x36>
 8004944:	6920      	ldr	r0, [r4, #16]
 8004946:	b1a8      	cbz	r0, 8004974 <__swsetup_r+0x4c>
 8004948:	f013 0201 	ands.w	r2, r3, #1
 800494c:	d020      	beq.n	8004990 <__swsetup_r+0x68>
 800494e:	6963      	ldr	r3, [r4, #20]
 8004950:	2200      	movs	r2, #0
 8004952:	425b      	negs	r3, r3
 8004954:	61a3      	str	r3, [r4, #24]
 8004956:	60a2      	str	r2, [r4, #8]
 8004958:	b300      	cbz	r0, 800499c <__swsetup_r+0x74>
 800495a:	2000      	movs	r0, #0
 800495c:	bd38      	pop	{r3, r4, r5, pc}
 800495e:	06d9      	lsls	r1, r3, #27
 8004960:	d53e      	bpl.n	80049e0 <__swsetup_r+0xb8>
 8004962:	0758      	lsls	r0, r3, #29
 8004964:	d428      	bmi.n	80049b8 <__swsetup_r+0x90>
 8004966:	6920      	ldr	r0, [r4, #16]
 8004968:	f042 0308 	orr.w	r3, r2, #8
 800496c:	81a3      	strh	r3, [r4, #12]
 800496e:	b29b      	uxth	r3, r3
 8004970:	2800      	cmp	r0, #0
 8004972:	d1e9      	bne.n	8004948 <__swsetup_r+0x20>
 8004974:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004978:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800497c:	d0e4      	beq.n	8004948 <__swsetup_r+0x20>
 800497e:	4628      	mov	r0, r5
 8004980:	4621      	mov	r1, r4
 8004982:	f001 fc71 	bl	8006268 <__smakebuf_r>
 8004986:	89a3      	ldrh	r3, [r4, #12]
 8004988:	6920      	ldr	r0, [r4, #16]
 800498a:	f013 0201 	ands.w	r2, r3, #1
 800498e:	d1de      	bne.n	800494e <__swsetup_r+0x26>
 8004990:	0799      	lsls	r1, r3, #30
 8004992:	bf58      	it	pl
 8004994:	6962      	ldrpl	r2, [r4, #20]
 8004996:	60a2      	str	r2, [r4, #8]
 8004998:	2800      	cmp	r0, #0
 800499a:	d1de      	bne.n	800495a <__swsetup_r+0x32>
 800499c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80049a0:	061a      	lsls	r2, r3, #24
 80049a2:	d5db      	bpl.n	800495c <__swsetup_r+0x34>
 80049a4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80049a8:	81a3      	strh	r3, [r4, #12]
 80049aa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80049ae:	bd38      	pop	{r3, r4, r5, pc}
 80049b0:	4618      	mov	r0, r3
 80049b2:	f001 f8d7 	bl	8005b64 <__sinit>
 80049b6:	e7c0      	b.n	800493a <__swsetup_r+0x12>
 80049b8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80049ba:	b151      	cbz	r1, 80049d2 <__swsetup_r+0xaa>
 80049bc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80049c0:	4299      	cmp	r1, r3
 80049c2:	d004      	beq.n	80049ce <__swsetup_r+0xa6>
 80049c4:	4628      	mov	r0, r5
 80049c6:	f001 f96f 	bl	8005ca8 <_free_r>
 80049ca:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80049ce:	2300      	movs	r3, #0
 80049d0:	6323      	str	r3, [r4, #48]	; 0x30
 80049d2:	2300      	movs	r3, #0
 80049d4:	6920      	ldr	r0, [r4, #16]
 80049d6:	6063      	str	r3, [r4, #4]
 80049d8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80049dc:	6020      	str	r0, [r4, #0]
 80049de:	e7c3      	b.n	8004968 <__swsetup_r+0x40>
 80049e0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80049e4:	2309      	movs	r3, #9
 80049e6:	602b      	str	r3, [r5, #0]
 80049e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80049ec:	81a2      	strh	r2, [r4, #12]
 80049ee:	bd38      	pop	{r3, r4, r5, pc}
 80049f0:	2000001c 	.word	0x2000001c

080049f4 <register_fini>:
 80049f4:	4b02      	ldr	r3, [pc, #8]	; (8004a00 <register_fini+0xc>)
 80049f6:	b113      	cbz	r3, 80049fe <register_fini+0xa>
 80049f8:	4802      	ldr	r0, [pc, #8]	; (8004a04 <register_fini+0x10>)
 80049fa:	f000 b805 	b.w	8004a08 <atexit>
 80049fe:	4770      	bx	lr
 8004a00:	00000000 	.word	0x00000000
 8004a04:	08005bd5 	.word	0x08005bd5

08004a08 <atexit>:
 8004a08:	2300      	movs	r3, #0
 8004a0a:	4601      	mov	r1, r0
 8004a0c:	461a      	mov	r2, r3
 8004a0e:	4618      	mov	r0, r3
 8004a10:	f002 ba96 	b.w	8006f40 <__register_exitproc>

08004a14 <quorem>:
 8004a14:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004a18:	6903      	ldr	r3, [r0, #16]
 8004a1a:	690f      	ldr	r7, [r1, #16]
 8004a1c:	42bb      	cmp	r3, r7
 8004a1e:	b083      	sub	sp, #12
 8004a20:	f2c0 8086 	blt.w	8004b30 <quorem+0x11c>
 8004a24:	3f01      	subs	r7, #1
 8004a26:	f101 0914 	add.w	r9, r1, #20
 8004a2a:	f100 0a14 	add.w	sl, r0, #20
 8004a2e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004a32:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004a36:	00bc      	lsls	r4, r7, #2
 8004a38:	3201      	adds	r2, #1
 8004a3a:	fbb3 f8f2 	udiv	r8, r3, r2
 8004a3e:	eb0a 0304 	add.w	r3, sl, r4
 8004a42:	9400      	str	r4, [sp, #0]
 8004a44:	eb09 0b04 	add.w	fp, r9, r4
 8004a48:	9301      	str	r3, [sp, #4]
 8004a4a:	f1b8 0f00 	cmp.w	r8, #0
 8004a4e:	d038      	beq.n	8004ac2 <quorem+0xae>
 8004a50:	2500      	movs	r5, #0
 8004a52:	462e      	mov	r6, r5
 8004a54:	46ce      	mov	lr, r9
 8004a56:	46d4      	mov	ip, sl
 8004a58:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004a5c:	f8dc 3000 	ldr.w	r3, [ip]
 8004a60:	b2a2      	uxth	r2, r4
 8004a62:	fb08 5502 	mla	r5, r8, r2, r5
 8004a66:	0c22      	lsrs	r2, r4, #16
 8004a68:	0c2c      	lsrs	r4, r5, #16
 8004a6a:	fb08 4202 	mla	r2, r8, r2, r4
 8004a6e:	b2ad      	uxth	r5, r5
 8004a70:	1b75      	subs	r5, r6, r5
 8004a72:	b296      	uxth	r6, r2
 8004a74:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004a78:	fa15 f383 	uxtah	r3, r5, r3
 8004a7c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004a80:	b29b      	uxth	r3, r3
 8004a82:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004a86:	45f3      	cmp	fp, lr
 8004a88:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004a8c:	f84c 3b04 	str.w	r3, [ip], #4
 8004a90:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004a94:	d2e0      	bcs.n	8004a58 <quorem+0x44>
 8004a96:	9b00      	ldr	r3, [sp, #0]
 8004a98:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004a9c:	b98b      	cbnz	r3, 8004ac2 <quorem+0xae>
 8004a9e:	9a01      	ldr	r2, [sp, #4]
 8004aa0:	1f13      	subs	r3, r2, #4
 8004aa2:	459a      	cmp	sl, r3
 8004aa4:	d20c      	bcs.n	8004ac0 <quorem+0xac>
 8004aa6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004aaa:	b94b      	cbnz	r3, 8004ac0 <quorem+0xac>
 8004aac:	f1a2 0308 	sub.w	r3, r2, #8
 8004ab0:	e002      	b.n	8004ab8 <quorem+0xa4>
 8004ab2:	681a      	ldr	r2, [r3, #0]
 8004ab4:	3b04      	subs	r3, #4
 8004ab6:	b91a      	cbnz	r2, 8004ac0 <quorem+0xac>
 8004ab8:	459a      	cmp	sl, r3
 8004aba:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004abe:	d3f8      	bcc.n	8004ab2 <quorem+0x9e>
 8004ac0:	6107      	str	r7, [r0, #16]
 8004ac2:	4604      	mov	r4, r0
 8004ac4:	f001 fe94 	bl	80067f0 <__mcmp>
 8004ac8:	2800      	cmp	r0, #0
 8004aca:	db2d      	blt.n	8004b28 <quorem+0x114>
 8004acc:	f108 0801 	add.w	r8, r8, #1
 8004ad0:	4655      	mov	r5, sl
 8004ad2:	2300      	movs	r3, #0
 8004ad4:	f859 1b04 	ldr.w	r1, [r9], #4
 8004ad8:	6828      	ldr	r0, [r5, #0]
 8004ada:	b28a      	uxth	r2, r1
 8004adc:	1a9a      	subs	r2, r3, r2
 8004ade:	0c0b      	lsrs	r3, r1, #16
 8004ae0:	fa12 f280 	uxtah	r2, r2, r0
 8004ae4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004ae8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004aec:	b292      	uxth	r2, r2
 8004aee:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004af2:	45cb      	cmp	fp, r9
 8004af4:	f845 2b04 	str.w	r2, [r5], #4
 8004af8:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004afc:	d2ea      	bcs.n	8004ad4 <quorem+0xc0>
 8004afe:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004b02:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004b06:	b97a      	cbnz	r2, 8004b28 <quorem+0x114>
 8004b08:	1f1a      	subs	r2, r3, #4
 8004b0a:	4592      	cmp	sl, r2
 8004b0c:	d20b      	bcs.n	8004b26 <quorem+0x112>
 8004b0e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004b12:	b942      	cbnz	r2, 8004b26 <quorem+0x112>
 8004b14:	3b08      	subs	r3, #8
 8004b16:	e002      	b.n	8004b1e <quorem+0x10a>
 8004b18:	681a      	ldr	r2, [r3, #0]
 8004b1a:	3b04      	subs	r3, #4
 8004b1c:	b91a      	cbnz	r2, 8004b26 <quorem+0x112>
 8004b1e:	459a      	cmp	sl, r3
 8004b20:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004b24:	d3f8      	bcc.n	8004b18 <quorem+0x104>
 8004b26:	6127      	str	r7, [r4, #16]
 8004b28:	4640      	mov	r0, r8
 8004b2a:	b003      	add	sp, #12
 8004b2c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b30:	2000      	movs	r0, #0
 8004b32:	b003      	add	sp, #12
 8004b34:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004b38 <_dtoa_r>:
 8004b38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004b3c:	ec55 4b10 	vmov	r4, r5, d0
 8004b40:	b09b      	sub	sp, #108	; 0x6c
 8004b42:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004b44:	9102      	str	r1, [sp, #8]
 8004b46:	4681      	mov	r9, r0
 8004b48:	9207      	str	r2, [sp, #28]
 8004b4a:	9305      	str	r3, [sp, #20]
 8004b4c:	e9cd 4500 	strd	r4, r5, [sp]
 8004b50:	b156      	cbz	r6, 8004b68 <_dtoa_r+0x30>
 8004b52:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004b54:	6072      	str	r2, [r6, #4]
 8004b56:	2301      	movs	r3, #1
 8004b58:	4093      	lsls	r3, r2
 8004b5a:	60b3      	str	r3, [r6, #8]
 8004b5c:	4631      	mov	r1, r6
 8004b5e:	f001 fc57 	bl	8006410 <_Bfree>
 8004b62:	2300      	movs	r3, #0
 8004b64:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004b68:	f1b5 0800 	subs.w	r8, r5, #0
 8004b6c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004b6e:	bfb4      	ite	lt
 8004b70:	2301      	movlt	r3, #1
 8004b72:	2300      	movge	r3, #0
 8004b74:	6013      	str	r3, [r2, #0]
 8004b76:	4b76      	ldr	r3, [pc, #472]	; (8004d50 <_dtoa_r+0x218>)
 8004b78:	bfbc      	itt	lt
 8004b7a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004b7e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004b82:	ea33 0308 	bics.w	r3, r3, r8
 8004b86:	f000 80a6 	beq.w	8004cd6 <_dtoa_r+0x19e>
 8004b8a:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004b8e:	2200      	movs	r2, #0
 8004b90:	2300      	movs	r3, #0
 8004b92:	4630      	mov	r0, r6
 8004b94:	4639      	mov	r1, r7
 8004b96:	f7fc fa97 	bl	80010c8 <__aeabi_dcmpeq>
 8004b9a:	4605      	mov	r5, r0
 8004b9c:	b178      	cbz	r0, 8004bbe <_dtoa_r+0x86>
 8004b9e:	9a05      	ldr	r2, [sp, #20]
 8004ba0:	2301      	movs	r3, #1
 8004ba2:	6013      	str	r3, [r2, #0]
 8004ba4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004ba6:	2b00      	cmp	r3, #0
 8004ba8:	f000 80c0 	beq.w	8004d2c <_dtoa_r+0x1f4>
 8004bac:	4b69      	ldr	r3, [pc, #420]	; (8004d54 <_dtoa_r+0x21c>)
 8004bae:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004bb0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004bb4:	6013      	str	r3, [r2, #0]
 8004bb6:	4658      	mov	r0, fp
 8004bb8:	b01b      	add	sp, #108	; 0x6c
 8004bba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004bbe:	aa18      	add	r2, sp, #96	; 0x60
 8004bc0:	a919      	add	r1, sp, #100	; 0x64
 8004bc2:	ec47 6b10 	vmov	d0, r6, r7
 8004bc6:	4648      	mov	r0, r9
 8004bc8:	f001 fea4 	bl	8006914 <__d2b>
 8004bcc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004bd0:	4682      	mov	sl, r0
 8004bd2:	f040 80a0 	bne.w	8004d16 <_dtoa_r+0x1de>
 8004bd6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004bda:	442c      	add	r4, r5
 8004bdc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004be0:	2b20      	cmp	r3, #32
 8004be2:	f340 842c 	ble.w	800543e <_dtoa_r+0x906>
 8004be6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004bea:	fa08 f803 	lsl.w	r8, r8, r3
 8004bee:	9b00      	ldr	r3, [sp, #0]
 8004bf0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004bf4:	fa23 f000 	lsr.w	r0, r3, r0
 8004bf8:	ea48 0000 	orr.w	r0, r8, r0
 8004bfc:	f7fb ff82 	bl	8000b04 <__aeabi_ui2d>
 8004c00:	2301      	movs	r3, #1
 8004c02:	4606      	mov	r6, r0
 8004c04:	3c01      	subs	r4, #1
 8004c06:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004c0a:	930f      	str	r3, [sp, #60]	; 0x3c
 8004c0c:	4630      	mov	r0, r6
 8004c0e:	4639      	mov	r1, r7
 8004c10:	2200      	movs	r2, #0
 8004c12:	4b51      	ldr	r3, [pc, #324]	; (8004d58 <_dtoa_r+0x220>)
 8004c14:	f7fb fe38 	bl	8000888 <__aeabi_dsub>
 8004c18:	a347      	add	r3, pc, #284	; (adr r3, 8004d38 <_dtoa_r+0x200>)
 8004c1a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c1e:	f7fb ffeb 	bl	8000bf8 <__aeabi_dmul>
 8004c22:	a347      	add	r3, pc, #284	; (adr r3, 8004d40 <_dtoa_r+0x208>)
 8004c24:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c28:	f7fb fe30 	bl	800088c <__adddf3>
 8004c2c:	4606      	mov	r6, r0
 8004c2e:	4620      	mov	r0, r4
 8004c30:	460f      	mov	r7, r1
 8004c32:	f7fb ff77 	bl	8000b24 <__aeabi_i2d>
 8004c36:	a344      	add	r3, pc, #272	; (adr r3, 8004d48 <_dtoa_r+0x210>)
 8004c38:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c3c:	f7fb ffdc 	bl	8000bf8 <__aeabi_dmul>
 8004c40:	4602      	mov	r2, r0
 8004c42:	460b      	mov	r3, r1
 8004c44:	4630      	mov	r0, r6
 8004c46:	4639      	mov	r1, r7
 8004c48:	f7fb fe20 	bl	800088c <__adddf3>
 8004c4c:	4606      	mov	r6, r0
 8004c4e:	460f      	mov	r7, r1
 8004c50:	f7fc fa82 	bl	8001158 <__aeabi_d2iz>
 8004c54:	2200      	movs	r2, #0
 8004c56:	9006      	str	r0, [sp, #24]
 8004c58:	2300      	movs	r3, #0
 8004c5a:	4630      	mov	r0, r6
 8004c5c:	4639      	mov	r1, r7
 8004c5e:	f7fc fa3d 	bl	80010dc <__aeabi_dcmplt>
 8004c62:	2800      	cmp	r0, #0
 8004c64:	f040 8273 	bne.w	800514e <_dtoa_r+0x616>
 8004c68:	9e06      	ldr	r6, [sp, #24]
 8004c6a:	2e16      	cmp	r6, #22
 8004c6c:	f200 825d 	bhi.w	800512a <_dtoa_r+0x5f2>
 8004c70:	4b3a      	ldr	r3, [pc, #232]	; (8004d5c <_dtoa_r+0x224>)
 8004c72:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004c76:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004c7a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c7e:	f7fc fa4b 	bl	8001118 <__aeabi_dcmpgt>
 8004c82:	2800      	cmp	r0, #0
 8004c84:	f000 83d7 	beq.w	8005436 <_dtoa_r+0x8fe>
 8004c88:	1e73      	subs	r3, r6, #1
 8004c8a:	9306      	str	r3, [sp, #24]
 8004c8c:	2300      	movs	r3, #0
 8004c8e:	930d      	str	r3, [sp, #52]	; 0x34
 8004c90:	1b2c      	subs	r4, r5, r4
 8004c92:	f1b4 0801 	subs.w	r8, r4, #1
 8004c96:	f100 8254 	bmi.w	8005142 <_dtoa_r+0x60a>
 8004c9a:	2300      	movs	r3, #0
 8004c9c:	9308      	str	r3, [sp, #32]
 8004c9e:	9b06      	ldr	r3, [sp, #24]
 8004ca0:	2b00      	cmp	r3, #0
 8004ca2:	f2c0 8245 	blt.w	8005130 <_dtoa_r+0x5f8>
 8004ca6:	4498      	add	r8, r3
 8004ca8:	930c      	str	r3, [sp, #48]	; 0x30
 8004caa:	2300      	movs	r3, #0
 8004cac:	930b      	str	r3, [sp, #44]	; 0x2c
 8004cae:	9b02      	ldr	r3, [sp, #8]
 8004cb0:	2b09      	cmp	r3, #9
 8004cb2:	d85b      	bhi.n	8004d6c <_dtoa_r+0x234>
 8004cb4:	2b05      	cmp	r3, #5
 8004cb6:	f340 83c0 	ble.w	800543a <_dtoa_r+0x902>
 8004cba:	3b04      	subs	r3, #4
 8004cbc:	9302      	str	r3, [sp, #8]
 8004cbe:	2500      	movs	r5, #0
 8004cc0:	9b02      	ldr	r3, [sp, #8]
 8004cc2:	3b02      	subs	r3, #2
 8004cc4:	2b03      	cmp	r3, #3
 8004cc6:	f200 8498 	bhi.w	80055fa <_dtoa_r+0xac2>
 8004cca:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004cce:	03df      	.short	0x03df
 8004cd0:	03e803bf 	.word	0x03e803bf
 8004cd4:	04f5      	.short	0x04f5
 8004cd6:	9a05      	ldr	r2, [sp, #20]
 8004cd8:	f242 730f 	movw	r3, #9999	; 0x270f
 8004cdc:	6013      	str	r3, [r2, #0]
 8004cde:	9b00      	ldr	r3, [sp, #0]
 8004ce0:	b983      	cbnz	r3, 8004d04 <_dtoa_r+0x1cc>
 8004ce2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004ce6:	b96b      	cbnz	r3, 8004d04 <_dtoa_r+0x1cc>
 8004ce8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004cea:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004d60 <_dtoa_r+0x228>
 8004cee:	2b00      	cmp	r3, #0
 8004cf0:	f43f af61 	beq.w	8004bb6 <_dtoa_r+0x7e>
 8004cf4:	f10b 0308 	add.w	r3, fp, #8
 8004cf8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004cfa:	4658      	mov	r0, fp
 8004cfc:	6013      	str	r3, [r2, #0]
 8004cfe:	b01b      	add	sp, #108	; 0x6c
 8004d00:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d04:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004d06:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004d64 <_dtoa_r+0x22c>
 8004d0a:	2b00      	cmp	r3, #0
 8004d0c:	f43f af53 	beq.w	8004bb6 <_dtoa_r+0x7e>
 8004d10:	f10b 0303 	add.w	r3, fp, #3
 8004d14:	e7f0      	b.n	8004cf8 <_dtoa_r+0x1c0>
 8004d16:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004d1a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004d1e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004d20:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004d24:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004d28:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004d2a:	e76f      	b.n	8004c0c <_dtoa_r+0xd4>
 8004d2c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004d68 <_dtoa_r+0x230>
 8004d30:	4658      	mov	r0, fp
 8004d32:	b01b      	add	sp, #108	; 0x6c
 8004d34:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d38:	636f4361 	.word	0x636f4361
 8004d3c:	3fd287a7 	.word	0x3fd287a7
 8004d40:	8b60c8b3 	.word	0x8b60c8b3
 8004d44:	3fc68a28 	.word	0x3fc68a28
 8004d48:	509f79fb 	.word	0x509f79fb
 8004d4c:	3fd34413 	.word	0x3fd34413
 8004d50:	7ff00000 	.word	0x7ff00000
 8004d54:	08007601 	.word	0x08007601
 8004d58:	3ff80000 	.word	0x3ff80000
 8004d5c:	08007660 	.word	0x08007660
 8004d60:	08007624 	.word	0x08007624
 8004d64:	08007630 	.word	0x08007630
 8004d68:	08007600 	.word	0x08007600
 8004d6c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004d70:	2501      	movs	r5, #1
 8004d72:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004d76:	2300      	movs	r3, #0
 8004d78:	9302      	str	r3, [sp, #8]
 8004d7a:	9307      	str	r3, [sp, #28]
 8004d7c:	2100      	movs	r1, #0
 8004d7e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004d82:	940e      	str	r4, [sp, #56]	; 0x38
 8004d84:	4648      	mov	r0, r9
 8004d86:	f001 fb1d 	bl	80063c4 <_Balloc>
 8004d8a:	2c0e      	cmp	r4, #14
 8004d8c:	4683      	mov	fp, r0
 8004d8e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004d92:	f200 80fb 	bhi.w	8004f8c <_dtoa_r+0x454>
 8004d96:	2d00      	cmp	r5, #0
 8004d98:	f000 80f8 	beq.w	8004f8c <_dtoa_r+0x454>
 8004d9c:	ed9d 7b00 	vldr	d7, [sp]
 8004da0:	9906      	ldr	r1, [sp, #24]
 8004da2:	2900      	cmp	r1, #0
 8004da4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004da8:	f340 83e5 	ble.w	8005576 <_dtoa_r+0xa3e>
 8004dac:	4b9d      	ldr	r3, [pc, #628]	; (8005024 <_dtoa_r+0x4ec>)
 8004dae:	f001 020f 	and.w	r2, r1, #15
 8004db2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004db6:	ed93 7b00 	vldr	d7, [r3]
 8004dba:	110c      	asrs	r4, r1, #4
 8004dbc:	06e2      	lsls	r2, r4, #27
 8004dbe:	ed8d 7b00 	vstr	d7, [sp]
 8004dc2:	f140 849e 	bpl.w	8005702 <_dtoa_r+0xbca>
 8004dc6:	4b98      	ldr	r3, [pc, #608]	; (8005028 <_dtoa_r+0x4f0>)
 8004dc8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004dcc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004dd0:	f7fc f83c 	bl	8000e4c <__aeabi_ddiv>
 8004dd4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004dd8:	f004 040f 	and.w	r4, r4, #15
 8004ddc:	2603      	movs	r6, #3
 8004dde:	b17c      	cbz	r4, 8004e00 <_dtoa_r+0x2c8>
 8004de0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004de4:	4d90      	ldr	r5, [pc, #576]	; (8005028 <_dtoa_r+0x4f0>)
 8004de6:	07e3      	lsls	r3, r4, #31
 8004de8:	d504      	bpl.n	8004df4 <_dtoa_r+0x2bc>
 8004dea:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004dee:	f7fb ff03 	bl	8000bf8 <__aeabi_dmul>
 8004df2:	3601      	adds	r6, #1
 8004df4:	1064      	asrs	r4, r4, #1
 8004df6:	f105 0508 	add.w	r5, r5, #8
 8004dfa:	d1f4      	bne.n	8004de6 <_dtoa_r+0x2ae>
 8004dfc:	e9cd 0100 	strd	r0, r1, [sp]
 8004e00:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e04:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004e08:	f7fc f820 	bl	8000e4c <__aeabi_ddiv>
 8004e0c:	e9cd 0100 	strd	r0, r1, [sp]
 8004e10:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004e12:	b143      	cbz	r3, 8004e26 <_dtoa_r+0x2ee>
 8004e14:	2200      	movs	r2, #0
 8004e16:	4b85      	ldr	r3, [pc, #532]	; (800502c <_dtoa_r+0x4f4>)
 8004e18:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e1c:	f7fc f95e 	bl	80010dc <__aeabi_dcmplt>
 8004e20:	2800      	cmp	r0, #0
 8004e22:	f040 84ff 	bne.w	8005824 <_dtoa_r+0xcec>
 8004e26:	4630      	mov	r0, r6
 8004e28:	f7fb fe7c 	bl	8000b24 <__aeabi_i2d>
 8004e2c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e30:	f7fb fee2 	bl	8000bf8 <__aeabi_dmul>
 8004e34:	4b7e      	ldr	r3, [pc, #504]	; (8005030 <_dtoa_r+0x4f8>)
 8004e36:	2200      	movs	r2, #0
 8004e38:	f7fb fd28 	bl	800088c <__adddf3>
 8004e3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e3e:	4606      	mov	r6, r0
 8004e40:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e44:	2b00      	cmp	r3, #0
 8004e46:	f000 841c 	beq.w	8005682 <_dtoa_r+0xb4a>
 8004e4a:	9b06      	ldr	r3, [sp, #24]
 8004e4c:	9316      	str	r3, [sp, #88]	; 0x58
 8004e4e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e50:	9312      	str	r3, [sp, #72]	; 0x48
 8004e52:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e56:	f7fc f97f 	bl	8001158 <__aeabi_d2iz>
 8004e5a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004e5c:	4b71      	ldr	r3, [pc, #452]	; (8005024 <_dtoa_r+0x4ec>)
 8004e5e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004e62:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004e66:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004e6a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004e6e:	f7fb fe59 	bl	8000b24 <__aeabi_i2d>
 8004e72:	460b      	mov	r3, r1
 8004e74:	4602      	mov	r2, r0
 8004e76:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e7a:	e9cd 6700 	strd	r6, r7, [sp]
 8004e7e:	f7fb fd03 	bl	8000888 <__aeabi_dsub>
 8004e82:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e84:	b2ed      	uxtb	r5, r5
 8004e86:	4606      	mov	r6, r0
 8004e88:	460f      	mov	r7, r1
 8004e8a:	f10b 0401 	add.w	r4, fp, #1
 8004e8e:	2b00      	cmp	r3, #0
 8004e90:	f000 8458 	beq.w	8005744 <_dtoa_r+0xc0c>
 8004e94:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004e98:	2000      	movs	r0, #0
 8004e9a:	4966      	ldr	r1, [pc, #408]	; (8005034 <_dtoa_r+0x4fc>)
 8004e9c:	f7fb ffd6 	bl	8000e4c <__aeabi_ddiv>
 8004ea0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ea4:	f7fb fcf0 	bl	8000888 <__aeabi_dsub>
 8004ea8:	f88b 5000 	strb.w	r5, [fp]
 8004eac:	4632      	mov	r2, r6
 8004eae:	463b      	mov	r3, r7
 8004eb0:	e9cd 0100 	strd	r0, r1, [sp]
 8004eb4:	f7fc f930 	bl	8001118 <__aeabi_dcmpgt>
 8004eb8:	2800      	cmp	r0, #0
 8004eba:	f040 8502 	bne.w	80058c2 <_dtoa_r+0xd8a>
 8004ebe:	4632      	mov	r2, r6
 8004ec0:	463b      	mov	r3, r7
 8004ec2:	2000      	movs	r0, #0
 8004ec4:	4959      	ldr	r1, [pc, #356]	; (800502c <_dtoa_r+0x4f4>)
 8004ec6:	f7fb fcdf 	bl	8000888 <__aeabi_dsub>
 8004eca:	4602      	mov	r2, r0
 8004ecc:	460b      	mov	r3, r1
 8004ece:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ed2:	f7fc f921 	bl	8001118 <__aeabi_dcmpgt>
 8004ed6:	2800      	cmp	r0, #0
 8004ed8:	f040 84fb 	bne.w	80058d2 <_dtoa_r+0xd9a>
 8004edc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004ede:	2a01      	cmp	r2, #1
 8004ee0:	d050      	beq.n	8004f84 <_dtoa_r+0x44c>
 8004ee2:	445a      	add	r2, fp
 8004ee4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004ee8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004eec:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004ef0:	4692      	mov	sl, r2
 8004ef2:	46cb      	mov	fp, r9
 8004ef4:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004ef8:	e00c      	b.n	8004f14 <_dtoa_r+0x3dc>
 8004efa:	2000      	movs	r0, #0
 8004efc:	494b      	ldr	r1, [pc, #300]	; (800502c <_dtoa_r+0x4f4>)
 8004efe:	f7fb fcc3 	bl	8000888 <__aeabi_dsub>
 8004f02:	4642      	mov	r2, r8
 8004f04:	464b      	mov	r3, r9
 8004f06:	f7fc f8e9 	bl	80010dc <__aeabi_dcmplt>
 8004f0a:	2800      	cmp	r0, #0
 8004f0c:	f040 84dc 	bne.w	80058c8 <_dtoa_r+0xd90>
 8004f10:	4554      	cmp	r4, sl
 8004f12:	d030      	beq.n	8004f76 <_dtoa_r+0x43e>
 8004f14:	4640      	mov	r0, r8
 8004f16:	4649      	mov	r1, r9
 8004f18:	2200      	movs	r2, #0
 8004f1a:	4b47      	ldr	r3, [pc, #284]	; (8005038 <_dtoa_r+0x500>)
 8004f1c:	f7fb fe6c 	bl	8000bf8 <__aeabi_dmul>
 8004f20:	2200      	movs	r2, #0
 8004f22:	4b45      	ldr	r3, [pc, #276]	; (8005038 <_dtoa_r+0x500>)
 8004f24:	4680      	mov	r8, r0
 8004f26:	4689      	mov	r9, r1
 8004f28:	4630      	mov	r0, r6
 8004f2a:	4639      	mov	r1, r7
 8004f2c:	f7fb fe64 	bl	8000bf8 <__aeabi_dmul>
 8004f30:	460f      	mov	r7, r1
 8004f32:	4606      	mov	r6, r0
 8004f34:	f7fc f910 	bl	8001158 <__aeabi_d2iz>
 8004f38:	4605      	mov	r5, r0
 8004f3a:	f7fb fdf3 	bl	8000b24 <__aeabi_i2d>
 8004f3e:	4602      	mov	r2, r0
 8004f40:	460b      	mov	r3, r1
 8004f42:	4630      	mov	r0, r6
 8004f44:	4639      	mov	r1, r7
 8004f46:	f7fb fc9f 	bl	8000888 <__aeabi_dsub>
 8004f4a:	3530      	adds	r5, #48	; 0x30
 8004f4c:	b2ed      	uxtb	r5, r5
 8004f4e:	4642      	mov	r2, r8
 8004f50:	464b      	mov	r3, r9
 8004f52:	f804 5b01 	strb.w	r5, [r4], #1
 8004f56:	4606      	mov	r6, r0
 8004f58:	460f      	mov	r7, r1
 8004f5a:	f7fc f8bf 	bl	80010dc <__aeabi_dcmplt>
 8004f5e:	4632      	mov	r2, r6
 8004f60:	463b      	mov	r3, r7
 8004f62:	2800      	cmp	r0, #0
 8004f64:	d0c9      	beq.n	8004efa <_dtoa_r+0x3c2>
 8004f66:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f68:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f6c:	9306      	str	r3, [sp, #24]
 8004f6e:	46d9      	mov	r9, fp
 8004f70:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f74:	e236      	b.n	80053e4 <_dtoa_r+0x8ac>
 8004f76:	46d9      	mov	r9, fp
 8004f78:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004f7c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f80:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f84:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004f88:	e9cd 3400 	strd	r3, r4, [sp]
 8004f8c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004f8e:	2b00      	cmp	r3, #0
 8004f90:	f2c0 80ae 	blt.w	80050f0 <_dtoa_r+0x5b8>
 8004f94:	9a06      	ldr	r2, [sp, #24]
 8004f96:	2a0e      	cmp	r2, #14
 8004f98:	f300 80aa 	bgt.w	80050f0 <_dtoa_r+0x5b8>
 8004f9c:	4b21      	ldr	r3, [pc, #132]	; (8005024 <_dtoa_r+0x4ec>)
 8004f9e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004fa2:	ed93 7b00 	vldr	d7, [r3]
 8004fa6:	9b07      	ldr	r3, [sp, #28]
 8004fa8:	2b00      	cmp	r3, #0
 8004faa:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004fae:	f2c0 82be 	blt.w	800552e <_dtoa_r+0x9f6>
 8004fb2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004fb6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004fba:	4630      	mov	r0, r6
 8004fbc:	4639      	mov	r1, r7
 8004fbe:	f7fb ff45 	bl	8000e4c <__aeabi_ddiv>
 8004fc2:	f7fc f8c9 	bl	8001158 <__aeabi_d2iz>
 8004fc6:	4605      	mov	r5, r0
 8004fc8:	f7fb fdac 	bl	8000b24 <__aeabi_i2d>
 8004fcc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004fd0:	f7fb fe12 	bl	8000bf8 <__aeabi_dmul>
 8004fd4:	460b      	mov	r3, r1
 8004fd6:	4602      	mov	r2, r0
 8004fd8:	4639      	mov	r1, r7
 8004fda:	4630      	mov	r0, r6
 8004fdc:	f7fb fc54 	bl	8000888 <__aeabi_dsub>
 8004fe0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004fe4:	f88b 3000 	strb.w	r3, [fp]
 8004fe8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fea:	2b01      	cmp	r3, #1
 8004fec:	4606      	mov	r6, r0
 8004fee:	460f      	mov	r7, r1
 8004ff0:	f10b 0401 	add.w	r4, fp, #1
 8004ff4:	d053      	beq.n	800509e <_dtoa_r+0x566>
 8004ff6:	2200      	movs	r2, #0
 8004ff8:	4b0f      	ldr	r3, [pc, #60]	; (8005038 <_dtoa_r+0x500>)
 8004ffa:	f7fb fdfd 	bl	8000bf8 <__aeabi_dmul>
 8004ffe:	2200      	movs	r2, #0
 8005000:	2300      	movs	r3, #0
 8005002:	4606      	mov	r6, r0
 8005004:	460f      	mov	r7, r1
 8005006:	f7fc f85f 	bl	80010c8 <__aeabi_dcmpeq>
 800500a:	2800      	cmp	r0, #0
 800500c:	f040 81ea 	bne.w	80053e4 <_dtoa_r+0x8ac>
 8005010:	f8cd a000 	str.w	sl, [sp]
 8005014:	f8cd 901c 	str.w	r9, [sp, #28]
 8005018:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800501c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005020:	e017      	b.n	8005052 <_dtoa_r+0x51a>
 8005022:	bf00      	nop
 8005024:	08007660 	.word	0x08007660
 8005028:	08007638 	.word	0x08007638
 800502c:	3ff00000 	.word	0x3ff00000
 8005030:	401c0000 	.word	0x401c0000
 8005034:	3fe00000 	.word	0x3fe00000
 8005038:	40240000 	.word	0x40240000
 800503c:	f7fb fddc 	bl	8000bf8 <__aeabi_dmul>
 8005040:	2200      	movs	r2, #0
 8005042:	2300      	movs	r3, #0
 8005044:	4606      	mov	r6, r0
 8005046:	460f      	mov	r7, r1
 8005048:	f7fc f83e 	bl	80010c8 <__aeabi_dcmpeq>
 800504c:	2800      	cmp	r0, #0
 800504e:	f040 833d 	bne.w	80056cc <_dtoa_r+0xb94>
 8005052:	464a      	mov	r2, r9
 8005054:	4653      	mov	r3, sl
 8005056:	4630      	mov	r0, r6
 8005058:	4639      	mov	r1, r7
 800505a:	f7fb fef7 	bl	8000e4c <__aeabi_ddiv>
 800505e:	f7fc f87b 	bl	8001158 <__aeabi_d2iz>
 8005062:	4605      	mov	r5, r0
 8005064:	f7fb fd5e 	bl	8000b24 <__aeabi_i2d>
 8005068:	464a      	mov	r2, r9
 800506a:	4653      	mov	r3, sl
 800506c:	f7fb fdc4 	bl	8000bf8 <__aeabi_dmul>
 8005070:	4602      	mov	r2, r0
 8005072:	460b      	mov	r3, r1
 8005074:	4630      	mov	r0, r6
 8005076:	4639      	mov	r1, r7
 8005078:	f7fb fc06 	bl	8000888 <__aeabi_dsub>
 800507c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8005080:	f804 cb01 	strb.w	ip, [r4], #1
 8005084:	eba4 0c0b 	sub.w	ip, r4, fp
 8005088:	45e0      	cmp	r8, ip
 800508a:	4606      	mov	r6, r0
 800508c:	460f      	mov	r7, r1
 800508e:	f04f 0200 	mov.w	r2, #0
 8005092:	4bc1      	ldr	r3, [pc, #772]	; (8005398 <_dtoa_r+0x860>)
 8005094:	d1d2      	bne.n	800503c <_dtoa_r+0x504>
 8005096:	f8dd a000 	ldr.w	sl, [sp]
 800509a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800509e:	4632      	mov	r2, r6
 80050a0:	463b      	mov	r3, r7
 80050a2:	4630      	mov	r0, r6
 80050a4:	4639      	mov	r1, r7
 80050a6:	f7fb fbf1 	bl	800088c <__adddf3>
 80050aa:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80050ae:	4606      	mov	r6, r0
 80050b0:	460f      	mov	r7, r1
 80050b2:	f7fc f831 	bl	8001118 <__aeabi_dcmpgt>
 80050b6:	b958      	cbnz	r0, 80050d0 <_dtoa_r+0x598>
 80050b8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80050bc:	4630      	mov	r0, r6
 80050be:	4639      	mov	r1, r7
 80050c0:	f7fc f802 	bl	80010c8 <__aeabi_dcmpeq>
 80050c4:	2800      	cmp	r0, #0
 80050c6:	f000 818d 	beq.w	80053e4 <_dtoa_r+0x8ac>
 80050ca:	07e9      	lsls	r1, r5, #31
 80050cc:	f140 818a 	bpl.w	80053e4 <_dtoa_r+0x8ac>
 80050d0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050d4:	e005      	b.n	80050e2 <_dtoa_r+0x5aa>
 80050d6:	459b      	cmp	fp, r3
 80050d8:	f000 8373 	beq.w	80057c2 <_dtoa_r+0xc8a>
 80050dc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80050e0:	461c      	mov	r4, r3
 80050e2:	2d39      	cmp	r5, #57	; 0x39
 80050e4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80050e8:	d0f5      	beq.n	80050d6 <_dtoa_r+0x59e>
 80050ea:	3501      	adds	r5, #1
 80050ec:	701d      	strb	r5, [r3, #0]
 80050ee:	e179      	b.n	80053e4 <_dtoa_r+0x8ac>
 80050f0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80050f2:	2a00      	cmp	r2, #0
 80050f4:	d03b      	beq.n	800516e <_dtoa_r+0x636>
 80050f6:	9a02      	ldr	r2, [sp, #8]
 80050f8:	2a01      	cmp	r2, #1
 80050fa:	f340 820b 	ble.w	8005514 <_dtoa_r+0x9dc>
 80050fe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005100:	1e5f      	subs	r7, r3, #1
 8005102:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005104:	42bb      	cmp	r3, r7
 8005106:	f2c0 82e6 	blt.w	80056d6 <_dtoa_r+0xb9e>
 800510a:	1bdf      	subs	r7, r3, r7
 800510c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800510e:	2b00      	cmp	r3, #0
 8005110:	f2c0 830b 	blt.w	800572a <_dtoa_r+0xbf2>
 8005114:	9a08      	ldr	r2, [sp, #32]
 8005116:	4614      	mov	r4, r2
 8005118:	441a      	add	r2, r3
 800511a:	4498      	add	r8, r3
 800511c:	9208      	str	r2, [sp, #32]
 800511e:	2101      	movs	r1, #1
 8005120:	4648      	mov	r0, r9
 8005122:	f001 fa0f 	bl	8006544 <__i2b>
 8005126:	4605      	mov	r5, r0
 8005128:	e024      	b.n	8005174 <_dtoa_r+0x63c>
 800512a:	2301      	movs	r3, #1
 800512c:	930d      	str	r3, [sp, #52]	; 0x34
 800512e:	e5af      	b.n	8004c90 <_dtoa_r+0x158>
 8005130:	9a08      	ldr	r2, [sp, #32]
 8005132:	9b06      	ldr	r3, [sp, #24]
 8005134:	1ad2      	subs	r2, r2, r3
 8005136:	425b      	negs	r3, r3
 8005138:	930b      	str	r3, [sp, #44]	; 0x2c
 800513a:	2300      	movs	r3, #0
 800513c:	9208      	str	r2, [sp, #32]
 800513e:	930c      	str	r3, [sp, #48]	; 0x30
 8005140:	e5b5      	b.n	8004cae <_dtoa_r+0x176>
 8005142:	f1c4 0301 	rsb	r3, r4, #1
 8005146:	9308      	str	r3, [sp, #32]
 8005148:	f04f 0800 	mov.w	r8, #0
 800514c:	e5a7      	b.n	8004c9e <_dtoa_r+0x166>
 800514e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8005152:	4640      	mov	r0, r8
 8005154:	f7fb fce6 	bl	8000b24 <__aeabi_i2d>
 8005158:	4632      	mov	r2, r6
 800515a:	463b      	mov	r3, r7
 800515c:	f7fb ffb4 	bl	80010c8 <__aeabi_dcmpeq>
 8005160:	2800      	cmp	r0, #0
 8005162:	f47f ad81 	bne.w	8004c68 <_dtoa_r+0x130>
 8005166:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800516a:	9306      	str	r3, [sp, #24]
 800516c:	e57c      	b.n	8004c68 <_dtoa_r+0x130>
 800516e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005170:	9c08      	ldr	r4, [sp, #32]
 8005172:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8005174:	2c00      	cmp	r4, #0
 8005176:	dd0c      	ble.n	8005192 <_dtoa_r+0x65a>
 8005178:	f1b8 0f00 	cmp.w	r8, #0
 800517c:	dd09      	ble.n	8005192 <_dtoa_r+0x65a>
 800517e:	4544      	cmp	r4, r8
 8005180:	9a08      	ldr	r2, [sp, #32]
 8005182:	4623      	mov	r3, r4
 8005184:	bfa8      	it	ge
 8005186:	4643      	movge	r3, r8
 8005188:	1ad2      	subs	r2, r2, r3
 800518a:	9208      	str	r2, [sp, #32]
 800518c:	1ae4      	subs	r4, r4, r3
 800518e:	eba8 0803 	sub.w	r8, r8, r3
 8005192:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005194:	b16b      	cbz	r3, 80051b2 <_dtoa_r+0x67a>
 8005196:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005198:	2a00      	cmp	r2, #0
 800519a:	f000 8290 	beq.w	80056be <_dtoa_r+0xb86>
 800519e:	1bde      	subs	r6, r3, r7
 80051a0:	2f00      	cmp	r7, #0
 80051a2:	f040 819b 	bne.w	80054dc <_dtoa_r+0x9a4>
 80051a6:	4651      	mov	r1, sl
 80051a8:	4632      	mov	r2, r6
 80051aa:	4648      	mov	r0, r9
 80051ac:	f001 fa7a 	bl	80066a4 <__pow5mult>
 80051b0:	4682      	mov	sl, r0
 80051b2:	2101      	movs	r1, #1
 80051b4:	4648      	mov	r0, r9
 80051b6:	f001 f9c5 	bl	8006544 <__i2b>
 80051ba:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80051bc:	4606      	mov	r6, r0
 80051be:	2a00      	cmp	r2, #0
 80051c0:	f040 8125 	bne.w	800540e <_dtoa_r+0x8d6>
 80051c4:	9b02      	ldr	r3, [sp, #8]
 80051c6:	2b01      	cmp	r3, #1
 80051c8:	f340 816c 	ble.w	80054a4 <_dtoa_r+0x96c>
 80051cc:	2001      	movs	r0, #1
 80051ce:	4440      	add	r0, r8
 80051d0:	f010 001f 	ands.w	r0, r0, #31
 80051d4:	f000 8119 	beq.w	800540a <_dtoa_r+0x8d2>
 80051d8:	f1c0 0320 	rsb	r3, r0, #32
 80051dc:	2b04      	cmp	r3, #4
 80051de:	f340 83ac 	ble.w	800593a <_dtoa_r+0xe02>
 80051e2:	f1c0 001c 	rsb	r0, r0, #28
 80051e6:	9b08      	ldr	r3, [sp, #32]
 80051e8:	4403      	add	r3, r0
 80051ea:	9308      	str	r3, [sp, #32]
 80051ec:	4404      	add	r4, r0
 80051ee:	4480      	add	r8, r0
 80051f0:	9b08      	ldr	r3, [sp, #32]
 80051f2:	2b00      	cmp	r3, #0
 80051f4:	dd05      	ble.n	8005202 <_dtoa_r+0x6ca>
 80051f6:	4651      	mov	r1, sl
 80051f8:	461a      	mov	r2, r3
 80051fa:	4648      	mov	r0, r9
 80051fc:	f001 faa2 	bl	8006744 <__lshift>
 8005200:	4682      	mov	sl, r0
 8005202:	f1b8 0f00 	cmp.w	r8, #0
 8005206:	dd05      	ble.n	8005214 <_dtoa_r+0x6dc>
 8005208:	4631      	mov	r1, r6
 800520a:	4642      	mov	r2, r8
 800520c:	4648      	mov	r0, r9
 800520e:	f001 fa99 	bl	8006744 <__lshift>
 8005212:	4606      	mov	r6, r0
 8005214:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005216:	2b00      	cmp	r3, #0
 8005218:	d177      	bne.n	800530a <_dtoa_r+0x7d2>
 800521a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800521c:	2b00      	cmp	r3, #0
 800521e:	f340 8209 	ble.w	8005634 <_dtoa_r+0xafc>
 8005222:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005224:	2b00      	cmp	r3, #0
 8005226:	f000 8089 	beq.w	800533c <_dtoa_r+0x804>
 800522a:	2c00      	cmp	r4, #0
 800522c:	f300 816b 	bgt.w	8005506 <_dtoa_r+0x9ce>
 8005230:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005232:	2b00      	cmp	r3, #0
 8005234:	f040 81cd 	bne.w	80055d2 <_dtoa_r+0xa9a>
 8005238:	46a8      	mov	r8, r5
 800523a:	9a00      	ldr	r2, [sp, #0]
 800523c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005240:	f002 0201 	and.w	r2, r2, #1
 8005244:	920a      	str	r2, [sp, #40]	; 0x28
 8005246:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005248:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800524c:	441a      	add	r2, r3
 800524e:	465f      	mov	r7, fp
 8005250:	9209      	str	r2, [sp, #36]	; 0x24
 8005252:	46b3      	mov	fp, r6
 8005254:	4659      	mov	r1, fp
 8005256:	4650      	mov	r0, sl
 8005258:	f7ff fbdc 	bl	8004a14 <quorem>
 800525c:	4629      	mov	r1, r5
 800525e:	4604      	mov	r4, r0
 8005260:	4650      	mov	r0, sl
 8005262:	f001 fac5 	bl	80067f0 <__mcmp>
 8005266:	4659      	mov	r1, fp
 8005268:	4606      	mov	r6, r0
 800526a:	4642      	mov	r2, r8
 800526c:	4648      	mov	r0, r9
 800526e:	f001 fadb 	bl	8006828 <__mdiff>
 8005272:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8005276:	9300      	str	r3, [sp, #0]
 8005278:	68c3      	ldr	r3, [r0, #12]
 800527a:	4601      	mov	r1, r0
 800527c:	2b00      	cmp	r3, #0
 800527e:	f040 81d4 	bne.w	800562a <_dtoa_r+0xaf2>
 8005282:	9008      	str	r0, [sp, #32]
 8005284:	4650      	mov	r0, sl
 8005286:	f001 fab3 	bl	80067f0 <__mcmp>
 800528a:	9a08      	ldr	r2, [sp, #32]
 800528c:	9007      	str	r0, [sp, #28]
 800528e:	4611      	mov	r1, r2
 8005290:	4648      	mov	r0, r9
 8005292:	f001 f8bd 	bl	8006410 <_Bfree>
 8005296:	9b07      	ldr	r3, [sp, #28]
 8005298:	b933      	cbnz	r3, 80052a8 <_dtoa_r+0x770>
 800529a:	9a02      	ldr	r2, [sp, #8]
 800529c:	b922      	cbnz	r2, 80052a8 <_dtoa_r+0x770>
 800529e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80052a0:	2b00      	cmp	r3, #0
 80052a2:	f000 8319 	beq.w	80058d8 <_dtoa_r+0xda0>
 80052a6:	9b02      	ldr	r3, [sp, #8]
 80052a8:	2e00      	cmp	r6, #0
 80052aa:	f2c0 821c 	blt.w	80056e6 <_dtoa_r+0xbae>
 80052ae:	d105      	bne.n	80052bc <_dtoa_r+0x784>
 80052b0:	9a02      	ldr	r2, [sp, #8]
 80052b2:	b91a      	cbnz	r2, 80052bc <_dtoa_r+0x784>
 80052b4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80052b6:	2a00      	cmp	r2, #0
 80052b8:	f000 8215 	beq.w	80056e6 <_dtoa_r+0xbae>
 80052bc:	2b00      	cmp	r3, #0
 80052be:	f107 0401 	add.w	r4, r7, #1
 80052c2:	f300 8225 	bgt.w	8005710 <_dtoa_r+0xbd8>
 80052c6:	9b00      	ldr	r3, [sp, #0]
 80052c8:	703b      	strb	r3, [r7, #0]
 80052ca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80052cc:	42bb      	cmp	r3, r7
 80052ce:	f000 8230 	beq.w	8005732 <_dtoa_r+0xbfa>
 80052d2:	4651      	mov	r1, sl
 80052d4:	2300      	movs	r3, #0
 80052d6:	220a      	movs	r2, #10
 80052d8:	4648      	mov	r0, r9
 80052da:	f001 f8a3 	bl	8006424 <__multadd>
 80052de:	4545      	cmp	r5, r8
 80052e0:	4682      	mov	sl, r0
 80052e2:	4629      	mov	r1, r5
 80052e4:	f04f 0300 	mov.w	r3, #0
 80052e8:	f04f 020a 	mov.w	r2, #10
 80052ec:	4648      	mov	r0, r9
 80052ee:	f000 8196 	beq.w	800561e <_dtoa_r+0xae6>
 80052f2:	f001 f897 	bl	8006424 <__multadd>
 80052f6:	4641      	mov	r1, r8
 80052f8:	4605      	mov	r5, r0
 80052fa:	2300      	movs	r3, #0
 80052fc:	220a      	movs	r2, #10
 80052fe:	4648      	mov	r0, r9
 8005300:	f001 f890 	bl	8006424 <__multadd>
 8005304:	4627      	mov	r7, r4
 8005306:	4680      	mov	r8, r0
 8005308:	e7a4      	b.n	8005254 <_dtoa_r+0x71c>
 800530a:	4631      	mov	r1, r6
 800530c:	4650      	mov	r0, sl
 800530e:	f001 fa6f 	bl	80067f0 <__mcmp>
 8005312:	2800      	cmp	r0, #0
 8005314:	da81      	bge.n	800521a <_dtoa_r+0x6e2>
 8005316:	9f06      	ldr	r7, [sp, #24]
 8005318:	4651      	mov	r1, sl
 800531a:	2300      	movs	r3, #0
 800531c:	220a      	movs	r2, #10
 800531e:	4648      	mov	r0, r9
 8005320:	3f01      	subs	r7, #1
 8005322:	9706      	str	r7, [sp, #24]
 8005324:	f001 f87e 	bl	8006424 <__multadd>
 8005328:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800532a:	4682      	mov	sl, r0
 800532c:	2b00      	cmp	r3, #0
 800532e:	f040 82eb 	bne.w	8005908 <_dtoa_r+0xdd0>
 8005332:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005334:	2b00      	cmp	r3, #0
 8005336:	f340 82f3 	ble.w	8005920 <_dtoa_r+0xde8>
 800533a:	9309      	str	r3, [sp, #36]	; 0x24
 800533c:	465c      	mov	r4, fp
 800533e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005342:	e002      	b.n	800534a <_dtoa_r+0x812>
 8005344:	f001 f86e 	bl	8006424 <__multadd>
 8005348:	4682      	mov	sl, r0
 800534a:	4631      	mov	r1, r6
 800534c:	4650      	mov	r0, sl
 800534e:	f7ff fb61 	bl	8004a14 <quorem>
 8005352:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8005356:	f804 7b01 	strb.w	r7, [r4], #1
 800535a:	eba4 030b 	sub.w	r3, r4, fp
 800535e:	4598      	cmp	r8, r3
 8005360:	f04f 020a 	mov.w	r2, #10
 8005364:	f04f 0300 	mov.w	r3, #0
 8005368:	4651      	mov	r1, sl
 800536a:	4648      	mov	r0, r9
 800536c:	dcea      	bgt.n	8005344 <_dtoa_r+0x80c>
 800536e:	2300      	movs	r3, #0
 8005370:	9700      	str	r7, [sp, #0]
 8005372:	9302      	str	r3, [sp, #8]
 8005374:	4651      	mov	r1, sl
 8005376:	2201      	movs	r2, #1
 8005378:	4648      	mov	r0, r9
 800537a:	f001 f9e3 	bl	8006744 <__lshift>
 800537e:	4631      	mov	r1, r6
 8005380:	4682      	mov	sl, r0
 8005382:	f001 fa35 	bl	80067f0 <__mcmp>
 8005386:	2800      	cmp	r0, #0
 8005388:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800538c:	dc14      	bgt.n	80053b8 <_dtoa_r+0x880>
 800538e:	d108      	bne.n	80053a2 <_dtoa_r+0x86a>
 8005390:	9b00      	ldr	r3, [sp, #0]
 8005392:	07db      	lsls	r3, r3, #31
 8005394:	d410      	bmi.n	80053b8 <_dtoa_r+0x880>
 8005396:	e004      	b.n	80053a2 <_dtoa_r+0x86a>
 8005398:	40240000 	.word	0x40240000
 800539c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80053a0:	461c      	mov	r4, r3
 80053a2:	2a30      	cmp	r2, #48	; 0x30
 80053a4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80053a8:	d0f8      	beq.n	800539c <_dtoa_r+0x864>
 80053aa:	e00b      	b.n	80053c4 <_dtoa_r+0x88c>
 80053ac:	459b      	cmp	fp, r3
 80053ae:	f000 814e 	beq.w	800564e <_dtoa_r+0xb16>
 80053b2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80053b6:	461c      	mov	r4, r3
 80053b8:	2a39      	cmp	r2, #57	; 0x39
 80053ba:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80053be:	d0f5      	beq.n	80053ac <_dtoa_r+0x874>
 80053c0:	3201      	adds	r2, #1
 80053c2:	701a      	strb	r2, [r3, #0]
 80053c4:	4631      	mov	r1, r6
 80053c6:	4648      	mov	r0, r9
 80053c8:	f001 f822 	bl	8006410 <_Bfree>
 80053cc:	b155      	cbz	r5, 80053e4 <_dtoa_r+0x8ac>
 80053ce:	9902      	ldr	r1, [sp, #8]
 80053d0:	b121      	cbz	r1, 80053dc <_dtoa_r+0x8a4>
 80053d2:	42a9      	cmp	r1, r5
 80053d4:	d002      	beq.n	80053dc <_dtoa_r+0x8a4>
 80053d6:	4648      	mov	r0, r9
 80053d8:	f001 f81a 	bl	8006410 <_Bfree>
 80053dc:	4629      	mov	r1, r5
 80053de:	4648      	mov	r0, r9
 80053e0:	f001 f816 	bl	8006410 <_Bfree>
 80053e4:	4651      	mov	r1, sl
 80053e6:	4648      	mov	r0, r9
 80053e8:	f001 f812 	bl	8006410 <_Bfree>
 80053ec:	2200      	movs	r2, #0
 80053ee:	9b06      	ldr	r3, [sp, #24]
 80053f0:	7022      	strb	r2, [r4, #0]
 80053f2:	9a05      	ldr	r2, [sp, #20]
 80053f4:	3301      	adds	r3, #1
 80053f6:	6013      	str	r3, [r2, #0]
 80053f8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80053fa:	2b00      	cmp	r3, #0
 80053fc:	f43f abdb 	beq.w	8004bb6 <_dtoa_r+0x7e>
 8005400:	4658      	mov	r0, fp
 8005402:	601c      	str	r4, [r3, #0]
 8005404:	b01b      	add	sp, #108	; 0x6c
 8005406:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800540a:	201c      	movs	r0, #28
 800540c:	e6eb      	b.n	80051e6 <_dtoa_r+0x6ae>
 800540e:	4601      	mov	r1, r0
 8005410:	4648      	mov	r0, r9
 8005412:	f001 f947 	bl	80066a4 <__pow5mult>
 8005416:	9b02      	ldr	r3, [sp, #8]
 8005418:	2b01      	cmp	r3, #1
 800541a:	4606      	mov	r6, r0
 800541c:	f340 80d4 	ble.w	80055c8 <_dtoa_r+0xa90>
 8005420:	2300      	movs	r3, #0
 8005422:	930c      	str	r3, [sp, #48]	; 0x30
 8005424:	6933      	ldr	r3, [r6, #16]
 8005426:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800542a:	6918      	ldr	r0, [r3, #16]
 800542c:	f001 f83a 	bl	80064a4 <__hi0bits>
 8005430:	f1c0 0020 	rsb	r0, r0, #32
 8005434:	e6cb      	b.n	80051ce <_dtoa_r+0x696>
 8005436:	900d      	str	r0, [sp, #52]	; 0x34
 8005438:	e42a      	b.n	8004c90 <_dtoa_r+0x158>
 800543a:	2501      	movs	r5, #1
 800543c:	e440      	b.n	8004cc0 <_dtoa_r+0x188>
 800543e:	f1c3 0820 	rsb	r8, r3, #32
 8005442:	9b00      	ldr	r3, [sp, #0]
 8005444:	fa03 f008 	lsl.w	r0, r3, r8
 8005448:	f7ff bbd8 	b.w	8004bfc <_dtoa_r+0xc4>
 800544c:	2300      	movs	r3, #0
 800544e:	930a      	str	r3, [sp, #40]	; 0x28
 8005450:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005454:	4413      	add	r3, r2
 8005456:	930e      	str	r3, [sp, #56]	; 0x38
 8005458:	3301      	adds	r3, #1
 800545a:	2b01      	cmp	r3, #1
 800545c:	461e      	mov	r6, r3
 800545e:	9309      	str	r3, [sp, #36]	; 0x24
 8005460:	bfb8      	it	lt
 8005462:	2601      	movlt	r6, #1
 8005464:	2100      	movs	r1, #0
 8005466:	2e17      	cmp	r6, #23
 8005468:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800546c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800546e:	f77f ac89 	ble.w	8004d84 <_dtoa_r+0x24c>
 8005472:	2201      	movs	r2, #1
 8005474:	2304      	movs	r3, #4
 8005476:	005b      	lsls	r3, r3, #1
 8005478:	f103 0014 	add.w	r0, r3, #20
 800547c:	42b0      	cmp	r0, r6
 800547e:	4611      	mov	r1, r2
 8005480:	f102 0201 	add.w	r2, r2, #1
 8005484:	d9f7      	bls.n	8005476 <_dtoa_r+0x93e>
 8005486:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800548a:	e47b      	b.n	8004d84 <_dtoa_r+0x24c>
 800548c:	2300      	movs	r3, #0
 800548e:	930a      	str	r3, [sp, #40]	; 0x28
 8005490:	9e07      	ldr	r6, [sp, #28]
 8005492:	2e00      	cmp	r6, #0
 8005494:	f340 80e2 	ble.w	800565c <_dtoa_r+0xb24>
 8005498:	960e      	str	r6, [sp, #56]	; 0x38
 800549a:	9609      	str	r6, [sp, #36]	; 0x24
 800549c:	e7e2      	b.n	8005464 <_dtoa_r+0x92c>
 800549e:	2301      	movs	r3, #1
 80054a0:	930a      	str	r3, [sp, #40]	; 0x28
 80054a2:	e7f5      	b.n	8005490 <_dtoa_r+0x958>
 80054a4:	9b00      	ldr	r3, [sp, #0]
 80054a6:	2b00      	cmp	r3, #0
 80054a8:	f47f ae90 	bne.w	80051cc <_dtoa_r+0x694>
 80054ac:	e9dd 1200 	ldrd	r1, r2, [sp]
 80054b0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80054b4:	2b00      	cmp	r3, #0
 80054b6:	f040 8192 	bne.w	80057de <_dtoa_r+0xca6>
 80054ba:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80054be:	0d1b      	lsrs	r3, r3, #20
 80054c0:	051b      	lsls	r3, r3, #20
 80054c2:	b12b      	cbz	r3, 80054d0 <_dtoa_r+0x998>
 80054c4:	9b08      	ldr	r3, [sp, #32]
 80054c6:	3301      	adds	r3, #1
 80054c8:	9308      	str	r3, [sp, #32]
 80054ca:	f108 0801 	add.w	r8, r8, #1
 80054ce:	2301      	movs	r3, #1
 80054d0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80054d2:	930c      	str	r3, [sp, #48]	; 0x30
 80054d4:	2a00      	cmp	r2, #0
 80054d6:	f43f ae79 	beq.w	80051cc <_dtoa_r+0x694>
 80054da:	e7a3      	b.n	8005424 <_dtoa_r+0x8ec>
 80054dc:	463a      	mov	r2, r7
 80054de:	4629      	mov	r1, r5
 80054e0:	4648      	mov	r0, r9
 80054e2:	f001 f8df 	bl	80066a4 <__pow5mult>
 80054e6:	4652      	mov	r2, sl
 80054e8:	4601      	mov	r1, r0
 80054ea:	4605      	mov	r5, r0
 80054ec:	4648      	mov	r0, r9
 80054ee:	f001 f833 	bl	8006558 <__multiply>
 80054f2:	4651      	mov	r1, sl
 80054f4:	4607      	mov	r7, r0
 80054f6:	4648      	mov	r0, r9
 80054f8:	f000 ff8a 	bl	8006410 <_Bfree>
 80054fc:	46ba      	mov	sl, r7
 80054fe:	2e00      	cmp	r6, #0
 8005500:	f43f ae57 	beq.w	80051b2 <_dtoa_r+0x67a>
 8005504:	e64f      	b.n	80051a6 <_dtoa_r+0x66e>
 8005506:	4629      	mov	r1, r5
 8005508:	4622      	mov	r2, r4
 800550a:	4648      	mov	r0, r9
 800550c:	f001 f91a 	bl	8006744 <__lshift>
 8005510:	4605      	mov	r5, r0
 8005512:	e68d      	b.n	8005230 <_dtoa_r+0x6f8>
 8005514:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005516:	2a00      	cmp	r2, #0
 8005518:	f000 815d 	beq.w	80057d6 <_dtoa_r+0xc9e>
 800551c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005520:	9a08      	ldr	r2, [sp, #32]
 8005522:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005524:	4614      	mov	r4, r2
 8005526:	441a      	add	r2, r3
 8005528:	4498      	add	r8, r3
 800552a:	9208      	str	r2, [sp, #32]
 800552c:	e5f7      	b.n	800511e <_dtoa_r+0x5e6>
 800552e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005530:	2b00      	cmp	r3, #0
 8005532:	f73f ad3e 	bgt.w	8004fb2 <_dtoa_r+0x47a>
 8005536:	f040 80bc 	bne.w	80056b2 <_dtoa_r+0xb7a>
 800553a:	ec51 0b17 	vmov	r0, r1, d7
 800553e:	2200      	movs	r2, #0
 8005540:	4bb2      	ldr	r3, [pc, #712]	; (800580c <_dtoa_r+0xcd4>)
 8005542:	f7fb fb59 	bl	8000bf8 <__aeabi_dmul>
 8005546:	e9dd 2300 	ldrd	r2, r3, [sp]
 800554a:	f7fb fddb 	bl	8001104 <__aeabi_dcmpge>
 800554e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005550:	4635      	mov	r5, r6
 8005552:	2800      	cmp	r0, #0
 8005554:	d176      	bne.n	8005644 <_dtoa_r+0xb0c>
 8005556:	9a06      	ldr	r2, [sp, #24]
 8005558:	2331      	movs	r3, #49	; 0x31
 800555a:	3201      	adds	r2, #1
 800555c:	9206      	str	r2, [sp, #24]
 800555e:	f88b 3000 	strb.w	r3, [fp]
 8005562:	f10b 0401 	add.w	r4, fp, #1
 8005566:	4631      	mov	r1, r6
 8005568:	4648      	mov	r0, r9
 800556a:	f000 ff51 	bl	8006410 <_Bfree>
 800556e:	2d00      	cmp	r5, #0
 8005570:	f47f af34 	bne.w	80053dc <_dtoa_r+0x8a4>
 8005574:	e736      	b.n	80053e4 <_dtoa_r+0x8ac>
 8005576:	f000 8142 	beq.w	80057fe <_dtoa_r+0xcc6>
 800557a:	9b06      	ldr	r3, [sp, #24]
 800557c:	425c      	negs	r4, r3
 800557e:	4ba4      	ldr	r3, [pc, #656]	; (8005810 <_dtoa_r+0xcd8>)
 8005580:	f004 020f 	and.w	r2, r4, #15
 8005584:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005588:	e9d3 2300 	ldrd	r2, r3, [r3]
 800558c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005590:	f7fb fb32 	bl	8000bf8 <__aeabi_dmul>
 8005594:	1124      	asrs	r4, r4, #4
 8005596:	e9cd 0100 	strd	r0, r1, [sp]
 800559a:	f000 81c6 	beq.w	800592a <_dtoa_r+0xdf2>
 800559e:	4d9d      	ldr	r5, [pc, #628]	; (8005814 <_dtoa_r+0xcdc>)
 80055a0:	2300      	movs	r3, #0
 80055a2:	2602      	movs	r6, #2
 80055a4:	07e7      	lsls	r7, r4, #31
 80055a6:	d505      	bpl.n	80055b4 <_dtoa_r+0xa7c>
 80055a8:	e9d5 2300 	ldrd	r2, r3, [r5]
 80055ac:	f7fb fb24 	bl	8000bf8 <__aeabi_dmul>
 80055b0:	3601      	adds	r6, #1
 80055b2:	2301      	movs	r3, #1
 80055b4:	1064      	asrs	r4, r4, #1
 80055b6:	f105 0508 	add.w	r5, r5, #8
 80055ba:	d1f3      	bne.n	80055a4 <_dtoa_r+0xa6c>
 80055bc:	2b00      	cmp	r3, #0
 80055be:	f43f ac27 	beq.w	8004e10 <_dtoa_r+0x2d8>
 80055c2:	e9cd 0100 	strd	r0, r1, [sp]
 80055c6:	e423      	b.n	8004e10 <_dtoa_r+0x2d8>
 80055c8:	9b00      	ldr	r3, [sp, #0]
 80055ca:	2b00      	cmp	r3, #0
 80055cc:	f43f af6e 	beq.w	80054ac <_dtoa_r+0x974>
 80055d0:	e726      	b.n	8005420 <_dtoa_r+0x8e8>
 80055d2:	6869      	ldr	r1, [r5, #4]
 80055d4:	4648      	mov	r0, r9
 80055d6:	f000 fef5 	bl	80063c4 <_Balloc>
 80055da:	692b      	ldr	r3, [r5, #16]
 80055dc:	3302      	adds	r3, #2
 80055de:	009a      	lsls	r2, r3, #2
 80055e0:	4604      	mov	r4, r0
 80055e2:	f105 010c 	add.w	r1, r5, #12
 80055e6:	300c      	adds	r0, #12
 80055e8:	f7fa ffd8 	bl	800059c <memcpy>
 80055ec:	4621      	mov	r1, r4
 80055ee:	2201      	movs	r2, #1
 80055f0:	4648      	mov	r0, r9
 80055f2:	f001 f8a7 	bl	8006744 <__lshift>
 80055f6:	4680      	mov	r8, r0
 80055f8:	e61f      	b.n	800523a <_dtoa_r+0x702>
 80055fa:	2400      	movs	r4, #0
 80055fc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005600:	4621      	mov	r1, r4
 8005602:	4648      	mov	r0, r9
 8005604:	f000 fede 	bl	80063c4 <_Balloc>
 8005608:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800560c:	930e      	str	r3, [sp, #56]	; 0x38
 800560e:	9309      	str	r3, [sp, #36]	; 0x24
 8005610:	2301      	movs	r3, #1
 8005612:	4683      	mov	fp, r0
 8005614:	9407      	str	r4, [sp, #28]
 8005616:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800561a:	930a      	str	r3, [sp, #40]	; 0x28
 800561c:	e4b6      	b.n	8004f8c <_dtoa_r+0x454>
 800561e:	f000 ff01 	bl	8006424 <__multadd>
 8005622:	4627      	mov	r7, r4
 8005624:	4605      	mov	r5, r0
 8005626:	4680      	mov	r8, r0
 8005628:	e614      	b.n	8005254 <_dtoa_r+0x71c>
 800562a:	4648      	mov	r0, r9
 800562c:	f000 fef0 	bl	8006410 <_Bfree>
 8005630:	2301      	movs	r3, #1
 8005632:	e639      	b.n	80052a8 <_dtoa_r+0x770>
 8005634:	9b02      	ldr	r3, [sp, #8]
 8005636:	2b02      	cmp	r3, #2
 8005638:	f77f adf3 	ble.w	8005222 <_dtoa_r+0x6ea>
 800563c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800563e:	2b00      	cmp	r3, #0
 8005640:	f000 80cf 	beq.w	80057e2 <_dtoa_r+0xcaa>
 8005644:	9b07      	ldr	r3, [sp, #28]
 8005646:	43db      	mvns	r3, r3
 8005648:	9306      	str	r3, [sp, #24]
 800564a:	465c      	mov	r4, fp
 800564c:	e78b      	b.n	8005566 <_dtoa_r+0xa2e>
 800564e:	9a06      	ldr	r2, [sp, #24]
 8005650:	2331      	movs	r3, #49	; 0x31
 8005652:	3201      	adds	r2, #1
 8005654:	9206      	str	r2, [sp, #24]
 8005656:	f88b 3000 	strb.w	r3, [fp]
 800565a:	e6b3      	b.n	80053c4 <_dtoa_r+0x88c>
 800565c:	2401      	movs	r4, #1
 800565e:	9409      	str	r4, [sp, #36]	; 0x24
 8005660:	9407      	str	r4, [sp, #28]
 8005662:	f7ff bb8b 	b.w	8004d7c <_dtoa_r+0x244>
 8005666:	4630      	mov	r0, r6
 8005668:	f7fb fa5c 	bl	8000b24 <__aeabi_i2d>
 800566c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005670:	f7fb fac2 	bl	8000bf8 <__aeabi_dmul>
 8005674:	2200      	movs	r2, #0
 8005676:	4b68      	ldr	r3, [pc, #416]	; (8005818 <_dtoa_r+0xce0>)
 8005678:	f7fb f908 	bl	800088c <__adddf3>
 800567c:	4606      	mov	r6, r0
 800567e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005682:	2200      	movs	r2, #0
 8005684:	4b61      	ldr	r3, [pc, #388]	; (800580c <_dtoa_r+0xcd4>)
 8005686:	e9dd 0100 	ldrd	r0, r1, [sp]
 800568a:	f7fb f8fd 	bl	8000888 <__aeabi_dsub>
 800568e:	4632      	mov	r2, r6
 8005690:	463b      	mov	r3, r7
 8005692:	4604      	mov	r4, r0
 8005694:	460d      	mov	r5, r1
 8005696:	f7fb fd3f 	bl	8001118 <__aeabi_dcmpgt>
 800569a:	2800      	cmp	r0, #0
 800569c:	d14f      	bne.n	800573e <_dtoa_r+0xc06>
 800569e:	4632      	mov	r2, r6
 80056a0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80056a4:	4620      	mov	r0, r4
 80056a6:	4629      	mov	r1, r5
 80056a8:	f7fb fd18 	bl	80010dc <__aeabi_dcmplt>
 80056ac:	2800      	cmp	r0, #0
 80056ae:	f43f ac69 	beq.w	8004f84 <_dtoa_r+0x44c>
 80056b2:	2600      	movs	r6, #0
 80056b4:	4635      	mov	r5, r6
 80056b6:	e7c5      	b.n	8005644 <_dtoa_r+0xb0c>
 80056b8:	2301      	movs	r3, #1
 80056ba:	930a      	str	r3, [sp, #40]	; 0x28
 80056bc:	e6c8      	b.n	8005450 <_dtoa_r+0x918>
 80056be:	4651      	mov	r1, sl
 80056c0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80056c2:	4648      	mov	r0, r9
 80056c4:	f000 ffee 	bl	80066a4 <__pow5mult>
 80056c8:	4682      	mov	sl, r0
 80056ca:	e572      	b.n	80051b2 <_dtoa_r+0x67a>
 80056cc:	f8dd a000 	ldr.w	sl, [sp]
 80056d0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80056d4:	e686      	b.n	80053e4 <_dtoa_r+0x8ac>
 80056d6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80056d8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80056da:	1afb      	subs	r3, r7, r3
 80056dc:	441a      	add	r2, r3
 80056de:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80056e2:	2700      	movs	r7, #0
 80056e4:	e512      	b.n	800510c <_dtoa_r+0x5d4>
 80056e6:	2b00      	cmp	r3, #0
 80056e8:	9402      	str	r4, [sp, #8]
 80056ea:	465e      	mov	r6, fp
 80056ec:	f107 0401 	add.w	r4, r7, #1
 80056f0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80056f4:	f300 80ba 	bgt.w	800586c <_dtoa_r+0xd34>
 80056f8:	9b00      	ldr	r3, [sp, #0]
 80056fa:	9502      	str	r5, [sp, #8]
 80056fc:	703b      	strb	r3, [r7, #0]
 80056fe:	4645      	mov	r5, r8
 8005700:	e660      	b.n	80053c4 <_dtoa_r+0x88c>
 8005702:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005706:	2602      	movs	r6, #2
 8005708:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800570c:	f7ff bb67 	b.w	8004dde <_dtoa_r+0x2a6>
 8005710:	9b00      	ldr	r3, [sp, #0]
 8005712:	2b39      	cmp	r3, #57	; 0x39
 8005714:	465e      	mov	r6, fp
 8005716:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800571a:	f000 80b9 	beq.w	8005890 <_dtoa_r+0xd58>
 800571e:	9b00      	ldr	r3, [sp, #0]
 8005720:	9502      	str	r5, [sp, #8]
 8005722:	3301      	adds	r3, #1
 8005724:	703b      	strb	r3, [r7, #0]
 8005726:	4645      	mov	r5, r8
 8005728:	e64c      	b.n	80053c4 <_dtoa_r+0x88c>
 800572a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800572e:	1a9c      	subs	r4, r3, r2
 8005730:	e4f5      	b.n	800511e <_dtoa_r+0x5e6>
 8005732:	465e      	mov	r6, fp
 8005734:	9502      	str	r5, [sp, #8]
 8005736:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800573a:	4645      	mov	r5, r8
 800573c:	e61a      	b.n	8005374 <_dtoa_r+0x83c>
 800573e:	2600      	movs	r6, #0
 8005740:	4635      	mov	r5, r6
 8005742:	e708      	b.n	8005556 <_dtoa_r+0xa1e>
 8005744:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005748:	e9dd 0100 	ldrd	r0, r1, [sp]
 800574c:	f7fb fa54 	bl	8000bf8 <__aeabi_dmul>
 8005750:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005752:	f88b 5000 	strb.w	r5, [fp]
 8005756:	2b01      	cmp	r3, #1
 8005758:	e9cd 0100 	strd	r0, r1, [sp]
 800575c:	d020      	beq.n	80057a0 <_dtoa_r+0xc68>
 800575e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005760:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005764:	445b      	add	r3, fp
 8005766:	4698      	mov	r8, r3
 8005768:	2200      	movs	r2, #0
 800576a:	4b2c      	ldr	r3, [pc, #176]	; (800581c <_dtoa_r+0xce4>)
 800576c:	4630      	mov	r0, r6
 800576e:	4639      	mov	r1, r7
 8005770:	f7fb fa42 	bl	8000bf8 <__aeabi_dmul>
 8005774:	460f      	mov	r7, r1
 8005776:	4606      	mov	r6, r0
 8005778:	f7fb fcee 	bl	8001158 <__aeabi_d2iz>
 800577c:	4605      	mov	r5, r0
 800577e:	f7fb f9d1 	bl	8000b24 <__aeabi_i2d>
 8005782:	3530      	adds	r5, #48	; 0x30
 8005784:	4602      	mov	r2, r0
 8005786:	460b      	mov	r3, r1
 8005788:	4630      	mov	r0, r6
 800578a:	4639      	mov	r1, r7
 800578c:	f7fb f87c 	bl	8000888 <__aeabi_dsub>
 8005790:	f804 5b01 	strb.w	r5, [r4], #1
 8005794:	4544      	cmp	r4, r8
 8005796:	4606      	mov	r6, r0
 8005798:	460f      	mov	r7, r1
 800579a:	d1e5      	bne.n	8005768 <_dtoa_r+0xc30>
 800579c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80057a0:	4b1f      	ldr	r3, [pc, #124]	; (8005820 <_dtoa_r+0xce8>)
 80057a2:	2200      	movs	r2, #0
 80057a4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80057a8:	f7fb f870 	bl	800088c <__adddf3>
 80057ac:	4632      	mov	r2, r6
 80057ae:	463b      	mov	r3, r7
 80057b0:	f7fb fc94 	bl	80010dc <__aeabi_dcmplt>
 80057b4:	2800      	cmp	r0, #0
 80057b6:	d070      	beq.n	800589a <_dtoa_r+0xd62>
 80057b8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80057ba:	9306      	str	r3, [sp, #24]
 80057bc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80057c0:	e48f      	b.n	80050e2 <_dtoa_r+0x5aa>
 80057c2:	2330      	movs	r3, #48	; 0x30
 80057c4:	f88b 3000 	strb.w	r3, [fp]
 80057c8:	9b06      	ldr	r3, [sp, #24]
 80057ca:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80057ce:	3301      	adds	r3, #1
 80057d0:	9306      	str	r3, [sp, #24]
 80057d2:	465b      	mov	r3, fp
 80057d4:	e489      	b.n	80050ea <_dtoa_r+0x5b2>
 80057d6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80057d8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80057dc:	e6a0      	b.n	8005520 <_dtoa_r+0x9e8>
 80057de:	2300      	movs	r3, #0
 80057e0:	e676      	b.n	80054d0 <_dtoa_r+0x998>
 80057e2:	4631      	mov	r1, r6
 80057e4:	2205      	movs	r2, #5
 80057e6:	4648      	mov	r0, r9
 80057e8:	f000 fe1c 	bl	8006424 <__multadd>
 80057ec:	4601      	mov	r1, r0
 80057ee:	4606      	mov	r6, r0
 80057f0:	4650      	mov	r0, sl
 80057f2:	f000 fffd 	bl	80067f0 <__mcmp>
 80057f6:	2800      	cmp	r0, #0
 80057f8:	f73f aead 	bgt.w	8005556 <_dtoa_r+0xa1e>
 80057fc:	e722      	b.n	8005644 <_dtoa_r+0xb0c>
 80057fe:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005802:	2602      	movs	r6, #2
 8005804:	ed8d 7b00 	vstr	d7, [sp]
 8005808:	f7ff bb02 	b.w	8004e10 <_dtoa_r+0x2d8>
 800580c:	40140000 	.word	0x40140000
 8005810:	08007660 	.word	0x08007660
 8005814:	08007638 	.word	0x08007638
 8005818:	401c0000 	.word	0x401c0000
 800581c:	40240000 	.word	0x40240000
 8005820:	3fe00000 	.word	0x3fe00000
 8005824:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005826:	2b00      	cmp	r3, #0
 8005828:	f43f af1d 	beq.w	8005666 <_dtoa_r+0xb2e>
 800582c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800582e:	2c00      	cmp	r4, #0
 8005830:	f77f aba8 	ble.w	8004f84 <_dtoa_r+0x44c>
 8005834:	2200      	movs	r2, #0
 8005836:	4b45      	ldr	r3, [pc, #276]	; (800594c <_dtoa_r+0xe14>)
 8005838:	e9dd 0100 	ldrd	r0, r1, [sp]
 800583c:	f7fb f9dc 	bl	8000bf8 <__aeabi_dmul>
 8005840:	e9cd 0100 	strd	r0, r1, [sp]
 8005844:	1c70      	adds	r0, r6, #1
 8005846:	f7fb f96d 	bl	8000b24 <__aeabi_i2d>
 800584a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800584e:	f7fb f9d3 	bl	8000bf8 <__aeabi_dmul>
 8005852:	4b3f      	ldr	r3, [pc, #252]	; (8005950 <_dtoa_r+0xe18>)
 8005854:	2200      	movs	r2, #0
 8005856:	f7fb f819 	bl	800088c <__adddf3>
 800585a:	9b06      	ldr	r3, [sp, #24]
 800585c:	9412      	str	r4, [sp, #72]	; 0x48
 800585e:	3b01      	subs	r3, #1
 8005860:	4606      	mov	r6, r0
 8005862:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005866:	9316      	str	r3, [sp, #88]	; 0x58
 8005868:	f7ff baf3 	b.w	8004e52 <_dtoa_r+0x31a>
 800586c:	4651      	mov	r1, sl
 800586e:	2201      	movs	r2, #1
 8005870:	4648      	mov	r0, r9
 8005872:	f000 ff67 	bl	8006744 <__lshift>
 8005876:	4631      	mov	r1, r6
 8005878:	4682      	mov	sl, r0
 800587a:	f000 ffb9 	bl	80067f0 <__mcmp>
 800587e:	2800      	cmp	r0, #0
 8005880:	dd3b      	ble.n	80058fa <_dtoa_r+0xdc2>
 8005882:	9b00      	ldr	r3, [sp, #0]
 8005884:	2b39      	cmp	r3, #57	; 0x39
 8005886:	d003      	beq.n	8005890 <_dtoa_r+0xd58>
 8005888:	9b02      	ldr	r3, [sp, #8]
 800588a:	3331      	adds	r3, #49	; 0x31
 800588c:	9300      	str	r3, [sp, #0]
 800588e:	e733      	b.n	80056f8 <_dtoa_r+0xbc0>
 8005890:	2239      	movs	r2, #57	; 0x39
 8005892:	9502      	str	r5, [sp, #8]
 8005894:	703a      	strb	r2, [r7, #0]
 8005896:	4645      	mov	r5, r8
 8005898:	e58e      	b.n	80053b8 <_dtoa_r+0x880>
 800589a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800589e:	2000      	movs	r0, #0
 80058a0:	492c      	ldr	r1, [pc, #176]	; (8005954 <_dtoa_r+0xe1c>)
 80058a2:	f7fa fff1 	bl	8000888 <__aeabi_dsub>
 80058a6:	4632      	mov	r2, r6
 80058a8:	463b      	mov	r3, r7
 80058aa:	f7fb fc35 	bl	8001118 <__aeabi_dcmpgt>
 80058ae:	b910      	cbnz	r0, 80058b6 <_dtoa_r+0xd7e>
 80058b0:	f7ff bb68 	b.w	8004f84 <_dtoa_r+0x44c>
 80058b4:	4614      	mov	r4, r2
 80058b6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80058ba:	2b30      	cmp	r3, #48	; 0x30
 80058bc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80058c0:	d0f8      	beq.n	80058b4 <_dtoa_r+0xd7c>
 80058c2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80058c4:	9306      	str	r3, [sp, #24]
 80058c6:	e58d      	b.n	80053e4 <_dtoa_r+0x8ac>
 80058c8:	46d9      	mov	r9, fp
 80058ca:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80058ce:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80058d2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80058d4:	9306      	str	r3, [sp, #24]
 80058d6:	e404      	b.n	80050e2 <_dtoa_r+0x5aa>
 80058d8:	9b00      	ldr	r3, [sp, #0]
 80058da:	2b39      	cmp	r3, #57	; 0x39
 80058dc:	4621      	mov	r1, r4
 80058de:	4632      	mov	r2, r6
 80058e0:	f107 0401 	add.w	r4, r7, #1
 80058e4:	465e      	mov	r6, fp
 80058e6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80058ea:	d0d1      	beq.n	8005890 <_dtoa_r+0xd58>
 80058ec:	2a00      	cmp	r2, #0
 80058ee:	f77f af03 	ble.w	80056f8 <_dtoa_r+0xbc0>
 80058f2:	460b      	mov	r3, r1
 80058f4:	3331      	adds	r3, #49	; 0x31
 80058f6:	9300      	str	r3, [sp, #0]
 80058f8:	e6fe      	b.n	80056f8 <_dtoa_r+0xbc0>
 80058fa:	f47f aefd 	bne.w	80056f8 <_dtoa_r+0xbc0>
 80058fe:	9b00      	ldr	r3, [sp, #0]
 8005900:	07da      	lsls	r2, r3, #31
 8005902:	f57f aef9 	bpl.w	80056f8 <_dtoa_r+0xbc0>
 8005906:	e7bc      	b.n	8005882 <_dtoa_r+0xd4a>
 8005908:	4629      	mov	r1, r5
 800590a:	2300      	movs	r3, #0
 800590c:	220a      	movs	r2, #10
 800590e:	4648      	mov	r0, r9
 8005910:	f000 fd88 	bl	8006424 <__multadd>
 8005914:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005916:	2b00      	cmp	r3, #0
 8005918:	4605      	mov	r5, r0
 800591a:	dd09      	ble.n	8005930 <_dtoa_r+0xdf8>
 800591c:	9309      	str	r3, [sp, #36]	; 0x24
 800591e:	e484      	b.n	800522a <_dtoa_r+0x6f2>
 8005920:	9b02      	ldr	r3, [sp, #8]
 8005922:	2b02      	cmp	r3, #2
 8005924:	dc0e      	bgt.n	8005944 <_dtoa_r+0xe0c>
 8005926:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005928:	e507      	b.n	800533a <_dtoa_r+0x802>
 800592a:	2602      	movs	r6, #2
 800592c:	f7ff ba70 	b.w	8004e10 <_dtoa_r+0x2d8>
 8005930:	9b02      	ldr	r3, [sp, #8]
 8005932:	2b02      	cmp	r3, #2
 8005934:	dc06      	bgt.n	8005944 <_dtoa_r+0xe0c>
 8005936:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005938:	e7f0      	b.n	800591c <_dtoa_r+0xde4>
 800593a:	f43f ac59 	beq.w	80051f0 <_dtoa_r+0x6b8>
 800593e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005942:	e450      	b.n	80051e6 <_dtoa_r+0x6ae>
 8005944:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005946:	9309      	str	r3, [sp, #36]	; 0x24
 8005948:	e678      	b.n	800563c <_dtoa_r+0xb04>
 800594a:	bf00      	nop
 800594c:	40240000 	.word	0x40240000
 8005950:	401c0000 	.word	0x401c0000
 8005954:	3fe00000 	.word	0x3fe00000

08005958 <__sflush_r>:
 8005958:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800595c:	b29a      	uxth	r2, r3
 800595e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005962:	460c      	mov	r4, r1
 8005964:	0711      	lsls	r1, r2, #28
 8005966:	4680      	mov	r8, r0
 8005968:	d444      	bmi.n	80059f4 <__sflush_r+0x9c>
 800596a:	6862      	ldr	r2, [r4, #4]
 800596c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005970:	2a00      	cmp	r2, #0
 8005972:	81a3      	strh	r3, [r4, #12]
 8005974:	dd59      	ble.n	8005a2a <__sflush_r+0xd2>
 8005976:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005978:	2d00      	cmp	r5, #0
 800597a:	d053      	beq.n	8005a24 <__sflush_r+0xcc>
 800597c:	2200      	movs	r2, #0
 800597e:	b29b      	uxth	r3, r3
 8005980:	f8d8 6000 	ldr.w	r6, [r8]
 8005984:	69e1      	ldr	r1, [r4, #28]
 8005986:	f8c8 2000 	str.w	r2, [r8]
 800598a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800598e:	f040 8083 	bne.w	8005a98 <__sflush_r+0x140>
 8005992:	2301      	movs	r3, #1
 8005994:	4640      	mov	r0, r8
 8005996:	47a8      	blx	r5
 8005998:	1c42      	adds	r2, r0, #1
 800599a:	d04a      	beq.n	8005a32 <__sflush_r+0xda>
 800599c:	89a3      	ldrh	r3, [r4, #12]
 800599e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80059a0:	69e1      	ldr	r1, [r4, #28]
 80059a2:	075b      	lsls	r3, r3, #29
 80059a4:	d505      	bpl.n	80059b2 <__sflush_r+0x5a>
 80059a6:	6862      	ldr	r2, [r4, #4]
 80059a8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80059aa:	1a80      	subs	r0, r0, r2
 80059ac:	b10b      	cbz	r3, 80059b2 <__sflush_r+0x5a>
 80059ae:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80059b0:	1ac0      	subs	r0, r0, r3
 80059b2:	4602      	mov	r2, r0
 80059b4:	2300      	movs	r3, #0
 80059b6:	4640      	mov	r0, r8
 80059b8:	47a8      	blx	r5
 80059ba:	1c47      	adds	r7, r0, #1
 80059bc:	d045      	beq.n	8005a4a <__sflush_r+0xf2>
 80059be:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059c2:	6922      	ldr	r2, [r4, #16]
 80059c4:	6022      	str	r2, [r4, #0]
 80059c6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80059ca:	2200      	movs	r2, #0
 80059cc:	81a3      	strh	r3, [r4, #12]
 80059ce:	04db      	lsls	r3, r3, #19
 80059d0:	6062      	str	r2, [r4, #4]
 80059d2:	d500      	bpl.n	80059d6 <__sflush_r+0x7e>
 80059d4:	6520      	str	r0, [r4, #80]	; 0x50
 80059d6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80059d8:	f8c8 6000 	str.w	r6, [r8]
 80059dc:	b311      	cbz	r1, 8005a24 <__sflush_r+0xcc>
 80059de:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80059e2:	4299      	cmp	r1, r3
 80059e4:	d002      	beq.n	80059ec <__sflush_r+0x94>
 80059e6:	4640      	mov	r0, r8
 80059e8:	f000 f95e 	bl	8005ca8 <_free_r>
 80059ec:	2000      	movs	r0, #0
 80059ee:	6320      	str	r0, [r4, #48]	; 0x30
 80059f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80059f4:	6926      	ldr	r6, [r4, #16]
 80059f6:	b1ae      	cbz	r6, 8005a24 <__sflush_r+0xcc>
 80059f8:	6825      	ldr	r5, [r4, #0]
 80059fa:	6026      	str	r6, [r4, #0]
 80059fc:	0792      	lsls	r2, r2, #30
 80059fe:	bf0c      	ite	eq
 8005a00:	6963      	ldreq	r3, [r4, #20]
 8005a02:	2300      	movne	r3, #0
 8005a04:	1bad      	subs	r5, r5, r6
 8005a06:	60a3      	str	r3, [r4, #8]
 8005a08:	e00a      	b.n	8005a20 <__sflush_r+0xc8>
 8005a0a:	462b      	mov	r3, r5
 8005a0c:	4632      	mov	r2, r6
 8005a0e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005a10:	69e1      	ldr	r1, [r4, #28]
 8005a12:	4640      	mov	r0, r8
 8005a14:	47b8      	blx	r7
 8005a16:	2800      	cmp	r0, #0
 8005a18:	eba5 0500 	sub.w	r5, r5, r0
 8005a1c:	4406      	add	r6, r0
 8005a1e:	dd2b      	ble.n	8005a78 <__sflush_r+0x120>
 8005a20:	2d00      	cmp	r5, #0
 8005a22:	dcf2      	bgt.n	8005a0a <__sflush_r+0xb2>
 8005a24:	2000      	movs	r0, #0
 8005a26:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005a2a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005a2c:	2a00      	cmp	r2, #0
 8005a2e:	dca2      	bgt.n	8005976 <__sflush_r+0x1e>
 8005a30:	e7f8      	b.n	8005a24 <__sflush_r+0xcc>
 8005a32:	f8d8 3000 	ldr.w	r3, [r8]
 8005a36:	2b00      	cmp	r3, #0
 8005a38:	d0b0      	beq.n	800599c <__sflush_r+0x44>
 8005a3a:	2b1d      	cmp	r3, #29
 8005a3c:	d001      	beq.n	8005a42 <__sflush_r+0xea>
 8005a3e:	2b16      	cmp	r3, #22
 8005a40:	d12c      	bne.n	8005a9c <__sflush_r+0x144>
 8005a42:	f8c8 6000 	str.w	r6, [r8]
 8005a46:	2000      	movs	r0, #0
 8005a48:	e7ed      	b.n	8005a26 <__sflush_r+0xce>
 8005a4a:	f8d8 1000 	ldr.w	r1, [r8]
 8005a4e:	291d      	cmp	r1, #29
 8005a50:	d81a      	bhi.n	8005a88 <__sflush_r+0x130>
 8005a52:	4b15      	ldr	r3, [pc, #84]	; (8005aa8 <__sflush_r+0x150>)
 8005a54:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005a58:	40cb      	lsrs	r3, r1
 8005a5a:	43db      	mvns	r3, r3
 8005a5c:	f013 0301 	ands.w	r3, r3, #1
 8005a60:	d114      	bne.n	8005a8c <__sflush_r+0x134>
 8005a62:	6925      	ldr	r5, [r4, #16]
 8005a64:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005a68:	e9c4 5300 	strd	r5, r3, [r4]
 8005a6c:	04d5      	lsls	r5, r2, #19
 8005a6e:	81a2      	strh	r2, [r4, #12]
 8005a70:	d5b1      	bpl.n	80059d6 <__sflush_r+0x7e>
 8005a72:	2900      	cmp	r1, #0
 8005a74:	d1af      	bne.n	80059d6 <__sflush_r+0x7e>
 8005a76:	e7ad      	b.n	80059d4 <__sflush_r+0x7c>
 8005a78:	89a3      	ldrh	r3, [r4, #12]
 8005a7a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005a7e:	81a3      	strh	r3, [r4, #12]
 8005a80:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a84:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005a88:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005a8c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005a90:	81a2      	strh	r2, [r4, #12]
 8005a92:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a96:	e7c6      	b.n	8005a26 <__sflush_r+0xce>
 8005a98:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005a9a:	e782      	b.n	80059a2 <__sflush_r+0x4a>
 8005a9c:	89a3      	ldrh	r3, [r4, #12]
 8005a9e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005aa2:	81a3      	strh	r3, [r4, #12]
 8005aa4:	e7bf      	b.n	8005a26 <__sflush_r+0xce>
 8005aa6:	bf00      	nop
 8005aa8:	20400001 	.word	0x20400001

08005aac <_fflush_r>:
 8005aac:	b538      	push	{r3, r4, r5, lr}
 8005aae:	460d      	mov	r5, r1
 8005ab0:	4604      	mov	r4, r0
 8005ab2:	b108      	cbz	r0, 8005ab8 <_fflush_r+0xc>
 8005ab4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005ab6:	b1a3      	cbz	r3, 8005ae2 <_fflush_r+0x36>
 8005ab8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005abc:	b1b8      	cbz	r0, 8005aee <_fflush_r+0x42>
 8005abe:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005ac0:	07db      	lsls	r3, r3, #31
 8005ac2:	d401      	bmi.n	8005ac8 <_fflush_r+0x1c>
 8005ac4:	0581      	lsls	r1, r0, #22
 8005ac6:	d51a      	bpl.n	8005afe <_fflush_r+0x52>
 8005ac8:	4620      	mov	r0, r4
 8005aca:	4629      	mov	r1, r5
 8005acc:	f7ff ff44 	bl	8005958 <__sflush_r>
 8005ad0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005ad2:	07da      	lsls	r2, r3, #31
 8005ad4:	4604      	mov	r4, r0
 8005ad6:	d402      	bmi.n	8005ade <_fflush_r+0x32>
 8005ad8:	89ab      	ldrh	r3, [r5, #12]
 8005ada:	059b      	lsls	r3, r3, #22
 8005adc:	d50a      	bpl.n	8005af4 <_fflush_r+0x48>
 8005ade:	4620      	mov	r0, r4
 8005ae0:	bd38      	pop	{r3, r4, r5, pc}
 8005ae2:	f000 f83f 	bl	8005b64 <__sinit>
 8005ae6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005aea:	2800      	cmp	r0, #0
 8005aec:	d1e7      	bne.n	8005abe <_fflush_r+0x12>
 8005aee:	4604      	mov	r4, r0
 8005af0:	4620      	mov	r0, r4
 8005af2:	bd38      	pop	{r3, r4, r5, pc}
 8005af4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005af6:	f000 fb87 	bl	8006208 <__retarget_lock_release_recursive>
 8005afa:	4620      	mov	r0, r4
 8005afc:	bd38      	pop	{r3, r4, r5, pc}
 8005afe:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005b00:	f000 fb80 	bl	8006204 <__retarget_lock_acquire_recursive>
 8005b04:	e7e0      	b.n	8005ac8 <_fflush_r+0x1c>
 8005b06:	bf00      	nop

08005b08 <std>:
 8005b08:	b510      	push	{r4, lr}
 8005b0a:	2300      	movs	r3, #0
 8005b0c:	4604      	mov	r4, r0
 8005b0e:	8181      	strh	r1, [r0, #12]
 8005b10:	81c2      	strh	r2, [r0, #14]
 8005b12:	e9c0 3300 	strd	r3, r3, [r0]
 8005b16:	6083      	str	r3, [r0, #8]
 8005b18:	6643      	str	r3, [r0, #100]	; 0x64
 8005b1a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005b1e:	6183      	str	r3, [r0, #24]
 8005b20:	4619      	mov	r1, r3
 8005b22:	2208      	movs	r2, #8
 8005b24:	305c      	adds	r0, #92	; 0x5c
 8005b26:	f7fd f8ad 	bl	8002c84 <memset>
 8005b2a:	4807      	ldr	r0, [pc, #28]	; (8005b48 <std+0x40>)
 8005b2c:	4907      	ldr	r1, [pc, #28]	; (8005b4c <std+0x44>)
 8005b2e:	4a08      	ldr	r2, [pc, #32]	; (8005b50 <std+0x48>)
 8005b30:	4b08      	ldr	r3, [pc, #32]	; (8005b54 <std+0x4c>)
 8005b32:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005b34:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005b38:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005b3c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005b40:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005b44:	f000 bb5a 	b.w	80061fc <__retarget_lock_init_recursive>
 8005b48:	08006d9d 	.word	0x08006d9d
 8005b4c:	08006dc1 	.word	0x08006dc1
 8005b50:	08006dfd 	.word	0x08006dfd
 8005b54:	08006e1d 	.word	0x08006e1d

08005b58 <_cleanup_r>:
 8005b58:	4901      	ldr	r1, [pc, #4]	; (8005b60 <_cleanup_r+0x8>)
 8005b5a:	f000 bb17 	b.w	800618c <_fwalk_reent>
 8005b5e:	bf00      	nop
 8005b60:	0800708d 	.word	0x0800708d

08005b64 <__sinit>:
 8005b64:	b510      	push	{r4, lr}
 8005b66:	4604      	mov	r4, r0
 8005b68:	4812      	ldr	r0, [pc, #72]	; (8005bb4 <__sinit+0x50>)
 8005b6a:	f000 fb4b 	bl	8006204 <__retarget_lock_acquire_recursive>
 8005b6e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005b70:	b9d2      	cbnz	r2, 8005ba8 <__sinit+0x44>
 8005b72:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005b76:	4810      	ldr	r0, [pc, #64]	; (8005bb8 <__sinit+0x54>)
 8005b78:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005b7c:	2103      	movs	r1, #3
 8005b7e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005b82:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005b84:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005b88:	6860      	ldr	r0, [r4, #4]
 8005b8a:	2104      	movs	r1, #4
 8005b8c:	f7ff ffbc 	bl	8005b08 <std>
 8005b90:	2201      	movs	r2, #1
 8005b92:	2109      	movs	r1, #9
 8005b94:	68a0      	ldr	r0, [r4, #8]
 8005b96:	f7ff ffb7 	bl	8005b08 <std>
 8005b9a:	2202      	movs	r2, #2
 8005b9c:	2112      	movs	r1, #18
 8005b9e:	68e0      	ldr	r0, [r4, #12]
 8005ba0:	f7ff ffb2 	bl	8005b08 <std>
 8005ba4:	2301      	movs	r3, #1
 8005ba6:	63a3      	str	r3, [r4, #56]	; 0x38
 8005ba8:	4802      	ldr	r0, [pc, #8]	; (8005bb4 <__sinit+0x50>)
 8005baa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005bae:	f000 bb2b 	b.w	8006208 <__retarget_lock_release_recursive>
 8005bb2:	bf00      	nop
 8005bb4:	20000af4 	.word	0x20000af4
 8005bb8:	08005b59 	.word	0x08005b59

08005bbc <__sfp_lock_acquire>:
 8005bbc:	4801      	ldr	r0, [pc, #4]	; (8005bc4 <__sfp_lock_acquire+0x8>)
 8005bbe:	f000 bb21 	b.w	8006204 <__retarget_lock_acquire_recursive>
 8005bc2:	bf00      	nop
 8005bc4:	20000b08 	.word	0x20000b08

08005bc8 <__sfp_lock_release>:
 8005bc8:	4801      	ldr	r0, [pc, #4]	; (8005bd0 <__sfp_lock_release+0x8>)
 8005bca:	f000 bb1d 	b.w	8006208 <__retarget_lock_release_recursive>
 8005bce:	bf00      	nop
 8005bd0:	20000b08 	.word	0x20000b08

08005bd4 <__libc_fini_array>:
 8005bd4:	b538      	push	{r3, r4, r5, lr}
 8005bd6:	4c0a      	ldr	r4, [pc, #40]	; (8005c00 <__libc_fini_array+0x2c>)
 8005bd8:	4d0a      	ldr	r5, [pc, #40]	; (8005c04 <__libc_fini_array+0x30>)
 8005bda:	1b64      	subs	r4, r4, r5
 8005bdc:	10a4      	asrs	r4, r4, #2
 8005bde:	d00a      	beq.n	8005bf6 <__libc_fini_array+0x22>
 8005be0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005be4:	3b01      	subs	r3, #1
 8005be6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005bea:	3c01      	subs	r4, #1
 8005bec:	f855 3904 	ldr.w	r3, [r5], #-4
 8005bf0:	4798      	blx	r3
 8005bf2:	2c00      	cmp	r4, #0
 8005bf4:	d1f9      	bne.n	8005bea <__libc_fini_array+0x16>
 8005bf6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005bfa:	f001 bc3b 	b.w	8007474 <_fini>
 8005bfe:	bf00      	nop
 8005c00:	0800785c 	.word	0x0800785c
 8005c04:	08007858 	.word	0x08007858

08005c08 <_malloc_trim_r>:
 8005c08:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005c0a:	4f24      	ldr	r7, [pc, #144]	; (8005c9c <_malloc_trim_r+0x94>)
 8005c0c:	460c      	mov	r4, r1
 8005c0e:	4606      	mov	r6, r0
 8005c10:	f7fd f882 	bl	8002d18 <__malloc_lock>
 8005c14:	68bb      	ldr	r3, [r7, #8]
 8005c16:	685d      	ldr	r5, [r3, #4]
 8005c18:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005c1c:	310f      	adds	r1, #15
 8005c1e:	f025 0503 	bic.w	r5, r5, #3
 8005c22:	4429      	add	r1, r5
 8005c24:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005c28:	f021 010f 	bic.w	r1, r1, #15
 8005c2c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005c30:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005c34:	db07      	blt.n	8005c46 <_malloc_trim_r+0x3e>
 8005c36:	2100      	movs	r1, #0
 8005c38:	4630      	mov	r0, r6
 8005c3a:	f7fd f8e3 	bl	8002e04 <_sbrk_r>
 8005c3e:	68bb      	ldr	r3, [r7, #8]
 8005c40:	442b      	add	r3, r5
 8005c42:	4298      	cmp	r0, r3
 8005c44:	d004      	beq.n	8005c50 <_malloc_trim_r+0x48>
 8005c46:	4630      	mov	r0, r6
 8005c48:	f7fd f86c 	bl	8002d24 <__malloc_unlock>
 8005c4c:	2000      	movs	r0, #0
 8005c4e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005c50:	4261      	negs	r1, r4
 8005c52:	4630      	mov	r0, r6
 8005c54:	f7fd f8d6 	bl	8002e04 <_sbrk_r>
 8005c58:	3001      	adds	r0, #1
 8005c5a:	d00d      	beq.n	8005c78 <_malloc_trim_r+0x70>
 8005c5c:	4b10      	ldr	r3, [pc, #64]	; (8005ca0 <_malloc_trim_r+0x98>)
 8005c5e:	68ba      	ldr	r2, [r7, #8]
 8005c60:	6819      	ldr	r1, [r3, #0]
 8005c62:	1b2d      	subs	r5, r5, r4
 8005c64:	f045 0501 	orr.w	r5, r5, #1
 8005c68:	4630      	mov	r0, r6
 8005c6a:	1b09      	subs	r1, r1, r4
 8005c6c:	6055      	str	r5, [r2, #4]
 8005c6e:	6019      	str	r1, [r3, #0]
 8005c70:	f7fd f858 	bl	8002d24 <__malloc_unlock>
 8005c74:	2001      	movs	r0, #1
 8005c76:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005c78:	2100      	movs	r1, #0
 8005c7a:	4630      	mov	r0, r6
 8005c7c:	f7fd f8c2 	bl	8002e04 <_sbrk_r>
 8005c80:	68ba      	ldr	r2, [r7, #8]
 8005c82:	1a83      	subs	r3, r0, r2
 8005c84:	2b0f      	cmp	r3, #15
 8005c86:	ddde      	ble.n	8005c46 <_malloc_trim_r+0x3e>
 8005c88:	4c06      	ldr	r4, [pc, #24]	; (8005ca4 <_malloc_trim_r+0x9c>)
 8005c8a:	4905      	ldr	r1, [pc, #20]	; (8005ca0 <_malloc_trim_r+0x98>)
 8005c8c:	6824      	ldr	r4, [r4, #0]
 8005c8e:	f043 0301 	orr.w	r3, r3, #1
 8005c92:	1b00      	subs	r0, r0, r4
 8005c94:	6053      	str	r3, [r2, #4]
 8005c96:	6008      	str	r0, [r1, #0]
 8005c98:	e7d5      	b.n	8005c46 <_malloc_trim_r+0x3e>
 8005c9a:	bf00      	nop
 8005c9c:	20000448 	.word	0x20000448
 8005ca0:	20000a6c 	.word	0x20000a6c
 8005ca4:	20000850 	.word	0x20000850

08005ca8 <_free_r>:
 8005ca8:	2900      	cmp	r1, #0
 8005caa:	d053      	beq.n	8005d54 <_free_r+0xac>
 8005cac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005cae:	460c      	mov	r4, r1
 8005cb0:	4606      	mov	r6, r0
 8005cb2:	f7fd f831 	bl	8002d18 <__malloc_lock>
 8005cb6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005cba:	4f71      	ldr	r7, [pc, #452]	; (8005e80 <_free_r+0x1d8>)
 8005cbc:	f02c 0101 	bic.w	r1, ip, #1
 8005cc0:	f1a4 0508 	sub.w	r5, r4, #8
 8005cc4:	186b      	adds	r3, r5, r1
 8005cc6:	68b8      	ldr	r0, [r7, #8]
 8005cc8:	685a      	ldr	r2, [r3, #4]
 8005cca:	4298      	cmp	r0, r3
 8005ccc:	f022 0203 	bic.w	r2, r2, #3
 8005cd0:	d053      	beq.n	8005d7a <_free_r+0xd2>
 8005cd2:	f01c 0f01 	tst.w	ip, #1
 8005cd6:	605a      	str	r2, [r3, #4]
 8005cd8:	eb03 0002 	add.w	r0, r3, r2
 8005cdc:	d13b      	bne.n	8005d56 <_free_r+0xae>
 8005cde:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005ce2:	6840      	ldr	r0, [r0, #4]
 8005ce4:	eba5 050c 	sub.w	r5, r5, ip
 8005ce8:	f107 0e08 	add.w	lr, r7, #8
 8005cec:	68ac      	ldr	r4, [r5, #8]
 8005cee:	4574      	cmp	r4, lr
 8005cf0:	4461      	add	r1, ip
 8005cf2:	f000 0001 	and.w	r0, r0, #1
 8005cf6:	d075      	beq.n	8005de4 <_free_r+0x13c>
 8005cf8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005cfc:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005d00:	f8cc 4008 	str.w	r4, [ip, #8]
 8005d04:	b360      	cbz	r0, 8005d60 <_free_r+0xb8>
 8005d06:	f041 0301 	orr.w	r3, r1, #1
 8005d0a:	606b      	str	r3, [r5, #4]
 8005d0c:	5069      	str	r1, [r5, r1]
 8005d0e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005d12:	d350      	bcc.n	8005db6 <_free_r+0x10e>
 8005d14:	0a4b      	lsrs	r3, r1, #9
 8005d16:	2b04      	cmp	r3, #4
 8005d18:	d870      	bhi.n	8005dfc <_free_r+0x154>
 8005d1a:	098b      	lsrs	r3, r1, #6
 8005d1c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005d20:	00e4      	lsls	r4, r4, #3
 8005d22:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005d26:	1938      	adds	r0, r7, r4
 8005d28:	593b      	ldr	r3, [r7, r4]
 8005d2a:	3808      	subs	r0, #8
 8005d2c:	4298      	cmp	r0, r3
 8005d2e:	d078      	beq.n	8005e22 <_free_r+0x17a>
 8005d30:	685a      	ldr	r2, [r3, #4]
 8005d32:	f022 0203 	bic.w	r2, r2, #3
 8005d36:	428a      	cmp	r2, r1
 8005d38:	d971      	bls.n	8005e1e <_free_r+0x176>
 8005d3a:	689b      	ldr	r3, [r3, #8]
 8005d3c:	4298      	cmp	r0, r3
 8005d3e:	d1f7      	bne.n	8005d30 <_free_r+0x88>
 8005d40:	68c3      	ldr	r3, [r0, #12]
 8005d42:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005d46:	609d      	str	r5, [r3, #8]
 8005d48:	60c5      	str	r5, [r0, #12]
 8005d4a:	4630      	mov	r0, r6
 8005d4c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005d50:	f7fc bfe8 	b.w	8002d24 <__malloc_unlock>
 8005d54:	4770      	bx	lr
 8005d56:	6840      	ldr	r0, [r0, #4]
 8005d58:	f000 0001 	and.w	r0, r0, #1
 8005d5c:	2800      	cmp	r0, #0
 8005d5e:	d1d2      	bne.n	8005d06 <_free_r+0x5e>
 8005d60:	6898      	ldr	r0, [r3, #8]
 8005d62:	4c48      	ldr	r4, [pc, #288]	; (8005e84 <_free_r+0x1dc>)
 8005d64:	4411      	add	r1, r2
 8005d66:	42a0      	cmp	r0, r4
 8005d68:	f041 0201 	orr.w	r2, r1, #1
 8005d6c:	d062      	beq.n	8005e34 <_free_r+0x18c>
 8005d6e:	68db      	ldr	r3, [r3, #12]
 8005d70:	60c3      	str	r3, [r0, #12]
 8005d72:	6098      	str	r0, [r3, #8]
 8005d74:	606a      	str	r2, [r5, #4]
 8005d76:	5069      	str	r1, [r5, r1]
 8005d78:	e7c9      	b.n	8005d0e <_free_r+0x66>
 8005d7a:	f01c 0f01 	tst.w	ip, #1
 8005d7e:	440a      	add	r2, r1
 8005d80:	d107      	bne.n	8005d92 <_free_r+0xea>
 8005d82:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005d86:	1aed      	subs	r5, r5, r3
 8005d88:	441a      	add	r2, r3
 8005d8a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005d8e:	60cb      	str	r3, [r1, #12]
 8005d90:	6099      	str	r1, [r3, #8]
 8005d92:	4b3d      	ldr	r3, [pc, #244]	; (8005e88 <_free_r+0x1e0>)
 8005d94:	681b      	ldr	r3, [r3, #0]
 8005d96:	f042 0101 	orr.w	r1, r2, #1
 8005d9a:	4293      	cmp	r3, r2
 8005d9c:	6069      	str	r1, [r5, #4]
 8005d9e:	60bd      	str	r5, [r7, #8]
 8005da0:	d804      	bhi.n	8005dac <_free_r+0x104>
 8005da2:	4b3a      	ldr	r3, [pc, #232]	; (8005e8c <_free_r+0x1e4>)
 8005da4:	4630      	mov	r0, r6
 8005da6:	6819      	ldr	r1, [r3, #0]
 8005da8:	f7ff ff2e 	bl	8005c08 <_malloc_trim_r>
 8005dac:	4630      	mov	r0, r6
 8005dae:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005db2:	f7fc bfb7 	b.w	8002d24 <__malloc_unlock>
 8005db6:	08c9      	lsrs	r1, r1, #3
 8005db8:	6878      	ldr	r0, [r7, #4]
 8005dba:	1c4a      	adds	r2, r1, #1
 8005dbc:	2301      	movs	r3, #1
 8005dbe:	1089      	asrs	r1, r1, #2
 8005dc0:	408b      	lsls	r3, r1
 8005dc2:	4303      	orrs	r3, r0
 8005dc4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005dc8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005dcc:	607b      	str	r3, [r7, #4]
 8005dce:	3908      	subs	r1, #8
 8005dd0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005dd4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005dd8:	60c5      	str	r5, [r0, #12]
 8005dda:	4630      	mov	r0, r6
 8005ddc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005de0:	f7fc bfa0 	b.w	8002d24 <__malloc_unlock>
 8005de4:	2800      	cmp	r0, #0
 8005de6:	d145      	bne.n	8005e74 <_free_r+0x1cc>
 8005de8:	440a      	add	r2, r1
 8005dea:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005dee:	f042 0001 	orr.w	r0, r2, #1
 8005df2:	60cb      	str	r3, [r1, #12]
 8005df4:	6099      	str	r1, [r3, #8]
 8005df6:	6068      	str	r0, [r5, #4]
 8005df8:	50aa      	str	r2, [r5, r2]
 8005dfa:	e7d7      	b.n	8005dac <_free_r+0x104>
 8005dfc:	2b14      	cmp	r3, #20
 8005dfe:	d908      	bls.n	8005e12 <_free_r+0x16a>
 8005e00:	2b54      	cmp	r3, #84	; 0x54
 8005e02:	d81e      	bhi.n	8005e42 <_free_r+0x19a>
 8005e04:	0b0b      	lsrs	r3, r1, #12
 8005e06:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005e0a:	00e4      	lsls	r4, r4, #3
 8005e0c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005e10:	e789      	b.n	8005d26 <_free_r+0x7e>
 8005e12:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005e16:	00e4      	lsls	r4, r4, #3
 8005e18:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005e1c:	e783      	b.n	8005d26 <_free_r+0x7e>
 8005e1e:	4618      	mov	r0, r3
 8005e20:	e78e      	b.n	8005d40 <_free_r+0x98>
 8005e22:	1093      	asrs	r3, r2, #2
 8005e24:	6879      	ldr	r1, [r7, #4]
 8005e26:	2201      	movs	r2, #1
 8005e28:	fa02 f303 	lsl.w	r3, r2, r3
 8005e2c:	430b      	orrs	r3, r1
 8005e2e:	607b      	str	r3, [r7, #4]
 8005e30:	4603      	mov	r3, r0
 8005e32:	e786      	b.n	8005d42 <_free_r+0x9a>
 8005e34:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005e38:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005e3c:	606a      	str	r2, [r5, #4]
 8005e3e:	5069      	str	r1, [r5, r1]
 8005e40:	e7b4      	b.n	8005dac <_free_r+0x104>
 8005e42:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005e46:	d806      	bhi.n	8005e56 <_free_r+0x1ae>
 8005e48:	0bcb      	lsrs	r3, r1, #15
 8005e4a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005e4e:	00e4      	lsls	r4, r4, #3
 8005e50:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005e54:	e767      	b.n	8005d26 <_free_r+0x7e>
 8005e56:	f240 5254 	movw	r2, #1364	; 0x554
 8005e5a:	4293      	cmp	r3, r2
 8005e5c:	d806      	bhi.n	8005e6c <_free_r+0x1c4>
 8005e5e:	0c8b      	lsrs	r3, r1, #18
 8005e60:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005e64:	00e4      	lsls	r4, r4, #3
 8005e66:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005e6a:	e75c      	b.n	8005d26 <_free_r+0x7e>
 8005e6c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005e70:	227e      	movs	r2, #126	; 0x7e
 8005e72:	e758      	b.n	8005d26 <_free_r+0x7e>
 8005e74:	f041 0201 	orr.w	r2, r1, #1
 8005e78:	606a      	str	r2, [r5, #4]
 8005e7a:	6019      	str	r1, [r3, #0]
 8005e7c:	e796      	b.n	8005dac <_free_r+0x104>
 8005e7e:	bf00      	nop
 8005e80:	20000448 	.word	0x20000448
 8005e84:	20000450 	.word	0x20000450
 8005e88:	20000854 	.word	0x20000854
 8005e8c:	20000a9c 	.word	0x20000a9c

08005e90 <__sfvwrite_r>:
 8005e90:	6893      	ldr	r3, [r2, #8]
 8005e92:	2b00      	cmp	r3, #0
 8005e94:	f000 80e4 	beq.w	8006060 <__sfvwrite_r+0x1d0>
 8005e98:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005e9c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005ea0:	b29b      	uxth	r3, r3
 8005ea2:	460c      	mov	r4, r1
 8005ea4:	0719      	lsls	r1, r3, #28
 8005ea6:	b083      	sub	sp, #12
 8005ea8:	4682      	mov	sl, r0
 8005eaa:	4690      	mov	r8, r2
 8005eac:	d535      	bpl.n	8005f1a <__sfvwrite_r+0x8a>
 8005eae:	6922      	ldr	r2, [r4, #16]
 8005eb0:	b39a      	cbz	r2, 8005f1a <__sfvwrite_r+0x8a>
 8005eb2:	f013 0202 	ands.w	r2, r3, #2
 8005eb6:	f8d8 6000 	ldr.w	r6, [r8]
 8005eba:	d03d      	beq.n	8005f38 <__sfvwrite_r+0xa8>
 8005ebc:	2700      	movs	r7, #0
 8005ebe:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005ec2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005ec6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8006188 <__sfvwrite_r+0x2f8>
 8005eca:	463d      	mov	r5, r7
 8005ecc:	454d      	cmp	r5, r9
 8005ece:	462b      	mov	r3, r5
 8005ed0:	463a      	mov	r2, r7
 8005ed2:	bf28      	it	cs
 8005ed4:	464b      	movcs	r3, r9
 8005ed6:	4661      	mov	r1, ip
 8005ed8:	4650      	mov	r0, sl
 8005eda:	b1d5      	cbz	r5, 8005f12 <__sfvwrite_r+0x82>
 8005edc:	47d8      	blx	fp
 8005ede:	2800      	cmp	r0, #0
 8005ee0:	f340 80c6 	ble.w	8006070 <__sfvwrite_r+0x1e0>
 8005ee4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005ee8:	1a1b      	subs	r3, r3, r0
 8005eea:	4407      	add	r7, r0
 8005eec:	1a2d      	subs	r5, r5, r0
 8005eee:	f8c8 3008 	str.w	r3, [r8, #8]
 8005ef2:	2b00      	cmp	r3, #0
 8005ef4:	f000 80b0 	beq.w	8006058 <__sfvwrite_r+0x1c8>
 8005ef8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005efc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005f00:	454d      	cmp	r5, r9
 8005f02:	462b      	mov	r3, r5
 8005f04:	463a      	mov	r2, r7
 8005f06:	bf28      	it	cs
 8005f08:	464b      	movcs	r3, r9
 8005f0a:	4661      	mov	r1, ip
 8005f0c:	4650      	mov	r0, sl
 8005f0e:	2d00      	cmp	r5, #0
 8005f10:	d1e4      	bne.n	8005edc <__sfvwrite_r+0x4c>
 8005f12:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005f16:	3608      	adds	r6, #8
 8005f18:	e7d8      	b.n	8005ecc <__sfvwrite_r+0x3c>
 8005f1a:	4621      	mov	r1, r4
 8005f1c:	4650      	mov	r0, sl
 8005f1e:	f7fe fd03 	bl	8004928 <__swsetup_r>
 8005f22:	2800      	cmp	r0, #0
 8005f24:	f040 812a 	bne.w	800617c <__sfvwrite_r+0x2ec>
 8005f28:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005f2c:	f8d8 6000 	ldr.w	r6, [r8]
 8005f30:	b29b      	uxth	r3, r3
 8005f32:	f013 0202 	ands.w	r2, r3, #2
 8005f36:	d1c1      	bne.n	8005ebc <__sfvwrite_r+0x2c>
 8005f38:	f013 0901 	ands.w	r9, r3, #1
 8005f3c:	d15d      	bne.n	8005ffa <__sfvwrite_r+0x16a>
 8005f3e:	68a7      	ldr	r7, [r4, #8]
 8005f40:	6820      	ldr	r0, [r4, #0]
 8005f42:	464d      	mov	r5, r9
 8005f44:	2d00      	cmp	r5, #0
 8005f46:	d054      	beq.n	8005ff2 <__sfvwrite_r+0x162>
 8005f48:	059a      	lsls	r2, r3, #22
 8005f4a:	f140 809b 	bpl.w	8006084 <__sfvwrite_r+0x1f4>
 8005f4e:	42af      	cmp	r7, r5
 8005f50:	46bb      	mov	fp, r7
 8005f52:	f200 80d8 	bhi.w	8006106 <__sfvwrite_r+0x276>
 8005f56:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005f5a:	d02f      	beq.n	8005fbc <__sfvwrite_r+0x12c>
 8005f5c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005f60:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005f64:	eba0 0b01 	sub.w	fp, r0, r1
 8005f68:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005f6c:	1c68      	adds	r0, r5, #1
 8005f6e:	107f      	asrs	r7, r7, #1
 8005f70:	4458      	add	r0, fp
 8005f72:	42b8      	cmp	r0, r7
 8005f74:	463a      	mov	r2, r7
 8005f76:	bf84      	itt	hi
 8005f78:	4607      	movhi	r7, r0
 8005f7a:	463a      	movhi	r2, r7
 8005f7c:	055b      	lsls	r3, r3, #21
 8005f7e:	f140 80d3 	bpl.w	8006128 <__sfvwrite_r+0x298>
 8005f82:	4611      	mov	r1, r2
 8005f84:	4650      	mov	r0, sl
 8005f86:	f7fc fbd9 	bl	800273c <_malloc_r>
 8005f8a:	2800      	cmp	r0, #0
 8005f8c:	f000 80f0 	beq.w	8006170 <__sfvwrite_r+0x2e0>
 8005f90:	465a      	mov	r2, fp
 8005f92:	6921      	ldr	r1, [r4, #16]
 8005f94:	9001      	str	r0, [sp, #4]
 8005f96:	f7fa fb01 	bl	800059c <memcpy>
 8005f9a:	89a2      	ldrh	r2, [r4, #12]
 8005f9c:	9b01      	ldr	r3, [sp, #4]
 8005f9e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005fa2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005fa6:	81a2      	strh	r2, [r4, #12]
 8005fa8:	eba7 020b 	sub.w	r2, r7, fp
 8005fac:	eb03 000b 	add.w	r0, r3, fp
 8005fb0:	6167      	str	r7, [r4, #20]
 8005fb2:	6123      	str	r3, [r4, #16]
 8005fb4:	6020      	str	r0, [r4, #0]
 8005fb6:	60a2      	str	r2, [r4, #8]
 8005fb8:	462f      	mov	r7, r5
 8005fba:	46ab      	mov	fp, r5
 8005fbc:	465a      	mov	r2, fp
 8005fbe:	4649      	mov	r1, r9
 8005fc0:	f000 f99c 	bl	80062fc <memmove>
 8005fc4:	68a2      	ldr	r2, [r4, #8]
 8005fc6:	6823      	ldr	r3, [r4, #0]
 8005fc8:	1bd2      	subs	r2, r2, r7
 8005fca:	445b      	add	r3, fp
 8005fcc:	462f      	mov	r7, r5
 8005fce:	60a2      	str	r2, [r4, #8]
 8005fd0:	6023      	str	r3, [r4, #0]
 8005fd2:	2500      	movs	r5, #0
 8005fd4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005fd8:	1bdb      	subs	r3, r3, r7
 8005fda:	44b9      	add	r9, r7
 8005fdc:	f8c8 3008 	str.w	r3, [r8, #8]
 8005fe0:	2b00      	cmp	r3, #0
 8005fe2:	d039      	beq.n	8006058 <__sfvwrite_r+0x1c8>
 8005fe4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005fe8:	68a7      	ldr	r7, [r4, #8]
 8005fea:	6820      	ldr	r0, [r4, #0]
 8005fec:	b29b      	uxth	r3, r3
 8005fee:	2d00      	cmp	r5, #0
 8005ff0:	d1aa      	bne.n	8005f48 <__sfvwrite_r+0xb8>
 8005ff2:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005ff6:	3608      	adds	r6, #8
 8005ff8:	e7a4      	b.n	8005f44 <__sfvwrite_r+0xb4>
 8005ffa:	4633      	mov	r3, r6
 8005ffc:	4691      	mov	r9, r2
 8005ffe:	4610      	mov	r0, r2
 8006000:	4617      	mov	r7, r2
 8006002:	464e      	mov	r6, r9
 8006004:	469b      	mov	fp, r3
 8006006:	2f00      	cmp	r7, #0
 8006008:	d06b      	beq.n	80060e2 <__sfvwrite_r+0x252>
 800600a:	2800      	cmp	r0, #0
 800600c:	d071      	beq.n	80060f2 <__sfvwrite_r+0x262>
 800600e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8006012:	6820      	ldr	r0, [r4, #0]
 8006014:	45b9      	cmp	r9, r7
 8006016:	464b      	mov	r3, r9
 8006018:	bf28      	it	cs
 800601a:	463b      	movcs	r3, r7
 800601c:	4288      	cmp	r0, r1
 800601e:	d903      	bls.n	8006028 <__sfvwrite_r+0x198>
 8006020:	68a5      	ldr	r5, [r4, #8]
 8006022:	4415      	add	r5, r2
 8006024:	42ab      	cmp	r3, r5
 8006026:	dc71      	bgt.n	800610c <__sfvwrite_r+0x27c>
 8006028:	429a      	cmp	r2, r3
 800602a:	f300 8093 	bgt.w	8006154 <__sfvwrite_r+0x2c4>
 800602e:	4613      	mov	r3, r2
 8006030:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8006032:	69e1      	ldr	r1, [r4, #28]
 8006034:	4632      	mov	r2, r6
 8006036:	4650      	mov	r0, sl
 8006038:	47a8      	blx	r5
 800603a:	1e05      	subs	r5, r0, #0
 800603c:	dd18      	ble.n	8006070 <__sfvwrite_r+0x1e0>
 800603e:	ebb9 0905 	subs.w	r9, r9, r5
 8006042:	d00f      	beq.n	8006064 <__sfvwrite_r+0x1d4>
 8006044:	2001      	movs	r0, #1
 8006046:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800604a:	1b5b      	subs	r3, r3, r5
 800604c:	442e      	add	r6, r5
 800604e:	1b7f      	subs	r7, r7, r5
 8006050:	f8c8 3008 	str.w	r3, [r8, #8]
 8006054:	2b00      	cmp	r3, #0
 8006056:	d1d6      	bne.n	8006006 <__sfvwrite_r+0x176>
 8006058:	2000      	movs	r0, #0
 800605a:	b003      	add	sp, #12
 800605c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006060:	2000      	movs	r0, #0
 8006062:	4770      	bx	lr
 8006064:	4621      	mov	r1, r4
 8006066:	4650      	mov	r0, sl
 8006068:	f7ff fd20 	bl	8005aac <_fflush_r>
 800606c:	2800      	cmp	r0, #0
 800606e:	d0ea      	beq.n	8006046 <__sfvwrite_r+0x1b6>
 8006070:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006074:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006078:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800607c:	81a3      	strh	r3, [r4, #12]
 800607e:	b003      	add	sp, #12
 8006080:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006084:	6923      	ldr	r3, [r4, #16]
 8006086:	4283      	cmp	r3, r0
 8006088:	d315      	bcc.n	80060b6 <__sfvwrite_r+0x226>
 800608a:	6961      	ldr	r1, [r4, #20]
 800608c:	42a9      	cmp	r1, r5
 800608e:	d812      	bhi.n	80060b6 <__sfvwrite_r+0x226>
 8006090:	4b3c      	ldr	r3, [pc, #240]	; (8006184 <__sfvwrite_r+0x2f4>)
 8006092:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8006094:	429d      	cmp	r5, r3
 8006096:	bf94      	ite	ls
 8006098:	462b      	movls	r3, r5
 800609a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800609e:	464a      	mov	r2, r9
 80060a0:	fb93 f3f1 	sdiv	r3, r3, r1
 80060a4:	4650      	mov	r0, sl
 80060a6:	fb01 f303 	mul.w	r3, r1, r3
 80060aa:	69e1      	ldr	r1, [r4, #28]
 80060ac:	47b8      	blx	r7
 80060ae:	1e07      	subs	r7, r0, #0
 80060b0:	ddde      	ble.n	8006070 <__sfvwrite_r+0x1e0>
 80060b2:	1bed      	subs	r5, r5, r7
 80060b4:	e78e      	b.n	8005fd4 <__sfvwrite_r+0x144>
 80060b6:	42af      	cmp	r7, r5
 80060b8:	bf28      	it	cs
 80060ba:	462f      	movcs	r7, r5
 80060bc:	463a      	mov	r2, r7
 80060be:	4649      	mov	r1, r9
 80060c0:	f000 f91c 	bl	80062fc <memmove>
 80060c4:	68a3      	ldr	r3, [r4, #8]
 80060c6:	6822      	ldr	r2, [r4, #0]
 80060c8:	1bdb      	subs	r3, r3, r7
 80060ca:	443a      	add	r2, r7
 80060cc:	60a3      	str	r3, [r4, #8]
 80060ce:	6022      	str	r2, [r4, #0]
 80060d0:	2b00      	cmp	r3, #0
 80060d2:	d1ee      	bne.n	80060b2 <__sfvwrite_r+0x222>
 80060d4:	4621      	mov	r1, r4
 80060d6:	4650      	mov	r0, sl
 80060d8:	f7ff fce8 	bl	8005aac <_fflush_r>
 80060dc:	2800      	cmp	r0, #0
 80060de:	d0e8      	beq.n	80060b2 <__sfvwrite_r+0x222>
 80060e0:	e7c6      	b.n	8006070 <__sfvwrite_r+0x1e0>
 80060e2:	f10b 0308 	add.w	r3, fp, #8
 80060e6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80060ea:	469b      	mov	fp, r3
 80060ec:	3308      	adds	r3, #8
 80060ee:	2f00      	cmp	r7, #0
 80060f0:	d0f9      	beq.n	80060e6 <__sfvwrite_r+0x256>
 80060f2:	463a      	mov	r2, r7
 80060f4:	210a      	movs	r1, #10
 80060f6:	4630      	mov	r0, r6
 80060f8:	f7fa fb72 	bl	80007e0 <memchr>
 80060fc:	b338      	cbz	r0, 800614e <__sfvwrite_r+0x2be>
 80060fe:	3001      	adds	r0, #1
 8006100:	eba0 0906 	sub.w	r9, r0, r6
 8006104:	e783      	b.n	800600e <__sfvwrite_r+0x17e>
 8006106:	462f      	mov	r7, r5
 8006108:	46ab      	mov	fp, r5
 800610a:	e757      	b.n	8005fbc <__sfvwrite_r+0x12c>
 800610c:	4631      	mov	r1, r6
 800610e:	462a      	mov	r2, r5
 8006110:	f000 f8f4 	bl	80062fc <memmove>
 8006114:	6823      	ldr	r3, [r4, #0]
 8006116:	442b      	add	r3, r5
 8006118:	6023      	str	r3, [r4, #0]
 800611a:	4621      	mov	r1, r4
 800611c:	4650      	mov	r0, sl
 800611e:	f7ff fcc5 	bl	8005aac <_fflush_r>
 8006122:	2800      	cmp	r0, #0
 8006124:	d08b      	beq.n	800603e <__sfvwrite_r+0x1ae>
 8006126:	e7a3      	b.n	8006070 <__sfvwrite_r+0x1e0>
 8006128:	4650      	mov	r0, sl
 800612a:	f000 fc55 	bl	80069d8 <_realloc_r>
 800612e:	4603      	mov	r3, r0
 8006130:	2800      	cmp	r0, #0
 8006132:	f47f af39 	bne.w	8005fa8 <__sfvwrite_r+0x118>
 8006136:	6921      	ldr	r1, [r4, #16]
 8006138:	4650      	mov	r0, sl
 800613a:	f7ff fdb5 	bl	8005ca8 <_free_r>
 800613e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006142:	220c      	movs	r2, #12
 8006144:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8006148:	f8ca 2000 	str.w	r2, [sl]
 800614c:	e792      	b.n	8006074 <__sfvwrite_r+0x1e4>
 800614e:	f107 0901 	add.w	r9, r7, #1
 8006152:	e75c      	b.n	800600e <__sfvwrite_r+0x17e>
 8006154:	461a      	mov	r2, r3
 8006156:	4631      	mov	r1, r6
 8006158:	9301      	str	r3, [sp, #4]
 800615a:	f000 f8cf 	bl	80062fc <memmove>
 800615e:	9b01      	ldr	r3, [sp, #4]
 8006160:	68a1      	ldr	r1, [r4, #8]
 8006162:	6822      	ldr	r2, [r4, #0]
 8006164:	1ac9      	subs	r1, r1, r3
 8006166:	441a      	add	r2, r3
 8006168:	60a1      	str	r1, [r4, #8]
 800616a:	6022      	str	r2, [r4, #0]
 800616c:	461d      	mov	r5, r3
 800616e:	e766      	b.n	800603e <__sfvwrite_r+0x1ae>
 8006170:	230c      	movs	r3, #12
 8006172:	f8ca 3000 	str.w	r3, [sl]
 8006176:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800617a:	e77b      	b.n	8006074 <__sfvwrite_r+0x1e4>
 800617c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006180:	e76b      	b.n	800605a <__sfvwrite_r+0x1ca>
 8006182:	bf00      	nop
 8006184:	7ffffffe 	.word	0x7ffffffe
 8006188:	7ffffc00 	.word	0x7ffffc00

0800618c <_fwalk_reent>:
 800618c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006190:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8006194:	d01f      	beq.n	80061d6 <_fwalk_reent+0x4a>
 8006196:	4688      	mov	r8, r1
 8006198:	4606      	mov	r6, r0
 800619a:	f04f 0900 	mov.w	r9, #0
 800619e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80061a2:	3d01      	subs	r5, #1
 80061a4:	d411      	bmi.n	80061ca <_fwalk_reent+0x3e>
 80061a6:	89a3      	ldrh	r3, [r4, #12]
 80061a8:	2b01      	cmp	r3, #1
 80061aa:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80061ae:	4621      	mov	r1, r4
 80061b0:	4630      	mov	r0, r6
 80061b2:	d906      	bls.n	80061c2 <_fwalk_reent+0x36>
 80061b4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80061b8:	3301      	adds	r3, #1
 80061ba:	d002      	beq.n	80061c2 <_fwalk_reent+0x36>
 80061bc:	47c0      	blx	r8
 80061be:	ea49 0900 	orr.w	r9, r9, r0
 80061c2:	1c6b      	adds	r3, r5, #1
 80061c4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80061c8:	d1ed      	bne.n	80061a6 <_fwalk_reent+0x1a>
 80061ca:	683f      	ldr	r7, [r7, #0]
 80061cc:	2f00      	cmp	r7, #0
 80061ce:	d1e6      	bne.n	800619e <_fwalk_reent+0x12>
 80061d0:	4648      	mov	r0, r9
 80061d2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80061d6:	46b9      	mov	r9, r7
 80061d8:	4648      	mov	r0, r9
 80061da:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80061de:	bf00      	nop

080061e0 <_localeconv_r>:
 80061e0:	4a04      	ldr	r2, [pc, #16]	; (80061f4 <_localeconv_r+0x14>)
 80061e2:	4b05      	ldr	r3, [pc, #20]	; (80061f8 <_localeconv_r+0x18>)
 80061e4:	6812      	ldr	r2, [r2, #0]
 80061e6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80061e8:	2800      	cmp	r0, #0
 80061ea:	bf08      	it	eq
 80061ec:	4618      	moveq	r0, r3
 80061ee:	30f0      	adds	r0, #240	; 0xf0
 80061f0:	4770      	bx	lr
 80061f2:	bf00      	nop
 80061f4:	2000001c 	.word	0x2000001c
 80061f8:	2000085c 	.word	0x2000085c

080061fc <__retarget_lock_init_recursive>:
 80061fc:	4770      	bx	lr
 80061fe:	bf00      	nop

08006200 <__retarget_lock_close_recursive>:
 8006200:	4770      	bx	lr
 8006202:	bf00      	nop

08006204 <__retarget_lock_acquire_recursive>:
 8006204:	4770      	bx	lr
 8006206:	bf00      	nop

08006208 <__retarget_lock_release_recursive>:
 8006208:	4770      	bx	lr
 800620a:	bf00      	nop

0800620c <__swhatbuf_r>:
 800620c:	b570      	push	{r4, r5, r6, lr}
 800620e:	460c      	mov	r4, r1
 8006210:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006214:	2900      	cmp	r1, #0
 8006216:	b096      	sub	sp, #88	; 0x58
 8006218:	4615      	mov	r5, r2
 800621a:	461e      	mov	r6, r3
 800621c:	da0f      	bge.n	800623e <__swhatbuf_r+0x32>
 800621e:	89a2      	ldrh	r2, [r4, #12]
 8006220:	2300      	movs	r3, #0
 8006222:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8006226:	6033      	str	r3, [r6, #0]
 8006228:	d104      	bne.n	8006234 <__swhatbuf_r+0x28>
 800622a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800622e:	602b      	str	r3, [r5, #0]
 8006230:	b016      	add	sp, #88	; 0x58
 8006232:	bd70      	pop	{r4, r5, r6, pc}
 8006234:	2240      	movs	r2, #64	; 0x40
 8006236:	4618      	mov	r0, r3
 8006238:	602a      	str	r2, [r5, #0]
 800623a:	b016      	add	sp, #88	; 0x58
 800623c:	bd70      	pop	{r4, r5, r6, pc}
 800623e:	466a      	mov	r2, sp
 8006240:	f001 f80e 	bl	8007260 <_fstat_r>
 8006244:	2800      	cmp	r0, #0
 8006246:	dbea      	blt.n	800621e <__swhatbuf_r+0x12>
 8006248:	9b01      	ldr	r3, [sp, #4]
 800624a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800624e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8006252:	fab3 f383 	clz	r3, r3
 8006256:	095b      	lsrs	r3, r3, #5
 8006258:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800625c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8006260:	6033      	str	r3, [r6, #0]
 8006262:	602a      	str	r2, [r5, #0]
 8006264:	b016      	add	sp, #88	; 0x58
 8006266:	bd70      	pop	{r4, r5, r6, pc}

08006268 <__smakebuf_r>:
 8006268:	898a      	ldrh	r2, [r1, #12]
 800626a:	0792      	lsls	r2, r2, #30
 800626c:	460b      	mov	r3, r1
 800626e:	d506      	bpl.n	800627e <__smakebuf_r+0x16>
 8006270:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8006274:	2101      	movs	r1, #1
 8006276:	601a      	str	r2, [r3, #0]
 8006278:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800627c:	4770      	bx	lr
 800627e:	b570      	push	{r4, r5, r6, lr}
 8006280:	b082      	sub	sp, #8
 8006282:	ab01      	add	r3, sp, #4
 8006284:	466a      	mov	r2, sp
 8006286:	460c      	mov	r4, r1
 8006288:	4605      	mov	r5, r0
 800628a:	f7ff ffbf 	bl	800620c <__swhatbuf_r>
 800628e:	9900      	ldr	r1, [sp, #0]
 8006290:	4606      	mov	r6, r0
 8006292:	4628      	mov	r0, r5
 8006294:	f7fc fa52 	bl	800273c <_malloc_r>
 8006298:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800629c:	b1d8      	cbz	r0, 80062d6 <__smakebuf_r+0x6e>
 800629e:	4916      	ldr	r1, [pc, #88]	; (80062f8 <__smakebuf_r+0x90>)
 80062a0:	63e9      	str	r1, [r5, #60]	; 0x3c
 80062a2:	9a01      	ldr	r2, [sp, #4]
 80062a4:	9900      	ldr	r1, [sp, #0]
 80062a6:	6020      	str	r0, [r4, #0]
 80062a8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80062ac:	81a3      	strh	r3, [r4, #12]
 80062ae:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80062b2:	b91a      	cbnz	r2, 80062bc <__smakebuf_r+0x54>
 80062b4:	4333      	orrs	r3, r6
 80062b6:	81a3      	strh	r3, [r4, #12]
 80062b8:	b002      	add	sp, #8
 80062ba:	bd70      	pop	{r4, r5, r6, pc}
 80062bc:	4628      	mov	r0, r5
 80062be:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80062c2:	f000 ffe1 	bl	8007288 <_isatty_r>
 80062c6:	b1a0      	cbz	r0, 80062f2 <__smakebuf_r+0x8a>
 80062c8:	89a3      	ldrh	r3, [r4, #12]
 80062ca:	f023 0303 	bic.w	r3, r3, #3
 80062ce:	f043 0301 	orr.w	r3, r3, #1
 80062d2:	b21b      	sxth	r3, r3
 80062d4:	e7ee      	b.n	80062b4 <__smakebuf_r+0x4c>
 80062d6:	059a      	lsls	r2, r3, #22
 80062d8:	d4ee      	bmi.n	80062b8 <__smakebuf_r+0x50>
 80062da:	f023 0303 	bic.w	r3, r3, #3
 80062de:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80062e2:	f043 0302 	orr.w	r3, r3, #2
 80062e6:	2101      	movs	r1, #1
 80062e8:	81a3      	strh	r3, [r4, #12]
 80062ea:	6022      	str	r2, [r4, #0]
 80062ec:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80062f0:	e7e2      	b.n	80062b8 <__smakebuf_r+0x50>
 80062f2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80062f6:	e7dd      	b.n	80062b4 <__smakebuf_r+0x4c>
 80062f8:	08005b59 	.word	0x08005b59

080062fc <memmove>:
 80062fc:	4288      	cmp	r0, r1
 80062fe:	b4f0      	push	{r4, r5, r6, r7}
 8006300:	d90d      	bls.n	800631e <memmove+0x22>
 8006302:	188b      	adds	r3, r1, r2
 8006304:	4283      	cmp	r3, r0
 8006306:	d90a      	bls.n	800631e <memmove+0x22>
 8006308:	1884      	adds	r4, r0, r2
 800630a:	b132      	cbz	r2, 800631a <memmove+0x1e>
 800630c:	4622      	mov	r2, r4
 800630e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8006312:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8006316:	4299      	cmp	r1, r3
 8006318:	d1f9      	bne.n	800630e <memmove+0x12>
 800631a:	bcf0      	pop	{r4, r5, r6, r7}
 800631c:	4770      	bx	lr
 800631e:	2a0f      	cmp	r2, #15
 8006320:	d949      	bls.n	80063b6 <memmove+0xba>
 8006322:	ea40 0301 	orr.w	r3, r0, r1
 8006326:	079b      	lsls	r3, r3, #30
 8006328:	d147      	bne.n	80063ba <memmove+0xbe>
 800632a:	f1a2 0310 	sub.w	r3, r2, #16
 800632e:	091b      	lsrs	r3, r3, #4
 8006330:	f101 0720 	add.w	r7, r1, #32
 8006334:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006338:	f101 0410 	add.w	r4, r1, #16
 800633c:	f100 0510 	add.w	r5, r0, #16
 8006340:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8006344:	f845 6c10 	str.w	r6, [r5, #-16]
 8006348:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 800634c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006350:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8006354:	f845 6c08 	str.w	r6, [r5, #-8]
 8006358:	f854 6c04 	ldr.w	r6, [r4, #-4]
 800635c:	f845 6c04 	str.w	r6, [r5, #-4]
 8006360:	3410      	adds	r4, #16
 8006362:	42bc      	cmp	r4, r7
 8006364:	f105 0510 	add.w	r5, r5, #16
 8006368:	d1ea      	bne.n	8006340 <memmove+0x44>
 800636a:	3301      	adds	r3, #1
 800636c:	f002 050f 	and.w	r5, r2, #15
 8006370:	011b      	lsls	r3, r3, #4
 8006372:	2d03      	cmp	r5, #3
 8006374:	4419      	add	r1, r3
 8006376:	4403      	add	r3, r0
 8006378:	d921      	bls.n	80063be <memmove+0xc2>
 800637a:	1f1f      	subs	r7, r3, #4
 800637c:	460e      	mov	r6, r1
 800637e:	462c      	mov	r4, r5
 8006380:	3c04      	subs	r4, #4
 8006382:	f856 cb04 	ldr.w	ip, [r6], #4
 8006386:	f847 cf04 	str.w	ip, [r7, #4]!
 800638a:	2c03      	cmp	r4, #3
 800638c:	d8f8      	bhi.n	8006380 <memmove+0x84>
 800638e:	1f2c      	subs	r4, r5, #4
 8006390:	f024 0403 	bic.w	r4, r4, #3
 8006394:	3404      	adds	r4, #4
 8006396:	4423      	add	r3, r4
 8006398:	4421      	add	r1, r4
 800639a:	f002 0203 	and.w	r2, r2, #3
 800639e:	2a00      	cmp	r2, #0
 80063a0:	d0bb      	beq.n	800631a <memmove+0x1e>
 80063a2:	3b01      	subs	r3, #1
 80063a4:	440a      	add	r2, r1
 80063a6:	f811 4b01 	ldrb.w	r4, [r1], #1
 80063aa:	f803 4f01 	strb.w	r4, [r3, #1]!
 80063ae:	4291      	cmp	r1, r2
 80063b0:	d1f9      	bne.n	80063a6 <memmove+0xaa>
 80063b2:	bcf0      	pop	{r4, r5, r6, r7}
 80063b4:	4770      	bx	lr
 80063b6:	4603      	mov	r3, r0
 80063b8:	e7f1      	b.n	800639e <memmove+0xa2>
 80063ba:	4603      	mov	r3, r0
 80063bc:	e7f1      	b.n	80063a2 <memmove+0xa6>
 80063be:	462a      	mov	r2, r5
 80063c0:	e7ed      	b.n	800639e <memmove+0xa2>
 80063c2:	bf00      	nop

080063c4 <_Balloc>:
 80063c4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80063c6:	b570      	push	{r4, r5, r6, lr}
 80063c8:	4605      	mov	r5, r0
 80063ca:	460c      	mov	r4, r1
 80063cc:	b14b      	cbz	r3, 80063e2 <_Balloc+0x1e>
 80063ce:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80063d2:	b180      	cbz	r0, 80063f6 <_Balloc+0x32>
 80063d4:	6802      	ldr	r2, [r0, #0]
 80063d6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80063da:	2300      	movs	r3, #0
 80063dc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80063e0:	bd70      	pop	{r4, r5, r6, pc}
 80063e2:	2221      	movs	r2, #33	; 0x21
 80063e4:	2104      	movs	r1, #4
 80063e6:	f000 fe0b 	bl	8007000 <_calloc_r>
 80063ea:	4603      	mov	r3, r0
 80063ec:	64e8      	str	r0, [r5, #76]	; 0x4c
 80063ee:	2800      	cmp	r0, #0
 80063f0:	d1ed      	bne.n	80063ce <_Balloc+0xa>
 80063f2:	2000      	movs	r0, #0
 80063f4:	bd70      	pop	{r4, r5, r6, pc}
 80063f6:	2101      	movs	r1, #1
 80063f8:	fa01 f604 	lsl.w	r6, r1, r4
 80063fc:	1d72      	adds	r2, r6, #5
 80063fe:	4628      	mov	r0, r5
 8006400:	0092      	lsls	r2, r2, #2
 8006402:	f000 fdfd 	bl	8007000 <_calloc_r>
 8006406:	2800      	cmp	r0, #0
 8006408:	d0f3      	beq.n	80063f2 <_Balloc+0x2e>
 800640a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800640e:	e7e4      	b.n	80063da <_Balloc+0x16>

08006410 <_Bfree>:
 8006410:	b131      	cbz	r1, 8006420 <_Bfree+0x10>
 8006412:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006414:	684a      	ldr	r2, [r1, #4]
 8006416:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800641a:	6008      	str	r0, [r1, #0]
 800641c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006420:	4770      	bx	lr
 8006422:	bf00      	nop

08006424 <__multadd>:
 8006424:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006426:	690c      	ldr	r4, [r1, #16]
 8006428:	b083      	sub	sp, #12
 800642a:	460d      	mov	r5, r1
 800642c:	4606      	mov	r6, r0
 800642e:	f101 0c14 	add.w	ip, r1, #20
 8006432:	2700      	movs	r7, #0
 8006434:	f8dc 0000 	ldr.w	r0, [ip]
 8006438:	b281      	uxth	r1, r0
 800643a:	fb02 3301 	mla	r3, r2, r1, r3
 800643e:	0c01      	lsrs	r1, r0, #16
 8006440:	0c18      	lsrs	r0, r3, #16
 8006442:	fb02 0101 	mla	r1, r2, r1, r0
 8006446:	b29b      	uxth	r3, r3
 8006448:	3701      	adds	r7, #1
 800644a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800644e:	42bc      	cmp	r4, r7
 8006450:	f84c 3b04 	str.w	r3, [ip], #4
 8006454:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006458:	dcec      	bgt.n	8006434 <__multadd+0x10>
 800645a:	b13b      	cbz	r3, 800646c <__multadd+0x48>
 800645c:	68aa      	ldr	r2, [r5, #8]
 800645e:	42a2      	cmp	r2, r4
 8006460:	dd07      	ble.n	8006472 <__multadd+0x4e>
 8006462:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006466:	3401      	adds	r4, #1
 8006468:	6153      	str	r3, [r2, #20]
 800646a:	612c      	str	r4, [r5, #16]
 800646c:	4628      	mov	r0, r5
 800646e:	b003      	add	sp, #12
 8006470:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006472:	6869      	ldr	r1, [r5, #4]
 8006474:	9301      	str	r3, [sp, #4]
 8006476:	3101      	adds	r1, #1
 8006478:	4630      	mov	r0, r6
 800647a:	f7ff ffa3 	bl	80063c4 <_Balloc>
 800647e:	692a      	ldr	r2, [r5, #16]
 8006480:	3202      	adds	r2, #2
 8006482:	f105 010c 	add.w	r1, r5, #12
 8006486:	4607      	mov	r7, r0
 8006488:	0092      	lsls	r2, r2, #2
 800648a:	300c      	adds	r0, #12
 800648c:	f7fa f886 	bl	800059c <memcpy>
 8006490:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006492:	6869      	ldr	r1, [r5, #4]
 8006494:	9b01      	ldr	r3, [sp, #4]
 8006496:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800649a:	6028      	str	r0, [r5, #0]
 800649c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80064a0:	463d      	mov	r5, r7
 80064a2:	e7de      	b.n	8006462 <__multadd+0x3e>

080064a4 <__hi0bits>:
 80064a4:	0c02      	lsrs	r2, r0, #16
 80064a6:	0412      	lsls	r2, r2, #16
 80064a8:	4603      	mov	r3, r0
 80064aa:	b9c2      	cbnz	r2, 80064de <__hi0bits+0x3a>
 80064ac:	0403      	lsls	r3, r0, #16
 80064ae:	2010      	movs	r0, #16
 80064b0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80064b4:	bf04      	itt	eq
 80064b6:	021b      	lsleq	r3, r3, #8
 80064b8:	3008      	addeq	r0, #8
 80064ba:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80064be:	bf04      	itt	eq
 80064c0:	011b      	lsleq	r3, r3, #4
 80064c2:	3004      	addeq	r0, #4
 80064c4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80064c8:	bf04      	itt	eq
 80064ca:	009b      	lsleq	r3, r3, #2
 80064cc:	3002      	addeq	r0, #2
 80064ce:	2b00      	cmp	r3, #0
 80064d0:	db04      	blt.n	80064dc <__hi0bits+0x38>
 80064d2:	005b      	lsls	r3, r3, #1
 80064d4:	d501      	bpl.n	80064da <__hi0bits+0x36>
 80064d6:	3001      	adds	r0, #1
 80064d8:	4770      	bx	lr
 80064da:	2020      	movs	r0, #32
 80064dc:	4770      	bx	lr
 80064de:	2000      	movs	r0, #0
 80064e0:	e7e6      	b.n	80064b0 <__hi0bits+0xc>
 80064e2:	bf00      	nop

080064e4 <__lo0bits>:
 80064e4:	6803      	ldr	r3, [r0, #0]
 80064e6:	f013 0207 	ands.w	r2, r3, #7
 80064ea:	4601      	mov	r1, r0
 80064ec:	d007      	beq.n	80064fe <__lo0bits+0x1a>
 80064ee:	07da      	lsls	r2, r3, #31
 80064f0:	d41f      	bmi.n	8006532 <__lo0bits+0x4e>
 80064f2:	0798      	lsls	r0, r3, #30
 80064f4:	d51f      	bpl.n	8006536 <__lo0bits+0x52>
 80064f6:	085b      	lsrs	r3, r3, #1
 80064f8:	600b      	str	r3, [r1, #0]
 80064fa:	2001      	movs	r0, #1
 80064fc:	4770      	bx	lr
 80064fe:	b298      	uxth	r0, r3
 8006500:	b1a0      	cbz	r0, 800652c <__lo0bits+0x48>
 8006502:	4610      	mov	r0, r2
 8006504:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006508:	bf04      	itt	eq
 800650a:	0a1b      	lsreq	r3, r3, #8
 800650c:	3008      	addeq	r0, #8
 800650e:	071a      	lsls	r2, r3, #28
 8006510:	bf04      	itt	eq
 8006512:	091b      	lsreq	r3, r3, #4
 8006514:	3004      	addeq	r0, #4
 8006516:	079a      	lsls	r2, r3, #30
 8006518:	bf04      	itt	eq
 800651a:	089b      	lsreq	r3, r3, #2
 800651c:	3002      	addeq	r0, #2
 800651e:	07da      	lsls	r2, r3, #31
 8006520:	d402      	bmi.n	8006528 <__lo0bits+0x44>
 8006522:	085b      	lsrs	r3, r3, #1
 8006524:	d00b      	beq.n	800653e <__lo0bits+0x5a>
 8006526:	3001      	adds	r0, #1
 8006528:	600b      	str	r3, [r1, #0]
 800652a:	4770      	bx	lr
 800652c:	0c1b      	lsrs	r3, r3, #16
 800652e:	2010      	movs	r0, #16
 8006530:	e7e8      	b.n	8006504 <__lo0bits+0x20>
 8006532:	2000      	movs	r0, #0
 8006534:	4770      	bx	lr
 8006536:	089b      	lsrs	r3, r3, #2
 8006538:	600b      	str	r3, [r1, #0]
 800653a:	2002      	movs	r0, #2
 800653c:	4770      	bx	lr
 800653e:	2020      	movs	r0, #32
 8006540:	4770      	bx	lr
 8006542:	bf00      	nop

08006544 <__i2b>:
 8006544:	b510      	push	{r4, lr}
 8006546:	460c      	mov	r4, r1
 8006548:	2101      	movs	r1, #1
 800654a:	f7ff ff3b 	bl	80063c4 <_Balloc>
 800654e:	2201      	movs	r2, #1
 8006550:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006554:	bd10      	pop	{r4, pc}
 8006556:	bf00      	nop

08006558 <__multiply>:
 8006558:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800655c:	690e      	ldr	r6, [r1, #16]
 800655e:	6914      	ldr	r4, [r2, #16]
 8006560:	42a6      	cmp	r6, r4
 8006562:	b083      	sub	sp, #12
 8006564:	460f      	mov	r7, r1
 8006566:	4615      	mov	r5, r2
 8006568:	da04      	bge.n	8006574 <__multiply+0x1c>
 800656a:	4632      	mov	r2, r6
 800656c:	462f      	mov	r7, r5
 800656e:	4626      	mov	r6, r4
 8006570:	460d      	mov	r5, r1
 8006572:	4614      	mov	r4, r2
 8006574:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006578:	eb06 0804 	add.w	r8, r6, r4
 800657c:	4543      	cmp	r3, r8
 800657e:	bfb8      	it	lt
 8006580:	3101      	addlt	r1, #1
 8006582:	f7ff ff1f 	bl	80063c4 <_Balloc>
 8006586:	f100 0914 	add.w	r9, r0, #20
 800658a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800658e:	45f1      	cmp	r9, lr
 8006590:	9000      	str	r0, [sp, #0]
 8006592:	d205      	bcs.n	80065a0 <__multiply+0x48>
 8006594:	464b      	mov	r3, r9
 8006596:	2200      	movs	r2, #0
 8006598:	f843 2b04 	str.w	r2, [r3], #4
 800659c:	459e      	cmp	lr, r3
 800659e:	d8fb      	bhi.n	8006598 <__multiply+0x40>
 80065a0:	f105 0a14 	add.w	sl, r5, #20
 80065a4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80065a8:	f107 0314 	add.w	r3, r7, #20
 80065ac:	45a2      	cmp	sl, r4
 80065ae:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80065b2:	d261      	bcs.n	8006678 <__multiply+0x120>
 80065b4:	1b64      	subs	r4, r4, r5
 80065b6:	3c15      	subs	r4, #21
 80065b8:	f024 0403 	bic.w	r4, r4, #3
 80065bc:	f8cd e004 	str.w	lr, [sp, #4]
 80065c0:	44a2      	add	sl, r4
 80065c2:	f105 0210 	add.w	r2, r5, #16
 80065c6:	469e      	mov	lr, r3
 80065c8:	e005      	b.n	80065d6 <__multiply+0x7e>
 80065ca:	0c2d      	lsrs	r5, r5, #16
 80065cc:	d12b      	bne.n	8006626 <__multiply+0xce>
 80065ce:	4592      	cmp	sl, r2
 80065d0:	f109 0904 	add.w	r9, r9, #4
 80065d4:	d04e      	beq.n	8006674 <__multiply+0x11c>
 80065d6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80065da:	fa1f fb85 	uxth.w	fp, r5
 80065de:	f1bb 0f00 	cmp.w	fp, #0
 80065e2:	d0f2      	beq.n	80065ca <__multiply+0x72>
 80065e4:	4677      	mov	r7, lr
 80065e6:	464e      	mov	r6, r9
 80065e8:	2000      	movs	r0, #0
 80065ea:	e000      	b.n	80065ee <__multiply+0x96>
 80065ec:	4626      	mov	r6, r4
 80065ee:	f857 1b04 	ldr.w	r1, [r7], #4
 80065f2:	6834      	ldr	r4, [r6, #0]
 80065f4:	b28b      	uxth	r3, r1
 80065f6:	b2a5      	uxth	r5, r4
 80065f8:	0c09      	lsrs	r1, r1, #16
 80065fa:	0c24      	lsrs	r4, r4, #16
 80065fc:	fb0b 5303 	mla	r3, fp, r3, r5
 8006600:	4403      	add	r3, r0
 8006602:	fb0b 4001 	mla	r0, fp, r1, r4
 8006606:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800660a:	4634      	mov	r4, r6
 800660c:	b29b      	uxth	r3, r3
 800660e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006612:	45bc      	cmp	ip, r7
 8006614:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006618:	f844 3b04 	str.w	r3, [r4], #4
 800661c:	d8e6      	bhi.n	80065ec <__multiply+0x94>
 800661e:	6070      	str	r0, [r6, #4]
 8006620:	6815      	ldr	r5, [r2, #0]
 8006622:	0c2d      	lsrs	r5, r5, #16
 8006624:	d0d3      	beq.n	80065ce <__multiply+0x76>
 8006626:	f8d9 3000 	ldr.w	r3, [r9]
 800662a:	4676      	mov	r6, lr
 800662c:	4618      	mov	r0, r3
 800662e:	46cb      	mov	fp, r9
 8006630:	2100      	movs	r1, #0
 8006632:	e000      	b.n	8006636 <__multiply+0xde>
 8006634:	46a3      	mov	fp, r4
 8006636:	8834      	ldrh	r4, [r6, #0]
 8006638:	0c00      	lsrs	r0, r0, #16
 800663a:	fb05 0004 	mla	r0, r5, r4, r0
 800663e:	4401      	add	r1, r0
 8006640:	b29b      	uxth	r3, r3
 8006642:	465c      	mov	r4, fp
 8006644:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006648:	f844 3b04 	str.w	r3, [r4], #4
 800664c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006650:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006654:	0c1b      	lsrs	r3, r3, #16
 8006656:	b287      	uxth	r7, r0
 8006658:	fb05 7303 	mla	r3, r5, r3, r7
 800665c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006660:	45b4      	cmp	ip, r6
 8006662:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006666:	d8e5      	bhi.n	8006634 <__multiply+0xdc>
 8006668:	4592      	cmp	sl, r2
 800666a:	f8cb 3004 	str.w	r3, [fp, #4]
 800666e:	f109 0904 	add.w	r9, r9, #4
 8006672:	d1b0      	bne.n	80065d6 <__multiply+0x7e>
 8006674:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006678:	f1b8 0f00 	cmp.w	r8, #0
 800667c:	dd0b      	ble.n	8006696 <__multiply+0x13e>
 800667e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006682:	f1ae 0e04 	sub.w	lr, lr, #4
 8006686:	b11b      	cbz	r3, 8006690 <__multiply+0x138>
 8006688:	e005      	b.n	8006696 <__multiply+0x13e>
 800668a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800668e:	b913      	cbnz	r3, 8006696 <__multiply+0x13e>
 8006690:	f1b8 0801 	subs.w	r8, r8, #1
 8006694:	d1f9      	bne.n	800668a <__multiply+0x132>
 8006696:	9800      	ldr	r0, [sp, #0]
 8006698:	f8c0 8010 	str.w	r8, [r0, #16]
 800669c:	b003      	add	sp, #12
 800669e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066a2:	bf00      	nop

080066a4 <__pow5mult>:
 80066a4:	f012 0303 	ands.w	r3, r2, #3
 80066a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80066ac:	4614      	mov	r4, r2
 80066ae:	4607      	mov	r7, r0
 80066b0:	d12e      	bne.n	8006710 <__pow5mult+0x6c>
 80066b2:	460d      	mov	r5, r1
 80066b4:	10a4      	asrs	r4, r4, #2
 80066b6:	d01c      	beq.n	80066f2 <__pow5mult+0x4e>
 80066b8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80066ba:	b396      	cbz	r6, 8006722 <__pow5mult+0x7e>
 80066bc:	07e3      	lsls	r3, r4, #31
 80066be:	f04f 0800 	mov.w	r8, #0
 80066c2:	d406      	bmi.n	80066d2 <__pow5mult+0x2e>
 80066c4:	1064      	asrs	r4, r4, #1
 80066c6:	d014      	beq.n	80066f2 <__pow5mult+0x4e>
 80066c8:	6830      	ldr	r0, [r6, #0]
 80066ca:	b1a8      	cbz	r0, 80066f8 <__pow5mult+0x54>
 80066cc:	4606      	mov	r6, r0
 80066ce:	07e3      	lsls	r3, r4, #31
 80066d0:	d5f8      	bpl.n	80066c4 <__pow5mult+0x20>
 80066d2:	4632      	mov	r2, r6
 80066d4:	4629      	mov	r1, r5
 80066d6:	4638      	mov	r0, r7
 80066d8:	f7ff ff3e 	bl	8006558 <__multiply>
 80066dc:	b1b5      	cbz	r5, 800670c <__pow5mult+0x68>
 80066de:	686a      	ldr	r2, [r5, #4]
 80066e0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80066e2:	1064      	asrs	r4, r4, #1
 80066e4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80066e8:	6029      	str	r1, [r5, #0]
 80066ea:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80066ee:	4605      	mov	r5, r0
 80066f0:	d1ea      	bne.n	80066c8 <__pow5mult+0x24>
 80066f2:	4628      	mov	r0, r5
 80066f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80066f8:	4632      	mov	r2, r6
 80066fa:	4631      	mov	r1, r6
 80066fc:	4638      	mov	r0, r7
 80066fe:	f7ff ff2b 	bl	8006558 <__multiply>
 8006702:	6030      	str	r0, [r6, #0]
 8006704:	f8c0 8000 	str.w	r8, [r0]
 8006708:	4606      	mov	r6, r0
 800670a:	e7e0      	b.n	80066ce <__pow5mult+0x2a>
 800670c:	4605      	mov	r5, r0
 800670e:	e7d9      	b.n	80066c4 <__pow5mult+0x20>
 8006710:	3b01      	subs	r3, #1
 8006712:	4a0b      	ldr	r2, [pc, #44]	; (8006740 <__pow5mult+0x9c>)
 8006714:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006718:	2300      	movs	r3, #0
 800671a:	f7ff fe83 	bl	8006424 <__multadd>
 800671e:	4605      	mov	r5, r0
 8006720:	e7c8      	b.n	80066b4 <__pow5mult+0x10>
 8006722:	2101      	movs	r1, #1
 8006724:	4638      	mov	r0, r7
 8006726:	f7ff fe4d 	bl	80063c4 <_Balloc>
 800672a:	f240 2371 	movw	r3, #625	; 0x271
 800672e:	6143      	str	r3, [r0, #20]
 8006730:	2201      	movs	r2, #1
 8006732:	2300      	movs	r3, #0
 8006734:	6102      	str	r2, [r0, #16]
 8006736:	4606      	mov	r6, r0
 8006738:	64b8      	str	r0, [r7, #72]	; 0x48
 800673a:	6003      	str	r3, [r0, #0]
 800673c:	e7be      	b.n	80066bc <__pow5mult+0x18>
 800673e:	bf00      	nop
 8006740:	08007728 	.word	0x08007728

08006744 <__lshift>:
 8006744:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006748:	4691      	mov	r9, r2
 800674a:	690a      	ldr	r2, [r1, #16]
 800674c:	460e      	mov	r6, r1
 800674e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006752:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006756:	eb04 0802 	add.w	r8, r4, r2
 800675a:	f108 0501 	add.w	r5, r8, #1
 800675e:	429d      	cmp	r5, r3
 8006760:	4607      	mov	r7, r0
 8006762:	dd04      	ble.n	800676e <__lshift+0x2a>
 8006764:	005b      	lsls	r3, r3, #1
 8006766:	429d      	cmp	r5, r3
 8006768:	f101 0101 	add.w	r1, r1, #1
 800676c:	dcfa      	bgt.n	8006764 <__lshift+0x20>
 800676e:	4638      	mov	r0, r7
 8006770:	f7ff fe28 	bl	80063c4 <_Balloc>
 8006774:	2c00      	cmp	r4, #0
 8006776:	f100 0314 	add.w	r3, r0, #20
 800677a:	dd37      	ble.n	80067ec <__lshift+0xa8>
 800677c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006780:	2200      	movs	r2, #0
 8006782:	f843 2b04 	str.w	r2, [r3], #4
 8006786:	428b      	cmp	r3, r1
 8006788:	d1fb      	bne.n	8006782 <__lshift+0x3e>
 800678a:	6934      	ldr	r4, [r6, #16]
 800678c:	f106 0314 	add.w	r3, r6, #20
 8006790:	f019 091f 	ands.w	r9, r9, #31
 8006794:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006798:	d020      	beq.n	80067dc <__lshift+0x98>
 800679a:	f1c9 0e20 	rsb	lr, r9, #32
 800679e:	2200      	movs	r2, #0
 80067a0:	e000      	b.n	80067a4 <__lshift+0x60>
 80067a2:	4651      	mov	r1, sl
 80067a4:	681c      	ldr	r4, [r3, #0]
 80067a6:	468a      	mov	sl, r1
 80067a8:	fa04 f409 	lsl.w	r4, r4, r9
 80067ac:	4314      	orrs	r4, r2
 80067ae:	f84a 4b04 	str.w	r4, [sl], #4
 80067b2:	f853 2b04 	ldr.w	r2, [r3], #4
 80067b6:	4563      	cmp	r3, ip
 80067b8:	fa22 f20e 	lsr.w	r2, r2, lr
 80067bc:	d3f1      	bcc.n	80067a2 <__lshift+0x5e>
 80067be:	604a      	str	r2, [r1, #4]
 80067c0:	b10a      	cbz	r2, 80067c6 <__lshift+0x82>
 80067c2:	f108 0502 	add.w	r5, r8, #2
 80067c6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80067c8:	6872      	ldr	r2, [r6, #4]
 80067ca:	3d01      	subs	r5, #1
 80067cc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80067d0:	6105      	str	r5, [r0, #16]
 80067d2:	6031      	str	r1, [r6, #0]
 80067d4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80067d8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80067dc:	3904      	subs	r1, #4
 80067de:	f853 2b04 	ldr.w	r2, [r3], #4
 80067e2:	f841 2f04 	str.w	r2, [r1, #4]!
 80067e6:	459c      	cmp	ip, r3
 80067e8:	d8f9      	bhi.n	80067de <__lshift+0x9a>
 80067ea:	e7ec      	b.n	80067c6 <__lshift+0x82>
 80067ec:	4619      	mov	r1, r3
 80067ee:	e7cc      	b.n	800678a <__lshift+0x46>

080067f0 <__mcmp>:
 80067f0:	b430      	push	{r4, r5}
 80067f2:	690b      	ldr	r3, [r1, #16]
 80067f4:	4605      	mov	r5, r0
 80067f6:	6900      	ldr	r0, [r0, #16]
 80067f8:	1ac0      	subs	r0, r0, r3
 80067fa:	d10f      	bne.n	800681c <__mcmp+0x2c>
 80067fc:	009b      	lsls	r3, r3, #2
 80067fe:	3514      	adds	r5, #20
 8006800:	3114      	adds	r1, #20
 8006802:	4419      	add	r1, r3
 8006804:	442b      	add	r3, r5
 8006806:	e001      	b.n	800680c <__mcmp+0x1c>
 8006808:	429d      	cmp	r5, r3
 800680a:	d207      	bcs.n	800681c <__mcmp+0x2c>
 800680c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006810:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006814:	4294      	cmp	r4, r2
 8006816:	d0f7      	beq.n	8006808 <__mcmp+0x18>
 8006818:	d302      	bcc.n	8006820 <__mcmp+0x30>
 800681a:	2001      	movs	r0, #1
 800681c:	bc30      	pop	{r4, r5}
 800681e:	4770      	bx	lr
 8006820:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006824:	e7fa      	b.n	800681c <__mcmp+0x2c>
 8006826:	bf00      	nop

08006828 <__mdiff>:
 8006828:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800682c:	6913      	ldr	r3, [r2, #16]
 800682e:	690d      	ldr	r5, [r1, #16]
 8006830:	1aed      	subs	r5, r5, r3
 8006832:	2d00      	cmp	r5, #0
 8006834:	460e      	mov	r6, r1
 8006836:	4690      	mov	r8, r2
 8006838:	f101 0414 	add.w	r4, r1, #20
 800683c:	f102 0714 	add.w	r7, r2, #20
 8006840:	d114      	bne.n	800686c <__mdiff+0x44>
 8006842:	009b      	lsls	r3, r3, #2
 8006844:	18e2      	adds	r2, r4, r3
 8006846:	443b      	add	r3, r7
 8006848:	e001      	b.n	800684e <__mdiff+0x26>
 800684a:	42a2      	cmp	r2, r4
 800684c:	d959      	bls.n	8006902 <__mdiff+0xda>
 800684e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006852:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006856:	458c      	cmp	ip, r1
 8006858:	d0f7      	beq.n	800684a <__mdiff+0x22>
 800685a:	d209      	bcs.n	8006870 <__mdiff+0x48>
 800685c:	4622      	mov	r2, r4
 800685e:	4633      	mov	r3, r6
 8006860:	463c      	mov	r4, r7
 8006862:	4646      	mov	r6, r8
 8006864:	4617      	mov	r7, r2
 8006866:	4698      	mov	r8, r3
 8006868:	2501      	movs	r5, #1
 800686a:	e001      	b.n	8006870 <__mdiff+0x48>
 800686c:	dbf6      	blt.n	800685c <__mdiff+0x34>
 800686e:	2500      	movs	r5, #0
 8006870:	6871      	ldr	r1, [r6, #4]
 8006872:	f7ff fda7 	bl	80063c4 <_Balloc>
 8006876:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800687a:	6936      	ldr	r6, [r6, #16]
 800687c:	60c5      	str	r5, [r0, #12]
 800687e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006882:	46bc      	mov	ip, r7
 8006884:	f100 0514 	add.w	r5, r0, #20
 8006888:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800688c:	2300      	movs	r3, #0
 800688e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006892:	f854 8b04 	ldr.w	r8, [r4], #4
 8006896:	b28a      	uxth	r2, r1
 8006898:	fa13 f388 	uxtah	r3, r3, r8
 800689c:	0c09      	lsrs	r1, r1, #16
 800689e:	1a9a      	subs	r2, r3, r2
 80068a0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80068a4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80068a8:	b292      	uxth	r2, r2
 80068aa:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80068ae:	45e6      	cmp	lr, ip
 80068b0:	f845 2b04 	str.w	r2, [r5], #4
 80068b4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80068b8:	d8e9      	bhi.n	800688e <__mdiff+0x66>
 80068ba:	42a7      	cmp	r7, r4
 80068bc:	d917      	bls.n	80068ee <__mdiff+0xc6>
 80068be:	46ae      	mov	lr, r5
 80068c0:	46a4      	mov	ip, r4
 80068c2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80068c6:	fa13 f382 	uxtah	r3, r3, r2
 80068ca:	1419      	asrs	r1, r3, #16
 80068cc:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80068d0:	b29b      	uxth	r3, r3
 80068d2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80068d6:	4567      	cmp	r7, ip
 80068d8:	f84e 2b04 	str.w	r2, [lr], #4
 80068dc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80068e0:	d8ef      	bhi.n	80068c2 <__mdiff+0x9a>
 80068e2:	43e4      	mvns	r4, r4
 80068e4:	4427      	add	r7, r4
 80068e6:	f027 0703 	bic.w	r7, r7, #3
 80068ea:	3704      	adds	r7, #4
 80068ec:	443d      	add	r5, r7
 80068ee:	3d04      	subs	r5, #4
 80068f0:	b922      	cbnz	r2, 80068fc <__mdiff+0xd4>
 80068f2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80068f6:	3e01      	subs	r6, #1
 80068f8:	2b00      	cmp	r3, #0
 80068fa:	d0fa      	beq.n	80068f2 <__mdiff+0xca>
 80068fc:	6106      	str	r6, [r0, #16]
 80068fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006902:	2100      	movs	r1, #0
 8006904:	f7ff fd5e 	bl	80063c4 <_Balloc>
 8006908:	2201      	movs	r2, #1
 800690a:	2300      	movs	r3, #0
 800690c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006910:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006914 <__d2b>:
 8006914:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006918:	460f      	mov	r7, r1
 800691a:	b083      	sub	sp, #12
 800691c:	2101      	movs	r1, #1
 800691e:	ec55 4b10 	vmov	r4, r5, d0
 8006922:	4616      	mov	r6, r2
 8006924:	f7ff fd4e 	bl	80063c4 <_Balloc>
 8006928:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800692c:	4681      	mov	r9, r0
 800692e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006932:	f1b8 0f00 	cmp.w	r8, #0
 8006936:	d001      	beq.n	800693c <__d2b+0x28>
 8006938:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800693c:	2c00      	cmp	r4, #0
 800693e:	9301      	str	r3, [sp, #4]
 8006940:	d024      	beq.n	800698c <__d2b+0x78>
 8006942:	a802      	add	r0, sp, #8
 8006944:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006948:	f7ff fdcc 	bl	80064e4 <__lo0bits>
 800694c:	2800      	cmp	r0, #0
 800694e:	d136      	bne.n	80069be <__d2b+0xaa>
 8006950:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006954:	f8c9 2014 	str.w	r2, [r9, #20]
 8006958:	2b00      	cmp	r3, #0
 800695a:	bf0c      	ite	eq
 800695c:	2101      	moveq	r1, #1
 800695e:	2102      	movne	r1, #2
 8006960:	f8c9 3018 	str.w	r3, [r9, #24]
 8006964:	f8c9 1010 	str.w	r1, [r9, #16]
 8006968:	f1b8 0f00 	cmp.w	r8, #0
 800696c:	d11b      	bne.n	80069a6 <__d2b+0x92>
 800696e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006972:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006976:	6038      	str	r0, [r7, #0]
 8006978:	6918      	ldr	r0, [r3, #16]
 800697a:	f7ff fd93 	bl	80064a4 <__hi0bits>
 800697e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006982:	6030      	str	r0, [r6, #0]
 8006984:	4648      	mov	r0, r9
 8006986:	b003      	add	sp, #12
 8006988:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800698c:	a801      	add	r0, sp, #4
 800698e:	f7ff fda9 	bl	80064e4 <__lo0bits>
 8006992:	9b01      	ldr	r3, [sp, #4]
 8006994:	f8c9 3014 	str.w	r3, [r9, #20]
 8006998:	2101      	movs	r1, #1
 800699a:	3020      	adds	r0, #32
 800699c:	f8c9 1010 	str.w	r1, [r9, #16]
 80069a0:	f1b8 0f00 	cmp.w	r8, #0
 80069a4:	d0e3      	beq.n	800696e <__d2b+0x5a>
 80069a6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80069aa:	eb08 0300 	add.w	r3, r8, r0
 80069ae:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80069b2:	603b      	str	r3, [r7, #0]
 80069b4:	6030      	str	r0, [r6, #0]
 80069b6:	4648      	mov	r0, r9
 80069b8:	b003      	add	sp, #12
 80069ba:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80069be:	e9dd 1300 	ldrd	r1, r3, [sp]
 80069c2:	f1c0 0220 	rsb	r2, r0, #32
 80069c6:	fa03 f202 	lsl.w	r2, r3, r2
 80069ca:	430a      	orrs	r2, r1
 80069cc:	40c3      	lsrs	r3, r0
 80069ce:	9301      	str	r3, [sp, #4]
 80069d0:	f8c9 2014 	str.w	r2, [r9, #20]
 80069d4:	e7c0      	b.n	8006958 <__d2b+0x44>
 80069d6:	bf00      	nop

080069d8 <_realloc_r>:
 80069d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069dc:	4692      	mov	sl, r2
 80069de:	b083      	sub	sp, #12
 80069e0:	2900      	cmp	r1, #0
 80069e2:	f000 80a1 	beq.w	8006b28 <_realloc_r+0x150>
 80069e6:	460d      	mov	r5, r1
 80069e8:	4680      	mov	r8, r0
 80069ea:	f10a 040b 	add.w	r4, sl, #11
 80069ee:	f7fc f993 	bl	8002d18 <__malloc_lock>
 80069f2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80069f6:	2c16      	cmp	r4, #22
 80069f8:	f022 0603 	bic.w	r6, r2, #3
 80069fc:	f1a5 0708 	sub.w	r7, r5, #8
 8006a00:	d83e      	bhi.n	8006a80 <_realloc_r+0xa8>
 8006a02:	2410      	movs	r4, #16
 8006a04:	4621      	mov	r1, r4
 8006a06:	45a2      	cmp	sl, r4
 8006a08:	d83f      	bhi.n	8006a8a <_realloc_r+0xb2>
 8006a0a:	428e      	cmp	r6, r1
 8006a0c:	eb07 0906 	add.w	r9, r7, r6
 8006a10:	da74      	bge.n	8006afc <_realloc_r+0x124>
 8006a12:	4bc7      	ldr	r3, [pc, #796]	; (8006d30 <_realloc_r+0x358>)
 8006a14:	6898      	ldr	r0, [r3, #8]
 8006a16:	4548      	cmp	r0, r9
 8006a18:	f000 80aa 	beq.w	8006b70 <_realloc_r+0x198>
 8006a1c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006a20:	f020 0301 	bic.w	r3, r0, #1
 8006a24:	444b      	add	r3, r9
 8006a26:	685b      	ldr	r3, [r3, #4]
 8006a28:	07db      	lsls	r3, r3, #31
 8006a2a:	f140 8083 	bpl.w	8006b34 <_realloc_r+0x15c>
 8006a2e:	07d2      	lsls	r2, r2, #31
 8006a30:	d534      	bpl.n	8006a9c <_realloc_r+0xc4>
 8006a32:	4651      	mov	r1, sl
 8006a34:	4640      	mov	r0, r8
 8006a36:	f7fb fe81 	bl	800273c <_malloc_r>
 8006a3a:	4682      	mov	sl, r0
 8006a3c:	b1e0      	cbz	r0, 8006a78 <_realloc_r+0xa0>
 8006a3e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006a42:	f023 0301 	bic.w	r3, r3, #1
 8006a46:	443b      	add	r3, r7
 8006a48:	f1a0 0208 	sub.w	r2, r0, #8
 8006a4c:	4293      	cmp	r3, r2
 8006a4e:	f000 80f9 	beq.w	8006c44 <_realloc_r+0x26c>
 8006a52:	1f32      	subs	r2, r6, #4
 8006a54:	2a24      	cmp	r2, #36	; 0x24
 8006a56:	f200 8107 	bhi.w	8006c68 <_realloc_r+0x290>
 8006a5a:	2a13      	cmp	r2, #19
 8006a5c:	6829      	ldr	r1, [r5, #0]
 8006a5e:	f200 80e6 	bhi.w	8006c2e <_realloc_r+0x256>
 8006a62:	4603      	mov	r3, r0
 8006a64:	462a      	mov	r2, r5
 8006a66:	6019      	str	r1, [r3, #0]
 8006a68:	6851      	ldr	r1, [r2, #4]
 8006a6a:	6059      	str	r1, [r3, #4]
 8006a6c:	6892      	ldr	r2, [r2, #8]
 8006a6e:	609a      	str	r2, [r3, #8]
 8006a70:	4629      	mov	r1, r5
 8006a72:	4640      	mov	r0, r8
 8006a74:	f7ff f918 	bl	8005ca8 <_free_r>
 8006a78:	4640      	mov	r0, r8
 8006a7a:	f7fc f953 	bl	8002d24 <__malloc_unlock>
 8006a7e:	e04f      	b.n	8006b20 <_realloc_r+0x148>
 8006a80:	f024 0407 	bic.w	r4, r4, #7
 8006a84:	2c00      	cmp	r4, #0
 8006a86:	4621      	mov	r1, r4
 8006a88:	dabd      	bge.n	8006a06 <_realloc_r+0x2e>
 8006a8a:	f04f 0a00 	mov.w	sl, #0
 8006a8e:	230c      	movs	r3, #12
 8006a90:	4650      	mov	r0, sl
 8006a92:	f8c8 3000 	str.w	r3, [r8]
 8006a96:	b003      	add	sp, #12
 8006a98:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a9c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006aa0:	eba7 0b03 	sub.w	fp, r7, r3
 8006aa4:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006aa8:	f022 0203 	bic.w	r2, r2, #3
 8006aac:	18b3      	adds	r3, r6, r2
 8006aae:	428b      	cmp	r3, r1
 8006ab0:	dbbf      	blt.n	8006a32 <_realloc_r+0x5a>
 8006ab2:	46da      	mov	sl, fp
 8006ab4:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006ab8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006abc:	1f32      	subs	r2, r6, #4
 8006abe:	2a24      	cmp	r2, #36	; 0x24
 8006ac0:	60c1      	str	r1, [r0, #12]
 8006ac2:	eb0b 0903 	add.w	r9, fp, r3
 8006ac6:	6088      	str	r0, [r1, #8]
 8006ac8:	f200 80c6 	bhi.w	8006c58 <_realloc_r+0x280>
 8006acc:	2a13      	cmp	r2, #19
 8006ace:	6829      	ldr	r1, [r5, #0]
 8006ad0:	f240 80c0 	bls.w	8006c54 <_realloc_r+0x27c>
 8006ad4:	f8cb 1008 	str.w	r1, [fp, #8]
 8006ad8:	6869      	ldr	r1, [r5, #4]
 8006ada:	f8cb 100c 	str.w	r1, [fp, #12]
 8006ade:	2a1b      	cmp	r2, #27
 8006ae0:	68a9      	ldr	r1, [r5, #8]
 8006ae2:	f200 80d8 	bhi.w	8006c96 <_realloc_r+0x2be>
 8006ae6:	f10b 0210 	add.w	r2, fp, #16
 8006aea:	3508      	adds	r5, #8
 8006aec:	6011      	str	r1, [r2, #0]
 8006aee:	6869      	ldr	r1, [r5, #4]
 8006af0:	6051      	str	r1, [r2, #4]
 8006af2:	68a9      	ldr	r1, [r5, #8]
 8006af4:	6091      	str	r1, [r2, #8]
 8006af6:	461e      	mov	r6, r3
 8006af8:	465f      	mov	r7, fp
 8006afa:	4655      	mov	r5, sl
 8006afc:	687b      	ldr	r3, [r7, #4]
 8006afe:	1b32      	subs	r2, r6, r4
 8006b00:	2a0f      	cmp	r2, #15
 8006b02:	f003 0301 	and.w	r3, r3, #1
 8006b06:	d822      	bhi.n	8006b4e <_realloc_r+0x176>
 8006b08:	4333      	orrs	r3, r6
 8006b0a:	607b      	str	r3, [r7, #4]
 8006b0c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006b10:	f043 0301 	orr.w	r3, r3, #1
 8006b14:	f8c9 3004 	str.w	r3, [r9, #4]
 8006b18:	4640      	mov	r0, r8
 8006b1a:	f7fc f903 	bl	8002d24 <__malloc_unlock>
 8006b1e:	46aa      	mov	sl, r5
 8006b20:	4650      	mov	r0, sl
 8006b22:	b003      	add	sp, #12
 8006b24:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b28:	4611      	mov	r1, r2
 8006b2a:	b003      	add	sp, #12
 8006b2c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b30:	f7fb be04 	b.w	800273c <_malloc_r>
 8006b34:	f020 0003 	bic.w	r0, r0, #3
 8006b38:	1833      	adds	r3, r6, r0
 8006b3a:	428b      	cmp	r3, r1
 8006b3c:	db61      	blt.n	8006c02 <_realloc_r+0x22a>
 8006b3e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006b42:	461e      	mov	r6, r3
 8006b44:	60ca      	str	r2, [r1, #12]
 8006b46:	eb07 0903 	add.w	r9, r7, r3
 8006b4a:	6091      	str	r1, [r2, #8]
 8006b4c:	e7d6      	b.n	8006afc <_realloc_r+0x124>
 8006b4e:	1939      	adds	r1, r7, r4
 8006b50:	4323      	orrs	r3, r4
 8006b52:	f042 0201 	orr.w	r2, r2, #1
 8006b56:	607b      	str	r3, [r7, #4]
 8006b58:	604a      	str	r2, [r1, #4]
 8006b5a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006b5e:	f043 0301 	orr.w	r3, r3, #1
 8006b62:	3108      	adds	r1, #8
 8006b64:	f8c9 3004 	str.w	r3, [r9, #4]
 8006b68:	4640      	mov	r0, r8
 8006b6a:	f7ff f89d 	bl	8005ca8 <_free_r>
 8006b6e:	e7d3      	b.n	8006b18 <_realloc_r+0x140>
 8006b70:	6840      	ldr	r0, [r0, #4]
 8006b72:	f020 0903 	bic.w	r9, r0, #3
 8006b76:	44b1      	add	r9, r6
 8006b78:	f104 0010 	add.w	r0, r4, #16
 8006b7c:	4581      	cmp	r9, r0
 8006b7e:	da77      	bge.n	8006c70 <_realloc_r+0x298>
 8006b80:	07d2      	lsls	r2, r2, #31
 8006b82:	f53f af56 	bmi.w	8006a32 <_realloc_r+0x5a>
 8006b86:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006b8a:	eba7 0b02 	sub.w	fp, r7, r2
 8006b8e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006b92:	f022 0203 	bic.w	r2, r2, #3
 8006b96:	4491      	add	r9, r2
 8006b98:	4548      	cmp	r0, r9
 8006b9a:	dc87      	bgt.n	8006aac <_realloc_r+0xd4>
 8006b9c:	46da      	mov	sl, fp
 8006b9e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006ba2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006ba6:	1f32      	subs	r2, r6, #4
 8006ba8:	2a24      	cmp	r2, #36	; 0x24
 8006baa:	60c1      	str	r1, [r0, #12]
 8006bac:	6088      	str	r0, [r1, #8]
 8006bae:	f200 80a1 	bhi.w	8006cf4 <_realloc_r+0x31c>
 8006bb2:	2a13      	cmp	r2, #19
 8006bb4:	6829      	ldr	r1, [r5, #0]
 8006bb6:	f240 809b 	bls.w	8006cf0 <_realloc_r+0x318>
 8006bba:	f8cb 1008 	str.w	r1, [fp, #8]
 8006bbe:	6869      	ldr	r1, [r5, #4]
 8006bc0:	f8cb 100c 	str.w	r1, [fp, #12]
 8006bc4:	2a1b      	cmp	r2, #27
 8006bc6:	68a9      	ldr	r1, [r5, #8]
 8006bc8:	f200 809b 	bhi.w	8006d02 <_realloc_r+0x32a>
 8006bcc:	f10b 0210 	add.w	r2, fp, #16
 8006bd0:	3508      	adds	r5, #8
 8006bd2:	6011      	str	r1, [r2, #0]
 8006bd4:	6869      	ldr	r1, [r5, #4]
 8006bd6:	6051      	str	r1, [r2, #4]
 8006bd8:	68a9      	ldr	r1, [r5, #8]
 8006bda:	6091      	str	r1, [r2, #8]
 8006bdc:	eb0b 0104 	add.w	r1, fp, r4
 8006be0:	eba9 0204 	sub.w	r2, r9, r4
 8006be4:	f042 0201 	orr.w	r2, r2, #1
 8006be8:	6099      	str	r1, [r3, #8]
 8006bea:	604a      	str	r2, [r1, #4]
 8006bec:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006bf0:	f003 0301 	and.w	r3, r3, #1
 8006bf4:	431c      	orrs	r4, r3
 8006bf6:	4640      	mov	r0, r8
 8006bf8:	f8cb 4004 	str.w	r4, [fp, #4]
 8006bfc:	f7fc f892 	bl	8002d24 <__malloc_unlock>
 8006c00:	e78e      	b.n	8006b20 <_realloc_r+0x148>
 8006c02:	07d3      	lsls	r3, r2, #31
 8006c04:	f53f af15 	bmi.w	8006a32 <_realloc_r+0x5a>
 8006c08:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006c0c:	eba7 0b03 	sub.w	fp, r7, r3
 8006c10:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006c14:	f022 0203 	bic.w	r2, r2, #3
 8006c18:	4410      	add	r0, r2
 8006c1a:	1983      	adds	r3, r0, r6
 8006c1c:	428b      	cmp	r3, r1
 8006c1e:	f6ff af45 	blt.w	8006aac <_realloc_r+0xd4>
 8006c22:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006c26:	46da      	mov	sl, fp
 8006c28:	60ca      	str	r2, [r1, #12]
 8006c2a:	6091      	str	r1, [r2, #8]
 8006c2c:	e742      	b.n	8006ab4 <_realloc_r+0xdc>
 8006c2e:	6001      	str	r1, [r0, #0]
 8006c30:	686b      	ldr	r3, [r5, #4]
 8006c32:	6043      	str	r3, [r0, #4]
 8006c34:	2a1b      	cmp	r2, #27
 8006c36:	d83a      	bhi.n	8006cae <_realloc_r+0x2d6>
 8006c38:	f105 0208 	add.w	r2, r5, #8
 8006c3c:	f100 0308 	add.w	r3, r0, #8
 8006c40:	68a9      	ldr	r1, [r5, #8]
 8006c42:	e710      	b.n	8006a66 <_realloc_r+0x8e>
 8006c44:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006c48:	f023 0303 	bic.w	r3, r3, #3
 8006c4c:	441e      	add	r6, r3
 8006c4e:	eb07 0906 	add.w	r9, r7, r6
 8006c52:	e753      	b.n	8006afc <_realloc_r+0x124>
 8006c54:	4652      	mov	r2, sl
 8006c56:	e749      	b.n	8006aec <_realloc_r+0x114>
 8006c58:	4629      	mov	r1, r5
 8006c5a:	4650      	mov	r0, sl
 8006c5c:	461e      	mov	r6, r3
 8006c5e:	465f      	mov	r7, fp
 8006c60:	f7ff fb4c 	bl	80062fc <memmove>
 8006c64:	4655      	mov	r5, sl
 8006c66:	e749      	b.n	8006afc <_realloc_r+0x124>
 8006c68:	4629      	mov	r1, r5
 8006c6a:	f7ff fb47 	bl	80062fc <memmove>
 8006c6e:	e6ff      	b.n	8006a70 <_realloc_r+0x98>
 8006c70:	4427      	add	r7, r4
 8006c72:	eba9 0904 	sub.w	r9, r9, r4
 8006c76:	f049 0201 	orr.w	r2, r9, #1
 8006c7a:	609f      	str	r7, [r3, #8]
 8006c7c:	607a      	str	r2, [r7, #4]
 8006c7e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006c82:	f003 0301 	and.w	r3, r3, #1
 8006c86:	431c      	orrs	r4, r3
 8006c88:	4640      	mov	r0, r8
 8006c8a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006c8e:	f7fc f849 	bl	8002d24 <__malloc_unlock>
 8006c92:	46aa      	mov	sl, r5
 8006c94:	e744      	b.n	8006b20 <_realloc_r+0x148>
 8006c96:	f8cb 1010 	str.w	r1, [fp, #16]
 8006c9a:	68e9      	ldr	r1, [r5, #12]
 8006c9c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006ca0:	2a24      	cmp	r2, #36	; 0x24
 8006ca2:	d010      	beq.n	8006cc6 <_realloc_r+0x2ee>
 8006ca4:	6929      	ldr	r1, [r5, #16]
 8006ca6:	f10b 0218 	add.w	r2, fp, #24
 8006caa:	3510      	adds	r5, #16
 8006cac:	e71e      	b.n	8006aec <_realloc_r+0x114>
 8006cae:	68ab      	ldr	r3, [r5, #8]
 8006cb0:	6083      	str	r3, [r0, #8]
 8006cb2:	68eb      	ldr	r3, [r5, #12]
 8006cb4:	60c3      	str	r3, [r0, #12]
 8006cb6:	2a24      	cmp	r2, #36	; 0x24
 8006cb8:	d010      	beq.n	8006cdc <_realloc_r+0x304>
 8006cba:	f105 0210 	add.w	r2, r5, #16
 8006cbe:	f100 0310 	add.w	r3, r0, #16
 8006cc2:	6929      	ldr	r1, [r5, #16]
 8006cc4:	e6cf      	b.n	8006a66 <_realloc_r+0x8e>
 8006cc6:	692a      	ldr	r2, [r5, #16]
 8006cc8:	f8cb 2018 	str.w	r2, [fp, #24]
 8006ccc:	696a      	ldr	r2, [r5, #20]
 8006cce:	f8cb 201c 	str.w	r2, [fp, #28]
 8006cd2:	69a9      	ldr	r1, [r5, #24]
 8006cd4:	f10b 0220 	add.w	r2, fp, #32
 8006cd8:	3518      	adds	r5, #24
 8006cda:	e707      	b.n	8006aec <_realloc_r+0x114>
 8006cdc:	692b      	ldr	r3, [r5, #16]
 8006cde:	6103      	str	r3, [r0, #16]
 8006ce0:	696b      	ldr	r3, [r5, #20]
 8006ce2:	6143      	str	r3, [r0, #20]
 8006ce4:	69a9      	ldr	r1, [r5, #24]
 8006ce6:	f105 0218 	add.w	r2, r5, #24
 8006cea:	f100 0318 	add.w	r3, r0, #24
 8006cee:	e6ba      	b.n	8006a66 <_realloc_r+0x8e>
 8006cf0:	4652      	mov	r2, sl
 8006cf2:	e76e      	b.n	8006bd2 <_realloc_r+0x1fa>
 8006cf4:	4629      	mov	r1, r5
 8006cf6:	4650      	mov	r0, sl
 8006cf8:	9301      	str	r3, [sp, #4]
 8006cfa:	f7ff faff 	bl	80062fc <memmove>
 8006cfe:	9b01      	ldr	r3, [sp, #4]
 8006d00:	e76c      	b.n	8006bdc <_realloc_r+0x204>
 8006d02:	f8cb 1010 	str.w	r1, [fp, #16]
 8006d06:	68e9      	ldr	r1, [r5, #12]
 8006d08:	f8cb 1014 	str.w	r1, [fp, #20]
 8006d0c:	2a24      	cmp	r2, #36	; 0x24
 8006d0e:	d004      	beq.n	8006d1a <_realloc_r+0x342>
 8006d10:	6929      	ldr	r1, [r5, #16]
 8006d12:	f10b 0218 	add.w	r2, fp, #24
 8006d16:	3510      	adds	r5, #16
 8006d18:	e75b      	b.n	8006bd2 <_realloc_r+0x1fa>
 8006d1a:	692a      	ldr	r2, [r5, #16]
 8006d1c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006d20:	696a      	ldr	r2, [r5, #20]
 8006d22:	f8cb 201c 	str.w	r2, [fp, #28]
 8006d26:	69a9      	ldr	r1, [r5, #24]
 8006d28:	f10b 0220 	add.w	r2, fp, #32
 8006d2c:	3518      	adds	r5, #24
 8006d2e:	e750      	b.n	8006bd2 <_realloc_r+0x1fa>
 8006d30:	20000448 	.word	0x20000448

08006d34 <frexp>:
 8006d34:	ec53 2b10 	vmov	r2, r3, d0
 8006d38:	b570      	push	{r4, r5, r6, lr}
 8006d3a:	4e16      	ldr	r6, [pc, #88]	; (8006d94 <frexp+0x60>)
 8006d3c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006d40:	2500      	movs	r5, #0
 8006d42:	42b1      	cmp	r1, r6
 8006d44:	4604      	mov	r4, r0
 8006d46:	6005      	str	r5, [r0, #0]
 8006d48:	dc21      	bgt.n	8006d8e <frexp+0x5a>
 8006d4a:	ee10 6a10 	vmov	r6, s0
 8006d4e:	430e      	orrs	r6, r1
 8006d50:	d01d      	beq.n	8006d8e <frexp+0x5a>
 8006d52:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006d56:	4618      	mov	r0, r3
 8006d58:	da0c      	bge.n	8006d74 <frexp+0x40>
 8006d5a:	4619      	mov	r1, r3
 8006d5c:	2200      	movs	r2, #0
 8006d5e:	ee10 0a10 	vmov	r0, s0
 8006d62:	4b0d      	ldr	r3, [pc, #52]	; (8006d98 <frexp+0x64>)
 8006d64:	f7f9 ff48 	bl	8000bf8 <__aeabi_dmul>
 8006d68:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006d6c:	4602      	mov	r2, r0
 8006d6e:	4608      	mov	r0, r1
 8006d70:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006d74:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006d78:	1509      	asrs	r1, r1, #20
 8006d7a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006d7e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006d82:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006d86:	4429      	add	r1, r5
 8006d88:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006d8c:	6021      	str	r1, [r4, #0]
 8006d8e:	ec43 2b10 	vmov	d0, r2, r3
 8006d92:	bd70      	pop	{r4, r5, r6, pc}
 8006d94:	7fefffff 	.word	0x7fefffff
 8006d98:	43500000 	.word	0x43500000

08006d9c <__sread>:
 8006d9c:	b510      	push	{r4, lr}
 8006d9e:	460c      	mov	r4, r1
 8006da0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006da4:	f000 fabc 	bl	8007320 <_read_r>
 8006da8:	2800      	cmp	r0, #0
 8006daa:	db03      	blt.n	8006db4 <__sread+0x18>
 8006dac:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006dae:	4403      	add	r3, r0
 8006db0:	6523      	str	r3, [r4, #80]	; 0x50
 8006db2:	bd10      	pop	{r4, pc}
 8006db4:	89a3      	ldrh	r3, [r4, #12]
 8006db6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006dba:	81a3      	strh	r3, [r4, #12]
 8006dbc:	bd10      	pop	{r4, pc}
 8006dbe:	bf00      	nop

08006dc0 <__swrite>:
 8006dc0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006dc4:	4616      	mov	r6, r2
 8006dc6:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006dca:	461f      	mov	r7, r3
 8006dcc:	05d3      	lsls	r3, r2, #23
 8006dce:	460c      	mov	r4, r1
 8006dd0:	4605      	mov	r5, r0
 8006dd2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006dd6:	d507      	bpl.n	8006de8 <__swrite+0x28>
 8006dd8:	2200      	movs	r2, #0
 8006dda:	2302      	movs	r3, #2
 8006ddc:	f000 fa74 	bl	80072c8 <_lseek_r>
 8006de0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006de4:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006de8:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006dec:	81a2      	strh	r2, [r4, #12]
 8006dee:	463b      	mov	r3, r7
 8006df0:	4632      	mov	r2, r6
 8006df2:	4628      	mov	r0, r5
 8006df4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006df8:	f000 b88c 	b.w	8006f14 <_write_r>

08006dfc <__sseek>:
 8006dfc:	b510      	push	{r4, lr}
 8006dfe:	460c      	mov	r4, r1
 8006e00:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006e04:	f000 fa60 	bl	80072c8 <_lseek_r>
 8006e08:	89a3      	ldrh	r3, [r4, #12]
 8006e0a:	1c42      	adds	r2, r0, #1
 8006e0c:	bf0e      	itee	eq
 8006e0e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006e12:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006e16:	6520      	strne	r0, [r4, #80]	; 0x50
 8006e18:	81a3      	strh	r3, [r4, #12]
 8006e1a:	bd10      	pop	{r4, pc}

08006e1c <__sclose>:
 8006e1c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006e20:	f000 b922 	b.w	8007068 <_close_r>

08006e24 <strncpy>:
 8006e24:	ea40 0301 	orr.w	r3, r0, r1
 8006e28:	079b      	lsls	r3, r3, #30
 8006e2a:	b470      	push	{r4, r5, r6}
 8006e2c:	d12a      	bne.n	8006e84 <strncpy+0x60>
 8006e2e:	2a03      	cmp	r2, #3
 8006e30:	d928      	bls.n	8006e84 <strncpy+0x60>
 8006e32:	460c      	mov	r4, r1
 8006e34:	4603      	mov	r3, r0
 8006e36:	4621      	mov	r1, r4
 8006e38:	f854 6b04 	ldr.w	r6, [r4], #4
 8006e3c:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006e40:	ea25 0506 	bic.w	r5, r5, r6
 8006e44:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006e48:	d106      	bne.n	8006e58 <strncpy+0x34>
 8006e4a:	3a04      	subs	r2, #4
 8006e4c:	2a03      	cmp	r2, #3
 8006e4e:	f843 6b04 	str.w	r6, [r3], #4
 8006e52:	4621      	mov	r1, r4
 8006e54:	d8ef      	bhi.n	8006e36 <strncpy+0x12>
 8006e56:	b19a      	cbz	r2, 8006e80 <strncpy+0x5c>
 8006e58:	780c      	ldrb	r4, [r1, #0]
 8006e5a:	701c      	strb	r4, [r3, #0]
 8006e5c:	3a01      	subs	r2, #1
 8006e5e:	3301      	adds	r3, #1
 8006e60:	b13c      	cbz	r4, 8006e72 <strncpy+0x4e>
 8006e62:	b16a      	cbz	r2, 8006e80 <strncpy+0x5c>
 8006e64:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006e68:	f803 4b01 	strb.w	r4, [r3], #1
 8006e6c:	3a01      	subs	r2, #1
 8006e6e:	2c00      	cmp	r4, #0
 8006e70:	d1f7      	bne.n	8006e62 <strncpy+0x3e>
 8006e72:	b12a      	cbz	r2, 8006e80 <strncpy+0x5c>
 8006e74:	441a      	add	r2, r3
 8006e76:	2100      	movs	r1, #0
 8006e78:	f803 1b01 	strb.w	r1, [r3], #1
 8006e7c:	4293      	cmp	r3, r2
 8006e7e:	d1fb      	bne.n	8006e78 <strncpy+0x54>
 8006e80:	bc70      	pop	{r4, r5, r6}
 8006e82:	4770      	bx	lr
 8006e84:	4603      	mov	r3, r0
 8006e86:	e7e6      	b.n	8006e56 <strncpy+0x32>

08006e88 <__sprint_r.part.0>:
 8006e88:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006e8c:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006e8e:	049c      	lsls	r4, r3, #18
 8006e90:	4692      	mov	sl, r2
 8006e92:	d52d      	bpl.n	8006ef0 <__sprint_r.part.0+0x68>
 8006e94:	6893      	ldr	r3, [r2, #8]
 8006e96:	6812      	ldr	r2, [r2, #0]
 8006e98:	b343      	cbz	r3, 8006eec <__sprint_r.part.0+0x64>
 8006e9a:	460e      	mov	r6, r1
 8006e9c:	4607      	mov	r7, r0
 8006e9e:	f102 0908 	add.w	r9, r2, #8
 8006ea2:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006ea6:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006eaa:	d015      	beq.n	8006ed8 <__sprint_r.part.0+0x50>
 8006eac:	3d04      	subs	r5, #4
 8006eae:	2400      	movs	r4, #0
 8006eb0:	e001      	b.n	8006eb6 <__sprint_r.part.0+0x2e>
 8006eb2:	45a0      	cmp	r8, r4
 8006eb4:	d00e      	beq.n	8006ed4 <__sprint_r.part.0+0x4c>
 8006eb6:	4632      	mov	r2, r6
 8006eb8:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006ebc:	4638      	mov	r0, r7
 8006ebe:	f000 f99d 	bl	80071fc <_fputwc_r>
 8006ec2:	1c43      	adds	r3, r0, #1
 8006ec4:	f104 0401 	add.w	r4, r4, #1
 8006ec8:	d1f3      	bne.n	8006eb2 <__sprint_r.part.0+0x2a>
 8006eca:	2300      	movs	r3, #0
 8006ecc:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ed0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ed4:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006ed8:	f02b 0b03 	bic.w	fp, fp, #3
 8006edc:	eba3 030b 	sub.w	r3, r3, fp
 8006ee0:	f8ca 3008 	str.w	r3, [sl, #8]
 8006ee4:	f109 0908 	add.w	r9, r9, #8
 8006ee8:	2b00      	cmp	r3, #0
 8006eea:	d1da      	bne.n	8006ea2 <__sprint_r.part.0+0x1a>
 8006eec:	2000      	movs	r0, #0
 8006eee:	e7ec      	b.n	8006eca <__sprint_r.part.0+0x42>
 8006ef0:	f7fe ffce 	bl	8005e90 <__sfvwrite_r>
 8006ef4:	2300      	movs	r3, #0
 8006ef6:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006efa:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006efe:	bf00      	nop

08006f00 <__sprint_r>:
 8006f00:	6893      	ldr	r3, [r2, #8]
 8006f02:	b10b      	cbz	r3, 8006f08 <__sprint_r+0x8>
 8006f04:	f7ff bfc0 	b.w	8006e88 <__sprint_r.part.0>
 8006f08:	b410      	push	{r4}
 8006f0a:	4618      	mov	r0, r3
 8006f0c:	6053      	str	r3, [r2, #4]
 8006f0e:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006f12:	4770      	bx	lr

08006f14 <_write_r>:
 8006f14:	b570      	push	{r4, r5, r6, lr}
 8006f16:	460d      	mov	r5, r1
 8006f18:	4c08      	ldr	r4, [pc, #32]	; (8006f3c <_write_r+0x28>)
 8006f1a:	4611      	mov	r1, r2
 8006f1c:	4606      	mov	r6, r0
 8006f1e:	461a      	mov	r2, r3
 8006f20:	4628      	mov	r0, r5
 8006f22:	2300      	movs	r3, #0
 8006f24:	6023      	str	r3, [r4, #0]
 8006f26:	f7fb fb3d 	bl	80025a4 <_write>
 8006f2a:	1c43      	adds	r3, r0, #1
 8006f2c:	d000      	beq.n	8006f30 <_write_r+0x1c>
 8006f2e:	bd70      	pop	{r4, r5, r6, pc}
 8006f30:	6823      	ldr	r3, [r4, #0]
 8006f32:	2b00      	cmp	r3, #0
 8006f34:	d0fb      	beq.n	8006f2e <_write_r+0x1a>
 8006f36:	6033      	str	r3, [r6, #0]
 8006f38:	bd70      	pop	{r4, r5, r6, pc}
 8006f3a:	bf00      	nop
 8006f3c:	20000b0c 	.word	0x20000b0c

08006f40 <__register_exitproc>:
 8006f40:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006f44:	4d2b      	ldr	r5, [pc, #172]	; (8006ff4 <__register_exitproc+0xb4>)
 8006f46:	4606      	mov	r6, r0
 8006f48:	6828      	ldr	r0, [r5, #0]
 8006f4a:	4698      	mov	r8, r3
 8006f4c:	460f      	mov	r7, r1
 8006f4e:	4691      	mov	r9, r2
 8006f50:	f7ff f958 	bl	8006204 <__retarget_lock_acquire_recursive>
 8006f54:	4b28      	ldr	r3, [pc, #160]	; (8006ff8 <__register_exitproc+0xb8>)
 8006f56:	681c      	ldr	r4, [r3, #0]
 8006f58:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006f5c:	2b00      	cmp	r3, #0
 8006f5e:	d03d      	beq.n	8006fdc <__register_exitproc+0x9c>
 8006f60:	685a      	ldr	r2, [r3, #4]
 8006f62:	2a1f      	cmp	r2, #31
 8006f64:	dc0d      	bgt.n	8006f82 <__register_exitproc+0x42>
 8006f66:	f102 0c01 	add.w	ip, r2, #1
 8006f6a:	bb16      	cbnz	r6, 8006fb2 <__register_exitproc+0x72>
 8006f6c:	3202      	adds	r2, #2
 8006f6e:	f8c3 c004 	str.w	ip, [r3, #4]
 8006f72:	6828      	ldr	r0, [r5, #0]
 8006f74:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006f78:	f7ff f946 	bl	8006208 <__retarget_lock_release_recursive>
 8006f7c:	2000      	movs	r0, #0
 8006f7e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006f82:	4b1e      	ldr	r3, [pc, #120]	; (8006ffc <__register_exitproc+0xbc>)
 8006f84:	b37b      	cbz	r3, 8006fe6 <__register_exitproc+0xa6>
 8006f86:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006f8a:	f7fb fbc7 	bl	800271c <malloc>
 8006f8e:	4603      	mov	r3, r0
 8006f90:	b348      	cbz	r0, 8006fe6 <__register_exitproc+0xa6>
 8006f92:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006f96:	2100      	movs	r1, #0
 8006f98:	e9c0 2100 	strd	r2, r1, [r0]
 8006f9c:	f04f 0c01 	mov.w	ip, #1
 8006fa0:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006fa4:	460a      	mov	r2, r1
 8006fa6:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006faa:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006fae:	2e00      	cmp	r6, #0
 8006fb0:	d0dc      	beq.n	8006f6c <__register_exitproc+0x2c>
 8006fb2:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006fb6:	2401      	movs	r4, #1
 8006fb8:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006fbc:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006fc0:	4094      	lsls	r4, r2
 8006fc2:	4320      	orrs	r0, r4
 8006fc4:	2e02      	cmp	r6, #2
 8006fc6:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006fca:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006fce:	d1cd      	bne.n	8006f6c <__register_exitproc+0x2c>
 8006fd0:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006fd4:	430c      	orrs	r4, r1
 8006fd6:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006fda:	e7c7      	b.n	8006f6c <__register_exitproc+0x2c>
 8006fdc:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006fe0:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006fe4:	e7bc      	b.n	8006f60 <__register_exitproc+0x20>
 8006fe6:	6828      	ldr	r0, [r5, #0]
 8006fe8:	f7ff f90e 	bl	8006208 <__retarget_lock_release_recursive>
 8006fec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ff0:	e7c5      	b.n	8006f7e <__register_exitproc+0x3e>
 8006ff2:	bf00      	nop
 8006ff4:	20000858 	.word	0x20000858
 8006ff8:	080075b8 	.word	0x080075b8
 8006ffc:	0800271d 	.word	0x0800271d

08007000 <_calloc_r>:
 8007000:	b510      	push	{r4, lr}
 8007002:	fb02 f101 	mul.w	r1, r2, r1
 8007006:	f7fb fb99 	bl	800273c <_malloc_r>
 800700a:	4604      	mov	r4, r0
 800700c:	b1d8      	cbz	r0, 8007046 <_calloc_r+0x46>
 800700e:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8007012:	f022 0203 	bic.w	r2, r2, #3
 8007016:	3a04      	subs	r2, #4
 8007018:	2a24      	cmp	r2, #36	; 0x24
 800701a:	d81d      	bhi.n	8007058 <_calloc_r+0x58>
 800701c:	2a13      	cmp	r2, #19
 800701e:	d914      	bls.n	800704a <_calloc_r+0x4a>
 8007020:	2300      	movs	r3, #0
 8007022:	2a1b      	cmp	r2, #27
 8007024:	e9c0 3300 	strd	r3, r3, [r0]
 8007028:	d91b      	bls.n	8007062 <_calloc_r+0x62>
 800702a:	2a24      	cmp	r2, #36	; 0x24
 800702c:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8007030:	bf0a      	itet	eq
 8007032:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8007036:	f100 0210 	addne.w	r2, r0, #16
 800703a:	f100 0218 	addeq.w	r2, r0, #24
 800703e:	2300      	movs	r3, #0
 8007040:	e9c2 3300 	strd	r3, r3, [r2]
 8007044:	6093      	str	r3, [r2, #8]
 8007046:	4620      	mov	r0, r4
 8007048:	bd10      	pop	{r4, pc}
 800704a:	4602      	mov	r2, r0
 800704c:	2300      	movs	r3, #0
 800704e:	e9c2 3300 	strd	r3, r3, [r2]
 8007052:	6093      	str	r3, [r2, #8]
 8007054:	4620      	mov	r0, r4
 8007056:	bd10      	pop	{r4, pc}
 8007058:	2100      	movs	r1, #0
 800705a:	f7fb fe13 	bl	8002c84 <memset>
 800705e:	4620      	mov	r0, r4
 8007060:	bd10      	pop	{r4, pc}
 8007062:	f100 0208 	add.w	r2, r0, #8
 8007066:	e7f1      	b.n	800704c <_calloc_r+0x4c>

08007068 <_close_r>:
 8007068:	b538      	push	{r3, r4, r5, lr}
 800706a:	4c07      	ldr	r4, [pc, #28]	; (8007088 <_close_r+0x20>)
 800706c:	2300      	movs	r3, #0
 800706e:	4605      	mov	r5, r0
 8007070:	4608      	mov	r0, r1
 8007072:	6023      	str	r3, [r4, #0]
 8007074:	f7fb fac5 	bl	8002602 <_close>
 8007078:	1c43      	adds	r3, r0, #1
 800707a:	d000      	beq.n	800707e <_close_r+0x16>
 800707c:	bd38      	pop	{r3, r4, r5, pc}
 800707e:	6823      	ldr	r3, [r4, #0]
 8007080:	2b00      	cmp	r3, #0
 8007082:	d0fb      	beq.n	800707c <_close_r+0x14>
 8007084:	602b      	str	r3, [r5, #0]
 8007086:	bd38      	pop	{r3, r4, r5, pc}
 8007088:	20000b0c 	.word	0x20000b0c

0800708c <_fclose_r>:
 800708c:	b570      	push	{r4, r5, r6, lr}
 800708e:	2900      	cmp	r1, #0
 8007090:	d048      	beq.n	8007124 <_fclose_r+0x98>
 8007092:	4605      	mov	r5, r0
 8007094:	460c      	mov	r4, r1
 8007096:	b110      	cbz	r0, 800709e <_fclose_r+0x12>
 8007098:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800709a:	2b00      	cmp	r3, #0
 800709c:	d048      	beq.n	8007130 <_fclose_r+0xa4>
 800709e:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80070a0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80070a4:	07d0      	lsls	r0, r2, #31
 80070a6:	d440      	bmi.n	800712a <_fclose_r+0x9e>
 80070a8:	0599      	lsls	r1, r3, #22
 80070aa:	d530      	bpl.n	800710e <_fclose_r+0x82>
 80070ac:	4621      	mov	r1, r4
 80070ae:	4628      	mov	r0, r5
 80070b0:	f7fe fc52 	bl	8005958 <__sflush_r>
 80070b4:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80070b6:	4606      	mov	r6, r0
 80070b8:	b133      	cbz	r3, 80070c8 <_fclose_r+0x3c>
 80070ba:	69e1      	ldr	r1, [r4, #28]
 80070bc:	4628      	mov	r0, r5
 80070be:	4798      	blx	r3
 80070c0:	2800      	cmp	r0, #0
 80070c2:	bfb8      	it	lt
 80070c4:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 80070c8:	89a3      	ldrh	r3, [r4, #12]
 80070ca:	061a      	lsls	r2, r3, #24
 80070cc:	d43c      	bmi.n	8007148 <_fclose_r+0xbc>
 80070ce:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80070d0:	b141      	cbz	r1, 80070e4 <_fclose_r+0x58>
 80070d2:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80070d6:	4299      	cmp	r1, r3
 80070d8:	d002      	beq.n	80070e0 <_fclose_r+0x54>
 80070da:	4628      	mov	r0, r5
 80070dc:	f7fe fde4 	bl	8005ca8 <_free_r>
 80070e0:	2300      	movs	r3, #0
 80070e2:	6323      	str	r3, [r4, #48]	; 0x30
 80070e4:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80070e6:	b121      	cbz	r1, 80070f2 <_fclose_r+0x66>
 80070e8:	4628      	mov	r0, r5
 80070ea:	f7fe fddd 	bl	8005ca8 <_free_r>
 80070ee:	2300      	movs	r3, #0
 80070f0:	6463      	str	r3, [r4, #68]	; 0x44
 80070f2:	f7fe fd63 	bl	8005bbc <__sfp_lock_acquire>
 80070f6:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80070f8:	2200      	movs	r2, #0
 80070fa:	07db      	lsls	r3, r3, #31
 80070fc:	81a2      	strh	r2, [r4, #12]
 80070fe:	d51f      	bpl.n	8007140 <_fclose_r+0xb4>
 8007100:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007102:	f7ff f87d 	bl	8006200 <__retarget_lock_close_recursive>
 8007106:	f7fe fd5f 	bl	8005bc8 <__sfp_lock_release>
 800710a:	4630      	mov	r0, r6
 800710c:	bd70      	pop	{r4, r5, r6, pc}
 800710e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007110:	f7ff f878 	bl	8006204 <__retarget_lock_acquire_recursive>
 8007114:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007118:	2b00      	cmp	r3, #0
 800711a:	d1c7      	bne.n	80070ac <_fclose_r+0x20>
 800711c:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800711e:	f016 0601 	ands.w	r6, r6, #1
 8007122:	d016      	beq.n	8007152 <_fclose_r+0xc6>
 8007124:	2600      	movs	r6, #0
 8007126:	4630      	mov	r0, r6
 8007128:	bd70      	pop	{r4, r5, r6, pc}
 800712a:	2b00      	cmp	r3, #0
 800712c:	d0fa      	beq.n	8007124 <_fclose_r+0x98>
 800712e:	e7bd      	b.n	80070ac <_fclose_r+0x20>
 8007130:	f7fe fd18 	bl	8005b64 <__sinit>
 8007134:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007136:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800713a:	07d0      	lsls	r0, r2, #31
 800713c:	d4f5      	bmi.n	800712a <_fclose_r+0x9e>
 800713e:	e7b3      	b.n	80070a8 <_fclose_r+0x1c>
 8007140:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007142:	f7ff f861 	bl	8006208 <__retarget_lock_release_recursive>
 8007146:	e7db      	b.n	8007100 <_fclose_r+0x74>
 8007148:	6921      	ldr	r1, [r4, #16]
 800714a:	4628      	mov	r0, r5
 800714c:	f7fe fdac 	bl	8005ca8 <_free_r>
 8007150:	e7bd      	b.n	80070ce <_fclose_r+0x42>
 8007152:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007154:	f7ff f858 	bl	8006208 <__retarget_lock_release_recursive>
 8007158:	4630      	mov	r0, r6
 800715a:	bd70      	pop	{r4, r5, r6, pc}

0800715c <__fputwc>:
 800715c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007160:	b082      	sub	sp, #8
 8007162:	4681      	mov	r9, r0
 8007164:	4688      	mov	r8, r1
 8007166:	4614      	mov	r4, r2
 8007168:	f000 f8a0 	bl	80072ac <__locale_mb_cur_max>
 800716c:	2801      	cmp	r0, #1
 800716e:	d103      	bne.n	8007178 <__fputwc+0x1c>
 8007170:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007174:	2bfe      	cmp	r3, #254	; 0xfe
 8007176:	d933      	bls.n	80071e0 <__fputwc+0x84>
 8007178:	4642      	mov	r2, r8
 800717a:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800717e:	a901      	add	r1, sp, #4
 8007180:	4648      	mov	r0, r9
 8007182:	f000 f93b 	bl	80073fc <_wcrtomb_r>
 8007186:	1c42      	adds	r2, r0, #1
 8007188:	4606      	mov	r6, r0
 800718a:	d02f      	beq.n	80071ec <__fputwc+0x90>
 800718c:	b320      	cbz	r0, 80071d8 <__fputwc+0x7c>
 800718e:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007192:	2500      	movs	r5, #0
 8007194:	f10d 0a04 	add.w	sl, sp, #4
 8007198:	e009      	b.n	80071ae <__fputwc+0x52>
 800719a:	6823      	ldr	r3, [r4, #0]
 800719c:	1c5a      	adds	r2, r3, #1
 800719e:	6022      	str	r2, [r4, #0]
 80071a0:	f883 c000 	strb.w	ip, [r3]
 80071a4:	3501      	adds	r5, #1
 80071a6:	42b5      	cmp	r5, r6
 80071a8:	d216      	bcs.n	80071d8 <__fputwc+0x7c>
 80071aa:	f815 c00a 	ldrb.w	ip, [r5, sl]
 80071ae:	68a3      	ldr	r3, [r4, #8]
 80071b0:	3b01      	subs	r3, #1
 80071b2:	2b00      	cmp	r3, #0
 80071b4:	60a3      	str	r3, [r4, #8]
 80071b6:	daf0      	bge.n	800719a <__fputwc+0x3e>
 80071b8:	69a7      	ldr	r7, [r4, #24]
 80071ba:	42bb      	cmp	r3, r7
 80071bc:	4661      	mov	r1, ip
 80071be:	4622      	mov	r2, r4
 80071c0:	4648      	mov	r0, r9
 80071c2:	db02      	blt.n	80071ca <__fputwc+0x6e>
 80071c4:	f1bc 0f0a 	cmp.w	ip, #10
 80071c8:	d1e7      	bne.n	800719a <__fputwc+0x3e>
 80071ca:	f000 f8bf 	bl	800734c <__swbuf_r>
 80071ce:	1c43      	adds	r3, r0, #1
 80071d0:	d1e8      	bne.n	80071a4 <__fputwc+0x48>
 80071d2:	b002      	add	sp, #8
 80071d4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80071d8:	4640      	mov	r0, r8
 80071da:	b002      	add	sp, #8
 80071dc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80071e0:	fa5f fc88 	uxtb.w	ip, r8
 80071e4:	4606      	mov	r6, r0
 80071e6:	f88d c004 	strb.w	ip, [sp, #4]
 80071ea:	e7d2      	b.n	8007192 <__fputwc+0x36>
 80071ec:	89a3      	ldrh	r3, [r4, #12]
 80071ee:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80071f2:	81a3      	strh	r3, [r4, #12]
 80071f4:	b002      	add	sp, #8
 80071f6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80071fa:	bf00      	nop

080071fc <_fputwc_r>:
 80071fc:	b530      	push	{r4, r5, lr}
 80071fe:	4605      	mov	r5, r0
 8007200:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007202:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8007206:	07c0      	lsls	r0, r0, #31
 8007208:	4614      	mov	r4, r2
 800720a:	b083      	sub	sp, #12
 800720c:	b29a      	uxth	r2, r3
 800720e:	d401      	bmi.n	8007214 <_fputwc_r+0x18>
 8007210:	0590      	lsls	r0, r2, #22
 8007212:	d51c      	bpl.n	800724e <_fputwc_r+0x52>
 8007214:	0490      	lsls	r0, r2, #18
 8007216:	d406      	bmi.n	8007226 <_fputwc_r+0x2a>
 8007218:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800721a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800721e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007222:	81a3      	strh	r3, [r4, #12]
 8007224:	6662      	str	r2, [r4, #100]	; 0x64
 8007226:	4628      	mov	r0, r5
 8007228:	4622      	mov	r2, r4
 800722a:	f7ff ff97 	bl	800715c <__fputwc>
 800722e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007230:	07da      	lsls	r2, r3, #31
 8007232:	4605      	mov	r5, r0
 8007234:	d402      	bmi.n	800723c <_fputwc_r+0x40>
 8007236:	89a3      	ldrh	r3, [r4, #12]
 8007238:	059b      	lsls	r3, r3, #22
 800723a:	d502      	bpl.n	8007242 <_fputwc_r+0x46>
 800723c:	4628      	mov	r0, r5
 800723e:	b003      	add	sp, #12
 8007240:	bd30      	pop	{r4, r5, pc}
 8007242:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007244:	f7fe ffe0 	bl	8006208 <__retarget_lock_release_recursive>
 8007248:	4628      	mov	r0, r5
 800724a:	b003      	add	sp, #12
 800724c:	bd30      	pop	{r4, r5, pc}
 800724e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007250:	9101      	str	r1, [sp, #4]
 8007252:	f7fe ffd7 	bl	8006204 <__retarget_lock_acquire_recursive>
 8007256:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800725a:	9901      	ldr	r1, [sp, #4]
 800725c:	b29a      	uxth	r2, r3
 800725e:	e7d9      	b.n	8007214 <_fputwc_r+0x18>

08007260 <_fstat_r>:
 8007260:	b538      	push	{r3, r4, r5, lr}
 8007262:	460b      	mov	r3, r1
 8007264:	4c07      	ldr	r4, [pc, #28]	; (8007284 <_fstat_r+0x24>)
 8007266:	4605      	mov	r5, r0
 8007268:	4611      	mov	r1, r2
 800726a:	4618      	mov	r0, r3
 800726c:	2300      	movs	r3, #0
 800726e:	6023      	str	r3, [r4, #0]
 8007270:	f7fb f9ca 	bl	8002608 <_fstat>
 8007274:	1c43      	adds	r3, r0, #1
 8007276:	d000      	beq.n	800727a <_fstat_r+0x1a>
 8007278:	bd38      	pop	{r3, r4, r5, pc}
 800727a:	6823      	ldr	r3, [r4, #0]
 800727c:	2b00      	cmp	r3, #0
 800727e:	d0fb      	beq.n	8007278 <_fstat_r+0x18>
 8007280:	602b      	str	r3, [r5, #0]
 8007282:	bd38      	pop	{r3, r4, r5, pc}
 8007284:	20000b0c 	.word	0x20000b0c

08007288 <_isatty_r>:
 8007288:	b538      	push	{r3, r4, r5, lr}
 800728a:	4c07      	ldr	r4, [pc, #28]	; (80072a8 <_isatty_r+0x20>)
 800728c:	2300      	movs	r3, #0
 800728e:	4605      	mov	r5, r0
 8007290:	4608      	mov	r0, r1
 8007292:	6023      	str	r3, [r4, #0]
 8007294:	f7fb f9bd 	bl	8002612 <_isatty>
 8007298:	1c43      	adds	r3, r0, #1
 800729a:	d000      	beq.n	800729e <_isatty_r+0x16>
 800729c:	bd38      	pop	{r3, r4, r5, pc}
 800729e:	6823      	ldr	r3, [r4, #0]
 80072a0:	2b00      	cmp	r3, #0
 80072a2:	d0fb      	beq.n	800729c <_isatty_r+0x14>
 80072a4:	602b      	str	r3, [r5, #0]
 80072a6:	bd38      	pop	{r3, r4, r5, pc}
 80072a8:	20000b0c 	.word	0x20000b0c

080072ac <__locale_mb_cur_max>:
 80072ac:	4b04      	ldr	r3, [pc, #16]	; (80072c0 <__locale_mb_cur_max+0x14>)
 80072ae:	4a05      	ldr	r2, [pc, #20]	; (80072c4 <__locale_mb_cur_max+0x18>)
 80072b0:	681b      	ldr	r3, [r3, #0]
 80072b2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80072b4:	2b00      	cmp	r3, #0
 80072b6:	bf08      	it	eq
 80072b8:	4613      	moveq	r3, r2
 80072ba:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 80072be:	4770      	bx	lr
 80072c0:	2000001c 	.word	0x2000001c
 80072c4:	2000085c 	.word	0x2000085c

080072c8 <_lseek_r>:
 80072c8:	b570      	push	{r4, r5, r6, lr}
 80072ca:	460d      	mov	r5, r1
 80072cc:	4c08      	ldr	r4, [pc, #32]	; (80072f0 <_lseek_r+0x28>)
 80072ce:	4611      	mov	r1, r2
 80072d0:	4606      	mov	r6, r0
 80072d2:	461a      	mov	r2, r3
 80072d4:	4628      	mov	r0, r5
 80072d6:	2300      	movs	r3, #0
 80072d8:	6023      	str	r3, [r4, #0]
 80072da:	f7fb f99c 	bl	8002616 <_lseek>
 80072de:	1c43      	adds	r3, r0, #1
 80072e0:	d000      	beq.n	80072e4 <_lseek_r+0x1c>
 80072e2:	bd70      	pop	{r4, r5, r6, pc}
 80072e4:	6823      	ldr	r3, [r4, #0]
 80072e6:	2b00      	cmp	r3, #0
 80072e8:	d0fb      	beq.n	80072e2 <_lseek_r+0x1a>
 80072ea:	6033      	str	r3, [r6, #0]
 80072ec:	bd70      	pop	{r4, r5, r6, pc}
 80072ee:	bf00      	nop
 80072f0:	20000b0c 	.word	0x20000b0c

080072f4 <__ascii_mbtowc>:
 80072f4:	b082      	sub	sp, #8
 80072f6:	b149      	cbz	r1, 800730c <__ascii_mbtowc+0x18>
 80072f8:	b15a      	cbz	r2, 8007312 <__ascii_mbtowc+0x1e>
 80072fa:	b16b      	cbz	r3, 8007318 <__ascii_mbtowc+0x24>
 80072fc:	7813      	ldrb	r3, [r2, #0]
 80072fe:	600b      	str	r3, [r1, #0]
 8007300:	7812      	ldrb	r2, [r2, #0]
 8007302:	1c10      	adds	r0, r2, #0
 8007304:	bf18      	it	ne
 8007306:	2001      	movne	r0, #1
 8007308:	b002      	add	sp, #8
 800730a:	4770      	bx	lr
 800730c:	a901      	add	r1, sp, #4
 800730e:	2a00      	cmp	r2, #0
 8007310:	d1f3      	bne.n	80072fa <__ascii_mbtowc+0x6>
 8007312:	4610      	mov	r0, r2
 8007314:	b002      	add	sp, #8
 8007316:	4770      	bx	lr
 8007318:	f06f 0001 	mvn.w	r0, #1
 800731c:	e7f4      	b.n	8007308 <__ascii_mbtowc+0x14>
 800731e:	bf00      	nop

08007320 <_read_r>:
 8007320:	b570      	push	{r4, r5, r6, lr}
 8007322:	460d      	mov	r5, r1
 8007324:	4c08      	ldr	r4, [pc, #32]	; (8007348 <_read_r+0x28>)
 8007326:	4611      	mov	r1, r2
 8007328:	4606      	mov	r6, r0
 800732a:	461a      	mov	r2, r3
 800732c:	4628      	mov	r0, r5
 800732e:	2300      	movs	r3, #0
 8007330:	6023      	str	r3, [r4, #0]
 8007332:	f7fb f924 	bl	800257e <_read>
 8007336:	1c43      	adds	r3, r0, #1
 8007338:	d000      	beq.n	800733c <_read_r+0x1c>
 800733a:	bd70      	pop	{r4, r5, r6, pc}
 800733c:	6823      	ldr	r3, [r4, #0]
 800733e:	2b00      	cmp	r3, #0
 8007340:	d0fb      	beq.n	800733a <_read_r+0x1a>
 8007342:	6033      	str	r3, [r6, #0]
 8007344:	bd70      	pop	{r4, r5, r6, pc}
 8007346:	bf00      	nop
 8007348:	20000b0c 	.word	0x20000b0c

0800734c <__swbuf_r>:
 800734c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800734e:	460d      	mov	r5, r1
 8007350:	4614      	mov	r4, r2
 8007352:	4606      	mov	r6, r0
 8007354:	b110      	cbz	r0, 800735c <__swbuf_r+0x10>
 8007356:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007358:	2b00      	cmp	r3, #0
 800735a:	d043      	beq.n	80073e4 <__swbuf_r+0x98>
 800735c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007360:	69a3      	ldr	r3, [r4, #24]
 8007362:	60a3      	str	r3, [r4, #8]
 8007364:	b291      	uxth	r1, r2
 8007366:	0708      	lsls	r0, r1, #28
 8007368:	d51b      	bpl.n	80073a2 <__swbuf_r+0x56>
 800736a:	6923      	ldr	r3, [r4, #16]
 800736c:	b1cb      	cbz	r3, 80073a2 <__swbuf_r+0x56>
 800736e:	b2ed      	uxtb	r5, r5
 8007370:	0489      	lsls	r1, r1, #18
 8007372:	462f      	mov	r7, r5
 8007374:	d522      	bpl.n	80073bc <__swbuf_r+0x70>
 8007376:	6822      	ldr	r2, [r4, #0]
 8007378:	6961      	ldr	r1, [r4, #20]
 800737a:	1ad3      	subs	r3, r2, r3
 800737c:	4299      	cmp	r1, r3
 800737e:	dd29      	ble.n	80073d4 <__swbuf_r+0x88>
 8007380:	3301      	adds	r3, #1
 8007382:	68a1      	ldr	r1, [r4, #8]
 8007384:	1c50      	adds	r0, r2, #1
 8007386:	3901      	subs	r1, #1
 8007388:	60a1      	str	r1, [r4, #8]
 800738a:	6020      	str	r0, [r4, #0]
 800738c:	7015      	strb	r5, [r2, #0]
 800738e:	6962      	ldr	r2, [r4, #20]
 8007390:	429a      	cmp	r2, r3
 8007392:	d02a      	beq.n	80073ea <__swbuf_r+0x9e>
 8007394:	89a3      	ldrh	r3, [r4, #12]
 8007396:	07db      	lsls	r3, r3, #31
 8007398:	d501      	bpl.n	800739e <__swbuf_r+0x52>
 800739a:	2d0a      	cmp	r5, #10
 800739c:	d025      	beq.n	80073ea <__swbuf_r+0x9e>
 800739e:	4638      	mov	r0, r7
 80073a0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80073a2:	4621      	mov	r1, r4
 80073a4:	4630      	mov	r0, r6
 80073a6:	f7fd fabf 	bl	8004928 <__swsetup_r>
 80073aa:	bb20      	cbnz	r0, 80073f6 <__swbuf_r+0xaa>
 80073ac:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80073b0:	6923      	ldr	r3, [r4, #16]
 80073b2:	b291      	uxth	r1, r2
 80073b4:	b2ed      	uxtb	r5, r5
 80073b6:	0489      	lsls	r1, r1, #18
 80073b8:	462f      	mov	r7, r5
 80073ba:	d4dc      	bmi.n	8007376 <__swbuf_r+0x2a>
 80073bc:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80073be:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80073c2:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80073c6:	81a2      	strh	r2, [r4, #12]
 80073c8:	6822      	ldr	r2, [r4, #0]
 80073ca:	6661      	str	r1, [r4, #100]	; 0x64
 80073cc:	6961      	ldr	r1, [r4, #20]
 80073ce:	1ad3      	subs	r3, r2, r3
 80073d0:	4299      	cmp	r1, r3
 80073d2:	dcd5      	bgt.n	8007380 <__swbuf_r+0x34>
 80073d4:	4621      	mov	r1, r4
 80073d6:	4630      	mov	r0, r6
 80073d8:	f7fe fb68 	bl	8005aac <_fflush_r>
 80073dc:	b958      	cbnz	r0, 80073f6 <__swbuf_r+0xaa>
 80073de:	6822      	ldr	r2, [r4, #0]
 80073e0:	2301      	movs	r3, #1
 80073e2:	e7ce      	b.n	8007382 <__swbuf_r+0x36>
 80073e4:	f7fe fbbe 	bl	8005b64 <__sinit>
 80073e8:	e7b8      	b.n	800735c <__swbuf_r+0x10>
 80073ea:	4621      	mov	r1, r4
 80073ec:	4630      	mov	r0, r6
 80073ee:	f7fe fb5d 	bl	8005aac <_fflush_r>
 80073f2:	2800      	cmp	r0, #0
 80073f4:	d0d3      	beq.n	800739e <__swbuf_r+0x52>
 80073f6:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80073fa:	e7d0      	b.n	800739e <__swbuf_r+0x52>

080073fc <_wcrtomb_r>:
 80073fc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80073fe:	4c11      	ldr	r4, [pc, #68]	; (8007444 <_wcrtomb_r+0x48>)
 8007400:	6824      	ldr	r4, [r4, #0]
 8007402:	b085      	sub	sp, #20
 8007404:	4606      	mov	r6, r0
 8007406:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8007408:	461f      	mov	r7, r3
 800740a:	b151      	cbz	r1, 8007422 <_wcrtomb_r+0x26>
 800740c:	4d0e      	ldr	r5, [pc, #56]	; (8007448 <_wcrtomb_r+0x4c>)
 800740e:	2c00      	cmp	r4, #0
 8007410:	bf08      	it	eq
 8007412:	462c      	moveq	r4, r5
 8007414:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007418:	47a0      	blx	r4
 800741a:	1c43      	adds	r3, r0, #1
 800741c:	d00c      	beq.n	8007438 <_wcrtomb_r+0x3c>
 800741e:	b005      	add	sp, #20
 8007420:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007422:	4a09      	ldr	r2, [pc, #36]	; (8007448 <_wcrtomb_r+0x4c>)
 8007424:	2c00      	cmp	r4, #0
 8007426:	bf08      	it	eq
 8007428:	4614      	moveq	r4, r2
 800742a:	460a      	mov	r2, r1
 800742c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007430:	a901      	add	r1, sp, #4
 8007432:	47a0      	blx	r4
 8007434:	1c43      	adds	r3, r0, #1
 8007436:	d1f2      	bne.n	800741e <_wcrtomb_r+0x22>
 8007438:	2200      	movs	r2, #0
 800743a:	238a      	movs	r3, #138	; 0x8a
 800743c:	603a      	str	r2, [r7, #0]
 800743e:	6033      	str	r3, [r6, #0]
 8007440:	b005      	add	sp, #20
 8007442:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007444:	2000001c 	.word	0x2000001c
 8007448:	2000085c 	.word	0x2000085c

0800744c <__ascii_wctomb>:
 800744c:	b121      	cbz	r1, 8007458 <__ascii_wctomb+0xc>
 800744e:	2aff      	cmp	r2, #255	; 0xff
 8007450:	d804      	bhi.n	800745c <__ascii_wctomb+0x10>
 8007452:	700a      	strb	r2, [r1, #0]
 8007454:	2001      	movs	r0, #1
 8007456:	4770      	bx	lr
 8007458:	4608      	mov	r0, r1
 800745a:	4770      	bx	lr
 800745c:	238a      	movs	r3, #138	; 0x8a
 800745e:	6003      	str	r3, [r0, #0]
 8007460:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007464:	4770      	bx	lr
 8007466:	bf00      	nop

08007468 <_init>:
 8007468:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800746a:	bf00      	nop
 800746c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800746e:	bc08      	pop	{r3}
 8007470:	469e      	mov	lr, r3
 8007472:	4770      	bx	lr

08007474 <_fini>:
 8007474:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007476:	bf00      	nop
 8007478:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800747a:	bc08      	pop	{r3}
 800747c:	469e      	mov	lr, r3
 800747e:	4770      	bx	lr
