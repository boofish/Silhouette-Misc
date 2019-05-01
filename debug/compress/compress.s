
compress.elf:     file format elf32-littlearm


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
 80001d8:	200009f8 	.word	0x200009f8
 80001dc:	00000000 	.word	0x00000000
 80001e0:	0800760c 	.word	0x0800760c

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	200009fc 	.word	0x200009fc
 80001fc:	0800760c 	.word	0x0800760c

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
 80011c8:	f640 20f0 	movw	r0, #2800	; 0xaf0
 80011cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d0:	6801      	ldr	r1, [r0, #0]
 80011d2:	3101      	adds	r1, #1
 80011d4:	6001      	str	r1, [r0, #0]
 80011d6:	4770      	bx	lr

080011d8 <HAL_GetTick>:
 80011d8:	f640 20f0 	movw	r0, #2800	; 0xaf0
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
 80014a8:	f247 6274 	movw	r2, #30324	; 0x7674
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
 800151a:	f240 0048 	movw	r0, #72	; 0x48
 800151e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001522:	f247 626c 	movw	r2, #30316	; 0x766c
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
 8001544:	f240 0048 	movw	r0, #72	; 0x48
 8001548:	f241 0108 	movw	r1, #4104	; 0x1008
 800154c:	f247 626c 	movw	r2, #30316	; 0x766c
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
 8001902:	f640 21f4 	movw	r1, #2804	; 0xaf4
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
 800194c:	f640 20f4 	movw	r0, #2804	; 0xaf4
 8001950:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001954:	f7ff fecd 	bl	80016f2 <HAL_TIM_Base_Start_IT>
 8001958:	b006      	add	sp, #24
 800195a:	bdb0      	pop	{r4, r5, r7, pc}

0800195c <HAL_TIM_PeriodElapsedCallback>:
 800195c:	f7ff bc34 	b.w	80011c8 <HAL_IncTick>

08001960 <TIM6_DAC_IRQHandler>:
 8001960:	f640 20f4 	movw	r0, #2804	; 0xaf4
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
 8001a94:	f247 63a4 	movw	r3, #30372	; 0x76a4
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
 8001abc:	f247 63b4 	movw	r3, #30388	; 0x76b4
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

08001f76 <verify_benchmark>:
 8001f76:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001f7a:	4770      	bx	lr

08001f7c <initialise_benchmark>:
 8001f7c:	4770      	bx	lr

08001f7e <benchmark>:
 8001f7e:	b580      	push	{r7, lr}
 8001f80:	466f      	mov	r7, sp
 8001f82:	f240 0014 	movw	r0, #20
 8001f86:	2110      	movs	r1, #16
 8001f88:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f8c:	6001      	str	r1, [r0, #0]
 8001f8e:	f240 0018 	movw	r0, #24
 8001f92:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8001f96:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f9a:	6001      	str	r1, [r0, #0]
 8001f9c:	f241 2028 	movw	r0, #4648	; 0x1228
 8001fa0:	2132      	movs	r1, #50	; 0x32
 8001fa2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fa6:	6001      	str	r1, [r0, #0]
 8001fa8:	f241 10b4 	movw	r0, #4532	; 0x11b4
 8001fac:	2135      	movs	r1, #53	; 0x35
 8001fae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fb2:	6001      	str	r1, [r0, #0]
 8001fb4:	f640 3038 	movw	r0, #2872	; 0xb38
 8001fb8:	f247 6128 	movw	r1, #30248	; 0x7628
 8001fbc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fc0:	f6c0 0100 	movt	r1, #2048	; 0x800
 8001fc4:	6001      	str	r1, [r0, #0]
 8001fc6:	f241 10b8 	movw	r0, #4536	; 0x11b8
 8001fca:	f640 313c 	movw	r1, #2876	; 0xb3c
 8001fce:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fd2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fd6:	6001      	str	r1, [r0, #0]
 8001fd8:	f000 f802 	bl	8001fe0 <compress>
 8001fdc:	2000      	movs	r0, #0
 8001fde:	bd80      	pop	{r7, pc}

08001fe0 <compress>:
 8001fe0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fe2:	af03      	add	r7, sp, #12
 8001fe4:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001fe8:	b081      	sub	sp, #4
 8001fea:	f640 2030 	movw	r0, #2608	; 0xa30
 8001fee:	f241 2220 	movw	r2, #4640	; 0x1220
 8001ff2:	2100      	movs	r1, #0
 8001ff4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ff8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001ffc:	6001      	str	r1, [r0, #0]
 8001ffe:	2003      	movs	r0, #3
 8002000:	6010      	str	r0, [r2, #0]
 8002002:	f640 202c 	movw	r0, #2604	; 0xa2c
 8002006:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800200a:	6001      	str	r1, [r0, #0]
 800200c:	f640 2020 	movw	r0, #2592	; 0xa20
 8002010:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002014:	6001      	str	r1, [r0, #0]
 8002016:	f640 2024 	movw	r0, #2596	; 0xa24
 800201a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800201e:	6001      	str	r1, [r0, #0]
 8002020:	f240 0130 	movw	r1, #48	; 0x30
 8002024:	2001      	movs	r0, #1
 8002026:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800202a:	6008      	str	r0, [r1, #0]
 800202c:	f240 012c 	movw	r1, #44	; 0x2c
 8002030:	f242 7010 	movw	r0, #10000	; 0x2710
 8002034:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002038:	6008      	str	r0, [r1, #0]
 800203a:	f241 2024 	movw	r0, #4644	; 0x1224
 800203e:	2109      	movs	r1, #9
 8002040:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002044:	6001      	str	r1, [r0, #0]
 8002046:	f241 505c 	movw	r0, #5468	; 0x155c
 800204a:	f240 11ff 	movw	r1, #511	; 0x1ff
 800204e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002052:	6001      	str	r1, [r0, #0]
 8002054:	f240 0028 	movw	r0, #40	; 0x28
 8002058:	f44f 7180 	mov.w	r1, #256	; 0x100
 800205c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002060:	6800      	ldr	r0, [r0, #0]
 8002062:	2800      	cmp	r0, #0
 8002064:	f640 2014 	movw	r0, #2580	; 0xa14
 8002068:	bf18      	it	ne
 800206a:	f240 1101 	movwne	r1, #257	; 0x101
 800206e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002072:	6001      	str	r1, [r0, #0]
 8002074:	f241 2028 	movw	r0, #4648	; 0x1228
 8002078:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800207c:	f8d0 b000 	ldr.w	fp, [r0]
 8002080:	f1bb 0f01 	cmp.w	fp, #1
 8002084:	db18      	blt.n	80020b8 <compress+0xd8>
 8002086:	f241 10b4 	movw	r0, #4532	; 0x11b4
 800208a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800208e:	6801      	ldr	r1, [r0, #0]
 8002090:	3901      	subs	r1, #1
 8002092:	6001      	str	r1, [r0, #0]
 8002094:	db10      	blt.n	80020b8 <compress+0xd8>
 8002096:	f241 2028 	movw	r0, #4648	; 0x1228
 800209a:	f1ab 0b01 	sub.w	fp, fp, #1
 800209e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020a2:	f8c0 b000 	str.w	fp, [r0]
 80020a6:	f640 3038 	movw	r0, #2872	; 0xb38
 80020aa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020ae:	6801      	ldr	r1, [r0, #0]
 80020b0:	1c4a      	adds	r2, r1, #1
 80020b2:	6002      	str	r2, [r0, #0]
 80020b4:	780c      	ldrb	r4, [r1, #0]
 80020b6:	e001      	b.n	80020bc <compress+0xdc>
 80020b8:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80020bc:	f240 001c 	movw	r0, #28
 80020c0:	2600      	movs	r6, #0
 80020c2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020c6:	f8d0 a000 	ldr.w	sl, [r0]
 80020ca:	f5ba 3f80 	cmp.w	sl, #65536	; 0x10000
 80020ce:	da05      	bge.n	80020dc <compress+0xfc>
 80020d0:	4650      	mov	r0, sl
 80020d2:	0040      	lsls	r0, r0, #1
 80020d4:	3601      	adds	r6, #1
 80020d6:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
 80020da:	dbfa      	blt.n	80020d2 <compress+0xf2>
 80020dc:	f1ca 001f 	rsb	r0, sl, #31
 80020e0:	f1aa 0210 	sub.w	r2, sl, #16
 80020e4:	f640 3974 	movw	r9, #2932	; 0xb74
 80020e8:	2800      	cmp	r0, #0
 80020ea:	ea4f 1312 	mov.w	r3, r2, lsr #4
 80020ee:	f2c2 0900 	movt	r9, #8192	; 0x2000
 80020f2:	f04f 0040 	mov.w	r0, #64	; 0x40
 80020f6:	bfc8      	it	gt
 80020f8:	2300      	movgt	r3, #0
 80020fa:	eba2 1503 	sub.w	r5, r2, r3, lsl #4
 80020fe:	eb00 1183 	add.w	r1, r0, r3, lsl #6
 8002102:	22ff      	movs	r2, #255	; 0xff
 8002104:	eb09 0885 	add.w	r8, r9, r5, lsl #2
 8002108:	4640      	mov	r0, r8
 800210a:	f7fe f9f9 	bl	8000500 <__aeabi_memset>
 800210e:	2d01      	cmp	r5, #1
 8002110:	db10      	blt.n	8002134 <compress+0x154>
 8002112:	43e8      	mvns	r0, r5
 8002114:	f06f 0201 	mvn.w	r2, #1
 8002118:	2108      	movs	r1, #8
 800211a:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800211e:	bfb8      	it	lt
 8002120:	4610      	movlt	r0, r2
 8002122:	4428      	add	r0, r5
 8002124:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 8002128:	1a10      	subs	r0, r2, r0
 800212a:	22ff      	movs	r2, #255	; 0xff
 800212c:	eb08 0080 	add.w	r0, r8, r0, lsl #2
 8002130:	f7fe f9e6 	bl	8000500 <__aeabi_memset>
 8002134:	f640 2c2c 	movw	ip, #2604	; 0xa2c
 8002138:	f1bb 0f01 	cmp.w	fp, #1
 800213c:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002140:	f2c0 8129 	blt.w	8002396 <compress+0x3b6>
 8002144:	f640 2e24 	movw	lr, #2596	; 0xa24
 8002148:	f240 0530 	movw	r5, #48	; 0x30
 800214c:	f1c6 0008 	rsb	r0, r6, #8
 8002150:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002154:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002158:	9000      	str	r0, [sp, #0]
 800215a:	e0d9      	b.n	8002310 <compress+0x330>
 800215c:	2e00      	cmp	r6, #0
 800215e:	db13      	blt.n	8002188 <compress+0x1a8>
 8002160:	ebaa 0402 	sub.w	r4, sl, r2
 8002164:	2a00      	cmp	r2, #0
 8002166:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
 800216a:	bf08      	it	eq
 800216c:	2401      	moveq	r4, #1
 800216e:	1b12      	subs	r2, r2, r4
 8002170:	2a00      	cmp	r2, #0
 8002172:	bfb8      	it	lt
 8002174:	4452      	addlt	r2, sl
 8002176:	f859 5022 	ldr.w	r5, [r9, r2, lsl #2]
 800217a:	429d      	cmp	r5, r3
 800217c:	d04c      	beq.n	8002218 <compress+0x238>
 800217e:	2d01      	cmp	r5, #1
 8002180:	db02      	blt.n	8002188 <compress+0x1a8>
 8002182:	3601      	adds	r6, #1
 8002184:	428e      	cmp	r6, r1
 8002186:	dbf2      	blt.n	800216e <compress+0x18e>
 8002188:	f8dc 6000 	ldr.w	r6, [ip]
 800218c:	f640 2414 	movw	r4, #2580	; 0xa14
 8002190:	f240 0518 	movw	r5, #24
 8002194:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002198:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800219c:	682d      	ldr	r5, [r5, #0]
 800219e:	3601      	adds	r6, #1
 80021a0:	f8cc 6000 	str.w	r6, [ip]
 80021a4:	6826      	ldr	r6, [r4, #0]
 80021a6:	42ae      	cmp	r6, r5
 80021a8:	da0a      	bge.n	80021c0 <compress+0x1e0>
 80021aa:	1c70      	adds	r0, r6, #1
 80021ac:	f849 3022 	str.w	r3, [r9, r2, lsl #2]
 80021b0:	6020      	str	r0, [r4, #0]
 80021b2:	f241 202c 	movw	r0, #4652	; 0x122c
 80021b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021ba:	f820 6012 	strh.w	r6, [r0, r2, lsl #1]
 80021be:	e029      	b.n	8002214 <compress+0x234>
 80021c0:	f240 022c 	movw	r2, #44	; 0x2c
 80021c4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021c8:	6812      	ldr	r2, [r2, #0]
 80021ca:	4290      	cmp	r0, r2
 80021cc:	db22      	blt.n	8002214 <compress+0x234>
 80021ce:	f240 0228 	movw	r2, #40	; 0x28
 80021d2:	f240 0530 	movw	r5, #48	; 0x30
 80021d6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021da:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80021de:	6812      	ldr	r2, [r2, #0]
 80021e0:	b342      	cbz	r2, 8002234 <compress+0x254>
 80021e2:	f242 7211 	movw	r2, #10001	; 0x2711
 80021e6:	f240 032c 	movw	r3, #44	; 0x2c
 80021ea:	440a      	add	r2, r1
 80021ec:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80021f0:	601a      	str	r2, [r3, #0]
 80021f2:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80021f6:	f2c0 027f 	movt	r2, #127	; 0x7f
 80021fa:	4291      	cmp	r1, r2
 80021fc:	db1f      	blt.n	800223e <compress+0x25e>
 80021fe:	f241 2120 	movw	r1, #4640	; 0x1220
 8002202:	2200      	movs	r2, #0
 8002204:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002208:	6809      	ldr	r1, [r1, #0]
 800220a:	ebb2 2f21 	cmp.w	r2, r1, asr #8
 800220e:	d07c      	beq.n	800230a <compress+0x32a>
 8002210:	1209      	asrs	r1, r1, #8
 8002212:	e01a      	b.n	800224a <compress+0x26a>
 8002214:	4644      	mov	r4, r8
 8002216:	e005      	b.n	8002224 <compress+0x244>
 8002218:	f241 202c 	movw	r0, #4652	; 0x122c
 800221c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002220:	f830 4012 	ldrh.w	r4, [r0, r2, lsl #1]
 8002224:	f240 0530 	movw	r5, #48	; 0x30
 8002228:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800222c:	f1bb 0f00 	cmp.w	fp, #0
 8002230:	dc6e      	bgt.n	8002310 <compress+0x330>
 8002232:	e0a8      	b.n	8002386 <compress+0x3a6>
 8002234:	4644      	mov	r4, r8
 8002236:	f1bb 0f00 	cmp.w	fp, #0
 800223a:	dc69      	bgt.n	8002310 <compress+0x330>
 800223c:	e0a3      	b.n	8002386 <compress+0x3a6>
 800223e:	f241 2120 	movw	r1, #4640	; 0x1220
 8002242:	0200      	lsls	r0, r0, #8
 8002244:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002248:	6809      	ldr	r1, [r1, #0]
 800224a:	fb90 f0f1 	sdiv	r0, r0, r1
 800224e:	f8de 1000 	ldr.w	r1, [lr]
 8002252:	4288      	cmp	r0, r1
 8002254:	dd06      	ble.n	8002264 <compress+0x284>
 8002256:	f8ce 0000 	str.w	r0, [lr]
 800225a:	4644      	mov	r4, r8
 800225c:	f1bb 0f00 	cmp.w	fp, #0
 8002260:	dc56      	bgt.n	8002310 <compress+0x330>
 8002262:	e090      	b.n	8002386 <compress+0x3a6>
 8002264:	2000      	movs	r0, #0
 8002266:	f8ce 0000 	str.w	r0, [lr]
 800226a:	f240 001c 	movw	r0, #28
 800226e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002272:	6800      	ldr	r0, [r0, #0]
 8002274:	f1c0 011f 	rsb	r1, r0, #31
 8002278:	3810      	subs	r0, #16
 800227a:	2900      	cmp	r1, #0
 800227c:	ea4f 1210 	mov.w	r2, r0, lsr #4
 8002280:	f04f 0140 	mov.w	r1, #64	; 0x40
 8002284:	bfc8      	it	gt
 8002286:	2200      	movgt	r2, #0
 8002288:	eba0 1602 	sub.w	r6, r0, r2, lsl #4
 800228c:	eb01 1182 	add.w	r1, r1, r2, lsl #6
 8002290:	22ff      	movs	r2, #255	; 0xff
 8002292:	eb09 0486 	add.w	r4, r9, r6, lsl #2
 8002296:	4620      	mov	r0, r4
 8002298:	f7fe f932 	bl	8000500 <__aeabi_memset>
 800229c:	2e01      	cmp	r6, #1
 800229e:	db10      	blt.n	80022c2 <compress+0x2e2>
 80022a0:	43f0      	mvns	r0, r6
 80022a2:	f06f 0201 	mvn.w	r2, #1
 80022a6:	2108      	movs	r1, #8
 80022a8:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80022ac:	bfb8      	it	lt
 80022ae:	4610      	movlt	r0, r2
 80022b0:	4430      	add	r0, r6
 80022b2:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 80022b6:	1a10      	subs	r0, r2, r0
 80022b8:	22ff      	movs	r2, #255	; 0xff
 80022ba:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 80022be:	f7fe f91f 	bl	8000500 <__aeabi_memset>
 80022c2:	f640 2014 	movw	r0, #2580	; 0xa14
 80022c6:	f240 1101 	movw	r1, #257	; 0x101
 80022ca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022ce:	6001      	str	r1, [r0, #0]
 80022d0:	f640 2020 	movw	r0, #2592	; 0xa20
 80022d4:	2101      	movs	r1, #1
 80022d6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022da:	6001      	str	r1, [r0, #0]
 80022dc:	f44f 7080 	mov.w	r0, #256	; 0x100
 80022e0:	f000 f863 	bl	80023aa <output>
 80022e4:	f241 2028 	movw	r0, #4648	; 0x1228
 80022e8:	f640 2c2c 	movw	ip, #2604	; 0xa2c
 80022ec:	f640 2e24 	movw	lr, #2596	; 0xa24
 80022f0:	4644      	mov	r4, r8
 80022f2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022f6:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80022fa:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80022fe:	f8d0 b000 	ldr.w	fp, [r0]
 8002302:	f1bb 0f00 	cmp.w	fp, #0
 8002306:	dc03      	bgt.n	8002310 <compress+0x330>
 8002308:	e03d      	b.n	8002386 <compress+0x3a6>
 800230a:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000
 800230e:	e79e      	b.n	800224e <compress+0x26e>
 8002310:	f241 10b4 	movw	r0, #4532	; 0x11b4
 8002314:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002318:	4601      	mov	r1, r0
 800231a:	6808      	ldr	r0, [r1, #0]
 800231c:	3801      	subs	r0, #1
 800231e:	6008      	str	r0, [r1, #0]
 8002320:	db12      	blt.n	8002348 <compress+0x368>
 8002322:	f241 2028 	movw	r0, #4648	; 0x1228
 8002326:	f1ab 0b01 	sub.w	fp, fp, #1
 800232a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800232e:	f8c0 b000 	str.w	fp, [r0]
 8002332:	f640 3038 	movw	r0, #2872	; 0xb38
 8002336:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800233a:	4602      	mov	r2, r0
 800233c:	6810      	ldr	r0, [r2, #0]
 800233e:	1c41      	adds	r1, r0, #1
 8002340:	6011      	str	r1, [r2, #0]
 8002342:	f890 8000 	ldrb.w	r8, [r0]
 8002346:	e001      	b.n	800234c <compress+0x36c>
 8002348:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
 800234c:	9a00      	ldr	r2, [sp, #0]
 800234e:	f240 0314 	movw	r3, #20
 8002352:	6829      	ldr	r1, [r5, #0]
 8002354:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002358:	681b      	ldr	r3, [r3, #0]
 800235a:	fa08 f202 	lsl.w	r2, r8, r2
 800235e:	1c48      	adds	r0, r1, #1
 8002360:	4062      	eors	r2, r4
 8002362:	6028      	str	r0, [r5, #0]
 8002364:	f859 6022 	ldr.w	r6, [r9, r2, lsl #2]
 8002368:	fa08 f303 	lsl.w	r3, r8, r3
 800236c:	4423      	add	r3, r4
 800236e:	429e      	cmp	r6, r3
 8002370:	f47f aef4 	bne.w	800215c <compress+0x17c>
 8002374:	f241 202c 	movw	r0, #4652	; 0x122c
 8002378:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800237c:	f830 4012 	ldrh.w	r4, [r0, r2, lsl #1]
 8002380:	f1bb 0f00 	cmp.w	fp, #0
 8002384:	dcc4      	bgt.n	8002310 <compress+0x330>
 8002386:	f241 2120 	movw	r1, #4640	; 0x1220
 800238a:	6828      	ldr	r0, [r5, #0]
 800238c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002390:	6809      	ldr	r1, [r1, #0]
 8002392:	4281      	cmp	r1, r0
 8002394:	dd05      	ble.n	80023a2 <compress+0x3c2>
 8002396:	f640 2018 	movw	r0, #2584	; 0xa18
 800239a:	2102      	movs	r1, #2
 800239c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023a0:	6001      	str	r1, [r0, #0]
 80023a2:	b001      	add	sp, #4
 80023a4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80023a8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080023aa <output>:
 80023aa:	b5f0      	push	{r4, r5, r6, r7, lr}
 80023ac:	af03      	add	r7, sp, #12
 80023ae:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 80023b2:	f640 2e30 	movw	lr, #2608	; 0xa30
 80023b6:	2800      	cmp	r0, #0
 80023b8:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80023bc:	f8de 1000 	ldr.w	r1, [lr]
 80023c0:	f2c0 8119 	blt.w	80025f6 <output+0x24c>
 80023c4:	f241 584c 	movw	r8, #5452	; 0x154c
 80023c8:	f240 063d 	movw	r6, #61	; 0x3d
 80023cc:	10ca      	asrs	r2, r1, #3
 80023ce:	f001 0507 	and.w	r5, r1, #7
 80023d2:	f241 2c24 	movw	ip, #4644	; 0x1224
 80023d6:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80023da:	f2c2 0800 	movt	r8, #8192	; 0x2000
 80023de:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80023e2:	f818 2002 	ldrb.w	r2, [r8, r2]
 80023e6:	5d76      	ldrb	r6, [r6, r5]
 80023e8:	4032      	ands	r2, r6
 80023ea:	fa00 f605 	lsl.w	r6, r0, r5
 80023ee:	4332      	orrs	r2, r6
 80023f0:	f240 0634 	movw	r6, #52	; 0x34
 80023f4:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80023f8:	5d76      	ldrb	r6, [r6, r5]
 80023fa:	ea02 0306 	and.w	r3, r2, r6
 80023fe:	f8dc 2000 	ldr.w	r2, [ip]
 8002402:	eb08 06e1 	add.w	r6, r8, r1, asr #3
 8002406:	4634      	mov	r4, r6
 8002408:	f804 3b01 	strb.w	r3, [r4], #1
 800240c:	f1c5 0308 	rsb	r3, r5, #8
 8002410:	4118      	asrs	r0, r3
 8002412:	1ad5      	subs	r5, r2, r3
 8002414:	2d08      	cmp	r5, #8
 8002416:	bfa1      	itttt	ge
 8002418:	7070      	strbge	r0, [r6, #1]
 800241a:	3d08      	subge	r5, #8
 800241c:	1200      	asrge	r0, r0, #8
 800241e:	1cb4      	addge	r4, r6, #2
 8002420:	2d00      	cmp	r5, #0
 8002422:	bf18      	it	ne
 8002424:	7020      	strbne	r0, [r4, #0]
 8002426:	188c      	adds	r4, r1, r2
 8002428:	ebb4 0fc2 	cmp.w	r4, r2, lsl #3
 800242c:	f8ce 4000 	str.w	r4, [lr]
 8002430:	f040 809c 	bne.w	800256c <output+0x1c2>
 8002434:	f241 2020 	movw	r0, #4640	; 0x1220
 8002438:	2a01      	cmp	r2, #1
 800243a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800243e:	6801      	ldr	r1, [r0, #0]
 8002440:	4411      	add	r1, r2
 8002442:	6001      	str	r1, [r0, #0]
 8002444:	f241 10b8 	movw	r0, #4536	; 0x11b8
 8002448:	f898 1000 	ldrb.w	r1, [r8]
 800244c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002450:	6803      	ldr	r3, [r0, #0]
 8002452:	f103 0401 	add.w	r4, r3, #1
 8002456:	6004      	str	r4, [r0, #0]
 8002458:	7019      	strb	r1, [r3, #0]
 800245a:	f000 8084 	beq.w	8002566 <output+0x1bc>
 800245e:	6803      	ldr	r3, [r0, #0]
 8002460:	f898 1001 	ldrb.w	r1, [r8, #1]
 8002464:	2a02      	cmp	r2, #2
 8002466:	f103 0401 	add.w	r4, r3, #1
 800246a:	6004      	str	r4, [r0, #0]
 800246c:	7019      	strb	r1, [r3, #0]
 800246e:	d07a      	beq.n	8002566 <output+0x1bc>
 8002470:	6803      	ldr	r3, [r0, #0]
 8002472:	f898 1002 	ldrb.w	r1, [r8, #2]
 8002476:	2a03      	cmp	r2, #3
 8002478:	f103 0401 	add.w	r4, r3, #1
 800247c:	6004      	str	r4, [r0, #0]
 800247e:	7019      	strb	r1, [r3, #0]
 8002480:	d071      	beq.n	8002566 <output+0x1bc>
 8002482:	6803      	ldr	r3, [r0, #0]
 8002484:	f898 1003 	ldrb.w	r1, [r8, #3]
 8002488:	2a04      	cmp	r2, #4
 800248a:	f103 0401 	add.w	r4, r3, #1
 800248e:	6004      	str	r4, [r0, #0]
 8002490:	7019      	strb	r1, [r3, #0]
 8002492:	d068      	beq.n	8002566 <output+0x1bc>
 8002494:	6803      	ldr	r3, [r0, #0]
 8002496:	f898 1004 	ldrb.w	r1, [r8, #4]
 800249a:	2a05      	cmp	r2, #5
 800249c:	f103 0401 	add.w	r4, r3, #1
 80024a0:	6004      	str	r4, [r0, #0]
 80024a2:	7019      	strb	r1, [r3, #0]
 80024a4:	d05f      	beq.n	8002566 <output+0x1bc>
 80024a6:	6803      	ldr	r3, [r0, #0]
 80024a8:	f898 1005 	ldrb.w	r1, [r8, #5]
 80024ac:	2a06      	cmp	r2, #6
 80024ae:	f103 0401 	add.w	r4, r3, #1
 80024b2:	6004      	str	r4, [r0, #0]
 80024b4:	7019      	strb	r1, [r3, #0]
 80024b6:	d056      	beq.n	8002566 <output+0x1bc>
 80024b8:	6803      	ldr	r3, [r0, #0]
 80024ba:	f898 1006 	ldrb.w	r1, [r8, #6]
 80024be:	2a07      	cmp	r2, #7
 80024c0:	f103 0401 	add.w	r4, r3, #1
 80024c4:	6004      	str	r4, [r0, #0]
 80024c6:	7019      	strb	r1, [r3, #0]
 80024c8:	d04d      	beq.n	8002566 <output+0x1bc>
 80024ca:	6803      	ldr	r3, [r0, #0]
 80024cc:	f898 1007 	ldrb.w	r1, [r8, #7]
 80024d0:	2a08      	cmp	r2, #8
 80024d2:	f103 0401 	add.w	r4, r3, #1
 80024d6:	6004      	str	r4, [r0, #0]
 80024d8:	7019      	strb	r1, [r3, #0]
 80024da:	d044      	beq.n	8002566 <output+0x1bc>
 80024dc:	6803      	ldr	r3, [r0, #0]
 80024de:	f898 1008 	ldrb.w	r1, [r8, #8]
 80024e2:	2a09      	cmp	r2, #9
 80024e4:	f103 0401 	add.w	r4, r3, #1
 80024e8:	6004      	str	r4, [r0, #0]
 80024ea:	7019      	strb	r1, [r3, #0]
 80024ec:	d03b      	beq.n	8002566 <output+0x1bc>
 80024ee:	6803      	ldr	r3, [r0, #0]
 80024f0:	f898 1009 	ldrb.w	r1, [r8, #9]
 80024f4:	2a0a      	cmp	r2, #10
 80024f6:	f103 0401 	add.w	r4, r3, #1
 80024fa:	6004      	str	r4, [r0, #0]
 80024fc:	7019      	strb	r1, [r3, #0]
 80024fe:	d032      	beq.n	8002566 <output+0x1bc>
 8002500:	6803      	ldr	r3, [r0, #0]
 8002502:	f898 100a 	ldrb.w	r1, [r8, #10]
 8002506:	2a0b      	cmp	r2, #11
 8002508:	f103 0401 	add.w	r4, r3, #1
 800250c:	6004      	str	r4, [r0, #0]
 800250e:	7019      	strb	r1, [r3, #0]
 8002510:	d029      	beq.n	8002566 <output+0x1bc>
 8002512:	6803      	ldr	r3, [r0, #0]
 8002514:	f898 100b 	ldrb.w	r1, [r8, #11]
 8002518:	2a0c      	cmp	r2, #12
 800251a:	f103 0401 	add.w	r4, r3, #1
 800251e:	6004      	str	r4, [r0, #0]
 8002520:	7019      	strb	r1, [r3, #0]
 8002522:	d020      	beq.n	8002566 <output+0x1bc>
 8002524:	6803      	ldr	r3, [r0, #0]
 8002526:	f898 100c 	ldrb.w	r1, [r8, #12]
 800252a:	2a0d      	cmp	r2, #13
 800252c:	f103 0401 	add.w	r4, r3, #1
 8002530:	6004      	str	r4, [r0, #0]
 8002532:	7019      	strb	r1, [r3, #0]
 8002534:	d017      	beq.n	8002566 <output+0x1bc>
 8002536:	6803      	ldr	r3, [r0, #0]
 8002538:	f898 100d 	ldrb.w	r1, [r8, #13]
 800253c:	2a0e      	cmp	r2, #14
 800253e:	f103 0401 	add.w	r4, r3, #1
 8002542:	6004      	str	r4, [r0, #0]
 8002544:	7019      	strb	r1, [r3, #0]
 8002546:	d00e      	beq.n	8002566 <output+0x1bc>
 8002548:	6803      	ldr	r3, [r0, #0]
 800254a:	f898 100e 	ldrb.w	r1, [r8, #14]
 800254e:	2a0f      	cmp	r2, #15
 8002550:	f103 0401 	add.w	r4, r3, #1
 8002554:	6004      	str	r4, [r0, #0]
 8002556:	7019      	strb	r1, [r3, #0]
 8002558:	d005      	beq.n	8002566 <output+0x1bc>
 800255a:	6802      	ldr	r2, [r0, #0]
 800255c:	f898 100f 	ldrb.w	r1, [r8, #15]
 8002560:	1c53      	adds	r3, r2, #1
 8002562:	6003      	str	r3, [r0, #0]
 8002564:	7011      	strb	r1, [r2, #0]
 8002566:	2400      	movs	r4, #0
 8002568:	f8ce 4000 	str.w	r4, [lr]
 800256c:	f241 595c 	movw	r9, #5468	; 0x155c
 8002570:	f640 2514 	movw	r5, #2580	; 0xa14
 8002574:	f640 2220 	movw	r2, #2592	; 0xa20
 8002578:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800257c:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8002580:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002584:	f8d9 3000 	ldr.w	r3, [r9]
 8002588:	682d      	ldr	r5, [r5, #0]
 800258a:	6811      	ldr	r1, [r2, #0]
 800258c:	429d      	cmp	r5, r3
 800258e:	bfd8      	it	le
 8002590:	2901      	cmple	r1, #1
 8002592:	db57      	blt.n	8002644 <output+0x29a>
 8002594:	2c01      	cmp	r4, #1
 8002596:	db1e      	blt.n	80025d6 <output+0x22c>
 8002598:	f8dc 4000 	ldr.w	r4, [ip]
 800259c:	2c01      	cmp	r4, #1
 800259e:	db13      	blt.n	80025c8 <output+0x21e>
 80025a0:	f241 15b8 	movw	r5, #4536	; 0x11b8
 80025a4:	2100      	movs	r1, #0
 80025a6:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80025aa:	682e      	ldr	r6, [r5, #0]
 80025ac:	f818 3001 	ldrb.w	r3, [r8, r1]
 80025b0:	3101      	adds	r1, #1
 80025b2:	42a1      	cmp	r1, r4
 80025b4:	f106 0001 	add.w	r0, r6, #1
 80025b8:	6028      	str	r0, [r5, #0]
 80025ba:	7033      	strb	r3, [r6, #0]
 80025bc:	bfb8      	it	lt
 80025be:	2910      	cmplt	r1, #16
 80025c0:	dbf3      	blt.n	80025aa <output+0x200>
 80025c2:	6811      	ldr	r1, [r2, #0]
 80025c4:	f8dc 4000 	ldr.w	r4, [ip]
 80025c8:	f241 2020 	movw	r0, #4640	; 0x1220
 80025cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80025d0:	6803      	ldr	r3, [r0, #0]
 80025d2:	4423      	add	r3, r4
 80025d4:	6003      	str	r3, [r0, #0]
 80025d6:	2300      	movs	r3, #0
 80025d8:	2900      	cmp	r1, #0
 80025da:	f8ce 3000 	str.w	r3, [lr]
 80025de:	d034      	beq.n	800264a <output+0x2a0>
 80025e0:	2009      	movs	r0, #9
 80025e2:	6013      	str	r3, [r2, #0]
 80025e4:	f8cc 0000 	str.w	r0, [ip]
 80025e8:	f240 10ff 	movw	r0, #511	; 0x1ff
 80025ec:	f8c9 0000 	str.w	r0, [r9]
 80025f0:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 80025f4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80025f6:	1dc8      	adds	r0, r1, #7
 80025f8:	2901      	cmp	r1, #1
 80025fa:	ea4f 72e0 	mov.w	r2, r0, asr #31
 80025fe:	eb00 7052 	add.w	r0, r0, r2, lsr #29
 8002602:	ea4f 00e0 	mov.w	r0, r0, asr #3
 8002606:	db13      	blt.n	8002630 <output+0x286>
 8002608:	f241 524c 	movw	r2, #5452	; 0x154c
 800260c:	f241 13b8 	movw	r3, #4536	; 0x11b8
 8002610:	2100      	movs	r1, #0
 8002612:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002616:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800261a:	681d      	ldr	r5, [r3, #0]
 800261c:	5c56      	ldrb	r6, [r2, r1]
 800261e:	3101      	adds	r1, #1
 8002620:	4281      	cmp	r1, r0
 8002622:	f105 0401 	add.w	r4, r5, #1
 8002626:	601c      	str	r4, [r3, #0]
 8002628:	702e      	strb	r6, [r5, #0]
 800262a:	bfb8      	it	lt
 800262c:	2910      	cmplt	r1, #16
 800262e:	dbf4      	blt.n	800261a <output+0x270>
 8002630:	f241 2120 	movw	r1, #4640	; 0x1220
 8002634:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002638:	680a      	ldr	r2, [r1, #0]
 800263a:	4410      	add	r0, r2
 800263c:	6008      	str	r0, [r1, #0]
 800263e:	2000      	movs	r0, #0
 8002640:	f8ce 0000 	str.w	r0, [lr]
 8002644:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002648:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800264a:	f240 0214 	movw	r2, #20
 800264e:	f8dc 0000 	ldr.w	r0, [ip]
 8002652:	f240 0318 	movw	r3, #24
 8002656:	2101      	movs	r1, #1
 8002658:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800265c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002660:	6812      	ldr	r2, [r2, #0]
 8002662:	681b      	ldr	r3, [r3, #0]
 8002664:	3001      	adds	r0, #1
 8002666:	4081      	lsls	r1, r0
 8002668:	f8cc 0000 	str.w	r0, [ip]
 800266c:	4290      	cmp	r0, r2
 800266e:	bf18      	it	ne
 8002670:	1e4b      	subne	r3, r1, #1
 8002672:	f8c9 3000 	str.w	r3, [r9]
 8002676:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 800267a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800267c <__io_putchar>:
 800267c:	b580      	push	{r7, lr}
 800267e:	466f      	mov	r7, sp
 8002680:	b082      	sub	sp, #8
 8002682:	9001      	str	r0, [sp, #4]
 8002684:	f640 2034 	movw	r0, #2612	; 0xa34
 8002688:	a901      	add	r1, sp, #4
 800268a:	2201      	movs	r2, #1
 800268c:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002690:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002694:	f7ff fb81 	bl	8001d9a <HAL_UART_Transmit>
 8002698:	9801      	ldr	r0, [sp, #4]
 800269a:	b002      	add	sp, #8
 800269c:	bd80      	pop	{r7, pc}

0800269e <main>:
 800269e:	b5b0      	push	{r4, r5, r7, lr}
 80026a0:	af02      	add	r7, sp, #8
 80026a2:	f640 2134 	movw	r1, #2612	; 0xa34
 80026a6:	f643 0000 	movw	r0, #14336	; 0x3800
 80026aa:	220c      	movs	r2, #12
 80026ac:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80026b0:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80026b4:	6008      	str	r0, [r1, #0]
 80026b6:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80026ba:	6048      	str	r0, [r1, #4]
 80026bc:	2000      	movs	r0, #0
 80026be:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80026c2:	6108      	str	r0, [r1, #16]
 80026c4:	6248      	str	r0, [r1, #36]	; 0x24
 80026c6:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80026ca:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80026ce:	2000      	movs	r0, #0
 80026d0:	f7ff fbf8 	bl	8001ec4 <BSP_COM_Init>
 80026d4:	f7ff fc52 	bl	8001f7c <initialise_benchmark>
 80026d8:	f247 60c4 	movw	r0, #30404	; 0x76c4
 80026dc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80026e0:	f000 f948 	bl	8002974 <printf>
 80026e4:	f247 706f 	movw	r0, #30575	; 0x776f
 80026e8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80026ec:	f000 f9a4 	bl	8002a38 <puts>
 80026f0:	f7fe fd5a 	bl	80011a8 <HAL_Init>
 80026f4:	f7fe fd70 	bl	80011d8 <HAL_GetTick>
 80026f8:	4604      	mov	r4, r0
 80026fa:	f7ff fc40 	bl	8001f7e <benchmark>
 80026fe:	4605      	mov	r5, r0
 8002700:	f7fe fd6a 	bl	80011d8 <HAL_GetTick>
 8002704:	1b04      	subs	r4, r0, r4
 8002706:	4628      	mov	r0, r5
 8002708:	f7ff fc35 	bl	8001f76 <verify_benchmark>
 800270c:	1c41      	adds	r1, r0, #1
 800270e:	d006      	beq.n	800271e <main+0x80>
 8002710:	2801      	cmp	r0, #1
 8002712:	d109      	bne.n	8002728 <main+0x8a>
 8002714:	f247 60db 	movw	r0, #30427	; 0x76db
 8002718:	f6c0 0000 	movt	r0, #2048	; 0x800
 800271c:	e008      	b.n	8002730 <main+0x92>
 800271e:	f247 60ff 	movw	r0, #30463	; 0x76ff
 8002722:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002726:	e003      	b.n	8002730 <main+0x92>
 8002728:	f247 7034 	movw	r0, #30516	; 0x7734
 800272c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002730:	4621      	mov	r1, r4
 8002732:	f000 f91f 	bl	8002974 <printf>
 8002736:	2000      	movs	r0, #0
 8002738:	bdb0      	pop	{r4, r5, r7, pc}

0800273a <SysTick_Handler>:
 800273a:	b580      	push	{r7, lr}
 800273c:	466f      	mov	r7, sp
 800273e:	f7fe fd43 	bl	80011c8 <HAL_IncTick>
 8002742:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002746:	f7fe bd9d 	b.w	8001284 <HAL_SYSTICK_IRQHandler>

0800274a <_read>:
 800274a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800274c:	af03      	add	r7, sp, #12
 800274e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002752:	4614      	mov	r4, r2
 8002754:	460d      	mov	r5, r1
 8002756:	2c01      	cmp	r4, #1
 8002758:	db06      	blt.n	8002768 <_read+0x1e>
 800275a:	4626      	mov	r6, r4
 800275c:	f3af 8000 	nop.w
 8002760:	f805 0b01 	strb.w	r0, [r5], #1
 8002764:	3e01      	subs	r6, #1
 8002766:	d1f9      	bne.n	800275c <_read+0x12>
 8002768:	4620      	mov	r0, r4
 800276a:	f85d bb04 	ldr.w	fp, [sp], #4
 800276e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002770 <_write>:
 8002770:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002772:	af03      	add	r7, sp, #12
 8002774:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002778:	4614      	mov	r4, r2
 800277a:	460d      	mov	r5, r1
 800277c:	2c01      	cmp	r4, #1
 800277e:	db06      	blt.n	800278e <_write+0x1e>
 8002780:	4626      	mov	r6, r4
 8002782:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002786:	f7ff ff79 	bl	800267c <__io_putchar>
 800278a:	3e01      	subs	r6, #1
 800278c:	d1f9      	bne.n	8002782 <_write+0x12>
 800278e:	4620      	mov	r0, r4
 8002790:	f85d bb04 	ldr.w	fp, [sp], #4
 8002794:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002796 <_sbrk>:
 8002796:	f640 22b8 	movw	r2, #2744	; 0xab8
 800279a:	4601      	mov	r1, r0
 800279c:	466b      	mov	r3, sp
 800279e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80027a2:	6810      	ldr	r0, [r2, #0]
 80027a4:	2800      	cmp	r0, #0
 80027a6:	bf02      	ittt	eq
 80027a8:	f241 5090 	movweq	r0, #5520	; 0x1590
 80027ac:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80027b0:	6010      	streq	r0, [r2, #0]
 80027b2:	4401      	add	r1, r0
 80027b4:	4299      	cmp	r1, r3
 80027b6:	bf9c      	itt	ls
 80027b8:	6011      	strls	r1, [r2, #0]
 80027ba:	4770      	bxls	lr
 80027bc:	b580      	push	{r7, lr}
 80027be:	466f      	mov	r7, sp
 80027c0:	f000 f864 	bl	800288c <__errno>
 80027c4:	210c      	movs	r1, #12
 80027c6:	6001      	str	r1, [r0, #0]
 80027c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80027cc:	bd80      	pop	{r7, pc}

080027ce <_close>:
 80027ce:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80027d2:	4770      	bx	lr

080027d4 <_fstat>:
 80027d4:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80027d8:	6048      	str	r0, [r1, #4]
 80027da:	2000      	movs	r0, #0
 80027dc:	4770      	bx	lr

080027de <_isatty>:
 80027de:	2001      	movs	r0, #1
 80027e0:	4770      	bx	lr

080027e2 <_lseek>:
 80027e2:	2000      	movs	r0, #0
 80027e4:	4770      	bx	lr

080027e6 <SystemInit>:
 80027e6:	f64e 5088 	movw	r0, #60808	; 0xed88
 80027ea:	f04f 0c00 	mov.w	ip, #0
 80027ee:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80027f2:	6801      	ldr	r1, [r0, #0]
 80027f4:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80027f8:	6001      	str	r1, [r0, #0]
 80027fa:	f241 0100 	movw	r1, #4096	; 0x1000
 80027fe:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002802:	680a      	ldr	r2, [r1, #0]
 8002804:	f042 0201 	orr.w	r2, r2, #1
 8002808:	600a      	str	r2, [r1, #0]
 800280a:	f8c1 c008 	str.w	ip, [r1, #8]
 800280e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002812:	680b      	ldr	r3, [r1, #0]
 8002814:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002818:	401a      	ands	r2, r3
 800281a:	600a      	str	r2, [r1, #0]
 800281c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002820:	60ca      	str	r2, [r1, #12]
 8002822:	680a      	ldr	r2, [r1, #0]
 8002824:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002828:	600a      	str	r2, [r1, #0]
 800282a:	f8c1 c018 	str.w	ip, [r1, #24]
 800282e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002832:	f840 1c80 	str.w	r1, [r0, #-128]
 8002836:	4770      	bx	lr

08002838 <Reset_Handler>:
 8002838:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002870 <LoopForever+0x2>
 800283c:	2100      	movs	r1, #0
 800283e:	e003      	b.n	8002848 <LoopCopyDataInit>

08002840 <CopyDataInit>:
 8002840:	4b0c      	ldr	r3, [pc, #48]	; (8002874 <LoopForever+0x6>)
 8002842:	585b      	ldr	r3, [r3, r1]
 8002844:	5043      	str	r3, [r0, r1]
 8002846:	3104      	adds	r1, #4

08002848 <LoopCopyDataInit>:
 8002848:	480b      	ldr	r0, [pc, #44]	; (8002878 <LoopForever+0xa>)
 800284a:	4b0c      	ldr	r3, [pc, #48]	; (800287c <LoopForever+0xe>)
 800284c:	1842      	adds	r2, r0, r1
 800284e:	429a      	cmp	r2, r3
 8002850:	d3f6      	bcc.n	8002840 <CopyDataInit>
 8002852:	4a0b      	ldr	r2, [pc, #44]	; (8002880 <LoopForever+0x12>)
 8002854:	e002      	b.n	800285c <LoopFillZerobss>

08002856 <FillZerobss>:
 8002856:	2300      	movs	r3, #0
 8002858:	f842 3b04 	str.w	r3, [r2], #4

0800285c <LoopFillZerobss>:
 800285c:	4b09      	ldr	r3, [pc, #36]	; (8002884 <LoopForever+0x16>)
 800285e:	429a      	cmp	r2, r3
 8002860:	d3f9      	bcc.n	8002856 <FillZerobss>
 8002862:	f7ff ffc0 	bl	80027e6 <SystemInit>
 8002866:	f000 f817 	bl	8002898 <__libc_init_array>
 800286a:	f7ff ff18 	bl	800269e <main>

0800286e <LoopForever>:
 800286e:	e7fe      	b.n	800286e <LoopForever>
 8002870:	20018000 	.word	0x20018000
 8002874:	08007a18 	.word	0x08007a18
 8002878:	20000000 	.word	0x20000000
 800287c:	200009f8 	.word	0x200009f8
 8002880:	200009f8 	.word	0x200009f8
 8002884:	2000158c 	.word	0x2000158c

08002888 <ADC1_2_IRQHandler>:
 8002888:	e7fe      	b.n	8002888 <ADC1_2_IRQHandler>
	...

0800288c <__errno>:
 800288c:	4b01      	ldr	r3, [pc, #4]	; (8002894 <__errno+0x8>)
 800288e:	6818      	ldr	r0, [r3, #0]
 8002890:	4770      	bx	lr
 8002892:	bf00      	nop
 8002894:	2000004c 	.word	0x2000004c

08002898 <__libc_init_array>:
 8002898:	b570      	push	{r4, r5, r6, lr}
 800289a:	4e0d      	ldr	r6, [pc, #52]	; (80028d0 <__libc_init_array+0x38>)
 800289c:	4d0d      	ldr	r5, [pc, #52]	; (80028d4 <__libc_init_array+0x3c>)
 800289e:	1b76      	subs	r6, r6, r5
 80028a0:	10b6      	asrs	r6, r6, #2
 80028a2:	d006      	beq.n	80028b2 <__libc_init_array+0x1a>
 80028a4:	2400      	movs	r4, #0
 80028a6:	3401      	adds	r4, #1
 80028a8:	f855 3b04 	ldr.w	r3, [r5], #4
 80028ac:	4798      	blx	r3
 80028ae:	42a6      	cmp	r6, r4
 80028b0:	d1f9      	bne.n	80028a6 <__libc_init_array+0xe>
 80028b2:	4e09      	ldr	r6, [pc, #36]	; (80028d8 <__libc_init_array+0x40>)
 80028b4:	4d09      	ldr	r5, [pc, #36]	; (80028dc <__libc_init_array+0x44>)
 80028b6:	1b76      	subs	r6, r6, r5
 80028b8:	f004 fea8 	bl	800760c <_init>
 80028bc:	10b6      	asrs	r6, r6, #2
 80028be:	d006      	beq.n	80028ce <__libc_init_array+0x36>
 80028c0:	2400      	movs	r4, #0
 80028c2:	3401      	adds	r4, #1
 80028c4:	f855 3b04 	ldr.w	r3, [r5], #4
 80028c8:	4798      	blx	r3
 80028ca:	42a6      	cmp	r6, r4
 80028cc:	d1f9      	bne.n	80028c2 <__libc_init_array+0x2a>
 80028ce:	bd70      	pop	{r4, r5, r6, pc}
 80028d0:	08007a08 	.word	0x08007a08
 80028d4:	08007a08 	.word	0x08007a08
 80028d8:	08007a10 	.word	0x08007a10
 80028dc:	08007a08 	.word	0x08007a08

080028e0 <memset>:
 80028e0:	b4f0      	push	{r4, r5, r6, r7}
 80028e2:	0786      	lsls	r6, r0, #30
 80028e4:	d043      	beq.n	800296e <memset+0x8e>
 80028e6:	1e54      	subs	r4, r2, #1
 80028e8:	2a00      	cmp	r2, #0
 80028ea:	d03e      	beq.n	800296a <memset+0x8a>
 80028ec:	b2ca      	uxtb	r2, r1
 80028ee:	4603      	mov	r3, r0
 80028f0:	e002      	b.n	80028f8 <memset+0x18>
 80028f2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80028f6:	d338      	bcc.n	800296a <memset+0x8a>
 80028f8:	f803 2b01 	strb.w	r2, [r3], #1
 80028fc:	079d      	lsls	r5, r3, #30
 80028fe:	d1f8      	bne.n	80028f2 <memset+0x12>
 8002900:	2c03      	cmp	r4, #3
 8002902:	d92b      	bls.n	800295c <memset+0x7c>
 8002904:	b2cd      	uxtb	r5, r1
 8002906:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800290a:	2c0f      	cmp	r4, #15
 800290c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002910:	d916      	bls.n	8002940 <memset+0x60>
 8002912:	f1a4 0710 	sub.w	r7, r4, #16
 8002916:	093f      	lsrs	r7, r7, #4
 8002918:	f103 0620 	add.w	r6, r3, #32
 800291c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002920:	f103 0210 	add.w	r2, r3, #16
 8002924:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002928:	e942 5502 	strd	r5, r5, [r2, #-8]
 800292c:	3210      	adds	r2, #16
 800292e:	42b2      	cmp	r2, r6
 8002930:	d1f8      	bne.n	8002924 <memset+0x44>
 8002932:	f004 040f 	and.w	r4, r4, #15
 8002936:	3701      	adds	r7, #1
 8002938:	2c03      	cmp	r4, #3
 800293a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800293e:	d90d      	bls.n	800295c <memset+0x7c>
 8002940:	461e      	mov	r6, r3
 8002942:	4622      	mov	r2, r4
 8002944:	3a04      	subs	r2, #4
 8002946:	2a03      	cmp	r2, #3
 8002948:	f846 5b04 	str.w	r5, [r6], #4
 800294c:	d8fa      	bhi.n	8002944 <memset+0x64>
 800294e:	1f22      	subs	r2, r4, #4
 8002950:	f022 0203 	bic.w	r2, r2, #3
 8002954:	3204      	adds	r2, #4
 8002956:	4413      	add	r3, r2
 8002958:	f004 0403 	and.w	r4, r4, #3
 800295c:	b12c      	cbz	r4, 800296a <memset+0x8a>
 800295e:	b2c9      	uxtb	r1, r1
 8002960:	441c      	add	r4, r3
 8002962:	f803 1b01 	strb.w	r1, [r3], #1
 8002966:	429c      	cmp	r4, r3
 8002968:	d1fb      	bne.n	8002962 <memset+0x82>
 800296a:	bcf0      	pop	{r4, r5, r6, r7}
 800296c:	4770      	bx	lr
 800296e:	4614      	mov	r4, r2
 8002970:	4603      	mov	r3, r0
 8002972:	e7c5      	b.n	8002900 <memset+0x20>

08002974 <printf>:
 8002974:	b40f      	push	{r0, r1, r2, r3}
 8002976:	b500      	push	{lr}
 8002978:	4907      	ldr	r1, [pc, #28]	; (8002998 <printf+0x24>)
 800297a:	b083      	sub	sp, #12
 800297c:	ab04      	add	r3, sp, #16
 800297e:	6808      	ldr	r0, [r1, #0]
 8002980:	f853 2b04 	ldr.w	r2, [r3], #4
 8002984:	6881      	ldr	r1, [r0, #8]
 8002986:	9301      	str	r3, [sp, #4]
 8002988:	f000 f85e 	bl	8002a48 <_vfprintf_r>
 800298c:	b003      	add	sp, #12
 800298e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002992:	b004      	add	sp, #16
 8002994:	4770      	bx	lr
 8002996:	bf00      	nop
 8002998:	2000004c 	.word	0x2000004c

0800299c <_puts_r>:
 800299c:	b570      	push	{r4, r5, r6, lr}
 800299e:	4605      	mov	r5, r0
 80029a0:	b088      	sub	sp, #32
 80029a2:	4608      	mov	r0, r1
 80029a4:	460c      	mov	r4, r1
 80029a6:	f7fd feab 	bl	8000700 <strlen>
 80029aa:	4a22      	ldr	r2, [pc, #136]	; (8002a34 <_puts_r+0x98>)
 80029ac:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80029ae:	9404      	str	r4, [sp, #16]
 80029b0:	2601      	movs	r6, #1
 80029b2:	1c44      	adds	r4, r0, #1
 80029b4:	a904      	add	r1, sp, #16
 80029b6:	9206      	str	r2, [sp, #24]
 80029b8:	2202      	movs	r2, #2
 80029ba:	9403      	str	r4, [sp, #12]
 80029bc:	9005      	str	r0, [sp, #20]
 80029be:	68ac      	ldr	r4, [r5, #8]
 80029c0:	9607      	str	r6, [sp, #28]
 80029c2:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80029c6:	b31b      	cbz	r3, 8002a10 <_puts_r+0x74>
 80029c8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80029ca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80029ce:	07ce      	lsls	r6, r1, #31
 80029d0:	b29a      	uxth	r2, r3
 80029d2:	d401      	bmi.n	80029d8 <_puts_r+0x3c>
 80029d4:	0590      	lsls	r0, r2, #22
 80029d6:	d525      	bpl.n	8002a24 <_puts_r+0x88>
 80029d8:	0491      	lsls	r1, r2, #18
 80029da:	d406      	bmi.n	80029ea <_puts_r+0x4e>
 80029dc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80029de:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80029e2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80029e6:	81a3      	strh	r3, [r4, #12]
 80029e8:	6662      	str	r2, [r4, #100]	; 0x64
 80029ea:	4628      	mov	r0, r5
 80029ec:	aa01      	add	r2, sp, #4
 80029ee:	4621      	mov	r1, r4
 80029f0:	f003 f85e 	bl	8005ab0 <__sfvwrite_r>
 80029f4:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80029f6:	2800      	cmp	r0, #0
 80029f8:	bf0c      	ite	eq
 80029fa:	250a      	moveq	r5, #10
 80029fc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002a00:	07da      	lsls	r2, r3, #31
 8002a02:	d402      	bmi.n	8002a0a <_puts_r+0x6e>
 8002a04:	89a3      	ldrh	r3, [r4, #12]
 8002a06:	059b      	lsls	r3, r3, #22
 8002a08:	d506      	bpl.n	8002a18 <_puts_r+0x7c>
 8002a0a:	4628      	mov	r0, r5
 8002a0c:	b008      	add	sp, #32
 8002a0e:	bd70      	pop	{r4, r5, r6, pc}
 8002a10:	4628      	mov	r0, r5
 8002a12:	f002 feb7 	bl	8005784 <__sinit>
 8002a16:	e7d7      	b.n	80029c8 <_puts_r+0x2c>
 8002a18:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002a1a:	f003 fa05 	bl	8005e28 <__retarget_lock_release_recursive>
 8002a1e:	4628      	mov	r0, r5
 8002a20:	b008      	add	sp, #32
 8002a22:	bd70      	pop	{r4, r5, r6, pc}
 8002a24:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002a26:	f003 f9fd 	bl	8005e24 <__retarget_lock_acquire_recursive>
 8002a2a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002a2e:	b29a      	uxth	r2, r3
 8002a30:	e7d2      	b.n	80029d8 <_puts_r+0x3c>
 8002a32:	bf00      	nop
 8002a34:	08007778 	.word	0x08007778

08002a38 <puts>:
 8002a38:	4b02      	ldr	r3, [pc, #8]	; (8002a44 <puts+0xc>)
 8002a3a:	4601      	mov	r1, r0
 8002a3c:	6818      	ldr	r0, [r3, #0]
 8002a3e:	f7ff bfad 	b.w	800299c <_puts_r>
 8002a42:	bf00      	nop
 8002a44:	2000004c 	.word	0x2000004c

08002a48 <_vfprintf_r>:
 8002a48:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002a4c:	b0d7      	sub	sp, #348	; 0x15c
 8002a4e:	461c      	mov	r4, r3
 8002a50:	4689      	mov	r9, r1
 8002a52:	4617      	mov	r7, r2
 8002a54:	4605      	mov	r5, r0
 8002a56:	9003      	str	r0, [sp, #12]
 8002a58:	f003 f9d2 	bl	8005e00 <_localeconv_r>
 8002a5c:	6803      	ldr	r3, [r0, #0]
 8002a5e:	9316      	str	r3, [sp, #88]	; 0x58
 8002a60:	4618      	mov	r0, r3
 8002a62:	f7fd fe4d 	bl	8000700 <strlen>
 8002a66:	9408      	str	r4, [sp, #32]
 8002a68:	9015      	str	r0, [sp, #84]	; 0x54
 8002a6a:	b11d      	cbz	r5, 8002a74 <_vfprintf_r+0x2c>
 8002a6c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002a6e:	2b00      	cmp	r3, #0
 8002a70:	f000 8107 	beq.w	8002c82 <_vfprintf_r+0x23a>
 8002a74:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002a78:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002a7c:	07c8      	lsls	r0, r1, #31
 8002a7e:	b293      	uxth	r3, r2
 8002a80:	d402      	bmi.n	8002a88 <_vfprintf_r+0x40>
 8002a82:	0599      	lsls	r1, r3, #22
 8002a84:	f140 811f 	bpl.w	8002cc6 <_vfprintf_r+0x27e>
 8002a88:	049e      	lsls	r6, r3, #18
 8002a8a:	d40a      	bmi.n	8002aa2 <_vfprintf_r+0x5a>
 8002a8c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002a90:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002a94:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002a98:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002a9c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002aa0:	b29b      	uxth	r3, r3
 8002aa2:	071d      	lsls	r5, r3, #28
 8002aa4:	f140 80b2 	bpl.w	8002c0c <_vfprintf_r+0x1c4>
 8002aa8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002aac:	2a00      	cmp	r2, #0
 8002aae:	f000 80ad 	beq.w	8002c0c <_vfprintf_r+0x1c4>
 8002ab2:	f003 021a 	and.w	r2, r3, #26
 8002ab6:	2a0a      	cmp	r2, #10
 8002ab8:	f000 80c9 	beq.w	8002c4e <_vfprintf_r+0x206>
 8002abc:	2300      	movs	r3, #0
 8002abe:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002cd8 <_vfprintf_r+0x290>
 8002ac2:	9310      	str	r3, [sp, #64]	; 0x40
 8002ac4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002ac8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002aca:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002ace:	931b      	str	r3, [sp, #108]	; 0x6c
 8002ad0:	9318      	str	r3, [sp, #96]	; 0x60
 8002ad2:	9305      	str	r3, [sp, #20]
 8002ad4:	ab2d      	add	r3, sp, #180	; 0xb4
 8002ad6:	932a      	str	r3, [sp, #168]	; 0xa8
 8002ad8:	469b      	mov	fp, r3
 8002ada:	783b      	ldrb	r3, [r7, #0]
 8002adc:	f8cd 901c 	str.w	r9, [sp, #28]
 8002ae0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002ae4:	2b00      	cmp	r3, #0
 8002ae6:	f000 8259 	beq.w	8002f9c <_vfprintf_r+0x554>
 8002aea:	2b25      	cmp	r3, #37	; 0x25
 8002aec:	463c      	mov	r4, r7
 8002aee:	d102      	bne.n	8002af6 <_vfprintf_r+0xae>
 8002af0:	e01d      	b.n	8002b2e <_vfprintf_r+0xe6>
 8002af2:	2b25      	cmp	r3, #37	; 0x25
 8002af4:	d003      	beq.n	8002afe <_vfprintf_r+0xb6>
 8002af6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002afa:	2b00      	cmp	r3, #0
 8002afc:	d1f9      	bne.n	8002af2 <_vfprintf_r+0xaa>
 8002afe:	1be5      	subs	r5, r4, r7
 8002b00:	b18d      	cbz	r5, 8002b26 <_vfprintf_r+0xde>
 8002b02:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002b06:	3301      	adds	r3, #1
 8002b08:	442a      	add	r2, r5
 8002b0a:	2b07      	cmp	r3, #7
 8002b0c:	f8cb 7000 	str.w	r7, [fp]
 8002b10:	f8cb 5004 	str.w	r5, [fp, #4]
 8002b14:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002b18:	f300 80ca 	bgt.w	8002cb0 <_vfprintf_r+0x268>
 8002b1c:	f10b 0b08 	add.w	fp, fp, #8
 8002b20:	9b05      	ldr	r3, [sp, #20]
 8002b22:	442b      	add	r3, r5
 8002b24:	9305      	str	r3, [sp, #20]
 8002b26:	7823      	ldrb	r3, [r4, #0]
 8002b28:	2b00      	cmp	r3, #0
 8002b2a:	f000 8237 	beq.w	8002f9c <_vfprintf_r+0x554>
 8002b2e:	2300      	movs	r3, #0
 8002b30:	7866      	ldrb	r6, [r4, #1]
 8002b32:	9306      	str	r3, [sp, #24]
 8002b34:	4698      	mov	r8, r3
 8002b36:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b3a:	f104 0a01 	add.w	sl, r4, #1
 8002b3e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002b42:	252b      	movs	r5, #43	; 0x2b
 8002b44:	f10a 0a01 	add.w	sl, sl, #1
 8002b48:	f1a6 0320 	sub.w	r3, r6, #32
 8002b4c:	2b5a      	cmp	r3, #90	; 0x5a
 8002b4e:	f200 842a 	bhi.w	80033a6 <_vfprintf_r+0x95e>
 8002b52:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002b56:	03aa      	.short	0x03aa
 8002b58:	04280428 	.word	0x04280428
 8002b5c:	0428029c 	.word	0x0428029c
 8002b60:	04280428 	.word	0x04280428
 8002b64:	042802a7 	.word	0x042802a7
 8002b68:	02c60428 	.word	0x02c60428
 8002b6c:	042802d2 	.word	0x042802d2
 8002b70:	02dc02d7 	.word	0x02dc02d7
 8002b74:	02f60428 	.word	0x02f60428
 8002b78:	026d026d 	.word	0x026d026d
 8002b7c:	026d026d 	.word	0x026d026d
 8002b80:	026d026d 	.word	0x026d026d
 8002b84:	026d026d 	.word	0x026d026d
 8002b88:	0428026d 	.word	0x0428026d
 8002b8c:	04280428 	.word	0x04280428
 8002b90:	04280428 	.word	0x04280428
 8002b94:	04280428 	.word	0x04280428
 8002b98:	042802fb 	.word	0x042802fb
 8002b9c:	03f3033c 	.word	0x03f3033c
 8002ba0:	02fb02fb 	.word	0x02fb02fb
 8002ba4:	042802fb 	.word	0x042802fb
 8002ba8:	04280428 	.word	0x04280428
 8002bac:	03ee0428 	.word	0x03ee0428
 8002bb0:	04280428 	.word	0x04280428
 8002bb4:	0428009a 	.word	0x0428009a
 8002bb8:	04280428 	.word	0x04280428
 8002bbc:	04280350 	.word	0x04280350
 8002bc0:	04280379 	.word	0x04280379
 8002bc4:	03900428 	.word	0x03900428
 8002bc8:	04280428 	.word	0x04280428
 8002bcc:	04280428 	.word	0x04280428
 8002bd0:	04280428 	.word	0x04280428
 8002bd4:	04280428 	.word	0x04280428
 8002bd8:	042802fb 	.word	0x042802fb
 8002bdc:	00c5033c 	.word	0x00c5033c
 8002be0:	02fb02fb 	.word	0x02fb02fb
 8002be4:	03d102fb 	.word	0x03d102fb
 8002be8:	007000c5 	.word	0x007000c5
 8002bec:	03b50428 	.word	0x03b50428
 8002bf0:	03c20428 	.word	0x03c20428
 8002bf4:	03de009c 	.word	0x03de009c
 8002bf8:	04280070 	.word	0x04280070
 8002bfc:	00720350 	.word	0x00720350
 8002c00:	0428022c 	.word	0x0428022c
 8002c04:	027c0428 	.word	0x027c0428
 8002c08:	00720428 	.word	0x00720428
 8002c0c:	4649      	mov	r1, r9
 8002c0e:	9803      	ldr	r0, [sp, #12]
 8002c10:	f001 fc9a 	bl	8004548 <__swsetup_r>
 8002c14:	b1a0      	cbz	r0, 8002c40 <_vfprintf_r+0x1f8>
 8002c16:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002c1a:	07d8      	lsls	r0, r3, #31
 8002c1c:	d404      	bmi.n	8002c28 <_vfprintf_r+0x1e0>
 8002c1e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002c22:	0599      	lsls	r1, r3, #22
 8002c24:	f140 83b7 	bpl.w	8003396 <_vfprintf_r+0x94e>
 8002c28:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002c2c:	9305      	str	r3, [sp, #20]
 8002c2e:	9805      	ldr	r0, [sp, #20]
 8002c30:	b057      	add	sp, #348	; 0x15c
 8002c32:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002c36:	f048 0820 	orr.w	r8, r8, #32
 8002c3a:	f89a 6000 	ldrb.w	r6, [sl]
 8002c3e:	e781      	b.n	8002b44 <_vfprintf_r+0xfc>
 8002c40:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002c44:	f003 021a 	and.w	r2, r3, #26
 8002c48:	2a0a      	cmp	r2, #10
 8002c4a:	f47f af37 	bne.w	8002abc <_vfprintf_r+0x74>
 8002c4e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002c52:	2a00      	cmp	r2, #0
 8002c54:	f6ff af32 	blt.w	8002abc <_vfprintf_r+0x74>
 8002c58:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002c5c:	07d2      	lsls	r2, r2, #31
 8002c5e:	d405      	bmi.n	8002c6c <_vfprintf_r+0x224>
 8002c60:	059b      	lsls	r3, r3, #22
 8002c62:	d403      	bmi.n	8002c6c <_vfprintf_r+0x224>
 8002c64:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c68:	f003 f8de 	bl	8005e28 <__retarget_lock_release_recursive>
 8002c6c:	4623      	mov	r3, r4
 8002c6e:	463a      	mov	r2, r7
 8002c70:	4649      	mov	r1, r9
 8002c72:	9803      	ldr	r0, [sp, #12]
 8002c74:	f001 fc26 	bl	80044c4 <__sbprintf>
 8002c78:	9005      	str	r0, [sp, #20]
 8002c7a:	9805      	ldr	r0, [sp, #20]
 8002c7c:	b057      	add	sp, #348	; 0x15c
 8002c7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002c82:	9803      	ldr	r0, [sp, #12]
 8002c84:	f002 fd7e 	bl	8005784 <__sinit>
 8002c88:	e6f4      	b.n	8002a74 <_vfprintf_r+0x2c>
 8002c8a:	f048 0810 	orr.w	r8, r8, #16
 8002c8e:	f018 0f20 	tst.w	r8, #32
 8002c92:	f000 836c 	beq.w	800336e <_vfprintf_r+0x926>
 8002c96:	9c08      	ldr	r4, [sp, #32]
 8002c98:	3407      	adds	r4, #7
 8002c9a:	f024 0307 	bic.w	r3, r4, #7
 8002c9e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002ca2:	f103 0208 	add.w	r2, r3, #8
 8002ca6:	9208      	str	r2, [sp, #32]
 8002ca8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002cac:	2200      	movs	r2, #0
 8002cae:	e18c      	b.n	8002fca <_vfprintf_r+0x582>
 8002cb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002cb2:	9907      	ldr	r1, [sp, #28]
 8002cb4:	9803      	ldr	r0, [sp, #12]
 8002cb6:	f004 f9f5 	bl	80070a4 <__sprint_r>
 8002cba:	2800      	cmp	r0, #0
 8002cbc:	f041 8376 	bne.w	80043ac <_vfprintf_r+0x1964>
 8002cc0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002cc4:	e72c      	b.n	8002b20 <_vfprintf_r+0xd8>
 8002cc6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002cca:	f003 f8ab 	bl	8005e24 <__retarget_lock_acquire_recursive>
 8002cce:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002cd2:	b293      	uxth	r3, r2
 8002cd4:	e6d8      	b.n	8002a88 <_vfprintf_r+0x40>
 8002cd6:	bf00      	nop
	...
 8002ce0:	4643      	mov	r3, r8
 8002ce2:	069f      	lsls	r7, r3, #26
 8002ce4:	f140 832f 	bpl.w	8003346 <_vfprintf_r+0x8fe>
 8002ce8:	9c08      	ldr	r4, [sp, #32]
 8002cea:	3407      	adds	r4, #7
 8002cec:	f024 0407 	bic.w	r4, r4, #7
 8002cf0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002cf4:	f104 0208 	add.w	r2, r4, #8
 8002cf8:	9208      	str	r2, [sp, #32]
 8002cfa:	4604      	mov	r4, r0
 8002cfc:	460d      	mov	r5, r1
 8002cfe:	2800      	cmp	r0, #0
 8002d00:	f171 0200 	sbcs.w	r2, r1, #0
 8002d04:	da05      	bge.n	8002d12 <_vfprintf_r+0x2ca>
 8002d06:	222d      	movs	r2, #45	; 0x2d
 8002d08:	4264      	negs	r4, r4
 8002d0a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002d0e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002d12:	aa56      	add	r2, sp, #344	; 0x158
 8002d14:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002d18:	9204      	str	r2, [sp, #16]
 8002d1a:	f000 84b2 	beq.w	8003682 <_vfprintf_r+0xc3a>
 8002d1e:	2201      	movs	r2, #1
 8002d20:	ea54 0105 	orrs.w	r1, r4, r5
 8002d24:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002d28:	f040 8159 	bne.w	8002fde <_vfprintf_r+0x596>
 8002d2c:	f1b9 0f00 	cmp.w	r9, #0
 8002d30:	f040 8619 	bne.w	8003966 <_vfprintf_r+0xf1e>
 8002d34:	2a00      	cmp	r2, #0
 8002d36:	f040 8508 	bne.w	800374a <_vfprintf_r+0xd02>
 8002d3a:	f013 0301 	ands.w	r3, r3, #1
 8002d3e:	af56      	add	r7, sp, #344	; 0x158
 8002d40:	9309      	str	r3, [sp, #36]	; 0x24
 8002d42:	d002      	beq.n	8002d4a <_vfprintf_r+0x302>
 8002d44:	2330      	movs	r3, #48	; 0x30
 8002d46:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002d4a:	2300      	movs	r3, #0
 8002d4c:	930a      	str	r3, [sp, #40]	; 0x28
 8002d4e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002d50:	9314      	str	r3, [sp, #80]	; 0x50
 8002d52:	9311      	str	r3, [sp, #68]	; 0x44
 8002d54:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002d56:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d5a:	454b      	cmp	r3, r9
 8002d5c:	bfb8      	it	lt
 8002d5e:	464b      	movlt	r3, r9
 8002d60:	9304      	str	r3, [sp, #16]
 8002d62:	b112      	cbz	r2, 8002d6a <_vfprintf_r+0x322>
 8002d64:	9b04      	ldr	r3, [sp, #16]
 8002d66:	3301      	adds	r3, #1
 8002d68:	9304      	str	r3, [sp, #16]
 8002d6a:	f018 0302 	ands.w	r3, r8, #2
 8002d6e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002d70:	d002      	beq.n	8002d78 <_vfprintf_r+0x330>
 8002d72:	9b04      	ldr	r3, [sp, #16]
 8002d74:	3302      	adds	r3, #2
 8002d76:	9304      	str	r3, [sp, #16]
 8002d78:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002d7c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002d7e:	930e      	str	r3, [sp, #56]	; 0x38
 8002d80:	d13f      	bne.n	8002e02 <_vfprintf_r+0x3ba>
 8002d82:	9b06      	ldr	r3, [sp, #24]
 8002d84:	9904      	ldr	r1, [sp, #16]
 8002d86:	1a5d      	subs	r5, r3, r1
 8002d88:	2d00      	cmp	r5, #0
 8002d8a:	dd3a      	ble.n	8002e02 <_vfprintf_r+0x3ba>
 8002d8c:	2d10      	cmp	r5, #16
 8002d8e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d90:	dd29      	ble.n	8002de6 <_vfprintf_r+0x39e>
 8002d92:	4659      	mov	r1, fp
 8002d94:	4620      	mov	r0, r4
 8002d96:	9620      	str	r6, [sp, #128]	; 0x80
 8002d98:	2310      	movs	r3, #16
 8002d9a:	9c03      	ldr	r4, [sp, #12]
 8002d9c:	9e07      	ldr	r6, [sp, #28]
 8002d9e:	46bb      	mov	fp, r7
 8002da0:	e004      	b.n	8002dac <_vfprintf_r+0x364>
 8002da2:	3d10      	subs	r5, #16
 8002da4:	2d10      	cmp	r5, #16
 8002da6:	f101 0108 	add.w	r1, r1, #8
 8002daa:	dd18      	ble.n	8002dde <_vfprintf_r+0x396>
 8002dac:	3201      	adds	r2, #1
 8002dae:	4fba      	ldr	r7, [pc, #744]	; (8003098 <_vfprintf_r+0x650>)
 8002db0:	3010      	adds	r0, #16
 8002db2:	2a07      	cmp	r2, #7
 8002db4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002db8:	e9c1 7300 	strd	r7, r3, [r1]
 8002dbc:	ddf1      	ble.n	8002da2 <_vfprintf_r+0x35a>
 8002dbe:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dc0:	4631      	mov	r1, r6
 8002dc2:	4620      	mov	r0, r4
 8002dc4:	930c      	str	r3, [sp, #48]	; 0x30
 8002dc6:	f004 f96d 	bl	80070a4 <__sprint_r>
 8002dca:	2800      	cmp	r0, #0
 8002dcc:	f040 843d 	bne.w	800364a <_vfprintf_r+0xc02>
 8002dd0:	3d10      	subs	r5, #16
 8002dd2:	2d10      	cmp	r5, #16
 8002dd4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002dd8:	a92d      	add	r1, sp, #180	; 0xb4
 8002dda:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002ddc:	dce6      	bgt.n	8002dac <_vfprintf_r+0x364>
 8002dde:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002de0:	465f      	mov	r7, fp
 8002de2:	4604      	mov	r4, r0
 8002de4:	468b      	mov	fp, r1
 8002de6:	3201      	adds	r2, #1
 8002de8:	4bab      	ldr	r3, [pc, #684]	; (8003098 <_vfprintf_r+0x650>)
 8002dea:	442c      	add	r4, r5
 8002dec:	2a07      	cmp	r2, #7
 8002dee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002df2:	e9cb 3500 	strd	r3, r5, [fp]
 8002df6:	f300 84ff 	bgt.w	80037f8 <_vfprintf_r+0xdb0>
 8002dfa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002dfe:	f10b 0b08 	add.w	fp, fp, #8
 8002e02:	b172      	cbz	r2, 8002e22 <_vfprintf_r+0x3da>
 8002e04:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e06:	3201      	adds	r2, #1
 8002e08:	3401      	adds	r4, #1
 8002e0a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002e0e:	2101      	movs	r1, #1
 8002e10:	2a07      	cmp	r2, #7
 8002e12:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e16:	e9cb 0100 	strd	r0, r1, [fp]
 8002e1a:	f300 8418 	bgt.w	800364e <_vfprintf_r+0xc06>
 8002e1e:	f10b 0b08 	add.w	fp, fp, #8
 8002e22:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002e24:	b16b      	cbz	r3, 8002e42 <_vfprintf_r+0x3fa>
 8002e26:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e28:	3301      	adds	r3, #1
 8002e2a:	3402      	adds	r4, #2
 8002e2c:	a923      	add	r1, sp, #140	; 0x8c
 8002e2e:	2202      	movs	r2, #2
 8002e30:	2b07      	cmp	r3, #7
 8002e32:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e36:	e9cb 1200 	strd	r1, r2, [fp]
 8002e3a:	f300 8415 	bgt.w	8003668 <_vfprintf_r+0xc20>
 8002e3e:	f10b 0b08 	add.w	fp, fp, #8
 8002e42:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002e44:	2b80      	cmp	r3, #128	; 0x80
 8002e46:	f000 8331 	beq.w	80034ac <_vfprintf_r+0xa64>
 8002e4a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002e4c:	eba9 0503 	sub.w	r5, r9, r3
 8002e50:	2d00      	cmp	r5, #0
 8002e52:	dd37      	ble.n	8002ec4 <_vfprintf_r+0x47c>
 8002e54:	2d10      	cmp	r5, #16
 8002e56:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e58:	4b90      	ldr	r3, [pc, #576]	; (800309c <_vfprintf_r+0x654>)
 8002e5a:	dd28      	ble.n	8002eae <_vfprintf_r+0x466>
 8002e5c:	4659      	mov	r1, fp
 8002e5e:	4620      	mov	r0, r4
 8002e60:	46bb      	mov	fp, r7
 8002e62:	f04f 0910 	mov.w	r9, #16
 8002e66:	4637      	mov	r7, r6
 8002e68:	461c      	mov	r4, r3
 8002e6a:	9e07      	ldr	r6, [sp, #28]
 8002e6c:	e004      	b.n	8002e78 <_vfprintf_r+0x430>
 8002e6e:	3d10      	subs	r5, #16
 8002e70:	2d10      	cmp	r5, #16
 8002e72:	f101 0108 	add.w	r1, r1, #8
 8002e76:	dd15      	ble.n	8002ea4 <_vfprintf_r+0x45c>
 8002e78:	3201      	adds	r2, #1
 8002e7a:	3010      	adds	r0, #16
 8002e7c:	2a07      	cmp	r2, #7
 8002e7e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002e82:	e9c1 4900 	strd	r4, r9, [r1]
 8002e86:	ddf2      	ble.n	8002e6e <_vfprintf_r+0x426>
 8002e88:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e8a:	4631      	mov	r1, r6
 8002e8c:	9803      	ldr	r0, [sp, #12]
 8002e8e:	f004 f909 	bl	80070a4 <__sprint_r>
 8002e92:	2800      	cmp	r0, #0
 8002e94:	f040 83d9 	bne.w	800364a <_vfprintf_r+0xc02>
 8002e98:	3d10      	subs	r5, #16
 8002e9a:	2d10      	cmp	r5, #16
 8002e9c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ea0:	a92d      	add	r1, sp, #180	; 0xb4
 8002ea2:	dce9      	bgt.n	8002e78 <_vfprintf_r+0x430>
 8002ea4:	463e      	mov	r6, r7
 8002ea6:	4623      	mov	r3, r4
 8002ea8:	465f      	mov	r7, fp
 8002eaa:	4604      	mov	r4, r0
 8002eac:	468b      	mov	fp, r1
 8002eae:	3201      	adds	r2, #1
 8002eb0:	442c      	add	r4, r5
 8002eb2:	2a07      	cmp	r2, #7
 8002eb4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002eb8:	e9cb 3500 	strd	r3, r5, [fp]
 8002ebc:	f300 83ef 	bgt.w	800369e <_vfprintf_r+0xc56>
 8002ec0:	f10b 0b08 	add.w	fp, fp, #8
 8002ec4:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002ec8:	f040 8280 	bne.w	80033cc <_vfprintf_r+0x984>
 8002ecc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ece:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ed0:	f8cb 7000 	str.w	r7, [fp]
 8002ed4:	3301      	adds	r3, #1
 8002ed6:	4414      	add	r4, r2
 8002ed8:	2b07      	cmp	r3, #7
 8002eda:	942c      	str	r4, [sp, #176]	; 0xb0
 8002edc:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ee0:	932b      	str	r3, [sp, #172]	; 0xac
 8002ee2:	f300 8392 	bgt.w	800360a <_vfprintf_r+0xbc2>
 8002ee6:	f10b 0b08 	add.w	fp, fp, #8
 8002eea:	f018 0f04 	tst.w	r8, #4
 8002eee:	d03b      	beq.n	8002f68 <_vfprintf_r+0x520>
 8002ef0:	9b06      	ldr	r3, [sp, #24]
 8002ef2:	9a04      	ldr	r2, [sp, #16]
 8002ef4:	1a9d      	subs	r5, r3, r2
 8002ef6:	2d00      	cmp	r5, #0
 8002ef8:	dd36      	ble.n	8002f68 <_vfprintf_r+0x520>
 8002efa:	2d10      	cmp	r5, #16
 8002efc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002efe:	dd21      	ble.n	8002f44 <_vfprintf_r+0x4fc>
 8002f00:	2610      	movs	r6, #16
 8002f02:	9f03      	ldr	r7, [sp, #12]
 8002f04:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002f08:	e004      	b.n	8002f14 <_vfprintf_r+0x4cc>
 8002f0a:	3d10      	subs	r5, #16
 8002f0c:	2d10      	cmp	r5, #16
 8002f0e:	f10b 0b08 	add.w	fp, fp, #8
 8002f12:	dd17      	ble.n	8002f44 <_vfprintf_r+0x4fc>
 8002f14:	3301      	adds	r3, #1
 8002f16:	4a60      	ldr	r2, [pc, #384]	; (8003098 <_vfprintf_r+0x650>)
 8002f18:	3410      	adds	r4, #16
 8002f1a:	2b07      	cmp	r3, #7
 8002f1c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f20:	e9cb 2600 	strd	r2, r6, [fp]
 8002f24:	ddf1      	ble.n	8002f0a <_vfprintf_r+0x4c2>
 8002f26:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f28:	4641      	mov	r1, r8
 8002f2a:	4638      	mov	r0, r7
 8002f2c:	f004 f8ba 	bl	80070a4 <__sprint_r>
 8002f30:	2800      	cmp	r0, #0
 8002f32:	f040 856c 	bne.w	8003a0e <_vfprintf_r+0xfc6>
 8002f36:	3d10      	subs	r5, #16
 8002f38:	2d10      	cmp	r5, #16
 8002f3a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002f3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f42:	dce7      	bgt.n	8002f14 <_vfprintf_r+0x4cc>
 8002f44:	3301      	adds	r3, #1
 8002f46:	4a54      	ldr	r2, [pc, #336]	; (8003098 <_vfprintf_r+0x650>)
 8002f48:	442c      	add	r4, r5
 8002f4a:	2b07      	cmp	r3, #7
 8002f4c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f50:	e9cb 2500 	strd	r2, r5, [fp]
 8002f54:	dd08      	ble.n	8002f68 <_vfprintf_r+0x520>
 8002f56:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f58:	9907      	ldr	r1, [sp, #28]
 8002f5a:	9803      	ldr	r0, [sp, #12]
 8002f5c:	f004 f8a2 	bl	80070a4 <__sprint_r>
 8002f60:	2800      	cmp	r0, #0
 8002f62:	f040 82e9 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8002f66:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f68:	9904      	ldr	r1, [sp, #16]
 8002f6a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002f6e:	428a      	cmp	r2, r1
 8002f70:	bfac      	ite	ge
 8002f72:	189b      	addge	r3, r3, r2
 8002f74:	185b      	addlt	r3, r3, r1
 8002f76:	9305      	str	r3, [sp, #20]
 8002f78:	2c00      	cmp	r4, #0
 8002f7a:	f040 82d5 	bne.w	8003528 <_vfprintf_r+0xae0>
 8002f7e:	2300      	movs	r3, #0
 8002f80:	932b      	str	r3, [sp, #172]	; 0xac
 8002f82:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002f84:	b11b      	cbz	r3, 8002f8e <_vfprintf_r+0x546>
 8002f86:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f88:	9803      	ldr	r0, [sp, #12]
 8002f8a:	f002 fc9d 	bl	80058c8 <_free_r>
 8002f8e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f92:	4657      	mov	r7, sl
 8002f94:	783b      	ldrb	r3, [r7, #0]
 8002f96:	2b00      	cmp	r3, #0
 8002f98:	f47f ada7 	bne.w	8002aea <_vfprintf_r+0xa2>
 8002f9c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002f9e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002fa2:	2b00      	cmp	r3, #0
 8002fa4:	f041 80e7 	bne.w	8004176 <_vfprintf_r+0x172e>
 8002fa8:	2300      	movs	r3, #0
 8002faa:	932b      	str	r3, [sp, #172]	; 0xac
 8002fac:	e2cb      	b.n	8003546 <_vfprintf_r+0xafe>
 8002fae:	4643      	mov	r3, r8
 8002fb0:	069a      	lsls	r2, r3, #26
 8002fb2:	f140 814e 	bpl.w	8003252 <_vfprintf_r+0x80a>
 8002fb6:	9c08      	ldr	r4, [sp, #32]
 8002fb8:	3407      	adds	r4, #7
 8002fba:	f024 0207 	bic.w	r2, r4, #7
 8002fbe:	f102 0108 	add.w	r1, r2, #8
 8002fc2:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002fc6:	9108      	str	r1, [sp, #32]
 8002fc8:	2201      	movs	r2, #1
 8002fca:	2100      	movs	r1, #0
 8002fcc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002fd0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002fd4:	a956      	add	r1, sp, #344	; 0x158
 8002fd6:	9104      	str	r1, [sp, #16]
 8002fd8:	f47f aea2 	bne.w	8002d20 <_vfprintf_r+0x2d8>
 8002fdc:	4698      	mov	r8, r3
 8002fde:	2a01      	cmp	r2, #1
 8002fe0:	f000 8350 	beq.w	8003684 <_vfprintf_r+0xc3c>
 8002fe4:	2a02      	cmp	r2, #2
 8002fe6:	f000 831b 	beq.w	8003620 <_vfprintf_r+0xbd8>
 8002fea:	a956      	add	r1, sp, #344	; 0x158
 8002fec:	e000      	b.n	8002ff0 <_vfprintf_r+0x5a8>
 8002fee:	4639      	mov	r1, r7
 8002ff0:	08e2      	lsrs	r2, r4, #3
 8002ff2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002ff6:	08e8      	lsrs	r0, r5, #3
 8002ff8:	f004 0307 	and.w	r3, r4, #7
 8002ffc:	4605      	mov	r5, r0
 8002ffe:	4614      	mov	r4, r2
 8003000:	3330      	adds	r3, #48	; 0x30
 8003002:	ea54 0205 	orrs.w	r2, r4, r5
 8003006:	f801 3c01 	strb.w	r3, [r1, #-1]
 800300a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800300e:	d1ee      	bne.n	8002fee <_vfprintf_r+0x5a6>
 8003010:	f018 0f01 	tst.w	r8, #1
 8003014:	f000 8314 	beq.w	8003640 <_vfprintf_r+0xbf8>
 8003018:	2b30      	cmp	r3, #48	; 0x30
 800301a:	f000 8311 	beq.w	8003640 <_vfprintf_r+0xbf8>
 800301e:	9a04      	ldr	r2, [sp, #16]
 8003020:	3902      	subs	r1, #2
 8003022:	2330      	movs	r3, #48	; 0x30
 8003024:	1a52      	subs	r2, r2, r1
 8003026:	f807 3c01 	strb.w	r3, [r7, #-1]
 800302a:	9209      	str	r2, [sp, #36]	; 0x24
 800302c:	460f      	mov	r7, r1
 800302e:	e68c      	b.n	8002d4a <_vfprintf_r+0x302>
 8003030:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003034:	2200      	movs	r2, #0
 8003036:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800303a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800303e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003042:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003046:	2b09      	cmp	r3, #9
 8003048:	d9f5      	bls.n	8003036 <_vfprintf_r+0x5ee>
 800304a:	9206      	str	r2, [sp, #24]
 800304c:	e57c      	b.n	8002b48 <_vfprintf_r+0x100>
 800304e:	4b14      	ldr	r3, [pc, #80]	; (80030a0 <_vfprintf_r+0x658>)
 8003050:	9317      	str	r3, [sp, #92]	; 0x5c
 8003052:	f018 0f20 	tst.w	r8, #32
 8003056:	f000 8114 	beq.w	8003282 <_vfprintf_r+0x83a>
 800305a:	9c08      	ldr	r4, [sp, #32]
 800305c:	3407      	adds	r4, #7
 800305e:	f024 0307 	bic.w	r3, r4, #7
 8003062:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003066:	f103 0208 	add.w	r2, r3, #8
 800306a:	9208      	str	r2, [sp, #32]
 800306c:	f018 0f01 	tst.w	r8, #1
 8003070:	d009      	beq.n	8003086 <_vfprintf_r+0x63e>
 8003072:	ea54 0305 	orrs.w	r3, r4, r5
 8003076:	d006      	beq.n	8003086 <_vfprintf_r+0x63e>
 8003078:	2330      	movs	r3, #48	; 0x30
 800307a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800307e:	f048 0802 	orr.w	r8, r8, #2
 8003082:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003086:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800308a:	2202      	movs	r2, #2
 800308c:	e79d      	b.n	8002fca <_vfprintf_r+0x582>
 800308e:	f048 0801 	orr.w	r8, r8, #1
 8003092:	f89a 6000 	ldrb.w	r6, [sl]
 8003096:	e555      	b.n	8002b44 <_vfprintf_r+0xfc>
 8003098:	080077c0 	.word	0x080077c0
 800309c:	080077d0 	.word	0x080077d0
 80030a0:	0800778c 	.word	0x0800778c
 80030a4:	9e03      	ldr	r6, [sp, #12]
 80030a6:	4630      	mov	r0, r6
 80030a8:	f002 feaa 	bl	8005e00 <_localeconv_r>
 80030ac:	6843      	ldr	r3, [r0, #4]
 80030ae:	9318      	str	r3, [sp, #96]	; 0x60
 80030b0:	4618      	mov	r0, r3
 80030b2:	f7fd fb25 	bl	8000700 <strlen>
 80030b6:	901b      	str	r0, [sp, #108]	; 0x6c
 80030b8:	4604      	mov	r4, r0
 80030ba:	4630      	mov	r0, r6
 80030bc:	f002 fea0 	bl	8005e00 <_localeconv_r>
 80030c0:	6883      	ldr	r3, [r0, #8]
 80030c2:	931a      	str	r3, [sp, #104]	; 0x68
 80030c4:	2c00      	cmp	r4, #0
 80030c6:	f43f adb8 	beq.w	8002c3a <_vfprintf_r+0x1f2>
 80030ca:	f89a 6000 	ldrb.w	r6, [sl]
 80030ce:	2b00      	cmp	r3, #0
 80030d0:	f43f ad38 	beq.w	8002b44 <_vfprintf_r+0xfc>
 80030d4:	781b      	ldrb	r3, [r3, #0]
 80030d6:	2b00      	cmp	r3, #0
 80030d8:	f43f ad34 	beq.w	8002b44 <_vfprintf_r+0xfc>
 80030dc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80030e0:	e530      	b.n	8002b44 <_vfprintf_r+0xfc>
 80030e2:	9b08      	ldr	r3, [sp, #32]
 80030e4:	f89a 6000 	ldrb.w	r6, [sl]
 80030e8:	681a      	ldr	r2, [r3, #0]
 80030ea:	9206      	str	r2, [sp, #24]
 80030ec:	2a00      	cmp	r2, #0
 80030ee:	f103 0304 	add.w	r3, r3, #4
 80030f2:	f2c0 8697 	blt.w	8003e24 <_vfprintf_r+0x13dc>
 80030f6:	9308      	str	r3, [sp, #32]
 80030f8:	e524      	b.n	8002b44 <_vfprintf_r+0xfc>
 80030fa:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80030fe:	f89a 6000 	ldrb.w	r6, [sl]
 8003102:	e51f      	b.n	8002b44 <_vfprintf_r+0xfc>
 8003104:	f89a 6000 	ldrb.w	r6, [sl]
 8003108:	f048 0804 	orr.w	r8, r8, #4
 800310c:	e51a      	b.n	8002b44 <_vfprintf_r+0xfc>
 800310e:	f89a 6000 	ldrb.w	r6, [sl]
 8003112:	2e2a      	cmp	r6, #42	; 0x2a
 8003114:	f10a 0201 	add.w	r2, sl, #1
 8003118:	f001 81b0 	beq.w	800447c <_vfprintf_r+0x1a34>
 800311c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003120:	2b09      	cmp	r3, #9
 8003122:	4692      	mov	sl, r2
 8003124:	f04f 0900 	mov.w	r9, #0
 8003128:	f63f ad0e 	bhi.w	8002b48 <_vfprintf_r+0x100>
 800312c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003130:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8003134:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003138:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800313c:	2b09      	cmp	r3, #9
 800313e:	d9f5      	bls.n	800312c <_vfprintf_r+0x6e4>
 8003140:	e502      	b.n	8002b48 <_vfprintf_r+0x100>
 8003142:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003146:	f89a 6000 	ldrb.w	r6, [sl]
 800314a:	e4fb      	b.n	8002b44 <_vfprintf_r+0xfc>
 800314c:	9c08      	ldr	r4, [sp, #32]
 800314e:	3407      	adds	r4, #7
 8003150:	f024 0407 	bic.w	r4, r4, #7
 8003154:	ed94 7b00 	vldr	d7, [r4]
 8003158:	ec52 1b17 	vmov	r1, r2, d7
 800315c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003160:	931d      	str	r3, [sp, #116]	; 0x74
 8003162:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003166:	3408      	adds	r4, #8
 8003168:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800316c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003170:	4bba      	ldr	r3, [pc, #744]	; (800345c <_vfprintf_r+0xa14>)
 8003172:	9408      	str	r4, [sp, #32]
 8003174:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003178:	f7fd ffd8 	bl	800112c <__aeabi_dcmpun>
 800317c:	2800      	cmp	r0, #0
 800317e:	f040 846f 	bne.w	8003a60 <_vfprintf_r+0x1018>
 8003182:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003186:	4bb5      	ldr	r3, [pc, #724]	; (800345c <_vfprintf_r+0xa14>)
 8003188:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800318c:	f7fd ffb0 	bl	80010f0 <__aeabi_dcmple>
 8003190:	2800      	cmp	r0, #0
 8003192:	f040 8465 	bne.w	8003a60 <_vfprintf_r+0x1018>
 8003196:	2200      	movs	r2, #0
 8003198:	2300      	movs	r3, #0
 800319a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800319e:	f7fd ff9d 	bl	80010dc <__aeabi_dcmplt>
 80031a2:	2800      	cmp	r0, #0
 80031a4:	f040 855b 	bne.w	8003c5e <_vfprintf_r+0x1216>
 80031a8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031ac:	4fac      	ldr	r7, [pc, #688]	; (8003460 <_vfprintf_r+0xa18>)
 80031ae:	4bad      	ldr	r3, [pc, #692]	; (8003464 <_vfprintf_r+0xa1c>)
 80031b0:	2000      	movs	r0, #0
 80031b2:	2103      	movs	r1, #3
 80031b4:	9104      	str	r1, [sp, #16]
 80031b6:	900a      	str	r0, [sp, #40]	; 0x28
 80031b8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80031bc:	2e47      	cmp	r6, #71	; 0x47
 80031be:	bfd8      	it	le
 80031c0:	461f      	movle	r7, r3
 80031c2:	9109      	str	r1, [sp, #36]	; 0x24
 80031c4:	4681      	mov	r9, r0
 80031c6:	900f      	str	r0, [sp, #60]	; 0x3c
 80031c8:	9014      	str	r0, [sp, #80]	; 0x50
 80031ca:	9011      	str	r0, [sp, #68]	; 0x44
 80031cc:	e5c9      	b.n	8002d62 <_vfprintf_r+0x31a>
 80031ce:	9808      	ldr	r0, [sp, #32]
 80031d0:	2300      	movs	r3, #0
 80031d2:	6801      	ldr	r1, [r0, #0]
 80031d4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80031d8:	461a      	mov	r2, r3
 80031da:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80031de:	2301      	movs	r3, #1
 80031e0:	1d01      	adds	r1, r0, #4
 80031e2:	9304      	str	r3, [sp, #16]
 80031e4:	920a      	str	r2, [sp, #40]	; 0x28
 80031e6:	4691      	mov	r9, r2
 80031e8:	920f      	str	r2, [sp, #60]	; 0x3c
 80031ea:	9214      	str	r2, [sp, #80]	; 0x50
 80031ec:	9211      	str	r2, [sp, #68]	; 0x44
 80031ee:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80031f2:	af3d      	add	r7, sp, #244	; 0xf4
 80031f4:	e5b9      	b.n	8002d6a <_vfprintf_r+0x322>
 80031f6:	9b08      	ldr	r3, [sp, #32]
 80031f8:	681f      	ldr	r7, [r3, #0]
 80031fa:	2500      	movs	r5, #0
 80031fc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003200:	1d1c      	adds	r4, r3, #4
 8003202:	2f00      	cmp	r7, #0
 8003204:	f000 8639 	beq.w	8003e7a <_vfprintf_r+0x1432>
 8003208:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800320c:	f000 8711 	beq.w	8004032 <_vfprintf_r+0x15ea>
 8003210:	464a      	mov	r2, r9
 8003212:	4629      	mov	r1, r5
 8003214:	4638      	mov	r0, r7
 8003216:	f7fd fae3 	bl	80007e0 <memchr>
 800321a:	900a      	str	r0, [sp, #40]	; 0x28
 800321c:	2800      	cmp	r0, #0
 800321e:	f000 85e7 	beq.w	8003df0 <_vfprintf_r+0x13a8>
 8003222:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003224:	1bdb      	subs	r3, r3, r7
 8003226:	9309      	str	r3, [sp, #36]	; 0x24
 8003228:	46a9      	mov	r9, r5
 800322a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800322e:	9408      	str	r4, [sp, #32]
 8003230:	9304      	str	r3, [sp, #16]
 8003232:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003236:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800323a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800323e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003242:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003246:	e58c      	b.n	8002d62 <_vfprintf_r+0x31a>
 8003248:	f048 0310 	orr.w	r3, r8, #16
 800324c:	069a      	lsls	r2, r3, #26
 800324e:	f53f aeb2 	bmi.w	8002fb6 <_vfprintf_r+0x56e>
 8003252:	9a08      	ldr	r2, [sp, #32]
 8003254:	06df      	lsls	r7, r3, #27
 8003256:	f102 0104 	add.w	r1, r2, #4
 800325a:	f100 837e 	bmi.w	800395a <_vfprintf_r+0xf12>
 800325e:	065d      	lsls	r5, r3, #25
 8003260:	9a08      	ldr	r2, [sp, #32]
 8003262:	f100 84e4 	bmi.w	8003c2e <_vfprintf_r+0x11e6>
 8003266:	059c      	lsls	r4, r3, #22
 8003268:	f140 8377 	bpl.w	800395a <_vfprintf_r+0xf12>
 800326c:	7814      	ldrb	r4, [r2, #0]
 800326e:	9108      	str	r1, [sp, #32]
 8003270:	2500      	movs	r5, #0
 8003272:	2201      	movs	r2, #1
 8003274:	e6a9      	b.n	8002fca <_vfprintf_r+0x582>
 8003276:	4b7c      	ldr	r3, [pc, #496]	; (8003468 <_vfprintf_r+0xa20>)
 8003278:	9317      	str	r3, [sp, #92]	; 0x5c
 800327a:	f018 0f20 	tst.w	r8, #32
 800327e:	f47f aeec 	bne.w	800305a <_vfprintf_r+0x612>
 8003282:	9a08      	ldr	r2, [sp, #32]
 8003284:	f018 0f10 	tst.w	r8, #16
 8003288:	f102 0304 	add.w	r3, r2, #4
 800328c:	f040 8354 	bne.w	8003938 <_vfprintf_r+0xef0>
 8003290:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003294:	9a08      	ldr	r2, [sp, #32]
 8003296:	f040 84d0 	bne.w	8003c3a <_vfprintf_r+0x11f2>
 800329a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800329e:	f000 834b 	beq.w	8003938 <_vfprintf_r+0xef0>
 80032a2:	7814      	ldrb	r4, [r2, #0]
 80032a4:	9308      	str	r3, [sp, #32]
 80032a6:	2500      	movs	r5, #0
 80032a8:	e6e0      	b.n	800306c <_vfprintf_r+0x624>
 80032aa:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80032ae:	f89a 6000 	ldrb.w	r6, [sl]
 80032b2:	2b00      	cmp	r3, #0
 80032b4:	f47f ac46 	bne.w	8002b44 <_vfprintf_r+0xfc>
 80032b8:	2320      	movs	r3, #32
 80032ba:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80032be:	e441      	b.n	8002b44 <_vfprintf_r+0xfc>
 80032c0:	f89a 6000 	ldrb.w	r6, [sl]
 80032c4:	2e6c      	cmp	r6, #108	; 0x6c
 80032c6:	bf03      	ittte	eq
 80032c8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80032cc:	f048 0820 	orreq.w	r8, r8, #32
 80032d0:	f10a 0a01 	addeq.w	sl, sl, #1
 80032d4:	f048 0810 	orrne.w	r8, r8, #16
 80032d8:	e434      	b.n	8002b44 <_vfprintf_r+0xfc>
 80032da:	9a08      	ldr	r2, [sp, #32]
 80032dc:	f018 0f20 	tst.w	r8, #32
 80032e0:	f852 3b04 	ldr.w	r3, [r2], #4
 80032e4:	9208      	str	r2, [sp, #32]
 80032e6:	f000 83a1 	beq.w	8003a2c <_vfprintf_r+0xfe4>
 80032ea:	9a05      	ldr	r2, [sp, #20]
 80032ec:	4610      	mov	r0, r2
 80032ee:	17d1      	asrs	r1, r2, #31
 80032f0:	e9c3 0100 	strd	r0, r1, [r3]
 80032f4:	4657      	mov	r7, sl
 80032f6:	e64d      	b.n	8002f94 <_vfprintf_r+0x54c>
 80032f8:	f89a 6000 	ldrb.w	r6, [sl]
 80032fc:	2e68      	cmp	r6, #104	; 0x68
 80032fe:	bf03      	ittte	eq
 8003300:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003304:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003308:	f10a 0a01 	addeq.w	sl, sl, #1
 800330c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003310:	e418      	b.n	8002b44 <_vfprintf_r+0xfc>
 8003312:	9908      	ldr	r1, [sp, #32]
 8003314:	4b55      	ldr	r3, [pc, #340]	; (800346c <_vfprintf_r+0xa24>)
 8003316:	680c      	ldr	r4, [r1, #0]
 8003318:	9317      	str	r3, [sp, #92]	; 0x5c
 800331a:	f647 0230 	movw	r2, #30768	; 0x7830
 800331e:	3104      	adds	r1, #4
 8003320:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003324:	f048 0302 	orr.w	r3, r8, #2
 8003328:	9108      	str	r1, [sp, #32]
 800332a:	2500      	movs	r5, #0
 800332c:	2202      	movs	r2, #2
 800332e:	2678      	movs	r6, #120	; 0x78
 8003330:	e64b      	b.n	8002fca <_vfprintf_r+0x582>
 8003332:	f048 0808 	orr.w	r8, r8, #8
 8003336:	f89a 6000 	ldrb.w	r6, [sl]
 800333a:	e403      	b.n	8002b44 <_vfprintf_r+0xfc>
 800333c:	f048 0310 	orr.w	r3, r8, #16
 8003340:	069f      	lsls	r7, r3, #26
 8003342:	f53f acd1 	bmi.w	8002ce8 <_vfprintf_r+0x2a0>
 8003346:	9908      	ldr	r1, [sp, #32]
 8003348:	06dd      	lsls	r5, r3, #27
 800334a:	f101 0204 	add.w	r2, r1, #4
 800334e:	f100 82fd 	bmi.w	800394c <_vfprintf_r+0xf04>
 8003352:	065c      	lsls	r4, r3, #25
 8003354:	9908      	ldr	r1, [sp, #32]
 8003356:	f100 8475 	bmi.w	8003c44 <_vfprintf_r+0x11fc>
 800335a:	0598      	lsls	r0, r3, #22
 800335c:	f140 82f6 	bpl.w	800394c <_vfprintf_r+0xf04>
 8003360:	f991 4000 	ldrsb.w	r4, [r1]
 8003364:	9208      	str	r2, [sp, #32]
 8003366:	17e5      	asrs	r5, r4, #31
 8003368:	4620      	mov	r0, r4
 800336a:	4629      	mov	r1, r5
 800336c:	e4c7      	b.n	8002cfe <_vfprintf_r+0x2b6>
 800336e:	9a08      	ldr	r2, [sp, #32]
 8003370:	f018 0f10 	tst.w	r8, #16
 8003374:	f102 0304 	add.w	r3, r2, #4
 8003378:	f040 82e3 	bne.w	8003942 <_vfprintf_r+0xefa>
 800337c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003380:	9a08      	ldr	r2, [sp, #32]
 8003382:	f040 8467 	bne.w	8003c54 <_vfprintf_r+0x120c>
 8003386:	f418 7f00 	tst.w	r8, #512	; 0x200
 800338a:	f000 82da 	beq.w	8003942 <_vfprintf_r+0xefa>
 800338e:	7814      	ldrb	r4, [r2, #0]
 8003390:	9308      	str	r3, [sp, #32]
 8003392:	2500      	movs	r5, #0
 8003394:	e488      	b.n	8002ca8 <_vfprintf_r+0x260>
 8003396:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800339a:	f002 fd45 	bl	8005e28 <__retarget_lock_release_recursive>
 800339e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80033a2:	9305      	str	r3, [sp, #20]
 80033a4:	e443      	b.n	8002c2e <_vfprintf_r+0x1e6>
 80033a6:	2e00      	cmp	r6, #0
 80033a8:	f43f adf8 	beq.w	8002f9c <_vfprintf_r+0x554>
 80033ac:	2300      	movs	r3, #0
 80033ae:	2101      	movs	r1, #1
 80033b0:	461a      	mov	r2, r3
 80033b2:	9104      	str	r1, [sp, #16]
 80033b4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80033b8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80033bc:	930a      	str	r3, [sp, #40]	; 0x28
 80033be:	4699      	mov	r9, r3
 80033c0:	930f      	str	r3, [sp, #60]	; 0x3c
 80033c2:	9314      	str	r3, [sp, #80]	; 0x50
 80033c4:	9311      	str	r3, [sp, #68]	; 0x44
 80033c6:	9109      	str	r1, [sp, #36]	; 0x24
 80033c8:	af3d      	add	r7, sp, #244	; 0xf4
 80033ca:	e4ce      	b.n	8002d6a <_vfprintf_r+0x322>
 80033cc:	2e65      	cmp	r6, #101	; 0x65
 80033ce:	f340 80ca 	ble.w	8003566 <_vfprintf_r+0xb1e>
 80033d2:	2200      	movs	r2, #0
 80033d4:	2300      	movs	r3, #0
 80033d6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80033da:	f7fd fe75 	bl	80010c8 <__aeabi_dcmpeq>
 80033de:	2800      	cmp	r0, #0
 80033e0:	f000 8169 	beq.w	80036b6 <_vfprintf_r+0xc6e>
 80033e4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033e6:	4a22      	ldr	r2, [pc, #136]	; (8003470 <_vfprintf_r+0xa28>)
 80033e8:	f8cb 2000 	str.w	r2, [fp]
 80033ec:	3301      	adds	r3, #1
 80033ee:	3401      	adds	r4, #1
 80033f0:	2201      	movs	r2, #1
 80033f2:	2b07      	cmp	r3, #7
 80033f4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80033f8:	f8cb 2004 	str.w	r2, [fp, #4]
 80033fc:	f300 8406 	bgt.w	8003c0c <_vfprintf_r+0x11c4>
 8003400:	f10b 0b08 	add.w	fp, fp, #8
 8003404:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003406:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003408:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800340a:	4293      	cmp	r3, r2
 800340c:	db03      	blt.n	8003416 <_vfprintf_r+0x9ce>
 800340e:	f018 0f01 	tst.w	r8, #1
 8003412:	f43f ad6a 	beq.w	8002eea <_vfprintf_r+0x4a2>
 8003416:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003418:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800341a:	f8cb 2000 	str.w	r2, [fp]
 800341e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003420:	f8cb 2004 	str.w	r2, [fp, #4]
 8003424:	3301      	adds	r3, #1
 8003426:	4414      	add	r4, r2
 8003428:	2b07      	cmp	r3, #7
 800342a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800342e:	f300 8517 	bgt.w	8003e60 <_vfprintf_r+0x1418>
 8003432:	f10b 0b08 	add.w	fp, fp, #8
 8003436:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003438:	1e5d      	subs	r5, r3, #1
 800343a:	2d00      	cmp	r5, #0
 800343c:	f77f ad55 	ble.w	8002eea <_vfprintf_r+0x4a2>
 8003440:	2d10      	cmp	r5, #16
 8003442:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003444:	4b0b      	ldr	r3, [pc, #44]	; (8003474 <_vfprintf_r+0xa2c>)
 8003446:	f340 82e7 	ble.w	8003a18 <_vfprintf_r+0xfd0>
 800344a:	4619      	mov	r1, r3
 800344c:	2610      	movs	r6, #16
 800344e:	4623      	mov	r3, r4
 8003450:	9f03      	ldr	r7, [sp, #12]
 8003452:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003456:	460c      	mov	r4, r1
 8003458:	e014      	b.n	8003484 <_vfprintf_r+0xa3c>
 800345a:	bf00      	nop
 800345c:	7fefffff 	.word	0x7fefffff
 8003460:	08007780 	.word	0x08007780
 8003464:	0800777c 	.word	0x0800777c
 8003468:	080077a0 	.word	0x080077a0
 800346c:	0800778c 	.word	0x0800778c
 8003470:	080077bc 	.word	0x080077bc
 8003474:	080077d0 	.word	0x080077d0
 8003478:	f10b 0b08 	add.w	fp, fp, #8
 800347c:	3d10      	subs	r5, #16
 800347e:	2d10      	cmp	r5, #16
 8003480:	f340 82c7 	ble.w	8003a12 <_vfprintf_r+0xfca>
 8003484:	3201      	adds	r2, #1
 8003486:	3310      	adds	r3, #16
 8003488:	2a07      	cmp	r2, #7
 800348a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800348e:	e9cb 4600 	strd	r4, r6, [fp]
 8003492:	ddf1      	ble.n	8003478 <_vfprintf_r+0xa30>
 8003494:	aa2a      	add	r2, sp, #168	; 0xa8
 8003496:	4649      	mov	r1, r9
 8003498:	4638      	mov	r0, r7
 800349a:	f003 fe03 	bl	80070a4 <__sprint_r>
 800349e:	2800      	cmp	r0, #0
 80034a0:	d14c      	bne.n	800353c <_vfprintf_r+0xaf4>
 80034a2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80034a6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034aa:	e7e7      	b.n	800347c <_vfprintf_r+0xa34>
 80034ac:	9b06      	ldr	r3, [sp, #24]
 80034ae:	9a04      	ldr	r2, [sp, #16]
 80034b0:	1a9d      	subs	r5, r3, r2
 80034b2:	2d00      	cmp	r5, #0
 80034b4:	f77f acc9 	ble.w	8002e4a <_vfprintf_r+0x402>
 80034b8:	2d10      	cmp	r5, #16
 80034ba:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034bc:	4bbc      	ldr	r3, [pc, #752]	; (80037b0 <_vfprintf_r+0xd68>)
 80034be:	dd27      	ble.n	8003510 <_vfprintf_r+0xac8>
 80034c0:	4659      	mov	r1, fp
 80034c2:	4620      	mov	r0, r4
 80034c4:	46bb      	mov	fp, r7
 80034c6:	461c      	mov	r4, r3
 80034c8:	4637      	mov	r7, r6
 80034ca:	9e07      	ldr	r6, [sp, #28]
 80034cc:	e004      	b.n	80034d8 <_vfprintf_r+0xa90>
 80034ce:	3d10      	subs	r5, #16
 80034d0:	2d10      	cmp	r5, #16
 80034d2:	f101 0108 	add.w	r1, r1, #8
 80034d6:	dd16      	ble.n	8003506 <_vfprintf_r+0xabe>
 80034d8:	3201      	adds	r2, #1
 80034da:	3010      	adds	r0, #16
 80034dc:	2310      	movs	r3, #16
 80034de:	2a07      	cmp	r2, #7
 80034e0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80034e4:	600c      	str	r4, [r1, #0]
 80034e6:	604b      	str	r3, [r1, #4]
 80034e8:	ddf1      	ble.n	80034ce <_vfprintf_r+0xa86>
 80034ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ec:	4631      	mov	r1, r6
 80034ee:	9803      	ldr	r0, [sp, #12]
 80034f0:	f003 fdd8 	bl	80070a4 <__sprint_r>
 80034f4:	2800      	cmp	r0, #0
 80034f6:	f040 80a8 	bne.w	800364a <_vfprintf_r+0xc02>
 80034fa:	3d10      	subs	r5, #16
 80034fc:	2d10      	cmp	r5, #16
 80034fe:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003502:	a92d      	add	r1, sp, #180	; 0xb4
 8003504:	dce8      	bgt.n	80034d8 <_vfprintf_r+0xa90>
 8003506:	463e      	mov	r6, r7
 8003508:	4623      	mov	r3, r4
 800350a:	465f      	mov	r7, fp
 800350c:	4604      	mov	r4, r0
 800350e:	468b      	mov	fp, r1
 8003510:	3201      	adds	r2, #1
 8003512:	442c      	add	r4, r5
 8003514:	2a07      	cmp	r2, #7
 8003516:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800351a:	e9cb 3500 	strd	r3, r5, [fp]
 800351e:	f300 8292 	bgt.w	8003a46 <_vfprintf_r+0xffe>
 8003522:	f10b 0b08 	add.w	fp, fp, #8
 8003526:	e490      	b.n	8002e4a <_vfprintf_r+0x402>
 8003528:	aa2a      	add	r2, sp, #168	; 0xa8
 800352a:	9907      	ldr	r1, [sp, #28]
 800352c:	9803      	ldr	r0, [sp, #12]
 800352e:	f003 fdb9 	bl	80070a4 <__sprint_r>
 8003532:	2800      	cmp	r0, #0
 8003534:	f43f ad23 	beq.w	8002f7e <_vfprintf_r+0x536>
 8003538:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800353c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800353e:	b111      	cbz	r1, 8003546 <_vfprintf_r+0xafe>
 8003540:	9803      	ldr	r0, [sp, #12]
 8003542:	f002 f9c1 	bl	80058c8 <_free_r>
 8003546:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800354a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800354e:	07d0      	lsls	r0, r2, #31
 8003550:	d402      	bmi.n	8003558 <_vfprintf_r+0xb10>
 8003552:	0599      	lsls	r1, r3, #22
 8003554:	f140 81d0 	bpl.w	80038f8 <_vfprintf_r+0xeb0>
 8003558:	065a      	lsls	r2, r3, #25
 800355a:	f53f ab65 	bmi.w	8002c28 <_vfprintf_r+0x1e0>
 800355e:	9805      	ldr	r0, [sp, #20]
 8003560:	b057      	add	sp, #348	; 0x15c
 8003562:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003566:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003568:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800356a:	2a01      	cmp	r2, #1
 800356c:	f104 0401 	add.w	r4, r4, #1
 8003570:	f103 0501 	add.w	r5, r3, #1
 8003574:	f10b 0608 	add.w	r6, fp, #8
 8003578:	f340 811c 	ble.w	80037b4 <_vfprintf_r+0xd6c>
 800357c:	2301      	movs	r3, #1
 800357e:	2d07      	cmp	r5, #7
 8003580:	f8cb 7000 	str.w	r7, [fp]
 8003584:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003588:	f8cb 3004 	str.w	r3, [fp, #4]
 800358c:	f300 81bb 	bgt.w	8003906 <_vfprintf_r+0xebe>
 8003590:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003592:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003594:	1c69      	adds	r1, r5, #1
 8003596:	441c      	add	r4, r3
 8003598:	2907      	cmp	r1, #7
 800359a:	910b      	str	r1, [sp, #44]	; 0x2c
 800359c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80035a0:	e9c6 2300 	strd	r2, r3, [r6]
 80035a4:	f300 81bb 	bgt.w	800391e <_vfprintf_r+0xed6>
 80035a8:	3608      	adds	r6, #8
 80035aa:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80035ac:	1c53      	adds	r3, r2, #1
 80035ae:	461d      	mov	r5, r3
 80035b0:	9509      	str	r5, [sp, #36]	; 0x24
 80035b2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80035b4:	930e      	str	r3, [sp, #56]	; 0x38
 80035b6:	2200      	movs	r2, #0
 80035b8:	2300      	movs	r3, #0
 80035ba:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80035be:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80035c2:	f106 0b08 	add.w	fp, r6, #8
 80035c6:	f7fd fd7f 	bl	80010c8 <__aeabi_dcmpeq>
 80035ca:	2800      	cmp	r0, #0
 80035cc:	f040 80c2 	bne.w	8003754 <_vfprintf_r+0xd0c>
 80035d0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80035d2:	f8c6 9004 	str.w	r9, [r6, #4]
 80035d6:	3701      	adds	r7, #1
 80035d8:	444c      	add	r4, r9
 80035da:	2d07      	cmp	r5, #7
 80035dc:	6037      	str	r7, [r6, #0]
 80035de:	942c      	str	r4, [sp, #176]	; 0xb0
 80035e0:	952b      	str	r5, [sp, #172]	; 0xac
 80035e2:	f300 80f9 	bgt.w	80037d8 <_vfprintf_r+0xd90>
 80035e6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80035e8:	f106 0310 	add.w	r3, r6, #16
 80035ec:	3202      	adds	r2, #2
 80035ee:	465e      	mov	r6, fp
 80035f0:	9209      	str	r2, [sp, #36]	; 0x24
 80035f2:	469b      	mov	fp, r3
 80035f4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80035f6:	6072      	str	r2, [r6, #4]
 80035f8:	4414      	add	r4, r2
 80035fa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80035fc:	942c      	str	r4, [sp, #176]	; 0xb0
 80035fe:	ab26      	add	r3, sp, #152	; 0x98
 8003600:	2a07      	cmp	r2, #7
 8003602:	922b      	str	r2, [sp, #172]	; 0xac
 8003604:	6033      	str	r3, [r6, #0]
 8003606:	f77f ac70 	ble.w	8002eea <_vfprintf_r+0x4a2>
 800360a:	aa2a      	add	r2, sp, #168	; 0xa8
 800360c:	9907      	ldr	r1, [sp, #28]
 800360e:	9803      	ldr	r0, [sp, #12]
 8003610:	f003 fd48 	bl	80070a4 <__sprint_r>
 8003614:	2800      	cmp	r0, #0
 8003616:	d18f      	bne.n	8003538 <_vfprintf_r+0xaf0>
 8003618:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800361a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800361e:	e464      	b.n	8002eea <_vfprintf_r+0x4a2>
 8003620:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003622:	af56      	add	r7, sp, #344	; 0x158
 8003624:	0923      	lsrs	r3, r4, #4
 8003626:	f004 010f 	and.w	r1, r4, #15
 800362a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800362e:	092a      	lsrs	r2, r5, #4
 8003630:	461c      	mov	r4, r3
 8003632:	4615      	mov	r5, r2
 8003634:	5c43      	ldrb	r3, [r0, r1]
 8003636:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800363a:	ea54 0305 	orrs.w	r3, r4, r5
 800363e:	d1f1      	bne.n	8003624 <_vfprintf_r+0xbdc>
 8003640:	9b04      	ldr	r3, [sp, #16]
 8003642:	1bdb      	subs	r3, r3, r7
 8003644:	9309      	str	r3, [sp, #36]	; 0x24
 8003646:	f7ff bb80 	b.w	8002d4a <_vfprintf_r+0x302>
 800364a:	46b1      	mov	r9, r6
 800364c:	e776      	b.n	800353c <_vfprintf_r+0xaf4>
 800364e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003650:	9907      	ldr	r1, [sp, #28]
 8003652:	9803      	ldr	r0, [sp, #12]
 8003654:	f003 fd26 	bl	80070a4 <__sprint_r>
 8003658:	2800      	cmp	r0, #0
 800365a:	f47f af6d 	bne.w	8003538 <_vfprintf_r+0xaf0>
 800365e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003660:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003664:	f7ff bbdd 	b.w	8002e22 <_vfprintf_r+0x3da>
 8003668:	aa2a      	add	r2, sp, #168	; 0xa8
 800366a:	9907      	ldr	r1, [sp, #28]
 800366c:	9803      	ldr	r0, [sp, #12]
 800366e:	f003 fd19 	bl	80070a4 <__sprint_r>
 8003672:	2800      	cmp	r0, #0
 8003674:	f47f af60 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8003678:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800367a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800367e:	f7ff bbe0 	b.w	8002e42 <_vfprintf_r+0x3fa>
 8003682:	4698      	mov	r8, r3
 8003684:	2d00      	cmp	r5, #0
 8003686:	bf08      	it	eq
 8003688:	2c0a      	cmpeq	r4, #10
 800368a:	f080 8170 	bcs.w	800396e <_vfprintf_r+0xf26>
 800368e:	af56      	add	r7, sp, #344	; 0x158
 8003690:	3430      	adds	r4, #48	; 0x30
 8003692:	2301      	movs	r3, #1
 8003694:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003698:	9309      	str	r3, [sp, #36]	; 0x24
 800369a:	f7ff bb56 	b.w	8002d4a <_vfprintf_r+0x302>
 800369e:	aa2a      	add	r2, sp, #168	; 0xa8
 80036a0:	9907      	ldr	r1, [sp, #28]
 80036a2:	9803      	ldr	r0, [sp, #12]
 80036a4:	f003 fcfe 	bl	80070a4 <__sprint_r>
 80036a8:	2800      	cmp	r0, #0
 80036aa:	f47f af45 	bne.w	8003538 <_vfprintf_r+0xaf0>
 80036ae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036b0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036b4:	e406      	b.n	8002ec4 <_vfprintf_r+0x47c>
 80036b6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036b8:	2b00      	cmp	r3, #0
 80036ba:	f340 8273 	ble.w	8003ba4 <_vfprintf_r+0x115c>
 80036be:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80036c2:	4293      	cmp	r3, r2
 80036c4:	bfa8      	it	ge
 80036c6:	4613      	movge	r3, r2
 80036c8:	2b00      	cmp	r3, #0
 80036ca:	461d      	mov	r5, r3
 80036cc:	dd0d      	ble.n	80036ea <_vfprintf_r+0xca2>
 80036ce:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80036d0:	f8cb 7000 	str.w	r7, [fp]
 80036d4:	3301      	adds	r3, #1
 80036d6:	442c      	add	r4, r5
 80036d8:	2b07      	cmp	r3, #7
 80036da:	942c      	str	r4, [sp, #176]	; 0xb0
 80036dc:	f8cb 5004 	str.w	r5, [fp, #4]
 80036e0:	932b      	str	r3, [sp, #172]	; 0xac
 80036e2:	f300 82c1 	bgt.w	8003c68 <_vfprintf_r+0x1220>
 80036e6:	f10b 0b08 	add.w	fp, fp, #8
 80036ea:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80036ec:	2d00      	cmp	r5, #0
 80036ee:	bfa8      	it	ge
 80036f0:	1b5b      	subge	r3, r3, r5
 80036f2:	2b00      	cmp	r3, #0
 80036f4:	461d      	mov	r5, r3
 80036f6:	f340 8099 	ble.w	800382c <_vfprintf_r+0xde4>
 80036fa:	2d10      	cmp	r5, #16
 80036fc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036fe:	4b2c      	ldr	r3, [pc, #176]	; (80037b0 <_vfprintf_r+0xd68>)
 8003700:	f340 83db 	ble.w	8003eba <_vfprintf_r+0x1472>
 8003704:	4618      	mov	r0, r3
 8003706:	4621      	mov	r1, r4
 8003708:	465b      	mov	r3, fp
 800370a:	2610      	movs	r6, #16
 800370c:	46bb      	mov	fp, r7
 800370e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003712:	9c07      	ldr	r4, [sp, #28]
 8003714:	4607      	mov	r7, r0
 8003716:	e004      	b.n	8003722 <_vfprintf_r+0xcda>
 8003718:	3308      	adds	r3, #8
 800371a:	3d10      	subs	r5, #16
 800371c:	2d10      	cmp	r5, #16
 800371e:	f340 83c7 	ble.w	8003eb0 <_vfprintf_r+0x1468>
 8003722:	3201      	adds	r2, #1
 8003724:	3110      	adds	r1, #16
 8003726:	2a07      	cmp	r2, #7
 8003728:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800372c:	e9c3 7600 	strd	r7, r6, [r3]
 8003730:	ddf2      	ble.n	8003718 <_vfprintf_r+0xcd0>
 8003732:	aa2a      	add	r2, sp, #168	; 0xa8
 8003734:	4621      	mov	r1, r4
 8003736:	4648      	mov	r0, r9
 8003738:	f003 fcb4 	bl	80070a4 <__sprint_r>
 800373c:	2800      	cmp	r0, #0
 800373e:	f040 84a5 	bne.w	800408c <_vfprintf_r+0x1644>
 8003742:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003746:	ab2d      	add	r3, sp, #180	; 0xb4
 8003748:	e7e7      	b.n	800371a <_vfprintf_r+0xcd2>
 800374a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800374e:	af56      	add	r7, sp, #344	; 0x158
 8003750:	f7ff bafb 	b.w	8002d4a <_vfprintf_r+0x302>
 8003754:	f1b9 0f00 	cmp.w	r9, #0
 8003758:	f77f af4c 	ble.w	80035f4 <_vfprintf_r+0xbac>
 800375c:	f1b9 0f10 	cmp.w	r9, #16
 8003760:	4b13      	ldr	r3, [pc, #76]	; (80037b0 <_vfprintf_r+0xd68>)
 8003762:	f340 8659 	ble.w	8004418 <_vfprintf_r+0x19d0>
 8003766:	4619      	mov	r1, r3
 8003768:	4622      	mov	r2, r4
 800376a:	4633      	mov	r3, r6
 800376c:	2710      	movs	r7, #16
 800376e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003772:	9c07      	ldr	r4, [sp, #28]
 8003774:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003776:	460e      	mov	r6, r1
 8003778:	e007      	b.n	800378a <_vfprintf_r+0xd42>
 800377a:	3308      	adds	r3, #8
 800377c:	f1a9 0910 	sub.w	r9, r9, #16
 8003780:	f1b9 0f10 	cmp.w	r9, #16
 8003784:	f340 8353 	ble.w	8003e2e <_vfprintf_r+0x13e6>
 8003788:	3501      	adds	r5, #1
 800378a:	3210      	adds	r2, #16
 800378c:	2d07      	cmp	r5, #7
 800378e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003792:	e9c3 6700 	strd	r6, r7, [r3]
 8003796:	ddf0      	ble.n	800377a <_vfprintf_r+0xd32>
 8003798:	aa2a      	add	r2, sp, #168	; 0xa8
 800379a:	4621      	mov	r1, r4
 800379c:	4658      	mov	r0, fp
 800379e:	f003 fc81 	bl	80070a4 <__sprint_r>
 80037a2:	2800      	cmp	r0, #0
 80037a4:	f040 8472 	bne.w	800408c <_vfprintf_r+0x1644>
 80037a8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80037ac:	ab2d      	add	r3, sp, #180	; 0xb4
 80037ae:	e7e5      	b.n	800377c <_vfprintf_r+0xd34>
 80037b0:	080077d0 	.word	0x080077d0
 80037b4:	f018 0f01 	tst.w	r8, #1
 80037b8:	f47f aee0 	bne.w	800357c <_vfprintf_r+0xb34>
 80037bc:	2201      	movs	r2, #1
 80037be:	2d07      	cmp	r5, #7
 80037c0:	f8cb 7000 	str.w	r7, [fp]
 80037c4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80037c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80037cc:	dc04      	bgt.n	80037d8 <_vfprintf_r+0xd90>
 80037ce:	3302      	adds	r3, #2
 80037d0:	9309      	str	r3, [sp, #36]	; 0x24
 80037d2:	f10b 0b10 	add.w	fp, fp, #16
 80037d6:	e70d      	b.n	80035f4 <_vfprintf_r+0xbac>
 80037d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80037da:	9907      	ldr	r1, [sp, #28]
 80037dc:	9803      	ldr	r0, [sp, #12]
 80037de:	f003 fc61 	bl	80070a4 <__sprint_r>
 80037e2:	2800      	cmp	r0, #0
 80037e4:	f47f aea8 	bne.w	8003538 <_vfprintf_r+0xaf0>
 80037e8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80037ec:	3301      	adds	r3, #1
 80037ee:	9309      	str	r3, [sp, #36]	; 0x24
 80037f0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80037f4:	ae2d      	add	r6, sp, #180	; 0xb4
 80037f6:	e6fd      	b.n	80035f4 <_vfprintf_r+0xbac>
 80037f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80037fa:	9907      	ldr	r1, [sp, #28]
 80037fc:	9803      	ldr	r0, [sp, #12]
 80037fe:	f003 fc51 	bl	80070a4 <__sprint_r>
 8003802:	2800      	cmp	r0, #0
 8003804:	f47f ae98 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8003808:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800380c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800380e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003812:	f7ff baf6 	b.w	8002e02 <_vfprintf_r+0x3ba>
 8003816:	aa2a      	add	r2, sp, #168	; 0xa8
 8003818:	9907      	ldr	r1, [sp, #28]
 800381a:	9803      	ldr	r0, [sp, #12]
 800381c:	f003 fc42 	bl	80070a4 <__sprint_r>
 8003820:	2800      	cmp	r0, #0
 8003822:	f47f ae89 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8003826:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003828:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800382c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800382e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003832:	443b      	add	r3, r7
 8003834:	4699      	mov	r9, r3
 8003836:	f040 8357 	bne.w	8003ee8 <_vfprintf_r+0x14a0>
 800383a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800383c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800383e:	4293      	cmp	r3, r2
 8003840:	db49      	blt.n	80038d6 <_vfprintf_r+0xe8e>
 8003842:	f018 0f01 	tst.w	r8, #1
 8003846:	d146      	bne.n	80038d6 <_vfprintf_r+0xe8e>
 8003848:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800384a:	18bd      	adds	r5, r7, r2
 800384c:	eba5 0509 	sub.w	r5, r5, r9
 8003850:	1ad3      	subs	r3, r2, r3
 8003852:	429d      	cmp	r5, r3
 8003854:	bfa8      	it	ge
 8003856:	461d      	movge	r5, r3
 8003858:	2d00      	cmp	r5, #0
 800385a:	dd0d      	ble.n	8003878 <_vfprintf_r+0xe30>
 800385c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800385e:	f8cb 9000 	str.w	r9, [fp]
 8003862:	3201      	adds	r2, #1
 8003864:	442c      	add	r4, r5
 8003866:	2a07      	cmp	r2, #7
 8003868:	942c      	str	r4, [sp, #176]	; 0xb0
 800386a:	f8cb 5004 	str.w	r5, [fp, #4]
 800386e:	922b      	str	r2, [sp, #172]	; 0xac
 8003870:	f300 8462 	bgt.w	8004138 <_vfprintf_r+0x16f0>
 8003874:	f10b 0b08 	add.w	fp, fp, #8
 8003878:	2d00      	cmp	r5, #0
 800387a:	bfac      	ite	ge
 800387c:	1b5d      	subge	r5, r3, r5
 800387e:	461d      	movlt	r5, r3
 8003880:	2d00      	cmp	r5, #0
 8003882:	f77f ab32 	ble.w	8002eea <_vfprintf_r+0x4a2>
 8003886:	2d10      	cmp	r5, #16
 8003888:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800388a:	4bc5      	ldr	r3, [pc, #788]	; (8003ba0 <_vfprintf_r+0x1158>)
 800388c:	f340 80c4 	ble.w	8003a18 <_vfprintf_r+0xfd0>
 8003890:	4619      	mov	r1, r3
 8003892:	2610      	movs	r6, #16
 8003894:	4623      	mov	r3, r4
 8003896:	9f03      	ldr	r7, [sp, #12]
 8003898:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800389c:	460c      	mov	r4, r1
 800389e:	e005      	b.n	80038ac <_vfprintf_r+0xe64>
 80038a0:	f10b 0b08 	add.w	fp, fp, #8
 80038a4:	3d10      	subs	r5, #16
 80038a6:	2d10      	cmp	r5, #16
 80038a8:	f340 80b3 	ble.w	8003a12 <_vfprintf_r+0xfca>
 80038ac:	3201      	adds	r2, #1
 80038ae:	3310      	adds	r3, #16
 80038b0:	2a07      	cmp	r2, #7
 80038b2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80038b6:	e9cb 4600 	strd	r4, r6, [fp]
 80038ba:	ddf1      	ble.n	80038a0 <_vfprintf_r+0xe58>
 80038bc:	aa2a      	add	r2, sp, #168	; 0xa8
 80038be:	4649      	mov	r1, r9
 80038c0:	4638      	mov	r0, r7
 80038c2:	f003 fbef 	bl	80070a4 <__sprint_r>
 80038c6:	2800      	cmp	r0, #0
 80038c8:	f47f ae38 	bne.w	800353c <_vfprintf_r+0xaf4>
 80038cc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80038d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038d4:	e7e6      	b.n	80038a4 <_vfprintf_r+0xe5c>
 80038d6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038d8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80038da:	f8cb 1000 	str.w	r1, [fp]
 80038de:	9915      	ldr	r1, [sp, #84]	; 0x54
 80038e0:	f8cb 1004 	str.w	r1, [fp, #4]
 80038e4:	3201      	adds	r2, #1
 80038e6:	440c      	add	r4, r1
 80038e8:	2a07      	cmp	r2, #7
 80038ea:	942c      	str	r4, [sp, #176]	; 0xb0
 80038ec:	922b      	str	r2, [sp, #172]	; 0xac
 80038ee:	f300 828c 	bgt.w	8003e0a <_vfprintf_r+0x13c2>
 80038f2:	f10b 0b08 	add.w	fp, fp, #8
 80038f6:	e7a7      	b.n	8003848 <_vfprintf_r+0xe00>
 80038f8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80038fc:	f002 fa94 	bl	8005e28 <__retarget_lock_release_recursive>
 8003900:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003904:	e628      	b.n	8003558 <_vfprintf_r+0xb10>
 8003906:	aa2a      	add	r2, sp, #168	; 0xa8
 8003908:	9907      	ldr	r1, [sp, #28]
 800390a:	9803      	ldr	r0, [sp, #12]
 800390c:	f003 fbca 	bl	80070a4 <__sprint_r>
 8003910:	2800      	cmp	r0, #0
 8003912:	f47f ae11 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8003916:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800391a:	ae2d      	add	r6, sp, #180	; 0xb4
 800391c:	e638      	b.n	8003590 <_vfprintf_r+0xb48>
 800391e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003920:	9907      	ldr	r1, [sp, #28]
 8003922:	9803      	ldr	r0, [sp, #12]
 8003924:	f003 fbbe 	bl	80070a4 <__sprint_r>
 8003928:	2800      	cmp	r0, #0
 800392a:	f47f ae05 	bne.w	8003538 <_vfprintf_r+0xaf0>
 800392e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003932:	ae2d      	add	r6, sp, #180	; 0xb4
 8003934:	930b      	str	r3, [sp, #44]	; 0x2c
 8003936:	e638      	b.n	80035aa <_vfprintf_r+0xb62>
 8003938:	6814      	ldr	r4, [r2, #0]
 800393a:	9308      	str	r3, [sp, #32]
 800393c:	2500      	movs	r5, #0
 800393e:	f7ff bb95 	b.w	800306c <_vfprintf_r+0x624>
 8003942:	6814      	ldr	r4, [r2, #0]
 8003944:	9308      	str	r3, [sp, #32]
 8003946:	2500      	movs	r5, #0
 8003948:	f7ff b9ae 	b.w	8002ca8 <_vfprintf_r+0x260>
 800394c:	680c      	ldr	r4, [r1, #0]
 800394e:	9208      	str	r2, [sp, #32]
 8003950:	17e5      	asrs	r5, r4, #31
 8003952:	4620      	mov	r0, r4
 8003954:	4629      	mov	r1, r5
 8003956:	f7ff b9d2 	b.w	8002cfe <_vfprintf_r+0x2b6>
 800395a:	6814      	ldr	r4, [r2, #0]
 800395c:	9108      	str	r1, [sp, #32]
 800395e:	2201      	movs	r2, #1
 8003960:	2500      	movs	r5, #0
 8003962:	f7ff bb32 	b.w	8002fca <_vfprintf_r+0x582>
 8003966:	2a01      	cmp	r2, #1
 8003968:	f47f ab3c 	bne.w	8002fe4 <_vfprintf_r+0x59c>
 800396c:	e68f      	b.n	800368e <_vfprintf_r+0xc46>
 800396e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003972:	2200      	movs	r2, #0
 8003974:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003978:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800397c:	af56      	add	r7, sp, #344	; 0x158
 800397e:	4692      	mov	sl, r2
 8003980:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003984:	461e      	mov	r6, r3
 8003986:	e00a      	b.n	800399e <_vfprintf_r+0xf56>
 8003988:	2300      	movs	r3, #0
 800398a:	4620      	mov	r0, r4
 800398c:	4629      	mov	r1, r5
 800398e:	220a      	movs	r2, #10
 8003990:	f7fc fc36 	bl	8000200 <__aeabi_uldivmod>
 8003994:	4604      	mov	r4, r0
 8003996:	460d      	mov	r5, r1
 8003998:	ea54 0305 	orrs.w	r3, r4, r5
 800399c:	d029      	beq.n	80039f2 <_vfprintf_r+0xfaa>
 800399e:	220a      	movs	r2, #10
 80039a0:	2300      	movs	r3, #0
 80039a2:	4620      	mov	r0, r4
 80039a4:	4629      	mov	r1, r5
 80039a6:	f7fc fc2b 	bl	8000200 <__aeabi_uldivmod>
 80039aa:	3230      	adds	r2, #48	; 0x30
 80039ac:	f807 2c01 	strb.w	r2, [r7, #-1]
 80039b0:	f10a 0a01 	add.w	sl, sl, #1
 80039b4:	3f01      	subs	r7, #1
 80039b6:	2e00      	cmp	r6, #0
 80039b8:	d0e6      	beq.n	8003988 <_vfprintf_r+0xf40>
 80039ba:	f898 3000 	ldrb.w	r3, [r8]
 80039be:	459a      	cmp	sl, r3
 80039c0:	d1e2      	bne.n	8003988 <_vfprintf_r+0xf40>
 80039c2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80039c6:	d0df      	beq.n	8003988 <_vfprintf_r+0xf40>
 80039c8:	2d00      	cmp	r5, #0
 80039ca:	bf08      	it	eq
 80039cc:	2c0a      	cmpeq	r4, #10
 80039ce:	d3db      	bcc.n	8003988 <_vfprintf_r+0xf40>
 80039d0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80039d2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80039d4:	1aff      	subs	r7, r7, r3
 80039d6:	461a      	mov	r2, r3
 80039d8:	4638      	mov	r0, r7
 80039da:	f003 faf5 	bl	8006fc8 <strncpy>
 80039de:	f898 3001 	ldrb.w	r3, [r8, #1]
 80039e2:	2b00      	cmp	r3, #0
 80039e4:	f000 8496 	beq.w	8004314 <_vfprintf_r+0x18cc>
 80039e8:	f108 0801 	add.w	r8, r8, #1
 80039ec:	f04f 0a00 	mov.w	sl, #0
 80039f0:	e7ca      	b.n	8003988 <_vfprintf_r+0xf40>
 80039f2:	9b04      	ldr	r3, [sp, #16]
 80039f4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80039f8:	1bdb      	subs	r3, r3, r7
 80039fa:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80039fe:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003a00:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003a04:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003a08:	9309      	str	r3, [sp, #36]	; 0x24
 8003a0a:	f7ff b99e 	b.w	8002d4a <_vfprintf_r+0x302>
 8003a0e:	46c1      	mov	r9, r8
 8003a10:	e594      	b.n	800353c <_vfprintf_r+0xaf4>
 8003a12:	4621      	mov	r1, r4
 8003a14:	461c      	mov	r4, r3
 8003a16:	460b      	mov	r3, r1
 8003a18:	3201      	adds	r2, #1
 8003a1a:	442c      	add	r4, r5
 8003a1c:	2a07      	cmp	r2, #7
 8003a1e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a22:	e9cb 3500 	strd	r3, r5, [fp]
 8003a26:	f77f aa5e 	ble.w	8002ee6 <_vfprintf_r+0x49e>
 8003a2a:	e5ee      	b.n	800360a <_vfprintf_r+0xbc2>
 8003a2c:	f018 0f10 	tst.w	r8, #16
 8003a30:	f040 80f8 	bne.w	8003c24 <_vfprintf_r+0x11dc>
 8003a34:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003a38:	f000 8351 	beq.w	80040de <_vfprintf_r+0x1696>
 8003a3c:	9a05      	ldr	r2, [sp, #20]
 8003a3e:	801a      	strh	r2, [r3, #0]
 8003a40:	4657      	mov	r7, sl
 8003a42:	f7ff baa7 	b.w	8002f94 <_vfprintf_r+0x54c>
 8003a46:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a48:	9907      	ldr	r1, [sp, #28]
 8003a4a:	9803      	ldr	r0, [sp, #12]
 8003a4c:	f003 fb2a 	bl	80070a4 <__sprint_r>
 8003a50:	2800      	cmp	r0, #0
 8003a52:	f47f ad71 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8003a56:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a58:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a5c:	f7ff b9f5 	b.w	8002e4a <_vfprintf_r+0x402>
 8003a60:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003a64:	4602      	mov	r2, r0
 8003a66:	460b      	mov	r3, r1
 8003a68:	f7fd fb60 	bl	800112c <__aeabi_dcmpun>
 8003a6c:	2800      	cmp	r0, #0
 8003a6e:	f040 8491 	bne.w	8004394 <_vfprintf_r+0x194c>
 8003a72:	2e61      	cmp	r6, #97	; 0x61
 8003a74:	f000 8111 	beq.w	8003c9a <_vfprintf_r+0x1252>
 8003a78:	2e41      	cmp	r6, #65	; 0x41
 8003a7a:	f000 8377 	beq.w	800416c <_vfprintf_r+0x1724>
 8003a7e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003a82:	f026 0220 	bic.w	r2, r6, #32
 8003a86:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003a8a:	930e      	str	r3, [sp, #56]	; 0x38
 8003a8c:	9204      	str	r2, [sp, #16]
 8003a8e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003a90:	f000 842d 	beq.w	80042ee <_vfprintf_r+0x18a6>
 8003a94:	2a47      	cmp	r2, #71	; 0x47
 8003a96:	f000 8424 	beq.w	80042e2 <_vfprintf_r+0x189a>
 8003a9a:	2b00      	cmp	r3, #0
 8003a9c:	f2c0 82f9 	blt.w	8004092 <_vfprintf_r+0x164a>
 8003aa0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003aa4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003aa8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003aac:	2e66      	cmp	r6, #102	; 0x66
 8003aae:	f000 83eb 	beq.w	8004288 <_vfprintf_r+0x1840>
 8003ab2:	2e46      	cmp	r6, #70	; 0x46
 8003ab4:	f000 847e 	beq.w	80043b4 <_vfprintf_r+0x196c>
 8003ab8:	9b04      	ldr	r3, [sp, #16]
 8003aba:	9803      	ldr	r0, [sp, #12]
 8003abc:	2b45      	cmp	r3, #69	; 0x45
 8003abe:	bf0c      	ite	eq
 8003ac0:	f109 0501 	addeq.w	r5, r9, #1
 8003ac4:	464d      	movne	r5, r9
 8003ac6:	aa28      	add	r2, sp, #160	; 0xa0
 8003ac8:	ab25      	add	r3, sp, #148	; 0x94
 8003aca:	e9cd 3200 	strd	r3, r2, [sp]
 8003ace:	2102      	movs	r1, #2
 8003ad0:	ab24      	add	r3, sp, #144	; 0x90
 8003ad2:	462a      	mov	r2, r5
 8003ad4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003ad8:	f000 fe3e 	bl	8004758 <_dtoa_r>
 8003adc:	2e67      	cmp	r6, #103	; 0x67
 8003ade:	4607      	mov	r7, r0
 8003ae0:	f040 849c 	bne.w	800441c <_vfprintf_r+0x19d4>
 8003ae4:	f018 0f01 	tst.w	r8, #1
 8003ae8:	f040 83f9 	bne.w	80042de <_vfprintf_r+0x1896>
 8003aec:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003aee:	4640      	mov	r0, r8
 8003af0:	1bdb      	subs	r3, r3, r7
 8003af2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003af6:	9310      	str	r3, [sp, #64]	; 0x40
 8003af8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003afa:	9311      	str	r3, [sp, #68]	; 0x44
 8003afc:	9b04      	ldr	r3, [sp, #16]
 8003afe:	2b47      	cmp	r3, #71	; 0x47
 8003b00:	f000 81e7 	beq.w	8003ed2 <_vfprintf_r+0x148a>
 8003b04:	9b04      	ldr	r3, [sp, #16]
 8003b06:	2b46      	cmp	r3, #70	; 0x46
 8003b08:	f000 8300 	beq.w	800410c <_vfprintf_r+0x16c4>
 8003b0c:	9904      	ldr	r1, [sp, #16]
 8003b0e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b10:	b2f2      	uxtb	r2, r6
 8003b12:	2941      	cmp	r1, #65	; 0x41
 8003b14:	bf08      	it	eq
 8003b16:	320f      	addeq	r2, #15
 8003b18:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003b1c:	bf06      	itte	eq
 8003b1e:	b2d2      	uxtbeq	r2, r2
 8003b20:	2101      	moveq	r1, #1
 8003b22:	2100      	movne	r1, #0
 8003b24:	2b00      	cmp	r3, #0
 8003b26:	9324      	str	r3, [sp, #144]	; 0x90
 8003b28:	bfb8      	it	lt
 8003b2a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003b2c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003b30:	bfba      	itte	lt
 8003b32:	f1c3 0301 	rsblt	r3, r3, #1
 8003b36:	222d      	movlt	r2, #45	; 0x2d
 8003b38:	222b      	movge	r2, #43	; 0x2b
 8003b3a:	2b09      	cmp	r3, #9
 8003b3c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003b40:	f300 83f9 	bgt.w	8004336 <_vfprintf_r+0x18ee>
 8003b44:	2900      	cmp	r1, #0
 8003b46:	f040 8487 	bne.w	8004458 <_vfprintf_r+0x1a10>
 8003b4a:	2230      	movs	r2, #48	; 0x30
 8003b4c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003b50:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003b54:	3330      	adds	r3, #48	; 0x30
 8003b56:	7013      	strb	r3, [r2, #0]
 8003b58:	1c53      	adds	r3, r2, #1
 8003b5a:	aa26      	add	r2, sp, #152	; 0x98
 8003b5c:	1a9b      	subs	r3, r3, r2
 8003b5e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b60:	9319      	str	r3, [sp, #100]	; 0x64
 8003b62:	2a01      	cmp	r2, #1
 8003b64:	4413      	add	r3, r2
 8003b66:	9309      	str	r3, [sp, #36]	; 0x24
 8003b68:	f340 8442 	ble.w	80043f0 <_vfprintf_r+0x19a8>
 8003b6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b6e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b70:	4413      	add	r3, r2
 8003b72:	9309      	str	r3, [sp, #36]	; 0x24
 8003b74:	2300      	movs	r3, #0
 8003b76:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b78:	9314      	str	r3, [sp, #80]	; 0x50
 8003b7a:	9311      	str	r3, [sp, #68]	; 0x44
 8003b7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b7e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003b82:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b86:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003b8a:	9304      	str	r3, [sp, #16]
 8003b8c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003b8e:	2b00      	cmp	r3, #0
 8003b90:	f040 8275 	bne.w	800407e <_vfprintf_r+0x1636>
 8003b94:	4699      	mov	r9, r3
 8003b96:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003b9a:	f7ff b8e2 	b.w	8002d62 <_vfprintf_r+0x31a>
 8003b9e:	bf00      	nop
 8003ba0:	080077d0 	.word	0x080077d0
 8003ba4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003ba6:	49bd      	ldr	r1, [pc, #756]	; (8003e9c <_vfprintf_r+0x1454>)
 8003ba8:	f8cb 1000 	str.w	r1, [fp]
 8003bac:	3201      	adds	r2, #1
 8003bae:	3401      	adds	r4, #1
 8003bb0:	2101      	movs	r1, #1
 8003bb2:	2a07      	cmp	r2, #7
 8003bb4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003bb8:	f8cb 1004 	str.w	r1, [fp, #4]
 8003bbc:	dc60      	bgt.n	8003c80 <_vfprintf_r+0x1238>
 8003bbe:	f10b 0b08 	add.w	fp, fp, #8
 8003bc2:	b92b      	cbnz	r3, 8003bd0 <_vfprintf_r+0x1188>
 8003bc4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003bc6:	b91a      	cbnz	r2, 8003bd0 <_vfprintf_r+0x1188>
 8003bc8:	f018 0f01 	tst.w	r8, #1
 8003bcc:	f43f a98d 	beq.w	8002eea <_vfprintf_r+0x4a2>
 8003bd0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003bd2:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003bd4:	f8cb 1000 	str.w	r1, [fp]
 8003bd8:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003bda:	f8cb 1004 	str.w	r1, [fp, #4]
 8003bde:	3201      	adds	r2, #1
 8003be0:	440c      	add	r4, r1
 8003be2:	2a07      	cmp	r2, #7
 8003be4:	942c      	str	r4, [sp, #176]	; 0xb0
 8003be6:	922b      	str	r2, [sp, #172]	; 0xac
 8003be8:	f300 8282 	bgt.w	80040f0 <_vfprintf_r+0x16a8>
 8003bec:	f10b 0b08 	add.w	fp, fp, #8
 8003bf0:	2b00      	cmp	r3, #0
 8003bf2:	f2c0 82e7 	blt.w	80041c4 <_vfprintf_r+0x177c>
 8003bf6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bf8:	3201      	adds	r2, #1
 8003bfa:	441c      	add	r4, r3
 8003bfc:	2a07      	cmp	r2, #7
 8003bfe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003c02:	e9cb 7300 	strd	r7, r3, [fp]
 8003c06:	f77f a96e 	ble.w	8002ee6 <_vfprintf_r+0x49e>
 8003c0a:	e4fe      	b.n	800360a <_vfprintf_r+0xbc2>
 8003c0c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c0e:	9907      	ldr	r1, [sp, #28]
 8003c10:	9803      	ldr	r0, [sp, #12]
 8003c12:	f003 fa47 	bl	80070a4 <__sprint_r>
 8003c16:	2800      	cmp	r0, #0
 8003c18:	f47f ac8e 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8003c1c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c20:	f7ff bbf0 	b.w	8003404 <_vfprintf_r+0x9bc>
 8003c24:	9a05      	ldr	r2, [sp, #20]
 8003c26:	601a      	str	r2, [r3, #0]
 8003c28:	4657      	mov	r7, sl
 8003c2a:	f7ff b9b3 	b.w	8002f94 <_vfprintf_r+0x54c>
 8003c2e:	8814      	ldrh	r4, [r2, #0]
 8003c30:	9108      	str	r1, [sp, #32]
 8003c32:	2500      	movs	r5, #0
 8003c34:	2201      	movs	r2, #1
 8003c36:	f7ff b9c8 	b.w	8002fca <_vfprintf_r+0x582>
 8003c3a:	8814      	ldrh	r4, [r2, #0]
 8003c3c:	9308      	str	r3, [sp, #32]
 8003c3e:	2500      	movs	r5, #0
 8003c40:	f7ff ba14 	b.w	800306c <_vfprintf_r+0x624>
 8003c44:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003c48:	9208      	str	r2, [sp, #32]
 8003c4a:	17e5      	asrs	r5, r4, #31
 8003c4c:	4620      	mov	r0, r4
 8003c4e:	4629      	mov	r1, r5
 8003c50:	f7ff b855 	b.w	8002cfe <_vfprintf_r+0x2b6>
 8003c54:	8814      	ldrh	r4, [r2, #0]
 8003c56:	9308      	str	r3, [sp, #32]
 8003c58:	2500      	movs	r5, #0
 8003c5a:	f7ff b825 	b.w	8002ca8 <_vfprintf_r+0x260>
 8003c5e:	222d      	movs	r2, #45	; 0x2d
 8003c60:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003c64:	f7ff baa2 	b.w	80031ac <_vfprintf_r+0x764>
 8003c68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c6a:	9907      	ldr	r1, [sp, #28]
 8003c6c:	9803      	ldr	r0, [sp, #12]
 8003c6e:	f003 fa19 	bl	80070a4 <__sprint_r>
 8003c72:	2800      	cmp	r0, #0
 8003c74:	f47f ac60 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8003c78:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c7a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c7e:	e534      	b.n	80036ea <_vfprintf_r+0xca2>
 8003c80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c82:	9907      	ldr	r1, [sp, #28]
 8003c84:	9803      	ldr	r0, [sp, #12]
 8003c86:	f003 fa0d 	bl	80070a4 <__sprint_r>
 8003c8a:	2800      	cmp	r0, #0
 8003c8c:	f47f ac54 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8003c90:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c92:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c94:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c98:	e793      	b.n	8003bc2 <_vfprintf_r+0x117a>
 8003c9a:	2330      	movs	r3, #48	; 0x30
 8003c9c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003ca0:	2378      	movs	r3, #120	; 0x78
 8003ca2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003ca6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003caa:	f048 0402 	orr.w	r4, r8, #2
 8003cae:	f300 82b0 	bgt.w	8004212 <_vfprintf_r+0x17ca>
 8003cb2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003cb6:	930e      	str	r3, [sp, #56]	; 0x38
 8003cb8:	f026 0320 	bic.w	r3, r6, #32
 8003cbc:	9304      	str	r3, [sp, #16]
 8003cbe:	2200      	movs	r2, #0
 8003cc0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003cc2:	920a      	str	r2, [sp, #40]	; 0x28
 8003cc4:	46a0      	mov	r8, r4
 8003cc6:	af3d      	add	r7, sp, #244	; 0xf4
 8003cc8:	2b00      	cmp	r3, #0
 8003cca:	f2c0 81e3 	blt.w	8004094 <_vfprintf_r+0x164c>
 8003cce:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003cd2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003cd6:	2300      	movs	r3, #0
 8003cd8:	930b      	str	r3, [sp, #44]	; 0x2c
 8003cda:	2e61      	cmp	r6, #97	; 0x61
 8003cdc:	f000 8255 	beq.w	800418a <_vfprintf_r+0x1742>
 8003ce0:	2e41      	cmp	r6, #65	; 0x41
 8003ce2:	f47f aee3 	bne.w	8003aac <_vfprintf_r+0x1064>
 8003ce6:	a824      	add	r0, sp, #144	; 0x90
 8003ce8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003cec:	f003 f8e2 	bl	8006eb4 <frexp>
 8003cf0:	2200      	movs	r2, #0
 8003cf2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003cf6:	ec51 0b10 	vmov	r0, r1, d0
 8003cfa:	f7fc ff7d 	bl	8000bf8 <__aeabi_dmul>
 8003cfe:	2200      	movs	r2, #0
 8003d00:	2300      	movs	r3, #0
 8003d02:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003d06:	f7fd f9df 	bl	80010c8 <__aeabi_dcmpeq>
 8003d0a:	2800      	cmp	r0, #0
 8003d0c:	f040 8305 	bne.w	800431a <_vfprintf_r+0x18d2>
 8003d10:	4b63      	ldr	r3, [pc, #396]	; (8003ea0 <_vfprintf_r+0x1458>)
 8003d12:	9309      	str	r3, [sp, #36]	; 0x24
 8003d14:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003d18:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003d1c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003d20:	9721      	str	r7, [sp, #132]	; 0x84
 8003d22:	46b9      	mov	r9, r7
 8003d24:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003d28:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003d2c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003d30:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003d34:	e003      	b.n	8003d3e <_vfprintf_r+0x12f6>
 8003d36:	f7fd f9c7 	bl	80010c8 <__aeabi_dcmpeq>
 8003d3a:	bb20      	cbnz	r0, 8003d86 <_vfprintf_r+0x133e>
 8003d3c:	46a9      	mov	r9, r5
 8003d3e:	2200      	movs	r2, #0
 8003d40:	4b58      	ldr	r3, [pc, #352]	; (8003ea4 <_vfprintf_r+0x145c>)
 8003d42:	4630      	mov	r0, r6
 8003d44:	4639      	mov	r1, r7
 8003d46:	f7fc ff57 	bl	8000bf8 <__aeabi_dmul>
 8003d4a:	460f      	mov	r7, r1
 8003d4c:	4606      	mov	r6, r0
 8003d4e:	f7fd fa03 	bl	8001158 <__aeabi_d2iz>
 8003d52:	4680      	mov	r8, r0
 8003d54:	f7fc fee6 	bl	8000b24 <__aeabi_i2d>
 8003d58:	4602      	mov	r2, r0
 8003d5a:	460b      	mov	r3, r1
 8003d5c:	4630      	mov	r0, r6
 8003d5e:	4639      	mov	r1, r7
 8003d60:	f7fc fd92 	bl	8000888 <__aeabi_dsub>
 8003d64:	464d      	mov	r5, r9
 8003d66:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003d6a:	f805 cb01 	strb.w	ip, [r5], #1
 8003d6e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003d72:	46a3      	mov	fp, r4
 8003d74:	4606      	mov	r6, r0
 8003d76:	460f      	mov	r7, r1
 8003d78:	f04f 0200 	mov.w	r2, #0
 8003d7c:	f04f 0300 	mov.w	r3, #0
 8003d80:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003d84:	d1d7      	bne.n	8003d36 <_vfprintf_r+0x12ee>
 8003d86:	4630      	mov	r0, r6
 8003d88:	4639      	mov	r1, r7
 8003d8a:	2200      	movs	r2, #0
 8003d8c:	4b46      	ldr	r3, [pc, #280]	; (8003ea8 <_vfprintf_r+0x1460>)
 8003d8e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003d92:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003d94:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003d98:	4644      	mov	r4, r8
 8003d9a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003d9e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003da2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003da6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003daa:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003dac:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003db0:	f7fd f9b2 	bl	8001118 <__aeabi_dcmpgt>
 8003db4:	2800      	cmp	r0, #0
 8003db6:	f040 8176 	bne.w	80040a6 <_vfprintf_r+0x165e>
 8003dba:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003dbe:	2200      	movs	r2, #0
 8003dc0:	4b39      	ldr	r3, [pc, #228]	; (8003ea8 <_vfprintf_r+0x1460>)
 8003dc2:	f7fd f981 	bl	80010c8 <__aeabi_dcmpeq>
 8003dc6:	b110      	cbz	r0, 8003dce <_vfprintf_r+0x1386>
 8003dc8:	07e2      	lsls	r2, r4, #31
 8003dca:	f100 816c 	bmi.w	80040a6 <_vfprintf_r+0x165e>
 8003dce:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003dd0:	2b00      	cmp	r3, #0
 8003dd2:	db07      	blt.n	8003de4 <_vfprintf_r+0x139c>
 8003dd4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003dd6:	3301      	adds	r3, #1
 8003dd8:	442b      	add	r3, r5
 8003dda:	2230      	movs	r2, #48	; 0x30
 8003ddc:	f805 2b01 	strb.w	r2, [r5], #1
 8003de0:	42ab      	cmp	r3, r5
 8003de2:	d1fb      	bne.n	8003ddc <_vfprintf_r+0x1394>
 8003de4:	1beb      	subs	r3, r5, r7
 8003de6:	4640      	mov	r0, r8
 8003de8:	9310      	str	r3, [sp, #64]	; 0x40
 8003dea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003dee:	e683      	b.n	8003af8 <_vfprintf_r+0x10b0>
 8003df0:	f8cd 9010 	str.w	r9, [sp, #16]
 8003df4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003df8:	9408      	str	r4, [sp, #32]
 8003dfa:	4681      	mov	r9, r0
 8003dfc:	900f      	str	r0, [sp, #60]	; 0x3c
 8003dfe:	9014      	str	r0, [sp, #80]	; 0x50
 8003e00:	9011      	str	r0, [sp, #68]	; 0x44
 8003e02:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003e06:	f7fe bfac 	b.w	8002d62 <_vfprintf_r+0x31a>
 8003e0a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e0c:	9907      	ldr	r1, [sp, #28]
 8003e0e:	9803      	ldr	r0, [sp, #12]
 8003e10:	f003 f948 	bl	80070a4 <__sprint_r>
 8003e14:	2800      	cmp	r0, #0
 8003e16:	f47f ab8f 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8003e1a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e1c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e1e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e22:	e511      	b.n	8003848 <_vfprintf_r+0xe00>
 8003e24:	4252      	negs	r2, r2
 8003e26:	9206      	str	r2, [sp, #24]
 8003e28:	9308      	str	r3, [sp, #32]
 8003e2a:	f7ff b96d 	b.w	8003108 <_vfprintf_r+0x6c0>
 8003e2e:	4614      	mov	r4, r2
 8003e30:	4632      	mov	r2, r6
 8003e32:	461e      	mov	r6, r3
 8003e34:	4613      	mov	r3, r2
 8003e36:	462a      	mov	r2, r5
 8003e38:	3201      	adds	r2, #1
 8003e3a:	9209      	str	r2, [sp, #36]	; 0x24
 8003e3c:	f106 0208 	add.w	r2, r6, #8
 8003e40:	e9c6 3900 	strd	r3, r9, [r6]
 8003e44:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e46:	932b      	str	r3, [sp, #172]	; 0xac
 8003e48:	444c      	add	r4, r9
 8003e4a:	2b07      	cmp	r3, #7
 8003e4c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003e4e:	f73f acc3 	bgt.w	80037d8 <_vfprintf_r+0xd90>
 8003e52:	3301      	adds	r3, #1
 8003e54:	9309      	str	r3, [sp, #36]	; 0x24
 8003e56:	f102 0b08 	add.w	fp, r2, #8
 8003e5a:	4616      	mov	r6, r2
 8003e5c:	f7ff bbca 	b.w	80035f4 <_vfprintf_r+0xbac>
 8003e60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e62:	9907      	ldr	r1, [sp, #28]
 8003e64:	9803      	ldr	r0, [sp, #12]
 8003e66:	f003 f91d 	bl	80070a4 <__sprint_r>
 8003e6a:	2800      	cmp	r0, #0
 8003e6c:	f47f ab64 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8003e70:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e72:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e76:	f7ff bade 	b.w	8003436 <_vfprintf_r+0x9ee>
 8003e7a:	464b      	mov	r3, r9
 8003e7c:	2b06      	cmp	r3, #6
 8003e7e:	bf28      	it	cs
 8003e80:	2306      	movcs	r3, #6
 8003e82:	46b9      	mov	r9, r7
 8003e84:	970f      	str	r7, [sp, #60]	; 0x3c
 8003e86:	9714      	str	r7, [sp, #80]	; 0x50
 8003e88:	9711      	str	r7, [sp, #68]	; 0x44
 8003e8a:	970a      	str	r7, [sp, #40]	; 0x28
 8003e8c:	463a      	mov	r2, r7
 8003e8e:	9304      	str	r3, [sp, #16]
 8003e90:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003e94:	4f05      	ldr	r7, [pc, #20]	; (8003eac <_vfprintf_r+0x1464>)
 8003e96:	f7fe bf64 	b.w	8002d62 <_vfprintf_r+0x31a>
 8003e9a:	bf00      	nop
 8003e9c:	080077bc 	.word	0x080077bc
 8003ea0:	080077a0 	.word	0x080077a0
 8003ea4:	40300000 	.word	0x40300000
 8003ea8:	3fe00000 	.word	0x3fe00000
 8003eac:	080077b4 	.word	0x080077b4
 8003eb0:	460c      	mov	r4, r1
 8003eb2:	4639      	mov	r1, r7
 8003eb4:	465f      	mov	r7, fp
 8003eb6:	469b      	mov	fp, r3
 8003eb8:	460b      	mov	r3, r1
 8003eba:	3201      	adds	r2, #1
 8003ebc:	442c      	add	r4, r5
 8003ebe:	2a07      	cmp	r2, #7
 8003ec0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ec4:	e9cb 3500 	strd	r3, r5, [fp]
 8003ec8:	f73f aca5 	bgt.w	8003816 <_vfprintf_r+0xdce>
 8003ecc:	f10b 0b08 	add.w	fp, fp, #8
 8003ed0:	e4ac      	b.n	800382c <_vfprintf_r+0xde4>
 8003ed2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ed4:	1cda      	adds	r2, r3, #3
 8003ed6:	db02      	blt.n	8003ede <_vfprintf_r+0x1496>
 8003ed8:	4599      	cmp	r9, r3
 8003eda:	f280 80b5 	bge.w	8004048 <_vfprintf_r+0x1600>
 8003ede:	3e02      	subs	r6, #2
 8003ee0:	f026 0320 	bic.w	r3, r6, #32
 8003ee4:	9304      	str	r3, [sp, #16]
 8003ee6:	e611      	b.n	8003b0c <_vfprintf_r+0x10c4>
 8003ee8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003eea:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003eee:	465a      	mov	r2, fp
 8003ef0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003ef4:	18fb      	adds	r3, r7, r3
 8003ef6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003efa:	970c      	str	r7, [sp, #48]	; 0x30
 8003efc:	4eaf      	ldr	r6, [pc, #700]	; (80041bc <_vfprintf_r+0x1774>)
 8003efe:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003f02:	9309      	str	r3, [sp, #36]	; 0x24
 8003f04:	464f      	mov	r7, r9
 8003f06:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003f0a:	4621      	mov	r1, r4
 8003f0c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f0e:	2b00      	cmp	r3, #0
 8003f10:	d05b      	beq.n	8003fca <_vfprintf_r+0x1582>
 8003f12:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f14:	2b00      	cmp	r3, #0
 8003f16:	d154      	bne.n	8003fc2 <_vfprintf_r+0x157a>
 8003f18:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f1a:	3b01      	subs	r3, #1
 8003f1c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003f20:	9314      	str	r3, [sp, #80]	; 0x50
 8003f22:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003f24:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003f26:	6010      	str	r0, [r2, #0]
 8003f28:	3301      	adds	r3, #1
 8003f2a:	4459      	add	r1, fp
 8003f2c:	2b07      	cmp	r3, #7
 8003f2e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003f30:	f8c2 b004 	str.w	fp, [r2, #4]
 8003f34:	932b      	str	r3, [sp, #172]	; 0xac
 8003f36:	dc68      	bgt.n	800400a <_vfprintf_r+0x15c2>
 8003f38:	3208      	adds	r2, #8
 8003f3a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003f3c:	f898 3000 	ldrb.w	r3, [r8]
 8003f40:	1bc5      	subs	r5, r0, r7
 8003f42:	429d      	cmp	r5, r3
 8003f44:	bfa8      	it	ge
 8003f46:	461d      	movge	r5, r3
 8003f48:	2d00      	cmp	r5, #0
 8003f4a:	dd0b      	ble.n	8003f64 <_vfprintf_r+0x151c>
 8003f4c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003f4e:	6017      	str	r7, [r2, #0]
 8003f50:	3301      	adds	r3, #1
 8003f52:	4429      	add	r1, r5
 8003f54:	2b07      	cmp	r3, #7
 8003f56:	912c      	str	r1, [sp, #176]	; 0xb0
 8003f58:	6055      	str	r5, [r2, #4]
 8003f5a:	932b      	str	r3, [sp, #172]	; 0xac
 8003f5c:	dc5e      	bgt.n	800401c <_vfprintf_r+0x15d4>
 8003f5e:	f898 3000 	ldrb.w	r3, [r8]
 8003f62:	3208      	adds	r2, #8
 8003f64:	2d00      	cmp	r5, #0
 8003f66:	bfac      	ite	ge
 8003f68:	1b5d      	subge	r5, r3, r5
 8003f6a:	461d      	movlt	r5, r3
 8003f6c:	2d00      	cmp	r5, #0
 8003f6e:	dd26      	ble.n	8003fbe <_vfprintf_r+0x1576>
 8003f70:	2d10      	cmp	r5, #16
 8003f72:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003f74:	dd3c      	ble.n	8003ff0 <_vfprintf_r+0x15a8>
 8003f76:	2410      	movs	r4, #16
 8003f78:	e003      	b.n	8003f82 <_vfprintf_r+0x153a>
 8003f7a:	3208      	adds	r2, #8
 8003f7c:	3d10      	subs	r5, #16
 8003f7e:	2d10      	cmp	r5, #16
 8003f80:	dd36      	ble.n	8003ff0 <_vfprintf_r+0x15a8>
 8003f82:	3001      	adds	r0, #1
 8003f84:	3110      	adds	r1, #16
 8003f86:	2807      	cmp	r0, #7
 8003f88:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003f8c:	e9c2 6400 	strd	r6, r4, [r2]
 8003f90:	ddf3      	ble.n	8003f7a <_vfprintf_r+0x1532>
 8003f92:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f94:	4651      	mov	r1, sl
 8003f96:	4648      	mov	r0, r9
 8003f98:	f003 f884 	bl	80070a4 <__sprint_r>
 8003f9c:	2800      	cmp	r0, #0
 8003f9e:	d150      	bne.n	8004042 <_vfprintf_r+0x15fa>
 8003fa0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003fa4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003fa6:	e7e9      	b.n	8003f7c <_vfprintf_r+0x1534>
 8003fa8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003faa:	4651      	mov	r1, sl
 8003fac:	4648      	mov	r0, r9
 8003fae:	f003 f879 	bl	80070a4 <__sprint_r>
 8003fb2:	2800      	cmp	r0, #0
 8003fb4:	d145      	bne.n	8004042 <_vfprintf_r+0x15fa>
 8003fb6:	f898 3000 	ldrb.w	r3, [r8]
 8003fba:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003fbc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003fbe:	441f      	add	r7, r3
 8003fc0:	e7a4      	b.n	8003f0c <_vfprintf_r+0x14c4>
 8003fc2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003fc4:	3b01      	subs	r3, #1
 8003fc6:	930f      	str	r3, [sp, #60]	; 0x3c
 8003fc8:	e7ab      	b.n	8003f22 <_vfprintf_r+0x14da>
 8003fca:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003fcc:	2b00      	cmp	r3, #0
 8003fce:	d1f8      	bne.n	8003fc2 <_vfprintf_r+0x157a>
 8003fd0:	46b9      	mov	r9, r7
 8003fd2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fd4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003fd6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003fda:	18fb      	adds	r3, r7, r3
 8003fdc:	4599      	cmp	r9, r3
 8003fde:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003fe2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003fe6:	4693      	mov	fp, r2
 8003fe8:	460c      	mov	r4, r1
 8003fea:	bf28      	it	cs
 8003fec:	4699      	movcs	r9, r3
 8003fee:	e424      	b.n	800383a <_vfprintf_r+0xdf2>
 8003ff0:	3001      	adds	r0, #1
 8003ff2:	4429      	add	r1, r5
 8003ff4:	2807      	cmp	r0, #7
 8003ff6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003ffa:	e9c2 6500 	strd	r6, r5, [r2]
 8003ffe:	dcd3      	bgt.n	8003fa8 <_vfprintf_r+0x1560>
 8004000:	f898 3000 	ldrb.w	r3, [r8]
 8004004:	3208      	adds	r2, #8
 8004006:	441f      	add	r7, r3
 8004008:	e780      	b.n	8003f0c <_vfprintf_r+0x14c4>
 800400a:	aa2a      	add	r2, sp, #168	; 0xa8
 800400c:	4651      	mov	r1, sl
 800400e:	4648      	mov	r0, r9
 8004010:	f003 f848 	bl	80070a4 <__sprint_r>
 8004014:	b9a8      	cbnz	r0, 8004042 <_vfprintf_r+0x15fa>
 8004016:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004018:	aa2d      	add	r2, sp, #180	; 0xb4
 800401a:	e78e      	b.n	8003f3a <_vfprintf_r+0x14f2>
 800401c:	aa2a      	add	r2, sp, #168	; 0xa8
 800401e:	4651      	mov	r1, sl
 8004020:	4648      	mov	r0, r9
 8004022:	f003 f83f 	bl	80070a4 <__sprint_r>
 8004026:	b960      	cbnz	r0, 8004042 <_vfprintf_r+0x15fa>
 8004028:	f898 3000 	ldrb.w	r3, [r8]
 800402c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800402e:	aa2d      	add	r2, sp, #180	; 0xb4
 8004030:	e798      	b.n	8003f64 <_vfprintf_r+0x151c>
 8004032:	4638      	mov	r0, r7
 8004034:	f7fc fb64 	bl	8000700 <strlen>
 8004038:	46a9      	mov	r9, r5
 800403a:	4603      	mov	r3, r0
 800403c:	9009      	str	r0, [sp, #36]	; 0x24
 800403e:	f7ff b8f4 	b.w	800322a <_vfprintf_r+0x7e2>
 8004042:	46d1      	mov	r9, sl
 8004044:	f7ff ba7a 	b.w	800353c <_vfprintf_r+0xaf4>
 8004048:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800404a:	4619      	mov	r1, r3
 800404c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800404e:	4299      	cmp	r1, r3
 8004050:	f300 8082 	bgt.w	8004158 <_vfprintf_r+0x1710>
 8004054:	07c4      	lsls	r4, r0, #31
 8004056:	f140 816b 	bpl.w	8004330 <_vfprintf_r+0x18e8>
 800405a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800405c:	4413      	add	r3, r2
 800405e:	9309      	str	r3, [sp, #36]	; 0x24
 8004060:	0541      	lsls	r1, r0, #21
 8004062:	d503      	bpl.n	800406c <_vfprintf_r+0x1624>
 8004064:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004066:	2b00      	cmp	r3, #0
 8004068:	f300 80e6 	bgt.w	8004238 <_vfprintf_r+0x17f0>
 800406c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800406e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004072:	9304      	str	r3, [sp, #16]
 8004074:	2667      	movs	r6, #103	; 0x67
 8004076:	2300      	movs	r3, #0
 8004078:	930f      	str	r3, [sp, #60]	; 0x3c
 800407a:	9314      	str	r3, [sp, #80]	; 0x50
 800407c:	e586      	b.n	8003b8c <_vfprintf_r+0x1144>
 800407e:	222d      	movs	r2, #45	; 0x2d
 8004080:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004084:	f04f 0900 	mov.w	r9, #0
 8004088:	f7fe be6c 	b.w	8002d64 <_vfprintf_r+0x31c>
 800408c:	46a1      	mov	r9, r4
 800408e:	f7ff ba55 	b.w	800353c <_vfprintf_r+0xaf4>
 8004092:	900a      	str	r0, [sp, #40]	; 0x28
 8004094:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8004098:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800409c:	931f      	str	r3, [sp, #124]	; 0x7c
 800409e:	232d      	movs	r3, #45	; 0x2d
 80040a0:	911e      	str	r1, [sp, #120]	; 0x78
 80040a2:	930b      	str	r3, [sp, #44]	; 0x2c
 80040a4:	e619      	b.n	8003cda <_vfprintf_r+0x1292>
 80040a6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80040a8:	9328      	str	r3, [sp, #160]	; 0xa0
 80040aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80040ac:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80040b0:	7bd9      	ldrb	r1, [r3, #15]
 80040b2:	4291      	cmp	r1, r2
 80040b4:	462b      	mov	r3, r5
 80040b6:	d109      	bne.n	80040cc <_vfprintf_r+0x1684>
 80040b8:	2030      	movs	r0, #48	; 0x30
 80040ba:	f803 0c01 	strb.w	r0, [r3, #-1]
 80040be:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80040c0:	1e5a      	subs	r2, r3, #1
 80040c2:	9228      	str	r2, [sp, #160]	; 0xa0
 80040c4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80040c8:	4291      	cmp	r1, r2
 80040ca:	d0f6      	beq.n	80040ba <_vfprintf_r+0x1672>
 80040cc:	2a39      	cmp	r2, #57	; 0x39
 80040ce:	bf0b      	itete	eq
 80040d0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80040d2:	3201      	addne	r2, #1
 80040d4:	7a92      	ldrbeq	r2, [r2, #10]
 80040d6:	b2d2      	uxtbne	r2, r2
 80040d8:	f803 2c01 	strb.w	r2, [r3, #-1]
 80040dc:	e682      	b.n	8003de4 <_vfprintf_r+0x139c>
 80040de:	f418 7f00 	tst.w	r8, #512	; 0x200
 80040e2:	f43f ad9f 	beq.w	8003c24 <_vfprintf_r+0x11dc>
 80040e6:	9a05      	ldr	r2, [sp, #20]
 80040e8:	701a      	strb	r2, [r3, #0]
 80040ea:	4657      	mov	r7, sl
 80040ec:	f7fe bf52 	b.w	8002f94 <_vfprintf_r+0x54c>
 80040f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80040f2:	9907      	ldr	r1, [sp, #28]
 80040f4:	9803      	ldr	r0, [sp, #12]
 80040f6:	f002 ffd5 	bl	80070a4 <__sprint_r>
 80040fa:	2800      	cmp	r0, #0
 80040fc:	f47f aa1c 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8004100:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004102:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004106:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800410a:	e571      	b.n	8003bf0 <_vfprintf_r+0x11a8>
 800410c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800410e:	2b00      	cmp	r3, #0
 8004110:	f340 8164 	ble.w	80043dc <_vfprintf_r+0x1994>
 8004114:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004116:	f1b9 0f00 	cmp.w	r9, #0
 800411a:	f040 8103 	bne.w	8004324 <_vfprintf_r+0x18dc>
 800411e:	07c6      	lsls	r6, r0, #31
 8004120:	f100 8100 	bmi.w	8004324 <_vfprintf_r+0x18dc>
 8004124:	9309      	str	r3, [sp, #36]	; 0x24
 8004126:	2666      	movs	r6, #102	; 0x66
 8004128:	0543      	lsls	r3, r0, #21
 800412a:	f100 8086 	bmi.w	800423a <_vfprintf_r+0x17f2>
 800412e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004130:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004134:	9304      	str	r3, [sp, #16]
 8004136:	e79e      	b.n	8004076 <_vfprintf_r+0x162e>
 8004138:	aa2a      	add	r2, sp, #168	; 0xa8
 800413a:	9907      	ldr	r1, [sp, #28]
 800413c:	9803      	ldr	r0, [sp, #12]
 800413e:	f002 ffb1 	bl	80070a4 <__sprint_r>
 8004142:	2800      	cmp	r0, #0
 8004144:	f47f a9f8 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8004148:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800414a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800414c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800414e:	1ad3      	subs	r3, r2, r3
 8004150:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004154:	f7ff bb90 	b.w	8003878 <_vfprintf_r+0xe30>
 8004158:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800415a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800415c:	4413      	add	r3, r2
 800415e:	9309      	str	r3, [sp, #36]	; 0x24
 8004160:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004162:	2b00      	cmp	r3, #0
 8004164:	f340 8149 	ble.w	80043fa <_vfprintf_r+0x19b2>
 8004168:	2667      	movs	r6, #103	; 0x67
 800416a:	e7dd      	b.n	8004128 <_vfprintf_r+0x16e0>
 800416c:	2330      	movs	r3, #48	; 0x30
 800416e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004172:	2358      	movs	r3, #88	; 0x58
 8004174:	e595      	b.n	8003ca2 <_vfprintf_r+0x125a>
 8004176:	9803      	ldr	r0, [sp, #12]
 8004178:	aa2a      	add	r2, sp, #168	; 0xa8
 800417a:	4649      	mov	r1, r9
 800417c:	f002 ff92 	bl	80070a4 <__sprint_r>
 8004180:	2800      	cmp	r0, #0
 8004182:	f47f a9e0 	bne.w	8003546 <_vfprintf_r+0xafe>
 8004186:	f7fe bf0f 	b.w	8002fa8 <_vfprintf_r+0x560>
 800418a:	a824      	add	r0, sp, #144	; 0x90
 800418c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004190:	f002 fe90 	bl	8006eb4 <frexp>
 8004194:	2200      	movs	r2, #0
 8004196:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800419a:	ec51 0b10 	vmov	r0, r1, d0
 800419e:	f7fc fd2b 	bl	8000bf8 <__aeabi_dmul>
 80041a2:	2200      	movs	r2, #0
 80041a4:	2300      	movs	r3, #0
 80041a6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80041aa:	f7fc ff8d 	bl	80010c8 <__aeabi_dcmpeq>
 80041ae:	b108      	cbz	r0, 80041b4 <_vfprintf_r+0x176c>
 80041b0:	2301      	movs	r3, #1
 80041b2:	9324      	str	r3, [sp, #144]	; 0x90
 80041b4:	4b02      	ldr	r3, [pc, #8]	; (80041c0 <_vfprintf_r+0x1778>)
 80041b6:	9309      	str	r3, [sp, #36]	; 0x24
 80041b8:	e5ac      	b.n	8003d14 <_vfprintf_r+0x12cc>
 80041ba:	bf00      	nop
 80041bc:	080077d0 	.word	0x080077d0
 80041c0:	0800778c 	.word	0x0800778c
 80041c4:	425d      	negs	r5, r3
 80041c6:	3310      	adds	r3, #16
 80041c8:	4bb9      	ldr	r3, [pc, #740]	; (80044b0 <_vfprintf_r+0x1a68>)
 80041ca:	f280 8097 	bge.w	80042fc <_vfprintf_r+0x18b4>
 80041ce:	4619      	mov	r1, r3
 80041d0:	2610      	movs	r6, #16
 80041d2:	4623      	mov	r3, r4
 80041d4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80041d8:	460c      	mov	r4, r1
 80041da:	e005      	b.n	80041e8 <_vfprintf_r+0x17a0>
 80041dc:	f10b 0b08 	add.w	fp, fp, #8
 80041e0:	3d10      	subs	r5, #16
 80041e2:	2d10      	cmp	r5, #16
 80041e4:	f340 8087 	ble.w	80042f6 <_vfprintf_r+0x18ae>
 80041e8:	3201      	adds	r2, #1
 80041ea:	3310      	adds	r3, #16
 80041ec:	2a07      	cmp	r2, #7
 80041ee:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80041f2:	e9cb 4600 	strd	r4, r6, [fp]
 80041f6:	ddf1      	ble.n	80041dc <_vfprintf_r+0x1794>
 80041f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80041fa:	9907      	ldr	r1, [sp, #28]
 80041fc:	4648      	mov	r0, r9
 80041fe:	f002 ff51 	bl	80070a4 <__sprint_r>
 8004202:	2800      	cmp	r0, #0
 8004204:	f47f a998 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8004208:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800420c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004210:	e7e6      	b.n	80041e0 <_vfprintf_r+0x1798>
 8004212:	f109 0101 	add.w	r1, r9, #1
 8004216:	9803      	ldr	r0, [sp, #12]
 8004218:	f001 fe80 	bl	8005f1c <_malloc_r>
 800421c:	4607      	mov	r7, r0
 800421e:	2800      	cmp	r0, #0
 8004220:	f000 813b 	beq.w	800449a <_vfprintf_r+0x1a52>
 8004224:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004228:	930e      	str	r3, [sp, #56]	; 0x38
 800422a:	f026 0320 	bic.w	r3, r6, #32
 800422e:	9304      	str	r3, [sp, #16]
 8004230:	46a0      	mov	r8, r4
 8004232:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004234:	900a      	str	r0, [sp, #40]	; 0x28
 8004236:	e547      	b.n	8003cc8 <_vfprintf_r+0x1280>
 8004238:	2667      	movs	r6, #103	; 0x67
 800423a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800423c:	2200      	movs	r2, #0
 800423e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004240:	9214      	str	r2, [sp, #80]	; 0x50
 8004242:	7803      	ldrb	r3, [r0, #0]
 8004244:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004246:	2bff      	cmp	r3, #255	; 0xff
 8004248:	d00c      	beq.n	8004264 <_vfprintf_r+0x181c>
 800424a:	4293      	cmp	r3, r2
 800424c:	da0a      	bge.n	8004264 <_vfprintf_r+0x181c>
 800424e:	7841      	ldrb	r1, [r0, #1]
 8004250:	1ad2      	subs	r2, r2, r3
 8004252:	b1a9      	cbz	r1, 8004280 <_vfprintf_r+0x1838>
 8004254:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004256:	3301      	adds	r3, #1
 8004258:	9314      	str	r3, [sp, #80]	; 0x50
 800425a:	460b      	mov	r3, r1
 800425c:	2bff      	cmp	r3, #255	; 0xff
 800425e:	f100 0001 	add.w	r0, r0, #1
 8004262:	d1f2      	bne.n	800424a <_vfprintf_r+0x1802>
 8004264:	9211      	str	r2, [sp, #68]	; 0x44
 8004266:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004268:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800426a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800426c:	901a      	str	r0, [sp, #104]	; 0x68
 800426e:	4413      	add	r3, r2
 8004270:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004272:	fb02 1303 	mla	r3, r2, r3, r1
 8004276:	9309      	str	r3, [sp, #36]	; 0x24
 8004278:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800427c:	9304      	str	r3, [sp, #16]
 800427e:	e485      	b.n	8003b8c <_vfprintf_r+0x1144>
 8004280:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004282:	3101      	adds	r1, #1
 8004284:	910f      	str	r1, [sp, #60]	; 0x3c
 8004286:	e7de      	b.n	8004246 <_vfprintf_r+0x17fe>
 8004288:	aa28      	add	r2, sp, #160	; 0xa0
 800428a:	ab25      	add	r3, sp, #148	; 0x94
 800428c:	e9cd 3200 	strd	r3, r2, [sp]
 8004290:	2103      	movs	r1, #3
 8004292:	ab24      	add	r3, sp, #144	; 0x90
 8004294:	464a      	mov	r2, r9
 8004296:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800429a:	9803      	ldr	r0, [sp, #12]
 800429c:	f000 fa5c 	bl	8004758 <_dtoa_r>
 80042a0:	464d      	mov	r5, r9
 80042a2:	4607      	mov	r7, r0
 80042a4:	eb00 0409 	add.w	r4, r0, r9
 80042a8:	783b      	ldrb	r3, [r7, #0]
 80042aa:	2b30      	cmp	r3, #48	; 0x30
 80042ac:	f000 80be 	beq.w	800442c <_vfprintf_r+0x19e4>
 80042b0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80042b2:	442c      	add	r4, r5
 80042b4:	2200      	movs	r2, #0
 80042b6:	2300      	movs	r3, #0
 80042b8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80042bc:	f7fc ff04 	bl	80010c8 <__aeabi_dcmpeq>
 80042c0:	b108      	cbz	r0, 80042c6 <_vfprintf_r+0x187e>
 80042c2:	4623      	mov	r3, r4
 80042c4:	e413      	b.n	8003aee <_vfprintf_r+0x10a6>
 80042c6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80042c8:	42a3      	cmp	r3, r4
 80042ca:	f4bf ac10 	bcs.w	8003aee <_vfprintf_r+0x10a6>
 80042ce:	2130      	movs	r1, #48	; 0x30
 80042d0:	1c5a      	adds	r2, r3, #1
 80042d2:	9228      	str	r2, [sp, #160]	; 0xa0
 80042d4:	7019      	strb	r1, [r3, #0]
 80042d6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80042d8:	429c      	cmp	r4, r3
 80042da:	d8f9      	bhi.n	80042d0 <_vfprintf_r+0x1888>
 80042dc:	e407      	b.n	8003aee <_vfprintf_r+0x10a6>
 80042de:	197c      	adds	r4, r7, r5
 80042e0:	e7e8      	b.n	80042b4 <_vfprintf_r+0x186c>
 80042e2:	f1b9 0f00 	cmp.w	r9, #0
 80042e6:	f000 8092 	beq.w	800440e <_vfprintf_r+0x19c6>
 80042ea:	900a      	str	r0, [sp, #40]	; 0x28
 80042ec:	e4ec      	b.n	8003cc8 <_vfprintf_r+0x1280>
 80042ee:	900a      	str	r0, [sp, #40]	; 0x28
 80042f0:	f04f 0906 	mov.w	r9, #6
 80042f4:	e4e8      	b.n	8003cc8 <_vfprintf_r+0x1280>
 80042f6:	4621      	mov	r1, r4
 80042f8:	461c      	mov	r4, r3
 80042fa:	460b      	mov	r3, r1
 80042fc:	3201      	adds	r2, #1
 80042fe:	442c      	add	r4, r5
 8004300:	2a07      	cmp	r2, #7
 8004302:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004306:	e9cb 3500 	strd	r3, r5, [fp]
 800430a:	f300 80a9 	bgt.w	8004460 <_vfprintf_r+0x1a18>
 800430e:	f10b 0b08 	add.w	fp, fp, #8
 8004312:	e470      	b.n	8003bf6 <_vfprintf_r+0x11ae>
 8004314:	469a      	mov	sl, r3
 8004316:	f7ff bb37 	b.w	8003988 <_vfprintf_r+0xf40>
 800431a:	2301      	movs	r3, #1
 800431c:	9324      	str	r3, [sp, #144]	; 0x90
 800431e:	4b65      	ldr	r3, [pc, #404]	; (80044b4 <_vfprintf_r+0x1a6c>)
 8004320:	9309      	str	r3, [sp, #36]	; 0x24
 8004322:	e4f7      	b.n	8003d14 <_vfprintf_r+0x12cc>
 8004324:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004326:	4413      	add	r3, r2
 8004328:	444b      	add	r3, r9
 800432a:	9309      	str	r3, [sp, #36]	; 0x24
 800432c:	2666      	movs	r6, #102	; 0x66
 800432e:	e6fb      	b.n	8004128 <_vfprintf_r+0x16e0>
 8004330:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004332:	9309      	str	r3, [sp, #36]	; 0x24
 8004334:	e694      	b.n	8004060 <_vfprintf_r+0x1618>
 8004336:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800433a:	4664      	mov	r4, ip
 800433c:	4d5e      	ldr	r5, [pc, #376]	; (80044b8 <_vfprintf_r+0x1a70>)
 800433e:	e000      	b.n	8004342 <_vfprintf_r+0x18fa>
 8004340:	4614      	mov	r4, r2
 8004342:	fba5 1203 	umull	r1, r2, r5, r3
 8004346:	08d2      	lsrs	r2, r2, #3
 8004348:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800434c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004350:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004354:	4613      	mov	r3, r2
 8004356:	2b09      	cmp	r3, #9
 8004358:	f804 1c01 	strb.w	r1, [r4, #-1]
 800435c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004360:	dcee      	bgt.n	8004340 <_vfprintf_r+0x18f8>
 8004362:	3330      	adds	r3, #48	; 0x30
 8004364:	3c02      	subs	r4, #2
 8004366:	b2db      	uxtb	r3, r3
 8004368:	45a4      	cmp	ip, r4
 800436a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800436e:	f240 8090 	bls.w	8004492 <_vfprintf_r+0x1a4a>
 8004372:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004376:	4611      	mov	r1, r2
 8004378:	e001      	b.n	800437e <_vfprintf_r+0x1936>
 800437a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800437e:	f804 3b01 	strb.w	r3, [r4], #1
 8004382:	458c      	cmp	ip, r1
 8004384:	d1f9      	bne.n	800437a <_vfprintf_r+0x1932>
 8004386:	ab2a      	add	r3, sp, #168	; 0xa8
 8004388:	1a9b      	subs	r3, r3, r2
 800438a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800438e:	4413      	add	r3, r2
 8004390:	f7ff bbe3 	b.w	8003b5a <_vfprintf_r+0x1112>
 8004394:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004396:	4f49      	ldr	r7, [pc, #292]	; (80044bc <_vfprintf_r+0x1a74>)
 8004398:	2b00      	cmp	r3, #0
 800439a:	bfb6      	itet	lt
 800439c:	222d      	movlt	r2, #45	; 0x2d
 800439e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80043a2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80043a6:	4b46      	ldr	r3, [pc, #280]	; (80044c0 <_vfprintf_r+0x1a78>)
 80043a8:	f7fe bf02 	b.w	80031b0 <_vfprintf_r+0x768>
 80043ac:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80043b0:	f7ff b8c9 	b.w	8003546 <_vfprintf_r+0xafe>
 80043b4:	aa28      	add	r2, sp, #160	; 0xa0
 80043b6:	ab25      	add	r3, sp, #148	; 0x94
 80043b8:	e9cd 3200 	strd	r3, r2, [sp]
 80043bc:	2103      	movs	r1, #3
 80043be:	ab24      	add	r3, sp, #144	; 0x90
 80043c0:	464a      	mov	r2, r9
 80043c2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80043c6:	9803      	ldr	r0, [sp, #12]
 80043c8:	f000 f9c6 	bl	8004758 <_dtoa_r>
 80043cc:	464d      	mov	r5, r9
 80043ce:	4607      	mov	r7, r0
 80043d0:	2e46      	cmp	r6, #70	; 0x46
 80043d2:	eb07 0405 	add.w	r4, r7, r5
 80043d6:	f43f af67 	beq.w	80042a8 <_vfprintf_r+0x1860>
 80043da:	e76b      	b.n	80042b4 <_vfprintf_r+0x186c>
 80043dc:	f1b9 0f00 	cmp.w	r9, #0
 80043e0:	d131      	bne.n	8004446 <_vfprintf_r+0x19fe>
 80043e2:	07c5      	lsls	r5, r0, #31
 80043e4:	d42f      	bmi.n	8004446 <_vfprintf_r+0x19fe>
 80043e6:	2301      	movs	r3, #1
 80043e8:	9304      	str	r3, [sp, #16]
 80043ea:	9309      	str	r3, [sp, #36]	; 0x24
 80043ec:	2666      	movs	r6, #102	; 0x66
 80043ee:	e642      	b.n	8004076 <_vfprintf_r+0x162e>
 80043f0:	07c3      	lsls	r3, r0, #31
 80043f2:	f57f abbf 	bpl.w	8003b74 <_vfprintf_r+0x112c>
 80043f6:	f7ff bbb9 	b.w	8003b6c <_vfprintf_r+0x1124>
 80043fa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80043fc:	f1c3 0301 	rsb	r3, r3, #1
 8004400:	441a      	add	r2, r3
 8004402:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004406:	9209      	str	r2, [sp, #36]	; 0x24
 8004408:	9304      	str	r3, [sp, #16]
 800440a:	2667      	movs	r6, #103	; 0x67
 800440c:	e633      	b.n	8004076 <_vfprintf_r+0x162e>
 800440e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004412:	f04f 0901 	mov.w	r9, #1
 8004416:	e457      	b.n	8003cc8 <_vfprintf_r+0x1280>
 8004418:	465a      	mov	r2, fp
 800441a:	e511      	b.n	8003e40 <_vfprintf_r+0x13f8>
 800441c:	2e47      	cmp	r6, #71	; 0x47
 800441e:	f47f af5e 	bne.w	80042de <_vfprintf_r+0x1896>
 8004422:	f018 0f01 	tst.w	r8, #1
 8004426:	f43f ab61 	beq.w	8003aec <_vfprintf_r+0x10a4>
 800442a:	e7d1      	b.n	80043d0 <_vfprintf_r+0x1988>
 800442c:	2200      	movs	r2, #0
 800442e:	2300      	movs	r3, #0
 8004430:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004434:	f7fc fe48 	bl	80010c8 <__aeabi_dcmpeq>
 8004438:	2800      	cmp	r0, #0
 800443a:	f47f af39 	bne.w	80042b0 <_vfprintf_r+0x1868>
 800443e:	f1c5 0501 	rsb	r5, r5, #1
 8004442:	9524      	str	r5, [sp, #144]	; 0x90
 8004444:	e735      	b.n	80042b2 <_vfprintf_r+0x186a>
 8004446:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004448:	3301      	adds	r3, #1
 800444a:	444b      	add	r3, r9
 800444c:	9309      	str	r3, [sp, #36]	; 0x24
 800444e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004452:	9304      	str	r3, [sp, #16]
 8004454:	2666      	movs	r6, #102	; 0x66
 8004456:	e60e      	b.n	8004076 <_vfprintf_r+0x162e>
 8004458:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800445c:	f7ff bb7a 	b.w	8003b54 <_vfprintf_r+0x110c>
 8004460:	aa2a      	add	r2, sp, #168	; 0xa8
 8004462:	9907      	ldr	r1, [sp, #28]
 8004464:	9803      	ldr	r0, [sp, #12]
 8004466:	f002 fe1d 	bl	80070a4 <__sprint_r>
 800446a:	2800      	cmp	r0, #0
 800446c:	f47f a864 	bne.w	8003538 <_vfprintf_r+0xaf0>
 8004470:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004474:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004478:	f7ff bbbd 	b.w	8003bf6 <_vfprintf_r+0x11ae>
 800447c:	9908      	ldr	r1, [sp, #32]
 800447e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004482:	680b      	ldr	r3, [r1, #0]
 8004484:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004488:	1d0b      	adds	r3, r1, #4
 800448a:	4692      	mov	sl, r2
 800448c:	9308      	str	r3, [sp, #32]
 800448e:	f7fe bb59 	b.w	8002b44 <_vfprintf_r+0xfc>
 8004492:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004496:	f7ff bb60 	b.w	8003b5a <_vfprintf_r+0x1112>
 800449a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800449e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80044a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80044a6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80044aa:	f7ff b84c 	b.w	8003546 <_vfprintf_r+0xafe>
 80044ae:	bf00      	nop
 80044b0:	080077d0 	.word	0x080077d0
 80044b4:	080077a0 	.word	0x080077a0
 80044b8:	cccccccd 	.word	0xcccccccd
 80044bc:	08007788 	.word	0x08007788
 80044c0:	08007784 	.word	0x08007784

080044c4 <__sbprintf>:
 80044c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80044c8:	460c      	mov	r4, r1
 80044ca:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80044ce:	8989      	ldrh	r1, [r1, #12]
 80044d0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80044d2:	89e5      	ldrh	r5, [r4, #14]
 80044d4:	9619      	str	r6, [sp, #100]	; 0x64
 80044d6:	f021 0102 	bic.w	r1, r1, #2
 80044da:	4606      	mov	r6, r0
 80044dc:	69e0      	ldr	r0, [r4, #28]
 80044de:	f8ad 100c 	strh.w	r1, [sp, #12]
 80044e2:	4617      	mov	r7, r2
 80044e4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80044e8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80044ea:	f8ad 500e 	strh.w	r5, [sp, #14]
 80044ee:	4698      	mov	r8, r3
 80044f0:	ad1a      	add	r5, sp, #104	; 0x68
 80044f2:	2300      	movs	r3, #0
 80044f4:	9007      	str	r0, [sp, #28]
 80044f6:	a816      	add	r0, sp, #88	; 0x58
 80044f8:	9209      	str	r2, [sp, #36]	; 0x24
 80044fa:	9306      	str	r3, [sp, #24]
 80044fc:	9500      	str	r5, [sp, #0]
 80044fe:	9504      	str	r5, [sp, #16]
 8004500:	9102      	str	r1, [sp, #8]
 8004502:	9105      	str	r1, [sp, #20]
 8004504:	f001 fc8a 	bl	8005e1c <__retarget_lock_init_recursive>
 8004508:	4643      	mov	r3, r8
 800450a:	463a      	mov	r2, r7
 800450c:	4669      	mov	r1, sp
 800450e:	4630      	mov	r0, r6
 8004510:	f7fe fa9a 	bl	8002a48 <_vfprintf_r>
 8004514:	1e05      	subs	r5, r0, #0
 8004516:	db07      	blt.n	8004528 <__sbprintf+0x64>
 8004518:	4630      	mov	r0, r6
 800451a:	4669      	mov	r1, sp
 800451c:	f001 f8d6 	bl	80056cc <_fflush_r>
 8004520:	2800      	cmp	r0, #0
 8004522:	bf18      	it	ne
 8004524:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004528:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800452c:	065b      	lsls	r3, r3, #25
 800452e:	d503      	bpl.n	8004538 <__sbprintf+0x74>
 8004530:	89a3      	ldrh	r3, [r4, #12]
 8004532:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004536:	81a3      	strh	r3, [r4, #12]
 8004538:	9816      	ldr	r0, [sp, #88]	; 0x58
 800453a:	f001 fc71 	bl	8005e20 <__retarget_lock_close_recursive>
 800453e:	4628      	mov	r0, r5
 8004540:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004544:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004548 <__swsetup_r>:
 8004548:	b538      	push	{r3, r4, r5, lr}
 800454a:	4b31      	ldr	r3, [pc, #196]	; (8004610 <__swsetup_r+0xc8>)
 800454c:	681b      	ldr	r3, [r3, #0]
 800454e:	4605      	mov	r5, r0
 8004550:	460c      	mov	r4, r1
 8004552:	b113      	cbz	r3, 800455a <__swsetup_r+0x12>
 8004554:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004556:	2a00      	cmp	r2, #0
 8004558:	d03a      	beq.n	80045d0 <__swsetup_r+0x88>
 800455a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800455e:	b293      	uxth	r3, r2
 8004560:	0718      	lsls	r0, r3, #28
 8004562:	d50c      	bpl.n	800457e <__swsetup_r+0x36>
 8004564:	6920      	ldr	r0, [r4, #16]
 8004566:	b1a8      	cbz	r0, 8004594 <__swsetup_r+0x4c>
 8004568:	f013 0201 	ands.w	r2, r3, #1
 800456c:	d020      	beq.n	80045b0 <__swsetup_r+0x68>
 800456e:	6963      	ldr	r3, [r4, #20]
 8004570:	2200      	movs	r2, #0
 8004572:	425b      	negs	r3, r3
 8004574:	61a3      	str	r3, [r4, #24]
 8004576:	60a2      	str	r2, [r4, #8]
 8004578:	b300      	cbz	r0, 80045bc <__swsetup_r+0x74>
 800457a:	2000      	movs	r0, #0
 800457c:	bd38      	pop	{r3, r4, r5, pc}
 800457e:	06d9      	lsls	r1, r3, #27
 8004580:	d53e      	bpl.n	8004600 <__swsetup_r+0xb8>
 8004582:	0758      	lsls	r0, r3, #29
 8004584:	d428      	bmi.n	80045d8 <__swsetup_r+0x90>
 8004586:	6920      	ldr	r0, [r4, #16]
 8004588:	f042 0308 	orr.w	r3, r2, #8
 800458c:	81a3      	strh	r3, [r4, #12]
 800458e:	b29b      	uxth	r3, r3
 8004590:	2800      	cmp	r0, #0
 8004592:	d1e9      	bne.n	8004568 <__swsetup_r+0x20>
 8004594:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004598:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800459c:	d0e4      	beq.n	8004568 <__swsetup_r+0x20>
 800459e:	4628      	mov	r0, r5
 80045a0:	4621      	mov	r1, r4
 80045a2:	f001 fc71 	bl	8005e88 <__smakebuf_r>
 80045a6:	89a3      	ldrh	r3, [r4, #12]
 80045a8:	6920      	ldr	r0, [r4, #16]
 80045aa:	f013 0201 	ands.w	r2, r3, #1
 80045ae:	d1de      	bne.n	800456e <__swsetup_r+0x26>
 80045b0:	0799      	lsls	r1, r3, #30
 80045b2:	bf58      	it	pl
 80045b4:	6962      	ldrpl	r2, [r4, #20]
 80045b6:	60a2      	str	r2, [r4, #8]
 80045b8:	2800      	cmp	r0, #0
 80045ba:	d1de      	bne.n	800457a <__swsetup_r+0x32>
 80045bc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80045c0:	061a      	lsls	r2, r3, #24
 80045c2:	d5db      	bpl.n	800457c <__swsetup_r+0x34>
 80045c4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80045c8:	81a3      	strh	r3, [r4, #12]
 80045ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80045ce:	bd38      	pop	{r3, r4, r5, pc}
 80045d0:	4618      	mov	r0, r3
 80045d2:	f001 f8d7 	bl	8005784 <__sinit>
 80045d6:	e7c0      	b.n	800455a <__swsetup_r+0x12>
 80045d8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80045da:	b151      	cbz	r1, 80045f2 <__swsetup_r+0xaa>
 80045dc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80045e0:	4299      	cmp	r1, r3
 80045e2:	d004      	beq.n	80045ee <__swsetup_r+0xa6>
 80045e4:	4628      	mov	r0, r5
 80045e6:	f001 f96f 	bl	80058c8 <_free_r>
 80045ea:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80045ee:	2300      	movs	r3, #0
 80045f0:	6323      	str	r3, [r4, #48]	; 0x30
 80045f2:	2300      	movs	r3, #0
 80045f4:	6920      	ldr	r0, [r4, #16]
 80045f6:	6063      	str	r3, [r4, #4]
 80045f8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80045fc:	6020      	str	r0, [r4, #0]
 80045fe:	e7c3      	b.n	8004588 <__swsetup_r+0x40>
 8004600:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004604:	2309      	movs	r3, #9
 8004606:	602b      	str	r3, [r5, #0]
 8004608:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800460c:	81a2      	strh	r2, [r4, #12]
 800460e:	bd38      	pop	{r3, r4, r5, pc}
 8004610:	2000004c 	.word	0x2000004c

08004614 <register_fini>:
 8004614:	4b02      	ldr	r3, [pc, #8]	; (8004620 <register_fini+0xc>)
 8004616:	b113      	cbz	r3, 800461e <register_fini+0xa>
 8004618:	4802      	ldr	r0, [pc, #8]	; (8004624 <register_fini+0x10>)
 800461a:	f000 b805 	b.w	8004628 <atexit>
 800461e:	4770      	bx	lr
 8004620:	00000000 	.word	0x00000000
 8004624:	080057f5 	.word	0x080057f5

08004628 <atexit>:
 8004628:	2300      	movs	r3, #0
 800462a:	4601      	mov	r1, r0
 800462c:	461a      	mov	r2, r3
 800462e:	4618      	mov	r0, r3
 8004630:	f002 bd58 	b.w	80070e4 <__register_exitproc>

08004634 <quorem>:
 8004634:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004638:	6903      	ldr	r3, [r0, #16]
 800463a:	690f      	ldr	r7, [r1, #16]
 800463c:	42bb      	cmp	r3, r7
 800463e:	b083      	sub	sp, #12
 8004640:	f2c0 8086 	blt.w	8004750 <quorem+0x11c>
 8004644:	3f01      	subs	r7, #1
 8004646:	f101 0914 	add.w	r9, r1, #20
 800464a:	f100 0a14 	add.w	sl, r0, #20
 800464e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004652:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004656:	00bc      	lsls	r4, r7, #2
 8004658:	3201      	adds	r2, #1
 800465a:	fbb3 f8f2 	udiv	r8, r3, r2
 800465e:	eb0a 0304 	add.w	r3, sl, r4
 8004662:	9400      	str	r4, [sp, #0]
 8004664:	eb09 0b04 	add.w	fp, r9, r4
 8004668:	9301      	str	r3, [sp, #4]
 800466a:	f1b8 0f00 	cmp.w	r8, #0
 800466e:	d038      	beq.n	80046e2 <quorem+0xae>
 8004670:	2500      	movs	r5, #0
 8004672:	462e      	mov	r6, r5
 8004674:	46ce      	mov	lr, r9
 8004676:	46d4      	mov	ip, sl
 8004678:	f85e 4b04 	ldr.w	r4, [lr], #4
 800467c:	f8dc 3000 	ldr.w	r3, [ip]
 8004680:	b2a2      	uxth	r2, r4
 8004682:	fb08 5502 	mla	r5, r8, r2, r5
 8004686:	0c22      	lsrs	r2, r4, #16
 8004688:	0c2c      	lsrs	r4, r5, #16
 800468a:	fb08 4202 	mla	r2, r8, r2, r4
 800468e:	b2ad      	uxth	r5, r5
 8004690:	1b75      	subs	r5, r6, r5
 8004692:	b296      	uxth	r6, r2
 8004694:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004698:	fa15 f383 	uxtah	r3, r5, r3
 800469c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80046a0:	b29b      	uxth	r3, r3
 80046a2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80046a6:	45f3      	cmp	fp, lr
 80046a8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80046ac:	f84c 3b04 	str.w	r3, [ip], #4
 80046b0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80046b4:	d2e0      	bcs.n	8004678 <quorem+0x44>
 80046b6:	9b00      	ldr	r3, [sp, #0]
 80046b8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80046bc:	b98b      	cbnz	r3, 80046e2 <quorem+0xae>
 80046be:	9a01      	ldr	r2, [sp, #4]
 80046c0:	1f13      	subs	r3, r2, #4
 80046c2:	459a      	cmp	sl, r3
 80046c4:	d20c      	bcs.n	80046e0 <quorem+0xac>
 80046c6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80046ca:	b94b      	cbnz	r3, 80046e0 <quorem+0xac>
 80046cc:	f1a2 0308 	sub.w	r3, r2, #8
 80046d0:	e002      	b.n	80046d8 <quorem+0xa4>
 80046d2:	681a      	ldr	r2, [r3, #0]
 80046d4:	3b04      	subs	r3, #4
 80046d6:	b91a      	cbnz	r2, 80046e0 <quorem+0xac>
 80046d8:	459a      	cmp	sl, r3
 80046da:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80046de:	d3f8      	bcc.n	80046d2 <quorem+0x9e>
 80046e0:	6107      	str	r7, [r0, #16]
 80046e2:	4604      	mov	r4, r0
 80046e4:	f002 f944 	bl	8006970 <__mcmp>
 80046e8:	2800      	cmp	r0, #0
 80046ea:	db2d      	blt.n	8004748 <quorem+0x114>
 80046ec:	f108 0801 	add.w	r8, r8, #1
 80046f0:	4655      	mov	r5, sl
 80046f2:	2300      	movs	r3, #0
 80046f4:	f859 1b04 	ldr.w	r1, [r9], #4
 80046f8:	6828      	ldr	r0, [r5, #0]
 80046fa:	b28a      	uxth	r2, r1
 80046fc:	1a9a      	subs	r2, r3, r2
 80046fe:	0c0b      	lsrs	r3, r1, #16
 8004700:	fa12 f280 	uxtah	r2, r2, r0
 8004704:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004708:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800470c:	b292      	uxth	r2, r2
 800470e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004712:	45cb      	cmp	fp, r9
 8004714:	f845 2b04 	str.w	r2, [r5], #4
 8004718:	ea4f 4323 	mov.w	r3, r3, asr #16
 800471c:	d2ea      	bcs.n	80046f4 <quorem+0xc0>
 800471e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004722:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004726:	b97a      	cbnz	r2, 8004748 <quorem+0x114>
 8004728:	1f1a      	subs	r2, r3, #4
 800472a:	4592      	cmp	sl, r2
 800472c:	d20b      	bcs.n	8004746 <quorem+0x112>
 800472e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004732:	b942      	cbnz	r2, 8004746 <quorem+0x112>
 8004734:	3b08      	subs	r3, #8
 8004736:	e002      	b.n	800473e <quorem+0x10a>
 8004738:	681a      	ldr	r2, [r3, #0]
 800473a:	3b04      	subs	r3, #4
 800473c:	b91a      	cbnz	r2, 8004746 <quorem+0x112>
 800473e:	459a      	cmp	sl, r3
 8004740:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004744:	d3f8      	bcc.n	8004738 <quorem+0x104>
 8004746:	6127      	str	r7, [r4, #16]
 8004748:	4640      	mov	r0, r8
 800474a:	b003      	add	sp, #12
 800474c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004750:	2000      	movs	r0, #0
 8004752:	b003      	add	sp, #12
 8004754:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004758 <_dtoa_r>:
 8004758:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800475c:	ec55 4b10 	vmov	r4, r5, d0
 8004760:	b09b      	sub	sp, #108	; 0x6c
 8004762:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004764:	9102      	str	r1, [sp, #8]
 8004766:	4681      	mov	r9, r0
 8004768:	9207      	str	r2, [sp, #28]
 800476a:	9305      	str	r3, [sp, #20]
 800476c:	e9cd 4500 	strd	r4, r5, [sp]
 8004770:	b156      	cbz	r6, 8004788 <_dtoa_r+0x30>
 8004772:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004774:	6072      	str	r2, [r6, #4]
 8004776:	2301      	movs	r3, #1
 8004778:	4093      	lsls	r3, r2
 800477a:	60b3      	str	r3, [r6, #8]
 800477c:	4631      	mov	r1, r6
 800477e:	f001 ff07 	bl	8006590 <_Bfree>
 8004782:	2300      	movs	r3, #0
 8004784:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004788:	f1b5 0800 	subs.w	r8, r5, #0
 800478c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800478e:	bfb4      	ite	lt
 8004790:	2301      	movlt	r3, #1
 8004792:	2300      	movge	r3, #0
 8004794:	6013      	str	r3, [r2, #0]
 8004796:	4b76      	ldr	r3, [pc, #472]	; (8004970 <_dtoa_r+0x218>)
 8004798:	bfbc      	itt	lt
 800479a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800479e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80047a2:	ea33 0308 	bics.w	r3, r3, r8
 80047a6:	f000 80a6 	beq.w	80048f6 <_dtoa_r+0x19e>
 80047aa:	e9dd 6700 	ldrd	r6, r7, [sp]
 80047ae:	2200      	movs	r2, #0
 80047b0:	2300      	movs	r3, #0
 80047b2:	4630      	mov	r0, r6
 80047b4:	4639      	mov	r1, r7
 80047b6:	f7fc fc87 	bl	80010c8 <__aeabi_dcmpeq>
 80047ba:	4605      	mov	r5, r0
 80047bc:	b178      	cbz	r0, 80047de <_dtoa_r+0x86>
 80047be:	9a05      	ldr	r2, [sp, #20]
 80047c0:	2301      	movs	r3, #1
 80047c2:	6013      	str	r3, [r2, #0]
 80047c4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80047c6:	2b00      	cmp	r3, #0
 80047c8:	f000 80c0 	beq.w	800494c <_dtoa_r+0x1f4>
 80047cc:	4b69      	ldr	r3, [pc, #420]	; (8004974 <_dtoa_r+0x21c>)
 80047ce:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80047d0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80047d4:	6013      	str	r3, [r2, #0]
 80047d6:	4658      	mov	r0, fp
 80047d8:	b01b      	add	sp, #108	; 0x6c
 80047da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80047de:	aa18      	add	r2, sp, #96	; 0x60
 80047e0:	a919      	add	r1, sp, #100	; 0x64
 80047e2:	ec47 6b10 	vmov	d0, r6, r7
 80047e6:	4648      	mov	r0, r9
 80047e8:	f002 f954 	bl	8006a94 <__d2b>
 80047ec:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80047f0:	4682      	mov	sl, r0
 80047f2:	f040 80a0 	bne.w	8004936 <_dtoa_r+0x1de>
 80047f6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80047fa:	442c      	add	r4, r5
 80047fc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004800:	2b20      	cmp	r3, #32
 8004802:	f340 842c 	ble.w	800505e <_dtoa_r+0x906>
 8004806:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800480a:	fa08 f803 	lsl.w	r8, r8, r3
 800480e:	9b00      	ldr	r3, [sp, #0]
 8004810:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004814:	fa23 f000 	lsr.w	r0, r3, r0
 8004818:	ea48 0000 	orr.w	r0, r8, r0
 800481c:	f7fc f972 	bl	8000b04 <__aeabi_ui2d>
 8004820:	2301      	movs	r3, #1
 8004822:	4606      	mov	r6, r0
 8004824:	3c01      	subs	r4, #1
 8004826:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800482a:	930f      	str	r3, [sp, #60]	; 0x3c
 800482c:	4630      	mov	r0, r6
 800482e:	4639      	mov	r1, r7
 8004830:	2200      	movs	r2, #0
 8004832:	4b51      	ldr	r3, [pc, #324]	; (8004978 <_dtoa_r+0x220>)
 8004834:	f7fc f828 	bl	8000888 <__aeabi_dsub>
 8004838:	a347      	add	r3, pc, #284	; (adr r3, 8004958 <_dtoa_r+0x200>)
 800483a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800483e:	f7fc f9db 	bl	8000bf8 <__aeabi_dmul>
 8004842:	a347      	add	r3, pc, #284	; (adr r3, 8004960 <_dtoa_r+0x208>)
 8004844:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004848:	f7fc f820 	bl	800088c <__adddf3>
 800484c:	4606      	mov	r6, r0
 800484e:	4620      	mov	r0, r4
 8004850:	460f      	mov	r7, r1
 8004852:	f7fc f967 	bl	8000b24 <__aeabi_i2d>
 8004856:	a344      	add	r3, pc, #272	; (adr r3, 8004968 <_dtoa_r+0x210>)
 8004858:	e9d3 2300 	ldrd	r2, r3, [r3]
 800485c:	f7fc f9cc 	bl	8000bf8 <__aeabi_dmul>
 8004860:	4602      	mov	r2, r0
 8004862:	460b      	mov	r3, r1
 8004864:	4630      	mov	r0, r6
 8004866:	4639      	mov	r1, r7
 8004868:	f7fc f810 	bl	800088c <__adddf3>
 800486c:	4606      	mov	r6, r0
 800486e:	460f      	mov	r7, r1
 8004870:	f7fc fc72 	bl	8001158 <__aeabi_d2iz>
 8004874:	2200      	movs	r2, #0
 8004876:	9006      	str	r0, [sp, #24]
 8004878:	2300      	movs	r3, #0
 800487a:	4630      	mov	r0, r6
 800487c:	4639      	mov	r1, r7
 800487e:	f7fc fc2d 	bl	80010dc <__aeabi_dcmplt>
 8004882:	2800      	cmp	r0, #0
 8004884:	f040 8273 	bne.w	8004d6e <_dtoa_r+0x616>
 8004888:	9e06      	ldr	r6, [sp, #24]
 800488a:	2e16      	cmp	r6, #22
 800488c:	f200 825d 	bhi.w	8004d4a <_dtoa_r+0x5f2>
 8004890:	4b3a      	ldr	r3, [pc, #232]	; (800497c <_dtoa_r+0x224>)
 8004892:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004896:	e9d3 0100 	ldrd	r0, r1, [r3]
 800489a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800489e:	f7fc fc3b 	bl	8001118 <__aeabi_dcmpgt>
 80048a2:	2800      	cmp	r0, #0
 80048a4:	f000 83d7 	beq.w	8005056 <_dtoa_r+0x8fe>
 80048a8:	1e73      	subs	r3, r6, #1
 80048aa:	9306      	str	r3, [sp, #24]
 80048ac:	2300      	movs	r3, #0
 80048ae:	930d      	str	r3, [sp, #52]	; 0x34
 80048b0:	1b2c      	subs	r4, r5, r4
 80048b2:	f1b4 0801 	subs.w	r8, r4, #1
 80048b6:	f100 8254 	bmi.w	8004d62 <_dtoa_r+0x60a>
 80048ba:	2300      	movs	r3, #0
 80048bc:	9308      	str	r3, [sp, #32]
 80048be:	9b06      	ldr	r3, [sp, #24]
 80048c0:	2b00      	cmp	r3, #0
 80048c2:	f2c0 8245 	blt.w	8004d50 <_dtoa_r+0x5f8>
 80048c6:	4498      	add	r8, r3
 80048c8:	930c      	str	r3, [sp, #48]	; 0x30
 80048ca:	2300      	movs	r3, #0
 80048cc:	930b      	str	r3, [sp, #44]	; 0x2c
 80048ce:	9b02      	ldr	r3, [sp, #8]
 80048d0:	2b09      	cmp	r3, #9
 80048d2:	d85b      	bhi.n	800498c <_dtoa_r+0x234>
 80048d4:	2b05      	cmp	r3, #5
 80048d6:	f340 83c0 	ble.w	800505a <_dtoa_r+0x902>
 80048da:	3b04      	subs	r3, #4
 80048dc:	9302      	str	r3, [sp, #8]
 80048de:	2500      	movs	r5, #0
 80048e0:	9b02      	ldr	r3, [sp, #8]
 80048e2:	3b02      	subs	r3, #2
 80048e4:	2b03      	cmp	r3, #3
 80048e6:	f200 8498 	bhi.w	800521a <_dtoa_r+0xac2>
 80048ea:	e8df f013 	tbh	[pc, r3, lsl #1]
 80048ee:	03df      	.short	0x03df
 80048f0:	03e803bf 	.word	0x03e803bf
 80048f4:	04f5      	.short	0x04f5
 80048f6:	9a05      	ldr	r2, [sp, #20]
 80048f8:	f242 730f 	movw	r3, #9999	; 0x270f
 80048fc:	6013      	str	r3, [r2, #0]
 80048fe:	9b00      	ldr	r3, [sp, #0]
 8004900:	b983      	cbnz	r3, 8004924 <_dtoa_r+0x1cc>
 8004902:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004906:	b96b      	cbnz	r3, 8004924 <_dtoa_r+0x1cc>
 8004908:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800490a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004980 <_dtoa_r+0x228>
 800490e:	2b00      	cmp	r3, #0
 8004910:	f43f af61 	beq.w	80047d6 <_dtoa_r+0x7e>
 8004914:	f10b 0308 	add.w	r3, fp, #8
 8004918:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800491a:	4658      	mov	r0, fp
 800491c:	6013      	str	r3, [r2, #0]
 800491e:	b01b      	add	sp, #108	; 0x6c
 8004920:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004924:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004926:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004984 <_dtoa_r+0x22c>
 800492a:	2b00      	cmp	r3, #0
 800492c:	f43f af53 	beq.w	80047d6 <_dtoa_r+0x7e>
 8004930:	f10b 0303 	add.w	r3, fp, #3
 8004934:	e7f0      	b.n	8004918 <_dtoa_r+0x1c0>
 8004936:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800493a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800493e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004940:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004944:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004948:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800494a:	e76f      	b.n	800482c <_dtoa_r+0xd4>
 800494c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004988 <_dtoa_r+0x230>
 8004950:	4658      	mov	r0, fp
 8004952:	b01b      	add	sp, #108	; 0x6c
 8004954:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004958:	636f4361 	.word	0x636f4361
 800495c:	3fd287a7 	.word	0x3fd287a7
 8004960:	8b60c8b3 	.word	0x8b60c8b3
 8004964:	3fc68a28 	.word	0x3fc68a28
 8004968:	509f79fb 	.word	0x509f79fb
 800496c:	3fd34413 	.word	0x3fd34413
 8004970:	7ff00000 	.word	0x7ff00000
 8004974:	080077bd 	.word	0x080077bd
 8004978:	3ff80000 	.word	0x3ff80000
 800497c:	08007818 	.word	0x08007818
 8004980:	080077e0 	.word	0x080077e0
 8004984:	080077ec 	.word	0x080077ec
 8004988:	080077bc 	.word	0x080077bc
 800498c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004990:	2501      	movs	r5, #1
 8004992:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004996:	2300      	movs	r3, #0
 8004998:	9302      	str	r3, [sp, #8]
 800499a:	9307      	str	r3, [sp, #28]
 800499c:	2100      	movs	r1, #0
 800499e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80049a2:	940e      	str	r4, [sp, #56]	; 0x38
 80049a4:	4648      	mov	r0, r9
 80049a6:	f001 fdcd 	bl	8006544 <_Balloc>
 80049aa:	2c0e      	cmp	r4, #14
 80049ac:	4683      	mov	fp, r0
 80049ae:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80049b2:	f200 80fb 	bhi.w	8004bac <_dtoa_r+0x454>
 80049b6:	2d00      	cmp	r5, #0
 80049b8:	f000 80f8 	beq.w	8004bac <_dtoa_r+0x454>
 80049bc:	ed9d 7b00 	vldr	d7, [sp]
 80049c0:	9906      	ldr	r1, [sp, #24]
 80049c2:	2900      	cmp	r1, #0
 80049c4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80049c8:	f340 83e5 	ble.w	8005196 <_dtoa_r+0xa3e>
 80049cc:	4b9d      	ldr	r3, [pc, #628]	; (8004c44 <_dtoa_r+0x4ec>)
 80049ce:	f001 020f 	and.w	r2, r1, #15
 80049d2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80049d6:	ed93 7b00 	vldr	d7, [r3]
 80049da:	110c      	asrs	r4, r1, #4
 80049dc:	06e2      	lsls	r2, r4, #27
 80049de:	ed8d 7b00 	vstr	d7, [sp]
 80049e2:	f140 849e 	bpl.w	8005322 <_dtoa_r+0xbca>
 80049e6:	4b98      	ldr	r3, [pc, #608]	; (8004c48 <_dtoa_r+0x4f0>)
 80049e8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80049ec:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80049f0:	f7fc fa2c 	bl	8000e4c <__aeabi_ddiv>
 80049f4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80049f8:	f004 040f 	and.w	r4, r4, #15
 80049fc:	2603      	movs	r6, #3
 80049fe:	b17c      	cbz	r4, 8004a20 <_dtoa_r+0x2c8>
 8004a00:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a04:	4d90      	ldr	r5, [pc, #576]	; (8004c48 <_dtoa_r+0x4f0>)
 8004a06:	07e3      	lsls	r3, r4, #31
 8004a08:	d504      	bpl.n	8004a14 <_dtoa_r+0x2bc>
 8004a0a:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004a0e:	f7fc f8f3 	bl	8000bf8 <__aeabi_dmul>
 8004a12:	3601      	adds	r6, #1
 8004a14:	1064      	asrs	r4, r4, #1
 8004a16:	f105 0508 	add.w	r5, r5, #8
 8004a1a:	d1f4      	bne.n	8004a06 <_dtoa_r+0x2ae>
 8004a1c:	e9cd 0100 	strd	r0, r1, [sp]
 8004a20:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a24:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004a28:	f7fc fa10 	bl	8000e4c <__aeabi_ddiv>
 8004a2c:	e9cd 0100 	strd	r0, r1, [sp]
 8004a30:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004a32:	b143      	cbz	r3, 8004a46 <_dtoa_r+0x2ee>
 8004a34:	2200      	movs	r2, #0
 8004a36:	4b85      	ldr	r3, [pc, #532]	; (8004c4c <_dtoa_r+0x4f4>)
 8004a38:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a3c:	f7fc fb4e 	bl	80010dc <__aeabi_dcmplt>
 8004a40:	2800      	cmp	r0, #0
 8004a42:	f040 84ff 	bne.w	8005444 <_dtoa_r+0xcec>
 8004a46:	4630      	mov	r0, r6
 8004a48:	f7fc f86c 	bl	8000b24 <__aeabi_i2d>
 8004a4c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a50:	f7fc f8d2 	bl	8000bf8 <__aeabi_dmul>
 8004a54:	4b7e      	ldr	r3, [pc, #504]	; (8004c50 <_dtoa_r+0x4f8>)
 8004a56:	2200      	movs	r2, #0
 8004a58:	f7fb ff18 	bl	800088c <__adddf3>
 8004a5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a5e:	4606      	mov	r6, r0
 8004a60:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004a64:	2b00      	cmp	r3, #0
 8004a66:	f000 841c 	beq.w	80052a2 <_dtoa_r+0xb4a>
 8004a6a:	9b06      	ldr	r3, [sp, #24]
 8004a6c:	9316      	str	r3, [sp, #88]	; 0x58
 8004a6e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a70:	9312      	str	r3, [sp, #72]	; 0x48
 8004a72:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a76:	f7fc fb6f 	bl	8001158 <__aeabi_d2iz>
 8004a7a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004a7c:	4b71      	ldr	r3, [pc, #452]	; (8004c44 <_dtoa_r+0x4ec>)
 8004a7e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a82:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004a86:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004a8a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004a8e:	f7fc f849 	bl	8000b24 <__aeabi_i2d>
 8004a92:	460b      	mov	r3, r1
 8004a94:	4602      	mov	r2, r0
 8004a96:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a9a:	e9cd 6700 	strd	r6, r7, [sp]
 8004a9e:	f7fb fef3 	bl	8000888 <__aeabi_dsub>
 8004aa2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004aa4:	b2ed      	uxtb	r5, r5
 8004aa6:	4606      	mov	r6, r0
 8004aa8:	460f      	mov	r7, r1
 8004aaa:	f10b 0401 	add.w	r4, fp, #1
 8004aae:	2b00      	cmp	r3, #0
 8004ab0:	f000 8458 	beq.w	8005364 <_dtoa_r+0xc0c>
 8004ab4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004ab8:	2000      	movs	r0, #0
 8004aba:	4966      	ldr	r1, [pc, #408]	; (8004c54 <_dtoa_r+0x4fc>)
 8004abc:	f7fc f9c6 	bl	8000e4c <__aeabi_ddiv>
 8004ac0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ac4:	f7fb fee0 	bl	8000888 <__aeabi_dsub>
 8004ac8:	f88b 5000 	strb.w	r5, [fp]
 8004acc:	4632      	mov	r2, r6
 8004ace:	463b      	mov	r3, r7
 8004ad0:	e9cd 0100 	strd	r0, r1, [sp]
 8004ad4:	f7fc fb20 	bl	8001118 <__aeabi_dcmpgt>
 8004ad8:	2800      	cmp	r0, #0
 8004ada:	f040 8502 	bne.w	80054e2 <_dtoa_r+0xd8a>
 8004ade:	4632      	mov	r2, r6
 8004ae0:	463b      	mov	r3, r7
 8004ae2:	2000      	movs	r0, #0
 8004ae4:	4959      	ldr	r1, [pc, #356]	; (8004c4c <_dtoa_r+0x4f4>)
 8004ae6:	f7fb fecf 	bl	8000888 <__aeabi_dsub>
 8004aea:	4602      	mov	r2, r0
 8004aec:	460b      	mov	r3, r1
 8004aee:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004af2:	f7fc fb11 	bl	8001118 <__aeabi_dcmpgt>
 8004af6:	2800      	cmp	r0, #0
 8004af8:	f040 84fb 	bne.w	80054f2 <_dtoa_r+0xd9a>
 8004afc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004afe:	2a01      	cmp	r2, #1
 8004b00:	d050      	beq.n	8004ba4 <_dtoa_r+0x44c>
 8004b02:	445a      	add	r2, fp
 8004b04:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004b08:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004b0c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004b10:	4692      	mov	sl, r2
 8004b12:	46cb      	mov	fp, r9
 8004b14:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004b18:	e00c      	b.n	8004b34 <_dtoa_r+0x3dc>
 8004b1a:	2000      	movs	r0, #0
 8004b1c:	494b      	ldr	r1, [pc, #300]	; (8004c4c <_dtoa_r+0x4f4>)
 8004b1e:	f7fb feb3 	bl	8000888 <__aeabi_dsub>
 8004b22:	4642      	mov	r2, r8
 8004b24:	464b      	mov	r3, r9
 8004b26:	f7fc fad9 	bl	80010dc <__aeabi_dcmplt>
 8004b2a:	2800      	cmp	r0, #0
 8004b2c:	f040 84dc 	bne.w	80054e8 <_dtoa_r+0xd90>
 8004b30:	4554      	cmp	r4, sl
 8004b32:	d030      	beq.n	8004b96 <_dtoa_r+0x43e>
 8004b34:	4640      	mov	r0, r8
 8004b36:	4649      	mov	r1, r9
 8004b38:	2200      	movs	r2, #0
 8004b3a:	4b47      	ldr	r3, [pc, #284]	; (8004c58 <_dtoa_r+0x500>)
 8004b3c:	f7fc f85c 	bl	8000bf8 <__aeabi_dmul>
 8004b40:	2200      	movs	r2, #0
 8004b42:	4b45      	ldr	r3, [pc, #276]	; (8004c58 <_dtoa_r+0x500>)
 8004b44:	4680      	mov	r8, r0
 8004b46:	4689      	mov	r9, r1
 8004b48:	4630      	mov	r0, r6
 8004b4a:	4639      	mov	r1, r7
 8004b4c:	f7fc f854 	bl	8000bf8 <__aeabi_dmul>
 8004b50:	460f      	mov	r7, r1
 8004b52:	4606      	mov	r6, r0
 8004b54:	f7fc fb00 	bl	8001158 <__aeabi_d2iz>
 8004b58:	4605      	mov	r5, r0
 8004b5a:	f7fb ffe3 	bl	8000b24 <__aeabi_i2d>
 8004b5e:	4602      	mov	r2, r0
 8004b60:	460b      	mov	r3, r1
 8004b62:	4630      	mov	r0, r6
 8004b64:	4639      	mov	r1, r7
 8004b66:	f7fb fe8f 	bl	8000888 <__aeabi_dsub>
 8004b6a:	3530      	adds	r5, #48	; 0x30
 8004b6c:	b2ed      	uxtb	r5, r5
 8004b6e:	4642      	mov	r2, r8
 8004b70:	464b      	mov	r3, r9
 8004b72:	f804 5b01 	strb.w	r5, [r4], #1
 8004b76:	4606      	mov	r6, r0
 8004b78:	460f      	mov	r7, r1
 8004b7a:	f7fc faaf 	bl	80010dc <__aeabi_dcmplt>
 8004b7e:	4632      	mov	r2, r6
 8004b80:	463b      	mov	r3, r7
 8004b82:	2800      	cmp	r0, #0
 8004b84:	d0c9      	beq.n	8004b1a <_dtoa_r+0x3c2>
 8004b86:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004b88:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004b8c:	9306      	str	r3, [sp, #24]
 8004b8e:	46d9      	mov	r9, fp
 8004b90:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004b94:	e236      	b.n	8005004 <_dtoa_r+0x8ac>
 8004b96:	46d9      	mov	r9, fp
 8004b98:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004b9c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ba0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004ba4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004ba8:	e9cd 3400 	strd	r3, r4, [sp]
 8004bac:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004bae:	2b00      	cmp	r3, #0
 8004bb0:	f2c0 80ae 	blt.w	8004d10 <_dtoa_r+0x5b8>
 8004bb4:	9a06      	ldr	r2, [sp, #24]
 8004bb6:	2a0e      	cmp	r2, #14
 8004bb8:	f300 80aa 	bgt.w	8004d10 <_dtoa_r+0x5b8>
 8004bbc:	4b21      	ldr	r3, [pc, #132]	; (8004c44 <_dtoa_r+0x4ec>)
 8004bbe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004bc2:	ed93 7b00 	vldr	d7, [r3]
 8004bc6:	9b07      	ldr	r3, [sp, #28]
 8004bc8:	2b00      	cmp	r3, #0
 8004bca:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004bce:	f2c0 82be 	blt.w	800514e <_dtoa_r+0x9f6>
 8004bd2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004bd6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004bda:	4630      	mov	r0, r6
 8004bdc:	4639      	mov	r1, r7
 8004bde:	f7fc f935 	bl	8000e4c <__aeabi_ddiv>
 8004be2:	f7fc fab9 	bl	8001158 <__aeabi_d2iz>
 8004be6:	4605      	mov	r5, r0
 8004be8:	f7fb ff9c 	bl	8000b24 <__aeabi_i2d>
 8004bec:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004bf0:	f7fc f802 	bl	8000bf8 <__aeabi_dmul>
 8004bf4:	460b      	mov	r3, r1
 8004bf6:	4602      	mov	r2, r0
 8004bf8:	4639      	mov	r1, r7
 8004bfa:	4630      	mov	r0, r6
 8004bfc:	f7fb fe44 	bl	8000888 <__aeabi_dsub>
 8004c00:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004c04:	f88b 3000 	strb.w	r3, [fp]
 8004c08:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c0a:	2b01      	cmp	r3, #1
 8004c0c:	4606      	mov	r6, r0
 8004c0e:	460f      	mov	r7, r1
 8004c10:	f10b 0401 	add.w	r4, fp, #1
 8004c14:	d053      	beq.n	8004cbe <_dtoa_r+0x566>
 8004c16:	2200      	movs	r2, #0
 8004c18:	4b0f      	ldr	r3, [pc, #60]	; (8004c58 <_dtoa_r+0x500>)
 8004c1a:	f7fb ffed 	bl	8000bf8 <__aeabi_dmul>
 8004c1e:	2200      	movs	r2, #0
 8004c20:	2300      	movs	r3, #0
 8004c22:	4606      	mov	r6, r0
 8004c24:	460f      	mov	r7, r1
 8004c26:	f7fc fa4f 	bl	80010c8 <__aeabi_dcmpeq>
 8004c2a:	2800      	cmp	r0, #0
 8004c2c:	f040 81ea 	bne.w	8005004 <_dtoa_r+0x8ac>
 8004c30:	f8cd a000 	str.w	sl, [sp]
 8004c34:	f8cd 901c 	str.w	r9, [sp, #28]
 8004c38:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004c3c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004c40:	e017      	b.n	8004c72 <_dtoa_r+0x51a>
 8004c42:	bf00      	nop
 8004c44:	08007818 	.word	0x08007818
 8004c48:	080077f0 	.word	0x080077f0
 8004c4c:	3ff00000 	.word	0x3ff00000
 8004c50:	401c0000 	.word	0x401c0000
 8004c54:	3fe00000 	.word	0x3fe00000
 8004c58:	40240000 	.word	0x40240000
 8004c5c:	f7fb ffcc 	bl	8000bf8 <__aeabi_dmul>
 8004c60:	2200      	movs	r2, #0
 8004c62:	2300      	movs	r3, #0
 8004c64:	4606      	mov	r6, r0
 8004c66:	460f      	mov	r7, r1
 8004c68:	f7fc fa2e 	bl	80010c8 <__aeabi_dcmpeq>
 8004c6c:	2800      	cmp	r0, #0
 8004c6e:	f040 833d 	bne.w	80052ec <_dtoa_r+0xb94>
 8004c72:	464a      	mov	r2, r9
 8004c74:	4653      	mov	r3, sl
 8004c76:	4630      	mov	r0, r6
 8004c78:	4639      	mov	r1, r7
 8004c7a:	f7fc f8e7 	bl	8000e4c <__aeabi_ddiv>
 8004c7e:	f7fc fa6b 	bl	8001158 <__aeabi_d2iz>
 8004c82:	4605      	mov	r5, r0
 8004c84:	f7fb ff4e 	bl	8000b24 <__aeabi_i2d>
 8004c88:	464a      	mov	r2, r9
 8004c8a:	4653      	mov	r3, sl
 8004c8c:	f7fb ffb4 	bl	8000bf8 <__aeabi_dmul>
 8004c90:	4602      	mov	r2, r0
 8004c92:	460b      	mov	r3, r1
 8004c94:	4630      	mov	r0, r6
 8004c96:	4639      	mov	r1, r7
 8004c98:	f7fb fdf6 	bl	8000888 <__aeabi_dsub>
 8004c9c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004ca0:	f804 cb01 	strb.w	ip, [r4], #1
 8004ca4:	eba4 0c0b 	sub.w	ip, r4, fp
 8004ca8:	45e0      	cmp	r8, ip
 8004caa:	4606      	mov	r6, r0
 8004cac:	460f      	mov	r7, r1
 8004cae:	f04f 0200 	mov.w	r2, #0
 8004cb2:	4bc1      	ldr	r3, [pc, #772]	; (8004fb8 <_dtoa_r+0x860>)
 8004cb4:	d1d2      	bne.n	8004c5c <_dtoa_r+0x504>
 8004cb6:	f8dd a000 	ldr.w	sl, [sp]
 8004cba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004cbe:	4632      	mov	r2, r6
 8004cc0:	463b      	mov	r3, r7
 8004cc2:	4630      	mov	r0, r6
 8004cc4:	4639      	mov	r1, r7
 8004cc6:	f7fb fde1 	bl	800088c <__adddf3>
 8004cca:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004cce:	4606      	mov	r6, r0
 8004cd0:	460f      	mov	r7, r1
 8004cd2:	f7fc fa21 	bl	8001118 <__aeabi_dcmpgt>
 8004cd6:	b958      	cbnz	r0, 8004cf0 <_dtoa_r+0x598>
 8004cd8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004cdc:	4630      	mov	r0, r6
 8004cde:	4639      	mov	r1, r7
 8004ce0:	f7fc f9f2 	bl	80010c8 <__aeabi_dcmpeq>
 8004ce4:	2800      	cmp	r0, #0
 8004ce6:	f000 818d 	beq.w	8005004 <_dtoa_r+0x8ac>
 8004cea:	07e9      	lsls	r1, r5, #31
 8004cec:	f140 818a 	bpl.w	8005004 <_dtoa_r+0x8ac>
 8004cf0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004cf4:	e005      	b.n	8004d02 <_dtoa_r+0x5aa>
 8004cf6:	459b      	cmp	fp, r3
 8004cf8:	f000 8373 	beq.w	80053e2 <_dtoa_r+0xc8a>
 8004cfc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004d00:	461c      	mov	r4, r3
 8004d02:	2d39      	cmp	r5, #57	; 0x39
 8004d04:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004d08:	d0f5      	beq.n	8004cf6 <_dtoa_r+0x59e>
 8004d0a:	3501      	adds	r5, #1
 8004d0c:	701d      	strb	r5, [r3, #0]
 8004d0e:	e179      	b.n	8005004 <_dtoa_r+0x8ac>
 8004d10:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004d12:	2a00      	cmp	r2, #0
 8004d14:	d03b      	beq.n	8004d8e <_dtoa_r+0x636>
 8004d16:	9a02      	ldr	r2, [sp, #8]
 8004d18:	2a01      	cmp	r2, #1
 8004d1a:	f340 820b 	ble.w	8005134 <_dtoa_r+0x9dc>
 8004d1e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d20:	1e5f      	subs	r7, r3, #1
 8004d22:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d24:	42bb      	cmp	r3, r7
 8004d26:	f2c0 82e6 	blt.w	80052f6 <_dtoa_r+0xb9e>
 8004d2a:	1bdf      	subs	r7, r3, r7
 8004d2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d2e:	2b00      	cmp	r3, #0
 8004d30:	f2c0 830b 	blt.w	800534a <_dtoa_r+0xbf2>
 8004d34:	9a08      	ldr	r2, [sp, #32]
 8004d36:	4614      	mov	r4, r2
 8004d38:	441a      	add	r2, r3
 8004d3a:	4498      	add	r8, r3
 8004d3c:	9208      	str	r2, [sp, #32]
 8004d3e:	2101      	movs	r1, #1
 8004d40:	4648      	mov	r0, r9
 8004d42:	f001 fcbf 	bl	80066c4 <__i2b>
 8004d46:	4605      	mov	r5, r0
 8004d48:	e024      	b.n	8004d94 <_dtoa_r+0x63c>
 8004d4a:	2301      	movs	r3, #1
 8004d4c:	930d      	str	r3, [sp, #52]	; 0x34
 8004d4e:	e5af      	b.n	80048b0 <_dtoa_r+0x158>
 8004d50:	9a08      	ldr	r2, [sp, #32]
 8004d52:	9b06      	ldr	r3, [sp, #24]
 8004d54:	1ad2      	subs	r2, r2, r3
 8004d56:	425b      	negs	r3, r3
 8004d58:	930b      	str	r3, [sp, #44]	; 0x2c
 8004d5a:	2300      	movs	r3, #0
 8004d5c:	9208      	str	r2, [sp, #32]
 8004d5e:	930c      	str	r3, [sp, #48]	; 0x30
 8004d60:	e5b5      	b.n	80048ce <_dtoa_r+0x176>
 8004d62:	f1c4 0301 	rsb	r3, r4, #1
 8004d66:	9308      	str	r3, [sp, #32]
 8004d68:	f04f 0800 	mov.w	r8, #0
 8004d6c:	e5a7      	b.n	80048be <_dtoa_r+0x166>
 8004d6e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004d72:	4640      	mov	r0, r8
 8004d74:	f7fb fed6 	bl	8000b24 <__aeabi_i2d>
 8004d78:	4632      	mov	r2, r6
 8004d7a:	463b      	mov	r3, r7
 8004d7c:	f7fc f9a4 	bl	80010c8 <__aeabi_dcmpeq>
 8004d80:	2800      	cmp	r0, #0
 8004d82:	f47f ad81 	bne.w	8004888 <_dtoa_r+0x130>
 8004d86:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004d8a:	9306      	str	r3, [sp, #24]
 8004d8c:	e57c      	b.n	8004888 <_dtoa_r+0x130>
 8004d8e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004d90:	9c08      	ldr	r4, [sp, #32]
 8004d92:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004d94:	2c00      	cmp	r4, #0
 8004d96:	dd0c      	ble.n	8004db2 <_dtoa_r+0x65a>
 8004d98:	f1b8 0f00 	cmp.w	r8, #0
 8004d9c:	dd09      	ble.n	8004db2 <_dtoa_r+0x65a>
 8004d9e:	4544      	cmp	r4, r8
 8004da0:	9a08      	ldr	r2, [sp, #32]
 8004da2:	4623      	mov	r3, r4
 8004da4:	bfa8      	it	ge
 8004da6:	4643      	movge	r3, r8
 8004da8:	1ad2      	subs	r2, r2, r3
 8004daa:	9208      	str	r2, [sp, #32]
 8004dac:	1ae4      	subs	r4, r4, r3
 8004dae:	eba8 0803 	sub.w	r8, r8, r3
 8004db2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004db4:	b16b      	cbz	r3, 8004dd2 <_dtoa_r+0x67a>
 8004db6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004db8:	2a00      	cmp	r2, #0
 8004dba:	f000 8290 	beq.w	80052de <_dtoa_r+0xb86>
 8004dbe:	1bde      	subs	r6, r3, r7
 8004dc0:	2f00      	cmp	r7, #0
 8004dc2:	f040 819b 	bne.w	80050fc <_dtoa_r+0x9a4>
 8004dc6:	4651      	mov	r1, sl
 8004dc8:	4632      	mov	r2, r6
 8004dca:	4648      	mov	r0, r9
 8004dcc:	f001 fd2a 	bl	8006824 <__pow5mult>
 8004dd0:	4682      	mov	sl, r0
 8004dd2:	2101      	movs	r1, #1
 8004dd4:	4648      	mov	r0, r9
 8004dd6:	f001 fc75 	bl	80066c4 <__i2b>
 8004dda:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004ddc:	4606      	mov	r6, r0
 8004dde:	2a00      	cmp	r2, #0
 8004de0:	f040 8125 	bne.w	800502e <_dtoa_r+0x8d6>
 8004de4:	9b02      	ldr	r3, [sp, #8]
 8004de6:	2b01      	cmp	r3, #1
 8004de8:	f340 816c 	ble.w	80050c4 <_dtoa_r+0x96c>
 8004dec:	2001      	movs	r0, #1
 8004dee:	4440      	add	r0, r8
 8004df0:	f010 001f 	ands.w	r0, r0, #31
 8004df4:	f000 8119 	beq.w	800502a <_dtoa_r+0x8d2>
 8004df8:	f1c0 0320 	rsb	r3, r0, #32
 8004dfc:	2b04      	cmp	r3, #4
 8004dfe:	f340 83ac 	ble.w	800555a <_dtoa_r+0xe02>
 8004e02:	f1c0 001c 	rsb	r0, r0, #28
 8004e06:	9b08      	ldr	r3, [sp, #32]
 8004e08:	4403      	add	r3, r0
 8004e0a:	9308      	str	r3, [sp, #32]
 8004e0c:	4404      	add	r4, r0
 8004e0e:	4480      	add	r8, r0
 8004e10:	9b08      	ldr	r3, [sp, #32]
 8004e12:	2b00      	cmp	r3, #0
 8004e14:	dd05      	ble.n	8004e22 <_dtoa_r+0x6ca>
 8004e16:	4651      	mov	r1, sl
 8004e18:	461a      	mov	r2, r3
 8004e1a:	4648      	mov	r0, r9
 8004e1c:	f001 fd52 	bl	80068c4 <__lshift>
 8004e20:	4682      	mov	sl, r0
 8004e22:	f1b8 0f00 	cmp.w	r8, #0
 8004e26:	dd05      	ble.n	8004e34 <_dtoa_r+0x6dc>
 8004e28:	4631      	mov	r1, r6
 8004e2a:	4642      	mov	r2, r8
 8004e2c:	4648      	mov	r0, r9
 8004e2e:	f001 fd49 	bl	80068c4 <__lshift>
 8004e32:	4606      	mov	r6, r0
 8004e34:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004e36:	2b00      	cmp	r3, #0
 8004e38:	d177      	bne.n	8004f2a <_dtoa_r+0x7d2>
 8004e3a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e3c:	2b00      	cmp	r3, #0
 8004e3e:	f340 8209 	ble.w	8005254 <_dtoa_r+0xafc>
 8004e42:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e44:	2b00      	cmp	r3, #0
 8004e46:	f000 8089 	beq.w	8004f5c <_dtoa_r+0x804>
 8004e4a:	2c00      	cmp	r4, #0
 8004e4c:	f300 816b 	bgt.w	8005126 <_dtoa_r+0x9ce>
 8004e50:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004e52:	2b00      	cmp	r3, #0
 8004e54:	f040 81cd 	bne.w	80051f2 <_dtoa_r+0xa9a>
 8004e58:	46a8      	mov	r8, r5
 8004e5a:	9a00      	ldr	r2, [sp, #0]
 8004e5c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004e60:	f002 0201 	and.w	r2, r2, #1
 8004e64:	920a      	str	r2, [sp, #40]	; 0x28
 8004e66:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004e68:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004e6c:	441a      	add	r2, r3
 8004e6e:	465f      	mov	r7, fp
 8004e70:	9209      	str	r2, [sp, #36]	; 0x24
 8004e72:	46b3      	mov	fp, r6
 8004e74:	4659      	mov	r1, fp
 8004e76:	4650      	mov	r0, sl
 8004e78:	f7ff fbdc 	bl	8004634 <quorem>
 8004e7c:	4629      	mov	r1, r5
 8004e7e:	4604      	mov	r4, r0
 8004e80:	4650      	mov	r0, sl
 8004e82:	f001 fd75 	bl	8006970 <__mcmp>
 8004e86:	4659      	mov	r1, fp
 8004e88:	4606      	mov	r6, r0
 8004e8a:	4642      	mov	r2, r8
 8004e8c:	4648      	mov	r0, r9
 8004e8e:	f001 fd8b 	bl	80069a8 <__mdiff>
 8004e92:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004e96:	9300      	str	r3, [sp, #0]
 8004e98:	68c3      	ldr	r3, [r0, #12]
 8004e9a:	4601      	mov	r1, r0
 8004e9c:	2b00      	cmp	r3, #0
 8004e9e:	f040 81d4 	bne.w	800524a <_dtoa_r+0xaf2>
 8004ea2:	9008      	str	r0, [sp, #32]
 8004ea4:	4650      	mov	r0, sl
 8004ea6:	f001 fd63 	bl	8006970 <__mcmp>
 8004eaa:	9a08      	ldr	r2, [sp, #32]
 8004eac:	9007      	str	r0, [sp, #28]
 8004eae:	4611      	mov	r1, r2
 8004eb0:	4648      	mov	r0, r9
 8004eb2:	f001 fb6d 	bl	8006590 <_Bfree>
 8004eb6:	9b07      	ldr	r3, [sp, #28]
 8004eb8:	b933      	cbnz	r3, 8004ec8 <_dtoa_r+0x770>
 8004eba:	9a02      	ldr	r2, [sp, #8]
 8004ebc:	b922      	cbnz	r2, 8004ec8 <_dtoa_r+0x770>
 8004ebe:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004ec0:	2b00      	cmp	r3, #0
 8004ec2:	f000 8319 	beq.w	80054f8 <_dtoa_r+0xda0>
 8004ec6:	9b02      	ldr	r3, [sp, #8]
 8004ec8:	2e00      	cmp	r6, #0
 8004eca:	f2c0 821c 	blt.w	8005306 <_dtoa_r+0xbae>
 8004ece:	d105      	bne.n	8004edc <_dtoa_r+0x784>
 8004ed0:	9a02      	ldr	r2, [sp, #8]
 8004ed2:	b91a      	cbnz	r2, 8004edc <_dtoa_r+0x784>
 8004ed4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ed6:	2a00      	cmp	r2, #0
 8004ed8:	f000 8215 	beq.w	8005306 <_dtoa_r+0xbae>
 8004edc:	2b00      	cmp	r3, #0
 8004ede:	f107 0401 	add.w	r4, r7, #1
 8004ee2:	f300 8225 	bgt.w	8005330 <_dtoa_r+0xbd8>
 8004ee6:	9b00      	ldr	r3, [sp, #0]
 8004ee8:	703b      	strb	r3, [r7, #0]
 8004eea:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004eec:	42bb      	cmp	r3, r7
 8004eee:	f000 8230 	beq.w	8005352 <_dtoa_r+0xbfa>
 8004ef2:	4651      	mov	r1, sl
 8004ef4:	2300      	movs	r3, #0
 8004ef6:	220a      	movs	r2, #10
 8004ef8:	4648      	mov	r0, r9
 8004efa:	f001 fb53 	bl	80065a4 <__multadd>
 8004efe:	4545      	cmp	r5, r8
 8004f00:	4682      	mov	sl, r0
 8004f02:	4629      	mov	r1, r5
 8004f04:	f04f 0300 	mov.w	r3, #0
 8004f08:	f04f 020a 	mov.w	r2, #10
 8004f0c:	4648      	mov	r0, r9
 8004f0e:	f000 8196 	beq.w	800523e <_dtoa_r+0xae6>
 8004f12:	f001 fb47 	bl	80065a4 <__multadd>
 8004f16:	4641      	mov	r1, r8
 8004f18:	4605      	mov	r5, r0
 8004f1a:	2300      	movs	r3, #0
 8004f1c:	220a      	movs	r2, #10
 8004f1e:	4648      	mov	r0, r9
 8004f20:	f001 fb40 	bl	80065a4 <__multadd>
 8004f24:	4627      	mov	r7, r4
 8004f26:	4680      	mov	r8, r0
 8004f28:	e7a4      	b.n	8004e74 <_dtoa_r+0x71c>
 8004f2a:	4631      	mov	r1, r6
 8004f2c:	4650      	mov	r0, sl
 8004f2e:	f001 fd1f 	bl	8006970 <__mcmp>
 8004f32:	2800      	cmp	r0, #0
 8004f34:	da81      	bge.n	8004e3a <_dtoa_r+0x6e2>
 8004f36:	9f06      	ldr	r7, [sp, #24]
 8004f38:	4651      	mov	r1, sl
 8004f3a:	2300      	movs	r3, #0
 8004f3c:	220a      	movs	r2, #10
 8004f3e:	4648      	mov	r0, r9
 8004f40:	3f01      	subs	r7, #1
 8004f42:	9706      	str	r7, [sp, #24]
 8004f44:	f001 fb2e 	bl	80065a4 <__multadd>
 8004f48:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004f4a:	4682      	mov	sl, r0
 8004f4c:	2b00      	cmp	r3, #0
 8004f4e:	f040 82eb 	bne.w	8005528 <_dtoa_r+0xdd0>
 8004f52:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f54:	2b00      	cmp	r3, #0
 8004f56:	f340 82f3 	ble.w	8005540 <_dtoa_r+0xde8>
 8004f5a:	9309      	str	r3, [sp, #36]	; 0x24
 8004f5c:	465c      	mov	r4, fp
 8004f5e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004f62:	e002      	b.n	8004f6a <_dtoa_r+0x812>
 8004f64:	f001 fb1e 	bl	80065a4 <__multadd>
 8004f68:	4682      	mov	sl, r0
 8004f6a:	4631      	mov	r1, r6
 8004f6c:	4650      	mov	r0, sl
 8004f6e:	f7ff fb61 	bl	8004634 <quorem>
 8004f72:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004f76:	f804 7b01 	strb.w	r7, [r4], #1
 8004f7a:	eba4 030b 	sub.w	r3, r4, fp
 8004f7e:	4598      	cmp	r8, r3
 8004f80:	f04f 020a 	mov.w	r2, #10
 8004f84:	f04f 0300 	mov.w	r3, #0
 8004f88:	4651      	mov	r1, sl
 8004f8a:	4648      	mov	r0, r9
 8004f8c:	dcea      	bgt.n	8004f64 <_dtoa_r+0x80c>
 8004f8e:	2300      	movs	r3, #0
 8004f90:	9700      	str	r7, [sp, #0]
 8004f92:	9302      	str	r3, [sp, #8]
 8004f94:	4651      	mov	r1, sl
 8004f96:	2201      	movs	r2, #1
 8004f98:	4648      	mov	r0, r9
 8004f9a:	f001 fc93 	bl	80068c4 <__lshift>
 8004f9e:	4631      	mov	r1, r6
 8004fa0:	4682      	mov	sl, r0
 8004fa2:	f001 fce5 	bl	8006970 <__mcmp>
 8004fa6:	2800      	cmp	r0, #0
 8004fa8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004fac:	dc14      	bgt.n	8004fd8 <_dtoa_r+0x880>
 8004fae:	d108      	bne.n	8004fc2 <_dtoa_r+0x86a>
 8004fb0:	9b00      	ldr	r3, [sp, #0]
 8004fb2:	07db      	lsls	r3, r3, #31
 8004fb4:	d410      	bmi.n	8004fd8 <_dtoa_r+0x880>
 8004fb6:	e004      	b.n	8004fc2 <_dtoa_r+0x86a>
 8004fb8:	40240000 	.word	0x40240000
 8004fbc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004fc0:	461c      	mov	r4, r3
 8004fc2:	2a30      	cmp	r2, #48	; 0x30
 8004fc4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004fc8:	d0f8      	beq.n	8004fbc <_dtoa_r+0x864>
 8004fca:	e00b      	b.n	8004fe4 <_dtoa_r+0x88c>
 8004fcc:	459b      	cmp	fp, r3
 8004fce:	f000 814e 	beq.w	800526e <_dtoa_r+0xb16>
 8004fd2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004fd6:	461c      	mov	r4, r3
 8004fd8:	2a39      	cmp	r2, #57	; 0x39
 8004fda:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004fde:	d0f5      	beq.n	8004fcc <_dtoa_r+0x874>
 8004fe0:	3201      	adds	r2, #1
 8004fe2:	701a      	strb	r2, [r3, #0]
 8004fe4:	4631      	mov	r1, r6
 8004fe6:	4648      	mov	r0, r9
 8004fe8:	f001 fad2 	bl	8006590 <_Bfree>
 8004fec:	b155      	cbz	r5, 8005004 <_dtoa_r+0x8ac>
 8004fee:	9902      	ldr	r1, [sp, #8]
 8004ff0:	b121      	cbz	r1, 8004ffc <_dtoa_r+0x8a4>
 8004ff2:	42a9      	cmp	r1, r5
 8004ff4:	d002      	beq.n	8004ffc <_dtoa_r+0x8a4>
 8004ff6:	4648      	mov	r0, r9
 8004ff8:	f001 faca 	bl	8006590 <_Bfree>
 8004ffc:	4629      	mov	r1, r5
 8004ffe:	4648      	mov	r0, r9
 8005000:	f001 fac6 	bl	8006590 <_Bfree>
 8005004:	4651      	mov	r1, sl
 8005006:	4648      	mov	r0, r9
 8005008:	f001 fac2 	bl	8006590 <_Bfree>
 800500c:	2200      	movs	r2, #0
 800500e:	9b06      	ldr	r3, [sp, #24]
 8005010:	7022      	strb	r2, [r4, #0]
 8005012:	9a05      	ldr	r2, [sp, #20]
 8005014:	3301      	adds	r3, #1
 8005016:	6013      	str	r3, [r2, #0]
 8005018:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800501a:	2b00      	cmp	r3, #0
 800501c:	f43f abdb 	beq.w	80047d6 <_dtoa_r+0x7e>
 8005020:	4658      	mov	r0, fp
 8005022:	601c      	str	r4, [r3, #0]
 8005024:	b01b      	add	sp, #108	; 0x6c
 8005026:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800502a:	201c      	movs	r0, #28
 800502c:	e6eb      	b.n	8004e06 <_dtoa_r+0x6ae>
 800502e:	4601      	mov	r1, r0
 8005030:	4648      	mov	r0, r9
 8005032:	f001 fbf7 	bl	8006824 <__pow5mult>
 8005036:	9b02      	ldr	r3, [sp, #8]
 8005038:	2b01      	cmp	r3, #1
 800503a:	4606      	mov	r6, r0
 800503c:	f340 80d4 	ble.w	80051e8 <_dtoa_r+0xa90>
 8005040:	2300      	movs	r3, #0
 8005042:	930c      	str	r3, [sp, #48]	; 0x30
 8005044:	6933      	ldr	r3, [r6, #16]
 8005046:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800504a:	6918      	ldr	r0, [r3, #16]
 800504c:	f001 faea 	bl	8006624 <__hi0bits>
 8005050:	f1c0 0020 	rsb	r0, r0, #32
 8005054:	e6cb      	b.n	8004dee <_dtoa_r+0x696>
 8005056:	900d      	str	r0, [sp, #52]	; 0x34
 8005058:	e42a      	b.n	80048b0 <_dtoa_r+0x158>
 800505a:	2501      	movs	r5, #1
 800505c:	e440      	b.n	80048e0 <_dtoa_r+0x188>
 800505e:	f1c3 0820 	rsb	r8, r3, #32
 8005062:	9b00      	ldr	r3, [sp, #0]
 8005064:	fa03 f008 	lsl.w	r0, r3, r8
 8005068:	f7ff bbd8 	b.w	800481c <_dtoa_r+0xc4>
 800506c:	2300      	movs	r3, #0
 800506e:	930a      	str	r3, [sp, #40]	; 0x28
 8005070:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005074:	4413      	add	r3, r2
 8005076:	930e      	str	r3, [sp, #56]	; 0x38
 8005078:	3301      	adds	r3, #1
 800507a:	2b01      	cmp	r3, #1
 800507c:	461e      	mov	r6, r3
 800507e:	9309      	str	r3, [sp, #36]	; 0x24
 8005080:	bfb8      	it	lt
 8005082:	2601      	movlt	r6, #1
 8005084:	2100      	movs	r1, #0
 8005086:	2e17      	cmp	r6, #23
 8005088:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800508c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800508e:	f77f ac89 	ble.w	80049a4 <_dtoa_r+0x24c>
 8005092:	2201      	movs	r2, #1
 8005094:	2304      	movs	r3, #4
 8005096:	005b      	lsls	r3, r3, #1
 8005098:	f103 0014 	add.w	r0, r3, #20
 800509c:	42b0      	cmp	r0, r6
 800509e:	4611      	mov	r1, r2
 80050a0:	f102 0201 	add.w	r2, r2, #1
 80050a4:	d9f7      	bls.n	8005096 <_dtoa_r+0x93e>
 80050a6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80050aa:	e47b      	b.n	80049a4 <_dtoa_r+0x24c>
 80050ac:	2300      	movs	r3, #0
 80050ae:	930a      	str	r3, [sp, #40]	; 0x28
 80050b0:	9e07      	ldr	r6, [sp, #28]
 80050b2:	2e00      	cmp	r6, #0
 80050b4:	f340 80e2 	ble.w	800527c <_dtoa_r+0xb24>
 80050b8:	960e      	str	r6, [sp, #56]	; 0x38
 80050ba:	9609      	str	r6, [sp, #36]	; 0x24
 80050bc:	e7e2      	b.n	8005084 <_dtoa_r+0x92c>
 80050be:	2301      	movs	r3, #1
 80050c0:	930a      	str	r3, [sp, #40]	; 0x28
 80050c2:	e7f5      	b.n	80050b0 <_dtoa_r+0x958>
 80050c4:	9b00      	ldr	r3, [sp, #0]
 80050c6:	2b00      	cmp	r3, #0
 80050c8:	f47f ae90 	bne.w	8004dec <_dtoa_r+0x694>
 80050cc:	e9dd 1200 	ldrd	r1, r2, [sp]
 80050d0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80050d4:	2b00      	cmp	r3, #0
 80050d6:	f040 8192 	bne.w	80053fe <_dtoa_r+0xca6>
 80050da:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80050de:	0d1b      	lsrs	r3, r3, #20
 80050e0:	051b      	lsls	r3, r3, #20
 80050e2:	b12b      	cbz	r3, 80050f0 <_dtoa_r+0x998>
 80050e4:	9b08      	ldr	r3, [sp, #32]
 80050e6:	3301      	adds	r3, #1
 80050e8:	9308      	str	r3, [sp, #32]
 80050ea:	f108 0801 	add.w	r8, r8, #1
 80050ee:	2301      	movs	r3, #1
 80050f0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80050f2:	930c      	str	r3, [sp, #48]	; 0x30
 80050f4:	2a00      	cmp	r2, #0
 80050f6:	f43f ae79 	beq.w	8004dec <_dtoa_r+0x694>
 80050fa:	e7a3      	b.n	8005044 <_dtoa_r+0x8ec>
 80050fc:	463a      	mov	r2, r7
 80050fe:	4629      	mov	r1, r5
 8005100:	4648      	mov	r0, r9
 8005102:	f001 fb8f 	bl	8006824 <__pow5mult>
 8005106:	4652      	mov	r2, sl
 8005108:	4601      	mov	r1, r0
 800510a:	4605      	mov	r5, r0
 800510c:	4648      	mov	r0, r9
 800510e:	f001 fae3 	bl	80066d8 <__multiply>
 8005112:	4651      	mov	r1, sl
 8005114:	4607      	mov	r7, r0
 8005116:	4648      	mov	r0, r9
 8005118:	f001 fa3a 	bl	8006590 <_Bfree>
 800511c:	46ba      	mov	sl, r7
 800511e:	2e00      	cmp	r6, #0
 8005120:	f43f ae57 	beq.w	8004dd2 <_dtoa_r+0x67a>
 8005124:	e64f      	b.n	8004dc6 <_dtoa_r+0x66e>
 8005126:	4629      	mov	r1, r5
 8005128:	4622      	mov	r2, r4
 800512a:	4648      	mov	r0, r9
 800512c:	f001 fbca 	bl	80068c4 <__lshift>
 8005130:	4605      	mov	r5, r0
 8005132:	e68d      	b.n	8004e50 <_dtoa_r+0x6f8>
 8005134:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005136:	2a00      	cmp	r2, #0
 8005138:	f000 815d 	beq.w	80053f6 <_dtoa_r+0xc9e>
 800513c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005140:	9a08      	ldr	r2, [sp, #32]
 8005142:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005144:	4614      	mov	r4, r2
 8005146:	441a      	add	r2, r3
 8005148:	4498      	add	r8, r3
 800514a:	9208      	str	r2, [sp, #32]
 800514c:	e5f7      	b.n	8004d3e <_dtoa_r+0x5e6>
 800514e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005150:	2b00      	cmp	r3, #0
 8005152:	f73f ad3e 	bgt.w	8004bd2 <_dtoa_r+0x47a>
 8005156:	f040 80bc 	bne.w	80052d2 <_dtoa_r+0xb7a>
 800515a:	ec51 0b17 	vmov	r0, r1, d7
 800515e:	2200      	movs	r2, #0
 8005160:	4bb2      	ldr	r3, [pc, #712]	; (800542c <_dtoa_r+0xcd4>)
 8005162:	f7fb fd49 	bl	8000bf8 <__aeabi_dmul>
 8005166:	e9dd 2300 	ldrd	r2, r3, [sp]
 800516a:	f7fb ffcb 	bl	8001104 <__aeabi_dcmpge>
 800516e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005170:	4635      	mov	r5, r6
 8005172:	2800      	cmp	r0, #0
 8005174:	d176      	bne.n	8005264 <_dtoa_r+0xb0c>
 8005176:	9a06      	ldr	r2, [sp, #24]
 8005178:	2331      	movs	r3, #49	; 0x31
 800517a:	3201      	adds	r2, #1
 800517c:	9206      	str	r2, [sp, #24]
 800517e:	f88b 3000 	strb.w	r3, [fp]
 8005182:	f10b 0401 	add.w	r4, fp, #1
 8005186:	4631      	mov	r1, r6
 8005188:	4648      	mov	r0, r9
 800518a:	f001 fa01 	bl	8006590 <_Bfree>
 800518e:	2d00      	cmp	r5, #0
 8005190:	f47f af34 	bne.w	8004ffc <_dtoa_r+0x8a4>
 8005194:	e736      	b.n	8005004 <_dtoa_r+0x8ac>
 8005196:	f000 8142 	beq.w	800541e <_dtoa_r+0xcc6>
 800519a:	9b06      	ldr	r3, [sp, #24]
 800519c:	425c      	negs	r4, r3
 800519e:	4ba4      	ldr	r3, [pc, #656]	; (8005430 <_dtoa_r+0xcd8>)
 80051a0:	f004 020f 	and.w	r2, r4, #15
 80051a4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80051a8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80051ac:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80051b0:	f7fb fd22 	bl	8000bf8 <__aeabi_dmul>
 80051b4:	1124      	asrs	r4, r4, #4
 80051b6:	e9cd 0100 	strd	r0, r1, [sp]
 80051ba:	f000 81c6 	beq.w	800554a <_dtoa_r+0xdf2>
 80051be:	4d9d      	ldr	r5, [pc, #628]	; (8005434 <_dtoa_r+0xcdc>)
 80051c0:	2300      	movs	r3, #0
 80051c2:	2602      	movs	r6, #2
 80051c4:	07e7      	lsls	r7, r4, #31
 80051c6:	d505      	bpl.n	80051d4 <_dtoa_r+0xa7c>
 80051c8:	e9d5 2300 	ldrd	r2, r3, [r5]
 80051cc:	f7fb fd14 	bl	8000bf8 <__aeabi_dmul>
 80051d0:	3601      	adds	r6, #1
 80051d2:	2301      	movs	r3, #1
 80051d4:	1064      	asrs	r4, r4, #1
 80051d6:	f105 0508 	add.w	r5, r5, #8
 80051da:	d1f3      	bne.n	80051c4 <_dtoa_r+0xa6c>
 80051dc:	2b00      	cmp	r3, #0
 80051de:	f43f ac27 	beq.w	8004a30 <_dtoa_r+0x2d8>
 80051e2:	e9cd 0100 	strd	r0, r1, [sp]
 80051e6:	e423      	b.n	8004a30 <_dtoa_r+0x2d8>
 80051e8:	9b00      	ldr	r3, [sp, #0]
 80051ea:	2b00      	cmp	r3, #0
 80051ec:	f43f af6e 	beq.w	80050cc <_dtoa_r+0x974>
 80051f0:	e726      	b.n	8005040 <_dtoa_r+0x8e8>
 80051f2:	6869      	ldr	r1, [r5, #4]
 80051f4:	4648      	mov	r0, r9
 80051f6:	f001 f9a5 	bl	8006544 <_Balloc>
 80051fa:	692b      	ldr	r3, [r5, #16]
 80051fc:	3302      	adds	r3, #2
 80051fe:	009a      	lsls	r2, r3, #2
 8005200:	4604      	mov	r4, r0
 8005202:	f105 010c 	add.w	r1, r5, #12
 8005206:	300c      	adds	r0, #12
 8005208:	f7fb f9c8 	bl	800059c <memcpy>
 800520c:	4621      	mov	r1, r4
 800520e:	2201      	movs	r2, #1
 8005210:	4648      	mov	r0, r9
 8005212:	f001 fb57 	bl	80068c4 <__lshift>
 8005216:	4680      	mov	r8, r0
 8005218:	e61f      	b.n	8004e5a <_dtoa_r+0x702>
 800521a:	2400      	movs	r4, #0
 800521c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005220:	4621      	mov	r1, r4
 8005222:	4648      	mov	r0, r9
 8005224:	f001 f98e 	bl	8006544 <_Balloc>
 8005228:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800522c:	930e      	str	r3, [sp, #56]	; 0x38
 800522e:	9309      	str	r3, [sp, #36]	; 0x24
 8005230:	2301      	movs	r3, #1
 8005232:	4683      	mov	fp, r0
 8005234:	9407      	str	r4, [sp, #28]
 8005236:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800523a:	930a      	str	r3, [sp, #40]	; 0x28
 800523c:	e4b6      	b.n	8004bac <_dtoa_r+0x454>
 800523e:	f001 f9b1 	bl	80065a4 <__multadd>
 8005242:	4627      	mov	r7, r4
 8005244:	4605      	mov	r5, r0
 8005246:	4680      	mov	r8, r0
 8005248:	e614      	b.n	8004e74 <_dtoa_r+0x71c>
 800524a:	4648      	mov	r0, r9
 800524c:	f001 f9a0 	bl	8006590 <_Bfree>
 8005250:	2301      	movs	r3, #1
 8005252:	e639      	b.n	8004ec8 <_dtoa_r+0x770>
 8005254:	9b02      	ldr	r3, [sp, #8]
 8005256:	2b02      	cmp	r3, #2
 8005258:	f77f adf3 	ble.w	8004e42 <_dtoa_r+0x6ea>
 800525c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800525e:	2b00      	cmp	r3, #0
 8005260:	f000 80cf 	beq.w	8005402 <_dtoa_r+0xcaa>
 8005264:	9b07      	ldr	r3, [sp, #28]
 8005266:	43db      	mvns	r3, r3
 8005268:	9306      	str	r3, [sp, #24]
 800526a:	465c      	mov	r4, fp
 800526c:	e78b      	b.n	8005186 <_dtoa_r+0xa2e>
 800526e:	9a06      	ldr	r2, [sp, #24]
 8005270:	2331      	movs	r3, #49	; 0x31
 8005272:	3201      	adds	r2, #1
 8005274:	9206      	str	r2, [sp, #24]
 8005276:	f88b 3000 	strb.w	r3, [fp]
 800527a:	e6b3      	b.n	8004fe4 <_dtoa_r+0x88c>
 800527c:	2401      	movs	r4, #1
 800527e:	9409      	str	r4, [sp, #36]	; 0x24
 8005280:	9407      	str	r4, [sp, #28]
 8005282:	f7ff bb8b 	b.w	800499c <_dtoa_r+0x244>
 8005286:	4630      	mov	r0, r6
 8005288:	f7fb fc4c 	bl	8000b24 <__aeabi_i2d>
 800528c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005290:	f7fb fcb2 	bl	8000bf8 <__aeabi_dmul>
 8005294:	2200      	movs	r2, #0
 8005296:	4b68      	ldr	r3, [pc, #416]	; (8005438 <_dtoa_r+0xce0>)
 8005298:	f7fb faf8 	bl	800088c <__adddf3>
 800529c:	4606      	mov	r6, r0
 800529e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80052a2:	2200      	movs	r2, #0
 80052a4:	4b61      	ldr	r3, [pc, #388]	; (800542c <_dtoa_r+0xcd4>)
 80052a6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80052aa:	f7fb faed 	bl	8000888 <__aeabi_dsub>
 80052ae:	4632      	mov	r2, r6
 80052b0:	463b      	mov	r3, r7
 80052b2:	4604      	mov	r4, r0
 80052b4:	460d      	mov	r5, r1
 80052b6:	f7fb ff2f 	bl	8001118 <__aeabi_dcmpgt>
 80052ba:	2800      	cmp	r0, #0
 80052bc:	d14f      	bne.n	800535e <_dtoa_r+0xc06>
 80052be:	4632      	mov	r2, r6
 80052c0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80052c4:	4620      	mov	r0, r4
 80052c6:	4629      	mov	r1, r5
 80052c8:	f7fb ff08 	bl	80010dc <__aeabi_dcmplt>
 80052cc:	2800      	cmp	r0, #0
 80052ce:	f43f ac69 	beq.w	8004ba4 <_dtoa_r+0x44c>
 80052d2:	2600      	movs	r6, #0
 80052d4:	4635      	mov	r5, r6
 80052d6:	e7c5      	b.n	8005264 <_dtoa_r+0xb0c>
 80052d8:	2301      	movs	r3, #1
 80052da:	930a      	str	r3, [sp, #40]	; 0x28
 80052dc:	e6c8      	b.n	8005070 <_dtoa_r+0x918>
 80052de:	4651      	mov	r1, sl
 80052e0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80052e2:	4648      	mov	r0, r9
 80052e4:	f001 fa9e 	bl	8006824 <__pow5mult>
 80052e8:	4682      	mov	sl, r0
 80052ea:	e572      	b.n	8004dd2 <_dtoa_r+0x67a>
 80052ec:	f8dd a000 	ldr.w	sl, [sp]
 80052f0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80052f4:	e686      	b.n	8005004 <_dtoa_r+0x8ac>
 80052f6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80052f8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80052fa:	1afb      	subs	r3, r7, r3
 80052fc:	441a      	add	r2, r3
 80052fe:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005302:	2700      	movs	r7, #0
 8005304:	e512      	b.n	8004d2c <_dtoa_r+0x5d4>
 8005306:	2b00      	cmp	r3, #0
 8005308:	9402      	str	r4, [sp, #8]
 800530a:	465e      	mov	r6, fp
 800530c:	f107 0401 	add.w	r4, r7, #1
 8005310:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005314:	f300 80ba 	bgt.w	800548c <_dtoa_r+0xd34>
 8005318:	9b00      	ldr	r3, [sp, #0]
 800531a:	9502      	str	r5, [sp, #8]
 800531c:	703b      	strb	r3, [r7, #0]
 800531e:	4645      	mov	r5, r8
 8005320:	e660      	b.n	8004fe4 <_dtoa_r+0x88c>
 8005322:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005326:	2602      	movs	r6, #2
 8005328:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800532c:	f7ff bb67 	b.w	80049fe <_dtoa_r+0x2a6>
 8005330:	9b00      	ldr	r3, [sp, #0]
 8005332:	2b39      	cmp	r3, #57	; 0x39
 8005334:	465e      	mov	r6, fp
 8005336:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800533a:	f000 80b9 	beq.w	80054b0 <_dtoa_r+0xd58>
 800533e:	9b00      	ldr	r3, [sp, #0]
 8005340:	9502      	str	r5, [sp, #8]
 8005342:	3301      	adds	r3, #1
 8005344:	703b      	strb	r3, [r7, #0]
 8005346:	4645      	mov	r5, r8
 8005348:	e64c      	b.n	8004fe4 <_dtoa_r+0x88c>
 800534a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800534e:	1a9c      	subs	r4, r3, r2
 8005350:	e4f5      	b.n	8004d3e <_dtoa_r+0x5e6>
 8005352:	465e      	mov	r6, fp
 8005354:	9502      	str	r5, [sp, #8]
 8005356:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800535a:	4645      	mov	r5, r8
 800535c:	e61a      	b.n	8004f94 <_dtoa_r+0x83c>
 800535e:	2600      	movs	r6, #0
 8005360:	4635      	mov	r5, r6
 8005362:	e708      	b.n	8005176 <_dtoa_r+0xa1e>
 8005364:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005368:	e9dd 0100 	ldrd	r0, r1, [sp]
 800536c:	f7fb fc44 	bl	8000bf8 <__aeabi_dmul>
 8005370:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005372:	f88b 5000 	strb.w	r5, [fp]
 8005376:	2b01      	cmp	r3, #1
 8005378:	e9cd 0100 	strd	r0, r1, [sp]
 800537c:	d020      	beq.n	80053c0 <_dtoa_r+0xc68>
 800537e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005380:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005384:	445b      	add	r3, fp
 8005386:	4698      	mov	r8, r3
 8005388:	2200      	movs	r2, #0
 800538a:	4b2c      	ldr	r3, [pc, #176]	; (800543c <_dtoa_r+0xce4>)
 800538c:	4630      	mov	r0, r6
 800538e:	4639      	mov	r1, r7
 8005390:	f7fb fc32 	bl	8000bf8 <__aeabi_dmul>
 8005394:	460f      	mov	r7, r1
 8005396:	4606      	mov	r6, r0
 8005398:	f7fb fede 	bl	8001158 <__aeabi_d2iz>
 800539c:	4605      	mov	r5, r0
 800539e:	f7fb fbc1 	bl	8000b24 <__aeabi_i2d>
 80053a2:	3530      	adds	r5, #48	; 0x30
 80053a4:	4602      	mov	r2, r0
 80053a6:	460b      	mov	r3, r1
 80053a8:	4630      	mov	r0, r6
 80053aa:	4639      	mov	r1, r7
 80053ac:	f7fb fa6c 	bl	8000888 <__aeabi_dsub>
 80053b0:	f804 5b01 	strb.w	r5, [r4], #1
 80053b4:	4544      	cmp	r4, r8
 80053b6:	4606      	mov	r6, r0
 80053b8:	460f      	mov	r7, r1
 80053ba:	d1e5      	bne.n	8005388 <_dtoa_r+0xc30>
 80053bc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80053c0:	4b1f      	ldr	r3, [pc, #124]	; (8005440 <_dtoa_r+0xce8>)
 80053c2:	2200      	movs	r2, #0
 80053c4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80053c8:	f7fb fa60 	bl	800088c <__adddf3>
 80053cc:	4632      	mov	r2, r6
 80053ce:	463b      	mov	r3, r7
 80053d0:	f7fb fe84 	bl	80010dc <__aeabi_dcmplt>
 80053d4:	2800      	cmp	r0, #0
 80053d6:	d070      	beq.n	80054ba <_dtoa_r+0xd62>
 80053d8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80053da:	9306      	str	r3, [sp, #24]
 80053dc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80053e0:	e48f      	b.n	8004d02 <_dtoa_r+0x5aa>
 80053e2:	2330      	movs	r3, #48	; 0x30
 80053e4:	f88b 3000 	strb.w	r3, [fp]
 80053e8:	9b06      	ldr	r3, [sp, #24]
 80053ea:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80053ee:	3301      	adds	r3, #1
 80053f0:	9306      	str	r3, [sp, #24]
 80053f2:	465b      	mov	r3, fp
 80053f4:	e489      	b.n	8004d0a <_dtoa_r+0x5b2>
 80053f6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80053f8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80053fc:	e6a0      	b.n	8005140 <_dtoa_r+0x9e8>
 80053fe:	2300      	movs	r3, #0
 8005400:	e676      	b.n	80050f0 <_dtoa_r+0x998>
 8005402:	4631      	mov	r1, r6
 8005404:	2205      	movs	r2, #5
 8005406:	4648      	mov	r0, r9
 8005408:	f001 f8cc 	bl	80065a4 <__multadd>
 800540c:	4601      	mov	r1, r0
 800540e:	4606      	mov	r6, r0
 8005410:	4650      	mov	r0, sl
 8005412:	f001 faad 	bl	8006970 <__mcmp>
 8005416:	2800      	cmp	r0, #0
 8005418:	f73f aead 	bgt.w	8005176 <_dtoa_r+0xa1e>
 800541c:	e722      	b.n	8005264 <_dtoa_r+0xb0c>
 800541e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005422:	2602      	movs	r6, #2
 8005424:	ed8d 7b00 	vstr	d7, [sp]
 8005428:	f7ff bb02 	b.w	8004a30 <_dtoa_r+0x2d8>
 800542c:	40140000 	.word	0x40140000
 8005430:	08007818 	.word	0x08007818
 8005434:	080077f0 	.word	0x080077f0
 8005438:	401c0000 	.word	0x401c0000
 800543c:	40240000 	.word	0x40240000
 8005440:	3fe00000 	.word	0x3fe00000
 8005444:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005446:	2b00      	cmp	r3, #0
 8005448:	f43f af1d 	beq.w	8005286 <_dtoa_r+0xb2e>
 800544c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800544e:	2c00      	cmp	r4, #0
 8005450:	f77f aba8 	ble.w	8004ba4 <_dtoa_r+0x44c>
 8005454:	2200      	movs	r2, #0
 8005456:	4b45      	ldr	r3, [pc, #276]	; (800556c <_dtoa_r+0xe14>)
 8005458:	e9dd 0100 	ldrd	r0, r1, [sp]
 800545c:	f7fb fbcc 	bl	8000bf8 <__aeabi_dmul>
 8005460:	e9cd 0100 	strd	r0, r1, [sp]
 8005464:	1c70      	adds	r0, r6, #1
 8005466:	f7fb fb5d 	bl	8000b24 <__aeabi_i2d>
 800546a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800546e:	f7fb fbc3 	bl	8000bf8 <__aeabi_dmul>
 8005472:	4b3f      	ldr	r3, [pc, #252]	; (8005570 <_dtoa_r+0xe18>)
 8005474:	2200      	movs	r2, #0
 8005476:	f7fb fa09 	bl	800088c <__adddf3>
 800547a:	9b06      	ldr	r3, [sp, #24]
 800547c:	9412      	str	r4, [sp, #72]	; 0x48
 800547e:	3b01      	subs	r3, #1
 8005480:	4606      	mov	r6, r0
 8005482:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005486:	9316      	str	r3, [sp, #88]	; 0x58
 8005488:	f7ff baf3 	b.w	8004a72 <_dtoa_r+0x31a>
 800548c:	4651      	mov	r1, sl
 800548e:	2201      	movs	r2, #1
 8005490:	4648      	mov	r0, r9
 8005492:	f001 fa17 	bl	80068c4 <__lshift>
 8005496:	4631      	mov	r1, r6
 8005498:	4682      	mov	sl, r0
 800549a:	f001 fa69 	bl	8006970 <__mcmp>
 800549e:	2800      	cmp	r0, #0
 80054a0:	dd3b      	ble.n	800551a <_dtoa_r+0xdc2>
 80054a2:	9b00      	ldr	r3, [sp, #0]
 80054a4:	2b39      	cmp	r3, #57	; 0x39
 80054a6:	d003      	beq.n	80054b0 <_dtoa_r+0xd58>
 80054a8:	9b02      	ldr	r3, [sp, #8]
 80054aa:	3331      	adds	r3, #49	; 0x31
 80054ac:	9300      	str	r3, [sp, #0]
 80054ae:	e733      	b.n	8005318 <_dtoa_r+0xbc0>
 80054b0:	2239      	movs	r2, #57	; 0x39
 80054b2:	9502      	str	r5, [sp, #8]
 80054b4:	703a      	strb	r2, [r7, #0]
 80054b6:	4645      	mov	r5, r8
 80054b8:	e58e      	b.n	8004fd8 <_dtoa_r+0x880>
 80054ba:	e9dd 2300 	ldrd	r2, r3, [sp]
 80054be:	2000      	movs	r0, #0
 80054c0:	492c      	ldr	r1, [pc, #176]	; (8005574 <_dtoa_r+0xe1c>)
 80054c2:	f7fb f9e1 	bl	8000888 <__aeabi_dsub>
 80054c6:	4632      	mov	r2, r6
 80054c8:	463b      	mov	r3, r7
 80054ca:	f7fb fe25 	bl	8001118 <__aeabi_dcmpgt>
 80054ce:	b910      	cbnz	r0, 80054d6 <_dtoa_r+0xd7e>
 80054d0:	f7ff bb68 	b.w	8004ba4 <_dtoa_r+0x44c>
 80054d4:	4614      	mov	r4, r2
 80054d6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80054da:	2b30      	cmp	r3, #48	; 0x30
 80054dc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80054e0:	d0f8      	beq.n	80054d4 <_dtoa_r+0xd7c>
 80054e2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80054e4:	9306      	str	r3, [sp, #24]
 80054e6:	e58d      	b.n	8005004 <_dtoa_r+0x8ac>
 80054e8:	46d9      	mov	r9, fp
 80054ea:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80054ee:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80054f2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80054f4:	9306      	str	r3, [sp, #24]
 80054f6:	e404      	b.n	8004d02 <_dtoa_r+0x5aa>
 80054f8:	9b00      	ldr	r3, [sp, #0]
 80054fa:	2b39      	cmp	r3, #57	; 0x39
 80054fc:	4621      	mov	r1, r4
 80054fe:	4632      	mov	r2, r6
 8005500:	f107 0401 	add.w	r4, r7, #1
 8005504:	465e      	mov	r6, fp
 8005506:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800550a:	d0d1      	beq.n	80054b0 <_dtoa_r+0xd58>
 800550c:	2a00      	cmp	r2, #0
 800550e:	f77f af03 	ble.w	8005318 <_dtoa_r+0xbc0>
 8005512:	460b      	mov	r3, r1
 8005514:	3331      	adds	r3, #49	; 0x31
 8005516:	9300      	str	r3, [sp, #0]
 8005518:	e6fe      	b.n	8005318 <_dtoa_r+0xbc0>
 800551a:	f47f aefd 	bne.w	8005318 <_dtoa_r+0xbc0>
 800551e:	9b00      	ldr	r3, [sp, #0]
 8005520:	07da      	lsls	r2, r3, #31
 8005522:	f57f aef9 	bpl.w	8005318 <_dtoa_r+0xbc0>
 8005526:	e7bc      	b.n	80054a2 <_dtoa_r+0xd4a>
 8005528:	4629      	mov	r1, r5
 800552a:	2300      	movs	r3, #0
 800552c:	220a      	movs	r2, #10
 800552e:	4648      	mov	r0, r9
 8005530:	f001 f838 	bl	80065a4 <__multadd>
 8005534:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005536:	2b00      	cmp	r3, #0
 8005538:	4605      	mov	r5, r0
 800553a:	dd09      	ble.n	8005550 <_dtoa_r+0xdf8>
 800553c:	9309      	str	r3, [sp, #36]	; 0x24
 800553e:	e484      	b.n	8004e4a <_dtoa_r+0x6f2>
 8005540:	9b02      	ldr	r3, [sp, #8]
 8005542:	2b02      	cmp	r3, #2
 8005544:	dc0e      	bgt.n	8005564 <_dtoa_r+0xe0c>
 8005546:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005548:	e507      	b.n	8004f5a <_dtoa_r+0x802>
 800554a:	2602      	movs	r6, #2
 800554c:	f7ff ba70 	b.w	8004a30 <_dtoa_r+0x2d8>
 8005550:	9b02      	ldr	r3, [sp, #8]
 8005552:	2b02      	cmp	r3, #2
 8005554:	dc06      	bgt.n	8005564 <_dtoa_r+0xe0c>
 8005556:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005558:	e7f0      	b.n	800553c <_dtoa_r+0xde4>
 800555a:	f43f ac59 	beq.w	8004e10 <_dtoa_r+0x6b8>
 800555e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005562:	e450      	b.n	8004e06 <_dtoa_r+0x6ae>
 8005564:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005566:	9309      	str	r3, [sp, #36]	; 0x24
 8005568:	e678      	b.n	800525c <_dtoa_r+0xb04>
 800556a:	bf00      	nop
 800556c:	40240000 	.word	0x40240000
 8005570:	401c0000 	.word	0x401c0000
 8005574:	3fe00000 	.word	0x3fe00000

08005578 <__sflush_r>:
 8005578:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800557c:	b29a      	uxth	r2, r3
 800557e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005582:	460c      	mov	r4, r1
 8005584:	0711      	lsls	r1, r2, #28
 8005586:	4680      	mov	r8, r0
 8005588:	d444      	bmi.n	8005614 <__sflush_r+0x9c>
 800558a:	6862      	ldr	r2, [r4, #4]
 800558c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005590:	2a00      	cmp	r2, #0
 8005592:	81a3      	strh	r3, [r4, #12]
 8005594:	dd59      	ble.n	800564a <__sflush_r+0xd2>
 8005596:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005598:	2d00      	cmp	r5, #0
 800559a:	d053      	beq.n	8005644 <__sflush_r+0xcc>
 800559c:	2200      	movs	r2, #0
 800559e:	b29b      	uxth	r3, r3
 80055a0:	f8d8 6000 	ldr.w	r6, [r8]
 80055a4:	69e1      	ldr	r1, [r4, #28]
 80055a6:	f8c8 2000 	str.w	r2, [r8]
 80055aa:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80055ae:	f040 8083 	bne.w	80056b8 <__sflush_r+0x140>
 80055b2:	2301      	movs	r3, #1
 80055b4:	4640      	mov	r0, r8
 80055b6:	47a8      	blx	r5
 80055b8:	1c42      	adds	r2, r0, #1
 80055ba:	d04a      	beq.n	8005652 <__sflush_r+0xda>
 80055bc:	89a3      	ldrh	r3, [r4, #12]
 80055be:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80055c0:	69e1      	ldr	r1, [r4, #28]
 80055c2:	075b      	lsls	r3, r3, #29
 80055c4:	d505      	bpl.n	80055d2 <__sflush_r+0x5a>
 80055c6:	6862      	ldr	r2, [r4, #4]
 80055c8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80055ca:	1a80      	subs	r0, r0, r2
 80055cc:	b10b      	cbz	r3, 80055d2 <__sflush_r+0x5a>
 80055ce:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80055d0:	1ac0      	subs	r0, r0, r3
 80055d2:	4602      	mov	r2, r0
 80055d4:	2300      	movs	r3, #0
 80055d6:	4640      	mov	r0, r8
 80055d8:	47a8      	blx	r5
 80055da:	1c47      	adds	r7, r0, #1
 80055dc:	d045      	beq.n	800566a <__sflush_r+0xf2>
 80055de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055e2:	6922      	ldr	r2, [r4, #16]
 80055e4:	6022      	str	r2, [r4, #0]
 80055e6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80055ea:	2200      	movs	r2, #0
 80055ec:	81a3      	strh	r3, [r4, #12]
 80055ee:	04db      	lsls	r3, r3, #19
 80055f0:	6062      	str	r2, [r4, #4]
 80055f2:	d500      	bpl.n	80055f6 <__sflush_r+0x7e>
 80055f4:	6520      	str	r0, [r4, #80]	; 0x50
 80055f6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80055f8:	f8c8 6000 	str.w	r6, [r8]
 80055fc:	b311      	cbz	r1, 8005644 <__sflush_r+0xcc>
 80055fe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005602:	4299      	cmp	r1, r3
 8005604:	d002      	beq.n	800560c <__sflush_r+0x94>
 8005606:	4640      	mov	r0, r8
 8005608:	f000 f95e 	bl	80058c8 <_free_r>
 800560c:	2000      	movs	r0, #0
 800560e:	6320      	str	r0, [r4, #48]	; 0x30
 8005610:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005614:	6926      	ldr	r6, [r4, #16]
 8005616:	b1ae      	cbz	r6, 8005644 <__sflush_r+0xcc>
 8005618:	6825      	ldr	r5, [r4, #0]
 800561a:	6026      	str	r6, [r4, #0]
 800561c:	0792      	lsls	r2, r2, #30
 800561e:	bf0c      	ite	eq
 8005620:	6963      	ldreq	r3, [r4, #20]
 8005622:	2300      	movne	r3, #0
 8005624:	1bad      	subs	r5, r5, r6
 8005626:	60a3      	str	r3, [r4, #8]
 8005628:	e00a      	b.n	8005640 <__sflush_r+0xc8>
 800562a:	462b      	mov	r3, r5
 800562c:	4632      	mov	r2, r6
 800562e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005630:	69e1      	ldr	r1, [r4, #28]
 8005632:	4640      	mov	r0, r8
 8005634:	47b8      	blx	r7
 8005636:	2800      	cmp	r0, #0
 8005638:	eba5 0500 	sub.w	r5, r5, r0
 800563c:	4406      	add	r6, r0
 800563e:	dd2b      	ble.n	8005698 <__sflush_r+0x120>
 8005640:	2d00      	cmp	r5, #0
 8005642:	dcf2      	bgt.n	800562a <__sflush_r+0xb2>
 8005644:	2000      	movs	r0, #0
 8005646:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800564a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800564c:	2a00      	cmp	r2, #0
 800564e:	dca2      	bgt.n	8005596 <__sflush_r+0x1e>
 8005650:	e7f8      	b.n	8005644 <__sflush_r+0xcc>
 8005652:	f8d8 3000 	ldr.w	r3, [r8]
 8005656:	2b00      	cmp	r3, #0
 8005658:	d0b0      	beq.n	80055bc <__sflush_r+0x44>
 800565a:	2b1d      	cmp	r3, #29
 800565c:	d001      	beq.n	8005662 <__sflush_r+0xea>
 800565e:	2b16      	cmp	r3, #22
 8005660:	d12c      	bne.n	80056bc <__sflush_r+0x144>
 8005662:	f8c8 6000 	str.w	r6, [r8]
 8005666:	2000      	movs	r0, #0
 8005668:	e7ed      	b.n	8005646 <__sflush_r+0xce>
 800566a:	f8d8 1000 	ldr.w	r1, [r8]
 800566e:	291d      	cmp	r1, #29
 8005670:	d81a      	bhi.n	80056a8 <__sflush_r+0x130>
 8005672:	4b15      	ldr	r3, [pc, #84]	; (80056c8 <__sflush_r+0x150>)
 8005674:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005678:	40cb      	lsrs	r3, r1
 800567a:	43db      	mvns	r3, r3
 800567c:	f013 0301 	ands.w	r3, r3, #1
 8005680:	d114      	bne.n	80056ac <__sflush_r+0x134>
 8005682:	6925      	ldr	r5, [r4, #16]
 8005684:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005688:	e9c4 5300 	strd	r5, r3, [r4]
 800568c:	04d5      	lsls	r5, r2, #19
 800568e:	81a2      	strh	r2, [r4, #12]
 8005690:	d5b1      	bpl.n	80055f6 <__sflush_r+0x7e>
 8005692:	2900      	cmp	r1, #0
 8005694:	d1af      	bne.n	80055f6 <__sflush_r+0x7e>
 8005696:	e7ad      	b.n	80055f4 <__sflush_r+0x7c>
 8005698:	89a3      	ldrh	r3, [r4, #12]
 800569a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800569e:	81a3      	strh	r3, [r4, #12]
 80056a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80056a8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80056ac:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80056b0:	81a2      	strh	r2, [r4, #12]
 80056b2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056b6:	e7c6      	b.n	8005646 <__sflush_r+0xce>
 80056b8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80056ba:	e782      	b.n	80055c2 <__sflush_r+0x4a>
 80056bc:	89a3      	ldrh	r3, [r4, #12]
 80056be:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056c2:	81a3      	strh	r3, [r4, #12]
 80056c4:	e7bf      	b.n	8005646 <__sflush_r+0xce>
 80056c6:	bf00      	nop
 80056c8:	20400001 	.word	0x20400001

080056cc <_fflush_r>:
 80056cc:	b538      	push	{r3, r4, r5, lr}
 80056ce:	460d      	mov	r5, r1
 80056d0:	4604      	mov	r4, r0
 80056d2:	b108      	cbz	r0, 80056d8 <_fflush_r+0xc>
 80056d4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80056d6:	b1a3      	cbz	r3, 8005702 <_fflush_r+0x36>
 80056d8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80056dc:	b1b8      	cbz	r0, 800570e <_fflush_r+0x42>
 80056de:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80056e0:	07db      	lsls	r3, r3, #31
 80056e2:	d401      	bmi.n	80056e8 <_fflush_r+0x1c>
 80056e4:	0581      	lsls	r1, r0, #22
 80056e6:	d51a      	bpl.n	800571e <_fflush_r+0x52>
 80056e8:	4620      	mov	r0, r4
 80056ea:	4629      	mov	r1, r5
 80056ec:	f7ff ff44 	bl	8005578 <__sflush_r>
 80056f0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80056f2:	07da      	lsls	r2, r3, #31
 80056f4:	4604      	mov	r4, r0
 80056f6:	d402      	bmi.n	80056fe <_fflush_r+0x32>
 80056f8:	89ab      	ldrh	r3, [r5, #12]
 80056fa:	059b      	lsls	r3, r3, #22
 80056fc:	d50a      	bpl.n	8005714 <_fflush_r+0x48>
 80056fe:	4620      	mov	r0, r4
 8005700:	bd38      	pop	{r3, r4, r5, pc}
 8005702:	f000 f83f 	bl	8005784 <__sinit>
 8005706:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800570a:	2800      	cmp	r0, #0
 800570c:	d1e7      	bne.n	80056de <_fflush_r+0x12>
 800570e:	4604      	mov	r4, r0
 8005710:	4620      	mov	r0, r4
 8005712:	bd38      	pop	{r3, r4, r5, pc}
 8005714:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005716:	f000 fb87 	bl	8005e28 <__retarget_lock_release_recursive>
 800571a:	4620      	mov	r0, r4
 800571c:	bd38      	pop	{r3, r4, r5, pc}
 800571e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005720:	f000 fb80 	bl	8005e24 <__retarget_lock_acquire_recursive>
 8005724:	e7e0      	b.n	80056e8 <_fflush_r+0x1c>
 8005726:	bf00      	nop

08005728 <std>:
 8005728:	b510      	push	{r4, lr}
 800572a:	2300      	movs	r3, #0
 800572c:	4604      	mov	r4, r0
 800572e:	8181      	strh	r1, [r0, #12]
 8005730:	81c2      	strh	r2, [r0, #14]
 8005732:	e9c0 3300 	strd	r3, r3, [r0]
 8005736:	6083      	str	r3, [r0, #8]
 8005738:	6643      	str	r3, [r0, #100]	; 0x64
 800573a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800573e:	6183      	str	r3, [r0, #24]
 8005740:	4619      	mov	r1, r3
 8005742:	2208      	movs	r2, #8
 8005744:	305c      	adds	r0, #92	; 0x5c
 8005746:	f7fd f8cb 	bl	80028e0 <memset>
 800574a:	4807      	ldr	r0, [pc, #28]	; (8005768 <std+0x40>)
 800574c:	4907      	ldr	r1, [pc, #28]	; (800576c <std+0x44>)
 800574e:	4a08      	ldr	r2, [pc, #32]	; (8005770 <std+0x48>)
 8005750:	4b08      	ldr	r3, [pc, #32]	; (8005774 <std+0x4c>)
 8005752:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005754:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005758:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800575c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005760:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005764:	f000 bb5a 	b.w	8005e1c <__retarget_lock_init_recursive>
 8005768:	08006f41 	.word	0x08006f41
 800576c:	08006f65 	.word	0x08006f65
 8005770:	08006fa1 	.word	0x08006fa1
 8005774:	08006fc1 	.word	0x08006fc1

08005778 <_cleanup_r>:
 8005778:	4901      	ldr	r1, [pc, #4]	; (8005780 <_cleanup_r+0x8>)
 800577a:	f000 bb17 	b.w	8005dac <_fwalk_reent>
 800577e:	bf00      	nop
 8005780:	08007231 	.word	0x08007231

08005784 <__sinit>:
 8005784:	b510      	push	{r4, lr}
 8005786:	4604      	mov	r4, r0
 8005788:	4812      	ldr	r0, [pc, #72]	; (80057d4 <__sinit+0x50>)
 800578a:	f000 fb4b 	bl	8005e24 <__retarget_lock_acquire_recursive>
 800578e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005790:	b9d2      	cbnz	r2, 80057c8 <__sinit+0x44>
 8005792:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005796:	4810      	ldr	r0, [pc, #64]	; (80057d8 <__sinit+0x54>)
 8005798:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800579c:	2103      	movs	r1, #3
 800579e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80057a2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80057a4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80057a8:	6860      	ldr	r0, [r4, #4]
 80057aa:	2104      	movs	r1, #4
 80057ac:	f7ff ffbc 	bl	8005728 <std>
 80057b0:	2201      	movs	r2, #1
 80057b2:	2109      	movs	r1, #9
 80057b4:	68a0      	ldr	r0, [r4, #8]
 80057b6:	f7ff ffb7 	bl	8005728 <std>
 80057ba:	2202      	movs	r2, #2
 80057bc:	2112      	movs	r1, #18
 80057be:	68e0      	ldr	r0, [r4, #12]
 80057c0:	f7ff ffb2 	bl	8005728 <std>
 80057c4:	2301      	movs	r3, #1
 80057c6:	63a3      	str	r3, [r4, #56]	; 0x38
 80057c8:	4802      	ldr	r0, [pc, #8]	; (80057d4 <__sinit+0x50>)
 80057ca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80057ce:	f000 bb2b 	b.w	8005e28 <__retarget_lock_release_recursive>
 80057d2:	bf00      	nop
 80057d4:	20001570 	.word	0x20001570
 80057d8:	08005779 	.word	0x08005779

080057dc <__sfp_lock_acquire>:
 80057dc:	4801      	ldr	r0, [pc, #4]	; (80057e4 <__sfp_lock_acquire+0x8>)
 80057de:	f000 bb21 	b.w	8005e24 <__retarget_lock_acquire_recursive>
 80057e2:	bf00      	nop
 80057e4:	20001584 	.word	0x20001584

080057e8 <__sfp_lock_release>:
 80057e8:	4801      	ldr	r0, [pc, #4]	; (80057f0 <__sfp_lock_release+0x8>)
 80057ea:	f000 bb1d 	b.w	8005e28 <__retarget_lock_release_recursive>
 80057ee:	bf00      	nop
 80057f0:	20001584 	.word	0x20001584

080057f4 <__libc_fini_array>:
 80057f4:	b538      	push	{r3, r4, r5, lr}
 80057f6:	4c0a      	ldr	r4, [pc, #40]	; (8005820 <__libc_fini_array+0x2c>)
 80057f8:	4d0a      	ldr	r5, [pc, #40]	; (8005824 <__libc_fini_array+0x30>)
 80057fa:	1b64      	subs	r4, r4, r5
 80057fc:	10a4      	asrs	r4, r4, #2
 80057fe:	d00a      	beq.n	8005816 <__libc_fini_array+0x22>
 8005800:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005804:	3b01      	subs	r3, #1
 8005806:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800580a:	3c01      	subs	r4, #1
 800580c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005810:	4798      	blx	r3
 8005812:	2c00      	cmp	r4, #0
 8005814:	d1f9      	bne.n	800580a <__libc_fini_array+0x16>
 8005816:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800581a:	f001 befd 	b.w	8007618 <_fini>
 800581e:	bf00      	nop
 8005820:	08007a14 	.word	0x08007a14
 8005824:	08007a10 	.word	0x08007a10

08005828 <_malloc_trim_r>:
 8005828:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800582a:	4f24      	ldr	r7, [pc, #144]	; (80058bc <_malloc_trim_r+0x94>)
 800582c:	460c      	mov	r4, r1
 800582e:	4606      	mov	r6, r0
 8005830:	f000 fe7c 	bl	800652c <__malloc_lock>
 8005834:	68bb      	ldr	r3, [r7, #8]
 8005836:	685d      	ldr	r5, [r3, #4]
 8005838:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800583c:	310f      	adds	r1, #15
 800583e:	f025 0503 	bic.w	r5, r5, #3
 8005842:	4429      	add	r1, r5
 8005844:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005848:	f021 010f 	bic.w	r1, r1, #15
 800584c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005850:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005854:	db07      	blt.n	8005866 <_malloc_trim_r+0x3e>
 8005856:	2100      	movs	r1, #0
 8005858:	4630      	mov	r0, r6
 800585a:	f001 fb5f 	bl	8006f1c <_sbrk_r>
 800585e:	68bb      	ldr	r3, [r7, #8]
 8005860:	442b      	add	r3, r5
 8005862:	4298      	cmp	r0, r3
 8005864:	d004      	beq.n	8005870 <_malloc_trim_r+0x48>
 8005866:	4630      	mov	r0, r6
 8005868:	f000 fe66 	bl	8006538 <__malloc_unlock>
 800586c:	2000      	movs	r0, #0
 800586e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005870:	4261      	negs	r1, r4
 8005872:	4630      	mov	r0, r6
 8005874:	f001 fb52 	bl	8006f1c <_sbrk_r>
 8005878:	3001      	adds	r0, #1
 800587a:	d00d      	beq.n	8005898 <_malloc_trim_r+0x70>
 800587c:	4b10      	ldr	r3, [pc, #64]	; (80058c0 <_malloc_trim_r+0x98>)
 800587e:	68ba      	ldr	r2, [r7, #8]
 8005880:	6819      	ldr	r1, [r3, #0]
 8005882:	1b2d      	subs	r5, r5, r4
 8005884:	f045 0501 	orr.w	r5, r5, #1
 8005888:	4630      	mov	r0, r6
 800588a:	1b09      	subs	r1, r1, r4
 800588c:	6055      	str	r5, [r2, #4]
 800588e:	6019      	str	r1, [r3, #0]
 8005890:	f000 fe52 	bl	8006538 <__malloc_unlock>
 8005894:	2001      	movs	r0, #1
 8005896:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005898:	2100      	movs	r1, #0
 800589a:	4630      	mov	r0, r6
 800589c:	f001 fb3e 	bl	8006f1c <_sbrk_r>
 80058a0:	68ba      	ldr	r2, [r7, #8]
 80058a2:	1a83      	subs	r3, r0, r2
 80058a4:	2b0f      	cmp	r3, #15
 80058a6:	ddde      	ble.n	8005866 <_malloc_trim_r+0x3e>
 80058a8:	4c06      	ldr	r4, [pc, #24]	; (80058c4 <_malloc_trim_r+0x9c>)
 80058aa:	4905      	ldr	r1, [pc, #20]	; (80058c0 <_malloc_trim_r+0x98>)
 80058ac:	6824      	ldr	r4, [r4, #0]
 80058ae:	f043 0301 	orr.w	r3, r3, #1
 80058b2:	1b00      	subs	r0, r0, r4
 80058b4:	6053      	str	r3, [r2, #4]
 80058b6:	6008      	str	r0, [r1, #0]
 80058b8:	e7d5      	b.n	8005866 <_malloc_trim_r+0x3e>
 80058ba:	bf00      	nop
 80058bc:	2000047c 	.word	0x2000047c
 80058c0:	20000abc 	.word	0x20000abc
 80058c4:	20000884 	.word	0x20000884

080058c8 <_free_r>:
 80058c8:	2900      	cmp	r1, #0
 80058ca:	d053      	beq.n	8005974 <_free_r+0xac>
 80058cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80058ce:	460c      	mov	r4, r1
 80058d0:	4606      	mov	r6, r0
 80058d2:	f000 fe2b 	bl	800652c <__malloc_lock>
 80058d6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80058da:	4f71      	ldr	r7, [pc, #452]	; (8005aa0 <_free_r+0x1d8>)
 80058dc:	f02c 0101 	bic.w	r1, ip, #1
 80058e0:	f1a4 0508 	sub.w	r5, r4, #8
 80058e4:	186b      	adds	r3, r5, r1
 80058e6:	68b8      	ldr	r0, [r7, #8]
 80058e8:	685a      	ldr	r2, [r3, #4]
 80058ea:	4298      	cmp	r0, r3
 80058ec:	f022 0203 	bic.w	r2, r2, #3
 80058f0:	d053      	beq.n	800599a <_free_r+0xd2>
 80058f2:	f01c 0f01 	tst.w	ip, #1
 80058f6:	605a      	str	r2, [r3, #4]
 80058f8:	eb03 0002 	add.w	r0, r3, r2
 80058fc:	d13b      	bne.n	8005976 <_free_r+0xae>
 80058fe:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005902:	6840      	ldr	r0, [r0, #4]
 8005904:	eba5 050c 	sub.w	r5, r5, ip
 8005908:	f107 0e08 	add.w	lr, r7, #8
 800590c:	68ac      	ldr	r4, [r5, #8]
 800590e:	4574      	cmp	r4, lr
 8005910:	4461      	add	r1, ip
 8005912:	f000 0001 	and.w	r0, r0, #1
 8005916:	d075      	beq.n	8005a04 <_free_r+0x13c>
 8005918:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800591c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005920:	f8cc 4008 	str.w	r4, [ip, #8]
 8005924:	b360      	cbz	r0, 8005980 <_free_r+0xb8>
 8005926:	f041 0301 	orr.w	r3, r1, #1
 800592a:	606b      	str	r3, [r5, #4]
 800592c:	5069      	str	r1, [r5, r1]
 800592e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005932:	d350      	bcc.n	80059d6 <_free_r+0x10e>
 8005934:	0a4b      	lsrs	r3, r1, #9
 8005936:	2b04      	cmp	r3, #4
 8005938:	d870      	bhi.n	8005a1c <_free_r+0x154>
 800593a:	098b      	lsrs	r3, r1, #6
 800593c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005940:	00e4      	lsls	r4, r4, #3
 8005942:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005946:	1938      	adds	r0, r7, r4
 8005948:	593b      	ldr	r3, [r7, r4]
 800594a:	3808      	subs	r0, #8
 800594c:	4298      	cmp	r0, r3
 800594e:	d078      	beq.n	8005a42 <_free_r+0x17a>
 8005950:	685a      	ldr	r2, [r3, #4]
 8005952:	f022 0203 	bic.w	r2, r2, #3
 8005956:	428a      	cmp	r2, r1
 8005958:	d971      	bls.n	8005a3e <_free_r+0x176>
 800595a:	689b      	ldr	r3, [r3, #8]
 800595c:	4298      	cmp	r0, r3
 800595e:	d1f7      	bne.n	8005950 <_free_r+0x88>
 8005960:	68c3      	ldr	r3, [r0, #12]
 8005962:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005966:	609d      	str	r5, [r3, #8]
 8005968:	60c5      	str	r5, [r0, #12]
 800596a:	4630      	mov	r0, r6
 800596c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005970:	f000 bde2 	b.w	8006538 <__malloc_unlock>
 8005974:	4770      	bx	lr
 8005976:	6840      	ldr	r0, [r0, #4]
 8005978:	f000 0001 	and.w	r0, r0, #1
 800597c:	2800      	cmp	r0, #0
 800597e:	d1d2      	bne.n	8005926 <_free_r+0x5e>
 8005980:	6898      	ldr	r0, [r3, #8]
 8005982:	4c48      	ldr	r4, [pc, #288]	; (8005aa4 <_free_r+0x1dc>)
 8005984:	4411      	add	r1, r2
 8005986:	42a0      	cmp	r0, r4
 8005988:	f041 0201 	orr.w	r2, r1, #1
 800598c:	d062      	beq.n	8005a54 <_free_r+0x18c>
 800598e:	68db      	ldr	r3, [r3, #12]
 8005990:	60c3      	str	r3, [r0, #12]
 8005992:	6098      	str	r0, [r3, #8]
 8005994:	606a      	str	r2, [r5, #4]
 8005996:	5069      	str	r1, [r5, r1]
 8005998:	e7c9      	b.n	800592e <_free_r+0x66>
 800599a:	f01c 0f01 	tst.w	ip, #1
 800599e:	440a      	add	r2, r1
 80059a0:	d107      	bne.n	80059b2 <_free_r+0xea>
 80059a2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80059a6:	1aed      	subs	r5, r5, r3
 80059a8:	441a      	add	r2, r3
 80059aa:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80059ae:	60cb      	str	r3, [r1, #12]
 80059b0:	6099      	str	r1, [r3, #8]
 80059b2:	4b3d      	ldr	r3, [pc, #244]	; (8005aa8 <_free_r+0x1e0>)
 80059b4:	681b      	ldr	r3, [r3, #0]
 80059b6:	f042 0101 	orr.w	r1, r2, #1
 80059ba:	4293      	cmp	r3, r2
 80059bc:	6069      	str	r1, [r5, #4]
 80059be:	60bd      	str	r5, [r7, #8]
 80059c0:	d804      	bhi.n	80059cc <_free_r+0x104>
 80059c2:	4b3a      	ldr	r3, [pc, #232]	; (8005aac <_free_r+0x1e4>)
 80059c4:	4630      	mov	r0, r6
 80059c6:	6819      	ldr	r1, [r3, #0]
 80059c8:	f7ff ff2e 	bl	8005828 <_malloc_trim_r>
 80059cc:	4630      	mov	r0, r6
 80059ce:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80059d2:	f000 bdb1 	b.w	8006538 <__malloc_unlock>
 80059d6:	08c9      	lsrs	r1, r1, #3
 80059d8:	6878      	ldr	r0, [r7, #4]
 80059da:	1c4a      	adds	r2, r1, #1
 80059dc:	2301      	movs	r3, #1
 80059de:	1089      	asrs	r1, r1, #2
 80059e0:	408b      	lsls	r3, r1
 80059e2:	4303      	orrs	r3, r0
 80059e4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80059e8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80059ec:	607b      	str	r3, [r7, #4]
 80059ee:	3908      	subs	r1, #8
 80059f0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80059f4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80059f8:	60c5      	str	r5, [r0, #12]
 80059fa:	4630      	mov	r0, r6
 80059fc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005a00:	f000 bd9a 	b.w	8006538 <__malloc_unlock>
 8005a04:	2800      	cmp	r0, #0
 8005a06:	d145      	bne.n	8005a94 <_free_r+0x1cc>
 8005a08:	440a      	add	r2, r1
 8005a0a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005a0e:	f042 0001 	orr.w	r0, r2, #1
 8005a12:	60cb      	str	r3, [r1, #12]
 8005a14:	6099      	str	r1, [r3, #8]
 8005a16:	6068      	str	r0, [r5, #4]
 8005a18:	50aa      	str	r2, [r5, r2]
 8005a1a:	e7d7      	b.n	80059cc <_free_r+0x104>
 8005a1c:	2b14      	cmp	r3, #20
 8005a1e:	d908      	bls.n	8005a32 <_free_r+0x16a>
 8005a20:	2b54      	cmp	r3, #84	; 0x54
 8005a22:	d81e      	bhi.n	8005a62 <_free_r+0x19a>
 8005a24:	0b0b      	lsrs	r3, r1, #12
 8005a26:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005a2a:	00e4      	lsls	r4, r4, #3
 8005a2c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005a30:	e789      	b.n	8005946 <_free_r+0x7e>
 8005a32:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005a36:	00e4      	lsls	r4, r4, #3
 8005a38:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005a3c:	e783      	b.n	8005946 <_free_r+0x7e>
 8005a3e:	4618      	mov	r0, r3
 8005a40:	e78e      	b.n	8005960 <_free_r+0x98>
 8005a42:	1093      	asrs	r3, r2, #2
 8005a44:	6879      	ldr	r1, [r7, #4]
 8005a46:	2201      	movs	r2, #1
 8005a48:	fa02 f303 	lsl.w	r3, r2, r3
 8005a4c:	430b      	orrs	r3, r1
 8005a4e:	607b      	str	r3, [r7, #4]
 8005a50:	4603      	mov	r3, r0
 8005a52:	e786      	b.n	8005962 <_free_r+0x9a>
 8005a54:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005a58:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005a5c:	606a      	str	r2, [r5, #4]
 8005a5e:	5069      	str	r1, [r5, r1]
 8005a60:	e7b4      	b.n	80059cc <_free_r+0x104>
 8005a62:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005a66:	d806      	bhi.n	8005a76 <_free_r+0x1ae>
 8005a68:	0bcb      	lsrs	r3, r1, #15
 8005a6a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005a6e:	00e4      	lsls	r4, r4, #3
 8005a70:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005a74:	e767      	b.n	8005946 <_free_r+0x7e>
 8005a76:	f240 5254 	movw	r2, #1364	; 0x554
 8005a7a:	4293      	cmp	r3, r2
 8005a7c:	d806      	bhi.n	8005a8c <_free_r+0x1c4>
 8005a7e:	0c8b      	lsrs	r3, r1, #18
 8005a80:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005a84:	00e4      	lsls	r4, r4, #3
 8005a86:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005a8a:	e75c      	b.n	8005946 <_free_r+0x7e>
 8005a8c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005a90:	227e      	movs	r2, #126	; 0x7e
 8005a92:	e758      	b.n	8005946 <_free_r+0x7e>
 8005a94:	f041 0201 	orr.w	r2, r1, #1
 8005a98:	606a      	str	r2, [r5, #4]
 8005a9a:	6019      	str	r1, [r3, #0]
 8005a9c:	e796      	b.n	80059cc <_free_r+0x104>
 8005a9e:	bf00      	nop
 8005aa0:	2000047c 	.word	0x2000047c
 8005aa4:	20000484 	.word	0x20000484
 8005aa8:	20000888 	.word	0x20000888
 8005aac:	20000aec 	.word	0x20000aec

08005ab0 <__sfvwrite_r>:
 8005ab0:	6893      	ldr	r3, [r2, #8]
 8005ab2:	2b00      	cmp	r3, #0
 8005ab4:	f000 80e4 	beq.w	8005c80 <__sfvwrite_r+0x1d0>
 8005ab8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005abc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005ac0:	b29b      	uxth	r3, r3
 8005ac2:	460c      	mov	r4, r1
 8005ac4:	0719      	lsls	r1, r3, #28
 8005ac6:	b083      	sub	sp, #12
 8005ac8:	4682      	mov	sl, r0
 8005aca:	4690      	mov	r8, r2
 8005acc:	d535      	bpl.n	8005b3a <__sfvwrite_r+0x8a>
 8005ace:	6922      	ldr	r2, [r4, #16]
 8005ad0:	b39a      	cbz	r2, 8005b3a <__sfvwrite_r+0x8a>
 8005ad2:	f013 0202 	ands.w	r2, r3, #2
 8005ad6:	f8d8 6000 	ldr.w	r6, [r8]
 8005ada:	d03d      	beq.n	8005b58 <__sfvwrite_r+0xa8>
 8005adc:	2700      	movs	r7, #0
 8005ade:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005ae2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005ae6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005da8 <__sfvwrite_r+0x2f8>
 8005aea:	463d      	mov	r5, r7
 8005aec:	454d      	cmp	r5, r9
 8005aee:	462b      	mov	r3, r5
 8005af0:	463a      	mov	r2, r7
 8005af2:	bf28      	it	cs
 8005af4:	464b      	movcs	r3, r9
 8005af6:	4661      	mov	r1, ip
 8005af8:	4650      	mov	r0, sl
 8005afa:	b1d5      	cbz	r5, 8005b32 <__sfvwrite_r+0x82>
 8005afc:	47d8      	blx	fp
 8005afe:	2800      	cmp	r0, #0
 8005b00:	f340 80c6 	ble.w	8005c90 <__sfvwrite_r+0x1e0>
 8005b04:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005b08:	1a1b      	subs	r3, r3, r0
 8005b0a:	4407      	add	r7, r0
 8005b0c:	1a2d      	subs	r5, r5, r0
 8005b0e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005b12:	2b00      	cmp	r3, #0
 8005b14:	f000 80b0 	beq.w	8005c78 <__sfvwrite_r+0x1c8>
 8005b18:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005b1c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005b20:	454d      	cmp	r5, r9
 8005b22:	462b      	mov	r3, r5
 8005b24:	463a      	mov	r2, r7
 8005b26:	bf28      	it	cs
 8005b28:	464b      	movcs	r3, r9
 8005b2a:	4661      	mov	r1, ip
 8005b2c:	4650      	mov	r0, sl
 8005b2e:	2d00      	cmp	r5, #0
 8005b30:	d1e4      	bne.n	8005afc <__sfvwrite_r+0x4c>
 8005b32:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005b36:	3608      	adds	r6, #8
 8005b38:	e7d8      	b.n	8005aec <__sfvwrite_r+0x3c>
 8005b3a:	4621      	mov	r1, r4
 8005b3c:	4650      	mov	r0, sl
 8005b3e:	f7fe fd03 	bl	8004548 <__swsetup_r>
 8005b42:	2800      	cmp	r0, #0
 8005b44:	f040 812a 	bne.w	8005d9c <__sfvwrite_r+0x2ec>
 8005b48:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b4c:	f8d8 6000 	ldr.w	r6, [r8]
 8005b50:	b29b      	uxth	r3, r3
 8005b52:	f013 0202 	ands.w	r2, r3, #2
 8005b56:	d1c1      	bne.n	8005adc <__sfvwrite_r+0x2c>
 8005b58:	f013 0901 	ands.w	r9, r3, #1
 8005b5c:	d15d      	bne.n	8005c1a <__sfvwrite_r+0x16a>
 8005b5e:	68a7      	ldr	r7, [r4, #8]
 8005b60:	6820      	ldr	r0, [r4, #0]
 8005b62:	464d      	mov	r5, r9
 8005b64:	2d00      	cmp	r5, #0
 8005b66:	d054      	beq.n	8005c12 <__sfvwrite_r+0x162>
 8005b68:	059a      	lsls	r2, r3, #22
 8005b6a:	f140 809b 	bpl.w	8005ca4 <__sfvwrite_r+0x1f4>
 8005b6e:	42af      	cmp	r7, r5
 8005b70:	46bb      	mov	fp, r7
 8005b72:	f200 80d8 	bhi.w	8005d26 <__sfvwrite_r+0x276>
 8005b76:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005b7a:	d02f      	beq.n	8005bdc <__sfvwrite_r+0x12c>
 8005b7c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005b80:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005b84:	eba0 0b01 	sub.w	fp, r0, r1
 8005b88:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005b8c:	1c68      	adds	r0, r5, #1
 8005b8e:	107f      	asrs	r7, r7, #1
 8005b90:	4458      	add	r0, fp
 8005b92:	42b8      	cmp	r0, r7
 8005b94:	463a      	mov	r2, r7
 8005b96:	bf84      	itt	hi
 8005b98:	4607      	movhi	r7, r0
 8005b9a:	463a      	movhi	r2, r7
 8005b9c:	055b      	lsls	r3, r3, #21
 8005b9e:	f140 80d3 	bpl.w	8005d48 <__sfvwrite_r+0x298>
 8005ba2:	4611      	mov	r1, r2
 8005ba4:	4650      	mov	r0, sl
 8005ba6:	f000 f9b9 	bl	8005f1c <_malloc_r>
 8005baa:	2800      	cmp	r0, #0
 8005bac:	f000 80f0 	beq.w	8005d90 <__sfvwrite_r+0x2e0>
 8005bb0:	465a      	mov	r2, fp
 8005bb2:	6921      	ldr	r1, [r4, #16]
 8005bb4:	9001      	str	r0, [sp, #4]
 8005bb6:	f7fa fcf1 	bl	800059c <memcpy>
 8005bba:	89a2      	ldrh	r2, [r4, #12]
 8005bbc:	9b01      	ldr	r3, [sp, #4]
 8005bbe:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005bc2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005bc6:	81a2      	strh	r2, [r4, #12]
 8005bc8:	eba7 020b 	sub.w	r2, r7, fp
 8005bcc:	eb03 000b 	add.w	r0, r3, fp
 8005bd0:	6167      	str	r7, [r4, #20]
 8005bd2:	6123      	str	r3, [r4, #16]
 8005bd4:	6020      	str	r0, [r4, #0]
 8005bd6:	60a2      	str	r2, [r4, #8]
 8005bd8:	462f      	mov	r7, r5
 8005bda:	46ab      	mov	fp, r5
 8005bdc:	465a      	mov	r2, fp
 8005bde:	4649      	mov	r1, r9
 8005be0:	f000 fc40 	bl	8006464 <memmove>
 8005be4:	68a2      	ldr	r2, [r4, #8]
 8005be6:	6823      	ldr	r3, [r4, #0]
 8005be8:	1bd2      	subs	r2, r2, r7
 8005bea:	445b      	add	r3, fp
 8005bec:	462f      	mov	r7, r5
 8005bee:	60a2      	str	r2, [r4, #8]
 8005bf0:	6023      	str	r3, [r4, #0]
 8005bf2:	2500      	movs	r5, #0
 8005bf4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005bf8:	1bdb      	subs	r3, r3, r7
 8005bfa:	44b9      	add	r9, r7
 8005bfc:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c00:	2b00      	cmp	r3, #0
 8005c02:	d039      	beq.n	8005c78 <__sfvwrite_r+0x1c8>
 8005c04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c08:	68a7      	ldr	r7, [r4, #8]
 8005c0a:	6820      	ldr	r0, [r4, #0]
 8005c0c:	b29b      	uxth	r3, r3
 8005c0e:	2d00      	cmp	r5, #0
 8005c10:	d1aa      	bne.n	8005b68 <__sfvwrite_r+0xb8>
 8005c12:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005c16:	3608      	adds	r6, #8
 8005c18:	e7a4      	b.n	8005b64 <__sfvwrite_r+0xb4>
 8005c1a:	4633      	mov	r3, r6
 8005c1c:	4691      	mov	r9, r2
 8005c1e:	4610      	mov	r0, r2
 8005c20:	4617      	mov	r7, r2
 8005c22:	464e      	mov	r6, r9
 8005c24:	469b      	mov	fp, r3
 8005c26:	2f00      	cmp	r7, #0
 8005c28:	d06b      	beq.n	8005d02 <__sfvwrite_r+0x252>
 8005c2a:	2800      	cmp	r0, #0
 8005c2c:	d071      	beq.n	8005d12 <__sfvwrite_r+0x262>
 8005c2e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005c32:	6820      	ldr	r0, [r4, #0]
 8005c34:	45b9      	cmp	r9, r7
 8005c36:	464b      	mov	r3, r9
 8005c38:	bf28      	it	cs
 8005c3a:	463b      	movcs	r3, r7
 8005c3c:	4288      	cmp	r0, r1
 8005c3e:	d903      	bls.n	8005c48 <__sfvwrite_r+0x198>
 8005c40:	68a5      	ldr	r5, [r4, #8]
 8005c42:	4415      	add	r5, r2
 8005c44:	42ab      	cmp	r3, r5
 8005c46:	dc71      	bgt.n	8005d2c <__sfvwrite_r+0x27c>
 8005c48:	429a      	cmp	r2, r3
 8005c4a:	f300 8093 	bgt.w	8005d74 <__sfvwrite_r+0x2c4>
 8005c4e:	4613      	mov	r3, r2
 8005c50:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005c52:	69e1      	ldr	r1, [r4, #28]
 8005c54:	4632      	mov	r2, r6
 8005c56:	4650      	mov	r0, sl
 8005c58:	47a8      	blx	r5
 8005c5a:	1e05      	subs	r5, r0, #0
 8005c5c:	dd18      	ble.n	8005c90 <__sfvwrite_r+0x1e0>
 8005c5e:	ebb9 0905 	subs.w	r9, r9, r5
 8005c62:	d00f      	beq.n	8005c84 <__sfvwrite_r+0x1d4>
 8005c64:	2001      	movs	r0, #1
 8005c66:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c6a:	1b5b      	subs	r3, r3, r5
 8005c6c:	442e      	add	r6, r5
 8005c6e:	1b7f      	subs	r7, r7, r5
 8005c70:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c74:	2b00      	cmp	r3, #0
 8005c76:	d1d6      	bne.n	8005c26 <__sfvwrite_r+0x176>
 8005c78:	2000      	movs	r0, #0
 8005c7a:	b003      	add	sp, #12
 8005c7c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c80:	2000      	movs	r0, #0
 8005c82:	4770      	bx	lr
 8005c84:	4621      	mov	r1, r4
 8005c86:	4650      	mov	r0, sl
 8005c88:	f7ff fd20 	bl	80056cc <_fflush_r>
 8005c8c:	2800      	cmp	r0, #0
 8005c8e:	d0ea      	beq.n	8005c66 <__sfvwrite_r+0x1b6>
 8005c90:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c94:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005c98:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005c9c:	81a3      	strh	r3, [r4, #12]
 8005c9e:	b003      	add	sp, #12
 8005ca0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ca4:	6923      	ldr	r3, [r4, #16]
 8005ca6:	4283      	cmp	r3, r0
 8005ca8:	d315      	bcc.n	8005cd6 <__sfvwrite_r+0x226>
 8005caa:	6961      	ldr	r1, [r4, #20]
 8005cac:	42a9      	cmp	r1, r5
 8005cae:	d812      	bhi.n	8005cd6 <__sfvwrite_r+0x226>
 8005cb0:	4b3c      	ldr	r3, [pc, #240]	; (8005da4 <__sfvwrite_r+0x2f4>)
 8005cb2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005cb4:	429d      	cmp	r5, r3
 8005cb6:	bf94      	ite	ls
 8005cb8:	462b      	movls	r3, r5
 8005cba:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005cbe:	464a      	mov	r2, r9
 8005cc0:	fb93 f3f1 	sdiv	r3, r3, r1
 8005cc4:	4650      	mov	r0, sl
 8005cc6:	fb01 f303 	mul.w	r3, r1, r3
 8005cca:	69e1      	ldr	r1, [r4, #28]
 8005ccc:	47b8      	blx	r7
 8005cce:	1e07      	subs	r7, r0, #0
 8005cd0:	ddde      	ble.n	8005c90 <__sfvwrite_r+0x1e0>
 8005cd2:	1bed      	subs	r5, r5, r7
 8005cd4:	e78e      	b.n	8005bf4 <__sfvwrite_r+0x144>
 8005cd6:	42af      	cmp	r7, r5
 8005cd8:	bf28      	it	cs
 8005cda:	462f      	movcs	r7, r5
 8005cdc:	463a      	mov	r2, r7
 8005cde:	4649      	mov	r1, r9
 8005ce0:	f000 fbc0 	bl	8006464 <memmove>
 8005ce4:	68a3      	ldr	r3, [r4, #8]
 8005ce6:	6822      	ldr	r2, [r4, #0]
 8005ce8:	1bdb      	subs	r3, r3, r7
 8005cea:	443a      	add	r2, r7
 8005cec:	60a3      	str	r3, [r4, #8]
 8005cee:	6022      	str	r2, [r4, #0]
 8005cf0:	2b00      	cmp	r3, #0
 8005cf2:	d1ee      	bne.n	8005cd2 <__sfvwrite_r+0x222>
 8005cf4:	4621      	mov	r1, r4
 8005cf6:	4650      	mov	r0, sl
 8005cf8:	f7ff fce8 	bl	80056cc <_fflush_r>
 8005cfc:	2800      	cmp	r0, #0
 8005cfe:	d0e8      	beq.n	8005cd2 <__sfvwrite_r+0x222>
 8005d00:	e7c6      	b.n	8005c90 <__sfvwrite_r+0x1e0>
 8005d02:	f10b 0308 	add.w	r3, fp, #8
 8005d06:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005d0a:	469b      	mov	fp, r3
 8005d0c:	3308      	adds	r3, #8
 8005d0e:	2f00      	cmp	r7, #0
 8005d10:	d0f9      	beq.n	8005d06 <__sfvwrite_r+0x256>
 8005d12:	463a      	mov	r2, r7
 8005d14:	210a      	movs	r1, #10
 8005d16:	4630      	mov	r0, r6
 8005d18:	f7fa fd62 	bl	80007e0 <memchr>
 8005d1c:	b338      	cbz	r0, 8005d6e <__sfvwrite_r+0x2be>
 8005d1e:	3001      	adds	r0, #1
 8005d20:	eba0 0906 	sub.w	r9, r0, r6
 8005d24:	e783      	b.n	8005c2e <__sfvwrite_r+0x17e>
 8005d26:	462f      	mov	r7, r5
 8005d28:	46ab      	mov	fp, r5
 8005d2a:	e757      	b.n	8005bdc <__sfvwrite_r+0x12c>
 8005d2c:	4631      	mov	r1, r6
 8005d2e:	462a      	mov	r2, r5
 8005d30:	f000 fb98 	bl	8006464 <memmove>
 8005d34:	6823      	ldr	r3, [r4, #0]
 8005d36:	442b      	add	r3, r5
 8005d38:	6023      	str	r3, [r4, #0]
 8005d3a:	4621      	mov	r1, r4
 8005d3c:	4650      	mov	r0, sl
 8005d3e:	f7ff fcc5 	bl	80056cc <_fflush_r>
 8005d42:	2800      	cmp	r0, #0
 8005d44:	d08b      	beq.n	8005c5e <__sfvwrite_r+0x1ae>
 8005d46:	e7a3      	b.n	8005c90 <__sfvwrite_r+0x1e0>
 8005d48:	4650      	mov	r0, sl
 8005d4a:	f000 ff05 	bl	8006b58 <_realloc_r>
 8005d4e:	4603      	mov	r3, r0
 8005d50:	2800      	cmp	r0, #0
 8005d52:	f47f af39 	bne.w	8005bc8 <__sfvwrite_r+0x118>
 8005d56:	6921      	ldr	r1, [r4, #16]
 8005d58:	4650      	mov	r0, sl
 8005d5a:	f7ff fdb5 	bl	80058c8 <_free_r>
 8005d5e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d62:	220c      	movs	r2, #12
 8005d64:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005d68:	f8ca 2000 	str.w	r2, [sl]
 8005d6c:	e792      	b.n	8005c94 <__sfvwrite_r+0x1e4>
 8005d6e:	f107 0901 	add.w	r9, r7, #1
 8005d72:	e75c      	b.n	8005c2e <__sfvwrite_r+0x17e>
 8005d74:	461a      	mov	r2, r3
 8005d76:	4631      	mov	r1, r6
 8005d78:	9301      	str	r3, [sp, #4]
 8005d7a:	f000 fb73 	bl	8006464 <memmove>
 8005d7e:	9b01      	ldr	r3, [sp, #4]
 8005d80:	68a1      	ldr	r1, [r4, #8]
 8005d82:	6822      	ldr	r2, [r4, #0]
 8005d84:	1ac9      	subs	r1, r1, r3
 8005d86:	441a      	add	r2, r3
 8005d88:	60a1      	str	r1, [r4, #8]
 8005d8a:	6022      	str	r2, [r4, #0]
 8005d8c:	461d      	mov	r5, r3
 8005d8e:	e766      	b.n	8005c5e <__sfvwrite_r+0x1ae>
 8005d90:	230c      	movs	r3, #12
 8005d92:	f8ca 3000 	str.w	r3, [sl]
 8005d96:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d9a:	e77b      	b.n	8005c94 <__sfvwrite_r+0x1e4>
 8005d9c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005da0:	e76b      	b.n	8005c7a <__sfvwrite_r+0x1ca>
 8005da2:	bf00      	nop
 8005da4:	7ffffffe 	.word	0x7ffffffe
 8005da8:	7ffffc00 	.word	0x7ffffc00

08005dac <_fwalk_reent>:
 8005dac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005db0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005db4:	d01f      	beq.n	8005df6 <_fwalk_reent+0x4a>
 8005db6:	4688      	mov	r8, r1
 8005db8:	4606      	mov	r6, r0
 8005dba:	f04f 0900 	mov.w	r9, #0
 8005dbe:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005dc2:	3d01      	subs	r5, #1
 8005dc4:	d411      	bmi.n	8005dea <_fwalk_reent+0x3e>
 8005dc6:	89a3      	ldrh	r3, [r4, #12]
 8005dc8:	2b01      	cmp	r3, #1
 8005dca:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005dce:	4621      	mov	r1, r4
 8005dd0:	4630      	mov	r0, r6
 8005dd2:	d906      	bls.n	8005de2 <_fwalk_reent+0x36>
 8005dd4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005dd8:	3301      	adds	r3, #1
 8005dda:	d002      	beq.n	8005de2 <_fwalk_reent+0x36>
 8005ddc:	47c0      	blx	r8
 8005dde:	ea49 0900 	orr.w	r9, r9, r0
 8005de2:	1c6b      	adds	r3, r5, #1
 8005de4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005de8:	d1ed      	bne.n	8005dc6 <_fwalk_reent+0x1a>
 8005dea:	683f      	ldr	r7, [r7, #0]
 8005dec:	2f00      	cmp	r7, #0
 8005dee:	d1e6      	bne.n	8005dbe <_fwalk_reent+0x12>
 8005df0:	4648      	mov	r0, r9
 8005df2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005df6:	46b9      	mov	r9, r7
 8005df8:	4648      	mov	r0, r9
 8005dfa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005dfe:	bf00      	nop

08005e00 <_localeconv_r>:
 8005e00:	4a04      	ldr	r2, [pc, #16]	; (8005e14 <_localeconv_r+0x14>)
 8005e02:	4b05      	ldr	r3, [pc, #20]	; (8005e18 <_localeconv_r+0x18>)
 8005e04:	6812      	ldr	r2, [r2, #0]
 8005e06:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005e08:	2800      	cmp	r0, #0
 8005e0a:	bf08      	it	eq
 8005e0c:	4618      	moveq	r0, r3
 8005e0e:	30f0      	adds	r0, #240	; 0xf0
 8005e10:	4770      	bx	lr
 8005e12:	bf00      	nop
 8005e14:	2000004c 	.word	0x2000004c
 8005e18:	2000088c 	.word	0x2000088c

08005e1c <__retarget_lock_init_recursive>:
 8005e1c:	4770      	bx	lr
 8005e1e:	bf00      	nop

08005e20 <__retarget_lock_close_recursive>:
 8005e20:	4770      	bx	lr
 8005e22:	bf00      	nop

08005e24 <__retarget_lock_acquire_recursive>:
 8005e24:	4770      	bx	lr
 8005e26:	bf00      	nop

08005e28 <__retarget_lock_release_recursive>:
 8005e28:	4770      	bx	lr
 8005e2a:	bf00      	nop

08005e2c <__swhatbuf_r>:
 8005e2c:	b570      	push	{r4, r5, r6, lr}
 8005e2e:	460c      	mov	r4, r1
 8005e30:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005e34:	2900      	cmp	r1, #0
 8005e36:	b096      	sub	sp, #88	; 0x58
 8005e38:	4615      	mov	r5, r2
 8005e3a:	461e      	mov	r6, r3
 8005e3c:	da0f      	bge.n	8005e5e <__swhatbuf_r+0x32>
 8005e3e:	89a2      	ldrh	r2, [r4, #12]
 8005e40:	2300      	movs	r3, #0
 8005e42:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005e46:	6033      	str	r3, [r6, #0]
 8005e48:	d104      	bne.n	8005e54 <__swhatbuf_r+0x28>
 8005e4a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005e4e:	602b      	str	r3, [r5, #0]
 8005e50:	b016      	add	sp, #88	; 0x58
 8005e52:	bd70      	pop	{r4, r5, r6, pc}
 8005e54:	2240      	movs	r2, #64	; 0x40
 8005e56:	4618      	mov	r0, r3
 8005e58:	602a      	str	r2, [r5, #0]
 8005e5a:	b016      	add	sp, #88	; 0x58
 8005e5c:	bd70      	pop	{r4, r5, r6, pc}
 8005e5e:	466a      	mov	r2, sp
 8005e60:	f001 fad0 	bl	8007404 <_fstat_r>
 8005e64:	2800      	cmp	r0, #0
 8005e66:	dbea      	blt.n	8005e3e <__swhatbuf_r+0x12>
 8005e68:	9b01      	ldr	r3, [sp, #4]
 8005e6a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005e6e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005e72:	fab3 f383 	clz	r3, r3
 8005e76:	095b      	lsrs	r3, r3, #5
 8005e78:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005e7c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005e80:	6033      	str	r3, [r6, #0]
 8005e82:	602a      	str	r2, [r5, #0]
 8005e84:	b016      	add	sp, #88	; 0x58
 8005e86:	bd70      	pop	{r4, r5, r6, pc}

08005e88 <__smakebuf_r>:
 8005e88:	898a      	ldrh	r2, [r1, #12]
 8005e8a:	0792      	lsls	r2, r2, #30
 8005e8c:	460b      	mov	r3, r1
 8005e8e:	d506      	bpl.n	8005e9e <__smakebuf_r+0x16>
 8005e90:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005e94:	2101      	movs	r1, #1
 8005e96:	601a      	str	r2, [r3, #0]
 8005e98:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005e9c:	4770      	bx	lr
 8005e9e:	b570      	push	{r4, r5, r6, lr}
 8005ea0:	b082      	sub	sp, #8
 8005ea2:	ab01      	add	r3, sp, #4
 8005ea4:	466a      	mov	r2, sp
 8005ea6:	460c      	mov	r4, r1
 8005ea8:	4605      	mov	r5, r0
 8005eaa:	f7ff ffbf 	bl	8005e2c <__swhatbuf_r>
 8005eae:	9900      	ldr	r1, [sp, #0]
 8005eb0:	4606      	mov	r6, r0
 8005eb2:	4628      	mov	r0, r5
 8005eb4:	f000 f832 	bl	8005f1c <_malloc_r>
 8005eb8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ebc:	b1d8      	cbz	r0, 8005ef6 <__smakebuf_r+0x6e>
 8005ebe:	4916      	ldr	r1, [pc, #88]	; (8005f18 <__smakebuf_r+0x90>)
 8005ec0:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005ec2:	9a01      	ldr	r2, [sp, #4]
 8005ec4:	9900      	ldr	r1, [sp, #0]
 8005ec6:	6020      	str	r0, [r4, #0]
 8005ec8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005ecc:	81a3      	strh	r3, [r4, #12]
 8005ece:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005ed2:	b91a      	cbnz	r2, 8005edc <__smakebuf_r+0x54>
 8005ed4:	4333      	orrs	r3, r6
 8005ed6:	81a3      	strh	r3, [r4, #12]
 8005ed8:	b002      	add	sp, #8
 8005eda:	bd70      	pop	{r4, r5, r6, pc}
 8005edc:	4628      	mov	r0, r5
 8005ede:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005ee2:	f001 faa3 	bl	800742c <_isatty_r>
 8005ee6:	b1a0      	cbz	r0, 8005f12 <__smakebuf_r+0x8a>
 8005ee8:	89a3      	ldrh	r3, [r4, #12]
 8005eea:	f023 0303 	bic.w	r3, r3, #3
 8005eee:	f043 0301 	orr.w	r3, r3, #1
 8005ef2:	b21b      	sxth	r3, r3
 8005ef4:	e7ee      	b.n	8005ed4 <__smakebuf_r+0x4c>
 8005ef6:	059a      	lsls	r2, r3, #22
 8005ef8:	d4ee      	bmi.n	8005ed8 <__smakebuf_r+0x50>
 8005efa:	f023 0303 	bic.w	r3, r3, #3
 8005efe:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005f02:	f043 0302 	orr.w	r3, r3, #2
 8005f06:	2101      	movs	r1, #1
 8005f08:	81a3      	strh	r3, [r4, #12]
 8005f0a:	6022      	str	r2, [r4, #0]
 8005f0c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005f10:	e7e2      	b.n	8005ed8 <__smakebuf_r+0x50>
 8005f12:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005f16:	e7dd      	b.n	8005ed4 <__smakebuf_r+0x4c>
 8005f18:	08005779 	.word	0x08005779

08005f1c <_malloc_r>:
 8005f1c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f20:	f101 050b 	add.w	r5, r1, #11
 8005f24:	2d16      	cmp	r5, #22
 8005f26:	b083      	sub	sp, #12
 8005f28:	4606      	mov	r6, r0
 8005f2a:	d823      	bhi.n	8005f74 <_malloc_r+0x58>
 8005f2c:	2910      	cmp	r1, #16
 8005f2e:	f200 80b9 	bhi.w	80060a4 <_malloc_r+0x188>
 8005f32:	f000 fafb 	bl	800652c <__malloc_lock>
 8005f36:	2510      	movs	r5, #16
 8005f38:	2318      	movs	r3, #24
 8005f3a:	2002      	movs	r0, #2
 8005f3c:	4fc5      	ldr	r7, [pc, #788]	; (8006254 <_malloc_r+0x338>)
 8005f3e:	443b      	add	r3, r7
 8005f40:	f1a3 0208 	sub.w	r2, r3, #8
 8005f44:	685c      	ldr	r4, [r3, #4]
 8005f46:	4294      	cmp	r4, r2
 8005f48:	f000 8166 	beq.w	8006218 <_malloc_r+0x2fc>
 8005f4c:	6863      	ldr	r3, [r4, #4]
 8005f4e:	f023 0303 	bic.w	r3, r3, #3
 8005f52:	4423      	add	r3, r4
 8005f54:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005f58:	685a      	ldr	r2, [r3, #4]
 8005f5a:	60e9      	str	r1, [r5, #12]
 8005f5c:	f042 0201 	orr.w	r2, r2, #1
 8005f60:	608d      	str	r5, [r1, #8]
 8005f62:	4630      	mov	r0, r6
 8005f64:	605a      	str	r2, [r3, #4]
 8005f66:	f000 fae7 	bl	8006538 <__malloc_unlock>
 8005f6a:	3408      	adds	r4, #8
 8005f6c:	4620      	mov	r0, r4
 8005f6e:	b003      	add	sp, #12
 8005f70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f74:	f035 0507 	bics.w	r5, r5, #7
 8005f78:	f100 8094 	bmi.w	80060a4 <_malloc_r+0x188>
 8005f7c:	42a9      	cmp	r1, r5
 8005f7e:	f200 8091 	bhi.w	80060a4 <_malloc_r+0x188>
 8005f82:	f000 fad3 	bl	800652c <__malloc_lock>
 8005f86:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005f8a:	f0c0 8183 	bcc.w	8006294 <_malloc_r+0x378>
 8005f8e:	0a6b      	lsrs	r3, r5, #9
 8005f90:	f000 808f 	beq.w	80060b2 <_malloc_r+0x196>
 8005f94:	2b04      	cmp	r3, #4
 8005f96:	f200 8146 	bhi.w	8006226 <_malloc_r+0x30a>
 8005f9a:	09ab      	lsrs	r3, r5, #6
 8005f9c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005fa0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005fa4:	00c3      	lsls	r3, r0, #3
 8005fa6:	4fab      	ldr	r7, [pc, #684]	; (8006254 <_malloc_r+0x338>)
 8005fa8:	443b      	add	r3, r7
 8005faa:	f1a3 0108 	sub.w	r1, r3, #8
 8005fae:	685c      	ldr	r4, [r3, #4]
 8005fb0:	42a1      	cmp	r1, r4
 8005fb2:	d106      	bne.n	8005fc2 <_malloc_r+0xa6>
 8005fb4:	e00c      	b.n	8005fd0 <_malloc_r+0xb4>
 8005fb6:	2a00      	cmp	r2, #0
 8005fb8:	f280 811d 	bge.w	80061f6 <_malloc_r+0x2da>
 8005fbc:	68e4      	ldr	r4, [r4, #12]
 8005fbe:	42a1      	cmp	r1, r4
 8005fc0:	d006      	beq.n	8005fd0 <_malloc_r+0xb4>
 8005fc2:	6863      	ldr	r3, [r4, #4]
 8005fc4:	f023 0303 	bic.w	r3, r3, #3
 8005fc8:	1b5a      	subs	r2, r3, r5
 8005fca:	2a0f      	cmp	r2, #15
 8005fcc:	ddf3      	ble.n	8005fb6 <_malloc_r+0x9a>
 8005fce:	4660      	mov	r0, ip
 8005fd0:	693c      	ldr	r4, [r7, #16]
 8005fd2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006268 <_malloc_r+0x34c>
 8005fd6:	4564      	cmp	r4, ip
 8005fd8:	d071      	beq.n	80060be <_malloc_r+0x1a2>
 8005fda:	6863      	ldr	r3, [r4, #4]
 8005fdc:	f023 0303 	bic.w	r3, r3, #3
 8005fe0:	1b5a      	subs	r2, r3, r5
 8005fe2:	2a0f      	cmp	r2, #15
 8005fe4:	f300 8144 	bgt.w	8006270 <_malloc_r+0x354>
 8005fe8:	2a00      	cmp	r2, #0
 8005fea:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005fee:	f280 8126 	bge.w	800623e <_malloc_r+0x322>
 8005ff2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005ff6:	f080 8169 	bcs.w	80062cc <_malloc_r+0x3b0>
 8005ffa:	08db      	lsrs	r3, r3, #3
 8005ffc:	1c59      	adds	r1, r3, #1
 8005ffe:	687a      	ldr	r2, [r7, #4]
 8006000:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8006004:	f8c4 8008 	str.w	r8, [r4, #8]
 8006008:	f04f 0e01 	mov.w	lr, #1
 800600c:	109b      	asrs	r3, r3, #2
 800600e:	fa0e f303 	lsl.w	r3, lr, r3
 8006012:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8006016:	4313      	orrs	r3, r2
 8006018:	f1ae 0208 	sub.w	r2, lr, #8
 800601c:	60e2      	str	r2, [r4, #12]
 800601e:	607b      	str	r3, [r7, #4]
 8006020:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8006024:	f8c8 400c 	str.w	r4, [r8, #12]
 8006028:	1082      	asrs	r2, r0, #2
 800602a:	2401      	movs	r4, #1
 800602c:	4094      	lsls	r4, r2
 800602e:	429c      	cmp	r4, r3
 8006030:	d84b      	bhi.n	80060ca <_malloc_r+0x1ae>
 8006032:	421c      	tst	r4, r3
 8006034:	d106      	bne.n	8006044 <_malloc_r+0x128>
 8006036:	f020 0003 	bic.w	r0, r0, #3
 800603a:	0064      	lsls	r4, r4, #1
 800603c:	421c      	tst	r4, r3
 800603e:	f100 0004 	add.w	r0, r0, #4
 8006042:	d0fa      	beq.n	800603a <_malloc_r+0x11e>
 8006044:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006048:	46ce      	mov	lr, r9
 800604a:	4680      	mov	r8, r0
 800604c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006050:	459e      	cmp	lr, r3
 8006052:	d107      	bne.n	8006064 <_malloc_r+0x148>
 8006054:	e122      	b.n	800629c <_malloc_r+0x380>
 8006056:	2a00      	cmp	r2, #0
 8006058:	f280 8129 	bge.w	80062ae <_malloc_r+0x392>
 800605c:	68db      	ldr	r3, [r3, #12]
 800605e:	459e      	cmp	lr, r3
 8006060:	f000 811c 	beq.w	800629c <_malloc_r+0x380>
 8006064:	6859      	ldr	r1, [r3, #4]
 8006066:	f021 0103 	bic.w	r1, r1, #3
 800606a:	1b4a      	subs	r2, r1, r5
 800606c:	2a0f      	cmp	r2, #15
 800606e:	ddf2      	ble.n	8006056 <_malloc_r+0x13a>
 8006070:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8006074:	195c      	adds	r4, r3, r5
 8006076:	f045 0501 	orr.w	r5, r5, #1
 800607a:	605d      	str	r5, [r3, #4]
 800607c:	f042 0501 	orr.w	r5, r2, #1
 8006080:	f8c8 e00c 	str.w	lr, [r8, #12]
 8006084:	4630      	mov	r0, r6
 8006086:	f8ce 8008 	str.w	r8, [lr, #8]
 800608a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800608e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8006092:	6065      	str	r5, [r4, #4]
 8006094:	505a      	str	r2, [r3, r1]
 8006096:	9301      	str	r3, [sp, #4]
 8006098:	f000 fa4e 	bl	8006538 <__malloc_unlock>
 800609c:	9b01      	ldr	r3, [sp, #4]
 800609e:	f103 0408 	add.w	r4, r3, #8
 80060a2:	e763      	b.n	8005f6c <_malloc_r+0x50>
 80060a4:	2400      	movs	r4, #0
 80060a6:	230c      	movs	r3, #12
 80060a8:	4620      	mov	r0, r4
 80060aa:	6033      	str	r3, [r6, #0]
 80060ac:	b003      	add	sp, #12
 80060ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060b2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80060b6:	2040      	movs	r0, #64	; 0x40
 80060b8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80060bc:	e773      	b.n	8005fa6 <_malloc_r+0x8a>
 80060be:	687b      	ldr	r3, [r7, #4]
 80060c0:	1082      	asrs	r2, r0, #2
 80060c2:	2401      	movs	r4, #1
 80060c4:	4094      	lsls	r4, r2
 80060c6:	429c      	cmp	r4, r3
 80060c8:	d9b3      	bls.n	8006032 <_malloc_r+0x116>
 80060ca:	68bc      	ldr	r4, [r7, #8]
 80060cc:	6863      	ldr	r3, [r4, #4]
 80060ce:	f023 0903 	bic.w	r9, r3, #3
 80060d2:	45a9      	cmp	r9, r5
 80060d4:	d303      	bcc.n	80060de <_malloc_r+0x1c2>
 80060d6:	eba9 0305 	sub.w	r3, r9, r5
 80060da:	2b0f      	cmp	r3, #15
 80060dc:	dc7b      	bgt.n	80061d6 <_malloc_r+0x2ba>
 80060de:	4b5e      	ldr	r3, [pc, #376]	; (8006258 <_malloc_r+0x33c>)
 80060e0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800626c <_malloc_r+0x350>
 80060e4:	681a      	ldr	r2, [r3, #0]
 80060e6:	f8da 3000 	ldr.w	r3, [sl]
 80060ea:	3301      	adds	r3, #1
 80060ec:	eb05 0802 	add.w	r8, r5, r2
 80060f0:	f000 8148 	beq.w	8006384 <_malloc_r+0x468>
 80060f4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 80060f8:	f108 080f 	add.w	r8, r8, #15
 80060fc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8006100:	f028 080f 	bic.w	r8, r8, #15
 8006104:	4641      	mov	r1, r8
 8006106:	4630      	mov	r0, r6
 8006108:	f000 ff08 	bl	8006f1c <_sbrk_r>
 800610c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8006110:	4683      	mov	fp, r0
 8006112:	f000 8104 	beq.w	800631e <_malloc_r+0x402>
 8006116:	eb04 0009 	add.w	r0, r4, r9
 800611a:	4558      	cmp	r0, fp
 800611c:	f200 80fd 	bhi.w	800631a <_malloc_r+0x3fe>
 8006120:	4a4e      	ldr	r2, [pc, #312]	; (800625c <_malloc_r+0x340>)
 8006122:	6813      	ldr	r3, [r2, #0]
 8006124:	4443      	add	r3, r8
 8006126:	6013      	str	r3, [r2, #0]
 8006128:	f000 814d 	beq.w	80063c6 <_malloc_r+0x4aa>
 800612c:	f8da 1000 	ldr.w	r1, [sl]
 8006130:	3101      	adds	r1, #1
 8006132:	bf1b      	ittet	ne
 8006134:	ebab 0000 	subne.w	r0, fp, r0
 8006138:	181b      	addne	r3, r3, r0
 800613a:	f8ca b000 	streq.w	fp, [sl]
 800613e:	6013      	strne	r3, [r2, #0]
 8006140:	f01b 0307 	ands.w	r3, fp, #7
 8006144:	f000 8134 	beq.w	80063b0 <_malloc_r+0x494>
 8006148:	f1c3 0108 	rsb	r1, r3, #8
 800614c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006150:	448b      	add	fp, r1
 8006152:	3308      	adds	r3, #8
 8006154:	44d8      	add	r8, fp
 8006156:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800615a:	eba3 0808 	sub.w	r8, r3, r8
 800615e:	4641      	mov	r1, r8
 8006160:	4630      	mov	r0, r6
 8006162:	9201      	str	r2, [sp, #4]
 8006164:	f000 feda 	bl	8006f1c <_sbrk_r>
 8006168:	1c43      	adds	r3, r0, #1
 800616a:	9a01      	ldr	r2, [sp, #4]
 800616c:	f000 8146 	beq.w	80063fc <_malloc_r+0x4e0>
 8006170:	eba0 010b 	sub.w	r1, r0, fp
 8006174:	4441      	add	r1, r8
 8006176:	f041 0101 	orr.w	r1, r1, #1
 800617a:	6813      	ldr	r3, [r2, #0]
 800617c:	f8c7 b008 	str.w	fp, [r7, #8]
 8006180:	4443      	add	r3, r8
 8006182:	42bc      	cmp	r4, r7
 8006184:	f8cb 1004 	str.w	r1, [fp, #4]
 8006188:	6013      	str	r3, [r2, #0]
 800618a:	d015      	beq.n	80061b8 <_malloc_r+0x29c>
 800618c:	f1b9 0f0f 	cmp.w	r9, #15
 8006190:	f240 8130 	bls.w	80063f4 <_malloc_r+0x4d8>
 8006194:	6860      	ldr	r0, [r4, #4]
 8006196:	f1a9 010c 	sub.w	r1, r9, #12
 800619a:	f021 0107 	bic.w	r1, r1, #7
 800619e:	f000 0001 	and.w	r0, r0, #1
 80061a2:	eb04 0c01 	add.w	ip, r4, r1
 80061a6:	4308      	orrs	r0, r1
 80061a8:	f04f 0e05 	mov.w	lr, #5
 80061ac:	290f      	cmp	r1, #15
 80061ae:	6060      	str	r0, [r4, #4]
 80061b0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80061b4:	f200 813a 	bhi.w	800642c <_malloc_r+0x510>
 80061b8:	4a29      	ldr	r2, [pc, #164]	; (8006260 <_malloc_r+0x344>)
 80061ba:	482a      	ldr	r0, [pc, #168]	; (8006264 <_malloc_r+0x348>)
 80061bc:	6811      	ldr	r1, [r2, #0]
 80061be:	68bc      	ldr	r4, [r7, #8]
 80061c0:	428b      	cmp	r3, r1
 80061c2:	6801      	ldr	r1, [r0, #0]
 80061c4:	bf88      	it	hi
 80061c6:	6013      	strhi	r3, [r2, #0]
 80061c8:	6862      	ldr	r2, [r4, #4]
 80061ca:	428b      	cmp	r3, r1
 80061cc:	f022 0203 	bic.w	r2, r2, #3
 80061d0:	bf88      	it	hi
 80061d2:	6003      	strhi	r3, [r0, #0]
 80061d4:	e0a7      	b.n	8006326 <_malloc_r+0x40a>
 80061d6:	1962      	adds	r2, r4, r5
 80061d8:	f043 0301 	orr.w	r3, r3, #1
 80061dc:	f045 0501 	orr.w	r5, r5, #1
 80061e0:	6065      	str	r5, [r4, #4]
 80061e2:	4630      	mov	r0, r6
 80061e4:	60ba      	str	r2, [r7, #8]
 80061e6:	6053      	str	r3, [r2, #4]
 80061e8:	f000 f9a6 	bl	8006538 <__malloc_unlock>
 80061ec:	3408      	adds	r4, #8
 80061ee:	4620      	mov	r0, r4
 80061f0:	b003      	add	sp, #12
 80061f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80061f6:	4423      	add	r3, r4
 80061f8:	68e1      	ldr	r1, [r4, #12]
 80061fa:	685a      	ldr	r2, [r3, #4]
 80061fc:	68a5      	ldr	r5, [r4, #8]
 80061fe:	f042 0201 	orr.w	r2, r2, #1
 8006202:	60e9      	str	r1, [r5, #12]
 8006204:	4630      	mov	r0, r6
 8006206:	608d      	str	r5, [r1, #8]
 8006208:	605a      	str	r2, [r3, #4]
 800620a:	f000 f995 	bl	8006538 <__malloc_unlock>
 800620e:	3408      	adds	r4, #8
 8006210:	4620      	mov	r0, r4
 8006212:	b003      	add	sp, #12
 8006214:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006218:	68dc      	ldr	r4, [r3, #12]
 800621a:	42a3      	cmp	r3, r4
 800621c:	bf08      	it	eq
 800621e:	3002      	addeq	r0, #2
 8006220:	f43f aed6 	beq.w	8005fd0 <_malloc_r+0xb4>
 8006224:	e692      	b.n	8005f4c <_malloc_r+0x30>
 8006226:	2b14      	cmp	r3, #20
 8006228:	d971      	bls.n	800630e <_malloc_r+0x3f2>
 800622a:	2b54      	cmp	r3, #84	; 0x54
 800622c:	f200 80ad 	bhi.w	800638a <_malloc_r+0x46e>
 8006230:	0b2b      	lsrs	r3, r5, #12
 8006232:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8006236:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800623a:	00c3      	lsls	r3, r0, #3
 800623c:	e6b3      	b.n	8005fa6 <_malloc_r+0x8a>
 800623e:	4423      	add	r3, r4
 8006240:	4630      	mov	r0, r6
 8006242:	685a      	ldr	r2, [r3, #4]
 8006244:	f042 0201 	orr.w	r2, r2, #1
 8006248:	605a      	str	r2, [r3, #4]
 800624a:	3408      	adds	r4, #8
 800624c:	f000 f974 	bl	8006538 <__malloc_unlock>
 8006250:	e68c      	b.n	8005f6c <_malloc_r+0x50>
 8006252:	bf00      	nop
 8006254:	2000047c 	.word	0x2000047c
 8006258:	20000aec 	.word	0x20000aec
 800625c:	20000abc 	.word	0x20000abc
 8006260:	20000ae4 	.word	0x20000ae4
 8006264:	20000ae8 	.word	0x20000ae8
 8006268:	20000484 	.word	0x20000484
 800626c:	20000884 	.word	0x20000884
 8006270:	1961      	adds	r1, r4, r5
 8006272:	f045 0e01 	orr.w	lr, r5, #1
 8006276:	f042 0501 	orr.w	r5, r2, #1
 800627a:	f8c4 e004 	str.w	lr, [r4, #4]
 800627e:	4630      	mov	r0, r6
 8006280:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006284:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006288:	604d      	str	r5, [r1, #4]
 800628a:	50e2      	str	r2, [r4, r3]
 800628c:	f000 f954 	bl	8006538 <__malloc_unlock>
 8006290:	3408      	adds	r4, #8
 8006292:	e66b      	b.n	8005f6c <_malloc_r+0x50>
 8006294:	08e8      	lsrs	r0, r5, #3
 8006296:	f105 0308 	add.w	r3, r5, #8
 800629a:	e64f      	b.n	8005f3c <_malloc_r+0x20>
 800629c:	f108 0801 	add.w	r8, r8, #1
 80062a0:	f018 0f03 	tst.w	r8, #3
 80062a4:	f10e 0e08 	add.w	lr, lr, #8
 80062a8:	f47f aed0 	bne.w	800604c <_malloc_r+0x130>
 80062ac:	e052      	b.n	8006354 <_malloc_r+0x438>
 80062ae:	4419      	add	r1, r3
 80062b0:	461c      	mov	r4, r3
 80062b2:	684a      	ldr	r2, [r1, #4]
 80062b4:	68db      	ldr	r3, [r3, #12]
 80062b6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80062ba:	f042 0201 	orr.w	r2, r2, #1
 80062be:	604a      	str	r2, [r1, #4]
 80062c0:	4630      	mov	r0, r6
 80062c2:	60eb      	str	r3, [r5, #12]
 80062c4:	609d      	str	r5, [r3, #8]
 80062c6:	f000 f937 	bl	8006538 <__malloc_unlock>
 80062ca:	e64f      	b.n	8005f6c <_malloc_r+0x50>
 80062cc:	0a5a      	lsrs	r2, r3, #9
 80062ce:	2a04      	cmp	r2, #4
 80062d0:	d935      	bls.n	800633e <_malloc_r+0x422>
 80062d2:	2a14      	cmp	r2, #20
 80062d4:	d86f      	bhi.n	80063b6 <_malloc_r+0x49a>
 80062d6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80062da:	00c9      	lsls	r1, r1, #3
 80062dc:	325b      	adds	r2, #91	; 0x5b
 80062de:	eb07 0e01 	add.w	lr, r7, r1
 80062e2:	5879      	ldr	r1, [r7, r1]
 80062e4:	f1ae 0e08 	sub.w	lr, lr, #8
 80062e8:	458e      	cmp	lr, r1
 80062ea:	d058      	beq.n	800639e <_malloc_r+0x482>
 80062ec:	684a      	ldr	r2, [r1, #4]
 80062ee:	f022 0203 	bic.w	r2, r2, #3
 80062f2:	429a      	cmp	r2, r3
 80062f4:	d902      	bls.n	80062fc <_malloc_r+0x3e0>
 80062f6:	6889      	ldr	r1, [r1, #8]
 80062f8:	458e      	cmp	lr, r1
 80062fa:	d1f7      	bne.n	80062ec <_malloc_r+0x3d0>
 80062fc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006300:	687b      	ldr	r3, [r7, #4]
 8006302:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006306:	f8ce 4008 	str.w	r4, [lr, #8]
 800630a:	60cc      	str	r4, [r1, #12]
 800630c:	e68c      	b.n	8006028 <_malloc_r+0x10c>
 800630e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006312:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006316:	00c3      	lsls	r3, r0, #3
 8006318:	e645      	b.n	8005fa6 <_malloc_r+0x8a>
 800631a:	42bc      	cmp	r4, r7
 800631c:	d072      	beq.n	8006404 <_malloc_r+0x4e8>
 800631e:	68bc      	ldr	r4, [r7, #8]
 8006320:	6862      	ldr	r2, [r4, #4]
 8006322:	f022 0203 	bic.w	r2, r2, #3
 8006326:	4295      	cmp	r5, r2
 8006328:	eba2 0305 	sub.w	r3, r2, r5
 800632c:	d802      	bhi.n	8006334 <_malloc_r+0x418>
 800632e:	2b0f      	cmp	r3, #15
 8006330:	f73f af51 	bgt.w	80061d6 <_malloc_r+0x2ba>
 8006334:	4630      	mov	r0, r6
 8006336:	f000 f8ff 	bl	8006538 <__malloc_unlock>
 800633a:	2400      	movs	r4, #0
 800633c:	e616      	b.n	8005f6c <_malloc_r+0x50>
 800633e:	099a      	lsrs	r2, r3, #6
 8006340:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006344:	00c9      	lsls	r1, r1, #3
 8006346:	3238      	adds	r2, #56	; 0x38
 8006348:	e7c9      	b.n	80062de <_malloc_r+0x3c2>
 800634a:	f8d9 9000 	ldr.w	r9, [r9]
 800634e:	4599      	cmp	r9, r3
 8006350:	f040 8083 	bne.w	800645a <_malloc_r+0x53e>
 8006354:	f010 0f03 	tst.w	r0, #3
 8006358:	f1a9 0308 	sub.w	r3, r9, #8
 800635c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006360:	d1f3      	bne.n	800634a <_malloc_r+0x42e>
 8006362:	687b      	ldr	r3, [r7, #4]
 8006364:	ea23 0304 	bic.w	r3, r3, r4
 8006368:	607b      	str	r3, [r7, #4]
 800636a:	0064      	lsls	r4, r4, #1
 800636c:	429c      	cmp	r4, r3
 800636e:	f63f aeac 	bhi.w	80060ca <_malloc_r+0x1ae>
 8006372:	b91c      	cbnz	r4, 800637c <_malloc_r+0x460>
 8006374:	e6a9      	b.n	80060ca <_malloc_r+0x1ae>
 8006376:	0064      	lsls	r4, r4, #1
 8006378:	f108 0804 	add.w	r8, r8, #4
 800637c:	421c      	tst	r4, r3
 800637e:	d0fa      	beq.n	8006376 <_malloc_r+0x45a>
 8006380:	4640      	mov	r0, r8
 8006382:	e65f      	b.n	8006044 <_malloc_r+0x128>
 8006384:	f108 0810 	add.w	r8, r8, #16
 8006388:	e6bc      	b.n	8006104 <_malloc_r+0x1e8>
 800638a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800638e:	d826      	bhi.n	80063de <_malloc_r+0x4c2>
 8006390:	0beb      	lsrs	r3, r5, #15
 8006392:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006396:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800639a:	00c3      	lsls	r3, r0, #3
 800639c:	e603      	b.n	8005fa6 <_malloc_r+0x8a>
 800639e:	687b      	ldr	r3, [r7, #4]
 80063a0:	1092      	asrs	r2, r2, #2
 80063a2:	f04f 0801 	mov.w	r8, #1
 80063a6:	fa08 f202 	lsl.w	r2, r8, r2
 80063aa:	4313      	orrs	r3, r2
 80063ac:	607b      	str	r3, [r7, #4]
 80063ae:	e7a8      	b.n	8006302 <_malloc_r+0x3e6>
 80063b0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80063b4:	e6ce      	b.n	8006154 <_malloc_r+0x238>
 80063b6:	2a54      	cmp	r2, #84	; 0x54
 80063b8:	d829      	bhi.n	800640e <_malloc_r+0x4f2>
 80063ba:	0b1a      	lsrs	r2, r3, #12
 80063bc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80063c0:	00c9      	lsls	r1, r1, #3
 80063c2:	326e      	adds	r2, #110	; 0x6e
 80063c4:	e78b      	b.n	80062de <_malloc_r+0x3c2>
 80063c6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80063ca:	2900      	cmp	r1, #0
 80063cc:	f47f aeae 	bne.w	800612c <_malloc_r+0x210>
 80063d0:	eb09 0208 	add.w	r2, r9, r8
 80063d4:	68b9      	ldr	r1, [r7, #8]
 80063d6:	f042 0201 	orr.w	r2, r2, #1
 80063da:	604a      	str	r2, [r1, #4]
 80063dc:	e6ec      	b.n	80061b8 <_malloc_r+0x29c>
 80063de:	f240 5254 	movw	r2, #1364	; 0x554
 80063e2:	4293      	cmp	r3, r2
 80063e4:	d81c      	bhi.n	8006420 <_malloc_r+0x504>
 80063e6:	0cab      	lsrs	r3, r5, #18
 80063e8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80063ec:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80063f0:	00c3      	lsls	r3, r0, #3
 80063f2:	e5d8      	b.n	8005fa6 <_malloc_r+0x8a>
 80063f4:	2301      	movs	r3, #1
 80063f6:	f8cb 3004 	str.w	r3, [fp, #4]
 80063fa:	e79b      	b.n	8006334 <_malloc_r+0x418>
 80063fc:	2101      	movs	r1, #1
 80063fe:	f04f 0800 	mov.w	r8, #0
 8006402:	e6ba      	b.n	800617a <_malloc_r+0x25e>
 8006404:	4a16      	ldr	r2, [pc, #88]	; (8006460 <_malloc_r+0x544>)
 8006406:	6813      	ldr	r3, [r2, #0]
 8006408:	4443      	add	r3, r8
 800640a:	6013      	str	r3, [r2, #0]
 800640c:	e68e      	b.n	800612c <_malloc_r+0x210>
 800640e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006412:	d814      	bhi.n	800643e <_malloc_r+0x522>
 8006414:	0bda      	lsrs	r2, r3, #15
 8006416:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800641a:	00c9      	lsls	r1, r1, #3
 800641c:	3277      	adds	r2, #119	; 0x77
 800641e:	e75e      	b.n	80062de <_malloc_r+0x3c2>
 8006420:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006424:	207f      	movs	r0, #127	; 0x7f
 8006426:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800642a:	e5bc      	b.n	8005fa6 <_malloc_r+0x8a>
 800642c:	f104 0108 	add.w	r1, r4, #8
 8006430:	4630      	mov	r0, r6
 8006432:	9201      	str	r2, [sp, #4]
 8006434:	f7ff fa48 	bl	80058c8 <_free_r>
 8006438:	9a01      	ldr	r2, [sp, #4]
 800643a:	6813      	ldr	r3, [r2, #0]
 800643c:	e6bc      	b.n	80061b8 <_malloc_r+0x29c>
 800643e:	f240 5154 	movw	r1, #1364	; 0x554
 8006442:	428a      	cmp	r2, r1
 8006444:	d805      	bhi.n	8006452 <_malloc_r+0x536>
 8006446:	0c9a      	lsrs	r2, r3, #18
 8006448:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800644c:	00c9      	lsls	r1, r1, #3
 800644e:	327c      	adds	r2, #124	; 0x7c
 8006450:	e745      	b.n	80062de <_malloc_r+0x3c2>
 8006452:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006456:	227e      	movs	r2, #126	; 0x7e
 8006458:	e741      	b.n	80062de <_malloc_r+0x3c2>
 800645a:	687b      	ldr	r3, [r7, #4]
 800645c:	e785      	b.n	800636a <_malloc_r+0x44e>
 800645e:	bf00      	nop
 8006460:	20000abc 	.word	0x20000abc

08006464 <memmove>:
 8006464:	4288      	cmp	r0, r1
 8006466:	b4f0      	push	{r4, r5, r6, r7}
 8006468:	d90d      	bls.n	8006486 <memmove+0x22>
 800646a:	188b      	adds	r3, r1, r2
 800646c:	4283      	cmp	r3, r0
 800646e:	d90a      	bls.n	8006486 <memmove+0x22>
 8006470:	1884      	adds	r4, r0, r2
 8006472:	b132      	cbz	r2, 8006482 <memmove+0x1e>
 8006474:	4622      	mov	r2, r4
 8006476:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800647a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800647e:	4299      	cmp	r1, r3
 8006480:	d1f9      	bne.n	8006476 <memmove+0x12>
 8006482:	bcf0      	pop	{r4, r5, r6, r7}
 8006484:	4770      	bx	lr
 8006486:	2a0f      	cmp	r2, #15
 8006488:	d949      	bls.n	800651e <memmove+0xba>
 800648a:	ea40 0301 	orr.w	r3, r0, r1
 800648e:	079b      	lsls	r3, r3, #30
 8006490:	d147      	bne.n	8006522 <memmove+0xbe>
 8006492:	f1a2 0310 	sub.w	r3, r2, #16
 8006496:	091b      	lsrs	r3, r3, #4
 8006498:	f101 0720 	add.w	r7, r1, #32
 800649c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80064a0:	f101 0410 	add.w	r4, r1, #16
 80064a4:	f100 0510 	add.w	r5, r0, #16
 80064a8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80064ac:	f845 6c10 	str.w	r6, [r5, #-16]
 80064b0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80064b4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80064b8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80064bc:	f845 6c08 	str.w	r6, [r5, #-8]
 80064c0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80064c4:	f845 6c04 	str.w	r6, [r5, #-4]
 80064c8:	3410      	adds	r4, #16
 80064ca:	42bc      	cmp	r4, r7
 80064cc:	f105 0510 	add.w	r5, r5, #16
 80064d0:	d1ea      	bne.n	80064a8 <memmove+0x44>
 80064d2:	3301      	adds	r3, #1
 80064d4:	f002 050f 	and.w	r5, r2, #15
 80064d8:	011b      	lsls	r3, r3, #4
 80064da:	2d03      	cmp	r5, #3
 80064dc:	4419      	add	r1, r3
 80064de:	4403      	add	r3, r0
 80064e0:	d921      	bls.n	8006526 <memmove+0xc2>
 80064e2:	1f1f      	subs	r7, r3, #4
 80064e4:	460e      	mov	r6, r1
 80064e6:	462c      	mov	r4, r5
 80064e8:	3c04      	subs	r4, #4
 80064ea:	f856 cb04 	ldr.w	ip, [r6], #4
 80064ee:	f847 cf04 	str.w	ip, [r7, #4]!
 80064f2:	2c03      	cmp	r4, #3
 80064f4:	d8f8      	bhi.n	80064e8 <memmove+0x84>
 80064f6:	1f2c      	subs	r4, r5, #4
 80064f8:	f024 0403 	bic.w	r4, r4, #3
 80064fc:	3404      	adds	r4, #4
 80064fe:	4423      	add	r3, r4
 8006500:	4421      	add	r1, r4
 8006502:	f002 0203 	and.w	r2, r2, #3
 8006506:	2a00      	cmp	r2, #0
 8006508:	d0bb      	beq.n	8006482 <memmove+0x1e>
 800650a:	3b01      	subs	r3, #1
 800650c:	440a      	add	r2, r1
 800650e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006512:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006516:	4291      	cmp	r1, r2
 8006518:	d1f9      	bne.n	800650e <memmove+0xaa>
 800651a:	bcf0      	pop	{r4, r5, r6, r7}
 800651c:	4770      	bx	lr
 800651e:	4603      	mov	r3, r0
 8006520:	e7f1      	b.n	8006506 <memmove+0xa2>
 8006522:	4603      	mov	r3, r0
 8006524:	e7f1      	b.n	800650a <memmove+0xa6>
 8006526:	462a      	mov	r2, r5
 8006528:	e7ed      	b.n	8006506 <memmove+0xa2>
 800652a:	bf00      	nop

0800652c <__malloc_lock>:
 800652c:	4801      	ldr	r0, [pc, #4]	; (8006534 <__malloc_lock+0x8>)
 800652e:	f7ff bc79 	b.w	8005e24 <__retarget_lock_acquire_recursive>
 8006532:	bf00      	nop
 8006534:	20001574 	.word	0x20001574

08006538 <__malloc_unlock>:
 8006538:	4801      	ldr	r0, [pc, #4]	; (8006540 <__malloc_unlock+0x8>)
 800653a:	f7ff bc75 	b.w	8005e28 <__retarget_lock_release_recursive>
 800653e:	bf00      	nop
 8006540:	20001574 	.word	0x20001574

08006544 <_Balloc>:
 8006544:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006546:	b570      	push	{r4, r5, r6, lr}
 8006548:	4605      	mov	r5, r0
 800654a:	460c      	mov	r4, r1
 800654c:	b14b      	cbz	r3, 8006562 <_Balloc+0x1e>
 800654e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006552:	b180      	cbz	r0, 8006576 <_Balloc+0x32>
 8006554:	6802      	ldr	r2, [r0, #0]
 8006556:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800655a:	2300      	movs	r3, #0
 800655c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006560:	bd70      	pop	{r4, r5, r6, pc}
 8006562:	2221      	movs	r2, #33	; 0x21
 8006564:	2104      	movs	r1, #4
 8006566:	f000 fe1d 	bl	80071a4 <_calloc_r>
 800656a:	4603      	mov	r3, r0
 800656c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800656e:	2800      	cmp	r0, #0
 8006570:	d1ed      	bne.n	800654e <_Balloc+0xa>
 8006572:	2000      	movs	r0, #0
 8006574:	bd70      	pop	{r4, r5, r6, pc}
 8006576:	2101      	movs	r1, #1
 8006578:	fa01 f604 	lsl.w	r6, r1, r4
 800657c:	1d72      	adds	r2, r6, #5
 800657e:	4628      	mov	r0, r5
 8006580:	0092      	lsls	r2, r2, #2
 8006582:	f000 fe0f 	bl	80071a4 <_calloc_r>
 8006586:	2800      	cmp	r0, #0
 8006588:	d0f3      	beq.n	8006572 <_Balloc+0x2e>
 800658a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800658e:	e7e4      	b.n	800655a <_Balloc+0x16>

08006590 <_Bfree>:
 8006590:	b131      	cbz	r1, 80065a0 <_Bfree+0x10>
 8006592:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006594:	684a      	ldr	r2, [r1, #4]
 8006596:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800659a:	6008      	str	r0, [r1, #0]
 800659c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80065a0:	4770      	bx	lr
 80065a2:	bf00      	nop

080065a4 <__multadd>:
 80065a4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80065a6:	690c      	ldr	r4, [r1, #16]
 80065a8:	b083      	sub	sp, #12
 80065aa:	460d      	mov	r5, r1
 80065ac:	4606      	mov	r6, r0
 80065ae:	f101 0c14 	add.w	ip, r1, #20
 80065b2:	2700      	movs	r7, #0
 80065b4:	f8dc 0000 	ldr.w	r0, [ip]
 80065b8:	b281      	uxth	r1, r0
 80065ba:	fb02 3301 	mla	r3, r2, r1, r3
 80065be:	0c01      	lsrs	r1, r0, #16
 80065c0:	0c18      	lsrs	r0, r3, #16
 80065c2:	fb02 0101 	mla	r1, r2, r1, r0
 80065c6:	b29b      	uxth	r3, r3
 80065c8:	3701      	adds	r7, #1
 80065ca:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80065ce:	42bc      	cmp	r4, r7
 80065d0:	f84c 3b04 	str.w	r3, [ip], #4
 80065d4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80065d8:	dcec      	bgt.n	80065b4 <__multadd+0x10>
 80065da:	b13b      	cbz	r3, 80065ec <__multadd+0x48>
 80065dc:	68aa      	ldr	r2, [r5, #8]
 80065de:	42a2      	cmp	r2, r4
 80065e0:	dd07      	ble.n	80065f2 <__multadd+0x4e>
 80065e2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80065e6:	3401      	adds	r4, #1
 80065e8:	6153      	str	r3, [r2, #20]
 80065ea:	612c      	str	r4, [r5, #16]
 80065ec:	4628      	mov	r0, r5
 80065ee:	b003      	add	sp, #12
 80065f0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80065f2:	6869      	ldr	r1, [r5, #4]
 80065f4:	9301      	str	r3, [sp, #4]
 80065f6:	3101      	adds	r1, #1
 80065f8:	4630      	mov	r0, r6
 80065fa:	f7ff ffa3 	bl	8006544 <_Balloc>
 80065fe:	692a      	ldr	r2, [r5, #16]
 8006600:	3202      	adds	r2, #2
 8006602:	f105 010c 	add.w	r1, r5, #12
 8006606:	4607      	mov	r7, r0
 8006608:	0092      	lsls	r2, r2, #2
 800660a:	300c      	adds	r0, #12
 800660c:	f7f9 ffc6 	bl	800059c <memcpy>
 8006610:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006612:	6869      	ldr	r1, [r5, #4]
 8006614:	9b01      	ldr	r3, [sp, #4]
 8006616:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800661a:	6028      	str	r0, [r5, #0]
 800661c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006620:	463d      	mov	r5, r7
 8006622:	e7de      	b.n	80065e2 <__multadd+0x3e>

08006624 <__hi0bits>:
 8006624:	0c02      	lsrs	r2, r0, #16
 8006626:	0412      	lsls	r2, r2, #16
 8006628:	4603      	mov	r3, r0
 800662a:	b9c2      	cbnz	r2, 800665e <__hi0bits+0x3a>
 800662c:	0403      	lsls	r3, r0, #16
 800662e:	2010      	movs	r0, #16
 8006630:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006634:	bf04      	itt	eq
 8006636:	021b      	lsleq	r3, r3, #8
 8006638:	3008      	addeq	r0, #8
 800663a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800663e:	bf04      	itt	eq
 8006640:	011b      	lsleq	r3, r3, #4
 8006642:	3004      	addeq	r0, #4
 8006644:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006648:	bf04      	itt	eq
 800664a:	009b      	lsleq	r3, r3, #2
 800664c:	3002      	addeq	r0, #2
 800664e:	2b00      	cmp	r3, #0
 8006650:	db04      	blt.n	800665c <__hi0bits+0x38>
 8006652:	005b      	lsls	r3, r3, #1
 8006654:	d501      	bpl.n	800665a <__hi0bits+0x36>
 8006656:	3001      	adds	r0, #1
 8006658:	4770      	bx	lr
 800665a:	2020      	movs	r0, #32
 800665c:	4770      	bx	lr
 800665e:	2000      	movs	r0, #0
 8006660:	e7e6      	b.n	8006630 <__hi0bits+0xc>
 8006662:	bf00      	nop

08006664 <__lo0bits>:
 8006664:	6803      	ldr	r3, [r0, #0]
 8006666:	f013 0207 	ands.w	r2, r3, #7
 800666a:	4601      	mov	r1, r0
 800666c:	d007      	beq.n	800667e <__lo0bits+0x1a>
 800666e:	07da      	lsls	r2, r3, #31
 8006670:	d41f      	bmi.n	80066b2 <__lo0bits+0x4e>
 8006672:	0798      	lsls	r0, r3, #30
 8006674:	d51f      	bpl.n	80066b6 <__lo0bits+0x52>
 8006676:	085b      	lsrs	r3, r3, #1
 8006678:	600b      	str	r3, [r1, #0]
 800667a:	2001      	movs	r0, #1
 800667c:	4770      	bx	lr
 800667e:	b298      	uxth	r0, r3
 8006680:	b1a0      	cbz	r0, 80066ac <__lo0bits+0x48>
 8006682:	4610      	mov	r0, r2
 8006684:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006688:	bf04      	itt	eq
 800668a:	0a1b      	lsreq	r3, r3, #8
 800668c:	3008      	addeq	r0, #8
 800668e:	071a      	lsls	r2, r3, #28
 8006690:	bf04      	itt	eq
 8006692:	091b      	lsreq	r3, r3, #4
 8006694:	3004      	addeq	r0, #4
 8006696:	079a      	lsls	r2, r3, #30
 8006698:	bf04      	itt	eq
 800669a:	089b      	lsreq	r3, r3, #2
 800669c:	3002      	addeq	r0, #2
 800669e:	07da      	lsls	r2, r3, #31
 80066a0:	d402      	bmi.n	80066a8 <__lo0bits+0x44>
 80066a2:	085b      	lsrs	r3, r3, #1
 80066a4:	d00b      	beq.n	80066be <__lo0bits+0x5a>
 80066a6:	3001      	adds	r0, #1
 80066a8:	600b      	str	r3, [r1, #0]
 80066aa:	4770      	bx	lr
 80066ac:	0c1b      	lsrs	r3, r3, #16
 80066ae:	2010      	movs	r0, #16
 80066b0:	e7e8      	b.n	8006684 <__lo0bits+0x20>
 80066b2:	2000      	movs	r0, #0
 80066b4:	4770      	bx	lr
 80066b6:	089b      	lsrs	r3, r3, #2
 80066b8:	600b      	str	r3, [r1, #0]
 80066ba:	2002      	movs	r0, #2
 80066bc:	4770      	bx	lr
 80066be:	2020      	movs	r0, #32
 80066c0:	4770      	bx	lr
 80066c2:	bf00      	nop

080066c4 <__i2b>:
 80066c4:	b510      	push	{r4, lr}
 80066c6:	460c      	mov	r4, r1
 80066c8:	2101      	movs	r1, #1
 80066ca:	f7ff ff3b 	bl	8006544 <_Balloc>
 80066ce:	2201      	movs	r2, #1
 80066d0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80066d4:	bd10      	pop	{r4, pc}
 80066d6:	bf00      	nop

080066d8 <__multiply>:
 80066d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066dc:	690e      	ldr	r6, [r1, #16]
 80066de:	6914      	ldr	r4, [r2, #16]
 80066e0:	42a6      	cmp	r6, r4
 80066e2:	b083      	sub	sp, #12
 80066e4:	460f      	mov	r7, r1
 80066e6:	4615      	mov	r5, r2
 80066e8:	da04      	bge.n	80066f4 <__multiply+0x1c>
 80066ea:	4632      	mov	r2, r6
 80066ec:	462f      	mov	r7, r5
 80066ee:	4626      	mov	r6, r4
 80066f0:	460d      	mov	r5, r1
 80066f2:	4614      	mov	r4, r2
 80066f4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80066f8:	eb06 0804 	add.w	r8, r6, r4
 80066fc:	4543      	cmp	r3, r8
 80066fe:	bfb8      	it	lt
 8006700:	3101      	addlt	r1, #1
 8006702:	f7ff ff1f 	bl	8006544 <_Balloc>
 8006706:	f100 0914 	add.w	r9, r0, #20
 800670a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800670e:	45f1      	cmp	r9, lr
 8006710:	9000      	str	r0, [sp, #0]
 8006712:	d205      	bcs.n	8006720 <__multiply+0x48>
 8006714:	464b      	mov	r3, r9
 8006716:	2200      	movs	r2, #0
 8006718:	f843 2b04 	str.w	r2, [r3], #4
 800671c:	459e      	cmp	lr, r3
 800671e:	d8fb      	bhi.n	8006718 <__multiply+0x40>
 8006720:	f105 0a14 	add.w	sl, r5, #20
 8006724:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006728:	f107 0314 	add.w	r3, r7, #20
 800672c:	45a2      	cmp	sl, r4
 800672e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006732:	d261      	bcs.n	80067f8 <__multiply+0x120>
 8006734:	1b64      	subs	r4, r4, r5
 8006736:	3c15      	subs	r4, #21
 8006738:	f024 0403 	bic.w	r4, r4, #3
 800673c:	f8cd e004 	str.w	lr, [sp, #4]
 8006740:	44a2      	add	sl, r4
 8006742:	f105 0210 	add.w	r2, r5, #16
 8006746:	469e      	mov	lr, r3
 8006748:	e005      	b.n	8006756 <__multiply+0x7e>
 800674a:	0c2d      	lsrs	r5, r5, #16
 800674c:	d12b      	bne.n	80067a6 <__multiply+0xce>
 800674e:	4592      	cmp	sl, r2
 8006750:	f109 0904 	add.w	r9, r9, #4
 8006754:	d04e      	beq.n	80067f4 <__multiply+0x11c>
 8006756:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800675a:	fa1f fb85 	uxth.w	fp, r5
 800675e:	f1bb 0f00 	cmp.w	fp, #0
 8006762:	d0f2      	beq.n	800674a <__multiply+0x72>
 8006764:	4677      	mov	r7, lr
 8006766:	464e      	mov	r6, r9
 8006768:	2000      	movs	r0, #0
 800676a:	e000      	b.n	800676e <__multiply+0x96>
 800676c:	4626      	mov	r6, r4
 800676e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006772:	6834      	ldr	r4, [r6, #0]
 8006774:	b28b      	uxth	r3, r1
 8006776:	b2a5      	uxth	r5, r4
 8006778:	0c09      	lsrs	r1, r1, #16
 800677a:	0c24      	lsrs	r4, r4, #16
 800677c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006780:	4403      	add	r3, r0
 8006782:	fb0b 4001 	mla	r0, fp, r1, r4
 8006786:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800678a:	4634      	mov	r4, r6
 800678c:	b29b      	uxth	r3, r3
 800678e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006792:	45bc      	cmp	ip, r7
 8006794:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006798:	f844 3b04 	str.w	r3, [r4], #4
 800679c:	d8e6      	bhi.n	800676c <__multiply+0x94>
 800679e:	6070      	str	r0, [r6, #4]
 80067a0:	6815      	ldr	r5, [r2, #0]
 80067a2:	0c2d      	lsrs	r5, r5, #16
 80067a4:	d0d3      	beq.n	800674e <__multiply+0x76>
 80067a6:	f8d9 3000 	ldr.w	r3, [r9]
 80067aa:	4676      	mov	r6, lr
 80067ac:	4618      	mov	r0, r3
 80067ae:	46cb      	mov	fp, r9
 80067b0:	2100      	movs	r1, #0
 80067b2:	e000      	b.n	80067b6 <__multiply+0xde>
 80067b4:	46a3      	mov	fp, r4
 80067b6:	8834      	ldrh	r4, [r6, #0]
 80067b8:	0c00      	lsrs	r0, r0, #16
 80067ba:	fb05 0004 	mla	r0, r5, r4, r0
 80067be:	4401      	add	r1, r0
 80067c0:	b29b      	uxth	r3, r3
 80067c2:	465c      	mov	r4, fp
 80067c4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80067c8:	f844 3b04 	str.w	r3, [r4], #4
 80067cc:	f856 3b04 	ldr.w	r3, [r6], #4
 80067d0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80067d4:	0c1b      	lsrs	r3, r3, #16
 80067d6:	b287      	uxth	r7, r0
 80067d8:	fb05 7303 	mla	r3, r5, r3, r7
 80067dc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80067e0:	45b4      	cmp	ip, r6
 80067e2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80067e6:	d8e5      	bhi.n	80067b4 <__multiply+0xdc>
 80067e8:	4592      	cmp	sl, r2
 80067ea:	f8cb 3004 	str.w	r3, [fp, #4]
 80067ee:	f109 0904 	add.w	r9, r9, #4
 80067f2:	d1b0      	bne.n	8006756 <__multiply+0x7e>
 80067f4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80067f8:	f1b8 0f00 	cmp.w	r8, #0
 80067fc:	dd0b      	ble.n	8006816 <__multiply+0x13e>
 80067fe:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006802:	f1ae 0e04 	sub.w	lr, lr, #4
 8006806:	b11b      	cbz	r3, 8006810 <__multiply+0x138>
 8006808:	e005      	b.n	8006816 <__multiply+0x13e>
 800680a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800680e:	b913      	cbnz	r3, 8006816 <__multiply+0x13e>
 8006810:	f1b8 0801 	subs.w	r8, r8, #1
 8006814:	d1f9      	bne.n	800680a <__multiply+0x132>
 8006816:	9800      	ldr	r0, [sp, #0]
 8006818:	f8c0 8010 	str.w	r8, [r0, #16]
 800681c:	b003      	add	sp, #12
 800681e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006822:	bf00      	nop

08006824 <__pow5mult>:
 8006824:	f012 0303 	ands.w	r3, r2, #3
 8006828:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800682c:	4614      	mov	r4, r2
 800682e:	4607      	mov	r7, r0
 8006830:	d12e      	bne.n	8006890 <__pow5mult+0x6c>
 8006832:	460d      	mov	r5, r1
 8006834:	10a4      	asrs	r4, r4, #2
 8006836:	d01c      	beq.n	8006872 <__pow5mult+0x4e>
 8006838:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800683a:	b396      	cbz	r6, 80068a2 <__pow5mult+0x7e>
 800683c:	07e3      	lsls	r3, r4, #31
 800683e:	f04f 0800 	mov.w	r8, #0
 8006842:	d406      	bmi.n	8006852 <__pow5mult+0x2e>
 8006844:	1064      	asrs	r4, r4, #1
 8006846:	d014      	beq.n	8006872 <__pow5mult+0x4e>
 8006848:	6830      	ldr	r0, [r6, #0]
 800684a:	b1a8      	cbz	r0, 8006878 <__pow5mult+0x54>
 800684c:	4606      	mov	r6, r0
 800684e:	07e3      	lsls	r3, r4, #31
 8006850:	d5f8      	bpl.n	8006844 <__pow5mult+0x20>
 8006852:	4632      	mov	r2, r6
 8006854:	4629      	mov	r1, r5
 8006856:	4638      	mov	r0, r7
 8006858:	f7ff ff3e 	bl	80066d8 <__multiply>
 800685c:	b1b5      	cbz	r5, 800688c <__pow5mult+0x68>
 800685e:	686a      	ldr	r2, [r5, #4]
 8006860:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006862:	1064      	asrs	r4, r4, #1
 8006864:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006868:	6029      	str	r1, [r5, #0]
 800686a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800686e:	4605      	mov	r5, r0
 8006870:	d1ea      	bne.n	8006848 <__pow5mult+0x24>
 8006872:	4628      	mov	r0, r5
 8006874:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006878:	4632      	mov	r2, r6
 800687a:	4631      	mov	r1, r6
 800687c:	4638      	mov	r0, r7
 800687e:	f7ff ff2b 	bl	80066d8 <__multiply>
 8006882:	6030      	str	r0, [r6, #0]
 8006884:	f8c0 8000 	str.w	r8, [r0]
 8006888:	4606      	mov	r6, r0
 800688a:	e7e0      	b.n	800684e <__pow5mult+0x2a>
 800688c:	4605      	mov	r5, r0
 800688e:	e7d9      	b.n	8006844 <__pow5mult+0x20>
 8006890:	3b01      	subs	r3, #1
 8006892:	4a0b      	ldr	r2, [pc, #44]	; (80068c0 <__pow5mult+0x9c>)
 8006894:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006898:	2300      	movs	r3, #0
 800689a:	f7ff fe83 	bl	80065a4 <__multadd>
 800689e:	4605      	mov	r5, r0
 80068a0:	e7c8      	b.n	8006834 <__pow5mult+0x10>
 80068a2:	2101      	movs	r1, #1
 80068a4:	4638      	mov	r0, r7
 80068a6:	f7ff fe4d 	bl	8006544 <_Balloc>
 80068aa:	f240 2371 	movw	r3, #625	; 0x271
 80068ae:	6143      	str	r3, [r0, #20]
 80068b0:	2201      	movs	r2, #1
 80068b2:	2300      	movs	r3, #0
 80068b4:	6102      	str	r2, [r0, #16]
 80068b6:	4606      	mov	r6, r0
 80068b8:	64b8      	str	r0, [r7, #72]	; 0x48
 80068ba:	6003      	str	r3, [r0, #0]
 80068bc:	e7be      	b.n	800683c <__pow5mult+0x18>
 80068be:	bf00      	nop
 80068c0:	080078e0 	.word	0x080078e0

080068c4 <__lshift>:
 80068c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80068c8:	4691      	mov	r9, r2
 80068ca:	690a      	ldr	r2, [r1, #16]
 80068cc:	460e      	mov	r6, r1
 80068ce:	ea4f 1469 	mov.w	r4, r9, asr #5
 80068d2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80068d6:	eb04 0802 	add.w	r8, r4, r2
 80068da:	f108 0501 	add.w	r5, r8, #1
 80068de:	429d      	cmp	r5, r3
 80068e0:	4607      	mov	r7, r0
 80068e2:	dd04      	ble.n	80068ee <__lshift+0x2a>
 80068e4:	005b      	lsls	r3, r3, #1
 80068e6:	429d      	cmp	r5, r3
 80068e8:	f101 0101 	add.w	r1, r1, #1
 80068ec:	dcfa      	bgt.n	80068e4 <__lshift+0x20>
 80068ee:	4638      	mov	r0, r7
 80068f0:	f7ff fe28 	bl	8006544 <_Balloc>
 80068f4:	2c00      	cmp	r4, #0
 80068f6:	f100 0314 	add.w	r3, r0, #20
 80068fa:	dd37      	ble.n	800696c <__lshift+0xa8>
 80068fc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006900:	2200      	movs	r2, #0
 8006902:	f843 2b04 	str.w	r2, [r3], #4
 8006906:	428b      	cmp	r3, r1
 8006908:	d1fb      	bne.n	8006902 <__lshift+0x3e>
 800690a:	6934      	ldr	r4, [r6, #16]
 800690c:	f106 0314 	add.w	r3, r6, #20
 8006910:	f019 091f 	ands.w	r9, r9, #31
 8006914:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006918:	d020      	beq.n	800695c <__lshift+0x98>
 800691a:	f1c9 0e20 	rsb	lr, r9, #32
 800691e:	2200      	movs	r2, #0
 8006920:	e000      	b.n	8006924 <__lshift+0x60>
 8006922:	4651      	mov	r1, sl
 8006924:	681c      	ldr	r4, [r3, #0]
 8006926:	468a      	mov	sl, r1
 8006928:	fa04 f409 	lsl.w	r4, r4, r9
 800692c:	4314      	orrs	r4, r2
 800692e:	f84a 4b04 	str.w	r4, [sl], #4
 8006932:	f853 2b04 	ldr.w	r2, [r3], #4
 8006936:	4563      	cmp	r3, ip
 8006938:	fa22 f20e 	lsr.w	r2, r2, lr
 800693c:	d3f1      	bcc.n	8006922 <__lshift+0x5e>
 800693e:	604a      	str	r2, [r1, #4]
 8006940:	b10a      	cbz	r2, 8006946 <__lshift+0x82>
 8006942:	f108 0502 	add.w	r5, r8, #2
 8006946:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006948:	6872      	ldr	r2, [r6, #4]
 800694a:	3d01      	subs	r5, #1
 800694c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006950:	6105      	str	r5, [r0, #16]
 8006952:	6031      	str	r1, [r6, #0]
 8006954:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006958:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800695c:	3904      	subs	r1, #4
 800695e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006962:	f841 2f04 	str.w	r2, [r1, #4]!
 8006966:	459c      	cmp	ip, r3
 8006968:	d8f9      	bhi.n	800695e <__lshift+0x9a>
 800696a:	e7ec      	b.n	8006946 <__lshift+0x82>
 800696c:	4619      	mov	r1, r3
 800696e:	e7cc      	b.n	800690a <__lshift+0x46>

08006970 <__mcmp>:
 8006970:	b430      	push	{r4, r5}
 8006972:	690b      	ldr	r3, [r1, #16]
 8006974:	4605      	mov	r5, r0
 8006976:	6900      	ldr	r0, [r0, #16]
 8006978:	1ac0      	subs	r0, r0, r3
 800697a:	d10f      	bne.n	800699c <__mcmp+0x2c>
 800697c:	009b      	lsls	r3, r3, #2
 800697e:	3514      	adds	r5, #20
 8006980:	3114      	adds	r1, #20
 8006982:	4419      	add	r1, r3
 8006984:	442b      	add	r3, r5
 8006986:	e001      	b.n	800698c <__mcmp+0x1c>
 8006988:	429d      	cmp	r5, r3
 800698a:	d207      	bcs.n	800699c <__mcmp+0x2c>
 800698c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006990:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006994:	4294      	cmp	r4, r2
 8006996:	d0f7      	beq.n	8006988 <__mcmp+0x18>
 8006998:	d302      	bcc.n	80069a0 <__mcmp+0x30>
 800699a:	2001      	movs	r0, #1
 800699c:	bc30      	pop	{r4, r5}
 800699e:	4770      	bx	lr
 80069a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80069a4:	e7fa      	b.n	800699c <__mcmp+0x2c>
 80069a6:	bf00      	nop

080069a8 <__mdiff>:
 80069a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80069ac:	6913      	ldr	r3, [r2, #16]
 80069ae:	690d      	ldr	r5, [r1, #16]
 80069b0:	1aed      	subs	r5, r5, r3
 80069b2:	2d00      	cmp	r5, #0
 80069b4:	460e      	mov	r6, r1
 80069b6:	4690      	mov	r8, r2
 80069b8:	f101 0414 	add.w	r4, r1, #20
 80069bc:	f102 0714 	add.w	r7, r2, #20
 80069c0:	d114      	bne.n	80069ec <__mdiff+0x44>
 80069c2:	009b      	lsls	r3, r3, #2
 80069c4:	18e2      	adds	r2, r4, r3
 80069c6:	443b      	add	r3, r7
 80069c8:	e001      	b.n	80069ce <__mdiff+0x26>
 80069ca:	42a2      	cmp	r2, r4
 80069cc:	d959      	bls.n	8006a82 <__mdiff+0xda>
 80069ce:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80069d2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80069d6:	458c      	cmp	ip, r1
 80069d8:	d0f7      	beq.n	80069ca <__mdiff+0x22>
 80069da:	d209      	bcs.n	80069f0 <__mdiff+0x48>
 80069dc:	4622      	mov	r2, r4
 80069de:	4633      	mov	r3, r6
 80069e0:	463c      	mov	r4, r7
 80069e2:	4646      	mov	r6, r8
 80069e4:	4617      	mov	r7, r2
 80069e6:	4698      	mov	r8, r3
 80069e8:	2501      	movs	r5, #1
 80069ea:	e001      	b.n	80069f0 <__mdiff+0x48>
 80069ec:	dbf6      	blt.n	80069dc <__mdiff+0x34>
 80069ee:	2500      	movs	r5, #0
 80069f0:	6871      	ldr	r1, [r6, #4]
 80069f2:	f7ff fda7 	bl	8006544 <_Balloc>
 80069f6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80069fa:	6936      	ldr	r6, [r6, #16]
 80069fc:	60c5      	str	r5, [r0, #12]
 80069fe:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006a02:	46bc      	mov	ip, r7
 8006a04:	f100 0514 	add.w	r5, r0, #20
 8006a08:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006a0c:	2300      	movs	r3, #0
 8006a0e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006a12:	f854 8b04 	ldr.w	r8, [r4], #4
 8006a16:	b28a      	uxth	r2, r1
 8006a18:	fa13 f388 	uxtah	r3, r3, r8
 8006a1c:	0c09      	lsrs	r1, r1, #16
 8006a1e:	1a9a      	subs	r2, r3, r2
 8006a20:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006a24:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006a28:	b292      	uxth	r2, r2
 8006a2a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006a2e:	45e6      	cmp	lr, ip
 8006a30:	f845 2b04 	str.w	r2, [r5], #4
 8006a34:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006a38:	d8e9      	bhi.n	8006a0e <__mdiff+0x66>
 8006a3a:	42a7      	cmp	r7, r4
 8006a3c:	d917      	bls.n	8006a6e <__mdiff+0xc6>
 8006a3e:	46ae      	mov	lr, r5
 8006a40:	46a4      	mov	ip, r4
 8006a42:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006a46:	fa13 f382 	uxtah	r3, r3, r2
 8006a4a:	1419      	asrs	r1, r3, #16
 8006a4c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006a50:	b29b      	uxth	r3, r3
 8006a52:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006a56:	4567      	cmp	r7, ip
 8006a58:	f84e 2b04 	str.w	r2, [lr], #4
 8006a5c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006a60:	d8ef      	bhi.n	8006a42 <__mdiff+0x9a>
 8006a62:	43e4      	mvns	r4, r4
 8006a64:	4427      	add	r7, r4
 8006a66:	f027 0703 	bic.w	r7, r7, #3
 8006a6a:	3704      	adds	r7, #4
 8006a6c:	443d      	add	r5, r7
 8006a6e:	3d04      	subs	r5, #4
 8006a70:	b922      	cbnz	r2, 8006a7c <__mdiff+0xd4>
 8006a72:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006a76:	3e01      	subs	r6, #1
 8006a78:	2b00      	cmp	r3, #0
 8006a7a:	d0fa      	beq.n	8006a72 <__mdiff+0xca>
 8006a7c:	6106      	str	r6, [r0, #16]
 8006a7e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006a82:	2100      	movs	r1, #0
 8006a84:	f7ff fd5e 	bl	8006544 <_Balloc>
 8006a88:	2201      	movs	r2, #1
 8006a8a:	2300      	movs	r3, #0
 8006a8c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006a90:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006a94 <__d2b>:
 8006a94:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006a98:	460f      	mov	r7, r1
 8006a9a:	b083      	sub	sp, #12
 8006a9c:	2101      	movs	r1, #1
 8006a9e:	ec55 4b10 	vmov	r4, r5, d0
 8006aa2:	4616      	mov	r6, r2
 8006aa4:	f7ff fd4e 	bl	8006544 <_Balloc>
 8006aa8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006aac:	4681      	mov	r9, r0
 8006aae:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006ab2:	f1b8 0f00 	cmp.w	r8, #0
 8006ab6:	d001      	beq.n	8006abc <__d2b+0x28>
 8006ab8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006abc:	2c00      	cmp	r4, #0
 8006abe:	9301      	str	r3, [sp, #4]
 8006ac0:	d024      	beq.n	8006b0c <__d2b+0x78>
 8006ac2:	a802      	add	r0, sp, #8
 8006ac4:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006ac8:	f7ff fdcc 	bl	8006664 <__lo0bits>
 8006acc:	2800      	cmp	r0, #0
 8006ace:	d136      	bne.n	8006b3e <__d2b+0xaa>
 8006ad0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006ad4:	f8c9 2014 	str.w	r2, [r9, #20]
 8006ad8:	2b00      	cmp	r3, #0
 8006ada:	bf0c      	ite	eq
 8006adc:	2101      	moveq	r1, #1
 8006ade:	2102      	movne	r1, #2
 8006ae0:	f8c9 3018 	str.w	r3, [r9, #24]
 8006ae4:	f8c9 1010 	str.w	r1, [r9, #16]
 8006ae8:	f1b8 0f00 	cmp.w	r8, #0
 8006aec:	d11b      	bne.n	8006b26 <__d2b+0x92>
 8006aee:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006af2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006af6:	6038      	str	r0, [r7, #0]
 8006af8:	6918      	ldr	r0, [r3, #16]
 8006afa:	f7ff fd93 	bl	8006624 <__hi0bits>
 8006afe:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006b02:	6030      	str	r0, [r6, #0]
 8006b04:	4648      	mov	r0, r9
 8006b06:	b003      	add	sp, #12
 8006b08:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006b0c:	a801      	add	r0, sp, #4
 8006b0e:	f7ff fda9 	bl	8006664 <__lo0bits>
 8006b12:	9b01      	ldr	r3, [sp, #4]
 8006b14:	f8c9 3014 	str.w	r3, [r9, #20]
 8006b18:	2101      	movs	r1, #1
 8006b1a:	3020      	adds	r0, #32
 8006b1c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006b20:	f1b8 0f00 	cmp.w	r8, #0
 8006b24:	d0e3      	beq.n	8006aee <__d2b+0x5a>
 8006b26:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006b2a:	eb08 0300 	add.w	r3, r8, r0
 8006b2e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006b32:	603b      	str	r3, [r7, #0]
 8006b34:	6030      	str	r0, [r6, #0]
 8006b36:	4648      	mov	r0, r9
 8006b38:	b003      	add	sp, #12
 8006b3a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006b3e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006b42:	f1c0 0220 	rsb	r2, r0, #32
 8006b46:	fa03 f202 	lsl.w	r2, r3, r2
 8006b4a:	430a      	orrs	r2, r1
 8006b4c:	40c3      	lsrs	r3, r0
 8006b4e:	9301      	str	r3, [sp, #4]
 8006b50:	f8c9 2014 	str.w	r2, [r9, #20]
 8006b54:	e7c0      	b.n	8006ad8 <__d2b+0x44>
 8006b56:	bf00      	nop

08006b58 <_realloc_r>:
 8006b58:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b5c:	4692      	mov	sl, r2
 8006b5e:	b083      	sub	sp, #12
 8006b60:	2900      	cmp	r1, #0
 8006b62:	f000 80a1 	beq.w	8006ca8 <_realloc_r+0x150>
 8006b66:	460d      	mov	r5, r1
 8006b68:	4680      	mov	r8, r0
 8006b6a:	f10a 040b 	add.w	r4, sl, #11
 8006b6e:	f7ff fcdd 	bl	800652c <__malloc_lock>
 8006b72:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006b76:	2c16      	cmp	r4, #22
 8006b78:	f022 0603 	bic.w	r6, r2, #3
 8006b7c:	f1a5 0708 	sub.w	r7, r5, #8
 8006b80:	d83e      	bhi.n	8006c00 <_realloc_r+0xa8>
 8006b82:	2410      	movs	r4, #16
 8006b84:	4621      	mov	r1, r4
 8006b86:	45a2      	cmp	sl, r4
 8006b88:	d83f      	bhi.n	8006c0a <_realloc_r+0xb2>
 8006b8a:	428e      	cmp	r6, r1
 8006b8c:	eb07 0906 	add.w	r9, r7, r6
 8006b90:	da74      	bge.n	8006c7c <_realloc_r+0x124>
 8006b92:	4bc7      	ldr	r3, [pc, #796]	; (8006eb0 <_realloc_r+0x358>)
 8006b94:	6898      	ldr	r0, [r3, #8]
 8006b96:	4548      	cmp	r0, r9
 8006b98:	f000 80aa 	beq.w	8006cf0 <_realloc_r+0x198>
 8006b9c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006ba0:	f020 0301 	bic.w	r3, r0, #1
 8006ba4:	444b      	add	r3, r9
 8006ba6:	685b      	ldr	r3, [r3, #4]
 8006ba8:	07db      	lsls	r3, r3, #31
 8006baa:	f140 8083 	bpl.w	8006cb4 <_realloc_r+0x15c>
 8006bae:	07d2      	lsls	r2, r2, #31
 8006bb0:	d534      	bpl.n	8006c1c <_realloc_r+0xc4>
 8006bb2:	4651      	mov	r1, sl
 8006bb4:	4640      	mov	r0, r8
 8006bb6:	f7ff f9b1 	bl	8005f1c <_malloc_r>
 8006bba:	4682      	mov	sl, r0
 8006bbc:	b1e0      	cbz	r0, 8006bf8 <_realloc_r+0xa0>
 8006bbe:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006bc2:	f023 0301 	bic.w	r3, r3, #1
 8006bc6:	443b      	add	r3, r7
 8006bc8:	f1a0 0208 	sub.w	r2, r0, #8
 8006bcc:	4293      	cmp	r3, r2
 8006bce:	f000 80f9 	beq.w	8006dc4 <_realloc_r+0x26c>
 8006bd2:	1f32      	subs	r2, r6, #4
 8006bd4:	2a24      	cmp	r2, #36	; 0x24
 8006bd6:	f200 8107 	bhi.w	8006de8 <_realloc_r+0x290>
 8006bda:	2a13      	cmp	r2, #19
 8006bdc:	6829      	ldr	r1, [r5, #0]
 8006bde:	f200 80e6 	bhi.w	8006dae <_realloc_r+0x256>
 8006be2:	4603      	mov	r3, r0
 8006be4:	462a      	mov	r2, r5
 8006be6:	6019      	str	r1, [r3, #0]
 8006be8:	6851      	ldr	r1, [r2, #4]
 8006bea:	6059      	str	r1, [r3, #4]
 8006bec:	6892      	ldr	r2, [r2, #8]
 8006bee:	609a      	str	r2, [r3, #8]
 8006bf0:	4629      	mov	r1, r5
 8006bf2:	4640      	mov	r0, r8
 8006bf4:	f7fe fe68 	bl	80058c8 <_free_r>
 8006bf8:	4640      	mov	r0, r8
 8006bfa:	f7ff fc9d 	bl	8006538 <__malloc_unlock>
 8006bfe:	e04f      	b.n	8006ca0 <_realloc_r+0x148>
 8006c00:	f024 0407 	bic.w	r4, r4, #7
 8006c04:	2c00      	cmp	r4, #0
 8006c06:	4621      	mov	r1, r4
 8006c08:	dabd      	bge.n	8006b86 <_realloc_r+0x2e>
 8006c0a:	f04f 0a00 	mov.w	sl, #0
 8006c0e:	230c      	movs	r3, #12
 8006c10:	4650      	mov	r0, sl
 8006c12:	f8c8 3000 	str.w	r3, [r8]
 8006c16:	b003      	add	sp, #12
 8006c18:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c1c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006c20:	eba7 0b03 	sub.w	fp, r7, r3
 8006c24:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006c28:	f022 0203 	bic.w	r2, r2, #3
 8006c2c:	18b3      	adds	r3, r6, r2
 8006c2e:	428b      	cmp	r3, r1
 8006c30:	dbbf      	blt.n	8006bb2 <_realloc_r+0x5a>
 8006c32:	46da      	mov	sl, fp
 8006c34:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006c38:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006c3c:	1f32      	subs	r2, r6, #4
 8006c3e:	2a24      	cmp	r2, #36	; 0x24
 8006c40:	60c1      	str	r1, [r0, #12]
 8006c42:	eb0b 0903 	add.w	r9, fp, r3
 8006c46:	6088      	str	r0, [r1, #8]
 8006c48:	f200 80c6 	bhi.w	8006dd8 <_realloc_r+0x280>
 8006c4c:	2a13      	cmp	r2, #19
 8006c4e:	6829      	ldr	r1, [r5, #0]
 8006c50:	f240 80c0 	bls.w	8006dd4 <_realloc_r+0x27c>
 8006c54:	f8cb 1008 	str.w	r1, [fp, #8]
 8006c58:	6869      	ldr	r1, [r5, #4]
 8006c5a:	f8cb 100c 	str.w	r1, [fp, #12]
 8006c5e:	2a1b      	cmp	r2, #27
 8006c60:	68a9      	ldr	r1, [r5, #8]
 8006c62:	f200 80d8 	bhi.w	8006e16 <_realloc_r+0x2be>
 8006c66:	f10b 0210 	add.w	r2, fp, #16
 8006c6a:	3508      	adds	r5, #8
 8006c6c:	6011      	str	r1, [r2, #0]
 8006c6e:	6869      	ldr	r1, [r5, #4]
 8006c70:	6051      	str	r1, [r2, #4]
 8006c72:	68a9      	ldr	r1, [r5, #8]
 8006c74:	6091      	str	r1, [r2, #8]
 8006c76:	461e      	mov	r6, r3
 8006c78:	465f      	mov	r7, fp
 8006c7a:	4655      	mov	r5, sl
 8006c7c:	687b      	ldr	r3, [r7, #4]
 8006c7e:	1b32      	subs	r2, r6, r4
 8006c80:	2a0f      	cmp	r2, #15
 8006c82:	f003 0301 	and.w	r3, r3, #1
 8006c86:	d822      	bhi.n	8006cce <_realloc_r+0x176>
 8006c88:	4333      	orrs	r3, r6
 8006c8a:	607b      	str	r3, [r7, #4]
 8006c8c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006c90:	f043 0301 	orr.w	r3, r3, #1
 8006c94:	f8c9 3004 	str.w	r3, [r9, #4]
 8006c98:	4640      	mov	r0, r8
 8006c9a:	f7ff fc4d 	bl	8006538 <__malloc_unlock>
 8006c9e:	46aa      	mov	sl, r5
 8006ca0:	4650      	mov	r0, sl
 8006ca2:	b003      	add	sp, #12
 8006ca4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ca8:	4611      	mov	r1, r2
 8006caa:	b003      	add	sp, #12
 8006cac:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006cb0:	f7ff b934 	b.w	8005f1c <_malloc_r>
 8006cb4:	f020 0003 	bic.w	r0, r0, #3
 8006cb8:	1833      	adds	r3, r6, r0
 8006cba:	428b      	cmp	r3, r1
 8006cbc:	db61      	blt.n	8006d82 <_realloc_r+0x22a>
 8006cbe:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006cc2:	461e      	mov	r6, r3
 8006cc4:	60ca      	str	r2, [r1, #12]
 8006cc6:	eb07 0903 	add.w	r9, r7, r3
 8006cca:	6091      	str	r1, [r2, #8]
 8006ccc:	e7d6      	b.n	8006c7c <_realloc_r+0x124>
 8006cce:	1939      	adds	r1, r7, r4
 8006cd0:	4323      	orrs	r3, r4
 8006cd2:	f042 0201 	orr.w	r2, r2, #1
 8006cd6:	607b      	str	r3, [r7, #4]
 8006cd8:	604a      	str	r2, [r1, #4]
 8006cda:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006cde:	f043 0301 	orr.w	r3, r3, #1
 8006ce2:	3108      	adds	r1, #8
 8006ce4:	f8c9 3004 	str.w	r3, [r9, #4]
 8006ce8:	4640      	mov	r0, r8
 8006cea:	f7fe fded 	bl	80058c8 <_free_r>
 8006cee:	e7d3      	b.n	8006c98 <_realloc_r+0x140>
 8006cf0:	6840      	ldr	r0, [r0, #4]
 8006cf2:	f020 0903 	bic.w	r9, r0, #3
 8006cf6:	44b1      	add	r9, r6
 8006cf8:	f104 0010 	add.w	r0, r4, #16
 8006cfc:	4581      	cmp	r9, r0
 8006cfe:	da77      	bge.n	8006df0 <_realloc_r+0x298>
 8006d00:	07d2      	lsls	r2, r2, #31
 8006d02:	f53f af56 	bmi.w	8006bb2 <_realloc_r+0x5a>
 8006d06:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006d0a:	eba7 0b02 	sub.w	fp, r7, r2
 8006d0e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006d12:	f022 0203 	bic.w	r2, r2, #3
 8006d16:	4491      	add	r9, r2
 8006d18:	4548      	cmp	r0, r9
 8006d1a:	dc87      	bgt.n	8006c2c <_realloc_r+0xd4>
 8006d1c:	46da      	mov	sl, fp
 8006d1e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006d22:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006d26:	1f32      	subs	r2, r6, #4
 8006d28:	2a24      	cmp	r2, #36	; 0x24
 8006d2a:	60c1      	str	r1, [r0, #12]
 8006d2c:	6088      	str	r0, [r1, #8]
 8006d2e:	f200 80a1 	bhi.w	8006e74 <_realloc_r+0x31c>
 8006d32:	2a13      	cmp	r2, #19
 8006d34:	6829      	ldr	r1, [r5, #0]
 8006d36:	f240 809b 	bls.w	8006e70 <_realloc_r+0x318>
 8006d3a:	f8cb 1008 	str.w	r1, [fp, #8]
 8006d3e:	6869      	ldr	r1, [r5, #4]
 8006d40:	f8cb 100c 	str.w	r1, [fp, #12]
 8006d44:	2a1b      	cmp	r2, #27
 8006d46:	68a9      	ldr	r1, [r5, #8]
 8006d48:	f200 809b 	bhi.w	8006e82 <_realloc_r+0x32a>
 8006d4c:	f10b 0210 	add.w	r2, fp, #16
 8006d50:	3508      	adds	r5, #8
 8006d52:	6011      	str	r1, [r2, #0]
 8006d54:	6869      	ldr	r1, [r5, #4]
 8006d56:	6051      	str	r1, [r2, #4]
 8006d58:	68a9      	ldr	r1, [r5, #8]
 8006d5a:	6091      	str	r1, [r2, #8]
 8006d5c:	eb0b 0104 	add.w	r1, fp, r4
 8006d60:	eba9 0204 	sub.w	r2, r9, r4
 8006d64:	f042 0201 	orr.w	r2, r2, #1
 8006d68:	6099      	str	r1, [r3, #8]
 8006d6a:	604a      	str	r2, [r1, #4]
 8006d6c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006d70:	f003 0301 	and.w	r3, r3, #1
 8006d74:	431c      	orrs	r4, r3
 8006d76:	4640      	mov	r0, r8
 8006d78:	f8cb 4004 	str.w	r4, [fp, #4]
 8006d7c:	f7ff fbdc 	bl	8006538 <__malloc_unlock>
 8006d80:	e78e      	b.n	8006ca0 <_realloc_r+0x148>
 8006d82:	07d3      	lsls	r3, r2, #31
 8006d84:	f53f af15 	bmi.w	8006bb2 <_realloc_r+0x5a>
 8006d88:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006d8c:	eba7 0b03 	sub.w	fp, r7, r3
 8006d90:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006d94:	f022 0203 	bic.w	r2, r2, #3
 8006d98:	4410      	add	r0, r2
 8006d9a:	1983      	adds	r3, r0, r6
 8006d9c:	428b      	cmp	r3, r1
 8006d9e:	f6ff af45 	blt.w	8006c2c <_realloc_r+0xd4>
 8006da2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006da6:	46da      	mov	sl, fp
 8006da8:	60ca      	str	r2, [r1, #12]
 8006daa:	6091      	str	r1, [r2, #8]
 8006dac:	e742      	b.n	8006c34 <_realloc_r+0xdc>
 8006dae:	6001      	str	r1, [r0, #0]
 8006db0:	686b      	ldr	r3, [r5, #4]
 8006db2:	6043      	str	r3, [r0, #4]
 8006db4:	2a1b      	cmp	r2, #27
 8006db6:	d83a      	bhi.n	8006e2e <_realloc_r+0x2d6>
 8006db8:	f105 0208 	add.w	r2, r5, #8
 8006dbc:	f100 0308 	add.w	r3, r0, #8
 8006dc0:	68a9      	ldr	r1, [r5, #8]
 8006dc2:	e710      	b.n	8006be6 <_realloc_r+0x8e>
 8006dc4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006dc8:	f023 0303 	bic.w	r3, r3, #3
 8006dcc:	441e      	add	r6, r3
 8006dce:	eb07 0906 	add.w	r9, r7, r6
 8006dd2:	e753      	b.n	8006c7c <_realloc_r+0x124>
 8006dd4:	4652      	mov	r2, sl
 8006dd6:	e749      	b.n	8006c6c <_realloc_r+0x114>
 8006dd8:	4629      	mov	r1, r5
 8006dda:	4650      	mov	r0, sl
 8006ddc:	461e      	mov	r6, r3
 8006dde:	465f      	mov	r7, fp
 8006de0:	f7ff fb40 	bl	8006464 <memmove>
 8006de4:	4655      	mov	r5, sl
 8006de6:	e749      	b.n	8006c7c <_realloc_r+0x124>
 8006de8:	4629      	mov	r1, r5
 8006dea:	f7ff fb3b 	bl	8006464 <memmove>
 8006dee:	e6ff      	b.n	8006bf0 <_realloc_r+0x98>
 8006df0:	4427      	add	r7, r4
 8006df2:	eba9 0904 	sub.w	r9, r9, r4
 8006df6:	f049 0201 	orr.w	r2, r9, #1
 8006dfa:	609f      	str	r7, [r3, #8]
 8006dfc:	607a      	str	r2, [r7, #4]
 8006dfe:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006e02:	f003 0301 	and.w	r3, r3, #1
 8006e06:	431c      	orrs	r4, r3
 8006e08:	4640      	mov	r0, r8
 8006e0a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006e0e:	f7ff fb93 	bl	8006538 <__malloc_unlock>
 8006e12:	46aa      	mov	sl, r5
 8006e14:	e744      	b.n	8006ca0 <_realloc_r+0x148>
 8006e16:	f8cb 1010 	str.w	r1, [fp, #16]
 8006e1a:	68e9      	ldr	r1, [r5, #12]
 8006e1c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006e20:	2a24      	cmp	r2, #36	; 0x24
 8006e22:	d010      	beq.n	8006e46 <_realloc_r+0x2ee>
 8006e24:	6929      	ldr	r1, [r5, #16]
 8006e26:	f10b 0218 	add.w	r2, fp, #24
 8006e2a:	3510      	adds	r5, #16
 8006e2c:	e71e      	b.n	8006c6c <_realloc_r+0x114>
 8006e2e:	68ab      	ldr	r3, [r5, #8]
 8006e30:	6083      	str	r3, [r0, #8]
 8006e32:	68eb      	ldr	r3, [r5, #12]
 8006e34:	60c3      	str	r3, [r0, #12]
 8006e36:	2a24      	cmp	r2, #36	; 0x24
 8006e38:	d010      	beq.n	8006e5c <_realloc_r+0x304>
 8006e3a:	f105 0210 	add.w	r2, r5, #16
 8006e3e:	f100 0310 	add.w	r3, r0, #16
 8006e42:	6929      	ldr	r1, [r5, #16]
 8006e44:	e6cf      	b.n	8006be6 <_realloc_r+0x8e>
 8006e46:	692a      	ldr	r2, [r5, #16]
 8006e48:	f8cb 2018 	str.w	r2, [fp, #24]
 8006e4c:	696a      	ldr	r2, [r5, #20]
 8006e4e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006e52:	69a9      	ldr	r1, [r5, #24]
 8006e54:	f10b 0220 	add.w	r2, fp, #32
 8006e58:	3518      	adds	r5, #24
 8006e5a:	e707      	b.n	8006c6c <_realloc_r+0x114>
 8006e5c:	692b      	ldr	r3, [r5, #16]
 8006e5e:	6103      	str	r3, [r0, #16]
 8006e60:	696b      	ldr	r3, [r5, #20]
 8006e62:	6143      	str	r3, [r0, #20]
 8006e64:	69a9      	ldr	r1, [r5, #24]
 8006e66:	f105 0218 	add.w	r2, r5, #24
 8006e6a:	f100 0318 	add.w	r3, r0, #24
 8006e6e:	e6ba      	b.n	8006be6 <_realloc_r+0x8e>
 8006e70:	4652      	mov	r2, sl
 8006e72:	e76e      	b.n	8006d52 <_realloc_r+0x1fa>
 8006e74:	4629      	mov	r1, r5
 8006e76:	4650      	mov	r0, sl
 8006e78:	9301      	str	r3, [sp, #4]
 8006e7a:	f7ff faf3 	bl	8006464 <memmove>
 8006e7e:	9b01      	ldr	r3, [sp, #4]
 8006e80:	e76c      	b.n	8006d5c <_realloc_r+0x204>
 8006e82:	f8cb 1010 	str.w	r1, [fp, #16]
 8006e86:	68e9      	ldr	r1, [r5, #12]
 8006e88:	f8cb 1014 	str.w	r1, [fp, #20]
 8006e8c:	2a24      	cmp	r2, #36	; 0x24
 8006e8e:	d004      	beq.n	8006e9a <_realloc_r+0x342>
 8006e90:	6929      	ldr	r1, [r5, #16]
 8006e92:	f10b 0218 	add.w	r2, fp, #24
 8006e96:	3510      	adds	r5, #16
 8006e98:	e75b      	b.n	8006d52 <_realloc_r+0x1fa>
 8006e9a:	692a      	ldr	r2, [r5, #16]
 8006e9c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006ea0:	696a      	ldr	r2, [r5, #20]
 8006ea2:	f8cb 201c 	str.w	r2, [fp, #28]
 8006ea6:	69a9      	ldr	r1, [r5, #24]
 8006ea8:	f10b 0220 	add.w	r2, fp, #32
 8006eac:	3518      	adds	r5, #24
 8006eae:	e750      	b.n	8006d52 <_realloc_r+0x1fa>
 8006eb0:	2000047c 	.word	0x2000047c

08006eb4 <frexp>:
 8006eb4:	ec53 2b10 	vmov	r2, r3, d0
 8006eb8:	b570      	push	{r4, r5, r6, lr}
 8006eba:	4e16      	ldr	r6, [pc, #88]	; (8006f14 <frexp+0x60>)
 8006ebc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006ec0:	2500      	movs	r5, #0
 8006ec2:	42b1      	cmp	r1, r6
 8006ec4:	4604      	mov	r4, r0
 8006ec6:	6005      	str	r5, [r0, #0]
 8006ec8:	dc21      	bgt.n	8006f0e <frexp+0x5a>
 8006eca:	ee10 6a10 	vmov	r6, s0
 8006ece:	430e      	orrs	r6, r1
 8006ed0:	d01d      	beq.n	8006f0e <frexp+0x5a>
 8006ed2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006ed6:	4618      	mov	r0, r3
 8006ed8:	da0c      	bge.n	8006ef4 <frexp+0x40>
 8006eda:	4619      	mov	r1, r3
 8006edc:	2200      	movs	r2, #0
 8006ede:	ee10 0a10 	vmov	r0, s0
 8006ee2:	4b0d      	ldr	r3, [pc, #52]	; (8006f18 <frexp+0x64>)
 8006ee4:	f7f9 fe88 	bl	8000bf8 <__aeabi_dmul>
 8006ee8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006eec:	4602      	mov	r2, r0
 8006eee:	4608      	mov	r0, r1
 8006ef0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006ef4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006ef8:	1509      	asrs	r1, r1, #20
 8006efa:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006efe:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006f02:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006f06:	4429      	add	r1, r5
 8006f08:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006f0c:	6021      	str	r1, [r4, #0]
 8006f0e:	ec43 2b10 	vmov	d0, r2, r3
 8006f12:	bd70      	pop	{r4, r5, r6, pc}
 8006f14:	7fefffff 	.word	0x7fefffff
 8006f18:	43500000 	.word	0x43500000

08006f1c <_sbrk_r>:
 8006f1c:	b538      	push	{r3, r4, r5, lr}
 8006f1e:	4c07      	ldr	r4, [pc, #28]	; (8006f3c <_sbrk_r+0x20>)
 8006f20:	2300      	movs	r3, #0
 8006f22:	4605      	mov	r5, r0
 8006f24:	4608      	mov	r0, r1
 8006f26:	6023      	str	r3, [r4, #0]
 8006f28:	f7fb fc35 	bl	8002796 <_sbrk>
 8006f2c:	1c43      	adds	r3, r0, #1
 8006f2e:	d000      	beq.n	8006f32 <_sbrk_r+0x16>
 8006f30:	bd38      	pop	{r3, r4, r5, pc}
 8006f32:	6823      	ldr	r3, [r4, #0]
 8006f34:	2b00      	cmp	r3, #0
 8006f36:	d0fb      	beq.n	8006f30 <_sbrk_r+0x14>
 8006f38:	602b      	str	r3, [r5, #0]
 8006f3a:	bd38      	pop	{r3, r4, r5, pc}
 8006f3c:	20001588 	.word	0x20001588

08006f40 <__sread>:
 8006f40:	b510      	push	{r4, lr}
 8006f42:	460c      	mov	r4, r1
 8006f44:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006f48:	f000 fabc 	bl	80074c4 <_read_r>
 8006f4c:	2800      	cmp	r0, #0
 8006f4e:	db03      	blt.n	8006f58 <__sread+0x18>
 8006f50:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006f52:	4403      	add	r3, r0
 8006f54:	6523      	str	r3, [r4, #80]	; 0x50
 8006f56:	bd10      	pop	{r4, pc}
 8006f58:	89a3      	ldrh	r3, [r4, #12]
 8006f5a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006f5e:	81a3      	strh	r3, [r4, #12]
 8006f60:	bd10      	pop	{r4, pc}
 8006f62:	bf00      	nop

08006f64 <__swrite>:
 8006f64:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006f68:	4616      	mov	r6, r2
 8006f6a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006f6e:	461f      	mov	r7, r3
 8006f70:	05d3      	lsls	r3, r2, #23
 8006f72:	460c      	mov	r4, r1
 8006f74:	4605      	mov	r5, r0
 8006f76:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006f7a:	d507      	bpl.n	8006f8c <__swrite+0x28>
 8006f7c:	2200      	movs	r2, #0
 8006f7e:	2302      	movs	r3, #2
 8006f80:	f000 fa74 	bl	800746c <_lseek_r>
 8006f84:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f88:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006f8c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006f90:	81a2      	strh	r2, [r4, #12]
 8006f92:	463b      	mov	r3, r7
 8006f94:	4632      	mov	r2, r6
 8006f96:	4628      	mov	r0, r5
 8006f98:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006f9c:	f000 b88c 	b.w	80070b8 <_write_r>

08006fa0 <__sseek>:
 8006fa0:	b510      	push	{r4, lr}
 8006fa2:	460c      	mov	r4, r1
 8006fa4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006fa8:	f000 fa60 	bl	800746c <_lseek_r>
 8006fac:	89a3      	ldrh	r3, [r4, #12]
 8006fae:	1c42      	adds	r2, r0, #1
 8006fb0:	bf0e      	itee	eq
 8006fb2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006fb6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006fba:	6520      	strne	r0, [r4, #80]	; 0x50
 8006fbc:	81a3      	strh	r3, [r4, #12]
 8006fbe:	bd10      	pop	{r4, pc}

08006fc0 <__sclose>:
 8006fc0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006fc4:	f000 b922 	b.w	800720c <_close_r>

08006fc8 <strncpy>:
 8006fc8:	ea40 0301 	orr.w	r3, r0, r1
 8006fcc:	079b      	lsls	r3, r3, #30
 8006fce:	b470      	push	{r4, r5, r6}
 8006fd0:	d12a      	bne.n	8007028 <strncpy+0x60>
 8006fd2:	2a03      	cmp	r2, #3
 8006fd4:	d928      	bls.n	8007028 <strncpy+0x60>
 8006fd6:	460c      	mov	r4, r1
 8006fd8:	4603      	mov	r3, r0
 8006fda:	4621      	mov	r1, r4
 8006fdc:	f854 6b04 	ldr.w	r6, [r4], #4
 8006fe0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006fe4:	ea25 0506 	bic.w	r5, r5, r6
 8006fe8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006fec:	d106      	bne.n	8006ffc <strncpy+0x34>
 8006fee:	3a04      	subs	r2, #4
 8006ff0:	2a03      	cmp	r2, #3
 8006ff2:	f843 6b04 	str.w	r6, [r3], #4
 8006ff6:	4621      	mov	r1, r4
 8006ff8:	d8ef      	bhi.n	8006fda <strncpy+0x12>
 8006ffa:	b19a      	cbz	r2, 8007024 <strncpy+0x5c>
 8006ffc:	780c      	ldrb	r4, [r1, #0]
 8006ffe:	701c      	strb	r4, [r3, #0]
 8007000:	3a01      	subs	r2, #1
 8007002:	3301      	adds	r3, #1
 8007004:	b13c      	cbz	r4, 8007016 <strncpy+0x4e>
 8007006:	b16a      	cbz	r2, 8007024 <strncpy+0x5c>
 8007008:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 800700c:	f803 4b01 	strb.w	r4, [r3], #1
 8007010:	3a01      	subs	r2, #1
 8007012:	2c00      	cmp	r4, #0
 8007014:	d1f7      	bne.n	8007006 <strncpy+0x3e>
 8007016:	b12a      	cbz	r2, 8007024 <strncpy+0x5c>
 8007018:	441a      	add	r2, r3
 800701a:	2100      	movs	r1, #0
 800701c:	f803 1b01 	strb.w	r1, [r3], #1
 8007020:	4293      	cmp	r3, r2
 8007022:	d1fb      	bne.n	800701c <strncpy+0x54>
 8007024:	bc70      	pop	{r4, r5, r6}
 8007026:	4770      	bx	lr
 8007028:	4603      	mov	r3, r0
 800702a:	e7e6      	b.n	8006ffa <strncpy+0x32>

0800702c <__sprint_r.part.0>:
 800702c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007030:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8007032:	049c      	lsls	r4, r3, #18
 8007034:	4692      	mov	sl, r2
 8007036:	d52d      	bpl.n	8007094 <__sprint_r.part.0+0x68>
 8007038:	6893      	ldr	r3, [r2, #8]
 800703a:	6812      	ldr	r2, [r2, #0]
 800703c:	b343      	cbz	r3, 8007090 <__sprint_r.part.0+0x64>
 800703e:	460e      	mov	r6, r1
 8007040:	4607      	mov	r7, r0
 8007042:	f102 0908 	add.w	r9, r2, #8
 8007046:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800704a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800704e:	d015      	beq.n	800707c <__sprint_r.part.0+0x50>
 8007050:	3d04      	subs	r5, #4
 8007052:	2400      	movs	r4, #0
 8007054:	e001      	b.n	800705a <__sprint_r.part.0+0x2e>
 8007056:	45a0      	cmp	r8, r4
 8007058:	d00e      	beq.n	8007078 <__sprint_r.part.0+0x4c>
 800705a:	4632      	mov	r2, r6
 800705c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007060:	4638      	mov	r0, r7
 8007062:	f000 f99d 	bl	80073a0 <_fputwc_r>
 8007066:	1c43      	adds	r3, r0, #1
 8007068:	f104 0401 	add.w	r4, r4, #1
 800706c:	d1f3      	bne.n	8007056 <__sprint_r.part.0+0x2a>
 800706e:	2300      	movs	r3, #0
 8007070:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8007074:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007078:	f8da 3008 	ldr.w	r3, [sl, #8]
 800707c:	f02b 0b03 	bic.w	fp, fp, #3
 8007080:	eba3 030b 	sub.w	r3, r3, fp
 8007084:	f8ca 3008 	str.w	r3, [sl, #8]
 8007088:	f109 0908 	add.w	r9, r9, #8
 800708c:	2b00      	cmp	r3, #0
 800708e:	d1da      	bne.n	8007046 <__sprint_r.part.0+0x1a>
 8007090:	2000      	movs	r0, #0
 8007092:	e7ec      	b.n	800706e <__sprint_r.part.0+0x42>
 8007094:	f7fe fd0c 	bl	8005ab0 <__sfvwrite_r>
 8007098:	2300      	movs	r3, #0
 800709a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800709e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80070a2:	bf00      	nop

080070a4 <__sprint_r>:
 80070a4:	6893      	ldr	r3, [r2, #8]
 80070a6:	b10b      	cbz	r3, 80070ac <__sprint_r+0x8>
 80070a8:	f7ff bfc0 	b.w	800702c <__sprint_r.part.0>
 80070ac:	b410      	push	{r4}
 80070ae:	4618      	mov	r0, r3
 80070b0:	6053      	str	r3, [r2, #4]
 80070b2:	f85d 4b04 	ldr.w	r4, [sp], #4
 80070b6:	4770      	bx	lr

080070b8 <_write_r>:
 80070b8:	b570      	push	{r4, r5, r6, lr}
 80070ba:	460d      	mov	r5, r1
 80070bc:	4c08      	ldr	r4, [pc, #32]	; (80070e0 <_write_r+0x28>)
 80070be:	4611      	mov	r1, r2
 80070c0:	4606      	mov	r6, r0
 80070c2:	461a      	mov	r2, r3
 80070c4:	4628      	mov	r0, r5
 80070c6:	2300      	movs	r3, #0
 80070c8:	6023      	str	r3, [r4, #0]
 80070ca:	f7fb fb51 	bl	8002770 <_write>
 80070ce:	1c43      	adds	r3, r0, #1
 80070d0:	d000      	beq.n	80070d4 <_write_r+0x1c>
 80070d2:	bd70      	pop	{r4, r5, r6, pc}
 80070d4:	6823      	ldr	r3, [r4, #0]
 80070d6:	2b00      	cmp	r3, #0
 80070d8:	d0fb      	beq.n	80070d2 <_write_r+0x1a>
 80070da:	6033      	str	r3, [r6, #0]
 80070dc:	bd70      	pop	{r4, r5, r6, pc}
 80070de:	bf00      	nop
 80070e0:	20001588 	.word	0x20001588

080070e4 <__register_exitproc>:
 80070e4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80070e8:	4d2b      	ldr	r5, [pc, #172]	; (8007198 <__register_exitproc+0xb4>)
 80070ea:	4606      	mov	r6, r0
 80070ec:	6828      	ldr	r0, [r5, #0]
 80070ee:	4698      	mov	r8, r3
 80070f0:	460f      	mov	r7, r1
 80070f2:	4691      	mov	r9, r2
 80070f4:	f7fe fe96 	bl	8005e24 <__retarget_lock_acquire_recursive>
 80070f8:	4b28      	ldr	r3, [pc, #160]	; (800719c <__register_exitproc+0xb8>)
 80070fa:	681c      	ldr	r4, [r3, #0]
 80070fc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007100:	2b00      	cmp	r3, #0
 8007102:	d03d      	beq.n	8007180 <__register_exitproc+0x9c>
 8007104:	685a      	ldr	r2, [r3, #4]
 8007106:	2a1f      	cmp	r2, #31
 8007108:	dc0d      	bgt.n	8007126 <__register_exitproc+0x42>
 800710a:	f102 0c01 	add.w	ip, r2, #1
 800710e:	bb16      	cbnz	r6, 8007156 <__register_exitproc+0x72>
 8007110:	3202      	adds	r2, #2
 8007112:	f8c3 c004 	str.w	ip, [r3, #4]
 8007116:	6828      	ldr	r0, [r5, #0]
 8007118:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800711c:	f7fe fe84 	bl	8005e28 <__retarget_lock_release_recursive>
 8007120:	2000      	movs	r0, #0
 8007122:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007126:	4b1e      	ldr	r3, [pc, #120]	; (80071a0 <__register_exitproc+0xbc>)
 8007128:	b37b      	cbz	r3, 800718a <__register_exitproc+0xa6>
 800712a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800712e:	f3af 8000 	nop.w
 8007132:	4603      	mov	r3, r0
 8007134:	b348      	cbz	r0, 800718a <__register_exitproc+0xa6>
 8007136:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800713a:	2100      	movs	r1, #0
 800713c:	e9c0 2100 	strd	r2, r1, [r0]
 8007140:	f04f 0c01 	mov.w	ip, #1
 8007144:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007148:	460a      	mov	r2, r1
 800714a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800714e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8007152:	2e00      	cmp	r6, #0
 8007154:	d0dc      	beq.n	8007110 <__register_exitproc+0x2c>
 8007156:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800715a:	2401      	movs	r4, #1
 800715c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007160:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8007164:	4094      	lsls	r4, r2
 8007166:	4320      	orrs	r0, r4
 8007168:	2e02      	cmp	r6, #2
 800716a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800716e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8007172:	d1cd      	bne.n	8007110 <__register_exitproc+0x2c>
 8007174:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007178:	430c      	orrs	r4, r1
 800717a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800717e:	e7c7      	b.n	8007110 <__register_exitproc+0x2c>
 8007180:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8007184:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8007188:	e7bc      	b.n	8007104 <__register_exitproc+0x20>
 800718a:	6828      	ldr	r0, [r5, #0]
 800718c:	f7fe fe4c 	bl	8005e28 <__retarget_lock_release_recursive>
 8007190:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007194:	e7c5      	b.n	8007122 <__register_exitproc+0x3e>
 8007196:	bf00      	nop
 8007198:	20000478 	.word	0x20000478
 800719c:	08007774 	.word	0x08007774
 80071a0:	00000000 	.word	0x00000000

080071a4 <_calloc_r>:
 80071a4:	b510      	push	{r4, lr}
 80071a6:	fb02 f101 	mul.w	r1, r2, r1
 80071aa:	f7fe feb7 	bl	8005f1c <_malloc_r>
 80071ae:	4604      	mov	r4, r0
 80071b0:	b1d8      	cbz	r0, 80071ea <_calloc_r+0x46>
 80071b2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80071b6:	f022 0203 	bic.w	r2, r2, #3
 80071ba:	3a04      	subs	r2, #4
 80071bc:	2a24      	cmp	r2, #36	; 0x24
 80071be:	d81d      	bhi.n	80071fc <_calloc_r+0x58>
 80071c0:	2a13      	cmp	r2, #19
 80071c2:	d914      	bls.n	80071ee <_calloc_r+0x4a>
 80071c4:	2300      	movs	r3, #0
 80071c6:	2a1b      	cmp	r2, #27
 80071c8:	e9c0 3300 	strd	r3, r3, [r0]
 80071cc:	d91b      	bls.n	8007206 <_calloc_r+0x62>
 80071ce:	2a24      	cmp	r2, #36	; 0x24
 80071d0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80071d4:	bf0a      	itet	eq
 80071d6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 80071da:	f100 0210 	addne.w	r2, r0, #16
 80071de:	f100 0218 	addeq.w	r2, r0, #24
 80071e2:	2300      	movs	r3, #0
 80071e4:	e9c2 3300 	strd	r3, r3, [r2]
 80071e8:	6093      	str	r3, [r2, #8]
 80071ea:	4620      	mov	r0, r4
 80071ec:	bd10      	pop	{r4, pc}
 80071ee:	4602      	mov	r2, r0
 80071f0:	2300      	movs	r3, #0
 80071f2:	e9c2 3300 	strd	r3, r3, [r2]
 80071f6:	6093      	str	r3, [r2, #8]
 80071f8:	4620      	mov	r0, r4
 80071fa:	bd10      	pop	{r4, pc}
 80071fc:	2100      	movs	r1, #0
 80071fe:	f7fb fb6f 	bl	80028e0 <memset>
 8007202:	4620      	mov	r0, r4
 8007204:	bd10      	pop	{r4, pc}
 8007206:	f100 0208 	add.w	r2, r0, #8
 800720a:	e7f1      	b.n	80071f0 <_calloc_r+0x4c>

0800720c <_close_r>:
 800720c:	b538      	push	{r3, r4, r5, lr}
 800720e:	4c07      	ldr	r4, [pc, #28]	; (800722c <_close_r+0x20>)
 8007210:	2300      	movs	r3, #0
 8007212:	4605      	mov	r5, r0
 8007214:	4608      	mov	r0, r1
 8007216:	6023      	str	r3, [r4, #0]
 8007218:	f7fb fad9 	bl	80027ce <_close>
 800721c:	1c43      	adds	r3, r0, #1
 800721e:	d000      	beq.n	8007222 <_close_r+0x16>
 8007220:	bd38      	pop	{r3, r4, r5, pc}
 8007222:	6823      	ldr	r3, [r4, #0]
 8007224:	2b00      	cmp	r3, #0
 8007226:	d0fb      	beq.n	8007220 <_close_r+0x14>
 8007228:	602b      	str	r3, [r5, #0]
 800722a:	bd38      	pop	{r3, r4, r5, pc}
 800722c:	20001588 	.word	0x20001588

08007230 <_fclose_r>:
 8007230:	b570      	push	{r4, r5, r6, lr}
 8007232:	2900      	cmp	r1, #0
 8007234:	d048      	beq.n	80072c8 <_fclose_r+0x98>
 8007236:	4605      	mov	r5, r0
 8007238:	460c      	mov	r4, r1
 800723a:	b110      	cbz	r0, 8007242 <_fclose_r+0x12>
 800723c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800723e:	2b00      	cmp	r3, #0
 8007240:	d048      	beq.n	80072d4 <_fclose_r+0xa4>
 8007242:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007244:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007248:	07d0      	lsls	r0, r2, #31
 800724a:	d440      	bmi.n	80072ce <_fclose_r+0x9e>
 800724c:	0599      	lsls	r1, r3, #22
 800724e:	d530      	bpl.n	80072b2 <_fclose_r+0x82>
 8007250:	4621      	mov	r1, r4
 8007252:	4628      	mov	r0, r5
 8007254:	f7fe f990 	bl	8005578 <__sflush_r>
 8007258:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800725a:	4606      	mov	r6, r0
 800725c:	b133      	cbz	r3, 800726c <_fclose_r+0x3c>
 800725e:	69e1      	ldr	r1, [r4, #28]
 8007260:	4628      	mov	r0, r5
 8007262:	4798      	blx	r3
 8007264:	2800      	cmp	r0, #0
 8007266:	bfb8      	it	lt
 8007268:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800726c:	89a3      	ldrh	r3, [r4, #12]
 800726e:	061a      	lsls	r2, r3, #24
 8007270:	d43c      	bmi.n	80072ec <_fclose_r+0xbc>
 8007272:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007274:	b141      	cbz	r1, 8007288 <_fclose_r+0x58>
 8007276:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800727a:	4299      	cmp	r1, r3
 800727c:	d002      	beq.n	8007284 <_fclose_r+0x54>
 800727e:	4628      	mov	r0, r5
 8007280:	f7fe fb22 	bl	80058c8 <_free_r>
 8007284:	2300      	movs	r3, #0
 8007286:	6323      	str	r3, [r4, #48]	; 0x30
 8007288:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800728a:	b121      	cbz	r1, 8007296 <_fclose_r+0x66>
 800728c:	4628      	mov	r0, r5
 800728e:	f7fe fb1b 	bl	80058c8 <_free_r>
 8007292:	2300      	movs	r3, #0
 8007294:	6463      	str	r3, [r4, #68]	; 0x44
 8007296:	f7fe faa1 	bl	80057dc <__sfp_lock_acquire>
 800729a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800729c:	2200      	movs	r2, #0
 800729e:	07db      	lsls	r3, r3, #31
 80072a0:	81a2      	strh	r2, [r4, #12]
 80072a2:	d51f      	bpl.n	80072e4 <_fclose_r+0xb4>
 80072a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072a6:	f7fe fdbb 	bl	8005e20 <__retarget_lock_close_recursive>
 80072aa:	f7fe fa9d 	bl	80057e8 <__sfp_lock_release>
 80072ae:	4630      	mov	r0, r6
 80072b0:	bd70      	pop	{r4, r5, r6, pc}
 80072b2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072b4:	f7fe fdb6 	bl	8005e24 <__retarget_lock_acquire_recursive>
 80072b8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80072bc:	2b00      	cmp	r3, #0
 80072be:	d1c7      	bne.n	8007250 <_fclose_r+0x20>
 80072c0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80072c2:	f016 0601 	ands.w	r6, r6, #1
 80072c6:	d016      	beq.n	80072f6 <_fclose_r+0xc6>
 80072c8:	2600      	movs	r6, #0
 80072ca:	4630      	mov	r0, r6
 80072cc:	bd70      	pop	{r4, r5, r6, pc}
 80072ce:	2b00      	cmp	r3, #0
 80072d0:	d0fa      	beq.n	80072c8 <_fclose_r+0x98>
 80072d2:	e7bd      	b.n	8007250 <_fclose_r+0x20>
 80072d4:	f7fe fa56 	bl	8005784 <__sinit>
 80072d8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80072da:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80072de:	07d0      	lsls	r0, r2, #31
 80072e0:	d4f5      	bmi.n	80072ce <_fclose_r+0x9e>
 80072e2:	e7b3      	b.n	800724c <_fclose_r+0x1c>
 80072e4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072e6:	f7fe fd9f 	bl	8005e28 <__retarget_lock_release_recursive>
 80072ea:	e7db      	b.n	80072a4 <_fclose_r+0x74>
 80072ec:	6921      	ldr	r1, [r4, #16]
 80072ee:	4628      	mov	r0, r5
 80072f0:	f7fe faea 	bl	80058c8 <_free_r>
 80072f4:	e7bd      	b.n	8007272 <_fclose_r+0x42>
 80072f6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072f8:	f7fe fd96 	bl	8005e28 <__retarget_lock_release_recursive>
 80072fc:	4630      	mov	r0, r6
 80072fe:	bd70      	pop	{r4, r5, r6, pc}

08007300 <__fputwc>:
 8007300:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007304:	b082      	sub	sp, #8
 8007306:	4681      	mov	r9, r0
 8007308:	4688      	mov	r8, r1
 800730a:	4614      	mov	r4, r2
 800730c:	f000 f8a0 	bl	8007450 <__locale_mb_cur_max>
 8007310:	2801      	cmp	r0, #1
 8007312:	d103      	bne.n	800731c <__fputwc+0x1c>
 8007314:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007318:	2bfe      	cmp	r3, #254	; 0xfe
 800731a:	d933      	bls.n	8007384 <__fputwc+0x84>
 800731c:	4642      	mov	r2, r8
 800731e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007322:	a901      	add	r1, sp, #4
 8007324:	4648      	mov	r0, r9
 8007326:	f000 f93b 	bl	80075a0 <_wcrtomb_r>
 800732a:	1c42      	adds	r2, r0, #1
 800732c:	4606      	mov	r6, r0
 800732e:	d02f      	beq.n	8007390 <__fputwc+0x90>
 8007330:	b320      	cbz	r0, 800737c <__fputwc+0x7c>
 8007332:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007336:	2500      	movs	r5, #0
 8007338:	f10d 0a04 	add.w	sl, sp, #4
 800733c:	e009      	b.n	8007352 <__fputwc+0x52>
 800733e:	6823      	ldr	r3, [r4, #0]
 8007340:	1c5a      	adds	r2, r3, #1
 8007342:	6022      	str	r2, [r4, #0]
 8007344:	f883 c000 	strb.w	ip, [r3]
 8007348:	3501      	adds	r5, #1
 800734a:	42b5      	cmp	r5, r6
 800734c:	d216      	bcs.n	800737c <__fputwc+0x7c>
 800734e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007352:	68a3      	ldr	r3, [r4, #8]
 8007354:	3b01      	subs	r3, #1
 8007356:	2b00      	cmp	r3, #0
 8007358:	60a3      	str	r3, [r4, #8]
 800735a:	daf0      	bge.n	800733e <__fputwc+0x3e>
 800735c:	69a7      	ldr	r7, [r4, #24]
 800735e:	42bb      	cmp	r3, r7
 8007360:	4661      	mov	r1, ip
 8007362:	4622      	mov	r2, r4
 8007364:	4648      	mov	r0, r9
 8007366:	db02      	blt.n	800736e <__fputwc+0x6e>
 8007368:	f1bc 0f0a 	cmp.w	ip, #10
 800736c:	d1e7      	bne.n	800733e <__fputwc+0x3e>
 800736e:	f000 f8bf 	bl	80074f0 <__swbuf_r>
 8007372:	1c43      	adds	r3, r0, #1
 8007374:	d1e8      	bne.n	8007348 <__fputwc+0x48>
 8007376:	b002      	add	sp, #8
 8007378:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800737c:	4640      	mov	r0, r8
 800737e:	b002      	add	sp, #8
 8007380:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007384:	fa5f fc88 	uxtb.w	ip, r8
 8007388:	4606      	mov	r6, r0
 800738a:	f88d c004 	strb.w	ip, [sp, #4]
 800738e:	e7d2      	b.n	8007336 <__fputwc+0x36>
 8007390:	89a3      	ldrh	r3, [r4, #12]
 8007392:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007396:	81a3      	strh	r3, [r4, #12]
 8007398:	b002      	add	sp, #8
 800739a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800739e:	bf00      	nop

080073a0 <_fputwc_r>:
 80073a0:	b530      	push	{r4, r5, lr}
 80073a2:	4605      	mov	r5, r0
 80073a4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80073a6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80073aa:	07c0      	lsls	r0, r0, #31
 80073ac:	4614      	mov	r4, r2
 80073ae:	b083      	sub	sp, #12
 80073b0:	b29a      	uxth	r2, r3
 80073b2:	d401      	bmi.n	80073b8 <_fputwc_r+0x18>
 80073b4:	0590      	lsls	r0, r2, #22
 80073b6:	d51c      	bpl.n	80073f2 <_fputwc_r+0x52>
 80073b8:	0490      	lsls	r0, r2, #18
 80073ba:	d406      	bmi.n	80073ca <_fputwc_r+0x2a>
 80073bc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80073be:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80073c2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80073c6:	81a3      	strh	r3, [r4, #12]
 80073c8:	6662      	str	r2, [r4, #100]	; 0x64
 80073ca:	4628      	mov	r0, r5
 80073cc:	4622      	mov	r2, r4
 80073ce:	f7ff ff97 	bl	8007300 <__fputwc>
 80073d2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80073d4:	07da      	lsls	r2, r3, #31
 80073d6:	4605      	mov	r5, r0
 80073d8:	d402      	bmi.n	80073e0 <_fputwc_r+0x40>
 80073da:	89a3      	ldrh	r3, [r4, #12]
 80073dc:	059b      	lsls	r3, r3, #22
 80073de:	d502      	bpl.n	80073e6 <_fputwc_r+0x46>
 80073e0:	4628      	mov	r0, r5
 80073e2:	b003      	add	sp, #12
 80073e4:	bd30      	pop	{r4, r5, pc}
 80073e6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80073e8:	f7fe fd1e 	bl	8005e28 <__retarget_lock_release_recursive>
 80073ec:	4628      	mov	r0, r5
 80073ee:	b003      	add	sp, #12
 80073f0:	bd30      	pop	{r4, r5, pc}
 80073f2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80073f4:	9101      	str	r1, [sp, #4]
 80073f6:	f7fe fd15 	bl	8005e24 <__retarget_lock_acquire_recursive>
 80073fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80073fe:	9901      	ldr	r1, [sp, #4]
 8007400:	b29a      	uxth	r2, r3
 8007402:	e7d9      	b.n	80073b8 <_fputwc_r+0x18>

08007404 <_fstat_r>:
 8007404:	b538      	push	{r3, r4, r5, lr}
 8007406:	460b      	mov	r3, r1
 8007408:	4c07      	ldr	r4, [pc, #28]	; (8007428 <_fstat_r+0x24>)
 800740a:	4605      	mov	r5, r0
 800740c:	4611      	mov	r1, r2
 800740e:	4618      	mov	r0, r3
 8007410:	2300      	movs	r3, #0
 8007412:	6023      	str	r3, [r4, #0]
 8007414:	f7fb f9de 	bl	80027d4 <_fstat>
 8007418:	1c43      	adds	r3, r0, #1
 800741a:	d000      	beq.n	800741e <_fstat_r+0x1a>
 800741c:	bd38      	pop	{r3, r4, r5, pc}
 800741e:	6823      	ldr	r3, [r4, #0]
 8007420:	2b00      	cmp	r3, #0
 8007422:	d0fb      	beq.n	800741c <_fstat_r+0x18>
 8007424:	602b      	str	r3, [r5, #0]
 8007426:	bd38      	pop	{r3, r4, r5, pc}
 8007428:	20001588 	.word	0x20001588

0800742c <_isatty_r>:
 800742c:	b538      	push	{r3, r4, r5, lr}
 800742e:	4c07      	ldr	r4, [pc, #28]	; (800744c <_isatty_r+0x20>)
 8007430:	2300      	movs	r3, #0
 8007432:	4605      	mov	r5, r0
 8007434:	4608      	mov	r0, r1
 8007436:	6023      	str	r3, [r4, #0]
 8007438:	f7fb f9d1 	bl	80027de <_isatty>
 800743c:	1c43      	adds	r3, r0, #1
 800743e:	d000      	beq.n	8007442 <_isatty_r+0x16>
 8007440:	bd38      	pop	{r3, r4, r5, pc}
 8007442:	6823      	ldr	r3, [r4, #0]
 8007444:	2b00      	cmp	r3, #0
 8007446:	d0fb      	beq.n	8007440 <_isatty_r+0x14>
 8007448:	602b      	str	r3, [r5, #0]
 800744a:	bd38      	pop	{r3, r4, r5, pc}
 800744c:	20001588 	.word	0x20001588

08007450 <__locale_mb_cur_max>:
 8007450:	4b04      	ldr	r3, [pc, #16]	; (8007464 <__locale_mb_cur_max+0x14>)
 8007452:	4a05      	ldr	r2, [pc, #20]	; (8007468 <__locale_mb_cur_max+0x18>)
 8007454:	681b      	ldr	r3, [r3, #0]
 8007456:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007458:	2b00      	cmp	r3, #0
 800745a:	bf08      	it	eq
 800745c:	4613      	moveq	r3, r2
 800745e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007462:	4770      	bx	lr
 8007464:	2000004c 	.word	0x2000004c
 8007468:	2000088c 	.word	0x2000088c

0800746c <_lseek_r>:
 800746c:	b570      	push	{r4, r5, r6, lr}
 800746e:	460d      	mov	r5, r1
 8007470:	4c08      	ldr	r4, [pc, #32]	; (8007494 <_lseek_r+0x28>)
 8007472:	4611      	mov	r1, r2
 8007474:	4606      	mov	r6, r0
 8007476:	461a      	mov	r2, r3
 8007478:	4628      	mov	r0, r5
 800747a:	2300      	movs	r3, #0
 800747c:	6023      	str	r3, [r4, #0]
 800747e:	f7fb f9b0 	bl	80027e2 <_lseek>
 8007482:	1c43      	adds	r3, r0, #1
 8007484:	d000      	beq.n	8007488 <_lseek_r+0x1c>
 8007486:	bd70      	pop	{r4, r5, r6, pc}
 8007488:	6823      	ldr	r3, [r4, #0]
 800748a:	2b00      	cmp	r3, #0
 800748c:	d0fb      	beq.n	8007486 <_lseek_r+0x1a>
 800748e:	6033      	str	r3, [r6, #0]
 8007490:	bd70      	pop	{r4, r5, r6, pc}
 8007492:	bf00      	nop
 8007494:	20001588 	.word	0x20001588

08007498 <__ascii_mbtowc>:
 8007498:	b082      	sub	sp, #8
 800749a:	b149      	cbz	r1, 80074b0 <__ascii_mbtowc+0x18>
 800749c:	b15a      	cbz	r2, 80074b6 <__ascii_mbtowc+0x1e>
 800749e:	b16b      	cbz	r3, 80074bc <__ascii_mbtowc+0x24>
 80074a0:	7813      	ldrb	r3, [r2, #0]
 80074a2:	600b      	str	r3, [r1, #0]
 80074a4:	7812      	ldrb	r2, [r2, #0]
 80074a6:	1c10      	adds	r0, r2, #0
 80074a8:	bf18      	it	ne
 80074aa:	2001      	movne	r0, #1
 80074ac:	b002      	add	sp, #8
 80074ae:	4770      	bx	lr
 80074b0:	a901      	add	r1, sp, #4
 80074b2:	2a00      	cmp	r2, #0
 80074b4:	d1f3      	bne.n	800749e <__ascii_mbtowc+0x6>
 80074b6:	4610      	mov	r0, r2
 80074b8:	b002      	add	sp, #8
 80074ba:	4770      	bx	lr
 80074bc:	f06f 0001 	mvn.w	r0, #1
 80074c0:	e7f4      	b.n	80074ac <__ascii_mbtowc+0x14>
 80074c2:	bf00      	nop

080074c4 <_read_r>:
 80074c4:	b570      	push	{r4, r5, r6, lr}
 80074c6:	460d      	mov	r5, r1
 80074c8:	4c08      	ldr	r4, [pc, #32]	; (80074ec <_read_r+0x28>)
 80074ca:	4611      	mov	r1, r2
 80074cc:	4606      	mov	r6, r0
 80074ce:	461a      	mov	r2, r3
 80074d0:	4628      	mov	r0, r5
 80074d2:	2300      	movs	r3, #0
 80074d4:	6023      	str	r3, [r4, #0]
 80074d6:	f7fb f938 	bl	800274a <_read>
 80074da:	1c43      	adds	r3, r0, #1
 80074dc:	d000      	beq.n	80074e0 <_read_r+0x1c>
 80074de:	bd70      	pop	{r4, r5, r6, pc}
 80074e0:	6823      	ldr	r3, [r4, #0]
 80074e2:	2b00      	cmp	r3, #0
 80074e4:	d0fb      	beq.n	80074de <_read_r+0x1a>
 80074e6:	6033      	str	r3, [r6, #0]
 80074e8:	bd70      	pop	{r4, r5, r6, pc}
 80074ea:	bf00      	nop
 80074ec:	20001588 	.word	0x20001588

080074f0 <__swbuf_r>:
 80074f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80074f2:	460d      	mov	r5, r1
 80074f4:	4614      	mov	r4, r2
 80074f6:	4606      	mov	r6, r0
 80074f8:	b110      	cbz	r0, 8007500 <__swbuf_r+0x10>
 80074fa:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80074fc:	2b00      	cmp	r3, #0
 80074fe:	d043      	beq.n	8007588 <__swbuf_r+0x98>
 8007500:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007504:	69a3      	ldr	r3, [r4, #24]
 8007506:	60a3      	str	r3, [r4, #8]
 8007508:	b291      	uxth	r1, r2
 800750a:	0708      	lsls	r0, r1, #28
 800750c:	d51b      	bpl.n	8007546 <__swbuf_r+0x56>
 800750e:	6923      	ldr	r3, [r4, #16]
 8007510:	b1cb      	cbz	r3, 8007546 <__swbuf_r+0x56>
 8007512:	b2ed      	uxtb	r5, r5
 8007514:	0489      	lsls	r1, r1, #18
 8007516:	462f      	mov	r7, r5
 8007518:	d522      	bpl.n	8007560 <__swbuf_r+0x70>
 800751a:	6822      	ldr	r2, [r4, #0]
 800751c:	6961      	ldr	r1, [r4, #20]
 800751e:	1ad3      	subs	r3, r2, r3
 8007520:	4299      	cmp	r1, r3
 8007522:	dd29      	ble.n	8007578 <__swbuf_r+0x88>
 8007524:	3301      	adds	r3, #1
 8007526:	68a1      	ldr	r1, [r4, #8]
 8007528:	1c50      	adds	r0, r2, #1
 800752a:	3901      	subs	r1, #1
 800752c:	60a1      	str	r1, [r4, #8]
 800752e:	6020      	str	r0, [r4, #0]
 8007530:	7015      	strb	r5, [r2, #0]
 8007532:	6962      	ldr	r2, [r4, #20]
 8007534:	429a      	cmp	r2, r3
 8007536:	d02a      	beq.n	800758e <__swbuf_r+0x9e>
 8007538:	89a3      	ldrh	r3, [r4, #12]
 800753a:	07db      	lsls	r3, r3, #31
 800753c:	d501      	bpl.n	8007542 <__swbuf_r+0x52>
 800753e:	2d0a      	cmp	r5, #10
 8007540:	d025      	beq.n	800758e <__swbuf_r+0x9e>
 8007542:	4638      	mov	r0, r7
 8007544:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007546:	4621      	mov	r1, r4
 8007548:	4630      	mov	r0, r6
 800754a:	f7fc fffd 	bl	8004548 <__swsetup_r>
 800754e:	bb20      	cbnz	r0, 800759a <__swbuf_r+0xaa>
 8007550:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007554:	6923      	ldr	r3, [r4, #16]
 8007556:	b291      	uxth	r1, r2
 8007558:	b2ed      	uxtb	r5, r5
 800755a:	0489      	lsls	r1, r1, #18
 800755c:	462f      	mov	r7, r5
 800755e:	d4dc      	bmi.n	800751a <__swbuf_r+0x2a>
 8007560:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007562:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007566:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800756a:	81a2      	strh	r2, [r4, #12]
 800756c:	6822      	ldr	r2, [r4, #0]
 800756e:	6661      	str	r1, [r4, #100]	; 0x64
 8007570:	6961      	ldr	r1, [r4, #20]
 8007572:	1ad3      	subs	r3, r2, r3
 8007574:	4299      	cmp	r1, r3
 8007576:	dcd5      	bgt.n	8007524 <__swbuf_r+0x34>
 8007578:	4621      	mov	r1, r4
 800757a:	4630      	mov	r0, r6
 800757c:	f7fe f8a6 	bl	80056cc <_fflush_r>
 8007580:	b958      	cbnz	r0, 800759a <__swbuf_r+0xaa>
 8007582:	6822      	ldr	r2, [r4, #0]
 8007584:	2301      	movs	r3, #1
 8007586:	e7ce      	b.n	8007526 <__swbuf_r+0x36>
 8007588:	f7fe f8fc 	bl	8005784 <__sinit>
 800758c:	e7b8      	b.n	8007500 <__swbuf_r+0x10>
 800758e:	4621      	mov	r1, r4
 8007590:	4630      	mov	r0, r6
 8007592:	f7fe f89b 	bl	80056cc <_fflush_r>
 8007596:	2800      	cmp	r0, #0
 8007598:	d0d3      	beq.n	8007542 <__swbuf_r+0x52>
 800759a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800759e:	e7d0      	b.n	8007542 <__swbuf_r+0x52>

080075a0 <_wcrtomb_r>:
 80075a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80075a2:	4c11      	ldr	r4, [pc, #68]	; (80075e8 <_wcrtomb_r+0x48>)
 80075a4:	6824      	ldr	r4, [r4, #0]
 80075a6:	b085      	sub	sp, #20
 80075a8:	4606      	mov	r6, r0
 80075aa:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80075ac:	461f      	mov	r7, r3
 80075ae:	b151      	cbz	r1, 80075c6 <_wcrtomb_r+0x26>
 80075b0:	4d0e      	ldr	r5, [pc, #56]	; (80075ec <_wcrtomb_r+0x4c>)
 80075b2:	2c00      	cmp	r4, #0
 80075b4:	bf08      	it	eq
 80075b6:	462c      	moveq	r4, r5
 80075b8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80075bc:	47a0      	blx	r4
 80075be:	1c43      	adds	r3, r0, #1
 80075c0:	d00c      	beq.n	80075dc <_wcrtomb_r+0x3c>
 80075c2:	b005      	add	sp, #20
 80075c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80075c6:	4a09      	ldr	r2, [pc, #36]	; (80075ec <_wcrtomb_r+0x4c>)
 80075c8:	2c00      	cmp	r4, #0
 80075ca:	bf08      	it	eq
 80075cc:	4614      	moveq	r4, r2
 80075ce:	460a      	mov	r2, r1
 80075d0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80075d4:	a901      	add	r1, sp, #4
 80075d6:	47a0      	blx	r4
 80075d8:	1c43      	adds	r3, r0, #1
 80075da:	d1f2      	bne.n	80075c2 <_wcrtomb_r+0x22>
 80075dc:	2200      	movs	r2, #0
 80075de:	238a      	movs	r3, #138	; 0x8a
 80075e0:	603a      	str	r2, [r7, #0]
 80075e2:	6033      	str	r3, [r6, #0]
 80075e4:	b005      	add	sp, #20
 80075e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80075e8:	2000004c 	.word	0x2000004c
 80075ec:	2000088c 	.word	0x2000088c

080075f0 <__ascii_wctomb>:
 80075f0:	b121      	cbz	r1, 80075fc <__ascii_wctomb+0xc>
 80075f2:	2aff      	cmp	r2, #255	; 0xff
 80075f4:	d804      	bhi.n	8007600 <__ascii_wctomb+0x10>
 80075f6:	700a      	strb	r2, [r1, #0]
 80075f8:	2001      	movs	r0, #1
 80075fa:	4770      	bx	lr
 80075fc:	4608      	mov	r0, r1
 80075fe:	4770      	bx	lr
 8007600:	238a      	movs	r3, #138	; 0x8a
 8007602:	6003      	str	r3, [r0, #0]
 8007604:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007608:	4770      	bx	lr
 800760a:	bf00      	nop

0800760c <_init>:
 800760c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800760e:	bf00      	nop
 8007610:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007612:	bc08      	pop	{r3}
 8007614:	469e      	mov	lr, r3
 8007616:	4770      	bx	lr

08007618 <_fini>:
 8007618:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800761a:	bf00      	nop
 800761c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800761e:	bc08      	pop	{r3}
 8007620:	469e      	mov	lr, r3
 8007622:	4770      	bx	lr
 8007624:	0000      	movs	r0, r0
	...