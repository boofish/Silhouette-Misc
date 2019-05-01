
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
 80001e0:	080078cc 	.word	0x080078cc

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
 80001fc:	080078cc 	.word	0x080078cc

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
 80011ae:	f000 f81a 	bl	80011e6 <HAL_NVIC_SetPriorityGrouping>
 80011b2:	200f      	movs	r0, #15
 80011b4:	f000 fbc1 	bl	800193a <HAL_InitTick>
 80011b8:	2800      	cmp	r0, #0
 80011ba:	bf1c      	itt	ne
 80011bc:	2001      	movne	r0, #1
 80011be:	bd80      	popne	{r7, pc}
 80011c0:	f000 f96b 	bl	800149a <HAL_MspInit>
 80011c4:	2000      	movs	r0, #0
 80011c6:	bd80      	pop	{r7, pc}

080011c8 <HAL_IncTick>:
 80011c8:	f640 20f0 	movw	r0, #2800	; 0xaf0
 80011cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d0:	6801      	ldr	r1, [r0, #0]
 80011d2:	3101      	adds	r1, #1
 80011d4:	f840 1e00 	strt	r1, [r0]
 80011d8:	4770      	bx	lr

080011da <HAL_GetTick>:
 80011da:	f640 20f0 	movw	r0, #2800	; 0xaf0
 80011de:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011e2:	6800      	ldr	r0, [r0, #0]
 80011e4:	4770      	bx	lr

080011e6 <HAL_NVIC_SetPriorityGrouping>:
 80011e6:	f64e 510c 	movw	r1, #60684	; 0xed0c
 80011ea:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80011ee:	f2ce 0100 	movt	r1, #57344	; 0xe000
 80011f2:	680a      	ldr	r2, [r1, #0]
 80011f4:	401a      	ands	r2, r3
 80011f6:	f360 220a 	bfi	r2, r0, #8, #3
 80011fa:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 80011fe:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001202:	6008      	str	r0, [r1, #0]
 8001204:	4770      	bx	lr

08001206 <HAL_NVIC_SetPriority>:
 8001206:	b580      	push	{r7, lr}
 8001208:	466f      	mov	r7, sp
 800120a:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800120e:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001212:	2800      	cmp	r0, #0
 8001214:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001218:	f000 030f 	and.w	r3, r0, #15
 800121c:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001220:	f1a3 0304 	sub.w	r3, r3, #4
 8001224:	4473      	add	r3, lr
 8001226:	bfb8      	it	lt
 8001228:	f103 0c0c 	addlt.w	ip, r3, #12
 800122c:	f8de 0000 	ldr.w	r0, [lr]
 8001230:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001234:	f100 0e04 	add.w	lr, r0, #4
 8001238:	1ec3      	subs	r3, r0, #3
 800123a:	f080 0007 	eor.w	r0, r0, #7
 800123e:	f1be 0f07 	cmp.w	lr, #7
 8001242:	f04f 0e01 	mov.w	lr, #1
 8001246:	bf38      	it	cc
 8001248:	2300      	movcc	r3, #0
 800124a:	2804      	cmp	r0, #4
 800124c:	bf28      	it	cs
 800124e:	2004      	movcs	r0, #4
 8001250:	fa0e f000 	lsl.w	r0, lr, r0
 8001254:	3801      	subs	r0, #1
 8001256:	4008      	ands	r0, r1
 8001258:	fa0e f103 	lsl.w	r1, lr, r3
 800125c:	310f      	adds	r1, #15
 800125e:	4098      	lsls	r0, r3
 8001260:	4011      	ands	r1, r2
 8001262:	4308      	orrs	r0, r1
 8001264:	0100      	lsls	r0, r0, #4
 8001266:	f88c 0000 	strb.w	r0, [ip]
 800126a:	bd80      	pop	{r7, pc}

0800126c <HAL_NVIC_EnableIRQ>:
 800126c:	f000 011f 	and.w	r1, r0, #31
 8001270:	2201      	movs	r2, #1
 8001272:	0940      	lsrs	r0, r0, #5
 8001274:	fa02 f101 	lsl.w	r1, r2, r1
 8001278:	f24e 1200 	movw	r2, #57600	; 0xe100
 800127c:	f2ce 0200 	movt	r2, #57344	; 0xe000
 8001280:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 8001284:	4770      	bx	lr

08001286 <HAL_SYSTICK_IRQHandler>:
 8001286:	f000 b800 	b.w	800128a <HAL_SYSTICK_Callback>

0800128a <HAL_SYSTICK_Callback>:
 800128a:	4770      	bx	lr

0800128c <HAL_GPIO_Init>:
 800128c:	b085      	sub	sp, #20
 800128e:	f84d 4e00 	strt	r4, [sp]
 8001292:	f84d 5e04 	strt	r5, [sp, #4]
 8001296:	f84d 6e08 	strt	r6, [sp, #8]
 800129a:	f84d 7e0c 	strt	r7, [sp, #12]
 800129e:	f84d ee10 	strt	lr, [sp, #16]
 80012a2:	af03      	add	r7, sp, #12
 80012a4:	b084      	sub	sp, #16
 80012a6:	f84d 8e00 	strt	r8, [sp]
 80012aa:	f84d 9e04 	strt	r9, [sp, #4]
 80012ae:	f84d ae08 	strt	sl, [sp, #8]
 80012b2:	f84d be0c 	strt	fp, [sp, #12]
 80012b6:	b082      	sub	sp, #8
 80012b8:	680e      	ldr	r6, [r1, #0]
 80012ba:	2e00      	cmp	r6, #0
 80012bc:	f000 80e9 	beq.w	8001492 <HAL_GPIO_Init+0x206>
 80012c0:	f641 0200 	movw	r2, #6144	; 0x1800
 80012c4:	2507      	movs	r5, #7
 80012c6:	f04f 0801 	mov.w	r8, #1
 80012ca:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80012ce:	4290      	cmp	r0, r2
 80012d0:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80012d4:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80012d8:	bf08      	it	eq
 80012da:	2506      	moveq	r5, #6
 80012dc:	2b06      	cmp	r3, #6
 80012de:	bf38      	it	cc
 80012e0:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 80012e4:	2200      	movs	r2, #0
 80012e6:	f84d 5e00 	strt	r5, [sp]
 80012ea:	2500      	movs	r5, #0
 80012ec:	f1a8 0a01 	sub.w	sl, r8, #1
 80012f0:	2301      	movs	r3, #1
 80012f2:	fa03 fb0a 	lsl.w	fp, r3, sl
 80012f6:	ea16 090b 	ands.w	r9, r6, fp
 80012fa:	f000 80c1 	beq.w	8001480 <HAL_GPIO_Init+0x1f4>
 80012fe:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001302:	f04e 0610 	orr.w	r6, lr, #16
 8001306:	2e12      	cmp	r6, #18
 8001308:	d116      	bne.n	8001338 <HAL_GPIO_Init+0xac>
 800130a:	f005 061c 	and.w	r6, r5, #28
 800130e:	230f      	movs	r3, #15
 8001310:	fa03 fc06 	lsl.w	ip, r3, r6
 8001314:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001318:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 800131c:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 8001320:	4404      	add	r4, r0
 8001322:	6a23      	ldr	r3, [r4, #32]
 8001324:	ea23 0c0c 	bic.w	ip, r3, ip
 8001328:	690b      	ldr	r3, [r1, #16]
 800132a:	40b3      	lsls	r3, r6
 800132c:	ea43 030c 	orr.w	r3, r3, ip
 8001330:	f844 3e20 	strt	r3, [r4, #32]
 8001334:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001338:	6806      	ldr	r6, [r0, #0]
 800133a:	2403      	movs	r4, #3
 800133c:	f00e 0c03 	and.w	ip, lr, #3
 8001340:	f1be 0f12 	cmp.w	lr, #18
 8001344:	fa04 f402 	lsl.w	r4, r4, r2
 8001348:	fa0c f302 	lsl.w	r3, ip, r2
 800134c:	ea26 0604 	bic.w	r6, r6, r4
 8001350:	ea43 0306 	orr.w	r3, r3, r6
 8001354:	ea6f 0604 	mvn.w	r6, r4
 8001358:	f840 3e00 	strt	r3, [r0]
 800135c:	d818      	bhi.n	8001390 <HAL_GPIO_Init+0x104>
 800135e:	2301      	movs	r3, #1
 8001360:	fa03 f30e 	lsl.w	r3, r3, lr
 8001364:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 8001368:	bf1f      	itttt	ne
 800136a:	6883      	ldrne	r3, [r0, #8]
 800136c:	4033      	andne	r3, r6
 800136e:	68cc      	ldrne	r4, [r1, #12]
 8001370:	4094      	lslne	r4, r2
 8001372:	bf1f      	itttt	ne
 8001374:	4323      	orrne	r3, r4
 8001376:	f840 3e08 	strtne	r3, [r0, #8]
 800137a:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 800137e:	fa03 f30a 	lslne.w	r3, r3, sl
 8001382:	bf1f      	itttt	ne
 8001384:	6844      	ldrne	r4, [r0, #4]
 8001386:	ea24 040b 	bicne.w	r4, r4, fp
 800138a:	4323      	orrne	r3, r4
 800138c:	f840 3e04 	strtne	r3, [r0, #4]
 8001390:	f1bc 0f03 	cmp.w	ip, #3
 8001394:	d109      	bne.n	80013aa <HAL_GPIO_Init+0x11e>
 8001396:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 800139a:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 800139c:	fa03 f30a 	lsl.w	r3, r3, sl
 80013a0:	ea24 040b 	bic.w	r4, r4, fp
 80013a4:	4323      	orrs	r3, r4
 80013a6:	f840 3e2c 	strt	r3, [r0, #44]
 80013aa:	68c3      	ldr	r3, [r0, #12]
 80013ac:	4033      	ands	r3, r6
 80013ae:	688e      	ldr	r6, [r1, #8]
 80013b0:	4096      	lsls	r6, r2
 80013b2:	4333      	orrs	r3, r6
 80013b4:	f840 3e0c 	strt	r3, [r0, #12]
 80013b8:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80013bc:	d560      	bpl.n	8001480 <HAL_GPIO_Init+0x1f4>
 80013be:	f241 0360 	movw	r3, #4192	; 0x1060
 80013c2:	f005 040c 	and.w	r4, r5, #12
 80013c6:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80013ca:	461e      	mov	r6, r3
 80013cc:	6833      	ldr	r3, [r6, #0]
 80013ce:	f043 0301 	orr.w	r3, r3, #1
 80013d2:	f846 3e00 	strt	r3, [r6]
 80013d6:	6833      	ldr	r3, [r6, #0]
 80013d8:	f240 4600 	movw	r6, #1024	; 0x400
 80013dc:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80013e0:	46b6      	mov	lr, r6
 80013e2:	f003 0301 	and.w	r3, r3, #1
 80013e6:	f84d 3e04 	strt	r3, [sp, #4]
 80013ea:	f02a 0303 	bic.w	r3, sl, #3
 80013ee:	9e01      	ldr	r6, [sp, #4]
 80013f0:	4473      	add	r3, lr
 80013f2:	f64f 4608 	movw	r6, #64520	; 0xfc08
 80013f6:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 80013fa:	46b2      	mov	sl, r6
 80013fc:	260f      	movs	r6, #15
 80013fe:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001402:	40a6      	lsls	r6, r4
 8001404:	ea2c 0c06 	bic.w	ip, ip, r6
 8001408:	9e00      	ldr	r6, [sp, #0]
 800140a:	fa06 f404 	lsl.w	r4, r6, r4
 800140e:	ea4c 0604 	orr.w	r6, ip, r4
 8001412:	eb03 030a 	add.w	r3, r3, sl
 8001416:	f843 6e00 	strt	r6, [r3]
 800141a:	eba3 030a 	sub.w	r3, r3, sl
 800141e:	f8de 3000 	ldr.w	r3, [lr]
 8001422:	684e      	ldr	r6, [r1, #4]
 8001424:	ea23 0309 	bic.w	r3, r3, r9
 8001428:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 800142c:	bf18      	it	ne
 800142e:	ea43 0309 	orrne.w	r3, r3, r9
 8001432:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001436:	f84e 3e00 	strt	r3, [lr]
 800143a:	f8de 3004 	ldr.w	r3, [lr, #4]
 800143e:	ea23 0309 	bic.w	r3, r3, r9
 8001442:	bf18      	it	ne
 8001444:	ea43 0309 	orrne.w	r3, r3, r9
 8001448:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800144c:	f84e 3e04 	strt	r3, [lr, #4]
 8001450:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001454:	ea23 0309 	bic.w	r3, r3, r9
 8001458:	bf18      	it	ne
 800145a:	ea43 0309 	orrne.w	r3, r3, r9
 800145e:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001462:	f84e 3e08 	strt	r3, [lr, #8]
 8001466:	f240 430c 	movw	r3, #1036	; 0x40c
 800146a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800146e:	461c      	mov	r4, r3
 8001470:	6823      	ldr	r3, [r4, #0]
 8001472:	ea23 0309 	bic.w	r3, r3, r9
 8001476:	bf18      	it	ne
 8001478:	ea43 0309 	orrne.w	r3, r3, r9
 800147c:	f844 3e00 	strt	r3, [r4]
 8001480:	680e      	ldr	r6, [r1, #0]
 8001482:	3202      	adds	r2, #2
 8001484:	3504      	adds	r5, #4
 8001486:	fa36 f308 	lsrs.w	r3, r6, r8
 800148a:	f108 0801 	add.w	r8, r8, #1
 800148e:	f47f af2d 	bne.w	80012ec <HAL_GPIO_Init+0x60>
 8001492:	b002      	add	sp, #8
 8001494:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001498:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800149a <HAL_MspInit>:
 800149a:	4770      	bx	lr

0800149c <HAL_RCC_GetSysClockFreq>:
 800149c:	b082      	sub	sp, #8
 800149e:	f84d 7e00 	strt	r7, [sp]
 80014a2:	f84d ee04 	strt	lr, [sp, #4]
 80014a6:	466f      	mov	r7, sp
 80014a8:	f241 010c 	movw	r1, #4108	; 0x100c
 80014ac:	f241 2e00 	movw	lr, #4608	; 0x1200
 80014b0:	f242 4c00 	movw	ip, #9216	; 0x2400
 80014b4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014b8:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80014bc:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80014c0:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80014c4:	6808      	ldr	r0, [r1, #0]
 80014c6:	f012 030c 	ands.w	r3, r2, #12
 80014ca:	d005      	beq.n	80014d8 <HAL_RCC_GetSysClockFreq+0x3c>
 80014cc:	2b0c      	cmp	r3, #12
 80014ce:	bf04      	itt	eq
 80014d0:	f000 0003 	andeq.w	r0, r0, #3
 80014d4:	2801      	cmpeq	r0, #1
 80014d6:	d118      	bne.n	800150a <HAL_RCC_GetSysClockFreq+0x6e>
 80014d8:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014dc:	f010 0f08 	tst.w	r0, #8
 80014e0:	d103      	bne.n	80014ea <HAL_RCC_GetSysClockFreq+0x4e>
 80014e2:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80014e6:	0a00      	lsrs	r0, r0, #8
 80014e8:	e002      	b.n	80014f0 <HAL_RCC_GetSysClockFreq+0x54>
 80014ea:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014ee:	0900      	lsrs	r0, r0, #4
 80014f0:	f647 1234 	movw	r2, #31028	; 0x7934
 80014f4:	f000 000f 	and.w	r0, r0, #15
 80014f8:	2b00      	cmp	r3, #0
 80014fa:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014fe:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001502:	4610      	mov	r0, r2
 8001504:	bf18      	it	ne
 8001506:	2000      	movne	r0, #0
 8001508:	e00b      	b.n	8001522 <HAL_RCC_GetSysClockFreq+0x86>
 800150a:	f003 000f 	and.w	r0, r3, #15
 800150e:	2804      	cmp	r0, #4
 8001510:	bf04      	itt	eq
 8001512:	4660      	moveq	r0, ip
 8001514:	bd80      	popeq	{r7, pc}
 8001516:	2808      	cmp	r0, #8
 8001518:	bf04      	itt	eq
 800151a:	4670      	moveq	r0, lr
 800151c:	bd80      	popeq	{r7, pc}
 800151e:	2000      	movs	r0, #0
 8001520:	2200      	movs	r2, #0
 8001522:	2b0c      	cmp	r3, #12
 8001524:	bf18      	it	ne
 8001526:	bd80      	popne	{r7, pc}
 8001528:	6808      	ldr	r0, [r1, #0]
 800152a:	f000 0303 	and.w	r3, r0, #3
 800152e:	6808      	ldr	r0, [r1, #0]
 8001530:	2b03      	cmp	r3, #3
 8001532:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8001536:	f100 0001 	add.w	r0, r0, #1
 800153a:	d003      	beq.n	8001544 <HAL_RCC_GetSysClockFreq+0xa8>
 800153c:	2b02      	cmp	r3, #2
 800153e:	46e6      	mov	lr, ip
 8001540:	bf18      	it	ne
 8001542:	4696      	movne	lr, r2
 8001544:	680a      	ldr	r2, [r1, #0]
 8001546:	fbbe f0f0 	udiv	r0, lr, r0
 800154a:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800154e:	6809      	ldr	r1, [r1, #0]
 8001550:	4350      	muls	r0, r2
 8001552:	2202      	movs	r2, #2
 8001554:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001558:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 800155c:	fbb0 f0f1 	udiv	r0, r0, r1
 8001560:	bd80      	pop	{r7, pc}

08001562 <HAL_RCC_GetPCLK1Freq>:
 8001562:	f240 0048 	movw	r0, #72	; 0x48
 8001566:	f241 0108 	movw	r1, #4104	; 0x1008
 800156a:	f647 122c 	movw	r2, #31020	; 0x792c
 800156e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001572:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001576:	f6c0 0200 	movt	r2, #2048	; 0x800
 800157a:	6800      	ldr	r0, [r0, #0]
 800157c:	6809      	ldr	r1, [r1, #0]
 800157e:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8001582:	5c51      	ldrb	r1, [r2, r1]
 8001584:	f001 011f 	and.w	r1, r1, #31
 8001588:	40c8      	lsrs	r0, r1
 800158a:	4770      	bx	lr

0800158c <HAL_RCC_GetPCLK2Freq>:
 800158c:	f240 0048 	movw	r0, #72	; 0x48
 8001590:	f241 0108 	movw	r1, #4104	; 0x1008
 8001594:	f647 122c 	movw	r2, #31020	; 0x792c
 8001598:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800159c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80015a0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80015a4:	6800      	ldr	r0, [r0, #0]
 80015a6:	6809      	ldr	r1, [r1, #0]
 80015a8:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80015ac:	5c51      	ldrb	r1, [r2, r1]
 80015ae:	f001 011f 	and.w	r1, r1, #31
 80015b2:	40c8      	lsrs	r0, r1
 80015b4:	4770      	bx	lr

080015b6 <HAL_RCC_GetClockConfig>:
 80015b6:	220f      	movs	r2, #15
 80015b8:	6002      	str	r2, [r0, #0]
 80015ba:	f241 0208 	movw	r2, #4104	; 0x1008
 80015be:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80015c2:	6813      	ldr	r3, [r2, #0]
 80015c4:	f003 0303 	and.w	r3, r3, #3
 80015c8:	6043      	str	r3, [r0, #4]
 80015ca:	6813      	ldr	r3, [r2, #0]
 80015cc:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80015d0:	6083      	str	r3, [r0, #8]
 80015d2:	6813      	ldr	r3, [r2, #0]
 80015d4:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80015d8:	60c3      	str	r3, [r0, #12]
 80015da:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80015de:	6812      	ldr	r2, [r2, #0]
 80015e0:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80015e4:	6102      	str	r2, [r0, #16]
 80015e6:	f242 0000 	movw	r0, #8192	; 0x2000
 80015ea:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015ee:	6800      	ldr	r0, [r0, #0]
 80015f0:	f000 0007 	and.w	r0, r0, #7
 80015f4:	6008      	str	r0, [r1, #0]
 80015f6:	4770      	bx	lr

080015f8 <HAL_TIM_Base_Init>:
 80015f8:	b5d0      	push	{r4, r6, r7, lr}
 80015fa:	af02      	add	r7, sp, #8
 80015fc:	4604      	mov	r4, r0
 80015fe:	2c00      	cmp	r4, #0
 8001600:	bf04      	itt	eq
 8001602:	2001      	moveq	r0, #1
 8001604:	bdd0      	popeq	{r4, r6, r7, pc}
 8001606:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001608:	b920      	cbnz	r0, 8001614 <HAL_TIM_Base_Init+0x1c>
 800160a:	2000      	movs	r0, #0
 800160c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800160e:	4620      	mov	r0, r4
 8001610:	f000 f892 	bl	8001738 <HAL_TIM_Base_MspInit>
 8001614:	2002      	movs	r0, #2
 8001616:	f640 32ff 	movw	r2, #3071	; 0xbff
 800161a:	6420      	str	r0, [r4, #64]	; 0x40
 800161c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001620:	6820      	ldr	r0, [r4, #0]
 8001622:	6801      	ldr	r1, [r0, #0]
 8001624:	4290      	cmp	r0, r2
 8001626:	dc0f      	bgt.n	8001648 <HAL_TIM_Base_Init+0x50>
 8001628:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800162c:	bf1e      	ittt	ne
 800162e:	f240 4200 	movwne	r2, #1024	; 0x400
 8001632:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 8001636:	4290      	cmpne	r0, r2
 8001638:	d018      	beq.n	800166c <HAL_TIM_Base_Init+0x74>
 800163a:	f640 0200 	movw	r2, #2048	; 0x800
 800163e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001642:	4290      	cmp	r0, r2
 8001644:	d012      	beq.n	800166c <HAL_TIM_Base_Init+0x74>
 8001646:	e015      	b.n	8001674 <HAL_TIM_Base_Init+0x7c>
 8001648:	f640 4200 	movw	r2, #3072	; 0xc00
 800164c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001650:	4290      	cmp	r0, r2
 8001652:	bf1e      	ittt	ne
 8001654:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001658:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800165c:	4290      	cmpne	r0, r2
 800165e:	d005      	beq.n	800166c <HAL_TIM_Base_Init+0x74>
 8001660:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001664:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001668:	4290      	cmp	r0, r2
 800166a:	d103      	bne.n	8001674 <HAL_TIM_Base_Init+0x7c>
 800166c:	68a2      	ldr	r2, [r4, #8]
 800166e:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 8001672:	4311      	orrs	r1, r2
 8001674:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001678:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800167c:	4290      	cmp	r0, r2
 800167e:	dd14      	ble.n	80016aa <HAL_TIM_Base_Init+0xb2>
 8001680:	f643 72ff 	movw	r2, #16383	; 0x3fff
 8001684:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001688:	4290      	cmp	r0, r2
 800168a:	dd1a      	ble.n	80016c2 <HAL_TIM_Base_Init+0xca>
 800168c:	f244 0200 	movw	r2, #16384	; 0x4000
 8001690:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001694:	4290      	cmp	r0, r2
 8001696:	bf1e      	ittt	ne
 8001698:	f644 0200 	movwne	r2, #18432	; 0x4800
 800169c:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80016a0:	4290      	cmpne	r0, r2
 80016a2:	d027      	beq.n	80016f4 <HAL_TIM_Base_Init+0xfc>
 80016a4:	f244 4200 	movw	r2, #17408	; 0x4400
 80016a8:	e013      	b.n	80016d2 <HAL_TIM_Base_Init+0xda>
 80016aa:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80016ae:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016b2:	4290      	cmp	r0, r2
 80016b4:	dc12      	bgt.n	80016dc <HAL_TIM_Base_Init+0xe4>
 80016b6:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80016ba:	d01b      	beq.n	80016f4 <HAL_TIM_Base_Init+0xfc>
 80016bc:	f240 4200 	movw	r2, #1024	; 0x400
 80016c0:	e014      	b.n	80016ec <HAL_TIM_Base_Init+0xf4>
 80016c2:	f642 4200 	movw	r2, #11264	; 0x2c00
 80016c6:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80016ca:	4290      	cmp	r0, r2
 80016cc:	d012      	beq.n	80016f4 <HAL_TIM_Base_Init+0xfc>
 80016ce:	f243 4200 	movw	r2, #13312	; 0x3400
 80016d2:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80016d6:	4290      	cmp	r0, r2
 80016d8:	d00c      	beq.n	80016f4 <HAL_TIM_Base_Init+0xfc>
 80016da:	e00f      	b.n	80016fc <HAL_TIM_Base_Init+0x104>
 80016dc:	f640 0200 	movw	r2, #2048	; 0x800
 80016e0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016e4:	4290      	cmp	r0, r2
 80016e6:	d005      	beq.n	80016f4 <HAL_TIM_Base_Init+0xfc>
 80016e8:	f640 4200 	movw	r2, #3072	; 0xc00
 80016ec:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016f0:	4290      	cmp	r0, r2
 80016f2:	d103      	bne.n	80016fc <HAL_TIM_Base_Init+0x104>
 80016f4:	6922      	ldr	r2, [r4, #16]
 80016f6:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80016fa:	4311      	orrs	r1, r2
 80016fc:	69a2      	ldr	r2, [r4, #24]
 80016fe:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001702:	4311      	orrs	r1, r2
 8001704:	6001      	str	r1, [r0, #0]
 8001706:	68e1      	ldr	r1, [r4, #12]
 8001708:	62c1      	str	r1, [r0, #44]	; 0x2c
 800170a:	6861      	ldr	r1, [r4, #4]
 800170c:	6281      	str	r1, [r0, #40]	; 0x28
 800170e:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001712:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 8001716:	ea4f 21b1 	mov.w	r1, r1, ror #10
 800171a:	2907      	cmp	r1, #7
 800171c:	d807      	bhi.n	800172e <HAL_TIM_Base_Init+0x136>
 800171e:	2201      	movs	r2, #1
 8001720:	fa02 f101 	lsl.w	r1, r2, r1
 8001724:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001728:	bf1c      	itt	ne
 800172a:	6961      	ldrne	r1, [r4, #20]
 800172c:	6301      	strne	r1, [r0, #48]	; 0x30
 800172e:	2101      	movs	r1, #1
 8001730:	6141      	str	r1, [r0, #20]
 8001732:	2000      	movs	r0, #0
 8001734:	6421      	str	r1, [r4, #64]	; 0x40
 8001736:	bdd0      	pop	{r4, r6, r7, pc}

08001738 <HAL_TIM_Base_MspInit>:
 8001738:	4770      	bx	lr

0800173a <HAL_TIM_Base_Start_IT>:
 800173a:	6800      	ldr	r0, [r0, #0]
 800173c:	68c1      	ldr	r1, [r0, #12]
 800173e:	f041 0101 	orr.w	r1, r1, #1
 8001742:	60c1      	str	r1, [r0, #12]
 8001744:	2107      	movs	r1, #7
 8001746:	6882      	ldr	r2, [r0, #8]
 8001748:	f2c0 0101 	movt	r1, #1
 800174c:	400a      	ands	r2, r1
 800174e:	2a06      	cmp	r2, #6
 8001750:	d008      	beq.n	8001764 <HAL_TIM_Base_Start_IT+0x2a>
 8001752:	6882      	ldr	r2, [r0, #8]
 8001754:	4011      	ands	r1, r2
 8001756:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800175a:	bf1e      	ittt	ne
 800175c:	6801      	ldrne	r1, [r0, #0]
 800175e:	f041 0101 	orrne.w	r1, r1, #1
 8001762:	6001      	strne	r1, [r0, #0]
 8001764:	2000      	movs	r0, #0
 8001766:	4770      	bx	lr

08001768 <HAL_TIM_IRQHandler>:
 8001768:	b084      	sub	sp, #16
 800176a:	f84d 4e00 	strt	r4, [sp]
 800176e:	f84d 6e04 	strt	r6, [sp, #4]
 8001772:	f84d 7e08 	strt	r7, [sp, #8]
 8001776:	f84d ee0c 	strt	lr, [sp, #12]
 800177a:	af02      	add	r7, sp, #8
 800177c:	4604      	mov	r4, r0
 800177e:	6820      	ldr	r0, [r4, #0]
 8001780:	6901      	ldr	r1, [r0, #16]
 8001782:	f011 0f02 	tst.w	r1, #2
 8001786:	bf1c      	itt	ne
 8001788:	68c1      	ldrne	r1, [r0, #12]
 800178a:	f011 0f02 	tstne.w	r1, #2
 800178e:	d018      	beq.n	80017c2 <HAL_TIM_IRQHandler+0x5a>
 8001790:	f06f 0102 	mvn.w	r1, #2
 8001794:	f840 1e10 	strt	r1, [r0, #16]
 8001798:	2101      	movs	r1, #1
 800179a:	f844 1e1c 	strt	r1, [r4, #28]
 800179e:	6980      	ldr	r0, [r0, #24]
 80017a0:	f010 0f03 	tst.w	r0, #3
 80017a4:	d003      	beq.n	80017ae <HAL_TIM_IRQHandler+0x46>
 80017a6:	4620      	mov	r0, r4
 80017a8:	f000 f8c0 	bl	800192c <HAL_TIM_IC_CaptureCallback>
 80017ac:	e005      	b.n	80017ba <HAL_TIM_IRQHandler+0x52>
 80017ae:	4620      	mov	r0, r4
 80017b0:	f000 f8bd 	bl	800192e <HAL_TIM_OC_DelayElapsedCallback>
 80017b4:	4620      	mov	r0, r4
 80017b6:	f000 f8bb 	bl	8001930 <HAL_TIM_PWM_PulseFinishedCallback>
 80017ba:	2000      	movs	r0, #0
 80017bc:	f844 0e1c 	strt	r0, [r4, #28]
 80017c0:	6820      	ldr	r0, [r4, #0]
 80017c2:	6901      	ldr	r1, [r0, #16]
 80017c4:	f011 0f04 	tst.w	r1, #4
 80017c8:	bf1c      	itt	ne
 80017ca:	68c1      	ldrne	r1, [r0, #12]
 80017cc:	f011 0f04 	tstne.w	r1, #4
 80017d0:	d018      	beq.n	8001804 <HAL_TIM_IRQHandler+0x9c>
 80017d2:	f06f 0104 	mvn.w	r1, #4
 80017d6:	f840 1e10 	strt	r1, [r0, #16]
 80017da:	2102      	movs	r1, #2
 80017dc:	f844 1e1c 	strt	r1, [r4, #28]
 80017e0:	6980      	ldr	r0, [r0, #24]
 80017e2:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017e6:	d003      	beq.n	80017f0 <HAL_TIM_IRQHandler+0x88>
 80017e8:	4620      	mov	r0, r4
 80017ea:	f000 f89f 	bl	800192c <HAL_TIM_IC_CaptureCallback>
 80017ee:	e005      	b.n	80017fc <HAL_TIM_IRQHandler+0x94>
 80017f0:	4620      	mov	r0, r4
 80017f2:	f000 f89c 	bl	800192e <HAL_TIM_OC_DelayElapsedCallback>
 80017f6:	4620      	mov	r0, r4
 80017f8:	f000 f89a 	bl	8001930 <HAL_TIM_PWM_PulseFinishedCallback>
 80017fc:	2000      	movs	r0, #0
 80017fe:	f844 0e1c 	strt	r0, [r4, #28]
 8001802:	6820      	ldr	r0, [r4, #0]
 8001804:	6901      	ldr	r1, [r0, #16]
 8001806:	f011 0f08 	tst.w	r1, #8
 800180a:	bf1c      	itt	ne
 800180c:	68c1      	ldrne	r1, [r0, #12]
 800180e:	f011 0f08 	tstne.w	r1, #8
 8001812:	d018      	beq.n	8001846 <HAL_TIM_IRQHandler+0xde>
 8001814:	f06f 0108 	mvn.w	r1, #8
 8001818:	f840 1e10 	strt	r1, [r0, #16]
 800181c:	2104      	movs	r1, #4
 800181e:	f844 1e1c 	strt	r1, [r4, #28]
 8001822:	69c0      	ldr	r0, [r0, #28]
 8001824:	f010 0f03 	tst.w	r0, #3
 8001828:	d003      	beq.n	8001832 <HAL_TIM_IRQHandler+0xca>
 800182a:	4620      	mov	r0, r4
 800182c:	f000 f87e 	bl	800192c <HAL_TIM_IC_CaptureCallback>
 8001830:	e005      	b.n	800183e <HAL_TIM_IRQHandler+0xd6>
 8001832:	4620      	mov	r0, r4
 8001834:	f000 f87b 	bl	800192e <HAL_TIM_OC_DelayElapsedCallback>
 8001838:	4620      	mov	r0, r4
 800183a:	f000 f879 	bl	8001930 <HAL_TIM_PWM_PulseFinishedCallback>
 800183e:	2000      	movs	r0, #0
 8001840:	f844 0e1c 	strt	r0, [r4, #28]
 8001844:	6820      	ldr	r0, [r4, #0]
 8001846:	6901      	ldr	r1, [r0, #16]
 8001848:	f011 0f10 	tst.w	r1, #16
 800184c:	bf1c      	itt	ne
 800184e:	68c1      	ldrne	r1, [r0, #12]
 8001850:	f011 0f10 	tstne.w	r1, #16
 8001854:	d018      	beq.n	8001888 <HAL_TIM_IRQHandler+0x120>
 8001856:	f06f 0110 	mvn.w	r1, #16
 800185a:	f840 1e10 	strt	r1, [r0, #16]
 800185e:	2108      	movs	r1, #8
 8001860:	f844 1e1c 	strt	r1, [r4, #28]
 8001864:	69c0      	ldr	r0, [r0, #28]
 8001866:	f410 7f40 	tst.w	r0, #768	; 0x300
 800186a:	d003      	beq.n	8001874 <HAL_TIM_IRQHandler+0x10c>
 800186c:	4620      	mov	r0, r4
 800186e:	f000 f85d 	bl	800192c <HAL_TIM_IC_CaptureCallback>
 8001872:	e005      	b.n	8001880 <HAL_TIM_IRQHandler+0x118>
 8001874:	4620      	mov	r0, r4
 8001876:	f000 f85a 	bl	800192e <HAL_TIM_OC_DelayElapsedCallback>
 800187a:	4620      	mov	r0, r4
 800187c:	f000 f858 	bl	8001930 <HAL_TIM_PWM_PulseFinishedCallback>
 8001880:	2000      	movs	r0, #0
 8001882:	f844 0e1c 	strt	r0, [r4, #28]
 8001886:	6820      	ldr	r0, [r4, #0]
 8001888:	6901      	ldr	r1, [r0, #16]
 800188a:	f011 0f01 	tst.w	r1, #1
 800188e:	bf1c      	itt	ne
 8001890:	68c1      	ldrne	r1, [r0, #12]
 8001892:	f011 0f01 	tstne.w	r1, #1
 8001896:	d007      	beq.n	80018a8 <HAL_TIM_IRQHandler+0x140>
 8001898:	f06f 0101 	mvn.w	r1, #1
 800189c:	f840 1e10 	strt	r1, [r0, #16]
 80018a0:	4620      	mov	r0, r4
 80018a2:	f000 f898 	bl	80019d6 <HAL_TIM_PeriodElapsedCallback>
 80018a6:	6820      	ldr	r0, [r4, #0]
 80018a8:	6901      	ldr	r1, [r0, #16]
 80018aa:	f011 0f80 	tst.w	r1, #128	; 0x80
 80018ae:	bf1c      	itt	ne
 80018b0:	68c1      	ldrne	r1, [r0, #12]
 80018b2:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80018b6:	d007      	beq.n	80018c8 <HAL_TIM_IRQHandler+0x160>
 80018b8:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80018bc:	f840 1e10 	strt	r1, [r0, #16]
 80018c0:	4620      	mov	r0, r4
 80018c2:	f000 f838 	bl	8001936 <HAL_TIMEx_BreakCallback>
 80018c6:	6820      	ldr	r0, [r4, #0]
 80018c8:	6901      	ldr	r1, [r0, #16]
 80018ca:	f411 7f80 	tst.w	r1, #256	; 0x100
 80018ce:	bf1c      	itt	ne
 80018d0:	68c1      	ldrne	r1, [r0, #12]
 80018d2:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80018d6:	d007      	beq.n	80018e8 <HAL_TIM_IRQHandler+0x180>
 80018d8:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80018dc:	f840 1e10 	strt	r1, [r0, #16]
 80018e0:	4620      	mov	r0, r4
 80018e2:	f000 f829 	bl	8001938 <HAL_TIMEx_Break2Callback>
 80018e6:	6820      	ldr	r0, [r4, #0]
 80018e8:	6901      	ldr	r1, [r0, #16]
 80018ea:	f011 0f40 	tst.w	r1, #64	; 0x40
 80018ee:	bf1c      	itt	ne
 80018f0:	68c1      	ldrne	r1, [r0, #12]
 80018f2:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80018f6:	d007      	beq.n	8001908 <HAL_TIM_IRQHandler+0x1a0>
 80018f8:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80018fc:	f840 1e10 	strt	r1, [r0, #16]
 8001900:	4620      	mov	r0, r4
 8001902:	f000 f816 	bl	8001932 <HAL_TIM_TriggerCallback>
 8001906:	6820      	ldr	r0, [r4, #0]
 8001908:	6901      	ldr	r1, [r0, #16]
 800190a:	f011 0f20 	tst.w	r1, #32
 800190e:	bf1c      	itt	ne
 8001910:	68c1      	ldrne	r1, [r0, #12]
 8001912:	f011 0f20 	tstne.w	r1, #32
 8001916:	d100      	bne.n	800191a <HAL_TIM_IRQHandler+0x1b2>
 8001918:	bdd0      	pop	{r4, r6, r7, pc}
 800191a:	f06f 0120 	mvn.w	r1, #32
 800191e:	f840 1e10 	strt	r1, [r0, #16]
 8001922:	4620      	mov	r0, r4
 8001924:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001928:	f000 b804 	b.w	8001934 <HAL_TIMEx_CommutationCallback>

0800192c <HAL_TIM_IC_CaptureCallback>:
 800192c:	4770      	bx	lr

0800192e <HAL_TIM_OC_DelayElapsedCallback>:
 800192e:	4770      	bx	lr

08001930 <HAL_TIM_PWM_PulseFinishedCallback>:
 8001930:	4770      	bx	lr

08001932 <HAL_TIM_TriggerCallback>:
 8001932:	4770      	bx	lr

08001934 <HAL_TIMEx_CommutationCallback>:
 8001934:	4770      	bx	lr

08001936 <HAL_TIMEx_BreakCallback>:
 8001936:	4770      	bx	lr

08001938 <HAL_TIMEx_Break2Callback>:
 8001938:	4770      	bx	lr

0800193a <HAL_InitTick>:
 800193a:	b5b0      	push	{r4, r5, r7, lr}
 800193c:	af02      	add	r7, sp, #8
 800193e:	b086      	sub	sp, #24
 8001940:	4601      	mov	r1, r0
 8001942:	2036      	movs	r0, #54	; 0x36
 8001944:	2200      	movs	r2, #0
 8001946:	2400      	movs	r4, #0
 8001948:	f7ff fc5d 	bl	8001206 <HAL_NVIC_SetPriority>
 800194c:	2036      	movs	r0, #54	; 0x36
 800194e:	f7ff fc8d 	bl	800126c <HAL_NVIC_EnableIRQ>
 8001952:	f241 0058 	movw	r0, #4184	; 0x1058
 8001956:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800195a:	6801      	ldr	r1, [r0, #0]
 800195c:	f041 0110 	orr.w	r1, r1, #16
 8001960:	6001      	str	r1, [r0, #0]
 8001962:	4669      	mov	r1, sp
 8001964:	6800      	ldr	r0, [r0, #0]
 8001966:	f000 0010 	and.w	r0, r0, #16
 800196a:	9001      	str	r0, [sp, #4]
 800196c:	9801      	ldr	r0, [sp, #4]
 800196e:	a801      	add	r0, sp, #4
 8001970:	f7ff fe21 	bl	80015b6 <HAL_RCC_GetClockConfig>
 8001974:	9d04      	ldr	r5, [sp, #16]
 8001976:	f7ff fdf4 	bl	8001562 <HAL_RCC_GetPCLK1Freq>
 800197a:	2d00      	cmp	r5, #0
 800197c:	f640 21f4 	movw	r1, #2804	; 0xaf4
 8001980:	f241 0200 	movw	r2, #4096	; 0x1000
 8001984:	f240 33e7 	movw	r3, #999	; 0x3e7
 8001988:	bf18      	it	ne
 800198a:	2501      	movne	r5, #1
 800198c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001990:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001994:	40a8      	lsls	r0, r5
 8001996:	f64d 6583 	movw	r5, #56963	; 0xde83
 800199a:	618c      	str	r4, [r1, #24]
 800199c:	f2c4 351b 	movt	r5, #17179	; 0x431b
 80019a0:	fba0 0505 	umull	r0, r5, r0, r5
 80019a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80019a8:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 80019ac:	e9c1 2000 	strd	r2, r0, [r1]
 80019b0:	4608      	mov	r0, r1
 80019b2:	e9c1 4302 	strd	r4, r3, [r1, #8]
 80019b6:	610c      	str	r4, [r1, #16]
 80019b8:	f7ff fe1e 	bl	80015f8 <HAL_TIM_Base_Init>
 80019bc:	2800      	cmp	r0, #0
 80019be:	bf1e      	ittt	ne
 80019c0:	2001      	movne	r0, #1
 80019c2:	b006      	addne	sp, #24
 80019c4:	bdb0      	popne	{r4, r5, r7, pc}
 80019c6:	f640 20f4 	movw	r0, #2804	; 0xaf4
 80019ca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80019ce:	f7ff feb4 	bl	800173a <HAL_TIM_Base_Start_IT>
 80019d2:	b006      	add	sp, #24
 80019d4:	bdb0      	pop	{r4, r5, r7, pc}

080019d6 <HAL_TIM_PeriodElapsedCallback>:
 80019d6:	f7ff bbf7 	b.w	80011c8 <HAL_IncTick>

080019da <TIM6_DAC_IRQHandler>:
 80019da:	f640 20f4 	movw	r0, #2804	; 0xaf4
 80019de:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80019e2:	f7ff bec1 	b.w	8001768 <HAL_TIM_IRQHandler>

080019e6 <HAL_UART_Init>:
 80019e6:	b084      	sub	sp, #16
 80019e8:	f84d 4e00 	strt	r4, [sp]
 80019ec:	f84d 6e04 	strt	r6, [sp, #4]
 80019f0:	f84d 7e08 	strt	r7, [sp, #8]
 80019f4:	f84d ee0c 	strt	lr, [sp, #12]
 80019f8:	af02      	add	r7, sp, #8
 80019fa:	4604      	mov	r4, r0
 80019fc:	b1ac      	cbz	r4, 8001a2a <HAL_UART_Init+0x44>
 80019fe:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001a00:	b928      	cbnz	r0, 8001a0e <HAL_UART_Init+0x28>
 8001a02:	2000      	movs	r0, #0
 8001a04:	f844 0e70 	strt	r0, [r4, #112]
 8001a08:	4620      	mov	r0, r4
 8001a0a:	f000 f82b 	bl	8001a64 <HAL_UART_MspInit>
 8001a0e:	2024      	movs	r0, #36	; 0x24
 8001a10:	f844 0e74 	strt	r0, [r4, #116]
 8001a14:	6820      	ldr	r0, [r4, #0]
 8001a16:	6801      	ldr	r1, [r0, #0]
 8001a18:	f021 0101 	bic.w	r1, r1, #1
 8001a1c:	f840 1e00 	strt	r1, [r0]
 8001a20:	4620      	mov	r0, r4
 8001a22:	f000 f821 	bl	8001a68 <UART_SetConfig>
 8001a26:	2801      	cmp	r0, #1
 8001a28:	d101      	bne.n	8001a2e <HAL_UART_Init+0x48>
 8001a2a:	2001      	movs	r0, #1
 8001a2c:	bdd0      	pop	{r4, r6, r7, pc}
 8001a2e:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001a30:	2800      	cmp	r0, #0
 8001a32:	bf1c      	itt	ne
 8001a34:	4620      	movne	r0, r4
 8001a36:	f000 f956 	blne	8001ce6 <UART_AdvFeatureConfig>
 8001a3a:	6820      	ldr	r0, [r4, #0]
 8001a3c:	6841      	ldr	r1, [r0, #4]
 8001a3e:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001a42:	f840 1e04 	strt	r1, [r0, #4]
 8001a46:	6881      	ldr	r1, [r0, #8]
 8001a48:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001a4c:	f840 1e08 	strt	r1, [r0, #8]
 8001a50:	6801      	ldr	r1, [r0, #0]
 8001a52:	f041 0101 	orr.w	r1, r1, #1
 8001a56:	f840 1e00 	strt	r1, [r0]
 8001a5a:	4620      	mov	r0, r4
 8001a5c:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001a60:	f000 b9b7 	b.w	8001dd2 <UART_CheckIdleState>

08001a64 <HAL_UART_MspInit>:
 8001a64:	4770      	bx	lr
	...

08001a68 <UART_SetConfig>:
 8001a68:	b084      	sub	sp, #16
 8001a6a:	f84d 4e00 	strt	r4, [sp]
 8001a6e:	f84d 5e04 	strt	r5, [sp, #4]
 8001a72:	f84d 7e08 	strt	r7, [sp, #8]
 8001a76:	f84d ee0c 	strt	lr, [sp, #12]
 8001a7a:	af02      	add	r7, sp, #8
 8001a7c:	4604      	mov	r4, r0
 8001a7e:	f646 15f3 	movw	r5, #27123	; 0x69f3
 8001a82:	f248 0e00 	movw	lr, #32768	; 0x8000
 8001a86:	f241 0c88 	movw	ip, #4232	; 0x1088
 8001a8a:	6821      	ldr	r1, [r4, #0]
 8001a8c:	68a0      	ldr	r0, [r4, #8]
 8001a8e:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 8001a92:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 8001a96:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 8001a9a:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 8001a9e:	4310      	orrs	r0, r2
 8001aa0:	69e2      	ldr	r2, [r4, #28]
 8001aa2:	4571      	cmp	r1, lr
 8001aa4:	ea40 0003 	orr.w	r0, r0, r3
 8001aa8:	680b      	ldr	r3, [r1, #0]
 8001aaa:	ea40 0002 	orr.w	r0, r0, r2
 8001aae:	ea03 0305 	and.w	r3, r3, r5
 8001ab2:	f04f 0510 	mov.w	r5, #16
 8001ab6:	ea40 0003 	orr.w	r0, r0, r3
 8001aba:	f841 0e00 	strt	r0, [r1]
 8001abe:	6848      	ldr	r0, [r1, #4]
 8001ac0:	68e3      	ldr	r3, [r4, #12]
 8001ac2:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001ac6:	ea40 0003 	orr.w	r0, r0, r3
 8001aca:	f841 0e04 	strt	r0, [r1, #4]
 8001ace:	69a0      	ldr	r0, [r4, #24]
 8001ad0:	bf1c      	itt	ne
 8001ad2:	6a23      	ldrne	r3, [r4, #32]
 8001ad4:	4318      	orrne	r0, r3
 8001ad6:	688b      	ldr	r3, [r1, #8]
 8001ad8:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001adc:	4318      	orrs	r0, r3
 8001ade:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001ae2:	f841 0e08 	strt	r0, [r1, #8]
 8001ae6:	f242 4000 	movw	r0, #9216	; 0x2400
 8001aea:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001aee:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001af2:	4299      	cmp	r1, r3
 8001af4:	dc15      	bgt.n	8001b22 <UART_SetConfig+0xba>
 8001af6:	f244 4300 	movw	r3, #17408	; 0x4400
 8001afa:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001afe:	4299      	cmp	r1, r3
 8001b00:	d024      	beq.n	8001b4c <UART_SetConfig+0xe4>
 8001b02:	f644 0300 	movw	r3, #18432	; 0x4800
 8001b06:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b0a:	4299      	cmp	r1, r3
 8001b0c:	d022      	beq.n	8001b54 <UART_SetConfig+0xec>
 8001b0e:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001b12:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b16:	4299      	cmp	r1, r3
 8001b18:	d131      	bne.n	8001b7e <UART_SetConfig+0x116>
 8001b1a:	f8dc 3000 	ldr.w	r3, [ip]
 8001b1e:	099d      	lsrs	r5, r3, #6
 8001b20:	e023      	b.n	8001b6a <UART_SetConfig+0x102>
 8001b22:	f245 0300 	movw	r3, #20480	; 0x5000
 8001b26:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b2a:	4299      	cmp	r1, r3
 8001b2c:	d016      	beq.n	8001b5c <UART_SetConfig+0xf4>
 8001b2e:	4571      	cmp	r1, lr
 8001b30:	d018      	beq.n	8001b64 <UART_SetConfig+0xfc>
 8001b32:	f643 0300 	movw	r3, #14336	; 0x3800
 8001b36:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001b3a:	4299      	cmp	r1, r3
 8001b3c:	d11f      	bne.n	8001b7e <UART_SetConfig+0x116>
 8001b3e:	f8dc 5000 	ldr.w	r5, [ip]
 8001b42:	f647 1364 	movw	r3, #31076	; 0x7964
 8001b46:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001b4a:	e012      	b.n	8001b72 <UART_SetConfig+0x10a>
 8001b4c:	f8dc 3000 	ldr.w	r3, [ip]
 8001b50:	089d      	lsrs	r5, r3, #2
 8001b52:	e00a      	b.n	8001b6a <UART_SetConfig+0x102>
 8001b54:	f8dc 3000 	ldr.w	r3, [ip]
 8001b58:	091d      	lsrs	r5, r3, #4
 8001b5a:	e006      	b.n	8001b6a <UART_SetConfig+0x102>
 8001b5c:	f8dc 3000 	ldr.w	r3, [ip]
 8001b60:	0a1d      	lsrs	r5, r3, #8
 8001b62:	e002      	b.n	8001b6a <UART_SetConfig+0x102>
 8001b64:	f8dc 3000 	ldr.w	r3, [ip]
 8001b68:	0a9d      	lsrs	r5, r3, #10
 8001b6a:	f647 1374 	movw	r3, #31092	; 0x7974
 8001b6e:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001b72:	f005 0503 	and.w	r5, r5, #3
 8001b76:	f085 0502 	eor.w	r5, r5, #2
 8001b7a:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001b7e:	4571      	cmp	r1, lr
 8001b80:	d012      	beq.n	8001ba8 <UART_SetConfig+0x140>
 8001b82:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001b86:	d11d      	bne.n	8001bc4 <UART_SetConfig+0x15c>
 8001b88:	f005 001f 	and.w	r0, r5, #31
 8001b8c:	2101      	movs	r1, #1
 8001b8e:	2808      	cmp	r0, #8
 8001b90:	f200 80a0 	bhi.w	8001cd4 <UART_SetConfig+0x26c>
 8001b94:	e8df f000 	tbb	[pc, r0]
 8001b98:	9e434005 	.word	0x9e434005
 8001b9c:	9e9e9e49 	.word	0x9e9e9e49
 8001ba0:	004f      	.short	0x004f
 8001ba2:	f7ff fcde 	bl	8001562 <HAL_RCC_GetPCLK1Freq>
 8001ba6:	e042      	b.n	8001c2e <UART_SetConfig+0x1c6>
 8001ba8:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001bac:	2101      	movs	r1, #1
 8001bae:	2d04      	cmp	r5, #4
 8001bb0:	f200 8090 	bhi.w	8001cd4 <UART_SetConfig+0x26c>
 8001bb4:	e8df f005 	tbb	[pc, r5]
 8001bb8:	8e161c03 	.word	0x8e161c03
 8001bbc:	001a      	.short	0x001a
 8001bbe:	f7ff fcd0 	bl	8001562 <HAL_RCC_GetPCLK1Freq>
 8001bc2:	e011      	b.n	8001be8 <UART_SetConfig+0x180>
 8001bc4:	f005 021f 	and.w	r2, r5, #31
 8001bc8:	2101      	movs	r1, #1
 8001bca:	2a08      	cmp	r2, #8
 8001bcc:	f200 8082 	bhi.w	8001cd4 <UART_SetConfig+0x26c>
 8001bd0:	e8df f002 	tbb	[pc, r2]
 8001bd4:	80464305 	.word	0x80464305
 8001bd8:	80808048 	.word	0x80808048
 8001bdc:	004e      	.short	0x004e
 8001bde:	f7ff fcc0 	bl	8001562 <HAL_RCC_GetPCLK1Freq>
 8001be2:	e041      	b.n	8001c68 <UART_SetConfig+0x200>
 8001be4:	f7ff fc5a 	bl	800149c <HAL_RCC_GetSysClockFreq>
 8001be8:	b910      	cbnz	r0, 8001bf0 <UART_SetConfig+0x188>
 8001bea:	e072      	b.n	8001cd2 <UART_SetConfig+0x26a>
 8001bec:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bf0:	6862      	ldr	r2, [r4, #4]
 8001bf2:	2101      	movs	r1, #1
 8001bf4:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001bf8:	4298      	cmp	r0, r3
 8001bfa:	d36b      	bcc.n	8001cd4 <UART_SetConfig+0x26c>
 8001bfc:	0313      	lsls	r3, r2, #12
 8001bfe:	4298      	cmp	r0, r3
 8001c00:	bf9c      	itt	ls
 8001c02:	2101      	movls	r1, #1
 8001c04:	2d04      	cmpls	r5, #4
 8001c06:	d865      	bhi.n	8001cd4 <UART_SetConfig+0x26c>
 8001c08:	e8df f005 	tbb	[pc, r5]
 8001c0c:	64453e03 	.word	0x64453e03
 8001c10:	0052      	.short	0x0052
 8001c12:	f7ff fca6 	bl	8001562 <HAL_RCC_GetPCLK1Freq>
 8001c16:	e040      	b.n	8001c9a <UART_SetConfig+0x232>
 8001c18:	f7ff fcb8 	bl	800158c <HAL_RCC_GetPCLK2Freq>
 8001c1c:	e007      	b.n	8001c2e <UART_SetConfig+0x1c6>
 8001c1e:	6861      	ldr	r1, [r4, #4]
 8001c20:	f644 0200 	movw	r2, #18432	; 0x4800
 8001c24:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001c28:	e008      	b.n	8001c3c <UART_SetConfig+0x1d4>
 8001c2a:	f7ff fc37 	bl	800149c <HAL_RCC_GetSysClockFreq>
 8001c2e:	6861      	ldr	r1, [r4, #4]
 8001c30:	0040      	lsls	r0, r0, #1
 8001c32:	084a      	lsrs	r2, r1, #1
 8001c34:	e003      	b.n	8001c3e <UART_SetConfig+0x1d6>
 8001c36:	6861      	ldr	r1, [r4, #4]
 8001c38:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001c3c:	0848      	lsrs	r0, r1, #1
 8001c3e:	4410      	add	r0, r2
 8001c40:	fbb0 f0f1 	udiv	r0, r0, r1
 8001c44:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001c48:	4001      	ands	r1, r0
 8001c4a:	2910      	cmp	r1, #16
 8001c4c:	d303      	bcc.n	8001c56 <UART_SetConfig+0x1ee>
 8001c4e:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001c52:	4308      	orrs	r0, r1
 8001c54:	e03a      	b.n	8001ccc <UART_SetConfig+0x264>
 8001c56:	2101      	movs	r1, #1
 8001c58:	e03c      	b.n	8001cd4 <UART_SetConfig+0x26c>
 8001c5a:	f7ff fc97 	bl	800158c <HAL_RCC_GetPCLK2Freq>
 8001c5e:	e003      	b.n	8001c68 <UART_SetConfig+0x200>
 8001c60:	6862      	ldr	r2, [r4, #4]
 8001c62:	e008      	b.n	8001c76 <UART_SetConfig+0x20e>
 8001c64:	f7ff fc1a 	bl	800149c <HAL_RCC_GetSysClockFreq>
 8001c68:	6862      	ldr	r2, [r4, #4]
 8001c6a:	4601      	mov	r1, r0
 8001c6c:	0850      	lsrs	r0, r2, #1
 8001c6e:	e003      	b.n	8001c78 <UART_SetConfig+0x210>
 8001c70:	6862      	ldr	r2, [r4, #4]
 8001c72:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001c76:	0851      	lsrs	r1, r2, #1
 8001c78:	4408      	add	r0, r1
 8001c7a:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c7e:	b280      	uxth	r0, r0
 8001c80:	2810      	cmp	r0, #16
 8001c82:	d223      	bcs.n	8001ccc <UART_SetConfig+0x264>
 8001c84:	2101      	movs	r1, #1
 8001c86:	e025      	b.n	8001cd4 <UART_SetConfig+0x26c>
 8001c88:	2000      	movs	r0, #0
 8001c8a:	2100      	movs	r1, #0
 8001c8c:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001c90:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001c94:	e006      	b.n	8001ca4 <UART_SetConfig+0x23c>
 8001c96:	f7ff fc01 	bl	800149c <HAL_RCC_GetSysClockFreq>
 8001c9a:	6862      	ldr	r2, [r4, #4]
 8001c9c:	0e01      	lsrs	r1, r0, #24
 8001c9e:	0853      	lsrs	r3, r2, #1
 8001ca0:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001ca4:	f141 0100 	adc.w	r1, r1, #0
 8001ca8:	2300      	movs	r3, #0
 8001caa:	f7fe faa9 	bl	8000200 <__aeabi_uldivmod>
 8001cae:	e005      	b.n	8001cbc <UART_SetConfig+0x254>
 8001cb0:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001cb4:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001cb8:	fbb0 f0f2 	udiv	r0, r0, r2
 8001cbc:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001cc0:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001cc4:	f2c0 020f 	movt	r2, #15
 8001cc8:	4291      	cmp	r1, r2
 8001cca:	d80a      	bhi.n	8001ce2 <UART_SetConfig+0x27a>
 8001ccc:	6821      	ldr	r1, [r4, #0]
 8001cce:	f841 0e0c 	strt	r0, [r1, #12]
 8001cd2:	2100      	movs	r1, #0
 8001cd4:	2000      	movs	r0, #0
 8001cd6:	f844 0e60 	strt	r0, [r4, #96]
 8001cda:	f844 0e64 	strt	r0, [r4, #100]
 8001cde:	4608      	mov	r0, r1
 8001ce0:	bdb0      	pop	{r4, r5, r7, pc}
 8001ce2:	2101      	movs	r1, #1
 8001ce4:	e7f6      	b.n	8001cd4 <UART_SetConfig+0x26c>

08001ce6 <UART_AdvFeatureConfig>:
 8001ce6:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001ce8:	f011 0f01 	tst.w	r1, #1
 8001cec:	d009      	beq.n	8001d02 <UART_AdvFeatureConfig+0x1c>
 8001cee:	6802      	ldr	r2, [r0, #0]
 8001cf0:	6853      	ldr	r3, [r2, #4]
 8001cf2:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001cf6:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001cfa:	ea43 030c 	orr.w	r3, r3, ip
 8001cfe:	f842 3e04 	strt	r3, [r2, #4]
 8001d02:	078a      	lsls	r2, r1, #30
 8001d04:	d509      	bpl.n	8001d1a <UART_AdvFeatureConfig+0x34>
 8001d06:	6802      	ldr	r2, [r0, #0]
 8001d08:	6853      	ldr	r3, [r2, #4]
 8001d0a:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001d0e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001d12:	ea43 030c 	orr.w	r3, r3, ip
 8001d16:	f842 3e04 	strt	r3, [r2, #4]
 8001d1a:	074a      	lsls	r2, r1, #29
 8001d1c:	d509      	bpl.n	8001d32 <UART_AdvFeatureConfig+0x4c>
 8001d1e:	6802      	ldr	r2, [r0, #0]
 8001d20:	6853      	ldr	r3, [r2, #4]
 8001d22:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001d26:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001d2a:	ea43 030c 	orr.w	r3, r3, ip
 8001d2e:	f842 3e04 	strt	r3, [r2, #4]
 8001d32:	070a      	lsls	r2, r1, #28
 8001d34:	d509      	bpl.n	8001d4a <UART_AdvFeatureConfig+0x64>
 8001d36:	6802      	ldr	r2, [r0, #0]
 8001d38:	6853      	ldr	r3, [r2, #4]
 8001d3a:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001d3e:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001d42:	ea43 030c 	orr.w	r3, r3, ip
 8001d46:	f842 3e04 	strt	r3, [r2, #4]
 8001d4a:	06ca      	lsls	r2, r1, #27
 8001d4c:	d509      	bpl.n	8001d62 <UART_AdvFeatureConfig+0x7c>
 8001d4e:	6802      	ldr	r2, [r0, #0]
 8001d50:	6893      	ldr	r3, [r2, #8]
 8001d52:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001d56:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001d5a:	ea43 030c 	orr.w	r3, r3, ip
 8001d5e:	f842 3e08 	strt	r3, [r2, #8]
 8001d62:	068a      	lsls	r2, r1, #26
 8001d64:	d509      	bpl.n	8001d7a <UART_AdvFeatureConfig+0x94>
 8001d66:	6802      	ldr	r2, [r0, #0]
 8001d68:	6893      	ldr	r3, [r2, #8]
 8001d6a:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001d6e:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001d72:	ea43 030c 	orr.w	r3, r3, ip
 8001d76:	f842 3e08 	strt	r3, [r2, #8]
 8001d7a:	b082      	sub	sp, #8
 8001d7c:	f84d 7e00 	strt	r7, [sp]
 8001d80:	f84d ee04 	strt	lr, [sp, #4]
 8001d84:	466f      	mov	r7, sp
 8001d86:	064a      	lsls	r2, r1, #25
 8001d88:	d515      	bpl.n	8001db6 <UART_AdvFeatureConfig+0xd0>
 8001d8a:	f8d0 e000 	ldr.w	lr, [r0]
 8001d8e:	f8de c004 	ldr.w	ip, [lr, #4]
 8001d92:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001d94:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001d98:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001d9c:	ea42 0203 	orr.w	r2, r2, r3
 8001da0:	f84e 2e04 	strt	r2, [lr, #4]
 8001da4:	d107      	bne.n	8001db6 <UART_AdvFeatureConfig+0xd0>
 8001da6:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001daa:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001dac:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001db0:	431a      	orrs	r2, r3
 8001db2:	f84e 2e04 	strt	r2, [lr, #4]
 8001db6:	0609      	lsls	r1, r1, #24
 8001db8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001dbc:	bf58      	it	pl
 8001dbe:	4770      	bxpl	lr
 8001dc0:	6801      	ldr	r1, [r0, #0]
 8001dc2:	684a      	ldr	r2, [r1, #4]
 8001dc4:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001dc6:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001dca:	4310      	orrs	r0, r2
 8001dcc:	f841 0e04 	strt	r0, [r1, #4]
 8001dd0:	4770      	bx	lr

08001dd2 <UART_CheckIdleState>:
 8001dd2:	b085      	sub	sp, #20
 8001dd4:	f84d 4e00 	strt	r4, [sp]
 8001dd8:	f84d 5e04 	strt	r5, [sp, #4]
 8001ddc:	f84d 6e08 	strt	r6, [sp, #8]
 8001de0:	f84d 7e0c 	strt	r7, [sp, #12]
 8001de4:	f84d ee10 	strt	lr, [sp, #16]
 8001de8:	af03      	add	r7, sp, #12
 8001dea:	b081      	sub	sp, #4
 8001dec:	f84d be00 	strt	fp, [sp]
 8001df0:	4604      	mov	r4, r0
 8001df2:	2000      	movs	r0, #0
 8001df4:	f844 0e7c 	strt	r0, [r4, #124]
 8001df8:	f7ff f9ef 	bl	80011da <HAL_GetTick>
 8001dfc:	4605      	mov	r5, r0
 8001dfe:	6820      	ldr	r0, [r4, #0]
 8001e00:	6801      	ldr	r1, [r0, #0]
 8001e02:	f011 0f08 	tst.w	r1, #8
 8001e06:	d00f      	beq.n	8001e28 <UART_CheckIdleState+0x56>
 8001e08:	69c1      	ldr	r1, [r0, #28]
 8001e0a:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001e0e:	d10b      	bne.n	8001e28 <UART_CheckIdleState+0x56>
 8001e10:	2600      	movs	r6, #0
 8001e12:	f7ff f9e2 	bl	80011da <HAL_GetTick>
 8001e16:	1b41      	subs	r1, r0, r5
 8001e18:	6820      	ldr	r0, [r4, #0]
 8001e1a:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001e1e:	d11b      	bne.n	8001e58 <UART_CheckIdleState+0x86>
 8001e20:	69c1      	ldr	r1, [r0, #28]
 8001e22:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001e26:	d0f4      	beq.n	8001e12 <UART_CheckIdleState+0x40>
 8001e28:	6801      	ldr	r1, [r0, #0]
 8001e2a:	f011 0f04 	tst.w	r1, #4
 8001e2e:	d101      	bne.n	8001e34 <UART_CheckIdleState+0x62>
 8001e30:	2600      	movs	r6, #0
 8001e32:	e01c      	b.n	8001e6e <UART_CheckIdleState+0x9c>
 8001e34:	69c0      	ldr	r0, [r0, #28]
 8001e36:	2600      	movs	r6, #0
 8001e38:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001e3c:	d117      	bne.n	8001e6e <UART_CheckIdleState+0x9c>
 8001e3e:	f7ff f9cc 	bl	80011da <HAL_GetTick>
 8001e42:	1b41      	subs	r1, r0, r5
 8001e44:	6820      	ldr	r0, [r4, #0]
 8001e46:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001e4a:	d105      	bne.n	8001e58 <UART_CheckIdleState+0x86>
 8001e4c:	69c0      	ldr	r0, [r0, #28]
 8001e4e:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001e52:	d0f4      	beq.n	8001e3e <UART_CheckIdleState+0x6c>
 8001e54:	2600      	movs	r6, #0
 8001e56:	e00a      	b.n	8001e6e <UART_CheckIdleState+0x9c>
 8001e58:	6801      	ldr	r1, [r0, #0]
 8001e5a:	2603      	movs	r6, #3
 8001e5c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e60:	f840 1e00 	strt	r1, [r0]
 8001e64:	6881      	ldr	r1, [r0, #8]
 8001e66:	f021 0101 	bic.w	r1, r1, #1
 8001e6a:	f840 1e08 	strt	r1, [r0, #8]
 8001e6e:	2020      	movs	r0, #32
 8001e70:	f844 0e74 	strt	r0, [r4, #116]
 8001e74:	f844 0e78 	strt	r0, [r4, #120]
 8001e78:	2000      	movs	r0, #0
 8001e7a:	f844 0e70 	strt	r0, [r4, #112]
 8001e7e:	4630      	mov	r0, r6
 8001e80:	f85d bb04 	ldr.w	fp, [sp], #4
 8001e84:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001e86 <HAL_UART_Transmit>:
 8001e86:	b085      	sub	sp, #20
 8001e88:	f84d 4e00 	strt	r4, [sp]
 8001e8c:	f84d 5e04 	strt	r5, [sp, #4]
 8001e90:	f84d 6e08 	strt	r6, [sp, #8]
 8001e94:	f84d 7e0c 	strt	r7, [sp, #12]
 8001e98:	f84d ee10 	strt	lr, [sp, #16]
 8001e9c:	af03      	add	r7, sp, #12
 8001e9e:	b084      	sub	sp, #16
 8001ea0:	f84d 8e00 	strt	r8, [sp]
 8001ea4:	f84d 9e04 	strt	r9, [sp, #4]
 8001ea8:	f84d ae08 	strt	sl, [sp, #8]
 8001eac:	f84d be0c 	strt	fp, [sp, #12]
 8001eb0:	b081      	sub	sp, #4
 8001eb2:	4604      	mov	r4, r0
 8001eb4:	461d      	mov	r5, r3
 8001eb6:	4616      	mov	r6, r2
 8001eb8:	4689      	mov	r9, r1
 8001eba:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001ebc:	2820      	cmp	r0, #32
 8001ebe:	d109      	bne.n	8001ed4 <HAL_UART_Transmit+0x4e>
 8001ec0:	f1b9 0f00 	cmp.w	r9, #0
 8001ec4:	f04f 0001 	mov.w	r0, #1
 8001ec8:	bf18      	it	ne
 8001eca:	2e00      	cmpne	r6, #0
 8001ecc:	d003      	beq.n	8001ed6 <HAL_UART_Transmit+0x50>
 8001ece:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001ed0:	2801      	cmp	r0, #1
 8001ed2:	d104      	bne.n	8001ede <HAL_UART_Transmit+0x58>
 8001ed4:	2002      	movs	r0, #2
 8001ed6:	b001      	add	sp, #4
 8001ed8:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001edc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001ede:	2001      	movs	r0, #1
 8001ee0:	f844 0e70 	strt	r0, [r4, #112]
 8001ee4:	2000      	movs	r0, #0
 8001ee6:	f844 0e7c 	strt	r0, [r4, #124]
 8001eea:	2021      	movs	r0, #33	; 0x21
 8001eec:	f844 0e74 	strt	r0, [r4, #116]
 8001ef0:	f7ff f973 	bl	80011da <HAL_GetTick>
 8001ef4:	f824 6e50 	strht	r6, [r4, #80]
 8001ef8:	f824 6e52 	strht	r6, [r4, #82]
 8001efc:	4680      	mov	r8, r0
 8001efe:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001f02:	f8d4 b000 	ldr.w	fp, [r4]
 8001f06:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001f0a:	2900      	cmp	r1, #0
 8001f0c:	d046      	beq.n	8001f9c <HAL_UART_Transmit+0x116>
 8001f0e:	f105 0a01 	add.w	sl, r5, #1
 8001f12:	0600      	lsls	r0, r0, #24
 8001f14:	d410      	bmi.n	8001f38 <HAL_UART_Transmit+0xb2>
 8001f16:	465e      	mov	r6, fp
 8001f18:	f1ba 0f00 	cmp.w	sl, #0
 8001f1c:	d007      	beq.n	8001f2e <HAL_UART_Transmit+0xa8>
 8001f1e:	b345      	cbz	r5, 8001f72 <HAL_UART_Transmit+0xec>
 8001f20:	f7ff f95b 	bl	80011da <HAL_GetTick>
 8001f24:	6826      	ldr	r6, [r4, #0]
 8001f26:	eba0 0008 	sub.w	r0, r0, r8
 8001f2a:	42a8      	cmp	r0, r5
 8001f2c:	d822      	bhi.n	8001f74 <HAL_UART_Transmit+0xee>
 8001f2e:	69f0      	ldr	r0, [r6, #28]
 8001f30:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001f34:	d0f0      	beq.n	8001f18 <HAL_UART_Transmit+0x92>
 8001f36:	e000      	b.n	8001f3a <HAL_UART_Transmit+0xb4>
 8001f38:	465e      	mov	r6, fp
 8001f3a:	68a0      	ldr	r0, [r4, #8]
 8001f3c:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001f40:	bf04      	itt	eq
 8001f42:	6920      	ldreq	r0, [r4, #16]
 8001f44:	2800      	cmpeq	r0, #0
 8001f46:	d002      	beq.n	8001f4e <HAL_UART_Transmit+0xc8>
 8001f48:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001f4c:	e003      	b.n	8001f56 <HAL_UART_Transmit+0xd0>
 8001f4e:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001f52:	f36f 205f 	bfc	r0, #9, #23
 8001f56:	f826 0e28 	strht	r0, [r6, #40]
 8001f5a:	46b3      	mov	fp, r6
 8001f5c:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001f60:	3801      	subs	r0, #1
 8001f62:	f824 0e52 	strht	r0, [r4, #82]
 8001f66:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001f6a:	69f0      	ldr	r0, [r6, #28]
 8001f6c:	2900      	cmp	r1, #0
 8001f6e:	d1d0      	bne.n	8001f12 <HAL_UART_Transmit+0x8c>
 8001f70:	e015      	b.n	8001f9e <HAL_UART_Transmit+0x118>
 8001f72:	465e      	mov	r6, fp
 8001f74:	6830      	ldr	r0, [r6, #0]
 8001f76:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001f7a:	f846 0e00 	strt	r0, [r6]
 8001f7e:	68b0      	ldr	r0, [r6, #8]
 8001f80:	f020 0001 	bic.w	r0, r0, #1
 8001f84:	f846 0e08 	strt	r0, [r6, #8]
 8001f88:	2020      	movs	r0, #32
 8001f8a:	f844 0e74 	strt	r0, [r4, #116]
 8001f8e:	f844 0e78 	strt	r0, [r4, #120]
 8001f92:	2000      	movs	r0, #0
 8001f94:	f844 0e70 	strt	r0, [r4, #112]
 8001f98:	2003      	movs	r0, #3
 8001f9a:	e79c      	b.n	8001ed6 <HAL_UART_Transmit+0x50>
 8001f9c:	465e      	mov	r6, fp
 8001f9e:	0640      	lsls	r0, r0, #25
 8001fa0:	d411      	bmi.n	8001fc6 <HAL_UART_Transmit+0x140>
 8001fa2:	f105 0901 	add.w	r9, r5, #1
 8001fa6:	4630      	mov	r0, r6
 8001fa8:	f1b9 0f00 	cmp.w	r9, #0
 8001fac:	d007      	beq.n	8001fbe <HAL_UART_Transmit+0x138>
 8001fae:	b18d      	cbz	r5, 8001fd4 <HAL_UART_Transmit+0x14e>
 8001fb0:	f7ff f913 	bl	80011da <HAL_GetTick>
 8001fb4:	eba0 0108 	sub.w	r1, r0, r8
 8001fb8:	6820      	ldr	r0, [r4, #0]
 8001fba:	42a9      	cmp	r1, r5
 8001fbc:	d80b      	bhi.n	8001fd6 <HAL_UART_Transmit+0x150>
 8001fbe:	69c1      	ldr	r1, [r0, #28]
 8001fc0:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001fc4:	d0f0      	beq.n	8001fa8 <HAL_UART_Transmit+0x122>
 8001fc6:	2020      	movs	r0, #32
 8001fc8:	f844 0e74 	strt	r0, [r4, #116]
 8001fcc:	2000      	movs	r0, #0
 8001fce:	f844 0e70 	strt	r0, [r4, #112]
 8001fd2:	e780      	b.n	8001ed6 <HAL_UART_Transmit+0x50>
 8001fd4:	4630      	mov	r0, r6
 8001fd6:	6801      	ldr	r1, [r0, #0]
 8001fd8:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001fdc:	f840 1e00 	strt	r1, [r0]
 8001fe0:	6881      	ldr	r1, [r0, #8]
 8001fe2:	f021 0101 	bic.w	r1, r1, #1
 8001fe6:	f840 1e08 	strt	r1, [r0, #8]
 8001fea:	e7cd      	b.n	8001f88 <HAL_UART_Transmit+0x102>

08001fec <BSP_COM_Init>:
 8001fec:	b085      	sub	sp, #20
 8001fee:	f84d 4e00 	strt	r4, [sp]
 8001ff2:	f84d 5e04 	strt	r5, [sp, #4]
 8001ff6:	f84d 6e08 	strt	r6, [sp, #8]
 8001ffa:	f84d 7e0c 	strt	r7, [sp, #12]
 8001ffe:	f84d ee10 	strt	lr, [sp, #16]
 8002002:	af03      	add	r7, sp, #12
 8002004:	b083      	sub	sp, #12
 8002006:	f84d 8e00 	strt	r8, [sp]
 800200a:	f84d 9e04 	strt	r9, [sp, #4]
 800200e:	f84d be08 	strt	fp, [sp, #8]
 8002012:	b086      	sub	sp, #24
 8002014:	4605      	mov	r5, r0
 8002016:	4688      	mov	r8, r1
 8002018:	bb25      	cbnz	r5, 8002064 <BSP_COM_Init+0x78>
 800201a:	f241 004c 	movw	r0, #4172	; 0x104c
 800201e:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002022:	6801      	ldr	r1, [r0, #0]
 8002024:	f041 0102 	orr.w	r1, r1, #2
 8002028:	f840 1e00 	strt	r1, [r0]
 800202c:	6801      	ldr	r1, [r0, #0]
 800202e:	f001 0102 	and.w	r1, r1, #2
 8002032:	f84d 1e04 	strt	r1, [sp, #4]
 8002036:	9901      	ldr	r1, [sp, #4]
 8002038:	6801      	ldr	r1, [r0, #0]
 800203a:	f041 0102 	orr.w	r1, r1, #2
 800203e:	f840 1e00 	strt	r1, [r0]
 8002042:	6801      	ldr	r1, [r0, #0]
 8002044:	f001 0102 	and.w	r1, r1, #2
 8002048:	f84d 1e04 	strt	r1, [sp, #4]
 800204c:	9901      	ldr	r1, [sp, #4]
 800204e:	6941      	ldr	r1, [r0, #20]
 8002050:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8002054:	f840 1e14 	strt	r1, [r0, #20]
 8002058:	6940      	ldr	r0, [r0, #20]
 800205a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 800205e:	f84d 0e04 	strt	r0, [sp, #4]
 8002062:	9801      	ldr	r0, [sp, #4]
 8002064:	2040      	movs	r0, #64	; 0x40
 8002066:	2402      	movs	r4, #2
 8002068:	ae01      	add	r6, sp, #4
 800206a:	f04f 0907 	mov.w	r9, #7
 800206e:	f84d 0e04 	strt	r0, [sp, #4]
 8002072:	2000      	movs	r0, #0
 8002074:	f84d 4e08 	strt	r4, [sp, #8]
 8002078:	f84d 4e10 	strt	r4, [sp, #16]
 800207c:	4631      	mov	r1, r6
 800207e:	f84d 0e0c 	strt	r0, [sp, #12]
 8002082:	f240 000c 	movw	r0, #12
 8002086:	f84d 9e14 	strt	r9, [sp, #20]
 800208a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800208e:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002092:	f7ff f8fb 	bl	800128c <HAL_GPIO_Init>
 8002096:	2080      	movs	r0, #128	; 0x80
 8002098:	4631      	mov	r1, r6
 800209a:	f84d 0e04 	strt	r0, [sp, #4]
 800209e:	f84d 4e08 	strt	r4, [sp, #8]
 80020a2:	f240 0010 	movw	r0, #16
 80020a6:	f84d 9e14 	strt	r9, [sp, #20]
 80020aa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020ae:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 80020b2:	f7ff f8eb 	bl	800128c <HAL_GPIO_Init>
 80020b6:	f240 0008 	movw	r0, #8
 80020ba:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020be:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 80020c2:	f848 0e00 	strt	r0, [r8]
 80020c6:	4640      	mov	r0, r8
 80020c8:	f7ff fc8d 	bl	80019e6 <HAL_UART_Init>
 80020cc:	b006      	add	sp, #24
 80020ce:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 80020d2:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020d4 <verify_benchmark>:
 80020d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80020d8:	4770      	bx	lr

080020da <initialise_benchmark>:
 80020da:	4770      	bx	lr

080020dc <benchmark>:
 80020dc:	b082      	sub	sp, #8
 80020de:	f84d 7e00 	strt	r7, [sp]
 80020e2:	f84d ee04 	strt	lr, [sp, #4]
 80020e6:	466f      	mov	r7, sp
 80020e8:	f240 0014 	movw	r0, #20
 80020ec:	2110      	movs	r1, #16
 80020ee:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020f2:	f840 1e00 	strt	r1, [r0]
 80020f6:	f240 0018 	movw	r0, #24
 80020fa:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 80020fe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002102:	f840 1e00 	strt	r1, [r0]
 8002106:	f241 2028 	movw	r0, #4648	; 0x1228
 800210a:	2132      	movs	r1, #50	; 0x32
 800210c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002110:	f840 1e00 	strt	r1, [r0]
 8002114:	f241 10b4 	movw	r0, #4532	; 0x11b4
 8002118:	2135      	movs	r1, #53	; 0x35
 800211a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800211e:	f840 1e00 	strt	r1, [r0]
 8002122:	f640 3038 	movw	r0, #2872	; 0xb38
 8002126:	f647 01e8 	movw	r1, #30952	; 0x78e8
 800212a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800212e:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002132:	f840 1e00 	strt	r1, [r0]
 8002136:	f241 10b8 	movw	r0, #4536	; 0x11b8
 800213a:	f640 313c 	movw	r1, #2876	; 0xb3c
 800213e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002142:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002146:	f840 1e00 	strt	r1, [r0]
 800214a:	f000 f802 	bl	8002152 <compress>
 800214e:	2000      	movs	r0, #0
 8002150:	bd80      	pop	{r7, pc}

08002152 <compress>:
 8002152:	b085      	sub	sp, #20
 8002154:	f84d 4e00 	strt	r4, [sp]
 8002158:	f84d 5e04 	strt	r5, [sp, #4]
 800215c:	f84d 6e08 	strt	r6, [sp, #8]
 8002160:	f84d 7e0c 	strt	r7, [sp, #12]
 8002164:	f84d ee10 	strt	lr, [sp, #16]
 8002168:	af03      	add	r7, sp, #12
 800216a:	b084      	sub	sp, #16
 800216c:	f84d 8e00 	strt	r8, [sp]
 8002170:	f84d 9e04 	strt	r9, [sp, #4]
 8002174:	f84d ae08 	strt	sl, [sp, #8]
 8002178:	f84d be0c 	strt	fp, [sp, #12]
 800217c:	b081      	sub	sp, #4
 800217e:	f640 2030 	movw	r0, #2608	; 0xa30
 8002182:	f241 2220 	movw	r2, #4640	; 0x1220
 8002186:	2100      	movs	r1, #0
 8002188:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800218c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002190:	f840 1e00 	strt	r1, [r0]
 8002194:	2003      	movs	r0, #3
 8002196:	f842 0e00 	strt	r0, [r2]
 800219a:	f640 202c 	movw	r0, #2604	; 0xa2c
 800219e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021a2:	f840 1e00 	strt	r1, [r0]
 80021a6:	f640 2020 	movw	r0, #2592	; 0xa20
 80021aa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021ae:	f840 1e00 	strt	r1, [r0]
 80021b2:	f640 2024 	movw	r0, #2596	; 0xa24
 80021b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021ba:	f840 1e00 	strt	r1, [r0]
 80021be:	f240 0130 	movw	r1, #48	; 0x30
 80021c2:	2001      	movs	r0, #1
 80021c4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021c8:	f841 0e00 	strt	r0, [r1]
 80021cc:	f240 012c 	movw	r1, #44	; 0x2c
 80021d0:	f242 7010 	movw	r0, #10000	; 0x2710
 80021d4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021d8:	f841 0e00 	strt	r0, [r1]
 80021dc:	f241 2024 	movw	r0, #4644	; 0x1224
 80021e0:	2109      	movs	r1, #9
 80021e2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021e6:	f840 1e00 	strt	r1, [r0]
 80021ea:	f241 505c 	movw	r0, #5468	; 0x155c
 80021ee:	f240 11ff 	movw	r1, #511	; 0x1ff
 80021f2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021f6:	f840 1e00 	strt	r1, [r0]
 80021fa:	f240 0028 	movw	r0, #40	; 0x28
 80021fe:	f44f 7180 	mov.w	r1, #256	; 0x100
 8002202:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002206:	6800      	ldr	r0, [r0, #0]
 8002208:	2800      	cmp	r0, #0
 800220a:	f640 2014 	movw	r0, #2580	; 0xa14
 800220e:	bf18      	it	ne
 8002210:	f240 1101 	movwne	r1, #257	; 0x101
 8002214:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002218:	f840 1e00 	strt	r1, [r0]
 800221c:	f241 2028 	movw	r0, #4648	; 0x1228
 8002220:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002224:	f8d0 b000 	ldr.w	fp, [r0]
 8002228:	f1bb 0f01 	cmp.w	fp, #1
 800222c:	db1a      	blt.n	8002264 <compress+0x112>
 800222e:	f241 10b4 	movw	r0, #4532	; 0x11b4
 8002232:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002236:	6801      	ldr	r1, [r0, #0]
 8002238:	3901      	subs	r1, #1
 800223a:	f840 1e00 	strt	r1, [r0]
 800223e:	db11      	blt.n	8002264 <compress+0x112>
 8002240:	f241 2028 	movw	r0, #4648	; 0x1228
 8002244:	f1ab 0b01 	sub.w	fp, fp, #1
 8002248:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800224c:	f840 be00 	strt	fp, [r0]
 8002250:	f640 3038 	movw	r0, #2872	; 0xb38
 8002254:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002258:	6801      	ldr	r1, [r0, #0]
 800225a:	1c4a      	adds	r2, r1, #1
 800225c:	f840 2e00 	strt	r2, [r0]
 8002260:	780c      	ldrb	r4, [r1, #0]
 8002262:	e001      	b.n	8002268 <compress+0x116>
 8002264:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8002268:	f240 001c 	movw	r0, #28
 800226c:	2600      	movs	r6, #0
 800226e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002272:	f8d0 a000 	ldr.w	sl, [r0]
 8002276:	f5ba 3f80 	cmp.w	sl, #65536	; 0x10000
 800227a:	da05      	bge.n	8002288 <compress+0x136>
 800227c:	4650      	mov	r0, sl
 800227e:	0040      	lsls	r0, r0, #1
 8002280:	3601      	adds	r6, #1
 8002282:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
 8002286:	dbfa      	blt.n	800227e <compress+0x12c>
 8002288:	f1ca 001f 	rsb	r0, sl, #31
 800228c:	f1aa 0210 	sub.w	r2, sl, #16
 8002290:	f640 3974 	movw	r9, #2932	; 0xb74
 8002294:	2800      	cmp	r0, #0
 8002296:	ea4f 1312 	mov.w	r3, r2, lsr #4
 800229a:	f2c2 0900 	movt	r9, #8192	; 0x2000
 800229e:	f04f 0040 	mov.w	r0, #64	; 0x40
 80022a2:	bfc8      	it	gt
 80022a4:	2300      	movgt	r3, #0
 80022a6:	eba2 1503 	sub.w	r5, r2, r3, lsl #4
 80022aa:	eb00 1183 	add.w	r1, r0, r3, lsl #6
 80022ae:	22ff      	movs	r2, #255	; 0xff
 80022b0:	eb09 0885 	add.w	r8, r9, r5, lsl #2
 80022b4:	4640      	mov	r0, r8
 80022b6:	f7fe f923 	bl	8000500 <__aeabi_memset>
 80022ba:	2d01      	cmp	r5, #1
 80022bc:	db10      	blt.n	80022e0 <compress+0x18e>
 80022be:	43e8      	mvns	r0, r5
 80022c0:	f06f 0201 	mvn.w	r2, #1
 80022c4:	2108      	movs	r1, #8
 80022c6:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80022ca:	bfb8      	it	lt
 80022cc:	4610      	movlt	r0, r2
 80022ce:	4428      	add	r0, r5
 80022d0:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 80022d4:	1a10      	subs	r0, r2, r0
 80022d6:	22ff      	movs	r2, #255	; 0xff
 80022d8:	eb08 0080 	add.w	r0, r8, r0, lsl #2
 80022dc:	f7fe f910 	bl	8000500 <__aeabi_memset>
 80022e0:	f640 2c2c 	movw	ip, #2604	; 0xa2c
 80022e4:	f1bb 0f01 	cmp.w	fp, #1
 80022e8:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80022ec:	f2c0 8139 	blt.w	8002562 <compress+0x410>
 80022f0:	f640 2e24 	movw	lr, #2596	; 0xa24
 80022f4:	f240 0530 	movw	r5, #48	; 0x30
 80022f8:	f1c6 0008 	rsb	r0, r6, #8
 80022fc:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002300:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002304:	f84d 0e00 	strt	r0, [sp]
 8002308:	e0e5      	b.n	80024d6 <compress+0x384>
 800230a:	2e00      	cmp	r6, #0
 800230c:	db13      	blt.n	8002336 <compress+0x1e4>
 800230e:	ebaa 0402 	sub.w	r4, sl, r2
 8002312:	2a00      	cmp	r2, #0
 8002314:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
 8002318:	bf08      	it	eq
 800231a:	2401      	moveq	r4, #1
 800231c:	1b12      	subs	r2, r2, r4
 800231e:	2a00      	cmp	r2, #0
 8002320:	bfb8      	it	lt
 8002322:	4452      	addlt	r2, sl
 8002324:	f859 5022 	ldr.w	r5, [r9, r2, lsl #2]
 8002328:	429d      	cmp	r5, r3
 800232a:	d056      	beq.n	80023da <compress+0x288>
 800232c:	2d01      	cmp	r5, #1
 800232e:	db02      	blt.n	8002336 <compress+0x1e4>
 8002330:	3601      	adds	r6, #1
 8002332:	428e      	cmp	r6, r1
 8002334:	dbf2      	blt.n	800231c <compress+0x1ca>
 8002336:	f8dc 6000 	ldr.w	r6, [ip]
 800233a:	f640 2414 	movw	r4, #2580	; 0xa14
 800233e:	f240 0518 	movw	r5, #24
 8002342:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002346:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800234a:	682d      	ldr	r5, [r5, #0]
 800234c:	3601      	adds	r6, #1
 800234e:	f84c 6e00 	strt	r6, [ip]
 8002352:	6826      	ldr	r6, [r4, #0]
 8002354:	42ae      	cmp	r6, r5
 8002356:	da13      	bge.n	8002380 <compress+0x22e>
 8002358:	1c70      	adds	r0, r6, #1
 800235a:	eb09 0982 	add.w	r9, r9, r2, lsl #2
 800235e:	f849 3e00 	strt	r3, [r9]
 8002362:	eba9 0982 	sub.w	r9, r9, r2, lsl #2
 8002366:	f844 0e00 	strt	r0, [r4]
 800236a:	f241 202c 	movw	r0, #4652	; 0x122c
 800236e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002372:	eb00 0042 	add.w	r0, r0, r2, lsl #1
 8002376:	f820 6e00 	strht	r6, [r0]
 800237a:	eba0 0042 	sub.w	r0, r0, r2, lsl #1
 800237e:	e02a      	b.n	80023d6 <compress+0x284>
 8002380:	f240 022c 	movw	r2, #44	; 0x2c
 8002384:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002388:	6812      	ldr	r2, [r2, #0]
 800238a:	4290      	cmp	r0, r2
 800238c:	db23      	blt.n	80023d6 <compress+0x284>
 800238e:	f240 0228 	movw	r2, #40	; 0x28
 8002392:	f240 0530 	movw	r5, #48	; 0x30
 8002396:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800239a:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800239e:	6812      	ldr	r2, [r2, #0]
 80023a0:	b34a      	cbz	r2, 80023f6 <compress+0x2a4>
 80023a2:	f242 7211 	movw	r2, #10001	; 0x2711
 80023a6:	f240 032c 	movw	r3, #44	; 0x2c
 80023aa:	440a      	add	r2, r1
 80023ac:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80023b0:	f843 2e00 	strt	r2, [r3]
 80023b4:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80023b8:	f2c0 027f 	movt	r2, #127	; 0x7f
 80023bc:	4291      	cmp	r1, r2
 80023be:	db1f      	blt.n	8002400 <compress+0x2ae>
 80023c0:	f241 2120 	movw	r1, #4640	; 0x1220
 80023c4:	2200      	movs	r2, #0
 80023c6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80023ca:	6809      	ldr	r1, [r1, #0]
 80023cc:	ebb2 2f21 	cmp.w	r2, r1, asr #8
 80023d0:	d07e      	beq.n	80024d0 <compress+0x37e>
 80023d2:	1209      	asrs	r1, r1, #8
 80023d4:	e01a      	b.n	800240c <compress+0x2ba>
 80023d6:	4644      	mov	r4, r8
 80023d8:	e005      	b.n	80023e6 <compress+0x294>
 80023da:	f241 202c 	movw	r0, #4652	; 0x122c
 80023de:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023e2:	f830 4012 	ldrh.w	r4, [r0, r2, lsl #1]
 80023e6:	f240 0530 	movw	r5, #48	; 0x30
 80023ea:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80023ee:	f1bb 0f00 	cmp.w	fp, #0
 80023f2:	dc70      	bgt.n	80024d6 <compress+0x384>
 80023f4:	e0ad      	b.n	8002552 <compress+0x400>
 80023f6:	4644      	mov	r4, r8
 80023f8:	f1bb 0f00 	cmp.w	fp, #0
 80023fc:	dc6b      	bgt.n	80024d6 <compress+0x384>
 80023fe:	e0a8      	b.n	8002552 <compress+0x400>
 8002400:	f241 2120 	movw	r1, #4640	; 0x1220
 8002404:	0200      	lsls	r0, r0, #8
 8002406:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800240a:	6809      	ldr	r1, [r1, #0]
 800240c:	fb90 f0f1 	sdiv	r0, r0, r1
 8002410:	f8de 1000 	ldr.w	r1, [lr]
 8002414:	4288      	cmp	r0, r1
 8002416:	dd06      	ble.n	8002426 <compress+0x2d4>
 8002418:	f84e 0e00 	strt	r0, [lr]
 800241c:	4644      	mov	r4, r8
 800241e:	f1bb 0f00 	cmp.w	fp, #0
 8002422:	dc58      	bgt.n	80024d6 <compress+0x384>
 8002424:	e095      	b.n	8002552 <compress+0x400>
 8002426:	2000      	movs	r0, #0
 8002428:	f84e 0e00 	strt	r0, [lr]
 800242c:	f240 001c 	movw	r0, #28
 8002430:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002434:	6800      	ldr	r0, [r0, #0]
 8002436:	f1c0 011f 	rsb	r1, r0, #31
 800243a:	3810      	subs	r0, #16
 800243c:	2900      	cmp	r1, #0
 800243e:	ea4f 1210 	mov.w	r2, r0, lsr #4
 8002442:	f04f 0140 	mov.w	r1, #64	; 0x40
 8002446:	bfc8      	it	gt
 8002448:	2200      	movgt	r2, #0
 800244a:	eba0 1602 	sub.w	r6, r0, r2, lsl #4
 800244e:	eb01 1182 	add.w	r1, r1, r2, lsl #6
 8002452:	22ff      	movs	r2, #255	; 0xff
 8002454:	eb09 0486 	add.w	r4, r9, r6, lsl #2
 8002458:	4620      	mov	r0, r4
 800245a:	f7fe f851 	bl	8000500 <__aeabi_memset>
 800245e:	2e01      	cmp	r6, #1
 8002460:	db10      	blt.n	8002484 <compress+0x332>
 8002462:	43f0      	mvns	r0, r6
 8002464:	f06f 0201 	mvn.w	r2, #1
 8002468:	2108      	movs	r1, #8
 800246a:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800246e:	bfb8      	it	lt
 8002470:	4610      	movlt	r0, r2
 8002472:	4430      	add	r0, r6
 8002474:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 8002478:	1a10      	subs	r0, r2, r0
 800247a:	22ff      	movs	r2, #255	; 0xff
 800247c:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 8002480:	f7fe f83e 	bl	8000500 <__aeabi_memset>
 8002484:	f640 2014 	movw	r0, #2580	; 0xa14
 8002488:	f240 1101 	movw	r1, #257	; 0x101
 800248c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002490:	f840 1e00 	strt	r1, [r0]
 8002494:	f640 2020 	movw	r0, #2592	; 0xa20
 8002498:	2101      	movs	r1, #1
 800249a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800249e:	f840 1e00 	strt	r1, [r0]
 80024a2:	f44f 7080 	mov.w	r0, #256	; 0x100
 80024a6:	f000 f867 	bl	8002578 <output>
 80024aa:	f241 2028 	movw	r0, #4648	; 0x1228
 80024ae:	f640 2c2c 	movw	ip, #2604	; 0xa2c
 80024b2:	f640 2e24 	movw	lr, #2596	; 0xa24
 80024b6:	4644      	mov	r4, r8
 80024b8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80024bc:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80024c0:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80024c4:	f8d0 b000 	ldr.w	fp, [r0]
 80024c8:	f1bb 0f00 	cmp.w	fp, #0
 80024cc:	dc03      	bgt.n	80024d6 <compress+0x384>
 80024ce:	e040      	b.n	8002552 <compress+0x400>
 80024d0:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000
 80024d4:	e79c      	b.n	8002410 <compress+0x2be>
 80024d6:	f241 10b4 	movw	r0, #4532	; 0x11b4
 80024da:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80024de:	4601      	mov	r1, r0
 80024e0:	6808      	ldr	r0, [r1, #0]
 80024e2:	3801      	subs	r0, #1
 80024e4:	f841 0e00 	strt	r0, [r1]
 80024e8:	db13      	blt.n	8002512 <compress+0x3c0>
 80024ea:	f241 2028 	movw	r0, #4648	; 0x1228
 80024ee:	f1ab 0b01 	sub.w	fp, fp, #1
 80024f2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80024f6:	f840 be00 	strt	fp, [r0]
 80024fa:	f640 3038 	movw	r0, #2872	; 0xb38
 80024fe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002502:	4602      	mov	r2, r0
 8002504:	6810      	ldr	r0, [r2, #0]
 8002506:	1c41      	adds	r1, r0, #1
 8002508:	f842 1e00 	strt	r1, [r2]
 800250c:	f890 8000 	ldrb.w	r8, [r0]
 8002510:	e001      	b.n	8002516 <compress+0x3c4>
 8002512:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
 8002516:	9a00      	ldr	r2, [sp, #0]
 8002518:	f240 0314 	movw	r3, #20
 800251c:	6829      	ldr	r1, [r5, #0]
 800251e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002522:	681b      	ldr	r3, [r3, #0]
 8002524:	fa08 f202 	lsl.w	r2, r8, r2
 8002528:	1c48      	adds	r0, r1, #1
 800252a:	4062      	eors	r2, r4
 800252c:	f845 0e00 	strt	r0, [r5]
 8002530:	f859 6022 	ldr.w	r6, [r9, r2, lsl #2]
 8002534:	fa08 f303 	lsl.w	r3, r8, r3
 8002538:	4423      	add	r3, r4
 800253a:	429e      	cmp	r6, r3
 800253c:	f47f aee5 	bne.w	800230a <compress+0x1b8>
 8002540:	f241 202c 	movw	r0, #4652	; 0x122c
 8002544:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002548:	f830 4012 	ldrh.w	r4, [r0, r2, lsl #1]
 800254c:	f1bb 0f00 	cmp.w	fp, #0
 8002550:	dcc1      	bgt.n	80024d6 <compress+0x384>
 8002552:	f241 2120 	movw	r1, #4640	; 0x1220
 8002556:	6828      	ldr	r0, [r5, #0]
 8002558:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800255c:	6809      	ldr	r1, [r1, #0]
 800255e:	4281      	cmp	r1, r0
 8002560:	dd06      	ble.n	8002570 <compress+0x41e>
 8002562:	f640 2018 	movw	r0, #2584	; 0xa18
 8002566:	2102      	movs	r1, #2
 8002568:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800256c:	f840 1e00 	strt	r1, [r0]
 8002570:	b001      	add	sp, #4
 8002572:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002576:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002578 <output>:
 8002578:	b085      	sub	sp, #20
 800257a:	f84d 4e00 	strt	r4, [sp]
 800257e:	f84d 5e04 	strt	r5, [sp, #4]
 8002582:	f84d 6e08 	strt	r6, [sp, #8]
 8002586:	f84d 7e0c 	strt	r7, [sp, #12]
 800258a:	f84d ee10 	strt	lr, [sp, #16]
 800258e:	af03      	add	r7, sp, #12
 8002590:	b083      	sub	sp, #12
 8002592:	f84d 8e00 	strt	r8, [sp]
 8002596:	f84d 9e04 	strt	r9, [sp, #4]
 800259a:	f84d be08 	strt	fp, [sp, #8]
 800259e:	f640 2e30 	movw	lr, #2608	; 0xa30
 80025a2:	2800      	cmp	r0, #0
 80025a4:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80025a8:	f8de 1000 	ldr.w	r1, [lr]
 80025ac:	f2c0 8145 	blt.w	800283a <output+0x2c2>
 80025b0:	f241 584c 	movw	r8, #5452	; 0x154c
 80025b4:	f240 063d 	movw	r6, #61	; 0x3d
 80025b8:	10ca      	asrs	r2, r1, #3
 80025ba:	f001 0507 	and.w	r5, r1, #7
 80025be:	f241 2c24 	movw	ip, #4644	; 0x1224
 80025c2:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80025c6:	f2c2 0800 	movt	r8, #8192	; 0x2000
 80025ca:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80025ce:	f818 2002 	ldrb.w	r2, [r8, r2]
 80025d2:	5d76      	ldrb	r6, [r6, r5]
 80025d4:	4032      	ands	r2, r6
 80025d6:	fa00 f605 	lsl.w	r6, r0, r5
 80025da:	4332      	orrs	r2, r6
 80025dc:	f240 0634 	movw	r6, #52	; 0x34
 80025e0:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80025e4:	5d76      	ldrb	r6, [r6, r5]
 80025e6:	ea02 0306 	and.w	r3, r2, r6
 80025ea:	f8dc 2000 	ldr.w	r2, [ip]
 80025ee:	eb08 06e1 	add.w	r6, r8, r1, asr #3
 80025f2:	4634      	mov	r4, r6
 80025f4:	f804 3e00 	strbt	r3, [r4]
 80025f8:	bfe8      	it	al
 80025fa:	3401      	addal	r4, #1
 80025fc:	f1c5 0308 	rsb	r3, r5, #8
 8002600:	4118      	asrs	r0, r3
 8002602:	1ad5      	subs	r5, r2, r3
 8002604:	2d08      	cmp	r5, #8
 8002606:	bfa1      	itttt	ge
 8002608:	f806 0e01 	strbtge	r0, [r6, #1]
 800260c:	3d08      	subge	r5, #8
 800260e:	1200      	asrge	r0, r0, #8
 8002610:	1cb4      	addge	r4, r6, #2
 8002612:	2d00      	cmp	r5, #0
 8002614:	bf18      	it	ne
 8002616:	f804 0e00 	strbtne	r0, [r4]
 800261a:	188c      	adds	r4, r1, r2
 800261c:	ebb4 0fc2 	cmp.w	r4, r2, lsl #3
 8002620:	f84e 4e00 	strt	r4, [lr]
 8002624:	f040 80c0 	bne.w	80027a8 <output+0x230>
 8002628:	f241 2020 	movw	r0, #4640	; 0x1220
 800262c:	2a01      	cmp	r2, #1
 800262e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002632:	6801      	ldr	r1, [r0, #0]
 8002634:	4411      	add	r1, r2
 8002636:	f840 1e00 	strt	r1, [r0]
 800263a:	f241 10b8 	movw	r0, #4536	; 0x11b8
 800263e:	f898 1000 	ldrb.w	r1, [r8]
 8002642:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002646:	6803      	ldr	r3, [r0, #0]
 8002648:	f103 0401 	add.w	r4, r3, #1
 800264c:	f840 4e00 	strt	r4, [r0]
 8002650:	f803 1e00 	strbt	r1, [r3]
 8002654:	f000 80a5 	beq.w	80027a2 <output+0x22a>
 8002658:	6803      	ldr	r3, [r0, #0]
 800265a:	f898 1001 	ldrb.w	r1, [r8, #1]
 800265e:	2a02      	cmp	r2, #2
 8002660:	f103 0401 	add.w	r4, r3, #1
 8002664:	f840 4e00 	strt	r4, [r0]
 8002668:	f803 1e00 	strbt	r1, [r3]
 800266c:	f000 8099 	beq.w	80027a2 <output+0x22a>
 8002670:	6803      	ldr	r3, [r0, #0]
 8002672:	f898 1002 	ldrb.w	r1, [r8, #2]
 8002676:	2a03      	cmp	r2, #3
 8002678:	f103 0401 	add.w	r4, r3, #1
 800267c:	f840 4e00 	strt	r4, [r0]
 8002680:	f803 1e00 	strbt	r1, [r3]
 8002684:	f000 808d 	beq.w	80027a2 <output+0x22a>
 8002688:	6803      	ldr	r3, [r0, #0]
 800268a:	f898 1003 	ldrb.w	r1, [r8, #3]
 800268e:	2a04      	cmp	r2, #4
 8002690:	f103 0401 	add.w	r4, r3, #1
 8002694:	f840 4e00 	strt	r4, [r0]
 8002698:	f803 1e00 	strbt	r1, [r3]
 800269c:	f000 8081 	beq.w	80027a2 <output+0x22a>
 80026a0:	6803      	ldr	r3, [r0, #0]
 80026a2:	f898 1004 	ldrb.w	r1, [r8, #4]
 80026a6:	2a05      	cmp	r2, #5
 80026a8:	f103 0401 	add.w	r4, r3, #1
 80026ac:	f840 4e00 	strt	r4, [r0]
 80026b0:	f803 1e00 	strbt	r1, [r3]
 80026b4:	d075      	beq.n	80027a2 <output+0x22a>
 80026b6:	6803      	ldr	r3, [r0, #0]
 80026b8:	f898 1005 	ldrb.w	r1, [r8, #5]
 80026bc:	2a06      	cmp	r2, #6
 80026be:	f103 0401 	add.w	r4, r3, #1
 80026c2:	f840 4e00 	strt	r4, [r0]
 80026c6:	f803 1e00 	strbt	r1, [r3]
 80026ca:	d06a      	beq.n	80027a2 <output+0x22a>
 80026cc:	6803      	ldr	r3, [r0, #0]
 80026ce:	f898 1006 	ldrb.w	r1, [r8, #6]
 80026d2:	2a07      	cmp	r2, #7
 80026d4:	f103 0401 	add.w	r4, r3, #1
 80026d8:	f840 4e00 	strt	r4, [r0]
 80026dc:	f803 1e00 	strbt	r1, [r3]
 80026e0:	d05f      	beq.n	80027a2 <output+0x22a>
 80026e2:	6803      	ldr	r3, [r0, #0]
 80026e4:	f898 1007 	ldrb.w	r1, [r8, #7]
 80026e8:	2a08      	cmp	r2, #8
 80026ea:	f103 0401 	add.w	r4, r3, #1
 80026ee:	f840 4e00 	strt	r4, [r0]
 80026f2:	f803 1e00 	strbt	r1, [r3]
 80026f6:	d054      	beq.n	80027a2 <output+0x22a>
 80026f8:	6803      	ldr	r3, [r0, #0]
 80026fa:	f898 1008 	ldrb.w	r1, [r8, #8]
 80026fe:	2a09      	cmp	r2, #9
 8002700:	f103 0401 	add.w	r4, r3, #1
 8002704:	f840 4e00 	strt	r4, [r0]
 8002708:	f803 1e00 	strbt	r1, [r3]
 800270c:	d049      	beq.n	80027a2 <output+0x22a>
 800270e:	6803      	ldr	r3, [r0, #0]
 8002710:	f898 1009 	ldrb.w	r1, [r8, #9]
 8002714:	2a0a      	cmp	r2, #10
 8002716:	f103 0401 	add.w	r4, r3, #1
 800271a:	f840 4e00 	strt	r4, [r0]
 800271e:	f803 1e00 	strbt	r1, [r3]
 8002722:	d03e      	beq.n	80027a2 <output+0x22a>
 8002724:	6803      	ldr	r3, [r0, #0]
 8002726:	f898 100a 	ldrb.w	r1, [r8, #10]
 800272a:	2a0b      	cmp	r2, #11
 800272c:	f103 0401 	add.w	r4, r3, #1
 8002730:	f840 4e00 	strt	r4, [r0]
 8002734:	f803 1e00 	strbt	r1, [r3]
 8002738:	d033      	beq.n	80027a2 <output+0x22a>
 800273a:	6803      	ldr	r3, [r0, #0]
 800273c:	f898 100b 	ldrb.w	r1, [r8, #11]
 8002740:	2a0c      	cmp	r2, #12
 8002742:	f103 0401 	add.w	r4, r3, #1
 8002746:	f840 4e00 	strt	r4, [r0]
 800274a:	f803 1e00 	strbt	r1, [r3]
 800274e:	d028      	beq.n	80027a2 <output+0x22a>
 8002750:	6803      	ldr	r3, [r0, #0]
 8002752:	f898 100c 	ldrb.w	r1, [r8, #12]
 8002756:	2a0d      	cmp	r2, #13
 8002758:	f103 0401 	add.w	r4, r3, #1
 800275c:	f840 4e00 	strt	r4, [r0]
 8002760:	f803 1e00 	strbt	r1, [r3]
 8002764:	d01d      	beq.n	80027a2 <output+0x22a>
 8002766:	6803      	ldr	r3, [r0, #0]
 8002768:	f898 100d 	ldrb.w	r1, [r8, #13]
 800276c:	2a0e      	cmp	r2, #14
 800276e:	f103 0401 	add.w	r4, r3, #1
 8002772:	f840 4e00 	strt	r4, [r0]
 8002776:	f803 1e00 	strbt	r1, [r3]
 800277a:	d012      	beq.n	80027a2 <output+0x22a>
 800277c:	6803      	ldr	r3, [r0, #0]
 800277e:	f898 100e 	ldrb.w	r1, [r8, #14]
 8002782:	2a0f      	cmp	r2, #15
 8002784:	f103 0401 	add.w	r4, r3, #1
 8002788:	f840 4e00 	strt	r4, [r0]
 800278c:	f803 1e00 	strbt	r1, [r3]
 8002790:	d007      	beq.n	80027a2 <output+0x22a>
 8002792:	6802      	ldr	r2, [r0, #0]
 8002794:	f898 100f 	ldrb.w	r1, [r8, #15]
 8002798:	1c53      	adds	r3, r2, #1
 800279a:	f840 3e00 	strt	r3, [r0]
 800279e:	f802 1e00 	strbt	r1, [r2]
 80027a2:	2400      	movs	r4, #0
 80027a4:	f84e 4e00 	strt	r4, [lr]
 80027a8:	f241 595c 	movw	r9, #5468	; 0x155c
 80027ac:	f640 2514 	movw	r5, #2580	; 0xa14
 80027b0:	f640 2220 	movw	r2, #2592	; 0xa20
 80027b4:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80027b8:	f2c2 0900 	movt	r9, #8192	; 0x2000
 80027bc:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80027c0:	f8d9 3000 	ldr.w	r3, [r9]
 80027c4:	682d      	ldr	r5, [r5, #0]
 80027c6:	6811      	ldr	r1, [r2, #0]
 80027c8:	429d      	cmp	r5, r3
 80027ca:	bfd8      	it	le
 80027cc:	2901      	cmple	r1, #1
 80027ce:	db5e      	blt.n	800288e <output+0x316>
 80027d0:	2c01      	cmp	r4, #1
 80027d2:	db21      	blt.n	8002818 <output+0x2a0>
 80027d4:	f8dc 4000 	ldr.w	r4, [ip]
 80027d8:	2c01      	cmp	r4, #1
 80027da:	db15      	blt.n	8002808 <output+0x290>
 80027dc:	f241 15b8 	movw	r5, #4536	; 0x11b8
 80027e0:	2100      	movs	r1, #0
 80027e2:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80027e6:	682e      	ldr	r6, [r5, #0]
 80027e8:	f818 3001 	ldrb.w	r3, [r8, r1]
 80027ec:	3101      	adds	r1, #1
 80027ee:	42a1      	cmp	r1, r4
 80027f0:	f106 0001 	add.w	r0, r6, #1
 80027f4:	f845 0e00 	strt	r0, [r5]
 80027f8:	f806 3e00 	strbt	r3, [r6]
 80027fc:	bfb8      	it	lt
 80027fe:	2910      	cmplt	r1, #16
 8002800:	dbf1      	blt.n	80027e6 <output+0x26e>
 8002802:	6811      	ldr	r1, [r2, #0]
 8002804:	f8dc 4000 	ldr.w	r4, [ip]
 8002808:	f241 2020 	movw	r0, #4640	; 0x1220
 800280c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002810:	6803      	ldr	r3, [r0, #0]
 8002812:	4423      	add	r3, r4
 8002814:	f840 3e00 	strt	r3, [r0]
 8002818:	2300      	movs	r3, #0
 800281a:	2900      	cmp	r1, #0
 800281c:	f84e 3e00 	strt	r3, [lr]
 8002820:	d038      	beq.n	8002894 <output+0x31c>
 8002822:	2009      	movs	r0, #9
 8002824:	f842 3e00 	strt	r3, [r2]
 8002828:	f84c 0e00 	strt	r0, [ip]
 800282c:	f240 10ff 	movw	r0, #511	; 0x1ff
 8002830:	f849 0e00 	strt	r0, [r9]
 8002834:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002838:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800283a:	1dc8      	adds	r0, r1, #7
 800283c:	2901      	cmp	r1, #1
 800283e:	ea4f 72e0 	mov.w	r2, r0, asr #31
 8002842:	eb00 7052 	add.w	r0, r0, r2, lsr #29
 8002846:	ea4f 00e0 	mov.w	r0, r0, asr #3
 800284a:	db15      	blt.n	8002878 <output+0x300>
 800284c:	f241 524c 	movw	r2, #5452	; 0x154c
 8002850:	f241 13b8 	movw	r3, #4536	; 0x11b8
 8002854:	2100      	movs	r1, #0
 8002856:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800285a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800285e:	681d      	ldr	r5, [r3, #0]
 8002860:	5c56      	ldrb	r6, [r2, r1]
 8002862:	3101      	adds	r1, #1
 8002864:	4281      	cmp	r1, r0
 8002866:	f105 0401 	add.w	r4, r5, #1
 800286a:	f843 4e00 	strt	r4, [r3]
 800286e:	f805 6e00 	strbt	r6, [r5]
 8002872:	bfb8      	it	lt
 8002874:	2910      	cmplt	r1, #16
 8002876:	dbf2      	blt.n	800285e <output+0x2e6>
 8002878:	f241 2120 	movw	r1, #4640	; 0x1220
 800287c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002880:	680a      	ldr	r2, [r1, #0]
 8002882:	4410      	add	r0, r2
 8002884:	f841 0e00 	strt	r0, [r1]
 8002888:	2000      	movs	r0, #0
 800288a:	f84e 0e00 	strt	r0, [lr]
 800288e:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002892:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002894:	f240 0214 	movw	r2, #20
 8002898:	f8dc 0000 	ldr.w	r0, [ip]
 800289c:	f240 0318 	movw	r3, #24
 80028a0:	2101      	movs	r1, #1
 80028a2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80028a6:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80028aa:	6812      	ldr	r2, [r2, #0]
 80028ac:	681b      	ldr	r3, [r3, #0]
 80028ae:	3001      	adds	r0, #1
 80028b0:	4081      	lsls	r1, r0
 80028b2:	f84c 0e00 	strt	r0, [ip]
 80028b6:	4290      	cmp	r0, r2
 80028b8:	bf18      	it	ne
 80028ba:	1e4b      	subne	r3, r1, #1
 80028bc:	f849 3e00 	strt	r3, [r9]
 80028c0:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 80028c4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080028c6 <__io_putchar>:
 80028c6:	b082      	sub	sp, #8
 80028c8:	f84d 7e00 	strt	r7, [sp]
 80028cc:	f84d ee04 	strt	lr, [sp, #4]
 80028d0:	466f      	mov	r7, sp
 80028d2:	b082      	sub	sp, #8
 80028d4:	f84d 0e04 	strt	r0, [sp, #4]
 80028d8:	f640 2034 	movw	r0, #2612	; 0xa34
 80028dc:	a901      	add	r1, sp, #4
 80028de:	2201      	movs	r2, #1
 80028e0:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80028e4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80028e8:	f7ff facd 	bl	8001e86 <HAL_UART_Transmit>
 80028ec:	9801      	ldr	r0, [sp, #4]
 80028ee:	b002      	add	sp, #8
 80028f0:	bd80      	pop	{r7, pc}

080028f2 <main>:
 80028f2:	b084      	sub	sp, #16
 80028f4:	f84d 4e00 	strt	r4, [sp]
 80028f8:	f84d 5e04 	strt	r5, [sp, #4]
 80028fc:	f84d 7e08 	strt	r7, [sp, #8]
 8002900:	f84d ee0c 	strt	lr, [sp, #12]
 8002904:	af02      	add	r7, sp, #8
 8002906:	f640 2134 	movw	r1, #2612	; 0xa34
 800290a:	f643 0000 	movw	r0, #14336	; 0x3800
 800290e:	220c      	movs	r2, #12
 8002910:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002914:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002918:	f841 0e00 	strt	r0, [r1]
 800291c:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002920:	f841 0e04 	strt	r0, [r1, #4]
 8002924:	2000      	movs	r0, #0
 8002926:	f841 0e08 	strt	r0, [r1, #8]
 800292a:	f841 0e0c 	strt	r0, [r1, #12]
 800292e:	f841 0e10 	strt	r0, [r1, #16]
 8002932:	f841 0e24 	strt	r0, [r1, #36]
 8002936:	f841 0e1c 	strt	r0, [r1, #28]
 800293a:	f841 0e20 	strt	r0, [r1, #32]
 800293e:	f841 2e14 	strt	r2, [r1, #20]
 8002942:	f841 0e18 	strt	r0, [r1, #24]
 8002946:	2000      	movs	r0, #0
 8002948:	f7ff fb50 	bl	8001fec <BSP_COM_Init>
 800294c:	f7ff fbc5 	bl	80020da <initialise_benchmark>
 8002950:	f647 1084 	movw	r0, #31108	; 0x7984
 8002954:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002958:	f000 f96c 	bl	8002c34 <printf>
 800295c:	f647 202f 	movw	r0, #31279	; 0x7a2f
 8002960:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002964:	f000 f9c8 	bl	8002cf8 <puts>
 8002968:	f7fe fc1e 	bl	80011a8 <HAL_Init>
 800296c:	f7fe fc35 	bl	80011da <HAL_GetTick>
 8002970:	4604      	mov	r4, r0
 8002972:	f7ff fbb3 	bl	80020dc <benchmark>
 8002976:	4605      	mov	r5, r0
 8002978:	f7fe fc2f 	bl	80011da <HAL_GetTick>
 800297c:	1b04      	subs	r4, r0, r4
 800297e:	4628      	mov	r0, r5
 8002980:	f7ff fba8 	bl	80020d4 <verify_benchmark>
 8002984:	1c41      	adds	r1, r0, #1
 8002986:	d006      	beq.n	8002996 <main+0xa4>
 8002988:	2801      	cmp	r0, #1
 800298a:	d109      	bne.n	80029a0 <main+0xae>
 800298c:	f647 109b 	movw	r0, #31131	; 0x799b
 8002990:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002994:	e008      	b.n	80029a8 <main+0xb6>
 8002996:	f647 10bf 	movw	r0, #31167	; 0x79bf
 800299a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800299e:	e003      	b.n	80029a8 <main+0xb6>
 80029a0:	f647 10f4 	movw	r0, #31220	; 0x79f4
 80029a4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80029a8:	4621      	mov	r1, r4
 80029aa:	f000 f943 	bl	8002c34 <printf>
 80029ae:	2000      	movs	r0, #0
 80029b0:	bdb0      	pop	{r4, r5, r7, pc}

080029b2 <SysTick_Handler>:
 80029b2:	b082      	sub	sp, #8
 80029b4:	f84d 7e00 	strt	r7, [sp]
 80029b8:	f84d ee04 	strt	lr, [sp, #4]
 80029bc:	466f      	mov	r7, sp
 80029be:	f7fe fc03 	bl	80011c8 <HAL_IncTick>
 80029c2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80029c6:	f7fe bc5e 	b.w	8001286 <HAL_SYSTICK_IRQHandler>

080029ca <_read>:
 80029ca:	b085      	sub	sp, #20
 80029cc:	f84d 4e00 	strt	r4, [sp]
 80029d0:	f84d 5e04 	strt	r5, [sp, #4]
 80029d4:	f84d 6e08 	strt	r6, [sp, #8]
 80029d8:	f84d 7e0c 	strt	r7, [sp, #12]
 80029dc:	f84d ee10 	strt	lr, [sp, #16]
 80029e0:	af03      	add	r7, sp, #12
 80029e2:	b081      	sub	sp, #4
 80029e4:	f84d be00 	strt	fp, [sp]
 80029e8:	4614      	mov	r4, r2
 80029ea:	460d      	mov	r5, r1
 80029ec:	2c01      	cmp	r4, #1
 80029ee:	db08      	blt.n	8002a02 <_read+0x38>
 80029f0:	4626      	mov	r6, r4
 80029f2:	f3af 8000 	nop.w
 80029f6:	f805 0e00 	strbt	r0, [r5]
 80029fa:	bfe8      	it	al
 80029fc:	3501      	addal	r5, #1
 80029fe:	3e01      	subs	r6, #1
 8002a00:	d1f7      	bne.n	80029f2 <_read+0x28>
 8002a02:	4620      	mov	r0, r4
 8002a04:	f85d bb04 	ldr.w	fp, [sp], #4
 8002a08:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002a0a <_write>:
 8002a0a:	b085      	sub	sp, #20
 8002a0c:	f84d 4e00 	strt	r4, [sp]
 8002a10:	f84d 5e04 	strt	r5, [sp, #4]
 8002a14:	f84d 6e08 	strt	r6, [sp, #8]
 8002a18:	f84d 7e0c 	strt	r7, [sp, #12]
 8002a1c:	f84d ee10 	strt	lr, [sp, #16]
 8002a20:	af03      	add	r7, sp, #12
 8002a22:	b081      	sub	sp, #4
 8002a24:	f84d be00 	strt	fp, [sp]
 8002a28:	4614      	mov	r4, r2
 8002a2a:	460d      	mov	r5, r1
 8002a2c:	2c01      	cmp	r4, #1
 8002a2e:	db06      	blt.n	8002a3e <_write+0x34>
 8002a30:	4626      	mov	r6, r4
 8002a32:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002a36:	f7ff ff46 	bl	80028c6 <__io_putchar>
 8002a3a:	3e01      	subs	r6, #1
 8002a3c:	d1f9      	bne.n	8002a32 <_write+0x28>
 8002a3e:	4620      	mov	r0, r4
 8002a40:	f85d bb04 	ldr.w	fp, [sp], #4
 8002a44:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002a46 <_sbrk>:
 8002a46:	f640 22b8 	movw	r2, #2744	; 0xab8
 8002a4a:	4601      	mov	r1, r0
 8002a4c:	466b      	mov	r3, sp
 8002a4e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a52:	6810      	ldr	r0, [r2, #0]
 8002a54:	2800      	cmp	r0, #0
 8002a56:	bf02      	ittt	eq
 8002a58:	f241 5090 	movweq	r0, #5520	; 0x1590
 8002a5c:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002a60:	f842 0e00 	strteq	r0, [r2]
 8002a64:	4401      	add	r1, r0
 8002a66:	4299      	cmp	r1, r3
 8002a68:	bf9c      	itt	ls
 8002a6a:	f842 1e00 	strtls	r1, [r2]
 8002a6e:	4770      	bxls	lr
 8002a70:	b082      	sub	sp, #8
 8002a72:	f84d 7e00 	strt	r7, [sp]
 8002a76:	f84d ee04 	strt	lr, [sp, #4]
 8002a7a:	466f      	mov	r7, sp
 8002a7c:	f000 f866 	bl	8002b4c <__errno>
 8002a80:	210c      	movs	r1, #12
 8002a82:	f840 1e00 	strt	r1, [r0]
 8002a86:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002a8a:	bd80      	pop	{r7, pc}

08002a8c <_close>:
 8002a8c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002a90:	4770      	bx	lr

08002a92 <_fstat>:
 8002a92:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002a96:	f841 0e04 	strt	r0, [r1, #4]
 8002a9a:	2000      	movs	r0, #0
 8002a9c:	4770      	bx	lr

08002a9e <_isatty>:
 8002a9e:	2001      	movs	r0, #1
 8002aa0:	4770      	bx	lr

08002aa2 <_lseek>:
 8002aa2:	2000      	movs	r0, #0
 8002aa4:	4770      	bx	lr

08002aa6 <SystemInit>:
 8002aa6:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002aaa:	f04f 0c00 	mov.w	ip, #0
 8002aae:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002ab2:	6801      	ldr	r1, [r0, #0]
 8002ab4:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002ab8:	6001      	str	r1, [r0, #0]
 8002aba:	f241 0100 	movw	r1, #4096	; 0x1000
 8002abe:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002ac2:	680a      	ldr	r2, [r1, #0]
 8002ac4:	f042 0201 	orr.w	r2, r2, #1
 8002ac8:	600a      	str	r2, [r1, #0]
 8002aca:	f8c1 c008 	str.w	ip, [r1, #8]
 8002ace:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002ad2:	680b      	ldr	r3, [r1, #0]
 8002ad4:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002ad8:	401a      	ands	r2, r3
 8002ada:	600a      	str	r2, [r1, #0]
 8002adc:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002ae0:	60ca      	str	r2, [r1, #12]
 8002ae2:	680a      	ldr	r2, [r1, #0]
 8002ae4:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002ae8:	600a      	str	r2, [r1, #0]
 8002aea:	f8c1 c018 	str.w	ip, [r1, #24]
 8002aee:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002af2:	f840 1c80 	str.w	r1, [r0, #-128]
 8002af6:	4770      	bx	lr

08002af8 <Reset_Handler>:
 8002af8:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002b30 <LoopForever+0x2>
 8002afc:	2100      	movs	r1, #0
 8002afe:	e003      	b.n	8002b08 <LoopCopyDataInit>

08002b00 <CopyDataInit>:
 8002b00:	4b0c      	ldr	r3, [pc, #48]	; (8002b34 <LoopForever+0x6>)
 8002b02:	585b      	ldr	r3, [r3, r1]
 8002b04:	5043      	str	r3, [r0, r1]
 8002b06:	3104      	adds	r1, #4

08002b08 <LoopCopyDataInit>:
 8002b08:	480b      	ldr	r0, [pc, #44]	; (8002b38 <LoopForever+0xa>)
 8002b0a:	4b0c      	ldr	r3, [pc, #48]	; (8002b3c <LoopForever+0xe>)
 8002b0c:	1842      	adds	r2, r0, r1
 8002b0e:	429a      	cmp	r2, r3
 8002b10:	d3f6      	bcc.n	8002b00 <CopyDataInit>
 8002b12:	4a0b      	ldr	r2, [pc, #44]	; (8002b40 <LoopForever+0x12>)
 8002b14:	e002      	b.n	8002b1c <LoopFillZerobss>

08002b16 <FillZerobss>:
 8002b16:	2300      	movs	r3, #0
 8002b18:	f842 3b04 	str.w	r3, [r2], #4

08002b1c <LoopFillZerobss>:
 8002b1c:	4b09      	ldr	r3, [pc, #36]	; (8002b44 <LoopForever+0x16>)
 8002b1e:	429a      	cmp	r2, r3
 8002b20:	d3f9      	bcc.n	8002b16 <FillZerobss>
 8002b22:	f7ff ffc0 	bl	8002aa6 <SystemInit>
 8002b26:	f000 f817 	bl	8002b58 <__libc_init_array>
 8002b2a:	f7ff fee2 	bl	80028f2 <main>

08002b2e <LoopForever>:
 8002b2e:	e7fe      	b.n	8002b2e <LoopForever>
 8002b30:	20018000 	.word	0x20018000
 8002b34:	08007cd8 	.word	0x08007cd8
 8002b38:	20000000 	.word	0x20000000
 8002b3c:	200009f8 	.word	0x200009f8
 8002b40:	200009f8 	.word	0x200009f8
 8002b44:	2000158c 	.word	0x2000158c

08002b48 <ADC1_2_IRQHandler>:
 8002b48:	e7fe      	b.n	8002b48 <ADC1_2_IRQHandler>
	...

08002b4c <__errno>:
 8002b4c:	4b01      	ldr	r3, [pc, #4]	; (8002b54 <__errno+0x8>)
 8002b4e:	6818      	ldr	r0, [r3, #0]
 8002b50:	4770      	bx	lr
 8002b52:	bf00      	nop
 8002b54:	2000004c 	.word	0x2000004c

08002b58 <__libc_init_array>:
 8002b58:	b570      	push	{r4, r5, r6, lr}
 8002b5a:	4e0d      	ldr	r6, [pc, #52]	; (8002b90 <__libc_init_array+0x38>)
 8002b5c:	4d0d      	ldr	r5, [pc, #52]	; (8002b94 <__libc_init_array+0x3c>)
 8002b5e:	1b76      	subs	r6, r6, r5
 8002b60:	10b6      	asrs	r6, r6, #2
 8002b62:	d006      	beq.n	8002b72 <__libc_init_array+0x1a>
 8002b64:	2400      	movs	r4, #0
 8002b66:	3401      	adds	r4, #1
 8002b68:	f855 3b04 	ldr.w	r3, [r5], #4
 8002b6c:	4798      	blx	r3
 8002b6e:	42a6      	cmp	r6, r4
 8002b70:	d1f9      	bne.n	8002b66 <__libc_init_array+0xe>
 8002b72:	4e09      	ldr	r6, [pc, #36]	; (8002b98 <__libc_init_array+0x40>)
 8002b74:	4d09      	ldr	r5, [pc, #36]	; (8002b9c <__libc_init_array+0x44>)
 8002b76:	1b76      	subs	r6, r6, r5
 8002b78:	f004 fea8 	bl	80078cc <_init>
 8002b7c:	10b6      	asrs	r6, r6, #2
 8002b7e:	d006      	beq.n	8002b8e <__libc_init_array+0x36>
 8002b80:	2400      	movs	r4, #0
 8002b82:	3401      	adds	r4, #1
 8002b84:	f855 3b04 	ldr.w	r3, [r5], #4
 8002b88:	4798      	blx	r3
 8002b8a:	42a6      	cmp	r6, r4
 8002b8c:	d1f9      	bne.n	8002b82 <__libc_init_array+0x2a>
 8002b8e:	bd70      	pop	{r4, r5, r6, pc}
 8002b90:	08007cc8 	.word	0x08007cc8
 8002b94:	08007cc8 	.word	0x08007cc8
 8002b98:	08007cd0 	.word	0x08007cd0
 8002b9c:	08007cc8 	.word	0x08007cc8

08002ba0 <memset>:
 8002ba0:	b4f0      	push	{r4, r5, r6, r7}
 8002ba2:	0786      	lsls	r6, r0, #30
 8002ba4:	d043      	beq.n	8002c2e <memset+0x8e>
 8002ba6:	1e54      	subs	r4, r2, #1
 8002ba8:	2a00      	cmp	r2, #0
 8002baa:	d03e      	beq.n	8002c2a <memset+0x8a>
 8002bac:	b2ca      	uxtb	r2, r1
 8002bae:	4603      	mov	r3, r0
 8002bb0:	e002      	b.n	8002bb8 <memset+0x18>
 8002bb2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002bb6:	d338      	bcc.n	8002c2a <memset+0x8a>
 8002bb8:	f803 2b01 	strb.w	r2, [r3], #1
 8002bbc:	079d      	lsls	r5, r3, #30
 8002bbe:	d1f8      	bne.n	8002bb2 <memset+0x12>
 8002bc0:	2c03      	cmp	r4, #3
 8002bc2:	d92b      	bls.n	8002c1c <memset+0x7c>
 8002bc4:	b2cd      	uxtb	r5, r1
 8002bc6:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002bca:	2c0f      	cmp	r4, #15
 8002bcc:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002bd0:	d916      	bls.n	8002c00 <memset+0x60>
 8002bd2:	f1a4 0710 	sub.w	r7, r4, #16
 8002bd6:	093f      	lsrs	r7, r7, #4
 8002bd8:	f103 0620 	add.w	r6, r3, #32
 8002bdc:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002be0:	f103 0210 	add.w	r2, r3, #16
 8002be4:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002be8:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002bec:	3210      	adds	r2, #16
 8002bee:	42b2      	cmp	r2, r6
 8002bf0:	d1f8      	bne.n	8002be4 <memset+0x44>
 8002bf2:	f004 040f 	and.w	r4, r4, #15
 8002bf6:	3701      	adds	r7, #1
 8002bf8:	2c03      	cmp	r4, #3
 8002bfa:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002bfe:	d90d      	bls.n	8002c1c <memset+0x7c>
 8002c00:	461e      	mov	r6, r3
 8002c02:	4622      	mov	r2, r4
 8002c04:	3a04      	subs	r2, #4
 8002c06:	2a03      	cmp	r2, #3
 8002c08:	f846 5b04 	str.w	r5, [r6], #4
 8002c0c:	d8fa      	bhi.n	8002c04 <memset+0x64>
 8002c0e:	1f22      	subs	r2, r4, #4
 8002c10:	f022 0203 	bic.w	r2, r2, #3
 8002c14:	3204      	adds	r2, #4
 8002c16:	4413      	add	r3, r2
 8002c18:	f004 0403 	and.w	r4, r4, #3
 8002c1c:	b12c      	cbz	r4, 8002c2a <memset+0x8a>
 8002c1e:	b2c9      	uxtb	r1, r1
 8002c20:	441c      	add	r4, r3
 8002c22:	f803 1b01 	strb.w	r1, [r3], #1
 8002c26:	429c      	cmp	r4, r3
 8002c28:	d1fb      	bne.n	8002c22 <memset+0x82>
 8002c2a:	bcf0      	pop	{r4, r5, r6, r7}
 8002c2c:	4770      	bx	lr
 8002c2e:	4614      	mov	r4, r2
 8002c30:	4603      	mov	r3, r0
 8002c32:	e7c5      	b.n	8002bc0 <memset+0x20>

08002c34 <printf>:
 8002c34:	b40f      	push	{r0, r1, r2, r3}
 8002c36:	b500      	push	{lr}
 8002c38:	4907      	ldr	r1, [pc, #28]	; (8002c58 <printf+0x24>)
 8002c3a:	b083      	sub	sp, #12
 8002c3c:	ab04      	add	r3, sp, #16
 8002c3e:	6808      	ldr	r0, [r1, #0]
 8002c40:	f853 2b04 	ldr.w	r2, [r3], #4
 8002c44:	6881      	ldr	r1, [r0, #8]
 8002c46:	9301      	str	r3, [sp, #4]
 8002c48:	f000 f85e 	bl	8002d08 <_vfprintf_r>
 8002c4c:	b003      	add	sp, #12
 8002c4e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002c52:	b004      	add	sp, #16
 8002c54:	4770      	bx	lr
 8002c56:	bf00      	nop
 8002c58:	2000004c 	.word	0x2000004c

08002c5c <_puts_r>:
 8002c5c:	b570      	push	{r4, r5, r6, lr}
 8002c5e:	4605      	mov	r5, r0
 8002c60:	b088      	sub	sp, #32
 8002c62:	4608      	mov	r0, r1
 8002c64:	460c      	mov	r4, r1
 8002c66:	f7fd fd4b 	bl	8000700 <strlen>
 8002c6a:	4a22      	ldr	r2, [pc, #136]	; (8002cf4 <_puts_r+0x98>)
 8002c6c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002c6e:	9404      	str	r4, [sp, #16]
 8002c70:	2601      	movs	r6, #1
 8002c72:	1c44      	adds	r4, r0, #1
 8002c74:	a904      	add	r1, sp, #16
 8002c76:	9206      	str	r2, [sp, #24]
 8002c78:	2202      	movs	r2, #2
 8002c7a:	9403      	str	r4, [sp, #12]
 8002c7c:	9005      	str	r0, [sp, #20]
 8002c7e:	68ac      	ldr	r4, [r5, #8]
 8002c80:	9607      	str	r6, [sp, #28]
 8002c82:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002c86:	b31b      	cbz	r3, 8002cd0 <_puts_r+0x74>
 8002c88:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002c8a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002c8e:	07ce      	lsls	r6, r1, #31
 8002c90:	b29a      	uxth	r2, r3
 8002c92:	d401      	bmi.n	8002c98 <_puts_r+0x3c>
 8002c94:	0590      	lsls	r0, r2, #22
 8002c96:	d525      	bpl.n	8002ce4 <_puts_r+0x88>
 8002c98:	0491      	lsls	r1, r2, #18
 8002c9a:	d406      	bmi.n	8002caa <_puts_r+0x4e>
 8002c9c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002c9e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002ca2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002ca6:	81a3      	strh	r3, [r4, #12]
 8002ca8:	6662      	str	r2, [r4, #100]	; 0x64
 8002caa:	4628      	mov	r0, r5
 8002cac:	aa01      	add	r2, sp, #4
 8002cae:	4621      	mov	r1, r4
 8002cb0:	f003 f85e 	bl	8005d70 <__sfvwrite_r>
 8002cb4:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002cb6:	2800      	cmp	r0, #0
 8002cb8:	bf0c      	ite	eq
 8002cba:	250a      	moveq	r5, #10
 8002cbc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002cc0:	07da      	lsls	r2, r3, #31
 8002cc2:	d402      	bmi.n	8002cca <_puts_r+0x6e>
 8002cc4:	89a3      	ldrh	r3, [r4, #12]
 8002cc6:	059b      	lsls	r3, r3, #22
 8002cc8:	d506      	bpl.n	8002cd8 <_puts_r+0x7c>
 8002cca:	4628      	mov	r0, r5
 8002ccc:	b008      	add	sp, #32
 8002cce:	bd70      	pop	{r4, r5, r6, pc}
 8002cd0:	4628      	mov	r0, r5
 8002cd2:	f002 feb7 	bl	8005a44 <__sinit>
 8002cd6:	e7d7      	b.n	8002c88 <_puts_r+0x2c>
 8002cd8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002cda:	f003 fa05 	bl	80060e8 <__retarget_lock_release_recursive>
 8002cde:	4628      	mov	r0, r5
 8002ce0:	b008      	add	sp, #32
 8002ce2:	bd70      	pop	{r4, r5, r6, pc}
 8002ce4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002ce6:	f003 f9fd 	bl	80060e4 <__retarget_lock_acquire_recursive>
 8002cea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002cee:	b29a      	uxth	r2, r3
 8002cf0:	e7d2      	b.n	8002c98 <_puts_r+0x3c>
 8002cf2:	bf00      	nop
 8002cf4:	08007a38 	.word	0x08007a38

08002cf8 <puts>:
 8002cf8:	4b02      	ldr	r3, [pc, #8]	; (8002d04 <puts+0xc>)
 8002cfa:	4601      	mov	r1, r0
 8002cfc:	6818      	ldr	r0, [r3, #0]
 8002cfe:	f7ff bfad 	b.w	8002c5c <_puts_r>
 8002d02:	bf00      	nop
 8002d04:	2000004c 	.word	0x2000004c

08002d08 <_vfprintf_r>:
 8002d08:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002d0c:	b0d7      	sub	sp, #348	; 0x15c
 8002d0e:	461c      	mov	r4, r3
 8002d10:	4689      	mov	r9, r1
 8002d12:	4617      	mov	r7, r2
 8002d14:	4605      	mov	r5, r0
 8002d16:	9003      	str	r0, [sp, #12]
 8002d18:	f003 f9d2 	bl	80060c0 <_localeconv_r>
 8002d1c:	6803      	ldr	r3, [r0, #0]
 8002d1e:	9316      	str	r3, [sp, #88]	; 0x58
 8002d20:	4618      	mov	r0, r3
 8002d22:	f7fd fced 	bl	8000700 <strlen>
 8002d26:	9408      	str	r4, [sp, #32]
 8002d28:	9015      	str	r0, [sp, #84]	; 0x54
 8002d2a:	b11d      	cbz	r5, 8002d34 <_vfprintf_r+0x2c>
 8002d2c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002d2e:	2b00      	cmp	r3, #0
 8002d30:	f000 8107 	beq.w	8002f42 <_vfprintf_r+0x23a>
 8002d34:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002d38:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002d3c:	07c8      	lsls	r0, r1, #31
 8002d3e:	b293      	uxth	r3, r2
 8002d40:	d402      	bmi.n	8002d48 <_vfprintf_r+0x40>
 8002d42:	0599      	lsls	r1, r3, #22
 8002d44:	f140 811f 	bpl.w	8002f86 <_vfprintf_r+0x27e>
 8002d48:	049e      	lsls	r6, r3, #18
 8002d4a:	d40a      	bmi.n	8002d62 <_vfprintf_r+0x5a>
 8002d4c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002d50:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002d54:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002d58:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002d5c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002d60:	b29b      	uxth	r3, r3
 8002d62:	071d      	lsls	r5, r3, #28
 8002d64:	f140 80b2 	bpl.w	8002ecc <_vfprintf_r+0x1c4>
 8002d68:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002d6c:	2a00      	cmp	r2, #0
 8002d6e:	f000 80ad 	beq.w	8002ecc <_vfprintf_r+0x1c4>
 8002d72:	f003 021a 	and.w	r2, r3, #26
 8002d76:	2a0a      	cmp	r2, #10
 8002d78:	f000 80c9 	beq.w	8002f0e <_vfprintf_r+0x206>
 8002d7c:	2300      	movs	r3, #0
 8002d7e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002f98 <_vfprintf_r+0x290>
 8002d82:	9310      	str	r3, [sp, #64]	; 0x40
 8002d84:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002d88:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d8a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002d8e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002d90:	9318      	str	r3, [sp, #96]	; 0x60
 8002d92:	9305      	str	r3, [sp, #20]
 8002d94:	ab2d      	add	r3, sp, #180	; 0xb4
 8002d96:	932a      	str	r3, [sp, #168]	; 0xa8
 8002d98:	469b      	mov	fp, r3
 8002d9a:	783b      	ldrb	r3, [r7, #0]
 8002d9c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002da0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002da4:	2b00      	cmp	r3, #0
 8002da6:	f000 8259 	beq.w	800325c <_vfprintf_r+0x554>
 8002daa:	2b25      	cmp	r3, #37	; 0x25
 8002dac:	463c      	mov	r4, r7
 8002dae:	d102      	bne.n	8002db6 <_vfprintf_r+0xae>
 8002db0:	e01d      	b.n	8002dee <_vfprintf_r+0xe6>
 8002db2:	2b25      	cmp	r3, #37	; 0x25
 8002db4:	d003      	beq.n	8002dbe <_vfprintf_r+0xb6>
 8002db6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002dba:	2b00      	cmp	r3, #0
 8002dbc:	d1f9      	bne.n	8002db2 <_vfprintf_r+0xaa>
 8002dbe:	1be5      	subs	r5, r4, r7
 8002dc0:	b18d      	cbz	r5, 8002de6 <_vfprintf_r+0xde>
 8002dc2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002dc6:	3301      	adds	r3, #1
 8002dc8:	442a      	add	r2, r5
 8002dca:	2b07      	cmp	r3, #7
 8002dcc:	f8cb 7000 	str.w	r7, [fp]
 8002dd0:	f8cb 5004 	str.w	r5, [fp, #4]
 8002dd4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002dd8:	f300 80ca 	bgt.w	8002f70 <_vfprintf_r+0x268>
 8002ddc:	f10b 0b08 	add.w	fp, fp, #8
 8002de0:	9b05      	ldr	r3, [sp, #20]
 8002de2:	442b      	add	r3, r5
 8002de4:	9305      	str	r3, [sp, #20]
 8002de6:	7823      	ldrb	r3, [r4, #0]
 8002de8:	2b00      	cmp	r3, #0
 8002dea:	f000 8237 	beq.w	800325c <_vfprintf_r+0x554>
 8002dee:	2300      	movs	r3, #0
 8002df0:	7866      	ldrb	r6, [r4, #1]
 8002df2:	9306      	str	r3, [sp, #24]
 8002df4:	4698      	mov	r8, r3
 8002df6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002dfa:	f104 0a01 	add.w	sl, r4, #1
 8002dfe:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002e02:	252b      	movs	r5, #43	; 0x2b
 8002e04:	f10a 0a01 	add.w	sl, sl, #1
 8002e08:	f1a6 0320 	sub.w	r3, r6, #32
 8002e0c:	2b5a      	cmp	r3, #90	; 0x5a
 8002e0e:	f200 842a 	bhi.w	8003666 <_vfprintf_r+0x95e>
 8002e12:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002e16:	03aa      	.short	0x03aa
 8002e18:	04280428 	.word	0x04280428
 8002e1c:	0428029c 	.word	0x0428029c
 8002e20:	04280428 	.word	0x04280428
 8002e24:	042802a7 	.word	0x042802a7
 8002e28:	02c60428 	.word	0x02c60428
 8002e2c:	042802d2 	.word	0x042802d2
 8002e30:	02dc02d7 	.word	0x02dc02d7
 8002e34:	02f60428 	.word	0x02f60428
 8002e38:	026d026d 	.word	0x026d026d
 8002e3c:	026d026d 	.word	0x026d026d
 8002e40:	026d026d 	.word	0x026d026d
 8002e44:	026d026d 	.word	0x026d026d
 8002e48:	0428026d 	.word	0x0428026d
 8002e4c:	04280428 	.word	0x04280428
 8002e50:	04280428 	.word	0x04280428
 8002e54:	04280428 	.word	0x04280428
 8002e58:	042802fb 	.word	0x042802fb
 8002e5c:	03f3033c 	.word	0x03f3033c
 8002e60:	02fb02fb 	.word	0x02fb02fb
 8002e64:	042802fb 	.word	0x042802fb
 8002e68:	04280428 	.word	0x04280428
 8002e6c:	03ee0428 	.word	0x03ee0428
 8002e70:	04280428 	.word	0x04280428
 8002e74:	0428009a 	.word	0x0428009a
 8002e78:	04280428 	.word	0x04280428
 8002e7c:	04280350 	.word	0x04280350
 8002e80:	04280379 	.word	0x04280379
 8002e84:	03900428 	.word	0x03900428
 8002e88:	04280428 	.word	0x04280428
 8002e8c:	04280428 	.word	0x04280428
 8002e90:	04280428 	.word	0x04280428
 8002e94:	04280428 	.word	0x04280428
 8002e98:	042802fb 	.word	0x042802fb
 8002e9c:	00c5033c 	.word	0x00c5033c
 8002ea0:	02fb02fb 	.word	0x02fb02fb
 8002ea4:	03d102fb 	.word	0x03d102fb
 8002ea8:	007000c5 	.word	0x007000c5
 8002eac:	03b50428 	.word	0x03b50428
 8002eb0:	03c20428 	.word	0x03c20428
 8002eb4:	03de009c 	.word	0x03de009c
 8002eb8:	04280070 	.word	0x04280070
 8002ebc:	00720350 	.word	0x00720350
 8002ec0:	0428022c 	.word	0x0428022c
 8002ec4:	027c0428 	.word	0x027c0428
 8002ec8:	00720428 	.word	0x00720428
 8002ecc:	4649      	mov	r1, r9
 8002ece:	9803      	ldr	r0, [sp, #12]
 8002ed0:	f001 fc9a 	bl	8004808 <__swsetup_r>
 8002ed4:	b1a0      	cbz	r0, 8002f00 <_vfprintf_r+0x1f8>
 8002ed6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002eda:	07d8      	lsls	r0, r3, #31
 8002edc:	d404      	bmi.n	8002ee8 <_vfprintf_r+0x1e0>
 8002ede:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002ee2:	0599      	lsls	r1, r3, #22
 8002ee4:	f140 83b7 	bpl.w	8003656 <_vfprintf_r+0x94e>
 8002ee8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002eec:	9305      	str	r3, [sp, #20]
 8002eee:	9805      	ldr	r0, [sp, #20]
 8002ef0:	b057      	add	sp, #348	; 0x15c
 8002ef2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002ef6:	f048 0820 	orr.w	r8, r8, #32
 8002efa:	f89a 6000 	ldrb.w	r6, [sl]
 8002efe:	e781      	b.n	8002e04 <_vfprintf_r+0xfc>
 8002f00:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f04:	f003 021a 	and.w	r2, r3, #26
 8002f08:	2a0a      	cmp	r2, #10
 8002f0a:	f47f af37 	bne.w	8002d7c <_vfprintf_r+0x74>
 8002f0e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002f12:	2a00      	cmp	r2, #0
 8002f14:	f6ff af32 	blt.w	8002d7c <_vfprintf_r+0x74>
 8002f18:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002f1c:	07d2      	lsls	r2, r2, #31
 8002f1e:	d405      	bmi.n	8002f2c <_vfprintf_r+0x224>
 8002f20:	059b      	lsls	r3, r3, #22
 8002f22:	d403      	bmi.n	8002f2c <_vfprintf_r+0x224>
 8002f24:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002f28:	f003 f8de 	bl	80060e8 <__retarget_lock_release_recursive>
 8002f2c:	4623      	mov	r3, r4
 8002f2e:	463a      	mov	r2, r7
 8002f30:	4649      	mov	r1, r9
 8002f32:	9803      	ldr	r0, [sp, #12]
 8002f34:	f001 fc26 	bl	8004784 <__sbprintf>
 8002f38:	9005      	str	r0, [sp, #20]
 8002f3a:	9805      	ldr	r0, [sp, #20]
 8002f3c:	b057      	add	sp, #348	; 0x15c
 8002f3e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002f42:	9803      	ldr	r0, [sp, #12]
 8002f44:	f002 fd7e 	bl	8005a44 <__sinit>
 8002f48:	e6f4      	b.n	8002d34 <_vfprintf_r+0x2c>
 8002f4a:	f048 0810 	orr.w	r8, r8, #16
 8002f4e:	f018 0f20 	tst.w	r8, #32
 8002f52:	f000 836c 	beq.w	800362e <_vfprintf_r+0x926>
 8002f56:	9c08      	ldr	r4, [sp, #32]
 8002f58:	3407      	adds	r4, #7
 8002f5a:	f024 0307 	bic.w	r3, r4, #7
 8002f5e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002f62:	f103 0208 	add.w	r2, r3, #8
 8002f66:	9208      	str	r2, [sp, #32]
 8002f68:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002f6c:	2200      	movs	r2, #0
 8002f6e:	e18c      	b.n	800328a <_vfprintf_r+0x582>
 8002f70:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f72:	9907      	ldr	r1, [sp, #28]
 8002f74:	9803      	ldr	r0, [sp, #12]
 8002f76:	f004 f9f5 	bl	8007364 <__sprint_r>
 8002f7a:	2800      	cmp	r0, #0
 8002f7c:	f041 8376 	bne.w	800466c <_vfprintf_r+0x1964>
 8002f80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f84:	e72c      	b.n	8002de0 <_vfprintf_r+0xd8>
 8002f86:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002f8a:	f003 f8ab 	bl	80060e4 <__retarget_lock_acquire_recursive>
 8002f8e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002f92:	b293      	uxth	r3, r2
 8002f94:	e6d8      	b.n	8002d48 <_vfprintf_r+0x40>
 8002f96:	bf00      	nop
	...
 8002fa0:	4643      	mov	r3, r8
 8002fa2:	069f      	lsls	r7, r3, #26
 8002fa4:	f140 832f 	bpl.w	8003606 <_vfprintf_r+0x8fe>
 8002fa8:	9c08      	ldr	r4, [sp, #32]
 8002faa:	3407      	adds	r4, #7
 8002fac:	f024 0407 	bic.w	r4, r4, #7
 8002fb0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002fb4:	f104 0208 	add.w	r2, r4, #8
 8002fb8:	9208      	str	r2, [sp, #32]
 8002fba:	4604      	mov	r4, r0
 8002fbc:	460d      	mov	r5, r1
 8002fbe:	2800      	cmp	r0, #0
 8002fc0:	f171 0200 	sbcs.w	r2, r1, #0
 8002fc4:	da05      	bge.n	8002fd2 <_vfprintf_r+0x2ca>
 8002fc6:	222d      	movs	r2, #45	; 0x2d
 8002fc8:	4264      	negs	r4, r4
 8002fca:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002fce:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002fd2:	aa56      	add	r2, sp, #344	; 0x158
 8002fd4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002fd8:	9204      	str	r2, [sp, #16]
 8002fda:	f000 84b2 	beq.w	8003942 <_vfprintf_r+0xc3a>
 8002fde:	2201      	movs	r2, #1
 8002fe0:	ea54 0105 	orrs.w	r1, r4, r5
 8002fe4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002fe8:	f040 8159 	bne.w	800329e <_vfprintf_r+0x596>
 8002fec:	f1b9 0f00 	cmp.w	r9, #0
 8002ff0:	f040 8619 	bne.w	8003c26 <_vfprintf_r+0xf1e>
 8002ff4:	2a00      	cmp	r2, #0
 8002ff6:	f040 8508 	bne.w	8003a0a <_vfprintf_r+0xd02>
 8002ffa:	f013 0301 	ands.w	r3, r3, #1
 8002ffe:	af56      	add	r7, sp, #344	; 0x158
 8003000:	9309      	str	r3, [sp, #36]	; 0x24
 8003002:	d002      	beq.n	800300a <_vfprintf_r+0x302>
 8003004:	2330      	movs	r3, #48	; 0x30
 8003006:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800300a:	2300      	movs	r3, #0
 800300c:	930a      	str	r3, [sp, #40]	; 0x28
 800300e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003010:	9314      	str	r3, [sp, #80]	; 0x50
 8003012:	9311      	str	r3, [sp, #68]	; 0x44
 8003014:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003016:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800301a:	454b      	cmp	r3, r9
 800301c:	bfb8      	it	lt
 800301e:	464b      	movlt	r3, r9
 8003020:	9304      	str	r3, [sp, #16]
 8003022:	b112      	cbz	r2, 800302a <_vfprintf_r+0x322>
 8003024:	9b04      	ldr	r3, [sp, #16]
 8003026:	3301      	adds	r3, #1
 8003028:	9304      	str	r3, [sp, #16]
 800302a:	f018 0302 	ands.w	r3, r8, #2
 800302e:	930b      	str	r3, [sp, #44]	; 0x2c
 8003030:	d002      	beq.n	8003038 <_vfprintf_r+0x330>
 8003032:	9b04      	ldr	r3, [sp, #16]
 8003034:	3302      	adds	r3, #2
 8003036:	9304      	str	r3, [sp, #16]
 8003038:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800303c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800303e:	930e      	str	r3, [sp, #56]	; 0x38
 8003040:	d13f      	bne.n	80030c2 <_vfprintf_r+0x3ba>
 8003042:	9b06      	ldr	r3, [sp, #24]
 8003044:	9904      	ldr	r1, [sp, #16]
 8003046:	1a5d      	subs	r5, r3, r1
 8003048:	2d00      	cmp	r5, #0
 800304a:	dd3a      	ble.n	80030c2 <_vfprintf_r+0x3ba>
 800304c:	2d10      	cmp	r5, #16
 800304e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003050:	dd29      	ble.n	80030a6 <_vfprintf_r+0x39e>
 8003052:	4659      	mov	r1, fp
 8003054:	4620      	mov	r0, r4
 8003056:	9620      	str	r6, [sp, #128]	; 0x80
 8003058:	2310      	movs	r3, #16
 800305a:	9c03      	ldr	r4, [sp, #12]
 800305c:	9e07      	ldr	r6, [sp, #28]
 800305e:	46bb      	mov	fp, r7
 8003060:	e004      	b.n	800306c <_vfprintf_r+0x364>
 8003062:	3d10      	subs	r5, #16
 8003064:	2d10      	cmp	r5, #16
 8003066:	f101 0108 	add.w	r1, r1, #8
 800306a:	dd18      	ble.n	800309e <_vfprintf_r+0x396>
 800306c:	3201      	adds	r2, #1
 800306e:	4fba      	ldr	r7, [pc, #744]	; (8003358 <_vfprintf_r+0x650>)
 8003070:	3010      	adds	r0, #16
 8003072:	2a07      	cmp	r2, #7
 8003074:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003078:	e9c1 7300 	strd	r7, r3, [r1]
 800307c:	ddf1      	ble.n	8003062 <_vfprintf_r+0x35a>
 800307e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003080:	4631      	mov	r1, r6
 8003082:	4620      	mov	r0, r4
 8003084:	930c      	str	r3, [sp, #48]	; 0x30
 8003086:	f004 f96d 	bl	8007364 <__sprint_r>
 800308a:	2800      	cmp	r0, #0
 800308c:	f040 843d 	bne.w	800390a <_vfprintf_r+0xc02>
 8003090:	3d10      	subs	r5, #16
 8003092:	2d10      	cmp	r5, #16
 8003094:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003098:	a92d      	add	r1, sp, #180	; 0xb4
 800309a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800309c:	dce6      	bgt.n	800306c <_vfprintf_r+0x364>
 800309e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80030a0:	465f      	mov	r7, fp
 80030a2:	4604      	mov	r4, r0
 80030a4:	468b      	mov	fp, r1
 80030a6:	3201      	adds	r2, #1
 80030a8:	4bab      	ldr	r3, [pc, #684]	; (8003358 <_vfprintf_r+0x650>)
 80030aa:	442c      	add	r4, r5
 80030ac:	2a07      	cmp	r2, #7
 80030ae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80030b2:	e9cb 3500 	strd	r3, r5, [fp]
 80030b6:	f300 84ff 	bgt.w	8003ab8 <_vfprintf_r+0xdb0>
 80030ba:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80030be:	f10b 0b08 	add.w	fp, fp, #8
 80030c2:	b172      	cbz	r2, 80030e2 <_vfprintf_r+0x3da>
 80030c4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030c6:	3201      	adds	r2, #1
 80030c8:	3401      	adds	r4, #1
 80030ca:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80030ce:	2101      	movs	r1, #1
 80030d0:	2a07      	cmp	r2, #7
 80030d2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80030d6:	e9cb 0100 	strd	r0, r1, [fp]
 80030da:	f300 8418 	bgt.w	800390e <_vfprintf_r+0xc06>
 80030de:	f10b 0b08 	add.w	fp, fp, #8
 80030e2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80030e4:	b16b      	cbz	r3, 8003102 <_vfprintf_r+0x3fa>
 80030e6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030e8:	3301      	adds	r3, #1
 80030ea:	3402      	adds	r4, #2
 80030ec:	a923      	add	r1, sp, #140	; 0x8c
 80030ee:	2202      	movs	r2, #2
 80030f0:	2b07      	cmp	r3, #7
 80030f2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80030f6:	e9cb 1200 	strd	r1, r2, [fp]
 80030fa:	f300 8415 	bgt.w	8003928 <_vfprintf_r+0xc20>
 80030fe:	f10b 0b08 	add.w	fp, fp, #8
 8003102:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003104:	2b80      	cmp	r3, #128	; 0x80
 8003106:	f000 8331 	beq.w	800376c <_vfprintf_r+0xa64>
 800310a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800310c:	eba9 0503 	sub.w	r5, r9, r3
 8003110:	2d00      	cmp	r5, #0
 8003112:	dd37      	ble.n	8003184 <_vfprintf_r+0x47c>
 8003114:	2d10      	cmp	r5, #16
 8003116:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003118:	4b90      	ldr	r3, [pc, #576]	; (800335c <_vfprintf_r+0x654>)
 800311a:	dd28      	ble.n	800316e <_vfprintf_r+0x466>
 800311c:	4659      	mov	r1, fp
 800311e:	4620      	mov	r0, r4
 8003120:	46bb      	mov	fp, r7
 8003122:	f04f 0910 	mov.w	r9, #16
 8003126:	4637      	mov	r7, r6
 8003128:	461c      	mov	r4, r3
 800312a:	9e07      	ldr	r6, [sp, #28]
 800312c:	e004      	b.n	8003138 <_vfprintf_r+0x430>
 800312e:	3d10      	subs	r5, #16
 8003130:	2d10      	cmp	r5, #16
 8003132:	f101 0108 	add.w	r1, r1, #8
 8003136:	dd15      	ble.n	8003164 <_vfprintf_r+0x45c>
 8003138:	3201      	adds	r2, #1
 800313a:	3010      	adds	r0, #16
 800313c:	2a07      	cmp	r2, #7
 800313e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003142:	e9c1 4900 	strd	r4, r9, [r1]
 8003146:	ddf2      	ble.n	800312e <_vfprintf_r+0x426>
 8003148:	aa2a      	add	r2, sp, #168	; 0xa8
 800314a:	4631      	mov	r1, r6
 800314c:	9803      	ldr	r0, [sp, #12]
 800314e:	f004 f909 	bl	8007364 <__sprint_r>
 8003152:	2800      	cmp	r0, #0
 8003154:	f040 83d9 	bne.w	800390a <_vfprintf_r+0xc02>
 8003158:	3d10      	subs	r5, #16
 800315a:	2d10      	cmp	r5, #16
 800315c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003160:	a92d      	add	r1, sp, #180	; 0xb4
 8003162:	dce9      	bgt.n	8003138 <_vfprintf_r+0x430>
 8003164:	463e      	mov	r6, r7
 8003166:	4623      	mov	r3, r4
 8003168:	465f      	mov	r7, fp
 800316a:	4604      	mov	r4, r0
 800316c:	468b      	mov	fp, r1
 800316e:	3201      	adds	r2, #1
 8003170:	442c      	add	r4, r5
 8003172:	2a07      	cmp	r2, #7
 8003174:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003178:	e9cb 3500 	strd	r3, r5, [fp]
 800317c:	f300 83ef 	bgt.w	800395e <_vfprintf_r+0xc56>
 8003180:	f10b 0b08 	add.w	fp, fp, #8
 8003184:	f418 7f80 	tst.w	r8, #256	; 0x100
 8003188:	f040 8280 	bne.w	800368c <_vfprintf_r+0x984>
 800318c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800318e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003190:	f8cb 7000 	str.w	r7, [fp]
 8003194:	3301      	adds	r3, #1
 8003196:	4414      	add	r4, r2
 8003198:	2b07      	cmp	r3, #7
 800319a:	942c      	str	r4, [sp, #176]	; 0xb0
 800319c:	f8cb 2004 	str.w	r2, [fp, #4]
 80031a0:	932b      	str	r3, [sp, #172]	; 0xac
 80031a2:	f300 8392 	bgt.w	80038ca <_vfprintf_r+0xbc2>
 80031a6:	f10b 0b08 	add.w	fp, fp, #8
 80031aa:	f018 0f04 	tst.w	r8, #4
 80031ae:	d03b      	beq.n	8003228 <_vfprintf_r+0x520>
 80031b0:	9b06      	ldr	r3, [sp, #24]
 80031b2:	9a04      	ldr	r2, [sp, #16]
 80031b4:	1a9d      	subs	r5, r3, r2
 80031b6:	2d00      	cmp	r5, #0
 80031b8:	dd36      	ble.n	8003228 <_vfprintf_r+0x520>
 80031ba:	2d10      	cmp	r5, #16
 80031bc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031be:	dd21      	ble.n	8003204 <_vfprintf_r+0x4fc>
 80031c0:	2610      	movs	r6, #16
 80031c2:	9f03      	ldr	r7, [sp, #12]
 80031c4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80031c8:	e004      	b.n	80031d4 <_vfprintf_r+0x4cc>
 80031ca:	3d10      	subs	r5, #16
 80031cc:	2d10      	cmp	r5, #16
 80031ce:	f10b 0b08 	add.w	fp, fp, #8
 80031d2:	dd17      	ble.n	8003204 <_vfprintf_r+0x4fc>
 80031d4:	3301      	adds	r3, #1
 80031d6:	4a60      	ldr	r2, [pc, #384]	; (8003358 <_vfprintf_r+0x650>)
 80031d8:	3410      	adds	r4, #16
 80031da:	2b07      	cmp	r3, #7
 80031dc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80031e0:	e9cb 2600 	strd	r2, r6, [fp]
 80031e4:	ddf1      	ble.n	80031ca <_vfprintf_r+0x4c2>
 80031e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80031e8:	4641      	mov	r1, r8
 80031ea:	4638      	mov	r0, r7
 80031ec:	f004 f8ba 	bl	8007364 <__sprint_r>
 80031f0:	2800      	cmp	r0, #0
 80031f2:	f040 856c 	bne.w	8003cce <_vfprintf_r+0xfc6>
 80031f6:	3d10      	subs	r5, #16
 80031f8:	2d10      	cmp	r5, #16
 80031fa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80031fe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003202:	dce7      	bgt.n	80031d4 <_vfprintf_r+0x4cc>
 8003204:	3301      	adds	r3, #1
 8003206:	4a54      	ldr	r2, [pc, #336]	; (8003358 <_vfprintf_r+0x650>)
 8003208:	442c      	add	r4, r5
 800320a:	2b07      	cmp	r3, #7
 800320c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003210:	e9cb 2500 	strd	r2, r5, [fp]
 8003214:	dd08      	ble.n	8003228 <_vfprintf_r+0x520>
 8003216:	aa2a      	add	r2, sp, #168	; 0xa8
 8003218:	9907      	ldr	r1, [sp, #28]
 800321a:	9803      	ldr	r0, [sp, #12]
 800321c:	f004 f8a2 	bl	8007364 <__sprint_r>
 8003220:	2800      	cmp	r0, #0
 8003222:	f040 82e9 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003226:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003228:	9904      	ldr	r1, [sp, #16]
 800322a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800322e:	428a      	cmp	r2, r1
 8003230:	bfac      	ite	ge
 8003232:	189b      	addge	r3, r3, r2
 8003234:	185b      	addlt	r3, r3, r1
 8003236:	9305      	str	r3, [sp, #20]
 8003238:	2c00      	cmp	r4, #0
 800323a:	f040 82d5 	bne.w	80037e8 <_vfprintf_r+0xae0>
 800323e:	2300      	movs	r3, #0
 8003240:	932b      	str	r3, [sp, #172]	; 0xac
 8003242:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003244:	b11b      	cbz	r3, 800324e <_vfprintf_r+0x546>
 8003246:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003248:	9803      	ldr	r0, [sp, #12]
 800324a:	f002 fc9d 	bl	8005b88 <_free_r>
 800324e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003252:	4657      	mov	r7, sl
 8003254:	783b      	ldrb	r3, [r7, #0]
 8003256:	2b00      	cmp	r3, #0
 8003258:	f47f ada7 	bne.w	8002daa <_vfprintf_r+0xa2>
 800325c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800325e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003262:	2b00      	cmp	r3, #0
 8003264:	f041 80e7 	bne.w	8004436 <_vfprintf_r+0x172e>
 8003268:	2300      	movs	r3, #0
 800326a:	932b      	str	r3, [sp, #172]	; 0xac
 800326c:	e2cb      	b.n	8003806 <_vfprintf_r+0xafe>
 800326e:	4643      	mov	r3, r8
 8003270:	069a      	lsls	r2, r3, #26
 8003272:	f140 814e 	bpl.w	8003512 <_vfprintf_r+0x80a>
 8003276:	9c08      	ldr	r4, [sp, #32]
 8003278:	3407      	adds	r4, #7
 800327a:	f024 0207 	bic.w	r2, r4, #7
 800327e:	f102 0108 	add.w	r1, r2, #8
 8003282:	e9d2 4500 	ldrd	r4, r5, [r2]
 8003286:	9108      	str	r1, [sp, #32]
 8003288:	2201      	movs	r2, #1
 800328a:	2100      	movs	r1, #0
 800328c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8003290:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003294:	a956      	add	r1, sp, #344	; 0x158
 8003296:	9104      	str	r1, [sp, #16]
 8003298:	f47f aea2 	bne.w	8002fe0 <_vfprintf_r+0x2d8>
 800329c:	4698      	mov	r8, r3
 800329e:	2a01      	cmp	r2, #1
 80032a0:	f000 8350 	beq.w	8003944 <_vfprintf_r+0xc3c>
 80032a4:	2a02      	cmp	r2, #2
 80032a6:	f000 831b 	beq.w	80038e0 <_vfprintf_r+0xbd8>
 80032aa:	a956      	add	r1, sp, #344	; 0x158
 80032ac:	e000      	b.n	80032b0 <_vfprintf_r+0x5a8>
 80032ae:	4639      	mov	r1, r7
 80032b0:	08e2      	lsrs	r2, r4, #3
 80032b2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80032b6:	08e8      	lsrs	r0, r5, #3
 80032b8:	f004 0307 	and.w	r3, r4, #7
 80032bc:	4605      	mov	r5, r0
 80032be:	4614      	mov	r4, r2
 80032c0:	3330      	adds	r3, #48	; 0x30
 80032c2:	ea54 0205 	orrs.w	r2, r4, r5
 80032c6:	f801 3c01 	strb.w	r3, [r1, #-1]
 80032ca:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80032ce:	d1ee      	bne.n	80032ae <_vfprintf_r+0x5a6>
 80032d0:	f018 0f01 	tst.w	r8, #1
 80032d4:	f000 8314 	beq.w	8003900 <_vfprintf_r+0xbf8>
 80032d8:	2b30      	cmp	r3, #48	; 0x30
 80032da:	f000 8311 	beq.w	8003900 <_vfprintf_r+0xbf8>
 80032de:	9a04      	ldr	r2, [sp, #16]
 80032e0:	3902      	subs	r1, #2
 80032e2:	2330      	movs	r3, #48	; 0x30
 80032e4:	1a52      	subs	r2, r2, r1
 80032e6:	f807 3c01 	strb.w	r3, [r7, #-1]
 80032ea:	9209      	str	r2, [sp, #36]	; 0x24
 80032ec:	460f      	mov	r7, r1
 80032ee:	e68c      	b.n	800300a <_vfprintf_r+0x302>
 80032f0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80032f4:	2200      	movs	r2, #0
 80032f6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80032fa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80032fe:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003302:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003306:	2b09      	cmp	r3, #9
 8003308:	d9f5      	bls.n	80032f6 <_vfprintf_r+0x5ee>
 800330a:	9206      	str	r2, [sp, #24]
 800330c:	e57c      	b.n	8002e08 <_vfprintf_r+0x100>
 800330e:	4b14      	ldr	r3, [pc, #80]	; (8003360 <_vfprintf_r+0x658>)
 8003310:	9317      	str	r3, [sp, #92]	; 0x5c
 8003312:	f018 0f20 	tst.w	r8, #32
 8003316:	f000 8114 	beq.w	8003542 <_vfprintf_r+0x83a>
 800331a:	9c08      	ldr	r4, [sp, #32]
 800331c:	3407      	adds	r4, #7
 800331e:	f024 0307 	bic.w	r3, r4, #7
 8003322:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003326:	f103 0208 	add.w	r2, r3, #8
 800332a:	9208      	str	r2, [sp, #32]
 800332c:	f018 0f01 	tst.w	r8, #1
 8003330:	d009      	beq.n	8003346 <_vfprintf_r+0x63e>
 8003332:	ea54 0305 	orrs.w	r3, r4, r5
 8003336:	d006      	beq.n	8003346 <_vfprintf_r+0x63e>
 8003338:	2330      	movs	r3, #48	; 0x30
 800333a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800333e:	f048 0802 	orr.w	r8, r8, #2
 8003342:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003346:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800334a:	2202      	movs	r2, #2
 800334c:	e79d      	b.n	800328a <_vfprintf_r+0x582>
 800334e:	f048 0801 	orr.w	r8, r8, #1
 8003352:	f89a 6000 	ldrb.w	r6, [sl]
 8003356:	e555      	b.n	8002e04 <_vfprintf_r+0xfc>
 8003358:	08007a80 	.word	0x08007a80
 800335c:	08007a90 	.word	0x08007a90
 8003360:	08007a4c 	.word	0x08007a4c
 8003364:	9e03      	ldr	r6, [sp, #12]
 8003366:	4630      	mov	r0, r6
 8003368:	f002 feaa 	bl	80060c0 <_localeconv_r>
 800336c:	6843      	ldr	r3, [r0, #4]
 800336e:	9318      	str	r3, [sp, #96]	; 0x60
 8003370:	4618      	mov	r0, r3
 8003372:	f7fd f9c5 	bl	8000700 <strlen>
 8003376:	901b      	str	r0, [sp, #108]	; 0x6c
 8003378:	4604      	mov	r4, r0
 800337a:	4630      	mov	r0, r6
 800337c:	f002 fea0 	bl	80060c0 <_localeconv_r>
 8003380:	6883      	ldr	r3, [r0, #8]
 8003382:	931a      	str	r3, [sp, #104]	; 0x68
 8003384:	2c00      	cmp	r4, #0
 8003386:	f43f adb8 	beq.w	8002efa <_vfprintf_r+0x1f2>
 800338a:	f89a 6000 	ldrb.w	r6, [sl]
 800338e:	2b00      	cmp	r3, #0
 8003390:	f43f ad38 	beq.w	8002e04 <_vfprintf_r+0xfc>
 8003394:	781b      	ldrb	r3, [r3, #0]
 8003396:	2b00      	cmp	r3, #0
 8003398:	f43f ad34 	beq.w	8002e04 <_vfprintf_r+0xfc>
 800339c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80033a0:	e530      	b.n	8002e04 <_vfprintf_r+0xfc>
 80033a2:	9b08      	ldr	r3, [sp, #32]
 80033a4:	f89a 6000 	ldrb.w	r6, [sl]
 80033a8:	681a      	ldr	r2, [r3, #0]
 80033aa:	9206      	str	r2, [sp, #24]
 80033ac:	2a00      	cmp	r2, #0
 80033ae:	f103 0304 	add.w	r3, r3, #4
 80033b2:	f2c0 8697 	blt.w	80040e4 <_vfprintf_r+0x13dc>
 80033b6:	9308      	str	r3, [sp, #32]
 80033b8:	e524      	b.n	8002e04 <_vfprintf_r+0xfc>
 80033ba:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80033be:	f89a 6000 	ldrb.w	r6, [sl]
 80033c2:	e51f      	b.n	8002e04 <_vfprintf_r+0xfc>
 80033c4:	f89a 6000 	ldrb.w	r6, [sl]
 80033c8:	f048 0804 	orr.w	r8, r8, #4
 80033cc:	e51a      	b.n	8002e04 <_vfprintf_r+0xfc>
 80033ce:	f89a 6000 	ldrb.w	r6, [sl]
 80033d2:	2e2a      	cmp	r6, #42	; 0x2a
 80033d4:	f10a 0201 	add.w	r2, sl, #1
 80033d8:	f001 81b0 	beq.w	800473c <_vfprintf_r+0x1a34>
 80033dc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80033e0:	2b09      	cmp	r3, #9
 80033e2:	4692      	mov	sl, r2
 80033e4:	f04f 0900 	mov.w	r9, #0
 80033e8:	f63f ad0e 	bhi.w	8002e08 <_vfprintf_r+0x100>
 80033ec:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80033f0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80033f4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80033f8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80033fc:	2b09      	cmp	r3, #9
 80033fe:	d9f5      	bls.n	80033ec <_vfprintf_r+0x6e4>
 8003400:	e502      	b.n	8002e08 <_vfprintf_r+0x100>
 8003402:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003406:	f89a 6000 	ldrb.w	r6, [sl]
 800340a:	e4fb      	b.n	8002e04 <_vfprintf_r+0xfc>
 800340c:	9c08      	ldr	r4, [sp, #32]
 800340e:	3407      	adds	r4, #7
 8003410:	f024 0407 	bic.w	r4, r4, #7
 8003414:	ed94 7b00 	vldr	d7, [r4]
 8003418:	ec52 1b17 	vmov	r1, r2, d7
 800341c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003420:	931d      	str	r3, [sp, #116]	; 0x74
 8003422:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003426:	3408      	adds	r4, #8
 8003428:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800342c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003430:	4bba      	ldr	r3, [pc, #744]	; (800371c <_vfprintf_r+0xa14>)
 8003432:	9408      	str	r4, [sp, #32]
 8003434:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003438:	f7fd fe78 	bl	800112c <__aeabi_dcmpun>
 800343c:	2800      	cmp	r0, #0
 800343e:	f040 846f 	bne.w	8003d20 <_vfprintf_r+0x1018>
 8003442:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003446:	4bb5      	ldr	r3, [pc, #724]	; (800371c <_vfprintf_r+0xa14>)
 8003448:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800344c:	f7fd fe50 	bl	80010f0 <__aeabi_dcmple>
 8003450:	2800      	cmp	r0, #0
 8003452:	f040 8465 	bne.w	8003d20 <_vfprintf_r+0x1018>
 8003456:	2200      	movs	r2, #0
 8003458:	2300      	movs	r3, #0
 800345a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800345e:	f7fd fe3d 	bl	80010dc <__aeabi_dcmplt>
 8003462:	2800      	cmp	r0, #0
 8003464:	f040 855b 	bne.w	8003f1e <_vfprintf_r+0x1216>
 8003468:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800346c:	4fac      	ldr	r7, [pc, #688]	; (8003720 <_vfprintf_r+0xa18>)
 800346e:	4bad      	ldr	r3, [pc, #692]	; (8003724 <_vfprintf_r+0xa1c>)
 8003470:	2000      	movs	r0, #0
 8003472:	2103      	movs	r1, #3
 8003474:	9104      	str	r1, [sp, #16]
 8003476:	900a      	str	r0, [sp, #40]	; 0x28
 8003478:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800347c:	2e47      	cmp	r6, #71	; 0x47
 800347e:	bfd8      	it	le
 8003480:	461f      	movle	r7, r3
 8003482:	9109      	str	r1, [sp, #36]	; 0x24
 8003484:	4681      	mov	r9, r0
 8003486:	900f      	str	r0, [sp, #60]	; 0x3c
 8003488:	9014      	str	r0, [sp, #80]	; 0x50
 800348a:	9011      	str	r0, [sp, #68]	; 0x44
 800348c:	e5c9      	b.n	8003022 <_vfprintf_r+0x31a>
 800348e:	9808      	ldr	r0, [sp, #32]
 8003490:	2300      	movs	r3, #0
 8003492:	6801      	ldr	r1, [r0, #0]
 8003494:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003498:	461a      	mov	r2, r3
 800349a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800349e:	2301      	movs	r3, #1
 80034a0:	1d01      	adds	r1, r0, #4
 80034a2:	9304      	str	r3, [sp, #16]
 80034a4:	920a      	str	r2, [sp, #40]	; 0x28
 80034a6:	4691      	mov	r9, r2
 80034a8:	920f      	str	r2, [sp, #60]	; 0x3c
 80034aa:	9214      	str	r2, [sp, #80]	; 0x50
 80034ac:	9211      	str	r2, [sp, #68]	; 0x44
 80034ae:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80034b2:	af3d      	add	r7, sp, #244	; 0xf4
 80034b4:	e5b9      	b.n	800302a <_vfprintf_r+0x322>
 80034b6:	9b08      	ldr	r3, [sp, #32]
 80034b8:	681f      	ldr	r7, [r3, #0]
 80034ba:	2500      	movs	r5, #0
 80034bc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80034c0:	1d1c      	adds	r4, r3, #4
 80034c2:	2f00      	cmp	r7, #0
 80034c4:	f000 8639 	beq.w	800413a <_vfprintf_r+0x1432>
 80034c8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80034cc:	f000 8711 	beq.w	80042f2 <_vfprintf_r+0x15ea>
 80034d0:	464a      	mov	r2, r9
 80034d2:	4629      	mov	r1, r5
 80034d4:	4638      	mov	r0, r7
 80034d6:	f7fd f983 	bl	80007e0 <memchr>
 80034da:	900a      	str	r0, [sp, #40]	; 0x28
 80034dc:	2800      	cmp	r0, #0
 80034de:	f000 85e7 	beq.w	80040b0 <_vfprintf_r+0x13a8>
 80034e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80034e4:	1bdb      	subs	r3, r3, r7
 80034e6:	9309      	str	r3, [sp, #36]	; 0x24
 80034e8:	46a9      	mov	r9, r5
 80034ea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80034ee:	9408      	str	r4, [sp, #32]
 80034f0:	9304      	str	r3, [sp, #16]
 80034f2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80034f6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80034fa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80034fe:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003502:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003506:	e58c      	b.n	8003022 <_vfprintf_r+0x31a>
 8003508:	f048 0310 	orr.w	r3, r8, #16
 800350c:	069a      	lsls	r2, r3, #26
 800350e:	f53f aeb2 	bmi.w	8003276 <_vfprintf_r+0x56e>
 8003512:	9a08      	ldr	r2, [sp, #32]
 8003514:	06df      	lsls	r7, r3, #27
 8003516:	f102 0104 	add.w	r1, r2, #4
 800351a:	f100 837e 	bmi.w	8003c1a <_vfprintf_r+0xf12>
 800351e:	065d      	lsls	r5, r3, #25
 8003520:	9a08      	ldr	r2, [sp, #32]
 8003522:	f100 84e4 	bmi.w	8003eee <_vfprintf_r+0x11e6>
 8003526:	059c      	lsls	r4, r3, #22
 8003528:	f140 8377 	bpl.w	8003c1a <_vfprintf_r+0xf12>
 800352c:	7814      	ldrb	r4, [r2, #0]
 800352e:	9108      	str	r1, [sp, #32]
 8003530:	2500      	movs	r5, #0
 8003532:	2201      	movs	r2, #1
 8003534:	e6a9      	b.n	800328a <_vfprintf_r+0x582>
 8003536:	4b7c      	ldr	r3, [pc, #496]	; (8003728 <_vfprintf_r+0xa20>)
 8003538:	9317      	str	r3, [sp, #92]	; 0x5c
 800353a:	f018 0f20 	tst.w	r8, #32
 800353e:	f47f aeec 	bne.w	800331a <_vfprintf_r+0x612>
 8003542:	9a08      	ldr	r2, [sp, #32]
 8003544:	f018 0f10 	tst.w	r8, #16
 8003548:	f102 0304 	add.w	r3, r2, #4
 800354c:	f040 8354 	bne.w	8003bf8 <_vfprintf_r+0xef0>
 8003550:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003554:	9a08      	ldr	r2, [sp, #32]
 8003556:	f040 84d0 	bne.w	8003efa <_vfprintf_r+0x11f2>
 800355a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800355e:	f000 834b 	beq.w	8003bf8 <_vfprintf_r+0xef0>
 8003562:	7814      	ldrb	r4, [r2, #0]
 8003564:	9308      	str	r3, [sp, #32]
 8003566:	2500      	movs	r5, #0
 8003568:	e6e0      	b.n	800332c <_vfprintf_r+0x624>
 800356a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800356e:	f89a 6000 	ldrb.w	r6, [sl]
 8003572:	2b00      	cmp	r3, #0
 8003574:	f47f ac46 	bne.w	8002e04 <_vfprintf_r+0xfc>
 8003578:	2320      	movs	r3, #32
 800357a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800357e:	e441      	b.n	8002e04 <_vfprintf_r+0xfc>
 8003580:	f89a 6000 	ldrb.w	r6, [sl]
 8003584:	2e6c      	cmp	r6, #108	; 0x6c
 8003586:	bf03      	ittte	eq
 8003588:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800358c:	f048 0820 	orreq.w	r8, r8, #32
 8003590:	f10a 0a01 	addeq.w	sl, sl, #1
 8003594:	f048 0810 	orrne.w	r8, r8, #16
 8003598:	e434      	b.n	8002e04 <_vfprintf_r+0xfc>
 800359a:	9a08      	ldr	r2, [sp, #32]
 800359c:	f018 0f20 	tst.w	r8, #32
 80035a0:	f852 3b04 	ldr.w	r3, [r2], #4
 80035a4:	9208      	str	r2, [sp, #32]
 80035a6:	f000 83a1 	beq.w	8003cec <_vfprintf_r+0xfe4>
 80035aa:	9a05      	ldr	r2, [sp, #20]
 80035ac:	4610      	mov	r0, r2
 80035ae:	17d1      	asrs	r1, r2, #31
 80035b0:	e9c3 0100 	strd	r0, r1, [r3]
 80035b4:	4657      	mov	r7, sl
 80035b6:	e64d      	b.n	8003254 <_vfprintf_r+0x54c>
 80035b8:	f89a 6000 	ldrb.w	r6, [sl]
 80035bc:	2e68      	cmp	r6, #104	; 0x68
 80035be:	bf03      	ittte	eq
 80035c0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80035c4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80035c8:	f10a 0a01 	addeq.w	sl, sl, #1
 80035cc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80035d0:	e418      	b.n	8002e04 <_vfprintf_r+0xfc>
 80035d2:	9908      	ldr	r1, [sp, #32]
 80035d4:	4b55      	ldr	r3, [pc, #340]	; (800372c <_vfprintf_r+0xa24>)
 80035d6:	680c      	ldr	r4, [r1, #0]
 80035d8:	9317      	str	r3, [sp, #92]	; 0x5c
 80035da:	f647 0230 	movw	r2, #30768	; 0x7830
 80035de:	3104      	adds	r1, #4
 80035e0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80035e4:	f048 0302 	orr.w	r3, r8, #2
 80035e8:	9108      	str	r1, [sp, #32]
 80035ea:	2500      	movs	r5, #0
 80035ec:	2202      	movs	r2, #2
 80035ee:	2678      	movs	r6, #120	; 0x78
 80035f0:	e64b      	b.n	800328a <_vfprintf_r+0x582>
 80035f2:	f048 0808 	orr.w	r8, r8, #8
 80035f6:	f89a 6000 	ldrb.w	r6, [sl]
 80035fa:	e403      	b.n	8002e04 <_vfprintf_r+0xfc>
 80035fc:	f048 0310 	orr.w	r3, r8, #16
 8003600:	069f      	lsls	r7, r3, #26
 8003602:	f53f acd1 	bmi.w	8002fa8 <_vfprintf_r+0x2a0>
 8003606:	9908      	ldr	r1, [sp, #32]
 8003608:	06dd      	lsls	r5, r3, #27
 800360a:	f101 0204 	add.w	r2, r1, #4
 800360e:	f100 82fd 	bmi.w	8003c0c <_vfprintf_r+0xf04>
 8003612:	065c      	lsls	r4, r3, #25
 8003614:	9908      	ldr	r1, [sp, #32]
 8003616:	f100 8475 	bmi.w	8003f04 <_vfprintf_r+0x11fc>
 800361a:	0598      	lsls	r0, r3, #22
 800361c:	f140 82f6 	bpl.w	8003c0c <_vfprintf_r+0xf04>
 8003620:	f991 4000 	ldrsb.w	r4, [r1]
 8003624:	9208      	str	r2, [sp, #32]
 8003626:	17e5      	asrs	r5, r4, #31
 8003628:	4620      	mov	r0, r4
 800362a:	4629      	mov	r1, r5
 800362c:	e4c7      	b.n	8002fbe <_vfprintf_r+0x2b6>
 800362e:	9a08      	ldr	r2, [sp, #32]
 8003630:	f018 0f10 	tst.w	r8, #16
 8003634:	f102 0304 	add.w	r3, r2, #4
 8003638:	f040 82e3 	bne.w	8003c02 <_vfprintf_r+0xefa>
 800363c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003640:	9a08      	ldr	r2, [sp, #32]
 8003642:	f040 8467 	bne.w	8003f14 <_vfprintf_r+0x120c>
 8003646:	f418 7f00 	tst.w	r8, #512	; 0x200
 800364a:	f000 82da 	beq.w	8003c02 <_vfprintf_r+0xefa>
 800364e:	7814      	ldrb	r4, [r2, #0]
 8003650:	9308      	str	r3, [sp, #32]
 8003652:	2500      	movs	r5, #0
 8003654:	e488      	b.n	8002f68 <_vfprintf_r+0x260>
 8003656:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800365a:	f002 fd45 	bl	80060e8 <__retarget_lock_release_recursive>
 800365e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003662:	9305      	str	r3, [sp, #20]
 8003664:	e443      	b.n	8002eee <_vfprintf_r+0x1e6>
 8003666:	2e00      	cmp	r6, #0
 8003668:	f43f adf8 	beq.w	800325c <_vfprintf_r+0x554>
 800366c:	2300      	movs	r3, #0
 800366e:	2101      	movs	r1, #1
 8003670:	461a      	mov	r2, r3
 8003672:	9104      	str	r1, [sp, #16]
 8003674:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003678:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800367c:	930a      	str	r3, [sp, #40]	; 0x28
 800367e:	4699      	mov	r9, r3
 8003680:	930f      	str	r3, [sp, #60]	; 0x3c
 8003682:	9314      	str	r3, [sp, #80]	; 0x50
 8003684:	9311      	str	r3, [sp, #68]	; 0x44
 8003686:	9109      	str	r1, [sp, #36]	; 0x24
 8003688:	af3d      	add	r7, sp, #244	; 0xf4
 800368a:	e4ce      	b.n	800302a <_vfprintf_r+0x322>
 800368c:	2e65      	cmp	r6, #101	; 0x65
 800368e:	f340 80ca 	ble.w	8003826 <_vfprintf_r+0xb1e>
 8003692:	2200      	movs	r2, #0
 8003694:	2300      	movs	r3, #0
 8003696:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800369a:	f7fd fd15 	bl	80010c8 <__aeabi_dcmpeq>
 800369e:	2800      	cmp	r0, #0
 80036a0:	f000 8169 	beq.w	8003976 <_vfprintf_r+0xc6e>
 80036a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80036a6:	4a22      	ldr	r2, [pc, #136]	; (8003730 <_vfprintf_r+0xa28>)
 80036a8:	f8cb 2000 	str.w	r2, [fp]
 80036ac:	3301      	adds	r3, #1
 80036ae:	3401      	adds	r4, #1
 80036b0:	2201      	movs	r2, #1
 80036b2:	2b07      	cmp	r3, #7
 80036b4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80036b8:	f8cb 2004 	str.w	r2, [fp, #4]
 80036bc:	f300 8406 	bgt.w	8003ecc <_vfprintf_r+0x11c4>
 80036c0:	f10b 0b08 	add.w	fp, fp, #8
 80036c4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036c6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80036c8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036ca:	4293      	cmp	r3, r2
 80036cc:	db03      	blt.n	80036d6 <_vfprintf_r+0x9ce>
 80036ce:	f018 0f01 	tst.w	r8, #1
 80036d2:	f43f ad6a 	beq.w	80031aa <_vfprintf_r+0x4a2>
 80036d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80036d8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80036da:	f8cb 2000 	str.w	r2, [fp]
 80036de:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80036e0:	f8cb 2004 	str.w	r2, [fp, #4]
 80036e4:	3301      	adds	r3, #1
 80036e6:	4414      	add	r4, r2
 80036e8:	2b07      	cmp	r3, #7
 80036ea:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80036ee:	f300 8517 	bgt.w	8004120 <_vfprintf_r+0x1418>
 80036f2:	f10b 0b08 	add.w	fp, fp, #8
 80036f6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80036f8:	1e5d      	subs	r5, r3, #1
 80036fa:	2d00      	cmp	r5, #0
 80036fc:	f77f ad55 	ble.w	80031aa <_vfprintf_r+0x4a2>
 8003700:	2d10      	cmp	r5, #16
 8003702:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003704:	4b0b      	ldr	r3, [pc, #44]	; (8003734 <_vfprintf_r+0xa2c>)
 8003706:	f340 82e7 	ble.w	8003cd8 <_vfprintf_r+0xfd0>
 800370a:	4619      	mov	r1, r3
 800370c:	2610      	movs	r6, #16
 800370e:	4623      	mov	r3, r4
 8003710:	9f03      	ldr	r7, [sp, #12]
 8003712:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003716:	460c      	mov	r4, r1
 8003718:	e014      	b.n	8003744 <_vfprintf_r+0xa3c>
 800371a:	bf00      	nop
 800371c:	7fefffff 	.word	0x7fefffff
 8003720:	08007a40 	.word	0x08007a40
 8003724:	08007a3c 	.word	0x08007a3c
 8003728:	08007a60 	.word	0x08007a60
 800372c:	08007a4c 	.word	0x08007a4c
 8003730:	08007a7c 	.word	0x08007a7c
 8003734:	08007a90 	.word	0x08007a90
 8003738:	f10b 0b08 	add.w	fp, fp, #8
 800373c:	3d10      	subs	r5, #16
 800373e:	2d10      	cmp	r5, #16
 8003740:	f340 82c7 	ble.w	8003cd2 <_vfprintf_r+0xfca>
 8003744:	3201      	adds	r2, #1
 8003746:	3310      	adds	r3, #16
 8003748:	2a07      	cmp	r2, #7
 800374a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800374e:	e9cb 4600 	strd	r4, r6, [fp]
 8003752:	ddf1      	ble.n	8003738 <_vfprintf_r+0xa30>
 8003754:	aa2a      	add	r2, sp, #168	; 0xa8
 8003756:	4649      	mov	r1, r9
 8003758:	4638      	mov	r0, r7
 800375a:	f003 fe03 	bl	8007364 <__sprint_r>
 800375e:	2800      	cmp	r0, #0
 8003760:	d14c      	bne.n	80037fc <_vfprintf_r+0xaf4>
 8003762:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003766:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800376a:	e7e7      	b.n	800373c <_vfprintf_r+0xa34>
 800376c:	9b06      	ldr	r3, [sp, #24]
 800376e:	9a04      	ldr	r2, [sp, #16]
 8003770:	1a9d      	subs	r5, r3, r2
 8003772:	2d00      	cmp	r5, #0
 8003774:	f77f acc9 	ble.w	800310a <_vfprintf_r+0x402>
 8003778:	2d10      	cmp	r5, #16
 800377a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800377c:	4bbc      	ldr	r3, [pc, #752]	; (8003a70 <_vfprintf_r+0xd68>)
 800377e:	dd27      	ble.n	80037d0 <_vfprintf_r+0xac8>
 8003780:	4659      	mov	r1, fp
 8003782:	4620      	mov	r0, r4
 8003784:	46bb      	mov	fp, r7
 8003786:	461c      	mov	r4, r3
 8003788:	4637      	mov	r7, r6
 800378a:	9e07      	ldr	r6, [sp, #28]
 800378c:	e004      	b.n	8003798 <_vfprintf_r+0xa90>
 800378e:	3d10      	subs	r5, #16
 8003790:	2d10      	cmp	r5, #16
 8003792:	f101 0108 	add.w	r1, r1, #8
 8003796:	dd16      	ble.n	80037c6 <_vfprintf_r+0xabe>
 8003798:	3201      	adds	r2, #1
 800379a:	3010      	adds	r0, #16
 800379c:	2310      	movs	r3, #16
 800379e:	2a07      	cmp	r2, #7
 80037a0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80037a4:	600c      	str	r4, [r1, #0]
 80037a6:	604b      	str	r3, [r1, #4]
 80037a8:	ddf1      	ble.n	800378e <_vfprintf_r+0xa86>
 80037aa:	aa2a      	add	r2, sp, #168	; 0xa8
 80037ac:	4631      	mov	r1, r6
 80037ae:	9803      	ldr	r0, [sp, #12]
 80037b0:	f003 fdd8 	bl	8007364 <__sprint_r>
 80037b4:	2800      	cmp	r0, #0
 80037b6:	f040 80a8 	bne.w	800390a <_vfprintf_r+0xc02>
 80037ba:	3d10      	subs	r5, #16
 80037bc:	2d10      	cmp	r5, #16
 80037be:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80037c2:	a92d      	add	r1, sp, #180	; 0xb4
 80037c4:	dce8      	bgt.n	8003798 <_vfprintf_r+0xa90>
 80037c6:	463e      	mov	r6, r7
 80037c8:	4623      	mov	r3, r4
 80037ca:	465f      	mov	r7, fp
 80037cc:	4604      	mov	r4, r0
 80037ce:	468b      	mov	fp, r1
 80037d0:	3201      	adds	r2, #1
 80037d2:	442c      	add	r4, r5
 80037d4:	2a07      	cmp	r2, #7
 80037d6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80037da:	e9cb 3500 	strd	r3, r5, [fp]
 80037de:	f300 8292 	bgt.w	8003d06 <_vfprintf_r+0xffe>
 80037e2:	f10b 0b08 	add.w	fp, fp, #8
 80037e6:	e490      	b.n	800310a <_vfprintf_r+0x402>
 80037e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80037ea:	9907      	ldr	r1, [sp, #28]
 80037ec:	9803      	ldr	r0, [sp, #12]
 80037ee:	f003 fdb9 	bl	8007364 <__sprint_r>
 80037f2:	2800      	cmp	r0, #0
 80037f4:	f43f ad23 	beq.w	800323e <_vfprintf_r+0x536>
 80037f8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80037fc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80037fe:	b111      	cbz	r1, 8003806 <_vfprintf_r+0xafe>
 8003800:	9803      	ldr	r0, [sp, #12]
 8003802:	f002 f9c1 	bl	8005b88 <_free_r>
 8003806:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800380a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800380e:	07d0      	lsls	r0, r2, #31
 8003810:	d402      	bmi.n	8003818 <_vfprintf_r+0xb10>
 8003812:	0599      	lsls	r1, r3, #22
 8003814:	f140 81d0 	bpl.w	8003bb8 <_vfprintf_r+0xeb0>
 8003818:	065a      	lsls	r2, r3, #25
 800381a:	f53f ab65 	bmi.w	8002ee8 <_vfprintf_r+0x1e0>
 800381e:	9805      	ldr	r0, [sp, #20]
 8003820:	b057      	add	sp, #348	; 0x15c
 8003822:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003826:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003828:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800382a:	2a01      	cmp	r2, #1
 800382c:	f104 0401 	add.w	r4, r4, #1
 8003830:	f103 0501 	add.w	r5, r3, #1
 8003834:	f10b 0608 	add.w	r6, fp, #8
 8003838:	f340 811c 	ble.w	8003a74 <_vfprintf_r+0xd6c>
 800383c:	2301      	movs	r3, #1
 800383e:	2d07      	cmp	r5, #7
 8003840:	f8cb 7000 	str.w	r7, [fp]
 8003844:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003848:	f8cb 3004 	str.w	r3, [fp, #4]
 800384c:	f300 81bb 	bgt.w	8003bc6 <_vfprintf_r+0xebe>
 8003850:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003852:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003854:	1c69      	adds	r1, r5, #1
 8003856:	441c      	add	r4, r3
 8003858:	2907      	cmp	r1, #7
 800385a:	910b      	str	r1, [sp, #44]	; 0x2c
 800385c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003860:	e9c6 2300 	strd	r2, r3, [r6]
 8003864:	f300 81bb 	bgt.w	8003bde <_vfprintf_r+0xed6>
 8003868:	3608      	adds	r6, #8
 800386a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800386c:	1c53      	adds	r3, r2, #1
 800386e:	461d      	mov	r5, r3
 8003870:	9509      	str	r5, [sp, #36]	; 0x24
 8003872:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003874:	930e      	str	r3, [sp, #56]	; 0x38
 8003876:	2200      	movs	r2, #0
 8003878:	2300      	movs	r3, #0
 800387a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800387e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003882:	f106 0b08 	add.w	fp, r6, #8
 8003886:	f7fd fc1f 	bl	80010c8 <__aeabi_dcmpeq>
 800388a:	2800      	cmp	r0, #0
 800388c:	f040 80c2 	bne.w	8003a14 <_vfprintf_r+0xd0c>
 8003890:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003892:	f8c6 9004 	str.w	r9, [r6, #4]
 8003896:	3701      	adds	r7, #1
 8003898:	444c      	add	r4, r9
 800389a:	2d07      	cmp	r5, #7
 800389c:	6037      	str	r7, [r6, #0]
 800389e:	942c      	str	r4, [sp, #176]	; 0xb0
 80038a0:	952b      	str	r5, [sp, #172]	; 0xac
 80038a2:	f300 80f9 	bgt.w	8003a98 <_vfprintf_r+0xd90>
 80038a6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80038a8:	f106 0310 	add.w	r3, r6, #16
 80038ac:	3202      	adds	r2, #2
 80038ae:	465e      	mov	r6, fp
 80038b0:	9209      	str	r2, [sp, #36]	; 0x24
 80038b2:	469b      	mov	fp, r3
 80038b4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80038b6:	6072      	str	r2, [r6, #4]
 80038b8:	4414      	add	r4, r2
 80038ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80038bc:	942c      	str	r4, [sp, #176]	; 0xb0
 80038be:	ab26      	add	r3, sp, #152	; 0x98
 80038c0:	2a07      	cmp	r2, #7
 80038c2:	922b      	str	r2, [sp, #172]	; 0xac
 80038c4:	6033      	str	r3, [r6, #0]
 80038c6:	f77f ac70 	ble.w	80031aa <_vfprintf_r+0x4a2>
 80038ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80038cc:	9907      	ldr	r1, [sp, #28]
 80038ce:	9803      	ldr	r0, [sp, #12]
 80038d0:	f003 fd48 	bl	8007364 <__sprint_r>
 80038d4:	2800      	cmp	r0, #0
 80038d6:	d18f      	bne.n	80037f8 <_vfprintf_r+0xaf0>
 80038d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038da:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038de:	e464      	b.n	80031aa <_vfprintf_r+0x4a2>
 80038e0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80038e2:	af56      	add	r7, sp, #344	; 0x158
 80038e4:	0923      	lsrs	r3, r4, #4
 80038e6:	f004 010f 	and.w	r1, r4, #15
 80038ea:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80038ee:	092a      	lsrs	r2, r5, #4
 80038f0:	461c      	mov	r4, r3
 80038f2:	4615      	mov	r5, r2
 80038f4:	5c43      	ldrb	r3, [r0, r1]
 80038f6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80038fa:	ea54 0305 	orrs.w	r3, r4, r5
 80038fe:	d1f1      	bne.n	80038e4 <_vfprintf_r+0xbdc>
 8003900:	9b04      	ldr	r3, [sp, #16]
 8003902:	1bdb      	subs	r3, r3, r7
 8003904:	9309      	str	r3, [sp, #36]	; 0x24
 8003906:	f7ff bb80 	b.w	800300a <_vfprintf_r+0x302>
 800390a:	46b1      	mov	r9, r6
 800390c:	e776      	b.n	80037fc <_vfprintf_r+0xaf4>
 800390e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003910:	9907      	ldr	r1, [sp, #28]
 8003912:	9803      	ldr	r0, [sp, #12]
 8003914:	f003 fd26 	bl	8007364 <__sprint_r>
 8003918:	2800      	cmp	r0, #0
 800391a:	f47f af6d 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 800391e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003920:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003924:	f7ff bbdd 	b.w	80030e2 <_vfprintf_r+0x3da>
 8003928:	aa2a      	add	r2, sp, #168	; 0xa8
 800392a:	9907      	ldr	r1, [sp, #28]
 800392c:	9803      	ldr	r0, [sp, #12]
 800392e:	f003 fd19 	bl	8007364 <__sprint_r>
 8003932:	2800      	cmp	r0, #0
 8003934:	f47f af60 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003938:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800393a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800393e:	f7ff bbe0 	b.w	8003102 <_vfprintf_r+0x3fa>
 8003942:	4698      	mov	r8, r3
 8003944:	2d00      	cmp	r5, #0
 8003946:	bf08      	it	eq
 8003948:	2c0a      	cmpeq	r4, #10
 800394a:	f080 8170 	bcs.w	8003c2e <_vfprintf_r+0xf26>
 800394e:	af56      	add	r7, sp, #344	; 0x158
 8003950:	3430      	adds	r4, #48	; 0x30
 8003952:	2301      	movs	r3, #1
 8003954:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003958:	9309      	str	r3, [sp, #36]	; 0x24
 800395a:	f7ff bb56 	b.w	800300a <_vfprintf_r+0x302>
 800395e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003960:	9907      	ldr	r1, [sp, #28]
 8003962:	9803      	ldr	r0, [sp, #12]
 8003964:	f003 fcfe 	bl	8007364 <__sprint_r>
 8003968:	2800      	cmp	r0, #0
 800396a:	f47f af45 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 800396e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003970:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003974:	e406      	b.n	8003184 <_vfprintf_r+0x47c>
 8003976:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003978:	2b00      	cmp	r3, #0
 800397a:	f340 8273 	ble.w	8003e64 <_vfprintf_r+0x115c>
 800397e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003982:	4293      	cmp	r3, r2
 8003984:	bfa8      	it	ge
 8003986:	4613      	movge	r3, r2
 8003988:	2b00      	cmp	r3, #0
 800398a:	461d      	mov	r5, r3
 800398c:	dd0d      	ble.n	80039aa <_vfprintf_r+0xca2>
 800398e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003990:	f8cb 7000 	str.w	r7, [fp]
 8003994:	3301      	adds	r3, #1
 8003996:	442c      	add	r4, r5
 8003998:	2b07      	cmp	r3, #7
 800399a:	942c      	str	r4, [sp, #176]	; 0xb0
 800399c:	f8cb 5004 	str.w	r5, [fp, #4]
 80039a0:	932b      	str	r3, [sp, #172]	; 0xac
 80039a2:	f300 82c1 	bgt.w	8003f28 <_vfprintf_r+0x1220>
 80039a6:	f10b 0b08 	add.w	fp, fp, #8
 80039aa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039ac:	2d00      	cmp	r5, #0
 80039ae:	bfa8      	it	ge
 80039b0:	1b5b      	subge	r3, r3, r5
 80039b2:	2b00      	cmp	r3, #0
 80039b4:	461d      	mov	r5, r3
 80039b6:	f340 8099 	ble.w	8003aec <_vfprintf_r+0xde4>
 80039ba:	2d10      	cmp	r5, #16
 80039bc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80039be:	4b2c      	ldr	r3, [pc, #176]	; (8003a70 <_vfprintf_r+0xd68>)
 80039c0:	f340 83db 	ble.w	800417a <_vfprintf_r+0x1472>
 80039c4:	4618      	mov	r0, r3
 80039c6:	4621      	mov	r1, r4
 80039c8:	465b      	mov	r3, fp
 80039ca:	2610      	movs	r6, #16
 80039cc:	46bb      	mov	fp, r7
 80039ce:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80039d2:	9c07      	ldr	r4, [sp, #28]
 80039d4:	4607      	mov	r7, r0
 80039d6:	e004      	b.n	80039e2 <_vfprintf_r+0xcda>
 80039d8:	3308      	adds	r3, #8
 80039da:	3d10      	subs	r5, #16
 80039dc:	2d10      	cmp	r5, #16
 80039de:	f340 83c7 	ble.w	8004170 <_vfprintf_r+0x1468>
 80039e2:	3201      	adds	r2, #1
 80039e4:	3110      	adds	r1, #16
 80039e6:	2a07      	cmp	r2, #7
 80039e8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80039ec:	e9c3 7600 	strd	r7, r6, [r3]
 80039f0:	ddf2      	ble.n	80039d8 <_vfprintf_r+0xcd0>
 80039f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80039f4:	4621      	mov	r1, r4
 80039f6:	4648      	mov	r0, r9
 80039f8:	f003 fcb4 	bl	8007364 <__sprint_r>
 80039fc:	2800      	cmp	r0, #0
 80039fe:	f040 84a5 	bne.w	800434c <_vfprintf_r+0x1644>
 8003a02:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003a06:	ab2d      	add	r3, sp, #180	; 0xb4
 8003a08:	e7e7      	b.n	80039da <_vfprintf_r+0xcd2>
 8003a0a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003a0e:	af56      	add	r7, sp, #344	; 0x158
 8003a10:	f7ff bafb 	b.w	800300a <_vfprintf_r+0x302>
 8003a14:	f1b9 0f00 	cmp.w	r9, #0
 8003a18:	f77f af4c 	ble.w	80038b4 <_vfprintf_r+0xbac>
 8003a1c:	f1b9 0f10 	cmp.w	r9, #16
 8003a20:	4b13      	ldr	r3, [pc, #76]	; (8003a70 <_vfprintf_r+0xd68>)
 8003a22:	f340 8659 	ble.w	80046d8 <_vfprintf_r+0x19d0>
 8003a26:	4619      	mov	r1, r3
 8003a28:	4622      	mov	r2, r4
 8003a2a:	4633      	mov	r3, r6
 8003a2c:	2710      	movs	r7, #16
 8003a2e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003a32:	9c07      	ldr	r4, [sp, #28]
 8003a34:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003a36:	460e      	mov	r6, r1
 8003a38:	e007      	b.n	8003a4a <_vfprintf_r+0xd42>
 8003a3a:	3308      	adds	r3, #8
 8003a3c:	f1a9 0910 	sub.w	r9, r9, #16
 8003a40:	f1b9 0f10 	cmp.w	r9, #16
 8003a44:	f340 8353 	ble.w	80040ee <_vfprintf_r+0x13e6>
 8003a48:	3501      	adds	r5, #1
 8003a4a:	3210      	adds	r2, #16
 8003a4c:	2d07      	cmp	r5, #7
 8003a4e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003a52:	e9c3 6700 	strd	r6, r7, [r3]
 8003a56:	ddf0      	ble.n	8003a3a <_vfprintf_r+0xd32>
 8003a58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a5a:	4621      	mov	r1, r4
 8003a5c:	4658      	mov	r0, fp
 8003a5e:	f003 fc81 	bl	8007364 <__sprint_r>
 8003a62:	2800      	cmp	r0, #0
 8003a64:	f040 8472 	bne.w	800434c <_vfprintf_r+0x1644>
 8003a68:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003a6c:	ab2d      	add	r3, sp, #180	; 0xb4
 8003a6e:	e7e5      	b.n	8003a3c <_vfprintf_r+0xd34>
 8003a70:	08007a90 	.word	0x08007a90
 8003a74:	f018 0f01 	tst.w	r8, #1
 8003a78:	f47f aee0 	bne.w	800383c <_vfprintf_r+0xb34>
 8003a7c:	2201      	movs	r2, #1
 8003a7e:	2d07      	cmp	r5, #7
 8003a80:	f8cb 7000 	str.w	r7, [fp]
 8003a84:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003a88:	f8cb 2004 	str.w	r2, [fp, #4]
 8003a8c:	dc04      	bgt.n	8003a98 <_vfprintf_r+0xd90>
 8003a8e:	3302      	adds	r3, #2
 8003a90:	9309      	str	r3, [sp, #36]	; 0x24
 8003a92:	f10b 0b10 	add.w	fp, fp, #16
 8003a96:	e70d      	b.n	80038b4 <_vfprintf_r+0xbac>
 8003a98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a9a:	9907      	ldr	r1, [sp, #28]
 8003a9c:	9803      	ldr	r0, [sp, #12]
 8003a9e:	f003 fc61 	bl	8007364 <__sprint_r>
 8003aa2:	2800      	cmp	r0, #0
 8003aa4:	f47f aea8 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003aa8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003aac:	3301      	adds	r3, #1
 8003aae:	9309      	str	r3, [sp, #36]	; 0x24
 8003ab0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003ab4:	ae2d      	add	r6, sp, #180	; 0xb4
 8003ab6:	e6fd      	b.n	80038b4 <_vfprintf_r+0xbac>
 8003ab8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003aba:	9907      	ldr	r1, [sp, #28]
 8003abc:	9803      	ldr	r0, [sp, #12]
 8003abe:	f003 fc51 	bl	8007364 <__sprint_r>
 8003ac2:	2800      	cmp	r0, #0
 8003ac4:	f47f ae98 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003ac8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003acc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ace:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ad2:	f7ff baf6 	b.w	80030c2 <_vfprintf_r+0x3ba>
 8003ad6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ad8:	9907      	ldr	r1, [sp, #28]
 8003ada:	9803      	ldr	r0, [sp, #12]
 8003adc:	f003 fc42 	bl	8007364 <__sprint_r>
 8003ae0:	2800      	cmp	r0, #0
 8003ae2:	f47f ae89 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003ae6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ae8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003aec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003aee:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003af2:	443b      	add	r3, r7
 8003af4:	4699      	mov	r9, r3
 8003af6:	f040 8357 	bne.w	80041a8 <_vfprintf_r+0x14a0>
 8003afa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003afc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003afe:	4293      	cmp	r3, r2
 8003b00:	db49      	blt.n	8003b96 <_vfprintf_r+0xe8e>
 8003b02:	f018 0f01 	tst.w	r8, #1
 8003b06:	d146      	bne.n	8003b96 <_vfprintf_r+0xe8e>
 8003b08:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b0a:	18bd      	adds	r5, r7, r2
 8003b0c:	eba5 0509 	sub.w	r5, r5, r9
 8003b10:	1ad3      	subs	r3, r2, r3
 8003b12:	429d      	cmp	r5, r3
 8003b14:	bfa8      	it	ge
 8003b16:	461d      	movge	r5, r3
 8003b18:	2d00      	cmp	r5, #0
 8003b1a:	dd0d      	ble.n	8003b38 <_vfprintf_r+0xe30>
 8003b1c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003b1e:	f8cb 9000 	str.w	r9, [fp]
 8003b22:	3201      	adds	r2, #1
 8003b24:	442c      	add	r4, r5
 8003b26:	2a07      	cmp	r2, #7
 8003b28:	942c      	str	r4, [sp, #176]	; 0xb0
 8003b2a:	f8cb 5004 	str.w	r5, [fp, #4]
 8003b2e:	922b      	str	r2, [sp, #172]	; 0xac
 8003b30:	f300 8462 	bgt.w	80043f8 <_vfprintf_r+0x16f0>
 8003b34:	f10b 0b08 	add.w	fp, fp, #8
 8003b38:	2d00      	cmp	r5, #0
 8003b3a:	bfac      	ite	ge
 8003b3c:	1b5d      	subge	r5, r3, r5
 8003b3e:	461d      	movlt	r5, r3
 8003b40:	2d00      	cmp	r5, #0
 8003b42:	f77f ab32 	ble.w	80031aa <_vfprintf_r+0x4a2>
 8003b46:	2d10      	cmp	r5, #16
 8003b48:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003b4a:	4bc5      	ldr	r3, [pc, #788]	; (8003e60 <_vfprintf_r+0x1158>)
 8003b4c:	f340 80c4 	ble.w	8003cd8 <_vfprintf_r+0xfd0>
 8003b50:	4619      	mov	r1, r3
 8003b52:	2610      	movs	r6, #16
 8003b54:	4623      	mov	r3, r4
 8003b56:	9f03      	ldr	r7, [sp, #12]
 8003b58:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003b5c:	460c      	mov	r4, r1
 8003b5e:	e005      	b.n	8003b6c <_vfprintf_r+0xe64>
 8003b60:	f10b 0b08 	add.w	fp, fp, #8
 8003b64:	3d10      	subs	r5, #16
 8003b66:	2d10      	cmp	r5, #16
 8003b68:	f340 80b3 	ble.w	8003cd2 <_vfprintf_r+0xfca>
 8003b6c:	3201      	adds	r2, #1
 8003b6e:	3310      	adds	r3, #16
 8003b70:	2a07      	cmp	r2, #7
 8003b72:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003b76:	e9cb 4600 	strd	r4, r6, [fp]
 8003b7a:	ddf1      	ble.n	8003b60 <_vfprintf_r+0xe58>
 8003b7c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b7e:	4649      	mov	r1, r9
 8003b80:	4638      	mov	r0, r7
 8003b82:	f003 fbef 	bl	8007364 <__sprint_r>
 8003b86:	2800      	cmp	r0, #0
 8003b88:	f47f ae38 	bne.w	80037fc <_vfprintf_r+0xaf4>
 8003b8c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003b90:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b94:	e7e6      	b.n	8003b64 <_vfprintf_r+0xe5c>
 8003b96:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003b98:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003b9a:	f8cb 1000 	str.w	r1, [fp]
 8003b9e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003ba0:	f8cb 1004 	str.w	r1, [fp, #4]
 8003ba4:	3201      	adds	r2, #1
 8003ba6:	440c      	add	r4, r1
 8003ba8:	2a07      	cmp	r2, #7
 8003baa:	942c      	str	r4, [sp, #176]	; 0xb0
 8003bac:	922b      	str	r2, [sp, #172]	; 0xac
 8003bae:	f300 828c 	bgt.w	80040ca <_vfprintf_r+0x13c2>
 8003bb2:	f10b 0b08 	add.w	fp, fp, #8
 8003bb6:	e7a7      	b.n	8003b08 <_vfprintf_r+0xe00>
 8003bb8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003bbc:	f002 fa94 	bl	80060e8 <__retarget_lock_release_recursive>
 8003bc0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003bc4:	e628      	b.n	8003818 <_vfprintf_r+0xb10>
 8003bc6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bc8:	9907      	ldr	r1, [sp, #28]
 8003bca:	9803      	ldr	r0, [sp, #12]
 8003bcc:	f003 fbca 	bl	8007364 <__sprint_r>
 8003bd0:	2800      	cmp	r0, #0
 8003bd2:	f47f ae11 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003bd6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003bda:	ae2d      	add	r6, sp, #180	; 0xb4
 8003bdc:	e638      	b.n	8003850 <_vfprintf_r+0xb48>
 8003bde:	aa2a      	add	r2, sp, #168	; 0xa8
 8003be0:	9907      	ldr	r1, [sp, #28]
 8003be2:	9803      	ldr	r0, [sp, #12]
 8003be4:	f003 fbbe 	bl	8007364 <__sprint_r>
 8003be8:	2800      	cmp	r0, #0
 8003bea:	f47f ae05 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003bee:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003bf2:	ae2d      	add	r6, sp, #180	; 0xb4
 8003bf4:	930b      	str	r3, [sp, #44]	; 0x2c
 8003bf6:	e638      	b.n	800386a <_vfprintf_r+0xb62>
 8003bf8:	6814      	ldr	r4, [r2, #0]
 8003bfa:	9308      	str	r3, [sp, #32]
 8003bfc:	2500      	movs	r5, #0
 8003bfe:	f7ff bb95 	b.w	800332c <_vfprintf_r+0x624>
 8003c02:	6814      	ldr	r4, [r2, #0]
 8003c04:	9308      	str	r3, [sp, #32]
 8003c06:	2500      	movs	r5, #0
 8003c08:	f7ff b9ae 	b.w	8002f68 <_vfprintf_r+0x260>
 8003c0c:	680c      	ldr	r4, [r1, #0]
 8003c0e:	9208      	str	r2, [sp, #32]
 8003c10:	17e5      	asrs	r5, r4, #31
 8003c12:	4620      	mov	r0, r4
 8003c14:	4629      	mov	r1, r5
 8003c16:	f7ff b9d2 	b.w	8002fbe <_vfprintf_r+0x2b6>
 8003c1a:	6814      	ldr	r4, [r2, #0]
 8003c1c:	9108      	str	r1, [sp, #32]
 8003c1e:	2201      	movs	r2, #1
 8003c20:	2500      	movs	r5, #0
 8003c22:	f7ff bb32 	b.w	800328a <_vfprintf_r+0x582>
 8003c26:	2a01      	cmp	r2, #1
 8003c28:	f47f ab3c 	bne.w	80032a4 <_vfprintf_r+0x59c>
 8003c2c:	e68f      	b.n	800394e <_vfprintf_r+0xc46>
 8003c2e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003c32:	2200      	movs	r2, #0
 8003c34:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003c38:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003c3c:	af56      	add	r7, sp, #344	; 0x158
 8003c3e:	4692      	mov	sl, r2
 8003c40:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003c44:	461e      	mov	r6, r3
 8003c46:	e00a      	b.n	8003c5e <_vfprintf_r+0xf56>
 8003c48:	2300      	movs	r3, #0
 8003c4a:	4620      	mov	r0, r4
 8003c4c:	4629      	mov	r1, r5
 8003c4e:	220a      	movs	r2, #10
 8003c50:	f7fc fad6 	bl	8000200 <__aeabi_uldivmod>
 8003c54:	4604      	mov	r4, r0
 8003c56:	460d      	mov	r5, r1
 8003c58:	ea54 0305 	orrs.w	r3, r4, r5
 8003c5c:	d029      	beq.n	8003cb2 <_vfprintf_r+0xfaa>
 8003c5e:	220a      	movs	r2, #10
 8003c60:	2300      	movs	r3, #0
 8003c62:	4620      	mov	r0, r4
 8003c64:	4629      	mov	r1, r5
 8003c66:	f7fc facb 	bl	8000200 <__aeabi_uldivmod>
 8003c6a:	3230      	adds	r2, #48	; 0x30
 8003c6c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003c70:	f10a 0a01 	add.w	sl, sl, #1
 8003c74:	3f01      	subs	r7, #1
 8003c76:	2e00      	cmp	r6, #0
 8003c78:	d0e6      	beq.n	8003c48 <_vfprintf_r+0xf40>
 8003c7a:	f898 3000 	ldrb.w	r3, [r8]
 8003c7e:	459a      	cmp	sl, r3
 8003c80:	d1e2      	bne.n	8003c48 <_vfprintf_r+0xf40>
 8003c82:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003c86:	d0df      	beq.n	8003c48 <_vfprintf_r+0xf40>
 8003c88:	2d00      	cmp	r5, #0
 8003c8a:	bf08      	it	eq
 8003c8c:	2c0a      	cmpeq	r4, #10
 8003c8e:	d3db      	bcc.n	8003c48 <_vfprintf_r+0xf40>
 8003c90:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003c92:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003c94:	1aff      	subs	r7, r7, r3
 8003c96:	461a      	mov	r2, r3
 8003c98:	4638      	mov	r0, r7
 8003c9a:	f003 faf5 	bl	8007288 <strncpy>
 8003c9e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003ca2:	2b00      	cmp	r3, #0
 8003ca4:	f000 8496 	beq.w	80045d4 <_vfprintf_r+0x18cc>
 8003ca8:	f108 0801 	add.w	r8, r8, #1
 8003cac:	f04f 0a00 	mov.w	sl, #0
 8003cb0:	e7ca      	b.n	8003c48 <_vfprintf_r+0xf40>
 8003cb2:	9b04      	ldr	r3, [sp, #16]
 8003cb4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003cb8:	1bdb      	subs	r3, r3, r7
 8003cba:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003cbe:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003cc0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003cc4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003cc8:	9309      	str	r3, [sp, #36]	; 0x24
 8003cca:	f7ff b99e 	b.w	800300a <_vfprintf_r+0x302>
 8003cce:	46c1      	mov	r9, r8
 8003cd0:	e594      	b.n	80037fc <_vfprintf_r+0xaf4>
 8003cd2:	4621      	mov	r1, r4
 8003cd4:	461c      	mov	r4, r3
 8003cd6:	460b      	mov	r3, r1
 8003cd8:	3201      	adds	r2, #1
 8003cda:	442c      	add	r4, r5
 8003cdc:	2a07      	cmp	r2, #7
 8003cde:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ce2:	e9cb 3500 	strd	r3, r5, [fp]
 8003ce6:	f77f aa5e 	ble.w	80031a6 <_vfprintf_r+0x49e>
 8003cea:	e5ee      	b.n	80038ca <_vfprintf_r+0xbc2>
 8003cec:	f018 0f10 	tst.w	r8, #16
 8003cf0:	f040 80f8 	bne.w	8003ee4 <_vfprintf_r+0x11dc>
 8003cf4:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003cf8:	f000 8351 	beq.w	800439e <_vfprintf_r+0x1696>
 8003cfc:	9a05      	ldr	r2, [sp, #20]
 8003cfe:	801a      	strh	r2, [r3, #0]
 8003d00:	4657      	mov	r7, sl
 8003d02:	f7ff baa7 	b.w	8003254 <_vfprintf_r+0x54c>
 8003d06:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d08:	9907      	ldr	r1, [sp, #28]
 8003d0a:	9803      	ldr	r0, [sp, #12]
 8003d0c:	f003 fb2a 	bl	8007364 <__sprint_r>
 8003d10:	2800      	cmp	r0, #0
 8003d12:	f47f ad71 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003d16:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d18:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d1c:	f7ff b9f5 	b.w	800310a <_vfprintf_r+0x402>
 8003d20:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003d24:	4602      	mov	r2, r0
 8003d26:	460b      	mov	r3, r1
 8003d28:	f7fd fa00 	bl	800112c <__aeabi_dcmpun>
 8003d2c:	2800      	cmp	r0, #0
 8003d2e:	f040 8491 	bne.w	8004654 <_vfprintf_r+0x194c>
 8003d32:	2e61      	cmp	r6, #97	; 0x61
 8003d34:	f000 8111 	beq.w	8003f5a <_vfprintf_r+0x1252>
 8003d38:	2e41      	cmp	r6, #65	; 0x41
 8003d3a:	f000 8377 	beq.w	800442c <_vfprintf_r+0x1724>
 8003d3e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003d42:	f026 0220 	bic.w	r2, r6, #32
 8003d46:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003d4a:	930e      	str	r3, [sp, #56]	; 0x38
 8003d4c:	9204      	str	r2, [sp, #16]
 8003d4e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d50:	f000 842d 	beq.w	80045ae <_vfprintf_r+0x18a6>
 8003d54:	2a47      	cmp	r2, #71	; 0x47
 8003d56:	f000 8424 	beq.w	80045a2 <_vfprintf_r+0x189a>
 8003d5a:	2b00      	cmp	r3, #0
 8003d5c:	f2c0 82f9 	blt.w	8004352 <_vfprintf_r+0x164a>
 8003d60:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003d64:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003d68:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003d6c:	2e66      	cmp	r6, #102	; 0x66
 8003d6e:	f000 83eb 	beq.w	8004548 <_vfprintf_r+0x1840>
 8003d72:	2e46      	cmp	r6, #70	; 0x46
 8003d74:	f000 847e 	beq.w	8004674 <_vfprintf_r+0x196c>
 8003d78:	9b04      	ldr	r3, [sp, #16]
 8003d7a:	9803      	ldr	r0, [sp, #12]
 8003d7c:	2b45      	cmp	r3, #69	; 0x45
 8003d7e:	bf0c      	ite	eq
 8003d80:	f109 0501 	addeq.w	r5, r9, #1
 8003d84:	464d      	movne	r5, r9
 8003d86:	aa28      	add	r2, sp, #160	; 0xa0
 8003d88:	ab25      	add	r3, sp, #148	; 0x94
 8003d8a:	e9cd 3200 	strd	r3, r2, [sp]
 8003d8e:	2102      	movs	r1, #2
 8003d90:	ab24      	add	r3, sp, #144	; 0x90
 8003d92:	462a      	mov	r2, r5
 8003d94:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d98:	f000 fe3e 	bl	8004a18 <_dtoa_r>
 8003d9c:	2e67      	cmp	r6, #103	; 0x67
 8003d9e:	4607      	mov	r7, r0
 8003da0:	f040 849c 	bne.w	80046dc <_vfprintf_r+0x19d4>
 8003da4:	f018 0f01 	tst.w	r8, #1
 8003da8:	f040 83f9 	bne.w	800459e <_vfprintf_r+0x1896>
 8003dac:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003dae:	4640      	mov	r0, r8
 8003db0:	1bdb      	subs	r3, r3, r7
 8003db2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003db6:	9310      	str	r3, [sp, #64]	; 0x40
 8003db8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003dba:	9311      	str	r3, [sp, #68]	; 0x44
 8003dbc:	9b04      	ldr	r3, [sp, #16]
 8003dbe:	2b47      	cmp	r3, #71	; 0x47
 8003dc0:	f000 81e7 	beq.w	8004192 <_vfprintf_r+0x148a>
 8003dc4:	9b04      	ldr	r3, [sp, #16]
 8003dc6:	2b46      	cmp	r3, #70	; 0x46
 8003dc8:	f000 8300 	beq.w	80043cc <_vfprintf_r+0x16c4>
 8003dcc:	9904      	ldr	r1, [sp, #16]
 8003dce:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003dd0:	b2f2      	uxtb	r2, r6
 8003dd2:	2941      	cmp	r1, #65	; 0x41
 8003dd4:	bf08      	it	eq
 8003dd6:	320f      	addeq	r2, #15
 8003dd8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003ddc:	bf06      	itte	eq
 8003dde:	b2d2      	uxtbeq	r2, r2
 8003de0:	2101      	moveq	r1, #1
 8003de2:	2100      	movne	r1, #0
 8003de4:	2b00      	cmp	r3, #0
 8003de6:	9324      	str	r3, [sp, #144]	; 0x90
 8003de8:	bfb8      	it	lt
 8003dea:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003dec:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003df0:	bfba      	itte	lt
 8003df2:	f1c3 0301 	rsblt	r3, r3, #1
 8003df6:	222d      	movlt	r2, #45	; 0x2d
 8003df8:	222b      	movge	r2, #43	; 0x2b
 8003dfa:	2b09      	cmp	r3, #9
 8003dfc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003e00:	f300 83f9 	bgt.w	80045f6 <_vfprintf_r+0x18ee>
 8003e04:	2900      	cmp	r1, #0
 8003e06:	f040 8487 	bne.w	8004718 <_vfprintf_r+0x1a10>
 8003e0a:	2230      	movs	r2, #48	; 0x30
 8003e0c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003e10:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003e14:	3330      	adds	r3, #48	; 0x30
 8003e16:	7013      	strb	r3, [r2, #0]
 8003e18:	1c53      	adds	r3, r2, #1
 8003e1a:	aa26      	add	r2, sp, #152	; 0x98
 8003e1c:	1a9b      	subs	r3, r3, r2
 8003e1e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003e20:	9319      	str	r3, [sp, #100]	; 0x64
 8003e22:	2a01      	cmp	r2, #1
 8003e24:	4413      	add	r3, r2
 8003e26:	9309      	str	r3, [sp, #36]	; 0x24
 8003e28:	f340 8442 	ble.w	80046b0 <_vfprintf_r+0x19a8>
 8003e2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e2e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e30:	4413      	add	r3, r2
 8003e32:	9309      	str	r3, [sp, #36]	; 0x24
 8003e34:	2300      	movs	r3, #0
 8003e36:	930f      	str	r3, [sp, #60]	; 0x3c
 8003e38:	9314      	str	r3, [sp, #80]	; 0x50
 8003e3a:	9311      	str	r3, [sp, #68]	; 0x44
 8003e3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e3e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003e42:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e46:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003e4a:	9304      	str	r3, [sp, #16]
 8003e4c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003e4e:	2b00      	cmp	r3, #0
 8003e50:	f040 8275 	bne.w	800433e <_vfprintf_r+0x1636>
 8003e54:	4699      	mov	r9, r3
 8003e56:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003e5a:	f7ff b8e2 	b.w	8003022 <_vfprintf_r+0x31a>
 8003e5e:	bf00      	nop
 8003e60:	08007a90 	.word	0x08007a90
 8003e64:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003e66:	49bd      	ldr	r1, [pc, #756]	; (800415c <_vfprintf_r+0x1454>)
 8003e68:	f8cb 1000 	str.w	r1, [fp]
 8003e6c:	3201      	adds	r2, #1
 8003e6e:	3401      	adds	r4, #1
 8003e70:	2101      	movs	r1, #1
 8003e72:	2a07      	cmp	r2, #7
 8003e74:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003e78:	f8cb 1004 	str.w	r1, [fp, #4]
 8003e7c:	dc60      	bgt.n	8003f40 <_vfprintf_r+0x1238>
 8003e7e:	f10b 0b08 	add.w	fp, fp, #8
 8003e82:	b92b      	cbnz	r3, 8003e90 <_vfprintf_r+0x1188>
 8003e84:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003e86:	b91a      	cbnz	r2, 8003e90 <_vfprintf_r+0x1188>
 8003e88:	f018 0f01 	tst.w	r8, #1
 8003e8c:	f43f a98d 	beq.w	80031aa <_vfprintf_r+0x4a2>
 8003e90:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003e92:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003e94:	f8cb 1000 	str.w	r1, [fp]
 8003e98:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003e9a:	f8cb 1004 	str.w	r1, [fp, #4]
 8003e9e:	3201      	adds	r2, #1
 8003ea0:	440c      	add	r4, r1
 8003ea2:	2a07      	cmp	r2, #7
 8003ea4:	942c      	str	r4, [sp, #176]	; 0xb0
 8003ea6:	922b      	str	r2, [sp, #172]	; 0xac
 8003ea8:	f300 8282 	bgt.w	80043b0 <_vfprintf_r+0x16a8>
 8003eac:	f10b 0b08 	add.w	fp, fp, #8
 8003eb0:	2b00      	cmp	r3, #0
 8003eb2:	f2c0 82e7 	blt.w	8004484 <_vfprintf_r+0x177c>
 8003eb6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003eb8:	3201      	adds	r2, #1
 8003eba:	441c      	add	r4, r3
 8003ebc:	2a07      	cmp	r2, #7
 8003ebe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ec2:	e9cb 7300 	strd	r7, r3, [fp]
 8003ec6:	f77f a96e 	ble.w	80031a6 <_vfprintf_r+0x49e>
 8003eca:	e4fe      	b.n	80038ca <_vfprintf_r+0xbc2>
 8003ecc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ece:	9907      	ldr	r1, [sp, #28]
 8003ed0:	9803      	ldr	r0, [sp, #12]
 8003ed2:	f003 fa47 	bl	8007364 <__sprint_r>
 8003ed6:	2800      	cmp	r0, #0
 8003ed8:	f47f ac8e 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003edc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ee0:	f7ff bbf0 	b.w	80036c4 <_vfprintf_r+0x9bc>
 8003ee4:	9a05      	ldr	r2, [sp, #20]
 8003ee6:	601a      	str	r2, [r3, #0]
 8003ee8:	4657      	mov	r7, sl
 8003eea:	f7ff b9b3 	b.w	8003254 <_vfprintf_r+0x54c>
 8003eee:	8814      	ldrh	r4, [r2, #0]
 8003ef0:	9108      	str	r1, [sp, #32]
 8003ef2:	2500      	movs	r5, #0
 8003ef4:	2201      	movs	r2, #1
 8003ef6:	f7ff b9c8 	b.w	800328a <_vfprintf_r+0x582>
 8003efa:	8814      	ldrh	r4, [r2, #0]
 8003efc:	9308      	str	r3, [sp, #32]
 8003efe:	2500      	movs	r5, #0
 8003f00:	f7ff ba14 	b.w	800332c <_vfprintf_r+0x624>
 8003f04:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003f08:	9208      	str	r2, [sp, #32]
 8003f0a:	17e5      	asrs	r5, r4, #31
 8003f0c:	4620      	mov	r0, r4
 8003f0e:	4629      	mov	r1, r5
 8003f10:	f7ff b855 	b.w	8002fbe <_vfprintf_r+0x2b6>
 8003f14:	8814      	ldrh	r4, [r2, #0]
 8003f16:	9308      	str	r3, [sp, #32]
 8003f18:	2500      	movs	r5, #0
 8003f1a:	f7ff b825 	b.w	8002f68 <_vfprintf_r+0x260>
 8003f1e:	222d      	movs	r2, #45	; 0x2d
 8003f20:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003f24:	f7ff baa2 	b.w	800346c <_vfprintf_r+0x764>
 8003f28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f2a:	9907      	ldr	r1, [sp, #28]
 8003f2c:	9803      	ldr	r0, [sp, #12]
 8003f2e:	f003 fa19 	bl	8007364 <__sprint_r>
 8003f32:	2800      	cmp	r0, #0
 8003f34:	f47f ac60 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003f38:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f3a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f3e:	e534      	b.n	80039aa <_vfprintf_r+0xca2>
 8003f40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f42:	9907      	ldr	r1, [sp, #28]
 8003f44:	9803      	ldr	r0, [sp, #12]
 8003f46:	f003 fa0d 	bl	8007364 <__sprint_r>
 8003f4a:	2800      	cmp	r0, #0
 8003f4c:	f47f ac54 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8003f50:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003f52:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f54:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f58:	e793      	b.n	8003e82 <_vfprintf_r+0x117a>
 8003f5a:	2330      	movs	r3, #48	; 0x30
 8003f5c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003f60:	2378      	movs	r3, #120	; 0x78
 8003f62:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003f66:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003f6a:	f048 0402 	orr.w	r4, r8, #2
 8003f6e:	f300 82b0 	bgt.w	80044d2 <_vfprintf_r+0x17ca>
 8003f72:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003f76:	930e      	str	r3, [sp, #56]	; 0x38
 8003f78:	f026 0320 	bic.w	r3, r6, #32
 8003f7c:	9304      	str	r3, [sp, #16]
 8003f7e:	2200      	movs	r2, #0
 8003f80:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003f82:	920a      	str	r2, [sp, #40]	; 0x28
 8003f84:	46a0      	mov	r8, r4
 8003f86:	af3d      	add	r7, sp, #244	; 0xf4
 8003f88:	2b00      	cmp	r3, #0
 8003f8a:	f2c0 81e3 	blt.w	8004354 <_vfprintf_r+0x164c>
 8003f8e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003f92:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003f96:	2300      	movs	r3, #0
 8003f98:	930b      	str	r3, [sp, #44]	; 0x2c
 8003f9a:	2e61      	cmp	r6, #97	; 0x61
 8003f9c:	f000 8255 	beq.w	800444a <_vfprintf_r+0x1742>
 8003fa0:	2e41      	cmp	r6, #65	; 0x41
 8003fa2:	f47f aee3 	bne.w	8003d6c <_vfprintf_r+0x1064>
 8003fa6:	a824      	add	r0, sp, #144	; 0x90
 8003fa8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003fac:	f003 f8e2 	bl	8007174 <frexp>
 8003fb0:	2200      	movs	r2, #0
 8003fb2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003fb6:	ec51 0b10 	vmov	r0, r1, d0
 8003fba:	f7fc fe1d 	bl	8000bf8 <__aeabi_dmul>
 8003fbe:	2200      	movs	r2, #0
 8003fc0:	2300      	movs	r3, #0
 8003fc2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003fc6:	f7fd f87f 	bl	80010c8 <__aeabi_dcmpeq>
 8003fca:	2800      	cmp	r0, #0
 8003fcc:	f040 8305 	bne.w	80045da <_vfprintf_r+0x18d2>
 8003fd0:	4b63      	ldr	r3, [pc, #396]	; (8004160 <_vfprintf_r+0x1458>)
 8003fd2:	9309      	str	r3, [sp, #36]	; 0x24
 8003fd4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003fd8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003fdc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003fe0:	9721      	str	r7, [sp, #132]	; 0x84
 8003fe2:	46b9      	mov	r9, r7
 8003fe4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003fe8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003fec:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003ff0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003ff4:	e003      	b.n	8003ffe <_vfprintf_r+0x12f6>
 8003ff6:	f7fd f867 	bl	80010c8 <__aeabi_dcmpeq>
 8003ffa:	bb20      	cbnz	r0, 8004046 <_vfprintf_r+0x133e>
 8003ffc:	46a9      	mov	r9, r5
 8003ffe:	2200      	movs	r2, #0
 8004000:	4b58      	ldr	r3, [pc, #352]	; (8004164 <_vfprintf_r+0x145c>)
 8004002:	4630      	mov	r0, r6
 8004004:	4639      	mov	r1, r7
 8004006:	f7fc fdf7 	bl	8000bf8 <__aeabi_dmul>
 800400a:	460f      	mov	r7, r1
 800400c:	4606      	mov	r6, r0
 800400e:	f7fd f8a3 	bl	8001158 <__aeabi_d2iz>
 8004012:	4680      	mov	r8, r0
 8004014:	f7fc fd86 	bl	8000b24 <__aeabi_i2d>
 8004018:	4602      	mov	r2, r0
 800401a:	460b      	mov	r3, r1
 800401c:	4630      	mov	r0, r6
 800401e:	4639      	mov	r1, r7
 8004020:	f7fc fc32 	bl	8000888 <__aeabi_dsub>
 8004024:	464d      	mov	r5, r9
 8004026:	f81a c008 	ldrb.w	ip, [sl, r8]
 800402a:	f805 cb01 	strb.w	ip, [r5], #1
 800402e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8004032:	46a3      	mov	fp, r4
 8004034:	4606      	mov	r6, r0
 8004036:	460f      	mov	r7, r1
 8004038:	f04f 0200 	mov.w	r2, #0
 800403c:	f04f 0300 	mov.w	r3, #0
 8004040:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8004044:	d1d7      	bne.n	8003ff6 <_vfprintf_r+0x12ee>
 8004046:	4630      	mov	r0, r6
 8004048:	4639      	mov	r1, r7
 800404a:	2200      	movs	r2, #0
 800404c:	4b46      	ldr	r3, [pc, #280]	; (8004168 <_vfprintf_r+0x1460>)
 800404e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8004052:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8004054:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8004058:	4644      	mov	r4, r8
 800405a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800405e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8004062:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8004066:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800406a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800406c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004070:	f7fd f852 	bl	8001118 <__aeabi_dcmpgt>
 8004074:	2800      	cmp	r0, #0
 8004076:	f040 8176 	bne.w	8004366 <_vfprintf_r+0x165e>
 800407a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800407e:	2200      	movs	r2, #0
 8004080:	4b39      	ldr	r3, [pc, #228]	; (8004168 <_vfprintf_r+0x1460>)
 8004082:	f7fd f821 	bl	80010c8 <__aeabi_dcmpeq>
 8004086:	b110      	cbz	r0, 800408e <_vfprintf_r+0x1386>
 8004088:	07e2      	lsls	r2, r4, #31
 800408a:	f100 816c 	bmi.w	8004366 <_vfprintf_r+0x165e>
 800408e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004090:	2b00      	cmp	r3, #0
 8004092:	db07      	blt.n	80040a4 <_vfprintf_r+0x139c>
 8004094:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004096:	3301      	adds	r3, #1
 8004098:	442b      	add	r3, r5
 800409a:	2230      	movs	r2, #48	; 0x30
 800409c:	f805 2b01 	strb.w	r2, [r5], #1
 80040a0:	42ab      	cmp	r3, r5
 80040a2:	d1fb      	bne.n	800409c <_vfprintf_r+0x1394>
 80040a4:	1beb      	subs	r3, r5, r7
 80040a6:	4640      	mov	r0, r8
 80040a8:	9310      	str	r3, [sp, #64]	; 0x40
 80040aa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80040ae:	e683      	b.n	8003db8 <_vfprintf_r+0x10b0>
 80040b0:	f8cd 9010 	str.w	r9, [sp, #16]
 80040b4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80040b8:	9408      	str	r4, [sp, #32]
 80040ba:	4681      	mov	r9, r0
 80040bc:	900f      	str	r0, [sp, #60]	; 0x3c
 80040be:	9014      	str	r0, [sp, #80]	; 0x50
 80040c0:	9011      	str	r0, [sp, #68]	; 0x44
 80040c2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80040c6:	f7fe bfac 	b.w	8003022 <_vfprintf_r+0x31a>
 80040ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80040cc:	9907      	ldr	r1, [sp, #28]
 80040ce:	9803      	ldr	r0, [sp, #12]
 80040d0:	f003 f948 	bl	8007364 <__sprint_r>
 80040d4:	2800      	cmp	r0, #0
 80040d6:	f47f ab8f 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 80040da:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80040dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80040de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80040e2:	e511      	b.n	8003b08 <_vfprintf_r+0xe00>
 80040e4:	4252      	negs	r2, r2
 80040e6:	9206      	str	r2, [sp, #24]
 80040e8:	9308      	str	r3, [sp, #32]
 80040ea:	f7ff b96d 	b.w	80033c8 <_vfprintf_r+0x6c0>
 80040ee:	4614      	mov	r4, r2
 80040f0:	4632      	mov	r2, r6
 80040f2:	461e      	mov	r6, r3
 80040f4:	4613      	mov	r3, r2
 80040f6:	462a      	mov	r2, r5
 80040f8:	3201      	adds	r2, #1
 80040fa:	9209      	str	r2, [sp, #36]	; 0x24
 80040fc:	f106 0208 	add.w	r2, r6, #8
 8004100:	e9c6 3900 	strd	r3, r9, [r6]
 8004104:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004106:	932b      	str	r3, [sp, #172]	; 0xac
 8004108:	444c      	add	r4, r9
 800410a:	2b07      	cmp	r3, #7
 800410c:	942c      	str	r4, [sp, #176]	; 0xb0
 800410e:	f73f acc3 	bgt.w	8003a98 <_vfprintf_r+0xd90>
 8004112:	3301      	adds	r3, #1
 8004114:	9309      	str	r3, [sp, #36]	; 0x24
 8004116:	f102 0b08 	add.w	fp, r2, #8
 800411a:	4616      	mov	r6, r2
 800411c:	f7ff bbca 	b.w	80038b4 <_vfprintf_r+0xbac>
 8004120:	aa2a      	add	r2, sp, #168	; 0xa8
 8004122:	9907      	ldr	r1, [sp, #28]
 8004124:	9803      	ldr	r0, [sp, #12]
 8004126:	f003 f91d 	bl	8007364 <__sprint_r>
 800412a:	2800      	cmp	r0, #0
 800412c:	f47f ab64 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8004130:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004132:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004136:	f7ff bade 	b.w	80036f6 <_vfprintf_r+0x9ee>
 800413a:	464b      	mov	r3, r9
 800413c:	2b06      	cmp	r3, #6
 800413e:	bf28      	it	cs
 8004140:	2306      	movcs	r3, #6
 8004142:	46b9      	mov	r9, r7
 8004144:	970f      	str	r7, [sp, #60]	; 0x3c
 8004146:	9714      	str	r7, [sp, #80]	; 0x50
 8004148:	9711      	str	r7, [sp, #68]	; 0x44
 800414a:	970a      	str	r7, [sp, #40]	; 0x28
 800414c:	463a      	mov	r2, r7
 800414e:	9304      	str	r3, [sp, #16]
 8004150:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8004154:	4f05      	ldr	r7, [pc, #20]	; (800416c <_vfprintf_r+0x1464>)
 8004156:	f7fe bf64 	b.w	8003022 <_vfprintf_r+0x31a>
 800415a:	bf00      	nop
 800415c:	08007a7c 	.word	0x08007a7c
 8004160:	08007a60 	.word	0x08007a60
 8004164:	40300000 	.word	0x40300000
 8004168:	3fe00000 	.word	0x3fe00000
 800416c:	08007a74 	.word	0x08007a74
 8004170:	460c      	mov	r4, r1
 8004172:	4639      	mov	r1, r7
 8004174:	465f      	mov	r7, fp
 8004176:	469b      	mov	fp, r3
 8004178:	460b      	mov	r3, r1
 800417a:	3201      	adds	r2, #1
 800417c:	442c      	add	r4, r5
 800417e:	2a07      	cmp	r2, #7
 8004180:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004184:	e9cb 3500 	strd	r3, r5, [fp]
 8004188:	f73f aca5 	bgt.w	8003ad6 <_vfprintf_r+0xdce>
 800418c:	f10b 0b08 	add.w	fp, fp, #8
 8004190:	e4ac      	b.n	8003aec <_vfprintf_r+0xde4>
 8004192:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004194:	1cda      	adds	r2, r3, #3
 8004196:	db02      	blt.n	800419e <_vfprintf_r+0x1496>
 8004198:	4599      	cmp	r9, r3
 800419a:	f280 80b5 	bge.w	8004308 <_vfprintf_r+0x1600>
 800419e:	3e02      	subs	r6, #2
 80041a0:	f026 0320 	bic.w	r3, r6, #32
 80041a4:	9304      	str	r3, [sp, #16]
 80041a6:	e611      	b.n	8003dcc <_vfprintf_r+0x10c4>
 80041a8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80041aa:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80041ae:	465a      	mov	r2, fp
 80041b0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80041b4:	18fb      	adds	r3, r7, r3
 80041b6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80041ba:	970c      	str	r7, [sp, #48]	; 0x30
 80041bc:	4eaf      	ldr	r6, [pc, #700]	; (800447c <_vfprintf_r+0x1774>)
 80041be:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80041c2:	9309      	str	r3, [sp, #36]	; 0x24
 80041c4:	464f      	mov	r7, r9
 80041c6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80041ca:	4621      	mov	r1, r4
 80041cc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80041ce:	2b00      	cmp	r3, #0
 80041d0:	d05b      	beq.n	800428a <_vfprintf_r+0x1582>
 80041d2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80041d4:	2b00      	cmp	r3, #0
 80041d6:	d154      	bne.n	8004282 <_vfprintf_r+0x157a>
 80041d8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80041da:	3b01      	subs	r3, #1
 80041dc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80041e0:	9314      	str	r3, [sp, #80]	; 0x50
 80041e2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80041e4:	9818      	ldr	r0, [sp, #96]	; 0x60
 80041e6:	6010      	str	r0, [r2, #0]
 80041e8:	3301      	adds	r3, #1
 80041ea:	4459      	add	r1, fp
 80041ec:	2b07      	cmp	r3, #7
 80041ee:	912c      	str	r1, [sp, #176]	; 0xb0
 80041f0:	f8c2 b004 	str.w	fp, [r2, #4]
 80041f4:	932b      	str	r3, [sp, #172]	; 0xac
 80041f6:	dc68      	bgt.n	80042ca <_vfprintf_r+0x15c2>
 80041f8:	3208      	adds	r2, #8
 80041fa:	9809      	ldr	r0, [sp, #36]	; 0x24
 80041fc:	f898 3000 	ldrb.w	r3, [r8]
 8004200:	1bc5      	subs	r5, r0, r7
 8004202:	429d      	cmp	r5, r3
 8004204:	bfa8      	it	ge
 8004206:	461d      	movge	r5, r3
 8004208:	2d00      	cmp	r5, #0
 800420a:	dd0b      	ble.n	8004224 <_vfprintf_r+0x151c>
 800420c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800420e:	6017      	str	r7, [r2, #0]
 8004210:	3301      	adds	r3, #1
 8004212:	4429      	add	r1, r5
 8004214:	2b07      	cmp	r3, #7
 8004216:	912c      	str	r1, [sp, #176]	; 0xb0
 8004218:	6055      	str	r5, [r2, #4]
 800421a:	932b      	str	r3, [sp, #172]	; 0xac
 800421c:	dc5e      	bgt.n	80042dc <_vfprintf_r+0x15d4>
 800421e:	f898 3000 	ldrb.w	r3, [r8]
 8004222:	3208      	adds	r2, #8
 8004224:	2d00      	cmp	r5, #0
 8004226:	bfac      	ite	ge
 8004228:	1b5d      	subge	r5, r3, r5
 800422a:	461d      	movlt	r5, r3
 800422c:	2d00      	cmp	r5, #0
 800422e:	dd26      	ble.n	800427e <_vfprintf_r+0x1576>
 8004230:	2d10      	cmp	r5, #16
 8004232:	982b      	ldr	r0, [sp, #172]	; 0xac
 8004234:	dd3c      	ble.n	80042b0 <_vfprintf_r+0x15a8>
 8004236:	2410      	movs	r4, #16
 8004238:	e003      	b.n	8004242 <_vfprintf_r+0x153a>
 800423a:	3208      	adds	r2, #8
 800423c:	3d10      	subs	r5, #16
 800423e:	2d10      	cmp	r5, #16
 8004240:	dd36      	ble.n	80042b0 <_vfprintf_r+0x15a8>
 8004242:	3001      	adds	r0, #1
 8004244:	3110      	adds	r1, #16
 8004246:	2807      	cmp	r0, #7
 8004248:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800424c:	e9c2 6400 	strd	r6, r4, [r2]
 8004250:	ddf3      	ble.n	800423a <_vfprintf_r+0x1532>
 8004252:	aa2a      	add	r2, sp, #168	; 0xa8
 8004254:	4651      	mov	r1, sl
 8004256:	4648      	mov	r0, r9
 8004258:	f003 f884 	bl	8007364 <__sprint_r>
 800425c:	2800      	cmp	r0, #0
 800425e:	d150      	bne.n	8004302 <_vfprintf_r+0x15fa>
 8004260:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8004264:	aa2d      	add	r2, sp, #180	; 0xb4
 8004266:	e7e9      	b.n	800423c <_vfprintf_r+0x1534>
 8004268:	aa2a      	add	r2, sp, #168	; 0xa8
 800426a:	4651      	mov	r1, sl
 800426c:	4648      	mov	r0, r9
 800426e:	f003 f879 	bl	8007364 <__sprint_r>
 8004272:	2800      	cmp	r0, #0
 8004274:	d145      	bne.n	8004302 <_vfprintf_r+0x15fa>
 8004276:	f898 3000 	ldrb.w	r3, [r8]
 800427a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800427c:	aa2d      	add	r2, sp, #180	; 0xb4
 800427e:	441f      	add	r7, r3
 8004280:	e7a4      	b.n	80041cc <_vfprintf_r+0x14c4>
 8004282:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004284:	3b01      	subs	r3, #1
 8004286:	930f      	str	r3, [sp, #60]	; 0x3c
 8004288:	e7ab      	b.n	80041e2 <_vfprintf_r+0x14da>
 800428a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800428c:	2b00      	cmp	r3, #0
 800428e:	d1f8      	bne.n	8004282 <_vfprintf_r+0x157a>
 8004290:	46b9      	mov	r9, r7
 8004292:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004294:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8004296:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 800429a:	18fb      	adds	r3, r7, r3
 800429c:	4599      	cmp	r9, r3
 800429e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80042a2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80042a6:	4693      	mov	fp, r2
 80042a8:	460c      	mov	r4, r1
 80042aa:	bf28      	it	cs
 80042ac:	4699      	movcs	r9, r3
 80042ae:	e424      	b.n	8003afa <_vfprintf_r+0xdf2>
 80042b0:	3001      	adds	r0, #1
 80042b2:	4429      	add	r1, r5
 80042b4:	2807      	cmp	r0, #7
 80042b6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80042ba:	e9c2 6500 	strd	r6, r5, [r2]
 80042be:	dcd3      	bgt.n	8004268 <_vfprintf_r+0x1560>
 80042c0:	f898 3000 	ldrb.w	r3, [r8]
 80042c4:	3208      	adds	r2, #8
 80042c6:	441f      	add	r7, r3
 80042c8:	e780      	b.n	80041cc <_vfprintf_r+0x14c4>
 80042ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80042cc:	4651      	mov	r1, sl
 80042ce:	4648      	mov	r0, r9
 80042d0:	f003 f848 	bl	8007364 <__sprint_r>
 80042d4:	b9a8      	cbnz	r0, 8004302 <_vfprintf_r+0x15fa>
 80042d6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80042d8:	aa2d      	add	r2, sp, #180	; 0xb4
 80042da:	e78e      	b.n	80041fa <_vfprintf_r+0x14f2>
 80042dc:	aa2a      	add	r2, sp, #168	; 0xa8
 80042de:	4651      	mov	r1, sl
 80042e0:	4648      	mov	r0, r9
 80042e2:	f003 f83f 	bl	8007364 <__sprint_r>
 80042e6:	b960      	cbnz	r0, 8004302 <_vfprintf_r+0x15fa>
 80042e8:	f898 3000 	ldrb.w	r3, [r8]
 80042ec:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80042ee:	aa2d      	add	r2, sp, #180	; 0xb4
 80042f0:	e798      	b.n	8004224 <_vfprintf_r+0x151c>
 80042f2:	4638      	mov	r0, r7
 80042f4:	f7fc fa04 	bl	8000700 <strlen>
 80042f8:	46a9      	mov	r9, r5
 80042fa:	4603      	mov	r3, r0
 80042fc:	9009      	str	r0, [sp, #36]	; 0x24
 80042fe:	f7ff b8f4 	b.w	80034ea <_vfprintf_r+0x7e2>
 8004302:	46d1      	mov	r9, sl
 8004304:	f7ff ba7a 	b.w	80037fc <_vfprintf_r+0xaf4>
 8004308:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800430a:	4619      	mov	r1, r3
 800430c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800430e:	4299      	cmp	r1, r3
 8004310:	f300 8082 	bgt.w	8004418 <_vfprintf_r+0x1710>
 8004314:	07c4      	lsls	r4, r0, #31
 8004316:	f140 816b 	bpl.w	80045f0 <_vfprintf_r+0x18e8>
 800431a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800431c:	4413      	add	r3, r2
 800431e:	9309      	str	r3, [sp, #36]	; 0x24
 8004320:	0541      	lsls	r1, r0, #21
 8004322:	d503      	bpl.n	800432c <_vfprintf_r+0x1624>
 8004324:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004326:	2b00      	cmp	r3, #0
 8004328:	f300 80e6 	bgt.w	80044f8 <_vfprintf_r+0x17f0>
 800432c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800432e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004332:	9304      	str	r3, [sp, #16]
 8004334:	2667      	movs	r6, #103	; 0x67
 8004336:	2300      	movs	r3, #0
 8004338:	930f      	str	r3, [sp, #60]	; 0x3c
 800433a:	9314      	str	r3, [sp, #80]	; 0x50
 800433c:	e586      	b.n	8003e4c <_vfprintf_r+0x1144>
 800433e:	222d      	movs	r2, #45	; 0x2d
 8004340:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004344:	f04f 0900 	mov.w	r9, #0
 8004348:	f7fe be6c 	b.w	8003024 <_vfprintf_r+0x31c>
 800434c:	46a1      	mov	r9, r4
 800434e:	f7ff ba55 	b.w	80037fc <_vfprintf_r+0xaf4>
 8004352:	900a      	str	r0, [sp, #40]	; 0x28
 8004354:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8004358:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800435c:	931f      	str	r3, [sp, #124]	; 0x7c
 800435e:	232d      	movs	r3, #45	; 0x2d
 8004360:	911e      	str	r1, [sp, #120]	; 0x78
 8004362:	930b      	str	r3, [sp, #44]	; 0x2c
 8004364:	e619      	b.n	8003f9a <_vfprintf_r+0x1292>
 8004366:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004368:	9328      	str	r3, [sp, #160]	; 0xa0
 800436a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800436c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8004370:	7bd9      	ldrb	r1, [r3, #15]
 8004372:	4291      	cmp	r1, r2
 8004374:	462b      	mov	r3, r5
 8004376:	d109      	bne.n	800438c <_vfprintf_r+0x1684>
 8004378:	2030      	movs	r0, #48	; 0x30
 800437a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800437e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004380:	1e5a      	subs	r2, r3, #1
 8004382:	9228      	str	r2, [sp, #160]	; 0xa0
 8004384:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004388:	4291      	cmp	r1, r2
 800438a:	d0f6      	beq.n	800437a <_vfprintf_r+0x1672>
 800438c:	2a39      	cmp	r2, #57	; 0x39
 800438e:	bf0b      	itete	eq
 8004390:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8004392:	3201      	addne	r2, #1
 8004394:	7a92      	ldrbeq	r2, [r2, #10]
 8004396:	b2d2      	uxtbne	r2, r2
 8004398:	f803 2c01 	strb.w	r2, [r3, #-1]
 800439c:	e682      	b.n	80040a4 <_vfprintf_r+0x139c>
 800439e:	f418 7f00 	tst.w	r8, #512	; 0x200
 80043a2:	f43f ad9f 	beq.w	8003ee4 <_vfprintf_r+0x11dc>
 80043a6:	9a05      	ldr	r2, [sp, #20]
 80043a8:	701a      	strb	r2, [r3, #0]
 80043aa:	4657      	mov	r7, sl
 80043ac:	f7fe bf52 	b.w	8003254 <_vfprintf_r+0x54c>
 80043b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80043b2:	9907      	ldr	r1, [sp, #28]
 80043b4:	9803      	ldr	r0, [sp, #12]
 80043b6:	f002 ffd5 	bl	8007364 <__sprint_r>
 80043ba:	2800      	cmp	r0, #0
 80043bc:	f47f aa1c 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 80043c0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80043c2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80043c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80043ca:	e571      	b.n	8003eb0 <_vfprintf_r+0x11a8>
 80043cc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80043ce:	2b00      	cmp	r3, #0
 80043d0:	f340 8164 	ble.w	800469c <_vfprintf_r+0x1994>
 80043d4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80043d6:	f1b9 0f00 	cmp.w	r9, #0
 80043da:	f040 8103 	bne.w	80045e4 <_vfprintf_r+0x18dc>
 80043de:	07c6      	lsls	r6, r0, #31
 80043e0:	f100 8100 	bmi.w	80045e4 <_vfprintf_r+0x18dc>
 80043e4:	9309      	str	r3, [sp, #36]	; 0x24
 80043e6:	2666      	movs	r6, #102	; 0x66
 80043e8:	0543      	lsls	r3, r0, #21
 80043ea:	f100 8086 	bmi.w	80044fa <_vfprintf_r+0x17f2>
 80043ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80043f0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80043f4:	9304      	str	r3, [sp, #16]
 80043f6:	e79e      	b.n	8004336 <_vfprintf_r+0x162e>
 80043f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80043fa:	9907      	ldr	r1, [sp, #28]
 80043fc:	9803      	ldr	r0, [sp, #12]
 80043fe:	f002 ffb1 	bl	8007364 <__sprint_r>
 8004402:	2800      	cmp	r0, #0
 8004404:	f47f a9f8 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8004408:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800440a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800440c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800440e:	1ad3      	subs	r3, r2, r3
 8004410:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004414:	f7ff bb90 	b.w	8003b38 <_vfprintf_r+0xe30>
 8004418:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800441a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800441c:	4413      	add	r3, r2
 800441e:	9309      	str	r3, [sp, #36]	; 0x24
 8004420:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004422:	2b00      	cmp	r3, #0
 8004424:	f340 8149 	ble.w	80046ba <_vfprintf_r+0x19b2>
 8004428:	2667      	movs	r6, #103	; 0x67
 800442a:	e7dd      	b.n	80043e8 <_vfprintf_r+0x16e0>
 800442c:	2330      	movs	r3, #48	; 0x30
 800442e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004432:	2358      	movs	r3, #88	; 0x58
 8004434:	e595      	b.n	8003f62 <_vfprintf_r+0x125a>
 8004436:	9803      	ldr	r0, [sp, #12]
 8004438:	aa2a      	add	r2, sp, #168	; 0xa8
 800443a:	4649      	mov	r1, r9
 800443c:	f002 ff92 	bl	8007364 <__sprint_r>
 8004440:	2800      	cmp	r0, #0
 8004442:	f47f a9e0 	bne.w	8003806 <_vfprintf_r+0xafe>
 8004446:	f7fe bf0f 	b.w	8003268 <_vfprintf_r+0x560>
 800444a:	a824      	add	r0, sp, #144	; 0x90
 800444c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004450:	f002 fe90 	bl	8007174 <frexp>
 8004454:	2200      	movs	r2, #0
 8004456:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800445a:	ec51 0b10 	vmov	r0, r1, d0
 800445e:	f7fc fbcb 	bl	8000bf8 <__aeabi_dmul>
 8004462:	2200      	movs	r2, #0
 8004464:	2300      	movs	r3, #0
 8004466:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800446a:	f7fc fe2d 	bl	80010c8 <__aeabi_dcmpeq>
 800446e:	b108      	cbz	r0, 8004474 <_vfprintf_r+0x176c>
 8004470:	2301      	movs	r3, #1
 8004472:	9324      	str	r3, [sp, #144]	; 0x90
 8004474:	4b02      	ldr	r3, [pc, #8]	; (8004480 <_vfprintf_r+0x1778>)
 8004476:	9309      	str	r3, [sp, #36]	; 0x24
 8004478:	e5ac      	b.n	8003fd4 <_vfprintf_r+0x12cc>
 800447a:	bf00      	nop
 800447c:	08007a90 	.word	0x08007a90
 8004480:	08007a4c 	.word	0x08007a4c
 8004484:	425d      	negs	r5, r3
 8004486:	3310      	adds	r3, #16
 8004488:	4bb9      	ldr	r3, [pc, #740]	; (8004770 <_vfprintf_r+0x1a68>)
 800448a:	f280 8097 	bge.w	80045bc <_vfprintf_r+0x18b4>
 800448e:	4619      	mov	r1, r3
 8004490:	2610      	movs	r6, #16
 8004492:	4623      	mov	r3, r4
 8004494:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004498:	460c      	mov	r4, r1
 800449a:	e005      	b.n	80044a8 <_vfprintf_r+0x17a0>
 800449c:	f10b 0b08 	add.w	fp, fp, #8
 80044a0:	3d10      	subs	r5, #16
 80044a2:	2d10      	cmp	r5, #16
 80044a4:	f340 8087 	ble.w	80045b6 <_vfprintf_r+0x18ae>
 80044a8:	3201      	adds	r2, #1
 80044aa:	3310      	adds	r3, #16
 80044ac:	2a07      	cmp	r2, #7
 80044ae:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80044b2:	e9cb 4600 	strd	r4, r6, [fp]
 80044b6:	ddf1      	ble.n	800449c <_vfprintf_r+0x1794>
 80044b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80044ba:	9907      	ldr	r1, [sp, #28]
 80044bc:	4648      	mov	r0, r9
 80044be:	f002 ff51 	bl	8007364 <__sprint_r>
 80044c2:	2800      	cmp	r0, #0
 80044c4:	f47f a998 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 80044c8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80044cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80044d0:	e7e6      	b.n	80044a0 <_vfprintf_r+0x1798>
 80044d2:	f109 0101 	add.w	r1, r9, #1
 80044d6:	9803      	ldr	r0, [sp, #12]
 80044d8:	f001 fe80 	bl	80061dc <_malloc_r>
 80044dc:	4607      	mov	r7, r0
 80044de:	2800      	cmp	r0, #0
 80044e0:	f000 813b 	beq.w	800475a <_vfprintf_r+0x1a52>
 80044e4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80044e8:	930e      	str	r3, [sp, #56]	; 0x38
 80044ea:	f026 0320 	bic.w	r3, r6, #32
 80044ee:	9304      	str	r3, [sp, #16]
 80044f0:	46a0      	mov	r8, r4
 80044f2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80044f4:	900a      	str	r0, [sp, #40]	; 0x28
 80044f6:	e547      	b.n	8003f88 <_vfprintf_r+0x1280>
 80044f8:	2667      	movs	r6, #103	; 0x67
 80044fa:	981a      	ldr	r0, [sp, #104]	; 0x68
 80044fc:	2200      	movs	r2, #0
 80044fe:	920f      	str	r2, [sp, #60]	; 0x3c
 8004500:	9214      	str	r2, [sp, #80]	; 0x50
 8004502:	7803      	ldrb	r3, [r0, #0]
 8004504:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004506:	2bff      	cmp	r3, #255	; 0xff
 8004508:	d00c      	beq.n	8004524 <_vfprintf_r+0x181c>
 800450a:	4293      	cmp	r3, r2
 800450c:	da0a      	bge.n	8004524 <_vfprintf_r+0x181c>
 800450e:	7841      	ldrb	r1, [r0, #1]
 8004510:	1ad2      	subs	r2, r2, r3
 8004512:	b1a9      	cbz	r1, 8004540 <_vfprintf_r+0x1838>
 8004514:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004516:	3301      	adds	r3, #1
 8004518:	9314      	str	r3, [sp, #80]	; 0x50
 800451a:	460b      	mov	r3, r1
 800451c:	2bff      	cmp	r3, #255	; 0xff
 800451e:	f100 0001 	add.w	r0, r0, #1
 8004522:	d1f2      	bne.n	800450a <_vfprintf_r+0x1802>
 8004524:	9211      	str	r2, [sp, #68]	; 0x44
 8004526:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004528:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800452a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800452c:	901a      	str	r0, [sp, #104]	; 0x68
 800452e:	4413      	add	r3, r2
 8004530:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004532:	fb02 1303 	mla	r3, r2, r3, r1
 8004536:	9309      	str	r3, [sp, #36]	; 0x24
 8004538:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800453c:	9304      	str	r3, [sp, #16]
 800453e:	e485      	b.n	8003e4c <_vfprintf_r+0x1144>
 8004540:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004542:	3101      	adds	r1, #1
 8004544:	910f      	str	r1, [sp, #60]	; 0x3c
 8004546:	e7de      	b.n	8004506 <_vfprintf_r+0x17fe>
 8004548:	aa28      	add	r2, sp, #160	; 0xa0
 800454a:	ab25      	add	r3, sp, #148	; 0x94
 800454c:	e9cd 3200 	strd	r3, r2, [sp]
 8004550:	2103      	movs	r1, #3
 8004552:	ab24      	add	r3, sp, #144	; 0x90
 8004554:	464a      	mov	r2, r9
 8004556:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800455a:	9803      	ldr	r0, [sp, #12]
 800455c:	f000 fa5c 	bl	8004a18 <_dtoa_r>
 8004560:	464d      	mov	r5, r9
 8004562:	4607      	mov	r7, r0
 8004564:	eb00 0409 	add.w	r4, r0, r9
 8004568:	783b      	ldrb	r3, [r7, #0]
 800456a:	2b30      	cmp	r3, #48	; 0x30
 800456c:	f000 80be 	beq.w	80046ec <_vfprintf_r+0x19e4>
 8004570:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8004572:	442c      	add	r4, r5
 8004574:	2200      	movs	r2, #0
 8004576:	2300      	movs	r3, #0
 8004578:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800457c:	f7fc fda4 	bl	80010c8 <__aeabi_dcmpeq>
 8004580:	b108      	cbz	r0, 8004586 <_vfprintf_r+0x187e>
 8004582:	4623      	mov	r3, r4
 8004584:	e413      	b.n	8003dae <_vfprintf_r+0x10a6>
 8004586:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004588:	42a3      	cmp	r3, r4
 800458a:	f4bf ac10 	bcs.w	8003dae <_vfprintf_r+0x10a6>
 800458e:	2130      	movs	r1, #48	; 0x30
 8004590:	1c5a      	adds	r2, r3, #1
 8004592:	9228      	str	r2, [sp, #160]	; 0xa0
 8004594:	7019      	strb	r1, [r3, #0]
 8004596:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004598:	429c      	cmp	r4, r3
 800459a:	d8f9      	bhi.n	8004590 <_vfprintf_r+0x1888>
 800459c:	e407      	b.n	8003dae <_vfprintf_r+0x10a6>
 800459e:	197c      	adds	r4, r7, r5
 80045a0:	e7e8      	b.n	8004574 <_vfprintf_r+0x186c>
 80045a2:	f1b9 0f00 	cmp.w	r9, #0
 80045a6:	f000 8092 	beq.w	80046ce <_vfprintf_r+0x19c6>
 80045aa:	900a      	str	r0, [sp, #40]	; 0x28
 80045ac:	e4ec      	b.n	8003f88 <_vfprintf_r+0x1280>
 80045ae:	900a      	str	r0, [sp, #40]	; 0x28
 80045b0:	f04f 0906 	mov.w	r9, #6
 80045b4:	e4e8      	b.n	8003f88 <_vfprintf_r+0x1280>
 80045b6:	4621      	mov	r1, r4
 80045b8:	461c      	mov	r4, r3
 80045ba:	460b      	mov	r3, r1
 80045bc:	3201      	adds	r2, #1
 80045be:	442c      	add	r4, r5
 80045c0:	2a07      	cmp	r2, #7
 80045c2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80045c6:	e9cb 3500 	strd	r3, r5, [fp]
 80045ca:	f300 80a9 	bgt.w	8004720 <_vfprintf_r+0x1a18>
 80045ce:	f10b 0b08 	add.w	fp, fp, #8
 80045d2:	e470      	b.n	8003eb6 <_vfprintf_r+0x11ae>
 80045d4:	469a      	mov	sl, r3
 80045d6:	f7ff bb37 	b.w	8003c48 <_vfprintf_r+0xf40>
 80045da:	2301      	movs	r3, #1
 80045dc:	9324      	str	r3, [sp, #144]	; 0x90
 80045de:	4b65      	ldr	r3, [pc, #404]	; (8004774 <_vfprintf_r+0x1a6c>)
 80045e0:	9309      	str	r3, [sp, #36]	; 0x24
 80045e2:	e4f7      	b.n	8003fd4 <_vfprintf_r+0x12cc>
 80045e4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80045e6:	4413      	add	r3, r2
 80045e8:	444b      	add	r3, r9
 80045ea:	9309      	str	r3, [sp, #36]	; 0x24
 80045ec:	2666      	movs	r6, #102	; 0x66
 80045ee:	e6fb      	b.n	80043e8 <_vfprintf_r+0x16e0>
 80045f0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80045f2:	9309      	str	r3, [sp, #36]	; 0x24
 80045f4:	e694      	b.n	8004320 <_vfprintf_r+0x1618>
 80045f6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80045fa:	4664      	mov	r4, ip
 80045fc:	4d5e      	ldr	r5, [pc, #376]	; (8004778 <_vfprintf_r+0x1a70>)
 80045fe:	e000      	b.n	8004602 <_vfprintf_r+0x18fa>
 8004600:	4614      	mov	r4, r2
 8004602:	fba5 1203 	umull	r1, r2, r5, r3
 8004606:	08d2      	lsrs	r2, r2, #3
 8004608:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800460c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004610:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004614:	4613      	mov	r3, r2
 8004616:	2b09      	cmp	r3, #9
 8004618:	f804 1c01 	strb.w	r1, [r4, #-1]
 800461c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004620:	dcee      	bgt.n	8004600 <_vfprintf_r+0x18f8>
 8004622:	3330      	adds	r3, #48	; 0x30
 8004624:	3c02      	subs	r4, #2
 8004626:	b2db      	uxtb	r3, r3
 8004628:	45a4      	cmp	ip, r4
 800462a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800462e:	f240 8090 	bls.w	8004752 <_vfprintf_r+0x1a4a>
 8004632:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004636:	4611      	mov	r1, r2
 8004638:	e001      	b.n	800463e <_vfprintf_r+0x1936>
 800463a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800463e:	f804 3b01 	strb.w	r3, [r4], #1
 8004642:	458c      	cmp	ip, r1
 8004644:	d1f9      	bne.n	800463a <_vfprintf_r+0x1932>
 8004646:	ab2a      	add	r3, sp, #168	; 0xa8
 8004648:	1a9b      	subs	r3, r3, r2
 800464a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800464e:	4413      	add	r3, r2
 8004650:	f7ff bbe3 	b.w	8003e1a <_vfprintf_r+0x1112>
 8004654:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004656:	4f49      	ldr	r7, [pc, #292]	; (800477c <_vfprintf_r+0x1a74>)
 8004658:	2b00      	cmp	r3, #0
 800465a:	bfb6      	itet	lt
 800465c:	222d      	movlt	r2, #45	; 0x2d
 800465e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004662:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004666:	4b46      	ldr	r3, [pc, #280]	; (8004780 <_vfprintf_r+0x1a78>)
 8004668:	f7fe bf02 	b.w	8003470 <_vfprintf_r+0x768>
 800466c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004670:	f7ff b8c9 	b.w	8003806 <_vfprintf_r+0xafe>
 8004674:	aa28      	add	r2, sp, #160	; 0xa0
 8004676:	ab25      	add	r3, sp, #148	; 0x94
 8004678:	e9cd 3200 	strd	r3, r2, [sp]
 800467c:	2103      	movs	r1, #3
 800467e:	ab24      	add	r3, sp, #144	; 0x90
 8004680:	464a      	mov	r2, r9
 8004682:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004686:	9803      	ldr	r0, [sp, #12]
 8004688:	f000 f9c6 	bl	8004a18 <_dtoa_r>
 800468c:	464d      	mov	r5, r9
 800468e:	4607      	mov	r7, r0
 8004690:	2e46      	cmp	r6, #70	; 0x46
 8004692:	eb07 0405 	add.w	r4, r7, r5
 8004696:	f43f af67 	beq.w	8004568 <_vfprintf_r+0x1860>
 800469a:	e76b      	b.n	8004574 <_vfprintf_r+0x186c>
 800469c:	f1b9 0f00 	cmp.w	r9, #0
 80046a0:	d131      	bne.n	8004706 <_vfprintf_r+0x19fe>
 80046a2:	07c5      	lsls	r5, r0, #31
 80046a4:	d42f      	bmi.n	8004706 <_vfprintf_r+0x19fe>
 80046a6:	2301      	movs	r3, #1
 80046a8:	9304      	str	r3, [sp, #16]
 80046aa:	9309      	str	r3, [sp, #36]	; 0x24
 80046ac:	2666      	movs	r6, #102	; 0x66
 80046ae:	e642      	b.n	8004336 <_vfprintf_r+0x162e>
 80046b0:	07c3      	lsls	r3, r0, #31
 80046b2:	f57f abbf 	bpl.w	8003e34 <_vfprintf_r+0x112c>
 80046b6:	f7ff bbb9 	b.w	8003e2c <_vfprintf_r+0x1124>
 80046ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80046bc:	f1c3 0301 	rsb	r3, r3, #1
 80046c0:	441a      	add	r2, r3
 80046c2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80046c6:	9209      	str	r2, [sp, #36]	; 0x24
 80046c8:	9304      	str	r3, [sp, #16]
 80046ca:	2667      	movs	r6, #103	; 0x67
 80046cc:	e633      	b.n	8004336 <_vfprintf_r+0x162e>
 80046ce:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80046d2:	f04f 0901 	mov.w	r9, #1
 80046d6:	e457      	b.n	8003f88 <_vfprintf_r+0x1280>
 80046d8:	465a      	mov	r2, fp
 80046da:	e511      	b.n	8004100 <_vfprintf_r+0x13f8>
 80046dc:	2e47      	cmp	r6, #71	; 0x47
 80046de:	f47f af5e 	bne.w	800459e <_vfprintf_r+0x1896>
 80046e2:	f018 0f01 	tst.w	r8, #1
 80046e6:	f43f ab61 	beq.w	8003dac <_vfprintf_r+0x10a4>
 80046ea:	e7d1      	b.n	8004690 <_vfprintf_r+0x1988>
 80046ec:	2200      	movs	r2, #0
 80046ee:	2300      	movs	r3, #0
 80046f0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80046f4:	f7fc fce8 	bl	80010c8 <__aeabi_dcmpeq>
 80046f8:	2800      	cmp	r0, #0
 80046fa:	f47f af39 	bne.w	8004570 <_vfprintf_r+0x1868>
 80046fe:	f1c5 0501 	rsb	r5, r5, #1
 8004702:	9524      	str	r5, [sp, #144]	; 0x90
 8004704:	e735      	b.n	8004572 <_vfprintf_r+0x186a>
 8004706:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004708:	3301      	adds	r3, #1
 800470a:	444b      	add	r3, r9
 800470c:	9309      	str	r3, [sp, #36]	; 0x24
 800470e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004712:	9304      	str	r3, [sp, #16]
 8004714:	2666      	movs	r6, #102	; 0x66
 8004716:	e60e      	b.n	8004336 <_vfprintf_r+0x162e>
 8004718:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800471c:	f7ff bb7a 	b.w	8003e14 <_vfprintf_r+0x110c>
 8004720:	aa2a      	add	r2, sp, #168	; 0xa8
 8004722:	9907      	ldr	r1, [sp, #28]
 8004724:	9803      	ldr	r0, [sp, #12]
 8004726:	f002 fe1d 	bl	8007364 <__sprint_r>
 800472a:	2800      	cmp	r0, #0
 800472c:	f47f a864 	bne.w	80037f8 <_vfprintf_r+0xaf0>
 8004730:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004734:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004738:	f7ff bbbd 	b.w	8003eb6 <_vfprintf_r+0x11ae>
 800473c:	9908      	ldr	r1, [sp, #32]
 800473e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004742:	680b      	ldr	r3, [r1, #0]
 8004744:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004748:	1d0b      	adds	r3, r1, #4
 800474a:	4692      	mov	sl, r2
 800474c:	9308      	str	r3, [sp, #32]
 800474e:	f7fe bb59 	b.w	8002e04 <_vfprintf_r+0xfc>
 8004752:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004756:	f7ff bb60 	b.w	8003e1a <_vfprintf_r+0x1112>
 800475a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800475e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004762:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004766:	f8a9 300c 	strh.w	r3, [r9, #12]
 800476a:	f7ff b84c 	b.w	8003806 <_vfprintf_r+0xafe>
 800476e:	bf00      	nop
 8004770:	08007a90 	.word	0x08007a90
 8004774:	08007a60 	.word	0x08007a60
 8004778:	cccccccd 	.word	0xcccccccd
 800477c:	08007a48 	.word	0x08007a48
 8004780:	08007a44 	.word	0x08007a44

08004784 <__sbprintf>:
 8004784:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004788:	460c      	mov	r4, r1
 800478a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800478e:	8989      	ldrh	r1, [r1, #12]
 8004790:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004792:	89e5      	ldrh	r5, [r4, #14]
 8004794:	9619      	str	r6, [sp, #100]	; 0x64
 8004796:	f021 0102 	bic.w	r1, r1, #2
 800479a:	4606      	mov	r6, r0
 800479c:	69e0      	ldr	r0, [r4, #28]
 800479e:	f8ad 100c 	strh.w	r1, [sp, #12]
 80047a2:	4617      	mov	r7, r2
 80047a4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80047a8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80047aa:	f8ad 500e 	strh.w	r5, [sp, #14]
 80047ae:	4698      	mov	r8, r3
 80047b0:	ad1a      	add	r5, sp, #104	; 0x68
 80047b2:	2300      	movs	r3, #0
 80047b4:	9007      	str	r0, [sp, #28]
 80047b6:	a816      	add	r0, sp, #88	; 0x58
 80047b8:	9209      	str	r2, [sp, #36]	; 0x24
 80047ba:	9306      	str	r3, [sp, #24]
 80047bc:	9500      	str	r5, [sp, #0]
 80047be:	9504      	str	r5, [sp, #16]
 80047c0:	9102      	str	r1, [sp, #8]
 80047c2:	9105      	str	r1, [sp, #20]
 80047c4:	f001 fc8a 	bl	80060dc <__retarget_lock_init_recursive>
 80047c8:	4643      	mov	r3, r8
 80047ca:	463a      	mov	r2, r7
 80047cc:	4669      	mov	r1, sp
 80047ce:	4630      	mov	r0, r6
 80047d0:	f7fe fa9a 	bl	8002d08 <_vfprintf_r>
 80047d4:	1e05      	subs	r5, r0, #0
 80047d6:	db07      	blt.n	80047e8 <__sbprintf+0x64>
 80047d8:	4630      	mov	r0, r6
 80047da:	4669      	mov	r1, sp
 80047dc:	f001 f8d6 	bl	800598c <_fflush_r>
 80047e0:	2800      	cmp	r0, #0
 80047e2:	bf18      	it	ne
 80047e4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80047e8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80047ec:	065b      	lsls	r3, r3, #25
 80047ee:	d503      	bpl.n	80047f8 <__sbprintf+0x74>
 80047f0:	89a3      	ldrh	r3, [r4, #12]
 80047f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80047f6:	81a3      	strh	r3, [r4, #12]
 80047f8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80047fa:	f001 fc71 	bl	80060e0 <__retarget_lock_close_recursive>
 80047fe:	4628      	mov	r0, r5
 8004800:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004804:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004808 <__swsetup_r>:
 8004808:	b538      	push	{r3, r4, r5, lr}
 800480a:	4b31      	ldr	r3, [pc, #196]	; (80048d0 <__swsetup_r+0xc8>)
 800480c:	681b      	ldr	r3, [r3, #0]
 800480e:	4605      	mov	r5, r0
 8004810:	460c      	mov	r4, r1
 8004812:	b113      	cbz	r3, 800481a <__swsetup_r+0x12>
 8004814:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004816:	2a00      	cmp	r2, #0
 8004818:	d03a      	beq.n	8004890 <__swsetup_r+0x88>
 800481a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800481e:	b293      	uxth	r3, r2
 8004820:	0718      	lsls	r0, r3, #28
 8004822:	d50c      	bpl.n	800483e <__swsetup_r+0x36>
 8004824:	6920      	ldr	r0, [r4, #16]
 8004826:	b1a8      	cbz	r0, 8004854 <__swsetup_r+0x4c>
 8004828:	f013 0201 	ands.w	r2, r3, #1
 800482c:	d020      	beq.n	8004870 <__swsetup_r+0x68>
 800482e:	6963      	ldr	r3, [r4, #20]
 8004830:	2200      	movs	r2, #0
 8004832:	425b      	negs	r3, r3
 8004834:	61a3      	str	r3, [r4, #24]
 8004836:	60a2      	str	r2, [r4, #8]
 8004838:	b300      	cbz	r0, 800487c <__swsetup_r+0x74>
 800483a:	2000      	movs	r0, #0
 800483c:	bd38      	pop	{r3, r4, r5, pc}
 800483e:	06d9      	lsls	r1, r3, #27
 8004840:	d53e      	bpl.n	80048c0 <__swsetup_r+0xb8>
 8004842:	0758      	lsls	r0, r3, #29
 8004844:	d428      	bmi.n	8004898 <__swsetup_r+0x90>
 8004846:	6920      	ldr	r0, [r4, #16]
 8004848:	f042 0308 	orr.w	r3, r2, #8
 800484c:	81a3      	strh	r3, [r4, #12]
 800484e:	b29b      	uxth	r3, r3
 8004850:	2800      	cmp	r0, #0
 8004852:	d1e9      	bne.n	8004828 <__swsetup_r+0x20>
 8004854:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004858:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800485c:	d0e4      	beq.n	8004828 <__swsetup_r+0x20>
 800485e:	4628      	mov	r0, r5
 8004860:	4621      	mov	r1, r4
 8004862:	f001 fc71 	bl	8006148 <__smakebuf_r>
 8004866:	89a3      	ldrh	r3, [r4, #12]
 8004868:	6920      	ldr	r0, [r4, #16]
 800486a:	f013 0201 	ands.w	r2, r3, #1
 800486e:	d1de      	bne.n	800482e <__swsetup_r+0x26>
 8004870:	0799      	lsls	r1, r3, #30
 8004872:	bf58      	it	pl
 8004874:	6962      	ldrpl	r2, [r4, #20]
 8004876:	60a2      	str	r2, [r4, #8]
 8004878:	2800      	cmp	r0, #0
 800487a:	d1de      	bne.n	800483a <__swsetup_r+0x32>
 800487c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004880:	061a      	lsls	r2, r3, #24
 8004882:	d5db      	bpl.n	800483c <__swsetup_r+0x34>
 8004884:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004888:	81a3      	strh	r3, [r4, #12]
 800488a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800488e:	bd38      	pop	{r3, r4, r5, pc}
 8004890:	4618      	mov	r0, r3
 8004892:	f001 f8d7 	bl	8005a44 <__sinit>
 8004896:	e7c0      	b.n	800481a <__swsetup_r+0x12>
 8004898:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800489a:	b151      	cbz	r1, 80048b2 <__swsetup_r+0xaa>
 800489c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80048a0:	4299      	cmp	r1, r3
 80048a2:	d004      	beq.n	80048ae <__swsetup_r+0xa6>
 80048a4:	4628      	mov	r0, r5
 80048a6:	f001 f96f 	bl	8005b88 <_free_r>
 80048aa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80048ae:	2300      	movs	r3, #0
 80048b0:	6323      	str	r3, [r4, #48]	; 0x30
 80048b2:	2300      	movs	r3, #0
 80048b4:	6920      	ldr	r0, [r4, #16]
 80048b6:	6063      	str	r3, [r4, #4]
 80048b8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80048bc:	6020      	str	r0, [r4, #0]
 80048be:	e7c3      	b.n	8004848 <__swsetup_r+0x40>
 80048c0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80048c4:	2309      	movs	r3, #9
 80048c6:	602b      	str	r3, [r5, #0]
 80048c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80048cc:	81a2      	strh	r2, [r4, #12]
 80048ce:	bd38      	pop	{r3, r4, r5, pc}
 80048d0:	2000004c 	.word	0x2000004c

080048d4 <register_fini>:
 80048d4:	4b02      	ldr	r3, [pc, #8]	; (80048e0 <register_fini+0xc>)
 80048d6:	b113      	cbz	r3, 80048de <register_fini+0xa>
 80048d8:	4802      	ldr	r0, [pc, #8]	; (80048e4 <register_fini+0x10>)
 80048da:	f000 b805 	b.w	80048e8 <atexit>
 80048de:	4770      	bx	lr
 80048e0:	00000000 	.word	0x00000000
 80048e4:	08005ab5 	.word	0x08005ab5

080048e8 <atexit>:
 80048e8:	2300      	movs	r3, #0
 80048ea:	4601      	mov	r1, r0
 80048ec:	461a      	mov	r2, r3
 80048ee:	4618      	mov	r0, r3
 80048f0:	f002 bd58 	b.w	80073a4 <__register_exitproc>

080048f4 <quorem>:
 80048f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80048f8:	6903      	ldr	r3, [r0, #16]
 80048fa:	690f      	ldr	r7, [r1, #16]
 80048fc:	42bb      	cmp	r3, r7
 80048fe:	b083      	sub	sp, #12
 8004900:	f2c0 8086 	blt.w	8004a10 <quorem+0x11c>
 8004904:	3f01      	subs	r7, #1
 8004906:	f101 0914 	add.w	r9, r1, #20
 800490a:	f100 0a14 	add.w	sl, r0, #20
 800490e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004912:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004916:	00bc      	lsls	r4, r7, #2
 8004918:	3201      	adds	r2, #1
 800491a:	fbb3 f8f2 	udiv	r8, r3, r2
 800491e:	eb0a 0304 	add.w	r3, sl, r4
 8004922:	9400      	str	r4, [sp, #0]
 8004924:	eb09 0b04 	add.w	fp, r9, r4
 8004928:	9301      	str	r3, [sp, #4]
 800492a:	f1b8 0f00 	cmp.w	r8, #0
 800492e:	d038      	beq.n	80049a2 <quorem+0xae>
 8004930:	2500      	movs	r5, #0
 8004932:	462e      	mov	r6, r5
 8004934:	46ce      	mov	lr, r9
 8004936:	46d4      	mov	ip, sl
 8004938:	f85e 4b04 	ldr.w	r4, [lr], #4
 800493c:	f8dc 3000 	ldr.w	r3, [ip]
 8004940:	b2a2      	uxth	r2, r4
 8004942:	fb08 5502 	mla	r5, r8, r2, r5
 8004946:	0c22      	lsrs	r2, r4, #16
 8004948:	0c2c      	lsrs	r4, r5, #16
 800494a:	fb08 4202 	mla	r2, r8, r2, r4
 800494e:	b2ad      	uxth	r5, r5
 8004950:	1b75      	subs	r5, r6, r5
 8004952:	b296      	uxth	r6, r2
 8004954:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004958:	fa15 f383 	uxtah	r3, r5, r3
 800495c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004960:	b29b      	uxth	r3, r3
 8004962:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004966:	45f3      	cmp	fp, lr
 8004968:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800496c:	f84c 3b04 	str.w	r3, [ip], #4
 8004970:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004974:	d2e0      	bcs.n	8004938 <quorem+0x44>
 8004976:	9b00      	ldr	r3, [sp, #0]
 8004978:	f85a 3003 	ldr.w	r3, [sl, r3]
 800497c:	b98b      	cbnz	r3, 80049a2 <quorem+0xae>
 800497e:	9a01      	ldr	r2, [sp, #4]
 8004980:	1f13      	subs	r3, r2, #4
 8004982:	459a      	cmp	sl, r3
 8004984:	d20c      	bcs.n	80049a0 <quorem+0xac>
 8004986:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800498a:	b94b      	cbnz	r3, 80049a0 <quorem+0xac>
 800498c:	f1a2 0308 	sub.w	r3, r2, #8
 8004990:	e002      	b.n	8004998 <quorem+0xa4>
 8004992:	681a      	ldr	r2, [r3, #0]
 8004994:	3b04      	subs	r3, #4
 8004996:	b91a      	cbnz	r2, 80049a0 <quorem+0xac>
 8004998:	459a      	cmp	sl, r3
 800499a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800499e:	d3f8      	bcc.n	8004992 <quorem+0x9e>
 80049a0:	6107      	str	r7, [r0, #16]
 80049a2:	4604      	mov	r4, r0
 80049a4:	f002 f944 	bl	8006c30 <__mcmp>
 80049a8:	2800      	cmp	r0, #0
 80049aa:	db2d      	blt.n	8004a08 <quorem+0x114>
 80049ac:	f108 0801 	add.w	r8, r8, #1
 80049b0:	4655      	mov	r5, sl
 80049b2:	2300      	movs	r3, #0
 80049b4:	f859 1b04 	ldr.w	r1, [r9], #4
 80049b8:	6828      	ldr	r0, [r5, #0]
 80049ba:	b28a      	uxth	r2, r1
 80049bc:	1a9a      	subs	r2, r3, r2
 80049be:	0c0b      	lsrs	r3, r1, #16
 80049c0:	fa12 f280 	uxtah	r2, r2, r0
 80049c4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80049c8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80049cc:	b292      	uxth	r2, r2
 80049ce:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80049d2:	45cb      	cmp	fp, r9
 80049d4:	f845 2b04 	str.w	r2, [r5], #4
 80049d8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80049dc:	d2ea      	bcs.n	80049b4 <quorem+0xc0>
 80049de:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80049e2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80049e6:	b97a      	cbnz	r2, 8004a08 <quorem+0x114>
 80049e8:	1f1a      	subs	r2, r3, #4
 80049ea:	4592      	cmp	sl, r2
 80049ec:	d20b      	bcs.n	8004a06 <quorem+0x112>
 80049ee:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80049f2:	b942      	cbnz	r2, 8004a06 <quorem+0x112>
 80049f4:	3b08      	subs	r3, #8
 80049f6:	e002      	b.n	80049fe <quorem+0x10a>
 80049f8:	681a      	ldr	r2, [r3, #0]
 80049fa:	3b04      	subs	r3, #4
 80049fc:	b91a      	cbnz	r2, 8004a06 <quorem+0x112>
 80049fe:	459a      	cmp	sl, r3
 8004a00:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004a04:	d3f8      	bcc.n	80049f8 <quorem+0x104>
 8004a06:	6127      	str	r7, [r4, #16]
 8004a08:	4640      	mov	r0, r8
 8004a0a:	b003      	add	sp, #12
 8004a0c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a10:	2000      	movs	r0, #0
 8004a12:	b003      	add	sp, #12
 8004a14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004a18 <_dtoa_r>:
 8004a18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004a1c:	ec55 4b10 	vmov	r4, r5, d0
 8004a20:	b09b      	sub	sp, #108	; 0x6c
 8004a22:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004a24:	9102      	str	r1, [sp, #8]
 8004a26:	4681      	mov	r9, r0
 8004a28:	9207      	str	r2, [sp, #28]
 8004a2a:	9305      	str	r3, [sp, #20]
 8004a2c:	e9cd 4500 	strd	r4, r5, [sp]
 8004a30:	b156      	cbz	r6, 8004a48 <_dtoa_r+0x30>
 8004a32:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004a34:	6072      	str	r2, [r6, #4]
 8004a36:	2301      	movs	r3, #1
 8004a38:	4093      	lsls	r3, r2
 8004a3a:	60b3      	str	r3, [r6, #8]
 8004a3c:	4631      	mov	r1, r6
 8004a3e:	f001 ff07 	bl	8006850 <_Bfree>
 8004a42:	2300      	movs	r3, #0
 8004a44:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004a48:	f1b5 0800 	subs.w	r8, r5, #0
 8004a4c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004a4e:	bfb4      	ite	lt
 8004a50:	2301      	movlt	r3, #1
 8004a52:	2300      	movge	r3, #0
 8004a54:	6013      	str	r3, [r2, #0]
 8004a56:	4b76      	ldr	r3, [pc, #472]	; (8004c30 <_dtoa_r+0x218>)
 8004a58:	bfbc      	itt	lt
 8004a5a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004a5e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004a62:	ea33 0308 	bics.w	r3, r3, r8
 8004a66:	f000 80a6 	beq.w	8004bb6 <_dtoa_r+0x19e>
 8004a6a:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004a6e:	2200      	movs	r2, #0
 8004a70:	2300      	movs	r3, #0
 8004a72:	4630      	mov	r0, r6
 8004a74:	4639      	mov	r1, r7
 8004a76:	f7fc fb27 	bl	80010c8 <__aeabi_dcmpeq>
 8004a7a:	4605      	mov	r5, r0
 8004a7c:	b178      	cbz	r0, 8004a9e <_dtoa_r+0x86>
 8004a7e:	9a05      	ldr	r2, [sp, #20]
 8004a80:	2301      	movs	r3, #1
 8004a82:	6013      	str	r3, [r2, #0]
 8004a84:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a86:	2b00      	cmp	r3, #0
 8004a88:	f000 80c0 	beq.w	8004c0c <_dtoa_r+0x1f4>
 8004a8c:	4b69      	ldr	r3, [pc, #420]	; (8004c34 <_dtoa_r+0x21c>)
 8004a8e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004a90:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004a94:	6013      	str	r3, [r2, #0]
 8004a96:	4658      	mov	r0, fp
 8004a98:	b01b      	add	sp, #108	; 0x6c
 8004a9a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a9e:	aa18      	add	r2, sp, #96	; 0x60
 8004aa0:	a919      	add	r1, sp, #100	; 0x64
 8004aa2:	ec47 6b10 	vmov	d0, r6, r7
 8004aa6:	4648      	mov	r0, r9
 8004aa8:	f002 f954 	bl	8006d54 <__d2b>
 8004aac:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004ab0:	4682      	mov	sl, r0
 8004ab2:	f040 80a0 	bne.w	8004bf6 <_dtoa_r+0x1de>
 8004ab6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004aba:	442c      	add	r4, r5
 8004abc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004ac0:	2b20      	cmp	r3, #32
 8004ac2:	f340 842c 	ble.w	800531e <_dtoa_r+0x906>
 8004ac6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004aca:	fa08 f803 	lsl.w	r8, r8, r3
 8004ace:	9b00      	ldr	r3, [sp, #0]
 8004ad0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004ad4:	fa23 f000 	lsr.w	r0, r3, r0
 8004ad8:	ea48 0000 	orr.w	r0, r8, r0
 8004adc:	f7fc f812 	bl	8000b04 <__aeabi_ui2d>
 8004ae0:	2301      	movs	r3, #1
 8004ae2:	4606      	mov	r6, r0
 8004ae4:	3c01      	subs	r4, #1
 8004ae6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004aea:	930f      	str	r3, [sp, #60]	; 0x3c
 8004aec:	4630      	mov	r0, r6
 8004aee:	4639      	mov	r1, r7
 8004af0:	2200      	movs	r2, #0
 8004af2:	4b51      	ldr	r3, [pc, #324]	; (8004c38 <_dtoa_r+0x220>)
 8004af4:	f7fb fec8 	bl	8000888 <__aeabi_dsub>
 8004af8:	a347      	add	r3, pc, #284	; (adr r3, 8004c18 <_dtoa_r+0x200>)
 8004afa:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004afe:	f7fc f87b 	bl	8000bf8 <__aeabi_dmul>
 8004b02:	a347      	add	r3, pc, #284	; (adr r3, 8004c20 <_dtoa_r+0x208>)
 8004b04:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b08:	f7fb fec0 	bl	800088c <__adddf3>
 8004b0c:	4606      	mov	r6, r0
 8004b0e:	4620      	mov	r0, r4
 8004b10:	460f      	mov	r7, r1
 8004b12:	f7fc f807 	bl	8000b24 <__aeabi_i2d>
 8004b16:	a344      	add	r3, pc, #272	; (adr r3, 8004c28 <_dtoa_r+0x210>)
 8004b18:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b1c:	f7fc f86c 	bl	8000bf8 <__aeabi_dmul>
 8004b20:	4602      	mov	r2, r0
 8004b22:	460b      	mov	r3, r1
 8004b24:	4630      	mov	r0, r6
 8004b26:	4639      	mov	r1, r7
 8004b28:	f7fb feb0 	bl	800088c <__adddf3>
 8004b2c:	4606      	mov	r6, r0
 8004b2e:	460f      	mov	r7, r1
 8004b30:	f7fc fb12 	bl	8001158 <__aeabi_d2iz>
 8004b34:	2200      	movs	r2, #0
 8004b36:	9006      	str	r0, [sp, #24]
 8004b38:	2300      	movs	r3, #0
 8004b3a:	4630      	mov	r0, r6
 8004b3c:	4639      	mov	r1, r7
 8004b3e:	f7fc facd 	bl	80010dc <__aeabi_dcmplt>
 8004b42:	2800      	cmp	r0, #0
 8004b44:	f040 8273 	bne.w	800502e <_dtoa_r+0x616>
 8004b48:	9e06      	ldr	r6, [sp, #24]
 8004b4a:	2e16      	cmp	r6, #22
 8004b4c:	f200 825d 	bhi.w	800500a <_dtoa_r+0x5f2>
 8004b50:	4b3a      	ldr	r3, [pc, #232]	; (8004c3c <_dtoa_r+0x224>)
 8004b52:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004b56:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004b5a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b5e:	f7fc fadb 	bl	8001118 <__aeabi_dcmpgt>
 8004b62:	2800      	cmp	r0, #0
 8004b64:	f000 83d7 	beq.w	8005316 <_dtoa_r+0x8fe>
 8004b68:	1e73      	subs	r3, r6, #1
 8004b6a:	9306      	str	r3, [sp, #24]
 8004b6c:	2300      	movs	r3, #0
 8004b6e:	930d      	str	r3, [sp, #52]	; 0x34
 8004b70:	1b2c      	subs	r4, r5, r4
 8004b72:	f1b4 0801 	subs.w	r8, r4, #1
 8004b76:	f100 8254 	bmi.w	8005022 <_dtoa_r+0x60a>
 8004b7a:	2300      	movs	r3, #0
 8004b7c:	9308      	str	r3, [sp, #32]
 8004b7e:	9b06      	ldr	r3, [sp, #24]
 8004b80:	2b00      	cmp	r3, #0
 8004b82:	f2c0 8245 	blt.w	8005010 <_dtoa_r+0x5f8>
 8004b86:	4498      	add	r8, r3
 8004b88:	930c      	str	r3, [sp, #48]	; 0x30
 8004b8a:	2300      	movs	r3, #0
 8004b8c:	930b      	str	r3, [sp, #44]	; 0x2c
 8004b8e:	9b02      	ldr	r3, [sp, #8]
 8004b90:	2b09      	cmp	r3, #9
 8004b92:	d85b      	bhi.n	8004c4c <_dtoa_r+0x234>
 8004b94:	2b05      	cmp	r3, #5
 8004b96:	f340 83c0 	ble.w	800531a <_dtoa_r+0x902>
 8004b9a:	3b04      	subs	r3, #4
 8004b9c:	9302      	str	r3, [sp, #8]
 8004b9e:	2500      	movs	r5, #0
 8004ba0:	9b02      	ldr	r3, [sp, #8]
 8004ba2:	3b02      	subs	r3, #2
 8004ba4:	2b03      	cmp	r3, #3
 8004ba6:	f200 8498 	bhi.w	80054da <_dtoa_r+0xac2>
 8004baa:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004bae:	03df      	.short	0x03df
 8004bb0:	03e803bf 	.word	0x03e803bf
 8004bb4:	04f5      	.short	0x04f5
 8004bb6:	9a05      	ldr	r2, [sp, #20]
 8004bb8:	f242 730f 	movw	r3, #9999	; 0x270f
 8004bbc:	6013      	str	r3, [r2, #0]
 8004bbe:	9b00      	ldr	r3, [sp, #0]
 8004bc0:	b983      	cbnz	r3, 8004be4 <_dtoa_r+0x1cc>
 8004bc2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004bc6:	b96b      	cbnz	r3, 8004be4 <_dtoa_r+0x1cc>
 8004bc8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004bca:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004c40 <_dtoa_r+0x228>
 8004bce:	2b00      	cmp	r3, #0
 8004bd0:	f43f af61 	beq.w	8004a96 <_dtoa_r+0x7e>
 8004bd4:	f10b 0308 	add.w	r3, fp, #8
 8004bd8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004bda:	4658      	mov	r0, fp
 8004bdc:	6013      	str	r3, [r2, #0]
 8004bde:	b01b      	add	sp, #108	; 0x6c
 8004be0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004be4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004be6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004c44 <_dtoa_r+0x22c>
 8004bea:	2b00      	cmp	r3, #0
 8004bec:	f43f af53 	beq.w	8004a96 <_dtoa_r+0x7e>
 8004bf0:	f10b 0303 	add.w	r3, fp, #3
 8004bf4:	e7f0      	b.n	8004bd8 <_dtoa_r+0x1c0>
 8004bf6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004bfa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004bfe:	950f      	str	r5, [sp, #60]	; 0x3c
 8004c00:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004c04:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004c08:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004c0a:	e76f      	b.n	8004aec <_dtoa_r+0xd4>
 8004c0c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004c48 <_dtoa_r+0x230>
 8004c10:	4658      	mov	r0, fp
 8004c12:	b01b      	add	sp, #108	; 0x6c
 8004c14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c18:	636f4361 	.word	0x636f4361
 8004c1c:	3fd287a7 	.word	0x3fd287a7
 8004c20:	8b60c8b3 	.word	0x8b60c8b3
 8004c24:	3fc68a28 	.word	0x3fc68a28
 8004c28:	509f79fb 	.word	0x509f79fb
 8004c2c:	3fd34413 	.word	0x3fd34413
 8004c30:	7ff00000 	.word	0x7ff00000
 8004c34:	08007a7d 	.word	0x08007a7d
 8004c38:	3ff80000 	.word	0x3ff80000
 8004c3c:	08007ad8 	.word	0x08007ad8
 8004c40:	08007aa0 	.word	0x08007aa0
 8004c44:	08007aac 	.word	0x08007aac
 8004c48:	08007a7c 	.word	0x08007a7c
 8004c4c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004c50:	2501      	movs	r5, #1
 8004c52:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004c56:	2300      	movs	r3, #0
 8004c58:	9302      	str	r3, [sp, #8]
 8004c5a:	9307      	str	r3, [sp, #28]
 8004c5c:	2100      	movs	r1, #0
 8004c5e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004c62:	940e      	str	r4, [sp, #56]	; 0x38
 8004c64:	4648      	mov	r0, r9
 8004c66:	f001 fdcd 	bl	8006804 <_Balloc>
 8004c6a:	2c0e      	cmp	r4, #14
 8004c6c:	4683      	mov	fp, r0
 8004c6e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004c72:	f200 80fb 	bhi.w	8004e6c <_dtoa_r+0x454>
 8004c76:	2d00      	cmp	r5, #0
 8004c78:	f000 80f8 	beq.w	8004e6c <_dtoa_r+0x454>
 8004c7c:	ed9d 7b00 	vldr	d7, [sp]
 8004c80:	9906      	ldr	r1, [sp, #24]
 8004c82:	2900      	cmp	r1, #0
 8004c84:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004c88:	f340 83e5 	ble.w	8005456 <_dtoa_r+0xa3e>
 8004c8c:	4b9d      	ldr	r3, [pc, #628]	; (8004f04 <_dtoa_r+0x4ec>)
 8004c8e:	f001 020f 	and.w	r2, r1, #15
 8004c92:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004c96:	ed93 7b00 	vldr	d7, [r3]
 8004c9a:	110c      	asrs	r4, r1, #4
 8004c9c:	06e2      	lsls	r2, r4, #27
 8004c9e:	ed8d 7b00 	vstr	d7, [sp]
 8004ca2:	f140 849e 	bpl.w	80055e2 <_dtoa_r+0xbca>
 8004ca6:	4b98      	ldr	r3, [pc, #608]	; (8004f08 <_dtoa_r+0x4f0>)
 8004ca8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004cac:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004cb0:	f7fc f8cc 	bl	8000e4c <__aeabi_ddiv>
 8004cb4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004cb8:	f004 040f 	and.w	r4, r4, #15
 8004cbc:	2603      	movs	r6, #3
 8004cbe:	b17c      	cbz	r4, 8004ce0 <_dtoa_r+0x2c8>
 8004cc0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cc4:	4d90      	ldr	r5, [pc, #576]	; (8004f08 <_dtoa_r+0x4f0>)
 8004cc6:	07e3      	lsls	r3, r4, #31
 8004cc8:	d504      	bpl.n	8004cd4 <_dtoa_r+0x2bc>
 8004cca:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004cce:	f7fb ff93 	bl	8000bf8 <__aeabi_dmul>
 8004cd2:	3601      	adds	r6, #1
 8004cd4:	1064      	asrs	r4, r4, #1
 8004cd6:	f105 0508 	add.w	r5, r5, #8
 8004cda:	d1f4      	bne.n	8004cc6 <_dtoa_r+0x2ae>
 8004cdc:	e9cd 0100 	strd	r0, r1, [sp]
 8004ce0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ce4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004ce8:	f7fc f8b0 	bl	8000e4c <__aeabi_ddiv>
 8004cec:	e9cd 0100 	strd	r0, r1, [sp]
 8004cf0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004cf2:	b143      	cbz	r3, 8004d06 <_dtoa_r+0x2ee>
 8004cf4:	2200      	movs	r2, #0
 8004cf6:	4b85      	ldr	r3, [pc, #532]	; (8004f0c <_dtoa_r+0x4f4>)
 8004cf8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cfc:	f7fc f9ee 	bl	80010dc <__aeabi_dcmplt>
 8004d00:	2800      	cmp	r0, #0
 8004d02:	f040 84ff 	bne.w	8005704 <_dtoa_r+0xcec>
 8004d06:	4630      	mov	r0, r6
 8004d08:	f7fb ff0c 	bl	8000b24 <__aeabi_i2d>
 8004d0c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d10:	f7fb ff72 	bl	8000bf8 <__aeabi_dmul>
 8004d14:	4b7e      	ldr	r3, [pc, #504]	; (8004f10 <_dtoa_r+0x4f8>)
 8004d16:	2200      	movs	r2, #0
 8004d18:	f7fb fdb8 	bl	800088c <__adddf3>
 8004d1c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d1e:	4606      	mov	r6, r0
 8004d20:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d24:	2b00      	cmp	r3, #0
 8004d26:	f000 841c 	beq.w	8005562 <_dtoa_r+0xb4a>
 8004d2a:	9b06      	ldr	r3, [sp, #24]
 8004d2c:	9316      	str	r3, [sp, #88]	; 0x58
 8004d2e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d30:	9312      	str	r3, [sp, #72]	; 0x48
 8004d32:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d36:	f7fc fa0f 	bl	8001158 <__aeabi_d2iz>
 8004d3a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004d3c:	4b71      	ldr	r3, [pc, #452]	; (8004f04 <_dtoa_r+0x4ec>)
 8004d3e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004d42:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004d46:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004d4a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004d4e:	f7fb fee9 	bl	8000b24 <__aeabi_i2d>
 8004d52:	460b      	mov	r3, r1
 8004d54:	4602      	mov	r2, r0
 8004d56:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d5a:	e9cd 6700 	strd	r6, r7, [sp]
 8004d5e:	f7fb fd93 	bl	8000888 <__aeabi_dsub>
 8004d62:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004d64:	b2ed      	uxtb	r5, r5
 8004d66:	4606      	mov	r6, r0
 8004d68:	460f      	mov	r7, r1
 8004d6a:	f10b 0401 	add.w	r4, fp, #1
 8004d6e:	2b00      	cmp	r3, #0
 8004d70:	f000 8458 	beq.w	8005624 <_dtoa_r+0xc0c>
 8004d74:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004d78:	2000      	movs	r0, #0
 8004d7a:	4966      	ldr	r1, [pc, #408]	; (8004f14 <_dtoa_r+0x4fc>)
 8004d7c:	f7fc f866 	bl	8000e4c <__aeabi_ddiv>
 8004d80:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d84:	f7fb fd80 	bl	8000888 <__aeabi_dsub>
 8004d88:	f88b 5000 	strb.w	r5, [fp]
 8004d8c:	4632      	mov	r2, r6
 8004d8e:	463b      	mov	r3, r7
 8004d90:	e9cd 0100 	strd	r0, r1, [sp]
 8004d94:	f7fc f9c0 	bl	8001118 <__aeabi_dcmpgt>
 8004d98:	2800      	cmp	r0, #0
 8004d9a:	f040 8502 	bne.w	80057a2 <_dtoa_r+0xd8a>
 8004d9e:	4632      	mov	r2, r6
 8004da0:	463b      	mov	r3, r7
 8004da2:	2000      	movs	r0, #0
 8004da4:	4959      	ldr	r1, [pc, #356]	; (8004f0c <_dtoa_r+0x4f4>)
 8004da6:	f7fb fd6f 	bl	8000888 <__aeabi_dsub>
 8004daa:	4602      	mov	r2, r0
 8004dac:	460b      	mov	r3, r1
 8004dae:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004db2:	f7fc f9b1 	bl	8001118 <__aeabi_dcmpgt>
 8004db6:	2800      	cmp	r0, #0
 8004db8:	f040 84fb 	bne.w	80057b2 <_dtoa_r+0xd9a>
 8004dbc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004dbe:	2a01      	cmp	r2, #1
 8004dc0:	d050      	beq.n	8004e64 <_dtoa_r+0x44c>
 8004dc2:	445a      	add	r2, fp
 8004dc4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004dc8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004dcc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004dd0:	4692      	mov	sl, r2
 8004dd2:	46cb      	mov	fp, r9
 8004dd4:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004dd8:	e00c      	b.n	8004df4 <_dtoa_r+0x3dc>
 8004dda:	2000      	movs	r0, #0
 8004ddc:	494b      	ldr	r1, [pc, #300]	; (8004f0c <_dtoa_r+0x4f4>)
 8004dde:	f7fb fd53 	bl	8000888 <__aeabi_dsub>
 8004de2:	4642      	mov	r2, r8
 8004de4:	464b      	mov	r3, r9
 8004de6:	f7fc f979 	bl	80010dc <__aeabi_dcmplt>
 8004dea:	2800      	cmp	r0, #0
 8004dec:	f040 84dc 	bne.w	80057a8 <_dtoa_r+0xd90>
 8004df0:	4554      	cmp	r4, sl
 8004df2:	d030      	beq.n	8004e56 <_dtoa_r+0x43e>
 8004df4:	4640      	mov	r0, r8
 8004df6:	4649      	mov	r1, r9
 8004df8:	2200      	movs	r2, #0
 8004dfa:	4b47      	ldr	r3, [pc, #284]	; (8004f18 <_dtoa_r+0x500>)
 8004dfc:	f7fb fefc 	bl	8000bf8 <__aeabi_dmul>
 8004e00:	2200      	movs	r2, #0
 8004e02:	4b45      	ldr	r3, [pc, #276]	; (8004f18 <_dtoa_r+0x500>)
 8004e04:	4680      	mov	r8, r0
 8004e06:	4689      	mov	r9, r1
 8004e08:	4630      	mov	r0, r6
 8004e0a:	4639      	mov	r1, r7
 8004e0c:	f7fb fef4 	bl	8000bf8 <__aeabi_dmul>
 8004e10:	460f      	mov	r7, r1
 8004e12:	4606      	mov	r6, r0
 8004e14:	f7fc f9a0 	bl	8001158 <__aeabi_d2iz>
 8004e18:	4605      	mov	r5, r0
 8004e1a:	f7fb fe83 	bl	8000b24 <__aeabi_i2d>
 8004e1e:	4602      	mov	r2, r0
 8004e20:	460b      	mov	r3, r1
 8004e22:	4630      	mov	r0, r6
 8004e24:	4639      	mov	r1, r7
 8004e26:	f7fb fd2f 	bl	8000888 <__aeabi_dsub>
 8004e2a:	3530      	adds	r5, #48	; 0x30
 8004e2c:	b2ed      	uxtb	r5, r5
 8004e2e:	4642      	mov	r2, r8
 8004e30:	464b      	mov	r3, r9
 8004e32:	f804 5b01 	strb.w	r5, [r4], #1
 8004e36:	4606      	mov	r6, r0
 8004e38:	460f      	mov	r7, r1
 8004e3a:	f7fc f94f 	bl	80010dc <__aeabi_dcmplt>
 8004e3e:	4632      	mov	r2, r6
 8004e40:	463b      	mov	r3, r7
 8004e42:	2800      	cmp	r0, #0
 8004e44:	d0c9      	beq.n	8004dda <_dtoa_r+0x3c2>
 8004e46:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e48:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004e4c:	9306      	str	r3, [sp, #24]
 8004e4e:	46d9      	mov	r9, fp
 8004e50:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004e54:	e236      	b.n	80052c4 <_dtoa_r+0x8ac>
 8004e56:	46d9      	mov	r9, fp
 8004e58:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004e5c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004e60:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004e64:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004e68:	e9cd 3400 	strd	r3, r4, [sp]
 8004e6c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004e6e:	2b00      	cmp	r3, #0
 8004e70:	f2c0 80ae 	blt.w	8004fd0 <_dtoa_r+0x5b8>
 8004e74:	9a06      	ldr	r2, [sp, #24]
 8004e76:	2a0e      	cmp	r2, #14
 8004e78:	f300 80aa 	bgt.w	8004fd0 <_dtoa_r+0x5b8>
 8004e7c:	4b21      	ldr	r3, [pc, #132]	; (8004f04 <_dtoa_r+0x4ec>)
 8004e7e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004e82:	ed93 7b00 	vldr	d7, [r3]
 8004e86:	9b07      	ldr	r3, [sp, #28]
 8004e88:	2b00      	cmp	r3, #0
 8004e8a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004e8e:	f2c0 82be 	blt.w	800540e <_dtoa_r+0x9f6>
 8004e92:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004e96:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004e9a:	4630      	mov	r0, r6
 8004e9c:	4639      	mov	r1, r7
 8004e9e:	f7fb ffd5 	bl	8000e4c <__aeabi_ddiv>
 8004ea2:	f7fc f959 	bl	8001158 <__aeabi_d2iz>
 8004ea6:	4605      	mov	r5, r0
 8004ea8:	f7fb fe3c 	bl	8000b24 <__aeabi_i2d>
 8004eac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004eb0:	f7fb fea2 	bl	8000bf8 <__aeabi_dmul>
 8004eb4:	460b      	mov	r3, r1
 8004eb6:	4602      	mov	r2, r0
 8004eb8:	4639      	mov	r1, r7
 8004eba:	4630      	mov	r0, r6
 8004ebc:	f7fb fce4 	bl	8000888 <__aeabi_dsub>
 8004ec0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004ec4:	f88b 3000 	strb.w	r3, [fp]
 8004ec8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004eca:	2b01      	cmp	r3, #1
 8004ecc:	4606      	mov	r6, r0
 8004ece:	460f      	mov	r7, r1
 8004ed0:	f10b 0401 	add.w	r4, fp, #1
 8004ed4:	d053      	beq.n	8004f7e <_dtoa_r+0x566>
 8004ed6:	2200      	movs	r2, #0
 8004ed8:	4b0f      	ldr	r3, [pc, #60]	; (8004f18 <_dtoa_r+0x500>)
 8004eda:	f7fb fe8d 	bl	8000bf8 <__aeabi_dmul>
 8004ede:	2200      	movs	r2, #0
 8004ee0:	2300      	movs	r3, #0
 8004ee2:	4606      	mov	r6, r0
 8004ee4:	460f      	mov	r7, r1
 8004ee6:	f7fc f8ef 	bl	80010c8 <__aeabi_dcmpeq>
 8004eea:	2800      	cmp	r0, #0
 8004eec:	f040 81ea 	bne.w	80052c4 <_dtoa_r+0x8ac>
 8004ef0:	f8cd a000 	str.w	sl, [sp]
 8004ef4:	f8cd 901c 	str.w	r9, [sp, #28]
 8004ef8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004efc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004f00:	e017      	b.n	8004f32 <_dtoa_r+0x51a>
 8004f02:	bf00      	nop
 8004f04:	08007ad8 	.word	0x08007ad8
 8004f08:	08007ab0 	.word	0x08007ab0
 8004f0c:	3ff00000 	.word	0x3ff00000
 8004f10:	401c0000 	.word	0x401c0000
 8004f14:	3fe00000 	.word	0x3fe00000
 8004f18:	40240000 	.word	0x40240000
 8004f1c:	f7fb fe6c 	bl	8000bf8 <__aeabi_dmul>
 8004f20:	2200      	movs	r2, #0
 8004f22:	2300      	movs	r3, #0
 8004f24:	4606      	mov	r6, r0
 8004f26:	460f      	mov	r7, r1
 8004f28:	f7fc f8ce 	bl	80010c8 <__aeabi_dcmpeq>
 8004f2c:	2800      	cmp	r0, #0
 8004f2e:	f040 833d 	bne.w	80055ac <_dtoa_r+0xb94>
 8004f32:	464a      	mov	r2, r9
 8004f34:	4653      	mov	r3, sl
 8004f36:	4630      	mov	r0, r6
 8004f38:	4639      	mov	r1, r7
 8004f3a:	f7fb ff87 	bl	8000e4c <__aeabi_ddiv>
 8004f3e:	f7fc f90b 	bl	8001158 <__aeabi_d2iz>
 8004f42:	4605      	mov	r5, r0
 8004f44:	f7fb fdee 	bl	8000b24 <__aeabi_i2d>
 8004f48:	464a      	mov	r2, r9
 8004f4a:	4653      	mov	r3, sl
 8004f4c:	f7fb fe54 	bl	8000bf8 <__aeabi_dmul>
 8004f50:	4602      	mov	r2, r0
 8004f52:	460b      	mov	r3, r1
 8004f54:	4630      	mov	r0, r6
 8004f56:	4639      	mov	r1, r7
 8004f58:	f7fb fc96 	bl	8000888 <__aeabi_dsub>
 8004f5c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004f60:	f804 cb01 	strb.w	ip, [r4], #1
 8004f64:	eba4 0c0b 	sub.w	ip, r4, fp
 8004f68:	45e0      	cmp	r8, ip
 8004f6a:	4606      	mov	r6, r0
 8004f6c:	460f      	mov	r7, r1
 8004f6e:	f04f 0200 	mov.w	r2, #0
 8004f72:	4bc1      	ldr	r3, [pc, #772]	; (8005278 <_dtoa_r+0x860>)
 8004f74:	d1d2      	bne.n	8004f1c <_dtoa_r+0x504>
 8004f76:	f8dd a000 	ldr.w	sl, [sp]
 8004f7a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004f7e:	4632      	mov	r2, r6
 8004f80:	463b      	mov	r3, r7
 8004f82:	4630      	mov	r0, r6
 8004f84:	4639      	mov	r1, r7
 8004f86:	f7fb fc81 	bl	800088c <__adddf3>
 8004f8a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004f8e:	4606      	mov	r6, r0
 8004f90:	460f      	mov	r7, r1
 8004f92:	f7fc f8c1 	bl	8001118 <__aeabi_dcmpgt>
 8004f96:	b958      	cbnz	r0, 8004fb0 <_dtoa_r+0x598>
 8004f98:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004f9c:	4630      	mov	r0, r6
 8004f9e:	4639      	mov	r1, r7
 8004fa0:	f7fc f892 	bl	80010c8 <__aeabi_dcmpeq>
 8004fa4:	2800      	cmp	r0, #0
 8004fa6:	f000 818d 	beq.w	80052c4 <_dtoa_r+0x8ac>
 8004faa:	07e9      	lsls	r1, r5, #31
 8004fac:	f140 818a 	bpl.w	80052c4 <_dtoa_r+0x8ac>
 8004fb0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004fb4:	e005      	b.n	8004fc2 <_dtoa_r+0x5aa>
 8004fb6:	459b      	cmp	fp, r3
 8004fb8:	f000 8373 	beq.w	80056a2 <_dtoa_r+0xc8a>
 8004fbc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004fc0:	461c      	mov	r4, r3
 8004fc2:	2d39      	cmp	r5, #57	; 0x39
 8004fc4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004fc8:	d0f5      	beq.n	8004fb6 <_dtoa_r+0x59e>
 8004fca:	3501      	adds	r5, #1
 8004fcc:	701d      	strb	r5, [r3, #0]
 8004fce:	e179      	b.n	80052c4 <_dtoa_r+0x8ac>
 8004fd0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004fd2:	2a00      	cmp	r2, #0
 8004fd4:	d03b      	beq.n	800504e <_dtoa_r+0x636>
 8004fd6:	9a02      	ldr	r2, [sp, #8]
 8004fd8:	2a01      	cmp	r2, #1
 8004fda:	f340 820b 	ble.w	80053f4 <_dtoa_r+0x9dc>
 8004fde:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fe0:	1e5f      	subs	r7, r3, #1
 8004fe2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004fe4:	42bb      	cmp	r3, r7
 8004fe6:	f2c0 82e6 	blt.w	80055b6 <_dtoa_r+0xb9e>
 8004fea:	1bdf      	subs	r7, r3, r7
 8004fec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fee:	2b00      	cmp	r3, #0
 8004ff0:	f2c0 830b 	blt.w	800560a <_dtoa_r+0xbf2>
 8004ff4:	9a08      	ldr	r2, [sp, #32]
 8004ff6:	4614      	mov	r4, r2
 8004ff8:	441a      	add	r2, r3
 8004ffa:	4498      	add	r8, r3
 8004ffc:	9208      	str	r2, [sp, #32]
 8004ffe:	2101      	movs	r1, #1
 8005000:	4648      	mov	r0, r9
 8005002:	f001 fcbf 	bl	8006984 <__i2b>
 8005006:	4605      	mov	r5, r0
 8005008:	e024      	b.n	8005054 <_dtoa_r+0x63c>
 800500a:	2301      	movs	r3, #1
 800500c:	930d      	str	r3, [sp, #52]	; 0x34
 800500e:	e5af      	b.n	8004b70 <_dtoa_r+0x158>
 8005010:	9a08      	ldr	r2, [sp, #32]
 8005012:	9b06      	ldr	r3, [sp, #24]
 8005014:	1ad2      	subs	r2, r2, r3
 8005016:	425b      	negs	r3, r3
 8005018:	930b      	str	r3, [sp, #44]	; 0x2c
 800501a:	2300      	movs	r3, #0
 800501c:	9208      	str	r2, [sp, #32]
 800501e:	930c      	str	r3, [sp, #48]	; 0x30
 8005020:	e5b5      	b.n	8004b8e <_dtoa_r+0x176>
 8005022:	f1c4 0301 	rsb	r3, r4, #1
 8005026:	9308      	str	r3, [sp, #32]
 8005028:	f04f 0800 	mov.w	r8, #0
 800502c:	e5a7      	b.n	8004b7e <_dtoa_r+0x166>
 800502e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8005032:	4640      	mov	r0, r8
 8005034:	f7fb fd76 	bl	8000b24 <__aeabi_i2d>
 8005038:	4632      	mov	r2, r6
 800503a:	463b      	mov	r3, r7
 800503c:	f7fc f844 	bl	80010c8 <__aeabi_dcmpeq>
 8005040:	2800      	cmp	r0, #0
 8005042:	f47f ad81 	bne.w	8004b48 <_dtoa_r+0x130>
 8005046:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800504a:	9306      	str	r3, [sp, #24]
 800504c:	e57c      	b.n	8004b48 <_dtoa_r+0x130>
 800504e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005050:	9c08      	ldr	r4, [sp, #32]
 8005052:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8005054:	2c00      	cmp	r4, #0
 8005056:	dd0c      	ble.n	8005072 <_dtoa_r+0x65a>
 8005058:	f1b8 0f00 	cmp.w	r8, #0
 800505c:	dd09      	ble.n	8005072 <_dtoa_r+0x65a>
 800505e:	4544      	cmp	r4, r8
 8005060:	9a08      	ldr	r2, [sp, #32]
 8005062:	4623      	mov	r3, r4
 8005064:	bfa8      	it	ge
 8005066:	4643      	movge	r3, r8
 8005068:	1ad2      	subs	r2, r2, r3
 800506a:	9208      	str	r2, [sp, #32]
 800506c:	1ae4      	subs	r4, r4, r3
 800506e:	eba8 0803 	sub.w	r8, r8, r3
 8005072:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005074:	b16b      	cbz	r3, 8005092 <_dtoa_r+0x67a>
 8005076:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005078:	2a00      	cmp	r2, #0
 800507a:	f000 8290 	beq.w	800559e <_dtoa_r+0xb86>
 800507e:	1bde      	subs	r6, r3, r7
 8005080:	2f00      	cmp	r7, #0
 8005082:	f040 819b 	bne.w	80053bc <_dtoa_r+0x9a4>
 8005086:	4651      	mov	r1, sl
 8005088:	4632      	mov	r2, r6
 800508a:	4648      	mov	r0, r9
 800508c:	f001 fd2a 	bl	8006ae4 <__pow5mult>
 8005090:	4682      	mov	sl, r0
 8005092:	2101      	movs	r1, #1
 8005094:	4648      	mov	r0, r9
 8005096:	f001 fc75 	bl	8006984 <__i2b>
 800509a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800509c:	4606      	mov	r6, r0
 800509e:	2a00      	cmp	r2, #0
 80050a0:	f040 8125 	bne.w	80052ee <_dtoa_r+0x8d6>
 80050a4:	9b02      	ldr	r3, [sp, #8]
 80050a6:	2b01      	cmp	r3, #1
 80050a8:	f340 816c 	ble.w	8005384 <_dtoa_r+0x96c>
 80050ac:	2001      	movs	r0, #1
 80050ae:	4440      	add	r0, r8
 80050b0:	f010 001f 	ands.w	r0, r0, #31
 80050b4:	f000 8119 	beq.w	80052ea <_dtoa_r+0x8d2>
 80050b8:	f1c0 0320 	rsb	r3, r0, #32
 80050bc:	2b04      	cmp	r3, #4
 80050be:	f340 83ac 	ble.w	800581a <_dtoa_r+0xe02>
 80050c2:	f1c0 001c 	rsb	r0, r0, #28
 80050c6:	9b08      	ldr	r3, [sp, #32]
 80050c8:	4403      	add	r3, r0
 80050ca:	9308      	str	r3, [sp, #32]
 80050cc:	4404      	add	r4, r0
 80050ce:	4480      	add	r8, r0
 80050d0:	9b08      	ldr	r3, [sp, #32]
 80050d2:	2b00      	cmp	r3, #0
 80050d4:	dd05      	ble.n	80050e2 <_dtoa_r+0x6ca>
 80050d6:	4651      	mov	r1, sl
 80050d8:	461a      	mov	r2, r3
 80050da:	4648      	mov	r0, r9
 80050dc:	f001 fd52 	bl	8006b84 <__lshift>
 80050e0:	4682      	mov	sl, r0
 80050e2:	f1b8 0f00 	cmp.w	r8, #0
 80050e6:	dd05      	ble.n	80050f4 <_dtoa_r+0x6dc>
 80050e8:	4631      	mov	r1, r6
 80050ea:	4642      	mov	r2, r8
 80050ec:	4648      	mov	r0, r9
 80050ee:	f001 fd49 	bl	8006b84 <__lshift>
 80050f2:	4606      	mov	r6, r0
 80050f4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80050f6:	2b00      	cmp	r3, #0
 80050f8:	d177      	bne.n	80051ea <_dtoa_r+0x7d2>
 80050fa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050fc:	2b00      	cmp	r3, #0
 80050fe:	f340 8209 	ble.w	8005514 <_dtoa_r+0xafc>
 8005102:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005104:	2b00      	cmp	r3, #0
 8005106:	f000 8089 	beq.w	800521c <_dtoa_r+0x804>
 800510a:	2c00      	cmp	r4, #0
 800510c:	f300 816b 	bgt.w	80053e6 <_dtoa_r+0x9ce>
 8005110:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005112:	2b00      	cmp	r3, #0
 8005114:	f040 81cd 	bne.w	80054b2 <_dtoa_r+0xa9a>
 8005118:	46a8      	mov	r8, r5
 800511a:	9a00      	ldr	r2, [sp, #0]
 800511c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005120:	f002 0201 	and.w	r2, r2, #1
 8005124:	920a      	str	r2, [sp, #40]	; 0x28
 8005126:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005128:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800512c:	441a      	add	r2, r3
 800512e:	465f      	mov	r7, fp
 8005130:	9209      	str	r2, [sp, #36]	; 0x24
 8005132:	46b3      	mov	fp, r6
 8005134:	4659      	mov	r1, fp
 8005136:	4650      	mov	r0, sl
 8005138:	f7ff fbdc 	bl	80048f4 <quorem>
 800513c:	4629      	mov	r1, r5
 800513e:	4604      	mov	r4, r0
 8005140:	4650      	mov	r0, sl
 8005142:	f001 fd75 	bl	8006c30 <__mcmp>
 8005146:	4659      	mov	r1, fp
 8005148:	4606      	mov	r6, r0
 800514a:	4642      	mov	r2, r8
 800514c:	4648      	mov	r0, r9
 800514e:	f001 fd8b 	bl	8006c68 <__mdiff>
 8005152:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8005156:	9300      	str	r3, [sp, #0]
 8005158:	68c3      	ldr	r3, [r0, #12]
 800515a:	4601      	mov	r1, r0
 800515c:	2b00      	cmp	r3, #0
 800515e:	f040 81d4 	bne.w	800550a <_dtoa_r+0xaf2>
 8005162:	9008      	str	r0, [sp, #32]
 8005164:	4650      	mov	r0, sl
 8005166:	f001 fd63 	bl	8006c30 <__mcmp>
 800516a:	9a08      	ldr	r2, [sp, #32]
 800516c:	9007      	str	r0, [sp, #28]
 800516e:	4611      	mov	r1, r2
 8005170:	4648      	mov	r0, r9
 8005172:	f001 fb6d 	bl	8006850 <_Bfree>
 8005176:	9b07      	ldr	r3, [sp, #28]
 8005178:	b933      	cbnz	r3, 8005188 <_dtoa_r+0x770>
 800517a:	9a02      	ldr	r2, [sp, #8]
 800517c:	b922      	cbnz	r2, 8005188 <_dtoa_r+0x770>
 800517e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005180:	2b00      	cmp	r3, #0
 8005182:	f000 8319 	beq.w	80057b8 <_dtoa_r+0xda0>
 8005186:	9b02      	ldr	r3, [sp, #8]
 8005188:	2e00      	cmp	r6, #0
 800518a:	f2c0 821c 	blt.w	80055c6 <_dtoa_r+0xbae>
 800518e:	d105      	bne.n	800519c <_dtoa_r+0x784>
 8005190:	9a02      	ldr	r2, [sp, #8]
 8005192:	b91a      	cbnz	r2, 800519c <_dtoa_r+0x784>
 8005194:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005196:	2a00      	cmp	r2, #0
 8005198:	f000 8215 	beq.w	80055c6 <_dtoa_r+0xbae>
 800519c:	2b00      	cmp	r3, #0
 800519e:	f107 0401 	add.w	r4, r7, #1
 80051a2:	f300 8225 	bgt.w	80055f0 <_dtoa_r+0xbd8>
 80051a6:	9b00      	ldr	r3, [sp, #0]
 80051a8:	703b      	strb	r3, [r7, #0]
 80051aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80051ac:	42bb      	cmp	r3, r7
 80051ae:	f000 8230 	beq.w	8005612 <_dtoa_r+0xbfa>
 80051b2:	4651      	mov	r1, sl
 80051b4:	2300      	movs	r3, #0
 80051b6:	220a      	movs	r2, #10
 80051b8:	4648      	mov	r0, r9
 80051ba:	f001 fb53 	bl	8006864 <__multadd>
 80051be:	4545      	cmp	r5, r8
 80051c0:	4682      	mov	sl, r0
 80051c2:	4629      	mov	r1, r5
 80051c4:	f04f 0300 	mov.w	r3, #0
 80051c8:	f04f 020a 	mov.w	r2, #10
 80051cc:	4648      	mov	r0, r9
 80051ce:	f000 8196 	beq.w	80054fe <_dtoa_r+0xae6>
 80051d2:	f001 fb47 	bl	8006864 <__multadd>
 80051d6:	4641      	mov	r1, r8
 80051d8:	4605      	mov	r5, r0
 80051da:	2300      	movs	r3, #0
 80051dc:	220a      	movs	r2, #10
 80051de:	4648      	mov	r0, r9
 80051e0:	f001 fb40 	bl	8006864 <__multadd>
 80051e4:	4627      	mov	r7, r4
 80051e6:	4680      	mov	r8, r0
 80051e8:	e7a4      	b.n	8005134 <_dtoa_r+0x71c>
 80051ea:	4631      	mov	r1, r6
 80051ec:	4650      	mov	r0, sl
 80051ee:	f001 fd1f 	bl	8006c30 <__mcmp>
 80051f2:	2800      	cmp	r0, #0
 80051f4:	da81      	bge.n	80050fa <_dtoa_r+0x6e2>
 80051f6:	9f06      	ldr	r7, [sp, #24]
 80051f8:	4651      	mov	r1, sl
 80051fa:	2300      	movs	r3, #0
 80051fc:	220a      	movs	r2, #10
 80051fe:	4648      	mov	r0, r9
 8005200:	3f01      	subs	r7, #1
 8005202:	9706      	str	r7, [sp, #24]
 8005204:	f001 fb2e 	bl	8006864 <__multadd>
 8005208:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800520a:	4682      	mov	sl, r0
 800520c:	2b00      	cmp	r3, #0
 800520e:	f040 82eb 	bne.w	80057e8 <_dtoa_r+0xdd0>
 8005212:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005214:	2b00      	cmp	r3, #0
 8005216:	f340 82f3 	ble.w	8005800 <_dtoa_r+0xde8>
 800521a:	9309      	str	r3, [sp, #36]	; 0x24
 800521c:	465c      	mov	r4, fp
 800521e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005222:	e002      	b.n	800522a <_dtoa_r+0x812>
 8005224:	f001 fb1e 	bl	8006864 <__multadd>
 8005228:	4682      	mov	sl, r0
 800522a:	4631      	mov	r1, r6
 800522c:	4650      	mov	r0, sl
 800522e:	f7ff fb61 	bl	80048f4 <quorem>
 8005232:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8005236:	f804 7b01 	strb.w	r7, [r4], #1
 800523a:	eba4 030b 	sub.w	r3, r4, fp
 800523e:	4598      	cmp	r8, r3
 8005240:	f04f 020a 	mov.w	r2, #10
 8005244:	f04f 0300 	mov.w	r3, #0
 8005248:	4651      	mov	r1, sl
 800524a:	4648      	mov	r0, r9
 800524c:	dcea      	bgt.n	8005224 <_dtoa_r+0x80c>
 800524e:	2300      	movs	r3, #0
 8005250:	9700      	str	r7, [sp, #0]
 8005252:	9302      	str	r3, [sp, #8]
 8005254:	4651      	mov	r1, sl
 8005256:	2201      	movs	r2, #1
 8005258:	4648      	mov	r0, r9
 800525a:	f001 fc93 	bl	8006b84 <__lshift>
 800525e:	4631      	mov	r1, r6
 8005260:	4682      	mov	sl, r0
 8005262:	f001 fce5 	bl	8006c30 <__mcmp>
 8005266:	2800      	cmp	r0, #0
 8005268:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800526c:	dc14      	bgt.n	8005298 <_dtoa_r+0x880>
 800526e:	d108      	bne.n	8005282 <_dtoa_r+0x86a>
 8005270:	9b00      	ldr	r3, [sp, #0]
 8005272:	07db      	lsls	r3, r3, #31
 8005274:	d410      	bmi.n	8005298 <_dtoa_r+0x880>
 8005276:	e004      	b.n	8005282 <_dtoa_r+0x86a>
 8005278:	40240000 	.word	0x40240000
 800527c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8005280:	461c      	mov	r4, r3
 8005282:	2a30      	cmp	r2, #48	; 0x30
 8005284:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005288:	d0f8      	beq.n	800527c <_dtoa_r+0x864>
 800528a:	e00b      	b.n	80052a4 <_dtoa_r+0x88c>
 800528c:	459b      	cmp	fp, r3
 800528e:	f000 814e 	beq.w	800552e <_dtoa_r+0xb16>
 8005292:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005296:	461c      	mov	r4, r3
 8005298:	2a39      	cmp	r2, #57	; 0x39
 800529a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800529e:	d0f5      	beq.n	800528c <_dtoa_r+0x874>
 80052a0:	3201      	adds	r2, #1
 80052a2:	701a      	strb	r2, [r3, #0]
 80052a4:	4631      	mov	r1, r6
 80052a6:	4648      	mov	r0, r9
 80052a8:	f001 fad2 	bl	8006850 <_Bfree>
 80052ac:	b155      	cbz	r5, 80052c4 <_dtoa_r+0x8ac>
 80052ae:	9902      	ldr	r1, [sp, #8]
 80052b0:	b121      	cbz	r1, 80052bc <_dtoa_r+0x8a4>
 80052b2:	42a9      	cmp	r1, r5
 80052b4:	d002      	beq.n	80052bc <_dtoa_r+0x8a4>
 80052b6:	4648      	mov	r0, r9
 80052b8:	f001 faca 	bl	8006850 <_Bfree>
 80052bc:	4629      	mov	r1, r5
 80052be:	4648      	mov	r0, r9
 80052c0:	f001 fac6 	bl	8006850 <_Bfree>
 80052c4:	4651      	mov	r1, sl
 80052c6:	4648      	mov	r0, r9
 80052c8:	f001 fac2 	bl	8006850 <_Bfree>
 80052cc:	2200      	movs	r2, #0
 80052ce:	9b06      	ldr	r3, [sp, #24]
 80052d0:	7022      	strb	r2, [r4, #0]
 80052d2:	9a05      	ldr	r2, [sp, #20]
 80052d4:	3301      	adds	r3, #1
 80052d6:	6013      	str	r3, [r2, #0]
 80052d8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80052da:	2b00      	cmp	r3, #0
 80052dc:	f43f abdb 	beq.w	8004a96 <_dtoa_r+0x7e>
 80052e0:	4658      	mov	r0, fp
 80052e2:	601c      	str	r4, [r3, #0]
 80052e4:	b01b      	add	sp, #108	; 0x6c
 80052e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80052ea:	201c      	movs	r0, #28
 80052ec:	e6eb      	b.n	80050c6 <_dtoa_r+0x6ae>
 80052ee:	4601      	mov	r1, r0
 80052f0:	4648      	mov	r0, r9
 80052f2:	f001 fbf7 	bl	8006ae4 <__pow5mult>
 80052f6:	9b02      	ldr	r3, [sp, #8]
 80052f8:	2b01      	cmp	r3, #1
 80052fa:	4606      	mov	r6, r0
 80052fc:	f340 80d4 	ble.w	80054a8 <_dtoa_r+0xa90>
 8005300:	2300      	movs	r3, #0
 8005302:	930c      	str	r3, [sp, #48]	; 0x30
 8005304:	6933      	ldr	r3, [r6, #16]
 8005306:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800530a:	6918      	ldr	r0, [r3, #16]
 800530c:	f001 faea 	bl	80068e4 <__hi0bits>
 8005310:	f1c0 0020 	rsb	r0, r0, #32
 8005314:	e6cb      	b.n	80050ae <_dtoa_r+0x696>
 8005316:	900d      	str	r0, [sp, #52]	; 0x34
 8005318:	e42a      	b.n	8004b70 <_dtoa_r+0x158>
 800531a:	2501      	movs	r5, #1
 800531c:	e440      	b.n	8004ba0 <_dtoa_r+0x188>
 800531e:	f1c3 0820 	rsb	r8, r3, #32
 8005322:	9b00      	ldr	r3, [sp, #0]
 8005324:	fa03 f008 	lsl.w	r0, r3, r8
 8005328:	f7ff bbd8 	b.w	8004adc <_dtoa_r+0xc4>
 800532c:	2300      	movs	r3, #0
 800532e:	930a      	str	r3, [sp, #40]	; 0x28
 8005330:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005334:	4413      	add	r3, r2
 8005336:	930e      	str	r3, [sp, #56]	; 0x38
 8005338:	3301      	adds	r3, #1
 800533a:	2b01      	cmp	r3, #1
 800533c:	461e      	mov	r6, r3
 800533e:	9309      	str	r3, [sp, #36]	; 0x24
 8005340:	bfb8      	it	lt
 8005342:	2601      	movlt	r6, #1
 8005344:	2100      	movs	r1, #0
 8005346:	2e17      	cmp	r6, #23
 8005348:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800534c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800534e:	f77f ac89 	ble.w	8004c64 <_dtoa_r+0x24c>
 8005352:	2201      	movs	r2, #1
 8005354:	2304      	movs	r3, #4
 8005356:	005b      	lsls	r3, r3, #1
 8005358:	f103 0014 	add.w	r0, r3, #20
 800535c:	42b0      	cmp	r0, r6
 800535e:	4611      	mov	r1, r2
 8005360:	f102 0201 	add.w	r2, r2, #1
 8005364:	d9f7      	bls.n	8005356 <_dtoa_r+0x93e>
 8005366:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800536a:	e47b      	b.n	8004c64 <_dtoa_r+0x24c>
 800536c:	2300      	movs	r3, #0
 800536e:	930a      	str	r3, [sp, #40]	; 0x28
 8005370:	9e07      	ldr	r6, [sp, #28]
 8005372:	2e00      	cmp	r6, #0
 8005374:	f340 80e2 	ble.w	800553c <_dtoa_r+0xb24>
 8005378:	960e      	str	r6, [sp, #56]	; 0x38
 800537a:	9609      	str	r6, [sp, #36]	; 0x24
 800537c:	e7e2      	b.n	8005344 <_dtoa_r+0x92c>
 800537e:	2301      	movs	r3, #1
 8005380:	930a      	str	r3, [sp, #40]	; 0x28
 8005382:	e7f5      	b.n	8005370 <_dtoa_r+0x958>
 8005384:	9b00      	ldr	r3, [sp, #0]
 8005386:	2b00      	cmp	r3, #0
 8005388:	f47f ae90 	bne.w	80050ac <_dtoa_r+0x694>
 800538c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005390:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8005394:	2b00      	cmp	r3, #0
 8005396:	f040 8192 	bne.w	80056be <_dtoa_r+0xca6>
 800539a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800539e:	0d1b      	lsrs	r3, r3, #20
 80053a0:	051b      	lsls	r3, r3, #20
 80053a2:	b12b      	cbz	r3, 80053b0 <_dtoa_r+0x998>
 80053a4:	9b08      	ldr	r3, [sp, #32]
 80053a6:	3301      	adds	r3, #1
 80053a8:	9308      	str	r3, [sp, #32]
 80053aa:	f108 0801 	add.w	r8, r8, #1
 80053ae:	2301      	movs	r3, #1
 80053b0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80053b2:	930c      	str	r3, [sp, #48]	; 0x30
 80053b4:	2a00      	cmp	r2, #0
 80053b6:	f43f ae79 	beq.w	80050ac <_dtoa_r+0x694>
 80053ba:	e7a3      	b.n	8005304 <_dtoa_r+0x8ec>
 80053bc:	463a      	mov	r2, r7
 80053be:	4629      	mov	r1, r5
 80053c0:	4648      	mov	r0, r9
 80053c2:	f001 fb8f 	bl	8006ae4 <__pow5mult>
 80053c6:	4652      	mov	r2, sl
 80053c8:	4601      	mov	r1, r0
 80053ca:	4605      	mov	r5, r0
 80053cc:	4648      	mov	r0, r9
 80053ce:	f001 fae3 	bl	8006998 <__multiply>
 80053d2:	4651      	mov	r1, sl
 80053d4:	4607      	mov	r7, r0
 80053d6:	4648      	mov	r0, r9
 80053d8:	f001 fa3a 	bl	8006850 <_Bfree>
 80053dc:	46ba      	mov	sl, r7
 80053de:	2e00      	cmp	r6, #0
 80053e0:	f43f ae57 	beq.w	8005092 <_dtoa_r+0x67a>
 80053e4:	e64f      	b.n	8005086 <_dtoa_r+0x66e>
 80053e6:	4629      	mov	r1, r5
 80053e8:	4622      	mov	r2, r4
 80053ea:	4648      	mov	r0, r9
 80053ec:	f001 fbca 	bl	8006b84 <__lshift>
 80053f0:	4605      	mov	r5, r0
 80053f2:	e68d      	b.n	8005110 <_dtoa_r+0x6f8>
 80053f4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80053f6:	2a00      	cmp	r2, #0
 80053f8:	f000 815d 	beq.w	80056b6 <_dtoa_r+0xc9e>
 80053fc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005400:	9a08      	ldr	r2, [sp, #32]
 8005402:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005404:	4614      	mov	r4, r2
 8005406:	441a      	add	r2, r3
 8005408:	4498      	add	r8, r3
 800540a:	9208      	str	r2, [sp, #32]
 800540c:	e5f7      	b.n	8004ffe <_dtoa_r+0x5e6>
 800540e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005410:	2b00      	cmp	r3, #0
 8005412:	f73f ad3e 	bgt.w	8004e92 <_dtoa_r+0x47a>
 8005416:	f040 80bc 	bne.w	8005592 <_dtoa_r+0xb7a>
 800541a:	ec51 0b17 	vmov	r0, r1, d7
 800541e:	2200      	movs	r2, #0
 8005420:	4bb2      	ldr	r3, [pc, #712]	; (80056ec <_dtoa_r+0xcd4>)
 8005422:	f7fb fbe9 	bl	8000bf8 <__aeabi_dmul>
 8005426:	e9dd 2300 	ldrd	r2, r3, [sp]
 800542a:	f7fb fe6b 	bl	8001104 <__aeabi_dcmpge>
 800542e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005430:	4635      	mov	r5, r6
 8005432:	2800      	cmp	r0, #0
 8005434:	d176      	bne.n	8005524 <_dtoa_r+0xb0c>
 8005436:	9a06      	ldr	r2, [sp, #24]
 8005438:	2331      	movs	r3, #49	; 0x31
 800543a:	3201      	adds	r2, #1
 800543c:	9206      	str	r2, [sp, #24]
 800543e:	f88b 3000 	strb.w	r3, [fp]
 8005442:	f10b 0401 	add.w	r4, fp, #1
 8005446:	4631      	mov	r1, r6
 8005448:	4648      	mov	r0, r9
 800544a:	f001 fa01 	bl	8006850 <_Bfree>
 800544e:	2d00      	cmp	r5, #0
 8005450:	f47f af34 	bne.w	80052bc <_dtoa_r+0x8a4>
 8005454:	e736      	b.n	80052c4 <_dtoa_r+0x8ac>
 8005456:	f000 8142 	beq.w	80056de <_dtoa_r+0xcc6>
 800545a:	9b06      	ldr	r3, [sp, #24]
 800545c:	425c      	negs	r4, r3
 800545e:	4ba4      	ldr	r3, [pc, #656]	; (80056f0 <_dtoa_r+0xcd8>)
 8005460:	f004 020f 	and.w	r2, r4, #15
 8005464:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005468:	e9d3 2300 	ldrd	r2, r3, [r3]
 800546c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005470:	f7fb fbc2 	bl	8000bf8 <__aeabi_dmul>
 8005474:	1124      	asrs	r4, r4, #4
 8005476:	e9cd 0100 	strd	r0, r1, [sp]
 800547a:	f000 81c6 	beq.w	800580a <_dtoa_r+0xdf2>
 800547e:	4d9d      	ldr	r5, [pc, #628]	; (80056f4 <_dtoa_r+0xcdc>)
 8005480:	2300      	movs	r3, #0
 8005482:	2602      	movs	r6, #2
 8005484:	07e7      	lsls	r7, r4, #31
 8005486:	d505      	bpl.n	8005494 <_dtoa_r+0xa7c>
 8005488:	e9d5 2300 	ldrd	r2, r3, [r5]
 800548c:	f7fb fbb4 	bl	8000bf8 <__aeabi_dmul>
 8005490:	3601      	adds	r6, #1
 8005492:	2301      	movs	r3, #1
 8005494:	1064      	asrs	r4, r4, #1
 8005496:	f105 0508 	add.w	r5, r5, #8
 800549a:	d1f3      	bne.n	8005484 <_dtoa_r+0xa6c>
 800549c:	2b00      	cmp	r3, #0
 800549e:	f43f ac27 	beq.w	8004cf0 <_dtoa_r+0x2d8>
 80054a2:	e9cd 0100 	strd	r0, r1, [sp]
 80054a6:	e423      	b.n	8004cf0 <_dtoa_r+0x2d8>
 80054a8:	9b00      	ldr	r3, [sp, #0]
 80054aa:	2b00      	cmp	r3, #0
 80054ac:	f43f af6e 	beq.w	800538c <_dtoa_r+0x974>
 80054b0:	e726      	b.n	8005300 <_dtoa_r+0x8e8>
 80054b2:	6869      	ldr	r1, [r5, #4]
 80054b4:	4648      	mov	r0, r9
 80054b6:	f001 f9a5 	bl	8006804 <_Balloc>
 80054ba:	692b      	ldr	r3, [r5, #16]
 80054bc:	3302      	adds	r3, #2
 80054be:	009a      	lsls	r2, r3, #2
 80054c0:	4604      	mov	r4, r0
 80054c2:	f105 010c 	add.w	r1, r5, #12
 80054c6:	300c      	adds	r0, #12
 80054c8:	f7fb f868 	bl	800059c <memcpy>
 80054cc:	4621      	mov	r1, r4
 80054ce:	2201      	movs	r2, #1
 80054d0:	4648      	mov	r0, r9
 80054d2:	f001 fb57 	bl	8006b84 <__lshift>
 80054d6:	4680      	mov	r8, r0
 80054d8:	e61f      	b.n	800511a <_dtoa_r+0x702>
 80054da:	2400      	movs	r4, #0
 80054dc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80054e0:	4621      	mov	r1, r4
 80054e2:	4648      	mov	r0, r9
 80054e4:	f001 f98e 	bl	8006804 <_Balloc>
 80054e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80054ec:	930e      	str	r3, [sp, #56]	; 0x38
 80054ee:	9309      	str	r3, [sp, #36]	; 0x24
 80054f0:	2301      	movs	r3, #1
 80054f2:	4683      	mov	fp, r0
 80054f4:	9407      	str	r4, [sp, #28]
 80054f6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80054fa:	930a      	str	r3, [sp, #40]	; 0x28
 80054fc:	e4b6      	b.n	8004e6c <_dtoa_r+0x454>
 80054fe:	f001 f9b1 	bl	8006864 <__multadd>
 8005502:	4627      	mov	r7, r4
 8005504:	4605      	mov	r5, r0
 8005506:	4680      	mov	r8, r0
 8005508:	e614      	b.n	8005134 <_dtoa_r+0x71c>
 800550a:	4648      	mov	r0, r9
 800550c:	f001 f9a0 	bl	8006850 <_Bfree>
 8005510:	2301      	movs	r3, #1
 8005512:	e639      	b.n	8005188 <_dtoa_r+0x770>
 8005514:	9b02      	ldr	r3, [sp, #8]
 8005516:	2b02      	cmp	r3, #2
 8005518:	f77f adf3 	ble.w	8005102 <_dtoa_r+0x6ea>
 800551c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800551e:	2b00      	cmp	r3, #0
 8005520:	f000 80cf 	beq.w	80056c2 <_dtoa_r+0xcaa>
 8005524:	9b07      	ldr	r3, [sp, #28]
 8005526:	43db      	mvns	r3, r3
 8005528:	9306      	str	r3, [sp, #24]
 800552a:	465c      	mov	r4, fp
 800552c:	e78b      	b.n	8005446 <_dtoa_r+0xa2e>
 800552e:	9a06      	ldr	r2, [sp, #24]
 8005530:	2331      	movs	r3, #49	; 0x31
 8005532:	3201      	adds	r2, #1
 8005534:	9206      	str	r2, [sp, #24]
 8005536:	f88b 3000 	strb.w	r3, [fp]
 800553a:	e6b3      	b.n	80052a4 <_dtoa_r+0x88c>
 800553c:	2401      	movs	r4, #1
 800553e:	9409      	str	r4, [sp, #36]	; 0x24
 8005540:	9407      	str	r4, [sp, #28]
 8005542:	f7ff bb8b 	b.w	8004c5c <_dtoa_r+0x244>
 8005546:	4630      	mov	r0, r6
 8005548:	f7fb faec 	bl	8000b24 <__aeabi_i2d>
 800554c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005550:	f7fb fb52 	bl	8000bf8 <__aeabi_dmul>
 8005554:	2200      	movs	r2, #0
 8005556:	4b68      	ldr	r3, [pc, #416]	; (80056f8 <_dtoa_r+0xce0>)
 8005558:	f7fb f998 	bl	800088c <__adddf3>
 800555c:	4606      	mov	r6, r0
 800555e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005562:	2200      	movs	r2, #0
 8005564:	4b61      	ldr	r3, [pc, #388]	; (80056ec <_dtoa_r+0xcd4>)
 8005566:	e9dd 0100 	ldrd	r0, r1, [sp]
 800556a:	f7fb f98d 	bl	8000888 <__aeabi_dsub>
 800556e:	4632      	mov	r2, r6
 8005570:	463b      	mov	r3, r7
 8005572:	4604      	mov	r4, r0
 8005574:	460d      	mov	r5, r1
 8005576:	f7fb fdcf 	bl	8001118 <__aeabi_dcmpgt>
 800557a:	2800      	cmp	r0, #0
 800557c:	d14f      	bne.n	800561e <_dtoa_r+0xc06>
 800557e:	4632      	mov	r2, r6
 8005580:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005584:	4620      	mov	r0, r4
 8005586:	4629      	mov	r1, r5
 8005588:	f7fb fda8 	bl	80010dc <__aeabi_dcmplt>
 800558c:	2800      	cmp	r0, #0
 800558e:	f43f ac69 	beq.w	8004e64 <_dtoa_r+0x44c>
 8005592:	2600      	movs	r6, #0
 8005594:	4635      	mov	r5, r6
 8005596:	e7c5      	b.n	8005524 <_dtoa_r+0xb0c>
 8005598:	2301      	movs	r3, #1
 800559a:	930a      	str	r3, [sp, #40]	; 0x28
 800559c:	e6c8      	b.n	8005330 <_dtoa_r+0x918>
 800559e:	4651      	mov	r1, sl
 80055a0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80055a2:	4648      	mov	r0, r9
 80055a4:	f001 fa9e 	bl	8006ae4 <__pow5mult>
 80055a8:	4682      	mov	sl, r0
 80055aa:	e572      	b.n	8005092 <_dtoa_r+0x67a>
 80055ac:	f8dd a000 	ldr.w	sl, [sp]
 80055b0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80055b4:	e686      	b.n	80052c4 <_dtoa_r+0x8ac>
 80055b6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80055b8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80055ba:	1afb      	subs	r3, r7, r3
 80055bc:	441a      	add	r2, r3
 80055be:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80055c2:	2700      	movs	r7, #0
 80055c4:	e512      	b.n	8004fec <_dtoa_r+0x5d4>
 80055c6:	2b00      	cmp	r3, #0
 80055c8:	9402      	str	r4, [sp, #8]
 80055ca:	465e      	mov	r6, fp
 80055cc:	f107 0401 	add.w	r4, r7, #1
 80055d0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80055d4:	f300 80ba 	bgt.w	800574c <_dtoa_r+0xd34>
 80055d8:	9b00      	ldr	r3, [sp, #0]
 80055da:	9502      	str	r5, [sp, #8]
 80055dc:	703b      	strb	r3, [r7, #0]
 80055de:	4645      	mov	r5, r8
 80055e0:	e660      	b.n	80052a4 <_dtoa_r+0x88c>
 80055e2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80055e6:	2602      	movs	r6, #2
 80055e8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80055ec:	f7ff bb67 	b.w	8004cbe <_dtoa_r+0x2a6>
 80055f0:	9b00      	ldr	r3, [sp, #0]
 80055f2:	2b39      	cmp	r3, #57	; 0x39
 80055f4:	465e      	mov	r6, fp
 80055f6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80055fa:	f000 80b9 	beq.w	8005770 <_dtoa_r+0xd58>
 80055fe:	9b00      	ldr	r3, [sp, #0]
 8005600:	9502      	str	r5, [sp, #8]
 8005602:	3301      	adds	r3, #1
 8005604:	703b      	strb	r3, [r7, #0]
 8005606:	4645      	mov	r5, r8
 8005608:	e64c      	b.n	80052a4 <_dtoa_r+0x88c>
 800560a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800560e:	1a9c      	subs	r4, r3, r2
 8005610:	e4f5      	b.n	8004ffe <_dtoa_r+0x5e6>
 8005612:	465e      	mov	r6, fp
 8005614:	9502      	str	r5, [sp, #8]
 8005616:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800561a:	4645      	mov	r5, r8
 800561c:	e61a      	b.n	8005254 <_dtoa_r+0x83c>
 800561e:	2600      	movs	r6, #0
 8005620:	4635      	mov	r5, r6
 8005622:	e708      	b.n	8005436 <_dtoa_r+0xa1e>
 8005624:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005628:	e9dd 0100 	ldrd	r0, r1, [sp]
 800562c:	f7fb fae4 	bl	8000bf8 <__aeabi_dmul>
 8005630:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005632:	f88b 5000 	strb.w	r5, [fp]
 8005636:	2b01      	cmp	r3, #1
 8005638:	e9cd 0100 	strd	r0, r1, [sp]
 800563c:	d020      	beq.n	8005680 <_dtoa_r+0xc68>
 800563e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005640:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005644:	445b      	add	r3, fp
 8005646:	4698      	mov	r8, r3
 8005648:	2200      	movs	r2, #0
 800564a:	4b2c      	ldr	r3, [pc, #176]	; (80056fc <_dtoa_r+0xce4>)
 800564c:	4630      	mov	r0, r6
 800564e:	4639      	mov	r1, r7
 8005650:	f7fb fad2 	bl	8000bf8 <__aeabi_dmul>
 8005654:	460f      	mov	r7, r1
 8005656:	4606      	mov	r6, r0
 8005658:	f7fb fd7e 	bl	8001158 <__aeabi_d2iz>
 800565c:	4605      	mov	r5, r0
 800565e:	f7fb fa61 	bl	8000b24 <__aeabi_i2d>
 8005662:	3530      	adds	r5, #48	; 0x30
 8005664:	4602      	mov	r2, r0
 8005666:	460b      	mov	r3, r1
 8005668:	4630      	mov	r0, r6
 800566a:	4639      	mov	r1, r7
 800566c:	f7fb f90c 	bl	8000888 <__aeabi_dsub>
 8005670:	f804 5b01 	strb.w	r5, [r4], #1
 8005674:	4544      	cmp	r4, r8
 8005676:	4606      	mov	r6, r0
 8005678:	460f      	mov	r7, r1
 800567a:	d1e5      	bne.n	8005648 <_dtoa_r+0xc30>
 800567c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005680:	4b1f      	ldr	r3, [pc, #124]	; (8005700 <_dtoa_r+0xce8>)
 8005682:	2200      	movs	r2, #0
 8005684:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005688:	f7fb f900 	bl	800088c <__adddf3>
 800568c:	4632      	mov	r2, r6
 800568e:	463b      	mov	r3, r7
 8005690:	f7fb fd24 	bl	80010dc <__aeabi_dcmplt>
 8005694:	2800      	cmp	r0, #0
 8005696:	d070      	beq.n	800577a <_dtoa_r+0xd62>
 8005698:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800569a:	9306      	str	r3, [sp, #24]
 800569c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80056a0:	e48f      	b.n	8004fc2 <_dtoa_r+0x5aa>
 80056a2:	2330      	movs	r3, #48	; 0x30
 80056a4:	f88b 3000 	strb.w	r3, [fp]
 80056a8:	9b06      	ldr	r3, [sp, #24]
 80056aa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80056ae:	3301      	adds	r3, #1
 80056b0:	9306      	str	r3, [sp, #24]
 80056b2:	465b      	mov	r3, fp
 80056b4:	e489      	b.n	8004fca <_dtoa_r+0x5b2>
 80056b6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80056b8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80056bc:	e6a0      	b.n	8005400 <_dtoa_r+0x9e8>
 80056be:	2300      	movs	r3, #0
 80056c0:	e676      	b.n	80053b0 <_dtoa_r+0x998>
 80056c2:	4631      	mov	r1, r6
 80056c4:	2205      	movs	r2, #5
 80056c6:	4648      	mov	r0, r9
 80056c8:	f001 f8cc 	bl	8006864 <__multadd>
 80056cc:	4601      	mov	r1, r0
 80056ce:	4606      	mov	r6, r0
 80056d0:	4650      	mov	r0, sl
 80056d2:	f001 faad 	bl	8006c30 <__mcmp>
 80056d6:	2800      	cmp	r0, #0
 80056d8:	f73f aead 	bgt.w	8005436 <_dtoa_r+0xa1e>
 80056dc:	e722      	b.n	8005524 <_dtoa_r+0xb0c>
 80056de:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80056e2:	2602      	movs	r6, #2
 80056e4:	ed8d 7b00 	vstr	d7, [sp]
 80056e8:	f7ff bb02 	b.w	8004cf0 <_dtoa_r+0x2d8>
 80056ec:	40140000 	.word	0x40140000
 80056f0:	08007ad8 	.word	0x08007ad8
 80056f4:	08007ab0 	.word	0x08007ab0
 80056f8:	401c0000 	.word	0x401c0000
 80056fc:	40240000 	.word	0x40240000
 8005700:	3fe00000 	.word	0x3fe00000
 8005704:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005706:	2b00      	cmp	r3, #0
 8005708:	f43f af1d 	beq.w	8005546 <_dtoa_r+0xb2e>
 800570c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800570e:	2c00      	cmp	r4, #0
 8005710:	f77f aba8 	ble.w	8004e64 <_dtoa_r+0x44c>
 8005714:	2200      	movs	r2, #0
 8005716:	4b45      	ldr	r3, [pc, #276]	; (800582c <_dtoa_r+0xe14>)
 8005718:	e9dd 0100 	ldrd	r0, r1, [sp]
 800571c:	f7fb fa6c 	bl	8000bf8 <__aeabi_dmul>
 8005720:	e9cd 0100 	strd	r0, r1, [sp]
 8005724:	1c70      	adds	r0, r6, #1
 8005726:	f7fb f9fd 	bl	8000b24 <__aeabi_i2d>
 800572a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800572e:	f7fb fa63 	bl	8000bf8 <__aeabi_dmul>
 8005732:	4b3f      	ldr	r3, [pc, #252]	; (8005830 <_dtoa_r+0xe18>)
 8005734:	2200      	movs	r2, #0
 8005736:	f7fb f8a9 	bl	800088c <__adddf3>
 800573a:	9b06      	ldr	r3, [sp, #24]
 800573c:	9412      	str	r4, [sp, #72]	; 0x48
 800573e:	3b01      	subs	r3, #1
 8005740:	4606      	mov	r6, r0
 8005742:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005746:	9316      	str	r3, [sp, #88]	; 0x58
 8005748:	f7ff baf3 	b.w	8004d32 <_dtoa_r+0x31a>
 800574c:	4651      	mov	r1, sl
 800574e:	2201      	movs	r2, #1
 8005750:	4648      	mov	r0, r9
 8005752:	f001 fa17 	bl	8006b84 <__lshift>
 8005756:	4631      	mov	r1, r6
 8005758:	4682      	mov	sl, r0
 800575a:	f001 fa69 	bl	8006c30 <__mcmp>
 800575e:	2800      	cmp	r0, #0
 8005760:	dd3b      	ble.n	80057da <_dtoa_r+0xdc2>
 8005762:	9b00      	ldr	r3, [sp, #0]
 8005764:	2b39      	cmp	r3, #57	; 0x39
 8005766:	d003      	beq.n	8005770 <_dtoa_r+0xd58>
 8005768:	9b02      	ldr	r3, [sp, #8]
 800576a:	3331      	adds	r3, #49	; 0x31
 800576c:	9300      	str	r3, [sp, #0]
 800576e:	e733      	b.n	80055d8 <_dtoa_r+0xbc0>
 8005770:	2239      	movs	r2, #57	; 0x39
 8005772:	9502      	str	r5, [sp, #8]
 8005774:	703a      	strb	r2, [r7, #0]
 8005776:	4645      	mov	r5, r8
 8005778:	e58e      	b.n	8005298 <_dtoa_r+0x880>
 800577a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800577e:	2000      	movs	r0, #0
 8005780:	492c      	ldr	r1, [pc, #176]	; (8005834 <_dtoa_r+0xe1c>)
 8005782:	f7fb f881 	bl	8000888 <__aeabi_dsub>
 8005786:	4632      	mov	r2, r6
 8005788:	463b      	mov	r3, r7
 800578a:	f7fb fcc5 	bl	8001118 <__aeabi_dcmpgt>
 800578e:	b910      	cbnz	r0, 8005796 <_dtoa_r+0xd7e>
 8005790:	f7ff bb68 	b.w	8004e64 <_dtoa_r+0x44c>
 8005794:	4614      	mov	r4, r2
 8005796:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800579a:	2b30      	cmp	r3, #48	; 0x30
 800579c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80057a0:	d0f8      	beq.n	8005794 <_dtoa_r+0xd7c>
 80057a2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80057a4:	9306      	str	r3, [sp, #24]
 80057a6:	e58d      	b.n	80052c4 <_dtoa_r+0x8ac>
 80057a8:	46d9      	mov	r9, fp
 80057aa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80057ae:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80057b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80057b4:	9306      	str	r3, [sp, #24]
 80057b6:	e404      	b.n	8004fc2 <_dtoa_r+0x5aa>
 80057b8:	9b00      	ldr	r3, [sp, #0]
 80057ba:	2b39      	cmp	r3, #57	; 0x39
 80057bc:	4621      	mov	r1, r4
 80057be:	4632      	mov	r2, r6
 80057c0:	f107 0401 	add.w	r4, r7, #1
 80057c4:	465e      	mov	r6, fp
 80057c6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80057ca:	d0d1      	beq.n	8005770 <_dtoa_r+0xd58>
 80057cc:	2a00      	cmp	r2, #0
 80057ce:	f77f af03 	ble.w	80055d8 <_dtoa_r+0xbc0>
 80057d2:	460b      	mov	r3, r1
 80057d4:	3331      	adds	r3, #49	; 0x31
 80057d6:	9300      	str	r3, [sp, #0]
 80057d8:	e6fe      	b.n	80055d8 <_dtoa_r+0xbc0>
 80057da:	f47f aefd 	bne.w	80055d8 <_dtoa_r+0xbc0>
 80057de:	9b00      	ldr	r3, [sp, #0]
 80057e0:	07da      	lsls	r2, r3, #31
 80057e2:	f57f aef9 	bpl.w	80055d8 <_dtoa_r+0xbc0>
 80057e6:	e7bc      	b.n	8005762 <_dtoa_r+0xd4a>
 80057e8:	4629      	mov	r1, r5
 80057ea:	2300      	movs	r3, #0
 80057ec:	220a      	movs	r2, #10
 80057ee:	4648      	mov	r0, r9
 80057f0:	f001 f838 	bl	8006864 <__multadd>
 80057f4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80057f6:	2b00      	cmp	r3, #0
 80057f8:	4605      	mov	r5, r0
 80057fa:	dd09      	ble.n	8005810 <_dtoa_r+0xdf8>
 80057fc:	9309      	str	r3, [sp, #36]	; 0x24
 80057fe:	e484      	b.n	800510a <_dtoa_r+0x6f2>
 8005800:	9b02      	ldr	r3, [sp, #8]
 8005802:	2b02      	cmp	r3, #2
 8005804:	dc0e      	bgt.n	8005824 <_dtoa_r+0xe0c>
 8005806:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005808:	e507      	b.n	800521a <_dtoa_r+0x802>
 800580a:	2602      	movs	r6, #2
 800580c:	f7ff ba70 	b.w	8004cf0 <_dtoa_r+0x2d8>
 8005810:	9b02      	ldr	r3, [sp, #8]
 8005812:	2b02      	cmp	r3, #2
 8005814:	dc06      	bgt.n	8005824 <_dtoa_r+0xe0c>
 8005816:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005818:	e7f0      	b.n	80057fc <_dtoa_r+0xde4>
 800581a:	f43f ac59 	beq.w	80050d0 <_dtoa_r+0x6b8>
 800581e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005822:	e450      	b.n	80050c6 <_dtoa_r+0x6ae>
 8005824:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005826:	9309      	str	r3, [sp, #36]	; 0x24
 8005828:	e678      	b.n	800551c <_dtoa_r+0xb04>
 800582a:	bf00      	nop
 800582c:	40240000 	.word	0x40240000
 8005830:	401c0000 	.word	0x401c0000
 8005834:	3fe00000 	.word	0x3fe00000

08005838 <__sflush_r>:
 8005838:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800583c:	b29a      	uxth	r2, r3
 800583e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005842:	460c      	mov	r4, r1
 8005844:	0711      	lsls	r1, r2, #28
 8005846:	4680      	mov	r8, r0
 8005848:	d444      	bmi.n	80058d4 <__sflush_r+0x9c>
 800584a:	6862      	ldr	r2, [r4, #4]
 800584c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005850:	2a00      	cmp	r2, #0
 8005852:	81a3      	strh	r3, [r4, #12]
 8005854:	dd59      	ble.n	800590a <__sflush_r+0xd2>
 8005856:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005858:	2d00      	cmp	r5, #0
 800585a:	d053      	beq.n	8005904 <__sflush_r+0xcc>
 800585c:	2200      	movs	r2, #0
 800585e:	b29b      	uxth	r3, r3
 8005860:	f8d8 6000 	ldr.w	r6, [r8]
 8005864:	69e1      	ldr	r1, [r4, #28]
 8005866:	f8c8 2000 	str.w	r2, [r8]
 800586a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800586e:	f040 8083 	bne.w	8005978 <__sflush_r+0x140>
 8005872:	2301      	movs	r3, #1
 8005874:	4640      	mov	r0, r8
 8005876:	47a8      	blx	r5
 8005878:	1c42      	adds	r2, r0, #1
 800587a:	d04a      	beq.n	8005912 <__sflush_r+0xda>
 800587c:	89a3      	ldrh	r3, [r4, #12]
 800587e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005880:	69e1      	ldr	r1, [r4, #28]
 8005882:	075b      	lsls	r3, r3, #29
 8005884:	d505      	bpl.n	8005892 <__sflush_r+0x5a>
 8005886:	6862      	ldr	r2, [r4, #4]
 8005888:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800588a:	1a80      	subs	r0, r0, r2
 800588c:	b10b      	cbz	r3, 8005892 <__sflush_r+0x5a>
 800588e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005890:	1ac0      	subs	r0, r0, r3
 8005892:	4602      	mov	r2, r0
 8005894:	2300      	movs	r3, #0
 8005896:	4640      	mov	r0, r8
 8005898:	47a8      	blx	r5
 800589a:	1c47      	adds	r7, r0, #1
 800589c:	d045      	beq.n	800592a <__sflush_r+0xf2>
 800589e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058a2:	6922      	ldr	r2, [r4, #16]
 80058a4:	6022      	str	r2, [r4, #0]
 80058a6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80058aa:	2200      	movs	r2, #0
 80058ac:	81a3      	strh	r3, [r4, #12]
 80058ae:	04db      	lsls	r3, r3, #19
 80058b0:	6062      	str	r2, [r4, #4]
 80058b2:	d500      	bpl.n	80058b6 <__sflush_r+0x7e>
 80058b4:	6520      	str	r0, [r4, #80]	; 0x50
 80058b6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80058b8:	f8c8 6000 	str.w	r6, [r8]
 80058bc:	b311      	cbz	r1, 8005904 <__sflush_r+0xcc>
 80058be:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80058c2:	4299      	cmp	r1, r3
 80058c4:	d002      	beq.n	80058cc <__sflush_r+0x94>
 80058c6:	4640      	mov	r0, r8
 80058c8:	f000 f95e 	bl	8005b88 <_free_r>
 80058cc:	2000      	movs	r0, #0
 80058ce:	6320      	str	r0, [r4, #48]	; 0x30
 80058d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80058d4:	6926      	ldr	r6, [r4, #16]
 80058d6:	b1ae      	cbz	r6, 8005904 <__sflush_r+0xcc>
 80058d8:	6825      	ldr	r5, [r4, #0]
 80058da:	6026      	str	r6, [r4, #0]
 80058dc:	0792      	lsls	r2, r2, #30
 80058de:	bf0c      	ite	eq
 80058e0:	6963      	ldreq	r3, [r4, #20]
 80058e2:	2300      	movne	r3, #0
 80058e4:	1bad      	subs	r5, r5, r6
 80058e6:	60a3      	str	r3, [r4, #8]
 80058e8:	e00a      	b.n	8005900 <__sflush_r+0xc8>
 80058ea:	462b      	mov	r3, r5
 80058ec:	4632      	mov	r2, r6
 80058ee:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80058f0:	69e1      	ldr	r1, [r4, #28]
 80058f2:	4640      	mov	r0, r8
 80058f4:	47b8      	blx	r7
 80058f6:	2800      	cmp	r0, #0
 80058f8:	eba5 0500 	sub.w	r5, r5, r0
 80058fc:	4406      	add	r6, r0
 80058fe:	dd2b      	ble.n	8005958 <__sflush_r+0x120>
 8005900:	2d00      	cmp	r5, #0
 8005902:	dcf2      	bgt.n	80058ea <__sflush_r+0xb2>
 8005904:	2000      	movs	r0, #0
 8005906:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800590a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800590c:	2a00      	cmp	r2, #0
 800590e:	dca2      	bgt.n	8005856 <__sflush_r+0x1e>
 8005910:	e7f8      	b.n	8005904 <__sflush_r+0xcc>
 8005912:	f8d8 3000 	ldr.w	r3, [r8]
 8005916:	2b00      	cmp	r3, #0
 8005918:	d0b0      	beq.n	800587c <__sflush_r+0x44>
 800591a:	2b1d      	cmp	r3, #29
 800591c:	d001      	beq.n	8005922 <__sflush_r+0xea>
 800591e:	2b16      	cmp	r3, #22
 8005920:	d12c      	bne.n	800597c <__sflush_r+0x144>
 8005922:	f8c8 6000 	str.w	r6, [r8]
 8005926:	2000      	movs	r0, #0
 8005928:	e7ed      	b.n	8005906 <__sflush_r+0xce>
 800592a:	f8d8 1000 	ldr.w	r1, [r8]
 800592e:	291d      	cmp	r1, #29
 8005930:	d81a      	bhi.n	8005968 <__sflush_r+0x130>
 8005932:	4b15      	ldr	r3, [pc, #84]	; (8005988 <__sflush_r+0x150>)
 8005934:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005938:	40cb      	lsrs	r3, r1
 800593a:	43db      	mvns	r3, r3
 800593c:	f013 0301 	ands.w	r3, r3, #1
 8005940:	d114      	bne.n	800596c <__sflush_r+0x134>
 8005942:	6925      	ldr	r5, [r4, #16]
 8005944:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005948:	e9c4 5300 	strd	r5, r3, [r4]
 800594c:	04d5      	lsls	r5, r2, #19
 800594e:	81a2      	strh	r2, [r4, #12]
 8005950:	d5b1      	bpl.n	80058b6 <__sflush_r+0x7e>
 8005952:	2900      	cmp	r1, #0
 8005954:	d1af      	bne.n	80058b6 <__sflush_r+0x7e>
 8005956:	e7ad      	b.n	80058b4 <__sflush_r+0x7c>
 8005958:	89a3      	ldrh	r3, [r4, #12]
 800595a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800595e:	81a3      	strh	r3, [r4, #12]
 8005960:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005964:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005968:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800596c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005970:	81a2      	strh	r2, [r4, #12]
 8005972:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005976:	e7c6      	b.n	8005906 <__sflush_r+0xce>
 8005978:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800597a:	e782      	b.n	8005882 <__sflush_r+0x4a>
 800597c:	89a3      	ldrh	r3, [r4, #12]
 800597e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005982:	81a3      	strh	r3, [r4, #12]
 8005984:	e7bf      	b.n	8005906 <__sflush_r+0xce>
 8005986:	bf00      	nop
 8005988:	20400001 	.word	0x20400001

0800598c <_fflush_r>:
 800598c:	b538      	push	{r3, r4, r5, lr}
 800598e:	460d      	mov	r5, r1
 8005990:	4604      	mov	r4, r0
 8005992:	b108      	cbz	r0, 8005998 <_fflush_r+0xc>
 8005994:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005996:	b1a3      	cbz	r3, 80059c2 <_fflush_r+0x36>
 8005998:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800599c:	b1b8      	cbz	r0, 80059ce <_fflush_r+0x42>
 800599e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80059a0:	07db      	lsls	r3, r3, #31
 80059a2:	d401      	bmi.n	80059a8 <_fflush_r+0x1c>
 80059a4:	0581      	lsls	r1, r0, #22
 80059a6:	d51a      	bpl.n	80059de <_fflush_r+0x52>
 80059a8:	4620      	mov	r0, r4
 80059aa:	4629      	mov	r1, r5
 80059ac:	f7ff ff44 	bl	8005838 <__sflush_r>
 80059b0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80059b2:	07da      	lsls	r2, r3, #31
 80059b4:	4604      	mov	r4, r0
 80059b6:	d402      	bmi.n	80059be <_fflush_r+0x32>
 80059b8:	89ab      	ldrh	r3, [r5, #12]
 80059ba:	059b      	lsls	r3, r3, #22
 80059bc:	d50a      	bpl.n	80059d4 <_fflush_r+0x48>
 80059be:	4620      	mov	r0, r4
 80059c0:	bd38      	pop	{r3, r4, r5, pc}
 80059c2:	f000 f83f 	bl	8005a44 <__sinit>
 80059c6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80059ca:	2800      	cmp	r0, #0
 80059cc:	d1e7      	bne.n	800599e <_fflush_r+0x12>
 80059ce:	4604      	mov	r4, r0
 80059d0:	4620      	mov	r0, r4
 80059d2:	bd38      	pop	{r3, r4, r5, pc}
 80059d4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80059d6:	f000 fb87 	bl	80060e8 <__retarget_lock_release_recursive>
 80059da:	4620      	mov	r0, r4
 80059dc:	bd38      	pop	{r3, r4, r5, pc}
 80059de:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80059e0:	f000 fb80 	bl	80060e4 <__retarget_lock_acquire_recursive>
 80059e4:	e7e0      	b.n	80059a8 <_fflush_r+0x1c>
 80059e6:	bf00      	nop

080059e8 <std>:
 80059e8:	b510      	push	{r4, lr}
 80059ea:	2300      	movs	r3, #0
 80059ec:	4604      	mov	r4, r0
 80059ee:	8181      	strh	r1, [r0, #12]
 80059f0:	81c2      	strh	r2, [r0, #14]
 80059f2:	e9c0 3300 	strd	r3, r3, [r0]
 80059f6:	6083      	str	r3, [r0, #8]
 80059f8:	6643      	str	r3, [r0, #100]	; 0x64
 80059fa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80059fe:	6183      	str	r3, [r0, #24]
 8005a00:	4619      	mov	r1, r3
 8005a02:	2208      	movs	r2, #8
 8005a04:	305c      	adds	r0, #92	; 0x5c
 8005a06:	f7fd f8cb 	bl	8002ba0 <memset>
 8005a0a:	4807      	ldr	r0, [pc, #28]	; (8005a28 <std+0x40>)
 8005a0c:	4907      	ldr	r1, [pc, #28]	; (8005a2c <std+0x44>)
 8005a0e:	4a08      	ldr	r2, [pc, #32]	; (8005a30 <std+0x48>)
 8005a10:	4b08      	ldr	r3, [pc, #32]	; (8005a34 <std+0x4c>)
 8005a12:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005a14:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005a18:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005a1c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005a20:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005a24:	f000 bb5a 	b.w	80060dc <__retarget_lock_init_recursive>
 8005a28:	08007201 	.word	0x08007201
 8005a2c:	08007225 	.word	0x08007225
 8005a30:	08007261 	.word	0x08007261
 8005a34:	08007281 	.word	0x08007281

08005a38 <_cleanup_r>:
 8005a38:	4901      	ldr	r1, [pc, #4]	; (8005a40 <_cleanup_r+0x8>)
 8005a3a:	f000 bb17 	b.w	800606c <_fwalk_reent>
 8005a3e:	bf00      	nop
 8005a40:	080074f1 	.word	0x080074f1

08005a44 <__sinit>:
 8005a44:	b510      	push	{r4, lr}
 8005a46:	4604      	mov	r4, r0
 8005a48:	4812      	ldr	r0, [pc, #72]	; (8005a94 <__sinit+0x50>)
 8005a4a:	f000 fb4b 	bl	80060e4 <__retarget_lock_acquire_recursive>
 8005a4e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005a50:	b9d2      	cbnz	r2, 8005a88 <__sinit+0x44>
 8005a52:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005a56:	4810      	ldr	r0, [pc, #64]	; (8005a98 <__sinit+0x54>)
 8005a58:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005a5c:	2103      	movs	r1, #3
 8005a5e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005a62:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005a64:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005a68:	6860      	ldr	r0, [r4, #4]
 8005a6a:	2104      	movs	r1, #4
 8005a6c:	f7ff ffbc 	bl	80059e8 <std>
 8005a70:	2201      	movs	r2, #1
 8005a72:	2109      	movs	r1, #9
 8005a74:	68a0      	ldr	r0, [r4, #8]
 8005a76:	f7ff ffb7 	bl	80059e8 <std>
 8005a7a:	2202      	movs	r2, #2
 8005a7c:	2112      	movs	r1, #18
 8005a7e:	68e0      	ldr	r0, [r4, #12]
 8005a80:	f7ff ffb2 	bl	80059e8 <std>
 8005a84:	2301      	movs	r3, #1
 8005a86:	63a3      	str	r3, [r4, #56]	; 0x38
 8005a88:	4802      	ldr	r0, [pc, #8]	; (8005a94 <__sinit+0x50>)
 8005a8a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005a8e:	f000 bb2b 	b.w	80060e8 <__retarget_lock_release_recursive>
 8005a92:	bf00      	nop
 8005a94:	20001570 	.word	0x20001570
 8005a98:	08005a39 	.word	0x08005a39

08005a9c <__sfp_lock_acquire>:
 8005a9c:	4801      	ldr	r0, [pc, #4]	; (8005aa4 <__sfp_lock_acquire+0x8>)
 8005a9e:	f000 bb21 	b.w	80060e4 <__retarget_lock_acquire_recursive>
 8005aa2:	bf00      	nop
 8005aa4:	20001584 	.word	0x20001584

08005aa8 <__sfp_lock_release>:
 8005aa8:	4801      	ldr	r0, [pc, #4]	; (8005ab0 <__sfp_lock_release+0x8>)
 8005aaa:	f000 bb1d 	b.w	80060e8 <__retarget_lock_release_recursive>
 8005aae:	bf00      	nop
 8005ab0:	20001584 	.word	0x20001584

08005ab4 <__libc_fini_array>:
 8005ab4:	b538      	push	{r3, r4, r5, lr}
 8005ab6:	4c0a      	ldr	r4, [pc, #40]	; (8005ae0 <__libc_fini_array+0x2c>)
 8005ab8:	4d0a      	ldr	r5, [pc, #40]	; (8005ae4 <__libc_fini_array+0x30>)
 8005aba:	1b64      	subs	r4, r4, r5
 8005abc:	10a4      	asrs	r4, r4, #2
 8005abe:	d00a      	beq.n	8005ad6 <__libc_fini_array+0x22>
 8005ac0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005ac4:	3b01      	subs	r3, #1
 8005ac6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005aca:	3c01      	subs	r4, #1
 8005acc:	f855 3904 	ldr.w	r3, [r5], #-4
 8005ad0:	4798      	blx	r3
 8005ad2:	2c00      	cmp	r4, #0
 8005ad4:	d1f9      	bne.n	8005aca <__libc_fini_array+0x16>
 8005ad6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005ada:	f001 befd 	b.w	80078d8 <_fini>
 8005ade:	bf00      	nop
 8005ae0:	08007cd4 	.word	0x08007cd4
 8005ae4:	08007cd0 	.word	0x08007cd0

08005ae8 <_malloc_trim_r>:
 8005ae8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005aea:	4f24      	ldr	r7, [pc, #144]	; (8005b7c <_malloc_trim_r+0x94>)
 8005aec:	460c      	mov	r4, r1
 8005aee:	4606      	mov	r6, r0
 8005af0:	f000 fe7c 	bl	80067ec <__malloc_lock>
 8005af4:	68bb      	ldr	r3, [r7, #8]
 8005af6:	685d      	ldr	r5, [r3, #4]
 8005af8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005afc:	310f      	adds	r1, #15
 8005afe:	f025 0503 	bic.w	r5, r5, #3
 8005b02:	4429      	add	r1, r5
 8005b04:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005b08:	f021 010f 	bic.w	r1, r1, #15
 8005b0c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005b10:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005b14:	db07      	blt.n	8005b26 <_malloc_trim_r+0x3e>
 8005b16:	2100      	movs	r1, #0
 8005b18:	4630      	mov	r0, r6
 8005b1a:	f001 fb5f 	bl	80071dc <_sbrk_r>
 8005b1e:	68bb      	ldr	r3, [r7, #8]
 8005b20:	442b      	add	r3, r5
 8005b22:	4298      	cmp	r0, r3
 8005b24:	d004      	beq.n	8005b30 <_malloc_trim_r+0x48>
 8005b26:	4630      	mov	r0, r6
 8005b28:	f000 fe66 	bl	80067f8 <__malloc_unlock>
 8005b2c:	2000      	movs	r0, #0
 8005b2e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005b30:	4261      	negs	r1, r4
 8005b32:	4630      	mov	r0, r6
 8005b34:	f001 fb52 	bl	80071dc <_sbrk_r>
 8005b38:	3001      	adds	r0, #1
 8005b3a:	d00d      	beq.n	8005b58 <_malloc_trim_r+0x70>
 8005b3c:	4b10      	ldr	r3, [pc, #64]	; (8005b80 <_malloc_trim_r+0x98>)
 8005b3e:	68ba      	ldr	r2, [r7, #8]
 8005b40:	6819      	ldr	r1, [r3, #0]
 8005b42:	1b2d      	subs	r5, r5, r4
 8005b44:	f045 0501 	orr.w	r5, r5, #1
 8005b48:	4630      	mov	r0, r6
 8005b4a:	1b09      	subs	r1, r1, r4
 8005b4c:	6055      	str	r5, [r2, #4]
 8005b4e:	6019      	str	r1, [r3, #0]
 8005b50:	f000 fe52 	bl	80067f8 <__malloc_unlock>
 8005b54:	2001      	movs	r0, #1
 8005b56:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005b58:	2100      	movs	r1, #0
 8005b5a:	4630      	mov	r0, r6
 8005b5c:	f001 fb3e 	bl	80071dc <_sbrk_r>
 8005b60:	68ba      	ldr	r2, [r7, #8]
 8005b62:	1a83      	subs	r3, r0, r2
 8005b64:	2b0f      	cmp	r3, #15
 8005b66:	ddde      	ble.n	8005b26 <_malloc_trim_r+0x3e>
 8005b68:	4c06      	ldr	r4, [pc, #24]	; (8005b84 <_malloc_trim_r+0x9c>)
 8005b6a:	4905      	ldr	r1, [pc, #20]	; (8005b80 <_malloc_trim_r+0x98>)
 8005b6c:	6824      	ldr	r4, [r4, #0]
 8005b6e:	f043 0301 	orr.w	r3, r3, #1
 8005b72:	1b00      	subs	r0, r0, r4
 8005b74:	6053      	str	r3, [r2, #4]
 8005b76:	6008      	str	r0, [r1, #0]
 8005b78:	e7d5      	b.n	8005b26 <_malloc_trim_r+0x3e>
 8005b7a:	bf00      	nop
 8005b7c:	2000047c 	.word	0x2000047c
 8005b80:	20000abc 	.word	0x20000abc
 8005b84:	20000884 	.word	0x20000884

08005b88 <_free_r>:
 8005b88:	2900      	cmp	r1, #0
 8005b8a:	d053      	beq.n	8005c34 <_free_r+0xac>
 8005b8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005b8e:	460c      	mov	r4, r1
 8005b90:	4606      	mov	r6, r0
 8005b92:	f000 fe2b 	bl	80067ec <__malloc_lock>
 8005b96:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005b9a:	4f71      	ldr	r7, [pc, #452]	; (8005d60 <_free_r+0x1d8>)
 8005b9c:	f02c 0101 	bic.w	r1, ip, #1
 8005ba0:	f1a4 0508 	sub.w	r5, r4, #8
 8005ba4:	186b      	adds	r3, r5, r1
 8005ba6:	68b8      	ldr	r0, [r7, #8]
 8005ba8:	685a      	ldr	r2, [r3, #4]
 8005baa:	4298      	cmp	r0, r3
 8005bac:	f022 0203 	bic.w	r2, r2, #3
 8005bb0:	d053      	beq.n	8005c5a <_free_r+0xd2>
 8005bb2:	f01c 0f01 	tst.w	ip, #1
 8005bb6:	605a      	str	r2, [r3, #4]
 8005bb8:	eb03 0002 	add.w	r0, r3, r2
 8005bbc:	d13b      	bne.n	8005c36 <_free_r+0xae>
 8005bbe:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005bc2:	6840      	ldr	r0, [r0, #4]
 8005bc4:	eba5 050c 	sub.w	r5, r5, ip
 8005bc8:	f107 0e08 	add.w	lr, r7, #8
 8005bcc:	68ac      	ldr	r4, [r5, #8]
 8005bce:	4574      	cmp	r4, lr
 8005bd0:	4461      	add	r1, ip
 8005bd2:	f000 0001 	and.w	r0, r0, #1
 8005bd6:	d075      	beq.n	8005cc4 <_free_r+0x13c>
 8005bd8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005bdc:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005be0:	f8cc 4008 	str.w	r4, [ip, #8]
 8005be4:	b360      	cbz	r0, 8005c40 <_free_r+0xb8>
 8005be6:	f041 0301 	orr.w	r3, r1, #1
 8005bea:	606b      	str	r3, [r5, #4]
 8005bec:	5069      	str	r1, [r5, r1]
 8005bee:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005bf2:	d350      	bcc.n	8005c96 <_free_r+0x10e>
 8005bf4:	0a4b      	lsrs	r3, r1, #9
 8005bf6:	2b04      	cmp	r3, #4
 8005bf8:	d870      	bhi.n	8005cdc <_free_r+0x154>
 8005bfa:	098b      	lsrs	r3, r1, #6
 8005bfc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005c00:	00e4      	lsls	r4, r4, #3
 8005c02:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005c06:	1938      	adds	r0, r7, r4
 8005c08:	593b      	ldr	r3, [r7, r4]
 8005c0a:	3808      	subs	r0, #8
 8005c0c:	4298      	cmp	r0, r3
 8005c0e:	d078      	beq.n	8005d02 <_free_r+0x17a>
 8005c10:	685a      	ldr	r2, [r3, #4]
 8005c12:	f022 0203 	bic.w	r2, r2, #3
 8005c16:	428a      	cmp	r2, r1
 8005c18:	d971      	bls.n	8005cfe <_free_r+0x176>
 8005c1a:	689b      	ldr	r3, [r3, #8]
 8005c1c:	4298      	cmp	r0, r3
 8005c1e:	d1f7      	bne.n	8005c10 <_free_r+0x88>
 8005c20:	68c3      	ldr	r3, [r0, #12]
 8005c22:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005c26:	609d      	str	r5, [r3, #8]
 8005c28:	60c5      	str	r5, [r0, #12]
 8005c2a:	4630      	mov	r0, r6
 8005c2c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005c30:	f000 bde2 	b.w	80067f8 <__malloc_unlock>
 8005c34:	4770      	bx	lr
 8005c36:	6840      	ldr	r0, [r0, #4]
 8005c38:	f000 0001 	and.w	r0, r0, #1
 8005c3c:	2800      	cmp	r0, #0
 8005c3e:	d1d2      	bne.n	8005be6 <_free_r+0x5e>
 8005c40:	6898      	ldr	r0, [r3, #8]
 8005c42:	4c48      	ldr	r4, [pc, #288]	; (8005d64 <_free_r+0x1dc>)
 8005c44:	4411      	add	r1, r2
 8005c46:	42a0      	cmp	r0, r4
 8005c48:	f041 0201 	orr.w	r2, r1, #1
 8005c4c:	d062      	beq.n	8005d14 <_free_r+0x18c>
 8005c4e:	68db      	ldr	r3, [r3, #12]
 8005c50:	60c3      	str	r3, [r0, #12]
 8005c52:	6098      	str	r0, [r3, #8]
 8005c54:	606a      	str	r2, [r5, #4]
 8005c56:	5069      	str	r1, [r5, r1]
 8005c58:	e7c9      	b.n	8005bee <_free_r+0x66>
 8005c5a:	f01c 0f01 	tst.w	ip, #1
 8005c5e:	440a      	add	r2, r1
 8005c60:	d107      	bne.n	8005c72 <_free_r+0xea>
 8005c62:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005c66:	1aed      	subs	r5, r5, r3
 8005c68:	441a      	add	r2, r3
 8005c6a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005c6e:	60cb      	str	r3, [r1, #12]
 8005c70:	6099      	str	r1, [r3, #8]
 8005c72:	4b3d      	ldr	r3, [pc, #244]	; (8005d68 <_free_r+0x1e0>)
 8005c74:	681b      	ldr	r3, [r3, #0]
 8005c76:	f042 0101 	orr.w	r1, r2, #1
 8005c7a:	4293      	cmp	r3, r2
 8005c7c:	6069      	str	r1, [r5, #4]
 8005c7e:	60bd      	str	r5, [r7, #8]
 8005c80:	d804      	bhi.n	8005c8c <_free_r+0x104>
 8005c82:	4b3a      	ldr	r3, [pc, #232]	; (8005d6c <_free_r+0x1e4>)
 8005c84:	4630      	mov	r0, r6
 8005c86:	6819      	ldr	r1, [r3, #0]
 8005c88:	f7ff ff2e 	bl	8005ae8 <_malloc_trim_r>
 8005c8c:	4630      	mov	r0, r6
 8005c8e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005c92:	f000 bdb1 	b.w	80067f8 <__malloc_unlock>
 8005c96:	08c9      	lsrs	r1, r1, #3
 8005c98:	6878      	ldr	r0, [r7, #4]
 8005c9a:	1c4a      	adds	r2, r1, #1
 8005c9c:	2301      	movs	r3, #1
 8005c9e:	1089      	asrs	r1, r1, #2
 8005ca0:	408b      	lsls	r3, r1
 8005ca2:	4303      	orrs	r3, r0
 8005ca4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005ca8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005cac:	607b      	str	r3, [r7, #4]
 8005cae:	3908      	subs	r1, #8
 8005cb0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005cb4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005cb8:	60c5      	str	r5, [r0, #12]
 8005cba:	4630      	mov	r0, r6
 8005cbc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005cc0:	f000 bd9a 	b.w	80067f8 <__malloc_unlock>
 8005cc4:	2800      	cmp	r0, #0
 8005cc6:	d145      	bne.n	8005d54 <_free_r+0x1cc>
 8005cc8:	440a      	add	r2, r1
 8005cca:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005cce:	f042 0001 	orr.w	r0, r2, #1
 8005cd2:	60cb      	str	r3, [r1, #12]
 8005cd4:	6099      	str	r1, [r3, #8]
 8005cd6:	6068      	str	r0, [r5, #4]
 8005cd8:	50aa      	str	r2, [r5, r2]
 8005cda:	e7d7      	b.n	8005c8c <_free_r+0x104>
 8005cdc:	2b14      	cmp	r3, #20
 8005cde:	d908      	bls.n	8005cf2 <_free_r+0x16a>
 8005ce0:	2b54      	cmp	r3, #84	; 0x54
 8005ce2:	d81e      	bhi.n	8005d22 <_free_r+0x19a>
 8005ce4:	0b0b      	lsrs	r3, r1, #12
 8005ce6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005cea:	00e4      	lsls	r4, r4, #3
 8005cec:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005cf0:	e789      	b.n	8005c06 <_free_r+0x7e>
 8005cf2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005cf6:	00e4      	lsls	r4, r4, #3
 8005cf8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005cfc:	e783      	b.n	8005c06 <_free_r+0x7e>
 8005cfe:	4618      	mov	r0, r3
 8005d00:	e78e      	b.n	8005c20 <_free_r+0x98>
 8005d02:	1093      	asrs	r3, r2, #2
 8005d04:	6879      	ldr	r1, [r7, #4]
 8005d06:	2201      	movs	r2, #1
 8005d08:	fa02 f303 	lsl.w	r3, r2, r3
 8005d0c:	430b      	orrs	r3, r1
 8005d0e:	607b      	str	r3, [r7, #4]
 8005d10:	4603      	mov	r3, r0
 8005d12:	e786      	b.n	8005c22 <_free_r+0x9a>
 8005d14:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005d18:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005d1c:	606a      	str	r2, [r5, #4]
 8005d1e:	5069      	str	r1, [r5, r1]
 8005d20:	e7b4      	b.n	8005c8c <_free_r+0x104>
 8005d22:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005d26:	d806      	bhi.n	8005d36 <_free_r+0x1ae>
 8005d28:	0bcb      	lsrs	r3, r1, #15
 8005d2a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005d2e:	00e4      	lsls	r4, r4, #3
 8005d30:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005d34:	e767      	b.n	8005c06 <_free_r+0x7e>
 8005d36:	f240 5254 	movw	r2, #1364	; 0x554
 8005d3a:	4293      	cmp	r3, r2
 8005d3c:	d806      	bhi.n	8005d4c <_free_r+0x1c4>
 8005d3e:	0c8b      	lsrs	r3, r1, #18
 8005d40:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005d44:	00e4      	lsls	r4, r4, #3
 8005d46:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005d4a:	e75c      	b.n	8005c06 <_free_r+0x7e>
 8005d4c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005d50:	227e      	movs	r2, #126	; 0x7e
 8005d52:	e758      	b.n	8005c06 <_free_r+0x7e>
 8005d54:	f041 0201 	orr.w	r2, r1, #1
 8005d58:	606a      	str	r2, [r5, #4]
 8005d5a:	6019      	str	r1, [r3, #0]
 8005d5c:	e796      	b.n	8005c8c <_free_r+0x104>
 8005d5e:	bf00      	nop
 8005d60:	2000047c 	.word	0x2000047c
 8005d64:	20000484 	.word	0x20000484
 8005d68:	20000888 	.word	0x20000888
 8005d6c:	20000aec 	.word	0x20000aec

08005d70 <__sfvwrite_r>:
 8005d70:	6893      	ldr	r3, [r2, #8]
 8005d72:	2b00      	cmp	r3, #0
 8005d74:	f000 80e4 	beq.w	8005f40 <__sfvwrite_r+0x1d0>
 8005d78:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005d7c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005d80:	b29b      	uxth	r3, r3
 8005d82:	460c      	mov	r4, r1
 8005d84:	0719      	lsls	r1, r3, #28
 8005d86:	b083      	sub	sp, #12
 8005d88:	4682      	mov	sl, r0
 8005d8a:	4690      	mov	r8, r2
 8005d8c:	d535      	bpl.n	8005dfa <__sfvwrite_r+0x8a>
 8005d8e:	6922      	ldr	r2, [r4, #16]
 8005d90:	b39a      	cbz	r2, 8005dfa <__sfvwrite_r+0x8a>
 8005d92:	f013 0202 	ands.w	r2, r3, #2
 8005d96:	f8d8 6000 	ldr.w	r6, [r8]
 8005d9a:	d03d      	beq.n	8005e18 <__sfvwrite_r+0xa8>
 8005d9c:	2700      	movs	r7, #0
 8005d9e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005da2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005da6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8006068 <__sfvwrite_r+0x2f8>
 8005daa:	463d      	mov	r5, r7
 8005dac:	454d      	cmp	r5, r9
 8005dae:	462b      	mov	r3, r5
 8005db0:	463a      	mov	r2, r7
 8005db2:	bf28      	it	cs
 8005db4:	464b      	movcs	r3, r9
 8005db6:	4661      	mov	r1, ip
 8005db8:	4650      	mov	r0, sl
 8005dba:	b1d5      	cbz	r5, 8005df2 <__sfvwrite_r+0x82>
 8005dbc:	47d8      	blx	fp
 8005dbe:	2800      	cmp	r0, #0
 8005dc0:	f340 80c6 	ble.w	8005f50 <__sfvwrite_r+0x1e0>
 8005dc4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005dc8:	1a1b      	subs	r3, r3, r0
 8005dca:	4407      	add	r7, r0
 8005dcc:	1a2d      	subs	r5, r5, r0
 8005dce:	f8c8 3008 	str.w	r3, [r8, #8]
 8005dd2:	2b00      	cmp	r3, #0
 8005dd4:	f000 80b0 	beq.w	8005f38 <__sfvwrite_r+0x1c8>
 8005dd8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005ddc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005de0:	454d      	cmp	r5, r9
 8005de2:	462b      	mov	r3, r5
 8005de4:	463a      	mov	r2, r7
 8005de6:	bf28      	it	cs
 8005de8:	464b      	movcs	r3, r9
 8005dea:	4661      	mov	r1, ip
 8005dec:	4650      	mov	r0, sl
 8005dee:	2d00      	cmp	r5, #0
 8005df0:	d1e4      	bne.n	8005dbc <__sfvwrite_r+0x4c>
 8005df2:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005df6:	3608      	adds	r6, #8
 8005df8:	e7d8      	b.n	8005dac <__sfvwrite_r+0x3c>
 8005dfa:	4621      	mov	r1, r4
 8005dfc:	4650      	mov	r0, sl
 8005dfe:	f7fe fd03 	bl	8004808 <__swsetup_r>
 8005e02:	2800      	cmp	r0, #0
 8005e04:	f040 812a 	bne.w	800605c <__sfvwrite_r+0x2ec>
 8005e08:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005e0c:	f8d8 6000 	ldr.w	r6, [r8]
 8005e10:	b29b      	uxth	r3, r3
 8005e12:	f013 0202 	ands.w	r2, r3, #2
 8005e16:	d1c1      	bne.n	8005d9c <__sfvwrite_r+0x2c>
 8005e18:	f013 0901 	ands.w	r9, r3, #1
 8005e1c:	d15d      	bne.n	8005eda <__sfvwrite_r+0x16a>
 8005e1e:	68a7      	ldr	r7, [r4, #8]
 8005e20:	6820      	ldr	r0, [r4, #0]
 8005e22:	464d      	mov	r5, r9
 8005e24:	2d00      	cmp	r5, #0
 8005e26:	d054      	beq.n	8005ed2 <__sfvwrite_r+0x162>
 8005e28:	059a      	lsls	r2, r3, #22
 8005e2a:	f140 809b 	bpl.w	8005f64 <__sfvwrite_r+0x1f4>
 8005e2e:	42af      	cmp	r7, r5
 8005e30:	46bb      	mov	fp, r7
 8005e32:	f200 80d8 	bhi.w	8005fe6 <__sfvwrite_r+0x276>
 8005e36:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005e3a:	d02f      	beq.n	8005e9c <__sfvwrite_r+0x12c>
 8005e3c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005e40:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005e44:	eba0 0b01 	sub.w	fp, r0, r1
 8005e48:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005e4c:	1c68      	adds	r0, r5, #1
 8005e4e:	107f      	asrs	r7, r7, #1
 8005e50:	4458      	add	r0, fp
 8005e52:	42b8      	cmp	r0, r7
 8005e54:	463a      	mov	r2, r7
 8005e56:	bf84      	itt	hi
 8005e58:	4607      	movhi	r7, r0
 8005e5a:	463a      	movhi	r2, r7
 8005e5c:	055b      	lsls	r3, r3, #21
 8005e5e:	f140 80d3 	bpl.w	8006008 <__sfvwrite_r+0x298>
 8005e62:	4611      	mov	r1, r2
 8005e64:	4650      	mov	r0, sl
 8005e66:	f000 f9b9 	bl	80061dc <_malloc_r>
 8005e6a:	2800      	cmp	r0, #0
 8005e6c:	f000 80f0 	beq.w	8006050 <__sfvwrite_r+0x2e0>
 8005e70:	465a      	mov	r2, fp
 8005e72:	6921      	ldr	r1, [r4, #16]
 8005e74:	9001      	str	r0, [sp, #4]
 8005e76:	f7fa fb91 	bl	800059c <memcpy>
 8005e7a:	89a2      	ldrh	r2, [r4, #12]
 8005e7c:	9b01      	ldr	r3, [sp, #4]
 8005e7e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005e82:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005e86:	81a2      	strh	r2, [r4, #12]
 8005e88:	eba7 020b 	sub.w	r2, r7, fp
 8005e8c:	eb03 000b 	add.w	r0, r3, fp
 8005e90:	6167      	str	r7, [r4, #20]
 8005e92:	6123      	str	r3, [r4, #16]
 8005e94:	6020      	str	r0, [r4, #0]
 8005e96:	60a2      	str	r2, [r4, #8]
 8005e98:	462f      	mov	r7, r5
 8005e9a:	46ab      	mov	fp, r5
 8005e9c:	465a      	mov	r2, fp
 8005e9e:	4649      	mov	r1, r9
 8005ea0:	f000 fc40 	bl	8006724 <memmove>
 8005ea4:	68a2      	ldr	r2, [r4, #8]
 8005ea6:	6823      	ldr	r3, [r4, #0]
 8005ea8:	1bd2      	subs	r2, r2, r7
 8005eaa:	445b      	add	r3, fp
 8005eac:	462f      	mov	r7, r5
 8005eae:	60a2      	str	r2, [r4, #8]
 8005eb0:	6023      	str	r3, [r4, #0]
 8005eb2:	2500      	movs	r5, #0
 8005eb4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005eb8:	1bdb      	subs	r3, r3, r7
 8005eba:	44b9      	add	r9, r7
 8005ebc:	f8c8 3008 	str.w	r3, [r8, #8]
 8005ec0:	2b00      	cmp	r3, #0
 8005ec2:	d039      	beq.n	8005f38 <__sfvwrite_r+0x1c8>
 8005ec4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ec8:	68a7      	ldr	r7, [r4, #8]
 8005eca:	6820      	ldr	r0, [r4, #0]
 8005ecc:	b29b      	uxth	r3, r3
 8005ece:	2d00      	cmp	r5, #0
 8005ed0:	d1aa      	bne.n	8005e28 <__sfvwrite_r+0xb8>
 8005ed2:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005ed6:	3608      	adds	r6, #8
 8005ed8:	e7a4      	b.n	8005e24 <__sfvwrite_r+0xb4>
 8005eda:	4633      	mov	r3, r6
 8005edc:	4691      	mov	r9, r2
 8005ede:	4610      	mov	r0, r2
 8005ee0:	4617      	mov	r7, r2
 8005ee2:	464e      	mov	r6, r9
 8005ee4:	469b      	mov	fp, r3
 8005ee6:	2f00      	cmp	r7, #0
 8005ee8:	d06b      	beq.n	8005fc2 <__sfvwrite_r+0x252>
 8005eea:	2800      	cmp	r0, #0
 8005eec:	d071      	beq.n	8005fd2 <__sfvwrite_r+0x262>
 8005eee:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005ef2:	6820      	ldr	r0, [r4, #0]
 8005ef4:	45b9      	cmp	r9, r7
 8005ef6:	464b      	mov	r3, r9
 8005ef8:	bf28      	it	cs
 8005efa:	463b      	movcs	r3, r7
 8005efc:	4288      	cmp	r0, r1
 8005efe:	d903      	bls.n	8005f08 <__sfvwrite_r+0x198>
 8005f00:	68a5      	ldr	r5, [r4, #8]
 8005f02:	4415      	add	r5, r2
 8005f04:	42ab      	cmp	r3, r5
 8005f06:	dc71      	bgt.n	8005fec <__sfvwrite_r+0x27c>
 8005f08:	429a      	cmp	r2, r3
 8005f0a:	f300 8093 	bgt.w	8006034 <__sfvwrite_r+0x2c4>
 8005f0e:	4613      	mov	r3, r2
 8005f10:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005f12:	69e1      	ldr	r1, [r4, #28]
 8005f14:	4632      	mov	r2, r6
 8005f16:	4650      	mov	r0, sl
 8005f18:	47a8      	blx	r5
 8005f1a:	1e05      	subs	r5, r0, #0
 8005f1c:	dd18      	ble.n	8005f50 <__sfvwrite_r+0x1e0>
 8005f1e:	ebb9 0905 	subs.w	r9, r9, r5
 8005f22:	d00f      	beq.n	8005f44 <__sfvwrite_r+0x1d4>
 8005f24:	2001      	movs	r0, #1
 8005f26:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005f2a:	1b5b      	subs	r3, r3, r5
 8005f2c:	442e      	add	r6, r5
 8005f2e:	1b7f      	subs	r7, r7, r5
 8005f30:	f8c8 3008 	str.w	r3, [r8, #8]
 8005f34:	2b00      	cmp	r3, #0
 8005f36:	d1d6      	bne.n	8005ee6 <__sfvwrite_r+0x176>
 8005f38:	2000      	movs	r0, #0
 8005f3a:	b003      	add	sp, #12
 8005f3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f40:	2000      	movs	r0, #0
 8005f42:	4770      	bx	lr
 8005f44:	4621      	mov	r1, r4
 8005f46:	4650      	mov	r0, sl
 8005f48:	f7ff fd20 	bl	800598c <_fflush_r>
 8005f4c:	2800      	cmp	r0, #0
 8005f4e:	d0ea      	beq.n	8005f26 <__sfvwrite_r+0x1b6>
 8005f50:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005f54:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005f58:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005f5c:	81a3      	strh	r3, [r4, #12]
 8005f5e:	b003      	add	sp, #12
 8005f60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f64:	6923      	ldr	r3, [r4, #16]
 8005f66:	4283      	cmp	r3, r0
 8005f68:	d315      	bcc.n	8005f96 <__sfvwrite_r+0x226>
 8005f6a:	6961      	ldr	r1, [r4, #20]
 8005f6c:	42a9      	cmp	r1, r5
 8005f6e:	d812      	bhi.n	8005f96 <__sfvwrite_r+0x226>
 8005f70:	4b3c      	ldr	r3, [pc, #240]	; (8006064 <__sfvwrite_r+0x2f4>)
 8005f72:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005f74:	429d      	cmp	r5, r3
 8005f76:	bf94      	ite	ls
 8005f78:	462b      	movls	r3, r5
 8005f7a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005f7e:	464a      	mov	r2, r9
 8005f80:	fb93 f3f1 	sdiv	r3, r3, r1
 8005f84:	4650      	mov	r0, sl
 8005f86:	fb01 f303 	mul.w	r3, r1, r3
 8005f8a:	69e1      	ldr	r1, [r4, #28]
 8005f8c:	47b8      	blx	r7
 8005f8e:	1e07      	subs	r7, r0, #0
 8005f90:	ddde      	ble.n	8005f50 <__sfvwrite_r+0x1e0>
 8005f92:	1bed      	subs	r5, r5, r7
 8005f94:	e78e      	b.n	8005eb4 <__sfvwrite_r+0x144>
 8005f96:	42af      	cmp	r7, r5
 8005f98:	bf28      	it	cs
 8005f9a:	462f      	movcs	r7, r5
 8005f9c:	463a      	mov	r2, r7
 8005f9e:	4649      	mov	r1, r9
 8005fa0:	f000 fbc0 	bl	8006724 <memmove>
 8005fa4:	68a3      	ldr	r3, [r4, #8]
 8005fa6:	6822      	ldr	r2, [r4, #0]
 8005fa8:	1bdb      	subs	r3, r3, r7
 8005faa:	443a      	add	r2, r7
 8005fac:	60a3      	str	r3, [r4, #8]
 8005fae:	6022      	str	r2, [r4, #0]
 8005fb0:	2b00      	cmp	r3, #0
 8005fb2:	d1ee      	bne.n	8005f92 <__sfvwrite_r+0x222>
 8005fb4:	4621      	mov	r1, r4
 8005fb6:	4650      	mov	r0, sl
 8005fb8:	f7ff fce8 	bl	800598c <_fflush_r>
 8005fbc:	2800      	cmp	r0, #0
 8005fbe:	d0e8      	beq.n	8005f92 <__sfvwrite_r+0x222>
 8005fc0:	e7c6      	b.n	8005f50 <__sfvwrite_r+0x1e0>
 8005fc2:	f10b 0308 	add.w	r3, fp, #8
 8005fc6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005fca:	469b      	mov	fp, r3
 8005fcc:	3308      	adds	r3, #8
 8005fce:	2f00      	cmp	r7, #0
 8005fd0:	d0f9      	beq.n	8005fc6 <__sfvwrite_r+0x256>
 8005fd2:	463a      	mov	r2, r7
 8005fd4:	210a      	movs	r1, #10
 8005fd6:	4630      	mov	r0, r6
 8005fd8:	f7fa fc02 	bl	80007e0 <memchr>
 8005fdc:	b338      	cbz	r0, 800602e <__sfvwrite_r+0x2be>
 8005fde:	3001      	adds	r0, #1
 8005fe0:	eba0 0906 	sub.w	r9, r0, r6
 8005fe4:	e783      	b.n	8005eee <__sfvwrite_r+0x17e>
 8005fe6:	462f      	mov	r7, r5
 8005fe8:	46ab      	mov	fp, r5
 8005fea:	e757      	b.n	8005e9c <__sfvwrite_r+0x12c>
 8005fec:	4631      	mov	r1, r6
 8005fee:	462a      	mov	r2, r5
 8005ff0:	f000 fb98 	bl	8006724 <memmove>
 8005ff4:	6823      	ldr	r3, [r4, #0]
 8005ff6:	442b      	add	r3, r5
 8005ff8:	6023      	str	r3, [r4, #0]
 8005ffa:	4621      	mov	r1, r4
 8005ffc:	4650      	mov	r0, sl
 8005ffe:	f7ff fcc5 	bl	800598c <_fflush_r>
 8006002:	2800      	cmp	r0, #0
 8006004:	d08b      	beq.n	8005f1e <__sfvwrite_r+0x1ae>
 8006006:	e7a3      	b.n	8005f50 <__sfvwrite_r+0x1e0>
 8006008:	4650      	mov	r0, sl
 800600a:	f000 ff05 	bl	8006e18 <_realloc_r>
 800600e:	4603      	mov	r3, r0
 8006010:	2800      	cmp	r0, #0
 8006012:	f47f af39 	bne.w	8005e88 <__sfvwrite_r+0x118>
 8006016:	6921      	ldr	r1, [r4, #16]
 8006018:	4650      	mov	r0, sl
 800601a:	f7ff fdb5 	bl	8005b88 <_free_r>
 800601e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006022:	220c      	movs	r2, #12
 8006024:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8006028:	f8ca 2000 	str.w	r2, [sl]
 800602c:	e792      	b.n	8005f54 <__sfvwrite_r+0x1e4>
 800602e:	f107 0901 	add.w	r9, r7, #1
 8006032:	e75c      	b.n	8005eee <__sfvwrite_r+0x17e>
 8006034:	461a      	mov	r2, r3
 8006036:	4631      	mov	r1, r6
 8006038:	9301      	str	r3, [sp, #4]
 800603a:	f000 fb73 	bl	8006724 <memmove>
 800603e:	9b01      	ldr	r3, [sp, #4]
 8006040:	68a1      	ldr	r1, [r4, #8]
 8006042:	6822      	ldr	r2, [r4, #0]
 8006044:	1ac9      	subs	r1, r1, r3
 8006046:	441a      	add	r2, r3
 8006048:	60a1      	str	r1, [r4, #8]
 800604a:	6022      	str	r2, [r4, #0]
 800604c:	461d      	mov	r5, r3
 800604e:	e766      	b.n	8005f1e <__sfvwrite_r+0x1ae>
 8006050:	230c      	movs	r3, #12
 8006052:	f8ca 3000 	str.w	r3, [sl]
 8006056:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800605a:	e77b      	b.n	8005f54 <__sfvwrite_r+0x1e4>
 800605c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006060:	e76b      	b.n	8005f3a <__sfvwrite_r+0x1ca>
 8006062:	bf00      	nop
 8006064:	7ffffffe 	.word	0x7ffffffe
 8006068:	7ffffc00 	.word	0x7ffffc00

0800606c <_fwalk_reent>:
 800606c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006070:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8006074:	d01f      	beq.n	80060b6 <_fwalk_reent+0x4a>
 8006076:	4688      	mov	r8, r1
 8006078:	4606      	mov	r6, r0
 800607a:	f04f 0900 	mov.w	r9, #0
 800607e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8006082:	3d01      	subs	r5, #1
 8006084:	d411      	bmi.n	80060aa <_fwalk_reent+0x3e>
 8006086:	89a3      	ldrh	r3, [r4, #12]
 8006088:	2b01      	cmp	r3, #1
 800608a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800608e:	4621      	mov	r1, r4
 8006090:	4630      	mov	r0, r6
 8006092:	d906      	bls.n	80060a2 <_fwalk_reent+0x36>
 8006094:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8006098:	3301      	adds	r3, #1
 800609a:	d002      	beq.n	80060a2 <_fwalk_reent+0x36>
 800609c:	47c0      	blx	r8
 800609e:	ea49 0900 	orr.w	r9, r9, r0
 80060a2:	1c6b      	adds	r3, r5, #1
 80060a4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80060a8:	d1ed      	bne.n	8006086 <_fwalk_reent+0x1a>
 80060aa:	683f      	ldr	r7, [r7, #0]
 80060ac:	2f00      	cmp	r7, #0
 80060ae:	d1e6      	bne.n	800607e <_fwalk_reent+0x12>
 80060b0:	4648      	mov	r0, r9
 80060b2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80060b6:	46b9      	mov	r9, r7
 80060b8:	4648      	mov	r0, r9
 80060ba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80060be:	bf00      	nop

080060c0 <_localeconv_r>:
 80060c0:	4a04      	ldr	r2, [pc, #16]	; (80060d4 <_localeconv_r+0x14>)
 80060c2:	4b05      	ldr	r3, [pc, #20]	; (80060d8 <_localeconv_r+0x18>)
 80060c4:	6812      	ldr	r2, [r2, #0]
 80060c6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80060c8:	2800      	cmp	r0, #0
 80060ca:	bf08      	it	eq
 80060cc:	4618      	moveq	r0, r3
 80060ce:	30f0      	adds	r0, #240	; 0xf0
 80060d0:	4770      	bx	lr
 80060d2:	bf00      	nop
 80060d4:	2000004c 	.word	0x2000004c
 80060d8:	2000088c 	.word	0x2000088c

080060dc <__retarget_lock_init_recursive>:
 80060dc:	4770      	bx	lr
 80060de:	bf00      	nop

080060e0 <__retarget_lock_close_recursive>:
 80060e0:	4770      	bx	lr
 80060e2:	bf00      	nop

080060e4 <__retarget_lock_acquire_recursive>:
 80060e4:	4770      	bx	lr
 80060e6:	bf00      	nop

080060e8 <__retarget_lock_release_recursive>:
 80060e8:	4770      	bx	lr
 80060ea:	bf00      	nop

080060ec <__swhatbuf_r>:
 80060ec:	b570      	push	{r4, r5, r6, lr}
 80060ee:	460c      	mov	r4, r1
 80060f0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80060f4:	2900      	cmp	r1, #0
 80060f6:	b096      	sub	sp, #88	; 0x58
 80060f8:	4615      	mov	r5, r2
 80060fa:	461e      	mov	r6, r3
 80060fc:	da0f      	bge.n	800611e <__swhatbuf_r+0x32>
 80060fe:	89a2      	ldrh	r2, [r4, #12]
 8006100:	2300      	movs	r3, #0
 8006102:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8006106:	6033      	str	r3, [r6, #0]
 8006108:	d104      	bne.n	8006114 <__swhatbuf_r+0x28>
 800610a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800610e:	602b      	str	r3, [r5, #0]
 8006110:	b016      	add	sp, #88	; 0x58
 8006112:	bd70      	pop	{r4, r5, r6, pc}
 8006114:	2240      	movs	r2, #64	; 0x40
 8006116:	4618      	mov	r0, r3
 8006118:	602a      	str	r2, [r5, #0]
 800611a:	b016      	add	sp, #88	; 0x58
 800611c:	bd70      	pop	{r4, r5, r6, pc}
 800611e:	466a      	mov	r2, sp
 8006120:	f001 fad0 	bl	80076c4 <_fstat_r>
 8006124:	2800      	cmp	r0, #0
 8006126:	dbea      	blt.n	80060fe <__swhatbuf_r+0x12>
 8006128:	9b01      	ldr	r3, [sp, #4]
 800612a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800612e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8006132:	fab3 f383 	clz	r3, r3
 8006136:	095b      	lsrs	r3, r3, #5
 8006138:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800613c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8006140:	6033      	str	r3, [r6, #0]
 8006142:	602a      	str	r2, [r5, #0]
 8006144:	b016      	add	sp, #88	; 0x58
 8006146:	bd70      	pop	{r4, r5, r6, pc}

08006148 <__smakebuf_r>:
 8006148:	898a      	ldrh	r2, [r1, #12]
 800614a:	0792      	lsls	r2, r2, #30
 800614c:	460b      	mov	r3, r1
 800614e:	d506      	bpl.n	800615e <__smakebuf_r+0x16>
 8006150:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8006154:	2101      	movs	r1, #1
 8006156:	601a      	str	r2, [r3, #0]
 8006158:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800615c:	4770      	bx	lr
 800615e:	b570      	push	{r4, r5, r6, lr}
 8006160:	b082      	sub	sp, #8
 8006162:	ab01      	add	r3, sp, #4
 8006164:	466a      	mov	r2, sp
 8006166:	460c      	mov	r4, r1
 8006168:	4605      	mov	r5, r0
 800616a:	f7ff ffbf 	bl	80060ec <__swhatbuf_r>
 800616e:	9900      	ldr	r1, [sp, #0]
 8006170:	4606      	mov	r6, r0
 8006172:	4628      	mov	r0, r5
 8006174:	f000 f832 	bl	80061dc <_malloc_r>
 8006178:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800617c:	b1d8      	cbz	r0, 80061b6 <__smakebuf_r+0x6e>
 800617e:	4916      	ldr	r1, [pc, #88]	; (80061d8 <__smakebuf_r+0x90>)
 8006180:	63e9      	str	r1, [r5, #60]	; 0x3c
 8006182:	9a01      	ldr	r2, [sp, #4]
 8006184:	9900      	ldr	r1, [sp, #0]
 8006186:	6020      	str	r0, [r4, #0]
 8006188:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800618c:	81a3      	strh	r3, [r4, #12]
 800618e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8006192:	b91a      	cbnz	r2, 800619c <__smakebuf_r+0x54>
 8006194:	4333      	orrs	r3, r6
 8006196:	81a3      	strh	r3, [r4, #12]
 8006198:	b002      	add	sp, #8
 800619a:	bd70      	pop	{r4, r5, r6, pc}
 800619c:	4628      	mov	r0, r5
 800619e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80061a2:	f001 faa3 	bl	80076ec <_isatty_r>
 80061a6:	b1a0      	cbz	r0, 80061d2 <__smakebuf_r+0x8a>
 80061a8:	89a3      	ldrh	r3, [r4, #12]
 80061aa:	f023 0303 	bic.w	r3, r3, #3
 80061ae:	f043 0301 	orr.w	r3, r3, #1
 80061b2:	b21b      	sxth	r3, r3
 80061b4:	e7ee      	b.n	8006194 <__smakebuf_r+0x4c>
 80061b6:	059a      	lsls	r2, r3, #22
 80061b8:	d4ee      	bmi.n	8006198 <__smakebuf_r+0x50>
 80061ba:	f023 0303 	bic.w	r3, r3, #3
 80061be:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80061c2:	f043 0302 	orr.w	r3, r3, #2
 80061c6:	2101      	movs	r1, #1
 80061c8:	81a3      	strh	r3, [r4, #12]
 80061ca:	6022      	str	r2, [r4, #0]
 80061cc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80061d0:	e7e2      	b.n	8006198 <__smakebuf_r+0x50>
 80061d2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80061d6:	e7dd      	b.n	8006194 <__smakebuf_r+0x4c>
 80061d8:	08005a39 	.word	0x08005a39

080061dc <_malloc_r>:
 80061dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80061e0:	f101 050b 	add.w	r5, r1, #11
 80061e4:	2d16      	cmp	r5, #22
 80061e6:	b083      	sub	sp, #12
 80061e8:	4606      	mov	r6, r0
 80061ea:	d823      	bhi.n	8006234 <_malloc_r+0x58>
 80061ec:	2910      	cmp	r1, #16
 80061ee:	f200 80b9 	bhi.w	8006364 <_malloc_r+0x188>
 80061f2:	f000 fafb 	bl	80067ec <__malloc_lock>
 80061f6:	2510      	movs	r5, #16
 80061f8:	2318      	movs	r3, #24
 80061fa:	2002      	movs	r0, #2
 80061fc:	4fc5      	ldr	r7, [pc, #788]	; (8006514 <_malloc_r+0x338>)
 80061fe:	443b      	add	r3, r7
 8006200:	f1a3 0208 	sub.w	r2, r3, #8
 8006204:	685c      	ldr	r4, [r3, #4]
 8006206:	4294      	cmp	r4, r2
 8006208:	f000 8166 	beq.w	80064d8 <_malloc_r+0x2fc>
 800620c:	6863      	ldr	r3, [r4, #4]
 800620e:	f023 0303 	bic.w	r3, r3, #3
 8006212:	4423      	add	r3, r4
 8006214:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8006218:	685a      	ldr	r2, [r3, #4]
 800621a:	60e9      	str	r1, [r5, #12]
 800621c:	f042 0201 	orr.w	r2, r2, #1
 8006220:	608d      	str	r5, [r1, #8]
 8006222:	4630      	mov	r0, r6
 8006224:	605a      	str	r2, [r3, #4]
 8006226:	f000 fae7 	bl	80067f8 <__malloc_unlock>
 800622a:	3408      	adds	r4, #8
 800622c:	4620      	mov	r0, r4
 800622e:	b003      	add	sp, #12
 8006230:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006234:	f035 0507 	bics.w	r5, r5, #7
 8006238:	f100 8094 	bmi.w	8006364 <_malloc_r+0x188>
 800623c:	42a9      	cmp	r1, r5
 800623e:	f200 8091 	bhi.w	8006364 <_malloc_r+0x188>
 8006242:	f000 fad3 	bl	80067ec <__malloc_lock>
 8006246:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800624a:	f0c0 8183 	bcc.w	8006554 <_malloc_r+0x378>
 800624e:	0a6b      	lsrs	r3, r5, #9
 8006250:	f000 808f 	beq.w	8006372 <_malloc_r+0x196>
 8006254:	2b04      	cmp	r3, #4
 8006256:	f200 8146 	bhi.w	80064e6 <_malloc_r+0x30a>
 800625a:	09ab      	lsrs	r3, r5, #6
 800625c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8006260:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8006264:	00c3      	lsls	r3, r0, #3
 8006266:	4fab      	ldr	r7, [pc, #684]	; (8006514 <_malloc_r+0x338>)
 8006268:	443b      	add	r3, r7
 800626a:	f1a3 0108 	sub.w	r1, r3, #8
 800626e:	685c      	ldr	r4, [r3, #4]
 8006270:	42a1      	cmp	r1, r4
 8006272:	d106      	bne.n	8006282 <_malloc_r+0xa6>
 8006274:	e00c      	b.n	8006290 <_malloc_r+0xb4>
 8006276:	2a00      	cmp	r2, #0
 8006278:	f280 811d 	bge.w	80064b6 <_malloc_r+0x2da>
 800627c:	68e4      	ldr	r4, [r4, #12]
 800627e:	42a1      	cmp	r1, r4
 8006280:	d006      	beq.n	8006290 <_malloc_r+0xb4>
 8006282:	6863      	ldr	r3, [r4, #4]
 8006284:	f023 0303 	bic.w	r3, r3, #3
 8006288:	1b5a      	subs	r2, r3, r5
 800628a:	2a0f      	cmp	r2, #15
 800628c:	ddf3      	ble.n	8006276 <_malloc_r+0x9a>
 800628e:	4660      	mov	r0, ip
 8006290:	693c      	ldr	r4, [r7, #16]
 8006292:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006528 <_malloc_r+0x34c>
 8006296:	4564      	cmp	r4, ip
 8006298:	d071      	beq.n	800637e <_malloc_r+0x1a2>
 800629a:	6863      	ldr	r3, [r4, #4]
 800629c:	f023 0303 	bic.w	r3, r3, #3
 80062a0:	1b5a      	subs	r2, r3, r5
 80062a2:	2a0f      	cmp	r2, #15
 80062a4:	f300 8144 	bgt.w	8006530 <_malloc_r+0x354>
 80062a8:	2a00      	cmp	r2, #0
 80062aa:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80062ae:	f280 8126 	bge.w	80064fe <_malloc_r+0x322>
 80062b2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80062b6:	f080 8169 	bcs.w	800658c <_malloc_r+0x3b0>
 80062ba:	08db      	lsrs	r3, r3, #3
 80062bc:	1c59      	adds	r1, r3, #1
 80062be:	687a      	ldr	r2, [r7, #4]
 80062c0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80062c4:	f8c4 8008 	str.w	r8, [r4, #8]
 80062c8:	f04f 0e01 	mov.w	lr, #1
 80062cc:	109b      	asrs	r3, r3, #2
 80062ce:	fa0e f303 	lsl.w	r3, lr, r3
 80062d2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80062d6:	4313      	orrs	r3, r2
 80062d8:	f1ae 0208 	sub.w	r2, lr, #8
 80062dc:	60e2      	str	r2, [r4, #12]
 80062de:	607b      	str	r3, [r7, #4]
 80062e0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80062e4:	f8c8 400c 	str.w	r4, [r8, #12]
 80062e8:	1082      	asrs	r2, r0, #2
 80062ea:	2401      	movs	r4, #1
 80062ec:	4094      	lsls	r4, r2
 80062ee:	429c      	cmp	r4, r3
 80062f0:	d84b      	bhi.n	800638a <_malloc_r+0x1ae>
 80062f2:	421c      	tst	r4, r3
 80062f4:	d106      	bne.n	8006304 <_malloc_r+0x128>
 80062f6:	f020 0003 	bic.w	r0, r0, #3
 80062fa:	0064      	lsls	r4, r4, #1
 80062fc:	421c      	tst	r4, r3
 80062fe:	f100 0004 	add.w	r0, r0, #4
 8006302:	d0fa      	beq.n	80062fa <_malloc_r+0x11e>
 8006304:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006308:	46ce      	mov	lr, r9
 800630a:	4680      	mov	r8, r0
 800630c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006310:	459e      	cmp	lr, r3
 8006312:	d107      	bne.n	8006324 <_malloc_r+0x148>
 8006314:	e122      	b.n	800655c <_malloc_r+0x380>
 8006316:	2a00      	cmp	r2, #0
 8006318:	f280 8129 	bge.w	800656e <_malloc_r+0x392>
 800631c:	68db      	ldr	r3, [r3, #12]
 800631e:	459e      	cmp	lr, r3
 8006320:	f000 811c 	beq.w	800655c <_malloc_r+0x380>
 8006324:	6859      	ldr	r1, [r3, #4]
 8006326:	f021 0103 	bic.w	r1, r1, #3
 800632a:	1b4a      	subs	r2, r1, r5
 800632c:	2a0f      	cmp	r2, #15
 800632e:	ddf2      	ble.n	8006316 <_malloc_r+0x13a>
 8006330:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8006334:	195c      	adds	r4, r3, r5
 8006336:	f045 0501 	orr.w	r5, r5, #1
 800633a:	605d      	str	r5, [r3, #4]
 800633c:	f042 0501 	orr.w	r5, r2, #1
 8006340:	f8c8 e00c 	str.w	lr, [r8, #12]
 8006344:	4630      	mov	r0, r6
 8006346:	f8ce 8008 	str.w	r8, [lr, #8]
 800634a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800634e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8006352:	6065      	str	r5, [r4, #4]
 8006354:	505a      	str	r2, [r3, r1]
 8006356:	9301      	str	r3, [sp, #4]
 8006358:	f000 fa4e 	bl	80067f8 <__malloc_unlock>
 800635c:	9b01      	ldr	r3, [sp, #4]
 800635e:	f103 0408 	add.w	r4, r3, #8
 8006362:	e763      	b.n	800622c <_malloc_r+0x50>
 8006364:	2400      	movs	r4, #0
 8006366:	230c      	movs	r3, #12
 8006368:	4620      	mov	r0, r4
 800636a:	6033      	str	r3, [r6, #0]
 800636c:	b003      	add	sp, #12
 800636e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006372:	f44f 7300 	mov.w	r3, #512	; 0x200
 8006376:	2040      	movs	r0, #64	; 0x40
 8006378:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 800637c:	e773      	b.n	8006266 <_malloc_r+0x8a>
 800637e:	687b      	ldr	r3, [r7, #4]
 8006380:	1082      	asrs	r2, r0, #2
 8006382:	2401      	movs	r4, #1
 8006384:	4094      	lsls	r4, r2
 8006386:	429c      	cmp	r4, r3
 8006388:	d9b3      	bls.n	80062f2 <_malloc_r+0x116>
 800638a:	68bc      	ldr	r4, [r7, #8]
 800638c:	6863      	ldr	r3, [r4, #4]
 800638e:	f023 0903 	bic.w	r9, r3, #3
 8006392:	45a9      	cmp	r9, r5
 8006394:	d303      	bcc.n	800639e <_malloc_r+0x1c2>
 8006396:	eba9 0305 	sub.w	r3, r9, r5
 800639a:	2b0f      	cmp	r3, #15
 800639c:	dc7b      	bgt.n	8006496 <_malloc_r+0x2ba>
 800639e:	4b5e      	ldr	r3, [pc, #376]	; (8006518 <_malloc_r+0x33c>)
 80063a0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800652c <_malloc_r+0x350>
 80063a4:	681a      	ldr	r2, [r3, #0]
 80063a6:	f8da 3000 	ldr.w	r3, [sl]
 80063aa:	3301      	adds	r3, #1
 80063ac:	eb05 0802 	add.w	r8, r5, r2
 80063b0:	f000 8148 	beq.w	8006644 <_malloc_r+0x468>
 80063b4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 80063b8:	f108 080f 	add.w	r8, r8, #15
 80063bc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 80063c0:	f028 080f 	bic.w	r8, r8, #15
 80063c4:	4641      	mov	r1, r8
 80063c6:	4630      	mov	r0, r6
 80063c8:	f000 ff08 	bl	80071dc <_sbrk_r>
 80063cc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80063d0:	4683      	mov	fp, r0
 80063d2:	f000 8104 	beq.w	80065de <_malloc_r+0x402>
 80063d6:	eb04 0009 	add.w	r0, r4, r9
 80063da:	4558      	cmp	r0, fp
 80063dc:	f200 80fd 	bhi.w	80065da <_malloc_r+0x3fe>
 80063e0:	4a4e      	ldr	r2, [pc, #312]	; (800651c <_malloc_r+0x340>)
 80063e2:	6813      	ldr	r3, [r2, #0]
 80063e4:	4443      	add	r3, r8
 80063e6:	6013      	str	r3, [r2, #0]
 80063e8:	f000 814d 	beq.w	8006686 <_malloc_r+0x4aa>
 80063ec:	f8da 1000 	ldr.w	r1, [sl]
 80063f0:	3101      	adds	r1, #1
 80063f2:	bf1b      	ittet	ne
 80063f4:	ebab 0000 	subne.w	r0, fp, r0
 80063f8:	181b      	addne	r3, r3, r0
 80063fa:	f8ca b000 	streq.w	fp, [sl]
 80063fe:	6013      	strne	r3, [r2, #0]
 8006400:	f01b 0307 	ands.w	r3, fp, #7
 8006404:	f000 8134 	beq.w	8006670 <_malloc_r+0x494>
 8006408:	f1c3 0108 	rsb	r1, r3, #8
 800640c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006410:	448b      	add	fp, r1
 8006412:	3308      	adds	r3, #8
 8006414:	44d8      	add	r8, fp
 8006416:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800641a:	eba3 0808 	sub.w	r8, r3, r8
 800641e:	4641      	mov	r1, r8
 8006420:	4630      	mov	r0, r6
 8006422:	9201      	str	r2, [sp, #4]
 8006424:	f000 feda 	bl	80071dc <_sbrk_r>
 8006428:	1c43      	adds	r3, r0, #1
 800642a:	9a01      	ldr	r2, [sp, #4]
 800642c:	f000 8146 	beq.w	80066bc <_malloc_r+0x4e0>
 8006430:	eba0 010b 	sub.w	r1, r0, fp
 8006434:	4441      	add	r1, r8
 8006436:	f041 0101 	orr.w	r1, r1, #1
 800643a:	6813      	ldr	r3, [r2, #0]
 800643c:	f8c7 b008 	str.w	fp, [r7, #8]
 8006440:	4443      	add	r3, r8
 8006442:	42bc      	cmp	r4, r7
 8006444:	f8cb 1004 	str.w	r1, [fp, #4]
 8006448:	6013      	str	r3, [r2, #0]
 800644a:	d015      	beq.n	8006478 <_malloc_r+0x29c>
 800644c:	f1b9 0f0f 	cmp.w	r9, #15
 8006450:	f240 8130 	bls.w	80066b4 <_malloc_r+0x4d8>
 8006454:	6860      	ldr	r0, [r4, #4]
 8006456:	f1a9 010c 	sub.w	r1, r9, #12
 800645a:	f021 0107 	bic.w	r1, r1, #7
 800645e:	f000 0001 	and.w	r0, r0, #1
 8006462:	eb04 0c01 	add.w	ip, r4, r1
 8006466:	4308      	orrs	r0, r1
 8006468:	f04f 0e05 	mov.w	lr, #5
 800646c:	290f      	cmp	r1, #15
 800646e:	6060      	str	r0, [r4, #4]
 8006470:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8006474:	f200 813a 	bhi.w	80066ec <_malloc_r+0x510>
 8006478:	4a29      	ldr	r2, [pc, #164]	; (8006520 <_malloc_r+0x344>)
 800647a:	482a      	ldr	r0, [pc, #168]	; (8006524 <_malloc_r+0x348>)
 800647c:	6811      	ldr	r1, [r2, #0]
 800647e:	68bc      	ldr	r4, [r7, #8]
 8006480:	428b      	cmp	r3, r1
 8006482:	6801      	ldr	r1, [r0, #0]
 8006484:	bf88      	it	hi
 8006486:	6013      	strhi	r3, [r2, #0]
 8006488:	6862      	ldr	r2, [r4, #4]
 800648a:	428b      	cmp	r3, r1
 800648c:	f022 0203 	bic.w	r2, r2, #3
 8006490:	bf88      	it	hi
 8006492:	6003      	strhi	r3, [r0, #0]
 8006494:	e0a7      	b.n	80065e6 <_malloc_r+0x40a>
 8006496:	1962      	adds	r2, r4, r5
 8006498:	f043 0301 	orr.w	r3, r3, #1
 800649c:	f045 0501 	orr.w	r5, r5, #1
 80064a0:	6065      	str	r5, [r4, #4]
 80064a2:	4630      	mov	r0, r6
 80064a4:	60ba      	str	r2, [r7, #8]
 80064a6:	6053      	str	r3, [r2, #4]
 80064a8:	f000 f9a6 	bl	80067f8 <__malloc_unlock>
 80064ac:	3408      	adds	r4, #8
 80064ae:	4620      	mov	r0, r4
 80064b0:	b003      	add	sp, #12
 80064b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80064b6:	4423      	add	r3, r4
 80064b8:	68e1      	ldr	r1, [r4, #12]
 80064ba:	685a      	ldr	r2, [r3, #4]
 80064bc:	68a5      	ldr	r5, [r4, #8]
 80064be:	f042 0201 	orr.w	r2, r2, #1
 80064c2:	60e9      	str	r1, [r5, #12]
 80064c4:	4630      	mov	r0, r6
 80064c6:	608d      	str	r5, [r1, #8]
 80064c8:	605a      	str	r2, [r3, #4]
 80064ca:	f000 f995 	bl	80067f8 <__malloc_unlock>
 80064ce:	3408      	adds	r4, #8
 80064d0:	4620      	mov	r0, r4
 80064d2:	b003      	add	sp, #12
 80064d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80064d8:	68dc      	ldr	r4, [r3, #12]
 80064da:	42a3      	cmp	r3, r4
 80064dc:	bf08      	it	eq
 80064de:	3002      	addeq	r0, #2
 80064e0:	f43f aed6 	beq.w	8006290 <_malloc_r+0xb4>
 80064e4:	e692      	b.n	800620c <_malloc_r+0x30>
 80064e6:	2b14      	cmp	r3, #20
 80064e8:	d971      	bls.n	80065ce <_malloc_r+0x3f2>
 80064ea:	2b54      	cmp	r3, #84	; 0x54
 80064ec:	f200 80ad 	bhi.w	800664a <_malloc_r+0x46e>
 80064f0:	0b2b      	lsrs	r3, r5, #12
 80064f2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80064f6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80064fa:	00c3      	lsls	r3, r0, #3
 80064fc:	e6b3      	b.n	8006266 <_malloc_r+0x8a>
 80064fe:	4423      	add	r3, r4
 8006500:	4630      	mov	r0, r6
 8006502:	685a      	ldr	r2, [r3, #4]
 8006504:	f042 0201 	orr.w	r2, r2, #1
 8006508:	605a      	str	r2, [r3, #4]
 800650a:	3408      	adds	r4, #8
 800650c:	f000 f974 	bl	80067f8 <__malloc_unlock>
 8006510:	e68c      	b.n	800622c <_malloc_r+0x50>
 8006512:	bf00      	nop
 8006514:	2000047c 	.word	0x2000047c
 8006518:	20000aec 	.word	0x20000aec
 800651c:	20000abc 	.word	0x20000abc
 8006520:	20000ae4 	.word	0x20000ae4
 8006524:	20000ae8 	.word	0x20000ae8
 8006528:	20000484 	.word	0x20000484
 800652c:	20000884 	.word	0x20000884
 8006530:	1961      	adds	r1, r4, r5
 8006532:	f045 0e01 	orr.w	lr, r5, #1
 8006536:	f042 0501 	orr.w	r5, r2, #1
 800653a:	f8c4 e004 	str.w	lr, [r4, #4]
 800653e:	4630      	mov	r0, r6
 8006540:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006544:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006548:	604d      	str	r5, [r1, #4]
 800654a:	50e2      	str	r2, [r4, r3]
 800654c:	f000 f954 	bl	80067f8 <__malloc_unlock>
 8006550:	3408      	adds	r4, #8
 8006552:	e66b      	b.n	800622c <_malloc_r+0x50>
 8006554:	08e8      	lsrs	r0, r5, #3
 8006556:	f105 0308 	add.w	r3, r5, #8
 800655a:	e64f      	b.n	80061fc <_malloc_r+0x20>
 800655c:	f108 0801 	add.w	r8, r8, #1
 8006560:	f018 0f03 	tst.w	r8, #3
 8006564:	f10e 0e08 	add.w	lr, lr, #8
 8006568:	f47f aed0 	bne.w	800630c <_malloc_r+0x130>
 800656c:	e052      	b.n	8006614 <_malloc_r+0x438>
 800656e:	4419      	add	r1, r3
 8006570:	461c      	mov	r4, r3
 8006572:	684a      	ldr	r2, [r1, #4]
 8006574:	68db      	ldr	r3, [r3, #12]
 8006576:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800657a:	f042 0201 	orr.w	r2, r2, #1
 800657e:	604a      	str	r2, [r1, #4]
 8006580:	4630      	mov	r0, r6
 8006582:	60eb      	str	r3, [r5, #12]
 8006584:	609d      	str	r5, [r3, #8]
 8006586:	f000 f937 	bl	80067f8 <__malloc_unlock>
 800658a:	e64f      	b.n	800622c <_malloc_r+0x50>
 800658c:	0a5a      	lsrs	r2, r3, #9
 800658e:	2a04      	cmp	r2, #4
 8006590:	d935      	bls.n	80065fe <_malloc_r+0x422>
 8006592:	2a14      	cmp	r2, #20
 8006594:	d86f      	bhi.n	8006676 <_malloc_r+0x49a>
 8006596:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800659a:	00c9      	lsls	r1, r1, #3
 800659c:	325b      	adds	r2, #91	; 0x5b
 800659e:	eb07 0e01 	add.w	lr, r7, r1
 80065a2:	5879      	ldr	r1, [r7, r1]
 80065a4:	f1ae 0e08 	sub.w	lr, lr, #8
 80065a8:	458e      	cmp	lr, r1
 80065aa:	d058      	beq.n	800665e <_malloc_r+0x482>
 80065ac:	684a      	ldr	r2, [r1, #4]
 80065ae:	f022 0203 	bic.w	r2, r2, #3
 80065b2:	429a      	cmp	r2, r3
 80065b4:	d902      	bls.n	80065bc <_malloc_r+0x3e0>
 80065b6:	6889      	ldr	r1, [r1, #8]
 80065b8:	458e      	cmp	lr, r1
 80065ba:	d1f7      	bne.n	80065ac <_malloc_r+0x3d0>
 80065bc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 80065c0:	687b      	ldr	r3, [r7, #4]
 80065c2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 80065c6:	f8ce 4008 	str.w	r4, [lr, #8]
 80065ca:	60cc      	str	r4, [r1, #12]
 80065cc:	e68c      	b.n	80062e8 <_malloc_r+0x10c>
 80065ce:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80065d2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80065d6:	00c3      	lsls	r3, r0, #3
 80065d8:	e645      	b.n	8006266 <_malloc_r+0x8a>
 80065da:	42bc      	cmp	r4, r7
 80065dc:	d072      	beq.n	80066c4 <_malloc_r+0x4e8>
 80065de:	68bc      	ldr	r4, [r7, #8]
 80065e0:	6862      	ldr	r2, [r4, #4]
 80065e2:	f022 0203 	bic.w	r2, r2, #3
 80065e6:	4295      	cmp	r5, r2
 80065e8:	eba2 0305 	sub.w	r3, r2, r5
 80065ec:	d802      	bhi.n	80065f4 <_malloc_r+0x418>
 80065ee:	2b0f      	cmp	r3, #15
 80065f0:	f73f af51 	bgt.w	8006496 <_malloc_r+0x2ba>
 80065f4:	4630      	mov	r0, r6
 80065f6:	f000 f8ff 	bl	80067f8 <__malloc_unlock>
 80065fa:	2400      	movs	r4, #0
 80065fc:	e616      	b.n	800622c <_malloc_r+0x50>
 80065fe:	099a      	lsrs	r2, r3, #6
 8006600:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006604:	00c9      	lsls	r1, r1, #3
 8006606:	3238      	adds	r2, #56	; 0x38
 8006608:	e7c9      	b.n	800659e <_malloc_r+0x3c2>
 800660a:	f8d9 9000 	ldr.w	r9, [r9]
 800660e:	4599      	cmp	r9, r3
 8006610:	f040 8083 	bne.w	800671a <_malloc_r+0x53e>
 8006614:	f010 0f03 	tst.w	r0, #3
 8006618:	f1a9 0308 	sub.w	r3, r9, #8
 800661c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006620:	d1f3      	bne.n	800660a <_malloc_r+0x42e>
 8006622:	687b      	ldr	r3, [r7, #4]
 8006624:	ea23 0304 	bic.w	r3, r3, r4
 8006628:	607b      	str	r3, [r7, #4]
 800662a:	0064      	lsls	r4, r4, #1
 800662c:	429c      	cmp	r4, r3
 800662e:	f63f aeac 	bhi.w	800638a <_malloc_r+0x1ae>
 8006632:	b91c      	cbnz	r4, 800663c <_malloc_r+0x460>
 8006634:	e6a9      	b.n	800638a <_malloc_r+0x1ae>
 8006636:	0064      	lsls	r4, r4, #1
 8006638:	f108 0804 	add.w	r8, r8, #4
 800663c:	421c      	tst	r4, r3
 800663e:	d0fa      	beq.n	8006636 <_malloc_r+0x45a>
 8006640:	4640      	mov	r0, r8
 8006642:	e65f      	b.n	8006304 <_malloc_r+0x128>
 8006644:	f108 0810 	add.w	r8, r8, #16
 8006648:	e6bc      	b.n	80063c4 <_malloc_r+0x1e8>
 800664a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800664e:	d826      	bhi.n	800669e <_malloc_r+0x4c2>
 8006650:	0beb      	lsrs	r3, r5, #15
 8006652:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006656:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800665a:	00c3      	lsls	r3, r0, #3
 800665c:	e603      	b.n	8006266 <_malloc_r+0x8a>
 800665e:	687b      	ldr	r3, [r7, #4]
 8006660:	1092      	asrs	r2, r2, #2
 8006662:	f04f 0801 	mov.w	r8, #1
 8006666:	fa08 f202 	lsl.w	r2, r8, r2
 800666a:	4313      	orrs	r3, r2
 800666c:	607b      	str	r3, [r7, #4]
 800666e:	e7a8      	b.n	80065c2 <_malloc_r+0x3e6>
 8006670:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006674:	e6ce      	b.n	8006414 <_malloc_r+0x238>
 8006676:	2a54      	cmp	r2, #84	; 0x54
 8006678:	d829      	bhi.n	80066ce <_malloc_r+0x4f2>
 800667a:	0b1a      	lsrs	r2, r3, #12
 800667c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006680:	00c9      	lsls	r1, r1, #3
 8006682:	326e      	adds	r2, #110	; 0x6e
 8006684:	e78b      	b.n	800659e <_malloc_r+0x3c2>
 8006686:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800668a:	2900      	cmp	r1, #0
 800668c:	f47f aeae 	bne.w	80063ec <_malloc_r+0x210>
 8006690:	eb09 0208 	add.w	r2, r9, r8
 8006694:	68b9      	ldr	r1, [r7, #8]
 8006696:	f042 0201 	orr.w	r2, r2, #1
 800669a:	604a      	str	r2, [r1, #4]
 800669c:	e6ec      	b.n	8006478 <_malloc_r+0x29c>
 800669e:	f240 5254 	movw	r2, #1364	; 0x554
 80066a2:	4293      	cmp	r3, r2
 80066a4:	d81c      	bhi.n	80066e0 <_malloc_r+0x504>
 80066a6:	0cab      	lsrs	r3, r5, #18
 80066a8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80066ac:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80066b0:	00c3      	lsls	r3, r0, #3
 80066b2:	e5d8      	b.n	8006266 <_malloc_r+0x8a>
 80066b4:	2301      	movs	r3, #1
 80066b6:	f8cb 3004 	str.w	r3, [fp, #4]
 80066ba:	e79b      	b.n	80065f4 <_malloc_r+0x418>
 80066bc:	2101      	movs	r1, #1
 80066be:	f04f 0800 	mov.w	r8, #0
 80066c2:	e6ba      	b.n	800643a <_malloc_r+0x25e>
 80066c4:	4a16      	ldr	r2, [pc, #88]	; (8006720 <_malloc_r+0x544>)
 80066c6:	6813      	ldr	r3, [r2, #0]
 80066c8:	4443      	add	r3, r8
 80066ca:	6013      	str	r3, [r2, #0]
 80066cc:	e68e      	b.n	80063ec <_malloc_r+0x210>
 80066ce:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80066d2:	d814      	bhi.n	80066fe <_malloc_r+0x522>
 80066d4:	0bda      	lsrs	r2, r3, #15
 80066d6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80066da:	00c9      	lsls	r1, r1, #3
 80066dc:	3277      	adds	r2, #119	; 0x77
 80066de:	e75e      	b.n	800659e <_malloc_r+0x3c2>
 80066e0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80066e4:	207f      	movs	r0, #127	; 0x7f
 80066e6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80066ea:	e5bc      	b.n	8006266 <_malloc_r+0x8a>
 80066ec:	f104 0108 	add.w	r1, r4, #8
 80066f0:	4630      	mov	r0, r6
 80066f2:	9201      	str	r2, [sp, #4]
 80066f4:	f7ff fa48 	bl	8005b88 <_free_r>
 80066f8:	9a01      	ldr	r2, [sp, #4]
 80066fa:	6813      	ldr	r3, [r2, #0]
 80066fc:	e6bc      	b.n	8006478 <_malloc_r+0x29c>
 80066fe:	f240 5154 	movw	r1, #1364	; 0x554
 8006702:	428a      	cmp	r2, r1
 8006704:	d805      	bhi.n	8006712 <_malloc_r+0x536>
 8006706:	0c9a      	lsrs	r2, r3, #18
 8006708:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800670c:	00c9      	lsls	r1, r1, #3
 800670e:	327c      	adds	r2, #124	; 0x7c
 8006710:	e745      	b.n	800659e <_malloc_r+0x3c2>
 8006712:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006716:	227e      	movs	r2, #126	; 0x7e
 8006718:	e741      	b.n	800659e <_malloc_r+0x3c2>
 800671a:	687b      	ldr	r3, [r7, #4]
 800671c:	e785      	b.n	800662a <_malloc_r+0x44e>
 800671e:	bf00      	nop
 8006720:	20000abc 	.word	0x20000abc

08006724 <memmove>:
 8006724:	4288      	cmp	r0, r1
 8006726:	b4f0      	push	{r4, r5, r6, r7}
 8006728:	d90d      	bls.n	8006746 <memmove+0x22>
 800672a:	188b      	adds	r3, r1, r2
 800672c:	4283      	cmp	r3, r0
 800672e:	d90a      	bls.n	8006746 <memmove+0x22>
 8006730:	1884      	adds	r4, r0, r2
 8006732:	b132      	cbz	r2, 8006742 <memmove+0x1e>
 8006734:	4622      	mov	r2, r4
 8006736:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800673a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800673e:	4299      	cmp	r1, r3
 8006740:	d1f9      	bne.n	8006736 <memmove+0x12>
 8006742:	bcf0      	pop	{r4, r5, r6, r7}
 8006744:	4770      	bx	lr
 8006746:	2a0f      	cmp	r2, #15
 8006748:	d949      	bls.n	80067de <memmove+0xba>
 800674a:	ea40 0301 	orr.w	r3, r0, r1
 800674e:	079b      	lsls	r3, r3, #30
 8006750:	d147      	bne.n	80067e2 <memmove+0xbe>
 8006752:	f1a2 0310 	sub.w	r3, r2, #16
 8006756:	091b      	lsrs	r3, r3, #4
 8006758:	f101 0720 	add.w	r7, r1, #32
 800675c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006760:	f101 0410 	add.w	r4, r1, #16
 8006764:	f100 0510 	add.w	r5, r0, #16
 8006768:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800676c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006770:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006774:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006778:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800677c:	f845 6c08 	str.w	r6, [r5, #-8]
 8006780:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006784:	f845 6c04 	str.w	r6, [r5, #-4]
 8006788:	3410      	adds	r4, #16
 800678a:	42bc      	cmp	r4, r7
 800678c:	f105 0510 	add.w	r5, r5, #16
 8006790:	d1ea      	bne.n	8006768 <memmove+0x44>
 8006792:	3301      	adds	r3, #1
 8006794:	f002 050f 	and.w	r5, r2, #15
 8006798:	011b      	lsls	r3, r3, #4
 800679a:	2d03      	cmp	r5, #3
 800679c:	4419      	add	r1, r3
 800679e:	4403      	add	r3, r0
 80067a0:	d921      	bls.n	80067e6 <memmove+0xc2>
 80067a2:	1f1f      	subs	r7, r3, #4
 80067a4:	460e      	mov	r6, r1
 80067a6:	462c      	mov	r4, r5
 80067a8:	3c04      	subs	r4, #4
 80067aa:	f856 cb04 	ldr.w	ip, [r6], #4
 80067ae:	f847 cf04 	str.w	ip, [r7, #4]!
 80067b2:	2c03      	cmp	r4, #3
 80067b4:	d8f8      	bhi.n	80067a8 <memmove+0x84>
 80067b6:	1f2c      	subs	r4, r5, #4
 80067b8:	f024 0403 	bic.w	r4, r4, #3
 80067bc:	3404      	adds	r4, #4
 80067be:	4423      	add	r3, r4
 80067c0:	4421      	add	r1, r4
 80067c2:	f002 0203 	and.w	r2, r2, #3
 80067c6:	2a00      	cmp	r2, #0
 80067c8:	d0bb      	beq.n	8006742 <memmove+0x1e>
 80067ca:	3b01      	subs	r3, #1
 80067cc:	440a      	add	r2, r1
 80067ce:	f811 4b01 	ldrb.w	r4, [r1], #1
 80067d2:	f803 4f01 	strb.w	r4, [r3, #1]!
 80067d6:	4291      	cmp	r1, r2
 80067d8:	d1f9      	bne.n	80067ce <memmove+0xaa>
 80067da:	bcf0      	pop	{r4, r5, r6, r7}
 80067dc:	4770      	bx	lr
 80067de:	4603      	mov	r3, r0
 80067e0:	e7f1      	b.n	80067c6 <memmove+0xa2>
 80067e2:	4603      	mov	r3, r0
 80067e4:	e7f1      	b.n	80067ca <memmove+0xa6>
 80067e6:	462a      	mov	r2, r5
 80067e8:	e7ed      	b.n	80067c6 <memmove+0xa2>
 80067ea:	bf00      	nop

080067ec <__malloc_lock>:
 80067ec:	4801      	ldr	r0, [pc, #4]	; (80067f4 <__malloc_lock+0x8>)
 80067ee:	f7ff bc79 	b.w	80060e4 <__retarget_lock_acquire_recursive>
 80067f2:	bf00      	nop
 80067f4:	20001574 	.word	0x20001574

080067f8 <__malloc_unlock>:
 80067f8:	4801      	ldr	r0, [pc, #4]	; (8006800 <__malloc_unlock+0x8>)
 80067fa:	f7ff bc75 	b.w	80060e8 <__retarget_lock_release_recursive>
 80067fe:	bf00      	nop
 8006800:	20001574 	.word	0x20001574

08006804 <_Balloc>:
 8006804:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006806:	b570      	push	{r4, r5, r6, lr}
 8006808:	4605      	mov	r5, r0
 800680a:	460c      	mov	r4, r1
 800680c:	b14b      	cbz	r3, 8006822 <_Balloc+0x1e>
 800680e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006812:	b180      	cbz	r0, 8006836 <_Balloc+0x32>
 8006814:	6802      	ldr	r2, [r0, #0]
 8006816:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800681a:	2300      	movs	r3, #0
 800681c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006820:	bd70      	pop	{r4, r5, r6, pc}
 8006822:	2221      	movs	r2, #33	; 0x21
 8006824:	2104      	movs	r1, #4
 8006826:	f000 fe1d 	bl	8007464 <_calloc_r>
 800682a:	4603      	mov	r3, r0
 800682c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800682e:	2800      	cmp	r0, #0
 8006830:	d1ed      	bne.n	800680e <_Balloc+0xa>
 8006832:	2000      	movs	r0, #0
 8006834:	bd70      	pop	{r4, r5, r6, pc}
 8006836:	2101      	movs	r1, #1
 8006838:	fa01 f604 	lsl.w	r6, r1, r4
 800683c:	1d72      	adds	r2, r6, #5
 800683e:	4628      	mov	r0, r5
 8006840:	0092      	lsls	r2, r2, #2
 8006842:	f000 fe0f 	bl	8007464 <_calloc_r>
 8006846:	2800      	cmp	r0, #0
 8006848:	d0f3      	beq.n	8006832 <_Balloc+0x2e>
 800684a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800684e:	e7e4      	b.n	800681a <_Balloc+0x16>

08006850 <_Bfree>:
 8006850:	b131      	cbz	r1, 8006860 <_Bfree+0x10>
 8006852:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006854:	684a      	ldr	r2, [r1, #4]
 8006856:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800685a:	6008      	str	r0, [r1, #0]
 800685c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006860:	4770      	bx	lr
 8006862:	bf00      	nop

08006864 <__multadd>:
 8006864:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006866:	690c      	ldr	r4, [r1, #16]
 8006868:	b083      	sub	sp, #12
 800686a:	460d      	mov	r5, r1
 800686c:	4606      	mov	r6, r0
 800686e:	f101 0c14 	add.w	ip, r1, #20
 8006872:	2700      	movs	r7, #0
 8006874:	f8dc 0000 	ldr.w	r0, [ip]
 8006878:	b281      	uxth	r1, r0
 800687a:	fb02 3301 	mla	r3, r2, r1, r3
 800687e:	0c01      	lsrs	r1, r0, #16
 8006880:	0c18      	lsrs	r0, r3, #16
 8006882:	fb02 0101 	mla	r1, r2, r1, r0
 8006886:	b29b      	uxth	r3, r3
 8006888:	3701      	adds	r7, #1
 800688a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800688e:	42bc      	cmp	r4, r7
 8006890:	f84c 3b04 	str.w	r3, [ip], #4
 8006894:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006898:	dcec      	bgt.n	8006874 <__multadd+0x10>
 800689a:	b13b      	cbz	r3, 80068ac <__multadd+0x48>
 800689c:	68aa      	ldr	r2, [r5, #8]
 800689e:	42a2      	cmp	r2, r4
 80068a0:	dd07      	ble.n	80068b2 <__multadd+0x4e>
 80068a2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80068a6:	3401      	adds	r4, #1
 80068a8:	6153      	str	r3, [r2, #20]
 80068aa:	612c      	str	r4, [r5, #16]
 80068ac:	4628      	mov	r0, r5
 80068ae:	b003      	add	sp, #12
 80068b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80068b2:	6869      	ldr	r1, [r5, #4]
 80068b4:	9301      	str	r3, [sp, #4]
 80068b6:	3101      	adds	r1, #1
 80068b8:	4630      	mov	r0, r6
 80068ba:	f7ff ffa3 	bl	8006804 <_Balloc>
 80068be:	692a      	ldr	r2, [r5, #16]
 80068c0:	3202      	adds	r2, #2
 80068c2:	f105 010c 	add.w	r1, r5, #12
 80068c6:	4607      	mov	r7, r0
 80068c8:	0092      	lsls	r2, r2, #2
 80068ca:	300c      	adds	r0, #12
 80068cc:	f7f9 fe66 	bl	800059c <memcpy>
 80068d0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80068d2:	6869      	ldr	r1, [r5, #4]
 80068d4:	9b01      	ldr	r3, [sp, #4]
 80068d6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80068da:	6028      	str	r0, [r5, #0]
 80068dc:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80068e0:	463d      	mov	r5, r7
 80068e2:	e7de      	b.n	80068a2 <__multadd+0x3e>

080068e4 <__hi0bits>:
 80068e4:	0c02      	lsrs	r2, r0, #16
 80068e6:	0412      	lsls	r2, r2, #16
 80068e8:	4603      	mov	r3, r0
 80068ea:	b9c2      	cbnz	r2, 800691e <__hi0bits+0x3a>
 80068ec:	0403      	lsls	r3, r0, #16
 80068ee:	2010      	movs	r0, #16
 80068f0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80068f4:	bf04      	itt	eq
 80068f6:	021b      	lsleq	r3, r3, #8
 80068f8:	3008      	addeq	r0, #8
 80068fa:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80068fe:	bf04      	itt	eq
 8006900:	011b      	lsleq	r3, r3, #4
 8006902:	3004      	addeq	r0, #4
 8006904:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006908:	bf04      	itt	eq
 800690a:	009b      	lsleq	r3, r3, #2
 800690c:	3002      	addeq	r0, #2
 800690e:	2b00      	cmp	r3, #0
 8006910:	db04      	blt.n	800691c <__hi0bits+0x38>
 8006912:	005b      	lsls	r3, r3, #1
 8006914:	d501      	bpl.n	800691a <__hi0bits+0x36>
 8006916:	3001      	adds	r0, #1
 8006918:	4770      	bx	lr
 800691a:	2020      	movs	r0, #32
 800691c:	4770      	bx	lr
 800691e:	2000      	movs	r0, #0
 8006920:	e7e6      	b.n	80068f0 <__hi0bits+0xc>
 8006922:	bf00      	nop

08006924 <__lo0bits>:
 8006924:	6803      	ldr	r3, [r0, #0]
 8006926:	f013 0207 	ands.w	r2, r3, #7
 800692a:	4601      	mov	r1, r0
 800692c:	d007      	beq.n	800693e <__lo0bits+0x1a>
 800692e:	07da      	lsls	r2, r3, #31
 8006930:	d41f      	bmi.n	8006972 <__lo0bits+0x4e>
 8006932:	0798      	lsls	r0, r3, #30
 8006934:	d51f      	bpl.n	8006976 <__lo0bits+0x52>
 8006936:	085b      	lsrs	r3, r3, #1
 8006938:	600b      	str	r3, [r1, #0]
 800693a:	2001      	movs	r0, #1
 800693c:	4770      	bx	lr
 800693e:	b298      	uxth	r0, r3
 8006940:	b1a0      	cbz	r0, 800696c <__lo0bits+0x48>
 8006942:	4610      	mov	r0, r2
 8006944:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006948:	bf04      	itt	eq
 800694a:	0a1b      	lsreq	r3, r3, #8
 800694c:	3008      	addeq	r0, #8
 800694e:	071a      	lsls	r2, r3, #28
 8006950:	bf04      	itt	eq
 8006952:	091b      	lsreq	r3, r3, #4
 8006954:	3004      	addeq	r0, #4
 8006956:	079a      	lsls	r2, r3, #30
 8006958:	bf04      	itt	eq
 800695a:	089b      	lsreq	r3, r3, #2
 800695c:	3002      	addeq	r0, #2
 800695e:	07da      	lsls	r2, r3, #31
 8006960:	d402      	bmi.n	8006968 <__lo0bits+0x44>
 8006962:	085b      	lsrs	r3, r3, #1
 8006964:	d00b      	beq.n	800697e <__lo0bits+0x5a>
 8006966:	3001      	adds	r0, #1
 8006968:	600b      	str	r3, [r1, #0]
 800696a:	4770      	bx	lr
 800696c:	0c1b      	lsrs	r3, r3, #16
 800696e:	2010      	movs	r0, #16
 8006970:	e7e8      	b.n	8006944 <__lo0bits+0x20>
 8006972:	2000      	movs	r0, #0
 8006974:	4770      	bx	lr
 8006976:	089b      	lsrs	r3, r3, #2
 8006978:	600b      	str	r3, [r1, #0]
 800697a:	2002      	movs	r0, #2
 800697c:	4770      	bx	lr
 800697e:	2020      	movs	r0, #32
 8006980:	4770      	bx	lr
 8006982:	bf00      	nop

08006984 <__i2b>:
 8006984:	b510      	push	{r4, lr}
 8006986:	460c      	mov	r4, r1
 8006988:	2101      	movs	r1, #1
 800698a:	f7ff ff3b 	bl	8006804 <_Balloc>
 800698e:	2201      	movs	r2, #1
 8006990:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006994:	bd10      	pop	{r4, pc}
 8006996:	bf00      	nop

08006998 <__multiply>:
 8006998:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800699c:	690e      	ldr	r6, [r1, #16]
 800699e:	6914      	ldr	r4, [r2, #16]
 80069a0:	42a6      	cmp	r6, r4
 80069a2:	b083      	sub	sp, #12
 80069a4:	460f      	mov	r7, r1
 80069a6:	4615      	mov	r5, r2
 80069a8:	da04      	bge.n	80069b4 <__multiply+0x1c>
 80069aa:	4632      	mov	r2, r6
 80069ac:	462f      	mov	r7, r5
 80069ae:	4626      	mov	r6, r4
 80069b0:	460d      	mov	r5, r1
 80069b2:	4614      	mov	r4, r2
 80069b4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80069b8:	eb06 0804 	add.w	r8, r6, r4
 80069bc:	4543      	cmp	r3, r8
 80069be:	bfb8      	it	lt
 80069c0:	3101      	addlt	r1, #1
 80069c2:	f7ff ff1f 	bl	8006804 <_Balloc>
 80069c6:	f100 0914 	add.w	r9, r0, #20
 80069ca:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80069ce:	45f1      	cmp	r9, lr
 80069d0:	9000      	str	r0, [sp, #0]
 80069d2:	d205      	bcs.n	80069e0 <__multiply+0x48>
 80069d4:	464b      	mov	r3, r9
 80069d6:	2200      	movs	r2, #0
 80069d8:	f843 2b04 	str.w	r2, [r3], #4
 80069dc:	459e      	cmp	lr, r3
 80069de:	d8fb      	bhi.n	80069d8 <__multiply+0x40>
 80069e0:	f105 0a14 	add.w	sl, r5, #20
 80069e4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80069e8:	f107 0314 	add.w	r3, r7, #20
 80069ec:	45a2      	cmp	sl, r4
 80069ee:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80069f2:	d261      	bcs.n	8006ab8 <__multiply+0x120>
 80069f4:	1b64      	subs	r4, r4, r5
 80069f6:	3c15      	subs	r4, #21
 80069f8:	f024 0403 	bic.w	r4, r4, #3
 80069fc:	f8cd e004 	str.w	lr, [sp, #4]
 8006a00:	44a2      	add	sl, r4
 8006a02:	f105 0210 	add.w	r2, r5, #16
 8006a06:	469e      	mov	lr, r3
 8006a08:	e005      	b.n	8006a16 <__multiply+0x7e>
 8006a0a:	0c2d      	lsrs	r5, r5, #16
 8006a0c:	d12b      	bne.n	8006a66 <__multiply+0xce>
 8006a0e:	4592      	cmp	sl, r2
 8006a10:	f109 0904 	add.w	r9, r9, #4
 8006a14:	d04e      	beq.n	8006ab4 <__multiply+0x11c>
 8006a16:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006a1a:	fa1f fb85 	uxth.w	fp, r5
 8006a1e:	f1bb 0f00 	cmp.w	fp, #0
 8006a22:	d0f2      	beq.n	8006a0a <__multiply+0x72>
 8006a24:	4677      	mov	r7, lr
 8006a26:	464e      	mov	r6, r9
 8006a28:	2000      	movs	r0, #0
 8006a2a:	e000      	b.n	8006a2e <__multiply+0x96>
 8006a2c:	4626      	mov	r6, r4
 8006a2e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006a32:	6834      	ldr	r4, [r6, #0]
 8006a34:	b28b      	uxth	r3, r1
 8006a36:	b2a5      	uxth	r5, r4
 8006a38:	0c09      	lsrs	r1, r1, #16
 8006a3a:	0c24      	lsrs	r4, r4, #16
 8006a3c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006a40:	4403      	add	r3, r0
 8006a42:	fb0b 4001 	mla	r0, fp, r1, r4
 8006a46:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006a4a:	4634      	mov	r4, r6
 8006a4c:	b29b      	uxth	r3, r3
 8006a4e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006a52:	45bc      	cmp	ip, r7
 8006a54:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006a58:	f844 3b04 	str.w	r3, [r4], #4
 8006a5c:	d8e6      	bhi.n	8006a2c <__multiply+0x94>
 8006a5e:	6070      	str	r0, [r6, #4]
 8006a60:	6815      	ldr	r5, [r2, #0]
 8006a62:	0c2d      	lsrs	r5, r5, #16
 8006a64:	d0d3      	beq.n	8006a0e <__multiply+0x76>
 8006a66:	f8d9 3000 	ldr.w	r3, [r9]
 8006a6a:	4676      	mov	r6, lr
 8006a6c:	4618      	mov	r0, r3
 8006a6e:	46cb      	mov	fp, r9
 8006a70:	2100      	movs	r1, #0
 8006a72:	e000      	b.n	8006a76 <__multiply+0xde>
 8006a74:	46a3      	mov	fp, r4
 8006a76:	8834      	ldrh	r4, [r6, #0]
 8006a78:	0c00      	lsrs	r0, r0, #16
 8006a7a:	fb05 0004 	mla	r0, r5, r4, r0
 8006a7e:	4401      	add	r1, r0
 8006a80:	b29b      	uxth	r3, r3
 8006a82:	465c      	mov	r4, fp
 8006a84:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006a88:	f844 3b04 	str.w	r3, [r4], #4
 8006a8c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006a90:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006a94:	0c1b      	lsrs	r3, r3, #16
 8006a96:	b287      	uxth	r7, r0
 8006a98:	fb05 7303 	mla	r3, r5, r3, r7
 8006a9c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006aa0:	45b4      	cmp	ip, r6
 8006aa2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006aa6:	d8e5      	bhi.n	8006a74 <__multiply+0xdc>
 8006aa8:	4592      	cmp	sl, r2
 8006aaa:	f8cb 3004 	str.w	r3, [fp, #4]
 8006aae:	f109 0904 	add.w	r9, r9, #4
 8006ab2:	d1b0      	bne.n	8006a16 <__multiply+0x7e>
 8006ab4:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006ab8:	f1b8 0f00 	cmp.w	r8, #0
 8006abc:	dd0b      	ble.n	8006ad6 <__multiply+0x13e>
 8006abe:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006ac2:	f1ae 0e04 	sub.w	lr, lr, #4
 8006ac6:	b11b      	cbz	r3, 8006ad0 <__multiply+0x138>
 8006ac8:	e005      	b.n	8006ad6 <__multiply+0x13e>
 8006aca:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006ace:	b913      	cbnz	r3, 8006ad6 <__multiply+0x13e>
 8006ad0:	f1b8 0801 	subs.w	r8, r8, #1
 8006ad4:	d1f9      	bne.n	8006aca <__multiply+0x132>
 8006ad6:	9800      	ldr	r0, [sp, #0]
 8006ad8:	f8c0 8010 	str.w	r8, [r0, #16]
 8006adc:	b003      	add	sp, #12
 8006ade:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ae2:	bf00      	nop

08006ae4 <__pow5mult>:
 8006ae4:	f012 0303 	ands.w	r3, r2, #3
 8006ae8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006aec:	4614      	mov	r4, r2
 8006aee:	4607      	mov	r7, r0
 8006af0:	d12e      	bne.n	8006b50 <__pow5mult+0x6c>
 8006af2:	460d      	mov	r5, r1
 8006af4:	10a4      	asrs	r4, r4, #2
 8006af6:	d01c      	beq.n	8006b32 <__pow5mult+0x4e>
 8006af8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006afa:	b396      	cbz	r6, 8006b62 <__pow5mult+0x7e>
 8006afc:	07e3      	lsls	r3, r4, #31
 8006afe:	f04f 0800 	mov.w	r8, #0
 8006b02:	d406      	bmi.n	8006b12 <__pow5mult+0x2e>
 8006b04:	1064      	asrs	r4, r4, #1
 8006b06:	d014      	beq.n	8006b32 <__pow5mult+0x4e>
 8006b08:	6830      	ldr	r0, [r6, #0]
 8006b0a:	b1a8      	cbz	r0, 8006b38 <__pow5mult+0x54>
 8006b0c:	4606      	mov	r6, r0
 8006b0e:	07e3      	lsls	r3, r4, #31
 8006b10:	d5f8      	bpl.n	8006b04 <__pow5mult+0x20>
 8006b12:	4632      	mov	r2, r6
 8006b14:	4629      	mov	r1, r5
 8006b16:	4638      	mov	r0, r7
 8006b18:	f7ff ff3e 	bl	8006998 <__multiply>
 8006b1c:	b1b5      	cbz	r5, 8006b4c <__pow5mult+0x68>
 8006b1e:	686a      	ldr	r2, [r5, #4]
 8006b20:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006b22:	1064      	asrs	r4, r4, #1
 8006b24:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006b28:	6029      	str	r1, [r5, #0]
 8006b2a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006b2e:	4605      	mov	r5, r0
 8006b30:	d1ea      	bne.n	8006b08 <__pow5mult+0x24>
 8006b32:	4628      	mov	r0, r5
 8006b34:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006b38:	4632      	mov	r2, r6
 8006b3a:	4631      	mov	r1, r6
 8006b3c:	4638      	mov	r0, r7
 8006b3e:	f7ff ff2b 	bl	8006998 <__multiply>
 8006b42:	6030      	str	r0, [r6, #0]
 8006b44:	f8c0 8000 	str.w	r8, [r0]
 8006b48:	4606      	mov	r6, r0
 8006b4a:	e7e0      	b.n	8006b0e <__pow5mult+0x2a>
 8006b4c:	4605      	mov	r5, r0
 8006b4e:	e7d9      	b.n	8006b04 <__pow5mult+0x20>
 8006b50:	3b01      	subs	r3, #1
 8006b52:	4a0b      	ldr	r2, [pc, #44]	; (8006b80 <__pow5mult+0x9c>)
 8006b54:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006b58:	2300      	movs	r3, #0
 8006b5a:	f7ff fe83 	bl	8006864 <__multadd>
 8006b5e:	4605      	mov	r5, r0
 8006b60:	e7c8      	b.n	8006af4 <__pow5mult+0x10>
 8006b62:	2101      	movs	r1, #1
 8006b64:	4638      	mov	r0, r7
 8006b66:	f7ff fe4d 	bl	8006804 <_Balloc>
 8006b6a:	f240 2371 	movw	r3, #625	; 0x271
 8006b6e:	6143      	str	r3, [r0, #20]
 8006b70:	2201      	movs	r2, #1
 8006b72:	2300      	movs	r3, #0
 8006b74:	6102      	str	r2, [r0, #16]
 8006b76:	4606      	mov	r6, r0
 8006b78:	64b8      	str	r0, [r7, #72]	; 0x48
 8006b7a:	6003      	str	r3, [r0, #0]
 8006b7c:	e7be      	b.n	8006afc <__pow5mult+0x18>
 8006b7e:	bf00      	nop
 8006b80:	08007ba0 	.word	0x08007ba0

08006b84 <__lshift>:
 8006b84:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006b88:	4691      	mov	r9, r2
 8006b8a:	690a      	ldr	r2, [r1, #16]
 8006b8c:	460e      	mov	r6, r1
 8006b8e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006b92:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006b96:	eb04 0802 	add.w	r8, r4, r2
 8006b9a:	f108 0501 	add.w	r5, r8, #1
 8006b9e:	429d      	cmp	r5, r3
 8006ba0:	4607      	mov	r7, r0
 8006ba2:	dd04      	ble.n	8006bae <__lshift+0x2a>
 8006ba4:	005b      	lsls	r3, r3, #1
 8006ba6:	429d      	cmp	r5, r3
 8006ba8:	f101 0101 	add.w	r1, r1, #1
 8006bac:	dcfa      	bgt.n	8006ba4 <__lshift+0x20>
 8006bae:	4638      	mov	r0, r7
 8006bb0:	f7ff fe28 	bl	8006804 <_Balloc>
 8006bb4:	2c00      	cmp	r4, #0
 8006bb6:	f100 0314 	add.w	r3, r0, #20
 8006bba:	dd37      	ble.n	8006c2c <__lshift+0xa8>
 8006bbc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006bc0:	2200      	movs	r2, #0
 8006bc2:	f843 2b04 	str.w	r2, [r3], #4
 8006bc6:	428b      	cmp	r3, r1
 8006bc8:	d1fb      	bne.n	8006bc2 <__lshift+0x3e>
 8006bca:	6934      	ldr	r4, [r6, #16]
 8006bcc:	f106 0314 	add.w	r3, r6, #20
 8006bd0:	f019 091f 	ands.w	r9, r9, #31
 8006bd4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006bd8:	d020      	beq.n	8006c1c <__lshift+0x98>
 8006bda:	f1c9 0e20 	rsb	lr, r9, #32
 8006bde:	2200      	movs	r2, #0
 8006be0:	e000      	b.n	8006be4 <__lshift+0x60>
 8006be2:	4651      	mov	r1, sl
 8006be4:	681c      	ldr	r4, [r3, #0]
 8006be6:	468a      	mov	sl, r1
 8006be8:	fa04 f409 	lsl.w	r4, r4, r9
 8006bec:	4314      	orrs	r4, r2
 8006bee:	f84a 4b04 	str.w	r4, [sl], #4
 8006bf2:	f853 2b04 	ldr.w	r2, [r3], #4
 8006bf6:	4563      	cmp	r3, ip
 8006bf8:	fa22 f20e 	lsr.w	r2, r2, lr
 8006bfc:	d3f1      	bcc.n	8006be2 <__lshift+0x5e>
 8006bfe:	604a      	str	r2, [r1, #4]
 8006c00:	b10a      	cbz	r2, 8006c06 <__lshift+0x82>
 8006c02:	f108 0502 	add.w	r5, r8, #2
 8006c06:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006c08:	6872      	ldr	r2, [r6, #4]
 8006c0a:	3d01      	subs	r5, #1
 8006c0c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006c10:	6105      	str	r5, [r0, #16]
 8006c12:	6031      	str	r1, [r6, #0]
 8006c14:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006c18:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c1c:	3904      	subs	r1, #4
 8006c1e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006c22:	f841 2f04 	str.w	r2, [r1, #4]!
 8006c26:	459c      	cmp	ip, r3
 8006c28:	d8f9      	bhi.n	8006c1e <__lshift+0x9a>
 8006c2a:	e7ec      	b.n	8006c06 <__lshift+0x82>
 8006c2c:	4619      	mov	r1, r3
 8006c2e:	e7cc      	b.n	8006bca <__lshift+0x46>

08006c30 <__mcmp>:
 8006c30:	b430      	push	{r4, r5}
 8006c32:	690b      	ldr	r3, [r1, #16]
 8006c34:	4605      	mov	r5, r0
 8006c36:	6900      	ldr	r0, [r0, #16]
 8006c38:	1ac0      	subs	r0, r0, r3
 8006c3a:	d10f      	bne.n	8006c5c <__mcmp+0x2c>
 8006c3c:	009b      	lsls	r3, r3, #2
 8006c3e:	3514      	adds	r5, #20
 8006c40:	3114      	adds	r1, #20
 8006c42:	4419      	add	r1, r3
 8006c44:	442b      	add	r3, r5
 8006c46:	e001      	b.n	8006c4c <__mcmp+0x1c>
 8006c48:	429d      	cmp	r5, r3
 8006c4a:	d207      	bcs.n	8006c5c <__mcmp+0x2c>
 8006c4c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006c50:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006c54:	4294      	cmp	r4, r2
 8006c56:	d0f7      	beq.n	8006c48 <__mcmp+0x18>
 8006c58:	d302      	bcc.n	8006c60 <__mcmp+0x30>
 8006c5a:	2001      	movs	r0, #1
 8006c5c:	bc30      	pop	{r4, r5}
 8006c5e:	4770      	bx	lr
 8006c60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006c64:	e7fa      	b.n	8006c5c <__mcmp+0x2c>
 8006c66:	bf00      	nop

08006c68 <__mdiff>:
 8006c68:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006c6c:	6913      	ldr	r3, [r2, #16]
 8006c6e:	690d      	ldr	r5, [r1, #16]
 8006c70:	1aed      	subs	r5, r5, r3
 8006c72:	2d00      	cmp	r5, #0
 8006c74:	460e      	mov	r6, r1
 8006c76:	4690      	mov	r8, r2
 8006c78:	f101 0414 	add.w	r4, r1, #20
 8006c7c:	f102 0714 	add.w	r7, r2, #20
 8006c80:	d114      	bne.n	8006cac <__mdiff+0x44>
 8006c82:	009b      	lsls	r3, r3, #2
 8006c84:	18e2      	adds	r2, r4, r3
 8006c86:	443b      	add	r3, r7
 8006c88:	e001      	b.n	8006c8e <__mdiff+0x26>
 8006c8a:	42a2      	cmp	r2, r4
 8006c8c:	d959      	bls.n	8006d42 <__mdiff+0xda>
 8006c8e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006c92:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006c96:	458c      	cmp	ip, r1
 8006c98:	d0f7      	beq.n	8006c8a <__mdiff+0x22>
 8006c9a:	d209      	bcs.n	8006cb0 <__mdiff+0x48>
 8006c9c:	4622      	mov	r2, r4
 8006c9e:	4633      	mov	r3, r6
 8006ca0:	463c      	mov	r4, r7
 8006ca2:	4646      	mov	r6, r8
 8006ca4:	4617      	mov	r7, r2
 8006ca6:	4698      	mov	r8, r3
 8006ca8:	2501      	movs	r5, #1
 8006caa:	e001      	b.n	8006cb0 <__mdiff+0x48>
 8006cac:	dbf6      	blt.n	8006c9c <__mdiff+0x34>
 8006cae:	2500      	movs	r5, #0
 8006cb0:	6871      	ldr	r1, [r6, #4]
 8006cb2:	f7ff fda7 	bl	8006804 <_Balloc>
 8006cb6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006cba:	6936      	ldr	r6, [r6, #16]
 8006cbc:	60c5      	str	r5, [r0, #12]
 8006cbe:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006cc2:	46bc      	mov	ip, r7
 8006cc4:	f100 0514 	add.w	r5, r0, #20
 8006cc8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006ccc:	2300      	movs	r3, #0
 8006cce:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006cd2:	f854 8b04 	ldr.w	r8, [r4], #4
 8006cd6:	b28a      	uxth	r2, r1
 8006cd8:	fa13 f388 	uxtah	r3, r3, r8
 8006cdc:	0c09      	lsrs	r1, r1, #16
 8006cde:	1a9a      	subs	r2, r3, r2
 8006ce0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006ce4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006ce8:	b292      	uxth	r2, r2
 8006cea:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006cee:	45e6      	cmp	lr, ip
 8006cf0:	f845 2b04 	str.w	r2, [r5], #4
 8006cf4:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006cf8:	d8e9      	bhi.n	8006cce <__mdiff+0x66>
 8006cfa:	42a7      	cmp	r7, r4
 8006cfc:	d917      	bls.n	8006d2e <__mdiff+0xc6>
 8006cfe:	46ae      	mov	lr, r5
 8006d00:	46a4      	mov	ip, r4
 8006d02:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006d06:	fa13 f382 	uxtah	r3, r3, r2
 8006d0a:	1419      	asrs	r1, r3, #16
 8006d0c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006d10:	b29b      	uxth	r3, r3
 8006d12:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006d16:	4567      	cmp	r7, ip
 8006d18:	f84e 2b04 	str.w	r2, [lr], #4
 8006d1c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006d20:	d8ef      	bhi.n	8006d02 <__mdiff+0x9a>
 8006d22:	43e4      	mvns	r4, r4
 8006d24:	4427      	add	r7, r4
 8006d26:	f027 0703 	bic.w	r7, r7, #3
 8006d2a:	3704      	adds	r7, #4
 8006d2c:	443d      	add	r5, r7
 8006d2e:	3d04      	subs	r5, #4
 8006d30:	b922      	cbnz	r2, 8006d3c <__mdiff+0xd4>
 8006d32:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006d36:	3e01      	subs	r6, #1
 8006d38:	2b00      	cmp	r3, #0
 8006d3a:	d0fa      	beq.n	8006d32 <__mdiff+0xca>
 8006d3c:	6106      	str	r6, [r0, #16]
 8006d3e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006d42:	2100      	movs	r1, #0
 8006d44:	f7ff fd5e 	bl	8006804 <_Balloc>
 8006d48:	2201      	movs	r2, #1
 8006d4a:	2300      	movs	r3, #0
 8006d4c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006d50:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006d54 <__d2b>:
 8006d54:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006d58:	460f      	mov	r7, r1
 8006d5a:	b083      	sub	sp, #12
 8006d5c:	2101      	movs	r1, #1
 8006d5e:	ec55 4b10 	vmov	r4, r5, d0
 8006d62:	4616      	mov	r6, r2
 8006d64:	f7ff fd4e 	bl	8006804 <_Balloc>
 8006d68:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006d6c:	4681      	mov	r9, r0
 8006d6e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006d72:	f1b8 0f00 	cmp.w	r8, #0
 8006d76:	d001      	beq.n	8006d7c <__d2b+0x28>
 8006d78:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006d7c:	2c00      	cmp	r4, #0
 8006d7e:	9301      	str	r3, [sp, #4]
 8006d80:	d024      	beq.n	8006dcc <__d2b+0x78>
 8006d82:	a802      	add	r0, sp, #8
 8006d84:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006d88:	f7ff fdcc 	bl	8006924 <__lo0bits>
 8006d8c:	2800      	cmp	r0, #0
 8006d8e:	d136      	bne.n	8006dfe <__d2b+0xaa>
 8006d90:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006d94:	f8c9 2014 	str.w	r2, [r9, #20]
 8006d98:	2b00      	cmp	r3, #0
 8006d9a:	bf0c      	ite	eq
 8006d9c:	2101      	moveq	r1, #1
 8006d9e:	2102      	movne	r1, #2
 8006da0:	f8c9 3018 	str.w	r3, [r9, #24]
 8006da4:	f8c9 1010 	str.w	r1, [r9, #16]
 8006da8:	f1b8 0f00 	cmp.w	r8, #0
 8006dac:	d11b      	bne.n	8006de6 <__d2b+0x92>
 8006dae:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006db2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006db6:	6038      	str	r0, [r7, #0]
 8006db8:	6918      	ldr	r0, [r3, #16]
 8006dba:	f7ff fd93 	bl	80068e4 <__hi0bits>
 8006dbe:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006dc2:	6030      	str	r0, [r6, #0]
 8006dc4:	4648      	mov	r0, r9
 8006dc6:	b003      	add	sp, #12
 8006dc8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006dcc:	a801      	add	r0, sp, #4
 8006dce:	f7ff fda9 	bl	8006924 <__lo0bits>
 8006dd2:	9b01      	ldr	r3, [sp, #4]
 8006dd4:	f8c9 3014 	str.w	r3, [r9, #20]
 8006dd8:	2101      	movs	r1, #1
 8006dda:	3020      	adds	r0, #32
 8006ddc:	f8c9 1010 	str.w	r1, [r9, #16]
 8006de0:	f1b8 0f00 	cmp.w	r8, #0
 8006de4:	d0e3      	beq.n	8006dae <__d2b+0x5a>
 8006de6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006dea:	eb08 0300 	add.w	r3, r8, r0
 8006dee:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006df2:	603b      	str	r3, [r7, #0]
 8006df4:	6030      	str	r0, [r6, #0]
 8006df6:	4648      	mov	r0, r9
 8006df8:	b003      	add	sp, #12
 8006dfa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006dfe:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006e02:	f1c0 0220 	rsb	r2, r0, #32
 8006e06:	fa03 f202 	lsl.w	r2, r3, r2
 8006e0a:	430a      	orrs	r2, r1
 8006e0c:	40c3      	lsrs	r3, r0
 8006e0e:	9301      	str	r3, [sp, #4]
 8006e10:	f8c9 2014 	str.w	r2, [r9, #20]
 8006e14:	e7c0      	b.n	8006d98 <__d2b+0x44>
 8006e16:	bf00      	nop

08006e18 <_realloc_r>:
 8006e18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006e1c:	4692      	mov	sl, r2
 8006e1e:	b083      	sub	sp, #12
 8006e20:	2900      	cmp	r1, #0
 8006e22:	f000 80a1 	beq.w	8006f68 <_realloc_r+0x150>
 8006e26:	460d      	mov	r5, r1
 8006e28:	4680      	mov	r8, r0
 8006e2a:	f10a 040b 	add.w	r4, sl, #11
 8006e2e:	f7ff fcdd 	bl	80067ec <__malloc_lock>
 8006e32:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006e36:	2c16      	cmp	r4, #22
 8006e38:	f022 0603 	bic.w	r6, r2, #3
 8006e3c:	f1a5 0708 	sub.w	r7, r5, #8
 8006e40:	d83e      	bhi.n	8006ec0 <_realloc_r+0xa8>
 8006e42:	2410      	movs	r4, #16
 8006e44:	4621      	mov	r1, r4
 8006e46:	45a2      	cmp	sl, r4
 8006e48:	d83f      	bhi.n	8006eca <_realloc_r+0xb2>
 8006e4a:	428e      	cmp	r6, r1
 8006e4c:	eb07 0906 	add.w	r9, r7, r6
 8006e50:	da74      	bge.n	8006f3c <_realloc_r+0x124>
 8006e52:	4bc7      	ldr	r3, [pc, #796]	; (8007170 <_realloc_r+0x358>)
 8006e54:	6898      	ldr	r0, [r3, #8]
 8006e56:	4548      	cmp	r0, r9
 8006e58:	f000 80aa 	beq.w	8006fb0 <_realloc_r+0x198>
 8006e5c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006e60:	f020 0301 	bic.w	r3, r0, #1
 8006e64:	444b      	add	r3, r9
 8006e66:	685b      	ldr	r3, [r3, #4]
 8006e68:	07db      	lsls	r3, r3, #31
 8006e6a:	f140 8083 	bpl.w	8006f74 <_realloc_r+0x15c>
 8006e6e:	07d2      	lsls	r2, r2, #31
 8006e70:	d534      	bpl.n	8006edc <_realloc_r+0xc4>
 8006e72:	4651      	mov	r1, sl
 8006e74:	4640      	mov	r0, r8
 8006e76:	f7ff f9b1 	bl	80061dc <_malloc_r>
 8006e7a:	4682      	mov	sl, r0
 8006e7c:	b1e0      	cbz	r0, 8006eb8 <_realloc_r+0xa0>
 8006e7e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006e82:	f023 0301 	bic.w	r3, r3, #1
 8006e86:	443b      	add	r3, r7
 8006e88:	f1a0 0208 	sub.w	r2, r0, #8
 8006e8c:	4293      	cmp	r3, r2
 8006e8e:	f000 80f9 	beq.w	8007084 <_realloc_r+0x26c>
 8006e92:	1f32      	subs	r2, r6, #4
 8006e94:	2a24      	cmp	r2, #36	; 0x24
 8006e96:	f200 8107 	bhi.w	80070a8 <_realloc_r+0x290>
 8006e9a:	2a13      	cmp	r2, #19
 8006e9c:	6829      	ldr	r1, [r5, #0]
 8006e9e:	f200 80e6 	bhi.w	800706e <_realloc_r+0x256>
 8006ea2:	4603      	mov	r3, r0
 8006ea4:	462a      	mov	r2, r5
 8006ea6:	6019      	str	r1, [r3, #0]
 8006ea8:	6851      	ldr	r1, [r2, #4]
 8006eaa:	6059      	str	r1, [r3, #4]
 8006eac:	6892      	ldr	r2, [r2, #8]
 8006eae:	609a      	str	r2, [r3, #8]
 8006eb0:	4629      	mov	r1, r5
 8006eb2:	4640      	mov	r0, r8
 8006eb4:	f7fe fe68 	bl	8005b88 <_free_r>
 8006eb8:	4640      	mov	r0, r8
 8006eba:	f7ff fc9d 	bl	80067f8 <__malloc_unlock>
 8006ebe:	e04f      	b.n	8006f60 <_realloc_r+0x148>
 8006ec0:	f024 0407 	bic.w	r4, r4, #7
 8006ec4:	2c00      	cmp	r4, #0
 8006ec6:	4621      	mov	r1, r4
 8006ec8:	dabd      	bge.n	8006e46 <_realloc_r+0x2e>
 8006eca:	f04f 0a00 	mov.w	sl, #0
 8006ece:	230c      	movs	r3, #12
 8006ed0:	4650      	mov	r0, sl
 8006ed2:	f8c8 3000 	str.w	r3, [r8]
 8006ed6:	b003      	add	sp, #12
 8006ed8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006edc:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006ee0:	eba7 0b03 	sub.w	fp, r7, r3
 8006ee4:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006ee8:	f022 0203 	bic.w	r2, r2, #3
 8006eec:	18b3      	adds	r3, r6, r2
 8006eee:	428b      	cmp	r3, r1
 8006ef0:	dbbf      	blt.n	8006e72 <_realloc_r+0x5a>
 8006ef2:	46da      	mov	sl, fp
 8006ef4:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006ef8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006efc:	1f32      	subs	r2, r6, #4
 8006efe:	2a24      	cmp	r2, #36	; 0x24
 8006f00:	60c1      	str	r1, [r0, #12]
 8006f02:	eb0b 0903 	add.w	r9, fp, r3
 8006f06:	6088      	str	r0, [r1, #8]
 8006f08:	f200 80c6 	bhi.w	8007098 <_realloc_r+0x280>
 8006f0c:	2a13      	cmp	r2, #19
 8006f0e:	6829      	ldr	r1, [r5, #0]
 8006f10:	f240 80c0 	bls.w	8007094 <_realloc_r+0x27c>
 8006f14:	f8cb 1008 	str.w	r1, [fp, #8]
 8006f18:	6869      	ldr	r1, [r5, #4]
 8006f1a:	f8cb 100c 	str.w	r1, [fp, #12]
 8006f1e:	2a1b      	cmp	r2, #27
 8006f20:	68a9      	ldr	r1, [r5, #8]
 8006f22:	f200 80d8 	bhi.w	80070d6 <_realloc_r+0x2be>
 8006f26:	f10b 0210 	add.w	r2, fp, #16
 8006f2a:	3508      	adds	r5, #8
 8006f2c:	6011      	str	r1, [r2, #0]
 8006f2e:	6869      	ldr	r1, [r5, #4]
 8006f30:	6051      	str	r1, [r2, #4]
 8006f32:	68a9      	ldr	r1, [r5, #8]
 8006f34:	6091      	str	r1, [r2, #8]
 8006f36:	461e      	mov	r6, r3
 8006f38:	465f      	mov	r7, fp
 8006f3a:	4655      	mov	r5, sl
 8006f3c:	687b      	ldr	r3, [r7, #4]
 8006f3e:	1b32      	subs	r2, r6, r4
 8006f40:	2a0f      	cmp	r2, #15
 8006f42:	f003 0301 	and.w	r3, r3, #1
 8006f46:	d822      	bhi.n	8006f8e <_realloc_r+0x176>
 8006f48:	4333      	orrs	r3, r6
 8006f4a:	607b      	str	r3, [r7, #4]
 8006f4c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006f50:	f043 0301 	orr.w	r3, r3, #1
 8006f54:	f8c9 3004 	str.w	r3, [r9, #4]
 8006f58:	4640      	mov	r0, r8
 8006f5a:	f7ff fc4d 	bl	80067f8 <__malloc_unlock>
 8006f5e:	46aa      	mov	sl, r5
 8006f60:	4650      	mov	r0, sl
 8006f62:	b003      	add	sp, #12
 8006f64:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006f68:	4611      	mov	r1, r2
 8006f6a:	b003      	add	sp, #12
 8006f6c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006f70:	f7ff b934 	b.w	80061dc <_malloc_r>
 8006f74:	f020 0003 	bic.w	r0, r0, #3
 8006f78:	1833      	adds	r3, r6, r0
 8006f7a:	428b      	cmp	r3, r1
 8006f7c:	db61      	blt.n	8007042 <_realloc_r+0x22a>
 8006f7e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006f82:	461e      	mov	r6, r3
 8006f84:	60ca      	str	r2, [r1, #12]
 8006f86:	eb07 0903 	add.w	r9, r7, r3
 8006f8a:	6091      	str	r1, [r2, #8]
 8006f8c:	e7d6      	b.n	8006f3c <_realloc_r+0x124>
 8006f8e:	1939      	adds	r1, r7, r4
 8006f90:	4323      	orrs	r3, r4
 8006f92:	f042 0201 	orr.w	r2, r2, #1
 8006f96:	607b      	str	r3, [r7, #4]
 8006f98:	604a      	str	r2, [r1, #4]
 8006f9a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006f9e:	f043 0301 	orr.w	r3, r3, #1
 8006fa2:	3108      	adds	r1, #8
 8006fa4:	f8c9 3004 	str.w	r3, [r9, #4]
 8006fa8:	4640      	mov	r0, r8
 8006faa:	f7fe fded 	bl	8005b88 <_free_r>
 8006fae:	e7d3      	b.n	8006f58 <_realloc_r+0x140>
 8006fb0:	6840      	ldr	r0, [r0, #4]
 8006fb2:	f020 0903 	bic.w	r9, r0, #3
 8006fb6:	44b1      	add	r9, r6
 8006fb8:	f104 0010 	add.w	r0, r4, #16
 8006fbc:	4581      	cmp	r9, r0
 8006fbe:	da77      	bge.n	80070b0 <_realloc_r+0x298>
 8006fc0:	07d2      	lsls	r2, r2, #31
 8006fc2:	f53f af56 	bmi.w	8006e72 <_realloc_r+0x5a>
 8006fc6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006fca:	eba7 0b02 	sub.w	fp, r7, r2
 8006fce:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006fd2:	f022 0203 	bic.w	r2, r2, #3
 8006fd6:	4491      	add	r9, r2
 8006fd8:	4548      	cmp	r0, r9
 8006fda:	dc87      	bgt.n	8006eec <_realloc_r+0xd4>
 8006fdc:	46da      	mov	sl, fp
 8006fde:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006fe2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006fe6:	1f32      	subs	r2, r6, #4
 8006fe8:	2a24      	cmp	r2, #36	; 0x24
 8006fea:	60c1      	str	r1, [r0, #12]
 8006fec:	6088      	str	r0, [r1, #8]
 8006fee:	f200 80a1 	bhi.w	8007134 <_realloc_r+0x31c>
 8006ff2:	2a13      	cmp	r2, #19
 8006ff4:	6829      	ldr	r1, [r5, #0]
 8006ff6:	f240 809b 	bls.w	8007130 <_realloc_r+0x318>
 8006ffa:	f8cb 1008 	str.w	r1, [fp, #8]
 8006ffe:	6869      	ldr	r1, [r5, #4]
 8007000:	f8cb 100c 	str.w	r1, [fp, #12]
 8007004:	2a1b      	cmp	r2, #27
 8007006:	68a9      	ldr	r1, [r5, #8]
 8007008:	f200 809b 	bhi.w	8007142 <_realloc_r+0x32a>
 800700c:	f10b 0210 	add.w	r2, fp, #16
 8007010:	3508      	adds	r5, #8
 8007012:	6011      	str	r1, [r2, #0]
 8007014:	6869      	ldr	r1, [r5, #4]
 8007016:	6051      	str	r1, [r2, #4]
 8007018:	68a9      	ldr	r1, [r5, #8]
 800701a:	6091      	str	r1, [r2, #8]
 800701c:	eb0b 0104 	add.w	r1, fp, r4
 8007020:	eba9 0204 	sub.w	r2, r9, r4
 8007024:	f042 0201 	orr.w	r2, r2, #1
 8007028:	6099      	str	r1, [r3, #8]
 800702a:	604a      	str	r2, [r1, #4]
 800702c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8007030:	f003 0301 	and.w	r3, r3, #1
 8007034:	431c      	orrs	r4, r3
 8007036:	4640      	mov	r0, r8
 8007038:	f8cb 4004 	str.w	r4, [fp, #4]
 800703c:	f7ff fbdc 	bl	80067f8 <__malloc_unlock>
 8007040:	e78e      	b.n	8006f60 <_realloc_r+0x148>
 8007042:	07d3      	lsls	r3, r2, #31
 8007044:	f53f af15 	bmi.w	8006e72 <_realloc_r+0x5a>
 8007048:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800704c:	eba7 0b03 	sub.w	fp, r7, r3
 8007050:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007054:	f022 0203 	bic.w	r2, r2, #3
 8007058:	4410      	add	r0, r2
 800705a:	1983      	adds	r3, r0, r6
 800705c:	428b      	cmp	r3, r1
 800705e:	f6ff af45 	blt.w	8006eec <_realloc_r+0xd4>
 8007062:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8007066:	46da      	mov	sl, fp
 8007068:	60ca      	str	r2, [r1, #12]
 800706a:	6091      	str	r1, [r2, #8]
 800706c:	e742      	b.n	8006ef4 <_realloc_r+0xdc>
 800706e:	6001      	str	r1, [r0, #0]
 8007070:	686b      	ldr	r3, [r5, #4]
 8007072:	6043      	str	r3, [r0, #4]
 8007074:	2a1b      	cmp	r2, #27
 8007076:	d83a      	bhi.n	80070ee <_realloc_r+0x2d6>
 8007078:	f105 0208 	add.w	r2, r5, #8
 800707c:	f100 0308 	add.w	r3, r0, #8
 8007080:	68a9      	ldr	r1, [r5, #8]
 8007082:	e710      	b.n	8006ea6 <_realloc_r+0x8e>
 8007084:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8007088:	f023 0303 	bic.w	r3, r3, #3
 800708c:	441e      	add	r6, r3
 800708e:	eb07 0906 	add.w	r9, r7, r6
 8007092:	e753      	b.n	8006f3c <_realloc_r+0x124>
 8007094:	4652      	mov	r2, sl
 8007096:	e749      	b.n	8006f2c <_realloc_r+0x114>
 8007098:	4629      	mov	r1, r5
 800709a:	4650      	mov	r0, sl
 800709c:	461e      	mov	r6, r3
 800709e:	465f      	mov	r7, fp
 80070a0:	f7ff fb40 	bl	8006724 <memmove>
 80070a4:	4655      	mov	r5, sl
 80070a6:	e749      	b.n	8006f3c <_realloc_r+0x124>
 80070a8:	4629      	mov	r1, r5
 80070aa:	f7ff fb3b 	bl	8006724 <memmove>
 80070ae:	e6ff      	b.n	8006eb0 <_realloc_r+0x98>
 80070b0:	4427      	add	r7, r4
 80070b2:	eba9 0904 	sub.w	r9, r9, r4
 80070b6:	f049 0201 	orr.w	r2, r9, #1
 80070ba:	609f      	str	r7, [r3, #8]
 80070bc:	607a      	str	r2, [r7, #4]
 80070be:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80070c2:	f003 0301 	and.w	r3, r3, #1
 80070c6:	431c      	orrs	r4, r3
 80070c8:	4640      	mov	r0, r8
 80070ca:	f845 4c04 	str.w	r4, [r5, #-4]
 80070ce:	f7ff fb93 	bl	80067f8 <__malloc_unlock>
 80070d2:	46aa      	mov	sl, r5
 80070d4:	e744      	b.n	8006f60 <_realloc_r+0x148>
 80070d6:	f8cb 1010 	str.w	r1, [fp, #16]
 80070da:	68e9      	ldr	r1, [r5, #12]
 80070dc:	f8cb 1014 	str.w	r1, [fp, #20]
 80070e0:	2a24      	cmp	r2, #36	; 0x24
 80070e2:	d010      	beq.n	8007106 <_realloc_r+0x2ee>
 80070e4:	6929      	ldr	r1, [r5, #16]
 80070e6:	f10b 0218 	add.w	r2, fp, #24
 80070ea:	3510      	adds	r5, #16
 80070ec:	e71e      	b.n	8006f2c <_realloc_r+0x114>
 80070ee:	68ab      	ldr	r3, [r5, #8]
 80070f0:	6083      	str	r3, [r0, #8]
 80070f2:	68eb      	ldr	r3, [r5, #12]
 80070f4:	60c3      	str	r3, [r0, #12]
 80070f6:	2a24      	cmp	r2, #36	; 0x24
 80070f8:	d010      	beq.n	800711c <_realloc_r+0x304>
 80070fa:	f105 0210 	add.w	r2, r5, #16
 80070fe:	f100 0310 	add.w	r3, r0, #16
 8007102:	6929      	ldr	r1, [r5, #16]
 8007104:	e6cf      	b.n	8006ea6 <_realloc_r+0x8e>
 8007106:	692a      	ldr	r2, [r5, #16]
 8007108:	f8cb 2018 	str.w	r2, [fp, #24]
 800710c:	696a      	ldr	r2, [r5, #20]
 800710e:	f8cb 201c 	str.w	r2, [fp, #28]
 8007112:	69a9      	ldr	r1, [r5, #24]
 8007114:	f10b 0220 	add.w	r2, fp, #32
 8007118:	3518      	adds	r5, #24
 800711a:	e707      	b.n	8006f2c <_realloc_r+0x114>
 800711c:	692b      	ldr	r3, [r5, #16]
 800711e:	6103      	str	r3, [r0, #16]
 8007120:	696b      	ldr	r3, [r5, #20]
 8007122:	6143      	str	r3, [r0, #20]
 8007124:	69a9      	ldr	r1, [r5, #24]
 8007126:	f105 0218 	add.w	r2, r5, #24
 800712a:	f100 0318 	add.w	r3, r0, #24
 800712e:	e6ba      	b.n	8006ea6 <_realloc_r+0x8e>
 8007130:	4652      	mov	r2, sl
 8007132:	e76e      	b.n	8007012 <_realloc_r+0x1fa>
 8007134:	4629      	mov	r1, r5
 8007136:	4650      	mov	r0, sl
 8007138:	9301      	str	r3, [sp, #4]
 800713a:	f7ff faf3 	bl	8006724 <memmove>
 800713e:	9b01      	ldr	r3, [sp, #4]
 8007140:	e76c      	b.n	800701c <_realloc_r+0x204>
 8007142:	f8cb 1010 	str.w	r1, [fp, #16]
 8007146:	68e9      	ldr	r1, [r5, #12]
 8007148:	f8cb 1014 	str.w	r1, [fp, #20]
 800714c:	2a24      	cmp	r2, #36	; 0x24
 800714e:	d004      	beq.n	800715a <_realloc_r+0x342>
 8007150:	6929      	ldr	r1, [r5, #16]
 8007152:	f10b 0218 	add.w	r2, fp, #24
 8007156:	3510      	adds	r5, #16
 8007158:	e75b      	b.n	8007012 <_realloc_r+0x1fa>
 800715a:	692a      	ldr	r2, [r5, #16]
 800715c:	f8cb 2018 	str.w	r2, [fp, #24]
 8007160:	696a      	ldr	r2, [r5, #20]
 8007162:	f8cb 201c 	str.w	r2, [fp, #28]
 8007166:	69a9      	ldr	r1, [r5, #24]
 8007168:	f10b 0220 	add.w	r2, fp, #32
 800716c:	3518      	adds	r5, #24
 800716e:	e750      	b.n	8007012 <_realloc_r+0x1fa>
 8007170:	2000047c 	.word	0x2000047c

08007174 <frexp>:
 8007174:	ec53 2b10 	vmov	r2, r3, d0
 8007178:	b570      	push	{r4, r5, r6, lr}
 800717a:	4e16      	ldr	r6, [pc, #88]	; (80071d4 <frexp+0x60>)
 800717c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8007180:	2500      	movs	r5, #0
 8007182:	42b1      	cmp	r1, r6
 8007184:	4604      	mov	r4, r0
 8007186:	6005      	str	r5, [r0, #0]
 8007188:	dc21      	bgt.n	80071ce <frexp+0x5a>
 800718a:	ee10 6a10 	vmov	r6, s0
 800718e:	430e      	orrs	r6, r1
 8007190:	d01d      	beq.n	80071ce <frexp+0x5a>
 8007192:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8007196:	4618      	mov	r0, r3
 8007198:	da0c      	bge.n	80071b4 <frexp+0x40>
 800719a:	4619      	mov	r1, r3
 800719c:	2200      	movs	r2, #0
 800719e:	ee10 0a10 	vmov	r0, s0
 80071a2:	4b0d      	ldr	r3, [pc, #52]	; (80071d8 <frexp+0x64>)
 80071a4:	f7f9 fd28 	bl	8000bf8 <__aeabi_dmul>
 80071a8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80071ac:	4602      	mov	r2, r0
 80071ae:	4608      	mov	r0, r1
 80071b0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80071b4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80071b8:	1509      	asrs	r1, r1, #20
 80071ba:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80071be:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80071c2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80071c6:	4429      	add	r1, r5
 80071c8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80071cc:	6021      	str	r1, [r4, #0]
 80071ce:	ec43 2b10 	vmov	d0, r2, r3
 80071d2:	bd70      	pop	{r4, r5, r6, pc}
 80071d4:	7fefffff 	.word	0x7fefffff
 80071d8:	43500000 	.word	0x43500000

080071dc <_sbrk_r>:
 80071dc:	b538      	push	{r3, r4, r5, lr}
 80071de:	4c07      	ldr	r4, [pc, #28]	; (80071fc <_sbrk_r+0x20>)
 80071e0:	2300      	movs	r3, #0
 80071e2:	4605      	mov	r5, r0
 80071e4:	4608      	mov	r0, r1
 80071e6:	6023      	str	r3, [r4, #0]
 80071e8:	f7fb fc2d 	bl	8002a46 <_sbrk>
 80071ec:	1c43      	adds	r3, r0, #1
 80071ee:	d000      	beq.n	80071f2 <_sbrk_r+0x16>
 80071f0:	bd38      	pop	{r3, r4, r5, pc}
 80071f2:	6823      	ldr	r3, [r4, #0]
 80071f4:	2b00      	cmp	r3, #0
 80071f6:	d0fb      	beq.n	80071f0 <_sbrk_r+0x14>
 80071f8:	602b      	str	r3, [r5, #0]
 80071fa:	bd38      	pop	{r3, r4, r5, pc}
 80071fc:	20001588 	.word	0x20001588

08007200 <__sread>:
 8007200:	b510      	push	{r4, lr}
 8007202:	460c      	mov	r4, r1
 8007204:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007208:	f000 fabc 	bl	8007784 <_read_r>
 800720c:	2800      	cmp	r0, #0
 800720e:	db03      	blt.n	8007218 <__sread+0x18>
 8007210:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8007212:	4403      	add	r3, r0
 8007214:	6523      	str	r3, [r4, #80]	; 0x50
 8007216:	bd10      	pop	{r4, pc}
 8007218:	89a3      	ldrh	r3, [r4, #12]
 800721a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800721e:	81a3      	strh	r3, [r4, #12]
 8007220:	bd10      	pop	{r4, pc}
 8007222:	bf00      	nop

08007224 <__swrite>:
 8007224:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007228:	4616      	mov	r6, r2
 800722a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800722e:	461f      	mov	r7, r3
 8007230:	05d3      	lsls	r3, r2, #23
 8007232:	460c      	mov	r4, r1
 8007234:	4605      	mov	r5, r0
 8007236:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800723a:	d507      	bpl.n	800724c <__swrite+0x28>
 800723c:	2200      	movs	r2, #0
 800723e:	2302      	movs	r3, #2
 8007240:	f000 fa74 	bl	800772c <_lseek_r>
 8007244:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007248:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800724c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8007250:	81a2      	strh	r2, [r4, #12]
 8007252:	463b      	mov	r3, r7
 8007254:	4632      	mov	r2, r6
 8007256:	4628      	mov	r0, r5
 8007258:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800725c:	f000 b88c 	b.w	8007378 <_write_r>

08007260 <__sseek>:
 8007260:	b510      	push	{r4, lr}
 8007262:	460c      	mov	r4, r1
 8007264:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007268:	f000 fa60 	bl	800772c <_lseek_r>
 800726c:	89a3      	ldrh	r3, [r4, #12]
 800726e:	1c42      	adds	r2, r0, #1
 8007270:	bf0e      	itee	eq
 8007272:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8007276:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800727a:	6520      	strne	r0, [r4, #80]	; 0x50
 800727c:	81a3      	strh	r3, [r4, #12]
 800727e:	bd10      	pop	{r4, pc}

08007280 <__sclose>:
 8007280:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007284:	f000 b922 	b.w	80074cc <_close_r>

08007288 <strncpy>:
 8007288:	ea40 0301 	orr.w	r3, r0, r1
 800728c:	079b      	lsls	r3, r3, #30
 800728e:	b470      	push	{r4, r5, r6}
 8007290:	d12a      	bne.n	80072e8 <strncpy+0x60>
 8007292:	2a03      	cmp	r2, #3
 8007294:	d928      	bls.n	80072e8 <strncpy+0x60>
 8007296:	460c      	mov	r4, r1
 8007298:	4603      	mov	r3, r0
 800729a:	4621      	mov	r1, r4
 800729c:	f854 6b04 	ldr.w	r6, [r4], #4
 80072a0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80072a4:	ea25 0506 	bic.w	r5, r5, r6
 80072a8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80072ac:	d106      	bne.n	80072bc <strncpy+0x34>
 80072ae:	3a04      	subs	r2, #4
 80072b0:	2a03      	cmp	r2, #3
 80072b2:	f843 6b04 	str.w	r6, [r3], #4
 80072b6:	4621      	mov	r1, r4
 80072b8:	d8ef      	bhi.n	800729a <strncpy+0x12>
 80072ba:	b19a      	cbz	r2, 80072e4 <strncpy+0x5c>
 80072bc:	780c      	ldrb	r4, [r1, #0]
 80072be:	701c      	strb	r4, [r3, #0]
 80072c0:	3a01      	subs	r2, #1
 80072c2:	3301      	adds	r3, #1
 80072c4:	b13c      	cbz	r4, 80072d6 <strncpy+0x4e>
 80072c6:	b16a      	cbz	r2, 80072e4 <strncpy+0x5c>
 80072c8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80072cc:	f803 4b01 	strb.w	r4, [r3], #1
 80072d0:	3a01      	subs	r2, #1
 80072d2:	2c00      	cmp	r4, #0
 80072d4:	d1f7      	bne.n	80072c6 <strncpy+0x3e>
 80072d6:	b12a      	cbz	r2, 80072e4 <strncpy+0x5c>
 80072d8:	441a      	add	r2, r3
 80072da:	2100      	movs	r1, #0
 80072dc:	f803 1b01 	strb.w	r1, [r3], #1
 80072e0:	4293      	cmp	r3, r2
 80072e2:	d1fb      	bne.n	80072dc <strncpy+0x54>
 80072e4:	bc70      	pop	{r4, r5, r6}
 80072e6:	4770      	bx	lr
 80072e8:	4603      	mov	r3, r0
 80072ea:	e7e6      	b.n	80072ba <strncpy+0x32>

080072ec <__sprint_r.part.0>:
 80072ec:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80072f0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80072f2:	049c      	lsls	r4, r3, #18
 80072f4:	4692      	mov	sl, r2
 80072f6:	d52d      	bpl.n	8007354 <__sprint_r.part.0+0x68>
 80072f8:	6893      	ldr	r3, [r2, #8]
 80072fa:	6812      	ldr	r2, [r2, #0]
 80072fc:	b343      	cbz	r3, 8007350 <__sprint_r.part.0+0x64>
 80072fe:	460e      	mov	r6, r1
 8007300:	4607      	mov	r7, r0
 8007302:	f102 0908 	add.w	r9, r2, #8
 8007306:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800730a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800730e:	d015      	beq.n	800733c <__sprint_r.part.0+0x50>
 8007310:	3d04      	subs	r5, #4
 8007312:	2400      	movs	r4, #0
 8007314:	e001      	b.n	800731a <__sprint_r.part.0+0x2e>
 8007316:	45a0      	cmp	r8, r4
 8007318:	d00e      	beq.n	8007338 <__sprint_r.part.0+0x4c>
 800731a:	4632      	mov	r2, r6
 800731c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007320:	4638      	mov	r0, r7
 8007322:	f000 f99d 	bl	8007660 <_fputwc_r>
 8007326:	1c43      	adds	r3, r0, #1
 8007328:	f104 0401 	add.w	r4, r4, #1
 800732c:	d1f3      	bne.n	8007316 <__sprint_r.part.0+0x2a>
 800732e:	2300      	movs	r3, #0
 8007330:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8007334:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007338:	f8da 3008 	ldr.w	r3, [sl, #8]
 800733c:	f02b 0b03 	bic.w	fp, fp, #3
 8007340:	eba3 030b 	sub.w	r3, r3, fp
 8007344:	f8ca 3008 	str.w	r3, [sl, #8]
 8007348:	f109 0908 	add.w	r9, r9, #8
 800734c:	2b00      	cmp	r3, #0
 800734e:	d1da      	bne.n	8007306 <__sprint_r.part.0+0x1a>
 8007350:	2000      	movs	r0, #0
 8007352:	e7ec      	b.n	800732e <__sprint_r.part.0+0x42>
 8007354:	f7fe fd0c 	bl	8005d70 <__sfvwrite_r>
 8007358:	2300      	movs	r3, #0
 800735a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800735e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007362:	bf00      	nop

08007364 <__sprint_r>:
 8007364:	6893      	ldr	r3, [r2, #8]
 8007366:	b10b      	cbz	r3, 800736c <__sprint_r+0x8>
 8007368:	f7ff bfc0 	b.w	80072ec <__sprint_r.part.0>
 800736c:	b410      	push	{r4}
 800736e:	4618      	mov	r0, r3
 8007370:	6053      	str	r3, [r2, #4]
 8007372:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007376:	4770      	bx	lr

08007378 <_write_r>:
 8007378:	b570      	push	{r4, r5, r6, lr}
 800737a:	460d      	mov	r5, r1
 800737c:	4c08      	ldr	r4, [pc, #32]	; (80073a0 <_write_r+0x28>)
 800737e:	4611      	mov	r1, r2
 8007380:	4606      	mov	r6, r0
 8007382:	461a      	mov	r2, r3
 8007384:	4628      	mov	r0, r5
 8007386:	2300      	movs	r3, #0
 8007388:	6023      	str	r3, [r4, #0]
 800738a:	f7fb fb3e 	bl	8002a0a <_write>
 800738e:	1c43      	adds	r3, r0, #1
 8007390:	d000      	beq.n	8007394 <_write_r+0x1c>
 8007392:	bd70      	pop	{r4, r5, r6, pc}
 8007394:	6823      	ldr	r3, [r4, #0]
 8007396:	2b00      	cmp	r3, #0
 8007398:	d0fb      	beq.n	8007392 <_write_r+0x1a>
 800739a:	6033      	str	r3, [r6, #0]
 800739c:	bd70      	pop	{r4, r5, r6, pc}
 800739e:	bf00      	nop
 80073a0:	20001588 	.word	0x20001588

080073a4 <__register_exitproc>:
 80073a4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80073a8:	4d2b      	ldr	r5, [pc, #172]	; (8007458 <__register_exitproc+0xb4>)
 80073aa:	4606      	mov	r6, r0
 80073ac:	6828      	ldr	r0, [r5, #0]
 80073ae:	4698      	mov	r8, r3
 80073b0:	460f      	mov	r7, r1
 80073b2:	4691      	mov	r9, r2
 80073b4:	f7fe fe96 	bl	80060e4 <__retarget_lock_acquire_recursive>
 80073b8:	4b28      	ldr	r3, [pc, #160]	; (800745c <__register_exitproc+0xb8>)
 80073ba:	681c      	ldr	r4, [r3, #0]
 80073bc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 80073c0:	2b00      	cmp	r3, #0
 80073c2:	d03d      	beq.n	8007440 <__register_exitproc+0x9c>
 80073c4:	685a      	ldr	r2, [r3, #4]
 80073c6:	2a1f      	cmp	r2, #31
 80073c8:	dc0d      	bgt.n	80073e6 <__register_exitproc+0x42>
 80073ca:	f102 0c01 	add.w	ip, r2, #1
 80073ce:	bb16      	cbnz	r6, 8007416 <__register_exitproc+0x72>
 80073d0:	3202      	adds	r2, #2
 80073d2:	f8c3 c004 	str.w	ip, [r3, #4]
 80073d6:	6828      	ldr	r0, [r5, #0]
 80073d8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 80073dc:	f7fe fe84 	bl	80060e8 <__retarget_lock_release_recursive>
 80073e0:	2000      	movs	r0, #0
 80073e2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80073e6:	4b1e      	ldr	r3, [pc, #120]	; (8007460 <__register_exitproc+0xbc>)
 80073e8:	b37b      	cbz	r3, 800744a <__register_exitproc+0xa6>
 80073ea:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80073ee:	f3af 8000 	nop.w
 80073f2:	4603      	mov	r3, r0
 80073f4:	b348      	cbz	r0, 800744a <__register_exitproc+0xa6>
 80073f6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 80073fa:	2100      	movs	r1, #0
 80073fc:	e9c0 2100 	strd	r2, r1, [r0]
 8007400:	f04f 0c01 	mov.w	ip, #1
 8007404:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007408:	460a      	mov	r2, r1
 800740a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800740e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8007412:	2e00      	cmp	r6, #0
 8007414:	d0dc      	beq.n	80073d0 <__register_exitproc+0x2c>
 8007416:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800741a:	2401      	movs	r4, #1
 800741c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007420:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8007424:	4094      	lsls	r4, r2
 8007426:	4320      	orrs	r0, r4
 8007428:	2e02      	cmp	r6, #2
 800742a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800742e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8007432:	d1cd      	bne.n	80073d0 <__register_exitproc+0x2c>
 8007434:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007438:	430c      	orrs	r4, r1
 800743a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800743e:	e7c7      	b.n	80073d0 <__register_exitproc+0x2c>
 8007440:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8007444:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8007448:	e7bc      	b.n	80073c4 <__register_exitproc+0x20>
 800744a:	6828      	ldr	r0, [r5, #0]
 800744c:	f7fe fe4c 	bl	80060e8 <__retarget_lock_release_recursive>
 8007450:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007454:	e7c5      	b.n	80073e2 <__register_exitproc+0x3e>
 8007456:	bf00      	nop
 8007458:	20000478 	.word	0x20000478
 800745c:	08007a34 	.word	0x08007a34
 8007460:	00000000 	.word	0x00000000

08007464 <_calloc_r>:
 8007464:	b510      	push	{r4, lr}
 8007466:	fb02 f101 	mul.w	r1, r2, r1
 800746a:	f7fe feb7 	bl	80061dc <_malloc_r>
 800746e:	4604      	mov	r4, r0
 8007470:	b1d8      	cbz	r0, 80074aa <_calloc_r+0x46>
 8007472:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8007476:	f022 0203 	bic.w	r2, r2, #3
 800747a:	3a04      	subs	r2, #4
 800747c:	2a24      	cmp	r2, #36	; 0x24
 800747e:	d81d      	bhi.n	80074bc <_calloc_r+0x58>
 8007480:	2a13      	cmp	r2, #19
 8007482:	d914      	bls.n	80074ae <_calloc_r+0x4a>
 8007484:	2300      	movs	r3, #0
 8007486:	2a1b      	cmp	r2, #27
 8007488:	e9c0 3300 	strd	r3, r3, [r0]
 800748c:	d91b      	bls.n	80074c6 <_calloc_r+0x62>
 800748e:	2a24      	cmp	r2, #36	; 0x24
 8007490:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8007494:	bf0a      	itet	eq
 8007496:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 800749a:	f100 0210 	addne.w	r2, r0, #16
 800749e:	f100 0218 	addeq.w	r2, r0, #24
 80074a2:	2300      	movs	r3, #0
 80074a4:	e9c2 3300 	strd	r3, r3, [r2]
 80074a8:	6093      	str	r3, [r2, #8]
 80074aa:	4620      	mov	r0, r4
 80074ac:	bd10      	pop	{r4, pc}
 80074ae:	4602      	mov	r2, r0
 80074b0:	2300      	movs	r3, #0
 80074b2:	e9c2 3300 	strd	r3, r3, [r2]
 80074b6:	6093      	str	r3, [r2, #8]
 80074b8:	4620      	mov	r0, r4
 80074ba:	bd10      	pop	{r4, pc}
 80074bc:	2100      	movs	r1, #0
 80074be:	f7fb fb6f 	bl	8002ba0 <memset>
 80074c2:	4620      	mov	r0, r4
 80074c4:	bd10      	pop	{r4, pc}
 80074c6:	f100 0208 	add.w	r2, r0, #8
 80074ca:	e7f1      	b.n	80074b0 <_calloc_r+0x4c>

080074cc <_close_r>:
 80074cc:	b538      	push	{r3, r4, r5, lr}
 80074ce:	4c07      	ldr	r4, [pc, #28]	; (80074ec <_close_r+0x20>)
 80074d0:	2300      	movs	r3, #0
 80074d2:	4605      	mov	r5, r0
 80074d4:	4608      	mov	r0, r1
 80074d6:	6023      	str	r3, [r4, #0]
 80074d8:	f7fb fad8 	bl	8002a8c <_close>
 80074dc:	1c43      	adds	r3, r0, #1
 80074de:	d000      	beq.n	80074e2 <_close_r+0x16>
 80074e0:	bd38      	pop	{r3, r4, r5, pc}
 80074e2:	6823      	ldr	r3, [r4, #0]
 80074e4:	2b00      	cmp	r3, #0
 80074e6:	d0fb      	beq.n	80074e0 <_close_r+0x14>
 80074e8:	602b      	str	r3, [r5, #0]
 80074ea:	bd38      	pop	{r3, r4, r5, pc}
 80074ec:	20001588 	.word	0x20001588

080074f0 <_fclose_r>:
 80074f0:	b570      	push	{r4, r5, r6, lr}
 80074f2:	2900      	cmp	r1, #0
 80074f4:	d048      	beq.n	8007588 <_fclose_r+0x98>
 80074f6:	4605      	mov	r5, r0
 80074f8:	460c      	mov	r4, r1
 80074fa:	b110      	cbz	r0, 8007502 <_fclose_r+0x12>
 80074fc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80074fe:	2b00      	cmp	r3, #0
 8007500:	d048      	beq.n	8007594 <_fclose_r+0xa4>
 8007502:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007504:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007508:	07d0      	lsls	r0, r2, #31
 800750a:	d440      	bmi.n	800758e <_fclose_r+0x9e>
 800750c:	0599      	lsls	r1, r3, #22
 800750e:	d530      	bpl.n	8007572 <_fclose_r+0x82>
 8007510:	4621      	mov	r1, r4
 8007512:	4628      	mov	r0, r5
 8007514:	f7fe f990 	bl	8005838 <__sflush_r>
 8007518:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800751a:	4606      	mov	r6, r0
 800751c:	b133      	cbz	r3, 800752c <_fclose_r+0x3c>
 800751e:	69e1      	ldr	r1, [r4, #28]
 8007520:	4628      	mov	r0, r5
 8007522:	4798      	blx	r3
 8007524:	2800      	cmp	r0, #0
 8007526:	bfb8      	it	lt
 8007528:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800752c:	89a3      	ldrh	r3, [r4, #12]
 800752e:	061a      	lsls	r2, r3, #24
 8007530:	d43c      	bmi.n	80075ac <_fclose_r+0xbc>
 8007532:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007534:	b141      	cbz	r1, 8007548 <_fclose_r+0x58>
 8007536:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800753a:	4299      	cmp	r1, r3
 800753c:	d002      	beq.n	8007544 <_fclose_r+0x54>
 800753e:	4628      	mov	r0, r5
 8007540:	f7fe fb22 	bl	8005b88 <_free_r>
 8007544:	2300      	movs	r3, #0
 8007546:	6323      	str	r3, [r4, #48]	; 0x30
 8007548:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800754a:	b121      	cbz	r1, 8007556 <_fclose_r+0x66>
 800754c:	4628      	mov	r0, r5
 800754e:	f7fe fb1b 	bl	8005b88 <_free_r>
 8007552:	2300      	movs	r3, #0
 8007554:	6463      	str	r3, [r4, #68]	; 0x44
 8007556:	f7fe faa1 	bl	8005a9c <__sfp_lock_acquire>
 800755a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800755c:	2200      	movs	r2, #0
 800755e:	07db      	lsls	r3, r3, #31
 8007560:	81a2      	strh	r2, [r4, #12]
 8007562:	d51f      	bpl.n	80075a4 <_fclose_r+0xb4>
 8007564:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007566:	f7fe fdbb 	bl	80060e0 <__retarget_lock_close_recursive>
 800756a:	f7fe fa9d 	bl	8005aa8 <__sfp_lock_release>
 800756e:	4630      	mov	r0, r6
 8007570:	bd70      	pop	{r4, r5, r6, pc}
 8007572:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007574:	f7fe fdb6 	bl	80060e4 <__retarget_lock_acquire_recursive>
 8007578:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800757c:	2b00      	cmp	r3, #0
 800757e:	d1c7      	bne.n	8007510 <_fclose_r+0x20>
 8007580:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007582:	f016 0601 	ands.w	r6, r6, #1
 8007586:	d016      	beq.n	80075b6 <_fclose_r+0xc6>
 8007588:	2600      	movs	r6, #0
 800758a:	4630      	mov	r0, r6
 800758c:	bd70      	pop	{r4, r5, r6, pc}
 800758e:	2b00      	cmp	r3, #0
 8007590:	d0fa      	beq.n	8007588 <_fclose_r+0x98>
 8007592:	e7bd      	b.n	8007510 <_fclose_r+0x20>
 8007594:	f7fe fa56 	bl	8005a44 <__sinit>
 8007598:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800759a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800759e:	07d0      	lsls	r0, r2, #31
 80075a0:	d4f5      	bmi.n	800758e <_fclose_r+0x9e>
 80075a2:	e7b3      	b.n	800750c <_fclose_r+0x1c>
 80075a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80075a6:	f7fe fd9f 	bl	80060e8 <__retarget_lock_release_recursive>
 80075aa:	e7db      	b.n	8007564 <_fclose_r+0x74>
 80075ac:	6921      	ldr	r1, [r4, #16]
 80075ae:	4628      	mov	r0, r5
 80075b0:	f7fe faea 	bl	8005b88 <_free_r>
 80075b4:	e7bd      	b.n	8007532 <_fclose_r+0x42>
 80075b6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80075b8:	f7fe fd96 	bl	80060e8 <__retarget_lock_release_recursive>
 80075bc:	4630      	mov	r0, r6
 80075be:	bd70      	pop	{r4, r5, r6, pc}

080075c0 <__fputwc>:
 80075c0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80075c4:	b082      	sub	sp, #8
 80075c6:	4681      	mov	r9, r0
 80075c8:	4688      	mov	r8, r1
 80075ca:	4614      	mov	r4, r2
 80075cc:	f000 f8a0 	bl	8007710 <__locale_mb_cur_max>
 80075d0:	2801      	cmp	r0, #1
 80075d2:	d103      	bne.n	80075dc <__fputwc+0x1c>
 80075d4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80075d8:	2bfe      	cmp	r3, #254	; 0xfe
 80075da:	d933      	bls.n	8007644 <__fputwc+0x84>
 80075dc:	4642      	mov	r2, r8
 80075de:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 80075e2:	a901      	add	r1, sp, #4
 80075e4:	4648      	mov	r0, r9
 80075e6:	f000 f93b 	bl	8007860 <_wcrtomb_r>
 80075ea:	1c42      	adds	r2, r0, #1
 80075ec:	4606      	mov	r6, r0
 80075ee:	d02f      	beq.n	8007650 <__fputwc+0x90>
 80075f0:	b320      	cbz	r0, 800763c <__fputwc+0x7c>
 80075f2:	f89d c004 	ldrb.w	ip, [sp, #4]
 80075f6:	2500      	movs	r5, #0
 80075f8:	f10d 0a04 	add.w	sl, sp, #4
 80075fc:	e009      	b.n	8007612 <__fputwc+0x52>
 80075fe:	6823      	ldr	r3, [r4, #0]
 8007600:	1c5a      	adds	r2, r3, #1
 8007602:	6022      	str	r2, [r4, #0]
 8007604:	f883 c000 	strb.w	ip, [r3]
 8007608:	3501      	adds	r5, #1
 800760a:	42b5      	cmp	r5, r6
 800760c:	d216      	bcs.n	800763c <__fputwc+0x7c>
 800760e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007612:	68a3      	ldr	r3, [r4, #8]
 8007614:	3b01      	subs	r3, #1
 8007616:	2b00      	cmp	r3, #0
 8007618:	60a3      	str	r3, [r4, #8]
 800761a:	daf0      	bge.n	80075fe <__fputwc+0x3e>
 800761c:	69a7      	ldr	r7, [r4, #24]
 800761e:	42bb      	cmp	r3, r7
 8007620:	4661      	mov	r1, ip
 8007622:	4622      	mov	r2, r4
 8007624:	4648      	mov	r0, r9
 8007626:	db02      	blt.n	800762e <__fputwc+0x6e>
 8007628:	f1bc 0f0a 	cmp.w	ip, #10
 800762c:	d1e7      	bne.n	80075fe <__fputwc+0x3e>
 800762e:	f000 f8bf 	bl	80077b0 <__swbuf_r>
 8007632:	1c43      	adds	r3, r0, #1
 8007634:	d1e8      	bne.n	8007608 <__fputwc+0x48>
 8007636:	b002      	add	sp, #8
 8007638:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800763c:	4640      	mov	r0, r8
 800763e:	b002      	add	sp, #8
 8007640:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007644:	fa5f fc88 	uxtb.w	ip, r8
 8007648:	4606      	mov	r6, r0
 800764a:	f88d c004 	strb.w	ip, [sp, #4]
 800764e:	e7d2      	b.n	80075f6 <__fputwc+0x36>
 8007650:	89a3      	ldrh	r3, [r4, #12]
 8007652:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007656:	81a3      	strh	r3, [r4, #12]
 8007658:	b002      	add	sp, #8
 800765a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800765e:	bf00      	nop

08007660 <_fputwc_r>:
 8007660:	b530      	push	{r4, r5, lr}
 8007662:	4605      	mov	r5, r0
 8007664:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007666:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800766a:	07c0      	lsls	r0, r0, #31
 800766c:	4614      	mov	r4, r2
 800766e:	b083      	sub	sp, #12
 8007670:	b29a      	uxth	r2, r3
 8007672:	d401      	bmi.n	8007678 <_fputwc_r+0x18>
 8007674:	0590      	lsls	r0, r2, #22
 8007676:	d51c      	bpl.n	80076b2 <_fputwc_r+0x52>
 8007678:	0490      	lsls	r0, r2, #18
 800767a:	d406      	bmi.n	800768a <_fputwc_r+0x2a>
 800767c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800767e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007682:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007686:	81a3      	strh	r3, [r4, #12]
 8007688:	6662      	str	r2, [r4, #100]	; 0x64
 800768a:	4628      	mov	r0, r5
 800768c:	4622      	mov	r2, r4
 800768e:	f7ff ff97 	bl	80075c0 <__fputwc>
 8007692:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007694:	07da      	lsls	r2, r3, #31
 8007696:	4605      	mov	r5, r0
 8007698:	d402      	bmi.n	80076a0 <_fputwc_r+0x40>
 800769a:	89a3      	ldrh	r3, [r4, #12]
 800769c:	059b      	lsls	r3, r3, #22
 800769e:	d502      	bpl.n	80076a6 <_fputwc_r+0x46>
 80076a0:	4628      	mov	r0, r5
 80076a2:	b003      	add	sp, #12
 80076a4:	bd30      	pop	{r4, r5, pc}
 80076a6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80076a8:	f7fe fd1e 	bl	80060e8 <__retarget_lock_release_recursive>
 80076ac:	4628      	mov	r0, r5
 80076ae:	b003      	add	sp, #12
 80076b0:	bd30      	pop	{r4, r5, pc}
 80076b2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80076b4:	9101      	str	r1, [sp, #4]
 80076b6:	f7fe fd15 	bl	80060e4 <__retarget_lock_acquire_recursive>
 80076ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80076be:	9901      	ldr	r1, [sp, #4]
 80076c0:	b29a      	uxth	r2, r3
 80076c2:	e7d9      	b.n	8007678 <_fputwc_r+0x18>

080076c4 <_fstat_r>:
 80076c4:	b538      	push	{r3, r4, r5, lr}
 80076c6:	460b      	mov	r3, r1
 80076c8:	4c07      	ldr	r4, [pc, #28]	; (80076e8 <_fstat_r+0x24>)
 80076ca:	4605      	mov	r5, r0
 80076cc:	4611      	mov	r1, r2
 80076ce:	4618      	mov	r0, r3
 80076d0:	2300      	movs	r3, #0
 80076d2:	6023      	str	r3, [r4, #0]
 80076d4:	f7fb f9dd 	bl	8002a92 <_fstat>
 80076d8:	1c43      	adds	r3, r0, #1
 80076da:	d000      	beq.n	80076de <_fstat_r+0x1a>
 80076dc:	bd38      	pop	{r3, r4, r5, pc}
 80076de:	6823      	ldr	r3, [r4, #0]
 80076e0:	2b00      	cmp	r3, #0
 80076e2:	d0fb      	beq.n	80076dc <_fstat_r+0x18>
 80076e4:	602b      	str	r3, [r5, #0]
 80076e6:	bd38      	pop	{r3, r4, r5, pc}
 80076e8:	20001588 	.word	0x20001588

080076ec <_isatty_r>:
 80076ec:	b538      	push	{r3, r4, r5, lr}
 80076ee:	4c07      	ldr	r4, [pc, #28]	; (800770c <_isatty_r+0x20>)
 80076f0:	2300      	movs	r3, #0
 80076f2:	4605      	mov	r5, r0
 80076f4:	4608      	mov	r0, r1
 80076f6:	6023      	str	r3, [r4, #0]
 80076f8:	f7fb f9d1 	bl	8002a9e <_isatty>
 80076fc:	1c43      	adds	r3, r0, #1
 80076fe:	d000      	beq.n	8007702 <_isatty_r+0x16>
 8007700:	bd38      	pop	{r3, r4, r5, pc}
 8007702:	6823      	ldr	r3, [r4, #0]
 8007704:	2b00      	cmp	r3, #0
 8007706:	d0fb      	beq.n	8007700 <_isatty_r+0x14>
 8007708:	602b      	str	r3, [r5, #0]
 800770a:	bd38      	pop	{r3, r4, r5, pc}
 800770c:	20001588 	.word	0x20001588

08007710 <__locale_mb_cur_max>:
 8007710:	4b04      	ldr	r3, [pc, #16]	; (8007724 <__locale_mb_cur_max+0x14>)
 8007712:	4a05      	ldr	r2, [pc, #20]	; (8007728 <__locale_mb_cur_max+0x18>)
 8007714:	681b      	ldr	r3, [r3, #0]
 8007716:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007718:	2b00      	cmp	r3, #0
 800771a:	bf08      	it	eq
 800771c:	4613      	moveq	r3, r2
 800771e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007722:	4770      	bx	lr
 8007724:	2000004c 	.word	0x2000004c
 8007728:	2000088c 	.word	0x2000088c

0800772c <_lseek_r>:
 800772c:	b570      	push	{r4, r5, r6, lr}
 800772e:	460d      	mov	r5, r1
 8007730:	4c08      	ldr	r4, [pc, #32]	; (8007754 <_lseek_r+0x28>)
 8007732:	4611      	mov	r1, r2
 8007734:	4606      	mov	r6, r0
 8007736:	461a      	mov	r2, r3
 8007738:	4628      	mov	r0, r5
 800773a:	2300      	movs	r3, #0
 800773c:	6023      	str	r3, [r4, #0]
 800773e:	f7fb f9b0 	bl	8002aa2 <_lseek>
 8007742:	1c43      	adds	r3, r0, #1
 8007744:	d000      	beq.n	8007748 <_lseek_r+0x1c>
 8007746:	bd70      	pop	{r4, r5, r6, pc}
 8007748:	6823      	ldr	r3, [r4, #0]
 800774a:	2b00      	cmp	r3, #0
 800774c:	d0fb      	beq.n	8007746 <_lseek_r+0x1a>
 800774e:	6033      	str	r3, [r6, #0]
 8007750:	bd70      	pop	{r4, r5, r6, pc}
 8007752:	bf00      	nop
 8007754:	20001588 	.word	0x20001588

08007758 <__ascii_mbtowc>:
 8007758:	b082      	sub	sp, #8
 800775a:	b149      	cbz	r1, 8007770 <__ascii_mbtowc+0x18>
 800775c:	b15a      	cbz	r2, 8007776 <__ascii_mbtowc+0x1e>
 800775e:	b16b      	cbz	r3, 800777c <__ascii_mbtowc+0x24>
 8007760:	7813      	ldrb	r3, [r2, #0]
 8007762:	600b      	str	r3, [r1, #0]
 8007764:	7812      	ldrb	r2, [r2, #0]
 8007766:	1c10      	adds	r0, r2, #0
 8007768:	bf18      	it	ne
 800776a:	2001      	movne	r0, #1
 800776c:	b002      	add	sp, #8
 800776e:	4770      	bx	lr
 8007770:	a901      	add	r1, sp, #4
 8007772:	2a00      	cmp	r2, #0
 8007774:	d1f3      	bne.n	800775e <__ascii_mbtowc+0x6>
 8007776:	4610      	mov	r0, r2
 8007778:	b002      	add	sp, #8
 800777a:	4770      	bx	lr
 800777c:	f06f 0001 	mvn.w	r0, #1
 8007780:	e7f4      	b.n	800776c <__ascii_mbtowc+0x14>
 8007782:	bf00      	nop

08007784 <_read_r>:
 8007784:	b570      	push	{r4, r5, r6, lr}
 8007786:	460d      	mov	r5, r1
 8007788:	4c08      	ldr	r4, [pc, #32]	; (80077ac <_read_r+0x28>)
 800778a:	4611      	mov	r1, r2
 800778c:	4606      	mov	r6, r0
 800778e:	461a      	mov	r2, r3
 8007790:	4628      	mov	r0, r5
 8007792:	2300      	movs	r3, #0
 8007794:	6023      	str	r3, [r4, #0]
 8007796:	f7fb f918 	bl	80029ca <_read>
 800779a:	1c43      	adds	r3, r0, #1
 800779c:	d000      	beq.n	80077a0 <_read_r+0x1c>
 800779e:	bd70      	pop	{r4, r5, r6, pc}
 80077a0:	6823      	ldr	r3, [r4, #0]
 80077a2:	2b00      	cmp	r3, #0
 80077a4:	d0fb      	beq.n	800779e <_read_r+0x1a>
 80077a6:	6033      	str	r3, [r6, #0]
 80077a8:	bd70      	pop	{r4, r5, r6, pc}
 80077aa:	bf00      	nop
 80077ac:	20001588 	.word	0x20001588

080077b0 <__swbuf_r>:
 80077b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80077b2:	460d      	mov	r5, r1
 80077b4:	4614      	mov	r4, r2
 80077b6:	4606      	mov	r6, r0
 80077b8:	b110      	cbz	r0, 80077c0 <__swbuf_r+0x10>
 80077ba:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80077bc:	2b00      	cmp	r3, #0
 80077be:	d043      	beq.n	8007848 <__swbuf_r+0x98>
 80077c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80077c4:	69a3      	ldr	r3, [r4, #24]
 80077c6:	60a3      	str	r3, [r4, #8]
 80077c8:	b291      	uxth	r1, r2
 80077ca:	0708      	lsls	r0, r1, #28
 80077cc:	d51b      	bpl.n	8007806 <__swbuf_r+0x56>
 80077ce:	6923      	ldr	r3, [r4, #16]
 80077d0:	b1cb      	cbz	r3, 8007806 <__swbuf_r+0x56>
 80077d2:	b2ed      	uxtb	r5, r5
 80077d4:	0489      	lsls	r1, r1, #18
 80077d6:	462f      	mov	r7, r5
 80077d8:	d522      	bpl.n	8007820 <__swbuf_r+0x70>
 80077da:	6822      	ldr	r2, [r4, #0]
 80077dc:	6961      	ldr	r1, [r4, #20]
 80077de:	1ad3      	subs	r3, r2, r3
 80077e0:	4299      	cmp	r1, r3
 80077e2:	dd29      	ble.n	8007838 <__swbuf_r+0x88>
 80077e4:	3301      	adds	r3, #1
 80077e6:	68a1      	ldr	r1, [r4, #8]
 80077e8:	1c50      	adds	r0, r2, #1
 80077ea:	3901      	subs	r1, #1
 80077ec:	60a1      	str	r1, [r4, #8]
 80077ee:	6020      	str	r0, [r4, #0]
 80077f0:	7015      	strb	r5, [r2, #0]
 80077f2:	6962      	ldr	r2, [r4, #20]
 80077f4:	429a      	cmp	r2, r3
 80077f6:	d02a      	beq.n	800784e <__swbuf_r+0x9e>
 80077f8:	89a3      	ldrh	r3, [r4, #12]
 80077fa:	07db      	lsls	r3, r3, #31
 80077fc:	d501      	bpl.n	8007802 <__swbuf_r+0x52>
 80077fe:	2d0a      	cmp	r5, #10
 8007800:	d025      	beq.n	800784e <__swbuf_r+0x9e>
 8007802:	4638      	mov	r0, r7
 8007804:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007806:	4621      	mov	r1, r4
 8007808:	4630      	mov	r0, r6
 800780a:	f7fc fffd 	bl	8004808 <__swsetup_r>
 800780e:	bb20      	cbnz	r0, 800785a <__swbuf_r+0xaa>
 8007810:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007814:	6923      	ldr	r3, [r4, #16]
 8007816:	b291      	uxth	r1, r2
 8007818:	b2ed      	uxtb	r5, r5
 800781a:	0489      	lsls	r1, r1, #18
 800781c:	462f      	mov	r7, r5
 800781e:	d4dc      	bmi.n	80077da <__swbuf_r+0x2a>
 8007820:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007822:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007826:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800782a:	81a2      	strh	r2, [r4, #12]
 800782c:	6822      	ldr	r2, [r4, #0]
 800782e:	6661      	str	r1, [r4, #100]	; 0x64
 8007830:	6961      	ldr	r1, [r4, #20]
 8007832:	1ad3      	subs	r3, r2, r3
 8007834:	4299      	cmp	r1, r3
 8007836:	dcd5      	bgt.n	80077e4 <__swbuf_r+0x34>
 8007838:	4621      	mov	r1, r4
 800783a:	4630      	mov	r0, r6
 800783c:	f7fe f8a6 	bl	800598c <_fflush_r>
 8007840:	b958      	cbnz	r0, 800785a <__swbuf_r+0xaa>
 8007842:	6822      	ldr	r2, [r4, #0]
 8007844:	2301      	movs	r3, #1
 8007846:	e7ce      	b.n	80077e6 <__swbuf_r+0x36>
 8007848:	f7fe f8fc 	bl	8005a44 <__sinit>
 800784c:	e7b8      	b.n	80077c0 <__swbuf_r+0x10>
 800784e:	4621      	mov	r1, r4
 8007850:	4630      	mov	r0, r6
 8007852:	f7fe f89b 	bl	800598c <_fflush_r>
 8007856:	2800      	cmp	r0, #0
 8007858:	d0d3      	beq.n	8007802 <__swbuf_r+0x52>
 800785a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800785e:	e7d0      	b.n	8007802 <__swbuf_r+0x52>

08007860 <_wcrtomb_r>:
 8007860:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007862:	4c11      	ldr	r4, [pc, #68]	; (80078a8 <_wcrtomb_r+0x48>)
 8007864:	6824      	ldr	r4, [r4, #0]
 8007866:	b085      	sub	sp, #20
 8007868:	4606      	mov	r6, r0
 800786a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800786c:	461f      	mov	r7, r3
 800786e:	b151      	cbz	r1, 8007886 <_wcrtomb_r+0x26>
 8007870:	4d0e      	ldr	r5, [pc, #56]	; (80078ac <_wcrtomb_r+0x4c>)
 8007872:	2c00      	cmp	r4, #0
 8007874:	bf08      	it	eq
 8007876:	462c      	moveq	r4, r5
 8007878:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800787c:	47a0      	blx	r4
 800787e:	1c43      	adds	r3, r0, #1
 8007880:	d00c      	beq.n	800789c <_wcrtomb_r+0x3c>
 8007882:	b005      	add	sp, #20
 8007884:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007886:	4a09      	ldr	r2, [pc, #36]	; (80078ac <_wcrtomb_r+0x4c>)
 8007888:	2c00      	cmp	r4, #0
 800788a:	bf08      	it	eq
 800788c:	4614      	moveq	r4, r2
 800788e:	460a      	mov	r2, r1
 8007890:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007894:	a901      	add	r1, sp, #4
 8007896:	47a0      	blx	r4
 8007898:	1c43      	adds	r3, r0, #1
 800789a:	d1f2      	bne.n	8007882 <_wcrtomb_r+0x22>
 800789c:	2200      	movs	r2, #0
 800789e:	238a      	movs	r3, #138	; 0x8a
 80078a0:	603a      	str	r2, [r7, #0]
 80078a2:	6033      	str	r3, [r6, #0]
 80078a4:	b005      	add	sp, #20
 80078a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80078a8:	2000004c 	.word	0x2000004c
 80078ac:	2000088c 	.word	0x2000088c

080078b0 <__ascii_wctomb>:
 80078b0:	b121      	cbz	r1, 80078bc <__ascii_wctomb+0xc>
 80078b2:	2aff      	cmp	r2, #255	; 0xff
 80078b4:	d804      	bhi.n	80078c0 <__ascii_wctomb+0x10>
 80078b6:	700a      	strb	r2, [r1, #0]
 80078b8:	2001      	movs	r0, #1
 80078ba:	4770      	bx	lr
 80078bc:	4608      	mov	r0, r1
 80078be:	4770      	bx	lr
 80078c0:	238a      	movs	r3, #138	; 0x8a
 80078c2:	6003      	str	r3, [r0, #0]
 80078c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80078c8:	4770      	bx	lr
 80078ca:	bf00      	nop

080078cc <_init>:
 80078cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80078ce:	bf00      	nop
 80078d0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80078d2:	bc08      	pop	{r3}
 80078d4:	469e      	mov	lr, r3
 80078d6:	4770      	bx	lr

080078d8 <_fini>:
 80078d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80078da:	bf00      	nop
 80078dc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80078de:	bc08      	pop	{r3}
 80078e0:	469e      	mov	lr, r3
 80078e2:	4770      	bx	lr
 80078e4:	0000      	movs	r0, r0
	...
