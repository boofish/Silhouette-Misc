
miniz.elf:     file format elf32-littlearm


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
 80001e0:	0800bc14 	.word	0x0800bc14

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
 80001fc:	0800bc14 	.word	0x0800bc14

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
 80014a8:	f24c 727c 	movw	r2, #51068	; 0xc77c
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
 8001522:	f24c 7274 	movw	r2, #51060	; 0xc774
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
 800154c:	f24c 7274 	movw	r2, #51060	; 0xc774
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
 8001a94:	f24c 73ac 	movw	r3, #51116	; 0xc7ac
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
 8001abc:	f24c 73bc 	movw	r3, #51132	; 0xc7bc
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

08001f76 <__io_putchar>:
 8001f76:	b580      	push	{r7, lr}
 8001f78:	466f      	mov	r7, sp
 8001f7a:	b082      	sub	sp, #8
 8001f7c:	9001      	str	r0, [sp, #4]
 8001f7e:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001f82:	a901      	add	r1, sp, #4
 8001f84:	2201      	movs	r2, #1
 8001f86:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001f8a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f8e:	f7ff ff04 	bl	8001d9a <HAL_UART_Transmit>
 8001f92:	9801      	ldr	r0, [sp, #4]
 8001f94:	b002      	add	sp, #8
 8001f96:	bd80      	pop	{r7, pc}

08001f98 <main>:
 8001f98:	b5b0      	push	{r4, r5, r7, lr}
 8001f9a:	af02      	add	r7, sp, #8
 8001f9c:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8001fa0:	f643 0000 	movw	r0, #14336	; 0x3800
 8001fa4:	220c      	movs	r2, #12
 8001fa6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001faa:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001fae:	6008      	str	r0, [r1, #0]
 8001fb0:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001fb4:	6048      	str	r0, [r1, #4]
 8001fb6:	2000      	movs	r0, #0
 8001fb8:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001fbc:	6108      	str	r0, [r1, #16]
 8001fbe:	6248      	str	r0, [r1, #36]	; 0x24
 8001fc0:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001fc4:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001fc8:	2000      	movs	r0, #0
 8001fca:	f7ff ff7b 	bl	8001ec4 <BSP_COM_Init>
 8001fce:	f003 ff0e 	bl	8005dee <initialise_benchmark>
 8001fd2:	f24c 70cc 	movw	r0, #51148	; 0xc7cc
 8001fd6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fda:	f004 fb79 	bl	80066d0 <printf>
 8001fde:	f64c 0074 	movw	r0, #51316	; 0xc874
 8001fe2:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fe6:	f004 fbd5 	bl	8006794 <puts>
 8001fea:	f7ff f8dd 	bl	80011a8 <HAL_Init>
 8001fee:	f7ff f8f3 	bl	80011d8 <HAL_GetTick>
 8001ff2:	4604      	mov	r4, r0
 8001ff4:	f003 fefc 	bl	8005df0 <benchmark>
 8001ff8:	4605      	mov	r5, r0
 8001ffa:	f7ff f8ed 	bl	80011d8 <HAL_GetTick>
 8001ffe:	1b04      	subs	r4, r0, r4
 8002000:	4628      	mov	r0, r5
 8002002:	f003 fef1 	bl	8005de8 <verify_benchmark>
 8002006:	1c41      	adds	r1, r0, #1
 8002008:	d006      	beq.n	8002018 <main+0x80>
 800200a:	2801      	cmp	r0, #1
 800200c:	d109      	bne.n	8002022 <main+0x8a>
 800200e:	f24c 70e0 	movw	r0, #51168	; 0xc7e0
 8002012:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002016:	e008      	b.n	800202a <main+0x92>
 8002018:	f64c 0004 	movw	r0, #51204	; 0xc804
 800201c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002020:	e003      	b.n	800202a <main+0x92>
 8002022:	f64c 0039 	movw	r0, #51257	; 0xc839
 8002026:	f6c0 0000 	movt	r0, #2048	; 0x800
 800202a:	4621      	mov	r1, r4
 800202c:	f004 fb50 	bl	80066d0 <printf>
 8002030:	2000      	movs	r0, #0
 8002032:	bdb0      	pop	{r4, r5, r7, pc}

08002034 <mz_adler32>:
 8002034:	2900      	cmp	r1, #0
 8002036:	bf04      	itt	eq
 8002038:	2001      	moveq	r0, #1
 800203a:	4770      	bxeq	lr
 800203c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800203e:	af03      	add	r7, sp, #12
 8002040:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002044:	ea4f 4b10 	mov.w	fp, r0, lsr #16
 8002048:	b284      	uxth	r4, r0
 800204a:	2a00      	cmp	r2, #0
 800204c:	d069      	beq.n	8002122 <mz_adler32+0xee>
 800204e:	f64a 10af 	movw	r0, #43439	; 0xa9af
 8002052:	f248 0c71 	movw	ip, #32881	; 0x8071
 8002056:	f64f 7ef1 	movw	lr, #65521	; 0xfff1
 800205a:	f6c5 606e 	movt	r0, #24174	; 0x5e6e
 800205e:	f2c8 0c07 	movt	ip, #32775	; 0x8007
 8002062:	fba2 0600 	umull	r0, r6, r2, r0
 8002066:	0af0      	lsrs	r0, r6, #11
 8002068:	f241 56b0 	movw	r6, #5552	; 0x15b0
 800206c:	fb00 2a16 	mls	sl, r0, r6, r2
 8002070:	f1ba 0f08 	cmp.w	sl, #8
 8002074:	d336      	bcc.n	80020e4 <mz_adler32+0xb0>
 8002076:	f1aa 0508 	sub.w	r5, sl, #8
 800207a:	f101 0808 	add.w	r8, r1, #8
 800207e:	f025 0907 	bic.w	r9, r5, #7
 8002082:	2500      	movs	r5, #0
 8002084:	5d4e      	ldrb	r6, [r1, r5]
 8002086:	4434      	add	r4, r6
 8002088:	194e      	adds	r6, r1, r5
 800208a:	7870      	ldrb	r0, [r6, #1]
 800208c:	78b3      	ldrb	r3, [r6, #2]
 800208e:	f896 c003 	ldrb.w	ip, [r6, #3]
 8002092:	f896 e004 	ldrb.w	lr, [r6, #4]
 8002096:	4420      	add	r0, r4
 8002098:	445c      	add	r4, fp
 800209a:	4403      	add	r3, r0
 800209c:	4420      	add	r0, r4
 800209e:	7974      	ldrb	r4, [r6, #5]
 80020a0:	4418      	add	r0, r3
 80020a2:	4463      	add	r3, ip
 80020a4:	4418      	add	r0, r3
 80020a6:	4473      	add	r3, lr
 80020a8:	4418      	add	r0, r3
 80020aa:	4423      	add	r3, r4
 80020ac:	79b4      	ldrb	r4, [r6, #6]
 80020ae:	79f6      	ldrb	r6, [r6, #7]
 80020b0:	4418      	add	r0, r3
 80020b2:	4423      	add	r3, r4
 80020b4:	4418      	add	r0, r3
 80020b6:	199c      	adds	r4, r3, r6
 80020b8:	f105 030f 	add.w	r3, r5, #15
 80020bc:	eb00 0b04 	add.w	fp, r0, r4
 80020c0:	f105 0008 	add.w	r0, r5, #8
 80020c4:	4553      	cmp	r3, sl
 80020c6:	4605      	mov	r5, r0
 80020c8:	d3dc      	bcc.n	8002084 <mz_adler32+0x50>
 80020ca:	f248 0c71 	movw	ip, #32881	; 0x8071
 80020ce:	eb08 0109 	add.w	r1, r8, r9
 80020d2:	f109 0508 	add.w	r5, r9, #8
 80020d6:	f64f 7ef1 	movw	lr, #65521	; 0xfff1
 80020da:	f2c8 0c07 	movt	ip, #32775	; 0x8007
 80020de:	45aa      	cmp	sl, r5
 80020e0:	d803      	bhi.n	80020ea <mz_adler32+0xb6>
 80020e2:	e00d      	b.n	8002100 <mz_adler32+0xcc>
 80020e4:	2500      	movs	r5, #0
 80020e6:	45aa      	cmp	sl, r5
 80020e8:	d90a      	bls.n	8002100 <mz_adler32+0xcc>
 80020ea:	ebaa 0805 	sub.w	r8, sl, r5
 80020ee:	460d      	mov	r5, r1
 80020f0:	4646      	mov	r6, r8
 80020f2:	f815 0b01 	ldrb.w	r0, [r5], #1
 80020f6:	3e01      	subs	r6, #1
 80020f8:	4404      	add	r4, r0
 80020fa:	44a3      	add	fp, r4
 80020fc:	d1f9      	bne.n	80020f2 <mz_adler32+0xbe>
 80020fe:	4441      	add	r1, r8
 8002100:	fbab 030c 	umull	r0, r3, fp, ip
 8002104:	ebb2 020a 	subs.w	r2, r2, sl
 8002108:	f241 5ab0 	movw	sl, #5552	; 0x15b0
 800210c:	ea4f 30d3 	mov.w	r0, r3, lsr #15
 8002110:	fb00 bb1e 	mls	fp, r0, lr, fp
 8002114:	fba4 030c 	umull	r0, r3, r4, ip
 8002118:	ea4f 30d3 	mov.w	r0, r3, lsr #15
 800211c:	fb00 441e 	mls	r4, r0, lr, r4
 8002120:	d1a6      	bne.n	8002070 <mz_adler32+0x3c>
 8002122:	ea44 400b 	orr.w	r0, r4, fp, lsl #16
 8002126:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800212a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800212c <mz_deflateInit2>:
 800212c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800212e:	af03      	add	r7, sp, #12
 8002130:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8002134:	4680      	mov	r8, r0
 8002136:	290a      	cmp	r1, #10
 8002138:	4608      	mov	r0, r1
 800213a:	f64b 66c4 	movw	r6, #48836	; 0xbec4
 800213e:	bfa8      	it	ge
 8002140:	200a      	movge	r0, #10
 8002142:	f1b1 3fff 	cmp.w	r1, #4294967295	; 0xffffffff
 8002146:	f6c0 0600 	movt	r6, #2048	; 0x800
 800214a:	bfd8      	it	le
 800214c:	2006      	movle	r0, #6
 800214e:	2904      	cmp	r1, #4
 8002150:	f856 4020 	ldr.w	r4, [r6, r0, lsl #2]
 8002154:	bfb8      	it	lt
 8002156:	f444 4480 	orrlt.w	r4, r4, #16384	; 0x4000
 800215a:	2b00      	cmp	r3, #0
 800215c:	bfc8      	it	gt
 800215e:	f444 5480 	orrgt.w	r4, r4, #4096	; 0x1000
 8002162:	b169      	cbz	r1, 8002180 <mz_deflateInit2+0x54>
 8002164:	68f8      	ldr	r0, [r7, #12]
 8002166:	3801      	subs	r0, #1
 8002168:	2803      	cmp	r0, #3
 800216a:	d81e      	bhi.n	80021aa <mz_deflateInit2+0x7e>
 800216c:	e8df f000 	tbb	[pc, r0]
 8002170:	1b150e02 	.word	0x1b150e02
 8002174:	f444 3400 	orr.w	r4, r4, #131072	; 0x20000
 8002178:	f1b8 0f00 	cmp.w	r8, #0
 800217c:	d119      	bne.n	80021b2 <mz_deflateInit2+0x86>
 800217e:	e0b6      	b.n	80022ee <mz_deflateInit2+0x1c2>
 8002180:	f444 2400 	orr.w	r4, r4, #524288	; 0x80000
 8002184:	f1b8 0f00 	cmp.w	r8, #0
 8002188:	d113      	bne.n	80021b2 <mz_deflateInit2+0x86>
 800218a:	e0b0      	b.n	80022ee <mz_deflateInit2+0x1c2>
 800218c:	f640 70ff 	movw	r0, #4095	; 0xfff
 8002190:	4384      	bics	r4, r0
 8002192:	f1b8 0f00 	cmp.w	r8, #0
 8002196:	d10c      	bne.n	80021b2 <mz_deflateInit2+0x86>
 8002198:	e0a9      	b.n	80022ee <mz_deflateInit2+0x1c2>
 800219a:	f444 3480 	orr.w	r4, r4, #65536	; 0x10000
 800219e:	f1b8 0f00 	cmp.w	r8, #0
 80021a2:	d106      	bne.n	80021b2 <mz_deflateInit2+0x86>
 80021a4:	e0a3      	b.n	80022ee <mz_deflateInit2+0x1c2>
 80021a6:	f444 2480 	orr.w	r4, r4, #262144	; 0x40000
 80021aa:	f1b8 0f00 	cmp.w	r8, #0
 80021ae:	f000 809e 	beq.w	80022ee <mz_deflateInit2+0x1c2>
 80021b2:	f64d 05f0 	movw	r5, #55536	; 0xd8f0
 80021b6:	2a08      	cmp	r2, #8
 80021b8:	f6cf 75ff 	movt	r5, #65535	; 0xffff
 80021bc:	f040 8099 	bne.w	80022f2 <mz_deflateInit2+0x1c6>
 80021c0:	68b8      	ldr	r0, [r7, #8]
 80021c2:	3801      	subs	r0, #1
 80021c4:	2808      	cmp	r0, #8
 80021c6:	f200 8094 	bhi.w	80022f2 <mz_deflateInit2+0x1c6>
 80021ca:	2b0f      	cmp	r3, #15
 80021cc:	bf18      	it	ne
 80021ce:	f113 000f 	addsne.w	r0, r3, #15
 80021d2:	f040 808e 	bne.w	80022f2 <mz_deflateInit2+0x1c6>
 80021d6:	2000      	movs	r0, #0
 80021d8:	2101      	movs	r1, #1
 80021da:	f64d 7240 	movw	r2, #57152	; 0xdf40
 80021de:	f04f 0901 	mov.w	r9, #1
 80021e2:	f8c8 002c 	str.w	r0, [r8, #44]	; 0x2c
 80021e6:	e9c8 100c 	strd	r1, r0, [r8, #48]	; 0x30
 80021ea:	f8c8 0008 	str.w	r0, [r8, #8]
 80021ee:	e9c8 0005 	strd	r0, r0, [r8, #20]
 80021f2:	f2c0 0204 	movt	r2, #4
 80021f6:	2101      	movs	r1, #1
 80021f8:	f8d8 3020 	ldr.w	r3, [r8, #32]
 80021fc:	2b00      	cmp	r3, #0
 80021fe:	bf02      	ittt	eq
 8002200:	f242 3301 	movweq	r3, #8961	; 0x2301
 8002204:	f6c0 0300 	movteq	r3, #2048	; 0x800
 8002208:	f8c8 3020 	streq.w	r3, [r8, #32]
 800220c:	f8d8 0024 	ldr.w	r0, [r8, #36]	; 0x24
 8002210:	2800      	cmp	r0, #0
 8002212:	bf02      	ittt	eq
 8002214:	f242 3009 	movweq	r0, #8969	; 0x2309
 8002218:	f6c0 0000 	movteq	r0, #2048	; 0x800
 800221c:	f8c8 0024 	streq.w	r0, [r8, #36]	; 0x24
 8002220:	f8d8 0028 	ldr.w	r0, [r8, #40]	; 0x28
 8002224:	4798      	blx	r3
 8002226:	4606      	mov	r6, r0
 8002228:	2e00      	cmp	r6, #0
 800222a:	d066      	beq.n	80022fa <mz_deflateInit2+0x1ce>
 800222c:	f444 5000 	orr.w	r0, r4, #8192	; 0x2000
 8002230:	2500      	movs	r5, #0
 8002232:	f8c8 601c 	str.w	r6, [r8, #28]
 8002236:	f64a 22ab 	movw	r2, #43691	; 0xaaab
 800223a:	f249 2872 	movw	r8, #37490	; 0x9272
 800223e:	f414 4f00 	tst.w	r4, #32768	; 0x8000
 8002242:	e9c6 5500 	strd	r5, r5, [r6]
 8002246:	60b0      	str	r0, [r6, #8]
 8002248:	4620      	mov	r0, r4
 800224a:	f6ca 22aa 	movt	r2, #43690	; 0xaaaa
 800224e:	f2c0 0802 	movt	r8, #2
 8002252:	f36f 301f 	bfc	r0, #12, #20
 8002256:	f100 0102 	add.w	r1, r0, #2
 800225a:	fba1 1302 	umull	r1, r3, r1, r2
 800225e:	eb09 0153 	add.w	r1, r9, r3, lsr #1
 8002262:	60f1      	str	r1, [r6, #12]
 8002264:	f3c4 3180 	ubfx	r1, r4, #14, #1
 8002268:	6171      	str	r1, [r6, #20]
 800226a:	f04f 0102 	mov.w	r1, #2
 800226e:	eb01 0090 	add.w	r0, r1, r0, lsr #2
 8002272:	fba0 0102 	umull	r0, r1, r0, r2
 8002276:	eb09 0051 	add.w	r0, r9, r1, lsr #1
 800227a:	6130      	str	r0, [r6, #16]
 800227c:	d105      	bne.n	800228a <mz_deflateInit2+0x15e>
 800227e:	eb06 0008 	add.w	r0, r6, r8
 8002282:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8002286:	f003 feb7 	bl	8005ff8 <__aeabi_memclr>
 800228a:	f249 2073 	movw	r0, #37491	; 0x9273
 800228e:	6275      	str	r5, [r6, #36]	; 0x24
 8002290:	e9c6 5507 	strd	r5, r5, [r6, #28]
 8002294:	e9c6 5511 	strd	r5, r5, [r6, #68]	; 0x44
 8002298:	e9c6 550f 	strd	r5, r5, [r6, #60]	; 0x3c
 800229c:	66b5      	str	r5, [r6, #104]	; 0x68
 800229e:	e9c6 5518 	strd	r5, r5, [r6, #96]	; 0x60
 80022a2:	e9c6 5516 	strd	r5, r5, [r6, #88]	; 0x58
 80022a6:	f44f 7120 	mov.w	r1, #640	; 0x280
 80022aa:	4430      	add	r0, r6
 80022ac:	62b0      	str	r0, [r6, #40]	; 0x28
 80022ae:	f249 2072 	movw	r0, #37490	; 0x9272
 80022b2:	4430      	add	r0, r6
 80022b4:	62f0      	str	r0, [r6, #44]	; 0x2c
 80022b6:	2008      	movs	r0, #8
 80022b8:	63b0      	str	r0, [r6, #56]	; 0x38
 80022ba:	eb06 0008 	add.w	r0, r6, r8
 80022be:	f500 3080 	add.w	r0, r0, #65536	; 0x10000
 80022c2:	e9c6 000c 	strd	r0, r0, [r6, #48]	; 0x30
 80022c6:	2001      	movs	r0, #1
 80022c8:	66f5      	str	r5, [r6, #108]	; 0x6c
 80022ca:	6575      	str	r5, [r6, #84]	; 0x54
 80022cc:	e9c6 5513 	strd	r5, r5, [r6, #76]	; 0x4c
 80022d0:	61b0      	str	r0, [r6, #24]
 80022d2:	f248 1092 	movw	r0, #33170	; 0x8192
 80022d6:	e9c6 551e 	strd	r5, r5, [r6, #120]	; 0x78
 80022da:	e9c6 5520 	strd	r5, r5, [r6, #128]	; 0x80
 80022de:	e9c6 5522 	strd	r5, r5, [r6, #136]	; 0x88
 80022e2:	e9c6 551c 	strd	r5, r5, [r6, #112]	; 0x70
 80022e6:	4430      	add	r0, r6
 80022e8:	f003 fe86 	bl	8005ff8 <__aeabi_memclr>
 80022ec:	e001      	b.n	80022f2 <mz_deflateInit2+0x1c6>
 80022ee:	f06f 0501 	mvn.w	r5, #1
 80022f2:	4628      	mov	r0, r5
 80022f4:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 80022f8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80022fa:	f06f 0503 	mvn.w	r5, #3
 80022fe:	e7f8      	b.n	80022f2 <mz_deflateInit2+0x1c6>

08002300 <def_alloc_func>:
 8002300:	fb02 f001 	mul.w	r0, r2, r1
 8002304:	f003 beda 	b.w	80060bc <malloc>

08002308 <def_free_func>:
 8002308:	4608      	mov	r0, r1
 800230a:	f003 bedf 	b.w	80060cc <free>

0800230e <mz_deflate>:
 800230e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002310:	af03      	add	r7, sp, #12
 8002312:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002316:	b087      	sub	sp, #28
 8002318:	4605      	mov	r5, r0
 800231a:	4688      	mov	r8, r1
 800231c:	f06f 0101 	mvn.w	r1, #1
 8002320:	2d00      	cmp	r5, #0
 8002322:	d063      	beq.n	80023ec <mz_deflate+0xde>
 8002324:	f1b8 0f04 	cmp.w	r8, #4
 8002328:	d860      	bhi.n	80023ec <mz_deflate+0xde>
 800232a:	69e8      	ldr	r0, [r5, #28]
 800232c:	2800      	cmp	r0, #0
 800232e:	d05d      	beq.n	80023ec <mz_deflate+0xde>
 8002330:	68eb      	ldr	r3, [r5, #12]
 8002332:	b18b      	cbz	r3, 8002358 <mz_deflate+0x4a>
 8002334:	692e      	ldr	r6, [r5, #16]
 8002336:	2e00      	cmp	r6, #0
 8002338:	d056      	beq.n	80023e8 <mz_deflate+0xda>
 800233a:	6ec1      	ldr	r1, [r0, #108]	; 0x6c
 800233c:	f1b8 0f01 	cmp.w	r8, #1
 8002340:	bf08      	it	eq
 8002342:	f04f 0802 	moveq.w	r8, #2
 8002346:	2901      	cmp	r1, #1
 8002348:	d109      	bne.n	800235e <mz_deflate+0x50>
 800234a:	f06f 0104 	mvn.w	r1, #4
 800234e:	f1b8 0f04 	cmp.w	r8, #4
 8002352:	bf08      	it	eq
 8002354:	2101      	moveq	r1, #1
 8002356:	e049      	b.n	80023ec <mz_deflate+0xde>
 8002358:	f06f 0101 	mvn.w	r1, #1
 800235c:	e046      	b.n	80023ec <mz_deflate+0xde>
 800235e:	e9d5 e101 	ldrd	lr, r1, [r5, #4]
 8002362:	f10d 0a14 	add.w	sl, sp, #20
 8002366:	f10d 0b18 	add.w	fp, sp, #24
 800236a:	9103      	str	r1, [sp, #12]
 800236c:	6829      	ldr	r1, [r5, #0]
 800236e:	696a      	ldr	r2, [r5, #20]
 8002370:	9204      	str	r2, [sp, #16]
 8002372:	465a      	mov	r2, fp
 8002374:	e9cd 6e05 	strd	r6, lr, [sp, #20]
 8002378:	e9cd a800 	strd	sl, r8, [sp]
 800237c:	f000 f842 	bl	8002404 <tdefl_compress>
 8002380:	4602      	mov	r2, r0
 8002382:	6828      	ldr	r0, [r5, #0]
 8002384:	9b06      	ldr	r3, [sp, #24]
 8002386:	2a00      	cmp	r2, #0
 8002388:	eb00 0103 	add.w	r1, r0, r3
 800238c:	6029      	str	r1, [r5, #0]
 800238e:	6868      	ldr	r0, [r5, #4]
 8002390:	eba0 0e03 	sub.w	lr, r0, r3
 8002394:	f8c5 e004 	str.w	lr, [r5, #4]
 8002398:	68a8      	ldr	r0, [r5, #8]
 800239a:	eb00 0c03 	add.w	ip, r0, r3
 800239e:	f8c5 c008 	str.w	ip, [r5, #8]
 80023a2:	69e8      	ldr	r0, [r5, #28]
 80023a4:	6983      	ldr	r3, [r0, #24]
 80023a6:	632b      	str	r3, [r5, #48]	; 0x30
 80023a8:	68eb      	ldr	r3, [r5, #12]
 80023aa:	9c05      	ldr	r4, [sp, #20]
 80023ac:	4423      	add	r3, r4
 80023ae:	60eb      	str	r3, [r5, #12]
 80023b0:	692e      	ldr	r6, [r5, #16]
 80023b2:	eba6 0604 	sub.w	r6, r6, r4
 80023b6:	612e      	str	r6, [r5, #16]
 80023b8:	f8d5 9014 	ldr.w	r9, [r5, #20]
 80023bc:	444c      	add	r4, r9
 80023be:	616c      	str	r4, [r5, #20]
 80023c0:	db19      	blt.n	80023f6 <mz_deflate+0xe8>
 80023c2:	2a01      	cmp	r2, #1
 80023c4:	d01a      	beq.n	80023fc <mz_deflate+0xee>
 80023c6:	b1de      	cbz	r6, 8002400 <mz_deflate+0xf2>
 80023c8:	f1b8 0f04 	cmp.w	r8, #4
 80023cc:	d0d1      	beq.n	8002372 <mz_deflate+0x64>
 80023ce:	f1be 0f00 	cmp.w	lr, #0
 80023d2:	d1ce      	bne.n	8002372 <mz_deflate+0x64>
 80023d4:	2100      	movs	r1, #0
 80023d6:	f1b8 0f00 	cmp.w	r8, #0
 80023da:	d107      	bne.n	80023ec <mz_deflate+0xde>
 80023dc:	9804      	ldr	r0, [sp, #16]
 80023de:	4284      	cmp	r4, r0
 80023e0:	bf04      	itt	eq
 80023e2:	9803      	ldreq	r0, [sp, #12]
 80023e4:	4584      	cmpeq	ip, r0
 80023e6:	d101      	bne.n	80023ec <mz_deflate+0xde>
 80023e8:	f06f 0104 	mvn.w	r1, #4
 80023ec:	4608      	mov	r0, r1
 80023ee:	b007      	add	sp, #28
 80023f0:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80023f4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80023f6:	f06f 0101 	mvn.w	r1, #1
 80023fa:	e7f7      	b.n	80023ec <mz_deflate+0xde>
 80023fc:	2101      	movs	r1, #1
 80023fe:	e7f5      	b.n	80023ec <mz_deflate+0xde>
 8002400:	2100      	movs	r1, #0
 8002402:	e7f3      	b.n	80023ec <mz_deflate+0xde>

08002404 <tdefl_compress>:
 8002404:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002406:	af03      	add	r7, sp, #12
 8002408:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800240c:	b08f      	sub	sp, #60	; 0x3c
 800240e:	68be      	ldr	r6, [r7, #8]
 8002410:	4683      	mov	fp, r0
 8002412:	f1bb 0f00 	cmp.w	fp, #0
 8002416:	d03b      	beq.n	8002490 <tdefl_compress+0x8c>
 8002418:	f8cb 1084 	str.w	r1, [fp, #132]	; 0x84
 800241c:	e9cb 131c 	strd	r1, r3, [fp, #112]	; 0x70
 8002420:	e9cb 261e 	strd	r2, r6, [fp, #120]	; 0x78
 8002424:	2a00      	cmp	r2, #0
 8002426:	f8d7 900c 	ldr.w	r9, [r7, #12]
 800242a:	f04f 0000 	mov.w	r0, #0
 800242e:	bf14      	ite	ne
 8002430:	6815      	ldrne	r5, [r2, #0]
 8002432:	2500      	moveq	r5, #0
 8002434:	e9cb 5022 	strd	r5, r0, [fp, #136]	; 0x88
 8002438:	ea53 0006 	orrs.w	r0, r3, r6
 800243c:	f8cb 9080 	str.w	r9, [fp, #128]	; 0x80
 8002440:	bf18      	it	ne
 8002442:	2001      	movne	r0, #1
 8002444:	f8db 4000 	ldr.w	r4, [fp]
 8002448:	2c00      	cmp	r4, #0
 800244a:	bf18      	it	ne
 800244c:	2401      	movne	r4, #1
 800244e:	ea90 0f04 	teq	r0, r4
 8002452:	d011      	beq.n	8002478 <tdefl_compress+0x74>
 8002454:	f8db 006c 	ldr.w	r0, [fp, #108]	; 0x6c
 8002458:	b970      	cbnz	r0, 8002478 <tdefl_compress+0x74>
 800245a:	f8db 0068 	ldr.w	r0, [fp, #104]	; 0x68
 800245e:	f1b9 0f04 	cmp.w	r9, #4
 8002462:	bf18      	it	ne
 8002464:	2800      	cmpne	r0, #0
 8002466:	d107      	bne.n	8002478 <tdefl_compress+0x74>
 8002468:	b112      	cbz	r2, 8002470 <tdefl_compress+0x6c>
 800246a:	b909      	cbnz	r1, 8002470 <tdefl_compress+0x6c>
 800246c:	6814      	ldr	r4, [r2, #0]
 800246e:	b924      	cbnz	r4, 800247a <tdefl_compress+0x76>
 8002470:	b1e6      	cbz	r6, 80024ac <tdefl_compress+0xa8>
 8002472:	b9db      	cbnz	r3, 80024ac <tdefl_compress+0xa8>
 8002474:	6834      	ldr	r4, [r6, #0]
 8002476:	b1cc      	cbz	r4, 80024ac <tdefl_compress+0xa8>
 8002478:	b10a      	cbz	r2, 800247e <tdefl_compress+0x7a>
 800247a:	2000      	movs	r0, #0
 800247c:	6010      	str	r0, [r2, #0]
 800247e:	2e00      	cmp	r6, #0
 8002480:	bf1c      	itt	ne
 8002482:	2000      	movne	r0, #0
 8002484:	6030      	strne	r0, [r6, #0]
 8002486:	f06f 0001 	mvn.w	r0, #1
 800248a:	f8cb 006c 	str.w	r0, [fp, #108]	; 0x6c
 800248e:	e009      	b.n	80024a4 <tdefl_compress+0xa0>
 8002490:	2a00      	cmp	r2, #0
 8002492:	bf1c      	itt	ne
 8002494:	2000      	movne	r0, #0
 8002496:	6010      	strne	r0, [r2, #0]
 8002498:	2e00      	cmp	r6, #0
 800249a:	bf1c      	itt	ne
 800249c:	2000      	movne	r0, #0
 800249e:	6030      	strne	r0, [r6, #0]
 80024a0:	f06f 0001 	mvn.w	r0, #1
 80024a4:	b00f      	add	sp, #60	; 0x3c
 80024a6:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80024aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80024ac:	2400      	movs	r4, #0
 80024ae:	f1b9 0f04 	cmp.w	r9, #4
 80024b2:	bf08      	it	eq
 80024b4:	2401      	moveq	r4, #1
 80024b6:	4320      	orrs	r0, r4
 80024b8:	f8cb 0068 	str.w	r0, [fp, #104]	; 0x68
 80024bc:	f8db 005c 	ldr.w	r0, [fp, #92]	; 0x5c
 80024c0:	b910      	cbnz	r0, 80024c8 <tdefl_compress+0xc4>
 80024c2:	f8db 0060 	ldr.w	r0, [fp, #96]	; 0x60
 80024c6:	b3a0      	cbz	r0, 8002532 <tdefl_compress+0x12e>
 80024c8:	2a00      	cmp	r2, #0
 80024ca:	bf1c      	itt	ne
 80024cc:	2000      	movne	r0, #0
 80024ce:	6010      	strne	r0, [r2, #0]
 80024d0:	b326      	cbz	r6, 800251c <tdefl_compress+0x118>
 80024d2:	e9db 1516 	ldrd	r1, r5, [fp, #88]	; 0x58
 80024d6:	f8db 208c 	ldr.w	r2, [fp, #140]	; 0x8c
 80024da:	1898      	adds	r0, r3, r2
 80024dc:	f249 2372 	movw	r3, #37490	; 0x9272
 80024e0:	4459      	add	r1, fp
 80024e2:	f2c0 0303 	movt	r3, #3
 80024e6:	4419      	add	r1, r3
 80024e8:	6833      	ldr	r3, [r6, #0]
 80024ea:	1a9a      	subs	r2, r3, r2
 80024ec:	42aa      	cmp	r2, r5
 80024ee:	bf38      	it	cc
 80024f0:	4615      	movcc	r5, r2
 80024f2:	462a      	mov	r2, r5
 80024f4:	f003 fd84 	bl	8006000 <__aeabi_memcpy>
 80024f8:	f8db 0058 	ldr.w	r0, [fp, #88]	; 0x58
 80024fc:	4428      	add	r0, r5
 80024fe:	f8cb 0058 	str.w	r0, [fp, #88]	; 0x58
 8002502:	f8db 005c 	ldr.w	r0, [fp, #92]	; 0x5c
 8002506:	1b40      	subs	r0, r0, r5
 8002508:	f8cb 005c 	str.w	r0, [fp, #92]	; 0x5c
 800250c:	f8db 008c 	ldr.w	r0, [fp, #140]	; 0x8c
 8002510:	4428      	add	r0, r5
 8002512:	f8cb 008c 	str.w	r0, [fp, #140]	; 0x8c
 8002516:	f8db 107c 	ldr.w	r1, [fp, #124]	; 0x7c
 800251a:	6008      	str	r0, [r1, #0]
 800251c:	f8db 1060 	ldr.w	r1, [fp, #96]	; 0x60
 8002520:	2000      	movs	r0, #0
 8002522:	2900      	cmp	r1, #0
 8002524:	d0b1      	beq.n	800248a <tdefl_compress+0x86>
 8002526:	f8db 105c 	ldr.w	r1, [fp, #92]	; 0x5c
 800252a:	2900      	cmp	r1, #0
 800252c:	bf08      	it	eq
 800252e:	2001      	moveq	r0, #1
 8002530:	e7ab      	b.n	800248a <tdefl_compress+0x86>
 8002532:	f249 2072 	movw	r0, #37490	; 0x9272
 8002536:	f249 2c72 	movw	ip, #37490	; 0x9272
 800253a:	468e      	mov	lr, r1
 800253c:	9401      	str	r4, [sp, #4]
 800253e:	9102      	str	r1, [sp, #8]
 8002540:	4458      	add	r0, fp
 8002542:	f2c0 0c01 	movt	ip, #1
 8002546:	9003      	str	r0, [sp, #12]
 8002548:	f50b 30c9 	add.w	r0, fp, #102912	; 0x19200
 800254c:	306a      	adds	r0, #106	; 0x6a
 800254e:	9009      	str	r0, [sp, #36]	; 0x24
 8002550:	f10b 0090 	add.w	r0, fp, #144	; 0x90
 8002554:	900e      	str	r0, [sp, #56]	; 0x38
 8002556:	e2dc      	b.n	8002b12 <tdefl_compress+0x70e>
 8002558:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 800255a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800255c:	f8d7 900c 	ldr.w	r9, [r7, #12]
 8002560:	ebac 0c00 	sub.w	ip, ip, r0
 8002564:	4486      	add	lr, r0
 8002566:	f5c5 4100 	rsb	r1, r5, #32768	; 0x8000
 800256a:	4405      	add	r5, r0
 800256c:	1a09      	subs	r1, r1, r0
 800256e:	4291      	cmp	r1, r2
 8002570:	bf38      	it	cc
 8002572:	460a      	movcc	r2, r1
 8002574:	f8cb 2024 	str.w	r2, [fp, #36]	; 0x24
 8002578:	f8cd c034 	str.w	ip, [sp, #52]	; 0x34
 800257c:	f249 2c72 	movw	ip, #37490	; 0x9272
 8002580:	4690      	mov	r8, r2
 8002582:	f2c0 0c01 	movt	ip, #1
 8002586:	f8db 6050 	ldr.w	r6, [fp, #80]	; 0x50
 800258a:	f8db 201c 	ldr.w	r2, [fp, #28]
 800258e:	f8db 1008 	ldr.w	r1, [fp, #8]
 8002592:	4614      	mov	r4, r2
 8002594:	2e00      	cmp	r6, #0
 8002596:	4630      	mov	r0, r6
 8002598:	bf08      	it	eq
 800259a:	2002      	moveq	r0, #2
 800259c:	f36f 34df 	bfc	r4, #15, #17
 80025a0:	f411 2f10 	tst.w	r1, #589824	; 0x90000
 80025a4:	910c      	str	r1, [sp, #48]	; 0x30
 80025a6:	d020      	beq.n	80025ea <tdefl_compress+0x1e6>
 80025a8:	2300      	movs	r3, #0
 80025aa:	f1b8 0f00 	cmp.w	r8, #0
 80025ae:	f000 80bf 	beq.w	8002730 <tdefl_compress+0x32c>
 80025b2:	f8dd 8030 	ldr.w	r8, [sp, #48]	; 0x30
 80025b6:	f418 2100 	ands.w	r1, r8, #524288	; 0x80000
 80025ba:	f040 80c5 	bne.w	8002748 <tdefl_compress+0x344>
 80025be:	2d00      	cmp	r5, #0
 80025c0:	f000 80b9 	beq.w	8002736 <tdefl_compress+0x332>
 80025c4:	f647 70ff 	movw	r0, #32767	; 0x7fff
 80025c8:	4410      	add	r0, r2
 80025ca:	f36f 30df 	bfc	r0, #15, #17
 80025ce:	4458      	add	r0, fp
 80025d0:	f890 1090 	ldrb.w	r1, [r0, #144]	; 0x90
 80025d4:	980e      	ldr	r0, [sp, #56]	; 0x38
 80025d6:	1902      	adds	r2, r0, r4
 80025d8:	2000      	movs	r0, #0
 80025da:	5c13      	ldrb	r3, [r2, r0]
 80025dc:	428b      	cmp	r3, r1
 80025de:	f040 80ab 	bne.w	8002738 <tdefl_compress+0x334>
 80025e2:	3001      	adds	r0, #1
 80025e4:	42a8      	cmp	r0, r5
 80025e6:	d3f8      	bcc.n	80025da <tdefl_compress+0x1d6>
 80025e8:	e0a6      	b.n	8002738 <tdefl_compress+0x334>
 80025ea:	f5b5 7f81 	cmp.w	r5, #258	; 0x102
 80025ee:	f200 8404 	bhi.w	8002dfa <tdefl_compress+0x9f6>
 80025f2:	2300      	movs	r3, #0
 80025f4:	42a8      	cmp	r0, r5
 80025f6:	f080 809b 	bcs.w	8002730 <tdefl_compress+0x32c>
 80025fa:	950b      	str	r5, [sp, #44]	; 0x2c
 80025fc:	e9cd 6e04 	strd	r6, lr, [sp, #16]
 8002600:	281f      	cmp	r0, #31
 8002602:	46a6      	mov	lr, r4
 8002604:	990e      	ldr	r1, [sp, #56]	; 0x38
 8002606:	4421      	add	r1, r4
 8002608:	9108      	str	r1, [sp, #32]
 800260a:	f04f 0100 	mov.w	r1, #0
 800260e:	bf88      	it	hi
 8002610:	2101      	movhi	r1, #1
 8002612:	eb0b 0181 	add.w	r1, fp, r1, lsl #2
 8002616:	f8d1 900c 	ldr.w	r9, [r1, #12]
 800261a:	4621      	mov	r1, r4
 800261c:	9106      	str	r1, [sp, #24]
 800261e:	4401      	add	r1, r0
 8002620:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 8002622:	4459      	add	r1, fp
 8002624:	f891 408f 	ldrb.w	r4, [r1, #143]	; 0x8f
 8002628:	940a      	str	r4, [sp, #40]	; 0x28
 800262a:	f891 6090 	ldrb.w	r6, [r1, #144]	; 0x90
 800262e:	f1b9 0901 	subs.w	r9, r9, #1
 8002632:	bf1e      	ittt	ne
 8002634:	eb0b 014e 	addne.w	r1, fp, lr, lsl #1
 8002638:	f831 e00c 	ldrhne.w	lr, [r1, ip]
 800263c:	f1be 0f00 	cmpne.w	lr, #0
 8002640:	d071      	beq.n	8002726 <tdefl_compress+0x322>
 8002642:	eba2 010e 	sub.w	r1, r2, lr
 8002646:	fa1f fa81 	uxth.w	sl, r1
 800264a:	45c2      	cmp	sl, r8
 800264c:	d86b      	bhi.n	8002726 <tdefl_compress+0x322>
 800264e:	f36f 3edf 	bfc	lr, #15, #17
 8002652:	eb0e 0100 	add.w	r1, lr, r0
 8002656:	4459      	add	r1, fp
 8002658:	f891 4090 	ldrb.w	r4, [r1, #144]	; 0x90
 800265c:	42b4      	cmp	r4, r6
 800265e:	d104      	bne.n	800266a <tdefl_compress+0x266>
 8002660:	f891 108f 	ldrb.w	r1, [r1, #143]	; 0x8f
 8002664:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 8002666:	42a1      	cmp	r1, r4
 8002668:	d035      	beq.n	80026d6 <tdefl_compress+0x2d2>
 800266a:	eb0b 014e 	add.w	r1, fp, lr, lsl #1
 800266e:	f831 e00c 	ldrh.w	lr, [r1, ip]
 8002672:	f1be 0f00 	cmp.w	lr, #0
 8002676:	d056      	beq.n	8002726 <tdefl_compress+0x322>
 8002678:	eba2 010e 	sub.w	r1, r2, lr
 800267c:	fa1f fa81 	uxth.w	sl, r1
 8002680:	45c2      	cmp	sl, r8
 8002682:	d850      	bhi.n	8002726 <tdefl_compress+0x322>
 8002684:	f36f 3edf 	bfc	lr, #15, #17
 8002688:	eb0e 0100 	add.w	r1, lr, r0
 800268c:	4459      	add	r1, fp
 800268e:	f891 4090 	ldrb.w	r4, [r1, #144]	; 0x90
 8002692:	42b4      	cmp	r4, r6
 8002694:	d104      	bne.n	80026a0 <tdefl_compress+0x29c>
 8002696:	f891 108f 	ldrb.w	r1, [r1, #143]	; 0x8f
 800269a:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 800269c:	42a1      	cmp	r1, r4
 800269e:	d01a      	beq.n	80026d6 <tdefl_compress+0x2d2>
 80026a0:	eb0b 014e 	add.w	r1, fp, lr, lsl #1
 80026a4:	f831 e00c 	ldrh.w	lr, [r1, ip]
 80026a8:	f1be 0f00 	cmp.w	lr, #0
 80026ac:	d03b      	beq.n	8002726 <tdefl_compress+0x322>
 80026ae:	eba2 010e 	sub.w	r1, r2, lr
 80026b2:	fa1f fa81 	uxth.w	sl, r1
 80026b6:	45c2      	cmp	sl, r8
 80026b8:	d835      	bhi.n	8002726 <tdefl_compress+0x322>
 80026ba:	f36f 3edf 	bfc	lr, #15, #17
 80026be:	eb0e 0100 	add.w	r1, lr, r0
 80026c2:	4459      	add	r1, fp
 80026c4:	f891 4090 	ldrb.w	r4, [r1, #144]	; 0x90
 80026c8:	42b4      	cmp	r4, r6
 80026ca:	d1b0      	bne.n	800262e <tdefl_compress+0x22a>
 80026cc:	f891 108f 	ldrb.w	r1, [r1, #143]	; 0x8f
 80026d0:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 80026d2:	42a1      	cmp	r1, r4
 80026d4:	d1ab      	bne.n	800262e <tdefl_compress+0x22a>
 80026d6:	f1ba 0f00 	cmp.w	sl, #0
 80026da:	d024      	beq.n	8002726 <tdefl_compress+0x322>
 80026dc:	990e      	ldr	r1, [sp, #56]	; 0x38
 80026de:	46ac      	mov	ip, r5
 80026e0:	4471      	add	r1, lr
 80026e2:	9107      	str	r1, [sp, #28]
 80026e4:	2100      	movs	r1, #0
 80026e6:	9c07      	ldr	r4, [sp, #28]
 80026e8:	9d08      	ldr	r5, [sp, #32]
 80026ea:	5c64      	ldrb	r4, [r4, r1]
 80026ec:	5c6d      	ldrb	r5, [r5, r1]
 80026ee:	42a5      	cmp	r5, r4
 80026f0:	d103      	bne.n	80026fa <tdefl_compress+0x2f6>
 80026f2:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 80026f4:	3101      	adds	r1, #1
 80026f6:	42a1      	cmp	r1, r4
 80026f8:	d3f5      	bcc.n	80026e6 <tdefl_compress+0x2e2>
 80026fa:	4665      	mov	r5, ip
 80026fc:	f249 2c72 	movw	ip, #37490	; 0x9272
 8002700:	4281      	cmp	r1, r0
 8002702:	f2c0 0c01 	movt	ip, #1
 8002706:	d992      	bls.n	800262e <tdefl_compress+0x22a>
 8002708:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800270a:	4653      	mov	r3, sl
 800270c:	4281      	cmp	r1, r0
 800270e:	4608      	mov	r0, r1
 8002710:	9906      	ldr	r1, [sp, #24]
 8002712:	f47f af84 	bne.w	800261e <tdefl_compress+0x21a>
 8002716:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8002718:	f8d7 900c 	ldr.w	r9, [r7, #12]
 800271c:	f8dd e014 	ldr.w	lr, [sp, #20]
 8002720:	4653      	mov	r3, sl
 8002722:	460c      	mov	r4, r1
 8002724:	e003      	b.n	800272e <tdefl_compress+0x32a>
 8002726:	f8d7 900c 	ldr.w	r9, [r7, #12]
 800272a:	e9dd e405 	ldrd	lr, r4, [sp, #20]
 800272e:	9e04      	ldr	r6, [sp, #16]
 8002730:	f8dd 8030 	ldr.w	r8, [sp, #48]	; 0x30
 8002734:	e008      	b.n	8002748 <tdefl_compress+0x344>
 8002736:	2000      	movs	r0, #0
 8002738:	2802      	cmp	r0, #2
 800273a:	f04f 0300 	mov.w	r3, #0
 800273e:	bf88      	it	hi
 8002740:	2301      	movhi	r3, #1
 8002742:	2803      	cmp	r0, #3
 8002744:	bf38      	it	cc
 8002746:	2000      	movcc	r0, #0
 8002748:	2200      	movs	r2, #0
 800274a:	0b59      	lsrs	r1, r3, #13
 800274c:	ebb2 3f53 	cmp.w	r2, r3, lsr #13
 8002750:	f04f 0200 	mov.w	r2, #0
 8002754:	bf18      	it	ne
 8002756:	2101      	movne	r1, #1
 8002758:	2803      	cmp	r0, #3
 800275a:	bf08      	it	eq
 800275c:	2201      	moveq	r2, #1
 800275e:	429c      	cmp	r4, r3
 8002760:	d006      	beq.n	8002770 <tdefl_compress+0x36c>
 8002762:	4011      	ands	r1, r2
 8002764:	d104      	bne.n	8002770 <tdefl_compress+0x36c>
 8002766:	ea5f 3188 	movs.w	r1, r8, lsl #14
 800276a:	d503      	bpl.n	8002774 <tdefl_compress+0x370>
 800276c:	2805      	cmp	r0, #5
 800276e:	d801      	bhi.n	8002774 <tdefl_compress+0x370>
 8002770:	2300      	movs	r3, #0
 8002772:	2000      	movs	r0, #0
 8002774:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 8002776:	2e00      	cmp	r6, #0
 8002778:	f000 808c 	beq.w	8002894 <tdefl_compress+0x490>
 800277c:	42b0      	cmp	r0, r6
 800277e:	f240 80ef 	bls.w	8002960 <tdefl_compress+0x55c>
 8002782:	f8db 203c 	ldr.w	r2, [fp, #60]	; 0x3c
 8002786:	f89b 1054 	ldrb.w	r1, [fp, #84]	; 0x54
 800278a:	3201      	adds	r2, #1
 800278c:	f8cb 203c 	str.w	r2, [fp, #60]	; 0x3c
 8002790:	f8db 2028 	ldr.w	r2, [fp, #40]	; 0x28
 8002794:	1c56      	adds	r6, r2, #1
 8002796:	f8cb 6028 	str.w	r6, [fp, #40]	; 0x28
 800279a:	7011      	strb	r1, [r2, #0]
 800279c:	f8db 202c 	ldr.w	r2, [fp, #44]	; 0x2c
 80027a0:	7816      	ldrb	r6, [r2, #0]
 80027a2:	0876      	lsrs	r6, r6, #1
 80027a4:	7016      	strb	r6, [r2, #0]
 80027a6:	f8db 2038 	ldr.w	r2, [fp, #56]	; 0x38
 80027aa:	3a01      	subs	r2, #1
 80027ac:	f8cb 2038 	str.w	r2, [fp, #56]	; 0x38
 80027b0:	d107      	bne.n	80027c2 <tdefl_compress+0x3be>
 80027b2:	2208      	movs	r2, #8
 80027b4:	f8cb 2038 	str.w	r2, [fp, #56]	; 0x38
 80027b8:	f8db 2028 	ldr.w	r2, [fp, #40]	; 0x28
 80027bc:	1c56      	adds	r6, r2, #1
 80027be:	e9cb 620a 	strd	r6, r2, [fp, #40]	; 0x28
 80027c2:	eb0b 0141 	add.w	r1, fp, r1, lsl #1
 80027c6:	f248 1692 	movw	r6, #33170	; 0x8192
 80027ca:	2880      	cmp	r0, #128	; 0x80
 80027cc:	5b8a      	ldrh	r2, [r1, r6]
 80027ce:	f102 0201 	add.w	r2, r2, #1
 80027d2:	538a      	strh	r2, [r1, r6]
 80027d4:	f0c0 8157 	bcc.w	8002a86 <tdefl_compress+0x682>
 80027d8:	1e59      	subs	r1, r3, #1
 80027da:	462c      	mov	r4, r5
 80027dc:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80027e0:	f080 82fb 	bcs.w	8002dda <tdefl_compress+0x9d6>
 80027e4:	f8db 203c 	ldr.w	r2, [fp, #60]	; 0x3c
 80027e8:	f1a0 0803 	sub.w	r8, r0, #3
 80027ec:	4402      	add	r2, r0
 80027ee:	f8cb 203c 	str.w	r2, [fp, #60]	; 0x3c
 80027f2:	2280      	movs	r2, #128	; 0x80
 80027f4:	f8db 3028 	ldr.w	r3, [fp, #40]	; 0x28
 80027f8:	f883 8000 	strb.w	r8, [r3]
 80027fc:	f8db 3028 	ldr.w	r3, [fp, #40]	; 0x28
 8002800:	7059      	strb	r1, [r3, #1]
 8002802:	0a0b      	lsrs	r3, r1, #8
 8002804:	f8db 6028 	ldr.w	r6, [fp, #40]	; 0x28
 8002808:	70b3      	strb	r3, [r6, #2]
 800280a:	f8db 6028 	ldr.w	r6, [fp, #40]	; 0x28
 800280e:	3603      	adds	r6, #3
 8002810:	f8cb 6028 	str.w	r6, [fp, #40]	; 0x28
 8002814:	f8db 602c 	ldr.w	r6, [fp, #44]	; 0x2c
 8002818:	7835      	ldrb	r5, [r6, #0]
 800281a:	ea42 0555 	orr.w	r5, r2, r5, lsr #1
 800281e:	7035      	strb	r5, [r6, #0]
 8002820:	f8db 6038 	ldr.w	r6, [fp, #56]	; 0x38
 8002824:	3e01      	subs	r6, #1
 8002826:	f8cb 6038 	str.w	r6, [fp, #56]	; 0x38
 800282a:	d107      	bne.n	800283c <tdefl_compress+0x438>
 800282c:	2508      	movs	r5, #8
 800282e:	f8cb 5038 	str.w	r5, [fp, #56]	; 0x38
 8002832:	f8db 6028 	ldr.w	r6, [fp, #40]	; 0x28
 8002836:	1c75      	adds	r5, r6, #1
 8002838:	e9cb 560a 	strd	r5, r6, [fp, #40]	; 0x28
 800283c:	f24c 1209 	movw	r2, #49417	; 0xc109
 8002840:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8002844:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8002848:	f36f 215f 	bfc	r1, #9, #23
 800284c:	4625      	mov	r5, r4
 800284e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002852:	4413      	add	r3, r2
 8002854:	f64b 7209 	movw	r2, #48905	; 0xbf09
 8002858:	f6c0 0200 	movt	r2, #2048	; 0x800
 800285c:	bf38      	it	cc
 800285e:	1853      	addcc	r3, r2, r1
 8002860:	7819      	ldrb	r1, [r3, #0]
 8002862:	f248 1392 	movw	r3, #33170	; 0x8192
 8002866:	445b      	add	r3, fp
 8002868:	eb03 0141 	add.w	r1, r3, r1, lsl #1
 800286c:	f8b1 6240 	ldrh.w	r6, [r1, #576]	; 0x240
 8002870:	3601      	adds	r6, #1
 8002872:	f8a1 6240 	strh.w	r6, [r1, #576]	; 0x240
 8002876:	f24c 118a 	movw	r1, #49546	; 0xc18a
 800287a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800287e:	f831 1018 	ldrh.w	r1, [r1, r8, lsl #1]
 8002882:	f833 2011 	ldrh.w	r2, [r3, r1, lsl #1]
 8002886:	3201      	adds	r2, #1
 8002888:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
 800288c:	2100      	movs	r1, #0
 800288e:	f8cb 1050 	str.w	r1, [fp, #80]	; 0x50
 8002892:	e103      	b.n	8002a9c <tdefl_compress+0x698>
 8002894:	2b00      	cmp	r3, #0
 8002896:	f000 80c5 	beq.w	8002a24 <tdefl_compress+0x620>
 800289a:	f8db 1014 	ldr.w	r1, [fp, #20]
 800289e:	2900      	cmp	r1, #0
 80028a0:	f000 80ea 	beq.w	8002a78 <tdefl_compress+0x674>
 80028a4:	462c      	mov	r4, r5
 80028a6:	2803      	cmp	r0, #3
 80028a8:	f0c0 8297 	bcc.w	8002dda <tdefl_compress+0x9d6>
 80028ac:	1e59      	subs	r1, r3, #1
 80028ae:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80028b2:	f080 8292 	bcs.w	8002dda <tdefl_compress+0x9d6>
 80028b6:	f8db 203c 	ldr.w	r2, [fp, #60]	; 0x3c
 80028ba:	f1a0 0803 	sub.w	r8, r0, #3
 80028be:	4402      	add	r2, r0
 80028c0:	f8cb 203c 	str.w	r2, [fp, #60]	; 0x3c
 80028c4:	2280      	movs	r2, #128	; 0x80
 80028c6:	f8db 3028 	ldr.w	r3, [fp, #40]	; 0x28
 80028ca:	f883 8000 	strb.w	r8, [r3]
 80028ce:	f8db 3028 	ldr.w	r3, [fp, #40]	; 0x28
 80028d2:	7059      	strb	r1, [r3, #1]
 80028d4:	0a0b      	lsrs	r3, r1, #8
 80028d6:	f8db 6028 	ldr.w	r6, [fp, #40]	; 0x28
 80028da:	70b3      	strb	r3, [r6, #2]
 80028dc:	f8db 6028 	ldr.w	r6, [fp, #40]	; 0x28
 80028e0:	3603      	adds	r6, #3
 80028e2:	f8cb 6028 	str.w	r6, [fp, #40]	; 0x28
 80028e6:	f8db 602c 	ldr.w	r6, [fp, #44]	; 0x2c
 80028ea:	7835      	ldrb	r5, [r6, #0]
 80028ec:	ea42 0555 	orr.w	r5, r2, r5, lsr #1
 80028f0:	7035      	strb	r5, [r6, #0]
 80028f2:	f8db 6038 	ldr.w	r6, [fp, #56]	; 0x38
 80028f6:	3e01      	subs	r6, #1
 80028f8:	f8cb 6038 	str.w	r6, [fp, #56]	; 0x38
 80028fc:	d107      	bne.n	800290e <tdefl_compress+0x50a>
 80028fe:	2508      	movs	r5, #8
 8002900:	f8cb 5038 	str.w	r5, [fp, #56]	; 0x38
 8002904:	f8db 6028 	ldr.w	r6, [fp, #40]	; 0x28
 8002908:	1c75      	adds	r5, r6, #1
 800290a:	e9cb 560a 	strd	r5, r6, [fp, #40]	; 0x28
 800290e:	f24c 1209 	movw	r2, #49417	; 0xc109
 8002912:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8002916:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800291a:	f36f 215f 	bfc	r1, #9, #23
 800291e:	4625      	mov	r5, r4
 8002920:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002924:	4413      	add	r3, r2
 8002926:	f64b 7209 	movw	r2, #48905	; 0xbf09
 800292a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800292e:	bf38      	it	cc
 8002930:	1853      	addcc	r3, r2, r1
 8002932:	7819      	ldrb	r1, [r3, #0]
 8002934:	f248 1392 	movw	r3, #33170	; 0x8192
 8002938:	445b      	add	r3, fp
 800293a:	eb03 0141 	add.w	r1, r3, r1, lsl #1
 800293e:	f8b1 6240 	ldrh.w	r6, [r1, #576]	; 0x240
 8002942:	3601      	adds	r6, #1
 8002944:	f8a1 6240 	strh.w	r6, [r1, #576]	; 0x240
 8002948:	f24c 118a 	movw	r1, #49546	; 0xc18a
 800294c:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002950:	f831 1018 	ldrh.w	r1, [r1, r8, lsl #1]
 8002954:	f833 2011 	ldrh.w	r2, [r3, r1, lsl #1]
 8002958:	3201      	adds	r2, #1
 800295a:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
 800295e:	e09d      	b.n	8002a9c <tdefl_compress+0x698>
 8002960:	2e03      	cmp	r6, #3
 8002962:	f0c0 823a 	bcc.w	8002dda <tdefl_compress+0x9d6>
 8002966:	f8db 004c 	ldr.w	r0, [fp, #76]	; 0x4c
 800296a:	3801      	subs	r0, #1
 800296c:	f5b0 4f00 	cmp.w	r0, #32768	; 0x8000
 8002970:	f080 8233 	bcs.w	8002dda <tdefl_compress+0x9d6>
 8002974:	f8db 103c 	ldr.w	r1, [fp, #60]	; 0x3c
 8002978:	2480      	movs	r4, #128	; 0x80
 800297a:	4431      	add	r1, r6
 800297c:	f8cb 103c 	str.w	r1, [fp, #60]	; 0x3c
 8002980:	1ef1      	subs	r1, r6, #3
 8002982:	f8db 2028 	ldr.w	r2, [fp, #40]	; 0x28
 8002986:	7011      	strb	r1, [r2, #0]
 8002988:	f8db 2028 	ldr.w	r2, [fp, #40]	; 0x28
 800298c:	7050      	strb	r0, [r2, #1]
 800298e:	0a02      	lsrs	r2, r0, #8
 8002990:	f8db 3028 	ldr.w	r3, [fp, #40]	; 0x28
 8002994:	709a      	strb	r2, [r3, #2]
 8002996:	f8db 3028 	ldr.w	r3, [fp, #40]	; 0x28
 800299a:	3303      	adds	r3, #3
 800299c:	f8cb 3028 	str.w	r3, [fp, #40]	; 0x28
 80029a0:	f8db 302c 	ldr.w	r3, [fp, #44]	; 0x2c
 80029a4:	781e      	ldrb	r6, [r3, #0]
 80029a6:	ea44 0656 	orr.w	r6, r4, r6, lsr #1
 80029aa:	701e      	strb	r6, [r3, #0]
 80029ac:	f8db 3038 	ldr.w	r3, [fp, #56]	; 0x38
 80029b0:	3b01      	subs	r3, #1
 80029b2:	f8cb 3038 	str.w	r3, [fp, #56]	; 0x38
 80029b6:	d107      	bne.n	80029c8 <tdefl_compress+0x5c4>
 80029b8:	2308      	movs	r3, #8
 80029ba:	f8cb 3038 	str.w	r3, [fp, #56]	; 0x38
 80029be:	f8db 3028 	ldr.w	r3, [fp, #40]	; 0x28
 80029c2:	1c5e      	adds	r6, r3, #1
 80029c4:	e9cb 630a 	strd	r6, r3, [fp, #40]	; 0x28
 80029c8:	f24c 1309 	movw	r3, #49417	; 0xc109
 80029cc:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 80029d0:	f5b0 7f00 	cmp.w	r0, #512	; 0x200
 80029d4:	f36f 205f 	bfc	r0, #9, #23
 80029d8:	f6c0 0300 	movt	r3, #2048	; 0x800
 80029dc:	441a      	add	r2, r3
 80029de:	f64b 7309 	movw	r3, #48905	; 0xbf09
 80029e2:	f6c0 0300 	movt	r3, #2048	; 0x800
 80029e6:	bf38      	it	cc
 80029e8:	181a      	addcc	r2, r3, r0
 80029ea:	7810      	ldrb	r0, [r2, #0]
 80029ec:	f248 1292 	movw	r2, #33170	; 0x8192
 80029f0:	445a      	add	r2, fp
 80029f2:	eb02 0040 	add.w	r0, r2, r0, lsl #1
 80029f6:	f8b0 3240 	ldrh.w	r3, [r0, #576]	; 0x240
 80029fa:	3301      	adds	r3, #1
 80029fc:	f8a0 3240 	strh.w	r3, [r0, #576]	; 0x240
 8002a00:	f24c 108a 	movw	r0, #49546	; 0xc18a
 8002a04:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002a08:	f830 0011 	ldrh.w	r0, [r0, r1, lsl #1]
 8002a0c:	f832 1010 	ldrh.w	r1, [r2, r0, lsl #1]
 8002a10:	3101      	adds	r1, #1
 8002a12:	f822 1010 	strh.w	r1, [r2, r0, lsl #1]
 8002a16:	2100      	movs	r1, #0
 8002a18:	f8db 0050 	ldr.w	r0, [fp, #80]	; 0x50
 8002a1c:	f8cb 1050 	str.w	r1, [fp, #80]	; 0x50
 8002a20:	3801      	subs	r0, #1
 8002a22:	e03b      	b.n	8002a9c <tdefl_compress+0x698>
 8002a24:	f8db 103c 	ldr.w	r1, [fp, #60]	; 0x3c
 8002a28:	eb0b 0004 	add.w	r0, fp, r4
 8002a2c:	f890 0090 	ldrb.w	r0, [r0, #144]	; 0x90
 8002a30:	3101      	adds	r1, #1
 8002a32:	f8cb 103c 	str.w	r1, [fp, #60]	; 0x3c
 8002a36:	f8db 1028 	ldr.w	r1, [fp, #40]	; 0x28
 8002a3a:	1c4a      	adds	r2, r1, #1
 8002a3c:	f8cb 2028 	str.w	r2, [fp, #40]	; 0x28
 8002a40:	7008      	strb	r0, [r1, #0]
 8002a42:	f8db 102c 	ldr.w	r1, [fp, #44]	; 0x2c
 8002a46:	780a      	ldrb	r2, [r1, #0]
 8002a48:	0852      	lsrs	r2, r2, #1
 8002a4a:	700a      	strb	r2, [r1, #0]
 8002a4c:	f8db 1038 	ldr.w	r1, [fp, #56]	; 0x38
 8002a50:	3901      	subs	r1, #1
 8002a52:	f8cb 1038 	str.w	r1, [fp, #56]	; 0x38
 8002a56:	d107      	bne.n	8002a68 <tdefl_compress+0x664>
 8002a58:	2108      	movs	r1, #8
 8002a5a:	f8cb 1038 	str.w	r1, [fp, #56]	; 0x38
 8002a5e:	f8db 1028 	ldr.w	r1, [fp, #40]	; 0x28
 8002a62:	1c4a      	adds	r2, r1, #1
 8002a64:	e9cb 210a 	strd	r2, r1, [fp, #40]	; 0x28
 8002a68:	eb0b 0040 	add.w	r0, fp, r0, lsl #1
 8002a6c:	f248 1292 	movw	r2, #33170	; 0x8192
 8002a70:	5a81      	ldrh	r1, [r0, r2]
 8002a72:	3101      	adds	r1, #1
 8002a74:	5281      	strh	r1, [r0, r2]
 8002a76:	e010      	b.n	8002a9a <tdefl_compress+0x696>
 8002a78:	ea5f 31c8 	movs.w	r1, r8, lsl #15
 8002a7c:	f53f af12 	bmi.w	80028a4 <tdefl_compress+0x4a0>
 8002a80:	2880      	cmp	r0, #128	; 0x80
 8002a82:	f4bf af0f 	bcs.w	80028a4 <tdefl_compress+0x4a0>
 8002a86:	eb0b 0104 	add.w	r1, fp, r4
 8002a8a:	f891 1090 	ldrb.w	r1, [r1, #144]	; 0x90
 8002a8e:	f8cb 304c 	str.w	r3, [fp, #76]	; 0x4c
 8002a92:	f8cb 0050 	str.w	r0, [fp, #80]	; 0x50
 8002a96:	f8cb 1054 	str.w	r1, [fp, #84]	; 0x54
 8002a9a:	2001      	movs	r0, #1
 8002a9c:	f8db 101c 	ldr.w	r1, [fp, #28]
 8002aa0:	4401      	add	r1, r0
 8002aa2:	f8cb 101c 	str.w	r1, [fp, #28]
 8002aa6:	f8db 1020 	ldr.w	r1, [fp, #32]
 8002aaa:	4281      	cmp	r1, r0
 8002aac:	f0c0 8185 	bcc.w	8002dba <tdefl_compress+0x9b6>
 8002ab0:	1a09      	subs	r1, r1, r0
 8002ab2:	f8cb 1020 	str.w	r1, [fp, #32]
 8002ab6:	f8db 1024 	ldr.w	r1, [fp, #36]	; 0x24
 8002aba:	4408      	add	r0, r1
 8002abc:	f5b0 4f00 	cmp.w	r0, #32768	; 0x8000
 8002ac0:	bf28      	it	cs
 8002ac2:	f44f 4000 	movcs.w	r0, #32768	; 0x8000
 8002ac6:	f8cb 0024 	str.w	r0, [fp, #36]	; 0x24
 8002aca:	f8db 0028 	ldr.w	r0, [fp, #40]	; 0x28
 8002ace:	9909      	ldr	r1, [sp, #36]	; 0x24
 8002ad0:	4288      	cmp	r0, r1
 8002ad2:	d90e      	bls.n	8002af2 <tdefl_compress+0x6ee>
 8002ad4:	4658      	mov	r0, fp
 8002ad6:	2100      	movs	r1, #0
 8002ad8:	e9cb e521 	strd	lr, r5, [fp, #132]	; 0x84
 8002adc:	4674      	mov	r4, lr
 8002ade:	f001 fde9 	bl	80046b4 <tdefl_flush_block>
 8002ae2:	f249 2c72 	movw	ip, #37490	; 0x9272
 8002ae6:	46a6      	mov	lr, r4
 8002ae8:	2800      	cmp	r0, #0
 8002aea:	f2c0 0c01 	movt	ip, #1
 8002aee:	d010      	beq.n	8002b12 <tdefl_compress+0x70e>
 8002af0:	e0fd      	b.n	8002cee <tdefl_compress+0x8ea>
 8002af2:	f8db 103c 	ldr.w	r1, [fp, #60]	; 0x3c
 8002af6:	f5b1 4ff8 	cmp.w	r1, #31744	; 0x7c00
 8002afa:	d90a      	bls.n	8002b12 <tdefl_compress+0x70e>
 8002afc:	9a03      	ldr	r2, [sp, #12]
 8002afe:	1a80      	subs	r0, r0, r2
 8002b00:	2273      	movs	r2, #115	; 0x73
 8002b02:	4350      	muls	r0, r2
 8002b04:	09c0      	lsrs	r0, r0, #7
 8002b06:	4288      	cmp	r0, r1
 8002b08:	d2e4      	bcs.n	8002ad4 <tdefl_compress+0x6d0>
 8002b0a:	f89b 000a 	ldrb.w	r0, [fp, #10]
 8002b0e:	0700      	lsls	r0, r0, #28
 8002b10:	d4e0      	bmi.n	8002ad4 <tdefl_compress+0x6d0>
 8002b12:	b125      	cbz	r5, 8002b1e <tdefl_compress+0x71a>
 8002b14:	46e2      	mov	sl, ip
 8002b16:	46ac      	mov	ip, r5
 8002b18:	f8db 5020 	ldr.w	r5, [fp, #32]
 8002b1c:	e009      	b.n	8002b32 <tdefl_compress+0x72e>
 8002b1e:	f1b9 0f00 	cmp.w	r9, #0
 8002b22:	bf1f      	itttt	ne
 8002b24:	46e2      	movne	sl, ip
 8002b26:	46ac      	movne	ip, r5
 8002b28:	f8db 5020 	ldrne.w	r5, [fp, #32]
 8002b2c:	2d00      	cmpne	r5, #0
 8002b2e:	f000 80d6 	beq.w	8002cde <tdefl_compress+0x8da>
 8002b32:	f8db 0024 	ldr.w	r0, [fp, #36]	; 0x24
 8002b36:	46f0      	mov	r8, lr
 8002b38:	900c      	str	r0, [sp, #48]	; 0x30
 8002b3a:	4428      	add	r0, r5
 8002b3c:	2801      	cmp	r0, #1
 8002b3e:	d952      	bls.n	8002be6 <tdefl_compress+0x7e2>
 8002b40:	f8db 001c 	ldr.w	r0, [fp, #28]
 8002b44:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002b46:	f647 71ff 	movw	r1, #32767	; 0x7fff
 8002b4a:	f5c5 7681 	rsb	r6, r5, #258	; 0x102
 8002b4e:	45b4      	cmp	ip, r6
 8002b50:	4428      	add	r0, r5
 8002b52:	f1a0 0402 	sub.w	r4, r0, #2
 8002b56:	4401      	add	r1, r0
 8002b58:	4622      	mov	r2, r4
 8002b5a:	f36f 31df 	bfc	r1, #15, #17
 8002b5e:	f36f 32df 	bfc	r2, #15, #17
 8002b62:	5c59      	ldrb	r1, [r3, r1]
 8002b64:	5c9a      	ldrb	r2, [r3, r2]
 8002b66:	bf38      	it	cc
 8002b68:	4666      	movcc	r6, ip
 8002b6a:	4435      	add	r5, r6
 8002b6c:	2e00      	cmp	r6, #0
 8002b6e:	ebac 0c06 	sub.w	ip, ip, r6
 8002b72:	f8cb 5020 	str.w	r5, [fp, #32]
 8002b76:	f8cd c034 	str.w	ip, [sp, #52]	; 0x34
 8002b7a:	f000 8099 	beq.w	8002cb0 <tdefl_compress+0x8ac>
 8002b7e:	44b6      	add	lr, r6
 8002b80:	ea81 1242 	eor.w	r2, r1, r2, lsl #5
 8002b84:	46d4      	mov	ip, sl
 8002b86:	950b      	str	r5, [sp, #44]	; 0x2c
 8002b88:	f818 1b01 	ldrb.w	r1, [r8], #1
 8002b8c:	f647 73e0 	movw	r3, #32736	; 0x7fe0
 8002b90:	f36f 30df 	bfc	r0, #15, #17
 8002b94:	f249 2a72 	movw	sl, #37490	; 0x9272
 8002b98:	ea03 1242 	and.w	r2, r3, r2, lsl #5
 8002b9c:	eb0b 0500 	add.w	r5, fp, r0
 8002ba0:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8002ba4:	f2c0 0a02 	movt	sl, #2
 8002ba8:	4623      	mov	r3, r4
 8002baa:	f36f 33df 	bfc	r3, #15, #17
 8002bae:	eb0b 0343 	add.w	r3, fp, r3, lsl #1
 8002bb2:	ea82 0201 	eor.w	r2, r2, r1
 8002bb6:	f885 1090 	strb.w	r1, [r5, #144]	; 0x90
 8002bba:	bf9e      	ittt	ls
 8002bbc:	f440 4500 	orrls.w	r5, r0, #32768	; 0x8000
 8002bc0:	445d      	addls	r5, fp
 8002bc2:	f885 1090 	strbls.w	r1, [r5, #144]	; 0x90
 8002bc6:	3e01      	subs	r6, #1
 8002bc8:	f100 0001 	add.w	r0, r0, #1
 8002bcc:	eb0b 0142 	add.w	r1, fp, r2, lsl #1
 8002bd0:	f831 500a 	ldrh.w	r5, [r1, sl]
 8002bd4:	f823 500c 	strh.w	r5, [r3, ip]
 8002bd8:	f821 400a 	strh.w	r4, [r1, sl]
 8002bdc:	f104 0401 	add.w	r4, r4, #1
 8002be0:	d1d2      	bne.n	8002b88 <tdefl_compress+0x784>
 8002be2:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8002be4:	e069      	b.n	8002cba <tdefl_compress+0x8b6>
 8002be6:	f1bc 0f00 	cmp.w	ip, #0
 8002bea:	d063      	beq.n	8002cb4 <tdefl_compress+0x8b0>
 8002bec:	f647 70fd 	movw	r0, #32765	; 0x7ffd
 8002bf0:	f1a5 0a02 	sub.w	sl, r5, #2
 8002bf4:	950b      	str	r5, [sp, #44]	; 0x2c
 8002bf6:	4428      	add	r0, r5
 8002bf8:	900d      	str	r0, [sp, #52]	; 0x34
 8002bfa:	980c      	ldr	r0, [sp, #48]	; 0x30
 8002bfc:	eb00 090a 	add.w	r9, r0, sl
 8002c00:	2000      	movs	r0, #0
 8002c02:	eb0a 0200 	add.w	r2, sl, r0
 8002c06:	1c91      	adds	r1, r2, #2
 8002c08:	f5b1 7f81 	cmp.w	r1, #258	; 0x102
 8002c0c:	f4bf aca4 	bcs.w	8002558 <tdefl_compress+0x154>
 8002c10:	f8db 301c 	ldr.w	r3, [fp, #28]
 8002c14:	f81e 5000 	ldrb.w	r5, [lr, r0]
 8002c18:	18d1      	adds	r1, r2, r3
 8002c1a:	3203      	adds	r2, #3
 8002c1c:	1c8e      	adds	r6, r1, #2
 8002c1e:	f36f 36df 	bfc	r6, #15, #17
 8002c22:	eb0b 0406 	add.w	r4, fp, r6
 8002c26:	f5b6 7f80 	cmp.w	r6, #256	; 0x100
 8002c2a:	f884 5090 	strb.w	r5, [r4, #144]	; 0x90
 8002c2e:	bf9e      	ittt	ls
 8002c30:	f446 4400 	orrls.w	r4, r6, #32768	; 0x8000
 8002c34:	445c      	addls	r4, fp
 8002c36:	f884 5090 	strbls.w	r5, [r4, #144]	; 0x90
 8002c3a:	f8cb 2020 	str.w	r2, [fp, #32]
 8002c3e:	eb09 0200 	add.w	r2, r9, r0
 8002c42:	3203      	adds	r2, #3
 8002c44:	2a03      	cmp	r2, #3
 8002c46:	d325      	bcc.n	8002c94 <tdefl_compress+0x890>
 8002c48:	f8dd e038 	ldr.w	lr, [sp, #56]	; 0x38
 8002c4c:	460a      	mov	r2, r1
 8002c4e:	f44f 46f8 	mov.w	r6, #31744	; 0x7c00
 8002c52:	f36f 32df 	bfc	r2, #15, #17
 8002c56:	f81e 4002 	ldrb.w	r4, [lr, r2]
 8002c5a:	eb0b 0242 	add.w	r2, fp, r2, lsl #1
 8002c5e:	ea06 2484 	and.w	r4, r6, r4, lsl #10
 8002c62:	9e0d      	ldr	r6, [sp, #52]	; 0x34
 8002c64:	4406      	add	r6, r0
 8002c66:	4433      	add	r3, r6
 8002c68:	f249 2672 	movw	r6, #37490	; 0x9272
 8002c6c:	3302      	adds	r3, #2
 8002c6e:	f2c0 0602 	movt	r6, #2
 8002c72:	f36f 33df 	bfc	r3, #15, #17
 8002c76:	f81e 3003 	ldrb.w	r3, [lr, r3]
 8002c7a:	46c6      	mov	lr, r8
 8002c7c:	ea85 1343 	eor.w	r3, r5, r3, lsl #5
 8002c80:	f249 2572 	movw	r5, #37490	; 0x9272
 8002c84:	4063      	eors	r3, r4
 8002c86:	f2c0 0501 	movt	r5, #1
 8002c8a:	eb0b 0343 	add.w	r3, fp, r3, lsl #1
 8002c8e:	5b9c      	ldrh	r4, [r3, r6]
 8002c90:	5354      	strh	r4, [r2, r5]
 8002c92:	5399      	strh	r1, [r3, r6]
 8002c94:	3001      	adds	r0, #1
 8002c96:	4584      	cmp	ip, r0
 8002c98:	d1b3      	bne.n	8002c02 <tdefl_compress+0x7fe>
 8002c9a:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8002c9c:	f8d7 900c 	ldr.w	r9, [r7, #12]
 8002ca0:	f249 2c72 	movw	ip, #37490	; 0x9272
 8002ca4:	4486      	add	lr, r0
 8002ca6:	f2c0 0c01 	movt	ip, #1
 8002caa:	4405      	add	r5, r0
 8002cac:	2000      	movs	r0, #0
 8002cae:	e003      	b.n	8002cb8 <tdefl_compress+0x8b4>
 8002cb0:	46d4      	mov	ip, sl
 8002cb2:	e002      	b.n	8002cba <tdefl_compress+0x8b6>
 8002cb4:	2000      	movs	r0, #0
 8002cb6:	46d4      	mov	ip, sl
 8002cb8:	900d      	str	r0, [sp, #52]	; 0x34
 8002cba:	990c      	ldr	r1, [sp, #48]	; 0x30
 8002cbc:	f5c5 4000 	rsb	r0, r5, #32768	; 0x8000
 8002cc0:	4288      	cmp	r0, r1
 8002cc2:	bf38      	it	cc
 8002cc4:	4601      	movcc	r1, r0
 8002cc6:	f1b9 0f00 	cmp.w	r9, #0
 8002cca:	4688      	mov	r8, r1
 8002ccc:	f8cb 1024 	str.w	r1, [fp, #36]	; 0x24
 8002cd0:	f47f ac59 	bne.w	8002586 <tdefl_compress+0x182>
 8002cd4:	f5b5 7f81 	cmp.w	r5, #258	; 0x102
 8002cd8:	f4bf ac55 	bcs.w	8002586 <tdefl_compress+0x182>
 8002cdc:	e001      	b.n	8002ce2 <tdefl_compress+0x8de>
 8002cde:	2000      	movs	r0, #0
 8002ce0:	900d      	str	r0, [sp, #52]	; 0x34
 8002ce2:	f8cb e084 	str.w	lr, [fp, #132]	; 0x84
 8002ce6:	980d      	ldr	r0, [sp, #52]	; 0x34
 8002ce8:	f8cb 0088 	str.w	r0, [fp, #136]	; 0x88
 8002cec:	e002      	b.n	8002cf4 <tdefl_compress+0x8f0>
 8002cee:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8002cf2:	dd3f      	ble.n	8002d74 <tdefl_compress+0x970>
 8002cf4:	9902      	ldr	r1, [sp, #8]
 8002cf6:	2900      	cmp	r1, #0
 8002cf8:	bf1c      	itt	ne
 8002cfa:	f8db 0008 	ldrne.w	r0, [fp, #8]
 8002cfe:	f410 5040 	andsne.w	r0, r0, #12288	; 0x3000
 8002d02:	d008      	beq.n	8002d16 <tdefl_compress+0x912>
 8002d04:	f8db 2084 	ldr.w	r2, [fp, #132]	; 0x84
 8002d08:	f8db 0018 	ldr.w	r0, [fp, #24]
 8002d0c:	1a52      	subs	r2, r2, r1
 8002d0e:	f7ff f991 	bl	8002034 <mz_adler32>
 8002d12:	f8cb 0018 	str.w	r0, [fp, #24]
 8002d16:	f1b9 0f00 	cmp.w	r9, #0
 8002d1a:	d008      	beq.n	8002d2e <tdefl_compress+0x92a>
 8002d1c:	f8db 0020 	ldr.w	r0, [fp, #32]
 8002d20:	b928      	cbnz	r0, 8002d2e <tdefl_compress+0x92a>
 8002d22:	f8db 0088 	ldr.w	r0, [fp, #136]	; 0x88
 8002d26:	b910      	cbnz	r0, 8002d2e <tdefl_compress+0x92a>
 8002d28:	f8db 005c 	ldr.w	r0, [fp, #92]	; 0x5c
 8002d2c:	b330      	cbz	r0, 8002d7c <tdefl_compress+0x978>
 8002d2e:	f8db 0078 	ldr.w	r0, [fp, #120]	; 0x78
 8002d32:	2800      	cmp	r0, #0
 8002d34:	bf1f      	itttt	ne
 8002d36:	f8db 1070 	ldrne.w	r1, [fp, #112]	; 0x70
 8002d3a:	f8db 2084 	ldrne.w	r2, [fp, #132]	; 0x84
 8002d3e:	1a51      	subne	r1, r2, r1
 8002d40:	6001      	strne	r1, [r0, #0]
 8002d42:	f8db 007c 	ldr.w	r0, [fp, #124]	; 0x7c
 8002d46:	2800      	cmp	r0, #0
 8002d48:	f43f abe8 	beq.w	800251c <tdefl_compress+0x118>
 8002d4c:	e9db 1516 	ldrd	r1, r5, [fp, #88]	; 0x58
 8002d50:	f8db 308c 	ldr.w	r3, [fp, #140]	; 0x8c
 8002d54:	6800      	ldr	r0, [r0, #0]
 8002d56:	f8db 2074 	ldr.w	r2, [fp, #116]	; 0x74
 8002d5a:	f249 2672 	movw	r6, #37490	; 0x9272
 8002d5e:	f2c0 0603 	movt	r6, #3
 8002d62:	1ac0      	subs	r0, r0, r3
 8002d64:	4459      	add	r1, fp
 8002d66:	42a8      	cmp	r0, r5
 8002d68:	4431      	add	r1, r6
 8002d6a:	bf38      	it	cc
 8002d6c:	4605      	movcc	r5, r0
 8002d6e:	18d0      	adds	r0, r2, r3
 8002d70:	f7ff bbbf 	b.w	80024f2 <tdefl_compress+0xee>
 8002d74:	f8db 006c 	ldr.w	r0, [fp, #108]	; 0x6c
 8002d78:	f7ff bb94 	b.w	80024a4 <tdefl_compress+0xa0>
 8002d7c:	4658      	mov	r0, fp
 8002d7e:	4649      	mov	r1, r9
 8002d80:	f001 fc98 	bl	80046b4 <tdefl_flush_block>
 8002d84:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8002d88:	dd13      	ble.n	8002db2 <tdefl_compress+0x9ae>
 8002d8a:	9801      	ldr	r0, [sp, #4]
 8002d8c:	f249 2172 	movw	r1, #37490	; 0x9272
 8002d90:	f1b9 0f03 	cmp.w	r9, #3
 8002d94:	f2c0 0101 	movt	r1, #1
 8002d98:	f8cb 0060 	str.w	r0, [fp, #96]	; 0x60
 8002d9c:	d1c7      	bne.n	8002d2e <tdefl_compress+0x92a>
 8002d9e:	2000      	movs	r0, #0
 8002da0:	f8cb 0024 	str.w	r0, [fp, #36]	; 0x24
 8002da4:	eb0b 0001 	add.w	r0, fp, r1
 8002da8:	f44f 3100 	mov.w	r1, #131072	; 0x20000
 8002dac:	f003 f924 	bl	8005ff8 <__aeabi_memclr>
 8002db0:	e7bd      	b.n	8002d2e <tdefl_compress+0x92a>
 8002db2:	f8db 006c 	ldr.w	r0, [fp, #108]	; 0x6c
 8002db6:	f7ff bb75 	b.w	80024a4 <tdefl_compress+0xa0>
 8002dba:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8002dbe:	f64c 1235 	movw	r2, #51509	; 0xc935
 8002dc2:	f64c 134b 	movw	r3, #51531	; 0xc94b
 8002dc6:	f640 2143 	movw	r1, #2627	; 0xa43
 8002dca:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002dce:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002dd2:	f6c0 0300 	movt	r3, #2048	; 0x800
 8002dd6:	f003 f915 	bl	8006004 <__assert_func>
 8002dda:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8002dde:	f64c 12a4 	movw	r2, #51620	; 0xc9a4
 8002de2:	f64c 13b7 	movw	r3, #51639	; 0xc9b7
 8002de6:	f640 11cd 	movw	r1, #2509	; 0x9cd
 8002dea:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002dee:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002df2:	f6c0 0300 	movt	r3, #2048	; 0x800
 8002df6:	f003 f905 	bl	8006004 <__assert_func>
 8002dfa:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8002dfe:	f64c 126e 	movw	r2, #51566	; 0xc96e
 8002e02:	f64c 137f 	movw	r3, #51583	; 0xc97f
 8002e06:	f640 111f 	movw	r1, #2335	; 0x91f
 8002e0a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002e0e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002e12:	f6c0 0300 	movt	r3, #2048	; 0x800
 8002e16:	f003 f8f5 	bl	8006004 <__assert_func>

08002e1a <mz_compress2>:
 8002e1a:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002e1c:	af03      	add	r7, sp, #12
 8002e1e:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8002e22:	b090      	sub	sp, #64	; 0x40
 8002e24:	f10d 0908 	add.w	r9, sp, #8
 8002e28:	4688      	mov	r8, r1
 8002e2a:	4605      	mov	r5, r0
 8002e2c:	2130      	movs	r1, #48	; 0x30
 8002e2e:	461c      	mov	r4, r3
 8002e30:	4616      	mov	r6, r2
 8002e32:	f109 0008 	add.w	r0, r9, #8
 8002e36:	f003 f8df 	bl	8005ff8 <__aeabi_memclr>
 8002e3a:	e9cd 6402 	strd	r6, r4, [sp, #8]
 8002e3e:	9505      	str	r5, [sp, #20]
 8002e40:	2109      	movs	r1, #9
 8002e42:	2208      	movs	r2, #8
 8002e44:	230f      	movs	r3, #15
 8002e46:	f8d8 0000 	ldr.w	r0, [r8]
 8002e4a:	9006      	str	r0, [sp, #24]
 8002e4c:	2000      	movs	r0, #0
 8002e4e:	e9cd 1000 	strd	r1, r0, [sp]
 8002e52:	68b9      	ldr	r1, [r7, #8]
 8002e54:	4648      	mov	r0, r9
 8002e56:	f7ff f969 	bl	800212c <mz_deflateInit2>
 8002e5a:	4604      	mov	r4, r0
 8002e5c:	b9e4      	cbnz	r4, 8002e98 <mz_compress2+0x7e>
 8002e5e:	a802      	add	r0, sp, #8
 8002e60:	2104      	movs	r1, #4
 8002e62:	f7ff fa54 	bl	800230e <mz_deflate>
 8002e66:	4604      	mov	r4, r0
 8002e68:	2c01      	cmp	r4, #1
 8002e6a:	d10a      	bne.n	8002e82 <mz_compress2+0x68>
 8002e6c:	9807      	ldr	r0, [sp, #28]
 8002e6e:	2400      	movs	r4, #0
 8002e70:	f8c8 0000 	str.w	r0, [r8]
 8002e74:	9909      	ldr	r1, [sp, #36]	; 0x24
 8002e76:	b179      	cbz	r1, 8002e98 <mz_compress2+0x7e>
 8002e78:	e9dd 200b 	ldrd	r2, r0, [sp, #44]	; 0x2c
 8002e7c:	4790      	blx	r2
 8002e7e:	9409      	str	r4, [sp, #36]	; 0x24
 8002e80:	e00a      	b.n	8002e98 <mz_compress2+0x7e>
 8002e82:	9909      	ldr	r1, [sp, #36]	; 0x24
 8002e84:	b121      	cbz	r1, 8002e90 <mz_compress2+0x76>
 8002e86:	e9dd 200b 	ldrd	r2, r0, [sp, #44]	; 0x2c
 8002e8a:	4790      	blx	r2
 8002e8c:	2000      	movs	r0, #0
 8002e8e:	9009      	str	r0, [sp, #36]	; 0x24
 8002e90:	2c00      	cmp	r4, #0
 8002e92:	bf08      	it	eq
 8002e94:	f06f 0404 	mvneq.w	r4, #4
 8002e98:	4620      	mov	r0, r4
 8002e9a:	b010      	add	sp, #64	; 0x40
 8002e9c:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002ea0:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002ea2 <mz_inflate>:
 8002ea2:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002ea4:	af03      	add	r7, sp, #12
 8002ea6:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002eaa:	b08b      	sub	sp, #44	; 0x2c
 8002eac:	4604      	mov	r4, r0
 8002eae:	460e      	mov	r6, r1
 8002eb0:	b384      	cbz	r4, 8002f14 <mz_inflate+0x72>
 8002eb2:	f8d4 b01c 	ldr.w	fp, [r4, #28]
 8002eb6:	f1bb 0f00 	cmp.w	fp, #0
 8002eba:	d02b      	beq.n	8002f14 <mz_inflate+0x72>
 8002ebc:	2e01      	cmp	r6, #1
 8002ebe:	f06f 0001 	mvn.w	r0, #1
 8002ec2:	bf08      	it	eq
 8002ec4:	2602      	moveq	r6, #2
 8002ec6:	2e04      	cmp	r6, #4
 8002ec8:	d826      	bhi.n	8002f18 <mz_inflate+0x76>
 8002eca:	2101      	movs	r1, #1
 8002ecc:	40b1      	lsls	r1, r6
 8002ece:	f011 0f15 	tst.w	r1, #21
 8002ed2:	d021      	beq.n	8002f18 <mz_inflate+0x76>
 8002ed4:	f44f 522c 	mov.w	r2, #11008	; 0x2b00
 8002ed8:	f642 21f8 	movw	r1, #11000	; 0x2af8
 8002edc:	2300      	movs	r3, #0
 8002ede:	f8d4 c004 	ldr.w	ip, [r4, #4]
 8002ee2:	2508      	movs	r5, #8
 8002ee4:	f85b 2002 	ldr.w	r2, [fp, r2]
 8002ee8:	f85b 0001 	ldr.w	r0, [fp, r1]
 8002eec:	f84b 3001 	str.w	r3, [fp, r1]
 8002ef0:	f64a 3104 	movw	r1, #43780	; 0xab04
 8002ef4:	f85b 3001 	ldr.w	r3, [fp, r1]
 8002ef8:	2a00      	cmp	r2, #0
 8002efa:	bfc8      	it	gt
 8002efc:	2509      	movgt	r5, #9
 8002efe:	2b00      	cmp	r3, #0
 8002f00:	f2c0 810c 	blt.w	800311c <mz_inflate+0x27a>
 8002f04:	f642 23fc 	movw	r3, #11004	; 0x2afc
 8002f08:	2e04      	cmp	r6, #4
 8002f0a:	f85b 2003 	ldr.w	r2, [fp, r3]
 8002f0e:	bf18      	it	ne
 8002f10:	2a00      	cmpne	r2, #0
 8002f12:	d005      	beq.n	8002f20 <mz_inflate+0x7e>
 8002f14:	f06f 0001 	mvn.w	r0, #1
 8002f18:	b00b      	add	sp, #44	; 0x2c
 8002f1a:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002f1e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002f20:	2e04      	cmp	r6, #4
 8002f22:	eb0b 0a01 	add.w	sl, fp, r1
 8002f26:	eb0b 0103 	add.w	r1, fp, r3
 8002f2a:	bf08      	it	eq
 8002f2c:	f042 0201 	orreq.w	r2, r2, #1
 8002f30:	600a      	str	r2, [r1, #0]
 8002f32:	d137      	bne.n	8002fa4 <mz_inflate+0x102>
 8002f34:	b3b0      	cbz	r0, 8002fa4 <mz_inflate+0x102>
 8002f36:	f8cd c028 	str.w	ip, [sp, #40]	; 0x28
 8002f3a:	aa09      	add	r2, sp, #36	; 0x24
 8002f3c:	6920      	ldr	r0, [r4, #16]
 8002f3e:	9009      	str	r0, [sp, #36]	; 0x24
 8002f40:	f045 0004 	orr.w	r0, r5, #4
 8002f44:	68e3      	ldr	r3, [r4, #12]
 8002f46:	6821      	ldr	r1, [r4, #0]
 8002f48:	e9cd 3200 	strd	r3, r2, [sp]
 8002f4c:	9002      	str	r0, [sp, #8]
 8002f4e:	aa0a      	add	r2, sp, #40	; 0x28
 8002f50:	4658      	mov	r0, fp
 8002f52:	f000 f8fb 	bl	800314c <tinfl_decompress>
 8002f56:	f8ca 0000 	str.w	r0, [sl]
 8002f5a:	2800      	cmp	r0, #0
 8002f5c:	6821      	ldr	r1, [r4, #0]
 8002f5e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8002f60:	4411      	add	r1, r2
 8002f62:	6021      	str	r1, [r4, #0]
 8002f64:	6861      	ldr	r1, [r4, #4]
 8002f66:	eba1 0102 	sub.w	r1, r1, r2
 8002f6a:	6061      	str	r1, [r4, #4]
 8002f6c:	68a1      	ldr	r1, [r4, #8]
 8002f6e:	4411      	add	r1, r2
 8002f70:	60a1      	str	r1, [r4, #8]
 8002f72:	f8db 101c 	ldr.w	r1, [fp, #28]
 8002f76:	6321      	str	r1, [r4, #48]	; 0x30
 8002f78:	68e1      	ldr	r1, [r4, #12]
 8002f7a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002f7c:	4411      	add	r1, r2
 8002f7e:	60e1      	str	r1, [r4, #12]
 8002f80:	6921      	ldr	r1, [r4, #16]
 8002f82:	eba1 0102 	sub.w	r1, r1, r2
 8002f86:	6121      	str	r1, [r4, #16]
 8002f88:	6961      	ldr	r1, [r4, #20]
 8002f8a:	4411      	add	r1, r2
 8002f8c:	6161      	str	r1, [r4, #20]
 8002f8e:	f2c0 80c5 	blt.w	800311c <mz_inflate+0x27a>
 8002f92:	f000 80c6 	beq.w	8003122 <mz_inflate+0x280>
 8002f96:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002f9a:	f8ca 0000 	str.w	r0, [sl]
 8002f9e:	f06f 0004 	mvn.w	r0, #4
 8002fa2:	e7b9      	b.n	8002f18 <mz_inflate+0x76>
 8002fa4:	2e04      	cmp	r6, #4
 8002fa6:	f642 20f4 	movw	r0, #10996	; 0x2af4
 8002faa:	bf18      	it	ne
 8002fac:	f045 0502 	orrne.w	r5, r5, #2
 8002fb0:	eb0b 0200 	add.w	r2, fp, r0
 8002fb4:	f85b 0000 	ldr.w	r0, [fp, r0]
 8002fb8:	b388      	cbz	r0, 800301e <mz_inflate+0x17c>
 8002fba:	f854 1f10 	ldr.w	r1, [r4, #16]!
 8002fbe:	f642 28f0 	movw	r8, #10992	; 0x2af0
 8002fc2:	4615      	mov	r5, r2
 8002fc4:	4288      	cmp	r0, r1
 8002fc6:	4610      	mov	r0, r2
 8002fc8:	f642 3104 	movw	r1, #11012	; 0x2b04
 8002fcc:	bf28      	it	cs
 8002fce:	4620      	movcs	r0, r4
 8002fd0:	6806      	ldr	r6, [r0, #0]
 8002fd2:	f85b 0008 	ldr.w	r0, [fp, r8]
 8002fd6:	4458      	add	r0, fp
 8002fd8:	4632      	mov	r2, r6
 8002fda:	4401      	add	r1, r0
 8002fdc:	f854 0c04 	ldr.w	r0, [r4, #-4]
 8002fe0:	f003 f80e 	bl	8006000 <__aeabi_memcpy>
 8002fe4:	f854 0c04 	ldr.w	r0, [r4, #-4]
 8002fe8:	4430      	add	r0, r6
 8002fea:	f844 0c04 	str.w	r0, [r4, #-4]
 8002fee:	6820      	ldr	r0, [r4, #0]
 8002ff0:	1b80      	subs	r0, r0, r6
 8002ff2:	6020      	str	r0, [r4, #0]
 8002ff4:	6860      	ldr	r0, [r4, #4]
 8002ff6:	4430      	add	r0, r6
 8002ff8:	6060      	str	r0, [r4, #4]
 8002ffa:	6828      	ldr	r0, [r5, #0]
 8002ffc:	1b80      	subs	r0, r0, r6
 8002ffe:	6028      	str	r0, [r5, #0]
 8003000:	f85b 1008 	ldr.w	r1, [fp, r8]
 8003004:	4431      	add	r1, r6
 8003006:	f36f 31df 	bfc	r1, #15, #17
 800300a:	f84b 1008 	str.w	r1, [fp, r8]
 800300e:	f8da 1000 	ldr.w	r1, [sl]
 8003012:	4308      	orrs	r0, r1
 8003014:	f04f 0000 	mov.w	r0, #0
 8003018:	bf08      	it	eq
 800301a:	2001      	moveq	r0, #1
 800301c:	e77c      	b.n	8002f18 <mz_inflate+0x76>
 800301e:	f642 3004 	movw	r0, #11012	; 0x2b04
 8003022:	e9cd 2a06 	strd	r2, sl, [sp, #24]
 8003026:	4663      	mov	r3, ip
 8003028:	4458      	add	r0, fp
 800302a:	9005      	str	r0, [sp, #20]
 800302c:	f642 20f0 	movw	r0, #10992	; 0x2af0
 8003030:	eb0b 0100 	add.w	r1, fp, r0
 8003034:	9108      	str	r1, [sp, #32]
 8003036:	f85b 2000 	ldr.w	r2, [fp, r0]
 800303a:	e9cd 5c03 	strd	r5, ip, [sp, #12]
 800303e:	e9dd a905 	ldrd	sl, r9, [sp, #20]
 8003042:	e000      	b.n	8003046 <mz_inflate+0x1a4>
 8003044:	6863      	ldr	r3, [r4, #4]
 8003046:	f5c2 4000 	rsb	r0, r2, #32768	; 0x8000
 800304a:	930a      	str	r3, [sp, #40]	; 0x28
 800304c:	4653      	mov	r3, sl
 800304e:	9009      	str	r0, [sp, #36]	; 0x24
 8003050:	eb0a 0002 	add.w	r0, sl, r2
 8003054:	aa0a      	add	r2, sp, #40	; 0x28
 8003056:	6821      	ldr	r1, [r4, #0]
 8003058:	9000      	str	r0, [sp, #0]
 800305a:	a809      	add	r0, sp, #36	; 0x24
 800305c:	e9cd 0501 	strd	r0, r5, [sp, #4]
 8003060:	4658      	mov	r0, fp
 8003062:	f000 f873 	bl	800314c <tinfl_decompress>
 8003066:	4680      	mov	r8, r0
 8003068:	9807      	ldr	r0, [sp, #28]
 800306a:	f8c0 8000 	str.w	r8, [r0]
 800306e:	6820      	ldr	r0, [r4, #0]
 8003070:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003072:	4408      	add	r0, r1
 8003074:	6020      	str	r0, [r4, #0]
 8003076:	6860      	ldr	r0, [r4, #4]
 8003078:	1a40      	subs	r0, r0, r1
 800307a:	6060      	str	r0, [r4, #4]
 800307c:	68a0      	ldr	r0, [r4, #8]
 800307e:	4408      	add	r0, r1
 8003080:	60a0      	str	r0, [r4, #8]
 8003082:	f8db 001c 	ldr.w	r0, [fp, #28]
 8003086:	6320      	str	r0, [r4, #48]	; 0x30
 8003088:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800308a:	f8c9 2000 	str.w	r2, [r9]
 800308e:	9808      	ldr	r0, [sp, #32]
 8003090:	6800      	ldr	r0, [r0, #0]
 8003092:	eb0a 0100 	add.w	r1, sl, r0
 8003096:	e9d4 0503 	ldrd	r0, r5, [r4, #12]
 800309a:	42aa      	cmp	r2, r5
 800309c:	bf38      	it	cc
 800309e:	4615      	movcc	r5, r2
 80030a0:	462a      	mov	r2, r5
 80030a2:	f002 ffad 	bl	8006000 <__aeabi_memcpy>
 80030a6:	68e0      	ldr	r0, [r4, #12]
 80030a8:	f1b8 0f00 	cmp.w	r8, #0
 80030ac:	4428      	add	r0, r5
 80030ae:	60e0      	str	r0, [r4, #12]
 80030b0:	6920      	ldr	r0, [r4, #16]
 80030b2:	eba0 0305 	sub.w	r3, r0, r5
 80030b6:	6123      	str	r3, [r4, #16]
 80030b8:	6960      	ldr	r0, [r4, #20]
 80030ba:	4428      	add	r0, r5
 80030bc:	6160      	str	r0, [r4, #20]
 80030be:	f8d9 0000 	ldr.w	r0, [r9]
 80030c2:	eba0 0e05 	sub.w	lr, r0, r5
 80030c6:	f8c9 e000 	str.w	lr, [r9]
 80030ca:	9908      	ldr	r1, [sp, #32]
 80030cc:	6808      	ldr	r0, [r1, #0]
 80030ce:	eb00 0205 	add.w	r2, r0, r5
 80030d2:	f36f 32df 	bfc	r2, #15, #17
 80030d6:	600a      	str	r2, [r1, #0]
 80030d8:	db20      	blt.n	800311c <mz_inflate+0x27a>
 80030da:	f8dd c010 	ldr.w	ip, [sp, #16]
 80030de:	f1bc 0f00 	cmp.w	ip, #0
 80030e2:	bf08      	it	eq
 80030e4:	f1b8 0f01 	cmpeq.w	r8, #1
 80030e8:	d01d      	beq.n	8003126 <mz_inflate+0x284>
 80030ea:	2e04      	cmp	r6, #4
 80030ec:	d106      	bne.n	80030fc <mz_inflate+0x25a>
 80030ee:	9d03      	ldr	r5, [sp, #12]
 80030f0:	f1b8 0f00 	cmp.w	r8, #0
 80030f4:	d01a      	beq.n	800312c <mz_inflate+0x28a>
 80030f6:	2b00      	cmp	r3, #0
 80030f8:	d1a4      	bne.n	8003044 <mz_inflate+0x1a2>
 80030fa:	e01e      	b.n	800313a <mz_inflate+0x298>
 80030fc:	9d03      	ldr	r5, [sp, #12]
 80030fe:	f1b8 0f00 	cmp.w	r8, #0
 8003102:	f04f 0000 	mov.w	r0, #0
 8003106:	d01b      	beq.n	8003140 <mz_inflate+0x29e>
 8003108:	2b00      	cmp	r3, #0
 800310a:	bf1c      	itt	ne
 800310c:	6863      	ldrne	r3, [r4, #4]
 800310e:	2b00      	cmpne	r3, #0
 8003110:	f43f af02 	beq.w	8002f18 <mz_inflate+0x76>
 8003114:	f1be 0f00 	cmp.w	lr, #0
 8003118:	d095      	beq.n	8003046 <mz_inflate+0x1a4>
 800311a:	e6fd      	b.n	8002f18 <mz_inflate+0x76>
 800311c:	f06f 0002 	mvn.w	r0, #2
 8003120:	e6fa      	b.n	8002f18 <mz_inflate+0x76>
 8003122:	2001      	movs	r0, #1
 8003124:	e6f8      	b.n	8002f18 <mz_inflate+0x76>
 8003126:	f06f 0004 	mvn.w	r0, #4
 800312a:	e6f5      	b.n	8002f18 <mz_inflate+0x76>
 800312c:	2001      	movs	r0, #1
 800312e:	f1be 0f00 	cmp.w	lr, #0
 8003132:	bf18      	it	ne
 8003134:	f06f 0004 	mvnne.w	r0, #4
 8003138:	e6ee      	b.n	8002f18 <mz_inflate+0x76>
 800313a:	f06f 0004 	mvn.w	r0, #4
 800313e:	e6eb      	b.n	8002f18 <mz_inflate+0x76>
 8003140:	f1be 0f00 	cmp.w	lr, #0
 8003144:	bf08      	it	eq
 8003146:	2001      	moveq	r0, #1
 8003148:	e6e6      	b.n	8002f18 <mz_inflate+0x76>
	...

0800314c <tinfl_decompress>:
 800314c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800314e:	af03      	add	r7, sp, #12
 8003150:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8003154:	b0bb      	sub	sp, #236	; 0xec
 8003156:	f8d7 e00c 	ldr.w	lr, [r7, #12]
 800315a:	9117      	str	r1, [sp, #92]	; 0x5c
 800315c:	9019      	str	r0, [sp, #100]	; 0x64
 800315e:	6939      	ldr	r1, [r7, #16]
 8003160:	f8d7 c008 	ldr.w	ip, [r7, #8]
 8003164:	f8d2 8000 	ldr.w	r8, [r2]
 8003168:	f8de 0000 	ldr.w	r0, [lr]
 800316c:	f011 0404 	ands.w	r4, r1, #4
 8003170:	d004      	beq.n	800317c <tinfl_decompress+0x30>
 8003172:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
 8003176:	459c      	cmp	ip, r3
 8003178:	d206      	bcs.n	8003188 <tinfl_decompress+0x3c>
 800317a:	e080      	b.n	800327e <tinfl_decompress+0x132>
 800317c:	43d9      	mvns	r1, r3
 800317e:	4461      	add	r1, ip
 8003180:	180e      	adds	r6, r1, r0
 8003182:	459c      	cmp	ip, r3
 8003184:	f0c0 807b 	bcc.w	800327e <tinfl_decompress+0x132>
 8003188:	1c75      	adds	r5, r6, #1
 800318a:	ea15 0106 	ands.w	r1, r5, r6
 800318e:	f040 8076 	bne.w	800327e <tinfl_decompress+0x132>
 8003192:	e9cd 560c 	strd	r5, r6, [sp, #48]	; 0x30
 8003196:	e9cd 340e 	strd	r3, r4, [sp, #56]	; 0x38
 800319a:	9212      	str	r2, [sp, #72]	; 0x48
 800319c:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
 80031a0:	9919      	ldr	r1, [sp, #100]	; 0x64
 80031a2:	460a      	mov	r2, r1
 80031a4:	e9d2 910e 	ldrd	r9, r1, [r2, #56]	; 0x38
 80031a8:	9113      	str	r1, [sp, #76]	; 0x4c
 80031aa:	e9d2 ba08 	ldrd	fp, sl, [r2, #32]
 80031ae:	6a91      	ldr	r1, [r2, #40]	; 0x28
 80031b0:	9114      	str	r1, [sp, #80]	; 0x50
 80031b2:	e9d2 3400 	ldrd	r3, r4, [r2]
 80031b6:	9615      	str	r6, [sp, #84]	; 0x54
 80031b8:	2b35      	cmp	r3, #53	; 0x35
 80031ba:	f200 810b 	bhi.w	80033d4 <tinfl_decompress+0x288>
 80031be:	9a17      	ldr	r2, [sp, #92]	; 0x5c
 80031c0:	4460      	add	r0, ip
 80031c2:	4671      	mov	r1, lr
 80031c4:	9010      	str	r0, [sp, #64]	; 0x40
 80031c6:	2024      	movs	r0, #36	; 0x24
 80031c8:	f8cd c058 	str.w	ip, [sp, #88]	; 0x58
 80031cc:	4696      	mov	lr, r2
 80031ce:	eb0e 0208 	add.w	r2, lr, r8
 80031d2:	f8cd e060 	str.w	lr, [sp, #96]	; 0x60
 80031d6:	468e      	mov	lr, r1
 80031d8:	9211      	str	r2, [sp, #68]	; 0x44
 80031da:	e8df f013 	tbh	[pc, r3, lsl #1]
 80031de:	0036      	.short	0x0036
 80031e0:	005d0057 	.word	0x005d0057
 80031e4:	09600065 	.word	0x09600065
 80031e8:	0076006e 	.word	0x0076006e
 80031ec:	0960007e 	.word	0x0960007e
 80031f0:	01ed02f6 	.word	0x01ed02f6
 80031f4:	09600088 	.word	0x09600088
 80031f8:	00910960 	.word	0x00910960
 80031fc:	009a0960 	.word	0x009a0960
 8003200:	00a506d4 	.word	0x00a506d4
 8003204:	09600960 	.word	0x09600960
 8003208:	096005af 	.word	0x096005af
 800320c:	079600af 	.word	0x079600af
 8003210:	00c600ba 	.word	0x00c600ba
 8003214:	096000d1 	.word	0x096000d1
 8003218:	09600960 	.word	0x09600960
 800321c:	00db0960 	.word	0x00db0960
 8003220:	081d0960 	.word	0x081d0960
 8003224:	095e04bf 	.word	0x095e04bf
 8003228:	02fa08c8 	.word	0x02fa08c8
 800322c:	033802d7 	.word	0x033802d7
 8003230:	00ec00e3 	.word	0x00ec00e3
 8003234:	09600960 	.word	0x09600960
 8003238:	09600960 	.word	0x09600960
 800323c:	09600960 	.word	0x09600960
 8003240:	09600960 	.word	0x09600960
 8003244:	035c00f3 	.word	0x035c00f3
 8003248:	0906      	.short	0x0906
 800324a:	9819      	ldr	r0, [sp, #100]	; 0x64
 800324c:	f04f 0900 	mov.w	r9, #0
 8003250:	4601      	mov	r1, r0
 8003252:	2001      	movs	r0, #1
 8003254:	e9c1 9902 	strd	r9, r9, [r1, #8]
 8003258:	61c8      	str	r0, [r1, #28]
 800325a:	6108      	str	r0, [r1, #16]
 800325c:	6938      	ldr	r0, [r7, #16]
 800325e:	07c0      	lsls	r0, r0, #31
 8003260:	f040 80be 	bne.w	80033e0 <tinfl_decompress+0x294>
 8003264:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003266:	4663      	mov	r3, ip
 8003268:	2600      	movs	r6, #0
 800326a:	f04f 0a00 	mov.w	sl, #0
 800326e:	f04f 0b00 	mov.w	fp, #0
 8003272:	2400      	movs	r4, #0
 8003274:	9018      	str	r0, [sp, #96]	; 0x60
 8003276:	2c02      	cmp	r4, #2
 8003278:	f240 8170 	bls.w	800355c <tinfl_decompress+0x410>
 800327c:	e186      	b.n	800358c <tinfl_decompress+0x440>
 800327e:	2000      	movs	r0, #0
 8003280:	f8ce 0000 	str.w	r0, [lr]
 8003284:	6010      	str	r0, [r2, #0]
 8003286:	f06f 0002 	mvn.w	r0, #2
 800328a:	e15e      	b.n	800354a <tinfl_decompress+0x3fe>
 800328c:	9914      	ldr	r1, [sp, #80]	; 0x50
 800328e:	f1b8 0f01 	cmp.w	r8, #1
 8003292:	f280 80b2 	bge.w	80033fa <tinfl_decompress+0x2ae>
 8003296:	e0b6      	b.n	8003406 <tinfl_decompress+0x2ba>
 8003298:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800329a:	9914      	ldr	r1, [sp, #80]	; 0x50
 800329c:	f1b8 0f01 	cmp.w	r8, #1
 80032a0:	9018      	str	r0, [sp, #96]	; 0x60
 80032a2:	f280 80bc 	bge.w	800341e <tinfl_decompress+0x2d2>
 80032a6:	e0c2      	b.n	800342e <tinfl_decompress+0x2e2>
 80032a8:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80032aa:	9e14      	ldr	r6, [sp, #80]	; 0x50
 80032ac:	f1b8 0f01 	cmp.w	r8, #1
 80032b0:	4663      	mov	r3, ip
 80032b2:	9018      	str	r0, [sp, #96]	; 0x60
 80032b4:	f280 8155 	bge.w	8003562 <tinfl_decompress+0x416>
 80032b8:	e158      	b.n	800356c <tinfl_decompress+0x420>
 80032ba:	f1b8 0f01 	cmp.w	r8, #1
 80032be:	f2c0 810e 	blt.w	80034de <tinfl_decompress+0x392>
 80032c2:	9917      	ldr	r1, [sp, #92]	; 0x5c
 80032c4:	f811 0b01 	ldrb.w	r0, [r1], #1
 80032c8:	e10e      	b.n	80034e8 <tinfl_decompress+0x39c>
 80032ca:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80032cc:	f1b8 0f01 	cmp.w	r8, #1
 80032d0:	4663      	mov	r3, ip
 80032d2:	9018      	str	r0, [sp, #96]	; 0x60
 80032d4:	f280 8222 	bge.w	800371c <tinfl_decompress+0x5d0>
 80032d8:	e225      	b.n	8003726 <tinfl_decompress+0x5da>
 80032da:	f1b8 0f01 	cmp.w	r8, #1
 80032de:	f2c0 810a 	blt.w	80034f6 <tinfl_decompress+0x3aa>
 80032e2:	9917      	ldr	r1, [sp, #92]	; 0x5c
 80032e4:	4663      	mov	r3, ip
 80032e6:	f811 0b01 	ldrb.w	r0, [r1], #1
 80032ea:	9118      	str	r1, [sp, #96]	; 0x60
 80032ec:	e204      	b.n	80036f8 <tinfl_decompress+0x5ac>
 80032ee:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80032f0:	f1b8 0f01 	cmp.w	r8, #1
 80032f4:	4663      	mov	r3, ip
 80032f6:	4651      	mov	r1, sl
 80032f8:	9018      	str	r0, [sp, #96]	; 0x60
 80032fa:	f280 82e5 	bge.w	80038c8 <tinfl_decompress+0x77c>
 80032fe:	e314      	b.n	800392a <tinfl_decompress+0x7de>
 8003300:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003302:	9e14      	ldr	r6, [sp, #80]	; 0x50
 8003304:	f1b8 0f01 	cmp.w	r8, #1
 8003308:	4663      	mov	r3, ip
 800330a:	9018      	str	r0, [sp, #96]	; 0x60
 800330c:	f280 8330 	bge.w	8003970 <tinfl_decompress+0x824>
 8003310:	e333      	b.n	800397a <tinfl_decompress+0x82e>
 8003312:	f1b8 0f01 	cmp.w	r8, #1
 8003316:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003318:	f8dd 8050 	ldr.w	r8, [sp, #80]	; 0x50
 800331c:	4666      	mov	r6, ip
 800331e:	9018      	str	r0, [sp, #96]	; 0x60
 8003320:	f280 85da 	bge.w	8003ed8 <tinfl_decompress+0xd8c>
 8003324:	f000 bddf 	b.w	8003ee6 <tinfl_decompress+0xd9a>
 8003328:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800332a:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800332c:	f1b8 0f01 	cmp.w	r8, #1
 8003330:	4666      	mov	r6, ip
 8003332:	9018      	str	r0, [sp, #96]	; 0x60
 8003334:	f280 863a 	bge.w	8003fac <tinfl_decompress+0xe60>
 8003338:	f000 be3d 	b.w	8003fb6 <tinfl_decompress+0xe6a>
 800333c:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800333e:	f1b8 0f01 	cmp.w	r8, #1
 8003342:	4666      	mov	r6, ip
 8003344:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003348:	9018      	str	r0, [sp, #96]	; 0x60
 800334a:	f280 8694 	bge.w	8004076 <tinfl_decompress+0xf2a>
 800334e:	f000 be97 	b.w	8004080 <tinfl_decompress+0xf34>
 8003352:	f1b8 0f01 	cmp.w	r8, #1
 8003356:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003358:	f8dd 8050 	ldr.w	r8, [sp, #80]	; 0x50
 800335c:	4666      	mov	r6, ip
 800335e:	4651      	mov	r1, sl
 8003360:	9018      	str	r0, [sp, #96]	; 0x60
 8003362:	f280 8716 	bge.w	8004192 <tinfl_decompress+0x1046>
 8003366:	f000 bf1a 	b.w	800419e <tinfl_decompress+0x1052>
 800336a:	f1b8 0f01 	cmp.w	r8, #1
 800336e:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003370:	f8dd 8050 	ldr.w	r8, [sp, #80]	; 0x50
 8003374:	4666      	mov	r6, ip
 8003376:	9018      	str	r0, [sp, #96]	; 0x60
 8003378:	f280 877f 	bge.w	800427a <tinfl_decompress+0x112e>
 800337c:	f000 bf84 	b.w	8004288 <tinfl_decompress+0x113c>
 8003380:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003382:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003384:	f1b8 0f01 	cmp.w	r8, #1
 8003388:	4666      	mov	r6, ip
 800338a:	9018      	str	r0, [sp, #96]	; 0x60
 800338c:	f280 87c9 	bge.w	8004322 <tinfl_decompress+0x11d6>
 8003390:	f000 bfcc 	b.w	800432c <tinfl_decompress+0x11e0>
 8003394:	f1b8 0f01 	cmp.w	r8, #1
 8003398:	f2c0 80b1 	blt.w	80034fe <tinfl_decompress+0x3b2>
 800339c:	9917      	ldr	r1, [sp, #92]	; 0x5c
 800339e:	f811 0b01 	ldrb.w	r0, [r1], #1
 80033a2:	e0b1      	b.n	8003508 <tinfl_decompress+0x3bc>
 80033a4:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80033a6:	f1b8 0f01 	cmp.w	r8, #1
 80033aa:	4662      	mov	r2, ip
 80033ac:	9018      	str	r0, [sp, #96]	; 0x60
 80033ae:	f281 804b 	bge.w	8004448 <tinfl_decompress+0x12fc>
 80033b2:	f001 b84e 	b.w	8004452 <tinfl_decompress+0x1306>
 80033b6:	f1b8 0f01 	cmp.w	r8, #1
 80033ba:	f2c0 80ae 	blt.w	800351a <tinfl_decompress+0x3ce>
 80033be:	9917      	ldr	r1, [sp, #92]	; 0x5c
 80033c0:	4662      	mov	r2, ip
 80033c2:	e0c6      	b.n	8003552 <tinfl_decompress+0x406>
 80033c4:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80033c6:	f1b8 0f01 	cmp.w	r8, #1
 80033ca:	4663      	mov	r3, ip
 80033cc:	9018      	str	r0, [sp, #96]	; 0x60
 80033ce:	f280 8249 	bge.w	8003864 <tinfl_decompress+0x718>
 80033d2:	e24c      	b.n	800386e <tinfl_decompress+0x722>
 80033d4:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80033d6:	f8cd c058 	str.w	ip, [sp, #88]	; 0x58
 80033da:	9018      	str	r0, [sp, #96]	; 0x60
 80033dc:	f001 b85f 	b.w	800449e <tinfl_decompress+0x1352>
 80033e0:	f04f 0900 	mov.w	r9, #0
 80033e4:	f1b8 0f00 	cmp.w	r8, #0
 80033e8:	f04f 0100 	mov.w	r1, #0
 80033ec:	f04f 0a00 	mov.w	sl, #0
 80033f0:	f04f 0b00 	mov.w	fp, #0
 80033f4:	f04f 0400 	mov.w	r4, #0
 80033f8:	dd05      	ble.n	8003406 <tinfl_decompress+0x2ba>
 80033fa:	9a17      	ldr	r2, [sp, #92]	; 0x5c
 80033fc:	f812 0b01 	ldrb.w	r0, [r2], #1
 8003400:	9218      	str	r2, [sp, #96]	; 0x60
 8003402:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003404:	e006      	b.n	8003414 <tinfl_decompress+0x2c8>
 8003406:	6938      	ldr	r0, [r7, #16]
 8003408:	0780      	lsls	r0, r0, #30
 800340a:	f100 808b 	bmi.w	8003524 <tinfl_decompress+0x3d8>
 800340e:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 8003410:	2000      	movs	r0, #0
 8003412:	9318      	str	r3, [sp, #96]	; 0x60
 8003414:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8003416:	6098      	str	r0, [r3, #8]
 8003418:	9818      	ldr	r0, [sp, #96]	; 0x60
 800341a:	4290      	cmp	r0, r2
 800341c:	d207      	bcs.n	800342e <tinfl_decompress+0x2e2>
 800341e:	9a18      	ldr	r2, [sp, #96]	; 0x60
 8003420:	f8cd 902c 	str.w	r9, [sp, #44]	; 0x2c
 8003424:	9114      	str	r1, [sp, #80]	; 0x50
 8003426:	f812 0b01 	ldrb.w	r0, [r2], #1
 800342a:	9218      	str	r2, [sp, #96]	; 0x60
 800342c:	e006      	b.n	800343c <tinfl_decompress+0x2f0>
 800342e:	6938      	ldr	r0, [r7, #16]
 8003430:	9114      	str	r1, [sp, #80]	; 0x50
 8003432:	0780      	lsls	r0, r0, #30
 8003434:	d44d      	bmi.n	80034d2 <tinfl_decompress+0x386>
 8003436:	f8cd 902c 	str.w	r9, [sp, #44]	; 0x2c
 800343a:	2000      	movs	r0, #0
 800343c:	9919      	ldr	r1, [sp, #100]	; 0x64
 800343e:	f241 0685 	movw	r6, #4229	; 0x1085
 8003442:	f6c0 0642 	movt	r6, #2114	; 0x842
 8003446:	60c8      	str	r0, [r1, #12]
 8003448:	688a      	ldr	r2, [r1, #8]
 800344a:	ea40 2302 	orr.w	r3, r0, r2, lsl #8
 800344e:	f000 0020 	and.w	r0, r0, #32
 8003452:	fba3 6506 	umull	r6, r5, r3, r6
 8003456:	1b5e      	subs	r6, r3, r5
 8003458:	eb05 0656 	add.w	r6, r5, r6, lsr #1
 800345c:	0935      	lsrs	r5, r6, #4
 800345e:	016d      	lsls	r5, r5, #5
 8003460:	eba5 1616 	sub.w	r6, r5, r6, lsr #4
 8003464:	1b9b      	subs	r3, r3, r6
 8003466:	f002 060f 	and.w	r6, r2, #15
 800346a:	4318      	orrs	r0, r3
 800346c:	f04f 0300 	mov.w	r3, #0
 8003470:	bf18      	it	ne
 8003472:	2001      	movne	r0, #1
 8003474:	2e08      	cmp	r6, #8
 8003476:	f04f 0600 	mov.w	r6, #0
 800347a:	bf18      	it	ne
 800347c:	2601      	movne	r6, #1
 800347e:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003480:	4330      	orrs	r0, r6
 8003482:	b981      	cbnz	r1, 80034a6 <tinfl_decompress+0x35a>
 8003484:	990c      	ldr	r1, [sp, #48]	; 0x30
 8003486:	0912      	lsrs	r2, r2, #4
 8003488:	f44f 7680 	mov.w	r6, #256	; 0x100
 800348c:	fa06 f202 	lsl.w	r2, r6, r2
 8003490:	4291      	cmp	r1, r2
 8003492:	f04f 0100 	mov.w	r1, #0
 8003496:	bf38      	it	cc
 8003498:	2101      	movcc	r1, #1
 800349a:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 800349e:	bf88      	it	hi
 80034a0:	2301      	movhi	r3, #1
 80034a2:	4319      	orrs	r1, r3
 80034a4:	4308      	orrs	r0, r1
 80034a6:	b150      	cbz	r0, 80034be <tinfl_decompress+0x372>
 80034a8:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 80034ac:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 80034b0:	2024      	movs	r0, #36	; 0x24
 80034b2:	f04f 0a01 	mov.w	sl, #1
 80034b6:	f8cd c058 	str.w	ip, [sp, #88]	; 0x58
 80034ba:	f000 bfed 	b.w	8004498 <tinfl_decompress+0x134c>
 80034be:	9e14      	ldr	r6, [sp, #80]	; 0x50
 80034c0:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 80034c4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80034c6:	f04f 0a00 	mov.w	sl, #0
 80034ca:	4663      	mov	r3, ip
 80034cc:	2c02      	cmp	r4, #2
 80034ce:	d85d      	bhi.n	800358c <tinfl_decompress+0x440>
 80034d0:	e044      	b.n	800355c <tinfl_decompress+0x410>
 80034d2:	2101      	movs	r1, #1
 80034d4:	2002      	movs	r0, #2
 80034d6:	e9cd 1c15 	strd	r1, ip, [sp, #84]	; 0x54
 80034da:	f000 bfde 	b.w	800449a <tinfl_decompress+0x134e>
 80034de:	6938      	ldr	r0, [r7, #16]
 80034e0:	0780      	lsls	r0, r0, #30
 80034e2:	d428      	bmi.n	8003536 <tinfl_decompress+0x3ea>
 80034e4:	9917      	ldr	r1, [sp, #92]	; 0x5c
 80034e6:	2000      	movs	r0, #0
 80034e8:	40a0      	lsls	r0, r4
 80034ea:	3408      	adds	r4, #8
 80034ec:	4663      	mov	r3, ip
 80034ee:	9118      	str	r1, [sp, #96]	; 0x60
 80034f0:	ea49 0900 	orr.w	r9, r9, r0
 80034f4:	e06a      	b.n	80035cc <tinfl_decompress+0x480>
 80034f6:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80034f8:	4663      	mov	r3, ip
 80034fa:	9018      	str	r0, [sp, #96]	; 0x60
 80034fc:	e0f7      	b.n	80036ee <tinfl_decompress+0x5a2>
 80034fe:	6938      	ldr	r0, [r7, #16]
 8003500:	0780      	lsls	r0, r0, #30
 8003502:	d41a      	bmi.n	800353a <tinfl_decompress+0x3ee>
 8003504:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8003506:	2000      	movs	r0, #0
 8003508:	40a0      	lsls	r0, r4
 800350a:	3408      	adds	r4, #8
 800350c:	9118      	str	r1, [sp, #96]	; 0x60
 800350e:	f8cd c058 	str.w	ip, [sp, #88]	; 0x58
 8003512:	ea49 0900 	orr.w	r9, r9, r0
 8003516:	f000 be23 	b.w	8004160 <tinfl_decompress+0x1014>
 800351a:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800351c:	4662      	mov	r2, ip
 800351e:	9018      	str	r0, [sp, #96]	; 0x60
 8003520:	f000 bf86 	b.w	8004430 <tinfl_decompress+0x12e4>
 8003524:	2001      	movs	r0, #1
 8003526:	9114      	str	r1, [sp, #80]	; 0x50
 8003528:	e9cd 0c15 	strd	r0, ip, [sp, #84]	; 0x54
 800352c:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800352e:	9018      	str	r0, [sp, #96]	; 0x60
 8003530:	2001      	movs	r0, #1
 8003532:	f000 bfb2 	b.w	800449a <tinfl_decompress+0x134e>
 8003536:	2005      	movs	r0, #5
 8003538:	e000      	b.n	800353c <tinfl_decompress+0x3f0>
 800353a:	2020      	movs	r0, #32
 800353c:	2101      	movs	r1, #1
 800353e:	e9cd 1c15 	strd	r1, ip, [sp, #84]	; 0x54
 8003542:	9917      	ldr	r1, [sp, #92]	; 0x5c
 8003544:	9118      	str	r1, [sp, #96]	; 0x60
 8003546:	f000 bfa8 	b.w	800449a <tinfl_decompress+0x134e>
 800354a:	b03b      	add	sp, #236	; 0xec
 800354c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8003550:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003552:	f811 0b01 	ldrb.w	r0, [r1], #1
 8003556:	9118      	str	r1, [sp, #96]	; 0x60
 8003558:	f000 bf8e 	b.w	8004478 <tinfl_decompress+0x132c>
 800355c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800355e:	4290      	cmp	r0, r2
 8003560:	d204      	bcs.n	800356c <tinfl_decompress+0x420>
 8003562:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003564:	f811 0b01 	ldrb.w	r0, [r1], #1
 8003568:	9118      	str	r1, [sp, #96]	; 0x60
 800356a:	e003      	b.n	8003574 <tinfl_decompress+0x428>
 800356c:	6938      	ldr	r0, [r7, #16]
 800356e:	0780      	lsls	r0, r0, #30
 8003570:	d407      	bmi.n	8003582 <tinfl_decompress+0x436>
 8003572:	2000      	movs	r0, #0
 8003574:	40a0      	lsls	r0, r4
 8003576:	3408      	adds	r4, #8
 8003578:	ea49 0900 	orr.w	r9, r9, r0
 800357c:	2c03      	cmp	r4, #3
 800357e:	d3ed      	bcc.n	800355c <tinfl_decompress+0x410>
 8003580:	e004      	b.n	800358c <tinfl_decompress+0x440>
 8003582:	9614      	str	r6, [sp, #80]	; 0x50
 8003584:	9316      	str	r3, [sp, #88]	; 0x58
 8003586:	2003      	movs	r0, #3
 8003588:	f000 bf85 	b.w	8004496 <tinfl_decompress+0x134a>
 800358c:	9819      	ldr	r0, [sp, #100]	; 0x64
 800358e:	f009 0207 	and.w	r2, r9, #7
 8003592:	3c03      	subs	r4, #3
 8003594:	ea4f 09d9 	mov.w	r9, r9, lsr #3
 8003598:	4601      	mov	r1, r0
 800359a:	0850      	lsrs	r0, r2, #1
 800359c:	614a      	str	r2, [r1, #20]
 800359e:	f841 0f18 	str.w	r0, [r1, #24]!
 80035a2:	9614      	str	r6, [sp, #80]	; 0x50
 80035a4:	4688      	mov	r8, r1
 80035a6:	2100      	movs	r1, #0
 80035a8:	ebb1 0f52 	cmp.w	r1, r2, lsr #1
 80035ac:	d00d      	beq.n	80035ca <tinfl_decompress+0x47e>
 80035ae:	2801      	cmp	r0, #1
 80035b0:	9316      	str	r3, [sp, #88]	; 0x58
 80035b2:	d016      	beq.n	80035e2 <tinfl_decompress+0x496>
 80035b4:	2803      	cmp	r0, #3
 80035b6:	d104      	bne.n	80035c2 <tinfl_decompress+0x476>
 80035b8:	200a      	movs	r0, #10
 80035ba:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 80035be:	f000 bf6b 	b.w	8004498 <tinfl_decompress+0x134c>
 80035c2:	2902      	cmp	r1, #2
 80035c4:	f200 819c 	bhi.w	8003900 <tinfl_decompress+0x7b4>
 80035c8:	e172      	b.n	80038b0 <tinfl_decompress+0x764>
 80035ca:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80035cc:	f004 0007 	and.w	r0, r4, #7
 80035d0:	f04f 0a00 	mov.w	sl, #0
 80035d4:	1a24      	subs	r4, r4, r0
 80035d6:	fa29 f900 	lsr.w	r9, r9, r0
 80035da:	f1ba 0f03 	cmp.w	sl, #3
 80035de:	d96c      	bls.n	80036ba <tinfl_decompress+0x56e>
 80035e0:	e0bc      	b.n	800375c <tinfl_decompress+0x610>
 80035e2:	9d19      	ldr	r5, [sp, #100]	; 0x64
 80035e4:	f44f 7090 	mov.w	r0, #288	; 0x120
 80035e8:	2190      	movs	r1, #144	; 0x90
 80035ea:	2208      	movs	r2, #8
 80035ec:	2608      	movs	r6, #8
 80035ee:	62e8      	str	r0, [r5, #44]	; 0x2c
 80035f0:	2020      	movs	r0, #32
 80035f2:	6328      	str	r0, [r5, #48]	; 0x30
 80035f4:	f04f 3005 	mov.w	r0, #84215045	; 0x5050505
 80035f8:	f8c5 0de0 	str.w	r0, [r5, #3552]	; 0xde0
 80035fc:	f8c5 0de4 	str.w	r0, [r5, #3556]	; 0xde4
 8003600:	f8c5 0de8 	str.w	r0, [r5, #3560]	; 0xde8
 8003604:	f8c5 0dec 	str.w	r0, [r5, #3564]	; 0xdec
 8003608:	f8c5 0df0 	str.w	r0, [r5, #3568]	; 0xdf0
 800360c:	f8c5 0df4 	str.w	r0, [r5, #3572]	; 0xdf4
 8003610:	f8c5 0df8 	str.w	r0, [r5, #3576]	; 0xdf8
 8003614:	f8c5 0dfc 	str.w	r0, [r5, #3580]	; 0xdfc
 8003618:	f105 0040 	add.w	r0, r5, #64	; 0x40
 800361c:	f7fc ff70 	bl	8000500 <__aeabi_memset>
 8003620:	f105 00d0 	add.w	r0, r5, #208	; 0xd0
 8003624:	2170      	movs	r1, #112	; 0x70
 8003626:	2209      	movs	r2, #9
 8003628:	f7fc ff6a 	bl	8000500 <__aeabi_memset>
 800362c:	2007      	movs	r0, #7
 800362e:	f505 71aa 	add.w	r1, r5, #340	; 0x154
 8003632:	f04f 3207 	mov.w	r2, #117901063	; 0x7070707
 8003636:	46c4      	mov	ip, r8
 8003638:	f885 0155 	strb.w	r0, [r5, #341]	; 0x155
 800363c:	f885 0151 	strb.w	r0, [r5, #337]	; 0x151
 8003640:	f885 014d 	strb.w	r0, [r5, #333]	; 0x14d
 8003644:	f885 0149 	strb.w	r0, [r5, #329]	; 0x149
 8003648:	f885 0145 	strb.w	r0, [r5, #325]	; 0x145
 800364c:	f885 0141 	strb.w	r0, [r5, #321]	; 0x141
 8003650:	f801 2b02 	strb.w	r2, [r1], #2
 8003654:	7048      	strb	r0, [r1, #1]
 8003656:	7008      	strb	r0, [r1, #0]
 8003658:	f505 71a8 	add.w	r1, r5, #336	; 0x150
 800365c:	f801 2b02 	strb.w	r2, [r1], #2
 8003660:	7048      	strb	r0, [r1, #1]
 8003662:	7008      	strb	r0, [r1, #0]
 8003664:	f505 71a6 	add.w	r1, r5, #332	; 0x14c
 8003668:	f801 2b02 	strb.w	r2, [r1], #2
 800366c:	7048      	strb	r0, [r1, #1]
 800366e:	7008      	strb	r0, [r1, #0]
 8003670:	f505 71a4 	add.w	r1, r5, #328	; 0x148
 8003674:	f801 2b02 	strb.w	r2, [r1], #2
 8003678:	7048      	strb	r0, [r1, #1]
 800367a:	7008      	strb	r0, [r1, #0]
 800367c:	f505 71a2 	add.w	r1, r5, #324	; 0x144
 8003680:	f801 2b02 	strb.w	r2, [r1], #2
 8003684:	7048      	strb	r0, [r1, #1]
 8003686:	7008      	strb	r0, [r1, #0]
 8003688:	f505 71a0 	add.w	r1, r5, #320	; 0x140
 800368c:	f801 2b02 	strb.w	r2, [r1], #2
 8003690:	7048      	strb	r0, [r1, #1]
 8003692:	7008      	strb	r0, [r1, #0]
 8003694:	f505 70ae 	add.w	r0, r5, #348	; 0x15c
 8003698:	f04f 3108 	mov.w	r1, #134744072	; 0x8080808
 800369c:	f885 615d 	strb.w	r6, [r5, #349]	; 0x15d
 80036a0:	f885 6159 	strb.w	r6, [r5, #345]	; 0x159
 80036a4:	f800 1b02 	strb.w	r1, [r0], #2
 80036a8:	7046      	strb	r6, [r0, #1]
 80036aa:	7006      	strb	r6, [r0, #0]
 80036ac:	f505 70ac 	add.w	r0, r5, #344	; 0x158
 80036b0:	f800 1b02 	strb.w	r1, [r0], #2
 80036b4:	7046      	strb	r6, [r0, #1]
 80036b6:	7006      	strb	r6, [r0, #0]
 80036b8:	e186      	b.n	80039c8 <tinfl_decompress+0x87c>
 80036ba:	2c00      	cmp	r4, #0
 80036bc:	d113      	bne.n	80036e6 <tinfl_decompress+0x59a>
 80036be:	9818      	ldr	r0, [sp, #96]	; 0x60
 80036c0:	4290      	cmp	r0, r2
 80036c2:	d213      	bcs.n	80036ec <tinfl_decompress+0x5a0>
 80036c4:	9a18      	ldr	r2, [sp, #96]	; 0x60
 80036c6:	9819      	ldr	r0, [sp, #100]	; 0x64
 80036c8:	2400      	movs	r4, #0
 80036ca:	f812 1b01 	ldrb.w	r1, [r2], #1
 80036ce:	4450      	add	r0, sl
 80036d0:	f10a 0a01 	add.w	sl, sl, #1
 80036d4:	9218      	str	r2, [sp, #96]	; 0x60
 80036d6:	f642 1220 	movw	r2, #10528	; 0x2920
 80036da:	5481      	strb	r1, [r0, r2]
 80036dc:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80036de:	f1ba 0f03 	cmp.w	sl, #3
 80036e2:	d83b      	bhi.n	800375c <tinfl_decompress+0x610>
 80036e4:	e7e9      	b.n	80036ba <tinfl_decompress+0x56e>
 80036e6:	2c07      	cmp	r4, #7
 80036e8:	d82a      	bhi.n	8003740 <tinfl_decompress+0x5f4>
 80036ea:	e014      	b.n	8003716 <tinfl_decompress+0x5ca>
 80036ec:	2400      	movs	r4, #0
 80036ee:	6938      	ldr	r0, [r7, #16]
 80036f0:	9316      	str	r3, [sp, #88]	; 0x58
 80036f2:	0780      	lsls	r0, r0, #30
 80036f4:	d40c      	bmi.n	8003710 <tinfl_decompress+0x5c4>
 80036f6:	2000      	movs	r0, #0
 80036f8:	9919      	ldr	r1, [sp, #100]	; 0x64
 80036fa:	f642 1220 	movw	r2, #10528	; 0x2920
 80036fe:	4451      	add	r1, sl
 8003700:	f10a 0a01 	add.w	sl, sl, #1
 8003704:	5488      	strb	r0, [r1, r2]
 8003706:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003708:	f1ba 0f03 	cmp.w	sl, #3
 800370c:	d9d5      	bls.n	80036ba <tinfl_decompress+0x56e>
 800370e:	e025      	b.n	800375c <tinfl_decompress+0x610>
 8003710:	2007      	movs	r0, #7
 8003712:	f000 bec0 	b.w	8004496 <tinfl_decompress+0x134a>
 8003716:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003718:	4290      	cmp	r0, r2
 800371a:	d204      	bcs.n	8003726 <tinfl_decompress+0x5da>
 800371c:	9918      	ldr	r1, [sp, #96]	; 0x60
 800371e:	f811 0b01 	ldrb.w	r0, [r1], #1
 8003722:	9118      	str	r1, [sp, #96]	; 0x60
 8003724:	e003      	b.n	800372e <tinfl_decompress+0x5e2>
 8003726:	6938      	ldr	r0, [r7, #16]
 8003728:	0780      	lsls	r0, r0, #30
 800372a:	d434      	bmi.n	8003796 <tinfl_decompress+0x64a>
 800372c:	2000      	movs	r0, #0
 800372e:	4621      	mov	r1, r4
 8003730:	4088      	lsls	r0, r1
 8003732:	f101 0408 	add.w	r4, r1, #8
 8003736:	f111 0f09 	cmn.w	r1, #9
 800373a:	ea49 0900 	orr.w	r9, r9, r0
 800373e:	d8ea      	bhi.n	8003716 <tinfl_decompress+0x5ca>
 8003740:	9819      	ldr	r0, [sp, #100]	; 0x64
 8003742:	f642 1120 	movw	r1, #10528	; 0x2920
 8003746:	3c08      	subs	r4, #8
 8003748:	4450      	add	r0, sl
 800374a:	f10a 0a01 	add.w	sl, sl, #1
 800374e:	f800 9001 	strb.w	r9, [r0, r1]
 8003752:	ea4f 2919 	mov.w	r9, r9, lsr #8
 8003756:	f1ba 0f03 	cmp.w	sl, #3
 800375a:	d9ae      	bls.n	80036ba <tinfl_decompress+0x56e>
 800375c:	9919      	ldr	r1, [sp, #100]	; 0x64
 800375e:	9316      	str	r3, [sp, #88]	; 0x58
 8003760:	f642 1021 	movw	r0, #10529	; 0x2921
 8003764:	460b      	mov	r3, r1
 8003766:	f642 1120 	movw	r1, #10528	; 0x2920
 800376a:	5c18      	ldrb	r0, [r3, r0]
 800376c:	5c59      	ldrb	r1, [r3, r1]
 800376e:	ea41 2a00 	orr.w	sl, r1, r0, lsl #8
 8003772:	f642 1023 	movw	r0, #10531	; 0x2923
 8003776:	f642 1122 	movw	r1, #10530	; 0x2922
 800377a:	5c18      	ldrb	r0, [r3, r0]
 800377c:	5c59      	ldrb	r1, [r3, r1]
 800377e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
 8003782:	f64f 71ff 	movw	r1, #65535	; 0xffff
 8003786:	4048      	eors	r0, r1
 8003788:	4582      	cmp	sl, r0
 800378a:	d00d      	beq.n	80037a8 <tinfl_decompress+0x65c>
 800378c:	2027      	movs	r0, #39	; 0x27
 800378e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8003792:	f000 be81 	b.w	8004498 <tinfl_decompress+0x134c>
 8003796:	9316      	str	r3, [sp, #88]	; 0x58
 8003798:	2006      	movs	r0, #6
 800379a:	f000 be7c 	b.w	8004496 <tinfl_decompress+0x134a>
 800379e:	f800 bb01 	strb.w	fp, [r0], #1
 80037a2:	f1aa 0a01 	sub.w	sl, sl, #1
 80037a6:	9016      	str	r0, [sp, #88]	; 0x58
 80037a8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80037aa:	f1ba 0f00 	cmp.w	sl, #0
 80037ae:	bf18      	it	ne
 80037b0:	2c00      	cmpne	r4, #0
 80037b2:	d104      	bne.n	80037be <tinfl_decompress+0x672>
 80037b4:	9913      	ldr	r1, [sp, #76]	; 0x4c
 80037b6:	f1ba 0f00 	cmp.w	sl, #0
 80037ba:	d103      	bne.n	80037c4 <tinfl_decompress+0x678>
 80037bc:	e03a      	b.n	8003834 <tinfl_decompress+0x6e8>
 80037be:	2c07      	cmp	r4, #7
 80037c0:	d862      	bhi.n	8003888 <tinfl_decompress+0x73c>
 80037c2:	e04c      	b.n	800385e <tinfl_decompress+0x712>
 80037c4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80037c6:	9316      	str	r3, [sp, #88]	; 0x58
 80037c8:	9113      	str	r1, [sp, #76]	; 0x4c
 80037ca:	9816      	ldr	r0, [sp, #88]	; 0x58
 80037cc:	9910      	ldr	r1, [sp, #64]	; 0x40
 80037ce:	4288      	cmp	r0, r1
 80037d0:	d236      	bcs.n	8003840 <tinfl_decompress+0x6f4>
 80037d2:	9818      	ldr	r0, [sp, #96]	; 0x60
 80037d4:	4290      	cmp	r0, r2
 80037d6:	d237      	bcs.n	8003848 <tinfl_decompress+0x6fc>
 80037d8:	9918      	ldr	r1, [sp, #96]	; 0x60
 80037da:	f8dd 8058 	ldr.w	r8, [sp, #88]	; 0x58
 80037de:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80037e0:	4616      	mov	r6, r2
 80037e2:	1a50      	subs	r0, r2, r1
 80037e4:	eba3 0208 	sub.w	r2, r3, r8
 80037e8:	4282      	cmp	r2, r0
 80037ea:	4632      	mov	r2, r6
 80037ec:	4608      	mov	r0, r1
 80037ee:	4666      	mov	r6, ip
 80037f0:	bf3c      	itt	cc
 80037f2:	4640      	movcc	r0, r8
 80037f4:	461a      	movcc	r2, r3
 80037f6:	1a15      	subs	r5, r2, r0
 80037f8:	4640      	mov	r0, r8
 80037fa:	4555      	cmp	r5, sl
 80037fc:	bf28      	it	cs
 80037fe:	4655      	movcs	r5, sl
 8003800:	e9cd 940b 	strd	r9, r4, [sp, #44]	; 0x2c
 8003804:	4689      	mov	r9, r1
 8003806:	f8cd b054 	str.w	fp, [sp, #84]	; 0x54
 800380a:	4674      	mov	r4, lr
 800380c:	462a      	mov	r2, r5
 800380e:	f002 fbf7 	bl	8006000 <__aeabi_memcpy>
 8003812:	4648      	mov	r0, r9
 8003814:	46a6      	mov	lr, r4
 8003816:	f8dd b054 	ldr.w	fp, [sp, #84]	; 0x54
 800381a:	9913      	ldr	r1, [sp, #76]	; 0x4c
 800381c:	e9dd 940b 	ldrd	r9, r4, [sp, #44]	; 0x2c
 8003820:	4643      	mov	r3, r8
 8003822:	46b4      	mov	ip, r6
 8003824:	ebaa 0a05 	sub.w	sl, sl, r5
 8003828:	4428      	add	r0, r5
 800382a:	442b      	add	r3, r5
 800382c:	9018      	str	r0, [sp, #96]	; 0x60
 800382e:	f1ba 0f00 	cmp.w	sl, #0
 8003832:	d1c7      	bne.n	80037c4 <tinfl_decompress+0x678>
 8003834:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003836:	f04f 0a00 	mov.w	sl, #0
 800383a:	9113      	str	r1, [sp, #76]	; 0x4c
 800383c:	f000 bc5b 	b.w	80040f6 <tinfl_decompress+0xfaa>
 8003840:	2009      	movs	r0, #9
 8003842:	2102      	movs	r1, #2
 8003844:	f000 be28 	b.w	8004498 <tinfl_decompress+0x134c>
 8003848:	6938      	ldr	r0, [r7, #16]
 800384a:	0780      	lsls	r0, r0, #30
 800384c:	d404      	bmi.n	8003858 <tinfl_decompress+0x70c>
 800384e:	2028      	movs	r0, #40	; 0x28
 8003850:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8003854:	f000 be20 	b.w	8004498 <tinfl_decompress+0x134c>
 8003858:	2026      	movs	r0, #38	; 0x26
 800385a:	f000 be1c 	b.w	8004496 <tinfl_decompress+0x134a>
 800385e:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003860:	4290      	cmp	r0, r2
 8003862:	d204      	bcs.n	800386e <tinfl_decompress+0x722>
 8003864:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003866:	f811 0b01 	ldrb.w	r0, [r1], #1
 800386a:	9118      	str	r1, [sp, #96]	; 0x60
 800386c:	e003      	b.n	8003876 <tinfl_decompress+0x72a>
 800386e:	6938      	ldr	r0, [r7, #16]
 8003870:	0780      	lsls	r0, r0, #30
 8003872:	d419      	bmi.n	80038a8 <tinfl_decompress+0x75c>
 8003874:	2000      	movs	r0, #0
 8003876:	4621      	mov	r1, r4
 8003878:	4088      	lsls	r0, r1
 800387a:	f101 0408 	add.w	r4, r1, #8
 800387e:	f111 0f09 	cmn.w	r1, #9
 8003882:	ea49 0900 	orr.w	r9, r9, r0
 8003886:	d8ea      	bhi.n	800385e <tinfl_decompress+0x712>
 8003888:	ea4f 2019 	mov.w	r0, r9, lsr #8
 800388c:	fa5f fb89 	uxtb.w	fp, r9
 8003890:	3c08      	subs	r4, #8
 8003892:	9316      	str	r3, [sp, #88]	; 0x58
 8003894:	4681      	mov	r9, r0
 8003896:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003898:	9910      	ldr	r1, [sp, #64]	; 0x40
 800389a:	4288      	cmp	r0, r1
 800389c:	f4ff af7f 	bcc.w	800379e <tinfl_decompress+0x652>
 80038a0:	2034      	movs	r0, #52	; 0x34
 80038a2:	2102      	movs	r1, #2
 80038a4:	f000 bdf8 	b.w	8004498 <tinfl_decompress+0x134c>
 80038a8:	9316      	str	r3, [sp, #88]	; 0x58
 80038aa:	2033      	movs	r0, #51	; 0x33
 80038ac:	f000 bdf3 	b.w	8004496 <tinfl_decompress+0x134a>
 80038b0:	f64c 00f1 	movw	r0, #51441	; 0xc8f1
 80038b4:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80038b6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80038ba:	5c40      	ldrb	r0, [r0, r1]
 80038bc:	4284      	cmp	r4, r0
 80038be:	d208      	bcs.n	80038d2 <tinfl_decompress+0x786>
 80038c0:	9818      	ldr	r0, [sp, #96]	; 0x60
 80038c2:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80038c4:	4290      	cmp	r0, r2
 80038c6:	d230      	bcs.n	800392a <tinfl_decompress+0x7de>
 80038c8:	9818      	ldr	r0, [sp, #96]	; 0x60
 80038ca:	f810 2b01 	ldrb.w	r2, [r0], #1
 80038ce:	9018      	str	r0, [sp, #96]	; 0x60
 80038d0:	e02f      	b.n	8003932 <tinfl_decompress+0x7e6>
 80038d2:	f64b 62b8 	movw	r2, #48824	; 0xbeb8
 80038d6:	9316      	str	r3, [sp, #88]	; 0x58
 80038d8:	2301      	movs	r3, #1
 80038da:	1a24      	subs	r4, r4, r0
 80038dc:	f6c0 0200 	movt	r2, #2048	; 0x800
 80038e0:	4083      	lsls	r3, r0
 80038e2:	f852 2021 	ldr.w	r2, [r2, r1, lsl #2]
 80038e6:	3b01      	subs	r3, #1
 80038e8:	ea03 0309 	and.w	r3, r3, r9
 80038ec:	fa29 f900 	lsr.w	r9, r9, r0
 80038f0:	441a      	add	r2, r3
 80038f2:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80038f4:	eb03 0381 	add.w	r3, r3, r1, lsl #2
 80038f8:	3101      	adds	r1, #1
 80038fa:	62da      	str	r2, [r3, #44]	; 0x2c
 80038fc:	2902      	cmp	r1, #2
 80038fe:	d9d7      	bls.n	80038b0 <tinfl_decompress+0x764>
 8003900:	9819      	ldr	r0, [sp, #100]	; 0x64
 8003902:	f44f 7190 	mov.w	r1, #288	; 0x120
 8003906:	46a2      	mov	sl, r4
 8003908:	f8cd b054 	str.w	fp, [sp, #84]	; 0x54
 800390c:	4664      	mov	r4, ip
 800390e:	4676      	mov	r6, lr
 8003910:	f500 50dc 	add.w	r0, r0, #7040	; 0x1b80
 8003914:	f002 fb70 	bl	8005ff8 <__aeabi_memclr>
 8003918:	46b6      	mov	lr, r6
 800391a:	e9dd 6b14 	ldrd	r6, fp, [sp, #80]	; 0x50
 800391e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8003920:	46a4      	mov	ip, r4
 8003922:	4654      	mov	r4, sl
 8003924:	f04f 0a00 	mov.w	sl, #0
 8003928:	e00f      	b.n	800394a <tinfl_decompress+0x7fe>
 800392a:	6938      	ldr	r0, [r7, #16]
 800392c:	0780      	lsls	r0, r0, #30
 800392e:	d409      	bmi.n	8003944 <tinfl_decompress+0x7f8>
 8003930:	2200      	movs	r2, #0
 8003932:	f64c 00f1 	movw	r0, #51441	; 0xc8f1
 8003936:	40a2      	lsls	r2, r4
 8003938:	3408      	adds	r4, #8
 800393a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800393e:	ea49 0902 	orr.w	r9, r9, r2
 8003942:	e7ba      	b.n	80038ba <tinfl_decompress+0x76e>
 8003944:	200b      	movs	r0, #11
 8003946:	9316      	str	r3, [sp, #88]	; 0x58
 8003948:	e039      	b.n	80039be <tinfl_decompress+0x872>
 800394a:	9819      	ldr	r0, [sp, #100]	; 0x64
 800394c:	6b40      	ldr	r0, [r0, #52]	; 0x34
 800394e:	4582      	cmp	sl, r0
 8003950:	d203      	bcs.n	800395a <tinfl_decompress+0x80e>
 8003952:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003954:	2c02      	cmp	r4, #2
 8003956:	d81a      	bhi.n	800398e <tinfl_decompress+0x842>
 8003958:	e007      	b.n	800396a <tinfl_decompress+0x81e>
 800395a:	9919      	ldr	r1, [sp, #100]	; 0x64
 800395c:	2013      	movs	r0, #19
 800395e:	9316      	str	r3, [sp, #88]	; 0x58
 8003960:	9614      	str	r6, [sp, #80]	; 0x50
 8003962:	f101 0c18 	add.w	ip, r1, #24
 8003966:	6348      	str	r0, [r1, #52]	; 0x34
 8003968:	e02e      	b.n	80039c8 <tinfl_decompress+0x87c>
 800396a:	9818      	ldr	r0, [sp, #96]	; 0x60
 800396c:	4290      	cmp	r0, r2
 800396e:	d204      	bcs.n	800397a <tinfl_decompress+0x82e>
 8003970:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003972:	f811 0b01 	ldrb.w	r0, [r1], #1
 8003976:	9118      	str	r1, [sp, #96]	; 0x60
 8003978:	e003      	b.n	8003982 <tinfl_decompress+0x836>
 800397a:	6938      	ldr	r0, [r7, #16]
 800397c:	0780      	lsls	r0, r0, #30
 800397e:	d419      	bmi.n	80039b4 <tinfl_decompress+0x868>
 8003980:	2000      	movs	r0, #0
 8003982:	40a0      	lsls	r0, r4
 8003984:	3408      	adds	r4, #8
 8003986:	ea49 0900 	orr.w	r9, r9, r0
 800398a:	2c03      	cmp	r4, #3
 800398c:	d3ed      	bcc.n	800396a <tinfl_decompress+0x81e>
 800398e:	f24c 308a 	movw	r0, #50058	; 0xc38a
 8003992:	9919      	ldr	r1, [sp, #100]	; 0x64
 8003994:	f44f 52dc 	mov.w	r2, #7040	; 0x1b80
 8003998:	3c03      	subs	r4, #3
 800399a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800399e:	f810 000a 	ldrb.w	r0, [r0, sl]
 80039a2:	f10a 0a01 	add.w	sl, sl, #1
 80039a6:	4408      	add	r0, r1
 80039a8:	f009 0107 	and.w	r1, r9, #7
 80039ac:	ea4f 09d9 	mov.w	r9, r9, lsr #3
 80039b0:	5481      	strb	r1, [r0, r2]
 80039b2:	e7ca      	b.n	800394a <tinfl_decompress+0x7fe>
 80039b4:	9614      	str	r6, [sp, #80]	; 0x50
 80039b6:	9316      	str	r3, [sp, #88]	; 0x58
 80039b8:	200e      	movs	r0, #14
 80039ba:	f000 bd6c 	b.w	8004496 <tinfl_decompress+0x134a>
 80039be:	2201      	movs	r2, #1
 80039c0:	468a      	mov	sl, r1
 80039c2:	9215      	str	r2, [sp, #84]	; 0x54
 80039c4:	f000 bd69 	b.w	800449a <tinfl_decompress+0x134e>
 80039c8:	f8dc 6000 	ldr.w	r6, [ip]
 80039cc:	2e00      	cmp	r6, #0
 80039ce:	db3d      	blt.n	8003a4c <tinfl_decompress+0x900>
 80039d0:	f10d 0868 	add.w	r8, sp, #104	; 0x68
 80039d4:	2140      	movs	r1, #64	; 0x40
 80039d6:	940c      	str	r4, [sp, #48]	; 0x30
 80039d8:	f8cd c054 	str.w	ip, [sp, #84]	; 0x54
 80039dc:	4640      	mov	r0, r8
 80039de:	f002 fb0b 	bl	8005ff8 <__aeabi_memclr>
 80039e2:	9d19      	ldr	r5, [sp, #100]	; 0x64
 80039e4:	f44f 605a 	mov.w	r0, #3488	; 0xda0
 80039e8:	f44f 6148 	mov.w	r1, #3200	; 0xc80
 80039ec:	fb06 5400 	mla	r4, r6, r0, r5
 80039f0:	f504 70b0 	add.w	r0, r4, #352	; 0x160
 80039f4:	f002 fb00 	bl	8005ff8 <__aeabi_memclr>
 80039f8:	9815      	ldr	r0, [sp, #84]	; 0x54
 80039fa:	6800      	ldr	r0, [r0, #0]
 80039fc:	eb05 0080 	add.w	r0, r5, r0, lsl #2
 8003a00:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8003a02:	f8cd 902c 	str.w	r9, [sp, #44]	; 0x2c
 8003a06:	9601      	str	r6, [sp, #4]
 8003a08:	b318      	cbz	r0, 8003a52 <tinfl_decompress+0x906>
 8003a0a:	f104 0140 	add.w	r1, r4, #64	; 0x40
 8003a0e:	2200      	movs	r2, #0
 8003a10:	5c8b      	ldrb	r3, [r1, r2]
 8003a12:	3201      	adds	r2, #1
 8003a14:	4282      	cmp	r2, r0
 8003a16:	f858 5023 	ldr.w	r5, [r8, r3, lsl #2]
 8003a1a:	f105 0501 	add.w	r5, r5, #1
 8003a1e:	f848 5023 	str.w	r5, [r8, r3, lsl #2]
 8003a22:	d3f5      	bcc.n	8003a10 <tinfl_decompress+0x8c4>
 8003a24:	f10d 0e90 	add.w	lr, sp, #144	; 0x90
 8003a28:	e9dd 9c27 	ldrd	r9, ip, [sp, #156]	; 0x9c
 8003a2c:	e89e 4140 	ldmia.w	lr, {r6, r8, lr}
 8003a30:	e9dd 1022 	ldrd	r1, r0, [sp, #136]	; 0x88
 8003a34:	e9dd 2320 	ldrd	r2, r3, [sp, #128]	; 0x80
 8003a38:	920a      	str	r2, [sp, #40]	; 0x28
 8003a3a:	9a1f      	ldr	r2, [sp, #124]	; 0x7c
 8003a3c:	9209      	str	r2, [sp, #36]	; 0x24
 8003a3e:	e9dd 251b 	ldrd	r2, r5, [sp, #108]	; 0x6c
 8003a42:	9c1d      	ldr	r4, [sp, #116]	; 0x74
 8003a44:	9407      	str	r4, [sp, #28]
 8003a46:	9c1e      	ldr	r4, [sp, #120]	; 0x78
 8003a48:	9408      	str	r4, [sp, #32]
 8003a4a:	e018      	b.n	8003a7e <tinfl_decompress+0x932>
 8003a4c:	e9d7 ce02 	ldrd	ip, lr, [r7, #8]
 8003a50:	e17b      	b.n	8003d4a <tinfl_decompress+0xbfe>
 8003a52:	2200      	movs	r2, #0
 8003a54:	f04f 0c00 	mov.w	ip, #0
 8003a58:	f04f 0900 	mov.w	r9, #0
 8003a5c:	f04f 0e00 	mov.w	lr, #0
 8003a60:	f04f 0800 	mov.w	r8, #0
 8003a64:	2600      	movs	r6, #0
 8003a66:	2000      	movs	r0, #0
 8003a68:	2100      	movs	r1, #0
 8003a6a:	2300      	movs	r3, #0
 8003a6c:	2500      	movs	r5, #0
 8003a6e:	920a      	str	r2, [sp, #40]	; 0x28
 8003a70:	2200      	movs	r2, #0
 8003a72:	9209      	str	r2, [sp, #36]	; 0x24
 8003a74:	2200      	movs	r2, #0
 8003a76:	9208      	str	r2, [sp, #32]
 8003a78:	2200      	movs	r2, #0
 8003a7a:	9207      	str	r2, [sp, #28]
 8003a7c:	2200      	movs	r2, #0
 8003a7e:	2400      	movs	r4, #0
 8003a80:	e9cd 442a 	strd	r4, r4, [sp, #168]	; 0xa8
 8003a84:	0054      	lsls	r4, r2, #1
 8003a86:	9502      	str	r5, [sp, #8]
 8003a88:	9303      	str	r3, [sp, #12]
 8003a8a:	9606      	str	r6, [sp, #24]
 8003a8c:	9104      	str	r1, [sp, #16]
 8003a8e:	9005      	str	r0, [sp, #20]
 8003a90:	942c      	str	r4, [sp, #176]	; 0xb0
 8003a92:	eb05 0442 	add.w	r4, r5, r2, lsl #1
 8003a96:	0065      	lsls	r5, r4, #1
 8003a98:	952d      	str	r5, [sp, #180]	; 0xb4
 8003a9a:	9d07      	ldr	r5, [sp, #28]
 8003a9c:	eb05 0444 	add.w	r4, r5, r4, lsl #1
 8003aa0:	0065      	lsls	r5, r4, #1
 8003aa2:	952e      	str	r5, [sp, #184]	; 0xb8
 8003aa4:	9d08      	ldr	r5, [sp, #32]
 8003aa6:	eb05 0444 	add.w	r4, r5, r4, lsl #1
 8003aaa:	0065      	lsls	r5, r4, #1
 8003aac:	952f      	str	r5, [sp, #188]	; 0xbc
 8003aae:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003ab0:	eb05 0444 	add.w	r4, r5, r4, lsl #1
 8003ab4:	0065      	lsls	r5, r4, #1
 8003ab6:	9530      	str	r5, [sp, #192]	; 0xc0
 8003ab8:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8003aba:	eb05 0444 	add.w	r4, r5, r4, lsl #1
 8003abe:	0065      	lsls	r5, r4, #1
 8003ac0:	eb03 0444 	add.w	r4, r3, r4, lsl #1
 8003ac4:	f44f 3380 	mov.w	r3, #65536	; 0x10000
 8003ac8:	9531      	str	r5, [sp, #196]	; 0xc4
 8003aca:	0065      	lsls	r5, r4, #1
 8003acc:	eb01 0444 	add.w	r4, r1, r4, lsl #1
 8003ad0:	9532      	str	r5, [sp, #200]	; 0xc8
 8003ad2:	0065      	lsls	r5, r4, #1
 8003ad4:	eb00 0444 	add.w	r4, r0, r4, lsl #1
 8003ad8:	9533      	str	r5, [sp, #204]	; 0xcc
 8003ada:	0065      	lsls	r5, r4, #1
 8003adc:	eb06 0444 	add.w	r4, r6, r4, lsl #1
 8003ae0:	4646      	mov	r6, r8
 8003ae2:	9534      	str	r5, [sp, #208]	; 0xd0
 8003ae4:	0065      	lsls	r5, r4, #1
 8003ae6:	eb08 0444 	add.w	r4, r8, r4, lsl #1
 8003aea:	46f0      	mov	r8, lr
 8003aec:	9535      	str	r5, [sp, #212]	; 0xd4
 8003aee:	0065      	lsls	r5, r4, #1
 8003af0:	eb0e 0444 	add.w	r4, lr, r4, lsl #1
 8003af4:	46ce      	mov	lr, r9
 8003af6:	9536      	str	r5, [sp, #216]	; 0xd8
 8003af8:	0065      	lsls	r5, r4, #1
 8003afa:	eb09 0444 	add.w	r4, r9, r4, lsl #1
 8003afe:	46e1      	mov	r9, ip
 8003b00:	9537      	str	r5, [sp, #220]	; 0xdc
 8003b02:	0065      	lsls	r5, r4, #1
 8003b04:	9538      	str	r5, [sp, #224]	; 0xe0
 8003b06:	eb0c 0544 	add.w	r5, ip, r4, lsl #1
 8003b0a:	006c      	lsls	r4, r5, #1
 8003b0c:	9439      	str	r4, [sp, #228]	; 0xe4
 8003b0e:	9c29      	ldr	r4, [sp, #164]	; 0xa4
 8003b10:	eb04 0545 	add.w	r5, r4, r5, lsl #1
 8003b14:	ea4f 0c45 	mov.w	ip, r5, lsl #1
 8003b18:	ebb3 0f45 	cmp.w	r3, r5, lsl #1
 8003b1c:	f8cd c0e8 	str.w	ip, [sp, #232]	; 0xe8
 8003b20:	d021      	beq.n	8003b66 <tinfl_decompress+0xa1a>
 8003b22:	9802      	ldr	r0, [sp, #8]
 8003b24:	1881      	adds	r1, r0, r2
 8003b26:	9807      	ldr	r0, [sp, #28]
 8003b28:	4408      	add	r0, r1
 8003b2a:	9908      	ldr	r1, [sp, #32]
 8003b2c:	4408      	add	r0, r1
 8003b2e:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003b30:	4408      	add	r0, r1
 8003b32:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003b34:	4408      	add	r0, r1
 8003b36:	9903      	ldr	r1, [sp, #12]
 8003b38:	4408      	add	r0, r1
 8003b3a:	9904      	ldr	r1, [sp, #16]
 8003b3c:	4408      	add	r0, r1
 8003b3e:	9905      	ldr	r1, [sp, #20]
 8003b40:	4408      	add	r0, r1
 8003b42:	9906      	ldr	r1, [sp, #24]
 8003b44:	4408      	add	r0, r1
 8003b46:	4430      	add	r0, r6
 8003b48:	4440      	add	r0, r8
 8003b4a:	4470      	add	r0, lr
 8003b4c:	4448      	add	r0, r9
 8003b4e:	4420      	add	r0, r4
 8003b50:	2801      	cmp	r0, #1
 8003b52:	d908      	bls.n	8003b66 <tinfl_decompress+0xa1a>
 8003b54:	e9d7 ce02 	ldrd	ip, lr, [r7, #8]
 8003b58:	e9dd 940b 	ldrd	r9, r4, [sp, #44]	; 0x2c
 8003b5c:	2023      	movs	r0, #35	; 0x23
 8003b5e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8003b62:	f000 bc99 	b.w	8004498 <tinfl_decompress+0x134c>
 8003b66:	f8dd c054 	ldr.w	ip, [sp, #84]	; 0x54
 8003b6a:	9819      	ldr	r0, [sp, #100]	; 0x64
 8003b6c:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 8003b70:	f8dc 1000 	ldr.w	r1, [ip]
 8003b74:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8003b78:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8003b7a:	2800      	cmp	r0, #0
 8003b7c:	f000 8086 	beq.w	8003c8c <tinfl_decompress+0xb40>
 8003b80:	9919      	ldr	r1, [sp, #100]	; 0x64
 8003b82:	9a01      	ldr	r2, [sp, #4]
 8003b84:	f44f 605a 	mov.w	r0, #3488	; 0xda0
 8003b88:	f10d 0ea8 	add.w	lr, sp, #168	; 0xa8
 8003b8c:	f04f 0800 	mov.w	r8, #0
 8003b90:	fb02 1000 	mla	r0, r2, r0, r1
 8003b94:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003b98:	eb00 0108 	add.w	r1, r0, r8
 8003b9c:	f891 1040 	ldrb.w	r1, [r1, #64]	; 0x40
 8003ba0:	2900      	cmp	r1, #0
 8003ba2:	d068      	beq.n	8003c76 <tinfl_decompress+0xb2a>
 8003ba4:	f85e 4021 	ldr.w	r4, [lr, r1, lsl #2]
 8003ba8:	424e      	negs	r6, r1
 8003baa:	1c63      	adds	r3, r4, #1
 8003bac:	f84e 3021 	str.w	r3, [lr, r1, lsl #2]
 8003bb0:	2300      	movs	r3, #0
 8003bb2:	461d      	mov	r5, r3
 8003bb4:	f004 0301 	and.w	r3, r4, #1
 8003bb8:	3601      	adds	r6, #1
 8003bba:	ea4f 0454 	mov.w	r4, r4, lsr #1
 8003bbe:	ea43 0345 	orr.w	r3, r3, r5, lsl #1
 8003bc2:	d1f6      	bne.n	8003bb2 <tinfl_decompress+0xa66>
 8003bc4:	290a      	cmp	r1, #10
 8003bc6:	d813      	bhi.n	8003bf0 <tinfl_decompress+0xaa4>
 8003bc8:	2600      	movs	r6, #0
 8003bca:	ebb6 2f93 	cmp.w	r6, r3, lsr #10
 8003bce:	d119      	bne.n	8003c04 <tinfl_decompress+0xab8>
 8003bd0:	2401      	movs	r4, #1
 8003bd2:	ea48 2641 	orr.w	r6, r8, r1, lsl #9
 8003bd6:	fa04 f101 	lsl.w	r1, r4, r1
 8003bda:	eb00 0543 	add.w	r5, r0, r3, lsl #1
 8003bde:	440b      	add	r3, r1
 8003be0:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8003be4:	f8a5 6160 	strh.w	r6, [r5, #352]	; 0x160
 8003be8:	d3f7      	bcc.n	8003bda <tinfl_decompress+0xa8e>
 8003bea:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 8003bee:	e042      	b.n	8003c76 <tinfl_decompress+0xb2a>
 8003bf0:	f36f 239f 	bfc	r3, #10, #22
 8003bf4:	eb00 0643 	add.w	r6, r0, r3, lsl #1
 8003bf8:	f9b6 3160 	ldrsh.w	r3, [r6, #352]	; 0x160
 8003bfc:	b12b      	cbz	r3, 8003c0a <tinfl_decompress+0xabe>
 8003bfe:	4614      	mov	r4, r2
 8003c00:	461a      	mov	r2, r3
 8003c02:	e006      	b.n	8003c12 <tinfl_decompress+0xac6>
 8003c04:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 8003c08:	e035      	b.n	8003c76 <tinfl_decompress+0xb2a>
 8003c0a:	f506 73b0 	add.w	r3, r6, #352	; 0x160
 8003c0e:	1e94      	subs	r4, r2, #2
 8003c10:	801a      	strh	r2, [r3, #0]
 8003c12:	f3c5 2340 	ubfx	r3, r5, #9, #1
 8003c16:	290c      	cmp	r1, #12
 8003c18:	eba2 0e03 	sub.w	lr, r2, r3
 8003c1c:	d31e      	bcc.n	8003c5c <tinfl_decompress+0xb10>
 8003c1e:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 8003c22:	ea4f 2c55 	mov.w	ip, r5, lsr #9
 8003c26:	f36f 5c9f 	bfc	ip, #22, #10
 8003c2a:	ea6f 020e 	mvn.w	r2, lr
 8003c2e:	eb00 0242 	add.w	r2, r0, r2, lsl #1
 8003c32:	f9b2 3960 	ldrsh.w	r3, [r2, #2400]	; 0x960
 8003c36:	b113      	cbz	r3, 8003c3e <tinfl_decompress+0xaf2>
 8003c38:	4622      	mov	r2, r4
 8003c3a:	461c      	mov	r4, r3
 8003c3c:	e003      	b.n	8003c46 <tinfl_decompress+0xafa>
 8003c3e:	f502 6216 	add.w	r2, r2, #2400	; 0x960
 8003c42:	8014      	strh	r4, [r2, #0]
 8003c44:	1ea2      	subs	r2, r4, #2
 8003c46:	f3cc 0340 	ubfx	r3, ip, #1, #1
 8003c4a:	3901      	subs	r1, #1
 8003c4c:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
 8003c50:	eba4 0e03 	sub.w	lr, r4, r3
 8003c54:	290b      	cmp	r1, #11
 8003c56:	4614      	mov	r4, r2
 8003c58:	d8e7      	bhi.n	8003c2a <tinfl_decompress+0xade>
 8003c5a:	e002      	b.n	8003c62 <tinfl_decompress+0xb16>
 8003c5c:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 8003c60:	4622      	mov	r2, r4
 8003c62:	ea6f 010e 	mvn.w	r1, lr
 8003c66:	f10d 0ea8 	add.w	lr, sp, #168	; 0xa8
 8003c6a:	eb00 0141 	add.w	r1, r0, r1, lsl #1
 8003c6e:	f8a1 8960 	strh.w	r8, [r1, #2400]	; 0x960
 8003c72:	f8dd c054 	ldr.w	ip, [sp, #84]	; 0x54
 8003c76:	f8dc 1000 	ldr.w	r1, [ip]
 8003c7a:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8003c7c:	f108 0801 	add.w	r8, r8, #1
 8003c80:	eb03 0381 	add.w	r3, r3, r1, lsl #2
 8003c84:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8003c86:	4598      	cmp	r8, r3
 8003c88:	f4ff af86 	bcc.w	8003b98 <tinfl_decompress+0xa4c>
 8003c8c:	2902      	cmp	r1, #2
 8003c8e:	d105      	bne.n	8003c9c <tinfl_decompress+0xb50>
 8003c90:	f8d7 e00c 	ldr.w	lr, [r7, #12]
 8003c94:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8003c96:	f04f 0a00 	mov.w	sl, #0
 8003c9a:	e001      	b.n	8003ca0 <tinfl_decompress+0xb54>
 8003c9c:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8003c9e:	e045      	b.n	8003d2c <tinfl_decompress+0xbe0>
 8003ca0:	f8dd 8050 	ldr.w	r8, [sp, #80]	; 0x50
 8003ca4:	9819      	ldr	r0, [sp, #100]	; 0x64
 8003ca6:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003caa:	4601      	mov	r1, r0
 8003cac:	6ac6      	ldr	r6, [r0, #44]	; 0x2c
 8003cae:	6b0d      	ldr	r5, [r1, #48]	; 0x30
 8003cb0:	19a8      	adds	r0, r5, r6
 8003cb2:	4582      	cmp	sl, r0
 8003cb4:	d21a      	bcs.n	8003cec <tinfl_decompress+0xba0>
 8003cb6:	f8d7 c008 	ldr.w	ip, [r7, #8]
 8003cba:	2c0e      	cmp	r4, #14
 8003cbc:	d83a      	bhi.n	8003d34 <tinfl_decompress+0xbe8>
 8003cbe:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003cc0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003cc2:	9e16      	ldr	r6, [sp, #88]	; 0x58
 8003cc4:	1a18      	subs	r0, r3, r0
 8003cc6:	2801      	cmp	r0, #1
 8003cc8:	f340 80d7 	ble.w	8003e7a <tinfl_decompress+0xd2e>
 8003ccc:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003cce:	f104 0208 	add.w	r2, r4, #8
 8003cd2:	4603      	mov	r3, r0
 8003cd4:	7818      	ldrb	r0, [r3, #0]
 8003cd6:	7859      	ldrb	r1, [r3, #1]
 8003cd8:	3302      	adds	r3, #2
 8003cda:	9318      	str	r3, [sp, #96]	; 0x60
 8003cdc:	40a0      	lsls	r0, r4
 8003cde:	4091      	lsls	r1, r2
 8003ce0:	3410      	adds	r4, #16
 8003ce2:	ea40 0009 	orr.w	r0, r0, r9
 8003ce6:	ea40 0901 	orr.w	r9, r0, r1
 8003cea:	e02b      	b.n	8003d44 <tinfl_decompress+0xbf8>
 8003cec:	4550      	cmp	r0, sl
 8003cee:	f8cd 8050 	str.w	r8, [sp, #80]	; 0x50
 8003cf2:	d121      	bne.n	8003d38 <tinfl_decompress+0xbec>
 8003cf4:	f8cd 902c 	str.w	r9, [sp, #44]	; 0x2c
 8003cf8:	46d9      	mov	r9, fp
 8003cfa:	f642 1024 	movw	r0, #10532	; 0x2924
 8003cfe:	468b      	mov	fp, r1
 8003d00:	4632      	mov	r2, r6
 8003d02:	eb0b 0800 	add.w	r8, fp, r0
 8003d06:	f10b 0040 	add.w	r0, fp, #64	; 0x40
 8003d0a:	4641      	mov	r1, r8
 8003d0c:	f002 f978 	bl	8006000 <__aeabi_memcpy>
 8003d10:	462a      	mov	r2, r5
 8003d12:	f50b 605e 	add.w	r0, fp, #3552	; 0xde0
 8003d16:	465d      	mov	r5, fp
 8003d18:	46cb      	mov	fp, r9
 8003d1a:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 8003d1e:	eb08 0106 	add.w	r1, r8, r6
 8003d22:	f002 f96d 	bl	8006000 <__aeabi_memcpy>
 8003d26:	46ac      	mov	ip, r5
 8003d28:	f85c 1f18 	ldr.w	r1, [ip, #24]!
 8003d2c:	1e48      	subs	r0, r1, #1
 8003d2e:	f8cc 0000 	str.w	r0, [ip]
 8003d32:	e649      	b.n	80039c8 <tinfl_decompress+0x87c>
 8003d34:	9e16      	ldr	r6, [sp, #88]	; 0x58
 8003d36:	e0e5      	b.n	8003f04 <tinfl_decompress+0xdb8>
 8003d38:	f8d7 c008 	ldr.w	ip, [r7, #8]
 8003d3c:	2015      	movs	r0, #21
 8003d3e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8003d42:	e3a9      	b.n	8004498 <tinfl_decompress+0x134c>
 8003d44:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003d48:	e0dc      	b.n	8003f04 <tinfl_decompress+0xdb8>
 8003d4a:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003d4c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003d4e:	1a10      	subs	r0, r2, r0
 8003d50:	2804      	cmp	r0, #4
 8003d52:	da01      	bge.n	8003d58 <tinfl_decompress+0xc0c>
 8003d54:	9e16      	ldr	r6, [sp, #88]	; 0x58
 8003d56:	e071      	b.n	8003e3c <tinfl_decompress+0xcf0>
 8003d58:	9e16      	ldr	r6, [sp, #88]	; 0x58
 8003d5a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d5c:	1b99      	subs	r1, r3, r6
 8003d5e:	2901      	cmp	r1, #1
 8003d60:	dd6c      	ble.n	8003e3c <tinfl_decompress+0xcf0>
 8003d62:	2c0e      	cmp	r4, #14
 8003d64:	d80b      	bhi.n	8003d7e <tinfl_decompress+0xc32>
 8003d66:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003d68:	4602      	mov	r2, r0
 8003d6a:	7810      	ldrb	r0, [r2, #0]
 8003d6c:	7851      	ldrb	r1, [r2, #1]
 8003d6e:	3202      	adds	r2, #2
 8003d70:	9218      	str	r2, [sp, #96]	; 0x60
 8003d72:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
 8003d76:	40a0      	lsls	r0, r4
 8003d78:	3410      	adds	r4, #16
 8003d7a:	ea49 0900 	orr.w	r9, r9, r0
 8003d7e:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003d80:	4648      	mov	r0, r9
 8003d82:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8003d86:	f36f 209f 	bfc	r0, #10, #22
 8003d8a:	eb02 0040 	add.w	r0, r2, r0, lsl #1
 8003d8e:	f9b0 a160 	ldrsh.w	sl, [r0, #352]	; 0x160
 8003d92:	458a      	cmp	sl, r1
 8003d94:	dd02      	ble.n	8003d9c <tinfl_decompress+0xc50>
 8003d96:	ea4f 206a 	mov.w	r0, sl, asr #9
 8003d9a:	e010      	b.n	8003dbe <tinfl_decompress+0xc72>
 8003d9c:	200a      	movs	r0, #10
 8003d9e:	fa29 f100 	lsr.w	r1, r9, r0
 8003da2:	ea6f 020a 	mvn.w	r2, sl
 8003da6:	3001      	adds	r0, #1
 8003da8:	f001 0101 	and.w	r1, r1, #1
 8003dac:	4411      	add	r1, r2
 8003dae:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003db0:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8003db4:	f9b1 a960 	ldrsh.w	sl, [r1, #2400]	; 0x960
 8003db8:	f1ba 0f00 	cmp.w	sl, #0
 8003dbc:	dbef      	blt.n	8003d9e <tinfl_decompress+0xc52>
 8003dbe:	1a24      	subs	r4, r4, r0
 8003dc0:	fa29 f900 	lsr.w	r9, r9, r0
 8003dc4:	ea5f 50ca 	movs.w	r0, sl, lsl #23
 8003dc8:	d454      	bmi.n	8003e74 <tinfl_decompress+0xd28>
 8003dca:	2c0e      	cmp	r4, #14
 8003dcc:	d80b      	bhi.n	8003de6 <tinfl_decompress+0xc9a>
 8003dce:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003dd0:	4602      	mov	r2, r0
 8003dd2:	7810      	ldrb	r0, [r2, #0]
 8003dd4:	7851      	ldrb	r1, [r2, #1]
 8003dd6:	3202      	adds	r2, #2
 8003dd8:	9218      	str	r2, [sp, #96]	; 0x60
 8003dda:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
 8003dde:	40a0      	lsls	r0, r4
 8003de0:	3410      	adds	r4, #16
 8003de2:	ea49 0900 	orr.w	r9, r9, r0
 8003de6:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003de8:	4648      	mov	r0, r9
 8003dea:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8003dee:	f36f 209f 	bfc	r0, #10, #22
 8003df2:	eb02 0040 	add.w	r0, r2, r0, lsl #1
 8003df6:	f9b0 0160 	ldrsh.w	r0, [r0, #352]	; 0x160
 8003dfa:	4288      	cmp	r0, r1
 8003dfc:	dd01      	ble.n	8003e02 <tinfl_decompress+0xcb6>
 8003dfe:	1241      	asrs	r1, r0, #9
 8003e00:	e00e      	b.n	8003e20 <tinfl_decompress+0xcd4>
 8003e02:	210a      	movs	r1, #10
 8003e04:	fa29 f201 	lsr.w	r2, r9, r1
 8003e08:	43c0      	mvns	r0, r0
 8003e0a:	3101      	adds	r1, #1
 8003e0c:	f002 0201 	and.w	r2, r2, #1
 8003e10:	4410      	add	r0, r2
 8003e12:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003e14:	eb02 0040 	add.w	r0, r2, r0, lsl #1
 8003e18:	f9b0 0960 	ldrsh.w	r0, [r0, #2400]	; 0x960
 8003e1c:	2800      	cmp	r0, #0
 8003e1e:	dbf1      	blt.n	8003e04 <tinfl_decompress+0xcb8>
 8003e20:	1a64      	subs	r4, r4, r1
 8003e22:	fa29 f901 	lsr.w	r9, r9, r1
 8003e26:	05c1      	lsls	r1, r0, #23
 8003e28:	f886 a000 	strb.w	sl, [r6]
 8003e2c:	d420      	bmi.n	8003e70 <tinfl_decompress+0xd24>
 8003e2e:	7070      	strb	r0, [r6, #1]
 8003e30:	3602      	adds	r6, #2
 8003e32:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003e34:	9911      	ldr	r1, [sp, #68]	; 0x44
 8003e36:	1a08      	subs	r0, r1, r0
 8003e38:	2804      	cmp	r0, #4
 8003e3a:	da8f      	bge.n	8003d5c <tinfl_decompress+0xc10>
 8003e3c:	2c0e      	cmp	r4, #14
 8003e3e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003e42:	f200 8128 	bhi.w	8004096 <tinfl_decompress+0xf4a>
 8003e46:	2801      	cmp	r0, #1
 8003e48:	f340 80ea 	ble.w	8004020 <tinfl_decompress+0xed4>
 8003e4c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003e4e:	f104 0208 	add.w	r2, r4, #8
 8003e52:	4603      	mov	r3, r0
 8003e54:	7818      	ldrb	r0, [r3, #0]
 8003e56:	7859      	ldrb	r1, [r3, #1]
 8003e58:	3302      	adds	r3, #2
 8003e5a:	9318      	str	r3, [sp, #96]	; 0x60
 8003e5c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003e60:	40a0      	lsls	r0, r4
 8003e62:	4091      	lsls	r1, r2
 8003e64:	3410      	adds	r4, #16
 8003e66:	ea40 0009 	orr.w	r0, r0, r9
 8003e6a:	ea40 0901 	orr.w	r9, r0, r1
 8003e6e:	e112      	b.n	8004096 <tinfl_decompress+0xf4a>
 8003e70:	3601      	adds	r6, #1
 8003e72:	4682      	mov	sl, r0
 8003e74:	9616      	str	r6, [sp, #88]	; 0x58
 8003e76:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003e78:	e135      	b.n	80040e6 <tinfl_decompress+0xf9a>
 8003e7a:	9919      	ldr	r1, [sp, #100]	; 0x64
 8003e7c:	4648      	mov	r0, r9
 8003e7e:	f36f 209f 	bfc	r0, #10, #22
 8003e82:	eb01 0040 	add.w	r0, r1, r0, lsl #1
 8003e86:	f44f 51e5 	mov.w	r1, #7328	; 0x1ca0
 8003e8a:	5e40      	ldrsh	r0, [r0, r1]
 8003e8c:	4290      	cmp	r0, r2
 8003e8e:	dd07      	ble.n	8003ea0 <tinfl_decompress+0xd54>
 8003e90:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8003e94:	eb01 2060 	add.w	r0, r1, r0, asr #9
 8003e98:	42a0      	cmp	r0, r4
 8003e9a:	f4ff af53 	bcc.w	8003d44 <tinfl_decompress+0xbf8>
 8003e9e:	e017      	b.n	8003ed0 <tinfl_decompress+0xd84>
 8003ea0:	2c0b      	cmp	r4, #11
 8003ea2:	d315      	bcc.n	8003ed0 <tinfl_decompress+0xd84>
 8003ea4:	220a      	movs	r2, #10
 8003ea6:	f242 41a0 	movw	r1, #9376	; 0x24a0
 8003eaa:	fa29 f302 	lsr.w	r3, r9, r2
 8003eae:	43c0      	mvns	r0, r0
 8003eb0:	f003 0301 	and.w	r3, r3, #1
 8003eb4:	4418      	add	r0, r3
 8003eb6:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8003eb8:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 8003ebc:	5e40      	ldrsh	r0, [r0, r1]
 8003ebe:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8003ec2:	f73f af3f 	bgt.w	8003d44 <tinfl_decompress+0xbf8>
 8003ec6:	1c53      	adds	r3, r2, #1
 8003ec8:	3202      	adds	r2, #2
 8003eca:	4294      	cmp	r4, r2
 8003ecc:	461a      	mov	r2, r3
 8003ece:	d2ec      	bcs.n	8003eaa <tinfl_decompress+0xd5e>
 8003ed0:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003ed2:	9911      	ldr	r1, [sp, #68]	; 0x44
 8003ed4:	4288      	cmp	r0, r1
 8003ed6:	d206      	bcs.n	8003ee6 <tinfl_decompress+0xd9a>
 8003ed8:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003eda:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003ede:	f811 0b01 	ldrb.w	r0, [r1], #1
 8003ee2:	9118      	str	r1, [sp, #96]	; 0x60
 8003ee4:	e008      	b.n	8003ef8 <tinfl_decompress+0xdac>
 8003ee6:	6938      	ldr	r0, [r7, #16]
 8003ee8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003eec:	9616      	str	r6, [sp, #88]	; 0x58
 8003eee:	f8cd 8050 	str.w	r8, [sp, #80]	; 0x50
 8003ef2:	0780      	lsls	r0, r0, #30
 8003ef4:	d44b      	bmi.n	8003f8e <tinfl_decompress+0xe42>
 8003ef6:	2000      	movs	r0, #0
 8003ef8:	40a0      	lsls	r0, r4
 8003efa:	3408      	adds	r4, #8
 8003efc:	ea49 0900 	orr.w	r9, r9, r0
 8003f00:	2c0f      	cmp	r4, #15
 8003f02:	d3ba      	bcc.n	8003e7a <tinfl_decompress+0xd2e>
 8003f04:	9919      	ldr	r1, [sp, #100]	; 0x64
 8003f06:	4648      	mov	r0, r9
 8003f08:	f36f 209f 	bfc	r0, #10, #22
 8003f0c:	eb01 0040 	add.w	r0, r1, r0, lsl #1
 8003f10:	f44f 51e5 	mov.w	r1, #7328	; 0x1ca0
 8003f14:	f930 b001 	ldrsh.w	fp, [r0, r1]
 8003f18:	4593      	cmp	fp, r2
 8003f1a:	dd04      	ble.n	8003f26 <tinfl_decompress+0xdda>
 8003f1c:	ea4f 206b 	mov.w	r0, fp, asr #9
 8003f20:	f36f 2b5f 	bfc	fp, #9, #23
 8003f24:	e012      	b.n	8003f4c <tinfl_decompress+0xe00>
 8003f26:	200a      	movs	r0, #10
 8003f28:	f242 41a0 	movw	r1, #9376	; 0x24a0
 8003f2c:	fa29 f200 	lsr.w	r2, r9, r0
 8003f30:	ea6f 030b 	mvn.w	r3, fp
 8003f34:	3001      	adds	r0, #1
 8003f36:	f002 0201 	and.w	r2, r2, #1
 8003f3a:	441a      	add	r2, r3
 8003f3c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8003f3e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003f42:	f932 b001 	ldrsh.w	fp, [r2, r1]
 8003f46:	f1bb 0f00 	cmp.w	fp, #0
 8003f4a:	dbef      	blt.n	8003f2c <tinfl_decompress+0xde0>
 8003f4c:	1a24      	subs	r4, r4, r0
 8003f4e:	fa29 f900 	lsr.w	r9, r9, r0
 8003f52:	f1bb 0f0f 	cmp.w	fp, #15
 8003f56:	d809      	bhi.n	8003f6c <tinfl_decompress+0xe20>
 8003f58:	9819      	ldr	r0, [sp, #100]	; 0x64
 8003f5a:	f642 1124 	movw	r1, #10532	; 0x2924
 8003f5e:	9616      	str	r6, [sp, #88]	; 0x58
 8003f60:	4450      	add	r0, sl
 8003f62:	f10a 0a01 	add.w	sl, sl, #1
 8003f66:	f800 b001 	strb.w	fp, [r0, r1]
 8003f6a:	e69b      	b.n	8003ca4 <tinfl_decompress+0xb58>
 8003f6c:	f1ba 0f00 	cmp.w	sl, #0
 8003f70:	bf08      	it	eq
 8003f72:	f1bb 0f10 	cmpeq.w	fp, #16
 8003f76:	d10c      	bne.n	8003f92 <tinfl_decompress+0xe46>
 8003f78:	f04f 0b10 	mov.w	fp, #16
 8003f7c:	f04f 0a00 	mov.w	sl, #0
 8003f80:	f8cd 8050 	str.w	r8, [sp, #80]	; 0x50
 8003f84:	9616      	str	r6, [sp, #88]	; 0x58
 8003f86:	2011      	movs	r0, #17
 8003f88:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8003f8c:	e284      	b.n	8004498 <tinfl_decompress+0x134c>
 8003f8e:	2010      	movs	r0, #16
 8003f90:	e281      	b.n	8004496 <tinfl_decompress+0x134a>
 8003f92:	f64c 00f5 	movw	r0, #51445	; 0xc8f5
 8003f96:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003f98:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003f9c:	4458      	add	r0, fp
 8003f9e:	f810 3c10 	ldrb.w	r3, [r0, #-16]
 8003fa2:	429c      	cmp	r4, r3
 8003fa4:	d211      	bcs.n	8003fca <tinfl_decompress+0xe7e>
 8003fa6:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003fa8:	4290      	cmp	r0, r2
 8003faa:	d204      	bcs.n	8003fb6 <tinfl_decompress+0xe6a>
 8003fac:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003fae:	f811 0b01 	ldrb.w	r0, [r1], #1
 8003fb2:	9118      	str	r1, [sp, #96]	; 0x60
 8003fb4:	e003      	b.n	8003fbe <tinfl_decompress+0xe72>
 8003fb6:	6938      	ldr	r0, [r7, #16]
 8003fb8:	0780      	lsls	r0, r0, #30
 8003fba:	d42d      	bmi.n	8004018 <tinfl_decompress+0xecc>
 8003fbc:	2000      	movs	r0, #0
 8003fbe:	40a0      	lsls	r0, r4
 8003fc0:	3408      	adds	r4, #8
 8003fc2:	ea49 0900 	orr.w	r9, r9, r0
 8003fc6:	429c      	cmp	r4, r3
 8003fc8:	d3ed      	bcc.n	8003fa6 <tinfl_decompress+0xe5a>
 8003fca:	f64c 01f9 	movw	r1, #51449	; 0xc8f9
 8003fce:	2001      	movs	r0, #1
 8003fd0:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003fd2:	1ae4      	subs	r4, r4, r3
 8003fd4:	9314      	str	r3, [sp, #80]	; 0x50
 8003fd6:	9616      	str	r6, [sp, #88]	; 0x58
 8003fd8:	4676      	mov	r6, lr
 8003fda:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003fde:	4098      	lsls	r0, r3
 8003fe0:	4459      	add	r1, fp
 8003fe2:	3801      	subs	r0, #1
 8003fe4:	f811 1c10 	ldrb.w	r1, [r1, #-16]
 8003fe8:	ea00 0009 	and.w	r0, r0, r9
 8003fec:	fa29 f903 	lsr.w	r9, r9, r3
 8003ff0:	465b      	mov	r3, fp
 8003ff2:	2b10      	cmp	r3, #16
 8003ff4:	eb01 0500 	add.w	r5, r1, r0
 8003ff8:	eb02 010a 	add.w	r1, r2, sl
 8003ffc:	f642 1024 	movw	r0, #10532	; 0x2924
 8004000:	bf06      	itte	eq
 8004002:	f642 1223 	movweq	r2, #10531	; 0x2923
 8004006:	5c8a      	ldrbeq	r2, [r1, r2]
 8004008:	2200      	movne	r2, #0
 800400a:	4408      	add	r0, r1
 800400c:	4629      	mov	r1, r5
 800400e:	f7fc fa77 	bl	8000500 <__aeabi_memset>
 8004012:	44aa      	add	sl, r5
 8004014:	46b6      	mov	lr, r6
 8004016:	e643      	b.n	8003ca0 <tinfl_decompress+0xb54>
 8004018:	9314      	str	r3, [sp, #80]	; 0x50
 800401a:	9616      	str	r6, [sp, #88]	; 0x58
 800401c:	2012      	movs	r0, #18
 800401e:	e23a      	b.n	8004496 <tinfl_decompress+0x134a>
 8004020:	9919      	ldr	r1, [sp, #100]	; 0x64
 8004022:	4648      	mov	r0, r9
 8004024:	f36f 209f 	bfc	r0, #10, #22
 8004028:	eb01 0040 	add.w	r0, r1, r0, lsl #1
 800402c:	f9b0 0160 	ldrsh.w	r0, [r0, #352]	; 0x160
 8004030:	4298      	cmp	r0, r3
 8004032:	dd06      	ble.n	8004042 <tinfl_decompress+0xef6>
 8004034:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8004038:	eb01 2060 	add.w	r0, r1, r0, asr #9
 800403c:	42a0      	cmp	r0, r4
 800403e:	d216      	bcs.n	800406e <tinfl_decompress+0xf22>
 8004040:	e029      	b.n	8004096 <tinfl_decompress+0xf4a>
 8004042:	2c0b      	cmp	r4, #11
 8004044:	d313      	bcc.n	800406e <tinfl_decompress+0xf22>
 8004046:	210a      	movs	r1, #10
 8004048:	fa29 f201 	lsr.w	r2, r9, r1
 800404c:	43c0      	mvns	r0, r0
 800404e:	f002 0201 	and.w	r2, r2, #1
 8004052:	4410      	add	r0, r2
 8004054:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8004056:	eb02 0040 	add.w	r0, r2, r0, lsl #1
 800405a:	f9b0 0960 	ldrsh.w	r0, [r0, #2400]	; 0x960
 800405e:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8004062:	dc18      	bgt.n	8004096 <tinfl_decompress+0xf4a>
 8004064:	1c4a      	adds	r2, r1, #1
 8004066:	3102      	adds	r1, #2
 8004068:	428c      	cmp	r4, r1
 800406a:	4611      	mov	r1, r2
 800406c:	d2ec      	bcs.n	8004048 <tinfl_decompress+0xefc>
 800406e:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004070:	9911      	ldr	r1, [sp, #68]	; 0x44
 8004072:	4288      	cmp	r0, r1
 8004074:	d204      	bcs.n	8004080 <tinfl_decompress+0xf34>
 8004076:	9918      	ldr	r1, [sp, #96]	; 0x60
 8004078:	f811 0b01 	ldrb.w	r0, [r1], #1
 800407c:	9118      	str	r1, [sp, #96]	; 0x60
 800407e:	e004      	b.n	800408a <tinfl_decompress+0xf3e>
 8004080:	6938      	ldr	r0, [r7, #16]
 8004082:	9616      	str	r6, [sp, #88]	; 0x58
 8004084:	0780      	lsls	r0, r0, #30
 8004086:	d462      	bmi.n	800414e <tinfl_decompress+0x1002>
 8004088:	2000      	movs	r0, #0
 800408a:	40a0      	lsls	r0, r4
 800408c:	3408      	adds	r4, #8
 800408e:	ea49 0900 	orr.w	r9, r9, r0
 8004092:	2c0f      	cmp	r4, #15
 8004094:	d3c4      	bcc.n	8004020 <tinfl_decompress+0xed4>
 8004096:	9919      	ldr	r1, [sp, #100]	; 0x64
 8004098:	4648      	mov	r0, r9
 800409a:	f36f 209f 	bfc	r0, #10, #22
 800409e:	eb01 0040 	add.w	r0, r1, r0, lsl #1
 80040a2:	f9b0 a160 	ldrsh.w	sl, [r0, #352]	; 0x160
 80040a6:	9616      	str	r6, [sp, #88]	; 0x58
 80040a8:	459a      	cmp	sl, r3
 80040aa:	dd04      	ble.n	80040b6 <tinfl_decompress+0xf6a>
 80040ac:	ea4f 206a 	mov.w	r0, sl, asr #9
 80040b0:	f36f 2a5f 	bfc	sl, #9, #23
 80040b4:	e010      	b.n	80040d8 <tinfl_decompress+0xf8c>
 80040b6:	200a      	movs	r0, #10
 80040b8:	fa29 f100 	lsr.w	r1, r9, r0
 80040bc:	ea6f 020a 	mvn.w	r2, sl
 80040c0:	3001      	adds	r0, #1
 80040c2:	f001 0101 	and.w	r1, r1, #1
 80040c6:	4411      	add	r1, r2
 80040c8:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80040ca:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 80040ce:	f9b1 a960 	ldrsh.w	sl, [r1, #2400]	; 0x960
 80040d2:	f1ba 0f00 	cmp.w	sl, #0
 80040d6:	dbef      	blt.n	80040b8 <tinfl_decompress+0xf6c>
 80040d8:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80040da:	1a24      	subs	r4, r4, r0
 80040dc:	fa29 f900 	lsr.w	r9, r9, r0
 80040e0:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80040e4:	d911      	bls.n	800410a <tinfl_decompress+0xfbe>
 80040e6:	f36f 2a5f 	bfc	sl, #9, #23
 80040ea:	f5ba 7f80 	cmp.w	sl, #256	; 0x100
 80040ee:	d114      	bne.n	800411a <tinfl_decompress+0xfce>
 80040f0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80040f2:	f44f 7a80 	mov.w	sl, #256	; 0x100
 80040f6:	9819      	ldr	r0, [sp, #100]	; 0x64
 80040f8:	7d00      	ldrb	r0, [r0, #20]
 80040fa:	07c0      	lsls	r0, r0, #31
 80040fc:	d12c      	bne.n	8004158 <tinfl_decompress+0x100c>
 80040fe:	9e14      	ldr	r6, [sp, #80]	; 0x50
 8004100:	2c02      	cmp	r4, #2
 8004102:	f67f aa2b 	bls.w	800355c <tinfl_decompress+0x410>
 8004106:	f7ff ba41 	b.w	800358c <tinfl_decompress+0x440>
 800410a:	9816      	ldr	r0, [sp, #88]	; 0x58
 800410c:	9910      	ldr	r1, [sp, #64]	; 0x40
 800410e:	4288      	cmp	r0, r1
 8004110:	d21f      	bcs.n	8004152 <tinfl_decompress+0x1006>
 8004112:	f800 ab01 	strb.w	sl, [r0], #1
 8004116:	9016      	str	r0, [sp, #88]	; 0x58
 8004118:	e618      	b.n	8003d4c <tinfl_decompress+0xc00>
 800411a:	f64f 30fc 	movw	r0, #64508	; 0xfbfc
 800411e:	f64b 41c0 	movw	r1, #48320	; 0xbcc0
 8004122:	f64b 523c 	movw	r2, #48444	; 0xbd3c
 8004126:	f6cf 70ff 	movt	r0, #65535	; 0xffff
 800412a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800412e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8004132:	eb00 008a 	add.w	r0, r0, sl, lsl #2
 8004136:	5809      	ldr	r1, [r1, r0]
 8004138:	f852 8000 	ldr.w	r8, [r2, r0]
 800413c:	f2aa 1009 	subw	r0, sl, #265	; 0x109
 8004140:	2813      	cmp	r0, #19
 8004142:	d81a      	bhi.n	800417a <tinfl_decompress+0x102e>
 8004144:	9e16      	ldr	r6, [sp, #88]	; 0x58
 8004146:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004148:	4544      	cmp	r4, r8
 800414a:	d232      	bcs.n	80041b2 <tinfl_decompress+0x1066>
 800414c:	e01e      	b.n	800418c <tinfl_decompress+0x1040>
 800414e:	2017      	movs	r0, #23
 8004150:	e1a1      	b.n	8004496 <tinfl_decompress+0x134a>
 8004152:	2018      	movs	r0, #24
 8004154:	2102      	movs	r1, #2
 8004156:	e19f      	b.n	8004498 <tinfl_decompress+0x134c>
 8004158:	6938      	ldr	r0, [r7, #16]
 800415a:	9316      	str	r3, [sp, #88]	; 0x58
 800415c:	07c0      	lsls	r0, r0, #31
 800415e:	d05b      	beq.n	8004218 <tinfl_decompress+0x10cc>
 8004160:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8004162:	f004 0007 	and.w	r0, r4, #7
 8004166:	f04f 0a00 	mov.w	sl, #0
 800416a:	1a24      	subs	r4, r4, r0
 800416c:	fa29 f900 	lsr.w	r9, r9, r0
 8004170:	f1ba 0f03 	cmp.w	sl, #3
 8004174:	f240 814e 	bls.w	8004414 <tinfl_decompress+0x12c8>
 8004178:	e04d      	b.n	8004216 <tinfl_decompress+0x10ca>
 800417a:	9e16      	ldr	r6, [sp, #88]	; 0x58
 800417c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800417e:	4648      	mov	r0, r9
 8004180:	468a      	mov	sl, r1
 8004182:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004186:	2c0e      	cmp	r4, #14
 8004188:	d924      	bls.n	80041d4 <tinfl_decompress+0x1088>
 800418a:	e029      	b.n	80041e0 <tinfl_decompress+0x1094>
 800418c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800418e:	4290      	cmp	r0, r2
 8004190:	d205      	bcs.n	800419e <tinfl_decompress+0x1052>
 8004192:	9a18      	ldr	r2, [sp, #96]	; 0x60
 8004194:	f812 0b01 	ldrb.w	r0, [r2], #1
 8004198:	9218      	str	r2, [sp, #96]	; 0x60
 800419a:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800419c:	e003      	b.n	80041a6 <tinfl_decompress+0x105a>
 800419e:	6938      	ldr	r0, [r7, #16]
 80041a0:	0780      	lsls	r0, r0, #30
 80041a2:	d41f      	bmi.n	80041e4 <tinfl_decompress+0x1098>
 80041a4:	2000      	movs	r0, #0
 80041a6:	40a0      	lsls	r0, r4
 80041a8:	3408      	adds	r4, #8
 80041aa:	ea49 0900 	orr.w	r9, r9, r0
 80041ae:	4544      	cmp	r4, r8
 80041b0:	d3ec      	bcc.n	800418c <tinfl_decompress+0x1040>
 80041b2:	2201      	movs	r2, #1
 80041b4:	eba4 0408 	sub.w	r4, r4, r8
 80041b8:	fa29 f008 	lsr.w	r0, r9, r8
 80041bc:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80041c0:	fa02 f208 	lsl.w	r2, r2, r8
 80041c4:	3a01      	subs	r2, #1
 80041c6:	ea02 0209 	and.w	r2, r2, r9
 80041ca:	eb02 0a01 	add.w	sl, r2, r1
 80041ce:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80041d0:	2c0e      	cmp	r4, #14
 80041d2:	d805      	bhi.n	80041e0 <tinfl_decompress+0x1094>
 80041d4:	9918      	ldr	r1, [sp, #96]	; 0x60
 80041d6:	1a51      	subs	r1, r2, r1
 80041d8:	2901      	cmp	r1, #1
 80041da:	dc09      	bgt.n	80041f0 <tinfl_decompress+0x10a4>
 80041dc:	4681      	mov	r9, r0
 80041de:	e01e      	b.n	800421e <tinfl_decompress+0x10d2>
 80041e0:	4681      	mov	r9, r0
 80041e2:	e060      	b.n	80042a6 <tinfl_decompress+0x115a>
 80041e4:	f8cd 8050 	str.w	r8, [sp, #80]	; 0x50
 80041e8:	9616      	str	r6, [sp, #88]	; 0x58
 80041ea:	2019      	movs	r0, #25
 80041ec:	f7ff bbe7 	b.w	80039be <tinfl_decompress+0x872>
 80041f0:	9918      	ldr	r1, [sp, #96]	; 0x60
 80041f2:	46b0      	mov	r8, r6
 80041f4:	f104 0308 	add.w	r3, r4, #8
 80041f8:	460e      	mov	r6, r1
 80041fa:	7831      	ldrb	r1, [r6, #0]
 80041fc:	7872      	ldrb	r2, [r6, #1]
 80041fe:	3602      	adds	r6, #2
 8004200:	9618      	str	r6, [sp, #96]	; 0x60
 8004202:	4646      	mov	r6, r8
 8004204:	40a1      	lsls	r1, r4
 8004206:	409a      	lsls	r2, r3
 8004208:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800420c:	3410      	adds	r4, #16
 800420e:	4308      	orrs	r0, r1
 8004210:	ea40 0902 	orr.w	r9, r0, r2
 8004214:	e047      	b.n	80042a6 <tinfl_decompress+0x115a>
 8004216:	9216      	str	r2, [sp, #88]	; 0x58
 8004218:	2022      	movs	r0, #34	; 0x22
 800421a:	2100      	movs	r1, #0
 800421c:	e13c      	b.n	8004498 <tinfl_decompress+0x134c>
 800421e:	9919      	ldr	r1, [sp, #100]	; 0x64
 8004220:	4648      	mov	r0, r9
 8004222:	f36f 209f 	bfc	r0, #10, #22
 8004226:	eb01 0040 	add.w	r0, r1, r0, lsl #1
 800422a:	f9b0 0f00 	ldrsh.w	r0, [r0, #3840]	; 0xf00
 800422e:	4298      	cmp	r0, r3
 8004230:	dd08      	ble.n	8004244 <tinfl_decompress+0x10f8>
 8004232:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8004236:	eb01 2060 	add.w	r0, r1, r0, asr #9
 800423a:	42a0      	cmp	r0, r4
 800423c:	d219      	bcs.n	8004272 <tinfl_decompress+0x1126>
 800423e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004242:	e030      	b.n	80042a6 <tinfl_decompress+0x115a>
 8004244:	2c0b      	cmp	r4, #11
 8004246:	d314      	bcc.n	8004272 <tinfl_decompress+0x1126>
 8004248:	220a      	movs	r2, #10
 800424a:	f44f 51b8 	mov.w	r1, #5888	; 0x1700
 800424e:	fa29 f302 	lsr.w	r3, r9, r2
 8004252:	43c0      	mvns	r0, r0
 8004254:	f003 0301 	and.w	r3, r3, #1
 8004258:	4418      	add	r0, r3
 800425a:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800425c:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 8004260:	5e40      	ldrsh	r0, [r0, r1]
 8004262:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8004266:	dc56      	bgt.n	8004316 <tinfl_decompress+0x11ca>
 8004268:	1c53      	adds	r3, r2, #1
 800426a:	3202      	adds	r2, #2
 800426c:	4294      	cmp	r4, r2
 800426e:	461a      	mov	r2, r3
 8004270:	d2ed      	bcs.n	800424e <tinfl_decompress+0x1102>
 8004272:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004274:	9911      	ldr	r1, [sp, #68]	; 0x44
 8004276:	4288      	cmp	r0, r1
 8004278:	d206      	bcs.n	8004288 <tinfl_decompress+0x113c>
 800427a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800427c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004280:	f811 0b01 	ldrb.w	r0, [r1], #1
 8004284:	9118      	str	r1, [sp, #96]	; 0x60
 8004286:	e008      	b.n	800429a <tinfl_decompress+0x114e>
 8004288:	6938      	ldr	r0, [r7, #16]
 800428a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800428e:	9616      	str	r6, [sp, #88]	; 0x58
 8004290:	f8cd 8050 	str.w	r8, [sp, #80]	; 0x50
 8004294:	0780      	lsls	r0, r0, #30
 8004296:	d43c      	bmi.n	8004312 <tinfl_decompress+0x11c6>
 8004298:	2000      	movs	r0, #0
 800429a:	40a0      	lsls	r0, r4
 800429c:	3408      	adds	r4, #8
 800429e:	ea49 0900 	orr.w	r9, r9, r0
 80042a2:	2c0f      	cmp	r4, #15
 80042a4:	d3bb      	bcc.n	800421e <tinfl_decompress+0x10d2>
 80042a6:	9919      	ldr	r1, [sp, #100]	; 0x64
 80042a8:	4648      	mov	r0, r9
 80042aa:	f36f 209f 	bfc	r0, #10, #22
 80042ae:	eb01 0040 	add.w	r0, r1, r0, lsl #1
 80042b2:	f9b0 0f00 	ldrsh.w	r0, [r0, #3840]	; 0xf00
 80042b6:	4298      	cmp	r0, r3
 80042b8:	dd03      	ble.n	80042c2 <tinfl_decompress+0x1176>
 80042ba:	1241      	asrs	r1, r0, #9
 80042bc:	f36f 205f 	bfc	r0, #9, #23
 80042c0:	e00f      	b.n	80042e2 <tinfl_decompress+0x1196>
 80042c2:	210a      	movs	r1, #10
 80042c4:	f44f 52b8 	mov.w	r2, #5888	; 0x1700
 80042c8:	fa29 f301 	lsr.w	r3, r9, r1
 80042cc:	43c0      	mvns	r0, r0
 80042ce:	3101      	adds	r1, #1
 80042d0:	f003 0301 	and.w	r3, r3, #1
 80042d4:	4418      	add	r0, r3
 80042d6:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80042d8:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 80042dc:	5e80      	ldrsh	r0, [r0, r2]
 80042de:	2800      	cmp	r0, #0
 80042e0:	dbf2      	blt.n	80042c8 <tinfl_decompress+0x117c>
 80042e2:	1a64      	subs	r4, r4, r1
 80042e4:	fa29 f901 	lsr.w	r9, r9, r1
 80042e8:	f64b 51b8 	movw	r1, #48568	; 0xbdb8
 80042ec:	f6c0 0100 	movt	r1, #2048	; 0x800
 80042f0:	f851 b020 	ldr.w	fp, [r1, r0, lsl #2]
 80042f4:	f64b 6138 	movw	r1, #48696	; 0xbe38
 80042f8:	f6c0 0100 	movt	r1, #2048	; 0x800
 80042fc:	f851 3020 	ldr.w	r3, [r1, r0, lsl #2]
 8004300:	3804      	subs	r0, #4
 8004302:	2819      	cmp	r0, #25
 8004304:	d803      	bhi.n	800430e <tinfl_decompress+0x11c2>
 8004306:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004308:	429c      	cmp	r4, r3
 800430a:	d219      	bcs.n	8004340 <tinfl_decompress+0x11f4>
 800430c:	e006      	b.n	800431c <tinfl_decompress+0x11d0>
 800430e:	46c8      	mov	r8, r9
 8004310:	e01f      	b.n	8004352 <tinfl_decompress+0x1206>
 8004312:	201a      	movs	r0, #26
 8004314:	e0bf      	b.n	8004496 <tinfl_decompress+0x134a>
 8004316:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800431a:	e7c4      	b.n	80042a6 <tinfl_decompress+0x115a>
 800431c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800431e:	4290      	cmp	r0, r2
 8004320:	d204      	bcs.n	800432c <tinfl_decompress+0x11e0>
 8004322:	9918      	ldr	r1, [sp, #96]	; 0x60
 8004324:	f811 0b01 	ldrb.w	r0, [r1], #1
 8004328:	9118      	str	r1, [sp, #96]	; 0x60
 800432a:	e003      	b.n	8004334 <tinfl_decompress+0x11e8>
 800432c:	6938      	ldr	r0, [r7, #16]
 800432e:	0780      	lsls	r0, r0, #30
 8004330:	d452      	bmi.n	80043d8 <tinfl_decompress+0x128c>
 8004332:	2000      	movs	r0, #0
 8004334:	40a0      	lsls	r0, r4
 8004336:	3408      	adds	r4, #8
 8004338:	ea49 0900 	orr.w	r9, r9, r0
 800433c:	429c      	cmp	r4, r3
 800433e:	d3ed      	bcc.n	800431c <tinfl_decompress+0x11d0>
 8004340:	2101      	movs	r1, #1
 8004342:	1ae4      	subs	r4, r4, r3
 8004344:	fa29 f803 	lsr.w	r8, r9, r3
 8004348:	4099      	lsls	r1, r3
 800434a:	3901      	subs	r1, #1
 800434c:	ea01 0109 	and.w	r1, r1, r9
 8004350:	448b      	add	fp, r1
 8004352:	980f      	ldr	r0, [sp, #60]	; 0x3c
 8004354:	2100      	movs	r1, #0
 8004356:	2800      	cmp	r0, #0
 8004358:	bf08      	it	eq
 800435a:	2101      	moveq	r1, #1
 800435c:	980e      	ldr	r0, [sp, #56]	; 0x38
 800435e:	9314      	str	r3, [sp, #80]	; 0x50
 8004360:	1a32      	subs	r2, r6, r0
 8004362:	455a      	cmp	r2, fp
 8004364:	9213      	str	r2, [sp, #76]	; 0x4c
 8004366:	d206      	bcs.n	8004376 <tinfl_decompress+0x122a>
 8004368:	b929      	cbnz	r1, 8004376 <tinfl_decompress+0x122a>
 800436a:	46c1      	mov	r9, r8
 800436c:	9616      	str	r6, [sp, #88]	; 0x58
 800436e:	2025      	movs	r0, #37	; 0x25
 8004370:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8004374:	e090      	b.n	8004498 <tinfl_decompress+0x134c>
 8004376:	9913      	ldr	r1, [sp, #76]	; 0x4c
 8004378:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 800437a:	eba1 010b 	sub.w	r1, r1, fp
 800437e:	4011      	ands	r1, r2
 8004380:	4401      	add	r1, r0
 8004382:	428e      	cmp	r6, r1
 8004384:	460a      	mov	r2, r1
 8004386:	bf88      	it	hi
 8004388:	4632      	movhi	r2, r6
 800438a:	9810      	ldr	r0, [sp, #64]	; 0x40
 800438c:	4452      	add	r2, sl
 800438e:	4282      	cmp	r2, r0
 8004390:	d904      	bls.n	800439c <tinfl_decompress+0x1250>
 8004392:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004394:	46c1      	mov	r9, r8
 8004396:	4650      	mov	r0, sl
 8004398:	9616      	str	r6, [sp, #88]	; 0x58
 800439a:	e021      	b.n	80043e0 <tinfl_decompress+0x1294>
 800439c:	3101      	adds	r1, #1
 800439e:	f811 2c01 	ldrb.w	r2, [r1, #-1]
 80043a2:	f1aa 0a03 	sub.w	sl, sl, #3
 80043a6:	f1ba 0f02 	cmp.w	sl, #2
 80043aa:	7032      	strb	r2, [r6, #0]
 80043ac:	780a      	ldrb	r2, [r1, #0]
 80043ae:	7072      	strb	r2, [r6, #1]
 80043b0:	784a      	ldrb	r2, [r1, #1]
 80043b2:	f101 0103 	add.w	r1, r1, #3
 80043b6:	70b2      	strb	r2, [r6, #2]
 80043b8:	f106 0603 	add.w	r6, r6, #3
 80043bc:	dcef      	bgt.n	800439e <tinfl_decompress+0x1252>
 80043be:	f1ba 0f01 	cmp.w	sl, #1
 80043c2:	db06      	blt.n	80043d2 <tinfl_decompress+0x1286>
 80043c4:	f811 2c01 	ldrb.w	r2, [r1, #-1]
 80043c8:	7032      	strb	r2, [r6, #0]
 80043ca:	bf1c      	itt	ne
 80043cc:	7809      	ldrbne	r1, [r1, #0]
 80043ce:	7071      	strbne	r1, [r6, #1]
 80043d0:	4456      	add	r6, sl
 80043d2:	9616      	str	r6, [sp, #88]	; 0x58
 80043d4:	46c1      	mov	r9, r8
 80043d6:	e4b8      	b.n	8003d4a <tinfl_decompress+0xbfe>
 80043d8:	9314      	str	r3, [sp, #80]	; 0x50
 80043da:	9616      	str	r6, [sp, #88]	; 0x58
 80043dc:	201b      	movs	r0, #27
 80043de:	e05a      	b.n	8004496 <tinfl_decompress+0x134a>
 80043e0:	f1a0 0a01 	sub.w	sl, r0, #1
 80043e4:	2800      	cmp	r0, #0
 80043e6:	f43f acb1 	beq.w	8003d4c <tinfl_decompress+0xc00>
 80043ea:	9916      	ldr	r1, [sp, #88]	; 0x58
 80043ec:	9810      	ldr	r0, [sp, #64]	; 0x40
 80043ee:	4281      	cmp	r1, r0
 80043f0:	d20d      	bcs.n	800440e <tinfl_decompress+0x12c2>
 80043f2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80043f4:	9e0d      	ldr	r6, [sp, #52]	; 0x34
 80043f6:	eba3 000b 	sub.w	r0, r3, fp
 80043fa:	3301      	adds	r3, #1
 80043fc:	4030      	ands	r0, r6
 80043fe:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 8004400:	5c30      	ldrb	r0, [r6, r0]
 8004402:	f801 0b01 	strb.w	r0, [r1], #1
 8004406:	9313      	str	r3, [sp, #76]	; 0x4c
 8004408:	4650      	mov	r0, sl
 800440a:	9116      	str	r1, [sp, #88]	; 0x58
 800440c:	e7e8      	b.n	80043e0 <tinfl_decompress+0x1294>
 800440e:	2035      	movs	r0, #53	; 0x35
 8004410:	2102      	movs	r1, #2
 8004412:	e041      	b.n	8004498 <tinfl_decompress+0x134c>
 8004414:	2c00      	cmp	r4, #0
 8004416:	d002      	beq.n	800441e <tinfl_decompress+0x12d2>
 8004418:	2c07      	cmp	r4, #7
 800441a:	d827      	bhi.n	800446c <tinfl_decompress+0x1320>
 800441c:	e010      	b.n	8004440 <tinfl_decompress+0x12f4>
 800441e:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004420:	9911      	ldr	r1, [sp, #68]	; 0x44
 8004422:	4288      	cmp	r0, r1
 8004424:	d203      	bcs.n	800442e <tinfl_decompress+0x12e2>
 8004426:	9918      	ldr	r1, [sp, #96]	; 0x60
 8004428:	2400      	movs	r4, #0
 800442a:	f7ff b892 	b.w	8003552 <tinfl_decompress+0x406>
 800442e:	2400      	movs	r4, #0
 8004430:	6938      	ldr	r0, [r7, #16]
 8004432:	9216      	str	r2, [sp, #88]	; 0x58
 8004434:	0780      	lsls	r0, r0, #30
 8004436:	d401      	bmi.n	800443c <tinfl_decompress+0x12f0>
 8004438:	2000      	movs	r0, #0
 800443a:	e01d      	b.n	8004478 <tinfl_decompress+0x132c>
 800443c:	202a      	movs	r0, #42	; 0x2a
 800443e:	e02a      	b.n	8004496 <tinfl_decompress+0x134a>
 8004440:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004442:	9911      	ldr	r1, [sp, #68]	; 0x44
 8004444:	4288      	cmp	r0, r1
 8004446:	d204      	bcs.n	8004452 <tinfl_decompress+0x1306>
 8004448:	9918      	ldr	r1, [sp, #96]	; 0x60
 800444a:	f811 0b01 	ldrb.w	r0, [r1], #1
 800444e:	9118      	str	r1, [sp, #96]	; 0x60
 8004450:	e003      	b.n	800445a <tinfl_decompress+0x130e>
 8004452:	6938      	ldr	r0, [r7, #16]
 8004454:	0780      	lsls	r0, r0, #30
 8004456:	d41c      	bmi.n	8004492 <tinfl_decompress+0x1346>
 8004458:	2000      	movs	r0, #0
 800445a:	4621      	mov	r1, r4
 800445c:	4088      	lsls	r0, r1
 800445e:	f101 0408 	add.w	r4, r1, #8
 8004462:	f111 0f09 	cmn.w	r1, #9
 8004466:	ea49 0900 	orr.w	r9, r9, r0
 800446a:	d8e9      	bhi.n	8004440 <tinfl_decompress+0x12f4>
 800446c:	ea4f 2119 	mov.w	r1, r9, lsr #8
 8004470:	fa5f f089 	uxtb.w	r0, r9
 8004474:	3c08      	subs	r4, #8
 8004476:	4689      	mov	r9, r1
 8004478:	9919      	ldr	r1, [sp, #100]	; 0x64
 800447a:	f10a 0a01 	add.w	sl, sl, #1
 800447e:	460b      	mov	r3, r1
 8004480:	6919      	ldr	r1, [r3, #16]
 8004482:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
 8004486:	6118      	str	r0, [r3, #16]
 8004488:	f1ba 0f03 	cmp.w	sl, #3
 800448c:	f63f aec3 	bhi.w	8004216 <tinfl_decompress+0x10ca>
 8004490:	e7c0      	b.n	8004414 <tinfl_decompress+0x12c8>
 8004492:	9216      	str	r2, [sp, #88]	; 0x58
 8004494:	2029      	movs	r0, #41	; 0x29
 8004496:	2101      	movs	r1, #1
 8004498:	9115      	str	r1, [sp, #84]	; 0x54
 800449a:	9919      	ldr	r1, [sp, #100]	; 0x64
 800449c:	6008      	str	r0, [r1, #0]
 800449e:	9819      	ldr	r0, [sp, #100]	; 0x64
 80044a0:	4601      	mov	r1, r0
 80044a2:	604c      	str	r4, [r1, #4]
 80044a4:	f8c1 9038 	str.w	r9, [r1, #56]	; 0x38
 80044a8:	e9c1 ba08 	strd	fp, sl, [r1, #32]
 80044ac:	9814      	ldr	r0, [sp, #80]	; 0x50
 80044ae:	6288      	str	r0, [r1, #40]	; 0x28
 80044b0:	9813      	ldr	r0, [sp, #76]	; 0x4c
 80044b2:	63c8      	str	r0, [r1, #60]	; 0x3c
 80044b4:	e9dd 1017 	ldrd	r1, r0, [sp, #92]	; 0x5c
 80044b8:	1a40      	subs	r0, r0, r1
 80044ba:	9912      	ldr	r1, [sp, #72]	; 0x48
 80044bc:	6008      	str	r0, [r1, #0]
 80044be:	9816      	ldr	r0, [sp, #88]	; 0x58
 80044c0:	eba0 0b0c 	sub.w	fp, r0, ip
 80044c4:	6938      	ldr	r0, [r7, #16]
 80044c6:	f8ce b000 	str.w	fp, [lr]
 80044ca:	f010 0f09 	tst.w	r0, #9
 80044ce:	f000 808e 	beq.w	80045ee <tinfl_decompress+0x14a2>
 80044d2:	9815      	ldr	r0, [sp, #84]	; 0x54
 80044d4:	2800      	cmp	r0, #0
 80044d6:	f6ff a838 	blt.w	800354a <tinfl_decompress+0x3fe>
 80044da:	9819      	ldr	r0, [sp, #100]	; 0x64
 80044dc:	f1bb 0f00 	cmp.w	fp, #0
 80044e0:	69c2      	ldr	r2, [r0, #28]
 80044e2:	ea4f 4112 	mov.w	r1, r2, lsr #16
 80044e6:	b295      	uxth	r5, r2
 80044e8:	d06e      	beq.n	80045c8 <tinfl_decompress+0x147c>
 80044ea:	f64a 12af 	movw	r2, #43439	; 0xa9af
 80044ee:	f248 0e71 	movw	lr, #32881	; 0x8071
 80044f2:	f64f 78f1 	movw	r8, #65521	; 0xfff1
 80044f6:	f6c5 626e 	movt	r2, #24174	; 0x5e6e
 80044fa:	f2c8 0e07 	movt	lr, #32775	; 0x8007
 80044fe:	fbab 2302 	umull	r2, r3, fp, r2
 8004502:	0ada      	lsrs	r2, r3, #11
 8004504:	f241 53b0 	movw	r3, #5552	; 0x15b0
 8004508:	fb02 b213 	mls	r2, r2, r3, fp
 800450c:	2a08      	cmp	r2, #8
 800450e:	d33d      	bcc.n	800458c <tinfl_decompress+0x1440>
 8004510:	f1a2 0308 	sub.w	r3, r2, #8
 8004514:	f10c 0008 	add.w	r0, ip, #8
 8004518:	2600      	movs	r6, #0
 800451a:	f023 0a07 	bic.w	sl, r3, #7
 800451e:	9018      	str	r0, [sp, #96]	; 0x60
 8004520:	f81c 4006 	ldrb.w	r4, [ip, r6]
 8004524:	46e0      	mov	r8, ip
 8004526:	442c      	add	r4, r5
 8004528:	eb0c 0506 	add.w	r5, ip, r6
 800452c:	786b      	ldrb	r3, [r5, #1]
 800452e:	f895 9002 	ldrb.w	r9, [r5, #2]
 8004532:	f895 c003 	ldrb.w	ip, [r5, #3]
 8004536:	f895 e004 	ldrb.w	lr, [r5, #4]
 800453a:	4421      	add	r1, r4
 800453c:	4423      	add	r3, r4
 800453e:	eb03 0009 	add.w	r0, r3, r9
 8004542:	4419      	add	r1, r3
 8004544:	796b      	ldrb	r3, [r5, #5]
 8004546:	4401      	add	r1, r0
 8004548:	4460      	add	r0, ip
 800454a:	46c4      	mov	ip, r8
 800454c:	4401      	add	r1, r0
 800454e:	4470      	add	r0, lr
 8004550:	4401      	add	r1, r0
 8004552:	4418      	add	r0, r3
 8004554:	79ab      	ldrb	r3, [r5, #6]
 8004556:	4401      	add	r1, r0
 8004558:	4418      	add	r0, r3
 800455a:	79eb      	ldrb	r3, [r5, #7]
 800455c:	4401      	add	r1, r0
 800455e:	18c5      	adds	r5, r0, r3
 8004560:	f106 030f 	add.w	r3, r6, #15
 8004564:	f106 0008 	add.w	r0, r6, #8
 8004568:	4429      	add	r1, r5
 800456a:	4293      	cmp	r3, r2
 800456c:	4606      	mov	r6, r0
 800456e:	d3d7      	bcc.n	8004520 <tinfl_decompress+0x13d4>
 8004570:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004572:	f248 0e71 	movw	lr, #32881	; 0x8071
 8004576:	f10a 0308 	add.w	r3, sl, #8
 800457a:	f64f 78f1 	movw	r8, #65521	; 0xfff1
 800457e:	f2c8 0e07 	movt	lr, #32775	; 0x8007
 8004582:	eb00 0c0a 	add.w	ip, r0, sl
 8004586:	429a      	cmp	r2, r3
 8004588:	d803      	bhi.n	8004592 <tinfl_decompress+0x1446>
 800458a:	e00c      	b.n	80045a6 <tinfl_decompress+0x145a>
 800458c:	2300      	movs	r3, #0
 800458e:	429a      	cmp	r2, r3
 8004590:	d909      	bls.n	80045a6 <tinfl_decompress+0x145a>
 8004592:	1ad3      	subs	r3, r2, r3
 8004594:	4666      	mov	r6, ip
 8004596:	461c      	mov	r4, r3
 8004598:	f816 0b01 	ldrb.w	r0, [r6], #1
 800459c:	3c01      	subs	r4, #1
 800459e:	4405      	add	r5, r0
 80045a0:	4429      	add	r1, r5
 80045a2:	d1f9      	bne.n	8004598 <tinfl_decompress+0x144c>
 80045a4:	449c      	add	ip, r3
 80045a6:	fba1 030e 	umull	r0, r3, r1, lr
 80045aa:	ebbb 0b02 	subs.w	fp, fp, r2
 80045ae:	f241 52b0 	movw	r2, #5552	; 0x15b0
 80045b2:	ea4f 30d3 	mov.w	r0, r3, lsr #15
 80045b6:	fb00 1118 	mls	r1, r0, r8, r1
 80045ba:	fba5 030e 	umull	r0, r3, r5, lr
 80045be:	ea4f 30d3 	mov.w	r0, r3, lsr #15
 80045c2:	fb00 5518 	mls	r5, r0, r8, r5
 80045c6:	d1a1      	bne.n	800450c <tinfl_decompress+0x13c0>
 80045c8:	6938      	ldr	r0, [r7, #16]
 80045ca:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80045cc:	ea45 4101 	orr.w	r1, r5, r1, lsl #16
 80045d0:	07c0      	lsls	r0, r0, #31
 80045d2:	61d1      	str	r1, [r2, #28]
 80045d4:	d00b      	beq.n	80045ee <tinfl_decompress+0x14a2>
 80045d6:	9815      	ldr	r0, [sp, #84]	; 0x54
 80045d8:	2800      	cmp	r0, #0
 80045da:	f47e afb6 	bne.w	800354a <tinfl_decompress+0x3fe>
 80045de:	6912      	ldr	r2, [r2, #16]
 80045e0:	f06f 0001 	mvn.w	r0, #1
 80045e4:	4291      	cmp	r1, r2
 80045e6:	bf08      	it	eq
 80045e8:	2000      	moveq	r0, #0
 80045ea:	f7fe bfae 	b.w	800354a <tinfl_decompress+0x3fe>
 80045ee:	9815      	ldr	r0, [sp, #84]	; 0x54
 80045f0:	f7fe bfab 	b.w	800354a <tinfl_decompress+0x3fe>

080045f4 <mz_uncompress>:
 80045f4:	b5b0      	push	{r4, r5, r7, lr}
 80045f6:	af02      	add	r7, sp, #8
 80045f8:	b08e      	sub	sp, #56	; 0x38
 80045fa:	2500      	movs	r5, #0
 80045fc:	460c      	mov	r4, r1
 80045fe:	e9cd 5509 	strd	r5, r5, [sp, #36]	; 0x24
 8004602:	e9cd 5507 	strd	r5, r5, [sp, #28]
 8004606:	e9cd 2300 	strd	r2, r3, [sp]
 800460a:	9003      	str	r0, [sp, #12]
 800460c:	6820      	ldr	r0, [r4, #0]
 800460e:	e9cd 550b 	strd	r5, r5, [sp, #44]	; 0x2c
 8004612:	9506      	str	r5, [sp, #24]
 8004614:	9502      	str	r5, [sp, #8]
 8004616:	e9cd 0504 	strd	r0, r5, [sp, #16]
 800461a:	f242 3001 	movw	r0, #8961	; 0x2301
 800461e:	950d      	str	r5, [sp, #52]	; 0x34
 8004620:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004624:	9008      	str	r0, [sp, #32]
 8004626:	f242 3009 	movw	r0, #8969	; 0x2309
 800462a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800462e:	9009      	str	r0, [sp, #36]	; 0x24
 8004630:	f64a 3008 	movw	r0, #43784	; 0xab08
 8004634:	f001 fd42 	bl	80060bc <malloc>
 8004638:	b330      	cbz	r0, 8004688 <mz_uncompress+0x94>
 800463a:	f642 21f0 	movw	r1, #10992	; 0x2af0
 800463e:	6005      	str	r5, [r0, #0]
 8004640:	2201      	movs	r2, #1
 8004642:	9007      	str	r0, [sp, #28]
 8004644:	5045      	str	r5, [r0, r1]
 8004646:	f642 21f4 	movw	r1, #10996	; 0x2af4
 800464a:	5045      	str	r5, [r0, r1]
 800464c:	f64a 3104 	movw	r1, #43780	; 0xab04
 8004650:	5042      	str	r2, [r0, r1]
 8004652:	f642 21f8 	movw	r1, #11000	; 0x2af8
 8004656:	5042      	str	r2, [r0, r1]
 8004658:	f642 21fc 	movw	r1, #11004	; 0x2afc
 800465c:	220f      	movs	r2, #15
 800465e:	5045      	str	r5, [r0, r1]
 8004660:	f44f 512c 	mov.w	r1, #11008	; 0x2b00
 8004664:	5042      	str	r2, [r0, r1]
 8004666:	4668      	mov	r0, sp
 8004668:	2104      	movs	r1, #4
 800466a:	f7fe fc1a 	bl	8002ea2 <mz_inflate>
 800466e:	4605      	mov	r5, r0
 8004670:	2d01      	cmp	r5, #1
 8004672:	d10c      	bne.n	800468e <mz_uncompress+0x9a>
 8004674:	9805      	ldr	r0, [sp, #20]
 8004676:	6020      	str	r0, [r4, #0]
 8004678:	2400      	movs	r4, #0
 800467a:	9907      	ldr	r1, [sp, #28]
 800467c:	b1b9      	cbz	r1, 80046ae <mz_uncompress+0xba>
 800467e:	e9dd 2009 	ldrd	r2, r0, [sp, #36]	; 0x24
 8004682:	4790      	blx	r2
 8004684:	9407      	str	r4, [sp, #28]
 8004686:	e012      	b.n	80046ae <mz_uncompress+0xba>
 8004688:	f06f 0403 	mvn.w	r4, #3
 800468c:	e00f      	b.n	80046ae <mz_uncompress+0xba>
 800468e:	9907      	ldr	r1, [sp, #28]
 8004690:	b121      	cbz	r1, 800469c <mz_uncompress+0xa8>
 8004692:	e9dd 2009 	ldrd	r2, r0, [sp, #36]	; 0x24
 8004696:	4790      	blx	r2
 8004698:	2000      	movs	r0, #0
 800469a:	9007      	str	r0, [sp, #28]
 800469c:	9801      	ldr	r0, [sp, #4]
 800469e:	462c      	mov	r4, r5
 80046a0:	2800      	cmp	r0, #0
 80046a2:	bf08      	it	eq
 80046a4:	f06f 0402 	mvneq.w	r4, #2
 80046a8:	1d68      	adds	r0, r5, #5
 80046aa:	bf18      	it	ne
 80046ac:	462c      	movne	r4, r5
 80046ae:	4620      	mov	r0, r4
 80046b0:	b00e      	add	sp, #56	; 0x38
 80046b2:	bdb0      	pop	{r4, r5, r7, pc}

080046b4 <tdefl_flush_block>:
 80046b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80046b6:	af03      	add	r7, sp, #12
 80046b8:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80046bc:	b081      	sub	sp, #4
 80046be:	4604      	mov	r4, r0
 80046c0:	4689      	mov	r9, r1
 80046c2:	7aa0      	ldrb	r0, [r4, #10]
 80046c4:	0700      	lsls	r0, r0, #28
 80046c6:	f04f 0000 	mov.w	r0, #0
 80046ca:	d506      	bpl.n	80046da <tdefl_flush_block+0x26>
 80046cc:	69e1      	ldr	r1, [r4, #28]
 80046ce:	6c23      	ldr	r3, [r4, #64]	; 0x40
 80046d0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80046d2:	1ac9      	subs	r1, r1, r3
 80046d4:	4291      	cmp	r1, r2
 80046d6:	bf98      	it	ls
 80046d8:	2001      	movls	r0, #1
 80046da:	6822      	ldr	r2, [r4, #0]
 80046dc:	f644 41bc 	movw	r1, #19644	; 0x4cbc
 80046e0:	f2c0 0101 	movt	r1, #1
 80046e4:	b962      	cbnz	r2, 8004700 <tdefl_flush_block+0x4c>
 80046e6:	6fe3      	ldr	r3, [r4, #124]	; 0x7c
 80046e8:	f8d4 208c 	ldr.w	r2, [r4, #140]	; 0x8c
 80046ec:	f101 060f 	add.w	r6, r1, #15
 80046f0:	681b      	ldr	r3, [r3, #0]
 80046f2:	1a9b      	subs	r3, r3, r2
 80046f4:	42b3      	cmp	r3, r6
 80046f6:	d903      	bls.n	8004700 <tdefl_flush_block+0x4c>
 80046f8:	6f63      	ldr	r3, [r4, #116]	; 0x74
 80046fa:	eb03 0802 	add.w	r8, r3, r2
 80046fe:	e005      	b.n	800470c <tdefl_flush_block+0x58>
 8004700:	f249 2272 	movw	r2, #37490	; 0x9272
 8004704:	f2c0 0203 	movt	r2, #3
 8004708:	eb04 0802 	add.w	r8, r4, r2
 800470c:	4441      	add	r1, r8
 800470e:	e9c4 810c 	strd	r8, r1, [r4, #48]	; 0x30
 8004712:	6de1      	ldr	r1, [r4, #92]	; 0x5c
 8004714:	2900      	cmp	r1, #0
 8004716:	f040 8282 	bne.w	8004c1e <tdefl_flush_block+0x56a>
 800471a:	2100      	movs	r1, #0
 800471c:	e9c4 1116 	strd	r1, r1, [r4, #88]	; 0x58
 8004720:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 8004722:	6ba3      	ldr	r3, [r4, #56]	; 0x38
 8004724:	7816      	ldrb	r6, [r2, #0]
 8004726:	fa26 f303 	lsr.w	r3, r6, r3
 800472a:	7013      	strb	r3, [r2, #0]
 800472c:	6ba3      	ldr	r3, [r4, #56]	; 0x38
 800472e:	6aa2      	ldr	r2, [r4, #40]	; 0x28
 8004730:	2b08      	cmp	r3, #8
 8004732:	bf08      	it	eq
 8004734:	3a01      	subeq	r2, #1
 8004736:	62a2      	str	r2, [r4, #40]	; 0x28
 8004738:	7a62      	ldrb	r2, [r4, #9]
 800473a:	06d2      	lsls	r2, r2, #27
 800473c:	d542      	bpl.n	80047c4 <tdefl_flush_block+0x110>
 800473e:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8004740:	2a00      	cmp	r2, #0
 8004742:	d13f      	bne.n	80047c4 <tdefl_flush_block+0x110>
 8004744:	e9d4 2311 	ldrd	r2, r3, [r4, #68]	; 0x44
 8004748:	2678      	movs	r6, #120	; 0x78
 800474a:	4096      	lsls	r6, r2
 800474c:	f112 0f09 	cmn.w	r2, #9
 8004750:	ea43 0306 	orr.w	r3, r3, r6
 8004754:	f102 0608 	add.w	r6, r2, #8
 8004758:	e9c4 6311 	strd	r6, r3, [r4, #68]	; 0x44
 800475c:	d818      	bhi.n	8004790 <tdefl_flush_block+0xdc>
 800475e:	e9d4 250c 	ldrd	r2, r5, [r4, #48]	; 0x30
 8004762:	42aa      	cmp	r2, r5
 8004764:	d205      	bcs.n	8004772 <tdefl_flush_block+0xbe>
 8004766:	1c56      	adds	r6, r2, #1
 8004768:	6326      	str	r6, [r4, #48]	; 0x30
 800476a:	7013      	strb	r3, [r2, #0]
 800476c:	e9d4 2311 	ldrd	r2, r3, [r4, #68]	; 0x44
 8004770:	e000      	b.n	8004774 <tdefl_flush_block+0xc0>
 8004772:	4632      	mov	r2, r6
 8004774:	f1a2 0608 	sub.w	r6, r2, #8
 8004778:	0a1b      	lsrs	r3, r3, #8
 800477a:	2e07      	cmp	r6, #7
 800477c:	e9c4 6311 	strd	r6, r3, [r4, #68]	; 0x44
 8004780:	d8ed      	bhi.n	800475e <tdefl_flush_block+0xaa>
 8004782:	2501      	movs	r5, #1
 8004784:	fa05 f606 	lsl.w	r6, r5, r6
 8004788:	4333      	orrs	r3, r6
 800478a:	e9c4 2311 	strd	r2, r3, [r4, #68]	; 0x44
 800478e:	e00a      	b.n	80047a6 <tdefl_flush_block+0xf2>
 8004790:	2501      	movs	r5, #1
 8004792:	3210      	adds	r2, #16
 8004794:	f116 0f09 	cmn.w	r6, #9
 8004798:	fa05 f506 	lsl.w	r5, r5, r6
 800479c:	ea43 0305 	orr.w	r3, r3, r5
 80047a0:	e9c4 2311 	strd	r2, r3, [r4, #68]	; 0x44
 80047a4:	d80e      	bhi.n	80047c4 <tdefl_flush_block+0x110>
 80047a6:	e9d4 650c 	ldrd	r6, r5, [r4, #48]	; 0x30
 80047aa:	42ae      	cmp	r6, r5
 80047ac:	bf3f      	itttt	cc
 80047ae:	1c72      	addcc	r2, r6, #1
 80047b0:	6322      	strcc	r2, [r4, #48]	; 0x30
 80047b2:	7033      	strbcc	r3, [r6, #0]
 80047b4:	e9d4 2311 	ldrdcc	r2, r3, [r4, #68]	; 0x44
 80047b8:	3a08      	subs	r2, #8
 80047ba:	0a1b      	lsrs	r3, r3, #8
 80047bc:	2a07      	cmp	r2, #7
 80047be:	e9c4 2311 	strd	r2, r3, [r4, #68]	; 0x44
 80047c2:	d8f0      	bhi.n	80047a6 <tdefl_flush_block+0xf2>
 80047c4:	f1b9 0f04 	cmp.w	r9, #4
 80047c8:	bf08      	it	eq
 80047ca:	2101      	moveq	r1, #1
 80047cc:	e9d4 2311 	ldrd	r2, r3, [r4, #68]	; 0x44
 80047d0:	4091      	lsls	r1, r2
 80047d2:	1c55      	adds	r5, r2, #1
 80047d4:	ea43 0601 	orr.w	r6, r3, r1
 80047d8:	2d08      	cmp	r5, #8
 80047da:	e9c4 5611 	strd	r5, r6, [r4, #68]	; 0x44
 80047de:	f8d4 a030 	ldr.w	sl, [r4, #48]	; 0x30
 80047e2:	d311      	bcc.n	8004808 <tdefl_flush_block+0x154>
 80047e4:	6b61      	ldr	r1, [r4, #52]	; 0x34
 80047e6:	458a      	cmp	sl, r1
 80047e8:	d208      	bcs.n	80047fc <tdefl_flush_block+0x148>
 80047ea:	f10a 0101 	add.w	r1, sl, #1
 80047ee:	6321      	str	r1, [r4, #48]	; 0x30
 80047f0:	f88a 6000 	strb.w	r6, [sl]
 80047f4:	f8d4 a030 	ldr.w	sl, [r4, #48]	; 0x30
 80047f8:	e9d4 5611 	ldrd	r5, r6, [r4, #68]	; 0x44
 80047fc:	3d08      	subs	r5, #8
 80047fe:	0a36      	lsrs	r6, r6, #8
 8004800:	2d07      	cmp	r5, #7
 8004802:	e9c4 5611 	strd	r5, r6, [r4, #68]	; 0x44
 8004806:	d8ed      	bhi.n	80047e4 <tdefl_flush_block+0x130>
 8004808:	b108      	cbz	r0, 800480e <tdefl_flush_block+0x15a>
 800480a:	2000      	movs	r0, #0
 800480c:	e01c      	b.n	8004848 <tdefl_flush_block+0x194>
 800480e:	7aa0      	ldrb	r0, [r4, #10]
 8004810:	0740      	lsls	r0, r0, #29
 8004812:	d40a      	bmi.n	800482a <tdefl_flush_block+0x176>
 8004814:	46a3      	mov	fp, r4
 8004816:	2100      	movs	r1, #0
 8004818:	f85b 0f3c 	ldr.w	r0, [fp, #60]!
 800481c:	2830      	cmp	r0, #48	; 0x30
 800481e:	4620      	mov	r0, r4
 8004820:	bf38      	it	cc
 8004822:	2101      	movcc	r1, #1
 8004824:	f000 fa1b 	bl	8004c5e <tdefl_compress_block>
 8004828:	e005      	b.n	8004836 <tdefl_flush_block+0x182>
 800482a:	4620      	mov	r0, r4
 800482c:	2101      	movs	r1, #1
 800482e:	f000 fa16 	bl	8004c5e <tdefl_compress_block>
 8004832:	f104 0b3c 	add.w	fp, r4, #60	; 0x3c
 8004836:	f8db 1000 	ldr.w	r1, [fp]
 800483a:	b159      	cbz	r1, 8004854 <tdefl_flush_block+0x1a0>
 800483c:	6b22      	ldr	r2, [r4, #48]	; 0x30
 800483e:	f1ca 0301 	rsb	r3, sl, #1
 8004842:	441a      	add	r2, r3
 8004844:	428a      	cmp	r2, r1
 8004846:	d305      	bcc.n	8004854 <tdefl_flush_block+0x1a0>
 8004848:	69e1      	ldr	r1, [r4, #28]
 800484a:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800484c:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800484e:	1ac9      	subs	r1, r1, r3
 8004850:	4291      	cmp	r1, r2
 8004852:	d90f      	bls.n	8004874 <tdefl_flush_block+0x1c0>
 8004854:	2800      	cmp	r0, #0
 8004856:	f040 809b 	bne.w	8004990 <tdefl_flush_block+0x2dc>
 800485a:	4620      	mov	r0, r4
 800485c:	2101      	movs	r1, #1
 800485e:	f8c4 a030 	str.w	sl, [r4, #48]	; 0x30
 8004862:	e9c4 5611 	strd	r5, r6, [r4, #68]	; 0x44
 8004866:	f000 f9fa 	bl	8004c5e <tdefl_compress_block>
 800486a:	f1b9 0f00 	cmp.w	r9, #0
 800486e:	f040 8093 	bne.w	8004998 <tdefl_flush_block+0x2e4>
 8004872:	e173      	b.n	8004b5c <tdefl_flush_block+0x4a8>
 8004874:	1ca8      	adds	r0, r5, #2
 8004876:	f8c4 a030 	str.w	sl, [r4, #48]	; 0x30
 800487a:	2808      	cmp	r0, #8
 800487c:	e9c4 0611 	strd	r0, r6, [r4, #68]	; 0x44
 8004880:	d202      	bcs.n	8004888 <tdefl_flush_block+0x1d4>
 8004882:	e011      	b.n	80048a8 <tdefl_flush_block+0x1f4>
 8004884:	f8d4 a030 	ldr.w	sl, [r4, #48]	; 0x30
 8004888:	6b61      	ldr	r1, [r4, #52]	; 0x34
 800488a:	458a      	cmp	sl, r1
 800488c:	bf3f      	itttt	cc
 800488e:	f10a 0001 	addcc.w	r0, sl, #1
 8004892:	6320      	strcc	r0, [r4, #48]	; 0x30
 8004894:	f88a 6000 	strbcc.w	r6, [sl]
 8004898:	e9d4 0611 	ldrdcc	r0, r6, [r4, #68]	; 0x44
 800489c:	3808      	subs	r0, #8
 800489e:	0a36      	lsrs	r6, r6, #8
 80048a0:	2808      	cmp	r0, #8
 80048a2:	e9c4 0611 	strd	r0, r6, [r4, #68]	; 0x44
 80048a6:	d2ed      	bcs.n	8004884 <tdefl_flush_block+0x1d0>
 80048a8:	b188      	cbz	r0, 80048ce <tdefl_flush_block+0x21a>
 80048aa:	2108      	movs	r1, #8
 80048ac:	6461      	str	r1, [r4, #68]	; 0x44
 80048ae:	e9d4 020c 	ldrd	r0, r2, [r4, #48]	; 0x30
 80048b2:	4290      	cmp	r0, r2
 80048b4:	bf3f      	itttt	cc
 80048b6:	1c41      	addcc	r1, r0, #1
 80048b8:	6321      	strcc	r1, [r4, #48]	; 0x30
 80048ba:	7006      	strbcc	r6, [r0, #0]
 80048bc:	e9d4 1611 	ldrdcc	r1, r6, [r4, #68]	; 0x44
 80048c0:	3908      	subs	r1, #8
 80048c2:	0a36      	lsrs	r6, r6, #8
 80048c4:	2907      	cmp	r1, #7
 80048c6:	e9c4 1611 	strd	r1, r6, [r4, #68]	; 0x44
 80048ca:	d8f0      	bhi.n	80048ae <tdefl_flush_block+0x1fa>
 80048cc:	e000      	b.n	80048d0 <tdefl_flush_block+0x21c>
 80048ce:	2100      	movs	r1, #0
 80048d0:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80048d2:	b298      	uxth	r0, r3
 80048d4:	4088      	lsls	r0, r1
 80048d6:	3110      	adds	r1, #16
 80048d8:	4330      	orrs	r0, r6
 80048da:	2908      	cmp	r1, #8
 80048dc:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 80048e0:	d30f      	bcc.n	8004902 <tdefl_flush_block+0x24e>
 80048e2:	e9d4 230c 	ldrd	r2, r3, [r4, #48]	; 0x30
 80048e6:	429a      	cmp	r2, r3
 80048e8:	bf3f      	itttt	cc
 80048ea:	1c51      	addcc	r1, r2, #1
 80048ec:	6321      	strcc	r1, [r4, #48]	; 0x30
 80048ee:	7010      	strbcc	r0, [r2, #0]
 80048f0:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 80048f4:	3908      	subs	r1, #8
 80048f6:	0a00      	lsrs	r0, r0, #8
 80048f8:	2907      	cmp	r1, #7
 80048fa:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 80048fe:	d8f0      	bhi.n	80048e2 <tdefl_flush_block+0x22e>
 8004900:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004902:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8004906:	4053      	eors	r3, r2
 8004908:	b29e      	uxth	r6, r3
 800490a:	63e3      	str	r3, [r4, #60]	; 0x3c
 800490c:	408e      	lsls	r6, r1
 800490e:	4330      	orrs	r0, r6
 8004910:	f101 0610 	add.w	r6, r1, #16
 8004914:	2e08      	cmp	r6, #8
 8004916:	e9c4 6011 	strd	r6, r0, [r4, #68]	; 0x44
 800491a:	d30f      	bcc.n	800493c <tdefl_flush_block+0x288>
 800491c:	e9d4 130c 	ldrd	r1, r3, [r4, #48]	; 0x30
 8004920:	4299      	cmp	r1, r3
 8004922:	bf3f      	itttt	cc
 8004924:	1c4b      	addcc	r3, r1, #1
 8004926:	6323      	strcc	r3, [r4, #48]	; 0x30
 8004928:	7008      	strbcc	r0, [r1, #0]
 800492a:	e9d4 6011 	ldrdcc	r6, r0, [r4, #68]	; 0x44
 800492e:	3e08      	subs	r6, #8
 8004930:	0a00      	lsrs	r0, r0, #8
 8004932:	2e07      	cmp	r6, #7
 8004934:	e9c4 6011 	strd	r6, r0, [r4, #68]	; 0x44
 8004938:	d8f0      	bhi.n	800491c <tdefl_flush_block+0x268>
 800493a:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 800493c:	4053      	eors	r3, r2
 800493e:	63e3      	str	r3, [r4, #60]	; 0x3c
 8004940:	d026      	beq.n	8004990 <tdefl_flush_block+0x2dc>
 8004942:	2200      	movs	r2, #0
 8004944:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8004946:	f116 0f09 	cmn.w	r6, #9
 800494a:	4411      	add	r1, r2
 800494c:	f36f 31df 	bfc	r1, #15, #17
 8004950:	4421      	add	r1, r4
 8004952:	f891 1090 	ldrb.w	r1, [r1, #144]	; 0x90
 8004956:	fa01 f106 	lsl.w	r1, r1, r6
 800495a:	ea40 0001 	orr.w	r0, r0, r1
 800495e:	f106 0108 	add.w	r1, r6, #8
 8004962:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8004966:	d80f      	bhi.n	8004988 <tdefl_flush_block+0x2d4>
 8004968:	e9d4 360c 	ldrd	r3, r6, [r4, #48]	; 0x30
 800496c:	42b3      	cmp	r3, r6
 800496e:	bf3f      	itttt	cc
 8004970:	1c59      	addcc	r1, r3, #1
 8004972:	6321      	strcc	r1, [r4, #48]	; 0x30
 8004974:	7018      	strbcc	r0, [r3, #0]
 8004976:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 800497a:	3908      	subs	r1, #8
 800497c:	0a00      	lsrs	r0, r0, #8
 800497e:	2907      	cmp	r1, #7
 8004980:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8004984:	d8f0      	bhi.n	8004968 <tdefl_flush_block+0x2b4>
 8004986:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004988:	3201      	adds	r2, #1
 800498a:	460e      	mov	r6, r1
 800498c:	429a      	cmp	r2, r3
 800498e:	d3d9      	bcc.n	8004944 <tdefl_flush_block+0x290>
 8004990:	f1b9 0f00 	cmp.w	r9, #0
 8004994:	f000 80e2 	beq.w	8004b5c <tdefl_flush_block+0x4a8>
 8004998:	6c60      	ldr	r0, [r4, #68]	; 0x44
 800499a:	f1b9 0f04 	cmp.w	r9, #4
 800499e:	d115      	bne.n	80049cc <tdefl_flush_block+0x318>
 80049a0:	2800      	cmp	r0, #0
 80049a2:	d042      	beq.n	8004a2a <tdefl_flush_block+0x376>
 80049a4:	2108      	movs	r1, #8
 80049a6:	6461      	str	r1, [r4, #68]	; 0x44
 80049a8:	e9d4 020c 	ldrd	r0, r2, [r4, #48]	; 0x30
 80049ac:	4290      	cmp	r0, r2
 80049ae:	d204      	bcs.n	80049ba <tdefl_flush_block+0x306>
 80049b0:	6ca1      	ldr	r1, [r4, #72]	; 0x48
 80049b2:	1c42      	adds	r2, r0, #1
 80049b4:	6322      	str	r2, [r4, #48]	; 0x30
 80049b6:	7001      	strb	r1, [r0, #0]
 80049b8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80049ba:	6ca0      	ldr	r0, [r4, #72]	; 0x48
 80049bc:	3908      	subs	r1, #8
 80049be:	2907      	cmp	r1, #7
 80049c0:	ea4f 2010 	mov.w	r0, r0, lsr #8
 80049c4:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 80049c8:	d8ee      	bhi.n	80049a8 <tdefl_flush_block+0x2f4>
 80049ca:	e02f      	b.n	8004a2c <tdefl_flush_block+0x378>
 80049cc:	3003      	adds	r0, #3
 80049ce:	2808      	cmp	r0, #8
 80049d0:	6460      	str	r0, [r4, #68]	; 0x44
 80049d2:	d310      	bcc.n	80049f6 <tdefl_flush_block+0x342>
 80049d4:	e9d4 120c 	ldrd	r1, r2, [r4, #48]	; 0x30
 80049d8:	4291      	cmp	r1, r2
 80049da:	d204      	bcs.n	80049e6 <tdefl_flush_block+0x332>
 80049dc:	6ca0      	ldr	r0, [r4, #72]	; 0x48
 80049de:	1c4a      	adds	r2, r1, #1
 80049e0:	6322      	str	r2, [r4, #48]	; 0x30
 80049e2:	7008      	strb	r0, [r1, #0]
 80049e4:	6c60      	ldr	r0, [r4, #68]	; 0x44
 80049e6:	6ca1      	ldr	r1, [r4, #72]	; 0x48
 80049e8:	3808      	subs	r0, #8
 80049ea:	2807      	cmp	r0, #7
 80049ec:	ea4f 2111 	mov.w	r1, r1, lsr #8
 80049f0:	e9c4 0111 	strd	r0, r1, [r4, #68]	; 0x44
 80049f4:	d8ee      	bhi.n	80049d4 <tdefl_flush_block+0x320>
 80049f6:	2800      	cmp	r0, #0
 80049f8:	d07e      	beq.n	8004af8 <tdefl_flush_block+0x444>
 80049fa:	2108      	movs	r1, #8
 80049fc:	6461      	str	r1, [r4, #68]	; 0x44
 80049fe:	e9d4 020c 	ldrd	r0, r2, [r4, #48]	; 0x30
 8004a02:	4290      	cmp	r0, r2
 8004a04:	d204      	bcs.n	8004a10 <tdefl_flush_block+0x35c>
 8004a06:	6ca1      	ldr	r1, [r4, #72]	; 0x48
 8004a08:	1c42      	adds	r2, r0, #1
 8004a0a:	6322      	str	r2, [r4, #48]	; 0x30
 8004a0c:	7001      	strb	r1, [r0, #0]
 8004a0e:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8004a10:	6ca0      	ldr	r0, [r4, #72]	; 0x48
 8004a12:	460a      	mov	r2, r1
 8004a14:	f1a2 0108 	sub.w	r1, r2, #8
 8004a18:	2907      	cmp	r1, #7
 8004a1a:	ea4f 2010 	mov.w	r0, r0, lsr #8
 8004a1e:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8004a22:	d8ec      	bhi.n	80049fe <tdefl_flush_block+0x34a>
 8004a24:	f102 0108 	add.w	r1, r2, #8
 8004a28:	e068      	b.n	8004afc <tdefl_flush_block+0x448>
 8004a2a:	2100      	movs	r1, #0
 8004a2c:	7a60      	ldrb	r0, [r4, #9]
 8004a2e:	06c0      	lsls	r0, r0, #27
 8004a30:	f140 8094 	bpl.w	8004b5c <tdefl_flush_block+0x4a8>
 8004a34:	69a0      	ldr	r0, [r4, #24]
 8004a36:	6ca2      	ldr	r2, [r4, #72]	; 0x48
 8004a38:	0e03      	lsrs	r3, r0, #24
 8004a3a:	408b      	lsls	r3, r1
 8004a3c:	3108      	adds	r1, #8
 8004a3e:	4313      	orrs	r3, r2
 8004a40:	e9c4 1311 	strd	r1, r3, [r4, #68]	; 0x44
 8004a44:	e9d4 260c 	ldrd	r2, r6, [r4, #48]	; 0x30
 8004a48:	42b2      	cmp	r2, r6
 8004a4a:	d205      	bcs.n	8004a58 <tdefl_flush_block+0x3a4>
 8004a4c:	1c51      	adds	r1, r2, #1
 8004a4e:	6321      	str	r1, [r4, #48]	; 0x30
 8004a50:	7013      	strb	r3, [r2, #0]
 8004a52:	e9d4 2311 	ldrd	r2, r3, [r4, #68]	; 0x44
 8004a56:	e000      	b.n	8004a5a <tdefl_flush_block+0x3a6>
 8004a58:	460a      	mov	r2, r1
 8004a5a:	f1a2 0108 	sub.w	r1, r2, #8
 8004a5e:	0a1b      	lsrs	r3, r3, #8
 8004a60:	2907      	cmp	r1, #7
 8004a62:	e9c4 1311 	strd	r1, r3, [r4, #68]	; 0x44
 8004a66:	d8ed      	bhi.n	8004a44 <tdefl_flush_block+0x390>
 8004a68:	f3c0 4607 	ubfx	r6, r0, #16, #8
 8004a6c:	fa06 f101 	lsl.w	r1, r6, r1
 8004a70:	ea43 0601 	orr.w	r6, r3, r1
 8004a74:	b2c1      	uxtb	r1, r0
 8004a76:	e9c4 2611 	strd	r2, r6, [r4, #68]	; 0x44
 8004a7a:	e9d4 350c 	ldrd	r3, r5, [r4, #48]	; 0x30
 8004a7e:	42ab      	cmp	r3, r5
 8004a80:	d205      	bcs.n	8004a8e <tdefl_flush_block+0x3da>
 8004a82:	1c5a      	adds	r2, r3, #1
 8004a84:	6322      	str	r2, [r4, #48]	; 0x30
 8004a86:	701e      	strb	r6, [r3, #0]
 8004a88:	e9d4 3611 	ldrd	r3, r6, [r4, #68]	; 0x44
 8004a8c:	e000      	b.n	8004a90 <tdefl_flush_block+0x3dc>
 8004a8e:	4613      	mov	r3, r2
 8004a90:	f1a3 0208 	sub.w	r2, r3, #8
 8004a94:	0a36      	lsrs	r6, r6, #8
 8004a96:	2a07      	cmp	r2, #7
 8004a98:	e9c4 2611 	strd	r2, r6, [r4, #68]	; 0x44
 8004a9c:	d8ed      	bhi.n	8004a7a <tdefl_flush_block+0x3c6>
 8004a9e:	f3c0 2007 	ubfx	r0, r0, #8, #8
 8004aa2:	4090      	lsls	r0, r2
 8004aa4:	ea46 0200 	orr.w	r2, r6, r0
 8004aa8:	e9c4 3211 	strd	r3, r2, [r4, #68]	; 0x44
 8004aac:	e9d4 060c 	ldrd	r0, r6, [r4, #48]	; 0x30
 8004ab0:	42b0      	cmp	r0, r6
 8004ab2:	d205      	bcs.n	8004ac0 <tdefl_flush_block+0x40c>
 8004ab4:	1c43      	adds	r3, r0, #1
 8004ab6:	6323      	str	r3, [r4, #48]	; 0x30
 8004ab8:	7002      	strb	r2, [r0, #0]
 8004aba:	e9d4 0211 	ldrd	r0, r2, [r4, #68]	; 0x44
 8004abe:	e000      	b.n	8004ac2 <tdefl_flush_block+0x40e>
 8004ac0:	4618      	mov	r0, r3
 8004ac2:	f1a0 0308 	sub.w	r3, r0, #8
 8004ac6:	0a12      	lsrs	r2, r2, #8
 8004ac8:	2b07      	cmp	r3, #7
 8004aca:	e9c4 3211 	strd	r3, r2, [r4, #68]	; 0x44
 8004ace:	d8ed      	bhi.n	8004aac <tdefl_flush_block+0x3f8>
 8004ad0:	4099      	lsls	r1, r3
 8004ad2:	4311      	orrs	r1, r2
 8004ad4:	e9c4 0111 	strd	r0, r1, [r4, #68]	; 0x44
 8004ad8:	e9d4 230c 	ldrd	r2, r3, [r4, #48]	; 0x30
 8004adc:	429a      	cmp	r2, r3
 8004ade:	bf3f      	itttt	cc
 8004ae0:	1c50      	addcc	r0, r2, #1
 8004ae2:	6320      	strcc	r0, [r4, #48]	; 0x30
 8004ae4:	7011      	strbcc	r1, [r2, #0]
 8004ae6:	e9d4 0111 	ldrdcc	r0, r1, [r4, #68]	; 0x44
 8004aea:	3808      	subs	r0, #8
 8004aec:	0a09      	lsrs	r1, r1, #8
 8004aee:	2807      	cmp	r0, #7
 8004af0:	e9c4 0111 	strd	r0, r1, [r4, #68]	; 0x44
 8004af4:	d8f0      	bhi.n	8004ad8 <tdefl_flush_block+0x424>
 8004af6:	e031      	b.n	8004b5c <tdefl_flush_block+0x4a8>
 8004af8:	6ca0      	ldr	r0, [r4, #72]	; 0x48
 8004afa:	2110      	movs	r1, #16
 8004afc:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8004b00:	e9d4 230c 	ldrd	r2, r3, [r4, #48]	; 0x30
 8004b04:	429a      	cmp	r2, r3
 8004b06:	d205      	bcs.n	8004b14 <tdefl_flush_block+0x460>
 8004b08:	1c51      	adds	r1, r2, #1
 8004b0a:	6321      	str	r1, [r4, #48]	; 0x30
 8004b0c:	7010      	strb	r0, [r2, #0]
 8004b0e:	e9d4 2011 	ldrd	r2, r0, [r4, #68]	; 0x44
 8004b12:	e000      	b.n	8004b16 <tdefl_flush_block+0x462>
 8004b14:	460a      	mov	r2, r1
 8004b16:	f1a2 0108 	sub.w	r1, r2, #8
 8004b1a:	0a00      	lsrs	r0, r0, #8
 8004b1c:	2907      	cmp	r1, #7
 8004b1e:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8004b22:	d8ed      	bhi.n	8004b00 <tdefl_flush_block+0x44c>
 8004b24:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8004b28:	f112 0f09 	cmn.w	r2, #9
 8004b2c:	fa03 f101 	lsl.w	r1, r3, r1
 8004b30:	ea40 0001 	orr.w	r0, r0, r1
 8004b34:	f102 0108 	add.w	r1, r2, #8
 8004b38:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8004b3c:	d80e      	bhi.n	8004b5c <tdefl_flush_block+0x4a8>
 8004b3e:	e9d4 230c 	ldrd	r2, r3, [r4, #48]	; 0x30
 8004b42:	429a      	cmp	r2, r3
 8004b44:	bf3f      	itttt	cc
 8004b46:	1c51      	addcc	r1, r2, #1
 8004b48:	6321      	strcc	r1, [r4, #48]	; 0x30
 8004b4a:	7010      	strbcc	r0, [r2, #0]
 8004b4c:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 8004b50:	3908      	subs	r1, #8
 8004b52:	0a00      	lsrs	r0, r0, #8
 8004b54:	2907      	cmp	r1, #7
 8004b56:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8004b5a:	d8f0      	bhi.n	8004b3e <tdefl_flush_block+0x48a>
 8004b5c:	e9d4 500c 	ldrd	r5, r0, [r4, #48]	; 0x30
 8004b60:	4285      	cmp	r5, r0
 8004b62:	d26c      	bcs.n	8004c3e <tdefl_flush_block+0x58a>
 8004b64:	f248 1092 	movw	r0, #33170	; 0x8192
 8004b68:	f44f 7120 	mov.w	r1, #640	; 0x280
 8004b6c:	4420      	add	r0, r4
 8004b6e:	f001 fa43 	bl	8005ff8 <__aeabi_memclr>
 8004b72:	f249 2073 	movw	r0, #37491	; 0x9273
 8004b76:	ebb5 0508 	subs.w	r5, r5, r8
 8004b7a:	4420      	add	r0, r4
 8004b7c:	62a0      	str	r0, [r4, #40]	; 0x28
 8004b7e:	f249 2072 	movw	r0, #37490	; 0x9272
 8004b82:	4420      	add	r0, r4
 8004b84:	62e0      	str	r0, [r4, #44]	; 0x2c
 8004b86:	f04f 0008 	mov.w	r0, #8
 8004b8a:	63a0      	str	r0, [r4, #56]	; 0x38
 8004b8c:	e9d4 010f 	ldrd	r0, r1, [r4, #60]	; 0x3c
 8004b90:	4408      	add	r0, r1
 8004b92:	6420      	str	r0, [r4, #64]	; 0x40
 8004b94:	f04f 0000 	mov.w	r0, #0
 8004b98:	63e0      	str	r0, [r4, #60]	; 0x3c
 8004b9a:	6e60      	ldr	r0, [r4, #100]	; 0x64
 8004b9c:	f100 0001 	add.w	r0, r0, #1
 8004ba0:	6660      	str	r0, [r4, #100]	; 0x64
 8004ba2:	d037      	beq.n	8004c14 <tdefl_flush_block+0x560>
 8004ba4:	6823      	ldr	r3, [r4, #0]
 8004ba6:	b193      	cbz	r3, 8004bce <tdefl_flush_block+0x51a>
 8004ba8:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8004baa:	f8d4 2084 	ldr.w	r2, [r4, #132]	; 0x84
 8004bae:	6fa1      	ldr	r1, [r4, #120]	; 0x78
 8004bb0:	1a10      	subs	r0, r2, r0
 8004bb2:	6008      	str	r0, [r1, #0]
 8004bb4:	f249 2072 	movw	r0, #37490	; 0x9272
 8004bb8:	4629      	mov	r1, r5
 8004bba:	6862      	ldr	r2, [r4, #4]
 8004bbc:	f2c0 0003 	movt	r0, #3
 8004bc0:	4420      	add	r0, r4
 8004bc2:	4798      	blx	r3
 8004bc4:	bb30      	cbnz	r0, 8004c14 <tdefl_flush_block+0x560>
 8004bc6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004bca:	66e0      	str	r0, [r4, #108]	; 0x6c
 8004bcc:	e023      	b.n	8004c16 <tdefl_flush_block+0x562>
 8004bce:	f249 2072 	movw	r0, #37490	; 0x9272
 8004bd2:	f2c0 0003 	movt	r0, #3
 8004bd6:	1821      	adds	r1, r4, r0
 8004bd8:	4588      	cmp	r8, r1
 8004bda:	d005      	beq.n	8004be8 <tdefl_flush_block+0x534>
 8004bdc:	f8d4 008c 	ldr.w	r0, [r4, #140]	; 0x8c
 8004be0:	4428      	add	r0, r5
 8004be2:	f8c4 008c 	str.w	r0, [r4, #140]	; 0x8c
 8004be6:	e015      	b.n	8004c14 <tdefl_flush_block+0x560>
 8004be8:	6fe2      	ldr	r2, [r4, #124]	; 0x7c
 8004bea:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
 8004bee:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8004bf0:	6812      	ldr	r2, [r2, #0]
 8004bf2:	4418      	add	r0, r3
 8004bf4:	1ad6      	subs	r6, r2, r3
 8004bf6:	42b5      	cmp	r5, r6
 8004bf8:	bf38      	it	cc
 8004bfa:	462e      	movcc	r6, r5
 8004bfc:	4632      	mov	r2, r6
 8004bfe:	f001 f9ff 	bl	8006000 <__aeabi_memcpy>
 8004c02:	f8d4 008c 	ldr.w	r0, [r4, #140]	; 0x8c
 8004c06:	4430      	add	r0, r6
 8004c08:	f8c4 008c 	str.w	r0, [r4, #140]	; 0x8c
 8004c0c:	1ba8      	subs	r0, r5, r6
 8004c0e:	bf18      	it	ne
 8004c10:	e9c4 6016 	strdne	r6, r0, [r4, #88]	; 0x58
 8004c14:	6de0      	ldr	r0, [r4, #92]	; 0x5c
 8004c16:	b001      	add	sp, #4
 8004c18:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8004c1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004c1e:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8004c22:	f64c 2215 	movw	r2, #51733	; 0xca15
 8004c26:	f64c 2327 	movw	r3, #51751	; 0xca27
 8004c2a:	f640 0196 	movw	r1, #2198	; 0x896
 8004c2e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004c32:	f6c0 0200 	movt	r2, #2048	; 0x800
 8004c36:	f6c0 0300 	movt	r3, #2048	; 0x800
 8004c3a:	f001 f9e3 	bl	8006004 <__assert_func>
 8004c3e:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8004c42:	f64c 2215 	movw	r2, #51733	; 0xca15
 8004c46:	f64c 235f 	movw	r3, #51807	; 0xca5f
 8004c4a:	f640 01cd 	movw	r1, #2253	; 0x8cd
 8004c4e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004c52:	f6c0 0200 	movt	r2, #2048	; 0x800
 8004c56:	f6c0 0300 	movt	r3, #2048	; 0x800
 8004c5a:	f001 f9d3 	bl	8006004 <__assert_func>

08004c5e <tdefl_compress_block>:
 8004c5e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004c60:	af03      	add	r7, sp, #12
 8004c62:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8004c66:	f5ad 7d29 	sub.w	sp, sp, #676	; 0x2a4
 8004c6a:	4604      	mov	r4, r0
 8004c6c:	2900      	cmp	r1, #0
 8004c6e:	f000 81a7 	beq.w	8004fc0 <tdefl_compress_block+0x362>
 8004c72:	f648 7012 	movw	r0, #36626	; 0x8f12
 8004c76:	2190      	movs	r1, #144	; 0x90
 8004c78:	2208      	movs	r2, #8
 8004c7a:	2508      	movs	r5, #8
 8004c7c:	4420      	add	r0, r4
 8004c7e:	f7fb fc3f 	bl	8000500 <__aeabi_memset>
 8004c82:	f648 70a2 	movw	r0, #36770	; 0x8fa2
 8004c86:	2170      	movs	r1, #112	; 0x70
 8004c88:	2209      	movs	r2, #9
 8004c8a:	4420      	add	r0, r4
 8004c8c:	f7fb fc38 	bl	8000500 <__aeabi_memset>
 8004c90:	f249 0127 	movw	r1, #36903	; 0x9027
 8004c94:	2007      	movs	r0, #7
 8004c96:	5460      	strb	r0, [r4, r1]
 8004c98:	f249 0123 	movw	r1, #36899	; 0x9023
 8004c9c:	5460      	strb	r0, [r4, r1]
 8004c9e:	f249 011f 	movw	r1, #36895	; 0x901f
 8004ca2:	5460      	strb	r0, [r4, r1]
 8004ca4:	f249 011b 	movw	r1, #36891	; 0x901b
 8004ca8:	5460      	strb	r0, [r4, r1]
 8004caa:	f249 0117 	movw	r1, #36887	; 0x9017
 8004cae:	5460      	strb	r0, [r4, r1]
 8004cb0:	f249 0113 	movw	r1, #36883	; 0x9013
 8004cb4:	5460      	strb	r0, [r4, r1]
 8004cb6:	f249 0126 	movw	r1, #36902	; 0x9026
 8004cba:	1862      	adds	r2, r4, r1
 8004cbc:	f04f 3107 	mov.w	r1, #117901063	; 0x7070707
 8004cc0:	f802 1b02 	strb.w	r1, [r2], #2
 8004cc4:	7050      	strb	r0, [r2, #1]
 8004cc6:	7010      	strb	r0, [r2, #0]
 8004cc8:	f249 0222 	movw	r2, #36898	; 0x9022
 8004ccc:	4422      	add	r2, r4
 8004cce:	f802 1b02 	strb.w	r1, [r2], #2
 8004cd2:	7050      	strb	r0, [r2, #1]
 8004cd4:	7010      	strb	r0, [r2, #0]
 8004cd6:	f249 021e 	movw	r2, #36894	; 0x901e
 8004cda:	4422      	add	r2, r4
 8004cdc:	f802 1b02 	strb.w	r1, [r2], #2
 8004ce0:	7050      	strb	r0, [r2, #1]
 8004ce2:	7010      	strb	r0, [r2, #0]
 8004ce4:	f249 021a 	movw	r2, #36890	; 0x901a
 8004ce8:	4422      	add	r2, r4
 8004cea:	f802 1b02 	strb.w	r1, [r2], #2
 8004cee:	7050      	strb	r0, [r2, #1]
 8004cf0:	7010      	strb	r0, [r2, #0]
 8004cf2:	f249 0216 	movw	r2, #36886	; 0x9016
 8004cf6:	4422      	add	r2, r4
 8004cf8:	f802 1b02 	strb.w	r1, [r2], #2
 8004cfc:	7050      	strb	r0, [r2, #1]
 8004cfe:	7010      	strb	r0, [r2, #0]
 8004d00:	f249 0212 	movw	r2, #36882	; 0x9012
 8004d04:	4422      	add	r2, r4
 8004d06:	f802 1b02 	strb.w	r1, [r2], #2
 8004d0a:	f04f 3108 	mov.w	r1, #134744072	; 0x8080808
 8004d0e:	7050      	strb	r0, [r2, #1]
 8004d10:	7010      	strb	r0, [r2, #0]
 8004d12:	f249 002f 	movw	r0, #36911	; 0x902f
 8004d16:	5425      	strb	r5, [r4, r0]
 8004d18:	f249 002b 	movw	r0, #36907	; 0x902b
 8004d1c:	5425      	strb	r5, [r4, r0]
 8004d1e:	f249 002e 	movw	r0, #36910	; 0x902e
 8004d22:	4420      	add	r0, r4
 8004d24:	f800 1b02 	strb.w	r1, [r0], #2
 8004d28:	7045      	strb	r5, [r0, #1]
 8004d2a:	7005      	strb	r5, [r0, #0]
 8004d2c:	f249 002a 	movw	r0, #36906	; 0x902a
 8004d30:	4420      	add	r0, r4
 8004d32:	f800 1b02 	strb.w	r1, [r0], #2
 8004d36:	f249 0150 	movw	r1, #36944	; 0x9050
 8004d3a:	7045      	strb	r5, [r0, #1]
 8004d3c:	7005      	strb	r5, [r0, #0]
 8004d3e:	f240 5005 	movw	r0, #1285	; 0x505
 8004d42:	ad59      	add	r5, sp, #356	; 0x164
 8004d44:	5260      	strh	r0, [r4, r1]
 8004d46:	f249 014e 	movw	r1, #36942	; 0x904e
 8004d4a:	5260      	strh	r0, [r4, r1]
 8004d4c:	f249 014c 	movw	r1, #36940	; 0x904c
 8004d50:	5260      	strh	r0, [r4, r1]
 8004d52:	f249 014a 	movw	r1, #36938	; 0x904a
 8004d56:	5260      	strh	r0, [r4, r1]
 8004d58:	f249 0148 	movw	r1, #36936	; 0x9048
 8004d5c:	5260      	strh	r0, [r4, r1]
 8004d5e:	f249 0146 	movw	r1, #36934	; 0x9046
 8004d62:	5260      	strh	r0, [r4, r1]
 8004d64:	f249 0144 	movw	r1, #36932	; 0x9044
 8004d68:	5260      	strh	r0, [r4, r1]
 8004d6a:	f249 0142 	movw	r1, #36930	; 0x9042
 8004d6e:	5260      	strh	r0, [r4, r1]
 8004d70:	f249 0140 	movw	r1, #36928	; 0x9040
 8004d74:	5260      	strh	r0, [r4, r1]
 8004d76:	f249 013e 	movw	r1, #36926	; 0x903e
 8004d7a:	5260      	strh	r0, [r4, r1]
 8004d7c:	f249 013c 	movw	r1, #36924	; 0x903c
 8004d80:	5260      	strh	r0, [r4, r1]
 8004d82:	f249 013a 	movw	r1, #36922	; 0x903a
 8004d86:	5260      	strh	r0, [r4, r1]
 8004d88:	f249 0138 	movw	r1, #36920	; 0x9038
 8004d8c:	5260      	strh	r0, [r4, r1]
 8004d8e:	f249 0136 	movw	r1, #36918	; 0x9036
 8004d92:	5260      	strh	r0, [r4, r1]
 8004d94:	f249 0134 	movw	r1, #36916	; 0x9034
 8004d98:	5260      	strh	r0, [r4, r1]
 8004d9a:	f249 0132 	movw	r1, #36914	; 0x9032
 8004d9e:	5260      	strh	r0, [r4, r1]
 8004da0:	4628      	mov	r0, r5
 8004da2:	2184      	movs	r1, #132	; 0x84
 8004da4:	f001 f928 	bl	8005ff8 <__aeabi_memclr>
 8004da8:	2001      	movs	r0, #1
 8004daa:	f46f 718f 	mvn.w	r1, #286	; 0x11e
 8004dae:	9061      	str	r0, [sp, #388]	; 0x184
 8004db0:	f648 7013 	movw	r0, #36627	; 0x8f13
 8004db4:	4420      	add	r0, r4
 8004db6:	1842      	adds	r2, r0, r1
 8004db8:	3101      	adds	r1, #1
 8004dba:	f892 211f 	ldrb.w	r2, [r2, #287]	; 0x11f
 8004dbe:	f855 3022 	ldr.w	r3, [r5, r2, lsl #2]
 8004dc2:	f103 0301 	add.w	r3, r3, #1
 8004dc6:	f845 3022 	str.w	r3, [r5, r2, lsl #2]
 8004dca:	d1f4      	bne.n	8004db6 <tdefl_compress_block+0x158>
 8004dcc:	995a      	ldr	r1, [sp, #360]	; 0x168
 8004dce:	2000      	movs	r0, #0
 8004dd0:	f648 7e12 	movw	lr, #36626	; 0x8f12
 8004dd4:	f10d 0824 	add.w	r8, sp, #36	; 0x24
 8004dd8:	f648 0c52 	movw	ip, #34898	; 0x8852
 8004ddc:	900a      	str	r0, [sp, #40]	; 0x28
 8004dde:	004a      	lsls	r2, r1, #1
 8004de0:	920b      	str	r2, [sp, #44]	; 0x2c
 8004de2:	9a5b      	ldr	r2, [sp, #364]	; 0x16c
 8004de4:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004de8:	004a      	lsls	r2, r1, #1
 8004dea:	920c      	str	r2, [sp, #48]	; 0x30
 8004dec:	9a5c      	ldr	r2, [sp, #368]	; 0x170
 8004dee:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004df2:	004a      	lsls	r2, r1, #1
 8004df4:	920d      	str	r2, [sp, #52]	; 0x34
 8004df6:	9a5d      	ldr	r2, [sp, #372]	; 0x174
 8004df8:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004dfc:	004a      	lsls	r2, r1, #1
 8004dfe:	920e      	str	r2, [sp, #56]	; 0x38
 8004e00:	9a5e      	ldr	r2, [sp, #376]	; 0x178
 8004e02:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004e06:	004a      	lsls	r2, r1, #1
 8004e08:	920f      	str	r2, [sp, #60]	; 0x3c
 8004e0a:	9a5f      	ldr	r2, [sp, #380]	; 0x17c
 8004e0c:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004e10:	004a      	lsls	r2, r1, #1
 8004e12:	9210      	str	r2, [sp, #64]	; 0x40
 8004e14:	9a60      	ldr	r2, [sp, #384]	; 0x180
 8004e16:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004e1a:	004a      	lsls	r2, r1, #1
 8004e1c:	9211      	str	r2, [sp, #68]	; 0x44
 8004e1e:	9a61      	ldr	r2, [sp, #388]	; 0x184
 8004e20:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004e24:	004a      	lsls	r2, r1, #1
 8004e26:	9212      	str	r2, [sp, #72]	; 0x48
 8004e28:	9a62      	ldr	r2, [sp, #392]	; 0x188
 8004e2a:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004e2e:	004a      	lsls	r2, r1, #1
 8004e30:	9213      	str	r2, [sp, #76]	; 0x4c
 8004e32:	9a63      	ldr	r2, [sp, #396]	; 0x18c
 8004e34:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004e38:	004a      	lsls	r2, r1, #1
 8004e3a:	9214      	str	r2, [sp, #80]	; 0x50
 8004e3c:	9a64      	ldr	r2, [sp, #400]	; 0x190
 8004e3e:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004e42:	004a      	lsls	r2, r1, #1
 8004e44:	9215      	str	r2, [sp, #84]	; 0x54
 8004e46:	9a65      	ldr	r2, [sp, #404]	; 0x194
 8004e48:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004e4c:	004a      	lsls	r2, r1, #1
 8004e4e:	9216      	str	r2, [sp, #88]	; 0x58
 8004e50:	9a66      	ldr	r2, [sp, #408]	; 0x198
 8004e52:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004e56:	004a      	lsls	r2, r1, #1
 8004e58:	9217      	str	r2, [sp, #92]	; 0x5c
 8004e5a:	9a67      	ldr	r2, [sp, #412]	; 0x19c
 8004e5c:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004e60:	2208      	movs	r2, #8
 8004e62:	0049      	lsls	r1, r1, #1
 8004e64:	9118      	str	r1, [sp, #96]	; 0x60
 8004e66:	e002      	b.n	8004e6e <tdefl_compress_block+0x210>
 8004e68:	1821      	adds	r1, r4, r0
 8004e6a:	f811 200e 	ldrb.w	r2, [r1, lr]
 8004e6e:	b2d2      	uxtb	r2, r2
 8004e70:	b192      	cbz	r2, 8004e98 <tdefl_compress_block+0x23a>
 8004e72:	f858 3022 	ldr.w	r3, [r8, r2, lsl #2]
 8004e76:	1c5e      	adds	r6, r3, #1
 8004e78:	f848 6022 	str.w	r6, [r8, r2, lsl #2]
 8004e7c:	1c56      	adds	r6, r2, #1
 8004e7e:	2200      	movs	r2, #0
 8004e80:	f003 0101 	and.w	r1, r3, #1
 8004e84:	3e01      	subs	r6, #1
 8004e86:	085b      	lsrs	r3, r3, #1
 8004e88:	ea41 0242 	orr.w	r2, r1, r2, lsl #1
 8004e8c:	2e01      	cmp	r6, #1
 8004e8e:	dcf7      	bgt.n	8004e80 <tdefl_compress_block+0x222>
 8004e90:	eb04 0140 	add.w	r1, r4, r0, lsl #1
 8004e94:	f821 200c 	strh.w	r2, [r1, ip]
 8004e98:	3001      	adds	r0, #1
 8004e9a:	f5b0 7f90 	cmp.w	r0, #288	; 0x120
 8004e9e:	d1e3      	bne.n	8004e68 <tdefl_compress_block+0x20a>
 8004ea0:	4628      	mov	r0, r5
 8004ea2:	2184      	movs	r1, #132	; 0x84
 8004ea4:	f001 f8a8 	bl	8005ff8 <__aeabi_memclr>
 8004ea8:	f249 0032 	movw	r0, #36914	; 0x9032
 8004eac:	2100      	movs	r1, #0
 8004eae:	4420      	add	r0, r4
 8004eb0:	5c42      	ldrb	r2, [r0, r1]
 8004eb2:	3101      	adds	r1, #1
 8004eb4:	2920      	cmp	r1, #32
 8004eb6:	f855 3022 	ldr.w	r3, [r5, r2, lsl #2]
 8004eba:	f103 0301 	add.w	r3, r3, #1
 8004ebe:	f845 3022 	str.w	r3, [r5, r2, lsl #2]
 8004ec2:	d1f5      	bne.n	8004eb0 <tdefl_compress_block+0x252>
 8004ec4:	995a      	ldr	r1, [sp, #360]	; 0x168
 8004ec6:	2000      	movs	r0, #0
 8004ec8:	f648 2c92 	movw	ip, #35474	; 0x8a92
 8004ecc:	900a      	str	r0, [sp, #40]	; 0x28
 8004ece:	004a      	lsls	r2, r1, #1
 8004ed0:	920b      	str	r2, [sp, #44]	; 0x2c
 8004ed2:	9a5b      	ldr	r2, [sp, #364]	; 0x16c
 8004ed4:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004ed8:	004a      	lsls	r2, r1, #1
 8004eda:	920c      	str	r2, [sp, #48]	; 0x30
 8004edc:	9a5c      	ldr	r2, [sp, #368]	; 0x170
 8004ede:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004ee2:	004a      	lsls	r2, r1, #1
 8004ee4:	920d      	str	r2, [sp, #52]	; 0x34
 8004ee6:	9a5d      	ldr	r2, [sp, #372]	; 0x174
 8004ee8:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004eec:	004a      	lsls	r2, r1, #1
 8004eee:	920e      	str	r2, [sp, #56]	; 0x38
 8004ef0:	9a5e      	ldr	r2, [sp, #376]	; 0x178
 8004ef2:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004ef6:	004a      	lsls	r2, r1, #1
 8004ef8:	920f      	str	r2, [sp, #60]	; 0x3c
 8004efa:	9a5f      	ldr	r2, [sp, #380]	; 0x17c
 8004efc:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004f00:	004a      	lsls	r2, r1, #1
 8004f02:	9210      	str	r2, [sp, #64]	; 0x40
 8004f04:	9a60      	ldr	r2, [sp, #384]	; 0x180
 8004f06:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004f0a:	004a      	lsls	r2, r1, #1
 8004f0c:	9211      	str	r2, [sp, #68]	; 0x44
 8004f0e:	9a61      	ldr	r2, [sp, #388]	; 0x184
 8004f10:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004f14:	004a      	lsls	r2, r1, #1
 8004f16:	9212      	str	r2, [sp, #72]	; 0x48
 8004f18:	9a62      	ldr	r2, [sp, #392]	; 0x188
 8004f1a:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004f1e:	004a      	lsls	r2, r1, #1
 8004f20:	9213      	str	r2, [sp, #76]	; 0x4c
 8004f22:	9a63      	ldr	r2, [sp, #396]	; 0x18c
 8004f24:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004f28:	004a      	lsls	r2, r1, #1
 8004f2a:	9214      	str	r2, [sp, #80]	; 0x50
 8004f2c:	9a64      	ldr	r2, [sp, #400]	; 0x190
 8004f2e:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004f32:	004a      	lsls	r2, r1, #1
 8004f34:	9215      	str	r2, [sp, #84]	; 0x54
 8004f36:	9a65      	ldr	r2, [sp, #404]	; 0x194
 8004f38:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004f3c:	004a      	lsls	r2, r1, #1
 8004f3e:	9216      	str	r2, [sp, #88]	; 0x58
 8004f40:	9a66      	ldr	r2, [sp, #408]	; 0x198
 8004f42:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004f46:	004a      	lsls	r2, r1, #1
 8004f48:	9217      	str	r2, [sp, #92]	; 0x5c
 8004f4a:	9a67      	ldr	r2, [sp, #412]	; 0x19c
 8004f4c:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8004f50:	0049      	lsls	r1, r1, #1
 8004f52:	9118      	str	r1, [sp, #96]	; 0x60
 8004f54:	f249 0132 	movw	r1, #36914	; 0x9032
 8004f58:	1823      	adds	r3, r4, r0
 8004f5a:	5c5e      	ldrb	r6, [r3, r1]
 8004f5c:	b196      	cbz	r6, 8004f84 <tdefl_compress_block+0x326>
 8004f5e:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
 8004f62:	1c5d      	adds	r5, r3, #1
 8004f64:	f848 5026 	str.w	r5, [r8, r6, lsl #2]
 8004f68:	3601      	adds	r6, #1
 8004f6a:	2500      	movs	r5, #0
 8004f6c:	f003 0201 	and.w	r2, r3, #1
 8004f70:	3e01      	subs	r6, #1
 8004f72:	085b      	lsrs	r3, r3, #1
 8004f74:	ea42 0545 	orr.w	r5, r2, r5, lsl #1
 8004f78:	2e01      	cmp	r6, #1
 8004f7a:	dcf7      	bgt.n	8004f6c <tdefl_compress_block+0x30e>
 8004f7c:	eb04 0240 	add.w	r2, r4, r0, lsl #1
 8004f80:	f822 500c 	strh.w	r5, [r2, ip]
 8004f84:	3001      	adds	r0, #1
 8004f86:	2820      	cmp	r0, #32
 8004f88:	d1e6      	bne.n	8004f58 <tdefl_compress_block+0x2fa>
 8004f8a:	e9d4 1011 	ldrd	r1, r0, [r4, #68]	; 0x44
 8004f8e:	2201      	movs	r2, #1
 8004f90:	408a      	lsls	r2, r1
 8004f92:	3102      	adds	r1, #2
 8004f94:	4310      	orrs	r0, r2
 8004f96:	2908      	cmp	r1, #8
 8004f98:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8004f9c:	f0c0 82ad 	bcc.w	80054fa <tdefl_compress_block+0x89c>
 8004fa0:	e9d4 230c 	ldrd	r2, r3, [r4, #48]	; 0x30
 8004fa4:	429a      	cmp	r2, r3
 8004fa6:	bf3f      	itttt	cc
 8004fa8:	1c51      	addcc	r1, r2, #1
 8004faa:	6321      	strcc	r1, [r4, #48]	; 0x30
 8004fac:	7010      	strbcc	r0, [r2, #0]
 8004fae:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 8004fb2:	3908      	subs	r1, #8
 8004fb4:	0a00      	lsrs	r0, r0, #8
 8004fb6:	2907      	cmp	r1, #7
 8004fb8:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8004fbc:	d8f0      	bhi.n	8004fa0 <tdefl_compress_block+0x342>
 8004fbe:	e29c      	b.n	80054fa <tdefl_compress_block+0x89c>
 8004fc0:	f248 3092 	movw	r0, #33682	; 0x8392
 8004fc4:	2101      	movs	r1, #1
 8004fc6:	2500      	movs	r5, #0
 8004fc8:	f44f 7290 	mov.w	r2, #288	; 0x120
 8004fcc:	230f      	movs	r3, #15
 8004fce:	5221      	strh	r1, [r4, r0]
 8004fd0:	4620      	mov	r0, r4
 8004fd2:	2100      	movs	r1, #0
 8004fd4:	9500      	str	r5, [sp, #0]
 8004fd6:	f000 fce1 	bl	800599c <tdefl_optimize_huffman_table>
 8004fda:	4620      	mov	r0, r4
 8004fdc:	2101      	movs	r1, #1
 8004fde:	2220      	movs	r2, #32
 8004fe0:	230f      	movs	r3, #15
 8004fe2:	9500      	str	r5, [sp, #0]
 8004fe4:	f000 fcda 	bl	800599c <tdefl_optimize_huffman_table>
 8004fe8:	f249 002f 	movw	r0, #36911	; 0x902f
 8004fec:	4420      	add	r0, r4
 8004fee:	462e      	mov	r6, r5
 8004ff0:	f506 728f 	add.w	r2, r6, #286	; 0x11e
 8004ff4:	f5b2 7f81 	cmp.w	r2, #258	; 0x102
 8004ff8:	db03      	blt.n	8005002 <tdefl_compress_block+0x3a4>
 8004ffa:	5d81      	ldrb	r1, [r0, r6]
 8004ffc:	1e75      	subs	r5, r6, #1
 8004ffe:	2900      	cmp	r1, #0
 8005000:	d0f5      	beq.n	8004fee <tdefl_compress_block+0x390>
 8005002:	f249 004f 	movw	r0, #36943	; 0x904f
 8005006:	2100      	movs	r1, #0
 8005008:	4420      	add	r0, r4
 800500a:	4689      	mov	r9, r1
 800500c:	f109 051e 	add.w	r5, r9, #30
 8005010:	2d02      	cmp	r5, #2
 8005012:	db05      	blt.n	8005020 <tdefl_compress_block+0x3c2>
 8005014:	f810 3009 	ldrb.w	r3, [r0, r9]
 8005018:	f1a9 0101 	sub.w	r1, r9, #1
 800501c:	2b00      	cmp	r3, #0
 800501e:	d0f4      	beq.n	800500a <tdefl_compress_block+0x3ac>
 8005020:	f648 7012 	movw	r0, #36626	; 0x8f12
 8005024:	f50d 78b2 	add.w	r8, sp, #356	; 0x164
 8005028:	1821      	adds	r1, r4, r0
 800502a:	4640      	mov	r0, r8
 800502c:	f000 ffe8 	bl	8006000 <__aeabi_memcpy>
 8005030:	f249 0032 	movw	r0, #36914	; 0x9032
 8005034:	462a      	mov	r2, r5
 8005036:	1821      	adds	r1, r4, r0
 8005038:	eb08 0006 	add.w	r0, r8, r6
 800503c:	f500 708f 	add.w	r0, r0, #286	; 0x11e
 8005040:	f000 ffde 	bl	8006000 <__aeabi_memcpy>
 8005044:	f248 6012 	movw	r0, #34322	; 0x8612
 8005048:	2126      	movs	r1, #38	; 0x26
 800504a:	4420      	add	r0, r4
 800504c:	9005      	str	r0, [sp, #20]
 800504e:	f000 ffd3 	bl	8005ff8 <__aeabi_memclr>
 8005052:	eb06 0009 	add.w	r0, r6, r9
 8005056:	2100      	movs	r1, #0
 8005058:	2300      	movs	r3, #0
 800505a:	f510 7f9e 	cmn.w	r0, #316	; 0x13c
 800505e:	f000 8138 	beq.w	80052d2 <tdefl_compress_block+0x674>
 8005062:	f500 7a9e 	add.w	sl, r0, #316	; 0x13c
 8005066:	f248 6034 	movw	r0, #34356	; 0x8634
 800506a:	e9cd 9602 	strd	r9, r6, [sp, #8]
 800506e:	26ff      	movs	r6, #255	; 0xff
 8005070:	2300      	movs	r3, #0
 8005072:	f50d 7bb2 	add.w	fp, sp, #356	; 0x164
 8005076:	f10d 0c24 	add.w	ip, sp, #36	; 0x24
 800507a:	f04f 0800 	mov.w	r8, #0
 800507e:	2500      	movs	r5, #0
 8005080:	4420      	add	r0, r4
 8005082:	9004      	str	r0, [sp, #16]
 8005084:	f248 6032 	movw	r0, #34354	; 0x8632
 8005088:	4420      	add	r0, r4
 800508a:	9006      	str	r0, [sp, #24]
 800508c:	f248 6036 	movw	r0, #34358	; 0x8636
 8005090:	4420      	add	r0, r4
 8005092:	9007      	str	r0, [sp, #28]
 8005094:	46b1      	mov	r9, r6
 8005096:	f89b 6000 	ldrb.w	r6, [fp]
 800509a:	b1a6      	cbz	r6, 80050c6 <tdefl_compress_block+0x468>
 800509c:	f1b8 0f00 	cmp.w	r8, #0
 80050a0:	d046      	beq.n	8005130 <tdefl_compress_block+0x4d2>
 80050a2:	f1b8 0f02 	cmp.w	r8, #2
 80050a6:	d828      	bhi.n	80050fa <tdefl_compress_block+0x49c>
 80050a8:	9905      	ldr	r1, [sp, #20]
 80050aa:	8808      	ldrh	r0, [r1, #0]
 80050ac:	4440      	add	r0, r8
 80050ae:	8008      	strh	r0, [r1, #0]
 80050b0:	eb0c 0003 	add.w	r0, ip, r3
 80050b4:	4641      	mov	r1, r8
 80050b6:	9308      	str	r3, [sp, #32]
 80050b8:	f000 ff9e 	bl	8005ff8 <__aeabi_memclr>
 80050bc:	9b08      	ldr	r3, [sp, #32]
 80050be:	f10d 0c24 	add.w	ip, sp, #36	; 0x24
 80050c2:	4443      	add	r3, r8
 80050c4:	e034      	b.n	8005130 <tdefl_compress_block+0x4d2>
 80050c6:	2d00      	cmp	r5, #0
 80050c8:	d06c      	beq.n	80051a4 <tdefl_compress_block+0x546>
 80050ca:	2d02      	cmp	r5, #2
 80050cc:	d85c      	bhi.n	8005188 <tdefl_compress_block+0x52a>
 80050ce:	fa5f f289 	uxtb.w	r2, r9
 80050d2:	f248 6e12 	movw	lr, #34322	; 0x8612
 80050d6:	4699      	mov	r9, r3
 80050d8:	eb04 0042 	add.w	r0, r4, r2, lsl #1
 80050dc:	f830 100e 	ldrh.w	r1, [r0, lr]
 80050e0:	4429      	add	r1, r5
 80050e2:	f820 100e 	strh.w	r1, [r0, lr]
 80050e6:	eb0c 0003 	add.w	r0, ip, r3
 80050ea:	4629      	mov	r1, r5
 80050ec:	f7fb fa08 	bl	8000500 <__aeabi_memset>
 80050f0:	464b      	mov	r3, r9
 80050f2:	f10d 0c24 	add.w	ip, sp, #36	; 0x24
 80050f6:	442b      	add	r3, r5
 80050f8:	e054      	b.n	80051a4 <tdefl_compress_block+0x546>
 80050fa:	9904      	ldr	r1, [sp, #16]
 80050fc:	f1b8 0f0b 	cmp.w	r8, #11
 8005100:	9807      	ldr	r0, [sp, #28]
 8005102:	bf38      	it	cc
 8005104:	4608      	movcc	r0, r1
 8005106:	8801      	ldrh	r1, [r0, #0]
 8005108:	f101 0101 	add.w	r1, r1, #1
 800510c:	8001      	strh	r1, [r0, #0]
 800510e:	f04f 0012 	mov.w	r0, #18
 8005112:	f04f 01f5 	mov.w	r1, #245	; 0xf5
 8005116:	bf38      	it	cc
 8005118:	2011      	movcc	r0, #17
 800511a:	f1b8 0f0b 	cmp.w	r8, #11
 800511e:	f80c 0003 	strb.w	r0, [ip, r3]
 8005122:	bf38      	it	cc
 8005124:	21fd      	movcc	r1, #253	; 0xfd
 8005126:	eb0c 0003 	add.w	r0, ip, r3
 800512a:	3302      	adds	r3, #2
 800512c:	4441      	add	r1, r8
 800512e:	7041      	strb	r1, [r0, #1]
 8005130:	fa5f f289 	uxtb.w	r2, r9
 8005134:	4296      	cmp	r6, r2
 8005136:	d10b      	bne.n	8005150 <tdefl_compress_block+0x4f2>
 8005138:	1c68      	adds	r0, r5, #1
 800513a:	2806      	cmp	r0, #6
 800513c:	d120      	bne.n	8005180 <tdefl_compress_block+0x522>
 800513e:	9806      	ldr	r0, [sp, #24]
 8005140:	4601      	mov	r1, r0
 8005142:	8808      	ldrh	r0, [r1, #0]
 8005144:	3001      	adds	r0, #1
 8005146:	8008      	strh	r0, [r1, #0]
 8005148:	2010      	movs	r0, #16
 800514a:	f105 01fe 	add.w	r1, r5, #254	; 0xfe
 800514e:	e035      	b.n	80051bc <tdefl_compress_block+0x55e>
 8005150:	2d00      	cmp	r5, #0
 8005152:	d04b      	beq.n	80051ec <tdefl_compress_block+0x58e>
 8005154:	2d02      	cmp	r5, #2
 8005156:	d83b      	bhi.n	80051d0 <tdefl_compress_block+0x572>
 8005158:	eb04 0042 	add.w	r0, r4, r2, lsl #1
 800515c:	f248 6e12 	movw	lr, #34322	; 0x8612
 8005160:	4698      	mov	r8, r3
 8005162:	f830 100e 	ldrh.w	r1, [r0, lr]
 8005166:	4429      	add	r1, r5
 8005168:	f820 100e 	strh.w	r1, [r0, lr]
 800516c:	eb0c 0003 	add.w	r0, ip, r3
 8005170:	4629      	mov	r1, r5
 8005172:	f7fb f9c5 	bl	8000500 <__aeabi_memset>
 8005176:	4643      	mov	r3, r8
 8005178:	f10d 0c24 	add.w	ip, sp, #36	; 0x24
 800517c:	442b      	add	r3, r5
 800517e:	e035      	b.n	80051ec <tdefl_compress_block+0x58e>
 8005180:	f04f 0800 	mov.w	r8, #0
 8005184:	4605      	mov	r5, r0
 8005186:	e03e      	b.n	8005206 <tdefl_compress_block+0x5a8>
 8005188:	9806      	ldr	r0, [sp, #24]
 800518a:	4601      	mov	r1, r0
 800518c:	8808      	ldrh	r0, [r1, #0]
 800518e:	3001      	adds	r0, #1
 8005190:	8008      	strh	r0, [r1, #0]
 8005192:	2010      	movs	r0, #16
 8005194:	f105 01fd 	add.w	r1, r5, #253	; 0xfd
 8005198:	f80c 0003 	strb.w	r0, [ip, r3]
 800519c:	eb0c 0003 	add.w	r0, ip, r3
 80051a0:	3302      	adds	r3, #2
 80051a2:	7041      	strb	r1, [r0, #1]
 80051a4:	f108 0001 	add.w	r0, r8, #1
 80051a8:	288a      	cmp	r0, #138	; 0x8a
 80051aa:	d10e      	bne.n	80051ca <tdefl_compress_block+0x56c>
 80051ac:	9807      	ldr	r0, [sp, #28]
 80051ae:	4601      	mov	r1, r0
 80051b0:	8808      	ldrh	r0, [r1, #0]
 80051b2:	3001      	adds	r0, #1
 80051b4:	8008      	strh	r0, [r1, #0]
 80051b6:	2012      	movs	r0, #18
 80051b8:	f108 01f6 	add.w	r1, r8, #246	; 0xf6
 80051bc:	f80c 0003 	strb.w	r0, [ip, r3]
 80051c0:	eb0c 0003 	add.w	r0, ip, r3
 80051c4:	3302      	adds	r3, #2
 80051c6:	7041      	strb	r1, [r0, #1]
 80051c8:	e01a      	b.n	8005200 <tdefl_compress_block+0x5a2>
 80051ca:	2500      	movs	r5, #0
 80051cc:	4680      	mov	r8, r0
 80051ce:	e01a      	b.n	8005206 <tdefl_compress_block+0x5a8>
 80051d0:	9806      	ldr	r0, [sp, #24]
 80051d2:	4601      	mov	r1, r0
 80051d4:	8808      	ldrh	r0, [r1, #0]
 80051d6:	3001      	adds	r0, #1
 80051d8:	8008      	strh	r0, [r1, #0]
 80051da:	2010      	movs	r0, #16
 80051dc:	f105 01fd 	add.w	r1, r5, #253	; 0xfd
 80051e0:	f80c 0003 	strb.w	r0, [ip, r3]
 80051e4:	eb0c 0003 	add.w	r0, ip, r3
 80051e8:	3302      	adds	r3, #2
 80051ea:	7041      	strb	r1, [r0, #1]
 80051ec:	eb04 0046 	add.w	r0, r4, r6, lsl #1
 80051f0:	f248 6212 	movw	r2, #34322	; 0x8612
 80051f4:	5a81      	ldrh	r1, [r0, r2]
 80051f6:	3101      	adds	r1, #1
 80051f8:	5281      	strh	r1, [r0, r2]
 80051fa:	f80c 6003 	strb.w	r6, [ip, r3]
 80051fe:	3301      	adds	r3, #1
 8005200:	2500      	movs	r5, #0
 8005202:	f04f 0800 	mov.w	r8, #0
 8005206:	f10b 0b01 	add.w	fp, fp, #1
 800520a:	f1ba 0a01 	subs.w	sl, sl, #1
 800520e:	f47f af41 	bne.w	8005094 <tdefl_compress_block+0x436>
 8005212:	2d00      	cmp	r5, #0
 8005214:	d018      	beq.n	8005248 <tdefl_compress_block+0x5ea>
 8005216:	4630      	mov	r0, r6
 8005218:	9e03      	ldr	r6, [sp, #12]
 800521a:	2d02      	cmp	r5, #2
 800521c:	d82a      	bhi.n	8005274 <tdefl_compress_block+0x616>
 800521e:	4602      	mov	r2, r0
 8005220:	f248 6e12 	movw	lr, #34322	; 0x8612
 8005224:	4698      	mov	r8, r3
 8005226:	eb04 0042 	add.w	r0, r4, r2, lsl #1
 800522a:	f830 100e 	ldrh.w	r1, [r0, lr]
 800522e:	4429      	add	r1, r5
 8005230:	f820 100e 	strh.w	r1, [r0, lr]
 8005234:	eb0c 0003 	add.w	r0, ip, r3
 8005238:	4629      	mov	r1, r5
 800523a:	f7fb f961 	bl	8000500 <__aeabi_memset>
 800523e:	f8dd 9008 	ldr.w	r9, [sp, #8]
 8005242:	4643      	mov	r3, r8
 8005244:	442b      	add	r3, r5
 8005246:	e043      	b.n	80052d0 <tdefl_compress_block+0x672>
 8005248:	9e03      	ldr	r6, [sp, #12]
 800524a:	f1b8 0f00 	cmp.w	r8, #0
 800524e:	d021      	beq.n	8005294 <tdefl_compress_block+0x636>
 8005250:	f8dd 9008 	ldr.w	r9, [sp, #8]
 8005254:	f1b8 0f02 	cmp.w	r8, #2
 8005258:	d81f      	bhi.n	800529a <tdefl_compress_block+0x63c>
 800525a:	9905      	ldr	r1, [sp, #20]
 800525c:	461d      	mov	r5, r3
 800525e:	8808      	ldrh	r0, [r1, #0]
 8005260:	4440      	add	r0, r8
 8005262:	8008      	strh	r0, [r1, #0]
 8005264:	eb0c 0003 	add.w	r0, ip, r3
 8005268:	4641      	mov	r1, r8
 800526a:	f000 fec5 	bl	8005ff8 <__aeabi_memclr>
 800526e:	462b      	mov	r3, r5
 8005270:	4443      	add	r3, r8
 8005272:	e02d      	b.n	80052d0 <tdefl_compress_block+0x672>
 8005274:	9806      	ldr	r0, [sp, #24]
 8005276:	4601      	mov	r1, r0
 8005278:	8808      	ldrh	r0, [r1, #0]
 800527a:	3001      	adds	r0, #1
 800527c:	8008      	strh	r0, [r1, #0]
 800527e:	2010      	movs	r0, #16
 8005280:	f105 01fd 	add.w	r1, r5, #253	; 0xfd
 8005284:	f8dd 9008 	ldr.w	r9, [sp, #8]
 8005288:	f80c 0003 	strb.w	r0, [ip, r3]
 800528c:	eb0c 0003 	add.w	r0, ip, r3
 8005290:	3302      	adds	r3, #2
 8005292:	e01c      	b.n	80052ce <tdefl_compress_block+0x670>
 8005294:	f8dd 9008 	ldr.w	r9, [sp, #8]
 8005298:	e01a      	b.n	80052d0 <tdefl_compress_block+0x672>
 800529a:	9804      	ldr	r0, [sp, #16]
 800529c:	f1b8 0f0b 	cmp.w	r8, #11
 80052a0:	9907      	ldr	r1, [sp, #28]
 80052a2:	bf38      	it	cc
 80052a4:	4601      	movcc	r1, r0
 80052a6:	f1b8 0f0b 	cmp.w	r8, #11
 80052aa:	8808      	ldrh	r0, [r1, #0]
 80052ac:	f100 0001 	add.w	r0, r0, #1
 80052b0:	8008      	strh	r0, [r1, #0]
 80052b2:	f04f 0012 	mov.w	r0, #18
 80052b6:	f04f 01f5 	mov.w	r1, #245	; 0xf5
 80052ba:	bf38      	it	cc
 80052bc:	2011      	movcc	r0, #17
 80052be:	f80c 0003 	strb.w	r0, [ip, r3]
 80052c2:	bf38      	it	cc
 80052c4:	21fd      	movcc	r1, #253	; 0xfd
 80052c6:	eb0c 0003 	add.w	r0, ip, r3
 80052ca:	3302      	adds	r3, #2
 80052cc:	4441      	add	r1, r8
 80052ce:	7041      	strb	r1, [r0, #1]
 80052d0:	2100      	movs	r1, #0
 80052d2:	9308      	str	r3, [sp, #32]
 80052d4:	9100      	str	r1, [sp, #0]
 80052d6:	4620      	mov	r0, r4
 80052d8:	2102      	movs	r1, #2
 80052da:	2213      	movs	r2, #19
 80052dc:	2307      	movs	r3, #7
 80052de:	2502      	movs	r5, #2
 80052e0:	f000 fb5c 	bl	800599c <tdefl_optimize_huffman_table>
 80052e4:	e9d4 1011 	ldrd	r1, r0, [r4, #68]	; 0x44
 80052e8:	fa05 f201 	lsl.w	r2, r5, r1
 80052ec:	3102      	adds	r1, #2
 80052ee:	4310      	orrs	r0, r2
 80052f0:	2908      	cmp	r1, #8
 80052f2:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 80052f6:	d30e      	bcc.n	8005316 <tdefl_compress_block+0x6b8>
 80052f8:	e9d4 230c 	ldrd	r2, r3, [r4, #48]	; 0x30
 80052fc:	429a      	cmp	r2, r3
 80052fe:	bf3f      	itttt	cc
 8005300:	1c51      	addcc	r1, r2, #1
 8005302:	6321      	strcc	r1, [r4, #48]	; 0x30
 8005304:	7010      	strbcc	r0, [r2, #0]
 8005306:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 800530a:	3908      	subs	r1, #8
 800530c:	0a00      	lsrs	r0, r0, #8
 800530e:	2907      	cmp	r1, #7
 8005310:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8005314:	d8f0      	bhi.n	80052f8 <tdefl_compress_block+0x69a>
 8005316:	f106 021d 	add.w	r2, r6, #29
 800531a:	2a20      	cmp	r2, #32
 800531c:	f080 830e 	bcs.w	800593c <tdefl_compress_block+0xcde>
 8005320:	408a      	lsls	r2, r1
 8005322:	3105      	adds	r1, #5
 8005324:	4310      	orrs	r0, r2
 8005326:	2908      	cmp	r1, #8
 8005328:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 800532c:	d30e      	bcc.n	800534c <tdefl_compress_block+0x6ee>
 800532e:	e9d4 230c 	ldrd	r2, r3, [r4, #48]	; 0x30
 8005332:	429a      	cmp	r2, r3
 8005334:	bf3f      	itttt	cc
 8005336:	1c51      	addcc	r1, r2, #1
 8005338:	6321      	strcc	r1, [r4, #48]	; 0x30
 800533a:	7010      	strbcc	r0, [r2, #0]
 800533c:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 8005340:	3908      	subs	r1, #8
 8005342:	0a00      	lsrs	r0, r0, #8
 8005344:	2907      	cmp	r1, #7
 8005346:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 800534a:	d8f0      	bhi.n	800532e <tdefl_compress_block+0x6d0>
 800534c:	f109 021d 	add.w	r2, r9, #29
 8005350:	2a20      	cmp	r2, #32
 8005352:	f080 8303 	bcs.w	800595c <tdefl_compress_block+0xcfe>
 8005356:	408a      	lsls	r2, r1
 8005358:	3105      	adds	r1, #5
 800535a:	4310      	orrs	r0, r2
 800535c:	2908      	cmp	r1, #8
 800535e:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8005362:	d30e      	bcc.n	8005382 <tdefl_compress_block+0x724>
 8005364:	e9d4 230c 	ldrd	r2, r3, [r4, #48]	; 0x30
 8005368:	429a      	cmp	r2, r3
 800536a:	bf3f      	itttt	cc
 800536c:	1c51      	addcc	r1, r2, #1
 800536e:	6321      	strcc	r1, [r4, #48]	; 0x30
 8005370:	7010      	strbcc	r0, [r2, #0]
 8005372:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 8005376:	3908      	subs	r1, #8
 8005378:	0a00      	lsrs	r0, r0, #8
 800537a:	2907      	cmp	r1, #7
 800537c:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8005380:	d8f0      	bhi.n	8005364 <tdefl_compress_block+0x706>
 8005382:	f24c 3c8a 	movw	ip, #50058	; 0xc38a
 8005386:	2312      	movs	r3, #18
 8005388:	f249 1652 	movw	r6, #37202	; 0x9152
 800538c:	f6c0 0c00 	movt	ip, #2048	; 0x800
 8005390:	f81c 2003 	ldrb.w	r2, [ip, r3]
 8005394:	4422      	add	r2, r4
 8005396:	5d92      	ldrb	r2, [r2, r6]
 8005398:	b922      	cbnz	r2, 80053a4 <tdefl_compress_block+0x746>
 800539a:	1e5d      	subs	r5, r3, #1
 800539c:	2b00      	cmp	r3, #0
 800539e:	462b      	mov	r3, r5
 80053a0:	dcf6      	bgt.n	8005390 <tdefl_compress_block+0x732>
 80053a2:	e000      	b.n	80053a6 <tdefl_compress_block+0x748>
 80053a4:	461d      	mov	r5, r3
 80053a6:	1c6b      	adds	r3, r5, #1
 80053a8:	2b04      	cmp	r3, #4
 80053aa:	bfd8      	it	le
 80053ac:	2304      	movle	r3, #4
 80053ae:	1f1a      	subs	r2, r3, #4
 80053b0:	2a10      	cmp	r2, #16
 80053b2:	f080 82e3 	bcs.w	800597c <tdefl_compress_block+0xd1e>
 80053b6:	408a      	lsls	r2, r1
 80053b8:	3104      	adds	r1, #4
 80053ba:	4310      	orrs	r0, r2
 80053bc:	2908      	cmp	r1, #8
 80053be:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 80053c2:	d310      	bcc.n	80053e6 <tdefl_compress_block+0x788>
 80053c4:	e9d4 620c 	ldrd	r6, r2, [r4, #48]	; 0x30
 80053c8:	4296      	cmp	r6, r2
 80053ca:	bf3f      	itttt	cc
 80053cc:	1c71      	addcc	r1, r6, #1
 80053ce:	6321      	strcc	r1, [r4, #48]	; 0x30
 80053d0:	7030      	strbcc	r0, [r6, #0]
 80053d2:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 80053d6:	3908      	subs	r1, #8
 80053d8:	0a00      	lsrs	r0, r0, #8
 80053da:	2907      	cmp	r1, #7
 80053dc:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 80053e0:	d8f0      	bhi.n	80053c4 <tdefl_compress_block+0x766>
 80053e2:	2b01      	cmp	r3, #1
 80053e4:	db23      	blt.n	800542e <tdefl_compress_block+0x7d0>
 80053e6:	2600      	movs	r6, #0
 80053e8:	f249 1e52 	movw	lr, #37202	; 0x9152
 80053ec:	f81c 2006 	ldrb.w	r2, [ip, r6]
 80053f0:	4422      	add	r2, r4
 80053f2:	f812 200e 	ldrb.w	r2, [r2, lr]
 80053f6:	2a08      	cmp	r2, #8
 80053f8:	f080 81d0 	bcs.w	800579c <tdefl_compress_block+0xb3e>
 80053fc:	408a      	lsls	r2, r1
 80053fe:	3103      	adds	r1, #3
 8005400:	4310      	orrs	r0, r2
 8005402:	2908      	cmp	r1, #8
 8005404:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8005408:	d30e      	bcc.n	8005428 <tdefl_compress_block+0x7ca>
 800540a:	e9d4 250c 	ldrd	r2, r5, [r4, #48]	; 0x30
 800540e:	42aa      	cmp	r2, r5
 8005410:	bf3f      	itttt	cc
 8005412:	1c51      	addcc	r1, r2, #1
 8005414:	6321      	strcc	r1, [r4, #48]	; 0x30
 8005416:	7010      	strbcc	r0, [r2, #0]
 8005418:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 800541c:	3908      	subs	r1, #8
 800541e:	0a00      	lsrs	r0, r0, #8
 8005420:	2907      	cmp	r1, #7
 8005422:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8005426:	d8f0      	bhi.n	800540a <tdefl_compress_block+0x7ac>
 8005428:	3601      	adds	r6, #1
 800542a:	429e      	cmp	r6, r3
 800542c:	dbde      	blt.n	80053ec <tdefl_compress_block+0x78e>
 800542e:	9a08      	ldr	r2, [sp, #32]
 8005430:	2a00      	cmp	r2, #0
 8005432:	d062      	beq.n	80054fa <tdefl_compress_block+0x89c>
 8005434:	f64c 0ef5 	movw	lr, #51445	; 0xc8f5
 8005438:	f04f 0b00 	mov.w	fp, #0
 800543c:	f10d 0924 	add.w	r9, sp, #36	; 0x24
 8005440:	f648 4cd2 	movw	ip, #36050	; 0x8cd2
 8005444:	f249 1852 	movw	r8, #37202	; 0x9152
 8005448:	f04f 0a01 	mov.w	sl, #1
 800544c:	f6c0 0e00 	movt	lr, #2048	; 0x800
 8005450:	f819 500b 	ldrb.w	r5, [r9, fp]
 8005454:	2d13      	cmp	r5, #19
 8005456:	f080 8231 	bcs.w	80058bc <tdefl_compress_block+0xc5e>
 800545a:	eb04 0245 	add.w	r2, r4, r5, lsl #1
 800545e:	f832 300c 	ldrh.w	r3, [r2, ip]
 8005462:	1962      	adds	r2, r4, r5
 8005464:	f812 2008 	ldrb.w	r2, [r2, r8]
 8005468:	fa0a f602 	lsl.w	r6, sl, r2
 800546c:	3e01      	subs	r6, #1
 800546e:	42b3      	cmp	r3, r6
 8005470:	f200 8234 	bhi.w	80058dc <tdefl_compress_block+0xc7e>
 8005474:	408b      	lsls	r3, r1
 8005476:	4411      	add	r1, r2
 8005478:	f10b 0601 	add.w	r6, fp, #1
 800547c:	4318      	orrs	r0, r3
 800547e:	2908      	cmp	r1, #8
 8005480:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8005484:	d30e      	bcc.n	80054a4 <tdefl_compress_block+0x846>
 8005486:	e9d4 230c 	ldrd	r2, r3, [r4, #48]	; 0x30
 800548a:	429a      	cmp	r2, r3
 800548c:	bf3f      	itttt	cc
 800548e:	1c51      	addcc	r1, r2, #1
 8005490:	6321      	strcc	r1, [r4, #48]	; 0x30
 8005492:	7010      	strbcc	r0, [r2, #0]
 8005494:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 8005498:	3908      	subs	r1, #8
 800549a:	0a00      	lsrs	r0, r0, #8
 800549c:	2907      	cmp	r1, #7
 800549e:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 80054a2:	d8f0      	bhi.n	8005486 <tdefl_compress_block+0x828>
 80054a4:	2d0f      	cmp	r5, #15
 80054a6:	d924      	bls.n	80054f2 <tdefl_compress_block+0x894>
 80054a8:	eb0e 0305 	add.w	r3, lr, r5
 80054ac:	f819 2006 	ldrb.w	r2, [r9, r6]
 80054b0:	f813 5c10 	ldrb.w	r5, [r3, #-16]
 80054b4:	fa0a f305 	lsl.w	r3, sl, r5
 80054b8:	3b01      	subs	r3, #1
 80054ba:	429a      	cmp	r2, r3
 80054bc:	f200 821e 	bhi.w	80058fc <tdefl_compress_block+0xc9e>
 80054c0:	408a      	lsls	r2, r1
 80054c2:	4429      	add	r1, r5
 80054c4:	f10b 0b02 	add.w	fp, fp, #2
 80054c8:	4310      	orrs	r0, r2
 80054ca:	2908      	cmp	r1, #8
 80054cc:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 80054d0:	d310      	bcc.n	80054f4 <tdefl_compress_block+0x896>
 80054d2:	e9d4 230c 	ldrd	r2, r3, [r4, #48]	; 0x30
 80054d6:	429a      	cmp	r2, r3
 80054d8:	bf3f      	itttt	cc
 80054da:	1c51      	addcc	r1, r2, #1
 80054dc:	6321      	strcc	r1, [r4, #48]	; 0x30
 80054de:	7010      	strbcc	r0, [r2, #0]
 80054e0:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 80054e4:	3908      	subs	r1, #8
 80054e6:	0a00      	lsrs	r0, r0, #8
 80054e8:	2907      	cmp	r1, #7
 80054ea:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 80054ee:	d8f0      	bhi.n	80054d2 <tdefl_compress_block+0x874>
 80054f0:	e000      	b.n	80054f4 <tdefl_compress_block+0x896>
 80054f2:	46b3      	mov	fp, r6
 80054f4:	9a08      	ldr	r2, [sp, #32]
 80054f6:	4593      	cmp	fp, r2
 80054f8:	d3aa      	bcc.n	8005450 <tdefl_compress_block+0x7f2>
 80054fa:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 80054fc:	f249 2272 	movw	r2, #37490	; 0x9272
 8005500:	eb04 0b02 	add.w	fp, r4, r2
 8005504:	459b      	cmp	fp, r3
 8005506:	f080 8117 	bcs.w	8005738 <tdefl_compress_block+0xada>
 800550a:	f04f 0801 	mov.w	r8, #1
 800550e:	f648 7e12 	movw	lr, #36626	; 0x8f12
 8005512:	f648 0952 	movw	r9, #34898	; 0x8852
 8005516:	f04f 0c01 	mov.w	ip, #1
 800551a:	f1bc 0f01 	cmp.w	ip, #1
 800551e:	bf04      	itt	eq
 8005520:	f81b 3b01 	ldrbeq.w	r3, [fp], #1
 8005524:	f443 7c80 	orreq.w	ip, r3, #256	; 0x100
 8005528:	ea5f 73cc 	movs.w	r3, ip, lsl #31
 800552c:	d12a      	bne.n	8005584 <tdefl_compress_block+0x926>
 800552e:	f81b 6b01 	ldrb.w	r6, [fp], #1
 8005532:	19a2      	adds	r2, r4, r6
 8005534:	f812 300e 	ldrb.w	r3, [r2, lr]
 8005538:	2b00      	cmp	r3, #0
 800553a:	f000 813f 	beq.w	80057bc <tdefl_compress_block+0xb5e>
 800553e:	eb04 0246 	add.w	r2, r4, r6, lsl #1
 8005542:	f832 6009 	ldrh.w	r6, [r2, r9]
 8005546:	fa08 f203 	lsl.w	r2, r8, r3
 800554a:	3a01      	subs	r2, #1
 800554c:	4296      	cmp	r6, r2
 800554e:	f200 8145 	bhi.w	80057dc <tdefl_compress_block+0xb7e>
 8005552:	fa06 f201 	lsl.w	r2, r6, r1
 8005556:	4419      	add	r1, r3
 8005558:	4310      	orrs	r0, r2
 800555a:	2908      	cmp	r1, #8
 800555c:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8005560:	f0c0 80e4 	bcc.w	800572c <tdefl_compress_block+0xace>
 8005564:	e9d4 320c 	ldrd	r3, r2, [r4, #48]	; 0x30
 8005568:	4293      	cmp	r3, r2
 800556a:	bf3f      	itttt	cc
 800556c:	1c59      	addcc	r1, r3, #1
 800556e:	6321      	strcc	r1, [r4, #48]	; 0x30
 8005570:	7018      	strbcc	r0, [r3, #0]
 8005572:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 8005576:	3908      	subs	r1, #8
 8005578:	0a00      	lsrs	r0, r0, #8
 800557a:	2907      	cmp	r1, #7
 800557c:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 8005580:	d8f0      	bhi.n	8005564 <tdefl_compress_block+0x906>
 8005582:	e0d3      	b.n	800572c <tdefl_compress_block+0xace>
 8005584:	f89b 5000 	ldrb.w	r5, [fp]
 8005588:	f24c 128a 	movw	r2, #49546	; 0xc18a
 800558c:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005590:	f832 3015 	ldrh.w	r3, [r2, r5, lsl #1]
 8005594:	18e6      	adds	r6, r4, r3
 8005596:	f816 600e 	ldrb.w	r6, [r6, lr]
 800559a:	2e00      	cmp	r6, #0
 800559c:	f000 812e 	beq.w	80057fc <tdefl_compress_block+0xb9e>
 80055a0:	eb04 0343 	add.w	r3, r4, r3, lsl #1
 80055a4:	fa08 f206 	lsl.w	r2, r8, r6
 80055a8:	f833 3009 	ldrh.w	r3, [r3, r9]
 80055ac:	3a01      	subs	r2, #1
 80055ae:	4293      	cmp	r3, r2
 80055b0:	f200 8134 	bhi.w	800581c <tdefl_compress_block+0xbbe>
 80055b4:	f89b 9001 	ldrb.w	r9, [fp, #1]
 80055b8:	f89b e002 	ldrb.w	lr, [fp, #2]
 80055bc:	fa03 f201 	lsl.w	r2, r3, r1
 80055c0:	440e      	add	r6, r1
 80055c2:	ea40 0302 	orr.w	r3, r0, r2
 80055c6:	2e08      	cmp	r6, #8
 80055c8:	e9c4 6311 	strd	r6, r3, [r4, #68]	; 0x44
 80055cc:	d30e      	bcc.n	80055ec <tdefl_compress_block+0x98e>
 80055ce:	e9d4 010c 	ldrd	r0, r1, [r4, #48]	; 0x30
 80055d2:	4288      	cmp	r0, r1
 80055d4:	bf3f      	itttt	cc
 80055d6:	1c41      	addcc	r1, r0, #1
 80055d8:	6321      	strcc	r1, [r4, #48]	; 0x30
 80055da:	7003      	strbcc	r3, [r0, #0]
 80055dc:	e9d4 6311 	ldrdcc	r6, r3, [r4, #68]	; 0x44
 80055e0:	3e08      	subs	r6, #8
 80055e2:	0a1b      	lsrs	r3, r3, #8
 80055e4:	2e07      	cmp	r6, #7
 80055e6:	e9c4 6311 	strd	r6, r3, [r4, #68]	; 0x44
 80055ea:	d8f0      	bhi.n	80055ce <tdefl_compress_block+0x970>
 80055ec:	f24c 30e4 	movw	r0, #50148	; 0xc3e4
 80055f0:	f24c 31a0 	movw	r1, #50080	; 0xc3a0
 80055f4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80055f8:	f6c0 0100 	movt	r1, #2048	; 0x800
 80055fc:	5d40      	ldrb	r0, [r0, r5]
 80055fe:	f851 1020 	ldr.w	r1, [r1, r0, lsl #2]
 8005602:	fa08 f200 	lsl.w	r2, r8, r0
 8005606:	3a01      	subs	r2, #1
 8005608:	4029      	ands	r1, r5
 800560a:	4291      	cmp	r1, r2
 800560c:	f200 8116 	bhi.w	800583c <tdefl_compress_block+0xbde>
 8005610:	40b1      	lsls	r1, r6
 8005612:	ea49 2a0e 	orr.w	sl, r9, lr, lsl #8
 8005616:	eb00 0906 	add.w	r9, r0, r6
 800561a:	4319      	orrs	r1, r3
 800561c:	f1b9 0f08 	cmp.w	r9, #8
 8005620:	e9c4 9111 	strd	r9, r1, [r4, #68]	; 0x44
 8005624:	d310      	bcc.n	8005648 <tdefl_compress_block+0x9ea>
 8005626:	e9d4 020c 	ldrd	r0, r2, [r4, #48]	; 0x30
 800562a:	4290      	cmp	r0, r2
 800562c:	bf3f      	itttt	cc
 800562e:	1c42      	addcc	r2, r0, #1
 8005630:	6322      	strcc	r2, [r4, #48]	; 0x30
 8005632:	7001      	strbcc	r1, [r0, #0]
 8005634:	e9d4 9111 	ldrdcc	r9, r1, [r4, #68]	; 0x44
 8005638:	f1a9 0908 	sub.w	r9, r9, #8
 800563c:	0a09      	lsrs	r1, r1, #8
 800563e:	f1b9 0f07 	cmp.w	r9, #7
 8005642:	e9c4 9111 	strd	r9, r1, [r4, #68]	; 0x44
 8005646:	d8ee      	bhi.n	8005626 <tdefl_compress_block+0x9c8>
 8005648:	2000      	movs	r0, #0
 800564a:	ebb0 2f5a 	cmp.w	r0, sl, lsr #9
 800564e:	d10c      	bne.n	800566a <tdefl_compress_block+0xa0c>
 8005650:	f24c 40e4 	movw	r0, #50404	; 0xc4e4
 8005654:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005658:	eb00 030a 	add.w	r3, r0, sl
 800565c:	f64b 7009 	movw	r0, #48905	; 0xbf09
 8005660:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005664:	f810 600a 	ldrb.w	r6, [r0, sl]
 8005668:	e00b      	b.n	8005682 <tdefl_compress_block+0xa24>
 800566a:	f24c 60e4 	movw	r0, #50916	; 0xc6e4
 800566e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005672:	eb00 030e 	add.w	r3, r0, lr
 8005676:	f24c 1009 	movw	r0, #49417	; 0xc109
 800567a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800567e:	f810 600e 	ldrb.w	r6, [r0, lr]
 8005682:	19a0      	adds	r0, r4, r6
 8005684:	f249 0232 	movw	r2, #36914	; 0x9032
 8005688:	5c80      	ldrb	r0, [r0, r2]
 800568a:	2800      	cmp	r0, #0
 800568c:	f000 80e6 	beq.w	800585c <tdefl_compress_block+0xbfe>
 8005690:	eb04 0246 	add.w	r2, r4, r6, lsl #1
 8005694:	f648 2692 	movw	r6, #35474	; 0x8a92
 8005698:	5b96      	ldrh	r6, [r2, r6]
 800569a:	fa08 f200 	lsl.w	r2, r8, r0
 800569e:	3a01      	subs	r2, #1
 80056a0:	4296      	cmp	r6, r2
 80056a2:	f200 80eb 	bhi.w	800587c <tdefl_compress_block+0xc1e>
 80056a6:	781d      	ldrb	r5, [r3, #0]
 80056a8:	fa06 f209 	lsl.w	r2, r6, r9
 80056ac:	eb00 0309 	add.w	r3, r0, r9
 80056b0:	4311      	orrs	r1, r2
 80056b2:	2b08      	cmp	r3, #8
 80056b4:	e9c4 3111 	strd	r3, r1, [r4, #68]	; 0x44
 80056b8:	d30e      	bcc.n	80056d8 <tdefl_compress_block+0xa7a>
 80056ba:	e9d4 020c 	ldrd	r0, r2, [r4, #48]	; 0x30
 80056be:	4290      	cmp	r0, r2
 80056c0:	bf3f      	itttt	cc
 80056c2:	1c42      	addcc	r2, r0, #1
 80056c4:	6322      	strcc	r2, [r4, #48]	; 0x30
 80056c6:	7001      	strbcc	r1, [r0, #0]
 80056c8:	e9d4 3111 	ldrdcc	r3, r1, [r4, #68]	; 0x44
 80056cc:	3b08      	subs	r3, #8
 80056ce:	0a09      	lsrs	r1, r1, #8
 80056d0:	2b07      	cmp	r3, #7
 80056d2:	e9c4 3111 	strd	r3, r1, [r4, #68]	; 0x44
 80056d6:	d8f0      	bhi.n	80056ba <tdefl_compress_block+0xa5c>
 80056d8:	f24c 30a0 	movw	r0, #50080	; 0xc3a0
 80056dc:	fa08 f205 	lsl.w	r2, r8, r5
 80056e0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80056e4:	3a01      	subs	r2, #1
 80056e6:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 80056ea:	ea00 000a 	and.w	r0, r0, sl
 80056ee:	4290      	cmp	r0, r2
 80056f0:	f200 80d4 	bhi.w	800589c <tdefl_compress_block+0xc3e>
 80056f4:	4098      	lsls	r0, r3
 80056f6:	f10b 0b03 	add.w	fp, fp, #3
 80056fa:	f648 7e12 	movw	lr, #36626	; 0x8f12
 80056fe:	f648 0952 	movw	r9, #34898	; 0x8852
 8005702:	4308      	orrs	r0, r1
 8005704:	1959      	adds	r1, r3, r5
 8005706:	2908      	cmp	r1, #8
 8005708:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 800570c:	d30e      	bcc.n	800572c <tdefl_compress_block+0xace>
 800570e:	e9d4 320c 	ldrd	r3, r2, [r4, #48]	; 0x30
 8005712:	4293      	cmp	r3, r2
 8005714:	bf3f      	itttt	cc
 8005716:	1c59      	addcc	r1, r3, #1
 8005718:	6321      	strcc	r1, [r4, #48]	; 0x30
 800571a:	7018      	strbcc	r0, [r3, #0]
 800571c:	e9d4 1011 	ldrdcc	r1, r0, [r4, #68]	; 0x44
 8005720:	3908      	subs	r1, #8
 8005722:	0a00      	lsrs	r0, r0, #8
 8005724:	2907      	cmp	r1, #7
 8005726:	e9c4 1011 	strd	r1, r0, [r4, #68]	; 0x44
 800572a:	d8f0      	bhi.n	800570e <tdefl_compress_block+0xab0>
 800572c:	6aa2      	ldr	r2, [r4, #40]	; 0x28
 800572e:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
 8005732:	4593      	cmp	fp, r2
 8005734:	f4ff aef1 	bcc.w	800551a <tdefl_compress_block+0x8bc>
 8005738:	f249 0312 	movw	r3, #36882	; 0x9012
 800573c:	f648 2252 	movw	r2, #35410	; 0x8a52
 8005740:	2601      	movs	r6, #1
 8005742:	5ce3      	ldrb	r3, [r4, r3]
 8005744:	5aa2      	ldrh	r2, [r4, r2]
 8005746:	409e      	lsls	r6, r3
 8005748:	3e01      	subs	r6, #1
 800574a:	42b2      	cmp	r2, r6
 800574c:	f200 80e6 	bhi.w	800591c <tdefl_compress_block+0xcbe>
 8005750:	408a      	lsls	r2, r1
 8005752:	440b      	add	r3, r1
 8005754:	4302      	orrs	r2, r0
 8005756:	2000      	movs	r0, #0
 8005758:	e9c4 3211 	strd	r3, r2, [r4, #68]	; 0x44
 800575c:	e9d4 160c 	ldrd	r1, r6, [r4, #48]	; 0x30
 8005760:	42b1      	cmp	r1, r6
 8005762:	bf38      	it	cc
 8005764:	2001      	movcc	r0, #1
 8005766:	2b08      	cmp	r3, #8
 8005768:	d313      	bcc.n	8005792 <tdefl_compress_block+0xb34>
 800576a:	07c0      	lsls	r0, r0, #31
 800576c:	d006      	beq.n	800577c <tdefl_compress_block+0xb1e>
 800576e:	1c48      	adds	r0, r1, #1
 8005770:	6320      	str	r0, [r4, #48]	; 0x30
 8005772:	700a      	strb	r2, [r1, #0]
 8005774:	e9d4 160c 	ldrd	r1, r6, [r4, #48]	; 0x30
 8005778:	e9d4 3211 	ldrd	r3, r2, [r4, #68]	; 0x44
 800577c:	0a12      	lsrs	r2, r2, #8
 800577e:	3b08      	subs	r3, #8
 8005780:	42b1      	cmp	r1, r6
 8005782:	f04f 0000 	mov.w	r0, #0
 8005786:	e9c4 3211 	strd	r3, r2, [r4, #68]	; 0x44
 800578a:	bf38      	it	cc
 800578c:	2001      	movcc	r0, #1
 800578e:	2b07      	cmp	r3, #7
 8005790:	d8eb      	bhi.n	800576a <tdefl_compress_block+0xb0c>
 8005792:	f50d 7d29 	add.w	sp, sp, #676	; 0x2a4
 8005796:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800579a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800579c:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 80057a0:	f64c 2287 	movw	r2, #51847	; 0xca87
 80057a4:	f64c 2344 	movw	r3, #51780	; 0xca44
 80057a8:	f240 71dd 	movw	r1, #2013	; 0x7dd
 80057ac:	f6c0 0000 	movt	r0, #2048	; 0x800
 80057b0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80057b4:	f6c0 0300 	movt	r3, #2048	; 0x800
 80057b8:	f000 fc24 	bl	8006004 <__assert_func>
 80057bc:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 80057c0:	f64c 22c1 	movw	r2, #51905	; 0xcac1
 80057c4:	f64c 332a 	movw	r3, #52010	; 0xcb2a
 80057c8:	f640 0177 	movw	r1, #2167	; 0x877
 80057cc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80057d0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80057d4:	f6c0 0300 	movt	r3, #2048	; 0x800
 80057d8:	f000 fc14 	bl	8006004 <__assert_func>
 80057dc:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 80057e0:	f64c 22c1 	movw	r2, #51905	; 0xcac1
 80057e4:	f64c 2344 	movw	r3, #51780	; 0xca44
 80057e8:	f640 0178 	movw	r1, #2168	; 0x878
 80057ec:	f6c0 0000 	movt	r0, #2048	; 0x800
 80057f0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80057f4:	f6c0 0300 	movt	r3, #2048	; 0x800
 80057f8:	f000 fc04 	bl	8006004 <__assert_func>
 80057fc:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8005800:	f64c 22c1 	movw	r2, #51905	; 0xcac1
 8005804:	f64c 23d9 	movw	r3, #51929	; 0xcad9
 8005808:	f640 0164 	movw	r1, #2148	; 0x864
 800580c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005810:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005814:	f6c0 0300 	movt	r3, #2048	; 0x800
 8005818:	f000 fbf4 	bl	8006004 <__assert_func>
 800581c:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8005820:	f64c 22c1 	movw	r2, #51905	; 0xcac1
 8005824:	f64c 2344 	movw	r3, #51780	; 0xca44
 8005828:	f640 0165 	movw	r1, #2149	; 0x865
 800582c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005830:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005834:	f6c0 0300 	movt	r3, #2048	; 0x800
 8005838:	f000 fbe4 	bl	8006004 <__assert_func>
 800583c:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8005840:	f64c 22c1 	movw	r2, #51905	; 0xcac1
 8005844:	f64c 2344 	movw	r3, #51780	; 0xca44
 8005848:	f640 0166 	movw	r1, #2150	; 0x866
 800584c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005850:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005854:	f6c0 0300 	movt	r3, #2048	; 0x800
 8005858:	f000 fbd4 	bl	8006004 <__assert_func>
 800585c:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8005860:	f64c 22c1 	movw	r2, #51905	; 0xcac1
 8005864:	f64c 330d 	movw	r3, #51981	; 0xcb0d
 8005868:	f44f 6107 	mov.w	r1, #2160	; 0x870
 800586c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005870:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005874:	f6c0 0300 	movt	r3, #2048	; 0x800
 8005878:	f000 fbc4 	bl	8006004 <__assert_func>
 800587c:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8005880:	f64c 22c1 	movw	r2, #51905	; 0xcac1
 8005884:	f64c 2344 	movw	r3, #51780	; 0xca44
 8005888:	f640 0171 	movw	r1, #2161	; 0x871
 800588c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005890:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005894:	f6c0 0300 	movt	r3, #2048	; 0x800
 8005898:	f000 fbb4 	bl	8006004 <__assert_func>
 800589c:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 80058a0:	f64c 22c1 	movw	r2, #51905	; 0xcac1
 80058a4:	f64c 2344 	movw	r3, #51780	; 0xca44
 80058a8:	f640 0172 	movw	r1, #2162	; 0x872
 80058ac:	f6c0 0000 	movt	r0, #2048	; 0x800
 80058b0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80058b4:	f6c0 0300 	movt	r3, #2048	; 0x800
 80058b8:	f000 fba4 	bl	8006004 <__assert_func>
 80058bc:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 80058c0:	f64c 2287 	movw	r2, #51847	; 0xca87
 80058c4:	f64c 23a1 	movw	r3, #51873	; 0xcaa1
 80058c8:	f240 71e1 	movw	r1, #2017	; 0x7e1
 80058cc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80058d0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80058d4:	f6c0 0300 	movt	r3, #2048	; 0x800
 80058d8:	f000 fb94 	bl	8006004 <__assert_func>
 80058dc:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 80058e0:	f64c 2287 	movw	r2, #51847	; 0xca87
 80058e4:	f64c 2344 	movw	r3, #51780	; 0xca44
 80058e8:	f240 71e2 	movw	r1, #2018	; 0x7e2
 80058ec:	f6c0 0000 	movt	r0, #2048	; 0x800
 80058f0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80058f4:	f6c0 0300 	movt	r3, #2048	; 0x800
 80058f8:	f000 fb84 	bl	8006004 <__assert_func>
 80058fc:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8005900:	f64c 2287 	movw	r2, #51847	; 0xca87
 8005904:	f64c 2344 	movw	r3, #51780	; 0xca44
 8005908:	f240 71e3 	movw	r1, #2019	; 0x7e3
 800590c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005910:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005914:	f6c0 0300 	movt	r3, #2048	; 0x800
 8005918:	f000 fb74 	bl	8006004 <__assert_func>
 800591c:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8005920:	f64c 22c1 	movw	r2, #51905	; 0xcac1
 8005924:	f64c 2344 	movw	r3, #51780	; 0xca44
 8005928:	f640 017c 	movw	r1, #2172	; 0x87c
 800592c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005930:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005934:	f6c0 0300 	movt	r3, #2048	; 0x800
 8005938:	f000 fb64 	bl	8006004 <__assert_func>
 800593c:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8005940:	f64c 2287 	movw	r2, #51847	; 0xca87
 8005944:	f64c 2344 	movw	r3, #51780	; 0xca44
 8005948:	f44f 61fb 	mov.w	r1, #2008	; 0x7d8
 800594c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005950:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005954:	f6c0 0300 	movt	r3, #2048	; 0x800
 8005958:	f000 fb54 	bl	8006004 <__assert_func>
 800595c:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8005960:	f64c 2287 	movw	r2, #51847	; 0xca87
 8005964:	f64c 2344 	movw	r3, #51780	; 0xca44
 8005968:	f240 71d9 	movw	r1, #2009	; 0x7d9
 800596c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005970:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005974:	f6c0 0300 	movt	r3, #2048	; 0x800
 8005978:	f000 fb44 	bl	8006004 <__assert_func>
 800597c:	f64c 00fd 	movw	r0, #51453	; 0xc8fd
 8005980:	f64c 2287 	movw	r2, #51847	; 0xca87
 8005984:	f64c 2344 	movw	r3, #51780	; 0xca44
 8005988:	f240 71dc 	movw	r1, #2012	; 0x7dc
 800598c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005990:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005994:	f6c0 0300 	movt	r3, #2048	; 0x800
 8005998:	f000 fb34 	bl	8006004 <__assert_func>

0800599c <tdefl_optimize_huffman_table>:
 800599c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800599e:	af03      	add	r7, sp, #12
 80059a0:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80059a4:	f5ad 5dac 	sub.w	sp, sp, #5504	; 0x1580
 80059a8:	b087      	sub	sp, #28
 80059aa:	460c      	mov	r4, r1
 80059ac:	4683      	mov	fp, r0
 80059ae:	f60d 1014 	addw	r0, sp, #2324	; 0x914
 80059b2:	2184      	movs	r1, #132	; 0x84
 80059b4:	4698      	mov	r8, r3
 80059b6:	4691      	mov	r9, r2
 80059b8:	f000 fb1e 	bl	8005ff8 <__aeabi_memclr>
 80059bc:	68b8      	ldr	r0, [r7, #8]
 80059be:	b1c0      	cbz	r0, 80059f2 <tdefl_optimize_huffman_table+0x56>
 80059c0:	f1b9 0f01 	cmp.w	r9, #1
 80059c4:	f60d 1614 	addw	r6, sp, #2324	; 0x914
 80059c8:	f2c0 81c8 	blt.w	8005d5c <tdefl_optimize_huffman_table+0x3c0>
 80059cc:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 80059d0:	f648 7112 	movw	r1, #36626	; 0x8f12
 80059d4:	eb0b 1040 	add.w	r0, fp, r0, lsl #5
 80059d8:	4408      	add	r0, r1
 80059da:	4649      	mov	r1, r9
 80059dc:	f810 2b01 	ldrb.w	r2, [r0], #1
 80059e0:	3901      	subs	r1, #1
 80059e2:	f856 3022 	ldr.w	r3, [r6, r2, lsl #2]
 80059e6:	f103 0301 	add.w	r3, r3, #1
 80059ea:	f846 3022 	str.w	r3, [r6, r2, lsl #2]
 80059ee:	d1f5      	bne.n	80059dc <tdefl_optimize_huffman_table+0x40>
 80059f0:	e1b4      	b.n	8005d5c <tdefl_optimize_huffman_table+0x3c0>
 80059f2:	f1b9 0f01 	cmp.w	r9, #1
 80059f6:	db1a      	blt.n	8005a2e <tdefl_optimize_huffman_table+0x92>
 80059f8:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 80059fc:	f248 1192 	movw	r1, #33170	; 0x8192
 8005a00:	f20d 4294 	addw	r2, sp, #1172	; 0x494
 8005a04:	f04f 0a00 	mov.w	sl, #0
 8005a08:	eb0b 1080 	add.w	r0, fp, r0, lsl #6
 8005a0c:	4408      	add	r0, r1
 8005a0e:	2100      	movs	r1, #0
 8005a10:	f830 3011 	ldrh.w	r3, [r0, r1, lsl #1]
 8005a14:	2b00      	cmp	r3, #0
 8005a16:	bf1f      	itttt	ne
 8005a18:	f822 302a 	strhne.w	r3, [r2, sl, lsl #2]
 8005a1c:	eb02 038a 	addne.w	r3, r2, sl, lsl #2
 8005a20:	8059      	strhne	r1, [r3, #2]
 8005a22:	f10a 0a01 	addne.w	sl, sl, #1
 8005a26:	3101      	adds	r1, #1
 8005a28:	4589      	cmp	r9, r1
 8005a2a:	d1f1      	bne.n	8005a10 <tdefl_optimize_huffman_table+0x74>
 8005a2c:	e001      	b.n	8005a32 <tdefl_optimize_huffman_table+0x96>
 8005a2e:	f04f 0a00 	mov.w	sl, #0
 8005a32:	f60d 5698 	addw	r6, sp, #3480	; 0xd98
 8005a36:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8005a3a:	f8cd 800c 	str.w	r8, [sp, #12]
 8005a3e:	4630      	mov	r0, r6
 8005a40:	f000 fada 	bl	8005ff8 <__aeabi_memclr>
 8005a44:	f1ba 0f00 	cmp.w	sl, #0
 8005a48:	e9cd b900 	strd	fp, r9, [sp]
 8005a4c:	9402      	str	r4, [sp, #8]
 8005a4e:	d01e      	beq.n	8005a8e <tdefl_optimize_huffman_table+0xf2>
 8005a50:	f20d 4094 	addw	r0, sp, #1172	; 0x494
 8005a54:	f44f 6c80 	mov.w	ip, #1024	; 0x400
 8005a58:	f240 72fc 	movw	r2, #2044	; 0x7fc
 8005a5c:	4653      	mov	r3, sl
 8005a5e:	f830 5b04 	ldrh.w	r5, [r0], #4
 8005a62:	3b01      	subs	r3, #1
 8005a64:	b2ec      	uxtb	r4, r5
 8005a66:	f856 1024 	ldr.w	r1, [r6, r4, lsl #2]
 8005a6a:	f101 0101 	add.w	r1, r1, #1
 8005a6e:	f846 1024 	str.w	r1, [r6, r4, lsl #2]
 8005a72:	ea4c 1195 	orr.w	r1, ip, r5, lsr #6
 8005a76:	ea01 0102 	and.w	r1, r1, r2
 8005a7a:	5875      	ldr	r5, [r6, r1]
 8005a7c:	f105 0501 	add.w	r5, r5, #1
 8005a80:	5075      	str	r5, [r6, r1]
 8005a82:	d1ec      	bne.n	8005a5e <tdefl_optimize_huffman_table+0xc2>
 8005a84:	f50d 5e80 	add.w	lr, sp, #4096	; 0x1000
 8005a88:	f8de 0198 	ldr.w	r0, [lr, #408]	; 0x198
 8005a8c:	e000      	b.n	8005a90 <tdefl_optimize_huffman_table+0xf4>
 8005a8e:	2000      	movs	r0, #0
 8005a90:	4550      	cmp	r0, sl
 8005a92:	f04f 0102 	mov.w	r1, #2
 8005a96:	f60d 5c98 	addw	ip, sp, #3480	; 0xd98
 8005a9a:	f20d 4994 	addw	r9, sp, #1172	; 0x494
 8005a9e:	a805      	add	r0, sp, #20
 8005aa0:	f60d 1398 	addw	r3, sp, #2456	; 0x998
 8005aa4:	f04f 0800 	mov.w	r8, #0
 8005aa8:	bf08      	it	eq
 8005aaa:	2101      	moveq	r1, #1
 8005aac:	9104      	str	r1, [sp, #16]
 8005aae:	2100      	movs	r1, #0
 8005ab0:	46ce      	mov	lr, r9
 8005ab2:	4681      	mov	r9, r0
 8005ab4:	2000      	movs	r0, #0
 8005ab6:	4665      	mov	r5, ip
 8005ab8:	2200      	movs	r2, #0
 8005aba:	f855 bb04 	ldr.w	fp, [r5], #4
 8005abe:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
 8005ac2:	3201      	adds	r2, #1
 8005ac4:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8005ac8:	4458      	add	r0, fp
 8005aca:	d1f6      	bne.n	8005aba <tdefl_optimize_huffman_table+0x11e>
 8005acc:	f1ba 0f00 	cmp.w	sl, #0
 8005ad0:	4670      	mov	r0, lr
 8005ad2:	4655      	mov	r5, sl
 8005ad4:	d014      	beq.n	8005b00 <tdefl_optimize_huffman_table+0x164>
 8005ad6:	8802      	ldrh	r2, [r0, #0]
 8005ad8:	3d01      	subs	r5, #1
 8005ada:	fa22 f201 	lsr.w	r2, r2, r1
 8005ade:	b2d2      	uxtb	r2, r2
 8005ae0:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
 8005ae4:	f104 0601 	add.w	r6, r4, #1
 8005ae8:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8005aec:	8806      	ldrh	r6, [r0, #0]
 8005aee:	8842      	ldrh	r2, [r0, #2]
 8005af0:	f100 0004 	add.w	r0, r0, #4
 8005af4:	f829 6024 	strh.w	r6, [r9, r4, lsl #2]
 8005af8:	eb09 0484 	add.w	r4, r9, r4, lsl #2
 8005afc:	8062      	strh	r2, [r4, #2]
 8005afe:	d1ea      	bne.n	8005ad6 <tdefl_optimize_huffman_table+0x13a>
 8005b00:	9804      	ldr	r0, [sp, #16]
 8005b02:	f108 0801 	add.w	r8, r8, #1
 8005b06:	f50c 6c80 	add.w	ip, ip, #1024	; 0x400
 8005b0a:	3108      	adds	r1, #8
 8005b0c:	4580      	cmp	r8, r0
 8005b0e:	4670      	mov	r0, lr
 8005b10:	d1ce      	bne.n	8005ab0 <tdefl_optimize_huffman_table+0x114>
 8005b12:	f8dd b000 	ldr.w	fp, [sp]
 8005b16:	9e03      	ldr	r6, [sp, #12]
 8005b18:	f1ba 0f00 	cmp.w	sl, #0
 8005b1c:	f000 80eb 	beq.w	8005cf6 <tdefl_optimize_huffman_table+0x35a>
 8005b20:	f1ba 0f01 	cmp.w	sl, #1
 8005b24:	d103      	bne.n	8005b2e <tdefl_optimize_huffman_table+0x192>
 8005b26:	2001      	movs	r0, #1
 8005b28:	f8a9 0000 	strh.w	r0, [r9]
 8005b2c:	e088      	b.n	8005c40 <tdefl_optimize_huffman_table+0x2a4>
 8005b2e:	f8b9 0004 	ldrh.w	r0, [r9, #4]
 8005b32:	f8b9 1000 	ldrh.w	r1, [r9]
 8005b36:	f1aa 0e01 	sub.w	lr, sl, #1
 8005b3a:	f1be 0f02 	cmp.w	lr, #2
 8005b3e:	eb01 0400 	add.w	r4, r1, r0
 8005b42:	f8a9 4000 	strh.w	r4, [r9]
 8005b46:	db3d      	blt.n	8005bc4 <tdefl_optimize_huffman_table+0x228>
 8005b48:	f1aa 0803 	sub.w	r8, sl, #3
 8005b4c:	f109 0c04 	add.w	ip, r9, #4
 8005b50:	2302      	movs	r3, #2
 8005b52:	2100      	movs	r1, #0
 8005b54:	2600      	movs	r6, #0
 8005b56:	e002      	b.n	8005b5e <tdefl_optimize_huffman_table+0x1c2>
 8005b58:	f839 4026 	ldrh.w	r4, [r9, r6, lsl #2]
 8005b5c:	4601      	mov	r1, r0
 8005b5e:	1c48      	adds	r0, r1, #1
 8005b60:	4553      	cmp	r3, sl
 8005b62:	da04      	bge.n	8005b6e <tdefl_optimize_huffman_table+0x1d2>
 8005b64:	f839 5023 	ldrh.w	r5, [r9, r3, lsl #2]
 8005b68:	b2a2      	uxth	r2, r4
 8005b6a:	42aa      	cmp	r2, r5
 8005b6c:	d204      	bcs.n	8005b78 <tdefl_optimize_huffman_table+0x1dc>
 8005b6e:	f82c 4021 	strh.w	r4, [ip, r1, lsl #2]
 8005b72:	1c74      	adds	r4, r6, #1
 8005b74:	4605      	mov	r5, r0
 8005b76:	e002      	b.n	8005b7e <tdefl_optimize_huffman_table+0x1e2>
 8005b78:	4634      	mov	r4, r6
 8005b7a:	3301      	adds	r3, #1
 8005b7c:	4606      	mov	r6, r0
 8005b7e:	4553      	cmp	r3, sl
 8005b80:	f829 5026 	strh.w	r5, [r9, r6, lsl #2]
 8005b84:	da08      	bge.n	8005b98 <tdefl_optimize_huffman_table+0x1fc>
 8005b86:	4284      	cmp	r4, r0
 8005b88:	da10      	bge.n	8005bac <tdefl_optimize_huffman_table+0x210>
 8005b8a:	f839 5023 	ldrh.w	r5, [r9, r3, lsl #2]
 8005b8e:	f839 2024 	ldrh.w	r2, [r9, r4, lsl #2]
 8005b92:	42aa      	cmp	r2, r5
 8005b94:	d302      	bcc.n	8005b9c <tdefl_optimize_huffman_table+0x200>
 8005b96:	e00b      	b.n	8005bb0 <tdefl_optimize_huffman_table+0x214>
 8005b98:	f839 2024 	ldrh.w	r2, [r9, r4, lsl #2]
 8005b9c:	f83c 5021 	ldrh.w	r5, [ip, r1, lsl #2]
 8005ba0:	1c66      	adds	r6, r4, #1
 8005ba2:	442a      	add	r2, r5
 8005ba4:	f82c 2021 	strh.w	r2, [ip, r1, lsl #2]
 8005ba8:	4602      	mov	r2, r0
 8005baa:	e007      	b.n	8005bbc <tdefl_optimize_huffman_table+0x220>
 8005bac:	f839 5023 	ldrh.w	r5, [r9, r3, lsl #2]
 8005bb0:	f83c 2021 	ldrh.w	r2, [ip, r1, lsl #2]
 8005bb4:	4626      	mov	r6, r4
 8005bb6:	3301      	adds	r3, #1
 8005bb8:	4604      	mov	r4, r0
 8005bba:	442a      	add	r2, r5
 8005bbc:	4588      	cmp	r8, r1
 8005bbe:	f829 2024 	strh.w	r2, [r9, r4, lsl #2]
 8005bc2:	d1c9      	bne.n	8005b58 <tdefl_optimize_huffman_table+0x1bc>
 8005bc4:	f1aa 0502 	sub.w	r5, sl, #2
 8005bc8:	2000      	movs	r0, #0
 8005bca:	f829 0025 	strh.w	r0, [r9, r5, lsl #2]
 8005bce:	f1aa 0003 	sub.w	r0, sl, #3
 8005bd2:	2800      	cmp	r0, #0
 8005bd4:	db0c      	blt.n	8005bf0 <tdefl_optimize_huffman_table+0x254>
 8005bd6:	f839 1020 	ldrh.w	r1, [r9, r0, lsl #2]
 8005bda:	2800      	cmp	r0, #0
 8005bdc:	f839 1021 	ldrh.w	r1, [r9, r1, lsl #2]
 8005be0:	f101 0101 	add.w	r1, r1, #1
 8005be4:	f829 1020 	strh.w	r1, [r9, r0, lsl #2]
 8005be8:	f1a0 0101 	sub.w	r1, r0, #1
 8005bec:	4608      	mov	r0, r1
 8005bee:	dcf2      	bgt.n	8005bd6 <tdefl_optimize_huffman_table+0x23a>
 8005bf0:	9e03      	ldr	r6, [sp, #12]
 8005bf2:	2401      	movs	r4, #1
 8005bf4:	2000      	movs	r0, #0
 8005bf6:	2300      	movs	r3, #0
 8005bf8:	2d00      	cmp	r5, #0
 8005bfa:	db0c      	blt.n	8005c16 <tdefl_optimize_huffman_table+0x27a>
 8005bfc:	4629      	mov	r1, r5
 8005bfe:	f839 2021 	ldrh.w	r2, [r9, r1, lsl #2]
 8005c02:	4282      	cmp	r2, r0
 8005c04:	d106      	bne.n	8005c14 <tdefl_optimize_huffman_table+0x278>
 8005c06:	1e4d      	subs	r5, r1, #1
 8005c08:	2900      	cmp	r1, #0
 8005c0a:	f103 0301 	add.w	r3, r3, #1
 8005c0e:	4629      	mov	r1, r5
 8005c10:	dcf5      	bgt.n	8005bfe <tdefl_optimize_huffman_table+0x262>
 8005c12:	e000      	b.n	8005c16 <tdefl_optimize_huffman_table+0x27a>
 8005c14:	460d      	mov	r5, r1
 8005c16:	429c      	cmp	r4, r3
 8005c18:	dd0b      	ble.n	8005c32 <tdefl_optimize_huffman_table+0x296>
 8005c1a:	eb09 018e 	add.w	r1, r9, lr, lsl #2
 8005c1e:	4622      	mov	r2, r4
 8005c20:	3a01      	subs	r2, #1
 8005c22:	f821 0904 	strh.w	r0, [r1], #-4
 8005c26:	429a      	cmp	r2, r3
 8005c28:	dcfa      	bgt.n	8005c20 <tdefl_optimize_huffman_table+0x284>
 8005c2a:	ebae 0104 	sub.w	r1, lr, r4
 8005c2e:	eb01 0e03 	add.w	lr, r1, r3
 8005c32:	3001      	adds	r0, #1
 8005c34:	005c      	lsls	r4, r3, #1
 8005c36:	2b00      	cmp	r3, #0
 8005c38:	dcdd      	bgt.n	8005bf6 <tdefl_optimize_huffman_table+0x25a>
 8005c3a:	f1ba 0f01 	cmp.w	sl, #1
 8005c3e:	db5a      	blt.n	8005cf6 <tdefl_optimize_huffman_table+0x35a>
 8005c40:	2000      	movs	r0, #0
 8005c42:	f60d 1314 	addw	r3, sp, #2324	; 0x914
 8005c46:	f839 1020 	ldrh.w	r1, [r9, r0, lsl #2]
 8005c4a:	3001      	adds	r0, #1
 8005c4c:	4582      	cmp	sl, r0
 8005c4e:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
 8005c52:	f102 0201 	add.w	r2, r2, #1
 8005c56:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8005c5a:	d1f4      	bne.n	8005c46 <tdefl_optimize_huffman_table+0x2aa>
 8005c5c:	f1ba 0f02 	cmp.w	sl, #2
 8005c60:	db49      	blt.n	8005cf6 <tdefl_optimize_huffman_table+0x35a>
 8005c62:	1c70      	adds	r0, r6, #1
 8005c64:	f60d 1514 	addw	r5, sp, #2324	; 0x914
 8005c68:	2820      	cmp	r0, #32
 8005c6a:	dc0f      	bgt.n	8005c8c <tdefl_optimize_huffman_table+0x2f0>
 8005c6c:	f855 1026 	ldr.w	r1, [r5, r6, lsl #2]
 8005c70:	eb05 0086 	add.w	r0, r5, r6, lsl #2
 8005c74:	4632      	mov	r2, r6
 8005c76:	eb05 0382 	add.w	r3, r5, r2, lsl #2
 8005c7a:	3201      	adds	r2, #1
 8005c7c:	685b      	ldr	r3, [r3, #4]
 8005c7e:	2a20      	cmp	r2, #32
 8005c80:	4419      	add	r1, r3
 8005c82:	f845 1026 	str.w	r1, [r5, r6, lsl #2]
 8005c86:	d1f6      	bne.n	8005c76 <tdefl_optimize_huffman_table+0x2da>
 8005c88:	2e01      	cmp	r6, #1
 8005c8a:	db15      	blt.n	8005cb8 <tdefl_optimize_huffman_table+0x31c>
 8005c8c:	2000      	movs	r0, #0
 8005c8e:	2100      	movs	r1, #0
 8005c90:	4632      	mov	r2, r6
 8005c92:	f855 3022 	ldr.w	r3, [r5, r2, lsl #2]
 8005c96:	3a01      	subs	r2, #1
 8005c98:	fa03 f300 	lsl.w	r3, r3, r0
 8005c9c:	f100 0001 	add.w	r0, r0, #1
 8005ca0:	4419      	add	r1, r3
 8005ca2:	dcf6      	bgt.n	8005c92 <tdefl_optimize_huffman_table+0x2f6>
 8005ca4:	2001      	movs	r0, #1
 8005ca6:	fa00 fc06 	lsl.w	ip, r0, r6
 8005caa:	4561      	cmp	r1, ip
 8005cac:	d023      	beq.n	8005cf6 <tdefl_optimize_huffman_table+0x35a>
 8005cae:	f60d 1514 	addw	r5, sp, #2324	; 0x914
 8005cb2:	eb05 0086 	add.w	r0, r5, r6, lsl #2
 8005cb6:	e003      	b.n	8005cc0 <tdefl_optimize_huffman_table+0x324>
 8005cb8:	2101      	movs	r1, #1
 8005cba:	fa01 fc06 	lsl.w	ip, r1, r6
 8005cbe:	2100      	movs	r1, #0
 8005cc0:	eb05 0286 	add.w	r2, r5, r6, lsl #2
 8005cc4:	f102 0e04 	add.w	lr, r2, #4
 8005cc8:	6802      	ldr	r2, [r0, #0]
 8005cca:	4674      	mov	r4, lr
 8005ccc:	4635      	mov	r5, r6
 8005cce:	3a01      	subs	r2, #1
 8005cd0:	6002      	str	r2, [r0, #0]
 8005cd2:	2d02      	cmp	r5, #2
 8005cd4:	db0c      	blt.n	8005cf0 <tdefl_optimize_huffman_table+0x354>
 8005cd6:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005cda:	1f22      	subs	r2, r4, #4
 8005cdc:	3d01      	subs	r5, #1
 8005cde:	4614      	mov	r4, r2
 8005ce0:	2b00      	cmp	r3, #0
 8005ce2:	d0f6      	beq.n	8005cd2 <tdefl_optimize_huffman_table+0x336>
 8005ce4:	3b01      	subs	r3, #1
 8005ce6:	f842 3c04 	str.w	r3, [r2, #-4]
 8005cea:	6813      	ldr	r3, [r2, #0]
 8005cec:	3302      	adds	r3, #2
 8005cee:	6013      	str	r3, [r2, #0]
 8005cf0:	3901      	subs	r1, #1
 8005cf2:	4561      	cmp	r1, ip
 8005cf4:	d1e8      	bne.n	8005cc8 <tdefl_optimize_huffman_table+0x32c>
 8005cf6:	9802      	ldr	r0, [sp, #8]
 8005cf8:	f648 7512 	movw	r5, #36626	; 0x8f12
 8005cfc:	f44f 7190 	mov.w	r1, #288	; 0x120
 8005d00:	eb00 06c0 	add.w	r6, r0, r0, lsl #3
 8005d04:	eb0b 1446 	add.w	r4, fp, r6, lsl #5
 8005d08:	1960      	adds	r0, r4, r5
 8005d0a:	f000 f975 	bl	8005ff8 <__aeabi_memclr>
 8005d0e:	f8dd 800c 	ldr.w	r8, [sp, #12]
 8005d12:	eb0b 1086 	add.w	r0, fp, r6, lsl #6
 8005d16:	f648 0152 	movw	r1, #34898	; 0x8852
 8005d1a:	4408      	add	r0, r1
 8005d1c:	f44f 7110 	mov.w	r1, #576	; 0x240
 8005d20:	f000 f96a 	bl	8005ff8 <__aeabi_memclr>
 8005d24:	f1b8 0f01 	cmp.w	r8, #1
 8005d28:	f60d 1614 	addw	r6, sp, #2324	; 0x914
 8005d2c:	db14      	blt.n	8005d58 <tdefl_optimize_huffman_table+0x3bc>
 8005d2e:	f1a9 0002 	sub.w	r0, r9, #2
 8005d32:	2101      	movs	r1, #1
 8005d34:	f856 2021 	ldr.w	r2, [r6, r1, lsl #2]
 8005d38:	2a01      	cmp	r2, #1
 8005d3a:	db09      	blt.n	8005d50 <tdefl_optimize_huffman_table+0x3b4>
 8005d3c:	3201      	adds	r2, #1
 8005d3e:	f830 302a 	ldrh.w	r3, [r0, sl, lsl #2]
 8005d42:	3a01      	subs	r2, #1
 8005d44:	f1aa 0a01 	sub.w	sl, sl, #1
 8005d48:	2a01      	cmp	r2, #1
 8005d4a:	4423      	add	r3, r4
 8005d4c:	5559      	strb	r1, [r3, r5]
 8005d4e:	dcf6      	bgt.n	8005d3e <tdefl_optimize_huffman_table+0x3a2>
 8005d50:	1c4a      	adds	r2, r1, #1
 8005d52:	4541      	cmp	r1, r8
 8005d54:	4611      	mov	r1, r2
 8005d56:	d1ed      	bne.n	8005d34 <tdefl_optimize_huffman_table+0x398>
 8005d58:	e9dd 9401 	ldrd	r9, r4, [sp, #4]
 8005d5c:	2000      	movs	r0, #0
 8005d5e:	f1b8 0f02 	cmp.w	r8, #2
 8005d62:	f8cd 0d9c 	str.w	r0, [sp, #3484]	; 0xd9c
 8005d66:	db0f      	blt.n	8005d88 <tdefl_optimize_huffman_table+0x3ec>
 8005d68:	f60d 5198 	addw	r1, sp, #3480	; 0xd98
 8005d6c:	1d30      	adds	r0, r6, #4
 8005d6e:	f1a8 0201 	sub.w	r2, r8, #1
 8005d72:	2300      	movs	r3, #0
 8005d74:	3108      	adds	r1, #8
 8005d76:	f850 6b04 	ldr.w	r6, [r0], #4
 8005d7a:	3a01      	subs	r2, #1
 8005d7c:	4433      	add	r3, r6
 8005d7e:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8005d82:	f841 3b04 	str.w	r3, [r1], #4
 8005d86:	d1f6      	bne.n	8005d76 <tdefl_optimize_huffman_table+0x3da>
 8005d88:	f1b9 0f01 	cmp.w	r9, #1
 8005d8c:	db26      	blt.n	8005ddc <tdefl_optimize_huffman_table+0x440>
 8005d8e:	eb04 02c4 	add.w	r2, r4, r4, lsl #3
 8005d92:	2000      	movs	r0, #0
 8005d94:	f648 7e12 	movw	lr, #36626	; 0x8f12
 8005d98:	f60d 5898 	addw	r8, sp, #3480	; 0xd98
 8005d9c:	f648 0c52 	movw	ip, #34898	; 0x8852
 8005da0:	eb0b 1142 	add.w	r1, fp, r2, lsl #5
 8005da4:	eb0b 1682 	add.w	r6, fp, r2, lsl #6
 8005da8:	180a      	adds	r2, r1, r0
 8005daa:	f812 200e 	ldrb.w	r2, [r2, lr]
 8005dae:	b192      	cbz	r2, 8005dd6 <tdefl_optimize_huffman_table+0x43a>
 8005db0:	f858 4022 	ldr.w	r4, [r8, r2, lsl #2]
 8005db4:	1c65      	adds	r5, r4, #1
 8005db6:	f848 5022 	str.w	r5, [r8, r2, lsl #2]
 8005dba:	3201      	adds	r2, #1
 8005dbc:	2500      	movs	r5, #0
 8005dbe:	f004 0301 	and.w	r3, r4, #1
 8005dc2:	3a01      	subs	r2, #1
 8005dc4:	0864      	lsrs	r4, r4, #1
 8005dc6:	ea43 0545 	orr.w	r5, r3, r5, lsl #1
 8005dca:	2a01      	cmp	r2, #1
 8005dcc:	dcf7      	bgt.n	8005dbe <tdefl_optimize_huffman_table+0x422>
 8005dce:	eb06 0240 	add.w	r2, r6, r0, lsl #1
 8005dd2:	f822 500c 	strh.w	r5, [r2, ip]
 8005dd6:	3001      	adds	r0, #1
 8005dd8:	4548      	cmp	r0, r9
 8005dda:	d1e5      	bne.n	8005da8 <tdefl_optimize_huffman_table+0x40c>
 8005ddc:	f50d 5dac 	add.w	sp, sp, #5504	; 0x1580
 8005de0:	b007      	add	sp, #28
 8005de2:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8005de6:	bdf0      	pop	{r4, r5, r6, r7, pc}

08005de8 <verify_benchmark>:
 8005de8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005dec:	4770      	bx	lr

08005dee <initialise_benchmark>:
 8005dee:	4770      	bx	lr

08005df0 <benchmark>:
 8005df0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005df2:	af03      	add	r7, sp, #12
 8005df4:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8005df8:	b085      	sub	sp, #20
 8005dfa:	f240 0b14 	movw	fp, #20
 8005dfe:	2000      	movs	r0, #0
 8005e00:	9004      	str	r0, [sp, #16]
 8005e02:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8005e06:	f8db 6000 	ldr.w	r6, [fp]
 8005e0a:	4630      	mov	r0, r6
 8005e0c:	f7fa fc78 	bl	8000700 <strlen>
 8005e10:	f640 7498 	movw	r4, #3992	; 0xf98
 8005e14:	4605      	mov	r5, r0
 8005e16:	2001      	movs	r0, #1
 8005e18:	f10d 0808 	add.w	r8, sp, #8
 8005e1c:	f44f 6a96 	mov.w	sl, #1200	; 0x4b0
 8005e20:	4632      	mov	r2, r6
 8005e22:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8005e26:	9000      	str	r0, [sp, #0]
 8005e28:	4641      	mov	r1, r8
 8005e2a:	462b      	mov	r3, r5
 8005e2c:	f8cd a008 	str.w	sl, [sp, #8]
 8005e30:	4620      	mov	r0, r4
 8005e32:	f7fc fff2 	bl	8002e1a <mz_compress2>
 8005e36:	9b02      	ldr	r3, [sp, #8]
 8005e38:	f640 26e8 	movw	r6, #2792	; 0xae8
 8005e3c:	f10d 090c 	add.w	r9, sp, #12
 8005e40:	4622      	mov	r2, r4
 8005e42:	f8cd a00c 	str.w	sl, [sp, #12]
 8005e46:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8005e4a:	4649      	mov	r1, r9
 8005e4c:	4630      	mov	r0, r6
 8005e4e:	f7fe fbd1 	bl	80045f4 <mz_uncompress>
 8005e52:	f8db 2000 	ldr.w	r2, [fp]
 8005e56:	2007      	movs	r0, #7
 8005e58:	4641      	mov	r1, r8
 8005e5a:	462b      	mov	r3, r5
 8005e5c:	f8cd a008 	str.w	sl, [sp, #8]
 8005e60:	9000      	str	r0, [sp, #0]
 8005e62:	4620      	mov	r0, r4
 8005e64:	f7fc ffd9 	bl	8002e1a <mz_compress2>
 8005e68:	9b02      	ldr	r3, [sp, #8]
 8005e6a:	4630      	mov	r0, r6
 8005e6c:	4649      	mov	r1, r9
 8005e6e:	4622      	mov	r2, r4
 8005e70:	f8cd a00c 	str.w	sl, [sp, #12]
 8005e74:	f7fe fbbe 	bl	80045f4 <mz_uncompress>
 8005e78:	9804      	ldr	r0, [sp, #16]
 8005e7a:	b005      	add	sp, #20
 8005e7c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8005e80:	bdf0      	pop	{r4, r5, r6, r7, pc}

08005e82 <SysTick_Handler>:
 8005e82:	b580      	push	{r7, lr}
 8005e84:	466f      	mov	r7, sp
 8005e86:	f7fb f99f 	bl	80011c8 <HAL_IncTick>
 8005e8a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8005e8e:	f7fb b9f9 	b.w	8001284 <HAL_SYSTICK_IRQHandler>

08005e92 <_getpid>:
 8005e92:	2001      	movs	r0, #1
 8005e94:	4770      	bx	lr

08005e96 <_kill>:
 8005e96:	b580      	push	{r7, lr}
 8005e98:	466f      	mov	r7, sp
 8005e9a:	f000 f8d1 	bl	8006040 <__errno>
 8005e9e:	2116      	movs	r1, #22
 8005ea0:	6001      	str	r1, [r0, #0]
 8005ea2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005ea6:	bd80      	pop	{r7, pc}

08005ea8 <_exit>:
 8005ea8:	b580      	push	{r7, lr}
 8005eaa:	466f      	mov	r7, sp
 8005eac:	f000 f8c8 	bl	8006040 <__errno>
 8005eb0:	2116      	movs	r1, #22
 8005eb2:	6001      	str	r1, [r0, #0]
 8005eb4:	e7fe      	b.n	8005eb4 <_exit+0xc>

08005eb6 <_read>:
 8005eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005eb8:	af03      	add	r7, sp, #12
 8005eba:	f84d bd04 	str.w	fp, [sp, #-4]!
 8005ebe:	4614      	mov	r4, r2
 8005ec0:	460d      	mov	r5, r1
 8005ec2:	2c01      	cmp	r4, #1
 8005ec4:	db06      	blt.n	8005ed4 <_read+0x1e>
 8005ec6:	4626      	mov	r6, r4
 8005ec8:	f3af 8000 	nop.w
 8005ecc:	f805 0b01 	strb.w	r0, [r5], #1
 8005ed0:	3e01      	subs	r6, #1
 8005ed2:	d1f9      	bne.n	8005ec8 <_read+0x12>
 8005ed4:	4620      	mov	r0, r4
 8005ed6:	f85d bb04 	ldr.w	fp, [sp], #4
 8005eda:	bdf0      	pop	{r4, r5, r6, r7, pc}

08005edc <_write>:
 8005edc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005ede:	af03      	add	r7, sp, #12
 8005ee0:	f84d bd04 	str.w	fp, [sp, #-4]!
 8005ee4:	4614      	mov	r4, r2
 8005ee6:	460d      	mov	r5, r1
 8005ee8:	2c01      	cmp	r4, #1
 8005eea:	db06      	blt.n	8005efa <_write+0x1e>
 8005eec:	4626      	mov	r6, r4
 8005eee:	f815 0b01 	ldrb.w	r0, [r5], #1
 8005ef2:	f7fc f840 	bl	8001f76 <__io_putchar>
 8005ef6:	3e01      	subs	r6, #1
 8005ef8:	d1f9      	bne.n	8005eee <_write+0x12>
 8005efa:	4620      	mov	r0, r4
 8005efc:	f85d bb04 	ldr.w	fp, [sp], #4
 8005f00:	bdf0      	pop	{r4, r5, r6, r7, pc}

08005f02 <_sbrk>:
 8005f02:	f640 2268 	movw	r2, #2664	; 0xa68
 8005f06:	4601      	mov	r1, r0
 8005f08:	466b      	mov	r3, sp
 8005f0a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005f0e:	6810      	ldr	r0, [r2, #0]
 8005f10:	2800      	cmp	r0, #0
 8005f12:	bf02      	ittt	eq
 8005f14:	f241 4070 	movweq	r0, #5232	; 0x1470
 8005f18:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8005f1c:	6010      	streq	r0, [r2, #0]
 8005f1e:	4401      	add	r1, r0
 8005f20:	4299      	cmp	r1, r3
 8005f22:	bf9c      	itt	ls
 8005f24:	6011      	strls	r1, [r2, #0]
 8005f26:	4770      	bxls	lr
 8005f28:	b580      	push	{r7, lr}
 8005f2a:	466f      	mov	r7, sp
 8005f2c:	f000 f888 	bl	8006040 <__errno>
 8005f30:	210c      	movs	r1, #12
 8005f32:	6001      	str	r1, [r0, #0]
 8005f34:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005f38:	bd80      	pop	{r7, pc}

08005f3a <_close>:
 8005f3a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005f3e:	4770      	bx	lr

08005f40 <_fstat>:
 8005f40:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8005f44:	6048      	str	r0, [r1, #4]
 8005f46:	2000      	movs	r0, #0
 8005f48:	4770      	bx	lr

08005f4a <_isatty>:
 8005f4a:	2001      	movs	r0, #1
 8005f4c:	4770      	bx	lr

08005f4e <_lseek>:
 8005f4e:	2000      	movs	r0, #0
 8005f50:	4770      	bx	lr

08005f52 <SystemInit>:
 8005f52:	f64e 5088 	movw	r0, #60808	; 0xed88
 8005f56:	f04f 0c00 	mov.w	ip, #0
 8005f5a:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8005f5e:	6801      	ldr	r1, [r0, #0]
 8005f60:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8005f64:	6001      	str	r1, [r0, #0]
 8005f66:	f241 0100 	movw	r1, #4096	; 0x1000
 8005f6a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8005f6e:	680a      	ldr	r2, [r1, #0]
 8005f70:	f042 0201 	orr.w	r2, r2, #1
 8005f74:	600a      	str	r2, [r1, #0]
 8005f76:	f8c1 c008 	str.w	ip, [r1, #8]
 8005f7a:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8005f7e:	680b      	ldr	r3, [r1, #0]
 8005f80:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8005f84:	401a      	ands	r2, r3
 8005f86:	600a      	str	r2, [r1, #0]
 8005f88:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8005f8c:	60ca      	str	r2, [r1, #12]
 8005f8e:	680a      	ldr	r2, [r1, #0]
 8005f90:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8005f94:	600a      	str	r2, [r1, #0]
 8005f96:	f8c1 c018 	str.w	ip, [r1, #24]
 8005f9a:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8005f9e:	f840 1c80 	str.w	r1, [r0, #-128]
 8005fa2:	4770      	bx	lr

08005fa4 <Reset_Handler>:
 8005fa4:	f8df d034 	ldr.w	sp, [pc, #52]	; 8005fdc <LoopForever+0x2>
 8005fa8:	2100      	movs	r1, #0
 8005faa:	e003      	b.n	8005fb4 <LoopCopyDataInit>

08005fac <CopyDataInit>:
 8005fac:	4b0c      	ldr	r3, [pc, #48]	; (8005fe0 <LoopForever+0x6>)
 8005fae:	585b      	ldr	r3, [r3, r1]
 8005fb0:	5043      	str	r3, [r0, r1]
 8005fb2:	3104      	adds	r1, #4

08005fb4 <LoopCopyDataInit>:
 8005fb4:	480b      	ldr	r0, [pc, #44]	; (8005fe4 <LoopForever+0xa>)
 8005fb6:	4b0c      	ldr	r3, [pc, #48]	; (8005fe8 <LoopForever+0xe>)
 8005fb8:	1842      	adds	r2, r0, r1
 8005fba:	429a      	cmp	r2, r3
 8005fbc:	d3f6      	bcc.n	8005fac <CopyDataInit>
 8005fbe:	4a0b      	ldr	r2, [pc, #44]	; (8005fec <LoopForever+0x12>)
 8005fc0:	e002      	b.n	8005fc8 <LoopFillZerobss>

08005fc2 <FillZerobss>:
 8005fc2:	2300      	movs	r3, #0
 8005fc4:	f842 3b04 	str.w	r3, [r2], #4

08005fc8 <LoopFillZerobss>:
 8005fc8:	4b09      	ldr	r3, [pc, #36]	; (8005ff0 <LoopForever+0x16>)
 8005fca:	429a      	cmp	r2, r3
 8005fcc:	d3f9      	bcc.n	8005fc2 <FillZerobss>
 8005fce:	f7ff ffc0 	bl	8005f52 <SystemInit>
 8005fd2:	f000 f84f 	bl	8006074 <__libc_init_array>
 8005fd6:	f7fb ffdf 	bl	8001f98 <main>

08005fda <LoopForever>:
 8005fda:	e7fe      	b.n	8005fda <LoopForever>
 8005fdc:	20018000 	.word	0x20018000
 8005fe0:	0800d2a0 	.word	0x0800d2a0
 8005fe4:	20000000 	.word	0x20000000
 8005fe8:	200009c8 	.word	0x200009c8
 8005fec:	200009c8 	.word	0x200009c8
 8005ff0:	20001470 	.word	0x20001470

08005ff4 <ADC1_2_IRQHandler>:
 8005ff4:	e7fe      	b.n	8005ff4 <ADC1_2_IRQHandler>
	...

08005ff8 <__aeabi_memclr>:
 8005ff8:	2200      	movs	r2, #0
 8005ffa:	f7fa ba81 	b.w	8000500 <__aeabi_memset>
 8005ffe:	bf00      	nop

08006000 <__aeabi_memcpy>:
 8006000:	f7fa bacc 	b.w	800059c <memcpy>

08006004 <__assert_func>:
 8006004:	b500      	push	{lr}
 8006006:	4c0a      	ldr	r4, [pc, #40]	; (8006030 <__assert_func+0x2c>)
 8006008:	6826      	ldr	r6, [r4, #0]
 800600a:	4605      	mov	r5, r0
 800600c:	b085      	sub	sp, #20
 800600e:	461c      	mov	r4, r3
 8006010:	68f0      	ldr	r0, [r6, #12]
 8006012:	b152      	cbz	r2, 800602a <__assert_func+0x26>
 8006014:	4b07      	ldr	r3, [pc, #28]	; (8006034 <__assert_func+0x30>)
 8006016:	9100      	str	r1, [sp, #0]
 8006018:	e9cd 3201 	strd	r3, r2, [sp, #4]
 800601c:	4906      	ldr	r1, [pc, #24]	; (8006038 <__assert_func+0x34>)
 800601e:	462b      	mov	r3, r5
 8006020:	4622      	mov	r2, r4
 8006022:	f000 f813 	bl	800604c <fiprintf>
 8006026:	f003 fa67 	bl	80094f8 <abort>
 800602a:	4b04      	ldr	r3, [pc, #16]	; (800603c <__assert_func+0x38>)
 800602c:	461a      	mov	r2, r3
 800602e:	e7f2      	b.n	8006016 <__assert_func+0x12>
 8006030:	2000001c 	.word	0x2000001c
 8006034:	0800cf9c 	.word	0x0800cf9c
 8006038:	0800cfac 	.word	0x0800cfac
 800603c:	0800cfa8 	.word	0x0800cfa8

08006040 <__errno>:
 8006040:	4b01      	ldr	r3, [pc, #4]	; (8006048 <__errno+0x8>)
 8006042:	6818      	ldr	r0, [r3, #0]
 8006044:	4770      	bx	lr
 8006046:	bf00      	nop
 8006048:	2000001c 	.word	0x2000001c

0800604c <fiprintf>:
 800604c:	b40e      	push	{r1, r2, r3}
 800604e:	b510      	push	{r4, lr}
 8006050:	b083      	sub	sp, #12
 8006052:	ab05      	add	r3, sp, #20
 8006054:	4c06      	ldr	r4, [pc, #24]	; (8006070 <fiprintf+0x24>)
 8006056:	f853 2b04 	ldr.w	r2, [r3], #4
 800605a:	9301      	str	r3, [sp, #4]
 800605c:	4601      	mov	r1, r0
 800605e:	6820      	ldr	r0, [r4, #0]
 8006060:	f000 fda6 	bl	8006bb0 <_vfiprintf_r>
 8006064:	b003      	add	sp, #12
 8006066:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800606a:	b003      	add	sp, #12
 800606c:	4770      	bx	lr
 800606e:	bf00      	nop
 8006070:	2000001c 	.word	0x2000001c

08006074 <__libc_init_array>:
 8006074:	b570      	push	{r4, r5, r6, lr}
 8006076:	4e0d      	ldr	r6, [pc, #52]	; (80060ac <__libc_init_array+0x38>)
 8006078:	4d0d      	ldr	r5, [pc, #52]	; (80060b0 <__libc_init_array+0x3c>)
 800607a:	1b76      	subs	r6, r6, r5
 800607c:	10b6      	asrs	r6, r6, #2
 800607e:	d006      	beq.n	800608e <__libc_init_array+0x1a>
 8006080:	2400      	movs	r4, #0
 8006082:	3401      	adds	r4, #1
 8006084:	f855 3b04 	ldr.w	r3, [r5], #4
 8006088:	4798      	blx	r3
 800608a:	42a6      	cmp	r6, r4
 800608c:	d1f9      	bne.n	8006082 <__libc_init_array+0xe>
 800608e:	4e09      	ldr	r6, [pc, #36]	; (80060b4 <__libc_init_array+0x40>)
 8006090:	4d09      	ldr	r5, [pc, #36]	; (80060b8 <__libc_init_array+0x44>)
 8006092:	1b76      	subs	r6, r6, r5
 8006094:	f005 fdbe 	bl	800bc14 <_init>
 8006098:	10b6      	asrs	r6, r6, #2
 800609a:	d006      	beq.n	80060aa <__libc_init_array+0x36>
 800609c:	2400      	movs	r4, #0
 800609e:	3401      	adds	r4, #1
 80060a0:	f855 3b04 	ldr.w	r3, [r5], #4
 80060a4:	4798      	blx	r3
 80060a6:	42a6      	cmp	r6, r4
 80060a8:	d1f9      	bne.n	800609e <__libc_init_array+0x2a>
 80060aa:	bd70      	pop	{r4, r5, r6, pc}
 80060ac:	0800d290 	.word	0x0800d290
 80060b0:	0800d290 	.word	0x0800d290
 80060b4:	0800d298 	.word	0x0800d298
 80060b8:	0800d290 	.word	0x0800d290

080060bc <malloc>:
 80060bc:	4b02      	ldr	r3, [pc, #8]	; (80060c8 <malloc+0xc>)
 80060be:	4601      	mov	r1, r0
 80060c0:	6818      	ldr	r0, [r3, #0]
 80060c2:	f000 b80b 	b.w	80060dc <_malloc_r>
 80060c6:	bf00      	nop
 80060c8:	2000001c 	.word	0x2000001c

080060cc <free>:
 80060cc:	4b02      	ldr	r3, [pc, #8]	; (80060d8 <free+0xc>)
 80060ce:	4601      	mov	r1, r0
 80060d0:	6818      	ldr	r0, [r3, #0]
 80060d2:	f004 bbeb 	b.w	800a8ac <_free_r>
 80060d6:	bf00      	nop
 80060d8:	2000001c 	.word	0x2000001c

080060dc <_malloc_r>:
 80060dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80060e0:	f101 050b 	add.w	r5, r1, #11
 80060e4:	2d16      	cmp	r5, #22
 80060e6:	b083      	sub	sp, #12
 80060e8:	4606      	mov	r6, r0
 80060ea:	d823      	bhi.n	8006134 <_malloc_r+0x58>
 80060ec:	2910      	cmp	r1, #16
 80060ee:	f200 80b9 	bhi.w	8006264 <_malloc_r+0x188>
 80060f2:	f000 fae1 	bl	80066b8 <__malloc_lock>
 80060f6:	2510      	movs	r5, #16
 80060f8:	2318      	movs	r3, #24
 80060fa:	2002      	movs	r0, #2
 80060fc:	4fc5      	ldr	r7, [pc, #788]	; (8006414 <_malloc_r+0x338>)
 80060fe:	443b      	add	r3, r7
 8006100:	f1a3 0208 	sub.w	r2, r3, #8
 8006104:	685c      	ldr	r4, [r3, #4]
 8006106:	4294      	cmp	r4, r2
 8006108:	f000 8166 	beq.w	80063d8 <_malloc_r+0x2fc>
 800610c:	6863      	ldr	r3, [r4, #4]
 800610e:	f023 0303 	bic.w	r3, r3, #3
 8006112:	4423      	add	r3, r4
 8006114:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8006118:	685a      	ldr	r2, [r3, #4]
 800611a:	60e9      	str	r1, [r5, #12]
 800611c:	f042 0201 	orr.w	r2, r2, #1
 8006120:	608d      	str	r5, [r1, #8]
 8006122:	4630      	mov	r0, r6
 8006124:	605a      	str	r2, [r3, #4]
 8006126:	f000 facd 	bl	80066c4 <__malloc_unlock>
 800612a:	3408      	adds	r4, #8
 800612c:	4620      	mov	r0, r4
 800612e:	b003      	add	sp, #12
 8006130:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006134:	f035 0507 	bics.w	r5, r5, #7
 8006138:	f100 8094 	bmi.w	8006264 <_malloc_r+0x188>
 800613c:	42a9      	cmp	r1, r5
 800613e:	f200 8091 	bhi.w	8006264 <_malloc_r+0x188>
 8006142:	f000 fab9 	bl	80066b8 <__malloc_lock>
 8006146:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800614a:	f0c0 8183 	bcc.w	8006454 <_malloc_r+0x378>
 800614e:	0a6b      	lsrs	r3, r5, #9
 8006150:	f000 808f 	beq.w	8006272 <_malloc_r+0x196>
 8006154:	2b04      	cmp	r3, #4
 8006156:	f200 8146 	bhi.w	80063e6 <_malloc_r+0x30a>
 800615a:	09ab      	lsrs	r3, r5, #6
 800615c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8006160:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8006164:	00c3      	lsls	r3, r0, #3
 8006166:	4fab      	ldr	r7, [pc, #684]	; (8006414 <_malloc_r+0x338>)
 8006168:	443b      	add	r3, r7
 800616a:	f1a3 0108 	sub.w	r1, r3, #8
 800616e:	685c      	ldr	r4, [r3, #4]
 8006170:	42a1      	cmp	r1, r4
 8006172:	d106      	bne.n	8006182 <_malloc_r+0xa6>
 8006174:	e00c      	b.n	8006190 <_malloc_r+0xb4>
 8006176:	2a00      	cmp	r2, #0
 8006178:	f280 811d 	bge.w	80063b6 <_malloc_r+0x2da>
 800617c:	68e4      	ldr	r4, [r4, #12]
 800617e:	42a1      	cmp	r1, r4
 8006180:	d006      	beq.n	8006190 <_malloc_r+0xb4>
 8006182:	6863      	ldr	r3, [r4, #4]
 8006184:	f023 0303 	bic.w	r3, r3, #3
 8006188:	1b5a      	subs	r2, r3, r5
 800618a:	2a0f      	cmp	r2, #15
 800618c:	ddf3      	ble.n	8006176 <_malloc_r+0x9a>
 800618e:	4660      	mov	r0, ip
 8006190:	693c      	ldr	r4, [r7, #16]
 8006192:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006428 <_malloc_r+0x34c>
 8006196:	4564      	cmp	r4, ip
 8006198:	d071      	beq.n	800627e <_malloc_r+0x1a2>
 800619a:	6863      	ldr	r3, [r4, #4]
 800619c:	f023 0303 	bic.w	r3, r3, #3
 80061a0:	1b5a      	subs	r2, r3, r5
 80061a2:	2a0f      	cmp	r2, #15
 80061a4:	f300 8144 	bgt.w	8006430 <_malloc_r+0x354>
 80061a8:	2a00      	cmp	r2, #0
 80061aa:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80061ae:	f280 8126 	bge.w	80063fe <_malloc_r+0x322>
 80061b2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80061b6:	f080 8169 	bcs.w	800648c <_malloc_r+0x3b0>
 80061ba:	08db      	lsrs	r3, r3, #3
 80061bc:	1c59      	adds	r1, r3, #1
 80061be:	687a      	ldr	r2, [r7, #4]
 80061c0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80061c4:	f8c4 8008 	str.w	r8, [r4, #8]
 80061c8:	f04f 0e01 	mov.w	lr, #1
 80061cc:	109b      	asrs	r3, r3, #2
 80061ce:	fa0e f303 	lsl.w	r3, lr, r3
 80061d2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80061d6:	4313      	orrs	r3, r2
 80061d8:	f1ae 0208 	sub.w	r2, lr, #8
 80061dc:	60e2      	str	r2, [r4, #12]
 80061de:	607b      	str	r3, [r7, #4]
 80061e0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80061e4:	f8c8 400c 	str.w	r4, [r8, #12]
 80061e8:	1082      	asrs	r2, r0, #2
 80061ea:	2401      	movs	r4, #1
 80061ec:	4094      	lsls	r4, r2
 80061ee:	429c      	cmp	r4, r3
 80061f0:	d84b      	bhi.n	800628a <_malloc_r+0x1ae>
 80061f2:	421c      	tst	r4, r3
 80061f4:	d106      	bne.n	8006204 <_malloc_r+0x128>
 80061f6:	f020 0003 	bic.w	r0, r0, #3
 80061fa:	0064      	lsls	r4, r4, #1
 80061fc:	421c      	tst	r4, r3
 80061fe:	f100 0004 	add.w	r0, r0, #4
 8006202:	d0fa      	beq.n	80061fa <_malloc_r+0x11e>
 8006204:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006208:	46ce      	mov	lr, r9
 800620a:	4680      	mov	r8, r0
 800620c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006210:	459e      	cmp	lr, r3
 8006212:	d107      	bne.n	8006224 <_malloc_r+0x148>
 8006214:	e122      	b.n	800645c <_malloc_r+0x380>
 8006216:	2a00      	cmp	r2, #0
 8006218:	f280 8129 	bge.w	800646e <_malloc_r+0x392>
 800621c:	68db      	ldr	r3, [r3, #12]
 800621e:	459e      	cmp	lr, r3
 8006220:	f000 811c 	beq.w	800645c <_malloc_r+0x380>
 8006224:	6859      	ldr	r1, [r3, #4]
 8006226:	f021 0103 	bic.w	r1, r1, #3
 800622a:	1b4a      	subs	r2, r1, r5
 800622c:	2a0f      	cmp	r2, #15
 800622e:	ddf2      	ble.n	8006216 <_malloc_r+0x13a>
 8006230:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8006234:	195c      	adds	r4, r3, r5
 8006236:	f045 0501 	orr.w	r5, r5, #1
 800623a:	605d      	str	r5, [r3, #4]
 800623c:	f042 0501 	orr.w	r5, r2, #1
 8006240:	f8c8 e00c 	str.w	lr, [r8, #12]
 8006244:	4630      	mov	r0, r6
 8006246:	f8ce 8008 	str.w	r8, [lr, #8]
 800624a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800624e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8006252:	6065      	str	r5, [r4, #4]
 8006254:	505a      	str	r2, [r3, r1]
 8006256:	9301      	str	r3, [sp, #4]
 8006258:	f000 fa34 	bl	80066c4 <__malloc_unlock>
 800625c:	9b01      	ldr	r3, [sp, #4]
 800625e:	f103 0408 	add.w	r4, r3, #8
 8006262:	e763      	b.n	800612c <_malloc_r+0x50>
 8006264:	2400      	movs	r4, #0
 8006266:	230c      	movs	r3, #12
 8006268:	4620      	mov	r0, r4
 800626a:	6033      	str	r3, [r6, #0]
 800626c:	b003      	add	sp, #12
 800626e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006272:	f44f 7300 	mov.w	r3, #512	; 0x200
 8006276:	2040      	movs	r0, #64	; 0x40
 8006278:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 800627c:	e773      	b.n	8006166 <_malloc_r+0x8a>
 800627e:	687b      	ldr	r3, [r7, #4]
 8006280:	1082      	asrs	r2, r0, #2
 8006282:	2401      	movs	r4, #1
 8006284:	4094      	lsls	r4, r2
 8006286:	429c      	cmp	r4, r3
 8006288:	d9b3      	bls.n	80061f2 <_malloc_r+0x116>
 800628a:	68bc      	ldr	r4, [r7, #8]
 800628c:	6863      	ldr	r3, [r4, #4]
 800628e:	f023 0903 	bic.w	r9, r3, #3
 8006292:	45a9      	cmp	r9, r5
 8006294:	d303      	bcc.n	800629e <_malloc_r+0x1c2>
 8006296:	eba9 0305 	sub.w	r3, r9, r5
 800629a:	2b0f      	cmp	r3, #15
 800629c:	dc7b      	bgt.n	8006396 <_malloc_r+0x2ba>
 800629e:	4b5e      	ldr	r3, [pc, #376]	; (8006418 <_malloc_r+0x33c>)
 80062a0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800642c <_malloc_r+0x350>
 80062a4:	681a      	ldr	r2, [r3, #0]
 80062a6:	f8da 3000 	ldr.w	r3, [sl]
 80062aa:	3301      	adds	r3, #1
 80062ac:	eb05 0802 	add.w	r8, r5, r2
 80062b0:	f000 8148 	beq.w	8006544 <_malloc_r+0x468>
 80062b4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 80062b8:	f108 080f 	add.w	r8, r8, #15
 80062bc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 80062c0:	f028 080f 	bic.w	r8, r8, #15
 80062c4:	4641      	mov	r1, r8
 80062c6:	4630      	mov	r0, r6
 80062c8:	f000 fc1a 	bl	8006b00 <_sbrk_r>
 80062cc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80062d0:	4683      	mov	fp, r0
 80062d2:	f000 8104 	beq.w	80064de <_malloc_r+0x402>
 80062d6:	eb04 0009 	add.w	r0, r4, r9
 80062da:	4558      	cmp	r0, fp
 80062dc:	f200 80fd 	bhi.w	80064da <_malloc_r+0x3fe>
 80062e0:	4a4e      	ldr	r2, [pc, #312]	; (800641c <_malloc_r+0x340>)
 80062e2:	6813      	ldr	r3, [r2, #0]
 80062e4:	4443      	add	r3, r8
 80062e6:	6013      	str	r3, [r2, #0]
 80062e8:	f000 814d 	beq.w	8006586 <_malloc_r+0x4aa>
 80062ec:	f8da 1000 	ldr.w	r1, [sl]
 80062f0:	3101      	adds	r1, #1
 80062f2:	bf1b      	ittet	ne
 80062f4:	ebab 0000 	subne.w	r0, fp, r0
 80062f8:	181b      	addne	r3, r3, r0
 80062fa:	f8ca b000 	streq.w	fp, [sl]
 80062fe:	6013      	strne	r3, [r2, #0]
 8006300:	f01b 0307 	ands.w	r3, fp, #7
 8006304:	f000 8134 	beq.w	8006570 <_malloc_r+0x494>
 8006308:	f1c3 0108 	rsb	r1, r3, #8
 800630c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006310:	448b      	add	fp, r1
 8006312:	3308      	adds	r3, #8
 8006314:	44d8      	add	r8, fp
 8006316:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800631a:	eba3 0808 	sub.w	r8, r3, r8
 800631e:	4641      	mov	r1, r8
 8006320:	4630      	mov	r0, r6
 8006322:	9201      	str	r2, [sp, #4]
 8006324:	f000 fbec 	bl	8006b00 <_sbrk_r>
 8006328:	1c43      	adds	r3, r0, #1
 800632a:	9a01      	ldr	r2, [sp, #4]
 800632c:	f000 8146 	beq.w	80065bc <_malloc_r+0x4e0>
 8006330:	eba0 010b 	sub.w	r1, r0, fp
 8006334:	4441      	add	r1, r8
 8006336:	f041 0101 	orr.w	r1, r1, #1
 800633a:	6813      	ldr	r3, [r2, #0]
 800633c:	f8c7 b008 	str.w	fp, [r7, #8]
 8006340:	4443      	add	r3, r8
 8006342:	42bc      	cmp	r4, r7
 8006344:	f8cb 1004 	str.w	r1, [fp, #4]
 8006348:	6013      	str	r3, [r2, #0]
 800634a:	d015      	beq.n	8006378 <_malloc_r+0x29c>
 800634c:	f1b9 0f0f 	cmp.w	r9, #15
 8006350:	f240 8130 	bls.w	80065b4 <_malloc_r+0x4d8>
 8006354:	6860      	ldr	r0, [r4, #4]
 8006356:	f1a9 010c 	sub.w	r1, r9, #12
 800635a:	f021 0107 	bic.w	r1, r1, #7
 800635e:	f000 0001 	and.w	r0, r0, #1
 8006362:	eb04 0c01 	add.w	ip, r4, r1
 8006366:	4308      	orrs	r0, r1
 8006368:	f04f 0e05 	mov.w	lr, #5
 800636c:	290f      	cmp	r1, #15
 800636e:	6060      	str	r0, [r4, #4]
 8006370:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8006374:	f200 813a 	bhi.w	80065ec <_malloc_r+0x510>
 8006378:	4a29      	ldr	r2, [pc, #164]	; (8006420 <_malloc_r+0x344>)
 800637a:	482a      	ldr	r0, [pc, #168]	; (8006424 <_malloc_r+0x348>)
 800637c:	6811      	ldr	r1, [r2, #0]
 800637e:	68bc      	ldr	r4, [r7, #8]
 8006380:	428b      	cmp	r3, r1
 8006382:	6801      	ldr	r1, [r0, #0]
 8006384:	bf88      	it	hi
 8006386:	6013      	strhi	r3, [r2, #0]
 8006388:	6862      	ldr	r2, [r4, #4]
 800638a:	428b      	cmp	r3, r1
 800638c:	f022 0203 	bic.w	r2, r2, #3
 8006390:	bf88      	it	hi
 8006392:	6003      	strhi	r3, [r0, #0]
 8006394:	e0a7      	b.n	80064e6 <_malloc_r+0x40a>
 8006396:	1962      	adds	r2, r4, r5
 8006398:	f043 0301 	orr.w	r3, r3, #1
 800639c:	f045 0501 	orr.w	r5, r5, #1
 80063a0:	6065      	str	r5, [r4, #4]
 80063a2:	4630      	mov	r0, r6
 80063a4:	60ba      	str	r2, [r7, #8]
 80063a6:	6053      	str	r3, [r2, #4]
 80063a8:	f000 f98c 	bl	80066c4 <__malloc_unlock>
 80063ac:	3408      	adds	r4, #8
 80063ae:	4620      	mov	r0, r4
 80063b0:	b003      	add	sp, #12
 80063b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80063b6:	4423      	add	r3, r4
 80063b8:	68e1      	ldr	r1, [r4, #12]
 80063ba:	685a      	ldr	r2, [r3, #4]
 80063bc:	68a5      	ldr	r5, [r4, #8]
 80063be:	f042 0201 	orr.w	r2, r2, #1
 80063c2:	60e9      	str	r1, [r5, #12]
 80063c4:	4630      	mov	r0, r6
 80063c6:	608d      	str	r5, [r1, #8]
 80063c8:	605a      	str	r2, [r3, #4]
 80063ca:	f000 f97b 	bl	80066c4 <__malloc_unlock>
 80063ce:	3408      	adds	r4, #8
 80063d0:	4620      	mov	r0, r4
 80063d2:	b003      	add	sp, #12
 80063d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80063d8:	68dc      	ldr	r4, [r3, #12]
 80063da:	42a3      	cmp	r3, r4
 80063dc:	bf08      	it	eq
 80063de:	3002      	addeq	r0, #2
 80063e0:	f43f aed6 	beq.w	8006190 <_malloc_r+0xb4>
 80063e4:	e692      	b.n	800610c <_malloc_r+0x30>
 80063e6:	2b14      	cmp	r3, #20
 80063e8:	d971      	bls.n	80064ce <_malloc_r+0x3f2>
 80063ea:	2b54      	cmp	r3, #84	; 0x54
 80063ec:	f200 80ad 	bhi.w	800654a <_malloc_r+0x46e>
 80063f0:	0b2b      	lsrs	r3, r5, #12
 80063f2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80063f6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80063fa:	00c3      	lsls	r3, r0, #3
 80063fc:	e6b3      	b.n	8006166 <_malloc_r+0x8a>
 80063fe:	4423      	add	r3, r4
 8006400:	4630      	mov	r0, r6
 8006402:	685a      	ldr	r2, [r3, #4]
 8006404:	f042 0201 	orr.w	r2, r2, #1
 8006408:	605a      	str	r2, [r3, #4]
 800640a:	3408      	adds	r4, #8
 800640c:	f000 f95a 	bl	80066c4 <__malloc_unlock>
 8006410:	e68c      	b.n	800612c <_malloc_r+0x50>
 8006412:	bf00      	nop
 8006414:	20000448 	.word	0x20000448
 8006418:	20000a9c 	.word	0x20000a9c
 800641c:	20000a6c 	.word	0x20000a6c
 8006420:	20000a94 	.word	0x20000a94
 8006424:	20000a98 	.word	0x20000a98
 8006428:	20000450 	.word	0x20000450
 800642c:	20000850 	.word	0x20000850
 8006430:	1961      	adds	r1, r4, r5
 8006432:	f045 0e01 	orr.w	lr, r5, #1
 8006436:	f042 0501 	orr.w	r5, r2, #1
 800643a:	f8c4 e004 	str.w	lr, [r4, #4]
 800643e:	4630      	mov	r0, r6
 8006440:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006444:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006448:	604d      	str	r5, [r1, #4]
 800644a:	50e2      	str	r2, [r4, r3]
 800644c:	f000 f93a 	bl	80066c4 <__malloc_unlock>
 8006450:	3408      	adds	r4, #8
 8006452:	e66b      	b.n	800612c <_malloc_r+0x50>
 8006454:	08e8      	lsrs	r0, r5, #3
 8006456:	f105 0308 	add.w	r3, r5, #8
 800645a:	e64f      	b.n	80060fc <_malloc_r+0x20>
 800645c:	f108 0801 	add.w	r8, r8, #1
 8006460:	f018 0f03 	tst.w	r8, #3
 8006464:	f10e 0e08 	add.w	lr, lr, #8
 8006468:	f47f aed0 	bne.w	800620c <_malloc_r+0x130>
 800646c:	e052      	b.n	8006514 <_malloc_r+0x438>
 800646e:	4419      	add	r1, r3
 8006470:	461c      	mov	r4, r3
 8006472:	684a      	ldr	r2, [r1, #4]
 8006474:	68db      	ldr	r3, [r3, #12]
 8006476:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800647a:	f042 0201 	orr.w	r2, r2, #1
 800647e:	604a      	str	r2, [r1, #4]
 8006480:	4630      	mov	r0, r6
 8006482:	60eb      	str	r3, [r5, #12]
 8006484:	609d      	str	r5, [r3, #8]
 8006486:	f000 f91d 	bl	80066c4 <__malloc_unlock>
 800648a:	e64f      	b.n	800612c <_malloc_r+0x50>
 800648c:	0a5a      	lsrs	r2, r3, #9
 800648e:	2a04      	cmp	r2, #4
 8006490:	d935      	bls.n	80064fe <_malloc_r+0x422>
 8006492:	2a14      	cmp	r2, #20
 8006494:	d86f      	bhi.n	8006576 <_malloc_r+0x49a>
 8006496:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800649a:	00c9      	lsls	r1, r1, #3
 800649c:	325b      	adds	r2, #91	; 0x5b
 800649e:	eb07 0e01 	add.w	lr, r7, r1
 80064a2:	5879      	ldr	r1, [r7, r1]
 80064a4:	f1ae 0e08 	sub.w	lr, lr, #8
 80064a8:	458e      	cmp	lr, r1
 80064aa:	d058      	beq.n	800655e <_malloc_r+0x482>
 80064ac:	684a      	ldr	r2, [r1, #4]
 80064ae:	f022 0203 	bic.w	r2, r2, #3
 80064b2:	429a      	cmp	r2, r3
 80064b4:	d902      	bls.n	80064bc <_malloc_r+0x3e0>
 80064b6:	6889      	ldr	r1, [r1, #8]
 80064b8:	458e      	cmp	lr, r1
 80064ba:	d1f7      	bne.n	80064ac <_malloc_r+0x3d0>
 80064bc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 80064c0:	687b      	ldr	r3, [r7, #4]
 80064c2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 80064c6:	f8ce 4008 	str.w	r4, [lr, #8]
 80064ca:	60cc      	str	r4, [r1, #12]
 80064cc:	e68c      	b.n	80061e8 <_malloc_r+0x10c>
 80064ce:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80064d2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80064d6:	00c3      	lsls	r3, r0, #3
 80064d8:	e645      	b.n	8006166 <_malloc_r+0x8a>
 80064da:	42bc      	cmp	r4, r7
 80064dc:	d072      	beq.n	80065c4 <_malloc_r+0x4e8>
 80064de:	68bc      	ldr	r4, [r7, #8]
 80064e0:	6862      	ldr	r2, [r4, #4]
 80064e2:	f022 0203 	bic.w	r2, r2, #3
 80064e6:	4295      	cmp	r5, r2
 80064e8:	eba2 0305 	sub.w	r3, r2, r5
 80064ec:	d802      	bhi.n	80064f4 <_malloc_r+0x418>
 80064ee:	2b0f      	cmp	r3, #15
 80064f0:	f73f af51 	bgt.w	8006396 <_malloc_r+0x2ba>
 80064f4:	4630      	mov	r0, r6
 80064f6:	f000 f8e5 	bl	80066c4 <__malloc_unlock>
 80064fa:	2400      	movs	r4, #0
 80064fc:	e616      	b.n	800612c <_malloc_r+0x50>
 80064fe:	099a      	lsrs	r2, r3, #6
 8006500:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006504:	00c9      	lsls	r1, r1, #3
 8006506:	3238      	adds	r2, #56	; 0x38
 8006508:	e7c9      	b.n	800649e <_malloc_r+0x3c2>
 800650a:	f8d9 9000 	ldr.w	r9, [r9]
 800650e:	4599      	cmp	r9, r3
 8006510:	f040 8083 	bne.w	800661a <_malloc_r+0x53e>
 8006514:	f010 0f03 	tst.w	r0, #3
 8006518:	f1a9 0308 	sub.w	r3, r9, #8
 800651c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006520:	d1f3      	bne.n	800650a <_malloc_r+0x42e>
 8006522:	687b      	ldr	r3, [r7, #4]
 8006524:	ea23 0304 	bic.w	r3, r3, r4
 8006528:	607b      	str	r3, [r7, #4]
 800652a:	0064      	lsls	r4, r4, #1
 800652c:	429c      	cmp	r4, r3
 800652e:	f63f aeac 	bhi.w	800628a <_malloc_r+0x1ae>
 8006532:	b91c      	cbnz	r4, 800653c <_malloc_r+0x460>
 8006534:	e6a9      	b.n	800628a <_malloc_r+0x1ae>
 8006536:	0064      	lsls	r4, r4, #1
 8006538:	f108 0804 	add.w	r8, r8, #4
 800653c:	421c      	tst	r4, r3
 800653e:	d0fa      	beq.n	8006536 <_malloc_r+0x45a>
 8006540:	4640      	mov	r0, r8
 8006542:	e65f      	b.n	8006204 <_malloc_r+0x128>
 8006544:	f108 0810 	add.w	r8, r8, #16
 8006548:	e6bc      	b.n	80062c4 <_malloc_r+0x1e8>
 800654a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800654e:	d826      	bhi.n	800659e <_malloc_r+0x4c2>
 8006550:	0beb      	lsrs	r3, r5, #15
 8006552:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006556:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800655a:	00c3      	lsls	r3, r0, #3
 800655c:	e603      	b.n	8006166 <_malloc_r+0x8a>
 800655e:	687b      	ldr	r3, [r7, #4]
 8006560:	1092      	asrs	r2, r2, #2
 8006562:	f04f 0801 	mov.w	r8, #1
 8006566:	fa08 f202 	lsl.w	r2, r8, r2
 800656a:	4313      	orrs	r3, r2
 800656c:	607b      	str	r3, [r7, #4]
 800656e:	e7a8      	b.n	80064c2 <_malloc_r+0x3e6>
 8006570:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006574:	e6ce      	b.n	8006314 <_malloc_r+0x238>
 8006576:	2a54      	cmp	r2, #84	; 0x54
 8006578:	d829      	bhi.n	80065ce <_malloc_r+0x4f2>
 800657a:	0b1a      	lsrs	r2, r3, #12
 800657c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006580:	00c9      	lsls	r1, r1, #3
 8006582:	326e      	adds	r2, #110	; 0x6e
 8006584:	e78b      	b.n	800649e <_malloc_r+0x3c2>
 8006586:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800658a:	2900      	cmp	r1, #0
 800658c:	f47f aeae 	bne.w	80062ec <_malloc_r+0x210>
 8006590:	eb09 0208 	add.w	r2, r9, r8
 8006594:	68b9      	ldr	r1, [r7, #8]
 8006596:	f042 0201 	orr.w	r2, r2, #1
 800659a:	604a      	str	r2, [r1, #4]
 800659c:	e6ec      	b.n	8006378 <_malloc_r+0x29c>
 800659e:	f240 5254 	movw	r2, #1364	; 0x554
 80065a2:	4293      	cmp	r3, r2
 80065a4:	d81c      	bhi.n	80065e0 <_malloc_r+0x504>
 80065a6:	0cab      	lsrs	r3, r5, #18
 80065a8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80065ac:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80065b0:	00c3      	lsls	r3, r0, #3
 80065b2:	e5d8      	b.n	8006166 <_malloc_r+0x8a>
 80065b4:	2301      	movs	r3, #1
 80065b6:	f8cb 3004 	str.w	r3, [fp, #4]
 80065ba:	e79b      	b.n	80064f4 <_malloc_r+0x418>
 80065bc:	2101      	movs	r1, #1
 80065be:	f04f 0800 	mov.w	r8, #0
 80065c2:	e6ba      	b.n	800633a <_malloc_r+0x25e>
 80065c4:	4a16      	ldr	r2, [pc, #88]	; (8006620 <_malloc_r+0x544>)
 80065c6:	6813      	ldr	r3, [r2, #0]
 80065c8:	4443      	add	r3, r8
 80065ca:	6013      	str	r3, [r2, #0]
 80065cc:	e68e      	b.n	80062ec <_malloc_r+0x210>
 80065ce:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80065d2:	d814      	bhi.n	80065fe <_malloc_r+0x522>
 80065d4:	0bda      	lsrs	r2, r3, #15
 80065d6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80065da:	00c9      	lsls	r1, r1, #3
 80065dc:	3277      	adds	r2, #119	; 0x77
 80065de:	e75e      	b.n	800649e <_malloc_r+0x3c2>
 80065e0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80065e4:	207f      	movs	r0, #127	; 0x7f
 80065e6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80065ea:	e5bc      	b.n	8006166 <_malloc_r+0x8a>
 80065ec:	f104 0108 	add.w	r1, r4, #8
 80065f0:	4630      	mov	r0, r6
 80065f2:	9201      	str	r2, [sp, #4]
 80065f4:	f004 f95a 	bl	800a8ac <_free_r>
 80065f8:	9a01      	ldr	r2, [sp, #4]
 80065fa:	6813      	ldr	r3, [r2, #0]
 80065fc:	e6bc      	b.n	8006378 <_malloc_r+0x29c>
 80065fe:	f240 5154 	movw	r1, #1364	; 0x554
 8006602:	428a      	cmp	r2, r1
 8006604:	d805      	bhi.n	8006612 <_malloc_r+0x536>
 8006606:	0c9a      	lsrs	r2, r3, #18
 8006608:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800660c:	00c9      	lsls	r1, r1, #3
 800660e:	327c      	adds	r2, #124	; 0x7c
 8006610:	e745      	b.n	800649e <_malloc_r+0x3c2>
 8006612:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006616:	227e      	movs	r2, #126	; 0x7e
 8006618:	e741      	b.n	800649e <_malloc_r+0x3c2>
 800661a:	687b      	ldr	r3, [r7, #4]
 800661c:	e785      	b.n	800652a <_malloc_r+0x44e>
 800661e:	bf00      	nop
 8006620:	20000a6c 	.word	0x20000a6c

08006624 <memset>:
 8006624:	b4f0      	push	{r4, r5, r6, r7}
 8006626:	0786      	lsls	r6, r0, #30
 8006628:	d043      	beq.n	80066b2 <memset+0x8e>
 800662a:	1e54      	subs	r4, r2, #1
 800662c:	2a00      	cmp	r2, #0
 800662e:	d03e      	beq.n	80066ae <memset+0x8a>
 8006630:	b2ca      	uxtb	r2, r1
 8006632:	4603      	mov	r3, r0
 8006634:	e002      	b.n	800663c <memset+0x18>
 8006636:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800663a:	d338      	bcc.n	80066ae <memset+0x8a>
 800663c:	f803 2b01 	strb.w	r2, [r3], #1
 8006640:	079d      	lsls	r5, r3, #30
 8006642:	d1f8      	bne.n	8006636 <memset+0x12>
 8006644:	2c03      	cmp	r4, #3
 8006646:	d92b      	bls.n	80066a0 <memset+0x7c>
 8006648:	b2cd      	uxtb	r5, r1
 800664a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800664e:	2c0f      	cmp	r4, #15
 8006650:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8006654:	d916      	bls.n	8006684 <memset+0x60>
 8006656:	f1a4 0710 	sub.w	r7, r4, #16
 800665a:	093f      	lsrs	r7, r7, #4
 800665c:	f103 0620 	add.w	r6, r3, #32
 8006660:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8006664:	f103 0210 	add.w	r2, r3, #16
 8006668:	e942 5504 	strd	r5, r5, [r2, #-16]
 800666c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8006670:	3210      	adds	r2, #16
 8006672:	42b2      	cmp	r2, r6
 8006674:	d1f8      	bne.n	8006668 <memset+0x44>
 8006676:	f004 040f 	and.w	r4, r4, #15
 800667a:	3701      	adds	r7, #1
 800667c:	2c03      	cmp	r4, #3
 800667e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8006682:	d90d      	bls.n	80066a0 <memset+0x7c>
 8006684:	461e      	mov	r6, r3
 8006686:	4622      	mov	r2, r4
 8006688:	3a04      	subs	r2, #4
 800668a:	2a03      	cmp	r2, #3
 800668c:	f846 5b04 	str.w	r5, [r6], #4
 8006690:	d8fa      	bhi.n	8006688 <memset+0x64>
 8006692:	1f22      	subs	r2, r4, #4
 8006694:	f022 0203 	bic.w	r2, r2, #3
 8006698:	3204      	adds	r2, #4
 800669a:	4413      	add	r3, r2
 800669c:	f004 0403 	and.w	r4, r4, #3
 80066a0:	b12c      	cbz	r4, 80066ae <memset+0x8a>
 80066a2:	b2c9      	uxtb	r1, r1
 80066a4:	441c      	add	r4, r3
 80066a6:	f803 1b01 	strb.w	r1, [r3], #1
 80066aa:	429c      	cmp	r4, r3
 80066ac:	d1fb      	bne.n	80066a6 <memset+0x82>
 80066ae:	bcf0      	pop	{r4, r5, r6, r7}
 80066b0:	4770      	bx	lr
 80066b2:	4614      	mov	r4, r2
 80066b4:	4603      	mov	r3, r0
 80066b6:	e7c5      	b.n	8006644 <memset+0x20>

080066b8 <__malloc_lock>:
 80066b8:	4801      	ldr	r0, [pc, #4]	; (80066c0 <__malloc_lock+0x8>)
 80066ba:	f004 bbb3 	b.w	800ae24 <__retarget_lock_acquire_recursive>
 80066be:	bf00      	nop
 80066c0:	20001458 	.word	0x20001458

080066c4 <__malloc_unlock>:
 80066c4:	4801      	ldr	r0, [pc, #4]	; (80066cc <__malloc_unlock+0x8>)
 80066c6:	f004 bbaf 	b.w	800ae28 <__retarget_lock_release_recursive>
 80066ca:	bf00      	nop
 80066cc:	20001458 	.word	0x20001458

080066d0 <printf>:
 80066d0:	b40f      	push	{r0, r1, r2, r3}
 80066d2:	b500      	push	{lr}
 80066d4:	4907      	ldr	r1, [pc, #28]	; (80066f4 <printf+0x24>)
 80066d6:	b083      	sub	sp, #12
 80066d8:	ab04      	add	r3, sp, #16
 80066da:	6808      	ldr	r0, [r1, #0]
 80066dc:	f853 2b04 	ldr.w	r2, [r3], #4
 80066e0:	6881      	ldr	r1, [r0, #8]
 80066e2:	9301      	str	r3, [sp, #4]
 80066e4:	f001 f918 	bl	8007918 <_vfprintf_r>
 80066e8:	b003      	add	sp, #12
 80066ea:	f85d eb04 	ldr.w	lr, [sp], #4
 80066ee:	b004      	add	sp, #16
 80066f0:	4770      	bx	lr
 80066f2:	bf00      	nop
 80066f4:	2000001c 	.word	0x2000001c

080066f8 <_puts_r>:
 80066f8:	b570      	push	{r4, r5, r6, lr}
 80066fa:	4605      	mov	r5, r0
 80066fc:	b088      	sub	sp, #32
 80066fe:	4608      	mov	r0, r1
 8006700:	460c      	mov	r4, r1
 8006702:	f7f9 fffd 	bl	8000700 <strlen>
 8006706:	4a22      	ldr	r2, [pc, #136]	; (8006790 <_puts_r+0x98>)
 8006708:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800670a:	9404      	str	r4, [sp, #16]
 800670c:	2601      	movs	r6, #1
 800670e:	1c44      	adds	r4, r0, #1
 8006710:	a904      	add	r1, sp, #16
 8006712:	9206      	str	r2, [sp, #24]
 8006714:	2202      	movs	r2, #2
 8006716:	9403      	str	r4, [sp, #12]
 8006718:	9005      	str	r0, [sp, #20]
 800671a:	68ac      	ldr	r4, [r5, #8]
 800671c:	9607      	str	r6, [sp, #28]
 800671e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8006722:	b31b      	cbz	r3, 800676c <_puts_r+0x74>
 8006724:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006726:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800672a:	07ce      	lsls	r6, r1, #31
 800672c:	b29a      	uxth	r2, r3
 800672e:	d401      	bmi.n	8006734 <_puts_r+0x3c>
 8006730:	0590      	lsls	r0, r2, #22
 8006732:	d525      	bpl.n	8006780 <_puts_r+0x88>
 8006734:	0491      	lsls	r1, r2, #18
 8006736:	d406      	bmi.n	8006746 <_puts_r+0x4e>
 8006738:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800673a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800673e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8006742:	81a3      	strh	r3, [r4, #12]
 8006744:	6662      	str	r2, [r4, #100]	; 0x64
 8006746:	4628      	mov	r0, r5
 8006748:	aa01      	add	r2, sp, #4
 800674a:	4621      	mov	r1, r4
 800674c:	f004 f9a2 	bl	800aa94 <__sfvwrite_r>
 8006750:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006752:	2800      	cmp	r0, #0
 8006754:	bf0c      	ite	eq
 8006756:	250a      	moveq	r5, #10
 8006758:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 800675c:	07da      	lsls	r2, r3, #31
 800675e:	d402      	bmi.n	8006766 <_puts_r+0x6e>
 8006760:	89a3      	ldrh	r3, [r4, #12]
 8006762:	059b      	lsls	r3, r3, #22
 8006764:	d506      	bpl.n	8006774 <_puts_r+0x7c>
 8006766:	4628      	mov	r0, r5
 8006768:	b008      	add	sp, #32
 800676a:	bd70      	pop	{r4, r5, r6, pc}
 800676c:	4628      	mov	r0, r5
 800676e:	f003 ff79 	bl	800a664 <__sinit>
 8006772:	e7d7      	b.n	8006724 <_puts_r+0x2c>
 8006774:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006776:	f004 fb57 	bl	800ae28 <__retarget_lock_release_recursive>
 800677a:	4628      	mov	r0, r5
 800677c:	b008      	add	sp, #32
 800677e:	bd70      	pop	{r4, r5, r6, pc}
 8006780:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006782:	f004 fb4f 	bl	800ae24 <__retarget_lock_acquire_recursive>
 8006786:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800678a:	b29a      	uxth	r2, r3
 800678c:	e7d2      	b.n	8006734 <_puts_r+0x3c>
 800678e:	bf00      	nop
 8006790:	0800cfe0 	.word	0x0800cfe0

08006794 <puts>:
 8006794:	4b02      	ldr	r3, [pc, #8]	; (80067a0 <puts+0xc>)
 8006796:	4601      	mov	r1, r0
 8006798:	6818      	ldr	r0, [r3, #0]
 800679a:	f7ff bfad 	b.w	80066f8 <_puts_r>
 800679e:	bf00      	nop
 80067a0:	2000001c 	.word	0x2000001c

080067a4 <_realloc_r>:
 80067a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80067a8:	4692      	mov	sl, r2
 80067aa:	b083      	sub	sp, #12
 80067ac:	2900      	cmp	r1, #0
 80067ae:	f000 80a1 	beq.w	80068f4 <_realloc_r+0x150>
 80067b2:	460d      	mov	r5, r1
 80067b4:	4680      	mov	r8, r0
 80067b6:	f10a 040b 	add.w	r4, sl, #11
 80067ba:	f7ff ff7d 	bl	80066b8 <__malloc_lock>
 80067be:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80067c2:	2c16      	cmp	r4, #22
 80067c4:	f022 0603 	bic.w	r6, r2, #3
 80067c8:	f1a5 0708 	sub.w	r7, r5, #8
 80067cc:	d83e      	bhi.n	800684c <_realloc_r+0xa8>
 80067ce:	2410      	movs	r4, #16
 80067d0:	4621      	mov	r1, r4
 80067d2:	45a2      	cmp	sl, r4
 80067d4:	d83f      	bhi.n	8006856 <_realloc_r+0xb2>
 80067d6:	428e      	cmp	r6, r1
 80067d8:	eb07 0906 	add.w	r9, r7, r6
 80067dc:	da74      	bge.n	80068c8 <_realloc_r+0x124>
 80067de:	4bc7      	ldr	r3, [pc, #796]	; (8006afc <_realloc_r+0x358>)
 80067e0:	6898      	ldr	r0, [r3, #8]
 80067e2:	4548      	cmp	r0, r9
 80067e4:	f000 80aa 	beq.w	800693c <_realloc_r+0x198>
 80067e8:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80067ec:	f020 0301 	bic.w	r3, r0, #1
 80067f0:	444b      	add	r3, r9
 80067f2:	685b      	ldr	r3, [r3, #4]
 80067f4:	07db      	lsls	r3, r3, #31
 80067f6:	f140 8083 	bpl.w	8006900 <_realloc_r+0x15c>
 80067fa:	07d2      	lsls	r2, r2, #31
 80067fc:	d534      	bpl.n	8006868 <_realloc_r+0xc4>
 80067fe:	4651      	mov	r1, sl
 8006800:	4640      	mov	r0, r8
 8006802:	f7ff fc6b 	bl	80060dc <_malloc_r>
 8006806:	4682      	mov	sl, r0
 8006808:	b1e0      	cbz	r0, 8006844 <_realloc_r+0xa0>
 800680a:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800680e:	f023 0301 	bic.w	r3, r3, #1
 8006812:	443b      	add	r3, r7
 8006814:	f1a0 0208 	sub.w	r2, r0, #8
 8006818:	4293      	cmp	r3, r2
 800681a:	f000 80f9 	beq.w	8006a10 <_realloc_r+0x26c>
 800681e:	1f32      	subs	r2, r6, #4
 8006820:	2a24      	cmp	r2, #36	; 0x24
 8006822:	f200 8107 	bhi.w	8006a34 <_realloc_r+0x290>
 8006826:	2a13      	cmp	r2, #19
 8006828:	6829      	ldr	r1, [r5, #0]
 800682a:	f200 80e6 	bhi.w	80069fa <_realloc_r+0x256>
 800682e:	4603      	mov	r3, r0
 8006830:	462a      	mov	r2, r5
 8006832:	6019      	str	r1, [r3, #0]
 8006834:	6851      	ldr	r1, [r2, #4]
 8006836:	6059      	str	r1, [r3, #4]
 8006838:	6892      	ldr	r2, [r2, #8]
 800683a:	609a      	str	r2, [r3, #8]
 800683c:	4629      	mov	r1, r5
 800683e:	4640      	mov	r0, r8
 8006840:	f004 f834 	bl	800a8ac <_free_r>
 8006844:	4640      	mov	r0, r8
 8006846:	f7ff ff3d 	bl	80066c4 <__malloc_unlock>
 800684a:	e04f      	b.n	80068ec <_realloc_r+0x148>
 800684c:	f024 0407 	bic.w	r4, r4, #7
 8006850:	2c00      	cmp	r4, #0
 8006852:	4621      	mov	r1, r4
 8006854:	dabd      	bge.n	80067d2 <_realloc_r+0x2e>
 8006856:	f04f 0a00 	mov.w	sl, #0
 800685a:	230c      	movs	r3, #12
 800685c:	4650      	mov	r0, sl
 800685e:	f8c8 3000 	str.w	r3, [r8]
 8006862:	b003      	add	sp, #12
 8006864:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006868:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800686c:	eba7 0b03 	sub.w	fp, r7, r3
 8006870:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006874:	f022 0203 	bic.w	r2, r2, #3
 8006878:	18b3      	adds	r3, r6, r2
 800687a:	428b      	cmp	r3, r1
 800687c:	dbbf      	blt.n	80067fe <_realloc_r+0x5a>
 800687e:	46da      	mov	sl, fp
 8006880:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006884:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006888:	1f32      	subs	r2, r6, #4
 800688a:	2a24      	cmp	r2, #36	; 0x24
 800688c:	60c1      	str	r1, [r0, #12]
 800688e:	eb0b 0903 	add.w	r9, fp, r3
 8006892:	6088      	str	r0, [r1, #8]
 8006894:	f200 80c6 	bhi.w	8006a24 <_realloc_r+0x280>
 8006898:	2a13      	cmp	r2, #19
 800689a:	6829      	ldr	r1, [r5, #0]
 800689c:	f240 80c0 	bls.w	8006a20 <_realloc_r+0x27c>
 80068a0:	f8cb 1008 	str.w	r1, [fp, #8]
 80068a4:	6869      	ldr	r1, [r5, #4]
 80068a6:	f8cb 100c 	str.w	r1, [fp, #12]
 80068aa:	2a1b      	cmp	r2, #27
 80068ac:	68a9      	ldr	r1, [r5, #8]
 80068ae:	f200 80d8 	bhi.w	8006a62 <_realloc_r+0x2be>
 80068b2:	f10b 0210 	add.w	r2, fp, #16
 80068b6:	3508      	adds	r5, #8
 80068b8:	6011      	str	r1, [r2, #0]
 80068ba:	6869      	ldr	r1, [r5, #4]
 80068bc:	6051      	str	r1, [r2, #4]
 80068be:	68a9      	ldr	r1, [r5, #8]
 80068c0:	6091      	str	r1, [r2, #8]
 80068c2:	461e      	mov	r6, r3
 80068c4:	465f      	mov	r7, fp
 80068c6:	4655      	mov	r5, sl
 80068c8:	687b      	ldr	r3, [r7, #4]
 80068ca:	1b32      	subs	r2, r6, r4
 80068cc:	2a0f      	cmp	r2, #15
 80068ce:	f003 0301 	and.w	r3, r3, #1
 80068d2:	d822      	bhi.n	800691a <_realloc_r+0x176>
 80068d4:	4333      	orrs	r3, r6
 80068d6:	607b      	str	r3, [r7, #4]
 80068d8:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80068dc:	f043 0301 	orr.w	r3, r3, #1
 80068e0:	f8c9 3004 	str.w	r3, [r9, #4]
 80068e4:	4640      	mov	r0, r8
 80068e6:	f7ff feed 	bl	80066c4 <__malloc_unlock>
 80068ea:	46aa      	mov	sl, r5
 80068ec:	4650      	mov	r0, sl
 80068ee:	b003      	add	sp, #12
 80068f0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068f4:	4611      	mov	r1, r2
 80068f6:	b003      	add	sp, #12
 80068f8:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80068fc:	f7ff bbee 	b.w	80060dc <_malloc_r>
 8006900:	f020 0003 	bic.w	r0, r0, #3
 8006904:	1833      	adds	r3, r6, r0
 8006906:	428b      	cmp	r3, r1
 8006908:	db61      	blt.n	80069ce <_realloc_r+0x22a>
 800690a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800690e:	461e      	mov	r6, r3
 8006910:	60ca      	str	r2, [r1, #12]
 8006912:	eb07 0903 	add.w	r9, r7, r3
 8006916:	6091      	str	r1, [r2, #8]
 8006918:	e7d6      	b.n	80068c8 <_realloc_r+0x124>
 800691a:	1939      	adds	r1, r7, r4
 800691c:	4323      	orrs	r3, r4
 800691e:	f042 0201 	orr.w	r2, r2, #1
 8006922:	607b      	str	r3, [r7, #4]
 8006924:	604a      	str	r2, [r1, #4]
 8006926:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800692a:	f043 0301 	orr.w	r3, r3, #1
 800692e:	3108      	adds	r1, #8
 8006930:	f8c9 3004 	str.w	r3, [r9, #4]
 8006934:	4640      	mov	r0, r8
 8006936:	f003 ffb9 	bl	800a8ac <_free_r>
 800693a:	e7d3      	b.n	80068e4 <_realloc_r+0x140>
 800693c:	6840      	ldr	r0, [r0, #4]
 800693e:	f020 0903 	bic.w	r9, r0, #3
 8006942:	44b1      	add	r9, r6
 8006944:	f104 0010 	add.w	r0, r4, #16
 8006948:	4581      	cmp	r9, r0
 800694a:	da77      	bge.n	8006a3c <_realloc_r+0x298>
 800694c:	07d2      	lsls	r2, r2, #31
 800694e:	f53f af56 	bmi.w	80067fe <_realloc_r+0x5a>
 8006952:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006956:	eba7 0b02 	sub.w	fp, r7, r2
 800695a:	f8db 2004 	ldr.w	r2, [fp, #4]
 800695e:	f022 0203 	bic.w	r2, r2, #3
 8006962:	4491      	add	r9, r2
 8006964:	4548      	cmp	r0, r9
 8006966:	dc87      	bgt.n	8006878 <_realloc_r+0xd4>
 8006968:	46da      	mov	sl, fp
 800696a:	f8db 100c 	ldr.w	r1, [fp, #12]
 800696e:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006972:	1f32      	subs	r2, r6, #4
 8006974:	2a24      	cmp	r2, #36	; 0x24
 8006976:	60c1      	str	r1, [r0, #12]
 8006978:	6088      	str	r0, [r1, #8]
 800697a:	f200 80a1 	bhi.w	8006ac0 <_realloc_r+0x31c>
 800697e:	2a13      	cmp	r2, #19
 8006980:	6829      	ldr	r1, [r5, #0]
 8006982:	f240 809b 	bls.w	8006abc <_realloc_r+0x318>
 8006986:	f8cb 1008 	str.w	r1, [fp, #8]
 800698a:	6869      	ldr	r1, [r5, #4]
 800698c:	f8cb 100c 	str.w	r1, [fp, #12]
 8006990:	2a1b      	cmp	r2, #27
 8006992:	68a9      	ldr	r1, [r5, #8]
 8006994:	f200 809b 	bhi.w	8006ace <_realloc_r+0x32a>
 8006998:	f10b 0210 	add.w	r2, fp, #16
 800699c:	3508      	adds	r5, #8
 800699e:	6011      	str	r1, [r2, #0]
 80069a0:	6869      	ldr	r1, [r5, #4]
 80069a2:	6051      	str	r1, [r2, #4]
 80069a4:	68a9      	ldr	r1, [r5, #8]
 80069a6:	6091      	str	r1, [r2, #8]
 80069a8:	eb0b 0104 	add.w	r1, fp, r4
 80069ac:	eba9 0204 	sub.w	r2, r9, r4
 80069b0:	f042 0201 	orr.w	r2, r2, #1
 80069b4:	6099      	str	r1, [r3, #8]
 80069b6:	604a      	str	r2, [r1, #4]
 80069b8:	f8db 3004 	ldr.w	r3, [fp, #4]
 80069bc:	f003 0301 	and.w	r3, r3, #1
 80069c0:	431c      	orrs	r4, r3
 80069c2:	4640      	mov	r0, r8
 80069c4:	f8cb 4004 	str.w	r4, [fp, #4]
 80069c8:	f7ff fe7c 	bl	80066c4 <__malloc_unlock>
 80069cc:	e78e      	b.n	80068ec <_realloc_r+0x148>
 80069ce:	07d3      	lsls	r3, r2, #31
 80069d0:	f53f af15 	bmi.w	80067fe <_realloc_r+0x5a>
 80069d4:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80069d8:	eba7 0b03 	sub.w	fp, r7, r3
 80069dc:	f8db 2004 	ldr.w	r2, [fp, #4]
 80069e0:	f022 0203 	bic.w	r2, r2, #3
 80069e4:	4410      	add	r0, r2
 80069e6:	1983      	adds	r3, r0, r6
 80069e8:	428b      	cmp	r3, r1
 80069ea:	f6ff af45 	blt.w	8006878 <_realloc_r+0xd4>
 80069ee:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80069f2:	46da      	mov	sl, fp
 80069f4:	60ca      	str	r2, [r1, #12]
 80069f6:	6091      	str	r1, [r2, #8]
 80069f8:	e742      	b.n	8006880 <_realloc_r+0xdc>
 80069fa:	6001      	str	r1, [r0, #0]
 80069fc:	686b      	ldr	r3, [r5, #4]
 80069fe:	6043      	str	r3, [r0, #4]
 8006a00:	2a1b      	cmp	r2, #27
 8006a02:	d83a      	bhi.n	8006a7a <_realloc_r+0x2d6>
 8006a04:	f105 0208 	add.w	r2, r5, #8
 8006a08:	f100 0308 	add.w	r3, r0, #8
 8006a0c:	68a9      	ldr	r1, [r5, #8]
 8006a0e:	e710      	b.n	8006832 <_realloc_r+0x8e>
 8006a10:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006a14:	f023 0303 	bic.w	r3, r3, #3
 8006a18:	441e      	add	r6, r3
 8006a1a:	eb07 0906 	add.w	r9, r7, r6
 8006a1e:	e753      	b.n	80068c8 <_realloc_r+0x124>
 8006a20:	4652      	mov	r2, sl
 8006a22:	e749      	b.n	80068b8 <_realloc_r+0x114>
 8006a24:	4629      	mov	r1, r5
 8006a26:	4650      	mov	r0, sl
 8006a28:	461e      	mov	r6, r3
 8006a2a:	465f      	mov	r7, fp
 8006a2c:	f004 fa8c 	bl	800af48 <memmove>
 8006a30:	4655      	mov	r5, sl
 8006a32:	e749      	b.n	80068c8 <_realloc_r+0x124>
 8006a34:	4629      	mov	r1, r5
 8006a36:	f004 fa87 	bl	800af48 <memmove>
 8006a3a:	e6ff      	b.n	800683c <_realloc_r+0x98>
 8006a3c:	4427      	add	r7, r4
 8006a3e:	eba9 0904 	sub.w	r9, r9, r4
 8006a42:	f049 0201 	orr.w	r2, r9, #1
 8006a46:	609f      	str	r7, [r3, #8]
 8006a48:	607a      	str	r2, [r7, #4]
 8006a4a:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006a4e:	f003 0301 	and.w	r3, r3, #1
 8006a52:	431c      	orrs	r4, r3
 8006a54:	4640      	mov	r0, r8
 8006a56:	f845 4c04 	str.w	r4, [r5, #-4]
 8006a5a:	f7ff fe33 	bl	80066c4 <__malloc_unlock>
 8006a5e:	46aa      	mov	sl, r5
 8006a60:	e744      	b.n	80068ec <_realloc_r+0x148>
 8006a62:	f8cb 1010 	str.w	r1, [fp, #16]
 8006a66:	68e9      	ldr	r1, [r5, #12]
 8006a68:	f8cb 1014 	str.w	r1, [fp, #20]
 8006a6c:	2a24      	cmp	r2, #36	; 0x24
 8006a6e:	d010      	beq.n	8006a92 <_realloc_r+0x2ee>
 8006a70:	6929      	ldr	r1, [r5, #16]
 8006a72:	f10b 0218 	add.w	r2, fp, #24
 8006a76:	3510      	adds	r5, #16
 8006a78:	e71e      	b.n	80068b8 <_realloc_r+0x114>
 8006a7a:	68ab      	ldr	r3, [r5, #8]
 8006a7c:	6083      	str	r3, [r0, #8]
 8006a7e:	68eb      	ldr	r3, [r5, #12]
 8006a80:	60c3      	str	r3, [r0, #12]
 8006a82:	2a24      	cmp	r2, #36	; 0x24
 8006a84:	d010      	beq.n	8006aa8 <_realloc_r+0x304>
 8006a86:	f105 0210 	add.w	r2, r5, #16
 8006a8a:	f100 0310 	add.w	r3, r0, #16
 8006a8e:	6929      	ldr	r1, [r5, #16]
 8006a90:	e6cf      	b.n	8006832 <_realloc_r+0x8e>
 8006a92:	692a      	ldr	r2, [r5, #16]
 8006a94:	f8cb 2018 	str.w	r2, [fp, #24]
 8006a98:	696a      	ldr	r2, [r5, #20]
 8006a9a:	f8cb 201c 	str.w	r2, [fp, #28]
 8006a9e:	69a9      	ldr	r1, [r5, #24]
 8006aa0:	f10b 0220 	add.w	r2, fp, #32
 8006aa4:	3518      	adds	r5, #24
 8006aa6:	e707      	b.n	80068b8 <_realloc_r+0x114>
 8006aa8:	692b      	ldr	r3, [r5, #16]
 8006aaa:	6103      	str	r3, [r0, #16]
 8006aac:	696b      	ldr	r3, [r5, #20]
 8006aae:	6143      	str	r3, [r0, #20]
 8006ab0:	69a9      	ldr	r1, [r5, #24]
 8006ab2:	f105 0218 	add.w	r2, r5, #24
 8006ab6:	f100 0318 	add.w	r3, r0, #24
 8006aba:	e6ba      	b.n	8006832 <_realloc_r+0x8e>
 8006abc:	4652      	mov	r2, sl
 8006abe:	e76e      	b.n	800699e <_realloc_r+0x1fa>
 8006ac0:	4629      	mov	r1, r5
 8006ac2:	4650      	mov	r0, sl
 8006ac4:	9301      	str	r3, [sp, #4]
 8006ac6:	f004 fa3f 	bl	800af48 <memmove>
 8006aca:	9b01      	ldr	r3, [sp, #4]
 8006acc:	e76c      	b.n	80069a8 <_realloc_r+0x204>
 8006ace:	f8cb 1010 	str.w	r1, [fp, #16]
 8006ad2:	68e9      	ldr	r1, [r5, #12]
 8006ad4:	f8cb 1014 	str.w	r1, [fp, #20]
 8006ad8:	2a24      	cmp	r2, #36	; 0x24
 8006ada:	d004      	beq.n	8006ae6 <_realloc_r+0x342>
 8006adc:	6929      	ldr	r1, [r5, #16]
 8006ade:	f10b 0218 	add.w	r2, fp, #24
 8006ae2:	3510      	adds	r5, #16
 8006ae4:	e75b      	b.n	800699e <_realloc_r+0x1fa>
 8006ae6:	692a      	ldr	r2, [r5, #16]
 8006ae8:	f8cb 2018 	str.w	r2, [fp, #24]
 8006aec:	696a      	ldr	r2, [r5, #20]
 8006aee:	f8cb 201c 	str.w	r2, [fp, #28]
 8006af2:	69a9      	ldr	r1, [r5, #24]
 8006af4:	f10b 0220 	add.w	r2, fp, #32
 8006af8:	3518      	adds	r5, #24
 8006afa:	e750      	b.n	800699e <_realloc_r+0x1fa>
 8006afc:	20000448 	.word	0x20000448

08006b00 <_sbrk_r>:
 8006b00:	b538      	push	{r3, r4, r5, lr}
 8006b02:	4c07      	ldr	r4, [pc, #28]	; (8006b20 <_sbrk_r+0x20>)
 8006b04:	2300      	movs	r3, #0
 8006b06:	4605      	mov	r5, r0
 8006b08:	4608      	mov	r0, r1
 8006b0a:	6023      	str	r3, [r4, #0]
 8006b0c:	f7ff f9f9 	bl	8005f02 <_sbrk>
 8006b10:	1c43      	adds	r3, r0, #1
 8006b12:	d000      	beq.n	8006b16 <_sbrk_r+0x16>
 8006b14:	bd38      	pop	{r3, r4, r5, pc}
 8006b16:	6823      	ldr	r3, [r4, #0]
 8006b18:	2b00      	cmp	r3, #0
 8006b1a:	d0fb      	beq.n	8006b14 <_sbrk_r+0x14>
 8006b1c:	602b      	str	r3, [r5, #0]
 8006b1e:	bd38      	pop	{r3, r4, r5, pc}
 8006b20:	2000146c 	.word	0x2000146c

08006b24 <__sprint_r.part.0>:
 8006b24:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b28:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006b2a:	049c      	lsls	r4, r3, #18
 8006b2c:	4692      	mov	sl, r2
 8006b2e:	d52d      	bpl.n	8006b8c <__sprint_r.part.0+0x68>
 8006b30:	6893      	ldr	r3, [r2, #8]
 8006b32:	6812      	ldr	r2, [r2, #0]
 8006b34:	b343      	cbz	r3, 8006b88 <__sprint_r.part.0+0x64>
 8006b36:	460e      	mov	r6, r1
 8006b38:	4607      	mov	r7, r0
 8006b3a:	f102 0908 	add.w	r9, r2, #8
 8006b3e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006b42:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006b46:	d015      	beq.n	8006b74 <__sprint_r.part.0+0x50>
 8006b48:	3d04      	subs	r5, #4
 8006b4a:	2400      	movs	r4, #0
 8006b4c:	e001      	b.n	8006b52 <__sprint_r.part.0+0x2e>
 8006b4e:	45a0      	cmp	r8, r4
 8006b50:	d00e      	beq.n	8006b70 <__sprint_r.part.0+0x4c>
 8006b52:	4632      	mov	r2, r6
 8006b54:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006b58:	4638      	mov	r0, r7
 8006b5a:	f003 fe25 	bl	800a7a8 <_fputwc_r>
 8006b5e:	1c43      	adds	r3, r0, #1
 8006b60:	f104 0401 	add.w	r4, r4, #1
 8006b64:	d1f3      	bne.n	8006b4e <__sprint_r.part.0+0x2a>
 8006b66:	2300      	movs	r3, #0
 8006b68:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b6c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b70:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006b74:	f02b 0b03 	bic.w	fp, fp, #3
 8006b78:	eba3 030b 	sub.w	r3, r3, fp
 8006b7c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006b80:	f109 0908 	add.w	r9, r9, #8
 8006b84:	2b00      	cmp	r3, #0
 8006b86:	d1da      	bne.n	8006b3e <__sprint_r.part.0+0x1a>
 8006b88:	2000      	movs	r0, #0
 8006b8a:	e7ec      	b.n	8006b66 <__sprint_r.part.0+0x42>
 8006b8c:	f003 ff82 	bl	800aa94 <__sfvwrite_r>
 8006b90:	2300      	movs	r3, #0
 8006b92:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b96:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b9a:	bf00      	nop

08006b9c <__sprint_r>:
 8006b9c:	6893      	ldr	r3, [r2, #8]
 8006b9e:	b10b      	cbz	r3, 8006ba4 <__sprint_r+0x8>
 8006ba0:	f7ff bfc0 	b.w	8006b24 <__sprint_r.part.0>
 8006ba4:	b410      	push	{r4}
 8006ba6:	4618      	mov	r0, r3
 8006ba8:	6053      	str	r3, [r2, #4]
 8006baa:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006bae:	4770      	bx	lr

08006bb0 <_vfiprintf_r>:
 8006bb0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006bb4:	b0bd      	sub	sp, #244	; 0xf4
 8006bb6:	461c      	mov	r4, r3
 8006bb8:	9101      	str	r1, [sp, #4]
 8006bba:	4690      	mov	r8, r2
 8006bbc:	e9cd 0305 	strd	r0, r3, [sp, #20]
 8006bc0:	b118      	cbz	r0, 8006bca <_vfiprintf_r+0x1a>
 8006bc2:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006bc4:	2b00      	cmp	r3, #0
 8006bc6:	f000 83ce 	beq.w	8007366 <_vfiprintf_r+0x7b6>
 8006bca:	9b01      	ldr	r3, [sp, #4]
 8006bcc:	f9b3 100c 	ldrsh.w	r1, [r3, #12]
 8006bd0:	6e5b      	ldr	r3, [r3, #100]	; 0x64
 8006bd2:	07db      	lsls	r3, r3, #31
 8006bd4:	b28a      	uxth	r2, r1
 8006bd6:	d402      	bmi.n	8006bde <_vfiprintf_r+0x2e>
 8006bd8:	0597      	lsls	r7, r2, #22
 8006bda:	f140 853b 	bpl.w	8007654 <_vfiprintf_r+0xaa4>
 8006bde:	0496      	lsls	r6, r2, #18
 8006be0:	d408      	bmi.n	8006bf4 <_vfiprintf_r+0x44>
 8006be2:	9801      	ldr	r0, [sp, #4]
 8006be4:	6e43      	ldr	r3, [r0, #100]	; 0x64
 8006be6:	f441 5200 	orr.w	r2, r1, #8192	; 0x2000
 8006bea:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8006bee:	8182      	strh	r2, [r0, #12]
 8006bf0:	6643      	str	r3, [r0, #100]	; 0x64
 8006bf2:	b292      	uxth	r2, r2
 8006bf4:	0715      	lsls	r5, r2, #28
 8006bf6:	f140 80c7 	bpl.w	8006d88 <_vfiprintf_r+0x1d8>
 8006bfa:	9b01      	ldr	r3, [sp, #4]
 8006bfc:	691b      	ldr	r3, [r3, #16]
 8006bfe:	2b00      	cmp	r3, #0
 8006c00:	f000 80c2 	beq.w	8006d88 <_vfiprintf_r+0x1d8>
 8006c04:	f002 031a 	and.w	r3, r2, #26
 8006c08:	2b0a      	cmp	r3, #10
 8006c0a:	f000 8393 	beq.w	8007334 <_vfiprintf_r+0x784>
 8006c0e:	2300      	movs	r3, #0
 8006c10:	e9cd 3311 	strd	r3, r3, [sp, #68]	; 0x44
 8006c14:	e9cd 330c 	strd	r3, r3, [sp, #48]	; 0x30
 8006c18:	f10d 094c 	add.w	r9, sp, #76	; 0x4c
 8006c1c:	930a      	str	r3, [sp, #40]	; 0x28
 8006c1e:	930b      	str	r3, [sp, #44]	; 0x2c
 8006c20:	9302      	str	r3, [sp, #8]
 8006c22:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8006c26:	46cb      	mov	fp, r9
 8006c28:	f898 3000 	ldrb.w	r3, [r8]
 8006c2c:	2b00      	cmp	r3, #0
 8006c2e:	f000 8445 	beq.w	80074bc <_vfiprintf_r+0x90c>
 8006c32:	2b25      	cmp	r3, #37	; 0x25
 8006c34:	4644      	mov	r4, r8
 8006c36:	d102      	bne.n	8006c3e <_vfiprintf_r+0x8e>
 8006c38:	e01e      	b.n	8006c78 <_vfiprintf_r+0xc8>
 8006c3a:	2b25      	cmp	r3, #37	; 0x25
 8006c3c:	d003      	beq.n	8006c46 <_vfiprintf_r+0x96>
 8006c3e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8006c42:	2b00      	cmp	r3, #0
 8006c44:	d1f9      	bne.n	8006c3a <_vfiprintf_r+0x8a>
 8006c46:	eba4 0508 	sub.w	r5, r4, r8
 8006c4a:	b18d      	cbz	r5, 8006c70 <_vfiprintf_r+0xc0>
 8006c4c:	e9dd 3211 	ldrd	r3, r2, [sp, #68]	; 0x44
 8006c50:	3301      	adds	r3, #1
 8006c52:	442a      	add	r2, r5
 8006c54:	2b07      	cmp	r3, #7
 8006c56:	f8cb 8000 	str.w	r8, [fp]
 8006c5a:	f8cb 5004 	str.w	r5, [fp, #4]
 8006c5e:	e9cd 3211 	strd	r3, r2, [sp, #68]	; 0x44
 8006c62:	f300 80a6 	bgt.w	8006db2 <_vfiprintf_r+0x202>
 8006c66:	f10b 0b08 	add.w	fp, fp, #8
 8006c6a:	9b02      	ldr	r3, [sp, #8]
 8006c6c:	442b      	add	r3, r5
 8006c6e:	9302      	str	r3, [sp, #8]
 8006c70:	7823      	ldrb	r3, [r4, #0]
 8006c72:	2b00      	cmp	r3, #0
 8006c74:	f000 8422 	beq.w	80074bc <_vfiprintf_r+0x90c>
 8006c78:	2300      	movs	r3, #0
 8006c7a:	9304      	str	r3, [sp, #16]
 8006c7c:	f04f 0200 	mov.w	r2, #0
 8006c80:	461f      	mov	r7, r3
 8006c82:	7863      	ldrb	r3, [r4, #1]
 8006c84:	f88d 203b 	strb.w	r2, [sp, #59]	; 0x3b
 8006c88:	f104 0801 	add.w	r8, r4, #1
 8006c8c:	f04f 3aff 	mov.w	sl, #4294967295	; 0xffffffff
 8006c90:	252b      	movs	r5, #43	; 0x2b
 8006c92:	f108 0801 	add.w	r8, r8, #1
 8006c96:	f1a3 0220 	sub.w	r2, r3, #32
 8006c9a:	2a5a      	cmp	r2, #90	; 0x5a
 8006c9c:	f200 8366 	bhi.w	800736c <_vfiprintf_r+0x7bc>
 8006ca0:	e8df f012 	tbh	[pc, r2, lsl #1]
 8006ca4:	036402db 	.word	0x036402db
 8006ca8:	02d60364 	.word	0x02d60364
 8006cac:	03640364 	.word	0x03640364
 8006cb0:	02fc0364 	.word	0x02fc0364
 8006cb4:	03640364 	.word	0x03640364
 8006cb8:	02eb02f0 	.word	0x02eb02f0
 8006cbc:	02e60364 	.word	0x02e60364
 8006cc0:	03640320 	.word	0x03640320
 8006cc4:	0136031b 	.word	0x0136031b
 8006cc8:	01360136 	.word	0x01360136
 8006ccc:	01360136 	.word	0x01360136
 8006cd0:	01360136 	.word	0x01360136
 8006cd4:	01360136 	.word	0x01360136
 8006cd8:	03640364 	.word	0x03640364
 8006cdc:	03640364 	.word	0x03640364
 8006ce0:	03640364 	.word	0x03640364
 8006ce4:	03640364 	.word	0x03640364
 8006ce8:	01450364 	.word	0x01450364
 8006cec:	036402a6 	.word	0x036402a6
 8006cf0:	03640364 	.word	0x03640364
 8006cf4:	03640364 	.word	0x03640364
 8006cf8:	03640364 	.word	0x03640364
 8006cfc:	03640364 	.word	0x03640364
 8006d00:	00600364 	.word	0x00600364
 8006d04:	03640364 	.word	0x03640364
 8006d08:	028a0364 	.word	0x028a0364
 8006d0c:	02760364 	.word	0x02760364
 8006d10:	03640364 	.word	0x03640364
 8006d14:	03640238 	.word	0x03640238
 8006d18:	03640364 	.word	0x03640364
 8006d1c:	03640364 	.word	0x03640364
 8006d20:	03640364 	.word	0x03640364
 8006d24:	03640364 	.word	0x03640364
 8006d28:	01450364 	.word	0x01450364
 8006d2c:	036400e9 	.word	0x036400e9
 8006d30:	03640364 	.word	0x03640364
 8006d34:	00e902c9 	.word	0x00e902c9
 8006d38:	0364005b 	.word	0x0364005b
 8006d3c:	036402bc 	.word	0x036402bc
 8006d40:	00620263 	.word	0x00620263
 8006d44:	005b0254 	.word	0x005b0254
 8006d48:	028a0364 	.word	0x028a0364
 8006d4c:	0094005d 	.word	0x0094005d
 8006d50:	03640364 	.word	0x03640364
 8006d54:	036400cb 	.word	0x036400cb
 8006d58:	005d      	.short	0x005d
 8006d5a:	f047 0720 	orr.w	r7, r7, #32
 8006d5e:	f898 3000 	ldrb.w	r3, [r8]
 8006d62:	e796      	b.n	8006c92 <_vfiprintf_r+0xe2>
 8006d64:	f047 0710 	orr.w	r7, r7, #16
 8006d68:	06bc      	lsls	r4, r7, #26
 8006d6a:	f140 82d5 	bpl.w	8007318 <_vfiprintf_r+0x768>
 8006d6e:	9b06      	ldr	r3, [sp, #24]
 8006d70:	3307      	adds	r3, #7
 8006d72:	f023 0307 	bic.w	r3, r3, #7
 8006d76:	e9d3 4500 	ldrd	r4, r5, [r3]
 8006d7a:	f103 0208 	add.w	r2, r3, #8
 8006d7e:	9206      	str	r2, [sp, #24]
 8006d80:	f427 6380 	bic.w	r3, r7, #1024	; 0x400
 8006d84:	2200      	movs	r2, #0
 8006d86:	e02f      	b.n	8006de8 <_vfiprintf_r+0x238>
 8006d88:	9d01      	ldr	r5, [sp, #4]
 8006d8a:	9805      	ldr	r0, [sp, #20]
 8006d8c:	4629      	mov	r1, r5
 8006d8e:	f002 fb43 	bl	8009418 <__swsetup_r>
 8006d92:	b1a0      	cbz	r0, 8006dbe <_vfiprintf_r+0x20e>
 8006d94:	9a01      	ldr	r2, [sp, #4]
 8006d96:	6e53      	ldr	r3, [r2, #100]	; 0x64
 8006d98:	07d8      	lsls	r0, r3, #31
 8006d9a:	d403      	bmi.n	8006da4 <_vfiprintf_r+0x1f4>
 8006d9c:	8993      	ldrh	r3, [r2, #12]
 8006d9e:	0599      	lsls	r1, r3, #22
 8006da0:	f140 84ad 	bpl.w	80076fe <_vfiprintf_r+0xb4e>
 8006da4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8006da8:	9302      	str	r3, [sp, #8]
 8006daa:	9802      	ldr	r0, [sp, #8]
 8006dac:	b03d      	add	sp, #244	; 0xf4
 8006dae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006db2:	2a00      	cmp	r2, #0
 8006db4:	f040 841d 	bne.w	80075f2 <_vfiprintf_r+0xa42>
 8006db8:	9211      	str	r2, [sp, #68]	; 0x44
 8006dba:	46cb      	mov	fp, r9
 8006dbc:	e755      	b.n	8006c6a <_vfiprintf_r+0xba>
 8006dbe:	89aa      	ldrh	r2, [r5, #12]
 8006dc0:	f002 031a 	and.w	r3, r2, #26
 8006dc4:	2b0a      	cmp	r3, #10
 8006dc6:	f47f af22 	bne.w	8006c0e <_vfiprintf_r+0x5e>
 8006dca:	e2b3      	b.n	8007334 <_vfiprintf_r+0x784>
 8006dcc:	463b      	mov	r3, r7
 8006dce:	069d      	lsls	r5, r3, #26
 8006dd0:	9a06      	ldr	r2, [sp, #24]
 8006dd2:	f140 81e3 	bpl.w	800719c <_vfiprintf_r+0x5ec>
 8006dd6:	3207      	adds	r2, #7
 8006dd8:	f022 0207 	bic.w	r2, r2, #7
 8006ddc:	f102 0108 	add.w	r1, r2, #8
 8006de0:	e9d2 4500 	ldrd	r4, r5, [r2]
 8006de4:	9106      	str	r1, [sp, #24]
 8006de6:	2201      	movs	r2, #1
 8006de8:	f04f 0100 	mov.w	r1, #0
 8006dec:	f88d 103b 	strb.w	r1, [sp, #59]	; 0x3b
 8006df0:	f1ba 3fff 	cmp.w	sl, #4294967295	; 0xffffffff
 8006df4:	a93c      	add	r1, sp, #240	; 0xf0
 8006df6:	9100      	str	r1, [sp, #0]
 8006df8:	f000 83c8 	beq.w	800758c <_vfiprintf_r+0x9dc>
 8006dfc:	ea54 0105 	orrs.w	r1, r4, r5
 8006e00:	f023 0780 	bic.w	r7, r3, #128	; 0x80
 8006e04:	d15c      	bne.n	8006ec0 <_vfiprintf_r+0x310>
 8006e06:	f1ba 0f00 	cmp.w	sl, #0
 8006e0a:	f040 84da 	bne.w	80077c2 <_vfiprintf_r+0xc12>
 8006e0e:	2a00      	cmp	r2, #0
 8006e10:	f040 83eb 	bne.w	80075ea <_vfiprintf_r+0xa3a>
 8006e14:	f013 0301 	ands.w	r3, r3, #1
 8006e18:	ae3c      	add	r6, sp, #240	; 0xf0
 8006e1a:	9303      	str	r3, [sp, #12]
 8006e1c:	f040 8423 	bne.w	8007666 <_vfiprintf_r+0xab6>
 8006e20:	9a03      	ldr	r2, [sp, #12]
 8006e22:	f89d 303b 	ldrb.w	r3, [sp, #59]	; 0x3b
 8006e26:	4552      	cmp	r2, sl
 8006e28:	bfb8      	it	lt
 8006e2a:	4652      	movlt	r2, sl
 8006e2c:	9200      	str	r2, [sp, #0]
 8006e2e:	2b00      	cmp	r3, #0
 8006e30:	f000 808d 	beq.w	8006f4e <_vfiprintf_r+0x39e>
 8006e34:	3201      	adds	r2, #1
 8006e36:	9200      	str	r2, [sp, #0]
 8006e38:	e089      	b.n	8006f4e <_vfiprintf_r+0x39e>
 8006e3a:	4ac0      	ldr	r2, [pc, #768]	; (800713c <_vfiprintf_r+0x58c>)
 8006e3c:	920a      	str	r2, [sp, #40]	; 0x28
 8006e3e:	06be      	lsls	r6, r7, #26
 8006e40:	f140 816d 	bpl.w	800711e <_vfiprintf_r+0x56e>
 8006e44:	9a06      	ldr	r2, [sp, #24]
 8006e46:	3207      	adds	r2, #7
 8006e48:	f022 0207 	bic.w	r2, r2, #7
 8006e4c:	e9d2 4500 	ldrd	r4, r5, [r2]
 8006e50:	f102 0108 	add.w	r1, r2, #8
 8006e54:	9106      	str	r1, [sp, #24]
 8006e56:	07fe      	lsls	r6, r7, #31
 8006e58:	d509      	bpl.n	8006e6e <_vfiprintf_r+0x2be>
 8006e5a:	ea54 0205 	orrs.w	r2, r4, r5
 8006e5e:	d006      	beq.n	8006e6e <_vfiprintf_r+0x2be>
 8006e60:	2230      	movs	r2, #48	; 0x30
 8006e62:	f88d 303d 	strb.w	r3, [sp, #61]	; 0x3d
 8006e66:	f047 0702 	orr.w	r7, r7, #2
 8006e6a:	f88d 203c 	strb.w	r2, [sp, #60]	; 0x3c
 8006e6e:	f427 6380 	bic.w	r3, r7, #1024	; 0x400
 8006e72:	2202      	movs	r2, #2
 8006e74:	e7b8      	b.n	8006de8 <_vfiprintf_r+0x238>
 8006e76:	463b      	mov	r3, r7
 8006e78:	069e      	lsls	r6, r3, #26
 8006e7a:	f140 81be 	bpl.w	80071fa <_vfiprintf_r+0x64a>
 8006e7e:	9a06      	ldr	r2, [sp, #24]
 8006e80:	3207      	adds	r2, #7
 8006e82:	f022 0207 	bic.w	r2, r2, #7
 8006e86:	e9d2 0100 	ldrd	r0, r1, [r2]
 8006e8a:	3208      	adds	r2, #8
 8006e8c:	9206      	str	r2, [sp, #24]
 8006e8e:	4604      	mov	r4, r0
 8006e90:	460d      	mov	r5, r1
 8006e92:	2800      	cmp	r0, #0
 8006e94:	f171 0200 	sbcs.w	r2, r1, #0
 8006e98:	da05      	bge.n	8006ea6 <_vfiprintf_r+0x2f6>
 8006e9a:	222d      	movs	r2, #45	; 0x2d
 8006e9c:	4264      	negs	r4, r4
 8006e9e:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8006ea2:	f88d 203b 	strb.w	r2, [sp, #59]	; 0x3b
 8006ea6:	aa3c      	add	r2, sp, #240	; 0xf0
 8006ea8:	f1ba 3fff 	cmp.w	sl, #4294967295	; 0xffffffff
 8006eac:	9200      	str	r2, [sp, #0]
 8006eae:	f000 8445 	beq.w	800773c <_vfiprintf_r+0xb8c>
 8006eb2:	ea54 0105 	orrs.w	r1, r4, r5
 8006eb6:	f04f 0201 	mov.w	r2, #1
 8006eba:	f023 0780 	bic.w	r7, r3, #128	; 0x80
 8006ebe:	d0a2      	beq.n	8006e06 <_vfiprintf_r+0x256>
 8006ec0:	2a01      	cmp	r2, #1
 8006ec2:	f000 8367 	beq.w	8007594 <_vfiprintf_r+0x9e4>
 8006ec6:	2a02      	cmp	r2, #2
 8006ec8:	f000 837b 	beq.w	80075c2 <_vfiprintf_r+0xa12>
 8006ecc:	a93c      	add	r1, sp, #240	; 0xf0
 8006ece:	e000      	b.n	8006ed2 <_vfiprintf_r+0x322>
 8006ed0:	4631      	mov	r1, r6
 8006ed2:	08e2      	lsrs	r2, r4, #3
 8006ed4:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8006ed8:	08e8      	lsrs	r0, r5, #3
 8006eda:	f004 0307 	and.w	r3, r4, #7
 8006ede:	4605      	mov	r5, r0
 8006ee0:	4614      	mov	r4, r2
 8006ee2:	3330      	adds	r3, #48	; 0x30
 8006ee4:	ea54 0205 	orrs.w	r2, r4, r5
 8006ee8:	f801 3c01 	strb.w	r3, [r1, #-1]
 8006eec:	f101 36ff 	add.w	r6, r1, #4294967295	; 0xffffffff
 8006ef0:	d1ee      	bne.n	8006ed0 <_vfiprintf_r+0x320>
 8006ef2:	07fd      	lsls	r5, r7, #31
 8006ef4:	f140 82fa 	bpl.w	80074ec <_vfiprintf_r+0x93c>
 8006ef8:	2b30      	cmp	r3, #48	; 0x30
 8006efa:	f000 82f7 	beq.w	80074ec <_vfiprintf_r+0x93c>
 8006efe:	9a00      	ldr	r2, [sp, #0]
 8006f00:	3902      	subs	r1, #2
 8006f02:	2330      	movs	r3, #48	; 0x30
 8006f04:	1a52      	subs	r2, r2, r1
 8006f06:	f806 3c01 	strb.w	r3, [r6, #-1]
 8006f0a:	9203      	str	r2, [sp, #12]
 8006f0c:	460e      	mov	r6, r1
 8006f0e:	e787      	b.n	8006e20 <_vfiprintf_r+0x270>
 8006f10:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8006f14:	2100      	movs	r1, #0
 8006f16:	f818 3b01 	ldrb.w	r3, [r8], #1
 8006f1a:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8006f1e:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8006f22:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8006f26:	2a09      	cmp	r2, #9
 8006f28:	d9f5      	bls.n	8006f16 <_vfiprintf_r+0x366>
 8006f2a:	9104      	str	r1, [sp, #16]
 8006f2c:	e6b3      	b.n	8006c96 <_vfiprintf_r+0xe6>
 8006f2e:	9a06      	ldr	r2, [sp, #24]
 8006f30:	f04f 0100 	mov.w	r1, #0
 8006f34:	6813      	ldr	r3, [r2, #0]
 8006f36:	f88d 103b 	strb.w	r1, [sp, #59]	; 0x3b
 8006f3a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006f3e:	2101      	movs	r1, #1
 8006f40:	1d13      	adds	r3, r2, #4
 8006f42:	9100      	str	r1, [sp, #0]
 8006f44:	9306      	str	r3, [sp, #24]
 8006f46:	9103      	str	r1, [sp, #12]
 8006f48:	ae23      	add	r6, sp, #140	; 0x8c
 8006f4a:	f04f 0a00 	mov.w	sl, #0
 8006f4e:	f017 0302 	ands.w	r3, r7, #2
 8006f52:	9308      	str	r3, [sp, #32]
 8006f54:	d002      	beq.n	8006f5c <_vfiprintf_r+0x3ac>
 8006f56:	9b00      	ldr	r3, [sp, #0]
 8006f58:	3302      	adds	r3, #2
 8006f5a:	9300      	str	r3, [sp, #0]
 8006f5c:	e9dd 1211 	ldrd	r1, r2, [sp, #68]	; 0x44
 8006f60:	f017 0384 	ands.w	r3, r7, #132	; 0x84
 8006f64:	f101 0c01 	add.w	ip, r1, #1
 8006f68:	4660      	mov	r0, ip
 8006f6a:	9307      	str	r3, [sp, #28]
 8006f6c:	d133      	bne.n	8006fd6 <_vfiprintf_r+0x426>
 8006f6e:	9b04      	ldr	r3, [sp, #16]
 8006f70:	9c00      	ldr	r4, [sp, #0]
 8006f72:	1b1c      	subs	r4, r3, r4
 8006f74:	2c00      	cmp	r4, #0
 8006f76:	dd2e      	ble.n	8006fd6 <_vfiprintf_r+0x426>
 8006f78:	2c10      	cmp	r4, #16
 8006f7a:	4d71      	ldr	r5, [pc, #452]	; (8007140 <_vfiprintf_r+0x590>)
 8006f7c:	f340 844a 	ble.w	8007814 <_vfiprintf_r+0xc64>
 8006f80:	2310      	movs	r3, #16
 8006f82:	e008      	b.n	8006f96 <_vfiprintf_r+0x3e6>
 8006f84:	f101 0e02 	add.w	lr, r1, #2
 8006f88:	f10b 0b08 	add.w	fp, fp, #8
 8006f8c:	4601      	mov	r1, r0
 8006f8e:	3c10      	subs	r4, #16
 8006f90:	2c10      	cmp	r4, #16
 8006f92:	dd11      	ble.n	8006fb8 <_vfiprintf_r+0x408>
 8006f94:	1c48      	adds	r0, r1, #1
 8006f96:	3210      	adds	r2, #16
 8006f98:	2807      	cmp	r0, #7
 8006f9a:	9212      	str	r2, [sp, #72]	; 0x48
 8006f9c:	e9cb 5300 	strd	r5, r3, [fp]
 8006fa0:	9011      	str	r0, [sp, #68]	; 0x44
 8006fa2:	ddef      	ble.n	8006f84 <_vfiprintf_r+0x3d4>
 8006fa4:	2a00      	cmp	r2, #0
 8006fa6:	f040 82a5 	bne.w	80074f4 <_vfiprintf_r+0x944>
 8006faa:	3c10      	subs	r4, #16
 8006fac:	2c10      	cmp	r4, #16
 8006fae:	4611      	mov	r1, r2
 8006fb0:	f04f 0e01 	mov.w	lr, #1
 8006fb4:	46cb      	mov	fp, r9
 8006fb6:	dced      	bgt.n	8006f94 <_vfiprintf_r+0x3e4>
 8006fb8:	4422      	add	r2, r4
 8006fba:	f1be 0f07 	cmp.w	lr, #7
 8006fbe:	9212      	str	r2, [sp, #72]	; 0x48
 8006fc0:	e9cb 5400 	strd	r5, r4, [fp]
 8006fc4:	f8cd e044 	str.w	lr, [sp, #68]	; 0x44
 8006fc8:	f300 82bc 	bgt.w	8007544 <_vfiprintf_r+0x994>
 8006fcc:	f10b 0b08 	add.w	fp, fp, #8
 8006fd0:	f10e 0001 	add.w	r0, lr, #1
 8006fd4:	4671      	mov	r1, lr
 8006fd6:	f89d 403b 	ldrb.w	r4, [sp, #59]	; 0x3b
 8006fda:	f10b 0c08 	add.w	ip, fp, #8
 8006fde:	2c00      	cmp	r4, #0
 8006fe0:	f000 81ed 	beq.w	80073be <_vfiprintf_r+0x80e>
 8006fe4:	3201      	adds	r2, #1
 8006fe6:	f10d 043b 	add.w	r4, sp, #59	; 0x3b
 8006fea:	2101      	movs	r1, #1
 8006fec:	2807      	cmp	r0, #7
 8006fee:	e9cd 0211 	strd	r0, r2, [sp, #68]	; 0x44
 8006ff2:	e9cb 4100 	strd	r4, r1, [fp]
 8006ff6:	f340 82b6 	ble.w	8007566 <_vfiprintf_r+0x9b6>
 8006ffa:	2a00      	cmp	r2, #0
 8006ffc:	f040 81d1 	bne.w	80073a2 <_vfiprintf_r+0x7f2>
 8007000:	9b08      	ldr	r3, [sp, #32]
 8007002:	2b00      	cmp	r3, #0
 8007004:	f040 82b5 	bne.w	8007572 <_vfiprintf_r+0x9c2>
 8007008:	4608      	mov	r0, r1
 800700a:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 800700e:	4611      	mov	r1, r2
 8007010:	46cb      	mov	fp, r9
 8007012:	9b07      	ldr	r3, [sp, #28]
 8007014:	2b80      	cmp	r3, #128	; 0x80
 8007016:	f000 81ed 	beq.w	80073f4 <_vfiprintf_r+0x844>
 800701a:	9b03      	ldr	r3, [sp, #12]
 800701c:	ebaa 0403 	sub.w	r4, sl, r3
 8007020:	2c00      	cmp	r4, #0
 8007022:	dd2d      	ble.n	8007080 <_vfiprintf_r+0x4d0>
 8007024:	2c10      	cmp	r4, #16
 8007026:	4d47      	ldr	r5, [pc, #284]	; (8007144 <_vfiprintf_r+0x594>)
 8007028:	f340 83cf 	ble.w	80077ca <_vfiprintf_r+0xc1a>
 800702c:	f04f 0a10 	mov.w	sl, #16
 8007030:	e006      	b.n	8007040 <_vfiprintf_r+0x490>
 8007032:	1c88      	adds	r0, r1, #2
 8007034:	f10b 0b08 	add.w	fp, fp, #8
 8007038:	4619      	mov	r1, r3
 800703a:	3c10      	subs	r4, #16
 800703c:	2c10      	cmp	r4, #16
 800703e:	dd11      	ble.n	8007064 <_vfiprintf_r+0x4b4>
 8007040:	1c4b      	adds	r3, r1, #1
 8007042:	3210      	adds	r2, #16
 8007044:	2b07      	cmp	r3, #7
 8007046:	9212      	str	r2, [sp, #72]	; 0x48
 8007048:	e9cb 5a00 	strd	r5, sl, [fp]
 800704c:	9311      	str	r3, [sp, #68]	; 0x44
 800704e:	ddf0      	ble.n	8007032 <_vfiprintf_r+0x482>
 8007050:	2a00      	cmp	r2, #0
 8007052:	f040 8199 	bne.w	8007388 <_vfiprintf_r+0x7d8>
 8007056:	3c10      	subs	r4, #16
 8007058:	2c10      	cmp	r4, #16
 800705a:	f04f 0001 	mov.w	r0, #1
 800705e:	4611      	mov	r1, r2
 8007060:	46cb      	mov	fp, r9
 8007062:	dced      	bgt.n	8007040 <_vfiprintf_r+0x490>
 8007064:	f10b 0308 	add.w	r3, fp, #8
 8007068:	4422      	add	r2, r4
 800706a:	2807      	cmp	r0, #7
 800706c:	9212      	str	r2, [sp, #72]	; 0x48
 800706e:	e9cb 5400 	strd	r5, r4, [fp]
 8007072:	9011      	str	r0, [sp, #68]	; 0x44
 8007074:	f300 829a 	bgt.w	80075ac <_vfiprintf_r+0x9fc>
 8007078:	3001      	adds	r0, #1
 800707a:	f103 0c08 	add.w	ip, r3, #8
 800707e:	469b      	mov	fp, r3
 8007080:	9b03      	ldr	r3, [sp, #12]
 8007082:	9011      	str	r0, [sp, #68]	; 0x44
 8007084:	441a      	add	r2, r3
 8007086:	2807      	cmp	r0, #7
 8007088:	9212      	str	r2, [sp, #72]	; 0x48
 800708a:	e9cb 6300 	strd	r6, r3, [fp]
 800708e:	f340 81f6 	ble.w	800747e <_vfiprintf_r+0x8ce>
 8007092:	2a00      	cmp	r2, #0
 8007094:	f040 81eb 	bne.w	800746e <_vfiprintf_r+0x8be>
 8007098:	077c      	lsls	r4, r7, #29
 800709a:	9211      	str	r2, [sp, #68]	; 0x44
 800709c:	d531      	bpl.n	8007102 <_vfiprintf_r+0x552>
 800709e:	9b04      	ldr	r3, [sp, #16]
 80070a0:	9900      	ldr	r1, [sp, #0]
 80070a2:	1a5c      	subs	r4, r3, r1
 80070a4:	2c00      	cmp	r4, #0
 80070a6:	dd2c      	ble.n	8007102 <_vfiprintf_r+0x552>
 80070a8:	46cc      	mov	ip, r9
 80070aa:	2c10      	cmp	r4, #16
 80070ac:	9911      	ldr	r1, [sp, #68]	; 0x44
 80070ae:	4d24      	ldr	r5, [pc, #144]	; (8007140 <_vfiprintf_r+0x590>)
 80070b0:	f340 83b3 	ble.w	800781a <_vfiprintf_r+0xc6a>
 80070b4:	2610      	movs	r6, #16
 80070b6:	9f05      	ldr	r7, [sp, #20]
 80070b8:	e006      	b.n	80070c8 <_vfiprintf_r+0x518>
 80070ba:	1c88      	adds	r0, r1, #2
 80070bc:	f10c 0c08 	add.w	ip, ip, #8
 80070c0:	4619      	mov	r1, r3
 80070c2:	3c10      	subs	r4, #16
 80070c4:	2c10      	cmp	r4, #16
 80070c6:	dd11      	ble.n	80070ec <_vfiprintf_r+0x53c>
 80070c8:	1c4b      	adds	r3, r1, #1
 80070ca:	3210      	adds	r2, #16
 80070cc:	2b07      	cmp	r3, #7
 80070ce:	9212      	str	r2, [sp, #72]	; 0x48
 80070d0:	e9cc 5600 	strd	r5, r6, [ip]
 80070d4:	9311      	str	r3, [sp, #68]	; 0x44
 80070d6:	ddf0      	ble.n	80070ba <_vfiprintf_r+0x50a>
 80070d8:	2a00      	cmp	r2, #0
 80070da:	f040 821a 	bne.w	8007512 <_vfiprintf_r+0x962>
 80070de:	3c10      	subs	r4, #16
 80070e0:	2c10      	cmp	r4, #16
 80070e2:	f04f 0001 	mov.w	r0, #1
 80070e6:	4611      	mov	r1, r2
 80070e8:	46cc      	mov	ip, r9
 80070ea:	dced      	bgt.n	80070c8 <_vfiprintf_r+0x518>
 80070ec:	4422      	add	r2, r4
 80070ee:	2807      	cmp	r0, #7
 80070f0:	9212      	str	r2, [sp, #72]	; 0x48
 80070f2:	e9cc 5400 	strd	r5, r4, [ip]
 80070f6:	9011      	str	r0, [sp, #68]	; 0x44
 80070f8:	f340 81c9 	ble.w	800748e <_vfiprintf_r+0x8de>
 80070fc:	2a00      	cmp	r2, #0
 80070fe:	f040 82f4 	bne.w	80076ea <_vfiprintf_r+0xb3a>
 8007102:	9b02      	ldr	r3, [sp, #8]
 8007104:	9a04      	ldr	r2, [sp, #16]
 8007106:	9900      	ldr	r1, [sp, #0]
 8007108:	428a      	cmp	r2, r1
 800710a:	bfac      	ite	ge
 800710c:	189b      	addge	r3, r3, r2
 800710e:	185b      	addlt	r3, r3, r1
 8007110:	9302      	str	r3, [sp, #8]
 8007112:	e1cb      	b.n	80074ac <_vfiprintf_r+0x8fc>
 8007114:	4a0c      	ldr	r2, [pc, #48]	; (8007148 <_vfiprintf_r+0x598>)
 8007116:	920a      	str	r2, [sp, #40]	; 0x28
 8007118:	06be      	lsls	r6, r7, #26
 800711a:	f53f ae93 	bmi.w	8006e44 <_vfiprintf_r+0x294>
 800711e:	9906      	ldr	r1, [sp, #24]
 8007120:	06fd      	lsls	r5, r7, #27
 8007122:	f101 0204 	add.w	r2, r1, #4
 8007126:	f100 82b8 	bmi.w	800769a <_vfiprintf_r+0xaea>
 800712a:	067c      	lsls	r4, r7, #25
 800712c:	9906      	ldr	r1, [sp, #24]
 800712e:	f140 82b1 	bpl.w	8007694 <_vfiprintf_r+0xae4>
 8007132:	880c      	ldrh	r4, [r1, #0]
 8007134:	9206      	str	r2, [sp, #24]
 8007136:	2500      	movs	r5, #0
 8007138:	e68d      	b.n	8006e56 <_vfiprintf_r+0x2a6>
 800713a:	bf00      	nop
 800713c:	0800cff8 	.word	0x0800cff8
 8007140:	0800d014 	.word	0x0800d014
 8007144:	0800d024 	.word	0x0800d024
 8007148:	0800cfe4 	.word	0x0800cfe4
 800714c:	9906      	ldr	r1, [sp, #24]
 800714e:	4bae      	ldr	r3, [pc, #696]	; (8007408 <_vfiprintf_r+0x858>)
 8007150:	680c      	ldr	r4, [r1, #0]
 8007152:	930a      	str	r3, [sp, #40]	; 0x28
 8007154:	f647 0230 	movw	r2, #30768	; 0x7830
 8007158:	3104      	adds	r1, #4
 800715a:	f8ad 203c 	strh.w	r2, [sp, #60]	; 0x3c
 800715e:	f047 0302 	orr.w	r3, r7, #2
 8007162:	9106      	str	r1, [sp, #24]
 8007164:	2500      	movs	r5, #0
 8007166:	2202      	movs	r2, #2
 8007168:	e63e      	b.n	8006de8 <_vfiprintf_r+0x238>
 800716a:	9a06      	ldr	r2, [sp, #24]
 800716c:	06b9      	lsls	r1, r7, #26
 800716e:	f852 3b04 	ldr.w	r3, [r2], #4
 8007172:	9206      	str	r2, [sp, #24]
 8007174:	f100 829e 	bmi.w	80076b4 <_vfiprintf_r+0xb04>
 8007178:	06fa      	lsls	r2, r7, #27
 800717a:	f100 8336 	bmi.w	80077ea <_vfiprintf_r+0xc3a>
 800717e:	067e      	lsls	r6, r7, #25
 8007180:	f100 834d 	bmi.w	800781e <_vfiprintf_r+0xc6e>
 8007184:	05bd      	lsls	r5, r7, #22
 8007186:	f140 8330 	bpl.w	80077ea <_vfiprintf_r+0xc3a>
 800718a:	9a02      	ldr	r2, [sp, #8]
 800718c:	701a      	strb	r2, [r3, #0]
 800718e:	e54b      	b.n	8006c28 <_vfiprintf_r+0x78>
 8007190:	f047 0310 	orr.w	r3, r7, #16
 8007194:	069d      	lsls	r5, r3, #26
 8007196:	9a06      	ldr	r2, [sp, #24]
 8007198:	f53f ae1d 	bmi.w	8006dd6 <_vfiprintf_r+0x226>
 800719c:	06dc      	lsls	r4, r3, #27
 800719e:	f102 0104 	add.w	r1, r2, #4
 80071a2:	f100 8271 	bmi.w	8007688 <_vfiprintf_r+0xad8>
 80071a6:	0658      	lsls	r0, r3, #25
 80071a8:	9a06      	ldr	r2, [sp, #24]
 80071aa:	f140 826a 	bpl.w	8007682 <_vfiprintf_r+0xad2>
 80071ae:	8814      	ldrh	r4, [r2, #0]
 80071b0:	9106      	str	r1, [sp, #24]
 80071b2:	2500      	movs	r5, #0
 80071b4:	2201      	movs	r2, #1
 80071b6:	e617      	b.n	8006de8 <_vfiprintf_r+0x238>
 80071b8:	9b06      	ldr	r3, [sp, #24]
 80071ba:	681e      	ldr	r6, [r3, #0]
 80071bc:	f04f 0200 	mov.w	r2, #0
 80071c0:	f88d 203b 	strb.w	r2, [sp, #59]	; 0x3b
 80071c4:	1d1c      	adds	r4, r3, #4
 80071c6:	2e00      	cmp	r6, #0
 80071c8:	f000 82a0 	beq.w	800770c <_vfiprintf_r+0xb5c>
 80071cc:	f1ba 3fff 	cmp.w	sl, #4294967295	; 0xffffffff
 80071d0:	f000 830f 	beq.w	80077f2 <_vfiprintf_r+0xc42>
 80071d4:	4652      	mov	r2, sl
 80071d6:	2100      	movs	r1, #0
 80071d8:	4630      	mov	r0, r6
 80071da:	f7f9 fb01 	bl	80007e0 <memchr>
 80071de:	2800      	cmp	r0, #0
 80071e0:	f000 8339 	beq.w	8007856 <_vfiprintf_r+0xca6>
 80071e4:	1b83      	subs	r3, r0, r6
 80071e6:	9303      	str	r3, [sp, #12]
 80071e8:	9406      	str	r4, [sp, #24]
 80071ea:	f04f 0a00 	mov.w	sl, #0
 80071ee:	e617      	b.n	8006e20 <_vfiprintf_r+0x270>
 80071f0:	f047 0310 	orr.w	r3, r7, #16
 80071f4:	069e      	lsls	r6, r3, #26
 80071f6:	f53f ae42 	bmi.w	8006e7e <_vfiprintf_r+0x2ce>
 80071fa:	9906      	ldr	r1, [sp, #24]
 80071fc:	06dd      	lsls	r5, r3, #27
 80071fe:	f101 0204 	add.w	r2, r1, #4
 8007202:	f100 8238 	bmi.w	8007676 <_vfiprintf_r+0xac6>
 8007206:	065c      	lsls	r4, r3, #25
 8007208:	9906      	ldr	r1, [sp, #24]
 800720a:	f140 8231 	bpl.w	8007670 <_vfiprintf_r+0xac0>
 800720e:	f9b1 4000 	ldrsh.w	r4, [r1]
 8007212:	9206      	str	r2, [sp, #24]
 8007214:	17e5      	asrs	r5, r4, #31
 8007216:	4620      	mov	r0, r4
 8007218:	4629      	mov	r1, r5
 800721a:	e63a      	b.n	8006e92 <_vfiprintf_r+0x2e2>
 800721c:	f898 3000 	ldrb.w	r3, [r8]
 8007220:	2b6c      	cmp	r3, #108	; 0x6c
 8007222:	bf03      	ittte	eq
 8007224:	f898 3001 	ldrbeq.w	r3, [r8, #1]
 8007228:	f047 0720 	orreq.w	r7, r7, #32
 800722c:	f108 0801 	addeq.w	r8, r8, #1
 8007230:	f047 0710 	orrne.w	r7, r7, #16
 8007234:	e52d      	b.n	8006c92 <_vfiprintf_r+0xe2>
 8007236:	f898 3000 	ldrb.w	r3, [r8]
 800723a:	2b68      	cmp	r3, #104	; 0x68
 800723c:	bf03      	ittte	eq
 800723e:	f898 3001 	ldrbeq.w	r3, [r8, #1]
 8007242:	f447 7700 	orreq.w	r7, r7, #512	; 0x200
 8007246:	f108 0801 	addeq.w	r8, r8, #1
 800724a:	f047 0740 	orrne.w	r7, r7, #64	; 0x40
 800724e:	e520      	b.n	8006c92 <_vfiprintf_r+0xe2>
 8007250:	f047 0701 	orr.w	r7, r7, #1
 8007254:	f898 3000 	ldrb.w	r3, [r8]
 8007258:	e51b      	b.n	8006c92 <_vfiprintf_r+0xe2>
 800725a:	f89d 203b 	ldrb.w	r2, [sp, #59]	; 0x3b
 800725e:	f898 3000 	ldrb.w	r3, [r8]
 8007262:	2a00      	cmp	r2, #0
 8007264:	f47f ad15 	bne.w	8006c92 <_vfiprintf_r+0xe2>
 8007268:	2220      	movs	r2, #32
 800726a:	f88d 203b 	strb.w	r2, [sp, #59]	; 0x3b
 800726e:	e510      	b.n	8006c92 <_vfiprintf_r+0xe2>
 8007270:	f898 3000 	ldrb.w	r3, [r8]
 8007274:	f047 0704 	orr.w	r7, r7, #4
 8007278:	e50b      	b.n	8006c92 <_vfiprintf_r+0xe2>
 800727a:	f88d 503b 	strb.w	r5, [sp, #59]	; 0x3b
 800727e:	f898 3000 	ldrb.w	r3, [r8]
 8007282:	e506      	b.n	8006c92 <_vfiprintf_r+0xe2>
 8007284:	9a06      	ldr	r2, [sp, #24]
 8007286:	f898 3000 	ldrb.w	r3, [r8]
 800728a:	6811      	ldr	r1, [r2, #0]
 800728c:	9104      	str	r1, [sp, #16]
 800728e:	2900      	cmp	r1, #0
 8007290:	f102 0204 	add.w	r2, r2, #4
 8007294:	f2c0 821f 	blt.w	80076d6 <_vfiprintf_r+0xb26>
 8007298:	9206      	str	r2, [sp, #24]
 800729a:	e4fa      	b.n	8006c92 <_vfiprintf_r+0xe2>
 800729c:	9e05      	ldr	r6, [sp, #20]
 800729e:	4630      	mov	r0, r6
 80072a0:	f003 fdae 	bl	800ae00 <_localeconv_r>
 80072a4:	6843      	ldr	r3, [r0, #4]
 80072a6:	930c      	str	r3, [sp, #48]	; 0x30
 80072a8:	4618      	mov	r0, r3
 80072aa:	f7f9 fa29 	bl	8000700 <strlen>
 80072ae:	900d      	str	r0, [sp, #52]	; 0x34
 80072b0:	4604      	mov	r4, r0
 80072b2:	4630      	mov	r0, r6
 80072b4:	f003 fda4 	bl	800ae00 <_localeconv_r>
 80072b8:	6882      	ldr	r2, [r0, #8]
 80072ba:	920b      	str	r2, [sp, #44]	; 0x2c
 80072bc:	2c00      	cmp	r4, #0
 80072be:	f43f ad4e 	beq.w	8006d5e <_vfiprintf_r+0x1ae>
 80072c2:	f898 3000 	ldrb.w	r3, [r8]
 80072c6:	2a00      	cmp	r2, #0
 80072c8:	f43f ace3 	beq.w	8006c92 <_vfiprintf_r+0xe2>
 80072cc:	7812      	ldrb	r2, [r2, #0]
 80072ce:	2a00      	cmp	r2, #0
 80072d0:	f43f acdf 	beq.w	8006c92 <_vfiprintf_r+0xe2>
 80072d4:	f447 6780 	orr.w	r7, r7, #1024	; 0x400
 80072d8:	e4db      	b.n	8006c92 <_vfiprintf_r+0xe2>
 80072da:	f047 0780 	orr.w	r7, r7, #128	; 0x80
 80072de:	f898 3000 	ldrb.w	r3, [r8]
 80072e2:	e4d6      	b.n	8006c92 <_vfiprintf_r+0xe2>
 80072e4:	f898 3000 	ldrb.w	r3, [r8]
 80072e8:	2b2a      	cmp	r3, #42	; 0x2a
 80072ea:	f108 0101 	add.w	r1, r8, #1
 80072ee:	f000 82c4 	beq.w	800787a <_vfiprintf_r+0xcca>
 80072f2:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 80072f6:	2a09      	cmp	r2, #9
 80072f8:	4688      	mov	r8, r1
 80072fa:	f04f 0a00 	mov.w	sl, #0
 80072fe:	f63f acca 	bhi.w	8006c96 <_vfiprintf_r+0xe6>
 8007302:	f818 3b01 	ldrb.w	r3, [r8], #1
 8007306:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
 800730a:	eb02 0a4a 	add.w	sl, r2, sl, lsl #1
 800730e:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8007312:	2a09      	cmp	r2, #9
 8007314:	d9f5      	bls.n	8007302 <_vfiprintf_r+0x752>
 8007316:	e4be      	b.n	8006c96 <_vfiprintf_r+0xe6>
 8007318:	9a06      	ldr	r2, [sp, #24]
 800731a:	06f8      	lsls	r0, r7, #27
 800731c:	f102 0304 	add.w	r3, r2, #4
 8007320:	f100 81c3 	bmi.w	80076aa <_vfiprintf_r+0xafa>
 8007324:	0679      	lsls	r1, r7, #25
 8007326:	9a06      	ldr	r2, [sp, #24]
 8007328:	f140 81bc 	bpl.w	80076a4 <_vfiprintf_r+0xaf4>
 800732c:	8814      	ldrh	r4, [r2, #0]
 800732e:	9306      	str	r3, [sp, #24]
 8007330:	2500      	movs	r5, #0
 8007332:	e525      	b.n	8006d80 <_vfiprintf_r+0x1d0>
 8007334:	9901      	ldr	r1, [sp, #4]
 8007336:	f9b1 300e 	ldrsh.w	r3, [r1, #14]
 800733a:	2b00      	cmp	r3, #0
 800733c:	f6ff ac67 	blt.w	8006c0e <_vfiprintf_r+0x5e>
 8007340:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8007342:	07db      	lsls	r3, r3, #31
 8007344:	d404      	bmi.n	8007350 <_vfiprintf_r+0x7a0>
 8007346:	0597      	lsls	r7, r2, #22
 8007348:	d402      	bmi.n	8007350 <_vfiprintf_r+0x7a0>
 800734a:	6d88      	ldr	r0, [r1, #88]	; 0x58
 800734c:	f003 fd6c 	bl	800ae28 <__retarget_lock_release_recursive>
 8007350:	4623      	mov	r3, r4
 8007352:	4642      	mov	r2, r8
 8007354:	9901      	ldr	r1, [sp, #4]
 8007356:	9805      	ldr	r0, [sp, #20]
 8007358:	f000 fa9c 	bl	8007894 <__sbprintf>
 800735c:	9002      	str	r0, [sp, #8]
 800735e:	9802      	ldr	r0, [sp, #8]
 8007360:	b03d      	add	sp, #244	; 0xf4
 8007362:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007366:	f003 f97d 	bl	800a664 <__sinit>
 800736a:	e42e      	b.n	8006bca <_vfiprintf_r+0x1a>
 800736c:	2b00      	cmp	r3, #0
 800736e:	f000 80a5 	beq.w	80074bc <_vfiprintf_r+0x90c>
 8007372:	2201      	movs	r2, #1
 8007374:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8007378:	f04f 0300 	mov.w	r3, #0
 800737c:	9200      	str	r2, [sp, #0]
 800737e:	f88d 303b 	strb.w	r3, [sp, #59]	; 0x3b
 8007382:	9203      	str	r2, [sp, #12]
 8007384:	ae23      	add	r6, sp, #140	; 0x8c
 8007386:	e5e0      	b.n	8006f4a <_vfiprintf_r+0x39a>
 8007388:	aa10      	add	r2, sp, #64	; 0x40
 800738a:	9901      	ldr	r1, [sp, #4]
 800738c:	9805      	ldr	r0, [sp, #20]
 800738e:	f7ff fbc9 	bl	8006b24 <__sprint_r.part.0>
 8007392:	2800      	cmp	r0, #0
 8007394:	f040 8098 	bne.w	80074c8 <_vfiprintf_r+0x918>
 8007398:	e9dd 1211 	ldrd	r1, r2, [sp, #68]	; 0x44
 800739c:	46cb      	mov	fp, r9
 800739e:	1c48      	adds	r0, r1, #1
 80073a0:	e64b      	b.n	800703a <_vfiprintf_r+0x48a>
 80073a2:	aa10      	add	r2, sp, #64	; 0x40
 80073a4:	9901      	ldr	r1, [sp, #4]
 80073a6:	9805      	ldr	r0, [sp, #20]
 80073a8:	f7ff fbbc 	bl	8006b24 <__sprint_r.part.0>
 80073ac:	2800      	cmp	r0, #0
 80073ae:	f040 808b 	bne.w	80074c8 <_vfiprintf_r+0x918>
 80073b2:	e9dd 1211 	ldrd	r1, r2, [sp, #68]	; 0x44
 80073b6:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 80073ba:	1c48      	adds	r0, r1, #1
 80073bc:	46cb      	mov	fp, r9
 80073be:	9b08      	ldr	r3, [sp, #32]
 80073c0:	2b00      	cmp	r3, #0
 80073c2:	f43f ae26 	beq.w	8007012 <_vfiprintf_r+0x462>
 80073c6:	3202      	adds	r2, #2
 80073c8:	a90f      	add	r1, sp, #60	; 0x3c
 80073ca:	2302      	movs	r3, #2
 80073cc:	2807      	cmp	r0, #7
 80073ce:	e9cd 0211 	strd	r0, r2, [sp, #68]	; 0x44
 80073d2:	e9cb 1300 	strd	r1, r3, [fp]
 80073d6:	f340 80d3 	ble.w	8007580 <_vfiprintf_r+0x9d0>
 80073da:	2a00      	cmp	r2, #0
 80073dc:	f040 8114 	bne.w	8007608 <_vfiprintf_r+0xa58>
 80073e0:	9b07      	ldr	r3, [sp, #28]
 80073e2:	2b80      	cmp	r3, #128	; 0x80
 80073e4:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 80073e8:	f04f 0001 	mov.w	r0, #1
 80073ec:	4611      	mov	r1, r2
 80073ee:	46cb      	mov	fp, r9
 80073f0:	f47f ae13 	bne.w	800701a <_vfiprintf_r+0x46a>
 80073f4:	9b04      	ldr	r3, [sp, #16]
 80073f6:	9c00      	ldr	r4, [sp, #0]
 80073f8:	1b1c      	subs	r4, r3, r4
 80073fa:	2c00      	cmp	r4, #0
 80073fc:	f77f ae0d 	ble.w	800701a <_vfiprintf_r+0x46a>
 8007400:	2c10      	cmp	r4, #16
 8007402:	4d02      	ldr	r5, [pc, #8]	; (800740c <_vfiprintf_r+0x85c>)
 8007404:	dc0c      	bgt.n	8007420 <_vfiprintf_r+0x870>
 8007406:	e22c      	b.n	8007862 <_vfiprintf_r+0xcb2>
 8007408:	0800cff8 	.word	0x0800cff8
 800740c:	0800d024 	.word	0x0800d024
 8007410:	f101 0c02 	add.w	ip, r1, #2
 8007414:	f10b 0b08 	add.w	fp, fp, #8
 8007418:	4619      	mov	r1, r3
 800741a:	3c10      	subs	r4, #16
 800741c:	2c10      	cmp	r4, #16
 800741e:	dd13      	ble.n	8007448 <_vfiprintf_r+0x898>
 8007420:	1c4b      	adds	r3, r1, #1
 8007422:	3210      	adds	r2, #16
 8007424:	2010      	movs	r0, #16
 8007426:	2b07      	cmp	r3, #7
 8007428:	9212      	str	r2, [sp, #72]	; 0x48
 800742a:	f8cb 5000 	str.w	r5, [fp]
 800742e:	f8cb 0004 	str.w	r0, [fp, #4]
 8007432:	9311      	str	r3, [sp, #68]	; 0x44
 8007434:	ddec      	ble.n	8007410 <_vfiprintf_r+0x860>
 8007436:	2a00      	cmp	r2, #0
 8007438:	d177      	bne.n	800752a <_vfiprintf_r+0x97a>
 800743a:	3c10      	subs	r4, #16
 800743c:	2c10      	cmp	r4, #16
 800743e:	f04f 0c01 	mov.w	ip, #1
 8007442:	4611      	mov	r1, r2
 8007444:	46cb      	mov	fp, r9
 8007446:	dceb      	bgt.n	8007420 <_vfiprintf_r+0x870>
 8007448:	f10b 0308 	add.w	r3, fp, #8
 800744c:	4422      	add	r2, r4
 800744e:	f1bc 0f07 	cmp.w	ip, #7
 8007452:	9212      	str	r2, [sp, #72]	; 0x48
 8007454:	e9cb 5400 	strd	r5, r4, [fp]
 8007458:	f8cd c044 	str.w	ip, [sp, #68]	; 0x44
 800745c:	f300 80e3 	bgt.w	8007626 <_vfiprintf_r+0xa76>
 8007460:	f10c 0001 	add.w	r0, ip, #1
 8007464:	4661      	mov	r1, ip
 8007466:	469b      	mov	fp, r3
 8007468:	f103 0c08 	add.w	ip, r3, #8
 800746c:	e5d5      	b.n	800701a <_vfiprintf_r+0x46a>
 800746e:	aa10      	add	r2, sp, #64	; 0x40
 8007470:	9901      	ldr	r1, [sp, #4]
 8007472:	9805      	ldr	r0, [sp, #20]
 8007474:	f7ff fb56 	bl	8006b24 <__sprint_r.part.0>
 8007478:	bb30      	cbnz	r0, 80074c8 <_vfiprintf_r+0x918>
 800747a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800747c:	46cc      	mov	ip, r9
 800747e:	0778      	lsls	r0, r7, #29
 8007480:	d505      	bpl.n	800748e <_vfiprintf_r+0x8de>
 8007482:	9b04      	ldr	r3, [sp, #16]
 8007484:	9900      	ldr	r1, [sp, #0]
 8007486:	1a5c      	subs	r4, r3, r1
 8007488:	2c00      	cmp	r4, #0
 800748a:	f73f ae0e 	bgt.w	80070aa <_vfiprintf_r+0x4fa>
 800748e:	9b02      	ldr	r3, [sp, #8]
 8007490:	9904      	ldr	r1, [sp, #16]
 8007492:	9800      	ldr	r0, [sp, #0]
 8007494:	4281      	cmp	r1, r0
 8007496:	bfac      	ite	ge
 8007498:	185b      	addge	r3, r3, r1
 800749a:	181b      	addlt	r3, r3, r0
 800749c:	9302      	str	r3, [sp, #8]
 800749e:	b12a      	cbz	r2, 80074ac <_vfiprintf_r+0x8fc>
 80074a0:	aa10      	add	r2, sp, #64	; 0x40
 80074a2:	9901      	ldr	r1, [sp, #4]
 80074a4:	9805      	ldr	r0, [sp, #20]
 80074a6:	f7ff fb3d 	bl	8006b24 <__sprint_r.part.0>
 80074aa:	b968      	cbnz	r0, 80074c8 <_vfiprintf_r+0x918>
 80074ac:	2300      	movs	r3, #0
 80074ae:	9311      	str	r3, [sp, #68]	; 0x44
 80074b0:	f898 3000 	ldrb.w	r3, [r8]
 80074b4:	46cb      	mov	fp, r9
 80074b6:	2b00      	cmp	r3, #0
 80074b8:	f47f abbb 	bne.w	8006c32 <_vfiprintf_r+0x82>
 80074bc:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80074be:	2b00      	cmp	r3, #0
 80074c0:	f040 81d2 	bne.w	8007868 <_vfiprintf_r+0xcb8>
 80074c4:	2300      	movs	r3, #0
 80074c6:	9311      	str	r3, [sp, #68]	; 0x44
 80074c8:	9b01      	ldr	r3, [sp, #4]
 80074ca:	6e5a      	ldr	r2, [r3, #100]	; 0x64
 80074cc:	899b      	ldrh	r3, [r3, #12]
 80074ce:	07d1      	lsls	r1, r2, #31
 80074d0:	d402      	bmi.n	80074d8 <_vfiprintf_r+0x928>
 80074d2:	059a      	lsls	r2, r3, #22
 80074d4:	f140 8103 	bpl.w	80076de <_vfiprintf_r+0xb2e>
 80074d8:	065b      	lsls	r3, r3, #25
 80074da:	f53f ac63 	bmi.w	8006da4 <_vfiprintf_r+0x1f4>
 80074de:	9802      	ldr	r0, [sp, #8]
 80074e0:	b03d      	add	sp, #244	; 0xf4
 80074e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80074e6:	9f03      	ldr	r7, [sp, #12]
 80074e8:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80074ec:	9b00      	ldr	r3, [sp, #0]
 80074ee:	1b9b      	subs	r3, r3, r6
 80074f0:	9303      	str	r3, [sp, #12]
 80074f2:	e495      	b.n	8006e20 <_vfiprintf_r+0x270>
 80074f4:	aa10      	add	r2, sp, #64	; 0x40
 80074f6:	9901      	ldr	r1, [sp, #4]
 80074f8:	9805      	ldr	r0, [sp, #20]
 80074fa:	9309      	str	r3, [sp, #36]	; 0x24
 80074fc:	f7ff fb12 	bl	8006b24 <__sprint_r.part.0>
 8007500:	2800      	cmp	r0, #0
 8007502:	d1e1      	bne.n	80074c8 <_vfiprintf_r+0x918>
 8007504:	e9dd 1211 	ldrd	r1, r2, [sp, #68]	; 0x44
 8007508:	46cb      	mov	fp, r9
 800750a:	f101 0e01 	add.w	lr, r1, #1
 800750e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007510:	e53d      	b.n	8006f8e <_vfiprintf_r+0x3de>
 8007512:	aa10      	add	r2, sp, #64	; 0x40
 8007514:	9901      	ldr	r1, [sp, #4]
 8007516:	4638      	mov	r0, r7
 8007518:	f7ff fb04 	bl	8006b24 <__sprint_r.part.0>
 800751c:	2800      	cmp	r0, #0
 800751e:	d1d3      	bne.n	80074c8 <_vfiprintf_r+0x918>
 8007520:	e9dd 1211 	ldrd	r1, r2, [sp, #68]	; 0x44
 8007524:	46cc      	mov	ip, r9
 8007526:	1c48      	adds	r0, r1, #1
 8007528:	e5cb      	b.n	80070c2 <_vfiprintf_r+0x512>
 800752a:	aa10      	add	r2, sp, #64	; 0x40
 800752c:	9901      	ldr	r1, [sp, #4]
 800752e:	9805      	ldr	r0, [sp, #20]
 8007530:	f7ff faf8 	bl	8006b24 <__sprint_r.part.0>
 8007534:	2800      	cmp	r0, #0
 8007536:	d1c7      	bne.n	80074c8 <_vfiprintf_r+0x918>
 8007538:	e9dd 1211 	ldrd	r1, r2, [sp, #68]	; 0x44
 800753c:	46cb      	mov	fp, r9
 800753e:	f101 0c01 	add.w	ip, r1, #1
 8007542:	e76a      	b.n	800741a <_vfiprintf_r+0x86a>
 8007544:	2a00      	cmp	r2, #0
 8007546:	f040 8142 	bne.w	80077ce <_vfiprintf_r+0xc1e>
 800754a:	f89d 103b 	ldrb.w	r1, [sp, #59]	; 0x3b
 800754e:	2900      	cmp	r1, #0
 8007550:	f000 80b7 	beq.w	80076c2 <_vfiprintf_r+0xb12>
 8007554:	2101      	movs	r1, #1
 8007556:	f10d 043b 	add.w	r4, sp, #59	; 0x3b
 800755a:	460a      	mov	r2, r1
 800755c:	9114      	str	r1, [sp, #80]	; 0x50
 800755e:	4608      	mov	r0, r1
 8007560:	9413      	str	r4, [sp, #76]	; 0x4c
 8007562:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 8007566:	4601      	mov	r1, r0
 8007568:	46e3      	mov	fp, ip
 800756a:	3001      	adds	r0, #1
 800756c:	f10c 0c08 	add.w	ip, ip, #8
 8007570:	e725      	b.n	80073be <_vfiprintf_r+0x80e>
 8007572:	ab0f      	add	r3, sp, #60	; 0x3c
 8007574:	2202      	movs	r2, #2
 8007576:	e9cd 3213 	strd	r3, r2, [sp, #76]	; 0x4c
 800757a:	4608      	mov	r0, r1
 800757c:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 8007580:	4601      	mov	r1, r0
 8007582:	46e3      	mov	fp, ip
 8007584:	3001      	adds	r0, #1
 8007586:	f10c 0c08 	add.w	ip, ip, #8
 800758a:	e542      	b.n	8007012 <_vfiprintf_r+0x462>
 800758c:	2a01      	cmp	r2, #1
 800758e:	461f      	mov	r7, r3
 8007590:	f47f ac99 	bne.w	8006ec6 <_vfiprintf_r+0x316>
 8007594:	2d00      	cmp	r5, #0
 8007596:	bf08      	it	eq
 8007598:	2c0a      	cmpeq	r4, #10
 800759a:	f080 80d5 	bcs.w	8007748 <_vfiprintf_r+0xb98>
 800759e:	ae3c      	add	r6, sp, #240	; 0xf0
 80075a0:	3430      	adds	r4, #48	; 0x30
 80075a2:	2301      	movs	r3, #1
 80075a4:	f806 4d01 	strb.w	r4, [r6, #-1]!
 80075a8:	9303      	str	r3, [sp, #12]
 80075aa:	e439      	b.n	8006e20 <_vfiprintf_r+0x270>
 80075ac:	2a00      	cmp	r2, #0
 80075ae:	d142      	bne.n	8007636 <_vfiprintf_r+0xa86>
 80075b0:	9a03      	ldr	r2, [sp, #12]
 80075b2:	9214      	str	r2, [sp, #80]	; 0x50
 80075b4:	2301      	movs	r3, #1
 80075b6:	e9cd 2612 	strd	r2, r6, [sp, #72]	; 0x48
 80075ba:	9311      	str	r3, [sp, #68]	; 0x44
 80075bc:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 80075c0:	e75d      	b.n	800747e <_vfiprintf_r+0x8ce>
 80075c2:	980a      	ldr	r0, [sp, #40]	; 0x28
 80075c4:	ae3c      	add	r6, sp, #240	; 0xf0
 80075c6:	0923      	lsrs	r3, r4, #4
 80075c8:	f004 010f 	and.w	r1, r4, #15
 80075cc:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80075d0:	092a      	lsrs	r2, r5, #4
 80075d2:	461c      	mov	r4, r3
 80075d4:	4615      	mov	r5, r2
 80075d6:	5c43      	ldrb	r3, [r0, r1]
 80075d8:	f806 3d01 	strb.w	r3, [r6, #-1]!
 80075dc:	ea54 0305 	orrs.w	r3, r4, r5
 80075e0:	d1f1      	bne.n	80075c6 <_vfiprintf_r+0xa16>
 80075e2:	9b00      	ldr	r3, [sp, #0]
 80075e4:	1b9b      	subs	r3, r3, r6
 80075e6:	9303      	str	r3, [sp, #12]
 80075e8:	e41a      	b.n	8006e20 <_vfiprintf_r+0x270>
 80075ea:	f8cd a00c 	str.w	sl, [sp, #12]
 80075ee:	ae3c      	add	r6, sp, #240	; 0xf0
 80075f0:	e416      	b.n	8006e20 <_vfiprintf_r+0x270>
 80075f2:	aa10      	add	r2, sp, #64	; 0x40
 80075f4:	9901      	ldr	r1, [sp, #4]
 80075f6:	9805      	ldr	r0, [sp, #20]
 80075f8:	f7ff fa94 	bl	8006b24 <__sprint_r.part.0>
 80075fc:	2800      	cmp	r0, #0
 80075fe:	f47f af63 	bne.w	80074c8 <_vfiprintf_r+0x918>
 8007602:	46cb      	mov	fp, r9
 8007604:	f7ff bb31 	b.w	8006c6a <_vfiprintf_r+0xba>
 8007608:	aa10      	add	r2, sp, #64	; 0x40
 800760a:	9901      	ldr	r1, [sp, #4]
 800760c:	9805      	ldr	r0, [sp, #20]
 800760e:	f7ff fa89 	bl	8006b24 <__sprint_r.part.0>
 8007612:	2800      	cmp	r0, #0
 8007614:	f47f af58 	bne.w	80074c8 <_vfiprintf_r+0x918>
 8007618:	e9dd 1211 	ldrd	r1, r2, [sp, #68]	; 0x44
 800761c:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 8007620:	1c48      	adds	r0, r1, #1
 8007622:	46cb      	mov	fp, r9
 8007624:	e4f5      	b.n	8007012 <_vfiprintf_r+0x462>
 8007626:	2a00      	cmp	r2, #0
 8007628:	d179      	bne.n	800771e <_vfiprintf_r+0xb6e>
 800762a:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 800762e:	2001      	movs	r0, #1
 8007630:	4611      	mov	r1, r2
 8007632:	46cb      	mov	fp, r9
 8007634:	e4f1      	b.n	800701a <_vfiprintf_r+0x46a>
 8007636:	aa10      	add	r2, sp, #64	; 0x40
 8007638:	9901      	ldr	r1, [sp, #4]
 800763a:	9805      	ldr	r0, [sp, #20]
 800763c:	f7ff fa72 	bl	8006b24 <__sprint_r.part.0>
 8007640:	2800      	cmp	r0, #0
 8007642:	f47f af41 	bne.w	80074c8 <_vfiprintf_r+0x918>
 8007646:	e9dd 0211 	ldrd	r0, r2, [sp, #68]	; 0x44
 800764a:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 800764e:	3001      	adds	r0, #1
 8007650:	46cb      	mov	fp, r9
 8007652:	e515      	b.n	8007080 <_vfiprintf_r+0x4d0>
 8007654:	9d01      	ldr	r5, [sp, #4]
 8007656:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8007658:	f003 fbe4 	bl	800ae24 <__retarget_lock_acquire_recursive>
 800765c:	f9b5 100c 	ldrsh.w	r1, [r5, #12]
 8007660:	b28a      	uxth	r2, r1
 8007662:	f7ff babc 	b.w	8006bde <_vfiprintf_r+0x2e>
 8007666:	2330      	movs	r3, #48	; 0x30
 8007668:	f806 3d01 	strb.w	r3, [r6, #-1]!
 800766c:	f7ff bbd8 	b.w	8006e20 <_vfiprintf_r+0x270>
 8007670:	0598      	lsls	r0, r3, #22
 8007672:	f100 80d8 	bmi.w	8007826 <_vfiprintf_r+0xc76>
 8007676:	680c      	ldr	r4, [r1, #0]
 8007678:	9206      	str	r2, [sp, #24]
 800767a:	17e5      	asrs	r5, r4, #31
 800767c:	4620      	mov	r0, r4
 800767e:	4629      	mov	r1, r5
 8007680:	e407      	b.n	8006e92 <_vfiprintf_r+0x2e2>
 8007682:	059f      	lsls	r7, r3, #22
 8007684:	f100 80dc 	bmi.w	8007840 <_vfiprintf_r+0xc90>
 8007688:	6814      	ldr	r4, [r2, #0]
 800768a:	9106      	str	r1, [sp, #24]
 800768c:	2201      	movs	r2, #1
 800768e:	2500      	movs	r5, #0
 8007690:	f7ff bbaa 	b.w	8006de8 <_vfiprintf_r+0x238>
 8007694:	05b8      	lsls	r0, r7, #22
 8007696:	f100 80d9 	bmi.w	800784c <_vfiprintf_r+0xc9c>
 800769a:	680c      	ldr	r4, [r1, #0]
 800769c:	9206      	str	r2, [sp, #24]
 800769e:	2500      	movs	r5, #0
 80076a0:	f7ff bbd9 	b.w	8006e56 <_vfiprintf_r+0x2a6>
 80076a4:	05be      	lsls	r6, r7, #22
 80076a6:	f100 80c6 	bmi.w	8007836 <_vfiprintf_r+0xc86>
 80076aa:	6814      	ldr	r4, [r2, #0]
 80076ac:	9306      	str	r3, [sp, #24]
 80076ae:	2500      	movs	r5, #0
 80076b0:	f7ff bb66 	b.w	8006d80 <_vfiprintf_r+0x1d0>
 80076b4:	9a02      	ldr	r2, [sp, #8]
 80076b6:	4610      	mov	r0, r2
 80076b8:	17d1      	asrs	r1, r2, #31
 80076ba:	e9c3 0100 	strd	r0, r1, [r3]
 80076be:	f7ff bab3 	b.w	8006c28 <_vfiprintf_r+0x78>
 80076c2:	9b08      	ldr	r3, [sp, #32]
 80076c4:	2b00      	cmp	r3, #0
 80076c6:	f040 809d 	bne.w	8007804 <_vfiprintf_r+0xc54>
 80076ca:	4611      	mov	r1, r2
 80076cc:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 80076d0:	2001      	movs	r0, #1
 80076d2:	46cb      	mov	fp, r9
 80076d4:	e4a1      	b.n	800701a <_vfiprintf_r+0x46a>
 80076d6:	4249      	negs	r1, r1
 80076d8:	9104      	str	r1, [sp, #16]
 80076da:	9206      	str	r2, [sp, #24]
 80076dc:	e5ca      	b.n	8007274 <_vfiprintf_r+0x6c4>
 80076de:	9c01      	ldr	r4, [sp, #4]
 80076e0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80076e2:	f003 fba1 	bl	800ae28 <__retarget_lock_release_recursive>
 80076e6:	89a3      	ldrh	r3, [r4, #12]
 80076e8:	e6f6      	b.n	80074d8 <_vfiprintf_r+0x928>
 80076ea:	aa10      	add	r2, sp, #64	; 0x40
 80076ec:	9901      	ldr	r1, [sp, #4]
 80076ee:	9805      	ldr	r0, [sp, #20]
 80076f0:	f7ff fa18 	bl	8006b24 <__sprint_r.part.0>
 80076f4:	2800      	cmp	r0, #0
 80076f6:	f47f aee7 	bne.w	80074c8 <_vfiprintf_r+0x918>
 80076fa:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80076fc:	e6c7      	b.n	800748e <_vfiprintf_r+0x8de>
 80076fe:	6d90      	ldr	r0, [r2, #88]	; 0x58
 8007700:	f003 fb92 	bl	800ae28 <__retarget_lock_release_recursive>
 8007704:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8007708:	9302      	str	r3, [sp, #8]
 800770a:	e6e8      	b.n	80074de <_vfiprintf_r+0x92e>
 800770c:	4653      	mov	r3, sl
 800770e:	2b06      	cmp	r3, #6
 8007710:	bf28      	it	cs
 8007712:	2306      	movcs	r3, #6
 8007714:	9303      	str	r3, [sp, #12]
 8007716:	9406      	str	r4, [sp, #24]
 8007718:	9300      	str	r3, [sp, #0]
 800771a:	4e5d      	ldr	r6, [pc, #372]	; (8007890 <_vfiprintf_r+0xce0>)
 800771c:	e415      	b.n	8006f4a <_vfiprintf_r+0x39a>
 800771e:	aa10      	add	r2, sp, #64	; 0x40
 8007720:	9901      	ldr	r1, [sp, #4]
 8007722:	9805      	ldr	r0, [sp, #20]
 8007724:	f7ff f9fe 	bl	8006b24 <__sprint_r.part.0>
 8007728:	2800      	cmp	r0, #0
 800772a:	f47f aecd 	bne.w	80074c8 <_vfiprintf_r+0x918>
 800772e:	e9dd 1211 	ldrd	r1, r2, [sp, #68]	; 0x44
 8007732:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 8007736:	1c48      	adds	r0, r1, #1
 8007738:	46cb      	mov	fp, r9
 800773a:	e46e      	b.n	800701a <_vfiprintf_r+0x46a>
 800773c:	2d00      	cmp	r5, #0
 800773e:	bf08      	it	eq
 8007740:	2c0a      	cmpeq	r4, #10
 8007742:	461f      	mov	r7, r3
 8007744:	f4ff af2b 	bcc.w	800759e <_vfiprintf_r+0x9ee>
 8007748:	f407 6380 	and.w	r3, r7, #1024	; 0x400
 800774c:	2200      	movs	r2, #0
 800774e:	9703      	str	r7, [sp, #12]
 8007750:	f8cd 801c 	str.w	r8, [sp, #28]
 8007754:	ae3c      	add	r6, sp, #240	; 0xf0
 8007756:	4617      	mov	r7, r2
 8007758:	4698      	mov	r8, r3
 800775a:	e00b      	b.n	8007774 <_vfiprintf_r+0xbc4>
 800775c:	2300      	movs	r3, #0
 800775e:	4620      	mov	r0, r4
 8007760:	4629      	mov	r1, r5
 8007762:	220a      	movs	r2, #10
 8007764:	f7f8 fd4c 	bl	8000200 <__aeabi_uldivmod>
 8007768:	4604      	mov	r4, r0
 800776a:	460d      	mov	r5, r1
 800776c:	ea54 0305 	orrs.w	r3, r4, r5
 8007770:	f43f aeb9 	beq.w	80074e6 <_vfiprintf_r+0x936>
 8007774:	220a      	movs	r2, #10
 8007776:	2300      	movs	r3, #0
 8007778:	4620      	mov	r0, r4
 800777a:	4629      	mov	r1, r5
 800777c:	f7f8 fd40 	bl	8000200 <__aeabi_uldivmod>
 8007780:	3230      	adds	r2, #48	; 0x30
 8007782:	f806 2c01 	strb.w	r2, [r6, #-1]
 8007786:	3701      	adds	r7, #1
 8007788:	3e01      	subs	r6, #1
 800778a:	f1b8 0f00 	cmp.w	r8, #0
 800778e:	d0e5      	beq.n	800775c <_vfiprintf_r+0xbac>
 8007790:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007792:	781b      	ldrb	r3, [r3, #0]
 8007794:	42bb      	cmp	r3, r7
 8007796:	d1e1      	bne.n	800775c <_vfiprintf_r+0xbac>
 8007798:	2fff      	cmp	r7, #255	; 0xff
 800779a:	d0df      	beq.n	800775c <_vfiprintf_r+0xbac>
 800779c:	2d00      	cmp	r5, #0
 800779e:	bf08      	it	eq
 80077a0:	2c0a      	cmpeq	r4, #10
 80077a2:	d3db      	bcc.n	800775c <_vfiprintf_r+0xbac>
 80077a4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80077a6:	990c      	ldr	r1, [sp, #48]	; 0x30
 80077a8:	1af6      	subs	r6, r6, r3
 80077aa:	461a      	mov	r2, r3
 80077ac:	4630      	mov	r0, r6
 80077ae:	f003 fffb 	bl	800b7a8 <strncpy>
 80077b2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80077b4:	785f      	ldrb	r7, [r3, #1]
 80077b6:	2f00      	cmp	r7, #0
 80077b8:	d0d0      	beq.n	800775c <_vfiprintf_r+0xbac>
 80077ba:	3301      	adds	r3, #1
 80077bc:	930b      	str	r3, [sp, #44]	; 0x2c
 80077be:	2700      	movs	r7, #0
 80077c0:	e7cc      	b.n	800775c <_vfiprintf_r+0xbac>
 80077c2:	2a01      	cmp	r2, #1
 80077c4:	f47f ab7f 	bne.w	8006ec6 <_vfiprintf_r+0x316>
 80077c8:	e6e9      	b.n	800759e <_vfiprintf_r+0x9ee>
 80077ca:	4663      	mov	r3, ip
 80077cc:	e44c      	b.n	8007068 <_vfiprintf_r+0x4b8>
 80077ce:	aa10      	add	r2, sp, #64	; 0x40
 80077d0:	9901      	ldr	r1, [sp, #4]
 80077d2:	9805      	ldr	r0, [sp, #20]
 80077d4:	f7ff f9a6 	bl	8006b24 <__sprint_r.part.0>
 80077d8:	2800      	cmp	r0, #0
 80077da:	f47f ae75 	bne.w	80074c8 <_vfiprintf_r+0x918>
 80077de:	e9dd 1211 	ldrd	r1, r2, [sp, #68]	; 0x44
 80077e2:	46cb      	mov	fp, r9
 80077e4:	1c48      	adds	r0, r1, #1
 80077e6:	f7ff bbf6 	b.w	8006fd6 <_vfiprintf_r+0x426>
 80077ea:	9a02      	ldr	r2, [sp, #8]
 80077ec:	601a      	str	r2, [r3, #0]
 80077ee:	f7ff ba1b 	b.w	8006c28 <_vfiprintf_r+0x78>
 80077f2:	4630      	mov	r0, r6
 80077f4:	9406      	str	r4, [sp, #24]
 80077f6:	f7f8 ff83 	bl	8000700 <strlen>
 80077fa:	f04f 0a00 	mov.w	sl, #0
 80077fe:	9003      	str	r0, [sp, #12]
 8007800:	f7ff bb0e 	b.w	8006e20 <_vfiprintf_r+0x270>
 8007804:	ab0f      	add	r3, sp, #60	; 0x3c
 8007806:	2202      	movs	r2, #2
 8007808:	e9cd 3213 	strd	r3, r2, [sp, #76]	; 0x4c
 800780c:	2001      	movs	r0, #1
 800780e:	f10d 0c54 	add.w	ip, sp, #84	; 0x54
 8007812:	e6b5      	b.n	8007580 <_vfiprintf_r+0x9d0>
 8007814:	46e6      	mov	lr, ip
 8007816:	f7ff bbcf 	b.w	8006fb8 <_vfiprintf_r+0x408>
 800781a:	1c48      	adds	r0, r1, #1
 800781c:	e466      	b.n	80070ec <_vfiprintf_r+0x53c>
 800781e:	9a02      	ldr	r2, [sp, #8]
 8007820:	801a      	strh	r2, [r3, #0]
 8007822:	f7ff ba01 	b.w	8006c28 <_vfiprintf_r+0x78>
 8007826:	f991 4000 	ldrsb.w	r4, [r1]
 800782a:	9206      	str	r2, [sp, #24]
 800782c:	17e5      	asrs	r5, r4, #31
 800782e:	4620      	mov	r0, r4
 8007830:	4629      	mov	r1, r5
 8007832:	f7ff bb2e 	b.w	8006e92 <_vfiprintf_r+0x2e2>
 8007836:	7814      	ldrb	r4, [r2, #0]
 8007838:	9306      	str	r3, [sp, #24]
 800783a:	2500      	movs	r5, #0
 800783c:	f7ff baa0 	b.w	8006d80 <_vfiprintf_r+0x1d0>
 8007840:	7814      	ldrb	r4, [r2, #0]
 8007842:	9106      	str	r1, [sp, #24]
 8007844:	2500      	movs	r5, #0
 8007846:	2201      	movs	r2, #1
 8007848:	f7ff bace 	b.w	8006de8 <_vfiprintf_r+0x238>
 800784c:	780c      	ldrb	r4, [r1, #0]
 800784e:	9206      	str	r2, [sp, #24]
 8007850:	2500      	movs	r5, #0
 8007852:	f7ff bb00 	b.w	8006e56 <_vfiprintf_r+0x2a6>
 8007856:	f8cd a00c 	str.w	sl, [sp, #12]
 800785a:	9406      	str	r4, [sp, #24]
 800785c:	4682      	mov	sl, r0
 800785e:	f7ff badf 	b.w	8006e20 <_vfiprintf_r+0x270>
 8007862:	4663      	mov	r3, ip
 8007864:	4684      	mov	ip, r0
 8007866:	e5f1      	b.n	800744c <_vfiprintf_r+0x89c>
 8007868:	9805      	ldr	r0, [sp, #20]
 800786a:	9901      	ldr	r1, [sp, #4]
 800786c:	aa10      	add	r2, sp, #64	; 0x40
 800786e:	f7ff f959 	bl	8006b24 <__sprint_r.part.0>
 8007872:	2800      	cmp	r0, #0
 8007874:	f43f ae26 	beq.w	80074c4 <_vfiprintf_r+0x914>
 8007878:	e626      	b.n	80074c8 <_vfiprintf_r+0x918>
 800787a:	9806      	ldr	r0, [sp, #24]
 800787c:	f898 3001 	ldrb.w	r3, [r8, #1]
 8007880:	6802      	ldr	r2, [r0, #0]
 8007882:	ea42 7ae2 	orr.w	sl, r2, r2, asr #31
 8007886:	1d02      	adds	r2, r0, #4
 8007888:	4688      	mov	r8, r1
 800788a:	9206      	str	r2, [sp, #24]
 800788c:	f7ff ba01 	b.w	8006c92 <_vfiprintf_r+0xe2>
 8007890:	0800d00c 	.word	0x0800d00c

08007894 <__sbprintf>:
 8007894:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007898:	460c      	mov	r4, r1
 800789a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800789e:	8989      	ldrh	r1, [r1, #12]
 80078a0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80078a2:	89e5      	ldrh	r5, [r4, #14]
 80078a4:	9619      	str	r6, [sp, #100]	; 0x64
 80078a6:	f021 0102 	bic.w	r1, r1, #2
 80078aa:	4606      	mov	r6, r0
 80078ac:	69e0      	ldr	r0, [r4, #28]
 80078ae:	f8ad 100c 	strh.w	r1, [sp, #12]
 80078b2:	4617      	mov	r7, r2
 80078b4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80078b8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80078ba:	f8ad 500e 	strh.w	r5, [sp, #14]
 80078be:	4698      	mov	r8, r3
 80078c0:	ad1a      	add	r5, sp, #104	; 0x68
 80078c2:	2300      	movs	r3, #0
 80078c4:	9007      	str	r0, [sp, #28]
 80078c6:	a816      	add	r0, sp, #88	; 0x58
 80078c8:	9209      	str	r2, [sp, #36]	; 0x24
 80078ca:	9306      	str	r3, [sp, #24]
 80078cc:	9500      	str	r5, [sp, #0]
 80078ce:	9504      	str	r5, [sp, #16]
 80078d0:	9102      	str	r1, [sp, #8]
 80078d2:	9105      	str	r1, [sp, #20]
 80078d4:	f003 faa2 	bl	800ae1c <__retarget_lock_init_recursive>
 80078d8:	4643      	mov	r3, r8
 80078da:	463a      	mov	r2, r7
 80078dc:	4669      	mov	r1, sp
 80078de:	4630      	mov	r0, r6
 80078e0:	f7ff f966 	bl	8006bb0 <_vfiprintf_r>
 80078e4:	1e05      	subs	r5, r0, #0
 80078e6:	db07      	blt.n	80078f8 <__sbprintf+0x64>
 80078e8:	4630      	mov	r0, r6
 80078ea:	4669      	mov	r1, sp
 80078ec:	f002 fe5e 	bl	800a5ac <_fflush_r>
 80078f0:	2800      	cmp	r0, #0
 80078f2:	bf18      	it	ne
 80078f4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80078f8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80078fc:	065b      	lsls	r3, r3, #25
 80078fe:	d503      	bpl.n	8007908 <__sbprintf+0x74>
 8007900:	89a3      	ldrh	r3, [r4, #12]
 8007902:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007906:	81a3      	strh	r3, [r4, #12]
 8007908:	9816      	ldr	r0, [sp, #88]	; 0x58
 800790a:	f003 fa89 	bl	800ae20 <__retarget_lock_close_recursive>
 800790e:	4628      	mov	r0, r5
 8007910:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8007914:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08007918 <_vfprintf_r>:
 8007918:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800791c:	b0d7      	sub	sp, #348	; 0x15c
 800791e:	461c      	mov	r4, r3
 8007920:	4689      	mov	r9, r1
 8007922:	4617      	mov	r7, r2
 8007924:	4605      	mov	r5, r0
 8007926:	9003      	str	r0, [sp, #12]
 8007928:	f003 fa6a 	bl	800ae00 <_localeconv_r>
 800792c:	6803      	ldr	r3, [r0, #0]
 800792e:	9316      	str	r3, [sp, #88]	; 0x58
 8007930:	4618      	mov	r0, r3
 8007932:	f7f8 fee5 	bl	8000700 <strlen>
 8007936:	9408      	str	r4, [sp, #32]
 8007938:	9015      	str	r0, [sp, #84]	; 0x54
 800793a:	b11d      	cbz	r5, 8007944 <_vfprintf_r+0x2c>
 800793c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800793e:	2b00      	cmp	r3, #0
 8007940:	f000 8107 	beq.w	8007b52 <_vfprintf_r+0x23a>
 8007944:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8007948:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800794c:	07c8      	lsls	r0, r1, #31
 800794e:	b293      	uxth	r3, r2
 8007950:	d402      	bmi.n	8007958 <_vfprintf_r+0x40>
 8007952:	0599      	lsls	r1, r3, #22
 8007954:	f140 811f 	bpl.w	8007b96 <_vfprintf_r+0x27e>
 8007958:	049e      	lsls	r6, r3, #18
 800795a:	d40a      	bmi.n	8007972 <_vfprintf_r+0x5a>
 800795c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8007960:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8007964:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007968:	f8a9 300c 	strh.w	r3, [r9, #12]
 800796c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8007970:	b29b      	uxth	r3, r3
 8007972:	071d      	lsls	r5, r3, #28
 8007974:	f140 80b2 	bpl.w	8007adc <_vfprintf_r+0x1c4>
 8007978:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800797c:	2a00      	cmp	r2, #0
 800797e:	f000 80ad 	beq.w	8007adc <_vfprintf_r+0x1c4>
 8007982:	f003 021a 	and.w	r2, r3, #26
 8007986:	2a0a      	cmp	r2, #10
 8007988:	f000 80c9 	beq.w	8007b1e <_vfprintf_r+0x206>
 800798c:	2300      	movs	r3, #0
 800798e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8007ba8 <_vfprintf_r+0x290>
 8007992:	9310      	str	r3, [sp, #64]	; 0x40
 8007994:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8007998:	9317      	str	r3, [sp, #92]	; 0x5c
 800799a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800799e:	931b      	str	r3, [sp, #108]	; 0x6c
 80079a0:	9318      	str	r3, [sp, #96]	; 0x60
 80079a2:	9305      	str	r3, [sp, #20]
 80079a4:	ab2d      	add	r3, sp, #180	; 0xb4
 80079a6:	932a      	str	r3, [sp, #168]	; 0xa8
 80079a8:	469b      	mov	fp, r3
 80079aa:	783b      	ldrb	r3, [r7, #0]
 80079ac:	f8cd 901c 	str.w	r9, [sp, #28]
 80079b0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80079b4:	2b00      	cmp	r3, #0
 80079b6:	f000 8259 	beq.w	8007e6c <_vfprintf_r+0x554>
 80079ba:	2b25      	cmp	r3, #37	; 0x25
 80079bc:	463c      	mov	r4, r7
 80079be:	d102      	bne.n	80079c6 <_vfprintf_r+0xae>
 80079c0:	e01d      	b.n	80079fe <_vfprintf_r+0xe6>
 80079c2:	2b25      	cmp	r3, #37	; 0x25
 80079c4:	d003      	beq.n	80079ce <_vfprintf_r+0xb6>
 80079c6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80079ca:	2b00      	cmp	r3, #0
 80079cc:	d1f9      	bne.n	80079c2 <_vfprintf_r+0xaa>
 80079ce:	1be5      	subs	r5, r4, r7
 80079d0:	b18d      	cbz	r5, 80079f6 <_vfprintf_r+0xde>
 80079d2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80079d6:	3301      	adds	r3, #1
 80079d8:	442a      	add	r2, r5
 80079da:	2b07      	cmp	r3, #7
 80079dc:	f8cb 7000 	str.w	r7, [fp]
 80079e0:	f8cb 5004 	str.w	r5, [fp, #4]
 80079e4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80079e8:	f300 80ca 	bgt.w	8007b80 <_vfprintf_r+0x268>
 80079ec:	f10b 0b08 	add.w	fp, fp, #8
 80079f0:	9b05      	ldr	r3, [sp, #20]
 80079f2:	442b      	add	r3, r5
 80079f4:	9305      	str	r3, [sp, #20]
 80079f6:	7823      	ldrb	r3, [r4, #0]
 80079f8:	2b00      	cmp	r3, #0
 80079fa:	f000 8237 	beq.w	8007e6c <_vfprintf_r+0x554>
 80079fe:	2300      	movs	r3, #0
 8007a00:	7866      	ldrb	r6, [r4, #1]
 8007a02:	9306      	str	r3, [sp, #24]
 8007a04:	4698      	mov	r8, r3
 8007a06:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8007a0a:	f104 0a01 	add.w	sl, r4, #1
 8007a0e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8007a12:	252b      	movs	r5, #43	; 0x2b
 8007a14:	f10a 0a01 	add.w	sl, sl, #1
 8007a18:	f1a6 0320 	sub.w	r3, r6, #32
 8007a1c:	2b5a      	cmp	r3, #90	; 0x5a
 8007a1e:	f200 842a 	bhi.w	8008276 <_vfprintf_r+0x95e>
 8007a22:	e8df f013 	tbh	[pc, r3, lsl #1]
 8007a26:	03aa      	.short	0x03aa
 8007a28:	04280428 	.word	0x04280428
 8007a2c:	0428029c 	.word	0x0428029c
 8007a30:	04280428 	.word	0x04280428
 8007a34:	042802a7 	.word	0x042802a7
 8007a38:	02c60428 	.word	0x02c60428
 8007a3c:	042802d2 	.word	0x042802d2
 8007a40:	02dc02d7 	.word	0x02dc02d7
 8007a44:	02f60428 	.word	0x02f60428
 8007a48:	026d026d 	.word	0x026d026d
 8007a4c:	026d026d 	.word	0x026d026d
 8007a50:	026d026d 	.word	0x026d026d
 8007a54:	026d026d 	.word	0x026d026d
 8007a58:	0428026d 	.word	0x0428026d
 8007a5c:	04280428 	.word	0x04280428
 8007a60:	04280428 	.word	0x04280428
 8007a64:	04280428 	.word	0x04280428
 8007a68:	042802fb 	.word	0x042802fb
 8007a6c:	03f3033c 	.word	0x03f3033c
 8007a70:	02fb02fb 	.word	0x02fb02fb
 8007a74:	042802fb 	.word	0x042802fb
 8007a78:	04280428 	.word	0x04280428
 8007a7c:	03ee0428 	.word	0x03ee0428
 8007a80:	04280428 	.word	0x04280428
 8007a84:	0428009a 	.word	0x0428009a
 8007a88:	04280428 	.word	0x04280428
 8007a8c:	04280350 	.word	0x04280350
 8007a90:	04280379 	.word	0x04280379
 8007a94:	03900428 	.word	0x03900428
 8007a98:	04280428 	.word	0x04280428
 8007a9c:	04280428 	.word	0x04280428
 8007aa0:	04280428 	.word	0x04280428
 8007aa4:	04280428 	.word	0x04280428
 8007aa8:	042802fb 	.word	0x042802fb
 8007aac:	00c5033c 	.word	0x00c5033c
 8007ab0:	02fb02fb 	.word	0x02fb02fb
 8007ab4:	03d102fb 	.word	0x03d102fb
 8007ab8:	007000c5 	.word	0x007000c5
 8007abc:	03b50428 	.word	0x03b50428
 8007ac0:	03c20428 	.word	0x03c20428
 8007ac4:	03de009c 	.word	0x03de009c
 8007ac8:	04280070 	.word	0x04280070
 8007acc:	00720350 	.word	0x00720350
 8007ad0:	0428022c 	.word	0x0428022c
 8007ad4:	027c0428 	.word	0x027c0428
 8007ad8:	00720428 	.word	0x00720428
 8007adc:	4649      	mov	r1, r9
 8007ade:	9803      	ldr	r0, [sp, #12]
 8007ae0:	f001 fc9a 	bl	8009418 <__swsetup_r>
 8007ae4:	b1a0      	cbz	r0, 8007b10 <_vfprintf_r+0x1f8>
 8007ae6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8007aea:	07d8      	lsls	r0, r3, #31
 8007aec:	d404      	bmi.n	8007af8 <_vfprintf_r+0x1e0>
 8007aee:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8007af2:	0599      	lsls	r1, r3, #22
 8007af4:	f140 83b7 	bpl.w	8008266 <_vfprintf_r+0x94e>
 8007af8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8007afc:	9305      	str	r3, [sp, #20]
 8007afe:	9805      	ldr	r0, [sp, #20]
 8007b00:	b057      	add	sp, #348	; 0x15c
 8007b02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007b06:	f048 0820 	orr.w	r8, r8, #32
 8007b0a:	f89a 6000 	ldrb.w	r6, [sl]
 8007b0e:	e781      	b.n	8007a14 <_vfprintf_r+0xfc>
 8007b10:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8007b14:	f003 021a 	and.w	r2, r3, #26
 8007b18:	2a0a      	cmp	r2, #10
 8007b1a:	f47f af37 	bne.w	800798c <_vfprintf_r+0x74>
 8007b1e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8007b22:	2a00      	cmp	r2, #0
 8007b24:	f6ff af32 	blt.w	800798c <_vfprintf_r+0x74>
 8007b28:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8007b2c:	07d2      	lsls	r2, r2, #31
 8007b2e:	d405      	bmi.n	8007b3c <_vfprintf_r+0x224>
 8007b30:	059b      	lsls	r3, r3, #22
 8007b32:	d403      	bmi.n	8007b3c <_vfprintf_r+0x224>
 8007b34:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8007b38:	f003 f976 	bl	800ae28 <__retarget_lock_release_recursive>
 8007b3c:	4623      	mov	r3, r4
 8007b3e:	463a      	mov	r2, r7
 8007b40:	4649      	mov	r1, r9
 8007b42:	9803      	ldr	r0, [sp, #12]
 8007b44:	f001 fc26 	bl	8009394 <__sbprintf>
 8007b48:	9005      	str	r0, [sp, #20]
 8007b4a:	9805      	ldr	r0, [sp, #20]
 8007b4c:	b057      	add	sp, #348	; 0x15c
 8007b4e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007b52:	9803      	ldr	r0, [sp, #12]
 8007b54:	f002 fd86 	bl	800a664 <__sinit>
 8007b58:	e6f4      	b.n	8007944 <_vfprintf_r+0x2c>
 8007b5a:	f048 0810 	orr.w	r8, r8, #16
 8007b5e:	f018 0f20 	tst.w	r8, #32
 8007b62:	f000 836c 	beq.w	800823e <_vfprintf_r+0x926>
 8007b66:	9c08      	ldr	r4, [sp, #32]
 8007b68:	3407      	adds	r4, #7
 8007b6a:	f024 0307 	bic.w	r3, r4, #7
 8007b6e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8007b72:	f103 0208 	add.w	r2, r3, #8
 8007b76:	9208      	str	r2, [sp, #32]
 8007b78:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8007b7c:	2200      	movs	r2, #0
 8007b7e:	e18c      	b.n	8007e9a <_vfprintf_r+0x582>
 8007b80:	aa2a      	add	r2, sp, #168	; 0xa8
 8007b82:	9907      	ldr	r1, [sp, #28]
 8007b84:	9803      	ldr	r0, [sp, #12]
 8007b86:	f7ff f809 	bl	8006b9c <__sprint_r>
 8007b8a:	2800      	cmp	r0, #0
 8007b8c:	f041 8376 	bne.w	800927c <_vfprintf_r+0x1964>
 8007b90:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007b94:	e72c      	b.n	80079f0 <_vfprintf_r+0xd8>
 8007b96:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8007b9a:	f003 f943 	bl	800ae24 <__retarget_lock_acquire_recursive>
 8007b9e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8007ba2:	b293      	uxth	r3, r2
 8007ba4:	e6d8      	b.n	8007958 <_vfprintf_r+0x40>
 8007ba6:	bf00      	nop
	...
 8007bb0:	4643      	mov	r3, r8
 8007bb2:	069f      	lsls	r7, r3, #26
 8007bb4:	f140 832f 	bpl.w	8008216 <_vfprintf_r+0x8fe>
 8007bb8:	9c08      	ldr	r4, [sp, #32]
 8007bba:	3407      	adds	r4, #7
 8007bbc:	f024 0407 	bic.w	r4, r4, #7
 8007bc0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8007bc4:	f104 0208 	add.w	r2, r4, #8
 8007bc8:	9208      	str	r2, [sp, #32]
 8007bca:	4604      	mov	r4, r0
 8007bcc:	460d      	mov	r5, r1
 8007bce:	2800      	cmp	r0, #0
 8007bd0:	f171 0200 	sbcs.w	r2, r1, #0
 8007bd4:	da05      	bge.n	8007be2 <_vfprintf_r+0x2ca>
 8007bd6:	222d      	movs	r2, #45	; 0x2d
 8007bd8:	4264      	negs	r4, r4
 8007bda:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8007bde:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8007be2:	aa56      	add	r2, sp, #344	; 0x158
 8007be4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8007be8:	9204      	str	r2, [sp, #16]
 8007bea:	f000 84b2 	beq.w	8008552 <_vfprintf_r+0xc3a>
 8007bee:	2201      	movs	r2, #1
 8007bf0:	ea54 0105 	orrs.w	r1, r4, r5
 8007bf4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8007bf8:	f040 8159 	bne.w	8007eae <_vfprintf_r+0x596>
 8007bfc:	f1b9 0f00 	cmp.w	r9, #0
 8007c00:	f040 8619 	bne.w	8008836 <_vfprintf_r+0xf1e>
 8007c04:	2a00      	cmp	r2, #0
 8007c06:	f040 8508 	bne.w	800861a <_vfprintf_r+0xd02>
 8007c0a:	f013 0301 	ands.w	r3, r3, #1
 8007c0e:	af56      	add	r7, sp, #344	; 0x158
 8007c10:	9309      	str	r3, [sp, #36]	; 0x24
 8007c12:	d002      	beq.n	8007c1a <_vfprintf_r+0x302>
 8007c14:	2330      	movs	r3, #48	; 0x30
 8007c16:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8007c1a:	2300      	movs	r3, #0
 8007c1c:	930a      	str	r3, [sp, #40]	; 0x28
 8007c1e:	930f      	str	r3, [sp, #60]	; 0x3c
 8007c20:	9314      	str	r3, [sp, #80]	; 0x50
 8007c22:	9311      	str	r3, [sp, #68]	; 0x44
 8007c24:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007c26:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8007c2a:	454b      	cmp	r3, r9
 8007c2c:	bfb8      	it	lt
 8007c2e:	464b      	movlt	r3, r9
 8007c30:	9304      	str	r3, [sp, #16]
 8007c32:	b112      	cbz	r2, 8007c3a <_vfprintf_r+0x322>
 8007c34:	9b04      	ldr	r3, [sp, #16]
 8007c36:	3301      	adds	r3, #1
 8007c38:	9304      	str	r3, [sp, #16]
 8007c3a:	f018 0302 	ands.w	r3, r8, #2
 8007c3e:	930b      	str	r3, [sp, #44]	; 0x2c
 8007c40:	d002      	beq.n	8007c48 <_vfprintf_r+0x330>
 8007c42:	9b04      	ldr	r3, [sp, #16]
 8007c44:	3302      	adds	r3, #2
 8007c46:	9304      	str	r3, [sp, #16]
 8007c48:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8007c4c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8007c4e:	930e      	str	r3, [sp, #56]	; 0x38
 8007c50:	d13f      	bne.n	8007cd2 <_vfprintf_r+0x3ba>
 8007c52:	9b06      	ldr	r3, [sp, #24]
 8007c54:	9904      	ldr	r1, [sp, #16]
 8007c56:	1a5d      	subs	r5, r3, r1
 8007c58:	2d00      	cmp	r5, #0
 8007c5a:	dd3a      	ble.n	8007cd2 <_vfprintf_r+0x3ba>
 8007c5c:	2d10      	cmp	r5, #16
 8007c5e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8007c60:	dd29      	ble.n	8007cb6 <_vfprintf_r+0x39e>
 8007c62:	4659      	mov	r1, fp
 8007c64:	4620      	mov	r0, r4
 8007c66:	9620      	str	r6, [sp, #128]	; 0x80
 8007c68:	2310      	movs	r3, #16
 8007c6a:	9c03      	ldr	r4, [sp, #12]
 8007c6c:	9e07      	ldr	r6, [sp, #28]
 8007c6e:	46bb      	mov	fp, r7
 8007c70:	e004      	b.n	8007c7c <_vfprintf_r+0x364>
 8007c72:	3d10      	subs	r5, #16
 8007c74:	2d10      	cmp	r5, #16
 8007c76:	f101 0108 	add.w	r1, r1, #8
 8007c7a:	dd18      	ble.n	8007cae <_vfprintf_r+0x396>
 8007c7c:	3201      	adds	r2, #1
 8007c7e:	4fba      	ldr	r7, [pc, #744]	; (8007f68 <_vfprintf_r+0x650>)
 8007c80:	3010      	adds	r0, #16
 8007c82:	2a07      	cmp	r2, #7
 8007c84:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8007c88:	e9c1 7300 	strd	r7, r3, [r1]
 8007c8c:	ddf1      	ble.n	8007c72 <_vfprintf_r+0x35a>
 8007c8e:	aa2a      	add	r2, sp, #168	; 0xa8
 8007c90:	4631      	mov	r1, r6
 8007c92:	4620      	mov	r0, r4
 8007c94:	930c      	str	r3, [sp, #48]	; 0x30
 8007c96:	f7fe ff81 	bl	8006b9c <__sprint_r>
 8007c9a:	2800      	cmp	r0, #0
 8007c9c:	f040 843d 	bne.w	800851a <_vfprintf_r+0xc02>
 8007ca0:	3d10      	subs	r5, #16
 8007ca2:	2d10      	cmp	r5, #16
 8007ca4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8007ca8:	a92d      	add	r1, sp, #180	; 0xb4
 8007caa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8007cac:	dce6      	bgt.n	8007c7c <_vfprintf_r+0x364>
 8007cae:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8007cb0:	465f      	mov	r7, fp
 8007cb2:	4604      	mov	r4, r0
 8007cb4:	468b      	mov	fp, r1
 8007cb6:	3201      	adds	r2, #1
 8007cb8:	4bab      	ldr	r3, [pc, #684]	; (8007f68 <_vfprintf_r+0x650>)
 8007cba:	442c      	add	r4, r5
 8007cbc:	2a07      	cmp	r2, #7
 8007cbe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8007cc2:	e9cb 3500 	strd	r3, r5, [fp]
 8007cc6:	f300 84ff 	bgt.w	80086c8 <_vfprintf_r+0xdb0>
 8007cca:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8007cce:	f10b 0b08 	add.w	fp, fp, #8
 8007cd2:	b172      	cbz	r2, 8007cf2 <_vfprintf_r+0x3da>
 8007cd4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8007cd6:	3201      	adds	r2, #1
 8007cd8:	3401      	adds	r4, #1
 8007cda:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8007cde:	2101      	movs	r1, #1
 8007ce0:	2a07      	cmp	r2, #7
 8007ce2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8007ce6:	e9cb 0100 	strd	r0, r1, [fp]
 8007cea:	f300 8418 	bgt.w	800851e <_vfprintf_r+0xc06>
 8007cee:	f10b 0b08 	add.w	fp, fp, #8
 8007cf2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007cf4:	b16b      	cbz	r3, 8007d12 <_vfprintf_r+0x3fa>
 8007cf6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8007cf8:	3301      	adds	r3, #1
 8007cfa:	3402      	adds	r4, #2
 8007cfc:	a923      	add	r1, sp, #140	; 0x8c
 8007cfe:	2202      	movs	r2, #2
 8007d00:	2b07      	cmp	r3, #7
 8007d02:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8007d06:	e9cb 1200 	strd	r1, r2, [fp]
 8007d0a:	f300 8415 	bgt.w	8008538 <_vfprintf_r+0xc20>
 8007d0e:	f10b 0b08 	add.w	fp, fp, #8
 8007d12:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007d14:	2b80      	cmp	r3, #128	; 0x80
 8007d16:	f000 8331 	beq.w	800837c <_vfprintf_r+0xa64>
 8007d1a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007d1c:	eba9 0503 	sub.w	r5, r9, r3
 8007d20:	2d00      	cmp	r5, #0
 8007d22:	dd37      	ble.n	8007d94 <_vfprintf_r+0x47c>
 8007d24:	2d10      	cmp	r5, #16
 8007d26:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8007d28:	4b90      	ldr	r3, [pc, #576]	; (8007f6c <_vfprintf_r+0x654>)
 8007d2a:	dd28      	ble.n	8007d7e <_vfprintf_r+0x466>
 8007d2c:	4659      	mov	r1, fp
 8007d2e:	4620      	mov	r0, r4
 8007d30:	46bb      	mov	fp, r7
 8007d32:	f04f 0910 	mov.w	r9, #16
 8007d36:	4637      	mov	r7, r6
 8007d38:	461c      	mov	r4, r3
 8007d3a:	9e07      	ldr	r6, [sp, #28]
 8007d3c:	e004      	b.n	8007d48 <_vfprintf_r+0x430>
 8007d3e:	3d10      	subs	r5, #16
 8007d40:	2d10      	cmp	r5, #16
 8007d42:	f101 0108 	add.w	r1, r1, #8
 8007d46:	dd15      	ble.n	8007d74 <_vfprintf_r+0x45c>
 8007d48:	3201      	adds	r2, #1
 8007d4a:	3010      	adds	r0, #16
 8007d4c:	2a07      	cmp	r2, #7
 8007d4e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8007d52:	e9c1 4900 	strd	r4, r9, [r1]
 8007d56:	ddf2      	ble.n	8007d3e <_vfprintf_r+0x426>
 8007d58:	aa2a      	add	r2, sp, #168	; 0xa8
 8007d5a:	4631      	mov	r1, r6
 8007d5c:	9803      	ldr	r0, [sp, #12]
 8007d5e:	f7fe ff1d 	bl	8006b9c <__sprint_r>
 8007d62:	2800      	cmp	r0, #0
 8007d64:	f040 83d9 	bne.w	800851a <_vfprintf_r+0xc02>
 8007d68:	3d10      	subs	r5, #16
 8007d6a:	2d10      	cmp	r5, #16
 8007d6c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8007d70:	a92d      	add	r1, sp, #180	; 0xb4
 8007d72:	dce9      	bgt.n	8007d48 <_vfprintf_r+0x430>
 8007d74:	463e      	mov	r6, r7
 8007d76:	4623      	mov	r3, r4
 8007d78:	465f      	mov	r7, fp
 8007d7a:	4604      	mov	r4, r0
 8007d7c:	468b      	mov	fp, r1
 8007d7e:	3201      	adds	r2, #1
 8007d80:	442c      	add	r4, r5
 8007d82:	2a07      	cmp	r2, #7
 8007d84:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8007d88:	e9cb 3500 	strd	r3, r5, [fp]
 8007d8c:	f300 83ef 	bgt.w	800856e <_vfprintf_r+0xc56>
 8007d90:	f10b 0b08 	add.w	fp, fp, #8
 8007d94:	f418 7f80 	tst.w	r8, #256	; 0x100
 8007d98:	f040 8280 	bne.w	800829c <_vfprintf_r+0x984>
 8007d9c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8007d9e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8007da0:	f8cb 7000 	str.w	r7, [fp]
 8007da4:	3301      	adds	r3, #1
 8007da6:	4414      	add	r4, r2
 8007da8:	2b07      	cmp	r3, #7
 8007daa:	942c      	str	r4, [sp, #176]	; 0xb0
 8007dac:	f8cb 2004 	str.w	r2, [fp, #4]
 8007db0:	932b      	str	r3, [sp, #172]	; 0xac
 8007db2:	f300 8392 	bgt.w	80084da <_vfprintf_r+0xbc2>
 8007db6:	f10b 0b08 	add.w	fp, fp, #8
 8007dba:	f018 0f04 	tst.w	r8, #4
 8007dbe:	d03b      	beq.n	8007e38 <_vfprintf_r+0x520>
 8007dc0:	9b06      	ldr	r3, [sp, #24]
 8007dc2:	9a04      	ldr	r2, [sp, #16]
 8007dc4:	1a9d      	subs	r5, r3, r2
 8007dc6:	2d00      	cmp	r5, #0
 8007dc8:	dd36      	ble.n	8007e38 <_vfprintf_r+0x520>
 8007dca:	2d10      	cmp	r5, #16
 8007dcc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8007dce:	dd21      	ble.n	8007e14 <_vfprintf_r+0x4fc>
 8007dd0:	2610      	movs	r6, #16
 8007dd2:	9f03      	ldr	r7, [sp, #12]
 8007dd4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8007dd8:	e004      	b.n	8007de4 <_vfprintf_r+0x4cc>
 8007dda:	3d10      	subs	r5, #16
 8007ddc:	2d10      	cmp	r5, #16
 8007dde:	f10b 0b08 	add.w	fp, fp, #8
 8007de2:	dd17      	ble.n	8007e14 <_vfprintf_r+0x4fc>
 8007de4:	3301      	adds	r3, #1
 8007de6:	4a60      	ldr	r2, [pc, #384]	; (8007f68 <_vfprintf_r+0x650>)
 8007de8:	3410      	adds	r4, #16
 8007dea:	2b07      	cmp	r3, #7
 8007dec:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8007df0:	e9cb 2600 	strd	r2, r6, [fp]
 8007df4:	ddf1      	ble.n	8007dda <_vfprintf_r+0x4c2>
 8007df6:	aa2a      	add	r2, sp, #168	; 0xa8
 8007df8:	4641      	mov	r1, r8
 8007dfa:	4638      	mov	r0, r7
 8007dfc:	f7fe fece 	bl	8006b9c <__sprint_r>
 8007e00:	2800      	cmp	r0, #0
 8007e02:	f040 856c 	bne.w	80088de <_vfprintf_r+0xfc6>
 8007e06:	3d10      	subs	r5, #16
 8007e08:	2d10      	cmp	r5, #16
 8007e0a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8007e0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007e12:	dce7      	bgt.n	8007de4 <_vfprintf_r+0x4cc>
 8007e14:	3301      	adds	r3, #1
 8007e16:	4a54      	ldr	r2, [pc, #336]	; (8007f68 <_vfprintf_r+0x650>)
 8007e18:	442c      	add	r4, r5
 8007e1a:	2b07      	cmp	r3, #7
 8007e1c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8007e20:	e9cb 2500 	strd	r2, r5, [fp]
 8007e24:	dd08      	ble.n	8007e38 <_vfprintf_r+0x520>
 8007e26:	aa2a      	add	r2, sp, #168	; 0xa8
 8007e28:	9907      	ldr	r1, [sp, #28]
 8007e2a:	9803      	ldr	r0, [sp, #12]
 8007e2c:	f7fe feb6 	bl	8006b9c <__sprint_r>
 8007e30:	2800      	cmp	r0, #0
 8007e32:	f040 82e9 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8007e36:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8007e38:	9904      	ldr	r1, [sp, #16]
 8007e3a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8007e3e:	428a      	cmp	r2, r1
 8007e40:	bfac      	ite	ge
 8007e42:	189b      	addge	r3, r3, r2
 8007e44:	185b      	addlt	r3, r3, r1
 8007e46:	9305      	str	r3, [sp, #20]
 8007e48:	2c00      	cmp	r4, #0
 8007e4a:	f040 82d5 	bne.w	80083f8 <_vfprintf_r+0xae0>
 8007e4e:	2300      	movs	r3, #0
 8007e50:	932b      	str	r3, [sp, #172]	; 0xac
 8007e52:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007e54:	b11b      	cbz	r3, 8007e5e <_vfprintf_r+0x546>
 8007e56:	990a      	ldr	r1, [sp, #40]	; 0x28
 8007e58:	9803      	ldr	r0, [sp, #12]
 8007e5a:	f002 fd27 	bl	800a8ac <_free_r>
 8007e5e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007e62:	4657      	mov	r7, sl
 8007e64:	783b      	ldrb	r3, [r7, #0]
 8007e66:	2b00      	cmp	r3, #0
 8007e68:	f47f ada7 	bne.w	80079ba <_vfprintf_r+0xa2>
 8007e6c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8007e6e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007e72:	2b00      	cmp	r3, #0
 8007e74:	f041 80e7 	bne.w	8009046 <_vfprintf_r+0x172e>
 8007e78:	2300      	movs	r3, #0
 8007e7a:	932b      	str	r3, [sp, #172]	; 0xac
 8007e7c:	e2cb      	b.n	8008416 <_vfprintf_r+0xafe>
 8007e7e:	4643      	mov	r3, r8
 8007e80:	069a      	lsls	r2, r3, #26
 8007e82:	f140 814e 	bpl.w	8008122 <_vfprintf_r+0x80a>
 8007e86:	9c08      	ldr	r4, [sp, #32]
 8007e88:	3407      	adds	r4, #7
 8007e8a:	f024 0207 	bic.w	r2, r4, #7
 8007e8e:	f102 0108 	add.w	r1, r2, #8
 8007e92:	e9d2 4500 	ldrd	r4, r5, [r2]
 8007e96:	9108      	str	r1, [sp, #32]
 8007e98:	2201      	movs	r2, #1
 8007e9a:	2100      	movs	r1, #0
 8007e9c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8007ea0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8007ea4:	a956      	add	r1, sp, #344	; 0x158
 8007ea6:	9104      	str	r1, [sp, #16]
 8007ea8:	f47f aea2 	bne.w	8007bf0 <_vfprintf_r+0x2d8>
 8007eac:	4698      	mov	r8, r3
 8007eae:	2a01      	cmp	r2, #1
 8007eb0:	f000 8350 	beq.w	8008554 <_vfprintf_r+0xc3c>
 8007eb4:	2a02      	cmp	r2, #2
 8007eb6:	f000 831b 	beq.w	80084f0 <_vfprintf_r+0xbd8>
 8007eba:	a956      	add	r1, sp, #344	; 0x158
 8007ebc:	e000      	b.n	8007ec0 <_vfprintf_r+0x5a8>
 8007ebe:	4639      	mov	r1, r7
 8007ec0:	08e2      	lsrs	r2, r4, #3
 8007ec2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8007ec6:	08e8      	lsrs	r0, r5, #3
 8007ec8:	f004 0307 	and.w	r3, r4, #7
 8007ecc:	4605      	mov	r5, r0
 8007ece:	4614      	mov	r4, r2
 8007ed0:	3330      	adds	r3, #48	; 0x30
 8007ed2:	ea54 0205 	orrs.w	r2, r4, r5
 8007ed6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8007eda:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8007ede:	d1ee      	bne.n	8007ebe <_vfprintf_r+0x5a6>
 8007ee0:	f018 0f01 	tst.w	r8, #1
 8007ee4:	f000 8314 	beq.w	8008510 <_vfprintf_r+0xbf8>
 8007ee8:	2b30      	cmp	r3, #48	; 0x30
 8007eea:	f000 8311 	beq.w	8008510 <_vfprintf_r+0xbf8>
 8007eee:	9a04      	ldr	r2, [sp, #16]
 8007ef0:	3902      	subs	r1, #2
 8007ef2:	2330      	movs	r3, #48	; 0x30
 8007ef4:	1a52      	subs	r2, r2, r1
 8007ef6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8007efa:	9209      	str	r2, [sp, #36]	; 0x24
 8007efc:	460f      	mov	r7, r1
 8007efe:	e68c      	b.n	8007c1a <_vfprintf_r+0x302>
 8007f00:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8007f04:	2200      	movs	r2, #0
 8007f06:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8007f0a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8007f0e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8007f12:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8007f16:	2b09      	cmp	r3, #9
 8007f18:	d9f5      	bls.n	8007f06 <_vfprintf_r+0x5ee>
 8007f1a:	9206      	str	r2, [sp, #24]
 8007f1c:	e57c      	b.n	8007a18 <_vfprintf_r+0x100>
 8007f1e:	4b14      	ldr	r3, [pc, #80]	; (8007f70 <_vfprintf_r+0x658>)
 8007f20:	9317      	str	r3, [sp, #92]	; 0x5c
 8007f22:	f018 0f20 	tst.w	r8, #32
 8007f26:	f000 8114 	beq.w	8008152 <_vfprintf_r+0x83a>
 8007f2a:	9c08      	ldr	r4, [sp, #32]
 8007f2c:	3407      	adds	r4, #7
 8007f2e:	f024 0307 	bic.w	r3, r4, #7
 8007f32:	e9d3 4500 	ldrd	r4, r5, [r3]
 8007f36:	f103 0208 	add.w	r2, r3, #8
 8007f3a:	9208      	str	r2, [sp, #32]
 8007f3c:	f018 0f01 	tst.w	r8, #1
 8007f40:	d009      	beq.n	8007f56 <_vfprintf_r+0x63e>
 8007f42:	ea54 0305 	orrs.w	r3, r4, r5
 8007f46:	d006      	beq.n	8007f56 <_vfprintf_r+0x63e>
 8007f48:	2330      	movs	r3, #48	; 0x30
 8007f4a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8007f4e:	f048 0802 	orr.w	r8, r8, #2
 8007f52:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8007f56:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8007f5a:	2202      	movs	r2, #2
 8007f5c:	e79d      	b.n	8007e9a <_vfprintf_r+0x582>
 8007f5e:	f048 0801 	orr.w	r8, r8, #1
 8007f62:	f89a 6000 	ldrb.w	r6, [sl]
 8007f66:	e555      	b.n	8007a14 <_vfprintf_r+0xfc>
 8007f68:	0800d048 	.word	0x0800d048
 8007f6c:	0800d058 	.word	0x0800d058
 8007f70:	0800cff8 	.word	0x0800cff8
 8007f74:	9e03      	ldr	r6, [sp, #12]
 8007f76:	4630      	mov	r0, r6
 8007f78:	f002 ff42 	bl	800ae00 <_localeconv_r>
 8007f7c:	6843      	ldr	r3, [r0, #4]
 8007f7e:	9318      	str	r3, [sp, #96]	; 0x60
 8007f80:	4618      	mov	r0, r3
 8007f82:	f7f8 fbbd 	bl	8000700 <strlen>
 8007f86:	901b      	str	r0, [sp, #108]	; 0x6c
 8007f88:	4604      	mov	r4, r0
 8007f8a:	4630      	mov	r0, r6
 8007f8c:	f002 ff38 	bl	800ae00 <_localeconv_r>
 8007f90:	6883      	ldr	r3, [r0, #8]
 8007f92:	931a      	str	r3, [sp, #104]	; 0x68
 8007f94:	2c00      	cmp	r4, #0
 8007f96:	f43f adb8 	beq.w	8007b0a <_vfprintf_r+0x1f2>
 8007f9a:	f89a 6000 	ldrb.w	r6, [sl]
 8007f9e:	2b00      	cmp	r3, #0
 8007fa0:	f43f ad38 	beq.w	8007a14 <_vfprintf_r+0xfc>
 8007fa4:	781b      	ldrb	r3, [r3, #0]
 8007fa6:	2b00      	cmp	r3, #0
 8007fa8:	f43f ad34 	beq.w	8007a14 <_vfprintf_r+0xfc>
 8007fac:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8007fb0:	e530      	b.n	8007a14 <_vfprintf_r+0xfc>
 8007fb2:	9b08      	ldr	r3, [sp, #32]
 8007fb4:	f89a 6000 	ldrb.w	r6, [sl]
 8007fb8:	681a      	ldr	r2, [r3, #0]
 8007fba:	9206      	str	r2, [sp, #24]
 8007fbc:	2a00      	cmp	r2, #0
 8007fbe:	f103 0304 	add.w	r3, r3, #4
 8007fc2:	f2c0 8697 	blt.w	8008cf4 <_vfprintf_r+0x13dc>
 8007fc6:	9308      	str	r3, [sp, #32]
 8007fc8:	e524      	b.n	8007a14 <_vfprintf_r+0xfc>
 8007fca:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8007fce:	f89a 6000 	ldrb.w	r6, [sl]
 8007fd2:	e51f      	b.n	8007a14 <_vfprintf_r+0xfc>
 8007fd4:	f89a 6000 	ldrb.w	r6, [sl]
 8007fd8:	f048 0804 	orr.w	r8, r8, #4
 8007fdc:	e51a      	b.n	8007a14 <_vfprintf_r+0xfc>
 8007fde:	f89a 6000 	ldrb.w	r6, [sl]
 8007fe2:	2e2a      	cmp	r6, #42	; 0x2a
 8007fe4:	f10a 0201 	add.w	r2, sl, #1
 8007fe8:	f001 81b0 	beq.w	800934c <_vfprintf_r+0x1a34>
 8007fec:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8007ff0:	2b09      	cmp	r3, #9
 8007ff2:	4692      	mov	sl, r2
 8007ff4:	f04f 0900 	mov.w	r9, #0
 8007ff8:	f63f ad0e 	bhi.w	8007a18 <_vfprintf_r+0x100>
 8007ffc:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8008000:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8008004:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8008008:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800800c:	2b09      	cmp	r3, #9
 800800e:	d9f5      	bls.n	8007ffc <_vfprintf_r+0x6e4>
 8008010:	e502      	b.n	8007a18 <_vfprintf_r+0x100>
 8008012:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8008016:	f89a 6000 	ldrb.w	r6, [sl]
 800801a:	e4fb      	b.n	8007a14 <_vfprintf_r+0xfc>
 800801c:	9c08      	ldr	r4, [sp, #32]
 800801e:	3407      	adds	r4, #7
 8008020:	f024 0407 	bic.w	r4, r4, #7
 8008024:	ed94 7b00 	vldr	d7, [r4]
 8008028:	ec52 1b17 	vmov	r1, r2, d7
 800802c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8008030:	931d      	str	r3, [sp, #116]	; 0x74
 8008032:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8008036:	3408      	adds	r4, #8
 8008038:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800803c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8008040:	4bba      	ldr	r3, [pc, #744]	; (800832c <_vfprintf_r+0xa14>)
 8008042:	9408      	str	r4, [sp, #32]
 8008044:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8008048:	f7f9 f870 	bl	800112c <__aeabi_dcmpun>
 800804c:	2800      	cmp	r0, #0
 800804e:	f040 846f 	bne.w	8008930 <_vfprintf_r+0x1018>
 8008052:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8008056:	4bb5      	ldr	r3, [pc, #724]	; (800832c <_vfprintf_r+0xa14>)
 8008058:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800805c:	f7f9 f848 	bl	80010f0 <__aeabi_dcmple>
 8008060:	2800      	cmp	r0, #0
 8008062:	f040 8465 	bne.w	8008930 <_vfprintf_r+0x1018>
 8008066:	2200      	movs	r2, #0
 8008068:	2300      	movs	r3, #0
 800806a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800806e:	f7f9 f835 	bl	80010dc <__aeabi_dcmplt>
 8008072:	2800      	cmp	r0, #0
 8008074:	f040 855b 	bne.w	8008b2e <_vfprintf_r+0x1216>
 8008078:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800807c:	4fac      	ldr	r7, [pc, #688]	; (8008330 <_vfprintf_r+0xa18>)
 800807e:	4bad      	ldr	r3, [pc, #692]	; (8008334 <_vfprintf_r+0xa1c>)
 8008080:	2000      	movs	r0, #0
 8008082:	2103      	movs	r1, #3
 8008084:	9104      	str	r1, [sp, #16]
 8008086:	900a      	str	r0, [sp, #40]	; 0x28
 8008088:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800808c:	2e47      	cmp	r6, #71	; 0x47
 800808e:	bfd8      	it	le
 8008090:	461f      	movle	r7, r3
 8008092:	9109      	str	r1, [sp, #36]	; 0x24
 8008094:	4681      	mov	r9, r0
 8008096:	900f      	str	r0, [sp, #60]	; 0x3c
 8008098:	9014      	str	r0, [sp, #80]	; 0x50
 800809a:	9011      	str	r0, [sp, #68]	; 0x44
 800809c:	e5c9      	b.n	8007c32 <_vfprintf_r+0x31a>
 800809e:	9808      	ldr	r0, [sp, #32]
 80080a0:	2300      	movs	r3, #0
 80080a2:	6801      	ldr	r1, [r0, #0]
 80080a4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80080a8:	461a      	mov	r2, r3
 80080aa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80080ae:	2301      	movs	r3, #1
 80080b0:	1d01      	adds	r1, r0, #4
 80080b2:	9304      	str	r3, [sp, #16]
 80080b4:	920a      	str	r2, [sp, #40]	; 0x28
 80080b6:	4691      	mov	r9, r2
 80080b8:	920f      	str	r2, [sp, #60]	; 0x3c
 80080ba:	9214      	str	r2, [sp, #80]	; 0x50
 80080bc:	9211      	str	r2, [sp, #68]	; 0x44
 80080be:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80080c2:	af3d      	add	r7, sp, #244	; 0xf4
 80080c4:	e5b9      	b.n	8007c3a <_vfprintf_r+0x322>
 80080c6:	9b08      	ldr	r3, [sp, #32]
 80080c8:	681f      	ldr	r7, [r3, #0]
 80080ca:	2500      	movs	r5, #0
 80080cc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80080d0:	1d1c      	adds	r4, r3, #4
 80080d2:	2f00      	cmp	r7, #0
 80080d4:	f000 8639 	beq.w	8008d4a <_vfprintf_r+0x1432>
 80080d8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80080dc:	f000 8711 	beq.w	8008f02 <_vfprintf_r+0x15ea>
 80080e0:	464a      	mov	r2, r9
 80080e2:	4629      	mov	r1, r5
 80080e4:	4638      	mov	r0, r7
 80080e6:	f7f8 fb7b 	bl	80007e0 <memchr>
 80080ea:	900a      	str	r0, [sp, #40]	; 0x28
 80080ec:	2800      	cmp	r0, #0
 80080ee:	f000 85e7 	beq.w	8008cc0 <_vfprintf_r+0x13a8>
 80080f2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80080f4:	1bdb      	subs	r3, r3, r7
 80080f6:	9309      	str	r3, [sp, #36]	; 0x24
 80080f8:	46a9      	mov	r9, r5
 80080fa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80080fe:	9408      	str	r4, [sp, #32]
 8008100:	9304      	str	r3, [sp, #16]
 8008102:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8008106:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800810a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800810e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8008112:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8008116:	e58c      	b.n	8007c32 <_vfprintf_r+0x31a>
 8008118:	f048 0310 	orr.w	r3, r8, #16
 800811c:	069a      	lsls	r2, r3, #26
 800811e:	f53f aeb2 	bmi.w	8007e86 <_vfprintf_r+0x56e>
 8008122:	9a08      	ldr	r2, [sp, #32]
 8008124:	06df      	lsls	r7, r3, #27
 8008126:	f102 0104 	add.w	r1, r2, #4
 800812a:	f100 837e 	bmi.w	800882a <_vfprintf_r+0xf12>
 800812e:	065d      	lsls	r5, r3, #25
 8008130:	9a08      	ldr	r2, [sp, #32]
 8008132:	f100 84e4 	bmi.w	8008afe <_vfprintf_r+0x11e6>
 8008136:	059c      	lsls	r4, r3, #22
 8008138:	f140 8377 	bpl.w	800882a <_vfprintf_r+0xf12>
 800813c:	7814      	ldrb	r4, [r2, #0]
 800813e:	9108      	str	r1, [sp, #32]
 8008140:	2500      	movs	r5, #0
 8008142:	2201      	movs	r2, #1
 8008144:	e6a9      	b.n	8007e9a <_vfprintf_r+0x582>
 8008146:	4b7c      	ldr	r3, [pc, #496]	; (8008338 <_vfprintf_r+0xa20>)
 8008148:	9317      	str	r3, [sp, #92]	; 0x5c
 800814a:	f018 0f20 	tst.w	r8, #32
 800814e:	f47f aeec 	bne.w	8007f2a <_vfprintf_r+0x612>
 8008152:	9a08      	ldr	r2, [sp, #32]
 8008154:	f018 0f10 	tst.w	r8, #16
 8008158:	f102 0304 	add.w	r3, r2, #4
 800815c:	f040 8354 	bne.w	8008808 <_vfprintf_r+0xef0>
 8008160:	f018 0f40 	tst.w	r8, #64	; 0x40
 8008164:	9a08      	ldr	r2, [sp, #32]
 8008166:	f040 84d0 	bne.w	8008b0a <_vfprintf_r+0x11f2>
 800816a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800816e:	f000 834b 	beq.w	8008808 <_vfprintf_r+0xef0>
 8008172:	7814      	ldrb	r4, [r2, #0]
 8008174:	9308      	str	r3, [sp, #32]
 8008176:	2500      	movs	r5, #0
 8008178:	e6e0      	b.n	8007f3c <_vfprintf_r+0x624>
 800817a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800817e:	f89a 6000 	ldrb.w	r6, [sl]
 8008182:	2b00      	cmp	r3, #0
 8008184:	f47f ac46 	bne.w	8007a14 <_vfprintf_r+0xfc>
 8008188:	2320      	movs	r3, #32
 800818a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800818e:	e441      	b.n	8007a14 <_vfprintf_r+0xfc>
 8008190:	f89a 6000 	ldrb.w	r6, [sl]
 8008194:	2e6c      	cmp	r6, #108	; 0x6c
 8008196:	bf03      	ittte	eq
 8008198:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800819c:	f048 0820 	orreq.w	r8, r8, #32
 80081a0:	f10a 0a01 	addeq.w	sl, sl, #1
 80081a4:	f048 0810 	orrne.w	r8, r8, #16
 80081a8:	e434      	b.n	8007a14 <_vfprintf_r+0xfc>
 80081aa:	9a08      	ldr	r2, [sp, #32]
 80081ac:	f018 0f20 	tst.w	r8, #32
 80081b0:	f852 3b04 	ldr.w	r3, [r2], #4
 80081b4:	9208      	str	r2, [sp, #32]
 80081b6:	f000 83a1 	beq.w	80088fc <_vfprintf_r+0xfe4>
 80081ba:	9a05      	ldr	r2, [sp, #20]
 80081bc:	4610      	mov	r0, r2
 80081be:	17d1      	asrs	r1, r2, #31
 80081c0:	e9c3 0100 	strd	r0, r1, [r3]
 80081c4:	4657      	mov	r7, sl
 80081c6:	e64d      	b.n	8007e64 <_vfprintf_r+0x54c>
 80081c8:	f89a 6000 	ldrb.w	r6, [sl]
 80081cc:	2e68      	cmp	r6, #104	; 0x68
 80081ce:	bf03      	ittte	eq
 80081d0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80081d4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80081d8:	f10a 0a01 	addeq.w	sl, sl, #1
 80081dc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80081e0:	e418      	b.n	8007a14 <_vfprintf_r+0xfc>
 80081e2:	9908      	ldr	r1, [sp, #32]
 80081e4:	4b55      	ldr	r3, [pc, #340]	; (800833c <_vfprintf_r+0xa24>)
 80081e6:	680c      	ldr	r4, [r1, #0]
 80081e8:	9317      	str	r3, [sp, #92]	; 0x5c
 80081ea:	f647 0230 	movw	r2, #30768	; 0x7830
 80081ee:	3104      	adds	r1, #4
 80081f0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80081f4:	f048 0302 	orr.w	r3, r8, #2
 80081f8:	9108      	str	r1, [sp, #32]
 80081fa:	2500      	movs	r5, #0
 80081fc:	2202      	movs	r2, #2
 80081fe:	2678      	movs	r6, #120	; 0x78
 8008200:	e64b      	b.n	8007e9a <_vfprintf_r+0x582>
 8008202:	f048 0808 	orr.w	r8, r8, #8
 8008206:	f89a 6000 	ldrb.w	r6, [sl]
 800820a:	e403      	b.n	8007a14 <_vfprintf_r+0xfc>
 800820c:	f048 0310 	orr.w	r3, r8, #16
 8008210:	069f      	lsls	r7, r3, #26
 8008212:	f53f acd1 	bmi.w	8007bb8 <_vfprintf_r+0x2a0>
 8008216:	9908      	ldr	r1, [sp, #32]
 8008218:	06dd      	lsls	r5, r3, #27
 800821a:	f101 0204 	add.w	r2, r1, #4
 800821e:	f100 82fd 	bmi.w	800881c <_vfprintf_r+0xf04>
 8008222:	065c      	lsls	r4, r3, #25
 8008224:	9908      	ldr	r1, [sp, #32]
 8008226:	f100 8475 	bmi.w	8008b14 <_vfprintf_r+0x11fc>
 800822a:	0598      	lsls	r0, r3, #22
 800822c:	f140 82f6 	bpl.w	800881c <_vfprintf_r+0xf04>
 8008230:	f991 4000 	ldrsb.w	r4, [r1]
 8008234:	9208      	str	r2, [sp, #32]
 8008236:	17e5      	asrs	r5, r4, #31
 8008238:	4620      	mov	r0, r4
 800823a:	4629      	mov	r1, r5
 800823c:	e4c7      	b.n	8007bce <_vfprintf_r+0x2b6>
 800823e:	9a08      	ldr	r2, [sp, #32]
 8008240:	f018 0f10 	tst.w	r8, #16
 8008244:	f102 0304 	add.w	r3, r2, #4
 8008248:	f040 82e3 	bne.w	8008812 <_vfprintf_r+0xefa>
 800824c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8008250:	9a08      	ldr	r2, [sp, #32]
 8008252:	f040 8467 	bne.w	8008b24 <_vfprintf_r+0x120c>
 8008256:	f418 7f00 	tst.w	r8, #512	; 0x200
 800825a:	f000 82da 	beq.w	8008812 <_vfprintf_r+0xefa>
 800825e:	7814      	ldrb	r4, [r2, #0]
 8008260:	9308      	str	r3, [sp, #32]
 8008262:	2500      	movs	r5, #0
 8008264:	e488      	b.n	8007b78 <_vfprintf_r+0x260>
 8008266:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800826a:	f002 fddd 	bl	800ae28 <__retarget_lock_release_recursive>
 800826e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8008272:	9305      	str	r3, [sp, #20]
 8008274:	e443      	b.n	8007afe <_vfprintf_r+0x1e6>
 8008276:	2e00      	cmp	r6, #0
 8008278:	f43f adf8 	beq.w	8007e6c <_vfprintf_r+0x554>
 800827c:	2300      	movs	r3, #0
 800827e:	2101      	movs	r1, #1
 8008280:	461a      	mov	r2, r3
 8008282:	9104      	str	r1, [sp, #16]
 8008284:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8008288:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800828c:	930a      	str	r3, [sp, #40]	; 0x28
 800828e:	4699      	mov	r9, r3
 8008290:	930f      	str	r3, [sp, #60]	; 0x3c
 8008292:	9314      	str	r3, [sp, #80]	; 0x50
 8008294:	9311      	str	r3, [sp, #68]	; 0x44
 8008296:	9109      	str	r1, [sp, #36]	; 0x24
 8008298:	af3d      	add	r7, sp, #244	; 0xf4
 800829a:	e4ce      	b.n	8007c3a <_vfprintf_r+0x322>
 800829c:	2e65      	cmp	r6, #101	; 0x65
 800829e:	f340 80ca 	ble.w	8008436 <_vfprintf_r+0xb1e>
 80082a2:	2200      	movs	r2, #0
 80082a4:	2300      	movs	r3, #0
 80082a6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80082aa:	f7f8 ff0d 	bl	80010c8 <__aeabi_dcmpeq>
 80082ae:	2800      	cmp	r0, #0
 80082b0:	f000 8169 	beq.w	8008586 <_vfprintf_r+0xc6e>
 80082b4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80082b6:	4a22      	ldr	r2, [pc, #136]	; (8008340 <_vfprintf_r+0xa28>)
 80082b8:	f8cb 2000 	str.w	r2, [fp]
 80082bc:	3301      	adds	r3, #1
 80082be:	3401      	adds	r4, #1
 80082c0:	2201      	movs	r2, #1
 80082c2:	2b07      	cmp	r3, #7
 80082c4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80082c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80082cc:	f300 8406 	bgt.w	8008adc <_vfprintf_r+0x11c4>
 80082d0:	f10b 0b08 	add.w	fp, fp, #8
 80082d4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80082d6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80082d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80082da:	4293      	cmp	r3, r2
 80082dc:	db03      	blt.n	80082e6 <_vfprintf_r+0x9ce>
 80082de:	f018 0f01 	tst.w	r8, #1
 80082e2:	f43f ad6a 	beq.w	8007dba <_vfprintf_r+0x4a2>
 80082e6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80082e8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80082ea:	f8cb 2000 	str.w	r2, [fp]
 80082ee:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80082f0:	f8cb 2004 	str.w	r2, [fp, #4]
 80082f4:	3301      	adds	r3, #1
 80082f6:	4414      	add	r4, r2
 80082f8:	2b07      	cmp	r3, #7
 80082fa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80082fe:	f300 8517 	bgt.w	8008d30 <_vfprintf_r+0x1418>
 8008302:	f10b 0b08 	add.w	fp, fp, #8
 8008306:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8008308:	1e5d      	subs	r5, r3, #1
 800830a:	2d00      	cmp	r5, #0
 800830c:	f77f ad55 	ble.w	8007dba <_vfprintf_r+0x4a2>
 8008310:	2d10      	cmp	r5, #16
 8008312:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8008314:	4b0b      	ldr	r3, [pc, #44]	; (8008344 <_vfprintf_r+0xa2c>)
 8008316:	f340 82e7 	ble.w	80088e8 <_vfprintf_r+0xfd0>
 800831a:	4619      	mov	r1, r3
 800831c:	2610      	movs	r6, #16
 800831e:	4623      	mov	r3, r4
 8008320:	9f03      	ldr	r7, [sp, #12]
 8008322:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8008326:	460c      	mov	r4, r1
 8008328:	e014      	b.n	8008354 <_vfprintf_r+0xa3c>
 800832a:	bf00      	nop
 800832c:	7fefffff 	.word	0x7fefffff
 8008330:	0800d038 	.word	0x0800d038
 8008334:	0800d034 	.word	0x0800d034
 8008338:	0800cfe4 	.word	0x0800cfe4
 800833c:	0800cff8 	.word	0x0800cff8
 8008340:	0800d044 	.word	0x0800d044
 8008344:	0800d058 	.word	0x0800d058
 8008348:	f10b 0b08 	add.w	fp, fp, #8
 800834c:	3d10      	subs	r5, #16
 800834e:	2d10      	cmp	r5, #16
 8008350:	f340 82c7 	ble.w	80088e2 <_vfprintf_r+0xfca>
 8008354:	3201      	adds	r2, #1
 8008356:	3310      	adds	r3, #16
 8008358:	2a07      	cmp	r2, #7
 800835a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800835e:	e9cb 4600 	strd	r4, r6, [fp]
 8008362:	ddf1      	ble.n	8008348 <_vfprintf_r+0xa30>
 8008364:	aa2a      	add	r2, sp, #168	; 0xa8
 8008366:	4649      	mov	r1, r9
 8008368:	4638      	mov	r0, r7
 800836a:	f7fe fc17 	bl	8006b9c <__sprint_r>
 800836e:	2800      	cmp	r0, #0
 8008370:	d14c      	bne.n	800840c <_vfprintf_r+0xaf4>
 8008372:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8008376:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800837a:	e7e7      	b.n	800834c <_vfprintf_r+0xa34>
 800837c:	9b06      	ldr	r3, [sp, #24]
 800837e:	9a04      	ldr	r2, [sp, #16]
 8008380:	1a9d      	subs	r5, r3, r2
 8008382:	2d00      	cmp	r5, #0
 8008384:	f77f acc9 	ble.w	8007d1a <_vfprintf_r+0x402>
 8008388:	2d10      	cmp	r5, #16
 800838a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800838c:	4bbc      	ldr	r3, [pc, #752]	; (8008680 <_vfprintf_r+0xd68>)
 800838e:	dd27      	ble.n	80083e0 <_vfprintf_r+0xac8>
 8008390:	4659      	mov	r1, fp
 8008392:	4620      	mov	r0, r4
 8008394:	46bb      	mov	fp, r7
 8008396:	461c      	mov	r4, r3
 8008398:	4637      	mov	r7, r6
 800839a:	9e07      	ldr	r6, [sp, #28]
 800839c:	e004      	b.n	80083a8 <_vfprintf_r+0xa90>
 800839e:	3d10      	subs	r5, #16
 80083a0:	2d10      	cmp	r5, #16
 80083a2:	f101 0108 	add.w	r1, r1, #8
 80083a6:	dd16      	ble.n	80083d6 <_vfprintf_r+0xabe>
 80083a8:	3201      	adds	r2, #1
 80083aa:	3010      	adds	r0, #16
 80083ac:	2310      	movs	r3, #16
 80083ae:	2a07      	cmp	r2, #7
 80083b0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80083b4:	600c      	str	r4, [r1, #0]
 80083b6:	604b      	str	r3, [r1, #4]
 80083b8:	ddf1      	ble.n	800839e <_vfprintf_r+0xa86>
 80083ba:	aa2a      	add	r2, sp, #168	; 0xa8
 80083bc:	4631      	mov	r1, r6
 80083be:	9803      	ldr	r0, [sp, #12]
 80083c0:	f7fe fbec 	bl	8006b9c <__sprint_r>
 80083c4:	2800      	cmp	r0, #0
 80083c6:	f040 80a8 	bne.w	800851a <_vfprintf_r+0xc02>
 80083ca:	3d10      	subs	r5, #16
 80083cc:	2d10      	cmp	r5, #16
 80083ce:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80083d2:	a92d      	add	r1, sp, #180	; 0xb4
 80083d4:	dce8      	bgt.n	80083a8 <_vfprintf_r+0xa90>
 80083d6:	463e      	mov	r6, r7
 80083d8:	4623      	mov	r3, r4
 80083da:	465f      	mov	r7, fp
 80083dc:	4604      	mov	r4, r0
 80083de:	468b      	mov	fp, r1
 80083e0:	3201      	adds	r2, #1
 80083e2:	442c      	add	r4, r5
 80083e4:	2a07      	cmp	r2, #7
 80083e6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80083ea:	e9cb 3500 	strd	r3, r5, [fp]
 80083ee:	f300 8292 	bgt.w	8008916 <_vfprintf_r+0xffe>
 80083f2:	f10b 0b08 	add.w	fp, fp, #8
 80083f6:	e490      	b.n	8007d1a <_vfprintf_r+0x402>
 80083f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80083fa:	9907      	ldr	r1, [sp, #28]
 80083fc:	9803      	ldr	r0, [sp, #12]
 80083fe:	f7fe fbcd 	bl	8006b9c <__sprint_r>
 8008402:	2800      	cmp	r0, #0
 8008404:	f43f ad23 	beq.w	8007e4e <_vfprintf_r+0x536>
 8008408:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800840c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800840e:	b111      	cbz	r1, 8008416 <_vfprintf_r+0xafe>
 8008410:	9803      	ldr	r0, [sp, #12]
 8008412:	f002 fa4b 	bl	800a8ac <_free_r>
 8008416:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800841a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800841e:	07d0      	lsls	r0, r2, #31
 8008420:	d402      	bmi.n	8008428 <_vfprintf_r+0xb10>
 8008422:	0599      	lsls	r1, r3, #22
 8008424:	f140 81d0 	bpl.w	80087c8 <_vfprintf_r+0xeb0>
 8008428:	065a      	lsls	r2, r3, #25
 800842a:	f53f ab65 	bmi.w	8007af8 <_vfprintf_r+0x1e0>
 800842e:	9805      	ldr	r0, [sp, #20]
 8008430:	b057      	add	sp, #348	; 0x15c
 8008432:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008436:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8008438:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800843a:	2a01      	cmp	r2, #1
 800843c:	f104 0401 	add.w	r4, r4, #1
 8008440:	f103 0501 	add.w	r5, r3, #1
 8008444:	f10b 0608 	add.w	r6, fp, #8
 8008448:	f340 811c 	ble.w	8008684 <_vfprintf_r+0xd6c>
 800844c:	2301      	movs	r3, #1
 800844e:	2d07      	cmp	r5, #7
 8008450:	f8cb 7000 	str.w	r7, [fp]
 8008454:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8008458:	f8cb 3004 	str.w	r3, [fp, #4]
 800845c:	f300 81bb 	bgt.w	80087d6 <_vfprintf_r+0xebe>
 8008460:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8008462:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8008464:	1c69      	adds	r1, r5, #1
 8008466:	441c      	add	r4, r3
 8008468:	2907      	cmp	r1, #7
 800846a:	910b      	str	r1, [sp, #44]	; 0x2c
 800846c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8008470:	e9c6 2300 	strd	r2, r3, [r6]
 8008474:	f300 81bb 	bgt.w	80087ee <_vfprintf_r+0xed6>
 8008478:	3608      	adds	r6, #8
 800847a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800847c:	1c53      	adds	r3, r2, #1
 800847e:	461d      	mov	r5, r3
 8008480:	9509      	str	r5, [sp, #36]	; 0x24
 8008482:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8008484:	930e      	str	r3, [sp, #56]	; 0x38
 8008486:	2200      	movs	r2, #0
 8008488:	2300      	movs	r3, #0
 800848a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800848e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8008492:	f106 0b08 	add.w	fp, r6, #8
 8008496:	f7f8 fe17 	bl	80010c8 <__aeabi_dcmpeq>
 800849a:	2800      	cmp	r0, #0
 800849c:	f040 80c2 	bne.w	8008624 <_vfprintf_r+0xd0c>
 80084a0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80084a2:	f8c6 9004 	str.w	r9, [r6, #4]
 80084a6:	3701      	adds	r7, #1
 80084a8:	444c      	add	r4, r9
 80084aa:	2d07      	cmp	r5, #7
 80084ac:	6037      	str	r7, [r6, #0]
 80084ae:	942c      	str	r4, [sp, #176]	; 0xb0
 80084b0:	952b      	str	r5, [sp, #172]	; 0xac
 80084b2:	f300 80f9 	bgt.w	80086a8 <_vfprintf_r+0xd90>
 80084b6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80084b8:	f106 0310 	add.w	r3, r6, #16
 80084bc:	3202      	adds	r2, #2
 80084be:	465e      	mov	r6, fp
 80084c0:	9209      	str	r2, [sp, #36]	; 0x24
 80084c2:	469b      	mov	fp, r3
 80084c4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80084c6:	6072      	str	r2, [r6, #4]
 80084c8:	4414      	add	r4, r2
 80084ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80084cc:	942c      	str	r4, [sp, #176]	; 0xb0
 80084ce:	ab26      	add	r3, sp, #152	; 0x98
 80084d0:	2a07      	cmp	r2, #7
 80084d2:	922b      	str	r2, [sp, #172]	; 0xac
 80084d4:	6033      	str	r3, [r6, #0]
 80084d6:	f77f ac70 	ble.w	8007dba <_vfprintf_r+0x4a2>
 80084da:	aa2a      	add	r2, sp, #168	; 0xa8
 80084dc:	9907      	ldr	r1, [sp, #28]
 80084de:	9803      	ldr	r0, [sp, #12]
 80084e0:	f7fe fb5c 	bl	8006b9c <__sprint_r>
 80084e4:	2800      	cmp	r0, #0
 80084e6:	d18f      	bne.n	8008408 <_vfprintf_r+0xaf0>
 80084e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80084ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80084ee:	e464      	b.n	8007dba <_vfprintf_r+0x4a2>
 80084f0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80084f2:	af56      	add	r7, sp, #344	; 0x158
 80084f4:	0923      	lsrs	r3, r4, #4
 80084f6:	f004 010f 	and.w	r1, r4, #15
 80084fa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80084fe:	092a      	lsrs	r2, r5, #4
 8008500:	461c      	mov	r4, r3
 8008502:	4615      	mov	r5, r2
 8008504:	5c43      	ldrb	r3, [r0, r1]
 8008506:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800850a:	ea54 0305 	orrs.w	r3, r4, r5
 800850e:	d1f1      	bne.n	80084f4 <_vfprintf_r+0xbdc>
 8008510:	9b04      	ldr	r3, [sp, #16]
 8008512:	1bdb      	subs	r3, r3, r7
 8008514:	9309      	str	r3, [sp, #36]	; 0x24
 8008516:	f7ff bb80 	b.w	8007c1a <_vfprintf_r+0x302>
 800851a:	46b1      	mov	r9, r6
 800851c:	e776      	b.n	800840c <_vfprintf_r+0xaf4>
 800851e:	aa2a      	add	r2, sp, #168	; 0xa8
 8008520:	9907      	ldr	r1, [sp, #28]
 8008522:	9803      	ldr	r0, [sp, #12]
 8008524:	f7fe fb3a 	bl	8006b9c <__sprint_r>
 8008528:	2800      	cmp	r0, #0
 800852a:	f47f af6d 	bne.w	8008408 <_vfprintf_r+0xaf0>
 800852e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8008530:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8008534:	f7ff bbdd 	b.w	8007cf2 <_vfprintf_r+0x3da>
 8008538:	aa2a      	add	r2, sp, #168	; 0xa8
 800853a:	9907      	ldr	r1, [sp, #28]
 800853c:	9803      	ldr	r0, [sp, #12]
 800853e:	f7fe fb2d 	bl	8006b9c <__sprint_r>
 8008542:	2800      	cmp	r0, #0
 8008544:	f47f af60 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8008548:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800854a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800854e:	f7ff bbe0 	b.w	8007d12 <_vfprintf_r+0x3fa>
 8008552:	4698      	mov	r8, r3
 8008554:	2d00      	cmp	r5, #0
 8008556:	bf08      	it	eq
 8008558:	2c0a      	cmpeq	r4, #10
 800855a:	f080 8170 	bcs.w	800883e <_vfprintf_r+0xf26>
 800855e:	af56      	add	r7, sp, #344	; 0x158
 8008560:	3430      	adds	r4, #48	; 0x30
 8008562:	2301      	movs	r3, #1
 8008564:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8008568:	9309      	str	r3, [sp, #36]	; 0x24
 800856a:	f7ff bb56 	b.w	8007c1a <_vfprintf_r+0x302>
 800856e:	aa2a      	add	r2, sp, #168	; 0xa8
 8008570:	9907      	ldr	r1, [sp, #28]
 8008572:	9803      	ldr	r0, [sp, #12]
 8008574:	f7fe fb12 	bl	8006b9c <__sprint_r>
 8008578:	2800      	cmp	r0, #0
 800857a:	f47f af45 	bne.w	8008408 <_vfprintf_r+0xaf0>
 800857e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8008580:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8008584:	e406      	b.n	8007d94 <_vfprintf_r+0x47c>
 8008586:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8008588:	2b00      	cmp	r3, #0
 800858a:	f340 8273 	ble.w	8008a74 <_vfprintf_r+0x115c>
 800858e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8008592:	4293      	cmp	r3, r2
 8008594:	bfa8      	it	ge
 8008596:	4613      	movge	r3, r2
 8008598:	2b00      	cmp	r3, #0
 800859a:	461d      	mov	r5, r3
 800859c:	dd0d      	ble.n	80085ba <_vfprintf_r+0xca2>
 800859e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80085a0:	f8cb 7000 	str.w	r7, [fp]
 80085a4:	3301      	adds	r3, #1
 80085a6:	442c      	add	r4, r5
 80085a8:	2b07      	cmp	r3, #7
 80085aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80085ac:	f8cb 5004 	str.w	r5, [fp, #4]
 80085b0:	932b      	str	r3, [sp, #172]	; 0xac
 80085b2:	f300 82c1 	bgt.w	8008b38 <_vfprintf_r+0x1220>
 80085b6:	f10b 0b08 	add.w	fp, fp, #8
 80085ba:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80085bc:	2d00      	cmp	r5, #0
 80085be:	bfa8      	it	ge
 80085c0:	1b5b      	subge	r3, r3, r5
 80085c2:	2b00      	cmp	r3, #0
 80085c4:	461d      	mov	r5, r3
 80085c6:	f340 8099 	ble.w	80086fc <_vfprintf_r+0xde4>
 80085ca:	2d10      	cmp	r5, #16
 80085cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80085ce:	4b2c      	ldr	r3, [pc, #176]	; (8008680 <_vfprintf_r+0xd68>)
 80085d0:	f340 83db 	ble.w	8008d8a <_vfprintf_r+0x1472>
 80085d4:	4618      	mov	r0, r3
 80085d6:	4621      	mov	r1, r4
 80085d8:	465b      	mov	r3, fp
 80085da:	2610      	movs	r6, #16
 80085dc:	46bb      	mov	fp, r7
 80085de:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80085e2:	9c07      	ldr	r4, [sp, #28]
 80085e4:	4607      	mov	r7, r0
 80085e6:	e004      	b.n	80085f2 <_vfprintf_r+0xcda>
 80085e8:	3308      	adds	r3, #8
 80085ea:	3d10      	subs	r5, #16
 80085ec:	2d10      	cmp	r5, #16
 80085ee:	f340 83c7 	ble.w	8008d80 <_vfprintf_r+0x1468>
 80085f2:	3201      	adds	r2, #1
 80085f4:	3110      	adds	r1, #16
 80085f6:	2a07      	cmp	r2, #7
 80085f8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80085fc:	e9c3 7600 	strd	r7, r6, [r3]
 8008600:	ddf2      	ble.n	80085e8 <_vfprintf_r+0xcd0>
 8008602:	aa2a      	add	r2, sp, #168	; 0xa8
 8008604:	4621      	mov	r1, r4
 8008606:	4648      	mov	r0, r9
 8008608:	f7fe fac8 	bl	8006b9c <__sprint_r>
 800860c:	2800      	cmp	r0, #0
 800860e:	f040 84a5 	bne.w	8008f5c <_vfprintf_r+0x1644>
 8008612:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8008616:	ab2d      	add	r3, sp, #180	; 0xb4
 8008618:	e7e7      	b.n	80085ea <_vfprintf_r+0xcd2>
 800861a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800861e:	af56      	add	r7, sp, #344	; 0x158
 8008620:	f7ff bafb 	b.w	8007c1a <_vfprintf_r+0x302>
 8008624:	f1b9 0f00 	cmp.w	r9, #0
 8008628:	f77f af4c 	ble.w	80084c4 <_vfprintf_r+0xbac>
 800862c:	f1b9 0f10 	cmp.w	r9, #16
 8008630:	4b13      	ldr	r3, [pc, #76]	; (8008680 <_vfprintf_r+0xd68>)
 8008632:	f340 8659 	ble.w	80092e8 <_vfprintf_r+0x19d0>
 8008636:	4619      	mov	r1, r3
 8008638:	4622      	mov	r2, r4
 800863a:	4633      	mov	r3, r6
 800863c:	2710      	movs	r7, #16
 800863e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8008642:	9c07      	ldr	r4, [sp, #28]
 8008644:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8008646:	460e      	mov	r6, r1
 8008648:	e007      	b.n	800865a <_vfprintf_r+0xd42>
 800864a:	3308      	adds	r3, #8
 800864c:	f1a9 0910 	sub.w	r9, r9, #16
 8008650:	f1b9 0f10 	cmp.w	r9, #16
 8008654:	f340 8353 	ble.w	8008cfe <_vfprintf_r+0x13e6>
 8008658:	3501      	adds	r5, #1
 800865a:	3210      	adds	r2, #16
 800865c:	2d07      	cmp	r5, #7
 800865e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8008662:	e9c3 6700 	strd	r6, r7, [r3]
 8008666:	ddf0      	ble.n	800864a <_vfprintf_r+0xd32>
 8008668:	aa2a      	add	r2, sp, #168	; 0xa8
 800866a:	4621      	mov	r1, r4
 800866c:	4658      	mov	r0, fp
 800866e:	f7fe fa95 	bl	8006b9c <__sprint_r>
 8008672:	2800      	cmp	r0, #0
 8008674:	f040 8472 	bne.w	8008f5c <_vfprintf_r+0x1644>
 8008678:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800867c:	ab2d      	add	r3, sp, #180	; 0xb4
 800867e:	e7e5      	b.n	800864c <_vfprintf_r+0xd34>
 8008680:	0800d058 	.word	0x0800d058
 8008684:	f018 0f01 	tst.w	r8, #1
 8008688:	f47f aee0 	bne.w	800844c <_vfprintf_r+0xb34>
 800868c:	2201      	movs	r2, #1
 800868e:	2d07      	cmp	r5, #7
 8008690:	f8cb 7000 	str.w	r7, [fp]
 8008694:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8008698:	f8cb 2004 	str.w	r2, [fp, #4]
 800869c:	dc04      	bgt.n	80086a8 <_vfprintf_r+0xd90>
 800869e:	3302      	adds	r3, #2
 80086a0:	9309      	str	r3, [sp, #36]	; 0x24
 80086a2:	f10b 0b10 	add.w	fp, fp, #16
 80086a6:	e70d      	b.n	80084c4 <_vfprintf_r+0xbac>
 80086a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80086aa:	9907      	ldr	r1, [sp, #28]
 80086ac:	9803      	ldr	r0, [sp, #12]
 80086ae:	f7fe fa75 	bl	8006b9c <__sprint_r>
 80086b2:	2800      	cmp	r0, #0
 80086b4:	f47f aea8 	bne.w	8008408 <_vfprintf_r+0xaf0>
 80086b8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80086bc:	3301      	adds	r3, #1
 80086be:	9309      	str	r3, [sp, #36]	; 0x24
 80086c0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80086c4:	ae2d      	add	r6, sp, #180	; 0xb4
 80086c6:	e6fd      	b.n	80084c4 <_vfprintf_r+0xbac>
 80086c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80086ca:	9907      	ldr	r1, [sp, #28]
 80086cc:	9803      	ldr	r0, [sp, #12]
 80086ce:	f7fe fa65 	bl	8006b9c <__sprint_r>
 80086d2:	2800      	cmp	r0, #0
 80086d4:	f47f ae98 	bne.w	8008408 <_vfprintf_r+0xaf0>
 80086d8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80086dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80086de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80086e2:	f7ff baf6 	b.w	8007cd2 <_vfprintf_r+0x3ba>
 80086e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80086e8:	9907      	ldr	r1, [sp, #28]
 80086ea:	9803      	ldr	r0, [sp, #12]
 80086ec:	f7fe fa56 	bl	8006b9c <__sprint_r>
 80086f0:	2800      	cmp	r0, #0
 80086f2:	f47f ae89 	bne.w	8008408 <_vfprintf_r+0xaf0>
 80086f6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80086f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80086fc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80086fe:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8008702:	443b      	add	r3, r7
 8008704:	4699      	mov	r9, r3
 8008706:	f040 8357 	bne.w	8008db8 <_vfprintf_r+0x14a0>
 800870a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800870c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800870e:	4293      	cmp	r3, r2
 8008710:	db49      	blt.n	80087a6 <_vfprintf_r+0xe8e>
 8008712:	f018 0f01 	tst.w	r8, #1
 8008716:	d146      	bne.n	80087a6 <_vfprintf_r+0xe8e>
 8008718:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800871a:	18bd      	adds	r5, r7, r2
 800871c:	eba5 0509 	sub.w	r5, r5, r9
 8008720:	1ad3      	subs	r3, r2, r3
 8008722:	429d      	cmp	r5, r3
 8008724:	bfa8      	it	ge
 8008726:	461d      	movge	r5, r3
 8008728:	2d00      	cmp	r5, #0
 800872a:	dd0d      	ble.n	8008748 <_vfprintf_r+0xe30>
 800872c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800872e:	f8cb 9000 	str.w	r9, [fp]
 8008732:	3201      	adds	r2, #1
 8008734:	442c      	add	r4, r5
 8008736:	2a07      	cmp	r2, #7
 8008738:	942c      	str	r4, [sp, #176]	; 0xb0
 800873a:	f8cb 5004 	str.w	r5, [fp, #4]
 800873e:	922b      	str	r2, [sp, #172]	; 0xac
 8008740:	f300 8462 	bgt.w	8009008 <_vfprintf_r+0x16f0>
 8008744:	f10b 0b08 	add.w	fp, fp, #8
 8008748:	2d00      	cmp	r5, #0
 800874a:	bfac      	ite	ge
 800874c:	1b5d      	subge	r5, r3, r5
 800874e:	461d      	movlt	r5, r3
 8008750:	2d00      	cmp	r5, #0
 8008752:	f77f ab32 	ble.w	8007dba <_vfprintf_r+0x4a2>
 8008756:	2d10      	cmp	r5, #16
 8008758:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800875a:	4bc5      	ldr	r3, [pc, #788]	; (8008a70 <_vfprintf_r+0x1158>)
 800875c:	f340 80c4 	ble.w	80088e8 <_vfprintf_r+0xfd0>
 8008760:	4619      	mov	r1, r3
 8008762:	2610      	movs	r6, #16
 8008764:	4623      	mov	r3, r4
 8008766:	9f03      	ldr	r7, [sp, #12]
 8008768:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800876c:	460c      	mov	r4, r1
 800876e:	e005      	b.n	800877c <_vfprintf_r+0xe64>
 8008770:	f10b 0b08 	add.w	fp, fp, #8
 8008774:	3d10      	subs	r5, #16
 8008776:	2d10      	cmp	r5, #16
 8008778:	f340 80b3 	ble.w	80088e2 <_vfprintf_r+0xfca>
 800877c:	3201      	adds	r2, #1
 800877e:	3310      	adds	r3, #16
 8008780:	2a07      	cmp	r2, #7
 8008782:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8008786:	e9cb 4600 	strd	r4, r6, [fp]
 800878a:	ddf1      	ble.n	8008770 <_vfprintf_r+0xe58>
 800878c:	aa2a      	add	r2, sp, #168	; 0xa8
 800878e:	4649      	mov	r1, r9
 8008790:	4638      	mov	r0, r7
 8008792:	f7fe fa03 	bl	8006b9c <__sprint_r>
 8008796:	2800      	cmp	r0, #0
 8008798:	f47f ae38 	bne.w	800840c <_vfprintf_r+0xaf4>
 800879c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80087a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80087a4:	e7e6      	b.n	8008774 <_vfprintf_r+0xe5c>
 80087a6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80087a8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80087aa:	f8cb 1000 	str.w	r1, [fp]
 80087ae:	9915      	ldr	r1, [sp, #84]	; 0x54
 80087b0:	f8cb 1004 	str.w	r1, [fp, #4]
 80087b4:	3201      	adds	r2, #1
 80087b6:	440c      	add	r4, r1
 80087b8:	2a07      	cmp	r2, #7
 80087ba:	942c      	str	r4, [sp, #176]	; 0xb0
 80087bc:	922b      	str	r2, [sp, #172]	; 0xac
 80087be:	f300 828c 	bgt.w	8008cda <_vfprintf_r+0x13c2>
 80087c2:	f10b 0b08 	add.w	fp, fp, #8
 80087c6:	e7a7      	b.n	8008718 <_vfprintf_r+0xe00>
 80087c8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80087cc:	f002 fb2c 	bl	800ae28 <__retarget_lock_release_recursive>
 80087d0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80087d4:	e628      	b.n	8008428 <_vfprintf_r+0xb10>
 80087d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80087d8:	9907      	ldr	r1, [sp, #28]
 80087da:	9803      	ldr	r0, [sp, #12]
 80087dc:	f7fe f9de 	bl	8006b9c <__sprint_r>
 80087e0:	2800      	cmp	r0, #0
 80087e2:	f47f ae11 	bne.w	8008408 <_vfprintf_r+0xaf0>
 80087e6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80087ea:	ae2d      	add	r6, sp, #180	; 0xb4
 80087ec:	e638      	b.n	8008460 <_vfprintf_r+0xb48>
 80087ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80087f0:	9907      	ldr	r1, [sp, #28]
 80087f2:	9803      	ldr	r0, [sp, #12]
 80087f4:	f7fe f9d2 	bl	8006b9c <__sprint_r>
 80087f8:	2800      	cmp	r0, #0
 80087fa:	f47f ae05 	bne.w	8008408 <_vfprintf_r+0xaf0>
 80087fe:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8008802:	ae2d      	add	r6, sp, #180	; 0xb4
 8008804:	930b      	str	r3, [sp, #44]	; 0x2c
 8008806:	e638      	b.n	800847a <_vfprintf_r+0xb62>
 8008808:	6814      	ldr	r4, [r2, #0]
 800880a:	9308      	str	r3, [sp, #32]
 800880c:	2500      	movs	r5, #0
 800880e:	f7ff bb95 	b.w	8007f3c <_vfprintf_r+0x624>
 8008812:	6814      	ldr	r4, [r2, #0]
 8008814:	9308      	str	r3, [sp, #32]
 8008816:	2500      	movs	r5, #0
 8008818:	f7ff b9ae 	b.w	8007b78 <_vfprintf_r+0x260>
 800881c:	680c      	ldr	r4, [r1, #0]
 800881e:	9208      	str	r2, [sp, #32]
 8008820:	17e5      	asrs	r5, r4, #31
 8008822:	4620      	mov	r0, r4
 8008824:	4629      	mov	r1, r5
 8008826:	f7ff b9d2 	b.w	8007bce <_vfprintf_r+0x2b6>
 800882a:	6814      	ldr	r4, [r2, #0]
 800882c:	9108      	str	r1, [sp, #32]
 800882e:	2201      	movs	r2, #1
 8008830:	2500      	movs	r5, #0
 8008832:	f7ff bb32 	b.w	8007e9a <_vfprintf_r+0x582>
 8008836:	2a01      	cmp	r2, #1
 8008838:	f47f ab3c 	bne.w	8007eb4 <_vfprintf_r+0x59c>
 800883c:	e68f      	b.n	800855e <_vfprintf_r+0xc46>
 800883e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8008842:	2200      	movs	r2, #0
 8008844:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8008848:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800884c:	af56      	add	r7, sp, #344	; 0x158
 800884e:	4692      	mov	sl, r2
 8008850:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8008854:	461e      	mov	r6, r3
 8008856:	e00a      	b.n	800886e <_vfprintf_r+0xf56>
 8008858:	2300      	movs	r3, #0
 800885a:	4620      	mov	r0, r4
 800885c:	4629      	mov	r1, r5
 800885e:	220a      	movs	r2, #10
 8008860:	f7f7 fcce 	bl	8000200 <__aeabi_uldivmod>
 8008864:	4604      	mov	r4, r0
 8008866:	460d      	mov	r5, r1
 8008868:	ea54 0305 	orrs.w	r3, r4, r5
 800886c:	d029      	beq.n	80088c2 <_vfprintf_r+0xfaa>
 800886e:	220a      	movs	r2, #10
 8008870:	2300      	movs	r3, #0
 8008872:	4620      	mov	r0, r4
 8008874:	4629      	mov	r1, r5
 8008876:	f7f7 fcc3 	bl	8000200 <__aeabi_uldivmod>
 800887a:	3230      	adds	r2, #48	; 0x30
 800887c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8008880:	f10a 0a01 	add.w	sl, sl, #1
 8008884:	3f01      	subs	r7, #1
 8008886:	2e00      	cmp	r6, #0
 8008888:	d0e6      	beq.n	8008858 <_vfprintf_r+0xf40>
 800888a:	f898 3000 	ldrb.w	r3, [r8]
 800888e:	459a      	cmp	sl, r3
 8008890:	d1e2      	bne.n	8008858 <_vfprintf_r+0xf40>
 8008892:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8008896:	d0df      	beq.n	8008858 <_vfprintf_r+0xf40>
 8008898:	2d00      	cmp	r5, #0
 800889a:	bf08      	it	eq
 800889c:	2c0a      	cmpeq	r4, #10
 800889e:	d3db      	bcc.n	8008858 <_vfprintf_r+0xf40>
 80088a0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80088a2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80088a4:	1aff      	subs	r7, r7, r3
 80088a6:	461a      	mov	r2, r3
 80088a8:	4638      	mov	r0, r7
 80088aa:	f002 ff7d 	bl	800b7a8 <strncpy>
 80088ae:	f898 3001 	ldrb.w	r3, [r8, #1]
 80088b2:	2b00      	cmp	r3, #0
 80088b4:	f000 8496 	beq.w	80091e4 <_vfprintf_r+0x18cc>
 80088b8:	f108 0801 	add.w	r8, r8, #1
 80088bc:	f04f 0a00 	mov.w	sl, #0
 80088c0:	e7ca      	b.n	8008858 <_vfprintf_r+0xf40>
 80088c2:	9b04      	ldr	r3, [sp, #16]
 80088c4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80088c8:	1bdb      	subs	r3, r3, r7
 80088ca:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80088ce:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80088d0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80088d4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80088d8:	9309      	str	r3, [sp, #36]	; 0x24
 80088da:	f7ff b99e 	b.w	8007c1a <_vfprintf_r+0x302>
 80088de:	46c1      	mov	r9, r8
 80088e0:	e594      	b.n	800840c <_vfprintf_r+0xaf4>
 80088e2:	4621      	mov	r1, r4
 80088e4:	461c      	mov	r4, r3
 80088e6:	460b      	mov	r3, r1
 80088e8:	3201      	adds	r2, #1
 80088ea:	442c      	add	r4, r5
 80088ec:	2a07      	cmp	r2, #7
 80088ee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80088f2:	e9cb 3500 	strd	r3, r5, [fp]
 80088f6:	f77f aa5e 	ble.w	8007db6 <_vfprintf_r+0x49e>
 80088fa:	e5ee      	b.n	80084da <_vfprintf_r+0xbc2>
 80088fc:	f018 0f10 	tst.w	r8, #16
 8008900:	f040 80f8 	bne.w	8008af4 <_vfprintf_r+0x11dc>
 8008904:	f018 0f40 	tst.w	r8, #64	; 0x40
 8008908:	f000 8351 	beq.w	8008fae <_vfprintf_r+0x1696>
 800890c:	9a05      	ldr	r2, [sp, #20]
 800890e:	801a      	strh	r2, [r3, #0]
 8008910:	4657      	mov	r7, sl
 8008912:	f7ff baa7 	b.w	8007e64 <_vfprintf_r+0x54c>
 8008916:	aa2a      	add	r2, sp, #168	; 0xa8
 8008918:	9907      	ldr	r1, [sp, #28]
 800891a:	9803      	ldr	r0, [sp, #12]
 800891c:	f7fe f93e 	bl	8006b9c <__sprint_r>
 8008920:	2800      	cmp	r0, #0
 8008922:	f47f ad71 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8008926:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8008928:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800892c:	f7ff b9f5 	b.w	8007d1a <_vfprintf_r+0x402>
 8008930:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8008934:	4602      	mov	r2, r0
 8008936:	460b      	mov	r3, r1
 8008938:	f7f8 fbf8 	bl	800112c <__aeabi_dcmpun>
 800893c:	2800      	cmp	r0, #0
 800893e:	f040 8491 	bne.w	8009264 <_vfprintf_r+0x194c>
 8008942:	2e61      	cmp	r6, #97	; 0x61
 8008944:	f000 8111 	beq.w	8008b6a <_vfprintf_r+0x1252>
 8008948:	2e41      	cmp	r6, #65	; 0x41
 800894a:	f000 8377 	beq.w	800903c <_vfprintf_r+0x1724>
 800894e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8008952:	f026 0220 	bic.w	r2, r6, #32
 8008956:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800895a:	930e      	str	r3, [sp, #56]	; 0x38
 800895c:	9204      	str	r2, [sp, #16]
 800895e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8008960:	f000 842d 	beq.w	80091be <_vfprintf_r+0x18a6>
 8008964:	2a47      	cmp	r2, #71	; 0x47
 8008966:	f000 8424 	beq.w	80091b2 <_vfprintf_r+0x189a>
 800896a:	2b00      	cmp	r3, #0
 800896c:	f2c0 82f9 	blt.w	8008f62 <_vfprintf_r+0x164a>
 8008970:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8008974:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8008978:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800897c:	2e66      	cmp	r6, #102	; 0x66
 800897e:	f000 83eb 	beq.w	8009158 <_vfprintf_r+0x1840>
 8008982:	2e46      	cmp	r6, #70	; 0x46
 8008984:	f000 847e 	beq.w	8009284 <_vfprintf_r+0x196c>
 8008988:	9b04      	ldr	r3, [sp, #16]
 800898a:	9803      	ldr	r0, [sp, #12]
 800898c:	2b45      	cmp	r3, #69	; 0x45
 800898e:	bf0c      	ite	eq
 8008990:	f109 0501 	addeq.w	r5, r9, #1
 8008994:	464d      	movne	r5, r9
 8008996:	aa28      	add	r2, sp, #160	; 0xa0
 8008998:	ab25      	add	r3, sp, #148	; 0x94
 800899a:	e9cd 3200 	strd	r3, r2, [sp]
 800899e:	2102      	movs	r1, #2
 80089a0:	ab24      	add	r3, sp, #144	; 0x90
 80089a2:	462a      	mov	r2, r5
 80089a4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80089a8:	f000 fe46 	bl	8009638 <_dtoa_r>
 80089ac:	2e67      	cmp	r6, #103	; 0x67
 80089ae:	4607      	mov	r7, r0
 80089b0:	f040 849c 	bne.w	80092ec <_vfprintf_r+0x19d4>
 80089b4:	f018 0f01 	tst.w	r8, #1
 80089b8:	f040 83f9 	bne.w	80091ae <_vfprintf_r+0x1896>
 80089bc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80089be:	4640      	mov	r0, r8
 80089c0:	1bdb      	subs	r3, r3, r7
 80089c2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80089c6:	9310      	str	r3, [sp, #64]	; 0x40
 80089c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80089ca:	9311      	str	r3, [sp, #68]	; 0x44
 80089cc:	9b04      	ldr	r3, [sp, #16]
 80089ce:	2b47      	cmp	r3, #71	; 0x47
 80089d0:	f000 81e7 	beq.w	8008da2 <_vfprintf_r+0x148a>
 80089d4:	9b04      	ldr	r3, [sp, #16]
 80089d6:	2b46      	cmp	r3, #70	; 0x46
 80089d8:	f000 8300 	beq.w	8008fdc <_vfprintf_r+0x16c4>
 80089dc:	9904      	ldr	r1, [sp, #16]
 80089de:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80089e0:	b2f2      	uxtb	r2, r6
 80089e2:	2941      	cmp	r1, #65	; 0x41
 80089e4:	bf08      	it	eq
 80089e6:	320f      	addeq	r2, #15
 80089e8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80089ec:	bf06      	itte	eq
 80089ee:	b2d2      	uxtbeq	r2, r2
 80089f0:	2101      	moveq	r1, #1
 80089f2:	2100      	movne	r1, #0
 80089f4:	2b00      	cmp	r3, #0
 80089f6:	9324      	str	r3, [sp, #144]	; 0x90
 80089f8:	bfb8      	it	lt
 80089fa:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80089fc:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8008a00:	bfba      	itte	lt
 8008a02:	f1c3 0301 	rsblt	r3, r3, #1
 8008a06:	222d      	movlt	r2, #45	; 0x2d
 8008a08:	222b      	movge	r2, #43	; 0x2b
 8008a0a:	2b09      	cmp	r3, #9
 8008a0c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8008a10:	f300 83f9 	bgt.w	8009206 <_vfprintf_r+0x18ee>
 8008a14:	2900      	cmp	r1, #0
 8008a16:	f040 8487 	bne.w	8009328 <_vfprintf_r+0x1a10>
 8008a1a:	2230      	movs	r2, #48	; 0x30
 8008a1c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8008a20:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8008a24:	3330      	adds	r3, #48	; 0x30
 8008a26:	7013      	strb	r3, [r2, #0]
 8008a28:	1c53      	adds	r3, r2, #1
 8008a2a:	aa26      	add	r2, sp, #152	; 0x98
 8008a2c:	1a9b      	subs	r3, r3, r2
 8008a2e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8008a30:	9319      	str	r3, [sp, #100]	; 0x64
 8008a32:	2a01      	cmp	r2, #1
 8008a34:	4413      	add	r3, r2
 8008a36:	9309      	str	r3, [sp, #36]	; 0x24
 8008a38:	f340 8442 	ble.w	80092c0 <_vfprintf_r+0x19a8>
 8008a3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008a3e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8008a40:	4413      	add	r3, r2
 8008a42:	9309      	str	r3, [sp, #36]	; 0x24
 8008a44:	2300      	movs	r3, #0
 8008a46:	930f      	str	r3, [sp, #60]	; 0x3c
 8008a48:	9314      	str	r3, [sp, #80]	; 0x50
 8008a4a:	9311      	str	r3, [sp, #68]	; 0x44
 8008a4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008a4e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8008a52:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8008a56:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8008a5a:	9304      	str	r3, [sp, #16]
 8008a5c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8008a5e:	2b00      	cmp	r3, #0
 8008a60:	f040 8275 	bne.w	8008f4e <_vfprintf_r+0x1636>
 8008a64:	4699      	mov	r9, r3
 8008a66:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8008a6a:	f7ff b8e2 	b.w	8007c32 <_vfprintf_r+0x31a>
 8008a6e:	bf00      	nop
 8008a70:	0800d058 	.word	0x0800d058
 8008a74:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8008a76:	49bd      	ldr	r1, [pc, #756]	; (8008d6c <_vfprintf_r+0x1454>)
 8008a78:	f8cb 1000 	str.w	r1, [fp]
 8008a7c:	3201      	adds	r2, #1
 8008a7e:	3401      	adds	r4, #1
 8008a80:	2101      	movs	r1, #1
 8008a82:	2a07      	cmp	r2, #7
 8008a84:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8008a88:	f8cb 1004 	str.w	r1, [fp, #4]
 8008a8c:	dc60      	bgt.n	8008b50 <_vfprintf_r+0x1238>
 8008a8e:	f10b 0b08 	add.w	fp, fp, #8
 8008a92:	b92b      	cbnz	r3, 8008aa0 <_vfprintf_r+0x1188>
 8008a94:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8008a96:	b91a      	cbnz	r2, 8008aa0 <_vfprintf_r+0x1188>
 8008a98:	f018 0f01 	tst.w	r8, #1
 8008a9c:	f43f a98d 	beq.w	8007dba <_vfprintf_r+0x4a2>
 8008aa0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8008aa2:	9916      	ldr	r1, [sp, #88]	; 0x58
 8008aa4:	f8cb 1000 	str.w	r1, [fp]
 8008aa8:	9915      	ldr	r1, [sp, #84]	; 0x54
 8008aaa:	f8cb 1004 	str.w	r1, [fp, #4]
 8008aae:	3201      	adds	r2, #1
 8008ab0:	440c      	add	r4, r1
 8008ab2:	2a07      	cmp	r2, #7
 8008ab4:	942c      	str	r4, [sp, #176]	; 0xb0
 8008ab6:	922b      	str	r2, [sp, #172]	; 0xac
 8008ab8:	f300 8282 	bgt.w	8008fc0 <_vfprintf_r+0x16a8>
 8008abc:	f10b 0b08 	add.w	fp, fp, #8
 8008ac0:	2b00      	cmp	r3, #0
 8008ac2:	f2c0 82e7 	blt.w	8009094 <_vfprintf_r+0x177c>
 8008ac6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8008ac8:	3201      	adds	r2, #1
 8008aca:	441c      	add	r4, r3
 8008acc:	2a07      	cmp	r2, #7
 8008ace:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8008ad2:	e9cb 7300 	strd	r7, r3, [fp]
 8008ad6:	f77f a96e 	ble.w	8007db6 <_vfprintf_r+0x49e>
 8008ada:	e4fe      	b.n	80084da <_vfprintf_r+0xbc2>
 8008adc:	aa2a      	add	r2, sp, #168	; 0xa8
 8008ade:	9907      	ldr	r1, [sp, #28]
 8008ae0:	9803      	ldr	r0, [sp, #12]
 8008ae2:	f7fe f85b 	bl	8006b9c <__sprint_r>
 8008ae6:	2800      	cmp	r0, #0
 8008ae8:	f47f ac8e 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8008aec:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8008af0:	f7ff bbf0 	b.w	80082d4 <_vfprintf_r+0x9bc>
 8008af4:	9a05      	ldr	r2, [sp, #20]
 8008af6:	601a      	str	r2, [r3, #0]
 8008af8:	4657      	mov	r7, sl
 8008afa:	f7ff b9b3 	b.w	8007e64 <_vfprintf_r+0x54c>
 8008afe:	8814      	ldrh	r4, [r2, #0]
 8008b00:	9108      	str	r1, [sp, #32]
 8008b02:	2500      	movs	r5, #0
 8008b04:	2201      	movs	r2, #1
 8008b06:	f7ff b9c8 	b.w	8007e9a <_vfprintf_r+0x582>
 8008b0a:	8814      	ldrh	r4, [r2, #0]
 8008b0c:	9308      	str	r3, [sp, #32]
 8008b0e:	2500      	movs	r5, #0
 8008b10:	f7ff ba14 	b.w	8007f3c <_vfprintf_r+0x624>
 8008b14:	f9b1 4000 	ldrsh.w	r4, [r1]
 8008b18:	9208      	str	r2, [sp, #32]
 8008b1a:	17e5      	asrs	r5, r4, #31
 8008b1c:	4620      	mov	r0, r4
 8008b1e:	4629      	mov	r1, r5
 8008b20:	f7ff b855 	b.w	8007bce <_vfprintf_r+0x2b6>
 8008b24:	8814      	ldrh	r4, [r2, #0]
 8008b26:	9308      	str	r3, [sp, #32]
 8008b28:	2500      	movs	r5, #0
 8008b2a:	f7ff b825 	b.w	8007b78 <_vfprintf_r+0x260>
 8008b2e:	222d      	movs	r2, #45	; 0x2d
 8008b30:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8008b34:	f7ff baa2 	b.w	800807c <_vfprintf_r+0x764>
 8008b38:	aa2a      	add	r2, sp, #168	; 0xa8
 8008b3a:	9907      	ldr	r1, [sp, #28]
 8008b3c:	9803      	ldr	r0, [sp, #12]
 8008b3e:	f7fe f82d 	bl	8006b9c <__sprint_r>
 8008b42:	2800      	cmp	r0, #0
 8008b44:	f47f ac60 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8008b48:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8008b4a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8008b4e:	e534      	b.n	80085ba <_vfprintf_r+0xca2>
 8008b50:	aa2a      	add	r2, sp, #168	; 0xa8
 8008b52:	9907      	ldr	r1, [sp, #28]
 8008b54:	9803      	ldr	r0, [sp, #12]
 8008b56:	f7fe f821 	bl	8006b9c <__sprint_r>
 8008b5a:	2800      	cmp	r0, #0
 8008b5c:	f47f ac54 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8008b60:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8008b62:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8008b64:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8008b68:	e793      	b.n	8008a92 <_vfprintf_r+0x117a>
 8008b6a:	2330      	movs	r3, #48	; 0x30
 8008b6c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8008b70:	2378      	movs	r3, #120	; 0x78
 8008b72:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8008b76:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8008b7a:	f048 0402 	orr.w	r4, r8, #2
 8008b7e:	f300 82b0 	bgt.w	80090e2 <_vfprintf_r+0x17ca>
 8008b82:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8008b86:	930e      	str	r3, [sp, #56]	; 0x38
 8008b88:	f026 0320 	bic.w	r3, r6, #32
 8008b8c:	9304      	str	r3, [sp, #16]
 8008b8e:	2200      	movs	r2, #0
 8008b90:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8008b92:	920a      	str	r2, [sp, #40]	; 0x28
 8008b94:	46a0      	mov	r8, r4
 8008b96:	af3d      	add	r7, sp, #244	; 0xf4
 8008b98:	2b00      	cmp	r3, #0
 8008b9a:	f2c0 81e3 	blt.w	8008f64 <_vfprintf_r+0x164c>
 8008b9e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8008ba2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8008ba6:	2300      	movs	r3, #0
 8008ba8:	930b      	str	r3, [sp, #44]	; 0x2c
 8008baa:	2e61      	cmp	r6, #97	; 0x61
 8008bac:	f000 8255 	beq.w	800905a <_vfprintf_r+0x1742>
 8008bb0:	2e41      	cmp	r6, #65	; 0x41
 8008bb2:	f47f aee3 	bne.w	800897c <_vfprintf_r+0x1064>
 8008bb6:	a824      	add	r0, sp, #144	; 0x90
 8008bb8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8008bbc:	f002 fd32 	bl	800b624 <frexp>
 8008bc0:	2200      	movs	r2, #0
 8008bc2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8008bc6:	ec51 0b10 	vmov	r0, r1, d0
 8008bca:	f7f8 f815 	bl	8000bf8 <__aeabi_dmul>
 8008bce:	2200      	movs	r2, #0
 8008bd0:	2300      	movs	r3, #0
 8008bd2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8008bd6:	f7f8 fa77 	bl	80010c8 <__aeabi_dcmpeq>
 8008bda:	2800      	cmp	r0, #0
 8008bdc:	f040 8305 	bne.w	80091ea <_vfprintf_r+0x18d2>
 8008be0:	4b63      	ldr	r3, [pc, #396]	; (8008d70 <_vfprintf_r+0x1458>)
 8008be2:	9309      	str	r3, [sp, #36]	; 0x24
 8008be4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8008be8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8008bec:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8008bf0:	9721      	str	r7, [sp, #132]	; 0x84
 8008bf2:	46b9      	mov	r9, r7
 8008bf4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8008bf8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8008bfc:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8008c00:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8008c04:	e003      	b.n	8008c0e <_vfprintf_r+0x12f6>
 8008c06:	f7f8 fa5f 	bl	80010c8 <__aeabi_dcmpeq>
 8008c0a:	bb20      	cbnz	r0, 8008c56 <_vfprintf_r+0x133e>
 8008c0c:	46a9      	mov	r9, r5
 8008c0e:	2200      	movs	r2, #0
 8008c10:	4b58      	ldr	r3, [pc, #352]	; (8008d74 <_vfprintf_r+0x145c>)
 8008c12:	4630      	mov	r0, r6
 8008c14:	4639      	mov	r1, r7
 8008c16:	f7f7 ffef 	bl	8000bf8 <__aeabi_dmul>
 8008c1a:	460f      	mov	r7, r1
 8008c1c:	4606      	mov	r6, r0
 8008c1e:	f7f8 fa9b 	bl	8001158 <__aeabi_d2iz>
 8008c22:	4680      	mov	r8, r0
 8008c24:	f7f7 ff7e 	bl	8000b24 <__aeabi_i2d>
 8008c28:	4602      	mov	r2, r0
 8008c2a:	460b      	mov	r3, r1
 8008c2c:	4630      	mov	r0, r6
 8008c2e:	4639      	mov	r1, r7
 8008c30:	f7f7 fe2a 	bl	8000888 <__aeabi_dsub>
 8008c34:	464d      	mov	r5, r9
 8008c36:	f81a c008 	ldrb.w	ip, [sl, r8]
 8008c3a:	f805 cb01 	strb.w	ip, [r5], #1
 8008c3e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8008c42:	46a3      	mov	fp, r4
 8008c44:	4606      	mov	r6, r0
 8008c46:	460f      	mov	r7, r1
 8008c48:	f04f 0200 	mov.w	r2, #0
 8008c4c:	f04f 0300 	mov.w	r3, #0
 8008c50:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8008c54:	d1d7      	bne.n	8008c06 <_vfprintf_r+0x12ee>
 8008c56:	4630      	mov	r0, r6
 8008c58:	4639      	mov	r1, r7
 8008c5a:	2200      	movs	r2, #0
 8008c5c:	4b46      	ldr	r3, [pc, #280]	; (8008d78 <_vfprintf_r+0x1460>)
 8008c5e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8008c62:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8008c64:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8008c68:	4644      	mov	r4, r8
 8008c6a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8008c6e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8008c72:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8008c76:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8008c7a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8008c7c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8008c80:	f7f8 fa4a 	bl	8001118 <__aeabi_dcmpgt>
 8008c84:	2800      	cmp	r0, #0
 8008c86:	f040 8176 	bne.w	8008f76 <_vfprintf_r+0x165e>
 8008c8a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8008c8e:	2200      	movs	r2, #0
 8008c90:	4b39      	ldr	r3, [pc, #228]	; (8008d78 <_vfprintf_r+0x1460>)
 8008c92:	f7f8 fa19 	bl	80010c8 <__aeabi_dcmpeq>
 8008c96:	b110      	cbz	r0, 8008c9e <_vfprintf_r+0x1386>
 8008c98:	07e2      	lsls	r2, r4, #31
 8008c9a:	f100 816c 	bmi.w	8008f76 <_vfprintf_r+0x165e>
 8008c9e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8008ca0:	2b00      	cmp	r3, #0
 8008ca2:	db07      	blt.n	8008cb4 <_vfprintf_r+0x139c>
 8008ca4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8008ca6:	3301      	adds	r3, #1
 8008ca8:	442b      	add	r3, r5
 8008caa:	2230      	movs	r2, #48	; 0x30
 8008cac:	f805 2b01 	strb.w	r2, [r5], #1
 8008cb0:	42ab      	cmp	r3, r5
 8008cb2:	d1fb      	bne.n	8008cac <_vfprintf_r+0x1394>
 8008cb4:	1beb      	subs	r3, r5, r7
 8008cb6:	4640      	mov	r0, r8
 8008cb8:	9310      	str	r3, [sp, #64]	; 0x40
 8008cba:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8008cbe:	e683      	b.n	80089c8 <_vfprintf_r+0x10b0>
 8008cc0:	f8cd 9010 	str.w	r9, [sp, #16]
 8008cc4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8008cc8:	9408      	str	r4, [sp, #32]
 8008cca:	4681      	mov	r9, r0
 8008ccc:	900f      	str	r0, [sp, #60]	; 0x3c
 8008cce:	9014      	str	r0, [sp, #80]	; 0x50
 8008cd0:	9011      	str	r0, [sp, #68]	; 0x44
 8008cd2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8008cd6:	f7fe bfac 	b.w	8007c32 <_vfprintf_r+0x31a>
 8008cda:	aa2a      	add	r2, sp, #168	; 0xa8
 8008cdc:	9907      	ldr	r1, [sp, #28]
 8008cde:	9803      	ldr	r0, [sp, #12]
 8008ce0:	f7fd ff5c 	bl	8006b9c <__sprint_r>
 8008ce4:	2800      	cmp	r0, #0
 8008ce6:	f47f ab8f 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8008cea:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8008cec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8008cee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8008cf2:	e511      	b.n	8008718 <_vfprintf_r+0xe00>
 8008cf4:	4252      	negs	r2, r2
 8008cf6:	9206      	str	r2, [sp, #24]
 8008cf8:	9308      	str	r3, [sp, #32]
 8008cfa:	f7ff b96d 	b.w	8007fd8 <_vfprintf_r+0x6c0>
 8008cfe:	4614      	mov	r4, r2
 8008d00:	4632      	mov	r2, r6
 8008d02:	461e      	mov	r6, r3
 8008d04:	4613      	mov	r3, r2
 8008d06:	462a      	mov	r2, r5
 8008d08:	3201      	adds	r2, #1
 8008d0a:	9209      	str	r2, [sp, #36]	; 0x24
 8008d0c:	f106 0208 	add.w	r2, r6, #8
 8008d10:	e9c6 3900 	strd	r3, r9, [r6]
 8008d14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008d16:	932b      	str	r3, [sp, #172]	; 0xac
 8008d18:	444c      	add	r4, r9
 8008d1a:	2b07      	cmp	r3, #7
 8008d1c:	942c      	str	r4, [sp, #176]	; 0xb0
 8008d1e:	f73f acc3 	bgt.w	80086a8 <_vfprintf_r+0xd90>
 8008d22:	3301      	adds	r3, #1
 8008d24:	9309      	str	r3, [sp, #36]	; 0x24
 8008d26:	f102 0b08 	add.w	fp, r2, #8
 8008d2a:	4616      	mov	r6, r2
 8008d2c:	f7ff bbca 	b.w	80084c4 <_vfprintf_r+0xbac>
 8008d30:	aa2a      	add	r2, sp, #168	; 0xa8
 8008d32:	9907      	ldr	r1, [sp, #28]
 8008d34:	9803      	ldr	r0, [sp, #12]
 8008d36:	f7fd ff31 	bl	8006b9c <__sprint_r>
 8008d3a:	2800      	cmp	r0, #0
 8008d3c:	f47f ab64 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8008d40:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8008d42:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8008d46:	f7ff bade 	b.w	8008306 <_vfprintf_r+0x9ee>
 8008d4a:	464b      	mov	r3, r9
 8008d4c:	2b06      	cmp	r3, #6
 8008d4e:	bf28      	it	cs
 8008d50:	2306      	movcs	r3, #6
 8008d52:	46b9      	mov	r9, r7
 8008d54:	970f      	str	r7, [sp, #60]	; 0x3c
 8008d56:	9714      	str	r7, [sp, #80]	; 0x50
 8008d58:	9711      	str	r7, [sp, #68]	; 0x44
 8008d5a:	970a      	str	r7, [sp, #40]	; 0x28
 8008d5c:	463a      	mov	r2, r7
 8008d5e:	9304      	str	r3, [sp, #16]
 8008d60:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8008d64:	4f05      	ldr	r7, [pc, #20]	; (8008d7c <_vfprintf_r+0x1464>)
 8008d66:	f7fe bf64 	b.w	8007c32 <_vfprintf_r+0x31a>
 8008d6a:	bf00      	nop
 8008d6c:	0800d044 	.word	0x0800d044
 8008d70:	0800cfe4 	.word	0x0800cfe4
 8008d74:	40300000 	.word	0x40300000
 8008d78:	3fe00000 	.word	0x3fe00000
 8008d7c:	0800d00c 	.word	0x0800d00c
 8008d80:	460c      	mov	r4, r1
 8008d82:	4639      	mov	r1, r7
 8008d84:	465f      	mov	r7, fp
 8008d86:	469b      	mov	fp, r3
 8008d88:	460b      	mov	r3, r1
 8008d8a:	3201      	adds	r2, #1
 8008d8c:	442c      	add	r4, r5
 8008d8e:	2a07      	cmp	r2, #7
 8008d90:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8008d94:	e9cb 3500 	strd	r3, r5, [fp]
 8008d98:	f73f aca5 	bgt.w	80086e6 <_vfprintf_r+0xdce>
 8008d9c:	f10b 0b08 	add.w	fp, fp, #8
 8008da0:	e4ac      	b.n	80086fc <_vfprintf_r+0xde4>
 8008da2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8008da4:	1cda      	adds	r2, r3, #3
 8008da6:	db02      	blt.n	8008dae <_vfprintf_r+0x1496>
 8008da8:	4599      	cmp	r9, r3
 8008daa:	f280 80b5 	bge.w	8008f18 <_vfprintf_r+0x1600>
 8008dae:	3e02      	subs	r6, #2
 8008db0:	f026 0320 	bic.w	r3, r6, #32
 8008db4:	9304      	str	r3, [sp, #16]
 8008db6:	e611      	b.n	80089dc <_vfprintf_r+0x10c4>
 8008db8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8008dba:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8008dbe:	465a      	mov	r2, fp
 8008dc0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8008dc4:	18fb      	adds	r3, r7, r3
 8008dc6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8008dca:	970c      	str	r7, [sp, #48]	; 0x30
 8008dcc:	4eaf      	ldr	r6, [pc, #700]	; (800908c <_vfprintf_r+0x1774>)
 8008dce:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8008dd2:	9309      	str	r3, [sp, #36]	; 0x24
 8008dd4:	464f      	mov	r7, r9
 8008dd6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8008dda:	4621      	mov	r1, r4
 8008ddc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8008dde:	2b00      	cmp	r3, #0
 8008de0:	d05b      	beq.n	8008e9a <_vfprintf_r+0x1582>
 8008de2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8008de4:	2b00      	cmp	r3, #0
 8008de6:	d154      	bne.n	8008e92 <_vfprintf_r+0x157a>
 8008de8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8008dea:	3b01      	subs	r3, #1
 8008dec:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8008df0:	9314      	str	r3, [sp, #80]	; 0x50
 8008df2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8008df4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8008df6:	6010      	str	r0, [r2, #0]
 8008df8:	3301      	adds	r3, #1
 8008dfa:	4459      	add	r1, fp
 8008dfc:	2b07      	cmp	r3, #7
 8008dfe:	912c      	str	r1, [sp, #176]	; 0xb0
 8008e00:	f8c2 b004 	str.w	fp, [r2, #4]
 8008e04:	932b      	str	r3, [sp, #172]	; 0xac
 8008e06:	dc68      	bgt.n	8008eda <_vfprintf_r+0x15c2>
 8008e08:	3208      	adds	r2, #8
 8008e0a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8008e0c:	f898 3000 	ldrb.w	r3, [r8]
 8008e10:	1bc5      	subs	r5, r0, r7
 8008e12:	429d      	cmp	r5, r3
 8008e14:	bfa8      	it	ge
 8008e16:	461d      	movge	r5, r3
 8008e18:	2d00      	cmp	r5, #0
 8008e1a:	dd0b      	ble.n	8008e34 <_vfprintf_r+0x151c>
 8008e1c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8008e1e:	6017      	str	r7, [r2, #0]
 8008e20:	3301      	adds	r3, #1
 8008e22:	4429      	add	r1, r5
 8008e24:	2b07      	cmp	r3, #7
 8008e26:	912c      	str	r1, [sp, #176]	; 0xb0
 8008e28:	6055      	str	r5, [r2, #4]
 8008e2a:	932b      	str	r3, [sp, #172]	; 0xac
 8008e2c:	dc5e      	bgt.n	8008eec <_vfprintf_r+0x15d4>
 8008e2e:	f898 3000 	ldrb.w	r3, [r8]
 8008e32:	3208      	adds	r2, #8
 8008e34:	2d00      	cmp	r5, #0
 8008e36:	bfac      	ite	ge
 8008e38:	1b5d      	subge	r5, r3, r5
 8008e3a:	461d      	movlt	r5, r3
 8008e3c:	2d00      	cmp	r5, #0
 8008e3e:	dd26      	ble.n	8008e8e <_vfprintf_r+0x1576>
 8008e40:	2d10      	cmp	r5, #16
 8008e42:	982b      	ldr	r0, [sp, #172]	; 0xac
 8008e44:	dd3c      	ble.n	8008ec0 <_vfprintf_r+0x15a8>
 8008e46:	2410      	movs	r4, #16
 8008e48:	e003      	b.n	8008e52 <_vfprintf_r+0x153a>
 8008e4a:	3208      	adds	r2, #8
 8008e4c:	3d10      	subs	r5, #16
 8008e4e:	2d10      	cmp	r5, #16
 8008e50:	dd36      	ble.n	8008ec0 <_vfprintf_r+0x15a8>
 8008e52:	3001      	adds	r0, #1
 8008e54:	3110      	adds	r1, #16
 8008e56:	2807      	cmp	r0, #7
 8008e58:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8008e5c:	e9c2 6400 	strd	r6, r4, [r2]
 8008e60:	ddf3      	ble.n	8008e4a <_vfprintf_r+0x1532>
 8008e62:	aa2a      	add	r2, sp, #168	; 0xa8
 8008e64:	4651      	mov	r1, sl
 8008e66:	4648      	mov	r0, r9
 8008e68:	f7fd fe98 	bl	8006b9c <__sprint_r>
 8008e6c:	2800      	cmp	r0, #0
 8008e6e:	d150      	bne.n	8008f12 <_vfprintf_r+0x15fa>
 8008e70:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8008e74:	aa2d      	add	r2, sp, #180	; 0xb4
 8008e76:	e7e9      	b.n	8008e4c <_vfprintf_r+0x1534>
 8008e78:	aa2a      	add	r2, sp, #168	; 0xa8
 8008e7a:	4651      	mov	r1, sl
 8008e7c:	4648      	mov	r0, r9
 8008e7e:	f7fd fe8d 	bl	8006b9c <__sprint_r>
 8008e82:	2800      	cmp	r0, #0
 8008e84:	d145      	bne.n	8008f12 <_vfprintf_r+0x15fa>
 8008e86:	f898 3000 	ldrb.w	r3, [r8]
 8008e8a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8008e8c:	aa2d      	add	r2, sp, #180	; 0xb4
 8008e8e:	441f      	add	r7, r3
 8008e90:	e7a4      	b.n	8008ddc <_vfprintf_r+0x14c4>
 8008e92:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8008e94:	3b01      	subs	r3, #1
 8008e96:	930f      	str	r3, [sp, #60]	; 0x3c
 8008e98:	e7ab      	b.n	8008df2 <_vfprintf_r+0x14da>
 8008e9a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8008e9c:	2b00      	cmp	r3, #0
 8008e9e:	d1f8      	bne.n	8008e92 <_vfprintf_r+0x157a>
 8008ea0:	46b9      	mov	r9, r7
 8008ea2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8008ea4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8008ea6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8008eaa:	18fb      	adds	r3, r7, r3
 8008eac:	4599      	cmp	r9, r3
 8008eae:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8008eb2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8008eb6:	4693      	mov	fp, r2
 8008eb8:	460c      	mov	r4, r1
 8008eba:	bf28      	it	cs
 8008ebc:	4699      	movcs	r9, r3
 8008ebe:	e424      	b.n	800870a <_vfprintf_r+0xdf2>
 8008ec0:	3001      	adds	r0, #1
 8008ec2:	4429      	add	r1, r5
 8008ec4:	2807      	cmp	r0, #7
 8008ec6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8008eca:	e9c2 6500 	strd	r6, r5, [r2]
 8008ece:	dcd3      	bgt.n	8008e78 <_vfprintf_r+0x1560>
 8008ed0:	f898 3000 	ldrb.w	r3, [r8]
 8008ed4:	3208      	adds	r2, #8
 8008ed6:	441f      	add	r7, r3
 8008ed8:	e780      	b.n	8008ddc <_vfprintf_r+0x14c4>
 8008eda:	aa2a      	add	r2, sp, #168	; 0xa8
 8008edc:	4651      	mov	r1, sl
 8008ede:	4648      	mov	r0, r9
 8008ee0:	f7fd fe5c 	bl	8006b9c <__sprint_r>
 8008ee4:	b9a8      	cbnz	r0, 8008f12 <_vfprintf_r+0x15fa>
 8008ee6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8008ee8:	aa2d      	add	r2, sp, #180	; 0xb4
 8008eea:	e78e      	b.n	8008e0a <_vfprintf_r+0x14f2>
 8008eec:	aa2a      	add	r2, sp, #168	; 0xa8
 8008eee:	4651      	mov	r1, sl
 8008ef0:	4648      	mov	r0, r9
 8008ef2:	f7fd fe53 	bl	8006b9c <__sprint_r>
 8008ef6:	b960      	cbnz	r0, 8008f12 <_vfprintf_r+0x15fa>
 8008ef8:	f898 3000 	ldrb.w	r3, [r8]
 8008efc:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8008efe:	aa2d      	add	r2, sp, #180	; 0xb4
 8008f00:	e798      	b.n	8008e34 <_vfprintf_r+0x151c>
 8008f02:	4638      	mov	r0, r7
 8008f04:	f7f7 fbfc 	bl	8000700 <strlen>
 8008f08:	46a9      	mov	r9, r5
 8008f0a:	4603      	mov	r3, r0
 8008f0c:	9009      	str	r0, [sp, #36]	; 0x24
 8008f0e:	f7ff b8f4 	b.w	80080fa <_vfprintf_r+0x7e2>
 8008f12:	46d1      	mov	r9, sl
 8008f14:	f7ff ba7a 	b.w	800840c <_vfprintf_r+0xaf4>
 8008f18:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8008f1a:	4619      	mov	r1, r3
 8008f1c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8008f1e:	4299      	cmp	r1, r3
 8008f20:	f300 8082 	bgt.w	8009028 <_vfprintf_r+0x1710>
 8008f24:	07c4      	lsls	r4, r0, #31
 8008f26:	f140 816b 	bpl.w	8009200 <_vfprintf_r+0x18e8>
 8008f2a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8008f2c:	4413      	add	r3, r2
 8008f2e:	9309      	str	r3, [sp, #36]	; 0x24
 8008f30:	0541      	lsls	r1, r0, #21
 8008f32:	d503      	bpl.n	8008f3c <_vfprintf_r+0x1624>
 8008f34:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8008f36:	2b00      	cmp	r3, #0
 8008f38:	f300 80e6 	bgt.w	8009108 <_vfprintf_r+0x17f0>
 8008f3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008f3e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8008f42:	9304      	str	r3, [sp, #16]
 8008f44:	2667      	movs	r6, #103	; 0x67
 8008f46:	2300      	movs	r3, #0
 8008f48:	930f      	str	r3, [sp, #60]	; 0x3c
 8008f4a:	9314      	str	r3, [sp, #80]	; 0x50
 8008f4c:	e586      	b.n	8008a5c <_vfprintf_r+0x1144>
 8008f4e:	222d      	movs	r2, #45	; 0x2d
 8008f50:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8008f54:	f04f 0900 	mov.w	r9, #0
 8008f58:	f7fe be6c 	b.w	8007c34 <_vfprintf_r+0x31c>
 8008f5c:	46a1      	mov	r9, r4
 8008f5e:	f7ff ba55 	b.w	800840c <_vfprintf_r+0xaf4>
 8008f62:	900a      	str	r0, [sp, #40]	; 0x28
 8008f64:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8008f68:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8008f6c:	931f      	str	r3, [sp, #124]	; 0x7c
 8008f6e:	232d      	movs	r3, #45	; 0x2d
 8008f70:	911e      	str	r1, [sp, #120]	; 0x78
 8008f72:	930b      	str	r3, [sp, #44]	; 0x2c
 8008f74:	e619      	b.n	8008baa <_vfprintf_r+0x1292>
 8008f76:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8008f78:	9328      	str	r3, [sp, #160]	; 0xa0
 8008f7a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008f7c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8008f80:	7bd9      	ldrb	r1, [r3, #15]
 8008f82:	4291      	cmp	r1, r2
 8008f84:	462b      	mov	r3, r5
 8008f86:	d109      	bne.n	8008f9c <_vfprintf_r+0x1684>
 8008f88:	2030      	movs	r0, #48	; 0x30
 8008f8a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8008f8e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8008f90:	1e5a      	subs	r2, r3, #1
 8008f92:	9228      	str	r2, [sp, #160]	; 0xa0
 8008f94:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8008f98:	4291      	cmp	r1, r2
 8008f9a:	d0f6      	beq.n	8008f8a <_vfprintf_r+0x1672>
 8008f9c:	2a39      	cmp	r2, #57	; 0x39
 8008f9e:	bf0b      	itete	eq
 8008fa0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8008fa2:	3201      	addne	r2, #1
 8008fa4:	7a92      	ldrbeq	r2, [r2, #10]
 8008fa6:	b2d2      	uxtbne	r2, r2
 8008fa8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8008fac:	e682      	b.n	8008cb4 <_vfprintf_r+0x139c>
 8008fae:	f418 7f00 	tst.w	r8, #512	; 0x200
 8008fb2:	f43f ad9f 	beq.w	8008af4 <_vfprintf_r+0x11dc>
 8008fb6:	9a05      	ldr	r2, [sp, #20]
 8008fb8:	701a      	strb	r2, [r3, #0]
 8008fba:	4657      	mov	r7, sl
 8008fbc:	f7fe bf52 	b.w	8007e64 <_vfprintf_r+0x54c>
 8008fc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8008fc2:	9907      	ldr	r1, [sp, #28]
 8008fc4:	9803      	ldr	r0, [sp, #12]
 8008fc6:	f7fd fde9 	bl	8006b9c <__sprint_r>
 8008fca:	2800      	cmp	r0, #0
 8008fcc:	f47f aa1c 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8008fd0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8008fd2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8008fd6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8008fda:	e571      	b.n	8008ac0 <_vfprintf_r+0x11a8>
 8008fdc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8008fde:	2b00      	cmp	r3, #0
 8008fe0:	f340 8164 	ble.w	80092ac <_vfprintf_r+0x1994>
 8008fe4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8008fe6:	f1b9 0f00 	cmp.w	r9, #0
 8008fea:	f040 8103 	bne.w	80091f4 <_vfprintf_r+0x18dc>
 8008fee:	07c6      	lsls	r6, r0, #31
 8008ff0:	f100 8100 	bmi.w	80091f4 <_vfprintf_r+0x18dc>
 8008ff4:	9309      	str	r3, [sp, #36]	; 0x24
 8008ff6:	2666      	movs	r6, #102	; 0x66
 8008ff8:	0543      	lsls	r3, r0, #21
 8008ffa:	f100 8086 	bmi.w	800910a <_vfprintf_r+0x17f2>
 8008ffe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8009000:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8009004:	9304      	str	r3, [sp, #16]
 8009006:	e79e      	b.n	8008f46 <_vfprintf_r+0x162e>
 8009008:	aa2a      	add	r2, sp, #168	; 0xa8
 800900a:	9907      	ldr	r1, [sp, #28]
 800900c:	9803      	ldr	r0, [sp, #12]
 800900e:	f7fd fdc5 	bl	8006b9c <__sprint_r>
 8009012:	2800      	cmp	r0, #0
 8009014:	f47f a9f8 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8009018:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800901a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800901c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800901e:	1ad3      	subs	r3, r2, r3
 8009020:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8009024:	f7ff bb90 	b.w	8008748 <_vfprintf_r+0xe30>
 8009028:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800902a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800902c:	4413      	add	r3, r2
 800902e:	9309      	str	r3, [sp, #36]	; 0x24
 8009030:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8009032:	2b00      	cmp	r3, #0
 8009034:	f340 8149 	ble.w	80092ca <_vfprintf_r+0x19b2>
 8009038:	2667      	movs	r6, #103	; 0x67
 800903a:	e7dd      	b.n	8008ff8 <_vfprintf_r+0x16e0>
 800903c:	2330      	movs	r3, #48	; 0x30
 800903e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8009042:	2358      	movs	r3, #88	; 0x58
 8009044:	e595      	b.n	8008b72 <_vfprintf_r+0x125a>
 8009046:	9803      	ldr	r0, [sp, #12]
 8009048:	aa2a      	add	r2, sp, #168	; 0xa8
 800904a:	4649      	mov	r1, r9
 800904c:	f7fd fda6 	bl	8006b9c <__sprint_r>
 8009050:	2800      	cmp	r0, #0
 8009052:	f47f a9e0 	bne.w	8008416 <_vfprintf_r+0xafe>
 8009056:	f7fe bf0f 	b.w	8007e78 <_vfprintf_r+0x560>
 800905a:	a824      	add	r0, sp, #144	; 0x90
 800905c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8009060:	f002 fae0 	bl	800b624 <frexp>
 8009064:	2200      	movs	r2, #0
 8009066:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800906a:	ec51 0b10 	vmov	r0, r1, d0
 800906e:	f7f7 fdc3 	bl	8000bf8 <__aeabi_dmul>
 8009072:	2200      	movs	r2, #0
 8009074:	2300      	movs	r3, #0
 8009076:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800907a:	f7f8 f825 	bl	80010c8 <__aeabi_dcmpeq>
 800907e:	b108      	cbz	r0, 8009084 <_vfprintf_r+0x176c>
 8009080:	2301      	movs	r3, #1
 8009082:	9324      	str	r3, [sp, #144]	; 0x90
 8009084:	4b02      	ldr	r3, [pc, #8]	; (8009090 <_vfprintf_r+0x1778>)
 8009086:	9309      	str	r3, [sp, #36]	; 0x24
 8009088:	e5ac      	b.n	8008be4 <_vfprintf_r+0x12cc>
 800908a:	bf00      	nop
 800908c:	0800d058 	.word	0x0800d058
 8009090:	0800cff8 	.word	0x0800cff8
 8009094:	425d      	negs	r5, r3
 8009096:	3310      	adds	r3, #16
 8009098:	4bb9      	ldr	r3, [pc, #740]	; (8009380 <_vfprintf_r+0x1a68>)
 800909a:	f280 8097 	bge.w	80091cc <_vfprintf_r+0x18b4>
 800909e:	4619      	mov	r1, r3
 80090a0:	2610      	movs	r6, #16
 80090a2:	4623      	mov	r3, r4
 80090a4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80090a8:	460c      	mov	r4, r1
 80090aa:	e005      	b.n	80090b8 <_vfprintf_r+0x17a0>
 80090ac:	f10b 0b08 	add.w	fp, fp, #8
 80090b0:	3d10      	subs	r5, #16
 80090b2:	2d10      	cmp	r5, #16
 80090b4:	f340 8087 	ble.w	80091c6 <_vfprintf_r+0x18ae>
 80090b8:	3201      	adds	r2, #1
 80090ba:	3310      	adds	r3, #16
 80090bc:	2a07      	cmp	r2, #7
 80090be:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80090c2:	e9cb 4600 	strd	r4, r6, [fp]
 80090c6:	ddf1      	ble.n	80090ac <_vfprintf_r+0x1794>
 80090c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80090ca:	9907      	ldr	r1, [sp, #28]
 80090cc:	4648      	mov	r0, r9
 80090ce:	f7fd fd65 	bl	8006b9c <__sprint_r>
 80090d2:	2800      	cmp	r0, #0
 80090d4:	f47f a998 	bne.w	8008408 <_vfprintf_r+0xaf0>
 80090d8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80090dc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80090e0:	e7e6      	b.n	80090b0 <_vfprintf_r+0x1798>
 80090e2:	f109 0101 	add.w	r1, r9, #1
 80090e6:	9803      	ldr	r0, [sp, #12]
 80090e8:	f7fc fff8 	bl	80060dc <_malloc_r>
 80090ec:	4607      	mov	r7, r0
 80090ee:	2800      	cmp	r0, #0
 80090f0:	f000 813b 	beq.w	800936a <_vfprintf_r+0x1a52>
 80090f4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80090f8:	930e      	str	r3, [sp, #56]	; 0x38
 80090fa:	f026 0320 	bic.w	r3, r6, #32
 80090fe:	9304      	str	r3, [sp, #16]
 8009100:	46a0      	mov	r8, r4
 8009102:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8009104:	900a      	str	r0, [sp, #40]	; 0x28
 8009106:	e547      	b.n	8008b98 <_vfprintf_r+0x1280>
 8009108:	2667      	movs	r6, #103	; 0x67
 800910a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800910c:	2200      	movs	r2, #0
 800910e:	920f      	str	r2, [sp, #60]	; 0x3c
 8009110:	9214      	str	r2, [sp, #80]	; 0x50
 8009112:	7803      	ldrb	r3, [r0, #0]
 8009114:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8009116:	2bff      	cmp	r3, #255	; 0xff
 8009118:	d00c      	beq.n	8009134 <_vfprintf_r+0x181c>
 800911a:	4293      	cmp	r3, r2
 800911c:	da0a      	bge.n	8009134 <_vfprintf_r+0x181c>
 800911e:	7841      	ldrb	r1, [r0, #1]
 8009120:	1ad2      	subs	r2, r2, r3
 8009122:	b1a9      	cbz	r1, 8009150 <_vfprintf_r+0x1838>
 8009124:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8009126:	3301      	adds	r3, #1
 8009128:	9314      	str	r3, [sp, #80]	; 0x50
 800912a:	460b      	mov	r3, r1
 800912c:	2bff      	cmp	r3, #255	; 0xff
 800912e:	f100 0001 	add.w	r0, r0, #1
 8009132:	d1f2      	bne.n	800911a <_vfprintf_r+0x1802>
 8009134:	9211      	str	r2, [sp, #68]	; 0x44
 8009136:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8009138:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800913a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800913c:	901a      	str	r0, [sp, #104]	; 0x68
 800913e:	4413      	add	r3, r2
 8009140:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8009142:	fb02 1303 	mla	r3, r2, r3, r1
 8009146:	9309      	str	r3, [sp, #36]	; 0x24
 8009148:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800914c:	9304      	str	r3, [sp, #16]
 800914e:	e485      	b.n	8008a5c <_vfprintf_r+0x1144>
 8009150:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8009152:	3101      	adds	r1, #1
 8009154:	910f      	str	r1, [sp, #60]	; 0x3c
 8009156:	e7de      	b.n	8009116 <_vfprintf_r+0x17fe>
 8009158:	aa28      	add	r2, sp, #160	; 0xa0
 800915a:	ab25      	add	r3, sp, #148	; 0x94
 800915c:	e9cd 3200 	strd	r3, r2, [sp]
 8009160:	2103      	movs	r1, #3
 8009162:	ab24      	add	r3, sp, #144	; 0x90
 8009164:	464a      	mov	r2, r9
 8009166:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800916a:	9803      	ldr	r0, [sp, #12]
 800916c:	f000 fa64 	bl	8009638 <_dtoa_r>
 8009170:	464d      	mov	r5, r9
 8009172:	4607      	mov	r7, r0
 8009174:	eb00 0409 	add.w	r4, r0, r9
 8009178:	783b      	ldrb	r3, [r7, #0]
 800917a:	2b30      	cmp	r3, #48	; 0x30
 800917c:	f000 80be 	beq.w	80092fc <_vfprintf_r+0x19e4>
 8009180:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8009182:	442c      	add	r4, r5
 8009184:	2200      	movs	r2, #0
 8009186:	2300      	movs	r3, #0
 8009188:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800918c:	f7f7 ff9c 	bl	80010c8 <__aeabi_dcmpeq>
 8009190:	b108      	cbz	r0, 8009196 <_vfprintf_r+0x187e>
 8009192:	4623      	mov	r3, r4
 8009194:	e413      	b.n	80089be <_vfprintf_r+0x10a6>
 8009196:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8009198:	42a3      	cmp	r3, r4
 800919a:	f4bf ac10 	bcs.w	80089be <_vfprintf_r+0x10a6>
 800919e:	2130      	movs	r1, #48	; 0x30
 80091a0:	1c5a      	adds	r2, r3, #1
 80091a2:	9228      	str	r2, [sp, #160]	; 0xa0
 80091a4:	7019      	strb	r1, [r3, #0]
 80091a6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80091a8:	429c      	cmp	r4, r3
 80091aa:	d8f9      	bhi.n	80091a0 <_vfprintf_r+0x1888>
 80091ac:	e407      	b.n	80089be <_vfprintf_r+0x10a6>
 80091ae:	197c      	adds	r4, r7, r5
 80091b0:	e7e8      	b.n	8009184 <_vfprintf_r+0x186c>
 80091b2:	f1b9 0f00 	cmp.w	r9, #0
 80091b6:	f000 8092 	beq.w	80092de <_vfprintf_r+0x19c6>
 80091ba:	900a      	str	r0, [sp, #40]	; 0x28
 80091bc:	e4ec      	b.n	8008b98 <_vfprintf_r+0x1280>
 80091be:	900a      	str	r0, [sp, #40]	; 0x28
 80091c0:	f04f 0906 	mov.w	r9, #6
 80091c4:	e4e8      	b.n	8008b98 <_vfprintf_r+0x1280>
 80091c6:	4621      	mov	r1, r4
 80091c8:	461c      	mov	r4, r3
 80091ca:	460b      	mov	r3, r1
 80091cc:	3201      	adds	r2, #1
 80091ce:	442c      	add	r4, r5
 80091d0:	2a07      	cmp	r2, #7
 80091d2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80091d6:	e9cb 3500 	strd	r3, r5, [fp]
 80091da:	f300 80a9 	bgt.w	8009330 <_vfprintf_r+0x1a18>
 80091de:	f10b 0b08 	add.w	fp, fp, #8
 80091e2:	e470      	b.n	8008ac6 <_vfprintf_r+0x11ae>
 80091e4:	469a      	mov	sl, r3
 80091e6:	f7ff bb37 	b.w	8008858 <_vfprintf_r+0xf40>
 80091ea:	2301      	movs	r3, #1
 80091ec:	9324      	str	r3, [sp, #144]	; 0x90
 80091ee:	4b65      	ldr	r3, [pc, #404]	; (8009384 <_vfprintf_r+0x1a6c>)
 80091f0:	9309      	str	r3, [sp, #36]	; 0x24
 80091f2:	e4f7      	b.n	8008be4 <_vfprintf_r+0x12cc>
 80091f4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80091f6:	4413      	add	r3, r2
 80091f8:	444b      	add	r3, r9
 80091fa:	9309      	str	r3, [sp, #36]	; 0x24
 80091fc:	2666      	movs	r6, #102	; 0x66
 80091fe:	e6fb      	b.n	8008ff8 <_vfprintf_r+0x16e0>
 8009200:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8009202:	9309      	str	r3, [sp, #36]	; 0x24
 8009204:	e694      	b.n	8008f30 <_vfprintf_r+0x1618>
 8009206:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800920a:	4664      	mov	r4, ip
 800920c:	4d5e      	ldr	r5, [pc, #376]	; (8009388 <_vfprintf_r+0x1a70>)
 800920e:	e000      	b.n	8009212 <_vfprintf_r+0x18fa>
 8009210:	4614      	mov	r4, r2
 8009212:	fba5 1203 	umull	r1, r2, r5, r3
 8009216:	08d2      	lsrs	r2, r2, #3
 8009218:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800921c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8009220:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8009224:	4613      	mov	r3, r2
 8009226:	2b09      	cmp	r3, #9
 8009228:	f804 1c01 	strb.w	r1, [r4, #-1]
 800922c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8009230:	dcee      	bgt.n	8009210 <_vfprintf_r+0x18f8>
 8009232:	3330      	adds	r3, #48	; 0x30
 8009234:	3c02      	subs	r4, #2
 8009236:	b2db      	uxtb	r3, r3
 8009238:	45a4      	cmp	ip, r4
 800923a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800923e:	f240 8090 	bls.w	8009362 <_vfprintf_r+0x1a4a>
 8009242:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8009246:	4611      	mov	r1, r2
 8009248:	e001      	b.n	800924e <_vfprintf_r+0x1936>
 800924a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800924e:	f804 3b01 	strb.w	r3, [r4], #1
 8009252:	458c      	cmp	ip, r1
 8009254:	d1f9      	bne.n	800924a <_vfprintf_r+0x1932>
 8009256:	ab2a      	add	r3, sp, #168	; 0xa8
 8009258:	1a9b      	subs	r3, r3, r2
 800925a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800925e:	4413      	add	r3, r2
 8009260:	f7ff bbe3 	b.w	8008a2a <_vfprintf_r+0x1112>
 8009264:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8009266:	4f49      	ldr	r7, [pc, #292]	; (800938c <_vfprintf_r+0x1a74>)
 8009268:	2b00      	cmp	r3, #0
 800926a:	bfb6      	itet	lt
 800926c:	222d      	movlt	r2, #45	; 0x2d
 800926e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8009272:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8009276:	4b46      	ldr	r3, [pc, #280]	; (8009390 <_vfprintf_r+0x1a78>)
 8009278:	f7fe bf02 	b.w	8008080 <_vfprintf_r+0x768>
 800927c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8009280:	f7ff b8c9 	b.w	8008416 <_vfprintf_r+0xafe>
 8009284:	aa28      	add	r2, sp, #160	; 0xa0
 8009286:	ab25      	add	r3, sp, #148	; 0x94
 8009288:	e9cd 3200 	strd	r3, r2, [sp]
 800928c:	2103      	movs	r1, #3
 800928e:	ab24      	add	r3, sp, #144	; 0x90
 8009290:	464a      	mov	r2, r9
 8009292:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8009296:	9803      	ldr	r0, [sp, #12]
 8009298:	f000 f9ce 	bl	8009638 <_dtoa_r>
 800929c:	464d      	mov	r5, r9
 800929e:	4607      	mov	r7, r0
 80092a0:	2e46      	cmp	r6, #70	; 0x46
 80092a2:	eb07 0405 	add.w	r4, r7, r5
 80092a6:	f43f af67 	beq.w	8009178 <_vfprintf_r+0x1860>
 80092aa:	e76b      	b.n	8009184 <_vfprintf_r+0x186c>
 80092ac:	f1b9 0f00 	cmp.w	r9, #0
 80092b0:	d131      	bne.n	8009316 <_vfprintf_r+0x19fe>
 80092b2:	07c5      	lsls	r5, r0, #31
 80092b4:	d42f      	bmi.n	8009316 <_vfprintf_r+0x19fe>
 80092b6:	2301      	movs	r3, #1
 80092b8:	9304      	str	r3, [sp, #16]
 80092ba:	9309      	str	r3, [sp, #36]	; 0x24
 80092bc:	2666      	movs	r6, #102	; 0x66
 80092be:	e642      	b.n	8008f46 <_vfprintf_r+0x162e>
 80092c0:	07c3      	lsls	r3, r0, #31
 80092c2:	f57f abbf 	bpl.w	8008a44 <_vfprintf_r+0x112c>
 80092c6:	f7ff bbb9 	b.w	8008a3c <_vfprintf_r+0x1124>
 80092ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80092cc:	f1c3 0301 	rsb	r3, r3, #1
 80092d0:	441a      	add	r2, r3
 80092d2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80092d6:	9209      	str	r2, [sp, #36]	; 0x24
 80092d8:	9304      	str	r3, [sp, #16]
 80092da:	2667      	movs	r6, #103	; 0x67
 80092dc:	e633      	b.n	8008f46 <_vfprintf_r+0x162e>
 80092de:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80092e2:	f04f 0901 	mov.w	r9, #1
 80092e6:	e457      	b.n	8008b98 <_vfprintf_r+0x1280>
 80092e8:	465a      	mov	r2, fp
 80092ea:	e511      	b.n	8008d10 <_vfprintf_r+0x13f8>
 80092ec:	2e47      	cmp	r6, #71	; 0x47
 80092ee:	f47f af5e 	bne.w	80091ae <_vfprintf_r+0x1896>
 80092f2:	f018 0f01 	tst.w	r8, #1
 80092f6:	f43f ab61 	beq.w	80089bc <_vfprintf_r+0x10a4>
 80092fa:	e7d1      	b.n	80092a0 <_vfprintf_r+0x1988>
 80092fc:	2200      	movs	r2, #0
 80092fe:	2300      	movs	r3, #0
 8009300:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8009304:	f7f7 fee0 	bl	80010c8 <__aeabi_dcmpeq>
 8009308:	2800      	cmp	r0, #0
 800930a:	f47f af39 	bne.w	8009180 <_vfprintf_r+0x1868>
 800930e:	f1c5 0501 	rsb	r5, r5, #1
 8009312:	9524      	str	r5, [sp, #144]	; 0x90
 8009314:	e735      	b.n	8009182 <_vfprintf_r+0x186a>
 8009316:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8009318:	3301      	adds	r3, #1
 800931a:	444b      	add	r3, r9
 800931c:	9309      	str	r3, [sp, #36]	; 0x24
 800931e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8009322:	9304      	str	r3, [sp, #16]
 8009324:	2666      	movs	r6, #102	; 0x66
 8009326:	e60e      	b.n	8008f46 <_vfprintf_r+0x162e>
 8009328:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800932c:	f7ff bb7a 	b.w	8008a24 <_vfprintf_r+0x110c>
 8009330:	aa2a      	add	r2, sp, #168	; 0xa8
 8009332:	9907      	ldr	r1, [sp, #28]
 8009334:	9803      	ldr	r0, [sp, #12]
 8009336:	f7fd fc31 	bl	8006b9c <__sprint_r>
 800933a:	2800      	cmp	r0, #0
 800933c:	f47f a864 	bne.w	8008408 <_vfprintf_r+0xaf0>
 8009340:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8009344:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8009348:	f7ff bbbd 	b.w	8008ac6 <_vfprintf_r+0x11ae>
 800934c:	9908      	ldr	r1, [sp, #32]
 800934e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8009352:	680b      	ldr	r3, [r1, #0]
 8009354:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8009358:	1d0b      	adds	r3, r1, #4
 800935a:	4692      	mov	sl, r2
 800935c:	9308      	str	r3, [sp, #32]
 800935e:	f7fe bb59 	b.w	8007a14 <_vfprintf_r+0xfc>
 8009362:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8009366:	f7ff bb60 	b.w	8008a2a <_vfprintf_r+0x1112>
 800936a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800936e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8009372:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009376:	f8a9 300c 	strh.w	r3, [r9, #12]
 800937a:	f7ff b84c 	b.w	8008416 <_vfprintf_r+0xafe>
 800937e:	bf00      	nop
 8009380:	0800d058 	.word	0x0800d058
 8009384:	0800cfe4 	.word	0x0800cfe4
 8009388:	cccccccd 	.word	0xcccccccd
 800938c:	0800d040 	.word	0x0800d040
 8009390:	0800d03c 	.word	0x0800d03c

08009394 <__sbprintf>:
 8009394:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8009398:	460c      	mov	r4, r1
 800939a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800939e:	8989      	ldrh	r1, [r1, #12]
 80093a0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80093a2:	89e5      	ldrh	r5, [r4, #14]
 80093a4:	9619      	str	r6, [sp, #100]	; 0x64
 80093a6:	f021 0102 	bic.w	r1, r1, #2
 80093aa:	4606      	mov	r6, r0
 80093ac:	69e0      	ldr	r0, [r4, #28]
 80093ae:	f8ad 100c 	strh.w	r1, [sp, #12]
 80093b2:	4617      	mov	r7, r2
 80093b4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80093b8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80093ba:	f8ad 500e 	strh.w	r5, [sp, #14]
 80093be:	4698      	mov	r8, r3
 80093c0:	ad1a      	add	r5, sp, #104	; 0x68
 80093c2:	2300      	movs	r3, #0
 80093c4:	9007      	str	r0, [sp, #28]
 80093c6:	a816      	add	r0, sp, #88	; 0x58
 80093c8:	9209      	str	r2, [sp, #36]	; 0x24
 80093ca:	9306      	str	r3, [sp, #24]
 80093cc:	9500      	str	r5, [sp, #0]
 80093ce:	9504      	str	r5, [sp, #16]
 80093d0:	9102      	str	r1, [sp, #8]
 80093d2:	9105      	str	r1, [sp, #20]
 80093d4:	f001 fd22 	bl	800ae1c <__retarget_lock_init_recursive>
 80093d8:	4643      	mov	r3, r8
 80093da:	463a      	mov	r2, r7
 80093dc:	4669      	mov	r1, sp
 80093de:	4630      	mov	r0, r6
 80093e0:	f7fe fa9a 	bl	8007918 <_vfprintf_r>
 80093e4:	1e05      	subs	r5, r0, #0
 80093e6:	db07      	blt.n	80093f8 <__sbprintf+0x64>
 80093e8:	4630      	mov	r0, r6
 80093ea:	4669      	mov	r1, sp
 80093ec:	f001 f8de 	bl	800a5ac <_fflush_r>
 80093f0:	2800      	cmp	r0, #0
 80093f2:	bf18      	it	ne
 80093f4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80093f8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80093fc:	065b      	lsls	r3, r3, #25
 80093fe:	d503      	bpl.n	8009408 <__sbprintf+0x74>
 8009400:	89a3      	ldrh	r3, [r4, #12]
 8009402:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009406:	81a3      	strh	r3, [r4, #12]
 8009408:	9816      	ldr	r0, [sp, #88]	; 0x58
 800940a:	f001 fd09 	bl	800ae20 <__retarget_lock_close_recursive>
 800940e:	4628      	mov	r0, r5
 8009410:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8009414:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08009418 <__swsetup_r>:
 8009418:	b538      	push	{r3, r4, r5, lr}
 800941a:	4b31      	ldr	r3, [pc, #196]	; (80094e0 <__swsetup_r+0xc8>)
 800941c:	681b      	ldr	r3, [r3, #0]
 800941e:	4605      	mov	r5, r0
 8009420:	460c      	mov	r4, r1
 8009422:	b113      	cbz	r3, 800942a <__swsetup_r+0x12>
 8009424:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8009426:	2a00      	cmp	r2, #0
 8009428:	d03a      	beq.n	80094a0 <__swsetup_r+0x88>
 800942a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800942e:	b293      	uxth	r3, r2
 8009430:	0718      	lsls	r0, r3, #28
 8009432:	d50c      	bpl.n	800944e <__swsetup_r+0x36>
 8009434:	6920      	ldr	r0, [r4, #16]
 8009436:	b1a8      	cbz	r0, 8009464 <__swsetup_r+0x4c>
 8009438:	f013 0201 	ands.w	r2, r3, #1
 800943c:	d020      	beq.n	8009480 <__swsetup_r+0x68>
 800943e:	6963      	ldr	r3, [r4, #20]
 8009440:	2200      	movs	r2, #0
 8009442:	425b      	negs	r3, r3
 8009444:	61a3      	str	r3, [r4, #24]
 8009446:	60a2      	str	r2, [r4, #8]
 8009448:	b300      	cbz	r0, 800948c <__swsetup_r+0x74>
 800944a:	2000      	movs	r0, #0
 800944c:	bd38      	pop	{r3, r4, r5, pc}
 800944e:	06d9      	lsls	r1, r3, #27
 8009450:	d53e      	bpl.n	80094d0 <__swsetup_r+0xb8>
 8009452:	0758      	lsls	r0, r3, #29
 8009454:	d428      	bmi.n	80094a8 <__swsetup_r+0x90>
 8009456:	6920      	ldr	r0, [r4, #16]
 8009458:	f042 0308 	orr.w	r3, r2, #8
 800945c:	81a3      	strh	r3, [r4, #12]
 800945e:	b29b      	uxth	r3, r3
 8009460:	2800      	cmp	r0, #0
 8009462:	d1e9      	bne.n	8009438 <__swsetup_r+0x20>
 8009464:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8009468:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800946c:	d0e4      	beq.n	8009438 <__swsetup_r+0x20>
 800946e:	4628      	mov	r0, r5
 8009470:	4621      	mov	r1, r4
 8009472:	f001 fd09 	bl	800ae88 <__smakebuf_r>
 8009476:	89a3      	ldrh	r3, [r4, #12]
 8009478:	6920      	ldr	r0, [r4, #16]
 800947a:	f013 0201 	ands.w	r2, r3, #1
 800947e:	d1de      	bne.n	800943e <__swsetup_r+0x26>
 8009480:	0799      	lsls	r1, r3, #30
 8009482:	bf58      	it	pl
 8009484:	6962      	ldrpl	r2, [r4, #20]
 8009486:	60a2      	str	r2, [r4, #8]
 8009488:	2800      	cmp	r0, #0
 800948a:	d1de      	bne.n	800944a <__swsetup_r+0x32>
 800948c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009490:	061a      	lsls	r2, r3, #24
 8009492:	d5db      	bpl.n	800944c <__swsetup_r+0x34>
 8009494:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009498:	81a3      	strh	r3, [r4, #12]
 800949a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800949e:	bd38      	pop	{r3, r4, r5, pc}
 80094a0:	4618      	mov	r0, r3
 80094a2:	f001 f8df 	bl	800a664 <__sinit>
 80094a6:	e7c0      	b.n	800942a <__swsetup_r+0x12>
 80094a8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80094aa:	b151      	cbz	r1, 80094c2 <__swsetup_r+0xaa>
 80094ac:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80094b0:	4299      	cmp	r1, r3
 80094b2:	d004      	beq.n	80094be <__swsetup_r+0xa6>
 80094b4:	4628      	mov	r0, r5
 80094b6:	f001 f9f9 	bl	800a8ac <_free_r>
 80094ba:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80094be:	2300      	movs	r3, #0
 80094c0:	6323      	str	r3, [r4, #48]	; 0x30
 80094c2:	2300      	movs	r3, #0
 80094c4:	6920      	ldr	r0, [r4, #16]
 80094c6:	6063      	str	r3, [r4, #4]
 80094c8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80094cc:	6020      	str	r0, [r4, #0]
 80094ce:	e7c3      	b.n	8009458 <__swsetup_r+0x40>
 80094d0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80094d4:	2309      	movs	r3, #9
 80094d6:	602b      	str	r3, [r5, #0]
 80094d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80094dc:	81a2      	strh	r2, [r4, #12]
 80094de:	bd38      	pop	{r3, r4, r5, pc}
 80094e0:	2000001c 	.word	0x2000001c

080094e4 <register_fini>:
 80094e4:	4b02      	ldr	r3, [pc, #8]	; (80094f0 <register_fini+0xc>)
 80094e6:	b113      	cbz	r3, 80094ee <register_fini+0xa>
 80094e8:	4802      	ldr	r0, [pc, #8]	; (80094f4 <register_fini+0x10>)
 80094ea:	f000 b80d 	b.w	8009508 <atexit>
 80094ee:	4770      	bx	lr
 80094f0:	00000000 	.word	0x00000000
 80094f4:	0800a6d5 	.word	0x0800a6d5

080094f8 <abort>:
 80094f8:	b508      	push	{r3, lr}
 80094fa:	2006      	movs	r0, #6
 80094fc:	f002 f8f2 	bl	800b6e4 <raise>
 8009500:	2001      	movs	r0, #1
 8009502:	f7fc fcd1 	bl	8005ea8 <_exit>
 8009506:	bf00      	nop

08009508 <atexit>:
 8009508:	2300      	movs	r3, #0
 800950a:	4601      	mov	r1, r0
 800950c:	461a      	mov	r2, r3
 800950e:	4618      	mov	r0, r3
 8009510:	f002 ba20 	b.w	800b954 <__register_exitproc>

08009514 <quorem>:
 8009514:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009518:	6903      	ldr	r3, [r0, #16]
 800951a:	690f      	ldr	r7, [r1, #16]
 800951c:	42bb      	cmp	r3, r7
 800951e:	b083      	sub	sp, #12
 8009520:	f2c0 8086 	blt.w	8009630 <quorem+0x11c>
 8009524:	3f01      	subs	r7, #1
 8009526:	f101 0914 	add.w	r9, r1, #20
 800952a:	f100 0a14 	add.w	sl, r0, #20
 800952e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8009532:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8009536:	00bc      	lsls	r4, r7, #2
 8009538:	3201      	adds	r2, #1
 800953a:	fbb3 f8f2 	udiv	r8, r3, r2
 800953e:	eb0a 0304 	add.w	r3, sl, r4
 8009542:	9400      	str	r4, [sp, #0]
 8009544:	eb09 0b04 	add.w	fp, r9, r4
 8009548:	9301      	str	r3, [sp, #4]
 800954a:	f1b8 0f00 	cmp.w	r8, #0
 800954e:	d038      	beq.n	80095c2 <quorem+0xae>
 8009550:	2500      	movs	r5, #0
 8009552:	462e      	mov	r6, r5
 8009554:	46ce      	mov	lr, r9
 8009556:	46d4      	mov	ip, sl
 8009558:	f85e 4b04 	ldr.w	r4, [lr], #4
 800955c:	f8dc 3000 	ldr.w	r3, [ip]
 8009560:	b2a2      	uxth	r2, r4
 8009562:	fb08 5502 	mla	r5, r8, r2, r5
 8009566:	0c22      	lsrs	r2, r4, #16
 8009568:	0c2c      	lsrs	r4, r5, #16
 800956a:	fb08 4202 	mla	r2, r8, r2, r4
 800956e:	b2ad      	uxth	r5, r5
 8009570:	1b75      	subs	r5, r6, r5
 8009572:	b296      	uxth	r6, r2
 8009574:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8009578:	fa15 f383 	uxtah	r3, r5, r3
 800957c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8009580:	b29b      	uxth	r3, r3
 8009582:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8009586:	45f3      	cmp	fp, lr
 8009588:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800958c:	f84c 3b04 	str.w	r3, [ip], #4
 8009590:	ea4f 4626 	mov.w	r6, r6, asr #16
 8009594:	d2e0      	bcs.n	8009558 <quorem+0x44>
 8009596:	9b00      	ldr	r3, [sp, #0]
 8009598:	f85a 3003 	ldr.w	r3, [sl, r3]
 800959c:	b98b      	cbnz	r3, 80095c2 <quorem+0xae>
 800959e:	9a01      	ldr	r2, [sp, #4]
 80095a0:	1f13      	subs	r3, r2, #4
 80095a2:	459a      	cmp	sl, r3
 80095a4:	d20c      	bcs.n	80095c0 <quorem+0xac>
 80095a6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80095aa:	b94b      	cbnz	r3, 80095c0 <quorem+0xac>
 80095ac:	f1a2 0308 	sub.w	r3, r2, #8
 80095b0:	e002      	b.n	80095b8 <quorem+0xa4>
 80095b2:	681a      	ldr	r2, [r3, #0]
 80095b4:	3b04      	subs	r3, #4
 80095b6:	b91a      	cbnz	r2, 80095c0 <quorem+0xac>
 80095b8:	459a      	cmp	sl, r3
 80095ba:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80095be:	d3f8      	bcc.n	80095b2 <quorem+0x9e>
 80095c0:	6107      	str	r7, [r0, #16]
 80095c2:	4604      	mov	r4, r0
 80095c4:	f001 ff3a 	bl	800b43c <__mcmp>
 80095c8:	2800      	cmp	r0, #0
 80095ca:	db2d      	blt.n	8009628 <quorem+0x114>
 80095cc:	f108 0801 	add.w	r8, r8, #1
 80095d0:	4655      	mov	r5, sl
 80095d2:	2300      	movs	r3, #0
 80095d4:	f859 1b04 	ldr.w	r1, [r9], #4
 80095d8:	6828      	ldr	r0, [r5, #0]
 80095da:	b28a      	uxth	r2, r1
 80095dc:	1a9a      	subs	r2, r3, r2
 80095de:	0c0b      	lsrs	r3, r1, #16
 80095e0:	fa12 f280 	uxtah	r2, r2, r0
 80095e4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80095e8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80095ec:	b292      	uxth	r2, r2
 80095ee:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80095f2:	45cb      	cmp	fp, r9
 80095f4:	f845 2b04 	str.w	r2, [r5], #4
 80095f8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80095fc:	d2ea      	bcs.n	80095d4 <quorem+0xc0>
 80095fe:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8009602:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8009606:	b97a      	cbnz	r2, 8009628 <quorem+0x114>
 8009608:	1f1a      	subs	r2, r3, #4
 800960a:	4592      	cmp	sl, r2
 800960c:	d20b      	bcs.n	8009626 <quorem+0x112>
 800960e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8009612:	b942      	cbnz	r2, 8009626 <quorem+0x112>
 8009614:	3b08      	subs	r3, #8
 8009616:	e002      	b.n	800961e <quorem+0x10a>
 8009618:	681a      	ldr	r2, [r3, #0]
 800961a:	3b04      	subs	r3, #4
 800961c:	b91a      	cbnz	r2, 8009626 <quorem+0x112>
 800961e:	459a      	cmp	sl, r3
 8009620:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8009624:	d3f8      	bcc.n	8009618 <quorem+0x104>
 8009626:	6127      	str	r7, [r4, #16]
 8009628:	4640      	mov	r0, r8
 800962a:	b003      	add	sp, #12
 800962c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009630:	2000      	movs	r0, #0
 8009632:	b003      	add	sp, #12
 8009634:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08009638 <_dtoa_r>:
 8009638:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800963c:	ec55 4b10 	vmov	r4, r5, d0
 8009640:	b09b      	sub	sp, #108	; 0x6c
 8009642:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8009644:	9102      	str	r1, [sp, #8]
 8009646:	4681      	mov	r9, r0
 8009648:	9207      	str	r2, [sp, #28]
 800964a:	9305      	str	r3, [sp, #20]
 800964c:	e9cd 4500 	strd	r4, r5, [sp]
 8009650:	b156      	cbz	r6, 8009668 <_dtoa_r+0x30>
 8009652:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8009654:	6072      	str	r2, [r6, #4]
 8009656:	2301      	movs	r3, #1
 8009658:	4093      	lsls	r3, r2
 800965a:	60b3      	str	r3, [r6, #8]
 800965c:	4631      	mov	r1, r6
 800965e:	f001 fcfd 	bl	800b05c <_Bfree>
 8009662:	2300      	movs	r3, #0
 8009664:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8009668:	f1b5 0800 	subs.w	r8, r5, #0
 800966c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800966e:	bfb4      	ite	lt
 8009670:	2301      	movlt	r3, #1
 8009672:	2300      	movge	r3, #0
 8009674:	6013      	str	r3, [r2, #0]
 8009676:	4b76      	ldr	r3, [pc, #472]	; (8009850 <_dtoa_r+0x218>)
 8009678:	bfbc      	itt	lt
 800967a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800967e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8009682:	ea33 0308 	bics.w	r3, r3, r8
 8009686:	f000 80a6 	beq.w	80097d6 <_dtoa_r+0x19e>
 800968a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800968e:	2200      	movs	r2, #0
 8009690:	2300      	movs	r3, #0
 8009692:	4630      	mov	r0, r6
 8009694:	4639      	mov	r1, r7
 8009696:	f7f7 fd17 	bl	80010c8 <__aeabi_dcmpeq>
 800969a:	4605      	mov	r5, r0
 800969c:	b178      	cbz	r0, 80096be <_dtoa_r+0x86>
 800969e:	9a05      	ldr	r2, [sp, #20]
 80096a0:	2301      	movs	r3, #1
 80096a2:	6013      	str	r3, [r2, #0]
 80096a4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80096a6:	2b00      	cmp	r3, #0
 80096a8:	f000 80c0 	beq.w	800982c <_dtoa_r+0x1f4>
 80096ac:	4b69      	ldr	r3, [pc, #420]	; (8009854 <_dtoa_r+0x21c>)
 80096ae:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80096b0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80096b4:	6013      	str	r3, [r2, #0]
 80096b6:	4658      	mov	r0, fp
 80096b8:	b01b      	add	sp, #108	; 0x6c
 80096ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80096be:	aa18      	add	r2, sp, #96	; 0x60
 80096c0:	a919      	add	r1, sp, #100	; 0x64
 80096c2:	ec47 6b10 	vmov	d0, r6, r7
 80096c6:	4648      	mov	r0, r9
 80096c8:	f001 ff4a 	bl	800b560 <__d2b>
 80096cc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80096d0:	4682      	mov	sl, r0
 80096d2:	f040 80a0 	bne.w	8009816 <_dtoa_r+0x1de>
 80096d6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80096da:	442c      	add	r4, r5
 80096dc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80096e0:	2b20      	cmp	r3, #32
 80096e2:	f340 842c 	ble.w	8009f3e <_dtoa_r+0x906>
 80096e6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80096ea:	fa08 f803 	lsl.w	r8, r8, r3
 80096ee:	9b00      	ldr	r3, [sp, #0]
 80096f0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80096f4:	fa23 f000 	lsr.w	r0, r3, r0
 80096f8:	ea48 0000 	orr.w	r0, r8, r0
 80096fc:	f7f7 fa02 	bl	8000b04 <__aeabi_ui2d>
 8009700:	2301      	movs	r3, #1
 8009702:	4606      	mov	r6, r0
 8009704:	3c01      	subs	r4, #1
 8009706:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800970a:	930f      	str	r3, [sp, #60]	; 0x3c
 800970c:	4630      	mov	r0, r6
 800970e:	4639      	mov	r1, r7
 8009710:	2200      	movs	r2, #0
 8009712:	4b51      	ldr	r3, [pc, #324]	; (8009858 <_dtoa_r+0x220>)
 8009714:	f7f7 f8b8 	bl	8000888 <__aeabi_dsub>
 8009718:	a347      	add	r3, pc, #284	; (adr r3, 8009838 <_dtoa_r+0x200>)
 800971a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800971e:	f7f7 fa6b 	bl	8000bf8 <__aeabi_dmul>
 8009722:	a347      	add	r3, pc, #284	; (adr r3, 8009840 <_dtoa_r+0x208>)
 8009724:	e9d3 2300 	ldrd	r2, r3, [r3]
 8009728:	f7f7 f8b0 	bl	800088c <__adddf3>
 800972c:	4606      	mov	r6, r0
 800972e:	4620      	mov	r0, r4
 8009730:	460f      	mov	r7, r1
 8009732:	f7f7 f9f7 	bl	8000b24 <__aeabi_i2d>
 8009736:	a344      	add	r3, pc, #272	; (adr r3, 8009848 <_dtoa_r+0x210>)
 8009738:	e9d3 2300 	ldrd	r2, r3, [r3]
 800973c:	f7f7 fa5c 	bl	8000bf8 <__aeabi_dmul>
 8009740:	4602      	mov	r2, r0
 8009742:	460b      	mov	r3, r1
 8009744:	4630      	mov	r0, r6
 8009746:	4639      	mov	r1, r7
 8009748:	f7f7 f8a0 	bl	800088c <__adddf3>
 800974c:	4606      	mov	r6, r0
 800974e:	460f      	mov	r7, r1
 8009750:	f7f7 fd02 	bl	8001158 <__aeabi_d2iz>
 8009754:	2200      	movs	r2, #0
 8009756:	9006      	str	r0, [sp, #24]
 8009758:	2300      	movs	r3, #0
 800975a:	4630      	mov	r0, r6
 800975c:	4639      	mov	r1, r7
 800975e:	f7f7 fcbd 	bl	80010dc <__aeabi_dcmplt>
 8009762:	2800      	cmp	r0, #0
 8009764:	f040 8273 	bne.w	8009c4e <_dtoa_r+0x616>
 8009768:	9e06      	ldr	r6, [sp, #24]
 800976a:	2e16      	cmp	r6, #22
 800976c:	f200 825d 	bhi.w	8009c2a <_dtoa_r+0x5f2>
 8009770:	4b3a      	ldr	r3, [pc, #232]	; (800985c <_dtoa_r+0x224>)
 8009772:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8009776:	e9d3 0100 	ldrd	r0, r1, [r3]
 800977a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800977e:	f7f7 fccb 	bl	8001118 <__aeabi_dcmpgt>
 8009782:	2800      	cmp	r0, #0
 8009784:	f000 83d7 	beq.w	8009f36 <_dtoa_r+0x8fe>
 8009788:	1e73      	subs	r3, r6, #1
 800978a:	9306      	str	r3, [sp, #24]
 800978c:	2300      	movs	r3, #0
 800978e:	930d      	str	r3, [sp, #52]	; 0x34
 8009790:	1b2c      	subs	r4, r5, r4
 8009792:	f1b4 0801 	subs.w	r8, r4, #1
 8009796:	f100 8254 	bmi.w	8009c42 <_dtoa_r+0x60a>
 800979a:	2300      	movs	r3, #0
 800979c:	9308      	str	r3, [sp, #32]
 800979e:	9b06      	ldr	r3, [sp, #24]
 80097a0:	2b00      	cmp	r3, #0
 80097a2:	f2c0 8245 	blt.w	8009c30 <_dtoa_r+0x5f8>
 80097a6:	4498      	add	r8, r3
 80097a8:	930c      	str	r3, [sp, #48]	; 0x30
 80097aa:	2300      	movs	r3, #0
 80097ac:	930b      	str	r3, [sp, #44]	; 0x2c
 80097ae:	9b02      	ldr	r3, [sp, #8]
 80097b0:	2b09      	cmp	r3, #9
 80097b2:	d85b      	bhi.n	800986c <_dtoa_r+0x234>
 80097b4:	2b05      	cmp	r3, #5
 80097b6:	f340 83c0 	ble.w	8009f3a <_dtoa_r+0x902>
 80097ba:	3b04      	subs	r3, #4
 80097bc:	9302      	str	r3, [sp, #8]
 80097be:	2500      	movs	r5, #0
 80097c0:	9b02      	ldr	r3, [sp, #8]
 80097c2:	3b02      	subs	r3, #2
 80097c4:	2b03      	cmp	r3, #3
 80097c6:	f200 8498 	bhi.w	800a0fa <_dtoa_r+0xac2>
 80097ca:	e8df f013 	tbh	[pc, r3, lsl #1]
 80097ce:	03df      	.short	0x03df
 80097d0:	03e803bf 	.word	0x03e803bf
 80097d4:	04f5      	.short	0x04f5
 80097d6:	9a05      	ldr	r2, [sp, #20]
 80097d8:	f242 730f 	movw	r3, #9999	; 0x270f
 80097dc:	6013      	str	r3, [r2, #0]
 80097de:	9b00      	ldr	r3, [sp, #0]
 80097e0:	b983      	cbnz	r3, 8009804 <_dtoa_r+0x1cc>
 80097e2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80097e6:	b96b      	cbnz	r3, 8009804 <_dtoa_r+0x1cc>
 80097e8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80097ea:	f8df b074 	ldr.w	fp, [pc, #116]	; 8009860 <_dtoa_r+0x228>
 80097ee:	2b00      	cmp	r3, #0
 80097f0:	f43f af61 	beq.w	80096b6 <_dtoa_r+0x7e>
 80097f4:	f10b 0308 	add.w	r3, fp, #8
 80097f8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80097fa:	4658      	mov	r0, fp
 80097fc:	6013      	str	r3, [r2, #0]
 80097fe:	b01b      	add	sp, #108	; 0x6c
 8009800:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009804:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8009806:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8009864 <_dtoa_r+0x22c>
 800980a:	2b00      	cmp	r3, #0
 800980c:	f43f af53 	beq.w	80096b6 <_dtoa_r+0x7e>
 8009810:	f10b 0303 	add.w	r3, fp, #3
 8009814:	e7f0      	b.n	80097f8 <_dtoa_r+0x1c0>
 8009816:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800981a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800981e:	950f      	str	r5, [sp, #60]	; 0x3c
 8009820:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8009824:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8009828:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800982a:	e76f      	b.n	800970c <_dtoa_r+0xd4>
 800982c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8009868 <_dtoa_r+0x230>
 8009830:	4658      	mov	r0, fp
 8009832:	b01b      	add	sp, #108	; 0x6c
 8009834:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009838:	636f4361 	.word	0x636f4361
 800983c:	3fd287a7 	.word	0x3fd287a7
 8009840:	8b60c8b3 	.word	0x8b60c8b3
 8009844:	3fc68a28 	.word	0x3fc68a28
 8009848:	509f79fb 	.word	0x509f79fb
 800984c:	3fd34413 	.word	0x3fd34413
 8009850:	7ff00000 	.word	0x7ff00000
 8009854:	0800d045 	.word	0x0800d045
 8009858:	3ff80000 	.word	0x3ff80000
 800985c:	0800d0b0 	.word	0x0800d0b0
 8009860:	0800d068 	.word	0x0800d068
 8009864:	0800d074 	.word	0x0800d074
 8009868:	0800d044 	.word	0x0800d044
 800986c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8009870:	2501      	movs	r5, #1
 8009872:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8009876:	2300      	movs	r3, #0
 8009878:	9302      	str	r3, [sp, #8]
 800987a:	9307      	str	r3, [sp, #28]
 800987c:	2100      	movs	r1, #0
 800987e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8009882:	940e      	str	r4, [sp, #56]	; 0x38
 8009884:	4648      	mov	r0, r9
 8009886:	f001 fbc3 	bl	800b010 <_Balloc>
 800988a:	2c0e      	cmp	r4, #14
 800988c:	4683      	mov	fp, r0
 800988e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8009892:	f200 80fb 	bhi.w	8009a8c <_dtoa_r+0x454>
 8009896:	2d00      	cmp	r5, #0
 8009898:	f000 80f8 	beq.w	8009a8c <_dtoa_r+0x454>
 800989c:	ed9d 7b00 	vldr	d7, [sp]
 80098a0:	9906      	ldr	r1, [sp, #24]
 80098a2:	2900      	cmp	r1, #0
 80098a4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80098a8:	f340 83e5 	ble.w	800a076 <_dtoa_r+0xa3e>
 80098ac:	4b9d      	ldr	r3, [pc, #628]	; (8009b24 <_dtoa_r+0x4ec>)
 80098ae:	f001 020f 	and.w	r2, r1, #15
 80098b2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80098b6:	ed93 7b00 	vldr	d7, [r3]
 80098ba:	110c      	asrs	r4, r1, #4
 80098bc:	06e2      	lsls	r2, r4, #27
 80098be:	ed8d 7b00 	vstr	d7, [sp]
 80098c2:	f140 849e 	bpl.w	800a202 <_dtoa_r+0xbca>
 80098c6:	4b98      	ldr	r3, [pc, #608]	; (8009b28 <_dtoa_r+0x4f0>)
 80098c8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80098cc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80098d0:	f7f7 fabc 	bl	8000e4c <__aeabi_ddiv>
 80098d4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80098d8:	f004 040f 	and.w	r4, r4, #15
 80098dc:	2603      	movs	r6, #3
 80098de:	b17c      	cbz	r4, 8009900 <_dtoa_r+0x2c8>
 80098e0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80098e4:	4d90      	ldr	r5, [pc, #576]	; (8009b28 <_dtoa_r+0x4f0>)
 80098e6:	07e3      	lsls	r3, r4, #31
 80098e8:	d504      	bpl.n	80098f4 <_dtoa_r+0x2bc>
 80098ea:	e9d5 2300 	ldrd	r2, r3, [r5]
 80098ee:	f7f7 f983 	bl	8000bf8 <__aeabi_dmul>
 80098f2:	3601      	adds	r6, #1
 80098f4:	1064      	asrs	r4, r4, #1
 80098f6:	f105 0508 	add.w	r5, r5, #8
 80098fa:	d1f4      	bne.n	80098e6 <_dtoa_r+0x2ae>
 80098fc:	e9cd 0100 	strd	r0, r1, [sp]
 8009900:	e9dd 2300 	ldrd	r2, r3, [sp]
 8009904:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8009908:	f7f7 faa0 	bl	8000e4c <__aeabi_ddiv>
 800990c:	e9cd 0100 	strd	r0, r1, [sp]
 8009910:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8009912:	b143      	cbz	r3, 8009926 <_dtoa_r+0x2ee>
 8009914:	2200      	movs	r2, #0
 8009916:	4b85      	ldr	r3, [pc, #532]	; (8009b2c <_dtoa_r+0x4f4>)
 8009918:	e9dd 0100 	ldrd	r0, r1, [sp]
 800991c:	f7f7 fbde 	bl	80010dc <__aeabi_dcmplt>
 8009920:	2800      	cmp	r0, #0
 8009922:	f040 84ff 	bne.w	800a324 <_dtoa_r+0xcec>
 8009926:	4630      	mov	r0, r6
 8009928:	f7f7 f8fc 	bl	8000b24 <__aeabi_i2d>
 800992c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8009930:	f7f7 f962 	bl	8000bf8 <__aeabi_dmul>
 8009934:	4b7e      	ldr	r3, [pc, #504]	; (8009b30 <_dtoa_r+0x4f8>)
 8009936:	2200      	movs	r2, #0
 8009938:	f7f6 ffa8 	bl	800088c <__adddf3>
 800993c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800993e:	4606      	mov	r6, r0
 8009940:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8009944:	2b00      	cmp	r3, #0
 8009946:	f000 841c 	beq.w	800a182 <_dtoa_r+0xb4a>
 800994a:	9b06      	ldr	r3, [sp, #24]
 800994c:	9316      	str	r3, [sp, #88]	; 0x58
 800994e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8009950:	9312      	str	r3, [sp, #72]	; 0x48
 8009952:	e9dd 0100 	ldrd	r0, r1, [sp]
 8009956:	f7f7 fbff 	bl	8001158 <__aeabi_d2iz>
 800995a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800995c:	4b71      	ldr	r3, [pc, #452]	; (8009b24 <_dtoa_r+0x4ec>)
 800995e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8009962:	ed13 7b02 	vldr	d7, [r3, #-8]
 8009966:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800996a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800996e:	f7f7 f8d9 	bl	8000b24 <__aeabi_i2d>
 8009972:	460b      	mov	r3, r1
 8009974:	4602      	mov	r2, r0
 8009976:	e9dd 0100 	ldrd	r0, r1, [sp]
 800997a:	e9cd 6700 	strd	r6, r7, [sp]
 800997e:	f7f6 ff83 	bl	8000888 <__aeabi_dsub>
 8009982:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8009984:	b2ed      	uxtb	r5, r5
 8009986:	4606      	mov	r6, r0
 8009988:	460f      	mov	r7, r1
 800998a:	f10b 0401 	add.w	r4, fp, #1
 800998e:	2b00      	cmp	r3, #0
 8009990:	f000 8458 	beq.w	800a244 <_dtoa_r+0xc0c>
 8009994:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8009998:	2000      	movs	r0, #0
 800999a:	4966      	ldr	r1, [pc, #408]	; (8009b34 <_dtoa_r+0x4fc>)
 800999c:	f7f7 fa56 	bl	8000e4c <__aeabi_ddiv>
 80099a0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80099a4:	f7f6 ff70 	bl	8000888 <__aeabi_dsub>
 80099a8:	f88b 5000 	strb.w	r5, [fp]
 80099ac:	4632      	mov	r2, r6
 80099ae:	463b      	mov	r3, r7
 80099b0:	e9cd 0100 	strd	r0, r1, [sp]
 80099b4:	f7f7 fbb0 	bl	8001118 <__aeabi_dcmpgt>
 80099b8:	2800      	cmp	r0, #0
 80099ba:	f040 8502 	bne.w	800a3c2 <_dtoa_r+0xd8a>
 80099be:	4632      	mov	r2, r6
 80099c0:	463b      	mov	r3, r7
 80099c2:	2000      	movs	r0, #0
 80099c4:	4959      	ldr	r1, [pc, #356]	; (8009b2c <_dtoa_r+0x4f4>)
 80099c6:	f7f6 ff5f 	bl	8000888 <__aeabi_dsub>
 80099ca:	4602      	mov	r2, r0
 80099cc:	460b      	mov	r3, r1
 80099ce:	e9dd 0100 	ldrd	r0, r1, [sp]
 80099d2:	f7f7 fba1 	bl	8001118 <__aeabi_dcmpgt>
 80099d6:	2800      	cmp	r0, #0
 80099d8:	f040 84fb 	bne.w	800a3d2 <_dtoa_r+0xd9a>
 80099dc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80099de:	2a01      	cmp	r2, #1
 80099e0:	d050      	beq.n	8009a84 <_dtoa_r+0x44c>
 80099e2:	445a      	add	r2, fp
 80099e4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80099e8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80099ec:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80099f0:	4692      	mov	sl, r2
 80099f2:	46cb      	mov	fp, r9
 80099f4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80099f8:	e00c      	b.n	8009a14 <_dtoa_r+0x3dc>
 80099fa:	2000      	movs	r0, #0
 80099fc:	494b      	ldr	r1, [pc, #300]	; (8009b2c <_dtoa_r+0x4f4>)
 80099fe:	f7f6 ff43 	bl	8000888 <__aeabi_dsub>
 8009a02:	4642      	mov	r2, r8
 8009a04:	464b      	mov	r3, r9
 8009a06:	f7f7 fb69 	bl	80010dc <__aeabi_dcmplt>
 8009a0a:	2800      	cmp	r0, #0
 8009a0c:	f040 84dc 	bne.w	800a3c8 <_dtoa_r+0xd90>
 8009a10:	4554      	cmp	r4, sl
 8009a12:	d030      	beq.n	8009a76 <_dtoa_r+0x43e>
 8009a14:	4640      	mov	r0, r8
 8009a16:	4649      	mov	r1, r9
 8009a18:	2200      	movs	r2, #0
 8009a1a:	4b47      	ldr	r3, [pc, #284]	; (8009b38 <_dtoa_r+0x500>)
 8009a1c:	f7f7 f8ec 	bl	8000bf8 <__aeabi_dmul>
 8009a20:	2200      	movs	r2, #0
 8009a22:	4b45      	ldr	r3, [pc, #276]	; (8009b38 <_dtoa_r+0x500>)
 8009a24:	4680      	mov	r8, r0
 8009a26:	4689      	mov	r9, r1
 8009a28:	4630      	mov	r0, r6
 8009a2a:	4639      	mov	r1, r7
 8009a2c:	f7f7 f8e4 	bl	8000bf8 <__aeabi_dmul>
 8009a30:	460f      	mov	r7, r1
 8009a32:	4606      	mov	r6, r0
 8009a34:	f7f7 fb90 	bl	8001158 <__aeabi_d2iz>
 8009a38:	4605      	mov	r5, r0
 8009a3a:	f7f7 f873 	bl	8000b24 <__aeabi_i2d>
 8009a3e:	4602      	mov	r2, r0
 8009a40:	460b      	mov	r3, r1
 8009a42:	4630      	mov	r0, r6
 8009a44:	4639      	mov	r1, r7
 8009a46:	f7f6 ff1f 	bl	8000888 <__aeabi_dsub>
 8009a4a:	3530      	adds	r5, #48	; 0x30
 8009a4c:	b2ed      	uxtb	r5, r5
 8009a4e:	4642      	mov	r2, r8
 8009a50:	464b      	mov	r3, r9
 8009a52:	f804 5b01 	strb.w	r5, [r4], #1
 8009a56:	4606      	mov	r6, r0
 8009a58:	460f      	mov	r7, r1
 8009a5a:	f7f7 fb3f 	bl	80010dc <__aeabi_dcmplt>
 8009a5e:	4632      	mov	r2, r6
 8009a60:	463b      	mov	r3, r7
 8009a62:	2800      	cmp	r0, #0
 8009a64:	d0c9      	beq.n	80099fa <_dtoa_r+0x3c2>
 8009a66:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8009a68:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8009a6c:	9306      	str	r3, [sp, #24]
 8009a6e:	46d9      	mov	r9, fp
 8009a70:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8009a74:	e236      	b.n	8009ee4 <_dtoa_r+0x8ac>
 8009a76:	46d9      	mov	r9, fp
 8009a78:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8009a7c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8009a80:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8009a84:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8009a88:	e9cd 3400 	strd	r3, r4, [sp]
 8009a8c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8009a8e:	2b00      	cmp	r3, #0
 8009a90:	f2c0 80ae 	blt.w	8009bf0 <_dtoa_r+0x5b8>
 8009a94:	9a06      	ldr	r2, [sp, #24]
 8009a96:	2a0e      	cmp	r2, #14
 8009a98:	f300 80aa 	bgt.w	8009bf0 <_dtoa_r+0x5b8>
 8009a9c:	4b21      	ldr	r3, [pc, #132]	; (8009b24 <_dtoa_r+0x4ec>)
 8009a9e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8009aa2:	ed93 7b00 	vldr	d7, [r3]
 8009aa6:	9b07      	ldr	r3, [sp, #28]
 8009aa8:	2b00      	cmp	r3, #0
 8009aaa:	ed8d 7b02 	vstr	d7, [sp, #8]
 8009aae:	f2c0 82be 	blt.w	800a02e <_dtoa_r+0x9f6>
 8009ab2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8009ab6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8009aba:	4630      	mov	r0, r6
 8009abc:	4639      	mov	r1, r7
 8009abe:	f7f7 f9c5 	bl	8000e4c <__aeabi_ddiv>
 8009ac2:	f7f7 fb49 	bl	8001158 <__aeabi_d2iz>
 8009ac6:	4605      	mov	r5, r0
 8009ac8:	f7f7 f82c 	bl	8000b24 <__aeabi_i2d>
 8009acc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8009ad0:	f7f7 f892 	bl	8000bf8 <__aeabi_dmul>
 8009ad4:	460b      	mov	r3, r1
 8009ad6:	4602      	mov	r2, r0
 8009ad8:	4639      	mov	r1, r7
 8009ada:	4630      	mov	r0, r6
 8009adc:	f7f6 fed4 	bl	8000888 <__aeabi_dsub>
 8009ae0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8009ae4:	f88b 3000 	strb.w	r3, [fp]
 8009ae8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8009aea:	2b01      	cmp	r3, #1
 8009aec:	4606      	mov	r6, r0
 8009aee:	460f      	mov	r7, r1
 8009af0:	f10b 0401 	add.w	r4, fp, #1
 8009af4:	d053      	beq.n	8009b9e <_dtoa_r+0x566>
 8009af6:	2200      	movs	r2, #0
 8009af8:	4b0f      	ldr	r3, [pc, #60]	; (8009b38 <_dtoa_r+0x500>)
 8009afa:	f7f7 f87d 	bl	8000bf8 <__aeabi_dmul>
 8009afe:	2200      	movs	r2, #0
 8009b00:	2300      	movs	r3, #0
 8009b02:	4606      	mov	r6, r0
 8009b04:	460f      	mov	r7, r1
 8009b06:	f7f7 fadf 	bl	80010c8 <__aeabi_dcmpeq>
 8009b0a:	2800      	cmp	r0, #0
 8009b0c:	f040 81ea 	bne.w	8009ee4 <_dtoa_r+0x8ac>
 8009b10:	f8cd a000 	str.w	sl, [sp]
 8009b14:	f8cd 901c 	str.w	r9, [sp, #28]
 8009b18:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8009b1c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8009b20:	e017      	b.n	8009b52 <_dtoa_r+0x51a>
 8009b22:	bf00      	nop
 8009b24:	0800d0b0 	.word	0x0800d0b0
 8009b28:	0800d088 	.word	0x0800d088
 8009b2c:	3ff00000 	.word	0x3ff00000
 8009b30:	401c0000 	.word	0x401c0000
 8009b34:	3fe00000 	.word	0x3fe00000
 8009b38:	40240000 	.word	0x40240000
 8009b3c:	f7f7 f85c 	bl	8000bf8 <__aeabi_dmul>
 8009b40:	2200      	movs	r2, #0
 8009b42:	2300      	movs	r3, #0
 8009b44:	4606      	mov	r6, r0
 8009b46:	460f      	mov	r7, r1
 8009b48:	f7f7 fabe 	bl	80010c8 <__aeabi_dcmpeq>
 8009b4c:	2800      	cmp	r0, #0
 8009b4e:	f040 833d 	bne.w	800a1cc <_dtoa_r+0xb94>
 8009b52:	464a      	mov	r2, r9
 8009b54:	4653      	mov	r3, sl
 8009b56:	4630      	mov	r0, r6
 8009b58:	4639      	mov	r1, r7
 8009b5a:	f7f7 f977 	bl	8000e4c <__aeabi_ddiv>
 8009b5e:	f7f7 fafb 	bl	8001158 <__aeabi_d2iz>
 8009b62:	4605      	mov	r5, r0
 8009b64:	f7f6 ffde 	bl	8000b24 <__aeabi_i2d>
 8009b68:	464a      	mov	r2, r9
 8009b6a:	4653      	mov	r3, sl
 8009b6c:	f7f7 f844 	bl	8000bf8 <__aeabi_dmul>
 8009b70:	4602      	mov	r2, r0
 8009b72:	460b      	mov	r3, r1
 8009b74:	4630      	mov	r0, r6
 8009b76:	4639      	mov	r1, r7
 8009b78:	f7f6 fe86 	bl	8000888 <__aeabi_dsub>
 8009b7c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8009b80:	f804 cb01 	strb.w	ip, [r4], #1
 8009b84:	eba4 0c0b 	sub.w	ip, r4, fp
 8009b88:	45e0      	cmp	r8, ip
 8009b8a:	4606      	mov	r6, r0
 8009b8c:	460f      	mov	r7, r1
 8009b8e:	f04f 0200 	mov.w	r2, #0
 8009b92:	4bc1      	ldr	r3, [pc, #772]	; (8009e98 <_dtoa_r+0x860>)
 8009b94:	d1d2      	bne.n	8009b3c <_dtoa_r+0x504>
 8009b96:	f8dd a000 	ldr.w	sl, [sp]
 8009b9a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8009b9e:	4632      	mov	r2, r6
 8009ba0:	463b      	mov	r3, r7
 8009ba2:	4630      	mov	r0, r6
 8009ba4:	4639      	mov	r1, r7
 8009ba6:	f7f6 fe71 	bl	800088c <__adddf3>
 8009baa:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8009bae:	4606      	mov	r6, r0
 8009bb0:	460f      	mov	r7, r1
 8009bb2:	f7f7 fab1 	bl	8001118 <__aeabi_dcmpgt>
 8009bb6:	b958      	cbnz	r0, 8009bd0 <_dtoa_r+0x598>
 8009bb8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8009bbc:	4630      	mov	r0, r6
 8009bbe:	4639      	mov	r1, r7
 8009bc0:	f7f7 fa82 	bl	80010c8 <__aeabi_dcmpeq>
 8009bc4:	2800      	cmp	r0, #0
 8009bc6:	f000 818d 	beq.w	8009ee4 <_dtoa_r+0x8ac>
 8009bca:	07e9      	lsls	r1, r5, #31
 8009bcc:	f140 818a 	bpl.w	8009ee4 <_dtoa_r+0x8ac>
 8009bd0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8009bd4:	e005      	b.n	8009be2 <_dtoa_r+0x5aa>
 8009bd6:	459b      	cmp	fp, r3
 8009bd8:	f000 8373 	beq.w	800a2c2 <_dtoa_r+0xc8a>
 8009bdc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8009be0:	461c      	mov	r4, r3
 8009be2:	2d39      	cmp	r5, #57	; 0x39
 8009be4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8009be8:	d0f5      	beq.n	8009bd6 <_dtoa_r+0x59e>
 8009bea:	3501      	adds	r5, #1
 8009bec:	701d      	strb	r5, [r3, #0]
 8009bee:	e179      	b.n	8009ee4 <_dtoa_r+0x8ac>
 8009bf0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8009bf2:	2a00      	cmp	r2, #0
 8009bf4:	d03b      	beq.n	8009c6e <_dtoa_r+0x636>
 8009bf6:	9a02      	ldr	r2, [sp, #8]
 8009bf8:	2a01      	cmp	r2, #1
 8009bfa:	f340 820b 	ble.w	800a014 <_dtoa_r+0x9dc>
 8009bfe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8009c00:	1e5f      	subs	r7, r3, #1
 8009c02:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8009c04:	42bb      	cmp	r3, r7
 8009c06:	f2c0 82e6 	blt.w	800a1d6 <_dtoa_r+0xb9e>
 8009c0a:	1bdf      	subs	r7, r3, r7
 8009c0c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8009c0e:	2b00      	cmp	r3, #0
 8009c10:	f2c0 830b 	blt.w	800a22a <_dtoa_r+0xbf2>
 8009c14:	9a08      	ldr	r2, [sp, #32]
 8009c16:	4614      	mov	r4, r2
 8009c18:	441a      	add	r2, r3
 8009c1a:	4498      	add	r8, r3
 8009c1c:	9208      	str	r2, [sp, #32]
 8009c1e:	2101      	movs	r1, #1
 8009c20:	4648      	mov	r0, r9
 8009c22:	f001 fab5 	bl	800b190 <__i2b>
 8009c26:	4605      	mov	r5, r0
 8009c28:	e024      	b.n	8009c74 <_dtoa_r+0x63c>
 8009c2a:	2301      	movs	r3, #1
 8009c2c:	930d      	str	r3, [sp, #52]	; 0x34
 8009c2e:	e5af      	b.n	8009790 <_dtoa_r+0x158>
 8009c30:	9a08      	ldr	r2, [sp, #32]
 8009c32:	9b06      	ldr	r3, [sp, #24]
 8009c34:	1ad2      	subs	r2, r2, r3
 8009c36:	425b      	negs	r3, r3
 8009c38:	930b      	str	r3, [sp, #44]	; 0x2c
 8009c3a:	2300      	movs	r3, #0
 8009c3c:	9208      	str	r2, [sp, #32]
 8009c3e:	930c      	str	r3, [sp, #48]	; 0x30
 8009c40:	e5b5      	b.n	80097ae <_dtoa_r+0x176>
 8009c42:	f1c4 0301 	rsb	r3, r4, #1
 8009c46:	9308      	str	r3, [sp, #32]
 8009c48:	f04f 0800 	mov.w	r8, #0
 8009c4c:	e5a7      	b.n	800979e <_dtoa_r+0x166>
 8009c4e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8009c52:	4640      	mov	r0, r8
 8009c54:	f7f6 ff66 	bl	8000b24 <__aeabi_i2d>
 8009c58:	4632      	mov	r2, r6
 8009c5a:	463b      	mov	r3, r7
 8009c5c:	f7f7 fa34 	bl	80010c8 <__aeabi_dcmpeq>
 8009c60:	2800      	cmp	r0, #0
 8009c62:	f47f ad81 	bne.w	8009768 <_dtoa_r+0x130>
 8009c66:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8009c6a:	9306      	str	r3, [sp, #24]
 8009c6c:	e57c      	b.n	8009768 <_dtoa_r+0x130>
 8009c6e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8009c70:	9c08      	ldr	r4, [sp, #32]
 8009c72:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8009c74:	2c00      	cmp	r4, #0
 8009c76:	dd0c      	ble.n	8009c92 <_dtoa_r+0x65a>
 8009c78:	f1b8 0f00 	cmp.w	r8, #0
 8009c7c:	dd09      	ble.n	8009c92 <_dtoa_r+0x65a>
 8009c7e:	4544      	cmp	r4, r8
 8009c80:	9a08      	ldr	r2, [sp, #32]
 8009c82:	4623      	mov	r3, r4
 8009c84:	bfa8      	it	ge
 8009c86:	4643      	movge	r3, r8
 8009c88:	1ad2      	subs	r2, r2, r3
 8009c8a:	9208      	str	r2, [sp, #32]
 8009c8c:	1ae4      	subs	r4, r4, r3
 8009c8e:	eba8 0803 	sub.w	r8, r8, r3
 8009c92:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8009c94:	b16b      	cbz	r3, 8009cb2 <_dtoa_r+0x67a>
 8009c96:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8009c98:	2a00      	cmp	r2, #0
 8009c9a:	f000 8290 	beq.w	800a1be <_dtoa_r+0xb86>
 8009c9e:	1bde      	subs	r6, r3, r7
 8009ca0:	2f00      	cmp	r7, #0
 8009ca2:	f040 819b 	bne.w	8009fdc <_dtoa_r+0x9a4>
 8009ca6:	4651      	mov	r1, sl
 8009ca8:	4632      	mov	r2, r6
 8009caa:	4648      	mov	r0, r9
 8009cac:	f001 fb20 	bl	800b2f0 <__pow5mult>
 8009cb0:	4682      	mov	sl, r0
 8009cb2:	2101      	movs	r1, #1
 8009cb4:	4648      	mov	r0, r9
 8009cb6:	f001 fa6b 	bl	800b190 <__i2b>
 8009cba:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8009cbc:	4606      	mov	r6, r0
 8009cbe:	2a00      	cmp	r2, #0
 8009cc0:	f040 8125 	bne.w	8009f0e <_dtoa_r+0x8d6>
 8009cc4:	9b02      	ldr	r3, [sp, #8]
 8009cc6:	2b01      	cmp	r3, #1
 8009cc8:	f340 816c 	ble.w	8009fa4 <_dtoa_r+0x96c>
 8009ccc:	2001      	movs	r0, #1
 8009cce:	4440      	add	r0, r8
 8009cd0:	f010 001f 	ands.w	r0, r0, #31
 8009cd4:	f000 8119 	beq.w	8009f0a <_dtoa_r+0x8d2>
 8009cd8:	f1c0 0320 	rsb	r3, r0, #32
 8009cdc:	2b04      	cmp	r3, #4
 8009cde:	f340 83ac 	ble.w	800a43a <_dtoa_r+0xe02>
 8009ce2:	f1c0 001c 	rsb	r0, r0, #28
 8009ce6:	9b08      	ldr	r3, [sp, #32]
 8009ce8:	4403      	add	r3, r0
 8009cea:	9308      	str	r3, [sp, #32]
 8009cec:	4404      	add	r4, r0
 8009cee:	4480      	add	r8, r0
 8009cf0:	9b08      	ldr	r3, [sp, #32]
 8009cf2:	2b00      	cmp	r3, #0
 8009cf4:	dd05      	ble.n	8009d02 <_dtoa_r+0x6ca>
 8009cf6:	4651      	mov	r1, sl
 8009cf8:	461a      	mov	r2, r3
 8009cfa:	4648      	mov	r0, r9
 8009cfc:	f001 fb48 	bl	800b390 <__lshift>
 8009d00:	4682      	mov	sl, r0
 8009d02:	f1b8 0f00 	cmp.w	r8, #0
 8009d06:	dd05      	ble.n	8009d14 <_dtoa_r+0x6dc>
 8009d08:	4631      	mov	r1, r6
 8009d0a:	4642      	mov	r2, r8
 8009d0c:	4648      	mov	r0, r9
 8009d0e:	f001 fb3f 	bl	800b390 <__lshift>
 8009d12:	4606      	mov	r6, r0
 8009d14:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8009d16:	2b00      	cmp	r3, #0
 8009d18:	d177      	bne.n	8009e0a <_dtoa_r+0x7d2>
 8009d1a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8009d1c:	2b00      	cmp	r3, #0
 8009d1e:	f340 8209 	ble.w	800a134 <_dtoa_r+0xafc>
 8009d22:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8009d24:	2b00      	cmp	r3, #0
 8009d26:	f000 8089 	beq.w	8009e3c <_dtoa_r+0x804>
 8009d2a:	2c00      	cmp	r4, #0
 8009d2c:	f300 816b 	bgt.w	800a006 <_dtoa_r+0x9ce>
 8009d30:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8009d32:	2b00      	cmp	r3, #0
 8009d34:	f040 81cd 	bne.w	800a0d2 <_dtoa_r+0xa9a>
 8009d38:	46a8      	mov	r8, r5
 8009d3a:	9a00      	ldr	r2, [sp, #0]
 8009d3c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8009d40:	f002 0201 	and.w	r2, r2, #1
 8009d44:	920a      	str	r2, [sp, #40]	; 0x28
 8009d46:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8009d48:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8009d4c:	441a      	add	r2, r3
 8009d4e:	465f      	mov	r7, fp
 8009d50:	9209      	str	r2, [sp, #36]	; 0x24
 8009d52:	46b3      	mov	fp, r6
 8009d54:	4659      	mov	r1, fp
 8009d56:	4650      	mov	r0, sl
 8009d58:	f7ff fbdc 	bl	8009514 <quorem>
 8009d5c:	4629      	mov	r1, r5
 8009d5e:	4604      	mov	r4, r0
 8009d60:	4650      	mov	r0, sl
 8009d62:	f001 fb6b 	bl	800b43c <__mcmp>
 8009d66:	4659      	mov	r1, fp
 8009d68:	4606      	mov	r6, r0
 8009d6a:	4642      	mov	r2, r8
 8009d6c:	4648      	mov	r0, r9
 8009d6e:	f001 fb81 	bl	800b474 <__mdiff>
 8009d72:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8009d76:	9300      	str	r3, [sp, #0]
 8009d78:	68c3      	ldr	r3, [r0, #12]
 8009d7a:	4601      	mov	r1, r0
 8009d7c:	2b00      	cmp	r3, #0
 8009d7e:	f040 81d4 	bne.w	800a12a <_dtoa_r+0xaf2>
 8009d82:	9008      	str	r0, [sp, #32]
 8009d84:	4650      	mov	r0, sl
 8009d86:	f001 fb59 	bl	800b43c <__mcmp>
 8009d8a:	9a08      	ldr	r2, [sp, #32]
 8009d8c:	9007      	str	r0, [sp, #28]
 8009d8e:	4611      	mov	r1, r2
 8009d90:	4648      	mov	r0, r9
 8009d92:	f001 f963 	bl	800b05c <_Bfree>
 8009d96:	9b07      	ldr	r3, [sp, #28]
 8009d98:	b933      	cbnz	r3, 8009da8 <_dtoa_r+0x770>
 8009d9a:	9a02      	ldr	r2, [sp, #8]
 8009d9c:	b922      	cbnz	r2, 8009da8 <_dtoa_r+0x770>
 8009d9e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8009da0:	2b00      	cmp	r3, #0
 8009da2:	f000 8319 	beq.w	800a3d8 <_dtoa_r+0xda0>
 8009da6:	9b02      	ldr	r3, [sp, #8]
 8009da8:	2e00      	cmp	r6, #0
 8009daa:	f2c0 821c 	blt.w	800a1e6 <_dtoa_r+0xbae>
 8009dae:	d105      	bne.n	8009dbc <_dtoa_r+0x784>
 8009db0:	9a02      	ldr	r2, [sp, #8]
 8009db2:	b91a      	cbnz	r2, 8009dbc <_dtoa_r+0x784>
 8009db4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8009db6:	2a00      	cmp	r2, #0
 8009db8:	f000 8215 	beq.w	800a1e6 <_dtoa_r+0xbae>
 8009dbc:	2b00      	cmp	r3, #0
 8009dbe:	f107 0401 	add.w	r4, r7, #1
 8009dc2:	f300 8225 	bgt.w	800a210 <_dtoa_r+0xbd8>
 8009dc6:	9b00      	ldr	r3, [sp, #0]
 8009dc8:	703b      	strb	r3, [r7, #0]
 8009dca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8009dcc:	42bb      	cmp	r3, r7
 8009dce:	f000 8230 	beq.w	800a232 <_dtoa_r+0xbfa>
 8009dd2:	4651      	mov	r1, sl
 8009dd4:	2300      	movs	r3, #0
 8009dd6:	220a      	movs	r2, #10
 8009dd8:	4648      	mov	r0, r9
 8009dda:	f001 f949 	bl	800b070 <__multadd>
 8009dde:	4545      	cmp	r5, r8
 8009de0:	4682      	mov	sl, r0
 8009de2:	4629      	mov	r1, r5
 8009de4:	f04f 0300 	mov.w	r3, #0
 8009de8:	f04f 020a 	mov.w	r2, #10
 8009dec:	4648      	mov	r0, r9
 8009dee:	f000 8196 	beq.w	800a11e <_dtoa_r+0xae6>
 8009df2:	f001 f93d 	bl	800b070 <__multadd>
 8009df6:	4641      	mov	r1, r8
 8009df8:	4605      	mov	r5, r0
 8009dfa:	2300      	movs	r3, #0
 8009dfc:	220a      	movs	r2, #10
 8009dfe:	4648      	mov	r0, r9
 8009e00:	f001 f936 	bl	800b070 <__multadd>
 8009e04:	4627      	mov	r7, r4
 8009e06:	4680      	mov	r8, r0
 8009e08:	e7a4      	b.n	8009d54 <_dtoa_r+0x71c>
 8009e0a:	4631      	mov	r1, r6
 8009e0c:	4650      	mov	r0, sl
 8009e0e:	f001 fb15 	bl	800b43c <__mcmp>
 8009e12:	2800      	cmp	r0, #0
 8009e14:	da81      	bge.n	8009d1a <_dtoa_r+0x6e2>
 8009e16:	9f06      	ldr	r7, [sp, #24]
 8009e18:	4651      	mov	r1, sl
 8009e1a:	2300      	movs	r3, #0
 8009e1c:	220a      	movs	r2, #10
 8009e1e:	4648      	mov	r0, r9
 8009e20:	3f01      	subs	r7, #1
 8009e22:	9706      	str	r7, [sp, #24]
 8009e24:	f001 f924 	bl	800b070 <__multadd>
 8009e28:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8009e2a:	4682      	mov	sl, r0
 8009e2c:	2b00      	cmp	r3, #0
 8009e2e:	f040 82eb 	bne.w	800a408 <_dtoa_r+0xdd0>
 8009e32:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8009e34:	2b00      	cmp	r3, #0
 8009e36:	f340 82f3 	ble.w	800a420 <_dtoa_r+0xde8>
 8009e3a:	9309      	str	r3, [sp, #36]	; 0x24
 8009e3c:	465c      	mov	r4, fp
 8009e3e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8009e42:	e002      	b.n	8009e4a <_dtoa_r+0x812>
 8009e44:	f001 f914 	bl	800b070 <__multadd>
 8009e48:	4682      	mov	sl, r0
 8009e4a:	4631      	mov	r1, r6
 8009e4c:	4650      	mov	r0, sl
 8009e4e:	f7ff fb61 	bl	8009514 <quorem>
 8009e52:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8009e56:	f804 7b01 	strb.w	r7, [r4], #1
 8009e5a:	eba4 030b 	sub.w	r3, r4, fp
 8009e5e:	4598      	cmp	r8, r3
 8009e60:	f04f 020a 	mov.w	r2, #10
 8009e64:	f04f 0300 	mov.w	r3, #0
 8009e68:	4651      	mov	r1, sl
 8009e6a:	4648      	mov	r0, r9
 8009e6c:	dcea      	bgt.n	8009e44 <_dtoa_r+0x80c>
 8009e6e:	2300      	movs	r3, #0
 8009e70:	9700      	str	r7, [sp, #0]
 8009e72:	9302      	str	r3, [sp, #8]
 8009e74:	4651      	mov	r1, sl
 8009e76:	2201      	movs	r2, #1
 8009e78:	4648      	mov	r0, r9
 8009e7a:	f001 fa89 	bl	800b390 <__lshift>
 8009e7e:	4631      	mov	r1, r6
 8009e80:	4682      	mov	sl, r0
 8009e82:	f001 fadb 	bl	800b43c <__mcmp>
 8009e86:	2800      	cmp	r0, #0
 8009e88:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8009e8c:	dc14      	bgt.n	8009eb8 <_dtoa_r+0x880>
 8009e8e:	d108      	bne.n	8009ea2 <_dtoa_r+0x86a>
 8009e90:	9b00      	ldr	r3, [sp, #0]
 8009e92:	07db      	lsls	r3, r3, #31
 8009e94:	d410      	bmi.n	8009eb8 <_dtoa_r+0x880>
 8009e96:	e004      	b.n	8009ea2 <_dtoa_r+0x86a>
 8009e98:	40240000 	.word	0x40240000
 8009e9c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8009ea0:	461c      	mov	r4, r3
 8009ea2:	2a30      	cmp	r2, #48	; 0x30
 8009ea4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8009ea8:	d0f8      	beq.n	8009e9c <_dtoa_r+0x864>
 8009eaa:	e00b      	b.n	8009ec4 <_dtoa_r+0x88c>
 8009eac:	459b      	cmp	fp, r3
 8009eae:	f000 814e 	beq.w	800a14e <_dtoa_r+0xb16>
 8009eb2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8009eb6:	461c      	mov	r4, r3
 8009eb8:	2a39      	cmp	r2, #57	; 0x39
 8009eba:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8009ebe:	d0f5      	beq.n	8009eac <_dtoa_r+0x874>
 8009ec0:	3201      	adds	r2, #1
 8009ec2:	701a      	strb	r2, [r3, #0]
 8009ec4:	4631      	mov	r1, r6
 8009ec6:	4648      	mov	r0, r9
 8009ec8:	f001 f8c8 	bl	800b05c <_Bfree>
 8009ecc:	b155      	cbz	r5, 8009ee4 <_dtoa_r+0x8ac>
 8009ece:	9902      	ldr	r1, [sp, #8]
 8009ed0:	b121      	cbz	r1, 8009edc <_dtoa_r+0x8a4>
 8009ed2:	42a9      	cmp	r1, r5
 8009ed4:	d002      	beq.n	8009edc <_dtoa_r+0x8a4>
 8009ed6:	4648      	mov	r0, r9
 8009ed8:	f001 f8c0 	bl	800b05c <_Bfree>
 8009edc:	4629      	mov	r1, r5
 8009ede:	4648      	mov	r0, r9
 8009ee0:	f001 f8bc 	bl	800b05c <_Bfree>
 8009ee4:	4651      	mov	r1, sl
 8009ee6:	4648      	mov	r0, r9
 8009ee8:	f001 f8b8 	bl	800b05c <_Bfree>
 8009eec:	2200      	movs	r2, #0
 8009eee:	9b06      	ldr	r3, [sp, #24]
 8009ef0:	7022      	strb	r2, [r4, #0]
 8009ef2:	9a05      	ldr	r2, [sp, #20]
 8009ef4:	3301      	adds	r3, #1
 8009ef6:	6013      	str	r3, [r2, #0]
 8009ef8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8009efa:	2b00      	cmp	r3, #0
 8009efc:	f43f abdb 	beq.w	80096b6 <_dtoa_r+0x7e>
 8009f00:	4658      	mov	r0, fp
 8009f02:	601c      	str	r4, [r3, #0]
 8009f04:	b01b      	add	sp, #108	; 0x6c
 8009f06:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009f0a:	201c      	movs	r0, #28
 8009f0c:	e6eb      	b.n	8009ce6 <_dtoa_r+0x6ae>
 8009f0e:	4601      	mov	r1, r0
 8009f10:	4648      	mov	r0, r9
 8009f12:	f001 f9ed 	bl	800b2f0 <__pow5mult>
 8009f16:	9b02      	ldr	r3, [sp, #8]
 8009f18:	2b01      	cmp	r3, #1
 8009f1a:	4606      	mov	r6, r0
 8009f1c:	f340 80d4 	ble.w	800a0c8 <_dtoa_r+0xa90>
 8009f20:	2300      	movs	r3, #0
 8009f22:	930c      	str	r3, [sp, #48]	; 0x30
 8009f24:	6933      	ldr	r3, [r6, #16]
 8009f26:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8009f2a:	6918      	ldr	r0, [r3, #16]
 8009f2c:	f001 f8e0 	bl	800b0f0 <__hi0bits>
 8009f30:	f1c0 0020 	rsb	r0, r0, #32
 8009f34:	e6cb      	b.n	8009cce <_dtoa_r+0x696>
 8009f36:	900d      	str	r0, [sp, #52]	; 0x34
 8009f38:	e42a      	b.n	8009790 <_dtoa_r+0x158>
 8009f3a:	2501      	movs	r5, #1
 8009f3c:	e440      	b.n	80097c0 <_dtoa_r+0x188>
 8009f3e:	f1c3 0820 	rsb	r8, r3, #32
 8009f42:	9b00      	ldr	r3, [sp, #0]
 8009f44:	fa03 f008 	lsl.w	r0, r3, r8
 8009f48:	f7ff bbd8 	b.w	80096fc <_dtoa_r+0xc4>
 8009f4c:	2300      	movs	r3, #0
 8009f4e:	930a      	str	r3, [sp, #40]	; 0x28
 8009f50:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8009f54:	4413      	add	r3, r2
 8009f56:	930e      	str	r3, [sp, #56]	; 0x38
 8009f58:	3301      	adds	r3, #1
 8009f5a:	2b01      	cmp	r3, #1
 8009f5c:	461e      	mov	r6, r3
 8009f5e:	9309      	str	r3, [sp, #36]	; 0x24
 8009f60:	bfb8      	it	lt
 8009f62:	2601      	movlt	r6, #1
 8009f64:	2100      	movs	r1, #0
 8009f66:	2e17      	cmp	r6, #23
 8009f68:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8009f6c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8009f6e:	f77f ac89 	ble.w	8009884 <_dtoa_r+0x24c>
 8009f72:	2201      	movs	r2, #1
 8009f74:	2304      	movs	r3, #4
 8009f76:	005b      	lsls	r3, r3, #1
 8009f78:	f103 0014 	add.w	r0, r3, #20
 8009f7c:	42b0      	cmp	r0, r6
 8009f7e:	4611      	mov	r1, r2
 8009f80:	f102 0201 	add.w	r2, r2, #1
 8009f84:	d9f7      	bls.n	8009f76 <_dtoa_r+0x93e>
 8009f86:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8009f8a:	e47b      	b.n	8009884 <_dtoa_r+0x24c>
 8009f8c:	2300      	movs	r3, #0
 8009f8e:	930a      	str	r3, [sp, #40]	; 0x28
 8009f90:	9e07      	ldr	r6, [sp, #28]
 8009f92:	2e00      	cmp	r6, #0
 8009f94:	f340 80e2 	ble.w	800a15c <_dtoa_r+0xb24>
 8009f98:	960e      	str	r6, [sp, #56]	; 0x38
 8009f9a:	9609      	str	r6, [sp, #36]	; 0x24
 8009f9c:	e7e2      	b.n	8009f64 <_dtoa_r+0x92c>
 8009f9e:	2301      	movs	r3, #1
 8009fa0:	930a      	str	r3, [sp, #40]	; 0x28
 8009fa2:	e7f5      	b.n	8009f90 <_dtoa_r+0x958>
 8009fa4:	9b00      	ldr	r3, [sp, #0]
 8009fa6:	2b00      	cmp	r3, #0
 8009fa8:	f47f ae90 	bne.w	8009ccc <_dtoa_r+0x694>
 8009fac:	e9dd 1200 	ldrd	r1, r2, [sp]
 8009fb0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8009fb4:	2b00      	cmp	r3, #0
 8009fb6:	f040 8192 	bne.w	800a2de <_dtoa_r+0xca6>
 8009fba:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8009fbe:	0d1b      	lsrs	r3, r3, #20
 8009fc0:	051b      	lsls	r3, r3, #20
 8009fc2:	b12b      	cbz	r3, 8009fd0 <_dtoa_r+0x998>
 8009fc4:	9b08      	ldr	r3, [sp, #32]
 8009fc6:	3301      	adds	r3, #1
 8009fc8:	9308      	str	r3, [sp, #32]
 8009fca:	f108 0801 	add.w	r8, r8, #1
 8009fce:	2301      	movs	r3, #1
 8009fd0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8009fd2:	930c      	str	r3, [sp, #48]	; 0x30
 8009fd4:	2a00      	cmp	r2, #0
 8009fd6:	f43f ae79 	beq.w	8009ccc <_dtoa_r+0x694>
 8009fda:	e7a3      	b.n	8009f24 <_dtoa_r+0x8ec>
 8009fdc:	463a      	mov	r2, r7
 8009fde:	4629      	mov	r1, r5
 8009fe0:	4648      	mov	r0, r9
 8009fe2:	f001 f985 	bl	800b2f0 <__pow5mult>
 8009fe6:	4652      	mov	r2, sl
 8009fe8:	4601      	mov	r1, r0
 8009fea:	4605      	mov	r5, r0
 8009fec:	4648      	mov	r0, r9
 8009fee:	f001 f8d9 	bl	800b1a4 <__multiply>
 8009ff2:	4651      	mov	r1, sl
 8009ff4:	4607      	mov	r7, r0
 8009ff6:	4648      	mov	r0, r9
 8009ff8:	f001 f830 	bl	800b05c <_Bfree>
 8009ffc:	46ba      	mov	sl, r7
 8009ffe:	2e00      	cmp	r6, #0
 800a000:	f43f ae57 	beq.w	8009cb2 <_dtoa_r+0x67a>
 800a004:	e64f      	b.n	8009ca6 <_dtoa_r+0x66e>
 800a006:	4629      	mov	r1, r5
 800a008:	4622      	mov	r2, r4
 800a00a:	4648      	mov	r0, r9
 800a00c:	f001 f9c0 	bl	800b390 <__lshift>
 800a010:	4605      	mov	r5, r0
 800a012:	e68d      	b.n	8009d30 <_dtoa_r+0x6f8>
 800a014:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800a016:	2a00      	cmp	r2, #0
 800a018:	f000 815d 	beq.w	800a2d6 <_dtoa_r+0xc9e>
 800a01c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 800a020:	9a08      	ldr	r2, [sp, #32]
 800a022:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 800a024:	4614      	mov	r4, r2
 800a026:	441a      	add	r2, r3
 800a028:	4498      	add	r8, r3
 800a02a:	9208      	str	r2, [sp, #32]
 800a02c:	e5f7      	b.n	8009c1e <_dtoa_r+0x5e6>
 800a02e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800a030:	2b00      	cmp	r3, #0
 800a032:	f73f ad3e 	bgt.w	8009ab2 <_dtoa_r+0x47a>
 800a036:	f040 80bc 	bne.w	800a1b2 <_dtoa_r+0xb7a>
 800a03a:	ec51 0b17 	vmov	r0, r1, d7
 800a03e:	2200      	movs	r2, #0
 800a040:	4bb2      	ldr	r3, [pc, #712]	; (800a30c <_dtoa_r+0xcd4>)
 800a042:	f7f6 fdd9 	bl	8000bf8 <__aeabi_dmul>
 800a046:	e9dd 2300 	ldrd	r2, r3, [sp]
 800a04a:	f7f7 f85b 	bl	8001104 <__aeabi_dcmpge>
 800a04e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 800a050:	4635      	mov	r5, r6
 800a052:	2800      	cmp	r0, #0
 800a054:	d176      	bne.n	800a144 <_dtoa_r+0xb0c>
 800a056:	9a06      	ldr	r2, [sp, #24]
 800a058:	2331      	movs	r3, #49	; 0x31
 800a05a:	3201      	adds	r2, #1
 800a05c:	9206      	str	r2, [sp, #24]
 800a05e:	f88b 3000 	strb.w	r3, [fp]
 800a062:	f10b 0401 	add.w	r4, fp, #1
 800a066:	4631      	mov	r1, r6
 800a068:	4648      	mov	r0, r9
 800a06a:	f000 fff7 	bl	800b05c <_Bfree>
 800a06e:	2d00      	cmp	r5, #0
 800a070:	f47f af34 	bne.w	8009edc <_dtoa_r+0x8a4>
 800a074:	e736      	b.n	8009ee4 <_dtoa_r+0x8ac>
 800a076:	f000 8142 	beq.w	800a2fe <_dtoa_r+0xcc6>
 800a07a:	9b06      	ldr	r3, [sp, #24]
 800a07c:	425c      	negs	r4, r3
 800a07e:	4ba4      	ldr	r3, [pc, #656]	; (800a310 <_dtoa_r+0xcd8>)
 800a080:	f004 020f 	and.w	r2, r4, #15
 800a084:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800a088:	e9d3 2300 	ldrd	r2, r3, [r3]
 800a08c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800a090:	f7f6 fdb2 	bl	8000bf8 <__aeabi_dmul>
 800a094:	1124      	asrs	r4, r4, #4
 800a096:	e9cd 0100 	strd	r0, r1, [sp]
 800a09a:	f000 81c6 	beq.w	800a42a <_dtoa_r+0xdf2>
 800a09e:	4d9d      	ldr	r5, [pc, #628]	; (800a314 <_dtoa_r+0xcdc>)
 800a0a0:	2300      	movs	r3, #0
 800a0a2:	2602      	movs	r6, #2
 800a0a4:	07e7      	lsls	r7, r4, #31
 800a0a6:	d505      	bpl.n	800a0b4 <_dtoa_r+0xa7c>
 800a0a8:	e9d5 2300 	ldrd	r2, r3, [r5]
 800a0ac:	f7f6 fda4 	bl	8000bf8 <__aeabi_dmul>
 800a0b0:	3601      	adds	r6, #1
 800a0b2:	2301      	movs	r3, #1
 800a0b4:	1064      	asrs	r4, r4, #1
 800a0b6:	f105 0508 	add.w	r5, r5, #8
 800a0ba:	d1f3      	bne.n	800a0a4 <_dtoa_r+0xa6c>
 800a0bc:	2b00      	cmp	r3, #0
 800a0be:	f43f ac27 	beq.w	8009910 <_dtoa_r+0x2d8>
 800a0c2:	e9cd 0100 	strd	r0, r1, [sp]
 800a0c6:	e423      	b.n	8009910 <_dtoa_r+0x2d8>
 800a0c8:	9b00      	ldr	r3, [sp, #0]
 800a0ca:	2b00      	cmp	r3, #0
 800a0cc:	f43f af6e 	beq.w	8009fac <_dtoa_r+0x974>
 800a0d0:	e726      	b.n	8009f20 <_dtoa_r+0x8e8>
 800a0d2:	6869      	ldr	r1, [r5, #4]
 800a0d4:	4648      	mov	r0, r9
 800a0d6:	f000 ff9b 	bl	800b010 <_Balloc>
 800a0da:	692b      	ldr	r3, [r5, #16]
 800a0dc:	3302      	adds	r3, #2
 800a0de:	009a      	lsls	r2, r3, #2
 800a0e0:	4604      	mov	r4, r0
 800a0e2:	f105 010c 	add.w	r1, r5, #12
 800a0e6:	300c      	adds	r0, #12
 800a0e8:	f7f6 fa58 	bl	800059c <memcpy>
 800a0ec:	4621      	mov	r1, r4
 800a0ee:	2201      	movs	r2, #1
 800a0f0:	4648      	mov	r0, r9
 800a0f2:	f001 f94d 	bl	800b390 <__lshift>
 800a0f6:	4680      	mov	r8, r0
 800a0f8:	e61f      	b.n	8009d3a <_dtoa_r+0x702>
 800a0fa:	2400      	movs	r4, #0
 800a0fc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 800a100:	4621      	mov	r1, r4
 800a102:	4648      	mov	r0, r9
 800a104:	f000 ff84 	bl	800b010 <_Balloc>
 800a108:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800a10c:	930e      	str	r3, [sp, #56]	; 0x38
 800a10e:	9309      	str	r3, [sp, #36]	; 0x24
 800a110:	2301      	movs	r3, #1
 800a112:	4683      	mov	fp, r0
 800a114:	9407      	str	r4, [sp, #28]
 800a116:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800a11a:	930a      	str	r3, [sp, #40]	; 0x28
 800a11c:	e4b6      	b.n	8009a8c <_dtoa_r+0x454>
 800a11e:	f000 ffa7 	bl	800b070 <__multadd>
 800a122:	4627      	mov	r7, r4
 800a124:	4605      	mov	r5, r0
 800a126:	4680      	mov	r8, r0
 800a128:	e614      	b.n	8009d54 <_dtoa_r+0x71c>
 800a12a:	4648      	mov	r0, r9
 800a12c:	f000 ff96 	bl	800b05c <_Bfree>
 800a130:	2301      	movs	r3, #1
 800a132:	e639      	b.n	8009da8 <_dtoa_r+0x770>
 800a134:	9b02      	ldr	r3, [sp, #8]
 800a136:	2b02      	cmp	r3, #2
 800a138:	f77f adf3 	ble.w	8009d22 <_dtoa_r+0x6ea>
 800a13c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800a13e:	2b00      	cmp	r3, #0
 800a140:	f000 80cf 	beq.w	800a2e2 <_dtoa_r+0xcaa>
 800a144:	9b07      	ldr	r3, [sp, #28]
 800a146:	43db      	mvns	r3, r3
 800a148:	9306      	str	r3, [sp, #24]
 800a14a:	465c      	mov	r4, fp
 800a14c:	e78b      	b.n	800a066 <_dtoa_r+0xa2e>
 800a14e:	9a06      	ldr	r2, [sp, #24]
 800a150:	2331      	movs	r3, #49	; 0x31
 800a152:	3201      	adds	r2, #1
 800a154:	9206      	str	r2, [sp, #24]
 800a156:	f88b 3000 	strb.w	r3, [fp]
 800a15a:	e6b3      	b.n	8009ec4 <_dtoa_r+0x88c>
 800a15c:	2401      	movs	r4, #1
 800a15e:	9409      	str	r4, [sp, #36]	; 0x24
 800a160:	9407      	str	r4, [sp, #28]
 800a162:	f7ff bb8b 	b.w	800987c <_dtoa_r+0x244>
 800a166:	4630      	mov	r0, r6
 800a168:	f7f6 fcdc 	bl	8000b24 <__aeabi_i2d>
 800a16c:	e9dd 2300 	ldrd	r2, r3, [sp]
 800a170:	f7f6 fd42 	bl	8000bf8 <__aeabi_dmul>
 800a174:	2200      	movs	r2, #0
 800a176:	4b68      	ldr	r3, [pc, #416]	; (800a318 <_dtoa_r+0xce0>)
 800a178:	f7f6 fb88 	bl	800088c <__adddf3>
 800a17c:	4606      	mov	r6, r0
 800a17e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800a182:	2200      	movs	r2, #0
 800a184:	4b61      	ldr	r3, [pc, #388]	; (800a30c <_dtoa_r+0xcd4>)
 800a186:	e9dd 0100 	ldrd	r0, r1, [sp]
 800a18a:	f7f6 fb7d 	bl	8000888 <__aeabi_dsub>
 800a18e:	4632      	mov	r2, r6
 800a190:	463b      	mov	r3, r7
 800a192:	4604      	mov	r4, r0
 800a194:	460d      	mov	r5, r1
 800a196:	f7f6 ffbf 	bl	8001118 <__aeabi_dcmpgt>
 800a19a:	2800      	cmp	r0, #0
 800a19c:	d14f      	bne.n	800a23e <_dtoa_r+0xc06>
 800a19e:	4632      	mov	r2, r6
 800a1a0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 800a1a4:	4620      	mov	r0, r4
 800a1a6:	4629      	mov	r1, r5
 800a1a8:	f7f6 ff98 	bl	80010dc <__aeabi_dcmplt>
 800a1ac:	2800      	cmp	r0, #0
 800a1ae:	f43f ac69 	beq.w	8009a84 <_dtoa_r+0x44c>
 800a1b2:	2600      	movs	r6, #0
 800a1b4:	4635      	mov	r5, r6
 800a1b6:	e7c5      	b.n	800a144 <_dtoa_r+0xb0c>
 800a1b8:	2301      	movs	r3, #1
 800a1ba:	930a      	str	r3, [sp, #40]	; 0x28
 800a1bc:	e6c8      	b.n	8009f50 <_dtoa_r+0x918>
 800a1be:	4651      	mov	r1, sl
 800a1c0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800a1c2:	4648      	mov	r0, r9
 800a1c4:	f001 f894 	bl	800b2f0 <__pow5mult>
 800a1c8:	4682      	mov	sl, r0
 800a1ca:	e572      	b.n	8009cb2 <_dtoa_r+0x67a>
 800a1cc:	f8dd a000 	ldr.w	sl, [sp]
 800a1d0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800a1d4:	e686      	b.n	8009ee4 <_dtoa_r+0x8ac>
 800a1d6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800a1d8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800a1da:	1afb      	subs	r3, r7, r3
 800a1dc:	441a      	add	r2, r3
 800a1de:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800a1e2:	2700      	movs	r7, #0
 800a1e4:	e512      	b.n	8009c0c <_dtoa_r+0x5d4>
 800a1e6:	2b00      	cmp	r3, #0
 800a1e8:	9402      	str	r4, [sp, #8]
 800a1ea:	465e      	mov	r6, fp
 800a1ec:	f107 0401 	add.w	r4, r7, #1
 800a1f0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800a1f4:	f300 80ba 	bgt.w	800a36c <_dtoa_r+0xd34>
 800a1f8:	9b00      	ldr	r3, [sp, #0]
 800a1fa:	9502      	str	r5, [sp, #8]
 800a1fc:	703b      	strb	r3, [r7, #0]
 800a1fe:	4645      	mov	r5, r8
 800a200:	e660      	b.n	8009ec4 <_dtoa_r+0x88c>
 800a202:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800a206:	2602      	movs	r6, #2
 800a208:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800a20c:	f7ff bb67 	b.w	80098de <_dtoa_r+0x2a6>
 800a210:	9b00      	ldr	r3, [sp, #0]
 800a212:	2b39      	cmp	r3, #57	; 0x39
 800a214:	465e      	mov	r6, fp
 800a216:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800a21a:	f000 80b9 	beq.w	800a390 <_dtoa_r+0xd58>
 800a21e:	9b00      	ldr	r3, [sp, #0]
 800a220:	9502      	str	r5, [sp, #8]
 800a222:	3301      	adds	r3, #1
 800a224:	703b      	strb	r3, [r7, #0]
 800a226:	4645      	mov	r5, r8
 800a228:	e64c      	b.n	8009ec4 <_dtoa_r+0x88c>
 800a22a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800a22e:	1a9c      	subs	r4, r3, r2
 800a230:	e4f5      	b.n	8009c1e <_dtoa_r+0x5e6>
 800a232:	465e      	mov	r6, fp
 800a234:	9502      	str	r5, [sp, #8]
 800a236:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800a23a:	4645      	mov	r5, r8
 800a23c:	e61a      	b.n	8009e74 <_dtoa_r+0x83c>
 800a23e:	2600      	movs	r6, #0
 800a240:	4635      	mov	r5, r6
 800a242:	e708      	b.n	800a056 <_dtoa_r+0xa1e>
 800a244:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 800a248:	e9dd 0100 	ldrd	r0, r1, [sp]
 800a24c:	f7f6 fcd4 	bl	8000bf8 <__aeabi_dmul>
 800a250:	9b12      	ldr	r3, [sp, #72]	; 0x48
 800a252:	f88b 5000 	strb.w	r5, [fp]
 800a256:	2b01      	cmp	r3, #1
 800a258:	e9cd 0100 	strd	r0, r1, [sp]
 800a25c:	d020      	beq.n	800a2a0 <_dtoa_r+0xc68>
 800a25e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 800a260:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 800a264:	445b      	add	r3, fp
 800a266:	4698      	mov	r8, r3
 800a268:	2200      	movs	r2, #0
 800a26a:	4b2c      	ldr	r3, [pc, #176]	; (800a31c <_dtoa_r+0xce4>)
 800a26c:	4630      	mov	r0, r6
 800a26e:	4639      	mov	r1, r7
 800a270:	f7f6 fcc2 	bl	8000bf8 <__aeabi_dmul>
 800a274:	460f      	mov	r7, r1
 800a276:	4606      	mov	r6, r0
 800a278:	f7f6 ff6e 	bl	8001158 <__aeabi_d2iz>
 800a27c:	4605      	mov	r5, r0
 800a27e:	f7f6 fc51 	bl	8000b24 <__aeabi_i2d>
 800a282:	3530      	adds	r5, #48	; 0x30
 800a284:	4602      	mov	r2, r0
 800a286:	460b      	mov	r3, r1
 800a288:	4630      	mov	r0, r6
 800a28a:	4639      	mov	r1, r7
 800a28c:	f7f6 fafc 	bl	8000888 <__aeabi_dsub>
 800a290:	f804 5b01 	strb.w	r5, [r4], #1
 800a294:	4544      	cmp	r4, r8
 800a296:	4606      	mov	r6, r0
 800a298:	460f      	mov	r7, r1
 800a29a:	d1e5      	bne.n	800a268 <_dtoa_r+0xc30>
 800a29c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 800a2a0:	4b1f      	ldr	r3, [pc, #124]	; (800a320 <_dtoa_r+0xce8>)
 800a2a2:	2200      	movs	r2, #0
 800a2a4:	e9dd 0100 	ldrd	r0, r1, [sp]
 800a2a8:	f7f6 faf0 	bl	800088c <__adddf3>
 800a2ac:	4632      	mov	r2, r6
 800a2ae:	463b      	mov	r3, r7
 800a2b0:	f7f6 ff14 	bl	80010dc <__aeabi_dcmplt>
 800a2b4:	2800      	cmp	r0, #0
 800a2b6:	d070      	beq.n	800a39a <_dtoa_r+0xd62>
 800a2b8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800a2ba:	9306      	str	r3, [sp, #24]
 800a2bc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800a2c0:	e48f      	b.n	8009be2 <_dtoa_r+0x5aa>
 800a2c2:	2330      	movs	r3, #48	; 0x30
 800a2c4:	f88b 3000 	strb.w	r3, [fp]
 800a2c8:	9b06      	ldr	r3, [sp, #24]
 800a2ca:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800a2ce:	3301      	adds	r3, #1
 800a2d0:	9306      	str	r3, [sp, #24]
 800a2d2:	465b      	mov	r3, fp
 800a2d4:	e489      	b.n	8009bea <_dtoa_r+0x5b2>
 800a2d6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 800a2d8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800a2dc:	e6a0      	b.n	800a020 <_dtoa_r+0x9e8>
 800a2de:	2300      	movs	r3, #0
 800a2e0:	e676      	b.n	8009fd0 <_dtoa_r+0x998>
 800a2e2:	4631      	mov	r1, r6
 800a2e4:	2205      	movs	r2, #5
 800a2e6:	4648      	mov	r0, r9
 800a2e8:	f000 fec2 	bl	800b070 <__multadd>
 800a2ec:	4601      	mov	r1, r0
 800a2ee:	4606      	mov	r6, r0
 800a2f0:	4650      	mov	r0, sl
 800a2f2:	f001 f8a3 	bl	800b43c <__mcmp>
 800a2f6:	2800      	cmp	r0, #0
 800a2f8:	f73f aead 	bgt.w	800a056 <_dtoa_r+0xa1e>
 800a2fc:	e722      	b.n	800a144 <_dtoa_r+0xb0c>
 800a2fe:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800a302:	2602      	movs	r6, #2
 800a304:	ed8d 7b00 	vstr	d7, [sp]
 800a308:	f7ff bb02 	b.w	8009910 <_dtoa_r+0x2d8>
 800a30c:	40140000 	.word	0x40140000
 800a310:	0800d0b0 	.word	0x0800d0b0
 800a314:	0800d088 	.word	0x0800d088
 800a318:	401c0000 	.word	0x401c0000
 800a31c:	40240000 	.word	0x40240000
 800a320:	3fe00000 	.word	0x3fe00000
 800a324:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800a326:	2b00      	cmp	r3, #0
 800a328:	f43f af1d 	beq.w	800a166 <_dtoa_r+0xb2e>
 800a32c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800a32e:	2c00      	cmp	r4, #0
 800a330:	f77f aba8 	ble.w	8009a84 <_dtoa_r+0x44c>
 800a334:	2200      	movs	r2, #0
 800a336:	4b45      	ldr	r3, [pc, #276]	; (800a44c <_dtoa_r+0xe14>)
 800a338:	e9dd 0100 	ldrd	r0, r1, [sp]
 800a33c:	f7f6 fc5c 	bl	8000bf8 <__aeabi_dmul>
 800a340:	e9cd 0100 	strd	r0, r1, [sp]
 800a344:	1c70      	adds	r0, r6, #1
 800a346:	f7f6 fbed 	bl	8000b24 <__aeabi_i2d>
 800a34a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800a34e:	f7f6 fc53 	bl	8000bf8 <__aeabi_dmul>
 800a352:	4b3f      	ldr	r3, [pc, #252]	; (800a450 <_dtoa_r+0xe18>)
 800a354:	2200      	movs	r2, #0
 800a356:	f7f6 fa99 	bl	800088c <__adddf3>
 800a35a:	9b06      	ldr	r3, [sp, #24]
 800a35c:	9412      	str	r4, [sp, #72]	; 0x48
 800a35e:	3b01      	subs	r3, #1
 800a360:	4606      	mov	r6, r0
 800a362:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800a366:	9316      	str	r3, [sp, #88]	; 0x58
 800a368:	f7ff baf3 	b.w	8009952 <_dtoa_r+0x31a>
 800a36c:	4651      	mov	r1, sl
 800a36e:	2201      	movs	r2, #1
 800a370:	4648      	mov	r0, r9
 800a372:	f001 f80d 	bl	800b390 <__lshift>
 800a376:	4631      	mov	r1, r6
 800a378:	4682      	mov	sl, r0
 800a37a:	f001 f85f 	bl	800b43c <__mcmp>
 800a37e:	2800      	cmp	r0, #0
 800a380:	dd3b      	ble.n	800a3fa <_dtoa_r+0xdc2>
 800a382:	9b00      	ldr	r3, [sp, #0]
 800a384:	2b39      	cmp	r3, #57	; 0x39
 800a386:	d003      	beq.n	800a390 <_dtoa_r+0xd58>
 800a388:	9b02      	ldr	r3, [sp, #8]
 800a38a:	3331      	adds	r3, #49	; 0x31
 800a38c:	9300      	str	r3, [sp, #0]
 800a38e:	e733      	b.n	800a1f8 <_dtoa_r+0xbc0>
 800a390:	2239      	movs	r2, #57	; 0x39
 800a392:	9502      	str	r5, [sp, #8]
 800a394:	703a      	strb	r2, [r7, #0]
 800a396:	4645      	mov	r5, r8
 800a398:	e58e      	b.n	8009eb8 <_dtoa_r+0x880>
 800a39a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800a39e:	2000      	movs	r0, #0
 800a3a0:	492c      	ldr	r1, [pc, #176]	; (800a454 <_dtoa_r+0xe1c>)
 800a3a2:	f7f6 fa71 	bl	8000888 <__aeabi_dsub>
 800a3a6:	4632      	mov	r2, r6
 800a3a8:	463b      	mov	r3, r7
 800a3aa:	f7f6 feb5 	bl	8001118 <__aeabi_dcmpgt>
 800a3ae:	b910      	cbnz	r0, 800a3b6 <_dtoa_r+0xd7e>
 800a3b0:	f7ff bb68 	b.w	8009a84 <_dtoa_r+0x44c>
 800a3b4:	4614      	mov	r4, r2
 800a3b6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800a3ba:	2b30      	cmp	r3, #48	; 0x30
 800a3bc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 800a3c0:	d0f8      	beq.n	800a3b4 <_dtoa_r+0xd7c>
 800a3c2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800a3c4:	9306      	str	r3, [sp, #24]
 800a3c6:	e58d      	b.n	8009ee4 <_dtoa_r+0x8ac>
 800a3c8:	46d9      	mov	r9, fp
 800a3ca:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800a3ce:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800a3d2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800a3d4:	9306      	str	r3, [sp, #24]
 800a3d6:	e404      	b.n	8009be2 <_dtoa_r+0x5aa>
 800a3d8:	9b00      	ldr	r3, [sp, #0]
 800a3da:	2b39      	cmp	r3, #57	; 0x39
 800a3dc:	4621      	mov	r1, r4
 800a3de:	4632      	mov	r2, r6
 800a3e0:	f107 0401 	add.w	r4, r7, #1
 800a3e4:	465e      	mov	r6, fp
 800a3e6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800a3ea:	d0d1      	beq.n	800a390 <_dtoa_r+0xd58>
 800a3ec:	2a00      	cmp	r2, #0
 800a3ee:	f77f af03 	ble.w	800a1f8 <_dtoa_r+0xbc0>
 800a3f2:	460b      	mov	r3, r1
 800a3f4:	3331      	adds	r3, #49	; 0x31
 800a3f6:	9300      	str	r3, [sp, #0]
 800a3f8:	e6fe      	b.n	800a1f8 <_dtoa_r+0xbc0>
 800a3fa:	f47f aefd 	bne.w	800a1f8 <_dtoa_r+0xbc0>
 800a3fe:	9b00      	ldr	r3, [sp, #0]
 800a400:	07da      	lsls	r2, r3, #31
 800a402:	f57f aef9 	bpl.w	800a1f8 <_dtoa_r+0xbc0>
 800a406:	e7bc      	b.n	800a382 <_dtoa_r+0xd4a>
 800a408:	4629      	mov	r1, r5
 800a40a:	2300      	movs	r3, #0
 800a40c:	220a      	movs	r2, #10
 800a40e:	4648      	mov	r0, r9
 800a410:	f000 fe2e 	bl	800b070 <__multadd>
 800a414:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800a416:	2b00      	cmp	r3, #0
 800a418:	4605      	mov	r5, r0
 800a41a:	dd09      	ble.n	800a430 <_dtoa_r+0xdf8>
 800a41c:	9309      	str	r3, [sp, #36]	; 0x24
 800a41e:	e484      	b.n	8009d2a <_dtoa_r+0x6f2>
 800a420:	9b02      	ldr	r3, [sp, #8]
 800a422:	2b02      	cmp	r3, #2
 800a424:	dc0e      	bgt.n	800a444 <_dtoa_r+0xe0c>
 800a426:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800a428:	e507      	b.n	8009e3a <_dtoa_r+0x802>
 800a42a:	2602      	movs	r6, #2
 800a42c:	f7ff ba70 	b.w	8009910 <_dtoa_r+0x2d8>
 800a430:	9b02      	ldr	r3, [sp, #8]
 800a432:	2b02      	cmp	r3, #2
 800a434:	dc06      	bgt.n	800a444 <_dtoa_r+0xe0c>
 800a436:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800a438:	e7f0      	b.n	800a41c <_dtoa_r+0xde4>
 800a43a:	f43f ac59 	beq.w	8009cf0 <_dtoa_r+0x6b8>
 800a43e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800a442:	e450      	b.n	8009ce6 <_dtoa_r+0x6ae>
 800a444:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800a446:	9309      	str	r3, [sp, #36]	; 0x24
 800a448:	e678      	b.n	800a13c <_dtoa_r+0xb04>
 800a44a:	bf00      	nop
 800a44c:	40240000 	.word	0x40240000
 800a450:	401c0000 	.word	0x401c0000
 800a454:	3fe00000 	.word	0x3fe00000

0800a458 <__sflush_r>:
 800a458:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800a45c:	b29a      	uxth	r2, r3
 800a45e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800a462:	460c      	mov	r4, r1
 800a464:	0711      	lsls	r1, r2, #28
 800a466:	4680      	mov	r8, r0
 800a468:	d444      	bmi.n	800a4f4 <__sflush_r+0x9c>
 800a46a:	6862      	ldr	r2, [r4, #4]
 800a46c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 800a470:	2a00      	cmp	r2, #0
 800a472:	81a3      	strh	r3, [r4, #12]
 800a474:	dd59      	ble.n	800a52a <__sflush_r+0xd2>
 800a476:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 800a478:	2d00      	cmp	r5, #0
 800a47a:	d053      	beq.n	800a524 <__sflush_r+0xcc>
 800a47c:	2200      	movs	r2, #0
 800a47e:	b29b      	uxth	r3, r3
 800a480:	f8d8 6000 	ldr.w	r6, [r8]
 800a484:	69e1      	ldr	r1, [r4, #28]
 800a486:	f8c8 2000 	str.w	r2, [r8]
 800a48a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800a48e:	f040 8083 	bne.w	800a598 <__sflush_r+0x140>
 800a492:	2301      	movs	r3, #1
 800a494:	4640      	mov	r0, r8
 800a496:	47a8      	blx	r5
 800a498:	1c42      	adds	r2, r0, #1
 800a49a:	d04a      	beq.n	800a532 <__sflush_r+0xda>
 800a49c:	89a3      	ldrh	r3, [r4, #12]
 800a49e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 800a4a0:	69e1      	ldr	r1, [r4, #28]
 800a4a2:	075b      	lsls	r3, r3, #29
 800a4a4:	d505      	bpl.n	800a4b2 <__sflush_r+0x5a>
 800a4a6:	6862      	ldr	r2, [r4, #4]
 800a4a8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800a4aa:	1a80      	subs	r0, r0, r2
 800a4ac:	b10b      	cbz	r3, 800a4b2 <__sflush_r+0x5a>
 800a4ae:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 800a4b0:	1ac0      	subs	r0, r0, r3
 800a4b2:	4602      	mov	r2, r0
 800a4b4:	2300      	movs	r3, #0
 800a4b6:	4640      	mov	r0, r8
 800a4b8:	47a8      	blx	r5
 800a4ba:	1c47      	adds	r7, r0, #1
 800a4bc:	d045      	beq.n	800a54a <__sflush_r+0xf2>
 800a4be:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a4c2:	6922      	ldr	r2, [r4, #16]
 800a4c4:	6022      	str	r2, [r4, #0]
 800a4c6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800a4ca:	2200      	movs	r2, #0
 800a4cc:	81a3      	strh	r3, [r4, #12]
 800a4ce:	04db      	lsls	r3, r3, #19
 800a4d0:	6062      	str	r2, [r4, #4]
 800a4d2:	d500      	bpl.n	800a4d6 <__sflush_r+0x7e>
 800a4d4:	6520      	str	r0, [r4, #80]	; 0x50
 800a4d6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800a4d8:	f8c8 6000 	str.w	r6, [r8]
 800a4dc:	b311      	cbz	r1, 800a524 <__sflush_r+0xcc>
 800a4de:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800a4e2:	4299      	cmp	r1, r3
 800a4e4:	d002      	beq.n	800a4ec <__sflush_r+0x94>
 800a4e6:	4640      	mov	r0, r8
 800a4e8:	f000 f9e0 	bl	800a8ac <_free_r>
 800a4ec:	2000      	movs	r0, #0
 800a4ee:	6320      	str	r0, [r4, #48]	; 0x30
 800a4f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800a4f4:	6926      	ldr	r6, [r4, #16]
 800a4f6:	b1ae      	cbz	r6, 800a524 <__sflush_r+0xcc>
 800a4f8:	6825      	ldr	r5, [r4, #0]
 800a4fa:	6026      	str	r6, [r4, #0]
 800a4fc:	0792      	lsls	r2, r2, #30
 800a4fe:	bf0c      	ite	eq
 800a500:	6963      	ldreq	r3, [r4, #20]
 800a502:	2300      	movne	r3, #0
 800a504:	1bad      	subs	r5, r5, r6
 800a506:	60a3      	str	r3, [r4, #8]
 800a508:	e00a      	b.n	800a520 <__sflush_r+0xc8>
 800a50a:	462b      	mov	r3, r5
 800a50c:	4632      	mov	r2, r6
 800a50e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800a510:	69e1      	ldr	r1, [r4, #28]
 800a512:	4640      	mov	r0, r8
 800a514:	47b8      	blx	r7
 800a516:	2800      	cmp	r0, #0
 800a518:	eba5 0500 	sub.w	r5, r5, r0
 800a51c:	4406      	add	r6, r0
 800a51e:	dd2b      	ble.n	800a578 <__sflush_r+0x120>
 800a520:	2d00      	cmp	r5, #0
 800a522:	dcf2      	bgt.n	800a50a <__sflush_r+0xb2>
 800a524:	2000      	movs	r0, #0
 800a526:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800a52a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800a52c:	2a00      	cmp	r2, #0
 800a52e:	dca2      	bgt.n	800a476 <__sflush_r+0x1e>
 800a530:	e7f8      	b.n	800a524 <__sflush_r+0xcc>
 800a532:	f8d8 3000 	ldr.w	r3, [r8]
 800a536:	2b00      	cmp	r3, #0
 800a538:	d0b0      	beq.n	800a49c <__sflush_r+0x44>
 800a53a:	2b1d      	cmp	r3, #29
 800a53c:	d001      	beq.n	800a542 <__sflush_r+0xea>
 800a53e:	2b16      	cmp	r3, #22
 800a540:	d12c      	bne.n	800a59c <__sflush_r+0x144>
 800a542:	f8c8 6000 	str.w	r6, [r8]
 800a546:	2000      	movs	r0, #0
 800a548:	e7ed      	b.n	800a526 <__sflush_r+0xce>
 800a54a:	f8d8 1000 	ldr.w	r1, [r8]
 800a54e:	291d      	cmp	r1, #29
 800a550:	d81a      	bhi.n	800a588 <__sflush_r+0x130>
 800a552:	4b15      	ldr	r3, [pc, #84]	; (800a5a8 <__sflush_r+0x150>)
 800a554:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800a558:	40cb      	lsrs	r3, r1
 800a55a:	43db      	mvns	r3, r3
 800a55c:	f013 0301 	ands.w	r3, r3, #1
 800a560:	d114      	bne.n	800a58c <__sflush_r+0x134>
 800a562:	6925      	ldr	r5, [r4, #16]
 800a564:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 800a568:	e9c4 5300 	strd	r5, r3, [r4]
 800a56c:	04d5      	lsls	r5, r2, #19
 800a56e:	81a2      	strh	r2, [r4, #12]
 800a570:	d5b1      	bpl.n	800a4d6 <__sflush_r+0x7e>
 800a572:	2900      	cmp	r1, #0
 800a574:	d1af      	bne.n	800a4d6 <__sflush_r+0x7e>
 800a576:	e7ad      	b.n	800a4d4 <__sflush_r+0x7c>
 800a578:	89a3      	ldrh	r3, [r4, #12]
 800a57a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800a57e:	81a3      	strh	r3, [r4, #12]
 800a580:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800a584:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800a588:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800a58c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800a590:	81a2      	strh	r2, [r4, #12]
 800a592:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800a596:	e7c6      	b.n	800a526 <__sflush_r+0xce>
 800a598:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800a59a:	e782      	b.n	800a4a2 <__sflush_r+0x4a>
 800a59c:	89a3      	ldrh	r3, [r4, #12]
 800a59e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800a5a2:	81a3      	strh	r3, [r4, #12]
 800a5a4:	e7bf      	b.n	800a526 <__sflush_r+0xce>
 800a5a6:	bf00      	nop
 800a5a8:	20400001 	.word	0x20400001

0800a5ac <_fflush_r>:
 800a5ac:	b538      	push	{r3, r4, r5, lr}
 800a5ae:	460d      	mov	r5, r1
 800a5b0:	4604      	mov	r4, r0
 800a5b2:	b108      	cbz	r0, 800a5b8 <_fflush_r+0xc>
 800a5b4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800a5b6:	b1a3      	cbz	r3, 800a5e2 <_fflush_r+0x36>
 800a5b8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800a5bc:	b1b8      	cbz	r0, 800a5ee <_fflush_r+0x42>
 800a5be:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800a5c0:	07db      	lsls	r3, r3, #31
 800a5c2:	d401      	bmi.n	800a5c8 <_fflush_r+0x1c>
 800a5c4:	0581      	lsls	r1, r0, #22
 800a5c6:	d51a      	bpl.n	800a5fe <_fflush_r+0x52>
 800a5c8:	4620      	mov	r0, r4
 800a5ca:	4629      	mov	r1, r5
 800a5cc:	f7ff ff44 	bl	800a458 <__sflush_r>
 800a5d0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800a5d2:	07da      	lsls	r2, r3, #31
 800a5d4:	4604      	mov	r4, r0
 800a5d6:	d402      	bmi.n	800a5de <_fflush_r+0x32>
 800a5d8:	89ab      	ldrh	r3, [r5, #12]
 800a5da:	059b      	lsls	r3, r3, #22
 800a5dc:	d50a      	bpl.n	800a5f4 <_fflush_r+0x48>
 800a5de:	4620      	mov	r0, r4
 800a5e0:	bd38      	pop	{r3, r4, r5, pc}
 800a5e2:	f000 f83f 	bl	800a664 <__sinit>
 800a5e6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800a5ea:	2800      	cmp	r0, #0
 800a5ec:	d1e7      	bne.n	800a5be <_fflush_r+0x12>
 800a5ee:	4604      	mov	r4, r0
 800a5f0:	4620      	mov	r0, r4
 800a5f2:	bd38      	pop	{r3, r4, r5, pc}
 800a5f4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800a5f6:	f000 fc17 	bl	800ae28 <__retarget_lock_release_recursive>
 800a5fa:	4620      	mov	r0, r4
 800a5fc:	bd38      	pop	{r3, r4, r5, pc}
 800a5fe:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800a600:	f000 fc10 	bl	800ae24 <__retarget_lock_acquire_recursive>
 800a604:	e7e0      	b.n	800a5c8 <_fflush_r+0x1c>
 800a606:	bf00      	nop

0800a608 <std>:
 800a608:	b510      	push	{r4, lr}
 800a60a:	2300      	movs	r3, #0
 800a60c:	4604      	mov	r4, r0
 800a60e:	8181      	strh	r1, [r0, #12]
 800a610:	81c2      	strh	r2, [r0, #14]
 800a612:	e9c0 3300 	strd	r3, r3, [r0]
 800a616:	6083      	str	r3, [r0, #8]
 800a618:	6643      	str	r3, [r0, #100]	; 0x64
 800a61a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800a61e:	6183      	str	r3, [r0, #24]
 800a620:	4619      	mov	r1, r3
 800a622:	2208      	movs	r2, #8
 800a624:	305c      	adds	r0, #92	; 0x5c
 800a626:	f7fb fffd 	bl	8006624 <memset>
 800a62a:	4807      	ldr	r0, [pc, #28]	; (800a648 <std+0x40>)
 800a62c:	4907      	ldr	r1, [pc, #28]	; (800a64c <std+0x44>)
 800a62e:	4a08      	ldr	r2, [pc, #32]	; (800a650 <std+0x48>)
 800a630:	4b08      	ldr	r3, [pc, #32]	; (800a654 <std+0x4c>)
 800a632:	62e3      	str	r3, [r4, #44]	; 0x2c
 800a634:	e9c4 4007 	strd	r4, r0, [r4, #28]
 800a638:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800a63c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 800a640:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800a644:	f000 bbea 	b.w	800ae1c <__retarget_lock_init_recursive>
 800a648:	0800b721 	.word	0x0800b721
 800a64c:	0800b745 	.word	0x0800b745
 800a650:	0800b781 	.word	0x0800b781
 800a654:	0800b7a1 	.word	0x0800b7a1

0800a658 <_cleanup_r>:
 800a658:	4901      	ldr	r1, [pc, #4]	; (800a660 <_cleanup_r+0x8>)
 800a65a:	f000 bb99 	b.w	800ad90 <_fwalk_reent>
 800a65e:	bf00      	nop
 800a660:	0800baa1 	.word	0x0800baa1

0800a664 <__sinit>:
 800a664:	b510      	push	{r4, lr}
 800a666:	4604      	mov	r4, r0
 800a668:	4812      	ldr	r0, [pc, #72]	; (800a6b4 <__sinit+0x50>)
 800a66a:	f000 fbdb 	bl	800ae24 <__retarget_lock_acquire_recursive>
 800a66e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 800a670:	b9d2      	cbnz	r2, 800a6a8 <__sinit+0x44>
 800a672:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800a676:	4810      	ldr	r0, [pc, #64]	; (800a6b8 <__sinit+0x54>)
 800a678:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800a67c:	2103      	movs	r1, #3
 800a67e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800a682:	63e0      	str	r0, [r4, #60]	; 0x3c
 800a684:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 800a688:	6860      	ldr	r0, [r4, #4]
 800a68a:	2104      	movs	r1, #4
 800a68c:	f7ff ffbc 	bl	800a608 <std>
 800a690:	2201      	movs	r2, #1
 800a692:	2109      	movs	r1, #9
 800a694:	68a0      	ldr	r0, [r4, #8]
 800a696:	f7ff ffb7 	bl	800a608 <std>
 800a69a:	2202      	movs	r2, #2
 800a69c:	2112      	movs	r1, #18
 800a69e:	68e0      	ldr	r0, [r4, #12]
 800a6a0:	f7ff ffb2 	bl	800a608 <std>
 800a6a4:	2301      	movs	r3, #1
 800a6a6:	63a3      	str	r3, [r4, #56]	; 0x38
 800a6a8:	4802      	ldr	r0, [pc, #8]	; (800a6b4 <__sinit+0x50>)
 800a6aa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800a6ae:	f000 bbbb 	b.w	800ae28 <__retarget_lock_release_recursive>
 800a6b2:	bf00      	nop
 800a6b4:	20001454 	.word	0x20001454
 800a6b8:	0800a659 	.word	0x0800a659

0800a6bc <__sfp_lock_acquire>:
 800a6bc:	4801      	ldr	r0, [pc, #4]	; (800a6c4 <__sfp_lock_acquire+0x8>)
 800a6be:	f000 bbb1 	b.w	800ae24 <__retarget_lock_acquire_recursive>
 800a6c2:	bf00      	nop
 800a6c4:	20001468 	.word	0x20001468

0800a6c8 <__sfp_lock_release>:
 800a6c8:	4801      	ldr	r0, [pc, #4]	; (800a6d0 <__sfp_lock_release+0x8>)
 800a6ca:	f000 bbad 	b.w	800ae28 <__retarget_lock_release_recursive>
 800a6ce:	bf00      	nop
 800a6d0:	20001468 	.word	0x20001468

0800a6d4 <__libc_fini_array>:
 800a6d4:	b538      	push	{r3, r4, r5, lr}
 800a6d6:	4c0a      	ldr	r4, [pc, #40]	; (800a700 <__libc_fini_array+0x2c>)
 800a6d8:	4d0a      	ldr	r5, [pc, #40]	; (800a704 <__libc_fini_array+0x30>)
 800a6da:	1b64      	subs	r4, r4, r5
 800a6dc:	10a4      	asrs	r4, r4, #2
 800a6de:	d00a      	beq.n	800a6f6 <__libc_fini_array+0x22>
 800a6e0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800a6e4:	3b01      	subs	r3, #1
 800a6e6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800a6ea:	3c01      	subs	r4, #1
 800a6ec:	f855 3904 	ldr.w	r3, [r5], #-4
 800a6f0:	4798      	blx	r3
 800a6f2:	2c00      	cmp	r4, #0
 800a6f4:	d1f9      	bne.n	800a6ea <__libc_fini_array+0x16>
 800a6f6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800a6fa:	f001 ba91 	b.w	800bc20 <_fini>
 800a6fe:	bf00      	nop
 800a700:	0800d29c 	.word	0x0800d29c
 800a704:	0800d298 	.word	0x0800d298

0800a708 <__fputwc>:
 800a708:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800a70c:	b082      	sub	sp, #8
 800a70e:	4681      	mov	r9, r0
 800a710:	4688      	mov	r8, r1
 800a712:	4614      	mov	r4, r2
 800a714:	f000 fb66 	bl	800ade4 <__locale_mb_cur_max>
 800a718:	2801      	cmp	r0, #1
 800a71a:	d103      	bne.n	800a724 <__fputwc+0x1c>
 800a71c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800a720:	2bfe      	cmp	r3, #254	; 0xfe
 800a722:	d933      	bls.n	800a78c <__fputwc+0x84>
 800a724:	4642      	mov	r2, r8
 800a726:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800a72a:	a901      	add	r1, sp, #4
 800a72c:	4648      	mov	r0, r9
 800a72e:	f001 f8c5 	bl	800b8bc <_wcrtomb_r>
 800a732:	1c42      	adds	r2, r0, #1
 800a734:	4606      	mov	r6, r0
 800a736:	d02f      	beq.n	800a798 <__fputwc+0x90>
 800a738:	b320      	cbz	r0, 800a784 <__fputwc+0x7c>
 800a73a:	f89d c004 	ldrb.w	ip, [sp, #4]
 800a73e:	2500      	movs	r5, #0
 800a740:	f10d 0a04 	add.w	sl, sp, #4
 800a744:	e009      	b.n	800a75a <__fputwc+0x52>
 800a746:	6823      	ldr	r3, [r4, #0]
 800a748:	1c5a      	adds	r2, r3, #1
 800a74a:	6022      	str	r2, [r4, #0]
 800a74c:	f883 c000 	strb.w	ip, [r3]
 800a750:	3501      	adds	r5, #1
 800a752:	42b5      	cmp	r5, r6
 800a754:	d216      	bcs.n	800a784 <__fputwc+0x7c>
 800a756:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800a75a:	68a3      	ldr	r3, [r4, #8]
 800a75c:	3b01      	subs	r3, #1
 800a75e:	2b00      	cmp	r3, #0
 800a760:	60a3      	str	r3, [r4, #8]
 800a762:	daf0      	bge.n	800a746 <__fputwc+0x3e>
 800a764:	69a7      	ldr	r7, [r4, #24]
 800a766:	42bb      	cmp	r3, r7
 800a768:	4661      	mov	r1, ip
 800a76a:	4622      	mov	r2, r4
 800a76c:	4648      	mov	r0, r9
 800a76e:	db02      	blt.n	800a776 <__fputwc+0x6e>
 800a770:	f1bc 0f0a 	cmp.w	ip, #10
 800a774:	d1e7      	bne.n	800a746 <__fputwc+0x3e>
 800a776:	f001 f849 	bl	800b80c <__swbuf_r>
 800a77a:	1c43      	adds	r3, r0, #1
 800a77c:	d1e8      	bne.n	800a750 <__fputwc+0x48>
 800a77e:	b002      	add	sp, #8
 800a780:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800a784:	4640      	mov	r0, r8
 800a786:	b002      	add	sp, #8
 800a788:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800a78c:	fa5f fc88 	uxtb.w	ip, r8
 800a790:	4606      	mov	r6, r0
 800a792:	f88d c004 	strb.w	ip, [sp, #4]
 800a796:	e7d2      	b.n	800a73e <__fputwc+0x36>
 800a798:	89a3      	ldrh	r3, [r4, #12]
 800a79a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800a79e:	81a3      	strh	r3, [r4, #12]
 800a7a0:	b002      	add	sp, #8
 800a7a2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800a7a6:	bf00      	nop

0800a7a8 <_fputwc_r>:
 800a7a8:	b530      	push	{r4, r5, lr}
 800a7aa:	4605      	mov	r5, r0
 800a7ac:	6e50      	ldr	r0, [r2, #100]	; 0x64
 800a7ae:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800a7b2:	07c0      	lsls	r0, r0, #31
 800a7b4:	4614      	mov	r4, r2
 800a7b6:	b083      	sub	sp, #12
 800a7b8:	b29a      	uxth	r2, r3
 800a7ba:	d401      	bmi.n	800a7c0 <_fputwc_r+0x18>
 800a7bc:	0590      	lsls	r0, r2, #22
 800a7be:	d51c      	bpl.n	800a7fa <_fputwc_r+0x52>
 800a7c0:	0490      	lsls	r0, r2, #18
 800a7c2:	d406      	bmi.n	800a7d2 <_fputwc_r+0x2a>
 800a7c4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800a7c6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800a7ca:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800a7ce:	81a3      	strh	r3, [r4, #12]
 800a7d0:	6662      	str	r2, [r4, #100]	; 0x64
 800a7d2:	4628      	mov	r0, r5
 800a7d4:	4622      	mov	r2, r4
 800a7d6:	f7ff ff97 	bl	800a708 <__fputwc>
 800a7da:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800a7dc:	07da      	lsls	r2, r3, #31
 800a7de:	4605      	mov	r5, r0
 800a7e0:	d402      	bmi.n	800a7e8 <_fputwc_r+0x40>
 800a7e2:	89a3      	ldrh	r3, [r4, #12]
 800a7e4:	059b      	lsls	r3, r3, #22
 800a7e6:	d502      	bpl.n	800a7ee <_fputwc_r+0x46>
 800a7e8:	4628      	mov	r0, r5
 800a7ea:	b003      	add	sp, #12
 800a7ec:	bd30      	pop	{r4, r5, pc}
 800a7ee:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a7f0:	f000 fb1a 	bl	800ae28 <__retarget_lock_release_recursive>
 800a7f4:	4628      	mov	r0, r5
 800a7f6:	b003      	add	sp, #12
 800a7f8:	bd30      	pop	{r4, r5, pc}
 800a7fa:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a7fc:	9101      	str	r1, [sp, #4]
 800a7fe:	f000 fb11 	bl	800ae24 <__retarget_lock_acquire_recursive>
 800a802:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a806:	9901      	ldr	r1, [sp, #4]
 800a808:	b29a      	uxth	r2, r3
 800a80a:	e7d9      	b.n	800a7c0 <_fputwc_r+0x18>

0800a80c <_malloc_trim_r>:
 800a80c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a80e:	4f24      	ldr	r7, [pc, #144]	; (800a8a0 <_malloc_trim_r+0x94>)
 800a810:	460c      	mov	r4, r1
 800a812:	4606      	mov	r6, r0
 800a814:	f7fb ff50 	bl	80066b8 <__malloc_lock>
 800a818:	68bb      	ldr	r3, [r7, #8]
 800a81a:	685d      	ldr	r5, [r3, #4]
 800a81c:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800a820:	310f      	adds	r1, #15
 800a822:	f025 0503 	bic.w	r5, r5, #3
 800a826:	4429      	add	r1, r5
 800a828:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 800a82c:	f021 010f 	bic.w	r1, r1, #15
 800a830:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 800a834:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800a838:	db07      	blt.n	800a84a <_malloc_trim_r+0x3e>
 800a83a:	2100      	movs	r1, #0
 800a83c:	4630      	mov	r0, r6
 800a83e:	f7fc f95f 	bl	8006b00 <_sbrk_r>
 800a842:	68bb      	ldr	r3, [r7, #8]
 800a844:	442b      	add	r3, r5
 800a846:	4298      	cmp	r0, r3
 800a848:	d004      	beq.n	800a854 <_malloc_trim_r+0x48>
 800a84a:	4630      	mov	r0, r6
 800a84c:	f7fb ff3a 	bl	80066c4 <__malloc_unlock>
 800a850:	2000      	movs	r0, #0
 800a852:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800a854:	4261      	negs	r1, r4
 800a856:	4630      	mov	r0, r6
 800a858:	f7fc f952 	bl	8006b00 <_sbrk_r>
 800a85c:	3001      	adds	r0, #1
 800a85e:	d00d      	beq.n	800a87c <_malloc_trim_r+0x70>
 800a860:	4b10      	ldr	r3, [pc, #64]	; (800a8a4 <_malloc_trim_r+0x98>)
 800a862:	68ba      	ldr	r2, [r7, #8]
 800a864:	6819      	ldr	r1, [r3, #0]
 800a866:	1b2d      	subs	r5, r5, r4
 800a868:	f045 0501 	orr.w	r5, r5, #1
 800a86c:	4630      	mov	r0, r6
 800a86e:	1b09      	subs	r1, r1, r4
 800a870:	6055      	str	r5, [r2, #4]
 800a872:	6019      	str	r1, [r3, #0]
 800a874:	f7fb ff26 	bl	80066c4 <__malloc_unlock>
 800a878:	2001      	movs	r0, #1
 800a87a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800a87c:	2100      	movs	r1, #0
 800a87e:	4630      	mov	r0, r6
 800a880:	f7fc f93e 	bl	8006b00 <_sbrk_r>
 800a884:	68ba      	ldr	r2, [r7, #8]
 800a886:	1a83      	subs	r3, r0, r2
 800a888:	2b0f      	cmp	r3, #15
 800a88a:	ddde      	ble.n	800a84a <_malloc_trim_r+0x3e>
 800a88c:	4c06      	ldr	r4, [pc, #24]	; (800a8a8 <_malloc_trim_r+0x9c>)
 800a88e:	4905      	ldr	r1, [pc, #20]	; (800a8a4 <_malloc_trim_r+0x98>)
 800a890:	6824      	ldr	r4, [r4, #0]
 800a892:	f043 0301 	orr.w	r3, r3, #1
 800a896:	1b00      	subs	r0, r0, r4
 800a898:	6053      	str	r3, [r2, #4]
 800a89a:	6008      	str	r0, [r1, #0]
 800a89c:	e7d5      	b.n	800a84a <_malloc_trim_r+0x3e>
 800a89e:	bf00      	nop
 800a8a0:	20000448 	.word	0x20000448
 800a8a4:	20000a6c 	.word	0x20000a6c
 800a8a8:	20000850 	.word	0x20000850

0800a8ac <_free_r>:
 800a8ac:	2900      	cmp	r1, #0
 800a8ae:	d053      	beq.n	800a958 <_free_r+0xac>
 800a8b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a8b2:	460c      	mov	r4, r1
 800a8b4:	4606      	mov	r6, r0
 800a8b6:	f7fb feff 	bl	80066b8 <__malloc_lock>
 800a8ba:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800a8be:	4f71      	ldr	r7, [pc, #452]	; (800aa84 <_free_r+0x1d8>)
 800a8c0:	f02c 0101 	bic.w	r1, ip, #1
 800a8c4:	f1a4 0508 	sub.w	r5, r4, #8
 800a8c8:	186b      	adds	r3, r5, r1
 800a8ca:	68b8      	ldr	r0, [r7, #8]
 800a8cc:	685a      	ldr	r2, [r3, #4]
 800a8ce:	4298      	cmp	r0, r3
 800a8d0:	f022 0203 	bic.w	r2, r2, #3
 800a8d4:	d053      	beq.n	800a97e <_free_r+0xd2>
 800a8d6:	f01c 0f01 	tst.w	ip, #1
 800a8da:	605a      	str	r2, [r3, #4]
 800a8dc:	eb03 0002 	add.w	r0, r3, r2
 800a8e0:	d13b      	bne.n	800a95a <_free_r+0xae>
 800a8e2:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800a8e6:	6840      	ldr	r0, [r0, #4]
 800a8e8:	eba5 050c 	sub.w	r5, r5, ip
 800a8ec:	f107 0e08 	add.w	lr, r7, #8
 800a8f0:	68ac      	ldr	r4, [r5, #8]
 800a8f2:	4574      	cmp	r4, lr
 800a8f4:	4461      	add	r1, ip
 800a8f6:	f000 0001 	and.w	r0, r0, #1
 800a8fa:	d075      	beq.n	800a9e8 <_free_r+0x13c>
 800a8fc:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800a900:	f8c4 c00c 	str.w	ip, [r4, #12]
 800a904:	f8cc 4008 	str.w	r4, [ip, #8]
 800a908:	b360      	cbz	r0, 800a964 <_free_r+0xb8>
 800a90a:	f041 0301 	orr.w	r3, r1, #1
 800a90e:	606b      	str	r3, [r5, #4]
 800a910:	5069      	str	r1, [r5, r1]
 800a912:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800a916:	d350      	bcc.n	800a9ba <_free_r+0x10e>
 800a918:	0a4b      	lsrs	r3, r1, #9
 800a91a:	2b04      	cmp	r3, #4
 800a91c:	d870      	bhi.n	800aa00 <_free_r+0x154>
 800a91e:	098b      	lsrs	r3, r1, #6
 800a920:	f103 0439 	add.w	r4, r3, #57	; 0x39
 800a924:	00e4      	lsls	r4, r4, #3
 800a926:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800a92a:	1938      	adds	r0, r7, r4
 800a92c:	593b      	ldr	r3, [r7, r4]
 800a92e:	3808      	subs	r0, #8
 800a930:	4298      	cmp	r0, r3
 800a932:	d078      	beq.n	800aa26 <_free_r+0x17a>
 800a934:	685a      	ldr	r2, [r3, #4]
 800a936:	f022 0203 	bic.w	r2, r2, #3
 800a93a:	428a      	cmp	r2, r1
 800a93c:	d971      	bls.n	800aa22 <_free_r+0x176>
 800a93e:	689b      	ldr	r3, [r3, #8]
 800a940:	4298      	cmp	r0, r3
 800a942:	d1f7      	bne.n	800a934 <_free_r+0x88>
 800a944:	68c3      	ldr	r3, [r0, #12]
 800a946:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800a94a:	609d      	str	r5, [r3, #8]
 800a94c:	60c5      	str	r5, [r0, #12]
 800a94e:	4630      	mov	r0, r6
 800a950:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800a954:	f7fb beb6 	b.w	80066c4 <__malloc_unlock>
 800a958:	4770      	bx	lr
 800a95a:	6840      	ldr	r0, [r0, #4]
 800a95c:	f000 0001 	and.w	r0, r0, #1
 800a960:	2800      	cmp	r0, #0
 800a962:	d1d2      	bne.n	800a90a <_free_r+0x5e>
 800a964:	6898      	ldr	r0, [r3, #8]
 800a966:	4c48      	ldr	r4, [pc, #288]	; (800aa88 <_free_r+0x1dc>)
 800a968:	4411      	add	r1, r2
 800a96a:	42a0      	cmp	r0, r4
 800a96c:	f041 0201 	orr.w	r2, r1, #1
 800a970:	d062      	beq.n	800aa38 <_free_r+0x18c>
 800a972:	68db      	ldr	r3, [r3, #12]
 800a974:	60c3      	str	r3, [r0, #12]
 800a976:	6098      	str	r0, [r3, #8]
 800a978:	606a      	str	r2, [r5, #4]
 800a97a:	5069      	str	r1, [r5, r1]
 800a97c:	e7c9      	b.n	800a912 <_free_r+0x66>
 800a97e:	f01c 0f01 	tst.w	ip, #1
 800a982:	440a      	add	r2, r1
 800a984:	d107      	bne.n	800a996 <_free_r+0xea>
 800a986:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800a98a:	1aed      	subs	r5, r5, r3
 800a98c:	441a      	add	r2, r3
 800a98e:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800a992:	60cb      	str	r3, [r1, #12]
 800a994:	6099      	str	r1, [r3, #8]
 800a996:	4b3d      	ldr	r3, [pc, #244]	; (800aa8c <_free_r+0x1e0>)
 800a998:	681b      	ldr	r3, [r3, #0]
 800a99a:	f042 0101 	orr.w	r1, r2, #1
 800a99e:	4293      	cmp	r3, r2
 800a9a0:	6069      	str	r1, [r5, #4]
 800a9a2:	60bd      	str	r5, [r7, #8]
 800a9a4:	d804      	bhi.n	800a9b0 <_free_r+0x104>
 800a9a6:	4b3a      	ldr	r3, [pc, #232]	; (800aa90 <_free_r+0x1e4>)
 800a9a8:	4630      	mov	r0, r6
 800a9aa:	6819      	ldr	r1, [r3, #0]
 800a9ac:	f7ff ff2e 	bl	800a80c <_malloc_trim_r>
 800a9b0:	4630      	mov	r0, r6
 800a9b2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800a9b6:	f7fb be85 	b.w	80066c4 <__malloc_unlock>
 800a9ba:	08c9      	lsrs	r1, r1, #3
 800a9bc:	6878      	ldr	r0, [r7, #4]
 800a9be:	1c4a      	adds	r2, r1, #1
 800a9c0:	2301      	movs	r3, #1
 800a9c2:	1089      	asrs	r1, r1, #2
 800a9c4:	408b      	lsls	r3, r1
 800a9c6:	4303      	orrs	r3, r0
 800a9c8:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 800a9cc:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800a9d0:	607b      	str	r3, [r7, #4]
 800a9d2:	3908      	subs	r1, #8
 800a9d4:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800a9d8:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 800a9dc:	60c5      	str	r5, [r0, #12]
 800a9de:	4630      	mov	r0, r6
 800a9e0:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800a9e4:	f7fb be6e 	b.w	80066c4 <__malloc_unlock>
 800a9e8:	2800      	cmp	r0, #0
 800a9ea:	d145      	bne.n	800aa78 <_free_r+0x1cc>
 800a9ec:	440a      	add	r2, r1
 800a9ee:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800a9f2:	f042 0001 	orr.w	r0, r2, #1
 800a9f6:	60cb      	str	r3, [r1, #12]
 800a9f8:	6099      	str	r1, [r3, #8]
 800a9fa:	6068      	str	r0, [r5, #4]
 800a9fc:	50aa      	str	r2, [r5, r2]
 800a9fe:	e7d7      	b.n	800a9b0 <_free_r+0x104>
 800aa00:	2b14      	cmp	r3, #20
 800aa02:	d908      	bls.n	800aa16 <_free_r+0x16a>
 800aa04:	2b54      	cmp	r3, #84	; 0x54
 800aa06:	d81e      	bhi.n	800aa46 <_free_r+0x19a>
 800aa08:	0b0b      	lsrs	r3, r1, #12
 800aa0a:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800aa0e:	00e4      	lsls	r4, r4, #3
 800aa10:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 800aa14:	e789      	b.n	800a92a <_free_r+0x7e>
 800aa16:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800aa1a:	00e4      	lsls	r4, r4, #3
 800aa1c:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800aa20:	e783      	b.n	800a92a <_free_r+0x7e>
 800aa22:	4618      	mov	r0, r3
 800aa24:	e78e      	b.n	800a944 <_free_r+0x98>
 800aa26:	1093      	asrs	r3, r2, #2
 800aa28:	6879      	ldr	r1, [r7, #4]
 800aa2a:	2201      	movs	r2, #1
 800aa2c:	fa02 f303 	lsl.w	r3, r2, r3
 800aa30:	430b      	orrs	r3, r1
 800aa32:	607b      	str	r3, [r7, #4]
 800aa34:	4603      	mov	r3, r0
 800aa36:	e786      	b.n	800a946 <_free_r+0x9a>
 800aa38:	e9c7 5504 	strd	r5, r5, [r7, #16]
 800aa3c:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800aa40:	606a      	str	r2, [r5, #4]
 800aa42:	5069      	str	r1, [r5, r1]
 800aa44:	e7b4      	b.n	800a9b0 <_free_r+0x104>
 800aa46:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800aa4a:	d806      	bhi.n	800aa5a <_free_r+0x1ae>
 800aa4c:	0bcb      	lsrs	r3, r1, #15
 800aa4e:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800aa52:	00e4      	lsls	r4, r4, #3
 800aa54:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800aa58:	e767      	b.n	800a92a <_free_r+0x7e>
 800aa5a:	f240 5254 	movw	r2, #1364	; 0x554
 800aa5e:	4293      	cmp	r3, r2
 800aa60:	d806      	bhi.n	800aa70 <_free_r+0x1c4>
 800aa62:	0c8b      	lsrs	r3, r1, #18
 800aa64:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800aa68:	00e4      	lsls	r4, r4, #3
 800aa6a:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800aa6e:	e75c      	b.n	800a92a <_free_r+0x7e>
 800aa70:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 800aa74:	227e      	movs	r2, #126	; 0x7e
 800aa76:	e758      	b.n	800a92a <_free_r+0x7e>
 800aa78:	f041 0201 	orr.w	r2, r1, #1
 800aa7c:	606a      	str	r2, [r5, #4]
 800aa7e:	6019      	str	r1, [r3, #0]
 800aa80:	e796      	b.n	800a9b0 <_free_r+0x104>
 800aa82:	bf00      	nop
 800aa84:	20000448 	.word	0x20000448
 800aa88:	20000450 	.word	0x20000450
 800aa8c:	20000854 	.word	0x20000854
 800aa90:	20000a9c 	.word	0x20000a9c

0800aa94 <__sfvwrite_r>:
 800aa94:	6893      	ldr	r3, [r2, #8]
 800aa96:	2b00      	cmp	r3, #0
 800aa98:	f000 80e4 	beq.w	800ac64 <__sfvwrite_r+0x1d0>
 800aa9c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800aaa0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800aaa4:	b29b      	uxth	r3, r3
 800aaa6:	460c      	mov	r4, r1
 800aaa8:	0719      	lsls	r1, r3, #28
 800aaaa:	b083      	sub	sp, #12
 800aaac:	4682      	mov	sl, r0
 800aaae:	4690      	mov	r8, r2
 800aab0:	d535      	bpl.n	800ab1e <__sfvwrite_r+0x8a>
 800aab2:	6922      	ldr	r2, [r4, #16]
 800aab4:	b39a      	cbz	r2, 800ab1e <__sfvwrite_r+0x8a>
 800aab6:	f013 0202 	ands.w	r2, r3, #2
 800aaba:	f8d8 6000 	ldr.w	r6, [r8]
 800aabe:	d03d      	beq.n	800ab3c <__sfvwrite_r+0xa8>
 800aac0:	2700      	movs	r7, #0
 800aac2:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800aac6:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800aaca:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 800ad8c <__sfvwrite_r+0x2f8>
 800aace:	463d      	mov	r5, r7
 800aad0:	454d      	cmp	r5, r9
 800aad2:	462b      	mov	r3, r5
 800aad4:	463a      	mov	r2, r7
 800aad6:	bf28      	it	cs
 800aad8:	464b      	movcs	r3, r9
 800aada:	4661      	mov	r1, ip
 800aadc:	4650      	mov	r0, sl
 800aade:	b1d5      	cbz	r5, 800ab16 <__sfvwrite_r+0x82>
 800aae0:	47d8      	blx	fp
 800aae2:	2800      	cmp	r0, #0
 800aae4:	f340 80c6 	ble.w	800ac74 <__sfvwrite_r+0x1e0>
 800aae8:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800aaec:	1a1b      	subs	r3, r3, r0
 800aaee:	4407      	add	r7, r0
 800aaf0:	1a2d      	subs	r5, r5, r0
 800aaf2:	f8c8 3008 	str.w	r3, [r8, #8]
 800aaf6:	2b00      	cmp	r3, #0
 800aaf8:	f000 80b0 	beq.w	800ac5c <__sfvwrite_r+0x1c8>
 800aafc:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800ab00:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800ab04:	454d      	cmp	r5, r9
 800ab06:	462b      	mov	r3, r5
 800ab08:	463a      	mov	r2, r7
 800ab0a:	bf28      	it	cs
 800ab0c:	464b      	movcs	r3, r9
 800ab0e:	4661      	mov	r1, ip
 800ab10:	4650      	mov	r0, sl
 800ab12:	2d00      	cmp	r5, #0
 800ab14:	d1e4      	bne.n	800aae0 <__sfvwrite_r+0x4c>
 800ab16:	e9d6 7500 	ldrd	r7, r5, [r6]
 800ab1a:	3608      	adds	r6, #8
 800ab1c:	e7d8      	b.n	800aad0 <__sfvwrite_r+0x3c>
 800ab1e:	4621      	mov	r1, r4
 800ab20:	4650      	mov	r0, sl
 800ab22:	f7fe fc79 	bl	8009418 <__swsetup_r>
 800ab26:	2800      	cmp	r0, #0
 800ab28:	f040 812a 	bne.w	800ad80 <__sfvwrite_r+0x2ec>
 800ab2c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800ab30:	f8d8 6000 	ldr.w	r6, [r8]
 800ab34:	b29b      	uxth	r3, r3
 800ab36:	f013 0202 	ands.w	r2, r3, #2
 800ab3a:	d1c1      	bne.n	800aac0 <__sfvwrite_r+0x2c>
 800ab3c:	f013 0901 	ands.w	r9, r3, #1
 800ab40:	d15d      	bne.n	800abfe <__sfvwrite_r+0x16a>
 800ab42:	68a7      	ldr	r7, [r4, #8]
 800ab44:	6820      	ldr	r0, [r4, #0]
 800ab46:	464d      	mov	r5, r9
 800ab48:	2d00      	cmp	r5, #0
 800ab4a:	d054      	beq.n	800abf6 <__sfvwrite_r+0x162>
 800ab4c:	059a      	lsls	r2, r3, #22
 800ab4e:	f140 809b 	bpl.w	800ac88 <__sfvwrite_r+0x1f4>
 800ab52:	42af      	cmp	r7, r5
 800ab54:	46bb      	mov	fp, r7
 800ab56:	f200 80d8 	bhi.w	800ad0a <__sfvwrite_r+0x276>
 800ab5a:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800ab5e:	d02f      	beq.n	800abc0 <__sfvwrite_r+0x12c>
 800ab60:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 800ab64:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800ab68:	eba0 0b01 	sub.w	fp, r0, r1
 800ab6c:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800ab70:	1c68      	adds	r0, r5, #1
 800ab72:	107f      	asrs	r7, r7, #1
 800ab74:	4458      	add	r0, fp
 800ab76:	42b8      	cmp	r0, r7
 800ab78:	463a      	mov	r2, r7
 800ab7a:	bf84      	itt	hi
 800ab7c:	4607      	movhi	r7, r0
 800ab7e:	463a      	movhi	r2, r7
 800ab80:	055b      	lsls	r3, r3, #21
 800ab82:	f140 80d3 	bpl.w	800ad2c <__sfvwrite_r+0x298>
 800ab86:	4611      	mov	r1, r2
 800ab88:	4650      	mov	r0, sl
 800ab8a:	f7fb faa7 	bl	80060dc <_malloc_r>
 800ab8e:	2800      	cmp	r0, #0
 800ab90:	f000 80f0 	beq.w	800ad74 <__sfvwrite_r+0x2e0>
 800ab94:	465a      	mov	r2, fp
 800ab96:	6921      	ldr	r1, [r4, #16]
 800ab98:	9001      	str	r0, [sp, #4]
 800ab9a:	f7f5 fcff 	bl	800059c <memcpy>
 800ab9e:	89a2      	ldrh	r2, [r4, #12]
 800aba0:	9b01      	ldr	r3, [sp, #4]
 800aba2:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800aba6:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800abaa:	81a2      	strh	r2, [r4, #12]
 800abac:	eba7 020b 	sub.w	r2, r7, fp
 800abb0:	eb03 000b 	add.w	r0, r3, fp
 800abb4:	6167      	str	r7, [r4, #20]
 800abb6:	6123      	str	r3, [r4, #16]
 800abb8:	6020      	str	r0, [r4, #0]
 800abba:	60a2      	str	r2, [r4, #8]
 800abbc:	462f      	mov	r7, r5
 800abbe:	46ab      	mov	fp, r5
 800abc0:	465a      	mov	r2, fp
 800abc2:	4649      	mov	r1, r9
 800abc4:	f000 f9c0 	bl	800af48 <memmove>
 800abc8:	68a2      	ldr	r2, [r4, #8]
 800abca:	6823      	ldr	r3, [r4, #0]
 800abcc:	1bd2      	subs	r2, r2, r7
 800abce:	445b      	add	r3, fp
 800abd0:	462f      	mov	r7, r5
 800abd2:	60a2      	str	r2, [r4, #8]
 800abd4:	6023      	str	r3, [r4, #0]
 800abd6:	2500      	movs	r5, #0
 800abd8:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800abdc:	1bdb      	subs	r3, r3, r7
 800abde:	44b9      	add	r9, r7
 800abe0:	f8c8 3008 	str.w	r3, [r8, #8]
 800abe4:	2b00      	cmp	r3, #0
 800abe6:	d039      	beq.n	800ac5c <__sfvwrite_r+0x1c8>
 800abe8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800abec:	68a7      	ldr	r7, [r4, #8]
 800abee:	6820      	ldr	r0, [r4, #0]
 800abf0:	b29b      	uxth	r3, r3
 800abf2:	2d00      	cmp	r5, #0
 800abf4:	d1aa      	bne.n	800ab4c <__sfvwrite_r+0xb8>
 800abf6:	e9d6 9500 	ldrd	r9, r5, [r6]
 800abfa:	3608      	adds	r6, #8
 800abfc:	e7a4      	b.n	800ab48 <__sfvwrite_r+0xb4>
 800abfe:	4633      	mov	r3, r6
 800ac00:	4691      	mov	r9, r2
 800ac02:	4610      	mov	r0, r2
 800ac04:	4617      	mov	r7, r2
 800ac06:	464e      	mov	r6, r9
 800ac08:	469b      	mov	fp, r3
 800ac0a:	2f00      	cmp	r7, #0
 800ac0c:	d06b      	beq.n	800ace6 <__sfvwrite_r+0x252>
 800ac0e:	2800      	cmp	r0, #0
 800ac10:	d071      	beq.n	800acf6 <__sfvwrite_r+0x262>
 800ac12:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800ac16:	6820      	ldr	r0, [r4, #0]
 800ac18:	45b9      	cmp	r9, r7
 800ac1a:	464b      	mov	r3, r9
 800ac1c:	bf28      	it	cs
 800ac1e:	463b      	movcs	r3, r7
 800ac20:	4288      	cmp	r0, r1
 800ac22:	d903      	bls.n	800ac2c <__sfvwrite_r+0x198>
 800ac24:	68a5      	ldr	r5, [r4, #8]
 800ac26:	4415      	add	r5, r2
 800ac28:	42ab      	cmp	r3, r5
 800ac2a:	dc71      	bgt.n	800ad10 <__sfvwrite_r+0x27c>
 800ac2c:	429a      	cmp	r2, r3
 800ac2e:	f300 8093 	bgt.w	800ad58 <__sfvwrite_r+0x2c4>
 800ac32:	4613      	mov	r3, r2
 800ac34:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800ac36:	69e1      	ldr	r1, [r4, #28]
 800ac38:	4632      	mov	r2, r6
 800ac3a:	4650      	mov	r0, sl
 800ac3c:	47a8      	blx	r5
 800ac3e:	1e05      	subs	r5, r0, #0
 800ac40:	dd18      	ble.n	800ac74 <__sfvwrite_r+0x1e0>
 800ac42:	ebb9 0905 	subs.w	r9, r9, r5
 800ac46:	d00f      	beq.n	800ac68 <__sfvwrite_r+0x1d4>
 800ac48:	2001      	movs	r0, #1
 800ac4a:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800ac4e:	1b5b      	subs	r3, r3, r5
 800ac50:	442e      	add	r6, r5
 800ac52:	1b7f      	subs	r7, r7, r5
 800ac54:	f8c8 3008 	str.w	r3, [r8, #8]
 800ac58:	2b00      	cmp	r3, #0
 800ac5a:	d1d6      	bne.n	800ac0a <__sfvwrite_r+0x176>
 800ac5c:	2000      	movs	r0, #0
 800ac5e:	b003      	add	sp, #12
 800ac60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800ac64:	2000      	movs	r0, #0
 800ac66:	4770      	bx	lr
 800ac68:	4621      	mov	r1, r4
 800ac6a:	4650      	mov	r0, sl
 800ac6c:	f7ff fc9e 	bl	800a5ac <_fflush_r>
 800ac70:	2800      	cmp	r0, #0
 800ac72:	d0ea      	beq.n	800ac4a <__sfvwrite_r+0x1b6>
 800ac74:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800ac78:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800ac7c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800ac80:	81a3      	strh	r3, [r4, #12]
 800ac82:	b003      	add	sp, #12
 800ac84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800ac88:	6923      	ldr	r3, [r4, #16]
 800ac8a:	4283      	cmp	r3, r0
 800ac8c:	d315      	bcc.n	800acba <__sfvwrite_r+0x226>
 800ac8e:	6961      	ldr	r1, [r4, #20]
 800ac90:	42a9      	cmp	r1, r5
 800ac92:	d812      	bhi.n	800acba <__sfvwrite_r+0x226>
 800ac94:	4b3c      	ldr	r3, [pc, #240]	; (800ad88 <__sfvwrite_r+0x2f4>)
 800ac96:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800ac98:	429d      	cmp	r5, r3
 800ac9a:	bf94      	ite	ls
 800ac9c:	462b      	movls	r3, r5
 800ac9e:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800aca2:	464a      	mov	r2, r9
 800aca4:	fb93 f3f1 	sdiv	r3, r3, r1
 800aca8:	4650      	mov	r0, sl
 800acaa:	fb01 f303 	mul.w	r3, r1, r3
 800acae:	69e1      	ldr	r1, [r4, #28]
 800acb0:	47b8      	blx	r7
 800acb2:	1e07      	subs	r7, r0, #0
 800acb4:	ddde      	ble.n	800ac74 <__sfvwrite_r+0x1e0>
 800acb6:	1bed      	subs	r5, r5, r7
 800acb8:	e78e      	b.n	800abd8 <__sfvwrite_r+0x144>
 800acba:	42af      	cmp	r7, r5
 800acbc:	bf28      	it	cs
 800acbe:	462f      	movcs	r7, r5
 800acc0:	463a      	mov	r2, r7
 800acc2:	4649      	mov	r1, r9
 800acc4:	f000 f940 	bl	800af48 <memmove>
 800acc8:	68a3      	ldr	r3, [r4, #8]
 800acca:	6822      	ldr	r2, [r4, #0]
 800accc:	1bdb      	subs	r3, r3, r7
 800acce:	443a      	add	r2, r7
 800acd0:	60a3      	str	r3, [r4, #8]
 800acd2:	6022      	str	r2, [r4, #0]
 800acd4:	2b00      	cmp	r3, #0
 800acd6:	d1ee      	bne.n	800acb6 <__sfvwrite_r+0x222>
 800acd8:	4621      	mov	r1, r4
 800acda:	4650      	mov	r0, sl
 800acdc:	f7ff fc66 	bl	800a5ac <_fflush_r>
 800ace0:	2800      	cmp	r0, #0
 800ace2:	d0e8      	beq.n	800acb6 <__sfvwrite_r+0x222>
 800ace4:	e7c6      	b.n	800ac74 <__sfvwrite_r+0x1e0>
 800ace6:	f10b 0308 	add.w	r3, fp, #8
 800acea:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800acee:	469b      	mov	fp, r3
 800acf0:	3308      	adds	r3, #8
 800acf2:	2f00      	cmp	r7, #0
 800acf4:	d0f9      	beq.n	800acea <__sfvwrite_r+0x256>
 800acf6:	463a      	mov	r2, r7
 800acf8:	210a      	movs	r1, #10
 800acfa:	4630      	mov	r0, r6
 800acfc:	f7f5 fd70 	bl	80007e0 <memchr>
 800ad00:	b338      	cbz	r0, 800ad52 <__sfvwrite_r+0x2be>
 800ad02:	3001      	adds	r0, #1
 800ad04:	eba0 0906 	sub.w	r9, r0, r6
 800ad08:	e783      	b.n	800ac12 <__sfvwrite_r+0x17e>
 800ad0a:	462f      	mov	r7, r5
 800ad0c:	46ab      	mov	fp, r5
 800ad0e:	e757      	b.n	800abc0 <__sfvwrite_r+0x12c>
 800ad10:	4631      	mov	r1, r6
 800ad12:	462a      	mov	r2, r5
 800ad14:	f000 f918 	bl	800af48 <memmove>
 800ad18:	6823      	ldr	r3, [r4, #0]
 800ad1a:	442b      	add	r3, r5
 800ad1c:	6023      	str	r3, [r4, #0]
 800ad1e:	4621      	mov	r1, r4
 800ad20:	4650      	mov	r0, sl
 800ad22:	f7ff fc43 	bl	800a5ac <_fflush_r>
 800ad26:	2800      	cmp	r0, #0
 800ad28:	d08b      	beq.n	800ac42 <__sfvwrite_r+0x1ae>
 800ad2a:	e7a3      	b.n	800ac74 <__sfvwrite_r+0x1e0>
 800ad2c:	4650      	mov	r0, sl
 800ad2e:	f7fb fd39 	bl	80067a4 <_realloc_r>
 800ad32:	4603      	mov	r3, r0
 800ad34:	2800      	cmp	r0, #0
 800ad36:	f47f af39 	bne.w	800abac <__sfvwrite_r+0x118>
 800ad3a:	6921      	ldr	r1, [r4, #16]
 800ad3c:	4650      	mov	r0, sl
 800ad3e:	f7ff fdb5 	bl	800a8ac <_free_r>
 800ad42:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800ad46:	220c      	movs	r2, #12
 800ad48:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800ad4c:	f8ca 2000 	str.w	r2, [sl]
 800ad50:	e792      	b.n	800ac78 <__sfvwrite_r+0x1e4>
 800ad52:	f107 0901 	add.w	r9, r7, #1
 800ad56:	e75c      	b.n	800ac12 <__sfvwrite_r+0x17e>
 800ad58:	461a      	mov	r2, r3
 800ad5a:	4631      	mov	r1, r6
 800ad5c:	9301      	str	r3, [sp, #4]
 800ad5e:	f000 f8f3 	bl	800af48 <memmove>
 800ad62:	9b01      	ldr	r3, [sp, #4]
 800ad64:	68a1      	ldr	r1, [r4, #8]
 800ad66:	6822      	ldr	r2, [r4, #0]
 800ad68:	1ac9      	subs	r1, r1, r3
 800ad6a:	441a      	add	r2, r3
 800ad6c:	60a1      	str	r1, [r4, #8]
 800ad6e:	6022      	str	r2, [r4, #0]
 800ad70:	461d      	mov	r5, r3
 800ad72:	e766      	b.n	800ac42 <__sfvwrite_r+0x1ae>
 800ad74:	230c      	movs	r3, #12
 800ad76:	f8ca 3000 	str.w	r3, [sl]
 800ad7a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800ad7e:	e77b      	b.n	800ac78 <__sfvwrite_r+0x1e4>
 800ad80:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800ad84:	e76b      	b.n	800ac5e <__sfvwrite_r+0x1ca>
 800ad86:	bf00      	nop
 800ad88:	7ffffffe 	.word	0x7ffffffe
 800ad8c:	7ffffc00 	.word	0x7ffffc00

0800ad90 <_fwalk_reent>:
 800ad90:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800ad94:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800ad98:	d01f      	beq.n	800adda <_fwalk_reent+0x4a>
 800ad9a:	4688      	mov	r8, r1
 800ad9c:	4606      	mov	r6, r0
 800ad9e:	f04f 0900 	mov.w	r9, #0
 800ada2:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800ada6:	3d01      	subs	r5, #1
 800ada8:	d411      	bmi.n	800adce <_fwalk_reent+0x3e>
 800adaa:	89a3      	ldrh	r3, [r4, #12]
 800adac:	2b01      	cmp	r3, #1
 800adae:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800adb2:	4621      	mov	r1, r4
 800adb4:	4630      	mov	r0, r6
 800adb6:	d906      	bls.n	800adc6 <_fwalk_reent+0x36>
 800adb8:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 800adbc:	3301      	adds	r3, #1
 800adbe:	d002      	beq.n	800adc6 <_fwalk_reent+0x36>
 800adc0:	47c0      	blx	r8
 800adc2:	ea49 0900 	orr.w	r9, r9, r0
 800adc6:	1c6b      	adds	r3, r5, #1
 800adc8:	f104 0468 	add.w	r4, r4, #104	; 0x68
 800adcc:	d1ed      	bne.n	800adaa <_fwalk_reent+0x1a>
 800adce:	683f      	ldr	r7, [r7, #0]
 800add0:	2f00      	cmp	r7, #0
 800add2:	d1e6      	bne.n	800ada2 <_fwalk_reent+0x12>
 800add4:	4648      	mov	r0, r9
 800add6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800adda:	46b9      	mov	r9, r7
 800addc:	4648      	mov	r0, r9
 800adde:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800ade2:	bf00      	nop

0800ade4 <__locale_mb_cur_max>:
 800ade4:	4b04      	ldr	r3, [pc, #16]	; (800adf8 <__locale_mb_cur_max+0x14>)
 800ade6:	4a05      	ldr	r2, [pc, #20]	; (800adfc <__locale_mb_cur_max+0x18>)
 800ade8:	681b      	ldr	r3, [r3, #0]
 800adea:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800adec:	2b00      	cmp	r3, #0
 800adee:	bf08      	it	eq
 800adf0:	4613      	moveq	r3, r2
 800adf2:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800adf6:	4770      	bx	lr
 800adf8:	2000001c 	.word	0x2000001c
 800adfc:	2000085c 	.word	0x2000085c

0800ae00 <_localeconv_r>:
 800ae00:	4a04      	ldr	r2, [pc, #16]	; (800ae14 <_localeconv_r+0x14>)
 800ae02:	4b05      	ldr	r3, [pc, #20]	; (800ae18 <_localeconv_r+0x18>)
 800ae04:	6812      	ldr	r2, [r2, #0]
 800ae06:	6b50      	ldr	r0, [r2, #52]	; 0x34
 800ae08:	2800      	cmp	r0, #0
 800ae0a:	bf08      	it	eq
 800ae0c:	4618      	moveq	r0, r3
 800ae0e:	30f0      	adds	r0, #240	; 0xf0
 800ae10:	4770      	bx	lr
 800ae12:	bf00      	nop
 800ae14:	2000001c 	.word	0x2000001c
 800ae18:	2000085c 	.word	0x2000085c

0800ae1c <__retarget_lock_init_recursive>:
 800ae1c:	4770      	bx	lr
 800ae1e:	bf00      	nop

0800ae20 <__retarget_lock_close_recursive>:
 800ae20:	4770      	bx	lr
 800ae22:	bf00      	nop

0800ae24 <__retarget_lock_acquire_recursive>:
 800ae24:	4770      	bx	lr
 800ae26:	bf00      	nop

0800ae28 <__retarget_lock_release_recursive>:
 800ae28:	4770      	bx	lr
 800ae2a:	bf00      	nop

0800ae2c <__swhatbuf_r>:
 800ae2c:	b570      	push	{r4, r5, r6, lr}
 800ae2e:	460c      	mov	r4, r1
 800ae30:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800ae34:	2900      	cmp	r1, #0
 800ae36:	b096      	sub	sp, #88	; 0x58
 800ae38:	4615      	mov	r5, r2
 800ae3a:	461e      	mov	r6, r3
 800ae3c:	da0f      	bge.n	800ae5e <__swhatbuf_r+0x32>
 800ae3e:	89a2      	ldrh	r2, [r4, #12]
 800ae40:	2300      	movs	r3, #0
 800ae42:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800ae46:	6033      	str	r3, [r6, #0]
 800ae48:	d104      	bne.n	800ae54 <__swhatbuf_r+0x28>
 800ae4a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800ae4e:	602b      	str	r3, [r5, #0]
 800ae50:	b016      	add	sp, #88	; 0x58
 800ae52:	bd70      	pop	{r4, r5, r6, pc}
 800ae54:	2240      	movs	r2, #64	; 0x40
 800ae56:	4618      	mov	r0, r3
 800ae58:	602a      	str	r2, [r5, #0]
 800ae5a:	b016      	add	sp, #88	; 0x58
 800ae5c:	bd70      	pop	{r4, r5, r6, pc}
 800ae5e:	466a      	mov	r2, sp
 800ae60:	f000 fe86 	bl	800bb70 <_fstat_r>
 800ae64:	2800      	cmp	r0, #0
 800ae66:	dbea      	blt.n	800ae3e <__swhatbuf_r+0x12>
 800ae68:	9b01      	ldr	r3, [sp, #4]
 800ae6a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800ae6e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800ae72:	fab3 f383 	clz	r3, r3
 800ae76:	095b      	lsrs	r3, r3, #5
 800ae78:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800ae7c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800ae80:	6033      	str	r3, [r6, #0]
 800ae82:	602a      	str	r2, [r5, #0]
 800ae84:	b016      	add	sp, #88	; 0x58
 800ae86:	bd70      	pop	{r4, r5, r6, pc}

0800ae88 <__smakebuf_r>:
 800ae88:	898a      	ldrh	r2, [r1, #12]
 800ae8a:	0792      	lsls	r2, r2, #30
 800ae8c:	460b      	mov	r3, r1
 800ae8e:	d506      	bpl.n	800ae9e <__smakebuf_r+0x16>
 800ae90:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800ae94:	2101      	movs	r1, #1
 800ae96:	601a      	str	r2, [r3, #0]
 800ae98:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800ae9c:	4770      	bx	lr
 800ae9e:	b570      	push	{r4, r5, r6, lr}
 800aea0:	b082      	sub	sp, #8
 800aea2:	ab01      	add	r3, sp, #4
 800aea4:	466a      	mov	r2, sp
 800aea6:	460c      	mov	r4, r1
 800aea8:	4605      	mov	r5, r0
 800aeaa:	f7ff ffbf 	bl	800ae2c <__swhatbuf_r>
 800aeae:	9900      	ldr	r1, [sp, #0]
 800aeb0:	4606      	mov	r6, r0
 800aeb2:	4628      	mov	r0, r5
 800aeb4:	f7fb f912 	bl	80060dc <_malloc_r>
 800aeb8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800aebc:	b1d8      	cbz	r0, 800aef6 <__smakebuf_r+0x6e>
 800aebe:	4916      	ldr	r1, [pc, #88]	; (800af18 <__smakebuf_r+0x90>)
 800aec0:	63e9      	str	r1, [r5, #60]	; 0x3c
 800aec2:	9a01      	ldr	r2, [sp, #4]
 800aec4:	9900      	ldr	r1, [sp, #0]
 800aec6:	6020      	str	r0, [r4, #0]
 800aec8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800aecc:	81a3      	strh	r3, [r4, #12]
 800aece:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800aed2:	b91a      	cbnz	r2, 800aedc <__smakebuf_r+0x54>
 800aed4:	4333      	orrs	r3, r6
 800aed6:	81a3      	strh	r3, [r4, #12]
 800aed8:	b002      	add	sp, #8
 800aeda:	bd70      	pop	{r4, r5, r6, pc}
 800aedc:	4628      	mov	r0, r5
 800aede:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800aee2:	f000 fe59 	bl	800bb98 <_isatty_r>
 800aee6:	b1a0      	cbz	r0, 800af12 <__smakebuf_r+0x8a>
 800aee8:	89a3      	ldrh	r3, [r4, #12]
 800aeea:	f023 0303 	bic.w	r3, r3, #3
 800aeee:	f043 0301 	orr.w	r3, r3, #1
 800aef2:	b21b      	sxth	r3, r3
 800aef4:	e7ee      	b.n	800aed4 <__smakebuf_r+0x4c>
 800aef6:	059a      	lsls	r2, r3, #22
 800aef8:	d4ee      	bmi.n	800aed8 <__smakebuf_r+0x50>
 800aefa:	f023 0303 	bic.w	r3, r3, #3
 800aefe:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800af02:	f043 0302 	orr.w	r3, r3, #2
 800af06:	2101      	movs	r1, #1
 800af08:	81a3      	strh	r3, [r4, #12]
 800af0a:	6022      	str	r2, [r4, #0]
 800af0c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 800af10:	e7e2      	b.n	800aed8 <__smakebuf_r+0x50>
 800af12:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800af16:	e7dd      	b.n	800aed4 <__smakebuf_r+0x4c>
 800af18:	0800a659 	.word	0x0800a659

0800af1c <__ascii_mbtowc>:
 800af1c:	b082      	sub	sp, #8
 800af1e:	b149      	cbz	r1, 800af34 <__ascii_mbtowc+0x18>
 800af20:	b15a      	cbz	r2, 800af3a <__ascii_mbtowc+0x1e>
 800af22:	b16b      	cbz	r3, 800af40 <__ascii_mbtowc+0x24>
 800af24:	7813      	ldrb	r3, [r2, #0]
 800af26:	600b      	str	r3, [r1, #0]
 800af28:	7812      	ldrb	r2, [r2, #0]
 800af2a:	1c10      	adds	r0, r2, #0
 800af2c:	bf18      	it	ne
 800af2e:	2001      	movne	r0, #1
 800af30:	b002      	add	sp, #8
 800af32:	4770      	bx	lr
 800af34:	a901      	add	r1, sp, #4
 800af36:	2a00      	cmp	r2, #0
 800af38:	d1f3      	bne.n	800af22 <__ascii_mbtowc+0x6>
 800af3a:	4610      	mov	r0, r2
 800af3c:	b002      	add	sp, #8
 800af3e:	4770      	bx	lr
 800af40:	f06f 0001 	mvn.w	r0, #1
 800af44:	e7f4      	b.n	800af30 <__ascii_mbtowc+0x14>
 800af46:	bf00      	nop

0800af48 <memmove>:
 800af48:	4288      	cmp	r0, r1
 800af4a:	b4f0      	push	{r4, r5, r6, r7}
 800af4c:	d90d      	bls.n	800af6a <memmove+0x22>
 800af4e:	188b      	adds	r3, r1, r2
 800af50:	4283      	cmp	r3, r0
 800af52:	d90a      	bls.n	800af6a <memmove+0x22>
 800af54:	1884      	adds	r4, r0, r2
 800af56:	b132      	cbz	r2, 800af66 <memmove+0x1e>
 800af58:	4622      	mov	r2, r4
 800af5a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800af5e:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800af62:	4299      	cmp	r1, r3
 800af64:	d1f9      	bne.n	800af5a <memmove+0x12>
 800af66:	bcf0      	pop	{r4, r5, r6, r7}
 800af68:	4770      	bx	lr
 800af6a:	2a0f      	cmp	r2, #15
 800af6c:	d949      	bls.n	800b002 <memmove+0xba>
 800af6e:	ea40 0301 	orr.w	r3, r0, r1
 800af72:	079b      	lsls	r3, r3, #30
 800af74:	d147      	bne.n	800b006 <memmove+0xbe>
 800af76:	f1a2 0310 	sub.w	r3, r2, #16
 800af7a:	091b      	lsrs	r3, r3, #4
 800af7c:	f101 0720 	add.w	r7, r1, #32
 800af80:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 800af84:	f101 0410 	add.w	r4, r1, #16
 800af88:	f100 0510 	add.w	r5, r0, #16
 800af8c:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800af90:	f845 6c10 	str.w	r6, [r5, #-16]
 800af94:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 800af98:	f845 6c0c 	str.w	r6, [r5, #-12]
 800af9c:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800afa0:	f845 6c08 	str.w	r6, [r5, #-8]
 800afa4:	f854 6c04 	ldr.w	r6, [r4, #-4]
 800afa8:	f845 6c04 	str.w	r6, [r5, #-4]
 800afac:	3410      	adds	r4, #16
 800afae:	42bc      	cmp	r4, r7
 800afb0:	f105 0510 	add.w	r5, r5, #16
 800afb4:	d1ea      	bne.n	800af8c <memmove+0x44>
 800afb6:	3301      	adds	r3, #1
 800afb8:	f002 050f 	and.w	r5, r2, #15
 800afbc:	011b      	lsls	r3, r3, #4
 800afbe:	2d03      	cmp	r5, #3
 800afc0:	4419      	add	r1, r3
 800afc2:	4403      	add	r3, r0
 800afc4:	d921      	bls.n	800b00a <memmove+0xc2>
 800afc6:	1f1f      	subs	r7, r3, #4
 800afc8:	460e      	mov	r6, r1
 800afca:	462c      	mov	r4, r5
 800afcc:	3c04      	subs	r4, #4
 800afce:	f856 cb04 	ldr.w	ip, [r6], #4
 800afd2:	f847 cf04 	str.w	ip, [r7, #4]!
 800afd6:	2c03      	cmp	r4, #3
 800afd8:	d8f8      	bhi.n	800afcc <memmove+0x84>
 800afda:	1f2c      	subs	r4, r5, #4
 800afdc:	f024 0403 	bic.w	r4, r4, #3
 800afe0:	3404      	adds	r4, #4
 800afe2:	4423      	add	r3, r4
 800afe4:	4421      	add	r1, r4
 800afe6:	f002 0203 	and.w	r2, r2, #3
 800afea:	2a00      	cmp	r2, #0
 800afec:	d0bb      	beq.n	800af66 <memmove+0x1e>
 800afee:	3b01      	subs	r3, #1
 800aff0:	440a      	add	r2, r1
 800aff2:	f811 4b01 	ldrb.w	r4, [r1], #1
 800aff6:	f803 4f01 	strb.w	r4, [r3, #1]!
 800affa:	4291      	cmp	r1, r2
 800affc:	d1f9      	bne.n	800aff2 <memmove+0xaa>
 800affe:	bcf0      	pop	{r4, r5, r6, r7}
 800b000:	4770      	bx	lr
 800b002:	4603      	mov	r3, r0
 800b004:	e7f1      	b.n	800afea <memmove+0xa2>
 800b006:	4603      	mov	r3, r0
 800b008:	e7f1      	b.n	800afee <memmove+0xa6>
 800b00a:	462a      	mov	r2, r5
 800b00c:	e7ed      	b.n	800afea <memmove+0xa2>
 800b00e:	bf00      	nop

0800b010 <_Balloc>:
 800b010:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800b012:	b570      	push	{r4, r5, r6, lr}
 800b014:	4605      	mov	r5, r0
 800b016:	460c      	mov	r4, r1
 800b018:	b14b      	cbz	r3, 800b02e <_Balloc+0x1e>
 800b01a:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800b01e:	b180      	cbz	r0, 800b042 <_Balloc+0x32>
 800b020:	6802      	ldr	r2, [r0, #0]
 800b022:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800b026:	2300      	movs	r3, #0
 800b028:	e9c0 3303 	strd	r3, r3, [r0, #12]
 800b02c:	bd70      	pop	{r4, r5, r6, pc}
 800b02e:	2221      	movs	r2, #33	; 0x21
 800b030:	2104      	movs	r1, #4
 800b032:	f000 fcef 	bl	800ba14 <_calloc_r>
 800b036:	4603      	mov	r3, r0
 800b038:	64e8      	str	r0, [r5, #76]	; 0x4c
 800b03a:	2800      	cmp	r0, #0
 800b03c:	d1ed      	bne.n	800b01a <_Balloc+0xa>
 800b03e:	2000      	movs	r0, #0
 800b040:	bd70      	pop	{r4, r5, r6, pc}
 800b042:	2101      	movs	r1, #1
 800b044:	fa01 f604 	lsl.w	r6, r1, r4
 800b048:	1d72      	adds	r2, r6, #5
 800b04a:	4628      	mov	r0, r5
 800b04c:	0092      	lsls	r2, r2, #2
 800b04e:	f000 fce1 	bl	800ba14 <_calloc_r>
 800b052:	2800      	cmp	r0, #0
 800b054:	d0f3      	beq.n	800b03e <_Balloc+0x2e>
 800b056:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800b05a:	e7e4      	b.n	800b026 <_Balloc+0x16>

0800b05c <_Bfree>:
 800b05c:	b131      	cbz	r1, 800b06c <_Bfree+0x10>
 800b05e:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800b060:	684a      	ldr	r2, [r1, #4]
 800b062:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800b066:	6008      	str	r0, [r1, #0]
 800b068:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800b06c:	4770      	bx	lr
 800b06e:	bf00      	nop

0800b070 <__multadd>:
 800b070:	b5f0      	push	{r4, r5, r6, r7, lr}
 800b072:	690c      	ldr	r4, [r1, #16]
 800b074:	b083      	sub	sp, #12
 800b076:	460d      	mov	r5, r1
 800b078:	4606      	mov	r6, r0
 800b07a:	f101 0c14 	add.w	ip, r1, #20
 800b07e:	2700      	movs	r7, #0
 800b080:	f8dc 0000 	ldr.w	r0, [ip]
 800b084:	b281      	uxth	r1, r0
 800b086:	fb02 3301 	mla	r3, r2, r1, r3
 800b08a:	0c01      	lsrs	r1, r0, #16
 800b08c:	0c18      	lsrs	r0, r3, #16
 800b08e:	fb02 0101 	mla	r1, r2, r1, r0
 800b092:	b29b      	uxth	r3, r3
 800b094:	3701      	adds	r7, #1
 800b096:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800b09a:	42bc      	cmp	r4, r7
 800b09c:	f84c 3b04 	str.w	r3, [ip], #4
 800b0a0:	ea4f 4311 	mov.w	r3, r1, lsr #16
 800b0a4:	dcec      	bgt.n	800b080 <__multadd+0x10>
 800b0a6:	b13b      	cbz	r3, 800b0b8 <__multadd+0x48>
 800b0a8:	68aa      	ldr	r2, [r5, #8]
 800b0aa:	42a2      	cmp	r2, r4
 800b0ac:	dd07      	ble.n	800b0be <__multadd+0x4e>
 800b0ae:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800b0b2:	3401      	adds	r4, #1
 800b0b4:	6153      	str	r3, [r2, #20]
 800b0b6:	612c      	str	r4, [r5, #16]
 800b0b8:	4628      	mov	r0, r5
 800b0ba:	b003      	add	sp, #12
 800b0bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800b0be:	6869      	ldr	r1, [r5, #4]
 800b0c0:	9301      	str	r3, [sp, #4]
 800b0c2:	3101      	adds	r1, #1
 800b0c4:	4630      	mov	r0, r6
 800b0c6:	f7ff ffa3 	bl	800b010 <_Balloc>
 800b0ca:	692a      	ldr	r2, [r5, #16]
 800b0cc:	3202      	adds	r2, #2
 800b0ce:	f105 010c 	add.w	r1, r5, #12
 800b0d2:	4607      	mov	r7, r0
 800b0d4:	0092      	lsls	r2, r2, #2
 800b0d6:	300c      	adds	r0, #12
 800b0d8:	f7f5 fa60 	bl	800059c <memcpy>
 800b0dc:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800b0de:	6869      	ldr	r1, [r5, #4]
 800b0e0:	9b01      	ldr	r3, [sp, #4]
 800b0e2:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800b0e6:	6028      	str	r0, [r5, #0]
 800b0e8:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 800b0ec:	463d      	mov	r5, r7
 800b0ee:	e7de      	b.n	800b0ae <__multadd+0x3e>

0800b0f0 <__hi0bits>:
 800b0f0:	0c02      	lsrs	r2, r0, #16
 800b0f2:	0412      	lsls	r2, r2, #16
 800b0f4:	4603      	mov	r3, r0
 800b0f6:	b9c2      	cbnz	r2, 800b12a <__hi0bits+0x3a>
 800b0f8:	0403      	lsls	r3, r0, #16
 800b0fa:	2010      	movs	r0, #16
 800b0fc:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800b100:	bf04      	itt	eq
 800b102:	021b      	lsleq	r3, r3, #8
 800b104:	3008      	addeq	r0, #8
 800b106:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800b10a:	bf04      	itt	eq
 800b10c:	011b      	lsleq	r3, r3, #4
 800b10e:	3004      	addeq	r0, #4
 800b110:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 800b114:	bf04      	itt	eq
 800b116:	009b      	lsleq	r3, r3, #2
 800b118:	3002      	addeq	r0, #2
 800b11a:	2b00      	cmp	r3, #0
 800b11c:	db04      	blt.n	800b128 <__hi0bits+0x38>
 800b11e:	005b      	lsls	r3, r3, #1
 800b120:	d501      	bpl.n	800b126 <__hi0bits+0x36>
 800b122:	3001      	adds	r0, #1
 800b124:	4770      	bx	lr
 800b126:	2020      	movs	r0, #32
 800b128:	4770      	bx	lr
 800b12a:	2000      	movs	r0, #0
 800b12c:	e7e6      	b.n	800b0fc <__hi0bits+0xc>
 800b12e:	bf00      	nop

0800b130 <__lo0bits>:
 800b130:	6803      	ldr	r3, [r0, #0]
 800b132:	f013 0207 	ands.w	r2, r3, #7
 800b136:	4601      	mov	r1, r0
 800b138:	d007      	beq.n	800b14a <__lo0bits+0x1a>
 800b13a:	07da      	lsls	r2, r3, #31
 800b13c:	d41f      	bmi.n	800b17e <__lo0bits+0x4e>
 800b13e:	0798      	lsls	r0, r3, #30
 800b140:	d51f      	bpl.n	800b182 <__lo0bits+0x52>
 800b142:	085b      	lsrs	r3, r3, #1
 800b144:	600b      	str	r3, [r1, #0]
 800b146:	2001      	movs	r0, #1
 800b148:	4770      	bx	lr
 800b14a:	b298      	uxth	r0, r3
 800b14c:	b1a0      	cbz	r0, 800b178 <__lo0bits+0x48>
 800b14e:	4610      	mov	r0, r2
 800b150:	f013 0fff 	tst.w	r3, #255	; 0xff
 800b154:	bf04      	itt	eq
 800b156:	0a1b      	lsreq	r3, r3, #8
 800b158:	3008      	addeq	r0, #8
 800b15a:	071a      	lsls	r2, r3, #28
 800b15c:	bf04      	itt	eq
 800b15e:	091b      	lsreq	r3, r3, #4
 800b160:	3004      	addeq	r0, #4
 800b162:	079a      	lsls	r2, r3, #30
 800b164:	bf04      	itt	eq
 800b166:	089b      	lsreq	r3, r3, #2
 800b168:	3002      	addeq	r0, #2
 800b16a:	07da      	lsls	r2, r3, #31
 800b16c:	d402      	bmi.n	800b174 <__lo0bits+0x44>
 800b16e:	085b      	lsrs	r3, r3, #1
 800b170:	d00b      	beq.n	800b18a <__lo0bits+0x5a>
 800b172:	3001      	adds	r0, #1
 800b174:	600b      	str	r3, [r1, #0]
 800b176:	4770      	bx	lr
 800b178:	0c1b      	lsrs	r3, r3, #16
 800b17a:	2010      	movs	r0, #16
 800b17c:	e7e8      	b.n	800b150 <__lo0bits+0x20>
 800b17e:	2000      	movs	r0, #0
 800b180:	4770      	bx	lr
 800b182:	089b      	lsrs	r3, r3, #2
 800b184:	600b      	str	r3, [r1, #0]
 800b186:	2002      	movs	r0, #2
 800b188:	4770      	bx	lr
 800b18a:	2020      	movs	r0, #32
 800b18c:	4770      	bx	lr
 800b18e:	bf00      	nop

0800b190 <__i2b>:
 800b190:	b510      	push	{r4, lr}
 800b192:	460c      	mov	r4, r1
 800b194:	2101      	movs	r1, #1
 800b196:	f7ff ff3b 	bl	800b010 <_Balloc>
 800b19a:	2201      	movs	r2, #1
 800b19c:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800b1a0:	bd10      	pop	{r4, pc}
 800b1a2:	bf00      	nop

0800b1a4 <__multiply>:
 800b1a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800b1a8:	690e      	ldr	r6, [r1, #16]
 800b1aa:	6914      	ldr	r4, [r2, #16]
 800b1ac:	42a6      	cmp	r6, r4
 800b1ae:	b083      	sub	sp, #12
 800b1b0:	460f      	mov	r7, r1
 800b1b2:	4615      	mov	r5, r2
 800b1b4:	da04      	bge.n	800b1c0 <__multiply+0x1c>
 800b1b6:	4632      	mov	r2, r6
 800b1b8:	462f      	mov	r7, r5
 800b1ba:	4626      	mov	r6, r4
 800b1bc:	460d      	mov	r5, r1
 800b1be:	4614      	mov	r4, r2
 800b1c0:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 800b1c4:	eb06 0804 	add.w	r8, r6, r4
 800b1c8:	4543      	cmp	r3, r8
 800b1ca:	bfb8      	it	lt
 800b1cc:	3101      	addlt	r1, #1
 800b1ce:	f7ff ff1f 	bl	800b010 <_Balloc>
 800b1d2:	f100 0914 	add.w	r9, r0, #20
 800b1d6:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800b1da:	45f1      	cmp	r9, lr
 800b1dc:	9000      	str	r0, [sp, #0]
 800b1de:	d205      	bcs.n	800b1ec <__multiply+0x48>
 800b1e0:	464b      	mov	r3, r9
 800b1e2:	2200      	movs	r2, #0
 800b1e4:	f843 2b04 	str.w	r2, [r3], #4
 800b1e8:	459e      	cmp	lr, r3
 800b1ea:	d8fb      	bhi.n	800b1e4 <__multiply+0x40>
 800b1ec:	f105 0a14 	add.w	sl, r5, #20
 800b1f0:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 800b1f4:	f107 0314 	add.w	r3, r7, #20
 800b1f8:	45a2      	cmp	sl, r4
 800b1fa:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800b1fe:	d261      	bcs.n	800b2c4 <__multiply+0x120>
 800b200:	1b64      	subs	r4, r4, r5
 800b202:	3c15      	subs	r4, #21
 800b204:	f024 0403 	bic.w	r4, r4, #3
 800b208:	f8cd e004 	str.w	lr, [sp, #4]
 800b20c:	44a2      	add	sl, r4
 800b20e:	f105 0210 	add.w	r2, r5, #16
 800b212:	469e      	mov	lr, r3
 800b214:	e005      	b.n	800b222 <__multiply+0x7e>
 800b216:	0c2d      	lsrs	r5, r5, #16
 800b218:	d12b      	bne.n	800b272 <__multiply+0xce>
 800b21a:	4592      	cmp	sl, r2
 800b21c:	f109 0904 	add.w	r9, r9, #4
 800b220:	d04e      	beq.n	800b2c0 <__multiply+0x11c>
 800b222:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800b226:	fa1f fb85 	uxth.w	fp, r5
 800b22a:	f1bb 0f00 	cmp.w	fp, #0
 800b22e:	d0f2      	beq.n	800b216 <__multiply+0x72>
 800b230:	4677      	mov	r7, lr
 800b232:	464e      	mov	r6, r9
 800b234:	2000      	movs	r0, #0
 800b236:	e000      	b.n	800b23a <__multiply+0x96>
 800b238:	4626      	mov	r6, r4
 800b23a:	f857 1b04 	ldr.w	r1, [r7], #4
 800b23e:	6834      	ldr	r4, [r6, #0]
 800b240:	b28b      	uxth	r3, r1
 800b242:	b2a5      	uxth	r5, r4
 800b244:	0c09      	lsrs	r1, r1, #16
 800b246:	0c24      	lsrs	r4, r4, #16
 800b248:	fb0b 5303 	mla	r3, fp, r3, r5
 800b24c:	4403      	add	r3, r0
 800b24e:	fb0b 4001 	mla	r0, fp, r1, r4
 800b252:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800b256:	4634      	mov	r4, r6
 800b258:	b29b      	uxth	r3, r3
 800b25a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800b25e:	45bc      	cmp	ip, r7
 800b260:	ea4f 4010 	mov.w	r0, r0, lsr #16
 800b264:	f844 3b04 	str.w	r3, [r4], #4
 800b268:	d8e6      	bhi.n	800b238 <__multiply+0x94>
 800b26a:	6070      	str	r0, [r6, #4]
 800b26c:	6815      	ldr	r5, [r2, #0]
 800b26e:	0c2d      	lsrs	r5, r5, #16
 800b270:	d0d3      	beq.n	800b21a <__multiply+0x76>
 800b272:	f8d9 3000 	ldr.w	r3, [r9]
 800b276:	4676      	mov	r6, lr
 800b278:	4618      	mov	r0, r3
 800b27a:	46cb      	mov	fp, r9
 800b27c:	2100      	movs	r1, #0
 800b27e:	e000      	b.n	800b282 <__multiply+0xde>
 800b280:	46a3      	mov	fp, r4
 800b282:	8834      	ldrh	r4, [r6, #0]
 800b284:	0c00      	lsrs	r0, r0, #16
 800b286:	fb05 0004 	mla	r0, r5, r4, r0
 800b28a:	4401      	add	r1, r0
 800b28c:	b29b      	uxth	r3, r3
 800b28e:	465c      	mov	r4, fp
 800b290:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800b294:	f844 3b04 	str.w	r3, [r4], #4
 800b298:	f856 3b04 	ldr.w	r3, [r6], #4
 800b29c:	f8db 0004 	ldr.w	r0, [fp, #4]
 800b2a0:	0c1b      	lsrs	r3, r3, #16
 800b2a2:	b287      	uxth	r7, r0
 800b2a4:	fb05 7303 	mla	r3, r5, r3, r7
 800b2a8:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 800b2ac:	45b4      	cmp	ip, r6
 800b2ae:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800b2b2:	d8e5      	bhi.n	800b280 <__multiply+0xdc>
 800b2b4:	4592      	cmp	sl, r2
 800b2b6:	f8cb 3004 	str.w	r3, [fp, #4]
 800b2ba:	f109 0904 	add.w	r9, r9, #4
 800b2be:	d1b0      	bne.n	800b222 <__multiply+0x7e>
 800b2c0:	f8dd e004 	ldr.w	lr, [sp, #4]
 800b2c4:	f1b8 0f00 	cmp.w	r8, #0
 800b2c8:	dd0b      	ble.n	800b2e2 <__multiply+0x13e>
 800b2ca:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800b2ce:	f1ae 0e04 	sub.w	lr, lr, #4
 800b2d2:	b11b      	cbz	r3, 800b2dc <__multiply+0x138>
 800b2d4:	e005      	b.n	800b2e2 <__multiply+0x13e>
 800b2d6:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800b2da:	b913      	cbnz	r3, 800b2e2 <__multiply+0x13e>
 800b2dc:	f1b8 0801 	subs.w	r8, r8, #1
 800b2e0:	d1f9      	bne.n	800b2d6 <__multiply+0x132>
 800b2e2:	9800      	ldr	r0, [sp, #0]
 800b2e4:	f8c0 8010 	str.w	r8, [r0, #16]
 800b2e8:	b003      	add	sp, #12
 800b2ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800b2ee:	bf00      	nop

0800b2f0 <__pow5mult>:
 800b2f0:	f012 0303 	ands.w	r3, r2, #3
 800b2f4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800b2f8:	4614      	mov	r4, r2
 800b2fa:	4607      	mov	r7, r0
 800b2fc:	d12e      	bne.n	800b35c <__pow5mult+0x6c>
 800b2fe:	460d      	mov	r5, r1
 800b300:	10a4      	asrs	r4, r4, #2
 800b302:	d01c      	beq.n	800b33e <__pow5mult+0x4e>
 800b304:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800b306:	b396      	cbz	r6, 800b36e <__pow5mult+0x7e>
 800b308:	07e3      	lsls	r3, r4, #31
 800b30a:	f04f 0800 	mov.w	r8, #0
 800b30e:	d406      	bmi.n	800b31e <__pow5mult+0x2e>
 800b310:	1064      	asrs	r4, r4, #1
 800b312:	d014      	beq.n	800b33e <__pow5mult+0x4e>
 800b314:	6830      	ldr	r0, [r6, #0]
 800b316:	b1a8      	cbz	r0, 800b344 <__pow5mult+0x54>
 800b318:	4606      	mov	r6, r0
 800b31a:	07e3      	lsls	r3, r4, #31
 800b31c:	d5f8      	bpl.n	800b310 <__pow5mult+0x20>
 800b31e:	4632      	mov	r2, r6
 800b320:	4629      	mov	r1, r5
 800b322:	4638      	mov	r0, r7
 800b324:	f7ff ff3e 	bl	800b1a4 <__multiply>
 800b328:	b1b5      	cbz	r5, 800b358 <__pow5mult+0x68>
 800b32a:	686a      	ldr	r2, [r5, #4]
 800b32c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800b32e:	1064      	asrs	r4, r4, #1
 800b330:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 800b334:	6029      	str	r1, [r5, #0]
 800b336:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800b33a:	4605      	mov	r5, r0
 800b33c:	d1ea      	bne.n	800b314 <__pow5mult+0x24>
 800b33e:	4628      	mov	r0, r5
 800b340:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800b344:	4632      	mov	r2, r6
 800b346:	4631      	mov	r1, r6
 800b348:	4638      	mov	r0, r7
 800b34a:	f7ff ff2b 	bl	800b1a4 <__multiply>
 800b34e:	6030      	str	r0, [r6, #0]
 800b350:	f8c0 8000 	str.w	r8, [r0]
 800b354:	4606      	mov	r6, r0
 800b356:	e7e0      	b.n	800b31a <__pow5mult+0x2a>
 800b358:	4605      	mov	r5, r0
 800b35a:	e7d9      	b.n	800b310 <__pow5mult+0x20>
 800b35c:	3b01      	subs	r3, #1
 800b35e:	4a0b      	ldr	r2, [pc, #44]	; (800b38c <__pow5mult+0x9c>)
 800b360:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 800b364:	2300      	movs	r3, #0
 800b366:	f7ff fe83 	bl	800b070 <__multadd>
 800b36a:	4605      	mov	r5, r0
 800b36c:	e7c8      	b.n	800b300 <__pow5mult+0x10>
 800b36e:	2101      	movs	r1, #1
 800b370:	4638      	mov	r0, r7
 800b372:	f7ff fe4d 	bl	800b010 <_Balloc>
 800b376:	f240 2371 	movw	r3, #625	; 0x271
 800b37a:	6143      	str	r3, [r0, #20]
 800b37c:	2201      	movs	r2, #1
 800b37e:	2300      	movs	r3, #0
 800b380:	6102      	str	r2, [r0, #16]
 800b382:	4606      	mov	r6, r0
 800b384:	64b8      	str	r0, [r7, #72]	; 0x48
 800b386:	6003      	str	r3, [r0, #0]
 800b388:	e7be      	b.n	800b308 <__pow5mult+0x18>
 800b38a:	bf00      	nop
 800b38c:	0800d178 	.word	0x0800d178

0800b390 <__lshift>:
 800b390:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800b394:	4691      	mov	r9, r2
 800b396:	690a      	ldr	r2, [r1, #16]
 800b398:	460e      	mov	r6, r1
 800b39a:	ea4f 1469 	mov.w	r4, r9, asr #5
 800b39e:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800b3a2:	eb04 0802 	add.w	r8, r4, r2
 800b3a6:	f108 0501 	add.w	r5, r8, #1
 800b3aa:	429d      	cmp	r5, r3
 800b3ac:	4607      	mov	r7, r0
 800b3ae:	dd04      	ble.n	800b3ba <__lshift+0x2a>
 800b3b0:	005b      	lsls	r3, r3, #1
 800b3b2:	429d      	cmp	r5, r3
 800b3b4:	f101 0101 	add.w	r1, r1, #1
 800b3b8:	dcfa      	bgt.n	800b3b0 <__lshift+0x20>
 800b3ba:	4638      	mov	r0, r7
 800b3bc:	f7ff fe28 	bl	800b010 <_Balloc>
 800b3c0:	2c00      	cmp	r4, #0
 800b3c2:	f100 0314 	add.w	r3, r0, #20
 800b3c6:	dd37      	ble.n	800b438 <__lshift+0xa8>
 800b3c8:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 800b3cc:	2200      	movs	r2, #0
 800b3ce:	f843 2b04 	str.w	r2, [r3], #4
 800b3d2:	428b      	cmp	r3, r1
 800b3d4:	d1fb      	bne.n	800b3ce <__lshift+0x3e>
 800b3d6:	6934      	ldr	r4, [r6, #16]
 800b3d8:	f106 0314 	add.w	r3, r6, #20
 800b3dc:	f019 091f 	ands.w	r9, r9, #31
 800b3e0:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 800b3e4:	d020      	beq.n	800b428 <__lshift+0x98>
 800b3e6:	f1c9 0e20 	rsb	lr, r9, #32
 800b3ea:	2200      	movs	r2, #0
 800b3ec:	e000      	b.n	800b3f0 <__lshift+0x60>
 800b3ee:	4651      	mov	r1, sl
 800b3f0:	681c      	ldr	r4, [r3, #0]
 800b3f2:	468a      	mov	sl, r1
 800b3f4:	fa04 f409 	lsl.w	r4, r4, r9
 800b3f8:	4314      	orrs	r4, r2
 800b3fa:	f84a 4b04 	str.w	r4, [sl], #4
 800b3fe:	f853 2b04 	ldr.w	r2, [r3], #4
 800b402:	4563      	cmp	r3, ip
 800b404:	fa22 f20e 	lsr.w	r2, r2, lr
 800b408:	d3f1      	bcc.n	800b3ee <__lshift+0x5e>
 800b40a:	604a      	str	r2, [r1, #4]
 800b40c:	b10a      	cbz	r2, 800b412 <__lshift+0x82>
 800b40e:	f108 0502 	add.w	r5, r8, #2
 800b412:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800b414:	6872      	ldr	r2, [r6, #4]
 800b416:	3d01      	subs	r5, #1
 800b418:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 800b41c:	6105      	str	r5, [r0, #16]
 800b41e:	6031      	str	r1, [r6, #0]
 800b420:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 800b424:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800b428:	3904      	subs	r1, #4
 800b42a:	f853 2b04 	ldr.w	r2, [r3], #4
 800b42e:	f841 2f04 	str.w	r2, [r1, #4]!
 800b432:	459c      	cmp	ip, r3
 800b434:	d8f9      	bhi.n	800b42a <__lshift+0x9a>
 800b436:	e7ec      	b.n	800b412 <__lshift+0x82>
 800b438:	4619      	mov	r1, r3
 800b43a:	e7cc      	b.n	800b3d6 <__lshift+0x46>

0800b43c <__mcmp>:
 800b43c:	b430      	push	{r4, r5}
 800b43e:	690b      	ldr	r3, [r1, #16]
 800b440:	4605      	mov	r5, r0
 800b442:	6900      	ldr	r0, [r0, #16]
 800b444:	1ac0      	subs	r0, r0, r3
 800b446:	d10f      	bne.n	800b468 <__mcmp+0x2c>
 800b448:	009b      	lsls	r3, r3, #2
 800b44a:	3514      	adds	r5, #20
 800b44c:	3114      	adds	r1, #20
 800b44e:	4419      	add	r1, r3
 800b450:	442b      	add	r3, r5
 800b452:	e001      	b.n	800b458 <__mcmp+0x1c>
 800b454:	429d      	cmp	r5, r3
 800b456:	d207      	bcs.n	800b468 <__mcmp+0x2c>
 800b458:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 800b45c:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800b460:	4294      	cmp	r4, r2
 800b462:	d0f7      	beq.n	800b454 <__mcmp+0x18>
 800b464:	d302      	bcc.n	800b46c <__mcmp+0x30>
 800b466:	2001      	movs	r0, #1
 800b468:	bc30      	pop	{r4, r5}
 800b46a:	4770      	bx	lr
 800b46c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800b470:	e7fa      	b.n	800b468 <__mcmp+0x2c>
 800b472:	bf00      	nop

0800b474 <__mdiff>:
 800b474:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800b478:	6913      	ldr	r3, [r2, #16]
 800b47a:	690d      	ldr	r5, [r1, #16]
 800b47c:	1aed      	subs	r5, r5, r3
 800b47e:	2d00      	cmp	r5, #0
 800b480:	460e      	mov	r6, r1
 800b482:	4690      	mov	r8, r2
 800b484:	f101 0414 	add.w	r4, r1, #20
 800b488:	f102 0714 	add.w	r7, r2, #20
 800b48c:	d114      	bne.n	800b4b8 <__mdiff+0x44>
 800b48e:	009b      	lsls	r3, r3, #2
 800b490:	18e2      	adds	r2, r4, r3
 800b492:	443b      	add	r3, r7
 800b494:	e001      	b.n	800b49a <__mdiff+0x26>
 800b496:	42a2      	cmp	r2, r4
 800b498:	d959      	bls.n	800b54e <__mdiff+0xda>
 800b49a:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800b49e:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800b4a2:	458c      	cmp	ip, r1
 800b4a4:	d0f7      	beq.n	800b496 <__mdiff+0x22>
 800b4a6:	d209      	bcs.n	800b4bc <__mdiff+0x48>
 800b4a8:	4622      	mov	r2, r4
 800b4aa:	4633      	mov	r3, r6
 800b4ac:	463c      	mov	r4, r7
 800b4ae:	4646      	mov	r6, r8
 800b4b0:	4617      	mov	r7, r2
 800b4b2:	4698      	mov	r8, r3
 800b4b4:	2501      	movs	r5, #1
 800b4b6:	e001      	b.n	800b4bc <__mdiff+0x48>
 800b4b8:	dbf6      	blt.n	800b4a8 <__mdiff+0x34>
 800b4ba:	2500      	movs	r5, #0
 800b4bc:	6871      	ldr	r1, [r6, #4]
 800b4be:	f7ff fda7 	bl	800b010 <_Balloc>
 800b4c2:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800b4c6:	6936      	ldr	r6, [r6, #16]
 800b4c8:	60c5      	str	r5, [r0, #12]
 800b4ca:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800b4ce:	46bc      	mov	ip, r7
 800b4d0:	f100 0514 	add.w	r5, r0, #20
 800b4d4:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800b4d8:	2300      	movs	r3, #0
 800b4da:	f85c 1b04 	ldr.w	r1, [ip], #4
 800b4de:	f854 8b04 	ldr.w	r8, [r4], #4
 800b4e2:	b28a      	uxth	r2, r1
 800b4e4:	fa13 f388 	uxtah	r3, r3, r8
 800b4e8:	0c09      	lsrs	r1, r1, #16
 800b4ea:	1a9a      	subs	r2, r3, r2
 800b4ec:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800b4f0:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800b4f4:	b292      	uxth	r2, r2
 800b4f6:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800b4fa:	45e6      	cmp	lr, ip
 800b4fc:	f845 2b04 	str.w	r2, [r5], #4
 800b500:	ea4f 4323 	mov.w	r3, r3, asr #16
 800b504:	d8e9      	bhi.n	800b4da <__mdiff+0x66>
 800b506:	42a7      	cmp	r7, r4
 800b508:	d917      	bls.n	800b53a <__mdiff+0xc6>
 800b50a:	46ae      	mov	lr, r5
 800b50c:	46a4      	mov	ip, r4
 800b50e:	f85c 2b04 	ldr.w	r2, [ip], #4
 800b512:	fa13 f382 	uxtah	r3, r3, r2
 800b516:	1419      	asrs	r1, r3, #16
 800b518:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 800b51c:	b29b      	uxth	r3, r3
 800b51e:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800b522:	4567      	cmp	r7, ip
 800b524:	f84e 2b04 	str.w	r2, [lr], #4
 800b528:	ea4f 4321 	mov.w	r3, r1, asr #16
 800b52c:	d8ef      	bhi.n	800b50e <__mdiff+0x9a>
 800b52e:	43e4      	mvns	r4, r4
 800b530:	4427      	add	r7, r4
 800b532:	f027 0703 	bic.w	r7, r7, #3
 800b536:	3704      	adds	r7, #4
 800b538:	443d      	add	r5, r7
 800b53a:	3d04      	subs	r5, #4
 800b53c:	b922      	cbnz	r2, 800b548 <__mdiff+0xd4>
 800b53e:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800b542:	3e01      	subs	r6, #1
 800b544:	2b00      	cmp	r3, #0
 800b546:	d0fa      	beq.n	800b53e <__mdiff+0xca>
 800b548:	6106      	str	r6, [r0, #16]
 800b54a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800b54e:	2100      	movs	r1, #0
 800b550:	f7ff fd5e 	bl	800b010 <_Balloc>
 800b554:	2201      	movs	r2, #1
 800b556:	2300      	movs	r3, #0
 800b558:	e9c0 2304 	strd	r2, r3, [r0, #16]
 800b55c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800b560 <__d2b>:
 800b560:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800b564:	460f      	mov	r7, r1
 800b566:	b083      	sub	sp, #12
 800b568:	2101      	movs	r1, #1
 800b56a:	ec55 4b10 	vmov	r4, r5, d0
 800b56e:	4616      	mov	r6, r2
 800b570:	f7ff fd4e 	bl	800b010 <_Balloc>
 800b574:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800b578:	4681      	mov	r9, r0
 800b57a:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800b57e:	f1b8 0f00 	cmp.w	r8, #0
 800b582:	d001      	beq.n	800b588 <__d2b+0x28>
 800b584:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800b588:	2c00      	cmp	r4, #0
 800b58a:	9301      	str	r3, [sp, #4]
 800b58c:	d024      	beq.n	800b5d8 <__d2b+0x78>
 800b58e:	a802      	add	r0, sp, #8
 800b590:	f840 4d08 	str.w	r4, [r0, #-8]!
 800b594:	f7ff fdcc 	bl	800b130 <__lo0bits>
 800b598:	2800      	cmp	r0, #0
 800b59a:	d136      	bne.n	800b60a <__d2b+0xaa>
 800b59c:	e9dd 2300 	ldrd	r2, r3, [sp]
 800b5a0:	f8c9 2014 	str.w	r2, [r9, #20]
 800b5a4:	2b00      	cmp	r3, #0
 800b5a6:	bf0c      	ite	eq
 800b5a8:	2101      	moveq	r1, #1
 800b5aa:	2102      	movne	r1, #2
 800b5ac:	f8c9 3018 	str.w	r3, [r9, #24]
 800b5b0:	f8c9 1010 	str.w	r1, [r9, #16]
 800b5b4:	f1b8 0f00 	cmp.w	r8, #0
 800b5b8:	d11b      	bne.n	800b5f2 <__d2b+0x92>
 800b5ba:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800b5be:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800b5c2:	6038      	str	r0, [r7, #0]
 800b5c4:	6918      	ldr	r0, [r3, #16]
 800b5c6:	f7ff fd93 	bl	800b0f0 <__hi0bits>
 800b5ca:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800b5ce:	6030      	str	r0, [r6, #0]
 800b5d0:	4648      	mov	r0, r9
 800b5d2:	b003      	add	sp, #12
 800b5d4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800b5d8:	a801      	add	r0, sp, #4
 800b5da:	f7ff fda9 	bl	800b130 <__lo0bits>
 800b5de:	9b01      	ldr	r3, [sp, #4]
 800b5e0:	f8c9 3014 	str.w	r3, [r9, #20]
 800b5e4:	2101      	movs	r1, #1
 800b5e6:	3020      	adds	r0, #32
 800b5e8:	f8c9 1010 	str.w	r1, [r9, #16]
 800b5ec:	f1b8 0f00 	cmp.w	r8, #0
 800b5f0:	d0e3      	beq.n	800b5ba <__d2b+0x5a>
 800b5f2:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800b5f6:	eb08 0300 	add.w	r3, r8, r0
 800b5fa:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800b5fe:	603b      	str	r3, [r7, #0]
 800b600:	6030      	str	r0, [r6, #0]
 800b602:	4648      	mov	r0, r9
 800b604:	b003      	add	sp, #12
 800b606:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800b60a:	e9dd 1300 	ldrd	r1, r3, [sp]
 800b60e:	f1c0 0220 	rsb	r2, r0, #32
 800b612:	fa03 f202 	lsl.w	r2, r3, r2
 800b616:	430a      	orrs	r2, r1
 800b618:	40c3      	lsrs	r3, r0
 800b61a:	9301      	str	r3, [sp, #4]
 800b61c:	f8c9 2014 	str.w	r2, [r9, #20]
 800b620:	e7c0      	b.n	800b5a4 <__d2b+0x44>
 800b622:	bf00      	nop

0800b624 <frexp>:
 800b624:	ec53 2b10 	vmov	r2, r3, d0
 800b628:	b570      	push	{r4, r5, r6, lr}
 800b62a:	4e16      	ldr	r6, [pc, #88]	; (800b684 <frexp+0x60>)
 800b62c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 800b630:	2500      	movs	r5, #0
 800b632:	42b1      	cmp	r1, r6
 800b634:	4604      	mov	r4, r0
 800b636:	6005      	str	r5, [r0, #0]
 800b638:	dc21      	bgt.n	800b67e <frexp+0x5a>
 800b63a:	ee10 6a10 	vmov	r6, s0
 800b63e:	430e      	orrs	r6, r1
 800b640:	d01d      	beq.n	800b67e <frexp+0x5a>
 800b642:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800b646:	4618      	mov	r0, r3
 800b648:	da0c      	bge.n	800b664 <frexp+0x40>
 800b64a:	4619      	mov	r1, r3
 800b64c:	2200      	movs	r2, #0
 800b64e:	ee10 0a10 	vmov	r0, s0
 800b652:	4b0d      	ldr	r3, [pc, #52]	; (800b688 <frexp+0x64>)
 800b654:	f7f5 fad0 	bl	8000bf8 <__aeabi_dmul>
 800b658:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800b65c:	4602      	mov	r2, r0
 800b65e:	4608      	mov	r0, r1
 800b660:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800b664:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 800b668:	1509      	asrs	r1, r1, #20
 800b66a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800b66e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800b672:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800b676:	4429      	add	r1, r5
 800b678:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800b67c:	6021      	str	r1, [r4, #0]
 800b67e:	ec43 2b10 	vmov	d0, r2, r3
 800b682:	bd70      	pop	{r4, r5, r6, pc}
 800b684:	7fefffff 	.word	0x7fefffff
 800b688:	43500000 	.word	0x43500000

0800b68c <_raise_r>:
 800b68c:	291f      	cmp	r1, #31
 800b68e:	b538      	push	{r3, r4, r5, lr}
 800b690:	d822      	bhi.n	800b6d8 <_raise_r+0x4c>
 800b692:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
 800b696:	4605      	mov	r5, r0
 800b698:	460c      	mov	r4, r1
 800b69a:	b16b      	cbz	r3, 800b6b8 <_raise_r+0x2c>
 800b69c:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
 800b6a0:	b152      	cbz	r2, 800b6b8 <_raise_r+0x2c>
 800b6a2:	2a01      	cmp	r2, #1
 800b6a4:	d012      	beq.n	800b6cc <_raise_r+0x40>
 800b6a6:	1c51      	adds	r1, r2, #1
 800b6a8:	d012      	beq.n	800b6d0 <_raise_r+0x44>
 800b6aa:	2500      	movs	r5, #0
 800b6ac:	4620      	mov	r0, r4
 800b6ae:	f843 5024 	str.w	r5, [r3, r4, lsl #2]
 800b6b2:	4790      	blx	r2
 800b6b4:	4628      	mov	r0, r5
 800b6b6:	bd38      	pop	{r3, r4, r5, pc}
 800b6b8:	4628      	mov	r0, r5
 800b6ba:	f000 f82f 	bl	800b71c <_getpid_r>
 800b6be:	4622      	mov	r2, r4
 800b6c0:	4601      	mov	r1, r0
 800b6c2:	4628      	mov	r0, r5
 800b6c4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800b6c8:	f000 b814 	b.w	800b6f4 <_kill_r>
 800b6cc:	2000      	movs	r0, #0
 800b6ce:	bd38      	pop	{r3, r4, r5, pc}
 800b6d0:	2316      	movs	r3, #22
 800b6d2:	6003      	str	r3, [r0, #0]
 800b6d4:	2001      	movs	r0, #1
 800b6d6:	bd38      	pop	{r3, r4, r5, pc}
 800b6d8:	2316      	movs	r3, #22
 800b6da:	6003      	str	r3, [r0, #0]
 800b6dc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800b6e0:	bd38      	pop	{r3, r4, r5, pc}
 800b6e2:	bf00      	nop

0800b6e4 <raise>:
 800b6e4:	4b02      	ldr	r3, [pc, #8]	; (800b6f0 <raise+0xc>)
 800b6e6:	4601      	mov	r1, r0
 800b6e8:	6818      	ldr	r0, [r3, #0]
 800b6ea:	f7ff bfcf 	b.w	800b68c <_raise_r>
 800b6ee:	bf00      	nop
 800b6f0:	2000001c 	.word	0x2000001c

0800b6f4 <_kill_r>:
 800b6f4:	b538      	push	{r3, r4, r5, lr}
 800b6f6:	460b      	mov	r3, r1
 800b6f8:	4c07      	ldr	r4, [pc, #28]	; (800b718 <_kill_r+0x24>)
 800b6fa:	4605      	mov	r5, r0
 800b6fc:	4611      	mov	r1, r2
 800b6fe:	4618      	mov	r0, r3
 800b700:	2300      	movs	r3, #0
 800b702:	6023      	str	r3, [r4, #0]
 800b704:	f7fa fbc7 	bl	8005e96 <_kill>
 800b708:	1c43      	adds	r3, r0, #1
 800b70a:	d000      	beq.n	800b70e <_kill_r+0x1a>
 800b70c:	bd38      	pop	{r3, r4, r5, pc}
 800b70e:	6823      	ldr	r3, [r4, #0]
 800b710:	2b00      	cmp	r3, #0
 800b712:	d0fb      	beq.n	800b70c <_kill_r+0x18>
 800b714:	602b      	str	r3, [r5, #0]
 800b716:	bd38      	pop	{r3, r4, r5, pc}
 800b718:	2000146c 	.word	0x2000146c

0800b71c <_getpid_r>:
 800b71c:	f7fa bbb9 	b.w	8005e92 <_getpid>

0800b720 <__sread>:
 800b720:	b510      	push	{r4, lr}
 800b722:	460c      	mov	r4, r1
 800b724:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b728:	f000 fa5e 	bl	800bbe8 <_read_r>
 800b72c:	2800      	cmp	r0, #0
 800b72e:	db03      	blt.n	800b738 <__sread+0x18>
 800b730:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800b732:	4403      	add	r3, r0
 800b734:	6523      	str	r3, [r4, #80]	; 0x50
 800b736:	bd10      	pop	{r4, pc}
 800b738:	89a3      	ldrh	r3, [r4, #12]
 800b73a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800b73e:	81a3      	strh	r3, [r4, #12]
 800b740:	bd10      	pop	{r4, pc}
 800b742:	bf00      	nop

0800b744 <__swrite>:
 800b744:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800b748:	4616      	mov	r6, r2
 800b74a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800b74e:	461f      	mov	r7, r3
 800b750:	05d3      	lsls	r3, r2, #23
 800b752:	460c      	mov	r4, r1
 800b754:	4605      	mov	r5, r0
 800b756:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b75a:	d507      	bpl.n	800b76c <__swrite+0x28>
 800b75c:	2200      	movs	r2, #0
 800b75e:	2302      	movs	r3, #2
 800b760:	f000 fa2c 	bl	800bbbc <_lseek_r>
 800b764:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800b768:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800b76c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 800b770:	81a2      	strh	r2, [r4, #12]
 800b772:	463b      	mov	r3, r7
 800b774:	4632      	mov	r2, r6
 800b776:	4628      	mov	r0, r5
 800b778:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800b77c:	f000 b8d4 	b.w	800b928 <_write_r>

0800b780 <__sseek>:
 800b780:	b510      	push	{r4, lr}
 800b782:	460c      	mov	r4, r1
 800b784:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b788:	f000 fa18 	bl	800bbbc <_lseek_r>
 800b78c:	89a3      	ldrh	r3, [r4, #12]
 800b78e:	1c42      	adds	r2, r0, #1
 800b790:	bf0e      	itee	eq
 800b792:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800b796:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800b79a:	6520      	strne	r0, [r4, #80]	; 0x50
 800b79c:	81a3      	strh	r3, [r4, #12]
 800b79e:	bd10      	pop	{r4, pc}

0800b7a0 <__sclose>:
 800b7a0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b7a4:	f000 b96a 	b.w	800ba7c <_close_r>

0800b7a8 <strncpy>:
 800b7a8:	ea40 0301 	orr.w	r3, r0, r1
 800b7ac:	079b      	lsls	r3, r3, #30
 800b7ae:	b470      	push	{r4, r5, r6}
 800b7b0:	d12a      	bne.n	800b808 <strncpy+0x60>
 800b7b2:	2a03      	cmp	r2, #3
 800b7b4:	d928      	bls.n	800b808 <strncpy+0x60>
 800b7b6:	460c      	mov	r4, r1
 800b7b8:	4603      	mov	r3, r0
 800b7ba:	4621      	mov	r1, r4
 800b7bc:	f854 6b04 	ldr.w	r6, [r4], #4
 800b7c0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800b7c4:	ea25 0506 	bic.w	r5, r5, r6
 800b7c8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 800b7cc:	d106      	bne.n	800b7dc <strncpy+0x34>
 800b7ce:	3a04      	subs	r2, #4
 800b7d0:	2a03      	cmp	r2, #3
 800b7d2:	f843 6b04 	str.w	r6, [r3], #4
 800b7d6:	4621      	mov	r1, r4
 800b7d8:	d8ef      	bhi.n	800b7ba <strncpy+0x12>
 800b7da:	b19a      	cbz	r2, 800b804 <strncpy+0x5c>
 800b7dc:	780c      	ldrb	r4, [r1, #0]
 800b7de:	701c      	strb	r4, [r3, #0]
 800b7e0:	3a01      	subs	r2, #1
 800b7e2:	3301      	adds	r3, #1
 800b7e4:	b13c      	cbz	r4, 800b7f6 <strncpy+0x4e>
 800b7e6:	b16a      	cbz	r2, 800b804 <strncpy+0x5c>
 800b7e8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 800b7ec:	f803 4b01 	strb.w	r4, [r3], #1
 800b7f0:	3a01      	subs	r2, #1
 800b7f2:	2c00      	cmp	r4, #0
 800b7f4:	d1f7      	bne.n	800b7e6 <strncpy+0x3e>
 800b7f6:	b12a      	cbz	r2, 800b804 <strncpy+0x5c>
 800b7f8:	441a      	add	r2, r3
 800b7fa:	2100      	movs	r1, #0
 800b7fc:	f803 1b01 	strb.w	r1, [r3], #1
 800b800:	4293      	cmp	r3, r2
 800b802:	d1fb      	bne.n	800b7fc <strncpy+0x54>
 800b804:	bc70      	pop	{r4, r5, r6}
 800b806:	4770      	bx	lr
 800b808:	4603      	mov	r3, r0
 800b80a:	e7e6      	b.n	800b7da <strncpy+0x32>

0800b80c <__swbuf_r>:
 800b80c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800b80e:	460d      	mov	r5, r1
 800b810:	4614      	mov	r4, r2
 800b812:	4606      	mov	r6, r0
 800b814:	b110      	cbz	r0, 800b81c <__swbuf_r+0x10>
 800b816:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800b818:	2b00      	cmp	r3, #0
 800b81a:	d043      	beq.n	800b8a4 <__swbuf_r+0x98>
 800b81c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800b820:	69a3      	ldr	r3, [r4, #24]
 800b822:	60a3      	str	r3, [r4, #8]
 800b824:	b291      	uxth	r1, r2
 800b826:	0708      	lsls	r0, r1, #28
 800b828:	d51b      	bpl.n	800b862 <__swbuf_r+0x56>
 800b82a:	6923      	ldr	r3, [r4, #16]
 800b82c:	b1cb      	cbz	r3, 800b862 <__swbuf_r+0x56>
 800b82e:	b2ed      	uxtb	r5, r5
 800b830:	0489      	lsls	r1, r1, #18
 800b832:	462f      	mov	r7, r5
 800b834:	d522      	bpl.n	800b87c <__swbuf_r+0x70>
 800b836:	6822      	ldr	r2, [r4, #0]
 800b838:	6961      	ldr	r1, [r4, #20]
 800b83a:	1ad3      	subs	r3, r2, r3
 800b83c:	4299      	cmp	r1, r3
 800b83e:	dd29      	ble.n	800b894 <__swbuf_r+0x88>
 800b840:	3301      	adds	r3, #1
 800b842:	68a1      	ldr	r1, [r4, #8]
 800b844:	1c50      	adds	r0, r2, #1
 800b846:	3901      	subs	r1, #1
 800b848:	60a1      	str	r1, [r4, #8]
 800b84a:	6020      	str	r0, [r4, #0]
 800b84c:	7015      	strb	r5, [r2, #0]
 800b84e:	6962      	ldr	r2, [r4, #20]
 800b850:	429a      	cmp	r2, r3
 800b852:	d02a      	beq.n	800b8aa <__swbuf_r+0x9e>
 800b854:	89a3      	ldrh	r3, [r4, #12]
 800b856:	07db      	lsls	r3, r3, #31
 800b858:	d501      	bpl.n	800b85e <__swbuf_r+0x52>
 800b85a:	2d0a      	cmp	r5, #10
 800b85c:	d025      	beq.n	800b8aa <__swbuf_r+0x9e>
 800b85e:	4638      	mov	r0, r7
 800b860:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800b862:	4621      	mov	r1, r4
 800b864:	4630      	mov	r0, r6
 800b866:	f7fd fdd7 	bl	8009418 <__swsetup_r>
 800b86a:	bb20      	cbnz	r0, 800b8b6 <__swbuf_r+0xaa>
 800b86c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800b870:	6923      	ldr	r3, [r4, #16]
 800b872:	b291      	uxth	r1, r2
 800b874:	b2ed      	uxtb	r5, r5
 800b876:	0489      	lsls	r1, r1, #18
 800b878:	462f      	mov	r7, r5
 800b87a:	d4dc      	bmi.n	800b836 <__swbuf_r+0x2a>
 800b87c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800b87e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800b882:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800b886:	81a2      	strh	r2, [r4, #12]
 800b888:	6822      	ldr	r2, [r4, #0]
 800b88a:	6661      	str	r1, [r4, #100]	; 0x64
 800b88c:	6961      	ldr	r1, [r4, #20]
 800b88e:	1ad3      	subs	r3, r2, r3
 800b890:	4299      	cmp	r1, r3
 800b892:	dcd5      	bgt.n	800b840 <__swbuf_r+0x34>
 800b894:	4621      	mov	r1, r4
 800b896:	4630      	mov	r0, r6
 800b898:	f7fe fe88 	bl	800a5ac <_fflush_r>
 800b89c:	b958      	cbnz	r0, 800b8b6 <__swbuf_r+0xaa>
 800b89e:	6822      	ldr	r2, [r4, #0]
 800b8a0:	2301      	movs	r3, #1
 800b8a2:	e7ce      	b.n	800b842 <__swbuf_r+0x36>
 800b8a4:	f7fe fede 	bl	800a664 <__sinit>
 800b8a8:	e7b8      	b.n	800b81c <__swbuf_r+0x10>
 800b8aa:	4621      	mov	r1, r4
 800b8ac:	4630      	mov	r0, r6
 800b8ae:	f7fe fe7d 	bl	800a5ac <_fflush_r>
 800b8b2:	2800      	cmp	r0, #0
 800b8b4:	d0d3      	beq.n	800b85e <__swbuf_r+0x52>
 800b8b6:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800b8ba:	e7d0      	b.n	800b85e <__swbuf_r+0x52>

0800b8bc <_wcrtomb_r>:
 800b8bc:	b5f0      	push	{r4, r5, r6, r7, lr}
 800b8be:	4c11      	ldr	r4, [pc, #68]	; (800b904 <_wcrtomb_r+0x48>)
 800b8c0:	6824      	ldr	r4, [r4, #0]
 800b8c2:	b085      	sub	sp, #20
 800b8c4:	4606      	mov	r6, r0
 800b8c6:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800b8c8:	461f      	mov	r7, r3
 800b8ca:	b151      	cbz	r1, 800b8e2 <_wcrtomb_r+0x26>
 800b8cc:	4d0e      	ldr	r5, [pc, #56]	; (800b908 <_wcrtomb_r+0x4c>)
 800b8ce:	2c00      	cmp	r4, #0
 800b8d0:	bf08      	it	eq
 800b8d2:	462c      	moveq	r4, r5
 800b8d4:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800b8d8:	47a0      	blx	r4
 800b8da:	1c43      	adds	r3, r0, #1
 800b8dc:	d00c      	beq.n	800b8f8 <_wcrtomb_r+0x3c>
 800b8de:	b005      	add	sp, #20
 800b8e0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800b8e2:	4a09      	ldr	r2, [pc, #36]	; (800b908 <_wcrtomb_r+0x4c>)
 800b8e4:	2c00      	cmp	r4, #0
 800b8e6:	bf08      	it	eq
 800b8e8:	4614      	moveq	r4, r2
 800b8ea:	460a      	mov	r2, r1
 800b8ec:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800b8f0:	a901      	add	r1, sp, #4
 800b8f2:	47a0      	blx	r4
 800b8f4:	1c43      	adds	r3, r0, #1
 800b8f6:	d1f2      	bne.n	800b8de <_wcrtomb_r+0x22>
 800b8f8:	2200      	movs	r2, #0
 800b8fa:	238a      	movs	r3, #138	; 0x8a
 800b8fc:	603a      	str	r2, [r7, #0]
 800b8fe:	6033      	str	r3, [r6, #0]
 800b900:	b005      	add	sp, #20
 800b902:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800b904:	2000001c 	.word	0x2000001c
 800b908:	2000085c 	.word	0x2000085c

0800b90c <__ascii_wctomb>:
 800b90c:	b121      	cbz	r1, 800b918 <__ascii_wctomb+0xc>
 800b90e:	2aff      	cmp	r2, #255	; 0xff
 800b910:	d804      	bhi.n	800b91c <__ascii_wctomb+0x10>
 800b912:	700a      	strb	r2, [r1, #0]
 800b914:	2001      	movs	r0, #1
 800b916:	4770      	bx	lr
 800b918:	4608      	mov	r0, r1
 800b91a:	4770      	bx	lr
 800b91c:	238a      	movs	r3, #138	; 0x8a
 800b91e:	6003      	str	r3, [r0, #0]
 800b920:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800b924:	4770      	bx	lr
 800b926:	bf00      	nop

0800b928 <_write_r>:
 800b928:	b570      	push	{r4, r5, r6, lr}
 800b92a:	460d      	mov	r5, r1
 800b92c:	4c08      	ldr	r4, [pc, #32]	; (800b950 <_write_r+0x28>)
 800b92e:	4611      	mov	r1, r2
 800b930:	4606      	mov	r6, r0
 800b932:	461a      	mov	r2, r3
 800b934:	4628      	mov	r0, r5
 800b936:	2300      	movs	r3, #0
 800b938:	6023      	str	r3, [r4, #0]
 800b93a:	f7fa facf 	bl	8005edc <_write>
 800b93e:	1c43      	adds	r3, r0, #1
 800b940:	d000      	beq.n	800b944 <_write_r+0x1c>
 800b942:	bd70      	pop	{r4, r5, r6, pc}
 800b944:	6823      	ldr	r3, [r4, #0]
 800b946:	2b00      	cmp	r3, #0
 800b948:	d0fb      	beq.n	800b942 <_write_r+0x1a>
 800b94a:	6033      	str	r3, [r6, #0]
 800b94c:	bd70      	pop	{r4, r5, r6, pc}
 800b94e:	bf00      	nop
 800b950:	2000146c 	.word	0x2000146c

0800b954 <__register_exitproc>:
 800b954:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800b958:	4d2b      	ldr	r5, [pc, #172]	; (800ba08 <__register_exitproc+0xb4>)
 800b95a:	4606      	mov	r6, r0
 800b95c:	6828      	ldr	r0, [r5, #0]
 800b95e:	4698      	mov	r8, r3
 800b960:	460f      	mov	r7, r1
 800b962:	4691      	mov	r9, r2
 800b964:	f7ff fa5e 	bl	800ae24 <__retarget_lock_acquire_recursive>
 800b968:	4b28      	ldr	r3, [pc, #160]	; (800ba0c <__register_exitproc+0xb8>)
 800b96a:	681c      	ldr	r4, [r3, #0]
 800b96c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 800b970:	2b00      	cmp	r3, #0
 800b972:	d03d      	beq.n	800b9f0 <__register_exitproc+0x9c>
 800b974:	685a      	ldr	r2, [r3, #4]
 800b976:	2a1f      	cmp	r2, #31
 800b978:	dc0d      	bgt.n	800b996 <__register_exitproc+0x42>
 800b97a:	f102 0c01 	add.w	ip, r2, #1
 800b97e:	bb16      	cbnz	r6, 800b9c6 <__register_exitproc+0x72>
 800b980:	3202      	adds	r2, #2
 800b982:	f8c3 c004 	str.w	ip, [r3, #4]
 800b986:	6828      	ldr	r0, [r5, #0]
 800b988:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800b98c:	f7ff fa4c 	bl	800ae28 <__retarget_lock_release_recursive>
 800b990:	2000      	movs	r0, #0
 800b992:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800b996:	4b1e      	ldr	r3, [pc, #120]	; (800ba10 <__register_exitproc+0xbc>)
 800b998:	b37b      	cbz	r3, 800b9fa <__register_exitproc+0xa6>
 800b99a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800b99e:	f7fa fb8d 	bl	80060bc <malloc>
 800b9a2:	4603      	mov	r3, r0
 800b9a4:	b348      	cbz	r0, 800b9fa <__register_exitproc+0xa6>
 800b9a6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800b9aa:	2100      	movs	r1, #0
 800b9ac:	e9c0 2100 	strd	r2, r1, [r0]
 800b9b0:	f04f 0c01 	mov.w	ip, #1
 800b9b4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 800b9b8:	460a      	mov	r2, r1
 800b9ba:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800b9be:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 800b9c2:	2e00      	cmp	r6, #0
 800b9c4:	d0dc      	beq.n	800b980 <__register_exitproc+0x2c>
 800b9c6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800b9ca:	2401      	movs	r4, #1
 800b9cc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 800b9d0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 800b9d4:	4094      	lsls	r4, r2
 800b9d6:	4320      	orrs	r0, r4
 800b9d8:	2e02      	cmp	r6, #2
 800b9da:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800b9de:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 800b9e2:	d1cd      	bne.n	800b980 <__register_exitproc+0x2c>
 800b9e4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 800b9e8:	430c      	orrs	r4, r1
 800b9ea:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800b9ee:	e7c7      	b.n	800b980 <__register_exitproc+0x2c>
 800b9f0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 800b9f4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 800b9f8:	e7bc      	b.n	800b974 <__register_exitproc+0x20>
 800b9fa:	6828      	ldr	r0, [r5, #0]
 800b9fc:	f7ff fa14 	bl	800ae28 <__retarget_lock_release_recursive>
 800ba00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800ba04:	e7c5      	b.n	800b992 <__register_exitproc+0x3e>
 800ba06:	bf00      	nop
 800ba08:	20000858 	.word	0x20000858
 800ba0c:	0800cfdc 	.word	0x0800cfdc
 800ba10:	080060bd 	.word	0x080060bd

0800ba14 <_calloc_r>:
 800ba14:	b510      	push	{r4, lr}
 800ba16:	fb02 f101 	mul.w	r1, r2, r1
 800ba1a:	f7fa fb5f 	bl	80060dc <_malloc_r>
 800ba1e:	4604      	mov	r4, r0
 800ba20:	b1d8      	cbz	r0, 800ba5a <_calloc_r+0x46>
 800ba22:	f850 2c04 	ldr.w	r2, [r0, #-4]
 800ba26:	f022 0203 	bic.w	r2, r2, #3
 800ba2a:	3a04      	subs	r2, #4
 800ba2c:	2a24      	cmp	r2, #36	; 0x24
 800ba2e:	d81d      	bhi.n	800ba6c <_calloc_r+0x58>
 800ba30:	2a13      	cmp	r2, #19
 800ba32:	d914      	bls.n	800ba5e <_calloc_r+0x4a>
 800ba34:	2300      	movs	r3, #0
 800ba36:	2a1b      	cmp	r2, #27
 800ba38:	e9c0 3300 	strd	r3, r3, [r0]
 800ba3c:	d91b      	bls.n	800ba76 <_calloc_r+0x62>
 800ba3e:	2a24      	cmp	r2, #36	; 0x24
 800ba40:	e9c0 3302 	strd	r3, r3, [r0, #8]
 800ba44:	bf0a      	itet	eq
 800ba46:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 800ba4a:	f100 0210 	addne.w	r2, r0, #16
 800ba4e:	f100 0218 	addeq.w	r2, r0, #24
 800ba52:	2300      	movs	r3, #0
 800ba54:	e9c2 3300 	strd	r3, r3, [r2]
 800ba58:	6093      	str	r3, [r2, #8]
 800ba5a:	4620      	mov	r0, r4
 800ba5c:	bd10      	pop	{r4, pc}
 800ba5e:	4602      	mov	r2, r0
 800ba60:	2300      	movs	r3, #0
 800ba62:	e9c2 3300 	strd	r3, r3, [r2]
 800ba66:	6093      	str	r3, [r2, #8]
 800ba68:	4620      	mov	r0, r4
 800ba6a:	bd10      	pop	{r4, pc}
 800ba6c:	2100      	movs	r1, #0
 800ba6e:	f7fa fdd9 	bl	8006624 <memset>
 800ba72:	4620      	mov	r0, r4
 800ba74:	bd10      	pop	{r4, pc}
 800ba76:	f100 0208 	add.w	r2, r0, #8
 800ba7a:	e7f1      	b.n	800ba60 <_calloc_r+0x4c>

0800ba7c <_close_r>:
 800ba7c:	b538      	push	{r3, r4, r5, lr}
 800ba7e:	4c07      	ldr	r4, [pc, #28]	; (800ba9c <_close_r+0x20>)
 800ba80:	2300      	movs	r3, #0
 800ba82:	4605      	mov	r5, r0
 800ba84:	4608      	mov	r0, r1
 800ba86:	6023      	str	r3, [r4, #0]
 800ba88:	f7fa fa57 	bl	8005f3a <_close>
 800ba8c:	1c43      	adds	r3, r0, #1
 800ba8e:	d000      	beq.n	800ba92 <_close_r+0x16>
 800ba90:	bd38      	pop	{r3, r4, r5, pc}
 800ba92:	6823      	ldr	r3, [r4, #0]
 800ba94:	2b00      	cmp	r3, #0
 800ba96:	d0fb      	beq.n	800ba90 <_close_r+0x14>
 800ba98:	602b      	str	r3, [r5, #0]
 800ba9a:	bd38      	pop	{r3, r4, r5, pc}
 800ba9c:	2000146c 	.word	0x2000146c

0800baa0 <_fclose_r>:
 800baa0:	b570      	push	{r4, r5, r6, lr}
 800baa2:	2900      	cmp	r1, #0
 800baa4:	d048      	beq.n	800bb38 <_fclose_r+0x98>
 800baa6:	4605      	mov	r5, r0
 800baa8:	460c      	mov	r4, r1
 800baaa:	b110      	cbz	r0, 800bab2 <_fclose_r+0x12>
 800baac:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800baae:	2b00      	cmp	r3, #0
 800bab0:	d048      	beq.n	800bb44 <_fclose_r+0xa4>
 800bab2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800bab4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800bab8:	07d0      	lsls	r0, r2, #31
 800baba:	d440      	bmi.n	800bb3e <_fclose_r+0x9e>
 800babc:	0599      	lsls	r1, r3, #22
 800babe:	d530      	bpl.n	800bb22 <_fclose_r+0x82>
 800bac0:	4621      	mov	r1, r4
 800bac2:	4628      	mov	r0, r5
 800bac4:	f7fe fcc8 	bl	800a458 <__sflush_r>
 800bac8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800baca:	4606      	mov	r6, r0
 800bacc:	b133      	cbz	r3, 800badc <_fclose_r+0x3c>
 800bace:	69e1      	ldr	r1, [r4, #28]
 800bad0:	4628      	mov	r0, r5
 800bad2:	4798      	blx	r3
 800bad4:	2800      	cmp	r0, #0
 800bad6:	bfb8      	it	lt
 800bad8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800badc:	89a3      	ldrh	r3, [r4, #12]
 800bade:	061a      	lsls	r2, r3, #24
 800bae0:	d43c      	bmi.n	800bb5c <_fclose_r+0xbc>
 800bae2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800bae4:	b141      	cbz	r1, 800baf8 <_fclose_r+0x58>
 800bae6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800baea:	4299      	cmp	r1, r3
 800baec:	d002      	beq.n	800baf4 <_fclose_r+0x54>
 800baee:	4628      	mov	r0, r5
 800baf0:	f7fe fedc 	bl	800a8ac <_free_r>
 800baf4:	2300      	movs	r3, #0
 800baf6:	6323      	str	r3, [r4, #48]	; 0x30
 800baf8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800bafa:	b121      	cbz	r1, 800bb06 <_fclose_r+0x66>
 800bafc:	4628      	mov	r0, r5
 800bafe:	f7fe fed5 	bl	800a8ac <_free_r>
 800bb02:	2300      	movs	r3, #0
 800bb04:	6463      	str	r3, [r4, #68]	; 0x44
 800bb06:	f7fe fdd9 	bl	800a6bc <__sfp_lock_acquire>
 800bb0a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800bb0c:	2200      	movs	r2, #0
 800bb0e:	07db      	lsls	r3, r3, #31
 800bb10:	81a2      	strh	r2, [r4, #12]
 800bb12:	d51f      	bpl.n	800bb54 <_fclose_r+0xb4>
 800bb14:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800bb16:	f7ff f983 	bl	800ae20 <__retarget_lock_close_recursive>
 800bb1a:	f7fe fdd5 	bl	800a6c8 <__sfp_lock_release>
 800bb1e:	4630      	mov	r0, r6
 800bb20:	bd70      	pop	{r4, r5, r6, pc}
 800bb22:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800bb24:	f7ff f97e 	bl	800ae24 <__retarget_lock_acquire_recursive>
 800bb28:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800bb2c:	2b00      	cmp	r3, #0
 800bb2e:	d1c7      	bne.n	800bac0 <_fclose_r+0x20>
 800bb30:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800bb32:	f016 0601 	ands.w	r6, r6, #1
 800bb36:	d016      	beq.n	800bb66 <_fclose_r+0xc6>
 800bb38:	2600      	movs	r6, #0
 800bb3a:	4630      	mov	r0, r6
 800bb3c:	bd70      	pop	{r4, r5, r6, pc}
 800bb3e:	2b00      	cmp	r3, #0
 800bb40:	d0fa      	beq.n	800bb38 <_fclose_r+0x98>
 800bb42:	e7bd      	b.n	800bac0 <_fclose_r+0x20>
 800bb44:	f7fe fd8e 	bl	800a664 <__sinit>
 800bb48:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800bb4a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800bb4e:	07d0      	lsls	r0, r2, #31
 800bb50:	d4f5      	bmi.n	800bb3e <_fclose_r+0x9e>
 800bb52:	e7b3      	b.n	800babc <_fclose_r+0x1c>
 800bb54:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800bb56:	f7ff f967 	bl	800ae28 <__retarget_lock_release_recursive>
 800bb5a:	e7db      	b.n	800bb14 <_fclose_r+0x74>
 800bb5c:	6921      	ldr	r1, [r4, #16]
 800bb5e:	4628      	mov	r0, r5
 800bb60:	f7fe fea4 	bl	800a8ac <_free_r>
 800bb64:	e7bd      	b.n	800bae2 <_fclose_r+0x42>
 800bb66:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800bb68:	f7ff f95e 	bl	800ae28 <__retarget_lock_release_recursive>
 800bb6c:	4630      	mov	r0, r6
 800bb6e:	bd70      	pop	{r4, r5, r6, pc}

0800bb70 <_fstat_r>:
 800bb70:	b538      	push	{r3, r4, r5, lr}
 800bb72:	460b      	mov	r3, r1
 800bb74:	4c07      	ldr	r4, [pc, #28]	; (800bb94 <_fstat_r+0x24>)
 800bb76:	4605      	mov	r5, r0
 800bb78:	4611      	mov	r1, r2
 800bb7a:	4618      	mov	r0, r3
 800bb7c:	2300      	movs	r3, #0
 800bb7e:	6023      	str	r3, [r4, #0]
 800bb80:	f7fa f9de 	bl	8005f40 <_fstat>
 800bb84:	1c43      	adds	r3, r0, #1
 800bb86:	d000      	beq.n	800bb8a <_fstat_r+0x1a>
 800bb88:	bd38      	pop	{r3, r4, r5, pc}
 800bb8a:	6823      	ldr	r3, [r4, #0]
 800bb8c:	2b00      	cmp	r3, #0
 800bb8e:	d0fb      	beq.n	800bb88 <_fstat_r+0x18>
 800bb90:	602b      	str	r3, [r5, #0]
 800bb92:	bd38      	pop	{r3, r4, r5, pc}
 800bb94:	2000146c 	.word	0x2000146c

0800bb98 <_isatty_r>:
 800bb98:	b538      	push	{r3, r4, r5, lr}
 800bb9a:	4c07      	ldr	r4, [pc, #28]	; (800bbb8 <_isatty_r+0x20>)
 800bb9c:	2300      	movs	r3, #0
 800bb9e:	4605      	mov	r5, r0
 800bba0:	4608      	mov	r0, r1
 800bba2:	6023      	str	r3, [r4, #0]
 800bba4:	f7fa f9d1 	bl	8005f4a <_isatty>
 800bba8:	1c43      	adds	r3, r0, #1
 800bbaa:	d000      	beq.n	800bbae <_isatty_r+0x16>
 800bbac:	bd38      	pop	{r3, r4, r5, pc}
 800bbae:	6823      	ldr	r3, [r4, #0]
 800bbb0:	2b00      	cmp	r3, #0
 800bbb2:	d0fb      	beq.n	800bbac <_isatty_r+0x14>
 800bbb4:	602b      	str	r3, [r5, #0]
 800bbb6:	bd38      	pop	{r3, r4, r5, pc}
 800bbb8:	2000146c 	.word	0x2000146c

0800bbbc <_lseek_r>:
 800bbbc:	b570      	push	{r4, r5, r6, lr}
 800bbbe:	460d      	mov	r5, r1
 800bbc0:	4c08      	ldr	r4, [pc, #32]	; (800bbe4 <_lseek_r+0x28>)
 800bbc2:	4611      	mov	r1, r2
 800bbc4:	4606      	mov	r6, r0
 800bbc6:	461a      	mov	r2, r3
 800bbc8:	4628      	mov	r0, r5
 800bbca:	2300      	movs	r3, #0
 800bbcc:	6023      	str	r3, [r4, #0]
 800bbce:	f7fa f9be 	bl	8005f4e <_lseek>
 800bbd2:	1c43      	adds	r3, r0, #1
 800bbd4:	d000      	beq.n	800bbd8 <_lseek_r+0x1c>
 800bbd6:	bd70      	pop	{r4, r5, r6, pc}
 800bbd8:	6823      	ldr	r3, [r4, #0]
 800bbda:	2b00      	cmp	r3, #0
 800bbdc:	d0fb      	beq.n	800bbd6 <_lseek_r+0x1a>
 800bbde:	6033      	str	r3, [r6, #0]
 800bbe0:	bd70      	pop	{r4, r5, r6, pc}
 800bbe2:	bf00      	nop
 800bbe4:	2000146c 	.word	0x2000146c

0800bbe8 <_read_r>:
 800bbe8:	b570      	push	{r4, r5, r6, lr}
 800bbea:	460d      	mov	r5, r1
 800bbec:	4c08      	ldr	r4, [pc, #32]	; (800bc10 <_read_r+0x28>)
 800bbee:	4611      	mov	r1, r2
 800bbf0:	4606      	mov	r6, r0
 800bbf2:	461a      	mov	r2, r3
 800bbf4:	4628      	mov	r0, r5
 800bbf6:	2300      	movs	r3, #0
 800bbf8:	6023      	str	r3, [r4, #0]
 800bbfa:	f7fa f95c 	bl	8005eb6 <_read>
 800bbfe:	1c43      	adds	r3, r0, #1
 800bc00:	d000      	beq.n	800bc04 <_read_r+0x1c>
 800bc02:	bd70      	pop	{r4, r5, r6, pc}
 800bc04:	6823      	ldr	r3, [r4, #0]
 800bc06:	2b00      	cmp	r3, #0
 800bc08:	d0fb      	beq.n	800bc02 <_read_r+0x1a>
 800bc0a:	6033      	str	r3, [r6, #0]
 800bc0c:	bd70      	pop	{r4, r5, r6, pc}
 800bc0e:	bf00      	nop
 800bc10:	2000146c 	.word	0x2000146c

0800bc14 <_init>:
 800bc14:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800bc16:	bf00      	nop
 800bc18:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800bc1a:	bc08      	pop	{r3}
 800bc1c:	469e      	mov	lr, r3
 800bc1e:	4770      	bx	lr

0800bc20 <_fini>:
 800bc20:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800bc22:	bf00      	nop
 800bc24:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800bc26:	bc08      	pop	{r3}
 800bc28:	469e      	mov	lr, r3
 800bc2a:	4770      	bx	lr
 800bc2c:	0000      	movs	r0, r0
	...
